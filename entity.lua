local a=string.byte;local G=string.char;local d=string.sub;local U=table.concat;local e=table.insert;local s=math.ldexp;local L=getfenv or function()return _ENV end;local A=setmetatable;local H=select;local t=unpack or table.unpack;local i=tonumber;local function h(a)local l,n,o="","",{}local t=256;local c={}for e=0,t-1 do c[e]=G(e)end;local e=1;local function f()local l=i(d(a,e,e),36)e=e+1;local n=i(d(a,e,e+l-1),36)e=e+l;return n end;l=G(f())o[1]=l;while e<#a do local e=f()if c[e]then n=c[e]else n=l..d(l,1,1)end;c[t]=l..d(n,1,1)o[#o+1],l,t=n,n,t+1 end;return table.concat(o)end;local f=h('21Y22U27522T23027522U13181I1F1I1V2161F1L1I22T23B27927B27D27F211191818131527D27S1L22T23527N27C27E1V21I1A171V131K27R27T27V27X1827Z23328227P1V21B1227Z22P27927I2131A1F1G1322S22U22T28I275151E171K1727W28A22T22Q27921A13171222T23229B1J1B1718191F29F23A29I29K29M29O21G19191I21I29427K29A27511171B132772791X131I21H28A1G1F152A728P27528628828A27Z2312792161915171A2AL2891K29G27921B28G1I29L2AH22T22T27927U1H22T22Z2792101F181217141A131Z28V27C22T29Q27527O284213121213122BM27O22T2AJ22U28C27U27W2C12791527S2C52A12791W1F1K2A723828J28421G131B1928V2BY2BN27K2CI2BR28327F21F1M2BH1I2BX2BZ2BO2CT22U27I2AW28A21E294112AB2BI2BK22T2392792DB1I1Z2CV1V1W1K191B2D72AY22Y2792CG2CN28V2DK28K2BB2DU13102CG1L1E2DY28428Z2DH2AB29C2AU1I1E22T22W2C82932952971K2BU2BW29F2AP2CU28K2EN2BX27L279101J1A1A2E727F2CL2E3132E522T2DT2751L131A101Y2F51I1K1J27W2D428X27622R2792D227K2C22C428E27922U2C222U1V22U2FL2792742FZ2G322V22U2G228X2G82FU29A2G52FU2G32A22FU2G02GD2752GC2FZ2G022T2FN2752FP2C72752FS27W2FU2FW2FY2GH2G62752G92G52G72G32GH2GB2GI28X2GF2792GY2GD2GK22S2GK2992CD2CF132FU2GO27522D2G32FU2H328X2GK22U2H92GG2792HS2GJ2HW2GM2HL2GQ2FR2CA2FT2792GW2HO2G12H02G42GZ2H42I82HT22U2HX2GE2H72GI2FU2HD2I02FO2CR2GR2C32I42GU2I62FU2GX2GD2HQ2IG2IC2G92H52IZ2GD2H82IJ2IK2HY2H02HF2GF2CE2CG2HK2FU2HN2GY2IY2HS2HU2HA2HW2GI2GK22V2IN2GP2IP2I328D2IT2752I72JH2IA2HR2J02ID2792H62J42IF2K52J72J32GL2792GN2IO2C02JT2CB2GV2IV2IE2K12K02IY2J22IH2J52K72J72HD2JA2HH2JD2792HL22U2JG2IX2JZ2K92K62J62L22J82IG2GM2GF21E29D1B2A82752AA29Y2872AX1L2FU23D2FU26M2L521Y2162IZ2G52G522O2142IZ22O2LR2HT1B2792LX2GC1F2LY27922G2IZ2G02LP2K92GC2LN2JH2LQ2H122U22O26F2IZ2DT2G52H82M02752ML2LZ2792EH2M32M52752M72MM2G12LQ2JO2MH28I2G523F2K922Q2MO22U2N52H22N02JM21Y2182LY2GH2MY2NH2L52IB2752KM2HV2G92JL2G02LX2IZ23E2M82MR2752NU2GC2HJ2IH2M42LS2FU2MX2IE2NS2MB2B72762GF27U1U27K2782ER28427H27J22T2O72DR2FU2EH27523822I2MV2JL2HP2L12GH2B72O92L322U2AP2NB2MH22U2FN2B72MI2P32P12K32N82P92G32LX2H928X28P2KX1S2P32OY22O1Z2IZ2FN2MY2N72KW2J32O72JO29028Y2DG2A32AB2F12DM2DO2DQ2LH2982D42BS2F22CM2CO2D12IP2JB2HI2HG2752OC27K2EQ2IR2JU28F27Z2OF22U1Y27I2C92QM2KC2752B32BJ2A72O72DV2QB2LD27A2DL2OI1I2FU21W2FU2222LO2HY2O32OT2JN2ID2NS2G521Z2N62N82RK2MC28Y2IX21T2RP2B728X2G22OX2RP2PS2IK2B72PP22U2CT2B72GF2G229A28X2FN2NS29A29Q2GK2PR2752SC2NW22U27M2GC2122OZ27522K2P42SP2752SE22U23J2IZ2MA29H28P2LX2LU22U29H2812O32SS2T32SH2SU2H22232T12FV2P322U2RK29H2K02PM2RP2DG2PQ2N82TK2S228P2B72C221Y1D2RS2TB2K32L02IF29A2PW2SP2IH2S02PT2JM2GJ2OY2F72E12DW2BL2DL2EG2EI2942962D02EM2BV2EU2PW2112EJ2UG28A2FU2F827521J2KJ2JI2FU2OY2K52K02RF2NM2OV2UW2TX2GF2UX2S12GD2M22IJ2V92HC2HA2U72PY22U2DI2Q12DN2DP2DR2AZ27521A29J29L29N29F2O72EC1A2EE2FU2QK22U2252RC2LY2HS2HB2HY2G92NS2PG2LY2SS28P2G52SS2782P22RT2G32MA2RW2O92M72WG2M12U52L72KB2GF2B31L1D2QV22U1L1M171H182GK2TA2OA2DH2A52A72QP2LF2AD1K2AF2B52QK21A1I1I1M2XA2XC2A72UR2AA27U2952D01X21F21B1Y2E92OG27F28M27Z2GF2142X62U827521D1727E1W1928B1E1F1A29P29R2VQ29U29W29Y2A02IH21U2122QG22U2EC29F29H2AK191L27E1F27S2IQ21C28E2Y922D2B62B8131H2IH2L62792322YN2GF21H1F1S132IH24622H2OK2792112DN2Y22OL2942C02YS2YP2VP29T29F2342HH2BG2JC27J2UM2YC1221D2YB29221B1L2132IQ28R28T28V2HE2XV22U2922UF2EL2ZL2AK2Q52AY2UL2UN310L2ZT29V29X29Z1K2OE2792D91K2DI2DD2CH28Q1L2DR311031122QY2YO2LA2A522T2QK2GT2QN2Y32WW2AB2A62B32QX2DE2QP21L21L1I2YU2FG2BF112IQ311Q2BF2BW1U2WV311N2QZ28Q28G28A27K23I2A92AB21I2DO1M31271V2UM29L2DB122ZE11182AU310M2YP29D2VV2EF2C22QT2CB310H217171U2VU2EE2R32Q827G27I27K2BQ2R42ES2UJ2CQ2C02QE2CG311I31032YD2CL2UA29F27M2XW312G2IS2QN2HL2GM2OL310O2YO2Y12A62JE27926C2IK2G22IL2IC2HV2KQ2VC2TW2762VT312R31322PW2DI31312EF313T2AM2AY2R02WZ2DI2FU22X27921S26N2IZ2B72T42N8314T2SH2N32752MD2IX21D2ID2OW2K92RV2TU2JL2UX2IA2FU23828P2KP2LE2RX2GI2K42HV2JK2W42WO22S2GM2Q72DL2CX2CZ2QC313D2KU2HJ2WN27922831412RG31422V02UZ2IJ2IH2W32KB315P28K315R172D0313C2BO313E315W2752O722U315Z2GI31622HY316N2IE31642K531662FU2ZT313V2Y231382VO29S2VR310U2YJ310X2YO2YQ2VM2ZU317029O2R32QR1L312V28E310C310A310E28W28Y2UR2R12DX2DL2FU23G2MZ2MB22U21S2T62H62MN2TW2WC2PB2SV2NC2HY317U2IZ29H2G52S42N831862SH2P92MA2N131842G52T82TY2N8318H22U2LN2HX21Y2TA2O32GO2RN2NL318M2K92T02G52CI314U279318Y2SH2372J3318U2G022E2292LW2TC2SS318K3195317R2O32YS31502UX318S2UZ2PU2HW24N31902VF2GK316P28X2CT28X31592NQ314431482IA2Z82K22Z92IC318Q2HV319Q2L1316J2MY2VC2M92RD2TC2S32TV2S22SR22U2U02HY2S72NO2I92ID28P2CT29A2QP2CT2FN31AJ2G32FN28X2W72ST2RL279318H2SS22M2LW172G331B5318Z27531B92752SL2G02FN21Y2DT314W2AP31AQ22U2UR2S62IF2BC31AT22U2OO31AG2P3314O2OP2JW31BS315H2TC31542S422U2BQ28X2AP2B722E2IA2LX27831AE31BN2762RP31BQ31AH313M31BU2FN31CJ2CT2LX31CJ2KB2P328X31C531C42RP3156318X31BU29A31CE2TY22U31CH2SP31BT31CN22U31BW31BU28P31BT2TW315D2V331C331CT2CI2UX2WM31CU2G32DG2O92LN31DJ21Y29A2RW31AP2752FN2363190316I31AI2GI2P62PD31CF2SL2SD2N831E42SH1Y31942RP2M92TA2RW3193238182SP31DW27931C72SP2FL2LN2HU21Y21I31D12KX2V72IC2FN2S92GA2IF31EX2IF31822SH2NC2SS2172U42L6318W22U31ER31BA31FA2IZ2SS24M2LW28I2B731FG31E527931FK2N22G331FN2SR2N831FQ2SO29A2KX2LN2LX2PL2LV2LX21R2W92N831G2317Z27N31EA316J22U22E22J2P32ZY281315X31AN2SZ22U31292BQ31CB2O62TX31GI31GK31DY31DW2UX31G92G231GP31DK2LX318A2H925D2J32SL2O72901T2TC2GK31GL31B02FW31DD2SF31DY317Q28P31H9318A31H923H2IZ31H927831CS31GR315G2TC2OU2TC28P2N52ZA2NK31DD31HO2P32NU31HB315531BY28P23C31GX22U31I631I22FU31H92LL2FW31F031BU2LX316P2PH2GI2ZT31AY2G52PW2RE21H2RY31C42SU29H2RK28I22O31IN2NG2752LL2IK31IQ31DU27923A314O29H2R92U031GY2IZ31D621X31GH2P321U2IC31IJ2LL2G229H2B721V31BU27821S31IK22U31HN2IC29H29H2RR31IX31JT2IB2FL31J12GI31J32SQ27526E2TB2QP31GG31CX2P331JE2V12P32LX31JH2G231JJ31JV2RP31JO2CT27822631JS31JU31JL2TB31JY2G5278314W31K22J731K52KX31C929H31KA31DY2HY31JD31JF31KH2KH31HS28P28P227316U31K62WN318A31GG31KF31GI2242IC31GI2W031HW2KX31DY31LJ31FX2I82MA31GI2RB318O31KG22U31KV2TB2H62A231K52H931K32UX31K32GD31K32HS2AP31JB2FL2J52O72T02FN25U31G327931MM31G627526731JC2SY22U31KE2G62LQ31GI31KI2LQ31KK2G329H2H931E931JB318X31MU31MW2TS31M131JH2IU31LC2TC2X327531N42GI31N727521E2SM2TD2L22UR31F9314W31MQ2RP31NU2P9315C2IF319Q2LQ29A31AL31JZ2HL2WC31J031L031O82Z931K52GH2RK31AL2GC319L2SR2QP31223113312P2BF2FA317431CJ3134311G2YX28G2UD2GS310R2UH2ET29F312U313P2EV31OV310K2UH313J2CO311V22T31292LE312B312D312F312H18312J312L312N1A311B2LB2YO2WS2WU2HL2WX2WZ182GF2HF2BC2752CG2F42E52Q12FU316J1Q2W12O331672U22KJ314S2NK2JO2U72C2310D28U317J311I317M2UB28K2VX2LM2L522O314Y2VB2SH2VB318U2GK319731IZ2WD31EA2RE31MX2LY31DN31A12TE2NV31OF2WO22V2C22YO2QI31332R5313622T2D42D6310O31182DC311A314H2AX2R331RK31232E031PX2E22E42E62UC31CJ2EX2EZ2Q12F331RV2R831902OR31A231Q52NV319W31AH31DX2RO31LS21Y26B2SP2P531LO31D12PS2G931GV31EZ2TD2LX2BC2G52FN2SS31SR2SH3191318L31NP2NM31MY31M131SY2WB31QN2TG2FU31N62TB2LT2PN31J42TL2PS2RO315A2MH2LV275312931FC31TK2SH2NY314Z31412LQ31LB21M2JM31NU318S31SY316M31TR315X31QU31QN2NP27531E9319Z31L62L231RA310Q31P428A2ZI22H2YL2ZC27931PO2YO1H2Y61I22V27027331UP31UP2672ZK31PW22U31PY31RV31Q12792NU2792LN31TY2VC2T031BX31FC319131EG2RF31V93187319031EH31U322Q2ZT31V828P31O22G11631ES31CK31SZ31AH316R31EP31AH2H62SA2SI31B12752SJ31SW31FE21331HW31TF2IX31TZ2HY31QP27931HK31FL27531WA31TP2L62MA31LB318U2GD31502GH31U52NL31OG275220319031JE314W31KF2RW2J231HS31VK2B72G22HL29A31X031SH2MH2G52C231VC22U31MB2FU31K52GD31K52HS31DW2FN2FW31CF31L731CF31A62TU31WW31AN31WY31EV2WN31X331EW31X531H731QA22U31XE2LK31O92GI22A2SP31XI315G31KC31WT2IC31WV31EY31WX2IF31WZ31J431BY2CT28P2ZT2PS31DD31XT2SP31JZ31DD31X831XA27931XC31XB2WO31X42FW22C31Y62TO2RP2PW2WI2RP27831JZ31DR31XX31YT27931YR27531XZ2792RK2WG31R72L62R3311I2FA2FC2FE27J2FH2C62HL2WY2CF2QO312A2LG314I2AO2CJ27F31OY31OJ31RM312531ON27K31OP2DL31OR27Y311E2792DR320131P02QU31BT2DR31P62AF31PG2G02HF2QK313431OY2FU31KA1231S831R031Q931XL31LK31T431882IU2NZ31HQ2752M431Y82QQ31QA31ZH2MB2HF317L2QA317N31QL31IR22U31WD31HS31Q631452RG316R2L622V31NH31BU2TX31432VC31KC31TG31TU31AN2O32UX31A92J7315E22U2TN31SY31SE2LQ31XU2A231AY2OZ2LN31HC2MH2MJ2SB2IZ31VJ2N82SG2SS31VZ27A31HR2FU2M431T427931E931XH2LW31TB31DZ31TD275314Y31NY31YF2G62R731Q2321T321Y322I31A531AN2G929H2IY31IW31O62W531O72IK31K32GH31F632232RG2D431K6316P31A82TX2O32FW31642IY278323E31XV2H62RE31ZB31EM2OZ31YY321T31WO31AF2WV31ZS1K28H31ZZ28L28N28Y320728K320931OT2QP317C317E2C62QP31342R631QI321D31QK2E831RN2UP27931MW23831PA31QB323T31S931AM2H931LU31LH31R131XU2RU31LN31SI2P6322X2S1317X31TC31Z02Z931WI319E31FE27510319W2SS31932P231ST31YN2LV2FN2TN31NU2TN325S2SV2TA325V318R324431TA279314O322Z31D731MT31YV325M31T02LY2NS325Q2L12SS27431SD31W531YW31R12PE2TV2RK31AX322W31UZ2NV2SS31TO31NP2HS320T27931WQ323631YV31DK31AC327631382NL31A2327A32162HX327A2H631C92PS2NS31E731XJ2ZY2GY2BQ2G531T62V031DK31IY2GH327O2HY31JU327A31T42CT2G52QK2G22O32DT31AE31UU2P031QA2RU1M2IB2EH31AE31D831562B729Q31BL31CP31CF2G931BL328G31VT31CU31BR328L2IF328N31J4328G32282SP328J31EH31CO2FU1W32442FL31H331CQ31YO321X31XY31CQ2SF2SU2LX2DG2SY31X62W231ZC329C31IS2P331DW329H31C12M531K52OY23A329E22U319331HG2SU31BX327K31NP2P6329I31NT329K31SB329M329F2TC3299324132A62L3329U329N32AA329I2S12GC31M731J5329V329X329M2752ZY32A12O732A332AA329R31IR32AF32A9329P31LD32AW323332AY22U329O31XV31YI32B231K632B432AO32AF2752812SZ2LT322Y2HO31OB31YU2L632BD31GJ31KG32BH2WE2J331Z932AP31B032BG2P832B931IB329Z22U317Q32BW2LX2MQ32AK2IK32BN31HK32C331D232BY32AM326W32CA2MT32BS32C732C02N532CA326A32CH2GI32BN31I632CA2SG2O932BT329B31OA2RF32BN2LL32CA31VZ32C632CO32C02742NS2M7321W3248');local o=bit and bit.bxor or function(e,n)local l,o=1,0 while e>0 and n>0 do local d,t=e%2,n%2 if d~=t then o=o+l end e,n,l=(e-d)/2,(n-t)/2,l*2 end if e<n then e=n end while e>0 do local n=e%2 if n>0 then o=o+l end e,l=(e-n)/2,l*2 end return o end local function n(n,e,l)if l then local e=(n/2^(e-1))%2^((l-1)-(e-1)+1);return e-e%1;else local e=2^(e-1);return(n%(e+e)>=e)and 1 or 0;end;end;local e=1;local function l()local l,d,t,n=a(f,e,e+3);l=o(l,102)d=o(d,102)t=o(t,102)n=o(n,102)e=e+4;return(n*16777216)+(t*65536)+(d*256)+l;end;local function i()local l=o(a(f,e,e),102);e=e+1;return l;end;local function c()local n,l=a(f,e,e+2);n=o(n,102)l=o(l,102)e=e+2;return(l*256)+n;end;local function h()local o=l();local e=l();local d=1;local o=(n(e,1,20)*(2^32))+o;local l=n(e,21,31);local e=((-1)^n(e,32));if(l==0)then if(o==0)then return e*0;else l=1;d=0;end;elseif(l==2047)then return(o==0)and(e*(1/0))or(e*(0/0));end;return s(e,l-1023)*(d+(o/(2^52)));end;local s=l;local function I(l)local n;if(not l)then l=s();if(l==0)then return'';end;end;n=d(f,e,e+l-1);e=e+l;local l={}for e=1,#n do l[e]=G(o(a(d(n,e,e)),102))end return U(l);end;local e=l;local function G(...)return{...},H('#',...)end local function r()local a={};local d={};local e={};local f={a,d,nil,e};local e=l()local o={}for n=1,e do local l=i();local e;if(l==2)then e=(i()~=0);elseif(l==1)then e=h();elseif(l==3)then e=I();end;o[n]=e;end;for e=1,l()do d[e-1]=r();end;for f=1,l()do local e=i();if(n(e,1,1)==0)then local d=n(e,2,3);local t=n(e,4,6);local e={c(),c(),nil,nil};if(d==0)then e[3]=c();e[4]=c();elseif(d==1)then e[3]=l();elseif(d==2)then e[3]=l()-(2^16)elseif(d==3)then e[3]=l()-(2^16)e[4]=c();end;if(n(t,1,1)==1)then e[2]=o[e[2]]end if(n(t,2,2)==1)then e[3]=o[e[3]]end if(n(t,3,3)==1)then e[4]=o[e[4]]end a[f]=e;end end;f[3]=i();return f;end;local function U(e,c,f)local l=e[1];local n=e[2];local e=e[3];return function(...)local o=l;local s=n;local d=e;local G=G local l=1;local a=-1;local h={};local I={...};local H=H('#',...)-1;local i={};local n={};for e=0,H do if(e>=d)then h[e-d]=I[e+1];else n[e]=I[e+1];end;end;local H=H-d+1 local e;local d;while true do e=o[l];d=e[1];if d<=68 then if d<=33 then if d<=16 then if d<=7 then if d<=3 then if d<=1 then if d>0 then local a=s[e[3]];local t;local d={};t=A({},{__index=function(l,e)local e=d[e];return e[1][e[2]];end,__newindex=function(n,e,l)local e=d[e]e[1][e[2]]=l;end;});for t=1,e[4]do l=l+1;local e=o[l];if e[1]==83 then d[t-1]={n,e[3]};else d[t-1]={c,e[3]};end;i[#i+1]=d;end;n[e[2]]=U(a,t,f);else local e=e[2]n[e]=n[e](n[e+1])end;elseif d>2 then local f;local d;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];d=e[2];f=n[e[3]];n[d+1]=f;n[d]=f[e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];d=e[2];do return n[d](t(n,d+1,e[3]))end;l=l+1;e=o[l];d=e[2];do return t(n,d,a)end;l=l+1;e=o[l];do return end;else n[e[2]]=n[e[3]];end;elseif d<=5 then if d>4 then local l=e[2]local o,e=G(n[l](t(n,l+1,e[3])))a=e+l-1 local e=0;for l=l,a do e=e+1;n[l]=o[e];end;else local c;local d;d=e[2];c=n[e[3]];n[d+1]=c;n[d]=c[e[4]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];d=e[2]n[d]=n[d](t(n,d+1,e[3]))l=l+1;e=o[l];if n[e[2]]then l=l+1;else l=e[3];end;end;elseif d==6 then do return end;else n[e[2]]=f[e[3]];end;elseif d<=11 then if d<=9 then if d>8 then if n[e[2]]then l=l+1;else l=e[3];end;else local o=e[2];local d=n[o]local t=n[o+2];if(t>0)then if(d>n[o+1])then l=e[3];else n[o+3]=d;end elseif(d<n[o+1])then l=e[3];else n[o+3]=d;end end;elseif d==10 then if not n[e[2]]then l=l+1;else l=e[3];end;else local l=e[2]n[l]=n[l](t(n,l+1,e[3]))end;elseif d<=13 then if d>12 then if(n[e[2]]~=n[e[4]])then l=l+1;else l=e[3];end;else local d;n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=f[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];d=e[2]n[d]=n[d](t(n,d+1,e[3]))l=l+1;e=o[l];n[e[2]]=n[e[3]]+n[e[4]];l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]][e[3]]=e[4];l=l+1;e=o[l];n[e[2]]=f[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];d=e[2]n[d]=n[d](t(n,d+1,e[3]))l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=f[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];d=e[2]n[d]=n[d](t(n,d+1,e[3]))l=l+1;e=o[l];n[e[2]]=n[e[3]]+n[e[4]];l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];end;elseif d<=14 then if(n[e[2]]==e[4])then l=l+1;else l=e[3];end;elseif d==15 then local c;local d;n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];d=e[2]n[d](t(n,d+1,e[3]))l=l+1;e=o[l];n[e[2]]=f[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];d=e[2];c=n[e[3]];n[d+1]=c;n[d]=c[e[4]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];d=e[2]n[d]=n[d](t(n,d+1,e[3]))l=l+1;e=o[l];d=e[2];c=n[e[3]];n[d+1]=c;n[d]=c[e[4]];else local e=e[2]local o,l=G(n[e](n[e+1]))a=l+e-1 local l=0;for e=e,a do l=l+1;n[e]=o[l];end;end;elseif d<=24 then if d<=20 then if d<=18 then if d>17 then local d;local i;local h,U;local H;local d;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]();l=l+1;e=o[l];n[e[2]]=f[e[3]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];d=e[2];H=n[e[3]];n[d+1]=H;n[d]=H[e[4]];l=l+1;e=o[l];d=e[2]h,U=G(n[d](n[d+1]))a=U+d-1 i=0;for e=d,a do i=i+1;n[e]=h[i];end;l=l+1;e=o[l];d=e[2]h={n[d](t(n,d+1,a))};i=0;for e=d,e[4]do i=i+1;n[e]=h[i];end l=l+1;e=o[l];l=e[3];else local e=e[2]n[e](t(n,e+1,a))end;elseif d>19 then local h;local i;local U,H;local d;d=e[2]U,H=G(n[d](t(n,d+1,e[3])))a=H+d-1 i=0;for e=d,a do i=i+1;n[e]=U[i];end;l=l+1;e=o[l];d=e[2]n[d](t(n,d+1,a))l=l+1;e=o[l];n[e[2]]=f[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];d=e[2];h=n[e[3]];n[d+1]=h;n[d]=h[e[4]];else local a;local d;n[e[2]]=f[e[3]];l=l+1;e=o[l];d=e[2];a=n[e[3]];n[d+1]=a;n[d]=a[e[4]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];d=e[2]n[d]=n[d](t(n,d+1,e[3]))l=l+1;e=o[l];d=e[2];a=n[e[3]];n[d+1]=a;n[d]=a[e[4]];l=l+1;e=o[l];n[e[2]]=(e[3]~=0);l=l+1;e=o[l];d=e[2]n[d]=n[d](t(n,d+1,e[3]))l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]][n[e[3]]]=n[e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];d=e[2];a=n[e[3]];n[d+1]=a;n[d]=a[e[4]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];d=e[2]n[d]=n[d](t(n,d+1,e[3]))l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];d=e[2];a=n[e[3]];n[d+1]=a;n[d]=a[e[4]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];d=e[2]n[d]=n[d](t(n,d+1,e[3]))l=l+1;e=o[l];if n[e[2]]then l=l+1;else l=e[3];end;end;elseif d<=22 then if d==21 then n[e[2]]=f[e[3]];else local t;local d;n[e[2]]={};l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]]={};l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]]={};l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]]=f[e[3]];l=l+1;e=o[l];d=e[2];t=n[e[3]];n[d+1]=t;n[d]=t[e[4]];l=l+1;e=o[l];n[e[2]]=e[3];end;elseif d==23 then if(n[e[2]]==e[4])then l=l+1;else l=e[3];end;else local d;local a;local t;n[e[2]]=f[e[3]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];t=e[2]a={n[t](n[t+1])};d=0;for e=t,e[4]do d=d+1;n[e]=a[d];end l=l+1;e=o[l];l=e[3];end;elseif d<=28 then if d<=26 then if d>25 then local e=e[2];do return n[e],n[e+1]end else n[e[2]][e[3]]=n[e[4]];end;elseif d>27 then local i;local f;local d;n[e[2]]=c[e[3]];l=l+1;e=o[l];d=e[2];f=n[e[3]];n[d+1]=f;n[d]=f[e[4]];l=l+1;e=o[l];d=e[2];a=d+H-1;for e=d,a do i=h[e-d];n[e]=i;end;l=l+1;e=o[l];d=e[2]n[d](t(n,d+1,a))l=l+1;e=o[l];do return end;else local d;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];d=e[2]n[d](n[d+1])l=l+1;e=o[l];do return end;end;elseif d<=30 then if d==29 then local f;local d;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];d=e[2];f=n[e[3]];n[d+1]=f;n[d]=f[e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];d=e[2];do return n[d](t(n,d+1,e[3]))end;l=l+1;e=o[l];d=e[2];do return t(n,d,a)end;l=l+1;e=o[l];do return end;else n[e[2]]=n[e[3]]+n[e[4]];end;elseif d<=31 then n[e[2]]=c[e[3]];elseif d>32 then local e=e[2]n[e](n[e+1])else n[e[2]][n[e[3]]]=n[e[4]];end;elseif d<=50 then if d<=41 then if d<=37 then if d<=35 then if d>34 then local d;local t;n[e[2]]=f[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];t=e[2];d=n[e[3]];n[t+1]=d;n[t]=d[e[4]];else do return end;end;elseif d==36 then local e=e[2];a=e+H-1;for l=e,a do local e=h[l-e];n[l]=e;end;else local l=e[2]local d={n[l](n[l+1])};local o=0;for e=l,e[4]do o=o+1;n[e]=d[o];end end;elseif d<=39 then if d>38 then local c;local d;n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];d=e[2];c=n[e[3]];n[d+1]=c;n[d]=c[e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];d=e[2]n[d](t(n,d+1,e[3]))l=l+1;e=o[l];n[e[2]]=f[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];if n[e[2]]then l=l+1;else l=e[3];end;else n[e[2]]=n[e[3]][n[e[4]]];end;elseif d>40 then n[e[2]]=n[e[3]][n[e[4]]];else local l=e[2]n[l]=n[l](t(n,l+1,e[3]))end;elseif d<=45 then if d<=43 then if d>42 then local t;local a;local d;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];d=e[2]a={n[d](n[d+1])};t=0;for e=d,e[4]do t=t+1;n[e]=a[t];end l=l+1;e=o[l];if not n[e[2]]then l=l+1;else l=e[3];end;else n[e[2]][n[e[3]]]=e[4];end;elseif d>44 then local l=e[2];local o=n[e[3]];n[l+1]=o;n[l]=o[e[4]];else local d;local a;local t;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];t=e[2]a={n[t](n[t+1])};d=0;for e=t,e[4]do d=d+1;n[e]=a[d];end l=l+1;e=o[l];if n[e[2]]then l=l+1;else l=e[3];end;end;elseif d<=47 then if d==46 then n[e[2]]={};l=l+1;e=o[l];n[e[2]]={};l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]]={};l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]]={};l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]]={};l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]][e[3]]=e[4];else local o=e[2]local d={n[o](t(n,o+1,a))};local l=0;for e=o,e[4]do l=l+1;n[e]=d[l];end end;elseif d<=48 then local h;local i;local H,U;local d;d=e[2]H,U=G(n[d](t(n,d+1,e[3])))a=U+d-1 i=0;for e=d,a do i=i+1;n[e]=H[i];end;l=l+1;e=o[l];d=e[2]n[d](t(n,d+1,a))l=l+1;e=o[l];n[e[2]]=f[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];d=e[2]n[d](t(n,d+1,e[3]))l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];d=e[2];h=n[e[3]];n[d+1]=h;n[d]=h[e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];d=e[2]n[d](t(n,d+1,e[3]))elseif d==49 then if(n[e[2]]~=e[4])then l=l+1;else l=e[3];end;else local e=e[2]n[e](t(n,e+1,a))end;elseif d<=59 then if d<=54 then if d<=52 then if d>51 then local i;local h;local U,H;local d;d=e[2]U,H=G(n[d](t(n,d+1,e[3])))a=H+d-1 h=0;for e=d,a do h=h+1;n[e]=U[h];end;l=l+1;e=o[l];d=e[2]n[d](t(n,d+1,a))l=l+1;e=o[l];n[e[2]]=f[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];d=e[2];i=n[e[3]];n[d+1]=i;n[d]=i[e[4]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];d=e[2]n[d]=n[d](t(n,d+1,e[3]))l=l+1;e=o[l];d=e[2];i=n[e[3]];n[d+1]=i;n[d]=i[e[4]];else local i;local f;local d;n[e[2]]=c[e[3]];l=l+1;e=o[l];d=e[2];f=n[e[3]];n[d+1]=f;n[d]=f[e[4]];l=l+1;e=o[l];d=e[2];a=d+H-1;for e=d,a do i=h[e-d];n[e]=i;end;l=l+1;e=o[l];d=e[2]n[d](t(n,d+1,a))l=l+1;e=o[l];do return end;end;elseif d>53 then local a;local d;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];d=e[2];a=n[e[3]];n[d+1]=a;n[d]=a[e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];d=e[2]n[d](t(n,d+1,e[3]))l=l+1;e=o[l];do return end;else local l=e[2]local o,e=G(n[l](t(n,l+1,e[3])))a=e+l-1 local e=0;for l=l,a do e=e+1;n[l]=o[e];end;end;elseif d<=56 then if d==55 then n[e[2]][e[3]]=e[4];else n[e[2]]=e[3];end;elseif d<=57 then local f;local d;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];d=e[2];f=n[e[3]];n[d+1]=f;n[d]=f[e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];d=e[2];do return n[d](t(n,d+1,e[3]))end;l=l+1;e=o[l];d=e[2];do return t(n,d,a)end;l=l+1;e=o[l];do return end;elseif d==58 then for e=e[2],e[3]do n[e]=nil;end;else local i;local f;local d;n[e[2]]=c[e[3]];l=l+1;e=o[l];d=e[2];f=n[e[3]];n[d+1]=f;n[d]=f[e[4]];l=l+1;e=o[l];d=e[2];a=d+H-1;for e=d,a do i=h[e-d];n[e]=i;end;l=l+1;e=o[l];d=e[2]n[d](t(n,d+1,a))l=l+1;e=o[l];do return end;end;elseif d<=63 then if d<=61 then if d>60 then n[e[2]][e[3]]=e[4];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];l=e[3];else n[e[2]]=f[e[3]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];for e=e[2],e[3]do n[e]=nil;end;l=l+1;e=o[l];l=e[3];end;elseif d>62 then local e=e[2];a=e+H-1;for l=e,a do local e=h[l-e];n[l]=e;end;else do return n[e[2]]end end;elseif d<=65 then if d>64 then local o=e[2];local t=n[o+2];local d=n[o]+t;n[o]=d;if(t>0)then if(d<=n[o+1])then l=e[3];n[o+3]=d;end elseif(d>=n[o+1])then l=e[3];n[o+3]=d;end else n[e[2]]={};end;elseif d<=66 then local a;local H;local f;local h;local G;local d;n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];d=e[2]n[d](t(n,d+1,e[3]))l=l+1;e=o[l];d=e[2];G={};for e=1,#i do h=i[e];for e=0,#h do f=h[e];H=f[1];a=f[2];if H==n and a>=d then G[a]=H[a];f[1]=G;end;end;end;elseif d>67 then local l=e[2]n[l](t(n,l+1,e[3]))else local l=e[2];do return n[l](t(n,l+1,e[3]))end;end;elseif d<=102 then if d<=85 then if d<=76 then if d<=72 then if d<=70 then if d>69 then local e=e[2]n[e]=n[e](n[e+1])else local o=e[2];local t=e[4];local d=o+2 local o={n[o](n[o+1],n[d])};for e=1,t do n[d+e]=o[e];end;local o=o[1]if o then n[d]=o l=e[3];else l=l+1;end;end;elseif d>71 then local e=e[2]local o,l=G(n[e](n[e+1]))a=l+e-1 local l=0;for e=e,a do l=l+1;n[e]=o[l];end;else local d;n[e[2]]=n[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];d=e[2];do return n[d](t(n,d+1,e[3]))end;l=l+1;e=o[l];d=e[2];do return t(n,d,a)end;l=l+1;e=o[l];do return end;end;elseif d<=74 then if d==73 then do return n[e[2]]end else local t;local d;d=e[2];t=n[e[3]];n[d+1]=t;n[d]=t[e[4]];l=l+1;e=o[l];d=e[2]n[d]=n[d](n[d+1])l=l+1;e=o[l];n[e[2]]=#n[e[3]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];d=e[2];t=n[e[3]];n[d+1]=t;n[d]=t[e[4]];l=l+1;e=o[l];d=e[2]n[d]=n[d](n[d+1])l=l+1;e=o[l];n[e[2]]=#n[e[3]];l=l+1;e=o[l];if(n[e[2]]~=n[e[4]])then l=l+1;else l=e[3];end;end;elseif d>75 then n[e[2]]=n[e[3]][e[4]];else n[e[2]]=n[e[3]]+n[e[4]];end;elseif d<=80 then if d<=78 then if d==77 then local h;local i;local H,U;local d;d=e[2]H,U=G(n[d](t(n,d+1,e[3])))a=U+d-1 i=0;for e=d,a do i=i+1;n[e]=H[i];end;l=l+1;e=o[l];d=e[2]n[d](t(n,d+1,a))l=l+1;e=o[l];n[e[2]]=f[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];d=e[2];h=n[e[3]];n[d+1]=h;n[d]=h[e[4]];else if not n[e[2]]then l=l+1;else l=e[3];end;end;elseif d>79 then n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]][n[e[4]]];l=l+1;e=o[l];if(n[e[2]]==n[e[4]])then l=l+1;else l=e[3];end;else local f;local d;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];d=e[2];f=n[e[3]];n[d+1]=f;n[d]=f[e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];d=e[2];do return n[d](t(n,d+1,e[3]))end;l=l+1;e=o[l];d=e[2];do return t(n,d,a)end;l=l+1;e=o[l];do return end;end;elseif d<=82 then if d==81 then local d;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];d=e[2]n[d](n[d+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];n[e[2]]=(e[3]~=0);l=l+1;e=o[l];d=e[2]n[d](t(n,d+1,e[3]))l=l+1;e=o[l];do return end;else local o=e[2];local l=n[e[3]];n[o+1]=l;n[o]=l[e[4]];end;elseif d<=83 then n[e[2]]=n[e[3]];elseif d>84 then n[e[2]]=f[e[3]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];for e=e[2],e[3]do n[e]=nil;end;l=l+1;e=o[l];l=e[3];else local t=e[2];local o={};for e=1,#i do local e=i[e];for l=0,#e do local e=e[l];local d=e[1];local l=e[2];if d==n and l>=t then o[l]=d[l];e[1]=o;end;end;end;end;elseif d<=93 then if d<=89 then if d<=87 then if d>86 then local d;n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];d=e[2];do return n[d](t(n,d+1,e[3]))end;l=l+1;e=o[l];d=e[2];do return t(n,d,a)end;else n[e[2]]={};end;elseif d==88 then local l=e[2]n[l](t(n,l+1,e[3]))else local d=e[2];local t=e[4];local o=d+2 local d={n[d](n[d+1],n[o])};for e=1,t do n[o+e]=d[e];end;local d=d[1]if d then n[o]=d l=e[3];else l=l+1;end;end;elseif d<=91 then if d==90 then n[e[2]][n[e[3]]]=e[4];else if n[e[2]]then l=l+1;else l=e[3];end;end;elseif d>92 then n[e[2]]=(e[3]~=0);else n[e[2]]();end;elseif d<=97 then if d<=95 then if d>94 then local l=e[2];do return n[l](t(n,l+1,e[3]))end;else n[e[2]]=#n[e[3]];end;elseif d==96 then local d;n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];d=e[2]n[d](n[d+1])l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];if n[e[2]]then l=l+1;else l=e[3];end;else local o=n[e[4]];if o then l=l+1;else n[e[2]]=o;l=e[3];end;end;elseif d<=99 then if d>98 then l=e[3];else local a;local d;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];d=e[2];a=n[e[3]];n[d+1]=a;n[d]=a[e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];d=e[2]n[d](t(n,d+1,e[3]))l=l+1;e=o[l];do return end;end;elseif d<=100 then n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];if(n[e[2]]~=n[e[4]])then l=l+1;else l=e[3];end;elseif d>101 then local l=e[2]local d={n[l](n[l+1])};local o=0;for e=l,e[4]do o=o+1;n[e]=d[o];end else n[e[2]]=(e[3]~=0);l=l+1;end;elseif d<=119 then if d<=110 then if d<=106 then if d<=104 then if d==103 then local o=e[2];local d=n[o]local t=n[o+2];if(t>0)then if(d>n[o+1])then l=e[3];else n[o+3]=d;end elseif(d<n[o+1])then l=e[3];else n[o+3]=d;end else local o=e[2];local t=n[o+2];local d=n[o]+t;n[o]=d;if(t>0)then if(d<=n[o+1])then l=e[3];n[o+3]=d;end elseif(d>=n[o+1])then l=e[3];n[o+3]=d;end end;elseif d==105 then n[e[2]]=(e[3]~=0);else if(n[e[2]]==n[e[4]])then l=l+1;else l=e[3];end;end;elseif d<=108 then if d>107 then n[e[2]]=n[e[3]][e[4]];else local d;n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];d=e[2]n[d](t(n,d+1,e[3]))end;elseif d==109 then l=e[3];else n[e[2]]=e[3];end;elseif d<=114 then if d<=112 then if d>111 then local d;n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=f[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];d=e[2]n[d]=n[d](n[d+1])l=l+1;e=o[l];n[e[2]]=f[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];d=e[2]n[d]=n[d](n[d+1])l=l+1;e=o[l];n[e[2]]=f[e[3]];else for e=e[2],e[3]do n[e]=nil;end;end;elseif d>113 then n[e[2]][n[e[3]]]=n[e[4]];else local G=s[e[3]];local a;local d={};a=A({},{__index=function(l,e)local e=d[e];return e[1][e[2]];end,__newindex=function(n,e,l)local e=d[e]e[1][e[2]]=l;end;});for t=1,e[4]do l=l+1;local e=o[l];if e[1]==83 then d[t-1]={n,e[3]};else d[t-1]={c,e[3]};end;i[#i+1]=d;end;n[e[2]]=U(G,a,f);end;elseif d<=116 then if d==115 then n[e[2]]=#n[e[3]];else local t;local d;n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];d=e[2];t=n[e[3]];n[d+1]=t;n[d]=t[e[4]];end;elseif d<=117 then local o=e[2]local d={n[o](t(n,o+1,a))};local l=0;for e=o,e[4]do l=l+1;n[e]=d[l];end elseif d==118 then n[e[2]]=(e[3]~=0);l=l+1;else n[e[2]][e[3]]=e[4];end;elseif d<=128 then if d<=123 then if d<=121 then if d>120 then local f;local d;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];d=e[2];f=n[e[3]];n[d+1]=f;n[d]=f[e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];d=e[2];do return n[d](t(n,d+1,e[3]))end;l=l+1;e=o[l];d=e[2];do return t(n,d,a)end;l=l+1;e=o[l];do return end;else local f;local d;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];d=e[2];f=n[e[3]];n[d+1]=f;n[d]=f[e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];d=e[2];do return n[d](t(n,d+1,e[3]))end;l=l+1;e=o[l];d=e[2];do return t(n,d,a)end;l=l+1;e=o[l];do return end;end;elseif d>122 then local d;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];d=e[2]n[d]=n[d](n[d+1])l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]]={};l=l+1;e=o[l];n[e[2]][e[3]]=n[e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];n[e[2]]=f[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]];l=l+1;e=o[l];n[e[2]]={};else local e=e[2];do return n[e],n[e+1]end end;elseif d<=125 then if d==124 then local d;n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=c[e[3]];l=l+1;e=o[l];d=e[2]n[d](t(n,d+1,e[3]))l=l+1;e=o[l];do return end;else if(n[e[2]]~=n[e[4]])then l=l+1;else l=e[3];end;end;elseif d<=126 then local e=e[2];do return t(n,e,a)end;elseif d==127 then local e=e[2]n[e](n[e+1])else local c;local i;local H,h;local d;d=e[2]H,h=G(n[d](t(n,d+1,e[3])))a=h+d-1 i=0;for e=d,a do i=i+1;n[e]=H[i];end;l=l+1;e=o[l];d=e[2]n[d](t(n,d+1,a))l=l+1;e=o[l];n[e[2]]=f[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];d=e[2];c=n[e[3]];n[d+1]=c;n[d]=c[e[4]];l=l+1;e=o[l];n[e[2]]=e[3];l=l+1;e=o[l];d=e[2]n[d]=n[d](t(n,d+1,e[3]))l=l+1;e=o[l];d=e[2];c=n[e[3]];n[d+1]=c;n[d]=c[e[4]];end;elseif d<=132 then if d<=130 then if d==129 then if(n[e[2]]==n[e[4]])then l=l+1;else l=e[3];end;else n[e[2]]=c[e[3]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];do return n[e[2]]end l=l+1;e=o[l];do return end;end;elseif d==131 then local t=e[2];local d={};for e=1,#i do local e=i[e];for l=0,#e do local l=e[l];local o=l[1];local e=l[2];if o==n and e>=t then d[e]=o[e];l[1]=d;end;end;end;else local o=n[e[4]];if o then l=l+1;else n[e[2]]=o;l=e[3];end;end;elseif d<=134 then if d==133 then local d;n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];d=e[2]n[d]=n[d](n[d+1])l=l+1;e=o[l];n[e[2]]=n[e[3]][e[4]];l=l+1;e=o[l];if(n[e[2]]==n[e[4]])then l=l+1;else l=e[3];end;else local e=e[2];do return t(n,e,a)end;end;elseif d<=135 then n[e[2]][e[3]]=n[e[4]];elseif d>136 then if(n[e[2]]~=e[4])then l=l+1;else l=e[3];end;else n[e[2]]=c[e[3]];end;l=l+1;end;end;end;return U(r(),{},L())();
