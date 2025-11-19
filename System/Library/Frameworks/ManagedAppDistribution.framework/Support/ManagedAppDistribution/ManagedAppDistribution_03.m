uint64_t sub_10008BD0C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3AA3)))();
  STACK[0x618] = 0;
  return sub_10008BD30(v2);
}

uint64_t sub_10008BD74(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  STACK[0x310] = v66;
  STACK[0x300] = v72 & 0xFFFFFFF8;
  v74 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v75 = vdupq_n_s64(0x38uLL);
  v76 = vdupq_n_s64(0x568FD0F9DF82F1E3uLL);
  v77 = vdupq_n_s64(a2);
  v78 = vdupq_n_s64(v69);
  v79 = v62 + v65 + a61 - v67 + v63;
  v80 = vdupq_n_s64(v61);
  v81 = vdupq_n_s64(v70);
  v82 = vdupq_n_s64(v73);
  v83 = vdupq_n_s64(v71);
  v84 = vdupq_n_s64(v64);
  v85 = vdupq_n_s64(0xFEE3F116FE675A82);
  v86 = vdupq_n_s64(0x57D072DFC3A5F657uLL);
  v87 = vdupq_n_s64(0xF2620266DFD8DE82);
  v88 = vdupq_n_s64(a3);
  v89 = vdupq_n_s64(a4);
  v90 = vdupq_n_s64(a5);
  v91 = vdupq_n_s64(0x6E1E19DDB33CB23AuLL);
  v92 = vdupq_n_s64(a6);
  v93 = vdupq_n_s64(a7);
  v94 = vdupq_n_s64(a8);
  v95.i64[0] = v79 + 13 + v72;
  v95.i64[1] = v63 + v65 + a61 - 0x166FF3AC397BB1D1 - v67 + v72 + (((v68 - 4208) | 0x80u) ^ 0x98B8142E3F2C0676);
  v96.i64[0] = v79 + 15 + v72;
  v96.i64[1] = v79 + 14 + v72;
  v97.i64[0] = v79 + 11 + v72;
  v97.i64[1] = v79 + 10 + v72;
  v98.i64[0] = v79 + 9 + v72;
  v98.i64[1] = v79 + 8 + v72;
  v99 = vandq_s8(v98, v74);
  v100 = vandq_s8(v97, v74);
  v101 = vandq_s8(v96, v74);
  v102 = vandq_s8(v95, v74);
  v103 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v104 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v76);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v76);
  v107 = veorq_s8(v106, v77);
  v108 = veorq_s8(v105, v77);
  v109 = veorq_s8(v105, v78);
  v110 = veorq_s8(v106, v78);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v110);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v112, v112), v80), v112), v81), v82);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v111, v111), v80), v111), v81), v82);
  v115 = vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL);
  v116 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v117 = veorq_s8(v113, v115);
  v118 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v117);
  v120 = vaddq_s64(v118, v116);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, v83), vorrq_s8(v119, v84)), v84), v85);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v120, v83), vorrq_s8(v120, v84)), v84), v85);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v124 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v86);
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v124), v86);
  v127 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v128 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v129 = veorq_s8(v125, v127);
  v130 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v129);
  v132 = veorq_s8(vaddq_s64(v130, v128), v87);
  v133 = veorq_s8(v131, v87);
  v134 = vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL);
  v135 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v136 = veorq_s8(v132, v134);
  v137 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v136);
  v139 = vaddq_s64(v137, v135);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(v139, vandq_s8(vaddq_s64(v139, v139), v88)), v89), v90);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(v138, vandq_s8(vaddq_s64(v138, v138), v88)), v89), v90);
  v142 = vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL);
  v143 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v144 = veorq_s8(v140, v142);
  v145 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v144);
  v147 = veorq_s8(vaddq_s64(v145, v143), v91);
  v148 = veorq_s8(v146, v91);
  v149 = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v150 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v151 = veorq_s8(v147, v149);
  v152 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v154 = vaddq_s64(v104, v76);
  v155 = vaddq_s64(v153, v151);
  v156 = vaddq_s64(v152, v150);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v156, v156), v92), v156), v93), v94);
  v194.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v155, v155), v92), v155), v93), v94), vnegq_s64(vandq_s8(vshlq_n_s64(v98, 3uLL), v75)));
  v194.val[2] = vshlq_u64(v157, vnegq_s64(vandq_s8(vshlq_n_s64(v97, 3uLL), v75)));
  v158 = veorq_s8(v154, v77);
  v159 = veorq_s8(v154, v78);
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159);
  v161 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v160, v160), v80), v160), v81), v82);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v163, v83), vorrq_s8(v163, v84)), v84), v85);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), v86);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), v87);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(v170, vandq_s8(vaddq_s64(v170, v170), v88)), v89), v90);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), v91);
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL)));
  v175 = vaddq_s64(v103, v76);
  v194.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v174, v174), v92), v174), v93), v94), vnegq_s64(vandq_s8(vshlq_n_s64(v96, 3uLL), v75)));
  v176 = veorq_s8(v175, v77);
  v177 = veorq_s8(v175, v78);
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v178, v178), v80), v178), v81), v82);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v181, v83), vorrq_s8(v181, v84)), v84), v85);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), v86);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185), v87);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187);
  v189 = veorq_s8(vaddq_s64(vsubq_s64(v188, vandq_s8(vaddq_s64(v188, v188), v88)), v89), v90);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), v91);
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL)));
  v194.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v192, v192), v92), v192), v93), v94), vnegq_s64(vandq_s8(vshlq_n_s64(v95, 3uLL), v75)));
  *(v79 + 8 + v72) = vrev64_s8(*&vqtbl4q_s8(v194, xmmword_10069D310));
  return (*(STACK[0x330] + 8 * ((14274 * (v67 - (v72 & 0xFFFFFFF8) == -8)) ^ v68)))();
}

uint64_t sub_10008C3AC(unint64_t a1)
{
  v4 = *(v3 + 8 * ((((1401 * (((v2 - 4287) | 0x15CA) ^ 0x17C9)) ^ 0xAD2) * (*v1 == 0)) | v2));
  STACK[0x3A0] = a1;
  return v4();
}

uint64_t sub_10008C440()
{
  (*(v1 + 8 * (v0 + 7643)))();
  STACK[0x7F8] = 0;
  return sub_1001A7CF4();
}

uint64_t sub_10008C4C8@<X0>(int a1@<W8>)
{
  v3 = a1 - 3184;
  v4 = (*(v1 + 8 * (a1 + 3999)))();
  return (*(v1 + 8 * (((((v3 - 1141) ^ 0xFFFFF313) + (v3 ^ 0x44)) * (v2 == 0)) ^ v3)))(v4);
}

uint64_t sub_10008C5E0@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * ((a2 + v4 + 2859) ^ 0xEF9)) ^ (v4 + 185197456))))();
}

uint64_t sub_10008C620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v24 = ((1388550388 - (&a16 | 0x52C398F4) + (&a16 | 0xAD3C670B)) ^ 0xF555B469) * v22;
  a17 = v24 + 431803411;
  a20 = -654855621 - v24;
  a21 = v24 + v23 + 1674576008;
  a18 = a11;
  a19 = &a14;
  v25 = (*(v21 + 8 * (v23 + 6502)))(&a16);
  return (*(v21 + 8 * (((a16 == ((v23 + 332009386) & 0x34FB) + 16253703) * ((v23 + 332009386) ^ 0x13CA0EAC)) ^ v23)))(v25);
}

uint64_t sub_10008C760(uint64_t a1)
{
  *(a1 + 80) = 16640;
  *a1 = 1442350434;
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  *(a1 + 56) = v2;
  *(a1 + 64) = v2;
  *(a1 + 72) = 0;
  v3 = STACK[0x568];
  *(v3 + 84) = 7;
  *(v3 + 104) = 0;
  *(v3 + 88) = v2;
  *(v3 + 96) = v2;
  *(v3 + 108) = 0;
  *v1 = v3;
  return (STACK[0x7D0])();
}

uint64_t sub_10008C874(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xB18] = v1 ^ 0xBC59953u;
  *(a1 + 16) = (((v1 ^ 0xF8150B1C) + 132838628) ^ ((v1 ^ 0xDDBE1EC2) + 574742846) ^ (((((v2 + 663) | 0x20) + 778987629) ^ v1) - 778996877)) + 197499229;
  v5 = (*(v3 + 8 * (v2 + 1081)))();
  v6 = STACK[0x400];
  *(a1 + 24) = v5;
  return (*(v6 + 8 * ((21 * (v5 != 0)) ^ v2)))();
}

uint64_t sub_10008C944()
{
  v3 = (*(v2 + 8 * (v0 + 8060)))();
  STACK[0x668] = 0;
  return v1(v3);
}

uint64_t sub_10008C9EC(uint64_t a1, int a2)
{
  v6 = v4 + a2 + 1819;
  v7 = ((a2 + 414471093) & 0x499EF7E) - 9085;
  v8 = *(v3 + v7 + v2 - 31);
  v9 = a1 + v7 + v2;
  *(v9 - 15) = *(v3 + v7 + v2 - 15);
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((2843 * ((v2 & 0xFFFFFFE0) == 32)) ^ v6)))();
}

uint64_t sub_10008CA60()
{
  v4 = 1358806181 * ((-1247837173 - ((v3 - 120) | 0xB59F840B) + ((v3 - 120) | 0x4A607BF4)) ^ 0x754F1777);
  *(v3 - 104) = v2;
  *(v3 - 120) = v4 + 59253767;
  *(v3 - 116) = v4 - 740057766 + v1;
  v5 = (*(v0 + 8 * (v1 | 0x20D0)))(v3 - 120);
  return (*(v0 + 8 * ((869 * (*(v3 - 112) == ((2293 * (v1 ^ 0x507)) ^ 0xF80225))) ^ v1)))(v5);
}

uint64_t sub_10008CB20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (a1 + v3 - 16);
  v7 = (a2 + v3 - 16);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * ((11 * ((v4 ^ 0x79 ^ ((v3 & 0xFFFFFFE0) == 32)) & 1)) ^ (v2 + v4 + 2723))))();
}

uint64_t sub_10008CB7C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  v19 = *(v18 - 160);
  v20 = v19[1];
  a17[1] = v20;
  *a17 = *v19;
  return (*(v17 + 8 * ((((((a1 - 179) ^ (v20 == 0)) & 1) == 0) * ((a1 - 5515) ^ 0x7ED)) ^ a1)))();
}

uint64_t sub_10008CBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, unsigned int a14, uint64_t a15, char *a16, unsigned int a17, unsigned int a18)
{
  v21 = ((2 * (&a13 & 0x71BA8420) - &a13 + 239434718) ^ 0x562CA8BC) * v19;
  a15 = a9;
  a16 = &a11;
  a14 = v21 + 384714963;
  a17 = -654855621 - v21;
  a18 = v21 + v20 + 1674577460;
  v22 = (*(v18 + 8 * (v20 ^ 0x23FE)))(&a13);
  return (*(v18 + 8 * ((4723 * (a13 == ((v20 - 628079862) | 0x24243014) + 37984827)) ^ v20)))(v22);
}

uint64_t sub_10008CCAC@<X0>(unint64_t *a1@<X8>)
{
  v3 = *a1;
  STACK[0x5C8] = *a1;
  return (*(v2 + 8 * (((v3 != 0) * (((v1 + 1652903011) & 0x9D7ABE7B ^ 0x1CF6) - 431)) ^ (v1 + 1652903011) & 0x9D7ABE7B)))();
}

uint64_t sub_10008CCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X5>, char a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = STACK[0x310];
  v73 = *STACK[0x3A0] + 6;
  v74 = __ROR8__(v73 & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = ((0x6AF7234D0CC131D4 - v74) & a1) + v74 + v67 - ((v74 + v67) & a1);
  v76 = __ROR8__(v75 ^ 0xAB257711D84E66DLL, 8);
  v75 ^= 0xA2F4B2E684729731;
  v77 = (((v76 + v75) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v76 + v75) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ v71;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0x5963B6C555D97F1FLL;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x61459D2AF01F24F7;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0x64C31C027084DE6CLL;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8) + v86;
  v88 = __ROR8__((*STACK[0x3A0] + 7) & 0xFFFFFFFFFFFFFFF8, 8);
  v89 = (0x6AF7234D0CC131D4 - v88) & 0xC2A16714FA488FC8 | (v88 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v90 = __ROR8__(v89 ^ 0x8B48252F955E681ALL, 8);
  v89 ^= 0x230EC0B80CA81946uLL;
  v91 = (((2 * v87) | 0x36A4398A31861B6ALL) - v87 - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6;
  v92 = (((2 * (v90 + v89)) & 0xAC7FF88AB7D467A0) - (v90 + v89) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v93 = v92 ^ __ROR8__(v89, 61);
  v94 = __ROR8__(v92, 8);
  LOBYTE(v91) = (((__ROR8__(v91, 8) + (v91 ^ __ROR8__(v86, 61))) ^ 0xAB3042D228875C41) >> (8 * (v73 & 7u))) ^ HIBYTE(LODWORD(STACK[0x310]));
  v95 = (v94 + v93 - ((2 * (v94 + v93)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v96 = v95 ^ __ROR8__(v93, 61);
  v97 = *(a66 + 8 * (a65 - 5214));
  *v73 = v91 ^ 0xDD;
  v98 = (__ROR8__(v95, 8) + v96) ^ 0x5963B6C555D97F1FLL;
  v99 = v98 ^ __ROR8__(v96, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ 0x61459D2AF01F24F7;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = __ROR8__(v100, 8);
  v103 = (((2 * (v102 + v101)) | 0x63B77BB044F1F226) - (v102 + v101) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v104 = v103 ^ __ROR8__(v101, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0x1A2AEBE44253AF03;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = __ROR8__(v105, 8);
  *(v73 + 1) = (((v107 + v106 - ((2 * (v107 + v106)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v73 + 1) & 7))) ^ BYTE2(v72) ^ 0x60;
  v108 = __ROR8__((v73 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v109 = ((2 * v108 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v108 + 0x6BC5C09CD998FDFLL;
  v110 = __ROR8__(v109 ^ 0xD22C7A87AFCEB9D8, 8);
  v109 ^= 0x7A6A9F103638C884uLL;
  v111 = (v110 + v109) ^ 0xE49D77DF873DBF7ELL;
  v112 = v111 ^ __ROR8__(v109, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ v71;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ 0x5963B6C555D97F1FLL;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = __ROR8__(v115, 8);
  v118 = (((2 * (v117 + v116)) | 0x316A40512FDE1242) - (v117 + v116) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6;
  v119 = v118 ^ __ROR8__(v116, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ 0x64C31C027084DE6CLL;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0x1A2AEBE44253AF03;
  *(v73 + 2) = (((__ROR8__(v122, 8) + (v122 ^ __ROR8__(v121, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v73 + 2) & 7))) ^ BYTE1(v72) ^ 0xF8;
  v123 = __ROR8__((v73 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v124 = (0xAF7234D0CC131D4 - v123) & 0x126AA61F6F56C0D8 | (v123 + v67) & v68;
  v125 = v124 ^ a2;
  v126 = v124 ^ v69;
  v127 = (__ROR8__(v125, 8) + v126) ^ 0xE49D77DF873DBF7ELL;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = (__ROR8__(v127, 8) + v128) ^ v71;
  v130 = v129 ^ __ROR8__(v128, 61);
  v131 = __ROR8__(v129, 8);
  v132 = ((a3 | (2 * (v131 + v130))) - (v131 + v130) + v70) ^ v66;
  v133 = v132 ^ __ROR8__(v130, 61);
  v134 = (__ROR8__(v132, 8) + v133) ^ 0x61459D2AF01F24F7;
  v135 = v134 ^ __ROR8__(v133, 61);
  v136 = (__ROR8__(v134, 8) + v135) ^ 0x64C31C027084DE6CLL;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ 0x1A2AEBE44253AF03;
  *(v73 + 3) = v72 ^ a4 ^ (((__ROR8__(v138, 8) + (v138 ^ __ROR8__(v137, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v73 + 3) & 7)));
  return v97();
}

uint64_t sub_10008D2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, __int16 a14, char a15, char *a16, char a17, uint64_t a18, int a19, char a20, uint64_t a21, int a22, unsigned int a23, char *a24, char *a25, char *a26, char *a27)
{
  a27 = &a17;
  LODWORD(a26) = (v27 - 4275) ^ (((((2 * &a22) | 0x947974C4) - &a22 + 901989790) ^ 0xF827E1F2) * v29);
  a24 = a16;
  a25 = &a13;
  (*(v28 + 8 * (v27 ^ 0x38D6u)))(&a22);
  a24 = &a15;
  a26 = a16;
  LODWORD(a25) = v27 + 956911519 * ((2 * (&a22 & 0xA6A3DE0) - &a22 - 174734820) ^ 0x1F04B219) + 1679;
  (*(v28 + 8 * (v27 ^ 0x382Fu)))(&a22);
  a23 = (v27 - 4381) ^ (33731311 * (((&a22 ^ 0xAD140F34) - 1497830255 - 2 * ((&a22 ^ 0xAD140F34) & 0xA6B8EC91)) ^ 0x325A2986));
  a24 = a16;
  a25 = &a20;
  (*(v28 + 8 * (v27 + 1968)))(&a22);
  a24 = a16;
  LODWORD(a25) = v27 - 2008441969 * ((2 * (&a22 & 0x1BBD12B0) - &a22 + 1682107725) ^ 0x2CDBB943) - 1948;
  v30 = (*(v28 + 8 * (v27 + 2018)))(&a22);
  return (*(v28 + 8 * (((a22 == 16257999) * (((v27 - 6584) | 0xBC0) + 12115)) ^ v27)))(v30);
}

uint64_t sub_10008D4C8@<X0>(int a1@<W8>)
{
  v7 = a1 ^ 0x1506;
  v8 = *(v4 + 120);
  v9 = (*(v4 + 100) ^ 0x29B7AF39) - 152504608 + (((a1 ^ 0x1506) + 1399805209) & (2 * *(v4 + 100)));
  v10 = 914963389 * ((v5 - 14561658 - 2 * ((v5 - 232) & 0xFF21CF6E)) ^ 0xD3DD7E15);
  *(v5 - 184) = v1;
  *(v5 - 176) = v10 + a1 - 2690;
  *(v5 - 200) = v2;
  *(v5 - 232) = 1491323843 - v10;
  *(v5 - 168) = v4 + 104;
  *(v5 - 224) = v1;
  *(v5 - 216) = (((v3 ^ 0x369E2235) - 916333109) ^ ((v3 ^ 0xF90BD288) + 116665720) ^ ((v3 ^ 0xC45069EE) + 1001362962)) - v10 + 1996137537;
  *(v5 - 208) = v10 + (v8 ^ 0xDEFB39FB) + ((2 * v8) & 0xBDF673F6) + 732823344;
  *(v5 - 192) = v9 ^ v10;
  v11 = (*(v6 + 8 * (a1 + 2407)))(v5 - 232);
  return (*(v6 + 8 * ((((((v7 - 1593) | 0x1C10) + 8276) ^ v7 ^ 0x2D79) * (*(v5 - 212) == 16257999)) ^ v7)))(v11);
}

uint64_t sub_10008D670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  (*(v32 + 8 * (v30 + 1232700997)))(a25 + a26, 0x100004077774924);
  v33 = (*(v32 + 76968))();
  *v31 = v33;
  return sub_10008D718(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_10008D778(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x8B0] = a1;
  *a1 = 5;
  *(a1 + 4) = 0;
  v66 = (*(v65 + 8 * (v64 ^ 0x2673)))(120, 0x1000040F604211FLL);
  STACK[0x4F0] = v66;
  return (*(a64 + 8 * (((v66 != 0) * ((v64 + 1657) ^ 0x833 ^ (v64 + 2080273452) & 0x84018A72)) ^ v64)))();
}

uint64_t sub_10008D804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, int a22, unsigned int a23)
{
  a21 = &a16;
  a23 = 1317436891 * (((&a21 | 0xE7B17E53) + (~&a21 | 0x184E81AC)) ^ 0x57B2E624) + 8154;
  v25 = (*(v24 + 77096))(&a21);
  return (*(v24 + 8 * ((1426 * (a22 == 16257999)) ^ v23)))(v25);
}

void sub_10008D8A4()
{
  LODWORD(STACK[0xB14]) = 16215976;
  STACK[0x740] = v0;
  LODWORD(STACK[0x524]) = 16215976;
  STACK[0x8E0] = *(v2 + 16 * (v1 ^ 0x4FF));
  JUMPOUT(0x1000ADC28);
}

uint64_t sub_10008D8E4@<X0>(int a1@<W8>)
{
  v3 = STACK[0x978];
  STACK[0x7F8] = *(v2 + 8 * a1);
  return (*(v2 + 8 * ((222 * (v3 != 0)) ^ (v1 - 6597))))();
}

uint64_t sub_10008D91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, unsigned int a22, unsigned int a23, uint64_t a24, uint64_t a25)
{
  v31 = 1875091903 * (((&a21 | 0x807C2A2F) + (~&a21 | 0x7F83D5D0)) ^ 0xB609A9AD);
  a24 = a16;
  a22 = (v29 ^ 0xB8FFBFAA) + ((2 * v29) & 0x71FF7F54) + 1729951488 + v31;
  a23 = v31 + 7724;
  (*(v30 + 77160))(&a21);
  v32 = 1824088897 * (&a21 ^ 0x5869D362);
  a24 = v27;
  a25 = a16;
  a23 = (v28 ^ 0x4EB7FEDB) + ((2 * v28) & 0x9D6FFDB6) - v32 - 1250385;
  a21 = v32 + 3757;
  (*(v30 + 77048))(&a21);
  v33 = 1875091903 * (((&a21 | 0xF946327B) - &a21 + (&a21 & 0x6B9CD80)) ^ 0xCF33B1F8);
  a24 = a16;
  a22 = (v26 ^ 0xE5FEFFAE) + ((2 * v26) & 0xCBFDFF5C) + 975025916 + v33;
  a23 = v33 + 7724;
  v34 = (*(v30 + 77160))(&a21);
  return (*(v30 + 8 * ((4436 * (a21 == v25)) ^ 0x436u)))(v34);
}

uint64_t sub_10008DB20@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = a2 - 2912;
  v4 = a2 - 4891;
  v5 = v4 ^ 0x50;
  v6 = v4 | 0x10;
  v7 = (*(v2 + 8 * (v3 ^ 0x31CB)))(a1, 990205657) == 0;
  return (*(v2 + 8 * ((v7 * (v5 ^ v6 ^ 0x46)) ^ v3)))();
}

uint64_t sub_10008DB80(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int8x16_t a7, int8x8_t a8)
{
  v13 = a3 - 8;
  v15.val[0].i64[0] = (v11 + v13 - 1) & a6;
  v15.val[0].i64[1] = (v11 + v13 + 14) & 0xF;
  v15.val[1].i64[0] = (v11 + v13 + 13) & 0xF;
  v15.val[1].i64[1] = (v11 + v13 + 12) & 0xF;
  v15.val[2].i64[0] = (v11 + v13 + 11) & 0xF;
  v15.val[2].i64[1] = (v11 + v13 + 10) & 0xF;
  v15.val[3].i64[0] = (v11 + v13 + 9) & 0xF;
  v15.val[3].i64[1] = (v11 + v13) & 0xF ^ 8;
  *(a4 - 8 + v11) = veor_s8(veor_s8(veor_s8(*(v8 + v15.val[0].i64[0] - 7), *(a5 - 8 + v11)), veor_s8(*(v9 + v15.val[0].i64[0] - 7), *(v10 + v15.val[0].i64[0] - 7))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a7), a8)));
  return (*(v12 + 8 * (((a2 == v13) | (4 * (a2 == v13))) ^ a1)))();
}

uint64_t sub_10008DB90@<X0>(uint64_t a1@<X0>, char a2@<W6>, uint64_t a3@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(a3 + v7);
  return (*(v6 + 8 * ((53 * (((v7 == 0) ^ (3 * (v5 ^ (a2 - 75)) + 1)) & 1)) ^ (v3 + v5 + 39))))();
}

uint64_t sub_10008DC84(uint64_t a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a3 = a5;
  *a4 = a6;
  return sub_1001C9194(a7, a2, a3, a4, a5, a6, a7, v7);
}

uint64_t sub_10008DD48@<X0>(int a1@<W8>)
{
  v3 = a1 + 1406;
  (*(v2 + 8 * (a1 ^ 0x2070)))();
  *(v1 + 368) = 0;
  return (*(v2 + 8 * (((*(v1 + 384) != 0) * (((v3 - 389) ^ 0x1507) - 7223)) ^ v3)))();
}

uint64_t sub_10008DD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *(v5 + 24);
  v12 = __ROR8__((v11 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = (v12 + v10) ^ 0xE1AFA7ACF6E0968ELL;
  v14 = __ROR8__((v12 + v10) ^ 0x49E9423B6F16E7D2, 8);
  v15 = __ROR8__((0xE13B7065743737B0 - ((v14 + v13) | 0xE13B7065743737B0) + ((v14 + v13) | 0x1EC48F9A8BC8C84FLL)) ^ 0xFA59F8450CF57731, 8);
  v16 = (0xE13B7065743737B0 - ((v14 + v13) | 0xE13B7065743737B0) + ((v14 + v13) | 0x1EC48F9A8BC8C84FLL)) ^ 0xFA59F8450CF57731 ^ __ROR8__(v13, 61);
  v17 = (0xEA42215FB09D0055 - ((v15 + v16) | 0xEA42215FB09D0055) + ((v15 + v16) | 0x15BDDEA04F62FFAALL)) ^ 0xE01F2F19FAB24DA3;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ v7;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (0xFBC8962DEA5A1818 - ((v21 + v20) | 0xFBC8962DEA5A1818) + ((v21 + v20) | 0x43769D215A5E7E7)) ^ 0x6572F4F8E5BAC310;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) & 0x95D159776768EC9ALL) - (v24 + v23) - 0x4AE8ACBBB3B4764ELL) ^ 0xD1D44F463CCF57DELL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0xD800CF627F7DCE02) - (v27 + v26) + 0x13FF984EC04118FELL) ^ 0x9D573AA8212B7FDLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  *(v11 + 4) = LODWORD(STACK[0x290]) ^ (((((2 * (v30 + v29)) & 0x4CC31BBC7D14A244) - (v30 + v29) + 0x599E7221C175AEDDLL) ^ 0xF2AE30F3E9F2F29CLL) >> (8 * ((v11 + 4) & 7))) ^ 0x3E;
  v31 = __ROR8__((v11 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v32 = ((2 * (v31 + v10)) | 0x3E48AF211110F5F6) - (v31 + v10) - 0x1F24579088887AFBLL;
  v33 = v32 ^ 0x56CD15ABE79E9D29;
  v32 ^= 0xFE8BF03C7E68EC75;
  v34 = __ROR8__(v33, 8);
  v35 = (((2 * (v34 + v32)) & 0x42379E9795A534D6) - (v34 + v32) + 0x5EE430B4352D6594) ^ 0xBA79476BB210DAEALL;
  v36 = v35 ^ __ROR8__(v32, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * (v37 + v36)) | 0xF087926224A8E20ALL) - (v37 + v36) - 0x7843C93112547105) ^ 0x8DE13888A784C30CLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v7;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v9;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((2 * (v44 + v43)) | 0x8BD1FBA0C354CF8ELL) - (v44 + v43) - 0x45E8FDD061AA67C7) ^ 0x212BE1D2112EB9ABLL;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v8;
  v48 = __ROR8__(v47, 8) + (v47 ^ __ROR8__(v46, 61));
  *(v11 + 5) = v6 ^ (((0xE4BAC51C5A42204CLL - (v48 | 0xE4BAC51C5A42204CLL) + (v48 | 0x1B453AE3A5BDDFB3)) ^ 0xB07578318D3A83F2) >> (8 * ((v11 + 5) & 7)));
  return sub_10008E1B4(a1, a2, a3, a4, v4 + 6, 0xE1AFA7ACF6E0968ELL, v5);
}

uint64_t sub_10008E1B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = *(a7 + 24) + a5 - 0x5EA5347A8335DC6CLL;
  v19 = __ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = ((0x6AF7234D0CC131D4 - v19) & v11) + v19 + v17 - ((v19 + v17) & v11);
  v21 = __ROR8__(v20 ^ 0xAB257711D84E66DLL, 8);
  v20 ^= 0xA2F4B2E684729731;
  v22 = (((v21 + v20) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v21 + v20) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xF5A2F1B9B5D0B209;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v9;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v16;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v14;
  v31 = __ROR8__(v30, 8);
  v32 = v30 ^ __ROR8__(v29, 61);
  v33 = __ROR8__((v18 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v34 = (0x6AF7234D0CC131D4 - v33) & 0xC2A16714FA488FC8 | (v33 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v35 = __ROR8__(v34 ^ 0x8B48252F955E681ALL, 8);
  v34 ^= 0x230EC0B80CA81946uLL;
  v36 = (((2 * (v35 + v34)) & 0xAC7FF88AB7D467A0) - (v35 + v34) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = *(STACK[0x2A8] + 8 * v7);
  v40 = (v38 + v37 - ((2 * (v38 + v37)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v41 = v40 ^ __ROR8__(v37, 61);
  *v18 = (((__ROR8__((((2 * (v31 + v32)) | 0x36A4398A31861B6ALL) - (v31 + v32) - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6, 8) + ((((2 * (v31 + v32)) | 0x36A4398A31861B6ALL) - (v31 + v32) - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6 ^ __ROR8__(v32, 61))) ^ v15) >> (8 * (v18 & 7u))) ^ HIBYTE(v12) ^ 0xB;
  v42 = (__ROR8__(v40, 8) + v41) ^ v9;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ v16;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (((2 * (v46 + v45)) | 0x63B77BB044F1F226) - (v46 + v45) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ v13;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  *(v18 + 1) = (((v51 + v50 - ((2 * (v51 + v50)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v18 + 1) & 7))) ^ BYTE2(v12) ^ 0xC5;
  v52 = __ROR8__((v18 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v53 = ((2 * v52 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v52 + 0x6BC5C09CD998FDFLL;
  v54 = v53 ^ 0xD22C7A87AFCEB9D8;
  v53 ^= 0x7A6A9F103638C884uLL;
  v55 = (__ROR8__(v54, 8) + v53) ^ 0xE49D77DF873DBF7ELL;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0xF5A2F1B9B5D0B209;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ v9;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = __ROR8__(v59, 8);
  v62 = __ROR8__((((2 * (v61 + v60)) | 0x316A40512FDE1242) - (v61 + v60) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6, 8);
  v63 = (((2 * (v61 + v60)) | 0x316A40512FDE1242) - (v61 + v60) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6 ^ __ROR8__(v60, 61);
  v64 = (v62 + v63) ^ v14;
  v65 = v64 ^ __ROR8__(v63, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ v13;
  *(v18 + 2) = (((__ROR8__(v66, 8) + (v66 ^ __ROR8__(v65, 61))) ^ v15) >> (8 * ((v18 + 2) & 7))) ^ BYTE1(v12) ^ 0x99;
  v67 = __ROR8__((v18 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v68 = (0xAF7234D0CC131D4 - v67) & 0x126AA61F6F56C0D8 | (v67 + v17) & 0xE99559E090A93F27;
  v69 = __ROR8__(v68 ^ v8, 8);
  v70 = v68 ^ a1;
  v71 = (v69 + v70) ^ 0xE49D77DF873DBF7ELL;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ 0xF5A2F1B9B5D0B209;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  v76 = __ROR8__(((v10 | (2 * (v75 + v74))) - (v75 + v74) + a2) ^ a3, 8);
  v77 = ((v10 | (2 * (v75 + v74))) - (v75 + v74) + a2) ^ a3 ^ __ROR8__(v74, 61);
  v78 = (v76 + v77) ^ v16;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ v14;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ v13;
  *(v18 + 3) = v12 ^ a4 ^ (((__ROR8__(v82, 8) + (v82 ^ __ROR8__(v81, 61))) ^ v15) >> (8 * ((v18 + 3) & 7)));
  return v39();
}

uint64_t sub_10008EB64@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v6 = (a1 + v3 - 16);
  v7 = (a3 + v3 - 16);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * ((((v3 & 0xFFFFFFE0) == 32) * ((v4 - 645251434) ^ 0x11FF)) ^ (v4 + a2))))();
}

uint64_t sub_10008EC00@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  *a5 = a8;
  if (a3)
  {
    v12 = a10 == 3 * (a1 ^ 0x297C) - 8997;
  }

  else
  {
    v12 = 1;
  }

  v14 = v12 || v11 == 0;
  return (*(v10 + 8 * ((v14 * (((a1 + 1151571116) & 0xBB5C4FEA) - 1397)) ^ a1)))();
}

uint64_t sub_10008EC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{
  v16 = (v14 - 7435396) & 0x7B7B7FFE;
  *(v12 + 8) = v13;
  *(v15 - 136) = v16 - (((((v15 - 136) | 0x6AEA11DC) ^ 0xFFFFFFFE) - (~(v15 - 136) | 0x9515EE23)) ^ 0x7F849E26) * v10 + 1729338848;
  v17 = (*(v11 + 8 * (v16 ^ 0x7B0A06BB)))(v15 - 136);
  return sub_1000FC204(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
}

uint64_t sub_10008ED50()
{
  v7 = v4;
  v8 = (v0 + 7043) ^ (1824088897 * (&v6 ^ 0x5869D362));
  (*(v1 + 8 * (v0 ^ 0x209B)))(&v6);
  v7 = v5;
  v8 = (v0 + 7043) ^ (1824088897 * ((2 * (&v6 & 0x45726780) - &v6 - 1165125505) ^ 0xE2E44B1D));
  (*(v1 + 8 * ((v0 + 4281) ^ 0x305C)))(&v6);
  return (v2 - 16257999);
}

void sub_10008EE54(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x10002C5A8);
}

uint64_t sub_10008EE6C()
{
  v6 = *(v4 + (158 * v2 - 6286 - 969 * (((158 * v2 - 6286) & 0xFFFEu) / 0x3C9)));
  v7 = *(v5 + (353 * (v6 ^ 0x1E) + 298638 - 944 * (((353 * (v6 ^ 0x1Eu) + 298638) * v0) >> 32)));
  *(v4 + (158 * v2) % (v1 - 4999)) = v6 ^ 0x8D ^ (v7 - ((2 * v7) & 0x33) + 25);
  return (*(v3 + 8 * ((3649 * (v2 == 15)) ^ v1)))();
}

uint64_t sub_10008F9B0()
{
  v3 = *(v0 + 8);
  STACK[0x4D0] = *(v2 + 112 * (v1 ^ 0x241B));
  return sub_1001AD354(v3);
}

uint64_t sub_10008FA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, int a16, uint64_t a17)
{
  v20 = 1875091903 * ((&a14 - 48771246 - 2 * (&a14 & 0xFD17CF52)) ^ 0xCB624CD1);
  a17 = a11;
  a15 = (v17 ^ 0xE71CF6BF) + ((2 * v17) & 0xCE39ED7E) + 956284907 + v20;
  a16 = v20 + 7724;
  v21 = (*(v18 + 77160))(&a14);
  return (*(v18 + 8 * ((14114 * (a14 == v19)) ^ 0x151Bu)))(v21);
}

uint64_t sub_10008FC64(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = (*(v5 + 8 * (v4 + 4001)))(LODWORD(STACK[0x8F4]) ^ 0xBC59396 ^ (((v4 + 2559) | 0x420u) - 6491), 0x100004077774924);
  v8 = STACK[0x400];
  STACK[0xAE8] = v7;
  if (v7)
  {
    v9 = 16257999;
  }

  else
  {
    v9 = a4;
  }

  LODWORD(STACK[0xAF4]) = v9;
  return (*(v8 + 8 * ((89 * (v7 == 0)) ^ v4)))();
}

void sub_10008FE70()
{
  v4 = v0[13];
  *(v2 - 116) = v3;
  v5 = *(&off_100755B60 + v1 - 2321) - 12;
  v6 = v5[v4 ^ 0xE5];
  LODWORD(v4) = v5[(v1 - 38) & 0xFD ^ v0[1] ^ 0xF3];
  v7 = *(&off_100755B60 + (v1 ^ 0xB2D));
  v8 = *(v7 + (v0[11] ^ 0xBFLL));
  v9 = *(v7 + (v0[7] ^ 0xC7));
  v10 = *(&off_100755B60 + (v1 ^ 0xB32)) - 4;
  v11 = *(&off_100755B60 + (v1 ^ 0xA95)) - 12;
  v12 = (v11[v0[8] ^ 0xBLL] ^ v0[8]) << 24;
  v13 = (v12 ^ 0x7438FFFF) & ((v8 - ((2 * v8) & 0xD6) + 1103528811) & 0xEDC3 ^ 0xB318CBAF ^ ((v10[v0[10] ^ 0xA3] << 8) ^ 0xDF30AD3C) & ((v8 - ((2 * v8) & 0xD6) + 1103528811) ^ 0xBE387C54));
  v14 = v12 & 0x93000000;
  v15 = v10[v0[2] ^ 0x95] << 8;
  v16 = (((v11[v0[4] ^ 0x81] ^ v0[4]) << 24) ^ 0x3AC7AE75) & (v9 ^ 0xFFEFAF67) | v9 & 0x8A;
  v17 = *(v7 + (v0[3] ^ 9));
  v18 = (v17 - ((2 * v17) & 0x112) + 1399904649) & 0x101007D1 ^ 0x8AF4974 ^ ((v17 - ((2 * v17) & 0x112) + 1399904649) ^ 0xAC8F2676) & ((v15 & 0xAD00 | (((((v11[*v0 ^ 0x70] ^ *v0) << 24) ^ 0x95FE4D02) & ((v4 << 16) ^ 0xFFCC4D02) & 0xFFFEFFFF | ((v4 & 1) << 16)) ^ 0x43631F81) & (v15 ^ 0xFFFF57DF)) ^ 0x9775BEAD);
  v19 = v5[v0[9] ^ 0x24] << 16;
  v20 = (v19 & 0x410000 | 0x2118F41A) ^ (v19 ^ 0xFF8FFFFF) & (v14 ^ 0x7396B856 ^ v13);
  v21 = *(v7 + (v0[15] ^ 0x53));
  v22 = ((v10[v0[6] ^ 0xBELL] << 8) ^ 0xF6A22AD7) & (v16 ^ 0x896D5100) ^ v16 & 0x9000828;
  LODWORD(v5) = v5[v0[5] ^ 0xA1];
  v23 = v11[v0[12] ^ 0x1ELL] ^ v0[12];
  v24 = v10[v0[14] ^ 0xE8];
  LODWORD(v5) = ((v5 << 16) ^ 0xDF37BB56) & (v22 ^ 0x295D95A9);
  LODWORD(v10) = v22 & 0x200244A9;
  v25 = ((((v24 << 8) ^ 0xFFF00FFF) & ((v23 << 24) ^ 0x6A105197) | (v24 << 8) & 0xAE00) ^ 0x1506A3AD) & (((v21 ^ 0xFFFFFE1F) & ((v6 << 16) ^ 0x8E372268) | v21 & 0x97) ^ 0x7158DDD4) ^ ((v21 ^ 0xFFFFFE1F) & ((v6 << 16) ^ 0x8E372268) & 0x6E902C5 | v21 & 0x85);
  v26 = *(&off_100755B60 + (v1 ^ 0xA60)) - 12;
  v27 = *&v26[4 * (v21 ^ 0x63)];
  *(v2 - 120) = v25;
  v28 = *(&off_100755B60 + v1 - 2506) - 8;
  LODWORD(v21) = *&v28[4 * (BYTE1(v25) ^ 0x2E)];
  v29 = v23 ^ 0x99u;
  v30 = *(&off_100755B60 + v1 - 2443) - 12;
  v31 = *&v30[4 * v29];
  v32 = *(&off_100755B60 + (v1 ^ 0xAB1)) - 12;
  LODWORD(v6) = *&v32[4 * (v6 ^ 0x59)];
  LODWORD(v5) = v10 ^ 0x26F3474B ^ v5;
  *(v2 - 152) = v20;
  *(v2 - 148) = v18;
  v33 = v27 ^ v18 ^ v31 ^ v6 ^ v21;
  *(v2 - 160) = v33 ^ 0x345F0CD1;
  *(v2 - 156) = v5;
  LODWORD(v6) = v33 ^ 0x345F0CD1 ^ v5 ^ v20;
  v34 = v33 ^ 0x345F0CD1 ^ v5;
  LODWORD(v21) = v6 ^ v25;
  v35 = v6 ^ 0xA1184015;
  v36 = *&v32[4 * (((v21 ^ 0x2F971083) >> 16) ^ 0x94)] ^ *&v28[4 * (((v21 ^ 0x1083) >> 8) ^ 0x28)] ^ v33 ^ *&v26[4 * (v21 ^ 0xF4)] ^ *&v30[4 * (BYTE3(v21) ^ 0x6C)];
  *(v2 - 124) = v36;
  v37 = v36 ^ 0x1E020754;
  v38 = v36 ^ 0x1E020754 ^ v34;
  *(v2 - 128) = v38;
  LODWORD(v6) = v38 ^ 0x3395A5C9 ^ v6 ^ 0xA1184015;
  *(v2 - 172) = v6;
  *(v2 - 168) = v21 ^ 0x57141457;
  v54 = v6 ^ v21 ^ 0x57141457;
  v53 = *&v32[4 * (BYTE2(v54) ^ 0xC9)] ^ *&v28[4 * (BYTE1(v54) ^ 0x98)] ^ *&v30[4 * (HIBYTE(v54) ^ 0x2B)] ^ v37 ^ *&v26[4 * (v54 ^ 0xBE)];
  *(v2 - 164) = v35;
  v39 = v53 ^ 0x345F0CD1 ^ v35;
  *(v2 - 176) = v39;
  v40 = v39 ^ 0x8EC4782F ^ v54;
  LODWORD(v21) = *&v30[4 * (HIBYTE(v40) ^ 0x5C)] ^ *&v32[4 * (BYTE2(v40) ^ 0xA7)] ^ v53 ^ 0x345F0CD1;
  v41 = ((v21 ^ 0x59CAC331) - 197884131) ^ ((v21 ^ 0xE382C69B) + 1316782775) ^ ((v21 ^ 0xE849BE78) + 1169685078);
  v42 = *&v28[4 * (BYTE1(v40) ^ 0x95)];
  LODWORD(v10) = v42 ^ 0x9D47A7D4;
  LODWORD(v21) = v41 - (((v21 ^ v42 ^ 0x9D47A7D4 ^ 0x28A6F7CF) - 34345125) ^ ((v21 ^ v42 ^ 0x9D47A7D4 ^ 0xB389AAD4) + 1725739586) ^ ((v21 ^ v42 ^ 0x9D47A7D4 ^ 0x4A1FC4A1) - 1622483915)) + 1021507547;
  v43 = ((2 * (v21 & 0xC7828955)) & 0x3FFFE | v21 & 0xC7828955) ^ (2 * (v21 & 0xC7828955)) & (v21 ^ 0xC76B1FFE);
  v44 = ((2 * (v21 ^ 0xC76B1FFE)) ^ 0x1D32D56) & (v21 ^ 0xC76B1FFE) ^ (2 * (v21 ^ 0xC76B1FFE)) & 0xE996AA;
  v45 = (v44 ^ 0x209401) & (4 * v43) ^ v43;
  v46 = ((4 * (v44 ^ 0x2892A9)) ^ 0x3A65AAC) & (v44 ^ 0x2892A9) ^ (4 * (v44 ^ 0x2892A9)) & 0xE996A8;
  v47 = (v46 ^ 0xA012A0) & (16 * v45) ^ v45;
  v48 = ((16 * (v46 ^ 0x498403)) ^ 0xE996AB0) & (v46 ^ 0x498403) ^ (16 * (v46 ^ 0x498403)) & 0xE996A0;
  v49 = v47 ^ 0xE996AB ^ (v48 ^ 0x890200) & (v47 << 8);
  v50 = -1901871719 - (((v42 ^ 0xDED8C925) - 1134522097) ^ ((v42 ^ 0x8C2613EC) - 291615800) ^ ((v42 ^ 0x4C885F75) + 774899551));
  LODWORD(v10) = v50 ^ v10 ^ ((v50 ^ 0x9E60541F) + 1883982818) ^ ((v50 ^ 0x63E04D4) - 401269973) ^ ((v50 ^ 0xF6354777) + 404641930) ^ ((v50 ^ 0x7FBFF7BD) - 1852512188) ^ v21 ^ (2 * ((v49 << 16) & 0xE90000 ^ v49 ^ ((v49 << 16) ^ 0x16AB0000) & (((v48 ^ 0x60940B) << 8) & 0xE90000 ^ 0x690000 ^ (((v48 ^ 0x60940B) << 8) ^ 0x69960000) & (v48 ^ 0x60940B))));
  v51 = v41 + 252037886 + (((v10 ^ 0x635CE2AE) + 642101989) ^ ((v10 ^ 0xD4D33D8B) - 1849004606) ^ ((v10 ^ 0xE269B94F) - 1485772538));
  v52 = *&v26[4 * (v40 ^ 0xB1)] ^ v51 ^ ((v51 ^ 0x974802A3) + 1219689540) ^ ((v51 ^ 0x7E486CE2) - 1582132733) ^ ((v51 ^ 0x36FE90A1) - 385585598) ^ ((v51 ^ 0xFFFBFFFF) + 536936736) ^ 0x8EE91953;
  *(v2 - 188) = v52 ^ v53 ^ 0x345F0CD1 ^ v38 ^ 0x3395A5C9;
  *(v2 - 180) = v40;
  *(v2 - 184) = v52;
  JUMPOUT(0x100091468);
}

uint64_t sub_100092B28@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v3 = v2 ^ 0x27B9;
  v4 = STACK[0x558];
  *v4 = 0x431A33AA2E6D965FLL;
  *(v4 + 8) = *(a2 + 108) + 197499219 - ((*(a2 + 108) << (v3 - 68)) & (v3 + 394989153));
  *(v4 + 16) = 0;
  *(v4 + 24) = 0x1F146D841;
  *(v4 + 32) = 197499223;
  *(v4 + 36) = 997767531;
  STACK[0x460] = v4;
  LODWORD(STACK[0x50C]) = 0;
  STACK[0x7C0] = 0;
  v5 = (*(a1 + 8 * (v3 ^ 0x1E7)))(128, 0x10800400FED9166);
  v6 = STACK[0x3E8];
  STACK[0x6C0] = v5;
  return (*(v6 + 8 * ((25 * (v5 != 0)) ^ v3)))();
}

uint64_t sub_100092BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, unint64_t a14, uint64_t a15, uint64_t a16)
{
  v23 = 956911519 * (((v22 | 0x9D1F90898DD6F5CELL) - (v22 & 0x9D1F90898DD6F5CELL)) ^ 0xD829E555674785CBLL);
  a12 = v23 ^ 0x3FE;
  a14 = v20 - ((2 * v20) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v23;
  a15 = a9;
  (*(v21 + 76792))(&a12);
  v24 = 1824088897 * ((2 * (v22 & 0x5167E848) - v22 - 1365764173) ^ 0xF6F1C4D1);
  a15 = v18;
  a16 = a9;
  a12 = v24 + 3757;
  LODWORD(a14) = (v19 ^ 0x7EECEBCF) + ((2 * v19) & 0xFDD9D79E) - v24 - 810025285;
  (*(v21 + 77048))(&a12);
  v25 = 1824088897 * (((v22 | 0xA8715903) - (v22 & 0xA8715903)) ^ 0xF0188A61);
  a15 = v16;
  a16 = a9;
  LODWORD(a14) = (v17 ^ 0x7EE5FFCE) + ((2 * v17) & 0xFDCBFF9C) - v25 - 809571652;
  a12 = v25 + 3757;
  v26 = (*(v21 + 77048))(&a12);
  return (*(v21 + 8 * ((3245 * (a13 == 16257999)) ^ 0x62Du)))(v26);
}

uint64_t sub_100092DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = 476323082 - 1710126949 * (((&a15 | 0x43D5A2F7) + (~&a15 | 0xBC2A5D08)) ^ 0x71CEF966);
  v18 = (*(v17 + 77088))(&a15);
  return (*(v17 + 8 * ((4757 * (a16 == 16257999)) ^ v16)))(v18);
}

uint64_t sub_100092EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26)
{
  *a26 = 0;
  a26[1] = 0;
  *(v30 - 176) = a26;
  *(v30 - 256) = 2140014779;
  v31 = *(v29 + 8 * ((3884 * (((((((((v26 - 134) | 0x400) - 231328585) & 0xDC9DD6F) - 1379) ^ 0x536A8196) - 1487866823) ^ 0xE81E07Au) + 197499219 < 0xFFFFFFF6)) ^ ((v26 - 134) | 0x400)));
  LODWORD(STACK[0x260]) = v28 - 5;
  return v31(0, 2140014779, a3, a4, a5, v27);
}

uint64_t sub_10009300C(uint64_t a1)
{
  *(a1 + 80) = 16640;
  *a1 = 1442350434;
  *(a1 + 8) = v1;
  *(a1 + 16) = v1;
  *(a1 + 24) = v1;
  *(a1 + 32) = v1;
  *(a1 + 40) = v1;
  *(a1 + 48) = v1;
  *(a1 + 56) = v1;
  *(a1 + 64) = v1;
  *(a1 + 72) = 0;
  v3 = STACK[0x7D8];
  *(v3 + 84) = 7;
  *(v3 + 104) = 0;
  *(v3 + 88) = v1;
  *(v3 + 96) = v1;
  *(v3 + 108) = 0;
  *v2 = v3;
  return (STACK[0x830])();
}

uint64_t sub_1000947EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = v4;
  a4[1] = v4;
  return sub_10011CC00(a1, a2, a3);
}

uint64_t sub_1000947F8(uint64_t a1)
{
  v5 = v3 + 425242022;
  v6 = v5 < 0x39C001C0;
  v7 = v4 + 968884672 < v5;
  if (v6 != v4 > v2 - 968885974)
  {
    v7 = v6;
  }

  return (*(v1 + 8 * (v2 | (32 * ((((v2 - 229) ^ v7) & 1) == 0)))))(a1, 925652384);
}

uint64_t sub_100094A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, unsigned int a14, uint64_t a15, char *a16, unsigned int a17, unsigned int a18)
{
  v21 = (&a13 ^ 0x5869D362) * v18;
  a14 = v21 + 712766328;
  a15 = a9;
  a16 = &a11;
  a17 = -654855621 - v21;
  a18 = v21 + v20 + 1674577533;
  v22 = (*(v19 + 8 * (v20 ^ 0x23A5)))(&a13);
  return (*(v19 + 8 * (((a13 == ((v20 + 1778719150) & 0x24F4 ^ 0xF8171F)) * (2 * (v20 ^ 0x574) + 3255)) ^ v20)))(v22);
}

uint64_t sub_100094AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = LODWORD(STACK[0x3E4]);
  LODWORD(STACK[0x8DC]) = a3;
  v6 = (a3 ^ 0xBC59953) + STACK[0x2F0];
  STACK[0x8E0] = v6;
  return (*(STACK[0x3E8] + 8 * ((v5 + 3023) ^ (116 * (v6 <= STACK[0x2D0])))))(a1, a2, a3, a4, a5, v5);
}

uint64_t sub_100094B4C()
{
  STACK[0xA18] = v1;
  v3 = STACK[0x730];
  STACK[0xA20] = STACK[0x730];
  return (*(v2 + 8 * ((1885 * (v1 - v3 > ((v0 - 3639) ^ 0x1624u) - 6082)) ^ (v0 + 4570))))();
}

uint64_t sub_100094BA8(uint64_t a1)
{
  v2 = STACK[0x6E0];
  LODWORD(STACK[0x4E4]) = v1;
  *STACK[0x6F8] = v2;
  return sub_10017EADC(a1, 16215976);
}

uint64_t sub_100094BE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = v70 + a13 + v69;
  v72 = a1 + v71 - a12;
  STACK[0x360] = v72 - 0x67EBC7BE9E6FE604;
  STACK[0x350] = v72 + v64;
  STACK[0x340] = v72 - 0x67EBC7BE9E6FE602;
  v73 = STACK[0x300];
  v74 = (LODWORD(STACK[0x300]) + 1434);
  STACK[0x330] = a1 + v71 + v74 - a12 - 0x67EBC7BE9E6FF77ELL;
  STACK[0x2F0] = v74;
  STACK[0x320] = v66 - 4482 + v69 + v74 - a12;
  STACK[0x310] = v72 - 0x67EBC7BE9E6FE600;
  STACK[0x2E0] = v69 & 0xFFFFFFF8;
  v75 = v66 + v69 - a12;
  v76.i64[0] = v75 - 7;
  v76.i64[1] = v75 - 8;
  v77.i64[0] = STACK[0x320];
  v77.i64[1] = v75 - 6;
  v78.i64[0] = v75 - 3;
  v78.i64[1] = v75 - 4;
  v79.i64[0] = v75 - 1;
  v79.i64[1] = v75 - 2;
  v80.i64[0] = STACK[0x350];
  v80.i64[1] = STACK[0x360];
  v81.i64[0] = STACK[0x330];
  v81.i64[1] = STACK[0x340];
  v82.i64[0] = v72 - 0x67EBC7BE9E6FE5FFLL;
  v82.i64[1] = STACK[0x310];
  v83.i64[0] = v72 + v65;
  v83.i64[1] = v72 - 0x67EBC7BE9E6FE5FELL;
  v84 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v85 = vandq_s8(v79, v84);
  v86 = vandq_s8(v78, v84);
  v87 = vandq_s8(v77, v84);
  v88 = vandq_s8(v76, v84);
  v89 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v90 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v91 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v93 = vdupq_n_s64(0x38uLL);
  v94 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v95 = vaddq_s64(v92, v94);
  v96 = vaddq_s64(v91, v94);
  v97 = vaddq_s64(v90, v94);
  v98 = vaddq_s64(v89, v94);
  v99 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v100 = veorq_s8(v98, v99);
  v101 = veorq_s8(v97, v99);
  v102 = veorq_s8(v96, v99);
  v103 = veorq_s8(v95, v99);
  v104 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  v105 = veorq_s8(v95, v104);
  v106 = veorq_s8(v96, v104);
  v107 = veorq_s8(v97, v104);
  v108 = veorq_s8(v98, v104);
  v109 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v106);
  v111 = vaddq_s64(v109, v105);
  v112 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v113 = veorq_s8(v111, v112);
  v114 = veorq_s8(v110, v112);
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v107), v112);
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v108), v112);
  v117 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v118 = vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL);
  v119 = vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL);
  v120 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v121 = veorq_s8(v115, v119);
  v122 = veorq_s8(v114, v118);
  v123 = veorq_s8(v113, v117);
  v124 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v126 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v123);
  v128 = vaddq_s64(v126, v122);
  v129 = vaddq_s64(v125, v121);
  v130 = vaddq_s64(v124, v120);
  v131 = vdupq_n_s64(0x444F902103838ADEuLL);
  v132 = vdupq_n_s64(0x5DD837EF7E3E3A91uLL);
  v133 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v127, v127), v131), v127), v132);
  v134 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v128, v128), v131), v128), v132);
  v135 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v129, v129), v131), v129), v132);
  v136 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v130, v130), v131), v130), v132);
  v137 = vdupq_n_s64(0x578539A934117766uLL);
  v138 = veorq_s8(v136, v137);
  v139 = veorq_s8(v135, v137);
  v140 = veorq_s8(v134, v137);
  v141 = veorq_s8(v133, v137);
  v142 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v144 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v145 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v146 = veorq_s8(v140, v144);
  v147 = veorq_s8(v139, v143);
  v148 = veorq_s8(v138, v142);
  v149 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v150 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v151 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v148);
  v153 = vaddq_s64(v149, v145);
  v154 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v155 = veorq_s8(v153, v154);
  v156 = veorq_s8(vaddq_s64(v150, v146), v154);
  v157 = veorq_s8(vaddq_s64(v151, v147), v154);
  v158 = veorq_s8(v152, v154);
  v159 = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v162 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v163 = veorq_s8(v157, v161);
  v164 = veorq_s8(v156, v160);
  v165 = veorq_s8(v155, v159);
  v166 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v168 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v165);
  v170 = vaddq_s64(v166, v162);
  v171 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v172 = veorq_s8(v170, v171);
  v173 = veorq_s8(vaddq_s64(v167, v163), v171);
  v174 = veorq_s8(vaddq_s64(v168, v164), v171);
  v175 = veorq_s8(v169, v171);
  v176 = vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL);
  v177 = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v178 = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v179 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v180 = veorq_s8(v174, v178);
  v181 = veorq_s8(v173, v177);
  v182 = veorq_s8(v172, v176);
  v183 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v184 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v185 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v182);
  v187 = vaddq_s64(v185, v181);
  v188 = vaddq_s64(v184, v180);
  v189 = vaddq_s64(v183, v179);
  v190 = vdupq_n_s64(0x953D53DE148E1D56);
  v191 = vdupq_n_s64(a4);
  v192 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v186, v186), v190), v186), v191);
  v193 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v187, v187), v190), v187), v191);
  v194 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v188, v188), v190), v188), v191);
  v195 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v189, v189), v190), v189), v191);
  v196 = vdupq_n_s64(0x2E5DB5ED7AC3D0C7uLL);
  v197 = veorq_s8(v195, v196);
  v198 = veorq_s8(v194, v196);
  v199 = veorq_s8(v193, v196);
  v200 = veorq_s8(v192, v196);
  v201 = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v202 = vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL);
  v203 = vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL);
  v204 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v205 = veorq_s8(v199, v203);
  v206 = veorq_s8(v198, v202);
  v207 = veorq_s8(v197, v201);
  v208 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v209 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v210 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v211 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v207);
  v212 = vaddq_s64(v208, v204);
  v213 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v214 = veorq_s8(v212, v213);
  v215 = veorq_s8(vaddq_s64(v209, v205), v213);
  v216 = veorq_s8(vaddq_s64(v210, v206), v213);
  v217 = veorq_s8(v211, v213);
  v218 = vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL);
  v219 = vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL);
  v220 = vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL);
  v221 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), veorq_s8(v214, v218));
  v223 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), veorq_s8(v215, v219));
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), veorq_s8(v216, v220));
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v221);
  v226 = vdupq_n_s64(0x4AC0565324D70174uLL);
  v227 = vdupq_n_s64(v67);
  v228 = vaddq_s64(vsubq_s64(vorrq_s8(v225, v226), vorrq_s8(v225, v227)), v227);
  v229 = vaddq_s64(vsubq_s64(vorrq_s8(v224, v226), vorrq_s8(v224, v227)), v227);
  v230 = vaddq_s64(vsubq_s64(vorrq_s8(v223, v226), vorrq_s8(v223, v227)), v227);
  v231 = vaddq_s64(vsubq_s64(vorrq_s8(v222, v226), vorrq_s8(v222, v227)), v227);
  v232 = vdupq_n_s64(0xE1F014810C505D35);
  v233 = veorq_s8(v231, v232);
  v234 = veorq_s8(v230, v232);
  v235 = veorq_s8(v229, v232);
  v236 = veorq_s8(v228, v232);
  v237 = vandq_s8(vshlq_n_s64(v76, 3uLL), v93);
  v238 = vandq_s8(vshlq_n_s64(v77, 3uLL), v93);
  v239 = vshlq_u64(v236, vnegq_s64(vandq_s8(vshlq_n_s64(v79, 3uLL), v93)));
  v240 = vshlq_u64(v235, vnegq_s64(vandq_s8(vshlq_n_s64(v78, 3uLL), v93)));
  v241 = vshlq_u64(v234, vnegq_s64(v238));
  v242 = vshlq_u64(v233, vnegq_s64(v237));
  v243 = vandq_s8(v83, v84);
  v244 = vandq_s8(v82, v84);
  v245 = vandq_s8(v81, v84);
  v246 = vandq_s8(v80, v84);
  v247 = vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL);
  v248 = vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL);
  v249 = vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL);
  v250 = vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL);
  v251 = vdupq_n_s64(0x5B38AD8DDB3A7C5CuLL);
  v252 = vaddq_s64(vaddq_s64(v247, v247), v251);
  v253 = vaddq_s64(vaddq_s64(v248, v248), v251);
  v254 = vaddq_s64(vaddq_s64(v249, v249), v251);
  v255 = vaddq_s64(vaddq_s64(v250, v250), v251);
  v256 = vdupq_n_s64(0x89E752B3FB5DDBECLL);
  v257 = vsubq_s64(v250, vandq_s8(v255, v256));
  v258 = vdupq_n_s64(0x72900020EB4C2C24uLL);
  v259 = vaddq_s64(v257, v258);
  v260 = vaddq_s64(vsubq_s64(v249, vandq_s8(v254, v256)), v258);
  v261 = vaddq_s64(vsubq_s64(v248, vandq_s8(v253, v256)), v258);
  v262 = vaddq_s64(vsubq_s64(v247, vandq_s8(v252, v256)), v258);
  v263 = vdupq_n_s64(0xCF99C25E83E78D67);
  v264 = veorq_s8(v262, v263);
  v265 = veorq_s8(v261, v263);
  v266 = veorq_s8(v260, v263);
  v267 = veorq_s8(v259, v263);
  v268 = vdupq_n_s64(0xA37B7469EF0E7C16);
  v269 = veorq_s8(v259, v268);
  v270 = veorq_s8(v260, v268);
  v271 = veorq_s8(v261, v268);
  v272 = veorq_s8(v262, v268);
  v273 = vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL);
  v274 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v270);
  v275 = vaddq_s64(v273, v269);
  v276 = vdupq_n_s64(0xFB9714BECA2C68E9);
  v277 = veorq_s8(v275, v276);
  v278 = veorq_s8(v274, v276);
  v279 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL), v271), v276);
  v280 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL), v272), v276);
  v281 = vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL);
  v282 = vsraq_n_u64(vshlq_n_s64(v270, 3uLL), v270, 0x3DuLL);
  v283 = vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL);
  v284 = veorq_s8(v280, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL));
  v285 = veorq_s8(v279, v283);
  v286 = veorq_s8(v278, v282);
  v287 = veorq_s8(v277, v281);
  v288 = vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL);
  v289 = vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL);
  v290 = vsraq_n_u64(vshlq_n_s64(v278, 0x38uLL), v278, 8uLL);
  v291 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v277, 0x38uLL), v277, 8uLL), v287);
  v292 = vaddq_s64(v290, v286);
  v293 = vaddq_s64(v289, v285);
  v294 = vaddq_s64(v288, v284);
  v295 = vdupq_n_s64(0x5ABE700122B28302uLL);
  v296 = vdupq_n_s64(0xD2A0C7FF6EA6BE7FLL);
  v297 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v291, v291), v295), v291), v296);
  v298 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v292, v292), v295), v292), v296);
  v299 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v293, v293), v295), v293), v296);
  v300 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v294, v294), v295), v294), v296);
  v301 = vdupq_n_s64(0x90D044FD8F5ED69ALL);
  v302 = veorq_s8(v300, v301);
  v303 = veorq_s8(v299, v301);
  v304 = veorq_s8(v298, v301);
  v305 = veorq_s8(v297, v301);
  v306 = vsraq_n_u64(vshlq_n_s64(v284, 3uLL), v284, 0x3DuLL);
  v307 = vsraq_n_u64(vshlq_n_s64(v285, 3uLL), v285, 0x3DuLL);
  v308 = vsraq_n_u64(vshlq_n_s64(v286, 3uLL), v286, 0x3DuLL);
  v309 = veorq_s8(v305, vsraq_n_u64(vshlq_n_s64(v287, 3uLL), v287, 0x3DuLL));
  v310 = veorq_s8(v304, v308);
  v311 = veorq_s8(v303, v307);
  v312 = veorq_s8(v302, v306);
  v313 = vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL);
  v314 = vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL);
  v315 = vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL);
  v316 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v302, 0x38uLL), v302, 8uLL), v312);
  v317 = vaddq_s64(v315, v311);
  v318 = vaddq_s64(v314, v310);
  v319 = vaddq_s64(v313, v309);
  v320 = vdupq_n_s64(0xA11B1487180DD3BBLL);
  v321 = vdupq_n_s64(v68);
  v322 = vaddq_s64(vsubq_s64(vorrq_s8(v319, v320), vorrq_s8(v319, v321)), v321);
  v323 = vaddq_s64(vsubq_s64(vorrq_s8(v318, v320), vorrq_s8(v318, v321)), v321);
  v324 = vaddq_s64(vsubq_s64(vorrq_s8(v317, v320), vorrq_s8(v317, v321)), v321);
  v325 = vaddq_s64(vsubq_s64(vorrq_s8(v316, v320), vorrq_s8(v316, v321)), v321);
  v326 = vdupq_n_s64(0x5C9047B9C167908FuLL);
  v327 = veorq_s8(v325, v326);
  v328 = veorq_s8(v324, v326);
  v329 = veorq_s8(v323, v326);
  v330 = veorq_s8(v322, v326);
  v331 = vsraq_n_u64(vshlq_n_s64(v312, 3uLL), v312, 0x3DuLL);
  v332 = vsraq_n_u64(vshlq_n_s64(v311, 3uLL), v311, 0x3DuLL);
  v333 = veorq_s8(v330, vsraq_n_u64(vshlq_n_s64(v309, 3uLL), v309, 0x3DuLL));
  v334 = veorq_s8(v329, vsraq_n_u64(vshlq_n_s64(v310, 3uLL), v310, 0x3DuLL));
  v335 = veorq_s8(v328, v332);
  v336 = veorq_s8(v327, v331);
  v337 = vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL);
  v338 = vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL);
  v339 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL), v336);
  v340 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL), v335);
  v341 = vaddq_s64(v338, v334);
  v342 = vaddq_s64(v337, v333);
  v343 = vdupq_n_s64(0x2FB8FA78C5363E4uLL);
  v344 = vdupq_n_s64(0x817DC7D3C629B1F2);
  v345 = vaddq_s64(vsubq_s64(v339, vandq_s8(vaddq_s64(v339, v339), v343)), v344);
  v346 = vaddq_s64(vsubq_s64(v340, vandq_s8(vaddq_s64(v340, v340), v343)), v344);
  v347 = vaddq_s64(vsubq_s64(v341, vandq_s8(vaddq_s64(v341, v341), v343)), v344);
  v348 = vaddq_s64(vsubq_s64(v342, vandq_s8(vaddq_s64(v342, v342), v343)), v344);
  v349 = vdupq_n_s64(0x8BBA1DD6A2E83279);
  v350 = veorq_s8(v348, v349);
  v351 = veorq_s8(v347, v349);
  v352 = veorq_s8(v346, v349);
  v353 = veorq_s8(v345, v349);
  v354 = vsraq_n_u64(vshlq_n_s64(v333, 3uLL), v333, 0x3DuLL);
  v355 = vsraq_n_u64(vshlq_n_s64(v334, 3uLL), v334, 0x3DuLL);
  v356 = vsraq_n_u64(vshlq_n_s64(v335, 3uLL), v335, 0x3DuLL);
  v357 = veorq_s8(v353, vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL));
  v358 = veorq_s8(v352, v356);
  v359 = veorq_s8(v351, v355);
  v360 = veorq_s8(v350, v354);
  v361 = vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL);
  v362 = vsraq_n_u64(vshlq_n_s64(v352, 0x38uLL), v352, 8uLL);
  v363 = vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL);
  v364 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v350, 0x38uLL), v350, 8uLL), v360);
  v365 = vaddq_s64(v363, v359);
  v366 = vaddq_s64(v362, v358);
  v367 = vaddq_s64(v361, v357);
  v368 = vdupq_n_s64(0x138A00D81D9F80FEuLL);
  v369 = vdupq_n_s64(0x9C5006C0ECFC07FuLL);
  v370 = vaddq_s64(vsubq_s64(v364, vandq_s8(vaddq_s64(v364, v364), v368)), v369);
  v371 = vaddq_s64(vsubq_s64(v365, vandq_s8(vaddq_s64(v365, v365), v368)), v369);
  v372 = vaddq_s64(vsubq_s64(v366, vandq_s8(vaddq_s64(v366, v366), v368)), v369);
  v373 = vaddq_s64(vsubq_s64(v367, vandq_s8(vaddq_s64(v367, v367), v368)), v369);
  v374 = vdupq_n_s64(0x6855A70E70B2CB06uLL);
  v375 = veorq_s8(v373, v374);
  v376 = veorq_s8(v372, v374);
  v377 = veorq_s8(v371, v374);
  v378 = veorq_s8(v370, v374);
  v379 = vsraq_n_u64(vshlq_n_s64(v357, 3uLL), v357, 0x3DuLL);
  v380 = vsraq_n_u64(vshlq_n_s64(v358, 3uLL), v358, 0x3DuLL);
  v381 = vsraq_n_u64(vshlq_n_s64(v359, 3uLL), v359, 0x3DuLL);
  v382 = veorq_s8(v378, vsraq_n_u64(vshlq_n_s64(v360, 3uLL), v360, 0x3DuLL));
  v383 = veorq_s8(v377, v381);
  v384 = veorq_s8(v376, v380);
  v385 = veorq_s8(v375, v379);
  v386 = vsraq_n_u64(vshlq_n_s64(v378, 0x38uLL), v378, 8uLL);
  v387 = vsraq_n_u64(vshlq_n_s64(v377, 0x38uLL), v377, 8uLL);
  v388 = vsraq_n_u64(vshlq_n_s64(v376, 0x38uLL), v376, 8uLL);
  v389 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v375, 0x38uLL), v375, 8uLL), v385);
  v390 = vaddq_s64(v386, v382);
  v391 = vdupq_n_s64(0x8E4D6ECA343D275ELL);
  v392 = veorq_s8(v390, v391);
  v393 = veorq_s8(vaddq_s64(v387, v383), v391);
  v394 = veorq_s8(vaddq_s64(v388, v384), v391);
  v395 = veorq_s8(v389, v391);
  v396 = vsraq_n_u64(vshlq_n_s64(v382, 3uLL), v382, 0x3DuLL);
  v397 = vsraq_n_u64(vshlq_n_s64(v383, 3uLL), v383, 0x3DuLL);
  v398 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v394, 0x38uLL), v394, 8uLL), veorq_s8(v394, vsraq_n_u64(vshlq_n_s64(v384, 3uLL), v384, 0x3DuLL)));
  v399 = vdupq_n_s64(0x51BB4171AFEDC628uLL);
  v400 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL), veorq_s8(v393, v397)), v399), vnegq_s64(vandq_s8(vshlq_n_s64(v82, 3uLL), v93)));
  v402.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v395, 0x38uLL), v395, 8uLL), veorq_s8(v395, vsraq_n_u64(vshlq_n_s64(v385, 3uLL), v385, 0x3DuLL))), v399), vnegq_s64(vandq_s8(vshlq_n_s64(v80, 3uLL), v93))), v242);
  v402.val[2] = veorq_s8(vshlq_u64(veorq_s8(v398, v399), vnegq_s64(vandq_s8(vshlq_n_s64(v81, 3uLL), v93))), v241);
  v402.val[1] = veorq_s8(v400, v240);
  v402.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v392, 0x38uLL), v392, 8uLL), veorq_s8(v392, v396)), v399), vnegq_s64(vandq_s8(vshlq_n_s64(v83, 3uLL), v93))), v239);
  *STACK[0x360] = veor_s8(vrev64_s8(*&vqtbl4q_s8(v402, xmmword_10069D310)), *(v75 - 8));
  return (*(a64 + 8 * ((23 * (a12 - (v69 & 0xFFFFFFF8) == -8)) ^ v73)))();
}

uint64_t sub_100095978()
{
  v2 = *(STACK[0x540] + 24);
  STACK[0x398] = v2;
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 - 1)) & 1) * (((v0 + 122350236) & 0xF8B51FF7) - 5613)) ^ v0)))();
}

uint64_t sub_100095A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, int a14, unsigned int a15)
{
  a15 = 1317436891 * ((2 * (&a13 & 0xC4F5578) - &a13 - 206525820) ^ 0x43B332F2) + 8154;
  a13 = &a10;
  v18 = (*(v15 + 77096))(&a13);
  return (*(v15 + 8 * ((11645 * (a14 == v17)) ^ v16)))(v18);
}

uint64_t sub_100095B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  *v23 = v24;
  v23[1] = v24;
  *(v25 - 240) = a23;
  return sub_1000F9A80();
}

uint64_t sub_100095B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _WORD *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18)
{
  *a7 = 0;
  *a6 = 0;
  a17 = 476323082 - 1710126949 * (((&a17 | 0x2102E6FF) + (~&a17 | 0xDEFD1900)) ^ 0x1319BD6E);
  v20 = (*(v19 + 77088))(&a17);
  return (*(v19 + 8 * ((7039 * (a18 == 16257999)) ^ v18)))(v20);
}

uint64_t sub_100095C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = 476323082 - 1710126949 * ((((2 * &a15) | 0xDC47D314) - &a15 - 1847847306) ^ 0x5C38B21A);
  v18 = (*(v17 + 77088))(&a15);
  return (*(v17 + 8 * ((2459 * (a16 == 16257999)) ^ v16)))(v18);
}

uint64_t sub_100095D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, int a4, int a5)
{
  v8 = (((v6 - 2756) | 0x1424u) ^ 0xFFFFFFFFFFFFEB0ALL) + v5;
  v9 = *(a2 + v8 - 15);
  v10 = *(a2 + v8 - 31);
  v11 = a1 + v8;
  *(v11 - 15) = v9;
  *(v11 - 31) = v10;
  return (*(v7 + 8 * ((13694 * ((v5 & 0xFFFFFFE0) == 32)) ^ (v6 - a5 + 1463293681))))();
}

uint64_t sub_100095DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>, int32x4_t a5@<Q4>, int8x16_t a6@<Q5>, int8x16_t a7@<Q6>, int8x16_t a8@<Q7>)
{
  v14 = v11 + 4 * v8;
  a4.i32[0] = *(v14 + 4);
  a4.i32[1] = *(v11 + 4 * (a2 + v8) + a1);
  a4.i32[2] = *(v14 + 12);
  v15 = vextq_s8(a3, a4, 0xCuLL);
  v16 = a4;
  v16.i32[3] = *(v11 + 4 * (v8 + 4));
  v17 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v16, a8), vandq_s8(v15, a6)), 1uLL), *(v14 + 1588));
  v15.i32[0] = *(v10 + 4 * (*(v14 + 4) & 1));
  v15.i32[1] = *(v10 + 4 * (*(v11 + 4 * (a2 + v8) + a1) & 1));
  v15.i32[2] = *(v10 + 4 * (*(v14 + 12) & 1));
  v15.i32[3] = *(v10 + 4 * (v16.i8[12] & 1));
  *v14 = veorq_s8(vaddq_s32(vaddq_s32(v17, a5), vmvnq_s8(vandq_s8(vaddq_s32(v17, v17), a7))), v15);
  return (*(v13 + 8 * ((v12 + v9 + 1270) ^ (16 * (v8 == 220)))))();
}

uint64_t sub_100095E0C(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0x3F8] - 8544;
  LODWORD(STACK[0x370]) = 17168;
  return sub_100140A90(a1, a2, v2);
}

uint64_t sub_100095E2C(double a1, double a2, int8x16_t a3, int8x16_t a4, int8x16_t a5, double a6, double a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15)
{
  v25 = STACK[0x370];
  v26 = v15 + STACK[0x370];
  *&v27 = v26 - 15;
  *(&v27 + 1) = v26 - 16;
  *&STACK[0x380] = v27;
  *&v27 = v26 - 13;
  *(&v27 + 1) = v26 - 14;
  *&STACK[0x390] = v27;
  v28.i64[0] = v26 - 7;
  v28.i64[1] = v26 - 8;
  v29.i64[0] = v26 - 5;
  v29.i64[1] = v26 - 6;
  v30.i64[0] = v26 - 3;
  v30.i64[1] = v26 - 4;
  v31.i64[0] = v25 + v15 - 1;
  v31.i64[1] = v26 + (a15 ^ 0xFFFFFFFFFFFFFAF5);
  v32 = vandq_s8(v31, *&STACK[0x330]);
  v33 = vandq_s8(v30, *&STACK[0x330]);
  v34 = vandq_s8(v29, *&STACK[0x330]);
  v35 = vandq_s8(v28, *&STACK[0x330]);
  v36 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), *&STACK[0x3B0]);
  v37 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), *&STACK[0x3B0]);
  v38 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), *&STACK[0x3B0]);
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), *&STACK[0x3B0]);
  v40 = vaddq_s64(vsubq_s64(vorrq_s8(v39, *&STACK[0x310]), vorrq_s8(v39, v23)), v23);
  v41 = vaddq_s64(vsubq_s64(vorrq_s8(v38, *&STACK[0x310]), vorrq_s8(v38, v23)), v23);
  v42 = veorq_s8(v41, *&STACK[0x300]);
  v43 = veorq_s8(v40, *&STACK[0x300]);
  v44 = veorq_s8(v40, *&STACK[0x2F0]);
  v45 = veorq_s8(v41, *&STACK[0x2F0]);
  v46 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v44), *&STACK[0x360]);
  v47 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v45), *&STACK[0x360]);
  v48 = vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL);
  v49 = veorq_s8(v47, vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL));
  v50 = veorq_s8(v46, v48);
  v51 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v50);
  v53 = vaddq_s64(v51, v49);
  v54 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v53, v53), v19), v53), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v52, v52), v19), v52), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v56 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v57 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v58 = veorq_s8(v54, v56);
  v59 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v58);
  v61 = vaddq_s64(v59, v57);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v61, v61), v20), v61), v21), v22);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v60, v60), v20), v60), v21), v22);
  v64 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v65 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v66 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v65);
  v68 = veorq_s8(vaddq_s64(v66, v64), a5);
  v69 = veorq_s8(v67, a5);
  v70 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v72 = veorq_s8(v68, v70);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v75 = veorq_s8(vaddq_s64(v73, v71), a3);
  v76 = veorq_s8(v74, a3);
  v77 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v78 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v79 = veorq_s8(v75, v77);
  v80 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v81 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v79);
  v82 = vaddq_s64(v80, v78);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v81, v24), vorrq_s8(v81, *&STACK[0x230])), *&STACK[0x230]), a4);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v82, v24), vorrq_s8(v82, *&STACK[0x230])), *&STACK[0x230]), a4);
  v85 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v86 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v78.i64[0] = v26 - 11;
  v78.i64[1] = v26 - 12;
  v87 = vaddq_s64(vsubq_s64(vorrq_s8(v37, *&STACK[0x310]), vorrq_s8(v37, v23)), v23);
  v191.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), veorq_s8(v83, v85)), a8), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v18)));
  v191.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v86), a8), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v18)));
  v88 = veorq_s8(v87, *&STACK[0x300]);
  v89 = veorq_s8(v87, *&STACK[0x2F0]);
  v90 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89), *&STACK[0x360]);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v92, v92), v19), v92), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v95, v95), v20), v95), v21), v22);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), a5);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), a3);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v102, v24), vorrq_s8(v102, *&STACK[0x230])), *&STACK[0x230]), a4);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v103.i64[0] = v26 - 9;
  v103.i64[1] = v26 - 10;
  v106 = vaddq_s64(v105, v104);
  v107 = vandq_s8(v103, *&STACK[0x330]);
  v108 = vaddq_s64(vsubq_s64(vorrq_s8(v36, *&STACK[0x310]), vorrq_s8(v36, v23)), v23);
  v191.val[1] = vshlq_u64(veorq_s8(v106, a8), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v18)));
  v109 = veorq_s8(v108, *&STACK[0x300]);
  v110 = veorq_s8(v108, *&STACK[0x2F0]);
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), *&STACK[0x360]);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v113, v113), v19), v113), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v116, v116), v20), v116), v21), v22);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), a5);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), a3);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v123, v24), vorrq_s8(v123, *&STACK[0x230])), *&STACK[0x230]), a4);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v127 = vandq_s8(v78, *&STACK[0x330]);
  v128 = vaddq_s64(v126, v125);
  v129 = vandq_s8(*&STACK[0x390], *&STACK[0x330]);
  v191.val[0] = vshlq_u64(veorq_s8(v128, a8), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v18)));
  v130 = vandq_s8(*&STACK[0x380], *&STACK[0x330]);
  v131 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v132 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v133 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), *&STACK[0x3B0]);
  v135 = vaddq_s64(v133, *&STACK[0x3B0]);
  v136 = vaddq_s64(v132, *&STACK[0x3B0]);
  v137 = vaddq_s64(v131, *&STACK[0x3B0]);
  v138 = vsubq_s64(vorrq_s8(v135, *&STACK[0x310]), vorrq_s8(v135, v23));
  v139 = vaddq_s64(vsubq_s64(vorrq_s8(v137, *&STACK[0x310]), vorrq_s8(v137, v23)), v23);
  v140 = vaddq_s64(vsubq_s64(vorrq_s8(v136, *&STACK[0x310]), vorrq_s8(v136, v23)), v23);
  v136.i64[0] = vqtbl4q_s8(v191, *&STACK[0x3A0]).u64[0];
  v191.val[0] = veorq_s8(v140, *&STACK[0x300]);
  v191.val[1] = veorq_s8(v139, *&STACK[0x300]);
  v141 = veorq_s8(v139, *&STACK[0x2F0]);
  v142 = veorq_s8(v140, *&STACK[0x2F0]);
  v191.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[1], 0x38uLL), v191.val[1], 8uLL), v141), *&STACK[0x360]);
  v191.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v142), *&STACK[0x360]);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v143 = veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v144 = veorq_s8(v191.val[1], v191.val[2]);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL);
  v191.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[1], 0x38uLL), v191.val[1], 8uLL), v144);
  v191.val[1] = vaddq_s64(v191.val[2], v143);
  v191.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v191.val[1], v191.val[1]), v19), v191.val[1]), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v191.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v191.val[0], v191.val[0]), v19), v191.val[0]), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v145 = veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v146 = veorq_s8(v191.val[1], v191.val[2]);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL);
  v191.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[1], 0x38uLL), v191.val[1], 8uLL), v146);
  v191.val[1] = vaddq_s64(v191.val[2], v145);
  v191.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v191.val[1], v191.val[1]), v20), v191.val[1]), v21), v22);
  v191.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v191.val[0], v191.val[0]), v20), v191.val[0]), v21), v22);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v147 = veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v148 = veorq_s8(v191.val[1], v191.val[2]);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL);
  v191.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[1], 0x38uLL), v191.val[1], 8uLL), v148);
  v191.val[1] = veorq_s8(vaddq_s64(v191.val[2], v147), a5);
  v191.val[0] = veorq_s8(v191.val[0], a5);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v149 = veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v150 = veorq_s8(v191.val[1], v191.val[2]);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL);
  v191.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[1], 0x38uLL), v191.val[1], 8uLL), v150);
  v191.val[1] = veorq_s8(vaddq_s64(v191.val[2], v149), a3);
  v191.val[0] = veorq_s8(v191.val[0], a3);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v151 = veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v152 = veorq_s8(v191.val[1], v191.val[2]);
  v191.val[2] = vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL);
  v191.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[1], 0x38uLL), v191.val[1], 8uLL), v152);
  v191.val[1] = vaddq_s64(v191.val[2], v151);
  v191.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v191.val[0], v24), vorrq_s8(v191.val[0], *&STACK[0x230])), *&STACK[0x230]), a4);
  v191.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v191.val[1], v24), vorrq_s8(v191.val[1], *&STACK[0x230])), *&STACK[0x230]), a4);
  v153 = vaddq_s64(v138, v23);
  v191.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL))), a8), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x380], 3uLL), v18)));
  v191.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[1], 0x38uLL), v191.val[1], 8uLL), veorq_s8(v191.val[1], vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL))), a8), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x390], 3uLL), v18)));
  v154 = veorq_s8(v153, *&STACK[0x300]);
  v155 = veorq_s8(v153, *&STACK[0x2F0]);
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), *&STACK[0x360]);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157);
  v159 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v158, v158), v19), v158), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v161, v161), v20), v161), v21), v22);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), a5);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), a3);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v168, v24), vorrq_s8(v168, *&STACK[0x230])), *&STACK[0x230]), a4);
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL)));
  v171 = vaddq_s64(vsubq_s64(vorrq_s8(v134, *&STACK[0x310]), vorrq_s8(v134, v23)), v23);
  v191.val[1] = vshlq_u64(veorq_s8(v170, a8), vnegq_s64(vandq_s8(vshlq_n_s64(v78, 3uLL), v18)));
  v172 = veorq_s8(v171, *&STACK[0x300]);
  v173 = veorq_s8(v171, *&STACK[0x2F0]);
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), *&STACK[0x360]);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v176, v176), v19), v176), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v179, v179), v20), v179), v21), v22);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v182 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181), a5);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), a3);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v186, v24), vorrq_s8(v186, *&STACK[0x230])), *&STACK[0x230]), a4);
  v191.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL))), a8), vnegq_s64(vandq_s8(vshlq_n_s64(v103, 3uLL), v18)));
  v136.i64[1] = vqtbl4q_s8(v191, *&STACK[0x3A0]).u64[0];
  v188 = vrev64q_s8(*(v25 + v15 - 1 - 15));
  v189 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v188, v188, 8uLL), *&STACK[0x250]), v136));
  *(v17 - 15 + v15 - 1) = vextq_s8(v189, v189, 8uLL);
  return (*(v16 + 8 * ((10195 * (v15 == 16)) ^ a15)))();
}

uint64_t sub_100096894()
{
  v8 = v6;
  v9 = (v0 + 3247) ^ ((&v7 ^ 0x5869D362) * v1);
  (*(v2 + 8 * (v0 ^ 0x3667)))(&v7);
  v9 = ((v0 ^ 0x6C7) + 2926) ^ ((((&v7 | 0xC611F849) - (&v7 & 0xC611F849)) ^ 0x9E782B2B) * v1);
  v8 = v5;
  (*(v2 + 8 * (v0 ^ 0x3667)))(&v7);
  return (v3 - 16257999);
}

void sub_1000969EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = v18 - 136;
  *(v19 + 8) = a14;
  *(v19 + 16) = v17;
  *(v18 - 132) = (v14 - 1532) ^ (((2 * ((v18 - 136) & 0x196741F8) - (v18 - 136) + 1721286144) ^ 0x5F6E7423) * v15);
  (*(v16 + 8 * (v14 ^ 0x37F1)))(v18 - 136);
  JUMPOUT(0x10001FC60);
}

uint64_t sub_100096BEC@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x3AFC)))(a1);
  *(STACK[0x7F8] + 24) = 0;
  return sub_10008C440();
}

uint64_t sub_100096C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a16 = 1317436891 * ((((2 * &a14) | 0x1B70EA94) - &a14 + 1917291190) ^ 0x3DBBED3C) + 8154;
  a14 = &a12;
  v18 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((2343 * (a15 == v17)) ^ 0x1574u)))(v18);
}

uint64_t sub_100096D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((v3 + 2220) ^ 0xFFFFFFFFFFFFF031) + v2;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((5842 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_100096DBC@<X0>(unsigned int a1@<W8>)
{
  v3 = 16 - ((((6 - a1) ^ a1 ^ (((a1 + 96) ^ 4) + 14)) ^ ((((a1 + 96) ^ 1) + 9) ^ ((a1 ^ 0xC) + ((v1 + 37) | 0x8A) - 77 - 120))) & 0xF ^ 6u);
  LODWORD(STACK[0x514]) = v3;
  return (*(v2 + 8 * ((15994 * ((a1 ^ 0x7C7DE7F5DC5DDEEDLL) + ((2 * a1) & 0x1B8BBBDDALL) + ((2 * v3) & 0xFFFFFFFFFFFFFFEFLL) + (v3 ^ 0xBFDF3FE7A8BFBFF7) - 0x3C5D27DD851D9EE4 < 0xFFFFFFF6)) ^ v1)))();
}

uint64_t sub_100096F08(int32x4_t a1, double a2, double a3, int32x4_t a4, double a5, int32x4_t a6, int32x4_t a7)
{
  v9 = 34 * (v7 ^ 0x139F);
  v10 = ((34 * (v7 ^ 0x9F)) | vaddvq_s32(vaddq_s32(vaddq_s32(a1, a6), vaddq_s32(a4, a7))) & 1) + 71;
  v11 = (v10 & 0xA | 0xA5) ^ v10 & 0x6E;
  v12 = v10 ^ (2 * ((v10 ^ 0x1A) & (2 * ((v10 ^ 0x1A) & (2 * ((v10 ^ 0x1A) & (2 * ((v10 ^ 0x1A) & (2 * ((v10 ^ 0x1A) & (2 * ((v10 ^ 0x1A) & (2 * v11) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ v11)) ^ 0xD8;
  v13 = STACK[0x5F8];
  *(v13 + 48) = v12;
  STACK[0x4A8] = v13;
  v14 = (v9 - 8982) | 0x205;
  v15 = v9 - 9032;
  v16 = v9 - 3748;
  LODWORD(STACK[0x6A4]) = STACK[0x4A4];
  v17 = (*(v8 + 8 * (v9 | 0x182)))(16, 0x20040A4A59CD2) == 0;
  return (*(STACK[0x400] + 8 * (((((v15 ^ v17) & 1) == 0) * (v14 ^ 0x3F9)) ^ v16)))();
}

void sub_100097080()
{
  v0 = 16 * (LOBYTE(STACK[0x7BF]) ^ 0x19);
  LODWORD(STACK[0x548]) = LODWORD(STACK[0x4B0]) - 4350;
  LODWORD(STACK[0x540]) = v0 ^ 0x19;
  JUMPOUT(0x1000970B8);
}

uint64_t sub_100098A80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W5>, uint64_t a4@<X8>)
{
  v12 = ((a3 - 3555) ^ 0xFFFFFFFFFFFFE9C2) + a2;
  v13 = (__ROR8__((a1 + v12) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v14 = __ROR8__(v13 ^ 0x4DE9423B6F16E7D2, 8);
  v13 ^= 0xE5AFA7ACF6E0968ELL;
  v15 = (v14 + v13) ^ 0xE49D77DF873DBF7ELL;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = __ROR8__(v15, 8);
  v18 = (v17 + v16 - (v4 & (2 * (v17 + v16))) + v5) ^ v6;
  v19 = v18 ^ __ROR8__(v16, 61);
  v20 = (__ROR8__(v18, 8) + v19) ^ 0x5963B6C555D97F1FLL;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x61459D2AF01F24F7;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = ((v8 | (2 * ((v24 + v23) ^ v7))) - ((v24 + v23) ^ v7) + v9) ^ v10;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x1A2AEBE44253AF03;
  *(a1 + v12) = *(a4 + v12) ^ (((__ROR8__(v27, 8) + (v27 ^ __ROR8__(v26, 61))) ^ 0xAB3042D228875C41) >> (8 * ((a1 + v12) & 7))) ^ 0x3C;
  return (*(v11 + 8 * ((15434 * (v12 == 0)) ^ (a3 - 1128))))();
}

uint64_t sub_100098BEC()
{
  v1 = STACK[0x524];
  v2 = STACK[0x520];
  v3 = STACK[0x518];
  v4 = STACK[0x504];
  v5 = STACK[0x510];
  v6 = STACK[0x508];
  v7 = STACK[0x570];
  v8 = STACK[0x500];
  v9 = STACK[0x4FC];
  STACK[0x570] = STACK[0x570];
  LODWORD(STACK[0x588]) = 0;
  LODWORD(STACK[0x5B0]) = 0;
  v10 = (v7 - 1155) | 0xA80;
  LODWORD(STACK[0x590]) = v10;
  v11 = STACK[0x5A0];
  v12 = (((*(STACK[0x5A0] + (v10 ^ 0x2D0E8) - 961 * ((((v10 ^ 0x2D0E8u) * v0) >> 32) >> 9)) ^ 0x34) << 24) | ((*(STACK[0x5A0] + 187335 - 961 * (((187335 * v0) >> 32) >> 9)) ^ 0x34) << 16) | ((*(STACK[0x5A0] + 187680 - 961 * (((187680 * v0) >> 32) >> 9)) ^ 0x34) << 8) | *(STACK[0x5A0] + 188025 - 961 * (((188025 * v0) >> 32) >> 9)) ^ 0xF3) ^ (v9 + 7642611);
  v13 = STACK[0x5A8];
  *(STACK[0x5A8] + 704) = v12 ^ 0x2909BE42;
  v14 = (v11[218730 - 961 * (((218730 * v0) >> 32) >> 9)] ^ 0xFFFFFFF3) << 24;
  LODWORD(STACK[0x58C]) = 219075;
  v15 = (v14 | ((v11[219075 - 961 * (((219075 * v0) >> 32) >> 9)] ^ 0xF3) << 16) | ((v11[219420 - 961 * (((219420 * v0) >> 32) >> 9)] ^ 0xF3) << 8) | v11[657] ^ 0xF3) ^ v6;
  v16 = (((v9 + 7642611) ^ (-7642611 - v9) ^ (v15 - (v15 ^ (v9 + 7642611)))) + v15) ^ (v8 - 101452214);
  v17 = (v9 + 7642611) ^ v4;
  *v13 = v15;
  v18 = v8 + 1497736180;
  v19 = v17 ^ 0x59309F6B;
  v13[74] = -1842066783 - v2 + (((v12 ^ 0xC7 ^ v1) - v1) ^ ((v12 ^ 0xC7 ^ v6) - v6) ^ ((v12 ^ 0xC7 ^ v16) - v16));
  v20 = v6 ^ v5 ^ 0x59309F6B;
  v21 = v3 - 641653098 + v17;
  v22 = v3 - 1005679639 + v15;
  v23 = v19 ^ (v8 + 1497736180);
  v24 = v2 - 641653098 + (v6 ^ v5);
  v13[102] = v22;
  v25 = ((v11[14] ^ 0x34) << 24) | ((v11[359] ^ 0x34) << 16) | ((v11[704] ^ 0x34) << 8) | v11[88] ^ 0xF3;
  v26 = v25 ^ v23;
  v13[241] = v25 ^ v23 ^ 0x2909BE42;
  v27 = v4;
  v28 = v20 ^ (v1 + 1599188394);
  v29 = ((v11[41] ^ 0xFFFFFFF3) << 24) | ((v11[386] ^ 0xF3) << 16) | ((v11[731] ^ 0xF3) << 8) | v11[115] ^ 0xF3;
  v13[65] = v29 ^ v28;
  v30 = (v25 ^ v19 ^ 0xC7 ^ v29 ^ v28) - (v25 ^ v19 ^ 0xC7);
  v31 = (v29 ^ (v1 + 1599188394)) - v20;
  v32 = v31 & 0x10000000;
  v33 = v29 - v28;
  v34 = v31 & 0xEFFFFFFF;
  if ((v32 & v30) != 0)
  {
    v32 = -v32;
  }

  v35 = v32 + v30;
  v36 = v26 ^ 0xC7;
  v37 = v34 ^ v33 ^ v35;
  v38 = v18 + v27 + 184437589;
  v39 = v5 + v1 + 1783625983;
  v40 = v19 - v38;
  v41 = v21 ^ 0x6C786727;
  v42 = ((2 * v23) & 0xC18136C ^ 0x8180300) + (v23 ^ 0xF323483E);
  v43 = (v21 ^ 0x6C786727) + 337440783;
  v44 = v20 - v39;
  v45 = v38 - v42;
  LODWORD(STACK[0x57C]) = v39 - (v28 ^ 0xF52F4188);
  v13[139] = -1842066783 - v24 + v37;
  v13[167] = v21 - 1005679639 + v36;
  LODWORD(STACK[0x584]) = v40 ^ 0x8D22F893;
  v46 = (v24 ^ 0x6C786727) + 337440783;
  LODWORD(STACK[0x580]) = v46;
  v47 = (v11[507] ^ 0xF3 | ((v11[778] ^ 0x34) << 16) | ((v11[433] ^ 0x34) << 24) | ((v11[162] ^ 0x34) << 8)) ^ v43;
  v13[28] = v47 ^ 0x2909BE42;
  v48 = (v11[534] ^ 0xF3 | ((v11[189] ^ 0xF3) << 8) | ((v11[460] ^ 0xFFFFFFF3) << 24) | ((v11[805] ^ 0xF3) << 16)) ^ v46;
  v49 = v40 ^ 0xD9B4D033 ^ (v42 - 101452214);
  v13[130] = v48;
  v50 = (v20 - v39) ^ 0x8D22F854 ^ v47;
  v51 = v28 ^ 0xA1B96928;
  v44 ^= 0x8D22F893;
  v52 = ((v28 ^ 0xA1B969EF ^ v47) - (v28 ^ 0xA1B96928)) ^ (v50 - v44) ^ ((v47 ^ v48 ^ v49 ^ 0xC7) - (v48 ^ v49));
  v53 = v43 - (v45 + 101452214);
  v54 = v53 ^ (v45 - 604103994);
  v55 = v41 - 1504626000 + v48;
  LOWORD(v48) = LODWORD(STACK[0x5B0]) + 72;
  v13[204] = v55;
  v13[((((v54 ^ v49) & 0x41 ^ 0x41) + ((v54 ^ v49) & 0x41)) * v48) % 0x116u] = v52 - (v24 ^ 0x6C786727) - 1343120422;
  v56 = STACK[0x57C];
  v57 = LODWORD(STACK[0x57C]) ^ v44;
  v58 = LODWORD(STACK[0x588]) + 13;
  v59 = (((v11[852] ^ 0x34) << 24) | ((v11[236] ^ 0x34) << 16) | ((v11[581] ^ 0x34) << 8) | v11[926] ^ 0xF3) ^ v54;
  v13[93] = v59 ^ 0x2909BE42;
  v60 = 345 * (2 * (v58 & 1) + (v58 ^ 1));
  v61 = LODWORD(STACK[0x580]) - v56;
  v62 = (v56 - 705556208) ^ v61;
  v63 = ((v11[879] ^ 0xFFFFFFF3) << 24) | ((v11[263] ^ 0xF3) << 16) | ((v11[(v60 + 218730) % (((v57 - 942815998) & 0x3C1 ^ 0x3C1) + ((v57 - 942815998) & 0x3C1u))] ^ 0xF3) << 8) | v11[(v60 + LODWORD(STACK[0x58C])) % 0x3C1u] ^ 0xF3;
  v13[195] = v63 ^ v62;
  v13[269] = (v54 ^ v49) + v53 - 1842066783 + (v59 ^ 0xC7);
  v13[19] = -1005679639 - ((v62 ^ v51 ^ v44) + v61) + (((v59 ^ 0xC7 ^ v54 ^ v49 ^ (((v45 + 101452214) ^ LODWORD(STACK[0x584])) - 942815998) ^ v63 ^ v62) - (v59 ^ 0xC7 ^ v54 ^ v49 ^ (((v45 + 101452214) ^ LODWORD(STACK[0x584])) - 942815998))) ^ ((v63 ^ v51 ^ v44) - (v62 ^ v51 ^ v44)) ^ ((v63 ^ v62 ^ (v57 - 942815998)) - (v57 - 942815998)));
  return (*(STACK[0x598] + 8 * ((27 * (LODWORD(STACK[0x5B0]) > 0xB)) ^ STACK[0x570])))();
}

uint64_t sub_100099708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15, int a16, unsigned int a17)
{
  a17 = 1317436891 * (((&a15 | 0x92E344ED) - (&a15 & 0x92E344ED)) ^ 0x22E0DC9B) + 8154;
  a15 = &a14;
  v19 = (*(v17 + 77096))(&a15);
  return (*(v17 + 8 * ((2 * (a16 == 16257999)) | (32 * (a16 == 16257999)) | v18)))(v19);
}

uint64_t sub_1000997E0@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v1 + v7) - ((*(v1 + v7) << v3) & 0x78) + 60;
  return (*(v6 + 8 * (((v7 != 0) * v5) ^ v2)))();
}

uint64_t sub_10009984C@<X0>(unint64_t a1@<X5>, unint64_t a2@<X6>, unint64_t a3@<X7>, uint64_t a4@<X8>)
{
  *&STACK[0x350] = vdupq_n_s64(0x38uLL);
  *&STACK[0x360] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x380] = vdupq_n_s64(v12);
  *&STACK[0x390] = vdupq_n_s64(0x2D9C56C6ED9D3E2EuLL);
  *&STACK[0x330] = vdupq_n_s64(a3);
  *&STACK[0x340] = vdupq_n_s64(a1);
  *&STACK[0x310] = vdupq_n_s64(v9);
  *&STACK[0x320] = vdupq_n_s64(a2);
  v16 = v15 + v8 + v7;
  *&STACK[0x2F0] = vdupq_n_s64(v11);
  *&STACK[0x300] = vdupq_n_s64(v10);
  *&STACK[0x2D0] = vdupq_n_s64(0x365717C7E4CB1A76uLL);
  *&STACK[0x2E0] = vdupq_n_s64(v13);
  *&STACK[0x2B0] = vdupq_n_s64(0x1323CE1A44C5F46EuLL);
  *&STACK[0x2C0] = vdupq_n_s64(0x8BD86B3AFACC8D6DLL);
  v17 = vdupq_n_s64(v6);
  *&STACK[0x290] = vdupq_n_s64(0xAC7DA0564C1838BuLL);
  *&STACK[0x2A0] = vdupq_n_s64(0xEEA89D249DAFB75ALL);
  *&STACK[0x270] = vdupq_n_s64(0xEAD3CF27A2EF22E5);
  *&STACK[0x280] = vdupq_n_s64(0x2A5861B0BA21BA34uLL);
  *&STACK[0x250] = vdupq_n_s64(0x8E4D6ECA343D275ELL);
  *&STACK[0x260] = vdupq_n_s64(0x8B436845DC92299CLL);
  *&STACK[0x240] = vdupq_n_s64(0x51BB4171AFEDC628uLL);
  *&STACK[0x230] = xmmword_10069D330;
  v18 = *&STACK[0x330];
  v19 = *&STACK[0x340];
  v20 = *&STACK[0x310];
  v21 = *&STACK[0x320];
  v22 = *&STACK[0x300];
  v23 = *&STACK[0x2E0];
  v24 = *&STACK[0x2C0];
  v26 = *&STACK[0x290];
  v25 = *&STACK[0x2A0];
  v28 = *&STACK[0x270];
  v27 = *&STACK[0x280];
  v30 = *&STACK[0x250];
  v29 = *&STACK[0x260];
  v31 = *&STACK[0x350];
  v32.i64[0] = v5 + a4 + v16 + ((v4 - 2474) | 0x110u) - 3876;
  v32.i64[1] = v5 + a4 + v16 + 12;
  v33.i64[0] = v5 + a4 + v16 + 15;
  v33.i64[1] = v5 + a4 + v16 + 14;
  v34.i64[0] = v5 + a4 + v16 + 11;
  v34.i64[1] = v5 + a4 + v16 + 10;
  v35.i64[0] = v5 + a4 + v16 + 9;
  v35.i64[1] = v5 + a4 + v16 + 8;
  *&v36 = v5 + a4 + v16 + 7;
  *(&v36 + 1) = v5 + a4 + v16 + 6;
  *&STACK[0x3B0] = v36;
  *&v36 = v5 + a4 + v16 + 5;
  *(&v36 + 1) = v5 + a4 + v16 + 4;
  *&STACK[0x3A0] = v36;
  v37 = *&STACK[0x360];
  v38 = vandq_s8(v35, *&STACK[0x360]);
  v39 = vandq_s8(v34, *&STACK[0x360]);
  v40 = vandq_s8(v33, *&STACK[0x360]);
  v41 = vandq_s8(v32, *&STACK[0x360]);
  v42 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v45 = *&STACK[0x380];
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), *&STACK[0x390]);
  v47 = vaddq_s64(v44, *&STACK[0x390]);
  v48 = vaddq_s64(v43, *&STACK[0x390]);
  v49 = vaddq_s64(v42, *&STACK[0x390]);
  *&STACK[0x370] = vsubq_s64(vorrq_s8(vaddq_s64(v49, v49), *&STACK[0x380]), v49);
  v50 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v46, v46), v45), v46), v19);
  v51 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v47, v47), v45), v47), v19);
  v52 = veorq_s8(v51, v18);
  v53 = veorq_s8(v50, v18);
  v54 = veorq_s8(v50, v21);
  v55 = veorq_s8(v51, v21);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v55);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v54);
  v58 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57, v57), v20), v57), v22), *&STACK[0x2F0]);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v56, v56), v20), v56), v22), *&STACK[0x2F0]);
  v60 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v61 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v62 = veorq_s8(v58, v60);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v61);
  v65 = *&STACK[0x2D0];
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v64, v64), v23), v64), *&STACK[0x2D0]), v24);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v63, v63), v23), v63), *&STACK[0x2D0]), v24);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v70 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v72 = vaddq_s64(v70, v68);
  v73 = *&STACK[0x2B0];
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v71, *&STACK[0x2B0]), vorrq_s8(v71, v17)), v17), v25);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v72, *&STACK[0x2B0]), vorrq_s8(v72, v17)), v17), v25);
  v76 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v77 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v78 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v76), v26);
  v79 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v77), v26);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v81 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v82 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v81);
  v84 = vaddq_s64(v82, v80);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v84, v84), v27), v84), v28), v29);
  v86 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v83, v83), v27), v83), v28), v29);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v88 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v89 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v88);
  v91 = veorq_s8(vaddq_s64(v89, v87), v30);
  v92 = veorq_s8(v90, v30);
  v93 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v94 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v95 = veorq_s8(v91, v93);
  v96 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v42.i64[0] = v5 + a4 + v16 + 3;
  v42.i64[1] = v5 + a4 + v16 + 2;
  v98 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v48, v48), v45), v48), v19);
  v99 = *&STACK[0x240];
  v202.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v97, v95), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v31)));
  v202.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v96, v94), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v31)));
  v100 = veorq_s8(v98, v18);
  v101 = veorq_s8(v98, v21);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v102, v102), v20), v102), v22), *&STACK[0x2F0]);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v105, v105), v23), v105), *&STACK[0x2D0]), v24);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v108, *&STACK[0x2B0]), vorrq_s8(v108, v17)), v17), v25);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v26);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v113, v113), v27), v113), v28), v29);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v30);
  v34.i64[0] = v5 + a4 + v16 + 1;
  v34.i64[1] = v5 + a4 + v16;
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL)));
  v118 = vandq_s8(v34, v37);
  v119 = vaddq_s64(*&STACK[0x370], v19);
  v202.val[0] = vshlq_u64(veorq_s8(v117, *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v31)));
  v120 = veorq_s8(v119, v18);
  v121 = veorq_s8(v119, v21);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v122, v122), v20), v122), v22), *&STACK[0x2F0]);
  v124 = *&STACK[0x2F0];
  v125 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), v23), v126), *&STACK[0x2D0]), v24);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v129, *&STACK[0x2B0]), vorrq_s8(v129, v17)), v17), v25);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), v26);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v134, v134), v27), v134), v28), v29);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136), v30);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v139 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v140 = vandq_s8(v42, v37);
  v141 = vaddq_s64(v139, v138);
  v142 = vandq_s8(*&STACK[0x3A0], v37);
  v202.val[1] = vshlq_u64(veorq_s8(v141, *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v31)));
  v143 = vandq_s8(*&STACK[0x3B0], v37);
  v144 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), *&STACK[0x390]);
  v148 = vaddq_s64(v146, *&STACK[0x390]);
  v149 = vaddq_s64(v145, *&STACK[0x390]);
  v150 = vaddq_s64(v144, *&STACK[0x390]);
  v151 = *&STACK[0x380];
  *&STACK[0x370] = vsubq_s64(vorrq_s8(vaddq_s64(v150, v150), *&STACK[0x380]), v150);
  v152 = vsubq_s64(vorrq_s8(vaddq_s64(v149, v149), v151), v149);
  v153 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v147, v147), v151), v147), v19);
  v154 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v148, v148), v151), v148), v19);
  v150.i64[0] = vqtbl4q_s8(v202, *&STACK[0x230]).u64[0];
  v202.val[0] = veorq_s8(v154, v18);
  v202.val[1] = veorq_s8(v153, v18);
  v202.val[2] = veorq_s8(v153, v21);
  v202.val[3] = veorq_s8(v154, v21);
  v202.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL), v202.val[3]);
  v202.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), v202.val[2]);
  v202.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202.val[1], v202.val[1]), v20), v202.val[1]), v22), v124);
  v202.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202.val[0], v202.val[0]), v20), v202.val[0]), v22), v124);
  v155 = vsraq_n_u64(vshlq_n_s64(v202.val[2], 3uLL), v202.val[2], 0x3DuLL);
  v202.val[2] = veorq_s8(v202.val[0], vsraq_n_u64(vshlq_n_s64(v202.val[3], 3uLL), v202.val[3], 0x3DuLL));
  v202.val[3] = veorq_s8(v202.val[1], v155);
  v156 = vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL);
  v202.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), v202.val[3]);
  v202.val[1] = vaddq_s64(v156, v202.val[2]);
  v202.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202.val[1], v202.val[1]), v23), v202.val[1]), v65), v24);
  v202.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202.val[0], v202.val[0]), v23), v202.val[0]), v65), v24);
  v157 = vsraq_n_u64(vshlq_n_s64(v202.val[2], 3uLL), v202.val[2], 0x3DuLL);
  v202.val[2] = veorq_s8(v202.val[0], vsraq_n_u64(vshlq_n_s64(v202.val[3], 3uLL), v202.val[3], 0x3DuLL));
  v202.val[3] = veorq_s8(v202.val[1], v157);
  v158 = vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL);
  v202.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), v202.val[3]);
  v202.val[1] = vaddq_s64(v158, v202.val[2]);
  v202.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v202.val[0], v73), vorrq_s8(v202.val[0], v17)), v17), v25);
  v202.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v202.val[1], v73), vorrq_s8(v202.val[1], v17)), v17), v25);
  v202.val[2] = veorq_s8(v202.val[1], vsraq_n_u64(vshlq_n_s64(v202.val[2], 3uLL), v202.val[2], 0x3DuLL));
  v202.val[3] = veorq_s8(v202.val[0], vsraq_n_u64(vshlq_n_s64(v202.val[3], 3uLL), v202.val[3], 0x3DuLL));
  v202.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), v202.val[2]), v26);
  v202.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL), v202.val[3]), v26);
  v159 = vsraq_n_u64(vshlq_n_s64(v202.val[2], 3uLL), v202.val[2], 0x3DuLL);
  v202.val[2] = veorq_s8(v202.val[0], vsraq_n_u64(vshlq_n_s64(v202.val[3], 3uLL), v202.val[3], 0x3DuLL));
  v202.val[3] = veorq_s8(v202.val[1], v159);
  v160 = vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL);
  v202.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), v202.val[3]);
  v202.val[1] = vaddq_s64(v160, v202.val[2]);
  v202.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202.val[1], v202.val[1]), v27), v202.val[1]), v28), v29);
  v202.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v202.val[0], v202.val[0]), v27), v202.val[0]), v28), v29);
  v161 = vsraq_n_u64(vshlq_n_s64(v202.val[2], 3uLL), v202.val[2], 0x3DuLL);
  v202.val[2] = veorq_s8(v202.val[0], vsraq_n_u64(vshlq_n_s64(v202.val[3], 3uLL), v202.val[3], 0x3DuLL));
  v202.val[3] = veorq_s8(v202.val[1], v161);
  v162 = vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL);
  v202.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), v202.val[3]);
  v202.val[1] = veorq_s8(vaddq_s64(v162, v202.val[2]), v30);
  v202.val[0] = veorq_s8(v202.val[0], v30);
  v163 = vsraq_n_u64(vshlq_n_s64(v202.val[2], 3uLL), v202.val[2], 0x3DuLL);
  v202.val[2] = veorq_s8(v202.val[0], vsraq_n_u64(vshlq_n_s64(v202.val[3], 3uLL), v202.val[3], 0x3DuLL));
  v164 = vaddq_s64(v152, v19);
  v202.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[1], 0x38uLL), v202.val[1], 8uLL), veorq_s8(v202.val[1], v163)), v99), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v31)));
  v202.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202.val[0], 0x38uLL), v202.val[0], 8uLL), v202.val[2]), v99), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v31)));
  v165 = veorq_s8(v164, v18);
  v166 = veorq_s8(v164, v21);
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), v20), v167), v22), v124);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v170, v170), v23), v170), v65), v24);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v173, v73), vorrq_s8(v173, v17)), v17), v25);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), v26);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v178, v178), v27), v178), v28), v29);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), v30);
  v182 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL)));
  v183 = vaddq_s64(*&STACK[0x370], v19);
  v202.val[1] = vshlq_u64(veorq_s8(v182, v99), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3A0], 3uLL), v31)));
  v184 = veorq_s8(v183, v18);
  v185 = veorq_s8(v183, v21);
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v186, v186), v20), v186), v22), v124);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v189 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188);
  v190 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v189, v189), v23), v189), v65), v24);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191);
  v193 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192, v73), vorrq_s8(v192, v17)), v17), v25);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v195 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194), v26);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v197 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v197, v197), v27), v197), v28), v29);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v200 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199), v30);
  v202.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL))), v99), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3B0], 3uLL), v31)));
  v150.i64[1] = vqtbl4q_s8(v202, *&STACK[0x230]).u64[0];
  v202.val[0] = vrev64q_s8(v150);
  *v34.i64[1] = vextq_s8(v202.val[0], v202.val[0], 8uLL);
  return (*(v14 + 8 * (((((v15 & 0xFFFFFFF0) == 16) << 12) | (((v15 & 0xFFFFFFF0) == 16) << 13)) ^ (v4 - 653))))();
}

uint64_t sub_10009A480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  v25 = (((&a17 ^ 0xCE503427 | 0x5757D249) - ((&a17 ^ 0xCE503427) & 0x5757D249)) ^ 0xC16E350C) * v23;
  a18 = v25 - 813528954;
  a19 = a15;
  a20 = &a14;
  a21 = 1032869496 - v25;
  a22 = v25 + v22 + 1674578095;
  v26 = (*(v24 + 8 * (v22 ^ 0x2673)))(&a17);
  return (*(v24 + 8 * ((2001 * (a17 == ((v22 - 1049539644) & 0xDC8) + 16254535)) ^ v22)))(v26);
}

uint64_t sub_10009A638@<X0>(int a1@<W1>, int a2@<W2>, int a3@<W3>, char a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W8>)
{
  LODWORD(STACK[0x590]) = LODWORD(STACK[0x424]) + LODWORD(STACK[0x56C]);
  LODWORD(STACK[0x53C]) = LODWORD(STACK[0x430]) + LODWORD(STACK[0x570]);
  LODWORD(STACK[0x580]) = LODWORD(STACK[0x3F0]) + v7;
  v20 = 2 * (LODWORD(STACK[0x3EC]) ^ 0x8FD);
  LODWORD(STACK[0x524]) = v20;
  LODWORD(STACK[0x538]) = ((v15 ^ 0xE0390032) - 1229423917) ^ ((v15 ^ 0x858F75E9) - 754053366) ^ (((v20 + 1706453979) ^ v15) + 859246396);
  v21 = a3 ^ a1 ^ v17;
  v22 = v18 ^ v17 ^ 0x44117E1D ^ (v10 - 2 * (a3 & 0x44117E1F ^ a4 & 2) + 633636018);
  v23 = v9 - 988537710 + (((v18 ^ v17 ^ 0x75BEA924) - 833607481) ^ ((v18 ^ v17 ^ 0xCAF625C0) + 1897440291) ^ ((v18 ^ v17 ^ 0xBF488CE4) + 77991175));
  LODWORD(STACK[0x56C]) = (((v8 ^ (v16 - 93) ^ v14) - v14) ^ ((v8 ^ (v16 - 93) ^ a5) - a5) ^ ((((a2 ^ v21 ^ 0x42C71BBC) - 1260154767) ^ ((a2 ^ v21 ^ 0x9EFF6912) + 1759240927) ^ ((a2 ^ v21 ^ 0xD2CA7C5E) + 619640723)) - (((v21 ^ 0x969C6EE1) + 1622730030) ^ ((v21 ^ 0x3AA218D5) - 863595750) ^ ((v21 ^ 0x540F32B) - 211519256)) + 1719896471)) - v12;
  v24 = a5 ^ v11;
  v25 = (v13 ^ a5) + v12;
  v26 = v13 + v25;
  v27 = v25 - (a3 & 0xCD0F5C0C) - ((508361066 - v10) & 0xCD0F5C0C);
  v28 = (((v18 ^ v17 ^ 0x3BFC127B) - 2146266214) ^ ((v18 ^ v17 ^ 0x7BFD09A1) - 1072461756) ^ ((v18 ^ v17 ^ 0x40011BDA) - 68183495)) + v22;
  v29 = (v22 + 1739736449) ^ LODWORD(STACK[0x548]) ^ (v28 - 1413233762);
  v30 = STACK[0x540];
  v31 = (LODWORD(STACK[0x540]) ^ 0xEF20EF0 ^ v29) - (v29 ^ 0xA78C8BEF);
  v32 = v24 + 1739736449;
  HIDWORD(v33) = (v24 + 1739736449) ^ ~LODWORD(STACK[0x540]);
  LODWORD(v33) = (v24 + 1739736449) ^ LODWORD(STACK[0x540]) ^ 0xA97E851C;
  LODWORD(STACK[0x548]) = ((LODWORD(STACK[0x548]) ^ 0xBB56525E) + 1151970722) ^ ((LODWORD(STACK[0x548]) ^ 0x7110C18F) - 1896923535) ^ ((LODWORD(STACK[0x548]) ^ 0x6DCA183E) - 1841961022);
  v34 = v24 + 1739736449 + (v13 ^ a5);
  v35 = ((__ROR4__((v33 >> 2) ^ 0xB5A8F196, 30) ^ 0xD6A3C65A) - v32) ^ ((v30 ^ 0xA97E851F ^ v34) - v34) ^ v31;
  v36 = v28 + v22;
  v37 = (((v18 ^ 0xE6395489) - 1502455134) ^ ((v18 ^ 0xC5E248C9) - 2052503838) ^ ((v18 ^ 0x23DB1C40) + 1670386281)) + v23 - v28;
  v38 = v36 + v23 + 1815665972;
  v39 = v28 - v23 - v38 + 413376427;
  v40 = (v36 + v23 + 157779235) ^ (v36 + 326502687);
  v41 = STACK[0x5A8];
  v42 = v40 ^ LODWORD(STACK[0x5A8]) ^ (v39 - 1451326177 - ((2 * v39) & 0x52FD0A3E));
  v43 = STACK[0x588];
  v44 = (((v42 ^ LODWORD(STACK[0x588]) ^ 0xD188A490) - 4882766) ^ ((v42 ^ LODWORD(STACK[0x588]) ^ 0x24716D49) + 172799849) ^ ((v42 ^ LODWORD(STACK[0x588]) ^ 0x52754236) + 2085132312)) - (((v42 ^ 0xF6F46456) - 657867144) ^ ((v42 ^ 0xDE14D71B) - 265745093) ^ ((v42 ^ 0x28E0B34D) + 115173741));
  v45 = v26 - v34;
  v46 = v34 + v32;
  LODWORD(STACK[0x570]) = v35 - v27;
  v47 = v34 - v27;
  v48 = v27 + v46;
  v49 = (v27 + v46) ^ v46;
  v50 = (((v49 ^ v43 ^ 0x664AFDFA) - 1601831867) ^ ((v49 ^ v43 ^ 0x48DC8481) - 1911323328) ^ ((v49 ^ v43 ^ 0x891AF294) + 1339421483)) - (((v49 ^ 0x6BD26964) - 1390581541) ^ ((v49 ^ 0xFE86CD3F) + 944360578) ^ ((v49 ^ 0x9554A45B) + 1402709478));
  v51 = (((63200 - v36) ^ (v36 + 326502687)) & 0x9084) + v38;
  LODWORD(STACK[0x540]) = v51;
  LODWORD(STACK[0x588]) = ((v41 ^ 0x85533149) + 2058145463) ^ ((v41 ^ 0x7F7FF8EF) - 2139093231) ^ ((v41 ^ 0x53524CB9) - 1397902521);
  v52 = v47 - v48;
  v53 = (v50 + 1703638893) ^ ((LODWORD(STACK[0x43C]) ^ v52) - v52) ^ (v44 - 1534293933);
  v54 = v37 - 1459985471;
  v55 = v40 - v39;
  v37 = 46751709 - v37;
  v56 = v39 ^ v37;
  v57 = ((v39 ^ v37) - (((v52 & 0xDB ^ 0xDB) + (v52 & 0xDB)) ^ 0xDB)) ^ v37;
  v58 = v54 + v51 - (v39 ^ v37) - 1031993679;
  v59 = v55 - v58;
  v60 = STACK[0x58C];
  v61 = v56 ^ LODWORD(STACK[0x58C]) ^ (v55 - v58);
  v62 = STACK[0x57C];
  v63 = (((v61 ^ LODWORD(STACK[0x57C]) ^ 0xB9315BBB) + 662979263) ^ ((v61 ^ LODWORD(STACK[0x57C]) ^ 0xCF22FBAD) + 1368908457) ^ ((v61 ^ LODWORD(STACK[0x57C]) ^ 0x14E172E0) - 1974178842)) - (((v61 ^ 0x3A68A2FE) - 1528972292) ^ ((v61 ^ 0xA160DC29) + 1070974253) ^ ((v61 ^ 0x5E7627CE) - 1060946228));
  LODWORD(STACK[0x534]) = v53 - (v48 - 787303708);
  v64 = v45 + v48 - 787303708;
  v65 = -642030042 - v45;
  v66 = v52 ^ (-642030042 - v45);
  v67 = v64 - v66 + 642030042;
  v68 = v49 - v52 - v67;
  v69 = ((LODWORD(STACK[0x440]) ^ v68) - v68) ^ ((v62 ^ 0xCB8C57E9 ^ v66) - (v66 ^ 0x6C00DC06)) ^ (v63 + 1602450473);
  LODWORD(STACK[0x57C]) = ((v57 ^ 0x7A4652B6) + 504506197) ^ ((v57 ^ 0x353CC2AC) + 1365817167) ^ ((v57 ^ 0x4F7A901A) + 724493817);
  v70 = ((v60 ^ 0x43F6E313) - 1140253459) ^ ((v60 ^ 0x553C8992) - 1430030738) ^ ((v60 ^ 0xBFB4EF9E) + 1078661218);
  v71 = v56 ^ 0xF2370EC9;
  v72 = ((v66 ^ 0x8E6839C6) - 2086614799) ^ ((v66 ^ 0x5A26854) + 141203811) ^ ((v66 ^ 0x79FD5F5B) + 1949675118);
  LODWORD(STACK[0x528]) = ((v69 ^ 0x66A41C8A) - 635608839) ^ ((v69 ^ 0x4C5597A5) - 252908584) ^ ((v69 ^ 0x2AF18B2F) - 1773602978);
  v73 = ((v65 ^ 0x7C446081) + 1779436668) ^ ((v65 ^ 0xFDE6495C) - 340646489) ^ ((v65 ^ 0x73952714) + 1707166703);
  v74 = (v57 ^ 0x9BAB8A1D ^ ((v56 ^ 0xF2370EC9) - 1683256803 - 2 * ((v56 ^ 0xF2370EC9) & 0x1BAB8A1F ^ v56 & 2))) - (v56 ^ 0xF2370EC9);
  v75 = (v74 ^ 0x2A9FDFFF) - 713738866 + ((2 * v74) & 0x553FBFFE);
  v67 ^= 0x6105729Fu;
  v76 = (v68 ^ v67) - v72;
  v77 = v73 - v72;
  v78 = v76 ^ (v67 + 955164584);
  v79 = v78 + v72;
  LODWORD(v33) = __ROR4__(__ROR4__(v58, 19) ^ 0x9D2A8461, 13);
  v80 = (v33 ^ 0x42099BCB ^ v59) - v71;
  v81 = v80 ^ ((v33 ^ 0x42099BCB) + 955164584);
  v82 = v81 + v71;
  v83 = v80 ^ LODWORD(STACK[0x584]) ^ v82;
  v84 = ((v79 ^ 0xBDE74B18 ^ v19) - v79) ^ ((v76 ^ 0xBDE74B18 ^ v19) - v76) ^ ((((a6 ^ v83 ^ 0xE2BD2C9C) + 1943290264) ^ ((a6 ^ v83 ^ 0x28247843) - 1186130615) ^ ((a6 ^ v83 ^ 0x238C6E9F) - 1293614187)) - (((v83 ^ 0xF4AC41DA) + 1707420882) ^ ((v83 ^ 0x53DA3ED0) - 1028434980) ^ ((v83 ^ 0xEF1E006F) + 2121756005)) + 1619311395);
  v85 = ((v84 ^ 0x4626E7AF) + 249495273) ^ ((v84 ^ 0x516A49F4) + 429019316) ^ ((v84 ^ 0x174CAE5B) + 1605678877);
  v86 = ((a7 ^ 0xAD555EF2) + 448978537) ^ ((a7 ^ 0x923BA8A) - 1095484911) ^ ((a7 ^ 0xA476E478) + 333538531);
  v82 += 390028652;
  v87 = v78 + v76;
  v88 = v76 ^ 0x5060AD5B;
  v89 = (v76 ^ 0x5060AD5B) + 262002321;
  v90 = (v79 + 390028652) ^ v89;
  v91 = v81 + v80;
  v92 = (v80 ^ 0x5060AD5B) + 262002321;
  v93 = v82 ^ v92 ^ 0x462237D8 ^ (v91 - ((2 * v91 + 2073293244) & 0x8C446FB0) + 65810614);
  v94 = (v80 ^ 0x5060AD5B) - 1128504958 + v75 + 576160838 + (((v82 ^ v92 ^ 0x290A75EA) - 1864909362) ^ ((v82 ^ v92 ^ 0xD9FF5E40) + 1612879464) ^ ((v82 ^ v92 ^ 0xF0F52BAA) + 1227416462));
  v95 = v88 + v77 - 1561412958 + (((v90 ^ 0x8B610AE9) - 1697272752) ^ ((v90 ^ 0x28593214) + 971871411) ^ ((v90 ^ 0xA33838FD) - 1299407268));
  v96 = (v87 - ((2 * v87 + 2073293244) & 0xDC96B2B2) - 1407888841) ^ v90 ^ 0xEE4B5959;
  v97 = v95 ^ v89;
  v98 = (LODWORD(STACK[0x454]) ^ ((v95 ^ v89) - 748238208)) - ((v95 ^ v89) - 748238208);
  v99 = v91 - 1267289393;
  v100 = v94 ^ v92;
  v101 = v94 - v99;
  v102 = v93 - (v94 ^ v92 ^ v99);
  v103 = (v94 ^ v92) - 748238208;
  v104 = v103 ^ LODWORD(STACK[0x560]) ^ v102;
  v105 = (((v104 ^ LODWORD(STACK[0x550]) ^ 0x841E255C) - 1832720476) ^ ((v104 ^ LODWORD(STACK[0x550]) ^ 0x9B2A829D) - 1913241501) ^ ((v104 ^ LODWORD(STACK[0x550]) ^ 0xF6219D81) - 520265857)) - (((v104 ^ 0x67C30906) + 1897909242) ^ ((v104 ^ 0xCFE90792) - 650787474) ^ ((v104 ^ 0xE04271F1) - 157371633));
  v87 -= 1267289393;
  v106 = v95 - v87;
  v107 = v97 ^ v87;
  v108 = ((LODWORD(STACK[0x454]) ^ (v96 - v107)) - (v96 - v107)) ^ v98 ^ (v105 + 1592444123);
  LODWORD(STACK[0x5A8]) = v97 - 916054050 + v107 - v106;
  v109 = ((748238207 - v100) & 0xDEE425C2) + (v103 & 0xDEE425C2);
  v110 = LODWORD(STACK[0x534]) + LODWORD(STACK[0x40C]);
  v111 = LODWORD(STACK[0x410]) + v70 + 1160384316 + LODWORD(STACK[0x57C]);
  LODWORD(STACK[0x414]) += LODWORD(STACK[0x588]) + 398413678 + LODWORD(STACK[0x540]);
  v112 = LODWORD(STACK[0x418]) - v77 - 1687467796 + v85;
  v113 = LODWORD(STACK[0x590]) - 1540715893;
  v114 = (v96 - v107) ^ 0xF7E19BE5;
  LODWORD(STACK[0x590]) = v114 - 833339902;
  v115 = v108 - v106 + LODWORD(STACK[0x42C]);
  v116 = LODWORD(STACK[0x41C]) + v86 + 1213426136 + v75;
  v117 = LODWORD(STACK[0x53C]) - 1561029434;
  v118 = LODWORD(STACK[0x428]) - v52 + 1128694669 + LODWORD(STACK[0x528]);
  v119 = *(STACK[0x598] + 8 * (LODWORD(STACK[0x3EC]) ^ (1019 * (((LODWORD(STACK[0x3E0]) + 128) <= LODWORD(STACK[0x408])) & ~LODWORD(STACK[0x420])))));
  LODWORD(STACK[0x424]) = v113;
  LODWORD(STACK[0x430]) = v117;
  LODWORD(STACK[0x42C]) = v115;
  LODWORD(STACK[0x41C]) = v116;
  LODWORD(STACK[0x418]) = v112;
  LODWORD(STACK[0x428]) = v118;
  LODWORD(STACK[0x410]) = v111;
  LODWORD(STACK[0x40C]) = v110;
  LODWORD(STACK[0x588]) = (v109 ^ v106) + v114;
  LODWORD(STACK[0x58C]) = (v102 ^ 0xF7E19BE5) + (v101 ^ 0xDEE425C2);
  return v119();
}

uint64_t sub_10009B9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, _DWORD *a16)
{
  *STACK[0x4D8] = v16;
  *a16 = STACK[0x5D4];
  return (STACK[0x808])(a1, a2, a3, 16257999);
}

uint64_t sub_10009BA1C()
{
  v3 = *(v0 + 16) - 278262361 + 3 * (v1 ^ 0xE1C);
  v4 = *(v0 + 12) + 657515010;
  v5 = v4 < ((v1 + 98913916) & 0xFA1ABE7C ^ 0x415C1CE4);
  v6 = v5 ^ (v3 < 0x415C0AD8);
  v7 = v3 < v4;
  if (!v6)
  {
    v5 = v7;
  }

  return (*(v2 + 8 * ((53 * v5) ^ v1)))();
}

uint64_t sub_10009BAB8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22 = a1 - 2742;
  v23 = (a1 - 4737) | 0xE41;
  v24 = (*(v21 + 8 * (a1 + 4623)))(16, 0x20040A4A59CD2);
  return (*(v21 + 8 * (((v24 != 0) * (v23 - 3454)) ^ v22)))(v24, v25, v26, v27, v28, v29, v30, v31, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_10009BB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11)
{
  v15 = *v11;
  v16 = *(*(v14 + 8 * (v13 ^ 0x1697)) - 4);
  a10 = v13 + 1710126949 * ((((2 * &a10) | 0x8449EBE6) - &a10 + 1037765133) ^ 0xF03FAE63) + 2619;
  a11 = v16;
  v17 = (*(v12 + 8 * (v13 + 3530)))(&a10);
  return (*(v12 + 8 * (((v15 != 0x18487EF8CB592F80) * (((v13 + 1249003530) & 0xB58DBFC1) - 4055)) ^ v13)))(v17);
}

uint64_t sub_10009BBEC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  v7 = (((a5 - 3293) | 0x1440) + 1851032275) ^ a2;
  v8 = ((a5 - 3005) ^ 0x49C6A1CB) + v6;
  v9 = v8 < 0x9BB88F7D;
  v10 = v8 > v7 - 1682403459;
  if (v9 != v7 > 0x64477082)
  {
    v10 = v9;
  }

  return (*(v5 + 8 * ((243 * v10) ^ a5)))();
}

uint64_t sub_10009BCC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  STACK[0xB60] = v4;
  v7 = STACK[0x4B8];
  STACK[0xB68] = STACK[0x4B8];
  return (*(v6 + 8 * (((v4 - v7 > (a4 + 6280) - 9239) * ((4 * a4) ^ 0x37D9)) ^ a4)))(a1, a2, a3, (v5 + 5));
}

uint64_t sub_10009BDBC@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 + *(a1 + 16) + 1883891381;
  v4 = *(a1 + 12) - 1475299386;
  v5 = v3 < 0xC23BE09C;
  v6 = v3 > v4;
  if (v5 != v4 < 0xC23BE09C)
  {
    v6 = v5;
  }

  return (*(v1 + 8 * ((45 * ((v2 ^ v6) & 1)) ^ v2)))();
}

uint64_t sub_10009BE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v18 + 869) ^ (33731311 * (((&a15 | 0x255569A6) - (&a15 & 0x255569A6)) ^ 0x1CA3A385));
  a17 = a12;
  a18 = &a14;
  (*(v19 + 8 * (v18 + 7218)))(&a15);
  a17 = a12;
  LODWORD(a18) = v18 - 2008441969 * ((&a15 & 0x337D5672 | ~(&a15 | 0x337D5672)) ^ 0x841BFD83) + 3302;
  v21 = (*(v19 + 8 * (v18 ^ 0x2CAC)))(&a15);
  return (*(v19 + 8 * ((127 * (a15 != v20 + ((v18 - 919) ^ 0xCE8) - 2376)) ^ v18)))(v21);
}

uint64_t sub_10009BFD4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = LODWORD(STACK[0x340]);
  switch(v6)
  {
    case 17168:
      return (*(STACK[0x400] + 8 * ((v5 - 7345) ^ (3975 * (v4 == 197499223)))))();
    case 20706:
      return (*(STACK[0x400] + 8 * ((((v5 - 5438) ^ 0x8AE) * (v4 == 197499227)) ^ (v5 - 4763))))();
    case 33980:
      STACK[0x780] = STACK[0x5E0] + STACK[0x2B0];
      JUMPOUT(0x10003E848);
  }

  return sub_10011578C(a1, a2, 17168, a4);
}

uint64_t sub_10009C0E0()
{
  v0 = STACK[0x3F8] - 7627;
  v1 = STACK[0x3F8];
  v2 = *(STACK[0x8F8] + 24);
  STACK[0x8C0] = v2;
  return (*(STACK[0x400] + 8 * (v0 | ((((v2 == 0) ^ (v1 ^ v0)) & 1) << 7))))();
}

uint64_t sub_10009C12C()
{
  HIDWORD(v7) = v2 - 869295389 * ((((2 * (&v6 ^ 0x4D832DE3)) | 0x199B13A0) - (&v6 ^ 0x4D832DE3) + 1932686896) ^ 0x701A8860) - 656013715;
  v6 = v0;
  (*(v1 + 8 * (v2 + 8495)))(&v6);
  v4 = v7;
  v7 = *v3;
  LODWORD(v6) = v2 + 1358806181 * ((-1713602282 - (&v6 | 0x99DC8116) + (&v6 | 0x66237EE9)) ^ 0x590C126A) + 2144;
  (*(v1 + 8 * (v2 + 8441)))(&v6);
  return (v4 - 16257999);
}

uint64_t sub_10009C2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = v5 ^ *(a2 + v7);
  return (*(v6 + 8 * (((v7 != 0) * v2) ^ v3)))();
}

uint64_t sub_10009C2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15, int a16, int a17)
{
  a17 = v17 + 1317436891 * ((&a15 + 687068870 - 2 * (&a15 & 0x28F3D6C6)) ^ 0x98F04EB0) + 3495;
  a15 = &a14;
  v20 = (*(v18 + 8 * (v17 + 4978)))(&a15);
  return (*(v18 + 8 * (((a16 == 16257999) * ((v17 - 377) ^ (v19 + 710) ^ (v17 - 369656437) & 0xD77F7D7B)) | v17)))(v20);
}

void sub_10009C394(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x10004EC88);
}

uint64_t sub_10009C3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v23 = ((&a15 & 0x480266E1 | ~(&a15 | 0x480266E1)) ^ 0xEF944A7C) * v20;
  a17 = a11;
  a18 = &a13;
  a19 = -654855621 - v23;
  a20 = v23 + v22 + 1674574418;
  a16 = v23 - 1866244760;
  v24 = (*(v21 + 8 * (v22 ^ 0x37D0)))(&a15);
  return (*(v21 + 8 * ((7 * (a15 != ((v22 - 1584) | 0x102) + 16254629)) | v22)))(v24);
}

void sub_10009C4B4()
{
  LODWORD(STACK[0x58C]) = v1;
  LODWORD(STACK[0x590]) = v2;
  LODWORD(STACK[0x588]) += 16;
  LODWORD(STACK[0x47C]) = v0 + 1507042188;
  LODWORD(STACK[0x584]) += 52;
  LODWORD(STACK[0x580]) += 52;
  LODWORD(STACK[0x57C]) += 52;
  LODWORD(STACK[0x570]) -= 1988059952;
  LODWORD(STACK[0x56C]) += 168737632;
  LODWORD(STACK[0x560]) += 16;
  LODWORD(STACK[0x55C]) -= 16;
  LODWORD(STACK[0x550]) += 2528;
  LODWORD(STACK[0x54C]) += 2528;
  LODWORD(STACK[0x548]) += 2528;
  LODWORD(STACK[0x540]) += 2528;
  LODWORD(STACK[0x53C]) += 2528;
  LODWORD(STACK[0x538]) += 2528;
  LODWORD(STACK[0x534]) += 2528;
  LODWORD(STACK[0x528]) += 2528;
  LODWORD(STACK[0x524]) += 2528;
  LODWORD(STACK[0x520]) += 2528;
  LODWORD(STACK[0x518]) += 2528;
  LODWORD(STACK[0x510]) += 2528;
  LODWORD(STACK[0x508]) += 2528;
  LODWORD(STACK[0x504]) += 2528;
  LODWORD(STACK[0x500]) += 2528;
  LODWORD(STACK[0x4FC]) += 2528;
  LODWORD(STACK[0x4F8]) += 2528;
  LODWORD(STACK[0x4F4]) += 2528;
  LODWORD(STACK[0x4F0]) += 2528;
  LODWORD(STACK[0x4EC]) += 2528;
  LODWORD(STACK[0x4E8]) += 2528;
  LODWORD(STACK[0x4E0]) += 2528;
  LODWORD(STACK[0x4DC]) += 2528;
  LODWORD(STACK[0x4D0]) += 2528;
  LODWORD(STACK[0x4C8]) += 2528;
  LODWORD(STACK[0x4C4]) += 2528;
  LODWORD(STACK[0x4C0]) += 2528;
  LODWORD(STACK[0x4B8]) -= 118599392;
  LODWORD(STACK[0x4B4]) += 16;
  JUMPOUT(0x10007C3BCLL);
}

uint64_t sub_10009C710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (((v3 - 4292) | 0x1080u) ^ 0xFFFFFFFFFFFFEE37) + v2;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((3837 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_10009C7B4(uint64_t a1)
{
  STACK[0x450] = 0;
  LODWORD(STACK[0x564]) = 0;
  return sub_10018AD88(a1);
}

uint64_t sub_10009C7D4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v13 = a5 - 7642611;
  v14 = v6 + 1;
  LODWORD(STACK[0x5B0]) = v14;
  v15 = 65 * v14;
  v16 = STACK[0x5A8];
  v17 = *(STACK[0x5A8] + 4 * ((65 * v14 + 12545) % 0x116u)) ^ 0x2909BE85;
  LODWORD(STACK[0x56C]) = v5 - 1030;
  v18 = v14 * ((v5 - 1030) ^ 0x6C1);
  v19 = *(v16 + 4 * ((v18 - 975) % 0x116u));
  v20 = (v17 >> 3) ^ __ROR4__(v17, 7) ^ __ROR4__(v17, 18);
  v21 = *(v16 + 4 * ((65 * v14 + 13390) % 0x116u)) ^ 0x2909BE85;
  v22 = v18 - 130;
  v24 = __PAIR64__(v21, __ROR4__(v19, 18));
  v23 = (v19 >> 3) ^ __ROR4__(v19, 7) ^ v24;
  LODWORD(v24) = v21;
  v25 = *(v16 + 4 * (v22 % 0x116));
  v26 = (v24 >> 17) ^ (v21 >> 10);
  v27 = v25 >> 19;
  HIDWORD(v24) = v25;
  LODWORD(v24) = v25;
  v28 = a5 ^ v8 ^ v20;
  v29 = v26 ^ __ROR4__(v21, 19);
  v30 = (v24 >> 17) ^ (v25 >> 10) ^ __ROR4__(v25, 19);
  v31 = v8 + a5 + v10 - v9;
  v32 = v7 + v11;
  v33 = ((v23 ^ v12) - v12) ^ ((v23 ^ v7) - v7) ^ ((v28 ^ v23) - v28);
  LODWORD(STACK[0x580]) = v31 - 1456079327;
  v34 = v9 - v31;
  LODWORD(STACK[0x588]) = a5 + 269467664;
  v35 = v7 + 269467664;
  v36 = v9 - v31 + a5 + v10 - v31;
  v37 = v12 + v7 + v11 - a4;
  LODWORD(STACK[0x58C]) = v35;
  v38 = v32 - v37;
  v39 = v37 - 1456079327;
  v40 = a4 - v37;
  LODWORD(STACK[0x584]) = v40;
  v41 = v16;
  v42 = *(v16 + 4 * ((65 * v14 + 7930) % 0x116u)) - a4 + *(v16 + 4 * ((65 * v14 + 8515) % 0x116u)) + v33 - 610833730 + (((v30 ^ v39) - v39) ^ ((v30 ^ v35) - v35) ^ (((v31 - 1456079327) ^ (v13 + 277110275) ^ v29 ^ v30) - ((v31 - 1456079327) ^ (v13 + 277110275) ^ v29))) - v40;
  *(v16 + 4 * ((65 * v14 + 8970) % 0x116u)) = v42 - 1842066783;
  v43 = v40 + v38;
  v44 = v36 + 1129709733 + v42;
  v45 = v9 + 1005679639 + v9 - v31 + v20 + v29 + *(v16 + 4 * ((65 * v14 + 3510) % 0x116u)) + *(v16 + 4 * ((65 * v14 + 4095) % 0x116u));
  *(v16 + 4 * ((v15 + 4550) % 0x116u)) = v45;
  v46 = STACK[0x5A0];
  v47 = v45 - v43 - 124030094;
  v48 = ((((*(STACK[0x5A0] + (345 * (HIBYTE(v44) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIBYTE(v44) & 0xF) + 178365)) >> 32))) ^ 0xF3) << 8) ^ ((*(STACK[0x5A0] + (345 * (v44 >> 28) + 178365 - 961 * ((4469269 * (345 * (v44 >> 28) + 178365)) >> 32))) ^ 0xF3) << 12) | *(STACK[0x5A0] + (345 * (HIWORD(v44) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIWORD(v44) & 0xF) + 178365)) >> 32))) ^ 0xF3) << 8) ^ ((*(STACK[0x5A0] + (345 * ((v44 >> 20) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v44 >> 20) & 0xF) + 178365)) >> 32))) ^ 0xF3) << 12);
  v49 = v48 | *(STACK[0x5A0] + (345 * ((v44 >> 8) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v44 >> 8) & 0xF) + 178365)) >> 32))) ^ 0xF3;
  v50 = (v49 << 8) ^ ((*(STACK[0x5A0] + (345 * (v44 >> 12) + 178365 - 961 * ((4469269 * (345 * (v44 >> 12) + 178365)) >> 32))) ^ 0xF3) << 12);
  v51 = *(STACK[0x5A0] + (345 * (v44 & 0xF) + 178365 - 961 * ((4469269 * (345 * (v44 & 0xF) + 178365)) >> 32))) ^ 0xF3;
  v52 = (v50 | v51) ^ (16 * (*(STACK[0x5A0] + (345 * (v44 >> 4) + 178365 - 961 * ((4469269 * (345 * (v44 >> 4) + 178365)) >> 32))) ^ 0xF3));
  v53 = ((*(STACK[0x5A0] + (345 * (HIBYTE(v47) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIBYTE(v47) & 0xF) + 178365)) >> 32))) ^ 0xF3) << 8) ^ ((*(STACK[0x5A0] + (345 * (v47 >> 28) + 178365 - 961 * ((4469269 * (345 * (v47 >> 28) + 178365)) >> 32))) ^ 0xF3) << 12);
  v54 = 345 * ((BYTE1(v47) >> ((89 * (BYTE2(v47) & 0xF) - 67 - -63 * ((4469269 * (345 * (HIWORD(v47) & 0xF) + 178365)) >> 32)) & 4)) >> (~(89 * (BYTE2(v47) & 0xF) - 67 - -63 * ((4469269 * (345 * (HIWORD(v47) & 0xF) + 178365)) >> 32)) & 4)) + 178365;
  v55 = *(STACK[0x5A0] + (v54 - 961 * ((4469269 * v54) >> 32))) ^ 0xF3;
  v56 = ((v53 | *(STACK[0x5A0] + (345 * (HIWORD(v47) & 0xF) + 178365 - 961 * ((4469269 * (345 * (HIWORD(v47) & 0xF) + 178365)) >> 32))) ^ 0xF3) << 8) ^ ((*(STACK[0x5A0] + (345 * ((v47 >> 20) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v47 >> 20) & 0xF) + 178365)) >> 32))) ^ 0xF3) << 12);
  v57 = v51 & 0xF;
  v58 = (*(STACK[0x5A0] + (345 * (v47 & 0xF) + 178365 - 961 * ((4469269 * (345 * (v47 & 0xF) + 178365)) >> 32))) ^ 0xF3 | ((*(STACK[0x5A0] + (345 * ((v47 >> 8) & 0xF) + 178365 - 961 * ((4469269 * (345 * ((v47 >> 8) & 0xF) + 178365)) >> 32))) ^ 0xF3 ^ v56 ^ (16 * v55)) << 8)) ^ ((*(STACK[0x5A0] + (345 * (v47 >> 4) + 178365 - 961 * ((4469269 * (345 * (v47 >> 4) + 178365)) >> 32))) ^ 0xF3) << ((v27 & 4 ^ 4) + (v27 & 4)));
  v59 = 345 * (v57 & 0xFFFFFF0F | (16 * (v58 & 0xF)));
  v60 = *(STACK[0x5A0] + (v59 + 88665 - 961 * ((4469269 * (v59 + 88665)) >> 32))) ^ LODWORD(STACK[0x57C]);
  v61 = ~*(STACK[0x5A0] + (345 * v60 - 961 * ((4469269 * (345 * v60)) >> 32)));
  v62 = ((v61 >> 4) - ((v61 >> 3) & 6) - 13) ^ *(STACK[0x5A0] + (v59 - 961 * ((4469269 * v59) >> 32)));
  v63 = 345 * (v58 & 0xF0 | (v52 >> 4));
  v64 = *(STACK[0x5A0] + (v63 - 961 * ((4469269 * v63) >> 32)));
  v65 = 345 * (*(STACK[0x5A0] + (v63 + 88665 - 961 * ((4469269 * (v63 + 88665)) >> 32))) ^ (16 * (*(STACK[0x5A0] + (345 * v62 + 88665 - 961 * ((4469269 * (345 * v62 + 88665)) >> 32))) ^ 0xF3)) ^ 0xF3);
  v66 = v65 + 88665 - 961 * ((4469269 * (v65 + 88665)) >> 32);
  v67 = ~*(STACK[0x5A0] + (v65 - 961 * ((4469269 * v65) >> 32)));
  v68 = ((v67 >> 4) - ((v67 >> 3) & 6) - 13) ^ v64;
  v69 = 345 * ((v58 >> 4) & 0xF0 | (v52 >> 8) & 0xF);
  v70 = *(STACK[0x5A0] + (v69 - 961 * ((4469269 * v69) >> 32)));
  v71 = 345 * (*(STACK[0x5A0] + (v69 + 88665 - 961 * ((4469269 * (v69 + 88665)) >> 32))) ^ (16 * (*(STACK[0x5A0] + (345 * v68 + 88665 - 961 * ((4469269 * (345 * v68 + 88665)) >> 32))) ^ 0xF3)) ^ 0xF3);
  v72 = v71 + 88665 - 961 * ((4469269 * (v71 + 88665)) >> 32);
  v73 = ~*(STACK[0x5A0] + (v71 - 961 * ((4469269 * v71) >> 32)));
  v74 = 345 * (((v73 >> 4) - ((v73 >> 3) & 6) - 13) ^ v70) + 88665;
  v75 = 345 * ((v58 >> 8) & 0xF0 | (v50 >> 12));
  v76 = 345 * (*(STACK[0x5A0] + (v75 + 88665 - 961 * ((4469269 * (v75 + 88665)) >> 32))) ^ (16 * (*(STACK[0x5A0] + (v74 - 961 * ((4469269 * v74) >> 32))) ^ 0xF3)) ^ 0xF3);
  v77 = v76 + 88665 - 961 * ((4469269 * (v76 + 88665)) >> 32);
  v78 = ~*(STACK[0x5A0] + (v76 - 961 * ((4469269 * v76) >> 32)));
  v79 = 345 * (((v78 >> 4) - ((v78 >> 3) & 6) - 13) ^ *(STACK[0x5A0] + (v75 - 961 * ((4469269 * v75) >> 32)))) + 88665;
  v80 = 345 * ((v58 >> 12) & 0xF0 | HIWORD(v50) & 0xF);
  v81 = *(STACK[0x5A0] + (v80 - 961 * ((4469269 * v80) >> 32)));
  v82 = 345 * (*(STACK[0x5A0] + (v80 + 88665 - 961 * ((4469269 * (v80 + 88665)) >> 32))) ^ (16 * (*(STACK[0x5A0] + (v79 - 961 * ((4469269 * v79) >> 32))) ^ 0xF3)) ^ 0xF3);
  v83 = v82 + 88665 - 961 * ((4469269 * (v82 + 88665)) >> 32);
  v84 = ~*(STACK[0x5A0] + (v82 - 961 * ((4469269 * v82) >> 32)));
  v85 = 345 * (((v84 >> 4) - ((v84 >> 3) & 6) - 13) ^ v81) + 88665;
  v86 = 345 * ((v56 >> 8) & 0xF0 | (v48 >> 12));
  v87 = 345 * (*(STACK[0x5A0] + (v86 + 88665 - 961 * ((4469269 * (v86 + 88665)) >> 32))) ^ (16 * (*(STACK[0x5A0] + (v85 - 961 * ((4469269 * v85) >> 32))) ^ 0xF3)) ^ 0xF3);
  v88 = v87 + 88665 - 961 * ((4469269 * (v87 + 88665)) >> 32);
  v89 = *(STACK[0x5A0] + (v87 - 961 * ((4469269 * v87) >> 32))) ^ 0xFF;
  v90 = 345 * (((~(v89 >> 3) | 0xF9) + (v89 >> 4) - 12) ^ *(STACK[0x5A0] + (v86 - 961 * ((4469269 * v86) >> 32)))) + 88665;
  v91 = 345 * ((v56 >> 12) & 0xF0 | HIWORD(v48) & 0xF);
  v92 = 345 * (*(STACK[0x5A0] + (v91 + 88665 - 961 * ((4469269 * (v91 + 88665)) >> 32))) ^ (16 * (*(STACK[0x5A0] + (v90 - 961 * ((4469269 * v90) >> 32))) ^ 0xF3)) ^ 0xF3);
  v93 = v92 + 88665 - 961 * ((4469269 * (v92 + 88665)) >> 32);
  v94 = ~*(STACK[0x5A0] + (v92 - 961 * ((4469269 * v92) >> 32)));
  v95 = 345 * (((v94 >> 4) - ((v94 >> 3) & 6) - 13) ^ *(STACK[0x5A0] + (v91 - 961 * ((4469269 * v91) >> 32)))) + 88665;
  v96 = 345 * ((v53 >> 8) & 0xF0 | (v49 >> 20) & 0xF) + 88665;
  LOBYTE(v66) = *(STACK[0x5A0] + v66) ^ 0xF3;
  LOBYTE(v60) = *(STACK[0x5A0] + (345 * v60 + 88665 - 961 * ((4469269 * (345 * v60 + 88665)) >> 32))) ^ 0xF3;
  v97 = 345 * (*(STACK[0x5A0] + (v96 - 961 * ((4469269 * v96) >> 32))) ^ (16 * (*(STACK[0x5A0] + (v95 - 961 * ((4469269 * v95) >> 32))) ^ 0xF3)) ^ 0xF3) + 88665;
  v98 = v97 - 961 * ((4469269 * v97) >> 32);
  v99 = 345 * (v57 & 0xFFFFFF0F | (16 * (v60 & 0xF))) + 242190;
  v100 = v99 - 961 * ((4469269 * v99) >> 32);
  v101 = 345 * ((v60 ^ (16 * v66)) & 0xF0 | (v52 >> 4)) + 242190;
  v102 = v101 - 961 * ((4469269 * v101) >> 32);
  LOBYTE(v101) = *(STACK[0x5A0] + v72) ^ 0xF3;
  LOBYTE(v96) = *(STACK[0x5A0] + v77) ^ 0xF3;
  v103 = 345 * ((v66 ^ (16 * v101)) & 0xF0 | (v52 >> 8) & 0xF) + 242190;
  v104 = 345 * ((v101 ^ (16 * v96)) & 0xF0 | (v50 >> 12)) + 242190;
  LOBYTE(v52) = *(STACK[0x5A0] + v83) ^ 0xF3;
  v105 = (v96 ^ (16 * v52)) & 0xF0 | HIWORD(v50) & 0xF;
  LOBYTE(v66) = *(STACK[0x5A0] + v88) ^ 0xF3;
  v106 = ((*(STACK[0x5A0] + (v104 - 961 * ((4469269 * v104) >> 32))) ^ 0xF3) << 12) ^ ((*(STACK[0x5A0] + (v103 - 961 * ((4469269 * v103) >> 32))) ^ 0xF3) << 8);
  v107 = 345 * ((v52 ^ (16 * v66)) & 0xF0 | (v48 >> 12)) + 242190;
  v108 = v107 - 961 * ((4469269 * v107) >> 32);
  v109 = v34 ^ 0xACF76D58;
  LOBYTE(v52) = *(STACK[0x5A0] + v93) ^ 0xF3;
  v110 = (v66 ^ (16 * v52)) & 0xF0 | HIWORD(v48) & 0xF;
  LOWORD(v103) = (v34 ^ 0x6D58) + 11899;
  v111 = *(STACK[0x5A0] + v100);
  v112 = v111 ^ (16 * (*(STACK[0x5A0] + v102) ^ 0xF3)) ^ 0xF3;
  LOBYTE(v102) = v52 ^ (16 * (*(STACK[0x5A0] + v98) ^ 3));
  v113 = v106 ^ v112 ^ ((*(STACK[0x5A0] + (345 * v105 + 242190 - 961 * ((4469269 * (345 * v105 + 242190)) >> 32))) ^ 0xF3) << 16);
  v114 = ((*(STACK[0x5A0] + (345 * v110 + 242190 - 961 * ((4469269 * (345 * v110 + 242190)) >> 32))) ^ 0xFFFFFFF3) << 24) ^ ((*(STACK[0x5A0] + v108) ^ 0xF3) << 20) ^ v113;
  v115 = 345 * ((v114 ^ ((*(STACK[0x5A0] + (345 * (v102 & 0xF0 | (v49 >> 20) & 0xF) + 242190 - 961 * ((4469269 * (345 * (v102 & 0xF0 | (v49 >> 20) & 0xF) + 242190)) >> 32))) ^ 3) << 28)) >> 28) + 209760;
  *(v41 + 4 * ((v15 + 13520) % 0x116u)) = (LODWORD(STACK[0x580]) - v36) ^ 0xAA271283 ^ v44;
  v116 = 345 * (((v103 & 0x260) + ((388 - v109) & 0x260)) & 0xFFFFFFF0 | (v106 >> 12));
  v117 = 345 * (((v106 ^ v112) >> 8) & 0xF) + 209760;
  v118 = (((((*(v46 + (345 * (HIBYTE(v114) & 0xF) + 209760 - 961 * ((4469269 * (345 * (HIBYTE(v114) & 0xF) + 209760)) >> 32))) ^ 0xF3) << 16) ^ ((*(v46 + (v115 - 961 * ((4469269 * v115) >> 32))) ^ 0xF3) << 20) | ((*(v46 + (345 * (HIWORD(v113) & 0xF) + 209760 - 961 * ((4469269 * (345 * (HIWORD(v113) & 0xF) + 209760)) >> 32))) ^ 0xF3) << 8)) ^ ((*(v46 + (345 * ((v114 >> 20) & 0xF) + 209760 - 961 * ((4469269 * (345 * ((v114 >> 20) & 0xF) + 209760)) >> 32))) ^ 0xF3) << 12) | *(v46 + (v117 - 961 * ((4469269 * v117) >> 32))) ^ 0xF3) << 8) ^ ((*(v46 + (v116 - 961 * ((4469269 * v116) >> 32))) ^ 0xF3) << 12) | *(v46 + (345 * (v111 & 0xF ^ 3) + 209760 - 961 * ((4469269 * (345 * (v111 & 0xF ^ 3u) + 209760)) >> 32))) ^ 0xF3;
  *(v41 + 4 * (v15 % 0x116u)) = (v39 - v43) ^ 0x832EAC06 ^ (16 * (*(v46 + (345 * (v112 >> 4) + 209760 - 961 * ((4469269 * (345 * (v112 >> 4) + 209760)) >> 32))) ^ 0xF3)) ^ v118;
  return (*(STACK[0x598] + 8 * ((5063 * (LODWORD(STACK[0x5B0]) == 63)) ^ LODWORD(STACK[0x590]))))();
}

uint64_t sub_10009C7F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v4 - 5 + v3 - 5561) & (((v4 + 2090588338) & 0x836435A5) - 9233);
  LODWORD(STACK[0x654]) = 546879948 - v7;
  return (*(v6 + 8 * ((2153 * (16 - v7 + v3 < 0xFFFFFFF6)) ^ v4)))(a1, a2, a3, (v5 + 5));
}

uint64_t sub_10009C898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v13 = *v8 + v7 - 0x5EA5347A8335DC6CLL;
  v14 = __ROR8__(v13 & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = ((0x6AF7234D0CC131D4 - v14) & a1) + v14 + v10 - ((v14 + v10) & a1);
  v16 = __ROR8__(v15 ^ 0xAB257711D84E66DLL, 8);
  v15 ^= 0xA2F4B2E684729731;
  v17 = (((v16 + v15) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v16 + v15) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xF5A2F1B9B5D0B209;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x5963B6C555D97F1FLL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ a2;
  v24 = __ROR8__(v23, 8);
  v25 = v23 ^ __ROR8__(v22, 61);
  v26 = (v24 + v25) ^ 0x64C31C027084DE6CLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8) + v27;
  v29 = __ROR8__((v13 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v30 = (0x6AF7234D0CC131D4 - v29) & 0xC2A16714FA488FC8 | (v29 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v31 = __ROR8__(v30 ^ 0x8B48252F955E681ALL, 8);
  v30 ^= 0x230EC0B80CA81946uLL;
  v32 = (((2 * v28) | 0x36A4398A31861B6ALL) - v28 - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6;
  v33 = (((2 * (v31 + v30)) & 0xAC7FF88AB7D467A0) - (v31 + v30) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v34 = v33 ^ __ROR8__(v30, 61);
  v35 = __ROR8__(v33, 8);
  LOBYTE(v27) = (((__ROR8__(v32, 8) + (v32 ^ __ROR8__(v27, 61))) ^ v6) >> (8 * (v13 & 7u))) ^ HIBYTE(v4);
  v36 = (v35 + v34 - ((2 * (v35 + v34)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = *(STACK[0x3E8] + 8 * v5);
  *v13 = v27 ^ 0xDD;
  v39 = (__ROR8__(v36, 8) + v37) ^ 0x5963B6C555D97F1FLL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ a2;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((2 * (v43 + v42)) | 0x63B77BB044F1F226) - (v43 + v42) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x1A2AEBE44253AF03;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  *(v13 + 1) = (((v48 + v47 - ((2 * (v48 + v47)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v13 + 1) & 7))) ^ BYTE2(v4) ^ 0x60;
  v49 = __ROR8__((v13 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v50 = ((2 * v49 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v49 + 0x6BC5C09CD998FDFLL;
  v51 = __ROR8__(v50 ^ 0xD22C7A87AFCEB9D8, 8);
  v50 ^= 0x7A6A9F103638C884uLL;
  v52 = (v51 + v50) ^ 0xE49D77DF873DBF7ELL;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0xF5A2F1B9B5D0B209;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0x5963B6C555D97F1FLL;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  v59 = (((2 * (v58 + v57)) | 0x316A40512FDE1242) - (v58 + v57) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0x64C31C027084DE6CLL;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0x1A2AEBE44253AF03;
  *(v13 + 2) = (((__ROR8__(v63, 8) + (v63 ^ __ROR8__(v62, 61))) ^ v6) >> (8 * ((v13 + 2) & 7))) ^ BYTE1(v4) ^ 0xF8;
  v64 = __ROR8__((v13 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v65 = (0xAF7234D0CC131D4 - v64) & 0x126AA61F6F56C0D8 | (v64 + v10) & 0xE99559E090A93F27;
  v66 = v65 ^ 0x5F83E4240040270ALL;
  v67 = v65 ^ v12;
  v68 = (__ROR8__(v66, 8) + v67) ^ 0xE49D77DF873DBF7ELL;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0xF5A2F1B9B5D0B209;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = ((a4 | (2 * (v72 + v71))) - (v72 + v71) + a3) ^ v9;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ a2;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ 0x64C31C027084DE6CLL;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0x1A2AEBE44253AF03;
  *(v13 + 3) = v4 ^ v11 ^ (((__ROR8__(v79, 8) + (v79 ^ __ROR8__(v78, 61))) ^ v6) >> (8 * ((v13 + 3) & 7)));
  return v38();
}

uint64_t sub_10009CEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a14 = (v16 - 1172) ^ (33731311 * ((2 * (&a13 & 0x664B7170) - &a13 + 431263370) ^ 0x204244A9));
  a15 = a9;
  a16 = &a11;
  (*(v18 + 8 * (v16 + 5177)))(&a13);
  LODWORD(a16) = v16 - 2008441969 * ((&a13 & 0x9C3F250B | ~(&a13 | 0x9C3F250B)) ^ 0x2B598EFA) + 1261;
  a15 = a9;
  v19 = (*(v18 + 8 * (v16 ^ 0x34AB)))(&a13);
  return (*(v18 + 8 * ((13693 * (a13 == v17 + (v16 ^ 0x1674) - 1860)) ^ v16)))(v19);
}

uint64_t sub_10009D040@<X0>(uint64_t a1@<X0>, int a2@<W5>, int a3@<W8>)
{
  v7 = (v5 ^ (a3 + 2996) ^ 0xFFFFFFFFFFFFE30BLL) + v4;
  *(a1 + v7) = *(v3 + v7);
  return (*(v6 + 8 * ((11781 * (v7 == 0)) ^ (a2 + v5 + 2963))))();
}

uint64_t sub_10009D158(int a1, int a2, int a3, int a4)
{
  v13 = (v4 + 1575923865) & 0xA2114FFA;
  v14 = v8 + v9;
  v15 = v7 + a2;
  v16 = v5 - v8;
  v17 = v7 + a3;
  v18 = a4 - v7 + a3 - v15;
  v19 = v18 ^ v17;
  v20 = a4 - v7 + 1447631107;
  v21 = a1 - v14 + v16;
  v22 = v21 ^ (v8 + a1);
  v23 = ((v13 ^ 0xFB7) + v6) ^ 0xE3;
  v24 = v7 ^ 0xEEF86D44;
  LODWORD(STACK[0x3E8]) = 0;
  v25 = 110 * (v13 ^ 0xFBF);
  LODWORD(STACK[0x40C]) = v25 - v20 + 896451101;
  LODWORD(STACK[0x414]) = -242190562 - v19;
  LODWORD(STACK[0x418]) = -868230543 - (v14 ^ 0xE3F7DFEF);
  LODWORD(STACK[0x420]) = v18 + 231787510;
  LODWORD(STACK[0x41C]) = -391305861 - v21;
  v26 = (v16 + 1447631107) ^ v14 ^ 0xE3F7DFEF;
  LODWORD(STACK[0x3F8]) = v22 + 1503534820;
  LODWORD(STACK[0x3FC]) = (v15 ^ 0xE3F7DFEF) - 837372023;
  v19 ^= 0xEC9FF1B3;
  v27 = v20 ^ v15 ^ 0xE3F7DFEF;
  LODWORD(STACK[0x374]) = v18;
  v22 ^= 0xEC9FF1B3;
  v28 = v22 - 772712788 - v21;
  LODWORD(STACK[0x3E4]) = v16 - 1711412314;
  v29 = v26 + v28;
  v30 = v27 - 772712788 + v19 - v18;
  v31 = v26 + v22;
  LODWORD(STACK[0x3F4]) = v31 - 2071803981;
  LODWORD(STACK[0x410]) = 1230713598 - v30;
  LODWORD(STACK[0x3F0]) = v19 - v18 - 1218240864;
  v32 = v28 + v16 - 260074285;
  LODWORD(STACK[0x404]) = -1923445558 - v28;
  v28 -= 962995022;
  LODWORD(STACK[0x370]) = v16 - 260074285;
  LODWORD(STACK[0x400]) = -1104479762 - v16;
  LODWORD(STACK[0x3EC]) = v29 + 1779084284;
  v33 = v19 - v18 - 1735707810;
  v34 = v19 + v27;
  LODWORD(STACK[0x424]) = v20 + 1565808638;
  v35 = v32 - 1901414044;
  v36 = (v32 + LODWORD(STACK[0x36C])) ^ v28;
  LODWORD(STACK[0x408]) = 1443065823 - v34;
  v37 = v20 - 938419022 + v33;
  v38 = v20 + 484643938 + v30;
  v39 = ((2 * (v29 + v16 + 1447631107)) & 0x39C628C4) + ((v29 + v16 + 1447631107) ^ 0x1CE31462);
  v40 = v38 ^ (v33 + v34);
  v41 = v39 ^ (v31 + v28);
  LODWORD(STACK[0x3A8]) = 1;
  v42 = v24 ^ ((v37 ^ v33) - 285708805 - ((2 * (v37 ^ v33)) & 0xDDF0DBF6));
  LOBYTE(STACK[0x77F]) = v23 ^ v36 ^ 0xE8;
  v43 = v23 ^ v36 ^ (v35 + 48);
  LOBYTE(STACK[0x7AD]) = v42 - ((v25 ^ 0x40) & (2 * v42)) + 25;
  v44 = v42 ^ v37;
  LOBYTE(STACK[0x84B]) = v44 - ((2 * v44) & 0x33) + 25;
  LOBYTE(STACK[0x81D]) = v43 ^ 0xE8;
  v45 = v44 ^ v40;
  v46 = v35;
  v47 = STACK[0x5A0];
  *(v47 + (((((-1 - v36) & 0x1F7C181B) + (v36 & 0x1F7C181B)) ^ (((-1 - v36) & 0x286C1984) + (v36 & 0x286C1984))) & 0x408C3B9B)) = v43 ^ v41 ^ 0xE8;
  LOBYTE(STACK[0x8E9]) = v45 - ((2 * v45) & 0x33) + 25;
  v48 = v39 - v46 + 1770172907;
  v49 = v45 ^ v38;
  v50 = v41 + 1703976147 - v48;
  LOBYTE(STACK[0x987]) = v49 - ((2 * v49) & 0x33) + 25;
  LOBYTE(STACK[0x959]) = v43 ^ v41 ^ v39 ^ 0xE8;
  v51 = v36 + 749967392 - v41 - v48 + 1841023757;
  v52 = v43 ^ v41 ^ v39 ^ v51;
  v53 = v39 - v46 - 174258665;
  v54 = v50 + v46;
  v55 = v50 + v46 + 21;
  v56 = v38 - (v37 + 817088997);
  v57 = v40 + 1703976147 - v56;
  v58 = (v37 ^ v33) - v40 - v56 - 1703976147;
  v59 = v57 + v37 + 817088997;
  v56 -= 1944431572;
  v60 = v49 ^ v58;
  LOBYTE(STACK[0xA25]) = v60 - ((2 * v60) & 0x33) + 25;
  LOBYTE(STACK[0x9F7]) = v52 ^ 0xE8;
  v61 = v60 ^ v59;
  LOBYTE(STACK[0xAC3]) = v61 + (~(2 * v61) | 0xCD) + 26;
  v62 = v52 ^ v55;
  v63 = v61 ^ v57;
  LOBYTE(STACK[0x798]) = v63 - ((2 * v63) & 0x33) + 25;
  v64 = v62 ^ v50;
  v65 = v54 - 1390950988;
  v66 = v41 - 240455425;
  v67 = v63 ^ v56;
  LOBYTE(STACK[0xA95]) = v62 ^ 0xE8;
  LOBYTE(STACK[0x836]) = (v63 ^ v56) - ((2 * (v63 ^ v56)) & 0x33) + 25;
  v68 = v64 ^ v53;
  v59 += 379221919;
  v69 = v66 ^ 0x70B46C2F ^ v51;
  v70 = v66 ^ 0x19A65007;
  v71 = v65 - (v66 ^ 0x19A65007);
  LOBYTE(STACK[0x76A]) = v64 ^ 0xE8;
  v72 = (v65 ^ v53) + v65;
  LOBYTE(STACK[0x808]) = v64 ^ v53 ^ 0xE8;
  v73 = (v40 - 240455425) ^ 0x19A65007;
  v74 = (v59 ^ v56) + v59;
  v75 = v68 ^ v69;
  v76 = (v40 - 240455425) ^ 0x70B46C2F ^ v58;
  v77 = v59 - v73;
  LOBYTE(v58) = v75 ^ v71;
  LOBYTE(STACK[0x8D4]) = (v67 ^ v76) - ((2 * (v67 ^ v76)) & 0x33) + 25;
  LOBYTE(STACK[0x8A6]) = v75 ^ 0xE8;
  v78 = v75 ^ v71 ^ v70;
  v79 = v67 ^ v76 ^ v77;
  LOBYTE(STACK[0x972]) = v79 - ((2 * v79) & 0x33) + 25;
  LOBYTE(v55) = v58 ^ 0xE8;
  v80 = v79 ^ v73;
  LOBYTE(STACK[0xA10]) = (v79 ^ v73) - ((2 * (v79 ^ v73)) & 0x33) + 25;
  v81 = v71 - 1595501018;
  v82 = (v71 - 1595501018) ^ v69;
  LOBYTE(v69) = v78 ^ v72;
  LOBYTE(STACK[0x944]) = v55;
  v83 = v80 ^ v74;
  LOBYTE(v80) = (v80 ^ v74) - ((2 * (v80 ^ v74)) & 0x33) + 25;
  v84 = v74 - v77;
  v77 -= 1595501018;
  LOBYTE(STACK[0xAAE]) = v80;
  v85 = v78 ^ v72 ^ (v82 + 21);
  v86 = v76 ^ v77;
  LOBYTE(STACK[0x9E2]) = v78 ^ 0xE8;
  v87 = v86 + v84;
  v88 = (v77 ^ v73) - 1131177730;
  v89 = v86 + v77;
  LOWORD(v77) = v86 + 789;
  v90 = v71 + 991760886 + v82;
  v91 = v83 ^ (v86 - 1018297579);
  v92 = v72 - v71 + v82;
  LOBYTE(STACK[0x783]) = v91 + (~(2 * v91) | 0xCD) + 26;
  v93 = v91 ^ v89;
  LOBYTE(STACK[0xA80]) = v69 ^ 0xE8;
  LOBYTE(STACK[0x821]) = v93 - ((2 * v93) & 0x33) + 25;
  v94 = v85 ^ (((2 * v90) & 0x60) + (v90 ^ 0x30));
  v95 = v93 ^ v88;
  LOWORD(v69) = 234 - v86;
  v86 += 1909929223;
  v96 = (v81 ^ v70) - 1131177730;
  LOBYTE(STACK[0x8BF]) = v95 - ((2 * v95) & 0x33) + 25;
  v82 += 1909929223;
  LOBYTE(STACK[0x755]) = v85 ^ 0xE8;
  v97 = v94 ^ v96 ^ v92;
  v98 = v87 + v88;
  v99 = v92 + v96;
  LOBYTE(STACK[0x7F3]) = v94 ^ 0xE8;
  LOBYTE(STACK[0x891]) = v94 ^ v96 ^ 0xE8;
  v100 = v82 ^ v96 ^ (v90 + 1707705392);
  v82 ^= 0xDEAD222u;
  LOBYTE(STACK[0x92F]) = v97 ^ 0xE8;
  v101 = v86 ^ v88 ^ v89;
  v102 = v95 ^ v87;
  *(v47 + ((v77 ^ v69) & 0x23D)) = v102 - ((2 * v102) & 0x33) + 25;
  v103 = v90 - v100 + 2077298357;
  LOBYTE(v77) = v97 ^ v82;
  v86 ^= 0xDEAD222u;
  v104 = v102 ^ v86;
  v105 = v89 - v101 + 369592965;
  LOBYTE(STACK[0x9FB]) = v104 - ((2 * v104) & 0x33) + 25;
  v106 = v104 ^ v105;
  v107 = v97 ^ v82 ^ v103;
  LOBYTE(STACK[0x9CD]) = v77 ^ 0xE8;
  LOBYTE(STACK[0xA99]) = v106 - ((2 * v106) & 0x33) + 25;
  v108 = v103 ^ v99;
  v109 = v107 ^ v100;
  LOBYTE(STACK[0xA6B]) = v107 ^ 0xE8;
  v110 = v100 - v108;
  v111 = v103 + v82;
  v112 = v106 ^ v101;
  v113 = v109 ^ v108;
  LOBYTE(STACK[0x76E]) = v112 - ((2 * v112) & 0x33) + 25;
  v114 = v108 + v82;
  v115 = v101 - (v105 ^ v98);
  v116 = v103 - v114;
  v117 = v112 ^ v105 ^ v98;
  v118 = (v105 ^ v98) + v86;
  LOBYTE(STACK[0x740]) = v109 ^ 0xE8;
  v119 = v114 ^ v111;
  LOBYTE(STACK[0x80C]) = v117 - ((2 * v117) & 0x33) + 25;
  v120 = v105 + v86;
  LOBYTE(STACK[0x7DE]) = v113 ^ 0xE8;
  v121 = v119 ^ v116;
  v122 = v110 + v111;
  v123 = v110 - v121;
  v124 = v113 ^ (v110 + v111);
  v125 = v118 ^ v120;
  LOBYTE(STACK[0x87C]) = v124 ^ 0xE8;
  v126 = v124 ^ v121;
  v127 = (v115 ^ v120) + 2 * (v115 & v120);
  v128 = v117 ^ v127;
  LOBYTE(STACK[0x91A]) = v126 ^ 0xE8;
  LOBYTE(STACK[0x8AA]) = v128 - ((2 * v128) & 0x33) + 25;
  v122 -= 1453154451;
  v129 = (v118 + v105 - 2 * v118) ^ v125;
  v130 = v127 - 1453154451;
  v131 = v128 ^ v129;
  LOBYTE(STACK[0x9B8]) = v126 ^ v123 ^ 0xE8;
  v132 = v115 - v129;
  v133 = v126 ^ v123 ^ v119;
  LOBYTE(STACK[0x948]) = v131 + (~(2 * v131) | 0xCD) + 26;
  v121 ^= 0xBF18D0F4;
  v119 -= 341023681;
  LOBYTE(STACK[0x9E6]) = (v131 ^ v132) - ((2 * (v131 ^ v132)) & 0x33) + 25;
  v134 = v131 ^ v132 ^ v125;
  v135 = v119 ^ v122;
  LOBYTE(STACK[0xA84]) = v134 - ((2 * v134) & 0x33) + 25;
  v136 = v121 + v119;
  LOBYTE(STACK[0xA56]) = v133 ^ 0xE8;
  v137 = v122 ^ 0xF521640D ^ v123;
  v138 = v133 ^ v135;
  v139 = v125 - 341023681;
  v140 = v137 + v121;
  v141 = v138 ^ (v137 + v121);
  v142 = v130 ^ (v125 - 341023681);
  v143 = v134 ^ v142;
  LOBYTE(STACK[0x72B]) = v138 ^ 0xE8;
  v129 ^= 0xBF18D0F4;
  v144 = v129 + v139;
  LOBYTE(v90) = v141 ^ v137;
  v145 = v130 ^ 0xF521640D ^ v132;
  v146 = v145 + v129;
  LOBYTE(STACK[0x759]) = v143 - ((2 * v143) & 0x33) + 25;
  v147 = v141 ^ v137 ^ v136;
  v148 = v143 ^ (v145 + v129);
  LOBYTE(STACK[0x905]) = v141 ^ v137 ^ v136 ^ 0xE8;
  LOBYTE(STACK[0x7F7]) = v148 - ((2 * v148) & 0x33) + 25;
  v149 = v148 ^ v145;
  LOBYTE(STACK[0x895]) = (v148 ^ v145) - ((2 * (v148 ^ v145)) & 0x33) + 25;
  v150 = v140 ^ v135;
  LOBYTE(STACK[0x7C9]) = v141 ^ 0xE8;
  v151 = v135 - 932540651;
  v152 = v145 - v144;
  v153 = v149 ^ v144;
  v154 = v139 - v145;
  LOBYTE(STACK[0x933]) = v153 + (~(2 * v153) | 0xCD) + 26;
  v155 = v146 ^ v142;
  v156 = v150 ^ (v137 - v136);
  v157 = v156 + v151;
  LOBYTE(STACK[0x867]) = (v90 - ((2 * v90) & 0x28) - 108) ^ 0x7C;
  v158 = (v146 ^ v142) + v152;
  v142 -= 932540651;
  v159 = v154 + v142;
  v160 = v136 - v140 + v151;
  v161 = v158 - 2 * (v155 & v152);
  v162 = v161 + v142;
  LOBYTE(v152) = v147 ^ v157;
  v163 = v153 ^ (v161 + v142);
  LOBYTE(STACK[0x9D1]) = v163 ^ 0x19;
  v164 = v147 ^ v157 ^ (v150 + 250);
  v165 = v163 ^ (v155 - 15361286);
  LOBYTE(STACK[0xA6F]) = v165 ^ 0x19;
  LOBYTE(v142) = v164 ^ v156;
  LOBYTE(STACK[0xA41]) = (v164 - ((2 * v164) & 0x3C) - 98) ^ 0x76;
  v166 = v165 ^ v161;
  LOBYTE(STACK[0x744]) = v166 ^ 0x19;
  LOBYTE(STACK[0x9A3]) = (v152 - ((2 * v152) & 0xA4) - 46) ^ 0x3A;
  v167 = v164 ^ v156 ^ v160;
  v168 = v156 ^ 0xCB5059B6 ^ v157;
  LOBYTE(STACK[0x7E2]) = v166 ^ v159 ^ 0x19;
  LOBYTE(STACK[0x7B4]) = (v167 - ((2 * v167) & 0x8C) - 58) ^ 0x2E;
  v169 = v161 ^ 0xCB5059B6 ^ v162;
  LOBYTE(STACK[0xADF]) = (~(2 * v142) + v142) ^ 0x17;
  v170 = v166 ^ v159 ^ v169;
  v171 = v156 - 569577978;
  LOBYTE(STACK[0x880]) = v170 ^ 0x19;
  v172 = v168 ^ (v160 - v156);
  LOBYTE(STACK[0x852]) = ((v167 ^ v168) - ((2 * (v167 ^ v168)) & 0xEF) - 9) ^ 0x1F;
  v173 = v155 + 497571525 + v161;
  v174 = v169 ^ (v159 - v161);
  v175 = v170 ^ v173;
  LOBYTE(STACK[0x91E]) = v175 ^ 0x19;
  v176 = v150 + 497571525 + v156;
  v177 = v167 ^ v168 ^ v176;
  LOBYTE(v166) = v177 ^ v171;
  v178 = v175 ^ (v161 - 569577978);
  v179 = v168 ^ v176;
  LOBYTE(STACK[0x9BC]) = v178 ^ 0x19;
  v180 = v178 ^ v174;
  v181 = v177 ^ v171 ^ v172;
  LOBYTE(STACK[0x8F0]) = (v177 - ((2 * v177) & 0x4C) + 38) ^ 0xCE;
  v182 = v172 + 669101055;
  LOBYTE(STACK[0xA2C]) = ((v166 ^ v172) - ((2 * (v166 ^ v172)) & 0xFB) + 125) ^ 0x95;
  v183 = (v172 + 669101055) ^ v171;
  LOBYTE(STACK[0xA5A]) = v180 ^ 0x19;
  v184 = (v161 - 569577978) ^ v173;
  v185 = v169 ^ v173;
  v186 = v182 & v171;
  v187 = (v176 ^ v171) - v179;
  v188 = v161 + 99523077 + v174;
  v189 = v184 - v185;
  LOBYTE(STACK[0x98E]) = (v166 - ((2 * v166) & 0x6E) + 55) ^ 0xDF;
  v190 = v183 + 2 * v186;
  v191 = v190 + v179;
  v192 = v188 + v185;
  v193 = v182 - v190;
  v194 = v181 ^ (v190 + v179);
  v195 = v180 ^ v192;
  v188 += 1478074036;
  LOBYTE(STACK[0x79F]) = ((v194 ^ v187) - ((2 * (v194 ^ v187)) & 0xDD) - 18) ^ 6;
  v190 += 1478074036;
  LOBYTE(STACK[0x72F]) = v195 ^ 0x19;
  v196 = v194 ^ v187 ^ v190;
  v197 = v196 ^ v193;
  v198 = v195 ^ v189;
  LOBYTE(STACK[0xACA]) = (v194 - ((2 * v194) & 0x60) - 80) ^ 0x58;
  LOBYTE(STACK[0x7CD]) = v198 ^ 0x19;
  v193 += 491597188;
  v199 = v198 ^ v188;
  v200 = v187 - v190;
  LOBYTE(STACK[0x86B]) = v199 ^ 0x19;
  v201 = v199 ^ (569577978 - v161);
  LOBYTE(STACK[0x8DB]) = (v197 - (v11 & (2 * v197)) + 92) ^ 0xB4;
  LOBYTE(STACK[0x83D]) = (v196 - ((2 * v196) & 0xBF) - 33) ^ 0x37;
  LOBYTE(STACK[0x909]) = v201 ^ 0x19;
  v202 = v191 - v193;
  v203 = v202 + v190;
  v204 = v203 ^ v202;
  v203 -= 1466572217;
  v205 = 1061175166 - v161;
  v206 = v189 - v188;
  v207 = v200 ^ v193;
  v208 = v204 ^ v200;
  v209 = v192 - v205;
  v210 = v209 + v188;
  v211 = v210 ^ v209;
  v212 = v197 ^ v200;
  v210 -= 1466572217;
  LOBYTE(STACK[0x979]) = ((v197 ^ v204) - ((2 * (v197 ^ v204)) & 0xE0) + 112) ^ 0x98;
  LOBYTE(STACK[0x9A7]) = v201 ^ 0x19 ^ v211;
  v213 = v211 ^ v206;
  v214 = v201 ^ v206;
  v215 = v212 ^ v203 ^ v207;
  LOBYTE(STACK[0xA45]) = v214 ^ 0x19;
  v216 = v214 ^ v210;
  v217 = v207 - v204;
  v218 = v208 ^ v217;
  v219 = __ROR4__(__ROR4__(v206 ^ v205, 20) ^ 0x27FD9069, 12);
  LOBYTE(STACK[0xAE3]) = v216 ^ 0x19;
  v220 = v216 ^ v219 ^ 0x6927FD9;
  v221 = (v219 ^ 0x6927FD9) - v211;
  LOBYTE(STACK[0x7B8]) = v220 ^ 0x19;
  LOBYTE(STACK[0xA17]) = (v212 - ((2 * v212) & 0xE0) - 16) ^ 0x18;
  LOBYTE(STACK[0xAB5]) = ((v212 ^ v203) - ((2 * (v212 ^ v203)) & 0x30) + 24) ^ 0xF0;
  v222 = v203 - v218;
  v223 = v213 ^ v221;
  v224 = v217 - v222;
  LOBYTE(STACK[0x78A]) = (v215 - ((2 * v215) & 0x48) - 92) ^ 0x4C;
  v225 = v224 + v218;
  v226 = v222 ^ v218;
  v227 = v215 ^ (v207 + 212) ^ (v224 + v218);
  v228 = v210 - (v213 ^ v221);
  v229 = v220 ^ ((v219 ^ 0x6927FD9) + 1409564116);
  LOBYTE(STACK[0x856]) = v220 ^ ((v219 ^ 0xD9) - 44) ^ 0x19;
  v230 = v221 - v228;
  v231 = v228 ^ v223;
  LOBYTE(STACK[0x828]) = ((v215 ^ (v207 - 44)) - ((2 * (v215 ^ (v207 - 44))) & 0xD4) - 22) ^ 2;
  v232 = v207 - 588461541;
  v233 = v230 + v223;
  v234 = v227 ^ v226 ^ v224;
  v235 = v229 ^ v233;
  v236 = (v219 ^ 0x6927FD9) - 588461541;
  LOBYTE(STACK[0x8F4]) = v235 ^ 0x19;
  v237 = v235 ^ v231;
  LOBYTE(STACK[0x992]) = v237 ^ 0x19;
  LOBYTE(STACK[0x8C6]) = (v227 - ((2 * v227) & 0xE8) - 12) ^ 0x1C;
  v238 = v237 ^ v230;
  v239 = v224 - v226;
  v240 = v230 - v231;
  LOBYTE(STACK[0xA30]) = v238 ^ 0x19;
  LOBYTE(STACK[0x964]) = ((v227 ^ v226) - ((2 * (v227 ^ v226)) & 0xCA) + 101) ^ 0x8D;
  v241 = (v225 - v226) ^ (v224 - v226);
  v232 ^= 0x60CA532Fu;
  v242 = v239 - 2100902933;
  LOBYTE(STACK[0xA02]) = (v234 - ((2 * v234) & 0xC4) - 30) ^ 0xA;
  v243 = (v233 - v231) ^ (v230 - v231);
  v244 = v236 ^ 0x60CA532F;
  v245 = v238 ^ v236 ^ 0x60CA532F;
  v246 = v240 - 2100902933;
  v247 = v234 ^ v232;
  v248 = (v236 ^ 0x60CA532F) & 0xF080561;
  v249 = (v236 ^ 0x60CA532F) - 972004047 + v231;
  v250 = v232 - 972004047 + v226;
  LOBYTE(STACK[0xACE]) = v245 ^ 0x19;
  LOBYTE(v239) = v247 + (~(2 * v247) | 0xB3);
  v251 = v247 ^ v241;
  LOBYTE(STACK[0xAA0]) = (v239 - 89) ^ 0x4E;
  v252 = v245 ^ v243;
  LOBYTE(STACK[0x775]) = (v251 - ((2 * v251) & 0x5A) + 45) ^ 0xC5;
  v253 = v251 ^ v250;
  LOBYTE(STACK[0x7A3]) = v252 ^ 0x19;
  v254 = v236 & 0xF080561 ^ 0xF000440;
  v255 = v250 ^ 0x44353AE7;
  LOBYTE(STACK[0x813]) = (v253 - ((2 * v253) & 0xDF) - 17) ^ 7;
  v256 = v232 - (v250 ^ 0x44353AE7);
  v257 = v252 ^ v249;
  v258 = v253 ^ v242;
  *(v47 + (((v250 & 0x10C799B1 ^ 0x10C799B1) + (v250 & 0x10C799B1)) & (v248 + v254) | 0x101)) = v257 ^ 0x19;
  v259 = v241 ^ v242;
  v260 = v257 ^ v246;
  LOBYTE(STACK[0x8DF]) = v257 ^ v246 ^ 0x19;
  v261 = v242 - v256;
  v262 = v255 - v256;
  LOBYTE(STACK[0x8B1]) = (v258 - ((2 * v258) & 0xAA) + 85) ^ 0xBD;
  v249 ^= 0x44353AE7u;
  v263 = v244 - v249;
  v264 = v261 ^ v256;
  v265 = v243 ^ v246;
  v266 = v246 - v263;
  v267 = v258 ^ v261 ^ v256;
  v268 = v266 ^ v263;
  v269 = v260 ^ v266 ^ v263;
  LOBYTE(STACK[0x94F]) = (v267 - ((2 * v267) & 0x8A) + 69) ^ 0xAD;
  v270 = v267 ^ (v259 + v256);
  v271 = v270 ^ (v255 - v256);
  LOBYTE(STACK[0xA8B]) = ((v270 ^ v262) - ((2 * (v270 ^ v262)) & 0xEA) + 117) ^ 0x9D;
  LOBYTE(STACK[0x97D]) = v269 ^ 0x19;
  v272 = v269 ^ (v265 + v263);
  LOBYTE(STACK[0xA1B]) = v272 ^ 0x19;
  v273 = v259 + v255;
  v274 = LODWORD(STACK[0x384]) != v10;
  v275 = v249 - v263;
  v276 = v262 + v261;
  v277 = v266 + v275;
  LOBYTE(v261) = (v270 + (~(2 * v270) | 0xDF) + 17) ^ 0xF8;
  v278 = v271 ^ v276;
  LOBYTE(STACK[0x9ED]) = v261;
  v279 = v276 + 395291306;
  LOBYTE(STACK[0xAB9]) = v272 ^ v275 ^ 0x19;
  v280 = v265 + v249;
  v281 = v272 ^ v275 ^ v277;
  LOBYTE(STACK[0x78E]) = v281 ^ 0x19;
  v282 = (v276 ^ v264) - v273;
  LOBYTE(STACK[0x760]) = (v278 + (~(2 * v278) | 0x69) + 76) ^ 0xA3;
  v283 = (v277 ^ v268) - v280;
  v284 = v278 ^ v282;
  v285 = (v275 - 1124528355) ^ v280;
  v262 -= 1124528355;
  v286 = v262 ^ v273;
  v287 = v281 ^ v283;
  v288 = v279 + v262 - 2 * v279;
  v289 = v282 + v279;
  LOBYTE(STACK[0x82C]) = v281 ^ v283 ^ 0x19;
  v277 += 395291306;
  LOBYTE(v281) = (v284 - ((2 * v284) & 0x18) + 12) ^ 0xE4;
  v290 = v284 ^ v286;
  v291 = v287 ^ v285;
  v292 = v275 - 1124528355 - v277;
  LOBYTE(STACK[0x7FE]) = v281;
  LOBYTE(v281) = v290 - ((2 * v290) & 0xFC);
  v293 = v290 ^ v288;
  v294 = v288 ^ v282;
  LOBYTE(v288) = (v281 + 126) ^ 0x96;
  LOBYTE(STACK[0x8CA]) = v291 ^ 0x19;
  v295 = v283 + v277;
  LOBYTE(STACK[0x89C]) = v288;
  v296 = v291 ^ v292;
  v297 = v289 ^ v286;
  LOBYTE(v288) = v293 - ((2 * v293) & 0xAE);
  v298 = v293 ^ v289;
  LOBYTE(STACK[0x93A]) = (v288 + 87) ^ 0xBF;
  v299 = v292 ^ v283;
  v300 = v289 - v294;
  LOBYTE(STACK[0x968]) = v296 ^ 0x19;
  v301 = (v283 + v277) ^ v285;
  v302 = v296 ^ v295;
  LOBYTE(STACK[0xA06]) = v302 ^ 0x19;
  v282 -= 1847554120;
  LOBYTE(STACK[0x9D8]) = (v298 + (~(2 * v298) | 0xC5) - 98) ^ 0x75;
  v303 = v294 + v282;
  v304 = v302 ^ (v283 - 1847554120);
  LOBYTE(STACK[0xA76]) = ((v298 ^ v282) + (~(2 * (v298 ^ v282)) | 0xA9) - 84) ^ 0x43;
  v305 = v298 ^ v282 ^ ((v289 ^ v286) + v282);
  v306 = v300 ^ v297;
  LOBYTE(STACK[0xAA4]) = v304 ^ 0x19;
  v307 = v305 ^ (v294 + v282);
  v308 = (v295 - v299) ^ v301;
  v309 = v304 ^ (v301 + v283 - 1847554120);
  LOBYTE(STACK[0x74B]) = (v305 - ((2 * v305) & 0x77) - 69) ^ 0x53;
  LOBYTE(STACK[0x779]) = v309 ^ 0x19;
  v310 = v307 ^ v306;
  v311 = v309 ^ (v299 + v283 - 1847554120);
  LOBYTE(STACK[0x7E9]) = (v307 - 2 * (v307 & 7) + 7) ^ 0xEF;
  LOBYTE(STACK[0x817]) = v311 ^ 0x19;
  v312 = v297 + v282 - v303;
  v313 = v311 ^ v308;
  LODWORD(STACK[0x3A4]) = v310;
  v314 = v282 + v306;
  v315 = v306 - v312;
  LOBYTE(STACK[0x887]) = (v310 + (~(2 * v310) | 0xDB) + 19) ^ 0xFA;
  v316 = ((v315 ^ v312 ^ 0xC1EF2A4A) + 674515109) ^ ((v315 ^ v312 ^ 0x15F607B2) - 64133795) ^ ((v315 ^ v312 ^ 0xD4192DF8) + 1036144407);
  LOBYTE(STACK[0x8B5]) = v313 ^ 0x19;
  LODWORD(STACK[0x590]) = ((v299 - v301 - (v283 - 1847554120)) ^ 0xFF9F4FEF) + 2020785721 + ((2 * (v299 - v301 - (v283 - 1847554120))) & 0xFF3E9FDE);
  LODWORD(STACK[0x3A0]) = v313 ^ 0xEEF86DFB;
  LODWORD(STACK[0x58C]) = ((v315 - v314) ^ 0xD29776FD) + 805027824 + ((2 * (v315 - v314)) & 0xA52EEDFA);
  LODWORD(STACK[0x584]) = v316;
  LODWORD(STACK[0x47C]) = v316 + 1329164605;
  LODWORD(STACK[0x5B0]) = (v308 + v283 - 1847554120) ^ 0x4545817C;
  return (*(v12 + 8 * (v25 ^ (7 * v274))))();
}

uint64_t sub_10009E628()
{
  STACK[0xAE8] = v1;
  v3 = STACK[0x4E0];
  STACK[0xAF0] = STACK[0x4E0];
  return (*(v2 + 8 * (((v1 - v3 > 9) * (((v0 + 1307186519) & 0xB215DFFF) + 1129)) ^ (v0 - 6443))))();
}

uint64_t sub_10009E68C@<X0>(uint64_t a1@<X1>, int a2@<W2>, char a3@<W7>, uint64_t a4@<X8>)
{
  v13 = *(a1 + v12 + (v5 >> 4) * v8 - ((((v12 + (v5 >> 4) * v8) * v9) >> 32) >> 9) * v7);
  v14 = (*(a1 + (v12 + (v5 & 0xF) * v8 - ((4469269 * (v12 + (v5 & 0xF) * v8)) >> 32) * v7)) ^ 0xBF ^ (((32 * v13) ^ 0x9F) + ((16 * v13) ^ 0x30) - 12)) * a2 + 527956;
  LOBYTE(v14) = *(a4 + (v14 - ((4628198 * v14) >> 32) * v10));
  v15 = ((((2 * v14) & 0xD4) + (v14 ^ 0x6A)) ^ a3) * v8 + 186990;
  *(a1 + v5 * v8 + 242190 - ((((v5 * v8 + 242190) * v9) >> 32) >> 9) * v7) = *(a1 + (v15 - ((4469269 * v15) >> 32) * v7));
  return (*(v11 + 8 * (((v5 != 255) * v6) ^ v4)))();
}

uint64_t sub_10009E78C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X5>, int a4@<W8>)
{
  STACK[0x398] = v7;
  STACK[0x2B8] = v6;
  LODWORD(STACK[0x5B0]) = 910040778;
  LODWORD(STACK[0x58C]) = v4;
  STACK[0x598] = v5;
  return (*(v5 + 8 * (((((a4 + 1395) ^ 0x1A2D) - 4134) * (v4 == v8)) ^ a4)))(1711764829, a1, a2, 2563765506, 910040778, a3, 3404387979);
}

uint64_t sub_10009E8A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X7>, unint64_t a8@<X8>)
{
  *&STACK[0x3B0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x340] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x350] = vdupq_n_s64(0x38uLL);
  v22 = vdupq_n_s64(a8);
  *&STACK[0x320] = vdupq_n_s64(v13);
  *&STACK[0x330] = vdupq_n_s64(a7);
  *&STACK[0x310] = vdupq_n_s64(v14);
  v23 = v17 + v19 + a6;
  v24 = v16;
  v25 = 5 * ((v8 - 6023) ^ 0x2C3u);
  *&STACK[0x2F0] = vdupq_n_s64(a2);
  *&STACK[0x300] = vdupq_n_s64(v24);
  *&STACK[0x2D0] = vdupq_n_s64(a3);
  *&STACK[0x2E0] = vdupq_n_s64(v18);
  *&STACK[0x2B0] = vdupq_n_s64(a5);
  *&STACK[0x2C0] = vdupq_n_s64(a4);
  *&STACK[0x290] = vdupq_n_s64(v15);
  *&STACK[0x2A0] = vdupq_n_s64(v9);
  *&STACK[0x270] = vdupq_n_s64(v21);
  *&STACK[0x280] = vdupq_n_s64(v12);
  *&STACK[0x250] = vdupq_n_s64(v10);
  *&STACK[0x260] = vdupq_n_s64(v11);
  *&STACK[0x240] = vdupq_n_s64(0xE831AF248D427C36);
  *&STACK[0x360] = xmmword_10069D330;
  v27 = *&STACK[0x340];
  v26 = *&STACK[0x350];
  v29 = *&STACK[0x2F0];
  v28 = *&STACK[0x300];
  v30 = *&STACK[0x2E0];
  v32 = *&STACK[0x2B0];
  v31 = *&STACK[0x2C0];
  v34 = *&STACK[0x290];
  v33 = *&STACK[0x2A0];
  v36 = *&STACK[0x270];
  v35 = *&STACK[0x280];
  v38 = *&STACK[0x250];
  v37 = *&STACK[0x260];
  *&v39 = v23 - 5;
  *(&v39 + 1) = v23 - 6;
  *&STACK[0x3A0] = v39;
  *&v39 = v23 - 3;
  *(&v39 + 1) = v23 - 4;
  *&STACK[0x390] = v39;
  *&v39 = v23 - 1;
  *(&v39 + 1) = v23 - 2;
  *&STACK[0x380] = v39;
  v40.i64[0] = v23 + 3;
  v40.i64[1] = v23 + 2;
  v41.i64[0] = v23 + 5;
  v41.i64[1] = v23 + 4;
  v42.i64[0] = v23 + 7;
  v42.i64[1] = v23 + 6;
  v43.i64[0] = v23 - 7016 + v25;
  v43.i64[1] = v23 + 8;
  v44 = vandq_s8(v43, *&STACK[0x3B0]);
  v45 = vandq_s8(v42, *&STACK[0x3B0]);
  v46 = vandq_s8(v41, *&STACK[0x3B0]);
  v47 = vandq_s8(v40, *&STACK[0x3B0]);
  v48 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v49 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v50 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v51 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v52 = vaddq_s64(v51, v27);
  v53 = vaddq_s64(v50, v27);
  v54 = vaddq_s64(v49, v27);
  v55 = *&STACK[0x330];
  v56 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x330], v51), v22), v52), vandq_s8(v52, v22));
  v57 = vaddq_s64(v48, v27);
  v58 = vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x330], v48), v22), v57);
  v59 = vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x330], v49), v22), v54);
  v60 = vandq_s8(v57, v22);
  v61 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x330], v50), v22), v53), vandq_s8(v53, v22));
  v62 = vsubq_s64(v59, vandq_s8(v54, v22));
  v63 = vsubq_s64(v58, v60);
  v64 = *&STACK[0x320];
  v65 = veorq_s8(v63, *&STACK[0x320]);
  v66 = veorq_s8(v62, *&STACK[0x320]);
  v67 = veorq_s8(v62, *&STACK[0x310]);
  v68 = veorq_s8(v63, *&STACK[0x310]);
  v69 = *&STACK[0x310];
  v70 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v67), v28);
  v71 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v68), v28);
  v72 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v73 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v73);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v72);
  v76 = *&STACK[0x2D0];
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v75, v75), v29), v75), v30), *&STACK[0x2D0]);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v74, v74), v29), v74), v30), *&STACK[0x2D0]);
  v79 = vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL);
  v80 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v81 = veorq_s8(v77, v79);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v81);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v80);
  v84 = veorq_s8(vaddq_s64(vsubq_s64(v83, vandq_s8(vaddq_s64(v83, v83), v31)), v32), v33);
  v85 = veorq_s8(vaddq_s64(vsubq_s64(v82, vandq_s8(vaddq_s64(v82, v82), v31)), v32), v33);
  v86 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v87 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v88 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v87);
  v90 = veorq_s8(vaddq_s64(v88, v86), v34);
  v91 = veorq_s8(v89, v34);
  v92 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v93 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v94 = veorq_s8(v90, v92);
  v95 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v94);
  v97 = veorq_s8(vaddq_s64(v95, v93), v35);
  v98 = veorq_s8(v96, v35);
  v99 = vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL);
  v100 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v101 = veorq_s8(v97, v99);
  v102 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v101);
  v104 = veorq_s8(vaddq_s64(v102, v100), v36);
  v105 = veorq_s8(v103, v36);
  v106 = vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL);
  v107 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v108 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v109.i64[0] = v23 + 1;
  v109.i64[1] = v23;
  *&STACK[0x370] = v109;
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), veorq_s8(v104, v106));
  v111 = vaddq_s64(v108, v107);
  v211.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v110, v110), v37), v110), v38), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), v26)));
  v211.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v111, v111), v37), v111), v38), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), v26)));
  v112 = veorq_s8(v61, v64);
  v113 = veorq_s8(v61, v69);
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v28);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v116, v116), v29), v116), v30), v76);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(v119, vandq_s8(vaddq_s64(v119, v119), v31)), v32), v33);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v34);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v35);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125), v36);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL)));
  v128 = vandq_s8(v109, *&STACK[0x3B0]);
  v211.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), v37), v127), v38), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v26)));
  v129 = veorq_s8(v56, v64);
  v130 = veorq_s8(v56, v69);
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130), v28);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v133, v133), v29), v133), v30), v76);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(v136, vandq_s8(vaddq_s64(v136, v136), v31)), v32), v33);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), v34);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), v35);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v143 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142), v36);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v145 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v146 = vandq_s8(*&STACK[0x380], *&STACK[0x3B0]);
  v147 = vaddq_s64(v145, v144);
  v148 = vandq_s8(*&STACK[0x390], *&STACK[0x3B0]);
  v211.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v147, v147), v37), v147), v38), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), v26)));
  v149 = vandq_s8(*&STACK[0x3A0], *&STACK[0x3B0]);
  v150 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v151 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v152 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v154 = vaddq_s64(v153, v27);
  v155 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v55, v153), v22), v154), vandq_s8(v154, v22));
  v156 = vaddq_s64(v152, v27);
  v157 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v55, v152), v22), v156), vandq_s8(v156, v22));
  v158 = vaddq_s64(v151, v27);
  v159 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v55, v151), v22), v158), vandq_s8(v158, v22));
  v160 = vaddq_s64(v150, v27);
  v161 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v55, v150), v22), v160), vandq_s8(v160, v22));
  v150.i64[0] = vqtbl4q_s8(v211, *&STACK[0x360]).u64[0];
  v211.val[0] = veorq_s8(v161, v64);
  v211.val[1] = veorq_s8(v159, v64);
  v162 = veorq_s8(v159, v69);
  v163 = veorq_s8(v161, v69);
  v211.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), v162), v28);
  v211.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL), v163), v28);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL);
  v164 = veorq_s8(v211.val[0], vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v165 = veorq_s8(v211.val[1], v211.val[2]);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL);
  v211.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), v165);
  v211.val[1] = vaddq_s64(v211.val[2], v164);
  v211.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v211.val[1], v211.val[1]), v29), v211.val[1]), v30), v76);
  v211.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v211.val[0], v211.val[0]), v29), v211.val[0]), v30), v76);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v166 = veorq_s8(v211.val[0], vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v167 = veorq_s8(v211.val[1], v211.val[2]);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL);
  v211.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), v167);
  v211.val[1] = vaddq_s64(v211.val[2], v166);
  v211.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v211.val[1], vandq_s8(vaddq_s64(v211.val[1], v211.val[1]), v31)), v32), v33);
  v211.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v211.val[0], vandq_s8(vaddq_s64(v211.val[0], v211.val[0]), v31)), v32), v33);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL);
  v168 = veorq_s8(v211.val[0], vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v169 = veorq_s8(v211.val[1], v211.val[2]);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL);
  v211.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), v169);
  v211.val[1] = veorq_s8(vaddq_s64(v211.val[2], v168), v34);
  v211.val[0] = veorq_s8(v211.val[0], v34);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL);
  v170 = veorq_s8(v211.val[0], vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v171 = veorq_s8(v211.val[1], v211.val[2]);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL);
  v211.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), v171);
  v211.val[1] = veorq_s8(vaddq_s64(v211.val[2], v170), v35);
  v211.val[0] = veorq_s8(v211.val[0], v35);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL);
  v172 = veorq_s8(v211.val[0], vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v173 = veorq_s8(v211.val[1], v211.val[2]);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL);
  v211.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), v173);
  v211.val[1] = veorq_s8(vaddq_s64(v211.val[2], v172), v36);
  v211.val[0] = veorq_s8(v211.val[0], v36);
  v211.val[2] = vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL);
  v174 = veorq_s8(v211.val[0], vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[1], 0x38uLL), v211.val[1], 8uLL), veorq_s8(v211.val[1], v211.val[2]));
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211.val[0], 0x38uLL), v211.val[0], 8uLL), v174);
  v211.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v175, v175), v37), v175), v38), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3A0], 3uLL), v26)));
  v211.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v176, v176), v37), v176), v38), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x390], 3uLL), v26)));
  v177 = veorq_s8(v157, v64);
  v178 = veorq_s8(v157, v69);
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v28);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v181, v181), v29), v181), v30), v76);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v184 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183);
  v185 = veorq_s8(vaddq_s64(vsubq_s64(v184, vandq_s8(vaddq_s64(v184, v184), v31)), v32), v33);
  v186 = veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v187 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186), v34);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v189 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188), v35);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), v36);
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL)));
  v211.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v192, v192), v37), v192), v38), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x380], 3uLL), v26)));
  v193 = veorq_s8(v155, v64);
  v194 = veorq_s8(v155, v69);
  v195 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194), v28);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v197 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v197, v197), v29), v197), v30), v76);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v200 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(v200, vandq_s8(vaddq_s64(v200, v200), v31)), v32), v33);
  v202 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v203 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v202), v34);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v205 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v204), v35);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v207 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206), v36);
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL)));
  v211.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v208, v208), v37), v208), v38), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x370], 3uLL), v26)));
  v150.i64[1] = vqtbl4q_s8(v211, *&STACK[0x360]).u64[0];
  v209 = vrev64q_s8(v150);
  *(a6 + a1 - 7041 + v25) = veorq_s8(vextq_s8(v209, v209, 8uLL), *(v23 - 7031 + v25));
  return (*(v20 + 8 * ((7220 * (-(a6 & 0xFFFFFFF0) == -16)) ^ (v8 - 6023))))();
}

uint64_t sub_10009F430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = STACK[0x4F8];
  STACK[0x5E0] = STACK[0x4F8];
  return (*(v4 + 8 * (((((v5 == 0) ^ v3) & 1) * ((v3 ^ 0x234F) - 9017)) ^ v3)))(a1, a2, a3, 16215976);
}

uint64_t sub_10009F484()
{
  LODWORD(STACK[0x528]) = -2104072441;
  LODWORD(STACK[0x52C]) = 463394776;
  v4 = *v1;
  v5 = 1824088897 * ((v3 + 0x1DE7F8D8CD174060 - 2 * ((v3 - 152) & 0x1DE7F8D8CD1740F8)) ^ 0x706095D3957E939ALL);
  *(v3 - 112) = (v0 - 1067440736) ^ (1824088897 * ((v3 - 854114208 - 2 * ((v3 - 152) & 0xCD1740F8)) ^ 0x957E939A));
  *(v3 - 152) = 1824088897 * ((v3 - 854114208 - 2 * ((v3 - 152) & 0xCD1740F8)) ^ 0x957E939A);
  *(v3 - 144) = 1824088897 * ((v3 - 854114208 - 2 * ((v3 - 152) & 0xCD1740F8)) ^ 0x957E939A) - 1607385763 + v0;
  *(v3 - 140) = 1824088897 * ((v3 - 854114208 - 2 * ((v3 - 152) & 0xCD1740F8)) ^ 0x957E939A) + v0 - 1067440736 - 107;
  v6 = v3 - 152;
  *(v6 + 16) = v4 ^ v5;
  *(v3 - 128) = ((v0 - 1067440736) ^ 0x3AD) - 1824088897 * ((v3 - 854114208 - 2 * ((v3 - 152) & 0xCD1740F8)) ^ 0x957E939A);
  *(v6 + 32) = v5;
  v7 = (*(v2 + 8 * (v0 + 1232701030)))(v3 - 152);
  return (*(v2 + 8 * *(v3 - 148)))(v7);
}

uint64_t sub_10009F650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, char a19, uint64_t a20, unsigned int a21, uint64_t a22)
{
  a20 = v24 + 8 * v23;
  a22 = a18;
  a21 = v22 + ((v25 - (&a19 | v25) + (&a19 | 0x9D8253C9)) ^ 0x771323CC) * v26 + 1572;
  v28 = (*(v27 + 8 * (v22 ^ 0x3BB2)))(&a19);
  return (*(v27 + 8 * (((a17 <= (v23 + 1)) * (v22 - 7618)) ^ v22)))(v28);
}

uint64_t sub_10009F6D8(uint64_t a1)
{
  v6 = *(v1 + v3 - 1 - 31);
  v7 = a1 + v3 - 1;
  *(v7 - 15) = *(v1 + v3 - 1 - 15);
  *(v7 - 31) = v6;
  return (*(v5 + 8 * ((7952 * (((v4 - 2904 + v2) | 0x815u) - 2581 == (v3 & 0xFFFFFFE0))) ^ (v4 - 2904 + v2 + 3187))))();
}

uint64_t sub_10009F73C()
{
  *(v2 - 224) = (v0 - 2140796166) ^ (914963389 * ((v2 - 1885987690 - 2 * ((v2 - 232) & 0x8F961D7E)) ^ 0xA36AAC05));
  (*(v1 + 8 * (v0 + 9582)))(v2 - 232);
  v3 = *(STACK[0x458] + 8);
  STACK[0x470] = *(v1 + 8 * v0);
  return sub_1001A7974(v3);
}

uint64_t sub_10009F890@<X0>(int a1@<W8>)
{
  STACK[0x428] = v1;
  LODWORD(STACK[0x468]) = v2;
  STACK[0x890] = &STACK[0x688];
  STACK[0x418] = 0;
  LODWORD(STACK[0x694]) = 197499219;
  LODWORD(STACK[0x514]) = 197499219;
  STACK[0x680] = 0;
  STACK[0x810] = 0;
  return (*(v3 + 8 * ((((((a1 - 2017422823) & 0x783F7FB9) - 5649) ^ 0xE18) * (v1 == 0)) ^ a1)))();
}

uint64_t sub_10009F910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, unint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v39 = STACK[0x3F8] - 4652;
  v40 = (v37 ^ v38) + a37;
  STACK[0x9C0] = v40;
  return (*(STACK[0x400] + 8 * (v39 ^ (1019 * (v40 > a31)))))();
}

uint64_t sub_10009FA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, __int16 a11, char a12, int a13, char a14, char *a15, char *a16, uint64_t a17, unsigned int a18, int a19)
{
  v22 = 1317436891 * ((2 * (&a14 & 0x5B07B918) - &a14 - 1527232797) ^ 0x14FBDE95);
  a18 = 1602299020 - v22;
  a19 = (v21 + 283) ^ v22;
  a16 = &a10;
  a17 = v19;
  a15 = &a12;
  v23 = (*(v20 + 8 * (v21 + 7536)))(&a14);
  return (*(v20 + 8 * (((*(v19 + 24) == v21 + 16255838) * (86 * (v21 ^ 0x81D) - 1784)) ^ v21)))(v23);
}

uint64_t sub_10009FBD8@<X0>(uint64_t a1@<X6>, unsigned int a2@<W8>)
{
  v4 = (((*(v2 + 16) ^ 0xCA2E26E3) + ((9 * (v3 ^ 0xDD4)) ^ 0xED96B986)) ^ ((*(v2 + 16) ^ 0x1221FA99) + 899245435) ^ ((*(v2 + 16) ^ 0x27F02385) + ((361 * (v3 ^ 0xDC8)) ^ 0x48A6AC))) - 1584818712;
  v5 = (a2 > 0x862F09FA) ^ (v4 < 0x79D0F605);
  v6 = a2 + 2043737605 > v4;
  if (v5)
  {
    v6 = a2 > 0x862F09FA;
  }

  return (*(a1 + 8 * ((58 * v6) ^ v3)))();
}

uint64_t sub_10009FCB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *STACK[0x518] = a4;
  *STACK[0x200] = STACK[0x848];
  return (STACK[0x760])(a1, a2, a3, 16257999);
}

uint64_t sub_10009FD78()
{
  v7 = v3 - 1;
  *(v6 + v7) ^= *(v1 + (v7 & 0xF)) ^ *((v7 & 0xF) + v0 + 1) ^ (-31 * (v7 & 0xF)) ^ *(v2 + (v7 & 0xF)) ^ 0x3C;
  return (*(v5 + 8 * ((103 * (v7 != 0)) ^ (v4 - 2857))))();
}

uint64_t sub_10009FDD0@<X0>(int a1@<W0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  *(a3 - a4 + v9 + 8) = *(v6 + a3);
  v11 = a3 + a1 < v7;
  if (v4 < v8 != a3 + 1 > a2)
  {
    v11 = v4 < v8;
  }

  return (*(v10 + 8 * ((v5 + 1133) ^ (2 * v11))))();
}

uint64_t sub_10009FDD8@<X0>(int a1@<W0>, int a2@<W4>, int a3@<W5>, int a4@<W6>, int a5@<W8>)
{
  LODWORD(STACK[0x590]) = 0;
  v10 = v5 + v8 - 2115667646 + (v8 ^ 0xF680D89D);
  v11 = (LODWORD(STACK[0x584]) - a1 - 1006131028) ^ v10;
  LODWORD(STACK[0x588]) = a5 ^ 0x359C3BFA;
  LODWORD(STACK[0x4A0]) = v10;
  v12 = v10 + 405830819;
  v13 = (v10 - 1873246736 + v11) ^ (v10 + 405830819);
  LODWORD(STACK[0x584]) = v13;
  LODWORD(STACK[0x55C]) = v6;
  v14 = (a5 ^ 0x359C3BFA) - v11 - 1336561906;
  LODWORD(STACK[0x58C]) = v14;
  v15 = (a5 ^ 0x158D0BA ^ (v5 + v8 - ((2 * (v5 + v8 - 2115667646)) & 0x6989D680) - 1230347134)) - v14;
  v16 = v7;
  v17 = v15 - v13;
  v18 = LODWORD(STACK[0x428]) - 2046741864 + v15 - v13;
  v19 = v18;
  LODWORD(STACK[0x56C]) = a2;
  v20 = v16 - 2115667646 + a2;
  v21 = (a2 ^ 0xF680D89D) + v20;
  LODWORD(STACK[0x3A8]) = v21;
  v22 = v21 ^ (a4 - a2);
  LODWORD(STACK[0x548]) = a3;
  v23 = a3 ^ 0x359C3BFA;
  LODWORD(STACK[0x57C]) = v23 - v22;
  v24 = v21 + 405830819;
  v25 = (v21 - 1873246736 + v22) ^ (v21 + 405830819);
  LODWORD(STACK[0x550]) = v25;
  v26 = (v20 ^ v23) - v21 - (v23 - v22);
  LODWORD(STACK[0x570]) = v26;
  v26 += 930731087;
  LODWORD(STACK[0x520]) = v26;
  v27 = v26 + v24 - v25;
  v28 = LODWORD(STACK[0x410]) - v27;
  LODWORD(STACK[0x54C]) = v18;
  v29 = STACK[0x5B0];
  v30 = v28 + 1505105975;
  v31 = *(STACK[0x5B0] + (776 * (v19 >> 12) + 531560 - 969 * ((4432371 * (776 * (v19 >> 12) + 531560)) >> 32)));
  v32 = *(STACK[0x5B0] + (776 * ((v19 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v19 >> 8) & 0xF) + 531560)) >> 32)));
  v33 = ((((*(STACK[0x5B0] + (776 * (HIBYTE(v18) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v18) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(STACK[0x5B0] + (776 * (v18 >> 28) + 531560 - 969 * ((4432371 * (776 * (v18 >> 28) + 531560)) >> 32))) ^ v9) << 12) | *(STACK[0x5B0] + (776 * (HIWORD(v19) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v19) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(STACK[0x5B0] + (776 * ((v19 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v19 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12);
  LODWORD(STACK[0x518]) = v33;
  v34 = v33 | v32 ^ v9;
  LODWORD(STACK[0x524]) = v34 << 8;
  LODWORD(STACK[0x4E8]) = v34;
  v35 = (v34 << 8) ^ ((v31 ^ v9) << 12);
  LODWORD(STACK[0x504]) = v35;
  v36 = *(v29 + (776 * (v19 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v19 & 0xF) + 531560)) >> 32))) ^ v9;
  v37 = (v35 | v36) ^ (16 * (*(v29 + (776 * (v19 >> 4) + 531560 - 969 * ((4432371 * (776 * (v19 >> 4) + 531560)) >> 32))) ^ v9));
  v38 = 776 * (((v28 + 1505105975) >> 20) & 0xF) + 531560;
  v39 = ((*(v29 + (776 * (HIBYTE(v30) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v30) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v30 >> 28) + 531560 - 969 * ((4432371 * (776 * (v30 >> 28) + 531560)) >> 32))) ^ v9) << 12);
  v40 = 776 * (((v28 + 1505105975) >> 16) & 0xF) + 531560;
  v41 = ((v39 | *(v29 + (v40 - 969 * ((4432371 * v40) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v38 - 969 * ((4432371 * v38) >> 32))) ^ v9) << 12);
  LODWORD(STACK[0x508]) = v41;
  v42 = 776 * ((v28 + 6199) >> 12) + 531560;
  v43 = 776 * (((v28 + 1505105975) >> 8) & 0xF) + 531560;
  v44 = 776 * ((v28 + 55) >> 4) + 531560;
  v45 = 776 * ((v28 + 1505105975) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v28 + 1505105975) & 0xFu) + 531560)) >> 32);
  v46 = ((v41 | *(v29 + (v43 - 969 * ((4432371 * v43) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v42 - 969 * ((4432371 * v42) >> 32))) ^ v9) << 12);
  LODWORD(STACK[0x500]) = v46;
  v47 = *(v29 + v45) ^ v9;
  v48 = (v46 | v47) ^ (16 * (*(v29 + (v44 - 969 * ((4432371 * v44) >> 32))) ^ v9));
  v49 = v36 & 0xF;
  LODWORD(STACK[0x510]) = v49;
  v50 = v49 & 0xFFFFFF0F | (16 * (v47 & 0xF));
  v51 = 776 * ((v45 & 0x160 ^ 0x160) + (v45 & 0x160) + v50);
  v52 = *(v29 + (v51 - 969 * ((4432371 * v51) >> 32)));
  v53 = LOBYTE(STACK[0xDF4]);
  LODWORD(STACK[0x440]) = v53 ^ v9;
  v54 = (16 * (v53 ^ v9)) ^ v9;
  LODWORD(STACK[0x458]) = v54;
  v55 = 776 * (v52 ^ v54);
  v56 = v55 + 273152 - 969 * ((4432371 * (v55 + 273152)) >> 32);
  v57 = (*(v29 + (v55 - 969 * ((4432371 * v55) >> 32))) >> 4) ^ 0xB;
  v58 = 776 * ((v57 - ((2 * v57) & 0xFB) - 67) ^ *(v29 + (776 * v50 - 969 * ((4432371 * (776 * v50)) >> 32)))) + 273152;
  LODWORD(STACK[0x45C]) = v12;
  v59 = LODWORD(STACK[0x58C]) ^ v12;
  LODWORD(STACK[0x540]) = v59;
  v60 = (v15 - v12) ^ v59;
  v61 = *(v29 + v56);
  v62 = 776 * (((v61 & 0x62 ^ 0x42 | v61 & 0x62 ^ 0x20) ^ ((v60 + 120) ^ (7 - v60)) & 0x6D) & (v37 >> 4) ^ v48 & 0xF0);
  v63 = 776 * (*(v29 + (v62 + 273152 - 969 * ((4432371 * (v62 + 273152)) >> 32))) ^ (16 * (*(v29 + (v58 - 969 * ((4432371 * v58) >> 32))) ^ v9)) ^ v9);
  v64 = v63 + 273152 - 969 * ((4432371 * (v63 + 273152)) >> 32);
  v65 = (*(v29 + (v63 - 969 * ((4432371 * v63) >> 32))) >> 4) ^ 0xB;
  v66 = 776 * ((v65 - ((2 * v65) & 0xFB) - 67) ^ *(v29 + (v62 - 969 * ((4432371 * v62) >> 32)))) + 273152;
  v67 = *(v29 + v64);
  LODWORD(STACK[0x4C0]) = v37;
  v68 = 776 * ((v48 >> 4) & 0xF0 | (v37 >> 8) & 0xF);
  LODWORD(STACK[0x4EC]) = v68;
  v69 = 776 * (*(v29 + (v68 + 273152 - 969 * ((4432371 * (v68 + 273152)) >> 32))) ^ (16 * (*(v29 + (v66 - 969 * ((4432371 * v66) >> 32))) ^ v9)) ^ v9);
  LODWORD(STACK[0x4E0]) = v69;
  v70 = ((*(v29 + (v69 + 273152 - 969 * ((4432371 * (v69 + 273152)) >> 32))) ^ v9) << 8) ^ (16 * (v67 ^ v9));
  LODWORD(STACK[0x4C4]) = v70;
  v71 = 776 * ((v39 >> 8) & 0xF0 | (v34 >> 20) & 0xF) + 273152;
  v72 = *(v29 + (v71 - 969 * ((4432371 * v71) >> 32)));
  LODWORD(STACK[0x4B4]) = v72;
  LODWORD(STACK[0x4B8]) = v61 ^ v9;
  v73 = v70 ^ v61 ^ v9;
  LODWORD(STACK[0x4B0]) = v73;
  v74 = 776 * ((v73 >> 4 << ((v72 & 4 ^ 4) + (v72 & 4))) ^ (v37 >> 4));
  LODWORD(STACK[0x4DC]) = (v74 + 550184) % (((727 - v74) & 0x3C9) + ((v74 + 550184) & 0x3C8u));
  v75 = (v15 - v12 - v17 + 1634197903) ^ v60;
  v76 = v60;
  LODWORD(STACK[0x528]) = v60;
  v77 = v75 ^ (v17 + 544295324);
  v78 = LODWORD(STACK[0x418]) - 827745395 + (((v77 ^ 0xC854EBF7) + 867950240) ^ ((v77 ^ 0x1BDCDD45) - 533469138) ^ ((v77 ^ 0x2626AA5B) - 573989068));
  LODWORD(STACK[0x560]) = v78;
  v79 = LODWORD(STACK[0x57C]) - 1336561906;
  LODWORD(STACK[0x454]) = v79;
  v80 = v79 ^ v24;
  LODWORD(STACK[0x53C]) = v80;
  v81 = v80 ^ LODWORD(STACK[0x520]);
  v82 = (LODWORD(STACK[0x570]) - v27 - 1730038306) ^ v81;
  LODWORD(STACK[0x384]) = v81;
  LODWORD(STACK[0x520]) = v82;
  v83 = v82 ^ (v27 + 544295324);
  v84 = LODWORD(STACK[0x41C]) - (((v83 ^ 0xDD2212A5) - 514874209) ^ ((v83 ^ 0xF99C8029) - 974047725) ^ ((v83 ^ 0xD1100E65) - 310527905)) + 1272730527;
  LODWORD(STACK[0x46C]) = v84;
  v85 = *(v29 + (776 * (v78 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v78 & 0xF) + 531560)) >> 32))) ^ v9;
  LODWORD(STACK[0x470]) = v85;
  v86 = *(v29 + (776 * (v84 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v84 & 0xF) + 531560)) >> 32))) ^ v9;
  LODWORD(STACK[0x490]) = v86;
  LODWORD(STACK[0x4F8]) = v85 & 0xF;
  v87 = 776 * (v85 & 0xF | (16 * (v86 & 0xF)));
  LODWORD(STACK[0x488]) = v87;
  v88 = *(v29 + (v87 + 273152 - 969 * ((4432371 * (v87 + 273152)) >> 32)));
  LODWORD(STACK[0x480]) = (776 * ((v84 >> 8) & 0xF) + 531560) % (((-531562 - 776 * ((v84 >> 8) & 0xF)) & 0x8045624A | (776 * ((v84 >> 8) & 0xF) + 531560) & 0x86248) ^ 0x804D6183);
  v89 = 776 * (v88 ^ v54);
  LODWORD(STACK[0x47C]) = v89;
  LODWORD(STACK[0x4F0]) = (v89 + 273152) % ((255 - v89) & 0x3C9 ^ (v89 + 273152) & 0x3C8u);
  LODWORD(STACK[0x534]) = v75;
  LODWORD(STACK[0x538]) = v77;
  v90 = ((v77 ^ 0x680D3C3C) + 989959088) ^ ((v77 ^ 0x5AF1A021) + 167579571) ^ ((v77 ^ 0x9E0FCC71) - 855415837);
  LODWORD(STACK[0x570]) = v90;
  v91 = v76 ^ (v17 + 544295324) ^ ((v75 & 0x12CA4A88 ^ 0x10084808 | v75 & 0x12CA4A88 ^ 0x2C20280) + 1192514780 + (((v75 ^ 0x4F41CC4) + 1993900403) ^ ((v75 ^ 0xE1734F55) - 1822436636) ^ ((v75 ^ 0x318AAEBC) + 1134965515)));
  v92 = ((v91 ^ 0xC8210E83) + 14061393) ^ ((v91 ^ 0x4BA9129C) - 2090953904) ^ ((v91 ^ 0xB4806233) + 2088231905);
  LODWORD(STACK[0x4FC]) = v92;
  LODWORD(STACK[0x4F4]) = v90 - v92;
  v93 = v90 - v92 + 1387982876;
  LODWORD(STACK[0x4C8]) = v93;
  v94 = v93 + LODWORD(STACK[0x404]);
  v95 = 776 * (((v94 - 1885340339) >> 24) & 0xF) + 531560;
  v96 = v95 - 969 * ((4432371 * v95) >> 32);
  v97 = 776 * (((v94 - 1885340339) >> 20) & 0xF) + 531560;
  v98 = v97 - 969 * ((4432371 * v97) >> 32);
  v99 = 776 * (((v94 - 1885340339) >> 16) & 0xF) + 531560;
  LODWORD(STACK[0x57C]) = v8;
  v100 = v99 - 969 * ((4432371 * v99) >> 32);
  v101 = 776 * ((v94 - 691) >> 12) + 531560;
  v102 = v101 - 969 * ((4432371 * v101) >> 32);
  v103 = 776 * (((v94 - 1885340339) >> 8) & 0xF) + 531560;
  v104 = v103 - 969 * ((4432371 * v103) >> 32);
  v105 = 776 * ((v94 + 77) >> 4) + 531560;
  v106 = ((v83 ^ 0xAF01303C) - 66216016) ^ ((v83 ^ 0x20FA82DF) + 1945513293) ^ ((v83 ^ 0x2308E28F) + 1879330077);
  LODWORD(STACK[0x394]) = v106;
  LODWORD(STACK[0x498]) = v83 ^ 0x6AF451CC;
  v107 = ((v83 ^ 0x6AF451CC ^ v81 ^ 0xC1D8CB77) - 1708245139) ^ ((v83 ^ 0x6AF451CC ^ v81 ^ 0xC47C816C) - 1618315912) ^ ((v83 ^ 0x6AF451CC ^ v81 ^ 0x8C5598D6) - 677155634);
  LODWORD(STACK[0x4D0]) = v107;
  LODWORD(STACK[0x4A8]) = v106 - v107;
  v108 = LODWORD(STACK[0x42C]) - (v106 - v107) + 152329802;
  v109 = ((((*(v29 + v96) ^ v9) << 8) ^ ((*(v29 + (776 * ((v94 - 1885340339) >> 28) + 531560 - 969 * ((4432371 * (776 * ((v94 - 1885340339) >> 28) + 531560)) >> 32))) ^ v9) << 12) | *(v29 + v100) ^ v9) << 8) ^ ((*(v29 + v98) ^ v9) << 12);
  LODWORD(STACK[0x450]) = v109;
  v110 = 776 * (v108 >> 12) + 531560 - 969 * ((4432371 * (776 * (v108 >> 12) + 531560)) >> 32);
  LODWORD(STACK[0x3BC]) = v94 - 1885340339;
  v111 = 776 * (((((1885340338 - v94) & 0x191351AB) + ((v94 - 1885340339) & 0x191351AB) + (v110 & 0x144) + (v110 & 0x144 ^ 0x2CF544)) & 0x30ABAD) + ((v108 >> 8) & 0xF)) % 0x3C9;
  v112 = 776 * (v108 >> ((114 * ((v111 & 0x63 ^ 0x63) + (v111 & 0x63)) - 18) & 0xFE)) + 531560;
  v113 = v112 - 969 * ((4432371 * v112) >> 32);
  v114 = *(v29 + v102) ^ v9;
  v115 = v109 | *(v29 + v104) ^ v9;
  LODWORD(STACK[0x460]) = v115;
  v116 = (v115 << 8) ^ (v114 << 12);
  LODWORD(STACK[0x43C]) = v116;
  v117 = *(v29 + (776 * ((v94 - 1885340339) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v94 - 1885340339) & 0xFu) + 531560)) >> 32))) ^ v9;
  v118 = *(v29 + (776 * (v108 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v108 & 0xF) + 531560)) >> 32))) ^ v9;
  v119 = 776 * (v117 & 0xF | (16 * (v118 & 0xF)));
  v120 = ((*(v29 + (776 * (HIBYTE(v108) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v108) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v108 >> 28) + 531560 - 969 * ((4432371 * (776 * (v108 >> 28) + 531560)) >> 32))) ^ v9) << 12);
  LODWORD(STACK[0x44C]) = v120;
  v121 = 776 * (*(v29 + (v119 + 273152 - 969 * ((4432371 * (v119 + 273152)) >> 32))) ^ (LODWORD(STACK[0x440]) << ((v53 & 4 ^ 4) + (v53 & 4))) ^ v9);
  v122 = (v121 + 273152) % 0x3C9;
  v123 = *(v29 + v121 % 0x3C9) >> 4;
  v124 = 776 * (((v123 ^ 0xB) + ((2 * ((v123 ^ 0xB | 0x7D) ^ v123)) ^ 0x13) - 66) ^ *(v29 + (v119 - 969 * ((4432371 * v119) >> 32)))) + 273152;
  v125 = (v116 | v117) ^ (16 * (*(v29 + (v105 - 969 * ((4432371 * v105) >> 32))) ^ v9));
  v126 = ((v120 | *(v29 + (776 * (HIWORD(v108) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v108) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v108 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v108 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12);
  LODWORD(STACK[0x440]) = v126;
  v127 = ((v126 | *(v29 + v111) ^ v9) << 8) ^ ((*(v29 + v110) ^ v9) << 12);
  LODWORD(STACK[0x3EC]) = v127;
  v128 = *(v29 + v113) ^ ((v127 | v118) >> 4) ^ v9;
  LODWORD(STACK[0x3D4]) = v128;
  LODWORD(STACK[0x398]) = v125;
  v129 = 776 * ((v125 >> 4) | (16 * (v128 & 0xF)));
  LODWORD(STACK[0x3C0]) = v129;
  v130 = *(v29 + (v129 + 273152 - 969 * ((4432371 * (v129 + 273152)) >> 32))) ^ (16 * (*(v29 + (v124 - 969 * ((4432371 * v124) >> 32))) ^ v9));
  LODWORD(STACK[0x3AC]) = v130 ^ v9;
  v131 = *(v29 + v122) ^ v9;
  v132 = 776 * (v117 & 0xF | (16 * (v131 & 0xF))) + 550184;
  v133 = *(v29 + 776 * (((2 * (v130 ^ v9)) & 0x2C0) + (v130 ^ 0x1DD)) % 0x3C9);
  v134 = v132 - 969 * ((4432371 * v132) >> 32);
  v135 = v131 ^ (16 * (v133 ^ v9));
  LODWORD(STACK[0x3A4]) = v135;
  v136 = 776 * (v135 & 0xF0 | (v125 >> 4)) + 550184;
  v137 = *(v29 + v134);
  LODWORD(STACK[0x3B0]) = v137;
  v138 = v137 ^ (16 * (*(v29 + (v136 - 969 * ((4432371 * v136) >> 32))) ^ v9)) ^ v9;
  LODWORD(STACK[0x3A0]) = v138;
  LODWORD(STACK[0x3C8]) = (776 * (v138 >> 4) + 204088) % (((v94 - 1885340339) & 0x3C9) + ((1885340338 - v94) & 0x3C9u));
  v139 = LODWORD(STACK[0x3FC]) + 2142114685;
  v140 = LODWORD(STACK[0x57C]) + LODWORD(STACK[0x3F0]);
  v141 = v139 - LODWORD(STACK[0x56C]);
  v142 = ((((*(v29 + (776 * (HIBYTE(v140) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v140) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + 776 * (((-754675805 * ((v139 | (5368962 - LODWORD(STACK[0x3FC]))) & 0x65BE9BA)) ^ 0x18FCB5C3) + (v140 >> 28)) % 0x3C9) ^ v9) << 12) | *(v29 + (776 * (HIWORD(v140) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v140) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v140 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v140 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12);
  LODWORD(STACK[0x57C]) = v140;
  v143 = v142 | *(v29 + (776 * ((v140 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v140 >> 8) & 0xF) + 531560)) >> 32))) ^ v9;
  v144 = (v143 << 8) ^ ((*(v29 + (776 * (v140 >> 12) + 531560 - 969 * ((4432371 * (776 * (v140 >> 12) + 531560)) >> 32))) ^ v9) << 12);
  v145 = *(v29 + (776 * (v140 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v140 & 0xF) + 531560)) >> 32))) ^ v9;
  v146 = (v144 | v145) ^ (16 * (*(v29 + (776 * (v140 >> 4) + 531560 - 969 * ((4432371 * (776 * (v140 >> 4) + 531560)) >> 32))) ^ v9));
  v147 = ((((*(v29 + (776 * (HIBYTE(v141) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v141) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v141 >> 28) + 531560 - 969 * ((4432371 * (776 * (v141 >> 28) + 531560)) >> 32))) ^ v9) << 12) | *(v29 + (776 * (HIWORD(v141) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v141) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v141 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v141 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12);
  LOBYTE(v27) = *(v29 + (776 * (v141 >> 4) + 531560 - 969 * ((4432371 * (776 * (v141 >> 4) + 531560)) >> 32)));
  v148 = v147 | *(v29 + (776 * ((v141 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v141 >> 8) & 0xF) + 531560)) >> 32))) ^ v9;
  v149 = (v148 << 8) ^ ((*(v29 + (776 * (v141 >> 12) + 531560 - 969 * ((4432371 * (776 * (v141 >> 12) + 531560)) >> 32))) ^ v9) << 12);
  v150 = *(v29 + (776 * (v141 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v141 & 0xF) + 531560)) >> 32))) ^ v9;
  LOBYTE(v110) = v27 ^ ((v149 | v150) >> 4);
  v151 = v145 & 0xF;
  v152 = 776 * (v151 | (16 * (v150 & 0xF)));
  v153 = STACK[0x458];
  v154 = 776 * (*(v29 + (v152 + 273152 - 969 * ((4432371 * (v152 + 273152)) >> 32))) ^ LODWORD(STACK[0x458]));
  v155 = (*(v29 + (v154 - 969 * ((4432371 * v154) >> 32))) >> 4) ^ 0xB;
  v156 = v154 + 273152 - 969 * ((4432371 * (v154 + 273152)) >> 32);
  v157 = 776 * ((v155 - ((2 * v155) & 0xFB) - 67) ^ *(v29 + (v152 - 969 * ((4432371 * v152) >> 32)))) + 273152;
  LOBYTE(v110) = v110 ^ v9;
  v158 = 776 * ((v146 >> 4) | (16 * (v110 & 0xF)));
  v159 = *(v29 + (v158 + 273152 - 969 * ((4432371 * (v158 + 273152)) >> 32))) ^ (16 * (*(v29 + (v157 - 969 * ((4432371 * v157) >> 32))) ^ v9)) ^ v9;
  v160 = (v159 + 352) * (((v146 >> 4) & 8 ^ 0x308) + ((v146 >> 4) & 8));
  v161 = (*(v29 + (776 * v159 - 969 * ((4432371 * (776 * v159)) >> 32))) >> 4) ^ 0xB;
  v162 = 776 * ((v161 - ((2 * v161) & 0xFB) - 67) ^ *(v29 + (v158 - 969 * ((4432371 * v158) >> 32)))) + 273152;
  v163 = 776 * (v110 & 0xF0 | (v146 >> 8) & 0xF);
  v164 = v163 - 969 * ((4432371 * v163) >> 32);
  v165 = 776 * (*(v29 + (v163 + 273152 - 969 * ((4432371 * (v163 + 273152)) >> 32))) ^ (16 * (*(v29 + (v162 - 969 * ((4432371 * v162) >> 32))) ^ v9)) ^ v9);
  v166 = v165 + 273152 - 969 * ((4432371 * (v165 + 273152)) >> 32);
  v167 = *(v29 + (v165 - 969 * ((4432371 * v165) >> 32))) >> 4;
  v168 = 776 * (((v167 ^ 0xB) + ((2 * ((v167 ^ 0xB | 0x7D) ^ v167)) ^ 0x13) - 66) ^ *(v29 + v164)) + 273152;
  v169 = 776 * ((v149 >> 8) & 0xF0 | (v144 >> 12));
  v170 = v169 - 969 * ((4432371 * v169) >> 32);
  v171 = 776 * (*(v29 + (v169 + 273152 - 969 * ((4432371 * (v169 + 273152)) >> 32))) ^ (16 * (*(v29 + (v168 - 969 * ((4432371 * v168) >> 32))) ^ v9)) ^ v9);
  v172 = v171 + 273152 - 969 * ((4432371 * (v171 + 273152)) >> 32);
  v173 = (*(v29 + (v171 - 969 * ((4432371 * v171) >> 32))) >> 4) ^ 0xB;
  v174 = 776 * ((v173 - ((2 * v173) & 0xFB) - 67) ^ *(v29 + v170)) + 273152;
  v175 = 776 * ((v149 >> 12) & 0xF0 | HIWORD(v144) & 0xF);
  v176 = v175 - 969 * ((4432371 * v175) >> 32);
  v177 = 776 * (*(v29 + (v175 + 273152 - 969 * ((4432371 * (v175 + 273152)) >> 32))) ^ (16 * (*(v29 + (v174 - 969 * ((4432371 * v174) >> 32))) ^ v9)) ^ v9);
  v178 = v177 + 273152 - 969 * ((4432371 * (v177 + 273152)) >> 32);
  v179 = *(v29 + (v177 - 969 * ((4432371 * v177) >> 32))) >> 4;
  v180 = 776 * (((v179 ^ 0xB) + ((2 * ((v179 ^ 0xB | 0x7D) ^ v179)) ^ 0x13) - 66) ^ *(v29 + v176)) + 273152;
  v181 = 776 * ((v147 >> 8) & 0xF0 | (v142 >> 12));
  v182 = 776 * (*(v29 + (v181 + 273152 - 969 * ((4432371 * (v181 + 273152)) >> 32))) ^ (16 * (*(v29 + (v180 - 969 * ((4432371 * v180) >> 32))) ^ v9)) ^ v9);
  v183 = *(v29 + (v182 - 969 * ((4432371 * v182) >> 32))) >> 4;
  v184 = 776 * (((v183 ^ 0xB) + ((2 * ((v183 ^ 0xB | 0x7D) ^ v183)) ^ 0x13) - 66) ^ *(v29 + (v181 - 969 * ((4432371 * v181) >> 32)))) + 273152;
  v185 = 16 * (*(v29 + (v160 - 969 * ((4432371 * v160) >> 32))) ^ v9);
  v186 = v185 ^ ((*(v29 + v166) ^ v9) << 8);
  v187 = (((*(v29 + v172) ^ v9) << 12) | ((*(v29 + (v182 + 273152 - 969 * ((4432371 * (v182 + 273152)) >> 32))) ^ v9) << 20)) ^ (v186 | ((*(v29 + v178) ^ v9) << 16));
  v188 = *(v29 + (v184 - 969 * ((4432371 * v184) >> 32)));
  v189 = BYTE2(v148);
  v190 = 776 * (HIWORD(v142) & 0xF | (16 * (((v188 & 0xF ^ 2) + (v188 & 0xF ^ 0xD)) & v189)));
  v191 = 776 * (*(v29 + (v190 + 273152 - 969 * ((4432371 * (v190 + 273152)) >> 32))) ^ (16 * (v188 ^ v9)) ^ v9);
  v192 = v191 + 273152 - 969 * ((4432371 * (v191 + 273152)) >> 32);
  v193 = *(v29 + (v191 - 969 * ((4432371 * v191) >> 32))) >> 4;
  v194 = 776 * (((v193 ^ 0xB) + ((2 * ((v193 ^ 0xB | 0x7D) ^ v193)) ^ 0x13) - 66) ^ *(v29 + (v190 - 969 * ((4432371 * v190) >> 32)))) + 273152;
  v195 = 776 * (v189 & 0xF0 | (v143 >> 20) & 0xF) + 273152;
  v196 = 776 * (*(v29 + (v195 - 969 * ((4432371 * v195) >> 32))) ^ (16 * (*(v29 + (v194 - 969 * ((4432371 * v194) >> 32))) ^ v9)) ^ v9) + 273152;
  LOBYTE(v152) = *(v29 + v156) ^ v9;
  v197 = 776 * (v151 & 0xFFFFFF0F | (16 * (v152 & 0xF))) + 549215;
  v198 = (v185 ^ v152) & 0xF0 | (v146 >> 4);
  v199 = (v186 >> 4) & 0xF0 | (v146 >> 8) & 0xF;
  v200 = *(v29 + v197 % 0x3C9) ^ (16 * (*(v29 + (776 * v198 + 550184 - 969 * ((4432371 * (776 * v198 + 550184)) >> 32))) ^ v9)) ^ ((*(v29 + (776 * v199 + 550184 - 969 * ((4432371 * (776 * v199 + 550184)) >> 32))) ^ v9) << 8);
  v201 = (v187 >> 8) & 0xF0 | (v144 >> 12);
  v202 = 776 * (((2 * v201) & 0x18A) + (v201 ^ 0x2C5));
  v203 = 776 * ((v187 >> 12) & 0xF0 | HIWORD(v144) & 0xF) + 550184;
  v204 = v187 ^ ((*(v29 + v192) ^ v9) << 24);
  v205 = 776 * (HIWORD(v187) & 0xF0 | (v142 >> 12)) + 550184;
  v206 = 776 * ((v204 >> 20) & 0xF0 | HIWORD(v142) & 0xF) + 550184;
  v207 = 776 * (((v204 ^ ((*(v29 + (v196 - 969 * ((4432371 * v196) >> 32))) ^ 0xFFFFFFFD) << 28)) >> 24) & 0xF0 | (v143 >> 20) & 0xF) + 550184;
  v208 = v200 ^ ((*(v29 + (v202 - 969 * ((4432371 * v202) >> 32))) ^ v9) << 12);
  v209 = v208 ^ ((*(v29 + (v203 - 969 * ((4432371 * v203) >> 32))) ^ v9) << 16);
  v210 = *(v29 + (v205 - 969 * ((4432371 * v205) >> 32))) ^ v9;
  v211 = *(v29 + (v206 - 969 * ((4432371 * v206) >> 32))) ^ v9;
  LODWORD(STACK[0x56C]) = v209 ^ v9;
  v212 = v209 ^ v9 ^ (v210 << 20);
  v213 = v212 ^ (v211 << 24);
  v214 = 776 * ((v213 ^ ((*(v29 + (v207 - 969 * ((4432371 * v207) >> 32))) ^ 0xFFFFFFFD) << 28)) >> 28) + 204088;
  LODWORD(STACK[0x388]) = ((((((*(v29 + (776 * (HIBYTE(v213) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v213) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v214 - 969 * ((4432371 * v214) >> 32))) ^ v9) << 12) | *(v29 + (776 * (HIWORD(v209) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIWORD(v209) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v212 >> 20) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v212 >> 20) & 0xF) + 204088)) >> 32))) ^ v9) << 12) | *(v29 + (776 * ((v200 >> 8) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v200 >> 8) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v208 >> 12) + 204088 - 969 * ((4432371 * (776 * (v208 >> 12) + 204088)) >> 32))) ^ v9) << 12);
  v215 = (LODWORD(STACK[0x3F8]) ^ 0xF2D3FFA8) & (2 * (STACK[0x3F8] & 0xF49BFF21)) ^ STACK[0x3F8] & 0xF49BFF21;
  v216 = ((2 * (LODWORD(STACK[0x3F8]) ^ 0x3BF21FEA)) ^ 0x9ED3C196) & (LODWORD(STACK[0x3F8]) ^ 0x3BF21FEA) ^ (2 * (LODWORD(STACK[0x3F8]) ^ 0x3BF21FEA)) & 0xCF69E0CA;
  v217 = (v216 ^ 0x8641C080) & (4 * v215) ^ v215;
  v218 = ((4 * (v216 ^ LODWORD(STACK[0x354]))) ^ 0x3DA7832C) & (v216 ^ LODWORD(STACK[0x354])) ^ (4 * (v216 ^ LODWORD(STACK[0x354]))) & 0xCF69E0C8;
  v219 = (v218 ^ 0xD218000) & (16 * v217) ^ v217;
  v220 = ((16 * (v218 ^ 0xC24860C3)) ^ 0xF69E0CB0) & (v218 ^ 0xC24860C3) ^ (16 * (v218 ^ 0xC24860C3)) & 0xCF69E0C0;
  v221 = v219 ^ 0xCF69E0CB ^ (v220 ^ 0xC6080000) & (v219 << 8);
  v222 = (v221 << 16) & 0x4F690000 ^ v221 ^ ((v221 << 16) ^ 0x60CB0000) & (((v220 ^ 0x961E04B) << 8) & 0x4F690000 ^ 0x6090000 ^ (((v220 ^ 0x961E04B) << 8) ^ 0x69E00000) & (v220 ^ 0x961E04B));
  v223 = ((LODWORD(STACK[0x3F8]) ^ 0xC77831F9) + 870567642) ^ LODWORD(STACK[0x3F8]) ^ ((LODWORD(STACK[0x3F8]) ^ 0xA1B97F77) + 1428324440) ^ ((LODWORD(STACK[0x3F8]) ^ 0x965EF1AE) + 1657081487) ^ ((LODWORD(STACK[0x3F8]) ^ 0xFBFBBFFF) + 257966304) ^ LODWORD(STACK[0x4A0]);
  v224 = 2 * (STACK[0x4A0] & (LODWORD(STACK[0x3F8]) ^ (2 * v222) ^ 0x6ADA3EB7));
  v225 = (((v223 ^ 0xF0EC50FE) + 991248713) ^ ((v223 ^ 0xA68C4555) + 1836405988) ^ ((v223 ^ 0x5D041574) - 1761803069)) - 1555871247 + (((v224 ^ 0x5BF04D0D) - 940578390) ^ ((v224 ^ 0xDDE6BBAA) + 1106845455) ^ ((v224 ^ 0x8616F6A7) + 436818436));
  v226 = ((((*(v29 + (776 * (HIBYTE(v225) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v225) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v225 >> 28) + 531560 - 969 * ((4432371 * (776 * (v225 >> 28) + 531560)) >> 32))) ^ v9) << 12) | *(v29 + (776 * (HIWORD(v225) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v225) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v225 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v225 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12);
  LODWORD(STACK[0x4A0]) = v225;
  v227 = v226 | *(v29 + (-1998446088 * (((((v225 >> 8) & 0xF) - 2 * (((v225 >> 8) & 0xF) + 685) + 44) | (((v225 >> 8) & 0xF) + 685)) & 0x5F) + 873818112) * (((v225 >> 8) & 0xF) + 685) % 0x3C9) ^ v9;
  v228 = (v227 << 8) ^ ((*(v29 + (776 * (v225 >> 12) + 531560 - 969 * ((4432371 * (776 * (v225 >> 12) + 531560)) >> 32))) ^ v9) << 12);
  v229 = LODWORD(STACK[0x3E8]) - 1668384471;
  LODWORD(STACK[0x36C]) = v229;
  v230 = STACK[0x3A8];
  v231 = v229 - LODWORD(STACK[0x3A8]);
  v232 = *(v29 + (776 * (v225 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v225 & 0xF) + 531560)) >> 32))) ^ v9;
  v233 = (v228 | v232) ^ (16 * (*(v29 + (776 * (v225 >> 4) + 531560 - 969 * ((4432371 * (776 * (v225 >> 4) + 531560)) >> 32))) ^ v9));
  v234 = ((*(v29 + (776 * (HIBYTE(v231) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v231) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v231 >> 28) + 531560 - 969 * ((4432371 * (776 * (v231 >> 28) + 531560)) >> 32))) ^ v9) << 12);
  v235 = ((((v231 >> 12) + 685) | (338 - (v231 >> 12))) & 0x308) * ((v231 >> 12) + 685);
  v236 = ((v234 | *(v29 + (776 * (HIWORD(v231) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v231) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v231 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v231 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12);
  v237 = 776 * (v231 >> 4) + 531560 - 969 * ((4432371 * (776 * (v231 >> 4) + 531560)) >> 32);
  v238 = ((v236 | *(v29 + (776 * ((v231 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v231 >> 8) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v235 - 969 * ((4432371 * v235) >> 32))) ^ v9) << 12);
  v239 = *(v29 + (776 * (v231 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v231 & 0xF) + 531560)) >> 32))) ^ v9;
  LOBYTE(v235) = *(v29 + v237) ^ ((v238 | v239) >> 4);
  v240 = v232 & 0xF;
  v241 = 776 * (v240 | (16 * (v239 & 0xF)));
  v242 = v241 - 969 * ((4432371 * v241) >> 32);
  v243 = 776 * (*(v29 + (v241 + 273152 - 969 * ((4432371 * (v241 + 273152)) >> 32))) ^ v153);
  v244 = v243 + 273152 - 969 * ((4432371 * (v243 + 273152)) >> 32);
  v245 = *(v29 + (v243 - 969 * ((4432371 * v243) >> 32))) >> 4;
  v246 = 776 * (((v245 ^ 0xB) + ((2 * ((v245 ^ 0xB | 0x7D) ^ v245)) ^ 0x13) - 66) ^ *(v29 + v242)) + 273152;
  LOBYTE(v235) = v235 ^ v9;
  v247 = 776 * ((v233 >> 4) | (16 * (v235 & 0xF)));
  v248 = v247 - 969 * ((4432371 * v247) >> 32);
  v249 = 776 * (*(v29 + (v247 + 273152 - 969 * ((4432371 * (v247 + 273152)) >> 32))) ^ (16 * (*(v29 + (v246 - 969 * ((4432371 * v246) >> 32))) ^ v9)) ^ v9);
  v250 = v249 + 273152 - 969 * ((4432371 * (v249 + 273152)) >> 32);
  v251 = *(v29 + (v249 - 969 * ((4432371 * v249) >> 32))) >> 4;
  v252 = 776 * (((v251 ^ 0xB) + ((2 * ((v251 ^ 0xB | 0x7D) ^ v251)) ^ 0x13) - 66) ^ *(v29 + v248)) + 273152;
  v253 = 776 * (v235 & 0xF0 | (v233 >> 8) & 0xF);
  v254 = v253 - 969 * ((4432371 * v253) >> 32);
  v255 = 776 * (*(v29 + (v253 + 273152 - 969 * ((4432371 * (v253 + 273152)) >> 32))) ^ (16 * (*(v29 + (v252 - 969 * ((4432371 * v252) >> 32))) ^ v9)) ^ v9);
  v256 = v255 + 273152 - 969 * ((4432371 * (v255 + 273152)) >> 32);
  v257 = *(v29 + (v255 - 969 * ((4432371 * v255) >> 32))) >> 4;
  v258 = 776 * (((v257 ^ 0xB) + ((2 * ((v257 ^ 0xB | 0x7D) ^ v257)) ^ 0x13) - 66) ^ *(v29 + v254)) + 273152;
  v259 = 776 * ((v238 >> 8) & 0xF0 | (v228 >> 12));
  v260 = *(v29 + (v259 + 273152 - 969 * ((4432371 * (v259 + 273152)) >> 32)));
  v261 = 776 * (__ROR4__(((v260 >> 3) ^ 0x17 | ((v260 ^ 0xFFFFFFFD) << 29)) ^ (2 * (*(v29 + (v258 - 969 * ((4432371 * v258) >> 32))) ^ v9)) ^ 0x213E7AA6, 29) ^ 0x9F3D531);
  v262 = (v261 + 273152) % 0x3C9;
  v263 = *(v29 + v261 % 0x3C9) >> 4;
  v264 = 776 * (((v263 ^ 0xB) + ((2 * ((v263 ^ 0xB | 0x7D) ^ v263)) ^ 0x13) - 66) ^ *(v29 + (v259 - 969 * ((4432371 * v259) >> 32)))) + 273152;
  v265 = 776 * ((v238 >> 12) & 0xF0 | HIWORD(v228) & 0xF);
  v266 = v265 - 969 * ((4432371 * v265) >> 32);
  v267 = 776 * (*(v29 + (v265 + 273152 - 969 * ((4432371 * (v265 + 273152)) >> 32))) ^ (16 * (*(v29 + (v264 - 969 * ((4432371 * v264) >> 32))) ^ v9)) ^ v9);
  v268 = v267 + 273152 - 969 * ((4432371 * (v267 + 273152)) >> 32);
  v269 = *(v29 + (v267 - 969 * ((4432371 * v267) >> 32))) >> 4;
  v270 = 776 * (((v269 ^ 0xB) + ((2 * ((v269 ^ 0xB | 0x7D) ^ v269)) ^ 0x13) - 66) ^ *(v29 + v266)) + 273152;
  v271 = 776 * ((v236 >> 8) & 0xF0 | (v226 >> 12));
  v272 = v271 - 969 * ((4432371 * v271) >> 32);
  v273 = 776 * (*(v29 + (v271 + 273152 - 969 * ((4432371 * (v271 + 273152)) >> 32))) ^ (16 * (*(v29 + (v270 - 969 * ((4432371 * v270) >> 32))) ^ v9)) ^ v9);
  v274 = v273 + 273152 - 969 * ((4432371 * (v273 + 273152)) >> 32);
  v275 = (*(v29 + (v273 - 969 * ((4432371 * v273) >> 32))) >> 4) ^ 0xB;
  v276 = 776 * ((v275 - ((2 * v275) & 0xFB) - 67) ^ *(v29 + v272)) + 273152;
  v277 = (v236 >> 12) & 0xF0 | HIWORD(v226) & 0xF;
  v278 = (((671 - v277) ^ (v277 + 352)) & 0x308) * (v277 + 352);
  v279 = 776 * (*(v29 + (v278 - 969 * ((4432371 * v278) >> 32))) ^ (16 * (*(v29 + (v276 - 969 * ((4432371 * v276) >> 32))) ^ v9)) ^ v9);
  v280 = v279 + 273152 - 969 * ((4432371 * (v279 + 273152)) >> 32);
  v281 = *(v29 + (v279 - 969 * ((4432371 * v279) >> 32))) >> 4;
  v282 = 776 * (((v281 ^ 0xB) + ((2 * ((v281 ^ 0xB | 0x7D) ^ v281)) ^ 0x13) - 66) ^ *(v29 + (776 * v277 - 969 * ((4432371 * (776 * v277)) >> 32)))) + 273152;
  v283 = 776 * ((v234 >> 8) & 0xF0 | (v227 >> 20) & 0xF) + 273152;
  v284 = 776 * (*(v29 + (v283 - 969 * ((4432371 * v283) >> 32))) ^ (16 * (*(v29 + (v282 - 969 * ((4432371 * v282) >> 32))) ^ v9)) ^ v9) + 273152;
  v285 = *(v29 + v262) ^ v9;
  v286 = ((*(v29 + v268) ^ v9) << 16) ^ (v285 << 12);
  LOBYTE(v281) = *(v29 + v244);
  v287 = 776 * (v240 & 0xFFFFFF0F | (16 * ((v281 ^ v9) & 0xF))) + 550184;
  LOBYTE(v240) = *(v29 + v250) ^ v9;
  LOBYTE(v256) = *(v29 + v256) ^ v9;
  v288 = ((v281 ^ v9) ^ (16 * v240)) & 0xF0;
  v289 = (v240 ^ (16 * v256)) & 0xF0 | (v233 >> 8) & 0xF;
  v290 = 776 * (v288 & 0xFFFFFFF0 | (v233 >> 4)) + 550184;
  v291 = 776 * v289 + 550184 - 969 * ((4432371 * (776 * v289 + 550184)) >> 32);
  v292 = 776 * (((v291 & 0xF ^ 0xF) + (v291 & 0xF)) & (v228 >> 12) ^ (v256 ^ (16 * v285)) & 0xF0) + 550184;
  v293 = 776 * ((v286 >> 12) & 0xF0 | HIWORD(v228) & 0xF) + 550184;
  v294 = (v286 ^ ((*(v29 + v274) ^ v9) << 20) ^ ((*(v29 + v280) ^ v9) << 24) ^ ((*(v29 + (v284 - 969 * ((4432371 * v284) >> 32))) ^ 0xFFFFFFFD) << 28)) >> 16 >> ((v281 & 4 ^ 4) + (v281 & 4));
  v295 = 776 * ((v226 >> 12) & 0xFFFFFF0F | (16 * (v294 & 0xF))) + 550184;
  v296 = 776 * (v294 & 0xF0 | HIWORD(v226) & 0xF) + 550184;
  v297 = 776 * ((v294 >> 4) & 0xF0 | (v227 >> 20) & 0xF) + 550184;
  v298 = *(v29 + (v287 - 969 * ((4432371 * v287) >> 32)));
  LODWORD(STACK[0x37C]) = v298;
  v299 = *(v29 + v291);
  v300 = v298 ^ (16 * (*(v29 + (v290 - 969 * ((4432371 * v290) >> 32))) ^ v9)) ^ v9;
  LODWORD(STACK[0x380]) = v300;
  v301 = v300 ^ ((v299 ^ v9) << 8);
  v302 = v301 ^ ((*(v29 + v292 % 0x3C9) ^ v9) << 12);
  v303 = v302 ^ ((*(v29 + (v293 - 969 * ((4432371 * v293) >> 32))) ^ v9) << 16);
  v304 = v303 ^ ((*(v29 + (v295 - 969 * ((4432371 * v295) >> 32))) ^ v9) << 20);
  v305 = v304 ^ ((*(v29 + (v296 - 969 * ((4432371 * v296) >> 32))) ^ v9) << 24);
  v306 = 776 * ((v305 ^ ((*(v29 + (v297 - 969 * ((4432371 * v297) >> 32))) ^ 0xFFFFFFFD) << 28)) >> 28) + 204088;
  LODWORD(STACK[0x378]) = ((((((*(v29 + (776 * (HIBYTE(v305) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v305) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v306 - 969 * ((4432371 * v306) >> 32))) ^ v9) << 12) | *(v29 + (776 * (HIWORD(v303) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIWORD(v303) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v304 >> 20) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v304 >> 20) & 0xF) + 204088)) >> 32))) ^ v9) << 12) | *(v29 + (776 * ((v301 >> 8) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v301 >> 8) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v302 >> 12) + 204088 - 969 * ((4432371 * (776 * (v302 >> 12) + 204088)) >> 32))) ^ v9) << 12);
  v307 = LODWORD(STACK[0x40C]) + 1955212092 + LODWORD(STACK[0x45C]);
  v308 = v307;
  LODWORD(STACK[0x45C]) = v307;
  v309 = *(v29 + (388 * ((v307 >> 27) & 0x1E) + 531560 - 969 * ((4432371 * (388 * ((v307 >> 27) & 0x1E) + 531560)) >> 32)));
  HIDWORD(v310) = (((*(v29 + (776 * (HIWORD(v308) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v308) & 0xF) + 531560)) >> 32))) ^ v9 ^ ((*(v29 + (776 * (HIBYTE(v307) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v307) & 0xF) + 531560)) >> 32))) ^ (16 * (v309 ^ v9)) ^ v9) << ((v309 & 8 ^ 8) + (v309 & 8)))) << 8) ^ ((*(v29 + (776 * ((v308 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v308 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12) | *(v29 + (776 * ((v308 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v308 >> 8) & 0xF) + 531560)) >> 32))) ^ v9) ^ (16 * (*(v29 + (776 * (v308 >> 12) + 531560 - 969 * ((4432371 * (776 * (v308 >> 12) + 531560)) >> 32))) ^ v9));
  LODWORD(v310) = HIDWORD(v310);
  v311 = LODWORD(STACK[0x414]) - v230 - 1914476809;
  v312 = ((((*(v29 + (776 * (HIBYTE(v311) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v311) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v311 >> 28) + 531560 - 969 * ((4432371 * (776 * (v311 >> 28) + 531560)) >> 32))) ^ v9) << 12) | *(v29 + (776 * (HIWORD(v311) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v311) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v311 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v311 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12);
  v313 = 776 * ((LOWORD(STACK[0x414]) - v230 + 26359) >> 12) + 531560;
  LOBYTE(v295) = *(v29 + (776 * (v311 >> 4) + 531560 - 969 * ((4432371 * (776 * (v311 >> 4) + 531560)) >> 32)));
  v314 = v312 | *(v29 + (776 * ((v311 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v311 >> 8) & 0xF) + 531560)) >> 32))) ^ v9;
  v315 = (v314 << 8) ^ ((*(v29 + (v313 - 969 * ((4432371 * v313) >> 32))) ^ v9) << 12);
  v316 = *(v29 + (776 * (v311 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v311 & 0xF) + 531560)) >> 32))) ^ v9;
  LOBYTE(v295) = v295 ^ ((v315 | v316) >> 4);
  HIDWORD(v310) = ((v310 >> 5) & 0xF807FFFF | ((*(v29 + (776 * (v308 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v308 & 0xF) + 531560)) >> 32))) ^ v9) << 19)) ^ 0x6E7A83B6;
  LODWORD(v310) = HIDWORD(v310);
  v317 = v310 >> 19;
  v318 = v317 ^ (16 * (*(v29 + (776 * (v308 >> 4) + 531560 - 969 * ((4432371 * (776 * (v308 >> 4) + 531560)) >> 32))) ^ v9));
  v319 = v318 ^ 0x5076CDCF;
  v320 = (v318 ^ 0x5076CDCF) & 0xF;
  v321 = 776 * (v320 | (16 * (v316 & 0xF)));
  v322 = *(v29 + (v321 + 273152 - 969 * ((4432371 * (v321 + 273152)) >> 32))) ^ LODWORD(STACK[0x458]);
  v323 = (((((v318 ^ 0x5076CDCF) & 0x16) + (v318 & 0x16 ^ 0x10)) & 0x28) + 776) * (v322 + 352);
  v324 = *(v29 + (776 * v322 - 969 * ((4432371 * (776 * v322)) >> 32))) >> 4;
  v325 = 776 * (((v324 ^ 0xB) + ((2 * ((v324 ^ 0xB | 0x7D) ^ v324)) ^ 0x13) - 66) ^ *(v29 + (v321 - 969 * ((4432371 * v321) >> 32)))) + 273152;
  LOBYTE(v324) = v295 ^ v9;
  v326 = 776 * ((v319 >> 4) | (16 * ((v295 ^ v9) & 0xF)));
  v327 = 776 * (*(v29 + (v326 + 273152 - 969 * ((4432371 * (v326 + 273152)) >> 32))) ^ (16 * (*(v29 + (v325 - 969 * ((4432371 * v325) >> 32))) ^ v9)) ^ v9);
  v328 = v327 + 273152 - 969 * ((4432371 * (v327 + 273152)) >> 32);
  v329 = (*(v29 + (v327 - 969 * ((4432371 * v327) >> 32))) >> 4) ^ 0xB;
  v330 = 776 * ((v329 - ((2 * v329) & 0xFB) - 67) ^ *(v29 + (v326 - 969 * ((4432371 * v326) >> 32)))) + 273152;
  v331 = 776 * (v324 & 0xF0 | (v319 >> 8) & 0xF);
  v332 = v331 - 969 * ((4432371 * v331) >> 32);
  v333 = 776 * (*(v29 + (v331 + 273152 - 969 * ((4432371 * (v331 + 273152)) >> 32))) ^ (16 * (*(v29 + (v330 - 969 * ((4432371 * v330) >> 32))) ^ v9)) ^ v9);
  v334 = v333 + 273152 - 969 * ((4432371 * (v333 + 273152)) >> 32);
  v335 = (*(v29 + (v333 - 969 * ((4432371 * v333) >> 32))) >> 4) ^ 0xB;
  v336 = 776 * ((v335 - ((2 * v335) & 0xFB) - 67) ^ *(v29 + v332)) + 273152;
  v337 = 776 * ((v315 >> 8) & 0xF0 | (v319 >> 12));
  v338 = 776 * (*(v29 + (v337 + 273152 - 969 * ((4432371 * (v337 + 273152)) >> 32))) ^ (16 * (*(v29 + (v336 - 969 * ((4432371 * v336) >> 32))) ^ v9)) ^ v9);
  v339 = v338 + 273152 - 969 * ((4432371 * (v338 + 273152)) >> 32);
  v340 = *(v29 + (v338 - 969 * ((4432371 * v338) >> 32))) >> 4;
  v341 = 776 * (((v340 ^ 0xB) + ((2 * ((v340 ^ 0xB | 0x7D) ^ v340)) ^ 0x13) - 66) ^ *(v29 + (v337 - 969 * ((4432371 * v337) >> 32)))) + 273152;
  v342 = (v315 >> 12) & 0xF0 | HIWORD(v319) & 0xF;
  v343 = *(v29 + (776 * v342 + 273152 - 969 * ((4432371 * (776 * v342 + 273152)) >> 32)));
  v344 = ((((v343 ^ 0xB0) + (~v343 & 0xD) + (v343 & 0xF2 ^ 0x4F) + 1) ^ 5) & 0x3FF | 0x308) * v342;
  v345 = 776 * (v343 ^ (16 * (*(v29 + (v341 - 969 * ((4432371 * v341) >> 32))) ^ v9)) ^ v9);
  v346 = v345 + 273152 - 969 * ((4432371 * (v345 + 273152)) >> 32);
  v347 = (*(v29 + (v345 - 969 * ((4432371 * v345) >> 32))) >> 4) ^ 0xB;
  v348 = 776 * ((v347 - ((2 * v347) & 0xFB) - 67) ^ *(v29 + (v344 - 969 * ((4432371 * v344) >> 32)))) + 273152;
  v349 = 776 * ((v312 >> 8) & 0xF0 | (v319 >> 20) & 0xF);
  v350 = v349 - 969 * ((4432371 * v349) >> 32);
  v351 = *(v29 + (v349 + 273152 - 969 * ((4432371 * (v349 + 273152)) >> 32))) ^ (16 * (*(v29 + (v348 - 969 * ((4432371 * v348) >> 32))) ^ v9)) ^ v9;
  v352 = 776 * v351 - 969 * ((4432371 * (776 * v351)) >> 32);
  v353 = 776 * ((v351 ^ ((v350 & 0x160 ^ 0x160) + (v350 & 0x160))) + 2 * (v351 & ((v350 & 0x160 ^ 0x160) + (v350 & 0x160))));
  v354 = *(v29 + v352) >> 4;
  v355 = ((((v354 ^ 0xB) + ((2 * ((v354 ^ 0xB | 0x7D) ^ v354)) ^ 0x13) - 66) ^ *(v29 + v350)) + 352) * (((169 - LODWORD(STACK[0x584])) ^ (LODWORD(STACK[0x584]) + 854)) & 0x308);
  v356 = *(v29 + (v355 - 969 * ((4432371 * v355) >> 32)));
  v357 = 776 * (((((v314 << 8) >> 24) & 0xF) << (4 - ((!(v356 & 1) + (v356 & 1)) & 2))) ^ HIBYTE(v317) & 0xF);
  v358 = v357 - 969 * ((4432371 * v357) >> 32);
  v359 = 776 * (*(v29 + (v357 + 273152 - 969 * ((4432371 * (v357 + 273152)) >> 32))) ^ (16 * (v356 ^ v9)) ^ v9);
  v360 = v359 + 273152 - 969 * ((4432371 * (v359 + 273152)) >> 32);
  v361 = (*(v29 + (v359 - 969 * ((4432371 * v359) >> 32))) >> 4) ^ 0xB;
  v362 = 776 * ((v361 - ((2 * v361) & 0xFB) - 67) ^ *(v29 + v358)) + 273152;
  v363 = 776 * (BYTE2(v314) & 0xF0 | (v319 >> 28)) + 273152;
  v364 = 776 * (*(v29 + (v363 - 969 * ((4432371 * v363) >> 32))) ^ (16 * (*(v29 + (v362 - 969 * ((4432371 * v362) >> 32))) ^ v9)) ^ v9) + 273152;
  LOBYTE(v362) = *(v29 + (v323 - 969 * ((4432371 * v323) >> 32))) ^ v9;
  v365 = 776 * (v320 & 0xFFFFFF0F | (16 * (v362 & 0xF))) + 550184;
  LOBYTE(v320) = *(v29 + v328) ^ v9;
  LOBYTE(v326) = *(v29 + v334);
  v366 = 776 * ((v362 ^ (16 * v320)) & 0xF0 | (v319 >> 4)) + 550184;
  LOBYTE(v326) = v326 ^ v9;
  v367 = 776 * ((v320 ^ (16 * v326)) & 0xF0 | (v319 >> 8) & 0xF) + 550184;
  LOBYTE(v339) = *(v29 + v339) ^ v9;
  v368 = 776 * ((v326 ^ (16 * v339)) & 0xF0 | (v319 >> 12)) + 550184;
  LOBYTE(v346) = *(v29 + v346) ^ v9;
  v369 = 776 * ((v339 ^ (16 * v346)) & 0xF0 | HIWORD(v319) & 0xF) + 550184;
  LOBYTE(v353) = *(v29 + v353 % 0x3C9) ^ v9;
  v370 = (((v346 ^ (16 * v353)) & 0xF0 | (v319 >> 20) & 0xF) + 709) * ((HIWORD(v319) & 0x308 ^ 0x308) + (HIWORD(v319) & 0x308));
  LOBYTE(v360) = *(v29 + v360) ^ v9;
  v371 = (v360 ^ (16 * (*(v29 + (v364 - 969 * ((4432371 * v364) >> 32))) ^ 0xFD))) & 0xF0 | (v319 >> 28);
  v372 = *(v29 + (v365 - 969 * ((4432371 * v365) >> 32)));
  LODWORD(STACK[0x3A8]) = v372;
  v373 = 776 * ((v353 ^ (16 * v360)) & 0xF0 | HIBYTE(v317) & 0xF) + 550184;
  v374 = 776 * v371 + 550184 - 969 * ((4432371 * (776 * v371 + 550184)) >> 32);
  v375 = v372 ^ (16 * (*(v29 + (v366 - 969 * ((4432371 * v366) >> 32))) ^ v9)) ^ v9;
  v376 = v375 ^ ((*(v29 + (v367 - 969 * ((4432371 * v367) >> 32))) ^ v9) << 8);
  v377 = v376 ^ ((*(v29 + (v368 - 969 * ((4432371 * v368) >> 32))) ^ v9) << 12);
  v378 = v377 ^ ((*(v29 + (v369 - 969 * ((4432371 * v369) >> 32))) ^ v9) << 16);
  v379 = v378 ^ ((*(v29 + (v370 - 969 * ((4432371 * v370) >> 32))) ^ v9) << 20);
  v380 = v379 ^ ((*(v29 + (v373 - 969 * ((4432371 * v373) >> 32))) ^ v9) << 24);
  v381 = 776 * ((v380 ^ ((*(v29 + v374) ^ 0xFFFFFFFD) << 28)) >> 28) + 204088;
  v382 = *(v29 + (776 * (v375 >> 4) + 204088 - 969 * ((4432371 * (776 * (v375 >> 4) + 204088)) >> 32)));
  LODWORD(STACK[0x374]) = ((((((*(v29 + (776 * (HIBYTE(v380) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v380) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v381 - 969 * ((4432371 * v381) >> 32))) ^ v9) << 12) | *(v29 + (776 * (HIWORD(v378) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIWORD(v378) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v379 >> 20) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v379 >> 20) & 0xF) + 204088)) >> 32))) ^ v9) << 12) | *(v29 + (776 * ((v376 >> 8) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v376 >> 8) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v377 >> 12) + 204088 - 969 * ((4432371 * (776 * (v377 >> 12) + 204088)) >> 32))) ^ v9) << 12);
  LODWORD(STACK[0x454]) ^= 0xA97E851F ^ (16 * (v382 ^ v9));
  v383 = (*(v29 + (LODWORD(STACK[0x4E0]) - 969 * ((4432371 * LODWORD(STACK[0x4E0])) >> 32))) >> 4) ^ 0xB;
  v384 = 776 * ((v383 - ((2 * v383) & 0xFB) - 67) ^ *(v29 + (LODWORD(STACK[0x4EC]) - 969 * ((4432371 * LODWORD(STACK[0x4EC])) >> 32)))) + 273152;
  v385 = 776 * ((LODWORD(STACK[0x500]) >> 8) & 0xF0 | (LODWORD(STACK[0x504]) >> 12));
  v386 = *(v29 + (v385 + 273152 - 969 * ((4432371 * (v385 + 273152)) >> 32))) ^ (16 * (*(v29 + (v384 - 969 * ((4432371 * v384) >> 32))) ^ v9)) ^ v9;
  v387 = *(v29 + (776 * v386 - 969 * ((4432371 * (776 * v386)) >> 32))) >> 4;
  v388 = 776 * (((v387 ^ 0xB) + ((2 * ((v387 ^ 0xB | 0x7D) ^ v387)) ^ 0x13) - 66) ^ *(v29 + (v385 - 969 * ((4432371 * v385) >> 32)))) + 273152;
  v389 = 776 * ((LODWORD(STACK[0x500]) >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x504])) & 0xF);
  v390 = 776 * (*(v29 + (v389 + 273152 - 969 * ((4432371 * (v389 + 273152)) >> 32))) ^ (16 * (*(v29 + (v388 - 969 * ((4432371 * v388) >> 32))) ^ v9)) ^ v9);
  v391 = v390 - 969 * ((4432371 * v390) >> 32);
  v392 = ((*(v29 + (v390 + 273152 - 969 * ((4432371 * (v390 + 273152)) >> 32))) ^ v9) << 16) ^ ((*(v29 + (776 * v386 + 273152 - 969 * ((4432371 * (776 * v386 + 273152)) >> 32))) ^ v9) << 12);
  v393 = (*(v29 + v391) >> 4) ^ 0xB;
  v394 = 776 * ((v386 & 0x160 ^ 0x160) + (v386 & 0x160) + ((v393 - ((2 * v393) & 0xFB) - 67) ^ *(v29 + (v389 - 969 * ((4432371 * v389) >> 32)))));
  v395 = 776 * ((LODWORD(STACK[0x508]) >> 8) & 0xF0 | (LODWORD(STACK[0x518]) >> 12));
  v396 = 776 * (*(v29 + (v395 + 273152 - 969 * ((4432371 * (v395 + 273152)) >> 32))) ^ (16 * (*(v29 + (v394 - 969 * ((4432371 * v394) >> 32))) ^ v9)) ^ v9);
  v397 = v396 + 273152 - 969 * ((4432371 * (v396 + 273152)) >> 32);
  v398 = *(v29 + (v396 - 969 * ((4432371 * v396) >> 32))) >> 4;
  v399 = ((v398 ^ 0xB) + ((2 * ((v398 ^ 0xB | 0x7D) ^ v398)) ^ 0x13) - 66) ^ *(v29 + (v395 - 969 * ((4432371 * v395) >> 32)));
  v400 = 776 * ((LODWORD(STACK[0x508]) >> 12) & 0xF0 | HIBYTE(LODWORD(STACK[0x524])) & 0xF);
  v401 = *(v29 + (v400 + 273152 - 969 * ((4432371 * (v400 + 273152)) >> 32))) ^ (16 * (*(v29 + (776 * v399 + 273152 - 969 * ((4432371 * (776 * v399 + 273152)) >> 32))) ^ v9)) ^ v9;
  v402 = (((v401 + 352) | (671 - v401)) & 0x308) * (v401 + 352);
  v403 = (*(v29 + (776 * v401 - 969 * ((4432371 * (776 * v401)) >> 32))) >> 4) ^ 0xB;
  v404 = 776 * ((v403 - ((2 * v403) & 0xFB) - 67) ^ *(v29 + (v400 - 969 * ((4432371 * v400) >> 32)))) + 273152;
  v405 = 776 * (LODWORD(STACK[0x4B4]) ^ (16 * (*(v29 + (v404 - 969 * ((4432371 * v404) >> 32))) ^ v9)) ^ v9) + 273152;
  v406 = v405 - 969 * ((4432371 * v405) >> 32);
  v407 = 776 * (STACK[0x510] & 0xFFFFFF0F | (16 * (STACK[0x4B8] & 0xF))) + 550184;
  v408 = 776 * ((LODWORD(STACK[0x4C4]) >> 4) & 0xF0 | (LODWORD(STACK[0x4C0]) >> 8) & 0xF) + 550184;
  v409 = (LODWORD(STACK[0x4B0]) | ((*(v29 + v397) ^ v9) << 20)) ^ v392;
  v410 = 776 * ((v409 >> 8) & 0xF0 | (LODWORD(STACK[0x504]) >> 12)) + 550184;
  v411 = 776 * ((v392 >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x504])) & 0xF) + 550184;
  v412 = v411 - 969 * ((4432371 * v411) >> 32);
  v413 = v409 ^ ((*(v29 + (v402 - 969 * ((4432371 * v402) >> 32))) ^ v9) << 24);
  v414 = 776 * (HIWORD(v409) & 0xF0 | (LODWORD(STACK[0x518]) >> 12)) + 550184;
  v415 = *(v29 + (v414 - 969 * ((4432371 * v414) >> 32)));
  v416 = v413 ^ ((*(v29 + v406) ^ 0xFFFFFFFD) << 28);
  v417 = 776 * ((v415 & 0xF ^ 2 | v415 & 0xF ^ 0xD) & BYTE2(LODWORD(STACK[0x4E8])) | (v413 >> 20) & 0xF0) + 550184;
  v418 = v417 - 969 * ((4432371 * v417) >> 32);
  v419 = 776 * (HIBYTE(v416) & 0xF0 | (LODWORD(STACK[0x4E8]) >> 20) & 0xF) + 550184;
  v420 = v419 - 969 * ((4432371 * v419) >> 32);
  v421 = *(v29 + LODWORD(STACK[0x4DC])) ^ v9;
  v422 = (16 * v421) ^ ((*(v29 + (v408 - 969 * ((4432371 * v408) >> 32))) ^ v9) << 8);
  v423 = v422 ^ ((*(v29 + (v410 - 969 * ((4432371 * v410) >> 32))) ^ v9) << 12);
  v424 = v423 ^ ((*(v29 + v412) ^ v9) << 16);
  v425 = v424 ^ ((v415 ^ v9) << 20);
  v426 = v425 ^ ((*(v29 + v418) ^ v9) << 24);
  v427 = 776 * ((v426 ^ ((*(v29 + v420) ^ 0xFFFFFFFD) << 28)) >> 28) + 204088;
  v428 = 776 * (HIWORD(v424) & 0xF) + 204088;
  v429 = ((((*(v29 + (776 * (HIBYTE(v426) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v426) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v427 - 969 * ((4432371 * v427) >> 32))) ^ v9) << 12) | *(v29 + (v428 - 969 * ((4432371 * v428) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v425 >> 20) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v425 >> 20) & 0xF) + 204088)) >> 32))) ^ v9) << 12);
  v430 = ((((((v422 >> 8) & 0xF) + 263) & 0x108) + ((760 - ((v422 >> 8) & 0xF)) & 0x288)) & 0xFFFFFF7F) * (((v422 >> 8) & 0xF) + 263);
  v431 = *(v29 + (776 * (v423 >> 12) + 204088 - 969 * ((4432371 * (776 * (v423 >> 12) + 204088)) >> 32)));
  v432 = (16 * v421 - 32 * (v421 & 3) - 67) ^ *(v29 + (v407 - 969 * ((4432371 * v407) >> 32)));
  LODWORD(STACK[0x510]) = v432;
  v433 = *(v29 + (v430 - 969 * ((4432371 * v430) >> 32)));
  LODWORD(STACK[0x524]) = ((v429 | v433 ^ v9) << 8) ^ ((v431 ^ v9) << 12);
  LODWORD(STACK[0x518]) = LODWORD(STACK[0x384]) ^ 0xA78C8BEF ^ (16 * (*(v29 + (776 * (v432 >> 4) + 204088 - 969 * ((4432371 * (776 * (v432 >> 4) + 204088)) >> 32))) ^ v9));
  v434 = STACK[0x560];
  v435 = v433 ^ 0xB5;
  if (776 * (HIBYTE(v434) & 0xF) + 531560 == 969 * ((4432371 * (776 * (HIBYTE(v434) & 0xF) + 531560)) >> 32))
  {
    v435 = 8;
  }

  v436 = ((*(v29 + (776 * (HIWORD(v434) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v434) & 0xF) + 531560)) >> 32))) ^ v9 ^ ((*(v29 + (776 * (HIBYTE(v434) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v434) & 0xF) + 531560)) >> 32))) ^ (16 * (*(v29 + (776 * (v434 >> 28) + 531560 - 969 * ((4432371 * (776 * (v434 >> 28) + 531560)) >> 32))) ^ v9)) ^ v9) << (v435 & (v433 ^ 0x42) ^ (v433 ^ v9) & 8))) << 8) ^ ((*(v29 + (776 * ((v434 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v434 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12);
  v437 = v436 | *(v29 + (776 * ((v434 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v434 >> 8) & 0xF) + 531560)) >> 32))) ^ v9;
  v438 = (v437 << 8) ^ ((*(v29 + (776 * (v434 >> 12) + 531560 - 969 * ((4432371 * (776 * (v434 >> 12) + 531560)) >> 32))) ^ v9) << 12);
  v439 = (v438 | LODWORD(STACK[0x470])) ^ (16 * (*(v29 + (776 * (v434 >> 4) + 531560 - 969 * ((4432371 * (776 * (v434 >> 4) + 531560)) >> 32))) ^ v9));
  v440 = 776 * (HIBYTE(LODWORD(STACK[0x46C])) & 0xF) + 531560;
  v441 = 776 * ((LODWORD(STACK[0x46C]) >> 20) & 0xF) + 531560;
  v442 = 776 * (HIWORD(LODWORD(STACK[0x46C])) & 0xF) + 531560;
  v443 = ((*(v29 + (v440 - 969 * ((4432371 * v440) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (LODWORD(STACK[0x46C]) >> 28) + 531560 - 969 * ((4432371 * (776 * (LODWORD(STACK[0x46C]) >> 28) + 531560)) >> 32))) ^ v9) << 12);
  v444 = 776 * (LODWORD(STACK[0x46C]) >> 12) + 531560;
  v445 = ((v443 | *(v29 + (v442 - 969 * ((4432371 * v442) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v441 - 969 * ((4432371 * v441) >> 32))) ^ v9) << 12);
  v446 = 776 * (LODWORD(STACK[0x46C]) >> 4) + 531560;
  v447 = ((v445 | *(v29 + LODWORD(STACK[0x480])) ^ v9) << 8) ^ ((*(v29 + (v444 - 969 * ((4432371 * v444) >> 32))) ^ v9) << 12);
  v448 = (*(v29 + (LODWORD(STACK[0x47C]) - 969 * ((4432371 * LODWORD(STACK[0x47C])) >> 32))) >> 4) ^ 0xB;
  v449 = 776 * ((v448 - ((2 * v448) & 0xFB) - 67) ^ *(v29 + (LODWORD(STACK[0x488]) - 969 * ((4432371 * LODWORD(STACK[0x488])) >> 32)))) + 273152;
  LOBYTE(v448) = *(v29 + (v446 - 969 * ((4432371 * v446) >> 32))) ^ ((v447 | LODWORD(STACK[0x490])) >> 4) ^ v9;
  v450 = 776 * ((v439 >> 4) | (16 * (v448 & 0xF)));
  v451 = v450 - 969 * ((4432371 * v450) >> 32);
  v452 = 776 * (*(v29 + (v450 + 273152 - 969 * ((4432371 * (v450 + 273152)) >> 32))) ^ (16 * (*(v29 + (v449 - 969 * ((4432371 * v449) >> 32))) ^ v9)) ^ v9);
  v453 = v452 + 273152 - 969 * ((4432371 * (v452 + 273152)) >> 32);
  v454 = (*(v29 + (v452 - 969 * ((4432371 * v452) >> 32))) >> 4) ^ 0xB;
  v455 = 776 * ((v454 - ((2 * v454) & 0xFB) - 67) ^ *(v29 + v451)) + 273152;
  v456 = 776 * (v448 & 0xF0 | (v439 >> 8) & 0xF);
  v457 = 776 * (*(v29 + (v456 + 272183) % 0x3C9) ^ (16 * (*(v29 + (v455 - 969 * ((4432371 * v455) >> 32))) ^ v9)) ^ v9);
  v458 = v457 + 273152 - 969 * ((4432371 * (v457 + 273152)) >> 32);
  v459 = (*(v29 + (v457 - 969 * ((4432371 * v457) >> 32))) >> 4) ^ 0xB;
  v460 = 776 * ((v459 - ((2 * v459) & 0xFB) - 67) ^ *(v29 + (v456 - 969 * ((4432371 * v456) >> 32)))) + 273152;
  v461 = 776 * ((v447 >> 8) & 0xF0 | (v438 >> 12));
  v462 = 776 * (*(v29 + (v461 + 273152 - 969 * ((4432371 * (v461 + 273152)) >> 32))) ^ (16 * (*(v29 + (v460 - 969 * ((4432371 * v460) >> 32))) ^ v9)) ^ v9);
  v463 = v462 + 273152 - 969 * ((4432371 * (v462 + 273152)) >> 32);
  v464 = (*(v29 + (v462 - 969 * ((4432371 * v462) >> 32))) >> 4) ^ 0xB;
  v465 = 776 * ((v464 - ((2 * v464) & 0xFB) - 67) ^ *(v29 + (v461 - 969 * ((4432371 * v461) >> 32)))) + 273152;
  v466 = v465 - 969 * ((4432371 * v465) >> 32);
  v467 = ((*(v29 + v463) ^ v9) << 12) ^ ((*(v29 + v458) ^ v9) << 8);
  v468 = 776 * ((v447 >> 12) & 0xF0 | HIWORD(v438) & 0xF);
  v469 = *(v29 + (v468 + 273152 - 969 * ((4432371 * (v468 + 273152)) >> 32))) ^ (16 * (*(v29 + v466) ^ v9));
  v470 = v468 - 969 * ((4432371 * v468) >> 32);
  v471 = v469 ^ v9;
  v472 = 776 * v471 + 273152 - 969 * ((4432371 * (776 * v471 + 273152)) >> 32);
  if (v471 >= 2)
  {
    v473 = (776 * v471 - 969) % 0x3C9;
  }

  else
  {
    v473 = 776 * v471;
  }

  v474 = (*(v29 + v473) >> 4) ^ 0xB;
  v475 = 776 * ((v474 - ((2 * v474) & 0xFB) - 67) ^ *(v29 + v470)) + 273152;
  v476 = 776 * ((v445 >> 8) & 0xF0 | (v436 >> 12));
  v477 = *(v29 + (v476 + 273152 - 969 * ((4432371 * (v476 + 273152)) >> 32))) ^ (16 * (*(v29 + (v475 - 969 * ((4432371 * v475) >> 32))) ^ v9));
  v478 = *(v29 + (776 * (v477 ^ v9) - 969 * ((4432371 * (776 * (v477 ^ v9))) >> 32))) >> 4;
  v479 = ((*(v29 + 776 * (((2 * (v477 ^ v9)) & 0x2C0) + (v477 ^ 0x1DD)) % 0x3C9) ^ v9) << 20) ^ ((*(v29 + v472) ^ v9) << 16);
  v480 = 776 * (((v478 ^ 0xB) + ((2 * ((v478 ^ 0xB | 0x7D) ^ v478)) ^ 0x13) - 66) ^ *(v29 + (v476 - 969 * ((4432371 * v476) >> 32)))) + 273152;
  v481 = 776 * ((v445 >> 12) & 0xF0 | HIWORD(v436) & 0xF);
  v482 = v481 - 969 * ((4432371 * v481) >> 32);
  v483 = 776 * (*(v29 + (v481 + 273152 - 969 * ((4432371 * (v481 + 273152)) >> 32))) ^ (16 * (*(v29 + (v480 - 969 * ((4432371 * v480) >> 32))) ^ v9)) ^ v9);
  v484 = v483 + 273152 - 969 * ((4432371 * (v483 + 273152)) >> 32);
  v485 = (*(v29 + (v483 - 969 * ((4432371 * v483) >> 32))) >> 4) ^ 0xB;
  v486 = 776 * ((v485 - ((2 * v485) & 0xFB) - 67) ^ *(v29 + v482)) + 273152;
  v487 = 776 * ((v443 >> 8) & 0xF0 | (v437 >> 20) & 0xF) + 273152;
  v488 = 776 * (*(v29 + (v487 - 969 * ((4432371 * v487) >> 32))) ^ (16 * (*(v29 + (v486 - 969 * ((4432371 * v486) >> 32))) ^ v9)) ^ v9) + 273152;
  v489 = v488 - 969 * ((4432371 * v488) >> 32);
  v490 = *(v29 + LODWORD(STACK[0x4F0]));
  LOBYTE(v482) = (v490 & 4 ^ 4) + (v490 & 4);
  v491 = v490 ^ v9;
  v492 = v491 ^ (16 * (*(v29 + v453) ^ v9));
  v493 = 776 * (((v491 & 0xF) << v482) ^ LODWORD(STACK[0x4F8])) + 550184;
  v494 = 776 * (v492 & 0xF0 | (v439 >> 4)) + 550184;
  v495 = v494 - 969 * ((4432371 * v494) >> 32);
  v496 = v467 ^ v492;
  v497 = 776 * ((v495 & 0x2C5) + ((v439 >> 8) & 0xF) + (v495 & 0x2C5 ^ 0x2C5) + (((v467 ^ v492) >> 4) & 0xF0));
  v498 = 776 * ((v467 >> 8) & 0xF0 | (v438 >> 12)) + 550184;
  v499 = v479 ^ v496;
  v500 = v499 ^ ((*(v29 + v484) ^ v9) << 24);
  v501 = 776 * ((v499 >> 12) & 0xF0 | HIWORD(v438) & 0xF) + 550184;
  v502 = 776 * (HIWORD(v479) & 0xF0 | (v436 >> 12)) + 550184;
  v503 = v500 ^ ((*(v29 + v489) ^ 0xFFFFFFFD) << 28);
  v504 = (v500 >> 20) & 0xF0 | HIWORD(v436) & 0xF;
  v505 = ((*(v29 + (v502 - 969 * ((4432371 * v502) >> 32))) ^ v9) << 20) ^ ((*(v29 + (v501 - 969 * ((4432371 * v501) >> 32))) ^ v9) << 16);
  v506 = ((*(v29 + (v498 - 969 * ((4432371 * v498) >> 32))) ^ v9) << 12) ^ ((*(v29 + (v497 - 969 * ((4432371 * v497) >> 32))) ^ v9) << 8);
  v507 = 776 * (HIBYTE(v503) & 0xF0 | (v437 >> 20) & 0xF) + 550184;
  v508 = *(v29 + v493 % 0x3C9);
  LODWORD(STACK[0x504]) = v508;
  v509 = v508 ^ (16 * (*(v29 + v495) ^ v9)) ^ v9;
  v510 = v506 ^ v509;
  v511 = v505 ^ v506 ^ v509;
  v512 = v511 ^ ((*(v29 + (776 * v504 + 550184 - 969 * ((4432371 * (776 * v504 + 550184)) >> 32))) ^ v9) << 24);
  v513 = 776 * ((v512 ^ ((*(v29 + (v507 - 969 * ((4432371 * v507) >> 32))) ^ 0xFFFFFFFD) << 28)) >> 28) + 204088;
  LODWORD(STACK[0x500]) = ((((((*(v29 + (776 * (HIBYTE(v512) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v512) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v513 - 969 * ((4432371 * v513) >> 32))) ^ v9) << 12) | *(v29 + (776 * (HIWORD(v511) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIWORD(v511) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v505 >> 20) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v505 >> 20) & 0xF) + 204088)) >> 32))) ^ v9) << 12) | *(v29 + (776 * ((v510 >> 8) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v510 >> 8) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v506 >> 12) + 204088 - 969 * ((4432371 * (776 * (v506 >> 12) + 204088)) >> 32))) ^ v9) << 12);
  v514 = LODWORD(STACK[0x3F4]) - 1004323403 + LODWORD(STACK[0x570]);
  v515 = STACK[0x520];
  v516 = ((LODWORD(STACK[0x520]) ^ 0x29FA50F2) + 568561360) ^ ((LODWORD(STACK[0x520]) ^ 0xC74296D7) - 816101141);
  LODWORD(STACK[0x4F8]) = LODWORD(STACK[0x520]) ^ (16 * (*(v29 + (776 * (v509 >> 4) + 204088 - 969 * ((4432371 * (776 * (v509 >> 4) + 204088)) >> 32))) ^ v9));
  v517 = v516 ^ ((v515 ^ 0x3AB53B08) + 850191670);
  v518 = 776 * (v514 >> 12) + 531560 - 969 * ((4432371 * (776 * (v514 >> 12) + 531560)) >> 32);
  v519 = v514;
  v520 = 776 * ((v514 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v514 >> 8) & 0xF) + 531560)) >> 32);
  v521 = ((((*(v29 + (776 * (HIBYTE(v514) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v514) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * (v514 >> 28) + 531560 - 969 * ((4432371 * (776 * (v514 >> 28) + 531560)) >> 32))) ^ v9) << 12) | *(v29 + (776 * (HIWORD(v514) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v514) & 0xF) + 531560)) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v514 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v514 >> 20) & 0xF) + 531560)) >> 32))) ^ v9) << 12);
  v522 = v521 | *(v29 + v520) ^ v9;
  v523 = (v522 << 8) ^ ((*(v29 + v518) ^ v9) << 12);
  v524 = v519;
  LODWORD(STACK[0x4F0]) = v519;
  v525 = *(v29 + (776 * (v519 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v519 & 0xF) + 531560)) >> 32))) ^ v9;
  v526 = (v523 | v525) ^ (16 * (*(v29 + (776 * (v519 >> 4) + 531560 - 969 * ((4432371 * (776 * (v519 >> 4) + 531560)) >> 32))) ^ v9));
  v527 = STACK[0x394];
  LODWORD(STACK[0x520]) = v517 - LODWORD(STACK[0x394]);
  v528 = LODWORD(STACK[0x400]) - v527;
  v529 = 776 * (((v528 - 1287926694) >> 24) & 0xF) + 531560;
  v530 = ((*(v29 + (v529 - 969 * ((4432371 * v529) >> 32))) ^ v9) << 8) ^ ((*(v29 + (776 * ((v528 - 1287926694) >> 28) + 531560 - 969 * ((4432371 * (776 * ((v528 - 1287926694) >> 28) + 531560)) >> 32))) ^ v9) << 12);
  v531 = ((((((v528 - 1287926694) >> 20) & 0xF) + 685) | (338 - (((v528 - 1287926694) >> 20) & 0xF))) & 0x308) * ((((v528 - 1287926694) >> 20) & 0xF) + 685);
  v532 = 776 * (((v528 - 1287926694) >> 16) & 0xF) + 531560;
  v533 = 776 * ((v528 - 13222) >> 12) + 531560;
  v534 = ((v530 | *(v29 + (v532 - 969 * ((4432371 * v532) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v531 - 969 * ((4432371 * v531) >> 32))) ^ v9) << 12);
  v535 = (((338 - (((v528 - 1287926694) >> 8) & 0xF)) & 0x108) + (((((v528 - 1287926694) >> 8) & 0xF) + 685) & 0x208)) * ((((v528 - 1287926694) >> 8) & 0xF) + 685);
  v536 = 776 * ((v528 + 90) >> 4) + 531560;
  v537 = 776 * ((v528 - 38) & 0xF) + 531560;
  v538 = *(v29 + (v537 - 969 * ((4432371 * v537) >> 32)));
  v539 = ((v534 | *(v29 + (v535 - 969 * ((4432371 * v535) >> 32))) ^ v9) << 8) ^ ((*(v29 + (v533 - 969 * ((4432371 * v533) >> 32))) ^ v9) << 12);
  v540 = 776 * (v525 & 0xF | (16 * ((v538 ^ v9) & 0xF)));
  v541 = 776 * (*(v29 + (v540 + 273152 - 969 * ((4432371 * (v540 + 273152)) >> 32))) ^ LODWORD(STACK[0x458]));
  v542 = v541 + 273152 - 969 * ((4432371 * (v541 + 273152)) >> 32);
  v543 = *(v29 + (v541 - 969 * ((4432371 * v541) >> 32))) >> 4;
  v544 = v29;
  v545 = 776 * (((v543 ^ 0xB) + ((2 * ((v543 ^ 0xB | 0x7D) ^ v543)) ^ 0x13) - 66) ^ *(v29 + (v540 - 969 * ((4432371 * v540) >> 32)))) + 273152;
  LOBYTE(v536) = *(v29 + (v536 - 969 * ((4432371 * v536) >> 32))) ^ ((v539 | v538 ^ v9) >> 4) ^ v9;
  v546 = (v526 >> 4) | (16 * (v536 & 0xF));
  v547 = (v546 + 352) * ((v524 & 0x308 ^ 0x308) + (v524 & 0x308));
  v548 = 776 * (*(v29 + (v547 - 969 * ((4432371 * v547) >> 32))) ^ (16 * (*(v29 + (v545 - 969 * ((4432371 * v545) >> 32))) ^ v9)) ^ v9);
  v549 = v548 + 273152 - 969 * ((4432371 * (v548 + 273152)) >> 32);
  v550 = v548 - 969 * ((4432371 * v548) >> 32);
  v551 = (*(v29 + v550) >> 4) ^ 0xB;
  v552 = 776 * ((v550 & 0x160 ^ 0x160) + (v550 & 0x160) + ((v551 - ((2 * v551) & 0xFB) - 67) ^ *(v29 + (776 * v546 - 969 * ((4432371 * (776 * v546)) >> 32)))));
  v553 = 776 * (v536 & 0xF0 | (v526 >> 8) & 0xF);
  v554 = *(v544 + (v553 + 273152 - 969 * ((4432371 * (v553 + 273152)) >> 32))) ^ (16 * (*(v544 + (v552 - 969 * ((4432371 * v552) >> 32))) ^ v9));
  v555 = v553 - 1938 * ((2216186 * v553) >> 32);
  v556 = 776 * (v554 ^ v9);
  v557 = v556 + 273152 - 969 * ((4432371 * (v556 + 273152)) >> 32);
  if (v555 >= 0x3C9)
  {
    v555 -= 969;
  }

  v558 = *(v29 + v555);
  v559 = (*(v29 + (v556 - 969 * ((4432371 * v556) >> 32))) >> 4) ^ 0xB;
  v560 = 776 * ((v559 - ((2 * v559) & 0xFB) - 67) ^ v558) + 273152;
  v561 = 776 * ((v539 >> 8) & 0xF0 | (v523 >> 12));
  v562 = 776 * (*(v29 + (v561 + 273152 - 969 * ((4432371 * (v561 + 273152)) >> 32))) ^ (16 * (*(v29 + (v560 - 969 * ((4432371 * v560) >> 32))) ^ v9)) ^ v9);
  v563 = v562 + 273152 - 969 * ((4432371 * (v562 + 273152)) >> 32);
  v564 = *(v29 + (v562 - 969 * ((4432371 * v562) >> 32))) >> 4;
  v565 = 776 * (((v564 ^ 0xB) + ((2 * ((v564 ^ 0xB | 0x7D) ^ v564)) ^ 0x13) - 66) ^ *(v29 + (v561 - 969 * ((4432371 * v561) >> 32)))) + 273152;
  v566 = 776 * ((v539 >> 12) & 0xF0 | HIWORD(v523) & 0xF);
  v567 = v566 - 969 * ((4432371 * v566) >> 32);
  v568 = 776 * (*(v29 + (v566 + 273152 - 969 * ((4432371 * (v566 + 273152)) >> 32))) ^ (16 * (*(v29 + (v565 - 969 * ((4432371 * v565) >> 32))) ^ v9)) ^ v9);
  v569 = v568 + 273152 - 969 * ((4432371 * (v568 + 273152)) >> 32);
  v570 = (*(v29 + (v568 - 969 * ((4432371 * v568) >> 32))) >> 4) ^ 0xB;
  v571 = 776 * ((v570 - ((2 * v570) & 0xFB) - 67) ^ *(v29 + v567)) + 273152;
  v572 = 776 * ((v534 >> 8) & 0xF0 | (v521 >> 12));
  v573 = 776 * (*(v29 + (v572 + 273152 - 969 * ((4432371 * (v572 + 273152)) >> 32))) ^ (16 * (*(v29 + (v571 - 969 * ((4432371 * v571) >> 32))) ^ v9)) ^ v9);
  v574 = *(v544 + v573 % 0x3C9) >> 4;
  v575 = 776 * (((v574 ^ 0xB) + ((2 * ((v574 ^ 0xB | 0x7D) ^ v574)) ^ 0x13) - 66) ^ *(v544 + (v572 - 969 * ((4432371 * v572) >> 32)))) + 273152;
  v576 = 776 * ((v534 >> 12) & 0xF0 | HIWORD(v521) & 0xF);
  v577 = 776 * (*(v544 + (v576 + 273152 - 969 * ((4432371 * (v576 + 273152)) >> 32))) ^ (16 * (*(v544 + (v575 - 969 * ((4432371 * v575) >> 32))) ^ v9)) ^ v9);
  v578 = *(v544 + (v577 - 969 * ((4432371 * v577) >> 32))) >> 4;
  v579 = STACK[0x590];
  v580 = 776 * (((v578 ^ 0xB) + ((2 * ((v578 ^ 0xB | 0x7D) ^ v578)) ^ 0x13) - 66) ^ *(v544 + (v576 - 969 * ((4432371 * v576) >> 32)))) + 273152;
  v581 = 776 * ((v530 >> 8) & 0xF0 | (v522 >> 20) & 0xF) + 273152;
  v582 = *(v544 + (v581 - 969 * ((4432371 * v581) >> 32))) ^ (16 * (*(v544 + (v580 - 969 * ((4432371 * v580) >> 32))) ^ v9));
  v583 = (v573 + 273152) % 0x3C9;
  v584 = 776 * (v582 ^ v9) + 273152 - 969 * ((4432371 * (776 * (v582 ^ v9) + 273152)) >> 32);
  LOBYTE(v582) = *(v544 + v542) ^ v9;
  v585 = *(v544 + v549) ^ v9;
  v586 = v525 & 0xF | (16 * (v582 & 0xF));
  v587 = *(v544 + v557) ^ v9;
  v588 = (v582 ^ (16 * v585)) & 0xF0 | (v526 >> 4);
  LOBYTE(v563) = *(v544 + v563) ^ v9;
  v589 = 776 * ((v585 ^ (16 * v587)) & 0xF0 | (v526 >> 8) & 0xF) + 550184;
  LOBYTE(v569) = *(v544 + v569) ^ v9;
  v590 = ((*(v544 + (776 * (((v563 & 0xF ^ (v587 >> 4)) << ((v558 & 4 ^ 4) + (v558 & 4))) ^ (v523 >> 12)) + 550184) % 0x3C9) ^ v9) << 12) ^ ((*(v544 + (v589 - 969 * ((4432371 * v589) >> 32))) ^ v9) << 8);
  v591 = 776 * ((v563 ^ (16 * v569)) & 0xF0 | HIWORD(v523) & 0xF) + 550184;
  LOBYTE(v563) = *(v544 + v583) ^ v9;
  v592 = 776 * ((v569 ^ (16 * v563)) & 0xF0 | (v521 >> 12)) + 550184;
  v593 = ((*(v544 + (v592 - 969 * ((4432371 * v592) >> 32))) ^ v9) << 20) ^ ((*(v544 + (v591 - 969 * ((4432371 * v591) >> 32))) ^ v9) << 16);
  LOBYTE(v591) = *(v544 + (v577 + 273152 - 969 * ((4432371 * (v577 + 273152)) >> 32))) ^ v9;
  v594 = (v563 ^ (16 * v591)) & 0xF0 | HIWORD(v521) & 0xF;
  v595 = *(v544 + (776 * v586 + 550184 - 969 * ((4432371 * (776 * v586 + 550184)) >> 32)));
  v596 = 776 * ((v591 ^ (16 * (*(v544 + v584) ^ 0xFD))) & 0xF0 | (v522 >> 20) & 0xF) + 550184;
  v597 = v595 ^ (16 * (*(v544 + (776 * v588 + 550184 - 969 * ((4432371 * (776 * v588 + 550184)) >> 32))) ^ v9)) ^ v9;
  v598 = v593 ^ v590 ^ v597;
  v599 = ((*(v544 + (v596 - 969 * ((4432371 * v596) >> 32))) ^ 0xFFFFFFFD) << 28) ^ ((*(v544 + (776 * v594 + 550184 - 969 * ((4432371 * (776 * v594 + 550184)) >> 32))) ^ v9) << 24) ^ v598;
  v600 = ((((*(v544 + (776 * (HIBYTE(v599) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v599) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v544 + (776 * (v599 >> 28) + 204088 - 969 * ((4432371 * (776 * (v599 >> 28) + 204088)) >> 32))) ^ v9) << 12) | *(v544 + (776 * (HIWORD(v598) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIWORD(v598) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v544 + (776 * ((v593 >> 20) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v593 >> 20) & 0xF) + 204088)) >> 32))) ^ v9) << 12);
  v601 = 776 * (((v590 ^ v597) >> 8) & 0xF) + 204088;
  v602 = ((v600 | *(v544 + (v601 - 969 * ((4432371 * v601) >> 32))) ^ v9) << 8) ^ ((*(v544 + (776 * (v590 >> 12) + 204088 - 969 * ((4432371 * (776 * (v590 >> 12) + 204088)) >> 32))) ^ v9) << 12);
  v603 = STACK[0x520];
  v604 = (LODWORD(STACK[0x520]) + 602660079) ^ 0x48687F65 ^ (16 * (*(v544 + (776 * (v597 >> 4) + 204088 - 969 * ((4432371 * (776 * (v597 >> 4) + 204088)) >> 32))) ^ v9));
  v605 = (*(v544 + (776 * LODWORD(STACK[0x3AC]) - 969 * ((4432371 * (776 * LODWORD(STACK[0x3AC]))) >> 32))) >> 4) ^ 0xB;
  v606 = 776 * ((v605 - ((2 * v605) & 0xFB) - 67) ^ *(v544 + (LODWORD(STACK[0x3C0]) - 969 * ((4432371 * LODWORD(STACK[0x3C0])) >> 32)))) + 273152;
  v607 = 776 * (STACK[0x3D4] & 0xF0 | (LODWORD(STACK[0x398]) >> 8) & 0xF);
  v608 = 776 * (*(v544 + (v607 + 273152 - 969 * ((4432371 * (v607 + 273152)) >> 32))) ^ (16 * (*(v544 + (v606 - 969 * ((4432371 * v606) >> 32))) ^ v9)) ^ v9);
  v609 = (*(v544 + (v608 - 969 * ((4432371 * v608) >> 32))) >> 4) ^ 0xB;
  v610 = 776 * ((v609 - ((2 * v609) & 0xFB) - 67) ^ *(v544 + (v607 - 969 * ((4432371 * v607) >> 32)))) + 273152;
  v611 = 776 * ((LODWORD(STACK[0x3EC]) >> 8) & 0xF0 | (LODWORD(STACK[0x43C]) >> 12));
  v612 = 776 * (*(v544 + (v611 + 273152 - 969 * ((4432371 * (v611 + 273152)) >> 32))) ^ (16 * (*(v544 + (v610 - 969 * ((4432371 * v610) >> 32))) ^ v9)) ^ v9);
  v613 = *(v544 + (v612 - 969 * ((4432371 * v612) >> 32))) >> 4;
  v614 = ((*(v544 + (v612 + 273152 - 969 * ((4432371 * (v612 + 273152)) >> 32))) ^ v9) << 12) ^ ((*(v544 + (v608 + 273152 - 969 * ((4432371 * (v608 + 273152)) >> 32))) ^ v9) << 8);
  v615 = 776 * (((v613 ^ 0xB) + ((2 * ((v613 ^ 0xB | 0x7D) ^ v613)) ^ 0x13) - 66) ^ *(v544 + (v611 - 969 * ((4432371 * v611) >> 32)))) + 273152;
  v616 = 776 * ((LODWORD(STACK[0x3EC]) >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x43C])) & 0xF);
  v617 = 776 * (*(v544 + (v616 + 273152 - 969 * ((4432371 * (v616 + 273152)) >> 32))) ^ (16 * (*(v544 + (v615 - 969 * ((4432371 * v615) >> 32))) ^ v9)) ^ v9);
  v618 = (*(v544 + (v617 - 969 * ((4432371 * v617) >> 32))) >> 4) ^ 0xB;
  v619 = 776 * ((v618 - ((2 * v618) & 0xFB) - 67) ^ *(v544 + (v616 - 969 * ((4432371 * v616) >> 32)))) + 273152;
  v620 = 776 * ((LODWORD(STACK[0x440]) >> 8) & 0xF0 | (LODWORD(STACK[0x450]) >> 12));
  v621 = 776 * (*(v544 + (v620 + 273152 - 969 * ((4432371 * (v620 + 273152)) >> 32))) ^ (16 * (*(v544 + (v619 - 969 * ((4432371 * v619) >> 32))) ^ v9)) ^ v9);
  v622 = (*(v544 + (v621 - 969 * ((4432371 * v621) >> 32))) >> 4) ^ 0xB;
  v623 = 776 * ((v622 - ((2 * v622) & 0xFB) - 67) ^ *(v544 + (v620 - 969 * ((4432371 * v620) >> 32)))) + 273152;
  v624 = 776 * ((LODWORD(STACK[0x440]) >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x450])) & 0xF);
  v625 = 776 * (*(v544 + (v624 + 273152 - 969 * ((4432371 * (v624 + 273152)) >> 32))) ^ (16 * (*(v544 + (v623 - 969 * ((4432371 * v623) >> 32))) ^ v9)) ^ v9);
  v626 = *(v544 + (v625 - 969 * ((4432371 * v625) >> 32))) >> 4;
  v627 = 776 * (((v626 ^ 0xB) + ((2 * ((v626 ^ 0xB | 0x7D) ^ v626)) ^ 0x13) - 66) ^ *(v544 + (v624 - 969 * ((4432371 * v624) >> 32)))) + 273152;
  v628 = 776 * ((LODWORD(STACK[0x44C]) >> 8) & 0xF0 | (LODWORD(STACK[0x460]) >> 20) & 0xF) + 273152;
  v629 = *(v544 + (v628 - 969 * ((4432371 * v628) >> 32))) ^ (16 * (*(v544 + (v627 - 969 * ((4432371 * v627) >> 32))) ^ v9));
  v630 = v614 ^ LODWORD(STACK[0x3A4]);
  v631 = v630 ^ ((*(v544 + (v617 + 273152 - 969 * ((4432371 * (v617 + 273152)) >> 32))) ^ v9) << 16);
  v632 = v631 ^ ((*(v544 + (v621 + 273152 - 969 * ((4432371 * (v621 + 273152)) >> 32))) ^ v9) << 20);
  v633 = (v614 >> 8) & 0xF0 | (LODWORD(STACK[0x43C]) >> 12);
  v634 = 776 * ((v630 >> 4) & 0xF0 | (LODWORD(STACK[0x398]) >> 8) & 0xF) + 550184;
  v635 = LODWORD(STACK[0x3A0]) ^ ((*(v544 + (v634 - 969 * ((4432371 * v634) >> 32))) ^ v9) << 8);
  v636 = v632 ^ ((*(v544 + (v625 + 273152 - 969 * ((4432371 * (v625 + 273152)) >> 32))) ^ v9) << 24);
  v637 = ((v636 ^ ((*(v544 + (776 * (v629 ^ v9) + 273152 - 969 * ((4432371 * (776 * (v629 ^ v9) + 273152)) >> 32))) ^ 0xFFFFFFFD) << 28)) >> 24) & 0xF0 | (LODWORD(STACK[0x460]) >> 20) & 0xF;
  v638 = 776 * v633 + 550184 - 969 * ((4432371 * (776 * v633 + 550184)) >> 32);
  v639 = 776 * ((v631 >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x43C])) & 0xF) + 550184;
  v640 = v639 - 969 * ((4432371 * v639) >> 32);
  v641 = 776 * (HIWORD(v632) & 0xF0 | (LODWORD(STACK[0x450]) >> 12)) + 550184;
  v642 = v641 - 969 * ((4432371 * v641) >> 32);
  v643 = 776 * ((v636 >> 20) & 0xF0 | HIWORD(LODWORD(STACK[0x450])) & 0xF) + 550184;
  v644 = v643 - 969 * ((4432371 * v643) >> 32);
  v645 = v635 ^ ((*(v544 + v638) ^ v9) << 12);
  v646 = v645 ^ ((*(v544 + v640) ^ v9) << 16);
  v647 = v646 ^ ((*(v544 + v642) ^ v9) << 20);
  v648 = v647 ^ ((*(v544 + v644) ^ v9) << 24);
  v649 = 776 * ((v648 ^ ((*(v544 + (776 * v637 + 550184 - 969 * ((4432371 * (776 * v637 + 550184)) >> 32))) ^ 0xFFFFFFFD) << 28)) >> 28) + 204088;
  v650 = ((*(v544 + (776 * (HIBYTE(v648) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v648) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v544 + (v649 - 969 * ((4432371 * v649) >> 32))) ^ v9) << 12);
  v651 = STACK[0x56C];
  v652 = LODWORD(STACK[0x388]) | *(v544 + (776 * (STACK[0x56C] & 0xF) + 204088 - 969 * ((4432371 * (776 * (STACK[0x56C] & 0xF) + 204088)) >> 32))) ^ v9;
  LODWORD(STACK[0x508]) = LODWORD(STACK[0x57C]) ^ 0xA78C8BEF ^ LODWORD(STACK[0x55C]);
  v653 = 776 * (STACK[0x37C] & 0xF ^ 0xD) + 204088;
  v654 = LODWORD(STACK[0x378]) | *(v544 + (v653 - 969 * ((4432371 * v653) >> 32))) ^ v9;
  LODWORD(STACK[0x588]) ^= 0xA78C8BEF ^ LODWORD(STACK[0x4A0]);
  LODWORD(STACK[0x4C4]) = LODWORD(STACK[0x45C]) ^ 0xA78C8BEF ^ LODWORD(STACK[0x58C]);
  v655 = 776 * (STACK[0x3A8] & 0xF ^ 0xD) + 204088;
  LODWORD(STACK[0x58C]) = LODWORD(STACK[0x454]) ^ (LODWORD(STACK[0x374]) | *(v544 + (v655 - 969 * ((4432371 * v655) >> 32))) ^ v9);
  v656 = LODWORD(STACK[0x53C]) + LODWORD(STACK[0x550]);
  LODWORD(STACK[0x57C]) = LODWORD(STACK[0x518]) ^ (LODWORD(STACK[0x524]) | *(v544 + (776 * (STACK[0x510] & 0xF) + 204088 - 969 * ((4432371 * (776 * (STACK[0x510] & 0xF) + 204088)) >> 32))) ^ v9);
  LODWORD(STACK[0x524]) = LODWORD(STACK[0x528]) ^ 0xA97E851F ^ LODWORD(STACK[0x54C]);
  v657 = STACK[0x534];
  v658 = LODWORD(STACK[0x534]) ^ 0x54D3D9CC ^ LODWORD(STACK[0x560]);
  v659 = 776 * (STACK[0x504] & 0xF ^ 0xD) + 204088;
  v660 = LODWORD(STACK[0x538]) ^ (LODWORD(STACK[0x584]) - 2025679488 + LODWORD(STACK[0x540]));
  LODWORD(STACK[0x584]) = LODWORD(STACK[0x4F8]) ^ 0xBDC6E38C ^ (LODWORD(STACK[0x500]) | *(v544 + (v659 - 969 * ((4432371 * v659) >> 32))) ^ v9);
  v661 = (((v657 ^ 0x29721628) + 1532922783) ^ ((v657 ^ 0xE6472909) - 1804880704) ^ ((v657 ^ 0x1B38C20C) + 1762942907)) - LODWORD(STACK[0x570]);
  v662 = v604 ^ (v602 | *(v544 + (776 * (v595 & 0xF ^ 0xD) + 204088 - 969 * ((4432371 * (776 * (v595 & 0xF ^ 0xDu) + 204088)) >> 32))) ^ v9);
  v663 = LODWORD(STACK[0x4F0]) ^ 0xA17D4525 ^ (v661 + 1507762020);
  v664 = ((((v650 | *(v544 + (776 * (HIWORD(v646) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIWORD(v646) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v544 + (388 * ((v647 >> 19) & 0x1E) + 204088 - 969 * ((4432371 * (388 * ((v647 >> 19) & 0x1E) + 204088)) >> 32))) ^ v9) << 12) | *(v544 + (776 * ((v635 >> 8) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v635 >> 8) & 0xF) + 204088)) >> 32))) ^ v9) << 8) ^ ((*(v544 + (776 * (v645 >> 12) + 204088 - 969 * ((4432371 * (776 * (v645 >> 12) + 204088)) >> 32))) ^ v9) << 12);
  v665 = v661 - LODWORD(STACK[0x4C8]) + 1908007376;
  v666 = (((v660 ^ 0x8318C569) + 1258024662) ^ ((v660 ^ 0x9550E1CD) + 1555286642) ^ ((v660 ^ 0x2E350C13) - 405395536)) + 1313022731 + v665;
  v667 = v665 ^ 0x48687F65 ^ LODWORD(STACK[0x3BC]);
  v668 = (((8 - (STACK[0x3B0] & 0xF ^ 0xD)) ^ ((STACK[0x3B0] & 0xF ^ 0xD) + 7)) & 8 | 0x300) * ((STACK[0x3B0] & 0xF ^ 0xD) + 263);
  v669 = *(v544 + (v668 - 969 * ((4432371 * v668) >> 32))) ^ v9;
  v670 = ((v656 - ((2 * v656 + 243608320) & 0xA512F2F6) - 640938245) ^ LODWORD(STACK[0x498])) + 1071719594;
  v671 = (v664 | v669) + 619057399 + ~(2 * ((v664 | v669) & 0x24E610FF ^ v669 & 9));
  v672 = STACK[0x4A8];
  v673 = v603 - LODWORD(STACK[0x4A8]) + 386205800;
  v674 = v670 + v673;
  v675 = v673 ^ (16 * (*(v544 + LODWORD(STACK[0x3C8])) ^ v9)) ^ 0x859B55D3 ^ v671;
  LODWORD(STACK[0x570]) = LODWORD(STACK[0x430]) - 100579545;
  v676 = LODWORD(STACK[0x5A8]) ^ (16 * (*(v544 + (776 * (v651 >> 4) + 204088 - 969 * ((4432371 * (776 * (v651 >> 4) + 204088)) >> 32))) ^ v9)) ^ v652;
  v677 = LODWORD(STACK[0x4F4]) + 2044486647 + (((v666 ^ 0x721CFA71) + 706631832) ^ ((v666 ^ 0xBB7CDD63) - 478249082) ^ ((v666 ^ 0x3FDF98EE) + 1742551561));
  v678 = 776 * (LODWORD(STACK[0x380]) >> 4) + 204088;
  v679 = (v674 + 365) ^ 0xF6BFBFFC;
  v680 = v603 + v679;
  v681 = v661 + (((v666 ^ 0x70619127) + 677589954) ^ ((v666 ^ 0x8FE1BEAD) - 672981940) ^ ((v666 ^ 0x93F9076) + 1362965137));
  v682 = (v603 + v679 + 296071249) ^ v679;
  v683 = LODWORD(STACK[0x4FC]) - 1057189199;
  v684 = v681 - 2129152358;
  v685 = v666 ^ 0xA7FD5D19 ^ (v681 - 1006069962 - ((2 * (v681 - 1006069962) - 1448772374) & 0xA285C5CA) + 638951770);
  v686 = v680 + 212622280;
  v687 = LODWORD(STACK[0x4D0]) - 1910247144;
  v688 = (v680 + 212622280) ^ (v672 - 90134551 + v679);
  LODWORD(STACK[0x5A8]) = LODWORD(STACK[0x548]) ^ (16 * (*(v544 + (v678 - 969 * ((4432371 * v678) >> 32))) ^ v9)) ^ 0x9CE2BEE5 ^ v654;
  v689 = (v681 - 1813905118) ^ v677;
  LODWORD(STACK[0x518]) = v676;
  LODWORD(STACK[0x4B4]) = v676 ^ 0xA97E851F;
  v690 = (LODWORD(STACK[0x580]) - 524401959) & 0x1F41BDFF;
  LODWORD(STACK[0x3EC]) = v690;
  LODWORD(STACK[0x44C]) = v690 - 900930189;
  LODWORD(STACK[0x56C]) = STACK[0x424];
  LODWORD(STACK[0x590]) = v579;
  v691 = v675 ^ 0x2C80E3DB;
  v692 = v675 ^ 0xA17D4525;
  v693 = v675;
  LODWORD(STACK[0x528]) = v675;
  v694 = v658;
  LODWORD(STACK[0x534]) = v667;
  v695 = v662;
  v696 = STACK[0x584];
  v697 = (v695 ^ 0x48687F65) & (LODWORD(STACK[0x584]) ^ 0x6150D831);
  v698 = v692 & (v694 ^ 0x8E1C5838);
  v699 = LODWORD(STACK[0x44C]) ^ LODWORD(STACK[0x584]);
  v700 = v695 & 0xEADE0961 ^ STACK[0x584] & 0x8DFDA6FE ^ (v694 ^ 0x4BA34C44) & (v695 ^ 0x48687F65) ^ v663 & 0x82248C15;
  LODWORD(STACK[0x550]) = v663;
  LODWORD(STACK[0x454]) = v663 ^ 0xA17D4525;
  LODWORD(STACK[0x450]) = v696 ^ 0x48687F65;
  LODWORD(STACK[0x538]) = v667 ^ 0x48687F65;
  v701 = v700 ^ v667 & 0x92032839 ^ (v663 ^ 0xA17D4525) & v699 ^ (v667 ^ 0x48687F65) & (v694 ^ 0xCC8192E3) ^ v691 & (v696 ^ 0x48687F65);
  LODWORD(STACK[0x560]) = v695;
  v702 = v697 ^ v695 & 0x2938A754 ^ v694 & 0xFA22BEFA ^ (v663 ^ 0x5B5FFBDF) & (v694 ^ 0xA17D4525) ^ v667 & 0x6BDFC20B ^ (v667 ^ 0x48687F65) & (v696 ^ 0x23B7BD6E) ^ v693 & 0xD09EE2E2 ^ v698;
  HIDWORD(v703) = v696;
  LODWORD(v703) = v696;
  v704 = (v703 >> 11) ^ __ROR4__(v696, 6);
  LODWORD(STACK[0x55C]) = v696;
  v706 = __PAIR64__(v694, __ROR4__(v696, 25));
  v705 = v704 ^ v706;
  v707 = v705 ^ v685 ^ (v684 - 2 * ((v684 + 315247240) & 0x43FC727E ^ v684 & 6) - 691618560) ^ 0x8E4B6C2E;
  LODWORD(v706) = v694;
  v708 = (v706 >> 11) ^ __ROR4__(v694, 6);
  LODWORD(STACK[0x54C]) = v694;
  LODWORD(v706) = __ROR4__(v694, 25);
  v709 = ((v705 ^ 0x57904433) - 578725847) ^ ((v705 ^ 0x2F0DB670) - 1524848020) ^ ((v705 ^ 0x352AEC15) - 1086590961);
  v710 = ((v708 ^ v706 ^ 0xFB9E10F4 ^ (v707 + 1997363352 - ((2 * v707) & 0xEE1AB130))) - v707) ^ ((v708 ^ v706 ^ 0xFB9E10F4 ^ (v686 + 1997363352 - ((2 * v686) & 0xEE1AB130))) - v686) ^ (((v682 + 1997363352 - ((2 * v682) & 0xEE1AB130)) ^ v708 ^ v706 ^ 0xFB9E10F4) - v682);
  v711 = (v683 ^ 0x5E8EB5BE) & (2 * (v683 & 0x9F2E853E)) ^ v683 & 0x9F2E853E;
  v712 = ((2 * (v683 ^ 0x5A8AB58E)) ^ 0x8B486160) & (v683 ^ 0x5A8AB58E) ^ (2 * (v683 ^ 0x5A8AB58E)) & 0xC5A430B0;
  v713 = v711 ^ 0xC5A430B0 ^ (v712 ^ 0x81002020) & (4 * v711);
  v714 = (4 * (v712 ^ 0x44A41090)) & 0xC5A430B0 ^ 0xC1243030 ^ ((4 * (v712 ^ 0x44A41090)) ^ 0x1690C2C0) & (v712 ^ 0x44A41090);
  v715 = (16 * v713) & 0xC5A430B0 ^ v713 ^ ((16 * v713) ^ 0x5A430B00) & v714;
  v716 = (16 * v714) & 0xC5A430B0 ^ 0x85A430B0 ^ ((16 * v714) ^ 0x5A430B00) & v714;
  v717 = v715 ^ (v715 << 8) & 0xC5A43000 ^ ((v715 << 8) ^ 0xA430B000) & v716;
  v718 = v683 ^ (v684 + 315247240) ^ (2 * (((v717 ^ 0xC4203000) << 16) & 0x45A40000 ^ v717 ^ 0xC4203000 ^ (((v717 ^ 0xC4203000) << 16) ^ 0x30B00000) & ((v716 << 8) & 0xC5A40000 ^ 0x41840000 ^ ((v716 << 8) ^ 0xA4300000) & v716)));
  v719 = ((v718 ^ 0x5B1ACE2E) - 306483516) ^ ((v718 ^ 0xF8DD9CB4) + 1316764762) ^ ((v718 ^ 0xE1069EEE) + 1470578180);
  v720 = v689 - (v684 + 315247240);
  v721 = v720 + v685 - v719;
  v722 = (v721 - 641277029) ^ v701 ^ (v719 + 641277029 + ((v684 + 315247240) ^ 0x57E7282A) - 1395619386 + (~(2 * (v719 + 641277029 + ((v684 + 315247240) ^ 0x57E7282A))) | 0xA65EEC75));
  v723 = v688 - v686;
  v686 ^= 0x57E7282Au;
  v724 = v687 ^ v686;
  v725 = v723 + v682 - (v687 ^ v686);
  v726 = v719 + 641277029 + (v701 ^ 0xC0040321);
  v727 = v686 + 446269695 + (v687 ^ v686);
  v728 = ((v702 ^ 0x605C2145 ^ v727) - v727) ^ ((v702 ^ 0x605C2145 ^ (v725 - 446269695)) - (v725 - 446269695)) ^ ((((v722 ^ v702 ^ 0x1A92180B) + 550897328) ^ ((v722 ^ v702 ^ 0x638D6E3B) + 1506373792) ^ ((v722 ^ v702 ^ 0x7597DD91) + 1339278134)) - (((v722 ^ 0x560EE0C3) + 977445235) ^ ((v722 ^ 0xC53AB742) - 1451821324) ^ ((v722 ^ 0xFFE0DD65) - 1817404203)) - 909371824);
  v729 = ((((v684 + 315247240) ^ 0xE08EB6CD) + 1200361633) ^ (((v684 + 315247240) ^ 0xEC1C3AC7) + 1260297387) ^ (((v684 + 315247240) ^ 0x5B75A420) - 59309490)) - v720;
  v730 = (v721 - 73795782) ^ (v729 + 1940498929);
  LODWORD(STACK[0x540]) = v730;
  v731 = (v687 ^ v686) + v723;
  v732 = v725 + 121211552;
  v733 = v727 - v731;
  v734 = v732 & 0x100;
  if (((v733 + 1240837946) & v734) != 0)
  {
    v734 = -v734;
  }

  v735 = (v734 + v733 + 1240837946) ^ v732 & 0xFFFFFEFF;
  v736 = LODWORD(STACK[0x570]) - v687;
  v737 = STACK[0x5A0];
  v738 = *(STACK[0x5A0] + 4 * ((137 * v579 + 18769) % 0x116u));
  LODWORD(STACK[0x548]) = v724;
  v739 = *(&off_100755B60 + LODWORD(STACK[0x580]) - 3248) - 8;
  v740 = v736 - v724 + v710 + v738 + (*&v739[4 * ((107 * (v579 ^ 0x24) + 8132) % 0xC0u)] ^ 0x6463B87D) + 880957275 + v728;
  v741 = *&v739[4 * ((107 * (LODWORD(STACK[0x590]) ^ 0x3E)) % 0xC0u)];
  LODWORD(v739) = ((v741 ^ 0x60D419BD) - 1745964235) ^ ((v741 ^ 0x682F1EBB) - 1625967565) ^ ((v741 ^ 0xB0883846) + 1202885328);
  v742 = v729 + v719;
  v743 = v709 + v683 + LODWORD(STACK[0x56C]);
  v744 = v724 + 2122020687;
  v745 = v720 + 722347838 + v719;
  v746 = v719;
  LODWORD(STACK[0x4C0]) = v719;
  v747 = v733 - 824479058;
  v748 = v743 + *(v737 + 4 * ((137 * v579 + 9453) % 0x116u)) + v739;
  v749 = v729 - 124818075;
  v750 = v745 ^ (v729 - 124818075);
  v751 = v747 + v744 + v744;
  LODWORD(STACK[0x4A8]) = v751;
  v752 = v747 + v744 + 1628074226 - ((2 * (v747 + v744)) & 0xC214E1E4);
  v753 = v742 + v746;
  v742 -= 2102757350;
  LODWORD(STACK[0x4B8]) = v742;
  LODWORD(v737) = (v730 - v750) ^ 0x52A7E809;
  v754 = ((v730 - v750) ^ v750) + 2008837996;
  v755 = v737 ^ v742;
  LODWORD(STACK[0x4FC]) = v737;
  LODWORD(STACK[0x56C]) = v755 - 574789040;
  v756 = v754 ^ (v753 - 112250457);
  LODWORD(STACK[0x570]) = v756;
  v757 = ((v756 ^ (v755 - 574789040) ^ 0xD4F99481) - 1508778302) ^ ((v756 ^ (v755 - 574789040) ^ 0x392D9F15) + 1271256406) ^ ((v756 ^ (v755 - 574789040) ^ 0xEDD40B94) - 1623440939);
  LODWORD(v739) = ((((v754 ^ 0x7546746) - 1038091277) ^ (v753 - 112250457) ^ 0x578DC476) - 1764669837) ^ ((((v754 ^ 0x7546746) - 1038091277) ^ (v753 - 112250457) ^ 0xBFCE9A84) + 2123503745) ^ ((((v754 ^ 0x7546746) - 1038091277) ^ (v753 - 112250457) ^ 0xEF1739B4) + 776715185);
  v758 = v737 + v755 - v757;
  v759 = v758 + 1353036945;
  v760 = v758 - ((2 * (v758 + 1353036945)) & 0x52FD0A3E);
  v761 = v757 - v739;
  v762 = v757 - v739 + 1394645762;
  LODWORD(STACK[0x4B0]) = v762;
  v763 = STACK[0x524];
  v764 = v762 ^ LODWORD(STACK[0x524]) ^ (v760 - 98289232);
  v765 = STACK[0x57C];
  v766 = (((v764 ^ LODWORD(STACK[0x57C]) ^ 0x29191380) + 1057290565) ^ ((v764 ^ LODWORD(STACK[0x57C]) ^ 0x8C27FC21) - 1707469082) ^ ((v764 ^ LODWORD(STACK[0x57C]) ^ 0x2B2644E) + 347049611)) - (((v764 ^ 0xDD86C3F1) - 879023818) ^ ((v764 ^ 0xFE065450) - 400834923) ^ ((v764 ^ 0x238097A1) + 899513702));
  v767 = v747 ^ (v731 + 527340504);
  v768 = v735 - v767;
  v769 = (v735 - v767) ^ v767;
  v770 = (v735 - v767) ^ 0x33AD98FB;
  LODWORD(STACK[0x4A0]) = v770;
  LODWORD(STACK[0x4F4]) = v768;
  LODWORD(STACK[0x498]) = v770 ^ v752;
  v771 = (v769 + 2008837996) ^ (v751 - 326521128);
  LODWORD(STACK[0x504]) = v771;
  v772 = (v751 - 326521128) ^ 0x7546746;
  v773 = (((v769 + 2008837996) ^ 0x7546746) - 1038091277) ^ v772;
  LODWORD(STACK[0x490]) = v768 ^ 0x52A7E809;
  LODWORD(STACK[0x500]) = (v770 ^ v752) - 574789040;
  v774 = ((v770 ^ v752) - 574789040) ^ v771;
  v775 = (v770 ^ v752) - 574789040 + (v768 ^ 0x52A7E809) - v774;
  v776 = v774 - v773;
  LODWORD(STACK[0x4F8]) = v774 - v773;
  v777 = ((v765 ^ 0xA78C8BEF ^ (v774 - v773)) - (v774 - v773)) ^ ((v765 ^ 0xA78C8BEF ^ v775) - v775) ^ (v766 + 1686931865);
  v778 = v739 - v761;
  v779 = (v740 ^ 0x87A065CC) + 2019531316 + ((2 * v740) & 0xF40CB98);
  LODWORD(STACK[0x488]) = v779;
  v780 = v748 + 594346392 + v726;
  LODWORD(STACK[0x57C]) = v780;
  v781 = v773 - v776;
  LODWORD(STACK[0x4F0]) = v781;
  v782 = v772 + 2129298254 - (v775 ^ 0x45845DE1);
  LODWORD(STACK[0x53C]) = v782;
  v783 = v781 + v782;
  v784 = v780 - (v781 + v782 + v772) - 2129298254 + v777;
  LODWORD(STACK[0x4E0]) = v784;
  v785 = (v753 - 112250457) ^ 0x7546746;
  LODWORD(STACK[0x584]) = v785;
  v785 += 2129298254;
  LODWORD(STACK[0x520]) = v785;
  v786 = v785 - (v759 ^ 0x45845DE1);
  LODWORD(STACK[0x524]) = v786;
  LODWORD(STACK[0x480]) = v778 - 422150213;
  v787 = v786 + v778 - 422150213;
  LODWORD(STACK[0x47C]) = v787;
  v788 = v785 + (v763 ^ 0xA97E851F) + v787 + v779;
  LODWORD(STACK[0x4D0]) = v788;
  v789 = 776 * ((15 - (((v684 & 0x52 ^ 0x52) + (v684 & 0x52)) & 0x84)) & v788) + 531560;
  v790 = STACK[0x5B0];
  v791 = *(STACK[0x5B0] + (v789 - 969 * ((4432371 * v789) >> 32))) ^ v9;
  LODWORD(STACK[0x4C8]) = v791;
  LODWORD(v737) = *(v790 + (776 * (v784 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v784 & 0xF) + 531560)) >> 32))) ^ v9;
  LODWORD(STACK[0x4E8]) = v737;
  LODWORD(STACK[0x510]) = v791 & 0xF;
  v792 = 776 * (v791 & 0xF | (16 * (v737 & 0xF)));
  LODWORD(STACK[0x4DC]) = v792;
  LODWORD(STACK[0x4EC]) = (v792 + 273152) % (((v772 + 2129298254) ^ (177 - v772)) & 0x3C9u);
  v793 = STACK[0x508];
  v794 = LODWORD(STACK[0x508]) ^ 0xA78C8BEF;
  STACK[0x470] = v794;
  v795 = (v794 << ((v726 & 0x1E ^ 0x1E) + (v726 & 0x1E))) + ((v793 >> 2) ^ 0x29E322FB);
  v796 = (v795 - ((2 * v795) & 0x77767DE8) - 1145356556) ^ __ROR4__(v793, 13);
  v797 = (v796 ^ 0xE4C60290) - 2 * ((v796 ^ 0xE4C60290) & 0x3055E81F ^ v796 & 4);
  v798 = STACK[0x518];
  v799 = LODWORD(STACK[0x518]) ^ 0x40DF7D41;
  LODWORD(v739) = STACK[0x588];
  LODWORD(v794) = LODWORD(STACK[0x588]) ^ 0xA78C8BEF;
  LODWORD(STACK[0x43C]) = v794;
  v800 = STACK[0x5A8];
  v801 = v739 & 0x40DF7D41 ^ v799 & v794 ^ STACK[0x5A8] & 0xB551B64D;
  LODWORD(v794) = LODWORD(STACK[0x5A8]) ^ 0xA97E851F;
  LODWORD(STACK[0x46C]) = v794;
  v802 = STACK[0x58C];
  v803 = LODWORD(STACK[0x58C]) ^ 0xA97E851F;
  v804 = STACK[0x58C] & 0x1EC80FB3 ^ v803 & (v793 ^ 0xB944845C) ^ 0x2BCE6B27 ^ ((v801 ^ v794 & (v793 ^ 0x12DD3DA2) ^ 0xA1DC8D4C) - ((2 * (v801 ^ v794 & (v793 ^ 0x12DD3DA2) ^ 0xA1DC8D4C)) & 0x470CDC68) + 596012596);
  HIDWORD(v806) = STACK[0x4B4];
  LODWORD(v806) = STACK[0x4B4];
  v805 = v806 >> 2;
  LODWORD(v806) = __ROR4__(STACK[0x4B4], 13);
  LODWORD(v794) = STACK[0x4C4];
  v807 = STACK[0x4B4] & 0x2E1DC8AB ^ v798 & (LODWORD(STACK[0x4C4]) ^ 0x89914344) ^ 0x4D6A1B4B ^ (v804 - ((2 * v804) & 0xCAED3680) + 1702271808);
  v808 = v803 & (v739 ^ 0x7E9A9A5A) ^ STACK[0x58C] & 0xD91611B5 ^ (v807 - ((2 * v807) & 0x6FF1D72A) - 1208423531);
  v809 = LODWORD(STACK[0x4C4]) ^ 0xA78C8BEF;
  v810 = STACK[0x4C4] & 0x92230D11 ^ (v800 ^ 0x3B5D880E) & v809 ^ 0x4EFBF440 ^ ((v808 ^ 0x3EEEEA80) - 2 * ((v808 ^ 0x3EEEEA80) & 0x4CFBFD55 ^ v808 & 0x14) - 855900863);
  v811 = LODWORD(STACK[0x540]) ^ v749;
  LODWORD(STACK[0x540]) = STACK[0x4B4];
  v812 = ((v805 ^ v806 ^ 0xC2A2EAB3) - ((2 * (v805 ^ v806 ^ 0xC2A2EAB3)) & 0x2120AC20) + 277894672) ^ __ROR4__(HIDWORD(v806), 22) ^ 0xEA8428B5;
  v813 = (v797 - 1336547301) ^ __ROR4__(v793, 22) ^ 0x827A5685;
  LODWORD(STACK[0x4C4]) = v772 - 2006023225;
  v814 = (v783 + 1002412859) ^ (v772 - 2006023225);
  LODWORD(STACK[0x508]) = v814;
  v815 = v753 - 22477460 - (v814 + LODWORD(STACK[0x548])) + v810 + LODWORD(STACK[0x57C]) + 948079481 + (((v735 ^ v812) - v735) ^ ((v747 ^ v812) - v747) ^ ((v811 ^ v813 ^ v812) + (v811 ^ v813) - 2 * (v811 ^ v813)));
  v816 = v800 & 0x1A588313 ^ 0x8588113 ^ STACK[0x46C] & (v798 ^ 0x1A588313);
  v817 = v793 & 0x90E77F84 ^ (v739 ^ 0x376BF46B) & STACK[0x470] ^ 0x92168CD7 ^ (v816 - ((2 * v816) & 0x25250EA6) + 311592787);
  v818 = v802 & 0xC9B14AB0 ^ 0x89300010 ^ (v800 ^ 0x60CFCFAF) & v803;
  LODWORD(STACK[0x548]) = v793;
  v819 = v794 & 0x6FBD8BB2 ^ v809 & (v793 ^ 0xC831005D) ^ 0xBE40BFDB ^ (v817 - ((2 * v817) & 0x339868F2) - 1714670471);
  LODWORD(STACK[0x57C]) = v794;
  LODWORD(STACK[0x440]) = v809;
  v820 = v794 & 0xD9437BD7 ^ v802 & 0x8F759F2E ^ (v739 ^ 0x7ECFF038) & v809 ^ (v798 ^ 0x8F759F2E) & v803 ^ (v818 - ((2 * v818) & 0x2FD5F132) - 1746208615) ^ 0x2ED468E7 ^ (v819 - ((2 * v819) & 0x62943D6E) - 1320542537);
  v821 = STACK[0x4A0];
  v822 = LODWORD(STACK[0x4C0]) - LODWORD(STACK[0x4A8]) + ((((v820 + 1628074226 - ((2 * v820) & 0xC214E1E4)) ^ LODWORD(STACK[0x4A0])) - LODWORD(STACK[0x490])) ^ ((v820 ^ LODWORD(STACK[0x498])) - LODWORD(STACK[0x498])) ^ ((v810 ^ LODWORD(STACK[0x4B8]) ^ v820) - (v810 ^ LODWORD(STACK[0x4B8])))) - 516324016 + v813;
  v823 = (LODWORD(STACK[0x4B0]) ^ 0x9EDAC291) + LODWORD(STACK[0x480]);
  LODWORD(STACK[0x480]) = v823;
  v824 = (LODWORD(STACK[0x47C]) + 1002412859) ^ (LODWORD(STACK[0x584]) - 2006023225);
  LODWORD(STACK[0x518]) = v824;
  v825 = v822 + v824 + LODWORD(STACK[0x488]);
  v826 = ((((*(v790 + (776 * (HIBYTE(v825) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v825) & 0xF) + 531560)) >> 32))) ^ 0xBD) << 8) ^ ((*(v790 + (776 * (v825 >> 28) + 531560 - 969 * ((4432371 * (776 * (v825 >> 28) + 531560)) >> 32))) ^ 0xBD) << 12) | *(v790 + (776 * (HIWORD(v825) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v825) & 0xF) + 531560)) >> 32))) ^ 0xBD) ^ (16 * (*(v790 + (776 * ((v825 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v825 >> 20) & 0xF) + 531560)) >> 32))) ^ 0xBDu))) << ((v815 & 0xB8) + 80 + (v815 & 0xB8 ^ 0xB8));
  v827 = *(v790 + (776 * ((v825 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v825 >> 8) & 0xF) + 531560)) >> 32))) ^ (16 * (*(v790 + (776 * (v825 >> 12) + 531560 - 969 * ((4432371 * (776 * (v825 >> 12) + 531560)) >> 32))) ^ 0xBD)) ^ v826;
  LOWORD(v798) = v826;
  STACK[0x470] = v826;
  v828 = *(v790 + (776 * (v825 >> 4) + 531560 - 969 * ((4432371 * (776 * (v825 >> 4) + 531560)) >> 32))) ^ 0xBD;
  LOBYTE(v824) = *(v790 + (776 * (v825 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v825 & 0xF) + 531560)) >> 32))) ^ 0xBD;
  LODWORD(STACK[0x4A8]) = v827;
  LODWORD(STACK[0x498]) = v827 ^ 0xBD;
  LODWORD(v739) = (v824 | ((v827 ^ 0xBD) << 8)) ^ (16 * v828);
  LODWORD(v826) = ((*(v790 + (776 * (HIBYTE(v815) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v815) & 0xF) + 531560)) >> 32))) ^ 0xBD) << 8) ^ ((*(v790 + (776 * (v815 >> 28) + 531560) % (((919 - 776 * (v815 >> 28)) & 0x3C9) + ((776 * (v815 >> 28) + 531560) & 0x3C8))) ^ 0xBD) << 12);
  LODWORD(STACK[0x4C0]) = v826;
  v829 = ((v826 | *(v790 + (776 * (HIWORD(v815) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v815) & 0xF) + 531560)) >> 32))) ^ 0xBD) << 8) ^ ((*(v790 + (776 * ((v815 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v815 >> 20) & 0xF) + 531560)) >> 32))) ^ 0xBD) << 12);
  v830 = *(v790 + (776 * (v815 >> 12) + 531560 - 969 * ((4432371 * (776 * (v815 >> 12) + 531560)) >> 32))) ^ 0xBD;
  LOBYTE(v828) = *(v790 + (776 * (v815 >> 4) + 531560 - 969 * ((4432371 * (776 * (v815 >> 4) + 531560)) >> 32)));
  LODWORD(v794) = v829 | *(v790 + (776 * ((v815 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v815 >> 8) & 0xF) + 531560)) >> 32))) ^ 0xBD;
  LODWORD(STACK[0x46C]) = v829;
  v831 = *(v790 + (776 * (v815 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v815 & 0xF) + 531560)) >> 32)));
  v832 = (v794 << 8) ^ (v830 << 12);
  v833 = v824 & 0xF;
  LODWORD(STACK[0x4B8]) = v833;
  v834 = 776 * (v833 & 0xFFFFFF0F | (16 * ((v831 ^ 0xBD) & 0xF)));
  LODWORD(v794) = v834 - 969 * ((4432371 * v834) >> 32);
  v835 = 776 * (*(v790 + (v834 + 273152 - 969 * ((4432371 * (v834 + 273152)) >> 32))) ^ LODWORD(STACK[0x458]));
  v836 = v835 + 273152 - 969 * ((4432371 * (v835 + 273152)) >> 32);
  v837 = v835 - 969 * ((4432371 * v835) >> 32);
  v838 = 776 * ((v837 & 0x160 ^ 0x160) + (v837 & 0x160) + ((((*(v790 + v837) >> 4) ^ 0xB) + ((2 * (((*(v790 + v837) >> 4) ^ 0xB | 0x7D) ^ (*(v790 + v837) >> 4))) ^ 0x13) - 66) ^ *(v790 + v794)));
  LOBYTE(v828) = v828 ^ ((v832 | v831 ^ 0xBD) >> 4) ^ 0xBD;
  LODWORD(STACK[0x4B0]) = v739;
  LODWORD(v794) = 776 * ((v739 >> 4) | (16 * (v828 & 0xF)));
  v839 = 776 * (*(v790 + (v794 + 273152 - 969 * ((4432371 * (v794 + 273152)) >> 32))) ^ (16 * (*(v790 + (v838 - 969 * ((4432371 * v838) >> 32))) ^ 0xBD)) ^ 0xBD);
  v840 = v839 + 273152 - 969 * ((4432371 * (v839 + 273152)) >> 32);
  v841 = *(v790 + (v839 - 969 * ((4432371 * v839) >> 32))) >> 4;
  v842 = 776 * (((v841 ^ 0xB) + ((2 * ((v841 ^ 0xB | 0x7D) ^ v841)) ^ 0x13) - 66) ^ *(v790 + (v794 - 969 * ((4432371 * v794) >> 32)))) + 273152;
  LODWORD(v794) = 776 * (v828 & 0xF0 | (v739 >> 8) & 0xF);
  v843 = 776 * (*(v790 + (v794 + 273152 - 969 * ((4432371 * (v794 + 273152)) >> 32))) ^ (16 * (*(v790 + (v842 - 969 * ((4432371 * v842) >> 32))) ^ 0xBD)) ^ 0xBD);
  v844 = *(v790 + v836) ^ (16 * (*(v790 + v840) ^ 0xBD)) ^ ((*(v790 + (v843 + 273152 - 969 * ((4432371 * (v843 + 273152)) >> 32))) ^ 0xBD) << 8);
  v845 = *(v790 + (v843 - 969 * ((4432371 * v843) >> 32))) >> 4;
  v846 = 776 * (((v845 ^ 0xB) + ((2 * ((v845 ^ 0xB | 0x7D) ^ v845)) ^ 0x13) - 66) ^ *(v790 + (v794 - 969 * ((4432371 * v794) >> 32)))) + 273152;
  v847 = 776 * ((v832 >> 8) & 0xF0 | ((v827 ^ 0xBD) >> 4));
  LODWORD(v794) = 776 * (*(v790 + (v847 + 273152 - 969 * ((4432371 * (v847 + 273152)) >> 32))) ^ (16 * (*(v790 + (v846 - 969 * ((4432371 * v846) >> 32))) ^ 0xBD)) ^ 0xBD);
  v848 = *(v790 + (v794 + 273152 - 969 * ((4432371 * (v794 + 273152)) >> 32)));
  LODWORD(STACK[0x4B4]) = v823 ^ 0xA368CF8F;
  LODWORD(STACK[0x47C]) = (v823 ^ 0xA368CF8F) - 315247240;
  v849 = v844 ^ ((v848 ^ 0xBD) << ((((v823 ^ 0x8F) + 120) ^ (7 - (v823 ^ 0x8F))) & 0xC));
  LODWORD(STACK[0x488]) = v849;
  v850 = v847 - 969 * ((4432371 * v847) >> 32);
  v851 = (*(v790 + (v794 - 969 * ((4432371 * v794) >> 32))) >> 4) ^ 0xB;
  v852 = (v851 - ((2 * v851) & 0xFB) - 67) ^ *(v790 + v850);
  v853 = 776 * (((2 * v852) & 0xC0) + (v852 ^ 0x160));
  v854 = 776 * ((v832 >> 12) & 0xF0 | (v827 >> 8) & 0xF);
  v855 = 776 * (*(v790 + (v854 + 273152 - 969 * ((4432371 * (v854 + 273152)) >> 32))) ^ (16 * (*(v790 + (v853 - 969 * ((4432371 * v853) >> 32))) ^ 0xBD)) ^ 0xBD);
  LODWORD(STACK[0x460]) = v855;
  v856 = (*(v790 + (v855 - 969 * ((4432371 * v855) >> 32))) >> 4) ^ 0xB;
  v857 = 776 * ((v856 - ((2 * v856) & 0xFB) - 67) ^ *(v790 + (v854 - 969 * ((4432371 * v854) >> 32)))) + 273152;
  v858 = 776 * ((v829 >> 8) & 0xF0 | (v798 >> 12));
  LODWORD(STACK[0x45C]) = v858;
  LODWORD(STACK[0x490]) = (776 * (*(v790 + (v858 + 273152 - 969 * ((4432371 * (v858 + 273152)) >> 32))) ^ (16 * (*(v790 + (v857 - 969 * ((4432371 * v857) >> 32))) ^ 0xBD)) ^ 0xBDu) + 273152) % (((v849 ^ 0xBD) & 0x3C9 ^ 0x3C9) + ((v849 ^ 0xBD) & 0x3C9u));
  v859 = LODWORD(STACK[0x4FC]) ^ LODWORD(STACK[0x528]) ^ LODWORD(STACK[0x56C]);
  v860 = (((v859 ^ LODWORD(STACK[0x534]) ^ 0xDF7659D7) - 87499568) ^ ((v859 ^ LODWORD(STACK[0x534]) ^ 0x2183FF61) + 71137914) ^ ((v859 ^ LODWORD(STACK[0x534]) ^ 0x17E09CF6) + 845027823)) - (((v859 ^ 0xCFB259DF) - 368255800) ^ ((v859 ^ 0x99CD23A6) - 1133271361) ^ ((v859 ^ 0xF7023F5C) - 759383483));
  v861 = (((v821 ^ LODWORD(STACK[0x534]) ^ 0x267EA4DE) - 645833950) ^ ((v821 ^ LODWORD(STACK[0x534]) ^ 0x556EFA2D) - 1433336365) ^ ((v821 ^ LODWORD(STACK[0x534]) ^ 0x5A725164) - 1517441380)) - (((LODWORD(STACK[0x4F4]) ^ 0x708713CB) - 1126861616) ^ ((LODWORD(STACK[0x4F4]) ^ 0xECCD4220) + 547300645) ^ ((LODWORD(STACK[0x4F4]) ^ 0xCEEDB9E2) + 46128871));
  LODWORD(STACK[0x56C]) = (((LODWORD(STACK[0x528]) ^ 0x61D2A846) - 1641195590) ^ ((LODWORD(STACK[0x528]) ^ 0x422EBB67) - 1110358887) ^ ((LODWORD(STACK[0x528]) ^ 0x82815604) + 2105453052)) - 1972735911 + (((LODWORD(STACK[0x570]) ^ 0xE6DF1523) - 1808310428) ^ ((LODWORD(STACK[0x570]) ^ 0x3C9B2E0F) + 1316185168) ^ ((LODWORD(STACK[0x570]) ^ 0xDA443B2C) - 1465093779));
  LODWORD(STACK[0x570]) = ((v861 - 933781851) ^ ((LODWORD(STACK[0x538]) ^ LODWORD(STACK[0x500])) - LODWORD(STACK[0x500])) ^ (v860 - 1206386459)) - LODWORD(STACK[0x504]) + (v822 & 0x5D0B6B3A) + (v822 & 0x5D0B6B3A ^ 0x5D0B6B3A);
  v862 = STACK[0x590];
  LODWORD(STACK[0x584]) = LODWORD(STACK[0x4D0]) ^ LODWORD(STACK[0x480]) ^ 0x48687F65;
  return (*(STACK[0x598] + 8 * ((6699 * (v862 == 63)) ^ LODWORD(STACK[0x580]))))();
}

uint64_t sub_1000A7CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  v21 = 2 * &a15;
  a16 = (v18 - 1377) ^ (33731311 * (((v21 | 0x2D6537DA) - &a15 + 1766679571) ^ 0xAF4451CE));
  a17 = a13;
  a18 = &a11;
  (*(v19 + 8 * (v18 ^ 0x3494)))(&a15);
  LODWORD(a18) = v18 - 2008441969 * (((v21 | 0x9F7185CE) - &a15 + 809975065) ^ 0x872196E9) + 1056;
  a17 = a13;
  v22 = (*(v19 + 8 * (v18 ^ 0x3466)))(&a15);
  return (*(v19 + 8 * ((999 * (a15 == (((v18 - 2939) | 0x65) ^ (v20 + 345)))) ^ v18)))(v22);
}

uint64_t sub_1000A7DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 ^ 0x617u) - 2925) ^ v3) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((206 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1000A7EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a14 = (v16 - 2691) ^ (33731311 * ((237540884 - (&a13 | 0xE289614) + (&a13 | 0xF1D769EB)) ^ 0xC821A3C8));
  a15 = a12;
  a16 = &a11;
  (*(v17 + 8 * (v16 ^ 0x3276)))(&a13);
  LODWORD(a16) = v16 - 2008441969 * (((&a13 | 0xF9F9926A) - (&a13 & 0xF9F9926A)) ^ 0xB160C664) - 258;
  a15 = a12;
  v19 = (*(v17 + 8 * (v16 ^ 0x3284)))(&a13);
  return (*(v17 + 8 * ((71 * ((((v16 - 5087) ^ (v16 + 1075847781) ^ (a13 == v18)) & 1) == 0)) ^ v16)))(v19);
}

uint64_t sub_1000A80BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char a13, uint64_t a14, uint64_t a15, int a16, char a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, char *a23)
{
  a20 = a14;
  a21 = &a13;
  a23 = &a10;
  a22 = (v25 - 2619) ^ (((((&a18 | 0x13453276) ^ 0xFFFFFFFE) - (~&a18 | 0xECBACD89)) ^ 0xDEA19619) * v26);
  (*(v23 + 8 * (v25 + 3630)))(&a18);
  a19 = (v25 - 2725) ^ (33731311 * ((((2 * &a18) | 0x129EA424) - &a18 + 1991290350) ^ 0xB0B99831));
  a20 = a14;
  a21 = &a17;
  (*(v23 + 8 * ((v25 - 4566) ^ 0x2002)))(&a18);
  a20 = a14;
  LODWORD(a21) = v25 - 4566 - 2008441969 * (&a18 ^ 0x4899540E) + 4274;
  v27 = (*(v23 + 8 * (v25 + 3674)))(&a18);
  return (*(v23 + 8 * (((a18 == v24) * (((v25 - 1104951174) & 0x41DC2BF4 ^ 0xFFFFE362) + ((v25 - 4566) ^ 0x122A))) ^ (v25 - 4566))))(v27);
}

uint64_t sub_1000A8420@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W6>, int a8@<W7>, unsigned int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v30 = STACK[0x5B0] ^ 0x1918;
  STACK[0x5B0] = 304 * (STACK[0x5B0] ^ 0x1310);
  v31 = STACK[0x5A0];
  v32 = a20 - 0x19CB3BDEFC824E1DLL + v26;
  *(STACK[0x5A0] + (345 * v20 + 186990) % 0x3C1u) ^= *v32;
  v33 = v32 - ((v32 << (STACK[0x5B0] ^ v21)) & v22) + v23;
  v34 = (345 * v20 + v28) % 0x3C1u;
  v35 = (__ROR8__(v33, 8) & 0xF8FFFFFFFFFFFFFFLL ^ v24) + a3;
  v36 = v35 ^ 0x49E9423B6F16E7D2;
  v37 = v35 ^ v29;
  v38 = (__ROR8__(v36, 8) + v37) ^ v27;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (v39 + __ROR8__(v38, 8)) ^ a1;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (v41 + __ROR8__(v40, 8)) ^ a6;
  v44 = __ROR8__(v41, 61);
  v43 = v42 ^ v44;
  v45 = ((v42 ^ v44) + (v42 >> 8) + (v42 << 56)) ^ a5;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = __ROR8__(v45, 8);
  v48 = ((v46 ^ v47) + 2 * (v47 & v46)) ^ a4;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (v49 + __ROR8__(v48, 8)) ^ 0x1A2AEBE44253AF03;
  v51 = v20 + 1;
  *(v31 + v34) ^= (((v50 ^ __ROR8__(v49, 61)) + __ROR8__(v50, 8)) ^ a2) >> ((8 * (v33 & 7)) ^ 0x18);
  v52 = v51 + 1847734611 < a9;
  if (a9 < 0x6E223153 != v51 > a7)
  {
    v52 = a9 < 0x6E223153;
  }

  return (*(v25 + 8 * ((v52 * a8) ^ (v30 + 2928))))();
}

uint64_t sub_1000A85DC(int8x16_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = a8 - 8;
  v18.val[0].i64[0] = (v13 + v16 - 1) & 0xF;
  v18.val[0].i64[1] = (v13 + v16 + 14) & 0xF;
  v18.val[1].i64[0] = (v13 + v16 + 13) & 0xF;
  v18.val[1].i64[1] = (v13 + v16 + 12) & 0xF;
  v18.val[2].i64[0] = (v13 + v16 + v14 - 28) & 0xF;
  v18.val[2].i64[1] = (v13 + v16 + 10) & 0xF;
  v18.val[3].i64[0] = (v13 + v16 + 9) & 0xF;
  v18.val[3].i64[1] = (v13 + v16) & 0xF ^ 8;
  *(a9 - 8 + v13) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a10 - 8 + v13), *(v11 + v18.val[0].i64[0] - 7)), veor_s8(*(v12 + v18.val[0].i64[0] + 1 - 7), *(v10 + v18.val[0].i64[0] + 1 - 7)))), a3), vmul_s8(*&vqtbl4q_s8(v18, a1), a2)));
  return (*(*(v15 - 136) + 8 * (a6 ^ (32 * (a7 == v16)))))();
}

uint64_t sub_1000A85EC()
{
  v2 = *(STACK[0x4F0] + 24);
  STACK[0x430] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 + 1189) ^ v0 ^ 0x1BD9 ^ 0x1F3E)) ^ v0)))();
}

uint64_t sub_1000A8638()
{
  v1 = STACK[0x2C0];
  if (LODWORD(STACK[0x2C0]) == 43491)
  {
    return (*(v0 + 8 * ((LODWORD(STACK[0x32C]) - 1217) ^ ((4 * (LODWORD(STACK[0x240]) != LODWORD(STACK[0x2D0]))) | (8 * (LODWORD(STACK[0x240]) != LODWORD(STACK[0x2D0])))))))();
  }

  if (v1 == 28239)
  {
    return (*(v0 + 8 * ((((LODWORD(STACK[0x32C]) - 5358) | 0x1800) + LODWORD(STACK[0x9D8]) - ((2 * LODWORD(STACK[0x9D8])) & 0x4AB7A8BE) != 6408) ^ (LODWORD(STACK[0x32C]) - 3898))))();
  }

  if (v1 == 47633)
  {
    return (*(v0 + 8 * ((109 * (LODWORD(STACK[0x9C0]) == ((LODWORD(STACK[0x32C]) + 1213241861) & 0xB7AF52FD) + 197498466)) ^ (LODWORD(STACK[0x32C]) - 359))))();
  }

  return (*(v0 + 8 * (LODWORD(STACK[0x32C]) - 1362)))();
}

uint64_t sub_1000A89A0@<X0>(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  return sub_10017FD70();
}

uint64_t sub_1000A89C4(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, char a5)
{
  v9 = a4 - 1;
  *v6 = *a3 ^ *(v7 + (v9 & 0xF)) ^ *((v9 & 0xF) + a1 + 3) ^ ((v9 & 0xF) * a5) ^ *(a2 + (v9 & 0xF)) ^ 0x3C;
  return (*(v8 + 8 * (((v9 == 0) | (2 * (v9 == 0))) ^ v5)))();
}

uint64_t sub_1000A89CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = STACK[0x9EC];
  STACK[0x580] = v3;
  LODWORD(STACK[0xB30]) = v6;
  LOWORD(STACK[0xB36]) = v5;
  LODWORD(STACK[0xB38]) = v8;
  LODWORD(STACK[0xB3C]) = STACK[0x46C];
  STACK[0xB40] = STACK[0x7D8];
  STACK[0x7E0] = STACK[0x780];
  return (*(v7 + 8 * (((4 * (((v3 == 0) ^ (((v4 - 83) | 0xE0) - 124)) & 1)) & 0xDF | (32 * (((v3 == 0) ^ (((v4 - 83) | 0xE0) - 124)) & 1))) ^ v4)))(a1, a2, a3, 16215976);
}

uint64_t sub_1000A8B68(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = (*(v6 + 8 * (v4 ^ 0x3473)))();
  *(v5 + 24) = 0;
  return sub_10002A500(v8, v9, v10, a4);
}

uint64_t sub_1000A8BE4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, unint64_t a9@<X8>)
{
  STACK[0x390] = v17;
  v24 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v25 = vdupq_n_s64(0x38uLL);
  v26 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v27 = vdupq_n_s64(a8);
  v28 = vdupq_n_s64(a9);
  v29 = vdupq_n_s64(v14);
  v30 = -8 - a7;
  v31 = vdupq_n_s64(v15);
  v32 = v19 + v21 + a6;
  v33 = vdupq_n_s64(v18);
  v34 = vdupq_n_s64(a2);
  v35 = vdupq_n_s64(v20);
  v36 = vdupq_n_s64(a3);
  v37 = vdupq_n_s64(a4);
  v38 = vdupq_n_s64(a5);
  v39 = vdupq_n_s64(v10);
  v40 = vdupq_n_s64(v16);
  v41 = vdupq_n_s64(v13);
  v42 = vdupq_n_s64(v23);
  v43 = vdupq_n_s64(v12);
  v44 = vdupq_n_s64(v11);
  v45 = vdupq_n_s64(0xE831AF248D427C36);
  *&STACK[0x3A0] = xmmword_10069D310;
  STACK[0x3B0] = *(v32 + v30 + 10);
  v46.i64[0] = v32 + v30 + 11;
  v46.i64[1] = v32 + v30 + 10;
  v47.i64[0] = v32 + v30 + 15;
  v47.i64[1] = v32 + v30 + 14;
  v48.i64[0] = v32 + v30 + 17;
  v48.i64[1] = v32 + v30 + 16;
  v49.i64[0] = v32 + v30 + 13 * (v9 ^ 0x1252u) - 4030;
  v49.i64[1] = v32 + v30 + 12;
  v50 = vandq_s8(v49, v24);
  v51 = vandq_s8(v48, v24);
  v52 = vandq_s8(v47, v24);
  v53 = vandq_s8(v46, v24);
  v54 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v55 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v56 = vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL);
  v57 = vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL);
  v58 = vaddq_s64(v57, v26);
  v59 = vaddq_s64(v56, v26);
  v60 = vaddq_s64(v55, v26);
  v61 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v27, v57), v28), v58), vandq_s8(v58, v28));
  v62 = vaddq_s64(v54, v26);
  v63 = vaddq_s64(vandq_s8(vsubq_s64(v27, v54), v28), v62);
  v64 = vandq_s8(v62, v28);
  v65 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v27, v56), v28), v59), vandq_s8(v59, v28));
  v66 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(v27, v55), v28), v60), vandq_s8(v60, v28));
  v67 = vsubq_s64(v63, v64);
  v68 = veorq_s8(v67, v29);
  v69 = veorq_s8(v66, v29);
  v70 = veorq_s8(v66, v31);
  v71 = veorq_s8(v67, v31);
  v72 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v70), v33);
  v73 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v71), v33);
  v74 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v75 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v76 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v75);
  v78 = vaddq_s64(v76, v74);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v78, v78), v34), v78), v35), v36);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v77, v77), v34), v77), v35), v36);
  v81 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v83 = veorq_s8(v79, v81);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v83);
  v86 = vaddq_s64(v84, v82);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(v86, vandq_s8(vaddq_s64(v86, v86), v37)), v38), v39);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(v85, vandq_s8(vaddq_s64(v85, v85), v37)), v38), v39);
  v89 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v90 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v91 = veorq_s8(v87, v89);
  v92 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v91);
  v94 = veorq_s8(vaddq_s64(v92, v90), v40);
  v95 = veorq_s8(v93, v40);
  v96 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v97 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v98 = veorq_s8(v94, v96);
  v99 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v98);
  v101 = veorq_s8(vaddq_s64(v99, v97), v41);
  v102 = veorq_s8(v100, v41);
  v103 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v104 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v105 = veorq_s8(v101, v103);
  v106 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v105);
  v108 = veorq_s8(vaddq_s64(v106, v104), v42);
  v109 = veorq_s8(v107, v42);
  v110 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v111 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), veorq_s8(v108, v110));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v111);
  v147.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v112, v112), v43), v112), v44), v45), vnegq_s64(vandq_s8(vshlq_n_s64(v46, 3uLL), v25)));
  v147.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v113, v113), v43), v113), v44), v45), vnegq_s64(vandq_s8(vshlq_n_s64(v47, 3uLL), v25)));
  v114 = veorq_s8(v65, v29);
  v115 = veorq_s8(v65, v31);
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v33);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v118, v118), v34), v118), v35), v36);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(v121, vandq_s8(vaddq_s64(v121, v121), v37)), v38), v39);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v40);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125), v41);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v128 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127), v42);
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL)));
  v147.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v129, v129), v43), v129), v44), v45), vnegq_s64(vandq_s8(vshlq_n_s64(v48, 3uLL), v25)));
  v130 = veorq_s8(v61, v29);
  v131 = veorq_s8(v61, v31);
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), v33);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v134, v134), v34), v134), v35), v36);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(v137, vandq_s8(vaddq_s64(v137, v137), v37)), v38), v39);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139), v40);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v142 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141), v41);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143), v42);
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL)));
  v147.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v145, v145), v43), v145), v44), v45), vnegq_s64(vandq_s8(vshlq_n_s64(v49, 3uLL), v25)));
  *(a1 + a6 + v30) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v147, *&STACK[0x3A0])), STACK[0x3B0]);
  return (*(v22 + 8 * ((247 * (-(a6 & 0xFFFFFFF8) == v30)) ^ v9)))();
}

uint64_t sub_1000A927C()
{
  v13.val[1].i64[0] = (v3 + 13) & 0xF;
  v13.val[1].i64[1] = (v3 + 12) & 0xF;
  v13.val[2].i64[0] = (v3 + 11) & 0xF;
  v7 = *(v5 - 160);
  v13.val[2].i64[1] = (v3 + 10) & 0xF;
  v13.val[3].i64[0] = (v3 + 9) & 0xF;
  v13.val[3].i64[1] = v3 & 0xF ^ 8;
  v14.val[0].i64[0] = (v3 + 7) & 0xF;
  v14.val[0].i64[1] = (v3 + 6) & 0xF;
  v14.val[1].i64[0] = (v3 + 5) & 0xF;
  v14.val[1].i64[1] = (v3 + 4) & 0xF;
  v14.val[2].i64[0] = (v3 + 3) & 0xF;
  v14.val[2].i64[1] = (v3 + 2) & 0xF;
  v14.val[3].i64[0] = (v3 + 1) & 0xF;
  v14.val[3].i64[1] = v3 & 0xF;
  v8.i64[0] = 0xE1E1E1E1E1E1E1E1;
  v8.i64[1] = 0xE1E1E1E1E1E1E1E1;
  v9.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v9.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v10 = ((v4 - 1796527618) & 0x6B14DFC9) - 8010 + v3;
  v13.val[0].i64[0] = v10 & 0xF;
  v13.val[0].i64[1] = (v3 + 14) & 0xF;
  v11.i64[0] = vqtbl4q_s8(v13, xmmword_10069D330).u64[0];
  v11.i64[1] = vqtbl4q_s8(v14, xmmword_10069D330).u64[0];
  v14.val[0] = vrev64q_s8(veorq_s8(veorq_s8(*(v6 - 15 + v10), *(v1 + v13.val[0].i64[0] - 15)), veorq_s8(*(v13.val[0].i64[0] + v0 - 14), *(v2 + v13.val[0].i64[0] - 15))));
  v14.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v14.val[0], v14.val[0], 8uLL), v9), vmulq_s8(v11, v8)));
  *(v6 - 15 + v10) = vextq_s8(v14.val[0], v14.val[0], 8uLL);
  return (*(v7 + 8 * ((14263 * ((v3 & 0x10) == 16)) ^ v4)))(v13.val[0].i64[1]);
}

uint64_t sub_1000A93F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v22 = 1824088897 * ((((&a15 | 0xD46C2B5A) ^ 0xFFFFFFFE) - (~&a15 | 0x2B93D4A5)) ^ 0x73FA07C7);
  a19 = -654855621 - v22;
  a20 = v22 + v21 + 1674575186;
  a16 = v22 - 1394325047;
  a17 = a14;
  a18 = &a13;
  v23 = (*(v20 + 8 * (v21 ^ 0x2AD0)))(&a15);
  return (*(v20 + 8 * ((7 * (a15 == ((v21 + 1314577545) & 0x1F1E) + (v21 ^ 0xF80797))) | v21)))(v23);
}

void sub_1000A94D8(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  LODWORD(STACK[0x794]) = 16257999;
  JUMPOUT(0x10005E34CLL);
}

uint64_t sub_1000A94F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, unsigned int a23)
{
  v27 = (((&a18 | 0x4C466011) - &a18 + (&a18 & 0xB3B99FE8)) ^ 0x142FB373) * v23;
  a19 = v27 + 364398105;
  a22 = 1032869496 - v27;
  a23 = v27 + v25 + 1674576711;
  a20 = a13;
  a21 = &a16;
  v28 = (*(v24 + 8 * (v25 + 7205)))(&a18);
  return (*(v24 + 8 * (((a18 == v26 + (v25 ^ 0xAC) - 2511) * ((v25 + 1753345691) & 0x977E0FFF ^ 0x1105)) ^ v25)))(v28);
}

uint64_t sub_1000A95D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = ((&a14 & 0x29D0F29D | ~(&a14 | 0x29D0F29D)) ^ 0x8E46DE00) * v20;
  a18 = -654855621 - v22;
  a19 = v22 + v21 + 1674574265;
  a15 = v22 - 1218448863;
  a16 = a11;
  a17 = &a10;
  v23 = (*(v19 + 8 * ((v21 - 2960) ^ 0x22E9)))(&a14);
  return (*(v19 + 8 * ((8817 * (a14 == (v21 ^ 0xF8013E))) ^ (v21 - 2960))))(v23);
}

uint64_t sub_1000A9694()
{
  STACK[0x418] = v0 + 8;
  v3 = STACK[0x7C8];
  LODWORD(STACK[0x618]) = STACK[0x520];
  STACK[0x3C8] = v3;
  STACK[0x728] = 0;
  LODWORD(STACK[0x8B0]) = 197499219;
  LOWORD(STACK[0x6F6]) = -11161;
  LODWORD(STACK[0x634]) = 197499219;
  LODWORD(STACK[0x5C4]) = 197499219;
  STACK[0x400] = 0x4789E5A74F535ADDLL;
  STACK[0x4F8] = 0;
  v4 = (*(v2 + 8 * (v1 + 5825)))(16, 0x20040A4A59CD2);
  STACK[0x848] = v4;
  return (*(v2 + 8 * (((v4 != 0) * ((v1 + 2282) ^ ((v1 - 3273) | 0x1421) ^ 0x30)) ^ v1)))();
}

uint64_t sub_1000A9888@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = (a1 ^ v64) + a25;
  STACK[0x968] = v66;
  return (*(v65 + 8 * ((a64 + 2756) ^ ((v66 > a21) | (32 * (v66 > a21))))))();
}

uint64_t sub_1000A98DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  LODWORD(STACK[0x4FC]) = a6;
  LODWORD(STACK[0x500]) = v31;
  LODWORD(STACK[0x504]) = a3;
  LODWORD(STACK[0x524]) = a8;
  LODWORD(STACK[0x4C8]) = 0;
  STACK[0x570] = (v32 - 1587);
  return (*(v34 + 8 * ((((v32 + 19) ^ 0x1C79) * (v33 < 0x40)) ^ v32)))(a1, a2, a3, a4, v34, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_1000A9988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, int a22)
{
  a20 = v24 - ((2 * v24) & 0x39AD4E2AD03EC198) + ((v26 - 1895629830) & 0x7CFBCF) - 0x632958EA97E0A803 + 956911519 * ((((2 * v25) | 0x13323379957FC4D4) - v25 - 0x99919BCCABFE26ALL) ^ 0x4CAF6C60202E926FLL);
  a21 = a16;
  a19 = (v26 - 3335) ^ (956911519 * ((((2 * v25) | 0x957FC4D4) - v25 + 893394326) ^ 0x202E926F));
  v27 = (*(v22 + 8 * (v26 + 5242)))(&a19);
  return (*(v22 + 8 * ((13230 * (a22 == v23)) ^ v26)))(v27);
}

uint64_t sub_1000A9AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  a12 = 476323082 - 1710126949 * (((&a12 | 0x3606E2C9) + (~&a12 | 0xC9F91D36)) ^ 0x41DB958);
  v15 = (*(v13 + 77088))(&a12);
  return (*(v13 + 8 * ((7761 * (a13 == 16257999)) ^ v14)))(v15);
}

uint64_t sub_1000A9BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a15 = a12;
  a16 = &a11;
  a14 = (v16 + 1514) ^ (33731311 * (((&a13 | 0xD1760468) - &a13 + (&a13 & 0x2E89FB90)) ^ 0xE880CE4B));
  (*(v17 + 8 * (v16 + 7863)))(&a13);
  a15 = a12;
  LODWORD(a16) = v16 - 2008441969 * ((&a13 - 1283837802 - 2 * (&a13 & 0xB37A3096)) ^ 0xFBE36498) + 3947;
  v18 = (*(v17 + 8 * (v16 + 7913)))(&a13);
  return (*(v17 + 8 * (((a13 == 16257999) * (((v16 + 1568897277) & 0x867D) + 1056)) ^ v16)))(v18);
}

uint64_t sub_1000A9D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8 * (v5 ^ 0x2DEA)))(STACK[0x3C0]);
  v6 = STACK[0x3E8];
  *v4 = 0;
  return (STACK[0x480])(4294959990, 3958, LODWORD(STACK[0x3D0]), v6, 5618, 1062104474, 3232865901, 5206);
}

uint64_t sub_1000A9DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53)
{
  v55 = (*(v54 + 8 * (v53 + 4500)))(LODWORD(STACK[0x854]) ^ 0xBC59953u, 0x100004077774924);
  STACK[0xA78] = v55;
  if (v55)
  {
    a53 = 16257999;
  }

  LODWORD(STACK[0xA84]) = a53;
  return (*(v54 + 8 * (((v55 == 0) * ((v53 + 700) ^ v53 ^ 0x2D9)) ^ v53)))();
}

uint64_t sub_1000A9E20(uint64_t a1)
{
  v3 = STACK[0x32C];
  LODWORD(STACK[0x47C]) = STACK[0x2E0];
  LODWORD(STACK[0x754]) = STACK[0x2F0];
  LODWORD(STACK[0x6C4]) = STACK[0x300];
  LODWORD(STACK[0x3D4]) = v1;
  return (*(v2 + 8 * (((v3 - 5482 + v3 - 3295 - 2285) * (a1 == 0)) ^ (v3 - 3028))))();
}

uint64_t sub_1000A9E7C()
{
  v4 = (v3 + 2409) | 0xE0;
  v10 = (v3 + 7171) ^ (((((&v8 | 0x9B7ECDEA) ^ 0xFFFFFFFE) - (~&v8 | 0x64813215)) ^ 0x3CE8E177) * v1);
  v9 = v6;
  (*(v0 + 8 * (v3 ^ 0x211Bu)))(&v8);
  v10 = (v4 + 4538) ^ ((&v8 ^ 0x5869D362) * v1);
  v9 = v7;
  (*(v0 + 8 * (v4 + 5804)))(&v8);
  return (v2 - 16257999);
}

uint64_t sub_1000A9F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = v9 - 16;
  v13 = *(a5 + v12 - 16);
  *&v14 = a5 + v12 - 15;
  *(&v14 + 1) = a5 + v12 - 16;
  *&STACK[0x280] = v14;
  *&STACK[0x290] = v13;
  *&v14 = a5 + v12 - 13;
  *(&v14 + 1) = a5 + v12 - 14;
  *&STACK[0x270] = v14;
  v15.i64[0] = a5 + v12 - 5;
  v15.i64[1] = a5 + v12 - 6;
  v16.i64[0] = a5 + v12 - 3;
  v16.i64[1] = a5 + v12 - 4;
  v17.i64[0] = a5 + v12 - 1;
  v17.i64[1] = a5 + v12 - 2;
  v18.i64[0] = a5 + v12 - 7;
  v18.i64[1] = a5 + v12 + (a1 ^ v6);
  v19 = *&STACK[0x3B0];
  v20 = vandq_s8(v18, *&STACK[0x3C0]);
  v21 = vandq_s8(v17, *&STACK[0x3C0]);
  v22 = vandq_s8(v16, *&STACK[0x3C0]);
  v23 = vandq_s8(v15, *&STACK[0x3C0]);
  v24 = vsraq_n_u64(vshlq_n_s64(v23, 0x38uLL), v23, 8uLL);
  v25 = vsraq_n_u64(vshlq_n_s64(v22, 0x38uLL), v22, 8uLL);
  v26 = vsraq_n_u64(vshlq_n_s64(v21, 0x38uLL), v21, 8uLL);
  v27 = vsraq_n_u64(vshlq_n_s64(v20, 0x38uLL), v20, 8uLL);
  v28 = vaddq_s64(v26, *&STACK[0x3B0]);
  v29 = vaddq_s64(v25, *&STACK[0x3B0]);
  v31 = *&STACK[0x390];
  v30 = *&STACK[0x3A0];
  v32 = *&STACK[0x380];
  *&STACK[0x260] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v27), *&STACK[0x380]), vorrq_s8(vaddq_s64(v27, *&STACK[0x3B0]), *&STACK[0x3A0]));
  v33 = vaddq_s64(vorrq_s8(vsubq_s64(v31, v26), v32), vorrq_s8(v28, v30));
  v34 = *&STACK[0x350];
  v35 = vsubq_s64(*&STACK[0x350], vaddq_s64(vorrq_s8(vsubq_s64(v31, v24), v32), vorrq_s8(vaddq_s64(v24, v19), v30)));
  v36 = vsubq_s64(*&STACK[0x350], vaddq_s64(vorrq_s8(vsubq_s64(v31, v25), v32), vorrq_s8(v29, v30)));
  v37 = veorq_s8(v36, *&STACK[0x340]);
  v38 = veorq_s8(v35, *&STACK[0x340]);
  v39 = *&STACK[0x340];
  v40 = *&STACK[0x320];
  v41 = veorq_s8(v35, *&STACK[0x330]);
  v42 = veorq_s8(v36, *&STACK[0x330]);
  v43 = *&STACK[0x330];
  v44 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v41), *&STACK[0x320]);
  v45 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), v42), *&STACK[0x320]);
  v46 = veorq_s8(v45, vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL));
  v47 = veorq_s8(v44, vsraq_n_u64(vshlq_n_s64(v41, 3uLL), v41, 0x3DuLL));
  v48 = vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v47);
  v50 = vaddq_s64(v48, v46);
  v51 = *&STACK[0x300];
  v52 = *&STACK[0x310];
  v54 = *&STACK[0x2E0];
  v53 = *&STACK[0x2F0];
  v55 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v50, v50), *&STACK[0x310]), v50), *&STACK[0x300]), *&STACK[0x2F0]);
  v56 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v49, v49), *&STACK[0x310]), v49), *&STACK[0x300]), *&STACK[0x2F0]);
  v57 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v58 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v59 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v58);
  v61 = veorq_s8(vaddq_s64(v59, v57), *&STACK[0x2E0]);
  v62 = veorq_s8(v60, *&STACK[0x2E0]);
  v63 = vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL);
  v64 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v65 = veorq_s8(v61, v63);
  v66 = vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v65);
  v68 = *&STACK[0x2D0];
  v69 = veorq_s8(vaddq_s64(v66, v64), *&STACK[0x2D0]);
  v70 = veorq_s8(v67, *&STACK[0x2D0]);
  v71 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v72 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v73 = veorq_s8(v69, v71);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = vaddq_s64(v74, v72);
  v78 = *&STACK[0x360];
  v77 = *&STACK[0x370];
  v79 = veorq_s8(v76, *&STACK[0x370]);
  v80 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v76, v10), *&STACK[0x360]), v79), vandq_s8(v79, v10));
  v81 = veorq_s8(v75, *&STACK[0x370]);
  v82 = *&STACK[0x2B0];
  v83 = *&STACK[0x2C0];
  v84 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v75, v10), *&STACK[0x360]), v81), vandq_s8(v81, v10)), *&STACK[0x2C0]);
  v85 = veorq_s8(v80, *&STACK[0x2C0]);
  v86 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v87 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v86), *&STACK[0x2B0]);
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v87), *&STACK[0x2B0]);
  v90 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v91 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v92 = veorq_s8(v88, v90);
  v93 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v19.i64[0] = a5 + v12 - 11;
  v19.i64[1] = a5 + v12 - 12;
  *&STACK[0x250] = v19;
  v95 = vsubq_s64(v34, v33);
  v96 = *&STACK[0x240];
  v245.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v94, v92), v11), vnegq_s64(vandq_s8(vshlq_n_s64(v15, 3uLL), *&STACK[0x240])));
  v245.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v93, v91), v11), vnegq_s64(vandq_s8(vshlq_n_s64(v16, 3uLL), *&STACK[0x240])));
  v97 = veorq_s8(v95, v39);
  v98 = veorq_s8(v95, v43);
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v40);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v101, v101), v52), v101), v51), v53);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v54);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v106 = v68;
  v107 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), v68);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = v77;
  v111 = veorq_s8(v109, v77);
  v112 = v78;
  v113 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v109, v10), v78), v111), vandq_s8(v111, v10)), v83);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v82);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v115.i64[0] = a5 + v12 - 9;
  v115.i64[1] = a5 + v12 - 10;
  v118 = vaddq_s64(v117, v116);
  v119 = vandq_s8(v115, *&STACK[0x3C0]);
  v120 = vsubq_s64(v34, *&STACK[0x260]);
  v245.val[0] = vshlq_u64(veorq_s8(v118, v11), vnegq_s64(vandq_s8(vshlq_n_s64(v17, 3uLL), *&STACK[0x240])));
  v121 = veorq_s8(v120, v39);
  v122 = v39;
  v123 = veorq_s8(v120, v43);
  v124 = v43;
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v123), v40);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = v51;
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), v52), v127), v51), v53);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130), v54);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v133 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132), v106);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134);
  v136 = veorq_s8(v135, v110);
  v137 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v135, v10), v112), v136), vandq_s8(v136, v10)), v83);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), v82);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v142 = vandq_s8(v19, *&STACK[0x3C0]);
  v143 = vaddq_s64(v141, v140);
  v145 = *&STACK[0x270];
  v144 = *&STACK[0x280];
  v146 = vandq_s8(*&STACK[0x270], *&STACK[0x3C0]);
  v245.val[3] = vshlq_u64(veorq_s8(v143, v11), vnegq_s64(vandq_s8(vshlq_n_s64(v18, 3uLL), *&STACK[0x240])));
  v147 = vandq_s8(*&STACK[0x280], *&STACK[0x3C0]);
  v148 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v149 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v150 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v151 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v152 = *&STACK[0x3A0];
  v153 = *&STACK[0x3B0];
  v155 = *&STACK[0x380];
  v154 = *&STACK[0x390];
  *&STACK[0x260] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x390], v151), *&STACK[0x380]), vorrq_s8(vaddq_s64(v151, *&STACK[0x3B0]), *&STACK[0x3A0]));
  v156 = vaddq_s64(vorrq_s8(vsubq_s64(v154, v150), v155), vorrq_s8(vaddq_s64(v150, v153), v152));
  v157 = vaddq_s64(vorrq_s8(vsubq_s64(v154, v149), v155), vorrq_s8(vaddq_s64(v149, v153), v152));
  v158 = vsubq_s64(v34, vaddq_s64(vorrq_s8(vsubq_s64(v154, v148), v155), vorrq_s8(vaddq_s64(v148, v153), v152)));
  v159 = vsubq_s64(v34, v157);
  v160 = v34;
  v149.i64[0] = vqtbl4q_s8(v245, *&STACK[0x230]).u64[0];
  v161 = veorq_s8(v159, v122);
  v162 = veorq_s8(v158, v122);
  v245.val[1] = v122;
  v163 = veorq_s8(v158, v124);
  v164 = veorq_s8(v159, v124);
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v40);
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v164), v40);
  v167 = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v168 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v169 = veorq_s8(v165, v167);
  v170 = vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL);
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v169);
  v172 = vaddq_s64(v170, v168);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v172, v172), v52), v172), v128), v53);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v171, v171), v52), v171), v128), v53);
  v175 = vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL);
  v176 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v177 = veorq_s8(v173, v175);
  v178 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v177);
  v180 = veorq_s8(vaddq_s64(v178, v176), v54);
  v181 = veorq_s8(v179, v54);
  v182 = v54;
  v183 = vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL);
  v184 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v185 = veorq_s8(v180, v183);
  v186 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v185);
  v188 = veorq_s8(vaddq_s64(v186, v184), v106);
  v189 = veorq_s8(v187, v106);
  v190 = v106;
  v191 = vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL);
  v192 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v193 = veorq_s8(v188, v191);
  v194 = vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL);
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v193);
  v196 = vaddq_s64(v194, v192);
  v197 = veorq_s8(v196, *&STACK[0x370]);
  v198 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v196, v10), *&STACK[0x360]), v197), vandq_s8(v197, v10));
  v199 = veorq_s8(v195, *&STACK[0x370]);
  v200 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v195, v10), *&STACK[0x360]), v199), vandq_s8(v199, v10)), v83);
  v201 = veorq_s8(v198, v83);
  v202 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v203 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL));
  v204 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v202), v82);
  v205 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v203), v82);
  v206 = vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL);
  v207 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL));
  v208 = vsubq_s64(v34, v156);
  v244.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), veorq_s8(v204, v206)), v11), vnegq_s64(vandq_s8(vshlq_n_s64(v144, 3uLL), v96)));
  v244.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v207), v11), vnegq_s64(vandq_s8(vshlq_n_s64(v145, 3uLL), v96)));
  v209 = veorq_s8(v208, v122);
  v210 = veorq_s8(v208, v124);
  v211 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v210), v40);
  v212 = veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v213 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v212);
  v214 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v213, v213), v52), v213), v128), v53);
  v215 = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL));
  v216 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215), v182);
  v217 = veorq_s8(v216, vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL));
  v218 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), v217), v106);
  v219 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v220 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v219);
  v221 = veorq_s8(v220, *&STACK[0x370]);
  v222 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v220, v10), *&STACK[0x360]), v221), vandq_s8(v221, v10)), v83);
  v223 = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  v224 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v223), v82);
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL)));
  v226 = vsubq_s64(v160, *&STACK[0x260]);
  v244.val[1] = vshlq_u64(veorq_s8(v225, v11), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x250], 3uLL), v96)));
  v227 = veorq_s8(v226, v245.val[1]);
  v228 = veorq_s8(v226, v124);
  v229 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), v228), v40);
  v230 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL));
  v231 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230);
  v232 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v231, v231), v52), v231), v128), v53);
  v233 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v234 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v233), v182);
  v235 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL));
  v236 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235), v190);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237);
  v239 = veorq_s8(v238, *&STACK[0x370]);
  v240 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v238, v10), *&STACK[0x360]), v239), vandq_s8(v239, v10)), v83);
  v241 = veorq_s8(v240, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v242 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), v241), v82);
  v244.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL))), v11), vnegq_s64(vandq_s8(vshlq_n_s64(v115, 3uLL), v96)));
  v149.i64[1] = vqtbl4q_s8(v244, *&STACK[0x230]).u64[0];
  v244.val[0] = vrev64q_s8(v149);
  *(a6 + v12) = veorq_s8(vextq_s8(v244.val[0], v244.val[0], 8uLL), *&STACK[0x290]);
  return (*(a4 + 8 * (((a3 == v12) * v7) ^ v8)))();
}

uint64_t sub_1000A9F74@<X0>(int a1@<W8>)
{
  v3 = *(v1 + 8);
  STACK[0x5D8] = v3;
  return (*(v2 + 8 * ((2040 * (((v3 == 0) ^ (a1 + 115)) & 1)) ^ (a1 + 423))))();
}

void sub_1000AA130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  *a8 = v8;
  *v9 = v10;
  JUMPOUT(0x1000374CCLL);
}

uint64_t sub_1000AA154@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4 = a2 ^ 0x1826;
  v5 = (*(v3 + 8 * ((a2 ^ 0x1826) + 6464)))(a1, 1159995220);
  *v2 = v5;
  return (*(v3 + 8 * (((v5 == 0) * (v4 - 4974 + ((v4 - 405454051) & 0x182AB797))) ^ v4)))();
}

uint64_t sub_1000AA1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char *a15, int a16, unsigned int a17, int a18)
{
  v21 = 956911519 * ((2 * (&a15 & 0xA916A08) - &a15 - 177302032) ^ 0x1FFFE5F5);
  HIDWORD(a15) = v21 + 543642722;
  a16 = v21 ^ 0x61FE7920;
  a17 = 1002199528 - v21;
  a18 = v21 ^ 0x1602;
  (*(v18 + 77008))(&a15);
  a17 = 1317436891 * ((-853593115 - (&a15 | 0xCD1F33E5) + (&a15 | 0x32E0CC1A)) ^ 0x82E3546C) + 8154;
  a15 = &a13;
  v22 = (*(v18 + 77096))(&a15);
  return (*(v18 + 8 * ((13459 * (a16 == v20)) ^ v19)))(v22);
}

uint64_t sub_1000AA38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  *v42 = v42[623] - 2 + ((-((v44 - 624) ^ (v41 - 623)) | (v44 - 624)) >= 0) + 1;
  v47 = v46 - 152;
  *(v47 + 32) = v45 | 3;
  *(v46 - 144) = a36 - v45 + 108;
  *(v46 - 140) = a36 - v45 + 952;
  *(v47 + 16) = (v43 + 1) - v45;
  *(v46 - 128) = v45 ^ 0x4EF48A69;
  *(v46 - 152) = a36 ^ v45;
  *(v46 - 148) = v45;
  v48 = (*(a40 + 8 * (v40 - 1232691363)))(v46 - 152);
  return (*(a40 + 8 * *(v46 - 124)))(v48);
}

uint64_t sub_1000AA3E8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 - 7489) | 0x2B7;
  (*(v2 + 8 * (v1 + 1795)))(a1);
  *(STACK[0x878] + 24) = 0;
  (*(v2 + 8 * (v3 ^ 0x2673)))();
  STACK[0x878] = 0;
  return sub_100106288();
}

uint64_t sub_1000AA488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, unsigned int a19)
{
  a18 = a15;
  a19 = (v20 + 4769) ^ (1824088897 * (((&a17 | 0x9039FFCF) - (&a17 & 0x9039FFCF)) ^ 0xC8502CAD));
  v21 = (*(v19 + 8 * (v20 ^ 0x2875)))(&a17);
  return sub_1000BFFE0(v21);
}

uint64_t sub_1000AA494(uint64_t a1)
{
  v6 = v4 - 1;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * ((1502 * (v6 == ((v3 + 1319743155) & 0xCEA475A7) - 1187)) ^ (v3 + v2))))();
}

uint64_t sub_1000AA4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v23 = ((2 * ((&a15 ^ 0xE991D03) & 0x72398919) - (&a15 ^ 0xE991D03) + 231110370) ^ 0x5B36B883) * v20;
  a16 = v23 + 1006262014;
  a17 = a10;
  a18 = &a11;
  a19 = -654855621 - v23;
  a20 = v23 + v22 + 1674575555;
  v24 = (*(v21 + 8 * (v22 + 6049)))(&a15);
  return (*(v21 + 8 * (((a15 == v22 + 16254440) * (v22 - 3544)) ^ v22)))(v24);
}

uint64_t sub_1000AA9F4@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W7>, uint64_t a8@<X8>)
{
  v20 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v21 = vdupq_n_s64(0x38uLL);
  v22 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v23 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v24 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  v25 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v26 = v16 - v17 - 8;
  v27 = vdupq_n_s64(v11);
  v28 = vdupq_n_s64(v12);
  v29 = vdupq_n_s64(v13);
  v30 = vdupq_n_s64(v14);
  v31 = vdupq_n_s64(v15);
  v32 = vdupq_n_s64(a1);
  v33 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v34 = vdupq_n_s64(a2);
  v35 = vdupq_n_s64(v9);
  v36 = vdupq_n_s64(a3);
  v37 = vdupq_n_s64(v19);
  v38 = vdupq_n_s64(a4);
  v39 = vdupq_n_s64(a5);
  v40 = vdupq_n_s64(v10);
  v41 = vdupq_n_s64(a6);
  *&STACK[0x3D0] = xmmword_10069D310;
  v42.i64[0] = a8 + v26 + 17;
  v42.i64[1] = a8 + v26 + 16;
  v43.i64[0] = a8 + v26 + 15;
  v43.i64[1] = a8 + v26 + 14;
  v44.i64[0] = a8 + v26 + 13;
  v44.i64[1] = a8 + v26 + 12;
  v45.i64[0] = a8 + (v18 + 807) + v26 - 1843;
  v45.i64[1] = a8 + v26 + 10;
  v46 = vandq_s8(v45, v20);
  v47 = vandq_s8(v44, v20);
  v48 = vandq_s8(v43, v20);
  v49 = vandq_s8(v42, v20);
  v50 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v51 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v22);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v22);
  v54 = veorq_s8(v53, v23);
  v55 = veorq_s8(v52, v23);
  v56 = veorq_s8(v52, v24);
  v57 = veorq_s8(v53, v24);
  v58 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v56), v25);
  v59 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v57), v25);
  v60 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v61 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v62 = veorq_s8(v58, v60);
  v63 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v65 = vaddq_s64(v63, v61);
  v66 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v65, v65), v27), v65), v28), v29);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v64, v64), v27), v64), v28), v29);
  v68 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v69 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v70 = veorq_s8(v66, v68);
  v71 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v70);
  v73 = vaddq_s64(v71, v69);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(v73, vandq_s8(vaddq_s64(v73, v73), v30)), v31), v32);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(v72, vandq_s8(vaddq_s64(v72, v72), v30)), v31), v32);
  v76 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v77 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v78 = veorq_s8(v74, v76);
  v79 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v78);
  v81 = veorq_s8(vaddq_s64(v79, v77), v33);
  v82 = veorq_s8(v80, v33);
  v83 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v84 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v85 = veorq_s8(v81, v83);
  v86 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v85);
  v88 = vaddq_s64(v86, v84);
  v89 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v87, v34), vorrq_s8(v87, v35)), v35), v36);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v88, v34), vorrq_s8(v88, v35)), v35), v36);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v92 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), v37);
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v92), v37);
  v95 = vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL);
  v96 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v97 = veorq_s8(v93, v95);
  v98 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v99 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v100 = vaddq_s64(v51, v22);
  v101 = veorq_s8(vaddq_s64(v98, v96), v38);
  v102 = veorq_s8(vaddq_s64(v99, v97), v38);
  v139.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v102, v39), vorrq_s8(v102, v40)), v40), v41), vnegq_s64(vandq_s8(vshlq_n_s64(v45, 3uLL), v21)));
  v139.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v101, v39), vorrq_s8(v101, v40)), v40), v41), vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), v21)));
  v103 = veorq_s8(v100, v23);
  v104 = veorq_s8(v100, v24);
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v25);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v107, v107), v27), v107), v28), v29);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(v110, vandq_s8(vaddq_s64(v110, v110), v30)), v31), v32);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v33);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v115, v34), vorrq_s8(v115, v35)), v35), v36);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v37);
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL))), v38);
  v120 = vaddq_s64(v50, v22);
  v139.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, v39), vorrq_s8(v119, v40)), v40), v41), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), v21)));
  v121 = veorq_s8(v120, v23);
  v122 = veorq_s8(v120, v24);
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v25);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v125, v125), v27), v125), v28), v29);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(v128, v128), v30)), v31), v32);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130), v33);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v132);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v133, v34), vorrq_s8(v133, v35)), v35), v36);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v136 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135), v37);
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL))), v38);
  v139.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v137, v39), vorrq_s8(v137, v40)), v40), v41), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v21)));
  *(a8 + v26 + 10) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v8 + v26)), 0x3C3C3C3C3C3C3C3CLL), *&vqtbl4q_s8(v139, *&STACK[0x3D0])));
  return (*(STACK[0x3E8] + 8 * (((16 * ((a7 & 7) == v26)) | (32 * ((a7 & 7) == v26))) ^ v18)))();
}

uint64_t sub_1000AAFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, int a18)
{
  *v18 = a18;
  if (a10)
  {
    v21 = a16 == 0;
  }

  else
  {
    v21 = 1;
  }

  v23 = v21 || a11 == 0;
  return (*(v20 + 8 * ((v23 * (((((v19 - 980) | 5) - 1947) | 0x1004) - 4126)) ^ ((v19 - 980) | 5))))();
}

uint64_t sub_1000AB08C()
{
  STACK[0x4B0] = 0;
  v3 = STACK[0x65C];
  v4 = (v1 + 2083931563) & 0x83C9B6AE;
  STACK[0x450] = STACK[0x4B0];
  STACK[0x640] += (v4 - 873) ^ 0xFFFFFFFFFFFFFCDBLL;
  return (*(v2 + 8 * ((5523 * (v3 == v0)) ^ v4)))();
}

uint64_t sub_1000AB0F8(uint64_t a1)
{
  STACK[0x640] = v2;
  LODWORD(STACK[0x824]) = 16215976;
  STACK[0x510] = *(v3 + 8 * (v1 - 1835));
  STACK[0x3B0] = &STACK[0x4C8];
  v4 = STACK[0x4C8];
  STACK[0x480] = STACK[0x4C8];
  return (*(v3 + 8 * (((v4 != 0) * ((6 * (v1 ^ 0xBFD)) ^ 0xDAA)) ^ v1 ^ 0x9EA)))(a1, 16215976);
}

uint64_t sub_1000AB180()
{
  if (v0 == 16257999)
  {
    v4 = STACK[0x810];
    v5 = *(STACK[0x810] + 8);
    v6 = STACK[0x7B8];
    v6[1] = v5;
    *v6 = *v4;
    return (*(v2 + 8 * ((7 * (((v5 == 0) ^ v1 ^ 0x45) & 1)) ^ (v1 + 6735))))();
  }

  else
  {
    if (v0 != 16215947)
    {
      JUMPOUT(0x1000AB138);
    }

    return (*(v2 + 8 * ((((*(STACK[0x888] + 8) == 0) ^ ((v1 ^ 0x84) + 115)) & 1 | (2 * (((*(STACK[0x888] + 8) == 0) ^ ((v1 ^ 0x84) + 115)) & 1))) ^ (v1 + 4855))))();
  }
}

uint64_t sub_1000AB27C()
{
  v2 = *(STACK[0x5B0] + 24);
  STACK[0x850] = v2;
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 - 1)) & 1) * (((v0 - 79381800) & 0x4BB2A4B) - 2533)) ^ v0)))();
}

uint64_t sub_1000AB314(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v9 = ((2 * (a6 + 1593)) & 0xEFCFDDEE) + ((a6 + 1593) ^ 0xF7E7EEF7) + 135794953;
  v10 = ((*(v8 + v9) ^ 0x3C) << 24) | ((*(v8 + v9 + 1) ^ 0x3C) << 16) | ((*(v8 + v9 + 2) ^ 0x3C) << 8);
  v11 = *(v8 + v9 + 3) ^ 0x3C;
  return (*(v6 + 8 * ((63 * ((a4 & 0x40000000) != (((a3 ^ 0xB0D) + 2959) ^ 0x3792) - 5495)) ^ a3 ^ 0xB0Du)))(a1, (v10 | v11) - 2 * ((v10 | v11) & a5 ^ v11 & 8u) + v7);
}

uint64_t sub_1000AB3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, int a15, uint64_t a16)
{
  v20 = 1875091903 * (((&a13 | 0x134A43CD) - (&a13 & 0x134A43CD)) ^ 0x253FC04E);
  a16 = a12;
  a14 = (v16 ^ 0xFDDFFEFE) + ((v19 ^ 0xFBBFE724) & (2 * v16)) + 574404524 + v20;
  a15 = v20 + v19 + 851;
  v21 = (*(v17 + 8 * (v19 ^ 0x3F74)))(&a13);
  return (*(v17 + 8 * ((14781 * (a13 == v18)) ^ v19)))(v21);
}

uint64_t sub_1000AB534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t *a15, unsigned int a16, unsigned int a17)
{
  v21 = ((2 * (&a12 & 0x206F1CA0) - &a12 + 1603330910) ^ 0x7F9303C) * v17;
  a13 = v21 - 4888467;
  a14 = a11;
  a15 = &a9;
  a16 = -654855621 - v21;
  a17 = v21 + v20 + 1674577254;
  v22 = (*(v19 + 8 * (v20 + 7748)))(&a12);
  return (*(v19 + 8 * (((a12 == v18) * (50 * (v20 ^ 0x71C) + 439 * (v20 ^ 0x740) - 1197)) ^ v20)))(v22);
}

uint64_t sub_1000AB600(uint64_t a1)
{
  if (!(*(v2 + 8 * (v3 + 7653)))(a1, 0))
  {
    *v1 = a1;
    JUMPOUT(0x1000AB670);
  }

  return sub_1000AB658();
}

uint64_t sub_1000AB658()
{
  result = (*(v3 + 8 * (v2 + 7510)))();
  *v0 = v1;
  return result;
}

uint64_t sub_1000AB68C@<X0>(uint64_t a1@<X0>, char a2@<W4>, int a3@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7) ^ 0x3C;
  return (*(v6 + 8 * ((35 * (((v5 ^ (a2 - 120)) ^ (v7 == 0)) & 1)) ^ (a3 + v5 + 1677))))();
}

uint64_t sub_1000AB758@<X0>(int a1@<W8>)
{
  STACK[0x370] = v1;
  *&STACK[0x320] = vdupq_n_s64(0x38uLL);
  *&STACK[0x330] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3B0] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x240] = vdupq_n_s64(0x3F2C2F035CDE3F7EuLL);
  *&STACK[0x300] = vdupq_n_s64(0x893A92C7CC372753);
  *&STACK[0x310] = vdupq_n_s64(0xC0D3D0FCA321C081);
  *&STACK[0x2F0] = vdupq_n_s64(0x217C775055C1560FuLL);
  *&STACK[0x2D0] = vdupq_n_s64(0x97AFA7879053DDDBLL);
  *&STACK[0x2E0] = vdupq_n_s64(0x9DF2A9C1DA7C902ELL);
  *&STACK[0x2B0] = vdupq_n_s64(0x7010B40069EC0004uLL);
  *&STACK[0x2C0] = vdupq_n_s64(0x1FDE97FF2C27FFF6uLL);
  *&STACK[0x290] = vdupq_n_s64(0xC41AAC7C4B06DFA4);
  *&STACK[0x2A0] = vdupq_n_s64(0x297302C53C357F1BuLL);
  *&STACK[0x350] = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x360] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x340] = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x280] = vdupq_n_s64(0x321FCFCE9C141D67uLL);
  *&STACK[0x230] = vdupq_n_s64(0xCDE0303163EBE298);
  *&STACK[0x270] = vdupq_n_s64(0x2835242ADE47B264uLL);
  *&STACK[0x250] = xmmword_10069D390;
  *&STACK[0x260] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x3A0] = xmmword_10069D330;
  return sub_1001ACA58(0x97AFA7879053DDDBLL, 0x9DF2A9C1DA7C902ELL, &off_100755B60, 0x1FDE97FF2C27FFF6, 0x297302C53C357F1BLL, (a1 - 1899722987) & 0x713B7B7F);
}

uint64_t sub_1000ABABC()
{
  v4 = (*(v1 + 8 * (v3 + 6131)))(*v2, *(v0 + 8 * (v3 ^ 0xD1B)));
  **(v0 + 8 * (v3 ^ 0xD81)) = v4;
  return (*(v1 + 8 * (((v4 == 0) * (v3 + 3802 + 2664 * (v3 ^ 0xDC6) - 15295)) | v3)))();
}

uint64_t sub_1000ABB34@<X0>(int a1@<W2>, int a2@<W8>)
{
  STACK[0x2A0] = ((STACK[0xAD0] + 4) ^ 0xE7EB427BF37FAF1ELL) + 0x7E57FFF5BCFFF4F8 + ((2 * (STACK[0xAD0] + 4)) & 0xCFD684F7E6FF5E3CLL);
  STACK[0x290] = ((STACK[0xAE0] + ((a2 + 849044933) & 0xCD64A43B ^ 0x2424)) ^ 0xF6F3DEFFB37FFC97) + 0x6F4F6371FCFFA77FLL + ((2 * (STACK[0xAE0] + ((a2 + 849044933) & 0xCD64A43B ^ 0x2424))) & 0xEDE7BDFF66FFF92ELL);
  STACK[0x280] = ((STACK[0xAC0] + 4) ^ 0xF6F767F3B47FAEFELL) + 0x6F4BDA7DFBFFF518 + ((2 * (STACK[0xAC0] + 4)) & 0xEDEECFE768FF5DFCLL);
  STACK[0x270] = ((STACK[0xAB0] + 4) ^ 0x7FCF67F9B8FFA716) - 0x198C258808800300 + ((2 * (STACK[0xAB0] + 4)) & 0xFF9ECFF371FF4E2CLL);
  STACK[0x260] = ((STACK[0xAA0] + 4) ^ 0xE66F43FFB6FFA5D7) + 0x7FD3FE71F97FFE3FLL + ((2 * (STACK[0xAA0] + 4)) & 0xCCDE87FF6DFF4BAELL);
  v2 = STACK[0xB28];
  STACK[0x250] = ((STACK[0xB28] + 4) ^ 0x76F7DB71B3FFEEDELL) - 0x10B4990003804AC8 + ((2 * (STACK[0xB28] + 4)) & 0xEDEFB6E367FFDDBCLL);
  STACK[0x240] = ((STACK[0xA80] + 4) ^ 0xEECF7F7DFFFFBE56) + 0x7773C2F3B07FE5C0 + ((2 * (STACK[0xA80] + 4)) & 0xDD9EFEFBFFFF7CACLL);
  STACK[0x230] = ((STACK[0xA60] + 4) ^ 0x76737E73B67FBF5FLL) - 0x10303C0206001B49 + ((2 * (STACK[0xA60] + 4)) & 0xECE6FCE76CFF7EBELL);
  STACK[0x220] = ((STACK[0xB68] + 4) ^ 0x6E7FCE79FD7FBEFFLL) - 0x83C8C084D001AE9 + ((2 * (STACK[0xB68] + 4)) & 0xDCFF9CF3FAFF7DFELL);
  STACK[0x210] = ((STACK[0xB78] + 4) ^ 0xE75FE3F5BD7FE4FFLL) + 0x7EE35E7BF2FFBF17 + ((2 * (STACK[0xB78] + 4)) & 0xCEBFC7EB7AFFC9FELL);
  STACK[0x200] = ((STACK[0xB88] + 4) ^ 0xF77FD2F5B9FFBD17) + 0x6EC36F7BF67FE6FFLL + ((2 * (STACK[0xB88] + 4)) & 0xEEFFA5EB73FF7A2ELL);
  STACK[0x2B0] = v2 + 10;
  STACK[0x3B0] = STACK[0x798];
  STACK[0x300] = STACK[0x708];
  STACK[0x3E0] = STACK[0x8C0];
  STACK[0x3D0] = STACK[0x588];
  STACK[0x3C0] = STACK[0x710];
  STACK[0x3A0] = STACK[0x5E0];
  STACK[0x320] = STACK[0x4C8];
  STACK[0x310] = STACK[0x6C0];
  STACK[0x2F0] = STACK[0x778];
  STACK[0x2E0] = STACK[0x528];
  STACK[0x2D0] = STACK[0x6D8];
  STACK[0x2C0] = STACK[0x698];
  STACK[0x390] = STACK[0x4E0];
  LODWORD(STACK[0x330]) = LOWORD(STACK[0xA3E]);
  LODWORD(STACK[0x370]) = LOWORD(STACK[0xA26]);
  LODWORD(STACK[0x360]) = LOWORD(STACK[0xA0E]);
  LODWORD(STACK[0x380]) = LOWORD(STACK[0x9FE]);
  LODWORD(STACK[0x340]) = LOWORD(STACK[0x9EA]);
  LODWORD(STACK[0x350]) = LOWORD(STACK[0x9BE]);
  return sub_100140A90(0x3D2CC4E5C304AE09, 0x3D956106EF62582ELL, a1);
}

uint64_t sub_1000AC648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v58 = ((((v57 - 15) | 0x24) ^ 0xE) + v56) & 0xF;
  LODWORD(STACK[0x62C]) = 1481390202 - v58;
  return (*(a4 + 8 * ((43 * ((16 - v58) + v56 >= 0xFFFFFFF6)) ^ v57)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_1000AC6BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = (((v3 + v5 + 2490) | 0x604u) ^ 0xFFFFFFFFFFFFF021) + v4;
  v8 = *(a2 + v7 - 15);
  v9 = *(a2 + v7 - 31);
  v10 = a1 + v7;
  *(v10 - 15) = v8;
  *(v10 - 31) = v9;
  return (*(v6 + 8 * ((1766 * ((v4 & 0xFFFFFFE0) == 32)) ^ (v5 + v2))))();
}

uint64_t sub_1000AC724@<X0>(int a1@<W4>, uint64_t a2@<X6>, uint64_t a3@<X7>, unint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v66 = a2 - 8;
  v67.i64[0] = v62 + v66 - 5;
  v67.i64[1] = v62 + v66 - 6;
  v68.i64[0] = v62 + v66 - 3;
  v68.i64[1] = v62 + v66 - 4;
  v69.i64[0] = v62 + v66 - 1;
  v69.i64[1] = v62 + v66 - 2;
  v70.i64[0] = v62 + v66 + (((a1 + 326) | 0x200u) ^ a4);
  v70.i64[1] = v62 + v66 - 8;
  v71 = vandq_s8(v70, *&STACK[0x310]);
  v72 = vandq_s8(v69, *&STACK[0x310]);
  v73 = vandq_s8(v68, *&STACK[0x310]);
  v74 = vandq_s8(v67, *&STACK[0x310]);
  v75 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v76 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v77 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v78 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v79 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x340], v78), *&STACK[0x330]), vorrq_s8(vaddq_s64(v78, *&STACK[0x360]), *&STACK[0x350]));
  v80 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x340], v77), *&STACK[0x330]), vorrq_s8(vaddq_s64(v77, *&STACK[0x360]), *&STACK[0x350]));
  v81 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x340], v76), *&STACK[0x330]), vorrq_s8(vaddq_s64(v76, *&STACK[0x360]), *&STACK[0x350]));
  v82 = vsubq_s64(*&STACK[0x300], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x340], v75), *&STACK[0x330]), vorrq_s8(vaddq_s64(v75, *&STACK[0x360]), *&STACK[0x350])));
  v83 = vsubq_s64(*&STACK[0x300], v81);
  v84 = veorq_s8(v83, *&STACK[0x2F0]);
  v85 = veorq_s8(v82, *&STACK[0x2F0]);
  v86 = veorq_s8(v82, *&STACK[0x2E0]);
  v87 = veorq_s8(v83, *&STACK[0x2E0]);
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v86), *&STACK[0x2D0]);
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v87), *&STACK[0x2D0]);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v91 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v92 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v91);
  v94 = vaddq_s64(v92, v90);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v94, v94), *&STACK[0x2C0]), v94), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v93, v93), *&STACK[0x2C0]), v93), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v97 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v98 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v99 = veorq_s8(v95, v97);
  v100 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v99);
  v102 = veorq_s8(vaddq_s64(v100, v98), *&STACK[0x290]);
  v103 = veorq_s8(v101, *&STACK[0x290]);
  v104 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v105 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v106 = veorq_s8(v102, v104);
  v107 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v106);
  v109 = veorq_s8(vaddq_s64(v107, v105), *&STACK[0x280]);
  v110 = veorq_s8(v108, *&STACK[0x280]);
  v111 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v112 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v113 = veorq_s8(v109, v111);
  v114 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v113);
  v116 = vaddq_s64(v114, v112);
  v117 = veorq_s8(v116, *&STACK[0x270]);
  v118 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v116, v64), v65), v117), vandq_s8(v117, v64));
  v119 = veorq_s8(v115, *&STACK[0x270]);
  v120 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v115, v64), v65), v119), vandq_s8(v119, v64)), *&STACK[0x260]);
  v121 = veorq_s8(v118, *&STACK[0x260]);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v123 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), *&STACK[0x250]);
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v123), *&STACK[0x250]);
  v126 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v127 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v128 = veorq_s8(v124, v126);
  v129 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v131 = vsubq_s64(*&STACK[0x300], v80);
  v166.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v130, v128), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v67, 3uLL), *&STACK[0x200])));
  v166.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v129, v127), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v68, 3uLL), *&STACK[0x200])));
  v132 = veorq_s8(v131, *&STACK[0x2F0]);
  v133 = veorq_s8(v131, *&STACK[0x2E0]);
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), *&STACK[0x2D0]);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v136, v136), *&STACK[0x2C0]), v136), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), *&STACK[0x290]);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), *&STACK[0x280]);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142);
  v144 = veorq_s8(v143, *&STACK[0x270]);
  v145 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v143, v64), v65), v144), vandq_s8(v144, v64)), *&STACK[0x260]);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v147 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), *&STACK[0x250]);
  v148 = vsubq_s64(*&STACK[0x300], v79);
  v166.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL))), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v69, 3uLL), *&STACK[0x200])));
  v149 = veorq_s8(v148, *&STACK[0x2F0]);
  v150 = veorq_s8(v148, *&STACK[0x2E0]);
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150), *&STACK[0x2D0]);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152);
  v154 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v153, v153), *&STACK[0x2C0]), v153), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), *&STACK[0x290]);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), *&STACK[0x280]);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159);
  v161 = veorq_s8(v160, *&STACK[0x270]);
  v162 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v160, v64), v65), v161), vandq_s8(v161, v64)), *&STACK[0x260]);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), *&STACK[0x250]);
  v166.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL))), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v70, 3uLL), *&STACK[0x200])));
  *(v61 + v66) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v166, v63)), *v70.i64[1]);
  return (*(a60 + 8 * (((a3 == v66) * v60) ^ a1)))();
}

_BYTE *sub_1000AC72C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, int a6, int a7, __int16 a8)
{
  result = v12;
  *v12 = (v15 ^ v17) >> 24;
  v12[4] = (v16 ^ v21) >> 24;
  v12[8] = (v8 ^ v23) >> 24;
  v12[12] = (v22 ^ v19) >> 24;
  v12[16] = (v20 ^ v24) >> 24;
  v12[24] = (v13 ^ v14) >> 24;
  v12[28] = (a7 ^ v9) >> 24;
  v12[20] = (a6 ^ v18) >> 24;
  v12[1] = (v15 ^ v17) >> 16;
  v12[5] = (v16 ^ v21) >> 16;
  v12[9] = BYTE2(v8) ^ BYTE2(v23);
  v12[13] = (v22 ^ v19) >> 16;
  v12[17] = (v20 ^ v24) >> 16;
  v12[21] = BYTE2(a6) ^ BYTE2(v18);
  v12[2] = (v15 ^ v17) >> 8;
  v12[25] = (v13 ^ v14) >> 16;
  v12[29] = (a7 ^ v9) >> 16;
  v12[6] = (v16 ^ v21) >> 8;
  v12[10] = (a8 ^ v23) >> 8;
  v12[14] = (v22 >> (((a7 & 0x4C) + (a7 & 0x4C ^ 0x4C) - 68) & 0xFC)) ^ BYTE1(v19);
  v12[18] = (v20 ^ v24) >> 8;
  v12[22] = (a5 ^ v18) >> 8;
  v12[30] = (a7 ^ v9) >> 8;
  v12[26] = (v13 ^ v14) >> 8;
  v12[3] = v15 ^ v17;
  v12[7] = v16 ^ v21;
  v12[11] = a8 ^ v23;
  v12[15] = v22 ^ v19;
  v12[19] = v20 ^ v24;
  v12[23] = a5 ^ v18;
  v12[27] = v13 ^ v14;
  v12[31] = a7 ^ v9;
  *(v11 + 36) = 16257999;
  return result;
}

void sub_1000AC8D4()
{
  v0 = LOWORD(STACK[0xA4E]);
  v1 = STACK[0xA50];
  LODWORD(STACK[0x370]) = 197499223;
  STACK[0x3B0] = STACK[0x7B0] + 24;
  LODWORD(STACK[0x2E0]) = LODWORD(STACK[0xA54]) ^ 0xD6A561FA;
  LODWORD(STACK[0x360]) = v0;
  LODWORD(STACK[0x340]) = v0 ^ 0x4CF9;
  STACK[0x3A0] = STACK[0x5F8] + 24;
  v2 = LOWORD(STACK[0xB1E]);
  LODWORD(STACK[0x350]) = v2;
  LODWORD(STACK[0x330]) = v2 ^ 0xFFFFA60A;
  v3 = STACK[0xB20];
  LODWORD(STACK[0x2D0]) = LODWORD(STACK[0xB24]) ^ 0xD6A561FA;
  STACK[0x390] = STACK[0x580] + 24;
  STACK[0x380] = STACK[0x658] + 24;
  LODWORD(STACK[0x300]) = v1;
  LODWORD(STACK[0x320]) = v1 ^ 0xD6A561FA;
  LODWORD(STACK[0x2F0]) = v3;
  LODWORD(STACK[0x310]) = v3 ^ 0xD6A561FA;
  JUMPOUT(0x10008CCECLL);
}

uint64_t sub_1000AC8F4@<X0>(uint64_t a1@<X8>)
{
  STACK[0x830] = 0;
  STACK[0x8B8] = 0;
  STACK[0x540] = *(v2 + 8 * v1);
  return sub_1001307C8(a1);
}

uint64_t sub_1000ACA20(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, char a45, uint64_t a46, uint64_t a47, unsigned int a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  v63 = v62;
  v64 = v58[1] ^ a1;
  LODWORD(a15) = 102 * (v60 ^ 0x2C5EF476);
  LODWORD(a14) = 9 * (v60 ^ 0x2C5EF580);
  v65 = ((a14 - v53 + 68) ^ (*v58 - (*v58 ^ v53)) ^ 0x6A ^ (v53 + (~(v53 << (a15 + 69)) | 0x2B) + 107)) + *v58;
  v66 = v58[2] ^ v61;
  v67 = v58[3] ^ v51;
  v85 = v58[4] ^ a48;
  v68 = v58[6] ^ v55;
  v69 = v58[7] ^ a6;
  v70 = v58[5] ^ v54;
  v71 = v58[8] ^ v59;
  v72 = v58[10] ^ v52;
  v73 = v58[9] ^ a7;
  v74 = v58[13] ^ v56;
  v75 = *(v62 + 12) ^ v58[12];
  v76 = *(v62 + 14) ^ v58[14];
  v77 = v58[11] ^ v57;
  v78 = *(v63 + 15) ^ v58[15];
  v79 = *(&off_100755B60 + v60 - 744420119) - 4;
  v80 = *&v79[8 * (v68 ^ 0x81)] ^ ((v68 ^ 0xDA) - 62);
  LODWORD(v63) = (v80 & 0x4D ^ 0xFFFFFF87) & (v80 & 0xB2 ^ 0xDF) | v80 & 0x30;
  v81 = v66 ^ v64 ^ v67 ^ ((v66 ^ 0xFFFFFFDE) - 62) ^ v77 ^ ((v67 ^ 0xFFFFFFDF) - 62) ^ v73 ^ ((v77 ^ 0xFFFFFFDF) - 62) ^ v70 ^ ((v73 ^ 0xFFFFFFDD) - 62) ^ v72 ^ v65 ^ ((v70 ^ 0xFFFFFFD9) - 62) ^ ((v65 ^ 0xFFFFFFDC) - 62);
  v82 = v68 ^ ((v72 ^ 0xFFFFFFDE) - 62) ^ v69 ^ v85 ^ ((v69 ^ 0xFFFFFFDB) - 62) ^ v74 ^ ((v85 ^ 0xFFFFFFD8) - 62) ^ ((v74 ^ 0xFFFFFFD9) - 62) ^ v71 ^ ((v71 ^ 0xFFFFFFDC) - 62);
  v83 = v81 ^ v82 ^ v76 ^ ((v76 ^ 0xFFFFFFDA) - 62) ^ v78 ^ ((v75 ^ 0xFFFFFFD8) - 62) ^ ((v78 ^ 0xFFFFFFDB) - 62) ^ *&v79[8 * (v66 ^ 0x185)] ^ *&v79[8 * (v65 ^ 0x87)] ^ *&v79[8 * (v64 ^ 0x86)] ^ ((v64 ^ 0xFFFFFFDD) + 194) ^ *&v79[8 * (v67 ^ 0x84)] ^ *&v79[8 * (v85 ^ 0x83)] ^ *&v79[8 * (v70 ^ 0x82)] ^ *&v79[8 * (v69 ^ 0x180)] ^ *&v79[8 * (v71 ^ 0x187)] ^ *&v79[8 * (v73 ^ 0x186)] ^ *&v79[8 * (v72 ^ 0x185)] ^ *&v79[8 * (v77 ^ 0x84)] ^ v63 ^ *&v79[8 * (v75 ^ 0x183)] ^ *&v79[8 * (v74 ^ 0x182)] ^ *&v79[8 * (v76 ^ 0x181)] ^ *&v79[8 * (v78 ^ 0x80)];
  return (*(a51 + 8 * ((43 * (a45 & 1)) ^ (v60 - 744415768))))(v70, a2, v64, 132, v83 ^ v75 ^ 0xFFFFFF87, 4294967256, v76, 4294967260, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v85, a29, a30, a31, a32, *(*(&off_100755B60 + (v60 ^ 0x2C5EF42E)) + ((v83 ^ v75) ^ 0xE0) - 8), v66, v68, v69, v77, v73, v74, v71);
}

uint64_t sub_1000ACF6C()
{
  STACK[0x8B8] = STACK[0x790];
  LODWORD(STACK[0x61C]) = 16257999;
  return (*(v1 + 8 * (((((v0 ^ 0x14FC) + 5268) ^ 0x11C3) + 208) ^ v0 ^ 0x14FC ^ (999 * (STACK[0x668] == 0)))))();
}

uint64_t sub_1000AD02C@<X0>(int a1@<W8>)
{
  v2 = 1382 * (a1 ^ 0x1D64);
  v3 = *(v1 + 8);
  STACK[0x8F8] = 0;
  STACK[0x5E8] = 0;
  return (*(STACK[0x400] + 8 * (((v3 != 0) * (((v2 ^ 0x3412) - 8385) ^ 0x30B)) ^ v2)))();
}

uint64_t sub_1000AD108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, int a14, uint64_t a15, uint64_t a16)
{
  v21 = 1875091903 * ((((2 * &a12) | 0x3857A2E4) - &a12 - 472633714) ^ 0x2A5E52F1);
  a15 = a9;
  a13 = (v18 ^ 0x363DF7BA) + ((v18 << ((v20 ^ 0xAB) - 74)) & 0x6C7BEF74) - 371278096 + v21;
  a14 = v21 + v20 + 1612;
  (*(v19 + 8 * (v20 + 3533)))(&a12);
  v22 = 1824088897 * (&a12 ^ 0x5869D362);
  a15 = v16;
  a16 = a9;
  a12 = v22 + v20 - 2355;
  a14 = (v17 ^ 0xCEA5EA8A) + ((2 * v17) & 0x9D4BD514) - v22 + 2147418112;
  v23 = (*(v19 + 8 * (v20 ^ 0x327F)))(&a12);
  return (*(v19 + 8 * ((14091 * (a13 == 16257999)) ^ v20)))(v23);
}

uint64_t sub_1000AD2A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a1 = 0;
  a1[1] = 0;
  return sub_10019A0B4(v64 + 2280, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63, a64);
}

uint64_t sub_1000AD464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(STACK[0x830] + 24);
  STACK[0x708] = v5;
  return (*(v4 + 8 * ((253 * ((((v3 + 4747) ^ (v5 == 0)) & 1) == 0)) ^ v3)))(a1, a2, a3, 16215976);
}

uint64_t sub_1000AD4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, unsigned int a13, int a14, uint64_t a15, uint64_t a16)
{
  v24 = 1875091903 * ((2 * (&a12 & 0x222C9DF0) - &a12 + 1574134284) ^ 0x6BA6E18F);
  a15 = a9;
  a13 = (v20 ^ 0xB1DCBEEF) + ((2 * v20) & 0x63B97DDE) + 1849685947 + v24;
  a14 = v24 + v22 + 3499;
  (*(v21 + 8 * (v22 + 5420)))(&a12);
  v25 = 1824088897 * ((&a12 & 0x9170BE3D | ~(&a12 | 0x9170BE3D)) ^ 0x36E692A0);
  a15 = v18;
  a16 = a9;
  a14 = ((2 * v19) & 0xBDCDDF9C) - v25 + (((v22 ^ 0x231446AB) - 1143826012) ^ v19) + 1874721468;
  a12 = v22 - 468 + v25;
  (*(v21 + 8 * (v22 + 5406)))(&a12);
  v26 = 1824088897 * (((&a12 | 0xDD7862F0) - (&a12 & 0xDD7862F0)) ^ 0x8511B192);
  a14 = (v17 ^ 0xDEF4FB9E) + ((2 * v17) & 0xBDE9F73C) - v26 + 1873800940;
  a12 = v22 - 468 + v26;
  a15 = v16;
  a16 = a9;
  v27 = (*(v21 + 8 * (v22 ^ 0x351E)))(&a12);
  return (*(v21 + 8 * ((982 * (a13 == v23)) ^ v22)))(v27);
}

uint64_t sub_1000AD700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 359 * (STACK[0x3F8] ^ 0x2437);
  v4 = STACK[0x3F8] - 8008;
  v5 = LOWORD(STACK[0xA3E]);
  STACK[0x898] = STACK[0xA40];
  return (*(STACK[0x400] + 8 * (((v5 == 17168) * (v3 ^ 0x282A)) ^ v4)))(a1, a2, a3, 16215638);
}

uint64_t sub_1000AD760@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v2 = (((LODWORD(STACK[0x7F4]) ^ 0x75D32E94) - 1976774292) ^ ((LODWORD(STACK[0x7F4]) ^ 0x8D62AAF0) + 1922913552) ^ ((LODWORD(STACK[0x7F4]) ^ 0xF3741D37) + 210494153)) + 320993381;
  v3 = (v2 ^ 0xFABB12CE) & (2 * (v2 & 0xF8A3A0EE)) ^ v2 & 0xF8A3A0EE;
  v4 = ((2 * (v2 ^ (a2 - 1694625966))) ^ 0xC4BB6678) & (v2 ^ (a2 - 1694625966)) ^ (2 * (v2 ^ (a2 - 1694625966))) & 0x625DB33C ^ 0x22449104;
  v5 = (((2 * (v2 ^ (a2 - 1694625966))) ^ 0xC4BB6678) & (v2 ^ (a2 - 1694625966)) ^ (2 * (v2 ^ (a2 - 1694625966))) & 0x625DB33C ^ 0x40190238) & (4 * v3) ^ v3;
  v6 = ((4 * v4) ^ 0x8976CCF0) & v4 ^ (4 * v4) & 0x625DB33C;
  v7 = (v6 ^ 0x548020) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x6209330C)) ^ 0x25DB33C0) & (v6 ^ 0x6209330C) ^ (16 * (v6 ^ 0x6209330C)) & 0x625DB330;
  v9 = v7 ^ 0x625DB33C ^ (v8 ^ 0x20593300) & (v7 << 8);
  return (*(a1 + 8 * ((28 * ((v2 ^ (2 * ((v9 << 16) & 0x625D0000 ^ v9 ^ ((v9 << 16) ^ 0x333C0000) & (((v8 ^ 0x4204803C) << 8) & 0x625D0000 ^ 0x224C0000 ^ (((v8 ^ 0x4204803C) << 8) ^ 0x5DB30000) & (v8 ^ 0x4204803C))))) == 2015413910)) ^ a2)))();
}

uint64_t sub_1000AD9CC@<X0>(int a1@<W8>, uint64_t a2, int a3, char a4, uint64_t a5, char a6, __int16 a7, char a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13, char *a14, unsigned int a15, uint64_t *a16)
{
  v19 = (a1 - 5538) | 0x1010;
  a12 = (a1 - 2311) ^ ((((&a11 ^ 0x4141EF30 | 0x39A21D32) - (&a11 ^ 0x4141EF30) + ((&a11 ^ 0x4141EF30) & 0xC65DE2C8)) ^ 0x41153821) * v16);
  a13 = a9;
  a14 = &a6;
  (*(v17 + 8 * (a1 + 4038)))(&a11);
  a15 = (v19 - 779) ^ (1710126949 * ((&a11 & 0xCDE84BDE | ~(&a11 | 0xCDE84BDE)) ^ 0xCEFB1));
  a13 = a9;
  a14 = &a4;
  a16 = &a2;
  (*(v17 + 8 * (v19 ^ 0x357E)))(&a11);
  a13 = a9;
  a14 = &a8;
  a12 = (v19 - 885) ^ ((((&a11 | 0x124D1D77) - &a11 + (&a11 & 0xEDB2E288)) ^ 0x2BBBD754) * v16);
  (*(v17 + 8 * (v19 + 5464)))(&a11);
  a13 = a9;
  LODWORD(a14) = v19 - 2008441969 * ((&a11 & 0x29AAD848 | ~(&a11 | 0x29AAD848)) ^ 0x9ECC73B9) + 1548;
  v20 = (*(v17 + 8 * (v19 ^ 0x358A)))(&a11);
  return (*(v17 + 8 * ((54 * (a11 == ((v19 - 901) ^ 0x1914 ^ (v18 - 3448)))) ^ v19)))(v20);
}

void sub_1000ADBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53)
{
  LODWORD(STACK[0xB14]) = a53;
  STACK[0x740] += (113 * (v53 ^ 0x48Cu)) ^ 0xFFFFFFFFFFFFFF02;
  JUMPOUT(0x1000ADBECLL);
}

uint64_t sub_1000ADC60@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = (v2 - 356030095) & 0x1538896F;
  *v9 = a1;
  *v3 = a2;
  v14 = (v7 + 6037) ^ (((&v12 + 993343825 - 2 * (&v12 & 0x3B353951)) ^ 0x635CEA33) * v4);
  v13 = v11;
  (*(v5 + 8 * (v7 ^ 0x2C89)))(&v12);
  v13 = v10;
  v14 = ((v7 ^ 0x1BFD) + 3490) ^ ((((&v12 | 0xDF112BBF) - (&v12 & 0xDF112BBF)) ^ 0x8778F8DD) * v4);
  (*(v5 + 8 * ((v7 ^ 0x1BFD) + 4756)))(&v12);
  return (v6 - 16257999);
}

uint64_t sub_1000ADDD8()
{
  v5 = v2 + 776 * v1;
  *(v4 + v5 % 0x3C9) = v1 - ((2 * v1) & 0x18) - 67;
  *(v4 + (v5 + 776) % 0x3C9) = v1 - ((v1 << (v0 - 5)) & 0x18) - 68;
  return (*(v3 + 8 * ((28 * (v1 == 14)) ^ v0)))();
}

uint64_t sub_1000ADF24(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = STACK[0x930];
  LODWORD(STACK[0x57C]) = a4;
  return (*(v5 + 8 * (((16 * (((v6 == 0) ^ (v4 - 76)) & 1)) & 0xBF | ((((v6 == 0) ^ (v4 - 76)) & 1) << 6)) ^ v4)))();
}

uint64_t sub_1000ADFD0@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 2741));

  return v3(v1);
}

uint64_t sub_1000AFD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v62 = STACK[0xA70];
  v63 = STACK[0xA40];
  STACK[0x290] = ((STACK[0xA70] + 4) ^ 0x6EEB7373FE7FF71FLL) - 0x8A831024E005309 + ((2 * (STACK[0xA70] + 4)) & 0xDDD6E6E7FCFFEE3ELL);
  v64 = STACK[0xA90];
  STACK[0x280] = (((v76 + 5591) + STACK[0xA90] - 6087) ^ 0x76DF63FFBEFFEF9FLL) - 0x109C218E0E804B89 + ((2 * ((v76 + 5591) + STACK[0xA90] - 6087)) & 0xEDBEC7FF7DFFDF3ELL);
  STACK[0x270] = ((v63 + 4) ^ 0xFE6347F3F67FB71FLL) + 0x67DFFA7DB9FFECF7 + ((2 * (v63 + 4)) & 0xFCC68FE7ECFF6E3ELL);
  v65 = STACK[0xAB0];
  STACK[0x260] = ((STACK[0xAB0] + 4) ^ 0x6E536371BE7FB53FLL) - 0x81021000E001129 + ((2 * (STACK[0xAB0] + 4)) & 0xDCA6C6E37CFF6A7ELL);
  v66 = STACK[0xAD0];
  STACK[0x250] = ((STACK[0xAD0] + 4) ^ 0xF74FFE7DFDFFBFF6) + 0x6EF343F3B27FE420 + ((2 * (STACK[0xAD0] + 4)) & 0xEE9FFCFBFBFF7FECLL);
  v67 = STACK[0xAF0];
  STACK[0x240] = ((STACK[0xAF0] + 4) ^ 0x7FDBF6F3B77FA51FLL) - 0x1998B48207000109 + ((2 * (STACK[0xAF0] + 4)) & 0xFFB7EDE76EFF4A3ELL);
  v68 = STACK[0xB00];
  STACK[0x230] = ((STACK[0xB00] + 4) ^ 0xFE6346F5B5FFB4B7) + 0x67DFFB7BFA7FEF5FLL + ((2 * (STACK[0xB00] + 4)) & 0xFCC68DEB6BFF696ELL);
  v69 = STACK[0xA30];
  STACK[0x220] = ((STACK[0xA30] + 4) ^ 0xE77F6F75BF7FBCD7) + 0x7EC3D2FBF0FFE73FLL + ((2 * (STACK[0xA30] + 4)) & 0xCEFEDEEB7EFF79AELL);
  v70 = STACK[0xA20];
  STACK[0x210] = ((STACK[0xA20] + 4) ^ 0xFECFDBF1BE7FBDF6) + 0x6773667FF1FFE620 + ((2 * (STACK[0xA20] + 4)) & 0xFD9FB7E37CFF7BECLL);
  v71 = STACK[0xA10];
  STACK[0x200] = ((STACK[0xA10] + 4) ^ 0xE6DFF379B3FFAF56) + 0x7F634EF7FC7FF4C0 + ((2 * (STACK[0xA10] + 4)) & 0xCDBFE6F367FF5EACLL);
  v72 = STACK[0xA00];
  v73 = STACK[0xB58];
  v84 = ((v67 + 6) ^ 0xF34EFFFFFDFFF3FFLL) + 0x6EBFBFB9FAFBFD3ALL + ((2 * (v67 + 6)) & 0xE69DFFFFFBFFE7FELL);
  v83 = ((STACK[0x9F0] + 6) ^ 0xFB3EBFFDFFFBF7B9) + 0x66CFFFBBF8FFF980 + ((2 * (STACK[0x9F0] + 6)) & 0xF67D7FFBFFF7EF72);
  v82 = ((STACK[0xB58] + 6) ^ 0x627EBFB9FEFFF1BBLL) - 0x70000006040082 + ((2 * (STACK[0xB58] + 6)) & 0xC4FD7F73FDFFE376);
  STACK[0x2A0] = v63 + 10;
  v81 = v67 + 10;
  v77 = ((v67 + 10) ^ 0xF2FEFFBBF8FBFB7DLL) + 0x6F0FBFFDFFFFF5BCLL + ((2 * (v67 + 10)) & 0xE5FDFF77F1F7F6FALL);
  v80 = STACK[0xA38];
  STACK[0x3B0] = STACK[0x758];
  STACK[0x330] = STACK[0x5B0];
  STACK[0x320] = STACK[0x920];
  STACK[0x310] = STACK[0x890];
  STACK[0x300] = STACK[0x870];
  STACK[0x3A0] = STACK[0x3F8];
  v74 = STACK[0xAE8];
  STACK[0x390] = STACK[0x3D0];
  v79 = STACK[0xAF8];
  STACK[0x2F0] = STACK[0x480];
  STACK[0x2E0] = STACK[0x6F8];
  STACK[0x2D0] = STACK[0x438];
  STACK[0x2C0] = STACK[0x4B0];
  STACK[0x2B0] = STACK[0x430];
  STACK[0x380] = STACK[0x810];
  v78 = STACK[0xB50];
  LODWORD(STACK[0x340]) = LOWORD(STACK[0x9D2]);
  LODWORD(STACK[0x370]) = LOWORD(STACK[0x9B6]);
  LODWORD(STACK[0x350]) = LOWORD(STACK[0x9A6]);
  LODWORD(STACK[0x360]) = LOWORD(STACK[0x966]);
  return sub_1000EF4B8(0xF99C96608AFF80DELL, 0x6FEAED2DD55A32A7, 0xC3E67D93F2F32D7, v72, 0x1D5EE00E4A8A2CA0, 0x84D53DF2213B4FA4, 0xF29EBFF9FEFFF1C0, 0xF1508FF8DABAE9B0, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, ((v73 + 10) ^ 0xEF3EBFFBFBFFF1FBLL) + 0x72CFFFBDFCFBFF3ELL + ((2 * (v73 + 10)) & 0xDE7D7FF7F7FFE3F6), ((v68 + 10) ^ 0x738EBFBBF8FBFFFDLL) - 0x1180000200000EC4 + ((2 * (v68 + 10)) & 0xE71D7F77F1F7FFFALL), v77, ((v63 + 10) ^ 0xE3AEBFFBF9FFFF7BLL) + 0x7E5FFFBDFEFBF1BELL + ((2 * (v63 + 10)) & 0xC75D7FF7F3FFFEF6), v78, v79, v74, v80, v73 + 10, v68 + 10, a34, v81, a36, v82, a38, v83, a40, ((v72 + 6) ^ 0xEA2FFFBBFAFFFB7BLL) + 0x77DEBFFDFDFBF5BELL + ((2 * (v72 + 6)) & 0xD45FFF77F5FFF6F6), a42, ((v71 + 6) ^ 0xFE1EBFBFF9FFFDFDLL) + 0x63EFFFF9FEFBF33CLL + ((2 * (v71 + 6)) & 0xFC3D7F7FF3FFFBFALL), a44, ((v70 + 6) ^ 0x7B5EFFBFFEFFFB79) - 0x1950400606040A40 + ((2 * (v70 + 6)) & 0xF6BDFF7FFDFFF6F2), a46, ((v68 + 6) ^ 0x6EDFBFBDF9FBF93FLL) - 0xCD1000401000806 + ((2 * (v68 + 6)) & 0xDDBF7F7BF3F7F27ELL), a48, v84, a50, a51, a52, ((v69 + 6) ^ 0xFA7EFFB9FDFBF33FLL) + 0x678FBFFFFAFFFDFALL + ((2 * (v69 + 6)) & 0xF4FDFF73FBF7E67ELL), a54, ((v66 + 6) ^ 0xEB7EBFFDFFFFF3B9) + 0x768FFFBBF8FBFD80 + ((2 * (v66 + 6)) & 0xD6FD7FFBFFFFE772), a56, ((v65 + 6) ^ 0xEA7FFFB9FEFBFBFFLL) + 0x778EBFFFF9FFF53ALL + ((2 * (v65 + 6)) & 0xD4FFFF73FDF7F7FELL), a58, ((v64 + 6) ^ 0x6F6FFFBFF9FBFF79) - 0xD61400601000E40 + ((2 * (v64 + 6)) & 0xDEDFFF7FF3F7FEF2), a60, ((v63 + 6) ^ 0xF22FFFFDFEFFFFBDLL) + 0x6FDEBFBBF9FBF17CLL + ((2 * (v63 + 6)) & 0xE45FFFFBFDFFFF7ALL), a62, ((v62 + 6) ^ 0x6B1EBFB9FDFFFF79) - 0x910000005040E40 + ((2 * (v62 + 6)) & 0xD63D7F73FBFFFEF2));
}

uint64_t sub_1000AFD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFE0FDLL ^ (v4 + 2856)) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((2012 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1000AFE6C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = LODWORD(STACK[0x370]);
  if (v4 == 17168)
  {
    return (*(STACK[0x400] + 8 * ((STACK[0x3F8] - 5102) ^ (12867 * (v3 == 197499223)))))();
  }

  if (v4 == 20706 || (v6 = STACK[0x3F8], v4 == 33980))
  {
    STACK[0x5E8] = a3;
    v6 = STACK[0x3F8];
  }

  v7 = *STACK[0x888];
  STACK[0x478] = 0;
  STACK[0x898] = 0;
  return (*(STACK[0x400] + 8 * (((v7 == 0) * (((2 * v6) ^ 0x4B0E) - 839)) ^ (v6 - 3253))))();
}

uint64_t sub_1000AFF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, unsigned int a25, unsigned int a26, uint64_t a27)
{
  v30 = 1875091903 * (((&a24 | 0x3AB6E467) - &a24 + (&a24 & 0xC5491B98)) ^ 0xCC367E4);
  a25 = v30 + (v28 ^ 0xEADDBC1C ^ (v27 - 1028940138) & 0x3D545FB7) + ((((v27 - 3416) | 0x1500) ^ 0xD5BB7A52) & (2 * v28)) + 893320955;
  a26 = v27 + 4295 + v30;
  a27 = a21;
  (*(v29 + 8 * (v27 + 6216)))(&a24);
  v31 = 1875091903 * ((2 * (&a24 & 0x41649FE0) - &a24 + 1050370074) ^ 0x8EEE399);
  a25 = (a14 ^ 0xFEDEF6FF) + ((2 * a14) & 0xFDBDEDFE) + 557694891 + v31;
  a26 = v27 + 4295 + v31;
  a27 = a21;
  (*(v29 + 8 * (v27 + 6216)))(&a24);
  v32 = 1875091903 * ((((2 * &a24) | 0xDDE63034) - &a24 - 1861425178) ^ 0x58869B99);
  a27 = a21;
  a25 = (a17 ^ 0x265CF6AA) + ((2 * a17) & 0x4CB9ED54) - 104873984 + v32;
  a26 = v27 + 4295 + v32;
  v33 = (*(v29 + 8 * (v27 ^ 0x28C8)))(&a24);
  return (*(v29 + 8 * (v27 ^ (225 * (a17 == 0)))))(v33);
}

uint64_t sub_1000B018C()
{
  STACK[0x778] = *(v2 + 8 * (v0 - 5989));
  LODWORD(STACK[0x3B0]) = v1 + 1337958196;
  return (*(v2 + 8 * (((&STACK[0x450] == 0) * (((v0 - 2114) ^ 0xFFFFE71F) + ((v0 - 1296) ^ 0x570))) ^ (v0 - 1296))))();
}

uint64_t sub_1000B01F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25)
{
  v26 = STACK[0x32C];
  v27 = (v25 ^ 0xBC59953u) + STACK[0x200];
  STACK[0x8E8] = v27;
  return (*(STACK[0x330] + 8 * ((v26 + 991) ^ (1023 * (v27 <= a25)))))();
}

uint64_t sub_1000B024C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (v3 - 559435066) & 0x21584D2F;
  v6 = ((v5 + 2458) ^ 0xFFFFFFFFFFFFF23DLL) + v2;
  *(a1 + v6) = *(a2 + v6);
  return (*(v4 + 8 * ((26 * (v6 != 0)) ^ v5)))();
}

uint64_t sub_1000B0298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  a11 = (v12 - 1451033324) ^ (((&a10 + 1704693950 - 2 * (&a10 & 0x659B90BE)) ^ 0x8F0AE0BB) * v14);
  v15 = (*(v11 + 8 * (v12 + 8420)))(&a10);
  return (*(v11 + 8 * (((a10 == v13 + 1211) * ((v12 + 660211099) ^ 0x275A1906)) ^ v12)))(v15);
}

uint64_t sub_1000B0338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22, __int16 a23, char a24, uint64_t a25, char *a26, unsigned int a27, char *a28)
{
  a28 = &a17;
  a27 = (v28 + 2226) ^ (1710126949 * (((&a24 | 0xD2F14347) + (~&a24 | 0x2D0EBCB8)) ^ 0xE0EA18D6));
  a25 = a20;
  a26 = &a22;
  v31 = (*(v30 + 8 * (v28 + 8475)))(&a24);
  return (*(v30 + 8 * (((362 * (v28 ^ 0x443) - 794) * (a13 == v29)) ^ v28)))(v31);
}

uint64_t sub_1000B0408()
{
  v2 = *STACK[0x348];
  STACK[0x410] = 0;
  STACK[0x370] = 0;
  return (*(v1 + 8 * (((v2 == 0) * (((14 * (v0 ^ 0xB0F)) ^ 0x1540) - 5581)) | v0)))();
}

void sub_1000B0504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int *a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v42 = 4 * (v41 + v40);
  v43 = ((*(*a35 + (*a34 & 0xFFFFFFFFB0D1339CLL)) ^ (a38 + v42)) & 0x7FFFFFFF) * ((v39 + 1232698310) ^ 0xD196A294);
  v44 = v43 ^ HIWORD(v43);
  v45 = -778651209 * v44;
  *(a39 + v42) ^= *(a38 + v42) ^ (v39 + 1232691366) & 0x84765BF1 ^ ((((v39 + 1232691366) ^ v40) & v40) >> (__clz((v39 + 1232691366) ^ v40 | 1) ^ 0x1F)) & 1 ^ *(*(&off_100755B60 + (v39 ^ (v39 + 7))) + HIBYTE(v45)) ^ *(*(&off_100755B60 + (v39 ^ (v39 - 232))) + HIBYTE(v45) - 1) ^ *(*(&off_100755B60 + (v39 ^ (v39 + 124))) + HIBYTE(v45) - 1) ^ (-1179189248 * v44) ^ v45 ^ (1946347563 * HIBYTE(v45)) ^ 1;
  JUMPOUT(0x1000B0638);
}

uint64_t sub_1000B0698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, __int16 a14, char a15, uint64_t a16, uint64_t a17, int a18, char a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, char *a25)
{
  a25 = &a15;
  a24 = (v25 - 607) ^ (1710126949 * (((&a20 | 0xFDE79155) + (~&a20 | 0x2186EAA)) ^ 0xCFFCCAC4));
  a22 = a16;
  a23 = &a13;
  (*(v27 + 8 * (v25 + 5642)))(&a20);
  a21 = (v25 - 713) ^ (33731311 * ((&a20 & 0x9D778727 | ~(&a20 | 0x9D778727)) ^ 0x5B7EB2FB));
  a22 = a16;
  a23 = &a19;
  (*(v27 + 8 * (v25 ^ 0x2A0C)))(&a20);
  LODWORD(a23) = v25 - 2008441969 * ((((&a20 | 0x887036DA) ^ 0xFFFFFFFE) - (~&a20 | 0x778FC925)) ^ 0x3F169D2B) + 1720;
  a22 = a16;
  v28 = (*(v27 + 8 * (v25 ^ 0x2AFE)))(&a20);
  return (*(v27 + 8 * (((a20 == v26) * (((v25 + 658010264) & 0xD8C78FB3) + 507)) ^ v25)))(v28);
}

uint64_t sub_1000B0808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, _DWORD *a39)
{
  v41 = (*(v40 + 8 * (v39 ^ 0x3E80u)))(&STACK[0x5A0], 0);
  v42 = LODWORD(STACK[0x5A8]) - 156502768 - ((2 * LODWORD(STACK[0x5A8])) & 0xED57EA20);
  LODWORD(STACK[0x598]) = v39 - 1232698353 + LODWORD(STACK[0x5A0]) - ((2 * LODWORD(STACK[0x5A0])) & 0xED57EA20) + 1076188595;
  LODWORD(STACK[0x594]) = v42;
  v43 = v39 + 2631;
  v44 = (*(v40 + 8 * v43))(v41);
  LODWORD(STACK[0x59C]) = v44 - 156502768 - ((2 * v44) & 0xED57EA20);
  v45 = (*(v40 + 8 * v43))();
  *a39 = v45 - 156502768 - ((2 * v45) & 0xED57EA20);
  LODWORD(a32) = 45276003;
  return sub_1000B09A0(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_1000B09A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v47 = *(v44 + 4 * (v43 - 1));
  *(v44 + 4 * v43) = (*(a39 + 4 * v45) ^ 0xF6ABF510) + v45 + ((1664525 * (v47 ^ (v47 >> 30))) ^ *(v44 + 4 * v43));
  *(v46 - 128) = (v42 - 1737626868) ^ v40;
  *(v46 - 144) = ((v42 - 1398455224) ^ 3) - v40;
  *(v46 - 140) = v42 - 1398455224 - v40 - 933;
  *(v46 - 152) = (v42 - 1398455224) ^ v40;
  *(v46 - 148) = v40;
  v48 = v46 - 152;
  *(v48 + 16) = v43 + 1 - v40;
  *(v48 + 32) = a37;
  v49 = (*(a40 + 8 * (v42 + v41)))(v46 - 152);
  return (*(a40 + 8 * *(v46 - 124)))(v49);
}

uint64_t sub_1000B0A5C@<X0>(int a1@<W8>)
{
  result = (*(v1 + 8 * (a1 + 1926)))();
  *v2 = 16257999;
  return result;
}

uint64_t sub_1000B0A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, int a17, unsigned int a18)
{
  a16 = &a11;
  a18 = 1317436891 * (((&a16 | 0xD9450F49) - &a16 + (&a16 & 0x26BAF0B0)) ^ 0x6946973F) + 8154;
  v21 = (*(v18 + 77096))(&a16);
  return (*(v18 + 8 * ((202 * (a17 == ((v20 + 3086) ^ 0xC12))) ^ v19)))(v21);
}

uint64_t sub_1000B0B70()
{
  v4 = v0 + 3088;
  *(v2 - 224) = (v0 - 2140802270) ^ (914963389 * ((v2 - 232) ^ 0x2CFCB17B));
  v5 = (*(v3 + 8 * ((v0 + 3088) ^ 0x186)))(v2 - 232);
  v6 = STACK[0x400];
  *v1 = *(v2 - 232) ^ 0xAC;
  return (*(v6 + 8 * ((v4 - 7353) ^ 0xA0)))(v5);
}

uint64_t sub_1000B0C18(uint64_t a1, _BYTE *a2, uint64_t a3, char a4)
{
  v9 = a3 - 1;
  *v8 = *a2 ^ *(v5 + (v9 & 0xF)) ^ *((v9 & 0xF) + v6 + 3) ^ ((v9 & 0xF) * ((v4 - 6) ^ a4)) ^ *(v7 + (v9 & 0xF)) ^ 0x3C;
  return (*(STACK[0x3E8] + 8 * ((60 * (v9 == 0)) ^ v4)))(a1, a2 - 1);
}

uint64_t sub_1000B0C68(uint64_t a1, uint64_t a2, int a3)
{
  v7 = (a1 - 32);
  v8 = (a2 - 32);
  v9 = *v8;
  *(v7 - 1) = *(v8 - 1);
  *v7 = v9;
  return (*(v6 + 8 * (((v5 == 32) * a3) ^ (v3 + v4 + 2126))))();
}

uint64_t sub_1000B0DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = STACK[0x7D8];
  v74 = STACK[0x578];
  v75 = 1824088897 * ((v72 - 232) ^ 0x5869D362);
  *(v72 - 208) = 1461241535 - v75;
  *(v72 - 224) = a37;
  *(v72 - 200) = v74;
  *(v72 - 192) = v73;
  *(v72 - 216) = v75 - 125652507;
  *(v72 - 212) = 744414353 - v75 + a71;
  v76 = (*(v71 + 8 * (a71 ^ 0x322E)))(v72 - 232);
  v77 = *(v72 - 232);
  LODWORD(STACK[0x99C]) = v77;
  return (*(v71 + 8 * (((v77 == 16257999) * (((a71 + 639) ^ 0x196A) + 8177)) ^ (a71 - 4057))))(v76);
}

uint64_t sub_1000B0EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, int a15)
{
  a13 = v17 - ((2 * v17) & 0x39AD4E2AD03EC198) + ((v20 + 2967) | 0x11) - 0x632958EA97E0AF4BLL + 956911519 * (((v19 | 0x696D1662D3FD4D8DLL) - (v19 | 0x9692E99D2C02B272) - 0x696D1662D3FD4D8ELL) ^ 0x2C5B63BE396C3D88);
  a14 = a10;
  a12 = (v20 - 113) ^ (956911519 * (((v19 | 0xD3FD4D8D) - (v19 | 0x2C02B272) + 738374258) ^ 0x396C3D88));
  (*(v18 + 8 * (v20 | 0x2110)))(&a12);
  v21 = 956911519 * ((((2 * v19) | 0xC7DC98812D57F664) - v19 + 0x1C11B3BF695404CELL) ^ 0xA6D8399C7C3A8B37);
  a12 = (v20 - 113) ^ v21;
  a13 = v16 + (~(2 * v16) | 0xC652B1D52FC13E67) + v20 + 41 - 0x632958EA97E0AF4BLL + v21 + 2944;
  a14 = a10;
  (*(v18 + 8 * (v20 ^ 0x2110)))(&a12);
  a13 = v15 - ((2 * v15) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + 956911519 * ((2 * (v19 & 0xDD54C8A02FF8168) - v19 + 0x722AB375FD007E90) ^ 0x371CC6A917910E95);
  a14 = a10;
  a12 = (v20 - 113) ^ (956911519 * ((2 * (v19 & 0x2FF8168) - v19 - 50299248) ^ 0x17910E95));
  v22 = (*(v18 + 8 * (v20 | 0x2110)))(&a12);
  return (*(v18 + 8 * ((247 * (a15 != 16257999)) ^ v20)))(v22);
}

uint64_t sub_1000B10F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, unsigned int a18, uint64_t a19)
{
  v25 = 1875091903 * (((&a16 | 0xEE21652C) - (&a16 & 0xEE21652C)) ^ 0xD854E6AF);
  a17 = (v21 ^ 0x627EF7AE) + v25 - 1113735428 + ((v21 << (v24 + (v23 ^ 5) - 74 - 56)) & 0xC4FDEF5C);
  a18 = v23 + 3273 + v25;
  a19 = a12;
  (*(v22 + 8 * (v23 + 5194)))(&a16);
  v26 = 1875091903 * ((&a16 & 0x7E0B49E1 | ~(&a16 | 0x7E0B49E1)) ^ 0xB781359D);
  a19 = a12;
  a17 = (HIDWORD(v20) ^ 0xA19FBEBB) + ((2 * HIDWORD(v20)) & 0x433F7D76) + 2122119151 + v26;
  a18 = v23 + 3273 + v26;
  (*(v22 + 8 * (v23 ^ 0x34CE)))(&a16);
  v27 = 1875091903 * ((741417103 - (&a16 | 0x2C31208F) + (&a16 | 0xD3CEDF70)) ^ 0xE5BB5CF3);
  a17 = (v20 ^ 0xAE1FFFFA) + ((2 * v20) & 0x5C3FFFF4) + 1912387248 + v27;
  a18 = v23 + 3273 + v27;
  a19 = a12;
  (*(v22 + 8 * (v23 + 5194)))(&a16);
  v28 = 1875091903 * ((&a16 & 0xCB613B1 | ~(&a16 | 0xCB613B1)) ^ 0xC53C6FCD);
  a19 = a12;
  a17 = (HIDWORD(v19) ^ 0xBB5FBEEF) + ((2 * HIDWORD(v19)) & 0x76BF7DDE) + 1690105787 + v28;
  a18 = v23 + 3273 + v28;
  (*(v22 + 8 * (v23 + 5194)))(&a16);
  v29 = 1875091903 * ((((2 * &a16) | 0x4D1D853C) - &a16 - 646890142) ^ 0x10FB411D);
  a17 = (v19 ^ 0xA33EF7FA) + ((2 * v19) & 0x467DEFF4) + 2094907056 + v29;
  a18 = v23 + 3273 + v29;
  a19 = a12;
  v30 = (*(v22 + 8 * (v23 ^ 0x34CE)))(&a16);
  return (*(v22 + 8 * (((a16 != 16257999) | (4 * (a16 != 16257999))) ^ v23)))(v30);
}

void sub_1000B13E8()
{
  STACK[0x640] = 0;
  STACK[0x928] = 0;
  STACK[0x908] = *(v1 + 8 * v0);
  JUMPOUT(0x10000C22CLL);
}

uint64_t sub_1000B14D8(int8x16_t a1, int8x8_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, int a7, int a8)
{
  v14 = v12 - 8;
  v16.val[0].i64[0] = (v11 + v14 - 1) & 0xF;
  v16.val[0].i64[1] = (v11 + v14 + 14) & 0xF;
  v16.val[1].i64[0] = (v11 + v14 + (a5 ^ 0xC)) & 0xF;
  v16.val[1].i64[1] = (v11 + v14 + 12) & 0xF;
  v16.val[2].i64[0] = (v11 + v14 + 11) & 0xF;
  v16.val[2].i64[1] = (v11 + v14 + 10) & 0xF;
  v16.val[3].i64[0] = (v11 + v14 + 9) & 0xF;
  v16.val[3].i64[1] = (v11 + v14) & 0xF ^ 8;
  *(a6 + v14) = veor_s8(veor_s8(veor_s8(*(v10 + v16.val[0].i64[0] - 7), *(a6 + v14)), veor_s8(*(v9 + v16.val[0].i64[0] - 7), *(v16.val[0].i64[0] + v8 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v16, a1), a2)));
  return (*(v13 + 8 * (((a4 == v14) * a8) ^ a7)))();
}

uint64_t sub_1000B150C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = 476323082 - 1710126949 * ((&a15 & 0xB2B2B37D | ~(&a15 | 0xB2B2B37D)) ^ 0x7F561712);
  v17 = (*(v16 + 77088))(&a15);
  return (*(v16 + 8 * ((11745 * (a16 == 16257999)) ^ 0x932u)))(v17);
}

uint64_t sub_1000B1638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  a17 = 476323082 - 1710126949 * ((&a17 - 441025859 - 2 * (&a17 & 0xE5B67ABD)) ^ 0xD7AD212D);
  v19 = (*(v18 + 77088))(&a17);
  return (*(v18 + 8 * ((5225 * (a18 == 16257999)) ^ 0x9EEu)))(v19);
}

uint64_t sub_1000B177C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v25 = (((~&a16 & 0x87E83BE6) - (~&a16 | 0x87E83BE7)) ^ 0xDF81E885) * v22;
  a17 = v25 - 1487956959;
  a18 = a13;
  a19 = &a14;
  a20 = -654855621 - v25;
  a21 = v25 + v24 + 1674571277;
  v26 = (*(v21 + 8 * (v24 ^ 0x3B15)))(&a16);
  return (*(v21 + 8 * ((14896 * (a16 == ((v24 - 4717) ^ v23 ^ v24 ^ 0x325))) ^ v24)))(v26);
}

uint64_t sub_1000B183C@<X0>(int a1@<W8>)
{
  STACK[0x6E8] = v1;
  LODWORD(STACK[0xA48]) = v3;
  LOWORD(STACK[0xA4E]) = v2;
  LODWORD(STACK[0xA50]) = STACK[0x634];
  LODWORD(STACK[0xA54]) = STACK[0x5C4];
  STACK[0xA58] = STACK[0x400];
  STACK[0x518] = STACK[0x4F8];
  return (*(v4 + 8 * ((21 * (((v1 == 0) ^ (a1 - 1)) & 1)) ^ a1)))();
}

uint64_t sub_1000B1988()
{
  v0 = *(&off_100755B60 + (byte_10068E1C0[byte_100683B50[(-85 * (dword_10077E348 ^ 0xDF ^ dword_10077E220))] ^ 0xAD] ^ (-85 * (dword_10077E348 ^ 0xDF ^ dword_10077E220))) + 219);
  v1 = -85 * (*v0 ^ dword_10077E220 ^ 0xDF);
  v2 = *(&off_100755B60 + (byte_100683C5C[(byte_10069D20C[v1 - 12] ^ 0x1F) - 12] ^ v1) + 113);
  v3 = &v5[*v2 ^ *v0];
  *v0 = 2054362027 * (v3 - 0xB4207763EF64BDFLL);
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v8 = 4383 - 33731311 * ((2 * (v6 & 0x25576FD0) - v6 + 1520996398) ^ 0x635E5A0D);
  v7 = *(&off_100755B60 + ((-85 * (*v0 ^ 0xDF ^ *v2)) ^ byte_10068E1C0[byte_100683B50[(-85 * (*v0 ^ 0xDF ^ *v2))] ^ 0xAD]) + 154);
  return (*(*(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E348) ^ 0xDF)) ^ byte_100683C50[byte_10069D200[(-85 * ((dword_10077E220 + dword_10077E348) ^ 0xDF))] ^ 0xE9]) + 135) + (byte_100694FA8[(byte_10068E0C0[(-85 * ((*v2 + *v0) ^ 0xDF))] ^ 0x2A) - 8] ^ (-85 * ((*v2 + *v0) ^ 0xDF))) + 9388))(v6);
}

uint64_t sub_1000B1C20(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 42;
  v4 = (*(v2 + 8 * (v1 + 620)))(42, 0x100004077774924);
  *(a1 + 24) = v4;
  return (*(v2 + 8 * (((((v1 - 1) ^ (v4 == 0)) & 1) * (((v1 - 7475) | 0x11C0) ^ 0x17B3)) ^ v1)))();
}

uint64_t sub_1000B1CB0()
{
  STACK[0x880] = 0;
  *STACK[0x8E8] = STACK[0x880];
  return (STACK[0x7B8])();
}

uint64_t sub_1000B1CF4(uint64_t a1)
{
  v5 = v2 & 0xF809CEBB;
  v6 = v2 & 0xBB ^ 0xDD;
  v7 = v3 - 809297082;
  v8 = v7 < 0xB7F74F8;
  v9 = v4 + 192902392 < v7;
  if (v8 != v4 > ((v5 + 2023) ^ 0xF4809D05))
  {
    v9 = v8;
  }

  return (*(v1 + 8 * ((((v6 + 1) ^ v9) & 1 | (4 * (((v6 + 1) ^ v9) & 1))) ^ v5)))(a1, 925652384);
}

void sub_1000B1D7C()
{
  v0 = *(&off_100755B60 + ((-85 * ((dword_10077E220 - dword_10077E378) ^ 0xDF)) ^ byte_100683C50[byte_10069D200[(-85 * ((dword_10077E220 - dword_10077E378) ^ 0xDF))] ^ 0xD9]) - 45);
  v1 = *(v0 - 4);
  v2 = *(&off_100755B60 + (byte_10068E1CC[(byte_100683B54[(-85 * ((dword_10077E220 - v1) ^ 0xDF)) - 4] ^ 0xAD) - 12] ^ (-85 * ((dword_10077E220 - v1) ^ 0xDF))) + 199);
  v3 = (*v2 ^ v1) - &v5;
  *(v0 - 4) = 2054362027 * v3 - 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * (((v6 | 0x80924CC6) - v6 + (v6 & 0x7F6DB338)) ^ 0xB2891756);
  LOBYTE(v2) = -85 * ((*v2 + *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_100755B60 + ((-85 * ((dword_10077E220 - dword_10077E378) ^ 0xDF)) ^ byte_100694EA0[byte_10068DFC0[(-85 * ((dword_10077E220 - dword_10077E378) ^ 0xDF))] ^ 0xBF]) + 64) - 8;
  (*&v4[8 * (byte_100694EA8[(byte_10068DFC8[v2 - 8] ^ 0x6D) - 8] ^ v2) + 76952])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000B1FDC()
{
  v4 = (v1 + 1828047050) & 0x930A2EFF;
  v9 = v7;
  v10 = (v1 + 3989) ^ (((((2 * &v8) | 0x7B9F8E8) - &v8 + 2082669452) ^ 0xDBB52F16) * v2);
  (*(v0 + 8 * (v1 ^ 0x3489)))(&v8);
  v10 = (v4 + 6091) ^ ((((&v8 | 0xDBD45510) - (&v8 & 0xDBD45510)) ^ 0x83BD8672) * v2);
  v9 = v6;
  (*(v0 + 8 * (v4 + 7357)))(&v8);
  return (v3 - 16257999);
}

uint64_t sub_1000B20F4()
{
  *(v3 - 224) = (v0 - 2140802201) ^ (914963389 * ((((v3 - 232) | 0x982DAA51) + (~(v3 - 232) | 0x67D255AE)) ^ 0xB4D11B2B));
  v4 = (*(v2 + 8 * (v0 + 3547)))(v3 - 232);
  *(v1 + 24) = *(v3 - 232) ^ 0xAC;
  return (*(v2 + 8 * ((v0 + 2664) ^ 0x227E ^ (v0 - 5057))))(v4);
}

uint64_t sub_1000B2204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, int a17, char a18, __int16 a19, char a20, uint64_t a21, int a22, unsigned int a23, uint64_t a24, char *a25, unsigned int a26, char *a27)
{
  a26 = (v29 - 1481) ^ (1710126949 * ((2 * (&a22 & 0x26E68C48) - &a22 - 652643404) ^ 0xEB022824));
  a27 = &a20;
  a24 = a21;
  a25 = &a15;
  (*(v28 + 8 * (v29 + 4768)))(&a22);
  a23 = (v29 - 1587) ^ (33731311 * ((&a22 - 1959691050 - 2 * (&a22 & 0x8B317CD6)) ^ 0xB2C7B6F5));
  a24 = a21;
  a25 = &a18;
  (*(v28 + 8 * (v29 + 4762)))(&a22);
  a24 = a21;
  LODWORD(a25) = v29 - 2008441969 * (((&a22 | 0x216C75EA) - (&a22 & 0x216C75EA)) ^ 0x69F521E4) + 846;
  v31 = (*(v28 + 8 * (v29 ^ 0x3754)))(&a22);
  return (*(v28 + 8 * (((a22 == v30) * ((v29 ^ v27) - 3524)) ^ v29)))(v31);
}

uint64_t sub_1000B2784()
{
  v10 = (v3 + v1) ^ (((((2 * &v8) | 0x9EA96C32) - &v8 - 1330951705) ^ 0x173D657B) * v0);
  v9 = v7;
  (*(v2 + 8 * (v3 + v1 + 1266)))(&v8);
  v10 = (v3 + v1) ^ (((&v8 & 0xC0AC0A3 | ~(&v8 | 0xC0AC0A3)) ^ 0xAB9CEC3E) * v0);
  v9 = v6;
  (*(v2 + 8 * (v3 + v1 + 1266)))(&v8);
  return (v4 - 16257999);
}

uint64_t sub_1000B2878()
{
  v3 = v1 ^ 0x268D;
  v4 = -24 * (v1 ^ 0x55);
  v5 = ((v1 ^ 0x268D) - 6537) | 0x160E;
  v7 = (v0 - 1) < 0x10 && ((~v4 + v0) & 0xFu) >= ((v0 - 1) & 0xFu);
  return (*(v2 + 8 * ((v7 * (v5 ^ 0x1D96)) ^ v3)))();
}

uint64_t sub_1000B2968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t *a15, unsigned int a16, unsigned int a17)
{
  v22 = (((&a12 | 0x64CEAC77) - &a12 + (&a12 & 0x9B315388)) ^ 0x3CA77F15) * v18;
  a13 = v22 + 1220250554;
  a16 = -654855621 - v22;
  a17 = v22 + v21 + 1674572474;
  a14 = a11;
  a15 = &a9;
  v23 = (*(v17 + 8 * (v21 + 2968)))(&a12);
  return (*(v17 + 8 * (v21 ^ (2 * (((v19 ^ 0x1A1D ^ (a12 == v20)) & 1) == 0)))))(v23);
}

uint64_t sub_1000B2A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v24 = ((-1975066838 - (&a16 | 0x8A46DF2A) + (&a16 | 0x75B920D5)) ^ 0x2DD0F3B7) * v21;
  a17 = v24 + 28835182;
  a20 = -654855621 - v24;
  a21 = v24 + v22 + 1674575020;
  a18 = a11;
  a19 = &a14;
  v25 = (*(v23 + 8 * (v22 ^ 0x2A76)))(&a16);
  return (*(v23 + 8 * (((a16 == 16257999) * ((((v22 - 4094) | 0x508) + 202) ^ 0x12D8)) ^ v22)))(v25);
}

uint64_t sub_1000B2B70(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8)
{
  v24 = 25 * (v11 ^ 0xE04);
  v25.i64[0] = v10 + v9 - 15;
  v25.i64[1] = v10 + v9 - 16;
  v26.i64[0] = v10 + v9 - 13;
  v26.i64[1] = v10 + v9 - 14;
  v27.i64[0] = v10 + v9 - 7;
  v27.i64[1] = v10 + v9 - 8;
  v28.i64[0] = v10 + v9 - 5;
  v28.i64[1] = v10 + v9 - 6;
  v29.i64[0] = v10 + v9 - 3;
  v29.i64[1] = v10 + v9 - 4;
  v30.i64[0] = v9 + v10 - 1;
  v30.i64[1] = (v24 ^ 0x1946u) + v10 + v9 + v13;
  v31 = vandq_s8(v30, a1);
  v32 = vandq_s8(v29, a1);
  v33 = vandq_s8(v28, a1);
  v34 = vandq_s8(v27, a1);
  v35 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v36 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v37 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), a3), a4);
  v38 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), a3), a4);
  v39 = veorq_s8(v38, a5);
  v40 = veorq_s8(v37, a5);
  v41 = veorq_s8(v37, a6);
  v42 = veorq_s8(v38, a6);
  v43 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v41), a7);
  v44 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v42), a7);
  v45 = vsraq_n_u64(vshlq_n_s64(v41, 3uLL), v41, 0x3DuLL);
  v46 = veorq_s8(v44, vsraq_n_u64(vshlq_n_s64(v42, 3uLL), v42, 0x3DuLL));
  v47 = veorq_s8(v43, v45);
  v48 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v47);
  v50 = vaddq_s64(v48, v46);
  v51 = veorq_s8(vaddq_s64(vsubq_s64(v50, vandq_s8(vaddq_s64(v50, v50), a8)), v14), v15);
  v52 = veorq_s8(vaddq_s64(vsubq_s64(v49, vandq_s8(vaddq_s64(v49, v49), a8)), v14), v15);
  v53 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v54 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v55 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v56 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v54);
  v57 = veorq_s8(vaddq_s64(v55, v53), v16);
  v58 = veorq_s8(v56, v16);
  v59 = vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL);
  v60 = veorq_s8(v58, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v61 = veorq_s8(v57, v59);
  v62 = vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL);
  v63 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v61);
  v64 = veorq_s8(vaddq_s64(v62, v60), v17);
  v65 = veorq_s8(v63, v17);
  v66 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v67 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v68 = veorq_s8(v64, v66);
  v69 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v68);
  v71 = veorq_s8(vaddq_s64(v69, v67), v18);
  v72 = veorq_s8(v70, v18);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v72, v72), v19), v72), v20), v21);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v71, v71), v19), v71), v20), v21);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v76 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v77 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL), v75), v22);
  v78 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v76), v22);
  v79 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v80 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v81 = veorq_s8(v77, v79);
  v79.i64[0] = v10 + v9 - 11;
  v79.i64[1] = v10 + v9 - 12;
  v82 = vandq_s8(vaddq_s64(v35, a3), a4);
  v170.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v81), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), a2)));
  v170.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v80), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), a2)));
  v83 = veorq_s8(v82, a5);
  v84 = veorq_s8(v82, a6);
  v85 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v84), a7);
  v86 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v86);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(v87, vandq_s8(vaddq_s64(v87, v87), a8)), v14), v15);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v90 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89), v16);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), v17);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v18);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v94, v94), v19), v94), v20), v21);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), v22);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v97.i64[0] = v10 + v9 - 9;
  v97.i64[1] = v10 + v9 - 10;
  v100 = vaddq_s64(v99, v98);
  v101 = vandq_s8(v97, a1);
  v102 = vandq_s8(vaddq_s64(v36, a3), a4);
  v170.val[1] = vshlq_u64(veorq_s8(v100, v23), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a2)));
  v103 = veorq_s8(v102, a5);
  v104 = veorq_s8(v102, a6);
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), a7);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(v107, vandq_s8(vaddq_s64(v107, v107), a8)), v14), v15);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v16);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v17);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v18);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v114, v114), v19), v114), v20), v21);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v22);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v120 = vandq_s8(v79, a1);
  v121 = vaddq_s64(v119, v118);
  v122 = vandq_s8(v26, a1);
  v170.val[0] = vshlq_u64(veorq_s8(v121, v23), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v123 = vandq_s8(v25, a1);
  v124 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v126 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), a3), a4);
  v127 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), a3), a4);
  v123.i64[0] = vqtbl4q_s8(v170, *&STACK[0x3B0]).u64[0];
  v170.val[0] = veorq_s8(v127, a5);
  v170.val[1] = veorq_s8(v126, a5);
  v170.val[2] = veorq_s8(v126, a6);
  v170.val[3] = veorq_s8(v127, a6);
  v170.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v170.val[2]), a7);
  v170.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL), v170.val[3]), a7);
  v128 = vsraq_n_u64(vshlq_n_s64(v170.val[2], 3uLL), v170.val[2], 0x3DuLL);
  v170.val[2] = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v170.val[3], 3uLL), v170.val[3], 0x3DuLL));
  v170.val[3] = veorq_s8(v170.val[1], v128);
  v129 = vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL);
  v170.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v170.val[3]);
  v170.val[1] = vaddq_s64(v129, v170.val[2]);
  v170.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v170.val[1], vandq_s8(vaddq_s64(v170.val[1], v170.val[1]), a8)), v14), v15);
  v170.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v170.val[0], vandq_s8(vaddq_s64(v170.val[0], v170.val[0]), a8)), v14), v15);
  v130 = vsraq_n_u64(vshlq_n_s64(v170.val[2], 3uLL), v170.val[2], 0x3DuLL);
  v170.val[2] = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v170.val[3], 3uLL), v170.val[3], 0x3DuLL));
  v170.val[3] = veorq_s8(v170.val[1], v130);
  v131 = vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL);
  v170.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v170.val[3]);
  v170.val[1] = veorq_s8(vaddq_s64(v131, v170.val[2]), v16);
  v170.val[0] = veorq_s8(v170.val[0], v16);
  v132 = vsraq_n_u64(vshlq_n_s64(v170.val[2], 3uLL), v170.val[2], 0x3DuLL);
  v170.val[2] = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v170.val[3], 3uLL), v170.val[3], 0x3DuLL));
  v170.val[3] = veorq_s8(v170.val[1], v132);
  v133 = vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL);
  v170.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v170.val[3]);
  v170.val[1] = veorq_s8(vaddq_s64(v133, v170.val[2]), v17);
  v170.val[0] = veorq_s8(v170.val[0], v17);
  v134 = vsraq_n_u64(vshlq_n_s64(v170.val[2], 3uLL), v170.val[2], 0x3DuLL);
  v170.val[2] = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v170.val[3], 3uLL), v170.val[3], 0x3DuLL));
  v170.val[3] = veorq_s8(v170.val[1], v134);
  v135 = vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL);
  v170.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v170.val[3]);
  v170.val[1] = veorq_s8(vaddq_s64(v135, v170.val[2]), v18);
  v170.val[0] = veorq_s8(v170.val[0], v18);
  v170.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v170.val[0], v170.val[0]), v19), v170.val[0]), v20), v21);
  v170.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v170.val[1], v170.val[1]), v19), v170.val[1]), v20), v21);
  v170.val[2] = veorq_s8(v170.val[1], vsraq_n_u64(vshlq_n_s64(v170.val[2], 3uLL), v170.val[2], 0x3DuLL));
  v170.val[3] = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v170.val[3], 3uLL), v170.val[3], 0x3DuLL));
  v170.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), v170.val[2]), v22);
  v170.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL), v170.val[3]), v22);
  v136 = vsraq_n_u64(vshlq_n_s64(v170.val[2], 3uLL), v170.val[2], 0x3DuLL);
  v170.val[2] = veorq_s8(v170.val[0], vsraq_n_u64(vshlq_n_s64(v170.val[3], 3uLL), v170.val[3], 0x3DuLL));
  v137 = vandq_s8(vaddq_s64(v124, a3), a4);
  v170.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[1], 0x38uLL), v170.val[1], 8uLL), veorq_s8(v170.val[1], v136)), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), a2)));
  v170.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170.val[0], 0x38uLL), v170.val[0], 8uLL), v170.val[2]), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), a2)));
  v138 = veorq_s8(v137, a5);
  v139 = veorq_s8(v137, a6);
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v139), a7);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(v142, vandq_s8(vaddq_s64(v142, v142), a8)), v14), v15);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v145 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144), v16);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v147 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), v17);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148), v18);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v149, v149), v19), v149), v20), v21);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), v22);
  v153 = vandq_s8(vaddq_s64(v125, a3), a4);
  v170.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL))), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v79, 3uLL), a2)));
  v154 = veorq_s8(v153, a5);
  v155 = veorq_s8(v153, a6);
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), a7);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157);
  v159 = veorq_s8(vaddq_s64(vsubq_s64(v158, vandq_s8(vaddq_s64(v158, v158), a8)), v14), v15);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), v16);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), v17);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), v18);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v165, v165), v19), v165), v20), v21);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), v22);
  v170.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL))), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v97, 3uLL), a2)));
  v123.i64[1] = vqtbl4q_s8(v170, *&STACK[0x3B0]).u64[0];
  v170.val[0] = vrev64q_s8(*(v8 - 15 + v10 - 1));
  v170.val[1].i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v170.val[1].i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v170.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v170.val[0], v170.val[0], 8uLL), v170.val[1]), v123));
  *(v9 + v10 - 1 - 15) = vextq_s8(v170.val[0], v170.val[0], 8uLL);
  return (*(v12 + 8 * ((28 * (v10 != 16)) ^ v24)))();
}

uint64_t sub_1000B3508(int8x16_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v15 = a5 - 8;
  v17.val[0].i64[0] = (v11 + v15 - 1) & 0xF;
  v17.val[0].i64[1] = (v11 + v15 + 14) & 0xF;
  v17.val[1].i64[0] = (v11 + v15 + 13) & 0xF;
  v17.val[1].i64[1] = (v11 + v15 + 12) & 0xF;
  v17.val[2].i64[0] = (v11 + v15 + 11) & 0xF;
  v17.val[2].i64[1] = (v11 + v15 + (v13 ^ 0xAA)) & 0xF;
  v17.val[3].i64[0] = (v11 + v15 + 9) & 0xF;
  v17.val[3].i64[1] = (v11 + v15) & 0xF ^ 8;
  *(a6 + v15) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(veor_s8(veor_s8(*(a6 + v15), *(v9 + v17.val[0].i64[0] - 7)), veor_s8(*(v17.val[0].i64[0] + v8 - 6), *(v10 + v17.val[0].i64[0] - 7)))), a3), vmul_s8(*&vqtbl4q_s8(v17, a1), a2)));
  return (*(v14 + 8 * (((v12 == v15) * a8) ^ a7)))();
}

uint64_t sub_1000B3510@<X0>(int a1@<W8>)
{
  v7 = 1875091903 * (((v6 - 232) & 0xFFE23BF8 | ~((v6 - 232) | 0xFFE23BF8)) ^ 0x36684784);
  *(v6 - 216) = v2 - v7 - 2301;
  *(v6 - 212) = ((a1 & 0xFFFBDFDE) - 75833608 + ((((v2 - 3590) | 0x443) + 2147347072) ^ v5)) ^ v7;
  *(v6 - 224) = v3;
  *(v6 - 208) = v4;
  v8 = (*(v1 + 8 * (v2 ^ 0x2A85)))(v6 - 232);
  return sub_1000B35B8(v8);
}

uint64_t sub_1000B36C4()
{
  v3 = v0 ^ 0x12CD;
  (*(v2 + 8 * (v0 + 3844)))();
  v4 = STACK[0x400];
  *(v1 + 24) = 0;
  v5 = (*(v4 + 8 * (v3 ^ 0x21C9)))(v1);
  return (STACK[0x918])(v5);
}

uint64_t sub_1000B376C()
{
  STACK[0x268] = v0;
  STACK[0x2A0] = STACK[0x2A0];
  return (*(*(v2 - 256) + 8 * v1))();
}

uint64_t sub_1000B3AD8@<X0>(_BYTE *a1@<X8>)
{
  *(v1 + 72) = 32;
  *(v1 + 39) = a1[55];
  *(v1 + 38) = a1[54];
  *(v1 + 37) = a1[53];
  *(v1 + 36) = a1[52];
  *(v1 + 35) = a1[51];
  *(v1 + 34) = a1[50];
  *(v1 + 33) = a1[49];
  *(v1 + 32) = a1[48];
  *(v1 + 31) = a1[47];
  *(v1 + 30) = a1[46];
  *(v1 + 29) = a1[45];
  *(v1 + 28) = a1[44];
  *(v1 + 27) = a1[43];
  *(v1 + 26) = a1[42];
  *(v1 + 25) = a1[41];
  *(v1 + 24) = a1[40];
  *(v1 + 23) = a1[39];
  *(v1 + 22) = a1[38];
  *(v1 + 21) = a1[37];
  *(v1 + 20) = a1[36];
  *(v1 + 19) = a1[35];
  *(v1 + 18) = a1[34];
  *(v1 + 17) = a1[33];
  *(v1 + 16) = a1[32];
  *(v1 + 15) = a1[31];
  *(v1 + 14) = a1[30];
  *(v1 + 13) = a1[29];
  *(v1 + 12) = a1[28];
  *(v1 + 11) = a1[27];
  *(v1 + 10) = a1[26];
  *(v1 + 9) = a1[25];
  *(v1 + 8) = a1[24];
  v4 = STACK[0x5D8];
  v5 = STACK[0x638];
  *v5 = 0x431A33AA2E6D965FLL;
  *(v5 + 8) = *(v4 + 108) + 197499219 - ((*(v4 + 108) << (((((4 * v2) ^ 0xF0) - 26) | 0xC5) ^ 0xC6)) & 0x178B32A6);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0x1F146D841;
  *(v5 + 32) = 197499223;
  *(v5 + 36) = 4689232;
  STACK[0x6E0] = v5;
  LODWORD(STACK[0x8E4]) = 0;
  STACK[0x980] = 0;
  v6 = (*(v3 + 8 * (v2 + 231)))(128, 0x10800400FED9166);
  v7 = STACK[0x400];
  STACK[0x9A0] = v6;
  return (*(v7 + 8 * ((100 * (v6 != 0)) ^ v2)))();
}

void sub_1000B3BF0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *(a1 + 32) == 0;
  v1 = *(a1 + 40) + 2008441969 * ((((2 * a1) | 0xFAADA4FA) - a1 + 44641667) ^ 0xB5CF8673);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1000B3CDC@<X0>(int a1@<W8>)
{
  v4 = 267 * (a1 ^ 0x9C6);
  *v6 = v8;
  v11 = v9;
  v12 = (v4 + 5943) ^ (((2 * (&v10 & 0x323B1460) - &v10 - 842732642) ^ 0x95AD38FC) * v3);
  (*(v2 + 8 * (v4 ^ 0x2CEF)))(&v10);
  v11 = v7;
  v12 = ((v4 ^ 0xE9D) + 6300) ^ (1824088897 * (&v10 ^ 0x5869D362));
  (*(v2 + 8 * ((v4 ^ 0xE9D) + 7566)))(&v10);
  return (v1 - 16257999);
}

uint64_t sub_1000B3F6C(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v28 = v16 - 16;
  v29.i64[0] = a15 + v28 + 11;
  v29.i64[1] = a15 + v28 + 10;
  v30.i64[0] = a15 + v28 + 13;
  v30.i64[1] = a15 + v28 + 12;
  v31.i64[0] = a15 + v28 + 19;
  v31.i64[1] = a15 + v28 + 18;
  v32.i64[0] = a15 + v28 + 23;
  v32.i64[1] = a15 + v28 + 22;
  v33.i64[0] = a15 + v28 + 25;
  v33.i64[1] = a15 + v28 + 24;
  v34.i64[0] = a15 + v28 + 21;
  v34.i64[1] = a15 + v28 + v17 + 16;
  v35 = vandq_s8(v34, a1);
  v36 = vandq_s8(v33, a1);
  v37 = vandq_s8(v32, a1);
  v38 = vandq_s8(v31, a1);
  v39 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v43 = vsubq_s64(v41, vandq_s8(vaddq_s64(vaddq_s64(v41, v41), a3), a4));
  v44 = vsubq_s64(v42, vandq_s8(vaddq_s64(vaddq_s64(v42, v42), a3), a4));
  v45 = vaddq_s64(vsubq_s64(v40, vandq_s8(vaddq_s64(vaddq_s64(v40, v40), a3), a4)), a5);
  v46 = vaddq_s64(vsubq_s64(v39, vandq_s8(vaddq_s64(vaddq_s64(v39, v39), a3), a4)), a5);
  v47 = veorq_s8(v46, a6);
  v48 = veorq_s8(v45, a6);
  v49 = veorq_s8(v45, a7);
  v50 = veorq_s8(v46, a7);
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v49), a8);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v50), a8);
  v53 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v54 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v55 = veorq_s8(v51, v53);
  v56 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v55);
  v58 = veorq_s8(vaddq_s64(v56, v54), v19);
  v59 = veorq_s8(v57, v19);
  v60 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v61 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v62 = veorq_s8(v58, v60);
  v63 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v65 = veorq_s8(vaddq_s64(v63, v61), v20);
  v66 = veorq_s8(v64, v20);
  v67 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v68 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v69 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v68);
  v71 = vaddq_s64(v69, v67);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v71, v71), v21), v71), v22), v23);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), v21), v70), v22), v23);
  v74 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v75 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v76 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v75);
  v78 = veorq_s8(vaddq_s64(v76, v74), v24);
  v79 = veorq_s8(v77, v24);
  v80 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v81 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82 = veorq_s8(v78, v80);
  v83 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v82);
  v85 = veorq_s8(vaddq_s64(v83, v81), v25);
  v86 = veorq_s8(v84, v25);
  v87 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v81.i64[0] = a15 + v28 + 15;
  v81.i64[1] = a15 + v28 + 14;
  v88 = vaddq_s64(v43, a5);
  v180.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v87), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v180.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v89 = veorq_s8(v88, a6);
  v90 = veorq_s8(v88, a7);
  v91 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90), a8);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92), v19);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), v20);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v97, v97), v21), v97), v22), v23);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v24);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v25);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v104 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v102.i64[0] = a15 + v28 + 17;
  v102.i64[1] = a15 + v28 + 16;
  v105 = vaddq_s64(v104, v103);
  v106 = vandq_s8(v102, a1);
  v107 = vaddq_s64(v44, a5);
  v180.val[0] = vshlq_u64(veorq_s8(v105, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v108 = veorq_s8(v107, a6);
  v109 = veorq_s8(v107, a7);
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), a8);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v19);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v20);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v116, v116), v21), v116), v22), v23);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v24);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v25);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL);
  v124 = vandq_s8(v81, a1);
  v125 = vaddq_s64(v123, v122);
  v126 = vandq_s8(v30, a1);
  v180.val[2] = vshlq_u64(veorq_s8(v125, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a2)));
  v127 = vandq_s8(v29, a1);
  v128 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v132 = vsubq_s64(v130, vandq_s8(vaddq_s64(vaddq_s64(v130, v130), a3), a4));
  v133 = vaddq_s64(vsubq_s64(v129, vandq_s8(vaddq_s64(vaddq_s64(v129, v129), a3), a4)), a5);
  v134 = vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(vaddq_s64(v128, v128), a3), a4)), a5);
  v129.i64[0] = vqtbl4q_s8(v180, v27).u64[0];
  v180.val[0] = veorq_s8(v134, a6);
  v180.val[1] = veorq_s8(v133, a6);
  v135 = veorq_s8(v133, a7);
  v136 = veorq_s8(v134, a7);
  v180.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v135), a8);
  v180.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL), v136), a8);
  v137 = veorq_s8(v180.val[0], vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v138 = veorq_s8(v180.val[1], vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v180.val[2] = vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL);
  v180.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v138);
  v180.val[1] = veorq_s8(vaddq_s64(v180.val[2], v137), v19);
  v180.val[0] = veorq_s8(v180.val[0], v19);
  v180.val[2] = vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL);
  v139 = veorq_s8(v180.val[0], vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v140 = veorq_s8(v180.val[1], v180.val[2]);
  v180.val[2] = vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL);
  v180.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v140);
  v180.val[1] = veorq_s8(vaddq_s64(v180.val[2], v139), v20);
  v180.val[0] = veorq_s8(v180.val[0], v20);
  v180.val[2] = vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL);
  v141 = veorq_s8(v180.val[0], vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v142 = veorq_s8(v180.val[1], v180.val[2]);
  v180.val[2] = vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL);
  v180.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v142);
  v180.val[1] = vaddq_s64(v180.val[2], v141);
  v180.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v180.val[1], v180.val[1]), v21), v180.val[1]), v22), v23);
  v180.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v180.val[0], v180.val[0]), v21), v180.val[0]), v22), v23);
  v180.val[2] = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v143 = veorq_s8(v180.val[0], vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v144 = veorq_s8(v180.val[1], v180.val[2]);
  v180.val[2] = vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL);
  v180.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v144);
  v180.val[1] = veorq_s8(vaddq_s64(v180.val[2], v143), v24);
  v180.val[0] = veorq_s8(v180.val[0], v24);
  v180.val[2] = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v145 = veorq_s8(v180.val[0], vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v146 = veorq_s8(v180.val[1], v180.val[2]);
  v180.val[2] = vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL);
  v180.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), v146);
  v180.val[1] = veorq_s8(vaddq_s64(v180.val[2], v145), v25);
  v180.val[0] = veorq_s8(v180.val[0], v25);
  v147 = vaddq_s64(v132, a5);
  v180.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[1], 0x38uLL), v180.val[1], 8uLL), veorq_s8(v180.val[1], vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a2)));
  v180.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180.val[0], 0x38uLL), v180.val[0], 8uLL), veorq_s8(v180.val[0], vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v148 = veorq_s8(v147, a6);
  v149 = veorq_s8(v147, a7);
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149), a8);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), v19);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153), v20);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v156, v156), v21), v156), v22), v23);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), v24);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), v25);
  v162 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL)));
  v163 = vaddq_s64(vsubq_s64(v131, vandq_s8(vaddq_s64(vaddq_s64(v131, v131), a3), a4)), a5);
  v180.val[1] = vshlq_u64(veorq_s8(v162, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v81, 3uLL), a2)));
  v164 = veorq_s8(v163, a6);
  v165 = veorq_s8(v163, a7);
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), a8);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), v19);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v20);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v172, v172), v21), v172), v22), v23);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), v24);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), v25);
  v180.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v102, 3uLL), a2)));
  v129.i64[1] = vqtbl4q_s8(v180, v27).u64[0];
  v178 = vrev64q_s8(v129);
  *(a15 + v28 + 10) = veorq_s8(vextq_s8(v178, v178, 8uLL), *(a16 + v28));
  return (*(v18 + 8 * ((31 * (a14 == v28)) ^ a12)))();
}

uint64_t sub_1000B3F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, __int16 a14, char a15, __int16 a16, char a17, uint64_t a18, char a19, uint64_t a20, int a21, unsigned int a22, uint64_t a23, char *a24, unsigned int a25, char *a26)
{
  a22 = (v26 + 2156) ^ (33731311 * ((((2 * &a21) | 0x432CE26A) - &a21 - 563507509) ^ 0x1860BB16));
  a23 = a18;
  a24 = &a13;
  (*(v27 + 8 * (v26 + 8505)))(&a21);
  a26 = &a19;
  a25 = (v26 + 2262) ^ (((((&a21 | 0x3A978552) ^ 0xFFFFFFFE) - (~&a21 | 0xC5687AAD)) ^ 0xF773213D) * v29);
  a23 = a18;
  a24 = &a17;
  (*(v27 + 8 * (v26 ^ 0x215F)))(&a21);
  a23 = a18;
  a24 = &a15;
  a22 = (v26 + 2156) ^ (33731311 * (((&a21 | 0xA4FDB1C4) - &a21 + (&a21 & 0x5B024E38)) ^ 0x9D0B7BE7));
  (*(v27 + 8 * (v26 + 8505)))(&a21);
  LODWORD(a24) = v26 - 2008441969 * (((&a21 | 0x365A2CDF) - &a21 + (&a21 & 0xC9A5D320)) ^ 0x7EC378D1) + 4589;
  a23 = a18;
  v30 = (*(v27 + 8 * (v26 ^ 0x21AB)))(&a21);
  return (*(v27 + 8 * (((a21 == v28) * ((v26 + 1675) ^ 0x11C0)) ^ v26)))(v30);
}

uint64_t sub_1000B41B8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v75 = vdupq_n_s64(0x38uLL);
  v76 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x350] = vdupq_n_s64(v69);
  *&STACK[0x360] = vdupq_n_s64(v72);
  *&STACK[0x330] = vdupq_n_s64(v71);
  *&STACK[0x340] = vdupq_n_s64(v68);
  *&STACK[0x310] = vdupq_n_s64(0xC008A9762A8A187uLL);
  *&STACK[0x320] = vdupq_n_s64(a1);
  *&STACK[0x2F0] = vdupq_n_s64(0xB7A19A6BE498442ALL);
  *&STACK[0x300] = vdupq_n_s64(0x176202B71A6AE107uLL);
  *&STACK[0x2D0] = vdupq_n_s64(a2);
  *&STACK[0x2E0] = vdupq_n_s64(0x242F32CA0DB3DDEAuLL);
  v77 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v78 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v79 = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x2B0] = vdupq_n_s64(a4);
  *&STACK[0x2C0] = vdupq_n_s64(a3);
  *&STACK[0x290] = vdupq_n_s64(v70);
  *&STACK[0x2A0] = vdupq_n_s64(a5);
  *&STACK[0x270] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x280] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x250] = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  *&STACK[0x260] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x230] = vdupq_n_s64(a6);
  *&STACK[0x240] = vdupq_n_s64(v73);
  *&STACK[0x210] = vdupq_n_s64(a8);
  *&STACK[0x220] = vdupq_n_s64(a7);
  *&STACK[0x200] = xmmword_10069D330;
  *&STACK[0x3B0] = *(v65 + v67 - 16);
  v80.i64[0] = v65 + v67 - 1;
  v80.i64[1] = v65 + v67 - 2;
  v81.i64[0] = v65 + v67 - 3;
  v81.i64[1] = v67 + v66 + v65 - 6079;
  v82.i64[0] = v65 + v67 - 5;
  v82.i64[1] = v65 + v67 - 6;
  v83 = v82;
  *&STACK[0x370] = v81;
  *&STACK[0x380] = v82;
  v82.i64[0] = v65 + v67 - 7;
  v82.i64[1] = v65 + v67 - 8;
  v84 = v82;
  *&STACK[0x3A0] = v82;
  v85.i64[0] = v65 + v67 - 9;
  v85.i64[1] = v65 + v67 - 10;
  v86.i64[0] = v65 + v67 - 11;
  v86.i64[1] = v65 + v67 - 12;
  v87.i64[0] = v65 + v67 - 13;
  v87.i64[1] = v65 + v67 - 14;
  v88.i64[0] = v65 + v67 - 15;
  v88.i64[1] = v65 + v67 - 16;
  v89 = vandq_s8(v88, v74);
  v90 = vandq_s8(v87, v74);
  v91 = vandq_s8(v86, v74);
  v92 = vandq_s8(v85, v74);
  v93 = vandq_s8(v84, v74);
  v94 = vandq_s8(v83, v74);
  v95 = vandq_s8(v81, v74);
  v96 = vandq_s8(v80, v74);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v76);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v76);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v76);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v76);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v76);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v76);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v76);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v76);
  v105 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v97, v97), *&STACK[0x360]), v97), *&STACK[0x350]);
  v106 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v98, v98), *&STACK[0x360]), v98), *&STACK[0x350]);
  v107 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v99, v99), *&STACK[0x360]), v99), *&STACK[0x350]);
  v108 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v100, v100), *&STACK[0x360]), v100), *&STACK[0x350]);
  v109 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v101, v101), *&STACK[0x360]), v101), *&STACK[0x350]);
  v110 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), *&STACK[0x360]), v102), *&STACK[0x350]);
  v111 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v103, v103), *&STACK[0x360]), v103), *&STACK[0x350]);
  v112 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), *&STACK[0x360]), v104), *&STACK[0x350]);
  v113 = veorq_s8(v112, *&STACK[0x340]);
  v114 = veorq_s8(v111, *&STACK[0x340]);
  v115 = veorq_s8(v110, *&STACK[0x340]);
  v116 = veorq_s8(v109, *&STACK[0x340]);
  v117 = veorq_s8(v108, *&STACK[0x340]);
  v118 = veorq_s8(v107, *&STACK[0x340]);
  v119 = veorq_s8(v106, *&STACK[0x340]);
  v120 = veorq_s8(v105, *&STACK[0x340]);
  v121 = veorq_s8(v105, *&STACK[0x330]);
  v122 = veorq_s8(v106, *&STACK[0x330]);
  v123 = veorq_s8(v107, *&STACK[0x330]);
  v124 = veorq_s8(v108, *&STACK[0x330]);
  v125 = veorq_s8(v109, *&STACK[0x330]);
  v126 = veorq_s8(v110, *&STACK[0x330]);
  v127 = veorq_s8(v111, *&STACK[0x330]);
  v128 = veorq_s8(v112, *&STACK[0x330]);
  v129 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v128);
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v127);
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v126);
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v125);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v124);
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v123);
  v136 = vaddq_s64(v129, v122);
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v137, v137), *&STACK[0x320]), v137), *&STACK[0x310]), *&STACK[0x300]);
  v139 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v136, v136), *&STACK[0x320]), v136), *&STACK[0x310]), *&STACK[0x300]);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v135, v135), *&STACK[0x320]), v135), *&STACK[0x310]), *&STACK[0x300]);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v134, v134), *&STACK[0x320]), v134), *&STACK[0x310]), *&STACK[0x300]);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v133, v133), *&STACK[0x320]), v133), *&STACK[0x310]), *&STACK[0x300]);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v132, v132), *&STACK[0x320]), v132), *&STACK[0x310]), *&STACK[0x300]);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v131, v131), *&STACK[0x320]), v131), *&STACK[0x310]), *&STACK[0x300]);
  v145 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v130, v130), *&STACK[0x320]), v130), *&STACK[0x310]), *&STACK[0x300]);
  v146 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v148 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v149 = vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL);
  v150 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v151 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v152 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v153 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v154 = veorq_s8(v141, v149);
  v155 = veorq_s8(v140, v148);
  v156 = veorq_s8(v139, v147);
  v157 = veorq_s8(v138, v146);
  v158 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v159 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v157);
  v165 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v156);
  v166 = vaddq_s64(v163, v155);
  v167 = vaddq_s64(v162, v154);
  v168 = vaddq_s64(v161, v153);
  v169 = vaddq_s64(v160, v152);
  v170 = vaddq_s64(v159, v151);
  v171 = vaddq_s64(v158, v150);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v171, v171), *&STACK[0x2F0]), v171), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v170, v170), *&STACK[0x2F0]), v170), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v169, v169), *&STACK[0x2F0]), v169), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v168, v168), *&STACK[0x2F0]), v168), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), *&STACK[0x2F0]), v167), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v166, v166), *&STACK[0x2F0]), v166), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v165, v165), *&STACK[0x2F0]), v165), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v164, v164), *&STACK[0x2F0]), v164), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v181 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v182 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v183 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v184 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v185 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v186 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v187 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v188 = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v189 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL);
  v191 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v194 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v187);
  v196 = veorq_s8(vaddq_s64(v188, v180), v77);
  v197 = veorq_s8(vaddq_s64(v189, v181), v77);
  v198 = veorq_s8(vaddq_s64(v190, v182), v77);
  v199 = veorq_s8(vaddq_s64(v191, v183), v77);
  v200 = veorq_s8(vaddq_s64(v192, v184), v77);
  v201 = veorq_s8(vaddq_s64(v193, v185), v77);
  v202 = veorq_s8(vaddq_s64(v194, v186), v77);
  v203 = veorq_s8(v195, v77);
  v204 = vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL);
  v205 = vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL);
  v206 = vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL);
  v207 = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v208 = vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL);
  v209 = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v210 = vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL);
  v211 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v212 = veorq_s8(v202, v210);
  v213 = veorq_s8(v201, v209);
  v214 = veorq_s8(v200, v208);
  v215 = veorq_s8(v199, v207);
  v216 = veorq_s8(v198, v206);
  v217 = veorq_s8(v197, v205);
  v218 = veorq_s8(v196, v204);
  v219 = vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL);
  v220 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v221 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v222 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v223 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v224 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v225 = vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL);
  v226 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v218);
  v227 = veorq_s8(vaddq_s64(v219, v211), v78);
  v228 = veorq_s8(vaddq_s64(v220, v212), v78);
  v229 = veorq_s8(vaddq_s64(v221, v213), v78);
  v230 = veorq_s8(vaddq_s64(v222, v214), v78);
  v231 = veorq_s8(vaddq_s64(v223, v215), v78);
  v232 = veorq_s8(vaddq_s64(v224, v216), v78);
  v233 = veorq_s8(vaddq_s64(v225, v217), v78);
  v234 = veorq_s8(v226, v78);
  v235 = vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL);
  v236 = vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL);
  v237 = vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL);
  v238 = vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL);
  v239 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v240 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v241 = vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL);
  v242 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v243 = veorq_s8(v233, v241);
  v244 = veorq_s8(v232, v240);
  v245 = veorq_s8(v231, v239);
  v246 = veorq_s8(v230, v238);
  v247 = veorq_s8(v229, v237);
  v248 = veorq_s8(v228, v236);
  v249 = veorq_s8(v227, v235);
  v250 = vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL);
  v251 = vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL);
  v252 = vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL);
  v253 = vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL);
  v254 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v255 = vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL);
  v256 = vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL);
  v257 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), v249);
  v258 = veorq_s8(vaddq_s64(v250, v242), v79);
  v259 = veorq_s8(vaddq_s64(v251, v243), v79);
  v260 = veorq_s8(vaddq_s64(v252, v244), v79);
  v261 = veorq_s8(vaddq_s64(v253, v245), v79);
  v262 = veorq_s8(vaddq_s64(v254, v246), v79);
  v263 = veorq_s8(vaddq_s64(v255, v247), v79);
  v264 = veorq_s8(vaddq_s64(v256, v248), v79);
  v265 = veorq_s8(v257, v79);
  v266 = veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v267 = veorq_s8(v264, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v268 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v269 = veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v270 = veorq_s8(v261, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v271 = veorq_s8(v260, vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL));
  v272 = veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL));
  v273 = veorq_s8(v258, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v274 = vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL);
  v275 = vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL);
  v276 = vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL);
  v277 = vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL);
  v278 = vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL);
  v279 = vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL);
  v280 = vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL);
  v281 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL), v273);
  v282 = vaddq_s64(v280, v272);
  v283 = vaddq_s64(v279, v271);
  v284 = vaddq_s64(v278, v270);
  v285 = vaddq_s64(v277, v269);
  v286 = vaddq_s64(v276, v268);
  v287 = vaddq_s64(v275, v267);
  v288 = vaddq_s64(v274, v266);
  v289 = veorq_s8(vaddq_s64(vsubq_s64(v288, vandq_s8(vaddq_s64(v288, v288), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v290 = veorq_s8(vaddq_s64(vsubq_s64(v287, vandq_s8(vaddq_s64(v287, v287), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v291 = veorq_s8(vaddq_s64(vsubq_s64(v286, vandq_s8(vaddq_s64(v286, v286), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v292 = veorq_s8(vaddq_s64(vsubq_s64(v285, vandq_s8(vaddq_s64(v285, v285), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v293 = veorq_s8(vaddq_s64(vsubq_s64(v284, vandq_s8(vaddq_s64(v284, v284), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v294 = veorq_s8(vaddq_s64(vsubq_s64(v283, vandq_s8(vaddq_s64(v283, v283), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v295 = veorq_s8(vaddq_s64(vsubq_s64(v282, vandq_s8(vaddq_s64(v282, v282), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v296 = veorq_s8(vaddq_s64(vsubq_s64(v281, vandq_s8(vaddq_s64(v281, v281), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v297 = veorq_s8(v296, vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL));
  v298 = veorq_s8(v295, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL));
  v299 = veorq_s8(v294, vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL));
  v300 = veorq_s8(v293, vsraq_n_u64(vshlq_n_s64(v270, 3uLL), v270, 0x3DuLL));
  v301 = veorq_s8(v292, vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL));
  v302 = veorq_s8(v291, vsraq_n_u64(vshlq_n_s64(v268, 3uLL), v268, 0x3DuLL));
  v303 = veorq_s8(v290, vsraq_n_u64(vshlq_n_s64(v267, 3uLL), v267, 0x3DuLL));
  v304 = veorq_s8(v289, vsraq_n_u64(vshlq_n_s64(v266, 3uLL), v266, 0x3DuLL));
  v305 = vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL);
  v306 = vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL);
  v307 = vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL);
  v308 = vsraq_n_u64(vshlq_n_s64(v293, 0x38uLL), v293, 8uLL);
  v309 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL), v301);
  v310 = vaddq_s64(v308, v300);
  v311 = vaddq_s64(v307, v299);
  v299.i64[0] = a9 + v67 + 9;
  v299.i64[1] = a9 + v67 + 8;
  v312 = vaddq_s64(v306, v298);
  v298.i64[0] = a9 + v67 + 7;
  v298.i64[1] = a9 + v67 + 6;
  v300.i64[0] = a9 + v67 + 5;
  v300.i64[1] = a9 + v67 + 4;
  v313 = *&STACK[0x290];
  *&STACK[0x390] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v289, 0x38uLL), v289, 8uLL), v304), *&STACK[0x290]), vnegq_s64(vandq_s8(vshlq_n_s64(v80, 3uLL), v75)));
  v301.i64[0] = a9 + v67 + 3;
  v301.i64[1] = a9 + v67 + 2;
  v314 = veorq_s8(vaddq_s64(v305, v297), v313);
  v315 = veorq_s8(v312, v313);
  v316 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), v302), v313);
  v317 = vandq_s8(vshlq_n_s64(v88, 3uLL), v75);
  v318 = vandq_s8(vshlq_n_s64(v86, 3uLL), v75);
  v319 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL), v303), v313), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x370], 3uLL), v75)));
  v320 = vshlq_u64(v316, vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x380], 3uLL), v75)));
  v321 = vshlq_u64(veorq_s8(v309, v313), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3A0], 3uLL), v75)));
  *&STACK[0x3A0] = vshlq_u64(veorq_s8(v310, v313), vnegq_s64(vandq_s8(vshlq_n_s64(v85, 3uLL), v75)));
  v322 = vshlq_u64(veorq_s8(v311, v313), vnegq_s64(v318));
  v323 = vshlq_u64(v315, vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), v75)));
  v324 = vshlq_u64(v314, vnegq_s64(v317));
  v325 = vandq_s8(v301, v74);
  v326 = vandq_s8(v300, v74);
  v327 = vandq_s8(v298, v74);
  v328 = vandq_s8(v299, v74);
  v329 = vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL);
  v330 = vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL);
  v331 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v325, 0x38uLL), v325, 8uLL), v76);
  v332 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL), v76);
  v333 = veorq_s8(v332, *&STACK[0x280]);
  v334 = veorq_s8(v331, *&STACK[0x280]);
  v335 = veorq_s8(v331, *&STACK[0x270]);
  v336 = veorq_s8(v332, *&STACK[0x270]);
  v337 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v334, 0x38uLL), v334, 8uLL), v335), *&STACK[0x260]);
  v338 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL), v336), *&STACK[0x260]);
  v339 = vsraq_n_u64(vshlq_n_s64(v335, 3uLL), v335, 0x3DuLL);
  v340 = veorq_s8(v338, vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL));
  v341 = veorq_s8(v337, v339);
  v342 = vsraq_n_u64(vshlq_n_s64(v338, 0x38uLL), v338, 8uLL);
  v343 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v337, 0x38uLL), v337, 8uLL), v341);
  v344 = veorq_s8(vaddq_s64(v342, v340), *&STACK[0x250]);
  v345 = veorq_s8(v343, *&STACK[0x250]);
  v346 = vsraq_n_u64(vshlq_n_s64(v340, 3uLL), v340, 0x3DuLL);
  v347 = veorq_s8(v345, vsraq_n_u64(vshlq_n_s64(v341, 3uLL), v341, 0x3DuLL));
  v348 = veorq_s8(v344, v346);
  v349 = vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL);
  v350 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v344, 0x38uLL), v344, 8uLL), v348);
  v351 = veorq_s8(vaddq_s64(v349, v347), v77);
  v352 = veorq_s8(v350, v77);
  v353 = vsraq_n_u64(vshlq_n_s64(v347, 3uLL), v347, 0x3DuLL);
  v354 = veorq_s8(v352, vsraq_n_u64(vshlq_n_s64(v348, 3uLL), v348, 0x3DuLL));
  v355 = veorq_s8(v351, v353);
  v356 = vsraq_n_u64(vshlq_n_s64(v352, 0x38uLL), v352, 8uLL);
  v357 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL), v355);
  v358 = veorq_s8(vaddq_s64(v356, v354), v78);
  v359 = veorq_s8(v357, v78);
  v360 = vsraq_n_u64(vshlq_n_s64(v354, 3uLL), v354, 0x3DuLL);
  v361 = veorq_s8(v359, vsraq_n_u64(vshlq_n_s64(v355, 3uLL), v355, 0x3DuLL));
  v362 = veorq_s8(v358, v360);
  v363 = vsraq_n_u64(vshlq_n_s64(v359, 0x38uLL), v359, 8uLL);
  v364 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v358, 0x38uLL), v358, 8uLL), v362);
  v365 = veorq_s8(vaddq_s64(v363, v361), v79);
  v366 = veorq_s8(v364, v79);
  v367 = vsraq_n_u64(vshlq_n_s64(v361, 3uLL), v361, 0x3DuLL);
  v368 = veorq_s8(v366, vsraq_n_u64(vshlq_n_s64(v362, 3uLL), v362, 0x3DuLL));
  v369 = veorq_s8(v365, v367);
  v370 = vsraq_n_u64(vshlq_n_s64(v366, 0x38uLL), v366, 8uLL);
  v371 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v365, 0x38uLL), v365, 8uLL), v369);
  v372 = veorq_s8(vaddq_s64(v370, v368), *&STACK[0x240]);
  v373 = veorq_s8(v371, *&STACK[0x240]);
  v374 = vsraq_n_u64(vshlq_n_s64(v368, 3uLL), v368, 0x3DuLL);
  v375 = veorq_s8(v373, vsraq_n_u64(vshlq_n_s64(v369, 3uLL), v369, 0x3DuLL));
  v376 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v372, 0x38uLL), v372, 8uLL), veorq_s8(v372, v374));
  v377 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v373, 0x38uLL), v373, 8uLL), v375);
  v378 = vsubq_s64(v377, vandq_s8(vaddq_s64(v377, v377), *&STACK[0x230]));
  v377.i64[0] = a9 + v67 + 1;
  v377.i64[1] = a9 + v67;
  v379 = vaddq_s64(v330, v76);
  v484.val[3] = veorq_s8(v321, vshlq_u64(veorq_s8(vaddq_s64(v378, *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v301, 3uLL), v75))));
  v484.val[2] = veorq_s8(v320, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v376, vandq_s8(vaddq_s64(v376, v376), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v300, 3uLL), v75))));
  v380 = veorq_s8(v379, *&STACK[0x280]);
  v381 = veorq_s8(v379, *&STACK[0x270]);
  v382 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v380, 0x38uLL), v380, 8uLL), v381), *&STACK[0x260]);
  v383 = veorq_s8(v382, vsraq_n_u64(vshlq_n_s64(v381, 3uLL), v381, 0x3DuLL));
  v384 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v382, 0x38uLL), v382, 8uLL), v383), *&STACK[0x250]);
  v385 = veorq_s8(v384, vsraq_n_u64(vshlq_n_s64(v383, 3uLL), v383, 0x3DuLL));
  v386 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v384, 0x38uLL), v384, 8uLL), v385), v77);
  v387 = veorq_s8(v386, vsraq_n_u64(vshlq_n_s64(v385, 3uLL), v385, 0x3DuLL));
  v388 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v386, 0x38uLL), v386, 8uLL), v387), v78);
  v389 = veorq_s8(v388, vsraq_n_u64(vshlq_n_s64(v387, 3uLL), v387, 0x3DuLL));
  v390 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v388, 0x38uLL), v388, 8uLL), v389), v79);
  v391 = veorq_s8(v390, vsraq_n_u64(vshlq_n_s64(v389, 3uLL), v389, 0x3DuLL));
  v392 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v390, 0x38uLL), v390, 8uLL), v391), *&STACK[0x240]);
  v393 = veorq_s8(v392, vsraq_n_u64(vshlq_n_s64(v391, 3uLL), v391, 0x3DuLL));
  v394 = vsraq_n_u64(vshlq_n_s64(v392, 0x38uLL), v392, 8uLL);
  v392.i64[0] = a9 + v67 - 1;
  v392.i64[1] = a9 + v67 - 2;
  v395 = vaddq_s64(v394, v393);
  v396 = vsubq_s64(v395, vandq_s8(vaddq_s64(v395, v395), *&STACK[0x230]));
  v395.i64[0] = a9 + v67 - 3;
  v395.i64[1] = a9 + v67 - 4;
  v397 = vshlq_u64(veorq_s8(vaddq_s64(v396, *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v298, 3uLL), v75)));
  v298.i64[0] = a9 + v67 - 5;
  v298.i64[1] = a9 + v67 - 6;
  v398 = vaddq_s64(v329, v76);
  v484.val[1] = veorq_s8(v319, v397);
  v399 = veorq_s8(v398, *&STACK[0x280]);
  v400 = veorq_s8(v398, *&STACK[0x270]);
  v401 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v399, 0x38uLL), v399, 8uLL), v400), *&STACK[0x260]);
  v402 = veorq_s8(v401, vsraq_n_u64(vshlq_n_s64(v400, 3uLL), v400, 0x3DuLL));
  v403 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v401, 0x38uLL), v401, 8uLL), v402), *&STACK[0x250]);
  v404 = veorq_s8(v403, vsraq_n_u64(vshlq_n_s64(v402, 3uLL), v402, 0x3DuLL));
  v405 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v403, 0x38uLL), v403, 8uLL), v404), v77);
  v406 = veorq_s8(v405, vsraq_n_u64(vshlq_n_s64(v404, 3uLL), v404, 0x3DuLL));
  v407 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v405, 0x38uLL), v405, 8uLL), v406), v78);
  v408 = veorq_s8(v407, vsraq_n_u64(vshlq_n_s64(v406, 3uLL), v406, 0x3DuLL));
  v409 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL), v408), v79);
  v410 = veorq_s8(v409, vsraq_n_u64(vshlq_n_s64(v408, 3uLL), v408, 0x3DuLL));
  v411 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v409, 0x38uLL), v409, 8uLL), v410), *&STACK[0x240]);
  v412 = vandq_s8(v298, v74);
  v413 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v411, 0x38uLL), v411, 8uLL), veorq_s8(v411, vsraq_n_u64(vshlq_n_s64(v410, 3uLL), v410, 0x3DuLL)));
  v414 = vandq_s8(v395, v74);
  v415 = vandq_s8(v392, v74);
  v484.val[0] = veorq_s8(*&STACK[0x390], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v413, vandq_s8(vaddq_s64(v413, v413), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v299, 3uLL), v75))));
  v416 = vandq_s8(v377, v74);
  v417 = vsraq_n_u64(vshlq_n_s64(v416, 0x38uLL), v416, 8uLL);
  v418 = vsraq_n_u64(vshlq_n_s64(v415, 0x38uLL), v415, 8uLL);
  v419 = vsraq_n_u64(vshlq_n_s64(v414, 0x38uLL), v414, 8uLL);
  v420 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v412, 0x38uLL), v412, 8uLL), v76);
  v421 = vaddq_s64(v419, v76);
  v419.i64[0] = vqtbl4q_s8(v484, *&STACK[0x200]).u64[0];
  v422 = veorq_s8(v421, *&STACK[0x280]);
  v484.val[0] = veorq_s8(v420, *&STACK[0x280]);
  v423 = veorq_s8(v420, *&STACK[0x270]);
  v424 = veorq_s8(v421, *&STACK[0x270]);
  v484.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v484.val[0], 0x38uLL), v484.val[0], 8uLL), v423), *&STACK[0x260]);
  v425 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v422, 0x38uLL), v422, 8uLL), v424), *&STACK[0x260]);
  v484.val[1] = vsraq_n_u64(vshlq_n_s64(v423, 3uLL), v423, 0x3DuLL);
  v426 = veorq_s8(v425, vsraq_n_u64(vshlq_n_s64(v424, 3uLL), v424, 0x3DuLL));
  v427 = veorq_s8(v484.val[0], v484.val[1]);
  v484.val[1] = vsraq_n_u64(vshlq_n_s64(v425, 0x38uLL), v425, 8uLL);
  v428 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v484.val[0], 0x38uLL), v484.val[0], 8uLL), v427);
  v484.val[0] = veorq_s8(vaddq_s64(v484.val[1], v426), *&STACK[0x250]);
  v429 = veorq_s8(v428, *&STACK[0x250]);
  v484.val[1] = vsraq_n_u64(vshlq_n_s64(v426, 3uLL), v426, 0x3DuLL);
  v430 = veorq_s8(v429, vsraq_n_u64(vshlq_n_s64(v427, 3uLL), v427, 0x3DuLL));
  v431 = veorq_s8(v484.val[0], v484.val[1]);
  v484.val[1] = vsraq_n_u64(vshlq_n_s64(v429, 0x38uLL), v429, 8uLL);
  v432 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v484.val[0], 0x38uLL), v484.val[0], 8uLL), v431);
  v484.val[0] = veorq_s8(vaddq_s64(v484.val[1], v430), v77);
  v433 = veorq_s8(v432, v77);
  v484.val[1] = vsraq_n_u64(vshlq_n_s64(v430, 3uLL), v430, 0x3DuLL);
  v434 = veorq_s8(v433, vsraq_n_u64(vshlq_n_s64(v431, 3uLL), v431, 0x3DuLL));
  v435 = veorq_s8(v484.val[0], v484.val[1]);
  v484.val[1] = vsraq_n_u64(vshlq_n_s64(v433, 0x38uLL), v433, 8uLL);
  v436 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v484.val[0], 0x38uLL), v484.val[0], 8uLL), v435);
  v484.val[0] = veorq_s8(vaddq_s64(v484.val[1], v434), v78);
  v437 = veorq_s8(v436, v78);
  v484.val[1] = vsraq_n_u64(vshlq_n_s64(v434, 3uLL), v434, 0x3DuLL);
  v438 = veorq_s8(v437, vsraq_n_u64(vshlq_n_s64(v435, 3uLL), v435, 0x3DuLL));
  v439 = veorq_s8(v484.val[0], v484.val[1]);
  v484.val[1] = vsraq_n_u64(vshlq_n_s64(v437, 0x38uLL), v437, 8uLL);
  v440 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v484.val[0], 0x38uLL), v484.val[0], 8uLL), v439);
  v484.val[0] = veorq_s8(vaddq_s64(v484.val[1], v438), v79);
  v441 = veorq_s8(v440, v79);
  v484.val[1] = vsraq_n_u64(vshlq_n_s64(v438, 3uLL), v438, 0x3DuLL);
  v442 = veorq_s8(v441, vsraq_n_u64(vshlq_n_s64(v439, 3uLL), v439, 0x3DuLL));
  v443 = veorq_s8(v484.val[0], v484.val[1]);
  v484.val[1] = vsraq_n_u64(vshlq_n_s64(v441, 0x38uLL), v441, 8uLL);
  v444 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v484.val[0], 0x38uLL), v484.val[0], 8uLL), v443);
  v484.val[0] = veorq_s8(vaddq_s64(v484.val[1], v442), *&STACK[0x240]);
  v445 = veorq_s8(v444, *&STACK[0x240]);
  v484.val[1] = vsraq_n_u64(vshlq_n_s64(v442, 3uLL), v442, 0x3DuLL);
  v446 = veorq_s8(v445, vsraq_n_u64(vshlq_n_s64(v443, 3uLL), v443, 0x3DuLL));
  v447 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v484.val[0], 0x38uLL), v484.val[0], 8uLL), veorq_s8(v484.val[0], v484.val[1]));
  v448 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL), v446);
  v449 = vaddq_s64(v418, v76);
  v483.val[3] = veorq_s8(v324, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v448, vandq_s8(vaddq_s64(v448, v448), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v298, 3uLL), v75))));
  v483.val[2] = veorq_s8(v323, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v447, vandq_s8(vaddq_s64(v447, v447), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v395, 3uLL), v75))));
  v450 = veorq_s8(v449, *&STACK[0x280]);
  v451 = veorq_s8(v449, *&STACK[0x270]);
  v452 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v450, 0x38uLL), v450, 8uLL), v451), *&STACK[0x260]);
  v453 = veorq_s8(v452, vsraq_n_u64(vshlq_n_s64(v451, 3uLL), v451, 0x3DuLL));
  v454 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v452, 0x38uLL), v452, 8uLL), v453), *&STACK[0x250]);
  v455 = veorq_s8(v454, vsraq_n_u64(vshlq_n_s64(v453, 3uLL), v453, 0x3DuLL));
  v456 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v454, 0x38uLL), v454, 8uLL), v455), v77);
  v457 = veorq_s8(v456, vsraq_n_u64(vshlq_n_s64(v455, 3uLL), v455, 0x3DuLL));
  v458 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v456, 0x38uLL), v456, 8uLL), v457), v78);
  v459 = veorq_s8(v458, vsraq_n_u64(vshlq_n_s64(v457, 3uLL), v457, 0x3DuLL));
  v460 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v458, 0x38uLL), v458, 8uLL), v459), v79);
  v461 = veorq_s8(v460, vsraq_n_u64(vshlq_n_s64(v459, 3uLL), v459, 0x3DuLL));
  v462 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v460, 0x38uLL), v460, 8uLL), v461), *&STACK[0x240]);
  v463 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v462, 0x38uLL), v462, 8uLL), veorq_s8(v462, vsraq_n_u64(vshlq_n_s64(v461, 3uLL), v461, 0x3DuLL)));
  v464 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v463, vandq_s8(vaddq_s64(v463, v463), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v392, 3uLL), v75)));
  v465 = vaddq_s64(v417, v76);
  v483.val[1] = veorq_s8(v322, v464);
  v466 = veorq_s8(v465, *&STACK[0x280]);
  v467 = veorq_s8(v465, *&STACK[0x270]);
  v468 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466, 0x38uLL), v466, 8uLL), v467), *&STACK[0x260]);
  v469 = veorq_s8(v468, vsraq_n_u64(vshlq_n_s64(v467, 3uLL), v467, 0x3DuLL));
  v470 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v468, 0x38uLL), v468, 8uLL), v469), *&STACK[0x250]);
  v471 = veorq_s8(v470, vsraq_n_u64(vshlq_n_s64(v469, 3uLL), v469, 0x3DuLL));
  v472 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v470, 0x38uLL), v470, 8uLL), v471), v77);
  v473 = veorq_s8(v472, vsraq_n_u64(vshlq_n_s64(v471, 3uLL), v471, 0x3DuLL));
  v474 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v472, 0x38uLL), v472, 8uLL), v473), v78);
  v475 = veorq_s8(v474, vsraq_n_u64(vshlq_n_s64(v473, 3uLL), v473, 0x3DuLL));
  v476 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v474, 0x38uLL), v474, 8uLL), v475), v79);
  v477 = veorq_s8(v476, vsraq_n_u64(vshlq_n_s64(v475, 3uLL), v475, 0x3DuLL));
  v478 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v476, 0x38uLL), v476, 8uLL), v477), *&STACK[0x240]);
  v479 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v478, 0x38uLL), v478, 8uLL), veorq_s8(v478, vsraq_n_u64(vshlq_n_s64(v477, 3uLL), v477, 0x3DuLL)));
  v483.val[0] = veorq_s8(*&STACK[0x3A0], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v479, vandq_s8(vaddq_s64(v479, v479), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v377, 3uLL), v75))));
  v419.i64[1] = vqtbl4q_s8(v483, *&STACK[0x200]).u64[0];
  v480 = vrev64q_s8(v419);
  *(v377.i64[1] - 6) = veorq_s8(vextq_s8(v480, v480, 8uLL), *&STACK[0x3B0]);
  v481 = ((v66 - 6091) & v67) != 16;
  return (*(a65 + 8 * ((2 * v481) | (8 * v481) | (v66 - 10))))();
}

uint64_t sub_1000B55C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, uint64_t a8)
{
  v21 = ((v8 + 934) ^ v16) * v11;
  v22 = v21 + 3002 - ((((v21 + 3002) * v17) >> 32) >> 9) * a6;
  v23 = v15 + (v11 & 0xF ^ 8) * v10;
  *(a8 + v22) ^= *(v9 + (v11 + v12));
  v24 = v21 + a5 - ((((v21 + a5) * v17) >> 32) >> 9) * a6;
  v25 = v11 + 1;
  LOBYTE(v22) = *(a4 + (v23 - ((v23 * v14) >> 32) * v18));
  *(a8 + v24) ^= 0xB8 ^ (v22 - ((2 * v22) & 0x33) + 25);
  if (a7 < v20 != v25 > v13)
  {
    v26 = a7 < v20;
  }

  else
  {
    v26 = v25 + v20 < a7;
  }

  return (*(v19 + 8 * ((7 * v26) ^ v8)))(v25 + v20 < a7);
}

uint64_t sub_1000B57D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v23 = ((&a15 + 1637650901 - 2 * (&a15 & 0x619C91D5)) ^ 0x39F542B7) * v20;
  a17 = a11;
  a18 = &a13;
  a19 = -654855621 - v23;
  a20 = v23 + v22 + 1674576793;
  a16 = v23 + 45508885;
  v24 = (*(v21 + 8 * (v22 ^ 0x2C99)))(&a15);
  return (*(v21 + 8 * (((a15 == 16257999) * ((v22 + 7874) ^ (v22 + 1515))) ^ v22)))(v24);
}

uint64_t sub_1000B58C8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  LODWORD(STACK[0x538]) = v11;
  v15 = a4 + 2048074048;
  v16 = v10 + 1;
  v17 = STACK[0x580];
  v18 = STACK[0x548];
  LODWORD(STACK[0x528]) = STACK[0x584];
  v19 = STACK[0x58C];
  v20 = STACK[0x53C];
  LODWORD(STACK[0x570]) = STACK[0x590];
  LODWORD(STACK[0x590]) = STACK[0x588];
  LODWORD(STACK[0x580]) = STACK[0x56C];
  v21 = v6;
  LODWORD(STACK[0x584]) = v8;
  LODWORD(STACK[0x58C]) = STACK[0x54C];
  LODWORD(STACK[0x588]) = STACK[0x534];
  v22 = STACK[0x540];
  LODWORD(STACK[0x56C]) = v19;
  LODWORD(STACK[0x57C]) = v20;
  LODWORD(STACK[0x5B0]) = v16;
  v23 = STACK[0x580];
  v24 = STACK[0x580] & v22;
  LODWORD(STACK[0x520]) = v22;
  v25 = v15 - 749967392;
  LODWORD(STACK[0x534]) = v15 - 749967392;
  HIDWORD(v26) = v21;
  LODWORD(v26) = v21;
  v27 = (v26 >> 6) ^ __ROR4__(v21, 11);
  v29 = __PAIR64__(v23, __ROR4__(v21, 25));
  v28 = v27 ^ v29;
  LODWORD(STACK[0x4D0]) = v27 ^ v29;
  LODWORD(STACK[0x548]) = v21;
  LODWORD(STACK[0x540]) = v18;
  v30 = v21 & v18;
  LODWORD(STACK[0x53C]) = v17;
  v31 = v24 ^ v20 ^ v23 & v18 ^ v21 & v20 ^ v21 & v17;
  LODWORD(STACK[0x54C]) = v31;
  v32 = v5 + 1707705392;
  v33 = a3 - 781250805;
  v34 = a3 + v14 - (v13 ^ 0x1BAB2D47);
  v35 = v23 & v17 ^ v23 & v20 ^ v22 & ~v21 ^ v30;
  v36 = v9 - 781250805;
  v37 = ((a3 + v14) & 0x13E79A4C) + ((v5 + 1707705392) ^ 0x1BAB2D47) + ((a3 + v14) & 0x13E79A4C ^ LODWORD(STACK[0x454]));
  v38 = v9 - ((v5 + 1707705392) ^ 0x1BAB2D47) + v25;
  v39 = (v13 ^ 0x1BAB2D47) + 333945420;
  v40 = ((v35 ^ v39) - v39) ^ ((v35 ^ v34) - v34) ^ (v35 - 2 * ((v37 ^ v38 ^ v31) & v35));
  v41 = (v7 - ((v5 + 1707705392) ^ 0x1BAB2D47)) ^ 0xAEA642A4;
  v42 = v37 - v38;
  v43 = v41 + (v36 ^ 0x98CD1274);
  LODWORD(STACK[0x4B8]) = v41;
  LODWORD(STACK[0x4C0]) = 13 * v16;
  v44 = (13 * v16 + 2626) % 0x10Eu;
  v45 = (v12 - (v13 ^ 0x1BAB2D47)) ^ 0xAEA642A4;
  v46 = (v38 ^ 0xA50DF001) + v43;
  v47 = v45 + (v33 ^ 0x98CD1274);
  v48 = v4 + v7;
  v49 = v45 - v39;
  v50 = v14;
  v51 = v41 - v37;
  v52 = v39 - v34;
  v53 = (v41 - v37) ^ v43;
  v54 = v47 + (v34 ^ 0xA50DF001);
  v55 = *(STACK[0x550] + 4 * (11 * (150 - v16) - 192 * (((2731 * (11 * (150 - v16))) >> 16) >> 3)));
  v56 = (v45 - v39) ^ v47;
  v57 = v49;
  LODWORD(STACK[0x504]) = v49;
  v16 ^= 0x39u;
  LODWORD(STACK[0x4C8]) = v16;
  v58 = *(STACK[0x5A8] + 4 * v44);
  LODWORD(STACK[0x4B0]) = v54 + v52;
  v59 = v48 - v45 - (v23 & 0x89E24BD6) + (v23 | 0x761DB429) + v28 + (v58 ^ 0x43DB1D2) + v40 + 113597399 + ((v55 + 2 * v16 - 1297777) ^ 0xF61B2FB4);
  LODWORD(STACK[0x4A0]) = v46;
  v60 = v42 + v46;
  LODWORD(STACK[0x4A8]) = v42 + v46;
  v61 = v54 + v52 + v56;
  v56 -= 1506225628;
  v62 = v61 ^ v56;
  v63 = ((2 * (v56 ^ 0xB108359F)) & 0x9B08B58E) + (v56 ^ 0xFC8C6F58);
  v64 = (v60 + v53) ^ (v53 - 1506225628);
  v65 = (v53 - 1506225628) ^ 0xB108359F;
  v66 = ((v51 + 491105367) ^ 0xAD1930FF) + 540260193;
  LODWORD(STACK[0x510]) = v66;
  v67 = v13;
  v68 = v46 - (v51 + 491105367);
  LODWORD(STACK[0x4DC]) = v51 + 491105367;
  v69 = v66 ^ v68 ^ (v65 + 1300519623);
  LODWORD(STACK[0x524]) = v69;
  v70 = (v69 - (v65 + 1300519623)) ^ (v65 + 1930150449);
  v71 = v54 - (v57 + 491105367);
  v72 = (v57 + 491105367) ^ 0xAD1930FF;
  LODWORD(STACK[0x518]) = v72;
  v73 = (v72 + 540260193) ^ v71 ^ v63;
  LODWORD(STACK[0x500]) = v73;
  v74 = (v73 - v63) ^ (v63 + 629630826);
  v75 = v64 - (v68 + v65);
  LODWORD(STACK[0x4FC]) = v75;
  v76 = v75 - 579544448 + v70;
  v77 = v70;
  LODWORD(STACK[0x4B4]) = v70;
  LODWORD(STACK[0x4F8]) = v68 + 1417822595;
  v78 = (v68 + 1417822595) ^ 0x8B2B9486 ^ v76;
  v79 = STACK[0x570];
  v80 = (v76 ^ LODWORD(STACK[0x56C]) ^ v78 ^ LODWORD(STACK[0x570])) - (v76 ^ LODWORD(STACK[0x56C]) ^ v78);
  v81 = v62 - (v71 + (v56 ^ 0xB108359F));
  LODWORD(STACK[0x4F0]) = v81;
  v82 = v81 - 579544448 + v74;
  LODWORD(STACK[0x4F4]) = v71 + 1417822595;
  v83 = v82 ^ (v71 + 1417822595) ^ 0x8B2B9486;
  v84 = ((v83 ^ v79) - v83) ^ ((v82 ^ v79) - v82) ^ v80;
  v85 = v63 + 1554532888 + v83;
  LODWORD(STACK[0x4EC]) = v85;
  LODWORD(STACK[0x560]) = v83 - v82;
  v86 = (v82 ^ v74) - (v83 - v82);
  LODWORD(STACK[0x570]) = v86;
  v87 = v85 - v86;
  LODWORD(STACK[0x508]) = v87;
  LODWORD(STACK[0x4C4]) = v59 - 1981658154;
  LODWORD(STACK[0x4E8]) = (158 * (((v84 - (v74 + v87) + v59 - 1981658154) >> 24) & 0xF) + 14694) % (((665 - 158 * (((v84 - (v74 + v87) + v59 - 1981658154) >> 24) & 0xF)) | (158 * (((v84 - (v74 + v87) + v59 - 1981658154) >> 24) & 0xF) + 14694)) & 0x3C9);
  v88 = LODWORD(STACK[0x534]) ^ v32 ^ LODWORD(STACK[0x4D0]);
  LODWORD(v29) = v23;
  v89 = (v29 >> 6) ^ __ROR4__(v23, 11);
  LODWORD(v29) = __ROR4__(v23, 25);
  v90 = ((v89 ^ v29 ^ v50) - v50) ^ ((v89 ^ v29 ^ v67) - v67) ^ ((v88 ^ v89 ^ v29) - v88);
  v91 = LODWORD(STACK[0x5B0]) ^ 0xFFFFFFC6;
  LODWORD(STACK[0x4D0]) = v91;
  v92 = ((((v51 + 491105367) & 0x28030) + ((152488 - v51) & 0x28030)) | (((v38 + 235552) & 0x20043) + ((26591 - v38) & 0x20043))) & ((v91 & 0xF3E45BBF) + v16) ^ LODWORD(STACK[0x5B0]);
  LODWORD(STACK[0x460]) = LODWORD(STACK[0x55C]) + LODWORD(STACK[0x4B8]) - v12 + LODWORD(STACK[0x54C]) + v90 + (*(STACK[0x5A8] + 4 * (LODWORD(STACK[0x4C0]) % 0x10Eu)) ^ 0x43DB1D2) + 1903795711 + (*(STACK[0x550] + 4 * (11 * (v92 ^ 0xD) % 0xC0)) ^ v92 ^ 0x719ED493);
  v93 = STACK[0x538];
  v94 = STACK[0x58C];
  v95 = STACK[0x590];
  v96 = STACK[0x584];
  v97 = STACK[0x528];
  v98 = STACK[0x588];
  v99 = (LODWORD(STACK[0x590]) ^ LODWORD(STACK[0x538])) & STACK[0x528] ^ STACK[0x584] & LODWORD(STACK[0x590]) ^ STACK[0x58C] & LODWORD(STACK[0x538]) ^ (LODWORD(STACK[0x58C]) ^ LODWORD(STACK[0x584])) & STACK[0x588];
  HIDWORD(v29) = STACK[0x538];
  LODWORD(v29) = STACK[0x538];
  v100 = (v29 >> 13) ^ __ROR4__(STACK[0x538], 2);
  v102 = __PAIR64__(STACK[0x584], __ROR4__(STACK[0x538], 22));
  v101 = v100 ^ v102;
  LODWORD(v102) = STACK[0x584];
  v103 = (v102 >> 2) ^ __ROR4__(STACK[0x584], 13) ^ __ROR4__(STACK[0x584], 22);
  v104 = (LODWORD(STACK[0x4A8]) ^ LODWORD(STACK[0x4A0]) ^ v103 ^ v101) - (LODWORD(STACK[0x4A8]) ^ LODWORD(STACK[0x4A0]) ^ v103);
  v105 = STACK[0x584] & LODWORD(STACK[0x528]) ^ STACK[0x590] & LODWORD(STACK[0x538]);
  LODWORD(STACK[0x54C]) = STACK[0x528];
  LODWORD(STACK[0x534]) = v93;
  v106 = v105 ^ v94 & v96 ^ v94 & v97 ^ v98 & v95 ^ v98 & v93;
  v107 = ((LODWORD(STACK[0x4B0]) ^ v101) - LODWORD(STACK[0x4B0])) ^ ((v54 ^ v101) - v54) ^ v104;
  v108 = ((v106 ^ v62) - v62) ^ ((v106 ^ (v71 - v62)) - (v71 - v62)) ^ (((v68 - v64) ^ v64 ^ v99 ^ v106) - ((v68 - v64) ^ v64 ^ v99));
  v109 = v65 - 1439914785 + v78;
  v110 = v78 - v76;
  LODWORD(STACK[0x4E0]) = v59;
  v111 = (v76 ^ v77) + 239097508 - (v78 - v76) + (v59 & 0xF1BFA95B) - (v59 | 0xE4056A4);
  v112 = v76 - 1707705392 + v109;
  LODWORD(STACK[0x490]) = v112;
  v113 = LODWORD(STACK[0x510]) - LODWORD(STACK[0x504]) + v99 + v107;
  v114 = v111 - ((__ROR4__(__ROR4__(v112, 28) ^ 0x2E96DE6, 4) ^ 0x9FD16921) & v112);
  LODWORD(STACK[0x528]) = v114;
  v115 = v109 - v114;
  LODWORD(STACK[0x4B8]) = v114 + 2097443081;
  v116 = (v109 - v114 - v110 - 534080365) ^ (v114 + 2097443081);
  LODWORD(STACK[0x538]) = v116;
  v117 = STACK[0x460];
  v118 = v113 + LODWORD(STACK[0x460]) + v116 - 491105367;
  v119 = LODWORD(STACK[0x4DC]) - LODWORD(STACK[0x518]) + v103 + v108 + LODWORD(STACK[0x4C4]);
  v120 = STACK[0x5A0];
  v121 = ((((*(STACK[0x5A0] + (158 * (HIBYTE(v118) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(STACK[0x5A0] + (158 * (v118 >> 28) + 14694) % 0x3C9u) ^ 0x19) << 12) | *(STACK[0x5A0] + (158 * (BYTE2(v118) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(STACK[0x5A0] + (158 * ((v118 >> 20) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 12);
  LODWORD(STACK[0x4C0]) = v121;
  v110 += 1125124071;
  LODWORD(STACK[0x4B0]) = v112 + 1705200337;
  v122 = (v112 + 1705200337) ^ v110;
  LODWORD(STACK[0x518]) = v122;
  LOWORD(v110) = ((v112 + 19153) ^ ~v110) + 26592;
  LOWORD(v113) = v122 - 26592;
  LODWORD(STACK[0x510]) = v118;
  LOWORD(v114) = (((v118 & 0xF) + 93) * ((v110 & 0x67) + ((v122 + 32) & 0x67) + 55)) % 0x3C9u;
  v123 = *(v120 + (158 * (v118 >> 12) + 14694) % 0x3C9u) ^ 0x19;
  v124 = v121 | *(v120 + (158 * ((v118 >> 8) & 0xF) + 14694) % 0x3C9u) ^ 0x19;
  LODWORD(STACK[0x4DC]) = v124;
  v125 = (v124 << 8) ^ (v123 << 12);
  v126 = LODWORD(STACK[0x508]) - (LODWORD(STACK[0x560]) + 534080365);
  v127 = LODWORD(STACK[0x570]) + 2097443081;
  LODWORD(STACK[0x504]) = v127;
  v128 = v126 ^ v127;
  LODWORD(STACK[0x508]) = v128;
  v129 = v119 - v128 - 540260193;
  v130 = ((v129 >> 27) & 0x1A) + ((v129 >> 28) ^ 0x5D);
  LOWORD(v53) = 158 * v130 - 969 * (((1367806 * v130) >> 16) >> 7);
  v131 = *(v120 + (158 * (v118 >> 4) + 14694) % 0x3C9u);
  v132 = *(v120 + v114) ^ 0x19;
  LODWORD(STACK[0x46C]) = v125;
  v133 = ((*(v120 + (158 * (HIBYTE(v129) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v120 + v53) ^ 0x19) << 12);
  LODWORD(STACK[0x4C4]) = v133;
  v134 = ((v133 | *(v120 + (158 * (BYTE2(v129) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v120 + (158 * ((v129 >> 20) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 12);
  LODWORD(STACK[0x4A8]) = v134;
  v135 = ((v134 | *(v120 + (158 * ((v129 >> 8) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v120 + (158 * (v129 >> 12) + 14694) % 0x3C9u) ^ 0x19) << 12);
  LOBYTE(v114) = *(v120 + (158 * (v129 >> 4) + 14694) % 0x3C9u);
  v136 = *(v120 + (158 * (v129 & 0xF) + 14694) % 0x3C9u) ^ 0x19;
  v137 = v135;
  LODWORD(STACK[0x470]) = v135;
  LOBYTE(v114) = v114 ^ ((v135 | v136) >> 4) ^ 0x19;
  v138 = v131 ^ ((v125 | v132) >> 4) ^ 0x19;
  LOBYTE(v121) = v131 ^ ((v125 | v132) >> 4) ^ 0x19;
  LODWORD(STACK[0x498]) = v138;
  v139 = 158 * (v114 & 0xF0 | (v138 >> 4));
  v140 = ((v139 + 18644) & 0xFFFEu) % (((810 - v139) ^ (v139 + 18644)) & 0x3C8 | ((v113 & 0x241) + (v110 & 0x241)));
  LODWORD(STACK[0x4A0]) = v132 & 0xF;
  v141 = 158 * (v132 & 0xF | (16 * (v136 & 0xF)));
  LOBYTE(v136) = *(v120 + (v141 + 18644 - 969 * (((v141 + 18644) & 0xFFFEu) / 0x3C9)));
  v142 = *(v120 + (v141 + 70942 - 969 * ((4432371 * (v141 + 70942)) >> 32))) ^ LODWORD(STACK[0x458]) ^ 0x19;
  LODWORD(STACK[0x488]) = v142;
  v143 = 158 * ((v136 & 0x76 ^ 0x66 | v136 & 0x76 ^ 0x10) + v142);
  v144 = *(v120 + (v143 - 969 * ((4432371 * v143) >> 32)));
  LOBYTE(v144) = (((v144 >> 4) ^ 1) + ((v144 >> 3) & 0x12 ^ 0xFD) + 26) ^ v136;
  v145 = 158 * (v121 & 0xF | (16 * (v114 & 0xF)));
  v146 = *(v120 + (v145 + 70942 - 969 * ((4432371 * (v145 + 70942)) >> 32))) ^ (16 * (*(v120 + (158 * v144 + 70942 - 969 * ((4432371 * (158 * v144 + 70942)) >> 32))) ^ 0x19));
  LODWORD(STACK[0x480]) = v146;
  LOWORD(v144) = v145 + 18644;
  v147 = (v145 + 18644) & 0xFFFE;
  v146 ^= 0x19u;
  LODWORD(STACK[0x47C]) = v146;
  v148 = *(v120 + (158 * v146 + 18644 - 969 * ((4432371 * (158 * v146 + 18644)) >> 32))) >> 4;
  v149 = 158 * (((v148 ^ 1) - 2 * ((v148 ^ 1) & 0xFB ^ v148 & 2) + 25) ^ *(v120 + (v144 - 969 * (v147 / 0x3C9u)))) + 70942;
  v150 = 158 * (*(v120 + (v139 + 70942 - 969 * ((4432371 * (v139 + 70942)) >> 32))) ^ (16 * (*(v120 + (v149 - 969 * ((4432371 * v149) >> 32))) ^ 0x19)) ^ 0x19);
  v151 = *(v120 + (v150 + 18644 - 969 * ((4432371 * (v150 + 18644)) >> 32)));
  LODWORD(STACK[0x4D0]) = (158 * (((v151 >> 4) & 8 ^ *(v120 + v140) & 0x48 | (v151 >> 4) & 7 ^ *(v120 + v140) & 0xB7) ^ 0x18) + 70942) % (((STACK[0x4D0] & 0x3C9) + (STACK[0x4C8] & 9)) & 0x3C9u);
  v152 = 158 * ((v137 >> 8) & 0xF0 | (v125 >> 12));
  LODWORD(STACK[0x4C8]) = ((v152 + 18644) & 0xFFFEu) % (((811 - v152) | (v152 + 18644)) & 0x3C9u);
  v153 = LODWORD(STACK[0x4F8]) ^ LODWORD(STACK[0x57C]) ^ LODWORD(STACK[0x4FC]);
  LODWORD(STACK[0x55C]) = (((LODWORD(STACK[0x4F0]) ^ LODWORD(STACK[0x520])) - LODWORD(STACK[0x4F0])) ^ ((LODWORD(STACK[0x4F4]) ^ LODWORD(STACK[0x520])) - LODWORD(STACK[0x4F4])) ^ ((v153 ^ LODWORD(STACK[0x520])) - v153)) - LODWORD(STACK[0x500]);
  v154 = LODWORD(STACK[0x4B4]) + LODWORD(STACK[0x56C]);
  LODWORD(STACK[0x520]) = v82 + LODWORD(STACK[0x4EC]);
  LODWORD(STACK[0x56C]) = (v154 + v115 + v117) ^ (LODWORD(STACK[0x490]) - 1335935268);
  return (*(STACK[0x598] + 8 * (((2 * (LODWORD(STACK[0x5B0]) == 63)) | (8 * (LODWORD(STACK[0x5B0]) == 63))) ^ LODWORD(STACK[0x45C]))))();
}

uint64_t sub_1000B595C(uint64_t a1, int a2)
{
  v5 = (a1 + v3 - 16);
  v6 = (v2 + v3 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((v3 & 0xFFFFFFE0) != 32) * (((a2 - 135748821) | 2) - 5672)) | (a2 - 135749164))))();
}

uint64_t sub_1000B5A54()
{
  *(v2 + v0) = 0;
  v6 = v3 < v1;
  v7 = v0 + 1;
  if (v6 == v7 > 0xFFFFFFFFCDE53684)
  {
    v6 = v7 + v1 < v3;
  }

  return (*(v5 + 8 * ((!v6 * (v4 ^ 0x69E)) ^ v4)))();
}

void sub_1000B5AAC()
{
  (*(v2 + 8 * (v0 ^ 0x324F)))(STACK[0x7B0]);
  LODWORD(STACK[0x3F4]) = v1;
  STACK[0x708] = STACK[0x848];
  STACK[0x778] = *(v2 + 8 * ((v0 ^ 0x1DAF) - 2526));
  JUMPOUT(0x1000B01A4);
}

uint64_t sub_1000B5AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, uint64_t a23, uint64_t a24, int a25)
{
  v31 = 1875091903 * ((1962735378 - (v30 | 0x74FCF712) + (v30 | 0x8B0308ED)) ^ 0xBD768B6E);
  a24 = a18;
  a22 = ((2 * v28) & 0xE8FB7FD4) + (v28 ^ 0xF47DBFEA) + 731838144 + v31;
  LODWORD(a23) = v31 + 7724;
  (*(v29 + 77160))(&a21);
  v32 = 1875091903 * ((2 * (v30 & 0x6F30AE8) - v30 + 2030892308) ^ 0x4F797697);
  a24 = a18;
  a22 = (v27 ^ 0x73BDFEBB) + ((2 * v27) & 0xE77BFD76) - 1403078673 + v32;
  LODWORD(a23) = v32 + 7724;
  (*(v29 + 77160))(&a21);
  v33 = 956911519 * ((~v30 & 0xA37912630CD7AA56 | v30 & 0x5C86ED9CF32855A9) ^ 0xE64F67BFE646DA53);
  a21 = v33 ^ 0x3FE;
  a23 = v26 - ((2 * v26) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v33;
  a24 = a18;
  (*(v29 + 76792))(&a21);
  v34 = 956911519 * (((v30 | 0x6C09AAF5648E1C0) - (v30 & 0x6C09AAF5648E1C0)) ^ 0x43F6EF73BCD991C5);
  a21 = v34 ^ 0x3FE;
  a23 = v25 - ((2 * v25) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v34;
  a24 = a18;
  v35 = (*(v29 + 76792))(&a21);
  return (*(v29 + 8 * ((5264 * (a25 == 16257999)) | 0x90Cu)))(v35);
}

void sub_1000B5D20()
{
  v4 = *(v2 + 16);
  **(v2 + 32) = v1;
  *v4 = v0;
  *v2 = *(v3 + 24);
}

uint64_t sub_1000B5D80@<X0>(__int16 a1@<W8>)
{
  v4 = ((2 * v2) & 0x7C9FFBF76FFE5D4ELL) + (v2 ^ 0x7E4FFDFBB7FF2EA7) + v1;
  v5 = *(v4 - 0x7E4FFDFBB7FF2EA4);
  LODWORD(v4) = (*(v4 - 0x7E4FFDFBB7FF2EA7) << 24) | (*(v4 + ((468 * (v3 ^ 0x16A2u)) ^ 0x81B002044800D426)) << 16) | (*(v4 - 0x7E4FFDFBB7FF2EA5) << 8) | v5;
  LODWORD(STACK[0x494]) = v4 + 197499219 - 2 * (v4 & 0xBC5995F ^ v5 & 0xC);
  return sub_1001437DC(a1);
}

uint64_t sub_1000B5E90@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  *(a3 + 104) = veorq_s8(*(v3 + 88), xmmword_10069D320);
  v5 = *(v3 + 4);
  *(a3 + 20) = v5;
  return (*(v4 + 8 * (((((a2 + 847743053) & 0xCD787FDF) - 375) * (v5 == 0)) ^ (a2 - 110))))(a1, 197499219);
}

uint64_t sub_1000B5FD0@<X0>(int a1@<W8>)
{
  v4 = ((((v2 ^ 0xFFC8) + 56) ^ ((v2 ^ 0x71A) - 1818) ^ ((v2 ^ 0x1BD9) + a1 + 1944 - 10358)) - 18132);
  v5 = v4 < 0xD621;
  v6 = v4 > (v1 - 10719);
  if (v1 > 0x29DEu != v5)
  {
    v6 = v5;
  }

  return (*(v3 + 8 * ((4563 * v6) ^ a1)))();
}

uint64_t sub_1000B6060(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  *(v30 - 208) = 0;
  v31 = *(v30 - 256);
  STACK[0x210] = *(v31 + 8 * (a4 - 1207));
  LODWORD(STACK[0x200]) = a8 + 4247;
  LODWORD(STACK[0x2B0]) = a8 + 5752;
  LODWORD(STACK[0x270]) = (a8 + 6962) | 0x30;
  return (*(v31 + 8 * (((*a30 != 0) * ((((216 * (a4 ^ 0x543)) ^ 0xF6F) - 1128) ^ 0xF3)) | (216 * (a4 ^ 0x543)))))(0x8893D652EA3595FFLL, 0x6FEAED2DD55A32A7, 0x3D2CC4E5C304AE09);
}

uint64_t sub_1000B609C()
{
  v6 = (v1 - 32);
  v7 = (v2 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v0 == 32) * v4) ^ (v3 + 1726))))();
}

uint64_t sub_1000B60AC@<X0>(uint64_t a1@<X3>, int a2@<W5>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = a1 == 1;
  v74 = *(v65 + a1 - 1);
  v75 = a1 + a3;
  v76 = __ROR8__((v75 + 9) & ((a2 ^ 0x1AFu) + 3802 - 6091), 8);
  v77 = v76 - ((2 * v76 + 0x2A11B965E67D9C56) & v66) + v67;
  v78 = v77 ^ v68;
  v79 = v77 ^ v69;
  v80 = (__ROR8__(v78, 8) + v79) ^ 0xE49D77DF873DBF7ELL;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0xF5A2F1B9B5D0B209;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0x5963B6C555D97F1FLL;
  v85 = __ROR8__(v84, 8);
  v86 = v84 ^ __ROR8__(v83, 61);
  v87 = ((v70 & (2 * (v85 + v86))) - (v85 + v86) + v71) ^ v72;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0x64C31C027084DE6CLL;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0x1A2AEBE44253AF03;
  *(v75 + 9) = (((__ROR8__(v91, 8) + (v91 ^ __ROR8__(v90, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v75 + 9) & 7))) ^ v74;
  v92 = !v73;
  return (*(a65 + 8 * ((431 * v92) ^ a2 ^ 0x1AF)))();
}

uint64_t sub_1000B6204(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  v17 = v8 ^ 0x1319;
  LODWORD(STACK[0x560]) = v17;
  v18 = 5 * (v17 ^ 0x1B25);
  LODWORD(STACK[0x57C]) = v15;
  LODWORD(STACK[0x408]) = v18;
  LODWORD(STACK[0x540]) = v10;
  v19 = (((v15 + v11 - 1980301328) ^ 0xCD9BE0A9) + 942469926) ^ (v15 + v11 - 1980301328) ^ (((v15 + v11 - 1980301328) ^ 0x3871B6E0) - 842619539) ^ (((v15 + v11 - 1980301328) ^ 0x7FD7DFDF) - 1973367724) ^ ((v18 ^ 0x75C26AAF) + ((v15 + v11 - 1980301328) ^ 0x807565E5));
  LODWORD(STACK[0x55C]) = a7;
  v20 = 776 * ((((v19 >> 28) ^ 0x1EEEC9FE) - 669927272) ^ (((v19 >> 28) ^ 0x48FC934) + 1114683486) ^ (((v19 >> 28) ^ 0x1A6100CA) + 1553887652)) + 1087660957;
  v21 = (v20 ^ 0x20EBEF78) & (2 * (v20 & 0x88E3EF78)) ^ v20 & 0x88E3EF78;
  LODWORD(STACK[0x548]) = v9;
  v22 = (2 * (v20 ^ 0x216CEF58)) & 0xA98F0022 ^ 0xA8810021 ^ ((2 * (v20 ^ 0x216CEF58)) ^ 0x531E0044) & (v20 ^ 0x216CEF58);
  v23 = (4 * v21) & 0x218F0020 ^ v21 ^ ((4 * v21) | 0xC) & v22;
  v24 = (4 * v22) & 0xA98F0020 ^ 0x9830023 ^ ((4 * v22) ^ 0xA63C008C) & v22;
  v25 = v23 ^ 0xA98F0000 ^ (16 * v23) & 0x298F0020 ^ ((16 * v23) ^ 0x30) & v24;
  v26 = (16 * v24) & 0xA98F0020 ^ 0x210F0003 ^ ((16 * v24) ^ 0x98F00230) & v24;
  v27 = (v25 << 8) & 0xA98F0000 ^ v25 ^ ((v25 << 8) ^ 0x8F002300) & v26;
  v28 = v20 ^ (2 * ((v27 << 16) & 0x298F0000 ^ v27 ^ ((v27 << 16) ^ 0x230000) & ((v26 << 8) & 0xA98F0000 ^ 0x208F0000 ^ ((v26 << 8) ^ 0xF000000) & v26))) ^ 0x4B04502A;
  v29 = 0x21D0F9652F4A3DLL * (((v28 ^ 0x927892991772B5B8) + 0x6D876D66E88D4A48) ^ ((v28 ^ 0xB10F81FCC9553AB7) + 0x4EF07E0336AAC549) ^ ((v28 ^ 0x237713655CD83018) - 0x237713655CD83018)) + 0x7A0FBC60E8A4AABDLL;
  v30 = v29 ^ ((v29 ^ 0x13351BF83D6246A5) - 0x7D7B0E54A15C3AE7) ^ ((v29 ^ 0x52259EA4EEBB9B3ALL) - 0x3C6B8B087285E778) ^ ((v29 ^ 0xF489EE1FB8127D02) + 0x6538044CDBD3FEC0) ^ ((v29 ^ 0xDBD77EEFF7F5DCDFLL) + 0x4A6694BC94345F63);
  v31 = ((v30 ^ 0x73C4CAC3FA3935A5) + 0x4F5B70B268D5BE8CLL) ^ ((v30 ^ 0x9F41A35A23FD3CDDLL) - 0x5C21E6D44EEE480CLL);
  v32 = v13;
  v33 = ((HIWORD(v19) & 0xF ^ 0xB6A44CE8) - 607038726) ^ ((HIWORD(v19) & 0xF ^ 0xFC3AF19A) - 1857032308) ^ ((HIWORD(v19) & 0xF ^ 0x4A9EBD7A) + 669754220);
  v34 = (((v33 + 2961) ^ 0x8124) + 38) ^ (v33 + 2961) ^ (((v33 + 2961) ^ 0x6634) + 822) ^ (((v33 + 2961) ^ 0x201) + 769) ^ (((v33 + 2961) ^ 0x3EF) + 751);
  LODWORD(STACK[0x580]) = a3;
  v35 = ((-263301378 - v33) ^ 0x79B4B34F) & (2 * ((-263301378 - v33) & 0x8000006E)) ^ (-263301378 - v33) & 0x8000006E;
  LODWORD(STACK[0x528]) = a6;
  v36 = ((2 * ((-263301378 - v33) ^ 0x73FD3B07)) ^ 0x1DB7FED2) & ((-263301378 - v33) ^ 0x73FD3B07) ^ (2 * ((-263301378 - v33) ^ 0x73FD3B07)) & 0x8EDBFF68;
  v37 = (v36 ^ 0x240) & (4 * v35) ^ v35;
  v38 = ((4 * (v36 ^ 0x82480129)) ^ 0x3B6FFDA4) & (v36 ^ 0x82480129) ^ (4 * (v36 ^ 0x82480129)) & 0x8EDBFF68;
  v39 = (v38 ^ 0xA4BFD20) & (16 * v37) ^ v37;
  v40 = ((16 * (v38 ^ 0x84900249)) ^ 0xEDBFF690) & (v38 ^ 0x84900249) ^ (16 * (v38 ^ 0x84900249)) & 0x8EDBFF60;
  v41 = v39 ^ 0x8EDBFF69 ^ (v40 ^ 0x8C9BF600) & (v39 << 8);
  v42 = (((-263301378 - v33) ^ (2 * ((v41 << 16) & 0x6490000 ^ v41 ^ ((v41 << 16) ^ 0x37490000) & (((v40 ^ 0x2400969) << 8) & 0xEDB0000 ^ (((v40 ^ 0x2400969) << 8) ^ 0x5BFF0000) & (v40 ^ 0x2400969) ^ 0x4000000)))) & 0x6E9B9045 ^ 0x49FE6B8B) & (v34 & 0x225 ^ 0x7FFFFDEB) | v34 & 0x20;
  LODWORD(STACK[0x56C]) = v13;
  v43 = (v32 & 0x916470A3 ^ 0xF2775F58) & (v32 & 0x916470A3 | 0x6A1B8F58) ^ v32 & 0x10020A3;
  v44 = (((((v43 ^ 0x7B91F175) - 1833534525) ^ ((v43 ^ 0xB5289495) + 1544494627) ^ ((v43 ^ 0x3DCE1A1B) - 722890579)) + 1607032609 + (((v42 ^ 0x9E13A0E0) + 1125307642) ^ ((v42 ^ 0x9EC2A5AD) + 1136906677) ^ ((v42 ^ 0x252C7EE2) - 131265796))) * (v33 - 1836391277) - 1930847269 * v33 - 486438207) % 0x3C9;
  LODWORD(STACK[0x550]) = v19;
  LODWORD(STACK[0x53C]) = a8;
  v45 = a5 - v32 - ((2 * (a5 - v32)) & 0x36158F2) + 28355705;
  LODWORD(STACK[0x420]) = v12;
  LODWORD(STACK[0x534]) = v14;
  v47 = STACK[0x5B0];
  v48 = *(STACK[0x5B0] + (776 * (((v19 & 0xF ^ 0x13AAA232) + 1285339396) ^ ((v19 & 0xF) + 3548338) ^ ((v19 & 0xF ^ 0x918A6D1) - 1775321631)) + 1678092752) % 0x3C9);
  v49 = *(STACK[0x5B0] + (776 * (((v45 & 0xF ^ 0xE01B3B7) - 1715768768) ^ ((v45 & 0xF ^ 0xAFC29B8) + 2101798961) ^ ((v45 & 0xF ^ 0x4FD9A06) - 1287169137)) + 300780120) % 0x3C9);
  LODWORD(STACK[0x524]) = v48 & 0xF;
  v50 = ((16 * v49) ^ 0x92B28027) & (v48 & 0xF ^ 0x92B280F2) | v48 & 8;
  v51 = 776 * (((v50 ^ 0x1025CCC8) - 1700577661) ^ ((v50 ^ 0x2852140) - 1476144373) ^ ((v50 ^ 0x126D77) - 1433100482));
  v52 = LOBYTE(STACK[0xDF4]);
  LODWORD(STACK[0x54C]) = v52;
  v53 = (16 * v52) ^ 0x7EC05A5C;
  LODWORD(STACK[0x584]) = v53;
  v54 = v53 ^ *(v47 + (v51 - 1593281712) % 0x3C9u);
  LODWORD(STACK[0x518]) = v16;
  v55 = (v54 ^ 0xAA40FA6) - 2129129756;
  v56 = 776 * (((v54 ^ 0x8B38F94) - 485519662) ^ v55 ^ ((v54 ^ 0x1CD7D103) + 2003554375));
  LODWORD(STACK[0x4D0]) = v56;
  v57 = __CFADD__(1938 * (v31 ^ ((v30 ^ 0x82CB7C3545FA753ALL) - 0x41AB39BB28E901EBLL)), 0x89AA885C6EAE8D6) + (((v31 ^ ((v30 ^ 0x82CB7C3545FA753ALL) - 0x41AB39BB28E901EBLL)) * 0x792uLL) >> 64) + 1938 * ((__CFADD__(v30 ^ 0x73C4CAC3FA3935A5, 0x4F5B70B268D5BE8CLL) - 1) ^ (__CFADD__(v30 ^ 0x9F41A35A23FD3CDDLL, 0xA3DE192BB111B7F4) - 1) ^ (__CFADD__(v30 ^ 0x82CB7C3545FA753ALL, 0xBE54C644D716FE15) - 1)) + 908891934;
  v58 = *(v47 + (v51 - 1593554864) % 0x3C9u);
  if ((v57 - 908890623) >= 0x3C9)
  {
    v57 -= 969;
  }

  v59 = *(v47 + (v56 - 550757032) % 0x3C9u);
  v60 = (776 * (((v58 ^ (v59 >> 4) ^ 0x5388079) + 1523023869) ^ ((v58 ^ (v59 >> 4) ^ 0x129F9871) + 1298163701) ^ ((v58 ^ (v59 >> 4) ^ 0x17A718BE) - 396826820)) + 431456) % 0x3C9;
  v61 = (*(v47 + (776 * (((HIBYTE(v19) & 0xF ^ 0x6900885) + 1711450534) ^ ((HIBYTE(v19) & 0xF ^ 0x60F6EA9) - 425865334) ^ ((HIBYTE(v19) & 0xF ^ 0x9F6626) + 1611515655)) + 1133482512) % 0x3C9u) << 8) ^ (*(v47 + (v57 - 908890623)) << 12) ^ (16 * *(v47 + (776 * ((((v19 >> 20) & 0xF ^ 0x16F2DCFB) - 1026651923) ^ (((v19 >> 20) & 0xF ^ 0x1D0F6626) + 691221042) ^ (((v19 >> 20) & 0xF ^ 0xBFDBAD9) - 4067633)) - 1456914488) % 0x3C9));
  LODWORD(STACK[0x538]) = v61;
  v62 = v61 ^ *(v47 + v44);
  LODWORD(STACK[0x4DC]) = v62;
  v63 = *(v47 + (776 * ((((v19 >> 8) & 0xF ^ 0x3FB0B6F) - 2075875681) ^ (((v19 >> 8) & 0xF ^ 0x17C10D02) + 1350476020) ^ (((v19 >> 8) & 0xF ^ 0x143A0661) + 1401269137)) - 2097106312) % 0x3C9) << 8;
  LODWORD(STACK[0x4F0]) = v62 << 16;
  v64 = (((v62 << 16) ^ 0xF5002507) & (v63 ^ 0xFFFFDA1F) | v63 & 0xDA00) ^ (*(v47 + (776 * ((((v19 >> 12) ^ 0x66478D4) - 1245516056) ^ ((v19 >> 12) - 464050252) ^ (((v19 >> 12) ^ 0xFB8222Au) + 2082386970)) + 1863364728) % 0x3C9) << 12);
  v65 = *(v47 + (776 * ((((v19 >> 4) ^ 0x15C49ED5) - 720700029) ^ (((v19 >> 4) ^ 0x11CF4CBD) + 1895903211) ^ (((v19 >> 4) ^ 0x40BD26Fu) - 2067418823)) - 1905586464) % 0x3C9);
  v66 = v48 & 0x7F ^ (16 * v65) ^ (v64 ^ 0xFE49587) & (v48 ^ 0xFFFFFF42);
  v46 = (776 * (((HIWORD(v45) & 0xF ^ 0xDF3D507) + 2144928556) ^ ((HIWORD(v45) & 0xF ^ 0x1AF3BE51) + 148465790) ^ ((HIWORD(v45) & 0xF ^ 0x17006B56) - 2060796549)) - 298916864) % 0x3C9u;
  v67 = (v45 >> 20) & 8;
  LOBYTE(v67) = ((v67 + 104) ^ (v67 - 24) ^ (v67 - 120)) + 125 + (((v67 ^ 0xFE) - 11) ^ ((v67 ^ 0xC9) - 60) ^ ((v67 ^ 0x3F) + 54));
  v68 = ((((16 * v65) & 0x60) - 519312406) ^ ((32 * ((v65 >> 1) & 3)) | 0x20FBEC16) ^ (((16 * v65) & 0x60 ^ 0x229A2356) - 59127616)) - 401145031 + ((((16 * v65) & 0x60 ^ 0x586FD75B) + 1017325776) ^ ((16 * v65) | 0x870EFF9B) ^ (((16 * v65) & 0x60 ^ 0x698AA5E6) + 222714483));
  v69 = (v68 ^ 0x69) & (2 * (v68 & 0x60)) ^ v68 & 0x60;
  v70 = ((2 * (v68 ^ 0x29)) ^ 0x96) & (v68 ^ 0x29) ^ (2 * (v68 ^ 0x29)) & 0x4A;
  LOBYTE(v68) = v68 ^ (2 * ((((4 * (v70 ^ 0x49)) ^ 0x20) & (v70 ^ 0x49) ^ (4 * (v70 ^ 0x49)) & 0x40) & (16 * (v70 & (4 * v69) ^ v69)) ^ v70 & (4 * v69) ^ v69));
  LOBYTE(v68) = (v68 ^ 0x62) & (v67 ^ 0x49 ^ ((v67 ^ 0x6E) + 26) ^ ((v67 ^ 0x61) + 23) ^ ((v67 ^ 0x79) + 15) ^ ((v67 ^ 0xFE) - 118)) ^ v68 & 0xC1;
  LOBYTE(v68) = -127 * (((v68 ^ 0x4C) - 15) ^ ((v68 ^ 0xAF) + 20) ^ ((v68 ^ 0xA3) + 32)) - 37;
  LOBYTE(v67) = ((2 * v68) ^ 0xDE) & (v68 ^ 0xA9);
  v71 = v67 & (4 * (((2 * v68) & 0x50 ^ 0xA8) & v68)) ^ ((2 * v68) & 0x50 ^ 0xA8) & v68;
  LOBYTE(v68) = v68 ^ (2 * ((4 * v67) & (v67 ^ 0xB0) & (16 * v71) ^ v71)) ^ 0x2D;
  v72 = *(v47 + (776 * ((((v45 >> 12) ^ 0x1106FD6C) - 52165756) ^ (((v45 >> 12) ^ 0xD68419D) + 545963891) ^ (((v45 >> 12) ^ 0x1C6EBCFBu) + 1368146453)) - 403475656) % 0x3C9);
  v73 = *(v47 + (776 * ((((v45 >> 8) & 0xF ^ 0x4E13DEB) - 939554714) ^ (((v45 >> 8) & 0xF) + 1541490095) ^ (((v45 >> 8) & 0xF ^ 0x1B84C477) + 1486516730)) - 1963858096) % 0x3C9);
  v74 = (((*(v47 + v46) ^ 0x26DFFF40) & ((*(v47 + (776 * ((((v45 >> 28) ^ 0xDC1F14C) + 633487109) ^ (((v45 >> 28) ^ 0xA42B534) + 574716797) ^ (((v45 >> 28) ^ 0x7834478) - 1887401423)) - 1266757856) % 0x3C9) << 12) ^ (*(v47 + (776 * (((HIBYTE(v45) & 0xF ^ 0x1810EC37) - 1444327066) ^ ((HIBYTE(v45) & 0xF) + 1643790931) ^ ((HIBYTE(v45) & 0xF ^ 0x61A983F6) + 810565285)) - 2097007160) % 0x3C9u) << 8) ^ 0x26DADBE4) | *(v47 + v46) & 0x1B) ^ (16 * *(v47 + (776 * ((((v45 >> 20) & 0xF ^ 0x19598FF) + 170230075) ^ (((v45 >> 20) & 0xF) - 1271226938) ^ (((v45 >> 20) & 0xF ^ 0x6D0D334) + 224447218)) - 1841700624) % 0x3C9)) ^ 0x26D1BD2Du) << (v68 & 0x70) << (v68 & 0x88 ^ 0x80);
  STACK[0x4E0] = v74;
  v75 = ((v74 ^ v73) << 8) ^ (v72 << 12);
  v76 = *(v47 + (776 * (((v45 >> 4) - 2010754477) ^ ((v45 >> 4) - 2015645293) ^ (((v45 >> 4) ^ 0x1666F4F7u) + 1644083558)) + 2052910520) % 0x3C9) ^ (((v75 ^ 0x81EFDD30) & (v49 ^ 0xFFFFFFC0) | v49 & 0xC0) >> 4);
  v77 = v66 >> 4;
  LODWORD(STACK[0x4EC]) = v77;
  v78 = ((16 * (v76 & 0xF)) ^ 0xB3089791) & (v77 ^ 0xB30897FF) | (v66 >> 4) & 0xE;
  v79 = 776 * (((v78 ^ 0x132707C4) + 777153559) ^ ((v78 ^ 0x1A4BB669) + 1195302332) ^ ((v78 ^ 0x1A64265A) - 955167351));
  v80 = *(v47 + (v79 + 304076752) % 0x3C9u) ^ (16 * *(v47 + v60));
  LODWORD(v74) = 776 * (((v80 ^ 0x304979C) - 80181540) ^ ((v80 ^ 0x13F69D69) + 734694447) ^ ((v80 ^ 0x10F20198) - 1999761184));
  LODWORD(STACK[0x4C4]) = v74;
  v81 = *(v47 + (v79 + 303803600) % 0x3C9u) ^ (*(v47 + (v74 - 1982812760) % 0x3C9u) >> 4);
  LODWORD(STACK[0x4E8]) = v66;
  v82 = (v76 & 0xF0 ^ 0x5FD718C1) & ((v66 >> 8) & 0xF ^ 0x5FD718F8) | (v66 >> 8) & 0xE;
  v83 = 776 * (((v82 ^ 0x9915D3E) + 2081566999) ^ ((v82 ^ 0x496C5BC) - 1323980395) ^ ((v82 ^ 0x12D080F1) + 122940634));
  v84 = *(v47 + (776 * (((v81 ^ 0xCF6309D) + 1393151866) ^ ((v81 ^ 0x43845E2) + 466074119) ^ ((v81 ^ 0x8CE75C9u) - 1221490130)) + 407400) % 0x3C9);
  v85 = (16 * v84) ^ *(v47 + (v83 - 1341950944) % 0x3C9u);
  v86 = 776 * (((v85 ^ 0xE0EE63B) - 758912571) ^ ((v85 ^ 0x1CBD9BF8) + 544248840) ^ ((v85 ^ 0x12B376AE) + 1316911442));
  LODWORD(STACK[0x4C0]) = v86;
  v87 = *(v47 + (v83 - 1342224096) % 0x3C9u) ^ (*(v47 + (v86 - 1299570072) % 0x3C9u) >> 4);
  v88 = ((v76 >> 4) & 0xE82D9 ^ 0x62948CB9) & ((v76 >> 4) & 0xE82D9 ^ 0xFFF0BCBD) ^ (v76 >> 4) & 0xA82D9;
  v89 = (((v88 ^ 0x10766CE) - 1398490886) ^ ((v88 ^ 0x815EC7AC) + 754784668) ^ ((v88 ^ 0xE2C7AF02) + 1331982646)) + 1875714592;
  LODWORD(STACK[0x4B4]) = v75;
  v90 = ((v75 >> 8) & 0xF0 | 0x5578F007) ^ (v64 >> 12) & STACK[0x344] ^ (v89 ^ ((v89 ^ 0x75F0DF99) - 1257876187) ^ ((v89 ^ 0x17732) + 265813392) ^ ((v89 ^ 0x32006) + 371388) ^ ((v89 ^ 0xBFDEF) + 882515) ^ 0x7112D) & ((v64 >> 12) ^ 0x93666);
  v91 = 776 * (((v90 ^ 0x6DEBD50) - 561299755) ^ ((v90 ^ 0x6E178D6) - 21693613) ^ ((v90 ^ 0x154F1187) + 219845124));
  LODWORD(STACK[0x4B8]) = v91;
  v92 = *(v47 + (v91 + 651353296) % 0x3C9u) ^ (16 * *(v47 + (776 * (((v87 ^ 0x140FCD73) - 1410321917) ^ ((v87 ^ 0x1D51D9A0) - 491903278) ^ ((v87 ^ 0x95E1465u) - 1230902507)) + 316608) % 0x3C9));
  v93 = 776 * (((v92 ^ 0x20649C9) + 546450830) ^ ((v92 ^ 0x5B0EA04) + 1730448961) ^ ((v92 ^ 0x7B6A8A0) - 450704155));
  LODWORD(STACK[0x4B0]) = v93;
  v94 = (((v93 - 1908084757) ^ 0x648D216C) - 79218263) ^ (v93 - 1908084757) ^ (((v93 - 1908084757) ^ 0xBB38AA8C) + 619885129) ^ (((v93 - 1908084757) ^ 0x45FD9320) - 633893915) ^ (((v93 - 1908084757) ^ 0xFA7DFFFB) + 1706551104);
  LODWORD(STACK[0x4A0]) = (v94 ^ 0x6035E73B) % ((((v94 & 0x3C8 ^ 0xD3B432A7) - 1339989460) ^ ((v94 & 0x3C8 ^ 0xF9E8206D) - 1703055134) ^ ((v94 & 0x3C8 ^ LODWORD(STACK[0x340])) + 1237926223)) - (((v94 & 0x3C8 ^ 0x8FFFB808) + 1846124265) ^ ((v94 & 0x3C8 ^ 0x153CC878) - 188027239) ^ ((v94 & 0x3C8 ^ 0x653C8F4F) - 2067093072)) - 1166768549);
  LODWORD(STACK[0x4C8]) = v64;
  v95 = (v75 >> 12) & 0xF0 | HIWORD(v64) & 0xF;
  v96 = (HIWORD(v64) & 0x3B23 ^ 0x982AF868) & (HIWORD(v64) & 0x3B23 ^ 0xB93BE84D) ^ (HIWORD(v64) & 0x2B02 | 0x9130004);
  v97 = 776 * (((v95 ^ 0xA97B94) + 157405557) ^ ((v95 ^ 0x1AD00FB5) - 1290230442) ^ ((v95 ^ 0x1A797497) + 1941036664));
  LODWORD(STACK[0x490]) = v97;
  LODWORD(STACK[0x498]) = (v97 + 1471916104) % (v96 & 0x202B23 ^ 0x8002B21 ^ (((16 * v84) & 0x3C0 ^ 0x100898EB) & ((16 * v84) | 0x3228F82B) ^ ((((v84 >> 4) & 3) << 8) | 0x1828B0C3)) & (v96 ^ 0xAB013BA5));
  v98 = (((LODWORD(STACK[0x560]) - 5324) ^ 0xCE54341A) + v55) ^ LODWORD(STACK[0x57C]);
  LODWORD(STACK[0x488]) = v98;
  v99 = LODWORD(STACK[0x534]) - 1289461901;
  v98 ^= 0xF8B1CB5u;
  LODWORD(STACK[0x4A8]) = v98;
  v100 = v99 + v98;
  LODWORD(STACK[0x534]) = v100;
  v101 = 776 * (v100 >> 28) + 531560 - 969 * ((4432371 * (776 * (v100 >> 28) + 531560)) >> 32);
  v102 = 776 * ((HIBYTE(v100) & 0xF) + (((673 - LODWORD(STACK[0x55C])) | LODWORD(STACK[0x580])) & 0x2AD));
  v103 = v102 - 969 * ((4432371 * v102) >> 32);
  v104 = 776 * ((v100 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v100 >> 20) & 0xF) + 531560)) >> 32);
  v105 = 776 * (HIWORD(v100) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v100) & 0xF) + 531560)) >> 32);
  v106 = 776 * (v100 >> 12) + 531560 - 969 * ((4432371 * (776 * (v100 >> 12) + 531560)) >> 32);
  v107 = 776 * ((v100 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v100 >> 8) & 0xF) + 531560)) >> 32);
  v108 = 776 * (v100 >> 4) + 531560 - 969 * ((4432371 * (776 * (v100 >> 4) + 531560)) >> 32);
  v109 = 776 * (v100 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v100 & 0xF) + 531560)) >> 32);
  v110 = LODWORD(STACK[0x570]) + LODWORD(STACK[0x36C]);
  v111 = LODWORD(STACK[0x590]) ^ LODWORD(STACK[0x56C]);
  LODWORD(STACK[0x590]) = v111;
  LODWORD(STACK[0x57C]) = v111 ^ 0xF8B1CB5;
  v112 = v110 - (v111 ^ 0xF8B1CB5);
  v113 = 776 * (v112 >> 28) + 531560 - 969 * ((4432371 * (776 * (v112 >> 28) + 531560)) >> 32);
  v114 = 776 * (HIBYTE(v112) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v112) & 0xF) + 531560)) >> 32);
  v115 = 776 * ((v112 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v112 >> 20) & 0xF) + 531560)) >> 32);
  v116 = 776 * (HIWORD(v112) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v112) & 0xF) + 531560)) >> 32);
  v117 = 776 * (v112 >> 12) + 531560 - 969 * ((4432371 * (776 * (v112 >> 12) + 531560)) >> 32);
  LODWORD(v74) = 776 * ((v112 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v112 >> 8) & 0xF) + 531560)) >> 32);
  v118 = 776 * (v112 >> 4) + 531560 - 969 * ((4432371 * (776 * (v112 >> 4) + 531560)) >> 32);
  v119 = 776 * (v112 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v112 & 0xF) + 531560)) >> 32);
  v120 = *(v47 + v109) ^ 0xBD;
  v121 = *(v47 + v119) ^ 0xBD;
  v122 = v120 & 0xF;
  v123 = 776 * (v122 | (16 * (v121 & 0xF)));
  v124 = *(v47 + (v123 + 273152 - 969 * ((4432371 * (v123 + 273152)) >> 32))) ^ 0xBD;
  v125 = 776 * ((v124 + 2126533004 - ((2 * v124) & 0x118)) ^ LODWORD(STACK[0x584]));
  v126 = (v125 + 273152) % 0x3C9;
  v127 = (*(v47 + v125 % 0x3C9) >> 4) ^ 0xB;
  v128 = 776 * ((v127 - ((2 * v127) & 0xFB) - 67) ^ *(v47 + (v123 - 969 * ((4432371 * v123) >> 32)))) + 273152;
  v129 = v128 - 969 * ((4432371 * v128) >> 32);
  v130 = ((((*(v47 + v103) ^ 0xBD) << 8) ^ ((*(v47 + v101) ^ 0xBD) << 12) | *(v47 + v105) ^ 0xBD) << 8) ^ ((*(v47 + v104) ^ 0xBD) << 12);
  v131 = *(v47 + v106) ^ 0xBD;
  v132 = v130 | *(v47 + v107) ^ 0xBD;
  v133 = v130;
  v134 = v132;
  LODWORD(STACK[0x520]) = v132;
  v135 = (v132 << 8) ^ (v131 << 12);
  v136 = (v135 | v120) ^ (16 * (*(v47 + v108) ^ 0xBD));
  v137 = ((*(v47 + v114) ^ 0xBD) << 8) ^ ((*(v47 + v113) ^ 0xBD) << 12);
  v138 = ((v137 | *(v47 + v116) ^ 0xBD) << 8) ^ ((*(v47 + v115) ^ 0xBD) << 12);
  v139 = ((v138 | *(v47 + v74) ^ 0xBD) << 8) ^ ((*(v47 + v117) ^ 0xBD) << 12);
  LOBYTE(v121) = *(v47 + v118) ^ ((v139 | v121) >> 4) ^ 0xBD;
  v140 = 776 * ((v136 >> 4) | (16 * (v121 & 0xF)));
  v141 = v140 - 969 * ((4432371 * v140) >> 32);
  v142 = 776 * (*(v47 + (v140 + 273152 - 969 * ((4432371 * (v140 + 273152)) >> 32))) ^ 0xBD ^ ((*(v47 + v129) ^ 0xBD) << ((v129 & 4 ^ 4) + (v129 & 4))));
  v143 = (v142 + 273152) % 0x3C9;
  v144 = (*(v47 + v142 % 0x3C9) >> 4) ^ 0xB;
  v145 = 776 * ((v144 - ((2 * v144) & 0xFB) - 67) ^ *(v47 + v141)) + 273152;
  v146 = STACK[0x518];
  v147 = LODWORD(STACK[0x518]) - 534884191;
  LODWORD(STACK[0x570]) = v147;
  v148 = 776 * (v121 & 0xF0 | (v136 >> 8) & 0xF & (v147 | (14 - v146)));
  v149 = 776 * (*(v47 + (v148 + 273152 - 969 * ((4432371 * (v148 + 273152)) >> 32))) ^ (16 * (*(v47 + (v145 - 969 * ((4432371 * v145) >> 32))) ^ 0xBD)) ^ 0xBD);
  v150 = v149 + 273152 - 969 * ((4432371 * (v149 + 273152)) >> 32);
  v151 = (*(v47 + (v149 - 969 * ((4432371 * v149) >> 32))) >> 4) ^ 0xB;
  v152 = 776 * ((v151 - ((2 * v151) & 0xFB) - 67) ^ *(v47 + (v148 - 969 * ((4432371 * v148) >> 32)))) + 273152;
  v153 = 776 * ((v139 >> 8) & 0xF0 | (v135 >> 12));
  v154 = *(v47 + (v153 + 273152 - 969 * ((4432371 * (v153 + 273152)) >> 32))) ^ (16 * (*(v47 + (v152 - 969 * ((4432371 * v152) >> 32))) ^ 0xBD)) ^ 0xBD;
  v155 = (((v154 + 352) | (671 - v154)) & 0x308) * (v154 + 352);
  v156 = v155 - 969 * ((4432371 * v155) >> 32);
  v157 = (*(v47 + (776 * v154 - 969 * ((4432371 * (776 * v154)) >> 32))) >> 4) ^ 0xB;
  v158 = 776 * ((v157 - ((2 * v157) & 0xFB) - 67) ^ *(v47 + (v153 - 969 * ((4432371 * v153) >> 32)))) + 273152;
  v159 = v158 - 969 * ((4432371 * v158) >> 32);
  v160 = 776 * ((v139 >> 12) & 0xF0 | HIWORD(v135) & 0xF);
  v161 = 776 * (*(v47 + (v160 + 273152 - 969 * ((4432371 * (v160 + 273152)) >> 32))) ^ (16 * (*(v47 + v159) ^ 0xBD)) ^ 0xBD);
  v162 = v161 + 273152 - 969 * ((4432371 * (v161 + 273152)) >> 32);
  v163 = *(v47 + (v161 - 969 * ((4432371 * v161) >> 32))) >> 4;
  v164 = 776 * (((v163 ^ 0xB) + ((2 * ((v163 ^ 0xB | 0x7D) ^ v163)) ^ 0x13) - 66) ^ *(v47 + (v160 - 969 * ((4432371 * v160) >> 32)))) + 273152;
  v165 = 776 * ((v138 >> 8) & 0xF0 | (v133 >> 12));
  v166 = 776 * (*(v47 + (v165 + 273152 - 969 * ((4432371 * (v165 + 273152)) >> 32))) ^ (16 * (*(v47 + (v164 - 969 * ((4432371 * v164) >> 32))) ^ 0xBD)) ^ 0xBD);
  v167 = v166 + 273152 - 969 * ((4432371 * (v166 + 273152)) >> 32);
  v168 = (*(v47 + (v166 - 969 * ((4432371 * v166) >> 32))) >> 4) ^ 0xB;
  v169 = 776 * ((v168 - ((2 * v168) & 0xFB) - 67) ^ *(v47 + (v165 - 969 * ((4432371 * v165) >> 32)))) + 273152;
  LODWORD(STACK[0x4F8]) = v133;
  v170 = 776 * ((v138 >> 12) & 0xF0 | HIWORD(v133) & 0xF);
  v171 = 776 * (*(v47 + (v170 + 273152 - 969 * ((4432371 * (v170 + 273152)) >> 32))) ^ (16 * (*(v47 + (v169 - 969 * ((4432371 * v169) >> 32))) ^ 0xBD)) ^ 0xBD);
  v172 = v171 + 273152 - 969 * ((4432371 * (v171 + 273152)) >> 32);
  v173 = (*(v47 + (v171 - 969 * ((4432371 * v171) >> 32))) >> 4) ^ 0xB;
  v174 = 776 * ((v173 - ((2 * v173) & 0xFB) - 67) ^ *(v47 + (v170 - 969 * ((4432371 * v170) >> 32)))) + 273152;
  v175 = 776 * ((v137 >> 8) & 0xF0 | (v134 >> 20) & 0xF) + 273152;
  v176 = 776 * (*(v47 + (v175 - 969 * ((4432371 * v175) >> 32))) ^ (16 * (*(v47 + (v174 - 969 * ((4432371 * v174) >> 32))) ^ 0xBD)) ^ 0xBD) + 273152;
  LOBYTE(v175) = *(v47 + v126) ^ 0xBD;
  v177 = 776 * (v122 & 0xFFFFFF0F | (16 * (v175 & 0xF))) + 550184;
  v178 = 16 * (*(v47 + v143) ^ 0xBD);
  v179 = 776 * ((v178 ^ v175) & 0xF0 | (v136 >> 4)) + 550184;
  v180 = (v178 ^ ((*(v47 + v150) ^ 0xBD) << 8) | ((*(v47 + v162) ^ 0xBD) << 16)) ^ ((*(v47 + v167) ^ 0xBD) << 20) ^ ((*(v47 + v156) ^ 0xBD) << (((v159 & 4 ^ 4) + (v159 & 4)) | 8));
  v181 = 776 * ((v180 >> 4) & 0xF0 | (v136 >> 8) & 0xF) + 550184;
  LODWORD(v74) = (v180 ^ ((*(v47 + v172) ^ 0xBD) << 24) ^ ((*(v47 + (v176 - 969 * ((4432371 * v176) >> 32))) ^ 0xFFFFFFFD) << 28)) >> 8 >> (((BYTE1(v136) & 4 ^ 4) + (BYTE1(v136) & 4)) | 4);
  v182 = 776 * ((v135 >> 12) & 0xFFFFFF0F | (16 * (v74 & 0xF))) + 550184;
  LODWORD(STACK[0x4FC]) = v74;
  v183 = 776 * (v74 & 0xF0 | HIWORD(v135) & 0xF) + 550184;
  v184 = 776 * ((v74 >> 4) & 0xF0 | (v133 >> 12)) + 550184;
  v185 = ((*(v47 + (v182 - 969 * ((4432371 * v182) >> 32))) ^ 0xBD) << 12) ^ ((*(v47 + (v181 - 969 * ((4432371 * v181) >> 32))) ^ 0xBD) << 8);
  LODWORD(STACK[0x504]) = v185;
  LODWORD(v74) = *(v47 + (v177 - 969 * ((4432371 * v177) >> 32)));
  LODWORD(STACK[0x518]) = v74;
  v186 = v74 ^ (16 * (*(v47 + (v179 - 969 * ((4432371 * v179) >> 32))) ^ 0xBD));
  v187 = *(v47 + (v183 - 969 * ((4432371 * v183) >> 32)));
  LODWORD(STACK[0x510]) = v186 ^ 0xBD;
  LODWORD(v74) = v185 ^ v186 ^ 0xBD;
  LODWORD(STACK[0x508]) = v74;
  LODWORD(v74) = v74 ^ ((v187 ^ 0xBD) << 16);
  LODWORD(STACK[0x500]) = v74;
  v188 = v74 ^ ((*(v47 + (v184 - 969 * ((4432371 * v184) >> 32))) ^ 0xBD) << 20);
  LODWORD(STACK[0x4F4]) = v188;
  LODWORD(STACK[0x56C]) = (776 * ((v188 >> 20) & 0xF) + 204088) % (-1476817395 * ((-204089 - 776 * ((v188 >> 20) & 0xF)) & 0xD438D9AD ^ (776 * ((v188 >> 20) & 0xF) + 204088) & 0x259A8));
  v189 = STACK[0x5A8];
  LODWORD(v74) = LODWORD(STACK[0x5A8]) - LODWORD(STACK[0x590]);
  LODWORD(STACK[0x480]) = v74;
  v190 = ((LODWORD(STACK[0x588]) ^ v74 ^ 0xDA67BA1F) - 1583080249) ^ ((LODWORD(STACK[0x588]) ^ v74 ^ 0x9B1F8951) - 522440823) ^ ((LODWORD(STACK[0x588]) ^ v74 ^ 0x4178334E) + 985372056);
  LODWORD(STACK[0x588]) = v190;
  v191 = LODWORD(STACK[0x414]) - 849410960 + v190;
  LODWORD(STACK[0x590]) = (776 * (HIBYTE(v191) & 0xF) + 531560) % ((919 - 776 * (HIBYTE(v191) & 0xF)) & 0x3C9 | (776 * (HIBYTE(v191) & 0xF) + 531560) & 0x3C8);
  v192 = *(v47 + (LODWORD(STACK[0x4B8]) + 651080144) % 0x3C9u) ^ (*(v47 + LODWORD(STACK[0x4A0])) >> 4);
  v193 = *(v47 + (LODWORD(STACK[0x490]) + 1472189256) % 0x3C9u) ^ (16 * *(v47 + (776 * (((v192 ^ 0x15173D15) - 1427586471) ^ ((v192 ^ 0x2306A12) - 1110469280) ^ ((v192 ^ 0x172757B1u) - 388454147)) + 276256) % 0x3C9));
  v194 = 776 * (((v193 ^ 0x4FBB8B1) + 1232287923) ^ ((v193 ^ 0x194BF188) + 1422094732) ^ ((v193 ^ 0x1DB04254) + 809026136));
  v195 = (v194 - 98729336) % 0x3C9u;
  v196 = *(v47 + LODWORD(STACK[0x498])) ^ (*(v47 + (v194 - 99002488) % 0x3C9u) >> 4);
  v197 = (776 * (((v196 ^ 0xEA5A7B) + 521512198) ^ ((v196 ^ 0x3E4E54B) - 1675945418) ^ ((v196 ^ 0x30EBF86u) + 2096185593)) + 315832) % 0x3C9;
  v198 = HIWORD(LODWORD(STACK[0x4B4]));
  v199 = v198 & 0xF0 | (LODWORD(STACK[0x4DC]) >> 4);
  v200 = 776 * (((v199 ^ 0x1E8375AC) - 1732702723) ^ ((v199 ^ 0x8C36056) + 1324947463) ^ ((v199 ^ 0x164015FC) - 1871024723));
  v201 = (v200 + 516110408) % 0x3C9u;
  v202 = *(v47 + (v200 + 516383560) % 0x3C9u) ^ (16 * *(v47 + v197));
  v203 = 776 * (((v202 ^ 0x4A6088A) + 1075269107) ^ ((v202 ^ 0xD3DD4CB) - 913534540) ^ ((v202 ^ 0x99BD72C) - 852848043));
  v204 = (v203 - 963676080) % 0x3C9u;
  v205 = (v203 - 382365293) ^ (((v203 - 382365293) ^ 0x2F0059E1) - 229252514) ^ (((v203 - 382365293) ^ 0x77681DFC) - 1438800319) ^ (((v203 - 382365293) ^ 0x953DFBA0) + 1214791709) ^ (((v203 - 382365293) ^ 0xEFFFFBFE) + 850018371) ^ 0x6F526926;
  v206 = 0x43A1F2CA5E947ALL * (((v205 ^ 0xBD5C198C1C56A429) + 0x42A3E673E3A95BD7) ^ ((v205 ^ 0xF6C6640379DE5EFLL) - 0xF6C6640379DE5EFLL) ^ ((v205 ^ 0xB2307FCC66336CA3) + 0x4DCF803399CC935DLL)) + 0x1C288A66788C6464;
  v207 = (v206 ^ 0x8EC0D53E668935BCLL) & (2 * (v206 & 0xCC10863E870DA1BELL)) ^ v206 & 0xCC10863E870DA1BELL;
  v208 = ((2 * (v206 ^ 0x16C1D13B6E907784)) ^ 0xB5A2AE0BD33BAC74) & (v206 ^ 0x16C1D13B6E907784) ^ (2 * (v206 ^ 0x16C1D13B6E907784)) & 0xDAD15705E99DD638;
  v209 = (v208 ^ 0x1080000000198430) & (4 * v207) ^ v207;
  v210 = ((4 * (v208 ^ 0x4A5151042884520ALL)) ^ 0x6B455C17A67758E8) & (v208 ^ 0x4A5151042884520ALL) ^ (4 * (v208 ^ 0x4A5151042884520ALL)) & 0xDAD15705E99DD638;
  v211 = (v210 ^ 0x4A415405A0155020) & (16 * v209) ^ v209;
  v212 = ((16 * (v210 ^ 0x9090030049888612)) ^ 0xAD15705E99DD63A0) & (v210 ^ 0x9090030049888612) ^ (16 * (v210 ^ 0x9090030049888612)) & 0xDAD15705E99DD630;
  v213 = (v212 ^ 0x88115004899D4200) & (v211 << 8) ^ v211;
  v214 = (((v212 ^ 0x52C007016000941ALL) << 8) ^ 0xD15705E99DD63A00) & (v212 ^ 0x52C007016000941ALL) ^ ((v212 ^ 0x52C007016000941ALL) << 8) & 0xDAD15705E99DD600;
  v215 = v213 ^ 0xDAD15705E99DD63ALL ^ (v214 ^ 0xD051050189940000) & (v213 << 16);
  v216 = v206 ^ (2 * ((v215 << 32) & 0x5AD1570500000000 ^ v215 ^ ((v215 << 32) ^ 0x699DD63A00000000) & (((v214 ^ 0xA8052046009C43ALL) << 16) & 0x5AD1570500000000 ^ 0x8D0160000000000 ^ (((v214 ^ 0xA8052046009C43ALL) << 16) ^ 0x5705E99D00000000) & (v214 ^ 0xA8052046009C43ALL))));
  v217 = ((v216 ^ 0xBCEBB9A1F9FFD255) - 0x4CE4E4D25CAA5CA2) ^ ((v216 ^ 0x7211D2120DCC99D6) + 0x7DE1709E5766E8DFLL);
  LODWORD(v216) = __CFADD__(969 * (v217 ^ ((v216 ^ 0x266AEF86A0054649) + 0x299A4D0AFAAF3742)), 0x350D6D87B1ABC1E5) + (((v217 ^ ((v216 ^ 0x266AEF86A0054649) + 0x299A4D0AFAAF3742)) * 0x3C9uLL) >> 64) + 969 * ((__CFADD__(v216 ^ 0xBCEBB9A1F9FFD255, 0xB31B1B2DA355A35ELL) - 1) ^ (__CFADD__(v216 ^ 0x7211D2120DCC99D6, 0x7DE1709E5766E8DFLL) - 1) ^ (__CFADD__(v216 ^ 0x266AEF86A0054649, 0x299A4D0AFAAF3742) - 1)) + 340652036;
  v218 = ((v216 ^ 0xE19B1C83) + 170462428) ^ v216 ^ ((v216 ^ 0xFF989BB3) + 338332652) ^ ((v216 ^ 0x71B19369) - 1711045838) ^ ((v216 ^ 0x7BFFFBFE) - 1873941593);
  v219 = (((v198 & 0x80 ^ 0xEA735BE2) + 526114960) ^ 0xF9E0000) - 508335027 + (((v198 & 0x80 ^ 0x2B4927AC) - 374863178) ^ ((v198 & 0x80) + 318590434) ^ ((v198 & 0x80 ^ 0x81471BC1) + 1134966489));
  LODWORD(v217) = (((v218 & 0xE2 ^ 0xA7699813) + 1276577546) ^ ((v218 & 0xE2 ^ 0x8B1A2637) + 1617213742) ^ ((v218 & 0xE2 ^ 0x2C73BE86) - 955440739)) + (((v218 & 0xE2 ^ 0x931503FC) - 1242245992) ^ ((v218 & 0xE2 ^ 0xC84855C8) - 290880860) ^ ((v218 & 0xE2 ^ 0x36C13E74) + 270592288)) + 62288719;
  v220 = ((v219 ^ 0x55EE8C56) - 1755832321) ^ v219 ^ ((v219 ^ 0x446752E1) - 2033073846) ^ ((v219 ^ 0x5A3B5D9F) - 1735537096) ^ ((v219 ^ 0x76FBEF7F) - 1269990184) ^ v217 ^ ((v217 ^ 0xE666A4D9) + 590055699) ^ ((v217 ^ 0x8B20E99D) + 1315816535) ^ ((v217 ^ 0xFB0A688F) + 1044858181) ^ ((v217 ^ 0xACFEF7FF) + 1773394485);
  LODWORD(v218) = *(v47 + v201) ^ (*(v47 + (v218 ^ 0x144DEFA7)) >> 4);
  v221 = 776 * ((((v218 ^ 0x17AC38E8) + 676579300) ^ ((v218 ^ 0x15C1ECF3) - 1975643143) ^ ((v218 ^ 0x26DD4AD) + 1569860519)) + (((v220 ^ 0x2E49DCA) - 449623865) ^ ((v220 ^ 0xF89AF88) - 1470203259) ^ ((v220 ^ 0xA968C21) + 759257390))) + 2036014224;
  LODWORD(v218) = (STACK[0x4E0] >> 12) & 0xF0 | HIBYTE(LODWORD(STACK[0x4F0])) & 0xF;
  LODWORD(v218) = 776 * (((v218 ^ 0xE87932F) - 1404146661) ^ ((v218 ^ 0x1EF36D9C) - 600141142) ^ ((v218 ^ 0x1074FEB5) - 222494335));
  v222 = *(v47 + (v218 - 1950968480) % 0x3C9u) ^ (16 * *(v47 + v221 % 0x3C9));
  LODWORD(v217) = 776 * (((v222 ^ 0x1A743CE8) + 1895765458) ^ ((v222 ^ 0x1F135349) + 1972927089) ^ ((v222 ^ 0x56764CC) + 1340886518));
  v223 = (v217 + 172235096) % 0x3C9u;
  LOBYTE(v218) = *(v47 + (v218 - 1951241632) % 0x3C9u) ^ (*(v47 + (v217 + 171961944) % 0x3C9u) >> 4);
  LODWORD(v217) = ((v218 ^ 0x16521CE9) - 374479903) ^ ((v218 ^ 0x53ED74DF) - 1408070697) ^ ((v218 ^ 0x45BF6880) - 1170172022);
  LODWORD(v218) = 776 * (((HIBYTE(LODWORD(STACK[0x4F0])) ^ 0x66u) >> (((((v217 + 113) ^ 2) + 5) ^ (v217 + 113) ^ ~(((v217 + 113) ^ 2) + 6) | ~v218) & 4)) & 0xF | (16 * ((STACK[0x4E0] >> 20) & 0xF))) + 273152;
  LODWORD(v218) = *(v47 + (v218 - 969 * ((4432371 * v218) >> 32))) ^ 0xBD;
  LODWORD(v217) = (776 * ((16 * *(v47 + (776 * v217 + 322816) % 0x3C9u)) ^ 0x82FC7839 ^ (v218 - 2097384471 - ((2 * v218) & 0x1D2))) + 273152) % 0x3C9;
  LODWORD(v214) = *(v47 + (LODWORD(STACK[0x4D0]) - 550483880) % 0x3C9u);
  v224 = (776 * ((((16 * v214) | 0x8B03FB0F) & (LODWORD(STACK[0x524]) ^ 0x8B03FB5D) | (16 * v214) & 0xA0) ^ 0x8B03FBD0) + 550184) % 0x3C9;
  LOBYTE(v178) = *(v47 + (LODWORD(STACK[0x4C4]) - 1982539608) % 0x3C9u) ^ 0x9C;
  LODWORD(v218) = 776 * (((v214 ^ (16 * v178)) & 0xE0 ^ 0x948D1D4F) & (LODWORD(STACK[0x4EC]) ^ 0x948D1DEE) ^ (((v214 ^ (16 * v178)) & 0x10) - 1802691096)) + 550184;
  LOBYTE(v214) = *(v47 + (LODWORD(STACK[0x4C0]) - 1299296920) % 0x3C9u);
  v225 = 776 * ((((((16 * v214) ^ 0xD0) - ((32 * v214) & 0x40) + 33) ^ v178) & 0xF0 | (LODWORD(STACK[0x4E8]) >> 8) & 0xF) ^ 3) + 550184;
  v226 = *(v47 + (LODWORD(STACK[0x4B0]) + 773010352) % 0x3C9u);
  v227 = *(v47 + (v225 - 969 * ((4432371 * v225) >> 32)));
  LODWORD(v214) = 776 * (((((((16 * v226) ^ 0xD0) - ((2 * ((16 * v226) ^ 0xD0)) & 0x60) - 72) ^ v214) & 0xF0 | (LODWORD(STACK[0x4C8]) >> 12)) ^ 6) + (((v227 & 0x2E ^ 0x2C) + (v227 & 0x2E)) & 0x40) + 709);
  v228 = *(v47 + v204) ^ 0xB8;
  LODWORD(v217) = (*(v47 + v217) ^ 0xFFFFFFFD) << 28;
  LODWORD(v217) = (v217 | 0xAE37264D) ^ ((*(v47 + v195) << 16) ^ 0xAE8A264D) & ~v217;
  v229 = (v217 - ((2 * v217) & 0x41580000) + 632059256) ^ (*(v47 + v223) << 24) ^ 0x98AC7578;
  v230 = (((v228 << 20) ^ 0xFFEFFFFF) & ((v226 << 12) ^ 0xCC3F9E5F) & 0xFC3FFFFF | (((v228 >> 2) & 0xF) << 22)) ^ 0xA93DCBE6 ^ (v229 - ((2 * v229) & 0xCA930B76) + 1699317177);
  LODWORD(v217) = 776 * (((v230 >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x4C8])) & 0xF) ^ 6) + 550184;
  v231 = 776 * ((HIWORD(v230) & 0xF0 | (LODWORD(STACK[0x4DC]) >> 4)) ^ 6) + 550184;
  v232 = 776 * (((v230 >> 20) & 0xF0 | (LODWORD(STACK[0x538]) >> 8) & 0xF) ^ 6) + 550184;
  v233 = 776 * ((HIBYTE(v230) & 0xF0 | (LODWORD(STACK[0x4DC]) >> 12)) ^ 6) + 550184;
  v234 = *(v47 + v224);
  LODWORD(v218) = v234 ^ (16 * (*(v47 + v218 % 0x3C9) ^ 0xBD)) ^ 0xBD;
  v235 = v218 ^ ((v227 ^ 0xBD) << 8);
  LODWORD(v214) = v235 ^ ((*(v47 + (v214 - 969 * ((4432371 * v214) >> 32))) ^ 0xBD) << 12);
  LODWORD(v217) = v214 ^ ((*(v47 + (v217 - 969 * ((4432371 * v217) >> 32))) ^ 0xBD) << 16);
  v236 = v217 ^ ((*(v47 + (v231 - 969 * ((4432371 * v231) >> 32))) ^ 0xBD) << 20);
  v237 = ((*(v47 + (v233 - 969 * ((4432371 * v233) >> 32))) ^ 0xFFFFFFFD) << 28) ^ ((*(v47 + (v232 - 969 * ((4432371 * v232) >> 32))) ^ 0xBD) << 24) ^ v236;
  v238 = 776 * (v237 >> 28) + 204088 - 969 * ((4432371 * (776 * (v237 >> 28) + 204088)) >> 32);
  v239 = 776 * (HIBYTE(v237) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v237) & 0xF) + 204088)) >> 32);
  v240 = 776 * ((v236 >> 20) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v236 >> 20) & 0xF) + 204088)) >> 32);
  v241 = 776 * (WORD1(v217) & 0xF) + 204088 - 969 * ((4432371 * (776 * (WORD1(v217) & 0xF) + 204088)) >> 32);
  v242 = 776 * (v214 >> 12) + 204088 - 969 * ((4432371 * (776 * (v214 >> 12) + 204088)) >> 32);
  v243 = 776 * ((v235 >> 8) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v235 >> 8) & 0xF) + 204088)) >> 32);
  LODWORD(v214) = 776 * (v218 >> 4) + 204088 - 969 * ((4432371 * (776 * (v218 >> 4) + 204088)) >> 32);
  LODWORD(v74) = LODWORD(STACK[0x580]) - LODWORD(STACK[0x488]);
  LODWORD(STACK[0x4F0]) = v74;
  LODWORD(v74) = v74 ^ LODWORD(STACK[0x58C]);
  LODWORD(STACK[0x58C]) = v74;
  v244 = LODWORD(STACK[0x40C]) - v74 - 780442740;
  LODWORD(STACK[0x4EC]) = 776 * (v244 >> 28) + 531560 - 969 * ((4432371 * (776 * (v244 >> 28) + 531560)) >> 32);
  v245 = 776 * (HIBYTE(v244) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v244) & 0xF) + 531560)) >> 32);
  LODWORD(STACK[0x4DC]) = 776 * ((v244 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v244 >> 20) & 0xF) + 531560)) >> 32);
  v246 = 776 * (HIWORD(v244) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v244) & 0xF) + 531560)) >> 32);
  LODWORD(STACK[0x4D0]) = 776 * (v244 >> 12) + 531560 - 969 * ((4432371 * (776 * (v244 >> 12) + 531560)) >> 32);
  v247 = 776 * ((v244 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v244 >> 8) & 0xF) + 531560)) >> 32);
  LODWORD(STACK[0x524]) = v244;
  v248 = 776 * (v244 >> 4) + 531560 - 969 * ((4432371 * (776 * (v244 >> 4) + 531560)) >> 32);
  v249 = 776 * ((((v248 & 0x72 ^ 0x95AC2872) + (v248 & 0x72)) ^ 0x95AC2ADF) + (v244 & 0xF));
  v250 = 776 * (v191 >> 28) + 531560 - 969 * ((4432371 * (776 * (v191 >> 28) + 531560)) >> 32);
  LODWORD(v74) = 776 * (((v191 >> 20) & 0xF ^ 0x2AD) + ((v191 >> 19) & 0x1A));
  v251 = v74 - 969 * ((4432371 * v74) >> 32);
  v252 = 776 * (HIWORD(v191) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v191) & 0xF) + 531560)) >> 32);
  LODWORD(v217) = 776 * (v191 >> 12) + 531560 - 969 * ((4432371 * (776 * (v191 >> 12) + 531560)) >> 32);
  v253 = 776 * ((v191 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v191 >> 8) & 0xF) + 531560)) >> 32);
  LODWORD(v218) = 776 * (v191 >> 4) + 531560 - 969 * ((4432371 * (776 * (v191 >> 4) + 531560)) >> 32);
  LODWORD(v74) = *(v47 + v249 % 0x3C9) ^ 0xBD;
  v254 = *(v47 + (776 * (v191 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v191 & 0xF) + 531560)) >> 32))) ^ 0xBD;
  LODWORD(STACK[0x4E8]) = v74 & 0xF;
  v255 = 776 * (v74 & 0xF | (16 * (v254 & 0xF)));
  v256 = v189 ^ (16 * (*(v47 + v214) ^ 0xBD)) ^ (((((*(v47 + v241) ^ 0xBD | ((*(v47 + v239) ^ 0xBD) << 8) ^ ((*(v47 + v238) ^ 0xBD) << 12)) << 8) ^ ((*(v47 + v240) ^ 0xBD) << 12) | *(v47 + v243) ^ 0xBD) << 8) ^ ((*(v47 + v242) ^ 0xBD) << 12) | *(v47 + (776 * (v234 & 0xF ^ 0xD) + 204088 - 969 * ((4432371 * (776 * (v234 & 0xF ^ 0xDu) + 204088)) >> 32))) ^ 0xBD);
  v257 = *(v47 + (v255 + 273152 - 969 * ((4432371 * (v255 + 273152)) >> 32))) ^ 0xBD;
  LOBYTE(v189) = *(v47 + (v255 - 969 * ((4432371 * v255) >> 32)));
  LODWORD(STACK[0x538]) = v256;
  v258 = (v256 & 0x308 ^ 0x308) + (v256 & 0x308);
  v259 = STACK[0x584];
  v260 = 776 * ((v257 + 2126533004 - ((2 * v257) & 0x118)) ^ LODWORD(STACK[0x584]));
  LODWORD(STACK[0x4C4]) = v260;
  v261 = (*(v47 + v260 % 0x3C9) ^ 0xBDu) >> ((v189 & 4 ^ 4) + (v189 & 4));
  v262 = (((v261 - ((2 * v261) & 0x7A) - 67) ^ v189) + 352) * v258;
  v263 = v262 - 969 * ((4432371 * v262) >> 32);
  v264 = ((*(v47 + v245) ^ 0xBD) << 8) ^ ((*(v47 + LODWORD(STACK[0x4EC])) ^ 0xFFFFFFFD) << 12) | *(v47 + v246) ^ 0xBD;
  LODWORD(STACK[0x4E0]) = v264;
  v265 = (v264 << 16) ^ ((*(v47 + LODWORD(STACK[0x4DC])) ^ 0xBD) << 20);
  LODWORD(STACK[0x4C8]) = v265;
  LODWORD(v214) = (v265 | ((*(v47 + v247) ^ 0xBD) << 8)) ^ ((*(v47 + LODWORD(STACK[0x4D0])) ^ 0xBD) << 12);
  v266 = (v214 | v74) ^ (16 * (*(v47 + v248) ^ 0xBD));
  v267 = *(v47 + v251);
  v268 = ((*(v47 + LODWORD(STACK[0x590])) ^ 0xBD) << 8) ^ ((*(v47 + v250) ^ 0xBD) << 12);
  LODWORD(STACK[0x4DC]) = v268;
  v269 = (v268 | *(v47 + v252) ^ 0xBD) ^ (16 * (v267 ^ 0xBD));
  v270 = *(v47 + v217) ^ 0xBD;
  LODWORD(v74) = ((*(v47 + v253) ^ 0xBD) << 8) | (v269 << 16);
  LODWORD(STACK[0x4C0]) = v269;
  LODWORD(v74) = v74 ^ (v270 << 12);
  v271 = *(v47 + v218) ^ ((v74 | v254) >> 4) ^ 0xBD;
  LODWORD(STACK[0x4D0]) = v266;
  LODWORD(v218) = 776 * ((v266 >> 4) | (16 * (v271 & 0xF)));
  LODWORD(v217) = ((v269 & 0x52FDB ^ 0x52FDB) + (v269 & 0x52FDB)) & STACK[0x33C] & (((v271 & 0x6E712C4 ^ 0x6E712C4) + (v271 & 0x6E712C4)) ^ 0xA8AE452F);
  v272 = 776 * (*(v47 + (v218 + 273152 - 969 * ((4432371 * (v218 + 273152)) >> 32))) ^ (16 * (*(v47 + v263) ^ 0xBD)) ^ 0xBD);
  LODWORD(STACK[0x4B4]) = v272;
  v273 = *(v47 + v272 % v217);
  LODWORD(v218) = 776 * ((((v273 >> 4) ^ 0xB) + (~(2 * ((v273 >> 4) ^ 0xB)) | 0xE5) - 66) ^ *(v47 + (v218 - 969 * ((4432371 * v218) >> 32)))) + 273152;
  v274 = 776 * (v271 & 0xF0 | (v266 >> 8) & 0xF);
  v275 = v274 - 969 * ((4432371 * v274) >> 32);
  LODWORD(v218) = 776 * (*(v47 + (v274 + 273152 - 969 * ((4432371 * (v274 + 273152)) >> 32))) ^ (16 * (*(v47 + (v218 - 969 * ((4432371 * v218) >> 32))) ^ 0xBD)) ^ 0xBD);
  LODWORD(STACK[0x4B0]) = v218;
  v276 = (*(v47 + (v218 - 969 * ((4432371 * v218) >> 32))) >> 4) ^ 0xB;
  v277 = 776 * ((v276 - ((2 * v276) & 0xFB) - 67) ^ *(v47 + v275)) + 273152;
  v278 = v277 - 969 * ((4432371 * v277) >> 32);
  LODWORD(v74) = v74 >> 12;
  LODWORD(STACK[0x4B8]) = v214;
  LODWORD(v218) = 776 * ((v214 >> 12) | (16 * (v74 & ((v278 & 0x1F ^ 0x1F) + (v278 & 0x1F)) & 0xFFFFFFEF)));
  v279 = 776 * (*(v47 + (v218 + 273152 - 969 * ((4432371 * (v218 + 273152)) >> 32))) ^ (16 * (*(v47 + v278) ^ 0xBD)) ^ 0xBD);
  LODWORD(STACK[0x4A0]) = v279;
  v280 = *(v47 + (v279 - 969 * ((4432371 * v279) >> 32))) >> 4;
  v281 = 776 * (((v280 ^ 0xB) + ((2 * ((v280 ^ 0xB | 0x7D) ^ v280)) ^ 0x13) - 66) ^ *(v47 + (v218 - 969 * ((4432371 * v218) >> 32)))) + 273152;
  LODWORD(v74) = 776 * (v74 & 0xF0 | WORD1(v214) & 0xF);
  LODWORD(STACK[0x498]) = v74;
  v282 = *(v47 + (v74 + 273152 - 969 * ((4432371 * (v74 + 273152)) >> 32))) ^ (16 * (*(v47 + (v281 - 969 * ((4432371 * v281) >> 32))) ^ 0xBD));
  LODWORD(v74) = ((STACK[0x550] & 0x117C9 ^ 0x441) + (STACK[0x550] & 0x117C9 ^ 0x11388)) & 0x203DB;
  v282 ^= 0xBDu;
  LODWORD(STACK[0x490]) = v282;
  LODWORD(STACK[0x488]) = 776 * v282 % v74;
  LODWORD(v74) = LODWORD(STACK[0x4F0]) - 773695632;
  LODWORD(STACK[0x590]) = v74;
  v283 = STACK[0x4A8];
  LODWORD(v217) = LODWORD(STACK[0x58C]) + LODWORD(STACK[0x4A8]);
  LODWORD(STACK[0x47C]) = v217;
  LODWORD(v74) = v217 - (LODWORD(STACK[0x570]) ^ 0x1E10894A ^ v74);
  LODWORD(STACK[0x5A8]) = v74;
  v284 = (v74 - 1559312464) ^ (v283 + 1559312464);
  LODWORD(STACK[0x470]) = v284;
  LODWORD(v74) = (((v284 ^ 0xDE1E87F6) - 1043405688) ^ ((v284 ^ 0xB648C99B) - 1449612565) ^ ((v284 ^ 0x68564E6D) + 2005282077)) + LODWORD(STACK[0x410]);
  LODWORD(STACK[0x4F0]) = v74;
  v285 = 776 * ((v74 + 971355333) >> 28) + 531560 - 969 * ((4432371 * (776 * ((v74 + 971355333) >> 28) + 531560)) >> 32);
  v286 = 776 * (((v74 + 971355333) >> 24) & 0xF) + 531560;
  v287 = v286 - 969 * ((4432371 * v286) >> 32);
  v288 = (776 - (~((18 - (((v74 + 971355333) >> 20) & 0xF)) | ((((v74 + 971355333) >> 20) & 0xF) + 685)) & 0x1C)) * ((((v74 + 971355333) >> 20) & 0xF) + 685);
  v289 = v288 - 969 * ((4432371 * v288) >> 32);
  v290 = 776 * (((v74 + 971355333) >> 16) & 0xF) + 531560;
  v291 = v290 - 969 * ((4432371 * v290) >> 32);
  LODWORD(STACK[0x4EC]) = v74 + 971355333;
  v292 = 776 * ((v74 - 19259) >> 12) + 531560;
  v293 = v292 - 969 * ((4432371 * v292) >> 32);
  v294 = 776 * (((v74 + 971355333) >> 8) & 0xF) + 531560;
  v295 = v294 - 969 * ((4432371 * v294) >> 32);
  v296 = 776 * ((v74 - 59) >> 4) + 531560;
  v297 = v296 - 969 * ((4432371 * v296) >> 32);
  v298 = 776 * ((v74 + 971355333) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v74 + 971355333) & 0xFu) + 531560)) >> 32);
  v299 = STACK[0x57C];
  v300 = LODWORD(STACK[0x57C]) - 2076419802 + LODWORD(STACK[0x588]);
  LODWORD(STACK[0x570]) = v300;
  LODWORD(v74) = LODWORD(STACK[0x528]) - 534884191;
  LODWORD(v218) = LODWORD(STACK[0x480]) - 773695632;
  LODWORD(STACK[0x58C]) = v218;
  LODWORD(v218) = v300 - (v74 ^ 0x1E10894A ^ v218);
  LODWORD(STACK[0x588]) = v218;
  LODWORD(v217) = (v218 - 1559312464) ^ (v299 + 1559312464);
  LODWORD(STACK[0x528]) = v217;
  LODWORD(v218) = LODWORD(STACK[0x428]) - (((v217 ^ 0xAA30AEBF) + 871017758) ^ ((v217 ^ 0x25D3E4C5) - 1140201624) ^ ((v217 ^ 0x8FE34A7A) + 372853209)) + 534459963;
  v301 = 776 * (v218 >> 28) + 531560 - 969 * ((4432371 * (776 * (v218 >> 28) + 531560)) >> 32);
  v302 = 776 * (BYTE3(v218) & 0xF) + 531560 - 969 * ((4432371 * (776 * (BYTE3(v218) & 0xF) + 531560)) >> 32);
  v303 = 776 * ((v218 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v218 >> 20) & 0xF) + 531560)) >> 32);
  LODWORD(v74) = 776 * ((v303 & 0x2AD) + (WORD1(v218) & 0xF) + (v303 & 0x2AD ^ 0x2AD));
  v304 = v74 - 969 * ((4432371 * v74) >> 32);
  LODWORD(v74) = 776 * ((LOWORD(STACK[0x428]) - (((v217 ^ 0xAEBF) - 21218) ^ ((v217 ^ 0xE4C5) - 6296) ^ ((v217 ^ 0x4A7A) + 18905)) + 13883) >> 12) + 531560;
  v305 = v74 - 969 * ((4432371 * v74) >> 32);
  v306 = 776 * ((v218 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v218 >> 8) & 0xF) + 531560)) >> 32);
  LODWORD(v74) = 776 * ((LOBYTE(STACK[0x428]) - (((v217 ^ 0xBF) + 30) ^ ((v217 ^ 0xC5) + 104) ^ ((v217 ^ 0x7A) - 39)) + 59) >> 4) + 531560;
  v307 = *(v47 + v298) ^ 0xBD;
  v308 = *(v47 + (776 * (v218 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v218 & 0xF) + 531560)) >> 32))) ^ 0xBD;
  v309 = 776 * (v307 & 0xF | (16 * (v308 & 0xF)));
  LODWORD(v218) = *(v47 + (v309 + 273152 - 969 * ((4432371 * (v309 + 273152)) >> 32))) ^ 0xBD;
  v310 = 776 * ((v218 + 2126533004 - ((2 * v218) & 0x118)) ^ v259);
  LODWORD(v218) = (*(v47 + v310 % 0x3C9) >> 4) ^ 0xB;
  LOBYTE(v259) = *(v47 + (v309 - 969 * ((4432371 * v309) >> 32)));
  v311 = 776 * ((v218 - ((2 * v218) & 0xFB) - 67) ^ v259) + 273152;
  v312 = ((((*(v47 + v287) ^ 0xBD) << 8) ^ ((*(v47 + v285) ^ 0xBD) << 12) | *(v47 + v291) ^ 0xBD) << 8) ^ ((*(v47 + v289) ^ 0xBD) << 12);
  LODWORD(v218) = v312 | *(v47 + v295) ^ 0xBD;
  LODWORD(v214) = (v218 << 8) ^ ((*(v47 + v293) ^ 0xBD) << 12);
  v313 = (v214 | v307) ^ (16 * (*(v47 + v297) ^ 0xBD));
  v314 = ((*(v47 + v302) ^ 0xBD) << 8) ^ ((*(v47 + v301) ^ 0xBD) << 12);
  v315 = ((v314 | *(v47 + v304) ^ 0xBD) << 8) ^ ((*(v47 + v303) ^ 0xBD) << 12);
  v316 = ((v315 | *(v47 + v306) ^ 0xBD) << 8) ^ ((*(v47 + v305) ^ 0xBD) << 12);
  LOBYTE(v297) = *(v47 + (v74 - 969 * ((4432371 * v74) >> 32))) ^ ((v316 | v308) >> 4) ^ 0xBD;
  v317 = 776 * ((v313 >> 4) ^ ((v297 & 0xF) << ((v259 & 4 ^ 4) + (v259 & 4))));
  v318 = v317 % 0x3C9;
  v319 = 776 * (*(v47 + (v317 + 273152) % 0x3C9) ^ (16 * (*(v47 + (v311 - 969 * ((4432371 * v311) >> 32))) ^ 0xBD)) ^ 0xBD);
  v320 = *(v47 + (v319 - 969 * ((4432371 * v319) >> 32))) >> 4;
  v321 = 776 * (((v320 ^ 0xB) + ((2 * ((v320 ^ 0xB | 0x7D) ^ v320)) ^ 0x13) - 66) ^ *(v47 + v318)) + 273152;
  v322 = 776 * (v297 & 0xF0 | (v313 >> 8) & 0xF);
  v323 = v322 - 969 * ((4432371 * v322) >> 32);
  v324 = 776 * (*(v47 + (v322 + 273152 - 969 * ((4432371 * (v322 + 273152)) >> 32))) ^ (16 * (*(v47 + (v321 - 969 * ((4432371 * v321) >> 32))) ^ 0xBD)) ^ 0xBD);
  v325 = (*(v47 + (v324 - 969 * ((4432371 * v324) >> 32))) >> 4) ^ 0xB;
  v326 = 776 * ((v325 - ((2 * v325) & 0xFB) - 67) ^ *(v47 + v323)) + 273152;
  v327 = 776 * ((v316 >> 8) & 0xF0 | (v214 >> 12));
  v328 = v327 - 969 * ((4432371 * v327) >> 32);
  v329 = 776 * (*(v47 + (v327 + 273152 - 969 * ((4432371 * (v327 + 273152)) >> 32))) ^ (16 * (*(v47 + (v326 - 969 * ((4432371 * v326) >> 32))) ^ 0xBD)) ^ 0xBD);
  v330 = (*(v47 + (v329 - 969 * ((4432371 * v329) >> 32))) >> 4) ^ 0xB;
  v331 = 776 * ((v330 - ((2 * v330) & 0xFB) - 67) ^ *(v47 + v328)) + 273152;
  v332 = 776 * ((v316 >> 12) & 0xF0 | WORD1(v214) & 0xF);
  v333 = 776 * (*(v47 + (v332 + 273152 - 969 * ((4432371 * (v332 + 273152)) >> 32))) ^ (16 * (*(v47 + (v331 - 969 * ((4432371 * v331) >> 32))) ^ 0xBD)) ^ 0xBD);
  v334 = *(v47 + (v332 - 969 * ((4432371 * v332) >> 32)));
  v335 = (*(v47 + (v333 - 969 * ((4432371 * v333) >> 32))) >> 4) ^ 0xB;
  v336 = 776 * ((v335 - ((2 * v335) & 0xFB) - 67) ^ v334) + 273152;
  v337 = 776 * ((v315 >> 8) & 0xF0 | (v312 >> 12));
  v338 = v337 - 969 * ((4432371 * v337) >> 32);
  v339 = 776 * (*(v47 + (v337 + 273152 - 969 * ((4432371 * (v337 + 273152)) >> 32))) ^ (16 * (*(v47 + (v336 - 969 * ((4432371 * v336) >> 32))) ^ 0xBD)) ^ 0xBD);
  v340 = v339 + 273152 - 969 * ((4432371 * (v339 + 273152)) >> 32);
  v341 = *(v47 + (v339 - 969 * ((4432371 * v339) >> 32))) >> 4;
  v342 = 776 * (((v341 ^ 0xB) + ((2 * ((v341 ^ 0xB | 0x7D) ^ v341)) ^ 0x13) - 66) ^ *(v47 + v338)) + 273152;
  v343 = v342 - 969 * ((4432371 * v342) >> 32);
  LODWORD(v217) = LODWORD(STACK[0x590]) ^ 0x7C4C601E;
  LODWORD(STACK[0x4A8]) = v217;
  v344 = STACK[0x470];
  v345 = LODWORD(STACK[0x470]) ^ 0xE02F9C8E ^ (v217 + LODWORD(STACK[0x47C]) - 2 * ((v217 + LODWORD(STACK[0x47C]) + 1559312464) & 0x602F9C8F ^ (v217 + LODWORD(STACK[0x47C])) & 1) + 1025561822);
  v346 = (181 * ((v343 & 0x33 ^ 0x33333333) + (v343 & 0x33))) & BYTE2(v218) ^ (v315 >> 12) & 0xF0;
  LODWORD(STACK[0x47C]) = v345;
  LODWORD(v217) = 776 * (v346 + (((v345 + 342) | (169 - v345)) & 0x160));
  v347 = 776 * (*(v47 + (v217 - 969 * ((4432371 * v217) >> 32))) ^ (16 * (*(v47 + v343) ^ 0xBD)) ^ 0xBD);
  LOBYTE(v340) = *(v47 + v340) ^ 0xBD;
  LOBYTE(v217) = *(v47 + (v347 + 273152 - 969 * ((4432371 * (v347 + 273152)) >> 32))) ^ 0xBD;
  v348 = 776 * ((v340 ^ (16 * v217)) & 0xF0 | (v218 << 8 >> 24) & 0xF);
  v349 = (v348 + 550184) % ((v348 + 550184) & 0xC8 ^ (215 - v348) & 0xC9 | ((BYTE2(v218) & 0xD ^ 0x30D) + (BYTE2(v218) & 0xD)) & 0xFFFFFFFB);
  v350 = v329 + 273152 - 969 * ((4432371 * (v329 + 273152)) >> 32);
  v351 = 776 * v346 - 969 * ((4432371 * (776 * v346)) >> 32);
  v352 = (*(v47 + (v347 - 969 * ((4432371 * v347) >> 32))) >> 4) ^ 0xB;
  v353 = 776 * ((v352 - ((2 * v352) & 0xFB) - 67) ^ *(v47 + v351)) + 273152;
  v354 = 776 * ((v314 >> 8) & 0xF0 | (v218 >> 20) & 0xF) + 273152;
  v355 = 776 * (*(v47 + (v354 - 969 * ((4432371 * v354) >> 32))) ^ (16 * (*(v47 + (v353 - 969 * ((4432371 * v353) >> 32))) ^ 0xBD)) ^ 0xBD) + 273152;
  LOBYTE(v353) = *(v47 + (v310 + 273152) % 0x3C9) ^ 0xBD;
  LODWORD(v74) = 776 * (v307 & 0xF | (16 * (v353 & 0xF))) + 550184;
  LOBYTE(v319) = *(v47 + (v319 + 273152 - 969 * ((4432371 * (v319 + 273152)) >> 32))) ^ 0xBD;
  v356 = 776 * ((v353 ^ (16 * v319)) & 0xF0 | (v313 >> 4)) + 550184;
  LOBYTE(v324) = *(v47 + (v324 + 273152 - 969 * ((4432371 * (v324 + 273152)) >> 32))) ^ 0xBD;
  v357 = 776 * ((v319 ^ (16 * v324)) & 0xF0 | (v313 >> 8) & 0xF) + 550184;
  LOBYTE(v350) = *(v47 + v350) ^ 0xBD;
  v358 = 776 * ((v324 ^ (16 * v350)) & 0xF0 | (v214 >> 12)) + 550184;
  LOBYTE(v310) = *(v47 + (v333 + 273152 - 969 * ((4432371 * (v333 + 273152)) >> 32))) ^ 0xBD;
  v359 = 776 * ((v350 ^ (16 * v310)) & 0xF0 | WORD1(v214) & 0xF) + 550184;
  LODWORD(v214) = v359 - 969 * ((4432371 * v359) >> 32);
  v360 = (v310 ^ (16 * v340)) & 0xF0 | (v312 >> 12);
  v361 = (((314 - v360) & 0x108) + ((v360 + 709) & 0x308)) * (v360 + 709);
  v362 = v361 - 969 * ((4432371 * v361) >> 32);
  LODWORD(v218) = 776 * ((v217 ^ (16 * (*(v47 + (v355 - 969 * ((4432371 * v355) >> 32))) ^ 0xFD))) & 0xF0 | (v218 >> 20) & 0xF) + 550184;
  v363 = *(v47 + (v74 - 969 * ((4432371 * v74) >> 32)));
  LODWORD(v217) = v218 - 969 * ((4432371 * v218) >> 32);
  LODWORD(v74) = v363 ^ (16 * (*(v47 + (v356 - 969 * ((4432371 * v356) >> 32))) ^ 0xBD)) ^ 0xBD;
  LODWORD(v218) = v74 ^ ((*(v47 + (v357 - 969 * ((4432371 * v357) >> 32))) ^ 0xBD) << 8);
  v364 = v218 ^ ((*(v47 + (v358 - 969 * ((4432371 * v358) >> 32))) ^ 0xBD) << 12);
  v365 = v364 ^ ((*(v47 + v214) ^ 0xBD) << 16);
  v366 = v365 ^ ((*(v47 + v362) ^ 0xBD) << 20);
  v367 = v366 ^ ((*(v47 + v349) ^ 0xBD) << 24);
  LODWORD(v217) = 776 * ((v367 ^ ((*(v47 + v217) ^ 0xFFFFFFFD) << 28)) >> 28) + 204088;
  v368 = v217 - 969 * ((4432371 * v217) >> 32);
  LODWORD(v214) = 776 * (HIBYTE(v367) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v367) & 0xF) + 204088)) >> 32);
  v369 = 776 * (v364 >> 12) + 204088 - 969 * ((4432371 * (776 * (v364 >> 12) + 204088)) >> 32);
  v370 = 776 * ((v218 >> 8) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v218 >> 8) & 0xF) + 204088)) >> 32);
  v371 = 776 * (v74 >> 4) + 204088 - 969 * ((4432371 * (776 * (v74 >> 4) + 204088)) >> 32);
  v372 = 776 * (v363 & 0xF ^ 0xD) + 204088 - 969 * ((4432371 * (776 * (v363 & 0xF ^ 0xDu) + 204088)) >> 32);
  LODWORD(v74) = v345 + LODWORD(STACK[0x5A8]);
  LODWORD(STACK[0x480]) = v74;
  LODWORD(v74) = (((v344 ^ 0x396FD92F) + 650099295) ^ ((v344 ^ 0x37F13D49) + 673275449) ^ ((v344 ^ 0xE9EE466) + 290359064)) - v74;
  LODWORD(STACK[0x57C]) = v74;
  v373 = LODWORD(STACK[0x418]) + v74 + 1423965420;
  v374 = 776 * (v373 >> 28) + 531560 - 969 * ((4432371 * (776 * (v373 >> 28) + 531560)) >> 32);
  LODWORD(v218) = 776 * (HIBYTE(v373) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v373) & 0xF) + 531560)) >> 32);
  v375 = (776 * ((((v218 & 0x53 ^ 0x7D1AFC53) + (v218 & 0x53)) ^ 0x7D1AFEFE) + ((v373 >> 20) & 0xF))) % 0x3C9;
  LODWORD(v217) = 776 * (HIWORD(v373) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v373) & 0xF) + 531560)) >> 32);
  v376 = 776 * ((LOWORD(STACK[0x418]) + v74 - 788) >> 12) + 531560 - 969 * ((4432371 * (776 * ((LOWORD(STACK[0x418]) + v74 - 788) >> 12) + 531560)) >> 32);
  LODWORD(v74) = (((((((*(v47 + v214) ^ 0xBD) << 8) ^ ((*(v47 + v368) ^ 0xBD) << 12) | *(v47 + (776 * (HIWORD(v365) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIWORD(v365) & 0xF) + 204088)) >> 32))) ^ 0xBD) << 8) ^ ((*(v47 + (776 * ((v366 >> 20) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v366 >> 20) & 0xF) + 204088)) >> 32))) ^ 0xBD) << 12) | *(v47 + v370) ^ 0xBD) << 8) ^ ((*(v47 + v369) ^ 0xBD) << 12) | *(v47 + v372) ^ 0xBD) ^ (16 * (*(v47 + v371) ^ 0xBD));
  LODWORD(STACK[0x46C]) = v74;
  LODWORD(v74) = ((v74 & 0x308 ^ 0x308) + (v74 & 0x308)) * (((v373 >> 8) & 0xF) + 685);
  v377 = v74 - 969 * ((4432371 * v74) >> 32);
  LODWORD(STACK[0x470]) = v373;
  v378 = 776 * (v373 >> 4) + 531560 - 969 * ((4432371 * (776 * (v373 >> 4) + 531560)) >> 32);
  v379 = LODWORD(STACK[0x58C]) ^ 0x7C4C601E;
  LODWORD(STACK[0x45C]) = v379;
  LODWORD(STACK[0x460]) = v379 + 1559312464;
  v380 = STACK[0x528];
  v381 = LODWORD(STACK[0x528]) ^ (LODWORD(STACK[0x570]) + v379 + 1559312464);
  LODWORD(STACK[0x458]) = v381;
  v382 = (((v380 ^ 0x313F5759) - 1461365508) ^ ((v380 ^ 0xCABA8BA4) + 1398835207) ^ ((v380 ^ 0xFB85DCFD) + 1650450272)) - LODWORD(STACK[0x588]) - (((v381 ^ 0x6CE66503) + 243617087) ^ ((v381 ^ 0xD9C88F2B) - 1146378473) ^ ((v381 ^ 0xB52EEA28) - 682769898));
  LODWORD(STACK[0x570]) = v382;
  LODWORD(v74) = LODWORD(STACK[0x41C]) - v382 + 566946018;
  v383 = 776 * (v74 >> 28) + 531560 - 969 * ((4432371 * (776 * (v74 >> 28) + 531560)) >> 32);
  v384 = 776 * (BYTE3(v74) & 0xF) + 531560 - 969 * ((4432371 * (776 * (BYTE3(v74) & 0xF) + 531560)) >> 32);
  v385 = 776 * ((v74 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v74 >> 20) & 0xF) + 531560)) >> 32);
  v386 = 776 * (WORD1(v74) & 0xF) + 531560 - 969 * ((4432371 * (776 * (WORD1(v74) & 0xF) + 531560)) >> 32);
  v387 = 776 * ((LOWORD(STACK[0x41C]) - v382 - 5918) >> 12) + 531560;
  v388 = v387 - 969 * ((4432371 * v387) >> 32);
  v389 = 776 * ((v74 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v74 >> 8) & 0xF) + 531560)) >> 32);
  v390 = 776 * (v74 >> 4) + 531560 - 969 * ((4432371 * (776 * (v74 >> 4) + 531560)) >> 32);
  v391 = *(v47 + (776 * (v373 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v373 & 0xF) + 531560)) >> 32))) ^ 0xBD;
  v392 = *(v47 + (776 * (v74 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v74 & 0xF) + 531560)) >> 32))) ^ 0xBD;
  LODWORD(STACK[0x454]) = v391 & 0xF;
  LODWORD(v74) = 776 * (v391 & 0xF | (16 * (v392 & 0xF)));
  v393 = *(v47 + (v74 + 273152 - 969 * ((4432371 * (v74 + 273152)) >> 32))) ^ 0xBD;
  LODWORD(v214) = 776 * ((v393 + 2126533004 - ((2 * v393) & 0x118)) ^ LODWORD(STACK[0x584]));
  LODWORD(STACK[0x428]) = v214;
  v394 = (*(v47 + v214 % 0x3C9) >> 4) ^ 0xB;
  LODWORD(v74) = 776 * ((v394 - ((2 * v394) & 0xFB) - 67) ^ *(v47 + (v74 - 969 * ((4432371 * v74) >> 32)))) + 273152;
  v395 = v74 - 969 * ((4432371 * v74) >> 32);
  v396 = ((((*(v47 + v218) ^ 0xBD) << 8) ^ ((*(v47 + v374) ^ 0xBD) << 12) | *(v47 + v217) ^ 0xBD) << 8) ^ ((*(v47 + v375) ^ 0xBD) << 12);
  LODWORD(STACK[0x438]) = v396;
  v397 = *(v47 + v376) ^ 0xBD;
  LODWORD(v218) = *(v47 + v378);
  LODWORD(v74) = v396 | *(v47 + v377) ^ 0xBD;
  LODWORD(STACK[0x450]) = v74;
  v398 = (v74 << 8) ^ (v397 << 12);
  v399 = (v398 | v391) ^ (16 * (v218 ^ 0xBD));
  LODWORD(v218) = (*(v47 + v384) ^ (16 * (*(v47 + v383) ^ 0xBD)) ^ 0xBD) << ((*(v47 + v383) & 8 ^ 8) + (*(v47 + v383) & 8));
  LODWORD(STACK[0x440]) = v218;
  v400 = ((*(v47 + v386) ^ 0xBD ^ v218) << 8) ^ ((*(v47 + v385) ^ 0xBD) << 12);
  v401 = ((v400 | *(v47 + v389) ^ 0xBD) << 8) ^ ((*(v47 + v388) ^ 0xBD) << 12);
  LOBYTE(v397) = *(v47 + v390) ^ ((v401 | v392) >> 4) ^ 0xBD;
  LODWORD(v74) = v399 >> 4;
  LODWORD(STACK[0x44C]) = v74;
  LODWORD(v217) = v399;
  LODWORD(STACK[0x43C]) = v399;
  LODWORD(v74) = 776 * (v74 & 0xFFFFFF0F | (16 * (v397 & 0xF)));
  v402 = 776 * (*(v47 + (v74 + 273152 - 969 * ((4432371 * (v74 + 273152)) >> 32))) ^ (16 * (*(v47 + v395) ^ 0xBD)) ^ 0xBD);
  v403 = *(v47 + (v402 - 969 * ((4432371 * v402) >> 32))) >> 4;
  LODWORD(v74) = 776 * (((v403 ^ 0xB) + ((2 * ((v403 ^ 0xB | 0x7D) ^ v403)) ^ 0x13) - 66) ^ *(v47 + (v74 - 969 * ((4432371 * v74) >> 32)))) + 273152;
  v404 = 776 * (v397 & 0xF0 | (v217 >> 8) & 0xF);
  LODWORD(v74) = 776 * (*(v47 + (v404 + 273152 - 969 * ((4432371 * (v404 + 273152)) >> 32))) ^ (16 * (*(v47 + (v74 - 969 * ((4432371 * v74) >> 32))) ^ 0xBD)) ^ 0xBD);
  v405 = v74 + 273152 - 969 * ((4432371 * (v74 + 273152)) >> 32);
  LODWORD(v74) = (*(v47 + (v74 - 969 * ((4432371 * v74) >> 32))) >> 4) ^ 0xB;
  v406 = 776 * ((v74 - ((2 * v74) & 0xFB) - 67) ^ *(v47 + (v404 - 969 * ((4432371 * v404) >> 32)))) + 273152;
  v407 = 776 * ((v401 >> 8) & 0xF0 | (v398 >> 12));
  v408 = 776 * (*(v47 + (v407 + 273152 - 969 * ((4432371 * (v407 + 273152)) >> 32))) ^ (16 * (*(v47 + (v406 - 969 * ((4432371 * v406) >> 32))) ^ 0xBD)) ^ 0xBD);
  v409 = *(v47 + v405);
  LOBYTE(v74) = v409 ^ 0xBD;
  LODWORD(STACK[0x414]) = v409 ^ 0xBD;
  v410 = *(v47 + (v408 + 273152 - 969 * ((4432371 * (v408 + 273152)) >> 32))) ^ 0xBD;
  LODWORD(STACK[0x418]) = v410;
  v411 = 776 * ((v74 ^ (16 * v410)) & 0xF0 | (v398 >> 12));
  LODWORD(STACK[0x41C]) = (v411 + 550184) % ((727 - v411) & 0x3C9 | (v411 + 550184) & 0x3C8u);
  v412 = 776 * ((LODWORD(STACK[0x4FC]) >> 8) & 0xF0 | HIWORD(LODWORD(STACK[0x4F8])) & 0xF) + 550184;
  v413 = (LODWORD(STACK[0x4FC]) >> 12) & 0xF0 | (LODWORD(STACK[0x520]) >> 20) & 0xF;
  v414 = ((v413 + 709) & 0x308 ^ (314 - v413) & 0x108) * (v413 + 709);
  v415 = ((*(v47 + (v414 - 969 * ((4432371 * v414) >> 32))) ^ 0xFFFFFFFD) << 28) ^ ((*(v47 + (v412 - 969 * ((4432371 * v412) >> 32))) ^ 0xBD) << 24) ^ LODWORD(STACK[0x4F4]);
  LODWORD(STACK[0x4FC]) = 776 * (v415 >> 28) + 204088 - 969 * ((4432371 * (776 * (v415 >> 28) + 204088)) >> 32);
  LODWORD(STACK[0x4F8]) = 776 * (HIBYTE(v415) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v415) & 0xF) + 204088)) >> 32);
  v416 = 776 * (HIWORD(LODWORD(STACK[0x500])) & 0xF) + 204088;
  LODWORD(STACK[0x500]) = v416 - 969 * ((4432371 * v416) >> 32);
  v417 = 776 * (LODWORD(STACK[0x504]) >> 12) + 204088;
  LODWORD(STACK[0x504]) = v417 - 969 * ((4432371 * v417) >> 32);
  v418 = 776 * ((LODWORD(STACK[0x508]) >> 8) & 0xF) + 204088;
  LODWORD(STACK[0x508]) = v418 - 969 * ((4432371 * v418) >> 32);
  v419 = 776 * (LODWORD(STACK[0x510]) >> 4) + 204088;
  LODWORD(STACK[0x510]) = v419 - 969 * ((4432371 * v419) >> 32);
  v420 = 776 * (STACK[0x518] & 0xF ^ 0xD) + 204088;
  LODWORD(STACK[0x4F4]) = v420 - 969 * ((4432371 * v420) >> 32);
  v421 = (((LODWORD(STACK[0x490]) + 352) | (671 - LODWORD(STACK[0x490]))) & 0x308) * (LODWORD(STACK[0x490]) + 352);
  v422 = *(v47 + LODWORD(STACK[0x488])) >> 4;
  v423 = 776 * (((v422 ^ 0xB) + ((2 * ((v422 ^ 0xB | 0x7D) ^ v422)) ^ 0x13) - 66) ^ *(v47 + (LODWORD(STACK[0x498]) - 969 * ((4432371 * LODWORD(STACK[0x498])) >> 32)))) + 273152;
  v424 = v423 - 969 * ((4432371 * v423) >> 32);
  v425 = 776 * (STACK[0x4C0] & 0xF0 | (LODWORD(STACK[0x4C8]) >> 20) & 0xF);
  v426 = 776 * (*(v47 + (v425 + 273152 - 969 * ((4432371 * (v425 + 273152)) >> 32))) ^ 0xBD ^ ((*(v47 + v424) ^ 0xBD) << ((v424 & 4 ^ 4) + (v424 & 4))));
  v427 = (v426 + 273152) % 0x3C9;
  v428 = (*(v47 + v426 % 0x3C9) >> 4) ^ 0xB;
  v429 = 776 * ((v428 - ((2 * v428) & 0xFB) - 67) ^ *(v47 + (v425 - 969 * ((4432371 * v425) >> 32)))) + 273152;
  v430 = 776 * ((LODWORD(STACK[0x4C0]) >> 4) & 0xF0 | HIBYTE(LODWORD(STACK[0x4C8])) & 0xF);
  v431 = 776 * (*(v47 + (v430 + 273152 - 969 * ((4432371 * (v430 + 273152)) >> 32))) ^ (16 * (*(v47 + (v429 - 969 * ((4432371 * v429) >> 32))) ^ 0xBD)) ^ 0xBD);
  v432 = v431 + 273152 - 969 * ((4432371 * (v431 + 273152)) >> 32);
  v433 = *(v47 + (v430 - 969 * ((4432371 * v430) >> 32)));
  HIDWORD(v434) = v433 ^ 0xD;
  LODWORD(v434) = (v433 ^ 0xFFFFFFBF) << 24;
  v435 = (*(v47 + (v431 - 969 * ((4432371 * v431) >> 32))) ^ 0xBDu) >> ((v433 & 4 ^ 4) + (v433 & 4));
  v436 = ((v435 >> 4) | (16 * v435)) ^ (v434 >> 28);
  v437 = 776 * ((v436 >> 4) | (16 * v436)) + 273152;
  v438 = 776 * ((LODWORD(STACK[0x4DC]) >> 8) & 0xF0 | (LODWORD(STACK[0x4E0]) >> 12)) + 273152;
  v439 = 776 * (*(v47 + (v438 - 969 * ((4432371 * v438) >> 32))) ^ (16 * (*(v47 + (v437 - 969 * ((4432371 * v437) >> 32))) ^ 0xBD)) ^ 0xBD) + 273152;
  v440 = *(v47 + (LODWORD(STACK[0x4C4]) + 273152) % 0x3C9u) ^ 0xBD;
  v441 = 776 * (STACK[0x4E8] & 0xFFFFFF0F | (16 * (v440 & 0xF))) + 550184;
  v442 = v441 - 969 * ((4432371 * v441) >> 32);
  v443 = v440 ^ (16 * (*(v47 + (LODWORD(STACK[0x4B4]) + 273152 - 969 * ((4432371 * (LODWORD(STACK[0x4B4]) + 273152)) >> 32))) ^ 0xBD));
  v444 = 776 * (v443 & 0xF0 | (LODWORD(STACK[0x4D0]) >> 4)) + 550184;
  v445 = ((*(v47 + (LODWORD(STACK[0x4A0]) + 273152 - 969 * ((4432371 * (LODWORD(STACK[0x4A0]) + 273152)) >> 32))) ^ 0xBD) << 12) ^ ((*(v47 + (LODWORD(STACK[0x4B0]) + 273152 - 969 * ((4432371 * (LODWORD(STACK[0x4B0]) + 273152)) >> 32))) ^ 0xBD) << 8);
  v446 = v445 ^ v443;
  v447 = 776 * ((v446 >> 4) & 0xF0 | (LODWORD(STACK[0x4D0]) >> 8) & 0xF) + 550184;
  v448 = 776 * ((v445 >> 8) & 0xF0 | (LODWORD(STACK[0x4B8]) >> 12)) + 550184;
  v449 = v446 ^ ((*(v47 + (v421 - 969 * ((4432371 * v421) >> 32))) ^ 0xBD) << 16);
  v450 = 776 * ((v449 >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x4B8])) & 0xF) + 550184;
  v451 = v449 ^ ((*(v47 + v427) ^ 0xBD) << 20);
  v452 = 776 * (HIWORD(v451) & 0xF0 | (LODWORD(STACK[0x4C8]) >> 20) & 0xF) + 550184;
  v453 = v451 ^ ((*(v47 + v432) ^ 0xBD) << 24);
  v454 = 776 * ((v453 >> 20) & 0xF0 | HIBYTE(LODWORD(STACK[0x4C8])) & 0xF) + 550184;
  v455 = 776 * (((v453 ^ ((*(v47 + (v439 - 969 * ((4432371 * v439) >> 32))) ^ 0xFFFFFFFD) << 28)) >> 24) & 0xF0 | (LODWORD(STACK[0x4E0]) >> 12)) + 550184;
  v456 = *(v47 + v442);
  v457 = v456 ^ (16 * (*(v47 + (v444 - 969 * ((4432371 * v444) >> 32))) ^ 0xBD)) ^ 0xBD;
  v458 = v457 ^ ((*(v47 + (v447 - 969 * ((4432371 * v447) >> 32))) ^ 0xBD) << 8);
  v459 = v458 ^ ((*(v47 + (v448 - 969 * ((4432371 * v448) >> 32))) ^ 0xBD) << 12);
  v460 = v459 ^ ((*(v47 + (v450 - 969 * ((4432371 * v450) >> 32))) ^ 0xBD) << 16);
  v461 = v460 ^ ((*(v47 + (v452 - 969 * ((4432371 * v452) >> 32))) ^ 0xBD) << 20);
  v462 = v461 ^ ((*(v47 + (v454 - 969 * ((4432371 * v454) >> 32))) ^ 0xBD) << 24);
  v463 = 776 * ((v462 ^ ((*(v47 + (v455 - 969 * ((4432371 * v455) >> 32))) ^ 0xFFFFFFFD) << 28)) >> 28) + 204088;
  LODWORD(STACK[0x4E0]) = v463 - 969 * ((4432371 * v463) >> 32);
  LODWORD(STACK[0x4DC]) = 776 * (HIBYTE(v462) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v462) & 0xF) + 204088)) >> 32);
  LODWORD(STACK[0x4D0]) = 776 * ((v461 >> 20) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v461 >> 20) & 0xF) + 204088)) >> 32);
  LODWORD(STACK[0x4C4]) = 776 * (HIWORD(v460) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIWORD(v460) & 0xF) + 204088)) >> 32);
  LODWORD(STACK[0x4C8]) = 776 * (v459 >> 12) + 204088 - 969 * ((4432371 * (776 * (v459 >> 12) + 204088)) >> 32);
  LODWORD(STACK[0x4C0]) = 776 * ((v458 >> 8) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v458 >> 8) & 0xF) + 204088)) >> 32);
  LODWORD(STACK[0x528]) = 776 * (v457 >> 4) + 204088 - 969 * ((4432371 * (776 * (v457 >> 4) + 204088)) >> 32);
  LODWORD(STACK[0x4B8]) = 776 * (v456 & 0xF ^ 0xD) + 204088 - 969 * ((4432371 * (776 * (v456 & 0xF ^ 0xDu) + 204088)) >> 32);
  LODWORD(v74) = (*(v47 + (v408 - 969 * ((4432371 * v408) >> 32))) >> 4) ^ 0xB;
  v464 = 776 * ((v74 - ((2 * v74) & 0xFB) - 67) ^ *(v47 + (v407 - 969 * ((4432371 * v407) >> 32)))) + 273152;
  LODWORD(v74) = 776 * ((v401 >> 12) & 0xF0 | HIWORD(v398) & 0xF);
  v465 = 776 * (*(v47 + (v74 + 273152 - 969 * ((4432371 * (v74 + 273152)) >> 32))) ^ (16 * (*(v47 + (v464 - 969 * ((4432371 * v464) >> 32))) ^ 0xBD)) ^ 0xBD);
  v466 = v465 + 273152 - 969 * ((4432371 * (v465 + 273152)) >> 32);
  v467 = *(v47 + (v465 - 969 * ((4432371 * v465) >> 32))) >> 4;
  LODWORD(v74) = 776 * (((v467 ^ 0xB) + ((2 * ((v467 ^ 0xB | 0x7D) ^ v467)) ^ 0x13) - 66) ^ *(v47 + (v74 - 969 * ((4432371 * v74) >> 32)))) + 273152;
  v468 = 776 * ((v400 >> 8) & 0xF0 | (LODWORD(STACK[0x438]) >> 12));
  v469 = v468 - 969 * ((4432371 * v468) >> 32);
  LODWORD(v74) = 776 * (*(v47 + (v468 + 273152 - 969 * ((4432371 * (v468 + 273152)) >> 32))) ^ (16 * (*(v47 + (v74 - 969 * ((4432371 * v74) >> 32))) ^ 0xBD)) ^ 0xBD);
  v470 = v74 + 273152 - 969 * ((4432371 * (v74 + 273152)) >> 32);
  LODWORD(v74) = (*(v47 + (v74 - 969 * ((4432371 * v74) >> 32))) >> 4) ^ 0xB;
  LODWORD(v74) = 776 * ((v74 - ((2 * v74) & 0xFB) - 67) ^ *(v47 + v469)) + 273152;
  v471 = 776 * ((v400 >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x438])) & 0xF);
  v472 = v471 - 969 * ((4432371 * v471) >> 32);
  LODWORD(v74) = 776 * (*(v47 + (v471 + 273152 - 969 * ((4432371 * (v471 + 273152)) >> 32))) ^ (16 * (*(v47 + (v74 - 969 * ((4432371 * v74) >> 32))) ^ 0xBD)) ^ 0xBD);
  v473 = v74 + 273152 - 969 * ((4432371 * (v74 + 273152)) >> 32);
  LODWORD(v74) = (*(v47 + (v74 - 969 * ((4432371 * v74) >> 32))) >> 4) ^ 0xB;
  LODWORD(v74) = 776 * ((v74 - ((2 * v74) & 0xFB) - 67) ^ *(v47 + v472)) + 273152;
  v474 = 776 * ((LODWORD(STACK[0x440]) >> 8) & 0xF0 | (LODWORD(STACK[0x450]) >> 20) & 0xF) + 273152;
  LODWORD(v74) = 776 * (*(v47 + (v474 - 969 * ((4432371 * v474) >> 32))) ^ (16 * (*(v47 + (v74 - 969 * ((4432371 * v74) >> 32))) ^ 0xBD)) ^ 0xBD) + 273152;
  v475 = v74 - 969 * ((4432371 * v74) >> 32);
  LODWORD(v74) = *(v47 + (LODWORD(STACK[0x428]) + 273152) % 0x3C9u) ^ 0xBD;
  v476 = 776 * (STACK[0x454] & 0xFFFFFF0F | (16 * (v74 & 0xF))) + 550184;
  LOBYTE(v214) = *(v47 + (v402 + 273152 - 969 * ((4432371 * (v402 + 273152)) >> 32))) ^ 0xBD;
  LODWORD(v74) = v214 & 0xF ^ (v74 >> 4);
  LODWORD(v218) = 776 * (LODWORD(STACK[0x44C]) | (16 * v74)) + 550184;
  LODWORD(v74) = 776 * ((((v74 & 7 ^ 0x2F7) + (v74 & 7)) & 0x2C5) + ((LODWORD(STACK[0x43C]) >> 8) & 0xF) + ((v214 ^ (16 * LOBYTE(STACK[0x414]))) & 0xF0));
  LODWORD(v214) = v74 - 969 * ((4432371 * v74) >> 32);
  LOBYTE(v466) = *(v47 + v466) ^ 0xBD;
  LODWORD(v74) = (LODWORD(STACK[0x418]) ^ (16 * v466)) & 0xF0 | HIWORD(v398) & 0xF;
  LODWORD(v74) = (((314 - v74) & 0x108) + ((v74 + 709) & 0x308)) * (v74 + 709);
  LOBYTE(v217) = *(v47 + v470) ^ 0xBD;
  v477 = 776 * ((v466 ^ (16 * v217)) & 0xF0 | (LODWORD(STACK[0x438]) >> 12)) + 550184;
  LOBYTE(v470) = *(v47 + v473) ^ 0xBD;
  LODWORD(v217) = 776 * ((v217 ^ (16 * v470)) & 0xF0 | HIWORD(LODWORD(STACK[0x438])) & 0xF) + 549215;
  v478 = 776 * ((v470 ^ (16 * (*(v47 + v475) ^ 0xFD))) & 0xF0 | (LODWORD(STACK[0x450]) >> 20) & 0xF) + 550184;
  v479 = ((*(v47 + LODWORD(STACK[0x41C])) ^ 0xBD) << 12) ^ ((*(v47 + v214) ^ 0xBD) << 8);
  LODWORD(v214) = ((*(v47 + (v477 - 969 * ((4432371 * v477) >> 32))) ^ 0xBD) << 20) ^ ((*(v47 + (v74 - 969 * ((4432371 * v74) >> 32))) ^ 0xBD) << 16);
  v480 = *(v47 + (v476 - 969 * ((4432371 * v476) >> 32)));
  LODWORD(v74) = v480 ^ (16 * (*(v47 + v218 % 0x3C9) ^ 0xBD)) ^ 0xBD;
  v481 = *(v47 + v217 % 0x3C9) ^ 0xBD;
  LODWORD(v217) = *(v47 + (v478 - 969 * ((4432371 * v478) >> 32))) ^ 0xFFFFFFFD;
  v482 = v214 ^ v479 ^ v74;
  v483 = v482 ^ (v481 << 24);
  LODWORD(v217) = 776 * ((v483 ^ (v217 << 28)) >> 28) + 204088;
  LODWORD(STACK[0x4A0]) = v217 - 969 * ((4432371 * v217) >> 32);
  LODWORD(STACK[0x490]) = 776 * (HIBYTE(v483) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v483) & 0xF) + 204088)) >> 32);
  LODWORD(STACK[0x488]) = 776 * ((v214 >> 20) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v214 >> 20) & 0xF) + 204088)) >> 32);
  LODWORD(STACK[0x450]) = 776 * (HIWORD(v482) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIWORD(v482) & 0xF) + 204088)) >> 32);
  LODWORD(STACK[0x44C]) = 776 * (v479 >> 12) + 204088 - 969 * ((4432371 * (776 * (v479 >> 12) + 204088)) >> 32);
  v484 = 776 * (((v479 ^ v74) >> 8) & 0xF) + 204088;
  LODWORD(STACK[0x440]) = v484 - 969 * ((4432371 * v484) >> 32);
  LODWORD(v74) = (((v479 ^ v74) & 0x308 ^ 0x308) + ((v479 ^ v74) & 0x308)) * ((v74 >> 4) + 263);
  LODWORD(STACK[0x43C]) = v74 - 969 * ((4432371 * v74) >> 32);
  LODWORD(STACK[0x438]) = 776 * (v480 & 0xF ^ 0xD) + 204088 - 969 * ((4432371 * (776 * (v480 & 0xF ^ 0xDu) + 204088)) >> 32);
  LODWORD(v218) = LODWORD(STACK[0x57C]) - LODWORD(STACK[0x5A8]) + 726053933;
  LODWORD(STACK[0x518]) = v218;
  LODWORD(v74) = LODWORD(STACK[0x53C]) + 2142460139 + v218;
  LODWORD(STACK[0x520]) = v74;
  v485 = 776 * (v74 >> 28) + 531560 - 969 * ((4432371 * (776 * (v74 >> 28) + 531560)) >> 32);
  v486 = 776 * (BYTE3(v74) & 0xF) + 531560 - 969 * ((4432371 * (776 * (BYTE3(v74) & 0xF) + 531560)) >> 32);
  v487 = 776 * ((v74 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v74 >> 20) & 0xF) + 531560)) >> 32);
  v488 = 776 * (WORD1(v74) & 0xF) + 531560 - 969 * ((4432371 * (776 * (WORD1(v74) & 0xF) + 531560)) >> 32);
  v489 = 776 * (v74 >> 12) + 531560 - 969 * ((4432371 * (776 * (v74 >> 12) + 531560)) >> 32);
  v490 = 776 * ((v74 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v74 >> 8) & 0xF) + 531560)) >> 32);
  v491 = 776 * (v74 >> 4) + 531560 - 969 * ((4432371 * (776 * (v74 >> 4) + 531560)) >> 32);
  v492 = 776 * (v74 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v74 & 0xF) + 531560)) >> 32);
  v493 = STACK[0x588];
  LODWORD(v218) = LODWORD(STACK[0x588]) + 681447101;
  LODWORD(STACK[0x41C]) = v218;
  LODWORD(v218) = LODWORD(STACK[0x570]) - v218 + 1010715383;
  LODWORD(STACK[0x4E8]) = v218;
  LODWORD(v74) = LODWORD(STACK[0x540]) - v218 - 1876350009;
  v494 = 776 * (v74 >> 28) + 531560 - 969 * ((4432371 * (776 * (v74 >> 28) + 531560)) >> 32);
  v495 = 776 * (BYTE3(v74) & 0xF) + 531560 - 969 * ((4432371 * (776 * (BYTE3(v74) & 0xF) + 531560)) >> 32);
  v496 = 776 * ((v74 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v74 >> 20) & 0xF) + 531560)) >> 32);
  LODWORD(v214) = 776 * (WORD1(v74) & 0xF) + 531560 - 969 * ((4432371 * (776 * (WORD1(v74) & 0xF) + 531560)) >> 32);
  LODWORD(v218) = 776 * ((LOWORD(STACK[0x540]) - v218 + 11207) >> 12) + 531560;
  v497 = v218 - 969 * ((4432371 * v218) >> 32);
  v498 = 776 * ((v74 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v74 >> 8) & 0xF) + 531560)) >> 32);
  LODWORD(v217) = 776 * (v74 >> 4) + 531560 - 969 * ((4432371 * (776 * (v74 >> 4) + 531560)) >> 32);
  v499 = *(v47 + v492) ^ 0xBD;
  LODWORD(v74) = *(v47 + (776 * (v74 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v74 & 0xF) + 531560)) >> 32))) ^ 0xBD;
  LODWORD(STACK[0x4B4]) = v499 & 0xF;
  LODWORD(v218) = 776 * (v499 & 0xF | (16 * (v74 & 0xF)));
  v500 = v218 - 969 * ((4432371 * v218) >> 32);
  LODWORD(v218) = *(v47 + (v218 + 273152 - 969 * ((4432371 * (v218 + 273152)) >> 32))) ^ 0xBD;
  LODWORD(v218) = 776 * ((v218 + 2126533004 - ((2 * v218) & 0x118)) ^ LODWORD(STACK[0x584]));
  LODWORD(STACK[0x4B0]) = (v218 + 273152) % 0x3C9u;
  v501 = ((((*(v47 + v486) ^ 0xBD) << 8) ^ ((*(v47 + v485) ^ 0xBD) << 12) | *(v47 + v488) ^ 0xBD) << 8) ^ ((*(v47 + v487) ^ 0xBD) << 12);
  v502 = *(v47 + v489) ^ 0xBD;
  v503 = v501 | *(v47 + v490) ^ 0xBD;
  LODWORD(STACK[0x498]) = v503;
  v504 = (v503 << 8) ^ (v502 << 12);
  v505 = (v504 | v499) ^ (16 * (*(v47 + v491) ^ 0xBD));
  v506 = ((*(v47 + v495) ^ 0xBD) << 8) ^ ((*(v47 + v494) ^ 0xBD) << 12);
  LODWORD(STACK[0x454]) = v506;
  v507 = ((v506 | *(v47 + v214) ^ 0xBD) << 8) ^ ((*(v47 + v496) ^ 0xBD) << 12);
  v508 = ((v507 | *(v47 + v498) ^ 0xBD) << 8) ^ ((*(v47 + v497) ^ 0xBD) << 12);
  v509 = *(v47 + v217) ^ ((v508 | v74) >> 4) ^ 0xBD;
  v510 = (v505 >> 4) | (16 * (v509 & 0xF));
  v511 = 776 * v510 - 969 * ((4432371 * (776 * v510)) >> 32);
  LODWORD(v74) = *(v47 + v218 % 0x3C9) >> 4;
  LODWORD(v74) = 776 * (((v74 ^ 0xB) + ((2 * ((v74 ^ 0xB | 0x7D) ^ v74)) ^ 0x13) - 66) ^ *(v47 + v500)) + 273152;
  v512 = 776 * ((v510 ^ 0x160) + ((32 * v509) & 0xC0));
  LODWORD(v74) = 776 * (*(v47 + (v512 - 969 * ((4432371 * v512) >> 32))) ^ (16 * (*(v47 + (v74 - 969 * ((4432371 * v74) >> 32))) ^ 0xBD)) ^ 0xBD);
  LODWORD(STACK[0x428]) = v74 + 273152 - 969 * ((4432371 * (v74 + 273152)) >> 32);
  LODWORD(v218) = v74 - 969 * ((4432371 * v74) >> 32);
  LODWORD(STACK[0x540]) = (LODWORD(STACK[0x55C]) - ((2 * LODWORD(STACK[0x580])) & 0x6E71F0C0) - 1388819010) ^ 0xBD701413 ^ LODWORD(STACK[0x550]);
  v513 = ((*(v47 + LODWORD(STACK[0x500])) ^ 0xBD | ((*(v47 + LODWORD(STACK[0x4F8])) ^ 0xBD) << 8) ^ ((*(v47 + LODWORD(STACK[0x4FC])) ^ 0xBD) << 12)) << 8) ^ ((*(v47 + LODWORD(STACK[0x56C])) ^ 0xBD) << 12) | *(v47 + LODWORD(STACK[0x508])) ^ 0xBD;
  v514 = *(v47 + LODWORD(STACK[0x4F4])) ^ LODWORD(STACK[0x58C]) ^ ((*(v47 + LODWORD(STACK[0x504])) ^ 0xBD) << 12);
  LODWORD(v74) = *(v47 + LODWORD(STACK[0x4E0]));
  LODWORD(STACK[0x580]) = LODWORD(STACK[0x534]) ^ LODWORD(STACK[0x590]);
  LODWORD(STACK[0x56C]) = (((((((*(v47 + LODWORD(STACK[0x4DC])) ^ 0xBD) << 8) ^ ((v74 ^ 0xBD) << 12) | *(v47 + LODWORD(STACK[0x4C4])) ^ 0xBD) << 8) ^ ((*(v47 + LODWORD(STACK[0x4D0])) ^ 0xBD) << 12) | *(v47 + LODWORD(STACK[0x4C0])) ^ 0xBD) << 8) ^ ((*(v47 + LODWORD(STACK[0x4C8])) ^ 0xBD) << 12) | *(v47 + LODWORD(STACK[0x4B8])) ^ 0xBD) ^ (v493 + LODWORD(STACK[0x45C]));
  v515 = STACK[0x5A8];
  LODWORD(v217) = STACK[0x4A8];
  LODWORD(STACK[0x590]) = (LODWORD(STACK[0x5A8]) + LODWORD(STACK[0x4A8])) ^ LODWORD(STACK[0x524]);
  v516 = LODWORD(STACK[0x47C]) ^ (v217 + 1559312464);
  LODWORD(v217) = LODWORD(STACK[0x458]) ^ LODWORD(STACK[0x460]);
  LODWORD(v214) = ((LODWORD(STACK[0x458]) ^ 0x3594DE04) + 1475868218) ^ ((LODWORD(STACK[0x458]) ^ 0xC80CDC86) - 1435503428) ^ ((LODWORD(STACK[0x458]) ^ 0xFD980282) - 1610929472);
  LODWORD(STACK[0x58C]) = v217 ^ 0x5E17A742 ^ (LODWORD(STACK[0x46C]) + 1578608450 - ((2 * LODWORD(STACK[0x46C])) & 0xBC2F4E84));
  v517 = v217 ^ (v493 - 1464646934);
  LODWORD(v218) = *(v47 + v218) >> 4;
  LODWORD(v218) = 776 * (((v218 ^ 0xB) + ((2 * ((v218 ^ 0xB | 0x7D) ^ v218)) ^ 0x13) - 66) ^ *(v47 + v511)) + 273152;
  LODWORD(STACK[0x550]) = v516 ^ 0xB4AFA074 ^ (LODWORD(STACK[0x4F0]) - ((2 * LODWORD(STACK[0x4EC])) & 0x695F40E8) - 292203207);
  LODWORD(v217) = LODWORD(STACK[0x57C]) + (((v516 ^ (v515 - 1464646934) ^ 0xF353D758) - 1905310905) ^ ((v516 ^ (v515 - 1464646934) ^ 0x47137953) + 976219470) ^ ((v516 ^ (v515 - 1464646934) ^ 0xB440AE0B) - 914605546));
  v518 = 776 * (v509 & 0xF0 | (v505 >> 8) & 0xF);
  v519 = v515 + 681447101;
  v520 = ((2 * ((LODWORD(STACK[0x480]) + 2011046348) ^ v519)) & 0xBE28EEAC) + ((LODWORD(STACK[0x480]) + 2011046348) ^ v519 ^ 0xDF147756);
  v521 = (((v517 ^ 0x67A78A50) - 813548190) ^ ((v517 ^ 0xF02675CD) + 1476641533) ^ ((v517 ^ 0x9781FF9D) + 1067731117)) + LODWORD(STACK[0x570]);
  LODWORD(STACK[0x57C]) = (v521 - 1205303112) ^ (16 * (*(v47 + LODWORD(STACK[0x43C])) ^ 0xBD)) ^ (((((((*(v47 + LODWORD(STACK[0x490])) ^ 0xBD) << 8) ^ ((*(v47 + LODWORD(STACK[0x4A0])) ^ 0xBD) << 12) | *(v47 + LODWORD(STACK[0x450])) ^ 0xBD) << 8) ^ ((*(v47 + LODWORD(STACK[0x488])) ^ 0xBD) << 12) | *(v47 + LODWORD(STACK[0x440])) ^ 0xBD) << 8) ^ ((*(v47 + LODWORD(STACK[0x44C])) ^ 0xBD) << 12) | *(v47 + LODWORD(STACK[0x438])) ^ 0xBD);
  LODWORD(v74) = v217 + v520 + 648158351;
  LODWORD(STACK[0x5A8]) = (v217 - 88595522) ^ LODWORD(STACK[0x470]);
  v522 = STACK[0x41C];
  LODWORD(v217) = (v493 + 360380814 + v214) ^ LODWORD(STACK[0x41C]);
  v523 = v217 - 117353275 + v521;
  LODWORD(STACK[0x508]) = v523;
  v524 = v514 ^ (16 * (*(v47 + LODWORD(STACK[0x510])) ^ 0xBD)) ^ (v513 << 8) ^ 0xBD;
  LODWORD(STACK[0x53C]) = v524;
  LODWORD(v218) = 776 * (*(v47 + (v518 + 273152 - 969 * ((4432371 * (v518 + 273152)) >> 32))) ^ (16 * (*(v47 + (v218 - 969 * ((4432371 * v218) >> 32))) ^ 0xBD)) ^ 0xBD);
  v525 = v218 + 273152 - 969 * ((4432371 * (v218 + 273152)) >> 32);
  LODWORD(v218) = (*(v47 + v218 % ((v524 & 0x3C9 ^ 0x3C9) + (v524 & 0x3C9u))) >> 4) ^ 0xB;
  LODWORD(v218) = 776 * ((v218 - ((2 * v218) & 0xFB) - 67) ^ *(v47 + (v518 - 969 * ((4432371 * v518) >> 32)))) + 273152;
  v526 = 776 * ((v508 >> 8) & 0xF0 | (v504 >> 12));
  v527 = 776 * (*(v47 + (v526 + 273152 - 969 * ((4432371 * (v526 + 273152)) >> 32))) ^ (16 * (*(v47 + (v218 - 969 * ((4432371 * v218) >> 32))) ^ 0xBD)) ^ 0xBD);
  v528 = *(v47 + (v527 - 969 * ((4432371 * v527) >> 32)));
  v529 = v527 + 273152 - 969 * ((4432371 * (v527 + 273152)) >> 32);
  v530 = 776 * ((((v528 >> 4) ^ 0xB) + ((2 * (((v528 >> 4) ^ 0xB | 0x7D) ^ (v528 >> 4))) ^ 0x13) - 66) ^ *(v47 + v526 % (((v508 >> 12) & 9 ^ 0x3C9) + ((v508 >> 12) & 9)))) + 273152;
  LODWORD(v218) = 776 * ((v508 >> 12) & 0xF0 | HIWORD(v504) & 0xF);
  v531 = 776 * (*(v47 + (v218 + 273152 - 969 * ((4432371 * (v218 + 273152)) >> 32))) ^ (16 * (*(v47 + (v530 - 969 * ((4432371 * v530) >> 32))) ^ 0xBD)) ^ 0xBD);
  v532 = v531 + 273152 - 969 * ((4432371 * (v531 + 273152)) >> 32);
  v533 = *(v47 + (v531 - 969 * ((4432371 * v531) >> 32))) >> 4;
  LODWORD(v218) = 776 * (((v533 ^ 0xB) + ((2 * ((v533 ^ 0xB | 0x7D) ^ v533)) ^ 0x13) - 66) ^ *(v47 + (v218 - 969 * ((4432371 * v218) >> 32)))) + 273152;
  v534 = 776 * ((v507 >> 8) & 0xF0 | (v501 >> 12));
  LODWORD(v218) = 776 * (*(v47 + (v534 + 273152 - 969 * ((4432371 * (v534 + 273152)) >> 32))) ^ (16 * (*(v47 + (v218 - 969 * ((4432371 * v218) >> 32))) ^ 0xBD)) ^ 0xBD);
  v535 = v218 + 273152 - 969 * ((4432371 * (v218 + 273152)) >> 32);
  LODWORD(v218) = *(v47 + (v218 - 969 * ((4432371 * v218) >> 32))) >> 4;
  LODWORD(v218) = 776 * (((v218 ^ 0xB) + ((2 * ((v218 ^ 0xB | 0x7D) ^ v218)) ^ 0x13) - 66) ^ *(v47 + (v534 - 969 * ((4432371 * v534) >> 32)))) + 273152;
  v536 = 776 * ((v507 >> 12) & 0xF0 | HIWORD(v501) & 0xF);
  LODWORD(v214) = v536 - 969 * ((4432371 * v536) >> 32);
  LODWORD(v218) = 776 * (*(v47 + (v536 + 273152 - 969 * ((4432371 * (v536 + 273152)) >> 32))) ^ (16 * (*(v47 + (v218 - 969 * ((4432371 * v218) >> 32))) ^ 0xBD)) ^ 0xBD);
  v537 = v218 + 273152 - 969 * ((4432371 * (v218 + 273152)) >> 32);
  LODWORD(v218) = (*(v47 + (v218 - 969 * ((4432371 * v218) >> 32))) >> 4) ^ 0xB;
  LODWORD(v218) = 776 * ((v218 - ((2 * v218) & 0xFB) - 67) ^ *(v47 + v214)) + 273152;
  v538 = 776 * ((LODWORD(STACK[0x454]) >> 8) & 0xF0 | (LODWORD(STACK[0x498]) >> 20) & 0xF) + 273152;
  LODWORD(v218) = 776 * (*(v47 + (v538 - 969 * ((4432371 * v538) >> 32))) ^ (16 * (*(v47 + (v218 - 969 * ((4432371 * v218) >> 32))) ^ 0xBD)) ^ 0xBD) + 273152;
  LODWORD(v214) = v218 - 969 * ((4432371 * v218) >> 32);
  v539 = *(v47 + LODWORD(STACK[0x4B0])) ^ 0xBD;
  LODWORD(v218) = 776 * (STACK[0x4B4] & 0xFFFFFF0F | (16 * (v539 & 0xF))) + 550184;
  v540 = v539 ^ (16 * (*(v47 + LODWORD(STACK[0x428])) ^ 0xBD));
  v541 = ((*(v47 + v529) ^ 0xBD) << 12) ^ ((*(v47 + v525) ^ 0xBD) << 8);
  v542 = v541 ^ v540;
  v543 = ((v541 ^ v540) >> 4) & 0xF0 | (v505 >> 8) & 0xF;
  v544 = 776 * (v540 & 0xF0 | (v505 >> 4)) + 550184 - 969 * ((4432371 * (776 * (v540 & 0xF0 | (v505 >> 4)) + 550184)) >> 32);
  v545 = 776 * ((v541 >> 8) & 0xF0 | (v504 >> 12)) + 550184;
  v546 = v545 - 969 * ((4432371 * v545) >> 32);
  v547 = v542 ^ ((*(v47 + v532) ^ 0xBD) << 16);
  v548 = 776 * ((v547 >> 12) & 0xF0 | HIWORD(v504) & 0xF) + 550184;
  v549 = v547 ^ ((*(v47 + v535) ^ 0xBD) << 20);
  v550 = 776 * (HIWORD(v549) & 0xF0 | (v501 >> 12)) + 550184;
  v551 = v549 ^ ((*(v47 + v537) ^ 0xBD) << 24);
  LODWORD(v214) = ((v551 ^ ((*(v47 + v214) ^ 0xFFFFFFFD) << 28)) >> 24) & 0xF0 | (LODWORD(STACK[0x498]) >> 20) & 0xF;
  v552 = *(v47 + (v218 - 969 * ((4432371 * v218) >> 32)));
  v553 = 776 * ((v551 >> 20) & 0xF0 | HIWORD(v501) & 0xF) + 550184;
  v554 = ((*(v47 + (v548 - 969 * ((4432371 * v548) >> 32))) ^ 0xBD) << 16) ^ ((*(v47 + v546) ^ 0xBD) << 12);
  LODWORD(v218) = v552 ^ (16 * (*(v47 + v544) ^ 0xBD)) ^ 0xBD;
  v555 = (v218 ^ ((*(v47 + (776 * v543 + 550184 - 969 * ((4432371 * (776 * v543 + 550184)) >> 32))) ^ 0xBD) << 8) | ((*(v47 + (v550 - 969 * ((4432371 * v550) >> 32))) ^ 0xBD) << 20)) ^ v554;
  v556 = v555 ^ ((*(v47 + (v553 - 969 * ((4432371 * v553) >> 32))) ^ 0xBD) << 24);
  LODWORD(v214) = v556 ^ ((*(v47 + (776 * v214 + 550184 - 969 * ((4432371 * (776 * v214 + 550184)) >> 32))) ^ 0xFFFFFFFD) << 28);
  v557 = ((*(v47 + (776 * (HIBYTE(v556) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v556) & 0xF) + 204088)) >> 32))) ^ 0xBD) << 8) ^ ((*(v47 + (776 * (v214 >> 28) + 204088 - 969 * ((4432371 * (776 * (v214 >> 28) + 204088)) >> 32))) ^ 0xBD) << 12) | *(v47 + (776 * (HIWORD(v554) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIWORD(v554) & 0xF) + 204088)) >> 32))) ^ 0xBD;
  v558 = v214 >> (57 * ((STACK[0x58C] & 0x48 ^ 0x48) + (STACK[0x58C] & 0x48)));
  LODWORD(STACK[0x504]) = 776 * (v558 >> 4) + 204088 - 969 * ((4432371 * (776 * (v558 >> 4) + 204088)) >> 32);
  v559 = 776 * (2 * (v558 & 7) + (v558 & 0xF ^ 0x107));
  LODWORD(STACK[0x570]) = 776 * (v218 >> 4) + 204088 - 969 * ((4432371 * (776 * (v218 >> 4) + 204088)) >> 32);
  LODWORD(STACK[0x500]) = (v557 << 8) ^ ((*(v47 + (776 * ((v555 >> 20) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v555 >> 20) & 0xF) + 204088)) >> 32))) ^ 0xBD) << 12) | *(v47 + (v559 - 969 * ((4432371 * v559) >> 32))) ^ 0xBD;
  LODWORD(STACK[0x4FC]) = 776 * (v552 & 0xF ^ 0xD) + 204088 - 969 * ((4432371 * (776 * (v552 & 0xF ^ 0xDu) + 204088)) >> 32);
  v560 = v74 - 1052001113;
  LODWORD(STACK[0x524]) = v74 - 1052001113;
  v561 = STACK[0x518];
  v562 = LODWORD(STACK[0x518]) ^ v519;
  LODWORD(STACK[0x534]) = v562;
  LODWORD(v218) = STACK[0x4E8];
  v563 = LODWORD(STACK[0x4E8]) ^ v522;
  LODWORD(v74) = v563 + v217 + v523;
  LODWORD(STACK[0x4F8]) = v74;
  LODWORD(v74) = v74 + v218;
  LODWORD(STACK[0x588]) = v74 ^ v563;
  v564 = v562 + v520 - 1787156503 + v560;
  LODWORD(STACK[0x55C]) = v564;
  v565 = v564 + v561;
  LODWORD(STACK[0x518]) = v565;
  v566 = LODWORD(STACK[0x42C]) - 630195125 + v565;
  v567 = LODWORD(STACK[0x548]) - v74;
  LODWORD(STACK[0x548]) = v74 - 692390376;
  LODWORD(v74) = 776 * ((((v74 - 2536) | (487 - v74)) & 0x200 | (v566 >> 28)) + 173);
  v568 = ((*(v47 + (776 * (HIBYTE(v566) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v566) & 0xF) + 531560)) >> 32))) ^ 0xBD) << 8) ^ ((*(v47 + (v74 - 969 * ((4432371 * v74) >> 32))) ^ 0xBD) << 12) | *(v47 + (776 * (HIWORD(v566) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v566) & 0xF) + 531560)) >> 32))) ^ 0xBD;
  v569 = v567 - 1541836876;
  v570 = 776 * (v569 >> 28) + 531560 - 969 * ((4432371 * (776 * (v569 >> 28) + 531560)) >> 32);
  v571 = 776 * (HIBYTE(v569) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v569) & 0xF) + 531560)) >> 32);
  v572 = 776 * ((v569 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v569 >> 20) & 0xF) + 531560)) >> 32);
  v573 = 776 * (HIWORD(v569) & 0xF) + 531560 - 1938 * ((2216186 * (776 * (HIWORD(v569) & 0xF) + 531560)) >> 32);
  if (v573 >= 0x3C9)
  {
    v574 = v573 - 969;
  }

  else
  {
    v574 = 776 * (HIWORD(v569) & 0xF) + 531560 - 1938 * ((2216186 * (776 * (HIWORD(v569) & 0xF) + 531560)) >> 32);
  }

  v575 = 776 * (v569 >> 12) + 531560 - 969 * ((4432371 * (776 * (v569 >> 12) + 531560)) >> 32);
  v576 = 776 * ((v569 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v569 >> 8) & 0xF) + 531560)) >> 32);
  v577 = (((338 - (v569 >> 4)) & 0x108) + (((v569 >> 4) + 685) & 0x208)) * ((v569 >> 4) + 685);
  v578 = v577 - 969 * ((4432371 * v577) >> 32);
  v579 = *(v47 + (776 * (v566 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v566 & 0xF) + 531560)) >> 32))) ^ 0xBD;
  v580 = *(v47 + (776 * (v569 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v569 & 0xF) + 531560)) >> 32))) ^ 0xBD;
  v581 = v579 & 0xF | (16 * (v580 & 0xF));
  LODWORD(STACK[0x510]) = v581;
  v581 *= 776;
  v582 = *(v47 + (v581 + 273152 - 969 * ((4432371 * (v581 + 273152)) >> 32))) ^ 0xBD;
  v583 = (v582 + 2126533004 - ((2 * v582) & 0x118)) ^ LODWORD(STACK[0x584]);
  v584 = (v583 & 0x3C9 ^ 0x3C9) + (v583 & 0x3C9);
  v583 *= 776;
  v585 = (v583 + 273152) % 0x3C9;
  v586 = *(v47 + v583 % v584) >> 4;
  v587 = 776 * (((v586 ^ 0xB) + ((2 * ((v586 ^ 0xB | 0x7D) ^ v586)) ^ 0x13) - 66) ^ *(v47 + (v581 - 969 * ((4432371 * v581) >> 32)))) + 273152;
  v588 = v587 - 969 * ((4432371 * v587) >> 32);
  v589 = (v568 << 8) ^ ((*(v47 + (776 * ((v566 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v566 >> 20) & 0xF) + 531560)) >> 32))) ^ 0xBD) << 12);
  v590 = v589 | *(v47 + (776 * ((v566 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v566 >> 8) & 0xF) + 531560)) >> 32))) ^ 0xBD;
  v591 = (v590 << 8) ^ ((*(v47 + (776 * (v566 >> 12) + 531560 - 969 * ((4432371 * (776 * (v566 >> 12) + 531560)) >> 32))) ^ 0xBD) << 12);
  v592 = (v591 | v579) ^ (16 * (*(v47 + (776 * (v566 >> 4) + 531560 - 969 * ((4432371 * (776 * (v566 >> 4) + 531560)) >> 32))) ^ 0xBD));
  v593 = v592 >> 4;
  v594 = ((v588 & 0x1D1) - (~v593 & 0x41417E6 | (v592 >> 4) & 6) + (v588 & 0x1D1 ^ 0x43A5DD1)) & (~v593 & 0x688BB64 | (v592 >> 4) & 4);
  v595 = ((*(v47 + v571) ^ 0xBD) << 8) ^ ((*(v47 + v570) ^ 0xBD) << 12);
  v596 = ((v595 | *(v47 + v574) ^ 0xBD) << 8) ^ ((*(v47 + v572) ^ 0xBD) << 12);
  v597 = *(v47 + v578);
  v598 = ((v596 | *(v47 + v576) ^ 0xBD) << 8) ^ ((*(v47 + v575) ^ 0xBD) << 12);
  LOBYTE(v575) = v597 ^ ((v598 | v580) >> 4) ^ 0xBD;
  v599 = v593 & 0xFFFFFF0F | (16 * (v575 & 0xF));
  v600 = 776 * (*(v47 + 776 * (v594 + v599) % 0x3C9) ^ (16 * (*(v47 + v588) ^ 0xBD)) ^ 0xBD);
  v601 = v600 + 273152 - 969 * ((4432371 * (v600 + 273152)) >> 32);
  v602 = *(v47 + (v600 - 969 * ((4432371 * v600) >> 32))) >> 4;
  v603 = 776 * (((v602 ^ 0xB) + ((2 * ((v602 ^ 0xB | 0x7D) ^ v602)) ^ 0x13) - 66) ^ *(v47 + (776 * v599 - 969 * ((4432371 * (776 * v599)) >> 32)))) + 273152;
  v604 = 776 * (v575 & 0xF0 | (v592 >> 8) & 0xF);
  v605 = 776 * (*(v47 + (v604 + 273152 - 969 * ((4432371 * (v604 + 273152)) >> 32))) ^ (16 * (*(v47 + (v603 - 969 * ((4432371 * v603) >> 32))) ^ 0xBD)) ^ 0xBD);
  v606 = v605 + 273152 - 969 * ((4432371 * (v605 + 273152)) >> 32);
  v607 = *(v47 + (v605 - 969 * ((4432371 * v605) >> 32))) >> 4;
  v608 = 776 * (((v607 ^ 0xB) + ((2 * ((v607 ^ 0xB | 0x7D) ^ v607)) ^ 0x13) - 66) ^ *(v47 + (v604 - 969 * ((4432371 * v604) >> 32)))) + 273152;
  v609 = v608 - 969 * ((4432371 * v608) >> 32);
  v610 = *(v47 + LODWORD(STACK[0x4FC])) ^ 0xBD;
  v611 = (LODWORD(STACK[0x500]) << 8) ^ ((*(v47 + LODWORD(STACK[0x504])) ^ 0xBD) << 12) | v610;
  v612 = *(v47 + v606);
  v613 = 776 * ((v598 >> 12 << ((v612 & 4 ^ 4) + (v612 & 4))) ^ ((v610 & 0xF ^ 0xF) + (v610 & 0xF)) & (v591 >> 12));
  v614 = 776 * (*(v47 + (v613 + 273152) % 0x3C9) ^ (16 * (*(v47 + v609) ^ 0xBD)) ^ 0xBD);
  v615 = v614 + 273152 - 969 * ((4432371 * (v614 + 273152)) >> 32);
  v616 = (*(v47 + (v614 - 969 * ((4432371 * v614) >> 32))) >> 4) ^ 0xB;
  v617 = 776 * ((v616 - ((2 * v616) & 0xFB) - 67) ^ *(v47 + v613 % 0x3C9)) + 273152;
  v618 = 776 * (((HIWORD(v598) & 0xF) << (((LODWORD(STACK[0x590]) | 0x2F) - (STACK[0x590] & 0xD0) - 43) & 0xFC)) ^ HIWORD(v591) & 0xF);
  v619 = v618 % 0x3C9;
  v620 = 776 * (*(v47 + (v618 + 273152) % 0x3C9) ^ (16 * (*(v47 + (v617 - 969 * ((4432371 * v617) >> 32))) ^ 0xBD)) ^ 0xBD);
  v621 = *(v47 + (v620 - 969 * ((4432371 * v620) >> 32)));
  v622 = v620 + 273152 - 969 * ((4432371 * (v620 + 273152)) >> 32);
  v623 = (((v621 >> 4) ^ 0xB) + (~(2 * ((v621 >> 4) ^ 0xB)) | 0xE5) - 66) ^ *(v47 + v619);
  v624 = (((671 - v623) ^ (v623 + 352)) & 0x308) * (v623 + 352);
  v625 = 776 * ((v596 >> 8) & 0xF0 | (v589 >> 12));
  v626 = 776 * (*(v47 + (v625 + 273152 - 969 * ((4432371 * (v625 + 273152)) >> 32))) ^ (16 * (*(v47 + (v624 - 969 * ((4432371 * v624) >> 32))) ^ 0xBD)) ^ 0xBD);
  v627 = v626 + 273152 - 969 * ((4432371 * (v626 + 273152)) >> 32);
  v628 = *(v47 + (v626 - 969 * ((4432371 * v626) >> 32))) >> 4;
  v629 = 776 * (((v628 ^ 0xB) + ((2 * ((v628 ^ 0xB | 0x7D) ^ v628)) ^ 0x13) - 66) ^ *(v47 + (v625 - 969 * ((4432371 * v625) >> 32)))) + 273152;
  v630 = 776 * ((v596 >> 12) & 0xF0 | HIWORD(v589) & 0xF);
  v631 = v630 - 969 * ((4432371 * v630) >> 32);
  v632 = 776 * (*(v47 + (v630 + 273152 - 969 * ((4432371 * (v630 + 273152)) >> 32))) ^ (16 * (*(v47 + (v629 - 969 * ((4432371 * v629) >> 32))) ^ 0xBD)) ^ 0xBD);
  v633 = v632 + 273152 - 969 * ((4432371 * (v632 + 273152)) >> 32);
  v634 = *(v47 + (v632 - 969 * ((4432371 * v632) >> 32))) >> 4;
  v635 = 776 * (((v634 ^ 0xB) + ((2 * ((v634 ^ 0xB | 0x7D) ^ v634)) ^ 0x13) - 66) ^ *(v47 + v631)) + 273152;
  v636 = 776 * ((v595 >> 8) & 0xF0 | (v590 >> 20) & 0xF) + 273152;
  v637 = *(v47 + (v635 - 969 * ((4432371 * v635) >> 32)));
  v638 = 776 * (*(v47 + (v636 - 969 * ((4432371 * v636) >> 32))) ^ (16 * (v637 ^ 0xBD)) ^ 0xBD) + 273152;
  v639 = v638 - 969 * ((4432371 * v638) >> 32);
  LOBYTE(v638) = *(v47 + v585) ^ 0xBD;
  v640 = 776 * (v579 & 0xF | (16 * (v638 & 0xF))) + 550184;
  v641 = 16 * (*(v47 + v601) ^ 0xBD);
  v642 = 776 * ((v641 ^ v638) & 0xF0 | (v592 >> 4)) + 550184;
  v643 = v642 - 969 * ((4432371 * v642) >> 32);
  v644 = ((*(v47 + v615) ^ 0xBD) << 12) ^ ((v612 ^ 0xBD) << 8);
  v645 = (v641 | ((*(v47 + v622) ^ 0xBD) << 16)) ^ ((*(v47 + v627) ^ 0xBD) << 20);
  v646 = v645 ^ v644;
  v647 = 776 * (((v645 ^ v644) >> 4) & 0xF0 | (v592 >> 8) & 0xF) + 550184;
  v648 = 776 * ((v644 >> 12 << (((v637 & 4 ^ 4) + (v637 & 4)) | 4)) & 0xFFFFFFF0 | (v591 >> 12)) + 550184;
  v649 = 776 * (((v645 ^ v644) >> 12) & 0xF0 | HIWORD(v591) & 0xF) + 550184;
  v650 = 776 * (HIWORD(v645) & 0xF0 | (v589 >> 12)) + 550184;
  v651 = v646 ^ ((*(v47 + v633) ^ 0xBD) << 24);
  v652 = (v651 >> 20) & 0xF0 | HIWORD(v589) & 0xF;
  v653 = 776 * (((v651 ^ ((*(v47 + v639) ^ 0xFFFFFFFD) << 28)) >> 24) & 0xF0 | (v590 >> 20) & 0xF) + 550184;
  v654 = *(v47 + v643) ^ 0xBD;
  v655 = *(v47 + (v653 - 969 * ((4432371 * v653) >> 32))) ^ 0xFFFFFFFD;
  v656 = (16 * v654) ^ ((*(v47 + (v647 - 969 * ((4432371 * v647) >> 32))) ^ 0xBD) << 8);
  v657 = v656 ^ ((*(v47 + v648 % 0x3C9) ^ 0xBD) << 12);
  v658 = v657 ^ ((*(v47 + (v649 - 969 * ((4432371 * v649) >> 32))) ^ 0xBD) << 16);
  v659 = v658 ^ ((*(v47 + (v650 - 969 * ((4432371 * v650) >> 32))) ^ 0xBD) << 20);
  v660 = v659 ^ ((*(v47 + (776 * v652 + 550184 - 969 * ((4432371 * (776 * v652 + 550184)) >> 32))) ^ 0xBD) << 24);
  v661 = 776 * ((v660 ^ (v655 << 28)) >> 28) + 204088;
  v662 = 776 * (HIBYTE(v660) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIBYTE(v660) & 0xF) + 204088)) >> 32);
  v663 = 776 * (v657 >> 12) + 204088 - 969 * ((4432371 * (776 * (v657 >> 12) + 204088)) >> 32);
  LOBYTE(v657) = 16 * v654 - 32 * (v654 & 3);
  v664 = ((*(v47 + v662) ^ 0xBD) << 8) ^ ((*(v47 + v661 % 0x3C9) ^ 0xBD) << 12) | *(v47 + (776 * (HIWORD(v658) & 0xF) + 204088 - 969 * ((4432371 * (776 * (HIWORD(v658) & 0xF) + 204088)) >> 32))) ^ 0xBD;
  LOBYTE(v658) = *(v47 + (v640 - 969 * ((4432371 * v640) >> 32)));
  v665 = 776 * (((v657 - 67) ^ v658) >> 4) + 204088;
  v666 = v665 - 969 * ((4432371 * v665) >> 32);
  v667 = STACK[0x508];
  LODWORD(STACK[0x584]) = v611 ^ LODWORD(STACK[0x508]);
  v668 = v667 - LODWORD(STACK[0x588]) + LODWORD(STACK[0x548]);
  v669 = LODWORD(STACK[0x588]) - 551388244;
  v670 = ((v669 ^ LODWORD(STACK[0x548]) ^ 0xDCA08CEF) - 1217128170) ^ ((v669 ^ LODWORD(STACK[0x548]) ^ 0x6B071834) + 13864399) ^ ((v669 ^ LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x338])) - 596442846);
  v671 = LODWORD(STACK[0x524]) + 1955503935;
  LODWORD(STACK[0x548]) = v671 ^ LODWORD(STACK[0x520]);
  v672 = LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x534]);
  v673 = LODWORD(STACK[0x518]) - 692390376;
  v674 = v671 - v672 + v673;
  LODWORD(STACK[0x534]) = v674 ^ v566;
  LODWORD(STACK[0x518]) = v674 - (v672 - 551388244);
  v675 = (((v672 - 551388244) ^ v673 ^ 0x27899C84) + 549172810) ^ (((v672 - 551388244) ^ v673 ^ 0x2B5B3D55) + 745084825) ^ (((v672 - 551388244) ^ v673 ^ 0xCD2A1D1) + 199265053);
  LODWORD(STACK[0x524]) = v668 ^ (16 * (*(v47 + v666) ^ 0xBD)) ^ ((((v664 << 8) ^ ((*(v47 + (776 * ((v659 >> 20) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v659 >> 20) & 0xF) + 204088)) >> 32))) ^ 0xBD) << 12) | *(v47 + (776 * ((v656 >> 8) & 0xF) + 204088 - 969 * ((4432371 * (776 * ((v656 >> 8) & 0xF) + 204088)) >> 32))) ^ 0xBD) << 8) ^ ((*(v47 + v663) ^ 0xBD) << 12) | *(v47 + (776 * (v658 & 0xF ^ 0xD) + 204088 - 969 * ((4432371 * (776 * (v658 & 0xF ^ 0xD) + 204088)) >> 32))) ^ 0xBD);
  LODWORD(STACK[0x520]) = v668 - v669;
  v676 = LODWORD(STACK[0x430]) - 1978679704 + v675;
  LODWORD(STACK[0x508]) = LODWORD(STACK[0x55C]) - v675 - 247942055;
  v677 = STACK[0x424];
  LODWORD(STACK[0x510]) = v670;
  v678 = v677 - v670 + 464720701;
  v679 = 776 * (v678 >> 28) + 531560 - 969 * ((4432371 * (776 * (v678 >> 28) + 531560)) >> 32);
  v680 = 776 * (HIBYTE(v678) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIBYTE(v678) & 0xF) + 531560)) >> 32);
  v681 = 776 * ((v678 >> 20) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v678 >> 20) & 0xF) + 531560)) >> 32);
  v682 = 776 * (HIWORD(v678) & 0xF) + 531560 - 969 * ((4432371 * (776 * (HIWORD(v678) & 0xF) + 531560)) >> 32);
  v683 = 776 * (v678 >> 12) + 531560 - 969 * ((4432371 * (776 * (v678 >> 12) + 531560)) >> 32);
  v684 = 776 * (v678 >> 4) + 531560 - 969 * ((4432371 * (776 * (v678 >> 4) + 531560)) >> 32);
  v685 = 776 * (v678 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v678 & 0xF) + 531560)) >> 32);
  v686 = *(v47 + (776 * ((v678 >> 8) & 0xF) + 531560 - 969 * ((4432371 * (776 * ((v678 >> 8) & 0xF) + 531560)) >> 32))) ^ 0xBD;
  LOBYTE(v612) = *(v47 + (776 * (v676 & 0xF) + 531560 - 969 * ((4432371 * (776 * (v676 & 0xFu) + 531560)) >> 32))) ^ 0xBD;
  v687 = *(v47 + v685) ^ 0xBD;
  v688 = 776 * (v612 & 0xF | (16 * (v687 & 0xF)));
  v689 = (*(v47 + 776 * (*(v47 + (v688 + 273152 - 969 * ((4432371 * (v688 + 273152)) >> 32))) ^ ((LODWORD(STACK[0x54C]) ^ 0xBD) << ((v686 & 4 ^ 4) + (v686 & 4))) ^ 0xBDu) % 0x3C9) >> 4) ^ 0xB;
  v690 = 776 * ((v689 + (~(2 * v689) | 0xE5) - 66) ^ *(v47 + (v688 - 969 * ((4432371 * v688) >> 32)))) + 273152;
  v691 = 776 * (((v612 ^ (16 * (*(v47 + (776 * (v676 >> 4) + 531560 - 969 * ((4432371 * (776 * (v676 >> 4) + 531560)) >> 32))) ^ 0xBD))) >> 4) & 0xF | (16 * (((*(v47 + v684) ^ ((((((((*(v47 + v680) ^ 0xBD) << 8) ^ ((*(v47 + v679) ^ 0xBD) << 12) | *(v47 + v682) ^ 0xBD) << 8) ^ ((*(v47 + v681) ^ 0xBD) << 12) | v686) << 8) ^ ((*(v47 + v683) ^ 0xBD) << 12) | v687) >> 4)) ^ 0xBD) & 0xF)));
  v692 = 776 * (*(v47 + (v691 + 273152 - 969 * ((4432371 * (v691 + 273152)) >> 32))) ^ (16 * (*(v47 + (v690 - 969 * ((4432371 * v690) >> 32))) ^ 0xBD)) ^ 0xBD);
  v693 = *(v47 + (v692 + 273152 - 969 * ((4432371 * (v692 + 273152)) >> 32)));
  LODWORD(STACK[0x54C]) = v693 ^ 0x42;
  LODWORD(STACK[0x504]) = v693;
  return (*(STACK[0x598] + 8 * (LODWORD(STACK[0x560]) ^ (464 * ((STACK[0x420] & 1) == 0)))))();
}

uint64_t sub_1000BE4B8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = 677 * (v5 ^ 0x3D28F36A ^ (v4 + 3006)) - 9479 + v3;
  v8 = *(v2 + v7 - 15);
  v9 = *(v2 + v7 - 31);
  v10 = a1 + v7;
  *(v10 - 15) = v8;
  *(v10 - 31) = v9;
  return (*(v6 + 8 * ((2802 * ((v3 & 0xFFFFFFE0) == 32)) | (a2 + (v5 ^ 0x3D28F36A) + 1432))))();
}

uint64_t sub_1000BE5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v4 + (v5 - v2) - 2437;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * ((v3 + v5 + 1524) | (8 * (v7 == 0)))))();
}

uint64_t sub_1000BE63C@<X0>(int a1@<W8>)
{
  v7 = (v2 + 40);
  v8 = (v3 + 40);
  if (a1 == v1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = *v9;
  v11 = STACK[0x770];
  STACK[0x638] = &STACK[0xBB0] + STACK[0x770];
  STACK[0x770] = ((38 * (v5 ^ 0x1064) - 65) & 0xFFFFFC3A) + v11;
  STACK[0x5A0] = v4;
  STACK[0x878] = 0;
  STACK[0x978] = 0;
  STACK[0x5D8] = v10;
  return (*(v6 + 8 * ((13 * (v10 != 0)) ^ v5)))();
}

uint64_t sub_1000BE710()
{
  v4 = (*(v3 + 8 * (v0 + 3391)))();
  *v1 = 0;
  return v2(v4);
}

uint64_t sub_1000BE780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v31 = v25 + 577;
  LODWORD(STACK[0x520]) = v26;
  LODWORD(STACK[0x524]) = 212411112;
  v32 = **(v29 + 8 * ((v25 + 577) ^ (v27 + 94)));
  *(v30 - 140) = ((v31 + 745868465) ^ 0x75) + a25;
  *(v30 - 128) = ((v31 + 745868465) ^ 0x3B2) - a25;
  v33 = v30 - 152;
  *(v33 + 16) = a25;
  *(v33 + 32) = v32 ^ a25;
  *(v30 - 152) = a25;
  *(v30 - 144) = a25 + v31 - 1607385763;
  *(v30 - 112) = (v31 + 745868465) ^ a25;
  v34 = (*(v28 + 8 * (v31 + 1232701030)))(v30 - 152);
  return (*(v28 + 8 * *(v30 - 148)))(v34);
}

uint64_t sub_1000BE818(uint64_t a1, uint64_t a2)
{
  LOWORD(STACK[0xA26]) = v2;
  LODWORD(STACK[0x370]) = v2;
  return sub_100140A90(a1, a2, v3 - 8569);
}

uint64_t sub_1000BE93C@<X0>(uint64_t a1@<X0>, int a2@<W5>, int a3@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7);
  return (*(v6 + 8 * ((6887 * (v7 == (v5 ^ (a2 + 1980) ^ 0x60CLL))) ^ (a3 + v5 + 2040))))();
}

uint64_t sub_1000BE980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, int a17, unsigned int a18)
{
  a18 = 1317436891 * (((&a16 | 0xDCC09AF3) - &a16 + (&a16 & 0x233F6508)) ^ 0x6CC30285) + 8154;
  a16 = &a12;
  v20 = (*(v19 + 77096))(&a16);
  return (*(v19 + 8 * ((418 * (a17 == v18)) ^ 0x220Fu)))(v20);
}

uint64_t sub_1000BEA90()
{
  v3 = 329 * (v0 ^ 0x1D46) + (((v1 ^ 0x9C24C36E) + 1675312274) ^ ((v1 ^ 0x59E619EF) - 1508252143) ^ ((v1 ^ 0xCE0758C6 ^ (v0 - 584)) + 838384686)) - 1051717533;
  v4 = (v3 ^ 0x60756734) & (2 * (v3 & 0x4A756786)) ^ v3 & 0x4A756786;
  v5 = ((2 * (v3 ^ 0xE47DAC38)) ^ 0x5C11977C) & (v3 ^ 0xE47DAC38) ^ (2 * (v3 ^ 0xE47DAC38)) & 0xAE08CBBE;
  v6 = v5 ^ 0xA2084882;
  v7 = (v5 ^ 0x8008238) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0xB8232EF8) & v6 ^ (4 * v6) & 0xAE08CBBC;
  v9 = (v8 ^ 0xA8000AA0) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x608C106)) ^ 0xE08CBBE0) & (v8 ^ 0x608C106) ^ (16 * (v8 ^ 0x608C106)) & 0xAE08CBB0;
  return (*(v2 + 8 * ((203 * ((v3 ^ (2 * ((((v10 ^ 0xE00401E) << 8) & 0xAE080000 ^ 0x8080000 ^ (((v10 ^ 0xE00401E) << 8) ^ 0x8CB0000) & (v10 ^ 0xE00401E)) & (((v10 ^ 0xA0088B00) & (v9 << 8) ^ v9) << 16) ^ (v10 ^ 0xA0088B00) & (v9 << 8) ^ v9))) != 1249208198)) ^ v0)))();
}

uint64_t sub_1000BEDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v14 = a2 - 1;
  v15 = __ROR8__((v12 + v14) & ((a5 + 2373) ^ 0xFFFFFFFFFFFFDBD8), 8) - 0x6AF7234D0CC131D5;
  v16 = __ROR8__(v15 ^ 0x49E9423B6F16E7D2, 8);
  v15 ^= 0xE1AFA7ACF6E0968ELL;
  v17 = (v6 - ((v16 + v15) | v6) + ((v16 + v15) | v7)) ^ v8;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xF5A2F1B9B5D0B209;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v5 - ((v21 + v20) | v5) + ((v21 + v20) | v9)) ^ v10;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0x61459D2AF01F24F7;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v11;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x1A2AEBE44253AF03;
  *(a1 + v14) = *(v12 + v14) ^ (((__ROR8__(v28, 8) + (v28 ^ __ROR8__(v27, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v12 + v14) & 7))) ^ 0x3C;
  return (*(v13 + 8 * ((52 * (v14 == 0)) ^ a5)))();
}

uint64_t sub_1000BEFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v72 == 16257999)
  {
    v75 = STACK[0x7F8];
    v76 = *(STACK[0x7F8] + 8);
    v77 = STACK[0x658];
    v77[1] = v76;
    *v77 = *v75;
    return (*(v73 + 8 * (((v76 == 0) * ((v71 + 321) ^ (v71 + 372))) ^ (v71 + 3408))))();
  }

  else
  {
    if (v72 != 16215947)
    {
      JUMPOUT(0x1000BEF60);
    }

    return (*(v73 + 8 * (((*(STACK[0x5D8] + 8) == 0) * (((a71 - 1802) | 0xB2C) - 6190)) ^ (a71 - 1551))))();
  }
}

uint64_t sub_1000BF084(uint64_t a1, int a2)
{
  STACK[0x698] = 0;
  v4 = *(STACK[0x798] + 8);
  STACK[0x400] = 0;
  LODWORD(STACK[0x668]) = 0;
  LODWORD(STACK[0x804]) = a2;
  return (*(v3 + 8 * (((v4 == 0) * ((v2 - 2856) ^ (v2 - 2880))) | v2)))();
}

void sub_1000BF0D0(uint64_t a1)
{
  v1 = *(a1 + 32) - 33731311 * ((((2 * a1) | 0x8DB3BDAE) - a1 - 1188683479) ^ 0x7F2F14F4);
  __asm { BRAA            X2, X17 }
}

uint64_t sub_1000BF298(uint64_t a1, uint64_t a2)
{
  v9 = a2 + v7;
  v10 = a2 - 1;
  *(v4 + v10) = *(v5 + v10) ^ *(v6 + v10) ^ *(v9 + 3) ^ ((((v3 - 42) | 0x80) ^ 0xE6) * v10) ^ *(v2 + v10) ^ 0x3C;
  return (*(v8 + 8 * ((7111 * (v10 == 0)) ^ v3)))();
}

uint64_t sub_1000BF3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = (v7 ^ (a5 + 2936) ^ 0xFFFFFFFFFFFFF22CLL) + v6;
  v11 = *(v5 + v10 - 15);
  v12 = *(v5 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * ((2025 * ((v6 & 0xFFFFFFE0) == 32)) ^ (v8 + v7 + 336))))();
}

uint64_t sub_1000BF450@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x438];
  STACK[0x508] = *(v1 + 8 * a1);
  return (*(v1 + 8 * (((((v2 == 0) ^ (a1 + 93)) & 1) * (((a1 - 203) | 0x1582) - 6078)) ^ (a1 + 4702))))();
}

uint64_t sub_1000BF554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v72 == 16215947)
  {
    return (*(v73 + 8 * ((1267 * (*(STACK[0x5F0] + 97) == (((2 * v71) ^ 0x73) + v71 - 111))) ^ (v71 - 5109))))();
  }

  if (v72 != 16257999)
  {
    LODWORD(STACK[0x824]) = v72;
    JUMPOUT(0x1000BF658);
  }

  v74 = *(STACK[0x8D8] + 24);
  STACK[0x4B0] = v74;
  return (*(v73 + 8 * (((v74 == 0) * (a71 - 6072)) ^ (a71 + 1886))))();
}

uint64_t sub_1000BF698@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  STACK[0x3E8] = 0;
  STACK[0x7B8] = 0;
  return (*(v2 + 8 * (((v3 != 0) * ((((v1 - 7918) | 0x182) + 5661) ^ 0x17E0)) ^ v1)))();
}

uint64_t sub_1000BF6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x5F0];
  STACK[0x5D0] = *(a4 + 8 * v4);
  return sub_1001AD280(a4, v5);
}

uint64_t sub_1000BF7C0(uint64_t a1)
{
  v3 = v1 + 3447;
  v4 = (v3 - 379018183) & 0x16974A3E;
  v5 = LODWORD(STACK[0x438]) + 64;
  v6 = v5 + LODWORD(STACK[0x370]) == LODWORD(STACK[0x408]);
  LODWORD(STACK[0x57C]) = v4;
  v7 = *(v2 + 8 * ((v6 * (v4 ^ 0x3584)) ^ v3));
  LODWORD(STACK[0x438]) = v5;
  return v7(a1, 776, LODWORD(STACK[0x580]), 30175);
}

uint64_t sub_1000BF938()
{
  *(v0 + 24) = 107;
  *(v0 + 40) = 0;
  return sub_1000BF948();
}

uint64_t sub_1000BFB70(_DWORD *a1)
{
  v1 = 1317436891 * ((a1 - 1035088277 - 2 * (a1 & 0xC24DCE6B)) ^ 0x724E561D);
  v2 = a1[1] ^ v1;
  v3 = *a1 + v1;
  **(&off_100755B60 + v2 - 7178) = v3;
  return (*(*(&off_100755B60 + (v2 ^ 0x1C10)) + (v2 ^ (8 * (v3 == 538291948))) - 1))();
}

void sub_1000BFCB0()
{
  v0 = *(&off_100755B60 + ((-85 * (dword_10077E0F8 ^ 0xDF ^ dword_10077E220)) ^ byte_100683C50[byte_10069D200[(-85 * (dword_10077E0F8 ^ 0xDF ^ dword_10077E220))] ^ 0x71]) - 150);
  v1 = *(v0 - 4);
  v2 = *(&off_100755B60 + (byte_100694EA0[byte_10068DFC0[(-85 * ((dword_10077E220 - v1) ^ 0xDF))] ^ 1] ^ (-85 * ((dword_10077E220 - v1) ^ 0xDF))) + 14);
  v3 = (*v2 - v1) ^ &v8;
  v4 = 2054362027 * v3 - 0xB4207763EF64BDFLL;
  v5 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  *(v0 - 4) = v4;
  *v2 = v5;
  LOBYTE(v5) = -85 * (*(v0 - 4) ^ 0xDF ^ v5);
  **(&off_100755B60 + (byte_100683A50[byte_10069D108[v5 - 8] ^ 0xDD] ^ v5) - 123) = 16257999;
  v6 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E0F8) ^ 0xDF)) ^ byte_100683C50[byte_10069D200[(-85 * ((dword_10077E220 + dword_10077E0F8) ^ 0xDF))] ^ 0xE9]) + 135) - 8;
  v7 = (*&v6[8 * ((-85 * ((*v2 + *(v0 - 4)) ^ 0xDF)) ^ byte_100694EA0[byte_10068DFC0[(-85 * ((*v2 + *(v0 - 4)) ^ 0xDF))] ^ 1]) + 75576])(512, 0x100004077774924);
  *(*(&off_100755B60 + ((-85 * (*(v0 - 4) ^ 0xDF ^ *v2)) ^ byte_100694EA0[byte_10068DFC0[(-85 * (*(v0 - 4) ^ 0xDF ^ *v2))] ^ 0x67]) + 159) - 4) = v7;
  __asm { BRAA            X8, X17 }
}

void sub_1000BFEFC(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, unsigned int a13)
{
  *v15 = a1;
  *v14 = a2;
  a12 = a7;
  a13 = (v13 + 5993) ^ (1824088897 * (((&a11 | 0x220E8682) - &a11 + (&a11 & 0xDDF17978)) ^ 0x7A6755E0));
  (*(v16 + 8 * ((v13 + 2467) ^ 0x3758)))(&a11);
  JUMPOUT(0x1000BFF80);
}

uint64_t sub_1000C0024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = (((&a14 | 0x5B696319) - (&a14 & 0x5B696319)) ^ 0x300B07B) * v21;
  a16 = a10;
  a17 = &a11;
  a15 = v23 - 731899810;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674574891;
  v24 = (*(v19 + 8 * (v22 ^ 0x35F7)))(&a14);
  return (*(v19 + 8 * (((a14 == (((v22 - 1151) | 0x202) ^ (v20 + 2558))) * ((v22 + 949) ^ 0x16F7)) ^ v22)))(v24);
}

uint64_t sub_1000C0154@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>, int64x2_t a4@<Q2>, int8x16_t a5@<Q3>, int8x16_t a6@<Q4>, int8x16_t a7@<Q5>, int8x16_t a8@<Q6>, int8x16_t a9@<Q7>)
{
  v27 = v12 - v9 + v10;
  *&v28 = v27 - 15;
  *(&v28 + 1) = v27 - 16;
  *&STACK[0x3B0] = v28;
  v29.i64[0] = v27 - 13;
  v29.i64[1] = v27 - 14;
  v30.i64[0] = v27 - 11;
  v30.i64[1] = v27 - 12;
  v31.i64[0] = v27 - 7;
  v31.i64[1] = v27 - 8;
  v32.i64[0] = v27 - 3;
  v32.i64[1] = v27 - 4;
  v33 = v12 - v9 - 1;
  v34.i64[0] = v10 + v33;
  v34.i64[1] = v27 - 2;
  v35.i64[0] = v27 - 5;
  v35.i64[1] = v27 + v16 + a1;
  v36 = vandq_s8(v35, a2);
  v37 = vandq_s8(v34, a2);
  v38 = vandq_s8(v32, a2);
  v39 = vandq_s8(v31, a2);
  v40 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v42 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), a4), a5);
  v43 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), a4), a5);
  v44 = veorq_s8(v43, a6);
  v45 = veorq_s8(v42, a6);
  v46 = veorq_s8(v42, a7);
  v47 = veorq_s8(v43, a7);
  v48 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v46), a8);
  v49 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v47), a8);
  v50 = vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL);
  v51 = veorq_s8(v49, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v52 = veorq_s8(v48, v50);
  v53 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v54 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v52);
  v55 = vaddq_s64(v53, v51);
  v56 = veorq_s8(vaddq_s64(vsubq_s64(v55, vandq_s8(vaddq_s64(v55, v55), a9)), v17), v18);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(v54, vandq_s8(vaddq_s64(v54, v54), a9)), v17), v18);
  v58 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v59 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v60 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59);
  v62 = veorq_s8(vaddq_s64(v60, v58), v19);
  v63 = veorq_s8(v61, v19);
  v64 = vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL);
  v65 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v66 = veorq_s8(v62, v64);
  v67 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v68 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v66);
  v69 = veorq_s8(vaddq_s64(v67, v65), v20);
  v70 = veorq_s8(v68, v20);
  v71 = vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL);
  v72 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v73 = veorq_s8(v69, v71);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = veorq_s8(vaddq_s64(v74, v72), v21);
  v77 = veorq_s8(v75, v21);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v77, v77), v22), v77), v23), v24);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v76, v76), v22), v76), v23), v24);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v81 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v80), v25);
  v83 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v81), v25);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v85 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v86 = veorq_s8(v82, v84);
  v84.i64[0] = v27 - 9;
  v84.i64[1] = v27 - 10;
  v87 = vandq_s8(vaddq_s64(v40, a4), a5);
  v173.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v86), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a3)));
  v173.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v85), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a3)));
  v88 = veorq_s8(v87, a6);
  v89 = veorq_s8(v87, a7);
  v90 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89), a8);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(v92, vandq_s8(vaddq_s64(v92, v92), a9)), v17), v18);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), v19);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), v20);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v21);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v99, v99), v22), v99), v23), v24);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v25);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL)));
  v104 = vandq_s8(v84, a2);
  v105 = vandq_s8(vaddq_s64(v41, a4), a5);
  v173.val[0] = vshlq_u64(veorq_s8(v103, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a3)));
  v106 = veorq_s8(v105, a6);
  v107 = veorq_s8(v105, a7);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), a8);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(v110, vandq_s8(vaddq_s64(v110, v110), a9)), v17), v18);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v19);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v20);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v21);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v117, v117), v22), v117), v23), v24);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v25);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v123 = vandq_s8(v30, a2);
  v124 = vaddq_s64(v122, v121);
  v125 = vandq_s8(v29, a2);
  v173.val[2] = vshlq_u64(veorq_s8(v124, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a3)));
  v126 = vandq_s8(*&STACK[0x3B0], a2);
  v127 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v129 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), a4), a5);
  v130 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), a4), a5);
  v126.i64[0] = vqtbl4q_s8(v173, *&STACK[0x3A0]).u64[0];
  v173.val[0] = veorq_s8(v130, a6);
  v173.val[1] = veorq_s8(v129, a6);
  v173.val[2] = veorq_s8(v129, a7);
  v173.val[3] = veorq_s8(v130, a7);
  v173.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[1], 0x38uLL), v173.val[1], 8uLL), v173.val[2]), a8);
  v173.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[0], 0x38uLL), v173.val[0], 8uLL), v173.val[3]), a8);
  v131 = vsraq_n_u64(vshlq_n_s64(v173.val[2], 3uLL), v173.val[2], 0x3DuLL);
  v173.val[2] = veorq_s8(v173.val[0], vsraq_n_u64(vshlq_n_s64(v173.val[3], 3uLL), v173.val[3], 0x3DuLL));
  v173.val[3] = veorq_s8(v173.val[1], v131);
  v132 = vsraq_n_u64(vshlq_n_s64(v173.val[0], 0x38uLL), v173.val[0], 8uLL);
  v173.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[1], 0x38uLL), v173.val[1], 8uLL), v173.val[3]);
  v173.val[1] = vaddq_s64(v132, v173.val[2]);
  v173.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v173.val[1], vandq_s8(vaddq_s64(v173.val[1], v173.val[1]), a9)), v17), v18);
  v173.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v173.val[0], vandq_s8(vaddq_s64(v173.val[0], v173.val[0]), a9)), v17), v18);
  v133 = vsraq_n_u64(vshlq_n_s64(v173.val[2], 3uLL), v173.val[2], 0x3DuLL);
  v173.val[2] = veorq_s8(v173.val[0], vsraq_n_u64(vshlq_n_s64(v173.val[3], 3uLL), v173.val[3], 0x3DuLL));
  v173.val[3] = veorq_s8(v173.val[1], v133);
  v134 = vsraq_n_u64(vshlq_n_s64(v173.val[0], 0x38uLL), v173.val[0], 8uLL);
  v173.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[1], 0x38uLL), v173.val[1], 8uLL), v173.val[3]);
  v173.val[1] = veorq_s8(vaddq_s64(v134, v173.val[2]), v19);
  v173.val[0] = veorq_s8(v173.val[0], v19);
  v135 = vsraq_n_u64(vshlq_n_s64(v173.val[2], 3uLL), v173.val[2], 0x3DuLL);
  v173.val[2] = veorq_s8(v173.val[0], vsraq_n_u64(vshlq_n_s64(v173.val[3], 3uLL), v173.val[3], 0x3DuLL));
  v173.val[3] = veorq_s8(v173.val[1], v135);
  v136 = vsraq_n_u64(vshlq_n_s64(v173.val[0], 0x38uLL), v173.val[0], 8uLL);
  v173.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[1], 0x38uLL), v173.val[1], 8uLL), v173.val[3]);
  v173.val[1] = veorq_s8(vaddq_s64(v136, v173.val[2]), v20);
  v173.val[0] = veorq_s8(v173.val[0], v20);
  v137 = vsraq_n_u64(vshlq_n_s64(v173.val[2], 3uLL), v173.val[2], 0x3DuLL);
  v173.val[2] = veorq_s8(v173.val[0], vsraq_n_u64(vshlq_n_s64(v173.val[3], 3uLL), v173.val[3], 0x3DuLL));
  v173.val[3] = veorq_s8(v173.val[1], v137);
  v138 = vsraq_n_u64(vshlq_n_s64(v173.val[0], 0x38uLL), v173.val[0], 8uLL);
  v173.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[1], 0x38uLL), v173.val[1], 8uLL), v173.val[3]);
  v173.val[1] = veorq_s8(vaddq_s64(v138, v173.val[2]), v21);
  v173.val[0] = veorq_s8(v173.val[0], v21);
  v173.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v173.val[0], v173.val[0]), v22), v173.val[0]), v23), v24);
  v173.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v173.val[1], v173.val[1]), v22), v173.val[1]), v23), v24);
  v173.val[2] = veorq_s8(v173.val[1], vsraq_n_u64(vshlq_n_s64(v173.val[2], 3uLL), v173.val[2], 0x3DuLL));
  v173.val[3] = veorq_s8(v173.val[0], vsraq_n_u64(vshlq_n_s64(v173.val[3], 3uLL), v173.val[3], 0x3DuLL));
  v173.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[1], 0x38uLL), v173.val[1], 8uLL), v173.val[2]), v25);
  v173.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[0], 0x38uLL), v173.val[0], 8uLL), v173.val[3]), v25);
  v139 = vsraq_n_u64(vshlq_n_s64(v173.val[2], 3uLL), v173.val[2], 0x3DuLL);
  v173.val[2] = veorq_s8(v173.val[0], vsraq_n_u64(vshlq_n_s64(v173.val[3], 3uLL), v173.val[3], 0x3DuLL));
  v140 = vandq_s8(vaddq_s64(v127, a4), a5);
  v173.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[1], 0x38uLL), v173.val[1], 8uLL), veorq_s8(v173.val[1], v139)), v26), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3B0], 3uLL), a3)));
  v173.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173.val[0], 0x38uLL), v173.val[0], 8uLL), v173.val[2]), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a3)));
  v141 = veorq_s8(v140, a6);
  v142 = veorq_s8(v140, a7);
  v143 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142), a8);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(v145, vandq_s8(vaddq_s64(v145, v145), a9)), v17), v18);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v148 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147), v19);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149), v20);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), v21);
  v153 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v152, v152), v22), v152), v23), v24);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154), v25);
  v156 = vandq_s8(vaddq_s64(v128, a4), a5);
  v173.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a3)));
  v157 = veorq_s8(v156, a6);
  v158 = veorq_s8(v156, a7);
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), a8);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160);
  v162 = veorq_s8(vaddq_s64(vsubq_s64(v161, vandq_s8(vaddq_s64(v161, v161), a9)), v17), v18);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v19);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), v20);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), v21);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v168, v168), v22), v168), v23), v24);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v25);
  v173.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v84, 3uLL), a3)));
  v126.i64[1] = vqtbl4q_s8(v173, *&STACK[0x3A0]).u64[0];
  v173.val[0] = vrev64q_s8(*(v11 + v33));
  v173.val[1].i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v173.val[1].i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v173.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v173.val[0], v173.val[0], 8uLL), v173.val[1]), v126));
  *(v10 + v33 - 15) = vextq_s8(v173.val[0], v173.val[0], 8uLL);
  return (*(v14 + 8 * (((v9 + 16 == v12) * v13) ^ v15)))();
}

void sub_1000C0A80(int a1@<W8>, uint64_t a2, int a3, int a4, uint64_t a5, int a6, int a7, uint64_t a8, char a9, uint64_t a10, int a11)
{
  v15 = a1 ^ (v14 + 2822);
  *v12 = a4;
  *v11 = a7;
  a11 = (v15 + 954966477) ^ (1824088897 * ((&a9 + 2137437616 - 2 * (&a9 & 0x7F66B5B0)) ^ 0x270F66D2));
  a10 = a5;
  (*(v13 + 8 * (v15 + 954967743)))(&a9);
  JUMPOUT(0x1000878D0);
}

uint64_t sub_1000C0BCC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v13 = 169 * (a1 ^ v11);
  v14 = a1 - 570102757;
  a10 = a1 - 1710126949 * ((&a10 - 1735959748 - 2 * (&a10 & 0x98875B3C)) ^ 0xAA9C00AC) - 93781274;
  v15 = (*(v12 + 8 * (a1 ^ 0x21FB3F80u)))(&a10);
  return (*(v12 + 8 * ((8858 * (a11 == (v13 ^ 0xF8163E))) ^ v14)))(v15);
}

uint64_t sub_1000C0C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char *a21, int a22, unsigned int a23)
{
  a21 = &a18;
  a23 = 1317436891 * ((((2 * &a21) | 0x703EA756) - &a21 + 1205906517) ^ 0x81CCBDD) + 8154;
  v25 = (*(v24 + 77096))(&a21);
  return (*(v24 + 8 * ((13189 * (a22 == 16257999)) ^ v23)))(v25);
}

uint64_t sub_1000C0D18@<X0>(int a1@<W8>)
{
  STACK[0xB10] = v1;
  v3 = STACK[0x720];
  STACK[0xB18] = STACK[0x720];
  return (*(v2 + 8 * ((3656 * (v1 - v3 > ((241 * (a1 ^ 0x4D6u)) ^ 0x2DAuLL))) ^ a1)))();
}

void sub_1000C0D6C(uint64_t a1)
{
  *(v2 - 240) = v1;
  *(v2 - 216) = a1;
  JUMPOUT(0x100092F04);
}

uint64_t sub_1000C0E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  if (v47)
  {
    v48 = a4 == 0;
  }

  else
  {
    v48 = 1;
  }

  v49 = v48;
  LODWORD(a16) = v46 ^ 0xDD5;
  LODWORD(a28) = -42900;
  return (*(a2 + 8 * (((v46 ^ 0x1925 ^ ((v46 ^ 0x1E1E) - 1856224986) & 0x6EA3B7FB) * v49) ^ v46 ^ 0x1E1E)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_1000C0F0C()
{
  v2 = 863 * (v0 ^ 0x2026);
  v8 = v6;
  v9 = (v2 + 2305) ^ (1824088897 * (((&v7 ^ 0xC54180C9) + 1559224705 - 2 * ((&v7 ^ 0xC54180C9) & 0x5CEFE181)) ^ 0xC1C7B22A));
  (*(v1 + 8 * (v2 + 3571)))(&v7);
  v9 = ((v2 ^ 0x3D2) + 3151) ^ (1824088897 * ((2 * (&v7 & 0x360D8A38) - &v7 + 1240626630) ^ 0x119BA6A4));
  v8 = v4;
  (*(v1 + 8 * (v2 ^ 0x3215)))(&v7);
  return (v2 ^ 0x4BFEA469) + (v5 ^ 0xB4F95FDF) + ((2 * v5) & 0x69F2BFBE) - 16257999;
}

uint64_t sub_1000C10C8@<X0>(int a1@<W8>)
{
  v2 = a1 + 1662;
  v3 = a1 + 3057;
  v4 = (*(v1 + 8 * (a1 + 6608)))(32, 0x103004054B5FA7DLL);
  STACK[0x690] = v4;
  return (*(v1 + 8 * ((((v2 ^ 0xF ^ (v4 == 0)) & 1) * (v3 ^ 0x173A)) ^ v2)))();
}

uint64_t sub_1000C11A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = STACK[0x350];
  if (LODWORD(STACK[0x350]) == 43491)
  {
    return (*(a72 + 8 * ((a71 + 765) ^ (360 * (LODWORD(STACK[0x2F0]) != LODWORD(STACK[0x370]))))))();
  }

  if (v72 == 28239)
  {
    v74 = LODWORD(STACK[0xAF8]) - ((2 * LODWORD(STACK[0xAF8])) & 0x4AB7A8BE) + ((a71 - 234104805) & 0xDF41FBF ^ 0xFFFFF063) - 1520708510 == -1520708513;
    return (*(a72 + 8 * ((v74 | (8 * v74)) ^ (a71 + 1810))))();
  }

  else if (v72 == 47633)
  {
    return (*(a72 + 8 * (((LODWORD(STACK[0xAE0]) == 197499227) * (a71 + 3681)) ^ (a71 - 4373))))();
  }

  else
  {
    return (*(a72 + 8 * (a71 ^ 0x17CB ^ (a71 + 3087))))(a1, 197499219);
  }
}

uint64_t sub_1000C1514()
{
  STACK[0x678] = v0;
  STACK[0x610] = *(v2 + 8 * (v1 - 8526));
  return sub_1000FA3B4(v1 - 972);
}

uint64_t sub_1000C1534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v24 = *(a21 + 16);
  *(v23 - 153) = v24[15] - ((2 * v24[15]) & 0x78) + 60;
  *(v23 - 154) = v24[14] - ((2 * v24[14]) & 0x78) + 60;
  *(v23 - 155) = v24[13] - ((v24[13] << (v22 + 56 + ((v22 + 97) | 0x90) + 64)) & 0x78) + 60;
  *(v23 - 156) = v24[12] - ((2 * v24[12]) & 0x78) + 60;
  *(v23 - 157) = v24[11] - ((2 * v24[11]) & 0x78) + 60;
  *(v23 - 158) = v24[10] - ((2 * v24[10]) & 0x78) + 60;
  *(v23 - 159) = v24[9] - ((2 * v24[9]) & 0x78) + 60;
  *(v23 - 160) = v24[8] - ((2 * v24[8]) & 0x78) + 60;
  *(v23 - 161) = v24[7] - ((2 * v24[7]) & 0x78) + 60;
  *(v23 - 162) = v24[6] - ((2 * v24[6]) & 0x78) + 60;
  *(v23 - 163) = v24[5] - ((2 * v24[5]) & 0x78) + 60;
  *(v23 - 164) = v24[4] - ((2 * v24[4]) & 0x78) + 60;
  *(v23 - 165) = v24[3] - ((2 * v24[3]) & 0x78) + 60;
  *(v23 - 166) = v24[2] - ((2 * v24[2]) & 0x78) + 60;
  *(v23 - 167) = v24[1] - ((2 * v24[1]) & 0x78) + 60;
  *(v23 - 168) = *v24 - ((2 * *v24) & 0x78) + 60;
  *(v23 - 148) = v22 - 956911519 * (((v23 - 152) & 0xF4C4C6ED | ~((v23 - 152) | 0xF4C4C6ED)) ^ 0xE1AA4917) + 1986974298;
  v25 = (*(v21 + 8 * (v22 ^ 0x2C78)))(v23 - 152);
  return (*(v21 + 8 * ((47 * (*(v23 - 152) == 222)) ^ v22)))(v25);
}