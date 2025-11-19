uint64_t sub_10015C580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
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

uint64_t sub_10015C680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 ^ 0x617u) - 2925) ^ v3) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((206 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_10015C798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, char *a16)
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

uint64_t sub_10015C990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char a13, uint64_t a14, uint64_t a15, int a16, char a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, char *a23)
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

uint64_t sub_10015CCF4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned int a7@<W6>, int a8@<W7>, unsigned int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
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

uint64_t sub_10015CEB0(int8x16_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t sub_10015CEC0()
{
  v2 = *(STACK[0x4F0] + 24);
  STACK[0x430] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 + 1189) ^ v0 ^ 0x1BD9 ^ 0x1F3E)) ^ v0)))();
}

uint64_t sub_10015CF0C()
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

uint64_t sub_10015D274@<X0>(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  return sub_100234644();
}

uint64_t sub_10015D298(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, char a5)
{
  v9 = a4 - 1;
  *v6 = *a3 ^ *(v7 + (v9 & 0xF)) ^ *((v9 & 0xF) + a1 + 3) ^ ((v9 & 0xF) * a5) ^ *(a2 + (v9 & 0xF)) ^ 0x3C;
  return (*(v8 + 8 * (((v9 == 0) | (2 * (v9 == 0))) ^ v5)))();
}

uint64_t sub_10015D2A0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10015D43C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = (*(v6 + 8 * (v4 ^ 0x3473)))();
  *(v5 + 24) = 0;
  return sub_1000DEDD4(v8, v9, v10, a4);
}

uint64_t sub_10015D4B8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, unint64_t a9@<X8>)
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
  *&STACK[0x3A0] = xmmword_1002BF670;
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

uint64_t sub_10015DB50()
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
  v11.i64[0] = vqtbl4q_s8(v13, xmmword_1002BF690).u64[0];
  v11.i64[1] = vqtbl4q_s8(v14, xmmword_1002BF690).u64[0];
  v14.val[0] = vrev64q_s8(veorq_s8(veorq_s8(*(v6 - 15 + v10), *(v1 + v13.val[0].i64[0] - 15)), veorq_s8(*(v13.val[0].i64[0] + v0 - 14), *(v2 + v13.val[0].i64[0] - 15))));
  v14.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v14.val[0], v14.val[0], 8uLL), v9), vmulq_s8(v11, v8)));
  *(v6 - 15 + v10) = vextq_s8(v14.val[0], v14.val[0], 8uLL);
  return (*(v7 + 8 * ((14263 * ((v3 & 0x10) == 16)) ^ v4)))(v13.val[0].i64[1]);
}

uint64_t sub_10015DCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
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

void sub_10015DDAC(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  LODWORD(STACK[0x794]) = 16257999;
  JUMPOUT(0x100112C20);
}

uint64_t sub_10015DDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, unsigned int a23)
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

uint64_t sub_10015DEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
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

uint64_t sub_10015DF68()
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

uint64_t sub_10015E15C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = (a1 ^ v64) + a25;
  STACK[0x968] = v66;
  return (*(v65 + 8 * ((a64 + 2756) ^ ((v66 > a21) | (32 * (v66 > a21))))))();
}

uint64_t sub_10015E1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  LODWORD(STACK[0x4FC]) = a6;
  LODWORD(STACK[0x500]) = v31;
  LODWORD(STACK[0x504]) = a3;
  LODWORD(STACK[0x524]) = a8;
  LODWORD(STACK[0x4C8]) = 0;
  STACK[0x570] = (v32 - 1587);
  return (*(v34 + 8 * ((((v32 + 19) ^ 0x1C79) * (v33 < 0x40)) ^ v32)))(a1, a2, a3, a4, v34, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_10015E25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, uint64_t a21, int a22)
{
  a20 = v24 - ((2 * v24) & 0x39AD4E2AD03EC198) + ((v26 - 1895629830) & 0x7CFBCF) - 0x632958EA97E0A803 + 956911519 * ((((2 * v25) | 0x13323379957FC4D4) - v25 - 0x99919BCCABFE26ALL) ^ 0x4CAF6C60202E926FLL);
  a21 = a16;
  a19 = (v26 - 3335) ^ (956911519 * ((((2 * v25) | 0x957FC4D4) - v25 + 893394326) ^ 0x202E926F));
  v27 = (*(v22 + 8 * (v26 + 5242)))(&a19);
  return (*(v22 + 8 * ((13230 * (a22 == v23)) ^ v26)))(v27);
}

uint64_t sub_10015E388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  a12 = 476323082 - 1710126949 * (((&a12 | 0x3606E2C9) + (~&a12 | 0xC9F91D36)) ^ 0x41DB958);
  v15 = (*(v13 + 77088))(&a12);
  return (*(v13 + 8 * ((7761 * (a13 == 16257999)) ^ v14)))(v15);
}

uint64_t sub_10015E494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, char *a16)
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

uint64_t sub_10015E5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8 * (v5 ^ 0x2DEA)))(STACK[0x3C0]);
  v6 = STACK[0x3E8];
  *v4 = 0;
  return (STACK[0x480])(4294959990, 3958, LODWORD(STACK[0x3D0]), v6, 5618, 1062104474, 3232865901, 5206);
}

uint64_t sub_10015E678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53)
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

uint64_t sub_10015E6F4(uint64_t a1)
{
  v3 = STACK[0x32C];
  LODWORD(STACK[0x47C]) = STACK[0x2E0];
  LODWORD(STACK[0x754]) = STACK[0x2F0];
  LODWORD(STACK[0x6C4]) = STACK[0x300];
  LODWORD(STACK[0x3D4]) = v1;
  return (*(v2 + 8 * (((v3 - 5482 + v3 - 3295 - 2285) * (a1 == 0)) ^ (v3 - 3028))))();
}

uint64_t sub_10015E750()
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

uint64_t sub_10015E840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t sub_10015E848@<X0>(int a1@<W8>)
{
  v3 = *(v1 + 8);
  STACK[0x5D8] = v3;
  return (*(v2 + 8 * ((2040 * (((v3 == 0) ^ (a1 + 115)) & 1)) ^ (a1 + 423))))();
}

void sub_10015EA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  *a8 = v8;
  *v9 = v10;
  JUMPOUT(0x1000EBDA0);
}

uint64_t sub_10015EA28@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v4 = a2 ^ 0x1826;
  v5 = (*(v3 + 8 * ((a2 ^ 0x1826) + 6464)))(a1, 1159995220);
  *v2 = v5;
  return (*(v3 + 8 * (((v5 == 0) * (v4 - 4974 + ((v4 - 405454051) & 0x182AB797))) ^ v4)))();
}

uint64_t sub_10015EA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char *a15, int a16, unsigned int a17, int a18)
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

uint64_t sub_10015EC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
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

uint64_t sub_10015ECBC@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 - 7489) | 0x2B7;
  (*(v2 + 8 * (v1 + 1795)))(a1);
  *(STACK[0x878] + 24) = 0;
  (*(v2 + 8 * (v3 ^ 0x2673)))();
  STACK[0x878] = 0;
  return sub_1001BAB5C();
}

uint64_t sub_10015ED5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, unsigned int a19)
{
  a18 = a15;
  a19 = (v20 + 4769) ^ (1824088897 * (((&a17 | 0x9039FFCF) - (&a17 & 0x9039FFCF)) ^ 0xC8502CAD));
  v21 = (*(v19 + 8 * (v20 ^ 0x2875)))(&a17);
  return sub_1001748B4(v21);
}

uint64_t sub_10015ED68(uint64_t a1)
{
  v6 = v4 - 1;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * ((1502 * (v6 == ((v3 + 1319743155) & 0xCEA475A7) - 1187)) ^ (v3 + v2))))();
}

uint64_t sub_10015EDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
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

uint64_t sub_10015F2C8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char a7@<W7>, uint64_t a8@<X8>)
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
  *&STACK[0x3D0] = xmmword_1002BF670;
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

uint64_t sub_10015F8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, int a18)
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

uint64_t sub_10015F960()
{
  STACK[0x4B0] = 0;
  v3 = STACK[0x65C];
  v4 = (v1 + 2083931563) & 0x83C9B6AE;
  STACK[0x450] = STACK[0x4B0];
  STACK[0x640] += (v4 - 873) ^ 0xFFFFFFFFFFFFFCDBLL;
  return (*(v2 + 8 * ((5523 * (v3 == v0)) ^ v4)))();
}

uint64_t sub_10015F9CC(uint64_t a1)
{
  STACK[0x640] = v2;
  LODWORD(STACK[0x824]) = 16215976;
  STACK[0x510] = *(v3 + 8 * (v1 - 1835));
  STACK[0x3B0] = &STACK[0x4C8];
  v4 = STACK[0x4C8];
  STACK[0x480] = STACK[0x4C8];
  return (*(v3 + 8 * (((v4 != 0) * ((6 * (v1 ^ 0xBFD)) ^ 0xDAA)) ^ v1 ^ 0x9EA)))(a1, 16215976);
}

uint64_t sub_10015FA54()
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
      JUMPOUT(0x10015FA0CLL);
    }

    return (*(v2 + 8 * ((((*(STACK[0x888] + 8) == 0) ^ ((v1 ^ 0x84) + 115)) & 1 | (2 * (((*(STACK[0x888] + 8) == 0) ^ ((v1 ^ 0x84) + 115)) & 1))) ^ (v1 + 4855))))();
  }
}

uint64_t sub_10015FB50()
{
  v2 = *(STACK[0x5B0] + 24);
  STACK[0x850] = v2;
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 - 1)) & 1) * (((v0 - 79381800) & 0x4BB2A4B) - 2533)) ^ v0)))();
}

uint64_t sub_10015FBE8(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v9 = ((2 * (a6 + 1593)) & 0xEFCFDDEE) + ((a6 + 1593) ^ 0xF7E7EEF7) + 135794953;
  v10 = ((*(v8 + v9) ^ 0x3C) << 24) | ((*(v8 + v9 + 1) ^ 0x3C) << 16) | ((*(v8 + v9 + 2) ^ 0x3C) << 8);
  v11 = *(v8 + v9 + 3) ^ 0x3C;
  return (*(v6 + 8 * ((63 * ((a4 & 0x40000000) != (((a3 ^ 0xB0D) + 2959) ^ 0x3792) - 5495)) ^ a3 ^ 0xB0Du)))(a1, (v10 | v11) - 2 * ((v10 | v11) & a5 ^ v11 & 8u) + v7);
}

uint64_t sub_10015FCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, int a15, uint64_t a16)
{
  v20 = 1875091903 * (((&a13 | 0x134A43CD) - (&a13 & 0x134A43CD)) ^ 0x253FC04E);
  a16 = a12;
  a14 = (v16 ^ 0xFDDFFEFE) + ((v19 ^ 0xFBBFE724) & (2 * v16)) + 574404524 + v20;
  a15 = v20 + v19 + 851;
  v21 = (*(v17 + 8 * (v19 ^ 0x3F74)))(&a13);
  return (*(v17 + 8 * ((14781 * (a13 == v18)) ^ v19)))(v21);
}

uint64_t sub_10015FE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t *a15, unsigned int a16, unsigned int a17)
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

uint64_t sub_10015FED4(uint64_t a1)
{
  if (!(*(v2 + 8 * (v3 + 7653)))(a1, 0))
  {
    *v1 = a1;
    JUMPOUT(0x10015FF44);
  }

  return sub_10015FF2C();
}

uint64_t sub_10015FF2C()
{
  result = (*(v3 + 8 * (v2 + 7510)))();
  *v0 = v1;
  return result;
}

uint64_t sub_10015FF60@<X0>(uint64_t a1@<X0>, char a2@<W4>, int a3@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7) ^ 0x3C;
  return (*(v6 + 8 * ((35 * (((v5 ^ (a2 - 120)) ^ (v7 == 0)) & 1)) ^ (a3 + v5 + 1677))))();
}

uint64_t sub_10016002C@<X0>(int a1@<W8>)
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
  *&STACK[0x250] = xmmword_1002BF6F0;
  *&STACK[0x260] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x3A0] = xmmword_1002BF690;
  return sub_10026132C(0x97AFA7879053DDDBLL, 0x9DF2A9C1DA7C902ELL, &off_100315F70, 0x1FDE97FF2C27FFF6, 0x297302C53C357F1BLL, (a1 - 1899722987) & 0x713B7B7F);
}

uint64_t sub_100160390()
{
  v4 = (*(v1 + 8 * (v3 + 6131)))(*v2, *(v0 + 8 * (v3 ^ 0xD1B)));
  **(v0 + 8 * (v3 ^ 0xD81)) = v4;
  return (*(v1 + 8 * (((v4 == 0) * (v3 + 3802 + 2664 * (v3 ^ 0xDC6) - 15295)) | v3)))();
}

uint64_t sub_100160408@<X0>(int a1@<W2>, int a2@<W8>)
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
  return sub_1001F5364(0x3D2CC4E5C304AE09, 0x3D956106EF62582ELL, a1);
}

uint64_t sub_100160F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  v58 = ((((v57 - 15) | 0x24) ^ 0xE) + v56) & 0xF;
  LODWORD(STACK[0x62C]) = 1481390202 - v58;
  return (*(a4 + 8 * ((43 * ((16 - v58) + v56 >= 0xFFFFFFF6)) ^ v57)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_100160F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = (((v3 + v5 + 2490) | 0x604u) ^ 0xFFFFFFFFFFFFF021) + v4;
  v8 = *(a2 + v7 - 15);
  v9 = *(a2 + v7 - 31);
  v10 = a1 + v7;
  *(v10 - 15) = v8;
  *(v10 - 31) = v9;
  return (*(v6 + 8 * ((1766 * ((v4 & 0xFFFFFFE0) == 32)) ^ (v5 + v2))))();
}

uint64_t sub_100160FF8@<X0>(int a1@<W4>, uint64_t a2@<X6>, uint64_t a3@<X7>, unint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
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

_BYTE *sub_100161000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, int a6, int a7, __int16 a8)
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

void sub_1001611A8()
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
  JUMPOUT(0x1001415C0);
}

uint64_t sub_1001611C8@<X0>(uint64_t a1@<X8>)
{
  STACK[0x830] = 0;
  STACK[0x8B8] = 0;
  STACK[0x540] = *(v2 + 8 * v1);
  return sub_1001E509C(a1);
}

uint64_t sub_1001612F4(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, char a45, uint64_t a46, uint64_t a47, unsigned int a48, uint64_t a49, uint64_t a50, uint64_t a51)
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
  v79 = *(&off_100315F70 + v60 - 744420119) - 4;
  v80 = *&v79[8 * (v68 ^ 0x81)] ^ ((v68 ^ 0xDA) - 62);
  LODWORD(v63) = (v80 & 0x4D ^ 0xFFFFFF87) & (v80 & 0xB2 ^ 0xDF) | v80 & 0x30;
  v81 = v66 ^ v64 ^ v67 ^ ((v66 ^ 0xFFFFFFDE) - 62) ^ v77 ^ ((v67 ^ 0xFFFFFFDF) - 62) ^ v73 ^ ((v77 ^ 0xFFFFFFDF) - 62) ^ v70 ^ ((v73 ^ 0xFFFFFFDD) - 62) ^ v72 ^ v65 ^ ((v70 ^ 0xFFFFFFD9) - 62) ^ ((v65 ^ 0xFFFFFFDC) - 62);
  v82 = v68 ^ ((v72 ^ 0xFFFFFFDE) - 62) ^ v69 ^ v85 ^ ((v69 ^ 0xFFFFFFDB) - 62) ^ v74 ^ ((v85 ^ 0xFFFFFFD8) - 62) ^ ((v74 ^ 0xFFFFFFD9) - 62) ^ v71 ^ ((v71 ^ 0xFFFFFFDC) - 62);
  v83 = v81 ^ v82 ^ v76 ^ ((v76 ^ 0xFFFFFFDA) - 62) ^ v78 ^ ((v75 ^ 0xFFFFFFD8) - 62) ^ ((v78 ^ 0xFFFFFFDB) - 62) ^ *&v79[8 * (v66 ^ 0x185)] ^ *&v79[8 * (v65 ^ 0x87)] ^ *&v79[8 * (v64 ^ 0x86)] ^ ((v64 ^ 0xFFFFFFDD) + 194) ^ *&v79[8 * (v67 ^ 0x84)] ^ *&v79[8 * (v85 ^ 0x83)] ^ *&v79[8 * (v70 ^ 0x82)] ^ *&v79[8 * (v69 ^ 0x180)] ^ *&v79[8 * (v71 ^ 0x187)] ^ *&v79[8 * (v73 ^ 0x186)] ^ *&v79[8 * (v72 ^ 0x185)] ^ *&v79[8 * (v77 ^ 0x84)] ^ v63 ^ *&v79[8 * (v75 ^ 0x183)] ^ *&v79[8 * (v74 ^ 0x182)] ^ *&v79[8 * (v76 ^ 0x181)] ^ *&v79[8 * (v78 ^ 0x80)];
  return (*(a51 + 8 * ((43 * (a45 & 1)) ^ (v60 - 744415768))))(v70, a2, v64, 132, v83 ^ v75 ^ 0xFFFFFF87, 4294967256, v76, 4294967260, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v85, a29, a30, a31, a32, *(*(&off_100315F70 + (v60 ^ 0x2C5EF42E)) + ((v83 ^ v75) ^ 0xE0) - 8), v66, v68, v69, v77, v73, v74, v71);
}

uint64_t sub_100161840()
{
  STACK[0x8B8] = STACK[0x790];
  LODWORD(STACK[0x61C]) = 16257999;
  return (*(v1 + 8 * (((((v0 ^ 0x14FC) + 5268) ^ 0x11C3) + 208) ^ v0 ^ 0x14FC ^ (999 * (STACK[0x668] == 0)))))();
}

uint64_t sub_100161900@<X0>(int a1@<W8>)
{
  v2 = 1382 * (a1 ^ 0x1D64);
  v3 = *(v1 + 8);
  STACK[0x8F8] = 0;
  STACK[0x5E8] = 0;
  return (*(STACK[0x400] + 8 * (((v3 != 0) * (((v2 ^ 0x3412) - 8385) ^ 0x30B)) ^ v2)))();
}

uint64_t sub_1001619DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, int a14, uint64_t a15, uint64_t a16)
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

uint64_t sub_100161B74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a1 = 0;
  a1[1] = 0;
  return sub_10024E988(v64 + 2280, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63, a64);
}

uint64_t sub_100161D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(STACK[0x830] + 24);
  STACK[0x708] = v5;
  return (*(v4 + 8 * ((253 * ((((v3 + 4747) ^ (v5 == 0)) & 1) == 0)) ^ v3)))(a1, a2, a3, 16215976);
}

uint64_t sub_100161D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, unsigned int a13, int a14, uint64_t a15, uint64_t a16)
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

uint64_t sub_100161FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 359 * (STACK[0x3F8] ^ 0x2437);
  v4 = STACK[0x3F8] - 8008;
  v5 = LOWORD(STACK[0xA3E]);
  STACK[0x898] = STACK[0xA40];
  return (*(STACK[0x400] + 8 * (((v5 == 17168) * (v3 ^ 0x282A)) ^ v4)))(a1, a2, a3, 16215638);
}

uint64_t sub_100162034@<X0>(uint64_t a1@<X3>, int a2@<W8>)
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

uint64_t sub_1001622A0@<X0>(int a1@<W8>, uint64_t a2, int a3, char a4, uint64_t a5, char a6, __int16 a7, char a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13, char *a14, unsigned int a15, uint64_t *a16)
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

void sub_100162494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53)
{
  LODWORD(STACK[0xB14]) = a53;
  STACK[0x740] += (113 * (v53 ^ 0x48Cu)) ^ 0xFFFFFFFFFFFFFF02;
  JUMPOUT(0x1001624C0);
}

uint64_t sub_100162534@<X0>(uint64_t a1@<X0>, int a2@<W8>)
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

uint64_t sub_1001626AC()
{
  v5 = v2 + 776 * v1;
  *(v4 + v5 % 0x3C9) = v1 - ((2 * v1) & 0x18) - 67;
  *(v4 + (v5 + 776) % 0x3C9) = v1 - ((v1 << (v0 - 5)) & 0x18) - 68;
  return (*(v3 + 8 * ((28 * (v1 == 14)) ^ v0)))();
}

uint64_t sub_1001627F8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v6 = STACK[0x930];
  LODWORD(STACK[0x57C]) = a4;
  return (*(v5 + 8 * (((16 * (((v6 == 0) ^ (v4 - 76)) & 1)) & 0xBF | ((((v6 == 0) ^ (v4 - 76)) & 1) << 6)) ^ v4)))();
}

uint64_t sub_1001628A4@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 2741));

  return v3(v1);
}

uint64_t sub_100164620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
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
  return sub_1001A3D8C(0xF99C96608AFF80DELL, 0x6FEAED2DD55A32A7, 0xC3E67D93F2F32D7, v72, 0x1D5EE00E4A8A2CA0, 0x84D53DF2213B4FA4, 0xF29EBFF9FEFFF1C0, 0xF1508FF8DABAE9B0, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, ((v73 + 10) ^ 0xEF3EBFFBFBFFF1FBLL) + 0x72CFFFBDFCFBFF3ELL + ((2 * (v73 + 10)) & 0xDE7D7FF7F7FFE3F6), ((v68 + 10) ^ 0x738EBFBBF8FBFFFDLL) - 0x1180000200000EC4 + ((2 * (v68 + 10)) & 0xE71D7F77F1F7FFFALL), v77, ((v63 + 10) ^ 0xE3AEBFFBF9FFFF7BLL) + 0x7E5FFFBDFEFBF1BELL + ((2 * (v63 + 10)) & 0xC75D7FF7F3FFFEF6), v78, v79, v74, v80, v73 + 10, v68 + 10, a34, v81, a36, v82, a38, v83, a40, ((v72 + 6) ^ 0xEA2FFFBBFAFFFB7BLL) + 0x77DEBFFDFDFBF5BELL + ((2 * (v72 + 6)) & 0xD45FFF77F5FFF6F6), a42, ((v71 + 6) ^ 0xFE1EBFBFF9FFFDFDLL) + 0x63EFFFF9FEFBF33CLL + ((2 * (v71 + 6)) & 0xFC3D7F7FF3FFFBFALL), a44, ((v70 + 6) ^ 0x7B5EFFBFFEFFFB79) - 0x1950400606040A40 + ((2 * (v70 + 6)) & 0xF6BDFF7FFDFFF6F2), a46, ((v68 + 6) ^ 0x6EDFBFBDF9FBF93FLL) - 0xCD1000401000806 + ((2 * (v68 + 6)) & 0xDDBF7F7BF3F7F27ELL), a48, v84, a50, a51, a52, ((v69 + 6) ^ 0xFA7EFFB9FDFBF33FLL) + 0x678FBFFFFAFFFDFALL + ((2 * (v69 + 6)) & 0xF4FDFF73FBF7E67ELL), a54, ((v66 + 6) ^ 0xEB7EBFFDFFFFF3B9) + 0x768FFFBBF8FBFD80 + ((2 * (v66 + 6)) & 0xD6FD7FFBFFFFE772), a56, ((v65 + 6) ^ 0xEA7FFFB9FEFBFBFFLL) + 0x778EBFFFF9FFF53ALL + ((2 * (v65 + 6)) & 0xD4FFFF73FDF7F7FELL), a58, ((v64 + 6) ^ 0x6F6FFFBFF9FBFF79) - 0xD61400601000E40 + ((2 * (v64 + 6)) & 0xDEDFFF7FF3F7FEF2), a60, ((v63 + 6) ^ 0xF22FFFFDFEFFFFBDLL) + 0x6FDEBFBBF9FBF17CLL + ((2 * (v63 + 6)) & 0xE45FFFFBFDFFFF7ALL), a62, ((v62 + 6) ^ 0x6B1EBFB9FDFFFF79) - 0x910000005040E40 + ((2 * (v62 + 6)) & 0xD63D7F73FBFFFEF2));
}

uint64_t sub_100164668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFE0FDLL ^ (v4 + 2856)) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((2012 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_100164740(uint64_t a1, uint64_t a2, unint64_t a3)
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

uint64_t sub_100164810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, unsigned int a25, unsigned int a26, uint64_t a27)
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

uint64_t sub_100164A60()
{
  STACK[0x778] = *(v2 + 8 * (v0 - 5989));
  LODWORD(STACK[0x3B0]) = v1 + 1337958196;
  return (*(v2 + 8 * (((&STACK[0x450] == 0) * (((v0 - 2114) ^ 0xFFFFE71F) + ((v0 - 1296) ^ 0x570))) ^ (v0 - 1296))))();
}

uint64_t sub_100164AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t a25)
{
  v26 = STACK[0x32C];
  v27 = (v25 ^ 0xBC59953u) + STACK[0x200];
  STACK[0x8E8] = v27;
  return (*(STACK[0x330] + 8 * ((v26 + 991) ^ (1023 * (v27 <= a25)))))();
}

uint64_t sub_100164B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (v3 - 559435066) & 0x21584D2F;
  v6 = ((v5 + 2458) ^ 0xFFFFFFFFFFFFF23DLL) + v2;
  *(a1 + v6) = *(a2 + v6);
  return (*(v4 + 8 * ((26 * (v6 != 0)) ^ v5)))();
}

uint64_t sub_100164B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  a11 = (v12 - 1451033324) ^ (((&a10 + 1704693950 - 2 * (&a10 & 0x659B90BE)) ^ 0x8F0AE0BB) * v14);
  v15 = (*(v11 + 8 * (v12 + 8420)))(&a10);
  return (*(v11 + 8 * (((a10 == v13 + 1211) * ((v12 + 660211099) ^ 0x275A1906)) ^ v12)))(v15);
}

uint64_t sub_100164C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22, __int16 a23, char a24, uint64_t a25, char *a26, unsigned int a27, char *a28)
{
  a28 = &a17;
  a27 = (v28 + 2226) ^ (1710126949 * (((&a24 | 0xD2F14347) + (~&a24 | 0x2D0EBCB8)) ^ 0xE0EA18D6));
  a25 = a20;
  a26 = &a22;
  v31 = (*(v30 + 8 * (v28 + 8475)))(&a24);
  return (*(v30 + 8 * (((362 * (v28 ^ 0x443) - 794) * (a13 == v29)) ^ v28)))(v31);
}

uint64_t sub_100164CDC()
{
  v2 = *STACK[0x348];
  STACK[0x410] = 0;
  STACK[0x370] = 0;
  return (*(v1 + 8 * (((v2 == 0) * (((14 * (v0 ^ 0xB0F)) ^ 0x1540) - 5581)) | v0)))();
}

void sub_100164DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int *a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v42 = 4 * (v41 + v40);
  v43 = ((*(*a35 + (*a34 & 0xFFFFFFFFB0D1339CLL)) ^ (a38 + v42)) & 0x7FFFFFFF) * ((v39 + 1232698310) ^ 0xD196A294);
  v44 = v43 ^ HIWORD(v43);
  v45 = -778651209 * v44;
  *(a39 + v42) ^= *(a38 + v42) ^ (v39 + 1232691366) & 0x84765BF1 ^ ((((v39 + 1232691366) ^ v40) & v40) >> (__clz((v39 + 1232691366) ^ v40 | 1) ^ 0x1F)) & 1 ^ *(*(&off_100315F70 + (v39 ^ (v39 + 7))) + HIBYTE(v45)) ^ *(*(&off_100315F70 + (v39 ^ (v39 - 232))) + HIBYTE(v45) - 1) ^ *(*(&off_100315F70 + (v39 ^ (v39 + 124))) + HIBYTE(v45) - 1) ^ (-1179189248 * v44) ^ v45 ^ (1946347563 * HIBYTE(v45)) ^ 1;
  JUMPOUT(0x100164F0CLL);
}

uint64_t sub_100164F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, __int16 a14, char a15, uint64_t a16, uint64_t a17, int a18, char a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, char *a25)
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

uint64_t sub_1001650DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, _DWORD *a39)
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
  return sub_100165274(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_100165274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
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

uint64_t sub_100165330@<X0>(int a1@<W8>)
{
  result = (*(v1 + 8 * (a1 + 1926)))();
  *v2 = 16257999;
  return result;
}

uint64_t sub_10016534C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, int a17, unsigned int a18)
{
  a16 = &a11;
  a18 = 1317436891 * (((&a16 | 0xD9450F49) - &a16 + (&a16 & 0x26BAF0B0)) ^ 0x6946973F) + 8154;
  v21 = (*(v18 + 77096))(&a16);
  return (*(v18 + 8 * ((202 * (a17 == ((v20 + 3086) ^ 0xC12))) ^ v19)))(v21);
}

uint64_t sub_100165444()
{
  v4 = v0 + 3088;
  *(v2 - 224) = (v0 - 2140802270) ^ (914963389 * ((v2 - 232) ^ 0x2CFCB17B));
  v5 = (*(v3 + 8 * ((v0 + 3088) ^ 0x186)))(v2 - 232);
  v6 = STACK[0x400];
  *v1 = *(v2 - 232) ^ 0xAC;
  return (*(v6 + 8 * ((v4 - 7353) ^ 0xA0)))(v5);
}

uint64_t sub_1001654EC(uint64_t a1, _BYTE *a2, uint64_t a3, char a4)
{
  v9 = a3 - 1;
  *v8 = *a2 ^ *(v5 + (v9 & 0xF)) ^ *((v9 & 0xF) + v6 + 3) ^ ((v9 & 0xF) * ((v4 - 6) ^ a4)) ^ *(v7 + (v9 & 0xF)) ^ 0x3C;
  return (*(STACK[0x3E8] + 8 * ((60 * (v9 == 0)) ^ v4)))(a1, a2 - 1);
}

uint64_t sub_10016553C(uint64_t a1, uint64_t a2, int a3)
{
  v7 = (a1 - 32);
  v8 = (a2 - 32);
  v9 = *v8;
  *(v7 - 1) = *(v8 - 1);
  *v7 = v9;
  return (*(v6 + 8 * (((v5 == 32) * a3) ^ (v3 + v4 + 2126))))();
}

uint64_t sub_1001656CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

uint64_t sub_10016578C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, int a15)
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

uint64_t sub_1001659C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, unsigned int a18, uint64_t a19)
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

void sub_100165CBC()
{
  STACK[0x640] = 0;
  STACK[0x928] = 0;
  STACK[0x908] = *(v1 + 8 * v0);
  JUMPOUT(0x1000C0B00);
}

uint64_t sub_100165DAC(int8x16_t a1, int8x8_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, uint64_t a6, int a7, int a8)
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

uint64_t sub_100165DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = 476323082 - 1710126949 * ((&a15 & 0xB2B2B37D | ~(&a15 | 0xB2B2B37D)) ^ 0x7F561712);
  v17 = (*(v16 + 77088))(&a15);
  return (*(v16 + 8 * ((11745 * (a16 == 16257999)) ^ 0x932u)))(v17);
}

uint64_t sub_100165F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  a17 = 476323082 - 1710126949 * ((&a17 - 441025859 - 2 * (&a17 & 0xE5B67ABD)) ^ 0xD7AD212D);
  v19 = (*(v18 + 77088))(&a17);
  return (*(v18 + 8 * ((5225 * (a18 == 16257999)) ^ 0x9EEu)))(v19);
}

uint64_t sub_100166050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
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

uint64_t sub_100166110@<X0>(int a1@<W8>)
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

uint64_t sub_10016625C()
{
  v0 = *(&off_100315F70 + (byte_1002B0520[byte_1002A5EB0[(-85 * (dword_100330F98 ^ 0xDF ^ dword_100330E70))] ^ 0xAD] ^ (-85 * (dword_100330F98 ^ 0xDF ^ dword_100330E70))) + 219);
  v1 = -85 * (*v0 ^ dword_100330E70 ^ 0xDF);
  v2 = *(&off_100315F70 + (byte_1002A5FBC[(byte_1002BF56C[v1 - 12] ^ 0x1F) - 12] ^ v1) + 113);
  v3 = &v5[*v2 ^ *v0];
  *v0 = 2054362027 * (v3 - 0xB4207763EF64BDFLL);
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v8 = 4383 - 33731311 * ((2 * (v6 & 0x25576FD0) - v6 + 1520996398) ^ 0x635E5A0D);
  v7 = *(&off_100315F70 + ((-85 * (*v0 ^ 0xDF ^ *v2)) ^ byte_1002B0520[byte_1002A5EB0[(-85 * (*v0 ^ 0xDF ^ *v2))] ^ 0xAD]) + 154);
  return (*(*(&off_100315F70 + ((-85 * ((dword_100330E70 + dword_100330F98) ^ 0xDF)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * ((dword_100330E70 + dword_100330F98) ^ 0xDF))] ^ 0xE9]) + 135) + (byte_1002B7308[(byte_1002B0420[(-85 * ((*v2 + *v0) ^ 0xDF))] ^ 0x2A) - 8] ^ (-85 * ((*v2 + *v0) ^ 0xDF))) + 9388))(v6);
}

uint64_t sub_1001664F4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 42;
  v4 = (*(v2 + 8 * (v1 + 620)))(42, 0x100004077774924);
  *(a1 + 24) = v4;
  return (*(v2 + 8 * (((((v1 - 1) ^ (v4 == 0)) & 1) * (((v1 - 7475) | 0x11C0) ^ 0x17B3)) ^ v1)))();
}

uint64_t sub_100166584()
{
  STACK[0x880] = 0;
  *STACK[0x8E8] = STACK[0x880];
  return (STACK[0x7B8])();
}

uint64_t sub_1001665C8(uint64_t a1)
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

void sub_100166650()
{
  v0 = *(&off_100315F70 + ((-85 * ((dword_100330E70 - dword_100330FC8) ^ 0xDF)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * ((dword_100330E70 - dword_100330FC8) ^ 0xDF))] ^ 0xD9]) - 45);
  v1 = *(v0 - 4);
  v2 = *(&off_100315F70 + (byte_1002B052C[(byte_1002A5EB4[(-85 * ((dword_100330E70 - v1) ^ 0xDF)) - 4] ^ 0xAD) - 12] ^ (-85 * ((dword_100330E70 - v1) ^ 0xDF))) + 199);
  v3 = (*v2 ^ v1) - &v5;
  *(v0 - 4) = 2054362027 * v3 - 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * (((v6 | 0x80924CC6) - v6 + (v6 & 0x7F6DB338)) ^ 0xB2891756);
  LOBYTE(v2) = -85 * ((*v2 + *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_100315F70 + ((-85 * ((dword_100330E70 - dword_100330FC8) ^ 0xDF)) ^ byte_1002B7200[byte_1002B0320[(-85 * ((dword_100330E70 - dword_100330FC8) ^ 0xDF))] ^ 0xBF]) + 64) - 8;
  (*&v4[8 * (byte_1002B7208[(byte_1002B0328[v2 - 8] ^ 0x6D) - 8] ^ v2) + 76952])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001668B0()
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

uint64_t sub_1001669C8()
{
  *(v3 - 224) = (v0 - 2140802201) ^ (914963389 * ((((v3 - 232) | 0x982DAA51) + (~(v3 - 232) | 0x67D255AE)) ^ 0xB4D11B2B));
  v4 = (*(v2 + 8 * (v0 + 3547)))(v3 - 232);
  *(v1 + 24) = *(v3 - 232) ^ 0xAC;
  return (*(v2 + 8 * ((v0 + 2664) ^ 0x227E ^ (v0 - 5057))))(v4);
}

uint64_t sub_100166AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, int a17, char a18, __int16 a19, char a20, uint64_t a21, int a22, unsigned int a23, uint64_t a24, char *a25, unsigned int a26, char *a27)
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

uint64_t sub_100167058()
{
  v10 = (v3 + v1) ^ (((((2 * &v8) | 0x9EA96C32) - &v8 - 1330951705) ^ 0x173D657B) * v0);
  v9 = v7;
  (*(v2 + 8 * (v3 + v1 + 1266)))(&v8);
  v10 = (v3 + v1) ^ (((&v8 & 0xC0AC0A3 | ~(&v8 | 0xC0AC0A3)) ^ 0xAB9CEC3E) * v0);
  v9 = v6;
  (*(v2 + 8 * (v3 + v1 + 1266)))(&v8);
  return (v4 - 16257999);
}

uint64_t sub_10016714C()
{
  v3 = v1 ^ 0x268D;
  v4 = -24 * (v1 ^ 0x55);
  v5 = ((v1 ^ 0x268D) - 6537) | 0x160E;
  v7 = (v0 - 1) < 0x10 && ((~v4 + v0) & 0xFu) >= ((v0 - 1) & 0xFu);
  return (*(v2 + 8 * ((v7 * (v5 ^ 0x1D96)) ^ v3)))();
}

uint64_t sub_10016723C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t *a15, unsigned int a16, unsigned int a17)
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

uint64_t sub_1001672F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
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

uint64_t sub_100167444(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8)
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

uint64_t sub_100167DDC(int8x16_t a1, int8x8_t a2, int8x8_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
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

uint64_t sub_100167DE4@<X0>(int a1@<W8>)
{
  v7 = 1875091903 * (((v6 - 232) & 0xFFE23BF8 | ~((v6 - 232) | 0xFFE23BF8)) ^ 0x36684784);
  *(v6 - 216) = v2 - v7 - 2301;
  *(v6 - 212) = ((a1 & 0xFFFBDFDE) - 75833608 + ((((v2 - 3590) | 0x443) + 2147347072) ^ v5)) ^ v7;
  *(v6 - 224) = v3;
  *(v6 - 208) = v4;
  v8 = (*(v1 + 8 * (v2 ^ 0x2A85)))(v6 - 232);
  return sub_100167E8C(v8);
}

uint64_t sub_100167F98()
{
  v3 = v0 ^ 0x12CD;
  (*(v2 + 8 * (v0 + 3844)))();
  v4 = STACK[0x400];
  *(v1 + 24) = 0;
  v5 = (*(v4 + 8 * (v3 ^ 0x21C9)))(v1);
  return (STACK[0x918])(v5);
}

uint64_t sub_100168040()
{
  STACK[0x268] = v0;
  STACK[0x2A0] = STACK[0x2A0];
  return (*(*(v2 - 256) + 8 * v1))();
}

uint64_t sub_1001683AC@<X0>(_BYTE *a1@<X8>)
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

void sub_1001684C4(uint64_t a1)
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

uint64_t sub_1001685B0@<X0>(int a1@<W8>)
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

uint64_t sub_100168840(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
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

uint64_t sub_100168848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, __int16 a14, char a15, __int16 a16, char a17, uint64_t a18, char a19, uint64_t a20, int a21, unsigned int a22, uint64_t a23, char *a24, unsigned int a25, char *a26)
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

uint64_t sub_100168A8C@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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
  *&STACK[0x200] = xmmword_1002BF690;
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

uint64_t sub_100169E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, unsigned int a7, uint64_t a8)
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

uint64_t sub_10016A0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
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

uint64_t sub_10016A19C(uint64_t a1, uint64_t a2, int a3, int a4)
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

uint64_t sub_10016A230(uint64_t a1, int a2)
{
  v5 = (a1 + v3 - 16);
  v6 = (v2 + v3 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((v3 & 0xFFFFFFE0) != 32) * (((a2 - 135748821) | 2) - 5672)) | (a2 - 135749164))))();
}

uint64_t sub_10016A328()
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

void sub_10016A380()
{
  (*(v2 + 8 * (v0 ^ 0x324F)))(STACK[0x7B0]);
  LODWORD(STACK[0x3F4]) = v1;
  STACK[0x708] = STACK[0x848];
  STACK[0x778] = *(v2 + 8 * ((v0 ^ 0x1DAF) - 2526));
  JUMPOUT(0x100164A78);
}

uint64_t sub_10016A38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, uint64_t a23, uint64_t a24, int a25)
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

void sub_10016A5F4()
{
  v4 = *(v2 + 16);
  **(v2 + 32) = v1;
  *v4 = v0;
  *v2 = *(v3 + 24);
}

uint64_t sub_10016A654@<X0>(__int16 a1@<W8>)
{
  v4 = ((2 * v2) & 0x7C9FFBF76FFE5D4ELL) + (v2 ^ 0x7E4FFDFBB7FF2EA7) + v1;
  v5 = *(v4 - 0x7E4FFDFBB7FF2EA4);
  LODWORD(v4) = (*(v4 - 0x7E4FFDFBB7FF2EA7) << 24) | (*(v4 + ((468 * (v3 ^ 0x16A2u)) ^ 0x81B002044800D426)) << 16) | (*(v4 - 0x7E4FFDFBB7FF2EA5) << 8) | v5;
  LODWORD(STACK[0x494]) = v4 + 197499219 - 2 * (v4 & 0xBC5995F ^ v5 & 0xC);
  return sub_1001F80B0(a1);
}

uint64_t sub_10016A764@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  *(a3 + 104) = veorq_s8(*(v3 + 88), xmmword_1002BF680);
  v5 = *(v3 + 4);
  *(a3 + 20) = v5;
  return (*(v4 + 8 * (((((a2 + 847743053) & 0xCD787FDF) - 375) * (v5 == 0)) ^ (a2 - 110))))(a1, 197499219);
}

uint64_t sub_10016A8A4@<X0>(int a1@<W8>)
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

uint64_t sub_10016A934(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30)
{
  *(v30 - 208) = 0;
  v31 = *(v30 - 256);
  STACK[0x210] = *(v31 + 8 * (a4 - 1207));
  LODWORD(STACK[0x200]) = a8 + 4247;
  LODWORD(STACK[0x2B0]) = a8 + 5752;
  LODWORD(STACK[0x270]) = (a8 + 6962) | 0x30;
  return (*(v31 + 8 * (((*a30 != 0) * ((((216 * (a4 ^ 0x543)) ^ 0xF6F) - 1128) ^ 0xF3)) | (216 * (a4 ^ 0x543)))))(0x8893D652EA3595FFLL, 0x6FEAED2DD55A32A7, 0x3D2CC4E5C304AE09);
}

uint64_t sub_10016A970()
{
  v6 = (v1 - 32);
  v7 = (v2 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v0 == 32) * v4) ^ (v3 + 1726))))();
}

uint64_t sub_10016A980@<X0>(uint64_t a1@<X3>, int a2@<W5>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

uint64_t sub_10016AAD8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, int a7, int a8)
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

uint64_t sub_100172D8C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = 677 * (v5 ^ 0x3D28F36A ^ (v4 + 3006)) - 9479 + v3;
  v8 = *(v2 + v7 - 15);
  v9 = *(v2 + v7 - 31);
  v10 = a1 + v7;
  *(v10 - 15) = v8;
  *(v10 - 31) = v9;
  return (*(v6 + 8 * ((2802 * ((v3 & 0xFFFFFFE0) == 32)) | (a2 + (v5 ^ 0x3D28F36A) + 1432))))();
}

uint64_t sub_100172E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v4 + (v5 - v2) - 2437;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * ((v3 + v5 + 1524) | (8 * (v7 == 0)))))();
}

uint64_t sub_100172F10@<X0>(int a1@<W8>)
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

uint64_t sub_100172FE4()
{
  v4 = (*(v3 + 8 * (v0 + 3391)))();
  *v1 = 0;
  return v2(v4);
}

uint64_t sub_100173054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
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

uint64_t sub_1001730EC(uint64_t a1, uint64_t a2)
{
  LOWORD(STACK[0xA26]) = v2;
  LODWORD(STACK[0x370]) = v2;
  return sub_1001F5364(a1, a2, v3 - 8569);
}

uint64_t sub_100173210@<X0>(uint64_t a1@<X0>, int a2@<W5>, int a3@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7);
  return (*(v6 + 8 * ((6887 * (v7 == (v5 ^ (a2 + 1980) ^ 0x60CLL))) ^ (a3 + v5 + 2040))))();
}

uint64_t sub_100173254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, int a17, unsigned int a18)
{
  a18 = 1317436891 * (((&a16 | 0xDCC09AF3) - &a16 + (&a16 & 0x233F6508)) ^ 0x6CC30285) + 8154;
  a16 = &a12;
  v20 = (*(v19 + 77096))(&a16);
  return (*(v19 + 8 * ((418 * (a17 == v18)) ^ 0x220Fu)))(v20);
}

uint64_t sub_100173364()
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

uint64_t sub_10017369C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
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

uint64_t sub_100173890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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
      JUMPOUT(0x100173834);
    }

    return (*(v73 + 8 * (((*(STACK[0x5D8] + 8) == 0) * (((a71 - 1802) | 0xB2C) - 6190)) ^ (a71 - 1551))))();
  }
}

uint64_t sub_100173958(uint64_t a1, int a2)
{
  STACK[0x698] = 0;
  v4 = *(STACK[0x798] + 8);
  STACK[0x400] = 0;
  LODWORD(STACK[0x668]) = 0;
  LODWORD(STACK[0x804]) = a2;
  return (*(v3 + 8 * (((v4 == 0) * ((v2 - 2856) ^ (v2 - 2880))) | v2)))();
}

void sub_1001739A4(uint64_t a1)
{
  v1 = *(a1 + 32) - 33731311 * ((((2 * a1) | 0x8DB3BDAE) - a1 - 1188683479) ^ 0x7F2F14F4);
  __asm { BRAA            X2, X17 }
}

uint64_t sub_100173B6C(uint64_t a1, uint64_t a2)
{
  v9 = a2 + v7;
  v10 = a2 - 1;
  *(v4 + v10) = *(v5 + v10) ^ *(v6 + v10) ^ *(v9 + 3) ^ ((((v3 - 42) | 0x80) ^ 0xE6) * v10) ^ *(v2 + v10) ^ 0x3C;
  return (*(v8 + 8 * ((7111 * (v10 == 0)) ^ v3)))();
}

uint64_t sub_100173CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = (v7 ^ (a5 + 2936) ^ 0xFFFFFFFFFFFFF22CLL) + v6;
  v11 = *(v5 + v10 - 15);
  v12 = *(v5 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * ((2025 * ((v6 & 0xFFFFFFE0) == 32)) ^ (v8 + v7 + 336))))();
}

uint64_t sub_100173D24@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x438];
  STACK[0x508] = *(v1 + 8 * a1);
  return (*(v1 + 8 * (((((v2 == 0) ^ (a1 + 93)) & 1) * (((a1 - 203) | 0x1582) - 6078)) ^ (a1 + 4702))))();
}

uint64_t sub_100173E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v72 == 16215947)
  {
    return (*(v73 + 8 * ((1267 * (*(STACK[0x5F0] + 97) == (((2 * v71) ^ 0x73) + v71 - 111))) ^ (v71 - 5109))))();
  }

  if (v72 != 16257999)
  {
    LODWORD(STACK[0x824]) = v72;
    JUMPOUT(0x100173F2CLL);
  }

  v74 = *(STACK[0x8D8] + 24);
  STACK[0x4B0] = v74;
  return (*(v73 + 8 * (((v74 == 0) * (a71 - 6072)) ^ (a71 + 1886))))();
}

uint64_t sub_100173F6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  STACK[0x3E8] = 0;
  STACK[0x7B8] = 0;
  return (*(v2 + 8 * (((v3 != 0) * ((((v1 - 7918) | 0x182) + 5661) ^ 0x17E0)) ^ v1)))();
}

uint64_t sub_100173FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x5F0];
  STACK[0x5D0] = *(a4 + 8 * v4);
  return sub_100261B54(a4, v5);
}

uint64_t sub_100174094(uint64_t a1)
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

uint64_t sub_10017420C()
{
  *(v0 + 24) = 107;
  *(v0 + 40) = 0;
  return sub_10017421C();
}

uint64_t sub_100174444(_DWORD *a1)
{
  v1 = 1317436891 * ((a1 - 1035088277 - 2 * (a1 & 0xC24DCE6B)) ^ 0x724E561D);
  v2 = a1[1] ^ v1;
  v3 = *a1 + v1;
  **(&off_100315F70 + v2 - 7178) = v3;
  return (*(*(&off_100315F70 + (v2 ^ 0x1C10)) + (v2 ^ (8 * (v3 == 538291948))) - 1))();
}

void sub_100174584()
{
  v0 = *(&off_100315F70 + ((-85 * (dword_100330D48 ^ 0xDF ^ dword_100330E70)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * (dword_100330D48 ^ 0xDF ^ dword_100330E70))] ^ 0x71]) - 150);
  v1 = *(v0 - 4);
  v2 = *(&off_100315F70 + (byte_1002B7200[byte_1002B0320[(-85 * ((dword_100330E70 - v1) ^ 0xDF))] ^ 1] ^ (-85 * ((dword_100330E70 - v1) ^ 0xDF))) + 14);
  v3 = (*v2 - v1) ^ &v8;
  v4 = 2054362027 * v3 - 0xB4207763EF64BDFLL;
  v5 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  *(v0 - 4) = v4;
  *v2 = v5;
  LOBYTE(v5) = -85 * (*(v0 - 4) ^ 0xDF ^ v5);
  **(&off_100315F70 + (byte_1002A5DB0[byte_1002BF468[v5 - 8] ^ 0xDD] ^ v5) - 123) = 16257999;
  v6 = *(&off_100315F70 + ((-85 * ((dword_100330E70 + dword_100330D48) ^ 0xDF)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * ((dword_100330E70 + dword_100330D48) ^ 0xDF))] ^ 0xE9]) + 135) - 8;
  v7 = (*&v6[8 * ((-85 * ((*v2 + *(v0 - 4)) ^ 0xDF)) ^ byte_1002B7200[byte_1002B0320[(-85 * ((*v2 + *(v0 - 4)) ^ 0xDF))] ^ 1]) + 75576])(512, 0x100004077774924);
  *(*(&off_100315F70 + ((-85 * (*(v0 - 4) ^ 0xDF ^ *v2)) ^ byte_1002B7200[byte_1002B0320[(-85 * (*(v0 - 4) ^ 0xDF ^ *v2))] ^ 0x67]) + 159) - 4) = v7;
  __asm { BRAA            X8, X17 }
}

void sub_1001747D0(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, unsigned int a13)
{
  *v15 = a1;
  *v14 = a2;
  a12 = a7;
  a13 = (v13 + 5993) ^ (1824088897 * (((&a11 | 0x220E8682) - &a11 + (&a11 & 0xDDF17978)) ^ 0x7A6755E0));
  (*(v16 + 8 * ((v13 + 2467) ^ 0x3758)))(&a11);
  JUMPOUT(0x100174854);
}

uint64_t sub_1001748F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
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

uint64_t sub_100174A28@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>, int64x2_t a4@<Q2>, int8x16_t a5@<Q3>, int8x16_t a6@<Q4>, int8x16_t a7@<Q5>, int8x16_t a8@<Q6>, int8x16_t a9@<Q7>)
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

void sub_100175354(int a1@<W8>, uint64_t a2, int a3, int a4, uint64_t a5, int a6, int a7, uint64_t a8, char a9, uint64_t a10, int a11)
{
  v15 = a1 ^ (v14 + 2822);
  *v12 = a4;
  *v11 = a7;
  a11 = (v15 + 954966477) ^ (1824088897 * ((&a9 + 2137437616 - 2 * (&a9 & 0x7F66B5B0)) ^ 0x270F66D2));
  a10 = a5;
  (*(v13 + 8 * (v15 + 954967743)))(&a9);
  JUMPOUT(0x10013C1A4);
}

uint64_t sub_1001754A0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v13 = 169 * (a1 ^ v11);
  v14 = a1 - 570102757;
  a10 = a1 - 1710126949 * ((&a10 - 1735959748 - 2 * (&a10 & 0x98875B3C)) ^ 0xAA9C00AC) - 93781274;
  v15 = (*(v12 + 8 * (a1 ^ 0x21FB3F80u)))(&a10);
  return (*(v12 + 8 * ((8858 * (a11 == (v13 ^ 0xF8163E))) ^ v14)))(v15);
}

uint64_t sub_100175554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char *a21, int a22, unsigned int a23)
{
  a21 = &a18;
  a23 = 1317436891 * ((((2 * &a21) | 0x703EA756) - &a21 + 1205906517) ^ 0x81CCBDD) + 8154;
  v25 = (*(v24 + 77096))(&a21);
  return (*(v24 + 8 * ((13189 * (a22 == 16257999)) ^ v23)))(v25);
}

uint64_t sub_1001755EC@<X0>(int a1@<W8>)
{
  STACK[0xB10] = v1;
  v3 = STACK[0x720];
  STACK[0xB18] = STACK[0x720];
  return (*(v2 + 8 * ((3656 * (v1 - v3 > ((241 * (a1 ^ 0x4D6u)) ^ 0x2DAuLL))) ^ a1)))();
}

void sub_100175640(uint64_t a1)
{
  *(v2 - 240) = v1;
  *(v2 - 216) = a1;
  JUMPOUT(0x1001477D8);
}

uint64_t sub_100175700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
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

uint64_t sub_1001757E0()
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

uint64_t sub_10017599C@<X0>(int a1@<W8>)
{
  v2 = a1 + 1662;
  v3 = a1 + 3057;
  v4 = (*(v1 + 8 * (a1 + 6608)))(32, 0x103004054B5FA7DLL);
  STACK[0x690] = v4;
  return (*(v1 + 8 * ((((v2 ^ 0xF ^ (v4 == 0)) & 1) * (v3 ^ 0x173A)) ^ v2)))();
}

uint64_t sub_100175A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

uint64_t sub_100175DE8()
{
  STACK[0x678] = v0;
  STACK[0x610] = *(v2 + 8 * (v1 - 8526));
  return sub_1001AEC88(v1 - 972);
}

uint64_t sub_100175E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
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

uint64_t sub_100176160()
{
  memset((STACK[0x798] + 8), 60, 48);
  *&STACK[0x320] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x330] = vdupq_n_s64(0x38uLL);
  *&STACK[0x380] = vdupq_n_s64(0xF92B3AE46CD3AAB5);
  *&STACK[0x390] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x220] = vdupq_n_s64(0x6D4C51B932C554AuLL);
  *&STACK[0x300] = vdupq_n_s64(0x18849D489A333C3BuLL);
  *&STACK[0x310] = vdupq_n_s64(0xB0C278DF03C54D67);
  *&STACK[0x2E0] = vdupq_n_s64(v0);
  *&STACK[0x2F0] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x2C0] = vdupq_n_s64(0x953F7DAAA667EAE2);
  *&STACK[0x2D0] = vdupq_n_s64(0x2A7EFB554CCFD5C4uLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x2B0] = vdupq_n_s64(0xCC5CCB6FF3BE95FDLL);
  *&STACK[0x370] = vdupq_n_s64(0xCA86DFF3ED886062);
  *&STACK[0x280] = vdupq_n_s64(0x818073FB8640EE5DLL);
  *&STACK[0x290] = vdupq_n_s64(0x1ABC9006093BCFCFuLL);
  *&STACK[0x260] = vdupq_n_s64(0xF812420440F6AA64);
  *&STACK[0x270] = vdupq_n_s64(0xE238A9E002A50567);
  *&STACK[0x200] = vdupq_n_s64(0x276E05BB2EBB76F9uLL);
  *&STACK[0x210] = vdupq_n_s64(0x1DC7561FFD5AFA98uLL);
  *&STACK[0x240] = vdupq_n_s64(0x73A1B896F9C3D547uLL);
  *&STACK[0x250] = vdupq_n_s64(0xD891FA44D1448906);
  *&STACK[0x230] = xmmword_1002BF690;
  return sub_10019968C(16, 0x3537u);
}

uint64_t sub_1001763FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11)
{
  v17 = v11;
  (*(v12 + 8 * (v13 + 8476)))(a1, *(v14 + 8 * ((v13 + 1905) ^ 0xD6B)) - 12);
  (*(v12 + 8 * (v13 + 8477)))(*(v15 + v17));
  *(v16 + 356) = *(v15 + v17);
  *(v16 + 44) = 887888748;
  a11 = v13 + 1905 - 1358806181 * ((1263505625 - (&a10 | 0x4B4F90D9) + (&a10 | 0xB4B06F26)) ^ 0x8B9F03A5) + 793;
  v18 = (*(v12 + 8 * ((v13 + 1905) ^ 0x29D0)))(&a10);
  return (*(v12 + 8 * (((a10 == ((v13 + 734951608) & 0xD4319BF6 ^ 0xF80ABF)) * (((v13 - 129) | 0xA23) + 686)) ^ (v13 + 1905))))(v18);
}

uint64_t sub_100176558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, unsigned int a25)
{
  v27 = 1824088897 * ((&a20 & 0x153AB17A | ~(&a20 | 0x153AB17A)) ^ 0xB2AC9DE7);
  a21 = v27 + 475176934;
  a22 = a14;
  a23 = &a18;
  a24 = -654855621 - v27;
  a25 = v27 + v26 + 1674575638;
  v28 = (*(v25 + 8 * (v26 ^ 0x281C)))(&a20);
  return (*(v25 + 8 * (((a20 == 16257999) * ((((v26 - 991428038) & 0x3B17FFFF) - 3011) ^ ((v26 - 3476) | 0x434))) ^ v26)))(v28);
}

uint64_t sub_100176730(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, ...)
{
  va_start(va, a5);
  v7 = (*(v5 + 8 * (v6 + 504)))(a5, a1, va) == (v6 ^ 0x23C2);
  return (*(v5 + 8 * ((v7 * (v6 ^ 0x23D8)) ^ v6)))();
}

void sub_100176778(uint64_t a1@<X5>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  STACK[0x260] = a1 + a2;
  STACK[0x250] = a59 + v59 + v60 + a2;
  JUMPOUT(0x1001767C4);
}

uint64_t sub_1001772A4(uint64_t a1, uint64_t a2)
{
  LOWORD(STACK[0xA0E]) = v2;
  LODWORD(STACK[0x360]) = v2;
  return sub_1001F5364(a1, a2, v3 - 8590);
}

uint64_t sub_100177358(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x240] = 0;
  *a1 = 0;
  a1[1] = 0;
  *(v8 - 216) = a1;
  return sub_1001D9FA4(a7, v7 + 715);
}

uint64_t sub_10017745C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  if (a8)
  {
    v49 = v47 == 0;
  }

  else
  {
    v49 = 1;
  }

  v52 = v49 || *(a1 + 48) == 0 || *(a1 + 64) == 0;
  return (*(v48 + 8 * (v52 ^ v46)))(a1, a2, a3, v47, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_100177584@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  return sub_1001A2DBC();
}

uint64_t sub_10017769C()
{
  STACK[0x7D8] = STACK[0x830];
  STACK[0x628] -= 32;
  return (*(v1 + 8 * ((5197 * ((((v0 + 16) | 0x2C0) ^ 0xF81917) == 16257999)) ^ (v0 + 1226))))();
}

uint64_t sub_100177720@<X0>(uint64_t a1@<X8>)
{
  v8 = 956911519 * ((2 * ((v7 - 232) & 0x61D09360) - (v7 - 232) + 506424472) ^ 0xF4BE1C9D);
  *(v7 - 216) = v1 ^ v8;
  *(v7 - 200) = ((v2 ^ 0x3BF77DDC) - 989925376 + ((((v4 + 1713492672) & 0x99DE3FDF) + 2012144621) & (2 * v2))) ^ v8;
  *(v7 - 208) = v3;
  *(v7 - 192) = v8 ^ 0x5A8CE82;
  *(v7 - 188) = (v4 + 1261) ^ v8;
  *(v7 - 232) = v5;
  *(v7 - 224) = a1;
  v9 = (*(v6 + 8 * (v4 ^ 0x2085)))(v7 - 232);
  return (STACK[0x5E8])(v9);
}

uint64_t sub_1001777F8()
{
  v4 = 3079 * (v0 ^ 0x159A);
  v10 = (v0 + 2818) ^ (((-184511499 - (&v8 | 0xF50093F5) + (&v8 | 0xAFF6C0A)) ^ 0x5296BF68) * v1);
  v9 = v7;
  (*(v2 + 8 * (v0 + 4084)))(&v8);
  v10 = (v4 + 2188) ^ (((((&v8 | 0x581BE3FE) ^ 0xFFFFFFFE) - (~&v8 | 0xA7E41C01)) ^ 0xFF8DCF63) * v1);
  v9 = v6;
  (*(v2 + 8 * (v4 ^ 0x3D82)))(&v8);
  return (v3 - 16257999);
}

uint64_t sub_100177910@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = v2;
  return sub_10018A990(a1, 197499219);
}

uint64_t sub_100177920(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  *a1 = 0;
  a1[1] = 0;
  v20 = *(a7 + 8 * (((a19 != 0) * ((151 * ((v19 - 2077) ^ 0x8A)) ^ 0x242D)) ^ (v19 - 2077)));
  HIDWORD(a10) = 197499219;
  STACK[0x270] = STACK[0x240];
  STACK[0x288] = 0;
  LODWORD(STACK[0x25C]) = 16257999;
  return v20(a1, a19, a3, a4, a5, a6, a7, LODWORD(STACK[0x2BC]), a9, a10, a11, 0, a13, a14, a15, a16);
}

uint64_t sub_100177AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x388] = v5;
  v6 = LODWORD(STACK[0x58C]) == 866378219;
  LODWORD(STACK[0x58C]) = -1143101532;
  LODWORD(STACK[0x5B0]) = -1654346954;
  v7 = *(v4 + 8 * ((971 * ((v6 ^ (v3 + 1)) & 1)) ^ v3));
  LODWORD(STACK[0x588]) = 932914950;
  return v7(2634133490, a2, a3, 1197913005);
}

uint64_t sub_100177C08()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3309)))(128, 0x10800400FED9166);
  v3 = STACK[0x400];
  STACK[0x6F0] = v2;
  return (*(v3 + 8 * ((28 * (((((v0 + 103) ^ (v0 - 1)) ^ (v2 == 0)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_100177C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, __int16 a11, char a12, int a13, int a14, char a15, uint64_t a16, int a17, char a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, char *a25)
{
  a22 = a19;
  a23 = &a10;
  a21 = (v25 + 1230) ^ (((((&a20 | 0x1865D74A) ^ 0xFFFFFFFE) - (~&a20 | 0xE79A28B5)) ^ 0xDE6CE296) * v27);
  (*(v26 + 8 * (v25 + 7579)))(&a20);
  a24 = (v25 + 1336) ^ (1710126949 * ((&a20 & 0x86FED928 | ~(&a20 | 0x86FED928)) ^ 0x4B1A7D47));
  a25 = &a12;
  a22 = a19;
  a23 = &a18;
  (*(v26 + 8 * ((v25 - 335) ^ 0x2310)))(&a20);
  a21 = (v25 + 1230) ^ (((&a20 & 0xE555C1FD | ~(&a20 | 0xE555C1FD)) ^ 0x235CF421) * v27);
  a22 = a19;
  a23 = &a15;
  (*(v26 + 8 * ((v25 - 335) ^ 0x2316)))(&a20);
  a22 = a19;
  LODWORD(a23) = v25 - 335 - 2008441969 * ((-1859138113 - (&a20 | 0x912FCDBF) + (&a20 | 0x6ED03240)) ^ 0x2649664E) + 3998;
  v28 = (*(v26 + 8 * ((v25 - 335) ^ 0x23E4)))(&a20);
  return (*(v26 + 8 * (((a20 == 16257999) * ((v25 + 5335) ^ 0x1D30)) ^ (v25 - 335))))(v28);
}

uint64_t sub_100177E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, uint64_t a19)
{
  v26 = 1875091903 * (((&a17 | 0xC6D6CB63) - (&a17 & 0xC6D6CB63)) ^ 0xF0A348E0);
  a19 = a13;
  HIDWORD(a17) = (v23 ^ 0x24FCF7EF) + ((2 * v23) & 0x49F9EFDE) - 81805637 + v26;
  a18 = v25 + 2976 + v26;
  (*(v24 + 8 * (v25 ^ 0x3721)))(&a17);
  v27 = 1875091903 * ((2 * (&a17 & 0xE448F58) - &a17 - 239374176) ^ 0xC7CEF323);
  a19 = a13;
  HIDWORD(a17) = (HIDWORD(v22) ^ 0x719CF6FF) + ((HIDWORD(v22) << (2 * (v25 ^ 0xC3) + 99)) & (v25 ^ 0xE339FF72)) - 1367359573 + v27;
  a18 = v25 + 2976 + v27;
  (*(v24 + 8 * (v25 + 4897)))(&a17);
  v28 = (v22 ^ 0xB9FEF6FF) + ((2 * v22) & 0x73FDEDFE);
  v29 = 2 * &a17;
  v30 = 1875091903 * (((v29 | 0x8829CAD0) - &a17 - 1142220136) ^ 0x726166EB);
  a19 = a13;
  HIDWORD(a17) = v28 + 1713225643 + v30;
  a18 = v25 + 2976 + v30;
  (*(v24 + 8 * (v25 ^ 0x3721)))(&a17);
  a17 = v21;
  a19 = a13;
  a18 = v25 + 1824088897 * ((2 * (&a17 & 0xADCAB10) - &a17 + 1965249769) ^ 0x2D4A878B) - 2443;
  (*(v24 + 8 * (v25 + 4842)))(&a17);
  v31 = 1875091903 * (((v29 | 0x789F4C20) - &a17 + 1135630832) ^ 0x8A3A2593);
  a19 = a13;
  HIDWORD(a17) = (v20 ^ 0xB95CBFEB) + ((2 * v20) & 0x72B97FD6) + 1723856575 + v31;
  a18 = v25 + 2976 + v31;
  (*(v24 + 8 * (v25 + 4897)))(&a17);
  v32 = 1875091903 * (((&a17 | 0x3BA281D8) - (&a17 & 0x3BA281D8)) ^ 0xDD7025B);
  a19 = a13;
  HIDWORD(a17) = (v19 ^ 0xBCBDB7AB) + ((2 * v19) & 0x16F56) + 1667170047 + v32;
  a18 = v25 + 2976 + v32;
  v33 = (*(v24 + 8 * (v25 ^ 0x3721)))(&a17);
  return (*(v24 + 8 * (((2 * (a17 != 16257999)) | (16 * (a17 != 16257999))) ^ v25)))(v33);
}

uint64_t sub_100178248@<X0>(unint64_t *a1@<X8>)
{
  v3 = *a1;
  STACK[0x5C8] = *a1;
  return (*(v2 + 8 * ((15 * (((v3 == 0) ^ (v1 - 72 + v1 + 1)) & 1)) ^ v1)))();
}

uint64_t sub_100178300(uint64_t result)
{
  v1 = 1710126949 * ((result - 2 * (result & 0xF410C37DA159FC11) - 0xBEF3C825EA603EFLL) ^ 0x9C16A7A49342A781);
  v2 = *(result + 12) + v1;
  v3 = *result ^ v1;
  v4 = *(result + 8) + v1;
  v5 = *(result + 4) - v1;
  v6 = *(result + 16) + v1;
  v7 = *(result + 32) ^ v1;
  v8 = v7 < v6;
  v9 = v7 < v6;
  v10 = v8;
  if (v5)
  {
    v9 = v10;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  *(result + 28) = v11 ^ v2;
  return result;
}

uint64_t sub_10017838C@<X0>(uint64_t a1@<X0>, int a2@<W6>, int a3@<W8>)
{
  v7 = v4 + 10 * (v5 ^ (a3 + 3498)) - 1281;
  *(a1 + v7) = *(v3 + v7) ^ 0x3C;
  return (*(v6 + 8 * ((15636 * (v7 == 0)) ^ (a2 + v5 + 2733))))();
}

uint64_t sub_100178E30(unint64_t a1)
{
  v4 = *(v3 + 8 * ((((((v2 - 6194) | 0x380) ^ 0x38C1) + ((v2 + 1637312250) & 0x9E6882FF)) * (*v1 == 0)) ^ v2));
  STACK[0x3E0] = a1;
  return v4(0x3532CD90FD5B1622, 0);
}

uint64_t sub_100178EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v12 = (((2 * v5) & 0x7F1F73F7FFFEE0CELL) + (v5 ^ 0xBF8FB9FBFFFF7067) + v6);
  v13 = (v12[v8 + 0x4070460400007B34] << 24) | (v12[v8 + 0x4070460400007B35] << 16);
  v12 += 0x4070460400008F9BLL;
  v14 = (v13 | (*v12 << 8) | v12[1]) + 197499219 - 2 * ((v13 | (*v12 << 8) | v12[1]) & v9 ^ v12[1] & 0xC);
  v15 = ((2 * (v5 + 4)) & 0x6D77FFFB7CF1FFAELL) + ((v5 + 4) ^ 0x76BBFFFDBE78FFD7) + v6 - 0x76BBFFFDBE78FFD7;
  v16 = (_byteswap_ushort(*v15) - 2 * (_byteswap_ushort(*v15) & 0x3E9E ^ *(v15 + 1) & 0xA) + 16023);
  switch(v16)
  {
    case 28242:
      STACK[0x428] = v6 + v7;
      STACK[0x730] = a5;
      return (*(a4 + 8 * (((v14 == ((v11 - 1863) ^ 0xBC5944D)) * (v11 - 5105)) ^ (v11 - 1597))))();
    case 47636:
      return (*(a4 + 8 * ((((2 * v11) ^ 0x2FE1) * (v10 == 197499227)) ^ (v11 - 2401))))();
    case 43494:
      return (*(a4 + 8 * (((((v11 - 4061) | 0x1156) ^ 0x11A7) * (v10 == 197499223)) ^ (v11 - 2401))))();
    default:
      return sub_1001EEA1C(a1, a2, a3, a4);
  }
}

void sub_1001790E8(uint64_t a1)
{
  v1 = *(a1 + 12) ^ (1824088897 * ((((2 * a1) | 0xEF42288E) - a1 + 140438457) ^ 0xAFC8C725));
  v2 = *a1;
  v3 = *(&off_100315F70 + (v1 ^ 0x1C5E)) - 8;
  (*&v3[8 * (v1 ^ 0x3B4F)])();
  __asm { BRAA            X9, X17 }
}

void sub_1001791F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    v8 = a6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v11 = !v8 && a7 != 0 && a8 != 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100179278()
{
  v2 = STACK[0x900];
  STACK[0x508] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 - 84)) & 1) * (((v0 - 124) | 0x1582) - 6078)) ^ (v0 + 4781))))();
}

uint64_t sub_100179310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v18 = v15 - 1;
  *(a15 + v18) = *(a4 + v18);
  return (*(v17 + 8 * (((32 * (v18 == (v16 ^ 0x2420))) | ((v18 == (v16 ^ 0x2420)) << 6)) ^ (v16 - 4339))))(a1, a2, a3, 16257999);
}

uint64_t sub_1001793AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 7 + ~v10 + v9) = vadd_s8(vsub_s8(*(a8 - 7 + ~v10 + v9), vand_s8(vadd_s8(*(a8 - 7 + ~v10 + v9), *(a8 - 7 + ~v10 + v9)), v13)), v14);
  v15 = ((v11 - 908030022) & 0x361F5FEF ^ 0x7A2) + v10 == (v9 & 0xFFFFFFF8);
  return (*(v12 + 8 * ((4 * v15) | (32 * v15) | v11)))();
}

void sub_100179420(uint64_t a1, int a2, int a3)
{
  LODWORD(STACK[0x4B4]) = a2;
  LODWORD(STACK[0x508]) = a3;
  LODWORD(STACK[0x518]) = v3;
  LODWORD(STACK[0x524]) = STACK[0x58C];
  LODWORD(STACK[0x4C4]) = STACK[0x588];
  LODWORD(STACK[0x588]) = STACK[0x548];
  LODWORD(STACK[0x58C]) = STACK[0x5A8];
  LODWORD(STACK[0x5A8]) = STACK[0x540];
  JUMPOUT(0x100159B9CLL);
}

uint64_t sub_10017946C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, int a22, unsigned int a23, int a24)
{
  v26 = 956911519 * ((2 * (&a21 & 0x56B420E8) - &a21 - 1454645482) ^ 0x43DAAF13);
  HIDWORD(a21) = v26 + 543642722;
  a22 = v26 ^ 0x61FE7920;
  a23 = 1002199528 - v26;
  a24 = v26 ^ 0x1602;
  (*(v24 + 77008))(&a21);
  a23 = 1317436891 * ((2 * (&a21 & 0x50EE2770) - &a21 + 789698697) ^ 0x9F1240FF) + 8154;
  a21 = &a17;
  v27 = (*(v24 + 77096))(&a21);
  return (*(v24 + 8 * (v25 | (32 * (a22 == 16257999)))))(v27);
}

uint64_t sub_100179624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12, int a13, char a14, __int16 a15, char a16, uint64_t a17, int a18, char a19, int a20, unsigned int a21, char *a22, char *a23, char *a24, char *a25)
{
  v29 = v26 ^ 0x507;
  a25 = &a16;
  LODWORD(a24) = (v29 - 1721) ^ ((((&a20 | 0x1350D435) + (~&a20 | 0xECAF2BCA)) ^ 0x214B8FA4) * v28);
  a22 = a12;
  a23 = &a14;
  (*(v25 + 8 * (v29 + 4528)))(&a20);
  LODWORD(a23) = v29 + 956911519 * ((2 * ((&a20 ^ 0x257035F6) & 0x6E233ED2) - (&a20 ^ 0x257035F6) + 299680044) ^ 0xDE3D84DF) + 4233;
  a22 = &a11;
  a24 = a12;
  (*(v25 + 8 * (v29 + 4567)))(&a20);
  a21 = (v29 - 1827) ^ (33731311 * ((-1541042964 - (&a20 | 0xA4258CEC) + (&a20 | 0x5BDA7313)) ^ 0x622CB930));
  a22 = a12;
  a23 = &a19;
  (*(v25 + 8 * (v29 + 4522)))(&a20);
  LODWORD(a23) = v29 - 2008441969 * (((&a20 | 0x5357CD4) - &a20 + (&a20 & 0xFACA8328)) ^ 0x4DAC28DA) + 606;
  a22 = a12;
  v30 = (*(v25 + 8 * (v29 + 4572)))(&a20);
  return (*(v25 + 8 * (((a20 != v27) * (((v29 ^ 0x66) + 440) ^ v29 ^ 0x648)) ^ v29)))(v30);
}

uint64_t sub_100179814@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  *(v2 + 8) = *(v3 + 8);
  *(v3 + 8) = v2;
  return sub_10021D50C(a1);
}

uint64_t sub_100179844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, int a17)
{
  v21 = 956911519 * (((~v20 | 0xD1419561893CAE16) + (v20 | 0x2EBE6A9E76C351E9)) ^ 0x6B881F429C5221EDLL);
  a15 = v17 + v21 - ((2 * v17) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34;
  a16 = a11;
  a14 = v21 ^ 0x3FE;
  v22 = (*(v19 + 76792))(&a14);
  return (*(v19 + 8 * ((6857 * (a17 == v18)) ^ 0x3FDu)))(v22);
}

uint64_t sub_10017992C(unint64_t a1)
{
  STACK[0x6C8] = a1;
  *a1 = 5;
  *(a1 + 4) = 257;
  v3 = (*(v2 + 8 * (v1 + 4253)))(120, 0x1000040F604211FLL);
  STACK[0x868] = v3;
  return (*(v2 + 8 * (((v3 != 0) * (((2 * v1) ^ 0x3F24) - 5446 + 3 * (v1 ^ 0x1508))) ^ v1)))();
}

uint64_t sub_1001799AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (v31)
  {
    v34 = 0;
  }

  else
  {
    v34 = v32;
  }

  return (*(v33 + 8 * (((1556 * (v30 ^ 0x545) + 1922) * v34) ^ v30)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_1001799EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v28 = a5 - 1;
  v29 = (a1 + v28);
  v30 = __ROR8__((a1 + v28) & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = v13 - (((v22 - v30) | v12) + ((v30 + a4) | v10));
  v32 = v31 ^ v9;
  v33 = v31 ^ v11;
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xE49D77DF873DBF7ELL;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = ((v14 & (2 * (v36 + v35))) - (v36 + v35) + v8) ^ v15;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v23;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v25;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((v43 + v42) & v18 ^ a3) + ((v43 + v42) ^ a2) - (((v43 + v42) ^ a2) & v18)) ^ v17;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ v21;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = *(v26 - 216);
  *(v27 + v28 + v24) = (((v48 + v47) ^ v20) >> (8 * (v29 & 7u))) ^ *v29;
  return (*(v19 + 8 * (((v28 == 0) * a8) ^ (v16 + 2920))))(v49);
}

uint64_t sub_100179AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a17 = v20 + v19 + 1317436891 * ((2 * (&a15 & 0x6886A508) - &a15 + 393829104) ^ 0xA77AC286) + 2584;
  a15 = &a10;
  v21 = (*(v17 + 8 * (v20 + v19 + 4067)))(&a15);
  return (*(v17 + 8 * ((12458 * (a16 == v18 + v19 - 1459346795 - 1082)) ^ (v19 + v20))))(v21);
}

uint64_t sub_100179C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int8x16_t a43, int8x16_t a44, int8x16_t a45, int8x16_t a46, int8x16_t a47, int8x16_t a48, int64x2_t a49, int8x16_t a50, int8x16_t a51, int8x16_t a52, int8x16_t a53, int64x2_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int8x16_t a59)
{
  v66 = v60 + v59 - a37;
  v67.i64[0] = v66 - 5;
  v67.i64[1] = v66 - 6;
  v68.i64[0] = v66 - 3;
  v68.i64[1] = v66 - 4;
  v69.i64[0] = v66 - 1;
  v69.i64[1] = v66 - 2;
  v70.i64[0] = v66 - 7;
  v70.i64[1] = v66 + (((v61 - 205) | 0x10u) ^ 0xFFFFFFFFFFFFF7ECLL);
  v71 = vandq_s8(v70, v63);
  v72 = vandq_s8(v69, v63);
  v73 = vandq_s8(v68, v63);
  v74 = vandq_s8(v67, v63);
  v75 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v76 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v77 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v78 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v79 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v78), *&STACK[0x210]), vorrq_s8(vaddq_s64(v78, *&STACK[0x270]), *&STACK[0x230]));
  v80 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v77), *&STACK[0x210]), vorrq_s8(vaddq_s64(v77, *&STACK[0x270]), *&STACK[0x230]));
  v81 = vsubq_s64(a54, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v75), *&STACK[0x210]), vorrq_s8(vaddq_s64(v75, *&STACK[0x270]), *&STACK[0x230])));
  v82 = vsubq_s64(a54, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v76), *&STACK[0x210]), vorrq_s8(vaddq_s64(v76, *&STACK[0x270]), *&STACK[0x230])));
  v83 = veorq_s8(v82, a53);
  v84 = veorq_s8(v81, a53);
  v85 = veorq_s8(v81, a52);
  v86 = veorq_s8(v82, a52);
  v87 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL), v85), a51);
  v88 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v86), a51);
  v89 = vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL);
  v90 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v91 = veorq_s8(v87, v89);
  v92 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v91);
  v94 = vaddq_s64(v92, v90);
  v95 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v94, v94), a50), v94), a49), a48);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v93, v93), a50), v93), a49), a48);
  v97 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v98 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v99 = veorq_s8(v95, v97);
  v100 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v99);
  v102 = veorq_s8(vaddq_s64(v100, v98), a47);
  v103 = veorq_s8(v101, a47);
  v104 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v105 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v106 = veorq_s8(v102, v104);
  v107 = vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v106);
  v109 = veorq_s8(vaddq_s64(v107, v105), *&STACK[0x200]);
  v110 = veorq_s8(v108, *&STACK[0x200]);
  v111 = vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL);
  v112 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v113 = veorq_s8(v109, v111);
  v114 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v113);
  v116 = vaddq_s64(v114, v112);
  v117 = veorq_s8(v116, a59);
  v118 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v116, v65), a46), v117), vandq_s8(v117, v65));
  v119 = veorq_s8(v115, a59);
  v120 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v115, v65), a46), v119), vandq_s8(v119, v65)), a45);
  v121 = veorq_s8(v118, a45);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v123 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), a44);
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v123), a44);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v128 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v130 = vdupq_n_s64(0x38uLL);
  v131 = vsubq_s64(a54, v80);
  v167.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v129, v127), a43), vnegq_s64(vandq_s8(vshlq_n_s64(v67, 3uLL), v130)));
  v167.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v128, v126), a43), vnegq_s64(vandq_s8(vshlq_n_s64(v68, 3uLL), v130)));
  v132 = veorq_s8(v131, a53);
  v133 = veorq_s8(v131, a52);
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), a51);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v136, v136), a50), v136), a49), a48);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), a47);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), *&STACK[0x200]);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142);
  v144 = veorq_s8(v143, a59);
  v145 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v143, v65), a46), v144), vandq_s8(v144, v65)), a45);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v147 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), a44);
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL)));
  v149 = vsubq_s64(a54, v79);
  v167.val[0] = vshlq_u64(veorq_s8(v148, a43), vnegq_s64(vandq_s8(vshlq_n_s64(v69, 3uLL), v130)));
  v150 = veorq_s8(v149, a53);
  v151 = veorq_s8(v149, a52);
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), a51);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153);
  v155 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v154, v154), a50), v154), a49), a48);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156), a47);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v159 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158), *&STACK[0x200]);
  v160 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v161 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160);
  v162 = veorq_s8(v161, a59);
  v163 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v161, v65), a46), v162), vandq_s8(v162, v65)), a45);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), a44);
  v167.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL))), a43), vnegq_s64(vandq_s8(vshlq_n_s64(v70, 3uLL), v130)));
  *(a17 + a21 + a22 + v59 - a37) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v167, v64)), *(v66 - 8));
  return (*(*(v62 - 256) + 8 * ((965 * (a37 - (v59 & 0xFFFFFFF8) == -8)) ^ v61)))(a1, a2, v66 - 4, v66 - 5, 56, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

void sub_10017A27C(int a1@<W8>)
{
  v4 = (a1 + 449) | 0x149;
  (*(v2 + 8 * (a1 ^ 0x2DC1)))();
  *(v1 + 24) = 0;
  (*(v2 + 8 * (v4 + 6709)))(v1);
  *(v3 - 160) = 0;
  JUMPOUT(0x1001AE344);
}

uint64_t sub_10017A2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34)
{
  v36 = *(&off_100315F70 + (v34 ^ 0xFD0));
  v37 = *v36;
  a17 = -39 * **v36 + 72;
  a18 = -39 * v37[1] + 72;
  a19 = v37[2] * (((v34 - 111) & 0xDF) - 125) + 72;
  a20 = -39 * v37[3] + 72;
  a21 = -39 * v37[4] + 72;
  a22 = -39 * v37[5] + 72;
  a23 = -39 * v37[6] + 72;
  a24 = -39 * v37[7] + 72;
  a25 = -39 * v37[8] + 72;
  a26 = -39 * v37[9] + 72;
  a27 = -39 * v37[10] + 72;
  a28 = -39 * v37[11] + 72;
  a29 = -39 * v37[12] + 72;
  a30 = -39 * v37[13] + 72;
  a31 = -39 * v37[14] + 72;
  a32 = -39 * v37[15] + 72;
  a33 = -39 * v37[16] + 72;
  a34 = -39 * *(*v36 + 17) + 72;
  v38 = (*(v35 + 8 * (v34 + 5815)))(&a17);
  return (*(v35 + 8 * ((31 * (v38 != 0)) ^ v34)))(v38, v38, v39, v40, v41, v42, v43, v44);
}

void sub_10017A400(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(a1 + 24) == 0;
  }

  else
  {
    v2 = 1;
  }

  v4 = v2 || *(a1 + 40) == 0;
  v1 = *(a1 + 48) ^ (2048652491 * (((a1 | 0x338718C6) - (a1 | 0xCC78E739) - 864491719) ^ 0x82368FC3));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10017A540@<X0>(int a1@<W8>)
{
  result = (*(v2 + 8 * (a1 ^ 0x2C29)))();
  *(v1 + 384) = 0;
  return result;
}

void sub_10017A568(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, unsigned int a11)
{
  v15 = (v11 + 1894) | 0xD4;
  *v13 = a1;
  *v12 = a2;
  a10 = a3;
  a11 = (v15 + 5053) ^ (1824088897 * ((676816358 - (&a9 | 0x285765E6) + (&a9 | 0xD7A89A19)) ^ 0x8FC1497B));
  (*(v14 + 8 * (v15 + 6319)))(&a9);
  JUMPOUT(0x10017A5F4);
}

uint64_t sub_10017A698@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X4>, int a3@<W8>)
{
  *v8 = a1;
  *a2 = a3;
  v6 = v3 - 2051;
  v12 = v9;
  v13 = (v3 + 2831) ^ (1824088897 * ((2 * (&v11 & 0x4EF6F650) - &v11 - 1324807763) ^ 0xE960DACF));
  (*(v4 + 8 * (v3 + 4097)))(&v11);
  v12 = v10;
  v13 = (v6 + 4882) ^ (1824088897 * ((2 * (&v11 & 0x1AF2AA28) - &v11 + 1695372757) ^ 0x3D6486B7));
  (*(v4 + 8 * (v6 ^ 0x2804)))(&v11);
  return (v5 - 16257999);
}

uint64_t sub_10017A90C()
{
  result = (*(v1 + 8 * (v0 ^ 0x33A4)))();
  *(v3 + 16) = v4;
  return result;
}

uint64_t sub_10017A97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = v66 + a9;
  v73 = v66 - 1;
  v74 = __ROR8__((v65 + v73) & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = (v70 | (2 * (v74 - 0x6AF7234D0CC131D5))) - (v74 - 0x6AF7234D0CC131D5) + (((v67 - 1369) | 0x16C9u) ^ 0x731CB210FB4C52ACLL);
  v76 = v75 ^ v68;
  v77 = v75 ^ v69;
  v78 = __ROR8__(v76, 8);
  v79 = ((a1 | (2 * (v78 + v77))) - (v78 + v77) + 0xC008A9762A8A187) ^ 0x176202B71A6AE107;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = __ROR8__(v79, 8);
  v82 = __ROR8__((((2 * (v81 + v80)) & 0xB7A19A6BE498442ALL) - (v81 + v80) + 0x242F32CA0DB3DDEALL) ^ a2, 8);
  v83 = (((2 * (v81 + v80)) & 0xB7A19A6BE498442ALL) - (v81 + v80) + 0x242F32CA0DB3DDEALL) ^ a2 ^ __ROR8__(v80, 61);
  v84 = (v82 + v83) ^ 0x5963B6C555D97F1FLL;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = (__ROR8__(v84, 8) + v85) ^ 0x61459D2AF01F24F7;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ 0x64C31C027084DE6CLL;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (v90 + v89 - (a3 & (2 * (v90 + v89))) + a4) ^ a5;
  v92 = __ROR8__((v72 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v93 = __ROR8__(v91, 8) + (v91 ^ __ROR8__(v89, 61));
  v94 = (v92 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v95 = (__ROR8__((v92 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v94) ^ 0xE49D77DF873DBF7ELL;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = (__ROR8__(v95, 8) + v96) ^ 0xF5A2F1B9B5D0B209;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = (__ROR8__(v97, 8) + v98) ^ 0x5963B6C555D97F1FLL;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0x61459D2AF01F24F7;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0x64C31C027084DE6CLL;
  v104 = __ROR8__(v103, 8);
  v105 = v103 ^ __ROR8__(v102, 61);
  v106 = __ROR8__((v104 + v105) ^ v71, 8) + ((v104 + v105) ^ v71 ^ __ROR8__(v105, 61));
  *(v72 + 9) = ((v93 ^ 0xAB3042D228875C41) >> (8 * ((v65 + v73) & 7))) ^ (((v106 - (a6 & (2 * v106)) + a7) ^ a8) >> (8 * ((v72 + 9) & 7))) ^ *(v65 + v73);
  return (*(a65 + 8 * ((37 * (v73 == 0)) ^ v67)))();
}

uint64_t sub_10017ABF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (a1 + v2 - 16);
  v6 = (a2 + v2 - 16);
  v7 = *v6;
  *(v5 - 1) = *(v6 - 1);
  *v5 = v7;
  return (*(v4 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * ((v3 - 1124) ^ 0x92B)) ^ v3)))();
}

uint64_t sub_10017AC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = a2 - 1;
  *(v9 + v11) = *(v5 + v11) ^ *(v7 + (v11 & 0xF)) ^ *(v8 + (v11 & 0xF) + 1) ^ ((v11 & 0xF) * (((a5 + 72) & 0xEF) + 9)) ^ *(v6 + (v11 & 0xF) + 1) ^ 0x3C;
  return (*(v10 + 8 * ((213 * (v11 != 0)) ^ (a5 - 5948))))();
}

uint64_t sub_10017AD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, int a20)
{
  a19 = 476323082 - 1710126949 * (((&a19 | 0x9F6D22AA) - (&a19 & 0x9F6D22AA)) ^ 0xAD76793A);
  v21 = (*(v20 + 77088))(&a19);
  return (*(v20 + 8 * ((5494 * (a20 == 16257999)) ^ 0x434u)))(v21);
}

void sub_10017AE84(int a1@<W2>, int a2@<W7>, int a3@<W8>)
{
  v5 = STACK[0x56C];
  LODWORD(STACK[0x414]) = LODWORD(STACK[0x2DC]) + LODWORD(STACK[0x56C]) - ((((2 * LODWORD(STACK[0x56C])) ^ 0x8B839B43) + 263730824) ^ (((2 * LODWORD(STACK[0x56C])) ^ 0x67BA16E6) - 478037213) ^ (((2 * LODWORD(STACK[0x56C])) ^ 0xEC399C7F ^ (a3 - 2055)) + 1744969826));
  v6 = v3 - 883436870;
  v7 = STACK[0x55C];
  v8 = STACK[0x570];
  v9 = STACK[0x560];
  v10 = (a2 + LODWORD(STACK[0x55C]) - 105202417) ^ (LODWORD(STACK[0x570]) - 1007845593);
  v11 = (a1 + LODWORD(STACK[0x560])) ^ v6;
  v12 = LODWORD(STACK[0x570]) + v5;
  v13 = v4 + 1607544091 + v6;
  LODWORD(STACK[0x400]) = LODWORD(STACK[0x2CC]) - (((v10 ^ 0x1F812FE0) + 372228261) ^ ((v10 ^ 0xB8596B5B) - 1309178848) ^ ((v10 ^ 0xA7D844BB) - 1367954432));
  LODWORD(STACK[0x41C]) = LODWORD(STACK[0x2A4]) + v6;
  v14 = v7 - 754109527 - (v12 + 599698498);
  LODWORD(STACK[0x404]) = LODWORD(STACK[0x28C]) - v13;
  LODWORD(STACK[0x584]) = v8 - 1007845593 - (-1353808025 - v12) - 1306416385;
  LODWORD(STACK[0x590]) = v6 + v13;
  v15 = v9 - 333659870 - v13 + 1593293593;
  LODWORD(STACK[0x580]) = v12 + 284451258;
  LODWORD(STACK[0x418]) = LODWORD(STACK[0x2C0]) - v8 - 1185058536;
  LODWORD(STACK[0x57C]) = v14 + 1593293593;
  LODWORD(STACK[0x58C]) = (v7 - 754109527) ^ (v12 + 599698498) ^ v10 ^ 0x56463603 ^ (v14 - ((2 * (v14 + 1593293593)) & 0xAC8C6C06) - 1254231780);
  LODWORD(STACK[0x5A8]) = v13;
  LODWORD(STACK[0x56C]) = v15;
  LODWORD(STACK[0x588]) = v13 ^ (v9 - 333659870) ^ v11 ^ v15;
  STACK[0x330] = STACK[0x348];
  JUMPOUT(0x10017B100);
}

uint64_t sub_10017B108@<X0>(int a1@<W3>, int a2@<W4>, int a3@<W6>, int a4@<W7>, int a5@<W8>)
{
  STACK[0x358] = v5;
  LODWORD(STACK[0x438]) = 0;
  LODWORD(STACK[0x3F0]) = v14 - v7;
  LODWORD(STACK[0x3F4]) = v11 + ((a5 - 2010) ^ (a5 - 930) ^ 0x3BDCC673);
  LODWORD(STACK[0x3FC]) = v6 + a4 - 1589807827;
  LODWORD(STACK[0x410]) = v8 + v13 - 1505105975;
  LODWORD(STACK[0x3F8]) = (((a3 ^ 0x1C4D19AF) - 474814895) ^ ((a3 ^ 0x4FD54AD4) - 1339378388) ^ ((a3 ^ 0x8F48F808) + 1891043320)) - v15 - 399201198;
  LODWORD(STACK[0x3E8]) = v17 + 1668384471;
  LODWORD(STACK[0x40C]) = v16 + a1 - 1955212092;
  LODWORD(STACK[0x3D8]) = a2;
  LODWORD(STACK[0x408]) = a2 + ((55 - a2) & 0x3F) + 9;
  v18 = *(v12 + 8 * (a5 ^ (862 * (STACK[0x420] & 1))));
  LODWORD(STACK[0x370]) = v10;
  LODWORD(STACK[0x3E0]) = v10;
  return v18((v9 - 62195251));
}

uint64_t sub_10017B2F8(uint64_t a1)
{
  v4 = (*(v3 + 8 * (v2 + 644)))(a1, 3222665066);
  *v1 = v4;
  return (*(v3 + 8 * (((v4 == 0) * (((2 * v2) ^ 0x5CE4) + ((v2 + 845855968) & 0xCD952FFF) - 10919)) ^ v2)))();
}

uint64_t sub_10017B3C0(int a1)
{
  v5 = *(v2 + 40);
  STACK[0x2C8] = v2;
  v6 = *(v2 + 8);
  *(v3 - 140) = a1 ^ 0x1267;
  *(v3 - 112) = veorq_s8(*v5, xmmword_1002BF660);
  *(v3 - 152) = v4;
  if (v4)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  v9 = *(v1 + 8 * (((2 * v8) | (4 * v8)) ^ a1));
  *(v3 - 144) = -42900;
  return v9();
}

uint64_t sub_10017B580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, uint64_t a22)
{
  v28 = 1875091903 * ((v22 & 0x6F4E0E99 | ~(v22 | 0x6F4E0E99)) ^ 0xA6C472E5);
  a22 = a14;
  a20 = (v25 ^ 0xFE5DB6AE) + ((2 * v25) & 0xFCBB6D5C) + 566165500 + v28;
  LODWORD(a21) = v27 + 4248 + v28;
  (*(v26 + 8 * (v27 + 6169)))(&a19);
  a21 = v24 + 956911519 * ((v22 - 2 * (v22 & 0x7A8DF182866035E5) + 0x7A8DF182866035E5) ^ 0x3FBB845E6CF145E0) - (((v27 - 2400) + 0x39AD4E2AD03EBD64) & (2 * v24)) - 0x632958EA97E09F34;
  a22 = a14;
  a19 = (v27 - 2454) ^ (956911519 * ((v22 - 2 * (v22 & 0x866035E5) - 2040515099) ^ 0x6CF145E0));
  (*(v26 + 8 * (v27 + 6123)))(&a19);
  v29 = 1875091903 * ((v22 - 206091250 - 2 * (v22 & 0xF3B74C0E)) ^ 0xC5C2CF8D);
  a22 = a14;
  a20 = (v23 ^ 0x227EBFAF) + ((2 * v23) & 0x44FD7F5E) - 39979269 + v29;
  LODWORD(a21) = v27 + 4248 + v29;
  v30 = (*(v26 + 8 * (v27 ^ 0x2839)))(&a19);
  return (*(v26 + 8 * ((11825 * (a19 == 16257999)) ^ v27)))(v30);
}

uint64_t sub_10017B848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, int a17, uint64_t a18, uint64_t a19)
{
  v24 = 1875091903 * (((&a15 ^ 0xC8B56B07) & 0xCDD1B12B | ~(&a15 ^ 0xC8B56B07 | 0xCDD1B12B)) ^ 0xCCEEA650);
  a18 = a11;
  a16 = (v21 ^ 0x2E5EF6BF) + ((2 * v21) & 0x5CBDED7E) - 239222805 + v24;
  a17 = v24 + v23 + 3021;
  (*(v22 + 8 * (v23 ^ 0x37F2)))(&a15);
  v25 = 1824088897 * ((2 * (&a15 & 0x7F9C64C0) - &a15 - 2140955843) ^ 0xD80A485F);
  a18 = v19;
  a19 = a11;
  a17 = (v20 ^ 0xCFEEFEEA) - v25 + v23 - 1333 + (((4 * (v23 ^ 0x16C9)) ^ 0x9FDDEF8C) & (2 * v20)) + 2125848182;
  a15 = v25 + v23 - 946;
  v26 = (*(v22 + 8 * (v23 + 4928)))(&a15);
  return (*(v22 + 8 * ((1839 * (a16 == 16257999)) ^ v23)))(v26);
}

uint64_t sub_10017BB2C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  LODWORD(STACK[0x370]) = a1 + 4;
  STACK[0x3B0] = STACK[0x7C0] + 24;
  LODWORD(STACK[0x2D0]) = LODWORD(STACK[0xA14]) ^ 0xD6A561FA;
  v57 = LOWORD(STACK[0xA0E]);
  LODWORD(STACK[0x360]) = v57;
  LODWORD(STACK[0x340]) = v57 ^ 0x4CF9;
  STACK[0x3A0] = STACK[0x690] + 24;
  v58 = LOWORD(STACK[0xADE]);
  LODWORD(STACK[0x350]) = v58;
  LODWORD(STACK[0x330]) = v58 ^ 0xFFFFA60A;
  LODWORD(STACK[0x2C0]) = LODWORD(STACK[0xAE4]) ^ 0xD6A561FA;
  STACK[0x390] = STACK[0x7F0] + 24;
  STACK[0x380] = STACK[0x768] + 24;
  v59 = STACK[0xA10];
  LODWORD(STACK[0x300]) = STACK[0xA10];
  LODWORD(STACK[0x320]) = v59 ^ 0xD6A561FA;
  v60 = STACK[0xAE0];
  LODWORD(STACK[0x2F0]) = STACK[0xAE0];
  LODWORD(STACK[0x310]) = v60 ^ 0xD6A561FA;
  LODWORD(STACK[0x2E0]) = v56 - 4372;
  return sub_1001398B4(0x5963B6C555D97F1FLL, 0x2A5638492DD55EAELL, 169, 0xEAD4E3DB691550A9, 0x4C48AAE1C333D048, 0x64C31C027084DE6CLL, 0x61459D2AF01F24F7, 0x5EA5347A8335DC6CLL, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_10017BE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x5F0];
  STACK[0x5D0] = *(a4 + 8 * v4);
  return sub_100261B54(a4, v5);
}

uint64_t sub_10017BE7C@<X0>(int a1@<W8>)
{
  v1 = *(STACK[0x760] + 24);
  v2 = __ROR8__((v1 + 10) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5;
  v3 = __ROR8__(v2 ^ 0x49E9423B6F16E7D2, 8);
  v2 ^= 0xE1AFA7ACF6E0968ELL;
  v4 = (v3 + v2) ^ 0xE49D77DF873DBF7ELL;
  v5 = v4 ^ __ROR8__(v2, 61);
  v6 = (__ROR8__(v4, 8) + v5) ^ 0xF5A2F1B9B5D0B209;
  v7 = v6 ^ __ROR8__(v5, 61);
  v8 = __ROR8__(v6, 8);
  v9 = (v8 + v7 - ((2 * (v8 + v7)) & 0x512B57FB6494046ALL) + 0x2895ABFDB24A0235) ^ 0x71F61D38E7937D2ALL;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x61459D2AF01F24F7;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((a1 + 1795111658) & 0x9500D6FF) + 0x32B9C33CFFC0B970) ^ STACK[0x948];
  v15 = (((v13 + v12) ^ 0x79C11BFC4894BC72 | 0xC3906BA06D3A2EC5) - ((v13 + v12) ^ 0x79C11BFC4894BC72 | 0x3C6F945F92C5D13ALL) + 0x3C6F945F92C5D13ALL) ^ 0xDE926C5E552A4CDBLL;
  v16 = v15 ^ __ROR8__(v12, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x1A2AEBE44253AF03;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = *(STACK[0x3E8] + 8 * a1);
  v1[10] = (((((2 * (v19 + v18)) | 0xC38C36871CFCF294) - (v19 + v18) - 0x61C61B438E7E794ALL) ^ 0xCAF65991A6F9250BLL) >> (8 * ((v1 + 10) & 7u))) ^ HIBYTE(v14) ^ 0x75;
  v21 = __ROR8__((v1 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = v21 - ((2 * v21 + 0x2A11B965E67D9C56) & 0x89AD15096A95E46ELL) - 0x262098C857763F9ELL;
  v23 = v22 ^ 0xD3FC8BFDA5C15E5;
  v22 ^= 0xA5792D2843AA64B9;
  v24 = __ROR8__(v23, 8);
  v25 = (((2 * (v24 + v22)) & 0x172EA68DBB7EC94) - (v24 + v22) + 0x7F468ACB922409B5) ^ 0x9BDBFD141519B6CBLL;
  v26 = v25 ^ __ROR8__(v22, 61);
  v27 = __ROR8__(v25, 8);
  v28 = __ROR8__((((2 * (v27 + v26)) & 0xD4F2B43A3958542) - (v27 + v26) - 0x6A795A1D1CAC2A2) ^ 0xCFA9BE79BE58F57, 8);
  v29 = (((2 * (v27 + v26)) & 0xD4F2B43A3958542) - (v27 + v26) - 0x6A795A1D1CAC2A2) ^ 0xCFA9BE79BE58F57 ^ __ROR8__(v26, 61);
  v30 = (v28 + v29) ^ 0x5963B6C555D97F1FLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((v32 + v31) | 0x3A57A17B6EDF06BLL) - ((v32 + v31) | 0xFC5A85E849120F94) - 0x3A57A17B6EDF06CLL) ^ 0x62E0E73D46F2D49CLL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x64C31C027084DE6CLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((v37 + v36) | 0x3F31863D75651161) - ((v37 + v36) | 0xC0CE79C28A9AEE9ELL) - 0x3F31863D75651162) ^ 0x251B6DD93736BE62;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v38, 8);
  v1[11] = (((((2 * (v40 + v39)) | 0xAB41BFF64D60CE6CLL) - (v40 + v39) - 0x55A0DFFB26B06736) ^ 0xFE909D290E373B77) >> (8 * ((v1 + 11) & 7u))) ^ BYTE6(v14) ^ 0x30;
  v41 = (__ROR8__((v1 + 12) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v42 = __ROR8__(v41 ^ 0x4DE9423B6F16E7D2, 8);
  v41 ^= 0xE5AFA7ACF6E0968ELL;
  v43 = (v42 + v41 - ((2 * (v42 + v41)) & 0xA684DABE1F7F2120) - 0x2CBD92A0F0406F70) ^ 0x37DF1A8088822FEELL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (((v45 + v44) | 0x2D1013F9AFD52057) - ((v45 + v44) | 0xD2EFEC06502ADFA8) - 0x2D1013F9AFD52058) ^ 0xD8B2E2401A05925ELL;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x5963B6C555D97F1FLL;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (v50 + v49 - ((2 * (v50 + v49)) & 0x505C9B69C721B602) + 0x282E4DB4E390DB01) ^ 0x496BD09E138FFFF6;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x64C31C027084DE6CLL;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0x1A2AEBE44253AF03;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v1[12] = (((((2 * (v57 + v56)) & 0xA6AF603E61524BD2) - (v57 + v56) + 0x2CA84FE0CF56DA16) ^ 0x87980D32E7D18657) >> (8 * ((v1 + 12) & 7u))) ^ BYTE5(v14) ^ 0x26;
  v58 = __ROR8__((v1 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v59 = ((2 * (v58 - 0x6AF7234D0CC131D5)) | 0xBCD338F7A72AF0E2) - (v58 - 0x6AF7234D0CC131D5) - 0x5E699C7BD3957871;
  v60 = v59 ^ 0x1780DE40BC839FA3;
  v59 ^= 0xBFC63BD72575EEFFLL;
  v61 = __ROR8__(v60, 8);
  v62 = (((v61 + v59) | 0x524D786A2DAA5236) - ((v61 + v59) | 0xADB28795D255ADC9) - 0x524D786A2DAA5237) ^ 0xB6D00FB5AA97ED48;
  v63 = v62 ^ __ROR8__(v59, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((2 * (v64 + v63)) | 0xC461725543BD74EALL) - (v64 + v63) - 0x6230B92AA1DEBA75) ^ 0x97924893140E087CLL;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ 0x5963B6C555D97F1FLL;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0x61459D2AF01F24F7;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (((v71 + v70) | 0xD6A77E9273FF605BLL) - ((v71 + v70) | 0x2958816D8C009FA4) + 0x2958816D8C009FA4) ^ 0xB2646290037BBE37;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = __ROR8__(v72, 8);
  v75 = (v74 + v73 - ((2 * (v74 + v73)) & 0x9E7D2340626A9232) - 0x30C16E5FCECAB6E7) ^ 0xD5147A447366E61ALL;
  v1[13] = (((__ROR8__(v75, 8) + (v75 ^ __ROR8__(v73, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v1 + 13) & 7u))) ^ BYTE4(v14) ^ 0x9B;
  v76 = __ROR8__((v1 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v77 = v76 - ((2 * v76 + 0x2A11B965E67D9C56) & 0x20559374910370F8) - 0x5ACC5992C43F7959;
  v78 = v77 ^ 0x59C38B8127975FAELL;
  v77 ^= 0xF1856E16BE612EF2;
  v79 = (__ROR8__(v78, 8) + v77) ^ 0xE49D77DF873DBF7ELL;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0xF5A2F1B9B5D0B209;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x5963B6C555D97F1FLL;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8);
  v86 = __ROR8__((v85 + v84 - ((2 * (v85 + v84)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL, 8);
  v87 = (v85 + v84 - ((2 * (v85 + v84)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL ^ __ROR8__(v84, 61);
  v88 = (v86 + v87 - ((2 * (v86 + v87)) & 0xBB2E9B3140AA9E2CLL) + 0x5D974D98A0554F16) ^ 0x3954519AD0D1917ALL;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0x1A2AEBE44253AF03;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  v1[14] = (((((v92 + v91) | 0x6B6AF9C6B406ECE7) - ((v92 + v91) | 0x949506394BF91318) - 0x6B6AF9C6B406ECE8) ^ 0xC05ABB149C81B0A6) >> (8 * ((v1 + 14) & 7u))) ^ BYTE3(v14) ^ 0xB0;
  v93 = __ROR8__((v1 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v94 = ((v93 - 0x6AF7234D0CC131D5) & 0xF89A3C6BA21CFB5FLL ^ 0x40000C09A010C112) + ((v93 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) - (((v93 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) & 0xF89A3C6BA21CFB5FLL);
  v95 = v94 ^ 0x8A84C36C7E52240;
  v94 ^= 0xA0EEA9A15E13531CLL;
  v96 = (__ROR8__(v95, 8) + v94) ^ 0xE49D77DF873DBF7ELL;
  v97 = v96 ^ __ROR8__(v94, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ 0xF5A2F1B9B5D0B209;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = __ROR8__(v98, 8);
  v101 = __ROR8__((((2 * (v100 + v99)) & 0x7EC0B560615BD22) - (v100 + v99) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71, 8);
  v102 = (((2 * (v100 + v99)) & 0x7EC0B560615BD22) - (v100 + v99) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71 ^ __ROR8__(v99, 61);
  v103 = (((v101 + v102) & 0xF4B1E271DC896087 ^ 0xA0425158896006) + ((v101 + v102) ^ 0xFE51A922A5729599) - (((v101 + v102) ^ 0xFE51A922A5729599) & 0xF4B1E271DC896087)) ^ 0x6BA5D67989E4D1E9;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = __ROR8__(v103, 8);
  v106 = (((2 * (v105 + v104)) | 0x81910D2EFE6F15ACLL) - (v105 + v104) - 0x40C886977F378AD6) ^ 0x240B9A950FB354BALL;
  v107 = v106 ^ __ROR8__(v104, 61);
  v108 = __ROR8__(v106, 8);
  v109 = (((v108 + v107) | 0x452FEAF2D8983268) - ((v108 + v107) | 0xBAD0150D2767CD97) - 0x452FEAF2D8983269) ^ 0x5F0501169ACB9D6BLL;
  v110 = v109 ^ __ROR8__(v107, 61);
  v111 = __ROR8__(v109, 8);
  v1[15] = (((v111 + v110 - ((2 * (v111 + v110)) & 0x5CD5F962F5DFE9B2) - 0x5195034E85100B27) ^ 0x55ABE635268A898) >> (8 * ((v1 + 15) & 7u))) ^ BYTE2(v14) ^ 0x93;
  v112 = __ROR8__((v1 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v113 = -2 - (((0x6AF7234D0CC131D4 - v112) | 0xB9373BCC9E95648DLL) + ((v112 - 0x6AF7234D0CC131D5) | 0x46C8C433616A9B72));
  v114 = v113 ^ 0xF0DE79F7F183835FLL;
  v113 ^= 0x58989C606875F203uLL;
  v115 = (__ROR8__(v114, 8) + v113) ^ 0xE49D77DF873DBF7ELL;
  v116 = v115 ^ __ROR8__(v113, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0xF5A2F1B9B5D0B209;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0x5963B6C555D97F1FLL;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = __ROR8__(v119, 8);
  v122 = (((2 * (v121 + v120)) & 0x24C3B6EDA515D42ALL) - (v121 + v120) + 0x6D9E24892D7515EALL) ^ 0xCDBB9A3DD6A311DLL;
  v123 = v122 ^ __ROR8__(v120, 61);
  v124 = __ROR8__(v122, 8);
  v125 = (((v124 + v123) | 0x3A521DF821A27A3ELL) - ((v124 + v123) | 0xC5ADE207DE5D85C1) - 0x3A521DF821A27A3FLL) ^ 0x5E9101FA5126A452;
  v126 = v125 ^ __ROR8__(v123, 61);
  v127 = (__ROR8__(v125, 8) + v126) ^ 0x1A2AEBE44253AF03;
  v128 = __ROR8__(v127, 8);
  v129 = __ROR8__(v126, 61);
  LOBYTE(v126) = (((((2 * (v128 + (v127 ^ v129))) | 0x4D724CAE0D8F11E6) - (v128 + (v127 ^ v129)) + 0x5946D9A8F938770DLL) ^ 0xD8964852E40D4B2uLL) >> (8 * ((v1 + 16) & 7u))) ^ BYTE1(v14) ^ 0x97;
  v130 = __ROR8__((v1 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v1[16] = v126;
  v131 = ((2 * ((v130 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4)) | 0x301A5F137AACAE0ELL) - ((v130 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4) - 0x180D2F89BD565707;
  v132 = v131 ^ 0xDE90BDF0289CA71;
  v131 ^= 0xA5AFEE489B7FBB2DLL;
  v133 = __ROR8__(v132, 8);
  v134 = (((2 * (v133 + v131)) | 0x692CEF71A0CBBC0ELL) - (v133 + v131) - 0x349677B8D065DE07) ^ 0xD00B006757586179;
  v135 = v134 ^ __ROR8__(v131, 61);
  v136 = __ROR8__(v134, 8);
  v137 = __ROR8__((((2 * (v136 + v135)) & 0xFD81E0C09A12569ALL) - (v136 + v135) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL, 8);
  v138 = (((2 * (v136 + v135)) & 0xFD81E0C09A12569ALL) - (v136 + v135) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL ^ __ROR8__(v135, 61);
  v139 = (v137 + v138) ^ 0x5963B6C555D97F1FLL;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ 0x61459D2AF01F24F7;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = __ROR8__(v141, 8);
  v144 = (v143 + v142 - ((2 * (v143 + v142)) & 0x3076304A369A11B8) - 0x67C4E7DAE4B2F724) ^ 0xFCF804276BC9D6B0;
  v145 = v144 ^ __ROR8__(v142, 61);
  v146 = __ROR8__(v144, 8);
  v147 = (v146 + v145 - ((2 * (v146 + v145)) & 0x43F5BC2EBD15E7BELL) + 0x21FADE175E8AF3DFLL) ^ 0x3BD035F31CD95CDCLL;
  v1[17] = (((__ROR8__(v147, 8) + (v147 ^ __ROR8__(v145, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v1 + 17) & 7u))) ^ v14 ^ 8;
  return v20();
}

uint64_t sub_10017CE38()
{
  v1 = STACK[0x248];
  STACK[0x288] = v0;
  return v1();
}

uint64_t sub_10017CE88@<X0>(unsigned int a1@<W8>, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  *a2 = a9;
  if (a4)
  {
    v16 = a15 == ((a1 - 1929705746) & 0x1304DFB3 ^ 0xBB3);
  }

  else
  {
    v16 = 1;
  }

  v18 = v16 || a5 == 0;
  return (*(v15 + 8 * ((v18 * ((a1 + 742242934) & 0x13C2377C ^ 0x1757)) ^ a1)))();
}

uint64_t sub_10017CF14(uint64_t a1)
{
  v6 = *(v3 + 336);
  v7 = (v4 ^ 0x3D3) + *(a1 + 4) - v1 + 92613343;
  if (v6 > 0xDA137BF1 != v7 < 0x25EC840E)
  {
    v8 = v6 > 0xDA137BF1;
  }

  else
  {
    v8 = v6 + 636257294 > v7;
  }

  return (*(v2 + 8 * (((2 * ((v5 ^ v8) & 1)) & 0xF7 | (8 * ((v5 ^ v8) & 1))) ^ v4)))();
}

uint64_t sub_10017CF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (((v3 + 82) | 0x13) ^ 0xBCC)) ^ v3)))();
}

uint64_t sub_10017D080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v72 == 16257999)
  {
    v75 = STACK[0x568];
    v76 = *(STACK[0x568] + 8);
    v77 = STACK[0x768];
    v77[1] = v76;
    *v77 = *v75;
    return (*(v71 + 8 * (((v76 != 0) * (v73 - 14829 + (v73 ^ 0x35A0))) ^ (v73 - 1771))))();
  }

  else
  {
    if (v72 != 16215947)
    {
      JUMPOUT(0x10017D038);
    }

    return (*(v71 + 8 * (((*(STACK[0x730] + 8) != 0) * ((a71 - 1705) ^ (a71 - 1720))) ^ (a71 + 1292))))();
  }
}

uint64_t sub_10017D338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v24 = (&a14 ^ v19) * v20;
  a18 = 1032869496 - v24;
  a19 = v24 + v23 + 1674577092;
  a16 = a9;
  a17 = &a11;
  a15 = v24 - 2048112905;
  v25 = (*(v21 + 8 * (v23 + 7586)))(&a14);
  return (*(v21 + 8 * (((((v23 + 9) ^ (a14 == v22)) & 1) * (((v23 + 182) | 0x42) - 280)) ^ (v23 + 999))))(v25);
}

uint64_t sub_10017D3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a19 = 1317436891 * ((((2 * &a17) | 0xB7E861B2) - &a17 - 1542729945) ^ 0xEBF7A8AF) + 8154;
  a17 = &a15;
  v22 = (*(v20 + 77096))(&a17);
  return (*(v20 + 8 * ((97 * (a18 == v21)) | v19)))(v22);
}

uint64_t sub_10017D53C@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  STACK[0x370] = *(v3 + 8 * v2);
  STACK[0x8D8] = 0;
  return (*(v3 + 8 * (((STACK[0x8D8] < 0x20) * (a2 - 7322)) | a2)))(0x36271F876B115606, 0x832330CE2ACA7050, a1, 0x4DF528F2B3CBD6CCLL, 0x59056B86A61A1499, 0x66DD43F3C36B86, 0x43E0E1A1BF0A5C84, 1355549129);
}

uint64_t sub_10017D63C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = (*(v5 + 8 * (v4 ^ 0x2382)))(*(a2 + 4), 26, a1, v3, a1, va);
  return (*(v5 + 8 * ((3253 * (v4 + (v6 ^ 0xCDF93BEF) + ((2 * v6) & 0x9BF277DE) == -839302601)) ^ v4)))();
}

uint64_t sub_10017D75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14, int a15, unsigned int a16)
{
  a16 = 1317436891 * ((&a14 & 0xC2F71730 | ~(&a14 | 0xC2F71730)) ^ 0x8D0B70B9) + 8154;
  a14 = &a9;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((10097 * (a15 == v17)) ^ v18)))(v19);
}

uint64_t sub_10017D8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = ((v4 - 204776835) & 0x90DEB987 ^ 0xFFFFFFFFFFFFEE79) + v3;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((963 * (v6 == 0)) ^ (v2 + v4 + 2089))))();
}

uint64_t sub_10017D920@<X0>(int a1@<W8>)
{
  v6 = *v4;
  STACK[0x918] = *(v5 + 8 * a1);
  STACK[0x6D0] = v6;
  LODWORD(STACK[0x6CC]) = v3;
  STACK[0x448] = v1;
  return (*(v5 + 8 * (((v1 == 0) * (((v2 - 4852) | 0x1328) ^ 0x3D53)) ^ (v2 - 3498))))();
}

uint64_t sub_10017D970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = STACK[0x360];
  if (LODWORD(STACK[0x360]) == 17168)
  {
    return (*(a72 + 8 * ((a71 - 3363) ^ (6594 * (LODWORD(STACK[0x300]) == LODWORD(STACK[0x370]))))))();
  }

  if (v72 == 20706)
  {
    return (*(a72 + 8 * ((215 * ((((a71 - 5465) ^ (LODWORD(STACK[0xA50]) == 197499227)) & 1) == 0)) ^ (a71 - 3404))))();
  }

  if (v72 != 33980)
  {
    JUMPOUT(0x10017DB14);
  }

  return (*(a72 + 8 * ((124 * (STACK[0xA60] != ((STACK[0xA60] << ((a71 + 68) ^ 0xEu)) & 0xDCE86D8E))) ^ (a71 - 1684))))();
}

uint64_t sub_10017DAAC()
{
  if (v1 == 16257999)
  {
    v4 = STACK[0x5A8];
    v5 = *(STACK[0x5A8] + 8);
    v6 = STACK[0x7B0];
    v6[1] = v5;
    *v6 = *v4;
    return (*(v2 + 8 * ((222 * ((((v0 - 2899) ^ (v5 == 0)) & 1) == 0)) ^ (v0 - 2417))))();
  }

  else if (v1 == 16215947)
  {
    return (*(v2 + 8 * (((*(STACK[0x6E8] + 8) == 0) * ((v0 + 397) ^ (1622 * (v0 ^ 0x17CF)) ^ 7)) ^ (v0 - 915))))();
  }

  else
  {
    return (*(v2 + 8 * ((*(STACK[0x7B0] + 24) == 0) ^ (v0 + 433))))();
  }
}

uint64_t sub_10017DB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  STACK[0x390] = *(v40 + 24);
  v45 = (v38 - 1047) | 0x1001u;
  STACK[0x3B0] = v45;
  return (*(v44 + 8 * (v38 ^ (((v42 ^ v39) < 8) | (16 * ((v42 ^ v39) < 8))))))((((v38 + 1508) + 0x3FE7DFB718DD9EF2) ^ v43 ^ v45) + ((2 * v43) & 0x31BB4EF8) - 0x3FE7DFB718DDA77CLL, 0x817DC7D3C629B1F2, a3, a4, 0x9508DCB2F33ECE2BLL, 0x8BBA1DD6A2E83279, v41, 0x61459D2AF01F24F7, a9, a10, a11, a12, a13, a14, v40, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_10017DCEC()
{
  v3 = (*(v2 + 8 * (v0 + 3784)))(112, v1);
  v4 = STACK[0x330];
  STACK[0x3C0] = v3;
  return (*(v4 + 8 * (((((v0 + 1) ^ (v3 == 0)) & 1) * (((v0 - 1288361691) & 0x4CCAD5F6) - 5562)) ^ v0)))();
}

uint64_t sub_10017DD54@<X0>(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  return sub_100264A74();
}

uint64_t sub_10017DD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18)
{
  a18 = **(v18 + 8 * (v21 & 0xD0688E2F));
  a17 = v21 + 1710126949 * (&a17 ^ 0x321B5B90) + 4281;
  v22 = (*(v19 + 8 * (v21 ^ 0x34C8)))(&a17);
  return (*(v19 + 8 * (((*v20 == 113) * ((((v21 - 376824220) & 0x1675D5FE) + 1023) ^ 0x207)) ^ v21)))(v22);
}

uint64_t sub_10017DE14()
{
  if (v1)
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  return (*(v0 + 8 * (((16 * v4) | (32 * v4)) ^ 0x225Bu)))();
}

uint64_t sub_10017DE3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char *a22, int a23, unsigned int a24)
{
  a24 = v24 + 1317436891 * (((&a22 | 0x7C041EB) - &a22 + (&a22 & 0xF83FBE10)) ^ 0xB7C3D99D) + 3548;
  a22 = &a19;
  v27 = (*(v25 + 8 * (v24 + 5031)))(&a22);
  return (*(v25 + 8 * (((a23 == v26 + ((v24 + 2003987447) & 0x888D8F6F) + 1254) * (v24 - 3622)) ^ v24)))(v27);
}

uint64_t sub_10017DEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = STACK[0x558];
  v74 = STACK[0xAC8];
  v75 = 1824088897 * ((((v72 - 232) | 0x61143461) - ((v72 - 232) & 0x61143461)) ^ 0x397DE703);
  *(v72 - 200) = STACK[0x4B0];
  *(v72 - 192) = v73;
  *(v72 - 212) = 744414361 - v75 + a71;
  *(v72 - 208) = 1461241534 - v75;
  *(v72 - 216) = v75 - 1304320635;
  *(v72 - 224) = v74;
  v76 = (*(a72 + 8 * (a71 + 3618)))(v72 - 232);
  v77 = *(v72 - 232);
  LODWORD(STACK[0x94C]) = v77;
  return (*(a72 + 8 * (((v77 == 16257999) * ((185 * (a71 ^ 0x17C7)) ^ (a71 - 5315))) ^ (a71 + 798))))(v76);
}

uint64_t sub_10017DFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v43 = ((a8 ^ 0xDAA) - 992) | 0xA0;
  *(a42 + 32) = *(v42 - 224) + v43 - ((2 * *(v42 - 224)) & 0xD1AD73C4) - 388582339;
  v44 = *(v42 - 220);
  v45 = 1358806181 * ((((v42 - 192) | 0x51D6BFA2) - ((v42 - 192) & 0x51D6BFA2)) ^ 0x6EF9D321);
  v46 = v45 + *(v42 - 236) - ((2 * *(v42 - 236)) & 0x8C601578) - 969930052;
  *(v42 - 192) = (1715190827 * BYTE1(v44) + 1851451937) ^ v45;
  *(v42 - 188) = (v43 - 1310 + 2089713731 * HIBYTE(v44) + 1964379268) ^ v45;
  *(v42 - 168) = a42;
  *(v42 - 180) = v45 + v43 + 1289038413;
  *(v42 - 176) = v46;
  *(v42 - 184) = v45 + BYTE2(v44) - ((v44 >> 15) & 0x124) + 443781778;
  v47 = (*(a7 + 8 * (v43 + 8262)))(v42 - 192);
  *a42 = 97;
  return sub_1001B21D0(v47);
}

uint64_t sub_10017E084@<X0>(int a1@<W8>)
{
  v2 = STACK[0x508];
  STACK[0x478] = *(v1 + 8 * a1);
  return sub_100165644(v2);
}

uint64_t sub_10017E0B0@<X0>(uint64_t a1@<X8>)
{
  v6 = ((((v4 + 3260) | 0xE00u) - 7843) ^ v3) + v2;
  *(a1 - 7 + v6) = vadd_s8(vsub_s8(*(v1 - 7 + v6), vand_s8(vadd_s8(*(v1 - 7 + v6), *(v1 - 7 + v6)), 0x7878787878787878)), 0x3C3C3C3C3C3C3C3CLL);
  return (*(v5 + 8 * ((2037 * ((v2 & 0x78) - 8 == v3)) ^ v4)))();
}

void sub_10017E11C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  *&STACK[0x2F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x280] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x290] = vdupq_n_s64(0x38uLL);
  *&STACK[0x260] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x270] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x240] = vdupq_n_s64(v4);
  *&STACK[0x250] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x220] = vdupq_n_s64(v6);
  *&STACK[0x230] = vdupq_n_s64(v5);
  *&STACK[0x200] = vdupq_n_s64(a2);
  *&STACK[0x210] = vdupq_n_s64(a1);
  *&STACK[0x2D0] = vdupq_n_s64(a4);
  *&STACK[0x2E0] = vdupq_n_s64(a3);
  *&STACK[0x2C0] = xmmword_1002BF690;
  JUMPOUT(0x10017E2BCLL);
}

uint64_t sub_10017EF64@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v11 = v6 + 32;
  v12 = (((v7 ^ v4) + v9) ^ v11) + v5;
  v13 = *(a3 + v12 - 15);
  v14 = *(a3 + v12 - 31);
  v15 = a1 + v12;
  *(v15 - 15) = v13;
  *(v15 - 31) = v14;
  return (*(v10 + 8 * (((v8 != v11) * a2) ^ (v3 + v7 + 1143))))();
}

uint64_t sub_10017EF6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v19 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v20 = vdupq_n_s64(0x38uLL);
  v21 = vdupq_n_s64(a5);
  v22 = vdupq_n_s64(v17);
  v23 = vdupq_n_s64(a6);
  v24 = -a1;
  v25 = vdupq_n_s64(v11);
  v26 = vdupq_n_s64(v15);
  v27 = v7 + v9 + v18;
  v28 = v10 + v16 - a1 + 3;
  v29 = vdupq_n_s64(v13);
  v30 = vdupq_n_s64(v12);
  v31 = vdupq_n_s64(v8);
  v32 = vdupq_n_s64(v14);
  v33 = vdupq_n_s64(a7);
  v34 = vdupq_n_s64(0xF2620266DFD8DE82);
  v35 = vdupq_n_s64(0x5C3E923DC79C4710uLL);
  v36 = vdupq_n_s64(0x2E1F491EE3CE2388uLL);
  v37 = vdupq_n_s64(0x97A1B9D365930275);
  v38 = vdupq_n_s64(0x6E1E19DDB33CB23AuLL);
  v39 = vdupq_n_s64(0x93BA3B681E438AC2);
  v40 = vdupq_n_s64(0x3622E24BF0DE3A9EuLL);
  v41 = vdupq_n_s64(0x3102FDB0D852CBCuLL);
  v42.i64[0] = v27 + v28 + ((a3 - 4344) ^ 0xFFFFFFFFFFFFF74ALL) + 4;
  v42.i64[1] = v27 + v28 - 4;
  v43.i64[0] = v27 + v28 + 3;
  v43.i64[1] = v27 + v28 + 2;
  v44.i64[0] = v27 + v28 + 1;
  v44.i64[1] = v27 + v28;
  v45.i64[0] = v27 + v28 - 1;
  v45.i64[1] = v27 + v28 - 2;
  v46 = vandq_s8(v45, v19);
  v47 = vandq_s8(v44, v19);
  v48 = vandq_s8(v43, v19);
  v49 = vandq_s8(v42, v19);
  v50 = vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL);
  v51 = vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v21);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v21);
  v54 = veorq_s8(v53, v22);
  v55 = veorq_s8(v52, v22);
  v56 = veorq_s8(v52, v23);
  v57 = veorq_s8(v53, v23);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v57);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v56);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v59, v59), v25), v59), v26), v29);
  v61 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v58, v58), v25), v58), v26), v29);
  v62 = vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL);
  v63 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v64 = veorq_s8(v60, v62);
  v65 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v64);
  v67 = vaddq_s64(v65, v63);
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v66, v30), vorrq_s8(v66, v31)), v31), v32);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v67, v30), vorrq_s8(v67, v31)), v31), v32);
  v70 = veorq_s8(v69, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v71 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v72 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v70), v33);
  v73 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v71), v33);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL);
  v75 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v76 = veorq_s8(v72, v74);
  v77 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), v34);
  v80 = veorq_s8(v78, v34);
  v81 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v83 = veorq_s8(v79, v81);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v83);
  v86 = vaddq_s64(v84, v82);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(v86, vandq_s8(vaddq_s64(v86, v86), v35)), v36), v37);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(v85, vandq_s8(vaddq_s64(v85, v85), v35)), v36), v37);
  v89 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v90 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v91 = veorq_s8(v87, v89);
  v92 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v91);
  v94 = veorq_s8(vaddq_s64(v92, v90), v38);
  v95 = veorq_s8(v93, v38);
  v96 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v97 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v98 = veorq_s8(v94, v96);
  v99 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v100 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v101 = vaddq_s64(v51, v21);
  v102 = vaddq_s64(v100, v98);
  v103 = vaddq_s64(v99, v97);
  v140.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v102, v102), v39), v102), v40), v41), vnegq_s64(vandq_s8(vshlq_n_s64(v45, 3uLL), v20)));
  v140.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v103, v103), v39), v103), v40), v41), vnegq_s64(vandq_s8(vshlq_n_s64(v44, 3uLL), v20)));
  v104 = veorq_s8(v101, v22);
  v105 = veorq_s8(v101, v23);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v106, v106), v25), v106), v26), v29);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v109, v30), vorrq_s8(v109, v31)), v31), v32);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v33);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v34);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(v116, vandq_s8(vaddq_s64(v116, v116), v35)), v36), v37);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v38);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL)));
  v121 = vaddq_s64(v50, v21);
  v140.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v120, v120), v39), v120), v40), v41), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), v20)));
  v122 = veorq_s8(v121, v22);
  v123 = veorq_s8(v121, v23);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123);
  v125 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v124, v124), v25), v124), v26), v29);
  v126 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v127, v30), vorrq_s8(v127, v31)), v31), v32);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), v33);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), v34);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(v134, vandq_s8(vaddq_s64(v134, v134), v35)), v36), v37);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136), v38);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL)));
  v140.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v138, v138), v39), v138), v40), v41), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v20)));
  *v42.i64[1] = vrev64_s8(*&vqtbl4q_s8(v140, xmmword_1002BF670));
  return (*(STACK[0x3E8] + 8 * ((15604 * (v24 == 8 - (v16 & 0xFFFFFFF8))) ^ a3)))();
}

uint64_t sub_10017F594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v28 = ((2 * (a7 + 4)) & 0xEAA939CELL) + ((a7 + 4) ^ 0x7FFBC69D75549CE7) + STACK[0x5A8] - 0x7FFBC69D75549CE7;
  v29 = __ROR8__(v28 & 0xFFFFFFFFFFFFFFF8, 8);
  v30 = v29 - ((2 * v29 + 0x2D1FA1F3BF05E3C6) & 0x75C00D07A8167688) - 0x6E9028824C71D2D9;
  v31 = v30 ^ 0xBBFDD7D6D5C2B1ALL;
  v30 ^= 0xBFC15AB3914BA400;
  v32 = (__ROR8__(v31, 8) + v30) ^ 0x8174304F61371433;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x48DE3944125A0254;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v27;
  v37 = __ROR8__(v36, 8);
  v38 = v36 ^ __ROR8__(v35, 61);
  v39 = (((2 * ((v37 + v38) ^ 0x447529156CDBD5D4)) & 0x50AFE6D689874340) - ((v37 + v38) ^ 0x447529156CDBD5D4) + 0x57A80C94BB3C5E5FLL) ^ 0xE1BF27E7083F5509;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (((v41 + v40) | 0x4EC3C0C8DA61D2DELL) - ((v41 + v40) | 0xB13C3F37259E2D21) - 0x4EC3C0C8DA61D2DFLL) ^ 0xF77D30055C3CF323;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x6E1E19DDB33CB23ALL;
  v45 = __ROR8__(v44, 8);
  v46 = __ROR8__(v43, 61);
  v47 = ((((2 * ((v45 + (v44 ^ v46)) ^ 0x111389794E5CD960)) & 0xA61BA91267C30EB0) - ((v45 + (v44 ^ v46)) ^ 0x111389794E5CD960) + 0x2CF22B76CC1E78A7) ^ 0x8D36F9F7F19B7E5) >> (8 * ((((2 * (a7 + 4)) & 0xCE) + ((a7 + 4) ^ 0xE7) + STACK[0x5A8] + 25) & 7));
  v48 = ((2 * (a7 + 4)) & 0xEAA939CELL) + ((a7 + 4) ^ 0x7FFBC69D75549CE7) + STACK[0x5A8] - 0x7FFBC69D75549CE6;
  v49 = __ROR8__(v48 & 0xFFFFFFFFFFFFFFF8, 8);
  v50 = v47 ^ 0x50;
  v51 = v49 - ((2 * v49 + 0x2D1FA1F3BF05E3C6) & 0x2875D5762F87DD10) + 0x6ACABBB4F746E06BLL;
  v52 = __ROR8__(v51 ^ 0x25653145AE94FED6, 8);
  v51 ^= 0x911BB68B528371CCLL;
  v53 = (v52 + v51 - ((2 * (v52 + v51)) & 0xC657C0CE72972608) + 0x632BE067394B9304) ^ 0xE25FD028587C8737;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = __ROR8__(v53, 8);
  v56 = (v55 + v54 - ((2 * (v55 + v54)) & 0x958C21846DDD45EELL) + 0x4AC610C236EEA2F7) ^ 0x218298624B4A0A3;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ v27;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0xF2620266DFD8DE82;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0xB9BEF0CD865D21FDLL;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = (__ROR8__(v62, 8) + v63) ^ 0x6E1E19DDB33CB23ALL;
  v65 = __ROR8__(v64, 8);
  v66 = __ROR8__(v63, 61);
  return sub_10027DA68(STACK[0x5A8], 0x48DE3944125A0254, v28, v48, v50, (((v65 + (v64 ^ v66) - ((2 * (v65 + (v64 ^ v66))) & 0x8FAC96AE910F30DALL) + 0x47D64B574887986DLL) ^ 0x72E486C7B5DC8E4FLL) >> (8 * ((((2 * (a7 + 4)) & 0xCE) + ((a7 + 4) ^ 0xE7) + STACK[0x5A8] + 26) & 7))) ^ 0xFFFFFFDB, STACK[0x5A8], (a7 ^ 0x7F3F19F7CFFFFCFELL) - 0x10918460008D434 + ((2 * a7) & 0x19FFFF9FCLL), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_10017F59C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 40 * v1 + 28);
  switch(v4)
  {
    case 1:
      v8 = STACK[0x6D0];
      STACK[0x470] = *(v3 + 8 * (v2 - 6046));
      return sub_10025C248(v8);
    case 3:
      v6 = *(a1 + 40 * v1 + 16);
      v7 = ((v6 << (29 * (v2 ^ 0xCE) + 112)) & 0xBE5B5FAE3FFF79D2) + (v2 ^ 0xDF2DAFD71FFFAB22 ^ v6) != 0xDF2DAFD71FFFBCE9;
      return (*(v3 + 8 * (((4 * v7) | (v7 << 6)) ^ (v2 - 1836))))();
    case 2:
      return (*(v3 + 8 * (((STACK[0x6D0] != 0) * (v2 - 2014)) ^ (v2 + 52))))();
    default:
      return (STACK[0x918])();
  }
}

uint64_t sub_10017F81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (v4 - 1616583766) & 0x605B11FF;
  LODWORD(STACK[0x804]) = *(STACK[0x518] + 112);
  v6 = (v5 - 377) | 0x1242;
  LODWORD(STACK[0x86C]) = 16257999;
  STACK[0x6D0] = *(a4 + 8 * v5);
  STACK[0x548] = &STACK[0x470];
  v7 = STACK[0x470];
  STACK[0x870] = STACK[0x470];
  return (*(a4 + 8 * (((((v6 + 1) ^ (v7 == 0)) & 1) * (v6 ^ 0x127E)) ^ v6)))();
}

uint64_t sub_10017F8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v10 = *(v6 + v7 - 1 - 31);
  v11 = a1 + v7 - 1;
  *(v11 - 15) = *(v6 + v7 - 1 - 15);
  *(v11 - 31) = v10;
  return (*(v9 + 8 * ((2692 * (23 * (v8 ^ (a6 + 1199)) - 5879 == (v7 & 0xFFFFFFE0))) ^ (v8 + 1576659987))))();
}

uint64_t sub_10017F930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a14 = (v16 - 1529) ^ (33731311 * ((&a13 + 379730644 - 2 * (&a13 & 0x16A23AD4)) ^ 0x2F54F0F7));
  a15 = a12;
  a16 = &a10;
  (*(v18 + 8 * (v16 + 4820)))(&a13);
  a15 = a12;
  LODWORD(a16) = v16 - 2008441969 * ((((&a13 | 0x1BD7A2E2) ^ 0xFFFFFFFE) - (~&a13 | 0xE4285D1D)) ^ 0xACB10913) + 904;
  v19 = (*(v18 + 8 * (v16 + 4870)))(&a13);
  return (*(v18 + 8 * (((a13 == v17) * ((v16 + 1406824187) ^ 0x53DAB1BD)) ^ v16)))(v19);
}

void sub_10017FA58()
{
  *&STACK[0x320] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x330] = vdupq_n_s64(0x38uLL);
  *&STACK[0x380] = vdupq_n_s64(0xF92B3AE46CD3AAB5);
  *&STACK[0x390] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x220] = vdupq_n_s64(0x6D4C51B932C554AuLL);
  *&STACK[0x300] = vdupq_n_s64(0x18849D489A333C3BuLL);
  *&STACK[0x310] = vdupq_n_s64(0xB0C278DF03C54D67);
  *&STACK[0x2E0] = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  *&STACK[0x2F0] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x2C0] = vdupq_n_s64(0x953F7DAAA667EAE2);
  *&STACK[0x2D0] = vdupq_n_s64(0x2A7EFB554CCFD5C4uLL);
  *&STACK[0x2A0] = vdupq_n_s64(v0);
  *&STACK[0x2B0] = vdupq_n_s64(0xCC5CCB6FF3BE95FDLL);
  *&STACK[0x370] = vdupq_n_s64(0xCA86DFF3ED886062);
  *&STACK[0x280] = vdupq_n_s64(0x818073FB8640EE5DLL);
  *&STACK[0x290] = vdupq_n_s64(0x1ABC9006093BCFCFuLL);
  *&STACK[0x260] = vdupq_n_s64(0xF812420440F6AA64);
  *&STACK[0x270] = vdupq_n_s64(0xE238A9E002A50567);
  *&STACK[0x200] = vdupq_n_s64(0x276E05BB2EBB76F9uLL);
  *&STACK[0x210] = vdupq_n_s64(0x1DC7561FFD5AFA98uLL);
  *&STACK[0x240] = vdupq_n_s64(0x73A1B896F9C3D547uLL);
  *&STACK[0x250] = vdupq_n_s64(0xD891FA44D1448906);
  *&STACK[0x230] = xmmword_1002BF690;
  JUMPOUT(0x100191824);
}

uint64_t sub_10017FD58@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W4>, uint64_t a4@<X8>)
{
  v6 = *(v4 + a4 - 16);
  v7 = (v4 + a1 - 16);
  *(v7 - 1) = *(v4 + a4 - 32);
  *v7 = v6;
  return (*(v5 + 8 * ((28 * ((a3 + a2 + 78) - (v4 & 0xFFFFFFE0) != 1000)) ^ (a2 - 2032349688))))();
}

uint64_t sub_10017FDC4(int a1, uint64_t a2, int a3, int a4)
{
  LODWORD(STACK[0x428]) = a3;
  LODWORD(STACK[0x42C]) = a1;
  LODWORD(STACK[0x430]) = v5;
  LODWORD(STACK[0x424]) = v8;
  LODWORD(STACK[0x420]) = v10;
  v11 = v4 + 3432;
  v12 = STACK[0x370];
  v13 = STACK[0x438];
  v14 = v11 + v6 + 776 * (LODWORD(STACK[0x3D8]) - LODWORD(STACK[0x370]) - LODWORD(STACK[0x438]));
  v15 = v14 - (((v14 * v9) >> 32) >> 9) * a4;
  *(STACK[0x5B0] + v15) ^= 0x80u;
  v16 = (v11 - 379018183) & 0x16974A3E;
  v17 = v13 + 64 + v12 == LODWORD(STACK[0x408]);
  LODWORD(STACK[0x57C]) = v16;
  v18 = *(v7 + 8 * ((v17 * (v16 ^ 0x3584)) ^ v11));
  LODWORD(STACK[0x438]) = v13 + 64;
  return v18();
}

uint64_t sub_10017FF40()
{
  v2 = STACK[0x8EC];
  STACK[0x740] -= 80;
  return (*(v1 + 8 * (((v2 == 16257999) * (v0 - 6014)) ^ (v0 - 911))))();
}

uint64_t sub_10017FFC0(unint64_t a1, int a2)
{
  v5 = LODWORD(STACK[0x350]);
  if (v5 == 17168)
  {
    return (*(v3 + 8 * ((v4 - 4214) ^ (216 * (v2 == a2 + 4)))))();
  }

  if (v5 == 20706 || v5 == 33980)
  {
    STACK[0x720] = a1;
  }

  return (STACK[0x458])();
}

uint64_t sub_1001800B8@<X0>(unint64_t a1@<X0>, __int16 a2@<W8>)
{
  STACK[0x500] = a1;
  LODWORD(STACK[0xB18]) = v5;
  LOWORD(STACK[0xB1E]) = a2;
  LODWORD(STACK[0xB20]) = v6;
  LODWORD(STACK[0xB24]) = v2;
  STACK[0xB28] = v4;
  STACK[0xB30] = v7;
  return (*(v8 + 8 * (((a1 == 0) * (((v3 + 1787714655) & 0x957197EB ^ 0xFFFFEBD9) + ((v3 + 1233667191) & 0xB6779BFF))) | v3)))();
}

uint64_t sub_1001801BC@<X0>(int a1@<W8>)
{
  STACK[0x3B0] = *(v3 + 8 * v1);
  STACK[0x990] = 0;
  return (*(v3 + 8 * ((((a1 ^ (STACK[0x990] < 0x20)) & 1) * v2) ^ a1)))(1355549129, 0xAC03202F7027203, 0x5E0F8F2F207AD1BELL, 0x5BBB73835736972BLL, 177, 0x59056B86A61A1499, 0x43E0E1A1BF0A5C84, 4294967128);
}

uint64_t sub_1001803CC@<X0>(int a1@<W8>)
{
  v3 = *(v1 + 8);
  STACK[0x648] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (a1 ^ 0x1AA ^ ((a1 ^ 0x452) - 5000) ^ 0x112C)) ^ a1 ^ 0x452)))();
}

uint64_t sub_100180418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 - 2899) - 1034) ^ v3) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((6050 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1001804D4()
{
  STACK[0x4B8] = 0;
  v2 = STACK[0x808];
  STACK[0x848] = *(v1 + 8 * v0);
  return sub_10025E704(v1, v2);
}

uint64_t sub_100180504(uint64_t a1, int a2, int a3, int a4, int a5, unsigned int a6, int a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, uint64_t a45, int a46, int a47, int a48, unsigned int a49, uint64_t a50, unsigned int a51, uint64_t a52, uint64_t a53, _BYTE *a54, uint64_t a55)
{
  LODWORD(a34) = 0;
  v63 = ((v58 ^ 0x74983927 ^ ((((v57 << (a8 + 72)) ^ 0x330B2071) & v60 | v61) ^ 0x9E904CC1) & v62) & v59 | v55) ^ 0xF766A7FE;
  v64 = *(&off_100315F70 + (a8 ^ 0x17A7));
  v65 = *(v64 + 8 * (*(a11 + (((v58 ^ 0x27 ^ ((((v57 << (a8 + 72)) ^ 0x71) & v60 | v61) ^ 0xC1) & v62) & v59 | v55) ^ 0xFEu)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v66 = a40 ^ a44 ^ 0xF75B5A93 ^ (a42 << (a35 ^ 0x10));
  v67 = *(v64 + 8 * (*(a11 + BYTE1(v66)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v68 = a7 ^ 0x63B83748 ^ ((((a8 + 609397892) | 0x80C3010) ^ 0x2C940CAD) + a5) & a6;
  v69 = *(v64 + 8 * (*(a11 + v68) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v70 = a4 ^ 0x1A2BB4C5 ^ ((a2 | a33 & (((a38 ^ 0xA7AAB112) & a37 | a36) ^ 0x12F09102)) ^ 0x36C9785) & a3;
  v71 = *(v64 + 8 * (*(a11 + (a4 ^ 0xC5 ^ ((a2 | a33 & (((a38 ^ 0x12) & a37 | a36) ^ 2)) ^ 0x85u) & a3)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v72 = *(v64 + 8 * (*(a11 + BYTE2(v66)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v73 = *(v64 + 8 * (*(a11 + BYTE1(v68)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v74 = *(a11 + BYTE2(v68));
  v75 = *(a11 + BYTE1(v70));
  v76 = *(a11 + BYTE1(v63));
  v77 = *(a11 + (v63 >> 24));
  v78 = *(a11 + BYTE2(v63));
  v79 = *(a11 + (v70 >> 24));
  v80 = *(a11 + BYTE2(v70));
  v81 = *(a11 + (v68 >> 24));
  v82 = *(v64 + 8 * (v75 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v83 = (v82 >> 2) & 0x333FF76F00000000;
  v84 = ((v65 >> 2) & 0xF76F37900000 ^ v65) >> 16;
  v85 = *(v64 + 8 * (v76 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v86 = (((v67 >> 2) & 0x3FF76F37000000 ^ v67) >> 24) ^ (((v69 >> 2) & 0x333FF76F00000000 ^ v69) >> 32);
  v87 = *(v64 + 8 * (v74 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v88 = ((2 * *(v64 + 8 * (v80 ^ 0x7C))) & 0xEB86B864352E0958) + (*(v64 + 8 * (v80 ^ 0x7C)) ^ 0x75C35C321A9704ACLL);
  v89 = *(v64 + 8 * (v78 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v90 = *(v64 + 8 * (*(a11 + (v66 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v91 = *(v64 + 8 * (v79 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v87) = (((v89 >> 2) & 0xF76F37900000 ^ v89) >> 16) ^ (((v87 >> 2) & 0x333FF76F00000000 ^ v87) >> 32) ^ (((v88 >> 2) & 0x6F37908F00 ^ v88) >> 8);
  v92 = ((*(v64 + 8 * (v77 ^ 0x7C)) - ((2 * (*(v64 + 8 * (v77 ^ 0x7C)) + 0x75C35C321A9704ACLL)) & 0x79DC5A5ECELL) + 0x6F08C43413) ^ ((*(v64 + 8 * (v77 ^ 0x7C)) + 0x75C35C321A9704ACLL) >> 2) & 0x6F37908F00) >> 8;
  v93 = *(v64 + 8 * (*(a11 + ((a40 ^ a44) ^ 0x93u ^ (a42 << (a35 ^ 0x10)))) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v94 = *(v64 + 8 * (v81 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v95 = ((v93 >> 2) & 0xF76F37900000 ^ v93) >> 16;
  v96 = ((v94 >> 2) & 0x3FF76F37000000 ^ v94) >> 24;
  v97 = v86 ^ (((v71 >> 2) & 0x6F37908F00 ^ v71) >> 8) ^ 0x8297DD22 ^ v84;
  v98 = *(a11 + ((v86 ^ (((v71 >> 2) & 0x37908F00 ^ v71) >> 8) ^ 0xDD22 ^ v84) >> 8));
  v99 = (((v73 >> 2) & 0x3FF76F37000000 ^ v73) >> 24) ^ (((v72 >> 2) & 0xF76F37900000 ^ v72) >> 16) ^ ((v83 ^ v82) >> 32) ^ 0x1D0DD5BD ^ (((v85 >> 2) & 0x6F37908F00 ^ v85) >> 8);
  v100 = *(a11 + ((((v73 >> 2) & 0x37000000 ^ v73) >> 24) ^ (((v72 >> 2) & 0x37900000 ^ v72) >> 16) ^ ((v83 ^ v82) >> 32) ^ 0xBD ^ (((v85 >> 2) & 0x8F00 ^ v85) >> 8)));
  v101 = v87 ^ (((v90 >> 2) & 0x3FF76F37000000 ^ v90) >> 24) ^ 0x363916A6;
  v102 = v92 ^ (((v91 >> 2) & 0x333FF76F00000000 ^ v91) >> 32) ^ v95 ^ v96 ^ 0xF5F18FE2;
  v103 = *(v64 + 8 * (v98 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v104 = *(v64 + 8 * (v100 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v105 = *(v64 + 8 * (*(a11 + BYTE1(v101)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v104) = (((v104 >> 2) & 0xF76F37900000 ^ v104) >> 16) ^ (((v103 >> 2) & 0x6F37908F00 ^ v103) >> 8) ^ (((v105 >> 2) & 0x3FF76F37000000 ^ v105) >> 24);
  v106 = *(v64 + 8 * (*(a11 + v102) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v107 = *(v64 + 8 * (*(a11 + BYTE1(v99)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v108 = *(v64 + 8 * (*(a11 + BYTE2(v101)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v109 = *(v64 + 8 * (*(a11 + BYTE1(v102)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v108) = (((v108 >> 2) & 0x333FF76F00000000 ^ v108) >> 32) ^ (((v107 >> 2) & 0x3FF76F37000000 ^ v107) >> 24) ^ (((v109 >> 2) & 0x6F37908F00 ^ v109) >> 8);
  v110 = *(v64 + 8 * (*(a11 + BYTE2(v97)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v111 = *(v64 + 8 * (*(a11 + (v101 >> 24)) ^ 0x7CLL));
  v112 = *(v64 + 8 * (*(a11 + BYTE2(v102)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v113 = *(v64 + 8 * (*(a11 + (v97 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v112) = (((v112 >> 2) & 0xF76F37900000 ^ v112) >> 16) ^ ((((v111 + 0x75C35C321A9704ACLL) >> 2) & 0x6F37908F00 ^ (v111 + 0x75C35C321A9704ACLL)) >> 8) ^ (((v113 >> 2) & 0x3FF76F37000000 ^ v113) >> 24);
  v114 = *(v64 + 8 * (*(a11 + BYTE2(v99)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v115 = *(v64 + 8 * (((-*(a11 + (v102 >> 24)) ^ 0x256F2D56 ^ (191 - (*(a11 + (v102 >> 24)) ^ 0xBF)) ^ (*(a11 + (v102 >> 24)) + 628043094 - ((2 * *(a11 + (v102 >> 24))) & 0xAC))) + 191) ^ 0xC3u)) + 0x75C35C321A9704ACLL;
  v116 = *(v64 + 8 * (*(a11 + v97) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v117 = *(v64 + 8 * (*(a11 + (v99 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v118 = *(v64 + 8 * (*(a11 + v101) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v117) = (((v116 >> 2) & 0x333FF76F00000000 ^ v116) >> 32) ^ (((v117 >> 2) & 0x6F37908F00 ^ v117) >> 8);
  v119 = v104 ^ (((v106 >> 2) & 0x333FF76F00000000 ^ v106) >> 32) ^ 0x5DFDE4EF;
  v120 = *(a11 + BYTE2(v119));
  v121 = v112 ^ (((v114 >> 2) & 0x333FF76F00000000 ^ v114) >> 32) ^ 0x9B8F5264;
  v122 = v108 ^ (((v110 >> 2) & 0xF76F37900000 ^ v110) >> 16) ^ 0x6D57F711;
  v123 = v117 ^ (((v118 >> 2) & 0xF76F37900000 ^ v118) >> 16) ^ 0xDBD98496 ^ (((v115 >> 2) & 0x3FF76F37000000 ^ v115) >> 24);
  v124 = *(a11 + (v112 ^ (((v114 >> 2) & 0x333FF76F00000000 ^ v114) >> 32) ^ 0x64));
  v125 = *(a11 + BYTE1(v121));
  v126 = *(a11 + BYTE1(v123));
  v127 = *(a11 + BYTE2(v123));
  v128 = *(a11 + (v119 >> 24));
  v129 = *(a11 + (v123 >> 24));
  v130 = v98 & 0x10;
  v131 = *(a11 + BYTE2(v121));
  v132 = *(a11 + v119);
  LOBYTE(v118) = v98 & 0x10 ^ 0x10;
  v133 = *(a11 + BYTE1(v119));
  v134 = v122 >> v118;
  v135 = *(a11 + v123);
  v136 = v121 >> 24;
  v137 = v134 >> v130;
  v138 = *(v64 + 8 * (v120 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v139 = *(v64 + 8 * (*(a11 + (v122 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v140 = *(v64 + 8 * (v124 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v141 = *(v64 + 8 * (*(a11 + v122) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v142 = *(v64 + 8 * (v125 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v141) = (((v142 >> 2) & 0xF76F37900000 ^ v142) >> 16) ^ (((v141 >> 2) & 0x6F37908F00 ^ v141) >> 8);
  v143 = *(v64 + 8 * (v127 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v144 = *(v64 + 8 * (v128 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v145 = *(v64 + 8 * (v131 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v146 = *(v64 + 8 * (v129 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v147 = *(v64 + 8 * (v132 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v147) = (((v145 >> 2) & 0x333FF76F00000000 ^ v145) >> 32) ^ (((v147 >> 2) & 0xF76F37900000 ^ v147) >> 16);
  v148 = *(v64 + 8 * (*(a11 + BYTE1(v122)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v149 = *(v64 + 8 * (v135 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v150 = *(v64 + 8 * (v133 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v150) = (((v150 >> 2) & 0x6F37908F00 ^ v150) >> 8) ^ (((v149 >> 2) & 0x333FF76F00000000 ^ v149) >> 32);
  v151 = *(v64 + 8 * (*(a11 + v137) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v152 = *(v64 + 8 * (*(a11 + v136) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v150) = v150 ^ (((v151 >> 2) & 0xF76F37900000 ^ v151) >> 16);
  v153 = (((v139 >> 2) & 0xF76F37900000 ^ v139) >> 16) ^ (((v138 >> 2) & 0x6F37908F00 ^ v138) >> 8) ^ (((v140 >> 2) & 0x3FF76F37000000 ^ v140) >> 24) ^ 0xB4063E51 ^ ((((*(v64 + 8 * (v126 ^ 0x7C)) + 0x75C35C321A9704ACLL) >> 2) & 0x333FF76F00000000 ^ (*(v64 + 8 * (v126 ^ 0x7C)) + 0x75C35C321A9704ACLL)) >> 32);
  LODWORD(v150) = v150 ^ (((v152 >> 2) & 0x3FF76F37000000 ^ v152) >> 24);
  v154 = v141 ^ (((v144 >> 2) & 0x333FF76F00000000 ^ v144) >> 32) ^ 0x232A9428 ^ (((v143 >> 2) & 0x3FF76F37000000 ^ v143) >> 24);
  v155 = (((v146 >> 2) & 0x6F37908F00 ^ v146) >> 8) ^ v147 ^ (((v148 >> 2) & 0x3FF76F37000000 ^ v148) >> 24) ^ 0xB00CE8BC;
  v156 = *(v56 + (v150 ^ 0x54));
  v157 = v150 ^ 0x1EC96A54;
  v158 = *(v64 + 8 * (*(v56 + BYTE2(v153)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v159 = *(v64 + 8 * (*(v56 + BYTE1(v154)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v160 = *(v64 + 8 * (*(v56 + (((((v146 >> 2) & 0x37908F00 ^ v146) >> 8) ^ v147 ^ (((v148 >> 2) & 0x3FF76F37000000 ^ v148) >> 24) ^ 0xE8BC) >> 8)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v161 = *(v64 + 8 * (*(v56 + BYTE2(v154)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v162 = *(v64 + 8 * (*(v56 + BYTE2(v155)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v161) = (((v162 >> 2) & 0x333FF76F00000000 ^ v162) >> 32) ^ (((v161 >> 2) & 0x3FF76F37000000 ^ v161) >> 24);
  v163 = *(v64 + 8 * (*(v56 + BYTE1(v157)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v164 = *(v64 + 8 * (*(v56 + (v153 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v165 = ((v163 >> 2) & 0x6F37908F00 ^ v163) >> 8;
  v166 = *(v64 + 8 * (*(v56 + (v155 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v167 = ((v166 >> 2) & 0x6F37908F00 ^ v166) >> 8;
  v168 = *(v64 + 8 * (*(v56 + BYTE2(v157)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v169 = *(v64 + 8 * (*(v56 + v153) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v169) = v167 ^ (((v169 >> 2) & 0x3FF76F37000000 ^ v169) >> 24);
  v170 = ((2 * *(v64 + 8 * (*(v56 + (v154 >> 24)) ^ 0x7CLL))) & 0xEB86B864352E0958) + (*(v64 + 8 * (*(v56 + (v154 >> 24)) ^ 0x7CLL)) ^ 0x75C35C321A9704ACLL);
  v171 = *(v64 + 8 * (*(v56 + (v157 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v172 = *(v64 + 8 * (*(v56 + BYTE1(v153)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v173 = *(v64 + 8 * (*(v56 + v154) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v173) = (((v172 >> 2) & 0x6F37908F00 ^ v172) >> 8) ^ (((v173 >> 2) & 0xF76F37900000 ^ v173) >> 16);
  v174 = *(v64 + 8 * (*(v56 + v155) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v175 = v161 ^ (((v164 >> 2) & 0xF76F37900000 ^ v164) >> 16) ^ 0x9C79720B ^ v165;
  LODWORD(v174) = v173 ^ (((v174 >> 2) & 0x3FF76F37000000 ^ v174) >> 24);
  v176 = (((v158 >> 2) & 0xF76F37900000 ^ v158) >> 16) ^ ((*(v64 + 8 * (v156 ^ 0x7C)) + 0x75C35C321A9704ACLL) >> 8) ^ ((*(v64 + 8 * (v156 ^ 0x7C)) + 0x75C35C321A9704ACLL) >> 10) & 0x6F37908F ^ (((v159 >> 2) & 0x3FF76F37000000 ^ v159) >> 24) ^ (((v160 >> 2) & 0x333FF76F00000000 ^ v160) >> 32) ^ 0x24455CD9;
  v177 = *(v56 + (v175 >> 24));
  v178 = (((v168 >> 2) & 0xF76F37900000 ^ v168) >> 16) ^ v169 ^ (((v170 >> 2) & 0x333FF76F00000000 ^ v170) >> 32) ^ 0xFDDB86BC;
  v179 = *(v56 + ((((v168 >> 2) & 0x37900000 ^ v168) >> 16) ^ v169 ^ (((v170 >> 2) & 0x333FF76F00000000 ^ v170) >> 32) ^ 0xBC));
  v180 = v174 ^ 0x626E1890 ^ (((v171 >> 2) & 0x333FF76F00000000 ^ v171) >> 32);
  v181 = *(v56 + v180);
  v182 = *(v56 + BYTE2(v176));
  v183 = *(v56 + BYTE1(v178));
  v184 = *(v56 + (v176 >> 24));
  v185 = *(v56 + BYTE2(v180));
  v186 = *(v56 + v175);
  v187 = *(v56 + BYTE2(v178));
  v188 = *(v56 + BYTE1(v180));
  v189 = v180 >> 24;
  v190 = *(v56 + BYTE2(v175));
  v191 = *(v56 + BYTE1(v175));
  v192 = *(v56 + v189);
  v193 = *(v56 + v176);
  v194 = *(v64 + 8 * (*(v56 + BYTE1(v176)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v195 = *(v56 + (v178 >> 24));
  v196 = *(v64 + 8 * (v177 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v196) = (((v196 >> 2) & 0x333FF76F00000000 ^ v196) >> 32) ^ (((v194 >> 2) & 0x3FF76F37000000 ^ v194) >> 24);
  v197 = *(v64 + 8 * (v179 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v198 = *(v64 + 8 * (v181 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v199 = *(v64 + 8 * (v186 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v200 = v196 ^ (((v197 >> 2) & 0x6F37908F00 ^ v197) >> 8) ^ (((v198 >> 2) & 0xF76F37900000 ^ v198) >> 16);
  v201 = v199 >> 2;
  v202 = (v199 >> 2) & 0x333FF76F00000000;
  v203 = v199 & 0x20000000000000;
  v204 = v199 & 0xFFDFFFFF00000000;
  if ((v201 & v203) != 0)
  {
    v205 = -v203;
  }

  else
  {
    v205 = v203;
  }

  v206 = *(v64 + 8 * (v183 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v207 = *(v64 + 8 * (v188 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v208 = *(v64 + 8 * (v182 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v209 = *(v64 + 8 * (v187 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v210 = *(v64 + 8 * (v184 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v211 = *(v64 + 8 * (v191 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v212 = ((2 * *(v64 + 8 * (v192 ^ 0x7C))) & 0xEB86B864352E0958) + (*(v64 + 8 * (v192 ^ 0x7C)) ^ 0x75C35C321A9704ACLL);
  v213 = *(v64 + 8 * (v193 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v214 = *(v64 + 8 * (v190 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v215 = *(v64 + 8 * (v195 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v214) = (((v213 >> 2) & 0x6F37908F00 ^ v213) >> 8) ^ (((v214 >> 2) & 0xF76F37900000 ^ v214) >> 16);
  v216 = ((((*(v64 + 8 * (v185 ^ 0x7C)) + 0x75C35C321A9704ACLL) >> 2) & 0x3FF76F37000000 ^ (*(v64 + 8 * (v185 ^ 0x7C)) + 0x75C35C321A9704ACLL)) >> 24) ^ (((v209 >> 2) & 0xF76F37900000 ^ v209) >> 16) ^ (((v210 >> 2) & 0x333FF76F00000000 ^ v210) >> 32) ^ (((v211 >> 2) & 0x6F37908F00 ^ v211) >> 8) ^ 0xD32317D3;
  v217 = v200 ^ 0xB669443u;
  v218 = *(v56 + (v200 ^ 0x43u));
  v219 = (((v207 >> 2) & 0xF76F37900000 ^ v207) >> 16) ^ (((v206 >> 2) & 0x6F37908F00 ^ v206) >> 8) ^ (((v208 >> 2) & 0x3FF76F37000000 ^ v208) >> 24) ^ (((v205 + v202) ^ v204) >> 32) ^ 0x3E1CA202;
  v220 = (((v212 >> 2) & 0x333FF76F00000000 ^ v212) >> 32) ^ v214 ^ (((v215 >> 2) & 0x3FF76F37000000 ^ v215) >> 24) ^ 0xAB849F97;
  v221 = *(v56 + v220);
  v222 = *(v56 + BYTE1(v220));
  v223 = *(v56 + BYTE2(v217));
  v224 = *(v56 + BYTE2(v220));
  v225 = v217 >> 24;
  v226 = *(v56 + BYTE1(v217));
  v227 = *(v56 + (v220 >> 24));
  v228 = *(v56 + BYTE2(v216));
  v229 = ((((v218 ^ 0xFFFFFFFD) << 29) ^ 0x24614E1060E404A8) & ((v218 >> 3) ^ 0x2465CE5BE0EE0CBALL) | 0x911830241400D140) ^ ((v218 >> 3) ^ 0x2465CE5BE0EE0CBALL) & 0x4804BC00A0817;
  v230 = *(v64 + 8 * ((v229 >> 29) & 0x2C3029 ^ 0x43046A5DA0C52C8 ^ ((8 * v229) & 0x17021F8 ^ 0x43046A5DB50434ELL) & ((v229 >> 29) ^ 0x1C3C57FA709A1004))) + 0x75C35C321A9704ACLL;
  v231 = ((v230 >> 2) & 0x6F37908F00 ^ v230) >> 8;
  v232 = *(v64 + 8 * (*(v56 + BYTE2(v219)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v233 = *(v64 + 8 * (*(v56 + (v216 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v234 = *(v64 + 8 * (v221 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v209) = (((v232 >> 2) & 0xF76F37900000 ^ v232) >> 16) ^ (((v233 >> 2) & 0x3FF76F37000000 ^ v233) >> 24) ^ (((v234 >> 2) & 0x333FF76F00000000 ^ v234) >> 32);
  v235 = *(v64 + 8 * (*(v56 + (v219 >> 24)) ^ 0x7CLL));
  v236 = *(v64 + 8 * (*(v56 + v216) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v237 = *(v64 + 8 * (v222 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v237) = (((v236 >> 2) & 0x6F37908F00 ^ v236) >> 8) ^ (((v237 >> 2) & 0xF76F37900000 ^ v237) >> 16);
  v238 = *(v64 + 8 * (v226 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v239 = *(v64 + 8 * (*(v56 + BYTE1(v216)) ^ 0x7CLL));
  v240 = *(v64 + 8 * (v224 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v241 = *(v64 + 8 * (v223 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v242 = *(v64 + 8 * (*(v56 + v219) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v243 = *(v64 + 8 * (v227 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v244 = *(v64 + 8 * (*(v56 + v225) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v245 = *(v64 + 8 * (*(v56 + BYTE1(v219)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v246 = *(v64 + 8 * (v228 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v247 = v209 ^ 0x4DD3D7A4 ^ v231;
  v248 = (((v240 >> 2) & 0xF76F37900000 ^ v240) >> 16) ^ ((((v239 + 0x75C35C321A9704ACLL) >> 2) & 0x6F37908F00 ^ (v239 + 0x75C35C321A9704ACLL)) >> 8) ^ (((v241 >> 2) & 0x3FF76F37000000 ^ v241) >> 24) ^ (((v242 >> 2) & 0x333FF76F00000000 ^ v242) >> 32) ^ 0xE58E381;
  v249 = ((((((2 * v235) & 0xEB86B864352E0958) + (v235 ^ 0x75C35C321A9704ACLL)) >> 2) & 0x333FF76F00000000 ^ (((2 * v235) & 0xEB86B864352E0958) + (v235 ^ 0x75C35C321A9704ACLL))) >> 32) ^ v237 ^ (((v238 >> 2) & 0x3FF76F37000000 ^ v238) >> 24) ^ 0x1B1807C6;
  v250 = (((v244 >> 2) & 0x6F37908F00 ^ v244) >> 8) ^ (((v246 >> 2) & 0x3FF76F37000000 ^ v246) >> 24) ^ (((v243 >> 2) & 0x333FF76F00000000 ^ v243) >> 32) ^ 0x548664CC ^ ((((v245 >> 2) & 0x333FF76F37908F6DLL) + (v245 ^ 0xC600213CEE2D2F67) - 2 * ((v245 >> 2) & 0x333FF76F37908F6DLL & (v245 ^ 0xC600213CEE2D2F67))) >> 16);
  v251 = *(v56 + v250);
  v252 = *(v56 + BYTE2(v248));
  LODWORD(v225) = *(v56 + v248);
  v253 = *(v56 + (v247 >> 24));
  v254 = *(v56 + BYTE1(v250));
  v255 = *(v56 + BYTE2(v250));
  v256 = *(v56 + v247);
  v257 = *(v56 + (v250 >> 24));
  v258 = v248 >> 24;
  v259 = *(v56 + BYTE1(v247));
  v260 = *(v64 + 8 * (*(v56 + BYTE2(v247)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v261 = *(v64 + 8 * (*(v56 + BYTE2(v249)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v262 = *(v64 + 8 * ((-(v225 ^ 0xBF) ^ 0xEC863539 ^ (195 - (v225 ^ 0x7C)) ^ ((v225 ^ 0xBF) - 326748871 - ((2 * (v225 ^ 0xBF)) & 0x72))) + 195)) + 0x75C35C321A9704ACLL;
  v263 = *(v64 + 8 * (v251 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v264 = *(v64 + 8 * (*(v56 + (v249 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v263) = (((v261 >> 2) & 0xF76F37900000 ^ v261) >> 16) ^ (((v262 >> 2) & 0x3FF76F37000000 ^ v262) >> 24) ^ (((v263 >> 2) & 0x333FF76F00000000 ^ v263) >> 32);
  v265 = *(v64 + 8 * (*(v56 + BYTE1(v248)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v266 = *(v64 + 8 * (v254 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v267 = *(v64 + 8 * (v253 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v268 = *(v64 + 8 * (v255 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v269 = *(v64 + 8 * (v256 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v270 = *(v64 + 8 * (*(v56 + v249) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v271 = *(v64 + 8 * (v257 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v272 = *(v64 + 8 * (v259 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v273 = *(v64 + 8 * (*(v56 + BYTE1(v249)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v271) = (((v271 >> 2) & 0x333FF76F00000000 ^ v271) >> 32) ^ (((v273 >> 2) & 0xF76F37900000 ^ v273) >> 16);
  v274 = *(v64 + 8 * (*(v56 + v258) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v275 = v263 ^ 0xF89EBE71 ^ (((v260 >> 2) & 0x6F37908F00 ^ v260) >> 8);
  v276 = (((v265 >> 2) & 0x333FF76F00000000 ^ v265) >> 32) ^ (((v266 >> 2) & 0x6F37908F00 ^ v266) >> 8) ^ (((v264 >> 2) & 0x3FF76F37000000 ^ v264) >> 24) ^ 0xE7E3B42B ^ (((v267 >> 2) & 0xF76F37900000 ^ v267) >> 16);
  v277 = (((v268 >> 2) & 0x6F37908F00 ^ v268) >> 8) ^ ((((*(v64 + 8 * (v252 ^ 0x7C)) + 0x75C35C321A9704ACLL) >> 2) & 0x333FF76F00000000 ^ (*(v64 + 8 * (v252 ^ 0x7C)) + 0x75C35C321A9704ACLL)) >> 32) ^ (((v270 >> 2) & 0x3FF76F37000000 ^ v270) >> 24) ^ 0xD1F8A8B0 ^ (((v269 >> 2) & 0xF76F37900000 ^ v269) >> 16);
  v278 = *(v56 + (((((v268 >> 2) & 0x37908F00 ^ v268) >> 8) ^ ((((*(v64 + 8 * (v252 ^ 0x7C)) + 0x75C35C321A9704ACLL) >> 2) & 0x333FF76F00000000 ^ (*(v64 + 8 * (v252 ^ 0x7C)) + 0x75C35C321A9704ACLL)) >> 32) ^ (((v270 >> 2) & 0x3FF76F37000000 ^ v270) >> 24) ^ 0xA8B0 ^ (((v269 >> 2) & 0x37900000 ^ v269) >> 16)) >> 8));
  v279 = (((v272 >> 2) & 0x6F37908F00 ^ v272) >> 8) ^ v271 ^ (((v274 >> 2) & 0x3FF76F37000000 ^ v274) >> 24) ^ 0x499C9C66;
  v280 = *(v56 + (v263 ^ 0x71u ^ (((v260 >> 2) & 0x8F00 ^ v260) >> 8)));
  v281 = *(v56 + ((v263 ^ 0xBE71 ^ (((v260 >> 2) & 0x37908F00 ^ v260) >> 8)) >> 8));
  v282 = *(v64 + 8 * (*(v56 + BYTE2(v275)) ^ 0x7CLL));
  v283 = (((0xCDE568FB54 - v282) ^ (v282 - ((2 * (v282 + 0x75C35C321A9704ACLL)) & 0x17A752C69AF7F7F0) - 0x7E68FA6A97ECFF5CLL) ^ ((((v282 + 0x75C35C321A9704ACLL) >> 2) & 0x333FF76F37908F6DLL) - (((v282 + 0x75C35C321A9704ACLL) >> 2) & 0x333FF76F37908F6DLL ^ (v282 + 0x75C35C321A9704ACLL))) ^ 0x634D7BFBF8) + (((v282 + 0x75C35C321A9704ACLL) >> 2) & 0x333FF76F37908F6DLL)) >> 8;
  v284 = *(v64 + 8 * (*(v56 + (v276 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v285 = *(v64 + 8 * (v278 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v286 = *(v64 + 8 * (*(v56 + v279) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v253) = (((v285 >> 2) & 0x3FF76F37000000 ^ v285) >> 24) ^ (((v284 >> 2) & 0xF76F37900000 ^ v284) >> 16) ^ (((v286 >> 2) & 0x333FF76F00000000 ^ v286) >> 32);
  v287 = *(v64 + 8 * (*(v56 + v276) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v288 = *(v64 + 8 * (*(v56 + BYTE2(v277)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v289 = *(v64 + 8 * (*(v56 + BYTE1(v279)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v288) = (((v288 >> 2) & 0x3FF76F37000000 ^ v288) >> 24) ^ (((v287 >> 2) & 0xF76F37900000 ^ v287) >> 16);
  v290 = *(v64 + 8 * (*(v56 + (v275 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v291 = *(v64 + 8 * (*(v56 + (v277 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v292 = *(v64 + 8 * (*(v56 + BYTE2(v279)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v292) = (((v292 >> 2) & 0x333FF76F00000000 ^ v292) >> 32) ^ (((v291 >> 2) & 0x3FF76F37000000 ^ v291) >> 24) ^ 0xC6211DD2;
  v293 = *(v64 + 8 * (v280 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v293) = (((v293 >> 2) & 0x6F37908F00 ^ v293) >> 8) ^ 0x3CEE2D2F;
  v294 = *(v64 + 8 * (*(v56 + BYTE1(v276)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v295 = *(v64 + 8 * (*(v56 + (v279 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v296 = *(v64 + 8 * (v281 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v296) = (((v296 >> 2) & 0xF76F37900000 ^ v296) >> 16) ^ (((v295 >> 2) & 0x6F37908F00 ^ v295) >> 8);
  v297 = *(v64 + 8 * (*(v56 + BYTE2(v276)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v298 = *(v64 + 8 * (*(v56 + v277) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v299 = ((v298 >> 2) & 0x333FF76F00000000 ^ v298) >> 32;
  v300 = v253 ^ 0xC6F4CEC9 ^ v283;
  v301 = (((v294 >> 2) & 0xF76F37900000 ^ v294) >> 16) ^ 0x15A05A23 ^ (v292 + v293 - 2 * (v293 & v292));
  LODWORD(v297) = v296 ^ (((v297 >> 2) & 0x3FF76F37000000 ^ v297) >> 24) ^ v299;
  v302 = v288 ^ (((v289 >> 2) & 0x333FF76F00000000 ^ v289) >> 32) ^ (((v290 >> 2) & 0x6F37908F00 ^ v290) >> 8) ^ 0x467A193;
  v303 = v297 ^ 0xAACA8EA7;
  v304 = *(v56 + ((v288 ^ (((v289 >> 2) & 0x333FF76F00000000 ^ v289) >> 32) ^ (((v290 >> 2) & 0x8F00 ^ v290) >> 8)) ^ 0x93u));
  v305 = *(v56 + BYTE2(v301));
  v306 = *(v56 + (v301 >> 24));
  v307 = *(v56 + (v297 ^ 0xA7u));
  v308 = *(v56 + (v300 >> 24));
  v309 = *(v56 + v301);
  v310 = *(v56 + v300);
  v311 = *(v56 + BYTE1(v300));
  LODWORD(v300) = *(v56 + BYTE2(v300)) ^ 0xBF;
  v312 = *(v64 + 8 * (v300 - 2 * (v300 & 0xFFFFFFC3) + 195)) + 0x75C35C321A9704ACLL;
  v313 = *(v56 + BYTE1(v301));
  v314 = ((v312 >> 2) & 0x333FF76F00000000 ^ v312) >> 32;
  v315 = *(v64 + 8 * (v304 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v316 = *(v64 + 8 * (v305 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v315) = (((v315 >> 2) & 0x6F37908F00 ^ v315) >> 8) ^ (((v316 >> 2) & 0xF76F37900000 ^ v316) >> 16);
  v317 = *(v64 + 8 * (*(v56 + (v303 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v318 = *(v64 + 8 * (*(v56 + BYTE1(v302)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v319 = *(v64 + 8 * (v306 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v320 = *(v64 + 8 * (v307 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v321 = *(v64 + 8 * (v308 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v322 = (((v319 >> 2) & 0x6F37908F00 ^ v319) >> 8) ^ (((v318 >> 2) & 0x333FF76F00000000 ^ v318) >> 32) ^ (((v320 >> 2) & 0xF76F37900000 ^ v320) >> 16);
  v323 = *(v64 + 8 * (v309 ^ 0x7C));
  v324 = v322 ^ (((v321 >> 2) & 0x3FF76F37000000 ^ v321) >> 24);
  v325 = *(v64 + 8 * (*(v56 + BYTE1(v303)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v326 = *(v64 + 8 * (v310 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v327 = *(v64 + 8 * (*(v56 + BYTE2(v302)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v328 = *(v64 + 8 * (*(v56 + BYTE2(v303)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v329 = *(v64 + 8 * (v311 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v330 = *(v64 + 8 * (*(v56 + (v302 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v330) = (((v329 >> 2) & 0x6F37908F00 ^ v329) >> 8) ^ (((v328 >> 2) & 0x333FF76F00000000 ^ v328) >> 32) ^ (((v330 >> 2) & 0xF76F37900000 ^ v330) >> 16);
  v331 = *(v64 + 8 * (v313 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v332 = ((v331 >> 2) & 0x3FF76F37000000 ^ v331) >> 24;
  v333 = (((v325 >> 2) & 0x333FF76F00000000 ^ v325) >> 32) ^ (((v326 >> 2) & 0x6F37908F00 ^ v326) >> 8) ^ ((((v323 + 0x75C35C321A9704ACLL) >> 2) & 0x3FF76F37000000 ^ (v323 + 0x75C35C321A9704ACLL)) >> 24) ^ (((v327 >> 2) & 0xF76F37900000 ^ v327) >> 16) ^ 0x3325D413;
  LODWORD(v330) = v330 ^ v332;
  v334 = v315 ^ (((v317 >> 2) & 0x3FF76F37000000 ^ v317) >> 24) ^ 0xF88C01D2 ^ v314;
  v335 = v324 ^ 0xECCAAFC7;
  v336 = v330 ^ 0x83FE8FF5;
  v337 = *(v56 + (v330 ^ 0xF5u));
  v338 = *(v56 + v334);
  v339 = *(v56 + BYTE1(v334));
  v340 = *(v56 + BYTE2(v334));
  v341 = *(v64 + 8 * (*(v56 + (v334 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v342 = ((v341 >> 2) & 0x3FF76F37000000 ^ v341) >> 24;
  v343 = *(v64 + 8 * (*(v56 + BYTE2(v335)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v344 = *(v64 + 8 * (*(v56 + BYTE2(v333)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v345 = *(v64 + 8 * (v337 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v346 = *(v64 + 8 * (*(v56 + (v335 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v347 = *(v64 + 8 * (*(v56 + (v333 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v348 = *(v64 + 8 * ((((*(v56 + BYTE1(v336)) ^ 0xBF) - (*(v56 + BYTE1(v336)) ^ 0x7C)) ^ 0xFFFFFFFE) + (*(v56 + BYTE1(v336)) ^ 0xBF))) + 0x75C35C321A9704ACLL;
  v349 = *(v64 + 8 * (v338 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v350 = *(v64 + 8 * (*(v56 + v333) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v351 = *(v64 + 8 * (*(v56 + BYTE2(v336)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v352 = *(v64 + 8 * (v339 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v353 = *(v64 + 8 * (*(v56 + (v324 ^ 0xC7u)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v351) = (((v351 >> 2) & 0x333FF76F00000000 ^ v351) >> 32) ^ (((v350 >> 2) & 0x3FF76F37000000 ^ v350) >> 24) ^ (((v352 >> 2) & 0x6F37908F00 ^ v352) >> 8);
  v354 = *(v64 + 8 * (*(v56 + (v336 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v355 = *(v64 + 8 * (v340 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v355) = (((v355 >> 2) & 0x6F37908F00 ^ v355) >> 8) ^ (((v354 >> 2) & 0x333FF76F00000000 ^ v354) >> 32);
  v356 = *(v64 + 8 * (*(v56 + (BYTE1(v324) ^ 0xAFLL)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v357 = ((v356 >> 2) & 0xF76F37900000 ^ v356) >> 16;
  v358 = *(v64 + 8 * (*(v56 + BYTE1(v333)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v359 = (((v343 >> 2) & 0x333FF76F00000000 ^ v343) >> 32) ^ v342 ^ (((v344 >> 2) & 0x6F37908F00 ^ v344) >> 8) ^ (((v345 >> 2) & 0xF76F37900000 ^ v345) >> 16) ^ 0x8CDA27AC;
  v360 = ((v358 >> 2) & 0x3FF76F37000000 ^ v358) >> 24;
  v361 = v351 ^ 0x673D9A20 ^ (((v353 >> 2) & 0xF76F37900000 ^ v353) >> 16);
  v362 = *(v56 + BYTE2(v361));
  v363 = (((v347 >> 2) & 0x3FF76F37000000 ^ v347) >> 24) ^ (((v348 >> 2) & 0x333FF76F00000000 ^ v348) >> 32) ^ (((v349 >> 2) & 0x6F37908F00 ^ v349) >> 8) ^ (((v346 >> 2) & 0xF76F37900000 ^ v346) >> 16) ^ 0x1A16EA6A;
  v364 = v355 ^ v360 ^ 0x7EC5C57B ^ v357;
  v365 = *(v56 + ((((v347 >> 2) & 0x37000000 ^ v347) >> 24) ^ (((v348 >> 2) & 0x333FF76F00000000 ^ v348) >> 32) ^ (((v349 >> 2) & 0x8F00 ^ v349) >> 8) ^ (((v346 >> 2) & 0x37900000 ^ v346) >> 16) ^ 0x6A));
  v366 = *(v56 + v364);
  v367 = *(v56 + (v361 >> 24));
  v368 = *(v56 + BYTE1(v363));
  v369 = *(v56 + BYTE1(v364));
  v370 = *(v56 + BYTE1(v359));
  v371 = *(v56 + BYTE2(v364));
  v372 = *(v56 + BYTE2(v359));
  v373 = *(v56 + BYTE2(v363));
  v374 = *(v56 + v361);
  v375 = *(v56 + (v364 >> 24));
  v376 = *(v56 + (v359 >> 24));
  v377 = *(v56 + (v363 >> 24));
  v378 = *(v64 + 8 * (*(v56 + v359) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v379 = *(v56 + BYTE1(v361));
  v380 = *(v64 + 8 * (v365 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v381 = *(v64 + 8 * (v362 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v382 = (((v380 >> 2) & 0x333FF76F00000000 ^ v380) >> 32) ^ (((v378 >> 2) & 0x3FF76F37000000 ^ v378) >> 24) ^ (((v381 >> 2) & 0x6F37908F00 ^ v381) >> 8);
  v383 = *(v64 + 8 * (v366 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v384 = ((v383 >> 2) & 0xF76F37900000 ^ v383) >> 16;
  v385 = *(v64 + 8 * (v368 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v386 = *(v64 + 8 * (v367 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v387 = *(v64 + 8 * (v369 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v388 = *(v64 + 8 * (v370 ^ 0x7C));
  v389 = (((v386 >> 2) & 0x3FF76F37000000 ^ v386) >> 24) ^ (((v387 >> 2) & 0x333FF76F00000000 ^ v387) >> 32) ^ (((v385 >> 2) & 0xF76F37900000 ^ v385) >> 16);
  v390 = (((v388 + 0x75C35C321A9704ACLL) >> 2) & 0x6F37908F00 ^ (v388 + 0x75C35C321A9704ACLL)) >> 8;
  v391 = *(v64 + 8 * (v374 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v392 = ((v391 >> 2) & 0x333FF76F00000000 ^ v391) >> 32;
  v393 = *(v64 + 8 * (v371 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v394 = *(v64 + 8 * (v372 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v395 = (((v393 >> 2) & 0x6F37908F00 ^ v393) >> 8) - ((((v393 >> 2) & 0x6F37908F00 ^ v393) >> 7) & 0xECDA222C) + 1986859286;
  v396 = ((v394 >> 2) & 0xF76F37900000 ^ v394) >> 16;
  v397 = *(v64 + 8 * (v373 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v398 = v397 & 0x800000000;
  if (((v397 >> 2) & v397 & 0x800000000) != 0)
  {
    v398 = -v398;
  }

  v399 = *(v64 + 8 * (v375 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v400 = *(v64 + 8 * (v376 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v401 = *(v64 + 8 * (v377 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v402 = *(v64 + 8 * (v379 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v401) = (((v400 >> 2) & 0x6F37908F00 ^ v400) >> 8) ^ (((v399 >> 2) & 0x333FF76F00000000 ^ v399) >> 32) ^ (((v401 >> 2) & 0xF76F37900000 ^ v401) >> 16);
  v403 = v389 ^ v390 ^ 0x119767F3;
  v404 = v382 ^ v384 ^ 0x75FCF5F7;
  v405 = v401 ^ (((v402 >> 2) & 0x3FF76F37000000 ^ v402) >> 24) ^ 0x1298F4AD;
  v406 = v396 ^ v392 ^ v395 ^ 0xB77BB8FF ^ (((v398 + ((v397 >> 2) & 0x3FF76F37000000)) ^ v397 & 0xFFFFF7FF000000) >> 24);
  v407 = *(v56 + BYTE1(v405));
  v408 = *(v56 + BYTE1(v403));
  v409 = *(v56 + v405);
  v410 = *(v56 + BYTE2(v405));
  v411 = *(v56 + BYTE1(v404));
  v412 = *(v56 + BYTE2(v403));
  v413 = v405 >> 24;
  v414 = *(v56 + BYTE2(v404));
  v415 = *(v56 + (v403 >> 24));
  v416 = v404 >> 24;
  v417 = *(v64 + 8 * (*(v56 + v404) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v418 = *(v64 + 8 * (*(v56 + (v389 ^ v390 ^ 0xF3)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v419 = *(v64 + 8 * (*(v56 + BYTE1(v406)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v418) = (((v418 >> 2) & 0x333FF76F00000000 ^ v418) >> 32) ^ (((v417 >> 2) & 0x3FF76F37000000 ^ v417) >> 24);
  v420 = *(v64 + 8 * (v409 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v421 = *(v64 + 8 * (v408 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v422 = *(v64 + 8 * (*(v56 + BYTE2(v406)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v423 = *(v64 + 8 * (v407 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v423) = (((v422 >> 2) & 0x333FF76F00000000 ^ v422) >> 32) ^ (((v421 >> 2) & 0x3FF76F37000000 ^ v421) >> 24) ^ (((v423 >> 2) & 0x6F37908F00 ^ v423) >> 8);
  v424 = *(v64 + 8 * (v411 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v425 = *(v64 + 8 * (*(v56 + (v406 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v426 = *(v64 + 8 * (v410 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v427 = *(v64 + 8 * (v414 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v426) = (((v426 >> 2) & 0x3FF76F37000000 ^ v426) >> 24) ^ (((v427 >> 2) & 0x333FF76F00000000 ^ v427) >> 32) ^ (((v425 >> 2) & 0xF76F37900000 ^ v425) >> 16);
  v428 = *(v64 + 8 * (v412 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v429 = *(v64 + 8 * (*(v56 + v413) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v430 = *(v64 + 8 * (*(v56 + v416) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v431 = *(v64 + 8 * (v415 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v431) = (((v430 >> 2) & 0x3FF76F37000000 ^ v430) >> 24) ^ (((v429 >> 2) & 0xF76F37900000 ^ v429) >> 16) ^ (((v431 >> 2) & 0x333FF76F00000000 ^ v431) >> 32);
  v432 = *(v64 + 8 * (*(v56 + v406) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v433 = v418 ^ (((v419 >> 2) & 0x6F37908F00 ^ v419) >> 8) ^ (((v420 >> 2) & 0xF76F37900000 ^ v420) >> 16) ^ 0x4B48E763;
  v434 = *(v56 + (v418 ^ (((v419 >> 2) & 0x8F00 ^ v419) >> 8) ^ (((v420 >> 2) & 0x37900000 ^ v420) >> 16) ^ 0x63));
  v435 = v423 ^ (((v424 >> 2) & 0xF76F37900000 ^ v424) >> 16) ^ 0xED45C108;
  v436 = v431 ^ (((v432 >> 2) & 0x6F37908F00 ^ v432) >> 8) ^ 0x936C1935;
  v437 = *(v56 + BYTE2(v436));
  v438 = *(v56 + (v435 >> 24));
  v439 = v426 ^ (((v428 >> 2) & 0x6F37908F00 ^ v428) >> 8) ^ 0xE6CDA0B4;
  v440 = *(v56 + (v423 ^ (((v424 >> 2) & 0x37900000 ^ v424) >> 16) ^ 8));
  v441 = *(v56 + (v436 >> 24));
  v442 = *(v56 + (v426 ^ (((v428 >> 2) & 0x8F00 ^ v428) >> 8) ^ 0xB4));
  v443 = *(v56 + BYTE1(v433));
  v444 = *(v56 + ((v426 ^ (((v428 >> 2) & 0x37908F00 ^ v428) >> 8) ^ 0xA0B4) >> 8));
  v445 = *(v56 + BYTE2(v433));
  v446 = *(v56 + BYTE1(v435));
  v447 = *(v56 + BYTE1(v436));
  v448 = *(v56 + v436);
  v449 = v434 ^ 0x7C;
  v450 = *(v56 + (v433 >> 24));
  v451 = *(v56 + BYTE2(v435));
  v452 = *(v64 + 8 * v449) + 0x75C35C321A9704ACLL;
  v453 = *(v56 + BYTE2(v439));
  v454 = *(v64 + 8 * (v438 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v455 = *(v64 + 8 * (*(v56 + (v439 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v456 = *(v64 + 8 * (v437 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v457 = *(v64 + 8 * (v440 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v458 = *(v64 + 8 * (v441 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v459 = *(v64 + 8 * (v443 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v444 ^= 0x7CuLL;
  v460 = *(v64 + 8 * (v448 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v461 = *(v64 + 8 * (v445 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v462 = *(v64 + 8 * (v446 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v463 = (((v460 >> 2) & 0x333FF76F00000000 ^ v460) >> 32) ^ ((((*(v64 + 8 * v444) + 0x75C35C321A9704ACLL) >> 2) & 0x3FF76F37000000 ^ (*(v64 + 8 * v444) + 0x75C35C321A9704ACLL)) >> 24) ^ (((v461 >> 2) & 0x6F37908F00 ^ v461) >> 8) ^ (((v462 >> 2) & 0xF76F37900000 ^ v462) >> 16);
  v464 = *(v64 + 8 * (v447 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v465 = *(v64 + 8 * (v450 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v466 = *(v64 + 8 * (v451 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v464) = (((v465 >> 2) & 0x3FF76F37000000 ^ v465) >> 24) ^ (((v464 >> 2) & 0xF76F37900000 ^ v464) >> 16);
  v467 = *(v64 + 8 * (v453 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v468 = (((v454 >> 2) & 0x3FF76F37000000 ^ v454) >> 24) ^ (((v452 >> 2) & 0xF76F37900000 ^ v452) >> 16) ^ (((v455 >> 2) & 0x333FF76F00000000 ^ v455) >> 32) ^ (((((v456 - (v456 ^ 0xC600213CEE2D2F67)) ^ 0xFFFFFFFFFELL) + v456) ^ (v456 >> 2) & 0x6F37908F00) >> 8) ^ 0x52F5F94E;
  v469 = (((*(v64 + 8 * (v442 ^ 0x7C)) - ((2 * (*(v64 + 8 * (v442 ^ 0x7C)) + 0x75C35C321A9704ACLL)) & 0x8C004279DC5A5ECELL) + 0x3BC37D6F08C43413) ^ ((*(v64 + 8 * (v442 ^ 0x7C)) + 0x75C35C321A9704ACLL) >> 2) & 0x333FF76F00000000) >> 32) ^ (((v457 >> 2) & 0x3FF76F37000000 ^ v457) >> 24) ^ (((v458 >> 2) & 0x6F37908F00 ^ v458) >> 8) ^ (((v459 >> 2) & 0xF76F37900000 ^ v459) >> 16) ^ 0xB9C2E3A9;
  v470 = v464 ^ (((v466 >> 2) & 0x333FF76F00000000 ^ v466) >> 32) ^ (((v467 >> 2) & 0x6F37908F00 ^ v467) >> 8) ^ 0x57C9BD1C;
  v471 = v463 ^ 0x329C399B;
  v472 = *(a11 + (v471 >> 24));
  v473 = *(a11 + BYTE2(v469));
  v474 = *(v64 + 8 * (*(a11 + BYTE1(v468)) ^ 0x7CLL));
  v475 = *(a11 + BYTE1(v471));
  v476 = *(v64 + 8 * (*(a11 + (v469 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v477 = *(v64 + 8 * (*(a11 + (BYTE2(v463) ^ 0x9CLL)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v478 = *(v64 + 8 * (*(a11 + BYTE2(v470)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v476) = (((v476 >> 2) & 0xF76F37900000 ^ v476) >> 16) ^ (((v477 >> 2) & 0x3FF76F37000000 ^ v477) >> 24) ^ ((((((2 * v474) & 0xEB86B864352E0958) + (v474 ^ 0x75C35C321A9704ACLL)) >> 2) & 0x6F37908F00 ^ (((2 * v474) & 0xEB86B864352E0958) + (v474 ^ 0x75C35C321A9704ACLL))) >> 8);
  v479 = *(v64 + 8 * (*(a11 + (((((*(v64 + 8 * (v442 ^ 0x7C)) - ((2 * (*(v64 + 8 * (v442 ^ 0x7C)) + 0x75C35C321A9704ACLL)) & 0x8C004279DC5A5ECELL) + 0x3BC37D6F08C43413) ^ ((*(v64 + 8 * (v442 ^ 0x7C)) + 0x75C35C321A9704ACLL) >> 2) & 0x333FF76F00000000) >> 32) ^ (((v457 >> 2) & 0x37000000 ^ v457) >> 24) ^ (((v458 >> 2) & 0x8F00 ^ v458) >> 8) ^ (((v459 >> 2) & 0x37900000 ^ v459) >> 16)) ^ 0xA9u)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v480 = ((v479 >> 2) & 0x6F37908F00 ^ v479) >> 8;
  v481 = *(v64 + 8 * (v472 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v482 = *(v64 + 8 * (*(a11 + (v470 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v483 = *(v64 + 8 * (*(a11 + BYTE2(v468)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v484 = *(v64 + 8 * (*(a11 + (v463 ^ 0x9Bu)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v442) = v480 ^ (((v482 >> 2) & 0x3FF76F37000000 ^ v482) >> 24) ^ (((v483 >> 2) & 0x333FF76F00000000 ^ v483) >> 32);
  v485 = *(v64 + 8 * (*(a11 + v470) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v486 = *(v64 + 8 * (*(a11 + BYTE1(v469)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v487 = *(v64 + 8 * (*(a11 + BYTE1(v470)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v488 = *(v64 + 8 * (*(a11 + v468) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v489 = *(v64 + 8 * (v473 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v489) = (((v488 >> 2) & 0x6F37908F00 ^ v488) >> 8) ^ (((v487 >> 2) & 0x333FF76F00000000 ^ v487) >> 32) ^ (((v489 >> 2) & 0xF76F37900000 ^ v489) >> 16);
  v490 = *(v64 + 8 * (v475 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v491 = v476 ^ (((v478 >> 2) & 0x333FF76F00000000 ^ v478) >> 32) ^ 0xF9BD6719;
  v492 = v489 ^ 0xF0748F2B ^ (((v490 >> 2) & 0x3FF76F37000000 ^ v490) >> 24);
  v493 = *(a11 + v492);
  v494 = (((v481 >> 2) & 0xF76F37900000 ^ v481) >> 16) ^ v442 ^ 0x71C90BD8;
  v495 = (((v485 >> 2) & 0x6F37908F00 ^ v485) >> 8) ^ ((((*(v64 + 8 * (*(a11 + (v468 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL) >> 2) & 0xF76F37900000 ^ (*(v64 + 8 * (*(a11 + (v468 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL)) >> 16) ^ (((v486 >> 2) & 0x3FF76F37000000 ^ v486) >> 24) ^ 0xC5B80054 ^ (((v484 >> 2) & 0x333FF76F00000000 ^ v484) >> 32);
  v496 = *(a11 + (((((v485 >> 2) & 0x37908F00 ^ v485) >> 8) ^ ((((*(v64 + 8 * (*(a11 + (v468 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL) >> 2) & 0x37900000 ^ (*(v64 + 8 * (*(a11 + (v468 >> 24)) ^ 0x7CLL)) + 446104748)) >> 16) ^ (((v486 >> 2) & 0x3FF76F37000000 ^ v486) >> 24) ^ 0x54 ^ (((v484 >> 2) & 0x333FF76F00000000 ^ v484) >> 32)) >> 8));
  v497 = *(a11 + BYTE2(v495));
  v498 = *(a11 + BYTE1(v492));
  v499 = *(a11 + (v495 >> 24));
  LOBYTE(v459) = *(a11 + BYTE2(v492));
  v500 = *(a11 + (v492 >> 24));
  v501 = *(v64 + 8 * (*(a11 + BYTE2(v491)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v502 = *(a11 + v495);
  v503 = ((2 * *(v64 + 8 * (*(a11 + BYTE1(v494)) ^ 0x7CLL))) & 0xEB86B864352E0958) + (*(v64 + 8 * (*(a11 + BYTE1(v494)) ^ 0x7CLL)) ^ 0x75C35C321A9704ACLL);
  v504 = *(v64 + 8 * (v496 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v505 = *(v64 + 8 * (v493 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  LODWORD(v495) = (((v504 >> 2) & 0x333FF76F00000000 ^ v504) >> 32) ^ (((v501 >> 2) & 0xF76F37900000 ^ v501) >> 16) ^ (((v505 >> 2) & 0x6F37908F00 ^ v505) >> 8) ^ (((v503 >> 2) & 0x3FF76F37000000 ^ v503) >> 24);
  v506 = *(v64 + 8 * (*(a11 + BYTE2(v494)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v507 = *(v64 + 8 * (v497 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v508 = *(v64 + 8 * (v498 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v509 = *(v64 + 8 * (*(a11 + (v491 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v510 = *(v64 + 8 * (v499 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v511 = *(v64 + 8 * (v459 ^ 0x7Cu)) + 0x75C35C321A9704ACLL;
  v512 = *(v64 + 8 * (*(a11 + v491) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v513 = *(v64 + 8 * (*(a11 + (v494 >> 24)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v514 = *(v64 + 8 * (v500 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v515 = *(v64 + 8 * (*(a11 + BYTE1(v491)) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  LODWORD(v514) = (((v515 >> 2) & 0x333FF76F00000000 ^ v515) >> 32) ^ (((v514 >> 2) & 0x3FF76F37000000 ^ v514) >> 24);
  v516 = *(v64 + 8 * (*(a11 + v494) ^ 0x7CLL)) + 0x75C35C321A9704ACLL;
  v517 = *(v64 + 8 * (v502 ^ 0x7C)) + 0x75C35C321A9704ACLL;
  v518 = v495 ^ 0xD5DC1069;
  LODWORD(v516) = v514 ^ (((v516 >> 2) & 0x6F37908F00 ^ v516) >> 8) ^ (((v517 >> 2) & 0xF76F37900000 ^ v517) >> 16);
  v519 = (((v507 >> 2) & 0xF76F37900000 ^ v507) >> 16) ^ (((v506 >> 2) & 0x6F37908F00 ^ v506) >> 8) ^ (((v508 >> 2) & 0x3FF76F37000000 ^ v508) >> 24) ^ (((v509 >> 2) & 0x333FF76F00000000 ^ v509) >> 32) ^ 0x159393FB;
  v520 = v516 ^ 0x33745E04;
  v521 = (((v511 >> 2) & 0x6F37908F00 ^ v511) >> 8) ^ (((v510 >> 2) & 0x333FF76F00000000 ^ v510) >> 32) ^ (((v512 >> 2) & 0xF76F37900000 ^ v512) >> 16) ^ (((v513 >> 2) & 0x3FF76F37000000 ^ v513) >> 24) ^ 0xF10C988D;
  LODWORD(v512) = *(a11 + (((((v507 >> 2) & 0x37900000 ^ v507) >> 16) ^ (((v506 >> 2) & 0x37908F00 ^ v506) >> 8) ^ (((v508 >> 2) & 0x3FF76F37000000 ^ v508) >> 24) ^ (((v509 >> 2) & 0x333FF76F00000000 ^ v509) >> 32) ^ 0x93FB) >> 8)) | (*(a11 + BYTE1(v518)) << 8) | (*(a11 + (((((v511 >> 2) & 0x37908F00 ^ v511) >> 8) ^ (((v510 >> 2) & 0x333FF76F00000000 ^ v510) >> 32) ^ (((v512 >> 2) & 0x37900000 ^ v512) >> 16) ^ (((v513 >> 2) & 0x3FF76F37000000 ^ v513) >> 24) ^ 0x988D) >> 8)) << 24) | (*(a11 + BYTE1(v520)) << 16);
  LODWORD(v513) = *(a11 + BYTE2(v521)) | (*(a11 + BYTE2(v519)) << 8) | (*(a11 + BYTE2(v520)) << 24) | (*(a11 + BYTE2(v518)) << 16);
  LODWORD(v519) = *(a11 + (v521 >> 24)) | (*(a11 + (v519 >> 24)) << 8) | (*(a11 + (v520 >> 24)) << 24) | (*(a11 + (v518 >> 24)) << 16);
  v595 = *(a11 + (v495 ^ 0x69u)) | (*(a11 + (((((v507 >> 2) & 0x37900000 ^ v507) >> 16) ^ (((v506 >> 2) & 0x8F00 ^ v506) >> 8) ^ (((v508 >> 2) & 0x37000000 ^ v508) >> 24) ^ (((v509 >> 2) & 0x333FF76F00000000 ^ v509) >> 32)) ^ 0xFBu)) << 24);
  v522 = (__ROR8__(a54, 8) & 0xF8FFFFFFFFFFFFFFLL) - 0x2607A7720729A79;
  v523 = v522 ^ 0xDE361A1E0EB919D3;
  v522 ^= 0x32CA3658F2D235ECuLL;
  v524 = (__ROR8__(v523, 8) + v522) ^ 0x3EC7945A9334A12DLL;
  v525 = v524 ^ __ROR8__(v522, 61);
  v526 = (__ROR8__(v524, 8) + v525) ^ 0x4ABA94BA7BE94F4;
  v527 = v526 ^ __ROR8__(v525, 61);
  v528 = (__ROR8__(v526, 8) + v527) ^ 0x87C30A0A7B081733;
  v529 = __ROR8__(v527, 61);
  v530 = (((v528 >> (v444 & 8) >> (~v444 & 8)) | (v528 << 56)) + (v528 ^ v529)) ^ 0x257DF8190A0FAA7CLL;
  v531 = v530 ^ __ROR8__(v528 ^ v529, 61);
  v532 = (__ROR8__(v530, 8) + v531) ^ 0x2E769D09049CAA6ALL;
  v533 = v532 ^ __ROR8__(v531, 61);
  v534 = (__ROR8__(v532, 8) + v533) ^ 0xCAC8DE2EE114DF37;
  v535 = __ROR8__(v534, 8);
  v536 = __ROR8__((a54 + 8) & 0xFFFFFFFFFFFFFFF8, 8) - 0x2607A7720729A79;
  v537 = v534 ^ __ROR8__(v533, 61);
  *(&v538 + 1) = v536 ^ 0x32CA3658F2D235ECLL;
  *&v538 = v536;
  v539 = (__ROR8__(v536 ^ 0xDE361A1E0EB919D3, 8) + (v536 ^ 0x32CA3658F2D235ECLL)) ^ 0x3EC7945A9334A12DLL;
  v540 = __ROR8__(v539, 8);
  v541 = v539 ^ (v538 >> 61);
  *(&v538 + 1) = v541 ^ 1;
  *&v538 = v541;
  v542 = (v541 ^ 1) + v540;
  v543 = __ROR8__(v542 ^ 0x4ABA94BA7BE94F4, 8);
  v544 = (v538 >> 61) ^ v542;
  *(&v538 + 1) = v544 ^ 0x4ABA94BA7BE94F4;
  *&v538 = v544;
  v545 = (v543 + (v544 ^ 0x4ABA94BA7BE94F4)) ^ 0x87C30A0A7B081733 ^ (v538 >> 61);
  v546 = (__ROR8__((v543 + *(&v538 + 1)) ^ 0x87C30A0A7B081733, 8) + v545) ^ 0x257DF8190A0FAA7CLL;
  v547 = v546 ^ __ROR8__(v545, 61);
  v548 = (v547 + __ROR8__(v546, 8)) ^ 0x2E769D09049CAA6ALL;
  *&v538 = __ROR8__(v547, 61);
  v549 = __ROR8__(((v548 ^ v538) + (v548 >> 8) + (v548 << 56)) ^ 0xCAC8DE2EE114DF37, 8);
  v550 = __ROR8__((a54 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v551 = ((v548 ^ v538) + (v548 >> 8) + (v548 << 56)) ^ 0xCAC8DE2EE114DF37 ^ __ROR8__(v548 ^ v538, 61);
  v552 = (v550 - 0x2607A7720729A79) ^ 0x32CA3658F2D235ECLL;
  v553 = (__ROR8__((v550 - 0x2607A7720729A79) ^ 0xDE361A1E0EB919D3, 8) + v552) ^ 0x3EC7945A9334A12DLL;
  v554 = v553 ^ __ROR8__(v552, 61);
  v555 = (v554 + __ROR8__(v553, 8)) ^ 0x4ABA94BA7BE94F4;
  v556 = v555 ^ __ROR8__(v554, 61);
  v557 = (__ROR8__(v555, 8) + v556) ^ 0x87C30A0A7B081733;
  *&v538 = __ROR8__(v556, 61);
  v558 = v557 ^ v538;
  v559 = ((v557 ^ v538) + (v557 << 56) + (v557 >> 8)) ^ 0x257DF8190A0FAA7CLL;
  v560 = v559 ^ __ROR8__(v558, 61);
  v561 = (v560 + __ROR8__(v559, 8)) ^ 0x2E769D09049CAA6ALL;
  v562 = v561 ^ __ROR8__(v560, 61);
  v563 = __ROR8__(v561, 8) + v562;
  v564 = (v551 + v549) ^ 0x67C4AB124F7C297BLL;
  LOBYTE(v497) = 8 * (a54 & 7);
  v565 = ((v535 + v537) ^ 0x67C4AB124F7C297BLL) >> v497;
  v566 = v565 + 32 * (v564 << (v497 ^ 0x3Bu));
  v567 = (v563 ^ __ROR8__(v562, 61) ^ 0x2C8DE2EE114DF37) + __ROR8__(v563 ^ 0xCAC8DE2EE114DF37, 8);
  v594 = v566 >> 24;
  v593 = v566 >> 16;
  v591 = v566 >> 8;
  v592 = HIDWORD(v566);
  v590 = v566 >> 40;
  LOBYTE(v506) = *(a52 + ((BYTE5(v566) ^ a46) ^ 0x40)) + (BYTE5(v566) ^ a46 ^ 0x97);
  v586 = HIWORD(v566);
  v589 = HIBYTE(v566);
  LOBYTE(v566) = *(a52 + ((a46 ^ (v564 >> v497)) ^ 0x23)) + (a46 ^ (v564 >> v497) ^ 0xF4);
  v568 = (v564 >> v497) + 32 * ((v567 ^ 0x7C4AB124F7C297BLL) << (v497 ^ 0x3Bu));
  v587 = v564 >> v497;
  v588 = v568 >> 8;
  v585 = v568 >> 16;
  v584 = v568 >> 24;
  v569 = *(a52 + ((a46 ^ (((v564 >> v497) + 32 * ((v567 ^ 0x4F7C297B) << (v497 ^ 0x3B))) >> 24)) ^ 0x62)) + (a46 ^ (v568 >> 24) ^ 0xB5);
  v581 = HIDWORD(v568);
  v583 = v568 >> 40;
  LODWORD(v567) = *(a52 + ((a46 ^ BYTE5(v568)) ^ 0x61)) + (a46 ^ (v568 >> 40) ^ 0xB6);
  v582 = HIWORD(v568);
  v580 = HIBYTE(v568);
  LODWORD(v512) = v512 ^ 0x32ABF226;
  LOBYTE(v474) = v512 ^ (*(a52 + ((BYTE1(v566) ^ a46) ^ 0xD0)) + (BYTE1(v566) ^ a46 ^ 7)) ^ 0xA;
  LOBYTE(v549) = (*(a52 + (((v565 + 32 * (v564 << (v497 ^ 0x3B))) >> 24) ^ a46 ^ 0x59)) + (((v565 + 32 * (v564 << (v497 ^ 0x3B))) >> 24) ^ a46 ^ 0x8E)) ^ BYTE2(v512);
  LOBYTE(v512) = (*(a52 + ((a46 ^ BYTE1(v568)) ^ 0x8DLL)) + (a46 ^ BYTE1(v568) ^ 0x5A)) ^ ((v519 ^ 0x3F9B9855) >> 24);
  LOBYTE(v564) = (*(a52 + ((a46 ^ BYTE2(v568)) ^ 0x78)) + (a46 ^ BYTE2(v568) ^ 0xAF)) ^ ((v519 ^ 0x3F9B9855) >> 16);
  v570 = v569 ^ ((v519 ^ 0x3F9B9855) >> 8);
  v571 = *(&off_100315F70 + (a8 ^ 0x16F8)) - 4;
  LODWORD(v568) = v571[((*(a52 + ((BYTE2(v566) ^ a46) ^ 0x39)) + (BYTE2(v566) ^ a46 ^ 0xEE)) ^ BYTE3(v512)) ^ 0xA];
  LODWORD(v537) = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xFFFFFFD4);
  LODWORD(v568) = v571[((*(a52 + ((v565 ^ a46) ^ 0xA0)) + (v565 ^ a46 ^ 0x77)) ^ BYTE1(v512)) ^ 0xA];
  LODWORD(v562) = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xFFFFFFD4);
  LODWORD(v568) = v571[v549 ^ 0xA];
  v572 = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xFFFFFFD4);
  LODWORD(v568) = v571[v564 ^ 0xA];
  v573 = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xFFFFFFD4);
  v574 = v571[v513 ^ 0x93 ^ v506 ^ 0xA] ^ 0x7D ^ ((v571[v513 ^ 0x93 ^ v506 ^ 0xA] ^ 0x7Du) >> 4) ^ ((v571[v513 ^ 0x93 ^ v506 ^ 0xA] >> 7) | 0xFFFFFFD4);
  LODWORD(v568) = v571[((*(a52 + ((BYTE4(v566) ^ a46) ^ 0xFELL)) + (BYTE4(v566) ^ a46 ^ 0x29)) ^ ((v513 ^ 0xD293) >> 8)) ^ 0xA];
  v575 = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xFFFFFFD4);
  LODWORD(v568) = v571[v519 ^ 0x55 ^ v566 ^ 0xA];
  LODWORD(v535) = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xFFFFFFD4);
  LODWORD(v568) = v571[((*(a52 + ((BYTE6(v566) ^ a46) ^ 0x77)) + (BYTE6(v566) ^ a46 ^ 0xA0)) ^ ((v513 ^ 0xED93D293) >> 24)) ^ 0xA];
  LOBYTE(v519) = (*(a52 + ((HIBYTE(v566) ^ a46) ^ 0xB0)) + (HIBYTE(v566) ^ a46 ^ 0x67)) ^ BYTE2(v513) ^ 0x93 ^ 0xA;
  v576 = v562;
  LODWORD(v513) = v571[v519] ^ 0x7D ^ ((v571[v519] ^ 0x7Du) >> 4) ^ ((v571[v519] >> 7) | 0xFFFFFFD4);
  LODWORD(v519) = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xFFFFFFD4);
  LODWORD(v568) = v571[v512 ^ 0xA];
  v577 = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xFFFFFFD4);
  LODWORD(v568) = v571[v570 ^ 0xA];
  LODWORD(v503) = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xFFFFFFD4);
  LODWORD(v568) = (v595 | (*(a11 + v521) << 16) | (*(a11 + v520) << 8)) ^ 0x501A7C06;
  LODWORD(v521) = v571[v595 ^ 6 ^ v567 ^ 0xA];
  LODWORD(v512) = v571[((*(a52 + ((a46 ^ HIBYTE(v568)) ^ 0x58)) + (a46 ^ HIBYTE(v568) ^ 0x8F)) ^ BYTE2(v568)) ^ 0xA];
  LODWORD(v566) = v512 ^ 0x7D ^ ((v512 ^ 0x7D) >> 4) ^ ((v512 >> 7) | 0xFFFFFFD4);
  LODWORD(v512) = v571[((*(a52 + ((a46 ^ BYTE4(v568)) ^ 0x4FLL)) + (a46 ^ BYTE4(v568) ^ 0x98)) ^ BYTE1(v568)) ^ 0xA];
  LODWORD(v568) = v571[((*(a52 + ((a46 ^ BYTE6(v568)) ^ 0x9CLL)) + (a46 ^ BYTE6(v568) ^ 0x4B)) ^ BYTE3(v568)) ^ 0xA];
  a54[1] = v571[v474] ^ 0x7D ^ ((v571[v474] ^ 0x7Du) >> 4) ^ ((v571[v474] >> 7) | 0xD4);
  *a54 = v576;
  a54[3] = v572;
  a54[2] = v537;
  a54[5] = v574;
  a54[4] = v575;
  a54[8] = v535;
  a54[7] = v513;
  a54[6] = v519;
  a54[9] = v577;
  a54[11] = v503;
  a54[10] = v573;
  a54[13] = v521 ^ 0x7D ^ ((v521 ^ 0x7D) >> 4) ^ ((v521 >> 7) | 0xD4);
  a54[15] = v566;
  a54[12] = v512 ^ 0x7D ^ ((v512 ^ 0x7D) >> 4) ^ ((v512 >> 7) | 0xD4);
  a54[14] = v568 ^ 0x7D ^ ((v568 ^ 0x7D) >> 4) ^ ((v568 >> 7) | 0xD4);
  if (a51 < 0x4493D56E != a49 + 1150539134 < 0x4493D56E)
  {
    v578 = a51 < 0x4493D56E;
  }

  else
  {
    v578 = a49 + 1150539134 < a51;
  }

  return (*(a55 + 8 * (a8 ^ (13769 * v578))))(v577, v572, v573, v574, v575, a8 - 4886, a49, a8, a9, a10, a11, v580, v581, v582, v583, v584, v585, v586, v587, v588, v589, v590, v591, v592, v593, v594, v565, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a54 + 16);
}

uint64_t sub_1001836C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, char a14, __int16 a15, char a16, uint64_t a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, char *a23)
{
  a20 = a17;
  a21 = &a16;
  a22 = (v23 + 1844) ^ (1710126949 * ((&a18 & 0xA6482EBC | ~(&a18 | 0xA6482EBC)) ^ 0x6BAC8AD3));
  a23 = &a12;
  (*(v24 + 8 * (v23 ^ 0x20BD)))(&a18);
  a20 = a17;
  a21 = &a14;
  a19 = (v23 + 1738) ^ (33731311 * ((&a18 - 548530111 - 2 * (&a18 & 0xDF4E1841)) ^ 0xE6B8D262));
  (*(v24 + 8 * (v23 + 8087)))(&a18);
  LODWORD(a21) = v23 - 2008441969 * ((&a18 & 0x5C8F79E7 | ~(&a18 | 0x5C8F79E7)) ^ 0xEBE9D216) + 4171;
  a20 = a17;
  v25 = (*(v24 + 8 * (v23 ^ 0x2049)))(&a18);
  return (*(v24 + 8 * ((11 * (a18 == v23 + 16256509)) ^ v23)))(v25);
}

uint64_t sub_10018382C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = 476323082 - 1710126949 * ((2 * (&a15 & 0x7EED5830) - &a15 - 2129483825) ^ 0xB309FC5F);
  v17 = (*(v16 + 77088))(&a15);
  return (*(v16 + 8 * ((57 * (a16 == 16257999)) ^ 0xEC8u)))(v17);
}

uint64_t sub_100183974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a14 = (v16 - 380) ^ (33731311 * ((((2 * &a13) | 0x854E64F8) - &a13 - 1118253692) ^ 0x7B51F85F));
  a15 = a10;
  a16 = &a12;
  (*(v17 + 8 * (v16 ^ 0x2B71)))(&a13);
  LODWORD(a16) = v16 - 2008441969 * ((&a13 - 1710814488 - 2 * (&a13 & 0x9A070AE8)) ^ 0xD29E5EE6) + 2053;
  a15 = a10;
  v19 = (*(v17 + 8 * (v16 + 6019)))(&a13);
  return (*(v17 + 8 * (((((v16 - 1) ^ (a13 == v18)) & 1) * ((13 * (v16 ^ 0xF0F)) ^ 0xE18)) ^ v16)))(v19);
}

uint64_t sub_100183AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v38 = (v34 + 229020671) & 0xF2596FCB;
  if (((a21 - v34) | (v34 - a21)) <= (v38 - 972))
  {
    v39 = 0x80000000;
  }

  else
  {
    v39 = -2147483647;
  }

  *v35 = v39 + ~v34;
  (*(v36 + 8 * (v34 + 9604)))(a34);
  v40 = v35[(v38 + 5694) ^ 0x1A08];
  v41 = v35[398] ^ ((v35[2] & 0x7FFFFFFE | v40 & 0x80000000) >> 1) ^ *(v37 + 4 * (v35[2] & 1));
  *v35 = v35[397] ^ ((v40 & 0x7FFFFFFE | *v35 & 0x80000000) >> 1) ^ *(v37 + 4 * (v40 & 1));
  v35[1] = v41;
  return (*(v36 + 8 * (v38 + 1774)))();
}

uint64_t sub_100183C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(STACK[0x4D0] + 20);
  if (v5)
  {
    if (v5 == 1)
    {
      (*(a4 + 8 * (v4 ^ 0x31E5)))(STACK[0x738], 0, 32);
      v6 = STACK[0x3E8];
      LODWORD(STACK[0x3C0]) = (v4 + 1621574764) & 0x9F58B77F;
      LODWORD(STACK[0x390]) = 197499121;
      v7 = 134 * (v4 ^ 0x1462);
      LODWORD(STACK[0x3B0]) = v7;
      LODWORD(STACK[0x3A0]) = v7 ^ 0x383;
      return sub_1001AB2D4(v6, &STACK[0x5F0]);
    }

    else
    {
      return sub_1001CCA8C(a1, a2, a3, a4);
    }
  }

  else
  {
    v9 = STACK[0x5F0];
    STACK[0x778] = &STACK[0x4B0];
    STACK[0x528] = *(a4 + 8 * (v4 - 4993));
    STACK[0x828] = 0;
    LODWORD(STACK[0x62C]) = 1481390186;
    LODWORD(STACK[0x78C]) = 0;
    return (*(a4 + 8 * (((v9 == 0) * ((31 * (v4 ^ 0x1402)) ^ 0xB94)) ^ (v4 + 3988))))();
  }
}

uint64_t sub_100183DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, int a14, char a15, int a16, unsigned int a17, uint64_t a18, char *a19)
{
  a17 = (v20 + 591) ^ (33731311 * ((((2 * &a16) | 0xFB183242) - &a16 - 2106333473) ^ 0x447AD302));
  a18 = a12;
  a19 = &a11;
  (*(v19 + 8 * (v20 + 6940)))(&a16);
  a18 = a12;
  a19 = &a15;
  a17 = (v20 + 591) ^ (33731311 * (((&a16 | 0x24527D6C) - (&a16 & 0x24527D6C)) ^ 0x1DA4B74F));
  (*(v19 + 8 * (v20 + 6940)))(&a16);
  LODWORD(a19) = v20 - 2008441969 * ((&a16 - 2061126652 - 2 * (&a16 & 0x8525B404)) ^ 0xCDBCE00A) + 3024;
  a18 = a12;
  v21 = (*(v19 + 8 * (v20 ^ 0x2FD6)))(&a16);
  return (*(v19 + 8 * (((a16 == 16257999) * (((v20 + 1531) | 0x601) ^ 0x3FBF)) ^ v20)))(v21);
}

uint64_t sub_100183F70()
{
  v4 = STACK[0x860] + 56;
  v5 = STACK[0x538];
  STACK[0x390] = STACK[0x860] + 72;
  STACK[0x380] = STACK[0x460];
  *&STACK[0x3A0] = xmmword_1002BF690;
  return (*(v3 + 8 * ((231 * (v5 - v4 < ((((v0 + 2005439634) & 0x88777FEB ^ 0x1F60) + 2290) ^ 0x1185uLL))) ^ (((v0 + 2005439634) & 0x88777FEB) - 1617))))(0x4DE9423B6F16D00FLL, vdupq_n_s64(0xFFFFFFFFFFFFFFF8), vdupq_n_s64(0x38uLL), vdupq_n_s64(0x9508DCB2F33ECE2BLL), vdupq_n_s64(0xFBFFFFFFFFFFFFFFLL), vdupq_n_s64(0x4DE9423B6F16E7D2uLL), vdupq_n_s64(v1), vdupq_n_s64(v2), vdupq_n_s64(0xD8BAC2C7EF8C3B7CLL));
}

uint64_t sub_100184168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v18 - 4954) ^ (33731311 * (((&a15 | 0x7C05676B) - (&a15 & 0x7C05676B)) ^ 0x45F3AD48));
  a17 = a13;
  a18 = &a12;
  (*(v19 + 8 * (v18 ^ 0x3A9F)))(&a15);
  LODWORD(a18) = v18 - 2008441969 * ((2 * (&a15 & 0x18BA2B60) - &a15 - 414853985) ^ 0xAFDC8091) - 2521;
  a17 = a13;
  v20 = (*(v19 + 8 * (v18 ^ 0x3A6D)))(&a15);
  return (*(v19 + 8 * ((16343 * (((v18 + 43) ^ (a15 == (v18 ^ 0x86F) + 16251958)) & 1)) ^ v18)))(v20);
}

uint64_t sub_100184320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  a12 = 476323082 - 1710126949 * ((((&a12 | 0x25A12B46) ^ 0xFFFFFFFE) - (~&a12 | 0xDA5ED4B9)) ^ 0xE8458F29);
  v14 = (*(v13 + 77088))(&a12);
  return (*(v13 + 8 * ((12309 * (a13 == 16257999)) ^ 0x109Eu)))(v14);
}

uint64_t sub_1001843C4(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = LODWORD(STACK[0x360]);
  if (v73 == 17168)
  {
    return (*(a71 + 8 * ((v72 - 2852) ^ (5916 * (v71 == a2 + 4)))))();
  }

  if (v73 == 20706 || v73 == 33980)
  {
    STACK[0x548] = a1;
  }

  v75 = *STACK[0x518];
  v76 = STACK[0x810];
  STACK[0x3D0] = STACK[0x810];
  STACK[0x5A0] = 0;
  LODWORD(STACK[0x874]) = a2;
  STACK[0x4E8] = 0;
  if (v75)
  {
    v77 = v76 == 0;
  }

  else
  {
    v77 = 1;
  }

  v78 = !v77;
  return (*(a71 + 8 * ((v78 * (v72 - 5886)) ^ (v72 + 919))))();
}

uint64_t sub_100184484()
{
  *(v2 - 232) = &STACK[0xC97];
  *(v2 - 220) = (v0 + 2075) ^ (1824088897 * ((((v2 - 232) | 0x2B655604) - (v2 - 232) + ((v2 - 232) & 0xD49AA9F8)) ^ 0x730C8566));
  v3 = (*(v1 + 8 * (v0 ^ 0x308F)))(v2 - 232);
  return (*(v1 + 8 * (((*(v2 - 224) == 16257999) * (((v0 - 4685) | 0xA) ^ 0x32B6)) ^ v0)))(v3, 197499219);
}

void sub_100184674(char a1@<W8>, uint64_t a2, unsigned __int8 *a3)
{
  v4 = ((*a3 ^ 0x3Cu) << 56) | ((a3[1] ^ 0x3Cu) << 48) | ((a3[2] ^ (((a1 + 110) & 0x68) - 12) & 0xFCu) << 40) | ((a3[3] ^ 0x3Cu) << 32) | ((a3[4] ^ 0x3CLL) << 24) | ((a3[5] ^ 0x3CLL) << 16) | ((a3[6] ^ 0x3CLL) << 8) | a3[7] ^ 0x3CLL;
  **(v3 + 8) = (v4 - ((2 * v4) & 0x255EE531AE292C3CLL) - 0x6D508D6728EB69E2) ^ 0x92AF7298D714961ELL;
  JUMPOUT(0x10012E6ACLL);
}

uint64_t sub_1001847EC()
{
  v6 = v2 - 1;
  *(v4 + v6) = *(v0 + v6);
  return (*(v5 + 8 * ((v1 + v3 + 1150) ^ (16 * (v6 == ((v3 - 1751495888) & 0xC2523EEF) - 4815)))))();
}

uint64_t sub_10018486C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = a1 - 179;
  v24 = (a1 + 546315166) | 0xC80F4908;
  STACK[0x2E0] = &a20;
  *(v22 - 136) = a1 - 179 + ((v22 - 136) ^ 0x321B5B90) * v21 + 2168;
  v25 = (*(v20 + 8 * ((a1 - 179) ^ 0x2DC9)))(v22 - 136);
  return (*(v20 + 8 * ((7 * (*(v22 - 120) != (v24 ^ 0xE86765B6) + (v23 ^ 0x3A2))) ^ v23)))(v25);
}

uint64_t sub_100184920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x5F0];
  STACK[0x5D0] = *(a4 + 8 * v4);
  return sub_100261B54(a4, v5);
}

uint64_t sub_100184A4C()
{
  *(v3 - 224) = (v0 - 2140797603) ^ (914963389 * ((-1169587322 - ((v3 - 232) | 0xBA498386) + ((v3 - 232) | 0x45B67C79)) ^ 0x694ACD02));
  v4 = (*(v2 + 8 * (v0 ^ 0x2073)))(v3 - 232);
  *v1 = (((v0 + 116) | 0x82) - 31) ^ *(v3 - 232);
  return (*(v2 + 8 * v0))(v4);
}

uint64_t sub_100184B18(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = (((a3 ^ 0x23E3) * a7) ^ 0x1BB9) & (v10 + 15);
  v14 = -v11 - v10;
  v16 = (v14 + v8 + v13 + 1) > 0xF;
  v15 = v14 + 2;
  v16 = v16 && (v15 + v9 + v13) > 0xF;
  v17 = v16 && a4 >= (a3 - 335) - 8834;
  v18 = v15 + v7 + v13;
  v20 = v17 && v18 > 0xF;
  return (*(v12 + 8 * ((2038 * v20) ^ a3)))(a1, v10);
}

uint64_t sub_100184C14(double a1, int8x16_t a2, int64x2_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v84 = v80 - 16;
  v85 = *(v77 + v84 - 16);
  v86.i64[0] = v77 + v84 + v78;
  v86.i64[1] = v77 + v84 - 6;
  v87.i64[0] = v77 + v84 - 1;
  v87.i64[1] = v77 + v84 - 2;
  *&STACK[0x370] = v87;
  v88.i64[0] = v77 + v84 - 3;
  v88.i64[1] = v77 + v84 - 4;
  v89 = v88;
  *&STACK[0x390] = v88;
  v88.i64[0] = v77 + v84 - 7;
  v88.i64[1] = v77 + v84 - 8;
  v90 = v88;
  *&STACK[0x3A0] = v88;
  *&STACK[0x3B0] = v85;
  v91.i64[0] = v77 + v84 - 9;
  v91.i64[1] = v77 + v84 - 10;
  v88.i64[0] = v77 + v84 - 11;
  v88.i64[1] = v77 + v84 - 12;
  v85.i64[0] = v77 + v84 - 13;
  v85.i64[1] = v77 + v84 - 14;
  v92.i64[0] = v77 + v84 - 15;
  v92.i64[1] = v77 + v84 - 16;
  v93 = vandq_s8(v92, a72);
  v94 = vandq_s8(v85, a72);
  v95 = vandq_s8(v88, a72);
  v96 = vandq_s8(v91, a72);
  v97 = vandq_s8(v90, a72);
  v98 = vandq_s8(v89, a72);
  v99 = vandq_s8(v87, a72);
  v100 = vandq_s8(v86, a72);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), a3);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), a3);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), a3);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), a3);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), a3);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), a3);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), a3);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), a3);
  v109 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v101, v101), *&STACK[0x360]), v101), *&STACK[0x350]);
  v110 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), *&STACK[0x360]), v102), *&STACK[0x350]);
  v111 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v103, v103), *&STACK[0x360]), v103), *&STACK[0x350]);
  v112 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), *&STACK[0x360]), v104), *&STACK[0x350]);
  v113 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v105, v105), *&STACK[0x360]), v105), *&STACK[0x350]);
  v114 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v106, v106), *&STACK[0x360]), v106), *&STACK[0x350]);
  v115 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v107, v107), *&STACK[0x360]), v107), *&STACK[0x350]);
  v116 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v108, v108), *&STACK[0x360]), v108), *&STACK[0x350]);
  v117 = veorq_s8(v116, *&STACK[0x340]);
  v118 = veorq_s8(v115, *&STACK[0x340]);
  v119 = veorq_s8(v114, *&STACK[0x340]);
  v120 = veorq_s8(v113, *&STACK[0x340]);
  v121 = veorq_s8(v112, *&STACK[0x340]);
  v122 = veorq_s8(v111, *&STACK[0x340]);
  v123 = veorq_s8(v110, *&STACK[0x340]);
  v124 = veorq_s8(v109, *&STACK[0x340]);
  v125 = veorq_s8(v109, *&STACK[0x330]);
  v126 = veorq_s8(v110, *&STACK[0x330]);
  v127 = veorq_s8(v111, *&STACK[0x330]);
  v128 = veorq_s8(v112, *&STACK[0x330]);
  v129 = veorq_s8(v113, *&STACK[0x330]);
  v130 = veorq_s8(v114, *&STACK[0x330]);
  v131 = veorq_s8(v115, *&STACK[0x330]);
  v132 = veorq_s8(v116, *&STACK[0x330]);
  v133 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v132);
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v131);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v130);
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v129);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v128);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v127);
  v140 = vaddq_s64(v133, v126);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v141, v141), *&STACK[0x320]), v141), *&STACK[0x310]), *&STACK[0x300]);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v140, v140), *&STACK[0x320]), v140), *&STACK[0x310]), *&STACK[0x300]);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v139, v139), *&STACK[0x320]), v139), *&STACK[0x310]), *&STACK[0x300]);
  v145 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v138, v138), *&STACK[0x320]), v138), *&STACK[0x310]), *&STACK[0x300]);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v137, v137), *&STACK[0x320]), v137), *&STACK[0x310]), *&STACK[0x300]);
  v147 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v136, v136), *&STACK[0x320]), v136), *&STACK[0x310]), *&STACK[0x300]);
  v148 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v135, v135), *&STACK[0x320]), v135), *&STACK[0x310]), *&STACK[0x300]);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v134, v134), *&STACK[0x320]), v134), *&STACK[0x310]), *&STACK[0x300]);
  v150 = vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL);
  v151 = vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL);
  v152 = vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL);
  v154 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v155 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v156 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v157 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v158 = veorq_s8(v145, v153);
  v159 = veorq_s8(v144, v152);
  v160 = veorq_s8(v143, v151);
  v161 = veorq_s8(v142, v150);
  v162 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v163 = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v164 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v166 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v167 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v161);
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v160);
  v170 = vaddq_s64(v167, v159);
  v171 = vaddq_s64(v166, v158);
  v172 = vaddq_s64(v165, v157);
  v173 = vaddq_s64(v164, v156);
  v174 = vaddq_s64(v163, v155);
  v175 = vaddq_s64(v162, v154);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v175, v175), *&STACK[0x2F0]), v175), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v174, v174), *&STACK[0x2F0]), v174), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v173, v173), *&STACK[0x2F0]), v173), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v179 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v172, v172), *&STACK[0x2F0]), v172), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v171, v171), *&STACK[0x2F0]), v171), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v181 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v170, v170), *&STACK[0x2F0]), v170), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v169, v169), *&STACK[0x2F0]), v169), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v183 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v168, v168), *&STACK[0x2F0]), v168), *&STACK[0x2E0]), *&STACK[0x2D0]);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v185 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v186 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v187 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v188 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v189 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v190 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v191 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v192 = vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v194 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v195 = vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL);
  v196 = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v197 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v198 = vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL);
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v191);
  v200 = veorq_s8(vaddq_s64(v192, v184), v81);
  v201 = veorq_s8(vaddq_s64(v193, v185), v81);
  v202 = veorq_s8(vaddq_s64(v194, v186), v81);
  v203 = veorq_s8(vaddq_s64(v195, v187), v81);
  v204 = veorq_s8(vaddq_s64(v196, v188), v81);
  v205 = veorq_s8(vaddq_s64(v197, v189), v81);
  v206 = veorq_s8(vaddq_s64(v198, v190), v81);
  v207 = veorq_s8(v199, v81);
  v208 = vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL);
  v209 = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v210 = vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL);
  v211 = vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL);
  v212 = vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL);
  v213 = vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL);
  v214 = vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL);
  v215 = veorq_s8(v207, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v216 = veorq_s8(v206, v214);
  v217 = veorq_s8(v205, v213);
  v218 = veorq_s8(v204, v212);
  v219 = veorq_s8(v203, v211);
  v220 = veorq_s8(v202, v210);
  v221 = veorq_s8(v201, v209);
  v222 = veorq_s8(v200, v208);
  v223 = vsraq_n_u64(vshlq_n_s64(v207, 0x38uLL), v207, 8uLL);
  v224 = vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL);
  v225 = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v226 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v227 = vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL);
  v228 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v229 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v230 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v222);
  v231 = veorq_s8(vaddq_s64(v223, v215), v82);
  v232 = veorq_s8(vaddq_s64(v224, v216), v82);
  v233 = veorq_s8(vaddq_s64(v225, v217), v82);
  v234 = veorq_s8(vaddq_s64(v226, v218), v82);
  v235 = veorq_s8(vaddq_s64(v227, v219), v82);
  v236 = veorq_s8(vaddq_s64(v228, v220), v82);
  v237 = veorq_s8(vaddq_s64(v229, v221), v82);
  v238 = veorq_s8(v230, v82);
  v239 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v240 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v241 = vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL);
  v242 = vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL);
  v243 = vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL);
  v244 = vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL);
  v245 = vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL);
  v246 = veorq_s8(v238, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL));
  v247 = veorq_s8(v237, v245);
  v248 = veorq_s8(v236, v244);
  v249 = veorq_s8(v235, v243);
  v250 = veorq_s8(v234, v242);
  v251 = veorq_s8(v233, v241);
  v252 = veorq_s8(v232, v240);
  v253 = veorq_s8(v231, v239);
  v254 = vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL);
  v255 = vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL);
  v256 = vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL);
  v257 = vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL);
  v258 = vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL);
  v259 = vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL);
  v260 = vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL);
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v253);
  v262 = veorq_s8(vaddq_s64(v254, v246), v83);
  v263 = veorq_s8(vaddq_s64(v255, v247), v83);
  v264 = veorq_s8(vaddq_s64(v256, v248), v83);
  v265 = veorq_s8(vaddq_s64(v257, v249), v83);
  v266 = veorq_s8(vaddq_s64(v258, v250), v83);
  v267 = veorq_s8(vaddq_s64(v259, v251), v83);
  v268 = veorq_s8(vaddq_s64(v260, v252), v83);
  v269 = veorq_s8(v261, v83);
  v270 = veorq_s8(v269, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v271 = veorq_s8(v268, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL));
  v272 = veorq_s8(v267, vsraq_n_u64(vshlq_n_s64(v251, 3uLL), v251, 0x3DuLL));
  v273 = veorq_s8(v266, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL));
  v274 = veorq_s8(v265, vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL));
  v275 = veorq_s8(v264, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v276 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v277 = veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v278 = vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL);
  v279 = vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL);
  v280 = vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL);
  v281 = vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL);
  v282 = vsraq_n_u64(vshlq_n_s64(v265, 0x38uLL), v265, 8uLL);
  v283 = vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL);
  v284 = vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL);
  v285 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), v277);
  v286 = vaddq_s64(v284, v276);
  v287 = vaddq_s64(v283, v275);
  v288 = vaddq_s64(v282, v274);
  v289 = vaddq_s64(v281, v273);
  v290 = vaddq_s64(v280, v272);
  v291 = vaddq_s64(v279, v271);
  v292 = vaddq_s64(v278, v270);
  v293 = veorq_s8(vaddq_s64(vsubq_s64(v292, vandq_s8(vaddq_s64(v292, v292), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v294 = veorq_s8(vaddq_s64(vsubq_s64(v291, vandq_s8(vaddq_s64(v291, v291), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v295 = veorq_s8(vaddq_s64(vsubq_s64(v290, vandq_s8(vaddq_s64(v290, v290), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v296 = veorq_s8(vaddq_s64(vsubq_s64(v289, vandq_s8(vaddq_s64(v289, v289), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v297 = veorq_s8(vaddq_s64(vsubq_s64(v288, vandq_s8(vaddq_s64(v288, v288), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v298 = veorq_s8(vaddq_s64(vsubq_s64(v287, vandq_s8(vaddq_s64(v287, v287), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v299 = veorq_s8(vaddq_s64(vsubq_s64(v286, vandq_s8(vaddq_s64(v286, v286), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v300 = veorq_s8(vaddq_s64(vsubq_s64(v285, vandq_s8(vaddq_s64(v285, v285), *&STACK[0x2C0])), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v301 = veorq_s8(v300, vsraq_n_u64(vshlq_n_s64(v277, 3uLL), v277, 0x3DuLL));
  v302 = veorq_s8(v299, vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL));
  v303 = veorq_s8(v298, vsraq_n_u64(vshlq_n_s64(v275, 3uLL), v275, 0x3DuLL));
  v304 = veorq_s8(v297, vsraq_n_u64(vshlq_n_s64(v274, 3uLL), v274, 0x3DuLL));
  v305 = veorq_s8(v296, vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL));
  v306 = veorq_s8(v295, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL));
  v307 = veorq_s8(v294, vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL));
  v308 = veorq_s8(v293, vsraq_n_u64(vshlq_n_s64(v270, 3uLL), v270, 0x3DuLL));
  v309 = vsraq_n_u64(vshlq_n_s64(v300, 0x38uLL), v300, 8uLL);
  v310 = vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL);
  v311 = vsraq_n_u64(vshlq_n_s64(v298, 0x38uLL), v298, 8uLL);
  v312 = vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL);
  v313 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v296, 0x38uLL), v296, 8uLL), v305);
  v314 = vaddq_s64(v312, v304);
  v315 = vaddq_s64(v311, v303);
  v303.i64[0] = v76 + v84 + 5;
  v303.i64[1] = v76 + v84 + 4;
  v316 = vaddq_s64(v310, v302);
  v302.i64[0] = v76 + v84 + 9;
  v302.i64[1] = v76 + v84 + 8;
  v304.i64[0] = v76 + v84 + 7;
  v304.i64[1] = v76 + v84 + 6;
  v317 = *&STACK[0x290];
  *&STACK[0x380] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v293, 0x38uLL), v293, 8uLL), v308), *&STACK[0x290]), vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), a2)));
  v305.i64[0] = v76 + v84 + 3;
  v305.i64[1] = v76 + v84 + 2;
  v318 = veorq_s8(vaddq_s64(v309, v301), v317);
  v319 = veorq_s8(v316, v317);
  v320 = veorq_s8(v315, v317);
  v321 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL), v306), v317);
  v322 = vandq_s8(vshlq_n_s64(v92, 3uLL), a2);
  v323 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL), v307), v317), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x370], 3uLL), a2)));
  v324 = vshlq_u64(v321, vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x390], 3uLL), a2)));
  v325 = vshlq_u64(veorq_s8(v313, v317), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3A0], 3uLL), a2)));
  *&STACK[0x390] = vshlq_u64(v320, vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), a2)));
  *&STACK[0x3A0] = vshlq_u64(veorq_s8(v314, v317), vnegq_s64(vandq_s8(vshlq_n_s64(v91, 3uLL), a2)));
  v326 = vshlq_u64(v319, vnegq_s64(vandq_s8(vshlq_n_s64(v85, 3uLL), a2)));
  v327 = vshlq_u64(v318, vnegq_s64(v322));
  v328 = vandq_s8(v305, a72);
  v329 = vandq_s8(v304, a72);
  v330 = vandq_s8(v302, a72);
  v331 = vandq_s8(v303, a72);
  v332 = vsraq_n_u64(vshlq_n_s64(v331, 0x38uLL), v331, 8uLL);
  v333 = vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL);
  v334 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL), a3);
  v335 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL), a3);
  v336 = veorq_s8(v335, *&STACK[0x280]);
  v337 = veorq_s8(v334, *&STACK[0x280]);
  v338 = veorq_s8(v334, *&STACK[0x270]);
  v339 = veorq_s8(v335, *&STACK[0x270]);
  v340 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v337, 0x38uLL), v337, 8uLL), v338), *&STACK[0x260]);
  v341 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v336, 0x38uLL), v336, 8uLL), v339), *&STACK[0x260]);
  v342 = vsraq_n_u64(vshlq_n_s64(v338, 3uLL), v338, 0x3DuLL);
  v343 = veorq_s8(v341, vsraq_n_u64(vshlq_n_s64(v339, 3uLL), v339, 0x3DuLL));
  v344 = veorq_s8(v340, v342);
  v345 = vsraq_n_u64(vshlq_n_s64(v341, 0x38uLL), v341, 8uLL);
  v346 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v340, 0x38uLL), v340, 8uLL), v344);
  v347 = veorq_s8(vaddq_s64(v345, v343), *&STACK[0x250]);
  v348 = veorq_s8(v346, *&STACK[0x250]);
  v349 = vsraq_n_u64(vshlq_n_s64(v343, 3uLL), v343, 0x3DuLL);
  v350 = veorq_s8(v348, vsraq_n_u64(vshlq_n_s64(v344, 3uLL), v344, 0x3DuLL));
  v351 = veorq_s8(v347, v349);
  v352 = vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL);
  v353 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v347, 0x38uLL), v347, 8uLL), v351);
  v354 = veorq_s8(vaddq_s64(v352, v350), v81);
  v355 = veorq_s8(v353, v81);
  v356 = vsraq_n_u64(vshlq_n_s64(v350, 3uLL), v350, 0x3DuLL);
  v357 = veorq_s8(v355, vsraq_n_u64(vshlq_n_s64(v351, 3uLL), v351, 0x3DuLL));
  v358 = veorq_s8(v354, v356);
  v359 = vsraq_n_u64(vshlq_n_s64(v355, 0x38uLL), v355, 8uLL);
  v360 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v354, 0x38uLL), v354, 8uLL), v358);
  v361 = veorq_s8(vaddq_s64(v359, v357), v82);
  v362 = veorq_s8(v360, v82);
  v363 = vsraq_n_u64(vshlq_n_s64(v357, 3uLL), v357, 0x3DuLL);
  v364 = veorq_s8(v362, vsraq_n_u64(vshlq_n_s64(v358, 3uLL), v358, 0x3DuLL));
  v365 = veorq_s8(v361, v363);
  v366 = vsraq_n_u64(vshlq_n_s64(v362, 0x38uLL), v362, 8uLL);
  v367 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v361, 0x38uLL), v361, 8uLL), v365);
  v368 = veorq_s8(vaddq_s64(v366, v364), v83);
  v369 = veorq_s8(v367, v83);
  v370 = vsraq_n_u64(vshlq_n_s64(v364, 3uLL), v364, 0x3DuLL);
  v371 = veorq_s8(v369, vsraq_n_u64(vshlq_n_s64(v365, 3uLL), v365, 0x3DuLL));
  v372 = veorq_s8(v368, v370);
  v373 = vsraq_n_u64(vshlq_n_s64(v369, 0x38uLL), v369, 8uLL);
  v374 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v368, 0x38uLL), v368, 8uLL), v372);
  v375 = veorq_s8(vaddq_s64(v373, v371), *&STACK[0x240]);
  v376 = veorq_s8(v374, *&STACK[0x240]);
  v377 = veorq_s8(v376, vsraq_n_u64(vshlq_n_s64(v372, 3uLL), v372, 0x3DuLL));
  v378 = veorq_s8(v375, vsraq_n_u64(vshlq_n_s64(v371, 3uLL), v371, 0x3DuLL));
  v379 = vsraq_n_u64(vshlq_n_s64(v376, 0x38uLL), v376, 8uLL);
  v371.i64[0] = v76 + v84 + 1;
  v371.i64[1] = v76 + v84;
  v380 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v375, 0x38uLL), v375, 8uLL), v378);
  v378.i64[0] = v76 + v84 - 1;
  v378.i64[1] = v76 + v84 - 2;
  v381 = vaddq_s64(v379, v377);
  v382 = vsubq_s64(v380, vandq_s8(vaddq_s64(v380, v380), *&STACK[0x230]));
  v380.i64[0] = v76 + v84 - 3;
  v380.i64[1] = v76 + v84 - 4;
  v383 = vaddq_s64(v333, a3);
  v504.val[3] = veorq_s8(v325, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v381, vandq_s8(vaddq_s64(v381, v381), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v305, 3uLL), a2))));
  v504.val[1] = veorq_s8(v324, vshlq_u64(veorq_s8(vaddq_s64(v382, *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v304, 3uLL), a2))));
  v384 = veorq_s8(v383, *&STACK[0x280]);
  v385 = veorq_s8(v383, *&STACK[0x270]);
  v386 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v384, 0x38uLL), v384, 8uLL), v385), *&STACK[0x260]);
  v387 = veorq_s8(v386, vsraq_n_u64(vshlq_n_s64(v385, 3uLL), v385, 0x3DuLL));
  v388 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v386, 0x38uLL), v386, 8uLL), v387), *&STACK[0x250]);
  v389 = veorq_s8(v388, vsraq_n_u64(vshlq_n_s64(v387, 3uLL), v387, 0x3DuLL));
  v390 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v388, 0x38uLL), v388, 8uLL), v389), v81);
  v391 = veorq_s8(v390, vsraq_n_u64(vshlq_n_s64(v389, 3uLL), v389, 0x3DuLL));
  v392 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v390, 0x38uLL), v390, 8uLL), v391), v82);
  v393 = veorq_s8(v392, vsraq_n_u64(vshlq_n_s64(v391, 3uLL), v391, 0x3DuLL));
  v394 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v392, 0x38uLL), v392, 8uLL), v393), v83);
  v395 = veorq_s8(v394, vsraq_n_u64(vshlq_n_s64(v393, 3uLL), v393, 0x3DuLL));
  v396 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v394, 0x38uLL), v394, 8uLL), v395), *&STACK[0x240]);
  v397 = veorq_s8(v396, vsraq_n_u64(vshlq_n_s64(v395, 3uLL), v395, 0x3DuLL));
  v398 = vsraq_n_u64(vshlq_n_s64(v396, 0x38uLL), v396, 8uLL);
  v396.i64[0] = v76 + v84 - 5;
  v396.i64[1] = v76 + v84 - 6;
  v399 = vaddq_s64(v398, v397);
  v400 = vaddq_s64(v332, a3);
  v504.val[0] = veorq_s8(v323, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v399, vandq_s8(vaddq_s64(v399, v399), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v302, 3uLL), a2))));
  v401 = veorq_s8(v400, *&STACK[0x280]);
  v402 = veorq_s8(v400, *&STACK[0x270]);
  v403 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v401, 0x38uLL), v401, 8uLL), v402), *&STACK[0x260]);
  v404 = veorq_s8(v403, vsraq_n_u64(vshlq_n_s64(v402, 3uLL), v402, 0x3DuLL));
  v405 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v403, 0x38uLL), v403, 8uLL), v404), *&STACK[0x250]);
  v406 = veorq_s8(v405, vsraq_n_u64(vshlq_n_s64(v404, 3uLL), v404, 0x3DuLL));
  v407 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v405, 0x38uLL), v405, 8uLL), v406), v81);
  v408 = veorq_s8(v407, vsraq_n_u64(vshlq_n_s64(v406, 3uLL), v406, 0x3DuLL));
  v409 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL), v408), v82);
  v410 = veorq_s8(v409, vsraq_n_u64(vshlq_n_s64(v408, 3uLL), v408, 0x3DuLL));
  v411 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v409, 0x38uLL), v409, 8uLL), v410), v83);
  v412 = veorq_s8(v411, vsraq_n_u64(vshlq_n_s64(v410, 3uLL), v410, 0x3DuLL));
  v413 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v411, 0x38uLL), v411, 8uLL), v412), *&STACK[0x240]);
  v414 = veorq_s8(v413, vsraq_n_u64(vshlq_n_s64(v412, 3uLL), v412, 0x3DuLL));
  v415 = vsraq_n_u64(vshlq_n_s64(v413, 0x38uLL), v413, 8uLL);
  v416 = vandq_s8(v396, a72);
  v417 = vaddq_s64(v415, v414);
  v418 = vandq_s8(v380, a72);
  v419 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v417, vandq_s8(vaddq_s64(v417, v417), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v303, 3uLL), a2)));
  v420 = vandq_s8(v378, a72);
  v504.val[2] = veorq_s8(*&STACK[0x380], v419);
  v421 = vandq_s8(v371, a72);
  v422 = vsraq_n_u64(vshlq_n_s64(v421, 0x38uLL), v421, 8uLL);
  v423 = vsraq_n_u64(vshlq_n_s64(v420, 0x38uLL), v420, 8uLL);
  v424 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v416, 0x38uLL), v416, 8uLL), a3);
  v425 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v418, 0x38uLL), v418, 8uLL), a3);
  v421.i64[0] = vqtbl4q_s8(v504, *&STACK[0x200]).u64[0];
  v426 = veorq_s8(v425, *&STACK[0x280]);
  v427 = veorq_s8(v424, *&STACK[0x280]);
  v428 = veorq_s8(v424, *&STACK[0x270]);
  v429 = veorq_s8(v425, *&STACK[0x270]);
  v430 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v427, 0x38uLL), v427, 8uLL), v428), *&STACK[0x260]);
  v431 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v426, 0x38uLL), v426, 8uLL), v429), *&STACK[0x260]);
  v432 = vsraq_n_u64(vshlq_n_s64(v428, 3uLL), v428, 0x3DuLL);
  v433 = veorq_s8(v431, vsraq_n_u64(vshlq_n_s64(v429, 3uLL), v429, 0x3DuLL));
  v434 = veorq_s8(v430, v432);
  v435 = vsraq_n_u64(vshlq_n_s64(v431, 0x38uLL), v431, 8uLL);
  v436 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v430, 0x38uLL), v430, 8uLL), v434);
  v437 = veorq_s8(vaddq_s64(v435, v433), *&STACK[0x250]);
  v438 = veorq_s8(v436, *&STACK[0x250]);
  v439 = vsraq_n_u64(vshlq_n_s64(v433, 3uLL), v433, 0x3DuLL);
  v440 = veorq_s8(v438, vsraq_n_u64(vshlq_n_s64(v434, 3uLL), v434, 0x3DuLL));
  v441 = veorq_s8(v437, v439);
  v442 = vsraq_n_u64(vshlq_n_s64(v438, 0x38uLL), v438, 8uLL);
  v443 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v437, 0x38uLL), v437, 8uLL), v441);
  v444 = veorq_s8(vaddq_s64(v442, v440), v81);
  v445 = veorq_s8(v443, v81);
  v446 = vsraq_n_u64(vshlq_n_s64(v440, 3uLL), v440, 0x3DuLL);
  v447 = veorq_s8(v445, vsraq_n_u64(vshlq_n_s64(v441, 3uLL), v441, 0x3DuLL));
  v448 = veorq_s8(v444, v446);
  v449 = vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL);
  v450 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v444, 0x38uLL), v444, 8uLL), v448);
  v451 = veorq_s8(vaddq_s64(v449, v447), v82);
  v452 = veorq_s8(v450, v82);
  v453 = vsraq_n_u64(vshlq_n_s64(v447, 3uLL), v447, 0x3DuLL);
  v454 = veorq_s8(v452, vsraq_n_u64(vshlq_n_s64(v448, 3uLL), v448, 0x3DuLL));
  v455 = veorq_s8(v451, v453);
  v456 = vsraq_n_u64(vshlq_n_s64(v452, 0x38uLL), v452, 8uLL);
  v457 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v451, 0x38uLL), v451, 8uLL), v455);
  v458 = veorq_s8(vaddq_s64(v456, v454), v83);
  v459 = veorq_s8(v457, v83);
  v460 = vsraq_n_u64(vshlq_n_s64(v454, 3uLL), v454, 0x3DuLL);
  v461 = veorq_s8(v459, vsraq_n_u64(vshlq_n_s64(v455, 3uLL), v455, 0x3DuLL));
  v462 = veorq_s8(v458, v460);
  v463 = vsraq_n_u64(vshlq_n_s64(v459, 0x38uLL), v459, 8uLL);
  v464 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v458, 0x38uLL), v458, 8uLL), v462);
  v465 = veorq_s8(vaddq_s64(v463, v461), *&STACK[0x240]);
  v466 = veorq_s8(v464, *&STACK[0x240]);
  v467 = vsraq_n_u64(vshlq_n_s64(v461, 3uLL), v461, 0x3DuLL);
  v468 = veorq_s8(v466, vsraq_n_u64(vshlq_n_s64(v462, 3uLL), v462, 0x3DuLL));
  v469 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v465, 0x38uLL), v465, 8uLL), veorq_s8(v465, v467));
  v470 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466, 0x38uLL), v466, 8uLL), v468);
  v471 = vaddq_s64(v423, a3);
  v504.val[2] = veorq_s8(v327, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v470, vandq_s8(vaddq_s64(v470, v470), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v396, 3uLL), a2))));
  v504.val[1] = veorq_s8(v326, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v469, vandq_s8(vaddq_s64(v469, v469), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v380, 3uLL), a2))));
  v472 = veorq_s8(v471, *&STACK[0x280]);
  v473 = veorq_s8(v471, *&STACK[0x270]);
  v474 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v472, 0x38uLL), v472, 8uLL), v473), *&STACK[0x260]);
  v475 = veorq_s8(v474, vsraq_n_u64(vshlq_n_s64(v473, 3uLL), v473, 0x3DuLL));
  v476 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v474, 0x38uLL), v474, 8uLL), v475), *&STACK[0x250]);
  v477 = veorq_s8(v476, vsraq_n_u64(vshlq_n_s64(v475, 3uLL), v475, 0x3DuLL));
  v478 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v476, 0x38uLL), v476, 8uLL), v477), v81);
  v479 = veorq_s8(v478, vsraq_n_u64(vshlq_n_s64(v477, 3uLL), v477, 0x3DuLL));
  v480 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v478, 0x38uLL), v478, 8uLL), v479), v82);
  v481 = veorq_s8(v480, vsraq_n_u64(vshlq_n_s64(v479, 3uLL), v479, 0x3DuLL));
  v482 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v480, 0x38uLL), v480, 8uLL), v481), v83);
  v483 = veorq_s8(v482, vsraq_n_u64(vshlq_n_s64(v481, 3uLL), v481, 0x3DuLL));
  v484 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v482, 0x38uLL), v482, 8uLL), v483), *&STACK[0x240]);
  v485 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v484, 0x38uLL), v484, 8uLL), veorq_s8(v484, vsraq_n_u64(vshlq_n_s64(v483, 3uLL), v483, 0x3DuLL)));
  v486 = vaddq_s64(v422, a3);
  v504.val[0] = veorq_s8(*&STACK[0x390], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v485, vandq_s8(vaddq_s64(v485, v485), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v378, 3uLL), a2))));
  v487 = veorq_s8(v486, *&STACK[0x280]);
  v488 = veorq_s8(v486, *&STACK[0x270]);
  v489 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v487, 0x38uLL), v487, 8uLL), v488), *&STACK[0x260]);
  v490 = veorq_s8(v489, vsraq_n_u64(vshlq_n_s64(v488, 3uLL), v488, 0x3DuLL));
  v491 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v489, 0x38uLL), v489, 8uLL), v490), *&STACK[0x250]);
  v492 = veorq_s8(v491, vsraq_n_u64(vshlq_n_s64(v490, 3uLL), v490, 0x3DuLL));
  v493 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v491, 0x38uLL), v491, 8uLL), v492), v81);
  v494 = veorq_s8(v493, vsraq_n_u64(vshlq_n_s64(v492, 3uLL), v492, 0x3DuLL));
  v495 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v493, 0x38uLL), v493, 8uLL), v494), v82);
  v496 = veorq_s8(v495, vsraq_n_u64(vshlq_n_s64(v494, 3uLL), v494, 0x3DuLL));
  v497 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v495, 0x38uLL), v495, 8uLL), v496), v83);
  v498 = veorq_s8(v497, vsraq_n_u64(vshlq_n_s64(v496, 3uLL), v496, 0x3DuLL));
  v499 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v497, 0x38uLL), v497, 8uLL), v498), *&STACK[0x240]);
  v500 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v499, 0x38uLL), v499, 8uLL), veorq_s8(v499, vsraq_n_u64(vshlq_n_s64(v498, 3uLL), v498, 0x3DuLL)));
  v501 = veorq_s8(*&STACK[0x3A0], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v500, vandq_s8(vaddq_s64(v500, v500), *&STACK[0x230])), *&STACK[0x220]), *&STACK[0x210]), vnegq_s64(vandq_s8(vshlq_n_s64(v371, 3uLL), a2))));
  v421.i64[1] = vqtbl4q_s8(v504, *&STACK[0x200]).u64[0];
  v502 = vrev64q_s8(v421);
  *(v371.i64[1] - 6) = veorq_s8(vextq_s8(v502, v502, 8uLL), *&STACK[0x3B0]);
  return (*(a74 + 8 * (((v75 + v84 != 0) * v79) ^ v74)))();
}

uint64_t sub_100184C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  a13 = 476323082 - 1710126949 * ((2 * (&a13 & 0x394FDD38) - &a13 + 1185948357) ^ 0x74AB7955);
  v15 = (*(v14 + 77088))(&a13);
  return (*(v14 + 8 * ((193 * (a14 == 16257999)) ^ 0x87Fu)))(v15);
}

uint64_t sub_100184D3C()
{
  *v1 = v8;
  v5 = 674 * (v2 ^ 0xCE129708);
  v11 = v9;
  v12 = (v0 + v2 + 256) ^ (1824088897 * ((&v10 & 0x2B4260E6 | ~(&v10 | 0x2B4260E6)) ^ 0x8CD44C7B));
  (*(v3 + 8 * (v0 + v2 + 1522)))(&v10);
  v12 = (v5 + 6324) ^ (1824088897 * (((&v10 | 0x8FBCD527) + (~&v10 | 0x70432AD8)) ^ 0xD7D50644));
  v11 = v7;
  (*(v3 + 8 * (v5 ^ 0x226A)))(&v10);
  return (v4 - 16257999);
}

uint64_t sub_100184E64()
{
  LODWORD(STACK[0x794]) = 16215971;
  STACK[0x6B8] = v0;
  STACK[0x670] = *(v2 + 8 * (v1 - 5366));
  return sub_1002707AC(v1 - 1332);
}

uint64_t sub_100184E78@<X0>(int a1@<W1>, int a2@<W4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>, int8x16_t a6@<Q1>, int64x2_t a7@<Q2>, int8x16_t a8@<Q3>, int64x2_t a9@<Q4>, int8x16_t a10@<Q5>, int8x16_t a11@<Q6>, int8x16_t a12@<Q7>)
{
  v29 = v13 - 8;
  v30.i64[0] = v29 + v12 + 7;
  v30.i64[1] = v29 + v12 + a5 - 3657;
  v31.i64[0] = v29 + v12 + 5;
  v31.i64[1] = v29 + v12 + 4;
  v32.i64[0] = v29 + v12 + 3;
  v32.i64[1] = v29 + v12 + 2;
  v33.i64[0] = v29 + v12 + 1;
  v33.i64[1] = v29 + v12;
  v34 = vandq_s8(v33, *&STACK[0x3B0]);
  v35 = vandq_s8(v32, *&STACK[0x3B0]);
  v36 = vandq_s8(v31, *&STACK[0x3B0]);
  v37 = vandq_s8(v30, *&STACK[0x3B0]);
  v38 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), a7);
  v41 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL), a7);
  v42 = vaddq_s64(v39, a7);
  v43 = vaddq_s64(v38, a7);
  v44 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v40, v40), a8), v40), a9);
  v45 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v41, v41), a8), v41), a9);
  v46 = veorq_s8(v45, a10);
  v47 = veorq_s8(v44, a10);
  v48 = veorq_s8(v44, a11);
  v49 = veorq_s8(v45, a11);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v49);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v48);
  v52 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v51, v51), a12), v51), v15), v16);
  v53 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v50, v50), a12), v50), v15), v16);
  v54 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v55 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL));
  v56 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v55);
  v58 = vaddq_s64(v56, v54);
  v59 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v58, v58), v17), v58), v18), v19);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v57, v57), v17), v57), v18), v19);
  v61 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = vaddq_s64(v64, v62);
  v67 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v65, v20), vorrq_s8(v65, v21)), v21), v22);
  v68 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v66, v20), vorrq_s8(v66, v21)), v21), v22);
  v69 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v70 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v71 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL), v69), v23);
  v72 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v70), v23);
  v73 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v74 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v75 = veorq_s8(v71, v73);
  v76 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75);
  v78 = vaddq_s64(v76, v74);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v78, v78), v24), v78), v25), v26);
  v80 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v77, v77), v24), v77), v25), v26);
  v81 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v83 = veorq_s8(v79, v81);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v83);
  v86 = veorq_s8(vaddq_s64(v84, v82), v27);
  v87 = veorq_s8(v85, v27);
  v88 = vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL);
  v89 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL));
  v90 = veorq_s8(v86, v88);
  v91 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v92 = vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL);
  v93 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v42, v42), a8), v42), a9);
  v131.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v92, v90), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a6)));
  v131.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v91, v89), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a6)));
  v94 = veorq_s8(v93, a10);
  v95 = veorq_s8(v93, a11);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v96, v96), a12), v96), v15), v16);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v99, v99), v17), v99), v18), v19);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v102, v20), vorrq_s8(v102, v21)), v21), v22);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104), v23);
  v106 = veorq_s8(v105, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v107, v107), v24), v107), v25), v26);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v27);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL)));
  v112 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v43, v43), a8), v43), a9);
  v131.val[1] = vshlq_u64(veorq_s8(v111, v28), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a6)));
  v113 = veorq_s8(v112, a10);
  v114 = veorq_s8(v112, a11);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v115, v115), a12), v115), v15), v16);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117);
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v118, v118), v17), v118), v18), v19);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v122 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v121, v20), vorrq_s8(v121, v21)), v21), v22);
  v123 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v123), v23);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), v24), v126), v25), v26);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), v27);
  v131.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL))), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a6)));
  *(v29 + v12) = vrev64_s8(*&vqtbl4q_s8(v131, *&STACK[0x3A0]));
  return (*(v14 + 8 * (((a3 != a4 + 8) * a1) ^ a2)))();
}

void sub_100184EA4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8)
{
  LODWORD(STACK[0x3E4]) = 0;
  v14 = STACK[0x538];
  v15 = HIBYTE(LODWORD(STACK[0x538]));
  LODWORD(STACK[0x528]) = a5;
  v16 = STACK[0x360];
  *v16 = v15 - ((v14 >> 23) & 0x7A) - 67;
  v17 = STACK[0x53C];
  v16[(HIBYTE(v17) & 4 ^ 4) + (HIBYTE(v17) & 4)] = HIBYTE(LODWORD(STACK[0x53C])) + (~(LODWORD(STACK[0x53C]) >> 23) | 0x85) - 66;
  v18 = STACK[0x580];
  LOBYTE(STACK[0xFA4]) = HIBYTE(LODWORD(STACK[0x580])) ^ 0xC8;
  v19 = STACK[0x58C];
  LOBYTE(STACK[0xFAC]) = HIBYTE(LODWORD(STACK[0x58C])) ^ 0xC8;
  LOBYTE(STACK[0xFA8]) = HIBYTE(v9) ^ 0xC8;
  LOBYTE(STACK[0xFB0]) = HIBYTE(LODWORD(STACK[0x5A8])) ^ 0xC8;
  LODWORD(STACK[0x500]) = a8;
  v20 = STACK[0x348];
  *(v20 + 20) = HIBYTE(a6) ^ 0xC8;
  v21 = STACK[0x534];
  LOBYTE(STACK[0xFB8]) = HIBYTE(LODWORD(STACK[0x534])) ^ 0xC8;
  LOBYTE(STACK[0xFBC]) = HIBYTE(a7) ^ 0xC8;
  v22 = STACK[0x540];
  LOBYTE(STACK[0xFA1]) = HIWORD(LODWORD(STACK[0x540])) ^ 0xC8;
  LOBYTE(STACK[0xFA5]) = BYTE2(v18) ^ 0xC8;
  *(v20 + 466820233 * (~v10 & 0x4B27E781 | v10 & 0x381u)) = BYTE2(v9) ^ 0xC8;
  LODWORD(STACK[0x55C]) = -v11 - v8 - 1082358265 + v13;
  v23 = v8 - v13;
  v24 = v8 - v13 + 376100986;
  v25 = v11 + v13 - 206064693;
  LODWORD(v16) = v24 ^ v25 ^ (LODWORD(STACK[0x508]) + v8);
  v26 = 601 * (LODWORD(STACK[0x408]) ^ 0x1CC8);
  LODWORD(STACK[0x518]) = v26;
  LODWORD(STACK[0x570]) = (~v10 & 0xDF147756 | v10 & 0x356) + v16;
  v27 = LODWORD(STACK[0x588]) + 1934484913;
  v28 = LODWORD(STACK[0x4F8]) + a1;
  v29 = v27 + (v26 ^ 0x1BC77C68);
  v30 = STACK[0x510];
  v31 = a1 + 2064466855 - LODWORD(STACK[0x510]);
  LODWORD(STACK[0x508]) = v31;
  LODWORD(STACK[0x560]) = v30 - (a1 + 2064466855 + v27);
  v32 = v30 + v29;
  LODWORD(STACK[0x520]) = v32;
  LODWORD(STACK[0x588]) = (v28 + 1440423814 - v30) ^ v31 ^ v32;
  LODWORD(STACK[0x56C]) = (v23 + 910754659) ^ v25;
  v33 = STACK[0x590];
  v34 = HIBYTE(LODWORD(STACK[0x590])) - ((LODWORD(STACK[0x590]) >> 23) & 0x7A);
  v35 = STACK[0x548];
  v36 = HIBYTE(LODWORD(STACK[0x548])) - ((LODWORD(STACK[0x548]) >> 23) & 0x7A);
  LODWORD(STACK[0x510]) = a7;
  v37 = STACK[0x524];
  LODWORD(STACK[0x4F4]) = HIBYTE(LODWORD(STACK[0x524])) - ((LODWORD(STACK[0x524]) >> 23) & 0x7A);
  v38 = STACK[0x550];
  LOBYTE(v28) = HIBYTE(LODWORD(STACK[0x550])) - ((LODWORD(STACK[0x550]) >> 23) & 0x7A);
  LODWORD(STACK[0x4F0]) = HIBYTE(v12) - ((v12 >> 23) & 0x7A);
  v39 = STACK[0x57C];
  LODWORD(STACK[0x4EC]) = HIBYTE(LODWORD(STACK[0x57C])) - ((LODWORD(STACK[0x57C]) >> 23) & 0x7A);
  LODWORD(STACK[0x4FC]) = HIWORD(v39) - ((v39 >> 15) & 0x7A);
  LODWORD(STACK[0x4F8]) = HIWORD(v17) - ((v17 >> 15) & 0x7A);
  LODWORD(STACK[0x4E8]) = HIWORD(v33) - ((v33 >> 15) & 0x7A);
  LODWORD(STACK[0x4E0]) = HIWORD(v37) - ((v37 >> 15) & 0x7A);
  v40 = v35 >> ((BYTE2(v38) & 0x10 ^ 0x10) + (BYTE2(v38) & 0x10));
  LODWORD(STACK[0x4DC]) = (v37 >> 8) - ((v37 >> 7) & 0x7A);
  LOBYTE(v16) = BYTE1(v14) - ((v14 >> 7) & 0x7A);
  v41 = v12 >> (v24 & 8) >> (v24 & 8 ^ 8);
  LOBYTE(v24) = v41 - ((2 * v41) & 0x7A);
  *v20 = HIBYTE(v22) ^ 0xC8;
  LOBYTE(STACK[0xB88]) = v34 - 67;
  LOBYTE(STACK[0xB8C]) = v28 - 67;
  LOBYTE(v28) = v14 - ((2 * v14) & 0x7A);
  LOBYTE(v41) = (~(v14 >> 15) | 0x85) + BYTE2(v14);
  LOBYTE(STACK[0xB94]) = v36 - 67;
  LOBYTE(STACK[0xB98]) = LODWORD(STACK[0x4F4]) - 67;
  LOBYTE(STACK[0xB90]) = LODWORD(STACK[0x4EC]) - 67;
  LOBYTE(STACK[0xB9C]) = LODWORD(STACK[0x4F0]) - 67;
  LODWORD(v20) = STACK[0x5A8];
  LOBYTE(STACK[0xFB1]) = HIWORD(LODWORD(STACK[0x5A8])) ^ 0xC8;
  LOBYTE(STACK[0xFB5]) = HIWORD(LODWORD(STACK[0x584])) ^ 0xC8;
  LOWORD(v14) = v19;
  LOBYTE(STACK[0xFAD]) = BYTE2(v19) ^ 0xC8;
  LOBYTE(STACK[0xFB9]) = BYTE2(v21) ^ 0xC8;
  v42 = STACK[0x510];
  LOBYTE(STACK[0xFBD]) = HIWORD(LODWORD(STACK[0x510])) ^ 0xC8;
  LOBYTE(STACK[0xB89]) = LODWORD(STACK[0x4E8]) - 67;
  LOBYTE(STACK[0xB8D]) = BYTE2(v38) - ((v38 >> 15) & 0x7A) - 67;
  LOBYTE(STACK[0xB91]) = LODWORD(STACK[0x4FC]) - 67;
  LOBYTE(STACK[0xB95]) = v40 - ((2 * v40) & 0x7A) - 67;
  LOBYTE(STACK[0xB85]) = LODWORD(STACK[0x4F8]) - 67;
  LOBYTE(STACK[0xB99]) = LODWORD(STACK[0x4E0]) - 67;
  LOBYTE(STACK[0xB81]) = v41 - 66;
  LOBYTE(STACK[0xB9D]) = BYTE2(v12) - ((v12 >> 15) & 0x7A) - 67;
  LOBYTE(STACK[0xFA2]) = BYTE1(v22) ^ 0xC8;
  v43 = STACK[0x580];
  LOBYTE(STACK[0xFA6]) = BYTE1(LODWORD(STACK[0x580])) ^ 0xC8;
  LOBYTE(v32) = v14;
  LOBYTE(STACK[0xFAE]) = BYTE1(v14) ^ 0xC8;
  v44 = STACK[0x528];
  LOBYTE(STACK[0xFB6]) = BYTE1(LODWORD(STACK[0x528])) ^ 0xC8;
  LOBYTE(STACK[0xFB2]) = BYTE1(v20) ^ 0xC8;
  LOBYTE(STACK[0xB82]) = v16 - 67;
  LOBYTE(STACK[0xB92]) = (~(v39 >> 7) | 0x85) + BYTE1(v39) - 66;
  LOBYTE(STACK[0xB9A]) = LODWORD(STACK[0x4DC]) - 67;
  LOBYTE(STACK[0xB96]) = BYTE1(v35) - ((v35 >> 7) & 0x7A) - 67;
  LOBYTE(STACK[0xB8A]) = BYTE1(v33) - ((v33 >> 7) & 0x7A) - 67;
  LODWORD(STACK[0x560]) += 807777977;
  LOBYTE(STACK[0xB9E]) = v24 - 67;
  v45 = STACK[0x500];
  v46 = STACK[0x504] & 0xB ^ 9;
  LOBYTE(STACK[0xB8E]) = BYTE1(v38) - ((v38 >> 7) & 0x7A) - 67;
  LOBYTE(STACK[0xB86]) = BYTE1(v17) - ((v17 >> 7) & 0x7A) - 67;
  LOBYTE(STACK[0xB83]) = v28 - 67;
  *(STACK[0x360] + v46 + (STACK[0x54C] & 0xB)) = v33 - ((2 * v33) & 0x7A) - 67;
  LOBYTE(STACK[0xFAA]) = BYTE1(v45) ^ 0xC8;
  LOBYTE(STACK[0xFBA]) = BYTE1(v21) ^ 0xC8;
  LOBYTE(STACK[0xFBE]) = BYTE1(v42) ^ 0xC8;
  LOBYTE(STACK[0xFA3]) = v22 ^ 0xC8;
  LOBYTE(STACK[0xFAB]) = v45 ^ 0xC8;
  LOBYTE(STACK[0xFAF]) = v32 ^ 0xC8;
  LOBYTE(STACK[0xFA7]) = v43 ^ 0xC8;
  LOBYTE(STACK[0xFBF]) = v42 ^ 0xC8;
  LOBYTE(STACK[0xFB7]) = v44 ^ 0xC8;
  LOBYTE(STACK[0xFBB]) = v21 ^ 0xC8;
  LOBYTE(STACK[0xFB3]) = v20 ^ 0xC8;
  LOBYTE(STACK[0xB87]) = v17 + (~(2 * v17) | 0x85) - 66;
  LOBYTE(STACK[0xB93]) = v39 - ((2 * v39) & 0x7A) - 67;
  LOBYTE(STACK[0xB8F]) = v38 + (~(2 * v38) | 0x85) - 66;
  LOBYTE(STACK[0xB97]) = v35 - ((2 * v35) & 0x7A) - 67;
  LOBYTE(STACK[0xB9B]) = v37 - ((2 * v37) & 0x7A) - 67;
  LOBYTE(STACK[0xB9F]) = v12 - ((2 * v12) & 0x7A) - 67;
  LODWORD(STACK[0x420]) = 1;
  JUMPOUT(0x1000F1FC0);
}

void sub_100185534(__int16 a1@<W8>, uint64_t a2, char a3, unsigned __int8 a4)
{
  if ((v4 - 203186114) < 2)
  {
    (*(v5 + 8 * ((102 * (((a4 | (a1 << 8)) - 2 * ((a4 | (a1 << 8)) & 0x631B ^ a4 & 0x10)) != 0)) ^ v6)))();
  }

  else
  {
    sub_1001917D4();
  }
}

uint64_t sub_10018558C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = (v5 ^ v3) + v4;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * ((1920 * (v7 != 0)) ^ v2)))();
}

uint64_t sub_100185630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = ~v6 + v2;
  v11 = *(a2 + v10 - 15);
  v12 = *(a2 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * (((v6 + v7 + v5 == v3) * v8) ^ v4)))();
}

uint64_t sub_1001856BC()
{
  v5 = v1 - 8168 + ((v2 + 403) | 0xE83u);
  *(v3 + v5) = *(v0 + v5);
  return (*(v4 + 8 * ((11586 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_10018578C@<X0>(int a1@<W8>)
{
  v6 = v1 + 4010;
  v7 = v6 + v2;
  v8 = v2 - 1;
  *(*v3 + (v5 + 884750381 + v8)) = *(*v3 + (v7 - 1374813335));
  return (*(v4 + 8 * ((54 * (v8 == a1)) ^ v6)))();
}

uint64_t sub_100185898()
{
  *(v6 - 224) = v3 ^ (914963389 * ((((v6 - 232) | 0xFE097AD3) - (v6 - 232) + ((v6 - 232) & 0x1F68528)) ^ 0xD2F5CBA8));
  v7 = (*(v5 + 8 * v4))(v6 - 232);
  *(v2 + 8) = *(v6 - 232) ^ v1;
  return (*(v5 + 8 * ((495 * (((v0 - 86) ^ 1) & 1)) ^ (v0 - 3276))))(v7);
}

uint64_t sub_1001859B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a16 = 1317436891 * ((&a14 & 0xB686885E | ~(&a14 | 0xB686885E)) ^ 0xF97AEFD7) + 8154;
  a14 = &a10;
  v18 = (*(v17 + 77096))(&a14);
  return (*(v17 + 8 * ((794 * (a15 == v16)) ^ 0x1D3Du)))(v18);
}

void sub_100185A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0xAD4]) = a69;
  STACK[0x628] = (v69 ^ 0xEC9u) + STACK[0x628] - 571;
  JUMPOUT(0x1000C3CA4);
}

uint64_t sub_100185C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, int *a20)
{
  a13 = 0;
  a18 = (v20 + 2258) ^ (33731311 * ((2 * (&a17 & 0x16128340) - &a17 - 370312006) ^ 0xD01BB699));
  a19 = a12;
  a20 = &a13;
  (*(v22 + 8 * (v20 ^ 0x26A3)))(&a17);
  a18 = (v20 + 2258) ^ (33731311 * (((&a17 | 0xE208E403) - &a17 + (&a17 & 0x1DF71BF8)) ^ 0xDBFE2E20));
  a19 = a12;
  a20 = &a14;
  (*(v22 + 8 * (v20 + 8607)))(&a17);
  a19 = a12;
  LODWORD(a20) = v20 - 2008441969 * ((((2 * (&a17 ^ 0x6AD2FAB3)) | 0xBC5DAB0A) - (&a17 ^ 0x6AD2FAB3) + 567356027) ^ 0xFC657B38) + 4691;
  v23 = (*(v22 + 8 * (v20 + 8657)))(&a17);
  return (*(v22 + 8 * ((51 * (a17 == (((v20 + 1720) | 0x104) ^ (v21 + 1146)))) ^ v20)))(v23);
}

uint64_t sub_100185D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15, unsigned int a16, uint64_t a17, uint64_t a18)
{
  v23 = 1875091903 * ((&a14 + 569100031 - 2 * (&a14 & 0x21EBC6FF)) ^ 0x179E457C);
  a17 = a10;
  a15 = (v20 ^ 0xAC1CFEFF) + ((2 * v20) & 0x5839FDFE) + 1946138539 + v23;
  a16 = v23 + 7724;
  (*(v22 + 77160))(&a14);
  v24 = 1824088897 * ((2 * (&a14 & 0x2AA8B80) - &a14 + 2102752376) ^ 0x253CA71A);
  a17 = v18;
  a18 = a10;
  a16 = (v19 ^ 0xCFAEFB9B) - v24 + ((2 * v19) & 0x9F5DF736) + 2130046703;
  a14 = v24 + 3757;
  v25 = (*(v22 + 77048))(&a14);
  return (*(v22 + 8 * ((10785 * (a15 == v21)) ^ 0xBD0u)))(v25);
}

uint64_t sub_100185FE8()
{
  v2 = (*(v1 + 8 * (v0 + 663)))(32, 0x103004054B5FA7DLL);
  STACK[0x5F8] = v2;
  return (*(v1 + 8 * ((30 * (((v2 == 0) ^ v0) & 1)) ^ v0)))();
}

uint64_t sub_10018607C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (a1 + v3 - 16);
  v7 = (a2 + v3 - 16);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * ((((v3 & 0xFFFFFFE0) == 32) * ((v4 ^ 0x4663EF91) + 12021)) ^ (v2 + v4 + 3656))))();
}

uint64_t sub_1001861C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x538] = v4 + 8;
  v6 = STACK[0x568];
  LODWORD(STACK[0x424]) = STACK[0x61C];
  STACK[0x648] = v6;
  STACK[0x6B0] = 0;
  LODWORD(STACK[0x87C]) = 197499219;
  STACK[0x810] = 0x4789E5A74F535ADDLL;
  STACK[0x708] = 0;
  v7 = (*(a4 + 8 * (v5 ^ 0x35DE)))(16, 0x20040A4A59CD2);
  v8 = STACK[0x3E8];
  STACK[0x550] = v7;
  return (*(v8 + 8 * (((v7 == 0) * ((((v5 + 118639809) & 0xF8EDBFF2) - 4481) ^ (v5 + 753094531) & 0xD31CABAD)) ^ v5)))();
}

uint64_t sub_100186290@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = LOWORD(STACK[0x9E4]);
  if (v68 == 17168)
  {
    goto LABEL_4;
  }

  if (v68 == 33980)
  {
    v70 = STACK[0x920];
    STACK[0x928] = v64;
    LODWORD(STACK[0x854]) = a1;
    return (*(v67 + 8 * (((v70 + v66 == 0) * (((a64 + 2073428330) & 0x8469FEEB) - 6120)) ^ (a64 - 3757))))();
  }

  v69 = a64;
  if (v68 == 20706)
  {
LABEL_4:
    STACK[0x928] = v64;
    v65 = 16215638;
    v69 = a64;
  }

  STACK[0x4C8] = 0;
  LODWORD(STACK[0x854]) = 197499219;
  return (*(v67 + 8 * (((v65 == 16257999) * (((2 * ((v69 - 6077) | 0x480)) ^ 0x9FE) + 4127)) | (v69 - 6077) | 0x480)))();
}

uint64_t sub_100186390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12, uint64_t a13, int a14, int a15, unint64_t a16, char *a17, int a18, int a19)
{
  v24 = 1875091903 * ((-1075403139 - (v23 | 0xBFE6A67D) + (v23 | 0x40195982)) ^ 0x766CDA01);
  a17 = a12;
  a15 = (v20 ^ 0x6A9CF6FB) + ((2 * v20) & 0xD539EDF6) - 1249919057 + v24;
  LODWORD(a16) = v24 + 7724;
  (*(v21 + 77160))(&a14);
  a16 = v19 - ((2 * v19) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + 956911519 * (((v23 | 0x74EB4361EE821814) - (v23 | 0x8B14BC9E117DE7EBLL) - 0x74EB4361EE821815) ^ 0x31DD36BD04136811);
  a17 = a12;
  a14 = (956911519 * (((v23 | 0xEE821814) - (v23 | 0x117DE7EB) + 293464043) ^ 0x4136811)) ^ 0x3FE;
  (*(v21 + 76792))(&a14);
  v25 = 1824088897 * ((1428792745 - (v23 | 0x5529A5A9) + (v23 | 0xAAD65A56)) ^ 0xF2BF8934);
  a15 = v25 - 2100247884;
  a16 = a12;
  a17 = &a11;
  a18 = 1032869496 - v25;
  a19 = v25 + 1674579114;
  v26 = (*(v21 + 76864))(&a14);
  return (*(v21 + 8 * ((15659 * (a14 == v22)) ^ 0x1FF1u)))(v26);
}

uint64_t sub_10018659C()
{
  STACK[0x7D8] = *(v2 + 8 * v0);
  LODWORD(STACK[0x310]) = v1 - 5614;
  LODWORD(STACK[0x300]) = v1 - 5021;
  LODWORD(STACK[0x2F0]) = v1 - 5055;
  LODWORD(STACK[0x2E0]) = v1 - 4572;
  LODWORD(STACK[0x2D0]) = v1 - 5037;
  return sub_10022CAA0();
}

uint64_t sub_1001865B4()
{
  STACK[0x6D0] = 0;
  STACK[0x650] = 0;
  STACK[0x518] = *(v1 + 8 * v0);
  return sub_100236B70();
}

uint64_t sub_10018668C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, unsigned int a18, uint64_t a19, int *a20)
{
  a18 = (v21 - 4380) ^ (33731311 * ((((2 * &a17) | 0xB723DDB8) - &a17 + 611193124) ^ 0xE26724FF));
  a19 = a15;
  a20 = &a13;
  v22 = (*(v20 + 8 * (v21 + 1969)))(&a17);
  return (*(v20 + 8 * (((a13 == v21 - 7608) * ((v21 - 677937793) & 0xD305FFDD ^ 0xD305994D)) ^ v21)))(v22);
}

uint64_t sub_100186790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, char a14, __int16 a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, char *a25)
{
  a24 = (v25 - 130) ^ (1710126949 * ((-1059534925 - (&a20 | 0xC0D8C7B3) + (&a20 | 0x3F27384C)) ^ 0xD3C63DC));
  a22 = a17;
  a23 = &a14;
  a25 = &a12;
  (*(v26 + 8 * (v25 + 6119)))(&a20);
  a21 = (v25 - 236) ^ (33731311 * ((-1736883243 - (&a20 | 0x987943D5) + (&a20 | 0x6786BC2A)) ^ 0x5E707609));
  a22 = a17;
  a23 = &a16;
  (*(v26 + 8 * ((v25 + 1732) ^ 0x3125u)))(&a20);
  LODWORD(a23) = v25 + 1732 - 2008441969 * (((&a20 | 0xC9891E2) - (&a20 & 0xC9891E2)) ^ 0x4401C5EC) + 465;
  a22 = a17;
  v28 = (*(v26 + 8 * (v25 + 6163)))(&a20);
  return (*(v26 + 8 * ((3220 * (a20 == ((v25 + 2051) ^ 0x1670 ^ (v27 - 923)))) ^ (v25 + 1732))))(v28);
}

uint64_t sub_100186914()
{
  v2 = v0 + 5633;
  (*(v1 + 8 * (v0 + 7696)))();
  return (*(v1 + 8 * (((STACK[0x6D8] == 0) * ((v2 - 1446) ^ 0x111 ^ (59 * (v2 ^ 0x1D15)))) ^ v2)))();
}

uint64_t sub_100186980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, unsigned int a16, uint64_t a17)
{
  v20 = 1875091903 * (((&a14 ^ 0x7594735B) - 1993303117 - 2 * ((&a14 ^ 0x7594735B) & 0x89309BB3)) ^ 0xCAD16B6B);
  a15 = v20 + ((2 * v17) & 0xF53BED5E) + 629063675 + (v17 ^ 0xFA9DF6AF);
  a16 = v20 + 7724;
  a17 = a11;
  v21 = (*(v18 + 77160))(&a14);
  return (*(v18 + 8 * (((a14 != v19) | (4 * (a14 != v19))) ^ 0x6E2u)))(v21);
}

uint64_t sub_100186B50@<X0>(uint64_t a1@<X8>)
{
  v4 = (v1 - 4889283) & 0x4A9DBF;
  STACK[0x898] = a1 - (v2 & 0x3CE5FE521F6E532CLL) + (v4 ^ 0x1E72FF290FB738BBLL);
  return (*(v3 + 8 * (((v4 - 10404 + ((v4 - 1353478446) & 0x50AC77CB)) * (STACK[0x3B0] == 0)) ^ v4)))();
}

uint64_t sub_100186CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, unsigned int a19, uint64_t a20, uint64_t a21)
{
  v27 = 1875091903 * ((&a17 & 0xE6A90CF0 | ~(&a17 | 0xE6A90CF0)) ^ 0x2F23708C);
  a18 = (v24 ^ 0x2D1DBFFB) + ((v24 << (((v21 ^ 0xB9) - 16) ^ 0xB6)) & 0x5A3B7FF6) - 218171729 + v27;
  a19 = v27 + v21 + 4782;
  a20 = a13;
  (*(v25 + 8 * (v21 ^ 0x2ED3)))(&a17);
  v28 = (((&a17 | 0xBE38570D) - (&a17 & 0xBE38570D)) ^ 0xE651846F) * v26;
  a20 = v22;
  a21 = a13;
  a17 = v28 + v21 + 815;
  a19 = ((2 * v23) & 0xDFCFDD7E) - v28 + ((5 * (v21 ^ 0x9B9) + 1877467356) ^ v23) - 558040117;
  v29 = (*(v25 + 8 * (v21 + 6689)))(&a17);
  return (*(v25 + 8 * ((239 * (a18 == 16257999)) ^ v21)))(v29);
}

uint64_t sub_100186F20(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned int a7, int a8)
{
  v12 = (*(a4 + (149 * ((v8 - 3681) ^ v11) - 26945 - (149 * ((v8 - 3681) ^ v11) - 26945) / 0x3A0u * v10)) ^ 0x8C) * a6 + 478792;
  *(v9 + a2 * a6 + 733503400 - ((((a2 * a6 + 733503400) * a7) >> 32) >> 9) * a8) = *(v9 + (v12 - ((4432371 * v12) >> 32) * a8));
  return (*(a3 + 8 * ((161 * (a2 == 10124967)) ^ v8)))();
}

uint64_t sub_100187020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, unsigned int a20, unsigned int a21, uint64_t a22, uint64_t a23)
{
  v27 = 1875091903 * (((&a19 | 0x2A107195) - &a19 + (&a19 & 0xD5EF8E68)) ^ 0x1C65F216);
  a20 = (v25 ^ 0x209DBEAA) + ((2 * v25) & 0x413B7D54) - 8456192 + v27;
  a21 = v27 + 7724;
  a22 = a16;
  (*(v26 + 77160))(&a19);
  v28 = 1824088897 * (((&a19 | 0x3A08751A) - (&a19 & 0x3A08751A)) ^ 0x6261A678);
  a21 = (v24 ^ 0xFFACFFAA) - v28 + ((2 * v24) & 0xFF59FF54) + 1324870368;
  a19 = v28 + 3757;
  a22 = v23;
  a23 = a16;
  v29 = (*(v26 + 77048))(&a19);
  return (*(v26 + 8 * ((67 * (a20 != 16257999)) ^ 0xF82u)))(v29);
}

uint64_t sub_1001871A0@<X0>(int a1@<W8>)
{
  v3 = *(v1 + 8);
  STACK[0x490] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (a1 - 10749 + 79 * ((a1 - 7326) ^ 0x683))) ^ (a1 - 7326))))();
}

uint64_t sub_1001871F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53)
{
  v55 = (*(v54 + 8 * (v53 ^ 0x3D83)))(((v53 ^ 0x1A0Bu) + 197498665) ^ LODWORD(STACK[0x854]), 0x100004077774924);
  STACK[0xA98] = v55;
  if (v55)
  {
    a53 = 16257999;
  }

  LODWORD(STACK[0xAA4]) = a53;
  return (*(v54 + 8 * (((v55 == 0) * (((v53 - 2011) | 8) - 4172)) ^ v53)))();
}

uint64_t sub_100187280@<X0>(uint64_t a1@<X3>, unint64_t a2@<X6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v58 = (a3 + 6057);
  v548 = v48 & 0xFFFFFFF0;
  v59 = a1 + v54 + v51 + v48;
  v549 = (v59 - 0x3FE7DFB718DDA78CLL);
  v60 = STACK[0x390] + v48;
  v557 = *(v60 - 16);
  v61.i64[0] = v60 - 7;
  v61.i64[1] = v60 - 8;
  v62.i64[0] = v60 - 5;
  v62.i64[1] = v60 - 6;
  v63.i64[0] = v59 - 0x3FE7DFB718DDA783;
  v63.i64[1] = v59 + v47;
  v64.i64[0] = v59 - 0x3FE7DFB718DDA781;
  v64.i64[1] = v59 - 0x3FE7DFB718DDA782;
  v65 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v66 = vandq_s8(v62, v65);
  v67 = vandq_s8(v61, v65);
  v68 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x2C0] = v68;
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v68);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v68);
  v71 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x2B0] = v71;
  v72 = veorq_s8(v70, v71);
  v73 = veorq_s8(v69, v71);
  v74 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x380] = v74;
  v75 = veorq_s8(v69, v74);
  v76 = veorq_s8(v70, v74);
  v77 = vdupq_n_s64(v53);
  v78 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v75), v77);
  v79 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v76), v77);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v81 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v83 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v81);
  v84 = vaddq_s64(v82, v80);
  v85 = vdupq_n_s64(0x444F902103838ADEuLL);
  v86 = vdupq_n_s64(0x5DD837EF7E3E3A91uLL);
  *&STACK[0x2D0] = v86;
  v556 = vdupq_n_s64(0x578539A934117766uLL);
  v87 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v84, v84), v85), v84), v86), v556);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v83, v83), v85), v83), v86), v556);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v90 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v91 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), v90);
  v93 = vdupq_n_s64(v52);
  v94 = veorq_s8(vaddq_s64(v91, v89), v93);
  v95 = veorq_s8(v92, v93);
  v96 = vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL);
  v97 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v98 = veorq_s8(v94, v96);
  v99 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v98);
  v101 = vaddq_s64(v99, v97);
  v102 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x220] = v102;
  v103 = veorq_s8(v101, v102);
  v104 = veorq_s8(v100, v102);
  v105 = veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v106 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v107 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v106);
  v109 = vaddq_s64(v107, v105);
  v110 = vdupq_n_s64(0x953D53DE148E1D56);
  v111 = vdupq_n_s64(0xB5615610F5B8F155);
  v112 = vdupq_n_s64(0x2E5DB5ED7AC3D0C7uLL);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v109, v109), v110), v109), v111), v112);
  v114 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v108, v108), v110), v108), v111), v112);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL));
  v116 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v117 = vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v116);
  v119 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v120 = veorq_s8(vaddq_s64(v117, v115), v119);
  v121 = veorq_s8(v118, v119);
  v122 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v123 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), veorq_s8(v120, v122));
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v123);
  v126 = vdupq_n_s64(0x4AC0565324D70174uLL);
  v127 = vdupq_n_s64(v49);
  v128 = vdupq_n_s64(0xE1F014810C505D35);
  *&STACK[0x2F0] = v128;
  v129 = vdupq_n_s64(0x38uLL);
  v130 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v125, v126), vorrq_s8(v125, v127)), v127), v128), vnegq_s64(vandq_s8(vshlq_n_s64(v62, 3uLL), v129)));
  v131 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v124, v126), vorrq_s8(v124, v127)), v127), v128), vnegq_s64(vandq_s8(vshlq_n_s64(v61, 3uLL), v129)));
  v132 = vandq_s8(v64, v65);
  v133 = vandq_s8(v63, v65);
  v134 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v135 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v136 = vdupq_n_s64(0x5B38AD8DDB3A7C5CuLL);
  v137 = vdupq_n_s64(0x89E752B3FB5DDBECLL);
  v138 = vdupq_n_s64(0x72900020EB4C2C24uLL);
  v139 = vaddq_s64(vsubq_s64(v135, vandq_s8(vaddq_s64(vaddq_s64(v135, v135), v136), v137)), v138);
  v140 = vaddq_s64(vsubq_s64(v134, vandq_s8(vaddq_s64(vaddq_s64(v134, v134), v136), v137)), v138);
  v141 = vdupq_n_s64(0xCF99C25E83E78D67);
  v142 = veorq_s8(v140, v141);
  v143 = veorq_s8(v139, v141);
  v144 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v145 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v146 = vdupq_n_s64(0xA37B7469EF0E7C16);
  v147 = veorq_s8(v139, v146);
  v148 = v146;
  *&STACK[0x290] = v146;
  v149 = vaddq_s64(v144, v147);
  v150 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v151 = veorq_s8(v140, v148);
  v152 = vaddq_s64(v145, v151);
  v153 = vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL);
  v154 = vdupq_n_s64(0xFB9714BECA2C68E9);
  v155 = veorq_s8(v152, v154);
  v156 = v154;
  *&STACK[0x2A0] = v154;
  v157 = veorq_s8(v155, v153);
  v158 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v159 = veorq_s8(v149, v156);
  v160 = veorq_s8(v159, v150);
  v161 = vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL);
  v162 = vaddq_s64(v158, v157);
  v163 = vdupq_n_s64(0x5ABE700122B28302uLL);
  v164 = vaddq_s64(v161, v160);
  *&STACK[0x250] = v163;
  v165 = vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL);
  v166 = vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL);
  v167 = vdupq_n_s64(0xD2A0C7FF6EA6BE7FLL);
  v168 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v164, v164), v163), v164), v167);
  *&STACK[0x280] = v167;
  v169 = vdupq_n_s64(0x90D044FD8F5ED69ALL);
  v170 = veorq_s8(v168, v169);
  v171 = v169;
  *&STACK[0x370] = v169;
  v172 = veorq_s8(v170, v166);
  v173 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v162, v162), v163), v162), v167), v171);
  v175 = veorq_s8(v174, v165);
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175);
  v177 = vdupq_n_s64(0xA11B1487180DD3BBLL);
  *&STACK[0x350] = v177;
  v178 = vdupq_n_s64(v50);
  v179 = vsubq_s64(vorrq_s8(v176, v177), vorrq_s8(v176, v178));
  v180 = vaddq_s64(v173, v172);
  v181 = vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL);
  v182 = vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL);
  v183 = vaddq_s64(vsubq_s64(vorrq_s8(v180, v177), vorrq_s8(v180, v178)), v178);
  v184 = v178;
  *&STACK[0x310] = v178;
  v185 = vdupq_n_s64(v55);
  v186 = veorq_s8(v183, v185);
  v187 = v185;
  *&STACK[0x320] = v185;
  v188 = veorq_s8(v186, v182);
  v189 = vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL);
  v190 = veorq_s8(vaddq_s64(v179, v184), v187);
  v191 = veorq_s8(v190, v181);
  v192 = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v193 = vaddq_s64(v189, v188);
  v194 = vdupq_n_s64(v57);
  *&STACK[0x360] = v194;
  v195 = vsubq_s64(v193, vandq_s8(vaddq_s64(v193, v193), v194));
  v196 = vaddq_s64(v192, v191);
  v197 = vsubq_s64(v196, vandq_s8(vaddq_s64(v196, v196), v194));
  v198 = vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL);
  v199 = vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL);
  v200 = vdupq_n_s64(0x817DC7D3C629B1F2);
  v201 = vdupq_n_s64(0x8BBA1DD6A2E83279);
  *&STACK[0x270] = v200;
  v202 = veorq_s8(vaddq_s64(v197, v200), v201);
  v203 = veorq_s8(v202, v199);
  v204 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v205 = veorq_s8(vaddq_s64(v195, v200), v201);
  v206 = veorq_s8(v205, v198);
  v207 = vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL);
  v208 = vaddq_s64(v204, v203);
  v209 = vdupq_n_s64(0x138A00D81D9F80FEuLL);
  *&STACK[0x330] = v209;
  *&STACK[0x340] = v201;
  v210 = vsubq_s64(v208, vandq_s8(vaddq_s64(v208, v208), v209));
  v211 = vaddq_s64(v207, v206);
  v212 = vsubq_s64(v211, vandq_s8(vaddq_s64(v211, v211), v209));
  v213 = vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL);
  v214 = vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL);
  v215 = vdupq_n_s64(0x9C5006C0ECFC07FuLL);
  v216 = vaddq_s64(v212, v215);
  *&STACK[0x260] = v215;
  v217 = vdupq_n_s64(0x6855A70E70B2CB06uLL);
  v218 = veorq_s8(v216, v217);
  v219 = v217;
  *&STACK[0x300] = v217;
  v220 = veorq_s8(v218, v214);
  v221 = vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL);
  v222 = veorq_s8(vaddq_s64(v210, v215), v219);
  v223 = veorq_s8(v222, v213);
  v224 = vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL);
  v225 = vaddq_s64(v221, v220);
  v226 = vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL);
  v227 = vaddq_s64(v224, v223);
  v228 = vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL);
  v229 = vdupq_n_s64(a2);
  v230 = veorq_s8(v227, v229);
  v231 = v229;
  *&STACK[0x3B0] = v229;
  v232 = veorq_s8(v230, v228);
  v233 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v234 = veorq_s8(v225, v231);
  v235 = vaddq_s64(v233, v232);
  v236 = vdupq_n_s64(0x51BB4171AFEDC628uLL);
  *&STACK[0x230] = v236;
  v237 = v129;
  v560.val[3] = veorq_s8(vshlq_u64(veorq_s8(v235, v236), vnegq_s64(vandq_s8(vshlq_n_s64(v63, 3uLL), v129))), v131);
  v560.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), veorq_s8(v234, v226)), v236), vnegq_s64(vandq_s8(vshlq_n_s64(v64, 3uLL), v129))), v130);
  v233.i64[0] = v60 - 1;
  v233.i64[1] = v60 - 2;
  v238 = v65;
  v239 = vandq_s8(v233, v65);
  v241 = *&STACK[0x2B0];
  v240 = *&STACK[0x2C0];
  v242 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), *&STACK[0x2C0]);
  v243 = veorq_s8(v242, *&STACK[0x2B0]);
  v244 = veorq_s8(v242, *&STACK[0x380]);
  v245 = vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL);
  v246 = v77;
  v558 = v77;
  v247 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL), v244), v77);
  v248 = veorq_s8(v247, v245);
  v249 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v248);
  v250 = v85;
  v550 = v85;
  v251 = *&STACK[0x2D0];
  v252 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v249, v249), v85), v249), *&STACK[0x2D0]), v556);
  v253 = veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v254 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v253), v93);
  v255 = veorq_s8(v254, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v256 = *&STACK[0x220];
  v257 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL), v255), *&STACK[0x220]);
  v258 = veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL));
  v259 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v258);
  v552 = v112;
  v260 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v259, v259), v110), v259), v111), v112);
  v261 = veorq_s8(v260, vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL));
  v262 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL), v261), v119);
  v263 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v261, 3uLL), v261, 0x3DuLL)));
  *&STACK[0x2E0] = v126;
  v551 = v127;
  v264 = vaddq_s64(vsubq_s64(vorrq_s8(v263, v126), vorrq_s8(v263, v127)), v127);
  v265 = *&STACK[0x2F0];
  v554 = vshlq_u64(veorq_s8(v264, *&STACK[0x2F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v233, 3uLL), v237)));
  v264.i64[0] = v59 - 0x3FE7DFB718DDA77DLL;
  v264.i64[1] = v59 - 0x3FE7DFB718DDA77ELL;
  v266 = vandq_s8(v264, v238);
  v267 = vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL);
  *&STACK[0x240] = v136;
  *&STACK[0x200] = v137;
  *&STACK[0x210] = v138;
  v268 = vaddq_s64(vsubq_s64(v267, vandq_s8(vaddq_s64(vaddq_s64(v267, v267), v136), v137)), v138);
  v269 = v141;
  v553 = v141;
  v270 = veorq_s8(v268, v141);
  v271 = veorq_s8(v268, *&STACK[0x290]);
  v272 = vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL);
  v273 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v270, 0x38uLL), v270, 8uLL), v271), *&STACK[0x2A0]);
  v274 = veorq_s8(v273, v272);
  v275 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v273, 0x38uLL), v273, 8uLL), v274);
  v276 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v275, v275), v163), v275), *&STACK[0x280]), *&STACK[0x370]);
  v277 = veorq_s8(v276, vsraq_n_u64(vshlq_n_s64(v274, 3uLL), v274, 0x3DuLL));
  v278 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v276, 0x38uLL), v276, 8uLL), v277);
  v279 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v278, *&STACK[0x350]), vorrq_s8(v278, *&STACK[0x310])), *&STACK[0x310]), *&STACK[0x320]);
  v280 = veorq_s8(v279, vsraq_n_u64(vshlq_n_s64(v277, 3uLL), v277, 0x3DuLL));
  v281 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v279, 0x38uLL), v279, 8uLL), v280);
  v282 = veorq_s8(vaddq_s64(vsubq_s64(v281, vandq_s8(vaddq_s64(v281, v281), *&STACK[0x360])), *&STACK[0x270]), *&STACK[0x340]);
  v283 = veorq_s8(v282, vsraq_n_u64(vshlq_n_s64(v280, 3uLL), v280, 0x3DuLL));
  v284 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v282, 0x38uLL), v282, 8uLL), v283);
  v285 = veorq_s8(vaddq_s64(vsubq_s64(v284, vandq_s8(vaddq_s64(v284, v284), *&STACK[0x330])), *&STACK[0x260]), *&STACK[0x300]);
  v286 = veorq_s8(v285, vsraq_n_u64(vshlq_n_s64(v283, 3uLL), v283, 0x3DuLL));
  v287 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL), v286), *&STACK[0x3B0]);
  v560.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v287, 0x38uLL), v287, 8uLL), veorq_s8(v287, vsraq_n_u64(vshlq_n_s64(v286, 3uLL), v286, 0x3DuLL))), *&STACK[0x230]), vnegq_s64(vandq_s8(vshlq_n_s64(v264, 3uLL), v237))), v554);
  v288 = (v58 - 254);
  v264.i64[0] = v60 - 3;
  v264.i64[1] = v60 + (v288 ^ 0xFFFFFFFFFFFFE931);
  v289 = vandq_s8(v264, v238);
  v290 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v289, 0x38uLL), v289, 8uLL), v240);
  v291 = veorq_s8(v290, v241);
  v292 = veorq_s8(v290, *&STACK[0x380]);
  v293 = vsraq_n_u64(vshlq_n_s64(v292, 3uLL), v292, 0x3DuLL);
  v294 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), v292), v246);
  v295 = veorq_s8(v294, v293);
  v296 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL), v295);
  v297 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v296, v296), v250), v296), v251), v556);
  v298 = veorq_s8(v297, vsraq_n_u64(vshlq_n_s64(v295, 3uLL), v295, 0x3DuLL));
  v299 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v297, 0x38uLL), v297, 8uLL), v298), v93);
  v300 = veorq_s8(v299, vsraq_n_u64(vshlq_n_s64(v298, 3uLL), v298, 0x3DuLL));
  v301 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v299, 0x38uLL), v299, 8uLL), v300), v256);
  v302 = veorq_s8(v301, vsraq_n_u64(vshlq_n_s64(v300, 3uLL), v300, 0x3DuLL));
  v303 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v301, 0x38uLL), v301, 8uLL), v302);
  v304 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v303, v303), v110), v303), v111), v112);
  v305 = veorq_s8(v304, vsraq_n_u64(vshlq_n_s64(v302, 3uLL), v302, 0x3DuLL));
  v306 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL), v305), v119);
  v307 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v306, 0x38uLL), v306, 8uLL), veorq_s8(v306, vsraq_n_u64(vshlq_n_s64(v305, 3uLL), v305, 0x3DuLL)));
  v306.i64[0] = v59 - 0x3FE7DFB718DDA77FLL;
  v306.i64[1] = v59 - 0x3FE7DFB718DDA77CLL + (v288 ^ 0xFFFFFFFFFFFFE931);
  v308 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v307, *&STACK[0x2E0]), vorrq_s8(v307, v551)), v551), v265), vnegq_s64(vandq_s8(vshlq_n_s64(v264, 3uLL), v237)));
  v309 = vandq_s8(v306, v238);
  v310 = vsraq_n_u64(vshlq_n_s64(v309, 0x38uLL), v309, 8uLL);
  v311 = vaddq_s64(vsubq_s64(v310, vandq_s8(vaddq_s64(vaddq_s64(v310, v310), v136), v137)), v138);
  v312 = veorq_s8(v311, v269);
  v313 = veorq_s8(v311, *&STACK[0x290]);
  v314 = vsraq_n_u64(vshlq_n_s64(v313, 3uLL), v313, 0x3DuLL);
  v315 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v312, 0x38uLL), v312, 8uLL), v313), *&STACK[0x2A0]);
  v316 = veorq_s8(v315, v314);
  v317 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v315, 0x38uLL), v315, 8uLL), v316);
  v318 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v317, v317), *&STACK[0x250]), v317), *&STACK[0x280]), *&STACK[0x370]);
  v319 = veorq_s8(v318, vsraq_n_u64(vshlq_n_s64(v316, 3uLL), v316, 0x3DuLL));
  v320 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v318, 0x38uLL), v318, 8uLL), v319);
  v321 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v320, *&STACK[0x350]), vorrq_s8(v320, *&STACK[0x310])), *&STACK[0x310]), *&STACK[0x320]);
  v322 = veorq_s8(v321, vsraq_n_u64(vshlq_n_s64(v319, 3uLL), v319, 0x3DuLL));
  v323 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v321, 0x38uLL), v321, 8uLL), v322);
  v324 = veorq_s8(vaddq_s64(vsubq_s64(v323, vandq_s8(vaddq_s64(v323, v323), *&STACK[0x360])), *&STACK[0x270]), *&STACK[0x340]);
  v325 = veorq_s8(v324, vsraq_n_u64(vshlq_n_s64(v322, 3uLL), v322, 0x3DuLL));
  v326 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v324, 0x38uLL), v324, 8uLL), v325);
  v327 = veorq_s8(vaddq_s64(vsubq_s64(v326, vandq_s8(vaddq_s64(v326, v326), *&STACK[0x330])), *&STACK[0x260]), *&STACK[0x300]);
  v328 = veorq_s8(v327, vsraq_n_u64(vshlq_n_s64(v325, 3uLL), v325, 0x3DuLL));
  v329 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL), v328), *&STACK[0x3B0]);
  v560.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL), veorq_s8(v329, vsraq_n_u64(vshlq_n_s64(v328, 3uLL), v328, 0x3DuLL))), *&STACK[0x230]), vnegq_s64(vandq_s8(vshlq_n_s64(v306, 3uLL), v237))), v308);
  v555 = vqtbl4q_s8(v560, xmmword_1002BF690);
  v234.i64[0] = v60 - 15;
  v234.i64[1] = v60 - 16;
  v330 = vandq_s8(v234, v238);
  v331 = vsraq_n_u64(vshlq_n_s64(v330, 0x38uLL), v330, 8uLL);
  v330.i64[0] = v60 - 13;
  v330.i64[1] = v60 - 14;
  v332 = vandq_s8(v330, v238);
  v333 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v332, 0x38uLL), v332, 8uLL), *&STACK[0x2C0]);
  v334 = veorq_s8(v333, v241);
  v335 = vsraq_n_u64(vshlq_n_s64(v334, 0x38uLL), v334, 8uLL);
  v336 = vaddq_s64(v331, *&STACK[0x2C0]);
  v337 = veorq_s8(v336, v241);
  v338 = vsraq_n_u64(vshlq_n_s64(v337, 0x38uLL), v337, 8uLL);
  v339 = veorq_s8(v333, *&STACK[0x380]);
  v340 = vaddq_s64(v335, v339);
  v341 = vsraq_n_u64(vshlq_n_s64(v339, 3uLL), v339, 0x3DuLL);
  v342 = veorq_s8(v336, *&STACK[0x380]);
  v343 = vaddq_s64(v338, v342);
  v344 = vsraq_n_u64(vshlq_n_s64(v342, 3uLL), v342, 0x3DuLL);
  v345 = veorq_s8(v343, v558);
  v346 = veorq_s8(v345, v344);
  v347 = vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL);
  v348 = veorq_s8(v340, v558);
  v349 = veorq_s8(v348, v341);
  v350 = vsraq_n_u64(vshlq_n_s64(v348, 0x38uLL), v348, 8uLL);
  v351 = vaddq_s64(v347, v346);
  v352 = vaddq_s64(v350, v349);
  v353 = vsraq_n_u64(vshlq_n_s64(v346, 3uLL), v346, 0x3DuLL);
  v354 = vsraq_n_u64(vshlq_n_s64(v349, 3uLL), v349, 0x3DuLL);
  v355 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v352, v352), v550), v352), *&STACK[0x2D0]), v556);
  v356 = veorq_s8(v355, v354);
  v357 = vsraq_n_u64(vshlq_n_s64(v355, 0x38uLL), v355, 8uLL);
  v358 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v351, v351), v550), v351), *&STACK[0x2D0]), v556);
  v359 = veorq_s8(v358, v353);
  v360 = vsraq_n_u64(vshlq_n_s64(v358, 0x38uLL), v358, 8uLL);
  v361 = vaddq_s64(v357, v356);
  v362 = vsraq_n_u64(vshlq_n_s64(v356, 3uLL), v356, 0x3DuLL);
  v363 = veorq_s8(vaddq_s64(v360, v359), v93);
  v364 = veorq_s8(v363, vsraq_n_u64(vshlq_n_s64(v359, 3uLL), v359, 0x3DuLL));
  v365 = vsraq_n_u64(vshlq_n_s64(v363, 0x38uLL), v363, 8uLL);
  v366 = veorq_s8(v361, v93);
  v367 = veorq_s8(v366, v362);
  v368 = vsraq_n_u64(vshlq_n_s64(v366, 0x38uLL), v366, 8uLL);
  v369 = vaddq_s64(v365, v364);
  v370 = vsraq_n_u64(vshlq_n_s64(v364, 3uLL), v364, 0x3DuLL);
  v371 = vaddq_s64(v368, v367);
  v372 = vsraq_n_u64(vshlq_n_s64(v367, 3uLL), v367, 0x3DuLL);
  v373 = veorq_s8(v371, *&STACK[0x220]);
  v374 = veorq_s8(v373, v372);
  v375 = vsraq_n_u64(vshlq_n_s64(v373, 0x38uLL), v373, 8uLL);
  v376 = veorq_s8(v369, *&STACK[0x220]);
  v377 = veorq_s8(v376, v370);
  v378 = vsraq_n_u64(vshlq_n_s64(v376, 0x38uLL), v376, 8uLL);
  v379 = vaddq_s64(v375, v374);
  v380 = vaddq_s64(v378, v377);
  v381 = vsraq_n_u64(vshlq_n_s64(v374, 3uLL), v374, 0x3DuLL);
  v382 = vsraq_n_u64(vshlq_n_s64(v377, 3uLL), v377, 0x3DuLL);
  v383 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v380, v380), v110), v380), v111), v552);
  v384 = veorq_s8(v383, v382);
  v385 = vsraq_n_u64(vshlq_n_s64(v383, 0x38uLL), v383, 8uLL);
  v386 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v379, v379), v110), v379), v111), v552);
  v387 = veorq_s8(v386, v381);
  v388 = vsraq_n_u64(vshlq_n_s64(v386, 0x38uLL), v386, 8uLL);
  v389 = vaddq_s64(v385, v384);
  v390 = vsraq_n_u64(vshlq_n_s64(v384, 3uLL), v384, 0x3DuLL);
  v391 = vaddq_s64(v388, v387);
  v392 = vsraq_n_u64(vshlq_n_s64(v387, 3uLL), v387, 0x3DuLL);
  v393 = veorq_s8(v391, v119);
  v394 = veorq_s8(v389, v119);
  v395 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v394, 0x38uLL), v394, 8uLL), veorq_s8(v394, v390));
  v396 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v393, 0x38uLL), v393, 8uLL), veorq_s8(v393, v392));
  v397 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v396, *&STACK[0x2E0]), vorrq_s8(v396, v551)), v551), *&STACK[0x2F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v330, 3uLL), v237)));
  v398 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v395, *&STACK[0x2E0]), vorrq_s8(v395, v551)), v551), *&STACK[0x2F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v234, 3uLL), v237)));
  v330.i64[0] = v59 - 0x3FE7DFB718DDA78BLL;
  v330.i64[1] = v59 - 0x3FE7DFB718DDA78CLL;
  v399 = vandq_s8(v330, v238);
  v400 = vsraq_n_u64(vshlq_n_s64(v399, 0x38uLL), v399, 8uLL);
  v399.i64[0] = v59 - 0x3FE7DFB718DDA789;
  v399.i64[1] = v59 - 0x3FE7DFB718DDA78ALL;
  v401 = vandq_s8(v399, v238);
  v402 = vsraq_n_u64(vshlq_n_s64(v401, 0x38uLL), v401, 8uLL);
  v403 = vaddq_s64(vsubq_s64(v402, vandq_s8(vaddq_s64(vaddq_s64(v402, v402), *&STACK[0x240]), *&STACK[0x200])), *&STACK[0x210]);
  v404 = veorq_s8(v403, v553);
  v405 = vsraq_n_u64(vshlq_n_s64(v404, 0x38uLL), v404, 8uLL);
  v406 = vaddq_s64(vsubq_s64(v400, vandq_s8(vaddq_s64(vaddq_s64(v400, v400), *&STACK[0x240]), *&STACK[0x200])), *&STACK[0x210]);
  v407 = veorq_s8(v406, v553);
  v408 = vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL);
  v409 = veorq_s8(v403, *&STACK[0x290]);
  v410 = vaddq_s64(v405, v409);
  v411 = vsraq_n_u64(vshlq_n_s64(v409, 3uLL), v409, 0x3DuLL);
  v412 = veorq_s8(v406, *&STACK[0x290]);
  v413 = vaddq_s64(v408, v412);
  v414 = vsraq_n_u64(vshlq_n_s64(v412, 3uLL), v412, 0x3DuLL);
  v415 = veorq_s8(v413, *&STACK[0x2A0]);
  v416 = veorq_s8(v415, v414);
  v417 = vsraq_n_u64(vshlq_n_s64(v415, 0x38uLL), v415, 8uLL);
  v418 = veorq_s8(v410, *&STACK[0x2A0]);
  v419 = veorq_s8(v418, v411);
  v420 = vsraq_n_u64(vshlq_n_s64(v418, 0x38uLL), v418, 8uLL);
  v421 = vaddq_s64(v417, v416);
  v422 = vaddq_s64(v420, v419);
  v423 = vsraq_n_u64(vshlq_n_s64(v416, 3uLL), v416, 0x3DuLL);
  v424 = vsraq_n_u64(vshlq_n_s64(v419, 3uLL), v419, 0x3DuLL);
  v425 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v422, v422), *&STACK[0x250]), v422), *&STACK[0x280]), *&STACK[0x370]);
  v426 = veorq_s8(v425, v424);
  v427 = vsraq_n_u64(vshlq_n_s64(v425, 0x38uLL), v425, 8uLL);
  v428 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v421, v421), *&STACK[0x250]), v421), *&STACK[0x280]), *&STACK[0x370]);
  v429 = veorq_s8(v428, v423);
  v430 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v428, 0x38uLL), v428, 8uLL), v429);
  v431 = vaddq_s64(v427, v426);
  v432 = vsraq_n_u64(vshlq_n_s64(v429, 3uLL), v429, 0x3DuLL);
  v433 = vsraq_n_u64(vshlq_n_s64(v426, 3uLL), v426, 0x3DuLL);
  v434 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v431, *&STACK[0x350]), vorrq_s8(v431, *&STACK[0x310])), *&STACK[0x310]), *&STACK[0x320]);
  v435 = veorq_s8(v434, v433);
  v436 = vsraq_n_u64(vshlq_n_s64(v434, 0x38uLL), v434, 8uLL);
  v437 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v430, *&STACK[0x350]), vorrq_s8(v430, *&STACK[0x310])), *&STACK[0x310]), *&STACK[0x320]);
  v438 = veorq_s8(v437, v432);
  v439 = vsraq_n_u64(vshlq_n_s64(v437, 0x38uLL), v437, 8uLL);
  v440 = vaddq_s64(v436, v435);
  v441 = vaddq_s64(v439, v438);
  v442 = vsraq_n_u64(vshlq_n_s64(v435, 3uLL), v435, 0x3DuLL);
  v443 = vsraq_n_u64(vshlq_n_s64(v438, 3uLL), v438, 0x3DuLL);
  v444 = veorq_s8(vaddq_s64(vsubq_s64(v441, vandq_s8(vaddq_s64(v441, v441), *&STACK[0x360])), *&STACK[0x270]), *&STACK[0x340]);
  v445 = veorq_s8(v444, v443);
  v446 = vsraq_n_u64(vshlq_n_s64(v444, 0x38uLL), v444, 8uLL);
  v447 = veorq_s8(vaddq_s64(vsubq_s64(v440, vandq_s8(vaddq_s64(v440, v440), *&STACK[0x360])), *&STACK[0x270]), *&STACK[0x340]);
  v448 = veorq_s8(v447, v442);
  v449 = vsraq_n_u64(vshlq_n_s64(v447, 0x38uLL), v447, 8uLL);
  v450 = vaddq_s64(v446, v445);
  v451 = vaddq_s64(v449, v448);
  v452 = vsraq_n_u64(vshlq_n_s64(v445, 3uLL), v445, 0x3DuLL);
  v453 = vsraq_n_u64(vshlq_n_s64(v448, 3uLL), v448, 0x3DuLL);
  v454 = veorq_s8(vaddq_s64(vsubq_s64(v451, vandq_s8(vaddq_s64(v451, v451), *&STACK[0x330])), *&STACK[0x260]), *&STACK[0x300]);
  v455 = veorq_s8(v454, v453);
  v456 = vsraq_n_u64(vshlq_n_s64(v454, 0x38uLL), v454, 8uLL);
  v457 = veorq_s8(vaddq_s64(vsubq_s64(v450, vandq_s8(vaddq_s64(v450, v450), *&STACK[0x330])), *&STACK[0x260]), *&STACK[0x300]);
  v458 = veorq_s8(v457, v452);
  v459 = vsraq_n_u64(vshlq_n_s64(v457, 0x38uLL), v457, 8uLL);
  v460 = vaddq_s64(v456, v455);
  v461 = vsraq_n_u64(vshlq_n_s64(v455, 3uLL), v455, 0x3DuLL);
  v462 = vaddq_s64(v459, v458);
  v463 = vsraq_n_u64(vshlq_n_s64(v458, 3uLL), v458, 0x3DuLL);
  v464 = veorq_s8(v462, *&STACK[0x3B0]);
  v465 = veorq_s8(v460, *&STACK[0x3B0]);
  v559.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v464, 0x38uLL), v464, 8uLL), veorq_s8(v464, v463)), *&STACK[0x230]), vnegq_s64(vandq_s8(vshlq_n_s64(v330, 3uLL), v237))), v398);
  v559.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v465, 0x38uLL), v465, 8uLL), veorq_s8(v465, v461)), *&STACK[0x230]), vnegq_s64(vandq_s8(vshlq_n_s64(v399, 3uLL), v237))), v397);
  v398.i64[0] = v60 - 11;
  v398.i64[1] = v60 - 12;
  v466 = vandq_s8(v398, v238);
  v467 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466, 0x38uLL), v466, 8uLL), *&STACK[0x2C0]);
  v468 = veorq_s8(v467, *&STACK[0x2B0]);
  v469 = veorq_s8(v467, *&STACK[0x380]);
  v470 = vsraq_n_u64(vshlq_n_s64(v469, 3uLL), v469, 0x3DuLL);
  v471 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v468, 0x38uLL), v468, 8uLL), v469), v558);
  v472 = veorq_s8(v471, v470);
  v473 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v471, 0x38uLL), v471, 8uLL), v472);
  v474 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v473, v473), v550), v473), *&STACK[0x2D0]), v556);
  v475 = veorq_s8(v474, vsraq_n_u64(vshlq_n_s64(v472, 3uLL), v472, 0x3DuLL));
  v476 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v474, 0x38uLL), v474, 8uLL), v475), v93);
  v477 = veorq_s8(v476, vsraq_n_u64(vshlq_n_s64(v475, 3uLL), v475, 0x3DuLL));
  v478 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v476, 0x38uLL), v476, 8uLL), v477), *&STACK[0x220]);
  v479 = veorq_s8(v478, vsraq_n_u64(vshlq_n_s64(v477, 3uLL), v477, 0x3DuLL));
  v480 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v478, 0x38uLL), v478, 8uLL), v479);
  v481 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v480, v480), v110), v480), v111), v552);
  v482 = veorq_s8(v481, vsraq_n_u64(vshlq_n_s64(v479, 3uLL), v479, 0x3DuLL));
  v483 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v481, 0x38uLL), v481, 8uLL), v482), v119);
  v484 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483, 0x38uLL), v483, 8uLL), veorq_s8(v483, vsraq_n_u64(vshlq_n_s64(v482, 3uLL), v482, 0x3DuLL)));
  v485 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v484, *&STACK[0x2E0]), vorrq_s8(v484, v551)), v551), *&STACK[0x2F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v398, 3uLL), v237)));
  v398.i64[0] = v59 - 0x3FE7DFB718DDA787;
  v398.i64[1] = v59 - 0x3FE7DFB718DDA788;
  v486 = vandq_s8(v398, v238);
  v487 = vsraq_n_u64(vshlq_n_s64(v486, 0x38uLL), v486, 8uLL);
  v488 = vaddq_s64(vsubq_s64(v487, vandq_s8(vaddq_s64(vaddq_s64(v487, v487), *&STACK[0x240]), *&STACK[0x200])), *&STACK[0x210]);
  v489 = veorq_s8(v488, v553);
  v490 = veorq_s8(v488, *&STACK[0x290]);
  v491 = vsraq_n_u64(vshlq_n_s64(v490, 3uLL), v490, 0x3DuLL);
  v492 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v489, 0x38uLL), v489, 8uLL), v490), *&STACK[0x2A0]);
  v493 = veorq_s8(v492, v491);
  v494 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v492, 0x38uLL), v492, 8uLL), v493);
  v495 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v494, v494), *&STACK[0x250]), v494), *&STACK[0x280]), *&STACK[0x370]);
  v496 = veorq_s8(v495, vsraq_n_u64(vshlq_n_s64(v493, 3uLL), v493, 0x3DuLL));
  v497 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v495, 0x38uLL), v495, 8uLL), v496);
  v498 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v497, *&STACK[0x350]), vorrq_s8(v497, *&STACK[0x310])), *&STACK[0x310]), *&STACK[0x320]);
  v499 = veorq_s8(v498, vsraq_n_u64(vshlq_n_s64(v496, 3uLL), v496, 0x3DuLL));
  v500 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v498, 0x38uLL), v498, 8uLL), v499);
  v501 = veorq_s8(vaddq_s64(vsubq_s64(v500, vandq_s8(vaddq_s64(v500, v500), *&STACK[0x360])), *&STACK[0x270]), *&STACK[0x340]);
  v502 = veorq_s8(v501, vsraq_n_u64(vshlq_n_s64(v499, 3uLL), v499, 0x3DuLL));
  v503 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v501, 0x38uLL), v501, 8uLL), v502);
  v504 = veorq_s8(vaddq_s64(vsubq_s64(v503, vandq_s8(vaddq_s64(v503, v503), *&STACK[0x330])), *&STACK[0x260]), *&STACK[0x300]);
  v505 = veorq_s8(v504, vsraq_n_u64(vshlq_n_s64(v502, 3uLL), v502, 0x3DuLL));
  v506 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v504, 0x38uLL), v504, 8uLL), v505), *&STACK[0x3B0]);
  v559.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v506, 0x38uLL), v506, 8uLL), veorq_s8(v506, vsraq_n_u64(vshlq_n_s64(v505, 3uLL), v505, 0x3DuLL))), *&STACK[0x230]), vnegq_s64(vandq_s8(vshlq_n_s64(v398, 3uLL), v237))), v485);
  v398.i64[0] = v60 - 9;
  v398.i64[1] = v60 - 10;
  v507 = vandq_s8(v398, v238);
  v508 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v507, 0x38uLL), v507, 8uLL), *&STACK[0x2C0]);
  v509 = veorq_s8(v508, *&STACK[0x2B0]);
  v510 = veorq_s8(v508, *&STACK[0x380]);
  v511 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v509, 0x38uLL), v509, 8uLL), v510), v558);
  v512 = veorq_s8(v511, vsraq_n_u64(vshlq_n_s64(v510, 3uLL), v510, 0x3DuLL));
  v513 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v511, 0x38uLL), v511, 8uLL), v512);
  v514 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v513, v513), v550), v513), *&STACK[0x2D0]), v556);
  v515 = veorq_s8(v514, vsraq_n_u64(vshlq_n_s64(v512, 3uLL), v512, 0x3DuLL));
  v516 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v514, 0x38uLL), v514, 8uLL), v515), v93);
  v517 = veorq_s8(v516, vsraq_n_u64(vshlq_n_s64(v515, 3uLL), v515, 0x3DuLL));
  v518 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v516, 0x38uLL), v516, 8uLL), v517), *&STACK[0x220]);
  v519 = veorq_s8(v518, vsraq_n_u64(vshlq_n_s64(v517, 3uLL), v517, 0x3DuLL));
  v520 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v518, 0x38uLL), v518, 8uLL), v519);
  v521 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v520, v520), v110), v520), v111), v552);
  v522 = veorq_s8(v521, vsraq_n_u64(vshlq_n_s64(v519, 3uLL), v519, 0x3DuLL));
  v523 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v521, 0x38uLL), v521, 8uLL), v522), v119);
  v524 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v523, 0x38uLL), v523, 8uLL), veorq_s8(v523, vsraq_n_u64(vshlq_n_s64(v522, 3uLL), v522, 0x3DuLL)));
  v397.i64[0] = v59 - 0x3FE7DFB718DDA785;
  v397.i64[1] = v59 - 0x3FE7DFB718DDA786;
  v525 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v524, *&STACK[0x2E0]), vorrq_s8(v524, v551)), v551), *&STACK[0x2F0]), vnegq_s64(vandq_s8(vshlq_n_s64(v398, 3uLL), v237)));
  v526 = vandq_s8(v397, v238);
  v527 = vsraq_n_u64(vshlq_n_s64(v526, 0x38uLL), v526, 8uLL);
  v528 = vaddq_s64(vsubq_s64(v527, vandq_s8(vaddq_s64(vaddq_s64(v527, v527), *&STACK[0x240]), *&STACK[0x200])), *&STACK[0x210]);
  v529 = veorq_s8(v528, v553);
  v530 = veorq_s8(v528, *&STACK[0x290]);
  v531 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v529, 0x38uLL), v529, 8uLL), v530), *&STACK[0x2A0]);
  v532 = veorq_s8(v531, vsraq_n_u64(vshlq_n_s64(v530, 3uLL), v530, 0x3DuLL));
  v533 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v531, 0x38uLL), v531, 8uLL), v532);
  v534 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v533, v533), *&STACK[0x250]), v533), *&STACK[0x280]), *&STACK[0x370]);
  v535 = veorq_s8(v534, vsraq_n_u64(vshlq_n_s64(v532, 3uLL), v532, 0x3DuLL));
  v536 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v534, 0x38uLL), v534, 8uLL), v535);
  v537 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v536, *&STACK[0x350]), vorrq_s8(v536, *&STACK[0x310])), *&STACK[0x310]), *&STACK[0x320]);
  v538 = veorq_s8(v537, vsraq_n_u64(vshlq_n_s64(v535, 3uLL), v535, 0x3DuLL));
  v539 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v537, 0x38uLL), v537, 8uLL), v538);
  v540 = veorq_s8(vaddq_s64(vsubq_s64(v539, vandq_s8(vaddq_s64(v539, v539), *&STACK[0x360])), *&STACK[0x270]), *&STACK[0x340]);
  v541 = veorq_s8(v540, vsraq_n_u64(vshlq_n_s64(v538, 3uLL), v538, 0x3DuLL));
  v542 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v540, 0x38uLL), v540, 8uLL), v541);
  v543 = veorq_s8(vaddq_s64(vsubq_s64(v542, vandq_s8(vaddq_s64(v542, v542), *&STACK[0x330])), *&STACK[0x260]), *&STACK[0x300]);
  v544 = veorq_s8(v543, vsraq_n_u64(vshlq_n_s64(v541, 3uLL), v541, 0x3DuLL));
  v545 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v543, 0x38uLL), v543, 8uLL), v544), *&STACK[0x3B0]);
  v559.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v545, 0x38uLL), v545, 8uLL), veorq_s8(v545, vsraq_n_u64(vshlq_n_s64(v544, 3uLL), v544, 0x3DuLL))), *&STACK[0x230]), vnegq_s64(vandq_s8(vshlq_n_s64(v397, 3uLL), v237))), v525);
  v545.i64[0] = v555.i64[0];
  v545.i64[1] = vqtbl4q_s8(v559, xmmword_1002BF690).u64[0];
  v546 = vrev64q_s8(v545);
  *v549 = veorq_s8(vextq_s8(v546, v546, 8uLL), v557);
  return (*(v56 + 8 * ((7231 * (v548 == 16)) ^ (v58 - 2601))))(v58, 0x72900020EB4C2C24, 0x953D53DE148E1D56, v288, v549, 0xCF99C25E83E78D67, 0x5B38AD8DDB3A7C5CLL, 0x89E752B3FB5DDBECLL, a4, v54, v51, a7, v548, a9, a10, v59 - 0x3FE7DFB718DDA77DLL, v59 - 0x3FE7DFB718DDA77ELL, v59 - 0x3FE7DFB718DDA77FLL, v59 - 0x3FE7DFB718DDA77CLL, v59 - 0x3FE7DFB718DDA781, a16, a17, a18, v59 - 0x3FE7DFB718DDA782, v59 - 0x3FE7DFB718DDA783, v59 + v47, v59 - 0x3FE7DFB718DDA785, v59 - 0x3FE7DFB718DDA786, v59 - 0x3FE7DFB718DDA787, v59 - 0x3FE7DFB718DDA788, v59 - 0x3FE7DFB718DDA789, v59 - 0x3FE7DFB718DDA78ALL, v59 - 0x3FE7DFB718DDA78BLL, a29, v549, a31, 16 - v548, a33, a34, a35, v237.i64[0], v237.i64[1], v550.i64[0], v550.i64[1], v551.i64[0], v551.i64[1], v111.i64[0], v111.i64[1], v552.i64[0], v552.i64[1], a46, a47, v553.i64[0], v553.i64[1], v110.i64[0], v110.i64[1], v93.i64[0], v93.i64[1], 0x3830282018100800, 0x7870686058504840, v555.i64[0], v555.i64[1]);
}

uint64_t sub_100188D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  v26 = ((2 * (&a17 & 0x228E1930) - &a17 - 579737909) ^ 0x851835A9) * v22;
  a19 = a13;
  a20 = &a11;
  a18 = v26 + 1164957162;
  a21 = -654855621 - v26;
  a22 = v26 + v23 + 1674577759;
  v27 = (*(v24 + 8 * (v23 + 8253)))(&a17);
  return (*(v24 + 8 * (((a17 != v25) * ((v23 ^ 0x288) + (v23 ^ 0x8AB) - 5481)) ^ v23)))(v27);
}

uint64_t sub_100188EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t *a15, unsigned int a16, unsigned int a17)
{
  v21 = (&a12 ^ 0x5869D362) * v18;
  a13 = v21 - 397571126;
  a14 = a10;
  a15 = &a9;
  a16 = -654855621 - v21;
  a17 = v21 + v20 + 1674575845;
  v22 = (*(v17 + 8 * (v20 + 6339)))(&a12);
  return (*(v17 + 8 * (((a12 == 5 * (v20 ^ 0xEE4) + v19) * ((v20 + 855642265) & 0xCCFFF7FD ^ 0x110)) ^ v20)))(v22);
}

uint64_t sub_100189110()
{
  *v5 = v7;
  v11 = (v0 + v1 + 2622) ^ (((-19107852 - (&v9 | 0xFEDC6FF4) + (&v9 | 0x123900B)) ^ 0x594A4369) * v3);
  v10 = v8;
  (*(v2 + 8 * (v0 + v1 + 3888)))(&v9);
  v10 = v6;
  v11 = ((v1 ^ 0x4D903FDA) + 2622) ^ ((((&v9 | 0xAB18D7D9) - (&v9 & 0xAB18D7D9)) ^ 0xF37104BB) * v3);
  (*(v2 + 8 * ((v1 ^ 0x4D903FDA) + 3888)))(&v9);
  return 0;
}

uint64_t sub_100189234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, unsigned int a17, unsigned int a18, uint64_t a19, uint64_t a20)
{
  v28 = v20 + 1921295194;
  v29 = 1875091903 * (((&a16 | 0x16228E59) - &a16 + (&a16 & 0xE9DD71A0)) ^ 0x20570DDA);
  a17 = ((2 * v26) & 0x60BF7DFE) + (v26 ^ 0xB05FBEFF) + ((v28 - 3120) ^ 0x6FBCF140) + v29;
  a18 = v28 + 2833 + v29;
  a19 = a14;
  (*(v27 + 8 * (v28 + 4754)))(&a16);
  v30 = 1875091903 * (((&a16 | 0x8953275D) - (&a16 & 0x8953275D)) ^ 0xBF26A4DE);
  a19 = a14;
  a17 = (v25 ^ 0x3E5EF6FE) + ((2 * v25) & 0x7CBDEDFC) - 507658324 + v30;
  a18 = v28 + 2833 + v30;
  (*(v27 + 8 * (v28 ^ 0x36B6)))(&a16);
  v31 = 1824088897 * (&a16 ^ 0x5869D362);
  a19 = v23;
  a20 = a14;
  a18 = (v24 ^ 0x4FACEFFB) + ((2 * v24) & 0x9F59DFF6) - v31 - 17302897;
  a16 = v28 - 1134 + v31;
  (*(v27 + 8 * (v28 + 4740)))(&a16);
  a19 = a10;
  a20 = a14;
  a16 = v28 - 1134 + v31;
  a18 = (v22 ^ 0x4FE6EECA) + ((2 * v22) & 0x9FCDDD94) - v31 - 21103680;
  (*(v27 + 8 * (v28 + 4740)))(&a16);
  v32 = 1824088897 * (((&a16 | 0x389E144D) + (~&a16 | 0xC761EBB2)) ^ 0x60F7C72E);
  a20 = a14;
  a19 = a11;
  a16 = v28 - 1134 + v32;
  a18 = (v21 ^ 0xDFACFA8F) + ((2 * v21) & 0xBF59F51E) - v32 + 1861742587;
  v33 = (*(v27 + 8 * (v28 + 4740)))(&a16);
  return (*(v27 + 8 * (v28 ^ (4 * (a17 == 16257999)))))(v33);
}

uint64_t sub_10018951C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(STACK[0x718] + 24);
  STACK[0x7A8] = v5;
  return (*(a4 + 8 * (((((v4 - 51) ^ (v5 == 0)) & 1) * (v4 - 3216)) ^ v4)))();
}

uint64_t sub_100189568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = ((&a14 - 292328846 - 2 * (&a14 & 0xEE936A72)) ^ 0xB6FAB910) * v21;
  a15 = v23 + 1858076724;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674577347;
  a16 = a11;
  a17 = &a12;
  v24 = (*(v19 + 8 * (v22 ^ 0x236F)))(&a14);
  return (*(v19 + 8 * (((a14 == (((v22 - 1463) | 0x40F) ^ (v20 + 801))) * ((v22 + 2838) ^ 0xC9E)) ^ v22)))(v24);
}

uint64_t sub_1001896D8(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unint64_t a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v84 = v72 - 75;
  v85 = (v84 + a14) ^ a15;
  v86.i64[0] = v71 + v70 - 15;
  v86.i64[1] = v71 + v70 - 16;
  v87.i64[0] = v71 + v70 - 13;
  v87.i64[1] = v71 + v70 - 14;
  v88.i64[0] = v71 + v70 - 7;
  v88.i64[1] = v71 + v70 - 8;
  v89.i64[0] = v71 + v70 - 5;
  v89.i64[1] = v71 + v70 - 6;
  v90.i64[0] = v71 + v70 - 3;
  v90.i64[1] = v71 + v70 - 4;
  v91.i64[0] = v70 + v85 + v71;
  v91.i64[1] = v71 + v70 - 2;
  v92 = vandq_s8(v91, a1);
  v93 = vandq_s8(v90, a1);
  v94 = vandq_s8(v89, a1);
  v95 = vandq_s8(v88, a1);
  v96 = vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL);
  v97 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v98 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v99 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v100 = vaddq_s64(v97, a3);
  v101 = vaddq_s64(v96, a3);
  v102 = veorq_s8(v101, a4);
  v103 = veorq_s8(v100, a4);
  v104 = veorq_s8(v100, a5);
  v105 = veorq_s8(v101, a5);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v105);
  v107 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v106, a6), vorrq_s8(v106, a7)), a7), a8);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v107, a6), vorrq_s8(v107, a7)), a7), a8);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v111 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v74);
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v111), v74);
  v114 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v115 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v116 = veorq_s8(v112, v114);
  v117 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v116);
  v119 = vaddq_s64(v117, v115);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v118, v75), vorrq_s8(v118, v76)), v76), v77);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, v75), vorrq_s8(v119, v76)), v76), v77);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v123 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v124 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v78);
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v123), v78);
  v126 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v127 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v128 = veorq_s8(v124, v126);
  v129 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v128);
  v131 = veorq_s8(vaddq_s64(v129, v127), v79);
  v132 = veorq_s8(v130, v79);
  v133 = vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL);
  v134 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v135 = veorq_s8(v131, v133);
  v136 = vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL);
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v135);
  v138 = veorq_s8(vaddq_s64(v136, v134), v80);
  v139 = veorq_s8(v137, v80);
  v140 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v134.i64[0] = v71 + v70 - 11;
  v134.i64[1] = v71 + v70 - 12;
  v141 = vaddq_s64(v98, a3);
  v235.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v140), v81), vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), a2)));
  v235.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL))), v81), vnegq_s64(vandq_s8(vshlq_n_s64(v89, 3uLL), a2)));
  v142 = veorq_s8(v141, a4);
  v143 = veorq_s8(v141, a5);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143);
  v145 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v144, a6), vorrq_s8(v144, a7)), a7), a8);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v147 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146), v74);
  v148 = veorq_s8(v147, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v149, v75), vorrq_s8(v149, v76)), v76), v77);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), v78);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153), v79);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), v80);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v156.i64[0] = v71 + v70 - 9;
  v156.i64[1] = v71 + v70 - 10;
  v159 = vaddq_s64(v158, v157);
  v160 = vandq_s8(v156, a1);
  v161 = vaddq_s64(v99, a3);
  v235.val[1] = vshlq_u64(veorq_s8(v159, v81), vnegq_s64(vandq_s8(vshlq_n_s64(v90, 3uLL), a2)));
  v162 = veorq_s8(v161, a4);
  v163 = veorq_s8(v161, a5);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v164, a6), vorrq_s8(v164, a7)), a7), a8);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v74);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168);
  v170 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169, v75), vorrq_s8(v169, v76)), v76), v77);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v78);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), v79);
  v175 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), v80);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v178 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v179 = vandq_s8(v134, a1);
  v180 = vaddq_s64(v178, v177);
  v181 = vandq_s8(v87, a1);
  v235.val[0] = vshlq_u64(veorq_s8(v180, v81), vnegq_s64(vandq_s8(vshlq_n_s64(v91, 3uLL), a2)));
  v182 = vandq_s8(v86, a1);
  v183 = vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL);
  v184 = vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL);
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), a3);
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), a3);
  v182.i64[0] = vqtbl4q_s8(v235, v83).u64[0];
  v235.val[0] = veorq_s8(v186, a4);
  v235.val[1] = veorq_s8(v185, a4);
  v187 = veorq_s8(v185, a5);
  v188 = veorq_s8(v186, a5);
  v235.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[0], 0x38uLL), v235.val[0], 8uLL), v188);
  v235.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[1], 0x38uLL), v235.val[1], 8uLL), v187);
  v235.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v235.val[0], a6), vorrq_s8(v235.val[0], a7)), a7), a8);
  v235.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v235.val[1], a6), vorrq_s8(v235.val[1], a7)), a7), a8);
  v189 = veorq_s8(v235.val[1], vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v190 = veorq_s8(v235.val[0], vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v235.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[1], 0x38uLL), v235.val[1], 8uLL), v189), v74);
  v235.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[0], 0x38uLL), v235.val[0], 8uLL), v190), v74);
  v235.val[2] = vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL);
  v191 = veorq_s8(v235.val[0], vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v192 = veorq_s8(v235.val[1], v235.val[2]);
  v235.val[2] = vsraq_n_u64(vshlq_n_s64(v235.val[0], 0x38uLL), v235.val[0], 8uLL);
  v235.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[1], 0x38uLL), v235.val[1], 8uLL), v192);
  v235.val[1] = vaddq_s64(v235.val[2], v191);
  v235.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v235.val[0], v75), vorrq_s8(v235.val[0], v76)), v76), v77);
  v235.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v235.val[1], v75), vorrq_s8(v235.val[1], v76)), v76), v77);
  v193 = veorq_s8(v235.val[1], vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v194 = veorq_s8(v235.val[0], vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v235.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[1], 0x38uLL), v235.val[1], 8uLL), v193), v78);
  v235.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[0], 0x38uLL), v235.val[0], 8uLL), v194), v78);
  v235.val[2] = vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL);
  v195 = veorq_s8(v235.val[0], vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL));
  v196 = veorq_s8(v235.val[1], v235.val[2]);
  v235.val[2] = vsraq_n_u64(vshlq_n_s64(v235.val[0], 0x38uLL), v235.val[0], 8uLL);
  v235.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[1], 0x38uLL), v235.val[1], 8uLL), v196);
  v235.val[1] = veorq_s8(vaddq_s64(v235.val[2], v195), v79);
  v235.val[0] = veorq_s8(v235.val[0], v79);
  v235.val[2] = vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL);
  v197 = veorq_s8(v235.val[0], vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL));
  v198 = veorq_s8(v235.val[1], v235.val[2]);
  v235.val[2] = vsraq_n_u64(vshlq_n_s64(v235.val[0], 0x38uLL), v235.val[0], 8uLL);
  v235.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[1], 0x38uLL), v235.val[1], 8uLL), v198);
  v235.val[1] = veorq_s8(vaddq_s64(v235.val[2], v197), v80);
  v235.val[0] = veorq_s8(v235.val[0], v80);
  v199 = vaddq_s64(v183, a3);
  v235.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[1], 0x38uLL), v235.val[1], 8uLL), veorq_s8(v235.val[1], vsraq_n_u64(vshlq_n_s64(v197, 3uLL), v197, 0x3DuLL))), v81), vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), a2)));
  v235.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235.val[0], 0x38uLL), v235.val[0], 8uLL), veorq_s8(v235.val[0], vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL))), v81), vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), a2)));
  v200 = veorq_s8(v199, a4);
  v201 = veorq_s8(v199, a5);
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201);
  v203 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v202, a6), vorrq_s8(v202, a7)), a7), a8);
  v204 = veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v205 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v204), v74);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v204, 3uLL), v204, 0x3DuLL));
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206);
  v208 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v207, v75), vorrq_s8(v207, v76)), v76), v77);
  v209 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v210 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v209), v78);
  v211 = veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL));
  v212 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), v211), v79);
  v213 = veorq_s8(v212, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL));
  v214 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL), v213), v80);
  v215 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL)));
  v216 = vaddq_s64(v184, a3);
  v235.val[1] = vshlq_u64(veorq_s8(v215, v81), vnegq_s64(vandq_s8(vshlq_n_s64(v134, 3uLL), a2)));
  v217 = veorq_s8(v216, a4);
  v218 = veorq_s8(v216, a5);
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218);
  v220 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v219, a6), vorrq_s8(v219, a7)), a7), a8);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v222 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221), v74);
  v223 = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL), v223);
  v225 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v224, v75), vorrq_s8(v224, v76)), v76), v77);
  v226 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v223, 3uLL), v223, 0x3DuLL));
  v227 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v226), v78);
  v228 = veorq_s8(v227, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL));
  v229 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL), v228), v79);
  v230 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL));
  v231 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230), v80);
  v235.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL))), v81), vnegq_s64(vandq_s8(vshlq_n_s64(v156, 3uLL), a2)));
  v182.i64[1] = vqtbl4q_s8(v235, v83).u64[0];
  v232 = vrev64q_s8(*(v70 + v85 + v71 - 15));
  v233 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v232, v232, 8uLL), v82), v182));
  *(v73 - 15 + v85 + v71) = vextq_s8(v233, v233, 8uLL);
  return (*(a70 + 8 * (((v71 != 16) * a16) ^ v84)))();
}

uint64_t sub_10018A0B0@<X0>(uint64_t a1@<X8>)
{
  LODWORD(STACK[0xB04]) = v3;
  STACK[0xB08] = v2;
  return (*(v4 + 8 * (((((v1 + 1) ^ (a1 == 0)) & 1) * ((v1 + 2520) ^ 0xE79)) ^ v1)))();
}

uint64_t sub_10018A0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * (((v7 != 0) * (v3 + v5 + 60)) ^ (v2 + v5 + 2248))))();
}

void sub_10018A124(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x100175C7CLL);
}

uint64_t sub_10018A13C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x546)))(32, 0x100004077774924);
  STACK[0x7D8] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (v0 ^ 0x208 ^ (v0 + 2144423450) & 0x802EB3F1)) ^ v0)))();
}

uint64_t sub_10018A1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, int *a18)
{
  a12 = 0;
  a16 = (v18 - 3416) ^ (33731311 * (((&a15 | 0x985353AE) - (&a15 & 0x985353AE)) ^ 0xA1A5998D));
  a17 = a11;
  a18 = &a12;
  (*(v19 + 8 * (v18 + 2933)))(&a15);
  a17 = a11;
  a18 = &a13;
  a16 = (v18 - 3416) ^ (33731311 * (((&a15 | 0x6832767D) + (~&a15 | 0x97CD8982)) ^ 0x51C4BC5F));
  (*(v19 + 8 * (v18 + 2933)))(&a15);
  a17 = a11;
  LODWORD(a18) = v18 - 2008441969 * (&a15 ^ 0x4899540E) - 983;
  v21 = (*(v19 + 8 * (v18 ^ 0x3C6F)))(&a15);
  return (*(v19 + 8 * (((a15 != v20) * ((69 * (v18 ^ 0x19EA)) ^ 0xBEE)) ^ v18)))(v21);
}

uint64_t sub_10018A320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x976]) = v63;
  LODWORD(STACK[0x360]) = v63;
  return sub_10013ABD0(v64 - 5325, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

void sub_10018A378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51)
{
  v53 = ((v51 + 569373155) & 0xDE0FFEB6) - 873;
  LODWORD(STACK[0xA64]) = a51;
  STACK[0x640] += v53 ^ 0xFFFFFFFFFFFFFCDBLL;
  LODWORD(STACK[0x648]) = a51;
  STACK[0x510] = *(v52 + 8 * v53);
  JUMPOUT(0x10018A3D4);
}

uint64_t sub_10018A41C(uint64_t a1, uint64_t a2, int a3, int8x16_t a4)
{
  v8 = v4 + v6;
  v9 = veorq_s8(*(a1 + v8 + 16), a4);
  v10 = (a2 + v8);
  *v10 = veorq_s8(*(a1 + v8), a4);
  v10[1] = v9;
  return (*(v7 + 8 * (((2 * (v5 != v8)) | ((v5 != v8) << 6)) ^ a3)))();
}

uint64_t sub_10018A484(int8x16_t a1)
{
  v7 = (v2 - 32);
  v8 = (v3 - 32);
  v9 = veorq_s8(*v8, a1);
  v7[-1] = veorq_s8(v8[-1], a1);
  *v7 = v9;
  return (*(v6 + 8 * (((v1 == 32) * v5) ^ v4)))();
}

uint64_t sub_10018A494@<X0>(int a1@<W8>)
{
  (*(v1 + 8 * (a1 + 7628)))();
  *(v2 + 24) = 0;
  return sub_1000FDFB8();
}

void sub_10018A4B8()
{
  STACK[0x4F0] = 0;
  STACK[0x410] = 0;
  STACK[0x908] = *(v1 + 8 * v0);
  JUMPOUT(0x100166C68);
}

uint64_t sub_10018A570()
{
  *(v3 - 224) = (v0 - 2140802201) ^ (914963389 * ((v3 - 232) ^ 0x2CFCB17B));
  v4 = (*(v2 + 8 * (v0 + 3547)))(v3 - 232);
  *v1 = *(v3 - 232) ^ 0xAC;
  return (*(v2 + 8 * ((v0 + 1071) ^ 0x7D3)))(v4);
}

uint64_t sub_10018A604(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = a4 + 43629116;
  v10 = v6 ^ (v7 + 528);
  v11 = v4 + v6 + 897;
  v12 = v8 < v9;
  if (v9 < v8)
  {
    v12 = 1;
  }

  return (*(v5 + 8 * ((v12 * (v10 + 9905)) ^ v11)))(0xE9A6D70123396331, a2, 0);
}

uint64_t sub_10018A764(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *v1 = a1;
  return (*(v3 + 8 * (((STACK[0x638] == 0) * ((v2 + 1617627665) & 0x9F94FFDF ^ 0x17EA)) | v2)))();
}

uint64_t sub_10018A940@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 + 6089)))(a1);
  *(STACK[0x4D8] + 24) = 0;
  return sub_10018A964();
}

void sub_10018A964()
{
  (*(v1 + 8 * (v0 ^ 0x2CB1)))();
  STACK[0x4D8] = 0;
  JUMPOUT(0x10018A988);
}

uint64_t sub_10018FFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a4 + a2;
  v10 = ((970 * (v5 ^ 0xFF1u)) ^ 0xFFFFFFFFFFFFF0D7) + a4;
  *(v6 + v10) = *(v7 + v10) ^ *(a1 + v10) ^ *(v9 + 3) ^ *(v4 + v10) ^ (47 * v10) ^ 0x3C;
  return (*(v8 + 8 * ((8102 * (v10 == 0)) ^ v5)))();
}

uint64_t sub_100190070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, unsigned int a16, uint64_t a17, uint64_t a18)
{
  v24 = 1875091903 * ((1389182960 - (&a14 | 0x52CD3FF0) + (&a14 | 0xAD32C00F)) ^ 0x9B47438C);
  a17 = a11;
  a15 = (v20 ^ 0x3C3FB7BB) + ((v20 << (v23 + 23)) & 0x787F6F76) - 472056081 + v24;
  a16 = v24 + v23 + 2114;
  (*(v22 + 8 * ((v23 - 3490) ^ 0x2DE5)))(&a14);
  v25 = 1824088897 * ((2 * (&a14 & 0x1C59B730) - &a14 - 475641656) ^ 0xBBCF9BAA);
  a17 = v18;
  a18 = a11;
  a14 = v25 + v23 - 3490 + 1637;
  a16 = (v19 ^ 0xCFADFF8B) + ((2 * v19) & 0x9F5BFF16) - v25 + 2130111231;
  v26 = (*(v22 + 8 * ((v23 - 3490) ^ 0x2DD7)))(&a14);
  return (*(v22 + 8 * ((7204 * (a15 == v21)) ^ (v23 - 3490))))(v26);
}

uint64_t sub_1001902D8@<X0>(int a1@<W0>, int a2@<W1>, unsigned int a3@<W2>, int a4@<W3>, unsigned int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, int a9@<W8>)
{
  v21 = *(STACK[0x398] + v9);
  v22 = (a8 - 257 * (((((v9 + ((2 * v21) & 0xFFFFFFEF) + (v21 ^ 0x37BFBDF7) + a7) * v17 - v20 + a8) * a5) >> 32) >> 8) - v16 + a6) ^ a4;
  v23 = v22 ^ a1 ^ v12;
  v24 = v23 + v16 - 2 * v23;
  HIDWORD(v25) = v23 + a2 + (((v22 ^ ~a1) + v15) & v15) + (((v22 ^ a1) + a2) & v15);
  LODWORD(v25) = v23;
  v26 = v22 ^ v12;
  v27 = a4 - v23;
  v28 = (v27 - v24 + (v25 >> 29)) ^ v26;
  v29 = (v28 + v10) ^ v24;
  v30 = (v28 + v10) ^ v27;
  v31 = v28 + v10 + v26;
  v32 = (((__PAIR64__(v28, v28 + v10) >> 28) - v30 - v29 + (((v28 + v10) ^ (256419 - v28)) & 0x28800) + v18) ^ v31) + v11;
  v33 = ((v32 ^ v30) - (v32 + v31) + (v32 ^ v29 ^ __ROR4__(v32, 28)) + a9) ^ (v32 + v31);
  v34 = v9 + 1 + v14;
  v35 = (a3 < v14) ^ (v34 < v14);
  v36 = v34 < a3;
  if (v35)
  {
    v36 = a3 < v14;
  }

  return (*(STACK[0x598] + 8 * ((v36 * v19) ^ (v13 + 3042))))(v33);
}