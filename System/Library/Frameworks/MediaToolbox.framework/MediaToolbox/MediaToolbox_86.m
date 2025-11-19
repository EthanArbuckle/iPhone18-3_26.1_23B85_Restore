uint64_t sub_196973A1C@<X0>(uint64_t a1@<X8>)
{
  v4 = v2[6];
  v5 = v2[7];
  v6 = v2[4];
  v7 = v2[5];
  v8 = vrev32q_s8(v2[1]);
  v9 = vrev32q_s8(*v2);
  v10 = vrev32q_s8(v2[3]);
  v2[2] = vrev32q_s8(v2[2]);
  v2[3] = v10;
  *v2 = v9;
  v2[1] = v8;
  v2[6] = vrev32q_s8(v4);
  v2[7] = vrev32q_s8(v5);
  v2[4] = vrev32q_s8(v6);
  v2[5] = vrev32q_s8(v7);
  return (*(a1 + 8 * ((6981 * ((v1 & 0x1FFFFFFE0) == 32)) ^ (v3 - 2200))))();
}

uint64_t sub_196973AA0@<X0>(uint64_t a1@<X8>, __n128 a2@<Q5>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v31 = (&a28 + v29);
  *v31 = a2;
  v31[1] = a2;
  return (*(v30 + 8 * ((1394 * (3 * (v28 ^ 0x12DCu) - 1015 == (a1 & 0xFFFFFFFFFFFFFFE0))) ^ v28)))();
}

uint64_t sub_196973AEC@<X0>(int a1@<W8>, uint64_t a2, int a3, unsigned int a4, uint64_t *a5, int a6, uint64_t a7)
{
  v12 = ((&a3 + 258172278 - 2 * (&a3 & 0xF636576)) ^ 0x40BB6641) * a1;
  a7 = v7;
  a3 = v12 - 1933976395;
  a4 = v9 + v12 + ((v11 + 3852) ^ 0xC3C9BB33);
  a5 = &a2;
  a6 = v11 - v12 + 377;
  v13 = (*(v8 + 8 * (v11 + 6022)))(&a3);
  return (*(v8 + 8 * ((145 * (*(v7 + 24) == ((v11 + 4798) ^ (v10 + 3119)))) ^ v11)))(v13);
}

void sub_196973BEC(uint64_t a1@<X8>, uint64_t a2, int a3, unsigned int a4, uint64_t a5)
{
  v8 = v7 - 170;
  v9 = 455395931 * ((&a3 & 0xCDAC1FBE | ~(&a3 | 0xCDAC1FBE)) ^ 0x44A2BE8D);
  a3 = v9 + v8 + 1327;
  a4 = v6 ^ ((v6 ^ 0xE890C198) + 1925287134) ^ ((v6 ^ 0x59B746F1) - 1008333899) ^ ((v6 ^ 0x7BFFFDBD) - 508645127) ^ v9 ^ 0x4B208A47 ^ (((((v8 + 122) | 0x30) - 1351174726) ^ v6) + 891782444);
  a5 = v5;
  (*(a1 + 8 * (v8 ^ 0x94F)))(&a3);
  JUMPOUT(0x1968ED9FCLL);
}

uint64_t sub_196973E18@<X0>(uint64_t a1@<X5>, int a2@<W7>, uint64_t a3@<X8>)
{
  STACK[0x440] = *(a1 + 8 * (a2 - 5429));
  LODWORD(STACK[0x994]) = 1683937564;
  STACK[0x998] = &STACK[0x538];
  return (*(a1 + 8 * ((((((((a2 - 67) | 0x20) + 35) ^ 0x67) + 1) ^ (a3 == 0)) & 1 | (4 * (((((((a2 - 67) | 0x20) + 35) ^ 0x67) + 1) ^ (a3 == 0)) & 1))) ^ ((a2 - 5443) | 0x1020))))();
}

uint64_t sub_196973EA8@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = 890 * (a2 ^ 0x972);
  v7 = *(*a3 + (v4 - 317215044)) ^ 0xEC;
  v8 = ((*(*a3 + (v4 - 317215047)) ^ 0xEC) << 24) | ((*(*a3 + (v4 - 317215046)) ^ 0xEC) << 16) | ((*(*a3 + (((v6 - 1635) | 0xB0) ^ 0xED17AA00) + v4) ^ 0xEC) << 8) | v7;
  return (*(v3 + 8 * ((239 * (((v8 - 2 * (v8 & 0x5D5D9AD ^ v7 & 4) + 97900969) & 0xFFFFFF ^ 0xD5D9A9) - (v5 + *(a1 + 16)) == -1306220462)) ^ v6)))();
}

uint64_t sub_196973F80()
{
  v1 = ((v0 + 3519) + 0x1E148796BE9C014CLL) ^ STACK[0xB48];
  v2 = *(STACK[0x620] + 24);
  v3 = __ROR8__((v2 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = *(STACK[0x248] + 8 * v0);
  v5 = ((v3 - 0x6AF7234D0CC131D5) | 0xF5741EBC79E75D8BLL) - ((v3 - 0x6AF7234D0CC131D5) | 0xA8BE1438618A274) + 0xA8BE1438618A274;
  v6 = v5 ^ 0xBC9D5C8716F1BA59;
  v5 ^= 0x14DBB9108F07CB05uLL;
  v7 = __ROR8__(v6, 8);
  v8 = (v7 + v5 - ((2 * (v7 + v5)) & 0x47290E7AD9A73A5CLL) - 0x5C6B78C2932C62D2) ^ 0x4709F0E2EBEE2250;
  v9 = v8 ^ __ROR8__(v5, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xF5A2F1B9B5D0B209;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x5963B6C555D97F1FLL;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x61459D2AF01F24F7;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) | 0xE1F70A3F6B007860) - (v16 + v15) + 0xF047AE04A7FC3D0) ^ 0x9438991DC504E25CLL;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x1A2AEBE44253AF03;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v2[10] = (((((2 * (v21 + v20)) & 0xEFB27CCA430C5310) - (v21 + v20) - 0x77D93E6521862989) ^ 0x23168348F6FE8A36) >> (8 * ((v2 + 10) & 7u))) ^ HIBYTE(v1) ^ 0x3B;
  v22 = __ROR8__((v2 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = ((0x6AF7234D0CC131D4 - v22) & 0x718AFB3F88B2FB92) + v22 - 0x6AF7234D0CC131D5 - ((v22 - 0x6AF7234D0CC131D5) & 0x718AFB3F88B2FB92);
  v24 = v23 ^ 0x3863B904E7A41C40;
  v23 ^= 0x90255C937E526D1CLL;
  v25 = __ROR8__(v24, 8);
  v26 = (((v25 + v23) | 0xC6651A441539D693) - ((v25 + v23) | 0x399AE5BBEAC6296CLL) + 0x399AE5BBEAC6296CLL) ^ 0x22F86D9B920469EDLL;
  v27 = v26 ^ __ROR8__(v23, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xF5A2F1B9B5D0B209;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (v30 + v29 - ((2 * (v30 + v29)) & 0xE0B8A78EC4DC8F5ELL) - 0xFA3AC389D91B851) ^ 0xA93FE50237B738B0;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (v33 + v32 - ((2 * (v33 + v32)) & 0xFB64E2FF47BB85F6) - 0x24D8E805C223D05) ^ 0x9CF7EC5553C2E60CLL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = __ROR8__((((2 * (v36 + v35)) | 0xD59B1727603C7B4) - (v36 + v35) + 0x79532746C4FE1C26) ^ 0xE26FC4BB4B853DB6, 8);
  v38 = (((2 * (v36 + v35)) | 0xD59B1727603C7B4) - (v36 + v35) + 0x79532746C4FE1C26) ^ 0xE26FC4BB4B853DB6 ^ __ROR8__(v35, 61);
  v2[11] = (((__ROR8__((v37 + v38) ^ 0x1A2AEBE44253AF03, 8) + ((v37 + v38) ^ 0x1A2AEBE44253AF03 ^ __ROR8__(v38, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v2 + 11) & 7u))) ^ BYTE6(v1) ^ 0xA6;
  v39 = __ROR8__((v2 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = -2 - (((0x6AF7234D0CC131D4 - v39) | 0xB20363FF0EB302E4) + ((v39 - 0x6AF7234D0CC131D5) | 0x4DFC9C00F14CFD1BLL));
  v41 = v40 ^ 0xFBEA21C461A5E536;
  v40 ^= 0x53ACC453F853946AuLL;
  v42 = (__ROR8__(v41, 8) + v40) ^ 0xE49D77DF873DBF7ELL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0xF5A2F1B9B5D0B209;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x5963B6C555D97F1FLL;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x61459D2AF01F24F7;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0x64C31C027084DE6CLL;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x1A2AEBE44253AF03;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  v2[12] = (((v54 + v53 - ((2 * (v54 + v53)) & 0x2C67776B5A33595ALL) + 0x1633BBB5AD19ACADLL) ^ 0xBD03F967859EF0ECLL) >> (8 * ((v2 + 12) & 7u))) ^ BYTE5(v1) ^ 0x76;
  v55 = __ROR8__((v2 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v56 = ((v55 - 0x6AF7234D0CC131D5) | 0x4EEFAABF0D43E864) - ((v55 - 0x6AF7234D0CC131D5) | 0xB1105540F2BC179BLL) - 0x4EEFAABF0D43E865;
  v57 = v56 ^ 0x706E88462550FB6;
  v56 ^= 0xAF400D13FBA37EEALL;
  v58 = (__ROR8__(v57, 8) + v56) ^ 0xE49D77DF873DBF7ELL;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (((v60 + v59) | 0xABE77288DEBD9E47) - ((v60 + v59) | 0x54188D77214261B8) + 0x54188D77214261B8) ^ 0x5E4583316B6D2C4ELL;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0x5963B6C555D97F1FLL;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0x61459D2AF01F24F7;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0x64C31C027084DE6CLL;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0x1A2AEBE44253AF03;
  v70 = __ROR8__(v69, 8);
  v71 = __ROR8__(v68, 61);
  v2[13] = (((v70 + (v69 ^ v71) - ((2 * (v70 + (v69 ^ v71))) & 0x95BAF272F22CB3BALL) + 0x4ADD7939791659DDLL) ^ 0xE1ED3BEB5191059CLL) >> (8 * ((v2 + 13) & 7u))) ^ BYTE4(v1) ^ 0x3C;
  v72 = (__ROR8__((v2 + 14) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v73 = v72 ^ 0x4DE9423B6F16E7D2;
  v72 ^= 0xE5AFA7ACF6E0968ELL;
  v74 = (__ROR8__(v73, 8) + v72) ^ 0xE49D77DF873DBF7ELL;
  v75 = v74 ^ __ROR8__(v72, 61);
  v76 = __ROR8__(v74, 8);
  v77 = (((2 * (v76 + v75)) & 0x41E1CF65099D63B0) - (v76 + v75) - 0x20F0E7B284CEB1D9) ^ 0x2AADE9F4CEE1FC2ELL;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = __ROR8__(v77, 8);
  v80 = (v79 + v78 - ((2 * (v79 + v78)) & 0xB14D4FA9C6CCA32) + 0x58A6A7D4E366519) ^ 0x5CE9DCB81BEF1A06;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0x61459D2AF01F24F7;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0x64C31C027084DE6CLL;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0x1A2AEBE44253AF03;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = __ROR8__(v86, 8);
  v2[14] = (((v88 + v87 - ((2 * (v88 + v87)) & 0xCF6C87B91D7E08B0) + 0x67B643DC8EBF0458) ^ 0xCC86010EA6385819) >> (8 * ((v2 + 14) & 7u))) ^ BYTE3(v1) ^ 0xD2;
  v89 = (__ROR8__((v2 + 15) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v90 = v89 ^ 0x4DE9423B6F16E7D2;
  v89 ^= 0xE5AFA7ACF6E0968ELL;
  v91 = (__ROR8__(v90, 8) + v89) ^ 0xE49D77DF873DBF7ELL;
  v92 = v91 ^ __ROR8__(v89, 61);
  v93 = __ROR8__(v91, 8);
  v94 = (((2 * (v93 + v92)) & 0x3139FF60E415DD50) - (v93 + v92) + 0x6763004F8DF51157) ^ 0x92C1F1F63825A35ELL;
  v95 = v94 ^ __ROR8__(v92, 61);
  v96 = (__ROR8__(v94, 8) + v95) ^ 0x5963B6C555D97F1FLL;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ 0x61459D2AF01F24F7;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ 0x64C31C027084DE6CLL;
  v101 = __ROR8__(v100, 8);
  v102 = v100 ^ __ROR8__(v99, 61);
  v103 = (((2 * (v101 + v102)) | 0xEB56ABFC03F9346ALL) - (v101 + v102) - 0x75AB55FE01FC9A35) ^ 0x6F81BE1A43AF3536;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = __ROR8__(v103, 8);
  v2[15] = (((v105 + v104 - ((2 * (v105 + v104)) & 0xD63F64183411F2CALL) + 0x6B1FB20C1A08F965) ^ 0xC02FF0DE328FA524) >> (8 * ((v2 + 15) & 7u))) ^ BYTE2(v1) ^ 0x39;
  v106 = __ROR8__((v2 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v107 = (0x6AF7234D0CC131D4 - v106) & 0xB94550FEFCE7EFF3 | (v106 + 0x1508DCB2F33ECE2BLL) & 0x42BAAF010318100CLL;
  v108 = __ROR8__(v107 ^ 0xF4AC12C593F10821, 8);
  v107 ^= 0x5CEAF7520A07797DuLL;
  v109 = (v108 + v107) ^ 0xE49D77DF873DBF7ELL;
  v110 = v109 ^ __ROR8__(v107, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ 0xF5A2F1B9B5D0B209;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = __ROR8__(v111, 8);
  v114 = (((2 * (v113 + v112)) | 0x514BC2D110FA32C0) - (v113 + v112) + 0x575A1E977782E6A0) ^ 0xF1C657ADDDA4667FLL;
  v115 = v114 ^ __ROR8__(v112, 61);
  v116 = (__ROR8__(v114, 8) + v115) ^ 0x61459D2AF01F24F7;
  v117 = v116 ^ __ROR8__(v115, 61);
  v118 = __ROR8__(v116, 8);
  v119 = (((v118 + v117) | 0x4EC93EC210EDB9DBLL) - ((v118 + v117) | 0xB136C13DEF124624) - 0x4EC93EC210EDB9DCLL) ^ 0x2A0A22C0606967B7;
  v120 = v119 ^ __ROR8__(v117, 61);
  v121 = __ROR8__(v119, 8);
  v122 = (((2 * (v121 + v120)) & 0x9B077D47A53351D8) - (v121 + v120) + 0x327C415C2D665713) ^ 0x2856AAB86F35F810;
  v123 = __ROR8__((v2 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v2[16] = (((__ROR8__(v122, 8) + (v122 ^ __ROR8__(v120, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v2 + 16) & 7u))) ^ BYTE1(v1) ^ 0xF1;
  v124 = ((2 * (v123 - 0x6AF7234D0CC131D5)) | 0x3F94E15ED3FBE75ALL) - (v123 - 0x6AF7234D0CC131D5) - 0x1FCA70AF69FDF3ADLL;
  v125 = __ROR8__(v124 ^ 0x5623329406EB147FLL, 8);
  v124 ^= 0xFE65D7039F1D6523;
  v126 = (((2 * (v125 + v124)) | 0x9759016C3D9B7660) - (v125 + v124) - 0x4BAC80B61ECDBB30) ^ 0xAF31F76999F0044ELL;
  v127 = v126 ^ __ROR8__(v124, 61);
  v128 = (__ROR8__(v126, 8) + v127) ^ 0xF5A2F1B9B5D0B209;
  v129 = v128 ^ __ROR8__(v127, 61);
  v130 = __ROR8__(v128, 8);
  v131 = (((v130 + v129) | 0x654D750091A395A9) - ((v130 + v129) | 0x9AB28AFF6E5C6A56) - 0x654D750091A395AALL) ^ 0x3C2EC3C5C47AEAB6;
  v132 = v131 ^ __ROR8__(v129, 61);
  v133 = (__ROR8__(v131, 8) + v132) ^ 0x61459D2AF01F24F7;
  v134 = v133 ^ __ROR8__(v132, 61);
  v135 = __ROR8__(v133, 8);
  v136 = (((2 * (v135 + v134)) & 0x1F4EE1AFF1FD8BA8) - (v135 + v134) - 0xFA770D7F8FEC5D5) ^ 0x949B932A7785E447;
  v137 = v136 ^ __ROR8__(v134, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ 0x1A2AEBE44253AF03;
  v2[17] = (((__ROR8__(v138, 8) + (v138 ^ __ROR8__(v137, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v2 + 17) & 7u))) ^ v1 ^ 0x8A;
  return v4();
}

uint64_t sub_19697402C@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v2 = STACK[0x648];
  LODWORD(STACK[0x704]) = 1906281716;
  *STACK[0x730] = v2;
  return (*(a1 + 8 * (((((a2 - 4725) ^ 0x15B5) == 5725) * (((a2 - 4725) ^ 0x1F0) + 4253)) ^ (a2 - 4725) ^ 0x1F0)))();
}

uint64_t sub_19697415C@<X0>(unint64_t a1@<X1>, int a2@<W8>)
{
  v11 = a1 > 0xF;
  v8 = (v5 - 1) & 0xF;
  v9 = -v7 - v5;
  v10 = v9 + 1;
  v11 = v11 && (v9 + 1 + v4 + v8) > 0xF;
  v12 = v9 + v2 + v8 + 6;
  v15 = v11 && v12 >= ((a2 ^ 0xE3Cu) + 207) - 2396 && (v10 + v3 + v8) > 0xF;
  return (*(v6 + 8 * ((23 * v15) ^ a2)))();
}

uint64_t sub_1969741D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11, char a12, int a13, int a14, int a15, uint64_t a16)
{
  v23 = *(v16 + 8) + v22;
  v24 = 1825732043 * (&a11 ^ 0x965337);
  a16 = v21;
  a11 = &a10;
  a12 = v24 + (((v23 ^ 0x55) - 85) ^ ((v23 ^ 0xAC) + 84) ^ (((62 * (v19 ^ 0x42) + 6) ^ v23) - 104)) - 82;
  a15 = v19 - v24 + 2646;
  a13 = v24 - 318832776 + v20;
  v25 = (*(v18 + 8 * (v19 ^ 0x1C50)))(&a11);
  return (*(v18 + 8 * ((7764 * (a14 == v17)) ^ v19)))(v25);
}

uint64_t sub_1969742A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v17 - 128) = &a13;
  *(v17 - 120) = v15;
  *(v17 - 112) = (v16 + 2695) ^ (1790939281 * ((v17 - 128) ^ 0xF8DC2041));
  v18 = (*(v14 + 8 * (v16 + 5536)))(v17 - 128);
  return (*(v14 + 8 * ((4147 * (v13 == ((v16 + 557848959) & 0x5EBFEBDF ^ 0xFFFFFFF9) + ((v16 + 1243) | 0x84))) ^ v16)))(v18);
}

uint64_t sub_19697433C@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v5 = *(v3 + v4);
  v6 = v4 + (a1 ^ 0x1F0Au) - 3832;
  *(a2 + v6) = v5;
  return (*(v2 + 8 * ((713 * (v6 == 0)) ^ a1)))();
}

uint64_t sub_196974448@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  STACK[0x660] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (((v3 != 0) * (((v1 + 1397) ^ 0x6B0) - 119)) ^ (v1 + 1397))))();
}

uint64_t sub_196974920@<X0>(int a1@<W8>)
{
  v5 = v1 - 2968;
  v6 = (v5 ^ 0x361) + ((27 * (v5 ^ 0x575)) ^ v2) + a1;
  v8 = v6 < v3 || v6 >= SLODWORD(STACK[0x340]);
  return (*(v4 + 8 * ((11 * v8) ^ v5)))();
}

void sub_196974A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(STACK[0x4F8]) = v11;
  LODWORD(STACK[0x518]) = v7;
  LODWORD(STACK[0x534]) = v10;
  LODWORD(STACK[0x538]) = v9;
  LODWORD(STACK[0x4F4]) = -786478683 - v8;
  LODWORD(STACK[0x524]) = STACK[0x570];
  LODWORD(STACK[0x570]) = STACK[0x4FC];
  LODWORD(STACK[0x59C]) = STACK[0x588];
  LODWORD(STACK[0x56C]) = STACK[0x568];
  LODWORD(STACK[0x568]) = a7;
  LODWORD(STACK[0x588]) = STACK[0x500];
  JUMPOUT(0x1968DE580);
}

uint64_t sub_196974C2C@<X0>(char a1@<W0>, int a2@<W1>, int a3@<W8>)
{
  v12 = *(v10 + 8 * a2);
  v13 = (v3 + 4 + a3);
  v14 = *(v11 + 8 * v5) - 8;
  v15 = *(v11 + 8 * v6) - 12;
  v16 = *(v11 + 8 * v7) - 12;
  *(v9 + v13) = (v13 * v8) ^ HIBYTE(v4) ^ *(v14 + v13) ^ *(v15 + v13 + 1) ^ *(v13 + v16 + 6) ^ 0x7F;
  *(v9 + (v13 + 1)) = (v13 * v8 + 53) ^ BYTE2(v4) ^ *(v14 + (v13 + 1)) ^ *((v13 + 1) + v15 + 1) ^ *((v13 + 1) + v16 + 6) ^ 0x1C;
  *(v9 + (v13 + 2)) = ((v3 + 4 + a3) * v8 + 106) ^ BYTE1(v4) ^ *(v14 + (v13 + 2)) ^ *(v15 + (v13 + 2) + 1) ^ *((v13 + 2) + v16 + 6) ^ a1;
  *(v9 + (v13 + 3)) = v4 ^ (v13 * v8 - 97) ^ *(v14 + (v13 + 3)) ^ *((v13 + 3) + v15 + 1) ^ *((v13 + 3) + v16 + 6) ^ 0x9F;
  return v12();
}

uint64_t sub_196974D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  *(v31 - 224) = v28;
  *(v31 - 212) = (v29 - 402404916) ^ (1825732043 * ((((v31 - 224) | 0x755CA29F) - (v31 - 224) + ((v31 - 224) & 0x8AA35D60)) ^ 0x75CAF1A8));
  v32 = (*(v30 + 8 * (v29 ^ 0x1503)))(v31 - 224);
  return (*(v30 + 8 * (((*(a28 + 32) == ((v29 - 1532) | 0xCu) - 2092) * (169 * (v29 ^ 0xE03) - 4013)) ^ (v29 - 2895))))(v32);
}

uint64_t sub_196974DC0()
{
  STACK[0x6B8] = v0 + 8;
  v3 = STACK[0x6A8];
  LODWORD(STACK[0x820]) = STACK[0x5AC];
  STACK[0x4B0] = v3;
  STACK[0x930] = 0;
  LODWORD(STACK[0x484]) = -1720256293;
  LOWORD(STACK[0x4E6]) = 13568;
  LODWORD(STACK[0x724]) = -1720256293;
  LODWORD(STACK[0x8F4]) = -1720256293;
  STACK[0x868] = 0x3378E7DAD334F2CBLL;
  STACK[0x8C8] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x1FE4)))(16, 0x20040A4A59CD2);
  STACK[0x7E8] = v4;
  return (*(v2 + 8 * (((v4 == 0) * ((86 * (v1 ^ 0x543) - 1636) ^ (v1 + 497))) ^ v1)))();
}

uint64_t sub_196974E7C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, int a26)
{
  v28 = ((a26 ^ 0x449404C1) - 994077457) ^ a26 ^ ((a26 ^ 0xE01D6355) + 1614214011) ^ ((a26 ^ 0x25A2E3AB) - 1517718651) ^ ((a26 ^ 0xFEFFEBEF) + 2127850981 + *(v27 - 196));
  *(v27 - 196) = (a1 - 1904) | 0xC;
  v30 = ((((a1 - 1166187978) & 0x45829FCF) - 5943) & v28) != 0 || v28 == 2144628688;
  v31 = *(v26 + 8 * (((4 * (((a1 - 1) ^ v30) & 1)) & 0xF7 | (8 * (((a1 - 1) ^ v30) & 1))) ^ a1));
  *(v27 - 200) = -42899;
  return v31();
}

uint64_t sub_196974F64(__n128 a1)
{
  v3.n128_u64[0] = (v1 + 13) & 0xF;
  v3.n128_u64[1] = (v1 + 12) & 0xF;
  v4.n128_u64[0] = (v1 + 11) & 0xF;
  v4.n128_u64[1] = (v1 + 10) & 0xF;
  v5.n128_u64[0] = (v1 + 9) & 0xF;
  v5.n128_u64[1] = v2 & 0xF ^ 0xDLL;
  v8.val[0].i64[0] = (v1 + 7) & 0xF;
  v8.val[0].i64[1] = (v1 + 6) & 0xF;
  v8.val[1].i64[0] = (v1 + 5) & 0xF;
  v8.val[1].i64[1] = (v1 + 4) & 0xF;
  v8.val[2].i64[0] = (v1 + 3) & 0xF;
  v8.val[2].i64[1] = (v1 + 2) & 0xF;
  v8.val[3].i64[0] = (v1 + 1) & 0xF;
  v8.val[3].i64[1] = v1 & 0xF;
  v6.n128_u64[0] = 0x3B3B3B3B3B3B3B3BLL;
  v6.n128_u64[1] = 0x3B3B3B3B3B3B3B3BLL;
  return sub_19697505C(a1, v3, v4, v5, xmmword_196EBFA60, vqtbl4q_s8(v8, xmmword_196EBFA60), v6);
}

uint64_t sub_19697505C(double a1, __n128 a2, __n128 a3, __n128 a4, int8x16_t a5, double a6, int8x16_t a7, uint64_t a8, int a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  v22 = ~a10 + v19;
  v23 = v22 & 0xF;
  v25.i64[0] = vqtbl4q_s8(*(&a2 - 1), a5).u64[0];
  *&v25.i64[1] = a6;
  v26 = vrev64q_s8(vmulq_s8(v25, a7));
  *(v15 + v22) = veorq_s8(veorq_s8(veorq_s8(*(v16 + v23 - 15), *(a11 + v22)), veorq_s8(*(v17 + v23 - 15), *(v18 + v23 - 15))), vextq_s8(v26, v26, 8uLL));
  return (*(v20 + 8 * (((a10 + a13 + v14 == v21) * a14) ^ a9)))();
}

uint64_t sub_1969753C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unsigned int a30)
{
  v37 = (v30 + v31 + v36);
  v38 = ((*v37 ^ v33) << 24) | ((v37[1] ^ v33) << 16) | ((v37[2] ^ v33) << 8);
  LODWORD(v37) = (v38 | v37[3] ^ v33) + v34 - 2 * ((v38 | v37[3] ^ v33) & (v34 + 4) ^ (v37[3] ^ v33) & 4);
  v39 = (2 * (v31 & 0x78)) & 0x70 ^ (v31 & 0x78 | 0xF2A6BE07) ^ (((16 * (((v31 & 0x78) >> 3) & 0xF)) | 0x1801000) & (v31 ^ 0x86937085) | 0xEA0EEF0A);
  v40 = (2 * (v31 ^ 0x86937085)) & 0x200178 ^ 0x200105 ^ ((2 * (v31 ^ 0x86937085)) ^ 0x5CD8F8F8) & (v31 ^ 0x86937085);
  v41 = (4 * v39) & 0x33A04774 ^ v39 ^ ((4 * v39) ^ 0x49291234) & v40;
  v42 = (4 * v40) & (a4 + 12) ^ 0x11080209 ^ ((4 * v40) ^ 0xC5290BF4) & v40;
  v43 = (16 * v41) & a4 ^ v41 ^ ((16 * v41) ^ 0xA0815390) & v42;
  v44 = (16 * v42) & a4 ^ 0x128002D ^ ((16 * v42) ^ 0xBA8577D0) & v42;
  v45 = v43 ^ (v43 << 8) & (a4 - 112) ^ ((v43 << 8) ^ 0x88462900) & v44 ^ 0x29201054;
  *(v32 + 4 * (((v31 ^ (2 * ((v45 << 16) & 0x3BA80000 ^ v45 ^ ((v45 << 16) ^ 0x577D0000) & ((v44 << 8) & 0x3BA80000 ^ 0x13A80000 ^ ((v44 << 8) ^ 0x28570000) & v44)))) >> 2) ^ 0x3B0EE240)) = v37;
  return (*(v35 + 8 * ((4984 * ((v31 + 4 + v36) < 0x40)) ^ a30)))();
}

uint64_t sub_196975648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, int a19, uint64_t a20, uint64_t a21, int a22)
{
  v26 = 753662761 * ((&a18 + 444397917 - 2 * (&a18 & 0x1A7CF95D)) ^ 0x7F660216);
  a20 = a16;
  a21 = v23;
  a18 = (a11 ^ 0xF6FF6EB5) + ((2 * a11) & 0xEDFEDD6A) - v26 + 1597414363;
  a19 = (v25 + 3855) ^ v26;
  v27 = (*(v24 + 8 * (v25 + 5043)))(&a18);
  return (*(v24 + 8 * (((a22 == v22) * (v25 + 2385)) ^ v25)))(v27);
}

uint64_t sub_19697591C(int a1, unsigned int a2)
{
  LOBYTE(STACK[0x9EC]) = 0;
  LOBYTE(STACK[0x933]) = 1;
  LOBYTE(STACK[0x87A]) = 2;
  LOBYTE(STACK[0x7C1]) = 3;
  LOBYTE(STACK[0xACF]) = 4;
  LOBYTE(STACK[0xA16]) = 5;
  LOBYTE(STACK[0x95D]) = 6;
  LOBYTE(STACK[0x8A4]) = 7;
  LOBYTE(STACK[0x7EB]) = 8;
  LOBYTE(STACK[0xAF9]) = 9;
  LOBYTE(STACK[0xA40]) = 10;
  LOBYTE(STACK[0x987]) = 11;
  LOBYTE(STACK[0x8CE]) = 12;
  LOBYTE(STACK[0x815]) = 13;
  LOBYTE(STACK[0x75C]) = 14;
  LOBYTE(STACK[0xA6A]) = 15;
  v5 = v3 % 0xD;
  v6 = (a1 & 0xF) * v4 + 495788 - 967 * ((4441539 * ((a1 & 0xFu) * v4 + 495788)) >> 32);
  v7 = STACK[0x580];
  LOBYTE(STACK[0x9EC]) = *(STACK[0x580] + v6);
  *(v7 + v6) = 0;
  v8 = v2 % 0xF * v4 + 496570 - 967 * ((4441539 * (v2 % 0xF * v4 + 496570)) >> 32);
  v9 = STACK[0x933];
  LOBYTE(STACK[0x933]) = *(v7 + v8);
  *(v7 + v8) = v9;
  v10 = a2 % 0xE * v4 + 497352 - 967 * ((4441539 * (a2 % 0xE * v4 + 497352)) >> 32);
  v11 = a1 + 483498722;
  v12 = v3 + a2;
  v13 = STACK[0x87A];
  LOBYTE(STACK[0x87A]) = *(v7 + v10);
  *(v7 + v10) = v13;
  LOBYTE(v10) = STACK[0x7C1];
  v14 = v5 * v4 + 498134 - 967 * ((4441539 * (v5 * v4 + 498134)) >> 32);
  LOBYTE(STACK[0x7C1]) = *(v7 + v14);
  *(v7 + v14) = v10;
  LOBYTE(v10) = STACK[0xACF];
  v15 = (v11 ^ 0x6D145134u) % 0xC * v4 + 498916 - 967 * ((4441539 * ((v11 ^ 0x6D145134u) % 0xC * v4 + 498916)) >> 32);
  v16 = (a2 + a1) ^ 0xB70057C6;
  v17 = v2 - 26159411 - v12;
  LOBYTE(STACK[0xACF]) = *(v7 + v15);
  *(v7 + v15) = v10;
  LOBYTE(v15) = STACK[0xA16];
  v18 = v17 % 0xB * v4 + 499698 - 967 * ((4441539 * (v17 % 0xB * v4 + 499698)) >> 32);
  v12 ^= 0x7E2819D0u;
  LOBYTE(STACK[0xA16]) = *(v7 + v18);
  v19 = v16 ^ v11 ^ 0x6D145134;
  v20 = (v16 % 0xA * v4 + 500480) % 0x3C7;
  *(v7 + v18) = v15;
  LOBYTE(v15) = STACK[0x95D];
  LOBYTE(STACK[0x95D]) = *(v7 + v20);
  v21 = v12 + v17;
  v22 = v12 + v17 + v16;
  *(v7 + v20) = v15;
  v23 = v12 % 9 * v4;
  v24 = v23 + 501262;
  LOBYTE(v11) = STACK[0x8A4];
  v25 = (v23 + 501262) & 0x3C6 ^ (497 - v23) & 0x3C7;
  LOBYTE(STACK[0x8A4]) = *(v7 + (v23 + 501262 - 967 * ((4441539 * (v23 + 501262)) >> 32)));
  v26 = v22 - v19;
  v27 = v22 + v21;
  LOBYTE(v23) = v19 - (v22 + v21);
  v28 = v22 ^ v17 ^ (v22 - v19 + 1011269720 - ((2 * (v22 - v19)) & 0x788D80B0));
  *(v7 + v24 % v25) = v11;
  v29 = v28 ^ 0x3C46C058;
  v30 = (v23 & 7) * v4 + 502044 - 967 * ((4441539 * ((v23 & 7) * v4 + 502044)) >> 32);
  LOBYTE(v11) = STACK[0x7EB];
  LOBYTE(STACK[0x7EB]) = *(v7 + v30);
  *(v7 + v30) = v11;
  v31 = (v28 ^ 0x3C46C058u) % 7 * v4 + 502826 - 967 * ((4441539 * ((v28 ^ 0x3C46C058u) % 7 * v4 + 502826)) >> 32);
  LOBYTE(v11) = STACK[0xAF9];
  v32 = v26 % 6 * v4 + 503608 - 967 * ((4441539 * (v26 % 6 * v4 + 503608)) >> 32);
  LOBYTE(STACK[0xAF9]) = *(v7 + v31);
  *(v7 + v31) = v11;
  LOBYTE(v31) = STACK[0xA40];
  LOBYTE(STACK[0xA40]) = *(v7 + v32);
  *(v7 + v32) = v31;
  LOBYTE(v26) = v28 + v26;
  LOBYTE(v28) = STACK[0x987];
  v33 = v27 % 5 * v4 + 504390 - 967 * ((4441539 * (v27 % 5 * v4 + 504390)) >> 32);
  LOBYTE(STACK[0x987]) = *(v7 + v33);
  v29 += 1764711502;
  LOBYTE(v23) = v29 ^ (v23 - 41);
  LOBYTE(v26) = v23 ^ v26;
  *(v7 + v33) = v28;
  LOBYTE(v33) = STACK[0x8CE];
  v34 = ((v23 & 3) * v4 + 505172) % 0x3C7;
  LOBYTE(STACK[0x8CE]) = *(v7 + v34);
  *(v7 + v34) = v33;
  v35 = (v29 ^ 0x9C8BAE1E) % 3 * v4 + 505954;
  LOBYTE(v29) = STACK[0x815];
  v36 = v35 - 967 * ((4441539 * v35) >> 32);
  LOBYTE(STACK[0x815]) = *(v7 + v36);
  *(v7 + v36) = v29;
  v37 = 140;
  if (v26)
  {
    v37 = 922;
  }

  v38 = STACK[0x75C];
  LOBYTE(STACK[0x75C]) = *(&STACK[0x6D0] + v37);
  *(&STACK[0x6D0] + v37) = v38;
  return sub_196975E30(&STACK[0x6D0], 2274067483, 505954, 51, 3154373922, 4441539);
}

uint64_t sub_196975E30(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  v15 = v10 + *(STACK[0x580] + a7 + v9 * v13 - 967 * ((((a7 + v9 * v13) * a2) >> 32) >> 9)) * v13;
  *(STACK[0x580] + (v15 - 967 * ((v15 * a6) >> 32))) = v9;
  return (*(v11 + 8 * (((v9 + v14 + v8 == 16) * v12) ^ v7)))();
}

uint64_t sub_196975E84(uint64_t a1)
{
  v3 = STACK[0x3D8];
  v4 = (LODWORD(STACK[0x464]) ^ 0xD7577E6ECD391EEDLL) + 0x28A8819132C6E112 + ((2 * LODWORD(STACK[0x464])) & 0x19A723DDALL) + 1;
  STACK[0x4C8] = v4;
  return (*(v2 + 8 * (((v4 == (((v1 - 5990) | 0x40Bu) ^ 0x4CFLL)) * (((v1 - 4970) | 0x133B) ^ 0x17FE)) | v1)))(a1, v3);
}

uint64_t sub_196975F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = STACK[0x5D8];
  STACK[0x638] -= 32;
  v72 = ((474 * (a69 ^ 0x8B4u)) ^ 0xFFFFFFFFFFFFFA71) + 336;
  *(v71 + v72) = *(a13 + v72) ^ *(*(v70 + 8 * (a69 - 1626)) + (v72 & 0xF) - 12) ^ *(*(v70 + 8 * (a69 - 1818)) + (v72 & 0xF) - 3) ^ (-3 * (v72 & 0xF)) ^ *((v72 & 0xF) + *(v70 + 8 * (a69 - 2036)) + 4) ^ 0xEC;
  return (*(v69 + 8 * ((1845 * (v72 == 0)) ^ a69)))(1906239693, 236);
}

uint64_t sub_196975FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>)
{
  v19 = a7 + v8;
  v20 = a7 + v8 + 9;
  v21 = __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = (0x6AF7234D0CC131D4 - v21) & v14 | (v21 + ((13 * (a8 ^ 0x164Au)) ^ 0x1508DCB2F33ECF00)) & 0x3EA14D34E061BB9ALL;
  v23 = __ROR8__(v22 ^ v15, 8);
  v24 = v22 ^ v16;
  v25 = (v23 + v24) ^ 0xE49D77DF873DBF7ELL;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (v10 - ((v27 + v26) | v10) + ((v27 + v26) | v11)) ^ v12;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (v30 + v29 - (a1 & (2 * (v30 + v29))) + a2) ^ a3;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = a7 - 1;
  v35 = ((a4 & (2 * (v33 + v32))) - (v33 + v32) + a5) ^ a6;
  v36 = v35 ^ __ROR8__(v32, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v18;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x1A2AEBE44253AF03;
  *(v19 + 9) = *(v9 + v34) ^ 0xEC ^ (((__ROR8__(v39, 8) + (v39 ^ __ROR8__(v38, 61))) ^ v17) >> (8 * (v20 & 7u)));
  return (*(v13 + 8 * ((7595 * (v34 == 0)) ^ (a8 - 4661))))();
}

uint64_t sub_196976184@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v9 = a2 - 1456321584;
  v10 = a2 - 1;
  v11 = *(v5 + v9);
  if (v11 == 236)
  {
    __asm { BRAA            X10, X17 }
  }

  if (v11 == 108)
  {
    v12 = 1906281716;
    v13 = *v2;
    v14 = (*(v2 + 8) - v3);
    *result = v5;
    *(result + 8) = v6;
    *(result + 12) = v10;
    if (v14 == 29)
    {
      v15 = 1813852030;
    }

    else
    {
      v15 = 1813852031;
    }

    *(result + 16) = 317215047;
    *(result + 20) = v15;
    *(result + 24) = 1906281716;
    *v13 = result;
  }

  else
  {
    result = (*(v8 + 8 * (v7 + 2174)))();
    v12 = 1906239693;
  }

  *(v2 + 16) = v12;
  return result;
}

void sub_1969762EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, uint64_t a16)
{
  a15 = 198792778 - 1790939281 * ((2 * (&a15 & 0x6E26A2B0) - &a15 - 1848025781) ^ 0x69057D0A) + v17 + 172;
  a16 = a13;
  (*(v16 + 8 * (v17 + 198793676)))(&a15);
  JUMPOUT(0x19697635CLL);
}

uint64_t sub_196976498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = ((v22 ^ 0x16C8) - 776888899) ^ v26;
  *v20 = (v24 ^ 0x4CCBD78 ^ (v28 - ((2 * v28) & 0x969A1D6u) + 78958827)) >> 24;
  v16 = v27 ^ 0xAD50D3D6 ^ (v30 - ((2 * v30) & 0x86B2FF7A) - 1017544771);
  v20[4] = HIBYTE(v16);
  v20[12] = (v15 ^ (v14 - ((2 * v14) & 0x2542D1ECu) + 312568054)) >> 24;
  v20[8] = (v29 >> ((a8 & 0x18 ^ 0x10) + (a8 & 0x18 ^ 8))) ^ HIBYTE(v13);
  v20[16] = ((v25 - ((2 * v25) & 0xE6D439F6) + 1936334075) ^ v23 ^ 0xCCCB8AF9) >> 24;
  v17 = a8 ^ v9;
  v20[20] = ((v10 - ((2 * v10) & 0xA1EF32C) + 84900246) ^ v8 ^ 0x50F7996u) >> 24;
  v18 = v11 ^ v12;
  v20[28] = HIBYTE(v18);
  v20[24] = ((v17 ^ 0x4A9F5DCBu) >> 24) ^ 0x87;
  v20[1] = (v24 ^ 0x4CCBD78 ^ (v28 - ((2 * v28) & 0x69A1D6u) + 11849963)) >> 16;
  v20[5] = BYTE2(v16);
  v20[9] = (v13 >> (((BYTE2(v16) & 0x3A ^ 0x1A) + (BYTE2(v16) & 0x3A)) & 0x14)) ^ BYTE2(v29);
  v20[13] = (v15 ^ (v14 - ((2 * v14) & 0x42D1ECu) + 10578166)) >> 16;
  v20[17] = ((v25 - ((2 * v25) & 0xD439F6) + 6954235) ^ v23 ^ 0xCCCB8AF9) >> 16;
  v20[21] = ((v10 - ((2 * v10) & 0x1EF32C) + 1014166) ^ v8 ^ 0x50F7996u) >> 16;
  v20[25] = ((v17 ^ 0x4A9F5DCBu) >> 16) ^ 0x8D;
  v20[29] = BYTE2(v18);
  v20[2] = (v24 ^ 0xBD78 ^ (v28 - ((2 * v28) & 0xA1D6) - 12053)) >> 8;
  v20[6] = (v27 ^ 0xD3D6 ^ (v30 - ((2 * v30) & 0xFF7A) + 32701)) >> 8;
  v20[10] = (v13 ^ v29) >> 8;
  v20[14] = (((v22 ^ 0x16C8) - 25155) ^ v26 ^ (v14 - ((2 * v14) & 0xD1EC) + 26870)) >> 8;
  v20[18] = ((v25 - ((2 * v25) & 0x39F6) + 7419) ^ v23 ^ 0x8AF9) >> 8;
  v20[22] = ((v10 - ((2 * v10) & 0xF32C) + 31126) ^ v8 ^ 0x7996) >> 8;
  v20[26] = ((v17 ^ 0xF600) >> 8) ^ 0x56;
  v20[30] = BYTE1(v18);
  result = v28 - ((2 * v28) & 0xD6u) + 235;
  v20[3] = v24 ^ 0x78 ^ (v28 - ((2 * v28) & 0xD6) - 21);
  v20[7] = v27 ^ 0xD6 ^ (v30 - ((2 * v30) & 0x7A) - 67);
  v20[11] = v13 ^ v29;
  v20[15] = ((v22 ^ 0xC8) - 67) ^ v26 ^ (v14 - ((2 * v14) & 0xEC) - 10);
  v20[19] = (v25 - ((2 * v25) & 0xF7) - 5) ^ v23 ^ 0xF9;
  v20[23] = (v10 - ((2 * v10) & 0x2C) - 106) ^ v8 ^ 0x96;
  v20[27] = v17 ^ 0x49;
  v20[31] = v18;
  *(v21 + 40) = 1906281716;
  return result;
}

uint64_t sub_196976898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 - 136) = v4 - 248;
  *(v4 - 144) = 998242381 * ((((v4 - 144) | 0xE8AAD26F) + (~(v4 - 144) | 0x17552D90)) ^ 0x42C54AB8) + 1135419499 + v3;
  (*(a3 + 8 * (v3 ^ 0x1E93u)))(v4 - 144);
  v6 = 1283153057 * ((((2 * (v4 - 144)) | 0x9F23DB2A) - (v4 - 144) - 1334963605) ^ 0x49EEA2);
  *(v4 - 128) = v3 + 4048 + v6;
  *(v4 - 124) = v6 + 814017526;
  *(v4 - 144) = v4 - 248;
  *(v4 - 136) = &v10;
  (*(a3 + 8 * (v3 ^ 0x1EB0u)))(v4 - 144);
  v7 = 1283153057 * ((v4 - 144) ^ 0x4FD80337);
  *(v4 - 128) = v3 + 4048 + v7;
  *(v4 - 124) = v7 + 814017526;
  *(v4 - 144) = v4 - 248;
  *(v4 - 136) = v9;
  (*(a3 + 8 * (v3 ^ 0x1EB0u)))(v4 - 144);
  *(v4 - 128) = v3 + 753662761 * ((((v4 - 144) | 0x27D7B39B) - ((v4 - 144) & 0x27D7B39B)) ^ 0x42CD48D0) + 3581;
  *(v4 - 144) = v4 - 248;
  *(v4 - 136) = v9 + 4;
  return (*(a3 + 8 * (v3 + 5703)))(v4 - 144);
}

uint64_t sub_196976AA0(uint64_t a1, int a2, int a3)
{
  v5 = v3 & 0xE1F14FE3;
  v6 = (v3 & 0xE1F14FE3) + 925;
  v7 = (v3 & 0xE1F14FE3) + 2597;
  v8 = v6 - a3 + 676335772;
  if (a2 > v8)
  {
    v8 = a2;
  }

  return (*(v4 + 8 * ((((v8 + 1) > 0x23) * (v7 ^ 0x1693)) ^ v5)))();
}

uint64_t sub_196976AF8@<X0>(int a1@<W4>, unsigned int a2@<W6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _DWORD *a10, int a11)
{
  v17 = &a10[6 * v13];
  v17[2] = v14;
  v17[3] = v16;
  *(v17 + 2) = a9;
  v17[6] = a11;
  *a10 = v12 + 1;
  return (*(v15 + 8 * ((6057 * (a1 + ((a3 - 1146) | 1u) + v11 + 2107972058 < a2)) ^ a3)))();
}

uint64_t sub_196976BCC@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  STACK[0x440] = *(a1 + 8 * v2);
  LODWORD(STACK[0x994]) = 1615561195;
  STACK[0x998] = &STACK[0x528];
  return (*(a1 + 8 * ((((((v2 + 14) ^ 0x67) + 1) ^ (a2 == 0)) & 1 | (4 * (((((v2 + 14) ^ 0x67) + 1) ^ (a2 == 0)) & 1))) ^ (v2 + 4075))))();
}

uint64_t sub_196976BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x958] = v69;
  v71 = STACK[0x530];
  LODWORD(STACK[0x714]) = a69;
  return (*(STACK[0x248] + 8 * (((v70 - 3612) | 0x10C) ^ 0x996 ^ ((v71 != 0) * (((v70 - 3612) | 0x10C) + (((v70 - 3612) | 0x10C) ^ 0xFFFFF317) + 3344)))))();
}

uint64_t sub_196976C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = (v17 - 5406) | 0x949;
  v21 = ((v16 + 188150462) ^ 0xB36F2BEu) < 8 || a16 - a1 < ((v19 - 1476695198) & 0xFF75FFFF) - 2809231007u;
  return (*(v18 + 8 * ((49 * v21) ^ v19)))();
}

uint64_t sub_196977D84@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = a2 ^ 0xBB1;
  STACK[0xB28] = v2;
  v4 = STACK[0x5D0];
  STACK[0xB30] = STACK[0x5D0];
  return (*(STACK[0x248] + 8 * ((2213 * (v2 - v4 > ((v3 - 731) ^ 0x13AuLL))) ^ v3)))(a1, 1906239698);
}

uint64_t sub_196977DE0()
{
  v5 = LOWORD(STACK[0xA06]);
  if (v5 == 26075)
  {
    v6 = STACK[0x8E8];
    STACK[0x900] = v1;
    LODWORD(STACK[0x480]) = v0;
    return (*(v3 + 8 * (((v6 + v2 == 0) * (13 * (v4 ^ 0xFEF) - 6428)) ^ (v4 - 1213))))();
  }

  else
  {
    if (v5 == 45445 || v5 == 41591)
    {
      STACK[0x900] = v1;
    }

    STACK[0x4A8] = 0;
    LODWORD(STACK[0x480]) = -1720256293;
    return (*(v3 + 8 * (((*STACK[0x538] != 0) * (((((v4 + 500) | 0x640) + 1779836237) & 0x95E9C5F7) - 399)) | (v4 + 500) | 0x640)))();
  }
}

uint64_t fp_dh_f89a519a0bbde6e5182654219d8482ee(uint64_t result)
{
  v1 = 1559199898;
  v2 = ((result | 0x6F) - result + (result & 0x90)) ^ 0xF6;
  v3 = (*(result + 20) - v2 + (v2 << 6));
  if (v3 > 0x22)
  {
    if (v3 == 38)
    {
      v4 = 335544320;
    }

    else
    {
      if (v3 != 35)
      {
        goto LABEL_13;
      }

      v4 = 0x4000000;
    }
  }

  else if (v3 == 32)
  {
    v4 = -2113929216;
  }

  else
  {
    if (v3 != 33)
    {
      goto LABEL_13;
    }

    v4 = -1744830464;
  }

  if (*(*(result + 8) + 8) == v4)
  {
    v1 = 1559241979;
  }

  else
  {
    v1 = 1559199898;
  }

LABEL_13:
  *(result + 16) = v1;
  return result;
}

void fp_dh_e867037d0ba09c40269512154a18daa4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24) + 1790939281 * ((((2 * a1) | 0x22BD414C) - a1 + 1856069466) ^ 0x698280E7);
  v2 = *(a1 + 8);
  if (*(v2 + 4) - 676339932 >= 0)
  {
    v3 = *(v2 + 4) - 676339932;
  }

  else
  {
    v3 = 676339932 - *(v2 + 4);
  }

  if (*(*a1 + 4) - 676339932 >= 0)
  {
    v4 = *(*a1 + 4) - 676339932;
  }

  else
  {
    v4 = 676339932 - *(*a1 + 4);
  }

  v7[1] = v1 - 455395931 * ((1709170000 - (v7 ^ 0x7D37E716 | 0x65DFDD50) + (v7 ^ 0x7D37E716 | 0x9A2022AF)) ^ 0x91E69B75) + 308;
  v8 = v2;
  v5 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 & 0x79FEA678)) - 4;
  (*&v5[8 * v1 + 13936])(v7);
  if (v3 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  __asm { BRAA            X14, X17 }
}

uint64_t sub_19697822C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 + v2 - 1 - 31);
  v6 = a1 + v2 - 1;
  *(v6 - 15) = *(a2 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((56 * (((8 * v3) ^ 0x9568u) - 6024 == (v2 & 0xFFFFFFE0))) ^ v3)))();
}

uint64_t sub_19697D6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  a13 = 1575331711 * ((2 * (&a13 & 0x19173398) - &a13 + 1726532704) ^ 0xAB35962) + 1655634431;
  v15 = (*(v14 + 54592))(&a13);
  return (*(v14 + 8 * ((1821 * (a14 == 1906281716)) ^ 0x387u)))(v15);
}

uint64_t sub_19697D760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, __int16 a17, char a18, __int16 a19, char a20, int a21, int a22, char a23)
{
  v28 = 1621291457 * ((2 * ((v27 - 152) & 0x2C2FF6D8) - (v27 - 152) + 1406142753) ^ 0x65C788B8);
  *(v27 - 136) = &a20;
  *(v27 - 112) = v28 + v24 + 1661;
  *(v27 - 120) = &a23;
  *(v27 - 152) = &a18;
  *(v27 - 144) = a14;
  *(v27 - 104) = &a16;
  *(v27 - 124) = v28 + v26 + 273767718;
  v29 = (*(v23 + 8 * (v24 ^ 0x1C74)))(v27 - 152);
  return (*(v23 + 8 * (((*(v27 - 128) == v24 + 1906280000) * (((v24 - 2011947175) | 0x124019A0) ^ (v25 + 3390))) ^ v24)))(v29);
}

uint64_t sub_19697D87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = STACK[0x87C];
  STACK[0x3F0] = v7;
  LODWORD(STACK[0x8D8]) = v9;
  LOWORD(STACK[0x8DE]) = v8;
  LODWORD(STACK[0x8E0]) = v10;
  LODWORD(STACK[0x8E4]) = STACK[0x3EC];
  STACK[0x8E8] = STACK[0x820];
  STACK[0x680] = STACK[0x7D8];
  return (*(a6 + 8 * (((299 * (v6 ^ 0x1F4) + 119) * (v7 != 0)) ^ v6)))();
}

uint64_t sub_19697D8E8@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v3 = (*(a1 + 8 * (a2 + 4425)))();
  v4 = STACK[0x370];
  *(v2 + 24) = 0;
  return sub_1968D2970(v3, v5, v6, v7, v8, v4);
}

uint64_t sub_19697D994@<X0>(__int16 a1@<W8>)
{
  v7 = *(v6 + 743 * (*(v5 + (133 * a1 - 979 * ((((3013 * (133 * a1)) >> 16) + (((133 * a1 - ((3013 * (133 * a1)) >> 16)) & 0xFFFE) >> 1)) >> 9))) ^ 0xF7u) % ((v1 + 49) ^ 0x8F4u));
  v8 = (3013 * (133 * v3 + 8907)) >> 16;
  *(v5 + (133 * v3 + 8907 - 979 * ((v8 + (((133 * v3 + 8907 - v8) & 0xFFFE) >> 1)) >> 9))) = v7 ^ (8 * (v7 ^ 0xA9) * (v7 ^ 0xA9)) ^ 0x7F;
  return (*(v4 + 8 * ((87 * (v3 + 1 == v2 + 16)) ^ v1)))();
}

uint64_t sub_19697DA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, int a34, unsigned int a35)
{
  v39 = v36 + 61;
  v40 = v35 + a35;
  *(v38 - 128) = v39 + 1283153057 * ((v38 - 144) ^ 0x4FD80337) + 1684;
  *(v38 - 144) = v37 + 12;
  *(v38 - 136) = v37;
  *(v38 - 120) = v40;
  *(v38 - 104) = &a32;
  v41 = (*(a3 + 8 * (v39 + 4632)))(v38 - 144);
  return (*(a31 + 8 * (((*(v38 - 112) == 1906281716) * ((v39 + 3450) ^ 0xAAA)) ^ v39)))(v41);
}

uint64_t sub_19697DB48@<X0>(int a1@<W8>)
{
  *v3 = v6;
  v4 = 79 * (a1 ^ 0xD0D);
  v9 = a1 - 1790939281 * ((-760073471 - (&v9 ^ 0x7BC5F0BD | 0xD2B23301) + (&v9 ^ 0x7BC5F0BD | 0x2D4DCCFE)) ^ 0xAE541C02) + 2735;
  v10 = v8;
  (*(v2 + 8 * (a1 ^ 0x178D)))(&v9);
  v9 = v4 - 1790939281 * ((&v9 & 0xD7CCFCD1 | ~(&v9 | 0xD7CCFCD1)) ^ 0xD0EF236F) + 2704;
  v10 = v7;
  result = (*(v2 + 8 * (v4 + 3430)))(&v9);
  *(v1 + 8) = 1906281716;
  return result;
}

uint64_t sub_19697DE00@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 - 1;
  *(v4 + v6) = *(a1 + v6) - ((v1 ^ 0xC6) & (2 * *(a1 + v6))) - 20;
  return (*(v5 + 8 * (((v6 == 0) * v3) ^ v1)))();
}

void sub_19697DFD8()
{
  STACK[0x590] = v0 - 1824;
  LODWORD(STACK[0x380]) = 1906239688;
  JUMPOUT(0x196A01674);
}

uint64_t sub_19697E034()
{
  STACK[0x510] = STACK[0xAE8];
  v2 = LODWORD(STACK[0xAF4]) == (((v1 ^ 0xAB1) + 2415) ^ 0x719F82E8);
  return (*(v0 + 8 * ((v2 | (v2 << 6)) ^ v1 ^ 0xAB1)))();
}

void sub_19697E088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, _DWORD *a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v33 = 4 * (v31 - v32);
  v34 = -1555358357 * ((*(*a26 + (*a27 & ((a22 & 0xA74555FB) - 967564453))) ^ (a29 + v33)) & 0x7FFFFFFF);
  v35 = v34 ^ HIWORD(v34);
  v36 = 4 * ((-1555358357 * v35) >> 24);
  *(a30 + v33) ^= *(a29 + v33) ^ (((v31 | ~(v30 - 2205)) & (v30 - 2205 - v31) | v31 & ~(v30 - 2205)) >> 31) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v30 - 2003) + v36 - 12) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a21) + v36 - 12) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v30 - 1763) + v36 - 8) ^ (493551616 * v35) ^ (-1555358357 * v35) ^ (2001061497 * ((-1555358357 * v35) >> 24));
  JUMPOUT(0x19697E180);
}

uint64_t sub_19697E1C8@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  STACK[0x440] = *(a1 + 8 * v2);
  LODWORD(STACK[0x994]) = -984423831;
  STACK[0x998] = &STACK[0x7B8];
  return (*(a1 + 8 * ((((((-11 * (v2 ^ 0x43) + 35) ^ 0x67) + 1) ^ (a2 == 0)) & 1 | (4 * (((((-11 * (v2 ^ 0x43) + 35) ^ 0x67) + 1) ^ (a2 == 0)) & 1))) ^ (245 * (v2 ^ 0x143)))))();
}

void fp_dh_35699805d211957f996e6ccfc65bb069(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *a1 == 0;
  }

  else
  {
    v2 = 1;
  }

  v5 = v2 || *(a1 + 40) == 0 || *(a1 + 8) == 0;
  v1 = *(a1 + 16) - 1283153057 * (a1 ^ 0x4FD80337);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_19697E2BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22)
{
  v25 = 1012216201 * (((&a17 | 0x91407D77) + (~&a17 | 0x6EBF8288)) ^ 0x15E9F59A);
  a22 = v25 + v22 - 1795308206;
  a17 = v25 ^ 0x80F33AA;
  a19 = v25 - 1848785752;
  a20 = a14;
  a21 = &a12;
  v26 = (*(v24 + 8 * (v22 + 1845)))(&a17);
  return (*(v24 + 8 * (((a18 == ((13 * (v22 ^ 0x132E)) ^ (v23 - 572))) * ((737 * (v22 ^ 0x1357)) ^ 0xE84)) ^ v22)))(v26);
}

uint64_t sub_19697E420()
{
  v1 = STACK[0x248];
  v2 = (*(STACK[0x248] + 8 * (v0 ^ 0x145D)))(STACK[0x880]);
  return (*(v1 + 8 * (((STACK[0x590] == 0) * (STACK[0x228] ^ 0xE1B)) ^ (v0 - 2026))))(v2);
}

void fp_dh_f97041bd233802761b934d7d78f25478(uint64_t a1)
{
  v1 = *(a1 + 16) - 1068996913 * (((a1 | 0xF301EA24) - a1 + (a1 & 0xCFE15DB)) ^ 0x26EF0BB5);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_19697E704()
{
  v1 = *STACK[0x580];
  STACK[0x890] = 0;
  STACK[0x498] = 0;
  return (*(STACK[0x248] + 8 * (((((21 * ((v0 + 2505) ^ 0x1749) - 3228) | 8) + 3644) * (v1 == 0)) ^ (v0 + 2505))))();
}

uint64_t sub_19697E760(int a1, int8x16_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (v8 - 32);
  v13 = (v10 - 32);
  v14 = veorq_s8(*v13, a2);
  v12[-1] = veorq_s8(v13[-1], a2);
  *v12 = v14;
  return (*(a7 + 8 * (((v9 == 32) * (((v7 + 444) | v11) + a1)) ^ v7)))();
}

uint64_t sub_19697E770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((566 * (v5 == (v3 - 599) - 3540)) ^ v3)))();
}

uint64_t sub_19697E7A4()
{
  v2 = v0 ^ 0x34E;
  v3 = v1;
  v4 = v0 ^ 0x1AC;
  v5 = (*(v3 + 8 * (v0 ^ 0x153D)))(32, 0x103004054B5FA7DLL);
  STACK[0x8B8] = v5;
  return (*(v3 + 8 * (((v5 == 0) * (v4 ^ 0x5B1 ^ (2 * v2) ^ 0x13A6)) ^ v2)))();
}

uint64_t sub_19697E888(uint64_t a1, uint64_t a2)
{
  LODWORD(STACK[0x3F4]) = v8;
  LODWORD(STACK[0x3F8]) = v7;
  v9 = STACK[0x34C];
  LODWORD(STACK[0x348]) = STACK[0x34C];
  v10 = STACK[0x3D8];
  STACK[0x350] = STACK[0x350];
  STACK[0x3D8] = v10;
  v2 = (11 * (LODWORD(STACK[0x3E8]) - v9) + 242) % (v5 + 496);
  *(STACK[0x5A0] + v2) ^= 0x80u;
  v3 = 239 * ((v5 + 5571) ^ 0x17A3);
  LODWORD(STACK[0x598]) = v3;
  LODWORD(STACK[0x3EC]) = v3 - 414;
  return (*(v6 + 8 * ((3958 * (LODWORD(STACK[0x3E4]) - v9 == 55)) ^ (v5 + 5571))))(11, a2, 457900628);
}

uint64_t sub_19697E90C@<X0>(uint64_t a1@<X5>, unint64_t a2@<X8>)
{
  STACK[0x670] = *(a1 + 8 * v2);
  STACK[0x7E8] = a2;
  LODWORD(STACK[0x958]) = v4;
  LOWORD(STACK[0x95E]) = -28805;
  LODWORD(STACK[0x960]) = -1720256289;
  LODWORD(STACK[0x964]) = v3;
  STACK[0x968] = 0x25B2F1AA6CA5FEE2;
  STACK[0x970] = 0;
  return (*(a1 + 8 * (((a2 == 0) * (((v2 - 210) | 0x1029) ^ ((v2 + 769) | 0x1248) ^ 0x5F7)) ^ (v2 + 3247))))();
}

uint64_t sub_19697E9D4()
{
  v9 = v0 + (v4 ^ 0x2A8) + 1910;
  v10 = 1621291457 * (((((v8 - 136) | 0x731C7340) ^ 0xFFFFFFFE) - (~(v8 - 136) | 0x8CE38CBF)) ^ 0xBAF40D26);
  *(v8 - 120) = *v6;
  *(v8 - 132) = v4 + 462 + v10;
  *(v8 - 128) = (2 * (v4 ^ 0x2A8) + 1122297523 * v7 + 1424608384) ^ v10;
  (*(v5 + 8 * (v4 + 6054)))(v8 - 136);
  v11 = *v6;
  v12 = 1068996913 * ((v8 - 136) ^ 0x94613493D5EEE191);
  *(v8 - 120) = v4 + 5586 - v12;
  *(v8 - 112) = v11;
  *(v8 - 128) = (((2 * v3) & 0xF92DFB6F3F7D1DBELL) + 0x7F7FB77BE657FBF1 + ((v9 - 0x3690248B7D5F07ALL) ^ v3)) ^ v12;
  (*(v5 + 8 * (v4 ^ 0x19AB)))(v8 - 136);
  v13 = 1621291457 * ((2 * (((v8 - 136) ^ 0x1F8B1ECC) & 0x1E840304) - ((v8 - 136) ^ 0x1F8B1ECC) - 511968005) ^ 0xC8E763AE);
  *(v8 - 120) = *v6;
  *(v8 - 132) = v4 + 462 + v13;
  *(v8 - 128) = v13 ^ (1122297523 * v2 + 296299868);
  (*(v5 + 8 * (v4 + 6054)))(v8 - 136);
  v14 = *v6;
  *(v8 - 128) = (1068996913 * ((2 * ((v8 - 136) & 0x3EBEBF74A9032C68) - (v8 - 136) - 0x3EBEBF74A9032C6CLL) ^ 0x5520741883123205)) ^ ((v1 ^ 0x7EBFFD33DEFEEAD2) - 0x2A9480058E86002 + ((2 * v1) & 0xFD7FFA67BDFDD5A4));
  *(v8 - 120) = v4 + 5586 - 1068996913 * ((2 * ((v8 - 136) & 0xA9032C68) - (v8 - 136) + 1459409812) ^ 0x83123205);
  *(v8 - 112) = v14;
  (*(v5 + 8 * (v4 + 6037)))(v8 - 136);
  v15 = 1621291457 * ((v8 - 136) ^ 0x36178199);
  *(v8 - 120) = *v6;
  *(v8 - 132) = v4 + 462 + v15;
  *(v8 - 128) = v15 ^ 0x11A92D5C;
  v16 = (*(v5 + 8 * (v4 ^ 0x19BA)))(v8 - 136);
  return (*(v5 + 8 * ((77 * (*(v8 - 136) != 1906281716)) ^ v4)))(v16);
}

uint64_t sub_19697ED14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v24 = v13 - 1;
  v25 = __ROR8__((v21 + v24) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((v22 - v25) & 0xF0A3D2B2DAD0ADA6) + v25 - 0x621570CEECDB5FF3 - ((v25 - 0x621570CEECDB5FF3) & a7);
  v27 = v26 ^ a8;
  v28 = v26 ^ v17;
  v29 = (__ROR8__(v27, 8) + v28) ^ v20;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__((((v31 + v30) ^ v9) - (v23 & (2 * ((v31 + v30) ^ v9))) + v10) ^ v14, 8);
  v33 = (((v31 + v30) ^ v9) - (v23 & (2 * ((v31 + v30) ^ v9))) + v10) ^ v14 ^ __ROR8__(v30, 61);
  v34 = ((v11 & (2 * (v32 + v33))) - (v32 + v33) + v12) ^ a2;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (v36 + v35 - (a9 & (2 * (v36 + v35))) + a3) ^ a4;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x60B83CEF67356D1BLL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xBB5B6BF4C59B502;
  *(a6 + v24) = *(v16 + (v24 & 0xF)) ^ *(v21 + v24) ^ *((v24 & 0xF) + v15 + 2) ^ ((v24 & 0xF) * a5) ^ *((v24 & 0xF) + v18 + 4) ^ (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ 0xB9699EEB72020FC9) >> (8 * ((v21 + v24) & 7)));
  return (*(a1 + 8 * ((28 * (v24 == 0)) | (v19 - 1020))))();
}

uint64_t sub_19697EE88@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  v7 = v3 - 1;
  STACK[0x4F8] = v7;
  *(a1 + v7) = (a2 ^ v4) * (a2 + 17);
  return (*(v6 + 8 * (((STACK[0x4F8] == 0) * ((v2 + 3113) ^ v5)) ^ v2)))();
}

uint64_t sub_19697EECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, uint64_t a19, int *a20)
{
  a18 = v20 - ((564682968 - (&a18 | 0x21A860D8) + (&a18 | 0xDE579F27)) ^ 0xB20C0A25) * v23 + 1271;
  a19 = a15;
  a20 = &a14;
  v24 = (*(v21 + 8 * (v20 + 5860)))(&a18);
  return (*(v21 + 8 * (((a14 == v20 - 970) * (v20 ^ (v22 + 714) ^ (v22 + 26))) ^ v20)))(v24);
}

uint64_t sub_19697EF8C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = v11 - 1;
  v26 = (a7 + v25);
  v27 = __ROR8__((a7 + v25) & ((v17 + 829) ^ a4), 8);
  v28 = ((v27 - 0x6AF7234D0CC131D5) ^ a3 | 0xE81C96B255F67ELL) - ((v27 - 0x6AF7234D0CC131D5) ^ a3 | a2) + a2;
  v29 = __ROR8__(v28 ^ 0x320F25771ED3415ALL, 8);
  v30 = v28 ^ v8;
  v31 = (v29 + v30) ^ v18;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xF5A2F1B9B5D0B209;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = __ROR8__((a1 - ((v35 + v34) | a1) + ((v35 + v34) | v20)) ^ v13, 8);
  v37 = (a1 - ((v35 + v34) | a1) + ((v35 + v34) | v20)) ^ v13 ^ __ROR8__(v34, 61);
  v38 = (v12 - ((v36 + v37) | v12) + ((v36 + v37) | v9)) ^ v24;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = __ROR8__((v23 - ((v40 + v39) | v23) + ((v40 + v39) | v22)) ^ v16, 8);
  v42 = (v23 - ((v40 + v39) | v23) + ((v40 + v39) | v22)) ^ v16 ^ __ROR8__(v39, 61);
  v43 = (v15 & (2 * (v41 + v42))) - (v41 + v42);
  *(v19 + v25 + a6) = (((__ROR8__((v43 + a8) ^ v10, 8) + ((v43 + a8) ^ v10 ^ __ROR8__(v42, 61))) ^ v21) >> (8 * (v26 & 7u))) ^ *v26;
  return (*(STACK[0x248] + 8 * (((v25 == 0) * v14) ^ v17)))();
}

uint64_t sub_19697F0E4(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

void fp_dh_9d7be487ddeeb63f4c632fa2eda86bf7(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) + 455395931 * ((((2 * a1) | 0x42D5D572) - a1 + 1586828615) ^ 0xD79BB475);
  v4 = *(a1 + 8);
  v3[0] = v1 + 489239129 * (v3 ^ 0xB9282336) - 4234;
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0x1749)) - 4;
  (*&v2[8 * v1 + 12072])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_19697F210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v17 = (v15 - 3001) | 0xB22;
  v18 = a7 + a8;
  v19 = a7 + a8 + 9;
  v20 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = ((0x6AF7234D0CC131D4 - v20) & v16) + v20 - 0x6AF7234D0CC131D5 - ((v20 - 0x6AF7234D0CC131D5) & v9);
  v22 = ((v17 - 294) | 0x414u) ^ 0xE5B11133320AF560 ^ v21;
  v23 = v21 ^ v10;
  v24 = __ROR8__(v22, 8);
  v25 = (0xE29D0371AB6A9B69 - ((v24 + v23) | 0xE29D0371AB6A9B69) + ((v24 + v23) | v11)) ^ v12;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (0x859CCB975B87FC0DLL - ((v27 + v26) | 0x859CCB975B87FC0DLL) + ((v27 + v26) | v13)) ^ v14;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x5963B6C555D97F1FLL;
  v31 = __ROR8__(v30, 8);
  v32 = v30 ^ __ROR8__(v29, 61);
  v33 = ((a1 & (2 * (v31 + v32))) - (v31 + v32) + a2) ^ a3;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x64C31C027084DE6CLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = ((a4 & (2 * (v37 + v36))) - (v37 + v36) + a5) ^ a6;
  v39 = a7 - 1;
  *(v18 + 9) = (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v36, 61))) ^ 0xAB3042D228875C41) >> (8 * (v19 & 7u))) ^ *(v8 + v39);
  return (*(STACK[0x248] + 8 * ((235 * (v39 != 0)) ^ v17)))();
}

void sub_19697F3E0(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v7 = v4 - 4313;
  v8 = STACK[0x698];
  v9 = 1790939281 * ((((v6 - 224) | 0x4213AC91) - ((v6 - 224) & 0x4213AC91)) ^ 0xBACF8CD0);
  *(v6 - 208) = a2;
  *(v6 - 200) = v2;
  *(v6 - 224) = v7 - v9 + 1391;
  *(v6 - 220) = v9 ^ v3 ^ 0x8C311F6;
  *(v6 - 184) = a2;
  *(v6 - 188) = (v5 ^ 0x63E76BBF) + ((2 * v5) & 0xC7CED77E) + ((v7 + 323) ^ 0xBDDDF98F) + v9;
  *(v6 - 216) = v8;
  (*(a1 + 8 * (v7 + 5514)))(v6 - 224);
  JUMPOUT(0x1968E917CLL);
}

uint64_t sub_19697F52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x800]) = STACK[0x320];
  LODWORD(STACK[0x43C]) = STACK[0x330];
  LODWORD(STACK[0x48C]) = STACK[0x340];
  LODWORD(STACK[0x44C]) = v8;
  return (*(a6 + 8 * (((a8 - 5237) * (a1 == 0)) ^ (a8 - 362))))();
}

uint64_t sub_19697F5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v20 - 136) = v18;
  *(v20 - 128) = a15;
  *(v20 - 120) = (v16 + 3058) ^ (1790939281 * ((((2 * v19) | 0x991D3D84) - v19 - 1284415170) ^ 0xB452BE83));
  v21 = (*(v17 + 8 * (v16 ^ 0x190D)))(v20 - 136);
  return (*(v17 + 8 * (((((v16 ^ 0x601 ^ (v15 == 1)) & 1) == 0) * (22 * (v16 ^ 0x380) - 1468)) ^ v16)))(v21);
}

uint64_t sub_19697F78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, char a13)
{
  v17 = *(v15 + 6);
  a11 = (v13 + 605440570) ^ (998242381 * ((&a11 - 2 * (&a11 & 0xA173B145) - 1586253499) ^ 0xB1C2993));
  a13 = 77 * ((&a11 - 2 * (&a11 & 0xA173B145) + 69) ^ 0x93) + (v17 ^ 0x1F) + 2 * (v17 & 0x1F) - 10;
  v18 = (*(v14 + 8 * (v13 ^ 0x19C4)))(&a11);
  return (*(v14 + 8 * ((1045 * (a12 == v16)) ^ v13)))(v18);
}

uint64_t fp_dh_3901447bea88c77a3c3ee565d585f232(void *a1)
{
  v216 = *MEMORY[0x1E69E9840];
  v1 = a1[2];
  v2 = *a1;
  v200 = (**a1 ^ 0x7FEFBF77) - 1801984355 + ((2 * **a1) & 0xFFDF7EEE);
  v201 = (v2[1] ^ 0x7FEFBF77) - 1801984355 + ((2 * v2[1]) & 0xFFDF7EEE);
  v202 = (v2[2] ^ 0x7FEFBF77) - 1801984355 + ((2 * v2[2]) & 0xFFDF7EEE);
  v203 = (v2[3] ^ 0x7FEFBF77) - 1801984355 + ((2 * v2[3]) & 0xFFDF7EEE);
  v204 = (v2[4] ^ 0x7FEFBF77) - 1801984355 + ((2 * v2[4]) & 0xFFDF7EEE);
  v205 = (v2[5] ^ 0x7FEFBF77) - 1801984355 + ((2 * v2[5]) & 0xFFDF7EEE);
  v206 = (v2[6] ^ 0x7FEFBF77) - 1801984355 + ((2 * v2[6]) & 0xFFDF7EEE);
  v207 = (v2[7] ^ 0x7FEFBF77) - 1801984355 + ((2 * v2[7]) & 0xFFDF7EEE);
  v208 = (v2[8] ^ 0x7FEFBF77) - 1801984355 + ((2 * v2[8]) & 0xFFDF7EEE);
  v209 = (v2[9] ^ 0x7FEFBF77) - 1801984355 + ((2 * v2[9]) & 0xFFDF7EEE);
  v210 = (v2[10] ^ 0x7FEFBF77) - 1801984355 + ((2 * v2[10]) & 0xFFDF7EEE);
  v211 = (v2[11] ^ 0x7FEFBF77) - 1801984355 + ((2 * v2[11]) & 0xFFDF7EEE);
  v212 = (v2[12] ^ 0x7FEFBF77) - 1801984355 + ((2 * v2[12]) & 0xFFDF7EEE);
  v213 = (v2[13] ^ 0x7FEFBF77) - 1801984355 + ((2 * v2[13]) & 0xFFDF7EEE);
  v214 = (v2[14] ^ 0x7FEFBF77) - 1801984355 + ((2 * v2[14]) & 0xFFDF7EEE);
  v215 = (v2[15] ^ 0x7FEFBF77) - 1801984355 + ((2 * v2[15]) & 0xFFDF7EEE);
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = *v1 + v200 - 1020404157 + ((((v5 & v3 | v4 & ~v3) ^ 0x5EFD39F2) + 158329148) ^ (((v5 & v3 | v4 & ~v3) ^ 0x8E04A54) + 1601346206) ^ (((v5 & v3 | v4 & ~v3) ^ 0x561D73A6) + 26190704));
  HIDWORD(v7) = ((v6 ^ 0xA94120A8) + 23293951) ^ v6 ^ ((v6 ^ 0xE96BE6) + 13313201) ^ ((v6 ^ 0xAA061A) + 8931661) ^ ((v6 ^ 0xDFFDFD) + 16626348);
  LODWORD(v7) = ((v6 ^ 0x69242EC4) - 1056546413) ^ v6 ^ ((v6 ^ 0x5436C6B4) - 65762845) ^ ((v6 ^ 0x9530A12E) + 1024650874) ^ ((v6 ^ 0xFFFFF9F6) + 1474148001);
  v8 = v3 + 2017449828 + ((((v7 >> 25) ^ 0xFD7E421D) - 438036683) ^ (((v7 >> 25) ^ 0x3473B464) + 753525070) ^ (((v7 >> 25) ^ 0x27D5A2D2) + 1062205436));
  v9 = (v8 ^ 0x417EB790) & (2 * (v8 & 0x917E2719)) ^ v8 & 0x917E2719;
  v10 = ((2 * (v8 ^ 0x61E2FD90)) ^ 0xE139B512) & (v8 ^ 0x61E2FD90) ^ (2 * (v8 ^ 0x61E2FD90)) & 0xF09CDA88;
  v11 = v10 ^ 0x10844A89;
  v12 = (v10 ^ 0xC0189000) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0xC2736A24) & v11 ^ (4 * v11) & 0xF09CDA88;
  v14 = (v13 ^ 0xC0104A00) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x308C9089)) ^ 0x9CDA890) & (v13 ^ 0x308C9089) ^ (16 * (v13 ^ 0x308C9089)) & 0xF09CDA80;
  v16 = v14 ^ 0xF09CDA89 ^ (v15 ^ 0x8C8800) & (v14 << 8);
  v17 = v8 ^ (2 * ((v16 << 16) & 0x709C0000 ^ v16 ^ ((v16 << 16) ^ 0x5A890000) & (((v15 ^ 0xF0105209) << 8) & 0x709C0000 ^ 0x60040000 ^ (((v15 ^ 0xF0105209) << 8) ^ 0x1CDA0000) & (v15 ^ 0xF0105209))));
  v18 = v3 & (v17 ^ 0xD157920B) | v5 & ~(v17 ^ 0xD157920B);
  v19 = v4 + v201 - 1014789719 + (((v18 ^ 0x4E64B7B9) + 111797724) ^ ((v18 ^ 0x1222C177) + 1525650198) ^ ((v18 ^ 0x5C4676CE) + 344663213));
  v20 = 2 * (v19 & 0xC7EF3536);
  v21 = ((2 * (v19 ^ 0xC88CB591)) ^ 0x1EC7014E) & (v19 ^ 0xC88CB591) ^ (2 * (v19 ^ 0xC88CB591)) & 0xF6380A6;
  v22 = v21 ^ 0x12080A1;
  v23 = (v21 ^ 0xE410000) & (4 * (v20 & (v19 ^ 0xC7CEB5B5) ^ v19 & 0xC7EF3536)) ^ v20 & (v19 ^ 0xC7CEB5B5) ^ v19 & 0xC7EF3536;
  v24 = ((4 * v22) ^ 0x3D8E029C) & v22 ^ (4 * v22) & 0xF6380A4;
  v25 = (v24 ^ 0xD020080) & (16 * v23) ^ v23;
  v26 = ((16 * (v24 ^ 0x2618023)) ^ 0xF6380A70) & (v24 ^ 0x2618023) ^ (16 * (v24 ^ 0x2618023)) & 0xF6380A0;
  v27 = v20 & (v19 ^ 0xF7CEB134) ^ v19 & 0xC7EF3536;
  v28 = ((2 * (v19 ^ 0x74DAD958)) ^ 0x666BD8DC) & (v19 ^ 0x74DAD958) ^ (2 * (v19 ^ 0x74DAD958)) & 0xB335EC6E;
  v29 = (v28 ^ 0x2221C848) & (4 * v27) ^ v27;
  v30 = ((4 * (v28 ^ 0x91142422)) ^ 0xCCD7B1B8) & (v28 ^ 0x91142422) ^ (4 * (v28 ^ 0x91142422)) & 0xB335EC6C;
  v31 = (v30 ^ 0x8015A020) & (16 * v29) ^ v29;
  v32 = ((16 * (v30 ^ 0x33204C46)) ^ 0x335EC6E0) & (v30 ^ 0x33204C46) ^ (16 * (v30 ^ 0x33204C46)) & 0xB335EC60;
  v33 = v31 ^ 0xB335EC6E ^ (v32 ^ 0x3314C400) & (v31 << 8);
  v34 = (((((v25 ^ 0xF6380A7 ^ v26 & (v25 << 8)) << 16) & 0x30000 ^ v25 ^ 0xF6380A7 ^ v26 & (v25 << 8) ^ (((v25 ^ 0xF6380A7 ^ v26 & (v25 << 8)) << 16) ^ 0x70000) & (((v26 << 8) ^ 0x8700) & (v26 ^ 0x8087) ^ 0x30000)) << 13) ^ (v19 << 12)) & 0xFFFFF000 | ((v19 ^ (2 * ((v33 << 16) & 0x33333333 ^ v33 ^ ((v33 << 16) ^ 0x6C680000) & (((v32 ^ 0x8021280E) << 8) & 0x33350000 ^ 0x2100000 ^ (((v32 ^ 0x8021280E) << 8) ^ 0x35EC0000) & (v32 ^ 0x8021280E))))) >> 20);
  v35 = (((v17 ^ 0xD359D436) - 902108624) ^ ((v17 ^ 0x2D192CB9) + 880415393) ^ ((v17 ^ 0x2F176A84) + 913593502)) - 1611020951 + (((v34 ^ 0x649B55AB) + 1287156786) ^ ((v34 ^ 0x82290B76) - 1442174227) ^ ((v34 ^ 0x5F5D0C1) + 769061212));
  v36 = (v35 ^ 0xCC6ADEF8) & (2 * (v35 & 0xCC6CDEFD)) ^ v35 & 0xCC6CDEFD;
  v37 = ((2 * (v35 ^ 0x54B35FA8)) ^ 0x31BF02AA) & (v35 ^ 0x54B35FA8) ^ (2 * (v35 ^ 0x54B35FA8)) & 0x98DF8154;
  v38 = v37 ^ 0x88408155;
  v39 = (v37 ^ 0x98970001) & (4 * v36) ^ v36;
  v40 = ((4 * v38) ^ 0x637E0554) & v38 ^ (4 * v38) & 0x98DF8154;
  v41 = (v40 ^ 0x5E0150) & (16 * v39) ^ v39;
  v42 = ((16 * (v40 ^ 0x98818001)) ^ 0x8DF81550) & (v40 ^ 0x98818001) ^ (16 * (v40 ^ 0x98818001)) & 0x98DF8150;
  v43 = v41 ^ 0x98DF8155 ^ (v42 ^ 0x88D80100) & (v41 << 8);
  v44 = v35 ^ (2 * ((v43 << 16) & 0x18DF0000 ^ v43 ^ ((v43 << 16) ^ 0x1550000) & (((v42 ^ 0x10078005) << 8) & 0x18DF0000 ^ 0x5E0000 ^ (((v42 ^ 0x10078005) << 8) ^ 0x5F810000) & (v42 ^ 0x10078005))));
  v45 = (v17 ^ v3) & 0xC71C8ABC ^ v3 ^ (v44 ^ 0x3A6556EB) & (v17 ^ v3 ^ 0xD157920B);
  v46 = v5 + v202 - 408452574 + (((v45 ^ 0x23C37EBB) - 1954499886) ^ ((v45 ^ 0xBBCA5136) + 327785821) ^ ((v45 ^ 0x591DAD85) - 245472784));
  v47 = 2 * (v46 & 0xBE99FA42);
  v48 = ((2 * (v46 ^ 0xA35E3F59)) ^ 0x3B8F8A36) & (v46 ^ 0xA35E3F59) ^ (2 * (v46 ^ 0xA35E3F59)) & 0x1DC7C51A;
  v49 = v48 ^ 0x4404509;
  v50 = (v48 ^ 0x18878010) & (4 * (v47 & (v46 ^ 0xBE5DFB59) ^ v46 & 0xBE99FA42)) ^ v47 & (v46 ^ 0xBE5DFB59) ^ v46 & 0xBE99FA42;
  v51 = ((4 * v49) ^ 0x771F146C) & v49 ^ (4 * v49) & 0x1DC7C518;
  v52 = v50 ^ 0x1DC7C51B ^ (v51 ^ 0x15070400) & (16 * v50);
  v53 = v47 & (v46 ^ 0x3C95F202) ^ v46 & 0xBE99FA42;
  v54 = ((2 * (v46 ^ 0x24B63202)) ^ 0x345F9080) & (v46 ^ 0x24B63202) ^ (2 * (v46 ^ 0x24B63202)) & 0x9A2FC840;
  v55 = (v54 ^ 0x100F8000) & (4 * v53) ^ v53;
  v56 = ((4 * (v54 ^ 0x8A204840)) ^ 0x68BF2100) & (v54 ^ 0x8A204840) ^ (4 * (v54 ^ 0x8A204840)) & 0x9A2FC840;
  v57 = (v56 ^ 0x82F0000) & (16 * v55) ^ v55;
  v58 = ((16 * (v56 ^ 0x9200C840)) ^ 0xA2FC8400) & (v56 ^ 0x9200C840) ^ (16 * (v56 ^ 0x9200C840)) & 0x9A2FC840;
  v59 = v57 ^ 0x9A2FC840 ^ (v58 ^ 0x822C8000) & (v57 << 8);
  v60 = ((((v52 << 8) & 0x500 ^ v52 ^ ((v52 << 8) ^ 0x1B00) & ((16 * (v51 ^ 0x8C0C113)) & 0x1DC7C500 ^ ((16 * (v51 ^ 0x8C0C113)) ^ 0x1100) & (v51 ^ 0x8C0C113) ^ 0x400)) << 18) ^ (v46 << 17)) & 0xFFFE0000 | ((v46 ^ (2 * ((v59 << 16) & 0x1A2F0000 ^ v59 ^ ((v59 << 16) ^ 0x48400000) & (((v58 ^ 0x18034840) << 8) & 0x1A2F0000 ^ 0x10270000 ^ (((v58 ^ 0x18034840) << 8) ^ 0x2FC80000) & (v58 ^ 0x18034840))))) >> 15);
  v61 = (((v44 ^ 0xF1052D0C) + 1098087328) ^ ((v44 ^ 0xC0FD6DBB) + 1888172841) ^ ((v44 ^ 0xCC819CE0) + 2096614004)) + 1246022322 + (((v60 ^ 0x81FDD81) + 258370300) ^ ((v60 ^ 0x84CF3623) - 2085191334) ^ ((v60 ^ 0x6839DE2E) + 1866492245));
  v62 = (v61 ^ 0x141337CA) & (2 * (v61 & 0x851B2792)) ^ v61 & 0x851B2792;
  v63 = ((2 * (v61 ^ 0x162573EE)) ^ 0x267CA8F8) & (v61 ^ 0x162573EE) ^ (2 * (v61 ^ 0x162573EE)) & 0x933E547C;
  v64 = v63 ^ 0x91025404;
  v65 = (v63 ^ 0x3C0058) & (4 * v62) ^ v62;
  v66 = ((4 * v64) ^ 0x4CF951F0) & v64 ^ (4 * v64) & 0x933E547C;
  v67 = (v66 ^ 0x385060) & (16 * v65) ^ v65;
  v68 = ((16 * (v66 ^ 0x9306040C)) ^ 0x33E547C0) & (v66 ^ 0x9306040C) ^ (16 * (v66 ^ 0x9306040C)) & 0x933E5470;
  v69 = v67 ^ 0x933E547C ^ (v68 ^ 0x13244400) & (v67 << 8);
  v70 = v61 ^ (2 * ((v69 << 16) & 0x133E0000 ^ v69 ^ ((v69 << 16) ^ 0x547C0000) & (((v68 ^ 0x801A103C) << 8) & 0x133E0000 ^ 0x12A0000 ^ (((v68 ^ 0x801A103C) << 8) ^ 0x3E540000) & (v68 ^ 0x801A103C))));
  v71 = (v44 ^ 0x4F89A96C ^ v17 ^ 0xE69CC1E6) & 0x76676321 ^ v17 ^ 0xE69CC1E6 ^ (v70 ^ 0xF578EC4B) & (v44 ^ 0x4F89A96C ^ v17 ^ 0xE69CC1E6 ^ 0x853B26D6);
  v72 = v3 + v203 + (((v71 ^ 0x75B1782) + 31298352) ^ ((v71 ^ 0x1E25678B) + 413393703) ^ ((v71 ^ 0x2A9601E4) + 739280202));
  v73 = v72 - 1965423044;
  v74 = (v73 ^ 0xEEC80C59) & (2 * (v73 & 0xECED2D5D)) ^ v73 & 0xECED2D5D;
  v75 = ((2 * (v73 ^ 0x6FD81649)) ^ 0x66A7628) & (v73 ^ 0x6FD81649) ^ (2 * (v73 ^ 0x6FD81649)) & 0x83353B14;
  v76 = v75 ^ 0x81150914;
  v77 = (v75 ^ 0x2203200) & (4 * v74) ^ v74;
  v78 = ((4 * v76) ^ 0xCD4EC50) & v76 ^ (4 * v76) & 0x83353B14;
  v79 = (v78 ^ 0x142810) & (16 * v77) ^ v77;
  v80 = ((16 * (v78 ^ 0x83211304)) ^ 0x3353B140) & (v78 ^ 0x83211304) ^ (16 * (v78 ^ 0x83211304)) & 0x83353B10;
  v81 = v79 ^ 0x83353B14 ^ (v80 ^ 0x3113100) & (v79 << 8);
  HIDWORD(v7) = (v72 - 1965423044) ^ (-586549145 - v72) ^ (((v72 - 1965423044) ^ 0x198) + 197) ^ (((v72 - 1965423044) ^ 0x25D) + 770) ^ (((v72 - 1965423044) ^ 0x299) + 966);
  LODWORD(v7) = (v72 - 1965423044) ^ (2 * ((v81 << 16) & 0x3350000 ^ v81 ^ ((v81 << 16) ^ 0x3B140000) & (((v80 ^ 0x80240A14) << 8) & 0x3350000 ^ 0x2040000 ^ (((v80 ^ 0x80240A14) << 8) ^ 0x353B0000) & (v80 ^ 0x80240A14))));
  v82 = (((v70 ^ 0xDAECEF14) + 1834648405) ^ ((v70 ^ 0x9A5B2D87) + 770523592) ^ ((v70 ^ 0xC3A84DF9) + 1948131770)) - 149504927 + ((((v7 >> 10) ^ 0xDA7654F3) + 1320176837) ^ (((v7 >> 10) ^ 0x2BF96F6C) - 1086359716) ^ (((v7 >> 10) ^ 0x59741049) - 843970433));
  v83 = ((v82 ^ 0xA8D192E9) + 819183225) ^ v82 ^ ((v82 ^ 0x23E3A15) - 1707338107) ^ ((v82 ^ 0x72EDC06D) - 353374979) ^ ((v82 ^ 0xBFFFBBFF) + 670930799);
  v84 = (v70 ^ 0x484993BF ^ v44 ^ 0x4F89A96C) & 0x21C5C10E ^ v44 ^ 0x4F89A96C ^ (v83 ^ 0x46381260) & (v70 ^ 0x484993BF ^ v44 ^ 0x4F89A96C ^ 0x79A669EE);
  v85 = v204 + (((v17 ^ 0xC2D1516B) - 609063053) ^ ((v17 ^ 0x2C587F63) + 893075835) ^ ((v17 ^ 0x3FDEBC03) + 649953819)) + 1309036355 + (((v84 ^ 0xFFD09C3B) + 1147764462) ^ ((v84 ^ 0x6DF56C56) - 699625855) ^ ((v84 ^ 0x151C458) - 1159190897));
  v86 = (v85 ^ 0xA9E3C671) & (2 * (v85 & 0xA1EB9761)) ^ v85 & 0xA1EB9761;
  v87 = ((2 * (v85 ^ 0xEA70C271)) ^ 0x9736AA20) & (v85 ^ 0xEA70C271) ^ (2 * (v85 ^ 0xEA70C271)) & 0x4B9B5510;
  v88 = (v87 ^ 0x3120000) & (4 * v86) ^ v86;
  v89 = ((4 * (v87 ^ 0x48895510)) ^ 0x2E6D5440) & (v87 ^ 0x48895510) ^ (4 * (v87 ^ 0x48895510)) & 0x4B9B5510;
  v90 = (v89 ^ 0xA095400) & (16 * v88) ^ v88;
  v91 = ((16 * (v89 ^ 0x41920110)) ^ 0xB9B55100) & (v89 ^ 0x41920110) ^ (16 * (v89 ^ 0x41920110)) & 0x4B9B5510;
  v92 = v90 ^ 0x4B9B5510 ^ (v91 ^ 0x9915100) & (v90 << 8);
  HIDWORD(v7) = ((v85 ^ 0xABB66E1) + 22081922) ^ v85 ^ ((v85 ^ 0x51F64C) + 28991789) ^ ((v85 ^ 0x111054D) + 16421422) ^ ((v85 ^ 0x1EFFD7F) + 289312);
  LODWORD(v7) = v85 ^ (2 * ((v92 << 16) & 0x4B000000 ^ v92 ^ ((v92 << 16) ^ 0x55555555) & (((v91 ^ 0x420A0410) << 8) & 0x4B9B0000 ^ (((v91 ^ 0x420A0410) << 8) ^ 0x1B550000) & (v91 ^ 0x420A0410) ^ 0xC0FFFFFF)));
  v93 = (((v83 ^ 0xF0235E82) + 660683336) ^ ((v83 ^ 0xFE1981ED) + 693888297) ^ ((v83 ^ 0x69C70C01) - 1098553147)) + 2038843985 + ((((v7 >> 25) ^ 0x45E2B0B3) - 1469315590) ^ (((v7 >> 25) ^ 0x323977FB) - 541605198) ^ (((v7 >> 25) ^ 0x7DEF8892) - 1872675367));
  v94 = (v93 ^ 0xC9FFA360) & (2 * (v93 & 0xEDFF0372)) ^ v93 & 0xEDFF0372;
  v95 = ((2 * (v93 ^ 0x40F9A560)) ^ 0x5A0D4C24) & (v93 ^ 0x40F9A560) ^ (2 * (v93 ^ 0x40F9A560)) & 0xAD06A612;
  v96 = v95 ^ 0xA502A212;
  v97 = (v95 ^ 0x8040400) & (4 * v94) ^ v94;
  v98 = ((4 * v96) ^ 0xB41A9848) & v96 ^ (4 * v96) & 0xAD06A610;
  v99 = (v98 ^ 0xA4028000) & (16 * v97) ^ v97;
  v100 = ((16 * (v98 ^ 0x9042612)) ^ 0xD06A6120) & (v98 ^ 0x9042612) ^ (16 * (v98 ^ 0x9042612)) & 0xAD06A610;
  v101 = v99 ^ 0xAD06A612 ^ (v100 ^ 0x80022000) & (v99 << 8);
  v102 = v93 ^ (2 * ((v101 << 16) & 0x2D060000 ^ v101 ^ ((v101 << 16) ^ 0x26120000) & (((v100 ^ 0x2D048612) << 8) & 0x2D060000 ^ 0x29000000 ^ (((v100 ^ 0x2D048612) << 8) ^ 0x6A60000) & (v100 ^ 0x2D048612))));
  v103 = (v83 ^ 0x28BD9B3A ^ v70 ^ 0x484993BF) & 0x2E12A2FA ^ v70 ^ 0x484993BF ^ (v102 ^ 0xD1E4EDAC) & (v83 ^ 0x28BD9B3A ^ v70 ^ 0x484993BF ^ 0x84165481);
  v104 = v205 + (((v44 ^ 0x9EB07044) + 784738008) ^ ((v44 ^ 0x510640E0) - 512747916) ^ ((v44 ^ 0x32CFECF3) - 2101757343)) + 2089609948 + (((v103 ^ 0xDC8C9CBD) - 1608098881) ^ ((v103 ^ 0x60B7073A) + 471711802) ^ ((v103 ^ 0x737F87D2) + 265634002));
  HIDWORD(v7) = ((v104 ^ 0xCB785C78) + 824166) ^ v104 ^ ((v104 ^ 0xFCCDA) + 721864) ^ ((v104 ^ 0x3579F) + 497795) ^ ((v104 ^ 0xFF7DF) + 735427);
  LODWORD(v7) = ((v104 ^ 0xA51D3CEB) + 275379191) ^ v104 ^ ((v104 ^ 0xD1735012) + 1678221072) ^ ((v104 ^ 0x431AB784) - 160532326) ^ ((v104 ^ 0x7DFFEB9F) - 930405245);
  v105 = (((v102 ^ 0x2F2DEAAD) - 430879739) ^ ((v102 ^ 0x473EE7E) - 854636328) ^ ((v102 ^ 0xD4A84B85) + 500493613)) + 137387351 + ((((v7 >> 20) ^ 0x145A8135) - 1488645200) ^ (((v7 >> 20) ^ 0xA533636E) + 372044277) ^ (((v7 >> 20) ^ 0x267C6F3) - 1317514134));
  v106 = ((v105 ^ 0xEBDBE41A) + 719906416) ^ v105 ^ ((v105 ^ 0xA4BC6AC6) + 1703897268) ^ ((v105 ^ 0x8E548D89) + 1332187133) ^ ((v105 ^ 0xFFFFFEDF) + 1053621419);
  v107 = (v102 ^ 0x36835956 ^ v83 ^ 0x28BD9B3A) & 0x85A27F6E ^ v83 ^ 0x28BD9B3A ^ (v106 ^ 0xBB6E82E4) & (v102 ^ 0x36835956 ^ v83 ^ 0x28BD9B3A ^ 0x86355E54);
  v108 = v206 + (((v70 ^ 0xFB3867F) - 1207571904) ^ ((v70 ^ 0x669FCC2B) - 785801108) ^ ((v70 ^ 0xEA33C53E) + 1569040767)) + 1412112153 + (((v107 ^ 0x2E7E46F2) - 1393798422) ^ ((v107 ^ 0x7B3D6AE6) - 105939202) ^ ((v107 ^ 0x9E233A04) + 481373728));
  v109 = (v108 ^ 0xFCED130F) & (2 * (v108 & 0xC0E19BAF)) ^ v108 & 0xC0E19BAF;
  v110 = ((2 * (v108 ^ 0xFD2C3215)) ^ 0x7B9B5374) & (v108 ^ 0xFD2C3215) ^ (2 * (v108 ^ 0xFD2C3215)) & 0x3DCDA9BA;
  v111 = (v110 ^ 0x1880130) & (4 * v109) ^ v109;
  v112 = ((4 * (v110 ^ 0x444A88A)) ^ 0xF736A6E8) & (v110 ^ 0x444A88A) ^ (4 * (v110 ^ 0x444A88A)) & 0x3DCDA9B8;
  v113 = (v112 ^ 0x3504A0A0) & (16 * v111) ^ v111;
  v114 = ((16 * (v112 ^ 0x8C90912)) ^ 0xDCDA9BA0) & (v112 ^ 0x8C90912) ^ (16 * (v112 ^ 0x8C90912)) & 0x3DCDA9B0;
  v115 = v113 ^ 0x3DCDA9BA ^ (v114 ^ 0x1CC88900) & (v113 << 8);
  HIDWORD(v7) = ((v108 ^ 0x10066D39) + 30360) ^ v108 ^ ((v108 ^ 0x31E7) + 10826) ^ ((v108 ^ 0x46F1) + 23904) ^ ((v108 ^ 0x7E7E7E7E) + 26065);
  LODWORD(v7) = v108 ^ (2 * ((v115 << 16) & 0x3DCD0000 ^ v115 ^ ((v115 << 16) ^ 0x29BA0000) & (((v114 ^ 0x2105201A) << 8) & 0x3DCD0000 ^ 0x30440000 ^ (((v114 ^ 0x2105201A) << 8) ^ 0x4DA90000) & (v114 ^ 0x2105201A))));
  v116 = (((v106 ^ 0x3EB1C11C) + 1586579356) ^ ((v106 ^ 0xE2A87725) - 2104954461) ^ ((v106 ^ 0xE2D54BB3) - 2097820363)) - 855943380 + ((((v7 >> 15) ^ 0x6D3B3B5A) - 149614917) ^ (((v7 >> 15) ^ 0x50EEB5B6) - 893353897) ^ (((v7 >> 15) ^ 0xF5765E39) + 1868065754));
  v117 = ((v116 ^ 0xFE756E05) + 2147427979) ^ v116 ^ ((v116 ^ 0xFEB11336) + 2134596538) ^ ((v116 ^ 0xA14E35BA) + 549748022) ^ ((v116 ^ 0xDFFFFFF9) + 1584772983);
  v118 = v117 ^ 0xC6383999;
  HIDWORD(v7) = v207 + (v83 ^ 0x67FDD36E) - 390140179 + (v102 ^ (v106 ^ 0x9FDF7978 ^ v102 ^ 0x36835956) & 0x3D89D922 ^ 0xD7F6DF74 ^ (v117 ^ 0x43FC6E52) & (v106 ^ 0x9FDF7978 ^ v102 ^ 0x36835956 ^ 0x686692F2));
  LODWORD(v7) = HIDWORD(v7);
  v119 = v117 ^ 0x7E75B770;
  v120 = (v7 >> 10) + (v117 ^ 0x7E75B770);
  HIDWORD(v7) = v208 + (v102 ^ 0xFFF64F56) + 1425601220 + (((v120 & (v106 ^ 0x40B94AFA ^ v117)) - ((2 * (v120 & (v106 ^ 0x40B94AFA ^ v117))) & 0x422709E4) - 1592556302) ^ v106 ^ 0x9FDF7978);
  LODWORD(v7) = HIDWORD(v7);
  v121 = (v7 >> 25) + v120;
  v122 = v121 & ((v120 - ((2 * v120) & 0x709B1DD2) - 1202876695) ^ v118);
  HIDWORD(v7) = v209 + (v106 ^ 0x3ECCFD8A) + 1992118683 + ((v122 - ((2 * v122) & 0x709B1DD2) - 1202876695) ^ v118);
  LODWORD(v7) = HIDWORD(v7);
  v123 = (v7 >> 20) + v121;
  HIDWORD(v7) = v210 + v119 - 344476259 + (v121 & v123 | v120 & ~v123);
  LODWORD(v7) = HIDWORD(v7);
  v124 = (v7 >> 15) + v123;
  HIDWORD(v7) = v211 + v120 + 1960128938 + (v123 & v124 | v121 & ~v124);
  LODWORD(v7) = HIDWORD(v7);
  v125 = (v7 >> 10) + v124;
  HIDWORD(v7) = v212 + v121 + 1460169486 + (v124 & v125 | v123 & ~v125);
  LODWORD(v7) = HIDWORD(v7);
  v126 = (v7 >> 25) + v125;
  HIDWORD(v7) = v213 + v123 - 384775297 + (v125 & v126 | v124 & ~v126);
  LODWORD(v7) = HIDWORD(v7);
  v127 = (v7 >> 20) + v126;
  HIDWORD(v7) = v214 + v124 - 1846436486 + (v126 & v127 | v125 & ~v127);
  LODWORD(v7) = HIDWORD(v7);
  v128 = (v7 >> 15) + v127;
  HIDWORD(v7) = v215 + v125 + 892101133 + (v127 & v128 | v126 & ~v128);
  LODWORD(v7) = HIDWORD(v7);
  v129 = (v7 >> 10) + v128;
  HIDWORD(v7) = v201 + v126 - 510230706 + (v129 & v127 | v128 & ~v127);
  LODWORD(v7) = HIDWORD(v7);
  v130 = (v7 >> 27) + v129;
  HIDWORD(v7) = v206 + v127 - 1413935828 + (v130 & v128 | v129 & ~v128);
  LODWORD(v7) = HIDWORD(v7);
  v131 = (v7 >> 23) + v130;
  HIDWORD(v7) = v211 + v128 + 299283517 + (v131 & v129 | v130 & ~v129);
  LODWORD(v7) = HIDWORD(v7);
  v132 = (v7 >> 18) + v131;
  HIDWORD(v7) = v200 + v129 - 718331498 + (v132 & v130 | v131 & ~v130);
  LODWORD(v7) = HIDWORD(v7);
  v133 = (v7 >> 12) + v132;
  HIDWORD(v7) = v205 + v130 - 1045992887 + (v133 & v131 | v132 & ~v131);
  LODWORD(v7) = HIDWORD(v7);
  v134 = (v7 >> 27) + v133;
  HIDWORD(v7) = v210 + v131 - 306418113 + (v134 & v132 | v133 & ~v132);
  LODWORD(v7) = HIDWORD(v7);
  v135 = (v7 >> 23) + v134;
  HIDWORD(v7) = v215 + v132 - 1004912531 + (v135 & v133 | v134 & ~v133);
  LODWORD(v7) = HIDWORD(v7);
  v136 = (v7 >> 18) + v135;
  HIDWORD(v7) = v204 + v133 - 749972044 + (v136 & v134 | v135 & ~v134);
  LODWORD(v7) = HIDWORD(v7);
  LODWORD(v2) = (v7 >> 12) + v136;
  HIDWORD(v7) = v209 + v134 + 224012242 + (v2 & v135 | v136 & ~v135);
  LODWORD(v7) = HIDWORD(v7);
  v137 = (v7 >> 27) + v2;
  HIDWORD(v7) = v214 + v135 - 1364237886 + (v137 & v136 | v2 & ~v136);
  LODWORD(v7) = HIDWORD(v7);
  v138 = (v7 >> 23) + v137;
  HIDWORD(v7) = v203 + v136 - 531798157 + (v138 & v2 | v137 & ~v2);
  LODWORD(v7) = HIDWORD(v7);
  v139 = (v7 >> 18) + v138;
  HIDWORD(v7) = v208 + v2 + 819097305 + (v139 & v137 | v138 & ~v137);
  LODWORD(v7) = HIDWORD(v7);
  v140 = (v7 >> 12) + v139;
  HIDWORD(v7) = v213 + v137 - 1789115663 + (v140 & v138 | v139 & ~v138);
  LODWORD(v7) = HIDWORD(v7);
  v141 = (v7 >> 27) + v140;
  HIDWORD(v7) = v202 + v138 - 395837980 + (v141 & v139 | v140 & ~v139);
  LODWORD(v7) = HIDWORD(v7);
  v142 = (v7 >> 23) + v141;
  HIDWORD(v7) = v207 + v139 + 1390894277 + (v142 & v140 | v141 & ~v140);
  LODWORD(v7) = HIDWORD(v7);
  v143 = (v7 >> 18) + v142;
  HIDWORD(v7) = v212 + v140 + 2023925366 + ((v143 ^ v142) & v141 ^ v142);
  LODWORD(v7) = HIDWORD(v7);
  LODWORD(v2) = *(&v200 + (v141 & 0xF));
  v144 = (v7 >> 12) + v143;
  *(&v200 + (v141 & 0xF)) = *(&v200 + (v144 & 0xF));
  *(&v200 + (v144 & 0xF)) = *(&v200 + (v143 & 0xF));
  *(&v200 + (v143 & 0xF)) = *(&v200 + (v142 & 0xF));
  *(&v200 + (v142 & 0xF)) = *(&v200 + (v141 >> 4));
  *(&v200 + (v141 >> 4)) = *(&v200 + (v144 >> 4));
  *(&v200 + (v144 >> 4)) = *(&v200 + (v143 >> 4));
  *(&v200 + (v143 >> 4)) = *(&v200 + (v142 >> 4));
  *(&v200 + (v142 >> 4)) = v2;
  HIDWORD(v7) = v205 + v141 - 344812754 + (v144 ^ v143 ^ v142);
  LODWORD(v7) = HIDWORD(v7);
  LODWORD(v2) = (v7 >> 28) + v144;
  HIDWORD(v7) = v208 + v142 + 1927958637 + (v2 ^ v144 ^ v143);
  LODWORD(v7) = HIDWORD(v7);
  v145 = (v7 >> 21) + v2;
  HIDWORD(v7) = v211 + v143 + 1494596366 + (v2 ^ v144 ^ v145);
  LODWORD(v7) = HIDWORD(v7);
  v146 = (v7 >> 16) + v145;
  HIDWORD(v7) = v214 + v144 - 379743752 + (v145 ^ v2 ^ v146);
  LODWORD(v7) = HIDWORD(v7);
  v147 = (v7 >> 9) + v146;
  HIDWORD(v7) = v201 + v2 - 1875426256 + (v146 ^ v145 ^ v147);
  LODWORD(v7) = HIDWORD(v7);
  v148 = (v7 >> 28) + v147;
  HIDWORD(v7) = v204 + v145 + 928459157 + (v147 ^ v146 ^ v148);
  LODWORD(v7) = HIDWORD(v7);
  v149 = (v7 >> 21) + v148;
  HIDWORD(v7) = v207 + v146 - 499931828 + (v148 ^ v147 ^ v149);
  LODWORD(v7) = HIDWORD(v7);
  v150 = (v7 >> 16) + v149;
  HIDWORD(v7) = v210 + v147 - 1439164836 + (v149 ^ v148 ^ v150);
  LODWORD(v7) = HIDWORD(v7);
  v151 = (v7 >> 9) + v150;
  HIDWORD(v7) = v213 + v148 + 336844978 + (v150 ^ v149 ^ v151);
  LODWORD(v7) = HIDWORD(v7);
  v152 = (v7 >> 28) + v151;
  HIDWORD(v7) = v200 + v149 - 702971418 + (v151 ^ v150 ^ v152);
  LODWORD(v7) = HIDWORD(v7);
  v153 = (v7 >> 21) + v152;
  HIDWORD(v7) = v203 + v150 - 1066956175 + (v152 ^ v151 ^ v153);
  LODWORD(v7) = HIDWORD(v7);
  v154 = (v7 >> 16) + v153;
  HIDWORD(v7) = v206 + v151 - 268405007 + (v153 ^ v152 ^ v154);
  LODWORD(v7) = HIDWORD(v7);
  v155 = (v7 >> 9) + v154;
  HIDWORD(v7) = v209 + v152 - 984798683 + (v154 ^ v153 ^ v155);
  LODWORD(v7) = HIDWORD(v7);
  v156 = (v7 >> 28) + v155;
  HIDWORD(v7) = v212 + v153 - 766250031 + (v155 ^ v154 ^ v156);
  LODWORD(v7) = HIDWORD(v7);
  v157 = (v7 >> 21) + v156;
  HIDWORD(v7) = v215 + v154 + 186308324 + (v156 ^ v155 ^ v157);
  LODWORD(v7) = HIDWORD(v7);
  v158 = (v7 >> 16) + v157;
  HIDWORD(v7) = v202 + v155 - 1339772847 + (v157 ^ v156 ^ v158);
  LODWORD(v7) = HIDWORD(v7);
  v159 = (v7 >> 9) + v158;
  HIDWORD(v7) = v200 + v156 - 543065040 + ((v159 | ~v157) ^ v158);
  LODWORD(v7) = HIDWORD(v7);
  v160 = (v7 >> 26) + v159;
  HIDWORD(v7) = v207 + v157 + 782457219 + ((v160 | ~v158) ^ v159);
  LODWORD(v7) = HIDWORD(v7);
  v161 = (v7 >> 22) + v160;
  HIDWORD(v7) = v214 + v158 - 1760789101 + ((v161 | ~v159) ^ v160);
  LODWORD(v7) = HIDWORD(v7);
  v162 = (v7 >> 17) + v161;
  HIDWORD(v7) = v205 + v159 - 401868251 + ((v162 | ~v160) ^ v161);
  LODWORD(v7) = HIDWORD(v7);
  v163 = (v7 >> 11) + v162;
  HIDWORD(v7) = v212 + v160 + 1356051375 + ((v163 | ~v161) ^ v162);
  LODWORD(v7) = HIDWORD(v7);
  v164 = (v7 >> 26) + v163;
  HIDWORD(v7) = v203 + v161 + 2055546494 + ((v164 | ~v162) ^ v163);
  LODWORD(v7) = HIDWORD(v7);
  v165 = (v7 >> 22) + v164;
  HIDWORD(v7) = v210 + v162 - 345485719 + ((v165 | ~v163) ^ v164);
  LODWORD(v7) = HIDWORD(v7);
  v166 = (v7 >> 17) + v165;
  HIDWORD(v7) = v201 + v163 + 1895610301 + ((v166 | ~v164) ^ v165);
  LODWORD(v7) = HIDWORD(v7);
  v167 = (v7 >> 11) + v166;
  HIDWORD(v7) = v208 + v164 + 1528879163 + ((v167 | ~v165) ^ v166);
  LODWORD(v7) = HIDWORD(v7);
  v168 = (v7 >> 26) + v167;
  HIDWORD(v7) = v215 + v165 - 375045940 + ((v168 | ~v166) ^ v167);
  LODWORD(v7) = HIDWORD(v7);
  v169 = (v7 >> 22) + v168;
  HIDWORD(v7) = v206 + v166 - 1904632576 + ((v169 | ~v167) ^ v168);
  LODWORD(v7) = HIDWORD(v7);
  v170 = (v7 >> 17) + v169;
  HIDWORD(v7) = v213 + v167 + 964717453 + ((v170 | ~v168) ^ v169);
  LODWORD(v7) = HIDWORD(v7);
  v171 = (v7 >> 11) + v170;
  HIDWORD(v7) = v204 + v168 - 489957266 + ((v171 | ~v169) ^ v170);
  LODWORD(v7) = HIDWORD(v7);
  v172 = v171 + ((v7 >> 26) ^ 0xFEFD47FF) + ((2 * (v7 >> 26)) & 0xFDFA8FFE) + 1308605936;
  v173 = ((v172 ^ 0x1A36760A) - 1456174053) ^ v172 ^ ((v172 ^ 0x3FC0C8F6) - 1933430041) ^ ((v172 ^ 0x15F642EC) - 1493911299) ^ ((v172 ^ 0x7CFDF9FF) - 805370896);
  HIDWORD(v7) = v211 + v169 - 1464644575 + ((v171 - ((2 * v171) & 0x114A5534) + 145042074) ^ 0xF75AD565 ^ (v173 ^ 0xB302FA10) & v170);
  LODWORD(v7) = HIDWORD(v7);
  v174 = (((v173 ^ 0x38A5F4D6) + 1339251990) ^ ((v173 ^ 0x464A3C32) + 826054130) ^ ((v173 ^ 0x3212CD0B) + 1164207305)) + 553232047 + (v7 >> 22);
  LODWORD(v2) = 2 * (v174 & 0xA37AAD24);
  v175 = ((2 * (v174 ^ 0x28C9F242)) ^ 0x1766BECC) & (v174 ^ 0x28C9F242) ^ (2 * (v174 ^ 0x28C9F242)) & 0x8BB35F66;
  v176 = v175 ^ 0x88914122;
  v177 = (v175 ^ 0x3221C00) & (4 * (v2 & (v174 ^ 0x2A78A802) ^ v174 & 0xA37AAD24)) ^ v2 & (v174 ^ 0x2A78A802) ^ v174 & 0xA37AAD24;
  v178 = ((4 * v176) ^ 0x2ECD7D98) & v176 ^ (4 * v176) & 0x8BB35F64;
  v179 = (v178 ^ 0xA815D00) & (16 * v177) ^ v177;
  v180 = ((16 * (v178 ^ 0x81320266)) ^ 0xBB35F660) & (v178 ^ 0x81320266) ^ (16 * (v178 ^ 0x81320266)) & 0x8BB35F60;
  v181 = v179 ^ 0x8BB35F66 ^ (v180 ^ 0x8B315600) & (v179 << 8);
  v182 = (v174 ^ (2 * ((v181 << 16) & 0xBB30000 ^ v181 ^ ((v181 << 16) ^ 0x5F660000) & (((v180 ^ 0x820906) << 8) & 0xBB30000 ^ 0x8A00000 ^ (((v180 ^ 0x820906) << 8) ^ 0x335F0000) & (v180 ^ 0x820906)))) ^ 0x5DA7EC17) & v171 ^ v173;
  HIDWORD(v7) = v202 + v170 - 598935287 + (((v182 ^ 0x9AEDC59E) + 334236692) ^ ((v182 ^ 0xEF236435) + 1713548729) ^ ((v182 ^ 0xC6CC5BBB) + 1338872375));
  LODWORD(v7) = HIDWORD(v7);
  v183 = v174 + 1578710765 + (v7 >> 17);
  v184 = (v183 ^ 0x547964A6) & (2 * (v183 & 0x45617637)) ^ v183 & 0x45617637;
  v185 = ((2 * (v183 ^ 0x5E392CCC)) ^ 0x36B0B5F6) & (v183 ^ 0x5E392CCC) ^ (2 * (v183 ^ 0x5E392CCC)) & 0x1B585AFA;
  v186 = v185 ^ 0x9484A09;
  v187 = (v185 ^ 0x120010F0) & (4 * v184) ^ v184;
  v188 = ((4 * v186) ^ 0x6D616BEC) & v186 ^ (4 * v186) & 0x1B585AF8;
  v189 = (v188 ^ 0x9404AE0) & (16 * v187) ^ v187;
  v190 = ((16 * (v188 ^ 0x12181013)) ^ 0xB585AFB0) & (v188 ^ 0x12181013) ^ (16 * (v188 ^ 0x12181013)) & 0x1B585AF0;
  v191 = v189 ^ 0x1B585AFB ^ (v190 ^ 0x11000A00) & (v189 << 8);
  v192 = v183 ^ (2 * ((v191 << 16) & 0x1B580000 ^ v191 ^ ((v191 << 16) ^ 0x5AFB0000) & (((v190 ^ 0xA58504B) << 8) & 0x1B580000 ^ (((v190 ^ 0xA58504B) << 8) ^ 0x585A0000) & (v190 ^ 0xA58504B) ^ 0x3000000)));
  v193 = v2 & (v174 ^ 0x93780926) ^ v174 & 0xA37AAD24;
  LODWORD(v2) = ((2 * (v174 ^ 0xD1BC412E)) ^ 0xE58DD814) & (v174 ^ 0xD1BC412E) ^ (2 * (v174 ^ 0xD1BC412E)) & 0x72C6EC0A;
  v194 = (v2 ^ 0x84C800) & (4 * v193) ^ v193;
  LODWORD(v2) = ((4 * (v2 ^ 0x1242240A)) ^ 0xCB1BB028) & (v2 ^ 0x1242240A) ^ (4 * (v2 ^ 0x1242240A)) & 0x72C6EC08;
  v195 = (v2 ^ 0x4202A000) & (16 * v194) ^ v194;
  LODWORD(v2) = ((16 * (v2 ^ 0x30C44C02)) ^ 0x2C6EC0A0) & (v2 ^ 0x30C44C02) ^ (16 * (v2 ^ 0x30C44C02)) & 0x72C6EC00;
  v196 = v195 ^ 0x72C6EC0A ^ (v2 ^ 0x2046C000) & (v195 << 8);
  v197 = v174 ^ (2 * ((v196 << 16) & 0x72C60000 ^ v196 ^ ((v196 << 16) ^ 0x6C0A0000) & (((v2 ^ 0x52802C0A) << 8) & 0x72C60000 ^ 0x30020000 ^ (((v2 ^ 0x52802C0A) << 8) ^ 0x46EC0000) & (v2 ^ 0x52802C0A)))) ^ v192 & 0xE52289FF ^ (v192 ^ 0xB89E3C3E) & (v173 ^ 0xA9DF8C10);
  HIDWORD(v7) = v209 + v171 + 359982483 + (((v197 ^ 0xB8EDF869) - 1603715726) ^ ((v197 ^ 0x26BA8BB7) + 1044270768) ^ ((v197 ^ 0x4759F12F) + 1608332344));
  LODWORD(v7) = HIDWORD(v7);
  result = v1[1];
  *v1 = *v1 - 999009325 + (((v173 ^ 0x751DD01) + 1881633987) ^ ((v173 ^ 0x5020D8DF) + 659976477) ^ ((v173 ^ 0x1B8C0031) + 1828366835));
  v1[1] = result + v183 + ((v7 >> 11) ^ 0xCF9ACF9E) + ((2 * (v7 >> 11)) & 0x9F359F3C) + 1975953049;
  v199 = v1[3] - 1552241372 + v174;
  v1[2] += 1164015159 + v183;
  v1[3] = v199;
  return result;
}

uint64_t sub_196982624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, int a52)
{
  v54 = (((a52 - 1238438332) ^ 0xF1F4B928) + 172424695) ^ (a52 - 1238438332) ^ (((a52 - 1238438332) ^ 0xF64CB237) + 234813162) ^ (((a52 - 1238438332) ^ 0x7FFFBFFF) - 2075264222) ^ ((*(v53 - 164) ^ 0x87B8586D) + ((a52 - 1238438332) ^ 0x7C0A0FC1));
  *(v53 - 164) = v52 + 3853;
  v56 = (v54 & 0xF) != 1 || v54 == v52 + 72200246 + ((v52 - 49296773) & 0x2F037EF);
  v57 = *(*(v53 - 176) + 8 * ((v52 + 4400) ^ (8 * v56)));
  *(v53 - 180) = -42899;
  return v57();
}

uint64_t sub_19698276C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int32x4_t a31, int32x4_t a32, int32x4_t a33, int32x4_t a34)
{
  v40 = (LOBYTE(STACK[0x2FC]) - ((2 * LOBYTE(STACK[0x2FC])) & 0x6E) + 62);
  if (v40 == 61)
  {
    v46 = STACK[0x2E0];
    v47 = STACK[0x2DC];
    v42 = a4 + v39 + 2626;
    LOBYTE(STACK[0x2D4]) = (8 * (((a4 + v39 + 66) ^ 8) + LOBYTE(STACK[0x2E0]) - 2 * (STACK[0x2E0] & 3)) - 16) ^ 0xF4;
    LOBYTE(STACK[0x2D5]) = (v46 >> 5) ^ 0xEC;
    LOBYTE(STACK[0x2D6]) = (v46 >> 13) ^ 0xEC;
    LOBYTE(STACK[0x2D7]) = (v46 >> 21) ^ 0xEC;
    LOBYTE(STACK[0x2D8]) = ((__PAIR64__(v47, v46) >> 29) - ((2 * (__PAIR64__(v47, v46) >> 29)) & 0xAE) - 41) ^ 0x3B;
    LOBYTE(STACK[0x2D9]) = (v47 >> 5) ^ 0xEC;
    LOBYTE(STACK[0x2DA]) = (v47 >> 13) ^ 0xEC;
    v45 = (v47 >> 21) ^ 0xFFFFFFEC;
  }

  else
  {
    v41 = -1541214320;
    if (v40 != 60)
    {
      goto LABEL_6;
    }

    v42 = 879 * (v39 ^ (v39 + 3));
    v43 = STACK[0x2DC];
    v44 = STACK[0x2E0];
    LOBYTE(STACK[0x2D4]) = (LODWORD(STACK[0x2DC]) >> ((111 * (v39 ^ (v39 + 3))) ^ 0x58)) ^ 0xEC;
    LOBYTE(STACK[0x2D5]) = (v43 >> 13) ^ 0xEC;
    LOBYTE(STACK[0x2D6]) = (v43 >> 5) ^ 0xEC;
    LOBYTE(STACK[0x2D7]) = ((__PAIR64__(v43, v44) >> 29) - ((2 * (__PAIR64__(v43, v44) >> 29)) & 0x2A) - 107) ^ 0x79;
    LOBYTE(STACK[0x2D8]) = (v44 >> 21) ^ 0xEC;
    LOBYTE(STACK[0x2D9]) = (v44 >> 13) ^ 0xEC;
    LOBYTE(STACK[0x2DA]) = (v44 >> 5) ^ 0xEC;
    LOBYTE(v45) = (8 * (v44 - ((2 * v44) & 4)) - 112) ^ 0x7C;
  }

  v41 = v42 ^ (v39 - 2483);
  LOBYTE(STACK[0x2DB]) = v45;
LABEL_6:
  HIDWORD(v140) = HIDWORD(a15) - 496173345;
  v139 = a12 + a13;
  v133.i64[0] = 0xECECECECECECECECLL;
  v133.i64[1] = 0xECECECECECECECECLL;
  v134 = vdupq_n_s32(0x5D5D9ADu);
  v135 = vdupq_n_s32(0x5D5D9A9u);
  LODWORD(a24) = (v39 + 1971302497) & 0xE65D71BF;
  a23 = v34 + ((a24 - 4001) | 0x41u) - 529;
  a25 = v34 - 16;
  LODWORD(v140) = v39 - 1298510426;
  HIDWORD(a19) = (v39 - 1298510426) & 0xA942CFDD;
  v136 = (HIDWORD(a19) - 759885407) & 0x2D4AEB7F;
  v137 = (v39 - 1995919382) & 0xD2D46BEF;
  HIDWORD(v138) = v137 ^ 0x95A;
  LODWORD(v138) = v137 ^ 0xA6C;
  v141 = *(v37 + 8 * (a4 + v41 + 26));
  v48 = LODWORD(STACK[0x2E4]);
  v49 = STACK[0x2E8];
  v50 = STACK[0x2EC];
  v51 = LODWORD(STACK[0x2F0]);
  v52 = (LOBYTE(STACK[0x2FC]) - ((2 * LOBYTE(STACK[0x2FC])) & 0x6C) + 61);
  if (v52 == 59)
  {
    v142 = vld4q_s8(&STACK[0x29C]);
    v94 = veorq_s8(v142.val[0], v133);
    v95 = vmovl_high_u8(v94);
    v96 = vmovl_u8(*v94.i8);
    v97 = veorq_s8(v142.val[1], v133);
    _Q21 = vmovl_high_u8(v97);
    _Q20 = vmovl_u8(*v97.i8);
    v100 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v101 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v102 = veorq_s8(v142.val[2], v133);
    v103 = vmovl_u8(*v102.i8);
    v104 = vmovl_high_u8(v102);
    v142.val[0] = veorq_s8(v142.val[3], v133);
    v142.val[1] = vmovl_u8(*v142.val[0].i8);
    v142.val[2] = vmovl_u16(*v142.val[1].i8);
    v142.val[1] = vmovl_high_u16(v142.val[1]);
    v142.val[0] = vmovl_high_u8(v142.val[0]);
    v142.val[3] = vmovl_u16(*v142.val[0].i8);
    v142.val[0] = vmovl_high_u16(v142.val[0]);
    v105 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v104, 8uLL)), vshlq_n_s32(vmovl_high_u16(v95), 0x18uLL)), v142.val[0]);
    v106 = vorrq_s8(vorrq_s8(vorrq_s8(v101, vshll_n_u16(*v104.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v95.i8), 0x18uLL)), v142.val[3]);
    v107 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v103, 8uLL)), vshlq_n_s32(vmovl_high_u16(v96), 0x18uLL)), v142.val[1]);
    v108 = vorrq_s8(vorrq_s8(vorrq_s8(v100, vshll_n_u16(*v103.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v96.i8), 0x18uLL)), v142.val[2]);
    v142.val[0] = veorq_s8(vandq_s8(v105, v134), (*v142.val & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v142.val[3] = veorq_s8(vandq_s8(v106, v134), (*&v142.val[3] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v142.val[1] = veorq_s8(vandq_s8(v107, v134), (*&v142.val[1] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v142.val[2] = veorq_s8(vandq_s8(v108, v134), (*&v142.val[2] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    a31 = vaddq_s32(vsubq_s32(v108, vaddq_s32(v142.val[2], v142.val[2])), v135);
    a32 = vaddq_s32(vsubq_s32(v107, vaddq_s32(v142.val[1], v142.val[1])), v135);
    a33 = vaddq_s32(vsubq_s32(v106, vaddq_s32(v142.val[3], v142.val[3])), v135);
    a34 = vaddq_s32(vsubq_s32(v105, vaddq_s32(v142.val[0], v142.val[0])), v135);
    v109 = &a31 + v38 + 1428766484;
    *v109 = v36 ^ __ROR4__(*(v109 - 8) ^ *(v109 - 3) ^ *(v109 - 14) ^ *(v109 - 16), 31);
    return (*(v37 + 8 * ((3050 * (a23 == 1428766485)) ^ a24)))(&STACK[0x29C], a2, v48, a4, 92, v136, v137, a8, a9, a10, a11, a12, a13, a14, a15, v138, a17, a18, a19, v139, v140, v141, a23, a24, a25, a26, a27, a28, a29, a30);
  }

  else if (v52 == 62)
  {
    v143 = vld4q_s8(&STACK[0x29C]);
    v53 = veorq_s8(v143.val[0], v133);
    v54 = vmovl_high_u8(v53);
    v55 = vmovl_high_u16(v54);
    v56 = vmovl_u16(*v54.i8);
    v57 = vmovl_u8(*v53.i8);
    v58 = vmovl_high_u16(v57);
    v59 = vmovl_u16(*v57.i8);
    v60 = veorq_s8(v143.val[1], v133);
    v61 = vmovl_u8(*v60.i8);
    v62 = vmovl_high_u8(v60);
    v63 = veorq_s8(v143.val[2], v133);
    _Q25 = vmovl_u8(*v63.i8);
    _Q24 = vmovl_high_u8(v63);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v143.val[0] = veorq_s8(v143.val[3], v133);
    v143.val[1] = vmovl_u8(*v143.val[0].i8);
    v143.val[2] = vmovl_u16(*v143.val[1].i8);
    v143.val[0] = vmovl_high_u8(v143.val[0]);
    v143.val[3] = vmovl_u16(*v143.val[0].i8);
    v143.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v143.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v62, 8uLL), v55));
    v143.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v143.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v62.i8, 8uLL), v56));
    v143.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v143.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v61, 8uLL), v58));
    v143.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v143.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v61.i8, 8uLL), v59));
    v72 = vdupq_n_s32(0x5D5D9B9u);
    v73 = veorq_s8(vandq_s8(v143.val[0], v72), (*&v55 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v74 = veorq_s8(vandq_s8(v143.val[3], v72), (*&v56 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v75 = veorq_s8(vandq_s8(v143.val[1], v72), (*&v58 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v76 = veorq_s8(vandq_s8(v143.val[2], v72), (*&v59 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    a31 = vaddq_s32(vsubq_s32(v143.val[2], vaddq_s32(v76, v76)), v135);
    a32 = vaddq_s32(vsubq_s32(v143.val[1], vaddq_s32(v75, v75)), v135);
    a33 = vaddq_s32(vsubq_s32(v143.val[3], vaddq_s32(v74, v74)), v135);
    a34 = vaddq_s32(vsubq_s32(v143.val[0], vaddq_s32(v73, v73)), v135);
    v77 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v138) - 8;
    v78 = v48 ^ v35;
    v79 = v51;
    v80 = (v49 & 0xFE3D5B26 ^ 0x82385804 ^ (v49 ^ 0x83B8F894) & (v51 ^ 0x827A5C4D) | v50 & 0x75868670 ^ 0x74060660 ^ (v49 ^ 0x9C1811B) & (v50 ^ v35)) + v78 + *&v77[4 * a25 + 4 * v38] + (a31.i32[(*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + SHIDWORD(v138)) + a25 + v38) - 102)] ^ v36);
    v81 = (v80 ^ 0x8BB21185) & (2 * (v80 & 0x8B0245C9)) ^ v80 & 0x8B0245C9;
    v82 = ((2 * (v80 ^ 0x9DB21395)) ^ 0x2D60ACB8) & (v80 ^ 0x9DB21395) ^ (2 * (v80 ^ 0x9DB21395)) & 0x16B0565C;
    v83 = v82 ^ 0x12905244;
    v84 = (v82 ^ 0x6804408) & (4 * v81) ^ v81;
    v85 = ((4 * v83) ^ 0x5AC15970) & v83 ^ (4 * v83) & 0x16B0565C;
    v86 = (v85 ^ 0x12805050) & (16 * v84) ^ v84;
    v87 = ((16 * (v85 ^ 0x430060C)) ^ 0x6B0565C0) & (v85 ^ 0x430060C) ^ (16 * (v85 ^ 0x430060C)) & 0x16B05650;
    v88 = v86 ^ 0x16B0565C ^ (v87 ^ 0x2004400) & (v86 << 8);
    v89 = (v88 << 16) & 0x16B00000 ^ v88 ^ ((v88 << 16) ^ 0x565C0000) & (((v87 ^ 0x14B0121C) << 8) & 0x16B00000 ^ 0x6A00000 ^ (((v87 ^ 0x14B0121C) << 8) ^ 0x30560000) & (v87 ^ 0x14B0121C));
    v90 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v137 - 2430) - 4;
    v91 = v90[a25 + v38];
    LOBYTE(v87) = (((v91 - 22) ^ 0x7D) - 91) ^ (v91 - 22) ^ (((v91 - 22) ^ 0xF7) + 47) ^ (((v91 - 22) ^ 0x5B) - 125) ^ (((v91 - 22) ^ 0xF7) + 47);
    v92 = (((v49 ^ 0xE6DCC273) + 421739917) ^ ((v49 ^ 0x5F4752B3) - 1598509747) ^ ((v49 ^ 0xC5DC97AB) + 975398997)) - 2082192525 + (((v80 ^ (2 * v89) ^ 0x8A42E971) << (v87 & 0x15 ^ 4) << (v87 & 0xA ^ 2)) | ((v80 ^ (2 * v89) ^ 0x8A42E971) >> (92 - v91)));
    return (*(v37 + 8 * ((239 * (a25 + 1 != v34)) ^ v137)))(3129797167, v77, v79, v90, 92, v136, v137, v92 ^ ((v92 ^ 0xF99ECF4B) + 33295549) ^ ((v92 ^ 0x830C6E26) + 2070851026) ^ ((v92 ^ 0x8070679A) + 2014487662) ^ ((v92 ^ 0xFD7FFAFF) + 85801225) ^ 0x7BDA3B63, a9, a10, a11, a12, a13, a14, a15, v138, a17, a18, a19, v139, v140, v141, a23, a24, a25, a26, a27, a28, a29, a30);
  }

  else
  {
    v110 = LODWORD(STACK[0x2E8]);
    v111 = (((v48 ^ 0xF39FF51F) + 207620833) ^ ((v48 ^ 0xB16DDE51) + 1318199727) ^ ((v48 ^ 0x3EB52C25) - 1052060709)) + (((LODWORD(STACK[0x2E4]) ^ 0x188F8A10) - 412060176) ^ ((LODWORD(STACK[0x2E4]) ^ 0x3E2FC781) - 1043318657) ^ ((LODWORD(STACK[0x2E4]) ^ 0x5AE74AFA) - 1525107450)) + 427681160;
    v112 = (((v49 ^ 0x676C21E0) - 1735139808) ^ ((v49 ^ 0xBB132116) + 1156374250) ^ ((v49 ^ 0xA038079D) + 1606940771)) + (((LODWORD(STACK[0x2E8]) ^ 0xD9DE9404) + 639724540) ^ ((LODWORD(STACK[0x2E8]) ^ 0xAE16780D) + 1374259187) ^ ((LODWORD(STACK[0x2E8]) ^ 0xB8FEB62) - 193981282)) + 1730013208;
    LODWORD(STACK[0x2E4]) = v111 ^ ((v111 ^ 0x434F1589) - 1671480123) ^ ((v111 ^ 0x9D36CC36) + 1109845372) ^ ((v111 ^ 0x8179E1F2) + 1583990976) ^ ((v111 ^ 0x7FEFEEFF) - 1593849933) ^ 0x5CA8D1D9;
    LODWORD(STACK[0x2E8]) = v112 ^ ((v112 ^ 0x5203FE19) - 1015818075) ^ ((v112 ^ 0xAACFB2A) - 1680024168) ^ ((v112 ^ 0x59CFE386) - 926956228) ^ ((v112 ^ 0x6FEF3FF7) - 23127733) ^ 0x12C8DE29;
    v113 = (((v50 ^ 0xBBDC2104) + 1143201532) ^ ((v50 ^ 0x1C8A477) - 29926519) ^ ((v50 ^ 0xC6538218) + 967605736)) + (((LODWORD(STACK[0x2EC]) ^ 0xEDC545CF) + 305838641) ^ ((LODWORD(STACK[0x2EC]) ^ 0xB8315680) + 1204726144) ^ ((LODWORD(STACK[0x2EC]) ^ 0x29B31424) - 699601956)) + 1261644927;
    v114 = (v113 ^ 0x8C1AD147) & (2 * (v113 & 0xAD5AE257)) ^ v113 & 0xAD5AE257;
    v115 = ((2 * (v113 ^ 0xDC1A1563)) ^ 0xE281EE68) & (v113 ^ 0xDC1A1563) ^ (2 * (v113 ^ 0xDC1A1563)) & 0x7140F734;
    v116 = v115 ^ 0x11401114;
    v117 = (v115 ^ 0x60008220) & (4 * v114) ^ v114;
    v118 = ((4 * v116) ^ 0xC503DCD0) & v116 ^ (4 * v116) & 0x7140F734;
    v119 = (v118 ^ 0x4100D410) & (16 * v117) ^ v117;
    v120 = ((16 * (v118 ^ 0x30402324)) ^ 0x140F7340) & (v118 ^ 0x30402324) ^ (16 * (v118 ^ 0x30402324)) & 0x7140F730;
    v121 = v119 ^ 0x7140F734 ^ (v120 ^ 0x10007300) & (v119 << 8);
    v122 = v113 ^ (2 * ((v121 << 16) & 0x71400000 ^ v121 ^ ((v121 << 16) ^ 0x77340000) & (((v120 ^ 0x61408434) << 8) & 0x71400000 ^ 0x31000000 ^ (((v120 ^ 0x61408434) << 8) ^ 0x40F70000) & (v120 ^ 0x61408434))));
    v123 = (((v51 ^ 0x568167F0) - 1451321328) ^ ((v51 ^ 0xECBB4BF7) + 323269641) ^ ((v51 ^ 0xC67D2B6C) + 964875412)) + (((LODWORD(STACK[0x2F0]) ^ 0x99EDAAFD) + 1712477443) ^ ((LODWORD(STACK[0x2F0]) ^ 0xD156302D) + 782880723) ^ ((LODWORD(STACK[0x2F0]) ^ 0x34FC9DBB) - 888970683)) + 868854586;
    v124 = (v123 ^ 0xE481735D) & (2 * (v123 & 0xC4C4639C)) ^ v123 & 0xC4C4639C;
    v125 = ((2 * (v123 ^ 0xE581366D)) ^ 0x428AABE2) & (v123 ^ 0xE581366D) ^ (2 * (v123 ^ 0xE581366D)) & 0x214555F0;
    v126 = v125 ^ 0x21455411;
    v127 = v124 ^ 0x214555F1 ^ (v125 ^ 0xE0) & (4 * v124);
    v128 = ((4 * v126) ^ 0x851557C4) & v126 ^ (4 * v126) & 0x214555F0;
    v129 = v128 & 0xDB84CE84 ^ v127 ^ (v128 ^ 0x10555C1) & ((16 * v127) ^ 0xCFD19194);
    v130 = ((16 * v128) ^ 0xCBD19284) & (v128 ^ 0x10555C1) ^ v128 & 0xDB84CE84;
    v131 = v130 & 0xDB84CE84 ^ v129 ^ ((v129 << 8) ^ 0x9A95BF84) & (v130 ^ 0x10444F1);
    v132 = ((v130 << 8) ^ 0xDFC04E84) & (v130 ^ 0x10444F1) ^ v130 & 0xDB84CE84;
    LODWORD(STACK[0x2EC]) = v122 ^ 0xD19C0B54;
    LODWORD(STACK[0x2F0]) = v123 ^ (2 * (v131 ^ v132 & 0x5B84CE84 ^ ((v131 << 16) ^ 0x8E75CE86) & (v132 ^ 0x20410000) ^ ((v131 << 16) ^ 0x8E75CE86) & 0x21454480)) ^ 0xF8014615;
    return v141(3682913924, a2, 558187648, a4, 92, v136, v137, v110, a9, a10, a11, a12, a13, a14, a15, v138, a17);
  }
}

void sub_19698294C(int a1@<W8>)
{
  if (a1 == ((((v2 - 2814) ^ 0x7B8) + 152) ^ (v3 + 2846)))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  *v1 = v5;
  JUMPOUT(0x196982970);
}

uint64_t sub_196982A84@<X0>(int a1@<W8>)
{
  v5 = *(v3 + 4 * (v2 - 1));
  v6 = 1566083941 * (((v5 ^ (v5 >> 30) ^ 0xFD9DA6F3) + 23198568) ^ ((v5 ^ (v5 >> 30) ^ 0x340D474B) - 923723040) ^ ((v5 ^ (v5 >> 30) ^ 0xC990E1B8) + 896318509));
  *(v3 + 4 * v2) = (*(v3 + 4 * v2) ^ (580440777 - v6) ^ (v6 + 965215417) ^ (((v6 + 965215417) ^ 0xBFAFC277) + 477161995) ^ (((v6 + 965215417) ^ 0x5A8216B0) - 111329586) ^ (((v6 + 965215417) ^ 0x46F2FCBA) - 449981240) ^ 0x5C20D782) - v2;
  v7 = 489239129 * ((((v4 - 176) ^ 0x208081A808800081 | 0x8B091E5051203C3ALL) + ((v4 - 176) ^ 0x300084011002808 | 0x74F6E1AFAEDFC3C5)) ^ 0xE282296BA0A80BBELL);
  *(v4 - 144) = a1 - 890618685 + v7;
  *(v4 - 140) = v7 ^ (a1 - 890618685) ^ 0x62;
  v8 = (v4 - 176);
  v8[3] = v7 + 623;
  *v8 = v2 + 1 - v7;
  *(v4 - 168) = v7 + 1;
  *(v4 - 164) = ((a1 - 890618685) ^ 0x1DF) + v7;
  *(v4 - 136) = 1881689346 - v7 + a1;
  v9 = (*(v1 + 8 * (a1 ^ 0x1277)))(v4 - 176);
  return (*(v1 + 8 * *(v4 - 160)))(v9);
}

uint64_t sub_19698312C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 120) = (v18 + 1256) ^ (1790939281 * ((2 * ((v21 - 136) & 0x38169BB8) - (v21 - 136) - 941005756) ^ 0x3F354405));
  *(v21 - 136) = &a17;
  *(v21 - 128) = v17;
  v22 = (*(v19 + 8 * (v18 ^ 0x1003)))(v21 - 136);
  return (*(v19 + 8 * (((((v18 + 1432) | 0x90) - 4287) * (v20 == 1)) ^ v18)))(v22);
}

uint64_t sub_1969831CC(uint64_t a1, uint64_t a2, int a3)
{
  v10 = -v7;
  v12.val[0].i64[0] = (v6 + v10 - 1) & 0xF;
  v12.val[0].i64[1] = (v6 + v10 + 14) & 0xF;
  v12.val[1].i64[0] = (v6 + v10 + 13) & 0xF;
  v12.val[1].i64[1] = (v6 + v10 + 12) & 0xF;
  v12.val[2].i64[0] = (v6 + v10 + ((a3 + 54) | 0x42) + 73) & 0xF;
  v12.val[2].i64[1] = (v6 + v10 + 10) & 0xF;
  v12.val[3].i64[0] = (v6 + v10 + 9) & 0xF;
  v12.val[3].i64[1] = (v6 + v10) & 0xF ^ 8;
  *(v6 + v8 - 8 + v10) = veor_s8(veor_s8(veor_s8(*(v4 + v12.val[0].i64[0] - 7), *(v6 + v8 - 8 + v10)), veor_s8(*(v12.val[0].i64[0] + v5 - 3), *(v12.val[0].i64[0] + v3 - 5))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v12, xmmword_196EBFAE0), 0x4545454545454545)));
  return (*(v9 + 8 * ((2215 * (8 - (v6 & 0x18) == v10)) ^ (a3 + 98))))(v6 & 7, xmmword_196EBFAE0);
}

uint64_t sub_1969832CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x4F8]) = v13;
  LODWORD(STACK[0x4F4]) = v10;
  LODWORD(STACK[0x59C]) = v12;
  LODWORD(STACK[0x4FC]) = a8;
  v18 = a4 + 4;
  LODWORD(STACK[0x4F0]) = v8 + 8;
  LODWORD(STACK[0x4EC]) = v11 + 12512;
  v19 = v14 + 12512;
  LODWORD(STACK[0x558]) += 12512;
  LODWORD(STACK[0x50C]) += 12512;
  LODWORD(STACK[0x4E8]) = v16 + 12512;
  LODWORD(STACK[0x534]) += 12512;
  LODWORD(STACK[0x510]) += 12512;
  LODWORD(STACK[0x528]) += 12512;
  LODWORD(STACK[0x524]) += 12512;
  v20 = LODWORD(STACK[0x4C0]) + 12512;
  LODWORD(STACK[0x538]) += 12512;
  LODWORD(STACK[0x53C]) += 12512;
  LODWORD(STACK[0x540]) += 12512;
  LODWORD(STACK[0x560]) += 12512;
  v21 = LODWORD(STACK[0x4CC]) + 12512;
  v22 = LODWORD(STACK[0x4C8]) + 12512;
  LODWORD(STACK[0x588]) += 12512;
  LODWORD(STACK[0x570]) += 12512;
  LODWORD(STACK[0x56C]) += 12512;
  LODWORD(STACK[0x568]) += 12512;
  LODWORD(STACK[0x554]) += 12512;
  LODWORD(STACK[0x548]) += 12512;
  LODWORD(STACK[0x544]) += 12512;
  LODWORD(STACK[0x514]) += 12512;
  LODWORD(STACK[0x518]) += 12512;
  LODWORD(STACK[0x564]) += 12512;
  LODWORD(STACK[0x520]) += 16;
  v23 = LODWORD(STACK[0x4D0]) + 12512;
  v24 = LODWORD(STACK[0x4B4]) + 12512;
  v25 = LODWORD(STACK[0x4B8]) + 12512;
  v26 = LODWORD(STACK[0x4DC]) + 12512;
  v27 = LODWORD(STACK[0x4BC]) + 12512;
  v28 = LODWORD(STACK[0x4E0]) + 12512;
  LODWORD(STACK[0x594]) = v18;
  LODWORD(STACK[0x4DC]) = v26;
  v29 = v26 / 0x3C7;
  LODWORD(STACK[0x4BC]) = v27;
  v30 = LODWORD(STACK[0x598]) - 967 * ((v28 + LODWORD(STACK[0x598])) / 0x3C7u);
  LODWORD(STACK[0x4E0]) = v28;
  v31 = STACK[0x580];
  v32 = *(STACK[0x580] + 242420 - 967 * v29 + v19 + 782);
  v33 = ((*(STACK[0x580] + v28 + v30) ^ 0xFFFFFFC1) << 24) | ((*(STACK[0x580] + v19 + 242420 - 967 * (v27 / 0x3C7)) ^ 0xC1) << 16);
  LODWORD(STACK[0x4D0]) = v23;
  v34 = 495788 - 967 * (v23 / 0x3C7) + v19;
  LODWORD(STACK[0x4B4]) = v24;
  LODWORD(STACK[0x4B8]) = v25;
  v35 = (v33 & 0xFFFF00FF | (((((((v32 >> 7) | (2 * v32)) ^ 0xD1) >> 1) | ((((v32 >> 7) | (2 * v32)) ^ 0xD1) << 7)) ^ 0x29) << 8) | *(v31 + v19 + 243984 - 967 * (v25 / 0x3C7))) ^ (a6 - 1955313854);
  LOWORD(v23) = 81 * v18;
  v36 = STACK[0x5A0];
  *(STACK[0x5A0] + 4 * ((81 * v18 + 5751) % 0x112u)) = v35 ^ 0xC88F0206;
  v37 = (*(v31 + v19 + 495788 - 967 * (v24 / 0x3C7)) << 24) | (*(v31 + (v34 + 782)) << 16);
  LODWORD(STACK[0x4CC]) = v21;
  v38 = v37 | (*(v31 + 495788 - 967 * (v21 / 0x3C7) + v19 + 1564) << 8);
  LODWORD(STACK[0x4C8]) = v22;
  v39 = (v38 | *(v31 + 495788 - 967 * (v22 / 0x3C7) + v19 + 2346)) ^ v15;
  v40 = v9 + 806562000;
  v41 = (a6 - 1955313854) ^ (v9 + 806562000) ^ v39;
  v42 = LODWORD(STACK[0x59C]) - 1892732273;
  v43 = STACK[0x4FC];
  v44 = LODWORD(STACK[0x4FC]) + v42 + a6 - 1955313854;
  *(v36 + 4 * ((v23 + 11178) % 0x112u)) = v39;
  v45 = STACK[0x4F8];
  v46 = v40 ^ v42;
  v47 = ((v35 ^ 0xC1 ^ v41) - v41) ^ ((v35 ^ 0xC1 ^ v15) - v15) ^ (935196014 - LODWORD(STACK[0x4F8]) + (LODWORD(STACK[0x4F8]) ^ ((LODWORD(STACK[0x4F8]) ^ 0x3C2D66F7) - 194024345) ^ ((LODWORD(STACK[0x4F8]) ^ 0x1A533FC8) - 770624166) ^ ((LODWORD(STACK[0x4F8]) ^ 0x6E3813AE) - 1501947584) ^ ((LODWORD(STACK[0x4F8]) ^ 0x7FFBBFFF) - 1212566161) ^ 0xCDC14490 ^ (v35 - ((2 * v35) & 0xF4F9627E) - 92491457)));
  v48 = LODWORD(STACK[0x4F8]) ^ 0xC0BA0FB7;
  v49 = ((2 * (STACK[0x4F8] & 0xC8420A92)) & 0x800524 | STACK[0x4F8] & 0xC8420A92) ^ (2 * (STACK[0x4F8] & 0xC8420A92)) & v48;
  v50 = ((2 * v48) ^ 0x11F00A4A) & v48 ^ (2 * v48) & 0x8F80524;
  v51 = v50 ^ 0x8080525;
  v52 = (v50 ^ 0x8100125) & (4 * v49) ^ v49;
  v53 = ((4 * v51) ^ 0x23E01494) & v51 ^ (4 * v51) & 0x8F80524;
  v54 = v53 ^ 0x8180121;
  v55 = (v53 ^ LODWORD(STACK[0x4AC])) & (16 * v52) ^ v52;
  LODWORD(STACK[0x4C0]) = v20;
  LODWORD(STACK[0x500]) = 501262 - 967 * (v20 / 0x3C7) + v19;
  v56 = ((16 * v54) ^ 0x8F805250) & v54 ^ (16 * v54) & 0x8F80520;
  v57 = 243984 - 967 * (LODWORD(STACK[0x588]) / 0x3C7) + v19;
  *(v36 + 4 * ((v23 + 16524) % 0x112u)) = -1751185678 - v17 + v47;
  v58 = (v56 ^ 0x8800000) & (v55 << 8);
  v59 = v55 ^ 0x8F80525;
  v60 = 243984 - 967 * (LODWORD(STACK[0x570]) / 0x3C7) + v19;
  v61 = v59 ^ v58;
  *(v36 + 4 * (v23 % 0x112u)) = v43 + 1041348640 + v39;
  v62 = v43 ^ v46;
  v63 = v17;
  v64 = ((v56 ^ 0x780525) << 8) & 0x8F80000 ^ (((v56 ^ 0x780525) << 8) ^ 0x78050000) & (v56 ^ 0x780525) ^ 0xF80000;
  v65 = v46 + 1751667045 - v62;
  v66 = v46 - v62;
  v67 = (((*(v31 + (v57 + 782)) ^ 0xFFFFFFC1) << 24) | ((*(v31 + 243984 - 967 * (LODWORD(STACK[0x56C]) / 0x3C7) + v19 + 2346) ^ 0xC1) << 8) | ((*(v31 + (v60 + 1564)) ^ 0xC1) << 16) | *(v31 + 243984 - 967 * (LODWORD(STACK[0x568]) / 0x3C7) + v19 + 3128)) ^ v66;
  *(v36 + 4 * ((v23 + 5832) % 0x112u)) = v67 ^ 0xC88F0206;
  v68 = LODWORD(STACK[0x4F4]) - 1892732273;
  v69 = v45 ^ (LODWORD(STACK[0x4F4]) - ((2 * v68) & 0xDC3D100C) - 45237611) ^ (2 * ((v61 << 16) & 0x8F80000 ^ v61 ^ ((v61 << 16) ^ 0x5250000) & v64)) ^ 0xB7EC88DE;
  v70 = v69 ^ v63;
  v71 = v69 - (v69 ^ v63);
  v72 = ((*(v31 + 495788 - 967 * (LODWORD(STACK[0x554]) / 0x3C7) + v19 + 3128) << 24) | (*(v31 + 495788 - 967 * (LODWORD(STACK[0x548]) / 0x3C7) + v19 + 3910) << 16) | (*(v31 + 501262 - 967 * (LODWORD(STACK[0x544]) / 0x3C7) + v19 - 782) << 8) | *(v31 + v19 + 501262 - 967 * (LODWORD(STACK[0x514]) / 0x3C7))) ^ v71;
  v73 = v67 ^ 0xC1;
  v74 = (v67 ^ 0xC1 ^ v66 ^ v44 ^ v72) - (v66 ^ v44 ^ v72);
  v75 = 501262 - 967 * (LODWORD(STACK[0x538]) / 0x3C7) + v19;
  v76 = v15 + v63 + v68;
  v77 = v70 ^ v76;
  *(v36 + 4 * ((v23 + 11259) % 0x112u)) = v72;
  v78 = 248676 - 967 * (LODWORD(STACK[0x560]) / 0x3C7) + v19;
  *(v36 + 4 * ((v23 + 16605) % 0x112u)) = -1751185678 - v77 + (((v73 ^ v71) - v71) ^ ((v73 ^ v76) - v76) ^ v74);
  v79 = v44 ^ v62;
  v80 = 248676 - 967 * (LODWORD(STACK[0x518]) / 0x3C7);
  *(v36 + 4 * ((v23 + 81) % 0x112u)) = v79 + 1041348640 + v72;
  v81 = v44 ^ 0x8CB262A7;
  v82 = v66 - (v44 ^ 0x8CB262A7);
  v83 = v79 - v82;
  v84 = ((*(v31 + (LODWORD(STACK[0x520]) * LODWORD(STACK[0x520]) - (LODWORD(STACK[0x520]) - 391) * (LODWORD(STACK[0x520]) - 391) - 152881) % 0x3C7u) ^ 0xFFFFFFC1) << 24) | ((*(v31 + v19 + v80) ^ 0xC1) << 16);
  v85 = v79 - v82 + 976830951;
  v86 = (v84 | ((*(v31 + 248676 - 967 * (LODWORD(STACK[0x564]) / 0x3C7) + v19 + 782) ^ 0xC1) << 8) | *(v31 + (v78 + 1564))) ^ v85;
  *(v36 + 4 * ((v23 + 5913) % 0x112u)) = v86 ^ 0xC88F0206;
  v87 = LODWORD(STACK[0x59C]) - 2 * v65 + 1610601817;
  v88 = v68 - 2 * v71;
  v89 = v87 + v81;
  v76 ^= 0x8CB262A7;
  v90 = v71 - v76;
  v91 = v71 - v76 + 941356041;
  v92 = v77 - (v71 - v76);
  v93 = ((*(v31 + 501262 - 967 * (LODWORD(STACK[0x540]) / 0x3C7) + v19 + 782) << 24) | (*(v31 + 501262 - 967 * (LODWORD(STACK[0x53C]) / 0x3C7) + v19 + 1564) << 16) | (*(v31 + (v75 + 2346)) << 8) | *(v31 + (LODWORD(STACK[0x500]) + 3128))) ^ (v92 + 976830951);
  *(v36 + 4 * ((v23 + 11340) % 0x112u)) = v93;
  v94 = v88 + v76;
  v95 = STACK[0x4EC];
  v96 = ((v86 ^ 0xC1 ^ v91) - v91) ^ ((v86 ^ 0xC1 ^ (v88 + v76)) - (v88 + v76)) ^ ((v86 ^ 0xC1 ^ (v87 + v81) ^ (v82 + 941356041) ^ v93) - ((v87 + v81) ^ (v82 + 941356041) ^ v93));
  v97 = 248676 - 967 * (LODWORD(STACK[0x558]) / 0x3C7) + v19;
  *(v36 + 4 * ((81 * (LODWORD(STACK[0x4F0]) + (LODWORD(STACK[0x594]) ^ 0xCE))) % 0x112u)) = v83 - 774354727 + v93;
  v98 = 252586 - 967 * (LODWORD(STACK[0x50C]) / 0x3C7);
  v99 = STACK[0x4E8];
  *(v36 + 4 * ((v23 + 162) % 0x112u)) = (__ROR4__(__ROR4__(v96, 11) ^ 0x9FF1B766, 21) ^ 0x8DBB34FF) - v92 + 64517689;
  v100 = 505954 - 967 * (LODWORD(STACK[0x534]) / 0x3C7) + v19;
  v101 = 505954 - 967 * (LODWORD(STACK[0x510]) / 0x3C7);
  v102 = ((*(v31 + 248676 - 967 * (v95 / 0x3C7) + v19 + 2346) ^ 0xFFFFFFC1) << 24) | ((*(v31 + (v97 + 3128)) ^ 0xC1) << 16);
  v103 = 505954 - 967 * (LODWORD(STACK[0x528]) / 0x3C7) + v19;
  v85 ^= 0xC81AC7DB;
  v104 = v82 + v87 - v85 + 1742268975;
  v105 = (v102 | ((*(v31 + v19 + v98) ^ 0xC1) << 8) | *(v31 + 252586 - 967 * (v99 / 0x3C7) + v19 + 782)) ^ v104;
  *(v36 + 4 * ((v23 + 5994) % 0x112u)) = v105 ^ 0xC88F0206;
  v106 = (v92 + 976830951) ^ 0xC81AC7DB;
  v107 = v88 + v90 - 311107590 - v106 + 2053376565;
  v108 = ((*(v31 + (v100 - 782)) << 24) | (*(v31 + v19 + v101) << 16) | (*(v31 + (v103 + 782)) << 8) | *(v31 + 505954 - 967 * (LODWORD(STACK[0x524]) / 0x3C7) + v19 + 1564)) ^ v107;
  *(v36 + 4 * ((v23 + 11421) % 0x112u)) = v108;
  *(v36 + 4 * ((v23 + 16767) % 0x112u)) = v85 + 1937375729 + v108;
  *(v36 + 4 * ((v23 + 243) % 0x112u)) = (((v105 ^ 0xC1 ^ (v107 + v90 - 311107590)) - (v107 + v90 - 311107590)) ^ ((v105 ^ 0xC1 ^ ((v94 ^ 0x9BD2C052) - 666340921)) - ((v94 ^ 0x9BD2C052) - 666340921)) ^ ((v105 ^ 0xC1 ^ (v82 - 311107590 + v104) ^ ((v89 ^ 0x9BD2C052) - 666340921) ^ v108) - ((v82 - 311107590 + v104) ^ ((v89 ^ 0x9BD2C052) - 666340921) ^ v108))) - v106 + 1647754529;
  return (*(STACK[0x578] + 8 * (LODWORD(STACK[0x4B0]) | (4 * (LODWORD(STACK[0x594]) > 0xB)))))();
}

void sub_196983458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, int a26, int a27, int a28, int a29, int a30, int a31, int a32, int a33, int a34, int a35, int a36, int a37, int a38, int a39, unsigned int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, int a53, unsigned int a54, int a55, int a56, int a57, int a58, char a59, int a60, int a61, int a62, int a63)
{
  v133 = a124 ^ (LODWORD(STACK[0x348]) >> 26) ^ a126 ^ a127 ^ (a125 >> 3) ^ a58 ^ a128;
  LODWORD(STACK[0x560]) = a56 ^ a55;
  v134 = (STACK[0x398] >> 3) ^ (a54 >> 26) ^ (STACK[0x398] >> 4);
  v135 = a39 ^ (a40 >> 31) ^ a38 ^ a45 ^ a51 ^ a43 ^ a53 ^ a37 ^ a44 ^ a42 ^ a36 ^ a31 ^ a41 ^ a47 ^ v134;
  v136 = (v135 >> 21) ^ (v134 >> 27);
  v137 = STACK[0x398];
  v138 = v137 ^ (v137 << 6) ^ (v137 << 29) ^ LODWORD(STACK[0x368]) ^ a33 ^ a34 ^ a35 ^ LODWORD(STACK[0x370]) ^ LODWORD(STACK[0x36C]) ^ LODWORD(STACK[0x394]) ^ LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x364]) ^ a32 ^ a30 ^ LODWORD(STACK[0x360]) ^ LODWORD(STACK[0x380]) ^ LODWORD(STACK[0x38C]) ^ v135 ^ (4 * v135) ^ (32 * v135) ^ (v135 << 11) ^ v136 ^ (4 * v136) ^ (32 * v136) ^ (v136 << 11);
  STACK[0x500] = 233 * (v132 ^ 0x57Fu);
  LODWORD(STACK[0x594]) = v138 ^ (v137 << (-23 * (v132 ^ 0x7F) - 120));
  v139 = (((-913862116 - 1673081951 * a17) ^ 0x8684A719) + 1439729913) ^ (-913862116 - 1673081951 * a17) ^ (((-913862116 - 1673081951 * a17) ^ 0xC22EDAF3) + 293270803) ^ (((-913862116 - 1673081951 * a17) ^ 0x17FE520A) - 995459604) ^ (((-913862116 - 1673081951 * a17) ^ 0x7FFFFFFE) - 1398026208) ^ a21;
  v140 = LODWORD(STACK[0x498]) - 1528722972 + (((v139 ^ 0xD9D22A4B) - 655079008) ^ ((v139 ^ 0xF3D10320) - 218668811) ^ ((v139 ^ 0xFABB0CDF) - 73568500));
  v141 = (v140 ^ 0x81526AD1) & (2 * (v140 & 0xC9937015)) ^ v140 & 0xC9937015;
  v142 = ((2 * (v140 ^ 0x8150EAFB)) ^ 0x918735DC) & (v140 ^ 0x8150EAFB) ^ (2 * (v140 ^ 0x8150EAFB)) & 0x48C39AEE;
  v143 = (v142 ^ 0x8300CC) & (4 * v141) ^ v141;
  v144 = ((4 * (v142 ^ a13)) ^ 0x230E6BB8) & (v142 ^ a13) ^ (4 * (v142 ^ a13)) & 0x48C39AEC;
  v145 = (v144 ^ 0x20AA6) & (16 * v143) ^ v143;
  v146 = ((16 * (v144 ^ 0x48C19046)) ^ 0x8C39AEE0) & (v144 ^ 0x48C19046) ^ (16 * (v144 ^ 0x48C19046)) & 0x48C39AE0;
  v147 = v145 ^ 0x48C39AEE ^ (v146 ^ 0x8018A00) & (v145 << 8);
  LODWORD(STACK[0x4FC]) = v140 ^ (2 * ((v147 << 16) & 0x48C30000 ^ v147 ^ ((v147 << 16) ^ 0x1AEE0000) & (((v146 ^ 0x40C2100E) << 8) & 0x48C30000 ^ 0x8410000 ^ (((v146 ^ 0x40C2100E) << 8) ^ 0x439A0000) & (v146 ^ 0x40C2100E))));
  LODWORD(STACK[0x4F8]) = ((((a20 & 0x9C46CBA1 ^ 0x6CBF90C4) + 1126847431) ^ ((a20 & 0x9C46CBA1 ^ 0x7348C0E0) + 1557988323) ^ ((a20 & 0x9C46CBA1 ^ 0x1FF75024) + 811766567)) - 1004993516 + ((((1663319553 - a19) & 0x9C46CBA1 ^ 0x63346BF9) + 1868911378) ^ (((1663319553 - a19) & 0x9C46CBA1 ^ 0xDBB2086F) - 672976760) ^ (((1663319553 - a19) & 0x9C46CBA1 ^ 0xB8866396) - 1260954753))) * a18 - 1663319554;
  v148 = a46 ^ (v137 >> 1);
  LODWORD(STACK[0x598]) = a43 ^ (a54 >> 20) ^ a45 ^ a52 ^ a51 ^ a53 ^ a44 ^ a50 ^ a42 ^ a49 ^ a48 ^ a47 ^ a41 ^ v148;
  LODWORD(STACK[0x59C]) = (a40 >> 31) ^ (v148 >> 27);
  v149 = (a106 >> 27) ^ (a106 >> 13) ^ (a106 >> 28) ^ a94 ^ a102 ^ a101 ^ a100 ^ a92 ^ a73 ^ (a99 >> 2) ^ a70 ^ a72 ^ a98 ^ a97 ^ a96 ^ 0x3FE34E66;
  LODWORD(STACK[0x570]) = v149 ^ a80;
  LODWORD(STACK[0x588]) = (v149 >> 27) ^ (v149 >> 21);
  v150 = (v133 ^ 0x7C0FCB74) + 1330573856 - 2 * ((v133 ^ 0x7C0FCB74) & 0x4F4EF223 ^ v133 & 3);
  v151 = ((v150 ^ LODWORD(STACK[0x200])) - 293845056 - ((2 * (v150 ^ LODWORD(STACK[0x200]))) & 0xDCF88F80)) ^ LODWORD(STACK[0x358]);
  v152 = (v151 - 1199463003 - 2 * (v151 & 0x3881A6F8 ^ v150 & 0x10) + 323) ^ LODWORD(STACK[0x25C]);
  v153 = (v152 + 777028215 - ((2 * v152) & 0x5CA109D8) + 629) ^ LODWORD(STACK[0x3A0]);
  v154 = (v153 - ((2 * v153) & 0x2C96C098) - 1773445044) ^ LODWORD(STACK[0x260]);
  v155 = (v154 - ((2 * v154) & 0xAA96613E) + 1430991007) ^ LODWORD(STACK[0x210]);
  v156 = (v155 - ((2 * v155) & 0xD79EB10C) + 1808750726) ^ LODWORD(STACK[0x35C]);
  v157 = (v156 + 2120438528 - ((2 * v156) & 0xFCC6C4E2) + 3953) ^ LODWORD(STACK[0x258]);
  v158 = (v157 - ((2 * v157) & 0xD122A338) + 1754354076) ^ LODWORD(STACK[0x3A4]);
  v159 = (v158 - ((2 * v158) & 0x9AFD5900) + 1300147328) ^ LODWORD(STACK[0x3A8]);
  v160 = STACK[0x270];
  v161 = (v159 >> 27) ^ (v159 >> 21);
  v162 = (2 * LODWORD(STACK[0x270])) ^ (LODWORD(STACK[0x270]) << 6) ^ (LODWORD(STACK[0x270]) << 29) ^ LODWORD(STACK[0x254]) ^ a85 ^ (32 * v159) ^ (v159 << 11);
  LODWORD(STACK[0x56C]) = v159 ^ v161;
  v163 = v162 ^ (4 * (v159 ^ v161)) ^ (32 * v161) ^ (v161 << 11) ^ 0x48486F86;
  v164 = (v163 - ((2 * v163) & 0x652C09BC) - 1298791202) ^ v160;
  v165 = (v164 - ((2 * v164) & 0xC9264FAE) + 1687365591) ^ LODWORD(STACK[0x214]);
  v166 = (v165 - ((2 * v165) & 0x9CF422D2) - 830860951) ^ LODWORD(STACK[0x218]);
  v167 = ((v166 - ((2 * v166) & 0xEAE0F968) - 177177420) ^ LODWORD(STACK[0x268])) - 2 * (((v166 - ((2 * v166) & 0xEAE0F968) - 177177420) ^ LODWORD(STACK[0x268])) & 0x3BA4610F ^ (v166 - ((2 * v166) & 0xEAE0F968) - 177177420) & 0xA) - 1146855163;
  v168 = ((v167 ^ LODWORD(STACK[0x26C])) + 153796981 - 2 * ((v167 ^ LODWORD(STACK[0x26C])) & 0x92AC17D ^ v167 & 8)) ^ LODWORD(STACK[0x3AC]);
  v169 = (v168 - ((2 * v168) & 0x68AF7410) - 1269319160) ^ LODWORD(STACK[0x3B0]);
  v170 = (v169 + 166674674 - 2 * (v169 & 0x9EF40F6 ^ v168 & 4)) ^ LODWORD(STACK[0x274]);
  v171 = (v170 - ((2 * v170) & 0x11EC2A4E) + 150344999) ^ LODWORD(STACK[0x378]);
  v172 = (v171 + 2040871808 - ((2 * v171) & 0xF34A8C7E) + 2751) ^ LODWORD(STACK[0x228]);
  v173 = (((v172 - ((2 * v172) & 0x1568A39A) + 179589581) ^ LODWORD(STACK[0x23C])) + 1901256034 - 2 * (((v172 - ((2 * v172) & 0x1568A39A) + 179589581) ^ LODWORD(STACK[0x23C])) & 0x7152DD72 ^ (v172 - ((2 * v172) & 0x1568A39A) + 179589581) & 0x10)) ^ LODWORD(STACK[0x3B4]);
  LODWORD(STACK[0x568]) = v173 - ((2 * v173) & 0x28E190F8);
  v174 = HIBYTE(a119) ^ (a119 >> 17) ^ LODWORD(STACK[0x308]) ^ a74 ^ a78 ^ a76 ^ a75 ^ LODWORD(STACK[0x320]) ^ a57 ^ LODWORD(STACK[0x304]) ^ a69 ^ LODWORD(STACK[0x300]) ^ LODWORD(STACK[0x318]);
  v175 = (a119 >> 9) ^ 0x8FD32F0E;
  LODWORD(STACK[0x558]) = v175;
  v176 = v174 ^ v175 ^ a77 ^ a71;
  v177 = (LODWORD(STACK[0x468]) >> 28) ^ (LODWORD(STACK[0x468]) >> 27) ^ a122 ^ (LODWORD(STACK[0x2B8]) >> 2) ^ LODWORD(STACK[0x2A8]) ^ a121 ^ 0x29EFDD0D;
  v178 = (v177 ^ LODWORD(STACK[0x2AC])) + 1729987266 - ((2 * (v177 ^ LODWORD(STACK[0x2AC]))) & 0x4E3B0584);
  v179 = (v178 ^ LODWORD(STACK[0x3D8])) - 506238111 - 2 * ((v178 ^ LODWORD(STACK[0x3D8])) & 0x61D36B79 ^ v178 & 0x18);
  v180 = ((v179 ^ LODWORD(STACK[0x3D4])) - 1576106457 - 2 * ((v179 ^ LODWORD(STACK[0x3D4])) & 0x220E8637 ^ v179 & 0x10)) ^ LODWORD(STACK[0x3E4]);
  v181 = (v180 + 1481693657 - ((2 * v180) & 0xB0A1B3B2)) ^ LODWORD(STACK[0x46C]);
  v182 = (v181 - 254996456 - ((2 * v181) & 0xE19A2030)) ^ LODWORD(STACK[0x338]);
  v183 = (v182 - ((2 * v182) & 0x6C045210) - 1241372408) ^ a60;
  v184 = (v183 - ((2 * v183) & 0x7A2AF046) - 1122666461) ^ LODWORD(STACK[0x3F4]);
  v185 = (v184 - ((2 * v184) & 0xE1BB4440) + 1893573152) ^ LODWORD(STACK[0x3E8]);
  v186 = (v185 - ((2 * v185) & 0x92B279B6) - 916898597) ^ LODWORD(STACK[0x2B4]);
  v187 = (v186 - ((2 * v186) & 0x94E2E944) - 898534238) ^ LODWORD(STACK[0x470]);
  v188 = (16 * LODWORD(STACK[0x2B8])) ^ (32 * LODWORD(STACK[0x2B8])) ^ (LODWORD(STACK[0x2B8]) << 30) ^ LODWORD(STACK[0x2B0]) ^ (v187 << 11) ^ (32 * v187) ^ (4 * v187) ^ 0x3D4402E0;
  v189 = (v188 - ((2 * v188) & 0x3975ACFC) - 1665476994) ^ LODWORD(STACK[0x3F8]);
  v190 = (v189 - ((2 * v189) & 0xD1083A5E) - 393994962) ^ LODWORD(STACK[0x3F0]);
  v191 = (v190 - (a12 & (2 * v190)) - 299338129) ^ LODWORD(STACK[0x3EC]);
  v192 = (v191 - ((2 * v191) & 0xA70C9B90) - 746172984) ^ LODWORD(STACK[0x334]);
  v193 = (v192 - ((2 * v192) & 0x582F2DEA) - 1407740171) ^ a64;
  v194 = (v193 - ((2 * v193) & 0x233FFB16) + 295697803) ^ LODWORD(STACK[0x3FC]);
  v195 = (((v194 - ((2 * v194) & 0x66D399C4) + 862571746) ^ a123) - 2 * (((v194 - ((2 * v194) & 0x66D399C4) + 862571746) ^ a123) & 0x186ADE7F ^ (v194 - ((2 * v194) & 0x66D399C4) + 862571746) & 8) - 1737826697) ^ LODWORD(STACK[0x400]);
  v196 = (v195 + 1191709404 + (~(2 * v195) | 0x71EFEA49)) ^ LODWORD(STACK[0x404]);
  v197 = (v196 - ((2 * v196) & 0xE959E40C) + 1957491206) ^ LODWORD(STACK[0x2C4]);
  v198 = (v197 - ((2 * v197) & 0x76C2B5CA) - 1151247643) ^ LODWORD(STACK[0x47C]);
  v199 = (v198 - ((2 * v198) & 0xA0B82452) - 799272407) ^ LODWORD(STACK[0x2C8]);
  v200 = (v199 - ((2 * v199) & 0x394CEFE) - 2117441665) ^ LODWORD(STACK[0x340]);
  v201 = STACK[0x3D0];
  v202 = STACK[0x2A4];
  v203 = (LODWORD(STACK[0x3D0]) << 28) ^ (LODWORD(STACK[0x2A4]) << 12) ^ ((~LODWORD(STACK[0x3D0]) << 31) | 0x27179000) ^ 0x10000000;
  v204 = (v203 - 120426119 - ((2 * v203) & 0xF1A4E2F2)) ^ LODWORD(STACK[0x2A4]);
  v205 = (v204 - 736226784 - ((2 * v204) & 0xA83C2440)) ^ LODWORD(STACK[0x3C4]);
  v206 = (v205 - 1541685977 - 2 * (v205 & 0x241BBD2F ^ v204 & 8)) ^ LODWORD(STACK[0x3C0]);
  v207 = ((v206 ^ LODWORD(STACK[0x21C])) + 2033322904 - 2 * ((v206 ^ LODWORD(STACK[0x21C])) & 0x79320B9A ^ v206 & 2)) ^ LODWORD(STACK[0x3CC]);
  v208 = (v207 + 2108410861 - ((2 * v207) & 0xFB5797DA)) ^ LODWORD(STACK[0x3C8]);
  v209 = (v208 - 1554851554 - ((2 * v208) & 0x46A5B23C)) ^ LODWORD(STACK[0x3BC]);
  v210 = (v209 - 1292469135 - ((2 * v209) & 0x65ECF8E2)) ^ LODWORD(STACK[0x264]);
  v211 = (v210 + 1513271983 - ((2 * v210) & 0xB465655E)) ^ a65;
  v212 = (v211 ^ LODWORD(STACK[0x220])) + 175498925 - 2 * ((v211 ^ LODWORD(STACK[0x220])) & 0xA75E6AD ^ v211 & 0x20);
  v213 = (((v212 - 32) ^ LODWORD(STACK[0x374])) - 1341846780 - 2 * (((v212 - 32) ^ LODWORD(STACK[0x374])) & 0x30050B14 ^ v212 & 0x10)) ^ a118;
  v214 = STACK[0x28C];
  v215 = (((LODWORD(STACK[0x284]) >> 20) ^ 0x630) + 1522238997 - 2 * (((LODWORD(STACK[0x284]) >> 20) ^ 0x630) & 0x61F ^ (LODWORD(STACK[0x284]) >> 20) & 0xA)) ^ LODWORD(STACK[0x28C]);
  v216 = STACK[0x27C];
  v217 = (v215 + 548947494 - ((2 * v215) & 0x41708C4C)) ^ LODWORD(STACK[0x27C]);
  v218 = (v217 - 838185376 - ((2 * v217) & 0x1C149CC0)) ^ a68;
  v219 = STACK[0x37C];
  v220 = (v218 + 1770304106 - ((2 * v218) & 0x530964D4)) ^ LODWORD(STACK[0x37C]);
  v221 = (v220 - 1044349701 - ((2 * v220) & 0x380F9F6)) ^ a83;
  v222 = ((v221 ^ -v221 ^ (LODWORD(STACK[0x34C]) - (v221 ^ LODWORD(STACK[0x34C])))) + LODWORD(STACK[0x34C])) ^ (LODWORD(STACK[0x3D0]) >> 1) ^ 0x43627CC8;
  v223 = STACK[0x234];
  v224 = (v222 + 877821605 - ((2 * v222) & 0x68A4FD4A)) ^ LODWORD(STACK[0x234]);
  v225 = (v224 - 1427906813 - ((2 * v224) & 0x55C7BE06)) ^ a66;
  v226 = STACK[0x238];
  v227 = (v225 + 1211160912 - ((2 * v225) & 0x9061B2A0)) ^ LODWORD(STACK[0x238]);
  v228 = (v227 - 1237121524 - ((2 * v227) & 0x6C860C18)) ^ LODWORD(STACK[0x350]);
  v229 = STACK[0x22C];
  v230 = (v228 + 1321734826 - ((2 * v228) & 0x9D902554)) ^ LODWORD(STACK[0x22C]);
  v231 = STACK[0x224];
  v232 = (v230 - 1090697470 - ((2 * v230) & 0x7DFA8E04)) ^ LODWORD(STACK[0x224]);
  v233 = (v232 + 334339718 - ((2 * v232) & 0x27DB3D0C)) ^ a81;
  v234 = a79 ^ v187 ^ (v187 >> 21) ^ (v177 >> 27) ^ (32 * ((v187 >> 21) ^ (v177 >> 27))) ^ (4 * ((v187 >> 21) ^ (v177 >> 27))) ^ (((v187 >> 21) ^ (v177 >> 27)) << 11) ^ a117 ^ (v213 + 956863743 - ((2 * v213) & 0x721129FE)) ^ v233 ^ (v200 - ((2 * v200) & 0xFAE4A106) - 42839933);
  v235 = (v233 >> 27) ^ (v222 >> 30) ^ (v233 >> 21);
  v236 = v234 ^ (4 * v233) ^ (32 * v233) ^ (v233 << 11) ^ v235 ^ (4 * v235) ^ (32 * v235) ^ (v235 << 11) ^ (((a113 << 8) ^ (a113 << 15) ^ 0xCABA4300) - ((2 * ((a113 << 8) ^ (a113 << 15) ^ 0xCABA4300)) & 0x3AA95600) + 492088130) ^ (a61 << (a59 & 6) << ((a59 & 6 ^ 0xEF) & 4 | 0x10) << ((a59 & 6 ^ 0xEF) & 2)) ^ 0x992DE9AC;
  v237 = (a119 >> 5) ^ 0xFD839678;
  v238 = v176 ^ v237 ^ a108;
  v239 = v238 ^ 0xE4B9B110;
  v240 = (v236 - ((2 * v236) & 0x4842DF00) + 606171008) ^ (4 * (v238 ^ 0xE4B9B110)) ^ 0xAC9C5C4;
  v241 = (v240 - ((2 * v240) & 0x9BE00B2) - 2065760167) ^ (32 * (v238 ^ 0xE4B9B110)) ^ 0xF39A5279;
  v242 = v238 >> 21;
  LODWORD(STACK[0x564]) = v238 >> 21;
  v243 = (4 * (v238 >> 21)) ^ ((v238 ^ 0xE4B9B110) << 11) ^ (v241 - ((2 * v241) & 0x56073D62) - 1425826127);
  v244 = (32 * v242) ^ (v242 << 11) ^ 0x7A7C6C51 ^ v243;
  v245 = (v244 + 1993956275 - 2 * (v244 & 0x76D95BB7 ^ v243 & 4)) ^ a103;
  v246 = (a113 << 23) ^ 0xE1800000;
  v247 = a67 ^ (a113 << 27) ^ a89 ^ LODWORD(STACK[0x330]) ^ a105 ^ a88 ^ a87 ^ LODWORD(STACK[0x310]) ^ v246 ^ a104 ^ a114 ^ LODWORD(STACK[0x30C]) ^ LODWORD(STACK[0x560]) ^ v239 ^ (v245 - 2141352281 - ((2 * v245) & 0xBB1D4E));
  v248 = (a119 >> 28) ^ (a119 >> 27) ^ (a119 >> 2) ^ LODWORD(STACK[0x308]) ^ LODWORD(STACK[0x320]) ^ a110 ^ a109 ^ LODWORD(STACK[0x304]) ^ a93 ^ LODWORD(STACK[0x300]) ^ LODWORD(STACK[0x318]) ^ LODWORD(STACK[0x558]) ^ a108 ^ v237 ^ a107 ^ a111;
  v249 = (LODWORD(STACK[0x480]) >> 26) ^ (LODWORD(STACK[0x480]) >> 31) ^ (v201 >> 3) ^ 0x10D89F31;
  v250 = (v249 - 699726666 - ((2 * v249) & 0x2C96096C)) ^ LODWORD(STACK[0x280]);
  v251 = (v250 - 584439105 - ((2 * v250) & 0xBA54557E)) ^ LODWORD(STACK[0x288]);
  v252 = (v251 + 548947494 - ((2 * v251) & 0x41708C4C)) ^ v216;
  v253 = (v252 + 1522238997 - ((2 * v252) & 0xB5770C2A)) ^ v214;
  v254 = (v253 + 1770304106 - ((2 * v253) & 0xD30964D4)) ^ v219;
  v255 = (v254 - 1044349701 - ((2 * v254) & 0x8380F9F6)) ^ a83;
  v256 = (v255 + 877821605 - ((2 * v255) & 0x68A4FD4A)) ^ v223;
  v257 = (v256 + 1676268452 - ((2 * v256) & 0xC7D3A748)) ^ a84;
  v258 = (v257 + 1211160912 - ((2 * v257) & 0x9061B2A0)) ^ v226;
  v259 = (v258 - 111513416 - ((2 * v258) & 0xF2B4E170)) ^ a82;
  v260 = (v259 + 321713744 - ((2 * v259) & 0x2659ECA0)) ^ LODWORD(STACK[0x230]);
  v261 = (v260 + 1321734826 - ((2 * v260) & 0x9D902554)) ^ v229;
  v262 = (v261 - 1090697470 - ((2 * v261) & 0x7DFA8E04)) ^ v231;
  v263 = (v262 + 334339718 - ((2 * v262) & 0x27DB3D0C)) ^ a81;
  v264 = (v263 >> 27) ^ (v263 >> 21);
  v265 = (2 * v201) ^ (v201 << 6) ^ (v201 << 20) ^ (v201 << 29) ^ (4 * v263) ^ (32 * v263) ^ (v263 << 11) ^ (4 * v264) ^ (32 * v264) ^ (v264 << 11) ^ 0x5A79762;
  v266 = (v265 - 120426119 - ((2 * v265) & 0xF1A4E2F2)) ^ v202;
  v267 = (v266 - ((2 * v266) & 0x39B2FCC8) - 1663467932) ^ LODWORD(STACK[0x298]);
  v268 = (v267 - ((2 * v267) & 0xA1E4251C) + 1358041742) ^ LODWORD(STACK[0x29C]);
  v269 = (v268 - 736226784 - ((2 * v268) & 0xA83C2440)) ^ LODWORD(STACK[0x3C4]);
  v270 = (v269 - 1541685977 - 2 * (v269 & 0x241BBD37 ^ v268 & 0x10)) ^ LODWORD(STACK[0x3C0]);
  v271 = (v270 + 2033322904 - ((2 * v270) & 0xF2641730)) ^ LODWORD(STACK[0x3CC]);
  v272 = (v271 + 2108410861 - ((2 * v271) & 0xFB5797DA)) ^ LODWORD(STACK[0x3C8]);
  v273 = (v272 - 1554851554 - ((2 * v272) & 0x46A5B23C)) ^ LODWORD(STACK[0x3BC]);
  v274 = (v273 - 430210972 - ((2 * v273) & 0xCCB700C8)) ^ LODWORD(STACK[0x2A0]);
  v275 = (v274 - 1185802839 - ((2 * v274) & 0x72A42B52)) ^ LODWORD(STACK[0x3B8]);
  v276 = (v275 - 1461733012 - ((2 * v275) & 0x51BF72D8)) ^ LODWORD(STACK[0x278]);
  v277 = (v276 - 1341846780 - ((2 * v276) & 0x600A1608)) ^ a118;
  v278 = (v277 + 956863743 - ((2 * v277) & 0x721129FE)) ^ a117;
  v279 = (v248 >> 27) ^ (v248 >> 21);
  v248 ^= 0xFD8370BF;
  v280 = a95 ^ v263 ^ ((a86 << 30) - 1643904270) ^ v264 ^ (32 * a120) ^ (16 * a119) ^ (v278 - ((2 * v278) & 0x6AB5294E) + 895128743) ^ (4 * v248) ^ (32 * v248) ^ (v248 << 11) ^ (32 * v279) ^ (v279 << 11) ^ (((4 * v279) ^ 0xC64) - ((2 * ((4 * v279) ^ 0xC64)) & 0x1058) + 733628463) ^ 0x6D013F6E;
  v281 = a89 ^ (a113 << 27) ^ LODWORD(STACK[0x330]) ^ LODWORD(STACK[0x324]) ^ a115 ^ a88 ^ a91 ^ a87 ^ a116 ^ v246 ^ a114 ^ a90 ^ LODWORD(STACK[0x560]) ^ v248 ^ v279 ^ (v280 - 2141352281 - ((2 * v280) & 0xBB1D4E));
  v282 = LODWORD(STACK[0x410]) - 383716639;
  v283 = (v282 ^ 0xA64D50EA) & (2 * (v282 & 0x368D60EC)) ^ v282 & 0x368D60EC;
  v284 = ((2 * (v282 ^ 0x864D517A)) ^ 0x6180632C) & (v282 ^ 0x864D517A) ^ (2 * (v282 ^ 0x864D517A)) & 0xB0C03196;
  v285 = (v284 ^ 0x20000100) & (4 * v283) ^ v283;
  v286 = ((4 * (v284 ^ 0x90401092)) ^ 0xC300C658) & (v284 ^ 0x90401092) ^ (4 * (v284 ^ 0x90401092)) & 0xB0C03194;
  v287 = v286 & (16 * v285) ^ v285;
  v288 = ((16 * (v286 ^ 0x30C03186)) ^ 0xC031960) & (v286 ^ 0x30C03186) ^ (16 * (v286 ^ 0x30C03186)) & 0xB0C03190;
  v289 = v287 ^ 0xB0C03196 ^ (v288 ^ 0x1100) & (v287 << 8);
  LODWORD(STACK[0x4B0]) = v282 ^ (2 * ((v289 << 16) & 0x30C00000 ^ v289 ^ ((v289 << 16) ^ 0x31960000) & (((v288 ^ 0xB0C02096) << 8) & 0x30C00000 ^ 0x30C00000 ^ (((v288 ^ 0xB0C02096) << 8) ^ 0x40310000) & (v288 ^ 0xB0C02096))));
  v290 = LODWORD(STACK[0x414]) - 565900452;
  v291 = (v290 ^ 0xE80699BD) & (2 * (v290 & 0xED572220)) ^ v290 & 0xED572220;
  v292 = ((2 * (v290 ^ 0x7A829DBD)) ^ 0x2FAB7F3A) & (v290 ^ 0x7A829DBD) ^ (2 * (v290 ^ 0x7A829DBD)) & 0x97D5BF9C;
  v293 = (v292 ^ 0x7811900) & (4 * v291) ^ v291;
  v294 = ((4 * (v292 ^ 0x90548085)) ^ 0x5F56FE74) & (v292 ^ 0x90548085) ^ (4 * (v292 ^ 0x90548085)) & 0x97D5BF9C;
  v295 = (v294 ^ 0x1754BE00) & (16 * v293) ^ v293;
  v296 = ((16 * (v294 ^ 0x80810189)) ^ 0x7D5BF9D0) & (v294 ^ 0x80810189) ^ (16 * (v294 ^ 0x80810189)) & 0x97D5BF90;
  v297 = v295 ^ 0x97D5BF9D ^ (v296 ^ 0x1551B900) & (v295 << 8);
  LODWORD(STACK[0x3B4]) = v290 ^ (2 * ((v297 << 16) & 0x17D50000 ^ v297 ^ ((v297 << 16) ^ 0x3F9D0000) & (((v296 ^ 0x8284060D) << 8) & 0x17D50000 ^ 0x2400000 ^ (((v296 ^ 0x8284060D) << 8) ^ 0x55BF0000) & (v296 ^ 0x8284060D))));
  v298 = (LOBYTE(STACK[0xA97]) << 16) | (LOBYTE(STACK[0x9DE]) << 8) | LOBYTE(STACK[0x925]);
  LODWORD(STACK[0x4D0]) = LODWORD(STACK[0x498]) + STACK[0x490] - LODWORD(STACK[0x49C]);
  LODWORD(STACK[0x4E8]) = (LOBYTE(STACK[0x933]) << 16) | (LOBYTE(STACK[0x87A]) << 8) | (LOBYTE(STACK[0x9EC]) << 24);
  LODWORD(STACK[0x4EC]) = (LOBYTE(STACK[0x86C]) | (v298 << 8)) + 2095811506 - 2 * ((LOBYTE(STACK[0x86C]) | (v298 << 8)) & 0x7CEB8BBA ^ STACK[0x86C] & 8);
  v299 = LOBYTE(STACK[0xA08]) - ((2 * LOBYTE(STACK[0xA08])) & 0x4A) - 642035931;
  v300 = (v299 ^ 0x44B0D0) & ((((LOBYTE(STACK[0x7B3]) << 16) ^ 0x8FAE8F9) & ~(LOBYTE(STACK[0xAC1]) << 8) | (LOBYTE(STACK[0xAC1]) << 8) & 0x1700) ^ 0x79ED0C) ^ v299 & 0x87A0A;
  v301 = LOBYTE(STACK[0x94F]) - ((2 * LOBYTE(STACK[0x94F])) & 0xFFC3) - 889043487;
  LODWORD(STACK[0x4F0]) = ((v300 << 8) ^ 0x49FA4440) & (v301 ^ 0x34FDBA36) ^ v301 & 0x80246BF;
  v302 = LOBYTE(STACK[0x95D]) - ((2 * LOBYTE(STACK[0x95D])) & 0x11A) - 593460851;
  v303 = (v302 ^ 0x5F7E42) & ((((LOBYTE(STACK[0xACF]) << 16) ^ 0xD04BC4CA) & ~(LOBYTE(STACK[0xA16]) << 8) | (LOBYTE(STACK[0xA16]) << 8) & 0x3B00) ^ 0x83CA01) ^ v302 & 0x20F134;
  v304 = LOBYTE(STACK[0x8A4]) - ((2 * LOBYTE(STACK[0x8A4])) & 0xB0) + 1196681560;
  LODWORD(STACK[0x4DC]) = v304;
  LODWORD(STACK[0x4E0]) = ((v303 << 8) ^ 0x777F36A1) & (v304 ^ 0xB8AC16BB);
  v305 = LOBYTE(STACK[0xA32]);
  v306 = (LOBYTE(STACK[0xAEB]) << 8) | (LOBYTE(STACK[0x896]) << 24) | (LOBYTE(STACK[0x7DD]) << 16) | v305;
  LODWORD(STACK[0x4F4]) = v306 - 2 * (v306 & 0xD35244E ^ v305 & 2);
  LODWORD(STACK[0x4CC]) = (LOBYTE(STACK[0xAF9]) << 8) | (LOBYTE(STACK[0x7EB]) << 16) | LOBYTE(STACK[0xA40]);
  v307 = LOBYTE(STACK[0x74E]) - ((2 * LOBYTE(STACK[0x74E])) & 0x108);
  v308 = LOBYTE(STACK[0x807]) - ((2 * LOBYTE(STACK[0x807])) & 0x5A) - 2075235539;
  v309 = ((((LOBYTE(STACK[0x979]) << 16) ^ 0x447536B) & ~((LOBYTE(STACK[0x8C0]) ^ 0xC1) << 8) | ((LOBYTE(STACK[0x8C0]) ^ 0xC1) << 8) & 0xAC00) ^ 0xBFE57F) & (v308 ^ 0xB1945B) ^ v308 & 0x609EB;
  v310 = ((LOBYTE(STACK[0x75C]) - ((2 * LOBYTE(STACK[0x75C])) & 0x112)) << 8) - 1872066304;
  v311 = (v310 ^ 0x6F957403) & ((((LOBYTE(STACK[0x8CE]) << 24) ^ 0x64ECA63) & ~(LOBYTE(STACK[0x815]) << 16) | (LOBYTE(STACK[0x815]) << 16) & 0xB10000) ^ 0xFDF2B760) ^ v310 & 0x438200 ^ 0xE645D5B5;
  v312 = LOBYTE(STACK[0xA6A]);
  v313 = v312 - ((2 * v312) & 0x48) + 1546607396;
  LODWORD(STACK[0x498]) = v313;
  LODWORD(STACK[0x49C]) = v311 & (v313 ^ 0xA3D0A4DB);
  LODWORD(STACK[0x4C0]) = ((v309 << 8) ^ 0xDAF40CF9) & ((v307 + 1901920132) ^ 0x8EA3007B) ^ (v307 + 1901920132) & 0x4114CE06;
  v314 = LOBYTE(STACK[0x8F8]) | (LOBYTE(STACK[0x9B1]) << 8);
  v315 = LOBYTE(STACK[0x831]);
  v316 = v315 | (((LOBYTE(STACK[0xA5C]) << 16) | (LOBYTE(STACK[0x9A3]) << 8) | LOBYTE(STACK[0x8EA])) << 8);
  LODWORD(STACK[0x4BC]) = v316 - 2 * (v316 & 0x7519A03F ^ v315 & 0xE);
  v317 = (v314 | 0x9E0000u) << ((((v315 & 8) - 8) ^ v315 & 8 ^ 8 ^ -(v315 & 8 ^ 8)) + (v315 & 8u));
  v318 = ((LOBYTE(STACK[0x778]) << 16) ^ 0x4958B2) & ~(LOBYTE(STACK[0xA86]) << 8) | (LOBYTE(STACK[0xA86]) << 8) & 0xA700;
  LODWORD(STACK[0x4B4]) = v317 ^ LOBYTE(STACK[0x83F]);
  LODWORD(v317) = LOBYTE(STACK[0x9CD]) - ((2 * LOBYTE(STACK[0x9CD])) & 0x1EA) + 225307893;
  LODWORD(v317) = (v317 ^ 0x921300) & (v318 ^ 0xDCDE06) ^ v317 & 0x40694B;
  v319 = LOBYTE(STACK[0x922]) - ((2 * LOBYTE(STACK[0x922])) & 0xFFF7) - 1474065925;
  v320 = (v319 ^ 0xDC7600) & ((((LOBYTE(STACK[0xA94]) << 16) ^ 0x88D34307) & ~(LOBYTE(STACK[0x9DB]) << 8) | (LOBYTE(STACK[0x9DB]) << 8) & 0xBC00) ^ 0x25E8D5) ^ v319 & 0x42D;
  v321 = LOBYTE(STACK[0x914]) - ((2 * LOBYTE(STACK[0x914])) & 0x15A) - 902243411;
  LODWORD(STACK[0x4B8]) = ((v317 << 8) ^ 0x4C1F992B) & (v321 ^ 0x35C72486) ^ v321 & 0x420893D4;
  v322 = LOBYTE(STACK[0x869]) - ((2 * LOBYTE(STACK[0x869])) & 0x130) - 541965416;
  LODWORD(STACK[0x400]) = v322;
  LODWORD(STACK[0x404]) = (v322 ^ 0x204DBC44) & ((v320 << 8) ^ 0xD1869F5C);
  LODWORD(v317) = (LOBYTE(STACK[0xABE]) << 8) | (LOBYTE(STACK[0x7B0]) << 16);
  v323 = LOBYTE(STACK[0x9F7]);
  v324 = (LOBYTE(STACK[0x7A2]) << 16) | (LOBYTE(STACK[0xAB0]) << 8) | (LOBYTE(STACK[0x85B]) << 24) | v323;
  LODWORD(STACK[0x4C8]) = v324 + 1998703899 - 2 * (v324 & 0x7721CD1F ^ v323 & 4);
  LODWORD(STACK[0x47C]) = v317 | LOBYTE(STACK[0xA05]);
  v325 = LOBYTE(STACK[0xADA]) - ((2 * LOBYTE(STACK[0xADA])) & 0xFFF3) + 66955769;
  LODWORD(STACK[0x490]) = (((((((LOBYTE(STACK[0x93E]) << 16) ^ 0xB94A8A) & ~(LOBYTE(STACK[0x885]) << 8) | (LOBYTE(STACK[0x885]) << 8) & 0xB500) ^ 0xC46E9) & (LOBYTE(STACK[0x7CC]) ^ 0xFFFF36) | STACK[0x7CC] & 0x9C) << 8) ^ 0x81312013) & (v325 ^ 0xFC025682) ^ v325 & 0x1802CEC;
  v326 = LOBYTE(STACK[0xAE8]) - ((2 * LOBYTE(STACK[0xAE8])) & 0x15C) - 1496412754;
  LODWORD(v317) = (v326 ^ 0x3172D7) & ((((LOBYTE(STACK[0x893]) << 16) ^ 0x84C5266F) & ~(LOBYTE(STACK[0x7DA]) << 8) | (LOBYTE(STACK[0x7DA]) << 8) & 0xD900) ^ 0x7003E) ^ v326 & 0x809AE;
  v327 = (LOBYTE(STACK[0xA21]) << 16) | (LOBYTE(STACK[0x968]) << 8) | LOBYTE(STACK[0x8AF]);
  v328 = LOBYTE(STACK[0xA2F]) - ((2 * LOBYTE(STACK[0xA2F])) & 0xE4) + 744870770;
  LODWORD(STACK[0x3F8]) = v328;
  LODWORD(STACK[0x3FC]) = ((v317 << 8) ^ 0x6B6C7A79) & (v328 ^ 0xD39A2C0F);
  LODWORD(STACK[0x480]) = (LOBYTE(STACK[0x7F6]) | (v327 << 8)) - 2 * ((LOBYTE(STACK[0x7F6]) | (v327 << 8)) & 0x616FAFD7 ^ STACK[0x7F6] & 3);
  LODWORD(STACK[0x414]) = (LOBYTE(STACK[0x976]) << 16) | (LOBYTE(STACK[0x8BD]) << 8) | LOBYTE(STACK[0x804]);
  LODWORD(v317) = (LOBYTE(STACK[0xA4B]) << 8) | (LOBYTE(STACK[0xB04]) << 16);
  v329 = LOBYTE(STACK[0x992]) - ((2 * LOBYTE(STACK[0x992])) & 0xC4) - 1917239454;
  LODWORD(v317) = ((v317 - ((2 * v317) & 0xF18600) + 16303003) ^ 0x5C99EA) & (v329 ^ 0x46C09D) ^ v329 & 0x19A58E;
  v330 = LOBYTE(STACK[0x8D9]) - 2 * (STACK[0x8D9] & 0x7F) - 1548875393;
  v331 = ((v317 << 8) ^ 0x7292ABB5) & (v330 ^ 0x5C51F680) ^ v330 & 0x2074A;
  LODWORD(STACK[0x3AC]) = v331;
  v332 = LOBYTE(STACK[0x8E7]) - ((2 * LOBYTE(STACK[0x8E7])) & 0x68) + 715111988;
  LODWORD(v317) = (v332 ^ 0x6041CA) & ((((LOBYTE(STACK[0xA59]) << 16) ^ 0x23F416E) & ((LOBYTE(STACK[0x9A0]) << 8) ^ 0x2AFFE77E) | (LOBYTE(STACK[0x9A0]) << 8) & 0xBE00) ^ 0x4BD5A4) ^ v332 & 0x30B35;
  v333 = LOBYTE(STACK[0x82E]) - ((2 * LOBYTE(STACK[0x82E])) & 0x4C) + 694152486;
  LODWORD(STACK[0x46C]) = v333;
  LODWORD(STACK[0x470]) = ((v317 << 8) ^ 0x5464E165) & (v333 ^ 0xD6A01241);
  v334 = (LOBYTE(STACK[0x775]) << 16) | (LOBYTE(STACK[0xA83]) << 8);
  v335 = LOBYTE(STACK[0x9BC]);
  LODWORD(v317) = v335 | (((LOBYTE(STACK[0x820]) << 16) | (LOBYTE(STACK[0x767]) << 8) | LOBYTE(STACK[0xA75])) << 8);
  LODWORD(STACK[0x410]) = v317 - 2 * (v317 & 0x5720549E ^ v335 & 0xC);
  LODWORD(v317) = v334 | LOBYTE(STACK[0x9CA]);
  v336 = LOBYTE(STACK[0x791]) - ((2 * LOBYTE(STACK[0x791])) & 0x9C) - 1965183666;
  v337 = (v336 ^ 0x225201) & ((((LOBYTE(STACK[0x903]) << 16) ^ 0x829A184) & ~(LOBYTE(STACK[0x84A]) << 8) | (LOBYTE(STACK[0x84A]) << 8) & 0x5E00) ^ 0xBEEB85) ^ v336 & 0x5FE;
  v338 = LOBYTE(STACK[0xA9F]) - 1448032911 + (~(2 * LOBYTE(STACK[0xA9F])) | 0xFFFFFF1F);
  LODWORD(STACK[0x468]) = ((v337 << 8) ^ 0xA90C9CB3) & (v338 ^ 0x564F3ACF) ^ v338 & 0x90044C;
  v339 = LOBYTE(STACK[0xAAD]) - ((2 * LOBYTE(STACK[0xAAD])) & 0x48) - 1219292892;
  v340 = (v339 ^ 0xACEE93) & ((((LOBYTE(STACK[0x858]) << 16) ^ 0x879ABE6A) & ~(LOBYTE(STACK[0x79F]) << 8) | (LOBYTE(STACK[0x79F]) << 8) & 0x4100) ^ 0xB2CCDD) ^ v339 & 0x130D48;
  LODWORD(STACK[0x3C4]) = LOBYTE(STACK[0x911]) | (v317 << 8);
  v341 = LOBYTE(STACK[0x9F4]) - ((2 * LOBYTE(STACK[0x9F4])) & 0x13C) + 1283571614;
  LODWORD(STACK[0x3E8]) = v341;
  LODWORD(STACK[0x3EC]) = ((v340 << 8) ^ 0x28EF3A88) & (v341 ^ 0xB37E4013);
  v342 = *(STACK[0x580] + 123);
  LODWORD(v317) = (LOBYTE(STACK[0x874]) << 8) | (LOBYTE(STACK[0x9E6]) << 24) | (LOBYTE(STACK[0x92D]) << 16) | v342;
  LODWORD(STACK[0x3E4]) = v317 - 2 * (v317 & 0x626EA917 ^ v342 & 4);
  LODWORD(STACK[0x3D8]) = (LOBYTE(STACK[0x93B]) << 16) | (LOBYTE(STACK[0x882]) << 8) | LOBYTE(STACK[0x7C9]);
  v343 = LOBYTE(STACK[0x957]) - ((2 * LOBYTE(STACK[0x957])) & 0xA4) + 210089298;
  LODWORD(v317) = (v343 ^ 0x7A4A09) & ((((LOBYTE(STACK[0xAC9]) << 16) ^ 0x8BFA5EA) & ~(LOBYTE(STACK[0xA10]) << 8) | (LOBYTE(STACK[0xA10]) << 8) & 0x5A00) ^ 0x545EF3) ^ v343 & 0x4E6;
  v344 = LOBYTE(STACK[0x8AC]) - ((2 * LOBYTE(STACK[0x8AC])) & 0x1C0) - 1144763424;
  v345 = (v344 ^ 0x3BB410) & ((((LOBYTE(STACK[0xA1E]) << 16) ^ 0x21AD8FA1) & ~(LOBYTE(STACK[0x965]) << 8) & 0xFFFF8FFF | (((LOBYTE(STACK[0x965]) >> 4) & 7) << 12)) ^ 0x81D51) ^ v344 & 0x4D0F;
  v346 = LOBYTE(STACK[0x89E]) - ((2 * LOBYTE(STACK[0x89E])) & 0x32) - 1754007527;
  LODWORD(STACK[0x3D4]) = (v346 ^ 0x688C07E0) & ((v317 << 8) ^ 0x645079F8) ^ v346 & 0x10DD07;
  v347 = LOBYTE(STACK[0x7F3]) - ((2 * LOBYTE(STACK[0x7F3])) & 0x9C) - 1716761778;
  LODWORD(STACK[0x3C0]) = v347;
  LODWORD(STACK[0x3CC]) = ((v345 << 8) ^ 0xCC9675CC) & (v347 ^ 0x6653B482);
  LODWORD(v317) = LOBYTE(STACK[0xA3A]) | ((LOBYTE(STACK[0xAF3]) ^ 0xC1) << 8) | (LOBYTE(STACK[0x7E5]) << 16);
  LODWORD(STACK[0x3BC]) = (LOBYTE(STACK[0xA48]) << 8) | (LOBYTE(STACK[0xB01]) << 16) | LOBYTE(STACK[0x98F]);
  v348 = ((LOBYTE(STACK[0x8C8]) << 16) ^ 0x82C22E61) & ~(LOBYTE(STACK[0x80F]) << 8) | (LOBYTE(STACK[0x80F]) << 8) & 0xD100;
  LODWORD(STACK[0x3B8]) = (LOBYTE(STACK[0x981]) | (v317 << 8)) - 2 * ((LOBYTE(STACK[0x981]) | (v317 << 8)) & 0x476A17FA ^ STACK[0x981] & 0x1A);
  LODWORD(v317) = LOBYTE(STACK[0x756]) - ((2 * LOBYTE(STACK[0x756])) & 0x78) - 1566563012;
  LODWORD(v317) = (v317 ^ 0x5FDAC0) & (v348 ^ 0xAAA91) ^ v317 & 0x230F;
  v349 = LOBYTE(STACK[0xA72]) - ((2 * LOBYTE(STACK[0xA72])) & 0x12E) + 1943413911;
  v350 = ((((LOBYTE(STACK[0x81D]) << 16) ^ 0x206622C6) & ~(LOBYTE(STACK[0x764]) << 8) | (LOBYTE(STACK[0x764]) << 8) & 0xDDDD) ^ 0x109427) & (v349 ^ 0x29DB68) ^ v349 & 0x80011E;
  v351 = LOBYTE(STACK[0xA64]) - ((2 * LOBYTE(STACK[0xA64])) & 4) - 2081973758;
  LODWORD(STACK[0x3D0]) = ((v317 << 8) ^ 0x34FDFD16) & (v351 ^ 0x7C18651D) ^ v351 & 0xA41AE9;
  v352 = LOBYTE(STACK[0x9B9]);
  LODWORD(STACK[0x3F4]) = v352;
  LODWORD(STACK[0x3F0]) = v352 - 2004544126;
  v353 = v352 - 2004544126 - ((2 * v352) & 0x104);
  LODWORD(STACK[0x3B0]) = v353;
  LODWORD(STACK[0x3C8]) = ((v350 << 8) ^ 0x371C918C) & (v353 ^ 0x777AEA1D);
  LODWORD(v317) = ((LODWORD(STACK[0x594]) ^ 0x2332CA71) - 1106590739) ^ ((LODWORD(STACK[0x594]) ^ 0x82DDB6EA) + 535150456) ^ ((LODWORD(STACK[0x594]) ^ 0x23D0116A) - 1092085512);
  LODWORD(STACK[0x6B0]) = -2009212831 * (((LODWORD(STACK[0x484]) ^ 0xD98D4FB0) + 1167901849) ^ ((LODWORD(STACK[0x484]) ^ 0xB6CC7771) + 719191130) ^ ((LODWORD(STACK[0x484]) ^ 0x2B5E8B1A) - 1219559373)) - 336479666;
  LODWORD(STACK[0x6B4]) = -2009212831 * (((v281 ^ 0x8ED00A02) - 1216185349) ^ ((v281 ^ 0xC04C58F) + 894874744) ^ ((v281 ^ 0x23251106) + 444031231)) - 1697393714;
  LODWORD(STACK[0x358]) = a112 ^ (-1663319554 - 1673081951 * a25);
  LODWORD(STACK[0x3A8]) = a112 ^ (-1663319554 - 1673081951 * a22);
  LODWORD(STACK[0x3A4]) = a112 ^ (-1663319554 - 1673081951 * a23);
  LODWORD(STACK[0x3A0]) = a112 ^ (-1663319554 - 1673081951 * a24);
  LODWORD(STACK[0x37C]) = a112 ^ (-1663319554 - 1673081951 * a26);
  LODWORD(STACK[0x378]) = a112 ^ (-1663319554 - 1673081951 * a27);
  LODWORD(STACK[0x374]) = a112 ^ (-1663319554 - 1673081951 * a28);
  LODWORD(STACK[0x35C]) = a112 ^ (-1663319554 - 1673081951 * a29);
  LODWORD(STACK[0x560]) = a112 ^ 0x830F313C;
  LODWORD(STACK[0x6B8]) = -2009212831 * (a112 ^ 0x830F313C) - 75026750;
  v354 = (((v331 & 0x883DD861 ^ 0x27F41464) + 1306686897) ^ ((v331 & 0x883DD861 ^ 0x57EAC9F) + 1869139276) ^ ((v331 & 0x883DD861 ^ 0x2AA6A09A) + 1085325647)) + (((v331 & 0x883DD861 ^ 0x931D60E4) - 2122528219) ^ ((v331 & 0x883DD861 ^ 0x19866D96) + 199739223) ^ ((v331 & 0x883DD861 ^ 0xA8ACD72) + 418080691));
  v355 = v247 ^ LODWORD(STACK[0x564]);
  v356 = ((LODWORD(STACK[0x43C]) ^ 0x542E1FF2) - 35824337) ^ ((LODWORD(STACK[0x43C]) ^ 0xAB7B5681) + 42472542) ^ ((LODWORD(STACK[0x43C]) ^ 0xC5BC150C) + 1817139153);
  v357 = LODWORD(STACK[0x59C]) ^ (LODWORD(STACK[0x598]) >> 21);
  v358 = LODWORD(STACK[0x56C]) ^ LODWORD(STACK[0x2EC]) ^ (16 * LODWORD(STACK[0x2E8])) ^ (32 * LODWORD(STACK[0x2E8])) ^ (LODWORD(STACK[0x2E8]) << 28) ^ (LODWORD(STACK[0x2E8]) << 30) ^ LODWORD(STACK[0x2D8]) ^ LODWORD(STACK[0x294]) ^ LODWORD(STACK[0x40C]) ^ LODWORD(STACK[0x24C]) ^ LODWORD(STACK[0x2DC]) ^ LODWORD(STACK[0x290]) ^ LODWORD(STACK[0x408]) ^ LODWORD(STACK[0x2D4]) ^ LODWORD(STACK[0x2D0]) ^ LODWORD(STACK[0x2E4]) ^ LODWORD(STACK[0x2CC]) ^ LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x570]) ^ (4 * LODWORD(STACK[0x570])) ^ (32 * LODWORD(STACK[0x570])) ^ (LODWORD(STACK[0x570]) << 11) ^ LODWORD(STACK[0x588]) ^ (32 * LODWORD(STACK[0x588])) ^ (4 * LODWORD(STACK[0x588])) ^ (LODWORD(STACK[0x588]) << 11) ^ STACK[0x398] ^ (STACK[0x398] << 12) ^ (STACK[0x398] << 31) ^ LODWORD(STACK[0x380]) ^ LODWORD(STACK[0x370]) ^ LODWORD(STACK[0x36C]) ^ LODWORD(STACK[0x250]) ^ LODWORD(STACK[0x394]) ^ LODWORD(STACK[0x390]) ^ LODWORD(STACK[0x368]) ^ LODWORD(STACK[0x248]) ^ LODWORD(STACK[0x240]) ^ LODWORD(STACK[0x364]) ^ LODWORD(STACK[0x244]) ^ LODWORD(STACK[0x360]) ^ LODWORD(STACK[0x38C]) ^ LODWORD(STACK[0x598]) ^ (4 * LODWORD(STACK[0x598])) ^ (32 * LODWORD(STACK[0x598])) ^ (LODWORD(STACK[0x598]) << 11) ^ v357 ^ (4 * v357) ^ (32 * v357) ^ (v357 << 11) ^ 0xBBA6BB76 ^ (LODWORD(STACK[0x568]) - 1804547972);
  LODWORD(STACK[0x558]) = v358;
  LODWORD(STACK[0x6C4]) = -2009212831 * v356 - 944557410;
  LODWORD(STACK[0x6C0]) = (v354 - 1638563832) * (v317 + 1142741397) + 1828690817 * v317 + 1639045909;
  LODWORD(STACK[0x6C8]) = -75026750 - 2009212831 * v358;
  LODWORD(STACK[0x6BC]) = -2009212831 * (((v355 ^ 0x2CE3F098) + 157505728) ^ ((v355 ^ 0x21B5268C) + 70618796) ^ ((v355 ^ 0xB83CEA3E) - 1648606694)) + 1851999604;
  v359 = LODWORD(STACK[0x488]) ^ 0xB87D8463;
  LODWORD(STACK[0x6CC]) = -75026750 - 2009212831 * v359;
  v360 = LOBYTE(STACK[0x74B]);
  LODWORD(STACK[0x40C]) = v360;
  LOBYTE(v360) = ((v360 & 0x83 ^ 0x83) + (v360 & 0x83)) ^ 0xD2;
  LODWORD(STACK[0x350]) = v355 ^ 0xB56A3C2A;
  v361 = (v355 ^ 0xB56A3C2A) >> (v360 & 0x11 | 8) >> (v360 & 0xC6 ^ 0x42);
  v362 = (v247 >> 21) ^ 0x9B11E543;
  v363 = (v247 >> 14) ^ 0xB605537;
  v364 = (v247 >> 18) ^ 0xAA2FCB2B;
  v365 = (v247 >> 11) ^ 0xD2844D3F;
  v366 = (v247 >> 13) ^ 0x2AEC5C1F;
  v367 = v355;
  v368 = (v355 >> 10) ^ 0x93E4303D ^ (v355 >> 9) ^ 0x59800994;
  v369 = (v355 >> 5) ^ 0x390CA720;
  LODWORD(STACK[0x59C]) = v369;
  v370 = (v355 >> 6) ^ 0x25D0D694;
  v371 = (v355 >> 4) ^ 0x9E1C7894;
  v372 = v355 ^ 0xDA7F57D8;
  v373 = ((v372 >> 29) | 0xBBE0D418) ^ (v247 >> 30);
  v374 = (v247 >> 28) ^ (v247 >> 15) ^ (v247 >> 19) ^ (v355 >> 2) ^ v363 ^ v364 ^ v362 ^ v365 ^ v366 ^ v368 ^ v370 ^ v369 ^ v371 ^ v373 ^ v361;
  LODWORD(STACK[0x330]) = v374;
  LODWORD(STACK[0x334]) = (((v374 ^ 0xB09505ED) >> 27) | 0x3BFE31C0) ^ ((v374 ^ 0xB09505ED) >> 21);
  v375 = (v247 >> 22) ^ 0xF71A6FCF ^ v362 ^ (v247 >> 19) ^ 0x9F5ED5FF;
  v376 = HIWORD(v247) ^ 0x63A7FA9A;
  v377 = (v355 >> 1) ^ (v247 >> 20) ^ v375 ^ v364 ^ v363 ^ v376 ^ v366;
  v378 = v365 ^ (v247 >> 12) ^ 0x1313908B;
  v379 = (v355 >> 7) ^ 0x65050205;
  v380 = v377 ^ v370 ^ v378 ^ v379 ^ v371;
  v381 = ((v367 ^ 0xDA7F57D8) >> 25) ^ 0x37;
  v382 = v380 ^ v381;
  v383 = (v380 ^ v381 ^ 0x5649D0AC) >> (((v372 >> 25) & 0x1E ^ 0x16) + ((v372 >> 25) & 0x1E ^ 8));
  v384 = (v380 >> 21) ^ (v380 >> 27) ^ (v383 - ((2 * v383) & 0xEA) + 117);
  LODWORD(STACK[0x2C8]) = v367;
  v385 = (v372 << 11) ^ 0x6B6E0333;
  LODWORD(v383) = (v372 << 7) ^ 0x890F0CBA;
  v386 = (v372 << 10) ^ 0xCD3DACD5;
  LODWORD(STACK[0x2D8]) = v385;
  v387 = v281 ^ (v367 << 31) ^ v372 ^ (v372 << 12) ^ v383 ^ v386 ^ v385;
  v388 = (v372 << 14) ^ 0xFB061770;
  LODWORD(STACK[0x30C]) = v388;
  v389 = (v372 << 13) ^ 0x2C11C2EB;
  v390 = (v372 << 16) ^ 0x99B05288;
  LODWORD(STACK[0x2E0]) = v389;
  v391 = (v372 << 18) ^ 0x14780B90;
  LODWORD(STACK[0x2DC]) = v391;
  v392 = v387 ^ v389 ^ v388 ^ v390 ^ v391;
  v393 = (v372 << 19) ^ 0xB2219140;
  LODWORD(STACK[0x304]) = v393;
  v394 = (v372 << 21) ^ 0x7BF2C34A;
  LODWORD(STACK[0x308]) = v394;
  v395 = (v372 << 20) ^ 0x298CA6CA;
  v396 = v393 ^ v394 ^ v395;
  v397 = (v372 << 25) ^ 0x7D55F164;
  v398 = (v372 << 26) ^ 0x69834270;
  LODWORD(STACK[0x300]) = v398;
  v399 = v392 ^ v396 ^ v397 ^ v398;
  v400 = (v372 << 28) ^ 0xF7D596B6;
  LODWORD(STACK[0x2EC]) = v400;
  v401 = v399 ^ v400 ^ v382 ^ 0xFF43AFB6 ^ (4 * (v382 ^ 0xFF43AFB6)) ^ (32 * (v382 ^ 0xFF43AFB6)) ^ ((v382 ^ 0xFF43AFB6) << 11) ^ v384 ^ (4 * v384) ^ (v384 << 11) ^ (((32 * v384) ^ 0x59A0) - ((2 * ((32 * v384) ^ 0x59A0)) & 0x6500) - 361614714);
  LOBYTE(v382) = -69 * ((v401 & 0x6F ^ 0x66) + (v401 & 0x6F ^ 9)) - ((118 * ((v401 & 0x6F ^ 0x66) + (v401 & 0x6F ^ 9))) & 0x3C) - 98;
  v402 = v367 ^ 0xB56A3C2ALL;
  LOBYTE(v312) = (v312 & 0x1A ^ 0x1A) + (v312 & 0x1A) - ((2 * ((v312 & 0x1A ^ 0x1A) + (v312 & 0x1A))) & 0x60) - 15;
  v403 = v402 << (v312 & 0x54 ^ 0x50u) << (v312 & 0xAB ^ 0xA1u);
  LODWORD(v403) = (v372 << 8) ^ (v372 << 15) ^ (v372 << 24) ^ (v403 - ((2 * v403) & 0x8CC3C7BE) + 1180820447) ^ 0x14F311DF ^ (v402 << (v382 & 0x1D ^ 0x1Cu) << (v382 & 0xE2 ^ 0x82u));
  v404 = HIBYTE(v247) ^ (v247 >> 17) ^ (v367 >> 8) ^ v375 ^ v376 ^ v363 ^ v378 ^ v368 ^ v379 ^ v370 ^ LODWORD(STACK[0x59C]) ^ v373 ^ (v381 - ((2 * v381) & 0x4E) + 1663382951);
  v405 = v404 ^ 0xC36B06C6;
  LODWORD(v403) = (v403 - ((2 * v403) & 0x2374F720) + 297434000) ^ (4 * (v404 ^ 0xC36B06C6)) ^ 0xC2C59B7C;
  v406 = (v403 - ((2 * v403) & 0xFA04DF20) + 2097311632) ^ (32 * (v404 ^ 0xC36B06C6)) ^ 0xE6FD68F0;
  v407 = v406 + 284982870 - 2 * (v406 & 0x10FC7E5E ^ v403 & 8);
  LODWORD(v403) = LODWORD(STACK[0x560]) ^ v383;
  STACK[0x2B8] = v372;
  v408 = (8 * v372) ^ (4 * v372);
  LODWORD(STACK[0x2D4]) = v408;
  LODWORD(v403) = v408 ^ v403 ^ v386 ^ v385 ^ v389;
  v409 = (v372 << 22) ^ 0x68678564;
  LODWORD(STACK[0x2D0]) = v409;
  LODWORD(v403) = v403 ^ v390 ^ v395 ^ v391 ^ v409;
  v410 = (v372 << 23) ^ 0x37CA1C6A;
  LODWORD(STACK[0x2CC]) = v410;
  v411 = v410 ^ v397;
  v412 = (v372 << 27) ^ 0x345E144D;
  LODWORD(STACK[0x2C4]) = v412;
  v404 >>= 21;
  LODWORD(STACK[0x2B4]) = v359 >> 31;
  LODWORD(STACK[0x408]) = (v359 >> 26) ^ (v359 >> 3) ^ (v359 >> 31) ^ (v359 >> 12) ^ (v359 >> 10) ^ HIWORD(v359) ^ (v359 >> 15) ^ (v359 >> 30) ^ (v359 >> 29) ^ (v359 >> 25) ^ (v359 >> 22) ^ (v359 >> 19) ^ (v359 >> 18) ^ (v359 >> 8) ^ (v359 >> 7) ^ (v359 >> 6) ^ (v359 >> 4);
  v413 = (v359 >> 29) ^ (v359 >> 30);
  LODWORD(v317) = (8 * v359) ^ (4 * v359);
  LODWORD(STACK[0x394]) = v317;
  LODWORD(STACK[0x320]) = v359 & 0x1FFFFF ^ __ROR4__((16 * v359) ^ (32 * v359) ^ v317, 11);
  v414 = (v359 >> 28) ^ (v359 >> 27) ^ (v359 >> 2) ^ (v359 >> 15) ^ (v359 >> 18) ^ (v359 >> 21) ^ (v359 >> 19) ^ (v359 >> 14) ^ (v359 >> 11) ^ (v359 >> 13) ^ (v359 >> 9) ^ (v359 >> 10) ^ (v359 >> 6) ^ (v359 >> 5) ^ (v359 >> 4);
  v415 = (v359 >> 20) ^ (v359 >> 1) ^ (v359 >> 25) ^ (v359 >> 21) ^ (v359 >> 22) ^ (v359 >> 19) ^ (v359 >> 18) ^ (v359 >> 14) ^ (v359 >> 13) ^ HIWORD(v359) ^ (v359 >> 12) ^ (v359 >> 11) ^ (v359 >> 7) ^ (v359 >> 6) ^ (v359 >> 4);
  v416 = HIBYTE(v359) ^ (v359 >> 17) ^ (v359 >> 14) ^ (v359 >> 22) ^ (v359 >> 21) ^ (v359 >> 25) ^ (v359 >> 19) ^ HIWORD(v359) ^ (v359 >> 12) ^ (v359 >> 11) ^ (v359 >> 10) ^ (v359 >> 9) ^ (v359 >> 8) ^ (v359 >> 7) ^ (v359 >> 5) ^ (v359 >> 6);
  LODWORD(STACK[0x588]) = v359 << 20;
  LODWORD(STACK[0x570]) = v359 << 10;
  LODWORD(STACK[0x510]) = v359 << 18;
  LODWORD(STACK[0x598]) = v359 << 13;
  LODWORD(STACK[0x56C]) = v359 << 7;
  LODWORD(STACK[0x538]) = v359 << 11;
  LODWORD(STACK[0x568]) = v359 << 16;
  LODWORD(STACK[0x564]) = v359 << 22;
  LODWORD(STACK[0x318]) = v359 << 23;
  LODWORD(STACK[0x50C]) = v359 << 21;
  LODWORD(STACK[0x398]) = v359 << 24;
  LODWORD(STACK[0x560]) = v359 << 25;
  LODWORD(STACK[0x59C]) = v359 << 26;
  LODWORD(STACK[0x310]) = v359 << 27;
  LODWORD(STACK[0x2E8]) = (v414 >> 21) ^ (v414 >> 27);
  LODWORD(STACK[0x2E4]) = v414 ^ v413;
  LODWORD(v402) = (v359 << 8) ^ (v359 << 15) ^ (v359 << 18) ^ (v359 << 20) ^ (v359 << 10) ^ (v359 << 7) ^ (v359 << 11) ^ (v359 << 13) ^ (v359 << 16) ^ (v359 << 21) ^ (v359 << 22) ^ (v359 << 23) ^ (v359 << 24) ^ (v359 << 25) ^ (v359 << 26) ^ (v359 << 27) ^ v317 ^ v416 ^ v413 ^ (4 * (v416 ^ v413)) ^ (32 * (v416 ^ v413)) ^ ((v416 ^ v413) << 11) ^ LODWORD(STACK[0x558]);
  v417 = v403 ^ v411 ^ v412 ^ v405 ^ (4 * v404) ^ (v405 << 11) ^ (32 * v404) ^ (v404 << 11);
  v418 = v417 ^ v407;
  v419 = v417 ^ ~v407;
  v420 = (v418 >> 22) ^ 0x2F4;
  v421 = (v418 >> 19) ^ 0x17A3;
  v422 = v421 ^ v420;
  v423 = (v419 >> 29) ^ (v418 >> 30);
  v424 = (v418 >> 25) ^ 0x5E;
  v425 = (v418 >> 18) ^ 0x2F47;
  v426 = v421 ^ v420 ^ (v418 >> 26) ^ (v419 >> 31) ^ v424 ^ v425 ^ v423 ^ 0x2F;
  LODWORD(STACK[0x528]) = v418 ^ v404;
  v427 = v418 ^ v404 ^ 0xBD1F759E;
  LODWORD(v383) = HIWORD(v418) ^ 0xBD1F;
  v428 = (v418 >> 12) ^ 0xBD1F7;
  v429 = v427 >> (((v426 | 0x75) - (v426 & 0x8A) - 113) & 0xFE);
  v430 = (v427 >> 3) ^ (v418 >> 15) ^ v426 ^ v429;
  LODWORD(STACK[0x368]) = v428 ^ v383 ^ (v427 >> 10) ^ (v427 >> 8) ^ (v427 >> 6) ^ (v427 >> 7) ^ v430;
  LODWORD(STACK[0x364]) = (v430 >> 27) ^ (v429 >> 30);
  v431 = (v418 >> 21) ^ 0x5E8;
  LODWORD(v429) = (v418 >> 20) ^ (v418 >> 13) ^ v420 ^ v424 ^ v431 ^ v421 ^ v383;
  v432 = (v418 >> 14) ^ 0x2F47D;
  v433 = v425 ^ v432 ^ v428;
  v434 = (v418 >> 11) ^ 0x17A3EE;
  v435 = v429 ^ v433 ^ v434;
  LODWORD(v429) = (v427 >> 7) ^ (v427 >> 6);
  v436 = (v427 >> 4) ^ (v427 >> 1);
  v437 = v435 ^ v429 ^ v436;
  LODWORD(STACK[0x2A8]) = 4 * (v437 ^ 0x5E32A) - ((8 * (v437 ^ 0x5E32A)) & 0x4745F078);
  v438 = (v436 >> 27) ^ (v427 >> 31) ^ (v437 >> 21);
  v439 = v422 ^ HIBYTE(v418) ^ (v418 >> 17) ^ v431 ^ v383 ^ v432 ^ v428 ^ v424 ^ v423;
  LODWORD(STACK[0x360]) = 8 * v427;
  LODWORD(STACK[0x2A0]) = v427 << 11;
  LODWORD(STACK[0x298]) = v427 << 18;
  LODWORD(STACK[0x34C]) = 4 * v427;
  LODWORD(STACK[0x524]) = v427 << 10;
  LODWORD(STACK[0x520]) = v427 << 7;
  LODWORD(STACK[0x518]) = v427 << 13;
  LODWORD(STACK[0x338]) = v427 << 16;
  LODWORD(STACK[0x348]) = v427 << 22;
  LODWORD(STACK[0x340]) = v427 << 20;
  LODWORD(STACK[0x288]) = v427 << 21;
  LODWORD(v317) = (v427 << 16) ^ (v427 << 20);
  LODWORD(STACK[0x294]) = v317;
  v440 = v434 ^ (v427 >> 5) ^ v439 ^ (v427 >> (v439 & 9) >> (v439 & 9 ^ 9));
  v441 = (v427 >> 8) ^ (v427 >> 10) ^ v429 ^ v440;
  LODWORD(STACK[0x2AC]) = v427 << 25;
  v442 = (v440 >> 30) ^ (v440 >> 27) ^ (v441 >> 21);
  v441 ^= 0x5E32u;
  v443 = (v427 << 25) ^ (v427 << 27) ^ __ROR4__(v427 & 0x1FF ^ __ROR4__((v427 << 8) ^ (v427 << 15) ^ (v427 << 18) ^ (v427 << 11) ^ (8 * v427) ^ (4 * v427) ^ (v427 << 7) ^ (v427 << 10) ^ (v427 << 13) ^ v317 ^ (v427 << 22) ^ (v427 << 21), 23) ^ 0xC58D2EE0, 9) ^ (4 * v441) ^ (32 * v441) ^ (v441 << 11) ^ (32 * v442) ^ (4 * v442);
  LODWORD(STACK[0x324]) = v427 << 24;
  LODWORD(STACK[0x514]) = v427 << 26;
  v444 = v443 ^ ((v427 << 26) ^ (v427 << 24) | (v442 << 11));
  v445 = v441 ^ v401 ^ (v444 - 2 * (v444 & 0x4A973F69 ^ v443 & 9) - 896057504);
  v446 = v402 ^ (v416 >> 21);
  LODWORD(STACK[0x558]) = v446;
  v447 = (4 * (v416 >> 21)) ^ (32 * (v416 >> 21)) ^ (v416 >> 21 << 11) ^ v446;
  LODWORD(v403) = (v447 >> 11) ^ (v447 >> 13);
  LODWORD(STACK[0x390]) = v403 ^ (v447 >> 6) ^ (v447 >> 21) ^ (v447 >> 18) ^ (v447 >> 19) ^ (v447 >> 14) ^ (v402 >> 28) ^ (v402 >> 27) ^ (v402 >> 29) ^ (v402 >> 30) ^ (v447 >> 2) ^ (v447 >> 15) ^ (v447 >> 10) ^ (v447 >> 9) ^ (v447 >> 5) ^ (v447 >> 4);
  v448 = (v447 >> 21) ^ (v447 >> 19);
  v449 = v402 >> 22;
  LODWORD(v317) = (v402 >> 22) ^ (v402 >> 25) ^ (v447 >> 20) ^ v448 ^ (v447 >> 18) ^ WORD1(v447);
  LODWORD(STACK[0x2A4]) = (v317 & 0xF3 ^ 0xFFFFFFF3) + (v317 & 0xF3);
  v450 = (v447 >> 6) ^ (v447 >> 1) ^ __ROR4__(((v402 >> 26) | (v447 >> 14 << 20)) ^ __ROR4__(v317, 12) ^ 0xA1C21CBE, 20);
  v451 = v403 ^ (v447 >> 12) ^ (v447 >> 7) ^ (v447 >> 4) ^ 0x21CBEA1C ^ v450;
  LODWORD(STACK[0x29C]) = (v451 >> 27) ^ (v450 >> 30);
  LODWORD(v403) = BYTE3(v402);
  v452 = (v402 >> 30) ^ (v402 >> 29) ^ (v402 >> 25) ^ BYTE3(v402);
  LOBYTE(v441) = (v403 & 6 ^ 6) + (v403 & 6);
  LODWORD(STACK[0x554]) = v447 << 11;
  LODWORD(STACK[0x278]) = v447 << 10;
  LODWORD(STACK[0x27C]) = v447 << 7;
  LODWORD(STACK[0x548]) = v447 << 13;
  LODWORD(STACK[0x28C]) = v447 << 16;
  LODWORD(STACK[0x540]) = v447 << 18;
  LODWORD(STACK[0x544]) = v447 << 21;
  LODWORD(STACK[0x290]) = v447 << 20;
  LODWORD(STACK[0x38C]) = v447 << 22;
  LODWORD(STACK[0x380]) = v447 << 23;
  LODWORD(STACK[0x280]) = v447 << 25;
  LODWORD(v403) = (8 * v447) ^ (4 * v447);
  LODWORD(STACK[0x370]) = v403;
  LODWORD(STACK[0x53C]) = v447 << 26;
  v453 = (v447 << 8) ^ (v447 << 15) ^ (v447 << 24) ^ (v447 << 10) ^ (v447 << 7) ^ (v447 << 11) ^ (v447 << 13) ^ (v447 << 16) ^ (v447 << 18) ^ (v447 << 20) ^ (v447 << 21) ^ (v447 << 22) ^ (v447 << 23) ^ (v447 << 25) ^ (v447 << 26) ^ v403;
  v454 = v447 >> v441;
  LODWORD(v403) = v449 ^ (v447 >> 17) ^ (v447 >> 8) ^ v448 ^ WORD1(v447) ^ (v447 >> 14) ^ (v447 >> 12) ^ (v447 >> 11) ^ (v447 >> 10) ^ (v447 >> 9) ^ (v447 >> 7) ^ (v447 >> 5) ^ v452 ^ v454;
  LODWORD(STACK[0x36C]) = v447 << 27;
  LODWORD(v317) = v453 + (v447 << 27) - 2 * (v453 & (v447 << 27));
  v455 = v442 ^ 0x148C107E ^ v445;
  v456 = (v445 >> 29) ^ (v445 >> 30);
  v457 = LODWORD(STACK[0x488]) ^ (v359 << 12) ^ (v359 << 31) ^ LODWORD(STACK[0x56C]) ^ LODWORD(STACK[0x570]) ^ LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x598]);
  LODWORD(STACK[0x534]) = v359 << 14;
  v458 = (v359 << 14) ^ LODWORD(STACK[0x568]) ^ LODWORD(STACK[0x510]) ^ LODWORD(STACK[0x50C]);
  LODWORD(STACK[0x274]) = v359 << 19;
  v459 = v457 ^ v458 ^ (v359 << 19);
  v460 = LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x560]) ^ LODWORD(STACK[0x59C]);
  LODWORD(STACK[0x538]) = v359 << 28;
  v461 = v459 ^ v460 ^ (v359 << 28) ^ (4 * v415) ^ (32 * v415) ^ (v415 - ((2 * v415) & 0xA8D83A68) - 731112140);
  v462 = LODWORD(STACK[0x2B4]) ^ (v415 >> 21) ^ (v415 >> 27);
  v463 = v461 ^ (v462 | (v415 << 11)) ^ (4 * v462) ^ (32 * v462) ^ (v462 << 11) ^ LODWORD(STACK[0x43C]);
  v464 = (v454 >> 27) ^ (v454 >> 30) ^ (v403 >> 21);
  v465 = v463 ^ v403 ^ (4 * v403) ^ (32 * v403) ^ (v403 << 11) ^ (4 * v464) ^ (32 * v464) ^ (v464 << 11) ^ v317;
  v466 = (v455 >> 4) ^ (v455 >> 2);
  v467 = (v455 >> 18) ^ (v455 >> 13) ^ (v455 >> 28) ^ (v455 >> 27) ^ (v455 >> 15) ^ (v455 >> 14) ^ v456 ^ (v455 >> 19) ^ (v455 >> 21) ^ (v455 >> 11) ^ (v455 >> 10) ^ (v455 >> 9) ^ (v455 >> 6) ^ (v455 >> 5) ^ v466;
  LODWORD(STACK[0x2B0]) = v467;
  LODWORD(STACK[0x2B4]) = (v467 >> 21) ^ (v466 >> 27);
  v468 = (v455 >> 25) ^ HIBYTE(v455) ^ (v455 >> 22) ^ (v455 >> 17) ^ HIWORD(v455) ^ v456 ^ (v455 >> 21) ^ (v455 >> 19);
  LODWORD(v403) = LODWORD(STACK[0x484]) ^ (32 * STACK[0x2B8]) ^ ((LODWORD(STACK[0x2C8]) << 30) | 0x794F443) ^ (16 * STACK[0x2B8]) ^ (LODWORD(STACK[0x350]) << 17) ^ LODWORD(STACK[0x2EC]) ^ LODWORD(STACK[0x2D4]) ^ LODWORD(STACK[0x2D8]) ^ LODWORD(STACK[0x30C]) ^ LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x304]) ^ LODWORD(STACK[0x2DC]) ^ LODWORD(STACK[0x308]) ^ LODWORD(STACK[0x2D0]) ^ LODWORD(STACK[0x2CC]) ^ LODWORD(STACK[0x300]) ^ LODWORD(STACK[0x2C4]) ^ v427 ^ (v427 << 12) ^ LODWORD(STACK[0x298]) ^ (v427 << 19);
  LODWORD(v317) = ((LODWORD(STACK[0x528]) << 31) | 0x805FB06) ^ LODWORD(STACK[0x2A0]) ^ LODWORD(STACK[0x520]) ^ LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x518]);
  LODWORD(STACK[0x2EC]) = v427 << 14;
  LODWORD(v403) = v403 ^ v317 ^ (v427 << 14);
  LODWORD(v317) = LODWORD(STACK[0x294]) ^ LODWORD(STACK[0x288]) ^ (v427 << 25) ^ LODWORD(STACK[0x514]);
  LODWORD(STACK[0x300]) = v427 << 28;
  LODWORD(v403) = v403 ^ v317 ^ (v427 << 28) ^ v437 ^ 0x5E32A ^ (32 * (v437 ^ 0x5E32A)) ^ ((v437 ^ 0x5E32A) << 11) ^ v438 ^ (4 * v438) ^ (32 * v438) ^ (v438 << 11) ^ (LODWORD(STACK[0x2A8]) + 597882943) ^ LODWORD(STACK[0x330]) ^ 0xF8DBD601 ^ ((LODWORD(STACK[0x330]) ^ 0xF8DBD601) << 11) ^ (4 * (LODWORD(STACK[0x330]) ^ 0xF8DBD601)) ^ (32 * (LODWORD(STACK[0x330]) ^ 0xF8DBD601)) ^ LODWORD(STACK[0x334]) ^ (4 * LODWORD(STACK[0x334])) ^ (32 * LODWORD(STACK[0x334])) ^ (LODWORD(STACK[0x334]) << 11);
  LODWORD(v317) = (v455 >> 8) ^ (v455 >> 12) ^ (v455 >> 7) ^ (v455 >> 11) ^ (v455 >> 10) ^ (v455 >> 14) ^ (v455 >> 9) ^ (v455 >> 6) ^ (v455 >> 5) ^ v468;
  v469 = v317 >> 21 << ((v468 & 2 ^ 2) + (v468 & 2));
  LODWORD(STACK[0x288]) = 4 * v455;
  v470 = (4 * v455) ^ (8 * v455);
  LODWORD(STACK[0x284]) = v470;
  LODWORD(v403) = v403 ^ (v455 << 8) ^ (v455 << 10) ^ (v455 << 7) ^ (v455 << 15) ^ (v455 << 16) ^ (v455 << 20) ^ (v455 << 24) ^ (v455 << 25) ^ v470 ^ (4 * v317) ^ (32 * v317) ^ (v317 << 11) ^ 0xE4820E46;
  v471 = (v403 + 81108701 - ((2 * v403) & 0x9AB3DBA)) ^ (v469 + 81108701 - ((2 * v469) & 0x33DBA));
  v472 = (v317 >> 21) ^ 0x95BBACB3;
  LODWORD(v429) = (v471 - ((2 * v471) & 0x4895C440) - 1538596320) ^ (32 * v472) ^ 0x133F7440;
  LODWORD(STACK[0x2C4]) = v455 << 13;
  LODWORD(STACK[0x2C8]) = v455 << 18;
  LODWORD(STACK[0x2B8]) = v455 << 21;
  LODWORD(STACK[0x2CC]) = v455 << 22;
  LODWORD(STACK[0x2A0]) = v455 << 27;
  LODWORD(STACK[0x298]) = v455 << 26;
  LODWORD(STACK[0x294]) = v455 << 23;
  v473 = (v455 << 18) ^ (v455 << 13) ^ (v455 << 21) ^ (v455 << 22) ^ (v455 << 23) ^ (v455 << 26) ^ (v455 << 27) ^ v317 ^ ((v472 ^ v455) << 11) ^ (v429 + 833980057 - 2 * (v429 & 0x31B5869D ^ v471 & 4));
  v474 = v465 ^ 0x56F8C528;
  v475 = v465 >> 31;
  v476 = (v465 ^ 0x56F8C528) >> 25;
  v477 = (v474 >> 30) ^ (v474 >> 29) ^ v476;
  v478 = v474 >> 19;
  v479 = HIWORD(v474);
  v480 = v474 >> 12;
  v481 = v474 ^ v464;
  v482 = (v474 ^ v464) >> 10;
  v483 = (v474 ^ v464) >> 7;
  v484 = (v474 ^ v464) >> 8;
  v485 = (v474 ^ v464) >> 6;
  v486 = (v474 ^ v464) >> 4;
  LODWORD(STACK[0x304]) = v475 ^ (v474 >> 26) ^ (v474 >> 15) ^ v477 ^ (v474 >> 22) ^ (v474 >> 19) ^ (v474 >> 18) ^ HIWORD(v474) ^ (v474 >> 12) ^ ((v474 ^ v464) >> 3) ^ v482 ^ v484 ^ v483 ^ v485 ^ v486;
  v487 = (v474 ^ v464) << 10;
  v488 = (v474 ^ v464) << 7;
  v489 = (v474 ^ v464) << 11;
  LODWORD(STACK[0x2E0]) = v488;
  LODWORD(STACK[0x2A8]) = v487;
  v490 = v489 ^ v481 ^ v488 ^ v487;
  LODWORD(STACK[0x484]) = v490;
  v491 = v490 & 0x8000;
  if ((v491 & (v481 << 12)) != 0)
  {
    v491 = -v491;
  }

  LODWORD(STACK[0x43C]) = v491 + (v481 << 12);
  v492 = (v474 >> 22) ^ (v474 >> 21);
  v493 = (v474 >> 20) ^ (v474 >> 13) ^ v492 ^ v476 ^ (v474 >> 18) ^ v479 ^ v478 ^ (v474 >> 14) ^ v480 ^ (v474 >> 11) ^ (v481 >> 1) ^ v483 ^ v486;
  LODWORD(STACK[0x350]) = (v452 & 5 ^ 5) + (v452 & 5);
  LODWORD(STACK[0x334]) = v475 ^ (v493 >> 27);
  LODWORD(STACK[0x330]) = v493 ^ v485;
  v494 = HIBYTE(v474) ^ (v474 >> 17) ^ v477 ^ v492 ^ v478 ^ v479 ^ v480 ^ (v474 >> 14) ^ (v474 >> 11) ^ (v481 >> 9) ^ (v481 >> 5) ^ v483 ^ v485 ^ v482 ^ v484;
  HIDWORD(v495) = LODWORD(STACK[0x320]) ^ 0x55527454;
  LODWORD(v495) = HIDWORD(v495);
  v496 = STACK[0x2E4];
  v497 = STACK[0x2E8];
  v498 = (v495 >> 21) ^ (v359 << 30) ^ (4 * LODWORD(STACK[0x2E4])) ^ (32 * LODWORD(STACK[0x2E4])) ^ (LODWORD(STACK[0x2E4]) << 11) ^ (4 * LODWORD(STACK[0x2E8])) ^ (32 * LODWORD(STACK[0x2E8])) ^ (LODWORD(STACK[0x2E8]) << 11) ^ (LODWORD(STACK[0x558]) << 31) ^ v447 ^ (v447 << 12) ^ LODWORD(STACK[0x278]) ^ LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x27C]);
  v499 = LODWORD(STACK[0x554]) ^ LODWORD(STACK[0x28C]);
  LODWORD(STACK[0x320]) = v447 << 14;
  LODWORD(STACK[0x30C]) = v447 << 19;
  v500 = LODWORD(STACK[0x29C]) ^ (v451 >> 21);
  v501 = v498 ^ v499 ^ (v447 << 14) ^ (v447 << 19) ^ LODWORD(STACK[0x290]) ^ LODWORD(STACK[0x544]) ^ LODWORD(STACK[0x280]) ^ LODWORD(STACK[0x53C]) ^ (4 * v451) ^ (32 * v451) ^ (v451 << 11) ^ (v447 << (STACK[0x2A4] & 0xD7 ^ 0xCFu)) ^ (4 * v500) ^ (32 * v500) ^ (v500 << 11) ^ (v481 << 8) ^ (v481 << 15) ^ (v481 << 23) ^ (v481 << 27);
  LODWORD(STACK[0x2D8]) = 4 * v481;
  LODWORD(STACK[0x2DC]) = 8 * v481;
  LODWORD(STACK[0x308]) = v359 << 17;
  v502 = LODWORD(STACK[0x534]) ^ LODWORD(STACK[0x598]) ^ (v359 << 17) ^ LODWORD(STACK[0x510]) ^ LODWORD(STACK[0x274]) ^ LODWORD(STACK[0x50C]) ^ LODWORD(STACK[0x564]) ^ LODWORD(STACK[0x318]) ^ LODWORD(STACK[0x59C]) ^ LODWORD(STACK[0x310]) ^ LODWORD(STACK[0x538]) ^ v489;
  LODWORD(STACK[0x310]) = v481 << 13;
  LODWORD(STACK[0x2D0]) = v481 << 16;
  LODWORD(STACK[0x2D4]) = v481 << 20;
  LODWORD(STACK[0x510]) = v481 << 18;
  LODWORD(STACK[0x2A4]) = v481 << 22;
  LODWORD(STACK[0x29C]) = v481 << 24;
  LODWORD(STACK[0x50C]) = v481 << 21;
  LODWORD(STACK[0x290]) = v481 << 25;
  LODWORD(STACK[0x28C]) = v481 << 26;
  v503 = v494 >> 21;
  v504 = v501 ^ v488 ^ (8 * v481) ^ (4 * v481) ^ (32 * v494) ^ (4 * v494) ^ (v494 << 11) ^ (4 * (v494 >> 21)) ^ (32 * (v494 >> 21));
  v505 = v502 ^ (v481 << 13) ^ v487 ^ (v481 << 16) ^ (v481 << 18) ^ (v481 << 20) ^ (v481 << 21) ^ (v481 << 22) ^ (v481 << 24) ^ (v481 << 25) ^ ((v481 << 26) | (v494 >> 21 << 11)) ^ v504;
  v506 = v497 ^ v496 ^ v451 ^ v500 ^ v494 ^ LODWORD(STACK[0x594]) ^ (v505 - 2 * (v505 & 0x60F89BB3 ^ v504 & 0x20) - 520578157);
  v507 = v473 ^ 0x939545A2 ^ v472;
  v508 = (((v473 ^ 0x939545A2) >> 30) ^ (v473 >> 31)) - 1248181888 - 2 * (((v473 ^ 0x939545A2) >> 30) ^ (v473 >> 31)) + 3;
  v509 = (v473 >> 26) ^ 0xEDD446F4 ^ ((v508 ^ (((v473 ^ 0x939545A2) >> 29) | 0xB59A4180)) - 304855345 - 2 * ((v508 ^ (((v473 ^ 0x939545A2) >> 29) | 0xB59A4180)) & 0xDF ^ v508 & 0x10));
  v510 = (((2 * v507) ^ (4 * v507) ^ 0x7E063130) + 115270736 - 2 * (((2 * v507) ^ (4 * v507) ^ 0x7E063130) & 0x6DEE456 ^ ((2 * v507) ^ (4 * v507)) & 6)) ^ (v507 << 6) ^ 0xB9630650;
  v511 = (v473 >> 25) ^ 0x68E05FF6;
  v512 = (v509 + 1759534976 - ((2 * v509) & 0x51C0BF00)) ^ v511;
  v513 = (v473 >> 22) ^ 0x23F4E954 ^ (v512 + 603253076 - ((2 * v512) & 0x47E9D5CE) + 403);
  v514 = (v473 >> 19) ^ 0xE43A963D;
  v515 = (v513 - 465925209 - ((2 * v513) & 0x4875174E)) ^ v514;
  v516 = (v473 >> 18) ^ 0xED8E2196;
  v517 = (v515 - 309454174 - ((2 * v515) & 0x5B1C3544)) ^ v516;
  v518 = v517 - ((2 * v517) & 0x25227F6A);
  v519 = (v473 >> 12) ^ HIWORD(v473);
  v520 = (v507 >> 4) ^ 0x890CD2B2;
  v521 = (v507 >> 6) ^ 0xD5A40245;
  v522 = v519 ^ (v473 >> 15) ^ (v507 >> 3) ^ (v507 >> 7) ^ (v507 >> 10) ^ (v507 >> 8) ^ v521 ^ v520 ^ (v518 + 1385250741);
  v523 = (v522 >> 21) ^ (v522 >> 27);
  v522 ^= 0x873F841C;
  v523 ^= 0x5FC36D07u;
  v524 = v507 ^ (v507 << 17) ^ (8 * v507) ^ (v507 << 22) ^ (v507 << 24) ^ (v507 << 29) ^ (v510 - ((2 * v510) & 0x24173044) - 1844733918) ^ (32 * v522) ^ (4 * v522) ^ (v522 << 11) ^ (4 * v523) ^ (v523 << 11) ^ (32 * v523);
  v525 = (v507 << 10) ^ 0x2290B40;
  v526 = (v507 << 13) ^ 0xCD80620D;
  v527 = (((v507 << 7) ^ v525 ^ 0x641C0862 ^ v524) + 326197773 - 2 * (((v507 << 7) ^ v525 ^ 0x641C0862 ^ v524) & 0x1371621D ^ v524 & 0x10)) ^ v526;
  v528 = v527 + 1455238827 - ((2 * v527) & 0xAD7A5D56);
  v529 = (v507 << 16) ^ (v507 << 20) ^ (v507 << 25) ^ (v507 << 26) ^ (v507 << 28) ^ 0x18750A6C;
  LODWORD(STACK[0x318]) = v529 ^ (v507 << 14) ^ v522 ^ v523 ^ 0x9E574016 ^ v528;
  v530 = (((v473 >> 21) ^ (v473 >> 20) ^ 0x9AB) - ((2 * ((v473 >> 21) ^ (v473 >> 20) ^ 0x9AB)) & 0x9CA) + 340907237) ^ (v473 >> 14) ^ 0x145267A5;
  LOBYTE(v523) = (v507 & 0x3C ^ 0x59) & (v507 & 0x3C ^ 0x75) ^ v507 & 0x10;
  v531 = (v530 - ((2 * v530) & 0x47E5DFE) - 2109788417) ^ (v473 >> 13) ^ 0x8238487F;
  v532 = (v507 >> 1) ^ (v473 >> 11) ^ ((v507 ^ 0xEAFEF788) >> (103 - ((((v523 ^ 0x4E) + 1) ^ ((v523 ^ 0x9E) - 47)) ^ ((v523 ^ 0xBD) - 12)))) ^ (v531 - ((2 * v531) & 0x16881806) - 1958474749);
  v533 = (((v473 >> 22) ^ 0xFE26EE77 ^ v532) + 1759534976 - ((2 * ((v473 >> 22) ^ 0xFE26EE77 ^ v532)) & 0xD1C0BF00)) ^ v511;
  v534 = (v533 - 465925209 - ((2 * v533) & 0xC875174E)) ^ v514;
  v535 = v519 ^ v516 ^ v521 ^ v520 ^ (v534 - 309454174 - ((2 * v534) & 0xDB1C3544));
  v536 = LODWORD(STACK[0x364]) ^ (LODWORD(STACK[0x368]) >> 21);
  v537 = LODWORD(STACK[0x368]) ^ 0x17A3E;
  v538 = LODWORD(STACK[0x528]) ^ (2 * v427) ^ (v427 << 6) ^ (v427 << 17) ^ (v427 << 29) ^ LODWORD(STACK[0x520]) ^ LODWORD(STACK[0x34C]) ^ LODWORD(STACK[0x360]) ^ LODWORD(STACK[0x524]) ^ LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x2EC]) ^ LODWORD(STACK[0x338]) ^ LODWORD(STACK[0x340]) ^ LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x324]) ^ LODWORD(STACK[0x514]) ^ LODWORD(STACK[0x2AC]) ^ LODWORD(STACK[0x300]) ^ v537 ^ (4 * v537) ^ (32 * v537) ^ (v537 << 11) ^ v536 ^ (4 * v536) ^ (32 * v536) ^ (v536 << 11) ^ (32 * v455) ^ (16 * v455) ^ (v455 << 14) ^ (v455 << 17) ^ (v455 << 19) ^ (v455 << 28) ^ (v455 << 30) ^ (v455 << 11) ^ LODWORD(STACK[0x2C4]) ^ LODWORD(STACK[0x2C8]) ^ LODWORD(STACK[0x2B8]) ^ LODWORD(STACK[0x2CC]) ^ LODWORD(STACK[0x294]) ^ LODWORD(STACK[0x298]) ^ LODWORD(STACK[0x2A0]) ^ (LODWORD(STACK[0x284]) - 2 * (STACK[0x284] & 0x364A55CC ^ STACK[0x288] & 4) - 1236642359) ^ LODWORD(STACK[0x2B0]) ^ (4 * LODWORD(STACK[0x2B0])) ^ (32 * LODWORD(STACK[0x2B0])) ^ (LODWORD(STACK[0x2B0]) << 11) ^ LODWORD(STACK[0x2B4]) ^ (4 * LODWORD(STACK[0x2B4])) ^ (32 * LODWORD(STACK[0x2B4])) ^ (LODWORD(STACK[0x2B4]) << 11) ^ v507 ^ (v507 << 12) ^ (v507 << 11) ^ (v507 << 18) ^ (v507 << 19) ^ (v507 << 21) ^ (v507 << 31) ^ (v507 << 7);
  v539 = (v532 >> 30) ^ (v535 >> 27) ^ (v535 >> 21) ^ 0x6C46B1DB;
  v540 = v538 ^ v535 ^ 0x91F5BA57 ^ (4 * (v535 ^ 0x91F5BA57)) ^ (32 * (v535 ^ 0x91F5BA57)) ^ ((v535 ^ 0x91F5BA57) << 11) ^ (4 * v539) ^ (32 * v539) ^ (v539 << 11) ^ 0x683DEF28;
  v541 = (v507 << 14) ^ v525 ^ v526 ^ 0xAE93620D ^ (v540 - ((2 * v540) & 0xF3EE5680) - 101242048);
  LODWORD(STACK[0x524]) = v529 ^ v539 ^ 0x4136B984 ^ (v541 + 1455238827 - ((2 * v541) & 0xAD7A5D56));
  v542 = v506 ^ v503;
  v543 = v506 ^ v503 ^ 0x17FAB549;
  v544 = (4 * v543) ^ 0xBEAE4A8B;
  LODWORD(STACK[0x520]) = v544;
  v545 = (((16 * v543) ^ (32 * v543) ^ 0xBA022830) + 617729167 - ((2 * ((16 * v543) ^ (32 * v543) ^ 0xBA022830)) & 0x49A39900)) ^ v544;
  v546 = (8 * v543) ^ 0xB46E7A47;
  LODWORD(STACK[0x518]) = v546;
  v547 = (v545 - 2137950641 - ((2 * v545) & 0x122EC9E)) ^ v546;
  v548 = ((v506 >> 30) | 4) ^ (v506 >> 29);
  LODWORD(STACK[0x594]) = v548;
  v549 = (v506 >> 18) ^ 0x1A54DC1B ^ v548 ^ (((v506 >> 28) ^ (v506 >> 27) ^ 0x11) + 441768987 - ((2 * ((v506 >> 28) ^ (v506 >> 27))) & 4) + 1063);
  v550 = (v543 << 11) ^ 0x53DCC17;
  LODWORD(STACK[0x514]) = v550;
  v551 = (v547 - 97401833 - ((2 * v547) & 0xF463882E)) ^ v550;
  LODWORD(STACK[0x368]) = v543 << 13;
  v552 = (v551 & 0xC3D2C5D4 ^ (v543 << 13) & 0xC3D2C000 | v551 & 0x3C2D3A28 ^ (v543 << 13) & 0x3C2D2000) ^ 0xFC302000;
  v553 = (v506 >> 19) ^ 0xE4183A3B;
  v554 = (v549 - 468179945 - ((2 * v549) & 0x4830482E)) ^ v553;
  v555 = (v552 - ((2 * v552) & 0xC53C8E78) - 492943556) ^ (v543 << 14) ^ 0x1AFE073C;
  v556 = (v555 - ((2 * v555) & 0xE581EAFC) - 222235266) ^ (v543 << 17) ^ 0x31C2F57E;
  v557 = (v506 >> 21) ^ 0x57DD7E86;
  v558 = (v554 + 1474132237 - ((2 * v554) & 0x2FBAF21A)) ^ v557;
  v559 = (v506 >> 14) ^ 0x668B5F04;
  v560 = (((v506 >> 15) ^ (v506 >> 13) ^ v558 ^ a11) + 1720228497 - 2 * (((v506 >> 15) ^ (v506 >> 13) ^ v558 ^ a11) & 0x66889A9B ^ ((v506 >> 15) ^ (v506 >> 13) ^ v558) & 0xA)) ^ v559;
  v561 = (v560 & 0xC1BCA60B ^ (v506 >> 11) & 0x1CA60B | (v506 >> 11) & 0x359F4) ^ 0x1E2CAA;
  v562 = (v556 - ((2 * v556) & 0x60CE849C) + 812073550) ^ (v543 << 19) ^ 0x3C6F424E;
  v563 = v562 - ((2 * v562) & 0xDDF07680);
  LOBYTE(v562) = (v558 & 0x4B ^ 0x4B) + (v558 & 0x4B);
  v564 = ((v506 ^ v503) >> 4) ^ ((v506 ^ v503) >> 2) ^ v560 & 0x3E4359F4 ^ (v561 - ((2 * v561) & 0x3473AB6) + 1541643611);
  v565 = ((v506 ^ v503) >> 10) ^ ((v506 ^ v503) >> 9) ^ 0xDB0D2C3;
  v566 = ((v506 ^ v503) >> 6) ^ 0xDDAB2B0;
  v567 = ((v506 ^ v503) >> 5) ^ 0x80DC29E2;
  v568 = v565 ^ v566 ^ v567 ^ v564;
  v569 = (v568 ^ 0xEC1080BE) << (v562 & 3) << (v562 & 0x9C);
  v570 = STACK[0x310];
  v571 = STACK[0x2D0];
  v572 = STACK[0x2D4];
  v573 = STACK[0x290];
  v574 = STACK[0x28C];
  v575 = (LODWORD(STACK[0x304]) >> 21) ^ (LODWORD(STACK[0x304]) >> 27);
  v576 = v481 ^ (v481 << 6) ^ (v481 << 29) ^ (2 * v481) ^ (v481 << 17) ^ (v481 << 28) ^ LODWORD(STACK[0x2D8]) ^ LODWORD(STACK[0x2DC]) ^ LODWORD(STACK[0x2A8]) ^ LODWORD(STACK[0x2E0]) ^ LODWORD(STACK[0x310]) ^ (v481 << 14) ^ LODWORD(STACK[0x2D0]) ^ LODWORD(STACK[0x2D4]) ^ LODWORD(STACK[0x2A4]) ^ LODWORD(STACK[0x29C]) ^ LODWORD(STACK[0x290]) ^ LODWORD(STACK[0x28C]) ^ LODWORD(STACK[0x304]) ^ (4 * LODWORD(STACK[0x304])) ^ (32 * LODWORD(STACK[0x304])) ^ (LODWORD(STACK[0x304]) << 11) ^ v575 ^ (4 * v575) ^ (32 * v575) ^ (v575 << 11) ^ (v543 << 28) ^ (v543 << 30);
  v577 = (v543 << 18) ^ 0x1DEC13F7;
  LODWORD(STACK[0x348]) = v577;
  v578 = (v543 << 21) ^ 0xA62E3E4A;
  LODWORD(STACK[0x340]) = v578;
  LODWORD(STACK[0x360]) = v543 << 23;
  v579 = v576 ^ (v543 << 23) ^ v577 ^ v578;
  v580 = (v543 << 27) ^ 0x4A3A2061;
  LODWORD(STACK[0x34C]) = v580;
  v581 = (v543 << 22) ^ 0xA5D51649;
  v582 = (v543 << 26) ^ 0x1E3C492B;
  LODWORD(STACK[0x364]) = v579 ^ v581 ^ v582 ^ v580 ^ v568 ^ 0x97C10594 ^ (4 * (v568 ^ 0x97C10594)) ^ (32 * (v568 ^ 0x97C10594)) ^ (v564 >> 27) ^ (v568 >> 21) ^ 0xE0863E54 ^ (4 * ((v564 >> 27) ^ (v568 >> 21) ^ 0xE0863E54)) ^ (32 * ((v564 >> 27) ^ (v568 >> 21) ^ 0xE0863E54)) ^ (((v564 >> 27) ^ (v568 >> 21) ^ 0xE0863E54) << 11) ^ v569 ^ (v563 - 285721792);
  LODWORD(v569) = (v543 << 10) ^ 0x5DDB984F ^ (((v543 << 7) ^ (v543 << 8) ^ 0xD0114180) - ((2 * ((v543 << 7) ^ (v543 << 8) ^ 0xD0114180)) & 0x44BB3800) + 576560207);
  v583 = ((HIBYTE(v506) ^ (v506 >> 22) ^ 0x334) + 1507788601 - ((2 * (HIBYTE(v506) ^ (v506 >> 22) ^ 0x334)) & 0x672)) ^ (v506 >> 25);
  v584 = (v506 >> 17) ^ 0xA5A944C2 ^ ((v583 ^ 0x59DF0741) - 1515635600 - 2 * ((v583 ^ 0x59DF0741) & 0x25A93C76 ^ v583 & 6));
  v585 = (v542 ^ 0xF16554C8) << (((v506 >> 19) & 0xF ^ 3) + ((v506 >> 19) & 0xF ^ 0xC));
  LODWORD(v569) = (v569 + 406085738 - ((2 * v569) & 0x3068C0D4)) ^ (v585 + 406085738 - ((2 * v585) & 0x3068C0D4));
  LODWORD(v569) = (v569 - ((2 * v569) & 0x8D4E0D8E) + 1185351367) ^ (v543 << 16) ^ 0xA72606C7;
  LODWORD(v569) = (v569 - ((2 * v569) & 0x5C502276) - 1373105861) ^ (v543 << 20) ^ 0xB638113B;
  v586 = (v569 - ((2 * v569) & 0x48022AF8) - 1543432836) ^ (v543 << 24) ^ 0x2501157C;
  LODWORD(v569) = v586 + 1585092299 + ~(2 * (v586 & 0x5E7A96CB ^ v569 & 1));
  v587 = v565 ^ (v506 >> 12) ^ HIWORD(v506) ^ (v542 >> 7) ^ (v542 >> 8) ^ LODWORD(STACK[0x594]) ^ 0x4A6FAE7C ^ (v584 - ((2 * v584) & 0xD0FBF1A) + 1183309709);
  v588 = (v587 + 1474132237 - ((2 * v587) & 0x2FBAF21A)) ^ v557;
  v589 = (v588 - 468179945 - ((2 * v588) & 0x4830482E)) ^ v553;
  v590 = v567 ^ v566 ^ (v506 >> 11) ^ v559 ^ (v589 + 1720228497 - ((2 * v589) & 0x4D113522));
  v591 = (v569 ^ (v543 << 25) ^ 0x5C7A96CA) + 38781820 + ~(2 * ((v569 ^ (v543 << 25) ^ 0x5C7A96CA) & 0x24FC37F ^ v569 & 4));
  v592 = STACK[0x488];
  LODWORD(STACK[0x594]) = LODWORD(STACK[0x488]) ^ (-1673081951 * a129 - 1663319554);
  v593 = v592 ^ (-1673081951 * a131 - 1663319554);
  LODWORD(STACK[0x528]) = v592 ^ (-1673081951 * a130 - 1663319554);
  v594 = v592 ^ (-1673081951 * a132 - 1663319554);
  v595 = v592 ^ (-1673081951 * LODWORD(STACK[0x204]) - 1663319554);
  v596 = v592 ^ (-1673081951 * LODWORD(STACK[0x208]) - 1663319554);
  v597 = v592 ^ LODWORD(STACK[0x4F8]);
  LODWORD(v569) = v592 ^ (-1673081951 * LODWORD(STACK[0x20C]) - 1663319554);
  v598 = v592 ^ (2 * v359) ^ (v359 << 6) ^ (v359 << 29) ^ LODWORD(STACK[0x598]) ^ LODWORD(STACK[0x534]) ^ LODWORD(STACK[0x570]) ^ LODWORD(STACK[0x394]) ^ LODWORD(STACK[0x56C]) ^ LODWORD(STACK[0x568]) ^ LODWORD(STACK[0x308]) ^ LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x564]) ^ LODWORD(STACK[0x398]) ^ LODWORD(STACK[0x59C]) ^ LODWORD(STACK[0x560]) ^ LODWORD(STACK[0x538]);
  v599 = (LODWORD(STACK[0x408]) >> 27) ^ (LODWORD(STACK[0x408]) >> 21);
  v600 = v598 ^ LODWORD(STACK[0x408]) ^ (4 * LODWORD(STACK[0x408])) ^ (32 * LODWORD(STACK[0x408])) ^ (LODWORD(STACK[0x408]) << 11) ^ v599 ^ (4 * v599) ^ (32 * v599) ^ (v599 << 11) ^ (LODWORD(STACK[0x558]) << 30) ^ (32 * v447) ^ (16 * v447) ^ (v447 << 17) ^ (v447 << 28) ^ LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x554]) ^ LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x320]) ^ LODWORD(STACK[0x30C]) ^ LODWORD(STACK[0x544]) ^ LODWORD(STACK[0x38C]) ^ LODWORD(STACK[0x380]) ^ LODWORD(STACK[0x53C]) ^ LODWORD(STACK[0x36C]) ^ LODWORD(STACK[0x370]) ^ LODWORD(STACK[0x390]);
  v601 = (LODWORD(STACK[0x390]) >> 27) ^ (LODWORD(STACK[0x390]) >> 21);
  v602 = v600 ^ (4 * LODWORD(STACK[0x390])) ^ (32 * LODWORD(STACK[0x390])) ^ (LODWORD(STACK[0x390]) << 11) ^ v601 ^ (4 * v601) ^ (32 * v601) ^ (v601 << 11) ^ (v481 << 19) ^ (v481 << 31) ^ v570 ^ (v481 << 14) ^ v571 ^ LODWORD(STACK[0x510]) ^ v572 ^ LODWORD(STACK[0x50C]) ^ v573 ^ v574 ^ (v481 << 28) ^ STACK[0x484] & 0xFFFF7FFF ^ LODWORD(STACK[0x43C]);
  v603 = LODWORD(STACK[0x334]) ^ (LODWORD(STACK[0x330]) >> 21);
  v604 = v602 ^ LODWORD(STACK[0x330]) ^ (4 * LODWORD(STACK[0x330])) ^ (32 * LODWORD(STACK[0x330])) ^ (LODWORD(STACK[0x330]) << 11) ^ v603 ^ (4 * v603) ^ (v603 << LODWORD(STACK[0x350])) ^ (v603 << 11);
  v605 = v590 ^ 0xDD10A49C;
  v606 = ((v604 ^ v590 ^ 0xDD10A49C ^ 0xEE74EB89 ^ v591) - ((2 * (v604 ^ v590 ^ 0xDD10A49C ^ 0xEE74EB89 ^ v591)) & 0xED55AB76) + 1990907323) ^ (4 * (v590 ^ 0xDD10A49C)) ^ 0x27B067FF;
  v607 = (v606 - ((2 * v606) & 0xF50AEAE6) - 91916941) ^ (32 * (v590 ^ 0xDD10A49C)) ^ 0x7250E753;
  v590 >>= 21;
  v608 = (4 * v590) ^ (v605 << 11) ^ (v607 - ((2 * v607) & 0x5EE0A408) + 795890180);
  v609 = (((LODWORD(STACK[0x41C]) + 835459454) ^ 0x602722D) + 1983449781) ^ (LODWORD(STACK[0x41C]) + 835459454) ^ (((LODWORD(STACK[0x41C]) + 835459454) ^ 0x79A3888B) + 161017875) ^ (((LODWORD(STACK[0x41C]) + 835459454) ^ 0xCF8A973F) - 1078857817) ^ (((LODWORD(STACK[0x41C]) + 835459454) ^ 0x3FEFEAFF) + 1339331175) ^ LODWORD(STACK[0x318]);
  v610 = (32 * v590) ^ (v590 << 11) ^ 0x1A36126C ^ v608;
  v611 = (v610 + 617729167 - 2 * (v610 & 0x24D1CC9F ^ v608 & 0x10)) ^ LODWORD(STACK[0x520]);
  v612 = (v611 - 2137950641 - ((2 * v611) & 0x122EC9E)) ^ LODWORD(STACK[0x518]);
  v613 = LODWORD(STACK[0x368]) ^ LODWORD(STACK[0x514]) ^ LODWORD(STACK[0x348]) ^ LODWORD(STACK[0x340]) ^ 0xF1D60DBD ^ (v612 - 97401833 - ((2 * v612) & 0xF463882E));
  v614 = LODWORD(STACK[0x360]) ^ v581 ^ v582 ^ LODWORD(STACK[0x34C]) ^ v590 ^ 0xB08DE1F2 ^ (v613 - 980087672 - ((2 * v613) & 0x8B2A2C92) + 2497);
  v615 = v569 + 671845618 - ((2 * v569) & 0x501719E4);
  v616 = STACK[0x524];
  v617 = ((LODWORD(STACK[0x358]) ^ v616 ^ 0xC1FB14C0) - 858569545) ^ ((LODWORD(STACK[0x358]) ^ v616 ^ 0x7F132E6C) + 1916501531) ^ ((LODWORD(STACK[0x358]) ^ v616 ^ 0x3D9E85F4) + 817288579);
  v618 = (LODWORD(STACK[0x420]) ^ 0x8AC0A41E) & (2 * (STACK[0x420] & 0xCAD4361F)) ^ STACK[0x420] & 0xCAD4361F;
  v619 = ((2 * (LODWORD(STACK[0x420]) ^ 0xF40A400)) ^ 0x8B29243E) & (LODWORD(STACK[0x420]) ^ 0xF40A400) ^ (2 * (LODWORD(STACK[0x420]) ^ 0xF40A400)) & 0xC594921E;
  v620 = (v619 ^ 0x100001C) & (4 * v618) ^ v618;
  v621 = ((4 * (v619 ^ 0x44949201)) ^ 0x1652487C) & (v619 ^ 0x44949201) ^ (4 * (v619 ^ 0x44949201)) & 0xC594921C;
  v622 = (v621 ^ 0x4100013) & (16 * v620) ^ v620;
  v623 = ((16 * (v621 ^ 0xC1849203)) ^ 0x594921F0) & (v621 ^ 0xC1849203) ^ (16 * (v621 ^ 0xC1849203)) & 0xC5949210;
  v624 = v622 ^ 0xC594921F ^ (v623 ^ 0x41000000) & (v622 << 8);
  v625 = LODWORD(STACK[0x420]) ^ (2 * ((v624 << 16) & 0x45940000 ^ v624 ^ ((v624 << 16) ^ 0x121F0000) & (((v623 ^ 0x8494920F) << 8) & 0x45940000 ^ 0x41040000 ^ (((v623 ^ 0x8494920F) << 8) ^ 0x14920000) & (v623 ^ 0x8494920F))));
  v626 = ((LODWORD(STACK[0x424]) ^ 0x949BF869) + 738693858) ^ LODWORD(STACK[0x424]) ^ ((LODWORD(STACK[0x424]) ^ 0x4E8366D0) - 165737383) ^ ((LODWORD(STACK[0x424]) ^ 0x6BC4F4B1) - 749167046) ^ ((LODWORD(STACK[0x424]) ^ 0xF6BFFF7F) + 1310955000);
  v627 = v597 + 671845618 - ((2 * v597) & 0x501719E4);
  v628 = STACK[0x318];
  LODWORD(v569) = (((LODWORD(STACK[0x428]) + 815668984) ^ 0x1DB8F107) - 827536827) ^ (LODWORD(STACK[0x428]) + 815668984) ^ (((LODWORD(STACK[0x428]) + 815668984) ^ 0xAA7585FC) + 2036448960) ^ (((LODWORD(STACK[0x428]) + 815668984) ^ 0xE4595FBC) + 927819008) ^ (((LODWORD(STACK[0x428]) + 815668984) ^ 0x7F7FEFFB) - 1402219335) ^ LODWORD(STACK[0x318]);
  v629 = ((v569 ^ 0x1C4C68FE) + 741275303) ^ ((v569 ^ 0x713E1EF3) + 1096581292) ^ ((v569 ^ 0xD4785E42) - 468008933);
  LODWORD(v569) = LODWORD(STACK[0x364]) ^ 0xDF7B2185;
  v630 = ((v625 ^ v569 ^ 0x8E9AF0D2) + 545098427) ^ ((v625 ^ v569 ^ 0x17C7E864) - 1189047795) ^ ((v625 ^ v569 ^ 0x44C944D3) - 366068036);
  v631 = (LODWORD(STACK[0x430]) ^ 0xDA269E32) & (2 * (STACK[0x430] & 0x98A8DEB3)) ^ STACK[0x430] & 0x98A8DEB3;
  v632 = ((2 * (LODWORD(STACK[0x430]) ^ 0xEB372E10)) ^ 0xE73FE146) & (LODWORD(STACK[0x430]) ^ 0xEB372E10) ^ (2 * (LODWORD(STACK[0x430]) ^ 0xEB372E10)) & 0x739FF0A2;
  v633 = (v632 ^ 0x6307E000) & (4 * v631) ^ v631;
  v634 = ((4 * (v632 ^ 0x108010A1)) ^ 0xCE7FC28C) & (v632 ^ 0x108010A1) ^ (4 * (v632 ^ 0x108010A1)) & 0x739FF0A0;
  v635 = (v634 ^ 0x421FC080) & (16 * v633) ^ v633;
  v636 = ((16 * (v634 ^ 0x31803023)) ^ 0x39FF0A30) & (v634 ^ 0x31803023) ^ (16 * (v634 ^ 0x31803023)) & 0x739FF0A0;
  v637 = v635 ^ 0x739FF0A3 ^ (v636 ^ 0x319F0000) & (v635 << 8);
  v638 = LODWORD(STACK[0x430]) ^ (2 * ((v637 << 16) & 0x739F0000 ^ v637 ^ ((v637 << 16) ^ 0x70A30000) & (((v636 ^ 0x4200F083) << 8) & 0x739F0000 ^ 0x600F0000 ^ (((v636 ^ 0x4200F083) << 8) ^ 0x1FF00000) & (v636 ^ 0x4200F083))));
  v639 = ((LODWORD(STACK[0x35C]) ^ v616 ^ 0x4A9EF2B8) - 1367048704) ^ ((LODWORD(STACK[0x35C]) ^ v616 ^ 0x6C57B842) - 2008205562) ^ ((LODWORD(STACK[0x35C]) ^ v616 ^ 0xA5BFF5A2) + 1101363942);
  LODWORD(STACK[0x5A8]) = -1275800218 - 2009212831 * (((v609 ^ 0xA45D7510) + 829831263) ^ ((v609 ^ 0x51FE2449) - 992646904) ^ ((v609 ^ 0xEF863ACC) + 2058188675));
  LODWORD(STACK[0x5AC]) = -2009212831 * v629 + 1836969898;
  v640 = ((v626 ^ v569 ^ 0x891B73EF) - 1489532488) ^ ((v626 ^ v569 ^ 0x25156FAD) + 188323318) ^ ((v626 ^ v569 ^ 0x772CC771) + 1493187882);
  v641 = v596 + 671845618 - ((2 * v596) & 0x501719E4);
  v642 = (((LODWORD(STACK[0x444]) + 204820475) ^ 0x74B58DCD) - 2069802509) ^ (LODWORD(STACK[0x444]) + 204820475) ^ (((LODWORD(STACK[0x444]) + 204820475) ^ 0x2C9A0AED) - 594618669) ^ (((LODWORD(STACK[0x444]) + 204820475) ^ 0xA03B539E) + 1345294242) ^ (((LODWORD(STACK[0x444]) + 204820475) ^ 0xF7FFF77E) + 132852546) ^ v628;
  LODWORD(STACK[0x59C]) = ((v642 ^ 0x7F36B6AA) - 1379061711) ^ ((v642 ^ 0xCBE7A1A3) + 421275450);
  v643 = (LODWORD(STACK[0x440]) ^ 0xE3D97D38) & (2 * (STACK[0x440] & 0xE31D7E30)) ^ STACK[0x440] & 0xE31D7E30;
  v644 = ((2 * (LODWORD(STACK[0x440]) ^ 0x67C3F938)) ^ 0x9BD0E10) & (LODWORD(STACK[0x440]) ^ 0x67C3F938) ^ (2 * (LODWORD(STACK[0x440]) ^ 0x67C3F938)) & 0x84DE8708;
  v645 = (v644 ^ 0x9C0000) & (4 * v643) ^ v643;
  v646 = ((4 * (v644 ^ 0x84428108)) ^ 0x137A1C20) & (v644 ^ 0x84428108) ^ (4 * (v644 ^ 0x84428108)) & 0x84DE8708;
  v647 = v645 ^ 0x84DE8708 ^ (v646 ^ 0x5A0400) & (16 * v645);
  v648 = (16 * (v646 ^ 0x84848308)) & 0x84DE8700 ^ 0x80168708 ^ ((16 * (v646 ^ 0x84848308)) ^ 0x4DE87080) & (v646 ^ 0x84848308);
  v649 = (v647 << 8) & 0x84DE8700 ^ v647 ^ ((v647 << 8) ^ 0xDE870800) & v648;
  v650 = ((LODWORD(STACK[0x3B4]) ^ v628 ^ 0x92152D08) + 103418073) ^ ((LODWORD(STACK[0x3B4]) ^ v628 ^ 0xBD1671D) - 1611775282) ^ ((LODWORD(STACK[0x3B4]) ^ v628 ^ 0xE1F3FBFC) + 1976360493);
  v651 = LODWORD(STACK[0x440]) ^ (2 * ((v649 << 16) & 0x4DE0000 ^ v649 ^ ((v649 << 16) ^ 0x7080000) & ((v648 << 8) & 0x4DE0000 ^ 0x580000 ^ ((v648 << 8) ^ 0xDE870000) & v648))) ^ v569;
  v652 = -2009212831 * (((LODWORD(STACK[0x374]) ^ v616 ^ 0x2DEB586B) - 1241090326) ^ ((LODWORD(STACK[0x374]) ^ v616 ^ 0x9B1EBAF0) + 15963251) ^ ((LODWORD(STACK[0x374]) ^ v616 ^ 0x35835DC3) - 1368493246)) + 1280647879;
  LODWORD(STACK[0x5EC]) = 189657762 - 2009212831 * v639;
  LODWORD(STACK[0x5F0]) = v652;
  LODWORD(STACK[0x5CC]) = -2009212831 * v640 - 566401834;
  LODWORD(STACK[0x5D0]) = -2009212831 * (((v651 ^ 0x7D078CF0) + 181481881) ^ ((v651 ^ 0xF2C87F45) - 2061581778) ^ ((v651 ^ 0xF832CDD1) - 1880854342)) + 308186837;
  LODWORD(STACK[0x60C]) = -2009212831 * (v614 ^ v627) - 75026750;
  LODWORD(STACK[0x610]) = -2009212831 * (v614 ^ v641) - 75026750;
  v653 = ((LODWORD(STACK[0x378]) ^ v616 ^ 0xF5358A79) - 1406444202) ^ ((LODWORD(STACK[0x378]) ^ v616 ^ 0xEF06FD4B) - 1239930264) ^ ((LODWORD(STACK[0x378]) ^ v616 ^ 0x9945C86A) - 1067770041);
  v654 = ((v638 ^ v569 ^ 0x38851B30) - 445305861) ^ ((v638 ^ v569 ^ 0xA8CDE870) + 1966987451) ^ ((v638 ^ v569 ^ 0x929882F1) + 1332261436);
  v655 = (((LODWORD(STACK[0x44C]) + 1045913577) ^ 0x65D1EA9A) + 827567550) ^ (LODWORD(STACK[0x44C]) + 1045913577) ^ (((LODWORD(STACK[0x44C]) + 1045913577) ^ 0x2406BDD8) + 1887763200) ^ (((LODWORD(STACK[0x44C]) + 1045913577) ^ 0x95541065) - 1042917565) ^ (((LODWORD(STACK[0x44C]) + 1045913577) ^ 0x7FFEFFFF) + 729594073) ^ v628;
  v656 = v594 + 671845618 - ((2 * v594) & 0x501719E4);
  v657 = ((LODWORD(STACK[0x448]) ^ 0x13BF698F) - 275677915) ^ LODWORD(STACK[0x448]) ^ ((LODWORD(STACK[0x448]) ^ 0xF1DD4EAF) + 234052101) ^ ((LODWORD(STACK[0x448]) ^ 0x1E483BCB) - 496619679) ^ ((LODWORD(STACK[0x448]) ^ 0xFFFBF7BF) + 64348949);
  LODWORD(STACK[0x5B4]) = -2009212831 * v650 + 761533640;
  LODWORD(STACK[0x5B8]) = -2009212831 * (((v655 ^ 0xB2ECD36A) - 1736913578) ^ ((v655 ^ 0xB14B4F8F) - 1679863375) ^ ((v655 ^ 0x3D3BC8CE) + 397399794)) - 1763679027;
  v658 = v593 + 671845618 - ((2 * v593) & 0x501719E4);
  v659 = ((v657 ^ v569 ^ 0x5D2073AE) - 41517665) ^ ((v657 ^ v569 ^ 0xF8C005C9) + 1483082746) ^ ((v657 ^ v569 ^ 0x3A70D377) - 1697194680);
  v660 = (((LODWORD(STACK[0x460]) + 597377819) ^ 0x4297B10B) + 1523011435) ^ (LODWORD(STACK[0x460]) + 597377819) ^ (((LODWORD(STACK[0x460]) + 597377819) ^ 0x79455AF0) + 1628808338) ^ (((LODWORD(STACK[0x460]) + 597377819) ^ 0x238B159E) + 1004268544) ^ (((LODWORD(STACK[0x460]) + 597377819) ^ 0xFFF6FFFB) - 408551013);
  v661 = ((LODWORD(STACK[0x450]) ^ 0xE21811D5) + 1451654507) ^ LODWORD(STACK[0x450]) ^ ((LODWORD(STACK[0x450]) ^ 0x48587483) - 54126531) ^ ((LODWORD(STACK[0x450]) ^ 0xDECE09C2) + 1783653758) ^ ((LODWORD(STACK[0x450]) ^ 0x3FEFFFD4) - 1955490964);
  v662 = LODWORD(STACK[0x528]) + 671845618 - ((2 * LODWORD(STACK[0x528])) & 0x501719E4);
  v663 = ((LODWORD(STACK[0x45C]) ^ 0x285CA836) - 1988533734) ^ LODWORD(STACK[0x45C]) ^ ((LODWORD(STACK[0x45C]) ^ 0xF5C3B852) + 1424388734) ^ ((LODWORD(STACK[0x45C]) ^ 0x74BAD2CA) - 710993690) ^ ((LODWORD(STACK[0x45C]) ^ 0xF7FFF77E) + 1457143122);
  v664 = -2009212831 * (((LODWORD(STACK[0x37C]) ^ v616 ^ 0xFC35D8) - 248620308) ^ ((LODWORD(STACK[0x37C]) ^ v616 ^ 0x1ABA7B25) - 345500649) ^ ((LODWORD(STACK[0x37C]) ^ v616 ^ 0x9930F1A5) + 1759682199)) + 1904022998;
  LODWORD(STACK[0x5F4]) = -2009212831 * v653 + 368304749;
  LODWORD(STACK[0x5F8]) = v664;
  LODWORD(STACK[0x5D4]) = -2009212831 * v654 - 1098793274;
  LODWORD(STACK[0x5D8]) = -2009212831 * v659 - 1735426239;
  v665 = ((LODWORD(STACK[0x4B0]) ^ v628 ^ 0x54E93A5F) + 830505199) ^ ((LODWORD(STACK[0x4B0]) ^ v628 ^ 0x524BE35F) + 924998127) ^ ((LODWORD(STACK[0x4B0]) ^ v628 ^ 0xA54E3633) - 1071149949);
  LODWORD(STACK[0x614]) = -75026750 - 2009212831 * (v614 ^ (v595 + 671845618 - ((2 * v595) & 0x501719E4)));
  LODWORD(STACK[0x618]) = -75026750 - 2009212831 * (v614 ^ v656);
  LODWORD(STACK[0x5BC]) = -2009212831 * v665 + 1252278303;
  LODWORD(STACK[0x5C0]) = -2009212831 * (((v660 ^ v628 ^ 0x92FFC76A) - 1868371986) ^ ((v660 ^ v628 ^ 0x26A21095) + 620703763) ^ ((v660 ^ v628 ^ 0xC6133A92) - 1001514474)) - 448208713;
  v666 = (((LODWORD(STACK[0x418]) + 1991084999) ^ 0xA464C5B) + 2001390309) ^ (LODWORD(STACK[0x418]) + 1991084999) ^ (((LODWORD(STACK[0x418]) + 1991084999) ^ 0x8251A21A) - 10672986) ^ (((LODWORD(STACK[0x418]) + 1991084999) ^ 0xF13B48F6) - 1942499766) ^ (((LODWORD(STACK[0x418]) + 1991084999) ^ 0xFBDFDFF7) - 2032969399);
  v667 = ((LODWORD(STACK[0x48C]) ^ 0x5595969E) - 991968465) ^ LODWORD(STACK[0x48C]) ^ ((LODWORD(STACK[0x48C]) ^ 0xB95DB0FB) + 672654668) ^ ((LODWORD(STACK[0x48C]) ^ 0x7B867390) - 355719647) ^ ((LODWORD(STACK[0x48C]) ^ 0xF9FBFFBA) + 1756473867) ^ v569;
  v668 = -2009212831 * (((LODWORD(STACK[0x3A4]) ^ v616 ^ 0x8865C93) + 1938167703) ^ ((LODWORD(STACK[0x3A4]) ^ v616 ^ 0x67FB763E) + 486227260) ^ ((LODWORD(STACK[0x3A4]) ^ v616 ^ 0xEC0B95F5) - 1760829711)) + 1306478372;
  LODWORD(STACK[0x5FC]) = -2009212831 * (((LODWORD(STACK[0x3A0]) ^ v616 ^ 0xEA2B98D4) - 1616639326) ^ ((LODWORD(STACK[0x3A0]) ^ v616 ^ 0x9158689B) - 455607569) ^ ((LODWORD(STACK[0x3A0]) ^ v616 ^ 0xF8054F17) - 1920279197)) - 184008620;
  LODWORD(STACK[0x600]) = v668;
  LODWORD(STACK[0x5E8]) = -2009212831 * v617 - 108272141;
  LODWORD(STACK[0x5E4]) = -2009212831 * (((v667 ^ 0x22DC88D2) - 17996274) ^ ((v667 ^ 0x492D9914) - 1793296436) ^ ((v667 ^ 0x9905F5CD) + 1161042707)) + 1157192717;
  LODWORD(STACK[0x5DC]) = -2009212831 * (((v663 ^ v569 ^ 0xC3EE3960) + 72588662) ^ ((v663 ^ v569 ^ 0x252EA8D8) - 493679410) ^ ((v663 ^ v569 ^ 0x245BEA2C) - 471445958)) - 381890944;
  LODWORD(STACK[0x5E0]) = -2009212831 * (((v661 ^ v569 ^ 0xAF8583F) - 510503112) ^ ((v661 ^ v569 ^ 0x38D734E9) - 742573086) ^ ((v661 ^ v569 ^ 0xE50FB1D2) + 241549019)) + 215588821;
  v669 = LODWORD(STACK[0x594]) + 671845618 - ((2 * LODWORD(STACK[0x594])) & 0x501719E4);
  v670 = (((LODWORD(STACK[0x4D0]) + 804925920) ^ 0x9C92CE2C) - 1936998314) ^ (LODWORD(STACK[0x4D0]) + 804925920) ^ (((LODWORD(STACK[0x4D0]) + 804925920) ^ 0xF4B3C305) - 458568323) ^ (((LODWORD(STACK[0x4D0]) + 804925920) ^ 0xF8B98358) - 392131294) ^ (((LODWORD(STACK[0x4D0]) + 804925920) ^ 0x7F7E7FF7) + 1869050255);
  LODWORD(STACK[0x61C]) = -2009212831 * (v614 ^ v658) - 75026750;
  LODWORD(STACK[0x620]) = -2009212831 * (v614 ^ v662) - 75026750;
  v671 = ((v666 ^ v628 ^ 0xC09C3735) - 1518232744) ^ ((v666 ^ v628 ^ 0x2670E5AC) + 1131235791) ^ ((v666 ^ v628 ^ 0xF1FE472A) - 1797002423);
  v672 = ((LODWORD(STACK[0x4FC]) ^ v628 ^ 0xC1751631) - 704249052) ^ ((LODWORD(STACK[0x4FC]) ^ v628 ^ 0x10634629) + 118510396) ^ ((LODWORD(STACK[0x4FC]) ^ v628 ^ 0xD67F922) + 437578801);
  LODWORD(STACK[0x5C8]) = -2009212831 * v630 - 1821117580;
  LODWORD(STACK[0x5C4]) = -2009212831 * v671 - 1813047760;
  v673 = (LODWORD(STACK[0x4E8]) | LOBYTE(STACK[0x7C1])) + 671845618 - 2 * ((LODWORD(STACK[0x4E8]) | LOBYTE(STACK[0x7C1])) & 0x280B8CF7 ^ STACK[0x7C1] & 5);
  v674 = ((LODWORD(STACK[0x3A8]) ^ v616 ^ 0xE979F189) + 993861721) ^ ((LODWORD(STACK[0x3A8]) ^ v616 ^ 0xEBA941A2) + 971870324) ^ ((LODWORD(STACK[0x3A8]) ^ v616 ^ 0x81A60F73) + 1407377059);
  v675 = -75026750 - 2009212831 * (LODWORD(STACK[0x4EC]) ^ 0xE19A646F ^ v616);
  LODWORD(STACK[0x624]) = -75026750 - 2009212831 * (v614 ^ v669);
  LODWORD(STACK[0x628]) = v675;
  v676 = LODWORD(STACK[0x4E0]) ^ STACK[0x4DC] & 0x4002065E;
  v677 = LODWORD(STACK[0x49C]) ^ STACK[0x498] & 0x41749;
  v678 = (LOBYTE(STACK[0x987]) | (LODWORD(STACK[0x4CC]) << 8)) + 671845618 - 2 * ((LOBYTE(STACK[0x987]) | (LODWORD(STACK[0x4CC]) << 8)) & 0x280B8CFB ^ STACK[0x987] & 9);
  v679 = LODWORD(STACK[0x404]) ^ STACK[0x400] & 0xC8121BA3;
  v680 = ((LODWORD(STACK[0x4F0]) ^ v628 ^ 0xCE8F3AB7) - 1644302040) ^ ((LODWORD(STACK[0x4F0]) ^ v628 ^ 0x5EC61589) + 229957146) ^ ((LODWORD(STACK[0x4F0]) ^ v628 ^ 0xEDEF7ED) + 1571568766);
  LODWORD(STACK[0x608]) = -75026750 - 2009212831 * (v614 ^ v615);
  LODWORD(STACK[0x604]) = -2009212831 * v674 + 54844536;
  v681 = ((LODWORD(STACK[0x4C0]) ^ v628 ^ 0x900ECE7E) - 507566898) ^ ((LODWORD(STACK[0x4C0]) ^ v628 ^ 0x52D2C6AC) + 593701920) ^ ((LODWORD(STACK[0x4C0]) ^ v628 ^ 0xF362DA1D) - 2100088657);
  LODWORD(STACK[0x6AC]) = -2009212831 * (((v670 ^ v569 ^ 0xB0783F42) - 1239071069) ^ ((v670 ^ v569 ^ 0x53C54E3E) + 1436039135) ^ ((v670 ^ v569 ^ 0x901ACEBE) - 1773684897)) - 503475329;
  v682 = (LOBYTE(STACK[0x786]) | (LODWORD(STACK[0x4B4]) << 8)) + 671845618 - 2 * ((LOBYTE(STACK[0x786]) | (LODWORD(STACK[0x4B4]) << 8)) & 0x280B8CF7 ^ STACK[0x786] & 5);
  v683 = (LODWORD(STACK[0x4BC]) - 182869967) ^ 0x68684FEC;
  LODWORD(STACK[0x66C]) = -2009212831 * (((v676 ^ v569 ^ 0x4A97B8AC) - 1820091461) ^ ((v676 ^ v569 ^ 0x5396142) - 601013675) ^ ((v676 ^ v569 ^ 0xC1D6E53) - 720810682)) + 798669206;
  LODWORD(STACK[0x670]) = -75026750 - 2009212831 * (v614 ^ v678);
  v684 = -75026750 - 2009212831 * ((LODWORD(STACK[0x4F4]) - 1925897140) ^ 0x1044CB91 ^ v616);
  LODWORD(STACK[0x62C]) = -2009212831 * v680 - 129662466;
  LODWORD(STACK[0x630]) = v684;
  LODWORD(STACK[0x634]) = -2009212831 * v681 + 5263205;
  LODWORD(STACK[0x638]) = -75026750 - 2009212831 * (v683 ^ v616);
  v685 = (LOBYTE(STACK[0x94C]) | (LODWORD(STACK[0x47C]) << 8)) + 671845618 - 2 * ((LOBYTE(STACK[0x94C]) | (LODWORD(STACK[0x47C]) << 8)) & 0x280B8CFA ^ STACK[0x94C] & 8);
  v686 = ((LODWORD(STACK[0x4B8]) ^ v628 ^ 0xD4EBE978) - 1192351866) ^ ((LODWORD(STACK[0x4B8]) ^ v628 ^ 0x89099B9D) - 452176543) ^ ((LODWORD(STACK[0x4B8]) ^ v628 ^ 0xD23BA078) - 1103204730);
  v687 = ((v679 ^ v569 ^ 0xFA44101A) - 736831092) ^ ((v679 ^ v569 ^ 0x2E083969) + 5828857) ^ ((v679 ^ v569 ^ 0xA73200EB) - 1990014597);
  v688 = (LODWORD(STACK[0x40C]) | (LODWORD(STACK[0x414]) << 8)) + 671845618 - 2 * ((LODWORD(STACK[0x40C]) | (LODWORD(STACK[0x414]) << 8)) & 0x280B8CF6 ^ STACK[0x40C] & 4);
  v689 = LODWORD(STACK[0x3C4]) + 671845618 - ((2 * LODWORD(STACK[0x3C4])) & 0x501719E4);
  v690 = ((LODWORD(STACK[0x490]) ^ v628 ^ 0x7602E49F) + 1422804114) ^ ((LODWORD(STACK[0x490]) ^ v628 ^ 0xA7ADC3A3) - 2057215058) ^ ((LODWORD(STACK[0x490]) ^ v628 ^ 0xB03220F5) - 1828814596);
  v691 = LODWORD(STACK[0x3FC]) ^ STACK[0x3F8] & 0xC205A86 ^ v569;
  LODWORD(STACK[0x678]) = -75026750 - 2009212831 * (v614 ^ v682);
  LODWORD(STACK[0x674]) = -2009212831 * (((v677 ^ v569 ^ 0x41F05FE7) + 864216374) ^ ((v677 ^ v569 ^ 0x7D66EE12) + 252990657) ^ ((v677 ^ v569 ^ 0xBD68C407) - 820347178)) + 25942849;
  LODWORD(STACK[0x67C]) = -2009212831 * v687 + 1834605304;
  LODWORD(STACK[0x680]) = -75026750 - 2009212831 * (v614 ^ v685);
  v692 = -75026750 - 2009212831 * ((LODWORD(STACK[0x480]) - 512774188) ^ 0x7C1E4009 ^ v616);
  LODWORD(STACK[0x644]) = -2009212831 * v690 + 1499323386;
  LODWORD(STACK[0x648]) = v692;
  v693 = -75026750 - 2009212831 * (LODWORD(STACK[0x4C8]) ^ 0xEA5022C6 ^ v616);
  LODWORD(STACK[0x63C]) = -2009212831 * v686 - 1575905791;
  LODWORD(STACK[0x640]) = v693;
  v694 = LODWORD(STACK[0x3E4]) - 496064237;
  v695 = (STACK[0x46C] & 0x801E09A | 0x10000000) ^ LODWORD(STACK[0x470]) ^ v569;
  v696 = LOBYTE(STACK[0x8D6]);
  v697 = v696 | (LODWORD(STACK[0x3BC]) << 8);
  v698 = LODWORD(STACK[0x3B8]) - 949348384;
  v699 = STACK[0x3B0] & 0x8051173;
  v700 = -2009212831 * v672 + 586566457;
  v701 = -75026750 - 2009212831 * (v614 ^ v673);
  v702 = v614 ^ v688;
  v703 = v614 ^ v689;
  v704 = LODWORD(STACK[0x468]) ^ v628;
  v705 = -75026750 - 2009212831 * v702;
  v706 = -75026750 - 2009212831 * v703;
  v707 = STACK[0x3E8] & 0x4017277 ^ LODWORD(STACK[0x3EC]) ^ v569;
  v708 = v614 ^ ((LOBYTE(STACK[0xAD7]) | (LODWORD(STACK[0x3D8]) << 8)) + 671845618 - 2 * ((LOBYTE(STACK[0xAD7]) | (LODWORD(STACK[0x3D8]) << 8)) & 0x280B8CFB ^ STACK[0xAD7] & 9));
  v709 = -75026750 - 2009212831 * ((LODWORD(STACK[0x410]) - 685747054) ^ 0x4A51BB4F ^ v616);
  v710 = LODWORD(STACK[0x3D4]) ^ v628;
  v711 = STACK[0x3C0] & 0xA04A33 ^ LODWORD(STACK[0x3CC]) ^ v569;
  LODWORD(STACK[0x64C]) = -2009212831 * (((v628 ^ LODWORD(STACK[0x3AC]) ^ 0xF9FBC059) + 106044916) ^ ((v628 ^ LODWORD(STACK[0x3AC]) ^ 0xC355E756) + 1023163133) ^ ((v628 ^ LODWORD(STACK[0x3AC]) ^ 0xA161D3C2) + 1590169193)) - 1608925606;
  LODWORD(STACK[0x650]) = v709;
  LODWORD(STACK[0x684]) = -2009212831 * (((v691 ^ 0x86EC237A) - 2027972872) ^ ((v691 ^ 0x9EDB6986) - 1624712180) ^ ((v691 ^ 0x2915D3C3) + 686188111)) + 1072117487;
  LODWORD(STACK[0x688]) = v705;
  LODWORD(STACK[0x690]) = v706;
  LODWORD(STACK[0x68C]) = -2009212831 * (((v695 ^ 0xC7295E25) - 1483199274) ^ ((v695 ^ 0x19002652) + 2041664675) ^ ((v695 ^ 0x7993C954) + 421706661)) + 1498618734;
  LODWORD(v569) = v699 ^ LODWORD(STACK[0x3C8]) ^ v569;
  LODWORD(STACK[0x654]) = -2009212831 * ((((v706 & 0x63243E02 ^ 0xFA0C45D4) - 896670384) ^ ((v706 & 0x63243E02 ^ 0xD24CABFA) - 489878686) ^ ((v706 & 0x63243E02 ^ 0x4B64D02C) + 2078634168)) + (((v706 & 0x63243E02 ^ 0xE5FA1C93) - 607853392) ^ ((v706 & 0x63243E02 ^ 0x7F06559A) + 1094233511) ^ ((v706 & 0x63243E02 ^ 0x9AFC4909) - 1530744522)) + 1925473811 + (((v704 ^ 0x9D1778E3) + 59316076) ^ ((v704 ^ 0xCF607031) + 1375608762) ^ ((v704 ^ 0x3884F213) - 1508205156))) + 481475148;
  LODWORD(STACK[0x658]) = -75026750 - 2009212831 * (v694 ^ 0x7F1F46CE ^ v616);
  v712 = LODWORD(STACK[0x3D0]) ^ v628;
  LODWORD(STACK[0x6A0]) = -75026750 - 2009212831 * (v614 ^ (v697 + 671845618 - 2 * (v697 & 0x280B8CFF ^ v696 & 0xD)));
  LODWORD(STACK[0x69C]) = -2009212831 * (((v711 ^ 0x27827EBB) + 1601678461) ^ ((v711 ^ 0x198E2EAC) + 1635515500) ^ ((v711 ^ 0xCBA0D19D) - 1286274213)) - 993079756;
  LODWORD(STACK[0x694]) = -2009212831 * (((v707 ^ 0xC4ECEFD6) - 1921052287) ^ ((v707 ^ 0xB4D5E1F9) - 45736016) ^ ((v707 ^ 0xFBE5FFF5) - 1300889180)) + 165302869;
  LODWORD(STACK[0x698]) = -75026750 - 2009212831 * v708;
  LODWORD(STACK[0x668]) = v701;
  LODWORD(STACK[0x664]) = -2009212831 * (((v712 ^ 0x5C2269CD) - 1079246869) ^ ((v712 ^ 0x6C5EAAF4) - 1881719596) ^ ((v712 ^ 0x98A0F51D) + 2066309947)) - 266457794;
  LODWORD(STACK[0x65C]) = -2009212831 * (((v710 ^ 0xAEF76733) - 702970251) ^ ((v710 ^ 0xB8CD47B3) - 1071405323) ^ ((v710 ^ 0xCDA5F74B) - 1253370355)) - 1610511531;
  LODWORD(STACK[0x660]) = -75026750 - 2009212831 * (v698 ^ 0x5ADAF83D ^ v616);
  LODWORD(STACK[0x6A8]) = v700;
  LODWORD(STACK[0x6A4]) = -2009212831 * (((v569 ^ 0xA3377317) - 323647839) ^ ((v569 ^ 0x56A86578) + 422219984) ^ ((v569 ^ 0xA0712FA5) - 269231597)) - 2118294780;
  *(&STACK[0x5A8] + ((LODWORD(STACK[0x3F0]) ^ LODWORD(STACK[0x3F4])) & 2)) = -2009212831 * (LODWORD(STACK[0x59C]) ^ ((v642 ^ 0x2EDBD83A) - 64987487)) - 462367400;
  JUMPOUT(0x19698AAC8);
}

uint64_t sub_19698AB24@<X0>(unsigned int a1@<W0>, char a2@<W1>, int a3@<W2>, int a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W8>)
{
  v14 = v12 < a1;
  *(a7 + a8) = *(a6 + v8) - (a2 & (2 * *(a6 + v8))) - 20;
  if (v14 == v8 + 1 > ((v9 + a4) & a5) + v10)
  {
    v14 = v11 + v8 + 214 < v12;
  }

  return (*(v13 + 8 * ((!v14 * a3) ^ v9)))();
}

void sub_19698B238(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  *&STACK[0x410] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x2F0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3F0] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x400] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  STACK[0x230] = v15 & 0xFFFFFFF0;
  *&STACK[0x3D0] = vdupq_n_s64(v7);
  *&STACK[0x3E0] = vdupq_n_s64(v16);
  *&STACK[0x2D0] = vdupq_n_s64(v8);
  *&STACK[0x2E0] = vdupq_n_s64(v14);
  *&STACK[0x2B0] = vdupq_n_s64(v10);
  *&STACK[0x2C0] = vdupq_n_s64(v9);
  *&STACK[0x250] = vdupq_n_s64(a7);
  *&STACK[0x260] = vdupq_n_s64(v13);
  *&STACK[0x290] = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  *&STACK[0x2A0] = vdupq_n_s64(v12);
  *&STACK[0x3B0] = vdupq_n_s64(a1);
  *&STACK[0x3C0] = vdupq_n_s64(v11);
  *&STACK[0x390] = vdupq_n_s64(a3);
  *&STACK[0x3A0] = vdupq_n_s64(a2);
  *&STACK[0x370] = vdupq_n_s64(a4);
  *&STACK[0x380] = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x350] = vdupq_n_s64(a6);
  *&STACK[0x360] = vdupq_n_s64(a5);
  *&STACK[0x280] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x270] = xmmword_196EBFA60;
  JUMPOUT(0x19698B378);
}

uint64_t sub_19698BE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v54 = *v52;
  STACK[0x968] = 0;
  LODWORD(STACK[0x8B4]) = 0;
  return (*(v53 + 8 * (((v54 == 0) * (((v51 + 908086690) & 0xC9DFBF9F ^ 0x5E3) - 3015)) ^ (((v51 + 908086690) & 0xC9DFBF9F) - 3012))))(a1, a2, *(v53 + 8 * v51), a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

void sub_19698BF60()
{
  *&STACK[0x3D0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3E0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3A0] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x200] = vdupq_n_s64(0xFBFFFFFFFFFFFFFFLL);
  *&STACK[0x410] = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  *&STACK[0x3B0] = vdupq_n_s64(0x8EB890C1F5A7514ELL);
  *&STACK[0x3C0] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x380] = vdupq_n_s64(0xDCED4F79D683836ALL);
  *&STACK[0x390] = vdupq_n_s64(0x26FE75566C512012uLL);
  *&STACK[0x370] = vdupq_n_s64(0xEE76A7BCEB41C1B5);
  *&STACK[0x360] = xmmword_196EBFA60;
  JUMPOUT(0x19698C1F0);
}

uint64_t sub_19698D834@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(v3 + v5) = *(a1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (v1 - 1169)) ^ v1)))();
}

void sub_19698D904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19)
{
  a17 = 0;
  a19 = a14;
  a18 = v20 + ((&a17 - 60287223 - 2 * (&a17 & 0xFC681709)) ^ 0xD0BC6A95) * v21 + v23 + 1070;
  (*(v19 + 8 * (v22 + v23 + 851)))(&a17);
  JUMPOUT(0x1969240A8);
}

uint64_t sub_19698D9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(STACK[0x538] + 24);
  STACK[0x5B0] = v7;
  return (*(a6 + 8 * (((v7 != 0) * (((v6 - 1678) | 0x294) - 1706)) ^ v6)))();
}

void sub_19698DA58()
{
  v4 = *(v1 + 24);
  **(v1 + 16) = v0;
  *v4 = v3;
  *(v1 + 4) = *(v2 + 24);
}

uint64_t sub_19698DBBC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v5 = (v2 - 770) | 0x1309;
  *v9 = a1;
  *v8 = a2;
  v6 = (v5 + 1002870698) & 0xC4395FDE;
  v12 = v5 - (((&v12 | 0x731F3180) - (&v12 & 0x731F3180)) ^ 0x8BC311C1) * v3 + 1224;
  v13 = v11;
  (*(v4 + 8 * (v5 ^ 0x9A6)))(&v12);
  v12 = v6 - (((&v12 | 0xDAF64C04) - (&v12 & 0xDAF64C04)) ^ 0x222A6C45) * v3 + 3391;
  v13 = v10;
  (*(v4 + 8 * (v6 ^ 0x103D)))(&v12);
  return 0;
}

uint64_t sub_19698DBE0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = (a2 - 829) | 0x491u;
  **(a1 + 8) = v5 + v6 + (v7 ^ 0x4B3);
  return (*(v4 + 8 * ((848 * (*(a3 + 24) == v7 + v3)) ^ v7)))();
}

uint64_t sub_19698DC6C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((3412 * (v5 == ((v3 + 1511017657) & 0xA5EFB7BF ^ 0x103FLL))) ^ (v3 - 1782))))();
}

uint64_t sub_19698DCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unsigned int a33)
{
  v37 = *(&a21 + v33 + 72);
  v38 = ((2 * v33) & 0xFF7CF778) + (v33 ^ 0xFFBE7BBE) + v34;
  *(a1 + v38) = (HIBYTE(v37) ^ 0x7C) - (((v35 - 58) ^ 0xB5) & (2 * (HIBYTE(v37) ^ 0x7C))) - 20;
  *(a1 + v38 + 1) = (BYTE2(v37) ^ 0x47) - ((2 * (BYTE2(v37) ^ 0x47)) & 0xD8) - 20;
  *(a1 + v38 + 2) = (BYTE1(v37) ^ 7) - ((2 * (BYTE1(v37) ^ 7)) & 0xD8) - 20;
  *(a1 + v38 + 3) = v37 ^ 0x87;
  return (*(v36 + 8 * ((2465 * (v33 + 4 < a33)) ^ v35)))();
}

uint64_t sub_19698DD90(uint64_t a1)
{
  *a1 = 237100009;
  *(a1 + 4) = 0;
  *(a1 + 64) = v2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 17152;
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  *(a1 + 56) = v2;
  v3 = STACK[0x3C8];
  *(v3 + 84) = 7;
  *(v3 + 104) = 0;
  *(v3 + 88) = v2;
  *(v3 + 96) = v2;
  *(v3 + 108) = 0;
  *v1 = v3;
  return (STACK[0x3E0])();
}

uint64_t sub_19698DDEC()
{
  STACK[0x750] = v0;
  v3 = (*(v2 + 8 * (v1 ^ 0x1DF8)))(32, 0x103004054B5FA7DLL);
  STACK[0x520] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (29 * (v1 ^ 0x70E) - 3362)) ^ v1)))();
}

void fp_dh_317b9ebff42a3a2f09f67d19747a0915(uint64_t a1)
{
  v1 = 753662761 * ((~a1 & 0x83AC854E | a1 & 0x7C537AB1) ^ 0xE6B67E05);
  v2 = *(a1 + 4) ^ v1;
  v3 = (*a1 - v1);
  if (*(a1 + 8))
  {
    v4 = v3 == 1556;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_19698DF34()
{
  LODWORD(STACK[0x69C]) = v0;
  STACK[0x488] = STACK[0x5D8];
  STACK[0x800] = *(v2 + 8 * (v1 ^ 0xEA3));
  LODWORD(STACK[0x410]) = v3 - 3580;
  LODWORD(STACK[0x400]) = v3 - 3374;
  return (*(v2 + 8 * (((&STACK[0x488] == 0) * (((((v1 ^ 0xEA3) + 5108) ^ 0xEF4) - 2745) ^ ((v1 ^ 0xEA3) + 3421))) ^ ((v1 ^ 0xEA3) + 5108))))();
}

uint64_t sub_19698DF60()
{
  v4 = *STACK[0x3E0];
  v5 = __ROR8__((v4 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = (0x2AF7234D0CC131D4 - v5) & 0x2A199E3A6C7C6131 | (v5 + v1) & 0xD1E661C593839ECELL;
  v7 = v6 ^ 0x67F0DC01036A86E3;
  v6 ^= 0xCFB639969A9CF7BFLL;
  v8 = __ROR8__(v7, 8);
  v9 = (((2 * (v8 + v6)) | 0x1ED977F0C520FDA0) - (v8 + v6) + 0x709344079D6F8130) ^ 0x6BF1CC27E5ADC1AELL;
  v10 = v9 ^ __ROR8__(v6, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * (v11 + v10)) & 0xAB878F6F884E2F0ELL) - (v11 + v10) + 0x2A3C38483BD8E878) ^ 0xDF9EC9F18E085A71;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = __ROR8__(v12, 8);
  v15 = __ROR8__((0x32FA8FDF7E2CED0CLL - ((v14 + v13) | 0x32FA8FDF7E2CED0CLL) + ((v14 + v13) | 0xCD05702081D312F3)) ^ 0x9466C6E5D40A6DECLL, 8);
  v16 = (0x32FA8FDF7E2CED0CLL - ((v14 + v13) | 0x32FA8FDF7E2CED0CLL) + ((v14 + v13) | 0xCD05702081D312F3)) ^ 0x9466C6E5D40A6DECLL ^ __ROR8__(v13, 61);
  v17 = (((2 * (v15 + v16)) | 0xC9AD8CEC88B7F32) - (v15 + v16) - 0x64D6C676445BF99) ^ 0x6708F14D945A9B6ELL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x64C31C027084DE6CLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = *(STACK[0x248] + 8 * (v2 - 3495));
  v23 = (((v21 + v20) & 0x63AF45F0EF53838FLL ^ 0x294560A0428381) + ((v21 + v20) & 0x9C50BA0F10AC7C70 ^ 0x10503A0C108C4421) - 1) ^ 0xA539488F29D68A2;
  v24 = v23 ^ __ROR8__(v20, 61);
  v25 = __ROR8__(v23, 8);
  *(v4 + 4) = v0 ^ 0xDD ^ (((0xB80DBCCEE227D4F9 - ((v25 + v24) | 0xB80DBCCEE227D4F9) + ((v25 + v24) | 0x47F243311DD82B06)) ^ 0xECC201E3355F7747) >> (8 * ((v4 + 4) & 7)));
  v26 = __ROR8__((v4 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = (v26 + v1) ^ 0xE1AFA7ACF6E0968ELL;
  v28 = (__ROR8__((v26 + v1) ^ 0x49E9423B6F16E7D2, 8) + v27) ^ 0xE49D77DF873DBF7ELL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xF5A2F1B9B5D0B209;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x5963B6C555D97F1FLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x61459D2AF01F24F7;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x64C31C027084DE6CLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v3;
  *(v4 + 5) = (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v4 + 5) & 7))) ^ 0xDB;
  return v22();
}

uint64_t sub_19698E00C()
{
  v4 = 998242381 * (((v1 | 0xFB94A625) - v1 + (v1 & 0x46B59D8)) ^ 0x51FB3EF3);
  v5 = LODWORD(STACK[0x20C]) - v4 - 1065587238;
  *(v3 - 184) = (LODWORD(STACK[0x42C]) ^ 0x75E6DDB3) + v4 + ((877 * (v0 ^ 0x6AE)) ^ ((v0 ^ 0xF9A) - 1143366958)) + ((2 * LODWORD(STACK[0x42C])) & 0xEBCDBB66);
  *(v3 - 180) = v5;
  *(v3 - 188) = (v0 + 1099) ^ v4;
  *(v3 - 176) = STACK[0x218];
  *(v3 - 200) = &STACK[0x4D8];
  *(v3 - 208) = &STACK[0x38C];
  v6 = (*(v2 + 8 * (v0 + 5195)))(v3 - 208);
  v7 = *(v3 - 192);
  LODWORD(STACK[0x450]) = v7;
  return (*(v2 + 8 * ((3019 * (v7 == 1906281716)) ^ v0)))(v6);
}

uint64_t sub_19698E124()
{
  v3 = 64 - (v0 - 1622544449);
  v4 = 1622544448 - v0;
  if (HIDWORD(v3))
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 >= v3;
  }

  v6 = !v5;
  return (*(v2 + 8 * ((((v1 + 486) ^ 0x15D1) * v6) | v1)))();
}

uint64_t sub_19698E278()
{
  (*(v3 + 8 * (v1 + 2705)))(v0);
  v4 = STACK[0x228];
  LODWORD(STACK[0x464]) = v2;
  STACK[0x6A0] = STACK[0x7E8];
  STACK[0x800] = *(v3 + 8 * (v1 - 3787));
  LODWORD(STACK[0x410]) = v4 - 3580;
  LODWORD(STACK[0x400]) = v4 - 3374;
  return (*(v3 + 8 * (((&STACK[0x6A0] == 0) * ((((v1 + 1283) ^ 0xEF4) - 2745) ^ (v1 - 404))) ^ (v1 + 1283))))();
}

uint64_t sub_19698E438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 8 * (v6 + 3453)))((v6 + 2381) ^ 0x9976EE86 ^ LODWORD(STACK[0x4B8]), 0x100004077774924);
  v9 = STACK[0x370];
  STACK[0x908] = v8;
  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = 1906239688;
  }

  LODWORD(STACK[0x914]) = v10;
  return (*(v9 + 8 * (((v8 != 0) * (((4 * v6) ^ 0x380C) - 3100)) ^ v6)))();
}

uint64_t sub_19698E4BC@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 - 2847) | 0xB1Au;
  *(a1 + v2) = 0;
  v6 = v2 + ((v5 - 2938) | 0x40Au) - 1026 != ((v5 - 2914) & v1);
  return (*(v4 + 8 * (v6 | (4 * v6) | v5)))();
}

uint64_t sub_19698E508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t (*a22)(uint64_t), uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28)
{
  v31 = 1283153057 * ((((v30 - 144) | 0x913C2900) - ((v30 - 144) & 0x913C2900)) ^ 0xDEE42A37);
  *(v30 - 144) = v31 + (a28 ^ 0xFFC8E57E) + ((2 * a28) & 0x20) + 754925568;
  *(v30 - 136) = a27;
  *(v30 - 128) = (v28 - 2362) ^ v31;
  v32 = (*(v29 + 8 * (v28 ^ 0xE51)))(v30 - 144);
  return a22(v32);
}

uint64_t sub_196993830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, int a23, unsigned int a24, uint64_t a25, char *a26, unsigned int a27)
{
  v30 = 1012216201 * ((-1385045456 - (&a22 | 0xAD71E230) + (&a22 | 0x528E1DCF)) ^ 0xD6279523);
  a27 = v30 + v29 - 1795305762;
  a22 = v30 ^ 0x80F33AC;
  a24 = v30 + 1249100332;
  a25 = a20;
  a26 = &a17;
  v31 = (*(v28 + 8 * (v29 ^ 0x1341)))(&a22);
  return (*(v28 + 8 * (((a23 == v27) * ((v29 ^ 0x1AA3 ^ (a16 - 2473)) + (v29 ^ 0xE5B1EAE))) ^ v29)))(v31);
}

uint64_t fp_dh_ef79ca9f25c1a3acc2aa506fa496c046(uint64_t a1, uint64_t a2)
{
  v2 = (fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_48e08ed9ea9b27d3dbd2f448a82f543c) ^ &v8;
  fp_dh_48e08ed9ea9b27d3dbd2f448a82f543c = 810526117 * v2 + 0x3983E51A1E6C17ABLL;
  fp_dh_f272d8beb7e490dc1fc02e5519da452d = 810526117 * (v2 ^ 0xC67C1AE5E193E855);
  v3 = *(a2 + 4);
  v4 = -91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - (-91 * v2 - 85)) ^ 0x55);
  v5 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v4 ^ fp_dh_085b997b52366f602a7525e2de3d45fc[fp_dh_2105d8695f17c8422a3228296125ea91[v4] ^ 0x7F]) + 583) - 4;
  if (v3 == 763604094)
  {
    __asm { BRAA            X1, X17 }
  }

  if (v3 == 763604101)
  {
    v6 = **(a2 + 8) - 9;
    __asm { BRAA            X2, X17 }
  }

  return 4294925278;
}

uint64_t sub_196993CD4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(a6 + 8 * (((v6 == 0) * ((5 * ((289 * ((v7 - 850021186) & 0x32AA57E6 ^ 0x15C1)) ^ 0x20C)) ^ 0x733)) | (289 * ((v7 - 850021186) & 0x32AA57E6 ^ 0x15C1)))))();
}

uint64_t sub_196993D54()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_196993DD0(int a1, uint64_t a2)
{
  v7 = a2 - 1;
  *(v5 + v7) ^= *(v2 + (v7 & 0xF)) ^ *(v3 + (v7 & 0xF)) ^ (69 * (v7 & 0xF)) ^ *((v7 & 0xF) + v4 + 2);
  return (*(v6 + 8 * ((7338 * (v7 == 0)) ^ (a1 - 3763))))();
}

uint64_t sub_196993E28(uint64_t a1, uint64_t a2, int a3)
{
  v9 = v3 - 1;
  *(v6 + v9) = *(v5 + v9);
  return (*(v7 + 8 * ((117 * (v9 == (v4 - v8 + 2163) - 6442)) ^ (a3 + v4 + 3523))))();
}

uint64_t sub_196993EA0@<X0>(int a1@<W2>, int a2@<W8>)
{
  v5 = *(v3 + a2 * a1 + 36);
  LODWORD(STACK[0x534]) = v5;
  v6 = v5 + 877 * (v2 ^ 0x6F0) + 881465882;
  v8 = v6 > -588597763 && v6 < SLODWORD(STACK[0x308]);
  return (*(v4 + 8 * ((4540 * v8) ^ v2)))();
}

uint64_t sub_196993F04(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  *a1 = 1498173510;
  *(a1 + 4) = v32 ^ 0x7B ^ v30 ^ 0x3E;
  *(a1 + 5) = 513;
  *(a1 + 7) = 0;
  *(a1 + 8) = -2113929216;
  *(a1 + 12) = 2;
  *(a1 + 13) = *(v29 + 14);
  *(v33 - 128) = a1 + 14;
  *(v33 - 144) = ((((v33 - 144) | 0xC556) - ((v33 - 144) | 0x3AA9) + 15017) ^ 0xB8CA) * a4 + 6847;
  *(v33 - 140) = ((((v33 - 144) | 0x3EF8C556) - ((v33 - 144) | 0xC1073AA9) - 1056490839) ^ 0x122CB8CA) * a4 + v30 - 1629;
  v34 = (*(v31 + 8 * (v30 + 2675)))(v33 - 144);
  *(a1 + 14) = 256;
  return (*(v31 + 8 * ((2362 * (a1 - a29 + (v30 ^ 0x1EDCu) - 3950 < 0x20)) ^ v30)))(v34);
}

uint64_t sub_196994014(uint64_t a1, uint64_t a2)
{
  v8 = a2 + v7;
  v9 = a2 - 1;
  v10 = STACK[0x370];
  *(v4 + v9) = *(v5 + v9) ^ *(v6 + v9) ^ (-87 * v9) ^ *(v8 + 1) ^ *(v2 + v9) ^ 0xEC;
  return (*(v10 + 8 * (((v9 == 0) * ((v3 - 587) ^ 0x1C4D)) ^ v3)))();
}

uint64_t sub_196994078@<X0>(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = vld4_s8(v3);
  v7.val[0] = v6.val[3];
  v7.val[1] = v6.val[2];
  v7.val[2] = v6.val[1];
  v7.val[3] = v6.val[0];
  vst4_s8(v3, v7);
  return (*(a3 + 8 * (((a2 == 0) * a1) ^ v4)))();
}

void fp_dh_d3a872c34cbd73fe8194a698d07dd7d8(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *a1 ^ (1825732043 * ((-1178899978 - (a1 | 0xB9BB69F6) + (a1 | 0x46449609)) ^ 0x46D2C53E));
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 8);
  v5 = *(a1 + 24);
  v10[0] = 0x285020DC00000082;
  v10[1] = &v11;
  v9[0] = 0x285020DC00000082;
  v9[1] = &v12;
  v6 = v5[1];
  v15 = v5;
  v16 = v6;
  LODWORD(v14) = v1 + 1283153057 * ((2 * (&v13 & 0x7E730178) - &v13 - 2121466235) ^ 0xCE54FDB2) + 647;
  v13 = v10;
  v17 = v2;
  v18 = v3;
  v7 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0xFD1)) - 4;
  (*&v7[8 * v1 + 26416])(&v13);
  v8 = *v5;
  LODWORD(v13) = (654144011 * ((((2 * &v13) | 0x9489B750) - &v13 + 901456984) ^ 0xE690A634)) ^ (v1 + 750);
  v14 = v8;
  v15 = v9;
  (*&v7[8 * (v1 ^ 0x1706)])(&v13);
  v13 = v4;
  HIDWORD(v14) = (1621291457 * (&v13 ^ 0x36178199)) ^ (v1 + 701);
  (*&v7[8 * (v1 ^ 0x16B9)])(&v13);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969942C0@<X0>(unint64_t a1@<X8>)
{
  STACK[0x370] = a1;
  *&STACK[0x350] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3E0] = vdupq_n_s64(0x9DEA8F311324A00DLL);
  *&STACK[0x3F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3C0] = vdupq_n_s64(0xF0A3D2B2DAD0ADA6);
  *&STACK[0x3D0] = vdupq_n_s64(v4);
  *&STACK[0x3B0] = vdupq_n_s64(0xF4A3D2B2DAD0ADA6);
  *&STACK[0x330] = vdupq_n_s64(0xEAB5CC19324E229uLL);
  *&STACK[0x340] = vdupq_n_s64(0xE1FF25490A01E245);
  *&STACK[0x320] = vdupq_n_s64(0x5424D64A200F187uLL);
  v5 = 3 * (v3 ^ 0x8AA);
  *&STACK[0x300] = vdupq_n_s64(0xD55F4D68987D3CBBLL);
  *&STACK[0x310] = xmmword_196EBFBD0;
  *&STACK[0x2E0] = vdupq_n_s64(0xB33FBF243F06FBC9);
  *&STACK[0x2F0] = vdupq_n_s64(0x667F7E487E0DF792uLL);
  *&STACK[0x2C0] = vdupq_n_s64(0x7647E08E13D90E2uLL);
  *&STACK[0x2D0] = vdupq_n_s64(0xE8836A3EEB59375ELL);
  *&STACK[0x2A0] = vdupq_n_s64(0xA8D9890C4D09A340);
  *&STACK[0x2B0] = vdupq_n_s64(0x7C4DC0FB8F61378EuLL);
  *&STACK[0x390] = vdupq_n_s64(0x58FB3C07CCBDF75AuLL);
  *&STACK[0x3A0] = vdupq_n_s64(0xB1F6780F997BEEB4);
  *&STACK[0x280] = vdupq_n_s64(0x60B83CEF67356D1BuLL);
  *&STACK[0x290] = vdupq_n_s64(0x836EA13BF7F542CCLL);
  *&STACK[0x260] = vdupq_n_s64(0xB9699EEB72020FC9);
  *&STACK[0x270] = vdupq_n_s64(0xBB5B6BF4C59B502uLL);
  *&STACK[0x360] = xmmword_196EBFA60;
  v6 = STACK[0x248];
  STACK[0x9B0] = *(STACK[0x248] + 8 * v2);
  v7 = ((v5 - 1463555141) & 0x573C0E3E ^ 0xFFFFFFFFFFFFF1F3) + v1 < 0xFFFFFFFFFFFFFFF0;
  return (*(v6 + 8 * ((v7 | (8 * v7)) ^ v5)))();
}

uint64_t sub_196994590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v7 + 4);
  *(a1 + 20) = v8;
  return (*(a6 + 8 * ((((v6 - 816307413) & 0x30A7DF9F ^ 0x14F) * (v8 != 0)) ^ v6)))();
}

uint64_t sub_196994788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + (v12 + 3144) - 5440) = (&a10 ^ 0xBA) * (&a10 + 17);
  *(v10 + 30) = (&a10 ^ 0xBB) * (&a10 + 18);
  return (*(v11 + 8 * v12))();
}

uint64_t sub_196994870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = (*(v70 + 8 * (v69 + 310)))(LODWORD(STACK[0x480]) ^ 0x9976F8DB, 0x100004077774924);
  STACK[0xA88] = v71;
  if (v71)
  {
    a69 = 1906281716;
  }

  LODWORD(STACK[0xA94]) = a69;
  return (*(v70 + 8 * (((v71 != 0) * ((v69 + 98415492) & 0xFA22377D ^ 0x450)) ^ v69)))();
}

void sub_1969948FC(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  a4 = v7 - ((2 * (&a4 & 0x6641C0D8) - &a4 + 431898404) ^ 0xE1621F65) * v5 + 4200;
  a5 = a1;
  (*(v6 + 8 * (v7 ^ 0x1DC6)))(&a4);
  JUMPOUT(0x196994958);
}

uint64_t sub_1969949D0@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v6 = v5 < v3;
  *(v4 + v2) = 0;
  v7 = v2 + 1;
  if (v6 == v7 > 0xFFFFFFFF35B9E9A0)
  {
    v6 = v7 + v3 < v5;
  }

  return (*(a1 + 8 * ((v6 * (((a2 + 481921114) & 0xE34673FC) - 365)) ^ a2)))();
}

uint64_t sub_196994BA8()
{
  v3 = *(v1 + 8 * (((v2 + 32 - STACK[0x808] >= ((v0 + 160866161) & 0xF6696DFF ^ 0x3D1) - 3583) * (5 * ((v0 + 160866161) & 0xF6696DFF ^ 0xD67) + 52)) ^ (v0 + 160866161) & 0xF6696DFF));
  STACK[0x9A0] = *(v1 + 8 * v0);
  return v3(0xC17A025099347672, 0xB64EDDBD1051F4D4, 0);
}

uint64_t sub_196994D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21)
{
  v24 = 1012216201 * ((((2 * &a16) | 0x5A359D74) - &a16 - 756731578) ^ 0xA9B34656);
  a21 = v24 + v23 - 1795305139;
  a19 = a12;
  a20 = &a14;
  a16 = v24 ^ 0x80F33AA;
  a18 = v24 - 1727888643;
  v25 = (*(v21 + 8 * (v23 ^ 0x1DD0)))(&a16);
  return (*(v21 + 8 * (((a17 == (v23 ^ 0x5EC ^ (v22 + 347))) * ((v23 + 594802647) & 0x2DF ^ 0x2DF)) ^ v23)))(v25);
}

void sub_196994DE0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  v25 = (v22 + 578816561) & 0xDD7FEFD7;
  v26 = (v25 - 1611569586) & 0x600E9BF7;
  *a4 = a1;
  *a11 = a18 ^ (v23 + 1152) ^ v25;
  a22 = a16;
  a21 = v26 - 1790939281 * ((2 * (&a21 & 0x648B9F18) - &a21 + 460611812) ^ 0xE3A840A5) + 3599;
  (*(v24 + 8 * (v26 ^ 0x136D)))(&a21);
  JUMPOUT(0x196994EA8);
}

uint64_t sub_196994F58(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = -10024;
  a1.n128_u8[2] = -40;
  a1.n128_u8[3] = -40;
  a1.n128_u8[4] = -40;
  a1.n128_u8[5] = -40;
  a1.n128_u8[6] = -40;
  a1.n128_u8[7] = -40;
  a2.n128_u16[0] = -4884;
  a2.n128_u8[2] = -20;
  a2.n128_u8[3] = -20;
  a2.n128_u8[4] = -20;
  a2.n128_u8[5] = -20;
  a2.n128_u8[6] = -20;
  a2.n128_u8[7] = -20;
  return sub_196994F90(a1, a2);
}

void MpmZulZW()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0CB90 + (*(off_1F0B0C400 + (-91 * (fp_dh_f5ed92673e7d2638522c198d7d8b73a7 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))) ^ 0xCu)) ^ (-91 * (fp_dh_f5ed92673e7d2638522c198d7d8b73a7 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))) + 201);
  v1 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - *v0) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - *v0) ^ 0x55))] ^ 0x1D]) + 385);
  v2 = 810526117 * (&v4[*v0 + *(v1 - 4)] ^ 0xC67C1AE5E193E855);
  *v0 = v2;
  *(v1 - 4) = v2;
  v5[0] = 1575331711 * ((v5 & 0x3192108A | ~(v5 | 0x3192108A)) ^ 0xA2367A77) + 1655634431;
  LOBYTE(v1) = -91 * ((*(v1 - 4) + *v0) ^ 0x55);
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_f5ed92673e7d2638522c198d7d8b73a7) ^ 0x55)) ^ fp_dh_9f3a64ae35be94ec7344ce35efe855d0[fp_dh_6f808fec9028d604a6d723482abcf3ae[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_f5ed92673e7d2638522c198d7d8b73a7) ^ 0x55))] ^ 0xA7]) + 449) - 4;
  (*&v3[8 * (*(off_1F0B0C8F0 + (*(off_1F0B0CD68 + v1 - 4) ^ 0x4Eu) - 4) ^ v1) + 53032])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196995220()
{
  v2 = STACK[0x7E8];
  LODWORD(STACK[0x464]) = 1906281716;
  *STACK[0x6B8] = v2;
  LODWORD(STACK[0x824]) = 1906281716;
  return (*(v1 + 8 * ((((((v0 - 772843953) & 0x2E10AE5C) + 1811396307) & 0x94083B1C) + 4866) ^ (3 * ((v0 - 772843953) & 0x2E10AE5C ^ 0xCAD)) ^ (((v0 - 772843953) & 0x2E10AE5C) - 1249))))();
}

void sub_196995260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  *v13 = a1;
  *v12 = (v11 + 768) ^ (v14 + 3441) ^ a11;
  JUMPOUT(0x1968D55E0);
}

void sub_196995328()
{
  LOWORD(STACK[0x9DE]) = v0;
  LODWORD(STACK[0x410]) = v0;
  JUMPOUT(0x196A17488);
}

void sub_19699539C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *v32 = ((((a20 - v31) | (v31 - a20)) >> 31) ^ 0x7FFFFFFF) + (v31 ^ 0x1D7 ^ (v31 + 470));
  (*(v33 + 8 * (v31 ^ 0x1A41)))(a31);
  JUMPOUT(0x1969953FCLL);
}

uint64_t sub_1969954A4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  v8 = *(v6 + a5 + 16);
  v9 = (a2 + a5);
  *(v9 - 1) = *(v6 + a5);
  *v9 = v8;
  return (*(v7 + 8 * (((v5 == a5) * a4) ^ a3)))();
}

uint64_t sub_1969955A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, char a23)
{
  v29 = (((&a16 | 0xD1250407) - (&a16 | 0x2EDAFBF8) + 786103288) ^ 0x4CBE596) * v27;
  a20 = v28 - v29 + 1053;
  a21 = (a13 ^ 0x57BFFDFD) - v29 + (v26 & 0xAF7FFBFA) - 312588648 + ((v28 - 511) ^ 0x1D17);
  a23 = (((&a16 | 7) - (&a16 | 0xF8) - 8) ^ 0x96) * v27 + 102;
  a18 = v23;
  a19 = v25 + 36;
  a22 = v25;
  a16 = a11;
  (*(v24 + 8 * (v28 + 3142)))(&a16);
  return (*(v24 + 8 * ((8058 * (a17 == 1906281716)) ^ v28)))(a14);
}

void fp_dh_142e98d6f3252e312dc2850dbfeb5290(uint64_t a1)
{
  v1 = 1283153057 * ((2 * (a1 & 0x1E30AF5D) - a1 - 506507102) ^ 0xAE175395);
  __asm { BRAA            X1, X17 }
}

uint64_t sub_1969957D8()
{
  v5 = v1 + v7 + 1491;
  *(v4 - 128) = v5 - 1790939281 * ((((2 * (v4 - 136)) | 0x4A4D3D34) - (v4 - 136) - 623287962) ^ 0xDDFABEDB) + 1489674037;
  *v0 = v3;
  (*(v2 + 8 * (v1 + v7 - 1469341392)))(v4 - 136);
  return (v8 ^ 0xFB9FCCF7) + 1979695101 + ((v5 ^ 0xA0ABE6B7) & (2 * v8)) - 1906281716;
}

uint64_t sub_1969959DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = STACK[0x560];
  STACK[0x590] = STACK[0x560];
  v10 = *(STACK[0x738] + 100);
  v11 = STACK[0x738] + 104;
  v12 = *(STACK[0x738] + 120);
  v13 = STACK[0x4B0];
  v14 = ((LODWORD(STACK[0x4A4]) ^ (v6 - 1081469776)) + 1081468247) ^ ((LODWORD(STACK[0x4A4]) ^ 0xA25B1B61) + 1571087519) ^ ((LODWORD(STACK[0x4A4]) ^ 0x84A7F913) + 2069366509);
  v15 = (v8 - 224) & 0x829D1B65;
  v16 = 753662761 * ((v8 - 2103633275 - 2 * v15) ^ 0xE787E02E);
  *(v8 - 176) = v16 + 1380726813;
  *(v8 - 184) = v9;
  v17 = -753662761 * ((v8 - 2103633275 - 2 * v15) ^ 0xE787E02E);
  *(v8 - 200) = v11;
  *(v8 - 192) = ((5 * (v6 ^ 0x180)) ^ 0x7EBFE1B2) + v16 + (v12 ^ 0xBBF3FFDF) + ((2 * v12) & 0x77E7FFBE);
  *(v8 - 188) = v17 + 183904433 * v10 + 1045703498;
  *(v8 - 168) = v13;
  *(v8 - 216) = v9;
  *(v8 - 208) = v17 + 286780367 * v14 + 1229026305;
  *(v8 - 204) = v16 + v6 + 12;
  v18 = (*(a6 + 8 * (v6 + 5435)))(v8 - 224);
  return (*(STACK[0x370] + 8 * ((3181 * (*(v8 - 224) == v7)) ^ v6)))(v18);
}

uint64_t sub_196995B6C@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, unint64_t a38)
{
  v40 = STACK[0x228] + 3038;
  v41 = (v38 ^ a1) + STACK[0x2B0];
  STACK[0x9F0] = v41;
  return (*(v39 + 8 * (v40 ^ (1019 * (v41 <= a38)))))();
}

uint64_t sub_196995C24@<X0>(int a1@<W8>)
{
  v3 = a1 ^ 0xC95;
  (*(v2 + 8 * (a1 ^ 0x1F17)))();
  *(v1 + 24) = 0;
  (*(v2 + 8 * (v3 ^ 0x1382)))(v1);
  return (STACK[0x840])();
}

void sub_196995CD4()
{
  v3 = *(v0 + 16);
  v2 = (v0 + 16);
  v1[16] = *v1 ^ v3;
  v4 = v1 + 16;
  v4[1] = *(v4 - 15) ^ v2[1];
  v4[2] = *(v4 - 14) ^ v2[2];
  v4[3] = *(v4 - 13) ^ v2[3];
  v4[4] = *(v4 - 12) ^ v2[4];
  v4[5] = *(v4 - 11) ^ v2[5];
  v4[6] = *(v4 - 10) ^ v2[6];
  v4[7] = *(v4 - 9) ^ v2[7];
  v4[8] = *(v4 - 8) ^ v2[8];
  v4[9] = *(v4 - 7) ^ v2[9];
  v4[10] = *(v4 - 6) ^ v2[10];
  v4[11] = *(v4 - 5) ^ v2[11];
  v4[12] = *(v4 - 4) ^ v2[12];
  v4[13] = *(v4 - 3) ^ v2[13];
  v4[14] = *(v4 - 2) ^ v2[14];
  v4[15] = *(v4 - 1) ^ v2[15];
  JUMPOUT(0x196995DF0);
}

uint64_t sub_196996250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, char a12, int a13)
{
  a12 = ((*(v15 + 7) ^ 0x77) + ((2 * *(v15 + 7)) & 0xEF) - 5) ^ (41 * (((&a11 | 0x4F) - &a11 + (&a11 & 0xB0)) ^ 4));
  a13 = 753662761 * (((&a11 | 0xF9B2ED4F) - &a11 + (&a11 & 0x64D12B0)) ^ 0x9CA81604) + 4399 + v13;
  v16 = (*(v14 + 8 * (v13 ^ 0x19F1)))(&a11);
  return (*(v14 + 8 * ((4171 * (a11 == 1906281716)) ^ v13)))(v16);
}

uint64_t sub_196996300@<X0>(int a1@<W8>)
{
  v4 = (a1 ^ 0x878F9E81) & (2 * ((((v1 - 1329) | 0x14B2) ^ 0xD7AFC8DF) & a1)) ^ (((v1 - 1329) | 0x14B2) ^ 0xD7AFC8DF) & a1;
  v5 = ((2 * (a1 ^ 0x8DC83CC9)) ^ 0xB4CFC7DA) & (a1 ^ 0x8DC83CC9) ^ (2 * (a1 ^ 0x8DC83CC9)) & 0x5A67E3EC;
  v6 = (v5 ^ 0x1047C185) & (4 * v4) ^ v4;
  v7 = ((4 * (v5 ^ 0x4A202025)) ^ 0x699F8FB4) & (v5 ^ 0x4A202025) ^ (4 * (v5 ^ 0x4A202025)) & 0x5A67E3EC;
  v8 = (v7 ^ 0x480783A9) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x12606049)) ^ 0xA67E3ED0) & (v7 ^ 0x12606049) ^ (16 * (v7 ^ 0x12606049)) & 0x5A67E3E0;
  v10 = v8 ^ 0x5A67E3ED ^ (v9 ^ 0x266222D) & (v8 << 8);
  return (*(v2 + 8 * ((1993 * ((v3 ^ (4 * a1) ^ (8 * ((v10 << 16) & 0x1A670000 ^ v10 ^ ((v10 << 16) ^ 0x3ED0000) & (((v9 ^ 0x5801C12D) << 8) & 0x1A670000 ^ 0x18040000 ^ (((v9 ^ 0x5801C12D) << 8) ^ 0x7E30000) & (v9 ^ 0x5801C12D))))) == -1633131528)) ^ v1)))();
}

uint64_t sub_196996824@<X0>(int a1@<W0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = (v6 + (a1 ^ 0x122Du) - 5468) & ((a1 + 2909) - 4756);
  v12 = a2 > 0xF && (1 - a3 + v4 - v6 + v8) > 0xF && (1 - a3 + v3 - v6 + v8) > 0xF && (-a3 - v6 + v5 + v8 + 2) > 0xF;
  return (*(v7 + 8 * ((27 * v12) ^ a1)))();
}

uint64_t sub_196996CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, int a19, char *a20, unsigned int a21)
{
  a21 = 1498 - 1825732043 * (((&a19 | 0x8BEA9F9D) - &a19 + (&a19 & 0x74156060)) ^ 0x8B7CCCAA);
  a20 = &a16;
  v22 = (*(v21 + 53584))(&a19);
  return (*(v21 + 8 * ((90 * (a19 != 1906281716)) | 0x224u)))(v22);
}

uint64_t sub_196996EB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x800]) = STACK[0x320];
  LODWORD(STACK[0x43C]) = STACK[0x330];
  v8 = 27 * (v6 ^ 0x363);
  LODWORD(STACK[0x48C]) = STACK[0x340];
  LODWORD(STACK[0x44C]) = v7;
  v11 = 57 * (v8 ^ 0xBD);
  LODWORD(STACK[0x6EC]) = 1906239693;
  STACK[0x6F8] = *(a6 + 8 * v8);
  STACK[0x508] = &STACK[0x5F0];
  v9 = STACK[0x5F0];
  STACK[0x5A8] = STACK[0x5F0];
  return (*(a6 + 8 * ((197 * (((v9 == 0) ^ (v11 - 76)) & 1)) ^ v11)))();
}

void sub_196996EF0()
{
  LODWORD(STACK[0x800]) = STACK[0x320];
  LODWORD(STACK[0x43C]) = STACK[0x330];
  LODWORD(STACK[0x48C]) = STACK[0x340];
  LODWORD(STACK[0x44C]) = v0;
  JUMPOUT(0x196996F18);
}

uint64_t sub_196996F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (v6 - 416) | 0x905;
  v8 = STACK[0x580];
  v9 = STACK[0x798];
  STACK[0x608] = *(a6 + 8 * v6);
  STACK[0x3A8] = &STACK[0x618];
  LODWORD(STACK[0x74C]) = v9;
  STACK[0x510] = v8;
  STACK[0x610] = 0;
  LODWORD(STACK[0x6D4]) = -1720256293;
  STACK[0x740] = 0x25B2F1AA6CA5FEE2;
  STACK[0x5B8] = 0;
  v10 = (*(a6 + 8 * (v7 ^ 0x1390)))(16, 0x20040A4A59CD2);
  v11 = STACK[0x370];
  STACK[0x398] = v10;
  return (*(v11 + 8 * (((v10 != 0) * (((v7 - 1300) | 0x1254) - 5615)) ^ v7)))();
}

void sub_196996FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v19 = (a3 + v17);
  *v19 = v15;
  v19[1] = v16;
  v19[2] = v18;
  *(v17 + a3 + 57 * (a15 ^ 0x7E1u) - 225) = a7;
  JUMPOUT(0x196997014);
}

void fp_dh_3803da1879708cc00f43786bb05af425(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 4) - 1012216201 * (((a1 | 0x42CF86CA) - (a1 & 0x42CF86CA)) ^ 0xC6660E26);
  v2 = *(a1 + 8);
  v3 = 455395931 * ((2 * (&v5 & 0x535B4690) - &v5 + 748992873) ^ 0x5A55E7A5);
  v5 = v3 ^ 0x56CDB657;
  v8 = v1 + v3 + 3176;
  v6 = v2 + 48;
  v7 = v2;
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 2952) - 4;
  (*&v4[8 * (v1 ^ 0x152A)])(&v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969972F0@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v13 = (&a10 + 4 * v10 + 16);
  v14 = vdupq_n_s32(0x9DC3156D);
  v13[-1] = v14;
  *v13 = v14;
  return (*(v12 + 8 * (((2 * ((((a1 & 0xFFFFFFFFFFFFFFF8) == 8) ^ ((v11 ^ 0xF2) + 14)) & 1)) & 0xFB | (4 * ((((a1 & 0xFFFFFFFFFFFFFFF8) == 8) ^ ((v11 ^ 0xF2) + 14)) & 1))) ^ ((v11 ^ 0x14F2) - 2519))))();
}

uint64_t sub_19699735C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v34 = v33 - 144;
  *(v33 - 136) = v31;
  *(v33 - 144) = 998242381 * ((2 * ((v33 - 144) & 0x6F3FC6E8) - (v33 - 144) - 1866450672) ^ 0x3AAFA1C6) + 1135419499 + v32 - 3424;
  (*(a3 + 8 * (v32 + 2349)))(v33 - 144);
  v35 = 1283153057 * (((v34 | 0x8D4F68D7) - v34 + (v34 & 0x72B09728)) ^ 0xC2976BE0);
  v36 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v32 ^ 0x11C2)) - 8;
  *(v33 - 144) = v31;
  *(v33 - 136) = v36;
  *(v33 - 128) = v32 + 624 + v35;
  *(v33 - 124) = v35 + 814017574;
  (*(a31 + 8 * (v32 ^ 0xBD0)))(v33 - 144);
  v37 = 1283153057 * (((v34 | 0x98D10ED1) + (~v34 | 0x672EF12E)) ^ 0xD7090DE7);
  *(v33 - 128) = v32 + 624 + v37;
  *(v33 - 124) = v37 + 814017530;
  *(v33 - 144) = v31;
  *(v33 - 136) = a14;
  v38 = (*(a31 + 8 * (v32 + 2384)))(v33 - 144);
  return sub_1969974E8(v38);
}

uint64_t sub_1969974E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29)
{
  *v30 = *v29;
  v30[1] = v29[1];
  v30[2] = v29[2];
  v30[3] = v29[3];
  v30[4] = v29[4];
  v30[5] = v29[5];
  return (*(a3 + 8 * ((((v31 ^ 0x193) - 2433) * (a29 < v32)) ^ v31)))();
}

uint64_t sub_196997550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27, uint64_t a28, int a29, char a30, __int16 a31, char a32, int a33, int a34, char a35)
{
  v38 = 1621291457 * ((v37 - 160) ^ 0x36178199);
  STACK[0x310] = &a32;
  STACK[0x320] = &a27;
  STACK[0x300] = &a35;
  STACK[0x330] = &a30;
  STACK[0x308] = a18;
  *(v37 - 120) = v38 + v35 + 2799;
  *(v37 - 132) = v38 + a6 + 273763806 + 3 * (v35 ^ 0x75A);
  v39 = (*(v36 + 8 * (v35 ^ 0x1882)))(v37 - 160);
  return (*(v36 + 8 * ((3278 * (*(v37 - 136) == 1906281716)) ^ v35)))(v39, 570499551);
}

uint64_t sub_1969976C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14, int a15, int *a16, int a17, int a18, int *a19, unsigned int a20, unsigned int a21)
{
  v26 = 1825732043 * ((2 * (&a16 & 0x61192698) - &a16 + 518445411) ^ 0x1E708A54);
  a17 = v26 + 1865116605;
  a18 = (v25 + 5110) ^ v26;
  a16 = v24;
  (*(v22 + 8 * (v25 + 6318)))(&a16);
  v27 = 489239129 * ((~(&a16 | 0x58FE51EE) + (&a16 & 0x58FE51EE)) ^ 0x1E298D27);
  a19 = v24;
  a16 = &a12;
  a20 = v27 + 426488402;
  a21 = v27 ^ 0x99603FFC;
  a17 = v27 + v25 + 3651;
  (*(v22 + 8 * (v25 + 6334)))(&a16);
  v28 = v21[1];
  *v21 += a12;
  v21[1] = v28 + a13;
  v29 = v21[3];
  v21[2] += a14;
  v21[3] = v29 + a15;
  a17 = 1068996913 * ((&a16 - 1718672156 - 2 * (&a16 & 0x998F24E4)) ^ 0x4C61C575) + 1738598562 + v25 + 392;
  a16 = v24;
  a19 = v21;
  v30 = (*(v22 + 8 * (v25 + 6306)))(&a16);
  return (*(v22 + 8 * ((22 * ((v25 ^ 0xB ^ (v23 - 1381547621 < (v25 ^ 0xF70u) - 3514)) & 1)) ^ v25)))(v30);
}

uint64_t sub_196997908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, uint64_t a16)
{
  v21 = *(v16 + 4) ^ v19;
  v22 = 1621291457 * ((1439337116 - (&a13 | 0x55CA8A9C) + (&a13 | 0xAA357563)) ^ 0x9C22F4FA);
  a16 = a10;
  a14 = v22 + v20 - 597;
  a15 = ((24 * (v20 ^ 0x703) - 307774919) * v21 + 1955029302) ^ v22;
  v23 = (*(v17 + 8 * (v20 + 4995)))(&a13);
  return (*(v17 + 8 * ((3172 * (a13 == v18)) ^ v20)))(v23);
}

uint64_t sub_1969979D8(uint64_t a1)
{
  v8 = (*(v3 + 8 * (v6 ^ 0x19B3)))(a1, 0);
  if (v8 == 16)
  {
    v5 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v9 = v8;
  result = a1;
  if (v9 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 + 5971)))(result);
    goto LABEL_8;
  }

  if (v9)
  {
    v5 = -42030;
    goto LABEL_7;
  }

  v5 = 0;
  *v4 = a1;
LABEL_8:
  *v1 = v5;
  return result;
}

uint64_t sub_196997BE4(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8)
{
  v21 = v9 - 16;
  v22.i64[0] = v21 + v10 - 8;
  v22.i64[1] = v21 + v10 - 9;
  v23.i64[0] = v21 + v10 - 6;
  v23.i64[1] = v21 + v10 - 7;
  v24.i64[0] = v21 + v10 + 2;
  v24.i64[1] = v21 + v10 + 1;
  v25.i64[0] = v21 + v10 + 4;
  v25.i64[1] = v21 + v10 + 3;
  v26.i64[0] = v21 + v10 + 6;
  v26.i64[1] = v21 + v10 + 5;
  v27.i64[0] = v21 + v10;
  v27.i64[1] = v21 + v10 + v12 + 7;
  v28 = vandq_s8(v27, a1);
  v29 = vandq_s8(v26, a1);
  v30 = vandq_s8(v25, a1);
  v31 = vandq_s8(v24, a1);
  v32 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v33 = vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL);
  v34 = vsraq_n_u64(vshlq_n_s64(v29, 0x38uLL), v29, 8uLL);
  v35 = vsraq_n_u64(vshlq_n_s64(v28, 0x38uLL), v28, 8uLL);
  v36 = vaddq_s64(v33, a3);
  v37 = vaddq_s64(v32, a3);
  v38 = veorq_s8(v37, a4);
  v39 = veorq_s8(v36, a4);
  v40 = veorq_s8(v36, a5);
  v41 = veorq_s8(v37, a5);
  v42 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v40), a6);
  v43 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v41), a6);
  v44 = vsraq_n_u64(vshlq_n_s64(v40, 3uLL), v40, 0x3DuLL);
  v45 = veorq_s8(v43, vsraq_n_u64(vshlq_n_s64(v41, 3uLL), v41, 0x3DuLL));
  v46 = veorq_s8(v42, v44);
  v47 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v46);
  v49 = veorq_s8(vaddq_s64(v47, v45), a7);
  v50 = veorq_s8(v48, a7);
  v51 = vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL);
  v52 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v53 = veorq_s8(v49, v51);
  v54 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v55 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v53);
  v56 = veorq_s8(vaddq_s64(v54, v52), a8);
  v57 = veorq_s8(v55, a8);
  v58 = vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL);
  v59 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v60 = veorq_s8(v56, v58);
  v61 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v62 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v60);
  v63 = veorq_s8(vaddq_s64(v61, v59), v14);
  v64 = veorq_s8(v62, v14);
  v65 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v66 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL));
  v67 = veorq_s8(v63, v65);
  v68 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v67);
  v70 = veorq_s8(vaddq_s64(v68, v66), v15);
  v71 = veorq_s8(v69, v15);
  v72 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v73 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v74 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v73);
  v76 = vaddq_s64(v74, v72);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(v76, vandq_s8(vaddq_s64(v76, v76), v16)), v17), v18);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(v75, vandq_s8(vaddq_s64(v75, v75), v16)), v17), v18);
  v79 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v80 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v73.i64[0] = v21 + v10 - 4;
  v73.i64[1] = v21 + v10 - 5;
  v81 = vaddq_s64(v34, a3);
  v170.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), veorq_s8(v77, v79)), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), a2)));
  v170.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v80), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), a2)));
  v82 = veorq_s8(v81, a4);
  v83 = veorq_s8(v81, a5);
  v84 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v83), a6);
  v85 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v85), a7);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v87), a8);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v90 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89), v14);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), v15);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(v94, vandq_s8(vaddq_s64(v94, v94), v16)), v17), v18);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v97 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v95.i64[0] = v21 + v10 - 2;
  v95.i64[1] = v21 + v10 - 3;
  v98 = vaddq_s64(v97, v96);
  v99 = vandq_s8(v95, a1);
  v100 = vaddq_s64(v35, a3);
  v170.val[0] = vshlq_u64(veorq_s8(v98, v19), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), a2)));
  v101 = veorq_s8(v100, a4);
  v102 = veorq_s8(v100, a5);
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), a6);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), a7);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), a8);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v14);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v15);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(v113, vandq_s8(vaddq_s64(v113, v113), v16)), v17), v18);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v117 = vandq_s8(v73, a1);
  v118 = vaddq_s64(v116, v115);
  v119 = vandq_s8(v23, a1);
  v170.val[3] = vshlq_u64(veorq_s8(v118, v19), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), a2)));
  v120 = vandq_s8(v22, a1);
  v121 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), a3);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), a3);
  v120.i64[0] = vqtbl4q_s8(v170, v20).u64[0];
  v170.val[0] = veorq_s8(v124, a4);
  v170.val[1] = veorq_s8(v123, a4);
  v125 = veorq_s8(v123, a5);
  v126 = veorq_s8(v124, a5);
  v170.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v125), a6);
  v170.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL), v126), a6);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL);
  v127 = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v128 = veorq_s8(v170.val[1], v170.val[2]);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL);
  v170.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v128);
  v170.val[1] = veorq_s8(vaddq_s64(v170.val[2], v127), a7);
  v170.val[0] = veorq_s8(v170.val[0], a7);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL);
  v129 = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v130 = veorq_s8(v170.val[1], v170.val[2]);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL);
  v170.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v130);
  v170.val[1] = veorq_s8(vaddq_s64(v170.val[2], v129), a8);
  v170.val[0] = veorq_s8(v170.val[0], a8);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v131 = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v132 = veorq_s8(v170.val[1], v170.val[2]);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL);
  v170.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v132);
  v170.val[1] = veorq_s8(vaddq_s64(v170.val[2], v131), v14);
  v170.val[0] = veorq_s8(v170.val[0], v14);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v133 = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v134 = veorq_s8(v170.val[1], v170.val[2]);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL);
  v170.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v134);
  v170.val[1] = veorq_s8(vaddq_s64(v170.val[2], v133), v15);
  v170.val[0] = veorq_s8(v170.val[0], v15);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v135 = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v136 = veorq_s8(v170.val[1], v170.val[2]);
  v170.val[2] = vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL);
  v170.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v136);
  v170.val[1] = vaddq_s64(v170.val[2], v135);
  v170.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v170.val[1], vandq_s8(vaddq_s64(v170.val[1], v170.val[1]), v16)), v17), v18);
  v170.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v170.val[0], vandq_s8(vaddq_s64(v170.val[0], v170.val[0]), v16)), v17), v18);
  v137 = vaddq_s64(v121, a3);
  v170.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), veorq_s8(v170.val[1], vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL))), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v22, 3uLL), a2)));
  v170.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL), veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL))), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v23, 3uLL), a2)));
  v138 = veorq_s8(v137, a4);
  v139 = veorq_s8(v137, a5);
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139), a6);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v142 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141), a7);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143), a8);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), v14);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147), v15);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149);
  v151 = veorq_s8(vaddq_s64(vsubq_s64(v150, vandq_s8(vaddq_s64(v150, v150), v16)), v17), v18);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL)));
  v153 = vaddq_s64(v122, a3);
  v170.val[1] = vshlq_u64(veorq_s8(v152, v19), vnegq_s64(vandq_s8(vshlq_n_s64(v73, 3uLL), a2)));
  v154 = veorq_s8(v153, a4);
  v155 = veorq_s8(v153, a5);
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), a6);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), a7);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159), a8);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), v14);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v15);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(v166, vandq_s8(vaddq_s64(v166, v166), v16)), v17), v18);
  v170.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL))), v19), vnegq_s64(vandq_s8(vshlq_n_s64(v95, 3uLL), a2)));
  v120.i64[1] = vqtbl4q_s8(v170, v20).u64[0];
  v168 = vrev64q_s8(v120);
  *(v21 + v10 - 9) = vextq_s8(v168, v168, 8uLL);
  return (*(STACK[0x370] + 8 * (((v8 == 16) * v13) ^ v11)))();
}

uint64_t sub_196997BF0()
{
  v7 = v1 - 654144011 * ((((2 * &v6) | 0xA27BF3A4) - &v6 - 1363016146) ^ 0x7DE9844E) + 496582728;
  v6 = v2 + 8;
  result = (*(v3 + 8 * (v1 + 3297)))(&v6);
  *v0 = v4;
  return result;
}

uint64_t sub_196997CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, char a35)
{
  *(v38 - 112) = (v35 - 207) ^ (998242381 * ((((2 * (v38 - 144)) | 0x50D92120) - (v38 - 144) + 1469280112) ^ 0x2030846));
  *(v38 - 144) = v37;
  *(v38 - 128) = &a35;
  *(v38 - 120) = v36 + 12;
  v39 = (*(a3 + 8 * ((v35 - 3511) ^ 0x1236)))(v38 - 144);
  return (*(a31 + 8 * ((63 * ((((v35 - 3511) ^ (*(v38 - 136) == 1906281716) ^ (v35 - 3449)) & 1) == 0)) ^ (v35 - 3511))))(v39);
}

void fp_dh_42da626634c2ec403b46e00fdf23a37d(_DWORD *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1 ^ (1012216201 * ((a1 - 2 * (a1 & 0xB4C3E5A6) - 1262230106) ^ 0x306A6D4A));
  v3[0] = v1 + 1575331711 * (((~v3 & 0x915E28B0) - (~v3 | 0x915E28B1)) ^ 0xFD05BDB3) + 1655633351;
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 - 448)) - 4;
  (*&v2[8 * (v1 ^ 0x1E90)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196997F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, int a36, char a37, uint64_t a38, unint64_t a39, unint64_t a40)
{
  a39 = 0xA005C2CA39410838;
  a40 = 0xAFCC11CD4CDFF4D3;
  v46 = (10 * ((v44 + 831) ^ 0xB60) - 1814) | 6;
  if ((v41 & 0x20) != 0)
  {
    v47 = 6;
  }

  else
  {
    v47 = 8;
  }

  if (((v46 - 38) & v41) != 0)
  {
    v48 = v40;
  }

  else
  {
    v48 = v47;
  }

  v49 = *(v42 + 4) ^ a16;
  v50 = **v42;
  v51 = 1068996913 * ((2 * ((v45 - 176) & 0x49B6DD10) - (v45 - 176) - 1236720916) ^ 0x63A7C37D);
  *(v45 - 160) = v51 + ((2 * v48) & (v46 + 2147413784)) + ((276 * (v46 ^ 0x6E) - 37089) ^ v48) + 531230564;
  v52 = (v45 - 176);
  *v52 = &a37;
  *(v45 - 168) = v49 - v51 - 214221051;
  *(v45 - 164) = v46 - v51 + 563;
  v52[5] = &a39;
  v52[6] = v50;
  v52[3] = &a31;
  v52[4] = &a35;
  v53 = (*(v43 + 8 * (v46 + 6811)))(v45 - 176);
  return (*(v43 + 8 * ((5441 * (*(v45 - 156) == 1906281716)) ^ v46)))(v53);
}

uint64_t sub_196998054(int8x16_t a1, int8x16_t a2)
{
  v8 = (v4 - 32);
  v9 = (v5 - 32);
  v10 = vaddq_s8(vsubq_s8(*v9, vandq_s8(vaddq_s8(*v9, *v9), a1)), a2);
  v8[-1] = vaddq_s8(vsubq_s8(v9[-1], vandq_s8(vaddq_s8(v9[-1], v9[-1]), a1)), a2);
  *v8 = v10;
  return (*(v7 + 8 * (((v3 == 32) * (v2 + 4016)) ^ v6)))();
}

uint64_t sub_1969980D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, uint64_t *a16, unsigned int a17)
{
  a17 = 1498 - 1825732043 * (((&a15 | 0xB913F980) - &a15 + (&a15 & 0x46EC0678)) ^ 0xB985AAB7);
  a16 = &a9;
  v19 = (*(v17 + 53584))(&a15);
  return (*(v17 + 8 * ((45 * (a15 == 1906281716)) ^ v18)))(v19);
}

void sub_196998178()
{
  v1 = STACK[0xA80];
  STACK[0x300] = ((STACK[0xA80] + 4) ^ 0xFFEFF4F6D76C7F3FLL) + 0x2D756BFD78B7CDFFLL + ((2 * (STACK[0xA80] + 4)) & 0xFFDFE9EDAED8FE7ELL);
  v2 = STACK[0xAA0] + (((51 * (v0 ^ 0x144) - 3201) | 0xA14u) ^ 0xE18);
  STACK[0x2F0] = (v2 ^ 0xFD6D66FC757E6FFELL) + 0x2FF7F9F7DAA5DD40 + ((2 * v2) & 0xFADACDF8EAFCDFFCLL);
  STACK[0x2E0] = ((STACK[0xAC0] + 4) ^ 0xBDE566F576ACEF7FLL) + 0x6F7FF9FED9775DBFLL + ((2 * (STACK[0xAC0] + 4)) & 0x7BCACDEAED59DEFELL);
  STACK[0x2D0] = ((STACK[0xAE0] + 4) ^ 0x7D65E2F4FC37EF7FLL) - 0x50008200AC13A241 + ((2 * (STACK[0xAE0] + 4)) & 0xFACBC5E9F86FDEFELL);
  v3 = STACK[0xB00];
  STACK[0x2C0] = ((STACK[0xB00] + 4) ^ 0xBD776FF57F34ED7FLL) + 0x6FEDF0FED0EF5FBFLL + ((2 * (STACK[0xB00] + 4)) & 0x7AEEDFEAFE69DAFELL);
  v4 = STACK[0xB10];
  STACK[0x2A0] = ((STACK[0xB10] + 4) ^ 0xBF7D60FC7E6DCF7FLL) + 0x6DE7FFF7D1B67DBFLL + ((2 * (STACK[0xB10] + 4)) & 0x7EFAC1F8FCDB9EFELL);
  v5 = STACK[0xA50] + 10;
  STACK[0x280] = ((STACK[0xA50] + 4) ^ 0xFD7576FD75347D7ELL) + 0x2FEFE9F6DAEFCFC0 + ((2 * (STACK[0xA50] + 4)) & 0xFAEAEDFAEA68FAFCLL);
  STACK[0x270] = ((STACK[0xA40] + 4) ^ 0x7F77E0FFFD36EFBFLL) - 0x5212800BAD12A281 + ((2 * (STACK[0xA40] + 4)) & 0xFEEFC1FFFA6DDF7ELL);
  STACK[0x260] = ((STACK[0xA30] + 4) ^ 0xED6FFAF7DA267D3ELL) + 0x3FF565FC75FDD000 + ((2 * (STACK[0xA30] + 4)) & 0xDADFF5EFB44CFA7CLL);
  STACK[0x250] = ((STACK[0xA20] + 4) ^ 0x2D6FF0F47CF5EDFELL) - 0xA90002CD1A0C0 + ((2 * (STACK[0xA20] + 4)) & 0x5ADFE1E8F9EBDBFCLL);
  STACK[0x230] = ((STACK[0xA10] + 4) ^ 0x6DFF77FCF464EDFFLL) - 0x409A1708A440A0C1 + ((2 * (STACK[0xA10] + 4)) & 0xDBFEEFF9E8C9DBFELL);
  STACK[0x210] = ((STACK[0xB30] + 4) ^ 0x6F6FE0F6FD37FD7FLL) - 0x420A8002AD13B041 + ((2 * (STACK[0xB30] + 4)) & 0xDEDFC1EDFA6FFAFELL);
  STACK[0x200] = ((v1 + 6) ^ 0x6EED8F765F7CFDB9) - 0x8986425554A811 + ((2 * (v1 + 6)) & 0xDDDB1EECBEF9FB72);
  STACK[0x2B0] = v3 + 10;
  STACK[0x290] = v4 + 10;
  STACK[0x310] = v5;
  STACK[0x390] = STACK[0x8E8];
  STACK[0x380] = STACK[0x6C8];
  STACK[0x370] = STACK[0x7D8];
  STACK[0x360] = STACK[0x748];
  STACK[0x400] = STACK[0x550];
  STACK[0x3E0] = STACK[0x950];
  STACK[0x3C0] = STACK[0x618];
  STACK[0x350] = STACK[0x4F0];
  STACK[0x340] = STACK[0x7A0];
  STACK[0x330] = STACK[0x600];
  STACK[0x320] = STACK[0x818];
  STACK[0x3B0] = STACK[0x598];
  LODWORD(STACK[0x3F0]) = LOWORD(STACK[0x9EE]);
  LODWORD(STACK[0x410]) = LOWORD(STACK[0x9DE]);
  LODWORD(STACK[0x3A0]) = LOWORD(STACK[0x9CA]);
  LODWORD(STACK[0x3D0]) = LOWORD(STACK[0x986]);
  JUMPOUT(0x196A17488);
}

uint64_t sub_196998234@<X0>(unint64_t a1@<X8>)
{
  STACK[0x830] = a1;
  LODWORD(STACK[0xA58]) = v3;
  LOWORD(STACK[0xA5E]) = v2;
  LODWORD(STACK[0xA60]) = STACK[0x724];
  LODWORD(STACK[0xA64]) = STACK[0x8F4];
  STACK[0xA68] = STACK[0x868];
  STACK[0x940] = STACK[0x8C8];
  return (*(v4 + 8 * (((((a1 == 0) ^ (v1 - 94)) & 1) * (((16 * (v1 + 910)) ^ 0x172A0) + 17)) ^ (v1 + 910))))();
}

uint64_t sub_196998330@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  *(a2 + 104) = veorq_s8(*(v2 + 88), xmmword_196EBFAD0);
  v4 = *(v2 + 4);
  *(a2 + 20) = v4;
  return (*(v3 + 8 * ((209 * ((((a1 ^ 0x90) + 1) ^ (v4 == ((11 * (a1 ^ 0x449)) ^ 0x1217))) & 1)) ^ a1 ^ 0x90)))();
}

uint64_t sub_196998400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4 - 1;
  v14 = v6 + v13 + v5;
  v15 = __ROR8__(v14 & 0xFFFFFFFFFFFFFFF8, 8);
  v16 = (v15 + v12) ^ 0xE788DD3012A091E0;
  v17 = __ROR8__((v15 + v12) ^ ((v4 ^ 0x636u) - 0x749594F881B6A799), 8);
  v18 = (v9 - ((v17 + v16) | v9) + ((v17 + v16) | a1)) ^ a2;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0xBD8F7CFD1E07971BLL;
  v21 = __ROR8__(v20, 8);
  v22 = v20 ^ __ROR8__(v19, 61);
  v23 = ((v8 & (2 * (v21 + v22))) - (v21 + v22) + 0x7960F2B616996E9FLL) ^ 0x84EBA188CFF32DABLL;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (v7 - ((v25 + v24) | v7) + ((v25 + v24) | 0xADBA7ED07AC0689ALL)) ^ 0xA77DA4D51E01EB11;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v10;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) | 0x67ECAB24E0949C16) - (v30 + v29) + 0x4C09AA6D8FB5B1F5) ^ 0x3DBB3B5844776955;
  v32 = __ROR8__(v31, 8);
  v33 = __ROR8__(v29, 61);
  *v14 = ((((v32 + (v31 ^ v33)) & 0x7068FDEC8CEB6B27 ^ 0x87C0804202802) + ((v32 + (v31 ^ v33)) & 0x8F970213731494D8 ^ 0x701021320009051) - 1) ^ 0x56B23F6A8BCD7E7ALL) >> (8 * (v14 & 7u));
  return (*(v11 + 8 * ((v13 == 0) | (2 * (v13 == 0)) | (v4 - 280))))();
}

uint64_t sub_196998600@<X0>(int a1@<W8>)
{
  STACK[0x790] = 0;
  v2 = *(STACK[0x578] + 8);
  STACK[0x700] = 0;
  LODWORD(STACK[0x90C]) = 0;
  LODWORD(STACK[0x5C8]) = -1720256293;
  return (*(v1 + 8 * (((v2 == 0) * (((a1 - 520) | 4) ^ 0xE0C)) ^ a1)))();
}

uint64_t sub_1969986C0()
{
  v3 = (v0 - 270704124) > 0x9FE365E;
  if ((v0 - 270704124) < 0x9FE365E)
  {
    v3 = 1;
  }

  return (*(v2 + 8 * ((v3 * (((v1 - 151) | 0xA0) + ((v1 + 79821924) & 0xFB3E17FF) - 5046)) ^ v1)))();
}

uint64_t fp_dh_721e500a6cda322bb4fc5179415ba567(_DWORD *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1[2] + 1790939281 * (a1 ^ 0xF8DC2041);
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = v1 + 1335949639;
  v8 = v1 + 1335949639 - 1790939281 * ((2 * (&v8 & 0x251BD718) - &v8 - 622581533) ^ 0x223808A2);
  v9 = v3;
  v5 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 + 1335944170)) + 8 * (v1 + 1335950365);
  (*(v5 - 4))(&v8);
  v6 = *v2;
  v8 = v4 - 1790939281 * ((&v8 & 0x3E8E0BD1 | ~(&v8 | 0x3E8E0BD1)) ^ 0x39ADD46F);
  v9 = v6;
  return (*(v5 - 4))(&v8);
}

uint64_t sub_19699880C()
{
  v4 = v0 + 3314;
  v11 = ((v0 + 3314) ^ 0xFFFFFFDE) - (((v2 ^ 0xFFFFFFC3) - 99) ^ ((v2 ^ 0x19) + 71) ^ ((v2 ^ 0xFFFFFFDA) - 122));
  v5 = (*(v3 + 8 * ((v0 + 3314) ^ 0xE23)))((v11 ^ 0x7CBBE9DF) + v2 + ((2 * v11) & 0x1BE) - 2092689831, 0x100004077774924);
  *v1 = v5;
  return (*(v3 + 8 * (((v5 == 0) * (v4 - 5198)) ^ v4)))(v5, v6, v7, v8, v9);
}

uint64_t sub_196998A20()
{
  v5 = v2 + 31066334 - 1790939281 * (&v5 ^ 0xF8DC2041);
  v6 = v4;
  (*(v0 + 8 * (v2 + 31067060)))(&v5);
  return (v1 - 1906281716);
}

uint64_t sub_196998B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, uint64_t a55)
{
  HIDWORD(a14) = a54 - ((2 * a54) & 0x40) + 34;
  v59 = *(a55 + 12);
  *(v58 - 164) = (v56 - 1999279834) ^ (753662761 * ((~(v58 - 168) & 0xF6C00013 | (v58 - 168) & 0x93FFFEC) ^ 0x93DAFB58));
  *(v58 - 168) = 41 * ((~(v58 + 88) & 0x13 | (v58 + 88) & 0xEC) ^ 0x58) + ((((BYTE4(a14) + ((v56 - v55 + 74) & 0xE9) - 43) ^ 0xF7) + 9) ^ (((BYTE4(a14) + ((v56 - v55 + 74) & 0xE9) - 43) ^ 0x1B) - 27) ^ (((BYTE4(a14) + ((v56 - v55 + 74) & 0xE9) - 43) ^ 0xCC) + 52)) + 98;
  *(v58 - 160) = 41 * ((~(v58 + 88) & 0x13 | (v58 + 88) & 0xEC) ^ 0x58) + (v59 ^ 0xBF) + 2 * (v59 & 0x3F) + 109;
  (*(v57 + 8 * (v56 ^ 0x197C)))(v58 - 168);
  return (*(v57 + 8 * ((2303 * (*(v58 - 156) == 1906281716)) ^ v56)))(*(v58 - 156), v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_196998C3C@<X0>(int a1@<W1>, unint64_t a2@<X8>)
{
  v5 = v2 + (a1 ^ 0xBC7u) - 1680;
  v6 = a2 + v2 + 1 < v3;
  if (v3 < a2 != v5 > ((a1 - 1829139161) & 0x6D0667DF ^ 0xFFFFFFFFFDF64B6DLL))
  {
    v6 = v3 < a2;
  }

  return (*(v4 + 8 * ((227 * v6) ^ a1)))();
}

void sub_196998D40(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  a5 = (v6 + 12) ^ (1283153057 * (&a3 ^ 0x4FD80337));
  a3 = v7;
  a4 = a1;
  (*(v5 + 8 * (v6 + 2905)))(&a3);
  JUMPOUT(0x1968E8C10);
}

void fp_dh_c2f988c77f6c0a144b8c8950a4fd4a23(_DWORD *a1)
{
  v1 = 489239129 * (((a1 | 0x10399225) - a1 + (a1 & 0xEFC66DDA)) ^ 0xA911B113);
  v2 = a1[6] - v1;
  v3 = *a1;
  v4 = a1[2] ^ v1;
  v5 = (8 * (((v4 ^ 0x90A2A564) + 123794147) ^ v4 ^ ((v4 ^ 0x1AFB1C3A) + 221858749) ^ ((v4 ^ 0x1DD36ED8) + 168900959) ^ ((v4 ^ 0x1FB77FFF) + 141895802))) ^ 0x41ED43C8;
  v6 = (v4 ^ 0x87E107D6) & (2 * (v4 & 0x97C25787)) ^ v4 & 0x97C25787;
  v7 = ((2 * (v4 ^ 0x86E586DE)) ^ 0x224FA2B2) & (v4 ^ 0x86E586DE) ^ (2 * (v4 ^ 0x86E586DE)) & 0x1127D158;
  v8 = v7 ^ 0x11205149;
  v9 = (v7 ^ 0x238150) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x449F4564) & v8 ^ (4 * v8) & 0x1127D158;
  v11 = *(*a1 + 16);
  v12 = *(*a1 + 20);
  v13 = v9 ^ 0x1127D159 ^ (v10 ^ 0x74140) & (16 * v9);
  v14 = (16 * (v10 ^ 0x11209019)) & 0x1127D150 ^ 0x102C049 ^ ((16 * (v10 ^ 0x11209019)) ^ 0x127D1590) & (v10 ^ 0x11209019);
  *(v3 + 16) = v5 + v11;
  *(v3 + 20) = v12 + __CFADD__(v5, v11) + (((v4 ^ (2 * ((((v14 << 8) ^ 0x27D10000) & v14 ^ (v14 << 8) & 0x11270000) & (((v13 << 8) & 0x1127D100 ^ v13 ^ ((v13 << 8) ^ 0x27D15900) & v14) << 16) ^ (v13 << 8) & 0x1127D100 ^ v13 ^ ((v13 << 8) ^ 0x27D15900) & v14))) >> 29) ^ 5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196999068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  *(v25 - 136) = v23 + ((((2 * (v25 - 144)) | 0x7F1D7C8C) - (v25 - 144) + 1081164218) ^ 0xF056BD71) * v20 + 2958;
  *(v25 - 144) = &a14;
  *(v25 - 112) = &a20;
  *(v25 - 104) = a12;
  *(v25 - 128) = v22;
  *(v25 - 120) = &a14;
  (*(v21 + 8 * (v23 + 5613)))(v25 - 144);
  return (*(v21 + 8 * ((247 * (v24 + ((v23 - 1714612771) & 0x6632FF9F) + ((v23 - 1090913699) & 0x41060FCEu) - 1516664616 > 0x7FFFFFFE)) ^ (v23 - 565))))();
}

uint64_t sub_196999138(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v12 = *(a4 + v7 + 72);
  v13 = (a7 & (2 * v7)) + (v7 ^ a6) + a1;
  *(a2 + v13) = v12 ^ 0x87;
  v14 = (v12 >> (((v10 + 29) | v9) ^ 0x3F)) ^ 7;
  *(a2 + v13 + 1) = v14 - ((2 * v14) & 0xD8) - 20;
  *(a2 + v13 + 2) = (BYTE2(v12) ^ 0x47) - ((2 * (BYTE2(v12) ^ 0x47)) & 0xD8) - 20;
  *(a2 + v13 + 3) = (HIBYTE(v12) ^ 0x7C) - 2 * ((HIBYTE(v12) ^ 0x7C) & 0x6D ^ HIBYTE(v12) & 1) - 20;
  return (*(v11 + 8 * (((v7 + 4 >= v8) * a3) ^ v10)))();
}

uint64_t sub_1969991F4()
{
  *(v5 - 224) = v3 + ((2 * ((v5 - 224) & 0x5A1BDD58) - (v5 - 224) + 635708064) ^ 0xA14DAA4C) * v2 + v1;
  v6 = (*(v4 + 8 * (v1 ^ 0x104D)))(v5 - 224);
  return (*(v4 + 8 * ((493 * (((*(v5 - 220) == v0) ^ ((v1 ^ 0xFC) - 122 - 35 * (v1 ^ 0xFC) + 1)) & 1)) ^ v1)))(v6);
}

uint64_t sub_196999290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, char a14, __int16 a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20, char *a21)
{
  a19 = a17;
  a20 = &a16;
  a21 = &a14;
  LODWORD(a18) = (v21 + 184) ^ (1575331711 * ((664028354 - (&a18 | 0x279444C2) + (&a18 | 0xD86BBB3D)) ^ 0xB4302E3F));
  (*(v22 + 8 * (v21 ^ 0x161Eu)))(&a18);
  LODWORD(a18) = v21 - 1575331711 * (((&a18 | 0x1ED0C1ED) - &a18 + (&a18 & 0xE12F3E10)) ^ 0x728B54EF) - 959;
  a19 = a17;
  a20 = &a11;
  (*(v22 + 8 * (v21 + 3630)))(&a18);
  HIDWORD(a19) = v21 - 489239129 * (((&a18 | 0x199BC1FB) - &a18 + (&a18 & 0xE6643E00)) ^ 0xA0B3E2CD) - 2295;
  a18 = a17;
  v23 = (*(v22 + 8 * (v21 ^ 0x1630u)))(&a18);
  return (*(v22 + 8 * (((a19 == 1906281716) * ((v21 ^ 0xBA8) - 863)) ^ v21)))(v23);
}

uint64_t sub_1969993F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x658]) = v6;
  v10 = *(v7 + 8 * (a6 - 5710));
  STACK[0x278] = *(v8 + 8 * (a6 - 5614));
  STACK[0x270] = v9 + 4;
  return v10();
}

uint64_t sub_196999418(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v11 = -v8;
  v13.val[0].i64[0] = (v7 + v11 - 1) & 0xF;
  v13.val[0].i64[1] = (v7 + v11 + 14) & 0xF;
  v13.val[1].i64[0] = (v7 + a4 + 56 + 56 + v11) & 0xF;
  v13.val[1].i64[1] = (v7 + v11 + 12) & 0xF;
  v13.val[2].i64[0] = (v7 + v11 + 11) & 0xF;
  v13.val[2].i64[1] = (v7 + v11 + 10) & 0xF;
  v13.val[3].i64[0] = (v7 + v11 + 9) & 0xF;
  v13.val[3].i64[1] = (v7 + v11) & 0xF ^ 8;
  *(v7 + v10 - 8 + v11) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(v7 + v10 - 8 + v11), *(v6 + v13.val[0].i64[0] - 7)), veor_s8(*(v4 + v13.val[0].i64[0] + 1 - 7), *(v5 + v13.val[0].i64[0] + 1 - 7)))), 0xECECECECECECECECLL), vmul_s8(*&vqtbl4q_s8(v13, xmmword_196EBFAE0), 0x4343434343434343)));
  return (*(v9 + 8 * ((167 * (8 - (v7 & 0x18) == v11)) ^ (a4 + 4281))))(xmmword_196EBFAE0);
}

uint64_t sub_196999624@<X0>(int a1@<W8>)
{
  (*(v3 + 8 * (a1 + 5990)))();
  *v2 = 0;
  *v1 = 0;
  return (v4 - 1906281716);
}

void sub_196999688()
{
  (*(v1 + 8 * (v0 + 3109)))();
  *(v2 + 24) = 0;
  sub_1969713A4();
}

uint64_t sub_1969996F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (v6 - 114 + v7 - 24) & 0xF;
  LODWORD(STACK[0x7D4]) = 1001618603 - v8;
  return (*(a6 + 8 * ((41 * ((16 - v8) + v6 < 0xFFFFFFF6)) | v7)))();
}

uint64_t sub_196999750()
{
  if (STACK[0x678])
  {
    v2 = STACK[0x508] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  return (*(v0 + 8 * ((v3 * (((v1 - 1886793757) & 0x70762F13) + 507)) ^ (v1 - 2159))))();
}

uint64_t sub_196999770()
{
  v2 = STACK[0x970];
  STACK[0x660] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v2 != 0) * (((2 * (v0 ^ 0x37A)) ^ 0x6B0) - 119)) ^ (2 * (v0 ^ 0x37A)))))();
}

uint64_t sub_19699993C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x5CC]) = v6;
  v8 = STACK[0x524];
  LODWORD(STACK[0x644]) = STACK[0x524];
  return (*(v7 + 8 * ((248 * ((v8 >> 4) & 1)) ^ (a6 - 147))))();
}

uint64_t sub_196999968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, int a12, unsigned int a13)
{
  a11 = *(v15 + 5) - -63 * ((((2 * &a11) | 0x34) - &a11 - 26) ^ 0x83) + 125;
  a13 = (v13 + 1062313610) ^ (1621291457 * ((((2 * &a11) | 0xF120CA34) - &a11 + 124754662) ^ 0xCE87E483));
  v17 = (*(v14 + 8 * (v13 + 6234)))(&a11);
  return (*(v14 + 8 * ((6444 * (a12 == v16)) ^ v13)))(v17);
}

void fp_dh_8fed7da4912a531f4f24b5a278040255(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 16) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *(a1 + 8) == 0;
  v1 = *a1 - 1068996913 * ((2 * (a1 & 0x1EFC138A) - a1 - 519836555) ^ 0x34ED0DE4);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_196999CCC()
{
  v6 = (v2 - 1585);
  *v5 = (((v2 - 2207) ^ 0x940FA410) & v6) + v5[623] - ((-((~v6 + v0) ^ (v4 - v6)) | (~v6 + v0)) >= 0);
  v7 = v2 - 2207 + v3 + ~(v6 ^ 0x26E) != ((v2 - 1550122074) & 0x5C64F3B9);
  return (*(v1 + 8 * (v7 | (4 * v7) | (((v2 - 128) | 0x80) - 413) ^ (v2 - 2207))))();
}

uint64_t sub_196999D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t (*a23)(void), uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28)
{
  *v38 = *(a28[291] + v29);
  v38[4] = *(a28[299] + v35);
  v38[8] = *(a28[307] + a4);
  v38[12] = *(a28[315] + v36);
  v38[1] = *(a28[301] + a1);
  v38[5] = *(a28[309] + a5);
  v38[9] = *(a28[317] + v32);
  v38[13] = *(a28[293] + v30);
  v38[2] = *(a28[311] + a2);
  v38[10] = *(a28[295] + v31);
  v38[6] = *(a28[319] + a3);
  v38[14] = *(a28[303] + v34);
  v38[15] = *(a28[313] + v37);
  v38[11] = *(a28[305] + v28);
  v38[7] = *(a28[297] + v33);
  v38[3] = *(a28[321] + a6);
  return a23();
}

uint64_t sub_196999E60()
{
  v7 = v5 + v4;
  v8 = (v4 - 1) & 0xF;
  v9 = v3 - v4 + v8 + 1;
  v10 = v3 + v8 + 1;
  v11 = v8 + v1 + 7;
  v12 = v2 - v4 + v8 + 6;
  v13 = v2 + v8 + ((((v0 - 2075) | 0x80u) + 1223) ^ 0x1567);
  v15 = v10 > v5 && v9 < v7;
  if (v11 > v5 && v11 - v4 < v7)
  {
    v15 = 1;
  }

  v18 = v12 < v7 && v13 > v5 || v15;
  return (*(v6 + 8 * ((81 * (v18 ^ 1)) ^ v0)))(v4);
}

uint64_t sub_196999EF8@<X0>(uint64_t a1@<X8>)
{
  STACK[0x7F8] = 0;
  STACK[0x7D0] = 0;
  STACK[0x4D0] = *(v3 + 8 * v2);
  LODWORD(STACK[0xB64]) = 1815181637;
  STACK[0xB68] = &STACK[0x7F8];
  return (*(v3 + 8 * (((((a1 == 0) ^ (v2 - 41)) & 1) * (((v2 - 366) | 0xE14) - 3562)) ^ (v2 + 2008))))();
}

uint64_t sub_196999F1C@<X0>(int a1@<W8>)
{
  v4 = a1 + 4397;
  v5 = LODWORD(STACK[0x454])++;
  *STACK[0x308] = v5 + 1;
  v6 = *STACK[0x310];
  v7 = 1283153057 * (((v1 | 0x9AEEB90BBD1074A5) - (v1 & 0x9AEEB90BBD1074A5)) ^ 0x33032ABCF2C87792);
  *(v3 - 184) = v7;
  *(v3 - 176) = v4 - 1388085483 - v7 - 67;
  *(v3 - 172) = (v4 - 84372101) ^ v7;
  *(v3 - 200) = v7 ^ 0x13FF;
  *(v3 - 192) = v6 - v7;
  *(v3 - 208) = v7 + v4 - 1388085483 - 578;
  *(v3 - 204) = (v4 - 1388085483) ^ v7;
  v8 = (*(v2 + 8 * (v4 + 721)))(v3 - 208);
  return (*(v2 + 8 * *(v3 - 180)))(v8);
}

uint64_t sub_19699A01C@<X0>(int a1@<W2>, int a2@<W6>, int a3@<W7>, unsigned int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, int *a25)
{
  v32 = (v27 + (((v26 ^ a2) * a3) ^ 0x81F943AF) + a1);
  v33 = -1555358357 * ((v32 ^ *(*a24 + (*a25 & 0xFFFFFFFFA90660A8))) & 0x7FFFFFFF);
  v34 = -1555358357 * (v33 ^ HIWORD(v33));
  v35 = *(*(v29 + 8 * (v26 - 1896)) + (v34 >> 24));
  v36 = *(*(v29 + 8 * (v26 - 1525)) + (v34 >> 24) - 2);
  v37 = *(v29 + 8 * (v26 ^ 0x7FC));
  v38 = ((a4 >> v25) - (v31 & (2 * (a4 >> v25))) + 55) ^ v35 ^ v36 ^ *((v34 >> 24) + v37 + 4) ^ v34 ^ (-47 * (v34 >> 24));
  LODWORD(v34) = (((a4 >> v25) - (v31 & (2 * (a4 >> v25))) + 55) ^ v35 ^ v36 ^ *((v34 >> 24) + v37 + 4) ^ v34 ^ (-47 * BYTE3(v34)));
  *v32 = v38 ^ 0x37;
  return (*(v28 + 8 * ((7728 * (a1 - (v34 != 55) == v30)) ^ v26)))();
}

uint64_t sub_19699A15C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11)
{
  v14 = (a1 - 1649891845) & 0x625759F6;
  a10 = **(v11 + 8 * (v14 ^ 0x1178u));
  a11 = v14 + 1790939281 * ((&a10 & 0x8C1E99E0 | ~(&a10 | 0x8C1E99E0)) ^ 0x8B3D465E) - 901;
  v15 = (*(v12 + 8 * (v14 + 2611)))(&a10);
  return (*(v12 + 8 * (((*v13 == 67) * (((v14 - 4162) | 0x1050) - 1550)) ^ v14)))(v15);
}

uint64_t sub_19699A308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  v34 = 1283153057 * ((v33 - 128) ^ 0x4FD80337);
  *(v33 - 128) = v34 + a13 - 236687653;
  *(v33 - 112) = (v32 + 2708) ^ v34;
  *(v33 - 120) = &a22;
  v35 = (*(v31 + 8 * (v32 + 6525)))(v33 - 128);
  v36 = ((((131 * (v32 ^ 0x114) + 347599440) | 0x2803904C) ^ a31 & 0x3F ^ 0x7CFAF6F7) + 134220624) ^ ((a31 & 0x3F ^ 0x4545DCBA) + 218411376) ^ ((a31 & 0x3F ^ 0x504BA20) + 1296422902);
  *(&a22 + (v36 - 1212247510)) = 108;
  return (*(v31 + 8 * ((5655 * ((v36 - 1212247566) < 0xFFFFFFC8)) ^ v32)))(v35);
}

uint64_t sub_19699A45C()
{
  v5 = *(v0 + 16);
  v6 = 1621291457 * ((v4 - 120) ^ 0x36178199);
  *(v4 - 116) = v6 - 1208745047 + v2;
  *(v4 - 112) = (((v3 ^ 0x85717383) + 2056162429) ^ ((v3 ^ 0x52300B7D) - 1378880381) ^ ((v3 ^ 0x1870D04F) - 410046543)) - v6 + 1047420471;
  v7 = (*(v1 + 8 * (v2 + 3347)))(v4 - 120);
  return (*(v1 + 8 * ((240 * ((*v5 >> 7) ^ 1)) ^ (v2 + 1950))))(v7);
}

void sub_19699A544()
{
  LODWORD(STACK[0x368]) = 86;
  LODWORD(STACK[0x34C]) = 1;
  JUMPOUT(0x19699A560);
}

uint64_t sub_19699A6F8@<X0>(int a1@<W8>)
{
  result = (*(v3 + 8 * (a1 + 1250)))(v2);
  *(v1 + 16) = -1098940267;
  return result;
}

uint64_t sub_19699A758(uint64_t result)
{
  *v2 = result;
  *(v1 + 4) = 1906281716;
  return result;
}

void sub_19699A780()
{
  STACK[0x920] = 0;
  STACK[0x478] = 0;
  STACK[0x4D0] = *(v1 + 8 * v0);
  JUMPOUT(0x196999F10);
}

uint64_t sub_19699A7A4()
{
  v2 = STACK[0x7C8];
  v3 = &STACK[0xB70] + STACK[0x958];
  STACK[0x7B0] = v3;
  STACK[0x838] = (v3 + 16);
  STACK[0x4C0] = 0;
  STACK[0x4A8] = 0;
  LODWORD(STACK[0x480]) = -1720256293;
  STACK[0x510] = 0;
  LODWORD(STACK[0x5BC]) = -1720256293;
  STACK[0x850] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 - 840) ^ 0x26) - 1810)) ^ v0)))();
}

void sub_19699A80C(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x1968EA40CLL);
}

void sub_19699A820(uint64_t a1@<X5>, int a2@<W8>)
{
  LODWORD(STACK[0x800]) = v4;
  LODWORD(STACK[0x43C]) = -1720256293;
  LODWORD(STACK[0x48C]) = -1720256293;
  LODWORD(STACK[0x44C]) = v5;
  STACK[0x568] = v2;
  LODWORD(STACK[0x414]) = a2;
  STACK[0x6F8] = *(a1 + 8 * (v3 - 1865));
  JUMPOUT(0x1969CE4D0);
}

uint64_t sub_19699A84C()
{
  v3 = *(v1 + 8);
  STACK[0x6E8] = v3;
  return (*(v2 + 8 * (((v3 == 0) * ((v0 - 2195) ^ 0x1FB3 ^ ((v0 - 1734) | 0x194))) ^ v0)))();
}

uint64_t sub_19699A8CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  v27 = a1[1];
  v28 = a1[4];
  v33 = a1[3];
  v29 = v28[1];
  *(v26 - 112) = a2;
  *(v26 - 104) = v27;
  *(v26 - 144) = &a22;
  *(v26 - 136) = v25 + 3523 + 1283153057 * ((v26 + 952228821 - 2 * ((v26 - 144) & 0x38C1DC65)) ^ 0x7719DF52);
  *(v26 - 128) = v28;
  *(v26 - 120) = v29;
  (*(v24 + 8 * (v25 + 6178)))(v26 - 144);
  *(v26 - 120) = v27;
  *(v26 - 112) = &a22;
  *(v26 - 144) = v28;
  *(v26 - 136) = (v25 + 3539) ^ (1575331711 * ((((2 * (v26 - 144)) | 0xB806966) - (v26 - 144) - 96482483) ^ 0x699BA1B1));
  *(v26 - 128) = &a20;
  (*(v24 + 8 * (v25 ^ 0x18BD)))(v26 - 144);
  *(v26 - 136) = v25 + 3523 + 1283153057 * ((2 * ((v26 - 144) & 0x3105AF80) - (v26 - 144) - 822456194) ^ 0x81225349);
  *(v26 - 144) = &a10;
  *(v26 - 112) = &a20;
  *(v26 - 104) = v27;
  *(v26 - 128) = v28;
  *(v26 - 120) = &a22;
  (*(v24 + 8 * (v25 ^ 0x18E2)))(v26 - 144);
  *(v26 - 136) = v25 + 3523 + 1283153057 * ((((v26 - 144) | 0x90F7E01F) - ((v26 - 144) & 0x90F7E01F)) ^ 0xDF2FE328);
  *(v26 - 144) = &a24;
  *(v26 - 112) = &a20;
  *(v26 - 104) = v27;
  *(v26 - 128) = v28;
  *(v26 - 120) = &a10;
  (*(v24 + 8 * (v25 ^ 0x18E2)))(v26 - 144);
  *(v26 - 128) = v28;
  *(v26 - 120) = &a24;
  *(v26 - 144) = &a18;
  *(v26 - 136) = v25 + 3523 + 1283153057 * (((v26 - 144) & 0x2E7C722E | ~((v26 - 144) | 0x2E7C722E)) ^ 0x9E5B8EE6);
  *(v26 - 112) = &a20;
  *(v26 - 104) = v27;
  (*(v24 + 8 * (v25 + 6178)))(v26 - 144);
  *(v26 - 136) = v25 + 3523 + 1283153057 * ((((v26 - 144) | 0x36456323) - ((v26 - 144) & 0x36456323)) ^ 0x799D6014);
  *(v26 - 128) = v28;
  *(v26 - 120) = &a18;
  *(v26 - 112) = &a20;
  *(v26 - 104) = v27;
  *(v26 - 144) = &a12;
  (*(v24 + 8 * (v25 ^ 0x18E2)))(v26 - 144);
  *(v26 - 136) = v25 + 3523 + 1283153057 * ((v26 - 144) ^ 0x4FD80337);
  *(v26 - 112) = &a20;
  *(v26 - 104) = v27;
  *(v26 - 144) = &a16;
  *(v26 - 128) = v28;
  *(v26 - 120) = &a12;
  (*(v24 + 8 * (v25 ^ 0x18E2)))(v26 - 144);
  *(v26 - 136) = v25 + 3523 + 1283153057 * ((((v26 - 144) | 0xAB110685) + (~(v26 - 144) | 0x54EEF97A)) ^ 0xE4C905B3);
  *(v26 - 128) = v28;
  *(v26 - 120) = &a16;
  *(v26 - 144) = &a14;
  *(v26 - 112) = &a20;
  *(v26 - 104) = v27;
  (*(v24 + 8 * (v25 + 6178)))(v26 - 144);
  *(v26 - 136) = v25 + 3523 + 1283153057 * ((v26 + 774774850 - 2 * ((v26 - 144) & 0x2E2E20D2)) ^ 0x61F623E5);
  *(v26 - 112) = &a20;
  *(v26 - 104) = v27;
  *(v26 - 144) = &a20;
  *(v26 - 128) = v28;
  *(v26 - 120) = &a14;
  (*(v24 + 8 * (v25 ^ 0x18E2)))(v26 - 144);
  v30 = *v28;
  *(v26 - 144) = (v25 + 3626) ^ (654144011 * ((((v26 - 144) | 0x42BC333D) + (~(v26 - 144) | 0xBD43CCC2)) ^ 0x6E684EA0));
  *(v26 - 136) = v30;
  *(v26 - 128) = &a8;
  (*(v24 + 8 * (v25 ^ 0x18C2)))(v26 - 144);
  *(v26 - 144) = v33;
  *(v26 - 132) = (v25 + 3577) ^ (1621291457 * ((((2 * (v26 - 144)) | 0xBB4D53B2) - (v26 - 144) + 576280103) ^ 0xEBB12840));
  v31 = (*(v24 + 8 * (v25 ^ 0x197D)))(v26 - 144);
  return (*(v24 + 8 * ((((*(v26 - 136) - 1516654139) > 0x7FFFFFFE) * ((2 * v25) ^ 0x42D)) ^ v25)))(v31);
}

void sub_19699AD98(int a1@<W1>, int a2@<W2>, int a3@<W5>, int a4@<W8>)
{
  LODWORD(STACK[0x4E8]) = a2;
  LODWORD(STACK[0x56C]) = v5;
  LODWORD(STACK[0x608]) = v4;
  LODWORD(STACK[0x3E4]) = a3 + 80;
  v7 = (((v4 ^ 0xA1993F61) + 1583792287) ^ ((v4 ^ 0x416A0F60) - 1097469792) ^ ((v4 ^ 0x9CB4376A) + 1665910934)) + 576118148 + (((((a1 ^ 0x10C8) - 191654187) & 0xB6C77FF) + 1195773676 + (*(STACK[0x6A0] + 88) ^ 0xB8B9D919)) ^ ((*(STACK[0x6A0] + 88) ^ 0xDB4ADB16) + 615851242) ^ ((*(STACK[0x6A0] + 88) ^ 0x1FB40564) - 531891556));
  v8 = (v7 ^ 0xD537A818) & (2 * (v7 & 0xD6373152)) ^ v7 & 0xD6373152;
  v9 = ((2 * (v7 ^ 0xFD53E89C)) ^ 0x56C9B39C) & (v7 ^ 0xFD53E89C) ^ (2 * (v7 ^ 0xFD53E89C)) & 0x2B64D9CE;
  v10 = v9 ^ 0x29244842;
  v11 = (v9 ^ 0x408188) & (4 * v8) ^ v8;
  v12 = ((4 * v10) ^ 0xAD936738) & v10 ^ (4 * v10) & 0x2B64D9CC;
  v13 = (v12 ^ 0x29004100) & (16 * v11) ^ v11;
  v14 = ((16 * (v12 ^ 0x26498C6)) ^ 0xB64D9CE0) & (v12 ^ 0x26498C6) ^ (16 * (v12 ^ 0x26498C6)) & 0x2B64D9C0;
  v15 = v13 ^ 0x2B64D9CE ^ (v14 ^ 0x22449800) & (v13 << 8);
  *(STACK[0x6A0] + 88) = v7 ^ (2 * ((v15 << 16) & 0x2B640000 ^ v15 ^ ((v15 << 16) ^ 0x59CE0000) & (((v14 ^ 0x920410E) << 8) & 0x2B640000 ^ 0xB240000 ^ (((v14 ^ 0x920410E) << 8) ^ 0x64D90000) & (v14 ^ 0x920410E)))) ^ 0xEE3185A5;
  LODWORD(STACK[0x578]) = a4;
  LODWORD(STACK[0x4E4]) = v6;
  JUMPOUT(0x19699AFFCLL);
}

void sub_19699B7CC()
{
  v1 = STACK[0x8D0];
  v2 = STACK[0x8D0] + 4;
  STACK[0x350] = STACK[0x7A8];
  STACK[0x260] = (v2 ^ 0x2DFF72FD5EAFFF3ELL) - 0x9A12090E8BB200 + ((2 * v2) & 0x5BFEE5FABD5FFE7CLL);
  STACK[0x250] = STACK[0x8C8];
  STACK[0x240] = ((STACK[0x8C0] + (((v0 ^ 0x13CAu) + 987) ^ 0x1659)) ^ 0xAF6774F55FACEFBELL) + 0x7DFDEBFEF0775D80 + ((2 * (STACK[0x8C0] + (((v0 ^ 0x13CAu) + 987) ^ 0x1659))) & 0x5ECEE9EABF59DF7CLL);
  STACK[0x230] = ((STACK[0x8B0] + 4) ^ 0xBFEDEEFC70FEFDBFLL) + 0x6D7771F7DF254F7FLL + ((2 * (STACK[0x8B0] + 4)) & 0x7FDBDDF8E1FDFB7ELL);
  STACK[0x220] = ((STACK[0x900] + 4) ^ 0x3DFF6EF47FF4DFFFLL) - 0x109A0E002FD092C1 + ((2 * (STACK[0x900] + 4)) & 0x7BFEDDE8FFE9BFFELL);
  STACK[0x210] = ((STACK[0x920] + 4) ^ 0xEF6D74F5576FEFFFLL) + 0x3DF7EBFEF8B45D3FLL + ((2 * (STACK[0x920] + 4)) & 0xDEDAE9EAAEDFDFFELL);
  STACK[0x200] = ((STACK[0x8A0] + 4) ^ 0x2FFD72F4DDB7DF3ELL) - 0x29812008D939200 + ((2 * (STACK[0x8A0] + 4)) & 0x5FFAE5E9BB6FBE7CLL);
  STACK[0x270] = v1 + 10;
  STACK[0x2B0] = STACK[0x628];
  STACK[0x2A0] = STACK[0x600];
  STACK[0x2D0] = STACK[0x7C0];
  STACK[0x2C0] = STACK[0x598];
  STACK[0x290] = STACK[0x5B0];
  STACK[0x320] = STACK[0x4C0];
  STACK[0x300] = STACK[0x4A8];
  STACK[0x280] = STACK[0x468];
  STACK[0x2F0] = STACK[0x3B0];
  LODWORD(STACK[0x2E0]) = LOWORD(STACK[0x87A]);
  LODWORD(STACK[0x340]) = LOWORD(STACK[0x85E]);
  LODWORD(STACK[0x330]) = LOWORD(STACK[0x84E]);
  LODWORD(STACK[0x310]) = LOWORD(STACK[0x82E]);
  JUMPOUT(0x1969D15C0);
}

uint64_t sub_19699BC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x36C];
  LODWORD(STACK[0x87C]) = v6;
  v8 = (v6 ^ 0x9976F8DB) + STACK[0x270];
  STACK[0x880] = v8;
  return (*(a6 + 8 * ((v7 - 4633) ^ ((4 * (v8 > STACK[0x250])) | (16 * (v8 > STACK[0x250]))))))();
}

uint64_t sub_19699BCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 7 * (v3 ^ 0x1B48);
  v6 = (v5 ^ 0x1B51u) - 5433 + v2;
  v7 = *(a2 + v6 - 15);
  v8 = *(a2 + v6 - 31);
  v9 = a1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v4 + 8 * ((230 * (((v5 - 3721) & v2) != 32)) ^ v5)))();
}

uint64_t sub_19699BD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t *a20, uint64_t a21, uint64_t a22, uint64_t *a23)
{
  v28 = *a23;
  *(v27 - 216) = v24 + (((~(v27 - 224) & 0x2CAC859C) - (~(v27 - 224) | 0x2CAC859D)) ^ 0xD470A5DC) * v26 - 2843;
  *(v27 - 224) = v28;
  v29 = (*(v23 + 8 * (v24 + 669)))(v27 - 224);
  v30 = STACK[0x370];
  v31 = *a20;
  STACK[0x450] = &STACK[0x9C0];
  STACK[0x568] = 80;
  STACK[0x6A0] = v25;
  STACK[0x5A0] = 0;
  STACK[0x5F0] = 0;
  STACK[0x710] = v31;
  return (*(v30 + 8 * (((v31 != 0) * (((v24 - 5564) | 0xC0) - 676)) ^ v24)))(v29);
}

uint64_t sub_19699BFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unsigned int a35)
{
  v39 = 646 * (HIDWORD(a20) ^ 0xE2Bu);
  v87 = *(v36 + 8 * (v35 - 3391));
  v40 = *(a8 + 80);
  v41 = *(a8 + 84);
  v42 = (*(a8 + 96) - ((2 * *(a8 + 96)) & 0x94) + 81);
  if (v42 == 79)
  {
    return sub_19699C170(a1, v40, &a35, 92, a5, v41, v39);
  }

  if (v42 == 82)
  {
    v43 = (a8 + v37 + 1323261421);
    v44 = *v43 ^ 0xEC;
    LODWORD(v43) = ((v43[2] ^ 0xEC) << 16) | ((v43[3] ^ 0xEC) << 24) | v44 | ((*(a8 + (v39 ^ (v37 + 883)) + 1323261421) ^ 0xEC) << 8);
    a35 = v43 + v38 - 2 * (v43 & (v38 + 16) ^ v44 & 0x10);
    v45 = *(v36 + 8 * (((2 * ((v37 + 1323261425) < 0x40)) | (4 * ((v37 + 1323261425) < 0x40))) ^ (HIDWORD(a20) - 1686)));
    LODWORD(v86) = HIDWORD(a20) - 1205342133;
    HIDWORD(v86) = HIDWORD(a20) ^ 0xE3F;
    LODWORD(a20) = (HIDWORD(a20) ^ 0x1A1) + 97896992;
    return v45(v45, v40, &a35, 92, 0, v41, v39, a8, a9, a10, a11, a12, a2, a14, v86, a16, a17, a18, v87, a20, a21, a22, a23, a24, a25, a26);
  }

  else
  {
    v46 = (((*(a8 + 72) ^ 0x1237DDD0) - 305651152) ^ ((*(a8 + 72) ^ 0xB9E6DA95) + 1176053099) ^ ((*(a8 + 72) ^ 0xD796002E) + 678035410)) + (((*(a8 + 72) ^ 0xF64F6927) + 162567897) ^ ((*(a8 + 72) ^ 0x3B0A7311) - 990540561) ^ ((*(a8 + 72) ^ 0xB1021D5D) + 1325261475)) + 18178896;
    v47 = (v46 ^ 0xE77C0377) & (2 * (v46 & 0xF778AB86)) ^ v46 & 0xF778AB86;
    v48 = ((2 * (v46 ^ 0xC54D0777)) ^ 0x646B59E2) & (v46 ^ 0xC54D0777) ^ (2 * (v46 ^ 0xC54D0777)) & 0x3235ACF0;
    v49 = v48 ^ 0x1214A411;
    v50 = (v48 ^ 0x20210820) & (4 * v47) ^ v47;
    v51 = ((4 * v49) ^ 0xC8D6B3C4) & v49 ^ (4 * v49) & 0x3235ACF0;
    v52 = (v51 ^ 0x14A0C0) & (16 * v50) ^ v50;
    v53 = ((16 * (v51 ^ 0x32210C31)) ^ 0x235ACF10) & (v51 ^ 0x32210C31) ^ (16 * (v51 ^ 0x32210C31)) & 0x3235ACF0;
    v54 = v52 ^ 0x3235ACF1 ^ (v53 ^ 0x22108C00) & (v52 << 8);
    v55 = v46 ^ (2 * ((v54 << 16) & 0x32350000 ^ v54 ^ ((v54 << 16) ^ 0x2CF10000) & (((v53 ^ 0x102520E1) << 8) & 0x32350000 ^ 0x2110000 ^ (((v53 ^ 0x102520E1) << 8) ^ 0x35AC0000) & (v53 ^ 0x102520E1))));
    v56 = (((*(a8 + 76) ^ 0x7C31D54B) - 2083640651) ^ ((*(a8 + 76) ^ 0x289AAB43) - 681225027) ^ ((*(a8 + 76) ^ 0x28EC7963) - 686586211)) + (((*(a8 + 76) ^ 0x1596BD44) - 362200388) ^ ((*(a8 + 76) ^ 0x18DA0A57) - 416942679) ^ ((*(a8 + 76) ^ 0x710BB078) - 1896591480)) + 1655082419;
    v57 = (v56 ^ 0x1D7D533) & (2 * (v56 & 0x95E78123)) ^ v56 & 0x95E78123;
    v58 = ((2 * (v56 ^ 0xB9BD773)) ^ 0x3CF8ACA0) & (v56 ^ 0xB9BD773) ^ (2 * (v56 ^ 0xB9BD773)) & 0x9E7C5650;
    v59 = v58 ^ 0x82045250;
    v60 = (v58 ^ 0x1C380400) & (4 * v57) ^ v57;
    v61 = ((4 * v59) ^ 0x79F15940) & v59 ^ (4 * v59) & 0x9E7C5650;
    v62 = (v61 ^ 0x18705040) & (16 * v60) ^ v60;
    v63 = ((16 * (v61 ^ 0x860C0610)) ^ 0xE7C56500) & (v61 ^ 0x860C0610) ^ (16 * (v61 ^ 0x860C0610)) & 0x9E7C5650;
    v64 = v62 ^ 0x9E7C5650 ^ (v63 ^ 0x86444400) & (v62 << 8);
    *(a8 + 72) = v55 ^ 0xAF36F50F;
    *(a8 + 76) = v56 ^ (2 * ((v64 << 16) & 0x1E7C0000 ^ v64 ^ ((v64 << 16) ^ 0x56500000) & (((v63 ^ 0x18381250) << 8) & 0x1E7C0000 ^ 0x2280000 ^ (((v63 ^ 0x18381250) << 8) ^ 0x7C560000) & (v63 ^ 0x18381250)))) ^ 0xF9F82AE8;
    v65 = (((v40 ^ 0xA253433C) + 1571601604) ^ ((v40 ^ 0x6EA791B9) - 1856475577) ^ ((v40 ^ 0xB0B3D5EE) + 1330391570)) + (((*(a8 + 80) ^ 0x2EE24C84) - 786582660) ^ ((*(a8 + 80) ^ 0xF49435F6) + 191613450) ^ ((*(a8 + 80) ^ 0xA6317E19) + 1506705895)) + 1651020750;
    v66 = (v65 ^ 0x4525730C) & (2 * (v65 & 0x96257B08)) ^ v65 & 0x96257B08;
    v67 = ((2 * (v65 ^ 0x4D6D011C)) ^ 0xB690F428) & (v65 ^ 0x4D6D011C) ^ (2 * (v65 ^ 0x4D6D011C)) & 0xDB487A14;
    v68 = v67 ^ 0x49480A14;
    v69 = (v67 ^ 0x90007000) & (4 * v66) ^ v66;
    v70 = ((4 * v68) ^ 0x6D21E850) & v68 ^ (4 * v68) & 0xDB487A14;
    v71 = (v70 ^ 0x49006800) & (16 * v69) ^ v69;
    v72 = ((16 * (v70 ^ 0x92481204)) ^ 0xB487A140) & (v70 ^ 0x92481204) ^ (16 * (v70 ^ 0x92481204)) & 0xDB487A10;
    v73 = v71 ^ 0xDB487A14 ^ (v72 ^ 0x90002000) & (v71 << 8);
    v74 = v65 ^ (2 * ((v73 << 16) & 0x5B480000 ^ v73 ^ ((v73 << 16) ^ 0x7A140000) & (((v72 ^ 0x4B485A14) << 8) & 0x5B480000 ^ 0x13000000 ^ (((v72 ^ 0x4B485A14) << 8) ^ 0x487A0000) & (v72 ^ 0x4B485A14))));
    v75 = (((v41 ^ 0x1769004) - 24547332) ^ ((v41 ^ 0xE5C0F29D) + 440339811) ^ ((v41 ^ 0x98F165F2) + 1729010190)) + (((*(a8 + 84) ^ 0xC0FB6C4) - 202356420) ^ ((*(a8 + 84) ^ 0xDC334BD8) + 600618024) ^ ((*(a8 + 84) ^ 0xAC7BFA77) + 1401161097)) + 1640189362;
    v76 = (v75 ^ 0x1480FCA7) & (2 * (v75 & 0x96CAC124)) ^ v75 & 0x96CAC124;
    v77 = ((2 * (v75 ^ 0x3085FEA7)) ^ 0x4C9E7F06) & (v75 ^ 0x3085FEA7) ^ (2 * (v75 ^ 0x3085FEA7)) & 0xA64F3F82;
    v78 = v77 ^ 0xA2410081;
    v79 = (v77 ^ 0x40E0D00) & (4 * v76) ^ v76;
    v80 = ((4 * v78) ^ 0x993CFE0C) & v78 ^ (4 * v78) & 0xA64F3F80;
    v81 = (v80 ^ 0x800C3E00) & (16 * v79) ^ v79;
    v82 = ((16 * (v80 ^ 0x26430183)) ^ 0x64F3F830) & (v80 ^ 0x26430183) ^ (16 * (v80 ^ 0x26430183)) & 0xA64F3F80;
    v83 = v81 ^ 0xA64F3F83 ^ (v82 ^ 0x24433800) & (v81 << 8);
    *(a8 + 80) = v74 ^ 0xE8F2884B;
    *(a8 + 84) = v75 ^ (2 * ((v83 << 16) & 0x264F0000 ^ v83 ^ ((v83 << 16) ^ 0x3F830000) & (((v82 ^ 0x820C0783) << 8) & 0x264F0000 ^ 0x20400000 ^ (((v82 ^ 0x820C0783) << 8) ^ 0x4F3F0000) & (v82 ^ 0x820C0783)))) ^ 0xEA15B949;
    return v87(642711552, v40, &a35, 92, 842334208, v41, v39, a8, a9, a10, a11);
  }
}

uint64_t sub_19699C170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (v6 + v5 + v8);
  v11 = ((*v10 ^ v4) << 24) | ((v10[1] ^ v4) << 16) | ((v10[2] ^ v4) << 8);
  *(a3 + 4 * (((((v5 ^ 0xD17552E8) + 1616244987) ^ v5 ^ ((v5 ^ 0x2B1122DC) - 1708031793) ^ ((v5 ^ 0x4B05C226) - 98213835) ^ ((v5 ^ 0xFFBEEFFE) + 1318997486)) >> 2) ^ 0x13B7D77BLL)) = (v11 | v10[3] ^ v4) + v9 - 2 * ((v11 | v10[3] ^ v4) & (v9 + 4) ^ (v10[3] ^ v4) & 4);
  return (*(v7 + 8 * ((75 * ((v5 + 4 + v8) < 0x40)) ^ v3)))();
}

uint64_t sub_19699C304()
{
  v5 = (v3 - 3012) | 0xBA8;
  v6 = (v5 + 884);
  *(v0 + v2 + v6 - 3885) = *(v1 + v2 + v6 - 3885) ^ 0xEC;
  return (*(v4 + 8 * ((108 * (v2 + v6 != 3885)) ^ v5)))();
}

uint64_t fp_dh_1f1b854fc3e8acc327f6a7e2a75b8d05(uint64_t result)
{
  v1 = 489239129 * ((-2 - ((~result | 0xB9C0C11391ED6431) + (result | 0x463F3EEC6E129BCELL))) ^ 0x78C2619028C54707);
  v2 = *(result + 32) - v1;
  v3 = *(result + 8) - v1;
  v4 = *result + v1;
  v5 = *(result + 36) ^ v1;
  v6 = *(result + 12) - v1;
  v7 = *(result + 24) - v1;
  v8 = v4 > v7;
  v9 = v4 == v7;
  v10 = v8;
  if (v3)
  {
    v9 = v10;
  }

  if (v9)
  {
    v11 = v2;
  }

  else
  {
    v11 = v5;
  }

  *(result + 16) = v11 ^ v6;
  return result;
}

uint64_t sub_19699C43C@<X0>(uint64_t a1@<X1>, char a2@<W3>, unsigned int a3@<W8>)
{
  v8 = *(v6 - 220 + 4 * (a3 >> ((v4 - v7) ^ (a2 + 2))) + 72);
  v9 = ((2 * a3) & 0xDFEFB678) + (a3 ^ 0xEFF7DB3F) + v3;
  *(a1 + v9) = (HIBYTE(v8) ^ 0x7C) - ((2 * (HIBYTE(v8) ^ 0x7C)) & 0xD8) - 20;
  *(a1 + v9 + 1) = (BYTE2(v8) ^ 0x47) - ((2 * (BYTE2(v8) ^ 0x47)) & 0xD8) - 20;
  *(a1 + v9 + 2) = (BYTE1(v8) ^ 7) - ((2 * (BYTE1(v8) ^ 7)) & 0xD8) - 20;
  *(a1 + v9 + 3) = v8 ^ 0x87;
  v10 = a3 + 4 >= *(v6 - 128);
  return (*(v5 + 8 * (v10 | (32 * v10) | v4)))();
}

uint64_t sub_19699C4FC()
{
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[398];
  v9 = *(v5 - 184 + 4 * (v7 & 1));
  *v4 = v4[397] ^ v2 ^ ((v6 & (v1 ^ 0x328 ^ (v3 + 951)) | *v4 & 0x80000000) >> 1) ^ *(v5 - 184 + 4 * (v6 & 1));
  v4[1] = v8 ^ v2 ^ ((v7 & 0x7FFFFFFE | v6 & 0x80000000) >> 1) ^ v9;
  return (*(v0 + 8 * (v1 + 736)))();
}

uint64_t fp_dh_d6edb13b6e8099ac9b2aa6209507dca6(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1 - 1575331711 * ((-2 - ((a1 | 0xA4605341) + (~a1 | 0x5B9FACBE))) ^ 0x37C439BC);
  v4 = *(a1 + 8);
  v3 = v1 + 998242381 * ((2 * (&v3 & 0x432A4270) - &v3 - 1126842999) ^ 0x16BA255F) + 1108787607;
  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 26632287) + 8 * (v1 ^ 0x1967847) - 4))(&v3);
}

uint64_t fp_dh_91befe83e123936f94a603bd6abe64d0(uint64_t a1)
{
  v1 = 489239129 * (((a1 ^ 0xCC4EB600 | 0xC6B5FBBA) - ((a1 ^ 0xCC4EB600) & 0xC6B5FBBA)) ^ 0xB3D36E8C);
  v2 = *a1 ^ v1;
  v3 = v1 + *(a1 + 16);
  v5 = v3 - 752790304;
  v4 = v3 - 752790304 < 0;
  v6 = 752790304 - v3;
  if (!v4)
  {
    v6 = v5;
  }

  v7 = *(*(a1 + 8) + 4);
  v8 = v7 - 676339932;
  v4 = v7 - 676339932 < 0;
  v9 = 676339932 - v7;
  if (!v4)
  {
    v9 = v8;
  }

  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v2 - 2859) + 8 * ((7271 * ((v6 >> 5) < v9)) ^ v2) - 4))();
}

uint64_t sub_19699C6E8@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v11 = a1 + 1069050996 < a9 + 305446904;
  if (a9 + 305446904 < ((v10 - 1164380756) & 0x4566FF9Fu) + 1069050966 != a1 > 0xC047938B)
  {
    v11 = a9 + 305446904 < ((v10 - 1164380756) & 0x4566FF9Fu) + 1069050966;
  }

  return (*(v9 + 8 * (v10 ^ (4 * v11))))();
}

void fp_dh_083caf067a5319068adc63c25af2bb77(uint64_t a1)
{
  v1 = *(a1 + 16) + 1068996913 * ((((2 * a1) | 0x97DEAC56) - a1 + 873507285) ^ 0x1E01B7BA);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_19699C968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, uint64_t a16)
{
  v20 = 1621291457 * ((&a13 - 841347754 - 2 * (&a13 & 0xCDDA0D56)) ^ 0xFBCD8CCF);
  v21 = (((v19 - 1145663814) & 0x4449738E) + 1122297523 * *v16 + 296294990) ^ v20;
  a14 = v20 + v19 - 3052;
  a15 = v21;
  a16 = a11;
  v22 = (*(v17 + 8 * (v19 ^ 0xA74)))(&a13);
  return (*(v17 + 8 * ((2443 * (a13 == v18)) ^ v19)))(v22);
}

uint64_t sub_19699D66C@<X0>(uint64_t a1@<X8>)
{
  STACK[0x800] = *(v3 + 8 * v2);
  LODWORD(STACK[0x410]) = v4 - 3580;
  LODWORD(STACK[0x400]) = v4 - 3374;
  return (*(v3 + 8 * (((a1 == -8) * ((((((v2 + 3979) | 0x120) + 831) ^ 0xEF4) - 2745) ^ (((v2 + 3979) | 0x120) - 856))) ^ (((v2 + 3979) | 0x120) + 831))))();
}

uint64_t sub_19699D6A8(uint64_t a1)
{
  v2 = *(STACK[0x608] + 24);
  STACK[0x598] = v2;
  return (*(STACK[0x248] + 8 * (((v2 == 0) * ((1204 * ((v1 + 419) ^ 0xFBC)) ^ 0xE46)) ^ (v1 + 419))))(a1, 1906239693);
}

uint64_t sub_19699D6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(STACK[0x788] + 24);
  STACK[0x598] = v7;
  return (*(a6 + 8 * ((101 * ((v6 ^ 0x79 ^ (v7 == 0)) & 1)) ^ v6)))();
}

uint64_t sub_19699D744(uint64_t a1, int a2)
{
  v7 = a1 - 1;
  *(v5 + v7) ^= *(v3 + (v7 & 0xF)) ^ *((v7 & 0xF) + v4 + 4) ^ (69 * (v7 & 0xF)) ^ *((v7 & 0xF) + v2 + 2);
  return (*(v6 + 8 * ((1646 * (v7 == 0)) ^ (a2 - 1864))))();
}

uint64_t sub_19699D81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _BYTE *a29)
{
  a29[128] = v29[12];
  a29[129] = v29[4];
  a29[131] = v29[13];
  v32 = (*(v30 + 8 * (v31 + 1321)))(142, 0x10000403E1C8BA9) == 0;
  return (*(v30 + 8 * ((v32 * (((v31 - 1344) ^ 4) - 4101)) | v31)))();
}

uint64_t sub_19699D8CC@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t a37)
{
  v39 = STACK[0x228] - 478;
  v40 = (v37 ^ a2) + STACK[0x290];
  STACK[0x9E0] = v40;
  return (*(v38 + 8 * (v39 ^ ((8 * (v40 > a37)) | ((v40 > a37) << 7)))))(a1, LODWORD(STACK[0x410]));
}

uint64_t sub_19699D920(int8x16_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v15 = a6 - 8;
  v17.val[0].i64[0] = (v11 + v15 - 1) & 0xF;
  v17.val[0].i64[1] = (v11 + v15 + 14) & 0xF;
  v17.val[1].i64[0] = (v11 + v15 + 13) & 0xF;
  v17.val[1].i64[1] = (v11 + v15 + 12) & 0xF;
  v17.val[2].i64[0] = (v11 + v15 + 11) & 0xF;
  v17.val[2].i64[1] = (v11 + v15 + (v13 ^ 0xFB)) & 0xF;
  v17.val[3].i64[0] = (v11 + v15 + 9) & 0xF;
  v17.val[3].i64[1] = (v11 + v15) & 0xF ^ 8;
  *(a7 + v15) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a7 + v15), *(v9 + v17.val[0].i64[0] - 7)), veor_s8(*(v17.val[0].i64[0] + v10 - 2), *(v17.val[0].i64[0] + v8 - 4)))), a3), vmul_s8(*&vqtbl4q_s8(v17, a1), a2)));
  return (*(v14 + 8 * (((a5 == v15) * a8) ^ (v12 + 70))))();
}

uint64_t sub_19699D928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v17 = v10 + a8;
  v18 = v10 - 1;
  v19 = (__ROR8__((v8 + v18) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v20 = (25 * (v14 ^ 0x22Fu)) ^ v19 ^ 0x4DE9423B6F16F18FLL;
  v19 ^= 0xE5AFA7ACF6E0968ELL;
  v21 = __ROR8__(v20, 8);
  v22 = ((v15 & (2 * (v21 + v19))) - (v21 + v19) + v16) ^ 0xE2E635010CECF8FFLL;
  v23 = v22 ^ __ROR8__(v19, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (v24 + v23 - ((2 * (v24 + v23)) & 0x256A7876A89AD72) - 0x7ED4AC3C4ABB2947) ^ 0x7489A27A009464B0;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x5963B6C555D97F1FLL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (v9 - ((v29 + v28) | v9) + ((v29 + v28) | 0x31F3CBC2A36B396CLL)) ^ 0x50B656E853741D9BLL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8) + v31;
  v33 = __ROR8__((v17 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v34 = ((0x6AF7234D0CC131D4 - v33) & 0xC351D2FA9AB1B69CLL) + v33 - 0x6AF7234D0CC131D5 - ((v33 - 0x6AF7234D0CC131D5) & 0xC751D2FA9AB1B69CLL);
  v35 = v34 ^ 0x8EB890C1F5A7514ELL;
  v34 ^= 0x26FE75566C512012uLL;
  v36 = __ROR8__(v35, 8);
  v37 = (((2 * v32) | 0xBF58159D2FFB2386) - v32 + 0x2053F53168026E3DLL) ^ 0xBB6F16CCE7794FAFLL;
  v38 = v37 ^ __ROR8__(v31, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x1A2AEBE44253AF03;
  v40 = (v36 + v34 - ((2 * (v36 + v34)) & 0xDCED4F79D683836ALL) - 0x1189584314BE3E4BLL) ^ v11;
  v41 = v40 ^ __ROR8__(v34, 61);
  v42 = __ROR8__(v40, 8);
  v43 = __ROR8__(v39, 8) + (v39 ^ __ROR8__(v38, 61));
  v44 = ((v12 | (2 * (v42 + v41))) - (v42 + v41) + v13) ^ a1;
  v45 = v44 ^ __ROR8__(v41, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x5963B6C555D97F1FLL;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = ((a2 | (2 * (v48 + v47))) - (v48 + v47) + a3) ^ a4;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x64C31C027084DE6CLL;
  v52 = __ROR8__(v51, 8);
  v53 = v51 ^ __ROR8__(v50, 61);
  v54 = ((a5 | (2 * (v52 + v53))) - (v52 + v53) + a6) ^ a7;
  *(v17 + 9) = (((((2 * v43) & 0xFAA19CB27FF500D8) - v43 + 0x2AF31A6C0057F93) ^ 0xA99F7374E88223D2) >> (8 * ((v8 + v18) & 7))) ^ (((__ROR8__(v54, 8) + (v54 ^ __ROR8__(v53, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v17 + 9) & 7))) ^ *(v8 + v18);
  return (*(STACK[0x370] + 8 * ((5225 * (v18 == 0)) ^ v14)))();
}

uint64_t sub_19699DCB8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14)
{
  *(&a14 + a1) = -20;
  v16 = ((v14 + 1018922900) ^ 0x3CBB906CLL) + a1 == 56;
  return (*(v15 + 8 * ((v16 | (2 * v16)) ^ v14)))();
}

uint64_t fp_dh_ac8b380baf0bf0ca926b0e34adc42df4()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_74f0a2a4ec3a78af6e36ab2202e2099d ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * (fp_dh_74f0a2a4ec3a78af6e36ab2202e2099d ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0xE1]) + 340);
  v1 = *(v0 - 4);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0BE30 + (*(off_1F0B0CCB0 + (-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55)) - 4) ^ 0x5Cu)) ^ (-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) + 471);
  v3 = 810526117 * ((*(v2 - 4) + v1) ^ &v5 ^ 0xC67C1AE5E193E855);
  *(v0 - 4) = v3;
  *(v2 - 4) = v3;
  v7 = 750 - 654144011 * (((v6 | 0xF1FBBBDF) + (~v6 | 0xE044420)) ^ 0xDD2FC642);
  LOBYTE(v3) = -91 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x55);
  v8 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0C8F0 + (*(off_1F0B0CD68 + v3 - 4) ^ 0xD2u) - 4) ^ v3) + 72);
  LODWORD(v0) = 810526117 * ((*(v2 - 4) + *(v0 - 4)) ^ 0xE193E855);
  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_74f0a2a4ec3a78af6e36ab2202e2099d) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_74f0a2a4ec3a78af6e36ab2202e2099d) ^ 0x55))] ^ 0x76]) + 626) + 8 * (*(off_1F0B0C738 + (*(off_1F0B0CB48 + v0 - 4) ^ 0xA7u) - 8) ^ v0) + 53548))(v6);
}

void fp_dh_30eb421b6c61fe78b15eea6a340ddb2c(uint64_t a1)
{
  v1 = *a1 ^ (654144011 * ((a1 & 0xB6FF3820 | ~(a1 | 0xB6FF3820)) ^ 0x65D4BA43));
  v2 = *(a1 + 16) > *(a1 + 24);
  __asm { BRAA            X2, X17 }
}

uint64_t sub_19699E0CC@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x440];
  v3 = STACK[0x204];
  v4 = *(a1 + 72);
  *v2 = (HIBYTE(v4) ^ 0x7C) - ((2 * (HIBYTE(v4) ^ 0x7C)) & 0xD8) - 20;
  v2[1] = (BYTE2(v4) ^ 0x47) - ((2 * (BYTE2(v4) ^ 0x47)) & 0xD8) - 20;
  v2[2] = (BYTE1(v4) ^ 7) - ((2 * (BYTE1(v4) ^ 7)) & 0xD8) - 20;
  v2[3] = v4 ^ 0x87;
  return (*(v1 + 8 * ((7485 * (*(a1 + 92) > 4u)) ^ v3)))();
}

uint64_t sub_19699E1A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16)
{
  LODWORD(a14) = v16 - ((&a14 & 0x9509156 | ~(&a14 | 0x9509156)) ^ 0x9AF4FBAB) * v18 + 601;
  a15 = a12;
  a16 = &a10;
  (*(v19 + 8 * (v16 ^ 0x1CC6)))(&a14);
  a14 = a12;
  HIDWORD(a15) = v16 - 489239129 * (&a14 ^ 0xB9282336) - 735;
  v20 = (*(v19 + 8 * (v16 + 5192)))(&a14);
  return (*(v19 + 8 * ((324 * (a15 == (((v16 + 987) | 0x180) ^ (v17 - 1469)))) ^ v16)))(v20);
}

uint64_t sub_19699E27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18)
{
  v21 = 1012216201 * ((((2 * &a13) | 0x87F5B024) - &a13 + 1006970862) ^ 0x475350FE);
  a18 = v21 + v20 - 1795306327;
  a15 = v21 - 1782662392;
  a13 = v21 ^ 0x80F33AA;
  a16 = a10;
  a17 = &a11;
  v22 = (*(v19 + 8 * (v20 + 3724)))(&a13);
  return (*(v19 + 8 * (((a14 != v18) * (((v20 - 22146300) & 0xFF77EFF7) + ((v20 - 2108) ^ 0x1D9F2C1))) ^ (v20 - 109))))(v22);
}

uint64_t sub_19699E450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v58 = STACK[0x228];
  v59 = (2 * STACK[0x228]) ^ 0xDAA;
  v60 = 41 * (STACK[0x228] ^ 0xE1F);
  v61 = STACK[0x228] - 2347;
  v62 = STACK[0x668];
  v63 = STACK[0x888];
  v64 = STACK[0x228] - 2283;
  v65 = 1068996913 * ((((v57 - 224) ^ 0x3B3CF1A2) & 0x3D803937 | ~((v57 - 224) ^ 0x3B3CF1A2 | 0x3D803937)) ^ 0x2CADD6FB);
  *(v57 - 216) = 1230483497 - v65;
  *(v57 - 208) = v63;
  *(v57 - 200) = v64 ^ v65;
  *(v57 - 192) = a57;
  *(v57 - 224) = v62;
  *(v57 - 184) = -1482410158 - v65;
  v66 = STACK[0x248];
  v67 = (*(STACK[0x248] + 8 * (v58 ^ 0x14ED)))(v57 - 224);
  v68 = *(v57 - 180);
  LODWORD(STACK[0x9C0]) = v68;
  return (*(v66 + 8 * ((3540 * (v68 == (v59 ^ 0x719F9DEB) + v60)) ^ v61)))(v67);
}

uint64_t sub_19699E564@<X0>(int a1@<W8>)
{
  v8 = (v6 + 4 * v1);
  v9 = v1 + 1;
  *v8 = v8[397] ^ v4 ^ *(v7 - 184 + 4 * (*(v6 + 4 * v9) & 1)) ^ ((*(v6 + 4 * v9) & 0x7FFFFFFE | (((a1 + 1191433297) & 0xB8FC2F67) + v5) & v2) >> 1);
  return (*(v3 + 8 * ((1837 * (v9 == 227)) ^ a1)))();
}

uint64_t sub_19699E624()
{
  v4 = 64 - ((v2 ^ 0x6DFAEEE4u) + v0);
  v5 = (v1 ^ 0x92050565) - v0;
  if (HIDWORD(v4))
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 >= v4;
  }

  v7 = !v6;
  return (*(v3 + 8 * ((502 * v7) ^ v2)))();
}

uint64_t sub_19699E6CC(double a1)
{
  *(v4 - 1) = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_19699E71C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, unsigned int a41)
{
  v44 = *(&a29 + a2 + 72);
  v45 = (((v42 - 2782) | 0xE0) - 104) ^ HIBYTE(v44);
  v46 = ((2 * a2) & 0xBFECBF78) + (a2 ^ 0xDFF65FBE) + v41;
  *(a1 + v46) = v45 - ((2 * v45) & 0xD8) - 20;
  *(a1 + v46 + 1) = (BYTE2(v44) ^ 0x47) - ((2 * (BYTE2(v44) ^ 0x47)) & 0xD8) - 20;
  *(a1 + v46 + 2) = (BYTE1(v44) ^ 7) - ((2 * (BYTE1(v44) ^ 7)) & 0xD8) - 20;
  *(a1 + v46 + 3) = v44 ^ 0x87;
  return (*(v43 + 8 * ((7 * (a2 + 4 >= a41)) ^ v42)))();
}

uint64_t sub_19699EA0C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X6>, _BYTE *a6@<X7>, uint64_t a7@<X8>)
{
  v22 = STACK[0x228] - 3539;
  *a6 = v13;
  *v14 = v15;
  v23 = v16 + v9 - 0x3382B5C2BDF391A5;
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = ((2 * (v24 + v19)) | 0x9B88ED178DBF3456) - (v24 + v19) + 0x323B8974392065D5;
  v26 = __ROR8__(v25 ^ 0x46AE1D8CB896FABALL, 8);
  v25 ^= 0x2A4CABBBD47F0BCBuLL;
  v27 = (a2 - ((v26 + v25) | a2) + ((v26 + v25) | 0x514449D76ACA0B9BLL)) ^ 0xAAD35D69A0E66372;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v21;
  v30 = __ROR8__(v29, 8);
  v31 = v29 ^ __ROR8__(v28, 61);
  v32 = (a1 - ((v30 + v31) | a1) + ((v30 + v31) | 0x41F5715DB74128EDLL)) ^ 0xBC7E22636E2B6BD9;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ a5;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = __ROR8__((((2 * (v36 + v35)) | 0x5A0CEE07409187E8) - (v36 + v35) - 0x2D067703A048C3F4) ^ 0x4C96D061DE35C88DLL, 8);
  v38 = *(STACK[0x248] + 8 * v22);
  v39 = (((2 * (v36 + v35)) | 0x5A0CEE07409187E8) - (v36 + v35) - 0x2D067703A048C3F4) ^ 0x4C96D061DE35C88DLL ^ __ROR8__(v35, 61);
  v40 = (v37 + v39 - ((2 * (v37 + v39)) & 0x13F4BAF55DAEDB6CLL) - 0x7605A2855128924ALL) ^ 0x7B733B09AEA4AE8;
  *v23 = (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ a4) >> (8 * (v23 & 7u))) ^ HIBYTE(v17) ^ 0x6F;
  v41 = __ROR8__((v23 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v42 = (v12 - v41) & 0xD94D019A761B3954 | (v41 + v19) & 0x22B2FE6589E4C6ABLL;
  v43 = v42 ^ 0x56276A9D085259C5;
  v42 ^= 0x3AC5DCAA64BBA8B4uLL;
  v44 = __ROR8__(v43, 8);
  v45 = __ROR8__((((2 * (v44 + v42)) | 0x18EF6A3861B429C8) - (v44 + v42) - 0xC77B51C30DA14E4) ^ 0xF7E0A1A2FAF67C0DLL, 8);
  v46 = (((2 * (v44 + v42)) | 0x18EF6A3861B429C8) - (v44 + v42) - 0xC77B51C30DA14E4) ^ 0xF7E0A1A2FAF67C0DLL ^ __ROR8__(v42, 61);
  v47 = (v45 + v46) ^ v21;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (v11 - ((v49 + v48) | v11) + ((v49 + v48) | 0x7799FEBA79E2F88)) ^ 0xFAF2CCD57EF46CBCLL;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ a5;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (((2 * (v54 + v53)) | 0xE845661D9F7A9D1ALL) - (v54 + v53) - 0x7422B30ECFBD4E8DLL) ^ 0x15B2146CB1C045F4;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ a3;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  *(v23 + 1) = (((((v59 + v58) & 0x6956CD47B8C103D1 ^ 0x60144C4190400140) + ((v59 + v58) & 0x96A932B8473EFC2ELL ^ 0x84282288032A600DLL) - 1) ^ 0xB5872FB83C87A764) >> (8 * ((v23 + 1) & 7))) ^ BYTE2(v17) ^ 0x4D;
  v60 = __ROR8__((v23 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v61 = ((v12 - v60) & 0xC10E5D685C5534D4) + v60 + v19 - ((v60 + v19) & 0xC50E5D685C5534D4);
  v62 = v61 ^ 0x4E64366F221C5445;
  v61 ^= 0x228680584EF5A534uLL;
  v63 = (__ROR8__(v62, 8) + v61) ^ v20;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = __ROR8__(v63, 8);
  v66 = __ROR8__((v65 + v64 - ((2 * (v65 + v64)) & 0xD64D8A76A03ED044) - 0x14D93AC4AFE097DELL) ^ 0x56A9B9C64E18FF39, 8);
  v67 = (v65 + v64 - ((2 * (v65 + v64)) & 0xD64D8A76A03ED044) - 0x14D93AC4AFE097DELL) ^ 0x56A9B9C64E18FF39 ^ __ROR8__(v64, 61);
  v68 = (v66 + v67) ^ 0xFD8B533ED96A4334;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (v70 + v69 - ((2 * (v70 + v69)) & 0xD3FCED87183E15CELL) - 0x1601893C73E0F519) ^ 0xE339ACC6E8DE896CLL;
  v72 = v71 ^ __ROR8__(v69, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ v18;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ a3;
  *(v23 + 2) = (((__ROR8__(v75, 8) + (v75 ^ __ROR8__(v74, 61))) ^ a4) >> (8 * ((v23 + 2) & 7))) ^ BYTE1(v17) ^ 0x85;
  v76 = __ROR8__((v23 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v77 = ((2 * (v76 + v19)) | 0xC3056805381702A4) - (v76 + v19) + 0x1E7D4BFD63F47EAELL;
  v78 = __ROR8__(v77 ^ 0x6AE8DF05E242E1C3, 8);
  v77 ^= 0x60A69328EAB10B2uLL;
  v79 = (v78 + v77) ^ v20;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ v21;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (((2 * ((v83 + v82) ^ 0x940001BBCD6304CDLL)) & 0x513760C2E89A6D04) - ((v83 + v82) ^ 0x940001BBCD6304CDLL) - 0x289BB061744D3683) ^ 0xBEEF1D1B9FBB8E84;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ a5;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ v18;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (((2 * (v90 + v89)) | 0xEB8D2A5464022CD8) - (v90 + v89) - 0x75C6952A3201166CLL) ^ 0xFB8BFBE0063C3132;
  v92 = __ROR8__(v91, 8) + (v91 ^ __ROR8__(v89, 61));
  *(v23 + 3) = v17 ^ v8 ^ ((((v10 & (2 * v92)) - v92 + v7) ^ a7) >> (8 * ((v16 + v9 + 91 + 3) & 7)));
  return v38();
}

uint64_t sub_19699EFE4()
{
  v4 = (*(v2 + 8 * (v1 + 582)))();
  LODWORD(STACK[0x380]) = v0;
  return (*(v2 + 8 * (((38 * (v1 ^ 0x17C1) - 1999) * v3) ^ (v1 - 5559))))(LODWORD(STACK[0x340]), 1906281716, 48, 1906239693, 4356, STACK[0x338], 95, 6138, v4, 0);
}

uint64_t sub_19699F068(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v22 = 24 * (a3 ^ 0x1077);
  v26.val[1].i64[0] = (v20 + 13) & 0xF;
  v26.val[1].i64[1] = (v20 + 12) & 0xF;
  v26.val[2].i64[0] = (v20 + 11) & 0xF;
  v26.val[2].i64[1] = (v20 + 10) & 0xF;
  v26.val[3].i64[0] = (v20 + 9) & 0xF;
  v26.val[3].i64[1] = v20 & 0xF ^ 8;
  v27.val[0].i64[0] = (v20 + 7) & 0xF;
  v27.val[0].i64[1] = (v20 + 6) & 0xF;
  v27.val[1].i64[0] = (v20 + 5) & 0xF;
  v27.val[1].i64[1] = (v20 + 4) & 0xF;
  v27.val[2].i64[0] = (v20 + 3) & 0xF;
  v27.val[2].i64[1] = (v20 + 2) & 0xF;
  v27.val[3].i64[0] = (v20 + 1) & 0xF;
  v27.val[3].i64[1] = v20 & 0xF;
  v23 = vqtbl4q_s8(v27, xmmword_196EBFA60).u64[0];
  v24.i64[0] = 0xCFCFCFCFCFCFCFCFLL;
  v24.i64[1] = 0xCFCFCFCFCFCFCFCFLL;
  v26.val[0].i64[0] = (((v22 - 2840) | 0x1002u) ^ 0x110DLL) & v21;
  v26.val[0].i64[1] = (v20 + 14) & 0xF;
  v27.val[3].i64[0] = vqtbl4q_s8(v26, xmmword_196EBFA60).u64[0];
  v27.val[3].i64[1] = v23;
  v27.val[0] = vrev64q_s8(vmulq_s8(v27.val[3], v24));
  *(v20 + a17 - 16) = veorq_s8(veorq_s8(veorq_s8(*(v19 + v26.val[0].i64[0] - 15), *(v20 + a17 - 16)), veorq_s8(*(v26.val[0].i64[0] + v18 - 14), *(v17 + v26.val[0].i64[0] - 15))), vextq_s8(v27.val[0], v27.val[0], 8uLL));
  return (*(a16 + 8 * ((8004 * ((v20 & 0x10) == 16)) ^ v22)))();
}

uint64_t sub_19699F1CC@<X0>(uint64_t a1@<X5>, char a2@<W8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = (a2 ^ 0xBA) * (a2 + 17);
  return (*(v4 + 8 * (((v5 == 0) * (((v3 + 1164) | 8) - 4086)) ^ v3)))();
}

uint64_t sub_19699F27C()
{
  v6 = (v2 + 32);
  v7 = (v3 + 32);
  v8 = *v6;
  *(v7 - 1) = *(v6 - 1);
  *v7 = v8;
  return (*(v5 + 8 * ((115 * ((((v1 - 233) ^ (v0 + v4 - 32 == 0)) & 1) == 0)) ^ v1)))();
}

uint64_t sub_19699F41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, char *a18, unsigned int a19)
{
  a18 = &a12;
  a19 = 1498 - 1825732043 * ((1923405969 - (&a17 | 0x72A4D891) + (&a17 | 0x8D5B276E)) ^ 0x8DCD7459);
  v22 = (*(v19 + 53584))(&a17);
  return (*(v19 + 8 * ((4310 * (a17 == v21)) ^ v20)))(v22);
}

void fp_dh_b889d120b89ca3f8d35055c16dbb88e0(uint64_t a1)
{
  v1 = *(a1 + 24) - 1012216201 * ((2 * (a1 & 0xCE20D12) - a1 + 1931342573) ^ 0xF7B47A01);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_19699F5E8@<X0>(int a1@<W8>)
{
  STACK[0x6F0] = STACK[0x960];
  LODWORD(STACK[0x8E4]) = STACK[0x5F4];
  LODWORD(STACK[0x63C]) = 1906281716;
  STACK[0x800] = *(v2 + 8 * (a1 - 4380));
  LODWORD(STACK[0x410]) = v3 - 3580;
  LODWORD(STACK[0x400]) = v3 - 3374;
  return (*(v2 + 8 * (((&STACK[0x970] == 0) * ((((a1 + 677) ^ 0xEF4) - 2745) ^ (a1 - 1010))) ^ (a1 + 677))))();
}

uint64_t sub_19699F74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t *a14, unsigned int a15)
{
  a15 = 1498 - 1825732043 * ((2 * (&a13 & 0x241FCAE8) - &a13 + 1541420307) ^ 0x5B766624);
  a14 = &a9;
  v17 = (*(v15 + 53584))(&a13);
  return (*(v15 + 8 * ((8026 * (a13 == v16)) ^ 0xF66u)))(v17);
}

uint64_t sub_19699F7D4(unint64_t a1)
{
  STACK[0x530] = a1;
  *a1 = 5;
  *(a1 + 4) = 0;
  v3 = (*(v2 + 8 * (v1 + 3717)))(120, 0x1000040F604211FLL);
  STACK[0x4C8] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (((v1 + 471184246) & 0xE3EA4E9D) - 3528)) | v1)))();
}

uint64_t sub_19699F854()
{
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 2167);
  *(v4 + 108) = 0;
  *(v4 + 116) = 0;
  *(v3 - 224) = (v1 - 1023112470) ^ (489239129 * ((((2 * (v3 - 224)) | 0x46D28AA8) - (v3 - 224) + 1553382060) ^ 0x1A416662));
  v5 = (*(v2 + 8 * (v1 + 4739)))(v3 - 224);
  return (*(v2 + 8 * ((*(v3 - 220) == ((v1 + 1426) ^ (v0 + 1) ^ (v1 + 2136102580) & 0x80ADAEDD)) | v1)))(v5);
}

uint64_t sub_19699F91C()
{
  v2 = STACK[0x970];
  STACK[0x430] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v2 == 0) * ((((97 * (v0 ^ 0x15B) - 826) | 0xC08) - 3263) ^ 0x166)) ^ (97 * (v0 ^ 0x15B)))))();
}

void fp_dh_a4afc954cdcf18082bb3d88dc18870ee(uint64_t a1)
{
  v1 = 654144011 * ((((2 * a1) | 0x138A8922) - a1 + 1983560559) ^ 0xA511390D);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_19699FA44()
{
  *(v2 - 224) = (v0 - 1144381231) ^ (654144011 * ((((v2 - 224) ^ 0x5FAD7731 | 0x721A705C) - ((v2 - 224) ^ 0x5FAD7731) + (((v2 - 224) ^ 0x5FAD7731) & 0x8DE58FA1)) ^ 0x1637AF1));
  *(v2 - 216) = 0;
  v3 = (*(v1 + 8 * (v0 ^ 0x11EE)))(v2 - 224);
  return (*(v1 + 8 * (((*(v2 - 208) == 1906281716) * ((2 * v0) ^ 0xDAB)) ^ v0)))(v3);
}

uint64_t sub_19699FB54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  *a5 = 0;
  *a6 = 0;
  a15 = 1575331711 * ((&a15 - 2135672926 - 2 * (&a15 & 0x80B437A2)) ^ 0xECEFA2A0) + 1655634431;
  v17 = (*(v16 + 54592))(&a15);
  return (*(v16 + 8 * ((612 * (a16 == 1906281716)) ^ 0xD9Fu)))(v17);
}

uint64_t sub_19699FBFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char *a20, unsigned int a21)
{
  a21 = v21 - 1825732043 * (((&a19 | 0xCD0B758E) - (&a19 & 0xCD0B758E)) ^ 0xCD9D26B9) - 2330;
  a20 = &a15;
  v24 = (*(v23 + 8 * (v21 ^ 0x14DE)))(&a19);
  return (*(v23 + 8 * ((6217 * (a19 == v21 + v22 + ((24 * (v21 ^ 0xEB2)) ^ 0xFFE434D2))) ^ v21)))(v24);
}

uint64_t sub_19699FCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v6 + 8);
  STACK[0x5D0] = v8;
  return (*(a6 + 8 * (((((v8 == 0) ^ v7) & 1) * (((v7 + 1178) | 0x2E2) - 1794)) ^ (v7 + 1681))))();
}

uint64_t sub_19699FD90@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v2 = *(STACK[0x588] + 24);
  STACK[0x628] = v2;
  return (*(a1 + 8 * ((v2 == 0) ^ a2)))();
}

uint64_t sub_19699FDC4()
{
  v5 = ((1922915867 - (v1 | 0x729D5E1B) + (v1 | 0x8D62A1E4)) ^ 0x344A82D2) * v3;
  *(v4 - 176) = v5 + 483267742;
  *(v4 - 192) = (v0 + 2441) ^ v5;
  *(v4 - 184) = 0;
  *(v4 - 200) = &STACK[0x418];
  *(v4 - 208) = &STACK[0x44C];
  v6 = (*(v2 + 8 * (v0 ^ 0x1F90u)))(v4 - 208);
  return (*(v2 + 8 * (((*(v4 - 172) != 26 * (v0 ^ 0x525) + 1906280910) * (((v0 - 785300947) & 0x2ECEBBBE) - 732)) ^ v0)))(v6);
}

uint64_t sub_19699FF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v18 = v5 - 1;
  v19 = __ROR8__((v4 + v18) & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = (v8 - v19) & v9 | (v19 + v15) & 0x3AEE81B944E09FB0;
  v21 = (v11 + 2687) ^ 0x888A2F91047AD30FLL ^ v20;
  v22 = v20 ^ v10;
  v23 = (__ROR8__(v21, 8) + v22) ^ a1;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = ((a2 | (2 * (v25 + v24))) - (v25 + v24) + 0x24D8912177D70596) ^ 0x82D0DE87C71DD9F3 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(((a2 | (2 * (v25 + v24))) - (v25 + v24) + 0x24D8912177D70596) ^ 0x82D0DE87C71DD9F3, 8) + v26) ^ 0xA6F455365512A6E1;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (((2 * (v29 + v28)) & 0xD2F19E5B011E36EELL) - (v29 + v28) - 0x6978CF2D808F1B78) ^ 0x7378066E86DAB11DLL;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = __ROR8__(v30, 8);
  v33 = v32 + v31 - ((2 * (v32 + v31)) & 0x2EAA180CCDADE282) - 0x68AAF3F999290EBFLL;
  v34 = __ROR8__((a4 + v18) & 0xFFFFFFFFFFFFFFF8, 8);
  v33 ^= 0xC67D2DBDAC7FC91DLL;
  v35 = ((v34 + v14) | 0x9AD5F752899AD369) - ((v34 + v14) | v6) + v6;
  v36 = v35 ^ 0xD33CB569E68C34BBLL;
  v35 ^= 0x7B7A50FE7F7A45E7uLL;
  v37 = v33 ^ __ROR8__(v31, 61);
  v38 = (__ROR8__(v36, 8) + v35) ^ v13;
  v39 = v38 ^ __ROR8__(v35, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v16;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v7;
  v43 = (__ROR8__(v33, 8) + v37) ^ 0xCDE7FE8E73F8F117;
  v44 = v42 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v42, 8) + v44) ^ 0x61459D2AF01F24F7;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v12;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  v50 = __ROR8__(v43, 8) + (v43 ^ __ROR8__(v37, 61));
  v51 = (v49 + v48 - ((2 * (v49 + v48)) & 0x3B0800F1971F3628) + 0x1D840078CB8F9B14) ^ 0x7AEEB9C89DC3417;
  *(a4 + v18) = ((v50 ^ 0xAC1351F25BD82AF2) >> (8 * ((v4 + v18) & 7))) ^ (((__ROR8__(v51, 8) + (v51 ^ __ROR8__(v48, 61))) ^ v17) >> (8 * ((a4 + v18) & 7))) ^ *(v4 + v18);
  return (*(a3 + 8 * ((82 * (v18 != 0)) ^ v11)))();
}

uint64_t fp_dh_6e0217914d918b1ca2e0ae5317190cb2(_DWORD *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = 489239129 * (((a1 | 0x71B7E873) - a1 + (a1 & 0x8E48178C)) ^ 0xC89FCB45);
  v3 = a1[13] ^ v2;
  v4 = a1[8] ^ v2;
  v9 = v3 + 1283153057 * ((-1311722940 - (&v9 | 0xB1D0B244) + (&v9 | 0x4E2F4DBB)) ^ 0x1F74E8C) - 1648366288;
  v5 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v3 ^ 0x67EB88C8)) - 4;
  result = (*&v5[8 * v3 - 0x33F5B7E48])(&v9);
  if (v4 <= 597849042)
  {
    switch(v4)
    {
      case 597849040:
        v7 = 0;
        break;
      case 597849041:
        v7 = 2;
        break;
      case 597849042:
        v7 = 1;
        break;
      default:
        goto LABEL_18;
    }

LABEL_17:
    v8 = *&v5[8 * ((((*&v5[8 * (v3 ^ 0x67EB903D)])((*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v3 ^ 0x67EB88A3)) + 6 * v7 + 4) - 763604091), 0x100004077774924) == 0) * (((v3 - 1743488431) | 0x1004) - 5328)) ^ (v3 - 1743483153))];
    __asm { BRAA            X8, X17 }
  }

  if (v4 > 597849045)
  {
    if (v4 == 597849046)
    {
      v7 = 4;
    }

    else
    {
      if (v4 != 883061717)
      {
        goto LABEL_18;
      }

      v7 = 6;
    }

    goto LABEL_17;
  }

  if (v4 == 597849043)
  {
    v7 = 3;
    goto LABEL_17;
  }

  if (v4 == 597849045)
  {
    v7 = 5;
    goto LABEL_17;
  }

LABEL_18:
  a1[12] = 1906239664;
  return result;
}

uint64_t sub_1969A055C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, char *a14, char *a15, unsigned int a16, int a17, uint64_t a18)
{
  v21 = 1283153057 * (((&a14 | 0x81CBEF5) + (~&a14 | 0xF7E3410A)) ^ 0x47C4BDC3);
  a18 = v18;
  a16 = 1315196658 - v21;
  a17 = v21 + v20 - 2700;
  a14 = &a11;
  a15 = &a13;
  v22 = (*(v19 + 8 * (v20 + 3048)))(&a14);
  return (*(v19 + 8 * ((6494 * (*(v18 + 24) == ((5 * (v20 ^ 0xC38) + 1906276726) ^ (v20 - 2814)))) ^ v20)))(v22);
}

void sub_1969A0614()
{
  v1 = 13 * (*(v0 - 176) ^ 0x1773);
  v2 = *(v0 - 184);
  *(v0 - 152) = *(v0 - 180) ^ 0xB4AE3017;
  *(v0 - 148) = v2 ^ v1 ^ 0xFAC956D9;
  v3 = *(v0 - 192);
  *(v0 - 144) = *(v0 - 188) ^ 0x279A31A7;
  *(v0 - 140) = v3 ^ 0x6A738874;
  JUMPOUT(0x1968FC1ECLL);
}

uint64_t sub_1969A06D0@<X0>(unint64_t a1@<X8>)
{
  v6 = LOWORD(STACK[0x996]);
  if (v6 == 26075)
  {
    v7 = STACK[0x818];
    STACK[0x690] = a1;
    LODWORD(STACK[0x92C]) = v1;
    STACK[0x6D0] = v7 + v2;
    v3 = 1906281716;
  }

  else if (v6 == 45445 || v6 == 41591)
  {
    STACK[0x690] = a1;
    LODWORD(STACK[0x92C]) = v1;
    v3 = 1906239355;
  }

  if (v3 == 1906239664)
  {
    return (*(v4 + 8 * (((*(STACK[0x580] + 97) == 67) * (((v5 - 3608) | 0x360) ^ 0x1DE)) ^ (v5 - 2297))))();
  }

  if (v3 != 1906281716)
  {
    JUMPOUT(0x1969A09F0);
  }

  v8 = STACK[0x580];
  v9 = *(STACK[0x580] + 20);
  if (v9 == 1)
  {
    LODWORD(STACK[0x3F0]) = (8 * v5) ^ 0x66D0;
    LODWORD(STACK[0x400]) = v5 - 2626;
    v13 = *v8;
    v14 = STACK[0x248];
    STACK[0x5A0] = *(STACK[0x248] + 8 * (v5 - 3296));
    return (*(v14 + 8 * (((v13 == 0) * (((1261 * (v5 ^ 0xE1E) - 1986) ^ 0xFFFFF7DD) + ((1261 * (v5 ^ 0xE1E) - 1986) | 0xC04))) ^ (1261 * (v5 ^ 0xE1E) + 1005))))();
  }

  else
  {
    v10 = 1906239667;
    if (!v9)
    {
      if (*(v8 + 97) == 67)
      {
        v10 = 1906239514;
      }

      else
      {
        v10 = 1906239667;
      }
    }

    LODWORD(STACK[0x824]) = v10;
    v12 = STACK[0x248];
    STACK[0x5C0] = STACK[0x580];
    STACK[0x740] = *(v12 + 8 * (v5 - 3600));
    STACK[0x590] = &STACK[0x5C0];
    v15 = STACK[0x5C0];
    STACK[0x880] = STACK[0x5C0];
    return (*(v12 + 8 * (((v15 == 0) * (((v5 + 495) | 0x854) ^ 0x1896 ^ ((((v5 + 495) | 0x854) - 3651) | 0x400) ^ 0xEE0)) ^ ((v5 + 495) | 0x854))))();
  }
}

uint64_t sub_1969A0884@<X0>(unint64_t a1@<X8>)
{
  v4 = LOWORD(STACK[0x9BE]);
  if (v4 != 26075)
  {
    if (v4 == 45445 || v4 == 41591)
    {
      STACK[0x498] = a1;
      JUMPOUT(0x1969A0830);
    }

    JUMPOUT(0x1969A0834);
  }

  v5 = STACK[0x4F0];
  STACK[0x498] = a1;
  STACK[0x5B0] = v5 + v2;
  return (*(STACK[0x248] + 8 * ((((v3 + 1294262722) & 0xB2DB15FD ^ 0x717) * (v1 == -1720256261)) ^ (v3 + 1671))))();
}

uint64_t sub_1969A0A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *v7;
  STACK[0x7B8] = 0;
  STACK[0x7F8] = 0;
  return (*(a6 + 8 * ((((((v6 + 1546175211) & 0xA3D73E5F) - 5388) ^ 0x154) * (v8 == 0)) ^ v6)))();
}

uint64_t fp_dh_ef826c7230a7370dea279509832e7cd4(uint64_t a1)
{
  v1 = (*a1 - 489239129 * ((-2 - ((a1 | 0xD0B2FFEB) + (~a1 | 0x2F4D0014))) ^ 0x96652322)) ^ 0xE15;
  v2 = v1 + *(*(a1 + 8) + 4);
  v4 = v2 - 676342670;
  v3 = v2 - 676342670 < 0;
  v5 = 676342670 - v2;
  if (!v3)
  {
    v5 = v4;
  }

  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 2106) + 8 * ((405 * (v5 <= ((v1 - 1547) ^ ((v1 + 114) | 3) ^ 0xF80))) ^ v1) - 4))();
}

void sub_1969A0CB0(int a1@<W8>)
{
  if (a1 > 364443024)
  {
    if (a1 == 364443025)
    {
      v7 = (v8 | (v1 << 8)) != ((v8 | (v1 << 8)) & 0x66CF ^ v8 & 4) << ((v5 + 61) ^ 0xFE);
      __asm { BRAA            X10, X17 }
    }

    v6 = -2669;
  }

  else
  {
    if (a1 == 364443022)
    {
      goto LABEL_7;
    }

    v6 = -2672;
  }

  if (a1 == (v6 | 0x15B80000))
  {
LABEL_7:
    __asm { BRAA            X8, X17 }
  }

  *(v3 + 24) = (((v2 ^ 0x28289671) + 1957632565) ^ ((v2 ^ 0xD870AF4B) - 2064178417) ^ ((v2 ^ 0x1F6B13C0) + 1139580806)) - 1108679116;
}

uint64_t sub_1969A0EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v7 - 1) = v10;
  *v7 = v10;
  return (*(v9 + 8 * (((v6 == 0) * a6) ^ v8)))();
}

uint64_t sub_1969A12B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, char *a14, unsigned int a15)
{
  a14 = &a10;
  a15 = 1498 - 1825732043 * ((2 * (&a13 & 0x3B7A0A08) - &a13 - 997853707) ^ 0xC413A6C2);
  v18 = (*(v16 + 53584))(&a13);
  return (*(v16 + 8 * ((5502 * (a13 == v15)) ^ v17)))(v18);
}

uint64_t sub_1969A1354@<X0>(uint64_t a1@<X8>)
{
  v5 = (((v2 - 3853) | 0xC20u) ^ 0xFFFFFFFFFFFFF1D7) + v1;
  *(a1 + v5) = *(v4 + v5);
  return (*(v3 + 8 * ((1601 * (v5 == 0)) ^ v2)))();
}

void sub_1969A1394()
{
  STACK[0x19D8] = 0xAFCC11CD4CDFF4D3;
  STACK[0x19D0] = 0xA005C2CA39410838;
  JUMPOUT(0x1968BB580);
}

void hZZRqgZwI(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969A15D0()
{
  v3 = (v1 + 554) | 1;
  v4 = *(v2 + 8 * (v1 + 5729));
  v5 = v0;
  v6 = v4();
  LODWORD(STACK[0xB24]) = v5;
  STACK[0x958] = (v3 - 1483) + STACK[0x958] - 96;
  return (*(v2 + 8 * (((v3 ^ 0x1509) * (v5 == 1906281716)) ^ v3)))(v6);
}

uint64_t fp_dh_b40e40725eb9262eaa8af935664653cd(uint64_t result)
{
  v1 = (*(result + 8) - 119 * ((2 * (result & 0x6D) - result + 18) ^ 0xFE));
  if (v1 == 119 || v1 == 116)
  {
    v3 = 1906281716;
  }

  else
  {
    v3 = 1906238819;
  }

  *(result + 4) = v3;
  return result;
}

void fp_dh_3195c1e905d8e67be4820d5ed7295b92(uint64_t a1)
{
  v1 = *(a1 + 36) - 1790939281 * (((a1 | 0xF019699) - (a1 & 0xF019699)) ^ 0xF7DDB6D8);
  __asm { BRAA            X8, X17 }
}

void sub_1969A1954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x250]) = 0;
  LODWORD(STACK[0x244]) = 0;
  LODWORD(STACK[0x238]) = a63 ^ 0x88888888;
  LODWORD(STACK[0x240]) = (v65 - 2004319135) ^ a62;
  LODWORD(STACK[0x248]) = a65 ^ 0x88888888;
  LODWORD(STACK[0x260]) = a61;
  LODWORD(STACK[0x254]) = a58;
  LODWORD(STACK[0x234]) = 1920699167;
  LODWORD(STACK[0x258]) = a59;
  LODWORD(STACK[0x25C]) = a60;
  LODWORD(STACK[0x23C]) = a64;
  JUMPOUT(0x1969911D8);
}

uint64_t sub_1969A19D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x784]) = a69;
  STACK[0x570] = v70;
  STACK[0x740] = *(v71 + 8 * (v69 - 3597));
  STACK[0x590] = &STACK[0x570];
  v72 = STACK[0x570];
  STACK[0x880] = STACK[0x570];
  return (*(v71 + 8 * (((v72 == 0) * ((v69 + 2627) ^ 0x1896 ^ ((v69 - 1024) | 0x400) ^ 0xEE0)) ^ (v69 + 2627))))();
}

uint64_t sub_1969A19EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(STACK[0x390] + 24);
  STACK[0x4C0] = v7;
  return (*(a6 + 8 * (((v7 == 0) * (((v6 - 1403877176) & 0x53AD7E7F ^ 0xFFFFE4F9) + ((v6 + 265584297) & 0xF02B7FD9))) ^ v6)))();
}

uint64_t sub_1969A1AAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  STACK[0x530] = 0;
  v9 = STACK[0x644];
  STACK[0x3C0] = 0;
  STACK[0x568] -= 32;
  return (*(a6 + 8 * ((4257 * (v9 == ((953 * (a8 ^ 0x165E)) ^ (v8 - 1301)))) ^ (a8 - 3611))))();
}

uint64_t sub_1969A1BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v14 = a5 - 2100;
  v15 = a11 + ((a5 - 2100) ^ (v12 + 747));
  v16 = -83 * ((a5 - 52) ^ 2);
  v17 = v15 + v13 + 2048668558;
  v18 = v15 > ((307 * (v14 ^ 0x31C)) ^ 0x586012C7u);
  if (v18 == v17 < 0xA79FE009)
  {
    LOBYTE(v18) = v15 - 1482694647 > v17;
  }

  return (*(v11 + 8 * (((16 * ((v16 ^ v18) & 1)) & 0xBF | (((v16 ^ v18) & 1) << 6)) ^ v14)))();
}

uint64_t sub_1969A1C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9)
{
  v15 = 1825732043 * ((v14 - 136) ^ 0x965337);
  *v10 = v13;
  *(v14 - 116) = 1765068451 - v15;
  *(v14 - 124) = (a9 + 1370) ^ v15;
  *(v14 - 120) = v15 ^ 0x5663F206;
  v16 = (*(v12 + 8 * (a9 ^ 0x184Du)))(v14 - 136);
  return (*(v12 + 8 * (((*(v14 - 128) == v9) * ((a9 + 1469348883) ^ (v11 + 529))) ^ a9)))(v16);
}

void sub_1969A1D34(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = (((v8 ^ 0x9F4E9D29) + 1622237911) ^ ((v8 ^ 0x1502BD4E) - 352501070) ^ ((a1 ^ 0x9F4DFE9) + (v8 ^ 0xF60B270C))) + 1250514671 + (((*(a8 + 88) ^ 0x6BE0803F) - 1809875007) ^ ((*(a8 + 88) ^ 0x24294CDB) - 606686427) ^ ((*(a8 + 88) ^ 0x338ECB8F) - 864996239));
  v10 = (v9 ^ 0xF3027D6) & (2 * (v9 & 0xAE04B7E7)) ^ v9 & 0xAE04B7E7;
  v11 = ((2 * (v9 ^ 0xF304290)) ^ 0x4269EAEE) & (v9 ^ 0xF304290) ^ (2 * (v9 ^ 0xF304290)) & 0xA134F576;
  v12 = v11 ^ 0xA1141511;
  v13 = (v11 ^ 0x20E024) & (4 * v10) ^ v10;
  v14 = ((4 * v12) ^ 0x84D3D5DC) & v12 ^ (4 * v12) & 0xA134F574;
  v15 = (v14 ^ 0x8010D550) & (16 * v13) ^ v13;
  v16 = ((16 * (v14 ^ 0x21242023)) ^ 0x134F5770) & (v14 ^ 0x21242023) ^ (16 * (v14 ^ 0x21242023)) & 0xA134F570;
  v17 = v15 ^ 0xA134F577 ^ (v16 ^ 0x1045500) & (v15 << 8);
  *(a8 + 88) = v9 ^ (2 * ((v17 << 16) & 0x21340000 ^ v17 ^ ((v17 << 16) ^ 0x75770000) & (((v16 ^ 0xA030A007) << 8) & 0x21340000 ^ (((v16 ^ 0xA030A007) << 8) ^ 0x34F50000) & (v16 ^ 0xA030A007) ^ 0x1000000))) ^ 0xD2425A62;
  JUMPOUT(0x1969A1F34);
}

uint64_t sub_1969A271C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16)
{
  LODWORD(a14) = v16 - ((1591523750 - (&a14 | 0x5EDCB9A6) + (&a14 | 0xA1234659)) ^ 0xCD78D35B) * v18 - 214;
  a15 = a10;
  a16 = &a12;
  (*(v17 + 8 * (v16 + 4375)))(&a14);
  a14 = a10;
  HIDWORD(a15) = v16 - 489239129 * ((&a14 - 551514713 - 2 * (&a14 & 0xDF208DA7)) ^ 0x6608AE91) - 1550;
  v20 = (*(v17 + 8 * (v16 ^ 0x1327u)))(&a14);
  return (*(v17 + 8 * (((a15 == v19) * (v16 - 1135)) ^ v16)))(v20);
}

uint64_t sub_1969A2804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v65 = *(v28 + 8 * (v23 - 3));
  v61 = *(a4 + 80);
  v60 = *(a4 + 84);
  v62 = (*(a4 + 96) - ((2 * *(a4 + 96)) & 0x56) - 81);
  if (v62 == 173)
  {
    return sub_1969CE9E4((v27 + 141496098) ^ 0xB5u, 506760871);
  }

  if (v62 == 174)
  {
    v63 = (a4 + v25 + 506760871);
    v64 = *v63 ^ v26;
    LODWORD(v63) = (((v27 + 99) ^ 0x76 ^ v63[2]) << 16) | ((v63[3] ^ v26) << 24) | v64 | ((v63[1] ^ v26) << 8);
    *v29 = v63 + v24 - 2 * (v63 & (v24 + 16) ^ v64 & 0x10);
    return (*(v28 + 8 * ((4891 * ((v25 + 506760875) < 0x40)) ^ (v27 + 1535))))(4891, 2019625056, 506760871, 4294967057, 3412474604, 1214253153, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
  }

  else
  {
    v30 = (((*(a4 + 72) ^ 0xADB9AFC0) + 1380339776) ^ ((*(a4 + 72) ^ 0xA2E02A88) + 1562367352) ^ ((*(a4 + 72) ^ 0x731E8223) - 1931379235)) + (((*(a4 + 72) ^ 0x7C2C694F) - 2083285327) ^ ((*(a4 + 72) ^ 0x89D36A59) + 1982633383) ^ ((*(a4 + 72) ^ 0x89B8047D) + 1984428931)) - 1781955;
    v31 = (v30 ^ 0xF489BF90) & (2 * (v30 & 0xF8A93F99)) ^ v30 & 0xF8A93F99;
    v32 = ((2 * (v30 ^ 0x149BA182)) ^ 0xD8653C36) & (v30 ^ 0x149BA182) ^ (2 * (v30 ^ 0x149BA182)) & 0xEC329E1A;
    v33 = v32 ^ 0x24128209;
    v34 = (v32 ^ 0xC0201C00) & (4 * v31) ^ v31;
    v35 = ((4 * v33) ^ 0xB0CA786C) & v33 ^ (4 * v33) & 0xEC329E18;
    v36 = (v35 ^ 0xA0021800) & (16 * v34) ^ v34;
    v37 = ((16 * (v35 ^ 0x4C308613)) ^ 0xC329E1B0) & (v35 ^ 0x4C308613) ^ (16 * (v35 ^ 0x4C308613)) & 0xEC329E10;
    v38 = v36 ^ 0xEC329E1B ^ (v37 ^ 0xC0208000) & (v36 << 8);
    v39 = v30 ^ (2 * ((v38 << 16) & 0x6C320000 ^ v38 ^ ((v38 << 16) ^ 0x1E1B0000) & (((v37 ^ 0x2C121E0B) << 8) & 0x6C320000 ^ 0x4C200000 ^ (((v37 ^ 0x2C121E0B) << 8) ^ 0x329E0000) & (v37 ^ 0x2C121E0B))));
    v40 = (((*(a4 + 76) ^ 0xBB6E2F81) + 1150406783) ^ ((*(a4 + 76) ^ 0x98836981) + 1736218239) ^ ((*(a4 + 76) ^ 0x5FAA416B) - 1604993387)) + (((*(a4 + 76) ^ 0x23810DCD) - 595660237) ^ ((*(a4 + 76) ^ 0xEF6EAE3B) + 277959109) ^ ((*(a4 + 76) ^ 0xB0A8A49D) + 1331125091)) + 401383994;
    v41 = (v40 ^ 0xFE956CDB) & (2 * (v40 & 0xE0A16C9C)) ^ v40 & 0xE0A16C9C;
    v42 = ((2 * (v40 ^ 0x7E9775E3)) ^ 0x3C6C32FE) & (v40 ^ 0x7E9775E3) ^ (2 * (v40 ^ 0x7E9775E3)) & 0x9E36197E;
    v43 = v42 ^ 0x82120901;
    v44 = (v42 ^ 0x4041070) & (4 * v41) ^ v41;
    v45 = ((4 * v43) ^ 0x78D865FC) & v43 ^ (4 * v43) & 0x9E36197C;
    v46 = (v45 ^ 0x18100160) & (16 * v44) ^ v44;
    v47 = ((16 * (v45 ^ 0x86261803)) ^ 0xE36197F0) & (v45 ^ 0x86261803) ^ (16 * (v45 ^ 0x86261803)) & 0x9E361970;
    v48 = v46 ^ 0x9E36197F ^ (v47 ^ 0x82201100) & (v46 << 8);
    *(a4 + 72) = v39 ^ 0x44AF04C4;
    *(a4 + 76) = v40 ^ (2 * ((v48 << 16) & 0x1E360000 ^ v48 ^ ((v48 << 16) ^ 0x197F0000) & (((v47 ^ 0x1C16080F) << 8) & 0x1E360000 ^ 0x8260000 ^ (((v47 ^ 0x1C16080F) << 8) ^ 0x36190000) & (v47 ^ 0x1C16080F)))) ^ 0x90E65909;
    v49 = (((v61 ^ 0xFDDA573A) + 36022470) ^ ((v61 ^ 0xE1797A50) + 512132528) ^ ((v61 ^ 0x60E42A01) - 1625565697)) + (((*(a4 + 80) ^ 0xB41245CE) + 1273870898) ^ ((*(a4 + 80) ^ 0x99245CE1) + 1725670175) ^ ((*(a4 + 80) ^ 0x51711E44) - 1366367812)) + 1920680965;
    v50 = (v49 ^ 0xA4428085) & (2 * (v49 & 0x8612CAD1)) ^ v49 & 0x8612CAD1;
    v51 = ((2 * (v49 ^ 0xA0478025)) ^ 0x4CAA95E8) & (v49 ^ 0xA0478025) ^ (2 * (v49 ^ 0xA0478025)) & 0x26554AF4;
    v52 = v51 ^ 0x22554A14;
    v53 = (v51 ^ 0xC0) & (4 * v50) ^ v50;
    v54 = ((4 * v52) ^ 0x99552BD0) & v52 ^ (4 * v52) & 0x26554AF4;
    v55 = (v54 ^ 0x550AD0) & (16 * v53) ^ v53;
    v56 = ((16 * (v54 ^ 0x26004024)) ^ 0x6554AF40) & (v54 ^ 0x26004024) ^ (16 * (v54 ^ 0x26004024)) & 0x26554AF0;
    v57 = v55 ^ 0x26554AF4 ^ (v56 ^ 0x24540A00) & (v55 << 8);
    v58 = (((v60 ^ 0xF0C9CD28) + 255210200) ^ ((v60 ^ 0x8B75BDEB) + 1955217941) ^ ((v60 ^ 0x7FB77A8) - 133920680)) + (((*(a4 + 84) ^ 0xE702D03C) + 419246020) ^ ((*(a4 + 84) ^ 0xA2362FF8) + 1573507080) ^ ((*(a4 + 84) ^ 0x3973F8AF) - 963901615)) + 482918553;
    *(a4 + 80) = v49 ^ (2 * ((v57 << 16) & 0x26550000 ^ v57 ^ ((v57 << 16) ^ 0x4AF40000) & (((v56 ^ 0x20140B4) << 8) & 0x26550000 ^ 0x22150000 ^ (((v56 ^ 0x20140B4) << 8) ^ 0x554A0000) & (v56 ^ 0x20140B4)))) ^ 0xB2575852;
    *(a4 + 84) = v58 ^ ((v58 ^ 0xD226D2BE) + 165911683) ^ ((v58 ^ 0x3A43158B) - 511288392) ^ ((v58 ^ 0xB3A0A90A) + 1751508791) ^ ((v58 ^ 0x7FFFDFFC) - 1539665471) ^ 0x587DB6A8;
    return v65(506855424, 1815216128, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
  }
}

uint64_t sub_1969A280C@<X0>(uint64_t a1@<X8>)
{
  v6 = (v3 - 131450507) & 0x7D5C677;
  v7 = (((v6 - 200) - 924) ^ v2) + v1;
  *(v4 - 7 + v7) = *(a1 - 7 + v7);
  return (*(v5 + 8 * ((21 * (((v6 - 1131) & v1) - 8 != v2)) ^ v6)))();
}

uint64_t sub_1969A2A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58, unsigned int a59, uint64_t a60, uint64_t a61, char a62)
{
  *(v65 - 152) = v62 + 1283153057 * (((v65 - 168) & 0x7BF3E942 | ~((v65 - 168) | 0x7BF3E942)) ^ 0xCBD4158A) + 1903;
  *(v65 - 144) = v63 + a59;
  *(v65 - 128) = &a62;
  *(v65 - 168) = &STACK[0x2DC];
  *(v65 - 160) = a53;
  (*(v64 + 8 * (v62 ^ 0x1D35)))(v65 - 168);
  return (*(v64 + 8 * ((2893 * (*(v65 - 136) == ((v62 - 1875773403) | 0x60491860) - 2128317300)) ^ v62)))();
}

uint64_t sub_1969A2B24()
{
  v4 = *(v0 + 40 * v1 + 28);
  switch(v4)
  {
    case 1:
      v7 = STACK[0x658];
      STACK[0x660] = *(v2 + 8 * (v3 - 3432));
      return (*(v2 + 8 * (((v7 != 0) * (((v3 - 686835453) & 0x28F03EEE ^ 0x6B0) - 119)) ^ (v3 - 686835453) & 0x28F03EEE)))();
    case 3:
      v6 = *(v0 + 40 * v1 + 16);
      return (*(v2 + 8 * ((v3 + 652) ^ (2 * ((((((v3 - 3577) | 0x79Cu) - 1606) ^ 0xFFF7F307EADFFE9ALL) & (2 * v6)) + (v6 ^ 0x7FFBF983F56FFFF1) != 0x7FFBF983F56FFFF1)))))();
    case 2:
      return (*(v2 + 8 * (((STACK[0x658] == 0) * (v3 ^ 0xE0C)) ^ (v3 + 2250))))();
    default:
      return (STACK[0x7A8])();
  }
}

uint64_t sub_1969A2CB0@<X0>(int a1@<W8>)
{
  STACK[0x628] = v1;
  LODWORD(STACK[0x5CC]) = STACK[0x5C8];
  return (*(v2 + 8 * (((STACK[0x938] == 0) * ((a1 + 1226344245) & 0xB6E77EBC ^ 0xF20 ^ ((a1 - 2005) | 0x100))) ^ a1)))();
}

uint64_t sub_1969A2D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = v7 | 0x1040;
  LODWORD(STACK[0x7F4]) = v6 - v8 + 26;
  v10 = (*(a6 + 8 * ((v7 | 0x1040) ^ 0xAF1)))();
  v11 = STACK[0x370];
  STACK[0x408] = v10;
  return (*(v11 + 8 * (((((v9 + 1) ^ (v10 == 0)) & 1) * ((v9 ^ 0x1404) - 949)) ^ v9)))();
}

uint64_t sub_1969A2D9C()
{
  STACK[0x63C] = 0x3EF091B5A6B1843BLL;
  STACK[0x634] = 0x14FEFD934070CA28;
  STACK[0x62C] = 0x9F7551E6CE5252BDLL;
  STACK[0x6B8] = 0x4CC089407A99689;
  STACK[0x6B0] = 0x92BD272BEBD593C5;
  v2 = ((v0 + 576) ^ 0x1D6C) - 2009212831 * (LODWORD(STACK[0x2B4]) ^ 0xDFDBE097) - 75031379;
  STACK[0x6C0] = 0x9C92BEE5A585895;
  STACK[0x6C8] = 0xEF074F6F56CA4DFDLL;
  v3 = -2009212831 * (LODWORD(STACK[0x2B0]) ^ 0xDFDBE097) - 75026750;
  LODWORD(STACK[0x5C8]) = v2;
  LODWORD(STACK[0x5CC]) = v3;
  v4 = -2009212831 * (((2 * LODWORD(STACK[0x2DC])) & 0xC6487C04 ^ 0x481400) + (LODWORD(STACK[0x2DC]) ^ 0xE319B532));
  LODWORD(STACK[0x5E8]) = -2009212831 * (LODWORD(STACK[0x2CC]) ^ 0x803D8B30) - 75026750;
  LODWORD(STACK[0x5EC]) = v4;
  v5 = -2009212831 * (LODWORD(STACK[0x2D4]) ^ 0x84E96D69) - 75026750;
  LODWORD(STACK[0x5A8]) = -2009212831 * (LODWORD(STACK[0x2D0]) ^ 0x84E96D69) - 75026750;
  LODWORD(STACK[0x5AC]) = v5;
  v6 = -2009212831 * (LODWORD(STACK[0x298]) ^ 0x5B48DCD2) - 75026750;
  LODWORD(STACK[0x608]) = -2009212831 * (LODWORD(STACK[0x2B8]) ^ 0x5B48DCD2) - 75026750;
  LODWORD(STACK[0x60C]) = v6;
  v7 = -2009212831 * (LODWORD(STACK[0x29C]) ^ 0x5B48DCD2) - 75026750;
  LODWORD(STACK[0x614]) = -2009212831 * (LODWORD(STACK[0x2C4]) ^ 0x5B48DCD2) - 75026750;
  LODWORD(STACK[0x610]) = v7;
  v8 = -2009212831 * (LODWORD(STACK[0x304]) ^ 0x84E96D69) - 75026750;
  LODWORD(STACK[0x5B0]) = -2009212831 * (((2 * LODWORD(STACK[0x2A4])) & 0xC6487C04 ^ 0x405800) + (LODWORD(STACK[0x2A4]) ^ 0xE7CD536B));
  LODWORD(STACK[0x5B4]) = v8;
  v9 = -2009212831 * (LODWORD(STACK[0x2E0]) ^ 0xDFDBE097) - 75026750;
  LODWORD(STACK[0x5D0]) = -2009212831 * (LODWORD(STACK[0x2D8]) ^ 0xDFDBE097) - 75026750;
  LODWORD(STACK[0x5D4]) = v9;
  v10 = -2009212831 * (LODWORD(STACK[0x2AC]) ^ 0x803D8B30) - 75026750;
  LODWORD(STACK[0x5F0]) = -2009212831 * (LODWORD(STACK[0x308]) ^ 0x803D8B30) - 75026750;
  LODWORD(STACK[0x5F4]) = v10;
  v11 = -2009212831 * (LODWORD(STACK[0x2E4]) ^ 0xDFDBE097) - 75026750;
  LODWORD(STACK[0x5D8]) = -2009212831 * (LODWORD(STACK[0x2C8]) ^ 0xDFDBE097) - 75026750;
  LODWORD(STACK[0x5DC]) = v11;
  v12 = -2009212831 * (LODWORD(STACK[0x310]) ^ 0x84E96D69) - 75026750;
  LODWORD(STACK[0x5B8]) = -2009212831 * (LODWORD(STACK[0x30C]) ^ 0x84E96D69) - 75026750;
  v13 = LODWORD(STACK[0x2A0]) ^ 0x5B48DCD2;
  v14 = LODWORD(STACK[0x2E8]) ^ 0x5B48DCD2;
  v15 = LODWORD(STACK[0x320]) ^ 0x84E96D69;
  LODWORD(STACK[0x5BC]) = v12;
  v16 = -2009212831 * v15;
  v17 = -2009212831 * v15 - 75026750;
  LODWORD(STACK[0x618]) = -2009212831 * v13 - 75026750;
  LODWORD(STACK[0x61C]) = -2009212831 * v14 - 75026750;
  v18 = -2009212831 * (LODWORD(STACK[0x318]) ^ 0x803D8B30) - 75026750;
  LODWORD(STACK[0x5F8]) = -2009212831 * (LODWORD(STACK[0x330]) ^ 0x803D8B30) - 75026750;
  LODWORD(STACK[0x5FC]) = v18;
  v19 = LODWORD(STACK[0x324]) ^ 0x803D8B30;
  v20 = ((v17 & 0x803D8B30) + ((75026749 - v16) & 0x803D8B30)) ^ LODWORD(STACK[0x338]);
  v21 = LODWORD(STACK[0x334]) ^ 0x84E96D69;
  v22 = -2009212831 * (LODWORD(STACK[0x2F0]) ^ 0x5B48DCD2) - 75026750;
  LODWORD(STACK[0x620]) = -2009212831 * (LODWORD(STACK[0x300]) ^ 0x5B48DCD2) - 75026750;
  v23 = LODWORD(STACK[0x2EC]) ^ 0xDFDBE097;
  v24 = LODWORD(STACK[0x2A8]) ^ 0xDFDBE097;
  LODWORD(STACK[0x6A8]) = 383329099;
  LODWORD(STACK[0x5C0]) = v17;
  LODWORD(STACK[0x5C4]) = -2009212831 * v21 - 75026750;
  LODWORD(STACK[0x6AC]) = 257011705;
  LODWORD(STACK[0x600]) = -2009212831 * v20 - 75026750;
  LODWORD(STACK[0x604]) = -2009212831 * v19 - 75026750;
  v24 *= -2009212831;
  LODWORD(STACK[0x5E0]) = -2009212831 * v23 - 75026750;
  LODWORD(STACK[0x5E4]) = v24 - 75026750;
  LODWORD(STACK[0x624]) = v22;
  STACK[0x680] = 0x96E97F4E0E5ED553;
  STACK[0x668] = 0xB31E18C74A8CD21ALL;
  STACK[0x670] = 0x3335D09AD8880B48;
  LODWORD(STACK[0x678]) = 171452789;
  LODWORD(STACK[0x67C]) = 118556489;
  STACK[0x690] = 0x876719C17540D3A9;
  LODWORD(STACK[0x68C]) = 1975774152;
  LODWORD(STACK[0x688]) = 504652092;
  LODWORD(STACK[0x650]) = 1010317895;
  LODWORD(STACK[0x654]) = 752711107;
  LODWORD(STACK[0x648]) = -767829222;
  v25 = *(STACK[0x328] + 8);
  LODWORD(STACK[0x64C]) = 290476794;
  LODWORD(STACK[0x658]) = ((75026749 - v24) & 0xC5A6E05) + ((v24 - 75026750) & 0xC5A6E05);
  LODWORD(STACK[0x65C]) = 972532772;
  LODWORD(STACK[0x6A4]) = -968200765;
  LODWORD(STACK[0x6A0]) = 214314725;
  LODWORD(STACK[0x628]) = -462022084;
  LODWORD(STACK[0x644]) = -1576322188;
  LODWORD(STACK[0x698]) = -215356189;
  LODWORD(STACK[0x69C]) = -1192694114;
  LODWORD(STACK[0x664]) = -1586626111;
  LODWORD(STACK[0x660]) = -1012147197;
  return (*(v1 + 8 * ((115 * (*v25 == 0)) ^ v0)))();
}

void h5eRUOOOhxuaBmELCqQZZEcx()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_a482864f755e13eece0a3091a52d5825) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_a482864f755e13eece0a3091a52d5825) ^ 0x55))] ^ 0xE1]) + 32);
  v1 = *(v0 - 4);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0CB90 + (*(off_1F0B0C400 + (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + v1) ^ 0x55))) ^ 0xCu)) ^ (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + v1) ^ 0x55))) + 349);
  v3 = (*(v2 - 4) - v1) ^ &v5;
  *(v0 - 4) = 810526117 * v3 + 0x528FD8C35B4E87C9;
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v6[0] = 1575331711 * ((-2030128486 - (v6 | 0x86FEB29A) + (v6 | 0x79014D65)) ^ 0x155AD867) + 1655634431;
  LOBYTE(v2) = -91 * ((*(v2 - 4) + *(v0 - 4)) ^ 0x55);
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_a482864f755e13eece0a3091a52d5825) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_a482864f755e13eece0a3091a52d5825) ^ 0x55))] ^ 0x1D]) + 418) - 4;
  (*&v4[8 * (*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + v2) ^ 0xDCu) - 8) ^ v2) + 53856])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969A3A0C@<X0>(uint64_t a1@<X5>, int a2@<W7>, unint64_t *a3@<X8>)
{
  v3 = *a3;
  STACK[0x718] = *a3;
  return (*(a1 + 8 * (((v3 == 0) * (((a2 - 263158450) & 0xFAF77F5) - 4686 + 102 * ((a2 - 263158450) & 0xFAF77F5 ^ 0x138A) - 4698)) ^ (a2 - 263158450) & 0xFAF77F5)))();
}

uint64_t sub_1969A3B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, __n128 a6@<Q1>, int8x16_t a7@<Q4>, uint64_t a8@<D5>, int8x16_t a9@<Q6>, int8x16_t a10@<Q7>)
{
  v19 = a1 + 16;
  v20 = (v19 ^ a4 ^ a2) + v16;
  v21 = v20 & 0xF;
  v22 = v12;
  v23.i64[0] = vqtbl4q_s8(*(&a6 - 1), a7).u64[0];
  v23.i64[1] = a8;
  v24 = vrev64q_s8(veorq_s8(veorq_s8(*(a5 + v20), *(v15 + v21 - 15)), veorq_s8(*(v13 + v21 + 1 - 15), *(v14 + v21 + 1 - 15))));
  v25 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v24, v24, 8uLL), a10), vmulq_s8(v23, a9)));
  *(a5 + v20) = vextq_s8(v25, v25, 8uLL);
  return (*(v18 + 8 * (v17 ^ (2 * (a3 == v19)))))();
}

uint64_t sub_1969A3B10(uint64_t a1)
{
  v5 = *(v4 + 56);
  *(v4 + 56) = ((v1 + 1906233555) ^ (v2 + 2)) + v5;
  return (*(v3 + 8 * ((6055 * ((v5 - 1135080785) < 0xFFFFFFFA)) ^ (v1 - 5740))))(a1, 0);
}

uint64_t sub_1969A3BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v20 - 176) = *v19;
  *(v20 - 175) = v19[1];
  *(v20 - 174) = v19[2];
  *(v20 - 173) = v19[3];
  *(v20 - 172) = v19[4];
  *(v20 - 171) = v19[5];
  *(v20 - 170) = v19[6];
  *(v20 - 169) = v19[7];
  *(v20 - 168) = v19[8];
  *(v20 - 167) = v19[9];
  *(v20 - 166) = v19[10];
  *(v20 - 165) = v19[11];
  *(v20 - 164) = v19[12];
  *(v20 - 163) = v19[13];
  *(v20 - 162) = v19[14];
  *(v20 - 161) = v19[15];
  if (a18)
  {
    v21 = v20 == 176;
  }

  else
  {
    v21 = 1;
  }

  v23 = v21 || *(a1 + 16) == 0;
  return (*(a2 + 8 * ((203 * ((v23 ^ ((v18 ^ 0x62) - 20)) & 1)) ^ v18 ^ 0x1462)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t fp_dh_47ad5cf20aca4256dd23c1a20ecc095f(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

uint64_t sub_1969A3DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  a17 = a12;
  a19 = v19 - (((&a17 | 0xF62C1C52) - (&a17 & 0xF62C1C52)) ^ 0x4F043F64) * v20 + 69;
  v22 = (*(v21 + 8 * (v19 + 5996)))(&a17);
  return (*(v21 + 8 * (((a18 == 1906281716) * (((v19 + 3522) | 1) ^ 0x1FF0)) ^ v19)))(v22);
}

uint64_t fp_dh_c947480b8a7807332999d0fdf576b53a(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

uint64_t fp_dh_a8b9c6a4c9fb4ba891beae77321d8399(uint64_t a1)
{
  result = (**(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((1825732043 * (((a1 ^ 0xEDACF85F) & 0xBD1E1038 | ~(a1 ^ 0xEDACF85F | 0xBD1E1038)) ^ 0xAFDB44AF)) ^ *(a1 + 12) ^ 0xE803D691)))(*a1);
  *(a1 + 8) = (result ^ 0x7FBFCCF4) - 236994560 + ((2 * result) & 0xFF7F99E8);
  return result;
}

void sub_1969A3F54(int a1@<W8>)
{
  v6 = (v5 - 128);
  v7 = *(v2 + 16);
  if (v1 == 186)
  {
    goto LABEL_4;
  }

  if (v1 == 89)
  {
    v12 = 449 * (v4 ^ 0xFAD);
    *v6 = v4 - 1575331711 * ((((v5 - 128) ^ 0xFA52B75F | 0xC40EFDA0) - (((v5 - 128) ^ 0xFA52B75F) & 0xC40EFDA0)) ^ 0x5207DFFD) - 1915867180;
    *(v5 - 120) = v21;
    (*(v3 + 8 * (v4 ^ 0x156B)))(v5 - 128);
    v13 = 753662761 * ((((2 * (v5 - 128)) | 0x44DADEB2) - (v5 - 128) - 577597273) ^ 0x47779412);
    *v6 = v13 ^ 0x7383F52B;
    *(v5 - 124) = v4 + 1869825025 + v13;
    *(v5 - 120) = &v19;
    *(v5 - 112) = v21;
    (*(v3 + 8 * (v4 ^ 0x14B7)))(v5 - 128);
    v14 = 753662761 * ((1713559524 - ((v5 - 128) | 0x6622D7E4) + ((v5 - 128) | 0x99DD281B)) ^ 0xFCC7D350);
    *(v5 - 120) = &v18;
    *(v5 - 112) = v21;
    *v6 = v14 ^ 0x7383F52B;
    *(v5 - 124) = v4 + 1869825025 + v14;
    (*(v3 + 8 * (v4 + 2927)))(v5 - 128);
    v15 = &v7[56 * *v7];
    *(v5 - 129) = v15[43] ^ 0xEC;
    *(v5 - 130) = v15[42] ^ (v12 + 35);
    *(v5 - 131) = v15[41] ^ 0xEC;
    *(v5 - 132) = v15[40] ^ 0xEC;
    *(v5 - 133) = v15[39] ^ 0xEC;
    *(v5 - 134) = v15[38] ^ 0xEC;
    *(v5 - 135) = v15[37] ^ 0xEC;
    *(v5 - 136) = v15[36] ^ 0xEC;
    *(v5 - 137) = v15[35] ^ 0xEC;
    *(v5 - 138) = v15[34] ^ 0xEC;
    *(v5 - 139) = v15[33] ^ 0xEC;
    *(v5 - 140) = v15[32] ^ 0xEC;
    *(v5 - 141) = v15[31] ^ 0xEC;
    *(v5 - 142) = v15[30] ^ 0xEC;
    *(v5 - 143) = v15[29] ^ 0xEC;
    *(v5 - 144) = v15[28] ^ 0xEC;
    *(v5 - 145) = v15[27] ^ 0xEC;
    *(v5 - 146) = v15[26] ^ 0xEC;
    *(v5 - 147) = v15[25] ^ 0xEC;
    *(v5 - 148) = v15[24] ^ 0xEC;
    *v6 = &v22;
    *(v5 - 120) = v21;
    *(v5 - 112) = v5 - 148;
    *(v5 - 104) = v4 + 455395931 * (((~(v5 - 128) & 0xB265712E) - (~(v5 - 128) | 0xB265712F)) ^ 0xC4942FE3) + 1684;
    (*(v3 + 8 * (v4 ^ 0x1516)))(v5 - 128);
    v16.i64[0] = 0xD8D8D8D8D8D8D8D8;
    v16.i64[1] = 0xD8D8D8D8D8D8D8D8;
    v17.i64[0] = 0xECECECECECECECECLL;
    v17.i64[1] = 0xECECECECECECECECLL;
    *&v20[4] = vaddq_s8(vsubq_s8(v23, vandq_s8(vaddq_s8(v23, v23), v16)), v17);
    __asm { BRAA            X13, X17 }
  }

  if (v1 == 88)
  {
LABEL_4:
    v8 = &v7[56 * *v7 + 24];
    v9 = 753662761 * ((((v5 - 128) | 0x33645F13) - (v5 - 128) + ((v5 - 128) & 0xCC9BA0E8)) ^ 0x567EA458);
    *(v5 - 104) = v24;
    *(v5 - 112) = v9 + 1904658650;
    *(v5 - 108) = v4 - v9 - 380;
    *(v5 - 128) = v9 ^ 0x6298;
    *(v5 - 120) = v8;
    (*(v3 + 8 * (v4 + 2863)))(v5 - 128);
    v10 = 998242381 * ((v5 + 1592753010 - 2 * ((v5 - 128) & 0x5EEF7BF2)) ^ 0xF480E324);
    *(v5 - 120) = v24;
    *(v5 - 112) = &v19;
    *v6 = (v4 - 453) ^ v10;
    *(v5 - 124) = v10 + 2125716558;
    (*(v3 + 8 * (v4 ^ 0x148A)))(v5 - 128);
    v11 = 998242381 * ((((v5 - 128) | 0xE479F1B7) - (v5 - 128) + ((v5 - 128) & 0x1B860E48)) ^ 0x4E166961);
    *(v5 - 120) = v24;
    *(v5 - 112) = &v18;
    *v6 = (v4 - 453) ^ v11;
    *(v5 - 124) = v11 + 2125716558;
    (*(v3 + 8 * (v4 + 2954)))(v5 - 128);
    *v6 = (v4 - 3744) ^ (1575331711 * ((-270880255 - ((v5 - 128) | 0xEFDAB201) + ((v5 - 128) | 0x10254DFE)) ^ 0x7C7ED8FC));
    *(v5 - 120) = v20;
    *(v5 - 112) = v24;
    (*(v3 + 8 * (v4 ^ 0x1507)))(v5 - 128);
    __asm { BRAA            X11, X17 }
  }

  *(v2 + 28) = a1;
}

void fp_dh_17d981ba61c6bda7b706de35b842ffea(_DWORD *a1)
{
  v1 = a1[4] ^ (1790939281 * (a1 ^ 0xF8DC2041));
  v2 = (*(*a1 + 16) >> 3) & 0x3F;
  *(*a1 + 24 + v2) = 0x80;
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1969A46D8@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v1 + a1 + 40);
  v9 = v6 + a1;
  *(v9 + 24) = *(v1 + a1 + 24);
  *(v9 + 40) = v8;
  return (*(v7 + 8 * (((a1 + v4 + ((v5 + 571) | v3) == 64) * v2) ^ v5)))();
}

void sub_1969A4720()
{
  v3 = v5[3] ^ 0xEC;
  v4 = ((*v5 ^ 0xEC) << 24) | ((v5[1] ^ 0xEC) << 16) | ((v5[2] ^ 0xEC) << 8) | v3;
  **(v0 + 16) = (v4 + v1 - 2 * (v4 & (v1 + 4) ^ v3 & 4)) ^ v1;
  *(v0 + 4) = *(v2 + 24);
}

uint64_t sub_1969A47CC()
{
  v2 = v0 + 2421;
  v3 = (v0 + 2421) ^ 0x18B0;
  v4 = v0 + 4098;
  v5 = (*(v1 + 8 * (v0 + 5303)))(1576, 0x105004009637391);
  STACK[0x560] = v5;
  return (*(v1 + 8 * (((v5 != 0) * (v3 ^ v4 ^ 0x2C8)) ^ v2)))();
}

uint64_t sub_1969A4810()
{
  v4 = (*(v3 + 8 * (v2 ^ v1)))();
  STACK[0x590] += (35 * (v2 ^ 0x179Du)) ^ 0xFFFFFFFFFFFFF202;
  return (*(v3 + 8 * ((v2 - 2569) | (8 * (v0 == 1906281716)))))(v4);
}

uint64_t sub_1969A4A94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31)
{
  v491 = 16 - (v31 & 0xFFFFFFF0);
  v40 = STACK[0x350] + a17 + a1 + a25 + v31;
  v41 = STACK[0x340] + v31;
  v496 = *(v41 - 16);
  v42.i64[0] = v41 - 5;
  v42.i64[1] = v41 - 6;
  v43.i64[0] = v41 - 7;
  v43.i64[1] = v41 - 8;
  v44.i64[0] = v40 - 5;
  v44.i64[1] = v40 - 6;
  v45.i64[0] = v40 - 7;
  v45.i64[1] = v40 - 8;
  v46 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v47 = vandq_s8(v43, v46);
  v48 = vandq_s8(v42, v46);
  v49 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x250] = v49;
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v49);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v49);
  v52 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v53 = veorq_s8(v51, v52);
  v54 = veorq_s8(v50, v52);
  v55 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  v56 = veorq_s8(v50, v55);
  v57 = veorq_s8(v51, v55);
  v58 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v56), v58);
  v60 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v57), v58);
  v61 = v58;
  v62 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v63 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v64 = veorq_s8(v59, v62);
  v65 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v64);
  v67 = vaddq_s64(v65, v63);
  v68 = vdupq_n_s64(0xD3E2C6F73124A4A2);
  *&STACK[0x240] = v68;
  v69 = vdupq_n_s64(a7);
  v497 = vdupq_n_s64(0x2640374E84F416ABuLL);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v66, v68), vorrq_s8(v66, v69)), v69), v497);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v67, v68), vorrq_s8(v67, v69)), v69), v497);
  v72 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v73 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v74 = vdupq_n_s64(v36);
  *&STACK[0x300] = v74;
  v75 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v72), v74);
  v76 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v73), v74);
  v77 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v78 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v79 = veorq_s8(v75, v77);
  v80 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79);
  v82 = vaddq_s64(v80, v78);
  v83 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x230] = v83;
  v84 = veorq_s8(v82, v83);
  v85 = veorq_s8(v81, v83);
  v86 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v87 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL));
  v88 = veorq_s8(v84, v86);
  v89 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v88);
  v91 = vaddq_s64(v89, v87);
  v92 = vdupq_n_s64(0x96E1782549DF8832);
  *&STACK[0x2F0] = v92;
  v93 = vdupq_n_s64(a5);
  v94 = vdupq_n_s64(0xF2226427395B565ELL);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v90, v92), vorrq_s8(v90, v93)), v93), v94);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v91, v92), vorrq_s8(v91, v93)), v93), v94);
  v97 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v98 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v99 = veorq_s8(v95, v97);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v99);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v98);
  v102 = vdupq_n_s64(0x25FD83206EC49CC2uLL);
  v103 = vdupq_n_s64(0xED013E6FC89DB19FLL);
  *&STACK[0x210] = v103;
  v104 = vdupq_n_s64(0x8D42A747531E162uLL);
  v105 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v101, v101), v102), v101), v103), v104);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v100, v100), v102), v100), v103), v104);
  v107 = vdupq_n_s64(0xAB3042D228875C41);
  v108 = vdupq_n_s64(0x38uLL);
  v109 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL))), v107), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v108)));
  v110 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL))), v107), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), v108)));
  v111 = vandq_s8(v45, v46);
  v112 = vandq_s8(v44, v46);
  v113 = vdupq_n_s64(v32);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v113);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v116 = vdupq_n_s64(0x315FDBFEB957105EuLL);
  v117 = veorq_s8(v115, v116);
  v118 = veorq_s8(v114, v116);
  v119 = vdupq_n_s64(0x85215C3045409F44);
  v120 = veorq_s8(v114, v119);
  v121 = veorq_s8(v115, v119);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v121);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v120);
  v124 = vdupq_n_s64(0x387A58471D908FDEuLL);
  v125 = vdupq_n_s64(0xE3C2D3DC7137B810);
  v126 = vdupq_n_s64(0x62B6E3931000AC23uLL);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v122, v122), v124), v122), v125), v126);
  *&STACK[0x220] = v126;
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v123, v123), v124), v123), v125), v126);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130);
  v132 = vdupq_n_s64(v37);
  *&STACK[0x200] = v132;
  v133 = vdupq_n_s64(a4);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v135 = vdupq_n_s64(0xD46C6E1ABEDC938uLL);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v134, v132), vorrq_s8(v134, v133)), v133), v135);
  v137 = v135;
  *&STACK[0x2C0] = v135;
  v138 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v139 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v131, v132), vorrq_s8(v131, v133)), v133), v137);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v142 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v143 = vaddq_s64(v139, v138);
  v144 = vdupq_n_s64(a8);
  *&STACK[0x2B0] = v144;
  v145 = vaddq_s64(v142, v141);
  v146 = vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v148 = vdupq_n_s64(v33);
  v499 = vdupq_n_s64(v38);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v145, v145), v144), v145), v499), v148);
  *&STACK[0x2A0] = v148;
  v150 = veorq_s8(v149, v147);
  v151 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v152 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v143, v143), v144), v143), v499), v148);
  v153 = veorq_s8(v152, v146);
  v154 = vdupq_n_s64(v35);
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153);
  *&STACK[0x2D0] = v154;
  v156 = vdupq_n_s64(v34);
  v157 = vsubq_s64(vorrq_s8(v155, v154), vorrq_s8(v155, v156));
  v158 = vaddq_s64(v151, v150);
  v159 = vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v161 = vaddq_s64(vsubq_s64(vorrq_s8(v158, v154), vorrq_s8(v158, v156)), v156);
  v162 = vdupq_n_s64(v39);
  v163 = veorq_s8(v161, v162);
  v164 = v162;
  *&STACK[0x260] = v156;
  *&STACK[0x270] = v162;
  v165 = veorq_s8(v163, v160);
  v166 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v167 = veorq_s8(vaddq_s64(v157, v156), v164);
  v168 = veorq_s8(v167, v159);
  v169 = vaddq_s64(v166, v165);
  v170 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v171 = vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL);
  v172 = vdupq_n_s64(0xB9BEF0CD865D21FDLL);
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v172);
  *&STACK[0x290] = v172;
  v174 = veorq_s8(v173, v171);
  v175 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v176 = veorq_s8(v169, v172);
  v177 = veorq_s8(v176, v170);
  v178 = vaddq_s64(v175, v174);
  v179 = vdupq_n_s64(0x787E07DA35E0BFF0uLL);
  *&STACK[0x280] = v179;
  v180 = vsubq_s64(vandq_s8(vaddq_s64(v178, v178), v179), v178);
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177);
  v182 = vsubq_s64(vandq_s8(vaddq_s64(v181, v181), v179), v181);
  v183 = vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL);
  v184 = vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL);
  v185 = vdupq_n_s64(0x43C0FC12E50FA007uLL);
  v186 = vdupq_n_s64(0x2DDEE5CF5633123DuLL);
  *&STACK[0x2E0] = v185;
  v187 = veorq_s8(vaddq_s64(v182, v185), v186);
  v188 = veorq_s8(v187, v184);
  v189 = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v190 = veorq_s8(vaddq_s64(v180, v185), v186);
  v191 = vdupq_n_s64(0x3532CD90FD5B1622uLL);
  *&STACK[0x310] = v191;
  *&STACK[0x320] = v186;
  v192 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), veorq_s8(v190, v183)), v191), vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), v108)));
  v183.i64[0] = v41 - 3;
  v183.i64[1] = v41 - 4;
  v501.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v189, v188), v191), vnegq_s64(vandq_s8(vshlq_n_s64(v45, 3uLL), v108))), v110);
  v501.val[2] = veorq_s8(v192, v109);
  v193 = vandq_s8(v183, v46);
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), *&STACK[0x250]);
  v195 = veorq_s8(v194, v52);
  v196 = veorq_s8(v194, v55);
  v197 = vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL);
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196), v61);
  v199 = veorq_s8(v198, v197);
  v200 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199);
  v494 = v69;
  v201 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v200, *&STACK[0x240]), vorrq_s8(v200, v69)), v69), v497);
  v202 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v203 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v202), *&STACK[0x300]);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v205 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v204), *&STACK[0x230]);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206);
  v493 = v93;
  v208 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v207, *&STACK[0x2F0]), vorrq_s8(v207, v93)), v93), v94);
  v209 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v210 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v209);
  v211 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v210, v210), v102), v210), *&STACK[0x210]), v104);
  v212 = v107;
  v498 = v107;
  v213 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL))), v107), vnegq_s64(vandq_s8(vshlq_n_s64(v183, 3uLL), v108)));
  v107.i64[0] = v40 - 3;
  v107.i64[1] = v40 - 4;
  v214 = vandq_s8(v107, v46);
  v215 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v113);
  v216 = veorq_s8(v215, v116);
  v217 = veorq_s8(v215, v119);
  v218 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), v217);
  v219 = vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL);
  v220 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v218, v218), v124), v218), v125), *&STACK[0x220]);
  v221 = veorq_s8(v220, v219);
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221);
  v492 = v133;
  v223 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v222, *&STACK[0x200]), vorrq_s8(v222, v133)), v133), *&STACK[0x2C0]);
  v224 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224);
  v226 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v225, v225), *&STACK[0x2B0]), v225), v499), *&STACK[0x2A0]);
  v227 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227);
  v229 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228, *&STACK[0x2D0]), vorrq_s8(v228, *&STACK[0x260])), *&STACK[0x260]), *&STACK[0x270]);
  v230 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v231 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230), *&STACK[0x290]);
  v232 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v232);
  v234 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v233, v233), *&STACK[0x280]), v233), *&STACK[0x2E0]), *&STACK[0x320]);
  v501.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL))), *&STACK[0x310]), vnegq_s64(vandq_s8(vshlq_n_s64(v107, 3uLL), v108))), v213);
  v235 = (a31 - 3423);
  v213.i64[0] = v41 - 1;
  v213.i64[1] = v41 + (v235 ^ 0xFFFFFFFFFFFFF700);
  v236 = vandq_s8(v213, v46);
  v237 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), *&STACK[0x250]);
  v238 = veorq_s8(v237, v52);
  v239 = veorq_s8(v237, v55);
  v240 = vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL);
  v241 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL), v239), v61);
  v242 = veorq_s8(v241, v240);
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v242);
  v244 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v243, *&STACK[0x240]), vorrq_s8(v243, v494)), v494), v497);
  v245 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v246 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245), *&STACK[0x300]);
  v247 = veorq_s8(v246, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v248 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v247), *&STACK[0x230]);
  v249 = veorq_s8(v248, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v250 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v249);
  v251 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v250, *&STACK[0x2F0]), vorrq_s8(v250, v93)), v93), v94);
  v252 = veorq_s8(v251, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v253 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL), v252);
  v254 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v253, v253), v102), v253), *&STACK[0x210]), v104);
  v255 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL), veorq_s8(v254, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL))), v212), vnegq_s64(vandq_s8(vshlq_n_s64(v213, 3uLL), v108)));
  v107.i64[0] = v40 - 1;
  v107.i64[1] = v40 + (v235 ^ 0xFFFFFFFFFFFFF700);
  v256 = vandq_s8(v107, v46);
  v257 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL), v113);
  v258 = veorq_s8(v257, v116);
  v259 = veorq_s8(v257, v119);
  v260 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL), v259);
  v261 = vsraq_n_u64(vshlq_n_s64(v259, 3uLL), v259, 0x3DuLL);
  v262 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v260, v260), v124), v260), v125), *&STACK[0x220]);
  v263 = veorq_s8(v262, v261);
  v264 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), v263);
  v265 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v264, *&STACK[0x200]), vorrq_s8(v264, v133)), v133), *&STACK[0x2C0]);
  v266 = veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v263, 3uLL), v263, 0x3DuLL));
  v267 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL), v266);
  v268 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v267, v267), *&STACK[0x2B0]), v267), v499), *&STACK[0x2A0]);
  v269 = veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v266, 3uLL), v266, 0x3DuLL));
  v270 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL), v269);
  v271 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v270, *&STACK[0x2D0]), vorrq_s8(v270, *&STACK[0x260])), *&STACK[0x260]), *&STACK[0x270]);
  v272 = veorq_s8(v271, vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL));
  v273 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v271, 0x38uLL), v271, 8uLL), v272), *&STACK[0x290]);
  v274 = veorq_s8(v273, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL));
  v275 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v273, 0x38uLL), v273, 8uLL), v274);
  v276 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v275, v275), *&STACK[0x280]), v275), *&STACK[0x2E0]), *&STACK[0x320]);
  v501.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v276, 0x38uLL), v276, 8uLL), veorq_s8(v276, vsraq_n_u64(vshlq_n_s64(v274, 3uLL), v274, 0x3DuLL))), *&STACK[0x310]), vnegq_s64(vandq_s8(vshlq_n_s64(v107, 3uLL), v108))), v255);
  v495 = vqtbl4q_s8(v501, xmmword_196EBFA60).u64[0];
  v190.i64[0] = v41 - 13;
  v190.i64[1] = v41 - 14;
  v188.i64[0] = v41 - 15;
  v188.i64[1] = v41 - 16;
  v277 = vandq_s8(v190, v46);
  v278 = vsraq_n_u64(vshlq_n_s64(v277, 0x38uLL), v277, 8uLL);
  v279 = vandq_s8(v188, v46);
  v280 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL), *&STACK[0x250]);
  v281 = veorq_s8(v280, v52);
  v282 = vsraq_n_u64(vshlq_n_s64(v281, 0x38uLL), v281, 8uLL);
  v283 = vaddq_s64(v278, *&STACK[0x250]);
  v284 = veorq_s8(v283, v52);
  v285 = vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL);
  v286 = veorq_s8(v280, v55);
  v287 = vaddq_s64(v282, v286);
  v288 = vsraq_n_u64(vshlq_n_s64(v286, 3uLL), v286, 0x3DuLL);
  v289 = veorq_s8(v283, v55);
  v290 = vaddq_s64(v285, v289);
  v291 = vsraq_n_u64(vshlq_n_s64(v289, 3uLL), v289, 0x3DuLL);
  v292 = veorq_s8(v290, v61);
  v293 = veorq_s8(v292, v291);
  v294 = vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL);
  v295 = veorq_s8(v287, v61);
  v296 = veorq_s8(v295, v288);
  v297 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL), v296);
  v298 = vaddq_s64(v294, v293);
  v299 = vsraq_n_u64(vshlq_n_s64(v296, 3uLL), v296, 0x3DuLL);
  v300 = vsraq_n_u64(vshlq_n_s64(v293, 3uLL), v293, 0x3DuLL);
  v301 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v298, *&STACK[0x240]), vorrq_s8(v298, v494)), v494), v497);
  v302 = veorq_s8(v301, v300);
  v303 = vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL);
  v304 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v297, *&STACK[0x240]), vorrq_s8(v297, v494)), v494), v497);
  v305 = veorq_s8(v304, v299);
  v306 = vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL);
  v307 = vaddq_s64(v303, v302);
  v308 = vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL);
  v309 = vaddq_s64(v306, v305);
  v310 = vsraq_n_u64(vshlq_n_s64(v305, 3uLL), v305, 0x3DuLL);
  v311 = veorq_s8(v309, *&STACK[0x300]);
  v312 = veorq_s8(v311, v310);
  v313 = vsraq_n_u64(vshlq_n_s64(v311, 0x38uLL), v311, 8uLL);
  v314 = veorq_s8(v307, *&STACK[0x300]);
  v315 = veorq_s8(v314, v308);
  v316 = vsraq_n_u64(vshlq_n_s64(v314, 0x38uLL), v314, 8uLL);
  v317 = vaddq_s64(v313, v312);
  v318 = vsraq_n_u64(vshlq_n_s64(v312, 3uLL), v312, 0x3DuLL);
  v319 = vaddq_s64(v316, v315);
  v320 = vsraq_n_u64(vshlq_n_s64(v315, 3uLL), v315, 0x3DuLL);
  v321 = veorq_s8(v319, *&STACK[0x230]);
  v322 = veorq_s8(v321, v320);
  v323 = vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL);
  v324 = veorq_s8(v317, *&STACK[0x230]);
  v325 = veorq_s8(v324, v318);
  v326 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v324, 0x38uLL), v324, 8uLL), v325);
  v327 = vaddq_s64(v323, v322);
  v328 = vsraq_n_u64(vshlq_n_s64(v325, 3uLL), v325, 0x3DuLL);
  v329 = vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL);
  v330 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v327, *&STACK[0x2F0]), vorrq_s8(v327, v493)), v493), v94);
  v331 = veorq_s8(v330, v329);
  v332 = vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL);
  v333 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v326, *&STACK[0x2F0]), vorrq_s8(v326, v493)), v493), v94);
  v334 = veorq_s8(v333, v328);
  v335 = vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL);
  v336 = vaddq_s64(v332, v331);
  v337 = vaddq_s64(v335, v334);
  v338 = vsraq_n_u64(vshlq_n_s64(v331, 3uLL), v331, 0x3DuLL);
  v339 = vsraq_n_u64(vshlq_n_s64(v334, 3uLL), v334, 0x3DuLL);
  v340 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v337, v337), v102), v337), *&STACK[0x210]), v104);
  v341 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v336, v336), v102), v336), *&STACK[0x210]), v104);
  v342 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL), veorq_s8(v340, v339));
  v343 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v341, 0x38uLL), v341, 8uLL), veorq_s8(v341, v338)), v498), vnegq_s64(vandq_s8(vshlq_n_s64(v190, 3uLL), v108)));
  v190.i64[0] = v40 - 13;
  v190.i64[1] = v40 - 14;
  v344 = vshlq_u64(veorq_s8(v342, v498), vnegq_s64(vandq_s8(vshlq_n_s64(v188, 3uLL), v108)));
  v345 = vandq_s8(v190, v46);
  v346 = vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL);
  v345.i64[0] = v40 - 15;
  v345.i64[1] = v40 - 16;
  v347 = vandq_s8(v345, v46);
  v348 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v347, 0x38uLL), v347, 8uLL), v113);
  v349 = veorq_s8(v348, v116);
  v350 = vsraq_n_u64(vshlq_n_s64(v349, 0x38uLL), v349, 8uLL);
  v351 = vaddq_s64(v346, v113);
  v352 = veorq_s8(v351, v116);
  v353 = vsraq_n_u64(vshlq_n_s64(v352, 0x38uLL), v352, 8uLL);
  v354 = veorq_s8(v348, v119);
  v355 = vaddq_s64(v350, v354);
  v356 = veorq_s8(v351, v119);
  v357 = vaddq_s64(v353, v356);
  v358 = vsraq_n_u64(vshlq_n_s64(v354, 3uLL), v354, 0x3DuLL);
  v359 = vsraq_n_u64(vshlq_n_s64(v356, 3uLL), v356, 0x3DuLL);
  v360 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v357, v357), v124), v357), v125), *&STACK[0x220]);
  v361 = veorq_s8(v360, v359);
  v362 = vsraq_n_u64(vshlq_n_s64(v360, 0x38uLL), v360, 8uLL);
  v363 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v355, v355), v124), v355), v125), *&STACK[0x220]);
  v364 = veorq_s8(v363, v358);
  v365 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v363, 0x38uLL), v363, 8uLL), v364);
  v366 = vaddq_s64(v362, v361);
  v367 = vsraq_n_u64(vshlq_n_s64(v364, 3uLL), v364, 0x3DuLL);
  v368 = vsraq_n_u64(vshlq_n_s64(v361, 3uLL), v361, 0x3DuLL);
  v369 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v366, *&STACK[0x200]), vorrq_s8(v366, v133)), v133), *&STACK[0x2C0]);
  v370 = veorq_s8(v369, v368);
  v371 = vsraq_n_u64(vshlq_n_s64(v369, 0x38uLL), v369, 8uLL);
  v372 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v365, *&STACK[0x200]), vorrq_s8(v365, v133)), v133), *&STACK[0x2C0]);
  v373 = veorq_s8(v372, v367);
  v374 = vsraq_n_u64(vshlq_n_s64(v372, 0x38uLL), v372, 8uLL);
  v375 = vaddq_s64(v371, v370);
  v376 = vaddq_s64(v374, v373);
  v377 = vsraq_n_u64(vshlq_n_s64(v370, 3uLL), v370, 0x3DuLL);
  v378 = vsraq_n_u64(vshlq_n_s64(v373, 3uLL), v373, 0x3DuLL);
  v379 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v376, v376), *&STACK[0x2B0]), v376), v499), *&STACK[0x2A0]);
  v380 = veorq_s8(v379, v378);
  v381 = vsraq_n_u64(vshlq_n_s64(v379, 0x38uLL), v379, 8uLL);
  v382 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v375, v375), *&STACK[0x2B0]), v375), v499), *&STACK[0x2A0]);
  v383 = veorq_s8(v382, v377);
  v384 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v382, 0x38uLL), v382, 8uLL), v383);
  v385 = vaddq_s64(v381, v380);
  v386 = vsraq_n_u64(vshlq_n_s64(v383, 3uLL), v383, 0x3DuLL);
  v387 = vsraq_n_u64(vshlq_n_s64(v380, 3uLL), v380, 0x3DuLL);
  v388 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v385, *&STACK[0x2D0]), vorrq_s8(v385, *&STACK[0x260])), *&STACK[0x260]), *&STACK[0x270]);
  v389 = veorq_s8(v388, v387);
  v390 = vsraq_n_u64(vshlq_n_s64(v388, 0x38uLL), v388, 8uLL);
  v391 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v384, *&STACK[0x2D0]), vorrq_s8(v384, *&STACK[0x260])), *&STACK[0x260]), *&STACK[0x270]);
  v392 = veorq_s8(v391, v386);
  v393 = vsraq_n_u64(vshlq_n_s64(v391, 0x38uLL), v391, 8uLL);
  v394 = vaddq_s64(v390, v389);
  v395 = vsraq_n_u64(vshlq_n_s64(v389, 3uLL), v389, 0x3DuLL);
  v396 = veorq_s8(vaddq_s64(v393, v392), *&STACK[0x290]);
  v397 = veorq_s8(v396, vsraq_n_u64(vshlq_n_s64(v392, 3uLL), v392, 0x3DuLL));
  v398 = vsraq_n_u64(vshlq_n_s64(v396, 0x38uLL), v396, 8uLL);
  v399 = veorq_s8(v394, *&STACK[0x290]);
  v400 = veorq_s8(v399, v395);
  v401 = vsraq_n_u64(vshlq_n_s64(v399, 0x38uLL), v399, 8uLL);
  v402 = vaddq_s64(v398, v397);
  v403 = vaddq_s64(v401, v400);
  v404 = vsraq_n_u64(vshlq_n_s64(v397, 3uLL), v397, 0x3DuLL);
  v405 = vsraq_n_u64(vshlq_n_s64(v400, 3uLL), v400, 0x3DuLL);
  v406 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v403, v403), *&STACK[0x280]), v403), *&STACK[0x2E0]), *&STACK[0x320]);
  v407 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v402, v402), *&STACK[0x280]), v402), *&STACK[0x2E0]), *&STACK[0x320]);
  v408 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL), veorq_s8(v407, v404)), *&STACK[0x310]), vnegq_s64(vandq_s8(vshlq_n_s64(v190, 3uLL), v108)));
  v409 = v108;
  v500.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v406, 0x38uLL), v406, 8uLL), veorq_s8(v406, v405)), *&STACK[0x310]), vnegq_s64(vandq_s8(vshlq_n_s64(v345, 3uLL), v108))), v344);
  v500.val[2] = veorq_s8(v408, v343);
  v344.i64[0] = v41 - 11;
  v344.i64[1] = v41 - 12;
  v410 = vandq_s8(v344, v46);
  v411 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v410, 0x38uLL), v410, 8uLL), *&STACK[0x250]);
  v412 = veorq_s8(v411, v52);
  v413 = veorq_s8(v411, v55);
  v414 = vsraq_n_u64(vshlq_n_s64(v413, 3uLL), v413, 0x3DuLL);
  v415 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v412, 0x38uLL), v412, 8uLL), v413), v61);
  v416 = veorq_s8(v415, v414);
  v417 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v415, 0x38uLL), v415, 8uLL), v416);
  v418 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v417, *&STACK[0x240]), vorrq_s8(v417, v494)), v494), v497);
  v419 = veorq_s8(v418, vsraq_n_u64(vshlq_n_s64(v416, 3uLL), v416, 0x3DuLL));
  v420 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418, 0x38uLL), v418, 8uLL), v419), *&STACK[0x300]);
  v421 = veorq_s8(v420, vsraq_n_u64(vshlq_n_s64(v419, 3uLL), v419, 0x3DuLL));
  v422 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v420, 0x38uLL), v420, 8uLL), v421), *&STACK[0x230]);
  v423 = veorq_s8(v422, vsraq_n_u64(vshlq_n_s64(v421, 3uLL), v421, 0x3DuLL));
  v424 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v422, 0x38uLL), v422, 8uLL), v423);
  v425 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v424, *&STACK[0x2F0]), vorrq_s8(v424, v93)), v93), v94);
  v426 = veorq_s8(v425, vsraq_n_u64(vshlq_n_s64(v423, 3uLL), v423, 0x3DuLL));
  v427 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v425, 0x38uLL), v425, 8uLL), v426);
  v428 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v427, v427), v102), v427), *&STACK[0x210]), v104);
  v429 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v428, 0x38uLL), v428, 8uLL), veorq_s8(v428, vsraq_n_u64(vshlq_n_s64(v426, 3uLL), v426, 0x3DuLL))), v498), vnegq_s64(vandq_s8(vshlq_n_s64(v344, 3uLL), v108)));
  v344.i64[0] = v40 - 11;
  v344.i64[1] = v40 - 12;
  v430 = vandq_s8(v344, v46);
  v431 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v430, 0x38uLL), v430, 8uLL), v113);
  v432 = veorq_s8(v431, v116);
  v433 = veorq_s8(v431, v119);
  v434 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v432, 0x38uLL), v432, 8uLL), v433);
  v435 = vsraq_n_u64(vshlq_n_s64(v433, 3uLL), v433, 0x3DuLL);
  v436 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v434, v434), v124), v434), v125), *&STACK[0x220]);
  v437 = veorq_s8(v436, v435);
  v438 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v436, 0x38uLL), v436, 8uLL), v437);
  v439 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v438, *&STACK[0x200]), vorrq_s8(v438, v492)), v492), *&STACK[0x2C0]);
  v440 = veorq_s8(v439, vsraq_n_u64(vshlq_n_s64(v437, 3uLL), v437, 0x3DuLL));
  v441 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v439, 0x38uLL), v439, 8uLL), v440);
  v442 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v441, v441), *&STACK[0x2B0]), v441), v499), *&STACK[0x2A0]);
  v443 = veorq_s8(v442, vsraq_n_u64(vshlq_n_s64(v440, 3uLL), v440, 0x3DuLL));
  v444 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v442, 0x38uLL), v442, 8uLL), v443);
  v445 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v444, *&STACK[0x2D0]), vorrq_s8(v444, *&STACK[0x260])), *&STACK[0x260]), *&STACK[0x270]);
  v446 = veorq_s8(v445, vsraq_n_u64(vshlq_n_s64(v443, 3uLL), v443, 0x3DuLL));
  v447 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL), v446), *&STACK[0x290]);
  v448 = veorq_s8(v447, vsraq_n_u64(vshlq_n_s64(v446, 3uLL), v446, 0x3DuLL));
  v449 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v447, 0x38uLL), v447, 8uLL), v448);
  v450 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v449, v449), *&STACK[0x280]), v449), *&STACK[0x2E0]), *&STACK[0x320]);
  v500.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v450, 0x38uLL), v450, 8uLL), veorq_s8(v450, vsraq_n_u64(vshlq_n_s64(v448, 3uLL), v448, 0x3DuLL))), *&STACK[0x310]), vnegq_s64(vandq_s8(vshlq_n_s64(v344, 3uLL), v409))), v429);
  v344.i64[0] = v41 - 9;
  v344.i64[1] = v41 - 10;
  v451 = vandq_s8(v344, v46);
  v452 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v451, 0x38uLL), v451, 8uLL), *&STACK[0x250]);
  v453 = veorq_s8(v452, v52);
  v454 = veorq_s8(v452, v55);
  v455 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v453, 0x38uLL), v453, 8uLL), v454), v61);
  v456 = veorq_s8(v455, vsraq_n_u64(vshlq_n_s64(v454, 3uLL), v454, 0x3DuLL));
  v457 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v455, 0x38uLL), v455, 8uLL), v456);
  v458 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v457, *&STACK[0x240]), vorrq_s8(v457, v494)), v494), v497);
  v459 = veorq_s8(v458, vsraq_n_u64(vshlq_n_s64(v456, 3uLL), v456, 0x3DuLL));
  v460 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v458, 0x38uLL), v458, 8uLL), v459), *&STACK[0x300]);
  v461 = veorq_s8(v460, vsraq_n_u64(vshlq_n_s64(v459, 3uLL), v459, 0x3DuLL));
  v462 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v460, 0x38uLL), v460, 8uLL), v461), *&STACK[0x230]);
  v463 = veorq_s8(v462, vsraq_n_u64(vshlq_n_s64(v461, 3uLL), v461, 0x3DuLL));
  v464 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v462, 0x38uLL), v462, 8uLL), v463);
  v465 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v464, *&STACK[0x2F0]), vorrq_s8(v464, v493)), v493), v94);
  v466 = veorq_s8(v465, vsraq_n_u64(vshlq_n_s64(v463, 3uLL), v463, 0x3DuLL));
  v467 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v465, 0x38uLL), v465, 8uLL), v466);
  v468 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v467, v467), v102), v467), *&STACK[0x210]), v104);
  v343.i64[0] = v40 - 9;
  v343.i64[1] = v40 - 10;
  v501.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v468, 0x38uLL), v468, 8uLL), veorq_s8(v468, vsraq_n_u64(vshlq_n_s64(v466, 3uLL), v466, 0x3DuLL))), v498), vnegq_s64(vandq_s8(vshlq_n_s64(v344, 3uLL), v409)));
  v469 = vandq_s8(v343, v46);
  v470 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v469, 0x38uLL), v469, 8uLL), v113);
  v471 = veorq_s8(v470, v116);
  v472 = veorq_s8(v470, v119);
  v473 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v471, 0x38uLL), v471, 8uLL), v472);
  v474 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v473, v473), v124), v473), v125), *&STACK[0x220]);
  v475 = veorq_s8(v474, vsraq_n_u64(vshlq_n_s64(v472, 3uLL), v472, 0x3DuLL));
  v476 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v474, 0x38uLL), v474, 8uLL), v475);
  v477 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v476, *&STACK[0x200]), vorrq_s8(v476, v492)), v492), *&STACK[0x2C0]);
  v478 = veorq_s8(v477, vsraq_n_u64(vshlq_n_s64(v475, 3uLL), v475, 0x3DuLL));
  v479 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v477, 0x38uLL), v477, 8uLL), v478);
  v480 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v479, v479), *&STACK[0x2B0]), v479), v499), *&STACK[0x2A0]);
  v481 = veorq_s8(v480, vsraq_n_u64(vshlq_n_s64(v478, 3uLL), v478, 0x3DuLL));
  v482 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v480, 0x38uLL), v480, 8uLL), v481);
  v483 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v482, *&STACK[0x2D0]), vorrq_s8(v482, *&STACK[0x260])), *&STACK[0x260]), *&STACK[0x270]);
  v484 = veorq_s8(v483, vsraq_n_u64(vshlq_n_s64(v481, 3uLL), v481, 0x3DuLL));
  v485 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483, 0x38uLL), v483, 8uLL), v484), *&STACK[0x290]);
  v486 = veorq_s8(v485, vsraq_n_u64(vshlq_n_s64(v484, 3uLL), v484, 0x3DuLL));
  v487 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v485, 0x38uLL), v485, 8uLL), v486);
  v488 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v487, v487), *&STACK[0x280]), v487), *&STACK[0x2E0]), *&STACK[0x320]);
  v500.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v488, 0x38uLL), v488, 8uLL), veorq_s8(v488, vsraq_n_u64(vshlq_n_s64(v486, 3uLL), v486, 0x3DuLL))), *&STACK[0x310]), vnegq_s64(vandq_s8(vshlq_n_s64(v343, 3uLL), v409))), v501.val[2]);
  v488.i64[0] = v495;
  v488.i64[1] = vqtbl4q_s8(v500, xmmword_196EBFA60).u64[0];
  v489 = vrev64q_s8(v488);
  *(v40 - 16) = veorq_s8(vextq_s8(v489, v489, 8uLL), v496);
  return (*(STACK[0x370] + 8 * ((39 * (v491 == 0)) ^ (a31 - 4286))))(0x8D42A747531E162, 0xE3C2D3DC7137B810);
}

uint64_t sub_1969A66E8()
{
  v4 = STACK[0x510];
  v5 = STACK[0x838];
  STACK[0xB18] = &STACK[0xB70] + v0;
  STACK[0x958] = v1;
  STACK[0x5E8] = v4;
  STACK[0x808] = v5;
  v6 = (*(v3 + 8 * (v2 + 884)))();
  STACK[0x6B0] = 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  return (*(v3 + 8 * ((v8 * ((((v2 + 705492868) & 0xD5F2F70B) + 1650) ^ 0xC8A)) ^ v2)))(v6);
}

void qdrn6()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_14397e8cf855551474952bbfc32ae2b2) ^ 0x55)) ^ fp_dh_9f3a64ae35be94ec7344ce35efe855d0[fp_dh_6f808fec9028d604a6d723482abcf3ae[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_14397e8cf855551474952bbfc32ae2b2) ^ 0x55))] ^ 0xA7]) + 269);
  v1 = *(v0 - 4);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0C738 + (*(off_1F0B0CB48 + (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + v1) ^ 0x55)) - 4) ^ 0xA7u) - 8) ^ (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + v1) ^ 0x55))) + 416);
  v3 = &v5[*(v2 - 4) - v1];
  *(v0 - 4) = (810526117 * v3) ^ 0xC67C1AE5E193E855;
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v6[0] = 1575331711 * (((v6 ^ 0x20401710 | 0x86BAE08B) + (v6 ^ 0x82182003 | 0x79451F74)) ^ 0xCE03A210) + 1655634431;
  LOBYTE(v2) = -91 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x55);
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_14397e8cf855551474952bbfc32ae2b2 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_6bb4c8a2c0a94389f7d3484ce1392143[fp_dh_a638abeab64ef8dd834670971c7b9d6d[(-91 * (fp_dh_14397e8cf855551474952bbfc32ae2b2 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0x4E]) + 437) - 4;
  (*&v4[8 * (*(off_1F0B0BE30 + (*(off_1F0B0CCB0 + v2 - 4) ^ 0x5Cu)) ^ v2) + 53568])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969A69E0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = *v1;
  *(a1 + 88) = *(v1 + 72);
  *(a1 + 92) = *(v1 + 76);
  *(a1 + 96) = *(v1 + 80);
  *(a1 + 97) = *(v1 + 81);
  *(a1 + 120) = *(v1 + 104);
  *(a1 + 100) = *(v1 + 84);
  v4 = (v2 - 1299) | 0x448;
  *(a1 + 124) = *(v1 + 108) & 1;
  *(a1 + 24 + v4 - 3113) = *(v1 + 8 + v4 - 3113) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 ^ 0xD78)) + ((v4 - 3113) & 0xF) - 12) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 - 3135)) + ((v4 - 3113) & 0xF) - 7) ^ (-79 * ((v4 - 41) & 0xF)) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 - 3282)) + ((v4 - 3113) & 0xF) - 11) ^ 0xEC;
  return (*(v3 + 8 * (((v4 == 3113) | (4 * (v4 == 3113))) ^ v2)))();
}

uint64_t sub_1969A6ACC@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5) - ((2 * *(v3 + v5)) & 0xD8) - 20;
  return (*(v4 + 8 * ((5200 * (v5 == ((v2 + 1987) ^ 0x15D7))) ^ v2)))();
}

uint64_t sub_1969A6C50()
{
  v7 = v6 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v8 + ((v4 + 2080) ^ 0xB11) - v3;
  v10 = v2 + v9;
  v11 = v2 + v8 + 1;
  v12 = v0 + v9;
  v13 = v0 + v8 + 1;
  v14 = v8 + v1 + 5;
  v16 = v11 > v6 && v10 < v7;
  v18 = v13 > v6 && v12 < v7 || v16;
  if (v14 <= v6 || v14 - v3 >= v7)
  {
    v20 = v18;
  }

  else
  {
    v20 = 1;
  }

  return (*(v5 + 8 * ((506 * v20) ^ v4)))();
}

uint64_t sub_1969A6D9C@<X0>(uint64_t a1@<X1>, char a2@<W8>)
{
  v8 = v2 - 1;
  STACK[0x4C8] = v8;
  *(a1 + v8) = ((a2 + 1) ^ v4) * (a2 + 18);
  return (*(v7 + 8 * (((v8 == v5) * v6) ^ v3)))();
}

uint64_t sub_1969A6E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  v42 = &a33 + a32;
  v43 = (*(a5 + 96) - ((2 * *(a5 + 96)) & 0x20) + 19);
  if (v43 == 21)
  {
    v49 = (v33 + v37 + 1493276708);
    v50 = ((*v49 ^ v36) << 24) | ((v49[1] ^ (v39 - 79)) << 16) | ((v49[2] ^ v36) << 8);
    LODWORD(v49) = (v50 | v49[3] ^ v36) + v35 - 2 * ((v50 | v49[3] ^ v36) & (v35 + 4) ^ (v49[3] ^ v36) & 4);
    v51 = (2 * (v38 & 0x59019824)) & 0x30 ^ v38 & 0x59019824 ^ ((2 * (v38 & 0x24)) & 0x8C | 0x633CF340);
    v52 = (4 * v51) & 0xB2540170 ^ v51 ^ ((4 * v51) ^ 0x2EE2C400) & 0x4D28F684;
    v53 = (v41 + 4) & 0x34A3DA10 ^ 0x7DABFEA4;
    v54 = v52 ^ (16 * v52) & v41 ^ ((16 * v52) ^ 0x36CF2400) & v53 ^ 0x637CFB34;
    v55 = (16 * v53) & v41 ^ 0x92870834 ^ ((16 * v53) ^ 0x2D709740) & v53;
    v56 = (v54 << 8) & (v41 - 112) ^ v54 ^ ((v54 << 8) ^ 0xD7097400) & v55;
    v57 = (v56 << 16) ^ 0x9740000;
    *&v42[4 * ((((2 * ((v56 << 16) & 0x32D70000 ^ v56 ^ v57 & ((v55 << 8) & (v41 - 2416) ^ 0x20D60000 ^ ((v55 << 8) ^ 0x57090000) & v55))) ^ 0x59019824) >> 2) ^ 0x39FE9D4D)] = v49;
    v58 = *(v34 + 8 * ((74 * ((v37 + 1493276712) > 0x3F)) ^ v39));
    return v58(1493276712, v58, (v39 + 54), v40 + 16, v57, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }

  else
  {
    if (v43 != 20)
    {
      JUMPOUT(0x1968D599CLL);
    }

    v44 = (a8 + 326);
    v45 = *(v33 + 1493276708 + v44 - 1493282375) ^ v36;
    v46 = ((*(v37 + 1493276708 + v33 + 2) ^ v36) << 16) | ((*(v37 + 1493276708 + v33 + 3) ^ v36) << 24) | v45 | ((*(v37 + 1493276708 + v33 + 1) ^ v36) << 8);
    *v42 = v46 + v35 - 2 * (v46 & (v35 + 16) ^ v45 & 0x10);
    v47 = *(v34 + 8 * ((3842 * ((v37 + 1493276712) < 0x40)) ^ v44));
    return v47(v47, 0, 0, v44, 1493276708, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }
}

void sub_1969A6EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v30 - 136) = v28 + 1283153057 * ((((v30 - 144) | 0xF89FB57E) - ((v30 - 144) & 0xF89FB57E)) ^ 0xB747B649) + 3553;
  *(v30 - 128) = v29;
  *(v30 - 120) = &a14;
  *(v30 - 144) = &a14;
  *(v30 - 112) = &a28;
  *(v30 - 104) = a12;
  JUMPOUT(0x1969A6F10);
}

uint64_t sub_1969A7050()
{
  v2 = LODWORD(STACK[0x3A0]);
  if (v2 == 41591)
  {
    return (*(STACK[0x248] + 8 * ((v1 - 2168) ^ (v0 != -1720256289))))();
  }

  if (v2 == 26075)
  {
    STACK[0x8C8] = STACK[0x618] + STACK[0x310];
    JUMPOUT(0x1969A713CLL);
  }

  if (v2 != 45445)
  {
    JUMPOUT(0x1969A7184);
  }

  return (*(STACK[0x248] + 8 * ((((v1 + 1800114571) & 0x94B466DB ^ 0x1941) * (v0 == -1720256301)) ^ (v1 - 1785))))();
}

uint64_t fp_dh_11b645fc146c614bc68e4723aeb05960(uint64_t result)
{
  v1 = 41 * ((((2 * result) | 0x9C) - result + 50) ^ 0x85);
  if ((*(result + 8) - v1) == 46 && ((*result - v1) & 0xFE) == 68)
  {
    v3 = 1906281716;
  }

  else
  {
    v3 = 1906239629;
  }

  *(result + 12) = v3;
  return result;
}

uint64_t fp_dh_bdbc452075bd830a21a1db98625499a2(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 48) = *(a2 + 8);
  return 0;
}

uint64_t sub_1969A7394@<X0>(int a1@<W8>)
{
  v8 = v7 + v4;
  v9 = v5 - v4 + v3 + ((a1 - 28) | 0x10u) - 3281;
  v10 = v5 + v3 + 1;
  v11 = v5 - v4 + ((a1 + 1122746655) & 0xBD143A9F ^ 0x89FLL);
  v12 = v1 + v11;
  v13 = v5 + 2;
  v14 = v1 + v13;
  v15 = v2 + v11;
  v16 = v2 + v13;
  v18 = v10 > v7 && v9 < v8;
  if (v14 > v7 && v12 < v8)
  {
    v18 = 1;
  }

  v21 = v16 > v7 && v15 < v8 || v18;
  return (*(v6 + 8 * ((60 * (v21 ^ 1)) ^ a1)))();
}

uint64_t sub_1969A7468(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  v4 = (*(v3 + 8 * (v2 + 5542)))(16, 0x20040A4A59CD2) == 0;
  return (*(v3 + 8 * ((v4 * (25 * (v2 ^ 0x5EC) + ((v2 + 2357) ^ 0xFFFFE988))) ^ v2)))();
}

void sub_1969A753C()
{
  v1 = STACK[0xA80];
  STACK[0x300] = ((STACK[0xA80] + 4) ^ 0xFFEFF4F6D76C7F3FLL) + 0x2D756BFD78B7CDFFLL + ((2 * (STACK[0xA80] + 4)) & 0xFFDFE9EDAED8FE7ELL);
  v2 = STACK[0xAA0] + (((((v0 + 591748238) & 0xDCBAB2DF) - 3201) | 0xA14) ^ 0xE18);
  STACK[0x2F0] = (v2 ^ 0xFD6D66FC757E6FFELL) + 0x2FF7F9F7DAA5DD40 + ((2 * v2) & 0xFADACDF8EAFCDFFCLL);
  STACK[0x2E0] = ((STACK[0xAC0] + 4) ^ 0xBDE566F576ACEF7FLL) + 0x6F7FF9FED9775DBFLL + ((2 * (STACK[0xAC0] + 4)) & 0x7BCACDEAED59DEFELL);
  STACK[0x2D0] = ((STACK[0xAE0] + 4) ^ 0x7D65E2F4FC37EF7FLL) - 0x50008200AC13A241 + ((2 * (STACK[0xAE0] + 4)) & 0xFACBC5E9F86FDEFELL);
  v3 = STACK[0xB00];
  STACK[0x2C0] = ((STACK[0xB00] + 4) ^ 0xBD776FF57F34ED7FLL) + 0x6FEDF0FED0EF5FBFLL + ((2 * (STACK[0xB00] + 4)) & 0x7AEEDFEAFE69DAFELL);
  v4 = STACK[0xB10];
  STACK[0x2A0] = ((STACK[0xB10] + 4) ^ 0xBF7D60FC7E6DCF7FLL) + 0x6DE7FFF7D1B67DBFLL + ((2 * (STACK[0xB10] + 4)) & 0x7EFAC1F8FCDB9EFELL);
  v5 = STACK[0xA50] + 10;
  STACK[0x280] = ((STACK[0xA50] + 4) ^ 0xFD7576FD75347D7ELL) + 0x2FEFE9F6DAEFCFC0 + ((2 * (STACK[0xA50] + 4)) & 0xFAEAEDFAEA68FAFCLL);
  STACK[0x270] = ((STACK[0xA40] + 4) ^ 0x7F77E0FFFD36EFBFLL) - 0x5212800BAD12A281 + ((2 * (STACK[0xA40] + 4)) & 0xFEEFC1FFFA6DDF7ELL);
  STACK[0x260] = ((STACK[0xA30] + 4) ^ 0xED6FFAF7DA267D3ELL) + 0x3FF565FC75FDD000 + ((2 * (STACK[0xA30] + 4)) & 0xDADFF5EFB44CFA7CLL);
  STACK[0x250] = ((STACK[0xA20] + 4) ^ 0x2D6FF0F47CF5EDFELL) - 0xA90002CD1A0C0 + ((2 * (STACK[0xA20] + 4)) & 0x5ADFE1E8F9EBDBFCLL);
  STACK[0x230] = ((STACK[0xA10] + 4) ^ 0x6DFF77FCF464EDFFLL) - 0x409A1708A440A0C1 + ((2 * (STACK[0xA10] + 4)) & 0xDBFEEFF9E8C9DBFELL);
  STACK[0x210] = ((STACK[0xB30] + 4) ^ 0x6F6FE0F6FD37FD7FLL) - 0x420A8002AD13B041 + ((2 * (STACK[0xB30] + 4)) & 0xDEDFC1EDFA6FFAFELL);
  STACK[0x200] = ((v1 + 6) ^ 0x6EED8F765F7CFDB9) - 0x8986425554A811 + ((2 * (v1 + 6)) & 0xDDDB1EECBEF9FB72);
  STACK[0x2B0] = v3 + 10;
  STACK[0x290] = v4 + 10;
  STACK[0x310] = v5;
  STACK[0x390] = STACK[0x8E8];
  STACK[0x380] = STACK[0x6C8];
  STACK[0x370] = STACK[0x7D8];
  STACK[0x360] = STACK[0x748];
  STACK[0x400] = STACK[0x550];
  STACK[0x3E0] = STACK[0x950];
  STACK[0x3C0] = STACK[0x618];
  STACK[0x350] = STACK[0x4F0];
  STACK[0x340] = STACK[0x7A0];
  STACK[0x330] = STACK[0x600];
  STACK[0x320] = STACK[0x818];
  STACK[0x3B0] = STACK[0x598];
  LODWORD(STACK[0x3F0]) = LOWORD(STACK[0x9EE]);
  LODWORD(STACK[0x410]) = LOWORD(STACK[0x9DE]);
  LODWORD(STACK[0x3A0]) = LOWORD(STACK[0x9CA]);
  LODWORD(STACK[0x3D0]) = LOWORD(STACK[0x986]);
  JUMPOUT(0x196A17488);
}

uint64_t fp_dh_208bd91678a6314b3935dcb620708965(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) ^ (455395931 * ((a1 & 0x40CA521E | ~(a1 | 0x40CA521E)) ^ 0xC9C4F32D));
  v4 = *a1;
  v3 = v1 + 998242381 * ((&v3 - 1558211423 - 2 * (&v3 & 0xA31F94A1)) ^ 0x9700C77) + 690844124;
  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 444575770) + 8 * v1 - 3556556820))(&v3);
}

uint64_t fp_dh_6a163eaca6022b0c7d84cf46f2165069(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = 33;
  *(a1 + 72) = *(a2 + 4);
  *(a1 + 80) = *(a2 + 8);
  return 0;
}

void fp_dh_7aa89a84ed7d06a0492dd999067b40f7(uint64_t a1)
{
  v1 = *(a1 + 20) - 1283153057 * (((a1 | 0x465660A0) - a1 + (a1 & 0xB9A99F5F)) ^ 0x98E6397);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_1969A77B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = STACK[0x36C];
  v67 = (v65 ^ 0x9976F8DB) + a65;
  STACK[0x850] = v67;
  return (*(a6 + 8 * ((v66 + 1006) ^ ((8 * (v67 <= a35)) | (16 * (v67 <= a35))))))();
}

uint64_t sub_1969A7894@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v8 = v5 - 1;
  *(v7 + v8) = *(v3 + (v8 & 0xF)) ^ *(a2 + v8) ^ *(v4 + (v8 & 0xF)) ^ (43 * (v8 & 0xF)) ^ *((v8 & 0xF) + v2 + 3);
  return (*(v6 + 8 * (((v8 == 0) * (a1 ^ 0x1EA5)) ^ (a1 + 516))))();
}

uint64_t sub_1969A78F8(uint64_t a1, int a2)
{
  v6 = (v4 + 32);
  v7 = (a1 + 32);
  v8 = *v6;
  *(v7 - 1) = *(v6 - 1);
  *v7 = v8;
  return (*(v5 + 8 * (((v3 == 32) * a2) ^ v2)))();
}

uint64_t sub_1969A795C(__n128 a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = (a4 + 4 * v7);
  *v10 = a1;
  v10[1] = a1;
  return (*(v9 + 8 * (((v7 + v6 - 3227 != v8) * a6) ^ a3)))();
}

void sub_1969A7A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x7D0]) = v6;
  STACK[0x460] = *(a6 + 8 * (v7 - 5650));
  JUMPOUT(0x1968C4598);
}

void sub_1969A7B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, int a21, int a22, int a23, unsigned __int8 a24, int a25, unsigned __int8 a26, __int16 a27, unsigned __int8 a28, int a29)
{
  *(v29 - 124) = (a22 ^ 0xBBB82994) & (a24 ^ 0xFFFFFFD4) ^ ((a29 - 1625) ^ 0xF) & a24 ^ 0x664EAFF0;
  *(v29 - 132) = (((a25 ^ 0x8B) << 8) | (a20 << 24) | a26 | ((a28 ^ 0x21) << 16)) ^ 0x12ACAC98;
  *(v29 - 128) = a21 ^ 0x4DB8CB85;
  JUMPOUT(0x1968CE6C0);
}

void sub_1969A7C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  *(v30 - 136) = v29 + ((((v30 - 144) | 0x7D2FD206) - (v30 - 144) + ((v30 - 144) & 0x82D02DF8)) ^ 0x32F7D131) * v26 + 2958;
  *(v30 - 144) = &a14;
  *(v30 - 128) = v28;
  *(v30 - 120) = &a14;
  *(v30 - 112) = &a26;
  *(v30 - 104) = a12;
  (*(v27 + 8 * (v29 ^ 0x1E2D)))(v30 - 144);
  JUMPOUT(0x19699D7ACLL);
}

void sub_1969A7CD8()
{
  v2 = *(STACK[0x578] + 20);
  if (v2)
  {
    if (v2 == 1)
    {
      (*(v0 + 8 * (v1 + 3283)))(STACK[0x4E8], 0, 32);
      JUMPOUT(0x1969A07ECLL);
    }

    JUMPOUT(0x19699F604);
  }

  JUMPOUT(0x1969A7D60);
}

uint64_t sub_1969A7DA0()
{
  if (v0 == 1906281716)
  {
    v4 = STACK[0x680];
    v5 = *(STACK[0x680] + 8);
    v6 = STACK[0x8A0];
    v6[1] = v5;
    *v6 = *v4;
    return (*(v1 + 8 * (((v5 == 0) * (v2 - 8426 + 2662 * (v2 ^ 0xE1E))) ^ (v2 - 828))))();
  }

  else if (v0 == 1906239664)
  {
    return (*(v1 + 8 * (((*(STACK[0x6E8] + 8) == 0) * (((STACK[0x228] - 2316) ^ 0x13C5) - 5720)) ^ (STACK[0x228] + 1696))))();
  }

  else
  {
    return (*(v1 + 8 * (((((v2 - 1) ^ (*(STACK[0x8A0] + 24) == 0)) & 1) * (((v2 + 1253247444) & 0xB54CED1F) - 869)) ^ (v2 - 881))))();
  }
}

uint64_t sub_1969A7EB0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52)
{
  v54 = *a1;
  if (v53)
  {
    v55 = v54 == 0;
  }

  else
  {
    v55 = 1;
  }

  v56 = v55;
  return (*(a52 + 8 * ((((v52 ^ v56) & 1) * ((283 * (v52 ^ 0xC70)) ^ 0x19CF)) ^ v52)))(v54, a2, a3, a4, a5);
}

void sub_1969A85B8(int a1@<W8>)
{
  v2 = (((a1 ^ 0x61F8754B) - 1643672907) ^ ((a1 ^ 0xE3A91794) + 475457644) ^ ((a1 ^ 0xFE1665B4) + 32086604)) + 1206762995 + (((LODWORD(STACK[0x2F4]) ^ 0x6B20C7D5) - 1797310421) ^ ((LODWORD(STACK[0x2F4]) ^ 0xD7C0B22D) + 675237331) ^ ((v1 ^ 0xC0A766C1 ^ LODWORD(STACK[0x2F4])) + 1062767981));
  LODWORD(STACK[0x2F4]) = v2 ^ ((v2 ^ 0x29E72782) - 1723369631) ^ ((v2 ^ 0x4EABD869) - 32798580) ^ ((v2 ^ 0xF7EDA701) + 1196292068) ^ ((v2 ^ 0xDFFEF7F7) + 1868474134) ^ 0x3318A876;
  JUMPOUT(0x1969A8704);
}

void sub_1969A8DD0()
{
  v0 = STACK[0x548];
  *v0 = 0u;
  v0[1] = 0u;
  JUMPOUT(0x1969A8DECLL);
}

uint64_t sub_1969A8E34@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  STACK[0x888] = v2;
  v3 = STACK[0x7F8];
  STACK[0x890] = STACK[0x7F8];
  return (*(a1 + 8 * (((v2 - v3 > 9) * ((a2 - 208) ^ 0x16E)) ^ a2)))();
}

uint64_t sub_1969A8EBC(uint64_t a1, int a2)
{
  v7 = v2 + 929;
  v8 = *(v3 + 48 * v5 + 36);
  v10 = (v8 + a2) < 0x80000003 && v8 != (((v7 - 849) | 0x901) ^ (v6 - 1711));
  return (*(v4 + 8 * ((v10 * (v7 ^ 0x114C)) ^ v7)))();
}

void sub_1969A8F10(int a1@<W8>)
{
  v7 = v1 - a1;
  *(v6 - 208) = (v1 + 328884062) ^ (((-459827991 - ((v6 - 208) | 0xE49794E9) + ((v6 - 208) | 0x1B686B16)) ^ 0x7E72905D) * v3);
  (*(v5 + 8 * (v1 - 1906232786)))(v6 - 208);
  if (((v2 - v1) | (v1 - v2)) > v7 - 6140)
  {
    v8 = 9;
  }

  else
  {
    v8 = 10;
  }

  LOBYTE(STACK[0x1A90]) = (v8 + (v1 ^ 0xCF)) ^ (127 * ((v6 + 48 - 2 * ((v6 + 48) & 0xF3) - 13) ^ 0xF1));
  *(v6 - 204) = v1 - 1906234314 + 1575331711 * ((v6 - 208 - 2 * ((v6 - 208) & 0x4787E9F3) + 1200089587) ^ 0x2BDC7CF1);
  *(v6 - 200) = &STACK[0x5FC];
  *(v6 - 192) = &STACK[0x524];
  (*(v5 + 8 * (v1 ^ (v4 + 2844))))(v6 - 208);
  JUMPOUT(0x19694B388);
}

uint64_t sub_1969A9024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = ((((v18 - 144) | 0xF8D7078B) - ((v18 - 144) & 0xF8D7078B)) ^ 0x41FF24BD) * v15;
  *(v18 - 128) = ((v13 + v16) ^ 0x7EFFBB27) - v19 + v17 - 5610 - 1377899094 + ((v17 - 33595883) & (2 * (v13 + v16)));
  *(v18 - 136) = a13;
  *(v18 - 144) = (v17 - 2710) ^ v19;
  v20 = (*(v14 + 8 * (v17 + 621)))(v18 - 144);
  return (*(v14 + 8 * ((166 * (*(v18 - 140) == 1573492468)) ^ v17)))(v20);
}

uint64_t sub_1969A90EC(__n128 a1)
{
  v4[-1] = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v1) ^ v2)))();
}

uint64_t sub_1969A9114@<X0>(uint64_t a1@<X2>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unint64_t a32, _BYTE *a33, uint64_t a34)
{
  v37 = a2 + 254;
  v38 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((a2 + 254) ^ 0xC29));
  v39 = *(v38 + (v35[11] ^ 0x1ELL));
  v40 = *(v38 + (v35[3] ^ 0xCCLL));
  v41 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 ^ 0xFE0)) - 12;
  v42 = -109 * v41[v35[10] ^ 0x2CLL] + 46;
  v43 = v42 & 0x83 ^ (v37 - 35);
  v44 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 ^ 0xD4A));
  v45 = *(v44 + (v35[12] ^ 0xD6));
  v46 = (((v42 ^ (2 * ((v42 ^ 0x7E) & (2 * ((v42 ^ 0x7E) & (2 * ((v42 ^ 0x7E) & (2 * ((v42 ^ 0x7E) & (2 * ((v42 ^ 0x7E) & (2 * ((v42 ^ 0x7E) & (2 * v42) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43)) ^ v43))) << 8) ^ 0xB678D19) & (v39 ^ 0xFFFFF40) | v39 & 0xE6;
  v47 = *(v38 + (v35[15] ^ 0xEDLL));
  v48 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 ^ 0xD00));
  v49 = *(v44 + (v35[8] ^ 0xFLL)) << 24;
  v50 = (v46 ^ 0xB29F386B) & (v49 ^ 0xE3FFFFFF);
  v51 = v49 & 0x46000000;
  LOBYTE(v49) = -109 * v41[v35[6] ^ 0xELL] - 63;
  v52 = v49 & 0x28 ^ 0xA6;
  LOBYTE(v49) = v49 ^ (2 * ((v49 ^ 0x6C) & (2 * ((v49 ^ 0x6C) & (2 * ((v49 ^ 0x6C) & (2 * ((v49 ^ 0x6C) & (2 * ((v49 ^ 0x6C) & (2 * v52) ^ v52)) ^ v52)) ^ v52)) ^ v52)) ^ v52));
  v53 = ((v49 << 8) ^ 0xAAFF2017) & ((*(v48 + (v35[5] ^ 0x87)) << 16) ^ 0xAAC57017) | (v49 << 8) & 0x8FFF;
  v54 = -109 * v41[v35[2] ^ 0x8DLL] - 48;
  v55 = v54 & 0xA5 ^ 0x64;
  v56 = (v54 ^ (2 * ((v54 ^ 0x5C) & (2 * ((v54 ^ 0x5C) & (2 * ((v54 ^ 0x5C) & (2 * ((v54 ^ 0x5C) & (2 * ((v54 ^ 0x5C) & (2 * (v54 & (2 * v54) & 0x3A ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55)) ^ v55))) << 8;
  v57 = (*(v44 + (*v35 ^ 0x68)) ^ 0x6A) << 24;
  v58 = v57 & 0x47000000 ^ 0x14462AA6 ^ ((v56 & 0x9100 | (v56 ^ 0xD6FF0AFF) & ((((*(v48 + (v35[1] ^ 0xBCLL)) << 16) ^ 0x444308B9) & (v40 | 0x44FF0800) | v40 & 0x46) ^ 0x920266C7)) ^ 0x6E8AA6CF) & (v57 ^ 0xC7FFFFFF);
  v59 = *(v48 + (v35[9] ^ 0xE6)) << 16;
  v60 = (v51 ^ 0xA23E64D2 ^ v50) & (v59 ^ 0xFF5BFFFF);
  v61 = v59 & 0x390000;
  v62 = v35[13] ^ 0xCALL;
  v63 = v60 ^ v61;
  *(v36 - 176) = v60 ^ v61;
  LOBYTE(v60) = *(v48 + v62);
  LOBYTE(v62) = -109 * v41[v35[14] ^ 0x3BLL] - 83;
  LODWORD(v41) = (*(v44 + (v35[4] ^ 0x1BLL)) ^ 0x19) << 24;
  v64 = ((((v60 ^ 0x4A) << 16) | 0x6CAFEBBB) ^ (((((v45 ^ 0x54) << 24) ^ 0xB378CA49) & (v47 ^ 0xFF7EEA7D) | v47 & 0xB6) ^ 0x7AD72176) & ~((v60 ^ 0x4A) << 16)) + (v62 << 8);
  v65 = *(v38 + (v35[7] ^ 0xD3));
  v66 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 ^ 0xDA7));
  LODWORD(v38) = *(v66 + 4 * (v45 ^ 0x6Eu));
  v67 = (v53 ^ 0x5BB229A9) & (v41 ^ 0xFFFFFFBF) ^ (v41 | 0xF1FD56BE) | v65 ^ 0xBE;
  v68 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3400)) - 4;
  v69 = v38 ^ *&v68[4 * (v60 ^ 0x58)] ^ 0xD5EBE623;
  v70 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3038)) - 8;
  v71 = *&v70[4 * (v62 ^ 0xC3)];
  HIDWORD(v72) = v71 ^ 0x22222222;
  LODWORD(v72) = v71 ^ 0x3FE69400;
  v73 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3150));
  v74 = (v69 - ((2 * v69) & 0xC206AA06) + 1627608323) ^ *(v73 + 4 * (v47 ^ 0xCB)) ^ (v72 >> 10);
  v235 = __PAIR64__(v58, v64);
  v75 = v58 ^ (v74 - ((2 * v74) & 0x597FE452) - 1396706775);
  HIDWORD(v234) = v67;
  v76 = v75 ^ v67;
  LODWORD(v38) = ((v75 ^ v67) - ((2 * (v75 ^ v67)) & 0x16C206E8) + 190907252) ^ v63;
  v77 = v38 ^ v64 ^ 0x1E4BDBCC;
  LODWORD(v62) = *&v70[4 * (BYTE1(v77) ^ 0xA4)];
  HIDWORD(v72) = v62 ^ 0x22222222;
  LODWORD(v72) = v62 ^ 0x3FE69400;
  v78 = ((v72 >> 10) - ((2 * (v72 >> 10)) & 0xB5325320) + 1519987088) ^ *&v68[4 * (BYTE2(v77) ^ 0xC7)];
  v79 = (v78 - ((2 * v78) & 0xC206AA06) + 1627608323) ^ *(v73 + 4 * ((v38 ^ v64) ^ 0x92u));
  HIDWORD(v233) = v38 ^ v64 ^ 0x3144AF1D;
  LODWORD(v234) = v75;
  LODWORD(v48) = v75 ^ *(v66 + 4 * (((v38 ^ v64) >> 24) ^ 0x89)) ^ (v79 - ((2 * v79) & 0x1EE59F66) - 1888301133);
  HIDWORD(v232) = v38 ^ 0x44C3A636;
  LODWORD(v233) = v76 ^ 0x5044A9A8;
  v80 = v48 ^ v76 ^ 0x5044A9A8 ^ 0xF864C9F6;
  HIDWORD(v231) = v80 ^ v38 ^ 0x44C3A636;
  LODWORD(v232) = v48 ^ v76 ^ 0x5044A9A8;
  LODWORD(v38) = *&v70[4 * (((WORD2(v231) ^ 0xB1CB ^ WORD2(v233)) >> 8) ^ 0x43)];
  HIDWORD(v72) = v38 ^ 0x22222222;
  LODWORD(v72) = v38 ^ 0x3FE69400;
  LODWORD(v38) = *(v73 + 4 * (BYTE4(v231) ^ 0xCB ^ BYTE4(v233) ^ 0x1Du)) ^ *&v68[4 * (((HIDWORD(v231) ^ 0x88C8B1CB ^ HIDWORD(v233)) >> 16) ^ 0x82)] ^ 0x3B9A7C93 ^ (v72 >> 10);
  HIDWORD(v230) = (v38 - ((2 * v38) & 0x1EE59F66) - 1888301133) ^ *(v66 + 4 * (((HIDWORD(v231) ^ 0x88C8B1CB ^ HIDWORD(v233)) >> 24) ^ 0x6A)) ^ v48;
  LODWORD(v231) = HIDWORD(v231) ^ 0x88C8B1CB ^ HIDWORD(v233);
  LODWORD(v230) = v80 ^ HIDWORD(v230) ^ 0xC3AD36D6;
  HIDWORD(v229) = HIDWORD(v231) ^ 0x88C8B1CB ^ v230;
  v81 = HIDWORD(v229) ^ 0x144DB8F9 ^ v231;
  v82 = *(v73 + 4 * (v81 ^ 0xC4u)) ^ *(v66 + 4 * (HIBYTE(v81) ^ 0xA4));
  LODWORD(v229) = v81;
  v83 = *&v70[4 * (((v81 ^ 0x804B) >> 8) ^ 0xD0)];
  HIDWORD(v72) = v83 ^ 0x22222222;
  LODWORD(v72) = v83 ^ 0x3FE69400;
  v84 = (v72 >> 10) ^ *&v68[4 * (BYTE2(v81) ^ 0x5A)] ^ ((v82 ^ 0xEE719AB0) - 2 * ((v82 ^ 0xEE719AB0) & 0x5A992999 ^ v82 & 9) + 1519987088);
  LODWORD(v62) = v80 ^ v84;
  LODWORD(v228) = HIDWORD(v229) ^ 0x144DB8F9 ^ v80 ^ v84;
  v85 = v81 ^ 0x1C92804B ^ v228;
  v86 = *&v70[4 * (BYTE1(v85) ^ 0xB5)];
  v87 = HIDWORD(v230) ^ 0xC3AD36D6 ^ v84;
  HIDWORD(v72) = v86 ^ 0x22222222;
  LODWORD(v72) = v86 ^ 0x3FE69400;
  v88 = ((v72 >> 10) - ((2 * (v72 >> 10)) & 0x1EE59F66) - 1888301133) ^ *(v66 + 4 * (HIBYTE(v85) ^ 0x49));
  v89 = (v88 - ((2 * v88) & 0xB5325320) + 1519987088) ^ *&v68[4 * (BYTE2(v85) ^ 0xD1)];
  v227 = __PAIR64__(v85, v87);
  v90 = v87 ^ *(v73 + 4 * (v81 ^ 0x4B ^ v228 ^ 0xC1u)) ^ (v89 - ((2 * v89) & 0xC206AA06) + 1627608323);
  v91 = v90 ^ HIDWORD(v229) ^ 0x144DB8F9 ^ v85;
  v92 = *(v73 + 4 * (v91 ^ 0x18u)) ^ *(v66 + 4 * (HIBYTE(v91) ^ 0x90)) ^ 0xEE719AB0;
  HIDWORD(v225) = v91;
  LODWORD(v38) = v91 ^ 0x28C17697;
  LODWORD(v47) = *&v70[4 * (((v91 ^ 0x7697) >> 8) ^ 0xD0)];
  HIDWORD(v72) = v47 ^ 0x22222222;
  LODWORD(v72) = v47 ^ 0x3FE69400;
  v93 = (v92 + 1519987088 + (~(2 * v92) | 0x4ACDACDF) + 1) ^ *&v68[4 * (BYTE2(v91) ^ 9)] ^ (v72 >> 10);
  HIDWORD(v228) = v62;
  LODWORD(v225) = v93 ^ v62;
  v94 = v93 ^ v62 ^ 0x8DF38B2;
  LODWORD(v226) = v90 ^ HIDWORD(v229) ^ 0x144DB8F9;
  HIDWORD(v224) = v226 ^ v94;
  v95 = *&v70[4 * (((v38 ^ v226 ^ v94 ^ 0xAA49) >> 8) ^ 0x69)];
  HIDWORD(v72) = v95 ^ 0x22222222;
  LODWORD(v72) = v95 ^ 0x3FE69400;
  LODWORD(v62) = *&v68[4 * (((v38 ^ HIDWORD(v224) ^ 0x3B3DAA49) >> 16) ^ 0x2D)] ^ *(v73 + 4 * ((v38 ^ BYTE4(v224) ^ 0x49) ^ 0x1Fu)) ^ 0x3B9A7C93 ^ (v72 >> 10);
  HIDWORD(v226) = v90;
  HIDWORD(v223) = v90 ^ v93;
  LODWORD(v224) = v38 ^ v226 ^ v94 ^ 0x3B3DAA49;
  LODWORD(v223) = (v62 - 1888301133 + (~(2 * v62) | 0xE11A6099) + 1) ^ *(v66 + 4 * (BYTE3(v224) ^ 0x21)) ^ v90 ^ v93;
  HIDWORD(v222) = v223 ^ 0xCD000000 ^ v94;
  v96 = HIDWORD(v222) ^ 0x7B000000 ^ v38;
  v97 = *&v70[4 * (((v223 ^ v94 ^ v38) >> 8) ^ 0xD0)];
  HIDWORD(v72) = v97 ^ 0x22222222;
  LODWORD(v72) = v97 ^ 0x3FE69400;
  v98 = *(v73 + 4 * ((v223 ^ v94 ^ v38) ^ 0x8Fu)) ^ *&v68[4 * (BYTE2(v96) ^ 0xC8)] ^ 0x3B9A7C93 ^ (v72 >> 10);
  LODWORD(v38) = v223 ^ 0xCD000000 ^ *(v66 + 4 * (HIBYTE(v96) ^ 0xB8)) ^ (v98 - ((2 * v98) & 0x1EE59F66) - 1888301133);
  v99 = v38 ^ v226 ^ v94 ^ 0x3B3DAA49;
  v100 = v99 ^ v96 ^ 0x5C014EEB;
  v101 = *&v70[4 * (BYTE1(v100) ^ 0x69)];
  HIDWORD(v72) = v101 ^ 0x22222222;
  LODWORD(v72) = v101 ^ 0x3FE69400;
  v102 = *&v68[4 * (BYTE2(v100) ^ 0x32)] ^ *(v73 + 4 * ((v223 ^ *(v66 + 4 * (HIBYTE(v96) ^ 0xB8)) ^ (v98 - ((2 * v98) & 0x66) - 77) ^ v226 ^ v94 ^ 0x49 ^ v96) ^ 0x3Au)) ^ 0x3B9A7C93 ^ (v72 >> 10);
  LODWORD(v221) = v99 ^ v96;
  HIDWORD(v221) = v38;
  v103 = v38 ^ *(v66 + 4 * (((v99 ^ v96) >> 24) ^ 0xCA)) ^ (v102 - ((2 * v102) & 0x1EE59F66) - 1888301133);
  LODWORD(v220) = v38 ^ HIDWORD(v222) ^ 0x7B000000;
  LODWORD(v222) = v96;
  v104 = v103 ^ v220 ^ 0x2D16C792 ^ v96 ^ 0xCED813D9;
  LODWORD(v38) = *&v70[4 * (BYTE1(v104) ^ 0x4A)];
  LODWORD(v219) = v103 ^ v220 ^ 0x2D16C792 ^ v96 ^ 0x8B0889B7;
  HIDWORD(v72) = v38 ^ 0x22222222;
  LODWORD(v72) = v38 ^ 0x3FE69400;
  v105 = ((v72 >> 10) - ((2 * (v72 >> 10)) & 0x1EE59F66) - 1888301133) ^ *(v66 + 4 * (((v103 ^ v220 ^ 0x2D16C792 ^ v96) >> 24) ^ 0x33));
  v106 = (v105 - ((2 * v105) & 0xB5325320) + 1519987088) ^ *&v68[4 * (BYTE2(v104) ^ 0x18)];
  LODWORD(v68) = (v106 - ((2 * v106) & 0xC206AA06) + 1627608323) ^ *(v73 + 4 * ((v103 ^ v220 ^ 0x92 ^ v96) ^ 0x38u));
  v107 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3201)) - 12;
  v108 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 ^ 0xF94)) - 4;
  v109 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 ^ 0xD3E));
  v218 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3263)) - 4;
  v216 = v109;
  v217 = v108;
  v238 = (v108[v34[15] ^ 0x9ELL] ^ 0x3A | ((v107[v34[13] ^ 0xC7] ^ 0x7D) << 16) | ((v218[v34[12] ^ 0x18] ^ 0xA) << 24) | ((*(v109 + (v34[14] ^ 0x8DLL)) ^ 0xE6) << 8)) ^ 0x7C7C7CB5;
  HIDWORD(v215) = (((*(v36 - 164) ^ 0x5E1AF60B) + 167155363) ^ ((*(v36 - 164) ^ 0x83B32E9F) - 731951561) ^ ((*(v36 - 164) ^ 0xE0D07D57) - 1220796929)) - 1439708342;
  LODWORD(v215) = *(v36 - 176) ^ 0xF3292CF3;
  HIDWORD(v214) = v48 ^ 0x9F79C814;
  LODWORD(v214) = HIDWORD(v222) ^ 0x7B000000 ^ v226 ^ v94 ^ 0x3B3DAA49;
  LODWORD(v213) = v99 ^ 0x318B55BD;
  HIDWORD(v213) = v68 ^ v220 ^ 0x2D16C792;
  HIDWORD(v212) = v99 ^ 0x1F6DFFAE;
  HIDWORD(v219) = v103 ^ v220 ^ 0x2D16C792;
  HIDWORD(v211) = HIDWORD(v219) ^ v99 ^ 0xA623E46C ^ HIDWORD(v213);
  LODWORD(v212) = HIDWORD(v219) ^ v99;
  LODWORD(v48) = (v108[v34[11] ^ 0xEALL] ^ 0x6E | ((v107[v34[9] ^ 0xD2] ^ 0xF5) << 16) | ((v218[v34[8] ^ 0x83] ^ 0x47) << 24) | ((*(v109 + (v34[10] ^ 0x56)) ^ 0x5A) << 8)) ^ 0x7C7C7C7C;
  v237 = (v108[v34[7] ^ 0x74] ^ 0x70 | ((v218[v34[4] ^ 6] ^ 0xE) << 24) | ((v107[v34[5] ^ 0x46] ^ 0x13) << 16) | ((*(v109 + (v34[6] ^ 0xCBLL)) ^ 0xCE) << 8)) ^ 0x7C7C7C7C;
  v110 = (v108[v34[3] ^ 0xEALL] ^ 0x6E | ((v218[*v34 ^ 0x1BLL] ^ 7) << 24) | ((*(v109 + (v34[2] ^ 0x13)) ^ 0x50) << 8) | ((v107[v34[1] ^ 0x88] ^ 0x63) << 16)) ^ 0x7C7C7C7C;
  HIDWORD(v220) = v103;
  LODWORD(v211) = v68 ^ v103;
  *(v36 - 164) = 0;
  HIDWORD(a34) = 0;
  LOBYTE(v106) = 8 * (a32 & 7);
  v111 = __ROR8__(a32 & (v37 ^ 0xFFFFFFFFFFFFF25DLL), 8) + ((41 * ((v37 - 204) ^ 0xCFF)) ^ 0x568FD0F9DF82F7F5);
  v112 = v111 ^ 0x315FDBFEB957105ELL;
  v111 ^= 0x85215C3045409F44;
  v113 = (v111 + (v112 >> 8) + (v112 << 56)) ^ 0x8174304F61371433;
  v114 = v113 ^ __ROR8__(v111, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ 0x48DE3944125A0254;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0x57D072DFC3A5F657;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (v118 + __ROR8__(v117, 8)) ^ 0xF2620266DFD8DE82;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = (v120 + __ROR8__(v119, 8)) ^ 0xB9BEF0CD865D21FDLL;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ 0x6E1E19DDB33CB23ALL;
  v124 = (__ROR8__(v123, 8) + (v123 ^ __ROR8__(v122, 61))) ^ 0x3532CD90FD5B1622;
  v125 = __ROR8__((a32 + 8) & 0xFFFFFFFFFFFFFFF8, 8);
  v126 = (v125 + 0x568FD0F9DF82F1E3) ^ 0x85215C3045409F44;
  v127 = (__ROR8__((v125 + 0x568FD0F9DF82F1E3) ^ 0x315FDBFEB957105ELL, 8) + v126) ^ 0x8174304F61371433;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = (v128 + __ROR8__(v127, 8)) ^ 0x48DE3944125A0254;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = (__ROR8__(v129, 8) + v130) ^ 0x57D072DFC3A5F657;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = (__ROR8__(v131, 8) + v132) ^ 0xF2620266DFD8DE82;
  v134 = v133 ^ __ROR8__(v132, 61);
  v135 = (__ROR8__(v133, 8) + v134) ^ 0xB9BEF0CD865D21FDLL;
  v137 = __ROR8__(v134, 61);
  v136 = v135 ^ v137;
  v138 = ((v135 ^ v137) + (v135 >> 8) + (v135 << 56)) ^ 0x6E1E19DDB33CB23ALL;
  v139 = v124 >> v106;
  v140 = (__ROR8__(v138, 8) + (v138 ^ __ROR8__(v136, 61))) ^ 0x3532CD90FD5B1622;
  v141 = v140 >> v106;
  v142 = v139 + 2 * (v140 << (v106 ^ 0x3F));
  v143 = *a32;
  v144 = (__ROR8__(a32 + 16, 8) & 0xF8FFFFFFFFFFFFFFLL) + 0x568FD0F9DF82F1E3;
  v145 = v144 ^ 0x85215C3045409F44;
  v146 = (__ROR8__(v144 ^ 0x315FDBFEB957105ELL, 8) + (v144 ^ 0x85215C3045409F44)) ^ 0x8174304F61371433;
  v147 = v146 ^ __ROR8__(v145, 61);
  v148 = (v147 + __ROR8__(v146, 8)) ^ 0x48DE3944125A0254;
  v149 = v148 ^ __ROR8__(v147, 61);
  v150 = (v149 + __ROR8__(v148, 8)) ^ 0x57D072DFC3A5F657;
  v151 = v150 ^ __ROR8__(v149, 61);
  v152 = (v151 + __ROR8__(v150, 8)) ^ 0xF2620266DFD8DE82;
  v153 = v152 ^ __ROR8__(v151, 61);
  v154 = (__ROR8__(v152, 8) + v153) ^ 0xB9BEF0CD865D21FDLL;
  v155 = __ROR8__(v154, 8);
  v156 = v154 ^ __ROR8__(v153, 61);
  v157 = v141 + 2 * (((((v156 + v155) ^ 0x6E1E19DDB33CB23ALL ^ __ROR8__(v156, 61)) + __ROR8__((v156 + v155) ^ 0x6E1E19DDB33CB23ALL, 8)) ^ 0x3532CD90FD5B1622) << (v106 ^ 0x3F));
  v158 = ((v218[v139 ^ 0x66] ^ 0xA8) << 24) | ((v107[BYTE1(v142) ^ 0x91] ^ 0x91) << 16) | ((*(v109 + (BYTE2(v142) ^ 0xD9)) ^ 0x75) << 8) | v108[BYTE3(v142) ^ 9] ^ 0xAC;
  v159 = v218[v141 ^ 0xD8];
  LODWORD(v141) = ((v218[BYTE4(v142) ^ 0x67] ^ 0x2F) << 24) | ((v107[BYTE5(v142) ^ 0x70] ^ 0x92) << 16) | ((*(v109 + (BYTE6(v142) ^ 0x8ALL)) ^ 0x9E) << 8) | v108[HIBYTE(v142) ^ 0xFA] ^ 0xA7;
  LODWORD(v139) = ((v107[BYTE1(v157) ^ 0x10] ^ 0xFF) << 16) | ((v159 ^ 0xB) << 24) | ((*(v109 + (BYTE2(v157) ^ 0xC0)) ^ 0x43) << 8) | v108[BYTE3(v157) ^ 0xECLL] ^ 0xA3;
  v160 = *(v109 + (BYTE6(v157) ^ 0xEALL));
  HIDWORD(v137) = v160 ^ 2;
  LODWORD(v137) = (v160 ^ 0x80) << 24;
  LODWORD(v142) = ((v218[BYTE4(v157) ^ 0xCLL] ^ 0x73) << 24) | ((v107[BYTE5(v157) ^ 0x38] ^ 0xE5) << 16) | ((((((v137 >> 26) ^ 0x91) >> 6) | (4 * ((v137 >> 26) ^ 0x91))) ^ 0x7D) << 8);
  LODWORD(v157) = v108[HIBYTE(v157) ^ 0x2F] ^ 0xF1;
  *(v36 - 240) = 7;
  v161 = *(a32 + 7) ^ 0xDLL;
  *(v36 - 248) = 11;
  LODWORD(v161) = v108[v161];
  v162 = *(a32 + 11);
  *(v36 - 184) = 13;
  LODWORD(v155) = v108[v162 ^ 0x8A];
  v163 = *(a32 + 13) ^ 0xCFLL;
  *(v36 - 176) = 2;
  v164 = v142 | v157;
  LODWORD(v157) = v107[v163] ^ 0x8F;
  v165 = *(a32 + 2) ^ 0x77;
  *(v36 - 192) = 15;
  LODWORD(v165) = *(v109 + v165) ^ 0x51;
  *(v36 - 216) = 1;
  LODWORD(v157) = v108[*(a32 + 15) ^ 0xA3] ^ 0x3A | (v157 << 16);
  LODWORD(v165) = (v165 << 8) | ((v107[*(a32 + 1) ^ 0x79] ^ 0x5F) << 16);
  *(v36 - 200) = 12;
  LODWORD(v157) = v157 | ((v218[*(a32 + 12) ^ 0xE8] ^ 0x1B) << 24);
  LODWORD(v142) = *(v109 + (*(a32 + 10) ^ 0xCBLL)) ^ 0xCE;
  LODWORD(v163) = v155 ^ 0x3A;
  *(v36 - 232) = 3;
  LODWORD(v155) = v108[*(a32 + 3) ^ 0xE5];
  *(v36 - 256) = 4;
  v166 = *(a32 + 4);
  *(v36 - 208) = 6;
  LODWORD(v161) = v161 ^ 0x3A | ((v218[v166 ^ 0x81] ^ 0xCD) << 24) | ((*(v216 + (*(a32 + 6) ^ 0xE2)) ^ 0x16) << 8);
  *(v36 - 224) = 14;
  v167 = v155 ^ 0x3A | v165 | ((v218[v143 ^ 0xF6] ^ 0x1F) << 24);
  LODWORD(v165) = v163 | (v142 << 8) | ((v218[*(a32 + 8) ^ 0xF7] ^ 0x98) << 24);
  LODWORD(v142) = v161 | ((v107[*(a32 + 5) ^ 0x5ELL] ^ 0xDE) << 16);
  LODWORD(v165) = v139 ^ v48 ^ (v165 | ((v107[*(a32 + 9) ^ 0xC5] ^ 0xA3) << 16));
  LODWORD(v161) = ((v158 ^ v110 ^ v167) - 1396706775 - ((2 * (v158 ^ v110 ^ v167)) & 0x597FE452)) ^ HIDWORD(v235);
  LODWORD(v163) = v165 + 190907252 - ((2 * v165) & 0x16C206E8);
  v168 = HIDWORD(v234) ^ v237 ^ v142 ^ 0x351AA66E ^ v141;
  LODWORD(v139) = v64 ^ v238 ^ (v157 | ((*(v216 + (*(a32 + 14) ^ 0x99)) ^ 0x9A) << 8)) ^ 0x56506F87 ^ v164;
  v169 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3200)) - 8;
  v170 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v37 - 204) ^ 0xC11)) - 8;
  v171 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3356)) - 12;
  LODWORD(v142) = *&v171[4 * BYTE2(v139)];
  LODWORD(v141) = *&v170[4 * BYTE1(v139)] ^ *&v169[4 * (v161 ^ 0x1D)];
  HIDWORD(v137) = v142 ^ 0xA;
  LODWORD(v137) = v142 ^ 0x5B31C6C0;
  v172 = v137 >> 6;
  LODWORD(v142) = *&v171[4 * BYTE2(v168)];
  HIDWORD(v137) = v142 ^ 0xA;
  LODWORD(v137) = v142 ^ 0x5B31C6C0;
  LODWORD(v142) = v215 ^ v163;
  LODWORD(v163) = ((v137 >> 6) - 796553185 - ((2 * (v137 >> 6)) & 0xA10B203E)) ^ *&v170[4 * ((v215 ^ v163) >> 8)];
  LODWORD(v155) = *&v171[4 * BYTE2(v142)];
  HIDWORD(v137) = v155 ^ 0xA;
  LODWORD(v137) = v155 ^ 0x5B31C6C0;
  LODWORD(v155) = v137 >> 6;
  v173 = *&v169[4 * v168] ^ (v172 - 2073694472 - ((2 * v172) & 0x8CBDDF0));
  LODWORD(v161) = v161 ^ 0x4848C858;
  v174 = *&v171[4 * BYTE2(v161)];
  HIDWORD(v137) = v174 ^ 0xA;
  LODWORD(v137) = v174 ^ 0x5B31C6C0;
  LODWORD(v157) = *&v169[4 * v142] ^ *&v170[4 * BYTE1(v168)] ^ 0x54E07EE7 ^ (v137 >> 6);
  LODWORD(v163) = (v163 - 2073694472 - ((2 * v163) & 0x8CBDDF0)) ^ *&v169[4 * v139];
  v175 = *&v170[4 * BYTE1(v161)] ^ (v173 - 796553185 - ((2 * v173) & 0xA10B203E));
  v176 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v37 - 204) ^ 0xEEB)) - 8;
  LODWORD(v141) = *&v176[4 * HIBYTE(v168)] ^ v233 ^ v155 ^ ((v141 ^ 0x54E07EE7) + 1227387403 - 2 * ((v141 ^ 0x54E07EE7) & 0x4928721B ^ v141 & 0x10));
  v177 = *&v176[4 * BYTE3(v161)] ^ v234 ^ (v163 + 1227387403 - ((2 * v163) & 0x9250E416));
  v178 = *&v176[4 * BYTE3(v139)] ^ HIDWORD(v233) ^ (v157 + 1227387403 - ((2 * v157) & 0x9250E416));
  LODWORD(v161) = *&v176[4 * BYTE3(v142)] ^ HIDWORD(v232) ^ (v175 + 1227387403 - ((2 * v175) & 0x9250E416));
  LODWORD(v139) = (((v178 ^ 0x2EAFF13C) - (v178 ^ 0x85D15116)) ^ 0xFFFFFFFC) + (v178 ^ 0x2EAFF13C);
  v179 = *&v171[4 * ((v139 ^ 0x8C0045) >> 16)];
  HIDWORD(v137) = v179 ^ 0xA;
  LODWORD(v137) = v179 ^ 0x5B31C6C0;
  LODWORD(v155) = ((v137 >> 6) - 2073694472 - ((2 * (v137 >> 6)) & 0x8CBDDF0)) ^ *&v169[4 * (v141 ^ 0x43)];
  LODWORD(v166) = *&v176[4 * ((v141 ^ 0x41241443) >> 24)] ^ 0xCD4D9CF3 ^ *&v169[4 * (v177 ^ 0x22)];
  v180 = *&v171[4 * ((v141 ^ 0x41241443) >> 16)];
  HIDWORD(v137) = v180 ^ 0xA;
  LODWORD(v137) = v180 ^ 0x5B31C6C0;
  v181 = v161 ^ 0x571001F;
  LODWORD(v108) = *&v169[4 * (v161 ^ 0x1F)] ^ *&v176[4 * BYTE3(v139)] ^ 0xCD4D9CF3;
  LODWORD(v161) = *&v170[4 * BYTE1(v161)] ^ *&v169[4 * (v139 ^ 0x45)] ^ (v137 >> 6);
  LODWORD(v157) = *&v176[4 * ((v177 ^ 0x870D2C22) >> 24)];
  LODWORD(v161) = (v157 ^ 0x4928720B) + (v161 ^ 0x7A06D4F4) + ((2 * ((v161 ^ 0x7A06D4F4) & (v157 ^ 0x2299873E) ^ v161 & 0x6BB1F535)) ^ 0x2BFE5797);
  LODWORD(v157) = (v155 - 796553185 - ((2 * v155) & 0xA10B203E)) ^ *&v170[4 * ((v177 ^ 0x2C22) >> 8)];
  LODWORD(v142) = *&v171[4 * BYTE2(v181)];
  HIDWORD(v137) = v142 ^ 0xA;
  LODWORD(v137) = v142 ^ 0x5B31C6C0;
  LODWORD(v142) = v137 >> 6;
  LODWORD(v163) = *&v171[4 * (BYTE2(v177) ^ 0x81)];
  HIDWORD(v137) = v163 ^ 0xA;
  LODWORD(v137) = v163 ^ 0x5B31C6C0;
  LODWORD(v108) = (v108 - 796553185 - ((2 * v108) & 0xA10B203E)) ^ v231 ^ *&v170[4 * (BYTE1(v141) ^ 0x93)] ^ (v137 >> 6);
  v182 = v232 ^ *&v170[4 * (BYTE1(v139) ^ 0x87)] ^ (v166 - 796553185 - ((2 * v166) & 0xA10B203E)) ^ 0xA797EBB0 ^ v142;
  LODWORD(v141) = *&v171[4 * (BYTE2(v108) ^ 0x17)];
  HIDWORD(v137) = v141 ^ 0xA;
  LODWORD(v137) = v141 ^ 0x5B31C6C0;
  LODWORD(v141) = v137 >> 6;
  LODWORD(v108) = v108 ^ 0x579B45C1;
  LODWORD(v139) = HIDWORD(v231) ^ *&v176[4 * HIBYTE(v181)] ^ 0xDAE38AD ^ (v157 + 1227387403 - ((2 * v157) & 0x9250E416));
  LODWORD(v166) = *&v170[4 * BYTE1(v108)] ^ *&v176[4 * HIBYTE(v182)] ^ 0x99ADE214;
  v183 = HIDWORD(v214) ^ (v161 + 1);
  LODWORD(v161) = *&v171[4 * BYTE2(v183)];
  HIDWORD(v137) = v161 ^ 0xA;
  LODWORD(v137) = v161 ^ 0x5B31C6C0;
  LODWORD(v155) = v166 - 2073694472 - ((2 * v166) & 0x8CBDDF0);
  LODWORD(v161) = ((v137 >> 6) + 1227387403 - ((2 * (v137 >> 6)) & 0x9250E416)) ^ *&v176[4 * (v108 >> 24)];
  LODWORD(v166) = *&v171[4 * BYTE2(v182)];
  HIDWORD(v137) = v166 ^ 0xA;
  LODWORD(v137) = v166 ^ 0x5B31C6C0;
  LODWORD(v161) = (v161 - 2073694472 - ((2 * v161) & 0x8CBDDF0)) ^ *&v169[4 * v139];
  LODWORD(v141) = *&v176[4 * BYTE3(v139)] ^ (v141 + 1227387403 - ((2 * v141) & 0x9250E416));
  LODWORD(v141) = (v141 - 796553185 - ((2 * v141) & 0xA10B203E)) ^ *&v170[4 * BYTE1(v183)];
  LODWORD(v166) = *&v170[4 * BYTE1(v139)] ^ 0xBEAFA504;
  LODWORD(v108) = *&v176[4 * HIBYTE(v183)] ^ *&v169[4 * v108] ^ (v137 >> 6) ^ 0x8D8103FB;
  LODWORD(v108) = (v166 ^ -v166 ^ (v108 - (v108 ^ v166))) + v108;
  LODWORD(v141) = *&v169[4 * v182] ^ HIDWORD(v229) ^ (v141 - 2073694472 - ((2 * v141) & 0x8CBDDF0));
  LODWORD(v142) = v229 ^ *&v170[4 * BYTE1(v182)] ^ 0x99CF5618 ^ (v161 - 796553185 - ((2 * v161) & 0xA10B203E));
  LODWORD(v161) = *&v171[4 * BYTE2(v142)];
  HIDWORD(v137) = v161 ^ 0xA;
  LODWORD(v137) = v161 ^ 0x5B31C6C0;
  LODWORD(v166) = v137 >> 6;
  LODWORD(v161) = *&v171[4 * ((v141 ^ 0x8DB936D4) >> 16)];
  HIDWORD(v137) = v161 ^ 0xA;
  LODWORD(v137) = v161 ^ 0x5B31C6C0;
  LODWORD(v161) = *&v171[4 * BYTE2(v139)];
  BYTE1(v183) = BYTE1(v108) ^ BYTE5(v230);
  LODWORD(v108) = v108 ^ HIDWORD(v230) ^ 0xBA670131;
  LODWORD(v157) = ((v137 >> 6) - 2073694472 - ((2 * (v137 >> 6)) & 0x8CBDDF0)) ^ *&v169[4 * v108];
  LODWORD(v155) = v230 ^ *&v169[4 * v183] ^ v155 ^ (v161 >> 6) ^ 0x769FE55D;
  LODWORD(v163) = *&v171[4 * BYTE2(v155)];
  HIDWORD(v137) = v163 ^ 0xA;
  LODWORD(v137) = v163 ^ 0x5B31C6C0;
  LODWORD(v163) = ((v137 >> 6) - 2073694472 - ((2 * (v137 >> 6)) & 0x8CBDDF0)) ^ *&v169[4 * v142];
  LODWORD(v139) = *&v171[4 * BYTE2(v108)];
  HIDWORD(v137) = v139 ^ 0xA;
  LODWORD(v137) = v139 ^ 0x5B31C6C0;
  LODWORD(v166) = (v166 + 1227387403 - ((2 * v166) & 0x9250E416)) ^ *&v176[4 * ((v141 ^ 0x8DB936D4) >> 24)];
  LODWORD(v108) = (v163 + 1227387403 - ((2 * v163) & 0x9250E416)) ^ *&v176[4 * (v108 >> 24)];
  LODWORD(v157) = (v157 - 796553185 - ((2 * v157) & 0xA10B203E)) ^ *&v170[4 * BYTE1(v142)];
  LODWORD(v161) = v155 ^ (v161 << 26);
  LODWORD(v166) = (v166 - 2073694472 - ((2 * v166) & 0x8CBDDF0)) ^ *&v169[4 * v161];
  LODWORD(v142) = ((v137 >> 6) + 1227387403 - ((2 * (v137 >> 6)) & 0x9250E416)) ^ *&v176[4 * BYTE3(v142)];
  LODWORD(v163) = (v142 - 2073694472 - ((2 * v142) & 0x8CBDDF0)) ^ *&v169[4 * (v141 ^ 0xD4)];
  LODWORD(v142) = *&v176[4 * BYTE3(v161)] ^ HIDWORD(v228) ^ (v157 + 1227387403 - ((2 * v157) & 0x9250E416));
  LODWORD(v139) = v227 ^ *&v170[4 * (BYTE1(v141) ^ 0xB1)] ^ 0x603254D1 ^ (v108 - 796553185 - ((2 * v108) & 0xA10B203E));
  LODWORD(v108) = *&v170[4 * (BYTE1(v183) ^ 0x86)];
  v184 = HIDWORD(v227) ^ *&v170[4 * BYTE1(v155)] ^ 0x7444B31D ^ (v163 - 796553185 - ((2 * v163) & 0xA10B203E));
  LODWORD(v141) = v228 ^ v108 ^ 0xA6357FBA ^ (v166 - 796553185 - ((2 * v166) & 0xA10B203E));
  LODWORD(v161) = *&v171[4 * (BYTE2(v142) ^ 0xED)];
  HIDWORD(v137) = v161 ^ 0xA;
  LODWORD(v137) = v161 ^ 0x5B31C6C0;
  LODWORD(v166) = *&v169[4 * ((v228 ^ v108) ^ 0xBA ^ (v166 + 31 - ((2 * v166) & 0x3E)))] ^ *&v170[4 * (BYTE1(v142) ^ 0x6C)];
  LODWORD(v108) = *&v169[4 * (v142 ^ 0x63)] ^ *&v176[4 * BYTE3(v141)] ^ (*&v171[4 * BYTE2(v184)] << 26) ^ (*&v171[4 * BYTE2(v184)] >> 6) ^ 0xE4215BE8;
  v185 = v108 - 796553185 - ((2 * v108) & 0xA10B203E);
  LODWORD(v155) = (v166 ^ 0x54E07EE7) + 1227387403 - 2 * ((v166 ^ 0x54E07EE7) & 0x4928721B ^ v166 & 0x10);
  LODWORD(v161) = *&v176[4 * BYTE3(v139)] ^ ((v137 >> 6) + 1227387403 - ((2 * (v137 >> 6)) & 0x9250E416));
  LODWORD(v161) = (v161 - 2073694472 - ((2 * v161) & 0x8CBDDF0)) ^ *&v169[4 * v184];
  LODWORD(v108) = *&v170[4 * BYTE1(v184)] ^ 0x99ADE214 ^ *&v176[4 * (BYTE3(v142) ^ 0x68)];
  LODWORD(v166) = *&v171[4 * BYTE2(v139)];
  HIDWORD(v137) = v166 ^ 0xA;
  LODWORD(v137) = v166 ^ 0x5B31C6C0;
  LODWORD(v166) = v137 >> 6;
  LODWORD(v157) = v161 - 796553185 - ((2 * v161) & 0xA10B203E);
  LODWORD(v142) = *&v171[4 * BYTE2(v141)];
  HIDWORD(v137) = v142 ^ 0xA;
  LODWORD(v137) = v142 ^ 0x5B31C6C0;
  LODWORD(v161) = HIDWORD(v226) ^ HIDWORD(v228) ^ *&v169[4 * v139] ^ (v137 >> 6) ^ (v108 - 2073694472 - ((2 * v108) & 0x8CBDDF0));
  LODWORD(v139) = v226 ^ *&v170[4 * BYTE1(v139)] ^ 0x8EF4092D ^ v185;
  v186 = HIDWORD(v225) ^ *&v176[4 * HIBYTE(v184)] ^ v166 ^ 0xAD9CA0C4 ^ v155;
  LODWORD(v108) = *&v171[4 * BYTE2(v186)];
  HIDWORD(v137) = v108 ^ 0xA;
  LODWORD(v137) = v108 ^ 0x5B31C6C0;
  LODWORD(v141) = *&v170[4 * BYTE1(v141)] ^ HIDWORD(v226) ^ v157;
  LODWORD(v166) = *&v176[4 * (BYTE3(v141) ^ 0x40)] ^ *&v169[4 * v186] ^ 0xCD4D9CF3;
  LODWORD(v108) = ((v137 >> 6) - 796553185 - ((2 * (v137 >> 6)) & 0xA10B203E)) ^ *&v170[4 * (BYTE1(v141) ^ 0x1A)];
  LODWORD(v155) = v166 - 796553185 - ((2 * v166) & 0xA10B203E);
  LOWORD(v142) = v161 ^ 0x6C63;
  LODWORD(v166) = *&v169[4 * (v141 ^ 0xF4)] ^ *&v176[4 * ((v161 ^ 0x7F616C63) >> 24)] ^ 0xCD4D9CF3;
  LODWORD(v141) = *&v171[4 * (BYTE2(v141) ^ 0x2C)];
  HIDWORD(v137) = v141 ^ 0xA;
  LODWORD(v137) = v141 ^ 0x5B31C6C0;
  LODWORD(v141) = ((v137 >> 6) + 1227387403 - ((2 * (v137 >> 6)) & 0x9250E416)) ^ *&v176[4 * HIBYTE(v186)];
  LODWORD(v161) = *&v171[4 * (BYTE2(v161) ^ 0xED)];
  HIDWORD(v137) = v161 ^ 0xA;
  LODWORD(v137) = v161 ^ 0x5B31C6C0;
  LODWORD(v161) = v137 >> 6;
  LODWORD(v108) = (v108 + 1227387403 - ((2 * v108) & 0x9250E416)) ^ *&v176[4 * BYTE3(v139)];
  LODWORD(v141) = (v141 - 2073694472 - ((2 * v141) & 0x8CBDDF0)) ^ *&v169[4 * v139];
  LODWORD(v157) = *&v171[4 * BYTE2(v139)];
  HIDWORD(v137) = v157 ^ 0xA;
  LODWORD(v137) = v157 ^ 0x5B31C6C0;
  LODWORD(v163) = v141 - 796553185 - ((2 * v141) & 0xA10B203E);
  LODWORD(v141) = *&v169[4 * v142] ^ v226 ^ v94 ^ (v108 - 2073694472 - ((2 * v108) & 0x8CBDDF0));
  LODWORD(v161) = *&v170[4 * BYTE1(v139)] ^ HIDWORD(v223) ^ v161;
  LODWORD(v139) = v225 ^ *&v170[4 * BYTE1(v186)] ^ (v137 >> 6) ^ 0x24F32246 ^ (v166 - 796553185 - ((2 * v166) & 0xA10B203E));
  v187 = *&v171[4 * BYTE2(v139)];
  HIDWORD(v137) = v187 ^ 0xA;
  LODWORD(v137) = v187 ^ 0x5B31C6C0;
  v188 = v161 ^ v155;
  LODWORD(v155) = v224 ^ *&v170[4 * BYTE1(v142)] ^ 0x1CB86FC3 ^ v163;
  LODWORD(v161) = ((v137 >> 6) - 2073694472 - ((2 * (v137 >> 6)) & 0x8CBDDF0)) ^ *&v169[4 * ((v224 ^ v170[4 * BYTE1(v142)]) ^ 0xC3 ^ v163)];
  LODWORD(v166) = *&v171[4 * BYTE2(v155)];
  LODWORD(v108) = (v161 + 1227387403 - ((2 * v161) & 0x9250E416)) ^ *&v176[4 * (HIBYTE(v188) ^ 0xC)];
  HIDWORD(v137) = v166 ^ 0xA;
  LODWORD(v137) = v166 ^ 0x5B31C6C0;
  LODWORD(v166) = v137 >> 6;
  LOBYTE(v161) = v141 ^ 0x2D;
  LODWORD(v142) = *&v171[4 * ((v141 ^ 0xF5F48E2D) >> 16)];
  HIDWORD(v137) = v142 ^ 0xA;
  LODWORD(v137) = v142 ^ 0x5B31C6C0;
  LODWORD(v166) = *&v176[4 * ((v141 ^ 0xF5F48E2D) >> 24)] ^ *&v169[4 * v139] ^ 0xCD4D9CF3 ^ v166;
  LODWORD(v157) = *&v176[4 * BYTE3(v139)] ^ (v137 >> 6) ^ *&v170[4 * BYTE1(v155)];
  LODWORD(v142) = *&v171[4 * (BYTE2(v188) ^ 0x32)];
  HIDWORD(v137) = v142 ^ 0xA;
  LODWORD(v137) = v142 ^ 0x5B31C6C0;
  LODWORD(v166) = v214 ^ *&v170[4 * (BYTE1(v188) ^ 0x54)] ^ (v166 - 796553185 - ((2 * v166) & 0xA10B203E));
  LODWORD(v141) = v223 ^ *&v170[4 * (BYTE1(v141) ^ 9)] ^ 0x9A2C1AF4 ^ (v108 - 796553185 - ((2 * v108) & 0xA10B203E));
  LODWORD(v161) = v96 ^ *&v170[4 * BYTE1(v139)] ^ *&v169[4 * v161] ^ ((v137 >> 6) - 2073694472 - ((2 * (v137 >> 6)) & 0x8CBDDF0)) ^ 0x1CF03447 ^ *&v176[4 * BYTE3(v155)];
  v189 = HIDWORD(v222) ^ *&v169[4 * (v188 ^ 0xD1)] ^ 0x2C2C1AF4 ^ ((v157 ^ 0x99ADE214) - 2073694472 - 2 * ((v157 ^ 0x99ADE214) & 0x465EEFA ^ v157 & 2));
  LOWORD(v142) = v166 ^ 0xA364;
  LODWORD(v157) = *&v169[4 * v189] ^ 0xCD4D9CF3 ^ *&v176[4 * ((v166 ^ 0xCE45A364) >> 24)];
  LODWORD(v166) = *&v171[4 * (BYTE2(v166) ^ 0xC9)];
  HIDWORD(v137) = v166 ^ 0xA;
  LODWORD(v137) = v166 ^ 0x5B31C6C0;
  LODWORD(v108) = *&v176[4 * HIBYTE(v189)] ^ *&v170[4 * BYTE1(v161)] ^ (v137 >> 6);
  LODWORD(v166) = *&v171[4 * BYTE2(v141)];
  HIDWORD(v137) = v166 ^ 0xA;
  LODWORD(v137) = v166 ^ 0x5B31C6C0;
  LODWORD(v166) = *&v169[4 * v142] ^ *&v176[4 * BYTE3(v161)] ^ 0xCD4D9CF3 ^ (v137 >> 6);
  LODWORD(v163) = *&v171[4 * BYTE2(v161)];
  HIDWORD(v137) = v163 ^ 0xA;
  LODWORD(v137) = v163 ^ 0x5B31C6C0;
  LODWORD(v157) = *&v170[4 * BYTE1(v141)] ^ (v137 >> 6) ^ (v157 - 796553185 - ((2 * v157) & 0xA10B203E));
  LODWORD(v163) = *&v171[4 * BYTE2(v189)];
  HIDWORD(v137) = v163 ^ 0xA;
  LODWORD(v137) = v163 ^ 0x5B31C6C0;
  LODWORD(v161) = ((v137 >> 6) - 2073694472 - ((2 * (v137 >> 6)) & 0x8CBDDF0)) ^ *&v169[4 * v161];
  LODWORD(v161) = (v161 + 1227387403 - ((2 * v161) & 0x9250E416)) ^ *&v176[4 * BYTE3(v141)];
  LODWORD(v142) = *&v170[4 * BYTE1(v142)] ^ HIDWORD(v221) ^ (v161 - 796553185 - ((2 * v161) & 0xA10B203E));
  LODWORD(v161) = *&v170[4 * BYTE1(v189)];
  v190 = v220 ^ *&v169[4 * v141] ^ 0xBC3254D1 ^ ((v108 ^ 0x99ADE214) - 2073694472 - 2 * ((v108 ^ 0x99ADE214) & 0x465EEF9 ^ v108 & 1));
  BYTE2(v141) = BYTE2(v142) ^ 0x32;
  LODWORD(v161) = v221 ^ v161 ^ 0xF7A621E6 ^ (v166 - 796553185 - ((2 * v166) & 0xA10B203E));
  LODWORD(v163) = *&v171[4 * BYTE2(v190)];
  HIDWORD(v137) = v163 ^ 0xA;
  LODWORD(v137) = v163 ^ 0x5B31C6C0;
  LODWORD(v166) = ((v137 >> 6) + 1227387403 - ((2 * (v137 >> 6)) & 0x9250E416)) ^ *&v176[4 * ((v142 ^ 0xBC32D3D1) >> 24)];
  LODWORD(v157) = ((v157 ^ 0x2EE6AA13 ^ -(v157 ^ 0x2EE6AA13) ^ (v213 - (HIDWORD(v212) ^ v157))) + v213) ^ 0x3ABA12EF;
  LODWORD(v163) = *&v171[4 * BYTE2(v157)];
  HIDWORD(v137) = v163 ^ 0xA;
  LODWORD(v137) = v163 ^ 0x5B31C6C0;
  LODWORD(v139) = *&v170[4 * BYTE1(v161)] ^ *&v169[4 * (v142 ^ 0xD1)] ^ (v137 >> 6);
  LODWORD(v108) = *&v169[4 * ((v220 ^ v169[4 * v141]) ^ 0xD1 ^ ((v108 ^ 0x14) - 8 - 2 * ((v108 ^ 0x14) & 0xF9 ^ v108 & 1)))] ^ 0xCD4D9CF3 ^ *&v176[4 * BYTE3(v157)];
  LODWORD(v163) = *&v176[4 * BYTE3(v161)] ^ *&v170[4 * BYTE1(v190)];
  LODWORD(v155) = *&v169[4 * v157];
  LODWORD(v169) = *&v169[4 * v161];
  LODWORD(v161) = *&v171[4 * BYTE2(v161)];
  HIDWORD(v137) = v161 ^ 0xA;
  LODWORD(v137) = v161 ^ 0x5B31C6C0;
  LODWORD(v161) = v137 >> 6;
  LODWORD(v169) = (v166 - 2073694472 - ((2 * v166) & 0x8CBDDF0)) ^ v169;
  LODWORD(v166) = *&v170[4 * (BYTE1(v142) ^ 0x54)];
  LODWORD(v142) = v169 - 796553185 - ((2 * v169) & 0xA10B203E);
  LODWORD(v141) = *&v171[4 * BYTE2(v141)];
  HIDWORD(v137) = v141 ^ 0xA;
  LODWORD(v137) = v141 ^ 0x5B31C6C0;
  LODWORD(v169) = v155 ^ v219 ^ ((v163 ^ 0x99ADE214) - 2073694472 - 2 * ((v163 ^ 0x99ADE214) & 0x465EEFB ^ v163 & 3)) ^ (v137 >> 6);
  LODWORD(v171) = *&v170[4 * BYTE1(v157)] ^ HIDWORD(v220) ^ v142;
  LODWORD(v141) = ((v139 ^ 0x54E07EE7) + 1227387403 - 2 * ((v139 ^ 0x54E07EE7) & 0x4928721B ^ v139 & 0x10)) ^ HIDWORD(v219) ^ *&v176[4 * HIBYTE(v190)];
  LODWORD(v166) = v212 ^ v166 ^ (v108 - 796553185 - ((2 * v108) & 0xA10B203E)) ^ v161 ^ 0xC7FB326B;
  v191 = v141 ^ 0xB500C5DE;
  v192 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3334)) - 12;
  v193 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v37 - 204) ^ 0xC39)) - 8;
  LODWORD(v108) = *&v193[4 * BYTE3(v166)] ^ *&v192[4 * (v141 ^ 0xDE)];
  v194 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v37 - 204) ^ 0xE96)) - 12;
  v195 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v37 - 204) ^ 0xEC0)) - 8;
  LODWORD(v163) = (*&v194[4 * BYTE1(v166)] - ((2 * *&v194[4 * BYTE1(v166)] + 1440418946) & 0x7F0EEF6A) + 1786052086) ^ *&v195[4 * BYTE2(v141)];
  LODWORD(v155) = v171 ^ 0x73081B69;
  LODWORD(v141) = *&v195[4 * ((v171 ^ 0x73081B69) >> 16)];
  v196 = *&v195[4 * (BYTE2(v169) ^ 0x79)];
  LODWORD(v195) = *&v195[4 * BYTE2(v166)] ^ (*&v194[4 * (BYTE1(v169) ^ 0x80)] + 720209473) ^ *&v192[4 * (v171 ^ 0x69)];
  LODWORD(v166) = *&v192[4 * v166];
  LODWORD(v192) = (v163 - ((2 * v163) & 0x74E87E7E) - 1166786753) ^ *&v192[4 * (v169 ^ 0xCE)];
  LODWORD(v171) = *&v194[4 * (BYTE1(v171) ^ 0x4C)];
  LODWORD(v170) = *&v194[4 * BYTE1(v191)];
  LODWORD(v194) = (v195 ^ 0x85F3488A) - 1319659030 - 2 * ((v195 ^ 0x85F3488A) & 0x315799FE ^ v195 & 0x14);
  LODWORD(v195) = *&v193[4 * ((v169 >> 24) ^ 0xEC)];
  v197 = *&v193[4 * HIBYTE(v191)];
  LODWORD(v193) = *&v193[4 * BYTE3(v155)];
  v198 = v196 ^ HIDWORD(v211) ^ (v171 + 720209473) ^ ((v108 ^ 0xB23A6D5) + 1065842613 - 2 * ((v108 ^ 0xB23A6D5) & 0x3F8777B7 ^ v108 & 2));
  v199 = ((v196 ^ WORD2(v211) ^ (v171 - 31167) ^ ((v108 ^ 0xA6D5) + 30645 - 2 * ((v108 ^ 0xA6D5) & 0x77B7 ^ v108 & 2))) >> 8) ^ 0x21;
  v200 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v37 - 204) ^ 0xC23)) - 4;
  a33[10] = v200[v199] ^ 0xAE;
  v201 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3123)) - 12;
  HIDWORD(v137) = v201[BYTE3(v198) ^ 0x4BLL];
  LODWORD(v137) = (HIDWORD(v137) ^ 0x30) << 24;
  a33[8] = (v137 >> 28) ^ 0x46;
  v202 = v197 ^ HIDWORD(v213) ^ v194;
  v203 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((v37 - 204) ^ 0xC4F)) - 4;
  a33[*(v36 - 248)] = (27 * v203[v198 ^ 0x84] - 112) ^ 0xE3;
  a33[*(v36 - 240)] = (27 * v203[v202 ^ 0x83] - 112) ^ 0xBD;
  v204 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v37 - 3129)) - 12;
  a33[9] = ((BYTE2(v198) ^ 0x92) + v204[BYTE2(v198) ^ 0x53] - 65) ^ 0x94;
  HIDWORD(v137) = v201[HIBYTE(v202) ^ 0x41];
  LODWORD(v137) = (HIDWORD(v137) ^ 0x30) << 24;
  v205 = v211 ^ v193 ^ (v192 - 1319659030 - ((2 * v192) & 0x62AF33D4));
  LODWORD(v192) = *(v36 - 164);
  a33[*(v36 - 256)] = (v137 >> 28) ^ 0x30;
  a33[5] = ((BYTE2(v202) ^ 0xFB) + v204[BYTE2(v202) ^ 0x3ALL] - 65) ^ 0x25;
  a33[*(v36 - 216)] = ((BYTE2(v205) ^ 0xF1) + v204[BYTE2(v205) ^ 0x30] - 65) ^ 0x4E;
  a33[*(v36 - 232)] = (27 * v203[v205 ^ 0x92] - 112) ^ 0x54;
  HIDWORD(v137) = v201[BYTE3(v205) ^ 0xD3];
  LODWORD(v137) = (HIDWORD(v137) ^ 0x30) << 24;
  *a33 = (v137 >> 28) ^ 0xD7;
  LODWORD(v141) = HIDWORD(v211) ^ v219 ^ v195 ^ (v170 + 720209473) ^ ((v141 ^ v166 ^ 0x85F3488A) - 1319659030 - ((2 * (v141 ^ v166 ^ 0x85F3488A)) & 0x62AF33D4));
  a33[*(v36 - 224)] = v200[BYTE1(v141) ^ 0x59] ^ 0x8E;
  HIDWORD(v137) = v201[BYTE3(v141) ^ 0x87];
  LODWORD(v137) = (HIDWORD(v137) ^ 0x30) << 24;
  a33[*(v36 - 200)] = (v137 >> 28) ^ 0x43;
  a33[*(v36 - 208)] = v200[BYTE1(v202) ^ 0xE8] ^ 0x21;
  a33[*(v36 - 192)] = (27 * v203[v141 ^ 0xD1] - 112) ^ 0x5D;
  v206 = *(v36 - 176);
  a33[*(v36 - 184)] = ((BYTE2(v141) ^ 0x36) + v204[BYTE2(v141) ^ 0xF7] - 65) ^ 0xCF;
  v207 = HIDWORD(v215) < 0x14C590B5;
  a33[v206] = v200[BYTE1(v205) ^ 0xF5] ^ 0xBC;
  v208 = v207 ^ ((v192 + 348491973) < 0x14C590B5);
  v209 = (v192 + 348491973) < HIDWORD(v215);
  if (v208)
  {
    v209 = HIDWORD(v215) < 0x14C590B5;
  }

  return (*(a1 + 8 * ((7736 * v209) ^ (v37 - 204))))(v198, v207, v208, 2975308266, 27, v205, v200, HIDWORD(v211), a3, a4, v211, v212, v213, v214, v215, v216, v217, v107, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, a1, a32, a33, a34);
}

uint64_t sub_1969ABB14(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + v4 + 72);
  v9 = ((((a1 + 1117931560) & 0xBD5DAFF7) - 537094591) & (2 * v4)) + (v4 ^ 0x6FFE4B3F) + v6;
  *(a2 + v9) = (HIBYTE(v8) ^ 0x7C) - ((2 * (HIBYTE(v8) ^ 0x7C)) & 0xD8) - 20;
  *(a2 + v9 + 1) = (BYTE2(v8) ^ 0x47) - ((2 * (BYTE2(v8) ^ 0x47)) & 0xD8) - 20;
  *(a2 + v9 + 2) = (BYTE1(v8) ^ 7) - ((2 * (BYTE1(v8) ^ 7)) & 0xD8) - 20;
  *(a2 + v9 + 3) = v8 ^ 0x87;
  return (*(v7 + 8 * (((v4 + 4 >= v5) | (8 * (v4 + 4 >= v5))) ^ a1)))();
}

uint64_t sub_1969ABBE0@<X0>(unint64_t a1@<X3>, int a2@<W8>)
{
  v3 = (a2 + 160);
  v4 = ((v3 - 0x106180081000CD25) ^ STACK[0x310]) + ((2 * STACK[0x310]) & 0xDF3CFFEFDFFE73FCLL) + STACK[0x618] + 0x106180081000C602;
  v5 = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = (0x6AF7234D0CC131D4 - v5) & 0xC294CCCCC1BD3E84 | (v5 + 0x1508DCB2F33ECE2BLL) & 0x3D6B33333E42C17BLL;
  v7 = v6 ^ 0x8B7D8EF7AEABD956;
  v6 ^= 0x233B6B60375DA80AuLL;
  v8 = __ROR8__(v7, 8);
  v9 = (((2 * (v8 + v6)) | 0x5BFA3CD3E9B03CB6) - (v8 + v6) + 0x5202E1960B27E1A5) ^ 0x496069B673E5A125;
  v10 = v9 ^ __ROR8__(v6, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0xF5A2F1B9B5D0B209;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = (__ROR8__(v11, 8) + v12) ^ 0x5963B6C555D97F1FLL;
  v14 = v13 ^ __ROR8__(v12, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (v15 + v14 - ((2 * (v15 + v14)) & 0x46F63B55781E90A8) - 0x5C84E25543F0B7ACLL) ^ 0xC23E80804C106CA3;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = __ROR8__(v16, 8);
  v19 = (((2 * ((v18 + v17) ^ 0xD84FE1C754F18840)) | 0x1F76449AB97A7CAELL) - ((v18 + v17) ^ 0xD84FE1C754F18840) - 0xFBB224D5CBD3E57) ^ 0xB337DF8878C8687BLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) & 0xA52DD7AC0D92506) - (v21 + v20) + 0x7AD691429F936D7CLL) ^ 0x60FC7AA6DDC0C27FLL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((((2 * ((v24 + v23) ^ 0x3DE289E964841133)) & 0x8A2A2A1882F7B950) - ((v24 + v23) ^ 0x3DE289E964841133) + 0x3AEAEAF3BE842357) ^ 0xAC3821C8F2876E25) >> (8 * (v4 & 7u))) ^ *v4;
  v26 = __ROR8__((v4 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v27 = v26 - ((2 * v26 + 0xA11B965E67D9C56) & 0x113C3EC95292F7F4) - 0x625903E86377B5DBLL;
  v28 = v27 ^ 0x41775D5FC65F9C28;
  v27 ^= 0xE931B8C85FA9ED74;
  v29 = (__ROR8__(v28, 8) + v27) ^ 0xE49D77DF873DBF7ELL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xF5A2F1B9B5D0B209;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((v33 + v32) & 0x3F5E63FE9BD0AB63 ^ 0x1B1E005E8B00AA23) + ((v33 + v32) & 0xC0A19C01642F549CLL ^ 0x11000242C5009) - 1) ^ 0x427CA69BFAF58534;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((2 * (v36 + v35)) & 0x8C768DD787872606) - (v36 + v35) - 0x463B46EBC3C39304) ^ 0xD881243ECC23480BLL;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ 0x64C31C027084DE6CLL;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x1A2AEBE44253AF03;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((((((v43 + v42) & 0x3DFD5293D9D7E6C9 ^ 0x28901201905122C9) + ((v43 + v42) ^ 0x156DECB64B86CD14) - (((v43 + v42) ^ 0x156DECB64B86CD14) & 0x3DFD5293D9D7E6C9)) ^ 0x83A0FCF7BAD6779CLL) >> (8 * ((v4 + 1) & 7))) ^ *(v4 + 1)) << 48) | (v25 << 56);
  v45 = __ROR8__((v4 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v46 = -2 - (((0x6AF7234D0CC131D4 - v45) | 0xBC5A4E518562A624) + ((v45 - 0x6AF7234D0CC131D5) | 0x43A5B1AE7A9D59DBLL));
  v47 = v46 ^ 0xF5B30C6AEA7441F6;
  v46 ^= 0x5DF5E9FD738230AAuLL;
  v48 = __ROR8__(v47, 8);
  v49 = (((v48 + v46) | 0x1FBB99B7550EA3FLL) - ((v48 + v46) | 0xFE0446648AAF15C0) - 0x1FBB99B7550EA40) ^ 0xE566CE44F26D5541;
  v50 = v49 ^ __ROR8__(v46, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (v51 + v50 - ((2 * (v51 + v50)) & 0x9E05AE14AEBCA70ELL) - 0x30FD28F5A8A1AC79) ^ 0x3AA026B3E28EE18ELL;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x5963B6C555D97F1FLL;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0x61459D2AF01F24F7;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (((2 * (v58 + v57)) & 0xF0FE260FF4DFE482) - (v58 + v57) + 0x780ECF805900DBELL) ^ 0x6343F0FA7514D3D2;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = __ROR8__(v59, 8);
  v62 = v44 | (((((__ROR8__((v61 + v60 - ((2 * (v61 + v60)) & 0x93868746793C3E3ELL) + 0x49C343A33C9E1F1FLL) ^ 0x53E9A8477ECDB01CLL, 8) + ((v61 + v60 - ((2 * (v61 + v60)) & 0x93868746793C3E3ELL) + 0x49C343A33C9E1F1FLL) ^ 0x53E9A8477ECDB01CLL ^ __ROR8__(v60, 61))) ^ a1) >> (8 * ((v4 + 2) & 7))) ^ *(v4 + 2)) << 40);
  v63 = __ROR8__((v4 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v64 = (0x6AF7234D0CC131D4 - v63) & 0xCAF13B63757397BCLL | (v63 + 0x1508DCB2F33ECE2BLL) & 0x310EC49C8A8C6843;
  v65 = v64 ^ 0x871879581A65706ELL;
  v64 ^= 0x2F5E9CCF83930132uLL;
  v66 = (__ROR8__(v65, 8) + v64) ^ 0xE49D77DF873DBF7ELL;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = __ROR8__(v66, 8);
  v69 = __ROR8__((((2 * (v68 + v67)) | 0xA42226C60A16CE78) - (v68 + v67) - 0x52111363050B673CLL) ^ 0xA7B3E2DAB0DBD535, 8);
  v70 = (((2 * (v68 + v67)) | 0xA42226C60A16CE78) - (v68 + v67) - 0x52111363050B673CLL) ^ 0xA7B3E2DAB0DBD535 ^ __ROR8__(v67, 61);
  v71 = (((2 * (v69 + v70)) | 0x4C8DB7A6C794D120) - (v69 + v70) + 0x59B9242C9C359770) ^ 0xFF256D163613178FLL;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0x61459D2AF01F24F7;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ 0x64C31C027084DE6CLL;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (((v77 + v76) | 0x850583D99A474AC0) - ((v77 + v76) | 0x7AFA7C2665B8B53FLL) + 0x7AFA7C2665B8B53FLL) ^ 0x9F2F683DD814E5C3;
  v79 = v62 | (((((__ROR8__(v78, 8) + (v78 ^ __ROR8__(v76, 61))) ^ a1) >> (8 * ((v4 + 3) & 7))) ^ *(v4 + 3)) << 32);
  v80 = __ROR8__((v4 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v81 = ((v80 - 0x6AF7234D0CC131D5) | 0x5FD555A5ED19C75BLL) - ((v80 - 0x6AF7234D0CC131D5) | 0xA02AAA5A12E638A4) - 0x5FD555A5ED19C75CLL;
  v82 = v81 ^ 0x163C179E820F2089;
  v81 ^= 0xBE7AF2091BF951D5;
  v83 = (__ROR8__(v82, 8) + v81) ^ 0xE49D77DF873DBF7ELL;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0xF5A2F1B9B5D0B209;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ 0x5963B6C555D97F1FLL;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = __ROR8__(v87, 8);
  v90 = (((v89 + v88) ^ 0xFE7A176D67236552) - ((2 * ((v89 + v88) ^ 0xFE7A176D67236552)) & 0xA2FCF994B45D1B44) - 0x2E818335A5D1725ELL) ^ 0x4E41F68DCD12CC07;
  v91 = v90 ^ __ROR8__(v88, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (((2 * (v92 + v91)) | 0xF496B0A45C18BC8ALL) - (v92 + v91) - 0x7A4B58522E0C5E45) ^ 0x1E8844505E888029;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ 0x1A2AEBE44253AF03;
  v96 = v79 & 0xFFFFFFFF00FFFFFFLL | (((((__ROR8__(v95, 8) + (v95 ^ __ROR8__(v94, 61))) ^ a1) >> (8 * ((v4 + 4) & 7))) ^ *(v4 + 4)) << 24);
  v97 = __ROR8__((v4 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v98 = ((2 * (v97 - 0x6AF7234D0CC131D5)) | 0x399F821F9A7FA07ELL) - (v97 - 0x6AF7234D0CC131D5) - 0x1CCFC10FCD3FD03FLL;
  v99 = v98 ^ 0x55268334A22937EDLL;
  v98 ^= 0xFD6066A33BDF46B1;
  v100 = __ROR8__(v99, 8);
  v101 = __ROR8__((v100 + v98 - ((2 * (v100 + v98)) & 0x39EF620FDA9685DALL) - 0x63084EF812B4BD13) ^ 0x786AC6D86A76FD93, 8);
  v102 = (v100 + v98 - ((2 * (v100 + v98)) & 0x39EF620FDA9685DALL) - 0x63084EF812B4BD13) ^ 0x786AC6D86A76FD93 ^ __ROR8__(v98, 61);
  v103 = (v101 + v102) ^ 0xF5A2F1B9B5D0B209;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0x5963B6C555D97F1FLL;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0x61459D2AF01F24F7;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = __ROR8__(v107, 8);
  v110 = (((2 * (v109 + v108)) | 0x4D9D0F408A595028) - (v109 + v108) - 0x26CE87A0452CA814) ^ 0x420D9BA235A87678;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = __ROR8__(v110, 8);
  v113 = (((v112 + v111) | 0x7DB961569F911255) - ((v112 + v111) | 0x82469EA9606EEDAALL) - 0x7DB961569F911256) ^ 0x67938AB2DDC2BD56;
  v114 = v113 ^ __ROR8__(v111, 61);
  v115 = __ROR8__(v113, 8);
  v116 = v96 & 0xFFFFFFFFFF00FFFFLL | (((((v115 + v114 - ((2 * (v115 + v114)) & 0x6935DF41F332A4FALL) + 0x349AEFA0F999527DLL) ^ 0x9FAAAD72D11E0E3CLL) >> (8 * ((v4 + 5) & 7))) ^ *(v4 + 5)) << 16);
  v117 = __ROR8__((v4 + 6) & 0xFFFFFFFFFFFFFFF8, 8);
  v118 = -2 - (((0x6AF7234D0CC131D4 - v117) | 0x66EECEE507CABA21) + ((v117 + 0x1508DCB2F33ECE2BLL) | 0x9911311AF83545DELL));
  v119 = v118 ^ 0x2F078CDE68DC5DF3;
  v118 ^= 0x87416949F12A2CAFLL;
  v120 = __ROR8__(v119, 8);
  v121 = (((v120 + v118) & 0x625061C6F646BF2FLL ^ 0x424000C2C2042C27) + ((v120 + v118) ^ 0xA4B4F52C356B9308) - (((v120 + v118) ^ 0xA4B4F52C356B9308) & 0x625061C6F646BF2FLL)) ^ 0x2279E33544109359;
  v122 = v121 ^ __ROR8__(v118, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ 0xF5A2F1B9B5D0B209;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0x5963B6C555D97F1FLL;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ 0x61459D2AF01F24F7;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = (__ROR8__(v127, 8) + v128) ^ 0x64C31C027084DE6CLL;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = (__ROR8__(v129, 8) + v130) ^ 0x1A2AEBE44253AF03;
  v132 = v131 ^ __ROR8__(v130, 61);
  v133 = __ROR8__(v131, 8);
  v134 = v116 & 0xFFFFFFFFFFFF00FFLL | (((((v133 + v132 - ((2 * (v133 + v132)) & 0x3A0F8FAC9ED9A79ELL) + 0x1D07C7D64F6CD3CFLL) ^ 0xB637850467EB8F8ELL) >> (8 * ((v4 + 6) & 7))) ^ *(v4 + 6)) << 8);
  v135 = *(v4 + 7);
  v4 += 7;
  v136 = __ROR8__(v4 & 0xFFFFFFFFFFFFFFF8, 8);
  v137 = ((0x6AF7234D0CC131D4 - v136) & 0xC8B006C559D2B160) + v136 - 0x6AF7234D0CC131D5 - ((v136 - 0x6AF7234D0CC131D5) & 0xCCB006C559D2B160);
  v138 = v137 ^ 0x855944FE36C456B2;
  v137 ^= 0x2D1FA169AF3227EEuLL;
  v139 = __ROR8__(v138, 8);
  v140 = (((v139 + v137) | 0x2BFF81EF10D2B39FLL) - ((v139 + v137) | 0xD4007E10EF2D4C60) - 0x2BFF81EF10D2B3A0) ^ 0xCF62F63097EF0CE1;
  v141 = v140 ^ __ROR8__(v137, 61);
  v142 = __ROR8__(v140, 8);
  v143 = (v142 + v141 - ((2 * (v142 + v141)) & 0x208C17187339CEB2) - 0x6FB9F473C66318A7) ^ 0x65E4FA358C4C5550;
  v144 = v143 ^ __ROR8__(v141, 61);
  v145 = __ROR8__(v143, 8);
  v146 = (((v145 + v144) | 0x507EB7600E7DB331) - ((v145 + v144) | 0xAF81489FF1824CCELL) - 0x507EB7600E7DB332) ^ 0x91D01A55BA4CC2ELL;
  v147 = v146 ^ __ROR8__(v144, 61);
  v148 = (__ROR8__(v146, 8) + v147) ^ 0x61459D2AF01F24F7;
  v149 = v148 ^ __ROR8__(v147, 61);
  v150 = (__ROR8__(v148, 8) + v149) ^ 0x64C31C027084DE6CLL;
  v151 = __ROR8__(v150, 8);
  v152 = v150 ^ __ROR8__(v149, 61);
  v153 = v151 + v152 - ((2 * (v151 + v152)) & 0x86464A6D5ED8A3FELL) + 0x43232536AF6C51FFLL;
  v154 = v134 | ((((__ROR8__(v153 ^ 0x5909CED2ED3FFEFCLL, 8) + (v153 ^ 0x5909CED2ED3FFEFCLL ^ __ROR8__(v152, 61))) ^ a1) >> (8 * (v4 & 7u))) ^ v135);
  STACK[0x868] = v154 + 0x3378E7DAD334F2CBLL - ((2 * v154) & 0x66F1CFB5A669E596);
  STACK[0x930] = STACK[0x9D0];
  LODWORD(STACK[0x484]) = STACK[0x9C4];
  LOWORD(STACK[0x4E6]) = STACK[0x9CA];
  LODWORD(STACK[0x724]) = STACK[0x9CC];
  return (*(STACK[0x248] + 8 * ((((v3 - 2115704836) & 0x7E1B1EFC ^ 0x1A5F) + 1143) ^ (((v3 - 2115704836) & 0x7E1B1EFC) + 404))))();
}

uint64_t sub_1969ACB60@<X0>(uint64_t a1@<X8>)
{
  v6 = STACK[0x3D0];
  v7 = STACK[0x38C];
  LODWORD(STACK[0x340]) = v1;
  v8 = 1283153057 * (((v3 | 0x69A2C101) + (~v3 | 0x965D3EFE)) ^ 0x267AC237);
  *(v5 - 208) = STACK[0x240];
  *(v5 - 196) = ((v1 ^ 0x7F587EF3) + 2 * v1 - 688400403) ^ v8;
  *(v5 - 192) = STACK[0x270];
  *(v5 - 184) = a1;
  *(v5 - 168) = v6;
  *(v5 - 160) = v2 - v8 - 1899586479;
  *(v5 - 176) = (v7 ^ 0x7FFE9F5F) - v8 - 151782925 + ((v7 << (v2 + 88)) & 0xFFFD3EBE);
  v9 = (*(v4 + 8 * (v2 ^ 0x1D99)))(v5 - 208);
  v10 = *(v5 - 200);
  LODWORD(STACK[0x450]) = v10;
  return (*(v4 + 8 * ((2235 * (v10 == 1906281716)) ^ v2)))(v9);
}

void fp_dh_4aa4fda84372403a2ed9ee8068daecc2(uint64_t a1)
{
  v1 = *(a1 + 8) - 1068996913 * ((a1 - 2094557862 - 2 * (a1 & 0x8327955A)) ^ 0x56C974CB);
  __asm { BRAA            X1, X17 }
}

uint64_t sub_1969ACF00@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 + a1;
  v6.i64[0] = 0xECECECECECECECECLL;
  v6.i64[1] = 0xECECECECECECECECLL;
  v7 = veorq_s8(*(v1 + a1 + 16), v6);
  *(v5 + 24) = veorq_s8(*(v1 + a1), v6);
  *(v5 + 40) = v7;
  return (*(v3 + 8 * ((3511 * (a1 + 32 == ((4 * v4) ^ 0x5E24))) ^ v4)))();
}

uint64_t sub_1969ACFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, unsigned int a17, int a18, unint64_t a19, unint64_t a20, unint64_t a21)
{
  v27 = 1621291457 * (v25 ^ 0x36178199);
  a20 = a16;
  a18 = v27 + v26 - 1267;
  LODWORD(a19) = v27 ^ (1122297523 * v23 + 296299868);
  (*(v24 + 8 * (v26 ^ 0x137D)))(&a17);
  v28 = 1068996913 * ((~v25 & 0xBECC0CA71619FB90 | v25 & 0x4133F358E9E6046FLL) ^ 0x2AAD3834C3F71A01);
  a19 = (((2 * v22) & 0xFDEDFF7F8CFDD7E6) + 0x7D1FB573BF979EDDLL + ((((v26 - 1347) | 0x200u) - 0x109004039811A96) ^ v22)) ^ v28;
  LODWORD(a20) = v26 - v28 + 3857;
  a21 = a16;
  (*(v24 + 8 * (v26 ^ 0x136C)))(&a17);
  v29 = *(v21 + 8);
  v30 = 753662761 * ((2 * (v25 & 0x77BE2788) - v25 + 138532977) ^ 0x6D5B233A);
  a17 = (*v21 ^ 0x56BE7B92) - v30 + ((2 * *v21) & 0xAD7CF724) - 8941826;
  a18 = (v26 + 3083) ^ v30;
  a19 = a16;
  a20 = v29;
  (*(v24 + 8 * (v26 + 4271)))(&a17);
  v31 = *(v21 + 24);
  v32 = 753662761 * ((-1608042404 - (v25 | 0xA027385C) + (v25 | 0x5FD8C7A3)) ^ 0x3AC23CE8);
  v33 = (*(v21 + 16) ^ 0x57B6DBBF) - v32 + ((2 * *(v21 + 16)) & 0xAF6DB77E) - 25219375;
  a19 = a16;
  a20 = v31;
  a17 = v33;
  a18 = (v26 + 3083) ^ v32;
  (*(v24 + 8 * (v26 ^ 0x13B7)))(&a17);
  v34 = *(v21 + 40);
  v35 = 753662761 * (v25 ^ 0x651AFB4B);
  a17 = (*(v21 + 32) ^ 0x767E7AB5) - v35 + ((2 * *(v21 + 32)) & 0xECFCF56A) - 541618213;
  a18 = (v26 + 3083) ^ v35;
  a19 = a16;
  a20 = v34;
  v36 = (*(v24 + 8 * (v26 ^ 0x13B7)))(&a17);
  return (*(v24 + 8 * ((49 * (a21 != 1906281716)) | v26)))(v36);
}

uint64_t sub_1969AD2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  *(v20 - 104) = v18 + ((~((v20 - 120) | v17) + ((v20 - 120) & v17)) ^ 0xCB5A1C2C) * v19 - 359;
  *(v20 - 120) = &a16;
  *(v20 - 112) = &a14;
  v21 = (*(v16 + 8 * (v18 + 4179)))(v20 - 120);
  return (*(v16 + 8 * ((4110 * (*(v20 - 100) - 1478011820 < ((v18 + 2366) ^ 0xBC2E43BD))) ^ v18)))(v21);
}

uint64_t sub_1969AD378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, int a34, unsigned __int8 a35, uint64_t a36, uint64_t a37, unsigned __int8 a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v61 = a5 ^ a1;
  v56 = ~(((*(a52 + (a38 ^ 0xEDLL)) - 16) ^ (*(a52 + ((((a8 ^ 0x66) & (v55 ^ 0xB7 ^ a22) ^ 0x8E) & ((v55 ^ 0xB7 ^ a22) & 0xA8 ^ 0xF7) | (v55 ^ 0xB7 ^ a22) & 0x20u) ^ 0xB4)) - 16)) << 16);
  v57 = a33 & 7 ^ 0x47D91F52;
  v58 = (a35 >> 3) ^ 0xC;
  v59 = v61 ^ 0x1DEB35D7313B19A0 ^ (0x8A4684D08B30C16DLL * *(v53 + 8 * ((v57 & 0xFFFFFFF7 | 8) ^ 0x47D91F29)));
  *(v54 + 8 * v58) = v61 ^ 0x1DEB35D7313B19A0 ^ (0x8A4684D08B30C16DLL * *(v53 + 8 * (((((a8 ^ 0x640) - 889120632) & 0x34FEEF9F) - 2970) & v57 ^ 0x47D91F29u)));
  *(v54 + 8 * (v58 ^ 1)) = v59;
  return (*(a53 + 8 * (a8 ^ 0x640)))(v56);
}

uint64_t sub_1969ADA74@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v10.val[0].i64[0] = (v7 - v3 - 1) & 0xF;
  v10.val[0].i64[1] = (v7 - v3 + 14) & 0xF;
  v10.val[1].i64[0] = (v7 - v3 + 13) & 0xF;
  v10.val[1].i64[1] = (v7 - v3 + 12) & 0xF;
  v10.val[2].i64[0] = (v7 - v3 + 11) & 0xF;
  v10.val[2].i64[1] = (v7 - v3 + 10) & 0xF;
  v10.val[3].i64[0] = (v7 - v3 + ~(a1 - 58)) & 0xF;
  v10.val[3].i64[1] = (v7 - v3) & 0xF ^ 8;
  *(a2 + -8 - v3 + v7) = veor_s8(veor_s8(veor_s8(*(v5 + v10.val[0].i64[0] - 7), *(v2 + -8 - v3 + v7)), veor_s8(*(v4 + v10.val[0].i64[0] - 7), *(v10.val[0].i64[0] + v6 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v10, xmmword_196EBFAE0), 0xBFBFBFBFBFBFBFBFLL)));
  return (*(v8 + 8 * ((706 * (8 - (v7 & 0x18) == -v3)) ^ a1)))(xmmword_196EBFAE0);
}

uint64_t sub_1969ADD18@<X0>(int a1@<W1>, int a2@<W5>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int128 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __int128 a45, uint64_t a46, int a47, int a48, int a49)
{
  LOBYTE(STACK[0x5E7]) = (a3 & 0x20) == 0;
  if ((a3 & 0x20) != 0)
  {
    v54 = 5;
  }

  else
  {
    v54 = 2;
  }

  LODWORD(STACK[0x600]) = v54;
  if (v50 > -775894753)
  {
    if (v50 > -197643048)
    {
      if (v50 <= 449447345)
      {
        if (v50 <= -27334919)
        {
          if (v50 != -197643047)
          {
            v55 = -175427814;
            goto LABEL_50;
          }

LABEL_55:
          *&STACK[0x6C0] = a45;
          return (*(v53 + 8 * ((((a49 ^ 0x190) + (a2 ^ 0x1790)) * ((a3 & 0x20) == 0)) ^ a48)))();
        }

        if (v50 == -27334918)
        {
          goto LABEL_55;
        }

        v55 = 150147849;
LABEL_50:
        if (v50 == v55)
        {
          goto LABEL_51;
        }

        goto LABEL_10;
      }

      if (v50 > 938730045)
      {
        if (v50 == 938730046)
        {
          goto LABEL_55;
        }

        v58 = 1394293849;
      }

      else
      {
        if (v50 == 449447346)
        {
          goto LABEL_55;
        }

        v58 = 637514092;
      }

      goto LABEL_54;
    }

    if (v50 > -570371206)
    {
      if (v50 > -562447252)
      {
        if (v50 == -562447251)
        {
          goto LABEL_55;
        }

        v58 = -211682881;
      }

      else
      {
        if (v50 == -570371205)
        {
          goto LABEL_55;
        }

        v58 = -568324246;
      }

      goto LABEL_54;
    }

    if (v50 != -775894752)
    {
      if (v50 == -680849487)
      {
        goto LABEL_55;
      }

      v58 = -661254964;
      goto LABEL_54;
    }

LABEL_51:
    STACK[0x248] = v51;
    *&STACK[0x6C0] = a20;
    return (*(v53 + 8 * ((((a2 ^ 0x1790) + (a19 ^ 0x1790) - 165) * ((a3 >> 5) & 1)) ^ (a2 + 219))))();
  }

  if (v50 <= -1339387636)
  {
    if (v50 > -1726328168)
    {
      if (v50 > -1583646148)
      {
        if (v50 == -1583646147)
        {
          goto LABEL_55;
        }

        v58 = -1339387638;
      }

      else
      {
        if (v50 == -1726328167)
        {
          goto LABEL_55;
        }

        v58 = -1654668468;
      }

      goto LABEL_54;
    }

    if (v50 != -1858280026)
    {
      if (v50 == -1833473448)
      {
        goto LABEL_55;
      }

      v58 = -1773392752;
      goto LABEL_54;
    }

    goto LABEL_51;
  }

  if (v50 > -1128264427)
  {
    if (v50 > -944222610)
    {
      if (v50 == -944222609)
      {
        goto LABEL_55;
      }

      v55 = -824026084;
    }

    else
    {
      if (v50 == -1128264426)
      {
        goto LABEL_55;
      }

      v55 = -1091214549;
    }

    goto LABEL_50;
  }

  if (v50 == -1339387635 || v50 == -1248410757)
  {
    goto LABEL_55;
  }

  v58 = -1181095620;
LABEL_54:
  if (v50 == v58)
  {
    goto LABEL_55;
  }

LABEL_10:
  STACK[0x240] = v52;
  STACK[0x248] = v51;
  if ((a3 & 0x40) != 0)
  {
    v56 = 6;
  }

  else
  {
    v56 = 2;
  }

  if ((a3 & 2) != 0)
  {
    v57 = 1;
  }

  else
  {
    v57 = v56;
  }

  LODWORD(STACK[0x42C]) = v57;
  LODWORD(STACK[0x424]) = 0;
  LODWORD(STACK[0x58C]) = 0;
  return (*(v53 + 8 * (((LODWORD(STACK[0x450]) == a1) * (((a2 - 4965) | 0x200) ^ 0x6C0)) ^ (a2 - 3815))))();
}

uint64_t sub_1969AE05C()
{
  v1 = STACK[0x228] - 3353;
  LODWORD(STACK[0x9C4]) = v0;
  return (*(STACK[0x248] + 8 * v1))();
}

uint64_t sub_1969AE604()
{
  v4 = (*(v1 + 8 * (v3 ^ 0xCE5u)))(*v2, *(v0 + 8 * (v3 ^ 0x1717u)) - 4);
  **(v0 + 8 * (v3 - 5590)) = v4;
  return (*(v1 + 8 * (((v4 != 0) * (((v3 - 1665595345) & 0x6346F7AA) - 5659)) | v3)))();
}

uint64_t sub_1969AE718@<X0>(int a1@<W8>)
{
  STACK[0x4C0] = STACK[0x580];
  STACK[0x958] += (95 * ((a1 - 520) ^ 0x600u)) ^ 0xFFFFFFFFFFFFFBF5;
  return (*(v1 + 8 * ((a1 - 520) ^ 0x1430)))();
}

uint64_t sub_1969AE8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  a9 = v13 + (((&a9 | 0x966197E7) - (&a9 & 0x966197E7)) ^ 0x12C81F0B) * v11 + v12;
  v14 = (*(v10 + 8 * (v12 + 1641)))(&a9);
  return (*(v10 + 8 * (((a10 != ((v12 + 2107589062) ^ 0x25872D69)) * (((v12 - 138) ^ 0x7C7) - 3134)) ^ (v12 - 138))))(v14);
}

uint64_t sub_1969AE958(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, _DWORD *a53, uint64_t a54, int a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t (*a59)(void))
{
  *a3 = a5;
  *a53 = a55;
  return a59();
}

uint64_t sub_1969AE980@<X0>(uint64_t a1@<X8>)
{
  STACK[0x4D0] = *(v3 + 8 * v2);
  LODWORD(STACK[0xB64]) = -984423831;
  STACK[0xB68] = &STACK[0x650];
  return (*(v3 + 8 * (((((a1 == 0) ^ (v2 - 49)) & 1) * (((v2 - 374) | 0xE14) - 3562)) ^ (v2 + 2000))))();
}

uint64_t sub_1969AE99C@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v5 = (v4 + v2 - 16);
  v6 = (a2 + v2 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(a1 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * (((v3 - 222) | 0x280) + 4288)) ^ v3)))();
}

uint64_t sub_1969AEE48@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v8 = 489239129 * (((((v7 - 224) | 0x43A787DC) ^ 0xFFFFFFFE) - (~(v7 - 224) | 0xBC587823)) ^ 0x5705B15);
  *(v7 - 192) = v6;
  *(v7 - 216) = v2;
  *(v7 - 208) = v3;
  *(v7 - 224) = a2 - v8;
  *(v7 - 220) = (v5 - 147) ^ v8;
  *(v7 - 200) = 1731776710 - v8;
  *(v7 - 196) = ((v5 ^ 0x142C) + 1110691397 * v4 + 1927430823) ^ v8;
  v9 = (*(a1 + 8 * (v5 ^ 0x1939)))(v7 - 224);
  return (STACK[0x750])(v9);
}

uint64_t sub_1969AEF00@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v23 = v11 - 1;
  v24 = __ROR8__((v10 + v23) & (v12 ^ v21 ^ a2), 8);
  v25 = -2 - (((0x21570CEECDB5FF2 - v24) | 0xEE1CC31C6ADDB643) + ((v24 + a6) | 0x11E33CE3952249BCLL));
  v26 = v25 ^ 0xFB4034E7BA0CF9A0;
  v25 ^= 0x14144D6F2329F9CCuLL;
  v27 = __ROR8__(v26, 8);
  v28 = (((2 * (v27 + v25)) | 0x65F07EF7DE7FB17CLL) - (v27 + v25) + a5) ^ a8;
  v29 = v28 ^ __ROR8__(v25, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (v13 - ((v30 + v29) | v13) + ((v30 + v29) | a4)) ^ v19;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  v34 = ((a7 & (2 * (v33 + v32))) - (v33 + v32) + v18) ^ v22;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = __ROR8__(v34, 8);
  v37 = ((v14 | (2 * (v36 + v35))) - (v36 + v35) + v20) ^ v15;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v17;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xBB5B6BF4C59B502;
  *(v10 + v23) = *(v9 + v23) ^ a3 ^ (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61))) ^ a1) >> (8 * ((v10 + v23) & 7)));
  return (*(v16 + 8 * (((v23 == 0) * a9) ^ v12)))();
}

uint64_t sub_1969AF07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  a19 = v19 - 489239129 * ((2 * (&a17 & 0x605047C8) - &a17 - 1615873994) ^ 0x26879B00) + 69;
  a17 = a12;
  v21 = (*(v20 + 8 * (v19 ^ 0x19F4)))(&a17);
  return (*(v20 + 8 * ((4011 * (a18 == v19 + 1906275934 + (v19 ^ 0x1016))) ^ v19)))(v21);
}

uint64_t sub_1969AF188@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  (*(a1 + 8 * (v2 + 3494)))(a2);
  *(STACK[0x3F8] + 24) = 0;
  return sub_1969AF1AC();
}

void sub_1969AF1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 8 * (v6 ^ 0x13BD)))();
  STACK[0x3F8] = 0;
  JUMPOUT(0x1968BB064);
}

uint64_t sub_1969AF208(uint64_t a1, int a2)
{
  v5 = (a2 ^ 0xC39) + v3 + 1282619933;
  v6 = *(v2 + 4) + 1282620797;
  v7 = v5 < -188522919;
  v8 = v5 > v6;
  if (v7 != v6 < -188522919)
  {
    v8 = v7;
  }

  return (*(v4 + 8 * ((v8 * (a2 - 3685)) ^ a2)))();
}

uint64_t sub_1969AF2A0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 26;
  v4 = (*(v2 + 8 * (v1 + 3161)))(26, 0x100004077774924);
  *(a1 + 24) = v4;
  return (*(v2 + 8 * ((15 * ((((((v1 + 494) ^ 0x1E3E) - 2316) ^ (v4 == 0)) & 1) == 0)) ^ (v1 + 494))))();
}

uint64_t sub_1969AF31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = *(a6 + 8 * (LODWORD(STACK[0x36C]) - 5588));
  v72 = STACK[0x320] + a71 - 0x2D6560F450244D3ELL;
  v73 = (__ROR8__(v72 & 0xFFFFFFFFFFFFFFF8, 8) + v113) & 0xFBFFFFFFFFFFFFFFLL;
  v74 = v73 ^ 0x4DE9423B6F16E7D2;
  v73 ^= 0xE5AFA7ACF6E0968ELL;
  v75 = __ROR8__(v74, 8);
  v76 = __ROR8__((v75 + v73 - ((2 * (v75 + v73)) & 0x5C9AA91F802DA82ELL) + 0x2E4D548FC016D417) ^ 0xCAD02350472B6B69, 8);
  v77 = (v75 + v73 - ((2 * (v75 + v73)) & 0x5C9AA91F802DA82ELL) + 0x2E4D548FC016D417) ^ 0xCAD02350472B6B69 ^ __ROR8__(v73, 61);
  v78 = (v76 + v77) ^ 0xF5A2F1B9B5D0B209;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = __ROR8__(v78, 8);
  v81 = (((2 * (v80 + v79)) | 0xB8A665E197C7F47ELL) - (v80 + v79) - 0x5C5332F0CBE3FA3FLL) ^ 0x53084359E3A8520;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (0x1D3A72000429358 - ((v83 + v82) | 0x1D3A72000429358) + ((v83 + v82) | 0xFE2C58DFFFBD6CA7)) ^ 0x9F69C5F50FA24850;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (0x25583E6B392D1AC8 - ((v86 + v85) | 0x25583E6B392D1AC8) + ((v86 + v85) | 0xDAA7C194C6D2E537)) ^ 0xBE64DD96B6563B5BLL;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = __ROR8__(v87, 8);
  v90 = (0x272BFFDC1C3FC546 - ((v89 + v88) | 0x272BFFDC1C3FC546) + ((v89 + v88) | 0xD8D40023E3C03AB9)) ^ 0xC2FEEBC7A19395BALL;
  v91 = v90 ^ __ROR8__(v88, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (((((2 * (v92 + v91)) | 0xC355F3281D11914) - (v92 + v91) - 0x61AAF9940E88C8ALL) ^ 0xAD2AED4B686FD0CBLL) >> (8 * (v72 & 7u))) ^ *v72;
  v94 = *++v72;
  v95 = __ROR8__(v72 & 0xFFFFFFFFFFFFFFF8, 8);
  v96 = -2 - (((0x6AF7234D0CC131D4 - v95) | 0x1A41569DA1CC8FFALL) + ((v95 + 0x1508DCB2F33ECE2BLL) | 0xE5BEA9625E337005));
  v97 = v96 ^ 0x53A814A6CEDA6828;
  v96 ^= 0xFBEEF131572C1974;
  v98 = __ROR8__(v97, 8);
  v99 = (((2 * (v98 + v96)) & 0xF2BD014CC6D06D4ALL) - (v98 + v96) + 0x6A17F599C97C95ALL) ^ 0xE23C08861BAA7624;
  v100 = v99 ^ __ROR8__(v96, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0xF5A2F1B9B5D0B209;
  v102 = __ROR8__(v101, 8);
  v103 = v101 ^ __ROR8__(v100, 61);
  v104 = (0xFF7817662BD390FALL - ((v102 + v103) | 0xFF7817662BD390FALL) + ((v102 + v103) | 0x87E899D42C6F05)) ^ 0x59E45E5C81F5101ALL;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = (__ROR8__(v104, 8) + v105) ^ 0x61459D2AF01F24F7;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = (__ROR8__(v106, 8) + v107) ^ 0x64C31C027084DE6CLL;
  v109 = v108 ^ __ROR8__(v107, 61);
  v110 = __ROR8__(v108, 8);
  v111 = (0xD96EC6C1FDF6D5E3 - ((v110 + v109) | 0xD96EC6C1FDF6D5E3) + ((v110 + v109) | 0x2691393E02092A1CLL)) ^ 0x3CBBD2DA405A851FLL;
  LOBYTE(v109) = (((__ROR8__(v111, 8) + (v111 ^ __ROR8__(v109, 61))) ^ 0xAB3042D228875C41) >> (8 * (v72 & 7u))) ^ v94;
  return v71(a1, (v109 | (v93 << 8)) - 2 * ((v109 & 5 | (v93 << 8) & 0x3505) ^ v109 & 5) + 13568);
}

void sub_1969AF35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x788] = 0;
  STACK[0x708] = 0;
  STACK[0x440] = *(a6 + 8 * v6);
  JUMPOUT(0x1969AF374);
}

void sub_1969AF494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x5F8] = STACK[0x688];
  LODWORD(STACK[0x4FC]) = STACK[0x57C];
  sub_1969A7A9C(a1, a2, a3, a4, a5, a6);
}

void fp_dh_76d4596cbd6288e46289774bc3c93bc0(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) - 489239129 * ((-2 - ((~a1 | 0xDCE3A4A9) + (a1 | 0x231C5B56))) ^ 0x65CB879F);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 3541) - 4;
  (*&v2[8 * v1 + 21840])(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 3549) - 12, v7, 21);
  (*&v2[8 * (v1 ^ 0xABA)])(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0x1261)) - 8, v3, 35);
  v4 = 0x18CC46F853C65F96;
  v5 = 0x22ECD738F8B2BEDFLL;
  v6 = -1893674749;
  __asm { BRAA            X14, X17 }
}

uint64_t sub_1969AF864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (((*(v7 + 16) ^ 0x989BE79B) + 1574664780) ^ (((v8 + 774024055) & 0xD1DD57DD ^ 0xAB0D6C77 ^ *(v7 + 16)) + 1850599419) ^ ((*(v7 + 16) ^ 0xCC69624E) + 153747359)) + 99354976;
  v10 = (((v8 - 4840) | 0x252) ^ 0x40AB69E2) + v6 > v9;
  v11 = (v6 > 0xBF54946F) ^ (v9 < 0x40AB6B90);
  v12 = v10;
  if (v11)
  {
    v13 = v6 > 0xBF54946F;
  }

  else
  {
    v13 = v12;
  }

  return (*(a6 + 8 * ((26 * !v13) ^ v8)))();
}

uint64_t sub_1969AF954()
{
  v4 = (v0 - 1436) | 0x800;
  v5 = (*(v1 + 8 * (v0 ^ 0x1375)))(*v3);
  v6 = *v2 == (((v4 ^ 0x1A85) - 5027) ^ 0x2EB);
  return (*(v1 + 8 * ((v6 | (16 * v6)) ^ v4)))(v5);
}

uint64_t sub_1969AF9E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  *a4 = 0;
  *a5 = 0;
  a15 = 1575331711 * ((-1386267699 - (&a15 | 0xAD5F3BCD) + (&a15 | 0x52A0C432)) ^ 0x3EFB5130) + 1655634431;
  v17 = (*(v16 + 54592))(&a15);
  return (*(v16 + 8 * ((5011 * (a16 == 1906281716)) ^ 0x1DAu)))(v17);
}

uint64_t sub_1969AFAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (*(a6 + 8 * (v6 ^ 0x1522)))(32, 0x103004054B5FA7DLL);
  v8 = STACK[0x370];
  STACK[0x650] = v7;
  return (*(v8 + 8 * (((v7 == 0) * (((v6 + 670074702) & 0xD80F7F5F ^ 0xFFFFE68A) + 304 * (v6 ^ 0xFA2))) ^ v6)))();
}

uint64_t sub_1969AFB84(__n128 a1)
{
  v4[-1] = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_1969AFD04(uint64_t a1, int a2)
{
  v6 = (v4 - 32);
  v7 = (a1 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v3 == 32) * a2) ^ (v2 + 1172))))();
}

uint64_t sub_1969AFD14(uint64_t result)
{
  v9 = *(v6 + 8);
  v10 = (*(v9 + 4 * (v8 - 1)) ^ v2) >> v4;
  *(v9 + 4 * v5) = v10 + v2 - ((v10 << (result + 62)) & v3);
  if (*(*(v6 + 8) + 4 * v5) == v2)
  {
    v11 = -1426344226;
  }

  else
  {
    v11 = -1426344225;
  }

  v12 = v11 + v1;
  if ((*(v6 + 4) + v7) >= 0x7FFFFFFF)
  {
    v12 = 1352679864 - v12;
  }

  *(v6 + 4) = v12;
  return result;
}

uint64_t sub_1969AFDB8()
{
  v3 = *(v1 + 8);
  STACK[0x6C0] = v2;
  STACK[0x438] = 0;
  LODWORD(STACK[0x494]) = -1720256293;
  STACK[0x778] = 0;
  return (*(STACK[0x248] + 8 * ((15 * (((v3 == 0) ^ (21 * (v0 ^ 0xED) + v0 + 17 + 1)) & 1)) ^ v0)))();
}

void sub_1969AFE1C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, unsigned int a4)
{
  a4 = (v4 - 825) ^ (1621291457 * ((((2 * &a3) | 0xB13025C0) - &a3 - 1486361312) ^ 0x6E8F9379));
  a3 = a1;
  (*(v5 + 8 * (v4 + 4505)))(&a3);
  JUMPOUT(0x1969AFE84);
}

void sub_1969AFF1C(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x196A073BCLL);
}

uint64_t sub_1969AFF34@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40)
{
  v42 = -733136081 * (*(a9 + 16) + a7) - 1780279441;
  v43 = v42 ^ 0xEFFD7FFF;
  v44 = ((v40 ^ v42 ^ 0xC962B7F1) + 199551964) ^ v42 ^ ((v42 ^ 0xC9507F97) + 198583724) ^ ((v42 ^ 0xD2B6144C) + 271601265) ^ (v43 + 763045316);
  *(v41 - 164) = v44;
  v46 = v44 == 1031382467 || (((((v40 ^ v42 ^ 0xF1) - 36) ^ v42 ^ ((v42 ^ 0x97) - 84)) ^ (((v42 ^ 0x4C) + 113) ^ (-v42 - 61))) & 0xF) != (((a40 - 1540) | 0x604) ^ 0x615);
  return (*(a1 + 8 * ((v46 * (a40 - 1432)) ^ (a40 + 1681))))(v43, 763045316, a1, a2, a3, a4, a5, a6, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_1969B0030()
{
  v2 = 68 * (v1 ^ 0xE1B);
  v3 = STACK[0x580];
  v4 = STACK[0x870];
  v5 = STACK[0x454];
  STACK[0x500] = *(v0 + 8 * (v1 - 3431));
  STACK[0x828] = v3;
  LODWORD(STACK[0x68C]) = v5;
  STACK[0x560] = v4;
  STACK[0x918] = 0;
  LODWORD(STACK[0x85C]) = -1720256293;
  STACK[0x448] = 0x25B2F1AA6CA5FEE2;
  STACK[0x568] = 0;
  v6 = (*(v0 + 8 * (v2 ^ 0x1B51)))(16, 0x20040A4A59CD2);
  STACK[0x5D8] = v6;
  return (*(v0 + 8 * (((v6 == 0) * ((((v2 - 413598701) & 0x18A71778) - 1835) ^ (v2 + 1480961153) & 0xA7BA5FBE)) | v2)))();
}

uint64_t sub_1969B0060()
{
  *(v5 - 128) = (v2 ^ 0x37FD61FB) - 1790939281 * ((v5 + 1955510372 - 2 * ((v5 - 136) & 0x748EB8EC)) ^ 0x8C5298AD) + 2019668688;
  *v1 = v0;
  (*(v3 + 8 * (v2 ^ 0x37FD61FB ^ (v4 + 1354))))(v5 - 136);
  return (v7 ^ 0x7FBFBDFC) - 236990728 + ((v7 << (v2 ^ 0xFB ^ (v4 + 1))) & 0xFF7F7BF8) - 1906281716;
}

uint64_t sub_1969B01AC@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v3 = a2 + 795;
  v4 = a2 - 114;
  *(v2 + 108) = 0;
  v5 = STACK[0x6E0];
  *(v2 + 104) = 16;
  *(v2 + 103) = v5[23];
  *(v2 + 102) = v5[22];
  *(v2 + 101) = v5[21];
  *(v2 + 100) = v5[20];
  *(v2 + 99) = v5[19];
  *(v2 + 98) = v5[18];
  *(v2 + 97) = v5[17];
  *(v2 + 96) = v5[16];
  *(v2 + 95) = v5[15];
  *(v2 + 94) = v5[14];
  *(v2 + 93) = v5[13];
  *(v2 + 92) = v5[12];
  *(v2 + 91) = v5[11];
  *(v2 + 90) = v5[10];
  *(v2 + 89) = v5[9];
  *(v2 + 88) = v5[8];
  return (*(a1 + 8 * ((394 * (v5[4] != (v4 ^ 0x60))) ^ v3)))();
}

uint64_t sub_1969B03F0@<X0>(int a1@<W8>)
{
  v7 = 489239129 * ((((2 * (v6 - 144)) | 0xAC57B362) - (v6 - 144) + 701769295) ^ 0x6F03FA87);
  *(v6 - 128) = (v1 ^ 0x7FFEFFB0) - v7 + (a1 & 0xFFFDFF60) + ((v5 - 704) ^ 0xACDFAFD2);
  *(v6 - 136) = v4;
  *(v6 - 144) = (v5 + 1601) ^ v7;
  v8 = (*(v2 + 8 * (v5 + 4932)))(v6 - 144);
  return (*(v2 + 8 * (v5 ^ (8 * (*(v6 - 140) != v3)))))(v8);
}

uint64_t sub_1969B04AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22)
{
  v25 = 1012216201 * (((&a17 | 0xB0965368) - &a17 + (&a17 & 0x4F69AC90)) ^ 0x343FDB84);
  a22 = v25 + v24 - 1795305072;
  a17 = v25 ^ 0x80F33AA;
  a19 = v25 + 1674889175;
  a20 = a12;
  a21 = &a13;
  v26 = (*(v23 + 8 * (v24 ^ 0x1D93)))(&a17);
  return (*(v23 + 8 * (((a18 == v22 + ((v24 + 228845787) & 0xF25C1515) - 1285) * (((v24 - 1266) | 0xD1) + 4620)) ^ v24)))(v26);
}

uint64_t sub_1969B0598()
{
  v4 = 64 - v2;
  v6 = (((v1 ^ 0x641) + 1092497844) & 0xBEE1CEFD) - v0 + 763048545 < v4 || v4 > ((v1 ^ 0x641u) - 447) + 4294964296u;
  return (*(v3 + 8 * (v6 | (8 * v6) | v1 ^ 0x641)))();
}

void fp_dh_4d52abaa756a279f203f467c7eedf5a3(uint64_t a1)
{
  v1 = *(a1 + 16) + 1068996913 * (((a1 | 0xFC2075CD) - (a1 | 0x3DF8A32) + 64981554) ^ 0x29CE945C);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1969B0740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v19 - 128) = &a14;
  *(v19 - 120) = v18;
  *(v19 - 136) = (v14 - 2527) ^ (1575331711 * ((~((v19 - 144) ^ 0x435ED052 | 0x7AF5C96D) + (((v19 - 144) ^ 0x435ED052) & 0x7AF5C96D)) ^ 0xAA0F73C2));
  *(v19 - 144) = v17;
  *(v19 - 112) = &a14;
  (*(v16 + 8 * (v14 ^ 0xCF)))(v19 - 144);
  v20 = 489239129 * ((((2 * ((v19 - 144) ^ 0x2A9323F)) | 0x5BFA5408) - ((v19 - 144) ^ 0x2A9323F) - 771566084) ^ 0x967C3B0D);
  *(v19 - 128) = v15 - v20 + (((v14 - 6527) | 0x402) ^ 0xD2785847);
  *(v19 - 144) = (v14 - 3196) ^ v20;
  *(v19 - 136) = a13;
  v21 = (*(v16 + 8 * (v14 ^ 0xB9)))(v19 - 144);
  return (*(v16 + 8 * ((51 * (*(v19 - 140) == ((v14 - 1503) | 0x23) + 1573487249)) ^ v14)))(v21);
}

uint64_t sub_1969B0898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, uint64_t a17)
{
  v20 = v17 ^ 0x1264;
  a16 = v20 + 4625 - 1790939281 * ((2 * (&a16 & 0x17040A98) - &a16 - 386140825) ^ 0x1027D526);
  a17 = a13;
  (*(v18 + 8 * (v20 ^ 0x1F6F)))(&a16);
  a16 = v20 + 4625 - 1790939281 * ((2028206075 - (&a16 | 0x78E3F7FB) + (&a16 | 0x871C0804)) ^ 0x7FC02845);
  a17 = a14;
  v21 = (*(v18 + 8 * (v20 + 5351)))(&a16);
  return (*(v18 + 8 * (((((v20 + 2044696370) ^ a12) - 138416130 + ((2 * a12) & 0xF3BF39EC) == v19) * (v20 ^ 0x1406)) ^ v20)))(v21);
}

uint64_t fp_dh_74a2cda5f8386b1b561e662a5fb7d346(uint64_t a1)
{
  v2 = 489239129 * ((2 * (a1 & 0x269C9162) - a1 + 1499688605) ^ 0xE04B4DAB);
  result = (**(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(a1 + 8) ^ v2) - 1604995659))((-588197691 * (*(a1 + 40) + v2) + 2049608045), *(a1 + 16), *(a1 + 32), (91572673 * (*(a1 + 24) - v2) - 1295271212), *a1, *(a1 + 48));
  *(a1 + 56) = (result ^ 0x7DFFCDF5) - 207634689 + ((2 * result) & 0xFBFF9BEA);
  return result;
}

uint64_t sub_1969B09F8@<X0>(uint64_t a1@<X8>)
{
  v4 = *v2;
  *v2 = v2[3];
  v2[3] = v4;
  v5 = v2[1];
  v2[1] = v2[2];
  v2[2] = v5;
  return (*(a1 + 8 * ((4350 * (v1 - 1 == (((v3 - 988) | 0x1014) ^ 0x546BAAD8))) ^ v3)))();
}

uint64_t fp_dh_230b7a195b93e236f3bfdeddf828d8eb(uint64_t result)
{
  v1 = (*(result + 8) - 77 * (((result | 0x43) - result + (result & 0xBC)) ^ 0x95));
  v2 = v1 > 0x1E;
  v3 = (1 << v1) & 0x41400000;
  if (v2 || v3 == 0)
  {
    v5 = 1906238819;
  }

  else
  {
    v5 = 1906281716;
  }

  *(result + 4) = v5;
  return result;
}

uint64_t sub_1969B0B40@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = (a2 - 3168) | 0x708;
  *v4 = a1;
  *v8 = v3;
  v11 = v7 - (&v11 ^ 0xF8DC2041) * v6 + 4269;
  v12 = v10;
  (*(v5 + 8 * (v7 ^ 0x1D83)))(&v11);
  v11 = v7 - 1358 - ((2 * (&v11 & 0x67E2ED90) - &v11 + 404558446) ^ 0xE0C1322F) * v6 + 5627;
  v12 = v9;
  (*(v5 + 8 * (v7 + 4995)))(&v11);
  return 0;
}

uint64_t sub_1969B0B64@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, char a10)
{
  v12 = a1 - 1475;
  a9 = a1 - 489239129 * ((2 * (&a9 & 0x64898B68) - &a9 + 460747927) ^ 0xA25E57A1) + 2491;
  a10 = 89 * ((2 * (&a9 & 0x68) - &a9 - 105) ^ 0xA1) + 13;
  v13 = (*(v10 + 8 * (a1 + 3661)))(&a9);
  return (*(v10 + 8 * (((**(v11 + 8 * (v12 - 1478)) == ((1076 * (v12 ^ 0x715)) ^ 0x1504)) * (((v12 + 407007358) & 0xE7BD8F77) + 1400)) ^ v12)))(v13);
}

void TBGzuU3p5n1n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1969B0C68@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, __int16 a11, char a12, int a13, unsigned int a14, uint64_t a15, int *a16, char *a17)
{
  a14 = ((v17 ^ 0xA0B) + 2250) ^ ((&a14 ^ v18) * v20);
  a15 = a1;
  a16 = &a12;
  a17 = &a10;
  (*(v19 + 8 * (v17 ^ 0x14FB)))(&a14);
  a14 = (v17 ^ 0xA0B) - ((2 * (&a14 & 0x44EF7878) - &a14 + 990939015) ^ 0x574B1285) * v20 + 1107;
  a15 = a6;
  a16 = &a5;
  v21 = (*(v19 + 8 * (v17 ^ 0x14CB)))(&a14);
  return (*(v19 + 8 * ((231 * (a5 == (((v17 ^ 0xA0B) + 1424530137) & 0xAB1763FC ^ 0x344))) ^ v17 ^ 0xA0B)))(v21);
}

uint64_t sub_1969B0D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = ((((v17 - 144) | 0x82BF091E) - (v17 - 144) + ((v17 - 144) & 0x7D40F6E0)) ^ 0x3B972A28) * v15;
  *(v17 - 128) = -763867404 - v18 + v13 + 3566;
  *(v17 - 144) = (v16 - 1854) ^ v18;
  *(v17 - 136) = a13;
  v19 = (*(v14 + 8 * (v16 + 1477)))(v17 - 144);
  return (*(v14 + 8 * ((19 * (*(v17 - 140) == (v16 ^ 0x232) + 1573483649 + ((v16 - 2913) | 0x220))) ^ v16)))(v19);
}

uint64_t sub_1969B0E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = 1575331711 * (((&a15 | 0x97842E61) + (~&a15 | 0x687BD19E)) ^ 0xFBDFBB62) + 1655634431;
  v18 = (*(v16 + 54592))(&a15);
  return (*(v16 + 8 * ((193 * (a16 == 1906281716)) ^ v17)))(v18);
}

uint64_t sub_1969B0F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *(v18 + 8 * (v17 + v14));
  v20 = (v9 + 4 + v8);
  *(v12 + v20) = ((v9 + 4 + v8) * v11) ^ HIBYTE(v10) ^ *(a8 + v20) ^ *(v15 + v20 + 1) ^ *(v20 + v16 + 6) ^ 0x7F;
  *(v12 + (v20 + 1)) = (v20 * v11 + 53) ^ BYTE2(v10) ^ *(a8 + (v20 + 1)) ^ *((v20 + 1) + v15 + 1) ^ *((v20 + 1) + v16 + 6) ^ 0x1C;
  *(v12 + (v20 + 2)) = (v20 * v11 + 106) ^ BYTE1(v10) ^ *(a8 + (v20 + 2)) ^ *(v15 + (v20 + 2) + 1) ^ *((v20 + 2) + v16 + 6) ^ v13;
  *(v12 + (v20 + 3)) = v10 ^ ((v9 + 4 + v8) * v11 - 97) ^ *(a8 + (v20 + 3)) ^ *((v20 + 3) + v15 + 1) ^ *((v20 + 3) + v16 + 6) ^ 0x9F;
  return v19();
}

uint64_t sub_1969B1058(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5)
{
  v7 = ((((a4 ^ 0x6F) + 108) ^ a4 ^ ((v6 ^ 5) + 2)) ^ (((((a5 ^ 0x60) + 45) ^ v6) + 104) ^ (((a5 - 100) ^ a4) + 119))) & 0x7F;
  v9 = v7 != 123 && (v7 ^ 0x7Bu) < 5;
  return (*(v5 + 8 * ((3677 * v9) ^ a5)))(a1, a5 ^ 0xE60, 1906239698);
}

uint64_t sub_1969B10E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41)
{
  v45 = (*(v43 + 96) - ((2 * *(v43 + 96)) & 0x10) + 15);
  if (v45 == 16)
  {
    v52 = *(v43 + 64);
    v51 = *(v43 + 68);
    v47 = (a6 - 4084) | 0x1200;
    *(v43 + 56) = (8 * (v51 - ((2 * v51) & 8)) + 32) ^ 0xCC;
    *(v43 + 57) = (v51 >> ((a6 + 12) ^ 2)) ^ 0xEC;
    *(v43 + 58) = (v51 >> 13) ^ 0xEC;
    *(v43 + 59) = (v51 >> 21) ^ 0xEC;
    *(v43 + 60) = ((__PAIR64__(v52, v51) >> 29) - ((2 * (__PAIR64__(v52, v51) >> 29)) & 0x96) - 53) ^ 0x27;
    *(v43 + 61) = (v52 >> 5) ^ 0xEC;
    *(v43 + 62) = (v52 >> 13) ^ 0xEC;
    v50 = (v52 >> 21) ^ 0xFFFFFFEC;
  }

  else
  {
    v46 = a6;
    if (v45 != 17)
    {
      goto LABEL_6;
    }

    v47 = a41 & 0xB7F41A57;
    v48 = *(v43 + 64);
    v49 = *(v43 + 68);
    *(v43 + 56) = (v48 >> (a41 & 0x57 ^ 0x12)) ^ 0xEC;
    *(v43 + 57) = (v48 >> 13) ^ 0xEC;
    *(v43 + 58) = (v48 >> 5) ^ 0xEC;
    *(v43 + 59) = ((__PAIR64__(v48, v49) >> 29) - ((2 * (__PAIR64__(v48, v49) >> 29)) & 0x12) - 119) ^ 0x65;
    *(v43 + 60) = (v49 >> 21) ^ 0xEC;
    *(v43 + 61) = (v49 >> 13) ^ 0xEC;
    *(v43 + 62) = (v49 >> 5) ^ 0xEC;
    LOBYTE(v50) = (-8 * v49 + 120) ^ 0x94;
  }

  v46 = v47 - 524;
  *(v43 + 63) = v50;
LABEL_6:
  STACK[0x3A0] = *(v44 + 8 * (v46 - 6093));
  STACK[0x6A0] = v43;
  STACK[0x6A8] = v43;
  v53 = STACK[0x590];
  v54 = (&STACK[0x6E0] + STACK[0x590]);
  STACK[0x6B0] = v54;
  STACK[0x590] = v53 + 320;
  LODWORD(STACK[0x578]) = *(v43 + 72);
  LODWORD(STACK[0x4E4]) = *(v43 + 76);
  LODWORD(STACK[0x4E8]) = *(v43 + 80);
  LODWORD(STACK[0x56C]) = *(v43 + 84);
  v55 = (*(v43 + 96) - ((2 * *(v43 + 96)) & 0xB4) + 94);
  if (v55 == 92)
  {
    LODWORD(STACK[0x608]) = *(v43 + 88);
    JUMPOUT(0x196A065D4);
  }

  if (v55 != 95)
  {
    JUMPOUT(0x19699B000);
  }

  v56 = *(v43 + (v41 + 1901804226)) ^ 0xEC;
  v57 = ((*(v43 + ((a6 - 4043) ^ 0x8EA4CD70) + 1901804226) ^ 0xEC) << 16) | ((*(v43 + (v41 + 1901804229)) ^ 0xEC) << 24) | v56 | ((*(v43 + (v41 + 1901804227)) ^ 0xEC) << 8);
  *v54 = v57 + v42 - 2 * (v57 & (v42 + 16) ^ v56 & 0x10);
  return (*(v44 + 8 * ((1549 * ((v41 + 1901804230) < 0x40)) ^ (a6 - 3989))))(1901804226);
}

uint64_t sub_1969B1434@<X0>(int a1@<W8>)
{
  (*(v1 + 8 * (a1 + 3304)))(v2);
  STACK[0x6B0] = 0;
  return sub_19698E230();
}

void fp_dh_627090bdea074a6260d19fb0b461717b(uint64_t a1)
{
  v1 = *(a1 + 16) + 1283153057 * ((~a1 & 0xC969B117 | a1 & 0x36964EE8) ^ 0x86B1B220);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969B15DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  v21 = (a3 - 1950013104) & 0x743AC9B7;
  v22 = ((a12 + 782921536) ^ 0x32D90F0) & (2 * ((v21 - 2085612940) & (a12 + 782921536))) ^ (v21 - 2085612940) & (a12 + 782921536);
  v23 = ((((a12 + 782921536) ^ 0x34DB454) << (a20 + 16)) ^ 0x1FB5D5C) & ((a12 + 782921536) ^ 0x34DB454) ^ (((a12 + 782921536) ^ 0x34DB454) << (a20 + 16)) & 0x80FDAEAE;
  v24 = v23 ^ 0x8004A2A2;
  v25 = (v23 ^ 0x80C40C0A) & (4 * v22) ^ v22;
  v26 = ((4 * v24) ^ 0x3F6BAB8) & v24 ^ (4 * v24) & 0x80FDAEAC;
  v27 = (v26 ^ 0xF4AAA0) & (16 * v25) ^ v25;
  v28 = ((16 * (v26 ^ 0x80090406)) ^ 0xFDAEAE0) & (v26 ^ 0x80090406) ^ (16 * (v26 ^ 0x80090406)) & 0x80FDAEA0;
  v29 = v27 ^ 0x80FDAEAE ^ (v28 ^ 0xD8AA00) & (v27 << 8);
  v30 = (a12 + 782921536) ^ (2 * ((v29 << 16) & 0xFD0000 ^ v29 ^ ((v29 << 16) ^ 0x2EAE0000) & (((v28 ^ 0x8025040E) << 8) & 0xFD0000 ^ 0x510000 ^ (((v28 ^ 0x8025040E) << 8) ^ 0x7DAE0000) & (v28 ^ 0x8025040E))));
  v32 = v30 != -2095888474 && (v30 & 0xF) == 6;
  return (*(v20 + 8 * ((((2787 * (v21 ^ 0x884)) ^ 0x15F3) * v32) ^ v21)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1969B17A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, unint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = STACK[0x36C];
  v71 = (v69 ^ 0x9976F8DB) + a69;
  STACK[0x860] = v71;
  return (*(a6 + 8 * ((v70 - 614) ^ (2016 * (v71 <= a37)))))();
}

uint64_t fp_dh_65331e514793e9e9b603cb6e7d72cc7b(uint64_t result)
{
  v1 = 1283153057 * ((result - 2 * (result & 0xA8533773894A16A2) - 0x57ACC88C76B5E95ELL) ^ 0x1BEA4C4C6921595);
  v2 = *(result + 32) + v1;
  v3 = *(result + 24) - v1;
  v4 = *(result + 16) + v1;
  v5 = *(result + 4) ^ v1;
  v6 = *(result + 8) ^ v1;
  v7 = *result - v1;
  v8 = v6 < v4;
  v9 = v6 < v4;
  v10 = v8;
  if (v3)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    v7 = v5;
  }

  *(result + 28) = v7 ^ v2;
  return result;
}

uint64_t fp_dh_908238bbd7f06e666bbd960f7d0ed966(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = 1825732043 * (((a1 | 0xDE792425) - (a1 & 0xDE792425)) ^ 0xDEEF7712);
  v3 = *(a1 + 8) ^ v2;
  v9 = v3 - 489239129 * ((&v8 & 0x797C0BB0 | ~(&v8 | 0x797C0BB0)) ^ 0x3FABD779) + 1406619934;
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v3 - 2131677852) - 4;
  (*&v4[8 * v3 - 0x3F875D1A8])(&v8);
  v5 = 1621291457 * ((-1987747629 - (&v8 | 0x898560D3) + (&v8 | 0x767A9F2C)) ^ 0x406D1EB5);
  v9 = v3 + v5 + 954547310;
  v10 = 1866249606 - v5;
  result = (*&v4[8 * (v3 ^ 0x7F0ECFF8)])(&v8);
  if (v8 == 364443027 || v8 == 364443024)
  {
    v7 = 654144011 * ((&v8 & 0x277CBD66 | ~(&v8 | 0x277CBD66)) ^ 0xF4573F05);
    v10 = v7 ^ (*(a1 + 12) + v2) ^ 0x4055D47 ^ (11 * (v3 ^ 0x7F0ED55B));
    v8 = v3 - v7 - 1320977906;
    (*&v4[8 * (v3 ^ 0x7F0ECE75)])(&v8);
    __asm { BRAA            X8, X17 }
  }

  return result;
}

uint64_t sub_1969B1C9C(int a1)
{
  v7 = v4 - 1;
  *(v6 + v7) ^= *(v3 + (v7 & 0xF)) ^ *(v1 + (v7 & 0xF) + 1) ^ (67 * (v7 & 0xF)) ^ *(v2 + (v7 & 0xF) + 1) ^ 0xEC;
  return (*(v5 + 8 * ((21 * (v7 == 0)) ^ (a1 + 741))))();
}

uint64_t sub_1969B1CFC()
{
  if (v0 == 1906239664)
  {
    v3 = STACK[0x580];
    LODWORD(STACK[0x51C]) = *(STACK[0x580] + 16) ^ 0xE21DBE9;
  }

  else
  {
    if (v0 != 1906281716)
    {
      LODWORD(STACK[0x824]) = v0;
      STACK[0x5C0] = STACK[0x580];
      STACK[0x740] = *(v1 + 8 * (v2 ^ 0xE10));
      JUMPOUT(0x1969BE438);
    }

    v3 = STACK[0x580];
  }

  v4 = *v3;
  STACK[0x8C0] = 0;
  STACK[0x6F8] = 0;
  return (*(v1 + 8 * (((v4 != 0) * (v2 - 3115)) ^ (v2 + 2784))))();
}

uint64_t sub_1969B1E24@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v4 = a2 - v2 + 1206365924;
  v5 = (v4 ^ 0xB31D0CA6) & (2 * ((((v3 - 434231829) & 0x19E1CFF7) - 1206369937) & v4)) ^ (((v3 - 434231829) & 0x19E1CFF7) - 1206369937) & v4;
  v6 = ((2 * (v4 ^ 0xE33D2E82)) ^ 0xB64AFF68) & (v4 ^ 0xE33D2E82) ^ (2 * (v4 ^ 0xE33D2E82)) & 0x5B257FB4;
  v7 = v6 ^ 0x49250094;
  v8 = (v6 ^ 0x9044D24) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x6C95FED0) & v7 ^ (4 * v7) & 0x5B257FB4;
  v10 = (v9 ^ 0x48057E84) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x13200124)) ^ 0xB257FB40) & (v9 ^ 0x13200124) ^ (16 * (v9 ^ 0x13200124)) & 0x5B257FB0;
  v12 = v10 ^ 0x5B257FB4 ^ (v11 ^ 0x12057BB4) & (v10 << 8);
  v13 = v4 ^ (2 * ((v12 << 16) & 0x5B250000 ^ v12 ^ ((v12 << 16) ^ 0x7FB40000) & (((v11 ^ 0x492004B4) << 8) & 0x5B250000 ^ 0x5A000000 ^ (((v11 ^ 0x492004B4) << 8) ^ 0x257F0000) & (v11 ^ 0x492004B4))));
  LODWORD(STACK[0x724]) = v13 ^ 0x216C5685;
  v14 = (*(a1 + 8 * (v3 ^ 0x369)))(v13 ^ 0xB81AAE5E, 0x100004077774924);
  v15 = STACK[0x370];
  STACK[0x490] = v14;
  return (*(v15 + 8 * ((22 * (v14 != 0)) ^ v3)))();
}

void fp_dh_c51a983adf7d6d2ac14dd410385d2470()
{
  v0 = MEMORY[0x1EEE9AC00]();
  if (*(v0 + 24))
  {
    v2 = *v0 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(v0 + 12) - 998242381 * ((~v0 & 0x41B0881 | v0 & 0xFBE4F77E) ^ 0xAE749057);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1969B2174()
{
  v6 = ((((2 * *(v3 + 4)) & 0xE7) + (*(v3 + 4) ^ 0xF3)) ^ 0x80) - -119 * (((v5 | 0x96) - (v5 | 0x69) + 105) ^ 0x7A);
  v5[0] = 1012216201 * (((v5 | 0xA2703E96) - (v5 | 0x5D8FC169) + 1569702249) ^ 0x26D9B67A) + 1484531117 + v1;
  result = (*(v2 + 8 * (v1 + 6157)))(v5);
  *(v0 + 8) = v5[1];
  return result;
}

uint64_t sub_1969B2288()
{
  v8 = v6;
  v7 = v3 - (&v7 ^ 0xF8DC2041) * v1 + 3476;
  (*(v0 + 8 * (v3 ^ 0x10EA)))(&v7);
  v7 = v3 - 419 - (((&v7 | 0x6AA55BFD) - (&v7 & 0x6AA55BFD)) ^ 0x92797BBC) * v1 + 3895;
  v8 = v5;
  (*(v0 + 8 * (v3 + 4202)))(&v7);
  return (v2 - 1906281716);
}

void sub_1969B2368()
{
  if (v0 == 1487589567)
  {
    v2 = 1906281716;
  }

  else
  {
    v2 = 1906239692;
  }

  *(v1 + 36) = v2;
}

void sub_1969B2404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  v23 = ((v22 - 1945755628 - 2 * ((v22 - 144) & 0x8C0620A4)) ^ 0xE05DB5A6) * v18;
  *(v22 - 144) = (v20 + a18 + 568553288) ^ v23;
  *(v22 - 120) = (v20 + 3985) ^ v23;
  *(v22 - 136) = v21;
  *(v22 - 128) = a9;
  (*(v19 + 8 * (v20 + 6201)))(v22 - 144);
  JUMPOUT(0x1969B247CLL);
}

uint64_t sub_1969B24D0@<X0>(int a1@<W8>)
{
  v3 = (*(v2 + 8 * (a1 ^ 0x12DB)))();
  STACK[0x530] = 0;
  return v1(v3);
}

uint64_t sub_1969B24F4(int8x16_t a1, int8x8_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v26 = a7 - 8;
  v28.val[0].i64[0] = (v25 + v26 + v21) & 0xF;
  v28.val[0].i64[1] = (v25 + v26 + 14) & 0xF;
  v28.val[1].i64[0] = (v25 + v26 + 13) & 0xF;
  v28.val[1].i64[1] = (v25 + v26 + 12) & 0xF;
  v28.val[2].i64[0] = (v25 + v26 + 11) & 0xF;
  v28.val[2].i64[1] = (v25 + v26 + 10) & 0xF;
  v28.val[3].i64[0] = (v25 + v26 + 9) & 0xF;
  v28.val[3].i64[1] = (v25 + v26) & 0xF ^ 8;
  *(a8 - 8 + v25 + v21) = veor_s8(veor_s8(veor_s8(*(v24 + v28.val[0].i64[0] - 7), *(a9 - 8 + v25 + v21)), veor_s8(*(v28.val[0].i64[0] + v23 - 6), *(v22 + v28.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v28, a1), a2)));
  return (*(a21 + 8 * ((2 * (a6 + v26 != 0)) | (4 * (a6 + v26 != 0)) | a5)))();
}

uint64_t sub_1969B2504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, unsigned __int8 *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v28 = 1790939281 * (((&a19 | 0xEC3DE5AA) - &a19 + (&a19 & 0x13C21A50)) ^ 0x14E1C5EB);
  a20 = v26;
  a21 = v24;
  LOBYTE(a22) = 48 - v28;
  a23 = a15;
  LODWORD(a24) = (v27 - 3063) ^ v28;
  HIDWORD(a24) = a11 - v28 - 309786070;
  a19 = v26 + 36;
  (*(v25 + 8 * (v27 + 544)))(&a19);
  v29 = (a12 ^ 0x3D919D09) & (2 * (a12 & 0xB9A5DE09)) ^ a12 & 0xB9A5DE09;
  v30 = (((a12 ^ 0x5DDA250B) << ((43 * ((v27 - 71) & 0xDC ^ 0x51)) ^ 0x5A)) ^ 0xC8FFF604) & (a12 ^ 0x5DDA250B) ^ ((a12 ^ 0x5DDA250B) << ((43 * ((v27 - 71) & 0xDC ^ 0x51)) ^ 0x5A)) & 0xE47FFB02;
  v31 = v30 ^ 0x24000902;
  v32 = (v30 ^ 0xC03FF000) & (4 * v29) ^ v29;
  v33 = ((4 * v31) ^ 0x91FFEC08) & v31 ^ (4 * v31) & 0xE47FFB00;
  v34 = (v33 ^ 0x807FE800) & (16 * v32) ^ v32;
  v35 = ((16 * (v33 ^ 0x64001302)) ^ 0x47FFB020) & (v33 ^ 0x64001302) ^ (16 * (v33 ^ 0x64001302)) & 0xE47FFB00;
  v36 = v34 ^ 0xE47FFB02 ^ (v35 ^ 0x447FB000) & (v34 << 8);
  v37 = a12 ^ (2 * ((v36 << 16) & 0x647F0000 ^ v36 ^ ((v36 << 16) ^ 0x7B020000) & (((v35 ^ 0xA0004B02) << 8) & 0x647F0000 ^ (((v35 ^ 0xA0004B02) << 8) ^ 0x7FFB0000) & (v35 ^ 0xA0004B02) ^ 0x40000)));
  v38 = 753662761 * ((-999329021 - (&a19 | 0xC46F7303) + (&a19 | 0x3B908CFC)) ^ 0x5E8A77B7);
  a23 = &a15[56 * *a15 + 8];
  a24 = v24;
  a19 = v24;
  a22 = a13;
  HIDWORD(a20) = v38 + v27 - 5957;
  LODWORD(a21) = v38 + (v37 & 0xFFFFFFF0 ^ 0xF6E9DEEE) + ((2 * v37) & 0x8F6FEDC0 ^ 0x22C4000) - 1074140192;
  v39 = (*(v25 + 8 * (v27 + 434)))(&a19);
  return (*(v25 + 8 * ((7 * (a20 != 1906281716)) ^ v27)))(v39);
}

uint64_t sub_1969B27F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v24 = *(a23 + 96);
  if (v24 == 2)
  {
    return (*(v23 + 8 * ((29 * (*(a23 + 92) == a12)) ^ (a8 - 1458))))(a13);
  }

  if (v24 != 1)
  {
    JUMPOUT(0x1969B28ECLL);
  }

  return (*(v23 + 8 * (((*(a23 + 92) == 0) * (a17 - 3641)) ^ (a8 - 734))))();
}

uint64_t sub_1969B2A24@<X0>(uint64_t a1@<X5>, _BYTE *a2@<X8>)
{
  v4 = (v2 + 311084523) & 0xED753FF3;
  *(v3 + 72) = 32;
  *(v3 + 39) = a2[55];
  *(v3 + 38) = a2[54];
  *(v3 + 37) = a2[53];
  *(v3 + 36) = a2[52];
  *(v3 + 35) = a2[51];
  *(v3 + 34) = a2[50];
  *(v3 + 33) = a2[49];
  *(v3 + 32) = a2[48];
  *(v3 + 31) = a2[47];
  *(v3 + 30) = a2[46];
  *(v3 + 29) = a2[45];
  *(v3 + 28) = a2[44];
  *(v3 + 27) = a2[43];
  *(v3 + 26) = a2[42];
  *(v3 + 25) = a2[41];
  *(v3 + 24) = a2[40];
  *(v3 + 23) = a2[39];
  *(v3 + 22) = a2[38];
  *(v3 + 21) = a2[37];
  *(v3 + 20) = a2[36];
  *(v3 + 19) = a2[35];
  *(v3 + 18) = a2[34];
  *(v3 + 17) = a2[33];
  *(v3 + 16) = a2[32];
  *(v3 + 15) = a2[31];
  *(v3 + 14) = a2[30];
  *(v3 + 13) = a2[29];
  *(v3 + 12) = a2[28];
  *(v3 + 11) = a2[27];
  *(v3 + 10) = a2[26];
  *(v3 + 9) = a2[25];
  *(v3 + 8) = a2[24];
  v5 = STACK[0x710];
  v6 = STACK[0x450];
  *v6 = 0x25B2F1AA6CA5FEE2;
  *(v6 + 8) = *(v5 + 108) - 1720256293 - ((*(v5 + 108) << (4 * (v4 ^ 0x69) + 89)) & 0x32EDF1B6);
  *(v6 + 16) = 0;
  *(v6 + 24) = 0x163F5B9C9;
  *(v6 + 32) = -1720256289;
  *(v6 + 36) = 1738668895;
  STACK[0x478] = v6;
  LODWORD(STACK[0x55C]) = 0;
  STACK[0x7C8] = 0;
  v7 = (*(a1 + 8 * (v4 ^ 0xDCE)))(128, 0x10800400FED9166);
  v8 = STACK[0x370];
  STACK[0x3D8] = v7;
  return (*(v8 + 8 * ((41 * (v7 != 0)) ^ v4)))();
}

uint64_t sub_1969B2B54@<X0>(uint64_t a1@<X8>)
{
  STACK[0xAD8] = v2;
  v4 = STACK[0x7D0];
  STACK[0xAE0] = STACK[0x7D0];
  return (*(v3 + 8 * (((v2 - v4 > (a1 ^ 0xE15uLL)) * ((v1 - 887) ^ 0x12D)) ^ v1)))();
}

uint64_t sub_1969B2C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18, unint64_t a19, uint64_t a20, unint64_t a21)
{
  v27 = 1068996913 * (v26 ^ 0x94613493D5EEE191);
  a19 = v27 ^ ((v24 ^ 0x7CD6B7FBCE96CBD0) - 0xC002C848804100 + ((2 * v24) & 0xF9AD6FF79D2D97A0));
  a21 = a14;
  LODWORD(a20) = v21 - v27 + 1419;
  (*(v25 + 8 * (v21 ^ 0x9F2)))(&a17);
  v28 = 753662761 * (((v26 | 0xA1442DE9) - v26 + (v26 & 0x5EBBD210)) ^ 0xC45ED6A2);
  a19 = a14;
  a20 = v22;
  a17 = (v23 ^ 0x76761E98) - v28 + ((v23 << ((v21 - 6) ^ 0x4D)) & 0xECEC3D30) - 541070344;
  a18 = (v21 + 645) ^ v28;
  v29 = (*(v25 + 8 * (v21 ^ 0x929)))(&a17);
  return (*(v25 + 8 * ((2406 * (a21 == 1906281716)) ^ v21)))(v29);
}

uint64_t sub_1969B2DF0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, unint64_t a6@<X6>, unint64_t a7@<X7>, unint64_t a8@<X8>, int8x16_t a9@<Q6>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v80 = v72 - 8;
  v81 = v73 - 8;
  v82.i64[0] = v81 + v71 + v74;
  v82.i64[1] = v81 + v71 - 2;
  v83.i64[0] = v81 + v71 - 3;
  v83.i64[1] = v81 + v71 - 4;
  v84.i64[0] = v81 + v71 - 5;
  v84.i64[1] = v81 + v71 - 6;
  v85.i64[0] = v81 + v71 - 7;
  v85.i64[1] = v81 + v71 - 8;
  v86.i64[0] = v80 + v71 - 3;
  v86.i64[1] = v80 + v71 - 4;
  *&STACK[0x3E0] = v86;
  v87.i64[0] = v80 + v71 - 5;
  v87.i64[1] = v80 + v71 - 6;
  v88.i64[0] = v80 + v71 - 7;
  v88.i64[1] = v80 + v71 - 8;
  v89 = vandq_s8(v85, *&STACK[0x410]);
  v90 = vandq_s8(v84, *&STACK[0x410]);
  v91 = vandq_s8(v83, *&STACK[0x410]);
  v92 = vandq_s8(v82, *&STACK[0x410]);
  v93 = *&STACK[0x410];
  v94 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v96 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v98 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3B0], v97), *&STACK[0x3A0]), vorrq_s8(vaddq_s64(v97, *&STACK[0x3D0]), *&STACK[0x3C0]));
  v99 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3B0], v96), *&STACK[0x3A0]), vorrq_s8(vaddq_s64(v96, *&STACK[0x3D0]), *&STACK[0x3C0]));
  v100 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3B0], v95), *&STACK[0x3A0]), vorrq_s8(vaddq_s64(v95, *&STACK[0x3D0]), *&STACK[0x3C0]));
  v101 = vsubq_s64(v79, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3B0], v94), *&STACK[0x3A0]), vorrq_s8(vaddq_s64(v94, *&STACK[0x3D0]), *&STACK[0x3C0])));
  v102 = vsubq_s64(v79, v100);
  v103 = vsubq_s64(v79, v99);
  v104 = vsubq_s64(v79, v98);
  v105 = veorq_s8(v104, *&STACK[0x390]);
  v106 = veorq_s8(v103, *&STACK[0x390]);
  v107 = veorq_s8(v102, *&STACK[0x390]);
  v108 = veorq_s8(v101, *&STACK[0x390]);
  v109 = veorq_s8(v101, *&STACK[0x380]);
  v110 = veorq_s8(v102, *&STACK[0x380]);
  v111 = veorq_s8(v103, *&STACK[0x380]);
  v112 = veorq_s8(v104, *&STACK[0x380]);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v112);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v111);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v110);
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v116, v116), *&STACK[0x370]), v116), *&STACK[0x360]), *&STACK[0x350]);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v115, v115), *&STACK[0x370]), v115), *&STACK[0x360]), *&STACK[0x350]);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v114, v114), *&STACK[0x370]), v114), *&STACK[0x360]), *&STACK[0x350]);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v113, v113), *&STACK[0x370]), v113), *&STACK[0x360]), *&STACK[0x350]);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v122 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v123 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v124 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v125 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v124);
  v129 = vaddq_s64(v127, v123);
  v130 = vaddq_s64(v126, v122);
  v131 = vaddq_s64(v125, v121);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v131, v131), *&STACK[0x340]), v131), *&STACK[0x330]), *&STACK[0x320]);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v130, v130), *&STACK[0x340]), v130), *&STACK[0x330]), *&STACK[0x320]);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v129, v129), *&STACK[0x340]), v129), *&STACK[0x330]), *&STACK[0x320]);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v128, v128), *&STACK[0x340]), v128), *&STACK[0x330]), *&STACK[0x320]);
  v136 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v139 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v140 = veorq_s8(v134, v138);
  v141 = veorq_s8(v133, v137);
  v142 = veorq_s8(v132, v136);
  v143 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v142);
  v147 = vaddq_s64(v145, v141);
  v148 = vaddq_s64(v144, v140);
  v149 = vaddq_s64(v143, v139);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(v149, vandq_s8(vaddq_s64(v149, v149), *&STACK[0x310])), *&STACK[0x300]), *&STACK[0x2F0]);
  v151 = veorq_s8(vaddq_s64(vsubq_s64(v148, vandq_s8(vaddq_s64(v148, v148), *&STACK[0x310])), *&STACK[0x300]), *&STACK[0x2F0]);
  v152 = veorq_s8(vaddq_s64(vsubq_s64(v147, vandq_s8(vaddq_s64(v147, v147), *&STACK[0x310])), *&STACK[0x300]), *&STACK[0x2F0]);
  v153 = veorq_s8(vaddq_s64(vsubq_s64(v146, vandq_s8(vaddq_s64(v146, v146), *&STACK[0x310])), *&STACK[0x300]), *&STACK[0x2F0]);
  v154 = vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL);
  v156 = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v157 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v158 = veorq_s8(v152, v156);
  v159 = veorq_s8(v151, v155);
  v160 = veorq_s8(v150, v154);
  v161 = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v160);
  v165 = vaddq_s64(v163, v159);
  v166 = vaddq_s64(v162, v158);
  v167 = vaddq_s64(v161, v157);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v164, *&STACK[0x2E0]), vorrq_s8(v164, *&STACK[0x200])), *&STACK[0x200]), *&STACK[0x2D0]);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v165, *&STACK[0x2E0]), vorrq_s8(v165, *&STACK[0x200])), *&STACK[0x200]), *&STACK[0x2D0]);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v166, *&STACK[0x2E0]), vorrq_s8(v166, *&STACK[0x200])), *&STACK[0x200]), *&STACK[0x2D0]);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v167, *&STACK[0x2E0]), vorrq_s8(v167, *&STACK[0x200])), *&STACK[0x200]), *&STACK[0x2D0]);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v173 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v174 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v175 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v176 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v177 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v178 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v175);
  v180 = vaddq_s64(v177, v173);
  v181 = veorq_s8(vaddq_s64(v176, v172), *&STACK[0x2C0]);
  v182 = veorq_s8(v180, *&STACK[0x2C0]);
  v183 = veorq_s8(vaddq_s64(v178, v174), *&STACK[0x2C0]);
  v184 = veorq_s8(v179, *&STACK[0x2C0]);
  v185 = vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL);
  v186 = vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL);
  v187 = vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL);
  v188 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v189 = veorq_s8(v183, v187);
  v190 = veorq_s8(v182, v186);
  v191 = veorq_s8(v181, v185);
  v192 = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v194 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v191);
  v196 = vaddq_s64(v194, v190);
  v197 = vaddq_s64(v193, v189);
  v198 = vaddq_s64(v192, v188);
  v199 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v198, v198), *&STACK[0x2B0]), v198), *&STACK[0x2A0]), *&STACK[0x290]);
  v200 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v197, v197), *&STACK[0x2B0]), v197), *&STACK[0x2A0]), *&STACK[0x290]);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v196, v196), *&STACK[0x2B0]), v196), *&STACK[0x2A0]), *&STACK[0x290]);
  v202 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v195, v195), *&STACK[0x2B0]), v195), *&STACK[0x2A0]), *&STACK[0x290]);
  v203 = vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL);
  v204 = vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL);
  v205 = vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL);
  v206 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL))), *&STACK[0x280]);
  v207 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), veorq_s8(v201, v205)), *&STACK[0x280]);
  v208 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), veorq_s8(v200, v204)), *&STACK[0x280]);
  *&STACK[0x400] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), veorq_s8(v199, v203)), *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(v82, 3uLL), a9)));
  *&STACK[0x3F0] = vshlq_u64(v208, vnegq_s64(vandq_s8(vshlq_n_s64(v83, 3uLL), a9)));
  v209 = vshlq_u64(v207, vnegq_s64(vandq_s8(vshlq_n_s64(v84, 3uLL), a9)));
  v210 = vshlq_u64(v206, vnegq_s64(vandq_s8(vshlq_n_s64(v85, 3uLL), a9)));
  v211 = vandq_s8(v88, v93);
  v212 = vandq_s8(v87, v93);
  v213 = vandq_s8(v86, v93);
  v214 = vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL);
  v215 = vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL);
  v216 = vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL);
  v217 = vaddq_s64(vorrq_s8(vsubq_s64(v78, v216), a67), vorrq_s8(vaddq_s64(v216, *&STACK[0x270]), *&STACK[0x260]));
  v218 = vsubq_s64(v79, vaddq_s64(vorrq_s8(vsubq_s64(v78, v214), a67), vorrq_s8(vaddq_s64(v214, *&STACK[0x270]), *&STACK[0x260])));
  v219 = vsubq_s64(v79, vaddq_s64(vorrq_s8(vsubq_s64(v78, v215), a67), vorrq_s8(vaddq_s64(v215, *&STACK[0x270]), *&STACK[0x260])));
  v220 = vsubq_s64(v79, v217);
  v221 = veorq_s8(v220, a66);
  v222 = veorq_s8(v219, a66);
  v223 = vdupq_n_s64(a2);
  v224 = veorq_s8(v219, v223);
  v225 = veorq_s8(v220, v223);
  v226 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v225);
  v227 = vdupq_n_s64(a3);
  v228 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v224), v227);
  v229 = veorq_s8(v226, v227);
  v230 = vdupq_n_s64(a4);
  v231 = vsubq_s64(v228, vandq_s8(vaddq_s64(v228, v228), v230));
  v232 = vdupq_n_s64(a5);
  v233 = vaddq_s64(vsubq_s64(v229, vandq_s8(vaddq_s64(v229, v229), v230)), v232);
  v234 = vdupq_n_s64(a6);
  v235 = veorq_s8(v233, v234);
  v236 = veorq_s8(vaddq_s64(v231, v232), v234);
  v237 = vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL);
  v238 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v239 = veorq_s8(v235, v237);
  v240 = vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL);
  v241 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL), v239);
  v242 = vaddq_s64(v240, v238);
  v243 = vdupq_n_s64(a7);
  v244 = veorq_s8(v242, v243);
  v245 = veorq_s8(v241, v243);
  v246 = veorq_s8(v245, vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL));
  v247 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL));
  v248 = vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL);
  v249 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v247);
  v250 = vaddq_s64(v248, v246);
  v251 = vdupq_n_s64(v76);
  v252 = veorq_s8(v250, v251);
  v253 = veorq_s8(v249, v251);
  v254 = veorq_s8(v253, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v255 = veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v256 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v255);
  v257 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL), v254);
  v258 = vdupq_n_s64(v77);
  v259 = vsubq_s64(v256, vandq_s8(vaddq_s64(v256, v256), v258));
  v260 = vdupq_n_s64(v67);
  v261 = vaddq_s64(vsubq_s64(v257, vandq_s8(vaddq_s64(v257, v257), v258)), v260);
  v262 = vdupq_n_s64(v68);
  v263 = veorq_s8(v261, v262);
  v264 = veorq_s8(vaddq_s64(v259, v260), v262);
  v265 = veorq_s8(v264, vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL));
  v266 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL));
  v267 = vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL);
  v268 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL), v266);
  v269 = vaddq_s64(v267, v265);
  v270 = vdupq_n_s64(0x60B83CEF67356D1BuLL);
  v271 = veorq_s8(v269, v270);
  v272 = veorq_s8(v268, v270);
  v273 = veorq_s8(v272, vsraq_n_u64(vshlq_n_s64(v266, 3uLL), v266, 0x3DuLL));
  v274 = veorq_s8(v271, vsraq_n_u64(vshlq_n_s64(v265, 3uLL), v265, 0x3DuLL));
  v275 = vsraq_n_u64(vshlq_n_s64(v272, 0x38uLL), v272, 8uLL);
  v276 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v271, 0x38uLL), v271, 8uLL), v274);
  v277 = vaddq_s64(v275, v273);
  v278 = vdupq_n_s64(v69);
  v279 = vsubq_s64(v276, vandq_s8(vaddq_s64(v276, v276), v278));
  v280 = vdupq_n_s64(a8);
  v281 = vaddq_s64(vsubq_s64(v277, vandq_s8(vaddq_s64(v277, v277), v278)), v280);
  v282 = vdupq_n_s64(0x7AEF220226ADDE8CuLL);
  v283 = veorq_s8(v281, v282);
  v284 = veorq_s8(vaddq_s64(v279, v280), v282);
  v285 = vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL);
  v286 = veorq_s8(v284, vsraq_n_u64(vshlq_n_s64(v274, 3uLL), v274, 0x3DuLL));
  v287 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v283, 0x38uLL), v283, 8uLL), veorq_s8(v283, v285));
  v288 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL), v286);
  v289 = vdupq_n_s64(0xEF0989440325BE54);
  v290 = vsubq_s64(v287, vandq_s8(vaddq_s64(v287, v287), v289));
  v291 = vdupq_n_s64(0xF784C4A20192DF2ALL);
  v292 = vaddq_s64(vsubq_s64(v288, vandq_s8(vaddq_s64(v288, v288), v289)), v291);
  v293 = vdupq_n_s64(0x4EED5A497390D0E3uLL);
  v333.val[3] = veorq_s8(v210, vshlq_u64(veorq_s8(v292, v293), vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), a9))));
  v333.val[2] = veorq_s8(v209, vshlq_u64(veorq_s8(vaddq_s64(v290, v291), v293), vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), a9))));
  v294 = veorq_s8(v218, a66);
  v295 = veorq_s8(v218, v223);
  v296 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL), v295), v227);
  v297 = veorq_s8(vaddq_s64(vsubq_s64(v296, vandq_s8(vaddq_s64(v296, v296), v230)), v232), v234);
  v298 = veorq_s8(v297, vsraq_n_u64(vshlq_n_s64(v295, 3uLL), v295, 0x3DuLL));
  v299 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL), v298), v243);
  v300 = veorq_s8(v299, vsraq_n_u64(vshlq_n_s64(v298, 3uLL), v298, 0x3DuLL));
  v301 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL), v300), v251);
  v302 = veorq_s8(v301, vsraq_n_u64(vshlq_n_s64(v300, 3uLL), v300, 0x3DuLL));
  v303 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL), v302);
  v304 = veorq_s8(vaddq_s64(vsubq_s64(v303, vandq_s8(vaddq_s64(v303, v303), v258)), v260), v262);
  v305 = veorq_s8(v304, vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL));
  v306 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL), v305), v270);
  v307 = veorq_s8(v306, vsraq_n_u64(vshlq_n_s64(v305, 3uLL), v305, 0x3DuLL));
  v308 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v306, 0x38uLL), v306, 8uLL), v307);
  v309 = veorq_s8(vaddq_s64(vsubq_s64(v308, vandq_s8(vaddq_s64(v308, v308), v278)), v280), v282);
  v310 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v309, 0x38uLL), v309, 8uLL), veorq_s8(v309, vsraq_n_u64(vshlq_n_s64(v307, 3uLL), v307, 0x3DuLL)));
  v311 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v310, vandq_s8(vaddq_s64(v310, v310), v289)), v291), v293), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3E0], 3uLL), a9)));
  v310.i64[0] = v80 + v71 + v74;
  v310.i64[1] = v80 + v71 - 2;
  v333.val[1] = veorq_s8(*&STACK[0x3F0], v311);
  v312 = vandq_s8(v310, *&STACK[0x410]);
  v313 = vsraq_n_u64(vshlq_n_s64(v312, 0x38uLL), v312, 8uLL);
  v314 = vsubq_s64(v79, vaddq_s64(vorrq_s8(vsubq_s64(v78, v313), a67), vorrq_s8(vaddq_s64(v313, *&STACK[0x270]), *&STACK[0x260])));
  v315 = veorq_s8(v314, a66);
  v316 = veorq_s8(v314, v223);
  v317 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v315, 0x38uLL), v315, 8uLL), v316), v227);
  v318 = veorq_s8(vaddq_s64(vsubq_s64(v317, vandq_s8(vaddq_s64(v317, v317), v230)), v232), v234);
  v319 = veorq_s8(v318, vsraq_n_u64(vshlq_n_s64(v316, 3uLL), v316, 0x3DuLL));
  v320 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v318, 0x38uLL), v318, 8uLL), v319), v243);
  v321 = veorq_s8(v320, vsraq_n_u64(vshlq_n_s64(v319, 3uLL), v319, 0x3DuLL));
  v322 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v320, 0x38uLL), v320, 8uLL), v321), v251);
  v323 = veorq_s8(v322, vsraq_n_u64(vshlq_n_s64(v321, 3uLL), v321, 0x3DuLL));
  v324 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v322, 0x38uLL), v322, 8uLL), v323);
  v325 = veorq_s8(vaddq_s64(vsubq_s64(v324, vandq_s8(vaddq_s64(v324, v324), v258)), v260), v262);
  v326 = veorq_s8(v325, vsraq_n_u64(vshlq_n_s64(v323, 3uLL), v323, 0x3DuLL));
  v327 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v325, 0x38uLL), v325, 8uLL), v326), v270);
  v328 = veorq_s8(v327, vsraq_n_u64(vshlq_n_s64(v326, 3uLL), v326, 0x3DuLL));
  v329 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL), v328);
  v330 = veorq_s8(vaddq_s64(vsubq_s64(v329, vandq_s8(vaddq_s64(v329, v329), v278)), v280), v282);
  v331 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL), veorq_s8(v330, vsraq_n_u64(vshlq_n_s64(v328, 3uLL), v328, 0x3DuLL)));
  v333.val[0] = veorq_s8(*&STACK[0x400], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v331, vandq_s8(vaddq_s64(v331, v331), v289)), v291), v293), vnegq_s64(vandq_s8(vshlq_n_s64(v310, 3uLL), a9))));
  *(v80 + v71 + v74 - 7) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v333, a65)), *(v81 + v71 + v74 - 7));
  return (*(STACK[0x248] + 8 * (((v71 != a1 + 8) * v75) ^ v70)))();
}

uint64_t sub_1969B2F2C()
{
  v5 = v2 - 1;
  *(v0 + v5) = *(v4 + v5) - ((2 * *(v4 + v5)) & 0xD8) - 20;
  return (*(v3 + 8 * (((v5 == 0) * ((643 * (v1 ^ 0x25C)) ^ 0xA88)) ^ v1)))();
}

uint64_t sub_1969B3048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, unint64_t a19, uint64_t a20, unint64_t a21)
{
  v27 = 1068996913 * (((v21 ^ 0x1040983946B0208 | 0x3EFBD2746A94A175) + (v21 ^ 0x34C090346A908145 | 0xC1042D8B956B5E8ALL)) ^ 0xA1A5AD242B1562DDLL);
  a21 = a12;
  a19 = v27 ^ ((v24 ^ 0x7DD6FFB3B65FAFFALL) - 0x1C04A803049252ALL + ((2 * v24) & 0xFBADFF676CBF5FF4));
  LODWORD(a20) = 6365 - v27;
  (*(v25 + 54528))(&a17);
  v28 = *(v23 + 8);
  v29 = *v23 ^ 0xDF377A9A;
  v30 = (2 * *v23) & 0xBE6EF534;
  v31 = 753662761 * ((2 * (v21 & 0x7DBBF090) - v21 - 2109468820) ^ 0xE75EF427);
  a19 = a12;
  a20 = v28;
  a17 = v29 - v31 + v30 + 1996394486;
  a18 = v31 ^ 0x15D7;
  (*(v25 + 54232))(&a17);
  v32 = *(v23 + 24);
  v33 = 753662761 * ((2 * (v21 & 0x59933A0) - v21 + 2053557339) ^ 0x1F7C3710);
  a17 = (*(v23 + 16) ^ 0xF637BEFD) - v33 + ((2 * *(v23 + 16)) & 0xEC6F7DFA) + 1610501011;
  a18 = v33 ^ 0x15D7;
  a19 = a12;
  a20 = v32;
  (*(v25 + 54232))(&a17);
  v34 = 753662761 * (v21 ^ 0x651AFB4B);
  a17 = (v22 ^ 0x7FB6FF9F) + ((2 * v22) & 0xFF6DFF3E) - v34 - 696317199;
  a18 = v34 ^ 0x15D7;
  a19 = a12;
  a20 = v26;
  v35 = (*(v25 + 54232))(&a17);
  return (*(v25 + 8 * ((488 * (a21 != 1906281716)) ^ 0x6FCu)))(v35);
}

uint64_t sub_1969B330C@<X0>(unsigned int a1@<W0>, int a2@<W1>, int a3@<W8>)
{
  v10 = a1 < v9;
  v11 = *(v4 + v7);
  v12 = v7 + 1;
  *(v5 + v6) = v11 - ((a3 + 114) & (2 * v11)) - 20;
  if (v10 == v12 > v8)
  {
    v10 = v12 + v9 < a1;
  }

  return (*(v3 + 8 * ((!v10 * a2) ^ a3)))();
}