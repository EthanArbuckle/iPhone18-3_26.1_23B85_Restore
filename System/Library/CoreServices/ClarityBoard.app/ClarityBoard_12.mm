uint64_t sub_1001EC2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((2870 * (v5 == ((v3 + 329) | 0x1161u) - 6013)) ^ v3)))();
}

uint64_t sub_1001EC2E8@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, int a3@<W8>)
{
  LODWORD(STACK[0x310]) = v3;
  LODWORD(STACK[0x2F0]) = 16257999;
  STACK[0x300] = *(v4 + 8 * (a3 - 925));
  STACK[0x8B8] = 0;
  return (*(v4 + 8 * (((STACK[0x8B8] > 0x1F) * (((a3 + 4168) ^ 0xF18) - 6395)) ^ (a3 + 5440))))(STACK[0x2E0], 1355549129, 0x59056B86A61A1499, a1, a2, 0x5BBB73835736972BLL, 0x43E0E1A1BF0A5C84, 0x5E0F8F2F207AD1BELL);
}

uint64_t sub_1001EC5B0@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  return sub_100214C2C();
}

uint64_t sub_1001EC604@<X0>(int a1@<W8>)
{
  STACK[0x908] = v1;
  v3 = STACK[0x6A0];
  STACK[0x910] = STACK[0x6A0];
  return (*(v2 + 8 * (((v1 - v3 > ((a1 - 1341696508) & 0x4FF8B7F6) - 5613) * (a1 + 2446)) ^ a1)))();
}

uint64_t sub_1001EC774()
{
  v4 = (((*(v1 + 16) ^ 0x8F33544F) + ((v2 + 1578877271) & 0xA1E435F7 ^ 0x1C84CC79)) ^ ((*(v1 + 16) ^ ((v2 ^ 0xBC6) - 1779925387)) + 106896920) ^ ((*(v1 + 16) ^ 0xE5243866) + 1989391784)) + 975907298;
  v5 = v0 - 1502372831 > v4;
  v6 = (v0 > 0x598C63DE) ^ (v4 < 0xA6739C21);
  v7 = v5;
  if (v6)
  {
    v8 = v0 > 0x598C63DE;
  }

  else
  {
    v8 = v7;
  }

  return (*(v3 + 8 * ((419 * v8) ^ v2)))();
}

uint64_t sub_1001EC8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v42 = *(a40 + 104);
  v43 = v40;
  v44 = v40 ^ 0xAB4;
  v45 = v40 - 881;
  v46 = STACK[0x664];
  v47 = (v42 ^ 0xE3E3A320) & (2 * (v42 & 0xF3E3A045)) ^ v42 & 0xF3E3A045;
  v48 = ((2 * ((v44 + 61179087) ^ v42)) ^ 0xE08C07CA) & ((v44 + 61179087) ^ v42) ^ (2 * ((v44 + 61179087) ^ v42)) & 0xF04603E4;
  v49 = v48 ^ 0x10420025;
  v50 = (v48 ^ 0xC0040300) & (4 * v47) ^ v47;
  v51 = ((4 * v49) ^ 0xC1180F94) & v49 ^ (4 * v49) & 0xF04603E4;
  v52 = (v51 ^ 0xC0000381) & (16 * v50) ^ v50;
  v53 = ((16 * (v51 ^ 0x30460061)) ^ 0x4603E50) & (v51 ^ 0x30460061) ^ (16 * (v51 ^ 0x30460061)) & 0xF04603E0;
  v54 = v52 ^ 0xF04603E5 ^ (v53 ^ 0x400200) & (v52 << 8);
  v55 = LODWORD(STACK[0x664]) ^ 0xBFFFF5EF;
  v56 = 1358806181 * ((~((v41 - 232) | 0x3C91321018147A5BLL) + ((v41 - 232) & 0x3C91321018147A5BLL)) ^ 0x96B47DFCD8C4E927);
  v57 = (*(a40 + 32) + 0x5771A9AFF3F1E850 + (~(2 * *(a40 + 32)) | 0x511CACA0181C2F61)) ^ v56;
  *(v41 - 184) = STACK[0x430];
  *(v41 - 224) = v57;
  *(v41 - 216) = &STACK[0x710];
  *(v41 - 232) = &STACK[0x564];
  *(v41 - 208) = v55 - v56 + ((2 * v46) & 0x7FFFEBDE) + 1573595992;
  *(v41 - 204) = v56 ^ v42 ^ (2 * ((v54 << 16) & 0x70460000 ^ v54 ^ ((v54 << 16) ^ 0x3E50000) & (((v53 ^ 0xF00601A5) << 8) & 0xF0460000 ^ 0x30440000 ^ (((v53 ^ 0xF00601A5) << 8) ^ 0x46030000) & (v53 ^ 0xF00601A5)))) ^ 0xDAF33220;
  *(v41 - 200) = v43 - v56 - 1631620343;
  *(v41 - 192) = v56 + (((a37 ^ 0x6883E431) - 1753474097) ^ ((a37 ^ 0xA0D0C34C) + 1596931252) ^ ((a37 ^ 0x7C79DE9B) - 2088361627)) - 497949324;
  (*(a4 + 8 * (v43 ^ 0x31CE)))(v41 - 232);
  v58 = 956911519 * ((((v41 - 232) | 0x25CFF1D9) - (v41 - 232) + ((v41 - 232) & 0xDA300E20)) ^ 0xCF5E81DC);
  *(v41 - 224) = -1427045090 - v58 + v43 + 1998;
  *(v41 - 232) = a36 ^ v58;
  v59 = (*(STACK[0x3E8] + 8 * (v43 + 4516)))(v41 - 232);
  return (*(STACK[0x3E8] + 8 * ((489 * (*(v41 - 228) != 1664650993)) ^ v45)))(v59);
}

void sub_1001ED1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, unsigned int a18)
{
  a17 = a13;
  a18 = (v20 - 1654313970) ^ (((2 * (&a16 & 0xBE04D90) - &a16 + 1948234344) ^ 0x2C76610A) * v18);
  (*(v19 + 8 * (v20 ^ 0x629AD100)))(&a16);
  JUMPOUT(0x1001ED260);
}

uint64_t sub_1001ED2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, int a17, uint64_t a18, uint64_t a19)
{
  v24 = 1875091903 * (((~&a15 & 0xFB76A668) - (~&a15 | 0xFB76A669)) ^ 0xCD0325EA);
  a18 = a12;
  a16 = ((2 * v21) & 0xFDBF7FD6) + (v21 ^ 0xFEDFA7D9 ^ (v23 - 1139)) + 557643455 + v24;
  a17 = v24 + v23 + 391;
  (*(v22 + 8 * (v23 + 2312)))(&a15);
  v25 = 1824088897 * (&a15 ^ 0x5869D362);
  a18 = v19;
  a19 = a12;
  a15 = v25 + v23 - 3576;
  a17 = (v20 ^ 0x6FBEFBDE) + ((2 * v20) & 0xDF7DF7BC) - v25 - 555356500;
  v26 = (*(v22 + 8 * (v23 + 2298)))(&a15);
  return (*(v22 + 8 * ((15841 * (a16 == 16257999)) ^ v23)))(v26);
}

uint64_t sub_1001ED42C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xA48] = v4;
  *(a1 + 16) = v2 + v3 + 10;
  v7 = (*(v5 + 8 * ((v1 - 7454) ^ 0x22A0)))();
  v8 = STACK[0x400];
  *(a1 + 24) = v7;
  return (*(v8 + 8 * (((v7 == 0) * (((34 * ((v1 - 7454) ^ 0x612) - 5139) | 0x122) ^ 0x1132)) ^ (v1 - 7454))))();
}

uint64_t sub_1001ED514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 8 * (v4 + 5201)))(32, 0x103004054B5FA7DLL);
  STACK[0x880] = v6;
  return (*(a4 + 8 * ((((((v4 - 4365) | 0x129B) ^ 0xFFFFF963) + ((v4 - 1496841442) & 0x5937FFF5)) * (v6 == 0)) ^ v4)))();
}

uint64_t sub_1001ED5A0()
{
  v2 = (*(v1 + 8 * (v0 + 3982)))();
  v3 = STACK[0x330];
  v4 = STACK[0x390];
  STACK[0x728] -= 80;
  return (*(v3 + 8 * ((13533 * (v4 == ((v0 - 5339) ^ 0xF812D4))) ^ (v0 - 453))))(v2);
}

uint64_t sub_1001ED60C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  *v17 = v13;
  v19 = v15 + ((a3 - 7985) ^ 0x126F) + a13 - ((((a3 - 7985) | 0x89) + v16) & (2 * a13)) + 3330 == v14;
  return (*(v18 + 8 * ((8 * v19) | (16 * v19) | a3)))();
}

uint64_t sub_1001ED6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  (*(v27 + 8 * a13))(a14 + a15, 0x100004077774924);
  v28 = (*(v27 + 8 * SHIDWORD(a12)))();
  *v26 = v28;
  v29 = (v28 ^ (v28 >> 30)) * HIDWORD(a11) + 1;
  v26[1] = v29;
  return (*(v27 + 8 * SHIDWORD(a13)))(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1001ED768@<X0>(int a1@<W8>)
{
  v2 = *(STACK[0x470] + 24);
  STACK[0x828] = v2;
  return (*(v1 + 8 * ((7 * (((v2 == 0) ^ (79 * (a1 ^ 0xF5))) & 1)) ^ a1)))();
}

uint64_t sub_1001ED814()
{
  if (STACK[0x830])
  {
    v2 = STACK[0x4B0] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  return (*(v1 + 8 * ((19 * (((v0 - 1) ^ v3) & 1)) ^ (v0 + 2526))))();
}

uint64_t sub_1001ED910(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = STACK[0x370] + v70;
  v72 = *(v71 - 16);
  *&v73 = v71 - 15;
  *(&v73 + 1) = v71 - 16;
  *&STACK[0x220] = v73;
  *&STACK[0x230] = v72;
  *&v73 = v71 - 13;
  *(&v73 + 1) = v71 - 14;
  *&STACK[0x210] = v73;
  *&v73 = v71 - 11;
  *(&v73 + 1) = v71 - 12;
  *&STACK[0x320] = v73;
  v74.i64[0] = v71 - 7;
  v74.i64[1] = v71 - 8;
  v75.i64[0] = v71 - 5;
  v75.i64[1] = v71 - 6;
  v76.i64[0] = v71 - 1;
  v76.i64[1] = v71 - 2;
  v77.i64[0] = v71 + ((a4 + 4148) ^ 0xFFFFFFFFFFFFE701);
  v77.i64[1] = v71 - 4;
  v78 = vandq_s8(v77, *&STACK[0x310]);
  v79 = vandq_s8(v76, *&STACK[0x310]);
  v80 = vandq_s8(v75, *&STACK[0x310]);
  v81 = vandq_s8(v74, *&STACK[0x310]);
  v82 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v85 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v86 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x340], v85), *&STACK[0x330]), vorrq_s8(vaddq_s64(v85, *&STACK[0x360]), *&STACK[0x350]));
  v87 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x340], v84), *&STACK[0x330]), vorrq_s8(vaddq_s64(v84, *&STACK[0x360]), *&STACK[0x350]));
  v88 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x340], v83), *&STACK[0x330]), vorrq_s8(vaddq_s64(v83, *&STACK[0x360]), *&STACK[0x350]));
  v89 = vsubq_s64(*&STACK[0x300], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x340], v82), *&STACK[0x330]), vorrq_s8(vaddq_s64(v82, *&STACK[0x360]), *&STACK[0x350])));
  v90 = vsubq_s64(*&STACK[0x300], v88);
  v91 = veorq_s8(v90, *&STACK[0x2F0]);
  v92 = veorq_s8(v89, *&STACK[0x2F0]);
  v93 = veorq_s8(v89, *&STACK[0x2E0]);
  v94 = veorq_s8(v90, *&STACK[0x2E0]);
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), *&STACK[0x2D0]);
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v94), *&STACK[0x2D0]);
  v97 = vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL);
  v98 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v99 = veorq_s8(v95, v97);
  v100 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v99);
  v102 = vaddq_s64(v100, v98);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v102, v102), *&STACK[0x2C0]), v102), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v104 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v101, v101), *&STACK[0x2C0]), v101), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v106 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v107 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v106);
  v109 = veorq_s8(vaddq_s64(v107, v105), *&STACK[0x290]);
  v110 = veorq_s8(v108, *&STACK[0x290]);
  v111 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v112 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v113 = veorq_s8(v109, v111);
  v114 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v113);
  v116 = veorq_s8(vaddq_s64(v114, v112), *&STACK[0x280]);
  v117 = veorq_s8(v115, *&STACK[0x280]);
  v118 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v119 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v120 = veorq_s8(v116, v118);
  v121 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v120);
  v123 = vaddq_s64(v121, v119);
  v124 = veorq_s8(v123, *&STACK[0x270]);
  v125 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v123, a69), a68), v124), vandq_s8(v124, a69));
  v126 = veorq_s8(v122, *&STACK[0x270]);
  v127 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v122, a69), a68), v126), vandq_s8(v126, a69)), *&STACK[0x260]);
  v128 = veorq_s8(v125, *&STACK[0x260]);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v130 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v131 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), *&STACK[0x250]);
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v130), *&STACK[0x250]);
  v133 = vdupq_n_s64(0x38uLL);
  v134 = vsubq_s64(*&STACK[0x300], v87);
  v232.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL))), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v74, 3uLL), v133)));
  v232.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL))), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v75, 3uLL), v133)));
  v135 = veorq_s8(v134, *&STACK[0x2F0]);
  v136 = veorq_s8(v134, *&STACK[0x2E0]);
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136), *&STACK[0x2D0]);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v139, v139), *&STACK[0x2C0]), v139), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v142 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141), *&STACK[0x290]);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143), *&STACK[0x280]);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145);
  v147 = veorq_s8(v146, *&STACK[0x270]);
  v148 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v146, a69), a68), v147), vandq_s8(v147, a69)), *&STACK[0x260]);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149), *&STACK[0x250]);
  v151.i64[0] = v71 - 9;
  v151.i64[1] = v71 - 10;
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL)));
  v153 = vandq_s8(v151, *&STACK[0x310]);
  v154 = vsubq_s64(*&STACK[0x300], v86);
  v232.val[0] = vshlq_u64(veorq_s8(v152, *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v76, 3uLL), v133)));
  v155 = veorq_s8(v154, *&STACK[0x2F0]);
  v156 = veorq_s8(v154, *&STACK[0x2E0]);
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156), *&STACK[0x2D0]);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158);
  v160 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v159, v159), *&STACK[0x2C0]), v159), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), *&STACK[0x290]);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), *&STACK[0x280]);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(v166, *&STACK[0x270]);
  v168 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v166, a69), a68), v167), vandq_s8(v167, a69)), *&STACK[0x260]);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), *&STACK[0x250]);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v173 = vandq_s8(*&STACK[0x320], *&STACK[0x310]);
  v174 = vaddq_s64(v172, v171);
  v175 = vandq_s8(*&STACK[0x210], *&STACK[0x310]);
  v232.val[1] = vshlq_u64(veorq_s8(v174, *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v77, 3uLL), v133)));
  v176 = vandq_s8(*&STACK[0x220], *&STACK[0x310]);
  v177 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v178 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v179 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v180 = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v181 = vsubq_s64(*&STACK[0x300], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x340], v177), *&STACK[0x330]), vorrq_s8(vaddq_s64(v177, *&STACK[0x360]), *&STACK[0x350])));
  v182 = vsubq_s64(*&STACK[0x300], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x340], v178), *&STACK[0x330]), vorrq_s8(vaddq_s64(v178, *&STACK[0x360]), *&STACK[0x350])));
  v178.i64[0] = vqtbl4q_s8(v232, a67).u64[0];
  v232.val[0] = veorq_s8(v182, *&STACK[0x2F0]);
  v232.val[1] = veorq_s8(v181, *&STACK[0x2F0]);
  v183 = veorq_s8(v181, *&STACK[0x2E0]);
  v184 = veorq_s8(v182, *&STACK[0x2E0]);
  v232.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232.val[1], 0x38uLL), v232.val[1], 8uLL), v183), *&STACK[0x2D0]);
  v232.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232.val[0], 0x38uLL), v232.val[0], 8uLL), v184), *&STACK[0x2D0]);
  v232.val[2] = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v185 = veorq_s8(v232.val[0], vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v186 = veorq_s8(v232.val[1], v232.val[2]);
  v232.val[2] = vsraq_n_u64(vshlq_n_s64(v232.val[0], 0x38uLL), v232.val[0], 8uLL);
  v232.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232.val[1], 0x38uLL), v232.val[1], 8uLL), v186);
  v232.val[1] = vaddq_s64(v232.val[2], v185);
  v232.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v232.val[1], v232.val[1]), *&STACK[0x2C0]), v232.val[1]), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v232.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v232.val[0], v232.val[0]), *&STACK[0x2C0]), v232.val[0]), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v232.val[2] = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v187 = veorq_s8(v232.val[0], vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v188 = veorq_s8(v232.val[1], v232.val[2]);
  v232.val[2] = vsraq_n_u64(vshlq_n_s64(v232.val[0], 0x38uLL), v232.val[0], 8uLL);
  v232.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232.val[1], 0x38uLL), v232.val[1], 8uLL), v188);
  v232.val[1] = veorq_s8(vaddq_s64(v232.val[2], v187), *&STACK[0x290]);
  v232.val[0] = veorq_s8(v232.val[0], *&STACK[0x290]);
  v232.val[2] = vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL);
  v189 = veorq_s8(v232.val[0], vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v190 = veorq_s8(v232.val[1], v232.val[2]);
  v232.val[2] = vsraq_n_u64(vshlq_n_s64(v232.val[0], 0x38uLL), v232.val[0], 8uLL);
  v232.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232.val[1], 0x38uLL), v232.val[1], 8uLL), v190);
  v232.val[1] = veorq_s8(vaddq_s64(v232.val[2], v189), *&STACK[0x280]);
  v232.val[0] = veorq_s8(v232.val[0], *&STACK[0x280]);
  v232.val[2] = vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL);
  v191 = veorq_s8(v232.val[0], vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v192 = veorq_s8(v232.val[1], v232.val[2]);
  v232.val[2] = vsraq_n_u64(vshlq_n_s64(v232.val[0], 0x38uLL), v232.val[0], 8uLL);
  v232.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232.val[1], 0x38uLL), v232.val[1], 8uLL), v192);
  v232.val[1] = vaddq_s64(v232.val[2], v191);
  v232.val[2] = veorq_s8(v232.val[1], *&STACK[0x270]);
  v232.val[1] = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v232.val[1], a69), a68), v232.val[2]), vandq_s8(v232.val[2], a69));
  v232.val[2] = veorq_s8(v232.val[0], *&STACK[0x270]);
  v232.val[0] = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v232.val[0], a69), a68), v232.val[2]), vandq_s8(v232.val[2], a69)), *&STACK[0x260]);
  v232.val[1] = veorq_s8(v232.val[1], *&STACK[0x260]);
  v193 = veorq_s8(v232.val[1], vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v194 = veorq_s8(v232.val[0], vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v232.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232.val[1], 0x38uLL), v232.val[1], 8uLL), v193), *&STACK[0x250]);
  v232.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232.val[0], 0x38uLL), v232.val[0], 8uLL), v194), *&STACK[0x250]);
  v195 = vsubq_s64(*&STACK[0x300], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x340], v179), *&STACK[0x330]), vorrq_s8(vaddq_s64(v179, *&STACK[0x360]), *&STACK[0x350])));
  v232.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232.val[1], 0x38uLL), v232.val[1], 8uLL), veorq_s8(v232.val[1], vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL))), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x220], 3uLL), v133)));
  v232.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232.val[0], 0x38uLL), v232.val[0], 8uLL), veorq_s8(v232.val[0], vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL))), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x210], 3uLL), v133)));
  v196 = veorq_s8(v195, *&STACK[0x2F0]);
  v197 = veorq_s8(v195, *&STACK[0x2E0]);
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v197), *&STACK[0x2D0]);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v200 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199);
  v201 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v200, v200), *&STACK[0x2C0]), v200), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v202 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v203 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v202), *&STACK[0x290]);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL));
  v205 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v204), *&STACK[0x280]);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206);
  v208 = veorq_s8(v207, *&STACK[0x270]);
  v209 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v207, a69), a68), v208), vandq_s8(v208, a69)), *&STACK[0x260]);
  v210 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v211 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v210), *&STACK[0x250]);
  v212 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL)));
  v213 = vsubq_s64(*&STACK[0x300], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x340], v180), *&STACK[0x330]), vorrq_s8(vaddq_s64(v180, *&STACK[0x360]), *&STACK[0x350])));
  v232.val[1] = vshlq_u64(veorq_s8(v212, *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x320], 3uLL), v133)));
  v214 = veorq_s8(v213, *&STACK[0x2F0]);
  v215 = veorq_s8(v213, *&STACK[0x2E0]);
  v216 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215), *&STACK[0x2D0]);
  v217 = veorq_s8(v216, vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL));
  v218 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), v217);
  v219 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v218, v218), *&STACK[0x2C0]), v218), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v220 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v221 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v220), *&STACK[0x290]);
  v222 = veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v223 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v222), *&STACK[0x280]);
  v224 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL));
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224);
  v226 = veorq_s8(v225, *&STACK[0x270]);
  v227 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v225, a69), a68), v226), vandq_s8(v226, a69)), *&STACK[0x260]);
  v228 = veorq_s8(v227, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v229 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), v228), *&STACK[0x250]);
  v232.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL))), *&STACK[0x240]), vnegq_s64(vandq_s8(vshlq_n_s64(v151, 3uLL), v133)));
  v178.i64[1] = vqtbl4q_s8(v232, a67).u64[0];
  v230 = vrev64q_s8(v178);
  *(a37 + a59 + v69 + v70) = veorq_s8(vextq_s8(v230, v230, 8uLL), *&STACK[0x230]);
  return (*(a64 + 8 * ((4 * ((v70 & 0xFFFFFFF0) == 16)) | (32 * ((v70 & 0xFFFFFFF0) == 16)) | a4)))();
}

uint64_t sub_1001EE370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3 + v8;
  v10 = a3 - 1;
  v11 = STACK[0x3E8];
  *(v5 + v10) = (v4 - 91) ^ *(v6 + v10) ^ *(v7 + v10) ^ (47 * v10) ^ *(v9 + 3) ^ *(v3 + v10) ^ 2;
  return (*(v11 + 8 * ((74 * (v10 == 0)) ^ v4)))();
}

uint64_t sub_1001EE410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, _DWORD *a10)
{
  *a9 = a1;
  *a10 = v10;
  return sub_1002603E0();
}

void sub_1001EE478()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x1001EE494);
}

uint64_t sub_1001EE54C@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 ^ 0x29A5)))(v1);
  STACK[0x4B0] = 0;
  return sub_100177A6C();
}

uint64_t sub_1001EE680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, int a17)
{
  a16 = 476323082 - 1710126949 * ((&a16 & 0xB4F16EDD | ~(&a16 | 0xB4F16EDD)) ^ 0x7915CAB2);
  v18 = (*(v17 + 77088))(&a16);
  return (*(v17 + 8 * ((5343 * (a17 == 16257999)) ^ 0x4DDu)))(v18);
}

uint64_t sub_1001EE7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, unint64_t a22, uint64_t a23)
{
  v29 = 1875091903 * (((v24 | 0x802D065E) - (v24 & 0x802D065E)) ^ 0xB65885DD);
  a21 = ((2 * v27) & 0x6AB96FDE) + (v27 ^ 0xB55CB7EF) + ((v23 - 360687030) & 0x39EB ^ 0x6ABFE672) + v29;
  LODWORD(a22) = v23 + 6553 + v29;
  a23 = a18;
  (*(v28 + 8 * (v23 + 8474)))(&a20);
  v30 = 956911519 * (((v24 ^ 0x10410442000C00DLL) & 0x8B4737D66025C80DLL | (v24 ^ 0x4000C829911022C0) & 0x74B8C8299FDA37F2) ^ 0x432ADB15B8192C8);
  a20 = (v23 - 149) ^ v30;
  a22 = v26 - ((2 * v26) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v30;
  a23 = a18;
  (*(v28 + 8 * (v23 ^ 0x21EC)))(&a20);
  v31 = 1875091903 * (((v24 | 0x302A4CD8) - v24 + (v24 & 0xCFD5B320)) ^ 0x65FCF5B);
  a21 = (v25 ^ 0xF83EBFFA) + ((2 * v25) & 0xF07D7FF4) + 668858032 + v31;
  LODWORD(a22) = v23 + 6553 + v31;
  a23 = a18;
  v32 = (*(v28 + 8 * (v23 ^ 0x213E)))(&a20);
  return (*(v28 + 8 * ((2656 * (a20 == 16257999)) ^ v23)))(v32);
}

uint64_t sub_1001EEA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x544]) = v5;
  STACK[0x488] = STACK[0x838];
  STACK[0x480] = *(a4 + 8 * (v4 - 4685));
  return sub_1001C9EBC(a1, a2, a3, a4);
}

uint64_t sub_1001EEC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 8 * (v4 + 3797)))();
  *v5 = 0;
  return v6(v7);
}

uint64_t sub_1001EECC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = ~v4 + v2;
  v9 = *(a2 + v8 - 15);
  v10 = *(a2 + v8 - 31);
  v11 = a1 + v8;
  *(v11 - 15) = v9;
  *(v11 - 31) = v10;
  return (*(v7 + 8 * ((14 * (v6 + v4 != v3)) ^ (v5 + 3447))))();
}

uint64_t sub_1001EFC40@<X0>(int a1@<W8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>, int8x16_t a4@<Q2>, int8x16_t a5@<Q3>, int32x4_t a6@<Q4>, int8x16_t a7@<Q5>)
{
  v12 = v10 + 4 * v9;
  a7.i64[0] = *(v12 + 4);
  a7.i32[2] = *(v12 + 12);
  v13 = vextq_s8(a2, a7, 0xCuLL);
  v14 = a7;
  v14.i32[3] = *(v10 + 4 * (v9 + 4));
  v15 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v14, a4), vandq_s8(v13, a3)), 1uLL), *(v12 + 1588));
  v13.i32[0] = *(v8 + 4 * (*(v12 + 4) & v7));
  v13.i32[1] = *(v8 + 4 * (*(v12 + 8) & 1));
  v13.i32[2] = *(v8 + 4 * (*(v12 + 12) & 1));
  v13.i32[3] = *(v8 + 4 * (v14.i8[12] & 1));
  *v12 = veorq_s8(vaddq_s32(vsubq_s32(v15, vandq_s8(vaddq_s32(v15, v15), a5)), a6), v13);
  return (*(v11 + 8 * ((252 * (v9 == 220)) ^ a1)))();
}

uint64_t sub_1001EFD20(double a1, double a2, int8x16_t a3, int8x16_t a4, double a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v85 = STACK[0x350];
  v86 = v76 - v79 + STACK[0x350];
  *&v87 = v86 - 15;
  *(&v87 + 1) = v86 - 16;
  *&STACK[0x390] = v87;
  *&v87 = v86 - 13;
  *(&v87 + 1) = v86 - 14;
  *&STACK[0x380] = v87;
  v88.i64[0] = v86 - 7;
  v88.i64[1] = v86 - 8;
  v89.i64[0] = v86 - 3;
  v89.i64[1] = v86 - 4;
  v90 = v76 - v79 - 1;
  v91.i64[0] = v85 + v90;
  v91.i64[1] = v86 - 2;
  v92.i64[0] = v86 - 5;
  v92.i64[1] = v86 + v77;
  v93 = vandq_s8(v92, *&STACK[0x310]);
  v94 = vandq_s8(v91, *&STACK[0x310]);
  v95 = vandq_s8(v89, *&STACK[0x310]);
  v96 = vandq_s8(v88, *&STACK[0x310]);
  v97 = *&STACK[0x310];
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), *&STACK[0x3A0]);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), *&STACK[0x3A0]);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), *&STACK[0x3A0]);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), *&STACK[0x3A0]);
  v103 = *&STACK[0x2E0];
  v102 = *&STACK[0x2F0];
  v104 = vsubq_s64(vorrq_s8(v98, *&STACK[0x2F0]), vorrq_s8(v98, v82));
  v105 = vsubq_s64(vorrq_s8(v99, *&STACK[0x2F0]), vorrq_s8(v99, v82));
  v106 = vaddq_s64(vsubq_s64(vorrq_s8(v101, *&STACK[0x2F0]), vorrq_s8(v101, v82)), v82);
  v107 = vaddq_s64(vsubq_s64(vorrq_s8(v100, *&STACK[0x2F0]), vorrq_s8(v100, v82)), v82);
  v108 = veorq_s8(v107, *&STACK[0x2E0]);
  v109 = veorq_s8(v106, *&STACK[0x2E0]);
  v110 = veorq_s8(v106, *&STACK[0x2D0]);
  v111 = veorq_s8(v107, *&STACK[0x2D0]);
  v112 = *&STACK[0x2D0];
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), a6);
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v111), a6);
  v115 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v116 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v117 = veorq_s8(v113, v115);
  v118 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v117);
  v120 = vaddq_s64(v118, v116);
  v121 = *&STACK[0x2B0];
  v122 = *&STACK[0x290];
  v123 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v120, v120), a8), v120), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v119, v119), a8), v119), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v125 = *&STACK[0x2A0];
  v126 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v127 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v128 = veorq_s8(v123, v126);
  v129 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v128);
  v131 = vaddq_s64(v129, v127);
  v133 = *&STACK[0x270];
  v132 = *&STACK[0x280];
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v131, v131), *&STACK[0x290]), v131), *&STACK[0x280]), *&STACK[0x270]);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v130, v130), *&STACK[0x290]), v130), *&STACK[0x280]), *&STACK[0x270]);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v137 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v138 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v137);
  v140 = veorq_s8(vaddq_s64(v138, v136), v81);
  v141 = veorq_s8(v139, v81);
  v142 = vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL);
  v143 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v144 = veorq_s8(v140, v142);
  v145 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v144);
  v147 = veorq_s8(vaddq_s64(v145, v143), a7);
  v148 = veorq_s8(v146, a7);
  v149 = vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL);
  v150 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v151 = veorq_s8(v147, v149);
  v152 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v151);
  v154 = vaddq_s64(v152, v150);
  v155 = *&STACK[0x210];
  v156 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v153, v83), vorrq_s8(v153, *&STACK[0x210])), *&STACK[0x210]), v84);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v154, v83), vorrq_s8(v154, *&STACK[0x210])), *&STACK[0x210]), v84);
  v158.i64[0] = v86 - 11;
  v158.i64[1] = v86 - 12;
  *&STACK[0x360] = v158;
  v159 = vaddq_s64(v105, v82);
  v266.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL))), a4), vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), a3)));
  v266.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL))), a4), vnegq_s64(vandq_s8(vshlq_n_s64(v89, 3uLL), a3)));
  v160 = *&STACK[0x340];
  v161 = veorq_s8(v159, v103);
  v162 = veorq_s8(v159, v112);
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), *&STACK[0x340]);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164);
  v166 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v165, v165), a8), v165), v121), v125);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v168, v168), v122), v168), v132), v133);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v81);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), a7);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v175, v83), vorrq_s8(v175, v155)), v155), v84);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v178 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v176.i64[0] = v86 - 9;
  v176.i64[1] = v86 - 10;
  *&STACK[0x370] = v176;
  v179 = vaddq_s64(v178, v177);
  v180 = vandq_s8(v176, v97);
  v181 = vaddq_s64(v104, v82);
  v266.val[0] = vshlq_u64(veorq_s8(v179, a4), vnegq_s64(vandq_s8(vshlq_n_s64(v91, 3uLL), a3)));
  v182 = veorq_s8(v181, v103);
  v183 = veorq_s8(v181, v112);
  v184 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), v160);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v186, v186), a8), v186), v121), v125);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v189 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188);
  v190 = v132;
  v191 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v189, v189), v122), v189), v132), v133);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v193 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192), v81);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v195 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194), a7);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v197 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v197, v83), vorrq_s8(v197, v155)), v155), v84);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v200 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v201 = vandq_s8(v158, v97);
  v202 = vaddq_s64(v200, v199);
  v203 = vandq_s8(*&STACK[0x380], v97);
  v266.val[2] = vshlq_u64(veorq_s8(v202, a4), vnegq_s64(vandq_s8(vshlq_n_s64(v92, 3uLL), a3)));
  v204 = vandq_s8(*&STACK[0x390], v97);
  v205 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v206 = vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL);
  v207 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), *&STACK[0x3A0]);
  v209 = vaddq_s64(v207, *&STACK[0x3A0]);
  v210 = vaddq_s64(v206, *&STACK[0x3A0]);
  v211 = vaddq_s64(v205, *&STACK[0x3A0]);
  v212 = vsubq_s64(vorrq_s8(v209, v102), vorrq_s8(v209, v82));
  v213 = vaddq_s64(vsubq_s64(vorrq_s8(v211, v102), vorrq_s8(v211, v82)), v82);
  v214 = vaddq_s64(vsubq_s64(vorrq_s8(v210, v102), vorrq_s8(v210, v82)), v82);
  v210.i64[0] = vqtbl4q_s8(v266, *&STACK[0x320]).u64[0];
  v266.val[0] = veorq_s8(v214, v103);
  v266.val[1] = veorq_s8(v213, v103);
  v215 = v103;
  v216 = veorq_s8(v213, v112);
  v217 = veorq_s8(v214, v112);
  v266.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266.val[1], 0x38uLL), v266.val[1], 8uLL), v216), v160);
  v266.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266.val[0], 0x38uLL), v266.val[0], 8uLL), v217), v160);
  v266.val[2] = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v218 = veorq_s8(v266.val[0], vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v219 = veorq_s8(v266.val[1], v266.val[2]);
  v266.val[2] = vsraq_n_u64(vshlq_n_s64(v266.val[0], 0x38uLL), v266.val[0], 8uLL);
  v266.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266.val[1], 0x38uLL), v266.val[1], 8uLL), v219);
  v266.val[1] = vaddq_s64(v266.val[2], v218);
  v266.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v266.val[1], v266.val[1]), a8), v266.val[1]), v121), v125);
  v266.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v266.val[0], v266.val[0]), a8), v266.val[0]), v121), v125);
  v266.val[2] = vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL);
  v220 = veorq_s8(v266.val[0], vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  v221 = veorq_s8(v266.val[1], v266.val[2]);
  v266.val[2] = vsraq_n_u64(vshlq_n_s64(v266.val[0], 0x38uLL), v266.val[0], 8uLL);
  v266.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266.val[1], 0x38uLL), v266.val[1], 8uLL), v221);
  v266.val[1] = vaddq_s64(v266.val[2], v220);
  v266.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v266.val[1], v266.val[1]), v122), v266.val[1]), v190), v133);
  v266.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v266.val[0], v266.val[0]), v122), v266.val[0]), v190), v133);
  v266.val[2] = vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL);
  v222 = veorq_s8(v266.val[0], vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v223 = veorq_s8(v266.val[1], v266.val[2]);
  v266.val[2] = vsraq_n_u64(vshlq_n_s64(v266.val[0], 0x38uLL), v266.val[0], 8uLL);
  v266.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266.val[1], 0x38uLL), v266.val[1], 8uLL), v223);
  v266.val[1] = veorq_s8(vaddq_s64(v266.val[2], v222), *&STACK[0x3B0]);
  v266.val[0] = veorq_s8(v266.val[0], *&STACK[0x3B0]);
  v266.val[2] = vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL);
  v224 = veorq_s8(v266.val[0], vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL));
  v225 = veorq_s8(v266.val[1], v266.val[2]);
  v266.val[2] = vsraq_n_u64(vshlq_n_s64(v266.val[0], 0x38uLL), v266.val[0], 8uLL);
  v266.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266.val[1], 0x38uLL), v266.val[1], 8uLL), v225);
  v266.val[1] = veorq_s8(vaddq_s64(v266.val[2], v224), a7);
  v266.val[0] = veorq_s8(v266.val[0], a7);
  v266.val[2] = vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL);
  v226 = veorq_s8(v266.val[0], vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL));
  v227 = veorq_s8(v266.val[1], v266.val[2]);
  v266.val[2] = vsraq_n_u64(vshlq_n_s64(v266.val[0], 0x38uLL), v266.val[0], 8uLL);
  v266.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266.val[1], 0x38uLL), v266.val[1], 8uLL), v227);
  v266.val[1] = vaddq_s64(v266.val[2], v226);
  v266.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v266.val[0], v83), vorrq_s8(v266.val[0], v155)), v155), v84);
  v266.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v266.val[1], v83), vorrq_s8(v266.val[1], v155)), v155), v84);
  v228 = vaddq_s64(v212, v82);
  v266.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266.val[0], 0x38uLL), v266.val[0], 8uLL), veorq_s8(v266.val[0], vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL))), a4), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x390], 3uLL), a3)));
  v266.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266.val[1], 0x38uLL), v266.val[1], 8uLL), veorq_s8(v266.val[1], vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL))), a4), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x380], 3uLL), a3)));
  v229 = veorq_s8(v228, v103);
  v230 = veorq_s8(v228, v112);
  v231 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230), v160);
  v232 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v232);
  v234 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v233, v233), a8), v233), v121), v125);
  v235 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL));
  v236 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235);
  v237 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v236, v236), v122), v236), v190), v133);
  v238 = veorq_s8(v237, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v239 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL), v238), *&STACK[0x3B0]);
  v240 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL));
  v241 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v240), a7);
  v242 = veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL));
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v242);
  v244 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v243, v83), vorrq_s8(v243, v155)), v155), v84);
  v245 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL)));
  v246 = vaddq_s64(vsubq_s64(vorrq_s8(v208, v102), vorrq_s8(v208, v82)), v82);
  v266.val[1] = vshlq_u64(veorq_s8(v245, a4), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x360], 3uLL), a3)));
  v247 = veorq_s8(v246, v215);
  v248 = veorq_s8(v246, v112);
  v249 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v248), v160);
  v250 = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v251 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), v250);
  v252 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v251, v251), a8), v251), v121), v125);
  v253 = veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL));
  v254 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v253);
  v255 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v254, v254), v122), v254), v190), v133);
  v256 = veorq_s8(v255, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v257 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), v256), *&STACK[0x3B0]);
  v258 = veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL));
  v259 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v258), a7);
  v260 = veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL));
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL), v260);
  v262 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v261, v83), vorrq_s8(v261, v155)), v155), v84);
  v266.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v260, 3uLL), v260, 0x3DuLL))), a4), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x370], 3uLL), a3)));
  v210.i64[1] = vqtbl4q_s8(v266, *&STACK[0x320]).u64[0];
  v263 = vrev64q_s8(*(v85 + v90 - 15));
  v264 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v263, v263, 8uLL), *&STACK[0x230]), v210));
  *(v80 + v90) = vextq_s8(v264, v264, 8uLL);
  return (*(a76 + 8 * ((15117 * (v79 + 16 == v76)) ^ v78)))();
}

uint64_t sub_1001F0794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, unsigned int a18)
{
  a17 = a12;
  a18 = (v18 + 5396) ^ (1824088897 * (((&a16 | 0x48CA414) - (&a16 & 0x48CA414)) ^ 0x5CE57776));
  (*(v21 + 8 * (v18 + 6662)))(&a16);
  a18 = (v18 + 5396) ^ (1824088897 * ((1743302998 - (&a16 | 0x67E8B156) + (&a16 | 0x98174EA9)) ^ 0xC07E9DCB));
  a17 = a14;
  v22 = (*(v21 + 8 * (v18 ^ 0x2E0A)))(&a16);
  return (*(v21 + 8 * ((7318 * (v20 == v19 + v18 - 2950)) ^ v18)))(v22);
}

uint64_t sub_1001F0888()
{
  v1 = STACK[0x3B0];
  if (LODWORD(STACK[0x3B0]) == 17168)
  {
    return (*(STACK[0x3E8] + 8 * ((v0 - 1363) ^ (121 * (LODWORD(STACK[0x350]) == LODWORD(STACK[0x3C0]))))))();
  }

  if (v1 == 20706)
  {
    return (*(STACK[0x3E8] + 8 * (((LODWORD(STACK[0x940]) == 197499227) * (127 * (v0 ^ 0x1460) + 4390)) ^ (v0 - 2314))))();
  }

  if (v1 == 33980)
  {
    return (*(STACK[0x3E8] + 8 * ((3807 * (LODWORD(STACK[0x950]) + ((v0 + 2255) ^ 0xEE742A32) - ((2 * LODWORD(STACK[0x950])) & 0xDCE86D8E) != -294373626)) ^ (v0 - 3180))))();
  }

  return sub_1001F0AD8();
}

uint64_t sub_1001F09B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (v4 == 16257999)
  {
    v7 = STACK[0x748];
    v8 = *(STACK[0x748] + 8);
    v9 = STACK[0x760];
    v9[1] = v8;
    *v9 = *v7;
    return (*(a4 + 8 * (((v8 == 0) * (((v5 ^ 0x1476) + 7305) ^ 0xA56 ^ (307 * (v5 ^ 0x1476)))) | (v5 + 2135))))();
  }

  else if (v4 == 16215947)
  {
    return (*(STACK[0x3E8] + 8 * ((v5 + 3061) | (4 * (((*(STACK[0x6A8] + 8) == 0) ^ (19 * (v5 ^ 0xFC) - 2)) & 1)))))();
  }

  else
  {
    return sub_1001F0AD8();
  }
}

uint64_t sub_1001F0A7C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  (*(a1 + 8 * (v2 ^ 0x3C7D)))(a2);
  *(STACK[0x748] + 24) = 0;
  return sub_1001F0AA8();
}

void sub_1001F0AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8 * (v4 ^ 0x2EDF)))();
  STACK[0x748] = 0;
  JUMPOUT(0x1001F0AD0);
}

uint64_t sub_1001F0B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x5F8] = 0;
  v5 = STACK[0x65C];
  STACK[0x448] = 0;
  STACK[0x4E8] -= 32;
  return (*(a4 + 8 * ((5718 * (v5 == ((v4 - 3825) | 0x1808) + 16250451)) ^ (v4 - 2471))))();
}

uint64_t sub_1001F0B9C()
{
  v2 = *STACK[0x830];
  STACK[0x458] = *(v1 + 8 * v0);
  return sub_1001DFA48(v2);
}

uint64_t sub_1001F0BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, uint64_t a20, uint64_t a21)
{
  *((((v21 + 2654) ^ 0x1FDCDBE64) & (2 * v22)) + (v22 ^ 0x6BFBD9BFFEE6D364) + a21 - 0x6BFBD9BFFEE6D364) = 0;
  *(((2 * (v22 + 4)) & 0xF67FEEFELL) + ((v22 + 4) ^ 0x5FBFFF9F7B3FF77FLL) + a21 - 0x5FBFFF9F7B3FF77FLL) = -9392;
  v24 = ((a18 ^ 0x559F2E5) - 712983551) ^ a18 ^ ((a18 ^ 0x242E1991) - 185116811) ^ ((a18 ^ 0x51ACA591) - 2122978443) ^ ((a18 ^ 0x5FFDFFFF) - 1893420773);
  v25 = (((2 * (v22 + 6)) & 0x1E7FFF8FALL) + ((v22 + 6) ^ 0x6B979FFFF3FFFC7DLL) + a21 - 0x6B979FFFF3FFFC7DLL);
  *v25 = HIBYTE(v24) ^ 0x2F;
  v25[1] = BYTE2(v24) ^ 0x26;
  v25[2] = ((((a18 ^ 0xF2E5) - 17407) ^ a18 ^ ((a18 ^ 0x1991) + 22389) ^ ((a18 ^ 0xA591) - 5259) ^ (-a18 - 20198)) >> 8) ^ 0xB1;
  v25[3] = ((a18 ^ 0xE5) + 1) ^ a18 ^ (26 - a18) ^ 0x1A;
  return (*(*(v23 - 256) + 8 * (v21 ^ (43 * ((840616331 - a19) - 840616315 > 7)))))();
}

uint64_t sub_1001F0E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, unsigned int a16, uint64_t a17, uint64_t a18)
{
  v24 = 1824088897 * (((&a14 | 0x3CE8C179) - &a14 + (&a14 & 0xC3173E80)) ^ 0x6481121B);
  a17 = v19;
  a18 = a12;
  a14 = v24 + v22 + 1558;
  a16 = (v20 ^ 0x6EFCFFAE) + ((2 * v20) & 0xDDF9FF5C) - v24 - 542643492;
  (*(v21 + 8 * (v22 + 7432)))(&a14);
  v25 = 1875091903 * (((&a14 | 0xB41BD33D) - (&a14 & 0xB41BD33D)) ^ 0x826E50BE);
  a17 = a12;
  a15 = ((2 * v18) & 0x4BBBED5E) + (v18 ^ 0xC9299171 ^ ((v22 + 1747983815) | 0x4C44180)) + v25 + 2050932731;
  a16 = v25 + v22 + 5525;
  v26 = (*(v21 + 8 * (v22 ^ 0x2D3A)))(&a14);
  return (*(v21 + 8 * ((10865 * (a14 == v23)) ^ v22)))(v26);
}

uint64_t sub_1001F0F90(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, int a55)
{
  v237 = a20 ^ 0x99;
  HIDWORD(a17) = 0;
  v56 = a3;
  v57 = __ROR8__((a15 + a3) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5;
  v58 = __ROR8__(v57 ^ 0x49E9423B6F16E7D2, 8);
  v57 ^= 0xE1AFA7ACF6E0968ELL;
  v59 = (v58 + v57) ^ 0xE49D77DF873DBF7ELL;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0xF5A2F1B9B5D0B209;
  LOBYTE(v59) = ((a15 + a3) << (((a55 + 6) | 0x4C) ^ 0xEFu)) & 0x38;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0x5963B6C555D97F1FLL;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0x61459D2AF01F24F7;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0x64C31C027084DE6CLL;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0x1A2AEBE44253AF03;
  v70 = __ROR8__(v69, 8) + (v69 ^ __ROR8__(v68, 61));
  v71 = __ROR8__((a15 + a3 + 8) & 0xFFFFFFFFFFFFFFF8, 8);
  v72 = (v71 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v73 = (v70 ^ 0xAB3042D228875C41) >> v59;
  v74 = (v72 + (((v71 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2) << 56) + (((v71 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2uLL) >> 8)) ^ 0xE49D77DF873DBF7ELL ^ __ROR8__(v72, 61);
  v75 = (v74 + __ROR8__((v72 + (((v71 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2) << 56) + (((v71 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2uLL) >> 8)) ^ 0xE49D77DF873DBF7ELL, 8)) ^ 0xF5A2F1B9B5D0B209;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (v76 + __ROR8__(v75, 8)) ^ 0x5963B6C555D97F1FLL;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = (v78 + __ROR8__(v77, 8)) ^ 0x61459D2AF01F24F7;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (v80 + __ROR8__(v79, 8)) ^ 0x64C31C027084DE6CLL;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x1A2AEBE44253AF03;
  v84 = ((v83 ^ __ROR8__(v82, 61)) + __ROR8__(v83, 8)) ^ 0xAB3042D228875C41;
  v85 = v84 >> v59;
  v86 = v59 ^ 0x3A;
  v87 = v73 + (v84 << (v59 ^ 0x3Au) << 6);
  v88 = __ROR8__((a15 + a3 + 16) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5;
  v89 = __ROR8__(v88 ^ 0x49E9423B6F16E7D2, 8);
  v88 ^= 0xE1AFA7ACF6E0968ELL;
  v90 = (v89 + v88) ^ 0xE49D77DF873DBF7ELL;
  v92 = __ROR8__(v88, 61);
  v91 = v90 ^ v92;
  v93 = ((v90 ^ v92) + (v90 << 56) + (v90 >> 8)) ^ 0xF5A2F1B9B5D0B209;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = (v94 + __ROR8__(v93, 8)) ^ 0x5963B6C555D97F1FLL;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = (v96 + __ROR8__(v95, 8)) ^ 0x61459D2AF01F24F7;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = (v98 + __ROR8__(v97, 8)) ^ 0x64C31C027084DE6CLL;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = v100 + __ROR8__(v99, 8);
  v102 = v85 + ((((v101 ^ __ROR8__(v100, 61) ^ 0x22AEBE44253AF03) + __ROR8__(v101 ^ 0x1A2AEBE44253AF03, 8)) ^ 0x33042D228875C41) << v86 << 6);
  v103 = *(v55 - 256);
  v104 = *(v55 - 248);
  v105 = ((*(v103 + (v73 ^ 0x45)) ^ 0x69) << 24) | ((*(v104 + (BYTE1(v87) ^ 0x67)) ^ 0xC3) << 16) | (((*(a53 + (BYTE2(v87) ^ 0xB5)) - 56) ^ 0xEC) << 8) | *(a52 + (BYTE3(v87) ^ 0x36)) ^ BYTE3(v87) ^ 0x53;
  v106 = *(a52 + (HIBYTE(v87) ^ 0x23)) ^ HIBYTE(v87) ^ 0xF9 | ((*(v103 + (BYTE4(v87) ^ 0xAELL)) ^ 0x51) << 24) | ((*(v104 + (BYTE5(v87) ^ 0x95)) ^ 0x4A) << 16) | (((*(a53 + (BYTE6(v87) ^ 0x61)) - 56) ^ 0x6A) << 8);
  v227 = a3 | 0xELL;
  v228 = a3 | 0xALL;
  v229 = a3 | 9;
  v224 = a3 | 7;
  v223 = a3 | 0xDLL;
  v226 = a3 | 5;
  v230 = a3 | 8;
  v222 = a3 | 6;
  v219 = a3 | 4;
  v225 = a3 | 0xFLL;
  v221 = a3 | 0xCLL;
  v217 = a3 | 3;
  v218 = a3 | 0xBLL;
  v216 = a3 | 2;
  v220 = a3 | 1;
  LODWORD(v210) = *(a52 + (HIBYTE(v102) ^ 3)) ^ HIBYTE(v102) ^ 0xCE | ((*(v103 + (BYTE4(v102) ^ 0xD0)) ^ 0xFFFFFFC7) << 24) | ((*(v104 + (BYTE5(v102) ^ 0xA2)) ^ 0x38) << 16) | (((*(a53 + (BYTE6(v102) ^ 0x95)) - 56) ^ 0xC) << 8);
  HIDWORD(v208) = (*(a15 + (v56 | 0xF)) ^ 0x85 ^ *(a52 + (*(a15 + (v56 | 0xF)) ^ 0x23)) | (((*(a53 + (*(a15 + v227) ^ 0x64)) - 56) ^ 0x24) << 8) | ((*(v104 + (*(a15 + v223) ^ 0x64)) ^ 0x33) << 16) | ((*(v103 + (*(a15 + v221) ^ 0xD8)) ^ 0x33333333) << 24)) ^ 0xC6;
  LODWORD(v100) = (HIDWORD(v208) ^ v210) + 338894923 + (~(2 * (HIDWORD(v208) ^ v210)) | 0xD799BF6B);
  LODWORD(v87) = (v100 ^ 0x67EE7A62) + 964669318 - 2 * ((v100 ^ 0x67EE7A62) & 0x397FAF9E ^ v100 & 0x18);
  HIDWORD(v211) = v105;
  LODWORD(v208) = ((*(a15 + v217) ^ 0xBF ^ *(a52 + (*(a15 + v217) ^ 0x19))) & 0xFFFF00FF | (((*(a53 + (*(a15 + v216) ^ 0xD7)) - 56) ^ 0x2E) << 8) | ((*(v104 + (*(a15 + v220) ^ 0x2DLL)) ^ 0x72) << 16) | ((*(v103 + (*(a15 + a3) ^ 0xALL)) ^ 0x29) << 24)) ^ 0x8A;
  HIDWORD(v210) = v106;
  LODWORD(v211) = ((*(v103 + (v85 ^ 0xE8)) ^ 2) << 24) | ((*(v104 + (BYTE1(v102) ^ 0x7ELL)) ^ 0x7F) << 16) | (((*(a53 + (BYTE2(v102) ^ 0x7CLL)) - 56) ^ 0x99) << 8) | (*(a52 + (BYTE3(v102) ^ 0xBBLL)) ^ BYTE3(v102)) ^ 8;
  LODWORD(v209) = *(a15 + (v56 | 0xB)) ^ 0x6B ^ *(a52 + (*(a15 + (v56 | 0xB)) ^ 0xCDLL)) | (((*(a53 + (*(a15 + v228) ^ 0xCBLL)) - 56) ^ 0xB2) << 8) | (*(v104 + (*(a15 + v229) ^ 0x1ALL)) << 16) | ((*(v103 + (*(a15 + v230) ^ 0x18)) ^ 0x3A) << 24);
  HIDWORD(v209) = (*(a15 + v224) ^ *(a52 + (*(a15 + v224) ^ 0xE6)) ^ 0x38) & 0xFFFF00FF | ((*(v104 + (*(a15 + v226) ^ 0xD3)) ^ 0xDF) << 16) | ((*(a53 + (*(a15 + v222) ^ 0x9FLL)) - 56) << 8) | ((*(v103 + (*(a15 + v219) ^ 0x61)) ^ 0x97) << 24);
  LODWORD(v102) = ((v208 ^ v105) - ((2 * (v208 ^ v105)) & 0x7D56D8B2) - 1096061863) ^ 0x38F57D58;
  v107 = v211 ^ v209 ^ 0xE827DFBC;
  LODWORD(v73) = ((HIDWORD(v209) ^ v106) + 700798166 + (~(2 * (HIDWORD(v209) ^ v106)) | 0xAC755655)) ^ 0x6D846843;
  v108 = *(&off_100315F70 + a13) - 8;
  v109 = *(&off_100315F70 + SHIDWORD(a12)) - 4;
  HIDWORD(v92) = *&v109[4 * (((v208 ^ v105) - ((2 * (v208 ^ v105)) & 0xB2) + 89) ^ 0x58)];
  LODWORD(v92) = HIDWORD(v92);
  v110 = *(&off_100315F70 + a55 - 2209) - 4;
  v111 = *(&off_100315F70 + a55 - 2398) - 12;
  v112 = ((v100 ^ 0x7A62) - 20602 - 2 * ((v100 ^ 0x7A62) & 0xAF9E ^ v100 & 0x18)) ^ 0xD0C5;
  LODWORD(v100) = (v92 >> 9) ^ __ROR4__(*&v108[4 * BYTE1(v73)], 4) ^ *&v110[4 * BYTE2(v107)] ^ *&v111[4 * ((v87 ^ 0xF69CD0C5) >> 24)];
  LODWORD(v87) = *&v110[4 * (BYTE2(v87) ^ 0xB0)] ^ __ROR4__(*&v108[4 * BYTE1(v107)], 4) ^ __ROR4__(*&v109[4 * (((BYTE4(v209) ^ v106) - 42 + (~(2 * (BYTE4(v209) ^ v106)) | 0x55)) ^ 0x43)], 9) ^ *&v111[4 * BYTE3(v102)];
  v113 = *&v111[4 * HIBYTE(v107)];
  v114 = *&v111[4 * BYTE3(v73)] ^ __ROR4__(*&v109[4 * (v211 ^ v209 ^ 0xBC)], 9) ^ __ROR4__(*&v108[4 * HIBYTE(v112)], 4) ^ *&v110[4 * BYTE2(v102)] ^ 0x88382F24;
  LODWORD(v73) = v113 ^ __ROR4__(*&v109[4 * v112], 9) ^ __ROR4__(*&v108[4 * ((((v208 ^ v105) - ((2 * (v208 ^ v105)) & 0xD8B2) + 27737) ^ 0x7D58) >> 8)], 4) ^ *&v110[4 * BYTE2(v73)] ^ 0x2CA8B861;
  v115 = *&v108[4 * ((v87 ^ 0x1AC9) >> 8)];
  LODWORD(v102) = *&v111[4 * BYTE3(v73)] ^ *&v110[4 * BYTE2(v114)] ^ __ROR4__(*&v109[4 * (v100 ^ 0x15)], 9) ^ ((v115 >> (v85 & 4) >> (v85 & 4 ^ 4)) + (v115 << 28));
  LODWORD(v82) = *&v110[4 * ((v100 ^ 0x66911A15) >> 16)] ^ __ROR4__(*&v109[4 * v114], 9) ^ __ROR4__(*&v108[4 * BYTE1(v73)], 4) ^ *&v111[4 * ((v87 ^ 0xE2971AC9) >> 24)];
  v116 = *&v111[4 * ((v100 ^ 0x66911A15) >> 24)] ^ __ROR4__(*&v108[4 * BYTE1(v114)], 4) ^ *&v110[4 * BYTE2(v73)] ^ __ROR4__(*&v109[4 * (v87 ^ 0xC9)], 9);
  LODWORD(v100) = *&v110[4 * (BYTE2(v87) ^ 0xBB)] ^ __ROR4__(*&v108[4 * (BYTE1(v100) ^ 0x61)], 4) ^ *&v111[4 * HIBYTE(v114)];
  LODWORD(v92) = __ROR4__(*&v109[4 * v73], 9);
  v117 = v100 ^ v92 ^ 0xCEDC06E0;
  LODWORD(v100) = *&v110[4 * (BYTE2(v116) ^ 0x66)] ^ *&v111[4 * ((v82 ^ 0x108F19F2) >> 24)] ^ __ROR4__(*&v109[4 * ((v100 ^ v92) ^ 0xE0)], 9);
  v116 ^= 0xEE4AEA79;
  LODWORD(v100) = v100 ^ __ROR4__(*&v108[4 * (((v102 ^ 0x5C51) >> 8) ^ 0xF8)], 4);
  LODWORD(v87) = *&v111[4 * HIBYTE(v116)] ^ *&v110[4 * (BYTE2(v102) ^ 0xCF)] ^ __ROR4__(*&v109[4 * (v82 ^ 0xF2)], 9) ^ __ROR4__(*&v108[4 * BYTE1(v117)], 4);
  LODWORD(v73) = *&v110[4 * ((v82 ^ 0x108F19F2) >> 16)] ^ __ROR4__(*&v109[4 * (v102 ^ 0x48)], 9) ^ *&v111[4 * HIBYTE(v117)] ^ __ROR4__(*&v108[4 * BYTE1(v116)], 4);
  LODWORD(v82) = *&v111[4 * BYTE3(v102)] ^ __ROR4__(*&v109[4 * v116], 9) ^ __ROR4__(*&v108[4 * (BYTE1(v82) ^ 0x62)], 4) ^ *&v110[4 * BYTE2(v117)] ^ 0x6A4C91A5;
  LODWORD(v102) = v73 ^ 0x7A0C571F;
  LODWORD(v73) = *&v110[4 * (BYTE2(v100) ^ 0xED)] ^ 0xBC47347 ^ *&v111[4 * ((v73 ^ 0x7A0C571F) >> 24)] ^ __ROR4__(*&v109[4 * v82], 9);
  v118 = v87 ^ 0x4ADA7D3C;
  HIDWORD(v92) = *&v108[4 * ((v87 ^ 0x7D3C) >> 8)];
  LODWORD(v92) = HIDWORD(v92);
  LODWORD(v100) = v100 ^ 0x6C1A67F;
  v119 = *&v111[4 * BYTE3(v82)] ^ *&v110[4 * BYTE2(v102)] ^ __ROR4__(*&v109[4 * (v87 ^ 0x3C)], 9) ^ __ROR4__(*&v108[4 * BYTE1(v100)], 4);
  LODWORD(v87) = *&v110[4 * (BYTE2(v87) ^ 0xF6)] ^ __ROR4__(*&v109[4 * v102], 9) ^ *&v111[4 * BYTE3(v100)] ^ __ROR4__(*&v108[4 * BYTE1(v82)], 4);
  LODWORD(v100) = *&v111[4 * HIBYTE(v118)] ^ __ROR4__(*&v108[4 * BYTE1(v102)], 4) ^ *&v110[4 * BYTE2(v82)] ^ __ROR4__(*&v109[4 * v100], 9);
  LODWORD(v82) = ((v92 >> 4) + v73 - 2 * ((v92 >> 4) & v73)) ^ 0xD37AB12A;
  LODWORD(v87) = v87 ^ 0x43C3A22E;
  LODWORD(v102) = v100 ^ 0x84E5DF94;
  LODWORD(v100) = v119 ^ 0xB41F8EB7;
  LODWORD(v73) = *&v111[4 * BYTE3(v87)] ^ __ROR4__(*&v108[4 * (BYTE1(v119) ^ 0xF5)], 4);
  HIDWORD(v92) = *&v108[4 * BYTE1(v102)];
  LODWORD(v92) = HIDWORD(v92);
  v120 = (v92 >> 4) ^ __ROR4__(*&v109[4 * (v119 ^ 0xB7)], 9);
  HIDWORD(v92) = *&v109[4 * v87];
  LODWORD(v92) = HIDWORD(v92);
  v121 = (v92 >> 9) ^ __ROR4__(*&v108[4 * BYTE1(v82)], 4);
  v122 = v120 ^ ((*&v110[4 * BYTE2(v87)] ^ -*&v110[4 * BYTE2(v87)] ^ (197423943 - (*&v110[4 * BYTE2(v87)] ^ 0xBC47347))) + 197423943);
  HIDWORD(v92) = *&v108[4 * BYTE1(v87)];
  LODWORD(v92) = HIDWORD(v92);
  LODWORD(v87) = v92 >> 4;
  LODWORD(v92) = __ROR4__(*&v109[4 * v102], 9);
  v123 = *&v111[4 * BYTE3(v102)];
  LODWORD(v102) = v73 ^ __ROR4__(*&v109[4 * v82], 9) ^ *&v110[4 * BYTE2(v102)];
  LODWORD(v73) = v121 ^ v123 ^ *&v110[4 * BYTE2(v100)];
  v124 = *&v111[4 * BYTE3(v82)];
  LODWORD(v82) = v87 ^ v92 ^ *&v111[4 * BYTE3(v100)] ^ *&v110[4 * BYTE2(v82)];
  LODWORD(v100) = ((v122 ^ v124) - ((2 * (v122 ^ v124)) & 0x8E182CA0) - 955509168) ^ 0xF3EA3659;
  LODWORD(v87) = (v73 - ((2 * v73) & 0x1149252A) - 2002480491) ^ 0x1C018BBB;
  LODWORD(v92) = __ROR4__(*&v109[4 * (((v122 ^ v124) - ((2 * (v122 ^ v124)) & 0xA0) + 80) ^ 0x59)], 9);
  v125 = (v102 + 1256656591 + (~(2 * v102) | 0x6A31E263)) ^ 0x565575E9;
  LODWORD(v73) = v82 - ((2 * v82) & 0x91F551AC) - 923096874;
  LODWORD(v102) = *&v110[4 * BYTE2(v87)] ^ v92 ^ *&v111[4 * HIBYTE(v125)] ^ __ROR4__(*&v108[4 * ((v73 ^ 0xAC01) >> 8)], 4);
  HIDWORD(v92) = *&v109[4 * v125];
  LODWORD(v92) = HIDWORD(v92);
  LODWORD(v82) = (v92 >> 9) ^ __ROR4__(*&v108[4 * BYTE1(v100)], 4) ^ *&v111[4 * BYTE3(v87)] ^ *&v110[4 * ((v73 ^ 0x4AC01) >> 16)] ^ 0xF8042EF4;
  v126 = *&v111[4 * BYTE3(v100)] ^ __ROR4__(*&v109[4 * (v73 ^ 1)], 9) ^ *&v110[4 * BYTE2(v125)];
  HIDWORD(v92) = *&v109[4 * v87];
  LODWORD(v92) = HIDWORD(v92);
  LODWORD(v100) = (v92 >> 9) ^ __ROR4__(*&v108[4 * BYTE1(v125)], 4) ^ *&v111[4 * BYTE3(v73)] ^ *&v110[4 * BYTE2(v100)] ^ 0x53836494;
  LODWORD(v87) = v126 ^ __ROR4__(*&v108[4 * BYTE1(v87)], 4) ^ 0x87CF1B64;
  LODWORD(v102) = v102 ^ 0xE46FF14D;
  LODWORD(v73) = *&v110[4 * BYTE2(v82)] ^ __ROR4__(*&v108[4 * BYTE1(v100)], 4) ^ __ROR4__(*&v109[4 * v87], 9) ^ *&v111[4 * BYTE3(v102)];
  v127 = *&v111[4 * BYTE3(v100)] ^ *&v110[4 * BYTE2(v87)] ^ __ROR4__(*&v108[4 * BYTE1(v102)], 4);
  v128 = *&v110[4 * BYTE2(v102)] ^ __ROR4__(*&v109[4 * v100], 9) ^ *&v111[4 * BYTE3(v87)] ^ __ROR4__(*&v108[4 * BYTE1(v82)], 4);
  LODWORD(v100) = *&v110[4 * BYTE2(v100)] ^ *&v111[4 * BYTE3(v82)] ^ __ROR4__(*&v108[4 * BYTE1(v87)], 4);
  LODWORD(v92) = __ROR4__(*&v109[4 * v82], 9);
  LODWORD(v82) = (v127 ^ v92) - ((2 * (v127 ^ v92)) & 0xE2458F34);
  LODWORD(v92) = __ROR4__(*&v109[4 * v102], 9);
  LODWORD(v87) = (v128 - ((2 * v128) & 0xB8F6EAFA) + 1551594877) ^ 0x9B84AC59;
  LODWORD(v102) = ((v100 ^ v92) - ((2 * (v100 ^ v92)) & 0x420AFD46) + 554008227) ^ 0x2EDD07CE;
  LODWORD(v73) = v73 - ((2 * v73) & 0x82E4212C) + 1097994390;
  LODWORD(v82) = (v82 - 249378918) ^ 0x81318B67;
  LODWORD(v100) = *&v111[4 * BYTE3(v87)] ^ __ROR4__(*&v108[4 * BYTE1(v102)], 4) ^ *&v110[4 * ((v73 ^ 0x82D2A7A8) >> 16)] ^ __ROR4__(*&v109[4 * v82], 9);
  v129 = *&v110[4 * BYTE2(v87)] ^ __ROR4__(*&v109[4 * v102], 9) ^ __ROR4__(*&v108[4 * ((v73 ^ 0xA7A8) >> 8)], 4) ^ *&v111[4 * BYTE3(v82)];
  v130 = *&v111[4 * BYTE3(v102)] ^ *&v110[4 * BYTE2(v82)] ^ __ROR4__(*&v108[4 * BYTE1(v87)], 4);
  LODWORD(v87) = *&v109[4 * v87];
  LODWORD(v92) = __ROR4__(*&v108[4 * BYTE1(v82)], 4);
  LODWORD(v82) = *&v110[4 * BYTE2(v102)] ^ (v87 >> 9) ^ (v87 << 23) ^ *&v111[4 * ((v73 ^ 0x82D2A7A8) >> 24)] ^ v92;
  BYTE1(v115) = ((*&v110[4 * BYTE2(v102)] ^ (v87 >> 9) ^ *&v111[4 * ((v73 ^ 0x82D2A7A8) >> 24)] ^ v92) >> 8) ^ 0xDD;
  LODWORD(v87) = v130 ^ __ROR4__(*&v109[4 * (v73 ^ 0xB4)], 9);
  v131 = v100 ^ 0xA02C5D0B;
  LODWORD(v102) = *&v110[4 * ((v82 ^ 0x8111DD7F) >> 16)] ^ __ROR4__(*&v109[4 * (v129 ^ 0xD4)], 9);
  HIDWORD(v92) = *&v108[4 * ((v100 ^ 0x5D0B) >> 8)];
  LODWORD(v92) = HIDWORD(v92);
  v132 = v129 ^ 0x13B3A6C8;
  v133 = *&v110[4 * (BYTE2(v87) ^ 0x94)];
  LODWORD(v100) = *&v110[4 * BYTE2(v100)];
  v134 = *&v110[4 * ((v129 ^ 0x13B3A6C8u) >> 16)];
  LODWORD(v110) = v102 ^ *&v111[4 * HIBYTE(v131)];
  v135 = v87 ^ 0xDBB8069D;
  LODWORD(v102) = *&v111[4 * HIBYTE(v132)];
  LODWORD(v87) = *&v111[4 * ((v82 ^ 0x8111DD7F) >> 24)];
  LODWORD(v111) = (v92 >> 4) ^ __ROR4__(*&v109[4 * (v82 ^ 0x7F)], 9) ^ v134 ^ *&v111[4 * HIBYTE(v135)];
  LODWORD(v87) = v133 ^ v87;
  LODWORD(v73) = v102 ^ (*&v109[4 * v135] << 23) ^ (*&v109[4 * v135] >> 9) ^ v100;
  v136 = a16 + v56;
  v137 = (__ROR8__(a16 + v56, 8) & 0xF8FFFFFFFFFFFFFFLL) - 0x6AF7234D0CC131D5;
  v138 = __ROR8__(v137 ^ 0x49E9423B6F16E7D2, 8);
  v137 ^= 0xE1AFA7ACF6E0968ELL;
  v139 = (v138 + v137) ^ 0xE49D77DF873DBF7ELL;
  v140 = v139 ^ __ROR8__(v137, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ 0xF5A2F1B9B5D0B209;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = ((v136 + 8) >> 8) - 0x6AF7234D0CC131D5 + ((v136 + 8) >> 3 << 59);
  v144 = (__ROR8__(v141, 8) + v142) ^ 0x5963B6C555D97F1FLL;
  v145 = v144 ^ __ROR8__(v142, 61);
  v146 = (v145 + __ROR8__(v144, 8)) ^ 0x61459D2AF01F24F7;
  v147 = v146 ^ __ROR8__(v145, 61);
  v148 = (v147 + __ROR8__(v146, 8)) ^ 0x64C31C027084DE6CLL;
  v149 = v148 ^ __ROR8__(v147, 61);
  v150 = (v149 + __ROR8__(v148, 8)) ^ 0x1A2AEBE44253AF03;
  v151 = __ROR8__(v150, 8) + (v150 ^ __ROR8__(v149, 61));
  v152 = v143 ^ 0xE1AFA7ACF6E0968ELL;
  v153 = (__ROR8__(v143 ^ 0x49E9423B6F16E7D2, 8) + (v143 ^ 0xE1AFA7ACF6E0968ELL)) ^ 0xE49D77DF873DBF7ELL;
  v154 = v153 ^ __ROR8__(v152, 61);
  v155 = (v154 + __ROR8__(v153, 8)) ^ 0xF5A2F1B9B5D0B209;
  v156 = v155 ^ __ROR8__(v154, 61);
  v157 = (__ROR8__(v155, 8) + v156) ^ 0x5963B6C555D97F1FLL;
  v158 = v157 ^ __ROR8__(v156, 61);
  v159 = (__ROR8__(v157, 8) + v158) ^ 0x61459D2AF01F24F7;
  v160 = v159 ^ __ROR8__(v158, 61);
  v161 = (v160 + __ROR8__(v159, 8)) ^ 0x64C31C027084DE6CLL;
  v162 = v161 ^ __ROR8__(v160, 61);
  v163 = (v162 + __ROR8__(v161, 8)) ^ 0x1A2AEBE44253AF03;
  v164 = (v163 ^ __ROR8__(v162, 61)) + __ROR8__(v163, 8);
  v165 = ((v136 + 16) >> 8) - 0x6AF7234D0CC131D5 + ((v136 + 16) >> 3 << 59);
  v166 = v165 ^ 0x49E9423B6F16E7D2;
  v165 ^= 0xE1AFA7ACF6E0968ELL;
  v167 = (v165 + (v166 << 56) + (v166 >> 8)) ^ 0xE49D77DF873DBF7ELL;
  v168 = v167 ^ __ROR8__(v165, 61);
  v169 = (v168 + __ROR8__(v167, 8)) ^ 0xF5A2F1B9B5D0B209;
  v170 = v169 ^ __ROR8__(v168, 61);
  v171 = (__ROR8__(v169, 8) + v170) ^ 0x5963B6C555D97F1FLL;
  v172 = v171 ^ __ROR8__(v170, 61);
  v173 = (v172 + __ROR8__(v171, 8)) ^ 0x61459D2AF01F24F7;
  v174 = v173 ^ __ROR8__(v172, 61);
  v175 = (v174 + __ROR8__(v173, 8)) ^ 0x64C31C027084DE6CLL;
  v176 = v175 ^ __ROR8__(v174, 61);
  v177 = (v176 + __ROR8__(v175, 8)) ^ 0x1A2AEBE44253AF03;
  v178 = __ROR8__(v177, 8) + (v177 ^ __ROR8__(v176, 61));
  v179 = v164 ^ 0xAB3042D228875C41;
  LOBYTE(v130) = 8 * ((a16 + v56) & 7);
  v180 = (v151 ^ 0xAB3042D228875C41) >> v130;
  v181 = v180 + ((v164 ^ 0xAB3042D228875C41) << (v130 ^ 0x3Au) << 6);
  LODWORD(v164) = (v180 + ((v164 ^ 0x28875C41) << (v130 ^ 0x3A) << 6)) >> 24;
  v182 = *(&off_100315F70 + a12) - 12;
  v183 = *(&off_100315F70 + a55 - 2102);
  LODWORD(v73) = v73 ^ __ROR4__(*&v108[4 * BYTE1(v115)], 4) ^ 0x88306132;
  LODWORD(v177) = *&v108[4 * BYTE1(v132)];
  LODWORD(v108) = v110 ^ __ROR4__(*&v108[4 * BYTE1(v135)], 4);
  LODWORD(v87) = v87 ^ __ROR4__(v177, 4) ^ __ROR4__(*&v109[4 * v131], 9) ^ 0x3F8BFBBC;
  v184 = *(&off_100315F70 + SHIDWORD(a11));
  LODWORD(v177) = a18 ^ a25 ^ *&v182[4 * ((v111 ^ 0x84A43AA4) >> 16)] ^ *(v183 + 4 * BYTE1(v73)) ^ (*(v184 + 4 * BYTE3(v87)) - 499788747);
  v236 = *(v184 + 4 * ((v111 >> 24) ^ 0xF3));
  LODWORD(v215) = *&v182[4 * BYTE2(v87)];
  HIDWORD(v215) = *(v184 + 4 * ((v108 >> 24) ^ 0x1A));
  v233 = *&v182[4 * BYTE2(v73)];
  HIDWORD(v212) = *&v182[4 * ((v108 ^ 0x6D921A99) >> 16)];
  LODWORD(v213) = *(v184 + 4 * BYTE3(v73));
  LODWORD(v212) = *(v183 + 4 * BYTE1(v87));
  v231 = *(v183 + 4 * ((v108 ^ 0x1A99) >> 8));
  HIDWORD(v214) = *(v183 + 4 * ((v111 ^ 0x3AA4) >> 8));
  v185 = *(&off_100315F70 + (a55 ^ 0x903)) - 4;
  v186 = *(v55 - 256);
  LODWORD(v180) = v177 ^ *&v185[4 * (v108 ^ 0x99)] ^ ((*(v186 + (v180 ^ 0x62)) ^ 0xA0) << 24) ^ ((*(v104 + (BYTE1(v181) ^ 0xADLL)) ^ 0x56) << 16) ^ v164 ^ 0x16 ^ *(a52 + (v164 ^ 0xB0)) ^ (((*(a53 + (BYTE2(v181) ^ 0xB5)) - 56) ^ 0xEC) << 8);
  HIDWORD(v213) = *&v185[4 * v73];
  v187 = *&v185[4 * (v111 ^ 0xA4)];
  LODWORD(v214) = *&v185[4 * v87];
  v188 = v179 >> v130;
  LODWORD(v110) = v180 - ((2 * v180) & 0xF63B6508) + 2065543812;
  v189 = (v179 >> v130) + ((v178 ^ 0x33042D228875C41) << (v130 ^ 0x3Au) << 6);
  v190 = v188 ^ 0xCFLL;
  LOBYTE(v176) = BYTE3(v189);
  v191 = BYTE6(v189) ^ 0x5DLL;
  v192 = *(&off_100315F70 + a11) - 12;
  v193 = *(v186 + (BYTE4(v181) ^ 0x5ELL));
  v194 = HIBYTE(v181);
  v195 = *(v104 + (BYTE5(v181) ^ 0xF6));
  v196 = *(a53 + (BYTE6(v181) ^ 0xB7));
  v197 = *(a52 + (HIBYTE(v181) ^ 0xFE));
  LODWORD(v181) = *(v186 + v190);
  LODWORD(v177) = *(v104 + (BYTE1(v189) ^ 0x64));
  LOBYTE(v185) = *(a53 + (BYTE2(v189) ^ 0xCLL));
  v198 = *(a52 + (BYTE3(v189) ^ 0xA7));
  v199 = *(v186 + (BYTE4(v189) ^ 0xECLL));
  v200 = HIBYTE(v189);
  v201 = *(v104 + (BYTE5(v189) ^ 0xF9));
  LOBYTE(v191) = *(a53 + v191);
  LODWORD(v136) = *(a52 + (v200 ^ 0x1C));
  *(a16 + v216) = (109 * v192[((v110 ^ 0xCDD7) >> 8) ^ 0x97]) ^ 0xDC;
  LODWORD(v178) = a24 ^ v237 ^ v212 ^ (v213 - 499788747) ^ HIDWORD(v212) ^ v187 ^ ((v181 ^ 0xCB) << 24) ^ ((v177 ^ 0x89) << 16) ^ (v198 ^ v176) ^ (((v185 - 56) ^ 0x50) << 8);
  LODWORD(v178) = v178 - ((2 * v178) & 0xDEF4341C) - 277210610;
  LODWORD(v164) = v178 ^ 0x15526B81;
  v202 = v178 ^ 0x7750F493;
  v203 = *(&off_100315F70 + SHIDWORD(a10)) - 8;
  *(a16 + v218) = (v203[v178 ^ 0x96] + (v178 ^ 0x93) + 27) ^ 0x28;
  v204 = *(&off_100315F70 + a10) - 8;
  *(a16 + v56) = ((v110 ^ 0x3589CDD7) >> 24) ^ 0x59 ^ v204[((v110 ^ 0x3589CDD7) >> 24) ^ 0x63];
  *(a16 + v217) = ((v110 ^ 0xE4) + v203[v110 ^ 0xE1] + 27) ^ 0x28;
  LODWORD(v178) = v194 ^ v197 ^ a21 ^ a23 ^ v215 ^ (HIDWORD(v215) - 499788747) ^ HIDWORD(v213) ^ HIDWORD(v214) ^ ((v193 ^ 0xD3) << 24) ^ ((v195 ^ 0xE3) << 16) ^ (((v196 - 56) ^ 0x96) << 8) ^ 0x58;
  LODWORD(v73) = v178 - ((2 * v178) & 0x10100FBA) - 2012739619;
  LODWORD(v178) = v200 ^ v136 ^ a19 ^ a22 ^ v233 ^ v231 ^ (v236 - 499788747) ^ v214 ^ ((v199 ^ 0xB4) << 24) ^ ((v201 ^ 0x8D) << 16) ^ (((v191 - 56) ^ 0x16) << 8) ^ 0xBA;
  *(a16 + v219) = ((v73 ^ 0x46948BF4) >> 24) ^ v204[((v73 ^ 0x46948BF4) >> 24) ^ 0xA5] ^ 0x66;
  LODWORD(v178) = v178 - ((2 * v178) & 0xFBC46C8A) - 35506619;
  *(a16 + v227) = (109 * v192[((v178 ^ 0xB22F) >> 8) ^ 0x54]) ^ 0xDB;
  v205 = *(&off_100315F70 + a55 - 2177);
  *(a16 + v223) = *(v205 + (((v178 ^ 0x2894B22F) >> 16) ^ 0x55)) ^ 0x87;
  *(a16 + v224) = ((v73 ^ 0x61) + v203[v73 ^ 0x64] + 27) ^ 0x8F;
  *(a16 + v222) = (109 * v192[((v73 ^ 0x8BF4) >> 8) ^ 0x8FLL]) ^ 0xFC;
  *(a16 + v228) = (109 * v192[BYTE1(v164) ^ 0x5BLL]) ^ 0x2A;
  *(a16 + v226) = *(v205 + (BYTE2(v73) ^ 0x3FLL)) ^ 0x3E;
  *(a16 + v229) = *(v205 + (BYTE2(v164) ^ 0xACLL)) ^ 0xF2;
  *(a16 + v221) = ((v178 ^ 0x2894B22F) >> 24) ^ 0x24 ^ v204[((v178 ^ 0x2894B22F) >> 24) ^ 0x23];
  *(a16 + v220) = *(v205 + (((v110 ^ 0x3589CDD7) >> 16) ^ 0x27)) ^ 0xDA;
  *(a16 + v225) = ((v178 ^ 0x38) + v203[v178 ^ 0x3DLL] + 27) ^ 0xC2;
  v206 = HIDWORD(a13) < 0x960D0F82;
  if (v206 == a3 - 1777528942 < 0x960D0F82)
  {
    v206 = a3 - 1777528942 < HIDWORD(a13);
  }

  *(a16 + v230) = HIBYTE(v202) ^ 0x4F ^ v204[HIBYTE(v202) ^ 0xD8];
  return (*(a14 + 8 * ((42 * v206) ^ a55)))(v201, 3795178549, a3 + 16, v190, v204, &off_100315F70, v195, v203, a9, a10, a11, a12, a13, a14, a15, a16, a17, v208, v209, v210, v211, v212, v213, v214, v215, a16 + v56, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228);
}

void sub_1001F1018(int a1@<W8>)
{
  v4 = (a1 + 1013);
  v5 = ((2 * STACK[0x2F0]) & 0x7BD9FFABDBC6C7FALL) + (STACK[0x2F0] ^ 0xBDECFFD5EDE363FDLL) + STACK[0x6E0] + 0x4213002A121C9C03;
  v6 = __ROR8__(v5 & 0xFFFFFFFFFFFFFFF8, 8);
  v7 = (0x6AF7234D0CC131D4 - v6) & (v4 ^ 0xE17ED4F2859DD54ALL) | (v6 + 0x1508DCB2F33ECE2BLL) & 0x1A812B0D7A623ED0;
  v8 = v7 ^ 0xAC9796C9EA8B26FDLL;
  v7 ^= 0x4D1735E737D57A1uLL;
  v9 = __ROR8__(v8, 8);
  v10 = (v9 + v7 - ((2 * (v9 + v7)) & 0xA8F535F8906AB678) - 0x2B856503B7CAA4C4) ^ 0x30E7ED23CF08E442;
  v11 = v10 ^ __ROR8__(v7, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0xF5A2F1B9B5D0B209;
  v13 = v12 ^ __ROR8__(v11, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ v2;
  v15 = __ROR8__(v14, 8);
  v16 = v14 ^ __ROR8__(v13, 61);
  v17 = (((2 * ((v15 + v16) ^ 0xE7B5DC45273D63A1)) | 0x504C6837B780C63ELL) - ((v15 + v16) ^ 0xE7B5DC45273D63A1) + 0x57D9CBE4243F9CE1) ^ 0x2ED675740CE22449;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = __ROR8__((((2 * (v19 + v18)) | 0x4F1E4801C06BB8FCLL) - (v19 + v18) + 0x5870DBFF1FCA2382) ^ 0xC34C380290B10212, 8);
  v21 = (((2 * (v19 + v18)) | 0x4F1E4801C06BB8FCLL) - (v19 + v18) + 0x5870DBFF1FCA2382) ^ 0xC34C380290B10212 ^ __ROR8__(v18, 61);
  v22 = (((__ROR8__((v20 + v21) ^ v3, 8) + ((v20 + v21) ^ v3 ^ __ROR8__(v21, 61))) ^ v1) >> (8 * (v5 & 7u))) ^ *v5;
  v23 = ((2 * STACK[0x2F0]) & 0x7BD9FFABDBC6C7FALL) + (STACK[0x2F0] ^ 0xBDECFFD5EDE363FDLL) + STACK[0x6E0] + 0x4213002A121C9C04;
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = v24 - ((2 * v24 + 0x2A11B965E67D9C56) & 0x86491E2C94CF3D9ALL) - 0x27D29436C2599308;
  v26 = v25 ^ 0xACDCD2D2571791FLL;
  v25 ^= 0xA28B28BABC870843;
  v27 = __ROR8__(v26, 8);
  v28 = __ROR8__((((2 * ((v27 + v25) ^ 0xE86B6D598CE7C62CLL)) & 0x3776BD40C68BCDALL) - ((v27 + v25) ^ 0xE86B6D598CE7C62CLL) - 0x1BBB5EA06345E6ELL) ^ 0xF2B25093F211D8C0, 8);
  v29 = (((2 * ((v27 + v25) ^ 0xE86B6D598CE7C62CLL)) & 0x3776BD40C68BCDALL) - ((v27 + v25) ^ 0xE86B6D598CE7C62CLL) - 0x1BBB5EA06345E6ELL) ^ 0xF2B25093F211D8C0 ^ __ROR8__(v25, 61);
  v30 = (v28 + v29) ^ 0xF5A2F1B9B5D0B209;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v2;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x61459D2AF01F24F7;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x64C31C027084DE6CLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v3;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = ((((v40 + v39 - ((2 * (v40 + v39)) & 0x46C4DEB32D067766) + 0x23626F5996833BB3) ^ 0x88522D8BBE0467F2) >> (8 * (v23 & 7u))) ^ *v23) << 48;
  v42 = ((2 * STACK[0x2F0]) & 0x7BD9FFABDBC6C7FALL) + (STACK[0x2F0] ^ 0xBDECFFD5EDE363FDLL) + STACK[0x6E0] + 0x4213002A121C9C05;
  v43 = v41 | (v22 << 56);
  v44 = __ROR8__(v42 & 0xFFFFFFFFFFFFFFF8, 8);
  v45 = ((2 * (v44 - 0x6AF7234D0CC131D5)) | 0xE988EE55C850EEE4) - (v44 - 0x6AF7234D0CC131D5) + 0xB3B88D51BD7888ELL;
  v46 = v45 ^ 0xBD2D35118B3E90A0;
  v45 ^= 0x156BD08612C8E1FCuLL;
  v47 = (__ROR8__(v46, 8) + v45) ^ 0xE49D77DF873DBF7ELL;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (v49 + v48 - ((2 * (v49 + v48)) & 0x6A1EDDA6EAF44D6) - 0x7CAF0912C8A85D95) ^ 0x76F2075482871062;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ v2;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x61459D2AF01F24F7;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0x64C31C027084DE6CLL;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ v3;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = __ROR8__(v58, 8);
  v61 = v43 | (((((((v60 + v59) | 0xC0D69FAEA99994B0) - ((v60 + v59) | 0x3F29605156666B4FLL) + 0x3F29605156666B4FLL) ^ 0x6BE6DD7C811EC8F1) >> (8 * (v42 & 7u))) ^ *v42) << 40);
  v62 = ((2 * STACK[0x2F0]) & 0x7BD9FFABDBC6C7FALL) + (STACK[0x2F0] ^ 0xBDECFFD5EDE363FDLL) + STACK[0x6E0] + 0x4213002A121C9C06;
  v63 = (__ROR8__(v62 & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v64 = v63 ^ 0x4DE9423B6F16E7D2;
  v63 ^= 0xE5AFA7ACF6E0968ELL;
  v65 = (__ROR8__(v64, 8) + v63) ^ 0xE49D77DF873DBF7ELL;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0xF5A2F1B9B5D0B209;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ v2;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (((v71 + v70) | 0xAC2390E6C13EB103) - ((v71 + v70) | 0x53DC6F193EC14EFCLL) + 0x53DC6F193EC14EFCLL) ^ 0xCD660DCC312195F4;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0x64C31C027084DE6CLL;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = __ROR8__(v74, 8);
  v77 = (v76 + v75 - ((2 * (v76 + v75)) & 0xE3F30D59F9F95424) + 0x71F986ACFCFCAA12) ^ 0x6BD36D48BEAF0511;
  v78 = ((2 * STACK[0x2F0]) & 0x7BD9FFABDBC6C7FALL) + (STACK[0x2F0] ^ 0xBDECFFD5EDE363FDLL) + STACK[0x6E0] + 0x4213002A121C9C07;
  v79 = v61 | (((((__ROR8__(v77, 8) + (v77 ^ __ROR8__(v75, 61))) ^ v1) >> (8 * (v62 & 7u))) ^ *v62) << 32);
  v80 = __ROR8__(v78 & 0xFFFFFFFFFFFFFFF8, 8);
  v81 = -2 - (((0x6AF7234D0CC131D4 - v80) | 0x44BA01A51A183DE0) + ((v80 + 0x1508DCB2F33ECE2BLL) | 0xBB45FE5AE5E7C21FLL));
  v82 = __ROR8__(v81 ^ 0xD53439E750EDA32, 8);
  v81 ^= 0xA515A609ECF8AB6ELL;
  v83 = (((2 * ((v82 + v81) ^ 0xBE8B2A9C9DF400CFLL)) & 0xAA23D21ABB2D7C00) - ((v82 + v81) ^ 0xBE8B2A9C9DF400CFLL) + 0x2AEE16F2A26941FFLL) ^ 0x70F84BB1B8A0FE4ELL;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = __ROR8__(v83, 8);
  v86 = __ROR8__((((2 * (v85 + v84)) & 0x7D84ABA23E9CFE7ELL) - (v85 + v84) - 0x3EC255D11F4E7F40) ^ 0x349F5B97556132C9, 8);
  v87 = (((2 * (v85 + v84)) & 0x7D84ABA23E9CFE7ELL) - (v85 + v84) - 0x3EC255D11F4E7F40) ^ 0x349F5B97556132C9 ^ __ROR8__(v84, 61);
  v88 = (((v86 + v87) | 0xD44CE57641558F6ELL) - ((v86 + v87) | 0x2BB31A89BEAA7091) + 0x2BB31A89BEAA7091) ^ 0x8D2F53B3148CF071;
  v89 = __ROR8__(v88, 8);
  v90 = v88 ^ __ROR8__(v87, 61);
  v91 = (((2 * (v89 + v90)) & 0x56507D4A3E0F7B40) - (v89 + v90) - 0x2B283EA51F07BDA1) ^ 0xB5925C7010E766A8;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = __ROR8__(v91, 8);
  v94 = (((2 * (v93 + v92)) & 0xEEF74AFFBBE4930CLL) - (v93 + v92) + 0x8845A80220DB679) ^ 0x6C47468252896815;
  v95 = v94 ^ __ROR8__(v92, 61);
  v96 = __ROR8__(v94, 8);
  v97 = (((2 * (v96 + v95)) & 0x29B65A41F14458CCLL) - (v96 + v95) - 0x14DB2D20F8A22C67) ^ 0xF10E393B450E7C9ALL;
  v98 = v97 ^ __ROR8__(v95, 61);
  v99 = __ROR8__(v97, 8);
  v100 = ((2 * STACK[0x2F0]) & 0x7BD9FFABDBC6C7FALL) + (STACK[0x2F0] ^ 0xBDECFFD5EDE363FDLL) + STACK[0x6E0] + 0x4213002A121C9C08;
  v101 = v79 & 0xFFFFFFFF00FFFFFFLL | (((((v99 + v98 - ((2 * (v99 + v98)) & 0xDE26E3A15DEF6F6ALL) + 0x6F1371D0AEF7B7B5) ^ 0xC42333028670EBF4) >> (8 * (v78 & 7u))) ^ *v78) << 24);
  v102 = __ROR8__(v100 & 0xFFFFFFFFFFFFFFF8, 8);
  v103 = ((2 * v102 + 0x2A11B965E67D9C56) & 0xCB0FE93C98309366) - v102 + 0x56F2EAEC0A8E821;
  v104 = v103 ^ 0xD391495ADCF1519ELL;
  v103 ^= 0x7BD7ACCD450720C2uLL;
  v105 = __ROR8__(v104, 8);
  v106 = (((v105 + v103) ^ 0x8FF42FE233FDEFE0 | 0xCCF5982A4DA0F226) - ((v105 + v103) ^ 0x8FF42FE233FDEFE0 | 0x330A67D5B25F0DD9) + 0x330A67D5B25F0DD9) ^ 0xA79CC017F960A2B8;
  v107 = v106 ^ __ROR8__(v103, 61);
  v108 = (__ROR8__(v106, 8) + v107) ^ 0xF5A2F1B9B5D0B209;
  v109 = v108 ^ __ROR8__(v107, 61);
  v110 = (__ROR8__(v108, 8) + v109) ^ v2;
  v111 = v110 ^ __ROR8__(v109, 61);
  v112 = __ROR8__(v110, 8);
  v113 = (((2 * (v112 + v111)) | 0x6B60C641F567F5AALL) - (v112 + v111) - 0x35B06320FAB3FAD5) ^ 0x54F5FE0A0AACDE22;
  v114 = v113 ^ __ROR8__(v111, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ 0x64C31C027084DE6CLL;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ v3;
  v118 = ((2 * STACK[0x2F0]) & 0x7BD9FFABDBC6C7FALL) + (STACK[0x2F0] ^ 0xBDECFFD5EDE363FDLL) + STACK[0x6E0] + 0x4213002A121C9C09;
  v119 = v101 & 0xFFFFFFFFFF00FFFFLL | (((((__ROR8__(v117, 8) + (v117 ^ __ROR8__(v116, 61))) ^ v1) >> (8 * (v100 & 7u))) ^ *v100) << 16);
  v120 = (__ROR8__(v118 & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v121 = __ROR8__(v120 ^ 0x4DE9423B6F16E7D2, 8);
  v120 ^= 0xE5AFA7ACF6E0968ELL;
  v122 = (v121 + v120) ^ 0xE49D77DF873DBF7ELL;
  v123 = v122 ^ __ROR8__(v120, 61);
  v124 = __ROR8__(v122, 8);
  v125 = (v124 + v123 - ((2 * (v124 + v123)) & 0x10D88C22F14EF5CLL) + 0x86C461178A77AELL) ^ 0xF52435D8A25AC5A7;
  v126 = v125 ^ __ROR8__(v123, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ v2;
  v128 = v127 ^ __ROR8__(v126, 61);
  v129 = __ROR8__(v127, 8);
  v130 = (((2 * (v129 + v128)) | 0xF8F4D7410A173B82) - (v129 + v128) - 0x7C7A6BA0850B9DC1) ^ 0x1D3FF68A7514B936;
  v131 = v130 ^ __ROR8__(v128, 61);
  v132 = (__ROR8__(v130, 8) + v131) ^ 0x64C31C027084DE6CLL;
  v133 = v132 ^ __ROR8__(v131, 61);
  v134 = __ROR8__(v132, 8);
  v135 = (((v134 + v133) & 0x865B83655FEF6F5 ^ 0x2498320576F0D5) + ((v134 + v133) & 0xF79A47C9AA01090ALL ^ 0xC68006C000000803) - 1) ^ 0xDC8E7516472557D4;
  v136 = v119 & 0xFFFFFFFFFFFF00FFLL | (((((__ROR8__(v135, 8) + (v135 ^ __ROR8__(v133, 61))) ^ v1) >> (8 * (v118 & 7u))) ^ *v118) << 8);
  v137 = ((2 * STACK[0x2F0]) & 0x7BD9FFABDBC6C7FALL) + (STACK[0x2F0] ^ 0xBDECFFD5EDE363FDLL) + STACK[0x6E0] + 0x4213002A121C9C0ALL;
  v138 = __ROR8__(v137 & 0xFFFFFFFFFFFFFFF8, 8);
  v139 = ((2 * (v138 - 0x6AF7234D0CC131D5)) | 0x804B0297E5FB7EA4) - (v138 - 0x6AF7234D0CC131D5) - 0x4025814BF2FDBF52;
  v140 = v139 ^ 0x9CCC3709DEB5880;
  v139 ^= 0xA18A26E7041D29DCLL;
  v141 = __ROR8__(v140, 8);
  v142 = (((2 * (v141 + v139)) & 0xC07D41EEC5780520) - (v141 + v139) + 0x1FC15F089D43FD6FLL) ^ 0xFB5C28D71A7E4211;
  v143 = v142 ^ __ROR8__(v139, 61);
  v144 = __ROR8__(v142, 8);
  v145 = (v144 + v143 - ((2 * (v144 + v143)) & 0xC66D97DBD851D3B2) - 0x1CC9341213D71627) ^ 0x16943A5459F85BD0;
  v146 = v145 ^ __ROR8__(v143, 61);
  v147 = __ROR8__(v145, 8);
  v148 = (((2 * (v147 + v146)) | 0x341E0CCC86BF04E6) - (v147 + v146) + 0x65F0F999BCA07D8DLL) ^ 0xC36CB0A31686FD6CLL;
  v149 = v148 ^ __ROR8__(v146, 61);
  v150 = __ROR8__(v148, 8);
  v151 = __ROR8__((v150 + v149 - ((2 * (v150 + v149)) & 0xA996373FDA7782A4) + 0x54CB1B9FED3BC152) ^ 0x358E86B51D24E5A5, 8);
  v152 = (v150 + v149 - ((2 * (v150 + v149)) & 0xA996373FDA7782A4) + 0x54CB1B9FED3BC152) ^ 0x358E86B51D24E5A5 ^ __ROR8__(v149, 61);
  v153 = (v151 + v152) ^ 0x64C31C027084DE6CLL;
  v154 = v153 ^ __ROR8__(v152, 61);
  v155 = __ROR8__(v153, 8);
  v156 = (v155 + v154 - ((2 * (v155 + v154)) & 0xAB9BCCB5A89BD69ALL) + 0x55CDE65AD44DEB4DLL) ^ 0x4FE70DBE961E444ELL;
  v157 = v156 ^ __ROR8__(v154, 61);
  v158 = __ROR8__(v156, 8);
  v159 = v136 | ((((((2 * (v158 + v157)) & 0x970A9B9F1F62DE94) - (v158 + v157) - 0x4B854DCF8FB16F4BLL) ^ 0x1F4AF0E258C9CCF4) >> (8 * (v137 & 7u))) ^ *v137);
  STACK[0x810] = v159 - ((2 * v159) & 0x8F13CB4E9EA6B5BALL) + 0x4789E5A74F535ADDLL;
  JUMPOUT(0x1001F1EC4);
}

uint64_t sub_1001F1F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  STACK[0x800] = v5;
  STACK[0x470] = 0;
  STACK[0x968] = 0;
  return (*(v6 + 8 * (((a4 == 0) * ((v4 ^ 0xA97) - 3770 + 2 * (v4 ^ 0xA97) - 10083)) ^ v4)))(a1, a2, a3, 16215976);
}

uint64_t sub_1001F20EC@<X0>(unsigned int a1@<W8>)
{
  v3 = 16 - (((v1 - 16 + ((((v1 - 110) ^ 3) + a1) ^ 0xE) - 69) ^ ((6 - a1) ^ (((((v1 - 110) ^ 3) + a1) ^ 0xF9) + 4))) & 0xFu);
  LODWORD(STACK[0x7B0]) = v3;
  return (*(v2 + 8 * ((11411 * ((a1 ^ 0xBB5E7BE4FFBC7F7FLL) + ((2 * a1) & 0x1FF78FEFELL) + ((2 * v3) & 0xFFFFFFFFFFFFFFE7) + (v3 ^ 0x7BFF59FFBC3DB9F3) - 0x375DD5E4BBFA3972 < 0xFFFFFFF6)) ^ v1)))();
}

uint64_t sub_1001F2254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a17 = v18 + 1317436891 * ((((2 * &a15) | 0x5EB87AC0) - &a15 + 1352909472) ^ 0x1F5FA516) + 3648;
  a15 = &a11;
  v19 = (*(v17 + 8 * (v18 + 5131)))(&a15);
  return (*(v17 + 8 * ((999 * (a16 == ((v18 + 197) ^ 0xF80190))) ^ v18)))(v19);
}

uint64_t sub_1001F2318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  *a10 = a1;
  v21 = (*(v20 + 8 * (v18 + 1861)))(a18, 0x100004077774924);
  return (*(v20 + 8 * (((a18 + v19 - ((2 * a18) & 0x3503BC70) != v19) * (((289 * (v18 ^ 0x1E53)) ^ 0xFFFFEE49) + ((v18 - 2487) | 0xA08))) ^ v18)))(v21);
}

uint64_t sub_1001F23D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = STACK[0x880];
  LODWORD(STACK[0x944]) = 16257999;
  *STACK[0x6A8] = v3;
  return (STACK[0x4C0])(a1, a2, a3, 16257999);
}

uint64_t sub_1001F2404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, __int16 a14, char a15, __int16 a16, char a17, int a18, int a19, unsigned int a20, uint64_t a21, char *a22, unsigned int a23, char *a24)
{
  a21 = a12;
  a22 = &a15;
  a20 = (v27 + 1384) ^ (33731311 * ((((&a19 | 0xFF7F87B0) ^ 0xFFFFFFFE) - (~&a19 | 0x80784F)) ^ 0x3976B26C));
  (*(v25 + 8 * (v27 ^ 0x225D)))(&a19);
  v28 = 2 * &a19;
  a24 = &a17;
  a23 = (v27 + 1490) ^ ((((v28 | 0xA3D17670) - &a19 - 1374206776) ^ 0x63F3E0A8) * v26);
  a21 = a12;
  a22 = v24;
  (*(v25 + 8 * (v27 ^ 0x225B)))(&a19);
  a21 = a12;
  a22 = &a13;
  a20 = (v27 + 1384) ^ (33731311 * (((v28 | 0xBB41B4AE) - &a19 - 1570822743) ^ 0x64561074));
  (*(v25 + 8 * (v27 ^ 0x225D)))(&a19);
  a21 = a12;
  LODWORD(a22) = v27 - 2008441969 * (((v28 | 0x2CB27AC6) - &a19 - 374947171) ^ 0x5EC0696D) + 3817;
  v29 = (*(v25 + 8 * (v27 ^ 0x22AF)))(&a19);
  return (*(v25 + 8 * ((7873 * (a19 == ((118 * (v27 ^ 0x723)) ^ 0xF81955))) ^ v27)))(v29);
}

uint64_t sub_1001F2638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = ((v3 + 502793853) & 0x3564DE5D ^ 0xFFFFFFFFFFFFE1A2) + v2;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((1060 * (v6 == 0)) ^ (v4 + v3 + 1234))))();
}

uint64_t sub_1001F2758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, char a14, __int16 a15, char a16, __int16 a17, char a18, uint64_t a19, int a20, char a21, int a22, unsigned int a23, uint64_t a24, char *a25)
{
  v28 = v26 - 320;
  v29 = ((v26 - 757293296) & 0x2D235FD6) + 745083378;
  v30 = v26 - 847;
  a24 = a12;
  a25 = &a11;
  a23 = v30 ^ (33731311 * ((-183620733 - (&a22 | 0xF50E2B83) + (&a22 | 0xAF1D47C)) ^ 0x33071E5F));
  (*(v25 + 8 * (v28 + 5822)))(&a22);
  a24 = a12;
  a25 = &a14;
  a23 = v30 ^ (33731311 * (((&a22 | 0x7532A812) - (&a22 & 0x7532A812)) ^ 0x4CC46231));
  (*(v25 + 8 * (v28 ^ 0x2BC2)))(&a22);
  a23 = v30 ^ (33731311 * (((&a22 | 0xA58AEC74) - &a22 + (&a22 & 0x5A751388)) ^ 0x9C7C2657));
  a24 = a12;
  a25 = &a16;
  (*(v25 + 8 * (v28 + 5822)))(&a22);
  a23 = v30 ^ (33731311 * (((&a22 | 0x5F6AEEA2) - (&a22 & 0x5F6AEEA2)) ^ 0x669C2481));
  a24 = a12;
  a25 = &a18;
  (*(v25 + 8 * (v28 + 5822)))(&a22);
  a24 = a12;
  a25 = &a21;
  a23 = v30 ^ (33731311 * ((2 * (&a22 & 0x2C92B328) - &a22 + 1399672021) ^ 0x6A9B86F6));
  (*(v25 + 8 * (v28 ^ 0x2BC2)))(&a22);
  LODWORD(a25) = v28 - 2008441969 * ((((&a22 | 0x9DD00B52) ^ 0xFFFFFFFE) - (~&a22 | 0x622FF4AD)) ^ 0x2AB6A0A3) + 1906;
  a24 = a12;
  v31 = (*(v25 + 8 * (v28 + 5872)))(&a22);
  return (*(v25 + 8 * (((a22 != v27) * (v29 - 745087051)) ^ v28)))(v31);
}

uint64_t sub_1001F2A20(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  *a2 = 0;
  a15 = 476323082 - 1710126949 * (((&a15 | 0xE57874C7) + (~&a15 | 0x1A878B38)) ^ 0xD7632F56);
  v17 = (*(v16 + 77088))(&a15);
  return (*(v16 + 8 * ((12765 * (a16 == 16257999)) ^ 0x131Eu)))(v17);
}

uint64_t sub_1001F2CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a16 = 1317436891 * ((&a14 + 868432905 - 2 * (&a14 & 0x33C33C09)) ^ 0x83C0A47F) + 8154;
  a14 = &a10;
  v18 = (*(v17 + 77096))(&a14);
  return (*(v17 + 8 * ((410 * (a15 == v16)) ^ 0x1C7Cu)))(v18);
}

uint64_t sub_1001F2D68()
{
  STACK[0x870] = 0;
  STACK[0x518] = *(v1 + 8 * (v0 - 2391));
  return sub_100236B70();
}

uint64_t sub_1001F2D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = (*(v67 + 8 * (v65 ^ 0x283F)))((((v65 - 3485) | 0x8A1u) + 197497010) ^ LODWORD(STACK[0x80C]), 0x100004077774924);
  STACK[0x9E8] = v68;
  if (v68)
  {
    a51 = v66;
  }

  LODWORD(STACK[0x9F4]) = a51;
  return (*(a65 + 8 * (((v68 == 0) * (((v65 - 3485) ^ 0x1B) + 56)) ^ v65)))();
}

uint64_t sub_1001F2E30@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  STACK[0x8F8] = v2;
  v3 = STACK[0x680];
  STACK[0x900] = STACK[0x680];
  return (*(a1 + 8 * ((199 * (((a2 + 114) ^ (v2 - v3 > ((a2 - 7228) ^ 0x236uLL))) & 1)) ^ a2)))();
}

uint64_t sub_1001F2E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, int a14, uint64_t a15)
{
  v20 = (((&a12 | 0xE0155427) - &a12 + (&a12 & 0x1FEAABD8)) ^ 0xD660D7A4) * v19;
  a13 = v20 + (*(v15 + 8) ^ 0xE07EF7EB) + 1067302591 + ((v18 ^ 0xC0FDE18F) & (2 * *(v15 + 8)));
  a14 = v20 + v18 - 2743 + 6794;
  a15 = a11;
  v21 = (*(v16 + 8 * ((v18 - 2743) ^ 0x260F)))(&a12);
  return (*(v16 + 8 * ((a12 == v17) | (16 * (a12 == v17)) | (v18 - 2743))))(v21);
}

uint64_t sub_1001F2F64()
{
  v2 = STACK[0x580];
  STACK[0x548] = *(v1 + 8 * v0);
  return (*(v1 + 8 * ((((((v0 - 693154069) & 0x2950BA4F) - 13) ^ 0xBFA ^ ((((v0 - 693154069) & 0x2950BA4F) - 13) | 8) ^ 0xBD8) * (v2 == 0)) ^ (v0 - 693154069) & 0x2950BA4F)))();
}

uint64_t sub_1001F2FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = v69 & 0xF2B6FB7F;
  v73 = (*(v71 + 8 * (v69 & 0xF2B6FB7F ^ 0x7FF)))((v70 + (((v69 & 0xF2B6FB7F) - 1448363638) & 0x56543F7F) - 6312 - 703) ^ LODWORD(STACK[0x6B4]), 0x100004077774924);
  STACK[0xA78] = v73;
  if (v73)
  {
    a69 = 16257999;
  }

  LODWORD(STACK[0xA84]) = a69;
  return (*(v71 + 8 * ((45 * (v73 == 0)) ^ v72)))();
}

uint64_t sub_1001F3084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x958] = v5;
  v6 = STACK[0x570];
  STACK[0x960] = STACK[0x570];
  return (*(a4 + 8 * ((15316 * (v5 - v6 > ((v4 - 1752925340) & 0x687B7DE5) - 5212)) ^ v4)))();
}

uint64_t sub_1001F30D4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = STACK[0x3A0];
  v9 = *(STACK[0x3E8] + 8 * (v7 - 4393));
  v10 = *a3;
  v11 = __ROR8__((*a3 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v12 = (v11 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v13 = __ROR8__((v11 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8);
  v14 = (v6 - ((v13 + v12) | v6) + ((v13 + v12) | 0x1EC48F9A8BC8C84FLL)) ^ 0xFA59F8450CF57731;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (v4 - ((v16 + v15) | v4) + ((v16 + v15) | 0x15BDDEA04F62FFAALL)) ^ 0xE01F2F19FAB24DA3;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x5963B6C555D97F1FLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v3 - ((v21 + v20) | v3) + ((v21 + v20) | 0x43769D215A5E7E7)) ^ 0x6572F4F8E5BAC310;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) & 0x95D159776768EC9ALL) - (v24 + v23) - 0x4AE8ACBBB3B4764ELL) ^ 0xD1D44F463CCF57DELL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0xD800CF627F7DCE02) - (v27 + v26) + 0x13FF984EC04118FELL) ^ 0x9D573AA8212B7FDLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  *(v10 + 4) = BYTE1(LODWORD(STACK[0x3A0])) ^ 0x98 ^ (((((2 * (v30 + v29)) & 0x4CC31BBC7D14A244) - (v30 + v29) + 0x599E7221C175AEDDLL) ^ 0xF2AE30F3E9F2F29CLL) >> (8 * ((v10 + 4) & 7)));
  v31 = __ROR8__((v10 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v32 = ((2 * (v31 - 0x6AF7234D0CC131D5)) | 0x3E48AF211110F5F6) - (v31 - 0x6AF7234D0CC131D5) - 0x1F24579088887AFBLL;
  v33 = v32 ^ 0x56CD15ABE79E9D29;
  v32 ^= 0xFE8BF03C7E68EC75;
  v34 = __ROR8__(v33, 8);
  v35 = (((2 * (v34 + v32)) & 0x42379E9795A534D6) - (v34 + v32) + 0x5EE430B4352D6594) ^ 0xBA79476BB210DAEALL;
  v36 = v35 ^ __ROR8__(v32, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * (v37 + v36)) | 0xF087926224A8E20ALL) - (v37 + v36) - 0x7843C93112547105) ^ 0x8DE13888A784C30CLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0x5963B6C555D97F1FLL;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x61459D2AF01F24F7;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((2 * (v44 + v43)) | 0x8BD1FBA0C354CF8ELL) - (v44 + v43) - 0x45E8FDD061AA67C7) ^ 0x212BE1D2112EB9ABLL;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x1A2AEBE44253AF03;
  v48 = __ROR8__(v47, 8) + (v47 ^ __ROR8__(v46, 61));
  *(v10 + 5) = v8 ^ 0x9E ^ (((v5 - (v48 | v5) + (v48 | 0x1B453AE3A5BDDFB3)) ^ 0xB07578318D3A83F2) >> (8 * ((v10 + 5) & 7)));
  return v9();
}

uint64_t sub_1001F3508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t *a37)
{
  v40 = *a37;
  *(v39 - 232) = v37 + ((((v39 - 232) | 0x31AB0659) - ((v39 - 232) & 0x31AB0659)) ^ 0xE846ADA) * v38 - 4526;
  *(v39 - 224) = v40;
  v41 = (*(a4 + 8 * (v37 + 1771)))(v39 - 232);
  v42 = STACK[0x3E8];
  v43 = STACK[0x710];
  STACK[0x6F0] = STACK[0x710];
  LODWORD(STACK[0x618]) = STACK[0x564];
  STACK[0x4D8] = &STACK[0x598];
  STACK[0x468] = 0;
  LODWORD(STACK[0x7E4]) = 197499219;
  STACK[0x448] = 0;
  STACK[0x698] = 0;
  return (*(v42 + 8 * (((v43 == 0) * (((5 * (v37 ^ 0x1E3D) + 4369) | 0x840) ^ 0x1DE2)) ^ v37)))(v41);
}

uint64_t sub_1001F3608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(((2 * v72) & 0x1EBE5E6AALL) + a1 + (v71 ^ v72 ^ 0x1DA ^ 0xFBFBDF27F5F2F402) + 0x40420D80A0D0CABLL) = 0;
  *(((2 * (v72 + 4)) & 0x1B7FEC7F2) + ((v72 + 4) ^ 0xCBBF5FDEDBFF63F9) + a1 + 0x3440A02124009C07) = -9392;
  v74 = (v72 + 6);
  v75 = v74 ^ 0xA7BCFEEEE5FFFF67;
  v76 = (2 * v74) & 0x1CBFFFECELL;
  v77 = (a71 ^ 0x9E466626) & (2 * (a71 & 0x44)) | a71 & 0x44;
  LODWORD(v74) = ((2 * (a71 ^ 0xB68462AE)) ^ 0x92044954) & (a71 ^ 0xB68462AE) ^ (2 * (a71 ^ 0xB68462AE)) & 0x282124EA;
  v78 = v74 ^ 0x2821242A;
  LODWORD(v74) = v74 & (4 * v77) | v77;
  v79 = ((4 * v78) ^ 0xA78C93A8) & v78 ^ (4 * v78) & 0x69E324E8;
  LODWORD(v74) = (v79 ^ 0x218000A0) & (16 * v74) ^ v74;
  v80 = ((16 * (v79 ^ 0x48632442)) ^ 0x9E324EA0) & (v79 ^ 0x48632442) ^ (16 * (v79 ^ 0x48632442)) & 0x69E324E0;
  LODWORD(v74) = v74 ^ 0x69E324EA ^ (v80 ^ 0x8220400) & (v74 << 8);
  LODWORD(v74) = a71 ^ (2 * ((v74 << 16) & 0x69E30000 ^ v74 ^ ((v74 << 16) ^ 0x24EA0000) & (((v80 ^ 0x61C1204A) << 8) & 0x69E30000 ^ 0x8C30000 ^ (((v80 ^ 0x61C1204A) << 8) ^ 0x63240000) & (v80 ^ 0x61C1204A))));
  v81 = (v76 + v75 + a1 + 0x584301111A000099);
  *v81 = BYTE3(v74) ^ 0x4D;
  v81[1] = BYTE2(v74) ^ 0x65;
  v81[2] = BYTE1(v74) ^ 0xF;
  v81[3] = v74 ^ 0x90;
  return (*(v73 + 8 * ((19 * ((LODWORD(STACK[0x654]) | ((LODWORD(STACK[0x654]) < 0x2098B9BC) << 32)) == 546879932)) ^ v71)))();
}

uint64_t sub_1001F38D8@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  STACK[0x918] = v2;
  v3 = STACK[0x3F8];
  STACK[0x920] = STACK[0x3F8];
  return (*(a1 + 8 * ((721 * (v2 - v3 > (a2 - 128) - 5212)) ^ a2)))();
}

uint64_t sub_1001F3920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, char *a19)
{
  a19 = &a12;
  a18 = (v21 + 884) ^ (((&a14 & 0x4B525B93 | ~(&a14 | 0x4B525B93)) ^ 0x86B6FFFC) * v20);
  a16 = a10;
  a17 = &a9 + 4;
  (*(v19 + 8 * (v21 + 7133)))(&a14);
  a15 = (v21 + 778) ^ (33731311 * ((&a14 & 0x8BBDD255 | ~(&a14 | 0x8BBDD255)) ^ 0x4DB4E789));
  a16 = a10;
  a17 = &a9;
  (*(v19 + 8 * (v21 + 7127)))(&a14);
  LODWORD(a17) = v21 - 2008441969 * ((((2 * &a14) | 0xC0C87760) - &a14 - 1617181616) ^ 0x28FD6FBE) + 3211;
  a16 = a10;
  v22 = (*(v19 + 8 * (v21 ^ 0x2C09)))(&a14);
  return (*(v19 + 8 * ((6920 * (a14 == ((v21 + 1884255306) & 0x9FFF) + 16250355)) ^ v21)))(v22);
}

uint64_t sub_1001F3A88@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v10 = (v3 + (a2 ^ 0x1FEF3DD9FFFF2166) - 0x1FEF3DD9FFFF2166 + ((a2 << (v6 + 62)) & 0x3FDE7BB3FFFE42CCLL));
  v11 = (*v10 << 24) | (v10[1] << 16) | (v10[2] << 8);
  v12 = (v11 | v10[3]) + a1 - 2 * ((v11 | v10[3]) & v5 ^ v10[3] & 0xC);
  v13 = v3 + ((2 * (a2 + 4)) & 0x5DFF6D7F6C59F5AELL) + ((a2 + 4) ^ 0xEEFFB6BFB62CFAD7) + 0x1100494049D30529;
  v14 = (_byteswap_ushort(*v13) - 2 * (_byteswap_ushort(*v13) & 0x3E9E ^ *(v13 + 1) & 0xA) + 16023);
  switch(v14)
  {
    case 28242:
      STACK[0x770] = v3 + v4;
      STACK[0x8C8] = v2;
      return (*(v8 + 8 * (((v12 == (v9 ^ 0x1B31) + 197495905) * ((v9 - 5430) ^ 0x16E)) ^ (v9 - 3531))))();
    case 47636:
      return (*(v8 + 8 * ((((27 * (v9 ^ 0x174A)) ^ 0x4D8) * (v7 == a1 + 8)) ^ (v9 - 1037))))();
    case 43494:
      return (*(v8 + 8 * ((11600 * (v7 == ((v9 - 6049) | 0xE51) + 197495524)) ^ (v9 - 2625))))();
    default:
      return sub_100104824();
  }
}

uint64_t sub_1001F3CE0()
{
  v5 = *v1;
  STACK[0x658] = v2;
  STACK[0x5B8] = *(v4 + 8 * v0);
  STACK[0x4A8] = 0;
  LODWORD(STACK[0x778]) = 0;
  LODWORD(STACK[0x6D4]) = 197499219;
  return (*(v4 + 8 * ((37 * (((v3 + 75) ^ (v5 == 0)) & 1)) | (v3 - 606))))();
}

uint64_t sub_1001F3D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15)
{
  v20 = 956911519 * (((v19 | 0x5E9F28233A583B6) - v19 + (v19 & 0xFA160D7DCC5A7C48)) ^ 0x40DF875ED934F3B3);
  LODWORD(a13) = v20 ^ 0x3FE;
  a14 = v17 - ((2 * v17) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v20;
  a15 = a9;
  (*(v18 + 76792))(&a13);
  a13 = v16;
  LODWORD(a14) = 1824088897 * ((v19 - 1508675146 - 2 * (v19 & 0xA61371B6)) ^ 0xFE7AA2D4) + 2305;
  a15 = a9;
  (*(v18 + 76720))(&a13);
  v21 = 1875091903 * ((((2 * v19) | 0x6749906A) - v19 + 1281046475) ^ 0x85D14BB6);
  HIDWORD(a13) = ((2 * v15) & 0xED7F7F7C) + (v15 ^ 0x76BFBFBE) - 1453525268 + v21;
  LODWORD(a14) = v21 + 7724;
  a15 = a9;
  v22 = (*(v18 + 77160))(&a13);
  return (*(v18 + 8 * ((2544 * (a13 == 16257999)) ^ 0x13CDu)))(v22);
}

uint64_t sub_1001F3F68(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x43C]) = a4;
  STACK[0x610] = *(v5 + 8 * (v4 - 8457));
  return sub_1001AEC88((v4 + 1448200021) & 0xA9AE34DE);
}

uint64_t sub_1001F4C08@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = a2 ^ 0x1008;
  STACK[0x830] = *(a1 + 8 * a2);
  v5 = (*(a1 + 8 * (a2 ^ 0x250D)))(112, v2);
  v6 = STACK[0x3E8];
  STACK[0x7D8] = v5;
  return (*(v6 + 8 * ((((v4 ^ (v5 == 0)) & 1) * v3) ^ v4)))();
}

void sub_1001F4D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  STACK[0x3D0] = a7 & 0xFFFFFFF8;
  *&STACK[0x3E0] = xmmword_1002BF670;
  JUMPOUT(0x1001F4E34);
}

uint64_t sub_1001F59D0(uint64_t a1)
{
  v4 = *(v2 + 4);
  *(a1 + 20) = v4;
  return (*(v3 + 8 * (((v4 == v1 - 4041) * ((v1 + 5207) ^ 0x240B)) ^ v1)))();
}

uint64_t sub_1001F5C28@<X0>(unint64_t a1@<X8>)
{
  v4 = LOWORD(STACK[0x8D4]);
  if (v4 == 17168)
  {
    goto LABEL_4;
  }

  if (v4 != 33980)
  {
    if (v4 != 20706)
    {
LABEL_6:
      *STACK[0x3B0] = 0;
      LODWORD(STACK[0x4B4]) = 197499219;
      JUMPOUT(0x100231B7CLL);
    }

LABEL_4:
    STACK[0x690] = a1;
    goto LABEL_6;
  }

  v5 = STACK[0x32C];
  v6 = STACK[0x398];
  STACK[0x690] = a1;
  LODWORD(STACK[0x4B4]) = v3;
  return (*(v2 + 8 * (((v6 + v1 != 0) * ((v5 - 212933879) & 0xCB1177D ^ 0x107A)) ^ (v5 + 2948))))();
}

uint64_t sub_1001F5D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v23 = (&a15 ^ 0x5869D362) * v20;
  a16 = v23 - 997442594;
  a17 = a11;
  a18 = &a12;
  a19 = -654855621 - v23;
  a20 = v23 + v22 + 1674576400;
  v24 = (*(v21 + 8 * (v22 ^ 0x2F12)))(&a15);
  return (*(v21 + 8 * (((a15 == 16257999) * ((v22 ^ 0x182C) + (v22 ^ 0xDAE))) ^ v22)))(v24);
}

uint64_t sub_1001F5DD8@<X0>(int a1@<W8>)
{
  STACK[0xAC8] = v1;
  v2 = STACK[0x898];
  STACK[0xAD0] = STACK[0x898];
  return (*(STACK[0x400] + 8 * ((428 * (v1 - v2 > (((a1 - 6211) | 0x291u) ^ 0x2BEuLL))) ^ a1)))();
}

uint64_t sub_1001F5E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, unsigned int a37)
{
  v41 = v37 + 1768;
  v38[623] = *(v40 + 4 * (*v38 & 1)) ^ v38[396] ^ ((*v38 & 0x7FFFFFFE | v38[623] & 0x80000000) >> ((v41 + 60) & 0xDB ^ 0xCA));
  return (*(v39 + 8 * ((6128 * (a37 > 0x26F)) ^ v41)))();
}

uint64_t sub_1001F5EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  a12 = 476323082 - 1710126949 * ((((2 * &a12) | 0x9AC09A38) - &a12 - 1298156828) ^ 0x7F7B168C);
  v15 = (*(v13 + 77088))(&a12);
  return (*(v13 + 8 * ((8379 * (a13 == 16257999)) ^ v14)))(v15);
}

uint64_t sub_1001F5F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, unsigned int a14)
{
  a14 = (v14 + 5361) ^ (((81023735 - (&a12 | 0x4D452F7) + (&a12 | 0xFB2BAD08)) ^ 0xA3427E6A) * v16);
  a13 = a9;
  v17 = v14 + 6627;
  v18 = (v14 - 2887) | 0x404;
  (*(v15 + 8 * v17))(&a12);
  a13 = a10;
  a14 = (v18 + 7220) ^ (((((2 * &a12) | 0xD393E04A) - &a12 + 372641755) ^ 0xB1A02347) * v16);
  v19 = (*(v15 + 8 * (v18 ^ 0x21EA)))(&a12);
  return sub_1001F6020(v19);
}

uint64_t sub_1001F6180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v13 = *(v7 + 24);
  v14 = __ROR8__((v13 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = (v14 + v12) ^ 0xE1AFA7ACF6E0968ELL;
  v16 = __ROR8__((v14 + v12) ^ 0x49E9423B6F16E7D2, 8);
  v17 = v11;
  v18 = __ROR8__((0xE13B7065743737B0 - ((v16 + v15) | 0xE13B7065743737B0) + ((v16 + v15) | 0x1EC48F9A8BC8C84FLL)) ^ 0xFA59F8450CF57731, 8);
  v19 = (0xE13B7065743737B0 - ((v16 + v15) | 0xE13B7065743737B0) + ((v16 + v15) | 0x1EC48F9A8BC8C84FLL)) ^ 0xFA59F8450CF57731 ^ __ROR8__(v15, 61);
  v20 = (0xEA42215FB09D0055 - ((v18 + v19) | 0xEA42215FB09D0055) + ((v18 + v19) | 0x15BDDEA04F62FFAALL)) ^ 0xE01F2F19FAB24DA3;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ a6;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (0xFBC8962DEA5A1818 - ((v24 + v23) | 0xFBC8962DEA5A1818) + ((v24 + v23) | 0x43769D215A5E7E7)) ^ 0x6572F4F8E5BAC310;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0x95D159776768EC9ALL) - (v27 + v26) - 0x4AE8ACBBB3B4764ELL) ^ 0xD1D44F463CCF57DELL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0xD800CF627F7DCE02) - (v30 + v29) + 0x13FF984EC04118FELL) ^ 0x9D573AA8212B7FDLL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = __ROR8__(v31, 8);
  *(v13 + 4) = LODWORD(STACK[0x200]) ^ (((((2 * (v33 + v32)) & 0x4CC31BBC7D14A244) - (v33 + v32) + 0x599E7221C175AEDDLL) ^ 0xF2AE30F3E9F2F29CLL) >> (8 * ((v13 + 4) & 7))) ^ 0x3E;
  v34 = __ROR8__((v13 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v35 = ((2 * (v34 + v12)) | 0x3E48AF211110F5F6) - (v34 + v12) - 0x1F24579088887AFBLL;
  v36 = v35 ^ 0x56CD15ABE79E9D29;
  v35 ^= 0xFE8BF03C7E68EC75;
  v37 = __ROR8__(v36, 8);
  v38 = (((2 * (v37 + v35)) & 0x42379E9795A534D6) - (v37 + v35) + 0x5EE430B4352D6594) ^ 0xBA79476BB210DAEALL;
  v39 = v38 ^ __ROR8__(v35, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((2 * (v40 + v39)) | 0xF087926224A8E20ALL) - (v40 + v39) - 0x7843C93112547105) ^ 0x8DE13888A784C30CLL;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = (__ROR8__(v41, 8) + v42) ^ a6;
  v44 = v43 ^ __ROR8__(v42, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ v9;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (((2 * (v47 + v46)) | 0x8BD1FBA0C354CF8ELL) - (v47 + v46) - 0x45E8FDD061AA67C7) ^ 0x212BE1D2112EB9ABLL;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ v17;
  v51 = __ROR8__(v50, 8) + (v50 ^ __ROR8__(v49, 61));
  *(v13 + 5) = v8 ^ (((0xE4BAC51C5A42204CLL - (v51 | 0xE4BAC51C5A42204CLL) + (v51 | 0x1B453AE3A5BDDFB3)) ^ 0xB07578318D3A83F2) >> (8 * ((v13 + 5) & 7)));
  return sub_1001F65A0(a1, a2, a3, v10, a4, a5, v6 + 6);
}

uint64_t sub_1001F65A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20 = *(v14 + 24) + a7 - 0x5EA5347A8335DC6CLL;
  v21 = __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = ((0x6AF7234D0CC131D4 - v21) & a1) + v21 + v17 - ((v21 + v17) & a1);
  v23 = __ROR8__(v22 ^ 0xAB257711D84E66DLL, 8);
  v22 ^= 0xA2F4B2E684729731;
  v24 = (((v23 + v22) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v23 + v22) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v16;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ a8;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v15;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v19;
  v33 = __ROR8__(v32, 8);
  v34 = v32 ^ __ROR8__(v31, 61);
  v35 = __ROR8__((v20 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v36 = (0x6AF7234D0CC131D4 - v35) & 0xC2A16714FA488FC8 | (v35 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v37 = __ROR8__(v36 ^ 0x8B48252F955E681ALL, 8);
  v36 ^= 0x230EC0B80CA81946uLL;
  v38 = (((2 * (v37 + v36)) & 0xAC7FF88AB7D467A0) - (v37 + v36) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v41 = *(*(v18 - 256) + 8 * v13);
  v42 = (v40 + v39 - ((2 * (v40 + v39)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v43 = v42 ^ __ROR8__(v39, 61);
  *v20 = (((__ROR8__((((2 * (v33 + v34)) | 0x36A4398A31861B6ALL) - (v33 + v34) - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6, 8) + ((((2 * (v33 + v34)) | 0x36A4398A31861B6ALL) - (v33 + v34) - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6 ^ __ROR8__(v34, 61))) ^ 0xAB3042D228875C41) >> (8 * (v20 & 7u))) ^ HIBYTE(a4) ^ 0xB;
  v44 = (__ROR8__(v42, 8) + v43) ^ a8;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x61459D2AF01F24F7;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((2 * (v48 + v47)) | 0x63B77BB044F1F226) - (v48 + v47) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ v9;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  *(v20 + 1) = (((v53 + v52 - ((2 * (v53 + v52)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v20 + 1) & 7))) ^ BYTE2(a4) ^ 0xC5;
  v54 = __ROR8__((v20 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v55 = ((2 * v54 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v54 + 0x6BC5C09CD998FDFLL;
  v56 = v55 ^ 0xD22C7A87AFCEB9D8;
  v55 ^= 0x7A6A9F103638C884uLL;
  v57 = (__ROR8__(v56, 8) + v55) ^ 0xE49D77DF873DBF7ELL;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ v16;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ a8;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = __ROR8__((((2 * (v63 + v62)) | 0x316A40512FDE1242) - (v63 + v62) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6, 8);
  v65 = (((2 * (v63 + v62)) | 0x316A40512FDE1242) - (v63 + v62) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6 ^ __ROR8__(v62, 61);
  v66 = (v64 + v65) ^ v19;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ v9;
  *(v20 + 2) = (((__ROR8__(v68, 8) + (v68 ^ __ROR8__(v67, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v20 + 2) & 7))) ^ BYTE1(a4) ^ 0x99;
  v69 = __ROR8__((v20 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v70 = (0xAF7234D0CC131D4 - v69) & a3 | (v69 + v17) & v10;
  v71 = __ROR8__(v70 ^ a5, 8);
  v72 = v70 ^ v11;
  v73 = (v71 + v72) ^ 0xE49D77DF873DBF7ELL;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ v16;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  v78 = __ROR8__(((v8 | (2 * (v77 + v76))) - (v77 + v76) + a2) ^ v12, 8);
  v79 = ((v8 | (2 * (v77 + v76))) - (v77 + v76) + a2) ^ v12 ^ __ROR8__(v76, 61);
  v80 = (v78 + v79) ^ 0x61459D2AF01F24F7;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ v19;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ v9;
  *(v20 + 3) = a4 ^ a6 ^ (((__ROR8__(v84, 8) + (v84 ^ __ROR8__(v83, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v20 + 3) & 7)));
  return v41();
}

uint64_t sub_1001F6BA0@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v4 = a2 - v2 + 1850358221;
  v5 = v4 ^ (514 * (v3 ^ 0x1980)) ^ 0x13BCE96C;
  v6 = (2 * ((23 * (v3 ^ 0x1969) - 1850363416) & v4)) & v5 ^ (23 * (v3 ^ 0x1969) - 1850363416) & v4 ^ ((2 * ((23 * (v3 ^ 0x1969) - 1850363416) & v4)) & 0x2090810 | 0x2020);
  v7 = (2 * v5) & 0x82093B34 ^ 0x82090915 ^ ((2 * v5) ^ 0x412766A) & v5;
  v8 = (4 * v6) & 0x82093B34 ^ v6 ^ ((4 * v6) ^ 0x8080) & v7;
  v9 = (4 * v7) & 0x82093B34 ^ 0x82091321 ^ ((4 * v7) ^ 0x824ECD4) & v7;
  v10 = (16 * v8) & 0x82093B30 ^ v8 ^ ((16 * v8) ^ 0x20200) & v9;
  v11 = (16 * v9) & 0x82093B30 ^ 0x82080825 ^ ((16 * v9) ^ 0x2093B350) & v9;
  v12 = v10 ^ 0x82093915 ^ (v10 << 8) & 0x82093B00 ^ ((v10 << 8) ^ 0x222000) & v11;
  v13 = v4 ^ (2 * ((v12 << 16) & 0x2090000 ^ v12 ^ ((v12 << 16) ^ 0x3B350000) & ((v11 << 8) & 0x82090000 ^ ((v11 << 8) ^ 0x93B0000) & v11 ^ 0x2000000)));
  LODWORD(STACK[0x660]) = v13 ^ 0x9A602974;
  v14 = (*(a1 + 8 * (v3 ^ 0x3C28)))(v13 ^ 0x91A5B027);
  v15 = STACK[0x3E8];
  STACK[0x5A8] = v14;
  STACK[0x3D0] = v14;
  return (*(v15 + 8 * ((52 * (v14 == 0)) | v3)))();
}

uint64_t sub_1001F6E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = 1317436891 * ((&a14 & 0xF01B2E38 | ~(&a14 | 0xF01B2E38)) ^ 0xBFE749B1) + 8154;
  v19 = (*(v17 + 77096))(&a14);
  return (*(v17 + 8 * ((4 * (a15 == v16)) | (8 * (a15 == v16)) | v18)))(v19);
}

uint64_t sub_1001F6EB0()
{
  *(v1 - 232) = v0 + 869295389 * ((v1 - 232) ^ 0xB1542C53) - 379711481;
  v3 = (*(v2 + 8 * (v0 + 1409)))(v1 - 232);
  return (*(STACK[0x400] + 8 * (((*(v1 - 228) == (((v0 - 91) | 0x22) ^ 0x13)) * ((v0 - 1181794489) & 0x4670AF7F ^ 0xFFE)) ^ v0)))(v3);
}

uint64_t sub_1001F6F60@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>)
{
  v16 = v5 - 16;
  v17.i64[0] = a2 + v16 + v3 - 2586;
  v17.i64[1] = a2 + v16 + 18;
  v18 = v17;
  *&STACK[0x370] = v17;
  v19.i64[0] = a2 + v16 + 25;
  v19.i64[1] = a2 + v16 + 24;
  v20.i64[0] = a2 + v16 + 23;
  v20.i64[1] = a2 + v16 + 22;
  v21.i64[0] = a2 + v16 + 21;
  v21.i64[1] = a2 + v16 + 20;
  v17.i64[0] = a2 + v16 + 17;
  v17.i64[1] = a2 + v16 + 16;
  *&STACK[0x3D0] = v17;
  v17.i64[0] = a2 + v16 + 15;
  v17.i64[1] = a2 + v16 + 14;
  *&STACK[0x3C0] = v17;
  v22 = vandq_s8(v21, *&STACK[0x3B0]);
  v23 = vandq_s8(v20, *&STACK[0x3B0]);
  v24 = vandq_s8(v19, *&STACK[0x3B0]);
  v25 = vandq_s8(v18, *&STACK[0x3B0]);
  v26 = vsraq_n_u64(vshlq_n_s64(v25, 0x38uLL), v25, 8uLL);
  v27 = vsraq_n_u64(vshlq_n_s64(v24, 0x38uLL), v24, 8uLL);
  v28 = *&STACK[0x340];
  v29 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v22, 0x38uLL), v22, 8uLL), *&STACK[0x340]);
  v30 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v23, 0x38uLL), v23, 8uLL), *&STACK[0x340]);
  v31 = veorq_s8(v30, *&STACK[0x330]);
  v32 = veorq_s8(v29, *&STACK[0x330]);
  v33 = *&STACK[0x330];
  v34 = *&STACK[0x320];
  v35 = veorq_s8(v29, *&STACK[0x320]);
  v36 = veorq_s8(v30, *&STACK[0x320]);
  v37 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), v35), v8);
  v38 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL), v36), v8);
  v39 = veorq_s8(v38, vsraq_n_u64(vshlq_n_s64(v36, 3uLL), v36, 0x3DuLL));
  v40 = veorq_s8(v37, vsraq_n_u64(vshlq_n_s64(v35, 3uLL), v35, 0x3DuLL));
  v41 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), v40);
  v43 = vaddq_s64(v41, v39);
  v45 = *&STACK[0x2F0];
  v44 = *&STACK[0x300];
  v46 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v43, v43), *&STACK[0x300]), v43), *&STACK[0x2F0]), v9);
  v47 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v42, v42), *&STACK[0x300]), v42), *&STACK[0x2F0]), v9);
  v48 = vsraq_n_u64(vshlq_n_s64(v39, 3uLL), v39, 0x3DuLL);
  v49 = veorq_s8(v47, vsraq_n_u64(vshlq_n_s64(v40, 3uLL), v40, 0x3DuLL));
  v50 = veorq_s8(v46, v48);
  v51 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v50);
  v53 = vaddq_s64(v51, v49);
  v55 = *&STACK[0x2C0];
  v54 = *&STACK[0x2D0];
  v56 = veorq_s8(vaddq_s64(vsubq_s64(v53, vandq_s8(vaddq_s64(v53, v53), *&STACK[0x2D0])), *&STACK[0x2C0]), v13);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(v52, vandq_s8(vaddq_s64(v52, v52), *&STACK[0x2D0])), *&STACK[0x2C0]), v13);
  v58 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v59 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v60 = vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59);
  v62 = *&STACK[0x2A0];
  v63 = veorq_s8(vaddq_s64(v60, v58), *&STACK[0x2A0]);
  v64 = veorq_s8(v61, *&STACK[0x2A0]);
  v65 = vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL);
  v66 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v67 = veorq_s8(v63, v65);
  v68 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v67);
  v70 = vaddq_s64(v68, v66);
  v71 = *&STACK[0x3A0];
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v69, *&STACK[0x3A0]), vorrq_s8(v69, v12)), v12), v7);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v70, *&STACK[0x3A0]), vorrq_s8(v70, v12)), v12), v7);
  v74 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v66, 3uLL), v66, 0x3DuLL));
  v75 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v76 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v74), v11);
  v77 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v75), v11);
  v78 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v79.i64[0] = a2 + v16 + 13;
  v79.i64[1] = a2 + v16 + 12;
  *&STACK[0x360] = v79;
  v80 = vaddq_s64(v27, v28);
  v81 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL))), *&STACK[0x280]);
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), veorq_s8(v76, v78)), *&STACK[0x280]);
  v177.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v82, v14), vorrq_s8(v82, *&STACK[0x240])), *&STACK[0x240]), v10), vnegq_s64(vandq_s8(vshlq_n_s64(v21, 3uLL), v15)));
  v177.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v81, v14), vorrq_s8(v81, *&STACK[0x240])), *&STACK[0x240]), v10), vnegq_s64(vandq_s8(vshlq_n_s64(v20, 3uLL), v15)));
  v83 = v33;
  v84 = veorq_s8(v80, v33);
  v85 = veorq_s8(v80, v34);
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v85), v8);
  v87 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v87);
  v89 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v88, v88), v44), v88), v45), v9);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(v91, vandq_s8(vaddq_s64(v91, v91), v54)), v55), v13);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v62);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v96, v71), vorrq_s8(v96, v12)), v12), v7);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v11);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v98.i64[0] = a2 + v16 + 11;
  v98.i64[1] = a2 + v16 + 10;
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), *&STACK[0x280]);
  v102 = vandq_s8(v98, *&STACK[0x3B0]);
  v103 = vaddq_s64(v26, v28);
  v177.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v101, v14), vorrq_s8(v101, *&STACK[0x240])), *&STACK[0x240]), v10), vnegq_s64(vandq_s8(vshlq_n_s64(v19, 3uLL), v15)));
  v104 = veorq_s8(v103, v33);
  v105 = veorq_s8(v103, v34);
  v106 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105), v8);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v108, v108), v44), v108), v45), v9);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(v111, vandq_s8(vaddq_s64(v111, v111), v54)), v55), v13);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v62);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v116, v71), vorrq_s8(v116, v12)), v12), v7);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v11);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v122 = vandq_s8(v79, *&STACK[0x3B0]);
  v123 = veorq_s8(vaddq_s64(v121, v120), *&STACK[0x280]);
  v124 = vandq_s8(*&STACK[0x3C0], *&STACK[0x3B0]);
  v177.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v123, v14), vorrq_s8(v123, *&STACK[0x240])), *&STACK[0x240]), v10), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x370], 3uLL), v15)));
  v125 = vandq_s8(*&STACK[0x3D0], *&STACK[0x3B0]);
  v126 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v28);
  v129 = vaddq_s64(v127, v28);
  v127.i64[0] = vqtbl4q_s8(v177, *&STACK[0x380]).u64[0];
  v177.val[0] = veorq_s8(v129, v83);
  v177.val[1] = veorq_s8(v128, v83);
  v177.val[2] = veorq_s8(v128, v34);
  v177.val[3] = veorq_s8(v129, v34);
  v177.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177.val[1], 0x38uLL), v177.val[1], 8uLL), v177.val[2]), v8);
  v177.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177.val[0], 0x38uLL), v177.val[0], 8uLL), v177.val[3]), v8);
  v130 = vsraq_n_u64(vshlq_n_s64(v177.val[2], 3uLL), v177.val[2], 0x3DuLL);
  v177.val[2] = veorq_s8(v177.val[0], vsraq_n_u64(vshlq_n_s64(v177.val[3], 3uLL), v177.val[3], 0x3DuLL));
  v177.val[3] = veorq_s8(v177.val[1], v130);
  v131 = vsraq_n_u64(vshlq_n_s64(v177.val[0], 0x38uLL), v177.val[0], 8uLL);
  v177.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177.val[1], 0x38uLL), v177.val[1], 8uLL), v177.val[3]);
  v177.val[1] = vaddq_s64(v131, v177.val[2]);
  v177.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v177.val[1], v177.val[1]), v44), v177.val[1]), v45), v9);
  v177.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v177.val[0], v177.val[0]), v44), v177.val[0]), v45), v9);
  v132 = vsraq_n_u64(vshlq_n_s64(v177.val[2], 3uLL), v177.val[2], 0x3DuLL);
  v177.val[2] = veorq_s8(v177.val[0], vsraq_n_u64(vshlq_n_s64(v177.val[3], 3uLL), v177.val[3], 0x3DuLL));
  v177.val[3] = veorq_s8(v177.val[1], v132);
  v133 = vsraq_n_u64(vshlq_n_s64(v177.val[0], 0x38uLL), v177.val[0], 8uLL);
  v177.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177.val[1], 0x38uLL), v177.val[1], 8uLL), v177.val[3]);
  v177.val[1] = vaddq_s64(v133, v177.val[2]);
  v177.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v177.val[1], vandq_s8(vaddq_s64(v177.val[1], v177.val[1]), v54)), v55), v13);
  v177.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v177.val[0], vandq_s8(vaddq_s64(v177.val[0], v177.val[0]), v54)), v55), v13);
  v134 = vsraq_n_u64(vshlq_n_s64(v177.val[2], 3uLL), v177.val[2], 0x3DuLL);
  v177.val[2] = veorq_s8(v177.val[0], vsraq_n_u64(vshlq_n_s64(v177.val[3], 3uLL), v177.val[3], 0x3DuLL));
  v177.val[3] = veorq_s8(v177.val[1], v134);
  v135 = vsraq_n_u64(vshlq_n_s64(v177.val[0], 0x38uLL), v177.val[0], 8uLL);
  v177.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177.val[1], 0x38uLL), v177.val[1], 8uLL), v177.val[3]);
  v177.val[1] = veorq_s8(vaddq_s64(v135, v177.val[2]), v62);
  v177.val[0] = veorq_s8(v177.val[0], v62);
  v136 = vsraq_n_u64(vshlq_n_s64(v177.val[2], 3uLL), v177.val[2], 0x3DuLL);
  v177.val[2] = veorq_s8(v177.val[0], vsraq_n_u64(vshlq_n_s64(v177.val[3], 3uLL), v177.val[3], 0x3DuLL));
  v177.val[3] = veorq_s8(v177.val[1], v136);
  v137 = vsraq_n_u64(vshlq_n_s64(v177.val[0], 0x38uLL), v177.val[0], 8uLL);
  v177.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177.val[1], 0x38uLL), v177.val[1], 8uLL), v177.val[3]);
  v177.val[1] = vaddq_s64(v137, v177.val[2]);
  v177.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v177.val[0], *&STACK[0x3A0]), vorrq_s8(v177.val[0], v12)), v12), *&STACK[0x390]);
  v177.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v177.val[1], *&STACK[0x3A0]), vorrq_s8(v177.val[1], v12)), v12), *&STACK[0x390]);
  v177.val[2] = veorq_s8(v177.val[1], vsraq_n_u64(vshlq_n_s64(v177.val[2], 3uLL), v177.val[2], 0x3DuLL));
  v177.val[3] = veorq_s8(v177.val[0], vsraq_n_u64(vshlq_n_s64(v177.val[3], 3uLL), v177.val[3], 0x3DuLL));
  v177.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177.val[1], 0x38uLL), v177.val[1], 8uLL), v177.val[2]), v11);
  v177.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177.val[0], 0x38uLL), v177.val[0], 8uLL), v177.val[3]), v11);
  v138 = vsraq_n_u64(vshlq_n_s64(v177.val[2], 3uLL), v177.val[2], 0x3DuLL);
  v177.val[2] = veorq_s8(v177.val[0], vsraq_n_u64(vshlq_n_s64(v177.val[3], 3uLL), v177.val[3], 0x3DuLL));
  v177.val[3] = veorq_s8(v177.val[1], v138);
  v139 = vsraq_n_u64(vshlq_n_s64(v177.val[0], 0x38uLL), v177.val[0], 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v28);
  v177.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177.val[1], 0x38uLL), v177.val[1], 8uLL), v177.val[3]);
  v177.val[1] = veorq_s8(vaddq_s64(v139, v177.val[2]), *&STACK[0x280]);
  v177.val[0] = veorq_s8(v177.val[0], *&STACK[0x280]);
  v177.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v177.val[0], v14), vorrq_s8(v177.val[0], *&STACK[0x240])), *&STACK[0x240]), v10), vnegq_s64(vandq_s8(vshlq_n_s64(v98, 3uLL), v15)));
  v177.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v177.val[1], v14), vorrq_s8(v177.val[1], *&STACK[0x240])), *&STACK[0x240]), v10), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x360], 3uLL), v15)));
  v141 = veorq_s8(v140, v83);
  v142 = veorq_s8(v140, v34);
  v143 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142), v8);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v145, v145), v44), v145), v45), v9);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(v148, vandq_s8(vaddq_s64(v148, v148), v54)), v55), v13);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150), v62);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152);
  v154 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v153, *&STACK[0x3A0]), vorrq_s8(v153, v12)), v12), *&STACK[0x390]);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), v11);
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL))), *&STACK[0x280]);
  v158 = vaddq_s64(v126, v28);
  v177.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v157, v14), vorrq_s8(v157, *&STACK[0x240])), *&STACK[0x240]), v10), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3C0], 3uLL), v15)));
  v159 = veorq_s8(v158, v83);
  v160 = veorq_s8(v158, v34);
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), v8);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v163, v163), v44), v163), v45), v9);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(v166, vandq_s8(vaddq_s64(v166, v166), v54)), v55), v13);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v62);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v171, *&STACK[0x3A0]), vorrq_s8(v171, v12)), v12), *&STACK[0x390]);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), v11);
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL))), *&STACK[0x280]);
  v177.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v175, v14), vorrq_s8(v175, *&STACK[0x240])), *&STACK[0x240]), v10), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3D0], 3uLL), v15)));
  v127.i64[1] = vqtbl4q_s8(v177, *&STACK[0x380]).u64[0];
  v177.val[0] = vrev64q_s8(*(v2 + v16));
  v177.val[1].i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v177.val[1].i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v177.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v177.val[0], v177.val[0], 8uLL), v177.val[1]), v127));
  *v98.i64[1] = vextq_s8(v177.val[0], v177.val[0], 8uLL);
  return (*(STACK[0x3E8] + 8 * (((a1 == v16) * v6) ^ v4)))();
}

uint64_t sub_1001F6F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, unsigned int a18, unsigned int a19, uint64_t a20, uint64_t a21)
{
  v26 = 1875091903 * (((&a17 | 0xE77125D1) - (&a17 & 0xE77125D1)) ^ 0xD104A652);
  a20 = a12;
  a18 = ((2 * v24) & 0x7E3DFD7E) + (v24 ^ 0x3F1EFEBF) - 520243221 + v26;
  a19 = v26 + 7724;
  (*(v25 + 77160))(&a17);
  v27 = 1875091903 * (((&a17 | 0xC5BEC63) - (&a17 & 0xC5BEC63)) ^ 0x3A2E6FE0);
  a18 = (v23 ^ 0x367DFEFF) + ((2 * v23) & 0x6CFBFDFE) - 375474261 + v27;
  a19 = v27 + 7724;
  a20 = a12;
  (*(v25 + 77160))(&a17);
  v28 = 1824088897 * ((&a17 - 111025815 - 2 * (&a17 & 0xF961E169)) ^ 0xA108320B);
  a19 = (v22 ^ 0xCEADFFAE) + ((2 * v22) & 0x9D5BFF5C) - v28 + 2146888412;
  a17 = v28 + 3757;
  a20 = v21;
  a21 = a12;
  v29 = (*(v25 + 77048))(&a17);
  return (*(v25 + 8 * ((7723 * (a18 == 16257999)) ^ 0x8DBu)))(v29);
}

void sub_1001F7190(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  *(v2 - 248) = a1;
  STACK[0x288] = a2;
  JUMPOUT(0x1001B21E8);
}

uint64_t sub_1001F7244(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return sub_10027B7E4(0);
}

uint64_t sub_1001F7858()
{
  v2 = (v0 + 1253583162) & 0xB547F32B;
  (*(v1 + 8 * (v0 ^ 0x2047)))();
  return (*(STACK[0x330] + 8 * ((((111 * (v2 ^ 0x2220) + 7746) ^ (v2 + 18)) * (STACK[0x810] == 0)) ^ v2)))();
}

uint64_t sub_1001F79CC@<X0>(int a1@<W8>)
{
  v4 = a1 ^ 0x1283;
  v5 = (*(v3 + 8 * (a1 ^ 0x3BD7)))(v1);
  return (*(STACK[0x330] + 8 * ((8164 * (v2 == v4 + 16249556 + ((v4 - 1539) ^ 0x12E6))) ^ (v4 - 1539))))(v5);
}

uint64_t sub_1001F7A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{
  v22 = STACK[0x32C];
  LODWORD(STACK[0x89C]) = v21;
  v23 = (v21 ^ 0xBC59953u) + STACK[0x220];
  STACK[0x8A0] = v23;
  return (*(STACK[0x330] + 8 * ((v22 + 2010) ^ (980 * (v23 > a21)))))();
}

uint64_t sub_1001F7AF8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  v17 = a1 + 1463295012;
  a15 = a1 - 1710126949 * ((&a15 & 0xE88F31C0 | ~(&a15 | 0xE88F31C0)) ^ 0x256B95AF) + 1939613488;
  v18 = (*(v16 + 8 * (a1 ^ 0xA8C7D07E)))(&a15);
  return (*(v16 + 8 * ((2475 * (a16 == (v17 ^ 0xF80231))) ^ v17)))(v18);
}

void sub_1001F7C90(uint64_t a1@<X8>)
{
  *(v2 - 224) = a1;
  *(v2 - 216) = (v1 + 2724) ^ (1824088897 * ((((v2 - 232) | 0x77D05D45) + (~(v2 - 232) | 0x882FA2BA)) ^ 0x2FB98E26));
  JUMPOUT(0x1001EC09CLL);
}

uint64_t sub_1001F7D48(uint64_t a1)
{
  *(a1 + 104) = veorq_s8(*(v2 + 88), xmmword_1002BF680);
  v4 = *(v2 + 4);
  *(a1 + 20) = v4;
  return (*(v3 + 8 * (((v4 == 0) * (454 * (v1 ^ 0x1A80) + 454 * (v1 ^ 0x1A80) + 611 - 648)) ^ (454 * (v1 ^ 0x1A80)))))();
}

uint64_t sub_1001F7FE4()
{
  v3 = (((2 * v1) & 0x3FE7FDFE7BDFAFACLL) + (v1 ^ 0x9FF3FEFF3DEFD7D6) + v0);
  v4 = (v3[0x600C0100C210282ALL] << 56) | (v3[0x600C0100C210282BLL] << 48) | (v3[(12 * (v2 ^ 0x16D4u)) ^ 0x600C0100C2102D50] << 40) | (v3[0x600C0100C210282DLL] << 32) | (v3[0x600C0100C210282ELL] << 24) | (v3[0x600C0100C210282FLL] << 16) | (v3[0x600C0100C2102830] << 8) | v3[0x600C0100C2102831];
  STACK[0x788] = v4 + 0x431A33AA2E6D965FLL - ((2 * v4) & 0x863467545CDB2CBELL);
  return sub_1001F80B0();
}

void sub_1001F80BC(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v34 = a1 - 1;
  *v32 = ((v34 + v31) ^ a26) + v34 + ((((a20 - v34) | (v34 - a20)) >> 31) ^ 0x7FFFFFFF);
  (*(v33 + 8 * (v34 + 9604)))(a31);
  vld1q_dup_f32(v32);
  JUMPOUT(0x1001F81A4);
}

uint64_t sub_1001F8250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, char a18, __int16 a19, char a20, int a21, unsigned int a22, uint64_t a23, char *a24, unsigned int a25, char *a26)
{
  a26 = &a18;
  a25 = ((a12 ^ 0x48A) + 1305605569) ^ (1358806181 * ((-2 - ((&a21 ^ 0x842C40 | 0xB25BD01F) + (&a21 ^ 0x200A401A | 0x4DA42FE0))) ^ 0xE05EFF26));
  a23 = a14;
  a24 = &a16;
  (*(v26 + 8 * (a12 ^ 0x2B5C)))(&a21);
  a22 = ((a12 ^ 0x48A) + 664) ^ (33731311 * ((&a21 & 0x46C507F8 | ~(&a21 | 0x46C507F8)) ^ 0x80CC3224));
  a23 = a14;
  a24 = &a20;
  (*(v26 + 8 * ((a12 ^ 0x48A) + 7013)))(&a21);
  a23 = a14;
  LODWORD(a24) = (a12 ^ 0x48A) - 2008441969 * (((&a21 | 0xC5ABDB7B) + (~&a21 | 0x3A542484)) ^ 0x8D328F74) + 3097;
  v28 = (*(v26 + 8 * (a12 ^ 0x2B15)))(&a21);
  return (*(v26 + 8 * ((a21 != v27 + (((a12 ^ 0x48A) - 516) ^ 0x68E) - 3726) ^ a12 ^ 0x48A)))(v28);
}

uint64_t sub_1001F84E0()
{
  v2 = STACK[0x858];
  v3 = *STACK[0x720];
  STACK[0x4F8] = *(v1 + 8 * v0);
  STACK[0x5D8] = v3;
  LODWORD(STACK[0x384]) = 1;
  STACK[0x860] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 223) | 0x494) + 12687)) ^ (v0 + 5573))))();
}

uint64_t sub_1001F8544@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 + 7939)))(a1);
  *(STACK[0x590] + 24) = 0;
  return sub_1002794F4();
}

uint64_t sub_1001F8BA8(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (v71 ^ a2) + a35;
  STACK[0x978] = v73;
  return (*(v72 + 8 * ((a71 - 2869) ^ ((v73 > a30) | (16 * (v73 > a30))))))();
}

uint64_t sub_1001F8C98@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  v13 = (a1 - 346156046) & 0x14A1FBA7;
  *v11 = 0;
  v14 = v13 ^ 0x3C;
  v15 = v13 + 3508;
  v16 = 869295389 * ((~(v12 - 120) & 0xF513E4E2 | (v12 - 120) & 0xAEC1B1D) ^ 0x4447C8B1);
  *(v12 - 120) = &a10;
  *(v12 - 108) = v16 + v13 - 3287;
  *(v12 - 112) = v16 + 12312;
  v17 = (*(v10 + 8 * (v13 + 5442)))(v12 - 120);
  LODWORD(v18) = (a10 ^ 0x3C) - 13 * ((330382100 * (a10 ^ 0x3Cu)) >> 32);
  if (v18 >= 5)
  {
    v18 = v18;
  }

  else
  {
    v18 = (v18 + 5);
  }

  *(v11 + 2) = v18;
  v19 = v18 + 530310811 - ((v18 << (v14 ^ 0x9Fu)) & 0x2E) == 530310811;
  return (*(v10 + 8 * (((2 * v19) | (32 * v19)) ^ v15)))(v17);
}

uint64_t sub_1001F8E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  STACK[0x4A8] = 0;
  STACK[0x780] = 0;
  return (*(a4 + 8 * (v4 | (2 * (((v6 == 0) ^ (((v4 + 12) | 0x64) + 6)) & 1)))))();
}

uint64_t sub_1001F8E9C@<X0>(unint64_t *a1@<X8>)
{
  v3 = *a1;
  STACK[0x3D8] = *a1;
  return (*(v2 + 8 * (((v3 == 0) * (((((((v1 + 982964586) & 0xC569167F) + 2085616481) & 0x83AFFD77) - 2101) | 0x82) - 382)) ^ (((v1 + 982964586) & 0xC569167F) + 2085616481) & 0x83AFFD77)))();
}

void sub_1001F8F10(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x1001F8F20);
}

void sub_1001F8F2C()
{
  STACK[0x820] = 0;
  STACK[0x670] = 0;
  STACK[0x500] = *(v1 + 8 * v0);
  JUMPOUT(0x100216CD4);
}

uint64_t sub_1001F8F54@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W6>, unint64_t a7@<X7>, unint64_t a8@<X8>)
{
  *&STACK[0x330] = vdupq_n_s64(0x38uLL);
  *&STACK[0x340] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3A0] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x3B0] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x230] = vdupq_n_s64(a8);
  v19 = v15;
  v20 = STACK[0x220] + v16 + a5;
  *&STACK[0x310] = vdupq_n_s64(v18);
  *&STACK[0x320] = vdupq_n_s64(v13);
  *&STACK[0x2F0] = vdupq_n_s64(v8);
  *&STACK[0x300] = vdupq_n_s64(v14);
  *&STACK[0x2D0] = vdupq_n_s64(v11);
  *&STACK[0x2E0] = vdupq_n_s64(v19);
  *&STACK[0x2B0] = vdupq_n_s64(a3);
  *&STACK[0x2C0] = vdupq_n_s64(a2);
  *&STACK[0x290] = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x2A0] = vdupq_n_s64(a4);
  *&STACK[0x270] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x280] = vdupq_n_s64(v12);
  *&STACK[0x250] = vdupq_n_s64(v10);
  *&STACK[0x260] = vdupq_n_s64(v9);
  *&STACK[0x240] = vdupq_n_s64(a7);
  *&STACK[0x350] = xmmword_1002BF690;
  v21 = *&STACK[0x230];
  v22 = *&STACK[0x240];
  v23 = *&STACK[0x310];
  v24 = *&STACK[0x320];
  v26 = *&STACK[0x2F0];
  v25 = *&STACK[0x300];
  v27 = *&STACK[0x2E0];
  v29 = *&STACK[0x280];
  v28 = *&STACK[0x290];
  v31 = *&STACK[0x260];
  v30 = *&STACK[0x270];
  v32 = *&STACK[0x250];
  v33 = *(v20 - 6);
  *&v34 = v20 - 5;
  *(&v34 + 1) = v20 - 6;
  *&STACK[0x380] = v34;
  *&STACK[0x390] = v33;
  *&v34 = v20 - 3;
  *(&v34 + 1) = v20 - 4;
  *&STACK[0x370] = v34;
  v35.i64[0] = v20 + 3;
  v35.i64[1] = v20 + 2;
  v36.i64[0] = v20 + 5;
  v36.i64[1] = v20 + 4;
  v37.i64[0] = v20 + 7;
  v37.i64[1] = v20 + 6;
  v38.i64[0] = v20 + 9;
  v38.i64[1] = v20 - 16 + (((a6 + 356) | 0x404) ^ 0xFFFFFFFFFFFFF078) + 26;
  v39 = *&STACK[0x340];
  v40 = vandq_s8(v38, *&STACK[0x340]);
  v41 = vandq_s8(v37, *&STACK[0x340]);
  v42 = vandq_s8(v36, *&STACK[0x340]);
  v43 = vandq_s8(v35, *&STACK[0x340]);
  v44 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v45 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v48 = vaddq_s64(v47, *&STACK[0x3B0]);
  v49 = vaddq_s64(v46, *&STACK[0x3B0]);
  v50 = vaddq_s64(v45, *&STACK[0x3B0]);
  v51 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3A0], v47), v21), v48), vandq_s8(v48, v21));
  v52 = vaddq_s64(v44, *&STACK[0x3B0]);
  v53 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3A0], v46), v21), v49), vandq_s8(v49, v21));
  v54 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3A0], v45), v21), v50), vandq_s8(v50, v21));
  v55 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3A0], v44), v21), v52), vandq_s8(v52, v21));
  v56 = veorq_s8(v55, v24);
  v57 = veorq_s8(v54, v24);
  v58 = veorq_s8(v54, v23);
  v59 = veorq_s8(v55, v23);
  v60 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v58), v25);
  v61 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59), v25);
  v62 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v63 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v63);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v62);
  v67 = *&STACK[0x2C0];
  v66 = *&STACK[0x2D0];
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v65, v65), v26), v65), v27), *&STACK[0x2D0]);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v64, v64), v26), v64), v27), *&STACK[0x2D0]);
  v70 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v72 = veorq_s8(v68, v70);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v71);
  v75 = *&STACK[0x2A0];
  v76 = *&STACK[0x2B0];
  v77 = veorq_s8(vaddq_s64(vsubq_s64(v74, vandq_s8(vaddq_s64(v74, v74), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(v73, vandq_s8(vaddq_s64(v73, v73), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v79 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v80 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v81 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v82 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v80);
  v83 = veorq_s8(vaddq_s64(v81, v79), v28);
  v84 = veorq_s8(v82, v28);
  v85 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v86 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v87 = veorq_s8(v83, v85);
  v88 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v87);
  v90 = veorq_s8(vaddq_s64(v88, v86), v29);
  v91 = veorq_s8(v89, v29);
  v92 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v93 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v94 = veorq_s8(v90, v92);
  v95 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v94);
  v97 = veorq_s8(vaddq_s64(v95, v93), v30);
  v98 = veorq_s8(v96, v30);
  v99 = vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL);
  v100 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v101 = veorq_s8(v97, v99);
  v102 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v103.i64[0] = v20 - 1;
  v103.i64[1] = v20 - 2;
  *&STACK[0x360] = v103;
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v101);
  v105 = vaddq_s64(v102, v100);
  v199.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v104, v104), v31), v104), v32), v22), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), *&STACK[0x330])));
  v199.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v105, v105), v31), v105), v32), v22), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), *&STACK[0x330])));
  v106 = veorq_s8(v53, v24);
  v107 = veorq_s8(v53, v23);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v25);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v110, v110), v26), v110), v27), v66);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(v113, vandq_s8(vaddq_s64(v113, v113), v67)), v76), v75);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v28);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v29);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v30);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v119.i64[0] = v20 + 1;
  v119.i64[1] = v20;
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v123 = vandq_s8(v119, v39);
  v199.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v122, v122), v31), v122), v32), v22), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), *&STACK[0x330])));
  v124 = veorq_s8(v51, v24);
  v125 = veorq_s8(v51, v23);
  v126 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125), v25);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v128, v128), v26), v128), v27), v66);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(v131, vandq_s8(vaddq_s64(v131, v131), v67)), v76), v75);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), v28);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v136 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135), v29);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v138 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137), v30);
  v139 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v140 = vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL);
  v141 = vandq_s8(v103, v39);
  v142 = vaddq_s64(v140, v139);
  v143 = vandq_s8(*&STACK[0x370], v39);
  v199.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v142, v142), v31), v142), v32), v22), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), *&STACK[0x330])));
  v144 = vandq_s8(*&STACK[0x380], v39);
  v145 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v148 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v149 = vaddq_s64(v148, *&STACK[0x3B0]);
  v150 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3A0], v148), v21), v149), vandq_s8(v149, v21));
  v151 = vaddq_s64(v147, *&STACK[0x3B0]);
  v152 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3A0], v147), v21), v151), vandq_s8(v151, v21));
  v153 = vaddq_s64(v146, *&STACK[0x3B0]);
  v154 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3A0], v146), v21), v153), vandq_s8(v153, v21));
  v155 = vaddq_s64(v145, *&STACK[0x3B0]);
  v156 = vsubq_s64(vaddq_s64(vandq_s8(vsubq_s64(*&STACK[0x3A0], v145), v21), v155), vandq_s8(v155, v21));
  v155.i64[0] = vqtbl4q_s8(v199, *&STACK[0x350]).u64[0];
  v199.val[0] = veorq_s8(v156, v24);
  v199.val[1] = veorq_s8(v154, v24);
  v157 = veorq_s8(v154, v23);
  v199.val[2] = veorq_s8(v156, v23);
  v199.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v157), v25);
  v199.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[2]), v25);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL);
  v158 = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[2] = veorq_s8(v199.val[1], v199.val[3]);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[2]);
  v199.val[1] = vaddq_s64(v199.val[3], v158);
  v199.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v199.val[1], v199.val[1]), v26), v199.val[1]), v27), v66);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v199.val[0], v199.val[0]), v26), v199.val[0]), v27), v66);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL);
  v159 = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[2] = veorq_s8(v199.val[1], v199.val[3]);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[2]);
  v199.val[1] = vaddq_s64(v199.val[3], v159);
  v199.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v199.val[1], vandq_s8(vaddq_s64(v199.val[1], v199.val[1]), v67)), v76), v75);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v199.val[0], vandq_s8(vaddq_s64(v199.val[0], v199.val[0]), v67)), v76), v75);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL);
  v160 = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[2] = veorq_s8(v199.val[1], v199.val[3]);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[2]);
  v199.val[1] = veorq_s8(vaddq_s64(v199.val[3], v160), v28);
  v199.val[0] = veorq_s8(v199.val[0], v28);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL);
  v161 = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[2] = veorq_s8(v199.val[1], v199.val[3]);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[2]);
  v199.val[1] = veorq_s8(vaddq_s64(v199.val[3], v161), v29);
  v199.val[0] = veorq_s8(v199.val[0], v29);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL);
  v162 = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[2] = veorq_s8(v199.val[1], v199.val[3]);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[2]);
  v199.val[1] = veorq_s8(vaddq_s64(v199.val[3], v162), v30);
  v199.val[0] = veorq_s8(v199.val[0], v30);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL);
  v163 = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[2] = veorq_s8(v199.val[1], v199.val[3]);
  v199.val[3] = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[2]);
  v164 = vaddq_s64(v199.val[3], v163);
  v199.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[0], v199.val[0]), v31), v199.val[0]), v32), v22), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x380], 3uLL), *&STACK[0x330])));
  v199.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v164, v164), v31), v164), v32), v22), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x370], 3uLL), *&STACK[0x330])));
  v165 = veorq_s8(v152, v24);
  v166 = veorq_s8(v152, v23);
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v25);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v169, v169), v26), v169), v27), v66);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(v172, vandq_s8(vaddq_s64(v172, v172), v67)), v76), v75);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), v28);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), v29);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v30);
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL)));
  v199.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v180, v180), v31), v180), v32), v22), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x360], 3uLL), *&STACK[0x330])));
  v181 = veorq_s8(v150, v24);
  v182 = veorq_s8(v150, v23);
  v183 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182), v25);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184);
  v186 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v185, v185), v26), v185), v27), v66);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187);
  v189 = veorq_s8(vaddq_s64(vsubq_s64(v188, vandq_s8(vaddq_s64(v188, v188), v67)), v76), v75);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), v28);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v193 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192), v29);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v195 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194), v30);
  v196 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL)));
  v199.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v196, v196), v31), v196), v32), v22), vnegq_s64(vandq_s8(vshlq_n_s64(v119, 3uLL), *&STACK[0x330])));
  v155.i64[1] = vqtbl4q_s8(v199, *&STACK[0x350]).u64[0];
  v197 = vrev64q_s8(v155);
  *(a1 + a5 - 16) = veorq_s8(vextq_s8(v197, v197, 8uLL), *&STACK[0x390]);
  return (*(v17 + 8 * ((186 * (-(a5 & 0xFFFFFFF0) == -16)) ^ a6)))();
}

uint64_t sub_1001F9B00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  STACK[0xB80] = v4;
  v6 = STACK[0x430];
  STACK[0xB88] = STACK[0x430];
  return (*(v5 + 8 * (((v4 - v6 > 9) * (((a4 + 8075) | 0x20) - 4074)) ^ a4)))(a1, a2, a3, 16215981);
}

uint64_t sub_1001F9B48()
{
  v2 = STACK[0x438];
  STACK[0x508] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 + 98)) & 1) * (((v0 - 198) | 0x1582) - 6078)) ^ (v0 + 4707))))();
}

uint64_t sub_1001F9B6C()
{
  (*(v2 + 8 * (v0 ^ 0x3301)))();
  *(v1 + 24) = 0;
  return sub_100211A60();
}

uint64_t sub_1001F9B90@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x34A3)))(a1);
  *(STACK[0x568] + 24) = 0;
  return sub_1001F9BB8();
}

void sub_1001F9BB8()
{
  (*(v1 + 8 * (v0 + 8206)))();
  STACK[0x568] = 0;
  JUMPOUT(0x1001F9BE0);
}

uint64_t sub_1001F9C58()
{
  v6 = *(v3 + 4 * (v2 - 1));
  *(v3 + 4 * v2) = ((1566083941 * (v6 ^ (v6 >> 30))) ^ *(v3 + 4 * v2)) - v2;
  v7 = 2048652491 * ((~((v5 - 152) | 0xDBFDE07E6E241052) + ((v5 - 152) & 0xDBFDE07E6E241052)) ^ 0xF0E6900D206A78A8);
  v8 = v5 - 152;
  *(v8 + 32) = (v2 + 1) ^ v7;
  v9 = v0 - 1348780355 + v7;
  *(v5 - 128) = v9 - 10;
  *(v5 - 124) = ((v0 - 1348780355) ^ 0x3CE) + v7;
  *(v5 - 152) = (v0 - 1317022489) ^ v7;
  *(v5 - 136) = v9;
  *(v5 - 112) = v7 ^ 1;
  *(v8 + 8) = 623 - v7;
  v10 = (*(v4 + 8 * (v1 + v0 - 15)))(v5 - 152);
  return (*(v4 + 8 * *(v5 - 132)))(v10);
}

uint64_t sub_1001F9D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, char *a20, int a21, int a22)
{
  v26 = ((&a17 - 9869374 - 2 * (&a17 & 0xFF6967C2)) ^ 0xA700B4A0) * v22;
  a19 = a16;
  a20 = &a14;
  a18 = v26 - 601573810;
  a21 = -654855621 - v26;
  a22 = v26 + 1674576367 + v23;
  v27 = (*(v24 + 8 * (v23 ^ 0x2F33)))(&a17);
  return (*(v24 + 8 * (((a17 == v25) * ((v23 - 1675) ^ 0x165F ^ (13 * (v23 ^ 0xAC0)))) ^ v23)))(v27);
}

uint64_t sub_1001F9E8C()
{
  v4 = (*(v3 + 8 * (v2 ^ 0x1A4)))();
  *v0 = 0;
  return v1(v4);
}

void sub_1001F9EE4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  LODWORD(STACK[0x5B0]) = 0;
  v12 = v5 + LODWORD(STACK[0x414]);
  v13 = (v12 ^ 0xFC6A8192) & (2 * (v12 & v9)) ^ v12 & v9;
  v14 = ((2 * (v12 ^ 0xC320392)) ^ 0xE2BD9502) & (v12 ^ 0xC320392) ^ (2 * (v12 ^ 0xC320392)) & 0xF15ECA80;
  v15 = v14 ^ 0x11424A81;
  v16 = (v14 ^ 0xE0140200) & (4 * v13) ^ v13;
  v17 = ((4 * v15) ^ 0xC57B2A04) & v15 ^ (4 * v15) & 0xF15ECA80;
  v18 = (v17 ^ 0xC15A0A00) & (16 * v16) ^ v16;
  v19 = ((16 * (v17 ^ 0x3004C081)) ^ 0x15ECA810) & (v17 ^ 0x3004C081) ^ (16 * (v17 ^ 0x3004C081)) & 0xF15ECA80;
  v20 = v18 ^ 0xF15ECA81 ^ (v19 ^ 0x114C8800) & (v18 << 8);
  v21 = v12 ^ (2 * ((v20 << 16) & 0x715E0000 ^ v20 ^ ((v20 << 16) ^ 0x4A810000) & (((v19 ^ 0xE0124281) << 8) & 0x715E0000 ^ 0x21140000 ^ (((v19 ^ 0xE0124281) << 8) ^ 0x5ECA0000) & (v19 ^ 0xE0124281))));
  v22 = LODWORD(STACK[0x3F8]) - v10 - 202991587;
  v23 = ((v22 ^ 0xC101236C) + 1644684548) ^ v22 ^ ((v22 ^ 0xDDEAEC54) + 2129406524) ^ ((v22 ^ 0x2EFD0955) - 1912877253) ^ ((v22 ^ 0x6EEFFFFD) - 840353389);
  v24 = STACK[0x5A0];
  v25 = *(STACK[0x5A0] + (158 * ((((v21 >> 28) ^ 0x110D) + 20392) ^ (((v21 >> 28) ^ 0x7D3A) - 23663) ^ (((v21 >> 28) ^ 0x6C3E) + 12949)) - 12242 - 969 * (((158 * (((((v21 >> 28) ^ 0x110D) + 20392) ^ (((v21 >> 28) ^ 0x7D3A) - 23663)) ^ (((v21 >> 28) ^ 0x6C3E) + 12949)) - 12242) & 0xFFFEu) / 0x3C9)));
  LODWORD(STACK[0x57C]) = LODWORD(STACK[0x424]) + 1921366899;
  v26 = 16 * (v25 ^ 0x19);
  v27 = v26 ^ *(v24 + ((158 * ((((HIBYTE(v21) & 0xF ^ 0x3AFD) - 1517) ^ ((HIBYTE(v21) & 0xF ^ 0x3745) - 2133)) ^ ((HIBYTE(v21) & 0xF ^ 0xDB7) + 19801)) + 11912) & 0xFFFEu) % ((v21 & 0x3C9 ^ 0x477F) & (v21 & 0x3C9 ^ 0xCC37) ^ v21 & 0x81 ^ 0x47FE));
  v28 = *(v24 + (158 * ((((v21 >> 20) & 0xF ^ 0x5B93) + 10031) ^ (((v21 >> 20) & 0xF) + 318) ^ (((v21 >> 20) & 0xF ^ 0x494E) - 18956)) + 17448 - 969 * (((158 * (((((v21 >> 20) & 0xF ^ 0x5B93) + 10031) ^ (((v21 >> 20) & 0xF) + 318)) ^ (((v21 >> 20) & 0xF ^ 0x494E) - 18956)) + 17448) & 0xFFFEu) / 0x3C9)));
  v29 = *(v24 + (158 * (((BYTE2(v21) & 0xF ^ 0x78E8) - 11637) ^ ((BYTE2(v21) & 0xF ^ 0x290B) + 874) ^ ((BYTE2(v21) & 0xF ^ 0x51E2) + 31617)) + 4014 - 969 * (((158 * ((((BYTE2(v21) & 0xF ^ 0x78E8) - 11637) ^ ((BYTE2(v21) & 0xF ^ 0x290B) + 874)) ^ ((BYTE2(v21) & 0xF ^ 0x51E2) + 31617)) + 4014) & 0xFFFEu) / 0x3C9)));
  v30 = (((v26 & 0x90 ^ 0x23555EB0) + 598007) ^ ((v26 & 0x90) + 1550018953) ^ ((v26 & 0x90 ^ 0xBEDA8A95) - 1652110380)) + (((v26 & 0x90 ^ 0xD7B363E2) - 847284867) ^ ((v26 & 0x90) - 1659807585) ^ ((v26 & 0x90 ^ 0x8C9DC478) - 1773022489));
  LODWORD(STACK[0x584]) = v21;
  v31 = ((v29 << 8) ^ 0xFF80D0) & ((v27 << 16) ^ 0xCF99D0) | (v29 << 8) & 0x66666666;
  v32 = *(v24 + ((v30 - 1042831176) * (((((v21 >> 12) ^ 0x951B0B2C) + 944618823) ^ (((v21 >> 12) ^ 0x21CCC8B4) - 1936032033) ^ (((v21 >> 12) ^ 0xB4D7C39D) + 427914744)) + 1059295807) + 327530414 * v30 + 969422096) % 0x3C9);
  v33 = *(v24 + (158 * ((((v21 >> 8) & 0xF ^ 0x2A4F) - 4026) ^ (((v21 >> 8) & 0xF ^ 0xE84) + 21647) ^ (((v21 >> 8) & 0xF ^ 0x24C7) - 306)) - 22252 - 969 * (((158 * (((((v21 >> 8) & 0xF ^ 0x2A4F) - 4026) ^ (((v21 >> 8) & 0xF ^ 0xE84) + 21647)) ^ (((v21 >> 8) & 0xF ^ 0x24C7) - 306)) - 22252) & 0xFFFEu) / 0x3C9)));
  v34 = *(v24 + (158 * ((((v21 >> 4) ^ 0x3205) - 9412) ^ (((v21 >> 4) ^ 0x12BC) + 31619) ^ (((v21 >> 4) ^ 0x20B8) - 13945)) + 17382 - 969 * (((158 * (((((v21 >> 4) ^ 0x3205) - 9412) ^ (((v21 >> 4) ^ 0x12BC) + 31619)) ^ (((v21 >> 4) ^ 0x20B8) - 13945)) + 17382) & 0xFFFEu) / 0x3C9)));
  v35 = v31 ^ (v28 << 12) ^ 0x2DD30E;
  LODWORD(STACK[0x56C]) = v35;
  LODWORD(STACK[0x570]) = 16777190;
  v36 = v35 & (v33 ^ 0xFFFFE6);
  LODWORD(STACK[0x580]) = v36;
  v37 = v36 ^ (v33 & 0x21 | 0x2100);
  LODWORD(STACK[0x588]) = v37;
  v38 = v23;
  v39 = HIBYTE(v23) & 0xF;
  v40 = STACK[0x420];
  v41 = (((LODWORD(STACK[0x420]) ^ 0x48FC6076) + 223) ^ LODWORD(STACK[0x420]) ^ ((LODWORD(STACK[0x420]) ^ 0x79) + 210) ^ ((LODWORD(STACK[0x420]) ^ 0x8E) + 39) ^ ((LODWORD(STACK[0x420]) ^ 0xD6) + 127)) & 0x95;
  v42 = (((v23 >> 28) ^ 0x5E11) - 10312) ^ (((v23 >> 28) ^ 0x78FC) + 29019) ^ (((v23 >> 28) ^ 0x26E8) + 12111);
  v43 = (v37 << 8) ^ (v32 << 12);
  v44 = *(v24 + (158 * (((v21 & 0xF ^ 0x50CC) - 17266) ^ ((v21 & 0xF ^ 0x4366) + 12072) ^ ((v21 & 0xF ^ 0x13AB) + 32747)) + 26952 - 969 * (((158 * ((((v21 & 0xF ^ 0x50CC) - 17266) ^ ((v21 & 0xF ^ 0x4366) + 12072)) ^ ((v21 & 0xF ^ 0x13AB) + 32747)) + 26952) & 0xFFFEu) / 0x3C9)));
  LODWORD(STACK[0x55C]) = v43 ^ 0xFB36E65C;
  v45 = *(v24 + (158 * v42 + 17966 - 969 * (((158 * v42 + 17966) & 0xFFFEu) / 0x3C9)));
  v46 = ((v43 ^ 0xE837DB6A) & (v44 ^ 0xFFFFFFE6) | v44 & 0x95) ^ (16 * v34);
  LODWORD(STACK[0x420]) = v40;
  LOBYTE(v43) = (2 * (v40 & 0xA9 ^ 0xCA)) & 0x42 ^ v40 & 0xA9 ^ 0xCA ^ ((2 * (v40 & 0xA9 ^ 0xCA)) ^ 0x94) & (v40 ^ 0x63);
  LOBYTE(v42) = ((2 * (v40 ^ 0x63)) ^ 0x94) & (v40 ^ 0x63) ^ (2 * (v40 ^ 0x63)) & 0xCA;
  LOBYTE(v43) = v43 ^ (4 * v43) & 0xC8 ^ ((4 * v43) ^ 0x28) & (v42 ^ 0x4A) ^ 8;
  LOBYTE(v42) = v40 ^ (2 * (((v42 ^ 0x8A) & (4 * (v42 ^ 0x4A)) ^ 0x80) & (16 * v43) ^ v43));
  v47 = (v42 & 0x95 ^ 0x1F454B75) & (v41 ^ 0x1F454BF4) ^ v42 & 0x14;
  v48 = ((v47 ^ 0x5089F4D9) + 2002274563) ^ ((v47 ^ 0x3A855B8F) + 492103253) ^ ((v47 ^ 0x7549E4BC) + 1385716072);
  v49 = ((((v39 ^ 0x4E73B705) + 718996596) ^ ((v39 ^ 0x2C234DDA) + 1217134253) ^ ((v39 ^ 0x6250FAD3) + 116935078)) + 383248358) * (v48 - 949286450) - 2072025860 * v48 + 845422280;
  v50 = 158 * (((HIWORD(v38) & 0xF ^ 0x5B052DE1) + 1934461448) ^ ((HIWORD(v38) & 0xF ^ 0x7DD4D04D) + 1436317612) ^ ((HIWORD(v38) & 0xF ^ 0x26D1FDA5) - 1902552508)) + 1295904748;
  v51 = (v50 ^ 0x8BDFAB58) & (2 * (v50 & 0xD5EAA35A)) ^ (v50 & 0xD5EAA35A | 0x10000);
  v52 = ((2 * (v50 ^ 0x8BDFAB58)) ^ 0xBC6A1004) & (v50 ^ 0x8BDFAB58) ^ (2 * (v50 ^ 0x8BDFAB58)) & 0x5E350800;
  v53 = v52 ^ 0x42150802;
  v54 = (v52 ^ 0x1C200000) & (4 * v51) ^ v51;
  v55 = ((4 * v53) ^ 0x78D42008) & v53 ^ (4 * v53) & 0x5E350800;
  v56 = v54 ^ 0x5E350802 ^ (v55 ^ 0x58140000) & (16 * v54);
  v57 = (16 * (v55 ^ 0x6210802)) & 0x5E350800 ^ 0x1C250802 ^ ((16 * (v55 ^ 0x6210802)) ^ 0xE3508020) & (v55 ^ 0x6210802);
  v58 = (v56 << 8) & 0x5E350800 ^ v56 ^ ((v56 << 8) ^ 0x35080200) & v57;
  v59 = v50 ^ (2 * ((v58 << 16) & 0x5E350000 ^ v58 ^ ((v58 << 16) ^ 0x8020000) & ((v57 << 8) & 0x5E350000 ^ 0x4A350000 ^ ((v57 << 8) ^ 0x35080000) & v57))) ^ 0xA3FEDA34;
  v60 = 0x43A1F2CA5E947ALL * (((v59 ^ 0xD18F2A0E49C938A7) + 0x2E70D5F1B636C759) ^ ((v59 ^ 0x681B31545068A02ALL) - 0x681B31545068A02ALL) ^ ((v59 ^ 0xB9941B5AEBDFF1E7) + 0x466BE4A514200E19)) + 0x22FCD1EBEB8CC956;
  v61 = (v60 ^ 0xCFB996F5082CB38ELL) & (2 * (v60 & 0xEF3DD485128EBB2ELL)) ^ v60 & 0xEF3DD485128EBB2ELL;
  v62 = ((2 * (v60 ^ 0x1DF336FF2D31F5D2)) ^ 0xE59DC4F47F7E9DF8) & (v60 ^ 0x1DF336FF2D31F5D2) ^ (2 * (v60 ^ 0x1DF336FF2D31F5D2)) & 0xF2CEE27A3FBF4EFCLL;
  v63 = v62 ^ 0x1242220A00814204;
  v64 = (v62 ^ 0xE08CC0301E3E0CF8) & (4 * v61) ^ v61;
  v65 = ((4 * v63) ^ 0xCB3B89E8FEFD3BF0) & v63 ^ (4 * v63) & 0xF2CEE27A3FBF4EFCLL;
  v66 = (v65 ^ 0xC20A80683EBD0AE0) & (16 * v64) ^ v64;
  v67 = ((16 * (v65 ^ 0x30C462120102440CLL)) ^ 0x2CEE27A3FBF4EFC0) & (v65 ^ 0x30C462120102440CLL) ^ (16 * (v65 ^ 0x30C462120102440CLL)) & 0xF2CEE27A3FBF4EF0;
  v68 = (v67 ^ 0x20CE22223BB44E00) & (v66 << 8) ^ v66;
  v69 = (((v67 ^ 0xD200C058040B003CLL) << 8) ^ 0xCEE27A3FBF4EFC00) & (v67 ^ 0xD200C058040B003CLL) ^ ((v67 ^ 0xD200C058040B003CLL) << 8) & 0xF2CEE27A3FBF4E00;
  v70 = v68 ^ 0xF2CEE27A3FBF4EFCLL ^ (v69 ^ 0xC2C2623A3F0E0000) & (v68 << 16);
  v71 = v60 ^ (2 * ((v70 << 32) & 0x72CEE27A00000000 ^ v70 ^ ((v70 << 32) ^ 0x3FBF4EFC00000000) & (((v69 ^ 0x300C804000B102FCLL) << 16) & 0x72CEE27A00000000 ^ 0x1084C04000000000 ^ (((v69 ^ 0x300C804000B102FCLL) << 16) ^ 0x627A3FBF00000000) & (v69 ^ 0x300C804000B102FCLL))));
  v72 = ((v71 ^ 0xEF1795261DBF2A3DLL) + 0x53BAF7378F56C0AELL) ^ ((v71 ^ 0xA323A819CD02CCADLL) + 0x1F8ECA085FEB263ELL);
  LODWORD(v71) = __CFADD__(969 * (v72 ^ ((v71 ^ 0x2388A9BEBD4DC046) - 0x60DA3450D05BD529)), 0x1101B52A6759C741) + (((v72 ^ ((v71 ^ 0x2388A9BEBD4DC046) - 0x60DA3450D05BD529)) * 0x3C9uLL) >> 64) + 969 * ((__CFADD__(v71 ^ 0xEF1795261DBF2A3DLL, 0x53BAF7378F56C0AELL) - 1) ^ (__CFADD__(v71 ^ 0xA323A819CD02CCADLL, 0x1F8ECA085FEB263ELL) - 1) ^ (__CFADD__(v71 ^ 0x2388A9BEBD4DC046, 0x9F25CBAF2FA42AD7) - 1)) + 1394178122;
  LODWORD(v69) = (v71 ^ 0x2EC46B4F) & (2 * (v71 & 0xACE68860)) ^ v71 & 0xACE68860;
  LODWORD(v72) = ((2 * (v71 ^ 0x26C17BCF)) ^ 0x144FE75E) & (v71 ^ 0x26C17BCF) ^ (2 * (v71 ^ 0x26C17BCF)) & 0x8A27F3AE;
  LODWORD(v63) = v72 ^ 0x8A2010A1;
  LODWORD(v72) = (v72 ^ 0x7FF00) & (4 * v69) ^ v69;
  LODWORD(v69) = ((4 * v63) ^ 0x289FCEBC) & v63 ^ (4 * v63) & 0x8A27F3AC;
  LODWORD(v72) = (v69 ^ 0x807C2A0) & (16 * v72) ^ v72;
  LODWORD(v69) = ((16 * (v69 ^ 0x82203103)) ^ 0xA27F3AF0) & (v69 ^ 0x82203103) ^ (16 * (v69 ^ 0x82203103)) & 0x8A27F3A0;
  LODWORD(v72) = v72 ^ 0x8A27F3AF ^ (v69 ^ 0x82273200) & (v72 << 8);
  LODWORD(v71) = *(v24 + (v71 ^ (2 * ((v72 << 16) & 0xA270000 ^ v72 ^ ((v72 << 16) ^ 0x73AF0000) & (((v69 ^ 0x800C10F) << 8) & 0xA270000 ^ 0x8040000 ^ (((v69 ^ 0x800C10F) << 8) ^ 0x27F30000) & (v69 ^ 0x800C10F)))) ^ 0xBCE76F3E));
  LODWORD(v72) = ((((251122377 - LODWORD(STACK[0x424])) ^ 0x69C96A71) + 771900906) ^ (251122377 - LODWORD(STACK[0x424])) ^ (((251122377 - LODWORD(STACK[0x424])) ^ 0xA70C959) + 1304159938) ^ (((251122377 - LODWORD(STACK[0x424])) ^ 0x24429EB0) + 1669968169) ^ (((251122377 - LODWORD(STACK[0x424])) ^ 0x7FCFEDFF) + 939836008)) & 0x4493901D;
  LODWORD(v63) = (LODWORD(STACK[0x57C]) ^ 0x34266820) & (2 * (STACK[0x57C] & 0xB6B7422A)) ^ STACK[0x57C] & 0xB6B7422A;
  LODWORD(v69) = ((2 * (LODWORD(STACK[0x57C]) ^ 0x11686C74)) ^ 0x4FBE5CBC) & (LODWORD(STACK[0x57C]) ^ 0x11686C74) ^ (2 * (LODWORD(STACK[0x57C]) ^ 0x11686C74)) & 0xA7DF2E5E;
  v73 = v69 ^ 0xA0412242;
  LODWORD(v69) = (v69 ^ 0x79E0818) & (4 * v63) ^ v63;
  LODWORD(v63) = ((4 * v73) ^ 0x9F7CB978) & v73 ^ (4 * v73) & 0xA7DF2E5C;
  LODWORD(v69) = (v63 ^ 0x875C2846) & (16 * v69) ^ v69;
  LODWORD(v63) = ((16 * (v63 ^ 0x20830606)) ^ 0x7DF2E5E0) & (v63 ^ 0x20830606) ^ (16 * (v63 ^ 0x20830606)) & 0xA7DF2E50;
  LODWORD(v69) = v69 ^ 0xA7DF2E5E ^ (v63 ^ 0x25D22400) & (v69 << 8);
  v74 = (LODWORD(STACK[0x57C]) ^ (2 * ((v69 << 16) & 0x22490000 ^ v69 ^ ((v69 << 16) ^ 0x2E5E0000) & (((v63 ^ 0x820D0A1E) << 8) & 0x27DF0000 ^ 0x20D10000 ^ (((v63 ^ 0x820D0A1E) << 8) ^ 0x5F2E0000) & (v63 ^ 0x820D0A1E))))) & 0x4493901D;
  v75 = (v71 ^ 0xFFF02) & ((v45 << 12) ^ (*(v24 + v49 % 0x3C9) << 8) ^ 0x780A) | v71 & 0xF5;
  LOBYTE(v74) = (((v72 ^ 0xD9) + 80) ^ ((v72 ^ 0xF8) + 111) ^ ((v72 ^ 0x24) - 77)) + 58 + (((v74 ^ 0xB) + 121) ^ ((v74 ^ 0xB6) - 58) ^ ((v74 ^ 0xA9) - 37));
  LOBYTE(v45) = (v74 ^ 0xE8) & (2 * (v74 & 0xCA)) ^ v74 & 0xCA;
  LOBYTE(v71) = ((2 * (v74 ^ 0xFC)) ^ 0x6C) & (v74 ^ 0xFC) ^ (2 * (v74 ^ 0xFC)) & 0x36;
  LOBYTE(v74) = (v74 ^ (2 * ((((4 * (v71 ^ 0x12)) ^ 0xD8) & (v71 ^ 0x12) ^ (4 * (v71 ^ 0x12)) & 0x34) & (16 * ((v71 ^ 0x20) & (4 * v45) ^ v45)) ^ (v71 ^ 0x20) & (4 * v45) ^ v45 ^ 0x36))) & 0x7A;
  LOWORD(v71) = v38 >> 4;
  LOBYTE(v74) = (((v74 ^ 0x4D) - 38) ^ ((v74 ^ 3) - 104) ^ ((v74 ^ 0xE9) + 126)) - 76;
  LOBYTE(v74) = v74 ^ ((v74 ^ 0xBC) - 61) ^ ((v74 ^ 0xD7) - 86) ^ ((v74 ^ 0x35) + 76) ^ ((v74 ^ 0xDF) - 94) ^ 0x1D;
  v76 = (BYTE1(v38) ^ 0x39u) >> (v74 & 0x58 ^ 0x18) >> (v74 & 0xA7 ^ 0x84);
  v77 = *(v24 + (158 * ((((v38 >> 20) & 0xF ^ 0x424A) + 7800) ^ (((v38 >> 20) & 0xF ^ 0x6D07) + 12603) ^ (((v38 >> 20) & 0xF ^ 0x2F42) - 3200)) + 20972 - 969 * (((158 * (((((v38 >> 20) & 0xF ^ 0x424A) + 7800) ^ (((v38 >> 20) & 0xF ^ 0x6D07) + 12603)) ^ (((v38 >> 20) & 0xF ^ 0x2F42) - 3200)) + 20972) & 0xFFFEu) / 0x3C9))) << 12;
  v78 = *(v24 + (158 * (((v76 ^ 0x1F19D437) - 45771167) ^ ((v76 ^ 0x781471D) + 1708983627) ^ ((v76 ^ 0x1898932A) - 87764610)) + 1259292438) % 0x3C9);
  LOWORD(v69) = v38 & 0xF;
  LODWORD(v72) = *(v24 + (158 * ((((v38 >> 8) & 0xF ^ 0x5FC5) + 8678) ^ (((v38 >> 8) & 0xF ^ 0xF14) - 3787) ^ (((v38 >> 8) & 0xF ^ 0x50D8) - 20743)) + 23418 - 969 * (((158 * (((((v38 >> 8) & 0xF ^ 0x5FC5) + 8678) ^ (((v38 >> 8) & 0xF ^ 0xF14) - 3787)) ^ (((v38 >> 8) & 0xF ^ 0x50D8) - 20743)) + 23418) & 0xFFFEu) / 0x3C9)));
  v79 = v44 & 0xF;
  LODWORD(STACK[0x548]) = v79;
  LOBYTE(v37) = *(v24 + (158 * (((v71 ^ 0x1ABF) - 5328) ^ ((v71 ^ 0x7427) - 31304) ^ ((v71 ^ 0x6E91) - 24830)) + 7258 - 969 * (((158 * ((((v71 ^ 0x1ABF) - 5328) ^ ((v71 ^ 0x7427) - 31304)) ^ ((v71 ^ 0x6E91) - 24830)) + 7258) & 0xFFFEu) / 0x3C9)));
  v80 = *(v24 + (158 * (((v69 ^ 0x4873) - 2480) ^ ((v69 ^ 0x1ADF) - 23324) ^ ((v69 ^ 0x52AC) - 4975)) - 12352 - 969 * (((158 * ((((v69 ^ 0x4873) - 2480) ^ ((v69 ^ 0x1ADF) - 23324)) ^ ((v69 ^ 0x52AC) - 4975)) - 12352) & 0xFFFEu) / 0x3C9)));
  v81 = LOBYTE(STACK[0x7BF]);
  LODWORD(STACK[0x54C]) = v81;
  v82 = (16 * v81) ^ 0xC45B6BD;
  LODWORD(STACK[0x57C]) = v82;
  LODWORD(v69) = v77 ^ (v75 << 8) ^ 0xCD6E0A;
  LODWORD(v71) = ((v69 & (v72 ^ 0xFFFF22) | v72 & 0xF5) << 8) ^ (v78 << 12);
  v83 = v71 ^ 0x1DE98F46;
  LODWORD(v71) = (v71 ^ 0x81433610) & (v80 ^ 0xFFFFFFC0) | v80 & 0xE0;
  v84 = ((16 * v80) & 0xC0 ^ 0xD0CA484F) & (v79 ^ 0xD0CA48CE) | (16 * v80) & 0x30;
  v85 = 158 * (((v84 ^ 0x48245E4E) + 1285037361) ^ ((v84 ^ 0x3DC26008) + 964567927) ^ ((v84 ^ 0x252C7691) - 1584384528));
  v86 = *(v24 + (v85 - 551165390) % 0x3C9u) ^ v82;
  v87 = *(v24 + (v85 - 551217688) % 0x3C9u);
  v88 = 158 * (((v86 ^ 0x398A0CF3) + 1549103473) ^ ((v86 ^ 0x28F4DDF9) + 1294704763) ^ ((v86 ^ 0x1D3B663E) + 2028215230));
  v89 = (v88 - 763889778) % 0x3C9u;
  LOBYTE(v71) = v37 ^ (v71 >> 4);
  v90 = v87 ^ (*(v24 + (v88 - 763942076) % 0x3C9u) >> 4);
  v91 = ((16 * (v71 & 0xF)) ^ 0x44855DC5) & ((v46 >> 4) ^ 0x5F8FFFF9) | (v46 >> 4) & 0xA;
  v92 = 158 * (((v91 ^ 0x203D6FE7) - 705979243) ^ ((v91 ^ 0x543D66E7) + 569087381) ^ ((v91 ^ 0x3085544F) - 984373443));
  v93 = *(v24 + (v92 - 1906655442) % 0x3C9u);
  v94 = *(v24 + (v92 - 1906603144) % 0x3C9u) ^ (16 * *(v24 + (158 * (((v90 ^ 0x2145E8CD) - 558229588) ^ ((v90 ^ 0x4D7E6845) + 847353636) ^ ((v90 ^ 0x6C3B8090u) + 331644919)) + 91324) % 0x3C9));
  v95 = 158 * (((v94 ^ 0x3092FA63) + 1999521626) ^ ((v94 ^ 0x65BB7D58) - 1576550301) ^ ((v94 ^ 0x552986B2) + 311769993));
  v96 = (v95 - 1182491130) % 0x3C9u;
  v97 = *(v24 + (v95 - 1182544397) % 0x3C9u);
  LODWORD(STACK[0x550]) = v46;
  v98 = (v46 >> 8) & 0xF;
  LODWORD(STACK[0x560]) = v98;
  LODWORD(v71) = (v71 & 0xF0 ^ 0xA9EC449D) & (v98 ^ 0xA9FFD5FA) | (v46 >> 8) & 2;
  LODWORD(v71) = 158 * (((v71 ^ 0x7D6C406A) + 1204881925) ^ ((v71 ^ 0x78755E) + 986005297) ^ ((v71 ^ 0x54F87169) + 1850030856));
  v99 = *(v24 + (v71 + 335171846) % 0x3C9u) ^ (16 * *(v24 + (158 * (((v93 ^ (v97 >> 4) ^ 0x64208CA3) + 467629032) ^ ((v93 ^ (v97 >> 4) ^ 0x453B2118) - 1161503139) ^ ((v93 ^ (v97 >> 4) ^ 0x211BADA3) + 1592021736)) + 96696) % 0x3C9));
  LODWORD(v72) = *(v24 + (v71 + 335119548) % 0x3C9u);
  v100 = 158 * (((v99 ^ 0x2CAE357E) - 305159400) ^ ((v99 ^ 0x68FC5D2E) - 1449276600) ^ ((v99 ^ 0x445269D9) + 87293873));
  LODWORD(v71) = (v100 - 1513793472) % 0x3C9u;
  v101 = v72 ^ (*(v24 + (v100 - 1513845770) % 0x3C9u) >> 4);
  v102 = STACK[0x55C];
  LODWORD(v72) = ((v83 >> 8) & 0xF0 ^ 0xC3446DB5) & ((LODWORD(STACK[0x55C]) >> 12) ^ 0xE755FDFD) | (LODWORD(STACK[0x55C]) >> 12) & 0xA;
  LODWORD(v72) = 158 * (((v72 ^ 0x707C618C) + 2003132205) ^ ((v72 ^ 0x43D5C6B4) + 1154283541) ^ ((v72 ^ 0x70EDCA87) - 134941656));
  v103 = *(v24 + (v72 - 832059554) % 0x3C9u) ^ (16 * *(v24 + (158 * (((v101 ^ 0x3E226D3E) - 1042443612) ^ ((v101 ^ 0x7EF683C4) + 17398874) ^ ((v101 ^ 0x40D4EEE2u) + 1059787136)) + 90218) % 0x3C9));
  LODWORD(v63) = 158 * (((v103 ^ 0x554EF80C) + 1086226586) ^ ((v103 ^ 0xCDBFA1A) + 422281872) ^ ((v103 ^ 0x5995039F) - 865764597));
  v104 = (*(v24 + (v63 + 1972786488) % 0x3C9u) << 12) ^ (*(v24 + v71) << 8);
  LODWORD(v71) = *(v24 + (v72 - 832111852) % 0x3C9u) ^ (*(v24 + (v63 + 1972734190) % 0x3C9u) >> 4);
  v105 = HIWORD(LODWORD(STACK[0x55C])) & 0xF;
  LODWORD(STACK[0x538]) = v105;
  v106 = ((v83 >> 12) & 0xF0 ^ 0x4AD7B19F) & (v105 ^ 0x4AD7B1F3);
  v107 = 158 * (((v106 ^ 0x8D0E7BB) + 622540970) ^ ((v106 ^ 0x7108F33A) + 1556294697) ^ ((v106 ^ 0x330FA5CE) + 516192989));
  LODWORD(v71) = *(v24 + (v107 + 1551169306) % 0x3C9u) ^ (16 * *(v24 + (158 * (((v71 ^ 0x2550426A) + 1521466827) ^ ((v71 ^ 0xA1E79AA) - 169769461) ^ ((v71 ^ 0x2F4E3BD8) + 1353827449)) + 82160) % 0x3C9));
  LODWORD(v63) = (v107 + 1551117008) % 0x3C9u;
  v108 = ((v71 ^ 0xEA2F66E0) - 1984502303) ^ ((v71 ^ 0xABBF02C1) - 937000510) ^ ((v71 ^ 0x419065A8) + 571074217);
  v109 = ((v71 ^ 0x7E337B6B) - 1649739668) ^ ((v71 ^ 0x4F784EB) + 1735264236) ^ ((v71 ^ 0x7AC4FE09) - 1721926390);
  LODWORD(v71) = (v71 & 0x9E ^ 0xD411132E) & (v71 & 0x9E ^ 0xDC3153E8) ^ v71 & 0x18;
  LODWORD(v71) = *(v24 + v63) ^ (*(v24 + (((((v71 ^ 0x4C0A77F8) + 1458022611) ^ ((v71 ^ 0xEADBA8B5) - 264865888) ^ ((v71 ^ 0x72C0CCFB) + 1747784658)) - 19364961) * (v108 - 1671004692) + 841658308 * v108 - 1891320656) % 0x3C9) >> 4);
  LODWORD(v63) = ((v69 >> 8) & 0xF0 ^ 0xB2D36F97) & ((LODWORD(STACK[0x588]) >> 12) ^ 0xB2D36FF8) | (LODWORD(STACK[0x588]) >> 12) & 8;
  v110 = 158 * (((v63 ^ 0x7DE80FD) + 768715372) ^ ((v63 ^ 0x1FF9067F) + 905325802) ^ ((v63 ^ 0x2AF4E9FD) + 16499564));
  LODWORD(v63) = (158 * v109 - 2025683982) % 0x3C9u;
  v111 = *(v24 + (v110 - 1475481934) % 0x3C9u) ^ (16 * *(v24 + (158 * (((v71 ^ 0x75A9D88) - 123379098) ^ ((v71 ^ 0x51F1AB0B) - 1374792473) ^ ((v71 ^ 0x56AB369B) - 1454061193)) + 72522) % 0x3C9));
  v112 = v110 - 1475534232;
  v113 = 158 * (((v111 ^ 0x42E32D57) + 37460063) ^ ((v111 ^ 0x34A42C11) - 193160935) ^ ((v111 ^ 0xF64700CF) + 916436423));
  v114 = (v113 - 96359040) % 0x3C9;
  v115 = HIWORD(LODWORD(STACK[0x56C])) & 0xF;
  LODWORD(STACK[0x56C]) = v115;
  v116 = ((v69 >> 12) | 0xE06FD0F) & (v115 ^ 0xE06FD96) | (v69 >> 12) & 0x60;
  v117 = *(v24 + v112 % 0x3C9) ^ (*(v24 + (v113 - 96411338) % 0x3C9) >> 4);
  LODWORD(v71) = 158 * (((v116 ^ 0x60B230AF) - 958822979) ^ ((v116 ^ 0x29A71EA0) + 265071540) ^ ((v116 ^ 0x4713D3D3) + 1635280577));
  v118 = *(v24 + (v71 + 210642110) % 0x3C9u) ^ (16 * *(v24 + (158 * (((v117 ^ 0x281F736A) - 673149708) ^ ((v117 ^ 0x1ED7F1B3) - 517468629) ^ ((v117 ^ 0x36C882C1u) - 919110311)) + 90850) % 0x3C9));
  v119 = 158 * (((v118 ^ 0x7805899E) + 1757726923) ^ ((v118 ^ 0x570CEE6E) - 942821573) ^ ((v118 ^ 0x2F096679) - 1077401810));
  v120 = (v119 - 1464136678) % 0x3C9u;
  v121 = LODWORD(STACK[0x580]) >> 20;
  LODWORD(STACK[0x580]) = v121;
  LODWORD(v69) = (WORD1(v69) & 0xB0 ^ 0x3861378F) & (v121 ^ 0x386137B5) ^ (WORD1(v69) & 0x40 | 0x87160805);
  LODWORD(v71) = *(v24 + (v71 + 210589812) % 0x3C9u) ^ (*(v24 + (v119 - 1464188976) % 0x3C9u) >> 4);
  LODWORD(v71) = *(v24 + (158 * (((v69 ^ 0x39C9A09B) + 1470028183) ^ ((v69 ^ 0x5D98ADB5) - 1278225223) ^ ((v69 ^ 0x5B263291) - 1250866275)) - 300584284) % 0x3C9) ^ (16 * *(v24 + (158 * (((v71 ^ 0x43B4417E) + 1011596926) ^ ((v71 ^ 0x53EB4CCC) + 739554256) ^ ((v71 ^ 0x105F0DAA) - 274664790)) + 106966) % 0x3C9));
  LODWORD(v71) = 158 * (((v71 ^ 0x42F99411) + 502583573) ^ ((v71 ^ 0x52AD2333) + 228615735) ^ ((v71 ^ 0x1054B6AB) + 1331295151)) + 1845620715;
  LODWORD(v69) = (2 * (v71 & 0xE7CED62C)) & 0x794A010 ^ v71 & 0xE7CED62C ^ ((2 * (v71 & 0xE7CED62C)) | 2) & (v71 ^ 0x605A26BC);
  v122 = (2 * (v71 ^ 0x605A26BC)) & 0x8794F090 ^ 0x80941091 ^ ((2 * (v71 ^ 0x605A26BC)) ^ 0xF29E122) & (v71 ^ 0x605A26BC);
  LODWORD(v69) = (4 * v69) & 0x794F090 ^ v69 ^ ((4 * v69) | 4) & v122;
  v123 = (4 * v122) & 0x8794F090 ^ 0x81843091 ^ ((4 * v122) ^ 0x1E53C244) & v122;
  LODWORD(v69) = (16 * v69) & 0x794F090 ^ v69 ^ ((16 * v69) ^ 0x10) & v123;
  v124 = (16 * v123) & 0x8794F090 ^ 0x8690F081 ^ ((16 * v123) ^ 0x794F0910) & v123;
  LODWORD(v69) = v69 ^ 0x8794E080 ^ (v69 << 8) & 0x8794F000 ^ ((v69 << 8) ^ 0x1100) & v124;
  v125 = v71 ^ (2 * ((v69 << 16) & 0x7940000 ^ v69 ^ ((v69 << 16) ^ 0x70910000) & ((v124 << 8) & 0x7940000 ^ 0x3040000 ^ ((v124 << 8) ^ 0x14F00000) & v124))) ^ 0xED7C923C;
  v126 = 0x43A1F2CA5E947ALL * (((v125 ^ 0xA2977F939B8EAF8ALL) + 0x5D68806C64715076) ^ ((v125 ^ 0x593D7C5266E0F97FLL) - 0x593D7C5266E0F97FLL) ^ ((v125 ^ 0xFBAA03C1F9D5F3C6) + 0x455FC3E062A0C3ALL)) + 0xE9884DB9F7DCE1ALL;
  v127 = (v126 ^ 0x8D810E1317836DA2) & (2 * (v126 & 0xADC5885A042A6834)) ^ v126 & 0xADC5885A042A6834;
  v128 = ((2 * (v126 ^ 0xC50A0E371793BD82)) ^ 0xD19F0CDA2773AB6CLL) & (v126 ^ 0xC50A0E371793BD82) ^ (2 * (v126 ^ 0xC50A0E371793BD82)) & 0x68CF866D13B9D5B4;
  v129 = (v128 ^ 0x400E004801318120) & (4 * v127) ^ v127;
  v130 = ((4 * (v128 ^ 0x2840822510885492)) ^ 0xA33E19B44EE756D8) & (v128 ^ 0x2840822510885492) ^ (4 * (v128 ^ 0x2840822510885492)) & 0x68CF866D13B9D5B4;
  v131 = (v130 ^ 0x200E002402A15480) & (16 * v129) ^ v129;
  v132 = ((16 * (v130 ^ 0x48C1864911188126)) ^ 0x8CF866D13B9D5B60) & (v130 ^ 0x48C1864911188126) ^ (16 * (v130 ^ 0x48C1864911188126)) & 0x68CF866D13B9D5B0;
  v133 = (v132 ^ 0x8C8064113995100) & (v131 << 8) ^ v131;
  v134 = (((v132 ^ 0x6007802C00208496) << 8) ^ 0xCF866D13B9D5B600) & (v132 ^ 0x6007802C00208496) ^ ((v132 ^ 0x6007802C00208496) << 8) & 0x68CF866D13B9D500;
  v135 = v133 ^ 0x68CF866D13B9D5B6 ^ (v134 ^ 0x4886040111910000) & (v133 << 16);
  v136 = v126 ^ (2 * ((v135 << 32) & 0x68CF866D00000000 ^ v135 ^ ((v135 << 32) ^ 0x13B9D5B600000000) & (((v134 ^ 0x2049826C022841B6) << 16) & 0x68CF866D00000000 ^ 0x6882844400000000 ^ (((v134 ^ 0x2049826C022841B6) << 16) ^ 0x66D13B900000000) & (v134 ^ 0x2049826C022841B6))));
  v137 = ((v136 ^ 0x9D83155EA3CD12EALL) - 0x25D0D67BD6FB52FELL) ^ ((v136 ^ 0x5B368B2C1670E591) + 0x1C9AB7F69CB95A7BLL);
  LODWORD(v136) = __CFADD__(969 * (v137 ^ ((v136 ^ 0xBBFC12BA96E43423) - 0x3AFD19FE3D27437)), 0x1098895C2C17FAACLL) + (((v137 ^ ((v136 ^ 0xBBFC12BA96E43423) - 0x3AFD19FE3D27437)) * 0x3C9uLL) >> 64) + 969 * ((__CFADD__(v136 ^ 0x9D83155EA3CD12EALL, 0xDA2F29842904AD02) - 1) ^ (__CFADD__(v136 ^ 0x5B368B2C1670E591, 0x1C9AB7F69CB95A7BLL) - 1) ^ (__CFADD__(v136 ^ 0xBBFC12BA96E43423, 0xFC502E601C2D8BC9) - 1)) + 2089138242;
  LODWORD(v137) = (v136 ^ 0xBB7B6203) & (2 * (v136 & 0x837A4AA8)) ^ v136 & 0x837A4AA8;
  LODWORD(v134) = ((2 * (v136 ^ 0xB93F7353)) ^ 0x748A73F6) & (v136 ^ 0xB93F7353) ^ (2 * (v136 ^ 0xB93F7353)) & 0x3A4539FA;
  LODWORD(v137) = (v134 ^ 0x100031E0) & (4 * v137) ^ v137;
  LODWORD(v134) = ((4 * (v134 ^ 0xA450809)) ^ 0xE914E7EC) & (v134 ^ 0xA450809) ^ (4 * (v134 ^ 0xA450809)) & 0x3A4539F8;
  LODWORD(v137) = (v134 ^ 0x280421E0) & (16 * v137) ^ v137;
  LODWORD(v134) = ((16 * (v134 ^ 0x12411813)) ^ 0xA4539FB0) & (v134 ^ 0x12411813) ^ (16 * (v134 ^ 0x12411813)) & 0x3A4539F0;
  LODWORD(v137) = v137 ^ 0x3A4539FB ^ (v134 ^ 0x20411900) & (v137 << 8);
  v138 = v136 ^ (2 * ((v137 << 16) & 0x3A450000 ^ v137 ^ ((v137 << 16) ^ 0x39FB0000) & (((v134 ^ 0x1A04204B) << 8) & 0x3A450000 ^ 0x3A440000 ^ (((v134 ^ 0x1A04204B) << 8) ^ 0x45390000) & (v134 ^ 0x1A04204B))));
  LODWORD(v134) = *(v24 + v89);
  LODWORD(v137) = v134 ^ (16 * *(v24 + v96));
  v139 = v104;
  v140 = v137 ^ 0x1B1FB5FB ^ v104;
  v141 = v140 ^ (*(v24 + v63) << 16);
  v142 = v141 ^ (*(v24 + v114) << 20);
  v143 = v24;
  v144 = v142 ^ ((*(v24 + v120) ^ 0x4E) << 24) ^ (*(v24 + (v138 ^ 0x8772395ELL)) << 28);
  LOBYTE(v63) = (v138 & 0xDC ^ 0xD0) & (v138 & 0xDC ^ 0x5E) ^ v138 & 0x50;
  LOBYTE(v63) = -121 * (((v63 ^ 0xA) - 90) ^ ((v63 ^ 0x5C) - 12) ^ ((v63 ^ 0xDA) + 118)) - 46;
  LOBYTE(v114) = (v63 ^ 0xA1) & (2 * (v63 & 0x32)) ^ v63 & 0x32;
  LOBYTE(v79) = ((2 * (v63 ^ 0xE5)) ^ 0xAE) & (v63 ^ 0xE5) ^ (2 * (v63 ^ 0xE5)) & 0xD6;
  LOBYTE(v79) = v63 ^ (2 * ((16 * (v114 ^ 0xD7 ^ v79 & (4 * v114))) & 0x50 ^ v114 ^ 0xD7 ^ v79 & (4 * v114) ^ (((4 * (v79 ^ 0x51)) ^ 0x50) & (v79 ^ 0x51) ^ (4 * (v79 ^ 0x51)) & 0xD0) & ((16 * (v114 ^ 0xD7 ^ v79 & (4 * v114))) ^ 0x70)));
  v145 = ((v134 & 0xF ^ 9) << (~(v79 ^ 0x8B) & 0xA4) << ((v79 ^ 0x8B) & 0x58 ^ 0x10u)) ^ LODWORD(STACK[0x548]);
  v146 = v137 & 0xF0 | (LODWORD(STACK[0x550]) >> 4);
  LODWORD(v63) = *(v24 + (158 * (((v145 ^ 0x379049C4) - 454270296) ^ ((v145 ^ 0xF7EF6A9) + 1543691723) ^ ((v145 ^ 0x38EEBF64u) + 1804768264)) + 2036262992) % 0x3C9);
  LODWORD(STACK[0x548]) = v63;
  v147 = ((v140 >> 4) & 0x60 ^ 0x8FEC0B2F) & (LODWORD(STACK[0x560]) ^ 0x8FEC0B6E) | (v140 >> 4) & 0x90;
  v148 = v63 ^ (16 * *(v24 + (158 * (((v146 ^ 0x5BF6B2E5) - 192836166) ^ ((v146 ^ 0x73384049) - 598769898) ^ ((v146 ^ 0x28CEF222u) + 129617279)) - 1268232160) % 0x3C9));
  LODWORD(STACK[0x540]) = v148;
  v149 = v148 ^ (*(v24 + (158 * (((v147 ^ 0x56087656) - 1557733806) ^ ((v147 ^ 0x501BF4E) - 265349302) ^ ((v147 ^ 0x5CE5C2E3) - 1446286619)) + 1004568116) % 0x3C9) << 8) ^ 0x80EEDFD5;
  LODWORD(STACK[0x53C]) = v149;
  v150 = (v139 >> 8) & 0xF0 | (v102 >> 12);
  v151 = ((v141 >> 12) & 0xF0 ^ 0x95EAAECA) & (LODWORD(STACK[0x538]) ^ 0xD7FFBEF7) | HIWORD(v102) & 5;
  v152 = v149 ^ (*(v24 + (158 * (((v150 ^ 0xD2BB2BB) - 1973844487) ^ ((v150 ^ 0x76B68663) - 238767839) ^ ((v150 ^ 0x7B9D3452u) + 2096038674)) + 1736656302) % 0x3C9) << 12);
  LODWORD(STACK[0x538]) = v152;
  v153 = HIWORD(v142) & 0xF0 | (LODWORD(STACK[0x588]) >> 12);
  v154 = (*(v143 + (158 * (((v151 ^ 0x2F6BB8D1) - 389389972) ^ ((v151 ^ 0x4A2F127F) + 227462086) ^ ((v151 ^ 0x70AE0410) - 1223696981)) + 896417604) % 0x3C9) << 16) ^ (*(v143 + (158 * (((v153 ^ 0x7E7C759A) - 633311998) ^ ((v153 ^ 0x47879D3F) - 474249819) ^ ((v153 ^ 0x39FBE83Au) + 499642530)) - 1561665212) % 0x3C9) << 20) ^ 0x13E441FB ^ v152;
  v155 = ((v144 >> 20) & 0xE0 ^ 0x88E9812F) & (LODWORD(STACK[0x56C]) ^ 0x88E981E8) ^ ((v144 >> 20) & 0x10 | 0x77165404);
  v156 = 158 * (((v155 ^ 0x1A9DAB8) - 225585640) ^ ((v155 ^ 0x5ADA994) + 1988732220) ^ ((v155 ^ 0x7BFBA6DA) - 1998607754)) + 1183217807;
  v157 = v156 ^ ((v156 ^ 0xE2AA0E07) + 727783482) ^ ((v156 ^ 0x931CCAFA) + 1524096197) ^ ((v156 ^ 0xB83FD2C3) + 1911866622) ^ ((v156 ^ 0xFFBDFFFF) + 913762754) ^ 0x19F5CD6;
  v158 = 0x43A1F2CA5E947ALL * (((v157 ^ 0x161282EED309B36DLL) - 0x161282EED309B36DLL) ^ ((v157 ^ 0x8B0FC8674F62D46) - 0x8B0FC8674F62D46) ^ ((v157 ^ 0x1EA27E6890542B3CLL) - 0x1EA27E6890542B3CLL)) + 0x14563064A47B6DDALL;
  v159 = v158 ^ ((v158 ^ 0x137968AA46780675) + 0xA9CEC398A042D6FLL) ^ ((v158 ^ 0x38DC13396243126) + 0x1A6845A05A581A3ELL) ^ ((v158 ^ 0x8714AD231E650C48) - 0x610ED64F2DE6D8ACLL) ^ ((v158 ^ 0x71FA7FD6FDBAEFFFLL) + 0x681FFB4531C6C4E5);
  v160 = ((v159 ^ 0xC2BE5930A8B8BA59) - 0x2FCDC3ABD1DA84D8) ^ ((v159 ^ 0x36C7B2F3007CABFDLL) + 0x244BD79786E16A84);
  LODWORD(v159) = __CFADD__(969 * (v160 ^ ((v159 ^ 0x126390AF9B47C540) + 0xEFF5CB1DDA043FLL)), 0x33C8510A7120384DLL) + (((v160 ^ ((v159 ^ 0x126390AF9B47C540) + 0xEFF5CB1DDA043FLL)) * 0x3C9uLL) >> 64) + 969 * ((__CFADD__(v159 ^ 0xC2BE5930A8B8BA59, 0xD0323C542E257B28) - 1) ^ (__CFADD__(v159 ^ 0x36C7B2F3007CABFDLL, 0x244BD79786E16A84) - 1) ^ (__CFADD__(v159 ^ 0x126390AF9B47C540, 0xEFF5CB1DDA043FLL) - 1)) + 1834216985;
  v161 = ((v159 ^ 0x3A2E376A) - 1467865732) ^ v159 ^ ((v159 ^ 0x56D3E928) - 998245574) ^ ((v159 ^ 0xFA5DEC13) + 1760689667) ^ ((v159 ^ 0xFBF3DFBF) + 1767886255);
  LODWORD(v160) = *(v24 + (v161 ^ 0x6D53EDEE));
  LODWORD(v161) = v161 & 0x13D;
  v162 = ((16 * (v144 >> 28)) ^ 0x38F624F3) & (LODWORD(STACK[0x580]) ^ 0x38F624FC) | STACK[0x580] & 0xC;
  v163 = (v160 << 24) ^ (*(v24 + (158 * ((((v162 ^ 0xC1757432) - 1926502835) ^ ((v162 ^ 0x479C59F7) + 197315466) ^ ((v162 ^ 0x3E1F09EA) - 230581355)) - (((v161 ^ 0xF86CF1EA) + 2113234836) ^ ((v161 ^ 0xEA6B0DB5) + 1878170573) ^ ((v161 ^ 0x6DF8004E) + 1751225912)) - (((v161 ^ 0x10D91BCD) - 1541482391) ^ ((v161 ^ 0x7893E113) - 866901321) ^ ((v161 ^ 0x684AFBF2) + 1552758872))) + 509556574) % 0x3C9) << 28) ^ v154 ^ 0xCB96290C;
  LODWORD(v160) = 158 * ((((v154 >> 20) & 0xF ^ 0x6F41272E) - 153789608) ^ (((v154 >> 20) & 0xF ^ 0x40168D83) - 645729797) ^ (((v154 >> 20) & 0xF ^ 0x2F57AAA5) - 1228679459)) + 911946148;
  v164 = *(v24 + (158 * (((HIWORD(v154) & 0xF ^ 0x7817F0C6) + 1776309978) ^ (HIWORD(v154) & 0xF | 0x1E07D620) ^ ((HIWORD(v154) & 0xF ^ 0x7E68EEC4) + 1872709852)) - 383288964) % 0x3C9u);
  v165 = (((v164 ^ 0xFFEFFFEF) & ((*(v143 + (158 * ((((v163 >> 28) ^ 0x5BFC8047) - 1545757422) ^ (((v163 >> 28) ^ 0x6E2F4E7E) - 1777446103) ^ (((v163 >> 28) ^ 0x35D3CE34) + 1307759459)) - 611327688) % 0x3C9) << 12) ^ (*(v143 + (158 * (((HIBYTE(v163) & 0xF ^ 0x60FD044C) + 66307955) ^ ((HIBYTE(v163) & 0xF) - 456076481) ^ ((HIBYTE(v163) & 0xF ^ 0x6110CF7C) + 35523651)) - 589070562) % 0x3C9u) << 8) ^ 0xE20154) | v164 & 0xAB) << 8) ^ (*(v143 + v160 % 0x3C9) << 12);
  LODWORD(STACK[0x534]) = v165;
  v166 = ((v5 ^ 0xA8F705CE) + 1436273885) ^ ((v5 ^ 0x45636A6F) - 1206934658) ^ ((v5 ^ 0x917AA6B3) + 1813409698) ^ ((v5 ^ 0x7E7DFFFF) - 2096023826) ^ v8;
  v167 = LODWORD(STACK[0x58C]) + 1323578007;
  v168 = (v167 ^ 0x998CC30A) & (2 * (v167 & 0xD9C88B42)) ^ v167 & 0xD9C88B42;
  v169 = ((2 * (v167 ^ 0xB1CD58E)) ^ 0xA5A8BD98) & (v167 ^ 0xB1CD58E) ^ (2 * (v167 ^ 0xB1CD58E)) & 0xD2D45ECC;
  v170 = v169 ^ 0x52544244;
  v171 = (v169 ^ 0x90101C4C) & (4 * v168) ^ v168;
  v172 = ((4 * v170) ^ 0x4B517B30) & v170 ^ (4 * v170) & 0xD2D45ECC;
  v173 = (v172 ^ 0x42505A00) & (16 * v171) ^ v171;
  v174 = ((16 * (v172 ^ 0x908404CC)) ^ 0x2D45ECC0) & (v172 ^ 0x908404CC) ^ (16 * (v172 ^ 0x908404CC)) & 0xD2D45EC0;
  v175 = v173 ^ 0xD2D45ECC ^ (v174 ^ 0x444C00) & (v173 << 8);
  v176 = v167 ^ (2 * ((v175 << 16) & 0x52D40000 ^ v175 ^ ((v175 << 16) ^ 0x5ECC0000) & (((v174 ^ 0xD290120C) << 8) & 0x52D40000 ^ 0x2800000 ^ (((v174 ^ 0xD290120C) << 8) ^ 0x545E0000) & (v174 ^ 0xD290120C))));
  LODWORD(STACK[0x550]) = v176;
  v177 = v6 - 1699188392;
  v178 = (v6 - 1699188392) ^ 0x1212F0FA;
  v179 = ((v6 - 1699188392) ^ 0xF291D0B6) & (2 * ((v6 - 1699188392) & 0xFAD99226)) ^ (v6 - 1699188392) & 0xFAD99226;
  v180 = ((2 * v178) ^ 0xD196C5B8) & v178 ^ (2 * v178) & 0xE8CB62DC;
  v181 = v180 ^ 0x28492244;
  v182 = (v180 ^ 0xC0824098) & (4 * v179) ^ v179;
  v183 = ((4 * v181) ^ 0xA32D8B70) & v181 ^ (4 * v181) & 0xE8CB62DC;
  v184 = (v183 ^ 0xA0090240) & (16 * v182) ^ v182;
  v185 = ((16 * (v183 ^ 0x48C2608C)) ^ 0x8CB62DC0) & (v183 ^ 0x48C2608C) ^ (16 * (v183 ^ 0x48C2608C)) & 0xE8CB62D0;
  v186 = v184 ^ 0xE8CB62DC ^ (v185 ^ 0x88822000) & (v184 << 8);
  v187 = (v186 << 16) & 0x68CB0000 ^ v186 ^ ((v186 << 16) ^ 0x62DC0000) & (((v185 ^ 0x6049421C) << 8) & 0x68CB0000 ^ 0x20890000 ^ (((v185 ^ 0x6049421C) << 8) ^ 0x4B620000) & (v185 ^ 0x6049421C));
  v188 = a4 - (((v166 ^ 0x395193C) - 997610442) ^ ((v166 ^ 0xC7FE9E1E) + 14822168) ^ ((v166 ^ 0x3BD3A774) - 53538178)) - 1643083329;
  v189 = ((v188 ^ 0x6F9EA2C3) - 1373667070) ^ v188 ^ ((v188 ^ 0xAD9CAF43) + 1813875842) ^ ((v188 ^ 0x3C32E42) - 1035858559) ^ ((v188 ^ 0xFFBFFFFF) + 1044307006);
  v190 = (((LODWORD(STACK[0x590]) - 477565613) ^ 0xA43B4439) - 518482755) ^ (LODWORD(STACK[0x590]) - 477565613) ^ (((LODWORD(STACK[0x590]) - 477565613) ^ 0xA4FA9CCA) - 505852848) ^ (((LODWORD(STACK[0x590]) - 477565613) ^ 0xC5E20976) - 2134779404) ^ (((LODWORD(STACK[0x590]) - 477565613) ^ 0x7FFFFEFF) + 987508347);
  LODWORD(STACK[0x4B4]) = v190;
  v191 = ((v190 ^ v177 ^ (2 * v187) ^ 0x9BD9EED9) - 1477351299) ^ ((v190 ^ v177 ^ (2 * v187) ^ 0xA1D32F3D) - 1644451431) ^ ((v190 ^ v177 ^ (2 * v187) ^ 0x6A09B900) + 1445019558);
  v192 = (((v189 & 0x7BF05250 ^ 0xC158219) - 1011694506) ^ ((v189 & 0x7BF05250 ^ 0x10FBB2E0) - 547556179) ^ ((v189 & 0x7BF05250 ^ 0x5D6E32B9) - 1832291082)) + (((v189 & 0x7BF05250 ^ 0xF6E10212) + 85359439) ^ ((v189 & 0x7BF05250 ^ 0x41B459AC) - 1304223503) ^ ((v189 & 0x7BF05250 ^ 0x8D250BAE) + 2127721203)) - (((v165 & 0x46CFEE00 ^ 0x9FDDF0D2) + 1118686223) ^ ((v165 & 0x46CFEE00 ^ 0x9C96B42D) + 1105627378) ^ ((v165 & 0x46CFEE00 ^ 0x970D6637) + 1249729260)) - (((v165 & 0x46CFEE00 ^ 0xD88EF4A3) + 35166057) ^ ((v165 & 0x46CFEE00 ^ 0x87418DF6) + 1574432318) ^ ((v165 & 0x46CFEE00 ^ 0x1D46B555) - 942614881)) + 2068730580;
  v193 = (v192 ^ 0xD45EFD36) & (2 * (v192 & 0xC55CFE37)) ^ v192 & 0xC55CFE37;
  v194 = ((2 * (v192 ^ 0x5CDE057C)) ^ 0x3305F696) & (v192 ^ 0x5CDE057C) ^ (2 * (v192 ^ 0x5CDE057C)) & 0x9982FB4A;
  v195 = v194 ^ 0x88820949;
  v196 = (v194 ^ 0x1100F000) & (4 * v193) ^ v193;
  v197 = ((4 * v195) ^ 0x660BED2C) & v195 ^ (4 * v195) & 0x9982FB48;
  v198 = v197 ^ 0x99801243;
  LODWORD(v161) = v197 ^ 0x2E903;
  v199 = LODWORD(STACK[0x40C]) - 536357369 + v191;
  v200 = ((v199 ^ 0x9A35C96B) + 704242398) ^ v199 ^ ((v199 ^ 0x3959C18A) - 1969886659) ^ ((v199 ^ 0x92E02457) + 556535778) ^ ((v199 ^ 0x7DBFF8FF) - 831270070);
  v201 = (((v7 - 2051661874) ^ 0x8035F8ED) - 1880220861) ^ (v7 - 2051661874) ^ (((v7 - 2051661874) ^ 0x630986E6) + 1825727818) ^ (((v7 - 2051661874) ^ 0xCDE699B4) - 1036158436) ^ (((v7 - 2051661874) ^ 0xDEFEFBEF) - 786098111) ^ v176;
  v202 = ((v201 ^ 0x88BDCCAE) - 1966235048) ^ ((v201 ^ 0x79108196) + 2069950320) ^ ((v201 ^ 0xD86167B2) - 636417716);
  v203 = LODWORD(STACK[0x3E4]) - v202 - 491314228;
  LODWORD(v160) = (v203 ^ 0x4B40A3F3) & (2 * (v203 & 0x8B4933FB)) ^ v203 & 0x8B4933FB;
  v204 = ((2 * (v203 ^ 0x4940A0B7)) ^ 0x84132698) & (v203 ^ 0x4940A0B7) ^ (2 * (v203 ^ 0x4940A0B7)) & 0xC209934C;
  v205 = v204 ^ 0x42089144;
  v206 = (v204 ^ 0x10208) & (4 * v160) ^ v160;
  LODWORD(v160) = ((4 * v205) ^ 0x8264D30) & v205 ^ (4 * v205) & 0xC209934C;
  v207 = v206 ^ 0xC209934C ^ (v160 ^ 0x100) & (16 * v206);
  LODWORD(v160) = (16 * (v160 ^ 0xC209924C)) & 0xC2099340 ^ 0xC200830C ^ ((16 * (v160 ^ 0xC209924C)) ^ 0x209934C0) & (v160 ^ 0xC209924C);
  v208 = (v207 << 8) & 0xC2099300 ^ v207 ^ ((v207 << 8) ^ 0x9934C00) & v160;
  v209 = v203 ^ (2 * ((v208 << 16) & 0x42090000 ^ v208 ^ ((v208 << 16) ^ 0x134C0000) & ((v160 << 8) & 0x42090000 ^ 0x42080000 ^ ((v160 << 8) ^ 0x9930000) & v160)));
  LODWORD(STACK[0x4A8]) = ((158 * (((((v200 >> 28) ^ 0x3F0C) + 24088) ^ (((v200 >> 28) ^ 0x5A0F) - 17643)) ^ (((v200 >> 28) ^ 0x6507) + 1053)) + 18342) & 0xFFFEu) % (((v209 ^ 0x40) & (v209 ^ 0x55555555) ^ v209 & 0xFEFEFEFE ^ 0xFFFFFFBF) & 0x3C9);
  v210 = ((16 * v198) ^ 0x982FB4B0) & v198 ^ (16 * v198) & 0x9982FB40;
  v211 = v161 & (16 * v196) ^ v196 ^ 0x9982FB4B ^ (v210 ^ 0x9802B000) & ((v161 & (16 * v196) ^ v196) << 8);
  v212 = v192 ^ v189 ^ (2 * ((v211 << 16) & 0x19820000 ^ v211 ^ ((v211 << 16) ^ 0x7B4B0000) & (((v210 ^ 0x1804B4B) << 8) & 0x19820000 ^ 0x19000000 ^ (((v210 ^ 0x1804B4B) << 8) ^ 0x2FB0000) & (v210 ^ 0x1804B4B))));
  LODWORD(STACK[0x588]) = v212;
  LODWORD(STACK[0x498]) = (158 * (HIWORD(v200) & 0xF ^ 3) + 14694) % ((v212 & 0x5DA17C ^ 0x5C2160) + (v212 & 0x5DA17C ^ 0x1801Cu) - 6135219);
  v213 = LODWORD(STACK[0x41C]) - 1398718357 + v191;
  LOWORD(v210) = (158 * ((LOWORD(STACK[0x41C]) + 16491 + v191) >> 12) + 14694) % 0x3C9u;
  LODWORD(STACK[0x524]) = v213;
  LOWORD(v198) = (158 * ((v213 >> 8) & 0xF) + 14694) % 0x3C9u;
  LOWORD(v211) = (158 * (v213 >> 4) + 14694) % 0x3C9u;
  v214 = ((*(v143 + (158 * (HIBYTE(v213) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v143 + (158 * (v213 >> 28) + 14694) % 0x3C9u) ^ 0x19) << 12) ^ (16 * (*(v143 + (158 * ((v213 >> 20) & 0xF) + 14694) % 0x3C9u) ^ 0x19));
  LODWORD(STACK[0x590]) = v214;
  LOWORD(v203) = (158 * (v213 & 0xF) + 14694) % 0x3C9u;
  v215 = LODWORD(STACK[0x420]) - v202 + 1491077064;
  v216 = *(v24 + v210);
  v217 = *(v24 + (158 * (BYTE2(v213) & 0xF) + 14694) % 0x3C9u) ^ 0x19 ^ v214;
  LODWORD(STACK[0x518]) = v217;
  v218 = ((v217 << 16) | ((*(v24 + v198) ^ 0x19) << 8)) ^ ((v216 ^ 0x19) << 12);
  LODWORD(STACK[0x500]) = v218;
  v219 = *(v24 + v203) ^ 0x19;
  v220 = (v218 | v219) ^ (16 * (*(v24 + v211) ^ 0x19));
  v221 = ((*(v143 + (158 * (HIBYTE(v215) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v143 + (158 * (v215 >> 28) + 14694) % 0x3C9u) ^ 0x19) << 12);
  LODWORD(STACK[0x528]) = v221;
  v222 = ((v221 | *(v143 + (158 * (BYTE2(v215) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v143 + (158 * ((v215 >> 20) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 12);
  LODWORD(STACK[0x504]) = v222;
  LOWORD(v203) = (158 * (v215 >> 4) + 14694) % 0x3C9u;
  v223 = ((v222 | *(v143 + (158 * ((v215 >> 8) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v143 + (158 * (v215 >> 12) + 14694) % 0x3C9u) ^ 0x19) << 12);
  LODWORD(STACK[0x4F8]) = v223;
  v224 = *(v24 + (158 * (v215 & 0xF) + 14694) % 0x3C9u) ^ 0x19;
  v225 = v219 & 0xF;
  LODWORD(STACK[0x510]) = v225;
  v226 = v225 & 0xFFFFFF0F | (16 * (v224 & 0xF));
  v227 = (((v226 + 449) ^ (62 - v226)) & 0x9E) * (v226 + 449);
  v228 = *(v24 + v203) ^ ((v223 | v224) >> 4);
  v229 = *(v24 + (v227 - 969 * ((4432371 * v227) >> 32))) ^ 0x19;
  v230 = STACK[0x57C];
  v231 = 158 * ((v229 + 205895469 - ((2 * v229) & 0x5A)) ^ LODWORD(STACK[0x57C]));
  v232 = (v231 + 70942) % 0x3C9u;
  v233 = *(v24 + (v231 + 18644) % 0x3C9u);
  v234 = 158 * ((((v233 >> 4) ^ 0x21) + ((v233 >> 3) & 0x12 ^ 0xFD) - 6) ^ *(v24 + (158 * v226 + 18644 - 969 * (((158 * v226 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v235 = v228 ^ 0x19;
  v236 = 158 * ((v220 >> 4) | (16 * (v235 & 0xF)));
  v237 = v236 + 70942 - 969 * ((4432371 * (v236 + 70942)) >> 32);
  v238 = v236 + 18644 - 969 * ((8657 * ((v236 + 18644) & 0xFFFEu)) >> 23);
  v239 = *(v143 + v237) ^ (16 * (*(v143 + (v234 - 969 * ((4432371 * v234) >> 32))) ^ 0x19));
  v240 = *(v24 + v232);
  LODWORD(STACK[0x508]) = v240;
  v241 = v239 ^ 0x19;
  v242 = v241 + (v240 & 0x76 ^ 0x10 | v240 & 0x76 ^ 0x66);
  if (v242 <= 6)
  {
    v243 = 158 * v242;
  }

  else
  {
    v243 = (158 * v242 - 969) % 0x3C9;
  }

  v244 = 158 * ((((*(v24 + v243) >> 4) ^ 1) + ((*(v24 + v243) >> 3) & 0x12 ^ 0xFD) + 26) ^ *(v24 + v238));
  v245 = *(v24 + (v244 + 70942) % ((737 - v244) & 0x3C9 ^ (v244 + 70942) & 0x3C8u));
  LODWORD(STACK[0x4B8]) = v220;
  v246 = 158 * (v235 & 0xF0 | (v220 >> 8) & 0xF);
  LODWORD(STACK[0x4DC]) = v246;
  v247 = *(v24 + (v246 + 70942 - 969 * ((4432371 * (v246 + 70942)) >> 32))) ^ (16 * (v245 ^ 0x19)) ^ 0x19;
  LODWORD(STACK[0x4D0]) = v247;
  v248 = 16 * (*(v24 + (158 * v241 + 70942 - 969 * ((4432371 * (158 * v241 + 70942)) >> 32))) ^ 0x19);
  LODWORD(STACK[0x4C8]) = v248;
  v249 = v248 ^ ((*(v24 + (158 * v247 + 70942 - 969 * ((4432371 * (158 * v247 + 70942)) >> 32))) ^ 0x19) << 8);
  LODWORD(STACK[0x4C4]) = v249;
  v250 = 158 * ((v249 >> 4) & 0xF0 | (v220 >> 8) & 0xF);
  LODWORD(STACK[0x4C0]) = (v250 + 111706) % (((933 - v250) & 0x3C9) + ((v250 + 111706) & 0x3C8u));
  v251 = ((LODWORD(STACK[0x3F0]) ^ 0xF6470006) + 507905857) ^ LODWORD(STACK[0x3F0]) ^ ((LODWORD(STACK[0x3F0]) ^ 0x33C78221) - 607746712) ^ ((LODWORD(STACK[0x3F0]) ^ 0x8D81A061) + 1702930216) ^ ((LODWORD(STACK[0x3F0]) ^ 0x5FFFDAFF) - 1208033862);
  v252 = (2 * (((LODWORD(STACK[0x3F0]) ^ 0xD550267F) + 1028727098) ^ LODWORD(STACK[0x3F0]) ^ ((LODWORD(STACK[0x3F0]) ^ 0x43532D94) + 726805203) ^ ((LODWORD(STACK[0x3F0]) ^ 0x6A020CAD) + 33754092) ^ ((LODWORD(STACK[0x3F0]) ^ 0x6BFFFFFE) + 67041466))) & 0xEC81ECF4;
  v253 = ((v252 ^ 0xCB5B7993) - 72941225) ^ ((v252 ^ 0x988705C0) - 1468302074) ^ ((v252 ^ 0x7F5D9C23) + 1336009959);
  v254 = ((v212 ^ v166 ^ 0xB8051A83) + 1148281551) ^ ((v212 ^ v166 ^ 0xEDD20273) + 296122943) ^ ((v212 ^ v166 ^ 0x504CEC3A) - 1405578120);
  LODWORD(STACK[0x490]) = v254;
  LODWORD(STACK[0x480]) = v191;
  v255 = v254 - v191 - 604060602;
  v256 = (v191 - 1237208142) ^ 0x3E52DCEF;
  LODWORD(STACK[0x488]) = v255;
  LODWORD(STACK[0x55C]) = v256;
  v257 = ((v191 - 1237208142) ^ (1237208142 - v191) ^ ((v255 ^ 0x3E52DCEF) - (v256 ^ v255))) + (v255 ^ 0x3E52DCEF);
  v258 = (((v251 ^ 0xF551776E) - 1428051690) ^ ((v251 ^ 0x3288CD32) + 1832391498) ^ ((v251 ^ 0x2667B49F) + 2044160741)) + v253;
  LODWORD(STACK[0x56C]) = v257 + 1036635845;
  v259 = (v257 + 1036635845 + v256) ^ 0xEE26BA00;
  LODWORD(STACK[0x47C]) = v259;
  v260 = v258 + 628332177 + v259;
  LODWORD(STACK[0x4FC]) = v260;
  LOWORD(v253) = (158 * (v260 & 0xF) + 14694) % 0x3C9u;
  v261 = ((v10 ^ 0xA153801E) + 650015178) ^ v10 ^ ((v10 ^ 0x46A59A54) - 1052218492) ^ ((v10 ^ 0xC41BEBFD) + 1140202027) ^ ((v10 ^ 0x5BFFFF9F) - 602796471) ^ a5;
  v262 = (((v11 ^ 0x7E548F02) - 2119470850) ^ ((v11 ^ 0xB0683D60) + 1335345824) ^ ((v11 ^ 0x94795712) + 1803987182)) - (((v261 ^ 0x1ECEE6DD) + 623419269) ^ ((v261 ^ 0xB65403A9) - 1917682959) ^ ((v261 ^ 0xE34AFCC4) - 659782242)) + 1156630725;
  v263 = (v262 ^ 0x716A7D15) & (2 * (v262 & 0x858B7D95)) ^ v262 & 0x858B7D95;
  v264 = ((2 * (v262 ^ 0x7A781F1F)) ^ 0xFFE6C514) & (v262 ^ 0x7A781F1F) ^ (2 * (v262 ^ 0x7A781F1F)) & 0xFFF3628A;
  v265 = (v264 ^ 0x3E624000) & (4 * v263) ^ v263;
  v266 = ((4 * (v264 ^ 0x11228A)) ^ 0xFFCD8A28) & (v264 ^ 0x11228A) ^ (4 * (v264 ^ 0x11228A)) & 0xFFF36288;
  v267 = (v266 ^ 0xFFC10200) & (16 * v265) ^ v265;
  v268 = ((16 * (v266 ^ 0x326082)) ^ 0xFF3628A0) & (v266 ^ 0x326082) ^ (16 * (v266 ^ 0x326082)) & 0xFFF36280;
  v269 = v267 ^ 0xFFF3628A ^ (v268 ^ 0xFF322000) & (v267 << 8);
  v270 = v262 ^ (2 * ((v269 << 16) & 0xFFF3FFFF ^ v269 ^ ((v269 << 16) ^ 0x628A0000) & (((v268 ^ 0xC1420A) << 8) & 0x7FF30000 ^ 0xC910000 ^ (((v268 ^ 0xC1420A) << 8) ^ 0x73620000) & (v268 ^ 0xC1420A))));
  LODWORD(STACK[0x58C]) = v270;
  v271 = v261 ^ 0xA89DF53D ^ v270;
  LODWORD(STACK[0x45C]) = v271;
  LODWORD(STACK[0x450]) = v202;
  v272 = v271 - v202 - 1786865920;
  LODWORD(STACK[0x458]) = v272;
  v273 = (v202 - 156144256) ^ 0x3E52DCEF;
  LODWORD(STACK[0x580]) = v273;
  v274 = v272 ^ v273;
  LODWORD(STACK[0x454]) = v274;
  v274 += 1036635845;
  LODWORD(STACK[0x470]) = v274;
  v275 = (v274 + v273) ^ 0xEE26BA00;
  LODWORD(STACK[0x460]) = v275;
  v276 = LODWORD(STACK[0x404]) - v275;
  LODWORD(STACK[0x4E0]) = v276;
  v277 = *(v24 + (158 * (v276 & 0xF) + 14694) % 0x3C9u) ^ 0x19;
  LODWORD(STACK[0x4F4]) = v277;
  v278 = *(v24 + v253) ^ 0x19;
  LODWORD(STACK[0x4EC]) = v278;
  v279 = v278 & 0xF;
  LODWORD(STACK[0x520]) = v279;
  v280 = ((v277 & 0xF) << ((((158 * (v276 & 0xF) + 14694) % 0x3C9u) & 4 ^ 4) + (((158 * (v276 & 0xF) + 14694) % 0x3C9u) & 4))) ^ v279;
  v281 = *(v24 + 158 * (((v280 & 0x1C1) << ((v276 & 0x1000) != 0) << ((v276 & 0x1000) == 0)) + (v280 ^ 0x1C1u)) % 0x3C9) ^ 0x19;
  v282 = 158 * ((v281 + 205895469 - ((2 * v281) & 0x5A)) ^ v230);
  LODWORD(STACK[0x4F0]) = v282;
  LODWORD(STACK[0x560]) = v257;
  v283 = *(v24 + (v282 + 18644) % 0x3C9u);
  LODWORD(STACK[0x4E8]) = (158 * ((((v283 >> 4) ^ 1) + ((v283 >> 3) & 0x12 ^ 0xFD) + 26) ^ *(v24 + (158 * v280 + 18644) % 0x3C9u)) + 70942) % (((991 - v257) | (v257 + 32)) & 0x3C9u);
  v284 = 158 * (((HIBYTE(v200) & 0xF ^ 0x1904) + 26959) ^ ((HIBYTE(v200) & 0xF ^ 0x4E3C) + 48759) ^ ((HIBYTE(v200) & 0xF ^ 0x5734) + 10111)) - 4716;
  STACK[0x440] = v284 - 969 * ((v284 & 0xFFFEu) / 0x3C9);
  LODWORD(STACK[0x4A0]) = v200;
  LOWORD(v284) = (158 * (v200 & 0xF ^ 9) + 14694) % 0x3C9u;
  v285 = 16 * (*(v24 + (158 * (v209 >> 28) + 14694) % 0x3C9u) ^ 0x19);
  v286 = *(v24 + v284) ^ 0x19;
  v287 = *(v24 + (158 * (v209 & 0xF ^ 3) + 14694) % 0x3C9u) ^ 0x19;
  LODWORD(STACK[0x46C]) = v286 & 0xF;
  v288 = 158 * (v286 & 0xF | (16 * (v287 & 0xF)));
  v289 = *(v24 + (v288 + 70942 - 969 * ((4432371 * (v288 + 70942)) >> 32))) ^ 0x19;
  v290 = 158 * ((v289 + 205895469 - ((2 * v289) & 0x5A)) ^ v230);
  LODWORD(STACK[0x44C]) = (v290 + 70942) % 0x3C9u;
  v291 = *(v24 + (v290 + 18644) % 0x3C9u) >> 4;
  v292 = 158 * (((v291 ^ 1) - 2 * ((v291 ^ 1) & 0xFB ^ v291 & 2) + 25) ^ *(v24 + (v288 + 18644 - 969 * (((v288 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v293 = ((*(v24 + LODWORD(STACK[0x498])) ^ 0x19 | ((*(v24 + STACK[0x440]) ^ 0x19) << 8) ^ ((*(v24 + LODWORD(STACK[0x4A8])) ^ 0x19) << 12)) << 8) ^ ((*(v24 + (158 * ((v200 >> 20) & 0xF ^ 3) + 14694) % 0x3C9u) ^ 0x19) << 12);
  v294 = v293 | *(v24 + (158 * ((v200 >> 8) & 0xF ^ 4) + 14694) % 0x3C9u) ^ 0x19;
  v295 = (v294 << 8) ^ ((*(v24 + (158 * (((v200 & 0xF000) >> 12) ^ 0xD) + 14694) % 0x3C9u) ^ 0x19) << 12);
  v296 = (v295 | v286) ^ (16 * (*(v24 + (158 * ((v200 >> 4) ^ 4) + 14694) % 0x3C9u) ^ 0x19));
  v297 = (((*(v24 + (158 * ((HIBYTE(v209) ^ 0xB) & ((v284 & 0xF ^ 0xF) + (v284 & 0xF))) + 14694) % 0x3C9u) ^ v285 ^ 0x19) << 16) | ((*(v24 + ((((v285 & 0x90 ^ 0x9E) + (v285 & 0x90)) & 0xFE) * ((BYTE2(v209) & 0xF ^ 8) + 93)) % 0x3C9u) ^ 0x19) << 8)) ^ ((*(v24 + (158 * ((v209 >> 20) & 0xF ^ 4) + 14694) % 0x3C9u) ^ 0x19) << 12);
  v298 = v297 | *(v24 + (158 * ((v209 >> 8) & 0xF ^ 5) + 14694) % 0x3C9u) ^ 0x19;
  v299 = (v298 << 8) ^ ((*(v24 + (158 * ((v209 >> 12) ^ 1) + 14694) % 0x3C9u) ^ 0x19) << 12);
  LOBYTE(v284) = *(v24 + (158 * ((v209 >> 4) ^ 6) + 14694) % 0x3C9u) ^ ((v299 | v287) >> 4) ^ 0x19;
  v300 = 158 * ((v296 >> 4) | (16 * (v284 & 0xF)));
  v301 = 158 * (*(v24 + (v300 + 70942 - 969 * ((4432371 * (v300 + 70942)) >> 32))) ^ (16 * (*(v24 + (v292 - 969 * ((4432371 * v292) >> 32))) ^ 0x19)) ^ 0x19);
  v302 = v301 + 70942 - 969 * ((4432371 * (v301 + 70942)) >> 32);
  v303 = *(v24 + (v301 + 18644 - 969 * ((4432371 * (v301 + 18644)) >> 32)));
  v304 = 158 * ((((v303 >> 4) ^ 0x21) + ((v303 >> 3) & 0x12 ^ 0xFD) - 6) ^ *(v24 + (v300 + 18644 - 969 * (((v300 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v305 = 158 * (v284 & 0xF0 | (v296 >> 8) & 0xF);
  v306 = 158 * (*(v24 + (v305 + 70942 - 969 * ((4432371 * (v305 + 70942)) >> 32))) ^ (16 * (*(v24 + (v304 - 969 * ((4432371 * v304) >> 32))) ^ 0x19)) ^ 0x19);
  v307 = v306 + 70942 - 969 * ((4432371 * (v306 + 70942)) >> 32);
  v308 = *(v24 + (v306 + 18644 - 969 * ((4432371 * (v306 + 18644)) >> 32))) >> 4;
  v309 = ((v308 ^ 1) - 2 * ((v308 ^ 1) & 0xFB ^ v308 & 2) + 25) ^ *(v24 + (v305 + 18644 - 969 * (((v305 + 18644) & 0xFFFEu) / 0x3C9)));
  v310 = 158 * ((v299 >> 8) & 0xF0 | (v295 >> 12));
  v311 = 158 * (*(v24 + (v310 + 70942 - 969 * ((4432371 * (v310 + 70942)) >> 32))) ^ (16 * (*(v24 + ((v309 + 528) * (v309 + 528) - (v309 + 449) * (v309 + 449) - 6241) % 0x3C9u) ^ 0x19)) ^ 0x19);
  v312 = v311 + 70942 - 969 * ((4432371 * (v311 + 70942)) >> 32);
  v313 = *(v24 + (v311 + 18644 - 969 * ((4432371 * (v311 + 18644)) >> 32))) >> 4;
  v314 = 158 * (((v313 ^ 1) - 2 * ((v313 ^ 1) & 0xFD ^ v313 & 4) + 25) ^ *(v24 + (v310 + 18644 - 969 * (((v310 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v315 = 158 * ((v299 >> 12) & 0xF0 | HIWORD(v295) & 0xF);
  v316 = 158 * (*(v24 + (v315 + 70942 - 969 * ((4432371 * (v315 + 70942)) >> 32))) ^ (16 * (*(v24 + (v314 - 969 * ((4432371 * v314) >> 32))) ^ 0x19)) ^ 0x19);
  v317 = v316 + 70942 - 969 * ((4432371 * (v316 + 70942)) >> 32);
  v318 = *(v24 + (v316 + 18644 - 969 * ((4432371 * (v316 + 18644)) >> 32))) >> 4;
  v319 = 158 * (((v318 ^ 1) - 2 * ((v318 ^ 1) & 0xFD ^ v318 & 4) + 25) ^ *(v24 + (v315 + 18644 - 969 * (((v315 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v320 = 158 * ((v297 >> 8) & 0xF0 | (v293 >> 12));
  v321 = 158 * (*(v24 + (v320 + 70942 - 969 * ((4432371 * (v320 + 70942)) >> 32))) ^ (16 * (*(v24 + (v319 - 969 * ((4432371 * v319) >> 32))) ^ 0x19)) ^ 0x19);
  v322 = v321 + 70942 - 969 * ((4432371 * (v321 + 70942)) >> 32);
  v323 = *(v24 + (v321 + 18644 - 969 * ((4432371 * (v321 + 18644)) >> 32))) >> 4;
  v324 = (158 * (((v323 ^ 1) - 2 * ((v323 ^ 1) & 0xFB ^ v323 & 2) + 25) ^ *(v24 + (v320 + 18644 - 969 * (((v320 + 18644) & 0xFFFEu) / 0x3C9)))) + 69973) % 0x3C9;
  v325 = ((((v298 << 8) >> 24) & 0xF) << ((v324 & 4 ^ 4) + (v324 & 4))) ^ HIWORD(v293) & 0xF;
  LOBYTE(v317) = *(v24 + v317);
  v326 = 158 * (*(v24 + (158 * v325 + 70942) % 0x3C9u) ^ (16 * (*(v24 + v324) ^ 0x19)) ^ 0x19);
  v327 = v326 + 70942 - 969 * ((4432371 * (v326 + 70942)) >> 32);
  v328 = (*(v24 + (v326 + 18644 - 969 * ((4432371 * (v326 + 18644)) >> 32))) >> 4) ^ 1;
  v329 = 158 * ((v328 - ((2 * v328) & 0xF3) + 25) ^ *(v24 + 158 * (v325 + (v317 & 0x76 ^ 0x66) + (v317 & 0x76 ^ 0x10)) % 0x3C9)) + 70942;
  v330 = 158 * (BYTE2(v298) & 0xF0 | (v294 >> 20) & 0xF) + 70942;
  v331 = 158 * (*(v24 + (v330 - 969 * ((4432371 * v330) >> 32))) ^ (16 * (*(v24 + (v329 - 969 * ((4432371 * v329) >> 32))) ^ 0x19)) ^ 0x19) + 70942;
  v332 = v331 - 969 * ((4432371 * v331) >> 32);
  v333 = *(v24 + LODWORD(STACK[0x44C])) ^ 0x19;
  v334 = 158 * (STACK[0x46C] & 0xFFFFFF0F | (16 * (v333 & 0xF))) + 111706;
  v335 = *(v24 + v332);
  v336 = *(v24 + v302) ^ 0x19;
  v337 = 158 * (((v335 & 0x60) + (v335 & 0x60 ^ 0x60) - 81) & (v296 >> 4) ^ (v333 ^ (16 * v336)) & 0xF0) + 111706;
  LOBYTE(v332) = *(v24 + v307) ^ 0x19;
  v338 = 158 * ((v336 ^ (16 * v332)) & 0xF0 | (v296 >> 8) & 0xF) + 111706;
  v339 = *(v24 + v312) ^ 0x19;
  v340 = 158 * ((v332 ^ (16 * v339)) & 0xF0 | (v295 >> 12)) + 111706;
  LOBYTE(v317) = v317 ^ 0x19;
  v341 = 158 * ((v339 ^ (16 * v317)) & 0xF0 | HIWORD(v295) & 0xF) + 111706;
  v342 = *(v24 + v322) ^ 0x19;
  v343 = 158 * ((v317 ^ (16 * v342)) & 0xF0 | (v293 >> 12)) + 111706;
  LOBYTE(v327) = *(v24 + v327) ^ 0x19;
  v344 = 158 * ((v342 ^ (16 * v327)) & 0xF0 | HIWORD(v293) & 0xF) + 111706;
  v345 = 158 * ((v327 ^ (16 * (v335 ^ 0xF9))) & 0xF0 | (v294 >> 20) & 0xF) + 111706;
  v346 = *(v24 + (v334 - 969 * ((4432371 * v334) >> 32)));
  v347 = ((*(v24 + (v340 - 969 * ((4432371 * v340) >> 32))) ^ 0x19) << 12) ^ ((*(v24 + (v338 - 969 * ((4432371 * v338) >> 32))) ^ 0x19) << 8);
  v348 = ((*(v24 + (v343 - 969 * ((4432371 * v343) >> 32))) ^ 0x19) << 20) ^ ((*(v24 + (v341 - 969 * ((4432371 * v341) >> 32))) ^ 0x19) << 16);
  v349 = v346 ^ (16 * (*(v24 + (v337 - 969 * ((4432371 * v337) >> 32))) ^ 0x19)) ^ 0x19;
  LODWORD(STACK[0x3D8]) = v349;
  v350 = v24;
  v351 = v347 ^ v349;
  v352 = v348 ^ v351;
  v353 = v348 ^ v351 ^ ((*(v24 + (v344 - 969 * ((4432371 * v344) >> 32))) ^ 0x19) << 24);
  v354 = (v353 ^ ((*(v24 + (v345 - 969 * ((4432371 * v345) >> 32))) ^ 0xFFFFFFF9) << 28)) >> 28;
  v355 = 158 * (v346 & 0xF ^ 9) - 969 * ((683982 * (v346 & 0xF ^ 9u)) >> 22);
  STACK[0x430] = v355;
  v356 = ((LODWORD(STACK[0x588]) ^ 0x2538CBDB) - 508561055) ^ ((LODWORD(STACK[0x588]) ^ 0x6C70F698) - 1461205980) ^ ((LODWORD(STACK[0x588]) ^ 0xB36BE9DF) + 2013059941);
  v357 = (((((*(v24 + (158 * (HIBYTE(v353) & 0xF) - 969 * (((683982 * (HIBYTE(v353) & 0xF)) >> 16) >> 6))) ^ 0x19) << 8) ^ ((*(v24 + (158 * v354 - 969 * (((683982 * v354) >> 16) >> 6))) ^ 0x19) << 12) | *(v24 + (158 * (BYTE2(v352) & 0xF) - 969 * (((683982 * (HIWORD(v352) & 0xF)) >> 16) >> 6))) ^ 0x19) << 8) ^ ((*(v24 + (158 * ((v348 >> 20) & 0xF) - 969 * (((683982 * ((v348 >> 20) & 0xF)) >> 16) >> 6))) ^ 0x19) << 12) | *(v24 + (158 * ((v351 >> 8) & 0xF) - 969 * (((683982 * ((v351 >> 8) & 0xF)) >> 16) >> 6))) ^ 0x19) ^ (16 * (*(v24 + (158 * (v347 >> 12) - 969 * (((683982 * (v347 >> 12)) >> 16) >> 6))) ^ 0x19));
  LODWORD(STACK[0x428]) = v357;
  v358 = (LODWORD(STACK[0x4B4]) ^ 0xD3BEEABB) - 1814822466 + LODWORD(STACK[0x480]);
  v359 = v358 + v356 - LODWORD(STACK[0x490]) - (v357 & 0x21223C0 | ((v355 & 0x1D0 ^ 0x182459D0) + (v355 & 0x1D0)) | v357 & 0x2366BC0 ^ 0x82366BC0) + 1433477680;
  LODWORD(STACK[0x42C]) = v359;
  v358 += 1108365038;
  v360 = v358 + LODWORD(STACK[0x488]);
  v361 = v359 ^ v358;
  LODWORD(STACK[0x480]) = v361;
  v362 = v360 + LODWORD(STACK[0x560]) + v361;
  v363 = LODWORD(STACK[0x56C]) ^ 0xF095DD77 ^ v362;
  v364 = ((v363 + 749967392) ^ 0xD34C67E0) + LODWORD(STACK[0x47C]) + ((2 * (v363 + 749967392)) & 0xA698CFC0);
  LODWORD(STACK[0x490]) = v364;
  v365 = v364 ^ v363;
  LODWORD(STACK[0x3E0]) = v365;
  v366 = v365 + v362;
  v367 = v366 ^ v364;
  v368 = v366;
  LODWORD(STACK[0x498]) = v366;
  v369 = (v366 ^ v364) + LODWORD(STACK[0x400]);
  LODWORD(STACK[0x46C]) = v369;
  LOWORD(v365) = (158 * (v369 & 0xF) + 14694) % 0x3C9u;
  v370 = (LODWORD(STACK[0x550]) ^ 0xB08AF31B) - 733758580 + LODWORD(STACK[0x450]);
  v371 = (LODWORD(STACK[0x58C]) ^ 0xE34DEC8D) - LODWORD(STACK[0x45C]) + v370;
  LODWORD(STACK[0x3D4]) = v371;
  v370 += 1108365038;
  v372 = LODWORD(STACK[0x458]) + v370 + LODWORD(STACK[0x454]);
  v373 = v371 ^ v370;
  LODWORD(STACK[0x458]) = v373;
  v374 = v372 + v373;
  v375 = LODWORD(STACK[0x470]) ^ 0xF095DD77 ^ v374;
  v376 = v375 + LODWORD(STACK[0x460]);
  LODWORD(STACK[0x45C]) = v376;
  v377 = v376 ^ v375;
  LODWORD(STACK[0x4B4]) = v377;
  v378 = v377 + v374;
  v379 = v378 ^ v376;
  v380 = v378;
  LODWORD(STACK[0x454]) = v378;
  v381 = LODWORD(STACK[0x424]) + 691862941 - (v378 ^ v376);
  LODWORD(STACK[0x440]) = v381;
  v382 = *(v24 + v365) ^ 0x19;
  LODWORD(STACK[0x450]) = v382;
  v383 = *(v24 + (158 * (v381 & 0xF) + 14694) % 0x3C9u) ^ 0x19;
  LODWORD(STACK[0x488]) = v383;
  LODWORD(STACK[0x4A8]) = v382 & 0xF;
  v384 = 158 * (v382 & 0xF | (16 * (v383 & 0xF)));
  LODWORD(STACK[0x470]) = v384;
  LODWORD(STACK[0x47C]) = (v384 + 70942) % ((737 - v384) & 0x3C9 | (v384 + 70942) & 0x3C8u);
  LODWORD(STACK[0x550]) = v367 - v368;
  LODWORD(v355) = (v367 - v368) ^ 0x70D4EC2F;
  v385 = v355 + LODWORD(STACK[0x408]);
  LODWORD(STACK[0x438]) = v355;
  STACK[0x3C0] = 158 * (v385 >> 28) + 14694 - 969 * ((8657 * (158 * (v385 >> 28) + 14694)) >> 23);
  STACK[0x3C8] = 158 * ((v385 >> 20) & 0xF) + 14694 - 969 * ((8657 * (158 * ((v385 >> 20) & 0xF) + 14694)) >> 23);
  STACK[0x3B0] = 158 * (v385 >> 12) + 14694 - 969 * ((8657 * (158 * (v385 >> 12) + 14694)) >> 23);
  LODWORD(STACK[0x460]) = v385;
  LOWORD(v299) = (158 * ((v385 >> 8) & 0xF) + 14694) % 0x3C9u;
  LOWORD(v344) = (158 * (v385 >> 4) + 14694) % 0x3C9u;
  v386 = v379 - v380;
  LODWORD(STACK[0x43C]) = v386;
  LODWORD(STACK[0x44C]) = v386 ^ 0x70D4EC2F;
  v387 = LODWORD(STACK[0x3F4]) + 1157472793 - (v386 ^ 0x70D4EC2F);
  v388 = (HIBYTE(v387) & 0xD) + (v387 >> 28) + (HIBYTE(v387) & 0xD ^ 0x5D);
  LOWORD(v352) = 158 * v388 - 969 * (((1367806 * v388) >> 16) >> 7);
  v389 = (158 * (HIBYTE(v387) & 0xF) + 14694) % 0x3C9u;
  v390 = (158 * ((v387 >> 20) & 0xF) + 14694) % 0x3C9u;
  LOWORD(v257) = (158 * (BYTE2(v387) & 0xF) + 14694) % 0x3C9u;
  LOWORD(v293) = (158 * (v387 >> 12) + 14694) % 0x3C9u;
  LOWORD(v312) = (158 * ((v387 >> 8) & 0xF) + 14694) % 0x3C9u;
  LOWORD(v380) = (158 * (v387 >> 4) + 14694) % 0x3C9u;
  v391 = *(v24 + (158 * (v385 & 0xF) + 14694) % 0x3C9u) ^ 0x19;
  v392 = *(v24 + (158 * (v387 & 0xF) + 14694) % 0x3C9u) ^ 0x19;
  v393 = v391 & 0xF;
  v394 = 158 * (v393 | (16 * (v392 & 0xF)));
  v395 = *(v350 + (v394 + 70942 - 969 * ((4432371 * (v394 + 70942)) >> 32))) ^ 0x19;
  v396 = 158 * ((v395 + 205895469 - ((2 * v395) & 0x5A)) ^ LODWORD(STACK[0x57C]));
  LODWORD(STACK[0x3AC]) = v396;
  v397 = *(v350 + (v396 + 18644) % 0x3C9u);
  v398 = 158 * ((((v397 >> 4) ^ 1) + ((v397 >> 3) & 0x12 ^ 0xFD) + 26) ^ *(v350 + (v394 + 18644 - 969 * (((v394 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v399 = v398 - 969 * ((4432371 * v398) >> 32);
  v400 = ((*(v350 + (158 * (HIBYTE(v385) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v350 + STACK[0x3C0]) ^ 9) << 12);
  LOWORD(v365) = 16 * (*(v350 + STACK[0x3C8]) ^ 0x19);
  LOBYTE(v385) = *(v350 + (158 * (BYTE2(v385) & 0xF) + 14694) % 0x3C9u) ^ 0x19;
  v401 = v385 & 0x56 ^ v365 & 0x350 | v385 & 0xA9 ^ v365 & 0xCA0;
  LODWORD(STACK[0x3BC]) = v401;
  v402 = *(v350 + STACK[0x3B0]);
  v403 = v400 ^ v401;
  LODWORD(STACK[0x3C8]) = v403;
  v404 = (((*(v350 + v299) ^ 0x19) << 8) | (v403 << 16)) ^ ((v402 ^ 0x19) << 12);
  v405 = (((((*(v350 + v257) ^ 0x19) << 8) | ((*(v350 + v389) ^ 0x19 ^ (16 * ((*(v350 + v352) ^ 0x99) & 0x7F))) << 16)) ^ ((*(v350 + v390) ^ 0x19) << 12) | *(v350 + v312) ^ 0x19) << 8) ^ ((*(v350 + v293) ^ 0x19) << 12);
  v406 = STACK[0x550];
  v407 = (STACK[0x550] & 0x454EEF69 ^ 0x50A0340) + (v355 & 0x454EEF69);
  LOBYTE(v403) = *(v350 + v380) ^ ((v405 | v392) >> 4) ^ 0x19;
  v408 = (v404 | v391) ^ (16 * (*(v350 + v344) ^ 0x19));
  LODWORD(STACK[0x3C0]) = v408;
  v409 = (v408 >> 4) | (16 * (v403 & 0xF));
  LODWORD(v355) = 158 * (*(v350 + 158 * (v409 + ((v399 & 0x99 ^ 0x28A0C99) + (v399 & 0x99)) * v407) % 0x3C9) ^ (16 * (*(v350 + v399) ^ 0x19)) ^ 0x19);
  v410 = (*(v350 + (v355 + 18644) % 0x3C9u) >> 4) ^ 1;
  v411 = 158 * ((v410 - ((2 * v410) & 0xF3) + 25) ^ *(v350 + (158 * v409 + 18644 - 969 * (((158 * v409 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v412 = 158 * (v403 & 0xF0 | (v408 >> 8) & 0xF);
  v413 = 158 * (*(v350 + (v412 + 70942 - 969 * ((4432371 * (v412 + 70942)) >> 32))) ^ (16 * (*(v350 + (v411 - 969 * ((4432371 * v411) >> 32))) ^ 0x19)) ^ 0x19);
  v414 = *(v350 + (v413 + 18644 - 969 * ((4432371 * (v413 + 18644)) >> 32))) >> 4;
  v415 = 158 * (((v414 ^ 1) - 2 * ((v414 ^ 1) & 0xFB ^ v414 & 2) + 25) ^ *(v350 + (v412 + 18644 - 969 * (((v412 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v416 = 158 * ((v405 >> 8) & 0xF0 | (v404 >> 12));
  v417 = *(v350 + (v416 + 70942 - 969 * ((4432371 * (v416 + 70942)) >> 32))) ^ (16 * (*(v350 + (v415 - 969 * ((4432371 * v415) >> 32))) ^ 0x19)) ^ 0x19;
  v418 = v406 ^ LODWORD(STACK[0x3E0]);
  LODWORD(STACK[0x3E0]) = v418;
  LODWORD(STACK[0x3B0]) = ((((v417 - 63) & 0x9E) + ((62 - v417) & 0x9E)) & 0xFEu) * (v417 + 449) % (((273 - v418) & 0x3C9) + ((v418 + 750) & 0x3C9u));
  v419 = ((((9 - LODWORD(STACK[0x4D0])) & 0x1E) + ((LODWORD(STACK[0x4D0]) + 118) & 0x1E)) | 0x9C) * (LODWORD(STACK[0x4D0]) + 118);
  v420 = (*(v350 + (v419 - 969 * ((4432371 * v419) >> 32))) >> 4) ^ 1;
  v421 = 158 * ((v420 - ((2 * v420) & 0xF3) + 25) ^ *(v350 + (LODWORD(STACK[0x4DC]) + 18644 - 969 * (((LODWORD(STACK[0x4DC]) + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v422 = (LODWORD(STACK[0x4F8]) >> 8) & 0xF0 | (LODWORD(STACK[0x500]) >> 12);
  LOWORD(v406) = 158 * v422 + 18644 - 969 * (((158 * v422 + 18644) & 0xFFFEu) / 0x3C9);
  v423 = 158 * (*(v350 + ((v422 + 528) * (v422 + 528) - (v422 + 449) * (v422 + 449) - 6241) % 0x3C9u) ^ (16 * (*(v350 + (v421 - 969 * ((4432371 * v421) >> 32))) ^ 0x19)) ^ 0x19);
  v424 = v423 + 70942 - 969 * ((4432371 * (v423 + 70942)) >> 32);
  v425 = *(v350 + (v423 + 18644 - 969 * ((4432371 * (v423 + 18644)) >> 32))) >> 4;
  v426 = 158 * (((v425 ^ 1) - 2 * ((v425 ^ 1) & 0xFB ^ v425 & 2) + 25) ^ *(v350 + v406)) + 70942;
  v427 = 158 * ((LODWORD(STACK[0x4F8]) >> 12) & 0xF0 | HIWORD(LODWORD(STACK[0x500])) & 0xF);
  LOWORD(v406) = v427 + 18644 - 969 * (((v427 + 18644) & 0xFFFEu) / 0x3C9);
  v428 = 158 * (*(v350 + (v427 + 70942 - 969 * ((4432371 * (v427 + 70942)) >> 32))) ^ (16 * (*(v350 + (v426 - 969 * ((4432371 * v426) >> 32))) ^ 0x19)) ^ 0x19);
  v429 = v428 + 70942 - 969 * ((4432371 * (v428 + 70942)) >> 32);
  v430 = (*(v350 + (v428 + 18644 - 969 * ((4432371 * (v428 + 18644)) >> 32))) >> 4) ^ 1;
  v431 = 158 * ((v430 - ((2 * v430) & 0xF3) + 25) ^ *(v350 + v406)) + 70942;
  v432 = 158 * ((LODWORD(STACK[0x504]) >> 8) & 0xF0 | (LODWORD(STACK[0x518]) >> 4));
  v433 = 158 * (*(v350 + (v432 + 70942 - 969 * ((4432371 * (v432 + 70942)) >> 32))) ^ (16 * (*(v350 + (v431 - 969 * ((4432371 * v431) >> 32))) ^ 0x19)) ^ 0x19);
  v434 = v433 + 70942 - 969 * ((4432371 * (v433 + 70942)) >> 32);
  v435 = *(v350 + (v433 + 18644 - 969 * ((4432371 * (v433 + 18644)) >> 32))) >> 4;
  v436 = 158 * (((v435 ^ 1) - 2 * ((v435 ^ 1) & 0xFB ^ v435 & 2) + 25) ^ *(v350 + (v432 + 18644 - 969 * (((v432 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v437 = 158 * ((LODWORD(STACK[0x504]) >> 12) & 0xF0 | (LODWORD(STACK[0x590]) >> 8) & 0xF);
  v438 = 158 * (*(v350 + (v437 + 70942 - 969 * ((4432371 * (v437 + 70942)) >> 32))) ^ (16 * (*(v350 + (v436 - 969 * ((4432371 * v436) >> 32))) ^ 0x19)) ^ 0x19);
  v439 = v438 + 70942 - 969 * ((4432371 * (v438 + 70942)) >> 32);
  v440 = *(v350 + (v438 + 18644 - 969 * ((4432371 * (v438 + 18644)) >> 32)));
  v441 = 158 * ((((v440 >> 4) ^ 1) + ((v440 >> 3) & 0x12 ^ 0xFD) + 26) ^ *(v350 + (v437 + 17675) % 0x3C9u)) + 70942;
  v442 = 158 * ((LODWORD(STACK[0x528]) >> 8) & 0xF0 | (LODWORD(STACK[0x518]) >> 12)) + 70942;
  v443 = 158 * (*(v350 + (v442 - 969 * ((4432371 * v442) >> 32))) ^ (16 * (*(v350 + (v441 - 969 * ((4432371 * v441) >> 32))) ^ 0x19)) ^ 0x19) + 70942;
  v444 = v443 - 969 * ((4432371 * v443) >> 32);
  LOBYTE(v443) = LODWORD(STACK[0x508]) ^ 0x19;
  v445 = 158 * (STACK[0x510] & 0xFFFFFF0F | (16 * (v443 & 0xF))) + 111706;
  v446 = 158 * ((LODWORD(STACK[0x4C8]) ^ v443) & 0xF0 | (LODWORD(STACK[0x4B8]) >> 4)) + 111706;
  v447 = (LODWORD(STACK[0x4C4]) ^ ((*(v350 + v424) ^ 0x19) << 12) ^ ((*(v350 + v429) ^ 0x19) << 16) ^ ((*(v350 + v434) ^ 0x19) << 20) ^ ((*(v350 + v439) ^ 0x19) << 24) ^ ((*(v350 + v444) ^ 0xFFFFFFF9) << 28)) >> 8 >> (((STACK[0x4C0] & 4 ^ 4) + (STACK[0x4C0] & 4)) | 4);
  v448 = 158 * ((LODWORD(STACK[0x500]) >> 12) & 0xFFFFFF0F | (16 * (v447 & 0xF))) + 111706;
  v449 = v447 & 0xF0 | HIWORD(LODWORD(STACK[0x500])) & 0xF;
  v450 = 158 * (((2 * v449) & 0xFFFFFF87) + (v449 ^ 0x2C3));
  v451 = (v447 >> 4) & 0xF0 | (LODWORD(STACK[0x518]) >> 4);
  v452 = 158 * ((v447 >> 8) & 0xF0 | (LODWORD(STACK[0x590]) >> 8) & 0xF) + 111706;
  v453 = ((*(v350 + (v448 - 969 * ((4432371 * v448) >> 32))) ^ 0x19) << 12) ^ ((*(v350 + LODWORD(STACK[0x4C0])) ^ 0x19) << 8);
  v454 = *(v350 + (v445 - 969 * ((4432371 * v445) >> 32)));
  v455 = ((*(v350 + ((v451 + 786) * (v451 + 786) - (v451 + 707) * (v451 + 707) - 6241) % 0x3C9u) ^ 0x19) << 20) ^ ((*(v350 + (v450 - 969 * ((4432371 * v450) >> 32))) ^ 0x19) << 16);
  v456 = v454 ^ (16 * (*(v350 + (v446 - 969 * ((4432371 * v446) >> 32))) ^ 0x19)) ^ 0x19;
  v457 = v453 ^ v456;
  v458 = ((*(v350 + 158 * (((v447 >> 12) & 0xF0 | (LODWORD(STACK[0x518]) >> 12)) + 707) % 0x3C9) ^ 0xFFFFFFF9) << 28) ^ ((*(v350 + (v452 - 969 * ((4432371 * v452) >> 32))) ^ 0x19) << 24) ^ v455 ^ v453 ^ v456;
  STACK[0x510] = 158 * (HIBYTE(v458) & 0xF) - 969 * ((683982 * (HIBYTE(v458) & 0xF)) >> 22);
  STACK[0x518] = 158 * ((v455 >> 20) & 0xF) - 969 * ((683982 * ((v455 >> 20) & 0xF)) >> 22);
  STACK[0x508] = 158 * (((v455 ^ v453 ^ v456) >> 16) & 0xF) - 969 * ((683982 * (((v455 ^ v453 ^ v456) >> 16) & 0xF)) >> 22);
  STACK[0x528] = 158 * (v453 >> 12) - 969 * ((683982 * (v453 >> 12)) >> 22);
  STACK[0x590] = 158 * (v456 >> 4) - 969 * ((683982 * (v456 >> 4)) >> 22);
  v459 = 158 * (v454 & 0xF ^ 9) - 969 * ((683982 * (v454 & 0xF ^ 9u)) >> 22);
  v460 = v413 + 70942 - 969 * ((4432371 * (v413 + 70942)) >> 32);
  v461 = *(v350 + (158 * v417 + 18644 - 969 * ((4432371 * (158 * v417 + 18644)) >> 32))) >> 4;
  v462 = 158 * (((v461 ^ 1) - 2 * ((v461 ^ 1) & 0xFD ^ v461 & 4) + 25) ^ *(v350 + (v416 + 18644 - 969 * (((v416 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v463 = 158 * ((v405 >> 12) & 0xF0 | HIWORD(v404) & 0xF);
  v464 = *(v350 + (v463 + 70942 - 969 * ((4432371 * (v463 + 70942)) >> 32))) ^ (16 * (*(v350 + (v462 - 969 * ((4432371 * v462) >> 32))) ^ 0x19)) ^ 0x19;
  v465 = 158 * v464 + 70942 - 969 * ((4432371 * (158 * v464 + 70942)) >> 32);
  v466 = *(v350 + (158 * v464 + 18644 - 969 * ((4432371 * (158 * v464 + 18644)) >> 32))) >> 4;
  v467 = 158 * (((v466 ^ 1) + ~(2 * ((v466 ^ 1) & 0xFD ^ v466 & 4)) + 26) ^ *(v350 + (v463 + 18644 - 969 * (((v463 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v468 = v467 - 969 * ((4432371 * v467) >> 32);
  v469 = HIWORD(v405) >> ((((v468 & 0x54 ^ 0x54) + (v468 & 0x54)) | ((v464 & 0x51 ^ 0x51) + (v464 & 0x51))) ^ 0x51);
  v470 = 158 * ((LODWORD(STACK[0x3BC]) >> 4) & 0xF | (16 * (v469 & 0xF)));
  v471 = 158 * (*(v350 + (v470 + 70942 - 969 * ((4432371 * (v470 + 70942)) >> 32))) ^ (16 * (*(v350 + v468) ^ 0x19)) ^ 0x19);
  v472 = v471 + 70942 - 969 * ((4432371 * (v471 + 70942)) >> 32);
  v473 = *(v350 + (v471 + 18644 - 969 * ((4432371 * (v471 + 18644)) >> 32))) >> 4;
  v474 = 158 * (((v473 ^ 1) - 2 * ((v473 ^ 1) & 0xFB ^ v473 & 2) + 25) ^ *(v350 + (v470 + 18644 - 969 * (((v470 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v475 = 158 * (v469 & 0xF0 | (LODWORD(STACK[0x3C8]) >> 8) & 0xF);
  v476 = v475 + 18644 - 969 * ((8657 * ((v475 + 18644) & 0xFFFEu)) >> 23);
  v477 = 158 * (*(v350 + (v475 + 70942 - 969 * ((4432371 * (v475 + 70942)) >> 32))) ^ (16 * (*(v350 + (v474 - 969 * ((4432371 * v474) >> 32))) ^ 0x19)) ^ 0x19);
  v478 = v477 + 70942 - 969 * ((4432371 * (v477 + 70942)) >> 32);
  v479 = *(v350 + (v477 + 18644 - 969 * ((4432371 * (v477 + 18644)) >> 32))) >> 4;
  v480 = 158 * (((v479 ^ 1) - 2 * ((v479 ^ 1) & 0xFD ^ v479 & 4) + 25) ^ *(v350 + v476)) + 70942;
  v481 = 158 * (*(v350 + (158 * ((v469 >> 4) & 0xF0 | (LODWORD(STACK[0x3C8]) >> 12)) + 70942) % 0x3C9) ^ (16 * (*(v350 + (v480 - 969 * ((4432371 * v480) >> 32))) ^ 0x19)) ^ 0x19) + 70942;
  LOBYTE(v469) = *(v350 + (LODWORD(STACK[0x3AC]) + 70942) % 0x3C9u) ^ 0x19;
  v482 = 158 * (v393 & 0xFFFFFF0F | (16 * (v469 & 0xF))) + 111706;
  v483 = v482 - 969 * ((4432371 * v482) >> 32);
  LOBYTE(v393) = *(v350 + (v355 + 70942 - 969 * ((4432371 * (v355 + 70942)) >> 32))) ^ 0x19;
  LODWORD(v355) = 158 * ((v469 ^ (16 * v393)) & 0xF0 | (LODWORD(STACK[0x3C0]) >> 4)) + 111706;
  v484 = v355 - 969 * ((4432371 * v355) >> 32);
  LOBYTE(v469) = *(v350 + v460) ^ 0x19;
  v485 = 158 * ((v393 ^ (16 * v469)) & 0xF0 | (LODWORD(STACK[0x3C0]) >> 8) & 0xF) + 111706;
  v486 = v485 - 969 * ((4432371 * v485) >> 32);
  LOBYTE(v393) = *(v350 + LODWORD(STACK[0x3B0])) ^ 0x19;
  v487 = 158 * ((v469 ^ (16 * v393)) & 0xF0 | (v404 >> 12)) + 111706;
  v488 = v487 - 969 * ((4432371 * v487) >> 32);
  v489 = *(v350 + v465) ^ 0x19;
  v490 = 158 * ((v393 ^ (16 * v489)) & 0xF0 | HIWORD(v404) & 0xF) + 111706;
  v491 = v490 - 969 * ((4432371 * v490) >> 32);
  LOBYTE(v393) = *(v350 + v472) ^ 0x19;
  v492 = 158 * ((v489 ^ (16 * v393)) & 0xF0 | (LODWORD(STACK[0x3BC]) >> 4)) + 111706;
  v493 = v492 - 969 * ((4432371 * v492) >> 32);
  v494 = 158 * ((v393 ^ (16 * (*(v350 + v478) ^ 0x19))) & 0xF0 | (LODWORD(STACK[0x3C8]) >> 8) & 0xF) + 111706;
  v495 = v494 - 969 * ((4432371 * v494) >> 32);
  v496 = 158 * ((*(v350 + v478) ^ 0x19 ^ (16 * (*(v350 + (v481 - 969 * ((4432371 * v481) >> 32))) ^ 0xF9))) & 0xF0 | (LODWORD(STACK[0x3C8]) >> 12)) + 111706;
  v497 = v496 - 969 * ((4432371 * v496) >> 32);
  v498 = (v457 >> 8) & 0xF;
  v499 = v498 >= 0xD;
  v500 = 158 * v498;
  if (v499)
  {
    v500 -= 1938;
  }

  if (v500 >= 0x3C9)
  {
    v500 -= 969;
  }

  v501 = LODWORD(STACK[0x3D4]) ^ (16 * (*(v350 + STACK[0x590]) ^ 0x19)) ^ (((((((*(v350 + STACK[0x510]) ^ 0x19) << 8) ^ ((*(v350 + (158 * (v458 >> 28) - 969 * (((683982 * (v458 >> 28)) >> 16) >> 6))) ^ 0x19) << 12) | *(v350 + STACK[0x508]) ^ 0x19) << 8) ^ ((*(v350 + STACK[0x518]) ^ 0x19) << 12) | *(v350 + v500) ^ 0x19) << 8) ^ ((*(v350 + STACK[0x528]) ^ 0x19) << 12) | *(v350 + v459) ^ 0x19);
  LODWORD(STACK[0x590]) = v501;
  v502 = ((*(v350 + v497) ^ 0xFFFFFFF9) << 28) ^ ((*(v350 + v495) ^ 0x19) << 24);
  v503 = (v501 & 0x3C9 ^ 0x3C9) + (v501 & 0x3C9);
  v504 = *(v350 + v483);
  LODWORD(STACK[0x518]) = v504;
  v505 = *(v350 + v486);
  v506 = v504 ^ (16 * (*(v350 + v484) ^ 0x19)) ^ 0x19;
  LODWORD(STACK[0x510]) = v506;
  v507 = v505 ^ 0x19;
  v508 = *(v350 + v488) ^ 0x19;
  v509 = v506 ^ (v507 << 8);
  LODWORD(STACK[0x508]) = v509;
  v510 = *(v350 + v491);
  v511 = v509 ^ (v508 << 12);
  LODWORD(STACK[0x500]) = v511;
  v512 = *(v350 + v493) ^ 0x19;
  v513 = v511 ^ ((v510 ^ 0x19) << 16);
  LODWORD(STACK[0x4F8]) = v513;
  v514 = v513 ^ (v512 << 20);
  LODWORD(STACK[0x4DC]) = v514;
  v515 = v502 ^ v514;
  LODWORD(STACK[0x4D0]) = v515;
  LODWORD(STACK[0x504]) = 158 * (HIBYTE(v515) & 0xF) % v503;
  LODWORD(STACK[0x538]) = (158 * ((((LODWORD(STACK[0x538]) >> 12) ^ 0x6357BE2A) + 438334330) ^ (((LODWORD(STACK[0x538]) >> 12) ^ 0x7AA2A8B9) + 64316907) ^ (((LODWORD(STACK[0x538]) >> 12) ^ 0x19F51696u) + 1619188678)) + 135218254) % 0x3C9;
  LODWORD(STACK[0x528]) = (158 * ((((LODWORD(STACK[0x53C]) >> 8) & 0xF ^ 0x71D4E861) + 260011635) ^ (((LODWORD(STACK[0x53C]) >> 8) & 0xF) + 11263892) ^ (((LODWORD(STACK[0x53C]) >> 8) & 0xF ^ 0x247D42A6) + 1524030646)) - 770412790) % 0x3C9;
  LODWORD(STACK[0x540]) = (158 * ((((LODWORD(STACK[0x540]) >> 4) ^ 0x28242CC3) + 1567937114) ^ ((LODWORD(STACK[0x540]) >> 4) - 2053439141) ^ (((LODWORD(STACK[0x540]) >> 4) ^ 0x24012F2Bu) + 1364316594)) - 1744641722) % 0x3C9;
  LODWORD(STACK[0x4C0]) = (158 * (((STACK[0x548] & 0xF ^ 0x59E4A0DD) + 639328152) ^ ((STACK[0x548] & 0xF ^ 0x5549EFDC) + 716574871) ^ ((STACK[0x548] & 0xF ^ 0xCAD4F08u) - 212684733)) + 29704) % 0x3C9;
  STACK[0x4C8] = 158 * (LODWORD(STACK[0x3D8]) >> 4) - 969 * ((683982 * (LODWORD(STACK[0x3D8]) >> 4)) >> 22);
  v516 = LODWORD(STACK[0x3FC]) + 184116032 + LODWORD(STACK[0x55C]);
  LODWORD(STACK[0x53C]) = v516;
  STACK[0x4B8] = 158 * (v516 >> 12) + 14694 - 969 * ((8657 * (158 * (v516 >> 12) + 14694)) >> 23);
  v517 = LODWORD(STACK[0x418]) - LODWORD(STACK[0x580]);
  STACK[0x3D8] = 158 * (v517 >> 12) + 14694 - 969 * ((8657 * (158 * (v517 >> 12) + 14694)) >> 23);
  v518 = *(v350 + (158 * (v516 & 0xF) + 14694) % 0x3C9u);
  v519 = (HIWORD(v517) & 0xE ^ 0x9E) + (HIWORD(v517) & 0xE);
  v520 = *(v350 + (158 * (v517 & 0xF) + 14694) % 0x3C9u) ^ 0x19;
  LODWORD(STACK[0x4C4]) = (v518 ^ 0x19) & 0xF;
  v521 = (v518 ^ 0x19) & 0xF | (16 * (v520 & 0xF));
  v522 = ((((*(v350 + (158 * (HIBYTE(v516) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v350 + (158 * (v516 >> 28) + 14694) % 0x3C9u) ^ 0x19) << 12) | *(v350 + (158 * (BYTE2(v516) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v350 + (158 * ((v516 >> 20) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 12);
  v523 = *(v350 + ((v521 + 449) * v519 - 969 * ((4432371 * ((v521 + 449) * v519)) >> 32))) ^ 0x19;
  v524 = 158 * ((v523 + 205895469 - ((2 * v523) & 0x5A)) ^ LODWORD(STACK[0x57C]));
  LODWORD(STACK[0x548]) = (v524 + 70942) % 0x3C9u;
  v525 = (*(v350 + (v524 + 18644) % 0x3C9u) >> 4) ^ 1;
  v526 = 158 * ((v525 - ((2 * v525) & 0xF3) + 25) ^ *(v350 + (158 * v521 + 18644 - 969 * (((158 * v521 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v527 = v522 | *(v350 + (158 * ((v516 >> 8) & 0xF) + 14694) % 0x3C9u) ^ 0x19;
  v528 = (v527 << 8) ^ ((*(v350 + STACK[0x4B8]) ^ 0x19) << 12);
  v529 = ((*(v350 + (158 * (HIBYTE(v517) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v350 + (158 * (v517 >> 28) + 14694) % 0x3C9u) ^ 0x19) << 12);
  v530 = ((v529 | *(v350 + (158 * (BYTE2(v517) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v350 + (158 * ((v517 >> 20) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 12) | *(v350 + (158 * ((v517 >> 8) & 0xF) + 14694) % 0x3C9u) ^ 0x19;
  v531 = (v530 << 8) ^ ((*(v350 + STACK[0x3D8]) ^ 0x19) << 12);
  v532 = *(v350 + (158 * (v516 >> 4) + 14694) % 0x3C9u) ^ ((v528 | v518 ^ 0x19) >> 4) ^ 0x19;
  LOBYTE(v515) = *(v350 + (158 * (v517 >> 4) + 14694) % 0x3C9u) ^ ((v531 | v520) >> 4) ^ 0x19;
  v533 = 158 * (v532 & 0xF | (16 * (v515 & 0xF)));
  v534 = *(v350 + (v533 + 70942 - 969 * ((4432371 * (v533 + 70942)) >> 32))) ^ (16 * (*(v350 + (v526 - 969 * ((4432371 * v526) >> 32))) ^ 0x19)) ^ 0x19;
  v535 = (v534 + 449) * (((v518 & 0x9E ^ 0x86) + (v518 & 0x9E ^ 0x18)) & 0xFE);
  v536 = *(v350 + (158 * v534 + 18644 - 969 * ((4432371 * (158 * v534 + 18644)) >> 32)));
  v537 = v535 - 969 * ((4432371 * v535) >> 32);
  v538 = 158 * ((((v536 >> 4) ^ 1) + ((v536 >> 3) & 0x12 ^ 0xFD) + 26) ^ *(v350 + (v533 + 18644 - 969 * (((v533 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v539 = 158 * (v515 & 0xF0 | (v532 >> 4));
  LOWORD(v536) = v539 + 18644 - 969 * (((v539 + 18644) & 0xFFFEu) / 0x3C9);
  v540 = 158 * (*(v350 + (v539 + 70942 - 969 * ((4432371 * (v539 + 70942)) >> 32))) ^ (16 * (*(v350 + (v538 - 969 * ((4432371 * v538) >> 32))) ^ 0x19)) ^ 0x19);
  v541 = v540 + 70942 - 969 * ((4432371 * (v540 + 70942)) >> 32);
  v542 = *(v350 + (v540 + 18644 - 969 * ((4432371 * (v540 + 18644)) >> 32))) >> 4;
  v543 = ((v542 ^ 1) - 2 * ((v542 ^ 1) & 0xFB ^ v542 & 2) + 25) ^ *(v350 + v536);
  v544 = 158 * ((v531 >> 8) & 0xF0 | (v528 >> 12));
  v545 = 158 * (*(v350 + (v544 + 70942 - 969 * ((4432371 * (v544 + 70942)) >> 32))) ^ (16 * (*(v350 + (158 * v543 + 70942 - 969 * ((4432371 * (158 * v543 + 70942)) >> 32))) ^ 0x19)) ^ 0x19);
  v546 = v545 + 70942 - 969 * ((4432371 * (v545 + 70942)) >> 32);
  v547 = *(v350 + LODWORD(STACK[0x528]));
  v548 = *(v350 + LODWORD(STACK[0x4C0]));
  v549 = ((*(v350 + LODWORD(STACK[0x538])) << 12) ^ (((LODWORD(STACK[0x534]) ^ 0x9E31E2) & (v547 ^ LODWORD(STACK[0x570])) | v547 & 0x1D) << 8) ^ 0x72351025) & (v548 ^ 0xFFFFFFA4) | v548 & 0xDA;
  LODWORD(STACK[0x584]) ^= (a4 - 1532628930) ^ (((a4 - 1532628930) ^ 0xC755EEEA) + 1158859018) ^ (((a4 - 1532628930) ^ 0x9A8FF1F0) + 415815188) ^ (((a4 - 1532628930) ^ 0xFF1D38F1) + 2103058195) ^ (((a4 - 1532628930) ^ 0xDF7FFFF7) + 1564006421) ^ 0xE269840D;
  LODWORD(STACK[0x538]) = v11 ^ (16 * *(v350 + LODWORD(STACK[0x540]))) ^ 0x3F8D9FDD ^ v549;
  LODWORD(STACK[0x528]) = LODWORD(STACK[0x4A0]) ^ 0xB61000D5 ^ LODWORD(STACK[0x588]);
  v550 = *(v350 + STACK[0x430]) ^ 0x19;
  v551 = (v550 | (LODWORD(STACK[0x428]) << 8)) ^ (16 * (*(v350 + STACK[0x4C8]) ^ 0x19));
  LODWORD(STACK[0x588]) = LODWORD(STACK[0x58C]) ^ 0x91033DFD ^ (v551 + 1917768048 - 2 * (v551 & 0x724ED176 ^ v550 & 6));
  LODWORD(STACK[0x58C]) = LODWORD(STACK[0x42C]) ^ LODWORD(STACK[0x524]);
  v552 = *(v350 + (v545 + 18644 - 969 * ((4432371 * (v545 + 18644)) >> 32)));
  v553 = 158 * ((((v552 >> 4) ^ 1) + ((v552 >> 3) & 0x12 ^ 0xFD) + 26) ^ *(v350 + (v544 + 18644 - 969 * (((v544 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v554 = 158 * ((v531 >> 12) & 0xF0 | HIWORD(v528) & 0xF);
  v555 = *(v350 + (v554 + 70942 - 969 * ((4432371 * (v554 + 70942)) >> 32))) ^ (16 * (*(v350 + (v553 - 969 * ((4432371 * v553) >> 32))) ^ 0x19));
  v556 = ((*(v350 + v546) ^ 0x19) << 12) ^ ((*(v350 + v541) ^ 0x19) << 8);
  v557 = 158 * (((2 * (v555 ^ 0x19)) & 0x83838383) + (v555 ^ 0x1D8));
  v558 = *(v350 + (158 * (v555 ^ 0x19) + 18644 - 969 * ((4432371 * (158 * (v555 ^ 0x19u) + 18644)) >> 32))) >> 4;
  v559 = 158 * (((v558 ^ 1) - 2 * ((v558 ^ 1) & 0xFB ^ v558 & 2) + 25) ^ *(v350 + (v554 + 18644 - 969 * (((v554 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v560 = v559 - 969 * ((4432371 * v559) >> 32);
  v561 = (v530 >> 12) & 0xFFF;
  v562 = (v527 << 8 >> 20) & 0xF | (16 * (((v560 & 0xF ^ 0xF) + (v560 & 0xF)) & v561));
  LOBYTE(v560) = *(v350 + v560);
  LOBYTE(v530) = v560 ^ 0x18 | v560 ^ 0x87;
  v563 = *(v350 + 158 * v562 + 70942 - 969 * (((35458967 * (158 * v562 + 70942)) >> 32) >> 3)) ^ (16 * (v560 ^ 0x19));
  v564 = (v562 + 118) * (v530 & 0x9E) - 969 * (((35458967 * ((v562 + 118) * (v530 & 0x9E))) >> 32) >> 3);
  v565 = 158 * (v563 ^ 0x19);
  v566 = v565 + 70942 - 969 * ((4432371 * (v565 + 70942)) >> 32);
  v567 = (*(v350 + (v565 + 18644 - 969 * ((4432371 * (v565 + 18644)) >> 32))) >> 4) ^ 1;
  v568 = 158 * ((v567 - ((2 * v567) & 0xF3) + 25) ^ *(v350 + v564)) + 70942;
  v569 = v561 & 0xF0 | (v527 << 8 >> 24) & 0xF;
  v570 = 158 * (*(v350 + (((v569 - 63) | (14 - (v527 << 8 >> 24))) & 0xE | 0x90u) * (v569 + 449) % 0x3C9) ^ (16 * (*(v350 + (v568 - 969 * ((4432371 * v568) >> 32))) ^ 0x19)) ^ 0x19);
  v571 = v570 + 70942 - 969 * ((4432371 * (v570 + 70942)) >> 32);
  v572 = *(v350 + (v570 + 18644 - 969 * ((4432371 * (v570 + 18644)) >> 32)));
  v573 = 158 * ((((v572 >> 4) ^ 1) + ((v572 >> 3) & 0x12 ^ 0xFD) + 26) ^ *(v350 + (158 * v569 + 18644 - 969 * (((158 * v569 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  v574 = 158 * ((v529 >> 8) & 0xF0 | (v527 >> 20) & 0xF) + 70942;
  v575 = 158 * (*(v350 + (v574 - 969 * ((4432371 * v574) >> 32))) ^ (16 * (*(v350 + (v573 - 969 * ((4432371 * v573) >> 32))) ^ 0x19)) ^ 0x19) + 70942;
  v576 = v575 - 969 * ((4432371 * v575) >> 32);
  v577 = *(v350 + LODWORD(STACK[0x548])) ^ 0x19;
  v578 = v577 ^ (16 * (*(v350 + v537) ^ 0x19));
  v579 = 158 * (STACK[0x4C4] & 0xFFFFFF0F | (16 * (v577 & 0xF))) + 111706;
  v580 = 158 * (v578 & 0xF0 | v532 & 0xF) + 111706;
  v581 = v556 ^ v578;
  v582 = v581 ^ ((*(v350 + v557 % 0x3C9) ^ 0x19) << 16);
  v583 = 158 * ((v581 >> 4) & 0xF0 | (v532 >> 4)) + 111706;
  v584 = ((*(v350 + (v583 - 969 * ((4432371 * v583) >> 32))) ^ 0x19) << 8) ^ (16 * (*(v350 + (v580 - 969 * ((4432371 * v580) >> 32))) ^ 0x19));
  v585 = 158 * ((v556 >> 8) & 0xF0 | (v528 >> 12)) + 111706;
  v586 = v585 - 969 * ((4432371 * v585) >> 32);
  v587 = *(v350 + (v579 - 969 * ((4432371 * v579) >> 32)));
  v588 = v582 ^ ((*(v350 + v566) ^ 0x19) << 20);
  v589 = v588 ^ ((*(v350 + v571) ^ 0x19) << 24);
  v590 = 158 * ((v582 >> 12) & 0xF0 | HIWORD(v528) & 0xF) + 111706;
  v591 = 158 * (HIWORD(v588) & 0xF0 | (v527 << 8 >> 20) & 0xF) + 111706;
  v592 = v591 - 969 * ((4432371 * v591) >> 32);
  v593 = ((*(v350 + v592) ^ 0x19) << 20) ^ ((*(v350 + (v590 - 969 * ((4432371 * v590) >> 32))) ^ 0x19) << 16);
  v594 = ((v527 >> 12) & 0xFFF) >> ((v592 & 4 ^ 4) + (v592 & 4));
  v595 = 158 * (v594 & 0xF | (16 * (HIBYTE(v589) & 0xF))) + 111706;
  v596 = 158 * (((v589 ^ ((*(v350 + v576) ^ 0xFFFFFFF9) << 28)) >> 24) & 0xF0 | (v594 >> 4)) + 111706;
  v597 = (v587 ^ 0x19 | ((*(v350 + v586) ^ 0x19) << 12)) ^ v584;
  v598 = ((*(v350 + (v596 - 969 * ((4432371 * v596) >> 32))) ^ 0xFFFFFFF9) << 28) ^ ((*(v350 + (v595 - 969 * ((4432371 * v595) >> 32))) ^ 0x19) << 24) ^ v593 ^ v597;
  v599 = ((((*(v350 + (158 * (HIBYTE(v598) & 0xF) - 969 * (((683982 * (HIBYTE(v598) & 0xF)) >> 16) >> 6))) ^ 0x19) << 8) ^ ((*(v350 + (158 * (v598 >> 28) - 969 * (((683982 * (v598 >> 28)) >> 16) >> 6))) ^ 0x19) << 12) | *(v350 + (158 * (((v593 ^ v597) >> 16) & 0xF) - 969 * (((683982 * (((v593 ^ v597) >> 16) & 0xF)) >> 16) >> 6))) ^ 0x19) << 8) ^ ((*(v350 + (158 * ((v593 >> 20) & 0xF) - 969 * (((683982 * ((v593 >> 20) & 0xF)) >> 16) >> 6))) ^ 0x19) << 12);
  STACK[0x540] = 158 * (v597 >> 4) - 969 * ((683982 * (v597 >> 4)) >> 22);
  LODWORD(STACK[0x548]) = ((v599 | *(v350 + (158 * ((v584 >> 8) & 0xF) - 969 * (((683982 * ((v584 >> 8) & 0xF)) >> 16) >> 6))) ^ 0x19) << 8) ^ ((*(v350 + (158 * (v597 >> 12) - 969 * (((683982 * (v597 >> 12)) >> 16) >> 6))) ^ 0x19) << 12) | *(v350 + (158 * (v587 & 0xF ^ 9) - 969 * (((683982 * (v587 & 0xF ^ 9u)) >> 16) >> 6))) ^ 0x19;
  LODWORD(STACK[0x570]) = LODWORD(STACK[0x480]) ^ 0x9EE3B24B ^ LODWORD(STACK[0x53C]);
  v600 = STACK[0x4FC];
  v601 = ((((*(v350 + (158 * (HIBYTE(v600) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v350 + (158 * (v600 >> 28) + 14694) % 0x3C9u) ^ 0x19) << 12) | *(v350 + (158 * (BYTE2(v600) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v350 + (158 * ((v600 >> 20) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 12);
  v602 = v601 | *(v350 + (158 * ((LODWORD(STACK[0x4FC]) >> 8) & 0xF) + 14694) % 0x3C9u) ^ 0x19;
  v603 = (v602 << 8) ^ ((*(v350 + (158 * (LODWORD(STACK[0x4FC]) >> 12) + 14694) % 0x3C9u) ^ 0x19) << 12);
  v604 = (v603 | LODWORD(STACK[0x4EC])) ^ (16 * (*(v350 + (158 * (LODWORD(STACK[0x4FC]) >> 4) + 14694) % 0x3C9u) ^ 0x19));
  v605 = ((((*(v350 + (158 * (HIBYTE(LODWORD(STACK[0x4E0])) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v350 + (158 * (LODWORD(STACK[0x4E0]) >> 28) + 14694) % 0x3C9u) ^ 0x19) << 12) | *(v350 + (158 * (HIWORD(LODWORD(STACK[0x4E0])) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v350 + (158 * ((LODWORD(STACK[0x4E0]) >> 20) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 12);
  v606 = v605 | *(v350 + (158 * ((LODWORD(STACK[0x4E0]) >> 8) & 0xF) + 14694) % 0x3C9u) ^ 0x19;
  v607 = (v606 << 8) ^ ((*(v350 + ((((LODWORD(STACK[0x4E0]) >> 8) & 0xE ^ 0x9E) + ((LODWORD(STACK[0x4E0]) >> 8) & 0xE)) * ((LODWORD(STACK[0x4E0]) >> 12) + 93)) % 0x3C9u) ^ 0x19) << 12);
  LOBYTE(v571) = *(v350 + (158 * (LODWORD(STACK[0x4E0]) >> 4) + 14694) % 0x3C9u) ^ ((v607 | LODWORD(STACK[0x4F4])) >> 4) ^ 0x19;
  v608 = 158 * ((v604 >> 4) | (16 * (v571 & 0xF)));
  v609 = 158 * (*(v350 + (v608 + 70942 - 969 * ((4432371 * (v608 + 70942)) >> 32))) ^ (16 * (*(v350 + LODWORD(STACK[0x4E8])) ^ 0x19)) ^ 0x19);
  v610 = *(v350 + (v609 + 18644 - 969 * ((4432371 * (v609 + 18644)) >> 32))) >> 4;
  v611 = ((v610 ^ 1) - 2 * ((v610 ^ 1) & 0xFD ^ v610 & 4) + 25) ^ *(v350 + (v608 + 18644 - 969 * (((v608 + 18644) & 0xFFFEu) / 0x3C9)));
  v612 = v609 + 70942 - 969 * ((4432371 * (v609 + 70942)) >> 32);
  v613 = 158 * (v571 & 0xF0 | (v604 >> 8) & 0xF);
  v614 = v613 + 18644 - 969 * (((v613 + 18644) & 0xFFFEu) / 0x3C9);
  v615 = 158 * (*(v350 + (v613 + 70942 - 969 * ((4432371 * (v613 + 70942)) >> 32))) ^ (16 * (*(v350 + (158 * v611 + 70942 - 969 * ((4432371 * (158 * v611 + 70942)) >> 32))) ^ 0x19)) ^ 0x19);
  v616 = v615 + 70942 - 969 * ((4432371 * (v615 + 70942)) >> 32);
  v617 = (*(v350 + (v615 + 18644 - 969 * ((4432371 * (v615 + 18644)) >> 32))) >> 4) ^ 1;
  v618 = 158 * ((v617 - ((2 * v617) & 0xF3) + 25) ^ *(v350 + v614)) + 70942;
  v619 = 158 * ((v607 >> 8) & 0xF0 | (((((((((*(v350 + (158 * (HIBYTE(v600) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v350 + (158 * (v600 >> 28) + 14694) % 0x3C9u) ^ 0x19) << 12) | *(v350 + (158 * (BYTE2(v600) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v350 + (158 * ((v600 >> 20) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 12)) | *(v350 + (158 * ((v600 >> 8) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v350 + (158 * (v600 >> 12) + 14694) % 0x3C9u) ^ 0x19) << 12)) >> 12));
  v620 = 158 * (*(v350 + (v619 + 70942 - 969 * ((4432371 * (v619 + 70942)) >> 32))) ^ (16 * (*(v350 + (v618 - 969 * ((4432371 * v618) >> 32))) ^ 0x19)) ^ 0x19);
  v621 = v620 + 70942 - 969 * ((4432371 * (v620 + 70942)) >> 32);
  v622 = *(v350 + (v620 + 18644 - 969 * ((4432371 * (v620 + 18644)) >> 32))) >> 4;
  v623 = ((v622 ^ 1) - 2 * ((v622 ^ 1) & 0xFD ^ v622 & 4) + 25) ^ *(v350 + (v619 + 18644 - 969 * (((v619 + 18644) & 0xFFFEu) / 0x3C9)));
  v624 = ((*(v350 + v621) ^ 0x19) << 12) ^ ((*(v350 + v616) ^ 0x19) << 8);
  v625 = 158 * ((v607 >> 12) & 0xF0 | HIWORD(v603) & 0xF);
  v626 = 158 * (*(v350 + (v625 + 70942 - 969 * ((4432371 * (v625 + 70942)) >> 32))) ^ (16 * (*(v350 + (158 * v623 + 70942 - 969 * ((4432371 * (158 * v623 + 70942)) >> 32))) ^ 0x19)) ^ 0x19);
  v627 = v626 + 70942 - 969 * ((4432371 * (v626 + 70942)) >> 32);
  v628 = *(v350 + (v626 + 18644 - 969 * ((4432371 * (v626 + 18644)) >> 32)));
  LOBYTE(v628) = (((v628 >> 4) ^ 1) + ((v628 >> 3) & 0x12 ^ 0xFD) + 26) ^ *(v350 + (v625 + 18644 - 969 * (((v625 + 18644) & 0xFFFEu) / 0x3C9)));
  v629 = 158 * ((v605 >> 8) & 0xF0 | ((((((*(v350 + (158 * (HIBYTE(v600) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v350 + (158 * (v600 >> 28) + 14694) % 0x3C9u) ^ 0x19) << 12) | *(v350 + (158 * (BYTE2(v600) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 8) ^ ((*(v350 + (158 * ((v600 >> 20) & 0xF) + 14694) % 0x3C9u) ^ 0x19) << 12)) >> 12));
  v630 = 158 * (*(v350 + (v629 + 70942 - 969 * ((4432371 * (v629 + 70942)) >> 32))) ^ 0x19 ^ ((*(v350 + (158 * v628 + 70942 - 969 * ((4432371 * (158 * v628 + 70942)) >> 32))) ^ 0x19) << ((v628 & 4 ^ 4) + (v628 & 4))));
  v631 = ((*(v350 + (v630 + 70942) % 0x3C9u) ^ 0x19) << 20) ^ ((*(v350 + v627) ^ 0x19) << 16);
  v632 = *(v350 + (v630 + 18644) % 0x3C9u) >> 4;
  v633 = 158 * ((((v632 ^ 1) + ~(2 * ((v632 ^ 1) & 0xFB ^ v632 & 2)) + 26) ^ *(v350 + (v629 + 18644 - 969 * (((v629 + 18644) & 0xFFFEu) / 0x3C9)))) + (((314 - LODWORD(STACK[0x560])) | LODWORD(STACK[0x56C])) & 0x1C1));
  v634 = 158 * ((v605 >> 12) & 0xF0 | HIWORD(v601) & 0xF);
  v635 = 158 * (*(v350 + (v634 + 70942 - 969 * ((4432371 * (v634 + 70942)) >> 32))) ^ (16 * (*(v350 + (v633 - 969 * ((4432371 * v633) >> 32))) ^ 0x19)) ^ 0x19);
  v636 = *(v350 + (v635 + 18644 - 969 * ((4432371 * (v635 + 18644)) >> 32))) >> 4;
  v637 = 158 * (((v636 ^ 1) - 2 * ((v636 ^ 1) & 0xFB ^ v636 & 2) + 25) ^ *(v350 + (v634 + 18644 - 969 * (((v634 + 18644) & 0xFFFEu) / 0x3C9)))) + 70942;
  HIDWORD(v638) = BYTE2(v606) >> 4;
  LODWORD(v638) = v602 << 8;
  v639 = v635 + 70942 - 969 * ((4432371 * (v635 + 70942)) >> 32);
  v640 = 158 * (v638 >> 28) + 70942;
  v641 = 158 * (*(v350 + (v640 - 969 * ((4432371 * v640) >> 32))) ^ (16 * (*(v350 + (v637 - 969 * ((4432371 * v637) >> 32))) ^ 0x19)) ^ 0x19) + 70942;
  v642 = v641 - 969 * ((4432371 * v641) >> 32);
  v643 = *(v350 + (LODWORD(STACK[0x4F0]) + 70942) % 0x3C9u) ^ 0x19;
  v644 = v643 ^ (16 * (*(v350 + v612) ^ 0x19));
  v645 = STACK[0x520] & 0xFFFFFF0F | (16 * (v643 & 0xF));
  v646 = 158 * (v644 & 0xF0 | (v604 >> 4)) + 111706;
  v647 = v646 - 969 * ((4432371 * v646) >> 32);
  v648 = v624 ^ v644;
  v649 = ((v648 >> 4) & 0xF0 | (v604 >> 8) & 0xF) + (((v647 & 0x3CF ^ 0x3CF) + (v647 & 0x3CF)) & 0x6D3);
  v650 = *(v350 + (158 * v645 + 111706 - 969 * ((4432371 * (158 * v645 + 111706)) >> 32))) ^ (16 * (*(v350 + v647) ^ 0x19));
  if (v649 >= 7)
  {
    v651 = (158 * v649 - 969) % 0x3C9;
  }

  else
  {
    v651 = 158 * v649;
  }

  v652 = 158 * ((v624 >> 8) & 0xF0 | (v603 >> 12)) + 111706;
  v653 = (*(v350 + v651) ^ 0x19) << 8;
  v654 = (v650 ^ 0x19 ^ -(v650 ^ 0x19) ^ (v653 - (v650 ^ 0x19 ^ v653))) + v653;
  v655 = v631 ^ v648 ^ ((*(v350 + v639) ^ 0x19) << 24);
  v656 = 158 * (((v631 ^ v648) >> 12) & 0xF0 | HIWORD(v603) & 0xF) + 111706;
  v657 = 158 * (HIWORD(v631) & 0xF0 | (v601 >> 12)) + 111706;
  v658 = v655 ^ ((*(v350 + v642) ^ 0xFFFFFFF9) << 28);
  v659 = *(v350 + (v657 - 969 * ((4432371 * v657) >> 32)));
  v660 = (v655 >> 20) & 0xF0 | HIWORD(v601) & 0xF;
  v661 = ((*(v350 + (v656 - 969 * ((4432371 * v656) >> 32))) ^ 0x19) << 16) ^ ((*(v350 + (v652 - 969 * ((4432371 * v652) >> 32))) ^ 0x19) << 12) ^ v654 ^ ((v659 ^ 0x19u) << (((v659 & 0x6E ^ 8 | v659 & 0x6E ^ 0x66) - 90) & 0xFE));
  v662 = 158 * (HIBYTE(v658) & 0xF0 | (v602 >> 20) & 0xF) + 111706;
  v663 = ((*(v350 + (v662 - 969 * ((4432371 * v662) >> 32))) ^ 0xFFFFFFF9) << 28) ^ ((*(v350 + (158 * v660 + 111706 - 969 * ((4432371 * (158 * v660 + 111706)) >> 32))) ^ 0x19) << 24) ^ v661;
  LOWORD(v660) = 158 * (v661 >> 4) - 969 * (((683982 * (v661 >> 4)) >> 16) >> 6);
  v664 = ((((((*(v350 + (158 * (HIBYTE(v663) & 0xF) - 969 * (((683982 * (HIBYTE(v663) & 0xF)) >> 16) >> 6))) ^ 0x19) << 8) ^ ((*(v350 + (158 * (v663 >> 28) - 969 * (((683982 * (v663 >> 28)) >> 16) >> 6))) ^ 0x19) << 12) | *(v350 + (158 * (BYTE2(v661) & 0xF) - 969 * (((683982 * (HIWORD(v661) & 0xF)) >> 16) >> 6))) ^ 0x19) << 8) ^ ((*(v350 + (158 * ((v661 >> 20) & 0xF) - 969 * (((683982 * ((v661 >> 20) & 0xF)) >> 16) >> 6))) ^ 0x19) << 12) | *(v350 + (158 * ((v661 >> 8) & 0xF) - 969 * (((683982 * ((v661 >> 8) & 0xF)) >> 16) >> 6))) ^ 0x19) << 8) ^ ((*(v350 + (158 * (v661 >> 12) - 969 * (((683982 * (v661 >> 12)) >> 16) >> 6))) ^ 0x19) << 12) | *(v350 + (158 * (v661 & 0xF) - 969 * (((683982 * (v661 & 0xF)) >> 16) >> 6))) ^ 0x19;
  v665 = LODWORD(STACK[0x458]) ^ 0x9EE3B24B;
  LODWORD(STACK[0x56C]) = v665;
  LODWORD(STACK[0x580]) = (v665 + LODWORD(STACK[0x580])) ^ (16 * (*(v350 + v660) ^ 0x19)) ^ v664;
  v666 = LODWORD(STACK[0x4B0]) - 2608;
  LODWORD(STACK[0x458]) = 16 * (LODWORD(STACK[0x54C]) ^ 0x19);
  LODWORD(STACK[0x454]) = (v666 ^ 0xCC9) + 333942836;
  LODWORD(STACK[0x45C]) = v666;
  STACK[0x550] = *(&off_100315F70 + (v666 ^ 0x7E6)) - 8;
  LODWORD(STACK[0x55C]) = STACK[0x410];
  JUMPOUT(0x1002034F0);
}

void sub_100205568()
{
  (*(v1 + 8 * (v0 ^ 0x2ED0)))();
  STACK[0x870] = 0;
  JUMPOUT(0x10020559CLL);
}

void sub_10020573C(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x10017DD6CLL);
}

uint64_t sub_1002057DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, int a26, int *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v41 = 4 * (v40 ^ v37);
  v42 = *(a36 + v41);
  v43 = -778651209 * ((*(*a28 + (*a27 & 0xFFFFFFFFC9C79444)) ^ (a35 + v41)) & 0x7FFFFFFF);
  v44 = v43 ^ HIWORD(v43);
  v45 = (-778651209 * v44) >> (v38 + 77);
  *(a36 + v41) = *(a35 + v41) ^ 0x3E4641DD ^ *(*(&off_100315F70 + a26) + v45) ^ (v42 + 1044791773 - ((v42 & 0x3E4641DD) << (v38 + 56 + (((((v38 - 968) ^ v37) & v37) >> (__clz((v38 - 968) ^ v37 | 1) ^ 0x1F)) & 1) - 2))) ^ *(*(&off_100315F70 + a25) + v45) ^ *(*(&off_100315F70 + a24) + v45 + 4) ^ (-1179189248 * v44) ^ (-778651209 * v44) ^ (228453637 * v45);
  return (*(v39 + 8 * ((52 * (v36 + ((v38 - 779) | 0x30B) + ((v38 - 1479605212) & 0x5830FBDB) == 1943)) | (v38 + 2750))))();
}

uint64_t sub_100205990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = LOWORD(STACK[0xA3C]);
  switch(v9)
  {
    case 17168:
      goto LABEL_4;
    case 33980:
      v10 = STACK[0x708];
      STACK[0x8B8] = v3;
      LODWORD(STACK[0x8F4]) = v5;
      return (*(v8 + 8 * (((v10 + v4 == 0) * ((v6 - 3615) ^ 0x11A6)) ^ (v6 - 2101))))(a1, a2, a3, (v7 - 5));
    case 20706:
LABEL_4:
      STACK[0x8B8] = v3;
      break;
  }

  STACK[0x620] = 0;
  LODWORD(STACK[0x8F4]) = 197499219;
  return sub_100205A2C(a1);
}

uint64_t sub_100205A2C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x4A0]) = a4;
  STACK[0x8E8] = *(v5 + 8 * v4);
  return sub_100214FC8();
}

uint64_t sub_100205AC0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = v4 ^ 0x17A;
  (*(v6 + 8 * (v4 + 8068)))();
  v9 = STACK[0x400];
  *(v5 + 24) = 0;
  v10 = (*(v9 + 8 * (v7 + 7690)))(v5);
  return sub_1001F3F68(v10, v11, v12, a4);
}

uint64_t sub_100205B20()
{
  v2 = STACK[0x450];
  STACK[0x3A8] = STACK[0x450];
  return (*(v1 + 8 * (((v2 == 0) * (v0 - 1114 + v0 + 5618 - 9628)) ^ v0)))();
}

uint64_t sub_100205B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xA98] = v65 ^ 0xBC59953u;
  *(a1 + 16) = ((v64 - 3359) | 0x22A) + 197499219 + (((v65 ^ 0x23B8584C) - 599283788) ^ ((v65 ^ 0x3BF6B7F5) - 1006024693) ^ ((((v64 - 2905) | 0x800) ^ 0xEC74835C) + (v65 ^ 0x138B76EA))) - 676;
  v67 = (*(a64 + 8 * (v64 + 6143)))();
  *(a1 + 24) = v67;
  return (*(a64 + 8 * ((19 * (v67 != 0)) ^ (v64 + 4738))))();
}

void sub_100205C50()
{
  v2 = *(STACK[0x798] + 20);
  if (v2)
  {
    if (v2 != 1)
    {
      JUMPOUT(0x1001B6BF0);
    }

    (*(v0 + 8 * (v1 + 3517)))(STACK[0x908], 0, 32);
    sub_100205CA4(&STACK[0x438]);
  }

  else
  {
    sub_100205CFC();
  }
}

uint64_t sub_100205CA4@<X0>(uint64_t *a1@<X8>)
{
  LODWORD(STACK[0x390]) = v1 - 4758;
  LODWORD(STACK[0x3A0]) = v1 - 4432;
  return sub_1001B27F4(a1);
}

uint64_t sub_100205D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, uint64_t a20, unsigned int a21)
{
  v26 = 1875091903 * ((2 * (&a17 & 0x34742088) - &a17 + 1267457906) ^ 0x7DFE5CF1);
  a20 = a13;
  a18 = ((2 * v22) & 0x7FBD6DDE) + ((v24 - 1075925620) ^ v22) + 1614675899 + v26;
  LODWORD(a19) = v26 + v24 + 5321;
  (*(v23 + 8 * (v24 ^ 0x2CCE)))(&a17);
  a21 = (v24 + 5929) ^ (33731311 * ((1776458507 - (&a17 | 0x69E29B0B) + (&a17 | 0x961D64F4)) ^ 0xAFEBAED7));
  a19 = v21;
  a20 = a13;
  v27 = (*(v23 + 8 * (v24 ^ 0x2CDA)))(&a17);
  return (*(v23 + 8 * ((10819 * (a17 == v25)) ^ v24)))(v27);
}

uint64_t sub_100205EC8()
{
  v3 = STACK[0x6F8];
  (*(v2 + 8 * (v1 + 8888)))(&STACK[0xC97], 4096);
  STACK[0x508] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (((((v3 == 0) ^ (-75 * (v1 ^ 0xE9) - 1)) & 1) * (((2741 * (v1 ^ 0x2E9) - 4905) | 0x1582) - 6078)) ^ (2741 * (v1 ^ 0x2E9)))))(v3, 197499219);
}

uint64_t sub_1002061B0@<X0>(int a1@<W8>)
{
  STACK[0x678] = *(v5 + 8 * a1);
  STACK[0x3E0] = v2;
  LODWORD(STACK[0x600]) = v3;
  STACK[0x770] = v1;
  STACK[0x628] = 0;
  LODWORD(STACK[0x504]) = 197499219;
  STACK[0x710] = 0x4789E5A74F535ADDLL;
  STACK[0x440] = 0;
  v6 = (*(v5 + 8 * (v4 + 2393)))(16);
  v7 = STACK[0x330];
  STACK[0x5C0] = v6;
  return (*(v7 + 8 * (((v6 != 0) * (v4 - 12341 + v4 - 2078)) ^ v4)))();
}

void sub_100206284(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(STACK[0x7E4]) = a3;
  LODWORD(STACK[0x6FC]) = STACK[0x7E4];
  JUMPOUT(0x10020E048);
}

uint64_t sub_10020629C()
{
  v3 = v0 ^ 0x21DC;
  result = (*(v2 + 8 * (v0 + 841)))();
  if (v9 != v1 || v8 == v3 - 999)
  {
    v6 = v9;
  }

  else
  {
    v6 = (v8 ^ 0x66F83BCF) - 1711286272 + ((2 * v8) & 0xCDF0779E);
  }

  *(v7 + 4) = v6;
  return result;
}

uint64_t sub_100206348(uint64_t a1)
{
  STACK[0x7D0] = v1;
  LODWORD(STACK[0x45C]) = STACK[0x5DC];
  return (*(v3 + 8 * (((((v2 + 8) ^ (STACK[0x6A0] == 0)) & 1) * (((v2 + 720871618) & 0xD50858F6) - 175)) ^ v2)))(a1, 16215976);
}

uint64_t sub_1002063C4@<X0>(unint64_t a1@<X5>, unint64_t a2@<X6>, unint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v16 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v17 = vdupq_n_s64(0x38uLL);
  v18 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x2F0] = vdupq_n_s64(v14);
  *&STACK[0x300] = vdupq_n_s64(a1);
  *&STACK[0x2D0] = vdupq_n_s64(v8);
  *&STACK[0x2E0] = vdupq_n_s64(v6);
  *&STACK[0x2B0] = vdupq_n_s64(v11);
  *&STACK[0x2C0] = vdupq_n_s64(v9);
  *&STACK[0x290] = vdupq_n_s64(v7);
  *&STACK[0x2A0] = vdupq_n_s64(v13);
  *&STACK[0x270] = vdupq_n_s64(0xD18DC373B8636FE3);
  *&STACK[0x280] = vdupq_n_s64(0x242F32CA0DB3DDEAuLL);
  v19 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v20 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v21 = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x250] = vdupq_n_s64(0x52D1CFA255142C6CuLL);
  *&STACK[0x260] = vdupq_n_s64(0xA5A39F44AA2858D8);
  v22 = vdupq_n_s64(0x48FB24461747836FuLL);
  v23 = vdupq_n_s64(0xAB3042D228875C41);
  v24 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v25 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  v26 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v27 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v28 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v29 = vdupq_n_s64(0xBCFFAF874FA44A5ALL);
  v30 = vdupq_n_s64(a2);
  *&STACK[0x240] = xmmword_1002BF670;
  v31 = vdupq_n_s64(a3);
  STACK[0x310] = *(v4 + v10 - v12 - 8);
  v32.i64[0] = v4 + v10 - v12 + ((v5 - 1275224708) & 0x4C025FBD ^ 0xFFFFFFFFFFFFED48);
  v32.i64[1] = v4 + v10 - v12 - 4;
  v33.i64[0] = v4 + v10 - v12 - 1;
  v33.i64[1] = v4 + v10 - v12 - 2;
  v34.i64[0] = v4 + v10 - v12 - 5;
  v34.i64[1] = v4 + v10 - v12 - 6;
  v35.i64[0] = v4 + v10 - v12 - 7;
  v35.i64[1] = v4 + v10 - v12 - 8;
  v36.i64[0] = a4 + v10 - v12 + 7;
  v36.i64[1] = a4 + v10 - v12 + 6;
  v37.i64[0] = a4 + v10 - v12 + 9;
  v37.i64[1] = a4 + v10 - v12 + 8;
  v38 = vandq_s8(v35, v16);
  v39 = vandq_s8(v34, v16);
  v40 = vandq_s8(v33, v16);
  v41 = vandq_s8(v32, v16);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), v18);
  v43 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), v18);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), v18);
  v45 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v18);
  v46 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v42, v42), *&STACK[0x300]), v42), *&STACK[0x2F0]);
  v47 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v43, v43), *&STACK[0x300]), v43), *&STACK[0x2F0]);
  v48 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v44, v44), *&STACK[0x300]), v44), *&STACK[0x2F0]);
  v49 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v45, v45), *&STACK[0x300]), v45), *&STACK[0x2F0]);
  v50 = veorq_s8(v49, *&STACK[0x2E0]);
  v51 = veorq_s8(v48, *&STACK[0x2E0]);
  v52 = veorq_s8(v47, *&STACK[0x2E0]);
  v53 = veorq_s8(v46, *&STACK[0x2E0]);
  v54 = veorq_s8(v46, *&STACK[0x2D0]);
  v55 = veorq_s8(v47, *&STACK[0x2D0]);
  v56 = veorq_s8(v48, *&STACK[0x2D0]);
  v57 = veorq_s8(v49, *&STACK[0x2D0]);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v57);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v56);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v55);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v54);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v61, v61), *&STACK[0x2C0]), v61), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v60, v60), *&STACK[0x2C0]), v60), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v59, v59), *&STACK[0x2C0]), v59), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v65 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v58, v58), *&STACK[0x2C0]), v58), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v66 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v67 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v68 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v69 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v70 = veorq_s8(v64, v68);
  v71 = veorq_s8(v63, v67);
  v72 = veorq_s8(v62, v66);
  v73 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v74 = vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL);
  v75 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v72);
  v77 = vaddq_s64(v75, v71);
  v78 = vaddq_s64(v74, v70);
  v79 = vaddq_s64(v73, v69);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v79, v79), *&STACK[0x290]), v79), *&STACK[0x280]), *&STACK[0x270]);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v78, v78), *&STACK[0x290]), v78), *&STACK[0x280]), *&STACK[0x270]);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v77, v77), *&STACK[0x290]), v77), *&STACK[0x280]), *&STACK[0x270]);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v76, v76), *&STACK[0x290]), v76), *&STACK[0x280]), *&STACK[0x270]);
  v84 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v85 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v86 = vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL);
  v87 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v88 = veorq_s8(v82, v86);
  v89 = veorq_s8(v81, v85);
  v90 = veorq_s8(v80, v84);
  v91 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v90);
  v95 = veorq_s8(vaddq_s64(v91, v87), v19);
  v96 = veorq_s8(vaddq_s64(v92, v88), v19);
  v97 = veorq_s8(vaddq_s64(v93, v89), v19);
  v98 = veorq_s8(v94, v19);
  v99 = vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL);
  v100 = vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v102 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v103 = veorq_s8(v97, v101);
  v104 = veorq_s8(v96, v100);
  v105 = veorq_s8(v95, v99);
  v106 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v107 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v108 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v105);
  v110 = veorq_s8(vaddq_s64(v106, v102), v20);
  v111 = veorq_s8(vaddq_s64(v107, v103), v20);
  v112 = veorq_s8(vaddq_s64(v108, v104), v20);
  v113 = veorq_s8(v109, v20);
  v114 = vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL);
  v115 = vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL);
  v116 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v117 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v118 = veorq_s8(v112, v116);
  v119 = veorq_s8(v111, v115);
  v120 = veorq_s8(v110, v114);
  v121 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v122 = vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v120);
  v125 = veorq_s8(vaddq_s64(v121, v117), v21);
  v126 = veorq_s8(vaddq_s64(v122, v118), v21);
  v127 = veorq_s8(vaddq_s64(v123, v119), v21);
  v128 = veorq_s8(v124, v21);
  v129 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v132 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v133 = veorq_s8(v127, v131);
  v134 = veorq_s8(v126, v130);
  v135 = veorq_s8(v125, v129);
  v136 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v135);
  v140 = vaddq_s64(v138, v134);
  v141 = vaddq_s64(v137, v133);
  v142 = vaddq_s64(v136, v132);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(v142, vandq_s8(vaddq_s64(v142, v142), *&STACK[0x260])), *&STACK[0x250]), v22);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(v141, vandq_s8(vaddq_s64(v141, v141), *&STACK[0x260])), *&STACK[0x250]), v22);
  v145 = veorq_s8(vaddq_s64(vsubq_s64(v140, vandq_s8(vaddq_s64(v140, v140), *&STACK[0x260])), *&STACK[0x250]), v22);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(v139, vandq_s8(vaddq_s64(v139, v139), *&STACK[0x260])), *&STACK[0x250]), v22);
  v147 = vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL);
  v148 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v149 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v150 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v151 = veorq_s8(v143, v147);
  v152 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v134.i64[0] = a4 + v10 - v12 + 5;
  v134.i64[1] = a4 + v10 - v12 + 4;
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v151);
  v151.i64[0] = a4 + v10 - v12 + 3;
  v151.i64[1] = a4 + v10 - v12 + 2;
  v156 = vshlq_u64(veorq_s8(v155, v23), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v17)));
  v157 = vshlq_u64(veorq_s8(vaddq_s64(v154, v150), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v17)));
  v158 = vshlq_u64(veorq_s8(vaddq_s64(v153, v149), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v17)));
  v159 = vshlq_u64(veorq_s8(vaddq_s64(v152, v148), v23), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v17)));
  v160 = vandq_s8(v151, v16);
  v161 = vandq_s8(v134, v16);
  v162 = vandq_s8(v37, v16);
  v163 = vandq_s8(v36, v16);
  v164 = vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v18);
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v18);
  v168 = veorq_s8(v167, v24);
  v169 = veorq_s8(v166, v24);
  v170 = veorq_s8(v166, v25);
  v171 = veorq_s8(v167, v25);
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v26);
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v171), v26);
  v174 = vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL);
  v175 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v176 = veorq_s8(v172, v174);
  v177 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v176);
  v179 = veorq_s8(vaddq_s64(v177, v175), v27);
  v180 = veorq_s8(v178, v27);
  v181 = vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL);
  v182 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v183 = veorq_s8(v179, v181);
  v184 = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v183);
  v186 = veorq_s8(vaddq_s64(v184, v182), v19);
  v187 = veorq_s8(v185, v19);
  v188 = vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL);
  v189 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v190 = veorq_s8(v186, v188);
  v191 = vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL);
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v190);
  v193 = veorq_s8(vaddq_s64(v191, v189), v20);
  v194 = veorq_s8(v192, v20);
  v195 = vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL);
  v196 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v197 = veorq_s8(v193, v195);
  v198 = vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL);
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v197);
  v200 = veorq_s8(vaddq_s64(v198, v196), v21);
  v201 = veorq_s8(v199, v21);
  v202 = vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL);
  v203 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v204 = veorq_s8(v200, v202);
  v205 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v206 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v204);
  v207 = veorq_s8(vaddq_s64(v205, v203), v28);
  v208 = veorq_s8(v206, v28);
  v209 = vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL);
  v210 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v211 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), veorq_s8(v207, v209));
  v212 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v210);
  v213 = vaddq_s64(v165, v18);
  v244.val[3] = veorq_s8(v159, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v212, vandq_s8(vaddq_s64(v212, v212), v29)), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v151, 3uLL), v17))));
  v244.val[2] = veorq_s8(v158, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v211, vandq_s8(vaddq_s64(v211, v211), v29)), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v134, 3uLL), v17))));
  v214 = veorq_s8(v213, v24);
  v215 = veorq_s8(v213, v25);
  v216 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215), v26);
  v217 = veorq_s8(v216, vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL));
  v218 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), v217), v27);
  v219 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v220 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v219), v19);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  v222 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221), v20);
  v223 = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v224 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v223), v21);
  v225 = veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL));
  v226 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v225), v28);
  v227 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL)));
  v228 = vaddq_s64(v164, v18);
  v244.val[0] = veorq_s8(v157, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v227, vandq_s8(vaddq_s64(v227, v227), v29)), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), v17))));
  v229 = veorq_s8(v228, v24);
  v230 = veorq_s8(v228, v25);
  v231 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230), v26);
  v232 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v233 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v232), v27);
  v234 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL));
  v235 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL), v234), v19);
  v236 = veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL));
  v237 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL), v236), v20);
  v238 = veorq_s8(v237, vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL));
  v239 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL), v238), v21);
  v240 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL));
  v241 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v240), v28);
  v242 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL)));
  v244.val[1] = veorq_s8(v156, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v242, vandq_s8(vaddq_s64(v242, v242), v29)), v30), v31), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v17))));
  *(a4 + v10 - v12 + 2) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v244, *&STACK[0x240])), STACK[0x310]);
  return (*(v15 + 8 * ((253 * (8 - (v10 & 0xFFFFFFF8) == -v12)) ^ v5)))(v8, v9, v11, v13, v7);
}

uint64_t sub_100206EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = v17 ^ 0x199;
  v21 = ((v17 ^ 0x199) + 1299625210) & 0xB28957F3;
  v23 = ((v18 + 444718648) ^ 0x1A81DE38u) < 8 || (a17 - a1) < 0x20;
  return (*(v19 + 8 * (((v21 ^ 0x1346) * v23) ^ v20)))();
}

uint64_t sub_100206FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x3E0] = STACK[0x4F0] + 24;
  v8 = LOWORD(STACK[0xAFE]);
  LODWORD(STACK[0x380]) = v8;
  LODWORD(STACK[0x370]) = v8 ^ 0xFFFFA60A;
  v9 = STACK[0xB00];
  LODWORD(STACK[0x390]) = v6 + 4;
  LODWORD(STACK[0x2D0]) = LODWORD(STACK[0xB04]) ^ 0xD6A561FA;
  STACK[0x3D0] = STACK[0x988] + 24;
  v10 = LOWORD(STACK[0xB36]);
  LODWORD(STACK[0x360]) = v10;
  LODWORD(STACK[0x350]) = v10 ^ 0x4CF9;
  v11 = STACK[0xB38];
  LODWORD(STACK[0x2C0]) = LODWORD(STACK[0xB3C]) ^ 0xD6A561FA;
  STACK[0x3C0] = STACK[0x8A8] + 24;
  STACK[0x3B0] = STACK[0x998] + 24;
  STACK[0x3A0] = STACK[0x750] + 24;
  v12 = STACK[0x6A4];
  v13 = (LODWORD(STACK[0x6A4]) ^ 0x1584243D) - 291580786;
  v14 = (LODWORD(STACK[0x6A4]) ^ 0xE8328CAC) + 321420317;
  v15 = (LODWORD(STACK[0x6A4]) ^ 0x26AC58A1) - 575231982;
  v16 = (LODWORD(STACK[0x6A4]) ^ 0xDFFFFF7F) + 618991568;
  LODWORD(STACK[0x300]) = v9;
  LODWORD(STACK[0x340]) = v9 ^ 0xD6A561FA;
  LODWORD(STACK[0x330]) = LODWORD(STACK[0x724]) ^ 0xD6A561FA;
  LODWORD(STACK[0x2F0]) = v11;
  LODWORD(STACK[0x320]) = v11 ^ 0xD6A561FA;
  LODWORD(STACK[0x310]) = v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ 0xD985F7E6;
  LODWORD(STACK[0x2E0]) = v7 - 4131;
  return sub_100222A58(0x4C48AAE1C333D048, 0x435B154A729201BFLL, 0x2A5638492DD55EAELL, 0x5EA5347A8335DC72, 0x64C31C027084DE6CLL, a6, 0x61459D2AF01F24F7, 0x5F83E4240040270ALL);
}

uint64_t sub_100207220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, int a15)
{
  v20 = 956911519 * (v19 ^ 0x453675DCEA917005);
  a12 = (v18 - 1963) ^ v20;
  a13 = v16 - 0x632958EA97E09F34 + v20 - ((v16 << (((v18 + 96) | 0x94) ^ 0x9Cu)) & 0x39AD4E2AD03EC198);
  a14 = a10;
  (*(v17 + 8 * (v18 ^ 0x2ED6)))(&a12);
  v21 = 956911519 * ((2 * (v19 & 0x35F98EFAAB265498) - v19 + 0x4A06710554D9AB60) ^ 0xF3004D9BE48DB65);
  a12 = (v18 - 1963) ^ v21;
  a13 = v15 - 0x632958EA97E09F34 + v21 - ((((v18 - 1955) | 0x60u) + 0x39AD4E2AD03EBD32) & (2 * v15));
  a14 = a10;
  v22 = (*(v17 + 8 * (v18 + 6614)))(&a12);
  return (*(v17 + 8 * ((6983 * (a15 == 16257999)) ^ v18)))(v22);
}

uint64_t sub_100207380(uint64_t a1, int a2)
{
  v8.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v8.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v9 = v6 + v4 - 1;
  v10 = veorq_s8(*(v2 + v4 - 1 - 31), v8);
  *(v9 - 15) = veorq_s8(*(v2 + v4 - 1 - 15), v8);
  *(v9 - 31) = v10;
  return (*(v7 + 8 * ((120 * (((a2 - v5) ^ 0x19F3) == (v4 & 0xFFFFFFE0))) ^ (v3 + a2 + 2065))))();
}

uint64_t sub_100207444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = STACK[0x7F0];
  v69 = *(a18 + 104) + 1357994439;
  v70 = ((v64 - 48624527) & 0x2E5FFAD) + LODWORD(STACK[0x3E4]) - (((73 * (v64 ^ 0xCFC)) ^ 0xB8C56E7C) & (2 * LODWORD(STACK[0x3E4]))) - 597517704;
  v71 = 1710126949 * ((((2 * (v66 - 232)) | 0xC02EA498) - (v66 - 232) + 535342516) ^ 0xD20C09DC);
  *(v66 - 232) = &STACK[0x7CC];
  *(v66 - 224) = v70 ^ v71;
  *(v66 - 208) = v68;
  *(v66 - 216) = a17;
  *(v66 - 192) = v69 ^ v71;
  *(v66 - 188) = v71 + v64 - 1166563871;
  *(v66 - 200) = &STACK[0x438];
  v72 = (*(v67 + 8 * (v64 + 6379)))(v66 - 232);
  return (*(a64 + 8 * ((5980 * (*(v66 - 220) == v65)) ^ v64)))(v72);
}

uint64_t sub_100207568()
{
  v2 = STACK[0x770];
  STACK[0x718] = STACK[0x770];
  return (*(v1 + 8 * ((((((v0 - 178476508) ^ 0xF55CDB3B) - 3908) ^ (v0 - 178476508) & 0xAA337FF) * (v2 == 0)) ^ v0)))();
}

uint64_t sub_10020763C()
{
  *(v1 + 108) = 0;
  v2 = STACK[0x418];
  *(v1 + 104) = 16;
  *(v1 + 103) = v2[23];
  *(v1 + 102) = v2[22];
  *(v1 + 101) = v2[21];
  *(v1 + 100) = v2[20];
  *(v1 + 99) = v2[19];
  *(v1 + 98) = v2[18];
  *(v1 + 97) = v2[17];
  *(v1 + 96) = v2[16];
  *(v1 + 95) = v2[15];
  *(v1 + 94) = v2[14];
  *(v1 + 93) = v2[13];
  *(v1 + 92) = v2[12];
  *(v1 + 91) = v2[11];
  *(v1 + 90) = v2[10];
  *(v1 + 89) = v2[9];
  *(v1 + 88) = v2[8];
  return (*(STACK[0x400] + 8 * ((78 * (v2[4] != (v0 - 117 + v0 - 101 + 116))) ^ v0)))();
}

uint64_t sub_10020784C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x9A0] = 0;
  v4 = STACK[0x490];
  STACK[0x978] = 0;
  if (v4 == 16257999)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return sub_1001F3F68(a1, a2, a3, v5);
}

uint64_t sub_100207A00()
{
  (*(v2 + 8 * ((v0 | 0x1A2) + 8162)))();
  *(v1 + 24) = 0;
  return sub_1001A2D98();
}

uint64_t sub_100207A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50)
{
  v53 = v50 - 773372235 * v51 + 1647182425;
  v54 = (v53 ^ 0x210AC9AE) & (2 * (v53 & 0xB2228D2C)) ^ v53 & 0xB2228D2C;
  v55 = ((2 * (v53 ^ 0x14BD1BE)) ^ 0x66D2B924) & (v53 ^ 0x14BD1BE) ^ (2 * (v53 ^ 0x14BD1BE)) & 0xB3695C92;
  v56 = v55 ^ 0x91294492;
  v57 = (v55 ^ 0x1800) & (4 * v54) ^ v54;
  v58 = ((4 * v56) ^ 0xCDA57248) & v56 ^ (4 * v56) & 0xB3695C90;
  v59 = (v58 ^ 0x81215000) & (16 * v57) ^ v57;
  v60 = ((16 * (v58 ^ 0x32480C92)) ^ 0x3695C920) & (v58 ^ 0x32480C92) ^ (16 * (v58 ^ 0x32480C92)) & 0xB3695C90;
  v61 = v59 ^ 0xB3695C92 ^ (v60 ^ 0x32014800) & (v59 << 8);
  v62 = v53 ^ (2 * ((v61 << 16) & 0x33690000 ^ v61 ^ ((v61 << 16) ^ 0x5C920000) & (((v60 ^ 0x81681492) << 8) & 0x33690000 ^ 0x12210000 ^ (((v60 ^ 0x81681492) << 8) ^ 0x695C0000) & (v60 ^ 0x81681492))));
  v64 = (v62 & 0xF) == 8 && v62 != (v52 ^ 0x195A) - 185586235;
  return (*(a50 + 8 * ((v64 * (v52 - 7959)) ^ v52)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_100207BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = *(a64 + 8 * v66);
  v70 = *v67;
  v71 = __ROR8__((v70 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v72 = (v71 + v64) ^ 0xE1AFA7ACF6E0968ELL;
  v73 = __ROR8__((v71 + v64) ^ 0x49E9423B6F16E7D2, 8);
  v74 = (0xE13B7065743737B0 - ((v73 + v72) | 0xE13B7065743737B0) + ((v73 + v72) | 0x1EC48F9A8BC8C84FLL)) ^ 0xFA59F8450CF57731;
  v75 = v74 ^ __ROR8__(v72, 61);
  v76 = __ROR8__(v74, 8);
  v77 = (0xEA42215FB09D0055 - ((v76 + v75) | 0xEA42215FB09D0055) + ((v76 + v75) | 0x15BDDEA04F62FFAALL)) ^ 0xE01F2F19FAB24DA3;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0x5963B6C555D97F1FLL;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = __ROR8__(v79, 8);
  v82 = (0xFBC8962DEA5A1818 - ((v81 + v80) | 0xFBC8962DEA5A1818) + ((v81 + v80) | 0x43769D215A5E7E7)) ^ 0x6572F4F8E5BAC310;
  v83 = v82 ^ __ROR8__(v80, 61);
  v84 = __ROR8__(v82, 8);
  v85 = (((2 * (v84 + v83)) & 0x95D159776768EC9ALL) - (v84 + v83) - 0x4AE8ACBBB3B4764ELL) ^ 0xD1D44F463CCF57DELL;
  v86 = v85 ^ __ROR8__(v83, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (((2 * (v87 + v86)) & 0xD800CF627F7DCE02) - (v87 + v86) + 0x13FF984EC04118FELL) ^ 0x9D573AA8212B7FDLL;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = __ROR8__(v88, 8);
  *(v70 + 4) = v68 ^ 0x98 ^ (((((2 * (v90 + v89)) & 0x4CC31BBC7D14A244) - (v90 + v89) + 0x599E7221C175AEDDLL) ^ 0xF2AE30F3E9F2F29CLL) >> (8 * ((v70 + 4) & 7)));
  v91 = __ROR8__((v70 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v92 = ((2 * (v91 + v64)) | 0x3E48AF211110F5F6) - (v91 + v64) - 0x1F24579088887AFBLL;
  v93 = v92 ^ 0x56CD15ABE79E9D29;
  v92 ^= 0xFE8BF03C7E68EC75;
  v94 = __ROR8__(v93, 8);
  v95 = (((2 * (v94 + v92)) & 0x42379E9795A534D6) - (v94 + v92) + 0x5EE430B4352D6594) ^ 0xBA79476BB210DAEALL;
  v96 = v95 ^ __ROR8__(v92, 61);
  v97 = __ROR8__(v95, 8);
  v98 = (((2 * (v97 + v96)) | 0xF087926224A8E20ALL) - (v97 + v96) - 0x7843C93112547105) ^ 0x8DE13888A784C30CLL;
  v99 = v98 ^ __ROR8__(v96, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ 0x5963B6C555D97F1FLL;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ 0x61459D2AF01F24F7;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = __ROR8__(v102, 8);
  v105 = (((2 * (v104 + v103)) | 0x8BD1FBA0C354CF8ELL) - (v104 + v103) - 0x45E8FDD061AA67C7) ^ 0x212BE1D2112EB9ABLL;
  v106 = v105 ^ __ROR8__(v103, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0x1A2AEBE44253AF03;
  v108 = __ROR8__(v107, 8) + (v107 ^ __ROR8__(v106, 61));
  *(v70 + 5) = v65 ^ 0x9E ^ (((0xE4BAC51C5A42204CLL - (v108 | 0xE4BAC51C5A42204CLL) + (v108 | 0x1B453AE3A5BDDFB3)) ^ 0xB07578318D3A83F2) >> (8 * ((v70 + 5) & 7)));
  return v69();
}

uint64_t sub_100208104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, unint64_t a21, uint64_t a22, uint64_t a23)
{
  a19 = (v23 - 3208) ^ (956911519 * (((v24 | 0xBC6C8CE1) - (v24 | 0x4393731E) + 1133736734) ^ 0x56FDFCE4));
  a21 = v27 - ((2 * v27) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + 956911519 * (((v24 | 0x57D2971ABC6C8CE1) - (v24 | 0xA82D68E54393731ELL) - 0x57D2971ABC6C8CE2) ^ 0x12E4E2C656FDFCE4);
  a22 = a16;
  (*(v28 + 8 * (v23 ^ 0x35F9)))(&a19);
  v29 = 1824088897 * (v24 ^ 0x5869D362);
  a19 = v29 + v23 - 473;
  LODWORD(a21) = (v26 ^ 0xEFA7FFFE) - v29 + 1593633420 + ((v26 << (((v23 - 102) | 0x58) - 119)) & 0xDF4FFFFC);
  a23 = a16;
  a22 = a13;
  v30 = (*(v28 + 8 * (v23 + 5401)))(&a19);
  return (*(v28 + 8 * ((12519 * (a20 == v25)) ^ v23)))(v30);
}

void sub_10020826C(int a1@<W8>)
{
  v7 = *(v4 + 120);
  v8 = *(v4 + 100);
  v9 = 914963389 * ((v6 - 232) ^ 0x2CFCB17B);
  *(v6 - 232) = 1491323843 - v9;
  *(v6 - 184) = v1;
  *(v6 - 200) = v2;
  *(v6 - 168) = v4 + 104;
  *(v6 - 176) = v9 + a1 - 129;
  *(v6 - 224) = v1;
  *(v6 - 216) = (((v3 ^ 0x413B0CD7) - 1094388951) ^ ((v3 ^ 0xC2692BA) - 203854522) ^ ((v3 ^ 0x46D8073E) - 1188562750)) - v9 + 1996137537;
  *(v6 - 208) = v9 + (v7 ^ 0x7AFF3DAB) + ((2 * v7) & 0xF5FE7B56) - 1884685440;
  *(v6 - 192) = ((v8 ^ 0xF4ABFE9F) + 737453946 + ((((a1 + 1193503953) & 0xB8DC8AFA) - 380112108) & (2 * v8))) ^ v9;
  (*(v5 + 8 * (a1 ^ 0x3798)))(v6 - 232);
  JUMPOUT(0x1000DBA94);
}

uint64_t sub_100208458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = STACK[0x7A0];
  v69 = STACK[0x630];
  STACK[0xA58] = &STACK[0xAB0] + v65;
  STACK[0x640] = v64;
  STACK[0x670] = v68;
  STACK[0x5D0] = v69;
  v70 = (*(v67 + 8 * (v66 + 7644)))();
  STACK[0x7A8] = 0;
  if (v68)
  {
    v71 = v69 == 0;
  }

  else
  {
    v71 = 1;
  }

  v72 = v71;
  return (*(a64 + 8 * ((v72 * (v66 - 256 + v66 + 3686 - 7216)) ^ v66)))(v70);
}

uint64_t sub_10020854C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = (&a14 ^ 0x5869D362) * v21;
  a15 = v23 - 464901323;
  a16 = a11;
  a17 = &a12;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674577711;
  v24 = (*(v19 + 8 * (v22 ^ 0x20F3)))(&a14);
  return (*(v19 + 8 * ((3351 * (a14 == ((v22 - 1255411080) & 0xBDC ^ (v20 - 944)))) ^ v22)))(v24);
}

uint64_t sub_1002085FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  v26 = (((&a17 | 0x4F0A98A9) + (~&a17 | 0xB0F56756)) ^ 0x17634BCA) * v23;
  a19 = a12;
  a20 = &a13;
  a21 = -654855621 - v26;
  a22 = v26 + v22 + 1674576869;
  a18 = v26 + 1579780757;
  v27 = (*(v24 + 8 * (v22 ^ 0x2D4Du)))(&a17);
  return (*(v24 + 8 * (((((v22 + 68) ^ (a17 == v25)) & 1) * (3 * (v22 ^ 0xA9E) - 1779)) ^ v22)))(v27);
}

uint64_t sub_1002086C4@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>)
{
  v22 = v17 - 1;
  v23 = __ROR8__((v14 + v22) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = v10 + v22 + v12;
  v25 = (v23 - 0x6AF7234D0CC131D5) ^ a1;
  v26 = (__ROR8__((v23 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v25) ^ 0xE49D77DF873DBF7ELL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = __ROR8__(((a6 | (2 * (v28 + v27))) - (v28 + v27) + a2) ^ 0x578539A934117766, 8);
  v30 = ((a6 | (2 * (v28 + v27))) - (v28 + v27) + a2) ^ 0x578539A934117766 ^ __ROR8__(v27, 61);
  v31 = (v29 + v30) ^ v15;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x61459D2AF01F24F7;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = __ROR8__(((v21 | (2 * (v35 + v34))) - (v35 + v34) - 0x4A9EA9EF0A470EABLL) ^ 0x2E5DB5ED7AC3D0C7, 8);
  v37 = ((v21 | (2 * (v35 + v34))) - (v35 + v34) - 0x4A9EA9EF0A470EABLL) ^ 0x2E5DB5ED7AC3D0C7 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v39 = (v36 + v37) ^ a3;
  v40 = v38 - ((2 * v38 + 0x5B38AD8DDB3A7C5CLL) & v7) + 0x72900020EB4C2C24;
  v41 = v40 ^ 0xCF99C25E83E78D67;
  v40 ^= 0xA37B7469EF0E7C16;
  v42 = (__ROR8__(v41, 8) + v40) ^ 0xFB9714BECA2C68E9;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = __ROR8__(v39, 8) + (v39 ^ __ROR8__(v37, 61));
  v46 = (((2 * (v44 + v43)) | 0x5ABE700122B28302) - (v44 + v43) - 0x2D5F380091594181) ^ v19;
  v47 = v46 ^ __ROR8__(v43, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (v9 - ((v48 + v47) | v9) + ((v48 + v47) | 0xA11B1487180DD3BBLL)) ^ 0x5C9047B9C167908FLL;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (v51 + v50 - ((2 * (v51 + v50)) & 0x2FB8FA78C5363E4) - 0x7E82382C39D64E0ELL) ^ v11 ^ __ROR8__(v50, 61);
  v53 = __ROR8__((v51 + v50 - ((2 * (v51 + v50)) & 0x2FB8FA78C5363E4) - 0x7E82382C39D64E0ELL) ^ v11, 8) + v52;
  v54 = (v53 - (v20 & (2 * v53)) + a4) ^ a5;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ v16;
  *v24 = (((__ROR8__(v56, 8) + (v56 ^ __ROR8__(v55, 61))) ^ v13) >> (8 * (v24 & 7u))) ^ (((v8 - (v45 | v8) + (v45 | 0x4AC0565324D70174)) ^ 0xE1F014810C505D35) >> (8 * ((v14 + v22) & 7))) ^ *(v14 + v22);
  return (*(v18 + 8 * ((11544 * (v22 == 0)) ^ (a7 - 2391))))();
}

uint64_t sub_100208A58()
{
  (*(v1 + 8 * ((v0 - 7425) ^ 0x2376)))();
  STACK[0x8A8] = 0;
  return sub_100193A28();
}

uint64_t sub_100208AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  v45 = STACK[0x3F8] - 7639;
  v46 = (v43 ^ v44) + a43;
  STACK[0xA28] = v46;
  return (*(STACK[0x400] + 8 * (v45 ^ (223 * (v46 <= a35)))))();
}

uint64_t sub_100208BA8@<X0>(unint64_t a1@<X8>)
{
  STACK[0xB20] = v1;
  STACK[0xB28] = a1;
  return (*(STACK[0x400] + 8 * ((((v3 ^ 0x16EA) - 2660 + (((v3 ^ 0x16EA) + 1951716890) & 0x8BAB1AFD)) * (v2 > 9)) ^ v3 ^ 0x16EA)))();
}

uint64_t sub_100208C08()
{
  STACK[0x788] = STACK[0x4B0];
  STACK[0x510] = *(v3 + 8 * v2);
  STACK[0x3B0] = &STACK[0x788];
  v0 = STACK[0x788];
  STACK[0x480] = STACK[0x788];
  return (*(v3 + 8 * (((v0 != 0) * ((6 * ((116 * (v2 ^ 0x31B)) ^ 0x217)) ^ 0xDAA)) ^ (116 * (v2 ^ 0x31B)))))();
}

uint64_t sub_100208C64()
{
  LODWORD(STACK[0x35C]) = STACK[0x2F0];
  LOBYTE(STACK[0x79B]) = v2;
  LODWORD(STACK[0x49C]) = STACK[0x2D0];
  STACK[0x8A8] = STACK[0x300];
  LODWORD(STACK[0x8B4]) = v1;
  return (*(v3 + 8 * ((13233 * (v2 == (((v0 + 76) | 0xC0) ^ 0xF7))) ^ (v0 + 3722))))();
}

uint64_t sub_100208CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, unsigned int a14)
{
  a14 = (v14 + 6765) ^ (((&a12 & 0xD427EA6C | ~(&a12 | 0xD427EA6C)) ^ 0x73B1C6F1) * v15);
  a13 = a11;
  v17 = (*(v16 + 8 * (v14 ^ 0x23A1u)))(&a12);
  return sub_100208D4C(v17);
}

uint64_t sub_100208D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, unsigned int a14)
{
  a14 = (v16 + 7114) ^ (((2 * (&a12 & 0x3BFD00B8) - &a12 + 1141047107) ^ 0x1C6B2C21) * v14);
  a13 = a9;
  v17 = (*(v15 + 8 * (v16 ^ 0x215Cu)))(&a12);
  return sub_100208DB0(v17);
}

uint64_t sub_100208E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v22 = v12 - 1;
  v23 = STACK[0x3C0] + v22;
  v24 = STACK[0x3D0] + v22 + v9;
  v25 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((v25 - 0x6AF7234D0CC131D5) | a8) - ((v25 - 0x6AF7234D0CC131D5) | v11) + v11;
  v27 = v26 ^ 0x513852535460B9BLL;
  v26 ^= 0xAD5560B2ACB07AC7;
  v28 = (__ROR8__(v27, 8) + v26) ^ a7;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ a2;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0x68767FB9A21293ELL) + 0x343B3FDCD10949FLL) ^ 0x5A20053898C9EB80;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (v17 - ((v35 + v34) | v17) + ((v35 + v34) | 0x20842EAD28A8535ALL)) ^ 0x41C1B387D8B777ADLL;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (0x629E5557E5EFD9B2 - ((v38 + v37) | 0x629E5557E5EFD9B2) + ((v38 + v37) | 0x9D61AAA81A10264DLL)) ^ 0xF9A2B6AA6A94F821;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v19;
  v42 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v43 = ((0x29702F06207D0E1CLL - v42) & a1) + v42 + a5 - ((v42 + a5) & 0x5E79FD990C46CAD5);
  v44 = v43 ^ 0x6F262667B511DA8BLL;
  v43 ^= 0xDB58A1A949065591;
  v45 = __ROR8__(v44, 8);
  v46 = __ROR8__(v41, 8) + (v41 ^ __ROR8__(v40, 61));
  v47 = (((2 * ((v45 + v43) ^ 0xBC7AB44B3A189480)) | 0xF0BA186BA47F666CLL) - ((v45 + v43) ^ 0xBC7AB44B3A189480) + v20) ^ v10;
  v48 = v47 ^ __ROR8__(v43, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (v49 + v48 - (v14 & (2 * (v49 + v48))) - 0x4390C7196B4C2799) ^ 0xF4B101A286E9DA33 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__((v49 + v48 - (v14 & (2 * (v49 + v48))) - 0x4390C7196B4C2799) ^ 0xF4B101A286E9DA33, 8) + v50) ^ 0x57D072DFC3A5F657;
  v52 = __ROR8__(v51, 8);
  v53 = v51 ^ __ROR8__(v50, 61);
  v54 = (v52 + v53 - (a3 & (2 * (v52 + v53))) + a4) ^ v16;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (0x2451E0AF25CF2710 - ((v56 + v55) | 0x2451E0AF25CF2710) + ((v56 + v55) | v13)) ^ v18;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ v15;
  *v24 = (((__ROR8__(v59, 8) + (v59 ^ __ROR8__(v58, 61))) ^ a6) >> (8 * (v24 & 7u))) ^ (((((2 * v46) & 0x170BF460A85E9EEELL) - v46 + v21) ^ 0x5F4A471D8357ECC9) >> (8 * (v23 & 7u))) ^ *v23;
  return (*(STACK[0x3E8] + 8 * ((10520 * (v22 == 0)) ^ (a9 - 1648))))();
}

uint64_t sub_100209250@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v61 = (a1 - 286) | 0x100;
  v59[47] = v59[15] - ((2 * v59[15]) & 0x78) + 60;
  v59[46] = v59[14] - ((2 * v59[14]) & 0x78) + 60;
  v59[45] = v59[13] - ((v59[13] << ((a1 - 30) ^ 0x99)) & 0x78) + 60;
  v59[44] = v59[12] - ((2 * v59[12]) & 0x78) + 60;
  v59[43] = v59[11] - ((2 * v59[11]) & 0x78) + 60;
  v59[42] = v59[10] - ((2 * v59[10]) & 0x78) + 60;
  v59[41] = v59[9] - ((2 * v59[9]) & 0x78) + 60;
  v59[40] = v59[8] - ((2 * v59[8]) & 0x78) + 60;
  v59[39] = v59[7] - ((2 * v59[7]) & 0x78) + 60;
  v59[38] = v59[6] - ((2 * v59[6]) & 0x78) + 60;
  v59[37] = v59[5] - ((2 * v59[5]) & 0x78) + 60;
  v59[36] = v59[4] - ((2 * v59[4]) & 0x78) + 60;
  v59[35] = v59[3] - ((2 * v59[3]) & 0x78) + 60;
  v59[34] = v59[2] - ((2 * v59[2]) & 0x78) + 60;
  v59[33] = v59[1] - ((2 * v59[1]) & 0x78) + 60;
  *v58 = *v59 - ((2 * *v59) & 0x78) + 60;
  *(v60 - 224) = (a1 - 2140800644) ^ (914963389 * ((((v60 - 232) | 0x48259855) - ((v60 - 232) & 0x48259855)) ^ 0x64D9292E));
  v62 = (*(v57 + 8 * (a1 ^ 0x3410)))(v60 - 232);
  *v59 = *(v60 - 232) ^ 0xAC;
  return (*(a57 + 8 * ((46 * (((v61 - 4504) | 0xA4A) != 2627)) ^ v61)))(v62);
}

uint64_t sub_100209560()
{
  STACK[0x9B8] = v2;
  v4 = STACK[0x428];
  STACK[0x9C0] = STACK[0x428];
  return (*(v3 + 8 * ((7634 * (v2 - v4 > (v1 ^ 0xFFFFFFFFFFFFF4D2) + (v0 - 1580))) ^ v0)))();
}

uint64_t sub_1002095CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a17 = 1317436891 * ((((2 * &a15) | 0xBEF964D4) - &a15 - 1602007658) ^ 0xEF7F2A1C) + 8154;
  a15 = &a11;
  v19 = (*(v17 + 77096))(&a15);
  return (*(v17 + 8 * ((3085 * (a16 == v18 + 16253105)) ^ v18)))(v19);
}

uint64_t sub_10020965C@<X0>(_BYTE *a1@<X8>)
{
  *(v2 + 72) = 32;
  *(v2 + 39) = a1[55];
  *(v2 + 38) = a1[54];
  *(v2 + 37) = a1[53];
  *(v2 + 36) = a1[52];
  *(v2 + 35) = a1[51];
  *(v2 + 34) = a1[50];
  *(v2 + 33) = a1[49];
  *(v2 + 32) = a1[48];
  *(v2 + 31) = a1[47];
  *(v2 + 30) = a1[46];
  *(v2 + 29) = a1[45];
  *(v2 + 28) = a1[44];
  *(v2 + 27) = a1[43];
  *(v2 + 26) = a1[42];
  *(v2 + 25) = a1[41];
  *(v2 + 24) = a1[40];
  *(v2 + 23) = a1[39];
  *(v2 + 22) = a1[38];
  *(v2 + 21) = a1[37];
  *(v2 + 20) = a1[36];
  *(v2 + 19) = a1[35];
  *(v2 + 18) = a1[34];
  *(v2 + 17) = a1[33];
  *(v2 + 16) = a1[32];
  *(v2 + 15) = a1[31];
  *(v2 + 14) = a1[30];
  *(v2 + 13) = a1[29];
  *(v2 + 12) = a1[28];
  *(v2 + 11) = a1[27];
  *(v2 + 10) = a1[26];
  *(v2 + 9) = a1[25];
  *(v2 + 8) = a1[24];
  return (*(v3 + 8 * ((63 * (((v1 + 1) ^ (STACK[0x810] == 0)) & 1)) ^ v1 & 0x1F05B6FFu)))();
}

uint64_t sub_1002097A8@<X0>(int a1@<W3>, int a2@<W4>, int a3@<W8>)
{
  v9 = (v6 + 4 * v4);
  v10 = v4 + 1;
  *v9 = *(v8 + 4 * (*(v6 + 4 * v10) & 1)) ^ v9[397] ^ ((*(v6 + 4 * v10) & ((a3 + a1) & v5 ^ a2) | v3 & 0x80000000) >> 1);
  return (*(v7 + 8 * (((8 * (v10 == 227)) | (32 * (v10 == 227))) ^ a3)))();
}

uint64_t sub_100209808()
{
  v2 = STACK[0x520];
  STACK[0x340] = STACK[0x520];
  LODWORD(STACK[0x684]) = STACK[0x3C8];
  STACK[0x5B0] = &STACK[0x5E0];
  STACK[0x788] = 0;
  LODWORD(STACK[0x584]) = 197499219;
  STACK[0x5C8] = 0;
  STACK[0x418] = 0;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 + 28) ^ 0xF37 ^ (v0 + 1696770025) & 0x9ADD5B26)) ^ (v0 + 28))))();
}

uint64_t sub_100209974()
{
  v2 = STACK[0x5C8];
  STACK[0x3A0] = STACK[0x5C8];
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 1291) ^ (v0 + 19) ^ 0x6FE)) ^ (v0 + 19))))();
}

uint64_t sub_100209A80@<X0>(int a1@<W8>)
{
  *STACK[0x430] = v1;
  LODWORD(STACK[0x41C]) = v3;
  return (*(v2 + 8 * ((124 * (v3 == ((((a1 ^ 0x2FC9) - 1460) | 8) ^ 0xF81BC7))) ^ a1 ^ 0x2FC9)))();
}

void sub_100209AEC()
{
  v0 = *(&off_100315F70 + ((-85 * ((dword_100330E70 + dword_100330B48) ^ 0xDF)) ^ byte_1002B0520[byte_1002A5EB0[(-85 * ((dword_100330E70 + dword_100330B48) ^ 0xDF))] ^ 0xAD]) + 238);
  v1 = *(&off_100315F70 + (byte_1002A5FB0[byte_1002BF560[(-85 * ((dword_100330E70 + *v0) ^ 0xDF))] ^ 0xE9] ^ (-85 * ((dword_100330E70 + *v0) ^ 0xDF))) + 57);
  v2 = &v4[*v1 - *v0];
  *v0 = 2054362027 * (v2 - 0xB4207763EF64BDFLL);
  *v1 = 2054362027 * (v2 ^ 0xB4207763EF64BDFLL);
  v5[0] = 476323082 - 1710126949 * ((v5 & 0x8AE16ED6 | ~(v5 | 0x8AE16ED6)) ^ 0x4705CAB9);
  LODWORD(v1) = 2054362027 * ((*v1 + *v0) ^ 0x3EF64BDF);
  v3 = *(&off_100315F70 + ((-85 * ((dword_100330E70 + dword_100330B48) ^ 0xDF)) ^ byte_1002B0520[byte_1002A5EB0[(-85 * ((dword_100330E70 + dword_100330B48) ^ 0xDF))] ^ 0x80]) + 178) - 8;
  (*&v3[8 * (v1 ^ byte_1002A5FB0[byte_1002BF560[v1] ^ 0x71]) + 75816])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100209D20()
{
  v3 = STACK[0x858];
  STACK[0x7C0] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (((v3 != 0) * (((3 * (v1 ^ 0xF90)) ^ 0x244A) - 444)) ^ (3 * (v1 ^ 0xF90)))))();
}

uint64_t sub_100209D64(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v7 - 16;
  v11 = *(a4 + v10 - 16);
  *&v12 = a4 + v10 - 15;
  *(&v12 + 1) = a4 + v10 - 16;
  *&STACK[0x260] = v12;
  *&STACK[0x270] = v11;
  *&v12 = a4 + v10 - 13;
  *(&v12 + 1) = a4 + v10 - 14;
  *&STACK[0x250] = v12;
  v13.i64[0] = a4 + v10 - 7;
  v13.i64[1] = a4 + v10 - 8;
  v14.i64[0] = a4 + v10 - 5;
  v14.i64[1] = a4 + v10 - 6;
  v15.i64[0] = a4 + v10 - 1;
  v15.i64[1] = a4 + v10 - 2;
  v16.i64[0] = a4 + v10 - 3;
  v16.i64[1] = a4 + v10 + v6 - 3008;
  v17 = *&STACK[0x390];
  v18 = vandq_s8(v16, *&STACK[0x3A0]);
  v19 = vandq_s8(v15, *&STACK[0x3A0]);
  v20 = vandq_s8(v14, *&STACK[0x3A0]);
  v21 = vandq_s8(v13, *&STACK[0x3A0]);
  v22 = vsraq_n_u64(vshlq_n_s64(v21, 0x38uLL), v21, 8uLL);
  v23 = vsraq_n_u64(vshlq_n_s64(v20, 0x38uLL), v20, 8uLL);
  v24 = vsraq_n_u64(vshlq_n_s64(v19, 0x38uLL), v19, 8uLL);
  v25 = vsraq_n_u64(vshlq_n_s64(v18, 0x38uLL), v18, 8uLL);
  v26 = vaddq_s64(v24, *&STACK[0x390]);
  v27 = vaddq_s64(v23, *&STACK[0x390]);
  v29 = *&STACK[0x370];
  v28 = *&STACK[0x380];
  v30 = *&STACK[0x360];
  *&STACK[0x240] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x370], v25), *&STACK[0x360]), vorrq_s8(vaddq_s64(v25, *&STACK[0x390]), *&STACK[0x380]));
  v31 = vaddq_s64(vorrq_s8(vsubq_s64(v29, v24), v30), vorrq_s8(v26, v28));
  v32 = *&STACK[0x320];
  v33 = vsubq_s64(*&STACK[0x320], vaddq_s64(vorrq_s8(vsubq_s64(v29, v22), v30), vorrq_s8(vaddq_s64(v22, v17), v28)));
  v34 = vsubq_s64(*&STACK[0x320], vaddq_s64(vorrq_s8(vsubq_s64(v29, v23), v30), vorrq_s8(v27, v28)));
  v35 = veorq_s8(v34, *&STACK[0x310]);
  v36 = veorq_s8(v33, *&STACK[0x310]);
  v37 = *&STACK[0x310];
  v38 = *&STACK[0x2F0];
  v39 = veorq_s8(v33, *&STACK[0x300]);
  v40 = veorq_s8(v34, *&STACK[0x300]);
  v41 = *&STACK[0x300];
  v42 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), v39), *&STACK[0x2F0]);
  v43 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), v40), *&STACK[0x2F0]);
  v44 = veorq_s8(v43, vsraq_n_u64(vshlq_n_s64(v40, 3uLL), v40, 0x3DuLL));
  v45 = veorq_s8(v42, vsraq_n_u64(vshlq_n_s64(v39, 3uLL), v39, 0x3DuLL));
  v46 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v45);
  v48 = vaddq_s64(v46, v44);
  v49 = *&STACK[0x2D0];
  v50 = *&STACK[0x2E0];
  v51 = *&STACK[0x2B0];
  v52 = *&STACK[0x2C0];
  v53 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v48, v48), *&STACK[0x2E0]), v48), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v54 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v47, v47), *&STACK[0x2E0]), v47), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v55 = veorq_s8(v54, vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL));
  v56 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL));
  v57 = vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v56);
  v59 = veorq_s8(vaddq_s64(v57, v55), *&STACK[0x2B0]);
  v60 = veorq_s8(v58, *&STACK[0x2B0]);
  v61 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = *&STACK[0x340];
  v67 = *&STACK[0x350];
  v68 = veorq_s8(vaddq_s64(v64, v62), *&STACK[0x350]);
  v69 = veorq_s8(v65, *&STACK[0x350]);
  v70 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v71 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v72 = veorq_s8(v68, v70);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL);
  v74 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v72);
  v75 = vaddq_s64(v73, v71);
  v76 = veorq_s8(v75, *&STACK[0x340]);
  v77 = v8;
  v78 = *&STACK[0x330];
  v79 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v75, v8), *&STACK[0x330]), v76), vandq_s8(v76, v8));
  v80 = veorq_s8(v74, *&STACK[0x340]);
  v81 = *&STACK[0x290];
  v82 = *&STACK[0x2A0];
  v83 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v74, v8), *&STACK[0x330]), v80), vandq_s8(v80, v8)), *&STACK[0x2A0]);
  v84 = veorq_s8(v79, *&STACK[0x2A0]);
  v85 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v86 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v87 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v85), *&STACK[0x290]);
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v86), *&STACK[0x290]);
  v89.i64[0] = a4 + v10 - 11;
  v89.i64[1] = a4 + v10 - 12;
  *&STACK[0x230] = v89;
  v90 = vsubq_s64(v32, v31);
  v227.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL))), v9), vnegq_s64(vandq_s8(vshlq_n_s64(v13, 3uLL), *&STACK[0x220])));
  v227.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL))), v9), vnegq_s64(vandq_s8(vshlq_n_s64(v14, 3uLL), *&STACK[0x220])));
  v91 = veorq_s8(v90, v37);
  v92 = veorq_s8(v90, v41);
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92), v38);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v95, v95), v50), v95), v49), v52);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v98 = v51;
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v51);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), v67);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102);
  v104 = veorq_s8(v103, v66);
  v105 = v78;
  v106 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v103, v77), v78), v104), vandq_s8(v104, v77)), v82);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v81);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v107.i64[0] = a4 + v10 - 9;
  v107.i64[1] = a4 + v10 - 10;
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v111 = vandq_s8(v107, *&STACK[0x3A0]);
  v112 = vsubq_s64(v32, *&STACK[0x240]);
  v227.val[0] = vshlq_u64(veorq_s8(v110, v9), vnegq_s64(vandq_s8(vshlq_n_s64(v15, 3uLL), *&STACK[0x220])));
  v113 = veorq_s8(v112, v37);
  v114 = veorq_s8(v112, v41);
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v38);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = v49;
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v117, v117), v50), v117), v49), v52);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120), v98);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v67);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v126 = veorq_s8(v125, v66);
  v127 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v125, v77), v105), v126), vandq_s8(v126, v77)), v82);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), v81);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v131 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v132 = vandq_s8(v89, *&STACK[0x3A0]);
  v133 = vaddq_s64(v131, v130);
  v134 = vandq_s8(*&STACK[0x250], *&STACK[0x3A0]);
  v227.val[1] = vshlq_u64(veorq_s8(v133, v9), vnegq_s64(vandq_s8(vshlq_n_s64(v16, 3uLL), *&STACK[0x220])));
  v135 = v77;
  v136 = vandq_s8(*&STACK[0x260], *&STACK[0x3A0]);
  v137 = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v138 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v139 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v140 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v141 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x370], v140), *&STACK[0x360]), vorrq_s8(vaddq_s64(v140, *&STACK[0x390]), *&STACK[0x380]));
  v142 = vsubq_s64(v32, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x370], v137), *&STACK[0x360]), vorrq_s8(vaddq_s64(v137, *&STACK[0x390]), *&STACK[0x380])));
  v143 = vsubq_s64(v32, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x370], v138), *&STACK[0x360]), vorrq_s8(vaddq_s64(v138, *&STACK[0x390]), *&STACK[0x380])));
  v144 = v32;
  v138.i64[0] = vqtbl4q_s8(v227, *&STACK[0x210]).u64[0];
  v145 = veorq_s8(v143, v37);
  v146 = veorq_s8(v142, v37);
  v147 = veorq_s8(v142, v41);
  v148 = veorq_s8(v143, v41);
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147), v38);
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v148), v38);
  v151 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v152 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v153 = veorq_s8(v149, v151);
  v154 = vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL);
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v153);
  v156 = vaddq_s64(v154, v152);
  v157 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v156, v156), v50), v156), v118), v52);
  v158 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v155, v155), v50), v155), v118), v52);
  v159 = vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL);
  v160 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v161 = veorq_s8(v157, v159);
  v162 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v161);
  v164 = veorq_s8(vaddq_s64(v162, v160), v98);
  v165 = veorq_s8(v163, v98);
  v227.val[2] = v98;
  v166 = vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL);
  v167 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v168 = veorq_s8(v164, v166);
  v169 = vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL);
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v168);
  v171 = veorq_s8(vaddq_s64(v169, v167), *&STACK[0x350]);
  v172 = veorq_s8(v170, *&STACK[0x350]);
  v173 = vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL);
  v174 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v175 = veorq_s8(v171, v173);
  v176 = vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL);
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v175);
  v178 = vaddq_s64(v176, v174);
  v179 = veorq_s8(v178, *&STACK[0x340]);
  v180 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v178, v135), *&STACK[0x330]), v179), vandq_s8(v179, v135));
  v181 = veorq_s8(v177, *&STACK[0x340]);
  v182 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v177, v135), *&STACK[0x330]), v181), vandq_s8(v181, v135)), v82);
  v183 = veorq_s8(v180, v82);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v185 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184), v81);
  v187 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v185), v81);
  v188 = vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL);
  v189 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v190 = vsubq_s64(v32, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x370], v139), *&STACK[0x360]), vorrq_s8(vaddq_s64(v139, *&STACK[0x390]), *&STACK[0x380])));
  v226.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), veorq_s8(v186, v188)), v9), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x260], 3uLL), *&STACK[0x220])));
  v226.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v189), v9), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x250], 3uLL), *&STACK[0x220])));
  v191 = veorq_s8(v190, v37);
  v192 = veorq_s8(v190, v41);
  v193 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192), v38);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v194);
  v196 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v195, v195), v50), v195), v118), v52);
  v197 = veorq_s8(v196, vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v198 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v197), v98);
  v199 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v200 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL), v199), *&STACK[0x350]);
  v201 = veorq_s8(v200, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201);
  v203 = veorq_s8(v202, *&STACK[0x340]);
  v204 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v202, v135), *&STACK[0x330]), v203), vandq_s8(v203, v135)), v82);
  v205 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v206 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v205), v81);
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v205, 3uLL), v205, 0x3DuLL)));
  v208 = vsubq_s64(v144, v141);
  v226.val[1] = vshlq_u64(veorq_s8(v207, v9), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x230], 3uLL), *&STACK[0x220])));
  v209 = veorq_s8(v208, v37);
  v210 = veorq_s8(v208, v41);
  v211 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v210), v38);
  v212 = veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v213 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v212);
  v214 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v213, v213), v50), v213), v118), v52);
  v215 = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL));
  v216 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215), v227.val[2]);
  v217 = veorq_s8(v216, vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL));
  v218 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL), v217), *&STACK[0x350]);
  v219 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v220 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v219);
  v221 = veorq_s8(v220, *&STACK[0x340]);
  v222 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v220, v135), *&STACK[0x330]), v221), vandq_s8(v221, v135)), v82);
  v223 = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  v224 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v223), v81);
  v226.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), veorq_s8(v224, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL))), v9), vnegq_s64(vandq_s8(vshlq_n_s64(v107, 3uLL), *&STACK[0x220])));
  v138.i64[1] = vqtbl4q_s8(v226, *&STACK[0x210]).u64[0];
  v226.val[0] = vrev64q_s8(v138);
  *(a5 + v10) = veorq_s8(vextq_s8(v226.val[0], v226.val[0], 8uLL), *&STACK[0x270]);
  return (*(v5 + 8 * ((31 * (a2 + v10 != 0)) ^ a1)))();
}

uint64_t sub_100209D6C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = *v1;
  *(a1 + 88) = *(v1 + 72);
  *(a1 + 92) = *(v1 + 76);
  *(a1 + 96) = *(v1 + 80);
  *(a1 + 97) = *(v1 + 81);
  *(a1 + 120) = *(v1 + 104);
  *(a1 + 100) = *(v1 + 84);
  *(a1 + 124) = *(v1 + 108) & 1;
  *(a1 + 55) = *(v1 + 39) ^ 0x13 ^ *(*(&off_100315F70 + (v2 ^ 0x665)) + 7) ^ *(*(&off_100315F70 + (v2 ^ 0x75F)) + (v2 ^ 0x22D3u) - 9402) ^ *(*(&off_100315F70 + (v2 ^ 0x734)) + 15) ^ 0x3C;
  return (*(v3 + 8 * v2))();
}

uint64_t sub_100209E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = ((&a14 & 0xA837C4BD | ~(&a14 | 0xA837C4BD)) ^ 0xFA1E820) * v20;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674574029;
  a15 = v23 + 283934023;
  a16 = a12;
  a17 = &a11;
  v24 = (*(v19 + 8 * (v22 + 4523)))(&a14);
  return (*(v19 + 8 * (((a14 == v21) * (((v22 - 4565) | 0xD27) ^ (v22 - 3970))) ^ v22)))(v24);
}

uint64_t sub_100209F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12)
{
  v14 = v13 ^ 0x3161;
  v15 = (*(v12 + 8 * (v14 ^ 0x3773)))(a12) == ((v14 - 3283) | 0xA) - 1498;
  return (*(v12 + 8 * ((29 * v15) ^ v14)))();
}

uint64_t sub_10020A144@<X0>(int a1@<W8>)
{
  v4 = v1 + 6686;
  v5 = a1 - v2 + 2111972923;
  v6 = (v5 ^ 0x1B19999E) & (2 * (v5 & 0x821DD9DF)) ^ v5 & 0x821DD9DF;
  v7 = ((2 * (v5 ^ (v1 + 4657) ^ 0x1B039CCB)) ^ 0x323CA5AE) & (v5 ^ (v1 + 4657) ^ 0x1B039CCB) ^ (2 * (v5 ^ (v1 + 4657) ^ 0x1B039CCB)) & (751 * ((v1 + 6686) ^ 0x1FBB) - 1726074223);
  v8 = v7 ^ 0x89025251;
  v9 = (v7 ^ 0x101C0084) & (4 * v6) ^ v6;
  v10 = ((4 * v8) ^ 0x64794B5C) & v8 ^ (4 * v8) & 0x991E52D4;
  v11 = (v10 ^ 0x184250) & (16 * v9) ^ v9;
  v12 = ((16 * (v10 ^ 0x99061083)) ^ 0x91E52D70) & (v10 ^ 0x99061083) ^ (16 * (v10 ^ 0x99061083)) & 0x991E52D0;
  v13 = v11 ^ 0x991E52D7 ^ (v12 ^ 0x91040000) & (v11 << 8);
  v14 = v5 ^ (2 * ((v13 << 16) & 0x191E0000 ^ v13 ^ ((v13 << 16) ^ 0x52D70000) & (((v12 ^ 0x81A5287) << 8) & 0x191E0000 ^ 0x10C0000 ^ (((v12 ^ 0x81A5287) << 8) ^ 0x1E520000) & (v12 ^ 0x81A5287))));
  LODWORD(STACK[0x804]) = v14 ^ 0x9BC8E522;
  v15 = (*(v3 + 8 * (v4 ^ 0x3A12)))(v14 ^ 0x900D7C71, 0x100004077774924);
  STACK[0x400] = v15;
  return (*(v3 + 8 * ((v15 != 0) | v4)))();
}

uint64_t sub_10020A320(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v15 = ((((((a12 - 12) ^ 0x5D) + 115) ^ (a12 - 12) ^ (((a12 - 12) ^ 0xE2) - 50) ^ (((a12 - 12) ^ 0xB7) - 103)) ^ (((a3 - 22) ^ (a12 - 12)) + ((a3 - 52) ^ 0x42))) & 0xF) != ((a3 + 1197124113) & 0xB8A54FC7 ^ 0xFC7) || ((((a12 + 14743028) ^ 0x3A111B5D) - 2057052813) ^ (a12 + 14743028) ^ (((a12 + 14743028) ^ 0x251B96E2) - 1704374066) ^ (((a12 + 14743028) ^ 0x7FFFFFB7) - 1064486503) ^ (((a3 + 544749034) ^ (a12 + 14743028)) + ((a3 - 1076) ^ 0x9F0A9C42))) == ((a3 - 5093) | 0x810) + 1082994615;
  v16 = *(v12 + 8 * ((122 * v15) ^ (a3 - 1076)));
  *(v13 - 128) = -42899;
  return v16();
}

uint64_t sub_10020A414@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v58 = (a1 - 4074) | 0x2040;
  (*(v57 + 8 * (a1 ^ 0x3597u)))();
  return (*(a57 + 8 * (((STACK[0x7A0] != 0) * (((v58 - 4999) ^ 0xFFFFE9A8) + (v58 ^ 0x3AAE))) ^ v58)))();
}

void sub_10020A4A4(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  *&STACK[0x2C0] = vdupq_n_s64(0x38uLL);
  *&STACK[0x2D0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x2A0] = vdupq_n_s64(a2);
  *&STACK[0x2B0] = vdupq_n_s64(0x568FD0F9DF82F1E3uLL);
  *&STACK[0x280] = vdupq_n_s64(v4);
  *&STACK[0x290] = vdupq_n_s64(v5);
  *&STACK[0x260] = vdupq_n_s64(v8);
  *&STACK[0x270] = vdupq_n_s64(v6);
  *&STACK[0x240] = vdupq_n_s64(0xFEE3F116FE675A82);
  *&STACK[0x250] = vdupq_n_s64(v7);
  *&STACK[0x220] = vdupq_n_s64(0xF2620266DFD8DE82);
  *&STACK[0x230] = vdupq_n_s64(0x57D072DFC3A5F657uLL);
  *&STACK[0x200] = vdupq_n_s64(a4);
  *&STACK[0x210] = vdupq_n_s64(a3);
  *&STACK[0x2E0] = xmmword_1002BF690;
  JUMPOUT(0x10020A5ECLL);
}

uint64_t sub_10020B0D8(_DWORD *a1)
{
  v1 = *a1 + 1358806181 * ((a1 & 0x8856F1B3 | ~(a1 | 0x8856F1B3)) ^ 0x488662CF);
  v2 = 1317436891 * ((v4 & 0x43E3132E | ~(v4 | 0x43E3132E)) ^ 0xC1F74A7);
  v4[0] = 538291948 - v2;
  v4[1] = v2 ^ (v1 + 1117234582);
  return (*(*(&off_100315F70 + (v1 + 1117227430)) + (v1 + 1117236857) - 1))(v4);
}

void sub_10020B1E0(uint64_t a1)
{
  v1 = *(a1 + 4) ^ (33731311 * ((2 * (a1 & 0x31F06A43) - a1 + 1309644220) ^ 0x77F95F9F));
  __asm { BRAA            X10, X17 }
}

void sub_10020B2E0()
{
  (*(v1 + 8 * (v0 ^ 0x2D52)))();
  STACK[0x4E8] = 0;
  sub_100226D00();
}

void sub_10020B308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = v5 || a4 == 0 || a5 == 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10020B388@<X0>(int a1@<W8>)
{
  v7 = LOWORD(STACK[0x8EE]);
  if (v7 == 17168)
  {
    goto LABEL_4;
  }

  if (v7 == 33980)
  {
    v9 = STACK[0x780];
    STACK[0x700] = v1;
    LODWORD(STACK[0x7B4]) = a1;
    STACK[0x748] = v9 + v2;
    v8 = v3;
    v5 = 16257999;
    return (*(v6 + 8 * (((v5 == v4) * (((v8 + 5706) | 0x121) + 2885)) ^ (v8 + 1169))))();
  }

  v8 = v3;
  if (v7 == 20706)
  {
LABEL_4:
    STACK[0x700] = v1;
    LODWORD(STACK[0x7B4]) = a1;
    v5 = 16215638;
    v8 = v3;
  }

  return (*(v6 + 8 * (((v5 == v4) * (((v8 + 5706) | 0x121) + 2885)) ^ (v8 + 1169))))();
}

void sub_10020B424(int a1@<W8>)
{
  v7 = STACK[0x530];
  v8 = 1358806181 * ((-308001705 - ((v5 - 232) | 0xEDA44457) + ((v5 - 232) | 0x125BBBA8)) ^ 0x2D74D72B);
  *(v5 - 232) = v1;
  *(v5 - 224) = v8 + a1 - 2419;
  *(v5 - 220) = (v4 ^ 0xEF7FFD75) - v8 + ((2 * v4) & 0xDEFFFAEA) + (((a1 - 6943) | 0x819) ^ 0x7DE8D3F9);
  *(v5 - 216) = v2;
  *(v5 - 208) = v1;
  *(v5 - 192) = v7;
  *(v5 - 200) = (v3 ^ 0xBD9DD0A9) + v8;
  (*(v6 + 8 * (a1 + 2339)))(v5 - 232);
  JUMPOUT(0x100141EF8);
}

uint64_t sub_10020B4F8()
{
  STACK[0x9B8] = v1;
  v3 = STACK[0x758];
  STACK[0x9C0] = STACK[0x758];
  return (*(v2 + 8 * ((52 * (v1 - v3 > ((v0 - 838) ^ v0 ^ 0x1195 ^ 0x14DAuLL))) ^ v0)))();
}

void sub_10020B618()
{
  STACK[0x7F8] = 0;
  STACK[0x908] = *(v1 + 8 * (v0 - 5684));
  JUMPOUT(0x100166C58);
}

uint64_t sub_10020B69C()
{
  v2 = *(STACK[0x820] + 24);
  STACK[0x3E8] = v2;
  return (*(v1 + 8 * (((((v2 == 0) ^ (59 * (v0 ^ 0xE9) + 1)) & 1) * ((v0 + 504) ^ 0x17C5)) ^ v0)))();
}

uint64_t sub_10020B6F8()
{
  v7 = v5;
  v8 = (v1 + 5632) ^ (1824088897 * (((&v6 | 0x47F7BC9E) - (&v6 & 0x47F7BC9E)) ^ 0x1F9E6FFC));
  (*(v0 + 8 * (v1 ^ 0x2F16)))(&v6);
  v8 = ((v1 ^ 0x1984) + 3452) ^ (1824088897 * (&v6 ^ 0x5869D362));
  v7 = v4;
  (*(v0 + 8 * (v1 ^ 0x2F16)))(&v6);
  return (v2 - 16257999);
}

uint64_t sub_10020B7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = (*(v65 + 8 * (v64 + 8303)))(32, 0x100004077774924);
  STACK[0x3C0] = v66;
  return (*(a64 + 8 * (((v66 == 0) * (((2 * v64) ^ 0x2C) + ((v64 + 3293) ^ 0xFFFFE424))) ^ v64)))();
}

uint64_t sub_10020B858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x9A6]) = a7;
  LODWORD(STACK[0x350]) = a7;
  return sub_1001A3D8C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_10020B8AC()
{
  v5 = v4 + v0 + 2352;
  *v1 = v8;
  v12 = (v4 + v0 + 1123908756) ^ ((((&v10 | 0x131CD9) - &v10 + (&v10 & 0xFFECE320)) ^ 0x587ACFBB) * v3);
  v11 = v7;
  (*(v2 + 8 * (v4 + v0 + 1123910022)))(&v10);
  v12 = (v5 + 1123906404) ^ ((((&v10 | 0xEC4303FF) - &v10 + (&v10 & 0x13BCFC00)) ^ 0xB42AD09D) * v3);
  v11 = v9;
  (*(v2 + 8 * (v5 ^ v4)))(&v10);
  return 0;
}

uint64_t sub_10020BAE0(uint64_t a1)
{
  *(a1 + 80) = 16640;
  *a1 = 1442350434;
  strcpy((a1 + 8), "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
  *(a1 + 73) = 0;
  *(a1 + 74) = 0;
  *(a1 + 76) = 0;
  v2 = STACK[0x828];
  *(v2 + 84) = 7;
  *(v2 + 105) = 0;
  *(v2 + 106) = 0;
  strcpy((v2 + 88), "<<<<<<<<<<<<<<<<");
  *(v2 + 108) = 0;
  *v1 = v2;
  return (STACK[0x838])();
}

uint64_t sub_10020BB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, __int16 a15, char a16, uint64_t a17, char a18, int a19, char a20, uint64_t a21, int a22, unsigned int a23, uint64_t a24, char *a25, unsigned int a26, char *a27)
{
  a26 = (v27 + 1407) ^ (1710126949 * ((((&a22 | 0xA18A7A68) ^ 0xFFFFFFFE) - (~&a22 | 0x5E758597)) ^ 0x6C6EDE07));
  a27 = &a18;
  a24 = a17;
  a25 = &a14;
  (*(v29 + 8 * (v27 + 7656)))(&a22);
  a27 = &a20;
  a26 = (v27 + 1407) ^ (1710126949 * (((&a22 ^ 0x33840F61 | 0x8C7B7016) + (&a22 ^ 0x97002 | 0x73848FE9)) ^ 0x19624F2));
  a24 = a17;
  a25 = &a12;
  (*(v29 + 8 * (v27 + 7656)))(&a22);
  a23 = (v27 + 1301) ^ (33731311 * ((((2 * &a22) | 0xAD4F2FAE) - &a22 + 693659689) ^ 0xEF515DF4));
  a24 = a17;
  a25 = &a16;
  (*(v29 + 8 * (v27 + 7650)))(&a22);
  a24 = a17;
  LODWORD(a25) = v27 - 2008441969 * ((1879425365 - (&a22 ^ 0x6D741659 | 0x7005C155) + (&a22 ^ 0x6D741659 | 0x8FFA3EAA)) ^ 0xAA177CFD) + 3734;
  v30 = (*(v29 + 8 * (v27 + 7700)))(&a22);
  return (*(v29 + 8 * ((7460 * (a22 == v27 + 2624 + v28)) ^ v27)))(v30);
}

uint64_t sub_10020BDAC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  *a4 = 0;
  *a5 = 0;
  a15 = 476323082 - 1710126949 * (((&a15 | 0x8424121F) + (~&a15 | 0x7BDBEDE0)) ^ 0xB63F498E);
  v17 = (*(v16 + 77088))(&a15);
  return (*(v16 + 8 * ((102 * (a16 == 16257999)) ^ 0x53Cu)))(v17);
}

uint64_t sub_10020BE74()
{
  LODWORD(STACK[0x67C]) = v3;
  STACK[0x730] = STACK[0x668];
  STACK[0x510] = *(v4 + 8 * (v2 - 1546));
  STACK[0x3B0] = &STACK[0x730];
  v0 = STACK[0x730];
  STACK[0x480] = STACK[0x730];
  return (*(v4 + 8 * (((v0 != 0) * ((6 * ((v2 - 1557894480) & 0x5CDB8FA8 ^ 0x217)) ^ 0xDAA)) ^ (v2 - 1557894480) & 0x5CDB8FA8)))();
}

uint64_t sub_10020BF48(uint64_t a1, uint64_t a2, int a3)
{
  v10 = (v8 + 4 * v4);
  v11 = (v3 ^ 0xEE6 ^ (v7 + 2995)) & v5;
  v12 = v4 + 1;
  v13 = *(v8 + 4 * v12);
  v14 = v10[397] ^ ((v13 & 0x7FFFFFFE | v11) >> 1);
  *v10 = (v14 + v6 - (a3 & (2 * v14))) ^ *(&STACK[0x528] + (v13 & 1));
  return (*(v9 + 8 * ((5968 * (v12 == 227)) ^ v3)))();
}

uint64_t sub_10020C0F0@<X0>(void *a1@<X2>, _DWORD *a2@<X3>, int a3@<W4>, int a4@<W5>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  *v49 = v42;
  v50 = v46 ^ ((v48 + v46 + v45 - v43 - 622) >> 11);
  v51 = (a5 ^ (((v50 << 7) & 0x9D2C5680 ^ v50) << 15)) & v47 ^ (v50 << 7) & 0x9D2C5680 ^ v50;
  return sub_1001E4EE4(a1, a2, a3, a4, (v51 >> ((v44 + v45 - 112) ^ 0x9D)) ^ v51, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_10020C190(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = (a1 + 4);
  v67 = __ROR8__(a1 & 0xFFFFFFFFFFFFFFF8, 8);
  v68 = -2 - (((0xD263A9391262C1D1 - v67) | 0x23ABB080323C1D9ELL) + ((v67 + 0x2D9C56C6ED9D3E2ELL) | 0xDC544F7FCDC3E261));
  v69 = __ROR8__(v68 ^ 0xA8C1DB874C757D0FLL, 8);
  v68 ^= 0xC4236DB0209C8C7ELL;
  v70 = __ROR8__((((2 * (v69 + v68)) | 0x99D223D2D02820B2) - (v69 + v68) - 0x4CE911E968141059) ^ 0xB77E0557A23878B0, 8);
  v71 = (((2 * (v69 + v68)) | 0x99D223D2D02820B2) - (v69 + v68) - 0x4CE911E968141059) ^ 0xB77E0557A23878B0 ^ __ROR8__(v68, 61);
  v72 = (((2 * (v70 + v71)) & 0x8F6525C9DD8836E8) - (v70 + v71) - 0x47B292E4EEC41B75) ^ 0x5C211E60F3C7390;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0xFD8B533ED96A4334;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0xAC7DA0564C1838BLL;
  v77 = __ROR8__(v76, 8);
  v78 = v76 ^ __ROR8__(v75, 61);
  v79 = (((2 * (v77 + v78)) & 0xF027525D3234064ALL) - (v77 + v78) + 0x7EC56D166E5FCDALL) ^ 0x667CF1B31898F7A3;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = __ROR8__(v79, 8);
  v82 = (((v81 + v80) & 0x8EAD920A7052A3D5 ^ 0xE0482026042A2D4) + ((v81 + v80) & 0x71526DF58FAD5C2ALL ^ 0x21120D218DA55809) - 1) ^ 0xA15BE1E9D9DADD82;
  v83 = v82 ^ __ROR8__(v80, 61);
  v84 = __ROR8__(v82, 8);
  v85 = *(a64 + 8 * (v64 - 2295));
  LOBYTE(v83) = ((0x3205D7FD44242D8DLL - ((v84 + v83) | 0x3205D7FD44242D8DLL) + ((v84 + v83) | 0xCDFA2802BBDBD272)) ^ 0x9C4169731436145ALL) >> (8 * (a1 & 7u));
  v86 = __ROR8__((a1 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  *a1 = v83;
  v87 = ((0x5263A9391262C1D1 - v86) & 0x4BA5C546AFD99716) + v86 + 0x2D9C56C6ED9D3E2ELL - ((v86 + 0x2D9C56C6ED9D3E2ELL) & 0x4BA5C546AFD99716);
  v88 = v87 ^ 0xC0CFAE41D190F787;
  v87 ^= 0xAC2D1876BD7906F6;
  v89 = (__ROR8__(v88, 8) + v87) ^ 0xFB9714BECA2C68E9;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0xBD8F7CFD1E07971BLL;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ 0xFD8B533ED96A4334;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = __ROR8__(v93, 8);
  v96 = (0x1D2752216EB1A3C7 - ((v95 + v94) | 0x1D2752216EB1A3C7) + ((v95 + v94) | 0xE2D8ADDE914E5C38)) ^ 0xE81F77DBF58FDFB3;
  v97 = v96 ^ __ROR8__(v94, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ 0x6190A7627E7D0B79;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ 0x8E4D6ECA343D275ELL;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = __ROR8__(v100, 8);
  *(a1 + 1) = ((((2 * (v102 + v101)) & 0xC884705B0AEFB5E8) - (v102 + v101) + 0x1BBDC7D27A88250BLL) ^ 0x4A0686A3D565E323) >> (8 * ((a1 + 1) & 7));
  v103 = (__ROR8__((a1 + 2) & 0xFFFFFFFFFFFFFFF8, 8) + 0x2D9C56C6ED9D3E2ELL) & 0xFBFFFFFFFFFFFFFFLL;
  v104 = v103 ^ 0x8F6A6B077E496091;
  v103 ^= 0xE388DD3012A091E0;
  v105 = (__ROR8__(v104, 8) + v103) ^ 0xFB9714BECA2C68E9;
  v106 = v105 ^ __ROR8__(v103, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0xBD8F7CFD1E07971BLL;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ 0xFD8B533ED96A4334;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = __ROR8__(v109, 8);
  v112 = (((2 * (v111 + v110)) | 0x333C1D6226586300) - (v111 + v110) + 0x6661F14EECD3CE80) ^ 0x9359D4B477EDB20BLL;
  v113 = v112 ^ __ROR8__(v110, 61);
  v114 = (__ROR8__(v112, 8) + v113) ^ 0x6190A7627E7D0B79;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = __ROR8__(v114, 8);
  v117 = (((2 * (v116 + v115)) | 0xB3087D222DCB6276) - (v116 + v115) + 0x267BC16EE91A4EC5) ^ 0x57C9505B22D89665;
  *(a1 + 2) = ((__ROR8__(v117, 8) + (v117 ^ __ROR8__(v115, 61))) ^ 0x51BB4171AFEDC628) >> (8 * ((a1 + 2) & 7));
  v118 = __ROR8__((a1 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v119 = (v118 + 0x2D9C56C6ED9D3E2ELL) ^ 0xE788DD3012A091E0;
  v120 = (__ROR8__((v118 + 0x2D9C56C6ED9D3E2ELL) ^ 0x8B6A6B077E496091, 8) + v119) ^ 0xFB9714BECA2C68E9;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = __ROR8__(v120, 8);
  v123 = (v122 + v121 - ((2 * (v122 + v121)) & 0x60C6AC64451B9A2ALL) + 0x30635632228DCD15) ^ 0x8DEC2ACF3C8A5A0ELL;
  v124 = v123 ^ __ROR8__(v121, 61);
  v125 = __ROR8__(v123, 8);
  v126 = __ROR8__((0x642DC2ADAD339112 - ((v125 + v124) | 0x642DC2ADAD339112) + ((v125 + v124) | 0x9BD23D5252CC6EEDLL)) ^ 0x66596E6C8BA62DD9, 8);
  v127 = (0x642DC2ADAD339112 - ((v125 + v124) | 0x642DC2ADAD339112) + ((v125 + v124) | 0x9BD23D5252CC6EEDLL)) ^ 0x66596E6C8BA62DD9 ^ __ROR8__(v124, 61);
  v128 = (v126 + v127) ^ 0xAC7DA0564C1838BLL;
  v129 = v128 ^ __ROR8__(v127, 61);
  v130 = __ROR8__(v128, 8);
  v131 = (((v130 + v129) ^ 0x2A44837A6D1B1138) - ((2 * ((v130 + v129) ^ 0x2A44837A6D1B1138)) & 0x2C0C21C03C023D7ALL) - 0x69F9EF1FE1FEE143) ^ 0xDDD234F80D6704FCLL;
  v132 = v131 ^ __ROR8__(v129, 61);
  v133 = __ROR8__(v131, 8);
  v134 = (((2 * (v133 + v132)) & 0x7D331DC7FBD5E894) - (v133 + v132) + 0x4166711C02150BB5) ^ 0xCF2B1FD636282CEBLL;
  v135 = v134 ^ __ROR8__(v132, 61);
  v136 = __ROR8__(v134, 8);
  *(a1 + 3) = ((v136 + v135) ^ 0x51BB4171AFEDC628) >> (8 * ((a1 + 3) & 7));
  return v85(v136, 0x642DC2ADAD339112, 0x6190A7627E7D0B79, 0xDDD234F80D6704FCLL, 0x4BA5C546AFD99716, 0x3205D7FD44242D8DLL, 0x1D2752216EB1A3C7, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

void sub_10020CDA8(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (1358806181 * ((-2 - ((a1 | 0xB5C37DB) + (~a1 | 0xF4A3C824))) ^ 0xCB8CA4A7));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10020CE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = *(a22 + 368);
  v25 = STACK[0x748];
  v26 = ((LODWORD(STACK[0x8C4]) ^ 0xBBB3AED989DFFCAFLL) + 0x444C512676200351) ^ ((LODWORD(STACK[0x8C4]) ^ 0x116A6394B186FF08) - 0x116A6394B186FF08) ^ ((LODWORD(STACK[0x8C4]) ^ 0xAAD9CD4D339C9AF4) + ((((v22 - 3109) | 0x1017) + 1844) ^ 0x552632B2CC6372C7));
  STACK[0x590] = 0;
  if (v24)
  {
    v27 = v25 == 0;
  }

  else
  {
    v27 = 1;
  }

  v29 = !v27 && v26 != -197499219;
  return (*(v23 + 8 * ((26 * v29) | v22)))();
}

uint64_t sub_10020CF54()
{
  *v1 = 0;
  *v0 = 0;
  return sub_10020CF98();
}

uint64_t sub_10020CF98()
{
  v7 = v4;
  v8 = (v0 + 4418) ^ (1824088897 * ((-1820576897 - (&v6 | 0x937C337F) + (&v6 | 0x6C83CC80)) ^ 0x34EA1FE2));
  (*(v1 + 8 * (v0 + 5684)))(&v6);
  v7 = v5;
  v8 = (v0 + 4418) ^ (1824088897 * ((&v6 + 1675866904 - 2 * (&v6 & 0x63E3B318)) ^ 0x3B8A607A));
  (*(v1 + 8 * ((v0 - 915) ^ 0x2E49)))(&v6);
  return (v2 - 16257999);
}

uint64_t sub_10020D0BC(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, unint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (v71 ^ a2) + a33;
  STACK[0x968] = v73;
  return (*(v72 + 8 * ((a71 + 17) ^ (4054 * (v73 > a29)))))();
}

void sub_10020D110()
{
  LODWORD(STACK[0x534]) = v0;
  LODWORD(STACK[0x61C]) = STACK[0x3B0];
  LODWORD(STACK[0x7E0]) = STACK[0x3C0];
  LODWORD(STACK[0x844]) = v1;
  JUMPOUT(0x10020E048);
}

uint64_t sub_10020D1FC()
{
  v3 = STACK[0x8B0];
  LODWORD(STACK[0x7EC]) = v0;
  return (*(v2 + 8 * ((v1 - 1956) ^ ((v1 - 512) | 0x200) ^ (33 * ((v1 - 1956) ^ 0x205)) ^ 0x913 ^ (511 * (v3 == 0)))))();
}

uint64_t sub_10020D250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, int a13, unsigned int a14)
{
  v17 = v16 + 4127;
  a12 = &a9;
  a14 = v17 + 1317436891 * (((&a12 | 0x1448104) - &a12 + (&a12 & 0xFEBB7EF8)) ^ 0xB1471972) + 1567;
  v18 = (*(v14 + 8 * (v17 + 3050)))(&a12);
  return (*(v14 + 8 * (((a13 == ((v17 + 683149389) | 0xD0021843) + v15) * (((v17 - 1874090429) & 0x57E1) - 4141)) ^ v17)))(v18);
}

uint64_t sub_10020D310@<X0>(uint64_t a1@<X3>, unsigned int a2@<W8>)
{
  v4 = ((2 * v3) ^ 0x26D0) + 1576123841 + (((*(v2 + 16) ^ 0x218FB185) + 415294738) ^ ((*(v2 + 16) ^ (((v3 + 2062847614) & 0x850B7575) + 765524635)) + 351165333) ^ ((*(v2 + 16) ^ 0xF3D1417A) - 895609361));
  v5 = (a2 > 0xDB5D90A0) ^ (v4 < 0x24A26F5F);
  v6 = a2 + 614625119 > v4;
  if (v5)
  {
    v6 = a2 > 0xDB5D90A0;
  }

  return (*(a1 + 8 * ((11 * !v6) ^ v3)))();
}

uint64_t sub_10020D3F8@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v3 = (*(a1 + 8 * (a2 + 6815)))();
  v4 = STACK[0x3E8];
  *(v2 + 24) = 0;
  return sub_1002791FC(v3, v5, v6, v4);
}

uint64_t sub_10020D478@<X0>(int a1@<W8>)
{
  v5 = LODWORD(STACK[0x360]);
  if (v5 == 17168)
  {
    return (*(v4 + 8 * ((v3 + 2164) ^ (156 * (a1 == v2 + 4)))))();
  }

  if (v5 == 20706 || v5 == 33980)
  {
    STACK[0x690] = v1;
  }

  return (STACK[0x660])();
}

uint64_t sub_10020D51C@<X0>(unint64_t a1@<X8>)
{
  v4 = LOWORD(STACK[0x8E4]);
  switch(v4)
  {
    case 17168:
      goto LABEL_4;
    case 33980:
      v5 = STACK[0x32C];
      v6 = STACK[0x840];
      STACK[0x7F8] = a1;
      LODWORD(STACK[0x5A4]) = v2;
      return (*(v3 + 8 * (((v6 + v1 == 0) * (((v5 - 2534) | 0x1208) ^ 0x1FF9)) ^ (v5 + 1780))))();
    case 20706:
LABEL_4:
      STACK[0x7F8] = a1;
      break;
  }

  STACK[0x810] = 0;
  LODWORD(STACK[0x5A4]) = 197499219;
  return sub_10022C8D8();
}

void sub_10020D5D8()
{
  LODWORD(STACK[0x584]) = v0;
  LODWORD(STACK[0x83C]) = STACK[0x584];
  JUMPOUT(0x100231B7CLL);
}

uint64_t sub_10020D5F4@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 ^ 0x3D3Du));

  return v3(v1);
}

uint64_t sub_10020D678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  *(v10 + 31) = ((v12 - 21) ^ &a10) * (&a10 + 17);
  *(v10 + 30) = (&a10 ^ 0xBB) * (&a10 + 18);
  return (*(v11 + 8 * v12))();
}

uint64_t sub_10020DCF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, char a16, __int16 a17, char a18, uint64_t a19, int a20, char a21, __int16 a22, char a23, uint64_t a24, uint64_t a25, int a26, unsigned int a27, uint64_t a28, char *a29, unsigned int a30, char *a31)
{
  a28 = a24;
  a29 = &a16;
  a31 = &a14;
  a30 = (v31 - 2131) ^ (1710126949 * (((&a26 | 0x832B8B95) - (&a26 & 0x832B8B95)) ^ 0xB130D005));
  (*(v33 + 8 * (v31 + 4118)))(&a26);
  a31 = &a23;
  a30 = (v31 - 2131) ^ (1710126949 * (((&a26 | 0x9C722DA) - (&a26 & 0x9C722DA)) ^ 0x3BDC794A));
  a28 = a24;
  a29 = &a21;
  (*(v33 + 8 * (v31 + 4118)))(&a26);
  a27 = (v31 - 2237) ^ (33731311 * ((((2 * &a26) | 0x5FFDF104) - &a26 + 1342244734) ^ 0x960832A1));
  a28 = a24;
  a29 = &a18;
  (*(v33 + 8 * (v31 ^ 0x3030)))(&a26);
  a28 = a24;
  LODWORD(a29) = v31 - 2008441969 * ((1752282753 - (&a26 ^ 0x73D2FD09 | 0x6871B681) + (&a26 ^ 0x73D2FD09 | 0x978E497E)) ^ 0xACC5E079) + 196;
  v34 = (*(v33 + 8 * (v31 ^ 0x30C2)))(&a26);
  return (*(v33 + 8 * (((a26 == v32 + 8 * (v31 ^ 0x17F0) + 3008) * (((v31 + 1514401694) & 0x3FF3E) + 13035)) ^ v31)))(v34);
}

void sub_10020DEE0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 16) + 1875091903 * ((a1 & 0x1E492E42 | ~(a1 | 0x1E492E42)) ^ 0xD7C3523E);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10020DFB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = LODWORD(STACK[0x370]);
  if (v8 != 17168)
  {
    v10 = STACK[0x3E8];
    if (v8 == 20706 || (v11 = v7, v8 == 33980))
    {
      STACK[0x7B0] = a6;
      v6 = 16215638;
      v11 = v7;
    }

    LODWORD(STACK[0x6CC]) = v6;
    STACK[0x6D0] = *(v10 + 8 * (v11 - 4858));
    JUMPOUT(0x10017F864);
  }

  return (*(STACK[0x3E8] + 8 * ((v7 - 1916) ^ (8152 * (a3 == 197499223)))))();
}

uint64_t sub_10020E06C(uint64_t a1)
{
  v1 = 914963389 * (a1 ^ 0x2CFCB17B);
  v2 = *a1 + v1;
  v3 = *(a1 + 24) + v1;
  v4 = *(a1 + 48);
  v5 = *(a1 + 16);
  v6 = *(a1 + 40) ^ v1;
  v7 = *(&off_100315F70 + v2 - 1631359808) - 8;
  if (v3 == 1180124370 || v3 == 1180124367)
  {
    __asm { BRAA            X19, X17 }
  }

  v9 = *(a1 + 8);
  v10 = 956911519 * (&v13 ^ 0xEA917005);
  v17 = *(a1 + 32);
  v18 = v9;
  v16 = v2 - 1631352199 + v10;
  v19 = v6 - v10 + 957817425;
  v14 = v4;
  v15 = v5;
  result = (*&v7[8 * v2 - 0x309E375C8])(&v13);
  *(a1 + 4) = v13;
  return result;
}

uint64_t sub_10020E360()
{
  v2 = *(STACK[0x890] + 24);
  STACK[0x4F8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 5593) ^ (v0 - 3448) ^ 0x18F3)) ^ v0)))();
}

uint64_t sub_10020E3A4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v59 = (a1 + 159047122) & 0x768517FF;
  v60 = (*(v58 + 8 * (a1 ^ 0x3799u)))();
  STACK[0x640] -= 32;
  return (*(a57 + 8 * ((7904 * (v57 == ((85 * (v59 ^ 0x7FB) - 1185) | 0x138) + 16255365 + ((85 * (v59 ^ 0x7FB) - 896) | 0x480) - 149)) ^ (85 * (v59 ^ 0x7FB)))))(v60, 16215976);
}

uint64_t sub_10020E480(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, uint64_t a37, uint64_t a38, int a39, uint64_t a40)
{
  v41 = v40 ^ a37 ^ a1;
  v42 = a3 ^ 0xAFA7D106CDCC6F6CLL ^ a5;
  v43 = ((a2 ^ 0xC629C74ADF5BB3E1) - 2 * ((a2 ^ 0xC629C74ADF5BB3E1) & 0x7437158C4264FDBDLL ^ a2 & 0x10) - 0xBC8EA73BD9B0253) ^ a3 ^ 0xAFA7D106CDCC6F6CLL;
  v44 = (v42 ^ ((v40 ^ a37 ^ 0x6062FD38495A6FF2) - (((v40 ^ a37 ^ 0x6062FD38495A6FF2) & 0x76B1039D29D02D6DLL ^ (v40 ^ a37) & 1) << (((a4 ^ 0x9E) - 76) ^ a6)) - 0x94EFC62D62FD294) ^ 0x972401649D56F47) & (v42 ^ 0x614AF833201FE1BCLL);
  v42 ^= 0x9EB507CCDFE01E43;
  v45 = __ROR8__(v42 & ~v43 ^ a2 ^ 0xC629C74ADF5BB3E1, 36);
  v46 = (v41 ^ 0xE5D57A6DC70B30E7) & (v40 ^ a37 ^ 0xFEEB46800940CC65) ^ v42;
  v47 = v44 + v43 - 2 * (v44 & v43);
  v48 = (a2 ^ 0x39D638B520A44C1ELL) & (a3 ^ 0xCE8C8D72222712A3) ^ a2 & 0x951C49F8AD8F8062 ^ v41 ^ 0xE5D57A6DC70B30E7;
  v49 = v40 ^ a37 ^ (v41 ^ 0x1A2A859238F4CF18) & (a2 ^ 0xC629C74ADF5BB3E1);
  v50 = v48 ^ __ROR8__(v45 ^ 0x73AA26038C097A1, 28);
  v51 = v47 ^ 0xB73927F7504FC0F2;
  v52 = (v47 ^ 0xB73927F7504FC0F2) << 57;
  v53 = v46 ^ 0xF38BFF733C051F6 ^ v47;
  v54 = __ROR8__(v51, 41);
  v55 = v49 ^ 0x8BAA41037EB7FF2FLL ^ v46 ^ ((v49 ^ 0x8BAA41037EB7FF2FLL ^ v46) >> 39) ^ (8 * (v49 ^ 0x8BAA41037EB7FF2FLL ^ v46)) ^ (((v49 ^ 0x8BAA41037EB7FF2FLL ^ v46) >> 61) | ((v49 ^ 0x8BAA41037EB7FF2FLL ^ v46) << 25));
  v56 = v48 ^ 0x83DBC9D2DDD53141 ^ ((v48 ^ 0x83DBC9D2DDD53141) << 58) ^ ((v48 ^ 0x83DBC9D2DDD53141) >> 1) ^ (((v48 ^ 0x83DBC9D2DDD53141) >> 6) | ((v48 ^ 0x83DBC9D2DDD53141) << 63)) ^ v55;
  v57 = (v56 | 0xF1E6AF574605C7E2) - ((v56 | 0xF1E6AF574605C7E2) ^ v56);
  v58 = (v52 ^ v54 ^ (v51 >> 7) ^ -(v52 ^ v54 ^ (v51 >> 7)) ^ (v51 - (v52 ^ v54 ^ (v51 >> 7) ^ v51))) + v51;
  v59 = v57 & ~v55;
  v60 = ((v50 ^ 0x2C82909478BB41D6) << 54) & (v50 ^ 0x2C82909478BB41D6) ^ ((v50 ^ 0x2C82909478BB41D6) << 47) ^ (v50 ^ 0x2C82909478BB41D6 ^ ((v50 ^ 0x2C82909478BB41D6) >> 10) ^ ((v50 ^ 0x2C82909478BB41D6) >> 17) | ((v50 ^ 0x2C82909478BB41D6) << 54));
  v61 = __ROR8__(__ROR8__(v53 ^ (v53 >> 19) ^ __ROR8__(v53, 28) ^ (v53 << ((a2 ^ 0xE1) & 0x2D) << ((a2 ^ 0xE1) & 0x2D ^ 0x2D)) ^ v58, 5) ^ 0xCF19AC6CD9A0C9DALL, 59);
  v62 = v61 ^ 0xE3358D9B34193B59;
  v63 = v58 ^ v60;
  v64 = (v61 ^ 0xE3358D9B34193B59) & 0x4000000000000000;
  v65 = (v61 ^ 0x1CCA7264CBE6C4A6) & v55;
  v66 = v64 + v59;
  v67 = (v61 ^ 0xE3358D9B34193B59) & 0xBFFFFFFFFFFFFFFFLL;
  if ((v64 & v59) != 0)
  {
    v68 = 2 * v64;
  }

  else
  {
    v68 = 0;
  }

  v69 = v65 ^ v63;
  v70 = (v66 - v68) ^ v67;
  v71 = v55 ^ v60 & ~v57 ^ 0x5747C156E755AED6 ^ v70;
  v72 = v62 & ~v63;
  v73 = v58 & ~v60 ^ v57;
  v74 = __ROR8__(__ROR8__(__ROR8__(__ROR8__(v70 ^ v69, 37) ^ 0x2EB9F7F22ED314FBLL, 60) ^ 0x6809EA877A3F03ECLL, 4) ^ 0xC6809EA877A3F03ELL, 27) ^ 0x761E9091D61B9BA6;
  v75 = v73 ^ v60 ^ v72;
  v76 = v75 ^ 0x28FA59BDD48D0B6;
  v77 = (v75 ^ 0x28FA59BDD48D0B6) >> ((v71 >> 39) & 0xA) >> ((v71 >> 39) & 0xA ^ 0xA);
  v78 = (v75 >> 17) ^ 0x147D2CDEEA4;
  v79 = v75 ^ 0x28FA59BDD48D0B6 ^ ((v75 ^ 0x28FA59BDD48D0B6) << 54);
  v80 = v71 ^ (8 * v71) ^ (v71 >> 39) ^ ((v71 >> 61) | (v71 << 25));
  *(&v81 + 1) = v73;
  *&v81 = (v73 & 0x400 | 0x6F45779FA95FC03ALL) ^ v73 & 0xFFFFFFFFFFFFFBFFLL;
  v82 = v81 ^ (v81 << 58) ^ (v81 >> 1) ^ (v81 >> 6);
  v83 = (v79 ^ (v76 << 47) ^ v77) & 0xC7D41E83E33231B5 ^ v78 & 0x1E83E33231B5 | (v79 ^ (v76 << 47) ^ v77) & 0x382BE17C1CCDCE4ALL ^ v78 & 0x617C1CCDCE4ALL;
  v84 = v69 ^ 0x9A383CF881807545 ^ ((v69 ^ 0x9A383CF881807545) >> 41) ^ ((v69 ^ 0x9A383CF881807545) >> 7) ^ ((v69 ^ 0x9A383CF881807545) << 23) ^ ((v69 ^ 0x9A383CF881807545) << 57);
  v85 = v74 ^ v84 ^ __ROR8__(v74, 19) ^ (v74 >> 28) ^ (v74 << 36);
  v86 = v80 ^ v82;
  v87 = v83 ^ v84;
  v88 = v84 & ~v83 ^ v80 ^ v82;
  v89 = v85 ^ v82 & ~v80;
  v90 = v83 & ~v86 ^ 0x3278F838FE43D2BCLL ^ v85 & v80 ^ (v89 | v80);
  v91 = v80 & ~v85 ^ v87;
  v92 = v90 ^ __ROR8__(v90, 39) ^ (v90 >> 61) ^ (8 * v90);
  v93 = ((v91 ^ v89) & 0xD92AD9E0E3093418 ^ -((v91 ^ v89) & 0xD92AD9E0E3093418) ^ (((v91 ^ v89) & 0x26D5261F1CF6CBE7 ^ 0x6E04C15915AB860ALL) - ((v91 ^ v89) & 0x26D5261F1CF6CBE7 ^ 0x6E04C15915AB860ALL ^ (v91 ^ v89) & 0xD92AD9E0E3093418))) + ((v91 ^ v89) & 0x26D5261F1CF6CBE7 ^ 0x6E04C15915AB860ALL);
  v94 = v83 ^ 0x7370AC685030CB36 ^ v88 ^ v85 & ~v87;
  v95 = v88 ^ 0x7955EAEC4D48B80CLL ^ ((v88 ^ 0x7955EAEC4D48B80CLL) << 58) ^ ((v88 ^ 0x7955EAEC4D48B80CLL) >> 1) ^ (((v88 ^ 0x7955EAEC4D48B80CLL) >> 6) | (v88 << 63));
  v96 = v92 ^ v95;
  v97 = v91 ^ 0x26974B18501E2B14 ^ ((v91 ^ 0x26974B18501E2B14uLL) >> 7) ^ ((v91 ^ 0x26974B18501E2B14) << 23) ^ ((v91 ^ 0x26974B18501E2B14) << 57) ^ ((v91 ^ 0x26974B18501E2B14uLL) >> 41);
  v98 = v94 ^ __ROR8__(v94, 10) ^ __ROR8__(v94, 17);
  v99 = v93 ^ v97 ^ (v93 << 45) ^ (v93 << 36) ^ (v93 >> 19) ^ (v93 >> 28);
  v100 = v99 ^ v95 & ~v92;
  v101 = (~(2 * (v92 ^ v95)) + (v92 ^ v95)) & v98 ^ v92;
  v102 = ((v100 | v101) & 0x9BE71EE8F45D8E10 ^ v101 & 0x9BE71EE8F45D8E10 & v100 | (v100 ^ v101) & 0x6418E1170BA271EFLL) ^ a35;
  v103 = v102 ^ -v102 ^ ((v102 >> 61) - ((v102 >> 61) ^ v102));
  v104 = (v103 ^ (v102 >> 61)) + 2 * (v103 & (v102 >> 61));
  v105 = v97 ^ v98;
  v106 = v92 & ~v99 ^ v97 ^ v98;
  v107 = __ROR8__(v106 ^ 0x320AC6B667297833, 25) ^ 0x26A2E72166B732CALL;
  v108 = __ROR8__(v107, 39);
  v109 = (8 * v102) ^ (v102 << 25) ^ (v102 >> 39);
  v110 = v106 ^ 0x70C7A8D3F3643DFDLL ^ __ROR8__(v107, 16) ^ (v108 >> 7);
  v111 = ((((v108 ^ 0x3513DD9A) - v108) ^ 0x7C) + (v108 ^ 0x3513DD9A)) << 57;
  v112 = v97 & ~v98;
  if ((v105 & 0x200000000) != 0)
  {
    v113 = 0xFFFFFFFE00000000;
  }

  else
  {
    v113 = 0x200000000;
  }

  v114 = v96 ^ v112;
  v115 = v111 + v110 - 2 * (v111 & v110);
  v116 = v98 ^ 0x44C9D571A5C4A51CLL ^ v114 ^ v99 & ((v113 + v105) ^ 0xFFFFFFFDFFFFFFFFLL);
  v117 = (v116 >> 10) & 0x1F57574CDACD82 ^ v116 & 0xDD9F57574CDACD82 | (v116 >> 10) & 0x20A8A8B325327DLL ^ v116 & 0x2260A8A8B325327DLL;
  v118 = v117 + (v116 << 47) - 2 * (v117 & (v116 << 47));
  v119 = v109 ^ v104;
  v120 = v114 ^ 0xD3DA1E3360BF843ALL ^ ((v114 ^ 0xD3DA1E3360BF843ALL) << 58) ^ (((v114 ^ 0xD3DA1E3360BF843ALL) >> 1) ^ ((v114 ^ 0xD3DA1E3360BF843ALL) >> 6) | (v114 << 63));
  v121 = v100 ^ 0x97F6A7E5F6E8F58ALL ^ v106 ^ ((v100 ^ 0x97F6A7E5F6E8F58ALL ^ v106) >> 28) ^ ((v100 ^ 0x97F6A7E5F6E8F58ALL ^ v106) >> 19) ^ ((v100 ^ 0x97F6A7E5F6E8F58ALL ^ v106) << 36) ^ ((v100 ^ 0x97F6A7E5F6E8F58ALL ^ v106) << 45) ^ v115;
  v122 = v118 ^ ((v116 >> 17) | (v116 << 54));
  v123 = (v109 ^ v104) & ~v121;
  v124 = v120 & ~(v109 ^ v104) ^ v121;
  v125 = v123 ^ v115 ^ v122;
  v126 = __ROR8__(v124 ^ v125 ^ 0x75B5BD288DEBBF75, 23);
  v127 = v119 ^ v120;
  v128 = v127 ^ v115 & ~v122;
  v129 = v122 ^ 0xF374A001D380BDC2 ^ v121 & ~(v115 ^ v122) ^ v128;
  v130 = __ROR8__(v126 - ((2 * v126) & 0x75ADA9F22679AE5ALL) + 0x3AD6D4F9133CD72DLL, 41);
  v131 = v130 >> (v74 & 0x1C) >> ((28 - (v74 & 0x1C)) & 0xFC);
  *(&v132 + 1) = v130;
  *&v132 = v124 ^ v125 ^ 0x93C23431B76D41FLL;
  v133 = (v132 >> 19) ^ v132 ^ v131;
  v134 = v133 & 0x8000 | (*(&v132 + 1) << 36);
  v135 = v119 ^ v122 & ~v127 ^ v124 ^ 0x6005BE354A5BB0B2 ^ __ROR8__(v119 ^ v122 & ~v127 ^ v124 ^ 0x6005BE354A5BB0B2, 61) ^ ((v119 ^ v122 & ~v127 ^ v124 ^ 0x6005BE354A5BB0B2) >> 39) ^ ((v119 ^ v122 & ~v127 ^ v124 ^ 0x6005BE354A5BB0B2) << 25);
  *(&v132 + 1) = v128;
  *&v132 = v128 ^ 0x6DC4FB0BD4FFFF44;
  v136 = (v132 >> 1) ^ v128 ^ 0x6DC4FB0BD4FFFF44 ^ ((v128 ^ 0x6DC4FB0BD4FFFF44uLL) >> 6) ^ ((v128 ^ 0x6DC4FB0BD4FFFF44) << 58);
  v137 = (v125 ^ 0x2DB5B6AF87F64351 ^ ((v125 ^ 0x2DB5B6AF87F64351uLL) >> 7)) & 0xFFFFFFFFFFFFFFFDLL ^ __ROR8__((((v125 ^ 0x2DB5B6AF87F64351) & 0x7F) << 41) ^ 0xF6A0E7D80C575C2BLL ^ (((v125 ^ 0x2DB5B6AF87F64351 ^ ((v125 ^ 0x2DB5B6AF87F64351uLL) >> 7)) << 48) & 0x2000000000000 | (((v125 ^ 0x2DB5B6AF87F64351) & 0x1FFFFFFFFFFLL) << 7)), 48);
  v138 = __ROR8__(((v129 & 0x1FFFF) << 33) ^ __ROR8__((v129 ^ (v129 >> 10)) + (v129 >> 17) - 2 * ((v129 ^ (v129 >> 10)) & (v129 >> 17)), 14) ^ 0x11931E8A482A425BLL, 50) ^ (v129 << 54);
  v139 = (v125 ^ 0x2DB5B6AF87F64351uLL) >> 41;
  v140 = v138 ^ 0xC7A2920A9096C464;
  v141 = v137 & 0x10;
  v142 = v137 & 0xFFFFFFFFFFFFFFEFLL;
  if ((v141 & v139) != 0)
  {
    v141 = -v141;
  }

  v143 = v142 ^ 0xE7D80C575C2BF6A0 ^ (v141 + v139);
  v144 = v134 ^ v133 & 0xFFFFFFFFFFFF7FFFLL ^ v143;
  v145 = v143 ^ v140;
  v146 = v136 & ~v135;
  v147 = v143 & (v138 ^ 0x385D6DF56F693B9BLL);
  v148 = v135 & ~v144 ^ v143 ^ v140;
  v149 = v146 & 0x800000;
  if ((v144 & v146 & 0x800000) != 0)
  {
    v149 = -v149;
  }

  v150 = v149 + v144;
  v151 = v144 & ~v145;
  v152 = v148 - ((2 * v148) & 0x8E6862743E5650AELL) + 0x4734313A1F2B2857;
  v153 = v150 ^ v146 & 0xFFFFFFFFFF7FFFFFLL ^ v148;
  v154 = v147 ^ v135 ^ v136;
  v155 = v151 ^ v140 ^ v154;
  v156 = a4 ^ (477 * (a39 + 1 != a36));
  *(&v157 + 1) = v155 ^ 0x29E1AB0124FF49E7;
  *&v157 = v155;
  v158 = __ROR8__((v157 >> 63) & 0xFFFFFFFFFFFFF801 ^ __ROR8__((((v155 ^ 0x29E1AB0124FF49E7) >> 17) + (v155 ^ 0x29E1AB0124FF49E7) - 2 * (((v155 ^ 0x29E1AB0124FF49E7) >> 17) & (v155 ^ 0x29E1AB0124FF49E7))) ^ ((v155 ^ 0x29E1AB0124FF49E7) << 54), 53) ^ 0x57AE93CA660B37B3, 11) ^ ((v155 ^ 0x29E1AB0124FF49E7) << 47);
  return (*(a40 + 8 * v156))(v154 ^ 0x2D23F5ED560F5BC9 ^ __ROR8__(v154 ^ 0x2D23F5ED560F5BC9, 1) ^ ((v154 ^ 0x2D23F5ED560F5BC9) >> 6) ^ ((v154 ^ 0x2D23F5ED560F5BC9) << 58), v158 ^ 0xF66AF5D2794CC166, v152 ^ (v152 << 23) ^ (v152 >> 7) ^ ((v152 >> 41) | (v152 << 57)), v158, v153 ^ (v153 << 36) ^ (v153 >> 19) ^ (v153 >> 28) ^ (v153 << 45));
}

uint64_t sub_10020F050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v4;
  STACK[0x910] = 0;
  STACK[0x430] = 0;
  return (*(v5 + 8 * ((((((v3 - 6633) | 0x340) + 8391) ^ 0x2414) * (v6 == 0)) ^ v3)))(a1, a2, a3, 16215976);
}

void sub_10020F0A4()
{
  v0 = *(&off_100315F70 + ((-85 * (dword_100330EA0 ^ 0xDF ^ dword_100330E70)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * (dword_100330EA0 ^ 0xDF ^ dword_100330E70))] ^ 0xD9]) + 122);
  v1 = *(v0 - 4);
  v2 = *(&off_100315F70 + (byte_1002B7200[byte_1002B0320[(-85 * (v1 ^ dword_100330E70 ^ 0xDF))] ^ 1] ^ (-85 * (v1 ^ dword_100330E70 ^ 0xDF))) + 14);
  v3 = 2054362027 * (&v5[*v2 - v1] ^ 0xB4207763EF64BDFLL);
  *(v0 - 4) = v3;
  *v2 = v3;
  v6[0] = 476323082 - 1710126949 * ((v6 - 778668774 - 2 * (v6 & 0xD196751A)) ^ 0xE38D2E8A);
  LOBYTE(v2) = -85 * ((*v2 - *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_100315F70 + ((-85 * ((dword_100330E70 + dword_100330EA0) ^ 0xDF)) ^ byte_1002B0520[byte_1002A5EB0[(-85 * ((dword_100330E70 + dword_100330EA0) ^ 0xDF))] ^ 0xAD]) + 277) - 8;
  (*&v4[8 * (v2 ^ byte_1002B7200[byte_1002B0320[v2] ^ 0x6D]) + 76952])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10020F774()
{
  STACK[0xA28] = v1;
  v3 = STACK[0x608];
  STACK[0xA30] = STACK[0x608];
  return (*(v2 + 8 * (((v1 - v3 > 9) * ((((v0 - 2538) | 0x182) + 14291) ^ (v0 - 1368412803) & 0x51905FFB)) ^ v0)))();
}

uint64_t sub_10020F7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v22 = a4 - 1;
  v23 = STACK[0x370] + v22;
  v24 = __ROR8__(v23 & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = v15 - (((v10 - v24) | v11) + ((v24 + v13) | ((a5 + 2287) + a3)));
  v26 = __ROR8__(v25 ^ a7, 8);
  v27 = v25 ^ v12;
  v28 = (v26 + v27) ^ 0xE49D77DF873DBF7ELL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = __ROR8__((((2 * (v30 + v29)) & 0x4E2EF9620C1AEDB8) - (v30 + v29) + a6) ^ v7, 8);
  v32 = (((2 * (v30 + v29)) & 0x4E2EF9620C1AEDB8) - (v30 + v29) + a6) ^ v7 ^ __ROR8__(v29, 61);
  v33 = (v31 + v32) ^ v17;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ a2;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((v37 + v36) & v14 ^ v9) + ((v37 + v36) ^ v21) - (((v37 + v36) ^ v21) & v14)) ^ a1;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v16;
  *(v20 + v22 + v18) = (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ 0xAB3042D228875C41) >> (8 * (v23 & 7u))) ^ *v23;
  return (*(v8 + 8 * (((v22 == 0) * v19) ^ a5)))();
}

void sub_10020F908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
{
  LODWORD(STACK[0x258]) = 0;
  LODWORD(STACK[0x240]) = 0;
  LODWORD(STACK[0x24C]) = 0;
  LODWORD(STACK[0x250]) = ((a64 ^ 0x1C4F) - 2004319516) ^ a63;
  LODWORD(STACK[0x23C]) = a62 ^ 0x88888888;
  LODWORD(STACK[0x248]) = a57 ^ 0x88888888;
  LODWORD(STACK[0x268]) = a58;
  LODWORD(STACK[0x25C]) = a56;
  LODWORD(STACK[0x264]) = a61;
  LODWORD(STACK[0x260]) = a60;
  LODWORD(STACK[0x244]) = a59;
  JUMPOUT(0x10010CC44);
}

void sub_10020F980()
{
  v0 = *(&off_100315F70 + ((-85 * ((dword_100330E70 - dword_100330B38) ^ 0xDF)) ^ byte_1002B7200[byte_1002B0320[(-85 * ((dword_100330E70 - dword_100330B38) ^ 0xDF))] ^ 1]) - 135);
  v1 = -85 * ((dword_100330E70 + *v0) ^ 0xDF);
  v2 = *(&off_100315F70 + (byte_1002A5FBC[(byte_1002BF56C[v1 - 12] ^ 0xE9) - 12] ^ v1) + 57);
  v3 = &v5[*v2 - *v0];
  *v0 = 2054362027 * v3 - 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * (v6 ^ 0x321B5B90);
  LOBYTE(v2) = -85 * ((*v2 + *v0) ^ 0xDF);
  v4 = *(&off_100315F70 + ((-85 * ((dword_100330E70 - dword_100330B38) ^ 0xDF)) ^ byte_1002B7200[byte_1002B0320[(-85 * ((dword_100330E70 - dword_100330B38) ^ 0xDF))] ^ 0x6D]) + 262) - 8;
  (*&v4[8 * (byte_1002B022C[(byte_1002A5CB0[v2] ^ 0xEE) - 12] ^ v2) + 76160])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10020FC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = STACK[0x32C];
  v71 = (v69 ^ 0xBC59953u) + a69;
  STACK[0x8D8] = v71;
  return (*(STACK[0x330] + 8 * ((v70 - 509) ^ (2010 * (v71 > a23)))))();
}

uint64_t sub_10020FE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x390];
  if (LODWORD(STACK[0x390]) == 43491)
  {
    return (*(STACK[0x3E8] + 8 * ((v3 - 2956) ^ (61 * (LODWORD(STACK[0x340]) != LODWORD(STACK[0x3C0]))))))();
  }

  if (v4 == 28239)
  {
    return (*(STACK[0x3E8] + 8 * (((LODWORD(STACK[0x9D8]) == ((2 * LODWORD(STACK[0x9D8])) & 0x4AB7A8BE)) * (((v3 - 4608) | 0x400) ^ 0x62B)) ^ (v3 - 3670))))();
  }

  if (v4 == 47633)
  {
    return (*(STACK[0x3E8] + 8 * (((LODWORD(STACK[0x9C0]) == 197499227) * (v3 ^ 0x261A)) ^ (v3 - 757))))();
  }

  return sub_10020FFDC(a1, a2, a3);
}

uint64_t sub_10020FF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (v4 == 16257999)
  {
    v7 = STACK[0x500];
    v8 = *(STACK[0x500] + 8);
    v9 = STACK[0x880];
    v9[1] = v8;
    *v9 = *v7;
    return (*(a4 + 8 * (((v8 == 0) * (v5 ^ 0xC1B ^ (13 * (v5 ^ 0x1584)))) ^ (v5 - 2776))))(a1, a2, a3);
  }

  else if (v4 == 16215947)
  {
    return (*(a4 + 8 * ((*(STACK[0x850] + 8) == 0) | (v5 - 3409))))(a1, a2, a3);
  }

  else
  {
    return sub_10020FFDC(a1, a2, a3);
  }
}

uint64_t sub_100210024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14)
{
  v17 = (v14 + 130604) | 0x3BA1110A;
  a14 = (v17 - 1000537268) ^ (((&a12 + 1724424264 - 2 * (&a12 & 0x66C8A048)) ^ 0x3EA1732A) * v16);
  a13 = a10;
  v18 = (*(v15 + 8 * (v17 ^ 0x3BA338C2)))(&a12);
  return sub_100224414(v18);
}

uint64_t sub_100210064()
{
  v2 = STACK[0x6D0];
  STACK[0x478] = *(v1 + 8 * v0);
  return sub_100165644(v2);
}

uint64_t sub_1002100F8@<X0>(uint64_t a1@<X8>)
{
  v8 = -v1 - v6;
  v10 = (v7 - v6) >= 0x10 && v8 + v3 + 16 >= ((51 * ((v5 - 389620070) & 0x173917E3 ^ 0x17BC)) ^ 0x195DuLL) && (v8 + v4 + 18) >= 0x10;
  v11 = v8 + v2 + 17;
  v13 = !v10 || v11 < 0x10;
  return (*(a1 + 8 * ((225 * v13) ^ v5)))();
}

uint64_t sub_100210178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  if (v63 == 16215947)
  {
    v66 = STACK[0x4B0];
    LODWORD(STACK[0x524]) = 1473592423 * *(STACK[0x4B0] + 16) - 516596334;
  }

  else
  {
    if (v63 != 16257999)
    {
      LODWORD(STACK[0x65C]) = v63;
      return sub_100208C08();
    }

    v66 = STACK[0x4B0];
    v64 = a63;
  }

  v68 = *v66;
  STACK[0x608] = 0;
  STACK[0x700] = 0;
  return (*(v65 + 8 * ((11 * ((v64 ^ 0x93 ^ (v68 == 0)) & 1)) ^ (v64 + 1869))))();
}

uint64_t sub_10021022C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x908] = v4;
  v6 = STACK[0x410];
  STACK[0x910] = STACK[0x410];
  return (*(a4 + 8 * (((v4 - v6 > 9) * (((23 * (v5 ^ 0x1486) - 5184) | 0x200) + 237)) ^ v5 ^ 0x35ED)))();
}

uint64_t sub_10021028C(uint64_t a1)
{
  v4 = v1 & 0x82547DAB;
  v5 = (*(v3 + 8 * (v1 & 0x82547DAB ^ 0x2908)))(a1, v2) == 0;
  return (*(v3 + 8 * ((v5 * ((v4 - 2071) ^ 0x4F7)) ^ v4)))();
}

uint64_t sub_1002104BC@<X0>(int a1@<W8>)
{
  STACK[0x928] = v1;
  v3 = STACK[0x740];
  STACK[0x930] = STACK[0x740];
  return (*(v2 + 8 * (((v1 - v3 > 9) * (((a1 + 5456906) & 0xFFACB36F ^ 0xFFFFECBD) + ((a1 + 2001) | 0x430))) ^ a1)))();
}

uint64_t sub_100210564@<X0>(unint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v8 = (v4 - 1031) | 0x1A8;
  *(v2 + v3) = 0;
  v10 = v3 < a1 && v3 + v5 < a2;
  return (*(v7 + 8 * ((v10 * v6) ^ v8)))();
}

uint64_t sub_1002105B0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 4);
  *(a1 + 20) = v4;
  return (*(v3 + 8 * ((52 * (v4 == ((v2 - 3727) | 0x1400) - 5250)) ^ v2)))();
}

uint64_t sub_1002105F4()
{
  v2 = STACK[0x43C];
  STACK[0x770] += (v0 - 3555) + ((v0 - 8235) ^ 0x239Eu) - 14040;
  return (*(v1 + 8 * ((7563 * (v2 == 16257999)) ^ (v0 - 8235))))();
}

uint64_t sub_100210650@<X0>(uint64_t a1@<X0>, int a2@<W4>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v74 = vdupq_n_s64(0x38uLL);
  v75 = vdupq_n_s64(0x2A11B965E67D9C56uLL);
  v76 = vdupq_n_s64(v66);
  v77 = vdupq_n_s64(v67);
  v78 = vdupq_n_s64(v68);
  v79 = vdupq_n_s64(v69);
  v80 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v81 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v82 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v83 = vdupq_n_s64(v70);
  v84 = vdupq_n_s64(v71);
  v85 = vdupq_n_s64(v72);
  v86 = vdupq_n_s64(0x64C31C027084DE6CuLL);
  v87 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v88 = vdupq_n_s64(0xAB3042D228875C41);
  v89.i64[0] = a3 + a1 - 5;
  v89.i64[1] = a3 + a1 - 6;
  v90.i64[0] = a3 + a1 - 3;
  v90.i64[1] = a3 + a1 - 4;
  v91.i64[0] = a3 + a1 - 1;
  v91.i64[1] = a3 + a1 - 2;
  v92.i64[0] = a3 + a1 + 3;
  v92.i64[1] = a3 + a1 + 2;
  v93.i64[0] = a3 + a1 + 5;
  v93.i64[1] = a3 + a1 + 4;
  v94.i64[0] = a3 + a1 + 7;
  v94.i64[1] = a3 + a1 + 6;
  v95.i64[0] = a3 + a1 + 9;
  v95.i64[1] = a3 + a1 + 8;
  v96 = vandq_s8(v95, v73);
  v97 = vandq_s8(v94, v73);
  v98 = vandq_s8(v93, v73);
  v99 = vandq_s8(v92, v73);
  v100 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v103 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v104 = vsubq_s64(v102, vandq_s8(vaddq_s64(vaddq_s64(v102, v102), v75), v76));
  v105 = vsubq_s64(v103, vandq_s8(vaddq_s64(vaddq_s64(v103, v103), v75), v76));
  v106 = vaddq_s64(vsubq_s64(v101, vandq_s8(vaddq_s64(vaddq_s64(v101, v101), v75), v76)), v77);
  v107 = vaddq_s64(vsubq_s64(v100, vandq_s8(vaddq_s64(vaddq_s64(v100, v100), v75), v76)), v77);
  v108 = veorq_s8(v107, v78);
  v109 = veorq_s8(v106, v78);
  v110 = veorq_s8(v106, v79);
  v111 = veorq_s8(v107, v79);
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v80);
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v111), v80);
  v114 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v115 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v116 = veorq_s8(v112, v114);
  v117 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v116);
  v119 = veorq_s8(vaddq_s64(v117, v115), v81);
  v120 = veorq_s8(v118, v81);
  v121 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v122 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v123 = veorq_s8(v119, v121);
  v124 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v123);
  v126 = veorq_s8(vaddq_s64(v124, v122), v82);
  v127 = veorq_s8(v125, v82);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v129 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v130 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v129);
  v132 = vaddq_s64(v130, v128);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v132, v132), v83), v132), v84), v85);
  v134 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v131, v131), v83), v131), v84), v85);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v136 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v137 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v136);
  v139 = veorq_s8(vaddq_s64(v137, v135), v86);
  v140 = veorq_s8(v138, v86);
  v141 = vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL);
  v142 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v143 = veorq_s8(v139, v141);
  v144 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v143);
  v146 = veorq_s8(vaddq_s64(v144, v142), v87);
  v147 = veorq_s8(v145, v87);
  v148 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v142.i64[0] = a3 + a1 + 1;
  v142.i64[1] = a3 + a1;
  v149 = vaddq_s64(v104, v77);
  v251.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v148), v88), vnegq_s64(vandq_s8(vshlq_n_s64(v92, 3uLL), v74)));
  v251.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL))), v88), vnegq_s64(vandq_s8(vshlq_n_s64(v93, 3uLL), v74)));
  v150 = veorq_s8(v149, v78);
  v151 = veorq_s8(v149, v79);
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), v80);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153), v81);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), v82);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157);
  v159 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v158, v158), v83), v158), v84), v85);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), v86);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), v87);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL)));
  v165 = vandq_s8(v142, v73);
  v166 = vaddq_s64(v105, v77);
  v251.val[1] = vshlq_u64(veorq_s8(v164, v88), vnegq_s64(vandq_s8(vshlq_n_s64(v94, 3uLL), v74)));
  v167 = veorq_s8(v166, v78);
  v168 = veorq_s8(v166, v79);
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v80);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v81);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), v82);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v175, v175), v83), v175), v84), v85);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177), v86);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v180 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179), v87);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v182 = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v183 = vandq_s8(v91, v73);
  v184 = vaddq_s64(v182, v181);
  v185 = vandq_s8(v90, v73);
  v251.val[0] = vshlq_u64(veorq_s8(v184, v88), vnegq_s64(vandq_s8(vshlq_n_s64(v95, 3uLL), v74)));
  v186 = vandq_s8(v89, v73);
  v187 = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v188 = vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL);
  v189 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL);
  v191 = vsubq_s64(v189, vandq_s8(vaddq_s64(vaddq_s64(v189, v189), v75), v76));
  v192 = vaddq_s64(vsubq_s64(v188, vandq_s8(vaddq_s64(vaddq_s64(v188, v188), v75), v76)), v77);
  v193 = vaddq_s64(vsubq_s64(v187, vandq_s8(vaddq_s64(vaddq_s64(v187, v187), v75), v76)), v77);
  v188.i64[0] = vqtbl4q_s8(v251, xmmword_1002BF690).u64[0];
  v194 = veorq_s8(v193, v78);
  v251.val[0] = veorq_s8(v192, v78);
  v195 = veorq_s8(v192, v79);
  v196 = veorq_s8(v193, v79);
  v251.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251.val[0], 0x38uLL), v251.val[0], 8uLL), v195), v80);
  v197 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v196), v80);
  v198 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v199 = veorq_s8(v251.val[0], vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v251.val[1] = vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL);
  v200 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251.val[0], 0x38uLL), v251.val[0], 8uLL), v199);
  v251.val[0] = veorq_s8(vaddq_s64(v251.val[1], v198), v81);
  v201 = veorq_s8(v200, v81);
  v251.val[1] = vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL);
  v202 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL));
  v203 = veorq_s8(v251.val[0], v251.val[1]);
  v251.val[1] = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251.val[0], 0x38uLL), v251.val[0], 8uLL), v203);
  v251.val[0] = veorq_s8(vaddq_s64(v251.val[1], v202), v82);
  v205 = veorq_s8(v204, v82);
  v251.val[1] = vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL));
  v207 = veorq_s8(v251.val[0], v251.val[1]);
  v251.val[1] = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251.val[0], 0x38uLL), v251.val[0], 8uLL), v207);
  v251.val[0] = vaddq_s64(v251.val[1], v206);
  v251.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v251.val[0], v251.val[0]), v83), v251.val[0]), v84), v85);
  v209 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v208, v208), v83), v208), v84), v85);
  v251.val[1] = vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL);
  v210 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v211 = veorq_s8(v251.val[0], v251.val[1]);
  v251.val[1] = vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL);
  v212 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251.val[0], 0x38uLL), v251.val[0], 8uLL), v211);
  v251.val[0] = veorq_s8(vaddq_s64(v251.val[1], v210), v86);
  v213 = veorq_s8(v212, v86);
  v251.val[1] = vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL);
  v214 = veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL));
  v215 = veorq_s8(v251.val[0], v251.val[1]);
  v251.val[1] = vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL);
  v216 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251.val[0], 0x38uLL), v251.val[0], 8uLL), v215);
  v251.val[0] = veorq_s8(vaddq_s64(v251.val[1], v214), v87);
  v217 = veorq_s8(v216, v87);
  v218 = vaddq_s64(v191, v77);
  v251.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251.val[0], 0x38uLL), v251.val[0], 8uLL), veorq_s8(v251.val[0], vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL))), v88), vnegq_s64(vandq_s8(vshlq_n_s64(v89, 3uLL), v74)));
  v251.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL))), v88), vnegq_s64(vandq_s8(vshlq_n_s64(v90, 3uLL), v74)));
  v219 = veorq_s8(v218, v78);
  v220 = veorq_s8(v218, v79);
  v221 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v220), v80);
  v222 = veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v223 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v222), v81);
  v224 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL));
  v225 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224), v82);
  v226 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v227 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v226);
  v228 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v227, v227), v83), v227), v84), v85);
  v229 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL));
  v230 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229), v86);
  v231 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v232 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), v231), v87);
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL)));
  v234 = vaddq_s64(vsubq_s64(v190, vandq_s8(vaddq_s64(vaddq_s64(v190, v190), v75), v76)), v77);
  v251.val[1] = vshlq_u64(veorq_s8(v233, v88), vnegq_s64(vandq_s8(vshlq_n_s64(v91, 3uLL), v74)));
  v235 = veorq_s8(v234, v78);
  v236 = veorq_s8(v234, v79);
  v237 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL), v236), v80);
  v238 = veorq_s8(v237, vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL));
  v239 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL), v238), v81);
  v240 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL));
  v241 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v240), v82);
  v242 = veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL));
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v242);
  v244 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v243, v243), v83), v243), v84), v85);
  v245 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v246 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245), v86);
  v247 = veorq_s8(v246, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v248 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v247), v87);
  v251.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), veorq_s8(v248, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL))), v88), vnegq_s64(vandq_s8(vshlq_n_s64(v142, 3uLL), v74)));
  v188.i64[1] = vqtbl4q_s8(v251, xmmword_1002BF690).u64[0];
  v249 = vrev64q_s8(v188);
  *(v142.i64[1] - 6) = veorq_s8(vextq_s8(v249, v249, 8uLL), *(a1 + (a2 ^ 0x1109u) + 2925 + v65 - 5180));
  return (*(a65 + 8 * ((7754 * (-(a1 & 0xFFFFFFF0) == -16)) ^ a2 ^ 0x1109)))();
}

uint64_t sub_100211068()
{
  v1 = *(STACK[0x490] + 24);
  STACK[0x588] = v1;
  return (*(STACK[0x330] + 8 * ((((v0 ^ 0xAF ^ (v1 == 0)) & 1) * ((v0 - 3044) ^ 0x15CB)) ^ v0)))();
}

void sub_1002110C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    v6 = a5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v8 = v6 || a6 == 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100211144@<X0>(uint64_t a1@<X3>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, int a5@<W8>)
{
  v17 = v5 + v6 + v7 + a1;
  v18 = __ROR8__(v17 & 0xFFFFFFFFFFFFFFF8, 8) + ((a5 - 1481494592) & 0x584DC9FE ^ (v12 + 2038));
  v19 = v18 ^ v16;
  v20 = v18 ^ a3;
  v21 = __ROR8__(v19, 8);
  v22 = __ROR8__(((a4 & (2 * (v21 + v20))) - (v21 + v20) + v9) ^ v8, 8);
  v23 = ((a4 & (2 * (v21 + v20))) - (v21 + v20) + v9) ^ v8 ^ __ROR8__(v20, 61);
  v24 = (v13 - ((v22 + v23) | v13) + ((v22 + v23) | v10)) ^ v11;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v15;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xF2620266DFD8DE82;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (v30 + v29 - ((2 * (v30 + v29)) & 0x5C3E923DC79C4710) + 0x2E1F491EE3CE2388) ^ 0x97A1B9D365930275;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v14;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  *v17 = ((((2 * (v35 + v34)) & 0x93BA3B681E438AC2) - (v35 + v34) + 0x3622E24BF0DE3A9ELL) ^ 0x3102FDB0D852CBCLL) >> (8 * (v17 & 7u));
  return (*(a2 + 8 * ((5546 * (a1 == 1)) ^ a5)))();
}

uint64_t sub_100211354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v75 = *v71 + v73 - 0x5EA5347A8335DC6CLL;
  v76 = __ROR8__(v75 & 0xFFFFFFFFFFFFFFF8, 8);
  v77 = ((0x6AF7234D0CC131D4 - v76) & 0x435B154A729201BFLL) + v76 - 0x6AF7234D0CC131D5 - ((v76 - 0x6AF7234D0CC131D5) & 0x435B154A729201BFLL);
  v78 = __ROR8__(v77 ^ 0xAB257711D84E66DLL, 8);
  v77 ^= 0xA2F4B2E684729731;
  v79 = (((v78 + v77) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v78 + v77) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0xF5A2F1B9B5D0B209;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x5963B6C555D97F1FLL;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ a8;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ a7;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = __ROR8__(v87, 8) + v88;
  v90 = __ROR8__((v75 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v91 = (0x6AF7234D0CC131D4 - v90) & 0xC2A16714FA488FC8 | (v90 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v92 = __ROR8__(v91 ^ 0x8B48252F955E681ALL, 8);
  v91 ^= 0x230EC0B80CA81946uLL;
  v93 = (((2 * v89) | 0x36A4398A31861B6ALL) - v89 - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6;
  v94 = (((2 * (v92 + v91)) & 0xAC7FF88AB7D467A0) - (v92 + v91) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v95 = v94 ^ __ROR8__(v91, 61);
  v96 = __ROR8__(v94, 8);
  v97 = (v96 + v95 - ((2 * (v96 + v95)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v98 = v97 ^ __ROR8__(v95, 61);
  v99 = *(a64 + 8 * v67);
  *v75 = (((__ROR8__(v93, 8) + (v93 ^ __ROR8__(v88, 61))) ^ 0xAB3042D228875C41) >> (8 * (v75 & 7u))) ^ HIBYTE(v66) ^ 0xDD;
  v100 = (__ROR8__(v97, 8) + v98) ^ 0x5963B6C555D97F1FLL;
  v101 = v100 ^ __ROR8__(v98, 61);
  v102 = (__ROR8__(v100, 8) + v101) ^ a8;
  v103 = v102 ^ __ROR8__(v101, 61);
  v104 = __ROR8__(v102, 8);
  v105 = (((2 * (v104 + v103)) | 0x63B77BB044F1F226) - (v104 + v103) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v106 = v105 ^ __ROR8__(v103, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0x1A2AEBE44253AF03;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = __ROR8__(v107, 8);
  *(v75 + 1) = (((v109 + v108 - ((2 * (v109 + v108)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v75 + 1) & 7))) ^ BYTE2(v66) ^ 0x60;
  v110 = __ROR8__((v75 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v111 = ((2 * v110 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v110 + 0x6BC5C09CD998FDFLL;
  v112 = __ROR8__(v111 ^ 0xD22C7A87AFCEB9D8, 8);
  v113 = v111 ^ v68;
  v114 = (v112 + v113) ^ 0xE49D77DF873DBF7ELL;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = (__ROR8__(v114, 8) + v115) ^ 0xF5A2F1B9B5D0B209;
  v117 = v116 ^ __ROR8__(v115, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ 0x5963B6C555D97F1FLL;
  v119 = v118 ^ __ROR8__(v117, 61);
  v120 = __ROR8__(v118, 8);
  v121 = ((v69 | (2 * (v120 + v119))) - (v120 + v119) + v70) ^ v72;
  v122 = v121 ^ __ROR8__(v119, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ a7;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0x1A2AEBE44253AF03;
  *(v75 + 2) = (((__ROR8__(v125, 8) + (v125 ^ __ROR8__(v124, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v75 + 2) & 7))) ^ BYTE1(v66) ^ 0xF8;
  v126 = __ROR8__((v75 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v127 = (0xAF7234D0CC131D4 - v126) & a1 | (v126 - 0x6AF7234D0CC131D5) & v74;
  v128 = v127 ^ v64;
  v129 = v127 ^ v65;
  v130 = (__ROR8__(v128, 8) + v129) ^ 0xE49D77DF873DBF7ELL;
  v131 = v130 ^ __ROR8__(v129, 61);
  v132 = (__ROR8__(v130, 8) + v131) ^ 0xF5A2F1B9B5D0B209;
  v133 = v132 ^ __ROR8__(v131, 61);
  v134 = __ROR8__(v132, 8);
  v135 = ((a3 | (2 * (v134 + v133))) - (v134 + v133) + a5) ^ a4;
  v136 = v135 ^ __ROR8__(v133, 61);
  v137 = (__ROR8__(v135, 8) + v136) ^ a8;
  v138 = v137 ^ __ROR8__(v136, 61);
  v139 = (__ROR8__(v137, 8) + v138) ^ a7;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ 0x1A2AEBE44253AF03;
  *(v75 + 3) = v66 ^ a6 ^ (((__ROR8__(v141, 8) + (v141 ^ __ROR8__(v140, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v75 + 3) & 7)));
  return v99();
}

uint64_t sub_100211910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 42;
  v67 = (*(v65 + 8 * (v64 ^ 0x30F6)))(42, 0x100004077774924);
  *(a1 + 24) = v67;
  return (*(a64 + 8 * (((v67 == 0) * (((v64 + 1098791433) & 0xBE81BBF6) - 2862)) ^ v64)))();
}

uint64_t sub_1002119A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x538] = 0;
  v65 = STACK[0x6B0];
  STACK[0x518] = *(a64 + 8 * (v64 - 2390));
  return sub_100236B70(v65);
}

uint64_t sub_1002119D8()
{
  v4 = *(&off_100315F70 + v0 - 6156);
  STACK[0x810] = v1;
  v5 = (*(v3 + 8 * (v0 ^ 0x3CCE)))(*v4, &STACK[0x738], v2, 1) == (v0 ^ 0x1906);
  return (*(STACK[0x330] + 8 * ((v5 * (((2 * v0) ^ 0x2F50) + 8258)) ^ v0)))();
}

uint64_t sub_100211B0C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v2 = a2 - 494;
  (*(a1 + 8 * (a2 + 5190)))();
  v3 = STACK[0x3E8];
  STACK[0x710] = 0;
  return (*(v3 + 8 * (v2 | (4 * ((((v2 - 44) ^ (STACK[0x598] == 0)) & 1) == 0)))))();
}

uint64_t sub_100211C70@<X0>(int a1@<W8>)
{
  v3 = (a1 + 1297) | 3u;
  LODWORD(STACK[0x380]) = a1 - 1595;
  v4 = *(v2 + 8 * ((4017 * ((((a1 - 1595) ^ 0xC74) & v1) == (v3 ^ 0x17CB))) ^ a1));
  STACK[0x3B0] = v3;
  return v4();
}

uint64_t sub_100211CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x260] = 0;
  v67 = *(a66 + 8 * (((((LODWORD(STACK[0x270]) - 1279007718) & 0x4C3C1FF0) - 6142) * (v66 > 0xF)) ^ LODWORD(STACK[0x270])));
  return v67(a1, a2, v67, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

uint64_t sub_100211D34@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (v2 - 2466)) ^ v2)))();
}

void sub_100211DBC(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x1001B5998);
}

uint64_t sub_100211DD0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  if (a3)
  {
    v10 = a9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v12 = v10 || a4 == 0;
  return (*(v9 + 8 * ((v12 * (((a1 - 1947) | 0x1004) - 4126)) ^ a1)))();
}

uint64_t sub_100211E20@<X0>(int a1@<W8>)
{
  v4 = (a1 + 5465) ^ STACK[0xA58] ^ 0x32B9C33CFFC0DA1ELL;
  v5 = *(STACK[0x7B0] + 24);
  v6 = __ROR8__((v5 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v7 = (v6 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v8 = (__ROR8__((v6 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v7) ^ 0xE49D77DF873DBF7ELL;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xF5A2F1B9B5D0B209;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = (v12 + v11 - ((2 * (v12 + v11)) & 0x512B57FB6494046ALL) + 0x2895ABFDB24A0235) ^ 0x71F61D38E7937D2ALL;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = (__ROR8__(v13, 8) + v14) ^ 0x61459D2AF01F24F7;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = *(v2 + 8 * a1);
  v19 = (((v17 + v16) ^ 0x79C11BFC4894BC72 | 0xC3906BA06D3A2EC5) - ((v17 + v16) ^ 0x79C11BFC4894BC72 | 0x3C6F945F92C5D13ALL) + 0x3C6F945F92C5D13ALL) ^ 0xDE926C5E552A4CDBLL;
  v20 = v19 ^ __ROR8__(v16, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ v3;
  v22 = __ROR8__(v21, 8);
  v23 = __ROR8__(v20, 61);
  v5[10] = (((((2 * (v22 + (v21 ^ v23))) | 0xC38C36871CFCF294) - (v22 + (v21 ^ v23)) - 0x61C61B438E7E794ALL) ^ 0xCAF65991A6F9250BLL) >> (8 * ((v5 + 10) & 7u))) ^ HIBYTE(v4) ^ 0x75;
  v24 = __ROR8__((v5 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v25 = v24 - ((2 * v24 + 0x2A11B965E67D9C56) & 0x89AD15096A95E46ELL) - 0x262098C857763F9ELL;
  v26 = v25 ^ 0xD3FC8BFDA5C15E5;
  v25 ^= 0xA5792D2843AA64B9;
  v27 = __ROR8__(v26, 8);
  v28 = (((2 * (v27 + v25)) & 0x172EA68DBB7EC94) - (v27 + v25) + 0x7F468ACB922409B5) ^ 0x9BDBFD141519B6CBLL;
  v29 = v28 ^ __ROR8__(v25, 61);
  v30 = __ROR8__(v28, 8);
  v31 = __ROR8__((((2 * (v30 + v29)) & 0xD4F2B43A3958542) - (v30 + v29) - 0x6A795A1D1CAC2A2) ^ 0xCFA9BE79BE58F57, 8);
  v32 = (((2 * (v30 + v29)) & 0xD4F2B43A3958542) - (v30 + v29) - 0x6A795A1D1CAC2A2) ^ 0xCFA9BE79BE58F57 ^ __ROR8__(v29, 61);
  v33 = (v31 + v32) ^ 0x5963B6C555D97F1FLL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((v35 + v34) | 0x3A57A17B6EDF06BLL) - ((v35 + v34) | 0xFC5A85E849120F94) - 0x3A57A17B6EDF06CLL) ^ 0x62E0E73D46F2D49CLL;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x64C31C027084DE6CLL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((v40 + v39) | 0x3F31863D75651161) - ((v40 + v39) | 0xC0CE79C28A9AEE9ELL) - 0x3F31863D75651162) ^ 0x251B6DD93736BE62;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v5[11] = (((((2 * (v43 + v42)) | 0xAB41BFF64D60CE6CLL) - (v43 + v42) - 0x55A0DFFB26B06736) ^ 0xFE909D290E373B77) >> (8 * ((v5 + 11) & 7u))) ^ BYTE6(v4) ^ 0x30;
  v44 = (__ROR8__((v5 + 12) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v45 = __ROR8__(v44 ^ 0x4DE9423B6F16E7D2, 8);
  v44 ^= 0xE5AFA7ACF6E0968ELL;
  v46 = (v45 + v44 - ((2 * (v45 + v44)) & 0xA684DABE1F7F2120) - 0x2CBD92A0F0406F70) ^ 0x37DF1A8088822FEELL;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((v48 + v47) | 0x2D1013F9AFD52057) - ((v48 + v47) | 0xD2EFEC06502ADFA8) - 0x2D1013F9AFD52058) ^ 0xD8B2E2401A05925ELL;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x5963B6C555D97F1FLL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (v53 + v52 - ((2 * (v53 + v52)) & 0x505C9B69C721B602) + 0x282E4DB4E390DB01) ^ 0x496BD09E138FFFF6;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ 0x64C31C027084DE6CLL;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ v3;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = __ROR8__(v58, 8);
  v5[12] = (((((2 * (v60 + v59)) & 0xA6AF603E61524BD2) - (v60 + v59) + 0x2CA84FE0CF56DA16) ^ 0x87980D32E7D18657) >> (8 * ((v5 + 12) & 7u))) ^ BYTE5(v4) ^ 0x26;
  v61 = __ROR8__((v5 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v62 = ((2 * (v61 - 0x6AF7234D0CC131D5)) | 0xBCD338F7A72AF0E2) - (v61 - 0x6AF7234D0CC131D5) - 0x5E699C7BD3957871;
  v63 = v62 ^ 0x1780DE40BC839FA3;
  v62 ^= 0xBFC63BD72575EEFFLL;
  v64 = __ROR8__(v63, 8);
  v65 = (((v64 + v62) | 0x524D786A2DAA5236) - ((v64 + v62) | 0xADB28795D255ADC9) - 0x524D786A2DAA5237) ^ 0xB6D00FB5AA97ED48;
  v66 = v65 ^ __ROR8__(v62, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (((2 * (v67 + v66)) | 0xC461725543BD74EALL) - (v67 + v66) - 0x6230B92AA1DEBA75) ^ 0x97924893140E087CLL;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0x5963B6C555D97F1FLL;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = (__ROR8__(v70, 8) + v71) ^ 0x61459D2AF01F24F7;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = __ROR8__(v72, 8);
  v75 = (((v74 + v73) | 0xD6A77E9273FF605BLL) - ((v74 + v73) | 0x2958816D8C009FA4) + 0x2958816D8C009FA4) ^ 0xB2646290037BBE37;
  v76 = v75 ^ __ROR8__(v73, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (v77 + v76 - ((2 * (v77 + v76)) & 0x9E7D2340626A9232) - 0x30C16E5FCECAB6E7) ^ 0xD5147A447366E61ALL;
  v5[13] = (((__ROR8__(v78, 8) + (v78 ^ __ROR8__(v76, 61))) ^ v1) >> (8 * ((v5 + 13) & 7u))) ^ BYTE4(v4) ^ 0x9B;
  v79 = __ROR8__((v5 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v80 = v79 - ((2 * v79 + 0x2A11B965E67D9C56) & 0x20559374910370F8) - 0x5ACC5992C43F7959;
  v81 = v80 ^ 0x59C38B8127975FAELL;
  v80 ^= 0xF1856E16BE612EF2;
  v82 = (__ROR8__(v81, 8) + v80) ^ 0xE49D77DF873DBF7ELL;
  v83 = v82 ^ __ROR8__(v80, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0xF5A2F1B9B5D0B209;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0x5963B6C555D97F1FLL;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = __ROR8__(v86, 8);
  v89 = __ROR8__((v88 + v87 - ((2 * (v88 + v87)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL, 8);
  v90 = (v88 + v87 - ((2 * (v88 + v87)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL ^ __ROR8__(v87, 61);
  v91 = (v89 + v90 - ((2 * (v89 + v90)) & 0xBB2E9B3140AA9E2CLL) + 0x5D974D98A0554F16) ^ 0x3954519AD0D1917ALL;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ v3;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = __ROR8__(v93, 8);
  v5[14] = (((((v95 + v94) | 0x6B6AF9C6B406ECE7) - ((v95 + v94) | 0x949506394BF91318) - 0x6B6AF9C6B406ECE8) ^ 0xC05ABB149C81B0A6) >> (8 * ((v5 + 14) & 7u))) ^ BYTE3(v4) ^ 0xB0;
  v96 = __ROR8__((v5 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v97 = ((v96 - 0x6AF7234D0CC131D5) & 0xF89A3C6BA21CFB5FLL ^ 0x40000C09A010C112) + ((v96 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) - (((v96 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) & 0xF89A3C6BA21CFB5FLL);
  v98 = v97 ^ 0x8A84C36C7E52240;
  v97 ^= 0xA0EEA9A15E13531CLL;
  v99 = (__ROR8__(v98, 8) + v97) ^ 0xE49D77DF873DBF7ELL;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0xF5A2F1B9B5D0B209;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = __ROR8__(v101, 8);
  v104 = __ROR8__((((2 * (v103 + v102)) & 0x7EC0B560615BD22) - (v103 + v102) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71, 8);
  v105 = (((2 * (v103 + v102)) & 0x7EC0B560615BD22) - (v103 + v102) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71 ^ __ROR8__(v102, 61);
  v106 = (((v104 + v105) & 0xF4B1E271DC896087 ^ 0xA0425158896006) + ((v104 + v105) ^ 0xFE51A922A5729599) - (((v104 + v105) ^ 0xFE51A922A5729599) & 0xF4B1E271DC896087)) ^ 0x6BA5D67989E4D1E9;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = __ROR8__(v106, 8);
  v109 = (((2 * (v108 + v107)) | 0x81910D2EFE6F15ACLL) - (v108 + v107) - 0x40C886977F378AD6) ^ 0x240B9A950FB354BALL;
  v110 = v109 ^ __ROR8__(v107, 61);
  v111 = __ROR8__(v109, 8);
  v112 = (((v111 + v110) | 0x452FEAF2D8983268) - ((v111 + v110) | 0xBAD0150D2767CD97) - 0x452FEAF2D8983269) ^ 0x5F0501169ACB9D6BLL;
  v113 = v112 ^ __ROR8__(v110, 61);
  v114 = __ROR8__(v112, 8);
  v5[15] = (((v114 + v113 - ((2 * (v114 + v113)) & 0x5CD5F962F5DFE9B2) - 0x5195034E85100B27) ^ 0x55ABE635268A898) >> (8 * ((v5 + 15) & 7u))) ^ BYTE2(v4) ^ 0x93;
  v115 = __ROR8__((v5 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v116 = -2 - (((0x6AF7234D0CC131D4 - v115) | 0xB9373BCC9E95648DLL) + ((v115 - 0x6AF7234D0CC131D5) | 0x46C8C433616A9B72));
  v117 = v116 ^ 0xF0DE79F7F183835FLL;
  v116 ^= 0x58989C606875F203uLL;
  v118 = (__ROR8__(v117, 8) + v116) ^ 0xE49D77DF873DBF7ELL;
  v119 = v118 ^ __ROR8__(v116, 61);
  v120 = (__ROR8__(v118, 8) + v119) ^ 0xF5A2F1B9B5D0B209;
  v121 = v120 ^ __ROR8__(v119, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0x5963B6C555D97F1FLL;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = __ROR8__(v122, 8);
  v125 = (((2 * (v124 + v123)) & 0x24C3B6EDA515D42ALL) - (v124 + v123) + 0x6D9E24892D7515EALL) ^ 0xCDBB9A3DD6A311DLL;
  v126 = v125 ^ __ROR8__(v123, 61);
  v127 = __ROR8__(v125, 8);
  v128 = (((v127 + v126) | 0x3A521DF821A27A3ELL) - ((v127 + v126) | 0xC5ADE207DE5D85C1) - 0x3A521DF821A27A3FLL) ^ 0x5E9101FA5126A452;
  v129 = v128 ^ __ROR8__(v126, 61);
  v130 = (__ROR8__(v128, 8) + v129) ^ v3;
  v131 = __ROR8__(v130, 8);
  v132 = __ROR8__(v129, 61);
  LOBYTE(v129) = (((((2 * (v131 + (v130 ^ v132))) | 0x4D724CAE0D8F11E6) - (v131 + (v130 ^ v132)) + 0x5946D9A8F938770DLL) ^ 0xD8964852E40D4B2) >> (8 * ((v5 + 16) & 7u))) ^ BYTE1(v4) ^ 0x97;
  v133 = __ROR8__((v5 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v5[16] = v129;
  v134 = ((2 * ((v133 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4)) | 0x301A5F137AACAE0ELL) - ((v133 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4) - 0x180D2F89BD565707;
  v135 = v134 ^ 0xDE90BDF0289CA71;
  v134 ^= 0xA5AFEE489B7FBB2DLL;
  v136 = __ROR8__(v135, 8);
  v137 = (((2 * (v136 + v134)) | 0x692CEF71A0CBBC0ELL) - (v136 + v134) - 0x349677B8D065DE07) ^ 0xD00B006757586179;
  v138 = v137 ^ __ROR8__(v134, 61);
  v139 = __ROR8__(v137, 8);
  v140 = __ROR8__((((2 * (v139 + v138)) & 0xFD81E0C09A12569ALL) - (v139 + v138) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL, 8);
  v141 = (((2 * (v139 + v138)) & 0xFD81E0C09A12569ALL) - (v139 + v138) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL ^ __ROR8__(v138, 61);
  v142 = (v140 + v141) ^ 0x5963B6C555D97F1FLL;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = (__ROR8__(v142, 8) + v143) ^ 0x61459D2AF01F24F7;
  v145 = v144 ^ __ROR8__(v143, 61);
  v146 = __ROR8__(v144, 8);
  v147 = (v146 + v145 - ((2 * (v146 + v145)) & 0x3076304A369A11B8) - 0x67C4E7DAE4B2F724) ^ 0xFCF804276BC9D6B0;
  v148 = v147 ^ __ROR8__(v145, 61);
  v149 = __ROR8__(v147, 8);
  v150 = (v149 + v148 - ((2 * (v149 + v148)) & 0x43F5BC2EBD15E7BELL) + 0x21FADE175E8AF3DFLL) ^ 0x3BD035F31CD95CDCLL;
  v5[17] = (((__ROR8__(v150, 8) + (v150 ^ __ROR8__(v148, 61))) ^ v1) >> (8 * ((v5 + 17) & 7u))) ^ v4 ^ 8;
  return v18();
}

uint64_t sub_100212DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, int a25)
{
  v28 = ((1115678749 - (&a20 | 0x427FE81D) + (&a20 | 0xBD8017E2)) ^ 0xE5E9C480) * v26;
  a24 = 1032869496 - v28;
  a25 = v28 + v25 + 1674577943;
  a22 = a18;
  a23 = &a17;
  a21 = v28 - 1521842232;
  v29 = (*(v27 + 8 * (v25 ^ 0x211Bu)))(&a20);
  return (*(v27 + 8 * (((a20 == (((v25 - 1043) | 0x1849) ^ 0xF80B06)) * ((v25 - 1043) ^ 0x361)) ^ v25)))(v29);
}

uint64_t sub_100212E80()
{
  *(v1 - 224) = (v0 - 2140796178) ^ (914963389 * ((v1 + 278203576 - 2 * ((v1 - 232) & 0x10950DA0)) ^ 0x3C69BCDB));
  (*(v2 + 8 * (v0 + 9570)))(v1 - 232);
  v3 = *(STACK[0x720] + 8);
  STACK[0x760] = *(STACK[0x330] + 8 * v0);
  return sub_100214DBC(v3);
}

uint64_t sub_100212F34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X4>, char a5@<W5>, _BYTE *a6@<X6>, char a7@<W8>)
{
  v8 = STACK[0x3F8] - 8742;
  *a4 = a5;
  *a6 = v7;
  return sub_10026C598(a1, a2, a3, v8, a7);
}

uint64_t sub_100212F58@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 104) = veorq_s8(*(v3 + 88), xmmword_1002BF680);
  v5 = *(v3 + 4);
  *(a3 + 20) = v5;
  return (*(v4 + 8 * (((v5 == ((732 * ((a2 - 3313) ^ 0x1437)) ^ 0x2250)) * ((a2 - 3313) ^ 0x2096)) ^ (a2 - 3313))))(a1, 16215976);
}

void sub_100213060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  __asm { BRAA            X9, X17 }
}

void sub_1002130DC(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  LODWORD(STACK[0x534]) = v1;
  LODWORD(STACK[0x61C]) = 197499219;
  LODWORD(STACK[0x7E0]) = 197499219;
  LODWORD(STACK[0x844]) = v2;
  JUMPOUT(0x100138DC4);
}

uint64_t sub_100213158()
{
  v3 = LODWORD(STACK[0x2B0]);
  if (v3 == 17168)
  {
    return (*(STACK[0x330] + 8 * ((v2 - 3881) ^ (6816 * (v1 == 197499223)))))();
  }

  if (v3 == 20706)
  {
    return (*(STACK[0x330] + 8 * ((16036 * (v1 == (((v2 - 734) | 0x463) ^ (v0 - 2867)))) ^ (v2 + 2062))))();
  }

  if (v3 != 33980)
  {
    return sub_10027B33C();
  }

  STACK[0x440] = STACK[0x718] + STACK[0x220];
  return sub_10023DB10((v2 - 994) | 8u);
}

uint64_t sub_100213230@<X0>(int a1@<W8>)
{
  v3 = a1 - 1728;
  v4 = *(v1 + 8);
  STACK[0x698] = *(v2 + 8 * v3);
  return sub_10024241C(v4);
}

uint64_t sub_10021329C@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 4427 + (v2 ^ 0x1BD9u);
  *(a1 + v5) = *(v4 + v5) - ((2 * *(v4 + v5)) & 0x78) + 60;
  return (*(v3 + 8 * ((6011 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_1002132F4@<X0>(uint64_t a1@<X2>, int a2@<W5>, int a3@<W8>)
{
  v3 = a3 ^ 0x86u;
  v4 = STACK[0x930];
  v5 = STACK[0x930] + 4;
  STACK[0x3D0] = STACK[0x6E0];
  STACK[0x2E0] = (v5 ^ 0xE76B6AF3B37FAF7FLL) + 0x7ED7D77DFCFFF497 + ((2 * v5) & 0xCED6D5E766FF5EFELL);
  v6 = v4 + (v3 ^ 0x146F);
  STACK[0x2D0] = STACK[0x928];
  v7 = STACK[0x920];
  STACK[0x2C0] = ((STACK[0x920] + 4) ^ 0x6EE3F2F1B2FFB75FLL) - 0x8A0B08002801349 + ((2 * (STACK[0x920] + 4)) & 0xDDC7E5E365FF6EBELL);
  STACK[0x2B0] = ((STACK[0x910] + 4) ^ 0x7EE3E77BFCFFADB7) - 0x18A0A50A4C8009A1 + ((2 * (STACK[0x910] + 4)) & 0xFDC7CEF7F9FF5B6ELL);
  STACK[0x2A0] = ((STACK[0x960] + 4) ^ 0xEFCB6279B07FFFFFLL) + 0x7677DFF7FFFFA417 + ((2 * (STACK[0x960] + 4)) & 0xDF96C4F360FFFFFELL);
  STACK[0x290] = ((STACK[0x980] + 4) ^ 0x7F63E379F7FFFDFFLL) - 0x1920A108478059E9 + ((2 * (STACK[0x980] + 4)) & 0xFEC7C6F3EFFFFBFELL);
  STACK[0x280] = ((STACK[0x900] + 4) ^ 0x7F5F77F1FAFFFC77) - 0x191C35804A805861 + ((2 * (STACK[0x900] + 4)) & 0xFEBEEFE3F5FFF8EELL);
  v8 = STACK[0x9A0];
  STACK[0x270] = ((STACK[0x9A0] + 4) ^ 0xFE576B7FF4FFEC1ELL) + 0x67EBD6F1BB7FB7F8 + ((2 * (STACK[0x9A0] + 4)) & 0xFCAED6FFE9FFD83CLL);
  v9 = STACK[0x9B0];
  STACK[0x250] = ((STACK[0x9B0] + 4) ^ 0x7E776BFDB1FFA6FELL) - 0x1834298C018002E8 + ((2 * (STACK[0x9B0] + 4)) & 0xFCEED7FB63FF4DFCLL);
  STACK[0x230] = ((STACK[0x8F0] + 4) ^ 0xFEDB56F1B47FFC9FLL) + 0x6767EB7FFBFFA777 + ((2 * (STACK[0x8F0] + 4)) & 0xFDB6ADE368FFF93ELL);
  STACK[0x220] = ((STACK[0x9E8] + 4) ^ 0xEFF34A79B07FBF36) + 0x764FF7F7FFFFE4E0 + ((2 * (STACK[0x9E8] + 4)) & 0xDFE694F360FF7E6CLL);
  STACK[0x210] = ((v4 + 6) ^ 0xFB5EBFFBFFFFF3FFLL) + 0x66AFFFBDF8FBFD3ALL + ((2 * (v4 + 6)) & 0xF6BD7FF7FFFFE7FELL);
  STACK[0x200] = ((v7 + 6) ^ 0x6AEFFFBDFAFBF53BLL) - 0x8E1400402000402 + ((2 * (v7 + 6)) & 0xD5DFFF7BF5F7EA76);
  STACK[0x2F0] = v6;
  STACK[0x260] = v8 + 10;
  STACK[0x240] = v9 + 10;
  STACK[0x350] = STACK[0x7A0];
  STACK[0x340] = STACK[0x668];
  STACK[0x310] = STACK[0x740];
  STACK[0x300] = STACK[0x7E8];
  STACK[0x330] = STACK[0x7A8];
  STACK[0x3C0] = STACK[0x478];
  STACK[0x3B0] = STACK[0x4F8];
  STACK[0x320] = STACK[0x520];
  STACK[0x3A0] = STACK[0x790];
  LODWORD(STACK[0x360]) = LOWORD(STACK[0x8DA]);
  LODWORD(STACK[0x390]) = LOWORD(STACK[0x8BE]);
  LODWORD(STACK[0x370]) = LOWORD(STACK[0x8AE]);
  LODWORD(STACK[0x380]) = LOWORD(STACK[0x88E]);
  return sub_10021BD58(0xCC6D33EEA00FE42, 0x84D53DF2213B4FA4, a1, 0xF99C96608AFF80DELL, 0x3D956106EF62582ELL, a2);
}

uint64_t sub_100213BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, uint64_t a19)
{
  v26 = 1875091903 * ((&a16 & 0xF94EE7ED | ~(&a16 | 0xF94EE7ED)) ^ 0x30C49B91);
  a18 = a15;
  HIDWORD(a16) = (v24 ^ 0xECDDFEBA) + ((2 * v24) & 0xD9BBFD74) + 859748336 + v26;
  a17 = v26 + 7724;
  (v25)[9645](&a16);
  v27 = 1824088897 * ((&a16 & 0x965F451C | ~(&a16 | 0x965F451C)) ^ 0x31C96981);
  LODWORD(a16) = v27 + 3757;
  a17 = (v23 ^ 0xFFB6EABF) + ((2 * v23) & 0xFF6DD57E) - v27 + 1324220363;
  a18 = v22;
  a19 = a15;
  (v25)[9631](&a16);
  a16 = v21;
  a18 = a15;
  a17 = 1824088897 * (((&a16 | 0x5269D7E4) - &a16 + (&a16 & 0xAD962818)) ^ 0xA000486) + 2305;
  (v25)[9590](&a16);
  v28 = 1875091903 * ((&a16 & 0x2055F295 | ~(&a16 | 0x2055F295)) ^ 0xE9DF8EE9);
  HIDWORD(a16) = v28 + (*v20 ^ 0x3B1EBFAE) + ((2 * *v20) & 0x763D7F5C) - 453118212;
  a17 = v28 + 7724;
  a18 = a15;
  (v25)[9645](&a16);
  v29 = 1875091903 * ((&a16 + 1753841981 - 2 * (&a16 & 0x6889813D)) ^ 0x5EFC02BE);
  HIDWORD(a16) = v29 + (v20[1] ^ 0xA99EF7FA) + ((2 * v20[1]) & 0x533DEFF4) + 1987952304;
  a17 = v29 + 7724;
  a18 = a15;
  (v25)[9645](&a16);
  v30 = 1875091903 * ((1718907403 - (&a16 | 0x6674720B) + (&a16 | 0x998B8DF4)) ^ 0xAFFE0E77);
  a18 = a15;
  HIDWORD(a16) = (v19 ^ 0xEF7FBFEB) + ((2 * v19) & 0xDEFF7FD6) + 815593151 + v30;
  a17 = v30 + 7724;
  v31 = (v25[9645])(&a16);
  return (v25[(3541 * (a16 == 16257999)) ^ 0x1085u])(v31);
}

uint64_t sub_100213F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(v63 + 8 * (((((v65 == v66) ^ (v64 - 79)) & 1) * (v64 - 2881)) ^ v64));
  STACK[0x260] = v65;
  return v67(a63, 0xAB3042D228875C41);
}

void sub_100214174()
{
  v0 = *(&off_100315F70 + ((-85 * ((dword_100330E70 - dword_100330EC0) ^ 0xDF)) ^ byte_1002B7200[byte_1002B0320[(-85 * ((dword_100330E70 - dword_100330EC0) ^ 0xDF))] ^ 0x67]) + 273);
  v1 = *(&off_100315F70 + (byte_1002B7200[byte_1002B0320[(-85 * (*v0 ^ dword_100330E70 ^ 0xDF))] ^ 0x67] ^ (-85 * (*v0 ^ dword_100330E70 ^ 0xDF))) + 143);
  v2 = *v0 - &v4 + *v1;
  *v0 = 2054362027 * v2 + 0xB4207763EF64BDFLL;
  *v1 = 2054362027 * (v2 ^ 0xB4207763EF64BDFLL);
  v5[0] = 476323082 - 1710126949 * ((-811960106 - (v5 | 0xCF9A78D6) + (v5 | 0x30658729)) ^ 0x27EDCB9);
  LOBYTE(v1) = -85 * ((*v1 + *v0) ^ 0xDF);
  v3 = *(&off_100315F70 + ((-85 * ((dword_100330E70 + dword_100330EC0) ^ 0xDF)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * ((dword_100330E70 + dword_100330EC0) ^ 0xDF))] ^ 0x71]) + 120) - 8;
  (*&v3[8 * (v1 ^ byte_1002B7200[byte_1002B0320[v1] ^ 0x6D]) + 76952])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1002143D4()
{
  STACK[0x618] = 0;
  v2 = STACK[0x660];
  v3 = STACK[0x9B8];
  STACK[0x3D8] = *(v1 + 8 * (v0 - 5446));
  LODWORD(STACK[0xA24]) = v3;
  STACK[0xA28] = &STACK[0x618];
  return (*(v1 + 8 * (((v2 != 0) * ((((v0 - 3574) | 0x1406) - 1552) ^ 0x15FB)) ^ (v0 + 3787))))();
}

uint64_t sub_10021448C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a16 = 1317436891 * ((&a14 & 0x1DF45113 | ~(&a14 | 0x1DF45113)) ^ 0x5208369A) + 8154;
  a14 = &a12;
  v18 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((1621 * (a15 == (v17 ^ 0xC6A12FC3) + 978775631)) ^ v17)))(v18);
}

uint64_t sub_100214728@<X0>(int a1@<W8>)
{
  v2 = a1 + 5732;
  v3 = (a1 - 1449697369) & 0x5668B6ED;
  v4 = (*(v1 + 8 * ((a1 + 5732) ^ 0x64D)))(32, 0x103004054B5FA7DLL);
  v5 = STACK[0x400];
  STACK[0x998] = v4;
  return (*(v5 + 8 * (((v4 == 0) * (v3 - 7215)) ^ v2)))();
}

uint64_t sub_100214830()
{
  v3 = v1 | 0x410;
  STACK[0xA68] = v0;
  v4 = STACK[0x558];
  STACK[0xA70] = STACK[0x558];
  return (*(v2 + 8 * ((13493 * (v0 - v4 > ((((v3 - 2047442700) & 0x7A097FFFu) - 5590) ^ 0x1FCuLL))) ^ v3)))();
}

uint64_t sub_10021488C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, int a11, unsigned int a12)
{
  v17 = (*(a1 + 24) ^ v15) + *(v12 + 16) - 434913521;
  v18 = 1358806181 * ((((&a9 | 0xA38DAABA) ^ 0xFFFFFFFE) - (~&a9 | 0x5C725545)) ^ 0x635D39C6);
  a10 = v12;
  a9 = 2035409087 - v18;
  a11 = v16 - v18 + 6800;
  a12 = v18 - 332761579 + v17;
  v19 = (*(v14 + 8 * (v16 ^ 0x263B)))(&a9);
  return (*(v14 + 8 * (((*(v12 + 24) == v13) * (v16 + 4283)) ^ v16)))(v19);
}

void sub_10021495C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  LODWORD(STACK[0x41C]) = 16257999;
  JUMPOUT(0x1001776A4);
}

uint64_t sub_1002149E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 224) = -97 * ((((v11 + 24) | 0x60) - ((v11 + 24) & 0x60)) ^ 0x65) + 33;
  *(v11 - 232) = a9;
  *(v11 - 220) = 956911519 * ((((v11 - 232) | 0x38977A60) - ((v11 - 232) & 0x38977A60)) ^ 0xD2060A65) + 5002 + v9;
  v13 = (*(v12 + 8 * (v9 + 8103)))(v11 - 232);
  return (*(STACK[0x330] + 8 * (((*(v11 - 216) == (((v9 - 998) | 0x48) ^ (v10 - 584))) * (((v9 - 998) ^ 0x1964) - 3329)) ^ v9)))(v13);
}

void sub_100214B00()
{
  LODWORD(STACK[0x47C]) = v0;
  LODWORD(STACK[0x754]) = STACK[0x2F0];
  LODWORD(STACK[0x6C4]) = STACK[0x300];
  LODWORD(STACK[0x3D4]) = v1;
  JUMPOUT(0x100231B7CLL);
}

uint64_t sub_100214BDC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - 2113;
  (*(v2 + 8 * (v1 ^ 0x3634)))(a1);
  v4 = STACK[0x330];
  *(STACK[0x748] + 24) = 0;
  v5 = (*(v4 + 8 * (v3 ^ 0x2EEB)))();
  STACK[0x748] = 0;
  return sub_100214C2C(v5);
}

uint64_t sub_100214C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, int a17, unsigned int a18)
{
  a18 = 1317436891 * ((&a16 + 1971983268 - 2 * (&a16 & 0x758A13A4)) ^ 0xC5898BD2) + 8154;
  a16 = &a12;
  v19 = (*(v18 + 77096))(&a16);
  return (*(v18 + 8 * ((4478 * (a17 == 16257999)) ^ 0xB39u)))(v19);
}

void sub_100214D40(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = !v5 && *a4 == 0 && a1 != 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100214E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unint64_t a15, uint64_t a16, int a17)
{
  v21 = 956911519 * (((v20 | 0x53F9954282BDF5E5) - v20 + (v20 & 0xAC066ABD7D420A18)) ^ 0x16CFE09E682C85E0);
  a15 = v17 - ((2 * v17) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v21;
  a16 = a12;
  a14 = v21 ^ 0x3FE;
  v22 = (*(v18 + 76792))(&a14);
  return (*(v18 + 8 * ((104 * (a17 == v19)) ^ 0xB2F)))(v22);
}

uint64_t sub_100215314@<X0>(uint64_t a1@<X1>, uint64_t a2@<X6>, uint64_t a3@<X7>, int a4@<W8>)
{
  v18 = v4 + a1;
  v19 = ((a4 - 2142928068) & 0x7FBA5BF7 ^ 0xFFFFFFFFFFFFFCABLL) + v4;
  v20 = __ROR8__((a2 + v19) & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = v20 - ((v12 + 2 * v20) & 0x9AB21C279A9FA3B4) + 0x23E8DF0DACD2C3BDLL;
  v22 = v21 ^ 0xFC06D5ED7418C184;
  v21 ^= 0x48785223880F4E9EuLL;
  v23 = (__ROR8__(v22, 8) + v21) ^ v15;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (((2 * (v25 + v24)) | 0x18EB48C98BD8DF8CLL) - (v25 + v24) + 0x738A5B9B3A13903ALL) ^ 0xC4AB9D20D7B66D92;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x57D072DFC3A5F657;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__((v18 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = __ROR8__(v28, 8);
  v32 = (v31 + v29 - ((2 * (v31 + v29)) & 0x2C52FD9897BC5F5CLL) + 0x16297ECC4BDE2FAELL) ^ 0xE44B7CAA9406F12CLL;
  v33 = v32 ^ __ROR8__(v29, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v11;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v16;
  v37 = (0x6AF7234D0CC131D4 - v30) & 0xA03A397A7DAB0203 | (v30 + 0x1508DCB2F33ECE2BLL) & 0x5FC5C6858254FDFCLL;
  v38 = v37 ^ 0xE9D37B4112BDE5D1;
  v37 ^= 0x41959ED68B4B948DuLL;
  v39 = (__ROR8__(v38, 8) + v37) ^ 0xE49D77DF873DBF7ELL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0xF5A2F1B9B5D0B209;
  v42 = __ROR8__(v36, 8) + (v36 ^ __ROR8__(v35, 61));
  v43 = v41 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v41, 8);
  v45 = (v5 - ((v44 + v43) | v5) + ((v44 + v43) | 0x14FFD55FD52326CCLL)) ^ 0x4D9C639A80FA59D3;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (((2 * (v47 + v46)) | 0x1ACBF2B25906961CLL) - (v47 + v46) + a3) ^ v13;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (v50 + v49 - (v14 & (2 * (v50 + v49))) + v17) ^ v6;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  *(v18 + 9) = (((((2 * v42) & 0x5202C593F84559D0) - v42 - 0x290162C9FC22ACE9) ^ 0xE3CC50A6FE864535) >> (8 * ((a2 + v19) & 7))) ^ (((__ROR8__((v8 - ((v53 + v52) | v8) + ((v53 + v52) | v7)) ^ v9, 8) + ((v8 - ((v53 + v52) | v8) + ((v53 + v52) | v7)) ^ v9 ^ __ROR8__(v52, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v18 + 9) & 7))) ^ *(a2 + v19);
  return (*(v10 + 8 * ((57 * (v19 == 0)) ^ (a4 - 8088))))();
}

uint64_t sub_1002156A0()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x314D)))(128, 0x10800400FED9166);
  v3 = STACK[0x330];
  STACK[0x348] = v2;
  return (*(v3 + 8 * (((v2 != 0) * (((v1 - 2623) | 0x10D) - 2511)) ^ v1)))();
}

void sub_100215734(uint64_t a1)
{
  v1 = *(a1 + 8) - 1824088897 * ((2 * (a1 & 0x4A10821D) - a1 - 1242595870) ^ 0xED86AE80);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1002157EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (v4 == 16215947)
  {
    return (*(a4 + 8 * ((1456 * (*(STACK[0x5F8] + 97) == (2 * (v5 + 87) - 55))) ^ (v5 - 4221))))();
  }

  if (v4 != 16257999)
  {
    return sub_100215C34(a1, a2, a3, a4);
  }

  v7 = STACK[0x3E4];
  v8 = LODWORD(STACK[0x3E4]) - 976;
  v9 = *(STACK[0x4A8] + 24);
  STACK[0x520] = v9;
  return (*(a4 + 8 * ((32 * (((v9 == 0) ^ (v7 - 20)) & 1)) & 0xBF | ((((v9 == 0) ^ (v7 - 5140)) & 1) << 6) | v8)))();
}

uint64_t sub_1002158A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v6 = LOWORD(STACK[0x89E]);
  if (v6 == 17168)
  {
    goto LABEL_5;
  }

  if (v6 != 33980)
  {
    if (v6 != 20706)
    {
      return sub_100215C34(a1, a2, a3, a4);
    }

LABEL_5:
    STACK[0x780] = a5;
    LODWORD(STACK[0x7E0]) = a3;
    JUMPOUT(0x100215AD4);
  }

  v8 = STACK[0x520];
  STACK[0x780] = a5;
  LODWORD(STACK[0x7E0]) = a3;
  STACK[0x5B8] = v8 + v5;
  v9 = *(STACK[0x5F8] + 20);
  if (v9 == 1)
  {
    JUMPOUT(0x100183C64);
  }

  if (v9)
  {
    return sub_100215C34(a1, a2, a3, a4);
  }

  return (*(a4 + 8 * ((76 * (*(STACK[0x5F8] + 97) == ((LODWORD(STACK[0x3E4]) + 1575982986) & 0xF2 ^ 0xA3))) ^ (LODWORD(STACK[0x3E4]) + 1624))))(a1, a2);
}

uint64_t sub_100215994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (v4 == 16215947)
  {
    v7 = STACK[0x5F8];
    LODWORD(STACK[0x560]) = 1473592423 * *(STACK[0x5F8] + 16) - 516596334;
  }

  else
  {
    if (v4 != 16257999)
    {
      return sub_100215C34(a1, a2, a3, a4);
    }

    v7 = STACK[0x5F8];
    v5 = STACK[0x3E4];
  }

  v8 = *v7;
  STACK[0x718] = 0;
  STACK[0x680] = 0;
  return (*(a4 + 8 * (((v8 != 0) * ((v5 - 2033738854) & 0x7938535A ^ 0x330)) ^ (v5 + 3159))))(a1, a2, a3);
}

uint64_t sub_100215A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v5 = LOWORD(STACK[0x8D0]);
  switch(v5)
  {
    case 17168:
      goto LABEL_5;
    case 33980:
      JUMPOUT(0x100215AE8);
    case 20706:
LABEL_5:
      STACK[0x410] = a5;
      JUMPOUT(0x100215AD4);
  }

  return sub_100215C34(a1, a2, a3, a4);
}

uint64_t sub_100215A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v5 = LOWORD(STACK[0x8D2]);
  switch(v5)
  {
    case 17168:
      goto LABEL_5;
    case 33980:
      JUMPOUT(0x100215B58);
    case 20706:
LABEL_5:
      STACK[0x3F8] = a5;
      JUMPOUT(0x100215AD4);
  }

  return sub_100215C34(a1, a2, a3, a4);
}

uint64_t sub_100215AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v6 = LOWORD(STACK[0x8CA]);
  if (v6 == 17168)
  {
    goto LABEL_5;
  }

  if (v6 != 33980)
  {
    if (v6 != 20706)
    {
      return sub_100215C34(a1, a2, a3, a4);
    }

LABEL_5:
    STACK[0x680] = a5;
    LODWORD(STACK[0x61C]) = a3;
    return sub_100215C34(a1, a2, a3, a4);
  }

  v8 = LODWORD(STACK[0x3E4]) ^ 0x19F3;
  v9 = LODWORD(STACK[0x3E4]) + 1160;
  v10 = LODWORD(STACK[0x3E4]) - 3695;
  v11 = STACK[0x7A8];
  STACK[0x680] = a5;
  LODWORD(STACK[0x61C]) = a3;
  STACK[0x568] = v11 + v5;
  return (*(a4 + 8 * (((*(STACK[0x5F8] + 124) & 1 | (LODWORD(STACK[0x560]) == 0)) * (v9 ^ 0x169B ^ v8)) ^ v10)))(a1, a2);
}

uint64_t sub_100215C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v77 = STACK[0x260] - (v73 & 0xFFFFFFF8) + 8;
  v78 = v74 + v73 - STACK[0x260];
  v79.i64[0] = v78 - 7;
  v79.i64[1] = v78 - 8;
  v80.i64[0] = v78 - 5;
  v80.i64[1] = v78 - 6;
  v81.i64[0] = v78 - 1;
  v81.i64[1] = v78 - 2;
  v82.i64[0] = v78 - 5239 + (v72 ^ 0xF04u);
  v82.i64[1] = v78 - 4;
  v83 = vandq_s8(v82, *&STACK[0x3A0]);
  v84 = vandq_s8(v81, *&STACK[0x3A0]);
  v85 = vandq_s8(v80, *&STACK[0x3A0]);
  v86 = vandq_s8(v79, *&STACK[0x3A0]);
  v87 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v90 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v91 = vdupq_n_s64(0x38uLL);
  v92 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x370], v90), *&STACK[0x360]), vorrq_s8(vaddq_s64(v90, *&STACK[0x390]), *&STACK[0x380]));
  v93 = vorrq_s8(vaddq_s64(v88, *&STACK[0x390]), *&STACK[0x380]);
  v94 = vorrq_s8(vsubq_s64(*&STACK[0x370], v88), *&STACK[0x360]);
  v95 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x370], v89), *&STACK[0x360]), vorrq_s8(vaddq_s64(v89, *&STACK[0x390]), *&STACK[0x380]));
  v96 = vsubq_s64(*&STACK[0x320], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x370], v87), *&STACK[0x360]), vorrq_s8(vaddq_s64(v87, *&STACK[0x390]), *&STACK[0x380])));
  v97 = vsubq_s64(*&STACK[0x320], vaddq_s64(v94, v93));
  v98 = veorq_s8(v97, *&STACK[0x310]);
  v99 = veorq_s8(v96, *&STACK[0x310]);
  v100 = veorq_s8(v96, *&STACK[0x300]);
  v101 = veorq_s8(v97, *&STACK[0x300]);
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), *&STACK[0x2F0]);
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v101), *&STACK[0x2F0]);
  v104 = vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL);
  v105 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v106 = veorq_s8(v102, v104);
  v107 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v106);
  v109 = vaddq_s64(v107, v105);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v109, v109), *&STACK[0x2E0]), v109), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v108, v108), *&STACK[0x2E0]), v108), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v112 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v113 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v114 = veorq_s8(v110, v112);
  v115 = vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL);
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v114);
  v117 = veorq_s8(vaddq_s64(v115, v113), *&STACK[0x2B0]);
  v118 = veorq_s8(v116, *&STACK[0x2B0]);
  v119 = vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL);
  v120 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v121 = veorq_s8(v117, v119);
  v122 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v121);
  v124 = veorq_s8(vaddq_s64(v122, v120), *&STACK[0x350]);
  v125 = veorq_s8(v123, *&STACK[0x350]);
  v126 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v127 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v128 = veorq_s8(v124, v126);
  v129 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v128);
  v131 = vaddq_s64(v129, v127);
  v132 = veorq_s8(v131, *&STACK[0x340]);
  v133 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v131, v75), *&STACK[0x330]), v132), vandq_s8(v132, v75));
  v134 = veorq_s8(v130, *&STACK[0x340]);
  v135 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v130, v75), *&STACK[0x330]), v134), vandq_s8(v134, v75)), *&STACK[0x2A0]);
  v136 = veorq_s8(v133, *&STACK[0x2A0]);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v138 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137), *&STACK[0x290]);
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v138), *&STACK[0x290]);
  v141 = vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL);
  v142 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v143 = veorq_s8(v139, v141);
  v144 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v146 = vsubq_s64(*&STACK[0x320], v95);
  v147 = veorq_s8(vaddq_s64(v144, v142), *&STACK[0x280]);
  v183.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v145, v143), *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(v79, 3uLL), v91)));
  v183.val[2] = vshlq_u64(v147, vnegq_s64(vandq_s8(vshlq_n_s64(v80, 3uLL), v91)));
  v148 = veorq_s8(v146, *&STACK[0x310]);
  v149 = veorq_s8(v146, *&STACK[0x300]);
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149), *&STACK[0x2F0]);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151);
  v153 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v152, v152), *&STACK[0x2E0]), v152), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154), *&STACK[0x2B0]);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156), *&STACK[0x350]);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158);
  v160 = veorq_s8(v159, *&STACK[0x340]);
  v161 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v159, v75), *&STACK[0x330]), v160), vandq_s8(v160, v75)), *&STACK[0x2A0]);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), *&STACK[0x290]);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL)));
  v165 = vsubq_s64(*&STACK[0x320], v92);
  v183.val[0] = vshlq_u64(veorq_s8(v164, *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(v81, 3uLL), v91)));
  v166 = veorq_s8(v165, *&STACK[0x310]);
  v167 = veorq_s8(v165, *&STACK[0x300]);
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), *&STACK[0x2F0]);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v170, v170), *&STACK[0x2E0]), v170), *&STACK[0x2D0]), *&STACK[0x2C0]);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), *&STACK[0x2B0]);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v175 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174), *&STACK[0x350]);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176);
  v178 = veorq_s8(v177, *&STACK[0x340]);
  v179 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v177, v75), *&STACK[0x330]), v178), vandq_s8(v178, v75)), *&STACK[0x2A0]);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), *&STACK[0x290]);
  v183.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL))), *&STACK[0x280]), vnegq_s64(vandq_s8(vshlq_n_s64(v82, 3uLL), v91)));
  *(a53 + a65 + a67 + v73 - STACK[0x260]) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v183, v76)), *(v78 - 8));
  return (*(a72 + 8 * ((1766 * (v77 == 0)) ^ v72)))();
}

uint64_t sub_100216228()
{
  v2 = (*(v1 + 8 * (v0 + 2428)))(112, 0x100004098D10E67);
  v3 = STACK[0x400];
  STACK[0x568] = v2;
  return (*(v3 + 8 * (((v2 == 0) * ((v0 + 2042) ^ (v0 - 1957) ^ 0x30B7)) ^ v0)))();
}

uint64_t sub_100216284@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 - 850459491) & 0x32B0FB5F;
  (*(v2 + 8 * ((v1 - 5195) ^ 0x2094)))(a1);
  *(STACK[0x5A8] + 24) = 0;
  v4 = (*(v2 + 8 * (v3 + 3116)))();
  STACK[0x5A8] = 0;
  return sub_10024FEF8(v4);
}

uint64_t sub_100216324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, int a19, uint64_t a20, uint64_t a21)
{
  v26 = 2 * &a17;
  v27 = 1824088897 * (((v26 | 0xB7938892) - &a17 + 607534007) ^ 0x83A0172B);
  a20 = v22;
  a21 = a16;
  a19 = (v23 ^ 0xDFBEFA8F) - v27 + ((v23 << ((v25 + 48) & 0xB8 ^ 0xB1)) & 0xBF7DF51E) + 1860562939;
  a17 = v27 + v25 - 794;
  (*(v24 + 8 * (v25 ^ 0x3458)))(&a17);
  v28 = 1875091903 * (((v26 | 0xD62E8DB4) - &a17 - 1796687578) ^ 0x5D62C559);
  a18 = (v21 ^ 0xE05CB7AE) + ((2 * v21) & 0x15C) + 1069547260 + v28;
  a19 = v28 + v25 + 3173;
  a20 = a16;
  v29 = (*(v24 + 8 * (v25 ^ 0x346A)))(&a17);
  return (*(v24 + 8 * ((2781 * (a17 == 16257999)) ^ v25)))(v29);
}

uint64_t sub_1002164A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = STACK[0x6C0];
  v67 = STACK[0x5A8];
  STACK[0x640] = (v64 + 2815) + STACK[0x640] - 4814;
  STACK[0x798] = v66;
  STACK[0x5C8] = v67;
  v68 = (*(v65 + 8 * (v64 ^ 0x226F)))();
  STACK[0x3C0] = 0;
  if (v66)
  {
    v69 = v67 == 0;
  }

  else
  {
    v69 = 1;
  }

  v70 = v69;
  return (*(a64 + 8 * ((4066 * ((((v64 + 1751922423) ^ v70) & 1) == 0)) ^ v64)))(v68);
}

uint64_t sub_10021655C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, unsigned int a18, unsigned int a19, uint64_t a20, uint64_t a21)
{
  v26 = 1824088897 * ((2 * (&a17 & 0x5BE45240) - &a17 + 605793726) ^ 0x7C727EDC);
  a17 = v26 + 3757;
  a19 = (v24 ^ 0x5EB7FAFA) + ((2 * v24) & 0xBD6FF5F4) - v26 - 269684848;
  a20 = v23;
  a21 = a11;
  (*(v25 + 77048))(&a17);
  v27 = *v22 ^ 0xF25DB6EF;
  v28 = (2 * *v22) & 0xE4BB6DDE;
  v29 = 1875091903 * (((&a17 | 0x2000AC0) - &a17 + (&a17 & 0xFDFFF538)) ^ 0x34758943);
  a20 = a11;
  a18 = v29 + v27 + 4607 + v28 + 767487420;
  a19 = v29 + 7724;
  (*(v25 + 77160))(&a17);
  v30 = *v21 ^ 0xE21FFEBB;
  v31 = (2 * *v21) & 0xC43FFD76;
  v32 = 1875091903 * (((&a17 | 0x8701624A) - (&a17 & 0x8701624A)) ^ 0xB174E1C9);
  a20 = a11;
  a18 = v32 + v30 + v31 + 1039972335;
  a19 = v32 + 7724;
  v33 = (*(v25 + 77160))(&a17);
  return (*(v25 + 8 * ((246 * (a17 == 16257999)) ^ 0x473u)))(v33);
}

uint64_t sub_1002167E0()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x2233)))(64, v1);
  STACK[0x4B0] = v3;
  return (*(v2 + 8 * (((((v3 == 0) ^ (v0 + 90)) & 1) * ((v0 ^ 0x1F22) - 6313)) | v0)))();
}

uint64_t sub_100216888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = ((&a14 & 0xAACA3137 | ~(&a14 | 0xAACA3137)) ^ 0xD5C1DAA) * v21;
  a16 = a12;
  a17 = &a10;
  a18 = 1032869496 - v23;
  a19 = v23 + v20 + 1674575342;
  a15 = v23 - 85195060;
  v24 = (*(v19 + 8 * (v20 + 5836)))(&a14);
  return (*(v19 + 8 * (((a14 == 16257999) * (v22 + ((v20 - 286052591) & 0xC6A127B2) + 1821)) ^ v20)))(v24);
}

uint64_t sub_100216954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, char *a17, int a18, unsigned int a19)
{
  a19 = 1317436891 * ((2 * (&a17 & 0x18321D0) - &a17 + 2122112554) ^ 0xCE7F465C) + 8154;
  a17 = &a16;
  v21 = (*(v19 + 77096))(&a17);
  return (*(v19 + 8 * ((4007 * (a18 == 16257999)) ^ v20)))(v21);
}

uint64_t sub_100216B40()
{
  v4 = (v1 + 1828707133) & 0x6DF46FFF;
  *v0 = (v6 << (v1 + 127)) | v9;
  v11 = v7;
  v12 = (v4 - 1827948356) ^ ((((&v10 ^ 0x4C2BEBEF) + 2049381085 - 2 * ((&v10 ^ 0x4C2BEBEF) & 0x7A2712DD)) ^ 0x6E652A50) * v3);
  (*(v2 + 8 * ((v1 + 1828707133) & 0x25AD)))(&v10);
  v12 = (v4 - 1827948356) ^ (((((2 * &v10) | 0xEB4D13EC) - &v10 - 1973848566) ^ 0x2DCF5A94) * v3);
  v11 = v8;
  (*(v2 + 8 * (v4 ^ 0x6CF44252)))(&v10);
  return 0;
}

void sub_100216CA0()
{
  STACK[0x848] = 0;
  STACK[0x898] = 0;
  STACK[0x500] = *(v1 + 8 * v0);
  JUMPOUT(0x100216CCCLL);
}

uint64_t sub_100216CE4@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8 * ((15217 * (a1 - a4 > (v4 - 4873) - 1350)) ^ v4));
  STACK[0x2A8] = a2;
  return v5();
}

uint64_t sub_100216EC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v19 = v11 + v9 + v13;
  v20 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = (v20 + 0x568FD0F9DF82F1E3) ^ v14;
  v22 = __ROR8__((v20 + 0x568FD0F9DF82F1E3) ^ a1, 8);
  v23 = ((((v8 + 1374) ^ v10) & (2 * (v22 + v21))) - (v22 + v21) + v15) ^ v17;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (a8 - ((v25 + v24) | a8) + ((v25 + v24) | v16)) ^ 0xFEE3F116FE675A82;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x57D072DFC3A5F657;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xF2620266DFD8DE82;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - (a2 & (2 * (v32 + v31))) + a3) ^ a4;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x6E1E19DDB33CB23ALL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  *v19 = (((a5 & (2 * (v37 + v36))) - (v37 + v36) + a6) ^ a7) >> (8 * (v19 & 7u));
  return (*(v18 + 8 * (((v13 != 1) * v12) ^ v8)))();
}

uint64_t sub_100217000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  v22 = v21 + 4236;
  a16 = (v22 - 4780) ^ (33731311 * ((((2 * &a15) | 0x4B6EA744) - &a15 + 1514712158) ^ 0x9C419981));
  a17 = a10;
  a18 = &a12;
  (*(v20 + 8 * (v22 + 1569)))(&a15);
  LODWORD(a18) = v22 - 2008441969 * ((&a15 - 670019167 - 2 * (&a15 & 0xD81051A1)) ^ 0x908905AF) - 2347;
  a17 = a10;
  v23 = (*(v20 + 8 * (v22 ^ 0x3AD3u)))(&a15);
  return (*(v20 + 8 * (((a15 != 16257999) * (((v22 ^ 0x1A) - v19 + 328) ^ (v18 + 3798))) ^ v22)))(v23);
}

uint64_t sub_100217170(uint64_t a1)
{
  LODWORD(STACK[0x310]) = 0;
  v2 = a1 + (v1 + 4884) - 5622;
  v3 = __ROR8__(v2 & 0xFFFFFFFFFFFFFFF8, 8);
  v4 = v3 - ((2 * v3 + 0xD1FA1F3BF05E3C6) & 0x1522CB6B6EA8E362) - 0x1EDEC95069289C6CLL;
  v5 = __ROR8__(v4 ^ 0xBBCEBE4B0E0361EFLL, 8);
  v4 ^= 0xFB03985F214EEF5uLL;
  v6 = __ROR8__((v5 + v4) ^ 0x8174304F61371433, 8);
  v7 = *(STACK[0x330] + 8 * v1);
  v8 = (v5 + v4) ^ 0x8174304F61371433 ^ __ROR8__(v4, 61);
  v9 = (v6 + v8) ^ 0x48DE3944125A0254;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (v11 + v10 - ((2 * (v11 + v10)) & 0x92A42596A0926910) + 0x495212CB50493488) ^ 0x1E82601493ECC2DFLL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xF2620266DFD8DE82;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = (__ROR8__(v14, 8) + v15) ^ 0xB9BEF0CD865D21FDLL;
  v17 = v16 ^ __ROR8__(v15, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x6E1E19DDB33CB23ALL;
  *v2 = ((__ROR8__(v18, 8) + (v18 ^ __ROR8__(v17, 61))) ^ 0x3532CD90FD5B1622uLL) >> (8 * (v2 & 7u));
  v19 = __ROR8__((v2 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = (0x29702F06207D0E1CLL - v19) & 0x79175E2C12C0C2DDLL | (v19 + 0x568FD0F9DF82F1E3) & 0x84E8A1D3ED3F3D22;
  v21 = __ROR8__(v20 ^ 0x4A4885D2AB97D283, 8);
  v20 ^= 0xFE36021C57805D99;
  v22 = (v21 + v20 - ((2 * (v21 + v20)) & 0xE50EC2BE45B2CC5ELL) - 0xD789EA0DD2699D1) ^ 0x73F3511043EE721CLL;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) | 0xC127DFD94147335ELL) - (v24 + v23) - 0x6093EFECA0A399AFLL) ^ 0x284DD6A8B2F99BFBLL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = __ROR8__((((2 * (v27 + v26)) | 0x6287D6B764F85500) - (v27 + v26) - 0x3143EB5BB27C2A80) ^ 0x6693998471D9DCD7, 8);
  v29 = (((2 * (v27 + v26)) | 0x6287D6B764F85500) - (v27 + v26) - 0x3143EB5BB27C2A80) ^ 0x6693998471D9DCD7 ^ __ROR8__(v26, 61);
  v30 = (v28 + v29) ^ 0xF2620266DFD8DE82;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xB9BEF0CD865D21FDLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = __ROR8__(v32, 8);
  *(v2 + 1) = ((__ROR8__((((2 * (v34 + v33)) | 0x360AC320C760007CLL) - (v34 + v33) + 0x64FA9E6F9C4FFFC2) ^ 0xF51B784DD08CB204, 8) + ((((2 * (v34 + v33)) | 0x360AC320C760007CLL) - (v34 + v33) + 0x64FA9E6F9C4FFFC2) ^ 0xF51B784DD08CB204 ^ __ROR8__(v33, 61))) ^ 0x3532CD90FD5B1622) >> (8 * ((v2 + 1) & 7));
  v35 = __ROR8__((v2 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v36 = -2 - (((0x29702F06207D0E1CLL - v35) | 0xC0963AD6F9C849DALL) + ((v35 + 0x568FD0F9DF82F1E3) | 0x3F69C5290637B625));
  v37 = v36 ^ 0xF1C9E128409F5984;
  v36 ^= 0x45B766E6BC88D69EuLL;
  v38 = (__ROR8__(v37, 8) + v36) ^ 0x8174304F61371433;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ 0x48DE3944125A0254;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * (v42 + v41)) & 0x3491A382ECB7AD6) - (v42 + v41) - 0x1A48D1C1765BD6CLL) ^ 0xA98B003C2B3FB4C3;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (((2 * (v45 + v44)) | 0xBC926A3ADA0D4D3ALL) - (v45 + v44) - 0x5E49351D6D06A69DLL) ^ 0xAC2B377BB2DE781FLL;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((2 * (v48 + v47)) & 0xC0B992F3FD58C89ALL) - (v48 + v47) - 0x605CC979FEAC644ELL) ^ 0x261DC64B870EBA4FLL;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (((2 * (v51 + v50)) | 0x526500C12C79ADD0) - (v51 + v50) - 0x29328060963CD6E8) ^ 0x472C99BD250064D2;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = __ROR8__(v52, 8);
  *(v2 + 2) = ((((2 * (v54 + v53)) & 0x243286079BD1E962) - (v54 + v53) + 0x6DE6BCFC32170B4ELL) ^ 0x58D4716CCF4C1D6CuLL) >> (8 * ((v2 + 2) & 7));
  v55 = __ROR8__((v2 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v56 = v55 - ((2 * v55 - 0x52E05E0C40FA1C3ALL) & 0xDABB7CACD8D286FCLL) + 0x43ED8F504BEC3561;
  v57 = v56 ^ 0xDC0265A8D53E5320;
  v56 ^= 0x687CE2662929DC3AuLL;
  v58 = __ROR8__(v57, 8);
  v59 = (((2 * (v58 + v56)) | 0xC1B61E594159C0E2) - (v58 + v56) - 0x60DB0F2CA0ACE071) ^ 0xE1AF3F63C19BF442;
  v60 = v59 ^ __ROR8__(v56, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0x48DE3944125A0254;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0x57D072DFC3A5F657;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (((2 * (v65 + v64)) & 0x2BA12D4EAE20A528) - (v65 + v64) + 0x6A2F6958A8EFAD6BLL) ^ 0x984D6B3E773773E9;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0xB9BEF0CD865D21FDLL;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = (__ROR8__(v68, 8) + v69) ^ 0x6E1E19DDB33CB23ALL;
  v71 = __ROR8__(v70, 8) + (v70 ^ __ROR8__(v69, 61));
  *(v2 + 3) = ((v71 - ((2 * v71) & 0xE9E0361E02A86F7ALL) - 0xB0FE4F0FEABC843) ^ 0xC1C2D69FFC0F219FLL) >> (8 * ((v2 + 3) & 7));
  return v7();
}

uint64_t sub_100217D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((31 * ((((v3 - 113) ^ (v5 == 0)) & 1) == 0)) ^ (v3 - 7))))();
}

uint64_t sub_100217DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = ((v3 + 1765897743) & 0xCBEBBFDF) - 3038 + v2;
  v7 = *(a2 + v6 - 15);
  v8 = *(a2 + v6 - 31);
  v9 = a1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((895 * ((v2 & 0xFFFFFFE0) == 32)) ^ (v4 + v3 + 1292))))();
}

uint64_t sub_100217E8C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v75 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v76 = vdupq_n_s64(0x38uLL);
  v77 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x3A0] = vdupq_n_s64(v70);
  *&STACK[0x3B0] = vdupq_n_s64(v73);
  v78 = 967 * (v66 ^ 0xB54);
  *&STACK[0x380] = vdupq_n_s64(v72);
  *&STACK[0x390] = vdupq_n_s64(v69);
  *&STACK[0x360] = vdupq_n_s64(0xC008A9762A8A187uLL);
  *&STACK[0x370] = vdupq_n_s64(a1);
  *&STACK[0x340] = vdupq_n_s64(0xB7A19A6BE498442ALL);
  *&STACK[0x350] = vdupq_n_s64(0x176202B71A6AE107uLL);
  *&STACK[0x320] = vdupq_n_s64(a2);
  *&STACK[0x330] = vdupq_n_s64(0x242F32CA0DB3DDEAuLL);
  v79 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v80 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v81 = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x300] = vdupq_n_s64(a3);
  *&STACK[0x310] = xmmword_1002BF670;
  *&STACK[0x2F0] = vdupq_n_s64(a4);
  v82 = vdupq_n_s64(a5);
  v83 = vdupq_n_s64(v71);
  v84 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v85 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  v86 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v87 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v88 = vdupq_n_s64(v74);
  v89 = vdupq_n_s64(a6);
  v90 = vdupq_n_s64(a7);
  v91 = vdupq_n_s64(a8);
  v92 = v65 + v67 - v68 + (v78 ^ 0xFD3u);
  v93.i64[0] = v92 - 1159;
  v93.i64[1] = v65 + v67 - v68 - 2;
  v94.i64[0] = v65 + v67 - v68 - 3;
  v94.i64[1] = v65 + v67 - v68 - 4;
  v95.i64[0] = v65 + v67 - v68 - 5;
  v95.i64[1] = v65 + v67 - v68 - 6;
  v96.i64[0] = v65 + v67 - v68 - 7;
  v96.i64[1] = v65 + v67 - v68 - 8;
  v97 = a9 + v67 - v68;
  v98.i64[0] = v97 + 9;
  v98.i64[1] = v97 + 8;
  v99.i64[0] = v97 + 7;
  v99.i64[1] = v97 + 6;
  v100 = vandq_s8(v96, v75);
  v101 = vandq_s8(v95, v75);
  v102 = vandq_s8(v94, v75);
  v103 = vandq_s8(v93, v75);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v77);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v77);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v77);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v77);
  v108 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), *&STACK[0x3B0]), v104), *&STACK[0x3A0]);
  v109 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v105, v105), *&STACK[0x3B0]), v105), *&STACK[0x3A0]);
  v110 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v106, v106), *&STACK[0x3B0]), v106), *&STACK[0x3A0]);
  v111 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v107, v107), *&STACK[0x3B0]), v107), *&STACK[0x3A0]);
  v112 = veorq_s8(v111, *&STACK[0x390]);
  v113 = veorq_s8(v110, *&STACK[0x390]);
  v114 = veorq_s8(v109, *&STACK[0x390]);
  v115 = veorq_s8(v108, *&STACK[0x390]);
  v116 = veorq_s8(v108, *&STACK[0x380]);
  v117 = veorq_s8(v109, *&STACK[0x380]);
  v118 = veorq_s8(v110, *&STACK[0x380]);
  v119 = veorq_s8(v111, *&STACK[0x380]);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v119);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v118);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v117);
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v123, v123), *&STACK[0x370]), v123), *&STACK[0x360]), *&STACK[0x350]);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v122, v122), *&STACK[0x370]), v122), *&STACK[0x360]), *&STACK[0x350]);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v121, v121), *&STACK[0x370]), v121), *&STACK[0x360]), *&STACK[0x350]);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v120, v120), *&STACK[0x370]), v120), *&STACK[0x360]), *&STACK[0x350]);
  v128 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v131 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v132 = veorq_s8(v126, v130);
  v133 = veorq_s8(v125, v129);
  v134 = veorq_s8(v124, v128);
  v135 = vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL);
  v136 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v137 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v134);
  v139 = vaddq_s64(v137, v133);
  v140 = vaddq_s64(v136, v132);
  v141 = vaddq_s64(v135, v131);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v141, v141), *&STACK[0x340]), v141), *&STACK[0x330]), *&STACK[0x320]);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v140, v140), *&STACK[0x340]), v140), *&STACK[0x330]), *&STACK[0x320]);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v139, v139), *&STACK[0x340]), v139), *&STACK[0x330]), *&STACK[0x320]);
  v145 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v138, v138), *&STACK[0x340]), v138), *&STACK[0x330]), *&STACK[0x320]);
  v146 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL);
  v148 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v149 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v150 = veorq_s8(v144, v148);
  v151 = veorq_s8(v143, v147);
  v152 = veorq_s8(v142, v146);
  v153 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v155 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v152);
  v157 = veorq_s8(vaddq_s64(v153, v149), v79);
  v158 = veorq_s8(vaddq_s64(v154, v150), v79);
  v159 = veorq_s8(vaddq_s64(v155, v151), v79);
  v160 = veorq_s8(v156, v79);
  v161 = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v164 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v165 = veorq_s8(v159, v163);
  v166 = veorq_s8(v158, v162);
  v167 = veorq_s8(v157, v161);
  v168 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v169 = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v170 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v167);
  v172 = veorq_s8(vaddq_s64(v168, v164), v80);
  v173 = veorq_s8(vaddq_s64(v169, v165), v80);
  v174 = veorq_s8(vaddq_s64(v170, v166), v80);
  v175 = veorq_s8(v171, v80);
  v176 = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v177 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v178 = vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL);
  v179 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v180 = veorq_s8(v174, v178);
  v181 = veorq_s8(v173, v177);
  v182 = veorq_s8(v172, v176);
  v183 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v184 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v185 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v182);
  v187 = veorq_s8(vaddq_s64(v183, v179), v81);
  v188 = veorq_s8(vaddq_s64(v184, v180), v81);
  v189 = veorq_s8(vaddq_s64(v185, v181), v81);
  v190 = veorq_s8(v186, v81);
  v191 = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL);
  v194 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v195 = veorq_s8(v189, v193);
  v196 = veorq_s8(v188, v192);
  v197 = veorq_s8(v187, v191);
  v198 = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v199 = vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL);
  v200 = vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL);
  v201 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v197);
  v202 = vaddq_s64(v200, v196);
  v203 = vaddq_s64(v199, v195);
  v204 = vaddq_s64(v198, v194);
  v205 = veorq_s8(vaddq_s64(vsubq_s64(v204, vandq_s8(vaddq_s64(v204, v204), *&STACK[0x300])), *&STACK[0x2F0]), v82);
  v206 = veorq_s8(vaddq_s64(vsubq_s64(v203, vandq_s8(vaddq_s64(v203, v203), *&STACK[0x300])), *&STACK[0x2F0]), v82);
  v207 = veorq_s8(vaddq_s64(vsubq_s64(v202, vandq_s8(vaddq_s64(v202, v202), *&STACK[0x300])), *&STACK[0x2F0]), v82);
  v208 = veorq_s8(vaddq_s64(vsubq_s64(v201, vandq_s8(vaddq_s64(v201, v201), *&STACK[0x300])), *&STACK[0x2F0]), v82);
  v209 = vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL);
  v210 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v211 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v212 = veorq_s8(v206, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v213 = veorq_s8(v205, v209);
  v214 = vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL);
  v215 = vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL);
  v216 = vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL);
  v196.i64[0] = v97 + 5;
  v196.i64[1] = v97 + 4;
  v217 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v213);
  v213.i64[0] = v97 + 3;
  v213.i64[1] = v97 + 2;
  v218 = vshlq_n_s64(v94, 3uLL);
  v219 = vandq_s8(vshlq_n_s64(v95, 3uLL), v76);
  v220 = vshlq_u64(veorq_s8(v217, v83), vnegq_s64(vandq_s8(vshlq_n_s64(v93, 3uLL), v76)));
  v221 = vshlq_u64(veorq_s8(vaddq_s64(v216, v212), v83), vnegq_s64(vandq_s8(v218, v76)));
  v222 = vshlq_u64(veorq_s8(vaddq_s64(v215, v211), v83), vnegq_s64(v219));
  v223 = vshlq_u64(veorq_s8(vaddq_s64(v214, v210), v83), vnegq_s64(vandq_s8(vshlq_n_s64(v96, 3uLL), v76)));
  v224 = vandq_s8(v213, v75);
  v225 = vandq_s8(v196, v75);
  v226 = vandq_s8(v99, v75);
  v227 = vandq_s8(v98, v75);
  v228 = vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL);
  v229 = vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL);
  v230 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v77);
  v231 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v77);
  v232 = veorq_s8(v231, v84);
  v233 = veorq_s8(v230, v84);
  v234 = veorq_s8(v230, v85);
  v235 = veorq_s8(v231, v85);
  v236 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL), v234), v86);
  v237 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v235), v86);
  v238 = vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL);
  v239 = veorq_s8(v237, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v240 = veorq_s8(v236, v238);
  v241 = vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL);
  v242 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v240);
  v243 = veorq_s8(vaddq_s64(v241, v239), v87);
  v244 = veorq_s8(v242, v87);
  v245 = vsraq_n_u64(vshlq_n_s64(v239, 3uLL), v239, 0x3DuLL);
  v246 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL));
  v247 = veorq_s8(v243, v245);
  v248 = vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL);
  v249 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), v247);
  v250 = veorq_s8(vaddq_s64(v248, v246), v79);
  v251 = veorq_s8(v249, v79);
  v252 = vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL);
  v253 = veorq_s8(v251, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v254 = veorq_s8(v250, v252);
  v255 = vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL);
  v256 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), v254);
  v257 = veorq_s8(vaddq_s64(v255, v253), v80);
  v258 = veorq_s8(v256, v80);
  v259 = vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL);
  v260 = veorq_s8(v258, vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL));
  v261 = veorq_s8(v257, v259);
  v262 = vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL);
  v263 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v261);
  v264 = veorq_s8(vaddq_s64(v262, v260), v81);
  v265 = veorq_s8(v263, v81);
  v266 = vsraq_n_u64(vshlq_n_s64(v260, 3uLL), v260, 0x3DuLL);
  v267 = veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v261, 3uLL), v261, 0x3DuLL));
  v268 = veorq_s8(v264, v266);
  v269 = vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL);
  v270 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL), v268);
  v271 = veorq_s8(vaddq_s64(v269, v267), v88);
  v272 = veorq_s8(v270, v88);
  v273 = vsraq_n_u64(vshlq_n_s64(v267, 3uLL), v267, 0x3DuLL);
  v274 = veorq_s8(v272, vsraq_n_u64(vshlq_n_s64(v268, 3uLL), v268, 0x3DuLL));
  v275 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v271, 0x38uLL), v271, 8uLL), veorq_s8(v271, v273));
  v276 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v272, 0x38uLL), v272, 8uLL), v274);
  v277 = vaddq_s64(v229, v77);
  v308.val[3] = veorq_s8(v223, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v276, vandq_s8(vaddq_s64(v276, v276), v89)), v90), v91), vnegq_s64(vandq_s8(vshlq_n_s64(v213, 3uLL), v76))));
  v308.val[2] = veorq_s8(v222, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v275, vandq_s8(vaddq_s64(v275, v275), v89)), v90), v91), vnegq_s64(vandq_s8(vshlq_n_s64(v196, 3uLL), v76))));
  v278 = veorq_s8(v277, v84);
  v279 = veorq_s8(v277, v85);
  v280 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v278, 0x38uLL), v278, 8uLL), v279), v86);
  v281 = veorq_s8(v280, vsraq_n_u64(vshlq_n_s64(v279, 3uLL), v279, 0x3DuLL));
  v282 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v280, 0x38uLL), v280, 8uLL), v281), v87);
  v283 = veorq_s8(v282, vsraq_n_u64(vshlq_n_s64(v281, 3uLL), v281, 0x3DuLL));
  v284 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v282, 0x38uLL), v282, 8uLL), v283), v79);
  v285 = veorq_s8(v284, vsraq_n_u64(vshlq_n_s64(v283, 3uLL), v283, 0x3DuLL));
  v286 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL), v285), v80);
  v287 = veorq_s8(v286, vsraq_n_u64(vshlq_n_s64(v285, 3uLL), v285, 0x3DuLL));
  v288 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286, 0x38uLL), v286, 8uLL), v287), v81);
  v289 = veorq_s8(v288, vsraq_n_u64(vshlq_n_s64(v287, 3uLL), v287, 0x3DuLL));
  v290 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL), v289), v88);
  v291 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL), veorq_s8(v290, vsraq_n_u64(vshlq_n_s64(v289, 3uLL), v289, 0x3DuLL)));
  v292 = vaddq_s64(v228, v77);
  v308.val[1] = veorq_s8(v221, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v291, vandq_s8(vaddq_s64(v291, v291), v89)), v90), v91), vnegq_s64(vandq_s8(vshlq_n_s64(v99, 3uLL), v76))));
  v293 = veorq_s8(v292, v84);
  v294 = veorq_s8(v292, v85);
  v295 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v293, 0x38uLL), v293, 8uLL), v294), v86);
  v296 = veorq_s8(v295, vsraq_n_u64(vshlq_n_s64(v294, 3uLL), v294, 0x3DuLL));
  v297 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL), v296), v87);
  v298 = veorq_s8(v297, vsraq_n_u64(vshlq_n_s64(v296, 3uLL), v296, 0x3DuLL));
  v299 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL), v298), v79);
  v300 = veorq_s8(v299, vsraq_n_u64(vshlq_n_s64(v298, 3uLL), v298, 0x3DuLL));
  v301 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL), v300), v80);
  v302 = veorq_s8(v301, vsraq_n_u64(vshlq_n_s64(v300, 3uLL), v300, 0x3DuLL));
  v303 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL), v302), v81);
  v304 = veorq_s8(v303, vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL));
  v305 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v303, 0x38uLL), v303, 8uLL), v304), v88);
  v306 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v305, 0x38uLL), v305, 8uLL), veorq_s8(v305, vsraq_n_u64(vshlq_n_s64(v304, 3uLL), v304, 0x3DuLL)));
  v308.val[0] = veorq_s8(v220, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v306, vandq_s8(vaddq_s64(v306, v306), v89)), v90), v91), vnegq_s64(vandq_s8(vshlq_n_s64(v98, 3uLL), v76))));
  *(v97 + 2) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v308, *&STACK[0x310])), *(v92 - 1166));
  return (*(a65 + 8 * (v78 ^ (2 * (8 - (v67 & 0xFFFFFFF8) != -v68)))))(v72);
}

uint64_t sub_10021896C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  STACK[0x5C0] = 0;
  v2 = *(STACK[0x4D0] + 8);
  STACK[0x5A8] = 0;
  LODWORD(STACK[0x658]) = 0;
  LODWORD(STACK[0x660]) = 197499219;
  return (*(a1 + 8 * (((v2 == 0) * ((227 * (a2 ^ 0x256D)) ^ ((a2 ^ 0x2348) + 3675))) ^ a2)))();
}

uint64_t sub_1002189D0()
{
  *(v2 - 228) = (v1 - 1451039392) ^ (956911519 * (((v2 - 232) & 0xD89C00D3 | ~((v2 - 232) | 0xD89C00D3)) ^ 0xCDF28F29));
  v3 = (*(v0 + 8 * (v1 ^ 0x39D0)))(v2 - 232);
  return (*(STACK[0x3E8] + 8 * ((15518 * (*(v2 - 232) == (((v1 ^ 0x1C72) + 7214) ^ 0x2015B5A6) + 273 * (v1 ^ 0x1C72))) ^ v1)))(v3);
}

uint64_t sub_100218A8C@<X0>(int a1@<W8>)
{
  v8 = 956911519 * ((~((v6 - 232) | 0xFE62634E) + ((v6 - 232) & 0xFE62634E)) ^ 0xEB0CECB4);
  *(v6 - 208) = v2;
  *(v6 - 216) = ((a1 ^ 0xFFFAD7FF) + 803207658 + ((2 * a1) & 0xB8402564)) ^ v8;
  *(v6 - 232) = v5;
  *(v6 - 224) = v1;
  *(v6 - 192) = v8 ^ 0x5A8CE82;
  *(v6 - 200) = (((2 * v3) & 0xA3FEFFFC) + (v3 ^ ((v4 + 3311) | 0x20) ^ 0x51FF5BDE) - 1359548962) ^ v8;
  *(v6 - 188) = (v4 - 3321) ^ v8;
  v9 = (*(v7 + 8 * (v4 ^ 0x32BF)))(v6 - 232);
  return (STACK[0x728])(v9);
}

uint64_t sub_100218C34@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = a2 - 1684;
  v4 = (a2 - 160869923) ^ 0xF6696160;
  v5 = (a2 - 160869923) & 0x9969FFF;
  v6 = (*(v2 + 8 * (a2 + 3492)))(a1, 3882589854) == 0;
  return (*(v2 + 8 * ((v6 * (v4 + v5 - 4560)) ^ v3)))();
}

uint64_t sub_100218CA4()
{
  v2 = *(STACK[0x6D0] + 24);
  STACK[0x860] = v2;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 ^ 0x2896) - 2157)) ^ v0)))();
}

uint64_t sub_100218DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, unint64_t *a63)
{
  STACK[0x268] = v63;
  *a63 = v63;
  return (STACK[0x210])();
}

uint64_t sub_100218E98(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, unsigned int a43)
{
  v48 = v46[396] ^ ((*v46 & ((v43 ^ (v45 + 2989)) - 914792287) | v46[623] & 0x80000000) >> 1);
  v46[623] = (v48 + v44 - (a3 & (2 * v48))) ^ *(&STACK[0x528] + (*v46 & 1));
  return (*(v47 + 8 * ((98 * (a43 > 0x26F)) ^ v43)))();
}

void sub_1002190DC()
{
  v0 = *(&off_100315F70 + ((-85 * ((dword_100330E70 + dword_100330D78) ^ 0xDF)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * ((dword_100330E70 + dword_100330D78) ^ 0xDF))] ^ 0x1F]) + 143);
  v1 = *(v0 - 4);
  v2 = *(&off_100315F70 + (byte_1002B7200[byte_1002B0320[(-85 * ((dword_100330E70 + v1) ^ 0xDF))] ^ 0x67] ^ (-85 * ((dword_100330E70 + v1) ^ 0xDF))) + 143);
  v3 = *v2 - v1 - &v5;
  *(v0 - 4) = 2054362027 * v3 + 0x1FC86B74B1533AF5;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((2 * (v6 & 0x17CBAA20) - v6 - 399223333) ^ 0xDA2F0E4B);
  LOBYTE(v2) = -85 * ((*v2 + *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_100315F70 + ((-85 * ((dword_100330E70 - dword_100330D78) ^ 0xDF)) ^ byte_1002B7200[byte_1002B0320[(-85 * ((dword_100330E70 - dword_100330D78) ^ 0xDF))] ^ 0x6D]) + 262) - 8;
  (*&v4[8 * (v2 ^ byte_1002B7200[byte_1002B0320[v2] ^ 0x6D]) + 76952])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1002192FC()
{
  v5 = (((v2 - 4589) | 0x2102) - 432575509) ^ v1;
  v7 = (v0 - v3) > 0x1F && v5 > 7;
  return (*(v4 + 8 * ((2011 * v7) ^ v2)))();
}

uint64_t sub_10021940C()
{
  v4 = *(v1 + 8);
  STACK[0x4D0] = v2;
  STACK[0x720] = 0;
  STACK[0x638] = 0;
  return (*(v3 + 8 * (((((v0 ^ 0xD59) + 37) ^ (121 * (v0 ^ 0xD59))) * (v4 == 0)) ^ v0)))();
}

uint64_t sub_100219458(uint64_t a1)
{
  v5 = (v1 - 1713428436) & 0x6620CBD6;
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x8F8] = (v2 ^ 0xBFD3F5FBBFFD963CLL) + ((2 * v2) & 0x17FFB2C78) + 0x7D7E9B3DF6EFE9EALL + 1874 * (v5 ^ 0x9D5u);
  *(a1 + 16) = v2 + 10;
  v6 = (*(v3 + 8 * (v5 ^ 0x2C74u)))();
  v7 = STACK[0x330];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * (((v6 == 0) * ((v5 - 1008) ^ 0x5E8)) ^ v5)))();
}

uint64_t sub_10021955C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, int a14, char a15, int a16, unsigned int a17, uint64_t a18, char *a19)
{
  a18 = a10;
  a19 = &a15;
  a17 = (v21 + 873) ^ (33731311 * (((&a16 | 0x19B68295) - (&a16 & 0x19B68295)) ^ 0x204048B6));
  (*(v19 + 8 * (v21 ^ 0x2C5A)))(&a16);
  a17 = (v21 + 873) ^ (33731311 * ((&a16 & 0xEB26CAC7 | ~(&a16 | 0xEB26CAC7)) ^ 0x2D2FFF1B));
  a18 = a10;
  a19 = &a12;
  (*(v19 + 8 * (v21 + 7222)))(&a16);
  LODWORD(a19) = v21 - 2008441969 * ((1095657516 - (&a16 | 0x414E682C) + (&a16 | 0xBEB197D3)) ^ 0xF628C3DD) + 3306;
  a18 = a10;
  v22 = (*(v19 + 8 * (v21 + 7272)))(&a16);
  return (*(v19 + 8 * ((11 * (((v21 - 20) ^ (a16 == v20 + ((v21 - 1013419958) & 0x8FBA) + 2654)) & 1)) ^ v21)))(v22);
}

uint64_t sub_1002197A0()
{
  v5 = (*(v4 + 8 * (v0 + 5441)))(0, 0, 0);
  (*(v4 + 8 * (v0 + 5476)))(v5, *(&off_100315F70 + (v0 ^ 0x10CF)) - 4, v3, (v0 ^ 0xBC589C4) + v1);
  v6 = *(v4 + 8 * (v0 ^ 0x36BB));
  STACK[0x3B0] = v5;
  v7 = v6(v2, v5) == 0;
  return (*(v4 + 8 * (((2 * (((v0 + 120) ^ v7) & 1)) & 0xF7 | (8 * (((v0 + 120) ^ v7) & 1))) ^ v0)))();
}

uint64_t sub_10021986C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  *a4 = 0;
  *a5 = 0;
  a15 = 476323082 - 1710126949 * ((&a15 + 997951345 - 2 * (&a15 & 0x3B7B8771)) ^ 0x960DCE1);
  v17 = (*(v16 + 77088))(&a15);
  return (*(v16 + 8 * ((7304 * (a16 == 16257999)) ^ 0xD2Au)))(v17);
}

uint64_t sub_100219938@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 + 1663)))(a1);
  *(STACK[0x550] + 24) = 0;
  return sub_10010353C();
}

uint64_t sub_100219968@<X0>(__int16 a1@<W8>)
{
  v4 = (((2 * v2) & 0x5EFF7ABFFDF6D3ECLL) + (v2 ^ 0x6F7FBD5FFEFB69F6) + v1 - 0x6F7FBD5FFEFB69F6);
  v5 = (v4[1] << ((v3 & 0xF7) - 64)) | (*v4 << 24) | (v4[2] << 8);
  LODWORD(STACK[0x944]) = (v5 | v4[3]) + 197499219 - 2 * ((v5 | v4[3]) & 0xBC5995F ^ v4[3] & 0xC);
  return sub_10026ECFC(a1);
}

void sub_100219A1C(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  STACK[0x720] = STACK[0x6C0];
  STACK[0x6D0] = *(a1 + 8 * a2);
  JUMPOUT(0x10017F864);
}

void sub_100219A84(uint64_t a1)
{
  v1 = *(a1 + 12) ^ (2048652491 * ((-2 - ((a1 | 0x1C417471) + (~a1 | 0xE3BE8B8E))) ^ 0x520F1C8B));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100219B80(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a2 - 1;
  v24 = a6 + v23 + v8;
  v25 = __ROR8__((v13 + v23) & ((a3 ^ 0x8F8u) - 6204), 8);
  v26 = ((v25 - 0x6AF7234D0CC131D5) | v16) - ((v25 - 0x6AF7234D0CC131D5) | v10) + v10;
  v27 = v26 ^ 0x513852535460B9BLL;
  v26 ^= 0xAD5560B2ACB07AC7;
  v28 = (__ROR8__(v27, 8) + v26) ^ v15;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xF5A2F1B9B5D0B209;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v32 + v31 - ((2 * (v32 + v31)) & 0x68767FB9A21293ELL) + 0x343B3FDCD10949FLL) ^ 0x5A20053898C9EB80;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (v9 - ((v35 + v34) | v9) + ((v35 + v34) | 0x20842EAD28A8535ALL)) ^ 0x41C1B387D8B777ADLL;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (v11 - ((v38 + v37) | v11) + ((v38 + v37) | 0x9D61AAA81A10264DLL)) ^ 0xF9A2B6AA6A94F821;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ 0x1A2AEBE44253AF03;
  v42 = __ROR8__(v41, 8);
  v43 = __ROR8__(v40, 61);
  v44 = ((((2 * (v42 + (v41 ^ v43))) & 0x170BF460A85E9EEELL) - (v42 + (v41 ^ v43)) - 0xB85FA30542F4F78) ^ 0x5F4A471D8357ECC9uLL) >> (8 * ((v13 + v23) & 7));
  v45 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v46 = ((0x29702F06207D0E1CLL - v45) & 0x5879FD990C46CAD5) + v45 + 0x568FD0F9DF82F1E3 - ((v45 + 0x568FD0F9DF82F1E3) & 0x5E79FD990C46CAD5);
  v47 = v46 ^ 0x6F262667B511DA8BLL;
  v46 ^= 0xDB58A1A949065591;
  v48 = __ROR8__(v47, 8);
  v49 = (((2 * ((v48 + v46) ^ 0xBC7AB44B3A189480)) | 0xF0BA186BA47F666CLL) - ((v48 + v46) ^ 0xBC7AB44B3A189480) - 0x785D0C35D23FB336) ^ a7;
  v50 = v49 ^ __ROR8__(v46, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (v51 + v50 - (a8 & (2 * (v51 + v50))) + v18) ^ v19;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x57D072DFC3A5F657;
  v55 = __ROR8__(v54, 8);
  v56 = v54 ^ __ROR8__(v53, 61);
  v57 = (v55 + v56 - (v20 & (2 * (v55 + v56))) + v21) ^ v22;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (v12 - ((v59 + v58) | v12) + ((v59 + v58) | v17)) ^ v14;
  v61 = v60 ^ __ROR8__(v58, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0x6E1E19DDB33CB23ALL;
  *v24 = (((__ROR8__(v62, 8) + (v62 ^ __ROR8__(v61, 61))) ^ 0x3532CD90FD5B1622uLL) >> (8 * (v24 & 7u))) ^ v44 ^ *(v13 + v23);
  return (*(STACK[0x330] + 8 * (((v23 != 0) * a1) ^ a3)))();
}

uint64_t sub_100219F30(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x900] = (((v2 ^ 0x81F79B03FF7C823) - 0x81F79B03FF7C823) ^ ((v2 ^ 0x949FD4AC1394ECDCLL) + 0x6B602B53EC6B1324) ^ ((v2 ^ 0x9C80AD1C27A6A85ALL ^ ((v1 ^ 0x2208u) + 4639)) + 0x637F52E3D8594254)) + 0x63E7D9382C628DAALL;
  *(a1 + 16) = (((v2 ^ 0x83C4E5C9) + 2084248119) ^ ((v2 ^ 0x89D7F94C) + 1982334644) ^ ((v2 ^ 0x1D685D6) - 30836182)) + 197499229;
  v5 = (*(v3 + 8 * (v1 ^ 0x47D)))();
  v6 = STACK[0x330];
  *(a1 + 24) = v5;
  return (*(v6 + 8 * ((45 * (v5 == 0)) ^ v1)))();
}

uint64_t sub_10021A1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = (&a14 ^ 0x5869D362) * v19;
  a15 = v22 + 1658120796;
  a16 = a10;
  a17 = &a11;
  a18 = -654855621 - v22;
  a19 = v22 + v21 + 1674576449;
  v23 = (*(v20 + 8 * (v21 ^ 0x2FE1u)))(&a14);
  return (*(v20 + 8 * (((a14 == ((v21 - 485) | 0x1170) + 16251355) * (((v21 - 339741292) & 0xE3FC9BFE) + 474180601)) ^ v21)))(v23);
}

void sub_10021A268()
{
  v0 = *(&off_100315F70 + ((-85 * ((dword_100330E70 + dword_100330D68) ^ 0xDF)) ^ byte_1002B7200[byte_1002B0320[(-85 * ((dword_100330E70 + dword_100330D68) ^ 0xDF))] ^ 0xBF]) + 118);
  v1 = *(v0 - 4);
  v2 = *(&off_100315F70 + (byte_1002B7208[(byte_1002B0328[(-85 * (v1 ^ dword_100330E70 ^ 0xDF)) - 8] ^ 0x6D) - 8] ^ (-85 * (v1 ^ dword_100330E70 ^ 0xDF))) + 184);
  v3 = &v5[*v2 ^ v1];
  *(v0 - 4) = 2054362027 * (v3 - 0xB4207763EF64BDFLL);
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((v6 & 0xB1703B09 | ~(v6 | 0xB1703B09)) ^ 0x7C949F66);
  LOBYTE(v2) = -85 * (*(v0 - 4) ^ 0xDF ^ *v2);
  v4 = *(&off_100315F70 + ((-85 * ((dword_100330E70 - dword_100330D68) ^ 0xDF)) ^ byte_1002B7300[byte_1002B0420[(-85 * ((dword_100330E70 - dword_100330D68) ^ 0xDF))] ^ 0x2A]) + 107) - 8;
  (*&v4[8 * (byte_1002B022C[(byte_1002A5CB0[v2] ^ 0xEE) - 12] ^ v2) + 76160])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10021A564@<X0>(int a1@<W8>, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, int a6, unsigned int a7)
{
  v11 = v7 ^ 0x1A7C;
  v12 = (&a3 ^ 0x2CFCB17B) * a1;
  a3 = &a2;
  a4 = ((v7 ^ 0x1A7C) - 1715) ^ v12;
  a5 = v8;
  a6 = v12 ^ 0x19EC4105;
  a7 = -1146238160 - v12;
  v13 = (*(v9 + 8 * ((v7 ^ 0x1A7C) + 6961)))(&a3);
  return (*(v9 + 8 * ((4592 * (*(v8 + 24) == ((v11 + 1054) ^ 0x1939 ^ v10))) ^ v11)))(v13);
}

uint64_t sub_10021A6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x90A]) = v63;
  LODWORD(STACK[0x300]) = v63;
  return sub_1001E02B0(a1, a63 - 2230, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_10021A6D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x3D0]) = a3;
  STACK[0x3C0] = v6;
  return (*(a4 + 8 * (((((v5 + a5 + v7) & v8 ^ 0xFFFFFD21) + ((v5 + a5) ^ v9) * v10) * (*v6 == 0)) ^ (v5 + a5))))();
}

uint64_t sub_10021A768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * ((&a12 & 0xB57B906E | ~(&a12 | 0xB57B906E)) ^ 0xFA87F7E7) + 8154;
  a12 = &a10;
  v16 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * ((10221 * (a13 == v15)) ^ 0x4BEu)))(v16);
}

uint64_t sub_10021A844@<X0>(unint64_t a1@<X8>)
{
  v3 = v1 ^ 0x74AD484;
  v4 = (3 * (v1 ^ 0x74AF2AC) + 523505656) & 0xE0CBDB77;
  STACK[0x968] = a1;
  v5 = STACK[0x690];
  STACK[0x970] = STACK[0x690];
  return (*(v2 + 8 * (((a1 - v5 > 9) * (v4 + 1128)) ^ v3)))();
}

void sub_10021A91C(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x10018A12CLL);
}

uint64_t sub_10021A980()
{
  STACK[0x420] = 0;
  v2 = STACK[0x850];
  STACK[0x540] = *(v1 + 8 * v0);
  return sub_1001E509C(v2);
}

uint64_t sub_10021A9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x360];
  if (LODWORD(STACK[0x360]) == 17168)
  {
    return (*(v3 + 8 * ((STACK[0x3F8] - 2773) ^ (21 * (LODWORD(STACK[0x2F0]) == LODWORD(STACK[0x390]))))))(a1, a2, a3, 16215981);
  }

  if (v4 == 20706)
  {
    return (*(v3 + 8 * ((1979 * (LODWORD(STACK[0xB38]) == STACK[0x3F8] + 197489979)) ^ (STACK[0x3F8] - 504))))(a1, a2, a3, 16215981);
  }

  if (v4 == 33980)
  {
    return (*(v3 + 8 * ((27 * (LODWORD(STACK[0xB48]) - ((2 * LODWORD(STACK[0xB48])) & 0xDCE86D8E) + ((STACK[0x3F8] + 1335594389) & 0xB0645F7E) - 294378093 == -294373689)) ^ (STACK[0x3F8] - 6484))))(a1, a2, a3, 16215976);
  }

  return sub_10021AC14(a1, a2, a3, 16215976);
}

uint64_t sub_10021AAEC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 16257999)
  {
    v7 = STACK[0x860];
    v8 = *(STACK[0x860] + 8);
    v9 = STACK[0x988];
    v9[1] = v8;
    *v9 = *v7;
    return (*(v5 + 8 * (((((v8 == 0) ^ (v4 - 1)) & 1) * ((v4 - 7660) ^ 0x606)) ^ (v4 - 2702))))(a1, a2, a3);
  }

  else if (a4 == 16215947)
  {
    return (*(v5 + 8 * (((*(STACK[0x580] + 8) == 0) * ((((v4 - 8224) | 0x888) - 2125) ^ (v4 - 752475630) & 0x2CD9BDED)) ^ (v4 + 1))))(a1, a2, a3);
  }

  else
  {
    return sub_10021AC14(a1, a2, a3, a4);
  }
}

uint64_t sub_10021ABBC@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x29C4)))(a1);
  *(STACK[0x860] + 24) = 0;
  return sub_10021ABE8();
}

void sub_10021ABE8()
{
  (*(v1 + 8 * (v0 ^ 0x21A4)))();
  STACK[0x860] = 0;
  JUMPOUT(0x10021AC08);
}

void sub_10021ACB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = !v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10021AD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v10 = LODWORD(STACK[0x340]);
  if (v10 == 17168)
  {
    return (*(v9 + 8 * ((v8 - 4385) ^ (10225 * (a7 == v7 + 4)))))(a1, a2, a3, a4, a5, a6, v8);
  }

  if (v10 == 20706)
  {
    return (*(v9 + 8 * ((((v8 ^ 0x135) + 1193) * (a7 == v7 + 8)) ^ (v8 - 4420))))(a1, a2, a3, a4, a5, a6, v8);
  }

  if (v10 != 33980)
  {
    return sub_10021BD08(a1, a2, a3, a4, a5, a6, v8);
  }

  STACK[0x4F8] = STACK[0x758] + STACK[0x2A0];
  return sub_10021BCD4(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_10021AE08()
{
  v2 = v0 ^ 0x1079u;
  v3 = ((v2 + 0x77FD7FAF9BF7E0ABLL) & (2 * STACK[0x2A0])) + (STACK[0x2A0] ^ 0xBBFEBFD7CDFBF399) + STACK[0x758] + 0x4401402832040C67;
  v4 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = (0x6AF7234D0CC131D4 - v4) & 0xE17ED4F2859DC12FLL | (v4 + 0x1508DCB2F33ECE2BLL) & 0x1A812B0D7A623ED0;
  v6 = v5 ^ 0xAC9796C9EA8B26FDLL;
  v5 ^= 0x4D1735E737D57A1uLL;
  v7 = __ROR8__(v6, 8);
  v8 = (v7 + v5 - ((2 * (v7 + v5)) & 0xA8F535F8906AB678) - 0x2B856503B7CAA4C4) ^ 0x30E7ED23CF08E442;
  v9 = v8 ^ __ROR8__(v5, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0xF5A2F1B9B5D0B209;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = (__ROR8__(v10, 8) + v11) ^ 0x5963B6C555D97F1FLL;
  v13 = __ROR8__(v12, 8);
  v14 = v12 ^ __ROR8__(v11, 61);
  v15 = (((2 * ((v13 + v14) ^ 0xE7B5DC45273D63A1)) | 0x504C6837B780C63ELL) - ((v13 + v14) ^ 0xE7B5DC45273D63A1) + 0x57D9CBE4243F9CE1) ^ 0x2ED675740CE22449;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = __ROR8__(v15, 8);
  v18 = __ROR8__((((2 * (v17 + v16)) | 0x4F1E4801C06BB8FCLL) - (v17 + v16) + 0x5870DBFF1FCA2382) ^ 0xC34C380290B10212, 8);
  v19 = (((2 * (v17 + v16)) | 0x4F1E4801C06BB8FCLL) - (v17 + v16) + 0x5870DBFF1FCA2382) ^ 0xC34C380290B10212 ^ __ROR8__(v16, 61);
  v20 = __ROR8__((v3 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = v20 - ((2 * v20 + 0x2A11B965E67D9C56) & 0x86491E2C94CF3D9ALL) - 0x27D29436C2599308;
  v22 = v21 ^ 0xACDCD2D2571791FLL;
  v21 ^= 0xA28B28BABC870843;
  v23 = __ROR8__(v22, 8);
  v24 = __ROR8__((((2 * ((v23 + v21) ^ 0xE86B6D598CE7C62CLL)) & 0x3776BD40C68BCDALL) - ((v23 + v21) ^ 0xE86B6D598CE7C62CLL) - 0x1BBB5EA06345E6ELL) ^ 0xF2B25093F211D8C0, 8);
  v25 = (((2 * ((v23 + v21) ^ 0xE86B6D598CE7C62CLL)) & 0x3776BD40C68BCDALL) - ((v23 + v21) ^ 0xE86B6D598CE7C62CLL) - 0x1BBB5EA06345E6ELL) ^ 0xF2B25093F211D8C0 ^ __ROR8__(v21, 61);
  v26 = (v24 + v25) ^ 0xF5A2F1B9B5D0B209;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x5963B6C555D97F1FLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v1;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x64C31C027084DE6CLL;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x1A2AEBE44253AF03;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = (((((v36 + v35 - ((2 * (v36 + v35)) & 0x46C4DEB32D067766) + 0x23626F5996833BB3) ^ 0x88522D8BBE0467F2) >> (8 * ((v3 + 1) & 7))) ^ *(v3 + 1)) << 48) | (((((__ROR8__((v18 + v19) ^ 0x1A2AEBE44253AF03, 8) + ((v18 + v19) ^ 0x1A2AEBE44253AF03 ^ __ROR8__(v19, 61))) ^ 0xAB3042D228875C41) >> (8 * ((((v2 - 85) & (2 * LOBYTE(STACK[0x2A0]))) + (LOBYTE(STACK[0x2A0]) ^ 0x99) + LOBYTE(STACK[0x758]) + 103) & 7))) ^ *v3) << 56);
  v38 = __ROR8__((v3 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v39 = ((2 * (v38 - 0x6AF7234D0CC131D5)) | 0xE988EE55C850EEE4) - (v38 - 0x6AF7234D0CC131D5) + 0xB3B88D51BD7888ELL;
  v40 = v39 ^ 0xBD2D35118B3E90A0;
  v39 ^= 0x156BD08612C8E1FCuLL;
  v41 = (__ROR8__(v40, 8) + v39) ^ 0xE49D77DF873DBF7ELL;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (v43 + v42 - ((2 * (v43 + v42)) & 0x6A1EDDA6EAF44D6) - 0x7CAF0912C8A85D95) ^ 0x76F2075482871062;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x5963B6C555D97F1FLL;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v1;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0x64C31C027084DE6CLL;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x1A2AEBE44253AF03;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  v55 = v37 | (((((((v54 + v53) | 0xC0D69FAEA99994B0) - ((v54 + v53) | 0x3F29605156666B4FLL) + 0x3F29605156666B4FLL) ^ 0x6BE6DD7C811EC8F1) >> (8 * ((v3 + 2) & 7))) ^ *(v3 + 2)) << 40);
  v56 = (__ROR8__((v3 + 3) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v57 = v56 ^ 0x4DE9423B6F16E7D2;
  v56 ^= 0xE5AFA7ACF6E0968ELL;
  v58 = (__ROR8__(v57, 8) + v56) ^ 0xE49D77DF873DBF7ELL;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0xF5A2F1B9B5D0B209;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0x5963B6C555D97F1FLL;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((v64 + v63) | 0xAC2390E6C13EB103) - ((v64 + v63) | 0x53DC6F193EC14EFCLL) + 0x53DC6F193EC14EFCLL) ^ 0xCD660DCC312195F4;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0x64C31C027084DE6CLL;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (v69 + v68 - ((2 * (v69 + v68)) & 0xE3F30D59F9F95424) + 0x71F986ACFCFCAA12) ^ 0x6BD36D48BEAF0511;
  v71 = v55 | (((((__ROR8__(v70, 8) + (v70 ^ __ROR8__(v68, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v3 + 3) & 7))) ^ *(v3 + 3)) << 32);
  v72 = __ROR8__((v3 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v73 = -2 - (((0x6AF7234D0CC131D4 - v72) | 0x44BA01A51A183DE0) + ((v72 + 0x1508DCB2F33ECE2BLL) | 0xBB45FE5AE5E7C21FLL));
  v74 = __ROR8__(v73 ^ 0xD53439E750EDA32, 8);
  v73 ^= 0xA515A609ECF8AB6ELL;
  v75 = (((2 * ((v74 + v73) ^ 0xBE8B2A9C9DF400CFLL)) & 0xAA23D21ABB2D7C00) - ((v74 + v73) ^ 0xBE8B2A9C9DF400CFLL) + 0x2AEE16F2A26941FFLL) ^ 0x70F84BB1B8A0FE4ELL;
  v76 = v75 ^ __ROR8__(v73, 61);
  v77 = __ROR8__(v75, 8);
  v78 = __ROR8__((((2 * (v77 + v76)) & 0x7D84ABA23E9CFE7ELL) - (v77 + v76) - 0x3EC255D11F4E7F40) ^ 0x349F5B97556132C9, 8);
  v79 = (((2 * (v77 + v76)) & 0x7D84ABA23E9CFE7ELL) - (v77 + v76) - 0x3EC255D11F4E7F40) ^ 0x349F5B97556132C9 ^ __ROR8__(v76, 61);
  v80 = (((v78 + v79) | 0xD44CE57641558F6ELL) - ((v78 + v79) | 0x2BB31A89BEAA7091) + 0x2BB31A89BEAA7091) ^ 0x8D2F53B3148CF071;
  v81 = __ROR8__(v80, 8);
  v82 = v80 ^ __ROR8__(v79, 61);
  v83 = (((2 * (v81 + v82)) & 0x56507D4A3E0F7B40) - (v81 + v82) - 0x2B283EA51F07BDA1) ^ 0xB5925C7010E766A8;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (((2 * (v85 + v84)) & 0xEEF74AFFBBE4930CLL) - (v85 + v84) + 0x8845A80220DB679) ^ 0x6C47468252896815;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (((2 * (v88 + v87)) & 0x29B65A41F14458CCLL) - (v88 + v87) - 0x14DB2D20F8A22C67) ^ 0xF10E393B450E7C9ALL;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = __ROR8__(v89, 8);
  v92 = v71 & 0xFFFFFFFF00FFFFFFLL | (((((v91 + v90 - ((2 * (v91 + v90)) & 0xDE26E3A15DEF6F6ALL) + 0x6F1371D0AEF7B7B5) ^ 0xC42333028670EBF4) >> (8 * ((v3 + 4) & 7))) ^ *(v3 + 4)) << 24);
  v93 = __ROR8__((v3 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v94 = ((2 * v93 + 0x2A11B965E67D9C56) & 0xCB0FE93C98309366) - v93 + 0x56F2EAEC0A8E821;
  v95 = v94 ^ 0xD391495ADCF1519ELL;
  v94 ^= 0x7BD7ACCD450720C2uLL;
  v96 = __ROR8__(v95, 8);
  v97 = (((v96 + v94) ^ 0x8FF42FE233FDEFE0 | 0xCCF5982A4DA0F226) - ((v96 + v94) ^ 0x8FF42FE233FDEFE0 | 0x330A67D5B25F0DD9) + 0x330A67D5B25F0DD9) ^ 0xA79CC017F960A2B8;
  v98 = v97 ^ __ROR8__(v94, 61);
  v99 = (__ROR8__(v97, 8) + v98) ^ 0xF5A2F1B9B5D0B209;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0x5963B6C555D97F1FLL;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = __ROR8__(v101, 8);
  v104 = (((2 * (v103 + v102)) | 0x6B60C641F567F5AALL) - (v103 + v102) - 0x35B06320FAB3FAD5) ^ 0x54F5FE0A0AACDE22;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = (__ROR8__(v104, 8) + v105) ^ 0x64C31C027084DE6CLL;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = (__ROR8__(v106, 8) + v107) ^ 0x1A2AEBE44253AF03;
  v109 = v92 & 0xFFFFFFFFFF00FFFFLL | (((((__ROR8__(v108, 8) + (v108 ^ __ROR8__(v107, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v3 + 5) & 7))) ^ *(v3 + 5)) << 16);
  v110 = (__ROR8__((v3 + 6) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v111 = (__ROR8__(v110 ^ 0x4DE9423B6F16E7D2, 8) + (v110 ^ 0xE5AFA7ACF6E0968ELL)) ^ 0xE49D77DF873DBF7ELL;
  v112 = v111 ^ __ROR8__(v110 ^ 0xE5AFA7ACF6E0968ELL, 61);
  v113 = __ROR8__(v111, 8);
  v114 = (v113 + v112 - ((2 * (v113 + v112)) & 0x10D88C22F14EF5CLL) + 0x86C461178A77AELL) ^ 0xF52435D8A25AC5A7;
  v115 = v114 ^ __ROR8__(v112, 61);
  v116 = (__ROR8__(v114, 8) + v115) ^ 0x5963B6C555D97F1FLL;
  v117 = v116 ^ __ROR8__(v115, 61);
  v118 = __ROR8__(v116, 8);
  v119 = (((2 * (v118 + v117)) | 0xF8F4D7410A173B82) - (v118 + v117) - 0x7C7A6BA0850B9DC1) ^ 0x1D3FF68A7514B936;
  v120 = v119 ^ __ROR8__(v117, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ 0x64C31C027084DE6CLL;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = __ROR8__(v121, 8);
  v124 = (((v123 + v122) & 0x865B83655FEF6F5 ^ 0x2498320576F0D5) + ((v123 + v122) & 0xF79A47C9AA01090ALL ^ 0xC68006C000000803) - 1) ^ 0xDC8E7516472557D4;
  v125 = v109 & 0xFFFFFFFFFFFF00FFLL | (((((__ROR8__(v124, 8) + (v124 ^ __ROR8__(v122, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v3 + 6) & 7))) ^ *(v3 + 6)) << 8);
  v126 = *(v3 + 7);
  v3 += 7;
  v127 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v128 = ((2 * (v127 - 0x6AF7234D0CC131D5)) | 0x804B0297E5FB7EA4) - (v127 - 0x6AF7234D0CC131D5) - 0x4025814BF2FDBF52;
  v129 = v128 ^ 0x9CCC3709DEB5880;
  v128 ^= 0xA18A26E7041D29DCLL;
  v130 = __ROR8__(v129, 8);
  v131 = (((2 * (v130 + v128)) & 0xC07D41EEC5780520) - (v130 + v128) + 0x1FC15F089D43FD6FLL) ^ 0xFB5C28D71A7E4211;
  v132 = v131 ^ __ROR8__(v128, 61);
  v133 = __ROR8__(v131, 8);
  v134 = (v133 + v132 - ((2 * (v133 + v132)) & 0xC66D97DBD851D3B2) - 0x1CC9341213D71627) ^ 0x16943A5459F85BD0;
  v135 = v134 ^ __ROR8__(v132, 61);
  v136 = __ROR8__(v134, 8);
  v137 = (((2 * (v136 + v135)) | 0x341E0CCC86BF04E6) - (v136 + v135) + 0x65F0F999BCA07D8DLL) ^ 0xC36CB0A31686FD6CLL;
  v138 = v137 ^ __ROR8__(v135, 61);
  v139 = __ROR8__(v137, 8);
  v140 = __ROR8__((v139 + v138 - ((2 * (v139 + v138)) & 0xA996373FDA7782A4) + 0x54CB1B9FED3BC152) ^ 0x358E86B51D24E5A5, 8);
  v141 = (v139 + v138 - ((2 * (v139 + v138)) & 0xA996373FDA7782A4) + 0x54CB1B9FED3BC152) ^ 0x358E86B51D24E5A5 ^ __ROR8__(v138, 61);
  v142 = (v140 + v141) ^ 0x64C31C027084DE6CLL;
  v143 = v142 ^ __ROR8__(v141, 61);
  v144 = __ROR8__(v142, 8);
  v145 = (v144 + v143 - ((2 * (v144 + v143)) & 0xAB9BCCB5A89BD69ALL) + 0x55CDE65AD44DEB4DLL) ^ 0x4FE70DBE961E444ELL;
  v146 = v145 ^ __ROR8__(v143, 61);
  v147 = __ROR8__(v145, 8);
  v148 = v125 | ((((((2 * (v147 + v146)) & 0x970A9B9F1F62DE94) - (v147 + v146) - 0x4B854DCF8FB16F4BLL) ^ 0x1F4AF0E258C9CCF4) >> (8 * (v3 & 7u))) ^ v126);
  STACK[0x400] = v148 - ((2 * v148) & 0x8F13CB4E9EA6B5BALL) + 0x4789E5A74F535ADDLL;
  return sub_10021BCD4();
}

uint64_t sub_10021BCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x728] = STACK[0x9D8];
  LODWORD(STACK[0x8B0]) = STACK[0x9CC];
  LOWORD(STACK[0x6F6]) = STACK[0x9D2];
  LODWORD(STACK[0x634]) = STACK[0x9D4];
  return sub_10021BD08(a1, a2, a3, a4, a5, a6, (v6 + 4420));
}

uint64_t sub_10021C400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a10;
  a16 = 1317436891 * (((&a14 | 0xCA273CD1) + (~&a14 | 0x35D8C32E)) ^ 0x7A24A4A6) + 8154;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((6817 * (a15 == v17)) ^ v18)))(v19);
}

uint64_t sub_10021CF88(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 16257999)
  {
    v7 = STACK[0x420];
    v8 = *(STACK[0x420] + 8);
    v9 = STACK[0x998];
    v9[1] = v8;
    *v9 = *v7;
    return (*(v5 + 8 * (((v8 == 0) * (v4 - 17098 + 20 * (v4 ^ 0x25AA))) ^ (v4 - 946))))();
  }

  else if (a4 == 16215947)
  {
    return (*(v5 + 8 * (((((v4 ^ (*(STACK[0x850] + 8) == 0)) & 1) == 0) * ((v4 - 1786) ^ 0x1D1A)) ^ (v4 - 6168))))();
  }

  else
  {
    return sub_10021CFF0();
  }
}

uint64_t sub_10021D168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x330]) = 197499223;
  STACK[0x370] = STACK[0x778] + 24;
  LODWORD(STACK[0x2A0]) = LODWORD(STACK[0x9A4]) ^ 0xD6A561FA;
  v63 = LOWORD(STACK[0x99E]);
  LODWORD(STACK[0x320]) = v63;
  LODWORD(STACK[0x300]) = v63 ^ 0x4CF9;
  STACK[0x360] = STACK[0x440] + 24;
  v64 = LOWORD(STACK[0xA7E]);
  LODWORD(STACK[0x310]) = v64;
  LODWORD(STACK[0x2F0]) = v64 ^ 0xFFFFA60A;
  LODWORD(STACK[0x290]) = LODWORD(STACK[0xA84]) ^ 0xD6A561FA;
  STACK[0x350] = STACK[0x4C0] + 24;
  STACK[0x340] = STACK[0x7B8] + 24;
  v65 = STACK[0x9A0];
  LODWORD(STACK[0x2C0]) = STACK[0x9A0];
  LODWORD(STACK[0x2E0]) = v65 ^ 0xD6A561FA;
  v66 = STACK[0xA80];
  LODWORD(STACK[0x2B0]) = STACK[0xA80];
  LODWORD(STACK[0x2D0]) = v66 ^ 0xD6A561FA;
  return sub_100211354(0x126AA61F6F56C0D8, a2, 0x2A5638492DD55EAELL, 0x4C48AAE1C333D048, 0xEAD4E3DB691550A9, 169, 0x64C31C027084DE6CLL, 0x61459D2AF01F24F7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

void sub_10021D17C()
{
  v0 = *(&off_100315F70 + ((-85 * ((dword_100330E70 + dword_100330EA8) ^ 0xDF)) ^ byte_1002B0220[byte_1002A5CB0[(-85 * ((dword_100330E70 + dword_100330EA8) ^ 0xDF))] ^ 0xEE]) - 106);
  v1 = -85 * ((dword_100330E70 + *v0) ^ 0xDF);
  v2 = *(&off_100315F70 + (byte_1002B7208[(byte_1002B0328[v1 - 8] ^ 0xBF) - 8] ^ v1) - 14);
  v3 = &v5[*v2 - *v0];
  *v0 = 2054362027 * v3 + 0x1FC86B74B1533AF5;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * (((v6 | 0xE77584D2) - v6 + (v6 & 0x188A7B28)) ^ 0xD56EDF42);
  LOBYTE(v2) = -85 * ((*v2 + *v0) ^ 0xDF);
  v4 = *(&off_100315F70 + ((-85 * ((dword_100330E70 - dword_100330EA8) ^ 0xDF)) ^ byte_1002B7200[byte_1002B0320[(-85 * ((dword_100330E70 - dword_100330EA8) ^ 0xDF))] ^ 1]) + 92) - 8;
  (*&v4[8 * (byte_1002A5FBC[(byte_1002BF56C[v2 - 12] ^ 0xD9) - 12] ^ v2) + 75248])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10021D404()
{
  (*(v2 + 8 * (v0 ^ 0x3FCE)))(v1);
  STACK[0x578] = 0;
  return (*(v2 + 8 * (((STACK[0x7D8] != 0) * (((v0 + 1511357844) & 0xA5EA6DAD) - 1372)) ^ (v0 + 1872))))();
}

uint64_t sub_10021D468@<X0>(int a1@<W8>)
{
  v2 = STACK[0x508];
  STACK[0x470] = *(v1 + 8 * a1);
  return sub_10025C248(v2);
}

void sub_10021D4E4()
{
  *v1 = v0;
  v1[1] = v0;
  JUMPOUT(0x10021D504);
}

uint64_t sub_10021D560@<X0>(unint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v5 = (*(((2 * (a4 + 6)) & 0x3F1E7FB3FDF7177CLL) + ((a4 + 6) ^ 0x1F8F3FD9FEFB8BBELL) + a2 - 0x1F8F3FD9FEFB8BBELL) << 24) | (*(((2 * (a4 + 6)) & 0x3F1E7FB3FDF7177CLL) + ((a4 + 6) ^ 0x1F8F3FD9FEFB8BBELL) + a2 - 0x1F8F3FD9FEFB8BBDLL) << 16) | (*(((2 * (a4 + 6)) & 0x3F1E7FB3FDF7177CLL) + ((a4 + 6) ^ 0x1F8F3FD9FEFB8BBELL) + a2 - 0x1F8F3FD9FEFB8BBCLL) << 8);
  v6 = *(((2 * (a4 + 6)) & 0x3F1E7FB3FDF7177CLL) + ((a4 + 6) ^ 0x1F8F3FD9FEFB8BBELL) + a2 - 0x1F8F3FD9FEFB8BBBLL);
  v7 = (((v5 | v6) + 197499219 - 2 * ((v5 | v6) & 0xBC5995F ^ v6 & 0xC)) ^ 0xBC59953u) + a4 + 10 <= a1;
  v8 = *(a3 + 8 * ((v7 | (4 * v7)) ^ v4));
  STACK[0x2A8] = a2;
  return v8();
}

uint64_t sub_10021D65C(uint64_t a1)
{
  v1 = *a1 + 956911519 * ((((2 * a1) | 0x28A16880) - a1 - 340833344) ^ 0xFEC1C445);
  v2 = *(a1 + 8);
  v8 = v2[1];
  v3 = (1824088897 * (&v7 ^ 0x5869D362)) ^ (v1 + 501374782);
  v9 = v3;
  v4 = (*(&off_100315F70 + v1 + 501366715) + 8 * (v1 ^ 0xE21DE4D0));
  (*(v4 - 1))(&v7);
  v5 = *v2;
  v9 = v3;
  v8 = v5;
  return (*(v4 - 1))(&v7);
}

void sub_10021D77C(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v59 = 257 * (v57 ^ 0x774);
  (*(v58 + 8 * (v57 ^ 0x22F9)))(a1);
  *(STACK[0x538] + 24) = 0;
  (*(a57 + 8 * (v59 + 7291)))();
  STACK[0x538] = 0;
  JUMPOUT(0x100235B34);
}

void sub_10021D824()
{
  v0 = *(&off_100315F70 + ((-85 * (dword_100331018 ^ 0xDF ^ dword_100330E70)) ^ byte_1002B7200[byte_1002B0320[(-85 * (dword_100331018 ^ 0xDF ^ dword_100330E70))] ^ 0xBF]) + 48);
  v1 = *(v0 - 4);
  v2 = *(&off_100315F70 + (byte_1002A5FB0[byte_1002BF560[(-85 * ((dword_100330E70 - v1) ^ 0xDF))] ^ 0xB1] ^ (-85 * ((dword_100330E70 - v1) ^ 0xDF))) + 156);
  v3 = *v2 - v1 - &v5;
  *(v0 - 4) = 2054362027 * (v3 - 0xB4207763EF64BDFLL);
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((((2 * (v6 ^ 0xBF49A99E)) | 0xF34E26A2) - (v6 ^ 0xBF49A99E) + 106491055) ^ 0x74F5E15F);
  LOBYTE(v2) = -85 * ((*v2 - *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_100315F70 + ((-85 * ((dword_100330E70 + dword_100331018) ^ 0xDF)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * ((dword_100330E70 + dword_100331018) ^ 0xDF))] ^ 0x71]) + 120) - 8;
  (*&v4[8 * (v2 ^ byte_1002A5FB0[byte_1002BF560[v2] ^ 0xB1]) + 76728])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10021DA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, unsigned int a17, uint64_t a18)
{
  v24 = v21 ^ 0x30DCBEBE;
  v25 = (2 * v21) & 0x61B97D7C;
  v26 = v23 + 6415;
  v27 = 1875091903 * (((&a15 | 0x294378EE) - (&a15 & 0x294378EE)) ^ 0x1F36FB6D);
  a18 = a13;
  a16 = v24 + v25 + (v23 ^ 0x10) - 281021729 + v27;
  a17 = v23 + 6415 + v27;
  (*(v22 + 8 * (v23 ^ 0x20B0)))(&a15);
  v28 = 1875091903 * ((((2 * &a15) | 0x30D4F6EE) - &a15 + 1737852041) ^ 0xAE1FF8F4);
  a18 = a13;
  a16 = ((2 * v20) & 0xFFBB7F56) + ((v23 - 2246002) ^ v20) + 540997375 + v28;
  a17 = v23 + 6415 + v28;
  (*(v22 + 8 * (v23 ^ 0x20B0)))(&a15);
  if (v19)
  {
    v29 = 538752682;
  }

  else
  {
    v29 = 538752683;
  }

  v30 = 1875091903 * ((&a15 + 1400552204 - 2 * (&a15 & 0x537ABB0C)) ^ 0x650F388F);
  a18 = a13;
  a16 = v30 + v29;
  a17 = v26 + v30;
  (*(v22 + 8 * (v23 ^ 0x20B0)))(&a15);
  v31 = *v18 ^ 0xF51FBFBB;
  v32 = (2 * *v18) & 0xEA3F7F76;
  v33 = 1875091903 * ((&a15 - 1955118577 - 2 * (&a15 & 0x8B77420F)) ^ 0xBD02C18C);
  a18 = a13;
  a16 = v33 + v31 + v32 + 721221359;
  a17 = v26 + v33;
  v34 = (*(v22 + 8 * (v23 + 8336)))(&a15);
  return (*(v22 + 8 * ((3180 * (a15 == 16257999)) ^ v23)))(v34);
}

uint64_t sub_10021DC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *v5 = v4;
  *(v4 + 8) = *(a4 + 8);
  *(a4 + 8) = v4;
  return sub_1001D14D4(a1, a2, a3);
}

uint64_t sub_10021DCA8(uint64_t a1)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFFBEBLL ^ (v4 - 1970)) + v1;
  *(a1 - 7 + v6) = *(v2 - 7 + v6);
  return (*(v5 + 8 * ((5819 * (v3 + 8 == v1)) ^ v4)))();
}

uint64_t sub_10021DCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x9D4]) = a7;
  v67 = (a7 ^ v65) + STACK[0x2A0];
  STACK[0x9D8] = v67;
  return (*(v66 + 8 * ((a65 - 4385) | (v67 <= a30))))(a1, a2, a3, a4, a5, a6, a65);
}

uint64_t sub_10021DD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((50 * (v6 != 0)) ^ (v2 + v4 + 2484))))();
}

uint64_t sub_10021DD88@<X0>(uint64_t a1@<X8>)
{
  STACK[0x838] = 0;
  STACK[0x590] = 0;
  STACK[0x540] = *(v3 + 8 * v2);
  return sub_1001E509C(a1);
}

uint64_t sub_10021DDB8@<X0>(int a1@<W8>)
{
  v2 = STACK[0x858];
  STACK[0x4D0] = *(v1 + 8 * a1);
  return sub_100261C28(v2);
}

uint64_t sub_10021DF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = (((&a14 | 0x939556B5) - &a14 + (&a14 & 0x6C6AA948)) ^ 0xCBFC85D7) * v21;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674575463;
  a15 = v23 - 1869903813;
  a16 = a11;
  a17 = &a10;
  v24 = (*(v19 + 8 * (v22 + 5957)))(&a14);
  return (*(v19 + 8 * ((7020 * (a14 == v20 + (v22 ^ 0x1A42) - 2359 - 2762)) ^ v22)))(v24);
}

uint64_t sub_10021E020@<X0>(uint64_t a1@<X8>)
{
  v7 = v2 - 2749;
  v8 = 38 * ((v2 - 2749) ^ 0x64E);
  v9 = STACK[0x568];
  v10 = 1358806181 * (((v5 - 232) & 0xB4C1DC2B | ~((v5 - 232) | 0xB4C1DC2B)) ^ 0x74114F57);
  *(v5 - 232) = a1;
  *(v5 - 216) = v1;
  *(v5 - 208) = a1;
  *(v5 - 200) = (v4 ^ 0xBD9DD73B ^ v8) + v10;
  *(v5 - 192) = v9;
  *(v5 - 224) = v10 + v7 + 3183;
  *(v5 - 220) = (v3 ^ 0x7D69FA95) - v10 + ((2 * v3) & 0xFAD3F52A) - 268509824;
  v11 = (*(v6 + 8 * (v7 + 7941)))(v5 - 232);
  return (*(v6 + 8 * (((*(v5 - 196) == ((v8 + 1528584040) & 0xA4E3AB4F) + 16255365) * (((v8 - 1937) | 0xE78) - 889)) ^ v8)))(v11);
}

uint64_t sub_10021E144@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = a2 ^ 0x156D;
  result = (*(v5 + 8 * (a2 + 4199)))(a1, v3, 4096);
  if (result >= 833 * v6 - 7496)
  {
    v8 = 16257999;
  }

  else
  {
    v8 = v4;
  }

  *(v2 + 8) = v8;
  return result;
}

uint64_t sub_10021E188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t *a15, unsigned int a16, int a17)
{
  v21 = ((&a12 - 910348272 - 2 * (&a12 & 0xC9BD3010)) ^ 0x91D4E372) * v19;
  a16 = -654855621 - v21;
  a17 = v21 + v20 + 1674578184;
  a14 = a11;
  a15 = &a9;
  a13 = v21 + 1365278254;
  v22 = (*(v17 + 8 * (v20 ^ 0x262A)))(&a12);
  return (*(v17 + 8 * ((1190 * (a12 == ((v18 + ((v20 + 886831597) & 0xCB240675) + 1474) ^ ((v20 + 2655) | 0x58)))) ^ v20)))(v22);
}

void sub_10021E288(uint64_t a1@<X8>)
{
  v7 = 74 * (v3 ^ 0x170A);
  v8 = 1358806181 * ((((v6 - 232) | 0x3C74305A) - ((v6 - 232) & 0x3C74305A)) ^ 0x35B5CD9);
  *(v6 - 192) = STACK[0x428];
  *(v6 - 216) = v1;
  *(v6 - 208) = a1;
  *(v6 - 200) = (v2 ^ 0xBD9DD0A9) + v8;
  *(v6 - 224) = v8 + v7 - 780;
  *(v6 - 220) = (v4 ^ 0x7F68DF57) - v8 + ((v4 << (v7 + 9)) & 0xFED1BEAE) - 301991746;
  *(v6 - 232) = a1;
  (*(v5 + 8 * (v7 + 3978)))(v6 - 232);
  JUMPOUT(0x1001DACECLL);
}

void sub_10021E358()
{
  STACK[0x440] = STACK[0x628];
  LODWORD(STACK[0x820]) = STACK[0x8B4];
  sub_1001A33D4();
}

void sub_10021E378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10021E40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = v12 + v10;
  v14 = (v13 ^ 0xE7790A74) & (2 * (v13 & 0xF779AB65)) ^ v13 & 0xF779AB65;
  v15 = ((2 * (v13 ^ 0x69080CB6)) ^ 0x3CE34FA6) & (v13 ^ 0x69080CB6) ^ (2 * (v13 ^ 0x69080CB6)) & 0x9E71A7D2;
  v16 = v15 ^ 0x8210A051;
  v17 = (v15 ^ 0x1C610780) & (4 * v14) ^ v14;
  v18 = ((4 * v16) ^ 0x79C69F4C) & v16 ^ (4 * v16) & 0x9E71A7D0;
  v19 = (v18 ^ 0x18408740) & (16 * v17) ^ v17;
  v20 = ((16 * (v18 ^ 0x86312093)) ^ 0xE71A7D30) & (v18 ^ 0x86312093) ^ (16 * (v18 ^ 0x86312093)) & 0x9E71A7D0;
  v21 = v19 ^ 0x9E71A7D3 ^ (v20 ^ 0x86102500) & (v19 << 8);
  v22 = v13 ^ (2 * ((v21 << 16) & 0x1E710000 ^ v21 ^ ((v21 << 16) ^ 0x27D30000) & (((v20 ^ 0x186182C3) << 8) & 0x1E710000 ^ 0xE500000 ^ (((v20 ^ 0x186182C3) << 8) ^ 0x71A70000) & (v20 ^ 0x186182C3))));
  v24 = v22 == -952572733 || (v22 & 0xF) != 3;
  return (*(a1 + 8 * (((((v11 - 2790) | 0x41C) - 5298) * v24) ^ v11)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_10021E594@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v60 = a1 - v57 + 531232226;
  v61 = ((v60 & 0xE0560A38) << (((v58 - 109) & 0xDB) - 90)) & (v60 ^ 0xF0476831) ^ v60 & 0xE0560A38;
  v62 = ((2 * (v60 ^ 0x30EB7C21)) ^ 0xA17AEC32) & (v60 ^ 0x30EB7C21) ^ (2 * (v60 ^ 0x30EB7C21)) & 0xD0BD7618;
  v63 = v62 ^ 0x50851209;
  v64 = (v62 ^ 0xD03D6209) & (4 * v61) ^ v61;
  v65 = ((4 * v63) ^ 0x42F5D864) & v63 ^ (4 * v63) & 0xD0BD7618;
  v66 = (v65 ^ 0x40B55019) & (16 * v64) ^ v64;
  v67 = ((16 * (v65 ^ 0x90082619)) ^ 0xBD76190) & (v65 ^ 0x90082619) ^ (16 * (v65 ^ 0x90082619)) & 0xD0BD7610;
  v68 = v66 ^ 0xD0BD7619 ^ (v67 ^ 0x956009) & (v66 << 8);
  v69 = v60 ^ (2 * ((v68 << 16) & 0x50BD0000 ^ v68 ^ ((v68 << 16) ^ 0x76190000) & (((v67 ^ 0xD0281609) << 8) & 0x50BD0000 ^ 0x40890000 ^ (((v67 ^ 0xD0281609) << 8) ^ 0x3D760000) & (v67 ^ 0xD0281609))));
  LODWORD(STACK[0x5DC]) = v69 ^ 0xEADB7F59;
  v70 = (*(v59 + 8 * (v58 + 1974)))(v69 ^ 0xE11EE60A, 0x100004077774924);
  STACK[0x710] = v70;
  return (*(a57 + 8 * (((v70 == 0) | (16 * (v70 == 0))) ^ v58)))();
}

uint64_t sub_10021E76C@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 ^ 0x37AA)))(v1);
  STACK[0x7A8] = 0;
  return sub_10024FD10();
}

void sub_10021E7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x790] = 0;
  STACK[0x518] = *(a64 + 8 * (v64 - 2382));
  JUMPOUT(0x1002119CCLL);
}

uint64_t sub_10021E824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, char a16, int a17, int a18, char a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, char *a25)
{
  a24 = (v26 + 1305603844) ^ (1358806181 * ((2 * (&a20 & 0x5DBC5E80) - &a20 - 1572626056) ^ 0x9D6CCDFB));
  a25 = &a19;
  a22 = a15;
  a23 = &a16;
  (*(v27 + 8 * (v26 + 5393)))(&a20);
  a22 = a15;
  a23 = &a14;
  a21 = (v26 - 1061) ^ (33731311 * ((&a20 - 1420760676 - 2 * (&a20 & 0xAB50E99C)) ^ 0x92A623BF));
  (*(v27 + 8 * (v26 ^ 0x35A8)))(&a20);
  a22 = a15;
  LODWORD(a23) = v26 - 2008441969 * (((&a20 | 0x9F5837C4) - &a20 + (&a20 & 0x60A7C838)) ^ 0xD7C163CA) + 1372;
  v28 = (*(v27 + 8 * (v26 + 5338)))(&a20);
  return (*(v27 + 8 * (((a20 == v25) * ((v26 + 2861) ^ 0xF87 ^ (2902 * (v26 ^ 0x10C3)))) ^ v26)))(v28);
}

uint64_t sub_10021E9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = LOWORD(STACK[0x9A6]);
  STACK[0x6C0] = STACK[0x9A8];
  return (*(v71 + 8 * ((6056 * (v72 == (a71 + 11077))) ^ (a71 - 4096))))();
}

void sub_10021EA04()
{
  *&STACK[0x3B0] = vdupq_n_s64(0x9AB21C279A9FA3B4);
  *&STACK[0x3C0] = vdupq_n_s64(v1);
  *&STACK[0x390] = vdupq_n_s64(0xFC06D5ED7418C184);
  *&STACK[0x3A0] = vdupq_n_s64(0x23E8DF0DACD2C3BDuLL);
  *&STACK[0x370] = vdupq_n_s64(v2);
  *&STACK[0x380] = vdupq_n_s64(0x48785223880F4E9EuLL);
  *&STACK[0x350] = vdupq_n_s64(0x738A5B9B3A13903AuLL);
  *&STACK[0x360] = vdupq_n_s64(0x18EB48C98BD8DF8CuLL);
  *&STACK[0x330] = vdupq_n_s64(0x57D072DFC3A5F657uLL);
  *&STACK[0x340] = vdupq_n_s64(0xC4AB9D20D7B66D92);
  *&STACK[0x310] = vdupq_n_s64(0x16297ECC4BDE2FAEuLL);
  *&STACK[0x320] = vdupq_n_s64(0x2C52FD9897BC5F5CuLL);
  *&STACK[0x2F0] = vdupq_n_s64(v0);
  *&STACK[0x300] = vdupq_n_s64(0xE44B7CAA9406F12CLL);
  *&STACK[0x2D0] = vdupq_n_s64(0x5202C593F84559D0uLL);
  *&STACK[0x2E0] = vdupq_n_s64(v3);
  *&STACK[0x2B0] = vdupq_n_s64(0xE3CC50A6FE864535);
  *&STACK[0x2C0] = vdupq_n_s64(0xD6FE9D3603DD5317);
  *&STACK[0x290] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x280] = vdupq_n_s64(0xA03A397A7DAB0203);
  *&STACK[0x270] = xmmword_1002BF670;
  JUMPOUT(0x10021EC74);
}

uint64_t sub_10021F6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W5>, uint64_t a4@<X8>)
{
  v12 = a4 + ((a3 - 1123) ^ 0x15FFLL) + a2;
  v13 = __ROR8__(v12 & 0xFFFFFFFFFFFFFFF8, 8);
  v14 = v13 - ((2 * v13 + 0x2A11B965E67D9C56) & v5) + v6;
  v15 = v14 ^ v7;
  v16 = v14 ^ v8;
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xE49D77DF873DBF7ELL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0xF5A2F1B9B5D0B209;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ 0x5963B6C555D97F1FLL;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = ((v9 & (2 * (v23 + v22))) - (v23 + v22) + v10) ^ a1;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = a2 - 1;
  v27 = (__ROR8__(v24, 8) + v25) ^ 0x64C31C027084DE6CLL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x1A2AEBE44253AF03;
  *v12 = (((__ROR8__(v29, 8) + (v29 ^ __ROR8__(v28, 61))) ^ 0xAB3042D228875C41) >> (8 * (v12 & 7u))) ^ *(v4 + v26);
  return (*(v11 + 8 * ((1938 * (v26 == 0)) ^ a3)))();
}

uint64_t sub_10021F830@<X0>(uint64_t a1@<X8>)
{
  *v3 = v2;
  *(v2 + 8) = *(a1 + 8);
  *(a1 + 8) = v2;
  return sub_1002094F4();
}

uint64_t sub_10021FA70(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 16257999)
  {
    v7 = STACK[0x6B0];
    v8 = *(STACK[0x6B0] + 8);
    v9 = STACK[0x750];
    v9[1] = v8;
    *v9 = *v7;
    return (*(v5 + 8 * (((((v8 == 0) ^ (3 * (v4 ^ 0x11))) & 1) * (((v4 - 542) | 0x158) ^ 0x235E)) | (v4 - 2957))))();
  }

  else if (a4 == 16215947)
  {
    return (*(v5 + 8 * (((*(STACK[0x7A8] + 8) == 0) * ((v4 ^ 0x3E56) + v4 - 15789)) ^ (v4 - 8114))))();
  }

  else
  {
    return sub_10021FAD8();
  }
}

void sub_10021FB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x420]) = v12;
  LODWORD(STACK[0x3F0]) = a5;
  LODWORD(STACK[0x3FC]) = v11;
  v14 = (LODWORD(STACK[0x524]) - 1439664961) & 0x55CF8F69;
  LODWORD(STACK[0x404]) = v9 - 1055721099;
  LODWORD(STACK[0x400]) = v10 - 588423315;
  LODWORD(STACK[0x3F8]) = v13 + v14 - 1098362327;
  LODWORD(STACK[0x3F4]) = a8 - 1148183754;
  LODWORD(STACK[0x3E8]) += LODWORD(STACK[0x570]);
  LODWORD(STACK[0x3E0]) = v8 + 64;
  JUMPOUT(0x1000E9DC8);
}

uint64_t sub_10021FC7C@<X0>(int a1@<W8>)
{
  STACK[0x9A8] = v1;
  v3 = STACK[0x3F0];
  STACK[0x9B0] = STACK[0x3F0];
  return (*(v2 + 8 * ((((((a1 - 1421427491) ^ (v1 - v3 > 9)) & 1) == 0) * (a1 - 7541)) ^ (a1 - 4531))))();
}

uint64_t sub_10021FD38@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  STACK[0x3D0] = *(a1 + 8 * v2);
  STACK[0x8A0] = 0;
  return (*(a1 + 8 * ((126 * (((a2 ^ (STACK[0x8A0] < 0x20)) & 1) == 0)) ^ a2)))(0xF5A2F1B9B5D0B209, 0xE49D77DF873DBF7ELL, 0x64C31C027084DE6CLL, 0x43E0E1A1BF0A5C84, 0x4191986715653828, 0x5BBB73835736972BLL, 177, 0x5E0F8F2F207AD1BELL);
}

uint64_t sub_10021FEC8()
{
  v2 = (v0 + 1242020879) & 0xB5F85FF6;
  v3 = STACK[0x718];
  v4 = v2 ^ LODWORD(STACK[0x898]) ^ 0x472AD13;
  STACK[0x4C0] = *(v1 + 8 * v0);
  STACK[0x670] = &STACK[0x8A0];
  LODWORD(STACK[0x630]) = v4;
  STACK[0x698] = v3;
  STACK[0x548] = 0;
  LODWORD(STACK[0x944]) = 197499219;
  STACK[0x8F0] = 0x431A33AA2E6D965FLL;
  STACK[0x490] = 0;
  v5 = (*(v1 + 8 * (v2 + 1996)))(16, 0x20040A4A59CD2);
  STACK[0x840] = v5;
  return (*(v1 + 8 * (((v5 == 0) * ((v2 - 1547) ^ ((v2 - 5608) | 0x11) ^ 0x1000)) ^ v2)))();
}

uint64_t sub_10021FFA8()
{
  v2 = *(STACK[0x508] + 24);
  STACK[0x360] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 3772) ^ 0xFFFFE389) + v0 - 6845)) ^ v0)))();
}

void sub_10021FFF4(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x10022001CLL);
}

uint64_t sub_10022009C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x950] = v1 ^ 0xBC59953u;
  *(a1 + 16) = (((v1 ^ 0x9DD4610F) + 1647025905) ^ ((v1 ^ 0x8C1A465E) + 1944435106) ^ ((v1 ^ 0x1A0BBE02) - 436978039 + ((23 * ((v2 + 2318) ^ 0x1D90)) ^ 0x1710))) + 197499229;
  v4 = STACK[0x3E8];
  v5 = (*(STACK[0x3E8] + 8 * ((v2 + 2318) ^ 0x38D1)))();
  *(a1 + 24) = v5;
  return (*(v4 + 8 * ((232 * (v5 != 0)) ^ (v2 + 2318))))();
}

void sub_1002201BC(uint64_t a1@<X8>)
{
  v3 = (v1 + 404377037) & 0xE7E5AFBF;
  (*(v2 + 8 * (v1 + 7267)))(a1);
  *(STACK[0x5E0] + 24) = 0;
  (*(v2 + 8 * (v3 + 7894)))();
  STACK[0x5E0] = 0;
  JUMPOUT(0x10018A12CLL);
}

uint64_t sub_10022021C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t (*a57)(void))
{
  *a4 = a1;
  *a5 = a47;
  return a57();
}

uint64_t sub_100220240(uint64_t a1)
{
  v5 = ((v1 ^ 0x18D1) - 594650992) & 0x23719FFE;
  *v3 = a1;
  *v2 = v8;
  v6 = 706 * (v5 ^ 0xCFD);
  v13 = (v5 + 5020) ^ (1824088897 * ((2 * (&v11 & 0x158224C8) - &v11 - 360850639) ^ 0xB2140853));
  v12 = v9;
  (*(v4 + 8 * (v5 ^ 0x2972)))(&v11);
  v13 = (v6 + 6228) ^ (1824088897 * ((&v11 & 0x5F793CDE | ~(&v11 | 0x5F793CDE)) ^ 0xF8EF1043));
  v12 = v10;
  (*(v4 + 8 * (v6 ^ 0x2DCA)))(&v11);
  return 0;
}

uint64_t sub_1002203CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, unsigned int a24)
{
  v26 = a17 < a16;
  if (v26 == a24 > 0xA421C5B9)
  {
    v26 = a24 + ((v24 - 1166) ^ 0x5BDE3708) < a17;
  }

  return (*(v25 + 8 * ((!v26 * ((53 * (v24 ^ 0x11DE)) ^ 0x39B)) ^ v24)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_100220454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v65 = v63 == (a63 ^ 0x1BF7) - 328594303;
  LOBYTE(STACK[0x57F]) = v65;
  return (*(v64 + 8 * ((4763 * v65) ^ (a63 + 1172))))();
}

uint64_t sub_1002204A8(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  v30 = v14 - v16 + v13;
  v31.i64[0] = v30 - 15;
  v31.i64[1] = v30 - 16;
  *&v32 = v30 - 13;
  *(&v32 + 1) = v30 - 14;
  *&STACK[0x370] = v32;
  v33.i64[0] = v30 - 11;
  v33.i64[1] = v30 - 12;
  v34.i64[0] = v30 - 7;
  v34.i64[1] = v30 - 8;
  v35.i64[0] = v30 - 5;
  v35.i64[1] = v30 - 6;
  v36.i64[0] = v30 - 3;
  v36.i64[1] = v30 - 4;
  v37 = v18 + v14 - v16;
  v38.i64[0] = v13 + v37;
  v38.i64[1] = v30 - 2;
  v39 = vandq_s8(v38, a1);
  v40 = vandq_s8(v36, a1);
  v41 = vandq_s8(v35, a1);
  v42 = vandq_s8(v34, a1);
  v43 = vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL);
  v44 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v45 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), a3), a4);
  v46 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), a3), a4);
  v47 = veorq_s8(v46, a5);
  v48 = veorq_s8(v45, a5);
  v49 = veorq_s8(v45, a6);
  v50 = veorq_s8(v46, a6);
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v49), a7);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v50), a7);
  v53 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v54 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v55 = veorq_s8(v51, v53);
  v56 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v55);
  v58 = vaddq_s64(v56, v54);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(v58, vandq_s8(vaddq_s64(v58, v58), a8)), v20), v21);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(v57, vandq_s8(vaddq_s64(v57, v57), a8)), v20), v21);
  v61 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v62 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL));
  v63 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v62);
  v65 = veorq_s8(vaddq_s64(v63, v61), v22);
  v66 = veorq_s8(v64, v22);
  v67 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v68 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(v65, v67);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v72 = veorq_s8(vaddq_s64(v70, v68), v23);
  v73 = veorq_s8(v71, v23);
  v74 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v75 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v72, v74);
  v77 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), v24);
  v80 = veorq_s8(v78, v24);
  v81 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v80, v80), v25), v80), v26), v27);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v79, v79), v25), v79), v26), v27);
  v83 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v84 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v85 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v83), v28);
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v84), v28);
  v87 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v89 = veorq_s8(v85, v87);
  v87.i64[0] = v30 - 9;
  v87.i64[1] = v30 - 10;
  v90 = vandq_s8(vaddq_s64(v43, a3), a4);
  v178.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v89), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a2)));
  v178.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v88), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2)));
  v91 = veorq_s8(v90, a5);
  v92 = veorq_s8(v90, a6);
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92), a7);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(v95, vandq_s8(vaddq_s64(v95, v95), a8)), v20), v21);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v22);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v23);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v24);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), v25), v102), v26), v27);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v28);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL)));
  v107 = vandq_s8(v87, a1);
  v108 = vandq_s8(vaddq_s64(v44, a3), a4);
  v178.val[1] = vshlq_u64(veorq_s8(v106, v29), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), a2)));
  v109 = veorq_s8(v108, a5);
  v110 = veorq_s8(v108, a6);
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), a7);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(v113, vandq_s8(vaddq_s64(v113, v113), a8)), v20), v21);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v22);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v23);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v24);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v120, v120), v25), v120), v26), v27);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v28);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v126 = vandq_s8(v33, a1);
  v127 = vaddq_s64(v125, v124);
  v128 = vandq_s8(*&STACK[0x370], a1);
  v178.val[0] = vshlq_u64(veorq_s8(v127, v29), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), a2)));
  v129 = vandq_s8(v31, a1);
  v130 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v131 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v132 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), a3), a4);
  v133 = vandq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), a3), a4);
  v129.i64[0] = vqtbl4q_s8(v178, *&STACK[0x360]).u64[0];
  v178.val[0] = veorq_s8(v133, a5);
  v178.val[1] = veorq_s8(v132, a5);
  v178.val[2] = veorq_s8(v132, a6);
  v178.val[3] = veorq_s8(v133, a6);
  v178.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[2]), a7);
  v178.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL), v178.val[3]), a7);
  v134 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v134);
  v135 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = vaddq_s64(v135, v178.val[2]);
  v178.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v178.val[1], vandq_s8(vaddq_s64(v178.val[1], v178.val[1]), a8)), v20), v21);
  v178.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v178.val[0], vandq_s8(vaddq_s64(v178.val[0], v178.val[0]), a8)), v20), v21);
  v136 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v136);
  v137 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = veorq_s8(vaddq_s64(v137, v178.val[2]), v22);
  v178.val[0] = veorq_s8(v178.val[0], v22);
  v138 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v138);
  v139 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = veorq_s8(vaddq_s64(v139, v178.val[2]), v23);
  v178.val[0] = veorq_s8(v178.val[0], v23);
  v140 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[1], v140);
  v141 = vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL);
  v178.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[3]);
  v178.val[1] = veorq_s8(vaddq_s64(v141, v178.val[2]), v24);
  v178.val[0] = veorq_s8(v178.val[0], v24);
  v178.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v178.val[0], v178.val[0]), v25), v178.val[0]), v26), v27);
  v178.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v178.val[1], v178.val[1]), v25), v178.val[1]), v26), v27);
  v178.val[2] = veorq_s8(v178.val[1], vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL));
  v178.val[3] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v178.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), v178.val[2]), v28);
  v178.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL), v178.val[3]), v28);
  v142 = vsraq_n_u64(vshlq_n_s64(v178.val[2], 3uLL), v178.val[2], 0x3DuLL);
  v178.val[2] = veorq_s8(v178.val[0], vsraq_n_u64(vshlq_n_s64(v178.val[3], 3uLL), v178.val[3], 0x3DuLL));
  v143 = vandq_s8(vaddq_s64(v130, a3), a4);
  v178.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[1], 0x38uLL), v178.val[1], 8uLL), veorq_s8(v178.val[1], v142)), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v178.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178.val[0], 0x38uLL), v178.val[0], 8uLL), v178.val[2]), v29), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x370], 3uLL), a2)));
  v144 = veorq_s8(v143, a5);
  v145 = veorq_s8(v143, a6);
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), a7);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(v148, vandq_s8(vaddq_s64(v148, v148), a8)), v20), v21);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150), v22);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v153 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152), v23);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154), v24);
  v156 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v155, v155), v25), v155), v26), v27);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), v28);
  v159 = vandq_s8(vaddq_s64(v131, a3), a4);
  v178.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL))), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v160 = veorq_s8(v159, a5);
  v161 = veorq_s8(v159, a6);
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), a7);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(v164, vandq_s8(vaddq_s64(v164, v164), a8)), v20), v21);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v22);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v23);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v24);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v171, v171), v25), v171), v26), v27);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), v28);
  v178.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL))), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), a2)));
  v129.i64[1] = vqtbl4q_s8(v178, *&STACK[0x360]).u64[0];
  v175 = vrev64q_s8(*(v17 + v37));
  v178.val[0].i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v178.val[0].i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v176 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v175, v175, 8uLL), v178.val[0]), v129));
  *(v13 + v37 - 15) = vextq_s8(v176, v176, 8uLL);
  return (*(v19 + 8 * (((v16 + 16 == v14) * a13) ^ v15)))();
}

void sub_100220DDC()
{
  STACK[0x500] = 0;
  STACK[0x848] = *(STACK[0x3E8] + 8 * (v0 - 4335));
  JUMPOUT(0x100164A3CLL);
}

uint64_t sub_100220EA0@<X0>(__int16 a1@<W8>)
{
  v3 = STACK[0x840];
  STACK[0x880] = *(v2 + 8 * v1);
  return sub_1001800B8(v3, a1);
}

uint64_t sub_100220EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = (*(v66 + 8 * ((v64 - 423) ^ 0x31C1)))(64, v65);
  STACK[0x7A8] = v67;
  return (*(a64 + 8 * (((((878 * ((v64 - 423) ^ 0x1460) - 2057) | 0x430) - 1642) * (v67 != 0)) ^ (v64 - 423))))();
}

uint64_t sub_100220F84@<X0>(int a1@<W8>)
{
  v2 = (a1 + 2028382481) & 0x871967F7;
  (*(v1 + 8 * (a1 ^ 0x2A69)))();
  return (*(STACK[0x330] + 8 * (((STACK[0x5E0] != 0) * (v2 - 7939)) ^ v2)))();
}

void sub_100220FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v9 = !v6 && a5 != 0 && a6 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1002210D4()
{
  v3 = *(v1 + 8);
  STACK[0x818] = v0;
  return (*(STACK[0x400] + 8 * (((((v2 - 1532) | 0x200) ^ ((v2 + 2292) | 0x829) ^ 0x1B3A) * (v3 != 0)) ^ v2)))();
}

uint64_t sub_100221370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v64 = LOWORD(STACK[0x92E]);
  STACK[0x638] = STACK[0x930];
  return (*(v63 + 8 * (((v64 == 17168) * ((a63 ^ 0x204) + 342)) ^ (a63 + 2930))))();
}

uint64_t sub_1002213B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x49C]) = v6;
  STACK[0x700] = STACK[0x550];
  v7 = STACK[0x3E8];
  STACK[0x480] = *(STACK[0x3E8] + 8 * (a6 - 4669));
  return sub_1001C9EBC(a1, a2, a3, v7);
}

uint64_t sub_1002213E0(uint64_t a1, uint64_t a2)
{
  STACK[0x7F0] = STACK[0x3E8];
  LODWORD(STACK[0x3E4]) = STACK[0x64C];
  return sub_1001E5304(a1, a2);
}

uint64_t sub_1002214A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v80 = v70 - 1;
  v81 = __ROR8__((v77 + v80) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5;
  v82 = __ROR8__(v81 ^ 0x49E9423B6F16E7D2, 8);
  v81 ^= 0xE1AFA7ACF6E0968ELL;
  v83 = (v82 + v81) ^ v73;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (((2 * (v85 + v84)) & 0x202D8EFF3E134550) - (v85 + v84) + 0x6FE9388060F65D57) ^ 0x9A4BC939D526EF5ELL;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (((2 * (v88 + v87)) | 0x45B996DFB575EE6) - (v88 + v87) - 0x22DCCB6FDABAF73) ^ 0x5B4E7A73A872D06CLL;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (((2 * (v91 + v90)) & 0xE50EF93BD6C6A2AALL) - (v91 + v90) - 0x72877C9DEB635156) ^ 0xEC3D1E48E4838A5DLL;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ a4;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = (__ROR8__(v94, 8) + v95) ^ 0x1A2AEBE44253AF03;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = __ROR8__(v96, 8);
  v99 = ((((2 * (v98 + v97)) & 0x8D3B02A49A14CEA0) - (v98 + v97) + 0x39627EADB2F598AFLL) ^ 0x92523C7F9A72C4EELL) >> (8 * ((v77 + v80) & 7));
  v100 = __ROR8__((a1 + v80) & 0xFFFFFFFFFFFFFFF8, 8);
  v101 = v74 - (((v71 - v100) | a5) + ((v100 + a2) | 0xD54EE0FE93425299));
  v102 = v101 ^ a6;
  v103 = v101 ^ a7;
  v104 = __ROR8__(v102, 8);
  v105 = ((v76 | (2 * (v104 + v103))) - (v104 + v103) + v78) ^ v79;
  v106 = v105 ^ __ROR8__(v103, 61);
  v107 = (__ROR8__(v105, 8) + v106) ^ 0xF5A2F1B9B5D0B209;
  v108 = __ROR8__(v107, 8);
  v109 = v107 ^ __ROR8__(v106, 61);
  v110 = (v108 + v109) ^ 0x5963B6C555D97F1FLL;
  v111 = v110 ^ __ROR8__(v109, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ 0x61459D2AF01F24F7;
  v113 = v112 ^ __ROR8__(v111, 61);
  v114 = (__ROR8__(v112, 8) + v113) ^ a4;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = (__ROR8__(v114, 8) + v115) ^ a8;
  v117 = (v72 - (v116 | v72) + (v116 | v65)) ^ v66;
  v118 = v117 ^ __ROR8__(v115, 61);
  v119 = __ROR8__(v117, 8);
  *(a1 + v80) = ((((v67 & (2 * (v119 + v118))) - (v119 + v118) + v68) ^ v69) >> (8 * ((a1 + v80) & 7))) ^ *(v77 + v80) ^ v99;
  return (*(a65 + 8 * (((v80 != 0) * v75) ^ a3)))();
}

uint64_t sub_100221798@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, unsigned int a14)
{
  a13 = a1;
  a14 = v14 - 2008441969 * ((-1298253526 - (&a12 | 0xB29E392A) + (&a12 | 0x4D61C6D5)) ^ 0x5F892DB) + 3496;
  v17 = (*(v16 + 8 * (v14 ^ 0x2DEE)))(&a12);
  return (*(v16 + 8 * (((a12 == v15) * ((v14 + 1589159737) & 0xA1475EFB ^ 0xCCF)) ^ v14)))(v17);
}

uint64_t sub_100221938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = ((v4 & 0xF9169EAF) - 1745) | 0x1020;
  v6 = STACK[0x5F8];
  STACK[0x448] = STACK[0x5F8];
  STACK[0x4E8] = v5 + STACK[0x4E8] - 7580;
  v7 = STACK[0x4D8];
  STACK[0x858] = STACK[0x4D8];
  STACK[0x4C8] = v6;
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  return (*(a4 + 8 * ((v9 * ((((v5 - 6510) | 0x160) + 1360) ^ 0xA76)) ^ v5)))();
}

uint64_t sub_1002219D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v24 = v12 - 1;
  v25 = __ROR8__((v19 + v24) & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((v25 - 0x6AF7234D0CC131D5) | v20) - ((v25 - 0x6AF7234D0CC131D5) | a2) + a2;
  v27 = __ROR8__(v26 ^ a4, 8);
  v28 = v26 ^ a6;
  v29 = (v27 + v28) ^ v23;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__(((a5 | (2 * (v31 + v30))) - (v31 + v30) + a7) ^ v16, 8);
  v33 = ((a5 | (2 * (v31 + v30))) - (v31 + v30) + a7) ^ v16 ^ __ROR8__(v30, 61);
  v34 = ((v17 & (2 * (v32 + v33))) - (v32 + v33) + v15) ^ a3;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x61459D2AF01F24F7;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x64C31C027084DE6CLL;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v22 - ((v40 + v39) | v22) + ((v40 + v39) | a8)) ^ v18;
  *(a1 + v24) = *(v10 + (v24 & 0xF)) ^ *(v19 + v24) ^ *((v24 & 0xF) + v9 + 2) ^ ((v24 & 0xF) * v13) ^ *((v24 & 0xF) + v8 + 1) ^ (((__ROR8__(v41, 8) + (v41 ^ __ROR8__(v39, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v19 + v24) & 7)));
  return (*(v21 + 8 * (((v24 == 0) * v14) ^ (v11 - 1334))))();
}

uint64_t sub_100221BE4@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  v57 = a1 + 19;
  v58 = STACK[0x9A0];
  STACK[0x210] = ((STACK[0x9A0] + 4) ^ 0x7F57DEFBFFFFB5BELL) - 0x19149C8A4F8011A8 + (((STACK[0x9A0] + 4) << (v57 ^ 0xF7u)) & 0xFEAFBDF7FFFF6B7CLL);
  v59 = STACK[0x990] + 10;
  v80 = ((STACK[0x950] + 4) ^ 0x774B7371BC7FB676) - 0x110831000C001260 + ((2 * (STACK[0x950] + 4)) & 0xEE96E6E378FF6CECLL);
  v79 = ((STACK[0x940] + 4) ^ 0xEF7FDEF9F67FAF5ELL) + 0x76C36377B9FFF4B8 + ((2 * (STACK[0x940] + 4)) & 0xDEFFBDF3ECFF5EBCLL);
  v78 = ((STACK[0x930] + 4) ^ 0xF7EB4F7BBA7FEEF6) + 0x6E57F2F5F5FFB520 + ((2 * (STACK[0x930] + 4)) & 0xEFD69EF774FFDDECLL);
  v77 = ((STACK[0x920] + 4) ^ 0xF7637BF3B1FFFDD6) + 0x6EDFC67DFE7FA640 + ((2 * (STACK[0x920] + 4)) & 0xEEC6F7E763FFFBACLL);
  v60 = STACK[0x9E8];
  v76 = ((STACK[0x9E8] + 4) ^ 0xE7C356FDF47FAF76) + 0x7E7FEB73BBFFF4A0 + ((2 * (STACK[0x9E8] + 4)) & 0xCF86ADFBE8FF5EECLL);
  v75 = ((STACK[0x910] + 4) ^ 0x675FEEFDB2FFFEDELL) - 0x11CAC8C02805AC8 + ((2 * (STACK[0x910] + 4)) & 0xCEBFDDFB65FFFDBCLL);
  v61 = STACK[0xA18];
  v74 = ((STACK[0xA18] + 4) ^ 0x7F73DB77FF7FF65FLL) - 0x193099064F005249 + ((2 * (STACK[0xA18] + 4)) & 0xFEE7B6EFFEFFECBELL);
  v73 = ((STACK[0x9B0] + 6) ^ 0xEE4FFFBFFCFFFFBBLL) + 0x73BEBFF9FBFBF17ELL + ((2 * (STACK[0x9B0] + 6)) & 0xDC9FFF7FF9FFFF76);
  v72 = ((STACK[0x990] + 6) ^ 0x765EFFFBF8FFF739) - 0x1450404200040600 + ((2 * (STACK[0x990] + 6)) & 0xECBDFFF7F1FFEE72);
  v71 = ((STACK[0x970] + 6) ^ 0xF64FBFBDF8FBFFFDLL) + 0x6BBEFFFBFFFFF13CLL + ((2 * (STACK[0x970] + 6)) & 0xEC9F7F7BF1F7FFFALL);
  v70 = ((STACK[0x950] + 6) ^ 0x7E1EFFFDFDFBF1BBLL) - 0x1C10404405000082 + ((2 * (STACK[0x950] + 6)) & 0xFC3DFFFBFBF7E376);
  v69 = ((STACK[0x940] + 6) ^ 0xE69EFFBDFEFBF7B9) + 0x7B6FBFFBF9FFF980 + ((2 * (STACK[0x940] + 6)) & 0xCD3DFF7BFDF7EF72);
  v68 = ((STACK[0x930] + 6) ^ 0x765FBFF9F8FBF97FLL) - 0x1451004000000846 + ((2 * (STACK[0x930] + 6)) & 0xECBF7FF3F1F7F2FELL);
  v67 = ((STACK[0x920] + 6) ^ 0x7BEFBFFFFBFFFB7FLL) - 0x19E1004603040A46 + ((2 * (STACK[0x920] + 6)) & 0xF7DF7FFFF7FFF6FELL);
  v66 = ((STACK[0x910] + 6) ^ 0x6B9EBFFBFFFBFB39) - 0x990004207000A00 + ((2 * (STACK[0x910] + 6)) & 0xD73D7FF7FFF7F672);
  STACK[0x200] = v58 + 10;
  STACK[0x220] = v60 + 10;
  STACK[0x310] = STACK[0x570];
  v65 = STACK[0x998];
  STACK[0x290] = STACK[0x840];
  v64 = STACK[0x988];
  STACK[0x300] = STACK[0x588];
  STACK[0x280] = STACK[0x398];
  STACK[0x270] = STACK[0x630];
  STACK[0x260] = STACK[0x7E0];
  STACK[0x250] = STACK[0x360];
  STACK[0x240] = STACK[0x420];
  STACK[0x2F0] = STACK[0x718];
  v63 = STACK[0x9E0];
  STACK[0x230] = STACK[0x620];
  STACK[0x2E0] = STACK[0x768];
  v62 = STACK[0xA10];
  LODWORD(STACK[0x2A0]) = LOWORD(STACK[0x8E6]);
  LODWORD(STACK[0x2D0]) = LOWORD(STACK[0x8D6]);
  LODWORD(STACK[0x2B0]) = LOWORD(STACK[0x89A]);
  LODWORD(STACK[0x2C0]) = LOWORD(STACK[0x886]);
  return (*(STACK[0x330] + 8 * v56))(0x84D53DF2213B4FA4, 0x6FEAED2DD55A32A7, 0x3D2CC4E5C304AE09, 0x5D07E2954C9434CALL, 0xE1AFA7ACF6E0968ELL, 0xCC6D33EEA00FE42, 0xAB3042D228875C41, 0xD17C0EB559B5E59ALL, a2, a3, a4, a5, a6, ((v61 + 10) ^ 0xE3DFBFBFF9FBF73FLL) + 0x7E2EFFF9FEFFF9FALL + ((2 * (v61 + 10)) & 0xC7BF7F7FF3F7EE7ELL), ((v60 + 10) ^ 0xE3CFBFFDFCFFFD3FLL) + 0x7E3EFFBBFBFBF3FALL + ((2 * (v60 + 10)) & 0xC79F7FFBF9FFFA7ELL), (v59 ^ 0x72CEFFF9FDFFFBBBLL) - 0x10C0404005040A82 + ((2 * v59) & 0xE59DFFF3FBFFF776), ((v58 + 10) ^ 0xF6BEBFB9FDFFF7BBLL) + 0x6B4FFFFFFAFBF97ELL + ((2 * (v58 + 10)) & 0xED7D7F73FBFFEF76), a11, v62, a13, v63, a15, v64, a17, v65, a19, v61 + 10, a21, ((v61 + 6) ^ 0x623EFFBFF9FFF13BLL) - 0x30400601040002 + ((2 * (v61 + 6)) & 0xC47DFF7FF3FFE276), a23, v66, a25, ((v60 + 6) ^ 0x765EBFFFF8FBF7FBLL) - 0x14500046000006C2 + ((2 * (v60 + 6)) & 0xECBD7FFFF1F7EFF6), a27, v67, a29, v68, a31, v69, a33, v70, a35, v71, a37, v72, a39, v73, a41, ((v58 + 6) ^ 0xF61EBFFBFEFFF379) + 0x6BEFFFBDF9FBFDC0 + ((2 * (v58 + 6)) & 0xEC3D7FF7FDFFE6F2), a43, v74, a45, v75, a47, v76, a49, v77, a51, v78, a53, v79, a55, v80);
}

uint64_t sub_100222594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a17 = a10;
  a18 = &a13;
  a16 = (v20 - 1168) ^ (33731311 * (((&a15 | 0x7A9034B2) - &a15 + (&a15 & 0x856FCB48)) ^ 0x4366FE91));
  (*(v19 + 8 * (v20 + 5181)))(&a15);
  LODWORD(a18) = v20 + 940 - 2008441969 * ((&a15 & 0x2686759A | ~(&a15 | 0x2686759A)) ^ 0x91E0DE6B) + 325;
  a17 = a10;
  v21 = (*(v19 + 8 * (v20 + 5231)))(&a15);
  return (*(v19 + 8 * (((a15 == v18) * (96 * ((v20 + 940) ^ 0x14F3) - 4091)) | (v20 + 940))))(v21);
}

uint64_t sub_100222694()
{
  STACK[0x810] = 0;
  v3 = STACK[0x888];
  STACK[0x518] = *(v2 + 8 * (v1 - 2374));
  return sub_100236B70(v3);
}

void sub_1002226C8(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x10015D114);
}

uint64_t sub_100222A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *v12 + v15 - 0x5EA5347A8335DC6CLL;
  v18 = __ROR8__(v17 & 0xFFFFFFFFFFFFFFF8, 8);
  v19 = ((0x6AF7234D0CC131D4 - v18) & a2) + v18 + a6 - ((v18 + a6) & a2);
  v20 = __ROR8__(v19 ^ 0xAB257711D84E66DLL, 8);
  v19 ^= 0xA2F4B2E684729731;
  v21 = (((v20 + v19) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v20 + v19) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ 0xF5A2F1B9B5D0B209;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v16;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ a7;
  v28 = __ROR8__(v27, 8);
  v29 = v27 ^ __ROR8__(v26, 61);
  v30 = (v28 + v29) ^ a5;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8) + v31;
  v33 = __ROR8__((v17 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v34 = (0x6AF7234D0CC131D4 - v33) & 0xC2A16714FA488FC8 | (v33 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v35 = __ROR8__(v34 ^ 0x8B48252F955E681ALL, 8);
  v34 ^= 0x230EC0B80CA81946uLL;
  v36 = (((2 * v32) | 0x36A4398A31861B6ALL) - v32 - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6;
  v37 = (((2 * (v35 + v34)) & 0xAC7FF88AB7D467A0) - (v35 + v34) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v38 = v37 ^ __ROR8__(v34, 61);
  v39 = __ROR8__(v37, 8);
  LOBYTE(v31) = (((__ROR8__(v36, 8) + (v36 ^ __ROR8__(v31, 61))) ^ 0xAB3042D228875C41) >> (8 * (v17 & 7u))) ^ HIBYTE(v9);
  v40 = (v39 + v38 - ((2 * (v39 + v38)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = *(STACK[0x400] + 8 * v11);
  *v17 = v31 ^ 0xDD;
  v43 = (__ROR8__(v40, 8) + v41) ^ v16;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ a7;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (((2 * (v47 + v46)) | 0x63B77BB044F1F226) - (v47 + v46) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0x1A2AEBE44253AF03;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  *(v17 + 1) = (((v52 + v51 - ((2 * (v52 + v51)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v17 + 1) & 7))) ^ BYTE2(v9) ^ 0x60;
  v53 = __ROR8__((v17 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v54 = ((2 * v53 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v53 + 0x6BC5C09CD998FDFLL;
  v55 = __ROR8__(v54 ^ 0xD22C7A87AFCEB9D8, 8);
  v54 ^= 0x7A6A9F103638C884uLL;
  v56 = (v55 + v54) ^ 0xE49D77DF873DBF7ELL;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0xF5A2F1B9B5D0B209;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ v16;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (((2 * (v62 + v61)) | 0x316A40512FDE1242) - (v62 + v61) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ a5;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0x1A2AEBE44253AF03;
  *(v17 + 2) = (((__ROR8__(v67, 8) + (v67 ^ __ROR8__(v66, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v17 + 2) & 7))) ^ BYTE1(v9) ^ 0xF8;
  v68 = __ROR8__((v17 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v69 = (0xAF7234D0CC131D4 - v68) & 0x126AA61F6F56C0D8 | (v68 + a6) & v13;
  v70 = v69 ^ a8;
  v71 = v69 ^ v14;
  v72 = (__ROR8__(v70, 8) + v71) ^ 0xE49D77DF873DBF7ELL;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0xF5A2F1B9B5D0B209;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = __ROR8__(v74, 8);
  v77 = ((a3 | (2 * (v76 + v75))) - (v76 + v75) + v10) ^ a1;
  v78 = v77 ^ __ROR8__(v75, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ a7;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ a5;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x1A2AEBE44253AF03;
  *(v17 + 3) = v9 ^ v8 ^ (((__ROR8__(v83, 8) + (v83 ^ __ROR8__(v82, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v17 + 3) & 7)));
  return v42();
}

uint64_t sub_10022311C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v70 - 224) = v67 ^ (914963389 * ((2 * ((v70 - 232) & 0x5DD03058) - (v70 - 232) + 573558688) ^ 0xED37EDB));
  v71 = (*(v64 + 8 * v69))(v70 - 232);
  *(v68 + 8) = *(v70 - 232) ^ v65;
  return (*(a64 + 8 * ((2395 * (((v66 - 2454) ^ 0xBBuLL) > 8)) ^ (v66 - 847))))(v71, 16215976);
}

uint64_t sub_100223224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LOWORD(STACK[0x8DA]) = v5;
  LODWORD(STACK[0x360]) = v5;
  return sub_10021BD58(a1, a2, STACK[0x3D0], a4, a5, v6 - 4631);
}

uint64_t sub_100223240(uint64_t a1)
{
  v4 = *(v2 + 4);
  *(a1 + 20) = v4;
  return (*(v3 + 8 * (((v4 == 0) * (v1 + v1 + 611 - 648)) ^ v1)))();
}

uint64_t sub_100223278(uint64_t a1)
{
  v8 = -v5 - a1;
  v10 = (v6 - a1) >= 0x10 && v8 + v3 + 16 >= ((6 * (v4 ^ 0x25E1u)) ^ 0xA5AuLL) && (v8 + v2 + 18) >= 0x10;
  v11 = v8 + v1 + 17;
  v13 = !v10 || v11 < (((v4 ^ 0x25E1u) + 6422) ^ 0x1ADDuLL);
  return (*(v7 + 8 * ((62 * v13) ^ v4)))();
}

uint64_t sub_10022335C(uint64_t a1)
{
  v2 = 1358806181 * (((a1 | 0x30E0F658) - (a1 & 0x30E0F658)) ^ 0xFCF9ADB);
  v3 = *(a1 + 4) - v2;
  v4 = *a1 - v2;
  v5 = ((2 * (v4 & 0x84EAA7A6)) & 0x1140000 | v4 & 0x84EAA7A6) ^ (2 * (v4 & 0x84EAA7A6)) & (v4 ^ 0xF1DCA796);
  v6 = ((2 * (v4 ^ 0xF1DCA796)) ^ 0xEA6C0060) & (v4 ^ 0xF1DCA796) ^ (2 * (v4 ^ 0xF1DCA796)) & 0x75360030;
  v7 = v6 ^ 0x15120010;
  v8 = (v6 ^ 0x20240020) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0xD4D800C0) & v7 ^ (4 * v7) & 0x75360030;
  v10 = v8 ^ 0x75360030 ^ (v9 ^ 0x54100000) & (16 * v8);
  v11 = (16 * (v9 ^ 0x21260030)) & 0x75360030 ^ 0x24160030 ^ ((16 * (v9 ^ 0x21260030)) ^ 0x53600300) & (v9 ^ 0x21260030);
  v12 = (v10 << 8) & 0x75360000 ^ v10 ^ ((v10 << 8) ^ 0x36003000) & v11;
  v13 = v4 ^ (2 * ((v12 << 16) & 0x75360000 ^ v12 ^ ((v12 << 16) ^ 0x300000) & ((v11 << 8) & 0x75360000 ^ 0x41360000 ^ ((v11 << 8) ^ 0x36000000) & v11))) ^ 0xB2CC5E20;
  v14 = 914963389 * ((((2 * v16) | 0xE06954DC) - v16 - 1882499694) ^ 0x5CC81B15);
  v17 = *(a1 + 16);
  v18 = v13 - v14;
  v16[1] = v14 ^ (v3 + 740061702);
  v16[2] = v14 + 1378321594;
  result = (*(*(&off_100315F70 + v3 + 740056760) + v3 + 740066191))(v16);
  *(a1 + 8) = v16[0];
  return result;
}

void sub_10022363C(uint64_t a1)
{
  v2 = *(&off_100315F70 + ((-85 * ((dword_100330E70 + dword_100330FE8) ^ 0xDF)) ^ byte_1002B7200[byte_1002B0320[(-85 * ((dword_100330E70 + dword_100330FE8) ^ 0xDF))] ^ 0x67]) + 271);
  v3 = *(v2 - 4);
  v4 = *(&off_100315F70 + ((-85 * (v3 ^ dword_100330E70 ^ 0xDF)) ^ byte_1002B0220[byte_1002A5CB0[(-85 * (v3 ^ dword_100330E70 ^ 0xDF))] ^ 0xEE]) + 85);
  v5 = 2054362027 * ((v3 - &v7 + *v4) ^ 0xB4207763EF64BDFLL);
  *(v2 - 4) = v5;
  *v4 = v5;
  LODWORD(v4) = *(v2 - 4);
  v6 = *(&off_100315F70 + ((-85 * ((dword_100330E70 + dword_100330FE8) ^ 0xDF)) ^ byte_1002A5DB0[byte_1002BF460[(-85 * ((dword_100330E70 + dword_100330FE8) ^ 0xDF))] ^ 0xDD]) + 36) - 8;
  (*&v6[8 * (byte_1002A5FB0[byte_1002BF560[(-85 * (v4 ^ 0xDF ^ v5))] ^ 0xE2] ^ (-85 * (v4 ^ 0xDF ^ v5))) + 76888])(*(&off_100315F70 + ((-85 * ((v5 - v4) ^ 0xDF)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * ((v5 - v4) ^ 0xDF))] ^ 0x71]) - 28), sub_10016625C);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1002238A8()
{
  LODWORD(STACK[0x35C]) = STACK[0x2F0];
  LOBYTE(STACK[0x79B]) = STACK[0x310];
  LODWORD(STACK[0x49C]) = v1;
  STACK[0x8A8] = STACK[0x300];
  LODWORD(STACK[0x8B4]) = v0;
  return sub_10022F190();
}

void sub_1002238D8()
{
  v0 = *(&off_100315F70 + (byte_1002A5DB0[byte_1002BF468[(-85 * ((dword_100330E70 - dword_100330F88) ^ 0xDF)) - 8] ^ 0xDD] ^ (-85 * ((dword_100330E70 - dword_100330F88) ^ 0xDF))) - 19);
  v1 = *(v0 - 4);
  v2 = *(&off_100315F70 + (byte_1002B7208[(byte_1002B0328[(-85 * ((dword_100330E70 - v1) ^ 0xDF)) - 8] ^ 0x67) - 8] ^ (-85 * ((dword_100330E70 - v1) ^ 0xDF))) + 143);
  v3 = 2054362027 * (&v5[v1 + *v2] ^ 0xB4207763EF64BDFLL);
  *(v0 - 4) = v3;
  *v2 = v3;
  v6[0] = 476323082 - 1710126949 * (v6 ^ 0x321B5B90);
  LOBYTE(v2) = -85 * (*(v0 - 4) ^ 0xDF ^ *v2);
  v4 = *(&off_100315F70 + ((-85 * (dword_100330F88 ^ 0xDF ^ dword_100330E70)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * (dword_100330F88 ^ 0xDF ^ dword_100330E70))] ^ 0xB1]) + 234) - 8;
  (*&v4[8 * (byte_1002B022C[(byte_1002A5CB0[v2] ^ 0x21) - 12] ^ v2) + 76056])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100223B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, unint64_t *a39)
{
  *(v42 - 224) = *a37;
  *(v42 - 232) = v40 + 1710126949 * ((v42 + 359721786 - 2 * ((v42 - 232) & 0x1570EC22)) ^ 0x276BB7B2) + 6265;
  v43 = (*(v39 + 8 * (v40 + 7176)))(v42 - 232);
  v44 = STACK[0x3E8];
  v45 = *a39;
  STACK[0x558] = &STACK[0xA20];
  STACK[0x4E8] = 80;
  STACK[0x4E0] = v41;
  STACK[0x438] = 0;
  STACK[0x470] = 0;
  STACK[0x518] = v45;
  return (*(v44 + 8 * ((109 * (((3 * (v40 ^ 0xEA)) ^ (v45 == 0)) & 1)) ^ v40)))(v43);
}

uint64_t sub_100223CC0()
{
  if (v0 == 16257999)
  {
    v4 = STACK[0x748];
    v5 = *(STACK[0x748] + 8);
    v6 = STACK[0x470];
    v6[1] = v5;
    *v6 = *v4;
    return (*(v2 + 8 * (((v5 == 0) * ((((v1 + 981887477) & 0xC5799ABE) - 1574) ^ 0x14EB)) ^ (v1 + 3635))))();
  }

  else if (v0 == 16215947)
  {
    return (*(v2 + 8 * (((*(STACK[0x378] + 8) == 0) * ((((v1 - 5096) | 0x961) + 53) ^ ((v1 - 3023) | 0x148))) ^ (v1 + 366))))();
  }

  else
  {
    return (*(v2 + 8 * (((*(STACK[0x470] + 24) == 0) * ((((v1 - 5414) | 0x908) - 223) ^ 0x8CA)) ^ (v1 + 3807))))();
  }
}

uint64_t sub_100223E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unint64_t a32)
{
  v34 = STACK[0x3F8] - 4763;
  LODWORD(STACK[0x9EC]) = v32;
  v35 = (v32 ^ v33) + STACK[0x2B0];
  STACK[0x9F0] = v35;
  return (*(STACK[0x400] + 8 * (v34 ^ ((4 * (v35 <= a32)) | (16 * (v35 <= a32))))))();
}

void sub_100223F20(uint64_t a1)
{
  v1 = *(a1 + 4) ^ (914963389 * ((~a1 & 0x357A62A9 | a1 & 0xCA859D56) ^ 0x1986D3D2));
  __asm { BRAA            X10, X17 }
}

void sub_100224184(int a1@<W8>)
{
  if (a1 > 203186114)
  {
    if (a1 == 203186115)
    {
      __asm { BRAA            X10, X17 }
    }

    v6 = 24517;
  }

  else
  {
    if (a1 == 203186112)
    {
      goto LABEL_7;
    }

    v6 = 24514;
  }

  if (a1 == (v6 | 0xC1C0000))
  {
LABEL_7:
    __asm { BRAA            X8, X17 }
  }

  *(v3 + 12) = (((v2 ^ 0xE4C99C2D) - 1618687204) ^ ((v2 ^ 0x533B2B60) + 678853719) ^ ((v2 ^ 0xEE565728) - 1793392609)) - 569484165;
}

uint64_t sub_100224414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, unsigned int a14)
{
  a13 = a9;
  a14 = (v16 - 1000537268) ^ (((((2 * &a12) | 0xADC23A00) - &a12 + 689890048) ^ 0x8E88CE62) * v15);
  v17 = (*(v14 + 8 * (v16 ^ 0x3BA338C2)))(&a12);
  return sub_10022447C(v17);
}

void sub_1002244C0()
{
  STACK[0x480] = 0;
  STACK[0x540] = *(v1 + 8 * (v0 - 8403));
  JUMPOUT(0x1002244E8);
}

uint64_t sub_100224674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16)
{
  a16 = (v18 + 474186910) ^ (((&a14 + 383697008 - 2 * (&a14 & 0x16DEC070)) ^ 0x4EB71312) * v16);
  a15 = a10;
  v19 = (*(v17 + 8 * (v18 ^ 0xE3BCBE70)))(&a14);
  return sub_1002246DC(v19);
}

uint64_t sub_100224720@<X0>(int a1@<W8>)
{
  STACK[0xA10] = v1;
  v2 = STACK[0x448];
  STACK[0xA18] = STACK[0x448];
  return (*(STACK[0x330] + 8 * (((v1 - v2 > 9) * (((a1 - 5902) ^ 0xC51) + ((a1 - 5902) | 0x105))) ^ a1)))();
}

uint64_t sub_1002248CC()
{
  LODWORD(STACK[0x394]) = v0;
  v3 = STACK[0x348];
  STACK[0x5C8] = STACK[0x348];
  STACK[0x728] -= 32;
  v4 = STACK[0x5B0];
  STACK[0x730] = STACK[0x5B0];
  STACK[0x3A8] = v3;
  if (v3)
  {
    v5 = v4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  return (*(v2 + 8 * ((v6 * (v1 ^ 0x15F9)) ^ (v1 + 1328))))();
}

uint64_t sub_100224974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(&off_100315F70 + v65 - 891);
  *(v68 + 96) = 0;
  *(v68 + 104) = 0;
  *(v66 - 228) = v65 + 1710126949 * ((2 * ((v66 - 232) & 0x33FB9DA8) - (v66 - 232) + 1275355734) ^ 0x7E1F39C6) + 1664195590;
  v69 = (*(v67 + 8 * (v65 ^ 0x267E)))(v66 - 232);
  return (*(a64 + 8 * (((*(v66 - 232) != v64 + 3299) * ((v65 + 1699) ^ 0xA44)) ^ v65)))(v69);
}

uint64_t sub_100224AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v18 + 1951) ^ (33731311 * (&a15 ^ 0x39F6CA23));
  a17 = a13;
  a18 = &a11;
  (*(v20 + 8 * (v18 + 8300)))(&a15);
  a17 = a13;
  LODWORD(a18) = v18 - 2008441969 * ((-1253428310 - (&a15 | 0xB54A33AA) + (&a15 | 0x4AB5CC55)) ^ 0x22C985B) + 4384;
  v21 = (*(v20 + 8 * (v18 ^ 0x2166)))(&a15);
  return (*(v20 + 8 * (((a15 == v19) * (v18 - 774)) ^ v18)))(v21);
}

uint64_t sub_100224C98()
{
  if (v0 == 16257999)
  {
    v4 = STACK[0x590];
    v5 = *(STACK[0x590] + 8);
    v6 = STACK[0x6F0];
    v6[1] = v5;
    *v6 = *v4;
    return (*(v2 + 8 * ((((((v1 + 2024) ^ (v5 == 0)) & 1) == 0) * ((7 * (v1 ^ 0x14BE)) ^ 0x8FA)) ^ (v1 - 3326))))();
  }

  else if (v0 == 16215947)
  {
    return (*(v2 + 8 * ((((v1 ^ 0xB1 ^ (*(STACK[0x6F8] + 8) == 0)) & 1) * (v1 - 5573)) ^ (v1 - 863))))();
  }

  else
  {
    return sub_100224CFC();
  }
}

uint64_t sub_100224FAC@<X0>(uint64_t a1@<X8>)
{
  v3 = STACK[0x6F8];
  STACK[0x508] = *(v2 + 8 * a1);
  return (*(v2 + 8 * (((((v3 == 0) ^ (a1 + 95)) & 1) * (((a1 - 201) | 0x1582) - 6078)) ^ (a1 + 4704))))();
}

void sub_1002250B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  *&STACK[0x270] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x280] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x250] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x260] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x230] = vdupq_n_s64(0x6FE9388060F65D57uLL);
  *&STACK[0x240] = vdupq_n_s64(0x202D8EFF3E134550uLL);
  *&STACK[0x210] = vdupq_n_s64(0x45B996DFB575EE6uLL);
  *&STACK[0x220] = vdupq_n_s64(0x9A4BC939D526EF5ELL);
  *&STACK[0x200] = vdupq_n_s64(0xFDD233490254508DLL);
  *&STACK[0x370] = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x3A0] = vdupq_n_s64(0xD54EE0FE93425299);
  *&STACK[0x3B0] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x380] = vdupq_n_s64(a6);
  *&STACK[0x390] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  JUMPOUT(0x100225348);
}

uint64_t sub_100226834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, unsigned int a17)
{
  a17 = (33731311 * (((&a14 | 0x4D13EFBB) + (~&a14 | 0xB2EC1044)) ^ 0x74E52599)) ^ 0x208C;
  a15 = v17;
  a16 = a12;
  v20 = (*(v18 + 77256))(&a14);
  return (*(v18 + 8 * ((7923 * (a14 == v19 - 962517632)) ^ 0xEBCu)))(v20);
}

uint64_t sub_100226974(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = 193 * (a3 ^ 0x1B1B);
  LODWORD(STACK[0x270]) = v72;
  return (*(a71 + 8 * ((91 * (0xEFEEE7DAFDD4E84CLL - a1 + v71 - a67 - a65 + ((v72 - 867287018) & 0x33B1AF75) > 0xF)) ^ a3)))();
}

uint64_t sub_100226A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a19 = 1317436891 * ((((2 * &a17) | 0xB1127C68) - &a17 - 1485389364) ^ 0xE88AA642) + 8154;
  a17 = &a11;
  v20 = (*(v19 + 77096))(&a17);
  return (*(v19 + 8 * ((2279 * (a18 == 16257999)) ^ 0x128Du)))(v20);
}

uint64_t sub_100226AF4@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v5) = 0;
  v8 = v5 < v4 && v5 + 840616316 < v1;
  return (*(v6 + 8 * ((v8 * v2) ^ v3)))();
}

uint64_t sub_100226C28()
{
  LODWORD(STACK[0x47C]) = STACK[0x2E0];
  LODWORD(STACK[0x754]) = STACK[0x2F0];
  LODWORD(STACK[0x6C4]) = STACK[0x300];
  LODWORD(STACK[0x3D4]) = v0;
  return sub_100226C54();
}

uint64_t sub_100226C54(uint64_t a1)
{
  if (v2)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(v3 + 8 * ((v5 * ((v1 - 95711010) & 0x5B47DFF ^ 0x15C8)) ^ v1)))();
}

uint64_t sub_100226DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int8x16_t a59, int8x16_t a60)
{
  v66 = v62 ^ 0xD04u;
  v67 = (a37 + v60 + a2 + a8);
  v68.i64[0] = v61 + a8 - 15;
  v68.i64[1] = v61 + a8 - 16;
  v259 = v68;
  v68.i64[0] = v61 + a8 - 13;
  v68.i64[1] = v61 + a8 - 14;
  v258 = v68;
  v69.i64[0] = v61 + a8 - 5;
  v69.i64[1] = v61 + a8 - 6;
  v70.i64[0] = v61 + a8 - 3;
  v70.i64[1] = v61 + a8 - 4;
  v71.i64[0] = v61 + a8 - 1;
  v71.i64[1] = v61 + a8 - 2;
  v72.i64[0] = v61 + a8 + ((v66 + 7680) ^ 0xFFFFFFFFFFFFDD73);
  v72.i64[1] = v61 + a8 - 8;
  v73 = vandq_s8(v72, *&STACK[0x310]);
  v74 = vandq_s8(v71, *&STACK[0x310]);
  v75 = vandq_s8(v70, *&STACK[0x310]);
  v76 = vandq_s8(v69, *&STACK[0x310]);
  v77 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v78 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v79 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v80 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v256 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2E0], v80), *&STACK[0x2D0]), vorrq_s8(vaddq_s64(v80, *&STACK[0x300]), *&STACK[0x2F0]));
  v81 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2E0], v79), *&STACK[0x2D0]), vorrq_s8(vaddq_s64(v79, *&STACK[0x300]), *&STACK[0x2F0]));
  v82 = vsubq_s64(*&STACK[0x2A0], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2E0], v77), *&STACK[0x2D0]), vorrq_s8(vaddq_s64(v77, *&STACK[0x300]), *&STACK[0x2F0])));
  v83 = vsubq_s64(*&STACK[0x2A0], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2E0], v78), *&STACK[0x2D0]), vorrq_s8(vaddq_s64(v78, *&STACK[0x300]), *&STACK[0x2F0])));
  v84 = veorq_s8(v83, *&STACK[0x290]);
  v85 = veorq_s8(v82, *&STACK[0x290]);
  v86 = veorq_s8(v82, *&STACK[0x280]);
  v87 = veorq_s8(v83, *&STACK[0x280]);
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v86), *&STACK[0x270]);
  v89 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v87), *&STACK[0x270]);
  v90 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v87, 3uLL), v87, 0x3DuLL));
  v91 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v92 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v91);
  v94 = vaddq_s64(v92, v90);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v94, v94), *&STACK[0x260]), v94), *&STACK[0x250]), *&STACK[0x240]);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v93, v93), *&STACK[0x260]), v93), *&STACK[0x250]), *&STACK[0x240]);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v98 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v99 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v98);
  v101 = veorq_s8(vaddq_s64(v99, v97), *&STACK[0x230]);
  v102 = veorq_s8(v100, *&STACK[0x230]);
  v103 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v104 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v105 = veorq_s8(v101, v103);
  v106 = vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v105);
  v108 = veorq_s8(vaddq_s64(v106, v104), *&STACK[0x2C0]);
  v109 = veorq_s8(v107, *&STACK[0x2C0]);
  v110 = vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL);
  v111 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v112 = veorq_s8(v108, v110);
  v113 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v112);
  v115 = vaddq_s64(v113, v111);
  v116 = veorq_s8(v115, *&STACK[0x2B0]);
  v117 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v115, v64), *&STACK[0x220]), v116), vandq_s8(v116, v64));
  v118 = veorq_s8(v114, *&STACK[0x2B0]);
  v119 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v114, v64), *&STACK[0x220]), v118), vandq_s8(v118, v64)), *&STACK[0x210]);
  v120 = veorq_s8(v117, *&STACK[0x210]);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v122 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), *&STACK[0x200]);
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v122), *&STACK[0x200]);
  v125 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v126 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v127 = veorq_s8(v123, v125);
  v128 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v130.i64[0] = v61 + a8 - 11;
  v130.i64[1] = v61 + a8 - 12;
  v131 = vsubq_s64(*&STACK[0x2A0], v81);
  v261.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v129, v127), v65), vnegq_s64(vandq_s8(vshlq_n_s64(v69, 3uLL), a60)));
  v261.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v128, v126), v65), vnegq_s64(vandq_s8(vshlq_n_s64(v70, 3uLL), a60)));
  v132 = veorq_s8(v131, *&STACK[0x290]);
  v133 = veorq_s8(v131, *&STACK[0x280]);
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), *&STACK[0x270]);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v136, v136), *&STACK[0x260]), v136), *&STACK[0x250]), *&STACK[0x240]);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), *&STACK[0x230]);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), *&STACK[0x2C0]);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142);
  v144 = veorq_s8(v143, *&STACK[0x2B0]);
  v145 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v143, v64), *&STACK[0x220]), v144), vandq_s8(v144, v64)), *&STACK[0x210]);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v147 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), *&STACK[0x200]);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v149 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v147.i64[0] = v61 + a8 - 9;
  v147.i64[1] = v61 + a8 - 10;
  v150 = vaddq_s64(v149, v148);
  v151 = vandq_s8(v147, *&STACK[0x310]);
  v152 = vsubq_s64(*&STACK[0x2A0], v256);
  v261.val[0] = vshlq_u64(veorq_s8(v150, v65), vnegq_s64(vandq_s8(vshlq_n_s64(v71, 3uLL), a60)));
  v153 = veorq_s8(v152, *&STACK[0x290]);
  v154 = veorq_s8(v152, *&STACK[0x280]);
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154), *&STACK[0x270]);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v157 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156);
  v158 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v157, v157), *&STACK[0x260]), v157), *&STACK[0x250]), *&STACK[0x240]);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159), *&STACK[0x230]);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), *&STACK[0x2C0]);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(v164, *&STACK[0x2B0]);
  v166 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v164, v64), *&STACK[0x220]), v165), vandq_s8(v165, v64)), *&STACK[0x210]);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), *&STACK[0x200]);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v170 = vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL);
  v171 = vandq_s8(v130, *&STACK[0x310]);
  v172 = vaddq_s64(v170, v169);
  v173 = vandq_s8(v258, *&STACK[0x310]);
  v261.val[3] = vshlq_u64(veorq_s8(v172, v65), vnegq_s64(vandq_s8(vshlq_n_s64(v72, 3uLL), a60)));
  v174 = vandq_s8(v259, *&STACK[0x310]);
  v175 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v176 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v177 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v178 = vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL);
  v257 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2E0], v178), *&STACK[0x2D0]), vorrq_s8(vaddq_s64(v178, *&STACK[0x300]), *&STACK[0x2F0]));
  v179 = vsubq_s64(*&STACK[0x2A0], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2E0], v175), *&STACK[0x2D0]), vorrq_s8(vaddq_s64(v175, *&STACK[0x300]), *&STACK[0x2F0])));
  v180 = vsubq_s64(*&STACK[0x2A0], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2E0], v176), *&STACK[0x2D0]), vorrq_s8(vaddq_s64(v176, *&STACK[0x300]), *&STACK[0x2F0])));
  v261.val[1].i64[0] = vqtbl4q_s8(v261, a59).u64[0];
  v181 = veorq_s8(v180, *&STACK[0x290]);
  v182 = veorq_s8(v179, *&STACK[0x290]);
  v183 = veorq_s8(v179, *&STACK[0x280]);
  v184 = veorq_s8(v180, *&STACK[0x280]);
  v185 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183), *&STACK[0x270]);
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v184), *&STACK[0x270]);
  v187 = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v188 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v189 = veorq_s8(v185, v187);
  v190 = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v191 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v189);
  v192 = vaddq_s64(v190, v188);
  v193 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v192, v192), *&STACK[0x260]), v192), *&STACK[0x250]), *&STACK[0x240]);
  v194 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v191, v191), *&STACK[0x260]), v191), *&STACK[0x250]), *&STACK[0x240]);
  v195 = vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL);
  v196 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v197 = veorq_s8(v193, v195);
  v198 = vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL);
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL), v197);
  v200 = veorq_s8(vaddq_s64(v198, v196), *&STACK[0x230]);
  v201 = veorq_s8(v199, *&STACK[0x230]);
  v202 = vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL);
  v203 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL));
  v204 = veorq_s8(v200, v202);
  v205 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v206 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v204);
  v207 = veorq_s8(vaddq_s64(v205, v203), *&STACK[0x2C0]);
  v208 = veorq_s8(v206, *&STACK[0x2C0]);
  v209 = vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL);
  v210 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v211 = veorq_s8(v207, v209);
  v212 = vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL);
  v213 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL), v211);
  v214 = vaddq_s64(v212, v210);
  v215 = veorq_s8(v214, *&STACK[0x2B0]);
  v216 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v214, v64), *&STACK[0x220]), v215), vandq_s8(v215, v64));
  v217 = veorq_s8(v213, *&STACK[0x2B0]);
  v218 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v213, v64), *&STACK[0x220]), v217), vandq_s8(v217, v64)), *&STACK[0x210]);
  v219 = veorq_s8(v216, *&STACK[0x210]);
  v220 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v221 = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL));
  v222 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v220), *&STACK[0x200]);
  v223 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v221), *&STACK[0x200]);
  v224 = vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL);
  v225 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v226 = vsubq_s64(*&STACK[0x2A0], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x2E0], v177), *&STACK[0x2D0]), vorrq_s8(vaddq_s64(v177, *&STACK[0x300]), *&STACK[0x2F0])));
  v260.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), veorq_s8(v222, v224)), v65), vnegq_s64(vandq_s8(vshlq_n_s64(v259, 3uLL), a60)));
  v260.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v225), v65), vnegq_s64(vandq_s8(vshlq_n_s64(v258, 3uLL), a60)));
  v227 = veorq_s8(v226, *&STACK[0x290]);
  v228 = veorq_s8(v226, *&STACK[0x280]);
  v229 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), v228), *&STACK[0x270]);
  v230 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL));
  v231 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230);
  v232 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v231, v231), *&STACK[0x260]), v231), *&STACK[0x250]), *&STACK[0x240]);
  v233 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v234 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v233), *&STACK[0x230]);
  v235 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL));
  v236 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235), *&STACK[0x2C0]);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237);
  v239 = veorq_s8(v238, *&STACK[0x2B0]);
  v240 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v238, v64), *&STACK[0x220]), v239), vandq_s8(v239, v64)), *&STACK[0x210]);
  v241 = veorq_s8(v240, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL));
  v242 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), v241), *&STACK[0x200]);
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL)));
  v244 = vsubq_s64(*&STACK[0x2A0], v257);
  v260.val[1] = vshlq_u64(veorq_s8(v243, v65), vnegq_s64(vandq_s8(vshlq_n_s64(v130, 3uLL), a60)));
  v245 = veorq_s8(v244, *&STACK[0x290]);
  v261.val[0] = veorq_s8(v244, *&STACK[0x280]);
  v246 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL), v261.val[0]), *&STACK[0x270]);
  v261.val[0] = veorq_s8(v246, vsraq_n_u64(vshlq_n_s64(v261.val[0], 3uLL), v261.val[0], 0x3DuLL));
  v247 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v261.val[0]);
  v248 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v247, v247), *&STACK[0x260]), v247), *&STACK[0x250]), *&STACK[0x240]);
  v261.val[0] = veorq_s8(v248, vsraq_n_u64(vshlq_n_s64(v261.val[0], 3uLL), v261.val[0], 0x3DuLL));
  v249 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v261.val[0]), *&STACK[0x230]);
  v261.val[0] = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v261.val[0], 3uLL), v261.val[0], 0x3DuLL));
  v250 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), v261.val[0]), *&STACK[0x2C0]);
  v261.val[0] = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v261.val[0], 3uLL), v261.val[0], 0x3DuLL));
  v251 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), v261.val[0]);
  v252 = veorq_s8(v251, *&STACK[0x2B0]);
  v253 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v251, v64), *&STACK[0x220]), v252), vandq_s8(v252, v64)), *&STACK[0x210]);
  v261.val[0] = veorq_s8(v253, vsraq_n_u64(vshlq_n_s64(v261.val[0], 3uLL), v261.val[0], 0x3DuLL));
  v254 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL), v261.val[0]), *&STACK[0x200]);
  v260.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL), veorq_s8(v254, vsraq_n_u64(vshlq_n_s64(v261.val[0], 3uLL), v261.val[0], 0x3DuLL))), v65), vnegq_s64(vandq_s8(vshlq_n_s64(v147, 3uLL), a60)));
  v261.val[1].i64[1] = vqtbl4q_s8(v260, a59).u64[0];
  v260.val[0] = vrev64q_s8(v261.val[1]);
  *v67 = veorq_s8(vextq_s8(v260.val[0], v260.val[0], 8uLL), *(v61 + a8 - 16));
  return (*(v63 + 8 * ((3640 * ((a8 & 0xFFFFFFF0) == 16)) ^ v66)))(a1, 3640, 16 - (a8 & 0xFFFFFFF0), a4, a5, v66, v67, 0, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59.i64[0], a59.i64[1], a60.i64[0], a60.i64[1]);
}