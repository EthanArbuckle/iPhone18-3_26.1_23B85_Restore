uint64_t sub_10015A77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v4;
  STACK[0x910] = 0;
  STACK[0x430] = 0;
  return (*(v5 + 8 * ((((((v3 - 6633) | 0x340) + 8391) ^ 0x2414) * (v6 == 0)) ^ v3)))(a1, a2, a3, 16215976);
}

void sub_10015A7D0()
{
  v0 = *(&off_100755B60 + ((-85 * (dword_10077E250 ^ 0xDF ^ dword_10077E220)) ^ byte_100683C50[byte_10069D200[(-85 * (dword_10077E250 ^ 0xDF ^ dword_10077E220))] ^ 0xD9]) + 122);
  v1 = *(v0 - 4);
  v2 = *(&off_100755B60 + (byte_100694EA0[byte_10068DFC0[(-85 * (v1 ^ dword_10077E220 ^ 0xDF))] ^ 1] ^ (-85 * (v1 ^ dword_10077E220 ^ 0xDF))) + 14);
  v3 = 2054362027 * (&v5[*v2 - v1] ^ 0xB4207763EF64BDFLL);
  *(v0 - 4) = v3;
  *v2 = v3;
  v6[0] = 476323082 - 1710126949 * ((v6 - 778668774 - 2 * (v6 & 0xD196751A)) ^ 0xE38D2E8A);
  LOBYTE(v2) = -85 * ((*v2 - *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E250) ^ 0xDF)) ^ byte_10068E1C0[byte_100683B50[(-85 * ((dword_10077E220 + dword_10077E250) ^ 0xDF))] ^ 0xAD]) + 277) - 8;
  (*&v4[8 * (v2 ^ byte_100694EA0[byte_10068DFC0[v2] ^ 0x6D]) + 76952])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10015AEA0()
{
  STACK[0xA28] = v1;
  v3 = STACK[0x608];
  STACK[0xA30] = STACK[0x608];
  return (*(v2 + 8 * (((v1 - v3 > 9) * ((((v0 - 2538) | 0x182) + 14291) ^ (v0 - 1368412803) & 0x51905FFB)) ^ v0)))();
}

uint64_t sub_10015AF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
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

void sub_10015B034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, int a56, int a57, int a58, int a59, int a60, int a61, int a62, int a63)
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
  JUMPOUT(0x100058370);
}

void sub_10015B0AC()
{
  v0 = *(&off_100755B60 + ((-85 * ((dword_10077E220 - dword_10077DEE8) ^ 0xDF)) ^ byte_100694EA0[byte_10068DFC0[(-85 * ((dword_10077E220 - dword_10077DEE8) ^ 0xDF))] ^ 1]) - 135);
  v1 = -85 * ((dword_10077E220 + *v0) ^ 0xDF);
  v2 = *(&off_100755B60 + (byte_100683C5C[(byte_10069D20C[v1 - 12] ^ 0xE9) - 12] ^ v1) + 57);
  v3 = &v5[*v2 - *v0];
  *v0 = 2054362027 * v3 - 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * (v6 ^ 0x321B5B90);
  LOBYTE(v2) = -85 * ((*v2 + *v0) ^ 0xDF);
  v4 = *(&off_100755B60 + ((-85 * ((dword_10077E220 - dword_10077DEE8) ^ 0xDF)) ^ byte_100694EA0[byte_10068DFC0[(-85 * ((dword_10077E220 - dword_10077DEE8) ^ 0xDF))] ^ 0x6D]) + 262) - 8;
  (*&v4[8 * (byte_10068DECC[(byte_100683950[v2] ^ 0xEE) - 12] ^ v2) + 76160])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10015B380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = STACK[0x32C];
  v71 = (v69 ^ 0xBC59953u) + a69;
  STACK[0x8D8] = v71;
  return (*(STACK[0x330] + 8 * ((v70 - 509) ^ (2010 * (v71 > a23)))))();
}

uint64_t sub_10015B538(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return sub_10015B708(a1, a2, a3);
}

uint64_t sub_10015B660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
    return sub_10015B708(a1, a2, a3);
  }
}

uint64_t sub_10015B750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14)
{
  v17 = (v14 + 130604) | 0x3BA1110A;
  a14 = (v17 - 1000537268) ^ (((&a12 + 1724424264 - 2 * (&a12 & 0x66C8A048)) ^ 0x3EA1732A) * v16);
  a13 = a10;
  v18 = (*(v15 + 8 * (v17 ^ 0x3BA338C2)))(&a12);
  return sub_10016FB40(v18);
}

uint64_t sub_10015B790()
{
  v2 = STACK[0x6D0];
  STACK[0x478] = *(v1 + 8 * v0);
  return sub_1000B0D70(v2);
}

uint64_t sub_10015B824@<X0>(uint64_t a1@<X8>)
{
  v8 = -v1 - v6;
  v10 = (v7 - v6) >= 0x10 && v8 + v3 + 16 >= ((51 * ((v5 - 389620070) & 0x173917E3 ^ 0x17BC)) ^ 0x195DuLL) && (v8 + v4 + 18) >= 0x10;
  v11 = v8 + v2 + 17;
  v13 = !v10 || v11 < 0x10;
  return (*(a1 + 8 * ((225 * v13) ^ v5)))();
}

uint64_t sub_10015B8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
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
      return sub_100154334();
    }

    v66 = STACK[0x4B0];
    v64 = a63;
  }

  v68 = *v66;
  STACK[0x608] = 0;
  STACK[0x700] = 0;
  return (*(v65 + 8 * ((11 * ((v64 ^ 0x93 ^ (v68 == 0)) & 1)) ^ (v64 + 1869))))();
}

uint64_t sub_10015B958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x908] = v4;
  v6 = STACK[0x410];
  STACK[0x910] = STACK[0x410];
  return (*(a4 + 8 * (((v4 - v6 > 9) * (((23 * (v5 ^ 0x1486) - 5184) | 0x200) + 237)) ^ v5 ^ 0x35ED)))();
}

uint64_t sub_10015B9B8(uint64_t a1)
{
  v4 = v1 & 0x82547DAB;
  v5 = (*(v3 + 8 * (v1 & 0x82547DAB ^ 0x2908)))(a1, v2) == 0;
  return (*(v3 + 8 * ((v5 * ((v4 - 2071) ^ 0x4F7)) ^ v4)))();
}

uint64_t sub_10015BBE8@<X0>(int a1@<W8>)
{
  STACK[0x928] = v1;
  v3 = STACK[0x740];
  STACK[0x930] = STACK[0x740];
  return (*(v2 + 8 * (((v1 - v3 > 9) * (((a1 + 5456906) & 0xFFACB36F ^ 0xFFFFECBD) + ((a1 + 2001) | 0x430))) ^ a1)))();
}

uint64_t sub_10015BC90@<X0>(unint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v8 = (v4 - 1031) | 0x1A8;
  *(v2 + v3) = 0;
  v10 = v3 < a1 && v3 + v5 < a2;
  return (*(v7 + 8 * ((v10 * v6) ^ v8)))();
}

uint64_t sub_10015BCDC@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 4);
  *(a1 + 20) = v4;
  return (*(v3 + 8 * ((52 * (v4 == ((v2 - 3727) | 0x1400) - 5250)) ^ v2)))();
}

uint64_t sub_10015BD20()
{
  v2 = STACK[0x43C];
  STACK[0x770] += (v0 - 3555) + ((v0 - 8235) ^ 0x239Eu) - 14040;
  return (*(v1 + 8 * ((7563 * (v2 == 16257999)) ^ (v0 - 8235))))();
}

uint64_t sub_10015BD7C@<X0>(uint64_t a1@<X0>, int a2@<W4>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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
  v188.i64[0] = vqtbl4q_s8(v251, xmmword_10069D330).u64[0];
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
  v188.i64[1] = vqtbl4q_s8(v251, xmmword_10069D330).u64[0];
  v249 = vrev64q_s8(v188);
  *(v142.i64[1] - 6) = veorq_s8(vextq_s8(v249, v249, 8uLL), *(a1 + (a2 ^ 0x1109u) + 2925 + v65 - 5180));
  return (*(a65 + 8 * ((7754 * (-(a1 & 0xFFFFFFF0) == -16)) ^ a2 ^ 0x1109)))();
}

uint64_t sub_10015C794()
{
  v1 = *(STACK[0x490] + 24);
  STACK[0x588] = v1;
  return (*(STACK[0x330] + 8 * ((((v0 ^ 0xAF ^ (v1 == 0)) & 1) * ((v0 - 3044) ^ 0x15CB)) ^ v0)))();
}

void sub_10015C7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t sub_10015C870@<X0>(uint64_t a1@<X3>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, int a5@<W8>)
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

uint64_t sub_10015CA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

uint64_t sub_10015D03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 42;
  v67 = (*(v65 + 8 * (v64 ^ 0x30F6)))(42, 0x100004077774924);
  *(a1 + 24) = v67;
  return (*(a64 + 8 * (((v67 == 0) * (((v64 + 1098791433) & 0xBE81BBF6) - 2862)) ^ v64)))();
}

uint64_t sub_10015D0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x538] = 0;
  v65 = STACK[0x6B0];
  STACK[0x518] = *(a64 + 8 * (v64 - 2390));
  return sub_10018229C(v65);
}

uint64_t sub_10015D104()
{
  v4 = *(&off_100755B60 + v0 - 6156);
  STACK[0x810] = v1;
  v5 = (*(v3 + 8 * (v0 ^ 0x3CCE)))(*v4, &STACK[0x738], v2, 1) == (v0 ^ 0x1906);
  return (*(STACK[0x330] + 8 * ((v5 * (((2 * v0) ^ 0x2F50) + 8258)) ^ v0)))();
}

uint64_t sub_10015D238@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v2 = a2 - 494;
  (*(a1 + 8 * (a2 + 5190)))();
  v3 = STACK[0x3E8];
  STACK[0x710] = 0;
  return (*(v3 + 8 * (v2 | (4 * ((((v2 - 44) ^ (STACK[0x598] == 0)) & 1) == 0)))))();
}

uint64_t sub_10015D39C@<X0>(int a1@<W8>)
{
  v3 = (a1 + 1297) | 3u;
  LODWORD(STACK[0x380]) = a1 - 1595;
  v4 = *(v2 + 8 * ((4017 * ((((a1 - 1595) ^ 0xC74) & v1) == (v3 ^ 0x17CB))) ^ a1));
  STACK[0x3B0] = v3;
  return v4();
}

uint64_t sub_10015D3F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x260] = 0;
  v67 = *(a66 + 8 * (((((LODWORD(STACK[0x270]) - 1279007718) & 0x4C3C1FF0) - 6142) * (v66 > 0xF)) ^ LODWORD(STACK[0x270])));
  return v67(a1, a2, v67, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51);
}

uint64_t sub_10015D460@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (v2 - 2466)) ^ v2)))();
}

void sub_10015D4E8(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x1001010C4);
}

uint64_t sub_10015D4FC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, int a9)
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

uint64_t sub_10015D54C@<X0>(int a1@<W8>)
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

uint64_t sub_10015E4D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, int a25)
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

uint64_t sub_10015E5AC()
{
  *(v1 - 224) = (v0 - 2140796178) ^ (914963389 * ((v1 + 278203576 - 2 * ((v1 - 232) & 0x10950DA0)) ^ 0x3C69BCDB));
  (*(v2 + 8 * (v0 + 9570)))(v1 - 232);
  v3 = *(STACK[0x720] + 8);
  STACK[0x760] = *(STACK[0x330] + 8 * v0);
  return sub_1001604E8(v3);
}

uint64_t sub_10015E660@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X4>, char a5@<W5>, _BYTE *a6@<X6>, char a7@<W8>)
{
  v8 = STACK[0x3F8] - 8742;
  *a4 = a5;
  *a6 = v7;
  return sub_1001B7CC4(a1, a2, a3, v8, a7);
}

uint64_t sub_10015E684@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 104) = veorq_s8(*(v3 + 88), xmmword_10069D320);
  v5 = *(v3 + 4);
  *(a3 + 20) = v5;
  return (*(v4 + 8 * (((v5 == ((732 * ((a2 - 3313) ^ 0x1437)) ^ 0x2250)) * ((a2 - 3313) ^ 0x2096)) ^ (a2 - 3313))))(a1, 16215976);
}

void sub_10015E78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

void sub_10015E808(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  LODWORD(STACK[0x534]) = v1;
  LODWORD(STACK[0x61C]) = 197499219;
  LODWORD(STACK[0x7E0]) = 197499219;
  LODWORD(STACK[0x844]) = v2;
  JUMPOUT(0x1000844F0);
}

uint64_t sub_10015E884()
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
    return sub_1001C6A68();
  }

  STACK[0x440] = STACK[0x718] + STACK[0x220];
  return sub_10018923C((v2 - 994) | 8u);
}

uint64_t sub_10015E95C@<X0>(int a1@<W8>)
{
  v3 = a1 - 1728;
  v4 = *(v1 + 8);
  STACK[0x698] = *(v2 + 8 * v3);
  return sub_10018DB48(v4);
}

uint64_t sub_10015E9C8@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 4427 + (v2 ^ 0x1BD9u);
  *(a1 + v5) = *(v4 + v5) - ((2 * *(v4 + v5)) & 0x78) + 60;
  return (*(v3 + 8 * ((6011 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_10015EA20@<X0>(uint64_t a1@<X2>, int a2@<W5>, int a3@<W8>)
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
  return sub_100167484(0xCC6D33EEA00FE42, 0x84D53DF2213B4FA4, a1, 0xF99C96608AFF80DELL, 0x3D956106EF62582ELL, a2);
}

uint64_t sub_10015F324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, uint64_t a18, uint64_t a19)
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

uint64_t sub_10015F6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(v63 + 8 * (((((v65 == v66) ^ (v64 - 79)) & 1) * (v64 - 2881)) ^ v64));
  STACK[0x260] = v65;
  return v67(a63, 0xAB3042D228875C41);
}

void sub_10015F8A0()
{
  v0 = *(&off_100755B60 + ((-85 * ((dword_10077E220 - dword_10077E270) ^ 0xDF)) ^ byte_100694EA0[byte_10068DFC0[(-85 * ((dword_10077E220 - dword_10077E270) ^ 0xDF))] ^ 0x67]) + 273);
  v1 = *(&off_100755B60 + (byte_100694EA0[byte_10068DFC0[(-85 * (*v0 ^ dword_10077E220 ^ 0xDF))] ^ 0x67] ^ (-85 * (*v0 ^ dword_10077E220 ^ 0xDF))) + 143);
  v2 = *v0 - &v4 + *v1;
  *v0 = 2054362027 * v2 + 0xB4207763EF64BDFLL;
  *v1 = 2054362027 * (v2 ^ 0xB4207763EF64BDFLL);
  v5[0] = 476323082 - 1710126949 * ((-811960106 - (v5 | 0xCF9A78D6) + (v5 | 0x30658729)) ^ 0x27EDCB9);
  LOBYTE(v1) = -85 * ((*v1 + *v0) ^ 0xDF);
  v3 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E270) ^ 0xDF)) ^ byte_100683C50[byte_10069D200[(-85 * ((dword_10077E220 + dword_10077E270) ^ 0xDF))] ^ 0x71]) + 120) - 8;
  (*&v3[8 * (v1 ^ byte_100694EA0[byte_10068DFC0[v1] ^ 0x6D]) + 76952])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10015FB00()
{
  STACK[0x618] = 0;
  v2 = STACK[0x660];
  v3 = STACK[0x9B8];
  STACK[0x3D8] = *(v1 + 8 * (v0 - 5446));
  LODWORD(STACK[0xA24]) = v3;
  STACK[0xA28] = &STACK[0x618];
  return (*(v1 + 8 * (((v2 != 0) * ((((v0 - 3574) | 0x1406) - 1552) ^ 0x15FB)) ^ (v0 + 3787))))();
}

uint64_t sub_10015FBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a16 = 1317436891 * ((&a14 & 0x1DF45113 | ~(&a14 | 0x1DF45113)) ^ 0x5208369A) + 8154;
  a14 = &a12;
  v18 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((1621 * (a15 == (v17 ^ 0xC6A12FC3) + 978775631)) ^ v17)))(v18);
}

uint64_t sub_10015FE54@<X0>(int a1@<W8>)
{
  v2 = a1 + 5732;
  v3 = (a1 - 1449697369) & 0x5668B6ED;
  v4 = (*(v1 + 8 * ((a1 + 5732) ^ 0x64D)))(32, 0x103004054B5FA7DLL);
  v5 = STACK[0x400];
  STACK[0x998] = v4;
  return (*(v5 + 8 * (((v4 == 0) * (v3 - 7215)) ^ v2)))();
}

uint64_t sub_10015FF5C()
{
  v3 = v1 | 0x410;
  STACK[0xA68] = v0;
  v4 = STACK[0x558];
  STACK[0xA70] = STACK[0x558];
  return (*(v2 + 8 * ((13493 * (v0 - v4 > ((((v3 - 2047442700) & 0x7A097FFFu) - 5590) ^ 0x1FCuLL))) ^ v3)))();
}

uint64_t sub_10015FFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, int a11, unsigned int a12)
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

void sub_100160088(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  LODWORD(STACK[0x41C]) = 16257999;
  JUMPOUT(0x1000C2DD0);
}

uint64_t sub_100160110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v11 - 224) = -97 * ((((v11 + 24) | 0x60) - ((v11 + 24) & 0x60)) ^ 0x65) + 33;
  *(v11 - 232) = a9;
  *(v11 - 220) = 956911519 * ((((v11 - 232) | 0x38977A60) - ((v11 - 232) & 0x38977A60)) ^ 0xD2060A65) + 5002 + v9;
  v13 = (*(v12 + 8 * (v9 + 8103)))(v11 - 232);
  return (*(STACK[0x330] + 8 * (((*(v11 - 216) == (((v9 - 998) | 0x48) ^ (v10 - 584))) * (((v9 - 998) ^ 0x1964) - 3329)) ^ v9)))(v13);
}

void sub_10016022C()
{
  LODWORD(STACK[0x47C]) = v0;
  LODWORD(STACK[0x754]) = STACK[0x2F0];
  LODWORD(STACK[0x6C4]) = STACK[0x300];
  LODWORD(STACK[0x3D4]) = v1;
  JUMPOUT(0x10017D2A8);
}

uint64_t sub_100160308@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 - 2113;
  (*(v2 + 8 * (v1 ^ 0x3634)))(a1);
  v4 = STACK[0x330];
  *(STACK[0x748] + 24) = 0;
  v5 = (*(v4 + 8 * (v3 ^ 0x2EEB)))();
  STACK[0x748] = 0;
  return sub_100160358(v5);
}

uint64_t sub_100160370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char *a16, int a17, unsigned int a18)
{
  a18 = 1317436891 * ((&a16 + 1971983268 - 2 * (&a16 & 0x758A13A4)) ^ 0xC5898BD2) + 8154;
  a16 = &a12;
  v19 = (*(v18 + 77096))(&a16);
  return (*(v18 + 8 * ((4478 * (a17 == 16257999)) ^ 0xB39u)))(v19);
}

void sub_10016046C(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
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

uint64_t sub_1001605C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unint64_t a15, uint64_t a16, int a17)
{
  v21 = 956911519 * (((v20 | 0x53F9954282BDF5E5) - v20 + (v20 & 0xAC066ABD7D420A18)) ^ 0x16CFE09E682C85E0);
  a15 = v17 - ((2 * v17) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v21;
  a16 = a12;
  a14 = v21 ^ 0x3FE;
  v22 = (*(v18 + 76792))(&a14);
  return (*(v18 + 8 * ((104 * (a17 == v19)) ^ 0xB2F)))(v22);
}

uint64_t sub_100160A40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X6>, uint64_t a3@<X7>, int a4@<W8>)
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

uint64_t sub_100160DCC()
{
  v2 = (*(v0 + 8 * (v1 ^ 0x314D)))(128, 0x10800400FED9166);
  v3 = STACK[0x330];
  STACK[0x348] = v2;
  return (*(v3 + 8 * (((v2 != 0) * (((v1 - 2623) | 0x10D) - 2511)) ^ v1)))();
}

void sub_100160E60(uint64_t a1)
{
  v1 = *(a1 + 8) - 1824088897 * ((2 * (a1 & 0x4A10821D) - a1 - 1242595870) ^ 0xED86AE80);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100160F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (v4 == 16215947)
  {
    return (*(a4 + 8 * ((1456 * (*(STACK[0x5F8] + 97) == (2 * (v5 + 87) - 55))) ^ (v5 - 4221))))();
  }

  if (v4 != 16257999)
  {
    return sub_100161360(a1, a2, a3, a4);
  }

  v7 = STACK[0x3E4];
  v8 = LODWORD(STACK[0x3E4]) - 976;
  v9 = *(STACK[0x4A8] + 24);
  STACK[0x520] = v9;
  return (*(a4 + 8 * ((32 * (((v9 == 0) ^ (v7 - 20)) & 1)) & 0xBF | ((((v9 == 0) ^ (v7 - 5140)) & 1) << 6) | v8)))();
}

uint64_t sub_100160FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
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
      return sub_100161360(a1, a2, a3, a4);
    }

LABEL_5:
    STACK[0x780] = a5;
    LODWORD(STACK[0x7E0]) = a3;
    JUMPOUT(0x100161200);
  }

  v8 = STACK[0x520];
  STACK[0x780] = a5;
  LODWORD(STACK[0x7E0]) = a3;
  STACK[0x5B8] = v8 + v5;
  v9 = *(STACK[0x5F8] + 20);
  if (v9 == 1)
  {
    JUMPOUT(0x1000CF390);
  }

  if (v9)
  {
    return sub_100161360(a1, a2, a3, a4);
  }

  return (*(a4 + 8 * ((76 * (*(STACK[0x5F8] + 97) == ((LODWORD(STACK[0x3E4]) + 1575982986) & 0xF2 ^ 0xA3))) ^ (LODWORD(STACK[0x3E4]) + 1624))))(a1, a2);
}

uint64_t sub_1001610C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      return sub_100161360(a1, a2, a3, a4);
    }

    v7 = STACK[0x5F8];
    v5 = STACK[0x3E4];
  }

  v8 = *v7;
  STACK[0x718] = 0;
  STACK[0x680] = 0;
  return (*(a4 + 8 * (((v8 != 0) * ((v5 - 2033738854) & 0x7938535A ^ 0x330)) ^ (v5 + 3159))))(a1, a2, a3);
}

uint64_t sub_100161164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v5 = LOWORD(STACK[0x8D0]);
  switch(v5)
  {
    case 17168:
      goto LABEL_5;
    case 33980:
      JUMPOUT(0x100161214);
    case 20706:
LABEL_5:
      STACK[0x410] = a5;
      JUMPOUT(0x100161200);
  }

  return sub_100161360(a1, a2, a3, a4);
}

uint64_t sub_100161198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
{
  v5 = LOWORD(STACK[0x8D2]);
  switch(v5)
  {
    case 17168:
      goto LABEL_5;
    case 33980:
      JUMPOUT(0x100161284);
    case 20706:
LABEL_5:
      STACK[0x3F8] = a5;
      JUMPOUT(0x100161200);
  }

  return sub_100161360(a1, a2, a3, a4);
}

uint64_t sub_1001611CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X8>)
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
      return sub_100161360(a1, a2, a3, a4);
    }

LABEL_5:
    STACK[0x680] = a5;
    LODWORD(STACK[0x61C]) = a3;
    return sub_100161360(a1, a2, a3, a4);
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

uint64_t sub_1001613C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

uint64_t sub_100161954()
{
  v2 = (*(v1 + 8 * (v0 + 2428)))(112, 0x100004098D10E67);
  v3 = STACK[0x400];
  STACK[0x568] = v2;
  return (*(v3 + 8 * (((v2 == 0) * ((v0 + 2042) ^ (v0 - 1957) ^ 0x30B7)) ^ v0)))();
}

uint64_t sub_1001619B0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 - 850459491) & 0x32B0FB5F;
  (*(v2 + 8 * ((v1 - 5195) ^ 0x2094)))(a1);
  *(STACK[0x5A8] + 24) = 0;
  v4 = (*(v2 + 8 * (v3 + 3116)))();
  STACK[0x5A8] = 0;
  return sub_10019B624(v4);
}

uint64_t sub_100161A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, int a19, uint64_t a20, uint64_t a21)
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

uint64_t sub_100161BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

uint64_t sub_100161C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, unsigned int a18, unsigned int a19, uint64_t a20, uint64_t a21)
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

uint64_t sub_100161F0C()
{
  v3 = (*(v2 + 8 * (v0 ^ 0x2233)))(64, v1);
  STACK[0x4B0] = v3;
  return (*(v2 + 8 * (((((v3 == 0) ^ (v0 + 90)) & 1) * ((v0 ^ 0x1F22) - 6313)) | v0)))();
}

uint64_t sub_100161FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
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

uint64_t sub_100162080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, char *a17, int a18, unsigned int a19)
{
  a19 = 1317436891 * ((2 * (&a17 & 0x18321D0) - &a17 + 2122112554) ^ 0xCE7F465C) + 8154;
  a17 = &a16;
  v21 = (*(v19 + 77096))(&a17);
  return (*(v19 + 8 * ((4007 * (a18 == 16257999)) ^ v20)))(v21);
}

uint64_t sub_10016226C()
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

void sub_1001623CC()
{
  STACK[0x848] = 0;
  STACK[0x898] = 0;
  STACK[0x500] = *(v1 + 8 * v0);
  JUMPOUT(0x1001623F8);
}

uint64_t sub_100162410@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8 * ((15217 * (a1 - a4 > (v4 - 4873) - 1350)) ^ v4));
  STACK[0x2A8] = a2;
  return v5();
}

uint64_t sub_1001625F0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, unint64_t a7@<X7>, uint64_t a8@<X8>)
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

uint64_t sub_10016272C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
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

uint64_t sub_10016289C(uint64_t a1)
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

uint64_t sub_1001634B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((31 * ((((v3 - 113) ^ (v5 == 0)) & 1) == 0)) ^ (v3 - 7))))();
}

uint64_t sub_1001634F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = ((v3 + 1765897743) & 0xCBEBBFDF) - 3038 + v2;
  v7 = *(a2 + v6 - 15);
  v8 = *(a2 + v6 - 31);
  v9 = a1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((895 * ((v2 & 0xFFFFFFE0) == 32)) ^ (v4 + v3 + 1292))))();
}

uint64_t sub_1001635B8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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
  *&STACK[0x310] = xmmword_10069D310;
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

uint64_t sub_100164098@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  STACK[0x5C0] = 0;
  v2 = *(STACK[0x4D0] + 8);
  STACK[0x5A8] = 0;
  LODWORD(STACK[0x658]) = 0;
  LODWORD(STACK[0x660]) = 197499219;
  return (*(a1 + 8 * (((v2 == 0) * ((227 * (a2 ^ 0x256D)) ^ ((a2 ^ 0x2348) + 3675))) ^ a2)))();
}

uint64_t sub_1001640FC()
{
  *(v2 - 228) = (v1 - 1451039392) ^ (956911519 * (((v2 - 232) & 0xD89C00D3 | ~((v2 - 232) | 0xD89C00D3)) ^ 0xCDF28F29));
  v3 = (*(v0 + 8 * (v1 ^ 0x39D0)))(v2 - 232);
  return (*(STACK[0x3E8] + 8 * ((15518 * (*(v2 - 232) == (((v1 ^ 0x1C72) + 7214) ^ 0x2015B5A6) + 273 * (v1 ^ 0x1C72))) ^ v1)))(v3);
}

uint64_t sub_1001641B8@<X0>(int a1@<W8>)
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

uint64_t sub_100164360@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = a2 - 1684;
  v4 = (a2 - 160869923) ^ 0xF6696160;
  v5 = (a2 - 160869923) & 0x9969FFF;
  v6 = (*(v2 + 8 * (a2 + 3492)))(a1, 3882589854) == 0;
  return (*(v2 + 8 * ((v6 * (v4 + v5 - 4560)) ^ v3)))();
}

uint64_t sub_1001643D0()
{
  v2 = *(STACK[0x6D0] + 24);
  STACK[0x860] = v2;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 ^ 0x2896) - 2157)) ^ v0)))();
}

uint64_t sub_10016450C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, unint64_t *a63)
{
  STACK[0x268] = v63;
  *a63 = v63;
  return (STACK[0x210])();
}

uint64_t sub_1001645C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, unsigned int a43)
{
  v48 = v46[396] ^ ((*v46 & ((v43 ^ (v45 + 2989)) - 914792287) | v46[623] & 0x80000000) >> 1);
  v46[623] = (v48 + v44 - (a3 & (2 * v48))) ^ *(&STACK[0x528] + (*v46 & 1));
  return (*(v47 + 8 * ((98 * (a43 > 0x26F)) ^ v43)))();
}

void sub_100164808()
{
  v0 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E128) ^ 0xDF)) ^ byte_100683C50[byte_10069D200[(-85 * ((dword_10077E220 + dword_10077E128) ^ 0xDF))] ^ 0x1F]) + 143);
  v1 = *(v0 - 4);
  v2 = *(&off_100755B60 + (byte_100694EA0[byte_10068DFC0[(-85 * ((dword_10077E220 + v1) ^ 0xDF))] ^ 0x67] ^ (-85 * ((dword_10077E220 + v1) ^ 0xDF))) + 143);
  v3 = *v2 - v1 - &v5;
  *(v0 - 4) = 2054362027 * v3 + 0x1FC86B74B1533AF5;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((2 * (v6 & 0x17CBAA20) - v6 - 399223333) ^ 0xDA2F0E4B);
  LOBYTE(v2) = -85 * ((*v2 + *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_100755B60 + ((-85 * ((dword_10077E220 - dword_10077E128) ^ 0xDF)) ^ byte_100694EA0[byte_10068DFC0[(-85 * ((dword_10077E220 - dword_10077E128) ^ 0xDF))] ^ 0x6D]) + 262) - 8;
  (*&v4[8 * (v2 ^ byte_100694EA0[byte_10068DFC0[v2] ^ 0x6D]) + 76952])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100164A28()
{
  v5 = (((v2 - 4589) | 0x2102) - 432575509) ^ v1;
  v7 = (v0 - v3) > 0x1F && v5 > 7;
  return (*(v4 + 8 * ((2011 * v7) ^ v2)))();
}

uint64_t sub_100164B38()
{
  v4 = *(v1 + 8);
  STACK[0x4D0] = v2;
  STACK[0x720] = 0;
  STACK[0x638] = 0;
  return (*(v3 + 8 * (((((v0 ^ 0xD59) + 37) ^ (121 * (v0 ^ 0xD59))) * (v4 == 0)) ^ v0)))();
}

uint64_t sub_100164B84(uint64_t a1)
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

uint64_t sub_100164C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, int a14, char a15, int a16, unsigned int a17, uint64_t a18, char *a19)
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

uint64_t sub_100164ECC()
{
  v5 = (*(v4 + 8 * (v0 + 5441)))(0, 0, 0);
  (*(v4 + 8 * (v0 + 5476)))(v5, *(&off_100755B60 + (v0 ^ 0x10CF)) - 4, v3, (v0 ^ 0xBC589C4) + v1);
  v6 = *(v4 + 8 * (v0 ^ 0x36BB));
  STACK[0x3B0] = v5;
  v7 = v6(v2, v5) == 0;
  return (*(v4 + 8 * (((2 * (((v0 + 120) ^ v7) & 1)) & 0xF7 | (8 * (((v0 + 120) ^ v7) & 1))) ^ v0)))();
}

uint64_t sub_100164F98(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  *a4 = 0;
  *a5 = 0;
  a15 = 476323082 - 1710126949 * ((&a15 + 997951345 - 2 * (&a15 & 0x3B7B8771)) ^ 0x960DCE1);
  v17 = (*(v16 + 77088))(&a15);
  return (*(v16 + 8 * ((7304 * (a16 == 16257999)) ^ 0xD2Au)))(v17);
}

uint64_t sub_100165064@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 + 1663)))(a1);
  *(STACK[0x550] + 24) = 0;
  return sub_10004EC68();
}

uint64_t sub_100165094@<X0>(__int16 a1@<W8>)
{
  v4 = (((2 * v2) & 0x5EFF7ABFFDF6D3ECLL) + (v2 ^ 0x6F7FBD5FFEFB69F6) + v1 - 0x6F7FBD5FFEFB69F6);
  v5 = (v4[1] << ((v3 & 0xF7) - 64)) | (*v4 << 24) | (v4[2] << 8);
  LODWORD(STACK[0x944]) = (v5 | v4[3]) + 197499219 - 2 * ((v5 | v4[3]) & 0xBC5995F ^ v4[3] & 0xC);
  return sub_1001BA428(a1);
}

void sub_100165148(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  STACK[0x720] = STACK[0x6C0];
  STACK[0x6D0] = *(a1 + 8 * a2);
  JUMPOUT(0x1000CAF90);
}

void sub_1001651B0(uint64_t a1)
{
  v1 = *(a1 + 12) ^ (2048652491 * ((-2 - ((a1 | 0x1C417471) + (~a1 | 0xE3BE8B8E))) ^ 0x520F1C8B));
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1001652AC(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

uint64_t sub_10016565C(uint64_t a1)
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

uint64_t sub_1001658D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
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

void sub_100165994()
{
  v0 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E118) ^ 0xDF)) ^ byte_100694EA0[byte_10068DFC0[(-85 * ((dword_10077E220 + dword_10077E118) ^ 0xDF))] ^ 0xBF]) + 118);
  v1 = *(v0 - 4);
  v2 = *(&off_100755B60 + (byte_100694EA8[(byte_10068DFC8[(-85 * (v1 ^ dword_10077E220 ^ 0xDF)) - 8] ^ 0x6D) - 8] ^ (-85 * (v1 ^ dword_10077E220 ^ 0xDF))) + 184);
  v3 = &v5[*v2 ^ v1];
  *(v0 - 4) = 2054362027 * (v3 - 0xB4207763EF64BDFLL);
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((v6 & 0xB1703B09 | ~(v6 | 0xB1703B09)) ^ 0x7C949F66);
  LOBYTE(v2) = -85 * (*(v0 - 4) ^ 0xDF ^ *v2);
  v4 = *(&off_100755B60 + ((-85 * ((dword_10077E220 - dword_10077E118) ^ 0xDF)) ^ byte_100694FA0[byte_10068E0C0[(-85 * ((dword_10077E220 - dword_10077E118) ^ 0xDF))] ^ 0x2A]) + 107) - 8;
  (*&v4[8 * (byte_10068DECC[(byte_100683950[v2] ^ 0xEE) - 12] ^ v2) + 76160])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100165C90@<X0>(int a1@<W8>, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, int a6, unsigned int a7)
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

uint64_t sub_100165DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x90A]) = v63;
  LODWORD(STACK[0x300]) = v63;
  return sub_10012B9DC(a1, a63 - 2230, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_100165E00(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(STACK[0x3D0]) = a3;
  STACK[0x3C0] = v6;
  return (*(a4 + 8 * (((((v5 + a5 + v7) & v8 ^ 0xFFFFFD21) + ((v5 + a5) ^ v9) * v10) * (*v6 == 0)) ^ (v5 + a5))))();
}

uint64_t sub_100165E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * ((&a12 & 0xB57B906E | ~(&a12 | 0xB57B906E)) ^ 0xFA87F7E7) + 8154;
  a12 = &a10;
  v16 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * ((10221 * (a13 == v15)) ^ 0x4BEu)))(v16);
}

uint64_t sub_100165F70@<X0>(unint64_t a1@<X8>)
{
  v3 = v1 ^ 0x74AD484;
  v4 = (3 * (v1 ^ 0x74AF2AC) + 523505656) & 0xE0CBDB77;
  STACK[0x968] = a1;
  v5 = STACK[0x690];
  STACK[0x970] = STACK[0x690];
  return (*(v2 + 8 * (((a1 - v5 > 9) * (v4 + 1128)) ^ v3)))();
}

void sub_100166048(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x1000D5858);
}

uint64_t sub_1001660AC()
{
  STACK[0x420] = 0;
  v2 = STACK[0x850];
  STACK[0x540] = *(v1 + 8 * v0);
  return sub_1001307C8(v2);
}

uint64_t sub_1001660DC(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return sub_100166340(a1, a2, a3, 16215976);
}

uint64_t sub_100166218(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    return sub_100166340(a1, a2, a3, a4);
  }
}

uint64_t sub_1001662E8@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x29C4)))(a1);
  *(STACK[0x860] + 24) = 0;
  return sub_100166314();
}

void sub_100166314()
{
  (*(v1 + 8 * (v0 ^ 0x21A4)))();
  STACK[0x860] = 0;
  JUMPOUT(0x100166334);
}

void sub_1001663DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t sub_10016645C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
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
    return sub_100167434(a1, a2, a3, a4, a5, a6, v8);
  }

  STACK[0x4F8] = STACK[0x758] + STACK[0x2A0];
  return sub_100167400(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_100166534()
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
  return sub_100167400();
}

uint64_t sub_100167400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x728] = STACK[0x9D8];
  LODWORD(STACK[0x8B0]) = STACK[0x9CC];
  LOWORD(STACK[0x6F6]) = STACK[0x9D2];
  LODWORD(STACK[0x634]) = STACK[0x9D4];
  return sub_100167434(a1, a2, a3, a4, a5, a6, (v6 + 4420));
}

uint64_t sub_100167B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a10;
  a16 = 1317436891 * (((&a14 | 0xCA273CD1) + (~&a14 | 0x35D8C32E)) ^ 0x7A24A4A6) + 8154;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((6817 * (a15 == v17)) ^ v18)))(v19);
}

uint64_t sub_1001686B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    return sub_10016871C();
  }
}

uint64_t sub_100168894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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
  return sub_10015CA80(0x126AA61F6F56C0D8, a2, 0x2A5638492DD55EAELL, 0x4C48AAE1C333D048, 0xEAD4E3DB691550A9, 169, 0x64C31C027084DE6CLL, 0x61459D2AF01F24F7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

void sub_1001688A8()
{
  v0 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E258) ^ 0xDF)) ^ byte_10068DEC0[byte_100683950[(-85 * ((dword_10077E220 + dword_10077E258) ^ 0xDF))] ^ 0xEE]) - 106);
  v1 = -85 * ((dword_10077E220 + *v0) ^ 0xDF);
  v2 = *(&off_100755B60 + (byte_100694EA8[(byte_10068DFC8[v1 - 8] ^ 0xBF) - 8] ^ v1) - 14);
  v3 = &v5[*v2 - *v0];
  *v0 = 2054362027 * v3 + 0x1FC86B74B1533AF5;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * (((v6 | 0xE77584D2) - v6 + (v6 & 0x188A7B28)) ^ 0xD56EDF42);
  LOBYTE(v2) = -85 * ((*v2 + *v0) ^ 0xDF);
  v4 = *(&off_100755B60 + ((-85 * ((dword_10077E220 - dword_10077E258) ^ 0xDF)) ^ byte_100694EA0[byte_10068DFC0[(-85 * ((dword_10077E220 - dword_10077E258) ^ 0xDF))] ^ 1]) + 92) - 8;
  (*&v4[8 * (byte_100683C5C[(byte_10069D20C[v2 - 12] ^ 0xD9) - 12] ^ v2) + 75248])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100168B30()
{
  (*(v2 + 8 * (v0 ^ 0x3FCE)))(v1);
  STACK[0x578] = 0;
  return (*(v2 + 8 * (((STACK[0x7D8] != 0) * (((v0 + 1511357844) & 0xA5EA6DAD) - 1372)) ^ (v0 + 1872))))();
}

uint64_t sub_100168B94@<X0>(int a1@<W8>)
{
  v2 = STACK[0x508];
  STACK[0x470] = *(v1 + 8 * a1);
  return sub_1001A7974(v2);
}

void sub_100168C10()
{
  *v1 = v0;
  v1[1] = v0;
  JUMPOUT(0x100168C30);
}

uint64_t sub_100168C8C@<X0>(unint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  v5 = (*(((2 * (a4 + 6)) & 0x3F1E7FB3FDF7177CLL) + ((a4 + 6) ^ 0x1F8F3FD9FEFB8BBELL) + a2 - 0x1F8F3FD9FEFB8BBELL) << 24) | (*(((2 * (a4 + 6)) & 0x3F1E7FB3FDF7177CLL) + ((a4 + 6) ^ 0x1F8F3FD9FEFB8BBELL) + a2 - 0x1F8F3FD9FEFB8BBDLL) << 16) | (*(((2 * (a4 + 6)) & 0x3F1E7FB3FDF7177CLL) + ((a4 + 6) ^ 0x1F8F3FD9FEFB8BBELL) + a2 - 0x1F8F3FD9FEFB8BBCLL) << 8);
  v6 = *(((2 * (a4 + 6)) & 0x3F1E7FB3FDF7177CLL) + ((a4 + 6) ^ 0x1F8F3FD9FEFB8BBELL) + a2 - 0x1F8F3FD9FEFB8BBBLL);
  v7 = (((v5 | v6) + 197499219 - 2 * ((v5 | v6) & 0xBC5995F ^ v6 & 0xC)) ^ 0xBC59953u) + a4 + 10 <= a1;
  v8 = *(a3 + 8 * ((v7 | (4 * v7)) ^ v4));
  STACK[0x2A8] = a2;
  return v8();
}

uint64_t sub_100168D88(uint64_t a1)
{
  v1 = *a1 + 956911519 * ((((2 * a1) | 0x28A16880) - a1 - 340833344) ^ 0xFEC1C445);
  v2 = *(a1 + 8);
  v8 = v2[1];
  v3 = (1824088897 * (&v7 ^ 0x5869D362)) ^ (v1 + 501374782);
  v9 = v3;
  v4 = (*(&off_100755B60 + v1 + 501366715) + 8 * (v1 ^ 0xE21DE4D0));
  (*(v4 - 1))(&v7);
  v5 = *v2;
  v9 = v3;
  v8 = v5;
  return (*(v4 - 1))(&v7);
}

void sub_100168EA8(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v59 = 257 * (v57 ^ 0x774);
  (*(v58 + 8 * (v57 ^ 0x22F9)))(a1);
  *(STACK[0x538] + 24) = 0;
  (*(a57 + 8 * (v59 + 7291)))();
  STACK[0x538] = 0;
  JUMPOUT(0x100181260);
}

void sub_100168F50()
{
  v0 = *(&off_100755B60 + ((-85 * (dword_10077E3C8 ^ 0xDF ^ dword_10077E220)) ^ byte_100694EA0[byte_10068DFC0[(-85 * (dword_10077E3C8 ^ 0xDF ^ dword_10077E220))] ^ 0xBF]) + 48);
  v1 = *(v0 - 4);
  v2 = *(&off_100755B60 + (byte_100683C50[byte_10069D200[(-85 * ((dword_10077E220 - v1) ^ 0xDF))] ^ 0xB1] ^ (-85 * ((dword_10077E220 - v1) ^ 0xDF))) + 156);
  v3 = *v2 - v1 - &v5;
  *(v0 - 4) = 2054362027 * (v3 - 0xB4207763EF64BDFLL);
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((((2 * (v6 ^ 0xBF49A99E)) | 0xF34E26A2) - (v6 ^ 0xBF49A99E) + 106491055) ^ 0x74F5E15F);
  LOBYTE(v2) = -85 * ((*v2 - *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E3C8) ^ 0xDF)) ^ byte_100683C50[byte_10069D200[(-85 * ((dword_10077E220 + dword_10077E3C8) ^ 0xDF))] ^ 0x71]) + 120) - 8;
  (*&v4[8 * (v2 ^ byte_100683C50[byte_10069D200[v2] ^ 0xB1]) + 76728])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100169180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, unsigned int a17, uint64_t a18)
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

uint64_t sub_1001693B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *v5 = v4;
  *(v4 + 8) = *(a4 + 8);
  *(a4 + 8) = v4;
  return sub_10011CC00(a1, a2, a3);
}

uint64_t sub_1001693D4(uint64_t a1)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFFBEBLL ^ (v4 - 1970)) + v1;
  *(a1 - 7 + v6) = *(v2 - 7 + v6);
  return (*(v5 + 8 * ((5819 * (v3 + 8 == v1)) ^ v4)))();
}

uint64_t sub_100169420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, unint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LODWORD(STACK[0x9D4]) = a7;
  v67 = (a7 ^ v65) + STACK[0x2A0];
  STACK[0x9D8] = v67;
  return (*(v66 + 8 * ((a65 - 4385) | (v67 <= a30))))(a1, a2, a3, a4, a5, a6, a65);
}

uint64_t sub_100169480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((50 * (v6 != 0)) ^ (v2 + v4 + 2484))))();
}

uint64_t sub_1001694B4@<X0>(uint64_t a1@<X8>)
{
  STACK[0x838] = 0;
  STACK[0x590] = 0;
  STACK[0x540] = *(v3 + 8 * v2);
  return sub_1001307C8(a1);
}

uint64_t sub_1001694E4@<X0>(int a1@<W8>)
{
  v2 = STACK[0x858];
  STACK[0x4D0] = *(v1 + 8 * a1);
  return sub_1001AD354(v2);
}

uint64_t sub_100169648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
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

uint64_t sub_10016974C@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100169870@<X0>(uint64_t a1@<X0>, int a2@<W8>)
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

uint64_t sub_1001698B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t *a15, unsigned int a16, int a17)
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

void sub_1001699B4(uint64_t a1@<X8>)
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
  JUMPOUT(0x100126418);
}

void sub_100169A84()
{
  STACK[0x440] = STACK[0x628];
  LODWORD(STACK[0x820]) = STACK[0x8B4];
  sub_1000EEB00();
}

void sub_100169AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

uint64_t sub_100169B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t sub_100169CC0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
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

uint64_t sub_100169E98@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 ^ 0x37AA)))(v1);
  STACK[0x7A8] = 0;
  return sub_10019B43C();
}

void sub_100169ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x790] = 0;
  STACK[0x518] = *(a64 + 8 * (v64 - 2382));
  JUMPOUT(0x10015D0F8);
}

uint64_t sub_100169F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, char a16, int a17, int a18, char a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, char *a25)
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

uint64_t sub_10016A0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = LOWORD(STACK[0x9A6]);
  STACK[0x6C0] = STACK[0x9A8];
  return (*(v71 + 8 * ((6056 * (v72 == (a71 + 11077))) ^ (a71 - 4096))))();
}

void sub_10016A130()
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
  *&STACK[0x270] = xmmword_10069D310;
  JUMPOUT(0x10016A3A0);
}

uint64_t sub_10016AE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, int a3@<W5>, uint64_t a4@<X8>)
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

uint64_t sub_10016AF5C@<X0>(uint64_t a1@<X8>)
{
  *v3 = v2;
  *(v2 + 8) = *(a1 + 8);
  *(a1 + 8) = v2;
  return sub_100154C20();
}

uint64_t sub_10016B19C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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
    return sub_10016B204();
  }
}

void sub_10016B2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, int a8)
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
  JUMPOUT(0x1000354F4);
}

uint64_t sub_10016B3A8@<X0>(int a1@<W8>)
{
  STACK[0x9A8] = v1;
  v3 = STACK[0x3F0];
  STACK[0x9B0] = STACK[0x3F0];
  return (*(v2 + 8 * ((((((a1 - 1421427491) ^ (v1 - v3 > 9)) & 1) == 0) * (a1 - 7541)) ^ (a1 - 4531))))();
}

uint64_t sub_10016B464@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  STACK[0x3D0] = *(a1 + 8 * v2);
  STACK[0x8A0] = 0;
  return (*(a1 + 8 * ((126 * (((a2 ^ (STACK[0x8A0] < 0x20)) & 1) == 0)) ^ a2)))(0xF5A2F1B9B5D0B209, 0xE49D77DF873DBF7ELL, 0x64C31C027084DE6CLL, 0x43E0E1A1BF0A5C84, 0x4191986715653828, 0x5BBB73835736972BLL, 177, 0x5E0F8F2F207AD1BELL);
}

uint64_t sub_10016B5F4()
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

uint64_t sub_10016B6D4()
{
  v2 = *(STACK[0x508] + 24);
  STACK[0x360] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 3772) ^ 0xFFFFE389) + v0 - 6845)) ^ v0)))();
}

void sub_10016B720(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x10016B748);
}

uint64_t sub_10016B7C8(uint64_t a1)
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

void sub_10016B8E8(uint64_t a1@<X8>)
{
  v3 = (v1 + 404377037) & 0xE7E5AFBF;
  (*(v2 + 8 * (v1 + 7267)))(a1);
  *(STACK[0x5E0] + 24) = 0;
  (*(v2 + 8 * (v3 + 7894)))();
  STACK[0x5E0] = 0;
  JUMPOUT(0x1000D5858);
}

uint64_t sub_10016B948(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t (*a57)(void))
{
  *a4 = a1;
  *a5 = a47;
  return a57();
}

uint64_t sub_10016B96C(uint64_t a1)
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

uint64_t sub_10016BAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, unsigned int a24)
{
  v26 = a17 < a16;
  if (v26 == a24 > 0xA421C5B9)
  {
    v26 = a24 + ((v24 - 1166) ^ 0x5BDE3708) < a17;
  }

  return (*(v25 + 8 * ((!v26 * ((53 * (v24 ^ 0x11DE)) ^ 0x39B)) ^ v24)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_10016BB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v65 = v63 == (a63 ^ 0x1BF7) - 328594303;
  LOBYTE(STACK[0x57F]) = v65;
  return (*(v64 + 8 * ((4763 * v65) ^ (a63 + 1172))))();
}

uint64_t sub_10016BBD4(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
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

void sub_10016C508()
{
  STACK[0x500] = 0;
  STACK[0x848] = *(STACK[0x3E8] + 8 * (v0 - 4335));
  JUMPOUT(0x1000B0168);
}

uint64_t sub_10016C5CC@<X0>(__int16 a1@<W8>)
{
  v3 = STACK[0x840];
  STACK[0x880] = *(v2 + 8 * v1);
  return sub_1000CB7E4(v3, a1);
}

uint64_t sub_10016C5F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = (*(v66 + 8 * ((v64 - 423) ^ 0x31C1)))(64, v65);
  STACK[0x7A8] = v67;
  return (*(a64 + 8 * (((((878 * ((v64 - 423) ^ 0x1460) - 2057) | 0x430) - 1642) * (v67 != 0)) ^ (v64 - 423))))();
}

uint64_t sub_10016C6B0@<X0>(int a1@<W8>)
{
  v2 = (a1 + 2028382481) & 0x871967F7;
  (*(v1 + 8 * (a1 ^ 0x2A69)))();
  return (*(STACK[0x330] + 8 * (((STACK[0x5E0] != 0) * (v2 - 7939)) ^ v2)))();
}

void sub_10016C70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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

uint64_t sub_10016C800()
{
  v3 = *(v1 + 8);
  STACK[0x818] = v0;
  return (*(STACK[0x400] + 8 * (((((v2 - 1532) | 0x200) ^ ((v2 + 2292) | 0x829) ^ 0x1B3A) * (v3 != 0)) ^ v2)))();
}

uint64_t sub_10016CA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v64 = LOWORD(STACK[0x92E]);
  STACK[0x638] = STACK[0x930];
  return (*(v63 + 8 * (((v64 == 17168) * ((a63 ^ 0x204) + 342)) ^ (a63 + 2930))))();
}

uint64_t sub_10016CADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  LODWORD(STACK[0x49C]) = v6;
  STACK[0x700] = STACK[0x550];
  v7 = STACK[0x3E8];
  STACK[0x480] = *(STACK[0x3E8] + 8 * (a6 - 4669));
  return sub_1001155E8(a1, a2, a3, v7);
}

uint64_t sub_10016CB0C(uint64_t a1, uint64_t a2)
{
  STACK[0x7F0] = STACK[0x3E8];
  LODWORD(STACK[0x3E4]) = STACK[0x64C];
  return sub_100130A30(a1, a2);
}

uint64_t sub_10016CBCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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

uint64_t sub_10016CEC4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, unsigned int a14)
{
  a13 = a1;
  a14 = v14 - 2008441969 * ((-1298253526 - (&a12 | 0xB29E392A) + (&a12 | 0x4D61C6D5)) ^ 0x5F892DB) + 3496;
  v17 = (*(v16 + 8 * (v14 ^ 0x2DEE)))(&a12);
  return (*(v16 + 8 * (((a12 == v15) * ((v14 + 1589159737) & 0xA1475EFB ^ 0xCCF)) ^ v14)))(v17);
}

uint64_t sub_10016D064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_10016D0FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
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

uint64_t sub_10016D310@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
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

uint64_t sub_10016DCC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
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

uint64_t sub_10016DDC0()
{
  STACK[0x810] = 0;
  v3 = STACK[0x888];
  STACK[0x518] = *(v2 + 8 * (v1 - 2374));
  return sub_10018229C(v3);
}

void sub_10016DDF4(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x1000A8840);
}

uint64_t sub_10016E184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

uint64_t sub_10016E848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v70 - 224) = v67 ^ (914963389 * ((2 * ((v70 - 232) & 0x5DD03058) - (v70 - 232) + 573558688) ^ 0xED37EDB));
  v71 = (*(v64 + 8 * v69))(v70 - 232);
  *(v68 + 8) = *(v70 - 232) ^ v65;
  return (*(a64 + 8 * ((2395 * (((v66 - 2454) ^ 0xBBuLL) > 8)) ^ (v66 - 847))))(v71, 16215976);
}

uint64_t sub_10016E950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LOWORD(STACK[0x8DA]) = v5;
  LODWORD(STACK[0x360]) = v5;
  return sub_100167484(a1, a2, STACK[0x3D0], a4, a5, v6 - 4631);
}

uint64_t sub_10016E96C(uint64_t a1)
{
  v4 = *(v2 + 4);
  *(a1 + 20) = v4;
  return (*(v3 + 8 * (((v4 == 0) * (v1 + v1 + 611 - 648)) ^ v1)))();
}

uint64_t sub_10016E9A4(uint64_t a1)
{
  v8 = -v5 - a1;
  v10 = (v6 - a1) >= 0x10 && v8 + v3 + 16 >= ((6 * (v4 ^ 0x25E1u)) ^ 0xA5AuLL) && (v8 + v2 + 18) >= 0x10;
  v11 = v8 + v1 + 17;
  v13 = !v10 || v11 < (((v4 ^ 0x25E1u) + 6422) ^ 0x1ADDuLL);
  return (*(v7 + 8 * ((62 * v13) ^ v4)))();
}

uint64_t sub_10016EA88(uint64_t a1)
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
  result = (*(*(&off_100755B60 + v3 + 740056760) + v3 + 740066191))(v16);
  *(a1 + 8) = v16[0];
  return result;
}

void sub_10016ED68(uint64_t a1)
{
  v2 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E398) ^ 0xDF)) ^ byte_100694EA0[byte_10068DFC0[(-85 * ((dword_10077E220 + dword_10077E398) ^ 0xDF))] ^ 0x67]) + 271);
  v3 = *(v2 - 4);
  v4 = *(&off_100755B60 + ((-85 * (v3 ^ dword_10077E220 ^ 0xDF)) ^ byte_10068DEC0[byte_100683950[(-85 * (v3 ^ dword_10077E220 ^ 0xDF))] ^ 0xEE]) + 85);
  v5 = 2054362027 * ((v3 - &v7 + *v4) ^ 0xB4207763EF64BDFLL);
  *(v2 - 4) = v5;
  *v4 = v5;
  LODWORD(v4) = *(v2 - 4);
  v6 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E398) ^ 0xDF)) ^ byte_100683A50[byte_10069D100[(-85 * ((dword_10077E220 + dword_10077E398) ^ 0xDF))] ^ 0xDD]) + 36) - 8;
  (*&v6[8 * (byte_100683C50[byte_10069D200[(-85 * (v4 ^ 0xDF ^ v5))] ^ 0xE2] ^ (-85 * (v4 ^ 0xDF ^ v5))) + 76888])(*(&off_100755B60 + ((-85 * ((v5 - v4) ^ 0xDF)) ^ byte_100683C50[byte_10069D200[(-85 * ((v5 - v4) ^ 0xDF))] ^ 0x71]) - 28), sub_1000B1988);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10016EFD4()
{
  LODWORD(STACK[0x35C]) = STACK[0x2F0];
  LOBYTE(STACK[0x79B]) = STACK[0x310];
  LODWORD(STACK[0x49C]) = v1;
  STACK[0x8A8] = STACK[0x300];
  LODWORD(STACK[0x8B4]) = v0;
  return sub_10017A8BC();
}

void sub_10016F004()
{
  v0 = *(&off_100755B60 + (byte_100683A50[byte_10069D108[(-85 * ((dword_10077E220 - dword_10077E338) ^ 0xDF)) - 8] ^ 0xDD] ^ (-85 * ((dword_10077E220 - dword_10077E338) ^ 0xDF))) - 19);
  v1 = *(v0 - 4);
  v2 = *(&off_100755B60 + (byte_100694EA8[(byte_10068DFC8[(-85 * ((dword_10077E220 - v1) ^ 0xDF)) - 8] ^ 0x67) - 8] ^ (-85 * ((dword_10077E220 - v1) ^ 0xDF))) + 143);
  v3 = 2054362027 * (&v5[v1 + *v2] ^ 0xB4207763EF64BDFLL);
  *(v0 - 4) = v3;
  *v2 = v3;
  v6[0] = 476323082 - 1710126949 * (v6 ^ 0x321B5B90);
  LOBYTE(v2) = -85 * (*(v0 - 4) ^ 0xDF ^ *v2);
  v4 = *(&off_100755B60 + ((-85 * (dword_10077E338 ^ 0xDF ^ dword_10077E220)) ^ byte_100683C50[byte_10069D200[(-85 * (dword_10077E338 ^ 0xDF ^ dword_10077E220))] ^ 0xB1]) + 234) - 8;
  (*&v4[8 * (byte_10068DECC[(byte_100683950[v2] ^ 0x21) - 12] ^ v2) + 76056])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10016F234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, unint64_t *a39)
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

uint64_t sub_10016F3EC()
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

uint64_t sub_10016F5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, unint64_t a32)
{
  v34 = STACK[0x3F8] - 4763;
  LODWORD(STACK[0x9EC]) = v32;
  v35 = (v32 ^ v33) + STACK[0x2B0];
  STACK[0x9F0] = v35;
  return (*(STACK[0x400] + 8 * (v34 ^ ((4 * (v35 <= a32)) | (16 * (v35 <= a32))))))();
}

void sub_10016F64C(uint64_t a1)
{
  v1 = *(a1 + 4) ^ (914963389 * ((~a1 & 0x357A62A9 | a1 & 0xCA859D56) ^ 0x1986D3D2));
  __asm { BRAA            X10, X17 }
}

void sub_10016F8B0(int a1@<W8>)
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

uint64_t sub_10016FB40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, unsigned int a14)
{
  a13 = a9;
  a14 = (v16 - 1000537268) ^ (((((2 * &a12) | 0xADC23A00) - &a12 + 689890048) ^ 0x8E88CE62) * v15);
  v17 = (*(v14 + 8 * (v16 ^ 0x3BA338C2)))(&a12);
  return sub_10016FBA8(v17);
}

void sub_10016FBEC()
{
  STACK[0x480] = 0;
  STACK[0x540] = *(v1 + 8 * (v0 - 8403));
  JUMPOUT(0x10016FC14);
}

uint64_t sub_10016FDA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16)
{
  a16 = (v18 + 474186910) ^ (((&a14 + 383697008 - 2 * (&a14 & 0x16DEC070)) ^ 0x4EB71312) * v16);
  a15 = a10;
  v19 = (*(v17 + 8 * (v18 ^ 0xE3BCBE70)))(&a14);
  return sub_10016FE08(v19);
}

uint64_t sub_10016FE4C@<X0>(int a1@<W8>)
{
  STACK[0xA10] = v1;
  v2 = STACK[0x448];
  STACK[0xA18] = STACK[0x448];
  return (*(STACK[0x330] + 8 * (((v1 - v2 > 9) * (((a1 - 5902) ^ 0xC51) + ((a1 - 5902) | 0x105))) ^ a1)))();
}

uint64_t sub_10016FFF8()
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

uint64_t sub_1001700A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = *(&off_100755B60 + v65 - 891);
  *(v68 + 96) = 0;
  *(v68 + 104) = 0;
  *(v66 - 228) = v65 + 1710126949 * ((2 * ((v66 - 232) & 0x33FB9DA8) - (v66 - 232) + 1275355734) ^ 0x7E1F39C6) + 1664195590;
  v69 = (*(v67 + 8 * (v65 ^ 0x267E)))(v66 - 232);
  return (*(a64 + 8 * (((*(v66 - 232) != v64 + 3299) * ((v65 + 1699) ^ 0xA44)) ^ v65)))(v69);
}

uint64_t sub_100170218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
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

uint64_t sub_1001703C4()
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
    return sub_100170428();
  }
}

uint64_t sub_1001706D8@<X0>(uint64_t a1@<X8>)
{
  v3 = STACK[0x6F8];
  STACK[0x508] = *(v2 + 8 * a1);
  return (*(v2 + 8 * (((((v3 == 0) ^ (a1 + 95)) & 1) * (((a1 - 201) | 0x1582) - 6078)) ^ (a1 + 4704))))();
}

void sub_1001707E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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
  JUMPOUT(0x100170A74);
}

uint64_t sub_100171F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, unsigned int a17)
{
  a17 = (33731311 * (((&a14 | 0x4D13EFBB) + (~&a14 | 0xB2EC1044)) ^ 0x74E52599)) ^ 0x208C;
  a15 = v17;
  a16 = a12;
  v20 = (*(v18 + 77256))(&a14);
  return (*(v18 + 8 * ((7923 * (a14 == v19 - 962517632)) ^ 0xEBCu)))(v20);
}

uint64_t sub_1001720A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = 193 * (a3 ^ 0x1B1B);
  LODWORD(STACK[0x270]) = v72;
  return (*(a71 + 8 * ((91 * (0xEFEEE7DAFDD4E84CLL - a1 + v71 - a67 - a65 + ((v72 - 867287018) & 0x33B1AF75) > 0xF)) ^ a3)))();
}

uint64_t sub_100172190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a19 = 1317436891 * ((((2 * &a17) | 0xB1127C68) - &a17 - 1485389364) ^ 0xE88AA642) + 8154;
  a17 = &a11;
  v20 = (*(v19 + 77096))(&a17);
  return (*(v19 + 8 * ((2279 * (a18 == 16257999)) ^ 0x128Du)))(v20);
}

uint64_t sub_100172220@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v5) = 0;
  v8 = v5 < v4 && v5 + 840616316 < v1;
  return (*(v6 + 8 * ((v8 * v2) ^ v3)))();
}

uint64_t sub_100172354()
{
  LODWORD(STACK[0x47C]) = STACK[0x2E0];
  LODWORD(STACK[0x754]) = STACK[0x2F0];
  LODWORD(STACK[0x6C4]) = STACK[0x300];
  LODWORD(STACK[0x3D4]) = v0;
  return sub_100172380();
}

uint64_t sub_100172380(uint64_t a1)
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

uint64_t sub_100172514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int8x16_t a59, int8x16_t a60)
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

uint64_t sub_100173040(_DWORD *a1)
{
  *STACK[0x658] = v1;
  *a1 = STACK[0x6D4];
  return (STACK[0x5B8])();
}

uint64_t sub_100173068()
{
  v2 = (*(v1 + 8 * (v0 + 6143)))(32, 0x103004054B5FA7DLL);
  STACK[0x440] = v2;
  return (*(v1 + 8 * (((v2 != 0) * (((v0 - 2913) | 0x808) - 2531)) ^ v0)))();
}

uint64_t sub_1001730C8()
{
  v2 = STACK[0x680];
  v3 = &STACK[0xAB0] + STACK[0x640];
  STACK[0x5A8] = v3;
  STACK[0x630] = (v3 + 16);
  STACK[0x450] = 0;
  STACK[0x6C0] = 0;
  LODWORD(STACK[0x80C]) = 197499219;
  STACK[0x7A0] = 0;
  LODWORD(STACK[0x7E4]) = 197499219;
  STACK[0x530] = v2;
  return (*(v1 + 8 * (((((v0 - 1281) ^ 0xD54) - 8665 + ((v0 - 4345) | 0x86)) * (v2 == 0)) | (v0 - 1281))))();
}

uint64_t sub_100173188()
{
  v3 = *(v0 + 8);
  STACK[0x558] = v3;
  return (*(v2 + 8 * (((v3 != 0) * (((v1 + 2039) ^ 0x809) - 853)) ^ (v1 + 2039))))();
}

uint64_t sub_1001731C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a15 = &a13;
  a17 = 1317436891 * (((&a15 | 0xF3B4D3AA) - (&a15 & 0xF3B4D3AA)) ^ 0x43B74BDC) + 8154;
  v19 = (*(v17 + 77096))(&a15);
  return (*(v17 + 8 * ((15414 * (a16 == 16257999)) ^ v18)))(v19);
}

uint64_t sub_10017325C(uint64_t a1)
{
  v6 = v2 + 2235;
  v7 = 3394 * ((v2 + 2235) ^ 0x1C36);
  v11 = (v3 + v1 - 16) < 0x10 || (v1 - 104 + *(v4 + 8 * (v6 - 7053)) - 4) < 0x10 || (v1 + *(v4 + 8 * (v6 ^ 0x1C85)) - 12 - 100) < 0x10 || (v1 - 104 + *(v4 + 8 * (v6 - 7131)) - 12) < 0x10;
  return (*(v5 + 8 * ((v11 * (v7 - 6775)) ^ v6)))(a1, 16);
}

uint64_t sub_100173394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v23 = 1824088897 * ((&a16 + 630365894 - 2 * (&a16 & 0x25929EC6)) ^ 0x7DFB4DA4);
  a20 = -654855621 - v23;
  a21 = v23 + 1674579114;
  a17 = v23 + 1018602645;
  a18 = a13;
  a19 = &a14;
  v24 = (*(v21 + 76864))(&a16);
  return (*(v21 + 8 * ((11 * (a16 == v22)) ^ 0x905)))(v24);
}

uint64_t sub_10017363C(uint64_t a1)
{
  v5 = *(v4 + 8 * (v2 ^ (238 * (((v1 + 1815398884) ^ 0x6C34C9E4u) > 7))));
  STACK[0x3D0] = *(v3 + 24);
  return v5(a1, 0xD02B2EB47D7683C6, 0xDF7BD152D757ACA5, 0xB30538E1A5AF13B6, 0x629E5557E5EFD9B2, 0x2451E0AF25CF2710, 0xBC6F38E694B3D867);
}

uint64_t sub_1001738C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20, int a21, unsigned int a22, uint64_t a23, uint64_t a24)
{
  v30 = 1875091903 * (&a20 ^ 0x36758383);
  a23 = a16;
  a21 = (v28 ^ 0xB75DBFEF) + ((2 * v28) & 0x6EBB7FDE) + 1757345467 + v30;
  a22 = v26 + 3853 + v30;
  (*(v24 + 8 * (v26 ^ 0x2AB2)))(&a20);
  v31 = 1875091903 * ((2 * (&a20 & 0x60076C00) - &a20 - 1611099143) ^ 0xA98D107A);
  a23 = a16;
  a21 = ((2 * v27) & 0x4AFB7FD6) + (v27 ^ 0x257DB2BD ^ (1138 * (v26 ^ 0xF1C))) + v31 - 90245441;
  a22 = v26 + 3853 + v31;
  (*(v24 + 8 * (v26 + 5774)))(&a20);
  v32 = 1824088897 * ((2 * (&a20 & 0x3F03218) - &a20 + 2081410535) ^ 0x24661E85);
  a24 = a16;
  a23 = a13;
  a22 = (a12 ^ 0x7EFEFFFE) + ((2 * a12) & 0xFDFDFFFC) - v32 - 811210100;
  a20 = v26 - 114 + v32;
  (*(v24 + 8 * (v26 + 5760)))(&a20);
  v33 = 1824088897 * ((2 * (&a20 & 0x2B04DAF8) - &a20 + 1425745156) ^ 0xC92F666);
  a20 = v26 - 114 + v33;
  a22 = (a14 ^ 0xDEA6EAEA) + ((2 * a14) & 0xBD4DD5D4) - v33 + 1878917024;
  a24 = a16;
  a23 = v29;
  (*(v24 + 8 * (v26 ^ 0x2A80)))(&a20);
  v34 = *v25 ^ 0xE0BCFEEA;
  v35 = (2 * *v25) & 0xC179FDD4;
  v36 = 1875091903 * ((((&a20 | 0xE499EA52) ^ 0xFFFFFFFE) - (~&a20 | 0x1B6615AD)) ^ 0x2D13962E);
  a23 = a16;
  a21 = v36 + v34 + v35 + 1063237568;
  a22 = v26 + 3853 + v36;
  v37 = (*(v24 + 8 * (v26 + 5774)))(&a20);
  return (*(v24 + 8 * ((11168 * (a20 == 16257999)) ^ v26)))(v37);
}

void sub_100173C3C(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  sub_1000D60BC();
}

uint64_t sub_100173C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, uint64_t a19)
{
  v26 = v24 ^ 0x68FFFF2D ^ (v19 - 898028733) & 0x4997;
  v27 = (2 * v24) & 0xD1FFED5E;
  v28 = v19 + 2437;
  v29 = 1875091903 * (((&a17 | 0x2DBF70EF) - &a17 + (&a17 & 0xD2408F10)) ^ 0x1BCAF36C);
  HIDWORD(a17) = v27 + v26 - 1222852613 + v29;
  a18 = v28 + v29;
  a19 = a13;
  (*(v25 + 77160))(&a17);
  v30 = 1875091903 * (((&a17 | 0x10A3565C) - &a17 + (&a17 & 0xEF5CA9A0)) ^ 0x26D6D5DF);
  a19 = a13;
  HIDWORD(a17) = (HIDWORD(v23) ^ 0xEC5FBEAA) + ((2 * HIDWORD(v23)) & 0xD8BF7D54) + 868022272 + v30;
  a18 = v28 + v30;
  (*(v25 + 77160))(&a17);
  v31 = 1875091903 * ((&a17 - 260782466 - 2 * (&a17 & 0xF074C67E)) ^ 0xC60145FD);
  a19 = a13;
  HIDWORD(a17) = (v23 ^ 0xEF1DF6EB) + ((2 * v23) & 0xDE3BEDD6) + 822001599 + v31;
  a18 = v28 + v31;
  (*(v25 + 77160))(&a17);
  a18 = 1824088897 * (((&a17 | 0xA8F12686) - &a17 + (&a17 & 0x570ED978)) ^ 0xF098F5E4) + 2305;
  a17 = v22;
  a19 = a13;
  (*(v25 + 76720))(&a17);
  v32 = 1875091903 * ((&a17 & 0x4DBB6714 | ~(&a17 | 0x4DBB6714)) ^ 0x84311B68);
  a19 = a13;
  HIDWORD(a17) = (v21 ^ 0x287CF6AA) + ((2 * v21) & 0x50F9ED54) - 140525568 + v32;
  a18 = v28 + v32;
  (*(v25 + 77160))(&a17);
  v33 = 1875091903 * ((&a17 & 0x8A5D01B2 | ~(&a17 | 0x8A5D01B2)) ^ 0x43D77DCE);
  HIDWORD(a17) = (v20 ^ 0x7E7EF6EB) + ((2 * v20) & 0x1EDD6) - 1583497281 + v33;
  a18 = v28 + v33;
  a19 = a13;
  v34 = (*(v25 + 77160))(&a17);
  return (*(v25 + 8 * ((2375 * (a17 == 16257999)) ^ 0x14A7u)))(v34);
}

uint64_t sub_100174130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18 = a7 + v10;
  v19 = a7 + v10 + 9;
  v20 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = (v20 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v22 = (__ROR8__((5 * (v12 ^ 0x15D0u)) ^ 0x49E9423B6F16E76CLL ^ (v20 - 0x6AF7234D0CC131D5), 8) + v21) ^ 0xE49D77DF873DBF7ELL;
  v23 = v22 ^ __ROR8__(v21, 61);
  v24 = __ROR8__(v22, 8);
  v25 = ((v13 & (2 * (v24 + v23))) - (v24 + v23) + v15) ^ v16;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (v27 + v26 - (a1 & (2 * (v27 + v26))) + a2) ^ v14;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x61459D2AF01F24F7;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v8 - ((v32 + v31) | v8) + ((v32 + v31) | a3)) ^ a4;
  v34 = a7 - 1;
  v35 = v33 ^ __ROR8__(v31, 61);
  v36 = (__ROR8__(v33, 8) + v35) ^ 0x1A2AEBE44253AF03;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  *(v18 + 9) = *(v7 + v34) ^ (((v9 - ((v38 + v37) ^ a5 | v9) + ((v38 + v37) ^ a5 | a6)) ^ v11) >> (8 * (v19 & 7u))) ^ 0x3C;
  return (*(v17 + 8 * ((15247 * (v34 == 0)) ^ (v12 + 2269))))();
}

void sub_100174300()
{
  STACK[0x6A8] = 0;
  LODWORD(STACK[0x474]) = 0;
  JUMPOUT(0x100174334);
}

uint64_t sub_10017457C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, _DWORD *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  *a33 = a57;
  *a35 = a43;
  if (v63 == -1998503080)
  {
    return (*(v64 + 8 * ((((a63 - 576) | 0x11) + 3396) ^ (a63 + 1296))))();
  }

  if (v63 != 1593862305)
  {
    JUMPOUT(0x10017453CLL);
  }

  return (*(v64 + 8 * ((6 * (a63 ^ 0xA67)) ^ 0x1F8C ^ (a63 - 2364))))();
}

uint64_t sub_100174604()
{
  v2 = STACK[0x650];
  LODWORD(STACK[0x8F4]) = STACK[0x7C4];
  STACK[0x378] = v2;
  return (*(v1 + 8 * ((((((v0 - 7608) | 0x200) + 926) ^ 0x5C4) * (v2 != 0)) | v0)))();
}

uint64_t sub_1001746D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, int a35, int a36, int a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, _DWORD *a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  v56 = (v54 - 9483);
  v57 = 4 * v52;
  v58 = -778651209 * ((*(*a43 + (*a42 & 0x5FEC0178)) ^ (a41 + 4 * v52)) & 0x7FFFFFFF);
  v59 = v58 ^ HIWORD(v58);
  v60 = -778651209 * v59;
  *(&a51 + v57) ^= (((((~v56 + v52) ^ (v55 - v56)) - 1) & (v56 - v52)) >> 63) ^ v56 & 0x418747CD ^ *(a41 + v57) ^ *(*(&off_100755B60 + a36) + HIBYTE(v60) - 1) ^ *(*(&off_100755B60 + a35) + HIBYTE(v60) + 2) ^ *(*(&off_100755B60 + a34) + HIBYTE(v60) + 4) ^ (v59 * (a37 & 0x8F596FE6 ^ 0xB9B70DE6)) ^ v60 ^ (-1235337193 * ((-778651209 * v59) >> 24)) ^ 1;
  return (*(v53 + 8 * (((v51 - 1 == ((((a37 & 0x8F596FE6) + 4890) | 0x40E) ^ 0x250E)) * ((a37 & 0x8F596FE6) - 3533)) | a37 & 0x8F596FE6)))();
}

uint64_t sub_100174884@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    v4 = a1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(v3 + 8 * ((v5 * ((v2 + 1192944494) & 0xB8E51EFE ^ 0x6C3)) ^ (v2 - 2234))))();
}

uint64_t sub_1001748D8()
{
  (*(v2 + 8 * (v1 ^ 0x2DC0)))(v3);
  *v0 = 0;
  return (STACK[0x580])(13908, 197499219, 4294958795, 4294961678, 4294961640);
}

void sub_100174980(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x329C)))(a1);
  *(STACK[0x870] + 24) = 0;
  sub_100150C94();
}

uint64_t sub_1001749B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v10 = v4 + 32;
  v11 = (v10 ^ v7 ^ v3) + v2;
  v12 = *(a1 + v11 - 15);
  v13 = *(a1 + v11 - 31);
  v14 = a2 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v5 == v10) * v8) ^ v6)))();
}

uint64_t sub_1001749B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v5 = *(STACK[0x910] + 24);
  STACK[0x6D8] = v5;
  return (*(v4 + 8 * (((v5 != 0) * (a4 - 902)) ^ a4)))(a1, a2, a3, 16215976);
}

uint64_t sub_1001749F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x288] = 0;
  STACK[0x230] = 0;
  v68 = (v67 + 1021391274) & 0xC31ECDFF;
  v69 = *(a7 + 8 * ((70 * (a67 == ((((v67 - 1442) | 0x84) + 16258553) ^ v68))) ^ v67));
  HIDWORD(a10) = 197499219;
  STACK[0x2A8] = STACK[0x240];
  return v69(a1, a2, a3, v68, a5, a6, a7, LODWORD(STACK[0x2BC]), a9, a10, a11, 0, a13, a14, a15, a16);
}

uint64_t sub_100174A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v23 = (((&a15 | 0x7DDBA180) - &a15 + (&a15 & 0x82245E78)) ^ 0x25B272E2) * v20;
  a16 = v23 + 170561316;
  a19 = -654855621 - v23;
  a20 = v23 + v22 + 1674576591;
  a17 = a13;
  a18 = &a11;
  v24 = (*(v21 + 8 * (v22 + 7085)))(&a15);
  return (*(v21 + 8 * ((7136 * (a15 == (((v22 + 3110) | 0x800) ^ (v22 + 16253939)))) ^ v22)))(v24);
}

uint64_t sub_100174BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  *a13 = a1;
  v23 = (*(v22 + 8 * (v19 ^ 0x780)))(a18, v20);
  return (*(v22 + 8 * ((19 * (a18 + v21 - (v18 & (2 * a18)) != ((2 * v19) ^ 0x1A819A7C))) ^ v19)))(v23);
}

uint64_t sub_100174D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, unsigned int a15, unsigned int a16, uint64_t a17, uint64_t a18)
{
  v24 = 1875091903 * (((&a14 | 0x30D47817) + (~&a14 | 0xCF2B87E8)) ^ 0x6A1FB95);
  a17 = a11;
  a15 = (v22 ^ 0x747FB6FA) + ((2 * v22) & 0xE8FF6DF4) - 1415774288 + v24;
  a16 = v24 + 7724;
  (*(v23 + 77160))(&a14);
  v25 = 1824088897 * ((&a14 & 0x83E0AD80 | ~(&a14 | 0x83E0AD80)) ^ 0x2476811D);
  a17 = v20;
  a18 = a11;
  a16 = ((2 * v21) & 0xDFDFF7DC) - v25 + (v21 ^ 0xEFEFFBEE) + 1588915868;
  a14 = v25 + 3757;
  (*(v23 + 77048))(&a14);
  v26 = 1824088897 * ((-826744994 - (&a14 | 0xCEB8DF5E) + (&a14 | 0x314720A1)) ^ 0x692EF3C3);
  a17 = v18;
  a18 = a11;
  a14 = v26 + 3757;
  a16 = (v19 ^ 0xEFE5EEFF) + ((2 * v19) & 0xDFCBDDFE) - v26 + 1589574539;
  v27 = (*(v23 + 77048))(&a14);
  return (*(v23 + 8 * ((8151 * (a15 != 16257999)) ^ 0xFF7u)))(v27);
}

uint64_t sub_100174F08()
{
  v3 = *(v2 + 8);
  STACK[0x4C0] = v1;
  return (*(STACK[0x330] + 8 * (((v3 == 0) * ((v0 ^ 0x1B82) - 4730 + ((v0 - 6729) | 0x1841))) ^ v0)))();
}

uint64_t sub_100174F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v64 = STACK[0x320];
  if (LODWORD(STACK[0x320]) == 17168)
  {
    return (*(a64 + 8 * ((a63 + 1994) ^ (1049 * (LODWORD(STACK[0x2C0]) == LODWORD(STACK[0x330]))))))();
  }

  if (v64 == 20706)
  {
    return (*(a64 + 8 * (((LODWORD(STACK[0x9A0]) == 197499227) * ((a63 - 824259820) & 0x31212AB7 ^ 0x77B)) ^ (a63 + 1994))))();
  }

  if (v64 == 33980)
  {
    return (*(a64 + 8 * ((240 * (LODWORD(STACK[0x9B0]) - ((2 * LODWORD(STACK[0x9B0])) & 0xDCE86D8E) + ((a63 - 2146470503) & 0x7FF09FDE ^ 0xFFFFE022) - 294373657 == -294373689)) ^ (a63 + 2086))))();
  }

  return (*(a64 + 8 * (((*(STACK[0x778] + 24) != 0) * (((a63 + 2618) | 0x160) ^ (a63 + 2887))) ^ (a63 + 5088))))();
}

uint64_t sub_100175210()
{
  v4 = (((((v2 - 5884) | 0x1100) ^ 0xEEC920FF ^ *(v1 + 16)) - 1748908938) ^ ((*(v1 + 16) ^ 0xB2EB5BC) + 1915110549) ^ ((*(v1 + 16) ^ 0x1A187F1E) + 1662029367)) + ((v2 - 1448) ^ 0xDDF39B0);
  v5 = (v0 > 0x6B29C4E1) ^ (v4 < 0x94D63B1E);
  v6 = v0 - 1797899490 > v4;
  if (v5)
  {
    v6 = v0 > 0x6B29C4E1;
  }

  return (*(v3 + 8 * ((94 * v6) ^ v2)))();
}

void sub_100175398()
{
  (*(v2 + 8 * (v0 ^ 0x35D2)))();
  *(v1 + 24) = 0;
  JUMPOUT(0x1001753C0);
}

void sub_10017541C(uint64_t a1)
{
  (*(v1 + 77696))();
  (*(v1 + 76832))(a1);
  JUMPOUT(0x100175460);
}

uint64_t sub_1001754C8@<X0>(int a1@<W8>)
{
  STACK[0x4A0] = 0;
  v2 = *(STACK[0x800] + 8);
  STACK[0x6A8] = 0;
  LODWORD(STACK[0x514]) = 0;
  LODWORD(STACK[0x420]) = 197499219;
  return (*(v1 + 8 * (((v2 == 0) * (((a1 - 7861) | 0x619) - 1648)) ^ a1)))();
}

uint64_t sub_100175524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, unsigned int a14, uint64_t a15, char *a16, unsigned int a17, unsigned int a18)
{
  v22 = (&a13 ^ 0x5869D362) * v19;
  a15 = a10;
  a16 = &a11;
  a14 = v22 + 469620298;
  a17 = -654855621 - v22;
  a18 = v22 + v20 + 1674577938;
  v23 = (*(v18 + 8 * (v20 + 8432)))(&a13);
  return (*(v18 + 8 * ((8030 * (a13 == ((v20 + 2943) ^ 0x1746 ^ (v21 + 207)))) ^ v20)))(v23);
}

uint64_t sub_1001755C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  STACK[0xAA8] = v4;
  v6 = STACK[0x500];
  STACK[0xAB0] = STACK[0x500];
  return (*(STACK[0x400] + 8 * ((15336 * (v4 - v6 > (a4 + 1189) - 9239)) ^ a4)))(a1, a2, a3, (v5 + 5));
}

uint64_t sub_10017572C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v65 = STACK[0x600];
  v66 = STACK[0x3C0];
  v67 = 1824088897 * ((v64 + 360742419 - 2 * ((v64 - 232) & 0x15807EFB)) ^ 0x4DE9AD99);
  *(v64 - 216) = v67 - 125652507;
  *(v64 - 212) = 744417810 - v67 + a63;
  *(v64 - 224) = a29;
  *(v64 - 208) = 1461241532 - v67;
  *(v64 - 200) = v66;
  *(v64 - 192) = v65;
  v68 = (*(a64 + 8 * (a63 ^ 0x2FAF)))(v64 - 232);
  v69 = *(v64 - 232);
  LODWORD(STACK[0x900]) = v69;
  return (*(a64 + 8 * ((89 * ((((a63 - 1606) ^ (v69 == 16257999)) & 1) == 0)) ^ (a63 + 1908))))(v68);
}

uint64_t sub_100175810()
{
  v3 = *v1;
  STACK[0x708] = 0;
  STACK[0x478] = 0;
  return (*(v2 + 8 * ((61 * ((((v0 - 6673) ^ (v3 == 0)) & 1) == 0)) ^ v0)))();
}

uint64_t sub_100175890()
{
  v2 = *(STACK[0x858] + 24);
  STACK[0x490] = v2;
  return (*(v1 + 8 * ((((((v0 - 7222) | 0x181C) - 3576) ^ (v0 - 438193515) & 0x1A1E3B7E) * (v2 == 0)) ^ v0)))();
}

uint64_t sub_1001758F4()
{
  v3 = STACK[0x804];
  STACK[0x728] += ((v1 ^ 0x8E2) + 1301029403) & 0xB273DDF9 ^ 0xFFFFFFFFFFFFE2F9;
  v4 = v3 != v0 + (((v1 ^ 0x8E2) - 44379438) & 0x2A515FF) - 1510;
  return (*(v2 + 8 * ((v4 | (8 * v4)) ^ v1 ^ 0x8E2)))();
}

uint64_t sub_1001760E8()
{
  v2 = STACK[0x7C0];
  STACK[0x408] = STACK[0x7C0];
  return (*(v1 + 8 * ((((v0 - 539545751) & 0x2028EFDD ^ 0x23CA) * (v2 == 0)) ^ (v0 + 4477))))();
}

uint64_t sub_100176144@<X0>(int a1@<W8>)
{
  v3 = (*(v2 + 8 * (a1 + 4225)))();
  STACK[0x8B0] = 0;
  return v1(v3);
}

uint64_t sub_100176180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, __int16 a13, char a14, __int16 a15, char a16, uint64_t a17, char a18, int a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, char *a25)
{
  a21 = (v25 - 3677) ^ (((2 * (&a20 & 0x77014BB8) - &a20 - 1996573627) ^ 0xB1087E66) * v27);
  a22 = a10;
  a23 = &a12;
  (*(v28 + 8 * (v25 ^ 0x3F90u)))(&a20);
  a22 = a10;
  a23 = &a16;
  a25 = &a18;
  a24 = (v26 + 657) ^ (1710126949 * (((&a20 | 0xBD441385) - (&a20 & 0xBD441385)) ^ 0x8F5F4815));
  (*(v28 + 8 * (v26 ^ 0x2F1A)))(&a20);
  a21 = (v26 + 551) ^ (((2 * (&a20 & 0x54BC9608) - &a20 - 1421645324) ^ 0x92B5A3D7) * v27);
  a22 = a10;
  a23 = &a14;
  (*(v28 + 8 * (v26 + 6900)))(&a20);
  LODWORD(a23) = v26 - 2008441969 * ((-917680827 - (&a20 | 0xC94D4D45) + (&a20 | 0x36B2B2BA)) ^ 0x7E2BE6B4) + 2984;
  a22 = a10;
  v30 = (*(v28 + 8 * (v26 ^ 0x2FEE)))(&a20);
  return (*(v28 + 8 * ((509 * (a20 == (((v26 - 2401) | 0x403) ^ (v29 + 777)))) ^ v26)))(v30);
}

uint64_t sub_100176354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  v17 = *v14;
  v18 = 1875091903 * ((v11 - 1027664624 - 2 * (v11 & 0xC2BF1510)) ^ 0xF4CA9693);
  *(v16 - 132) = v18 + a10 + a9;
  *(v16 - 128) = v15 + 1579 + v18;
  *(v13 + 16) = v17;
  (*(v12 + 8 * (v15 ^ 0x3DAC)))(v16 - 136);
  v19 = *v14;
  v20 = 1875091903 * ((2 * (v11 & 0x6C7E86D0) - v11 + 327252267) ^ 0x25F4FAA8);
  *(v16 - 132) = v20 + (*v10 ^ 0x261DFEBF) + ((2 * *v10) & 0x4C3BFD7E) - 100747285;
  *(v16 - 128) = v15 + 1579 + v20;
  *(v13 + 16) = v19;
  (*(v12 + 8 * (v15 ^ 0x3DAC)))(v16 - 136);
  v21 = *v14;
  v22 = 956911519 * (((~v11 | 0xC011CC87ADDAC294) + (v11 | 0x3FEE337852253D6BLL)) ^ 0x7AD846A4B8B44D6FLL);
  v23 = v22 + *(v10 + 8) - 0x632958EA97E09F34 - (((v15 + 2064255867) + 0x39AD4E2A55349E1CLL) & (2 * *(v10 + 8)));
  *(v16 - 136) = (v15 - 5123) ^ v22;
  *(v13 + 8) = v23;
  *(v13 + 16) = v21;
  (*(v12 + 8 * (v15 ^ 0x3D7E)))(v16 - 136);
  v24 = *v14;
  v25 = *(v10 + 16);
  v26 = v16 - 136;
  v27 = 956911519 * ((((2 * v11) | 0x17743CE676412CDALL) - v11 - 0xBBA1E733B20966DLL) ^ 0x4E8C6BAFD1B1E668);
  *(v16 - 136) = (v15 - 5123) ^ v27;
  *(v26 + 8) = v27 + v25 - 0x632958EA97E09F34 - ((2 * v25) & 0x39AD4E2AD03EC198);
  *(v26 + 16) = v24;
  (*(v12 + 8 * (v15 ^ 0x3D7E)))(v16 - 136);
  v28 = *v14;
  v29 = *(v10 + 24);
  v30 = v16 - 136;
  v31 = 956911519 * (((v11 | 0x351C394C16DA5F1DLL) - v11 + (v11 & 0xCAE3C6B3E925A0E0)) ^ 0x702A4C90FC4B2F18);
  *(v16 - 136) = (v15 - 5123) ^ v31;
  *(v30 + 8) = v31 + v29 - 0x632958EA97E09F34 - ((2 * v29) & 0x39AD4E2AD03EC198);
  *(v30 + 16) = v28;
  v32 = (*(v12 + 8 * (v15 + 3454)))(v16 - 136);
  return (*(v12 + 8 * ((1873 * (*(v16 - 112) == 16257999)) ^ v15)))(v32);
}

uint64_t sub_1001767F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  *(a22 + 384) = STACK[0x8B8];
  *(a22 + 376) = 1;
  LODWORD(STACK[0x4D4]) = 16257999;
  return (*(v23 + 8 * ((((((v22 - 1140) | 0x178A) ^ 0xF80404) != 16257999) * (((v22 + 1763439434) & 0x96E41FCB) - 6040)) ^ (v22 + 2919))))();
}

uint64_t sub_1001768FC@<X0>(uint64_t a1@<X8>)
{
  v8 = a1 + v1 - 2703;
  *(v6 + v8) = v7 ^ HIBYTE(v2) ^ v4;
  return (*(v5 + 8 * ((16 * (v8 > 0x1E)) | (32 * (v8 > 0x1E)) | v3)))();
}

uint64_t sub_100176A40()
{
  v2 = STACK[0x580];
  STACK[0x548] = *(v1 + 8 * (v0 - 2348));
  return (*(v1 + 8 * ((((((v0 - 65) | 0x46) - 13) ^ 0xBFA ^ ((((v0 - 65) | 0x46) - 13) | 8) ^ 0xBD8) * (v2 == 0)) ^ ((v0 - 65) | 0x46))))();
}

uint64_t sub_100176AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, unsigned int a22, uint64_t a23, char *a24, unsigned int a25, unsigned int a26)
{
  v29 = (((&a21 | 0x740E429E) - &a21 + (&a21 & 0x8BF1BD60)) ^ 0x2C6791FC) * v27;
  a22 = v29 - 829730014;
  a25 = 1032869496 - v29;
  a26 = v29 + v26 + 1674576798;
  a23 = a18;
  a24 = &a15;
  v30 = (*(v28 + 8 * (v26 + 7292)))(&a21);
  return (*(v28 + 8 * ((11281 * (a21 == ((v26 - 1136716117) & 0x36CE ^ 0xF80F3B ^ (2 * (v26 ^ 0xC35))))) ^ v26)))(v30);
}

uint64_t sub_100176CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  LODWORD(STACK[0x25C]) = v25;
  v31 = (((v22 + 67) | 0x100Au) ^ 0x179ABFF90) & (2 * v24);
  v29 = *(*(v27 - 256) + 8 * (v22 ^ (4054 * ((v23 ^ a6) < 8))));
  STACK[0x2B0] = *(v20 + 24);
  return v29(v28, a2, v21, 4958, a5, 0xE49D77DF873DBF7ELL, v26, 0x186483527E1519FELL, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, v24 ^ 0x17FFFF8FBCD5F3CFLL, v31, v20);
}

uint64_t sub_100176DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (*(v72 + 8 * ((a72 - 1504) ^ 0x3449)))(LODWORD(STACK[0x544]) ^ (a72 + 1439577056) & 0xAA31BDFD ^ 0xBC590FA, 0x100004077774924);
  STACK[0xAD8] = v73;
  if (v73)
  {
    a53 = 16257999;
  }

  LODWORD(STACK[0xAE4]) = a53;
  return (*(v72 + 8 * ((26 * (((((a72 + 32) ^ 0xF1) + 1) ^ (v73 == 0)) & 1)) ^ (a72 - 1504))))();
}

uint64_t sub_100176EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v24 = ((&a16 + 742090578 - 2 * (&a16 & 0x2C3B6752)) ^ 0x7452B430) * v22;
  a20 = -654855621 - v24;
  a21 = v24 + v23 + 1674575039;
  a17 = v24 + 1520183258;
  a18 = a14;
  a19 = &a11;
  v25 = (*(v21 + 8 * (v23 + 5533)))(&a16);
  return (*(v21 + 8 * ((5395 * (a16 == ((v23 + 780134145) & 0x2C6929D7) - 728829173)) ^ v23)))(v25);
}

uint64_t sub_100176F6C()
{
  v3 = *v1;
  STACK[0x8D8] = 0;
  STACK[0x3C0] = 0;
  return (*(v2 + 8 * (((((v0 - 2071) | 0x20) - 401) * (v3 == 0)) ^ v0)))();
}

uint64_t sub_10017700C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (v4 - 8076) | 0xBC0;
  LODWORD(STACK[0x300]) = v7;
  return (*(v6 + 8 * (((v5 < v4 - 8095) * (v7 - 2928)) ^ (v4 - 762))))(a1, a2, a3, a4);
}

uint64_t sub_100177164()
{
  v2 = v0 ^ 0x3FB3;
  (*(v1 + 8 * (v0 + 1720)))();
  return (*(STACK[0x400] + 8 * (((((STACK[0x620] == 0) ^ v2) & 1) * ((11 * (v2 ^ 0x21BA)) ^ 0x893)) ^ v2)))();
}

uint64_t sub_1001771C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v6 = a4 - 8617;
  v7 = *(v4 + 8);
  STACK[0x900] = *(v5 + 8 * v6);
  return sub_10013D680(a1, a2, a3, v7);
}

uint64_t sub_1001771FC(uint64_t a1)
{
  *(a1 + 80) = 16640;
  *a1 = 1442350434;
  strcpy((a1 + 8), "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<");
  *(a1 + 73) = 0;
  *(a1 + 74) = 0;
  *(a1 + 76) = 0;
  v2 = STACK[0x408];
  *(v2 + 84) = 7;
  *(v2 + 105) = 0;
  *(v2 + 106) = 0;
  strcpy((v2 + 88), "<<<<<<<<<<<<<<<<");
  *(v2 + 108) = 0;
  *v1 = v2;
  return (STACK[0x728])();
}

uint64_t sub_1001772DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, unsigned int a25)
{
  v27 = *(a7 + 8 * (((a25 > v26) * ((151 * (v25 ^ 0x8A)) ^ 0x242D)) ^ v25));
  STACK[0x270] = STACK[0x2A8];
  LODWORD(STACK[0x25C]) = 16257999;
  return v27();
}

uint64_t sub_100177338()
{
  v2 = *(v1 - 140);
  v3 = v2 + 2900;
  v4 = LODWORD(STACK[0x2D0]) + 189077863;
  v5 = ((v4 & 0x9DD0CCCA) << (v2 + 98)) & (v4 ^ 0xD980EAC2) ^ v4 & 0x9DD0CCCA;
  v6 = ((2 * (v4 ^ 0xC9017246)) ^ 0xA9A37D18) & (v4 ^ 0xC9017246) ^ (2 * (v4 ^ 0xC9017246)) & 0x54D1BE8C;
  v7 = v6 ^ 0x54508284;
  v8 = (v6 ^ 0x91B48C) & (4 * v5) ^ v5;
  v9 = ((4 * v7) ^ 0x5346FA30) & v7 ^ (4 * v7) & 0x54D1BE8C;
  v10 = (v9 ^ 0x5040BA0C) & (16 * v8) ^ v8;
  v11 = ((16 * (v9 ^ 0x491048C)) ^ 0x4D1BE8C0) & (v9 ^ 0x491048C) ^ (16 * (v9 ^ 0x491048C)) & 0x54D1BE80;
  v12 = v10 ^ 0x54D1BE8C ^ (v11 ^ 0x4411A80C) & (v10 << 8);
  v13 = v4 ^ (2 * ((v12 << 16) & 0x54D10000 ^ v12 ^ ((v12 << 16) ^ 0x3E8C0000) & (((v11 ^ 0x10C0160C) << 8) & 0x54D10000 ^ 0x4410000 ^ (((v11 ^ 0x10C0160C) << 8) ^ 0x51BE0000) & (v11 ^ 0x10C0160C))));
  v14 = (v2 - 517) | 0x205;
  v16 = v13 != (v14 ^ 0x1D73A74D) && ((((v3 + 675244291) & 0xD7C07D3F) - 2087) & v13) == 2;
  v17 = *(v0 + 8 * ((1000 * v16) ^ v3));
  *(v1 - 144) = -42899;
  *(v1 - 140) = v14;
  return v17();
}

uint64_t sub_1001774F4@<X0>(int a1@<W8>)
{
  v2 = a1 & 0xEC69EFDF;
  v3 = (v2 + 2413) | 0xC74;
  (*(v1 + 8 * (v2 + 7783)))();
  STACK[0x4C8] = 0;
  return (*(v1 + 8 * (((STACK[0x7A8] != 0) * (((v3 - 5374) | 0x500) - 2822)) ^ v3)))();
}

uint64_t sub_100177568()
{
  v2 = (*(v1 + 8 * (v0 + 4523)))(STACK[0x4A0], 0x100004077774924);
  v3 = STACK[0x330];
  STACK[0x520] = v2;
  return (*(v3 + 8 * (((v2 == 0) * ((v0 - 465) ^ (v0 + 511))) ^ v0)))();
}

uint64_t sub_100177654@<X0>(int a1@<W8>)
{
  v3 = (*(v2 + 8 * (a1 + 6553)))();
  *(v1 + 24) = 0;
  return sub_100177678(v3);
}

uint64_t sub_1001776EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char *a15, int a16, unsigned int a17, int a18)
{
  v21 = 956911519 * ((2 * (&a15 & 0x1E65E548) - &a15 + 1637489328) ^ 0x8B0B6AB5);
  HIDWORD(a15) = v21 + 543642722;
  a16 = v21 ^ 0x61FE7920;
  a17 = 1002199528 - v21;
  a18 = (v19 + 3516) ^ v21;
  (*(v18 + 8 * (v19 + 7508)))(&a15);
  a17 = v19 + 1317436891 * ((&a15 - 1289156786 - 2 * (&a15 & 0xB329074E)) ^ 0x32A9F38) + 6036;
  a15 = &a13;
  v22 = (*(v18 + 8 * (v19 ^ 0x2DE3)))(&a15);
  return (*(v18 + 8 * (((a16 == v20) * ((v19 + 2015176633) & 0x1CFE ^ 0x1143)) ^ v19)))(v22);
}

uint64_t sub_10017786C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  *(v34 - 208) = a3;
  *(v34 - 204) = 1965680252;
  v35 = **(v33 + 8 * (v30 - 4779));
  v36 = 1824088897 * ((0x2B9B12B217EFDC9 - (v32 | 0x2B9B12B217EFDC9) + a30) ^ 0x90C123DF86E8D154);
  *(v34 - 128) = (v30 - 1005083424) ^ v36;
  *(a4 + 88) = v36;
  *(a4 + 72) = v35 ^ v36;
  *(v34 - 168) = v36;
  *(v34 - 144) = v30 - 1005083424 - v36 + 863;
  *(v34 - 160) = v36 + v30 + 1454885161;
  *(v34 - 156) = ((v30 - 1005083424) ^ 2) + v36;
  v37 = (*(v31 + 8 * ((v30 + 4477) ^ 0xCD)))(v34 - 168);
  return (*(v31 + 8 * *(v34 - 164)))(v37);
}

uint64_t sub_100177970()
{
  STACK[0x918] = v1;
  v3 = STACK[0x460];
  STACK[0x920] = STACK[0x460];
  v4 = v1 - v3 > (v0 ^ 0xE0u) - 5986 + (((v0 ^ 0x16F7) - 977) | 0x165u);
  return (*(v2 + 8 * (((2 * v4) | (8 * v4)) ^ v0 ^ 0x16F7)))();
}

uint64_t sub_1001779D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18)
{
  *a6 = 0;
  *a7 = 0;
  a17 = 476323082 - 1710126949 * (&a17 ^ 0x321B5B90);
  v19 = (*(v18 + 77088))(&a17);
  return (*(v18 + 8 * ((627 * (a18 == 16257999)) ^ 0x982u)))(v19);
}

uint64_t sub_100177ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, unsigned int a17, unsigned int a18, uint64_t a19, uint64_t a20)
{
  v25 = 1875091903 * ((1777401401 - (&a16 | 0x69F0FE39) + (&a16 | 0x960F01C6)) ^ 0xA07A8245);
  a17 = (v22 ^ 0xE15DFEBB) + ((2 * v22) & 0xC2BBFD76) + 1052686319 + v25;
  a18 = v25 + 7724;
  a19 = a14;
  (*(v23 + 77160))(&a16);
  v26 = 1824088897 * (((&a16 | 0xF6A235F8) - (&a16 & 0xF6A235F8)) ^ 0xAECBE69A);
  a16 = v26 + 3757;
  a18 = (v21 ^ 0x5FEDFF8B) + ((2 * v21) & 0xBFDBFF16) - v26 - 290002177;
  a19 = v20;
  a20 = a14;
  v27 = (*(v23 + 77048))(&a16);
  return (*(v23 + 8 * ((8137 * (a17 == v24)) ^ 0xFEBu)))(v27);
}

uint64_t sub_100177C3C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *v2 = a1;
  return (*(v3 + 8 * ((((((1317 * ((v1 + 4068) ^ 0x1A2C)) ^ (STACK[0x5B8] == 0)) & 1) == 0) * (((v1 - 522) | 0x20A) - 2607)) ^ (v1 + 4068))))();
}

uint64_t sub_100177CE4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v9 = v4 + 32;
  v10 = (v6 ^ v9) + v2;
  v11 = *(v7 + v10 - 15);
  v12 = *(v7 + v10 - 31);
  v13 = a2 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v8 + 8 * (((v5 == v9) * a1) ^ v3)))();
}

uint64_t sub_100177CEC@<X0>(uint64_t a1@<X6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62)
{
  v63 = *(v62 - 208);
  v64 = v63[1];
  a62[1] = v64;
  *a62 = *v63;
  return (*(a1 + 8 * (((v64 != 0) * ((a2 + 1429537509) & 0xAACADDE1 ^ 0x55F)) ^ a2)))();
}

uint64_t sub_100177DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  if (v22)
  {
    v26 = 1032869496;
  }

  else
  {
    v26 = -1574372683;
  }

  v27 = ((832643036 - (&a17 | 0x31A11FDC) + (&a17 | 0xCE5EE023)) ^ 0x96373341) * v25;
  a19 = a13;
  a20 = &a15;
  a21 = v26 - v27;
  a22 = v27 + v24 + 1674576883;
  a18 = v27 + 1733649567;
  v28 = (*(v23 + 8 * (v24 + 7377)))(&a17);
  return (*(v23 + 8 * ((7570 * (a17 == ((((v24 + 246347591) & 0x10B7F) + 16255524) ^ v24 ^ 0xEDA))) ^ v24)))(v28);
}

uint64_t sub_100177F44()
{
  v2 = *(STACK[0x3E0] + 24);
  STACK[0x810] = v2;
  return (*(v1 + 8 * ((507 * (((v2 == 0) ^ v0) & 1)) ^ v0)))();
}

void sub_100177F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  v16 = *a13;
  *(v14 - 232) = v13 + 1358806181 * ((((2 * (v14 - 232)) | 0xF36E1DE4) - (v14 - 232) + 105443598) ^ 0xC6986271) + 1853;
  *(v14 - 224) = v16;
  (*(v15 + 8 * (v13 + 8150)))(v14 - 232);
  JUMPOUT(0x100178000);
}

uint64_t sub_100178004()
{
  LODWORD(STACK[0x45C]) = v1;
  STACK[0x7D8] = *(v3 + 8 * v0);
  LODWORD(STACK[0x310]) = v2 - 5614;
  LODWORD(STACK[0x300]) = v2 - 5021;
  LODWORD(STACK[0x2F0]) = v2 - 5055;
  LODWORD(STACK[0x2E0]) = v2 - 4572;
  LODWORD(STACK[0x2D0]) = v2 - 5037;
  return sub_1001781CC();
}

uint64_t sub_100178024()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x3CB4u)))(64, 0x100004077774924);
  STACK[0x688] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((v0 + 1721151209) & 0x99693C8E ^ (v0 - 5263))) | v0)))();
}

uint64_t sub_1001780E0@<X0>(uint64_t a1@<X8>)
{
  v3 = (((2 * v1) & 0x6FFDFB7ABB9F34FALL) + (v1 ^ 0xB7FEFDBD5DCF9A7DLL) + a1 + 0x48010242A2306583);
  v4 = (v3[1] << ((v2 ^ 0xF6u) - 59)) | (*v3 << 56) | (v3[2] << 40) | (v3[3] << 32) | (v3[4] << 24) | (v3[5] << 16) | (v3[6] << 8) | v3[7];
  STACK[0x718] = v4 + 0x431A33AA2E6D965FLL - ((2 * v4) & 0x863467545CDB2CBELL);
  return sub_1001781A0();
}

uint64_t sub_1001782D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, unint64_t a21, uint64_t a22, uint64_t a23)
{
  v29 = 1875091903 * (((v23 | 0x9D6A0BB0) - v23 + (v23 & 0x6295F448)) ^ 0xAB1F8833);
  a22 = a15;
  a20 = (v26 ^ 0x62BCFFAE) + ((2 * v26) & 0xC579FF5C) - 1117800708 + v29;
  LODWORD(a21) = v29 + v28 + 3149;
  (*(v27 + 8 * (v28 + 5070)))(&a19);
  v30 = 956911519 * (((v23 | 0x57C321ADA5CCBD27) - (v23 & 0x57C321ADA5CCBD27)) ^ 0x12F554714F5DCD22);
  a19 = (v28 - 3553) ^ v30;
  a21 = v25 - ((2 * v25) & 0x39AD4E2AD03EC198) + v30 + ((v28 - 2288) ^ 0x9CD6A715681F6823);
  a22 = a15;
  (*(v27 + 8 * (v28 ^ 0x34A0)))(&a19);
  v31 = *(v24 + 8);
  v32 = 1824088897 * ((2 * (v23 & 0x71260A0) - v23 + 2028838744) ^ 0x20844C3A);
  v33 = (*v24 ^ 0xDEE7FBFF) - v32 + ((2 * *v24) & 0xBDCFF7FE) + 1874652811;
  a19 = v28 - 818 + v32;
  LODWORD(a21) = v33;
  a22 = v31;
  a23 = a15;
  (*(v27 + 8 * (v28 + 5056)))(&a19);
  v34 = *(v24 + 16);
  v35 = 1824088897 * ((((v23 | 0x17425BBA) ^ 0xFFFFFFFE) - (~v23 | 0xE8BDA445)) ^ 0xB0D47727);
  a22 = *(v24 + 24);
  a23 = a15;
  a19 = v28 - 818 + v35;
  LODWORD(a21) = (v34 ^ 0xFFE4EFCB) - v35 + ((2 * v34) & 0xFFC9DF96) + 1321204415;
  (*(v27 + 8 * (v28 + 5056)))(&a19);
  v36 = *(v24 + 40);
  v37 = 1824088897 * ((((2 * v23) | 0x943D0BF4) - v23 - 1243514362) ^ 0x12775698);
  LODWORD(a21) = (*(v24 + 32) ^ 0x4EA4FFDB) - v37 + ((2 * *(v24 + 32)) & 0x9D49FFB6) - 5457;
  a19 = v28 - 818 + v37;
  a22 = v36;
  a23 = a15;
  v38 = (*(v27 + 8 * (v28 ^ 0x3440)))(&a19);
  return (*(v27 + 8 * ((743 * (a20 == 16257999)) ^ v28)))(v38);
}

uint64_t sub_1001786F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, int a21, unsigned int a22, uint64_t a23, char *a24, unsigned int a25, unsigned int a26)
{
  v29 = ((((2 * (&a21 ^ 0xD01FE6E3)) | 0xBC4D6C00) - (&a21 ^ 0xD01FE6E3) - 1579595264) ^ 0xD6508381) * v27;
  a23 = a16;
  a24 = &a19;
  a25 = -654855621 - v29;
  a26 = v29 + v26 + 1674578036;
  a22 = v29 - 1843823478;
  v30 = (*(v28 + 8 * (v26 ^ 0x21BE)))(&a21);
  return (*(v28 + 8 * ((7490 * (a21 == ((v26 + 1644) ^ 0x1FFB) + ((v26 + 1644) | 0x10D) + 16249543)) ^ v26)))(v30);
}

uint64_t sub_1001787CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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
  return sub_10015CA80(0x126AA61F6F56C0D8, a2, 0x2A5638492DD55EAELL, 0x4C48AAE1C333D048, 0xEAD4E3DB691550A9, 169, 0x64C31C027084DE6CLL, 0x61459D2AF01F24F7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_10017884C()
{
  v2 = *(STACK[0x738] + 24);
  STACK[0x480] = v2;
  return (*(v1 + 8 * ((((1321 * (((v0 + 3511) | 0x2C9) ^ 0x17C9)) ^ 0xA46) * (v2 == 0)) | v0)))();
}

uint64_t sub_100178980(uint64_t a1, uint64_t a2)
{
  v9 = ((v3 - 4972) ^ 0x71BLL) + a2;
  v10 = a2 - 1;
  *(v4 + v10) = *(v5 + v10) ^ *(v6 + v10) ^ (47 * v10) ^ *(v2 + v10) ^ *(v7 + v9) ^ 0x3C;
  return (*(v8 + 8 * ((37 * (v10 != 0)) ^ v3)))();
}

uint64_t sub_100178B2C()
{
  v6 = *v1;
  LODWORD(v5) = v2 + 1358806181 * ((2 * (&v5 & 0x72401C58) - &v5 - 1916804190) ^ 0xB2908F21) - 684;
  (*(v0 + 8 * (v2 + 5613)))(&v5);
  HIDWORD(v6) = v2 - 2089 + 1824088897 * (((&v5 | 0x308DAF57) - (&v5 & 0x308DAF57)) ^ 0x68E47C35) + 1624352635;
  v5 = v4;
  (*(v0 + 8 * (v2 + 5689)))(&v5);
  return (v6 - 16257999);
}

void sub_100178CE4(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unsigned int a6)
{
  a5 = a1;
  a6 = (v7 + 4970) ^ (1824088897 * (&a4 ^ 0x5869D362));
  (*(v6 + 8 * (v7 ^ 0x28BC)))(&a4);
  sub_1001C8858();
}

uint64_t sub_100178E6C@<X0>(_BYTE *a1@<X8>)
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
  return (*(v3 + 8 * (((STACK[0x418] != 0) * ((v1 ^ 0x1C4E) + 1055)) ^ v1)))();
}

uint64_t sub_100178FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  *(v14 - 224) = *a13;
  *(v14 - 232) = v13 + 1710126949 * ((v14 - 1833412130 - 2 * ((v14 - 232) & 0x92B85AC6)) ^ 0xA0A30156) + 6670;
  v16 = (*(v15 + 8 * (v13 + 7581)))(v14 - 232);
  v17 = STACK[0x330];
  v18 = *(a10 + 384);
  v19 = STACK[0x4E8];
  LODWORD(STACK[0x51C]) = STACK[0x880];
  v20 = STACK[0x728];
  STACK[0x598] = &STACK[0xA30] + STACK[0x728];
  STACK[0x728] = v20 + (((v13 ^ 0x1536u) - 5348) ^ 0x800);
  STACK[0x488] = v19;
  STACK[0x530] = 0;
  STACK[0x868] = 0;
  STACK[0x6B0] = v18;
  if (v18)
  {
    v21 = v19 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21;
  return (*(v17 + 8 * (((2 * v22) | (16 * v22)) ^ v13)))(v16);
}

void sub_1001790C8()
{
  STACK[0x550] = 0;
  STACK[0x908] = *(v1 + 8 * (v0 - 5678));
  JUMPOUT(0x1000B2384);
}

uint64_t sub_100179100@<X0>(int a1@<W3>, unint64_t a2@<X8>)
{
  v7 = LOWORD(STACK[0x9CE]);
  if (v7 == 17168)
  {
    goto LABEL_4;
  }

  if (v7 == 33980)
  {
    v9 = STACK[0x528];
    STACK[0x820] = a2;
    LODWORD(STACK[0x564]) = v5;
    STACK[0x5A8] = v9 + v2;
    v8 = v4;
    a1 = 16257999;
    return (*(v6 + 8 * (((a1 == 16257999) * ((v8 ^ 0x3B10) - 4081)) ^ (v8 - 4999))))();
  }

  v8 = v4;
  if (v7 == 20706)
  {
LABEL_4:
    STACK[0x820] = a2;
    LODWORD(STACK[0x564]) = v5;
    a1 = v3 - 338;
    v8 = v4;
  }

  return (*(v6 + 8 * (((a1 == 16257999) * ((v8 ^ 0x3B10) - 4081)) ^ (v8 - 4999))))();
}

uint64_t sub_1001791D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v41 = (a6 - 6335) | 0x203u;
  v42 = 1124 * (v41 ^ 0x789);
  v43 = (v42 - 2198);
  v44 = *(v39 + 8 * ((v43 * (v40 < 0x10)) ^ a6));
  return v44(a1, a2, a3, v42, v41, v44, v43, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_10017926C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, unsigned int a20, unsigned int a21, uint64_t a22, uint64_t a23)
{
  v41 = v28;
  v29 = v27 + 75;
  v30 = 1875091903 * ((&a19 + 1303224019 - 2 * (&a19 & 0x4DAD9ED3)) ^ 0x7BD81D50);
  v31 = v27 + 3572;
  a22 = a14;
  a20 = (v25 ^ 0xEB7DB6AE) + ((2 * v25) & 0xD6FB6D5C) + 882835452 + v30;
  a21 = v27 + 3572 + v30;
  (*(v26 + 8 * (v27 + 5493)))(&a19);
  v32 = 1824088897 * ((((2 * &a19) | 0x35A1CCC6) - &a19 + 1697585565) ^ 0xC2B93501);
  a19 = v27 - 395 + v32;
  a21 = (v24 ^ 0x4FFDEE9E) - v32 + (((v27 + 1550) ^ 0x9FFBCB7A) & (2 * v24)) - 22610964;
  a23 = a14;
  a22 = a11;
  (*(v26 + 8 * (v27 + 5479)))(&a19);
  v33 = 1824088897 * ((813528453 - (&a19 | 0x307D7585) + (&a19 | 0xCF828A7A)) ^ 0x97EB5918);
  a19 = v27 - 395 + v33;
  a21 = (v23 ^ 0xEEA5EAFE) + ((2 * v23) & 0xDD4BD5FC) - v33 + 1610547084;
  a23 = a14;
  a22 = a12;
  (*(v26 + 8 * (v27 + 5479)))(&a19);
  if (a13)
  {
    v34 = -1289881679;
  }

  else
  {
    v34 = -1289881681;
  }

  v35 = ((a13 != 0) ^ 0x6CFEBEFB) + v34;
  v36 = 1875091903 * ((&a19 - 297590837 - 2 * (&a19 & 0xEE431FCB)) ^ 0xD8369C48);
  a22 = a14;
  a20 = v35 + v36;
  a21 = v31 + v36;
  (*(v26 + 8 * (v29 ^ 0x352E)))(&a19);
  if (v41)
  {
    v37 = 538752683;
  }

  else
  {
    v37 = 538752682;
  }

  v38 = 1875091903 * ((2 * (&a19 & 0x4E844888) - &a19 - 1317292170) ^ 0x870E34F5);
  a22 = a14;
  a20 = v38 + v37;
  a21 = v31 + v38;
  v39 = (*(v26 + 8 * (v27 + 5493)))(&a19);
  return (*(v26 + 8 * ((3098 * (a19 == 16257999)) ^ v29)))(v39);
}

uint64_t sub_1001795B4@<X0>(int a1@<W8>)
{
  STACK[0x848] = *(v1 + 8 * a1);
  LODWORD(STACK[0x2E0]) = STACK[0x47C];
  LODWORD(STACK[0x2F0]) = STACK[0x754];
  LODWORD(STACK[0x310]) = 16215971;
  LODWORD(STACK[0x300]) = STACK[0x6C4];
  LODWORD(STACK[0x2D0]) = (LODWORD(STACK[0x32C]) - 100857855) & 0x602FEFF;
  return sub_1000C9418();
}

uint64_t sub_100179640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = 2802 * ((v65 - 490) ^ 0x862);
  (*(v64 + 8 * ((v65 - 490) ^ 0x2DE4)))();
  *(v66 + 24) = 0;
  v69 = (*(a64 + 8 * (v68 + 4000)))(v66);
  LODWORD(STACK[0x4E4]) = v67;
  STACK[0x758] = STACK[0x6E0];
  STACK[0x500] = *(a64 + 8 * (v68 - 5242));
  return sub_10018E908(v69, 16215976);
}

uint64_t sub_1001796C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v64 = LOWORD(STACK[0x8C6]);
  STACK[0x7C0] = STACK[0x8C8];
  return (*(v63 + 8 * (((v64 == 17168) * (107 * (a63 ^ 0xA46) - 1047)) ^ (a63 - 1350))))();
}

uint64_t sub_100179810(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, int a48, int a49, char a50)
{
  v56 = *v54 + v53;
  v57 = **(v54 + 8);
  v58 = 2008441969 * ((v55 - 1684006776 - 2 * ((v55 - 168) & 0x9BA01930)) ^ 0xD3394D3E);
  *(v55 - 140) = (v50 + 3480) ^ v58;
  a4[11] = v57;
  a4[12] = &a50;
  a4[13] = a4;
  a4[9] = &a47;
  a4[7] = v55 - 184;
  *(v55 - 160) = (((v50 - 921199408) & 0x36E87FCE ^ 0x905593D6) + v56 * (((v50 + 310668992) & 0xED7BADDE) + 1528137967)) ^ v58;
  *(v55 - 144) = v58 + v52 - ((2 * v52) & 0x10) + 958279752;
  v59 = (*(v51 + 8 * (v50 + 7598)))(v55 - 168);
  return (*(v51 + 8 * ((233 * (*(v55 - 112) == 16257999)) ^ v50)))(v59);
}

uint64_t sub_10017993C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, int a63)
{
  v64 = (LODWORD(STACK[0x7B0]) ^ 0xBFDD7E77) - 952637522 + ((2 * LODWORD(STACK[0x7B0])) & 0x7FBAFCEE);
  v65 = (v64 ^ 0xFBAD7AFC) - 2092440793;
  v66 = ((v64 ^ (((a63 - 1496697427) & 0x5935DFFB) - 1168989475)) - 1028105461) ^ v64 ^ ((v64 ^ 0xD2362A3C) - 1428376601) ^ ((v64 ^ 0x14DCF435) + 1815506416);
  return (*(a64 + 8 * (((4 * ((v66 ^ v65) == 2266326565)) | (8 * ((v66 ^ v65) == 2266326565))) ^ (a63 + 2298))))();
}

uint64_t sub_100179ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a19 = 1317436891 * (((&a17 | 0x1DFB06E4) - &a17 + (&a17 & 0xE204F918)) ^ 0xADF89E92) + 8154;
  a17 = &a14;
  v21 = (*(v19 + 77096))(&a17);
  return (*(v19 + 8 * ((10826 * (a18 == v20)) ^ 0x8A5u)))(v21);
}

uint64_t sub_100179BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, char a13, int a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, char *a20)
{
  a19 = (v21 - 2544) ^ (((-739300074 - (&a15 | 0xD3EF2D16) + (&a15 | 0x2C10D2E9)) ^ 0x1E0B8979) * v23);
  a20 = &a13;
  a17 = a11;
  a18 = v20;
  (*(v22 + 8 * (v21 ^ 0x3399)))(&a15);
  a17 = a11;
  a18 = &a10;
  a16 = (v21 - 2650) ^ (33731311 * ((-479929121 - (&a15 | 0xE364DCDF) + (&a15 | 0x1C9B2320)) ^ 0x256DE903));
  (*(v22 + 8 * (v21 + 3699)))(&a15);
  a17 = a11;
  LODWORD(a18) = v21 - 2008441969 * ((404744118 - (&a15 ^ 0x7E40317B | 0x181FE7B6) + (&a15 ^ 0x7E40317B | 0xE7E01849)) ^ 0xD1397D3C) - 217;
  v24 = (*(v22 + 8 * (v21 ^ 0x336D)))(&a15);
  return (*(v22 + 8 * ((2769 * (a15 == ((7 * (v21 ^ 0x1759)) ^ 0xF81806))) ^ v21)))(v24);
}

void sub_100179D34()
{
  LODWORD(STACK[0x47C]) = v0;
  LODWORD(STACK[0x754]) = STACK[0x2F0];
  LODWORD(STACK[0x6C4]) = STACK[0x300];
  JUMPOUT(0x100179D54);
}

uint64_t sub_10017A198@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58)
{
  v60 = LODWORD(STACK[0x310]);
  if (v60 == 17168)
  {
    return (*(v59 + 8 * ((a58 + 1573) ^ (3035 * (a3 == 197499223)))))();
  }

  if (v60 == 20706 || (v62 = a58, v60 == 33980))
  {
    STACK[0x410] = a2;
    v58 = 16215638;
    v62 = a58;
  }

  return (*(v59 + 8 * ((3558 * (v58 == v62 + 16253558 + ((v62 - 2536) | 0x608) + 165)) ^ (v62 - 934))))(a1, 16215976);
}

uint64_t sub_10017A2D4()
{
  v2 = *(STACK[0x528] + 24);
  STACK[0x880] = v2;
  return (*(v1 + 8 * (((4 * ((((v0 + 112) ^ 0xD7 ^ (v2 == 0)) & 1) == 0)) & 0xEF | (16 * (((v0 - 3472) ^ 0xDD7 ^ ~(v2 == 0)) & 1))) ^ v0)))();
}

void sub_10017A894()
{
  LODWORD(STACK[0x35C]) = v0;
  LOBYTE(STACK[0x79B]) = STACK[0x310];
  LODWORD(STACK[0x49C]) = STACK[0x2D0];
  JUMPOUT(0x10017A8ACLL);
}

void sub_10017A8C8()
{
  if (v0 == 16215947)
  {
    (*(v2 + 8 * (((*(STACK[0x348] + 97) == 65) * (((v1 - 1464860711) & 0x574FEB33) + 7262)) ^ (v1 - 2849))))();
  }

  else if (v0 == 16257999)
  {
    v3 = *(STACK[0x388] + 24);
    STACK[0x620] = v3;
    (*(v2 + 8 * (((v3 == 0) * ((v1 ^ 0x120D) + 5997)) ^ (v1 - 1668))))();
  }

  else
  {
    sub_10017A8BC();
  }
}

void sub_10017A97C()
{
  v2 = STACK[0x330];
  if (v0 == 16215947)
  {
    v3 = STACK[0x348];
    LODWORD(STACK[0x4D4]) = 1473592423 * *(STACK[0x348] + 16) - 516596334;
  }

  else
  {
    if (v0 != 16257999)
    {
      sub_10017A8BC();
      return;
    }

    v3 = STACK[0x348];
  }

  v4 = *v3;
  STACK[0x6E0] = 0;
  STACK[0x460] = 0;
  (*(v2 + 8 * ((4053 * (((v4 == 0) ^ (v1 + 13)) & 1)) ^ (v1 + 503))))();
}

void sub_10017AA20(uint64_t a1)
{
  *a1 = *v1;
  *(a1 + 4) = *(v1 + 4);
  *(a1 + 5) = *(v1 + 5);
  JUMPOUT(0x100118880);
}

void sub_10017AA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (((a31 - v39) | (v39 - a31)) > ((18 * (v39 ^ 0x20F)) ^ 0xFFFFDAF1))
  {
    v42 = 0x80000000;
  }

  else
  {
    v42 = 0x7FFFFFFF;
  }

  *v40 = v42;
  (*(v41 + 8 * (v39 + 9604)))(a39);
  JUMPOUT(0x10017AAACLL);
}

uint64_t sub_10017ABB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = v13 - 1;
  v23 = (v9 + v22);
  v24 = a1 + v22 + a2;
  v25 = __ROR8__((v9 + v22) & 0xFFFFFFFFFFFFFFF8, 8) + a7;
  v26 = __ROR8__(v25 ^ v19, 8);
  v25 ^= 0xE1AFA7ACF6E0968ELL;
  v27 = (v26 + v25) ^ v20;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = ((v14 | (2 * (v29 + v28))) - (v29 + v28) + 0x5DD837EF7E3E3A91) ^ 0x578539A934117766;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ a6;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x61459D2AF01F24F7;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8) + v35;
  v37 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = v37 - ((2 * v37 + 0x5B38AD8DDB3A7C5CLL) & 0x89E752B3FB5DDBECLL) + 0x72900020EB4C2C24;
  v41 = v40 ^ 0xCF99C25E83E78D67;
  v40 ^= 0xA37B7469EF0E7C16;
  v42 = (__ROR8__(v41, 8) + v40) ^ 0xFB9714BECA2C68E9;
  v43 = __ROR8__(v42, 8);
  v44 = v42 ^ __ROR8__(v40, 61);
  v45 = (((2 * v36) | 0x953D53DE148E1D56) - v36 + a4) ^ 0x2E5DB5ED7AC3D0C7;
  v46 = v45 ^ __ROR8__(v35, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x1A2AEBE44253AF03;
  v48 = ((v18 | (2 * (v43 + v44))) - (v43 + v44) + v16) ^ v12;
  v49 = v48 ^ __ROR8__(v44, 61);
  v50 = __ROR8__(v47, 8) + (v47 ^ __ROR8__(v46, 61));
  v51 = __ROR8__(v48, 8);
  v52 = (v11 - ((v51 + v49) | v11) + ((v51 + v49) | 0xA11B1487180DD3BBLL)) ^ 0x5C9047B9C167908FLL;
  v53 = v52 ^ __ROR8__(v49, 61);
  v54 = __ROR8__(v52, 8);
  v55 = (v54 + v53 - (v17 & (2 * (v54 + v53))) - 0x7E82382C39D64E0ELL) ^ v8;
  v56 = v55 ^ __ROR8__(v53, 61);
  v57 = __ROR8__(v55, 8);
  v58 = STACK[0x370];
  v59 = (v57 + v56 - (a5 & (2 * (v57 + v56))) + 0x9C5006C0ECFC07FLL) ^ a8;
  v60 = v59 ^ __ROR8__(v56, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0x8E4D6ECA343D275ELL;
  *v24 = (((__ROR8__(v61, 8) + (v61 ^ __ROR8__(v60, 61))) ^ a3) >> (8 * (v24 & 7u))) ^ (((v10 - (v50 | v10) + (v50 | 0x4AC0565324D70174)) ^ 0xE1F014810C505D35) >> (8 * (v23 & 7u))) ^ *v23;
  return (*(v21 + 8 * ((5780 * (v22 == 0)) ^ (v15 - 1252))))(v58, a2);
}

void sub_10017AF04()
{
  *&STACK[0x300] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x310] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x2F0] = vdupq_n_s64(0xA03A397A7DAB0203);
  *&STACK[0x2D0] = vdupq_n_s64(0x14FFD55FD52326CCuLL);
  *&STACK[0x2E0] = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  JUMPOUT(0x10017B184);
}

uint64_t sub_10017C684@<X0>(int a1@<W1>, unint64_t a2@<X8>)
{
  v13 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v14 = vdupq_n_s64(0x38uLL);
  v15 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v16 = v10 + v11 + v6;
  v17 = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  v18 = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  v19 = vdupq_n_s64(v8);
  v20 = vdupq_n_s64(v2);
  v21 = vdupq_n_s64(v3);
  v22 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v23 = vdupq_n_s64(v4);
  v24 = vdupq_n_s64(a2);
  v25 = vdupq_n_s64(v5);
  v26 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v27 = vdupq_n_s64(0x64C31C027084DE6CuLL);
  v28 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v29 = vdupq_n_s64(0xAB3042D228875C41);
  v30.i64[0] = v16 - v7 + 3;
  v30.i64[1] = v16 - v7 + 2;
  v31.i64[0] = v16 - v7 + 7;
  v31.i64[1] = v16 - v7 + 6;
  v32.i64[0] = v16 - v7 + 9;
  v32.i64[1] = v16 - v7 + 8;
  v33.i64[0] = v16 - v7 + ((a1 - 49) ^ 0xE58u) - 2795;
  v33.i64[1] = v16 - v7 + 4;
  v34 = vandq_s8(v33, v13);
  v35 = vandq_s8(v32, v13);
  v36 = vandq_s8(v31, v13);
  v37 = vandq_s8(v30, v13);
  v38 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v42 = vaddq_s64(v39, v15);
  v43 = vaddq_s64(v38, v15);
  v44 = veorq_s8(v43, v17);
  v45 = veorq_s8(v42, v17);
  v46 = veorq_s8(v42, v18);
  v47 = veorq_s8(v43, v18);
  v48 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v47);
  v49 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v46);
  v50 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v48, v19), vorrq_s8(v48, v20)), v20), v21);
  v51 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v49, v19), vorrq_s8(v49, v20)), v20), v21);
  v52 = veorq_s8(v51, vsraq_n_u64(vshlq_n_s64(v46, 3uLL), v46, 0x3DuLL));
  v53 = veorq_s8(v50, vsraq_n_u64(vshlq_n_s64(v47, 3uLL), v47, 0x3DuLL));
  v54 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v52), v22);
  v55 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v50, 0x38uLL), v50, 8uLL), v53), v22);
  v56 = vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL);
  v57 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v53, 3uLL), v53, 0x3DuLL));
  v58 = veorq_s8(v54, v56);
  v59 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v58);
  v61 = vaddq_s64(v59, v57);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v60, v23), vorrq_s8(v60, v24)), v24), v25);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v61, v23), vorrq_s8(v61, v24)), v24), v25);
  v64 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v65 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v66 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v64), v26);
  v67 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v65), v26);
  v68 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v69 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v70 = veorq_s8(v66, v68);
  v71 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v72 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v70);
  v73 = veorq_s8(vaddq_s64(v71, v69), v27);
  v74 = veorq_s8(v72, v27);
  v75 = vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL);
  v76 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v77 = veorq_s8(v73, v75);
  v78 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v77);
  v80 = veorq_s8(vaddq_s64(v78, v76), v28);
  v81 = veorq_s8(v79, v28);
  v82 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v83 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v84 = veorq_s8(v80, v82);
  v85 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v86 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v87 = vaddq_s64(v40, v15);
  v120.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v86, v84), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v14)));
  v120.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v85, v83), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v14)));
  v88 = veorq_s8(v87, v17);
  v89 = veorq_s8(v87, v18);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v90, v19), vorrq_s8(v90, v20)), v20), v21);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92), v22);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94);
  v96 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v95, v23), vorrq_s8(v95, v24)), v24), v25);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97), v26);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v27);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v28);
  v103 = vaddq_s64(v41, v15);
  v120.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL))), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v14)));
  v104 = veorq_s8(v103, v17);
  v105 = veorq_s8(v103, v18);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v106, v19), vorrq_s8(v106, v20)), v20), v21);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), v22);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v111, v23), vorrq_s8(v111, v24)), v24), v25);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v26);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v27);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v28);
  v120.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL))), v29), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v14)));
  *(v6 + v9 - 8 - v7) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v16 - v7 + 2)), 0x3C3C3C3C3C3C3C3CLL), *&vqtbl4q_s8(v120, xmmword_10069D310)));
  return (*(v12 + 8 * ((113 * (-v7 != 8 - (((a1 - 49) ^ 0xFFFFFB50) & v6))) ^ (a1 - 49))))();
}

uint64_t sub_10017CC14(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *v12 == 0;
  STACK[0x240] = a1;
  return (*(a7 + 8 * ((((v14 ^ (v13 - 31)) & 1) * ((v13 - 495864095) ^ 0xE271BE31)) ^ v13)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_10017CCC8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v69 = LOWORD(STACK[0x9A2]);
  if (v69 == 17168)
  {
    goto LABEL_4;
  }

  if (v69 == 33980)
  {
    v71 = STACK[0x6F8];
    STACK[0x730] = v65;
    STACK[0x560] = v71 + v66;
    return (*(v68 + 8 * (((a64 - 521) * (a1 == 197499203)) ^ (a64 - 4204))))();
  }

  v70 = a64;
  if (v69 == 20706)
  {
LABEL_4:
    STACK[0x730] = v65;
    v67 = 16215638;
    v70 = a64;
  }

  LODWORD(STACK[0x824]) = v67;
  STACK[0x7F0] = STACK[0x5F0];
  STACK[0x8E0] = *(v68 + 8 * (v70 ^ 0x1722));
  STACK[0x538] = &STACK[0x7F0];
  v64 = STACK[0x7F0];
  STACK[0x818] = STACK[0x7F0];
  return (*(v68 + 8 * ((21 * (v64 != 0)) ^ ((v70 ^ 0x1722) + 8800))))();
}

uint64_t sub_10017CEF8()
{
  v2 = STACK[0x580];
  STACK[0x548] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((((v0 ^ 0xB66) - 13) ^ 0xBFA ^ (((v0 ^ 0xB66) - 13) | 8) ^ 0xBD8) * (v2 == 0)) ^ v0 ^ 0xB66)))();
}

uint64_t sub_10017D228()
{
  v4 = LODWORD(STACK[0x2A0]);
  if (v4 == 17168)
  {
    return (*(STACK[0x330] + 8 * ((LODWORD(STACK[0x32C]) - 2617) ^ (8138 * (v2 == 197499223)))))();
  }

  if (v4 == 20706 || (v6 = STACK[0x32C], v4 == 33980))
  {
    STACK[0x698] = v0;
    v3 = v1 - 338;
    v6 = STACK[0x32C];
  }

  LODWORD(STACK[0x3F4]) = v3;
  STACK[0x670] = *(STACK[0x330] + 8 * (v6 - 5458));
  return sub_1001BBED8(143 * (v6 ^ 0x15E8u));
}

uint64_t sub_10017D358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, int a15)
{
  a14 = 476323082 - 1710126949 * ((((2 * &a14) | 0xB44E539E) - &a14 + 634967601) ^ 0xE83C725F);
  v16 = (*(v15 + 77088))(&a14);
  return (*(v15 + 8 * ((14806 * (a15 == 16257999)) ^ 0x1BFCu)))(v16);
}

uint64_t sub_10017D404()
{
  v2 = *(STACK[0x508] + 24);
  STACK[0x5E8] = v2;
  return (*(v1 + 8 * (((3 * ((v0 + 1973953831) & 0x8A57CCDF ^ 0xB20) - 2605) * (v2 == 0)) ^ v0)))();
}

uint64_t sub_10017D460@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  v57 = (a1 ^ 0xBC59953u) + a22;
  STACK[0x8C8] = v57;
  return (*(v56 + 8 * ((a56 + 2903) ^ (117 * (v57 <= a18)))))();
}

uint64_t sub_10017D4B8()
{
  if (v0 == 16257999)
  {
    v4 = STACK[0x870];
    v5 = *(STACK[0x870] + 8);
    v6 = STACK[0x4C0];
    v6[1] = v5;
    *v6 = *v4;
    return (*(v2 + 8 * (((v5 == 0) * (((v1 - 1322) | 0xE) ^ 0x506)) | (v1 - 1348))))();
  }

  else if (v0 == 16215947)
  {
    return (*(v2 + 8 * ((v1 + 6231) | (16 * (*(STACK[0x558] + 8) != 0)))))();
  }

  else
  {
    return (*(v2 + 8 * ((((((v1 + 1231984040) ^ (*(STACK[0x4C0] + 24) == 0)) & 1) == 0) * ((v1 + 2856) ^ 0x1543)) ^ (v1 + 3207))))();
  }
}

uint64_t sub_10017D5B0@<X0>(int a1@<W8>)
{
  v2 = (a1 + 386107231) & 0xE8FC7BFB;
  (*(v1 + 8 * (a1 ^ 0x2A11)))();
  v3 = STACK[0x330];
  STACK[0x4E8] = 0;
  return (*(v3 + 8 * (((151 * (v2 ^ 0x12EB) - 3584) * (STACK[0x528] != 0)) ^ v2)))();
}

uint64_t sub_10017D69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v80 = *(a72 + 8 * a8);
  v81 = *v78;
  v82 = __ROR8__((v81 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v83 = (v82 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v84 = __ROR8__((v82 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8);
  v85 = (v75 - ((v84 + v83) | v75) + ((v84 + v83) | 0x1EC48F9A8BC8C84FLL)) ^ 0xFA59F8450CF57731;
  v86 = v85 ^ __ROR8__(v83, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (v73 - ((v87 + v86) | v73) + ((v87 + v86) | 0x15BDDEA04F62FFAALL)) ^ 0xE01F2F19FAB24DA3;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0x5963B6C555D97F1FLL;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (v72 - ((v92 + v91) | v72) + ((v92 + v91) | 0x43769D215A5E7E7)) ^ 0x6572F4F8E5BAC310;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = __ROR8__(v93, 8);
  v96 = (((2 * (v95 + v94)) & 0x95D159776768EC9ALL) - (v95 + v94) - 0x4AE8ACBBB3B4764ELL) ^ 0xD1D44F463CCF57DELL;
  v97 = v96 ^ __ROR8__(v94, 61);
  v98 = __ROR8__(v96, 8);
  v99 = (((2 * (v98 + v97)) & 0xD800CF627F7DCE02) - (v98 + v97) + 0x13FF984EC04118FELL) ^ 0x9D573AA8212B7FDLL;
  v100 = v99 ^ __ROR8__(v97, 61);
  v101 = __ROR8__(v99, 8);
  *(v81 + 4) = v77 ^ 0x98 ^ (((((2 * (v101 + v100)) & 0x4CC31BBC7D14A244) - (v101 + v100) + 0x599E7221C175AEDDLL) ^ 0xF2AE30F3E9F2F29CLL) >> (8 * ((v81 + 4) & 7)));
  v102 = __ROR8__((v81 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v103 = ((2 * (v102 - 0x6AF7234D0CC131D5)) | 0x3E48AF211110F5F6) - (v102 - 0x6AF7234D0CC131D5) - 0x1F24579088887AFBLL;
  v104 = v103 ^ 0x56CD15ABE79E9D29;
  v103 ^= 0xFE8BF03C7E68EC75;
  v105 = __ROR8__(v104, 8);
  v106 = (((2 * (v105 + v103)) & 0x42379E9795A534D6) - (v105 + v103) + 0x5EE430B4352D6594) ^ 0xBA79476BB210DAEALL;
  v107 = v106 ^ __ROR8__(v103, 61);
  v108 = __ROR8__(v106, 8);
  v109 = (((2 * (v108 + v107)) | 0xF087926224A8E20ALL) - (v108 + v107) - 0x7843C93112547105) ^ 0x8DE13888A784C30CLL;
  v110 = v109 ^ __ROR8__(v107, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ 0x5963B6C555D97F1FLL;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0x61459D2AF01F24F7;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = __ROR8__(v113, 8);
  v116 = (((2 * (v115 + v114)) | 0x8BD1FBA0C354CF8ELL) - (v115 + v114) - 0x45E8FDD061AA67C7) ^ 0x212BE1D2112EB9ABLL;
  v117 = v116 ^ __ROR8__(v114, 61);
  v118 = (__ROR8__(v116, 8) + v117) ^ v79;
  v119 = __ROR8__(v118, 8) + (v118 ^ __ROR8__(v117, 61));
  *(v81 + 5) = v76 ^ 0x9E ^ (((v74 - (v119 | v74) + (v119 | 0x1B453AE3A5BDDFB3)) ^ 0xB07578318D3A83F2) >> (8 * ((v81 + 5) & 7)));
  return v80();
}

uint64_t sub_10017DAAC(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  LODWORD(STACK[0x47C]) = v1;
  LODWORD(STACK[0x754]) = 197499219;
  LODWORD(STACK[0x6C4]) = 197499219;
  LODWORD(STACK[0x3D4]) = v2;
  return sub_100172380(a1);
}

uint64_t sub_10017DB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 ^ 0x163A) + LODWORD(STACK[0x464]);
  LODWORD(STACK[0x464]) = v5;
  return (*(v4 + 8 * ((7304 * (v5 == (((v3 ^ 0x1DE0) + 1930961490) & 0x8CE7F5F2 ^ 0xFFFFCB55) + (v3 ^ 0x6B0))) ^ v3 ^ 0x1DE0)))(a1, a2, a3, 16257999);
}

uint64_t sub_10017DFCC()
{
  v6 = v2 - 1;
  *(v4 + v6) = *(v0 + v6) ^ (v3 - 116) & 0xEF ^ 0xDA;
  return (*(v5 + 8 * ((11998 * (v6 == 0)) ^ (v1 + v3 + 3145))))();
}

uint64_t sub_10017E038@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v82 = v71 - 1;
  v83 = (v70 + v82);
  v84 = __ROR8__((v70 + v82) & 0xFFFFFFFFFFFFFFF8, 8);
  v85 = a4 - ((v84 + v76) | a3) - ((((a8 + v69) & v68 ^ v73) - v84) | v77);
  v86 = __ROR8__(v85 ^ a5, 8);
  v87 = v85 ^ a6;
  v88 = (v86 + v87) ^ 0xE49D77DF873DBF7ELL;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = __ROR8__(v88, 8);
  v91 = __ROR8__(((a7 & (2 * (v90 + v89))) - (v90 + v89) + v79) ^ v65, 8);
  v92 = ((a7 & (2 * (v90 + v89))) - (v90 + v89) + v79) ^ v65 ^ __ROR8__(v89, 61);
  v93 = (v91 + v92) ^ 0x5963B6C555D97F1FLL;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ v80;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = __ROR8__(v95, 8);
  v98 = (((v97 + v96) & v78 ^ v81) + ((v97 + v96) ^ v67) - (((v97 + v96) ^ v67) & v78)) ^ v75;
  v99 = v98 ^ __ROR8__(v96, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ v66;
  *(a1 + v82 + v72) = (((__ROR8__(v100, 8) + (v100 ^ __ROR8__(v99, 61))) ^ a2) >> (8 * (v83 & 7u))) ^ *v83;
  return (*(a65 + 8 * (((v82 == 0) * v74) ^ a8)))();
}

uint64_t sub_10017E1C4@<X0>(int a1@<W8>)
{
  if (a1 == v2 - 1570)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *v1 = v4;
  return sub_10017E1D4();
}

uint64_t sub_10017E254(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  *a4 = 0;
  *a5 = 0;
  a13 = 476323082 - 1710126949 * ((2 * (&a13 & 0x710C9170) - &a13 + 250834572) ^ 0x3CE8351C);
  v15 = (*(v14 + 77088))(&a13);
  return (*(v14 + 8 * ((13487 * (a14 == 16257999)) ^ 0x172Du)))(v15);
}

uint64_t sub_10017E308@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = (v2 - 164704334) & 0x9D13FDD;
  *v4 = a1;
  *v3 = a2;
  v12 = (v6 + 3277) ^ (1824088897 * ((2 * (&v10 & 0x7F58E400) - &v10 + 10951673) ^ 0x58CEC89B));
  v11 = v9;
  (*(v5 + 8 * (v6 ^ 0x3641)))(&v10);
  v12 = (v6 + 3277) ^ (1824088897 * (&v10 ^ 0x5869D362));
  v11 = v8;
  (*(v5 + 8 * (v6 + 4543)))(&v10);
  return 0;
}

uint64_t sub_10017E458@<X0>(int a1@<W8>)
{
  v5 = ((a1 - 1888) ^ 0xFFFFFFFFFFFFF878) + v2;
  *(v3 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((6360 * (v5 == 0)) ^ a1)))();
}

void sub_10017E4C0()
{
  LODWORD(STACK[0x310]) = v0;
  LODWORD(STACK[0x2D0]) = 16257999;
  JUMPOUT(0x100137A34);
}

uint64_t sub_10017E558()
{
  v9 = (v0 + 4116) ^ (((&v7 - 1356712562 - 2 * (&v7 & 0xAF22358E)) ^ 0xF74BE6EC) * v2);
  v8 = v6;
  (*(v1 + 8 * (v0 ^ 0x350A)))(&v7);
  v8 = v5;
  v9 = (v0 + 4116) ^ (((((&v7 | 0xBD69CD6A) ^ 0xFFFFFFFE) - (~&v7 | 0x42963295)) ^ 0x1AFFE1F7) * v2);
  (*(v1 + 8 * ((v0 + 1010) ^ 0x31F4)))(&v7);
  return (v3 - 16257999);
}

uint64_t sub_10017E670(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *v1 = a1;
  return (*(v3 + 8 * ((39 * ((((v2 + 859) ^ (STACK[0x6E0] == 0)) & 1) == 0)) ^ v2)))();
}

uint64_t sub_10017E798@<X0>(int a1@<W8>)
{
  v6 = LOWORD(STACK[0x8D6]);
  if (v6 == 17168)
  {
LABEL_4:
    STACK[0x478] = v1;
    LODWORD(STACK[0x5F4]) = a1;
    v3 = 16215638;
    goto LABEL_6;
  }

  if (v6 != 33980)
  {
    if (v6 != 20706)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v7 = STACK[0x498];
  STACK[0x478] = v1;
  LODWORD(STACK[0x5F4]) = a1;
  STACK[0x660] = v7 + v2;
  v3 = 16257999;
LABEL_6:
  if (v3 == 16215947)
  {
    return (*(v5 + 8 * (((*(STACK[0x4B0] + 97) == 65) * (((v4 - 1210159759) & 0x48218FD6) - 351)) ^ (v4 + 4169))))();
  }

  if (v3 != 16257999)
  {
    return sub_10017EADC();
  }

  if (*(STACK[0x4B0] + 20) == 1)
  {
    return sub_10017E8CC(STACK[0x4B0]);
  }

  return sub_10017EA98();
}

uint64_t sub_10017E8CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = (v1 - 1739893371) & 0x67B4BAF5;
  LODWORD(STACK[0x340]) = v2;
  LODWORD(STACK[0x360]) = v2 - 6581;
  LODWORD(STACK[0x350]) = v1 ^ 0xA32;
  LODWORD(STACK[0x320]) = (v1 ^ 0x19B0) - 4806;
  LODWORD(STACK[0x330]) = v1 ^ 0x19B0;
  LODWORD(STACK[0x310]) = (v1 ^ 0x19B0) - 4842;
  return sub_1001A598C(a1);
}

uint64_t sub_10017E950@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  v59 = LOWORD(STACK[0x8FE]);
  if (v59 == 17168)
  {
    goto LABEL_5;
  }

  if (v59 != 33980)
  {
    if (v59 != 20706)
    {
      return sub_10017EA98();
    }

LABEL_5:
    STACK[0x540] = v56;
    JUMPOUT(0x10017E9C0);
  }

  v61 = STACK[0x490];
  STACK[0x540] = v56;
  STACK[0x568] = v61 + v57;
  return (*(v58 + 8 * ((2456 * (a1 == ((a56 + 1436062640) & 0xAA67733F ^ 0xBC58849))) ^ (a56 - 696))))();
}

uint64_t sub_10017EB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = *(a5 + 24);
  LODWORD(STACK[0x200]) = v65;
  v68 = *(v66 + 8 * ((467 * (((22 * (v63 ^ 0x1C8A) + 2021812274) ^ v64) < 8)) ^ v63 ^ 0x946));
  STACK[0x3B0] = v67;
  return v68(a63, 0xAB3042D228875C41);
}

uint64_t sub_10017EFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, int a20, unsigned int a21)
{
  a21 = v22 + 1317436891 * ((((2 * &a19) | 0xF391E60) - &a19 - 127700784) ^ 0xB79F1746) + 5867;
  a19 = &a15;
  v23 = (*(v21 + 8 * (v22 + 7350)))(&a19);
  return (*(v21 + 8 * ((7544 * (a20 == (((v22 + 1823) | 0x1D1) ^ 0xF80210))) ^ v22)))(v23);
}

uint64_t sub_10017F0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v24 = ((((2 * &a14) | 0xE0DD7CEE) - &a14 + 261177737) ^ 0xA8076D15) * v21;
  a15 = v24 - 1027597129;
  a16 = a12;
  a17 = &a10;
  a18 = -654855621 - v24;
  a19 = v24 + v20 + 1674577212;
  v25 = (*(v19 + 8 * (v20 + 7706)))(&a14);
  return (*(v19 + 8 * (((a14 == v23) * (((v20 + 1006773652) | 0x81008034) - v22 - 9318)) ^ v20)))(v25);
}

uint64_t sub_10017F180()
{
  v2 = STACK[0x450];
  STACK[0x878] = STACK[0x450];
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 - 51)) & 1) * (((v0 + 920541133) ^ 0x36DE6CFB) - 1650)) ^ v0)))();
}

uint64_t sub_10017F1C8@<X0>(uint64_t a1@<X8>)
{
  v4 = (v2 - 2616) | 0xF80;
  *(a1 + 16) = *v1;
  *(a1 + 88) = *(v1 + 72);
  *(a1 + 92) = *(v1 + 76);
  *(a1 + 96) = *(v1 + 80);
  *(a1 + 97) = *(v1 + 81);
  *(a1 + 120) = *(v1 + 104);
  *(a1 + 100) = *(v1 + 84);
  *(a1 + 124) = *(v1 + 108) & 1;
  *(a1 + 55) = *(v1 + 39) ^ (15 * (v4 ^ 0x2F)) ^ *(*(&off_100755B60 + v4 - 3868) + 7) ^ *(*(&off_100755B60 + v4 - 3691) + 15) ^ *(*(&off_100755B60 + (v4 ^ 0xEDE)) + 6) ^ 0x3C;
  return (*(v3 + 8 * v4))();
}

void sub_10017F2B8()
{
  LODWORD(STACK[0x864]) = v1;
  STACK[0x910] = STACK[0x840];
  STACK[0x778] = *(v2 + 16 * (v0 ^ 0x17FA));
  JUMPOUT(0x1000B01B4);
}

uint64_t sub_10017F4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, int *a20)
{
  a14 = 0;
  a18 = (v20 + 1477) ^ (33731311 * ((((&a17 | 0x75471CCE) ^ 0xFFFFFFFE) - (~&a17 | 0x8AB8E331)) ^ 0xB34E2912));
  a19 = a12;
  a20 = &a14;
  (*(v21 + 8 * (v20 ^ 0x23BE)))(&a17);
  a18 = (v20 + 1477) ^ (33731311 * (((&a17 | 0xC4796B67) + (~&a17 | 0x3B869498)) ^ 0xFD8FA145));
  a19 = a12;
  a20 = &a15;
  (*(v21 + 8 * (v20 + 7826)))(&a17);
  LODWORD(a20) = v20 - 2008441969 * ((2 * (&a17 & 0x4C2BF210) - &a17 + 869535209) ^ 0x7B4D59E7) + 3910;
  a19 = a12;
  v22 = (*(v21 + 8 * (v20 ^ 0x234C)))(&a17);
  return (*(v21 + 8 * (((((v20 + 110) ^ (a17 == 16257999)) & 1) * ((591 * (v20 ^ 0x6D4)) ^ 0x6D7)) ^ v20)))(v22);
}

uint64_t sub_10017F694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v18 - 876) ^ (33731311 * (((&a15 | 0x2DADD13B) + (~&a15 | 0xD2522EC4)) ^ 0x145B1B19));
  a17 = a13;
  a18 = &a11;
  (*(v20 + 8 * (v18 + 5473)))(&a15);
  a17 = a13;
  LODWORD(a18) = v18 - 2008441969 * ((2 * (&a15 & 0x6CF5CC38) - &a15 - 1828047932) ^ 0xDB9367CA) + 1557;
  v21 = (*(v20 + 8 * (v18 ^ 0x3593)))(&a15);
  return (*(v20 + 8 * ((1421 * (a15 == (((v18 - 3912) | 0x522) ^ (v19 + 606)))) ^ v18)))(v21);
}

uint64_t sub_10017F794@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * ((53 * (((v6 == 0) ^ (v4 + 112)) & 1)) ^ (a2 + v4 + 755))))();
}

uint64_t sub_10017F854(uint64_t a1, int a2)
{
  v8 = (v4 - 32);
  v9 = (v5 - 32);
  v10 = *v9;
  *(v8 - 1) = *(v9 - 1);
  *v8 = v10;
  return (*(v7 + 8 * (((v3 == 32) * a2) ^ (v2 + v6))))();
}

void sub_10017F8F8()
{
  LODWORD(STACK[0x47C]) = STACK[0x2E0];
  LODWORD(STACK[0x754]) = STACK[0x2F0];
  LODWORD(STACK[0x6C4]) = STACK[0x300];
  LODWORD(STACK[0x3D4]) = v0;
  JUMPOUT(0x1001BFFF0);
}

uint64_t sub_10017FAB4()
{
  v2 = (*(v1 + 8 * (v0 + 5012)))(32, 0x103004054B5FA7DLL);
  STACK[0x778] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 + 1587) | 0x5A4) - 5013) ^ v0 ^ 0x1844)) ^ v0)))();
}

uint64_t sub_10017FB24()
{
  v1 = STACK[0x2A0];
  if (LODWORD(STACK[0x2A0]) == 17168)
  {
    return (*(v0 + 8 * ((LODWORD(STACK[0x32C]) + 1341) ^ ((LODWORD(STACK[0x230]) != LODWORD(STACK[0x2D0])) | (4 * (LODWORD(STACK[0x230]) != LODWORD(STACK[0x2D0])))))))();
  }

  if (v1 == 20706)
  {
    return (*(v0 + 8 * ((695 * (LODWORD(STACK[0x9F8]) == 190 * (LODWORD(STACK[0x32C]) ^ 0x15F2) + 197498467)) ^ (LODWORD(STACK[0x32C]) + 2756))))();
  }

  if (v1 == 33980)
  {
    return (*(v0 + 8 * ((26 * (LODWORD(STACK[0xA08]) - ((2 * LODWORD(STACK[0xA08])) & 0xDCE86D8E) + 3 * (LODWORD(STACK[0x32C]) ^ 0x1D6F) - 294380292 != -294373689)) ^ (LODWORD(STACK[0x32C]) + 1709))))();
  }

  return sub_10017FD70();
}

uint64_t sub_10017FC54()
{
  if (v0 == 16257999)
  {
    v4 = STACK[0x878];
    v5 = *(STACK[0x878] + 8);
    v6 = STACK[0x820];
    v6[1] = v5;
    *v6 = *v4;
    return (*(v2 + 8 * (((v5 != 0) * (((v1 - 4982) | 0x1120) ^ 0x13AC)) ^ (v1 + 3472))))();
  }

  else if (v0 == 16215947)
  {
    return (*(v2 + 8 * ((47 * (((*(STACK[0x640] + 8) == 0) ^ (v1 + 1)) & 1)) ^ (v1 - 1716))))();
  }

  else
  {
    return sub_10017FD70();
  }
}

uint64_t sub_10017FD08@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x35F7u)))(a1);
  *(STACK[0x878] + 24) = 0;
  return sub_10017FD34();
}

uint64_t sub_10017FD34()
{
  v2 = (*(v1 + 8 * (v0 + 1581)))();
  STACK[0x878] = 0;
  return sub_10017FD70(v2);
}

uint64_t sub_10017FDB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a1 = 0;
  a1[1] = 0;
  *(v64 + 8) = a1;
  v67 = (*(v66 + 8 * (v65 + 1685)))(16, 0x20040A4A59CD2);
  return (*(a64 + 8 * ((35 * ((((v65 ^ 0x47) - 1) ^ (v67 == 0)) & 1)) ^ v65)))();
}

uint64_t sub_10017FE20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a2 + v7 + 0x6049503442230843;
  v21 = v10 - 1;
  v22 = __ROR8__((v9 + v21) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = -2 - (((v13 - v22) | 0x186483527E1519FELL) + ((v22 + ((v12 + 119927139) & v16 ^ v18)) | 0xE79B7CAD81EAE601));
  v24 = v23 ^ v14;
  v25 = v23 ^ a6;
  v26 = (__ROR8__(v24, 8) + v25) ^ a3;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = __ROR8__(((v6 & (2 * (v28 + v27))) - (v28 + v27) + v11) ^ v15, 8);
  v30 = ((v6 & (2 * (v28 + v27))) - (v28 + v27) + v11) ^ v15 ^ __ROR8__(v27, 61);
  v31 = (v29 + v30) ^ 0x5963B6C555D97F1FLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x61459D2AF01F24F7;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((v35 + v34) & v8 ^ a4) + ((v35 + v34) ^ v17) - (((v35 + v34) ^ v17) & v8)) ^ a5;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x1A2AEBE44253AF03;
  *(a1 + v21 + v20) = (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v9 + v21) & 7))) ^ *(v9 + v21);
  return (*(v19 + 8 * ((16 * (v21 != 0)) | ((v21 != 0) << 6) | (v12 - 80))))();
}

uint64_t sub_10017FFA8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x668] = a1;
  *a1 = 5;
  *(a1 + 4) = 0;
  v72 = (*(v71 + 8 * (a71 + 3543)))(120, 0x1000040F604211FLL);
  STACK[0x798] = v72;
  return (*(v71 + 8 * (((((a71 - 110) ^ (v72 == 0)) & 1) * (a71 - 6078)) ^ (a71 + 2763))))();
}

uint64_t sub_10018007C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = (a3 + v3 - 32);
  v9 = *v7;
  v8 = v7[1];
  v10 = (a1 + v3 - 32);
  *v10 = v9;
  v10[1] = v8;
  return (*(v6 + 8 * ((1748 * (v4 - (v3 & 0xFFFFFFE0) == 1104)) ^ (a2 + v5))))();
}

uint64_t sub_100180628()
{
  v4 = (((v2 ^ 0x4A5785A9540F2FFFLL) - 0x4A5785A9540F2FFFLL) ^ ((v2 ^ 0x92BCB2C5301D71C8) + 0x6D434D3ACFE28E38) ^ ((((v1 - 2624) | 0x9A5u) ^ 0x471FC3FCC249480BLL) + (v2 ^ 0xB8E03C033DB6BE52))) + 0x600B0B7037B9DF8CLL;
  v5 = (((v0 ^ 0x615A526EF4F45749) - 0x615A526EF4F45749) ^ ((v0 ^ 0xF89E37E1A1F93A38) + 0x761C81E5E06C5C8) ^ ((v0 ^ 0xF9CF6EE00CA98D14) + 0x630911FF35672ECLL)) + 0x600B0B7037B9DF8CLL;
  v6 = v5 < 0xDE14FF27;
  v7 = v4 < v5;
  if (v6 != v4 < 0xDE14FF27)
  {
    v7 = v6;
  }

  return (*(v3 + 8 * ((10531 * v7) ^ v1)))();
}

uint64_t sub_1001807E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, _DWORD *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43)
{
  v48 = (a12 - 2822) | 0x48;
  v49 = (*(v45 + 8 * (a12 ^ 0x2B47)))(&a43, 0);
  (*(v45 + 8 * (a12 ^ 0x2B1C)))(v49);
  *a35 = (*(v45 + 8 * (a12 ^ 0x2B1C)))();
  v44[1] = *a35 + ((1664525 * (*v44 ^ (*v44 >> 30))) ^ v44[1]);
  *(v46 + 40) = v43 ^ 2;
  *(v46 + 16) = a28;
  v50 = v48 - 694722404 + v43;
  *(v47 - 152) = (v48 + 1745252473) ^ v43;
  *(v47 - 136) = v50;
  *(v47 - 112) = v43 ^ 1;
  *(v47 - 128) = v50 + 36;
  *(v47 - 124) = ((v48 - 694722404) ^ 0x347) + v43;
  v51 = (*(v45 + 8 * (v48 ^ 0x261A)))(v47 - 152);
  return (*(v45 + 8 * *(v47 - 132)))(v51);
}

uint64_t sub_10018091C(uint64_t result)
{
  v4 = *(v1 + 16);
  *result = v3;
  *(result + 8) = v2;
  *(result + 12) = v2;
  *(result + 16) = 0xA11037FC51F1E714;
  *(result + 24) = 16257999;
  *v4 = result;
  *v1 = 16257999;
  return result;
}

uint64_t sub_100180B28(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a2)
  {
    v6 = a5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  return (*(v5 + 8 * ((v7 | (2 * v7)) ^ 0x1AC9u)))();
}

uint64_t sub_100180B50()
{
  v0 = STACK[0x32C];
  v1 = LOWORD(STACK[0x8D6]);
  STACK[0x6C8] = STACK[0x8D8];
  return (*(STACK[0x330] + 8 * ((3054 * (v1 == 17168)) ^ (v0 - 4225))))();
}

uint64_t sub_100180C54(uint64_t a1)
{
  v4 = (*(v3 + 8 * (v2 ^ 0x3705)))(a1, 1207676257);
  *v1 = v4;
  return (*(v3 + 8 * (((v4 == 0) * ((v2 ^ 0x3308) - 8599)) ^ v2)))();
}

uint64_t sub_100180CC4()
{
  v3 = *v1;
  STACK[0x508] = 0;
  STACK[0x740] = 0;
  return (*(v2 + 8 * (((((v0 - 3961) | 0x192) ^ 0x15F4) * (v3 == 0)) ^ v0)))();
}

uint64_t sub_100180D08@<X0>(int a1@<W8>, uint64_t a2, char a3, __int16 a4, char a5, __int16 a6, char a7, uint64_t a8, uint64_t a9, int a10, char a11, int a12, int a13, uint64_t a14, char *a15, unsigned int a16, char *a17)
{
  a13 = (a1 - 987) ^ (((&a12 - 1236850838 - 2 * (&a12 & 0xB647276A)) ^ 0x8FB1ED49) * v19);
  a14 = a8;
  a15 = &a11;
  (*(v18 + 8 * (a1 + 5362)))(&a12);
  a16 = (v17 + 663) ^ (1710126949 * ((896004148 - (&a12 | 0x3567F034) + (&a12 | 0xCA980FCB)) ^ 0xF883545B));
  a14 = a8;
  a15 = &a3;
  a17 = &a7;
  (*(v18 + 8 * (v17 ^ 0x2F00)))(&a12);
  a13 = (v17 + 557) ^ (((2 * (&a12 & 0x7EA737C8) - &a12 - 2124888012) ^ 0xB8AE0217) * v19);
  a14 = a8;
  a15 = &a5;
  (*(v18 + 8 * (v17 ^ 0x2F06)))(&a12);
  a14 = a8;
  LODWORD(a15) = v17 - 2008441969 * ((((&a12 ^ 0xC08A2034 | 0x2B71198A) ^ 0xFFFFFFFE) - (&a12 ^ 0xB001100 | 0xD48EE675)) ^ 0x7CEC9AC5) + 2990;
  v20 = (*(v18 + 8 * (v17 + 6956)))(&a12);
  return (*(v18 + 8 * ((207 * ((((v17 ^ 0x91) + 1) ^ (a12 == ((v17 - 854900607) & 0x32F4BFAF ^ 0xF8196F))) & 1)) ^ v17)))(v20);
}

uint64_t sub_100180FA4@<X0>(int a1@<W8>)
{
  v8 = (a1 + 2164) ^ ((((&v6 | 0x5146C02A) - &v6 + (&v6 & 0xAEB93FD0)) ^ 0x92F1348) * v3);
  v7 = v1;
  (*(v2 + 8 * (a1 + 3430)))(&v6);
  return (v4 - 16257999);
}

uint64_t sub_100181040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v64 = STACK[0x310];
  if (LODWORD(STACK[0x310]) == 43491)
  {
    return (*(a64 + 8 * ((a63 + 215) ^ (11 * (LODWORD(STACK[0x2B0]) != LODWORD(STACK[0x330]))))))();
  }

  if (v64 == 28239)
  {
    return (*(a64 + 8 * ((1984 * (((101 * (a63 ^ 0x77)) ^ (LODWORD(STACK[0xA98]) == ((2 * LODWORD(STACK[0xA98])) & 0x4AB7A8BE))) & 1)) ^ (a63 + 4531))))();
  }

  if (v64 == 47633)
  {
    return (*(a64 + 8 * (((LODWORD(STACK[0xA80]) == 197499227) * ((a63 - 2627) ^ 0x1CC)) ^ (a63 + 5595))))();
  }

  return sub_10018126C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_100181178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v64 == 16257999)
  {
    v68 = STACK[0x538];
    v69 = *(STACK[0x538] + 8);
    v70 = STACK[0x440];
    v70[1] = v69;
    *v70 = *v68;
    return (*(v66 + 8 * (((v69 == 0) * (((v65 - 1946) | 0xD43) + ((v65 - 1504) ^ 0xFFFFF454))) ^ (v65 - 1519))))(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else if (v64 == 16215947)
  {
    return (*(a64 + 8 * (((*(STACK[0x6B0] + 8) == 0) * (((v65 - 344411739) & 0x14874D19) + ((v65 - 321) ^ 0xFFFFFFF3))) ^ (v65 + 6087))))(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    return sub_10018126C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
  }
}

uint64_t sub_100181380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = v64 - 4248;
  *a18 = STACK[0x680];
  *(a18 + 8) = 1;
  v68 = v64 - 5257;
  *(v65 - 224) = *a19;
  *(v65 - 232) = v64 - 4248 + 1358806181 * ((2 * ((v65 - 232) & 0x5EE0148) - (v65 - 232) + 2047999665) ^ 0x453E9232) + 1173;
  (*(v66 + 8 * ((v64 - 4248) ^ 0x2D32)))(v65 - 232);
  return (*(a64 + 8 * (((STACK[0x7F0] == 0) * (v68 ^ 0x132A ^ (463 * (v67 ^ 0x883)))) ^ v67)))();
}

uint64_t sub_100181464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  *v66 = v65;
  *(v65 + 8) = *(x8_0 + 8);
  *(x8_0 + 8) = v65;
  return sub_10018126C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_100181558(uint64_t a1, uint64_t a2)
{
  LOWORD(STACK[0x9BE]) = v2;
  LODWORD(STACK[0x350]) = v2;
  return sub_100140A90(a1, a2, v3 - 8584);
}

uint64_t sub_1001815B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v19 = a6 + v9 + ((v10 - 8439) ^ 0x320);
  v20 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = (v20 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v22 = (__ROR8__((v20 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v21) ^ 0xE49D77DF873DBF7ELL;
  v23 = __ROR8__(v22, 8);
  v24 = v22 ^ __ROR8__(v21, 61);
  v25 = ((v16 & (2 * (v23 + v24))) - (v23 + v24) + v12) ^ a1;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (v27 + v26 - (v14 & (2 * (v27 + v26))) + a2) ^ v17;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x61459D2AF01F24F7;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (v8 - ((v32 + v31) | v8) + ((v32 + v31) | a3)) ^ a4;
  v34 = v9 - 1;
  v35 = v33 ^ __ROR8__(v31, 61);
  v36 = (__ROR8__(v33, 8) + v35) ^ v15;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  *v19 = *(v6 + v34) ^ (((v13 - ((v38 + v37) ^ a5 | v13) + ((v38 + v37) ^ a5 | v7)) ^ v11) >> (8 * (v19 & 7u))) ^ 0x3C;
  return (*(v18 + 8 * ((45 * (v34 != 0)) | (v10 - 6350))))();
}

uint64_t sub_100181718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, unsigned int a14, uint64_t a15, uint64_t a16)
{
  v22 = 1875091903 * ((1395883505 - (&a12 | 0x53337DF1) + (&a12 | 0xACCC820E)) ^ 0x9AB9018D);
  a15 = a9;
  a13 = (v19 ^ 0x79DCB7EF) + ((2 * v19) & 0xF3B96FDE) - 1505755461 + v22;
  a14 = v21 + 2625 + v22;
  (*(v20 + 8 * (v21 + 4546)))(&a12);
  v23 = 1875091903 * (((&a12 | 0x2B5B3615) - &a12 + (&a12 & 0xD4A4C9E8)) ^ 0x1D2EB596);
  a15 = a9;
  a13 = (HIDWORD(v18) ^ 0xE43CB7BB) + ((HIDWORD(v18) << (((v21 - 60) & 0x7C) - 43)) & 0xC8796F76) + v23 + 1004535535;
  a14 = v21 + 2625 + v23;
  (*(v20 + 8 * (v21 ^ 0x3646)))(&a12);
  v24 = 1875091903 * (((&a12 | 0xFBA5EDBE) - (&a12 & 0xFBA5EDBE)) ^ 0xCDD06E3D);
  a15 = a9;
  a13 = (v18 ^ 0x775FFEFF) + ((2 * v18) & 0xEEBFFDFE) - 1464027221 + v24;
  a14 = v21 + 2625 + v24;
  (*(v20 + 8 * (v21 ^ 0x3646)))(&a12);
  v25 = 1824088897 * ((&a12 + 571233158 - 2 * (&a12 & 0x220C5386)) ^ 0x7A6580E4);
  a15 = v16;
  a16 = a9;
  a12 = v25 + v21 - 1342;
  a14 = (v17 ^ 0x7FF5FBDE) + ((2 * v17) & 0xFFEBF7BC) - v25 - 827396436;
  v26 = (*(v20 + 8 * (v21 ^ 0x3674)))(&a12);
  return (*(v20 + 8 * (((2 * (a13 == 16257999)) | (4 * (a13 == 16257999))) ^ v21)))(v26);
}

uint64_t sub_100181994()
{
  LODWORD(STACK[0x4A4]) = v0 + 49;
  v3 = (*(v2 + 8 * (v1 + 5091)))(49);
  v4 = STACK[0x400];
  STACK[0x5F8] = v3;
  return (*(v4 + 8 * ((93 * (v3 != 0)) ^ v1)))();
}

uint64_t sub_1001819F0()
{
  STACK[0x860] = 0;
  v3 = STACK[0x580];
  STACK[0x540] = *(v2 + 8 * (v1 - 8405));
  return sub_1001307C8(v3);
}

uint64_t sub_100181A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a14 = ((v17 ^ 0x23145C03) + 627) ^ (33731311 * (((&a13 | 0xF62FDACB) - (&a13 & 0xF62FDACB)) ^ 0xCFD910E8));
  a15 = a10;
  a16 = &a12;
  (*(v16 + 8 * (v17 ^ 0x23147343)))(&a13);
  LODWORD(a16) = (v17 ^ 0x23145C03) - 2008441969 * (&a13 ^ 0x4899540E) + 3060;
  a15 = a10;
  v18 = (*(v16 + 8 * (v17 ^ 0x231473B1)))(&a13);
  return (*(v16 + 8 * ((25 * ((((v17 ^ 3) + 8) ^ (a13 == (((v17 ^ 0x23145C03) + 18086913) | 0x22005000) - 572277339)) & 1)) ^ v17 ^ 0x23145C03)))(v18);
}

uint64_t sub_100181B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  LODWORD(STACK[0x694]) = v4;
  v5 = STACK[0x680];
  STACK[0x888] = STACK[0x680];
  return (*(STACK[0x400] + 8 * ((168 * (((v5 == 0) ^ (a4 - 70)) & 1)) ^ a4)))(a1, a2, a3, 16215976);
}

uint64_t sub_100181C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, int a14, unsigned int a15)
{
  a13 = &a9;
  a15 = 1317436891 * (((&a13 ^ 0x34865BB7) - 1137388041 - 2 * ((&a13 ^ 0x34865BB7) & 0xBC34D5F7)) ^ 0x38B11636) + 8154;
  v17 = (*(v15 + 77096))(&a13);
  return (*(v15 + 8 * ((3696 * (a14 == 16257999)) ^ v16)))(v17);
}

uint64_t sub_100181CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v13 = (((v7 ^ 0x2D5EF2F7FDFE104CLL) & (2 * a4)) + (a4 ^ 0x56AF797BFEFF1A36) + v5 - 0x56AF797BFEFF1A36);
  v14 = (*v13 << 24) | (v13[1] << 16) | (v13[2] << 8);
  v15 = (v14 | v13[3]) + 197499219 - 2 * ((v14 | v13[3]) & v8 ^ v13[3] & 0xC);
  v16 = ((2 * (a4 + 4)) & 0x6DF67D7B2C59FCEELL) + ((a4 + 4) ^ 0x76FB3EBD962CFE77) + v5 - 0x76FB3EBD962CFE77;
  v17 = (_byteswap_ushort(*v16) - 2 * (_byteswap_ushort(*v16) & 0x3E9E ^ *(v16 + 1) & 0xA) + 16023);
  switch(v17)
  {
    case 28242:
      STACK[0x570] = v5 + v6;
      STACK[0x658] = v4;
      return (*(v12 + 8 * (((v15 != (v10 ^ 0x25E4) + 197498767) * (11 * (v10 ^ 0x2441) - 996)) ^ (v10 - 7909))))();
    case 47636:
      return (*(v12 + 8 * ((v9 == v10 + 197489979) | (v10 - 8254))))(a1, a2, a3, (v11 + 5));
    case 43494:
      return (*(v12 + 8 * ((4147 * (v9 == ((1931 * (v10 ^ 0x2423)) ^ 0xBC58FF6))) ^ (v10 - 8254))))(a1, a2, a3, (v11 + 5));
    default:
      return sub_100032778(a1, a2, a3, v11 + 5);
  }
}

uint64_t sub_1001820F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v68 - 224) = (v65 - 2140798744) ^ (914963389 * ((((2 * (v68 - 232)) | 0x64960514) - (v68 - 232) - 843776650) ^ 0x1EB7B3F1));
  v69 = (*(v64 + 8 * (v65 + 7004)))(v68 - 232);
  *(v67 + 8) = *(v68 - 232) ^ v66;
  return (*(a64 + 8 * ((v65 + 765) ^ 0xAu)))(v69);
}

void sub_1001821B8()
{
  *(v2 - 224) = (v1 - 2140798744) ^ (914963389 * (((((v2 - 232) ^ 0x1689709E) & 0x50A15172) + ((v2 - 232) ^ 0xE9768F61) - (((v2 - 232) ^ 0xE9768F61) & 0x50A15172)) ^ 0x952B6F68));
  (*(v0 + 8 * (v1 + 7004)))(v2 - 232);
  JUMPOUT(0x100182258);
}

uint64_t sub_10018229C@<X0>(uint64_t a1@<X8>)
{
  LODWORD(STACK[0xAA4]) = v2;
  STACK[0xAA8] = v3;
  return (*(v4 + 8 * ((a1 == 0) | v1)))();
}

uint64_t sub_1001822BC()
{
  v5 = (v0 + 1848053134) & 0x11D8FDC3;
  *v2 = v10;
  v13 = v11;
  v14 = (v5 + 4119) ^ (((((&v12 | 0x866D4258) ^ 0xFFFFFFFE) - (~&v12 | 0x7992BDA7)) ^ 0x21FB6EC5) * v3);
  v6 = v5 + 5385;
  v7 = 2 * (v5 ^ 0x1BA0);
  (*(v4 + 8 * v6))(&v12);
  v13 = v9;
  v14 = (v7 + 2644) ^ (((&v12 & 0x889AD7C9 | ~(&v12 | 0x889AD7C9)) ^ 0x2F0CFB54) * v3);
  (*(v4 + 8 * (v7 + 3910)))(&v12);
  return (v1 - 16257999);
}

uint64_t sub_100182438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, char a11, uint64_t a12, uint64_t a13, int a14, int a15, char *a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = 1875091903 * (((&a14 | 0x9656FBAD) - (&a14 & 0x9656FBAD)) ^ 0xA023782E);
  a17 = a10;
  a15 = ((2 * v19) & 0x667B7D76) + v22 + (v19 ^ 0x333DBEBB) - 320931857;
  LODWORD(a16) = v22 + 7724;
  (*(v21 + 77160))(&a14);
  v23 = 1824088897 * ((((&a14 ^ 0xAA88098) & 0x5ABFCE9E) + (&a14 ^ 0x55575F46) - ((&a14 ^ 0x55575F46) & 0x5ABFCE9E)) ^ 0x578142BA);
  a16 = a10;
  a17 = &a11;
  a18 = -654855621 - v23;
  a19 = v23 + 1674579114;
  a15 = v23 - 2100247884;
  v24 = (*(v21 + 76864))(&a14);
  return (*(v21 + 8 * ((14 * (((a14 == v20) ^ 0x3D) & 1)) ^ 0xB15u)))(v24);
}

uint64_t sub_1001825D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 4);
  *(a2 + 20) = v5;
  return (*(v4 + 8 * (((v5 == ((732 * ((v3 - 276) ^ 0x1437)) ^ 0x2250)) * ((v3 - 276) ^ 0x2096)) ^ (v3 - 276))))(a1, 16215976);
}

uint64_t sub_10018262C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x6F8] = v64 + 8;
  v67 = STACK[0x748];
  LODWORD(STACK[0x394]) = STACK[0x7B4];
  STACK[0x848] = v67;
  STACK[0x5A0] = 0;
  LODWORD(STACK[0x470]) = 197499219;
  LOWORD(STACK[0x48E]) = -11161;
  LODWORD(STACK[0x62C]) = 197499219;
  LODWORD(STACK[0x89C]) = 197499219;
  STACK[0x588] = 0x4789E5A74F535ADDLL;
  STACK[0x4E8] = 0;
  v68 = (*(v66 + 8 * (v65 ^ 0x6A6)))(16, 0x20040A4A59CD2);
  STACK[0x6E0] = v68;
  return (*(a64 + 8 * ((((((v65 - 6330) ^ (v68 == 0)) & 1) == 0) * (v65 ^ 0x233B)) ^ v65)))();
}

void sub_1001826F4(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x1000A8840);
}

uint64_t sub_100182714@<X0>(unint64_t a1@<X8>)
{
  STACK[0x598] = a1;
  v3 = (*(v2 + 8 * (v1 + 7913)))(32, 0x103004054B5FA7DLL);
  STACK[0x658] = v3;
  return (*(v2 + 8 * (((v3 != 0) * ((((v1 + 4113) | 0x101) - 227) ^ v1 ^ 0x11E5)) ^ v1)))();
}

uint64_t sub_100182780@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v59 = a1 ^ 0x577;
  (*(v58 + 8 * (a1 ^ 0x32E3)))(v57);
  STACK[0x3C0] = 0;
  return (*(a57 + 8 * (((((v59 - 738671603) & 0x2C073BFF ^ 0xFFFFEA03) + ((v59 - 3588) | 0x3E3)) * (STACK[0x600] == 0)) | v59)))();
}

uint64_t sub_100182A88()
{
  (*(v2 + 8 * (v0 & 0xB691757F ^ 0x30F6)))();
  *(v1 + 24) = 0;
  return sub_1001C7750();
}

uint64_t sub_100182AC4@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v8 = LOWORD(STACK[0x940]);
  if (v8 == 17168)
  {
    goto LABEL_4;
  }

  if (v8 == 33980)
  {
    v10 = STACK[0x690];
    STACK[0x590] = v2;
    LODWORD(STACK[0x7E4]) = a2;
    return (*(v7 + 8 * (((v10 + v4 != 0) * (((v6 - 2026) | 0x1002) ^ 0x121B)) ^ (v6 + 5463))))();
  }

  v9 = v6;
  if (v8 == 20706)
  {
LABEL_4:
    STACK[0x590] = v2;
    v3 = 16215638;
    v9 = v6;
  }

  STACK[0x7A0] = 0;
  LODWORD(STACK[0x7E4]) = 197499219;
  return (*(v7 + 8 * (((v3 == v5) * (850 * (v9 ^ 0xA48) - 1697)) | (850 * (v9 ^ 0xA48)))))(a1, 16215976);
}

uint64_t sub_100182BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(STACK[0x870] + 24);
  STACK[0x4C8] = v5;
  return (*(v4 + 8 * (((v5 == 0) * ((v3 + 5096) ^ (v3 + 2406) ^ 0x3DCA)) ^ v3)))(a1, a2, a3, 16215976);
}

uint64_t sub_100182C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = ~v4 + a2;
  v10 = *(v7 + v9 - 15);
  v11 = *(v7 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * (((v5 + v4 == v2) * v6) ^ (v3 + 1949))))();
}

uint64_t sub_100182CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, char *a16)
{
  a14 = (v16 + 1355) ^ (33731311 * ((2 * (&a13 & 0x655625A8) - &a13 + 447339088) ^ 0x235F1073));
  a15 = a12;
  a16 = &a10;
  (*(v17 + 8 * (v16 ^ 0x2238u)))(&a13);
  LODWORD(a16) = v16 - 2008441969 * ((-1315476372 - (&a13 | 0xB1976C6C) + (&a13 | 0x4E689393)) ^ 0x6F1C79D) + 3788;
  a15 = a12;
  v19 = (*(v17 + 8 * (v16 + 7754)))(&a13);
  return (*(v17 + 8 * (v16 | (8 * (((v16 - 86) ^ (a13 == v18)) & 1u)))))(v19);
}

uint64_t sub_100182DEC@<X0>(unint64_t a1@<X8>)
{
  STACK[0x740] = *(v5 + 8 * v1);
  STACK[0x950] = v2;
  LODWORD(STACK[0x6BC]) = v3;
  STACK[0x828] = a1;
  STACK[0x658] = 0;
  LODWORD(STACK[0x494]) = 197499219;
  STACK[0x788] = 0x431A33AA2E6D965FLL;
  STACK[0x570] = 0;
  v6 = (*(v5 + 8 * (v4 ^ 0x2AC0)))(16, 0x20040A4A59CD2);
  v7 = STACK[0x400];
  STACK[0x5B0] = v6;
  return (*(v7 + 8 * (((v6 == 0) * ((68 * (v4 ^ 0xFEA) - 6730) ^ (v4 - 1426))) ^ v4)))();
}

uint64_t sub_100182EA8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v65 = (a1 ^ 0xBC59953u) + a64;
  STACK[0x920] = v65;
  return (*(v64 + 8 * ((a56 + 1552) ^ (53 * (v65 > a20)))))();
}

void sub_100182F88(uint64_t a1)
{
  *a1 = *v1;
  *(a1 + 4) = *(v1 + 4);
  *(a1 + 5) = *(v1 + 5);
  JUMPOUT(0x1000EE334);
}

uint64_t sub_1001831A4(uint64_t a1)
{
  v5 = (v1 + 1313207367) & 0xB1BA1DDF;
  *v3 = a1;
  *v2 = v7;
  v12 = (v5 + 702) ^ (1824088897 * ((((&v10 | 0x7477634E) ^ 0xFFFFFFFE) - (~&v10 | 0x8B889CB1)) ^ 0xD3E14FD3));
  v11 = v8;
  (*(v4 + 8 * (v5 + 1968)))(&v10);
  v11 = v9;
  v12 = ((v5 ^ 0x1146) + 5120) ^ (1824088897 * ((2 * (&v10 & 0x46416098) - &v10 - 1178689690) ^ 0xE1D74C04));
  (*(v4 + 8 * (v5 ^ 0x3850)))(&v10);
  return 0;
}

uint64_t sub_1001832F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x91E]) = v63;
  LODWORD(STACK[0x310]) = v63;
  return sub_10012B9DC(a1, a63 - 2288, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_10018330C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = (*(v65 + 8 * (v64 + 2843)))(128, 0x10800400FED9166);
  STACK[0x4B0] = v66;
  return (*(a64 + 8 * (((v66 == 0) * (((v64 - 1216496908) & 0x48822BE6) + ((v64 + 567733533) & 0xDE28FEFF) - 1971)) ^ v64)))();
}

uint64_t sub_1001833AC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = a2 - 1993;
  v4 = (a2 - 844040789) & 0x324F01EE;
  v5 = a2 + 3197;
  v6 = STACK[0x4C8];
  STACK[0x3B8] = *(v2 + 8 * v3);
  return (*(v2 + 8 * (((v6 == 0) * (v4 - 6)) ^ v5)))(a1, 16215976);
}

uint64_t sub_10018346C()
{
  LOWORD(STACK[0x8E6]) = v2;
  LODWORD(STACK[0x2A0]) = v2;
  return (*(STACK[0x330] + 8 * (v1 - 5327)))();
}

void sub_100183494()
{
  *v1 = 0;
  *v0 = 0;
  JUMPOUT(0x1000F2DC8);
}

uint64_t sub_1001834D4()
{
  STACK[0x6E0] = v0;
  LODWORD(STACK[0x574]) = STACK[0x420];
  return (*(v2 + 8 * (((STACK[0x6B8] == 0) * (29 * ((v1 + 347997488) & 0xEB41F7FF ^ 0x17CF) - 79)) ^ v1)))();
}

uint64_t sub_10018356C@<X0>(int a1@<W8>)
{
  v2 = a1 + 44;
  v3 = (v2 ^ 0xA6A) + LODWORD(STACK[0x5C4]);
  LODWORD(STACK[0x5C4]) = v3;
  return (*(v1 + 8 * (((v3 == (v2 ^ 0xA6B)) * ((v2 + 11) ^ 0x10D8)) ^ v2)))();
}

uint64_t sub_10018361C@<X0>(int a1@<W8>)
{
  v5 = LOWORD(STACK[0x942]);
  if (v5 == 17168)
  {
    goto LABEL_4;
  }

  if (v5 == 33980)
  {
    v7 = STACK[0x4F8];
    STACK[0x7F8] = v1;
    LODWORD(STACK[0x7E4]) = a1;
    return (*(v4 + 8 * (((v7 + v2 == 0) * ((v3 ^ 0x12AA) - 5388)) ^ (v3 + 5013))))();
  }

  v6 = v3;
  if (v5 == 20706)
  {
LABEL_4:
    STACK[0x7F8] = v1;
    v6 = v3;
  }

  STACK[0x7A0] = 0;
  LODWORD(STACK[0x7E4]) = 197499219;
  return (*(v4 + 8 * ((59 * (((*STACK[0x878] == 0) ^ (((v6 - 113) ^ 0xC8) - 108)) & 1)) ^ (v6 + 399))))();
}

uint64_t sub_1001836B4()
{
  (*(v3 + 8 * (v1 + 5620)))(v2);
  *v0 = 0;
  return (STACK[0x778])(LODWORD(STACK[0x3B0]), 2957007803, 4294961329, 7479, 4294961230);
}

uint64_t sub_100183760@<X0>(int a1@<W8>)
{
  STACK[0x988] = v1;
  v2 = STACK[0x6C8];
  STACK[0x990] = STACK[0x6C8];
  return (*(STACK[0x330] + 8 * (((v1 - v2 > 9) * ((((a1 - 1385) | 0x140) + 3534) ^ (a1 - 158396287) & 0x970FFFF)) ^ a1)))();
}

uint64_t sub_1001837B8()
{
  STACK[0x668] = 0;
  STACK[0x4C8] = 0;
  return (*(v1 + 8 * ((3314 * (LODWORD(STACK[0x67C]) == ((v0 + 1985612020) & 0x89A5FDC9 ^ 0xF802C7))) ^ (v0 + 1805))))();
}

uint64_t sub_100183814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v28 = LODWORD(STACK[0x32C]) + 3283;
  v29 = (v27 ^ 0xBC59953u) + a27;
  STACK[0x888] = v29;
  return (*(STACK[0x330] + 8 * (v28 ^ (39 * (v29 > a19)))))();
}

uint64_t sub_1001839B0(uint64_t a1)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFF3AFLL ^ (8 * v4) ^ 0x2BD0u) + v2;
  *(a1 - 7 + v6) = *(v1 - 7 + v6);
  return (*(v5 + 8 * ((6730 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_100183A08@<X0>(int a1@<W8>)
{
  v3 = STACK[0x7C0];
  STACK[0x600] = v1 + 116;
  STACK[0x650] = v3;
  return (*(v2 + 8 * (((v3 == 0) * ((a1 ^ 0xFFFFEFF0) + a1 + 4099)) | a1)))();
}

void sub_100183AF8()
{
  STACK[0x538] = 0;
  STACK[0x7F8] = 0;
  STACK[0x3D8] = *(v1 + 8 * (v0 ^ 0x22C6));
  JUMPOUT(0x1001B563CLL);
}

uint64_t sub_100183B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, unsigned int a16)
{
  a15 = a11;
  a16 = (v16 + 6276) ^ (1824088897 * (&a14 ^ 0x5869D362));
  (*(v17 + 8 * (v16 ^ 0x2D9A)))(&a14);
  a16 = (v16 + 6276) ^ (1824088897 * ((((&a14 | 0xDE6D0146) ^ 0xFFFFFFFE) - (~&a14 | 0x2192FEB9)) ^ 0x79FB2DDB));
  a15 = a10;
  v19 = (*(v17 + 8 * (v16 ^ 0x2D9A)))(&a14);
  return (*(v17 + 8 * ((4266 * (v18 == ((v16 - 335751194) & 0xF7BFBBFF) + 490436563)) ^ v16)))(v19);
}

uint64_t sub_100183C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v61 = (v49 - v51 + 26);
  v53 = (*(v52 + 8 * (v50 ^ 0x2B44)))();
  return (*(STACK[0x330] + 8 * (((v53 != 0) * (v50 - 4841 + ((v50 - 2786) | 9))) ^ v50)))(v53, a2, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, v61, a48, a49);
}

uint64_t sub_100183E1C()
{
  v9 = *(v8 + 8 * v5);
  v10 = *v6;
  v11 = __ROR8__((v10 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v12 = (v11 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v13 = __ROR8__((v11 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8);
  v14 = (v3 - ((v13 + v12) | v3) + ((v13 + v12) | 0x1EC48F9A8BC8C84FLL)) ^ 0xFA59F8450CF57731;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (v1 - ((v16 + v15) | v1) + ((v16 + v15) | 0x15BDDEA04F62FFAALL)) ^ 0xE01F2F19FAB24DA3;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x5963B6C555D97F1FLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (v0 - ((v21 + v20) | v0) + ((v21 + v20) | 0x43769D215A5E7E7)) ^ 0x6572F4F8E5BAC310;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) & 0x95D159776768EC9ALL) - (v24 + v23) - 0x4AE8ACBBB3B4764ELL) ^ 0xD1D44F463CCF57DELL;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0xD800CF627F7DCE02) - (v27 + v26) + 0x13FF984EC04118FELL) ^ 0x9D573AA8212B7FDLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  *(v10 + 4) = v7 ^ 0x98 ^ (((((2 * (v30 + v29)) & 0x4CC31BBC7D14A244) - (v30 + v29) + 0x599E7221C175AEDDLL) ^ 0xF2AE30F3E9F2F29CLL) >> (8 * ((v10 + 4) & 7)));
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
  *(v10 + 5) = v4 ^ 0x9E ^ (((v2 - (v48 | v2) + (v48 | 0x1B453AE3A5BDDFB3)) ^ 0xB07578318D3A83F2) >> (8 * ((v10 + 5) & 7)));
  return v9();
}

uint64_t sub_100184250@<X0>(int a1@<W8>)
{
  STACK[0x420] = 0;
  v2 = *(STACK[0x4B8] + 8);
  STACK[0x710] = 0;
  LODWORD(STACK[0x7B0]) = 0;
  LODWORD(STACK[0x5DC]) = 197499219;
  return (*(v1 + 8 * (((v2 == 0) * (((a1 - 6645) | 0x1002) - 4166)) ^ a1)))();
}

uint64_t sub_1001842DC@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, char a3@<W2>, int a4@<W3>, int a5@<W8>, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41)
{
  v50 = *(v48 + 8 * (a41 + a4));
  v51 = (v41 + 4 + a5);
  v52 = *(v49 + 8 * v43) - 8;
  v53 = *(v49 + 8 * v44);
  v54 = *(v49 + 8 * v45) - 4;
  *(a1 + v51) = *(v52 + (v51 & 0xC)) ^ HIBYTE(v42) ^ (((v41 + 4 + a5) & 0xC) * v46) ^ *(v53 + (v51 & 0xC)) ^ *((v51 & 0xC) + *(v49 + 8 * v45)) ^ v47;
  *(a1 + (v51 + 1)) = (((v51 + 1) & a2) * v46) ^ BYTE2(v42) ^ *(v53 + ((v51 + 1) & a2)) ^ *(v52 + ((v51 + 1) & a2)) ^ *(((v51 + 1) & a2) + v54 + 4) ^ 0x22;
  *(a1 + (v51 + 2)) = (((v51 + 2) & 0xE) * v46) ^ BYTE1(v42) ^ *(v53 + ((v51 + 2) & 0xELL)) ^ *(v52 + ((v51 + 2) & 0xELL)) ^ *(((v51 + 2) & 0xELL) + v54 + 4) ^ 0x8F;
  *(a1 + (v51 + 3)) = v42 ^ ((v51 + 3) * v46) ^ *(v53 + (v51 + 3)) ^ *(v52 + (v51 + 3)) ^ *((v51 + 3) + v54 + 4) ^ a3;
  return v50();
}

uint64_t sub_1001844C4(uint64_t a1, uint64_t a2, int a3)
{
  v11 = (((v8 & v9) + a2) ^ v6) + v4;
  *(v5 + v11) = *(v3 + v11);
  return (*(v10 + 8 * (((v6 + 8 == v4) * a3) ^ v7)))();
}

uint64_t sub_100184540()
{
  v2 = (*(v1 + 8 * (v0 + 1611)))(32, 0x103004054B5FA7DLL);
  v3 = STACK[0x330];
  STACK[0x820] = v2;
  return (*(v3 + 8 * ((62 * (((v2 == 0) ^ (-87 * (v0 ^ 0x51) + 1)) & 1)) ^ v0)))();
}

uint64_t sub_1001845AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _DWORD *a9)
{
  *v10 = a1;
  *a9 = v9;
  return sub_1001B8BF4();
}

uint64_t sub_1001845F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, int a20, unsigned int a21)
{
  a19 = &a14;
  a21 = v21 + 1317436891 * ((&a19 & 0xA2960451 | ~(&a19 | 0xA2960451)) ^ 0xED6A63D8) + 2466;
  v24 = (*(v23 + 8 * (v21 + 3949)))(&a19);
  return (*(v23 + 8 * ((126 * (a20 != v22 + ((v21 - 616671297) & 0xF6DBBB39) + 16253847)) ^ v21)))(v24);
}

uint64_t sub_100184698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char *a20, int a21, unsigned int a22)
{
  a22 = 1317436891 * ((2 * (&a20 & 0x1A5D5FF8) - &a20 + 1705156613) ^ 0xD5A13873) + 8154;
  a20 = &a18;
  v23 = (*(v22 + 77096))(&a20);
  return (*(v22 + 8 * ((15097 * (a21 == 16257999)) ^ 0x1BB3u)))(v23);
}

uint64_t sub_100184740()
{
  v4 = (((v0 - v1 + 655383029) ^ 0x2023B9A1) - 120840314) ^ (v0 - v1 + 655383029) ^ (((v0 - v1 + 655383029) ^ 0x59C312CC) - 2127776535) ^ (((v0 - v1 + 655383029) ^ 0xFAFDFFFF) + 571627996) ^ (((2 * (((v2 - 4685) | 0xA09) ^ 0x36)) ^ 0x7CE2BE98) + ((v0 - v1 + 655383029) ^ 0xA40D0D49));
  LODWORD(STACK[0x6D4]) = v4 ^ 0x2CD5C088;
  v5 = (*(v3 + 8 * (v2 + 4753)))(v4 ^ 0x271059DB, 0x100004077774924);
  v6 = STACK[0x330];
  STACK[0x4A8] = v5;
  return (*(v6 + 8 * ((56 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_10018488C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v12 - 232) = a9;
  *(v12 - 224) = -97 * ((125 - ((v12 + 24) | 0x7D) + ((v12 + 24) | 0x82)) ^ 0x87) + 34;
  *(v12 - 220) = 956911519 * ((-1036799619 - ((v12 - 232) | 0xC233B17D) + ((v12 - 232) | 0x3DCC4E82)) ^ 0xD75D3E87) + v10 + 604;
  (*(v13 + 8 * (v10 + 3705)))(v12 - 232);
  v14 = STACK[0x330];
  v15 = *(v12 - 216);
  LODWORD(STACK[0x54C]) = v15;
  LOBYTE(STACK[0x77F]) = v15 == (v9 ^ (v11 + 1866));
  return (*(v14 + 8 * (((STACK[0x4E8] != 0) * (v9 - 2253)) | v9)))();
}

void sub_1001849A4()
{
  STACK[0x4D8] = 0;
  STACK[0x6D8] = 0;
  STACK[0x3D8] = *(v1 + 8 * v0);
  JUMPOUT(0x1001B563CLL);
}

uint64_t sub_1001849D8(uint64_t a1, double a2, double a3, int8x16_t a4, int8x16_t a5, double a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v82 = STACK[0x310];
  v83 = v76 + STACK[0x310];
  *&v84 = v83 - 15;
  *(&v84 + 1) = v83 - 16;
  *&STACK[0x350] = v84;
  *&v84 = v83 - 13;
  *(&v84 + 1) = v83 - 14;
  *&STACK[0x340] = v84;
  v85.i64[0] = v83 - 7;
  v85.i64[1] = v83 - 8;
  v86.i64[0] = v83 - 3;
  v86.i64[1] = v83 - 4;
  v87.i64[0] = v82 + v76 - 1;
  v87.i64[1] = v83 - 2;
  v88.i64[0] = v83 - 5;
  v88.i64[1] = v83 + ((v77 - 4227) ^ 0xFFFFFFFFFFFFF5B0);
  v89 = vandq_s8(v88, *&STACK[0x2D0]);
  v90 = vandq_s8(v87, *&STACK[0x2D0]);
  v91 = vandq_s8(v86, *&STACK[0x2D0]);
  v92 = vandq_s8(v85, *&STACK[0x2D0]);
  v93 = *&STACK[0x2D0];
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), *&STACK[0x360]);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), *&STACK[0x360]);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), *&STACK[0x360]);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), *&STACK[0x360]);
  v99 = *&STACK[0x2A0];
  v98 = *&STACK[0x2B0];
  v100 = vsubq_s64(vorrq_s8(v94, *&STACK[0x2B0]), vorrq_s8(v94, v79));
  v101 = vsubq_s64(vorrq_s8(v95, *&STACK[0x2B0]), vorrq_s8(v95, v79));
  v102 = vaddq_s64(vsubq_s64(vorrq_s8(v97, *&STACK[0x2B0]), vorrq_s8(v97, v79)), v79);
  v103 = vaddq_s64(vsubq_s64(vorrq_s8(v96, *&STACK[0x2B0]), vorrq_s8(v96, v79)), v79);
  v104 = veorq_s8(v103, *&STACK[0x2A0]);
  v105 = veorq_s8(v102, *&STACK[0x2A0]);
  v106 = veorq_s8(v102, *&STACK[0x290]);
  v107 = veorq_s8(v103, *&STACK[0x290]);
  v108 = *&STACK[0x290];
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106), a7);
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v107), a7);
  v111 = vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL);
  v112 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v113 = veorq_s8(v109, v111);
  v114 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v113);
  v116 = vaddq_s64(v114, v112);
  v117 = *&STACK[0x270];
  v118 = *&STACK[0x250];
  v119 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v116, v116), a9), v116), *&STACK[0x270]), *&STACK[0x260]);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v115, v115), a9), v115), *&STACK[0x270]), *&STACK[0x260]);
  v121 = *&STACK[0x260];
  v122 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v123 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v124 = veorq_s8(v119, v122);
  v125 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v124);
  v127 = vaddq_s64(v125, v123);
  v129 = *&STACK[0x230];
  v128 = *&STACK[0x240];
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v127, v127), *&STACK[0x250]), v127), *&STACK[0x240]), *&STACK[0x230]);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v126, v126), *&STACK[0x250]), v126), *&STACK[0x240]), *&STACK[0x230]);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v133 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v134 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v133);
  v136 = veorq_s8(vaddq_s64(v134, v132), v78);
  v137 = veorq_s8(v135, v78);
  v138 = vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL);
  v139 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v140 = veorq_s8(v136, v138);
  v141 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v142 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v140);
  v143 = veorq_s8(vaddq_s64(v141, v139), a8);
  v144 = veorq_s8(v142, a8);
  v145 = vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL);
  v146 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v147 = veorq_s8(v143, v145);
  v148 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v147);
  v150 = vaddq_s64(v148, v146);
  v151 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v149, v80), vorrq_s8(v149, a75)), a75), v81);
  v152 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v150, v80), vorrq_s8(v150, a75)), a75), v81);
  v153.i64[0] = v83 - 11;
  v153.i64[1] = v83 - 12;
  *&STACK[0x320] = v153;
  v154 = vaddq_s64(v101, v79);
  v261.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL))), a5), vnegq_s64(vandq_s8(vshlq_n_s64(v85, 3uLL), a4)));
  v261.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL))), a5), vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), a4)));
  v155 = *&STACK[0x300];
  v156 = veorq_s8(v154, v99);
  v157 = veorq_s8(v154, v108);
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), *&STACK[0x300]);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159);
  v161 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v160, v160), a9), v160), v117), v121);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162);
  v164 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v163, v163), v118), v163), v128), v129);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v166 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165), v78);
  v167 = veorq_s8(v166, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v168 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167), a8);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v170, v80), vorrq_s8(v170, a75)), a75), v81);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v173 = vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL);
  v171.i64[0] = v83 - 9;
  v171.i64[1] = v83 - 10;
  *&STACK[0x330] = v171;
  v174 = vaddq_s64(v173, v172);
  v175 = vandq_s8(v171, v93);
  v176 = vaddq_s64(v100, v79);
  v261.val[0] = vshlq_u64(veorq_s8(v174, a5), vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), a4)));
  v177 = veorq_s8(v176, v99);
  v178 = veorq_s8(v176, v108);
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v155);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180);
  v182 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v181, v181), a9), v181), v117), v121);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v184 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183);
  v185 = v128;
  v186 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v184, v184), v118), v184), v128), v129);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187), v78);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v190 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189), a8);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v192 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191);
  v193 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v192, v80), vorrq_s8(v192, a75)), a75), v81);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v195 = vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL);
  v196 = vandq_s8(v153, v93);
  v197 = vaddq_s64(v195, v194);
  v198 = vandq_s8(*&STACK[0x340], v93);
  v261.val[2] = vshlq_u64(veorq_s8(v197, a5), vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), a4)));
  v199 = vandq_s8(*&STACK[0x350], v93);
  v200 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v201 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v202 = vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL);
  v203 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), *&STACK[0x360]);
  v204 = vaddq_s64(v202, *&STACK[0x360]);
  v205 = vaddq_s64(v201, *&STACK[0x360]);
  v206 = vaddq_s64(v200, *&STACK[0x360]);
  v207 = vsubq_s64(vorrq_s8(v204, v98), vorrq_s8(v204, v79));
  v208 = vaddq_s64(vsubq_s64(vorrq_s8(v206, v98), vorrq_s8(v206, v79)), v79);
  v209 = vaddq_s64(vsubq_s64(vorrq_s8(v205, v98), vorrq_s8(v205, v79)), v79);
  v205.i64[0] = vqtbl4q_s8(v261, *&STACK[0x2E0]).u64[0];
  v261.val[0] = veorq_s8(v209, v99);
  v261.val[1] = veorq_s8(v208, v99);
  v210 = v99;
  v211 = veorq_s8(v208, v108);
  v212 = veorq_s8(v209, v108);
  v261.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261.val[1], 0x38uLL), v261.val[1], 8uLL), v211), v155);
  v261.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261.val[0], 0x38uLL), v261.val[0], 8uLL), v212), v155);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL);
  v213 = veorq_s8(v261.val[0], vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL));
  v214 = veorq_s8(v261.val[1], v261.val[2]);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v261.val[0], 0x38uLL), v261.val[0], 8uLL);
  v261.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261.val[1], 0x38uLL), v261.val[1], 8uLL), v214);
  v261.val[1] = vaddq_s64(v261.val[2], v213);
  v261.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v261.val[1], v261.val[1]), a9), v261.val[1]), v117), v121);
  v261.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v261.val[0], v261.val[0]), a9), v261.val[0]), v117), v121);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL);
  v215 = veorq_s8(v261.val[0], vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL));
  v216 = veorq_s8(v261.val[1], v261.val[2]);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v261.val[0], 0x38uLL), v261.val[0], 8uLL);
  v261.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261.val[1], 0x38uLL), v261.val[1], 8uLL), v216);
  v261.val[1] = vaddq_s64(v261.val[2], v215);
  v261.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v261.val[1], v261.val[1]), v118), v261.val[1]), v185), v129);
  v261.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v261.val[0], v261.val[0]), v118), v261.val[0]), v185), v129);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v217 = veorq_s8(v261.val[0], vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL));
  v218 = veorq_s8(v261.val[1], v261.val[2]);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v261.val[0], 0x38uLL), v261.val[0], 8uLL);
  v261.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261.val[1], 0x38uLL), v261.val[1], 8uLL), v218);
  v261.val[1] = veorq_s8(vaddq_s64(v261.val[2], v217), *&STACK[0x370]);
  v261.val[0] = veorq_s8(v261.val[0], *&STACK[0x370]);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL);
  v219 = veorq_s8(v261.val[0], vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v220 = veorq_s8(v261.val[1], v261.val[2]);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v261.val[0], 0x38uLL), v261.val[0], 8uLL);
  v261.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261.val[1], 0x38uLL), v261.val[1], 8uLL), v220);
  v261.val[1] = veorq_s8(vaddq_s64(v261.val[2], v219), a8);
  v261.val[0] = veorq_s8(v261.val[0], a8);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL);
  v221 = veorq_s8(v261.val[0], vsraq_n_u64(vshlq_n_s64(v220, 3uLL), v220, 0x3DuLL));
  v222 = veorq_s8(v261.val[1], v261.val[2]);
  v261.val[2] = vsraq_n_u64(vshlq_n_s64(v261.val[0], 0x38uLL), v261.val[0], 8uLL);
  v261.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261.val[1], 0x38uLL), v261.val[1], 8uLL), v222);
  v261.val[1] = vaddq_s64(v261.val[2], v221);
  v261.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v261.val[0], v80), vorrq_s8(v261.val[0], a75)), a75), v81);
  v261.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v261.val[1], v80), vorrq_s8(v261.val[1], a75)), a75), v81);
  v223 = vaddq_s64(v207, v79);
  v261.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261.val[0], 0x38uLL), v261.val[0], 8uLL), veorq_s8(v261.val[0], vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL))), a5), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x350], 3uLL), a4)));
  v261.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v261.val[1], 0x38uLL), v261.val[1], 8uLL), veorq_s8(v261.val[1], vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL))), a5), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x340], 3uLL), a4)));
  v224 = veorq_s8(v223, v99);
  v225 = veorq_s8(v223, v108);
  v226 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v225), v155);
  v227 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL));
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227);
  v229 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v228, v228), a9), v228), v117), v121);
  v230 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v231 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230);
  v232 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v231, v231), v118), v231), v185), v129);
  v233 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v234 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v233), *&STACK[0x370]);
  v235 = veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL));
  v236 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), v235), a8);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v235, 3uLL), v235, 0x3DuLL));
  v238 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237);
  v239 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v238, v80), vorrq_s8(v238, a75)), a75), v81);
  v240 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL)));
  v241 = vaddq_s64(vsubq_s64(vorrq_s8(v203, v98), vorrq_s8(v203, v79)), v79);
  v261.val[1] = vshlq_u64(veorq_s8(v240, a5), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x320], 3uLL), a4)));
  v242 = veorq_s8(v241, v210);
  v243 = veorq_s8(v241, v108);
  v244 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v243), v155);
  v245 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL));
  v246 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245);
  v247 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v246, v246), a9), v246), v117), v121);
  v248 = veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v249 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v248);
  v250 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v249, v249), v118), v249), v185), v129);
  v251 = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v252 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), v251), *&STACK[0x370]);
  v253 = veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v251, 3uLL), v251, 0x3DuLL));
  v254 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), v253), a8);
  v255 = veorq_s8(v254, vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL));
  v256 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v254, 0x38uLL), v254, 8uLL), v255);
  v257 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v256, v80), vorrq_s8(v256, a75)), a75), v81);
  v261.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL))), a5), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x330], 3uLL), a4)));
  v205.i64[1] = vqtbl4q_s8(v261, *&STACK[0x2E0]).u64[0];
  v258 = vrev64q_s8(*(v82 + v76 - 1 - 15));
  v259 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v258, v258, 8uLL), a76), v205));
  *(a1 - 15 + v76 - 1) = vextq_s8(v259, v259, 8uLL);
  return (*(a72 + 8 * ((62 * (v76 == 16)) ^ v77)))();
}

uint64_t sub_1001858F8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  *&STACK[0x370] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v17 = vdupq_n_s64(0x38uLL);
  v18 = vdupq_n_s64(0x2D9C56C6ED9D3E2EuLL);
  v19 = vdupq_n_s64(a2);
  v20 = vdupq_n_s64(a3);
  v21 = vdupq_n_s64(a1);
  v22 = vdupq_n_s64(a4);
  v23 = vdupq_n_s64(a5);
  v24 = vdupq_n_s64(a6);
  v25 = v7 + v15 + v13;
  v26 = v12 + v11 - v16 + 12;
  v27 = vdupq_n_s64(v10);
  v28 = vdupq_n_s64(a7);
  v29 = vdupq_n_s64(0x365717C7E4CB1A76uLL);
  v30 = vdupq_n_s64(0x8BD86B3AFACC8D6DLL);
  v31 = vdupq_n_s64(0x1323CE1A44C5F46EuLL);
  v32 = vdupq_n_s64(v8);
  v33 = vdupq_n_s64(0xEEA89D249DAFB75ALL);
  v34 = vdupq_n_s64(0xAC7DA0564C1838BuLL);
  v35 = vdupq_n_s64(0x2A5861B0BA21BA34uLL);
  v36 = vdupq_n_s64(0xEAD3CF27A2EF22E5);
  v37 = vdupq_n_s64(0x8B436845DC92299CLL);
  v38 = vdupq_n_s64(0x8E4D6ECA343D275ELL);
  v39 = vdupq_n_s64(0x51BB4171AFEDC628uLL);
  *&STACK[0x360] = xmmword_10069D310;
  v40.i64[0] = v25 + v26 - 3;
  v40.i64[1] = v25 + v26 + ((v9 - 235) ^ 0xFFFFFFFFFFFFF4B5) + 4;
  v41.i64[0] = v25 + v26 + 3;
  v41.i64[1] = v25 + v26 + 2;
  v42.i64[0] = v25 + v26 + 1;
  v42.i64[1] = v25 + v26;
  v43.i64[0] = v25 + v26 - 1;
  v43.i64[1] = v25 + v26 - 2;
  v44 = vandq_s8(v43, *&STACK[0x370]);
  v45 = vandq_s8(v42, *&STACK[0x370]);
  v46 = vandq_s8(v41, *&STACK[0x370]);
  v47 = vandq_s8(v40, *&STACK[0x370]);
  v48 = vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL);
  v49 = vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL), v18);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v18);
  v52 = vaddq_s64(v49, v18);
  v53 = vaddq_s64(v48, v18);
  v54 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v50, v50), v19), v50), v20);
  v55 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v51, v51), v19), v51), v20);
  v56 = veorq_s8(v55, v21);
  v57 = veorq_s8(v54, v21);
  v58 = veorq_s8(v54, v22);
  v59 = veorq_s8(v55, v22);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v58);
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v61, v61), v23), v61), v24), v27);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v60, v60), v23), v60), v24), v27);
  v64 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL));
  v65 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v66 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v65);
  v68 = vaddq_s64(v66, v64);
  v69 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v68, v68), v28), v68), v29), v30);
  v70 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v67, v67), v28), v67), v29), v30);
  v71 = vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL);
  v72 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v73 = veorq_s8(v69, v71);
  v74 = vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL);
  v75 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v69, 0x38uLL), v69, 8uLL), v73);
  v76 = vaddq_s64(v74, v72);
  v77 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v75, v31), vorrq_s8(v75, v32)), v32), v33);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v76, v31), vorrq_s8(v76, v32)), v32), v33);
  v79 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v80 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v81 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v79), v34);
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL), v80), v34);
  v83 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v84 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL));
  v85 = veorq_s8(v81, v83);
  v86 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL), v85);
  v88 = vaddq_s64(v86, v84);
  v89 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v88, v88), v35), v88), v36), v37);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v87, v87), v35), v87), v36), v37);
  v91 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v92 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v93 = veorq_s8(v89, v91);
  v94 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v93);
  v96 = veorq_s8(vaddq_s64(v94, v92), v38);
  v97 = veorq_s8(v95, v38);
  v98 = vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL);
  v99 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v100 = veorq_s8(v96, v98);
  v101 = vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL);
  v103 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v52, v52), v19), v52), v20);
  v141.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v102, v100), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v43, 3uLL), v17)));
  v141.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v101, v99), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v42, 3uLL), v17)));
  v104 = veorq_s8(v103, v21);
  v105 = veorq_s8(v103, v22);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v105);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v106, v106), v23), v106), v24), v27);
  v108 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v105, 3uLL), v105, 0x3DuLL));
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v109, v109), v28), v109), v29), v30);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v112, v31), vorrq_s8(v112, v32)), v32), v33);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v34);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116);
  v118 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v117, v117), v35), v117), v36), v37);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v38);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL)));
  v122 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v53, v53), v19), v53), v20);
  v141.val[0] = vshlq_u64(veorq_s8(v121, v39), vnegq_s64(vandq_s8(vshlq_n_s64(v41, 3uLL), v17)));
  v123 = veorq_s8(v122, v21);
  v124 = veorq_s8(v122, v22);
  v125 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v125, v125), v23), v125), v24), v27);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127);
  v129 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v128, v128), v28), v128), v29), v30);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v131, v31), vorrq_s8(v131, v32)), v32), v33);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), v34);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v135);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v136, v136), v35), v136), v36), v37);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), v38);
  v141.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL))), v39), vnegq_s64(vandq_s8(vshlq_n_s64(v40, 3uLL), v17)));
  *(v25 + v26 - 4) = vrev64_s8(*&vqtbl4q_s8(v141, *&STACK[0x360]));
  return (*(v14 + 8 * ((115 * (-v16 == 8 - (v11 & 0xFFFFFFF8))) ^ v9)))();
}

uint64_t sub_100186068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a17 = &a12;
  a19 = 1317436891 * ((&a17 & 0x9A083929 | ~(&a17 | 0x9A083929)) ^ 0xD5F45EA0) + 8154;
  v22 = (*(v20 + 77096))(&a17);
  return (*(v20 + 8 * ((3448 * (a18 == v21)) ^ v19)))(v22);
}

uint64_t sub_1001860EC()
{
  v2 = *(STACK[0x560] + 24);
  STACK[0x690] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (3 * (v0 ^ 0x77C) + 439 * (v0 ^ 0x63C) - 3505)) ^ v0)))();
}

uint64_t sub_1001861B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, unsigned int a16)
{
  v19 = (v16 - 3840) | 0x100C;
  a15 = a10;
  a16 = (v16 + 4218) ^ (((1477419285 - (&a14 | 0x580FA115) + (&a14 | 0xA7F05EEA)) ^ 0xFF998D88) * v17);
  (*(v18 + 8 * (v16 + 5484)))(&a14);
  a16 = (v19 + 3950) ^ (((((2 * &a14) | 0x7192FAD0) - &a14 + 1194754712) ^ 0xE0A0AE0A) * v17);
  a15 = a11;
  v20 = (*(v18 + 8 * (v19 + 5216)))(&a14);
  return sub_10018628C(v20);
}

uint64_t sub_1001863E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v62 = STACK[0xA70];
  v63 = STACK[0xA40];
  STACK[0x290] = ((STACK[0xA70] + 4) ^ 0x6EEB7373FE7FF71FLL) - 0x8A831024E005309 + ((2 * (STACK[0xA70] + 4)) & 0xDDD6E6E7FCFFEE3ELL);
  v64 = STACK[0xA90];
  STACK[0x280] = ((((v76 + 3862) | 0x208u) + 1315 + STACK[0xA90] - 6087) ^ 0x76DF63FFBEFFEF9FLL) - 0x109C218E0E804B89 + ((2 * (((v76 + 3862) | 0x208u) + 1315 + STACK[0xA90] - 6087)) & 0xEDBEC7FF7DFFDF3ELL);
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

uint64_t sub_1001864A0(double a1, int8x16_t a2, int64x2_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, int8x16_t a62, int8x16_t a63)
{
  v78 = v71 - 16;
  *&STACK[0x370] = *(v72 + v78 - 16);
  v79.i64[0] = v72 + v78 - 3;
  v79.i64[1] = STACK[0x280] + v78 + v73;
  v80.i64[0] = v72 + v78 - 1;
  v80.i64[1] = v72 + v78 - 2;
  v81.i64[0] = v72 + v78 - 5;
  v81.i64[1] = v72 + v78 - 6;
  v82 = v81;
  *&STACK[0x330] = v80;
  *&STACK[0x340] = v81;
  v81.i64[0] = v72 + v78 - 7;
  v81.i64[1] = v72 + v78 - 8;
  v83 = v81;
  *&STACK[0x360] = v81;
  v84.i64[0] = v72 + v78 - 9;
  v84.i64[1] = v72 + v78 - 10;
  v85.i64[0] = v72 + v78 - 11;
  v85.i64[1] = v72 + v78 - 12;
  v86.i64[0] = v72 + v78 - 13;
  v86.i64[1] = v72 + v78 - 14;
  v87.i64[0] = v72 + v78 - 15;
  v87.i64[1] = v72 + v78 - 16;
  v88 = vandq_s8(v87, v74);
  v89 = vandq_s8(v86, v74);
  v90 = vandq_s8(v85, v74);
  v91 = vandq_s8(v84, v74);
  v92 = vandq_s8(v83, v74);
  v93 = vandq_s8(v82, v74);
  v94 = vandq_s8(v80, v74);
  v95 = vandq_s8(v79, v74);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), a3);
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), a3);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), a3);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), a3);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), a3);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), a3);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), a3);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), a3);
  v104 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v96, v96), *&STACK[0x320]), v96), *&STACK[0x310]);
  v105 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v97, v97), *&STACK[0x320]), v97), *&STACK[0x310]);
  v106 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v98, v98), *&STACK[0x320]), v98), *&STACK[0x310]);
  v107 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v99, v99), *&STACK[0x320]), v99), *&STACK[0x310]);
  v108 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v100, v100), *&STACK[0x320]), v100), *&STACK[0x310]);
  v109 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v101, v101), *&STACK[0x320]), v101), *&STACK[0x310]);
  v110 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), *&STACK[0x320]), v102), *&STACK[0x310]);
  v111 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v103, v103), *&STACK[0x320]), v103), *&STACK[0x310]);
  v112 = veorq_s8(v111, *&STACK[0x300]);
  v113 = veorq_s8(v110, *&STACK[0x300]);
  v114 = veorq_s8(v109, *&STACK[0x300]);
  v115 = veorq_s8(v108, *&STACK[0x300]);
  v116 = veorq_s8(v107, *&STACK[0x300]);
  v117 = veorq_s8(v106, *&STACK[0x300]);
  v118 = veorq_s8(v105, *&STACK[0x300]);
  v119 = veorq_s8(v104, *&STACK[0x300]);
  v120 = veorq_s8(v104, *&STACK[0x2F0]);
  v121 = veorq_s8(v105, *&STACK[0x2F0]);
  v122 = veorq_s8(v106, *&STACK[0x2F0]);
  v123 = veorq_s8(v107, *&STACK[0x2F0]);
  v124 = veorq_s8(v108, *&STACK[0x2F0]);
  v125 = veorq_s8(v109, *&STACK[0x2F0]);
  v126 = veorq_s8(v110, *&STACK[0x2F0]);
  v127 = veorq_s8(v111, *&STACK[0x2F0]);
  v128 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v127);
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v126);
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v125);
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v124);
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v123);
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v122);
  v135 = vaddq_s64(v128, v121);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL), v120);
  v137 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v136, v136), *&STACK[0x2E0]), v136), *&STACK[0x2D0]), *&STACK[0x2B0]);
  v138 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v135, v135), *&STACK[0x2E0]), v135), *&STACK[0x2D0]), *&STACK[0x2B0]);
  v139 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v134, v134), *&STACK[0x2E0]), v134), *&STACK[0x2D0]), *&STACK[0x2B0]);
  v140 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v133, v133), *&STACK[0x2E0]), v133), *&STACK[0x2D0]), *&STACK[0x2B0]);
  v141 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v132, v132), *&STACK[0x2E0]), v132), *&STACK[0x2D0]), *&STACK[0x2B0]);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v131, v131), *&STACK[0x2E0]), v131), *&STACK[0x2D0]), *&STACK[0x2B0]);
  v143 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v130, v130), *&STACK[0x2E0]), v130), *&STACK[0x2D0]), *&STACK[0x2B0]);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v129, v129), *&STACK[0x2E0]), v129), *&STACK[0x2D0]), *&STACK[0x2B0]);
  v145 = vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL);
  v146 = vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL);
  v148 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v149 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL));
  v150 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v151 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v152 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v153 = veorq_s8(v140, v148);
  v154 = veorq_s8(v139, v147);
  v155 = veorq_s8(v138, v146);
  v156 = veorq_s8(v137, v145);
  v157 = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v158 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v159 = vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v163 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v156);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v155);
  v165 = vaddq_s64(v162, v154);
  v166 = vaddq_s64(v161, v153);
  v167 = vaddq_s64(v160, v152);
  v168 = vaddq_s64(v159, v151);
  v169 = vaddq_s64(v158, v150);
  v170 = vaddq_s64(v157, v149);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v170, v170), *&STACK[0x2A0]), v170), *&STACK[0x290]), *&STACK[0x270]);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v169, v169), *&STACK[0x2A0]), v169), *&STACK[0x290]), *&STACK[0x270]);
  v173 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v168, v168), *&STACK[0x2A0]), v168), *&STACK[0x290]), *&STACK[0x270]);
  v174 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), *&STACK[0x2A0]), v167), *&STACK[0x290]), *&STACK[0x270]);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v166, v166), *&STACK[0x2A0]), v166), *&STACK[0x290]), *&STACK[0x270]);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v165, v165), *&STACK[0x2A0]), v165), *&STACK[0x290]), *&STACK[0x270]);
  v177 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v164, v164), *&STACK[0x2A0]), v164), *&STACK[0x290]), *&STACK[0x270]);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v163, v163), *&STACK[0x2A0]), v163), *&STACK[0x290]), *&STACK[0x270]);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v180 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v181 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v182 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v183 = veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v184 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v185 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v186 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v187 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v188 = vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL);
  v189 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v190 = vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL);
  v191 = vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL);
  v192 = vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL);
  v193 = vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL);
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v186);
  v195 = veorq_s8(vaddq_s64(v187, v179), v75);
  v196 = veorq_s8(vaddq_s64(v188, v180), v75);
  v197 = veorq_s8(vaddq_s64(v189, v181), v75);
  v198 = veorq_s8(vaddq_s64(v190, v182), v75);
  v199 = veorq_s8(vaddq_s64(v191, v183), v75);
  v200 = veorq_s8(vaddq_s64(v192, v184), v75);
  v201 = veorq_s8(vaddq_s64(v193, v185), v75);
  v202 = veorq_s8(v194, v75);
  v203 = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v204 = vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL);
  v205 = vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL);
  v206 = vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL);
  v207 = vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL);
  v208 = vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL);
  v209 = vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL);
  v210 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v211 = veorq_s8(v201, v209);
  v212 = veorq_s8(v200, v208);
  v213 = veorq_s8(v199, v207);
  v214 = veorq_s8(v198, v206);
  v215 = veorq_s8(v197, v205);
  v216 = veorq_s8(v196, v204);
  v217 = veorq_s8(v195, v203);
  v218 = vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL);
  v219 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v220 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v221 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v222 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v223 = vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL);
  v224 = vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL);
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v217);
  v226 = veorq_s8(vaddq_s64(v218, v210), v76);
  v227 = veorq_s8(vaddq_s64(v219, v211), v76);
  v228 = veorq_s8(vaddq_s64(v220, v212), v76);
  v229 = veorq_s8(vaddq_s64(v221, v213), v76);
  v230 = veorq_s8(vaddq_s64(v222, v214), v76);
  v231 = veorq_s8(vaddq_s64(v223, v215), v76);
  v232 = veorq_s8(vaddq_s64(v224, v216), v76);
  v233 = veorq_s8(v225, v76);
  v234 = vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL);
  v235 = vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL);
  v236 = vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL);
  v237 = vsraq_n_u64(vshlq_n_s64(v213, 3uLL), v213, 0x3DuLL);
  v238 = vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL);
  v239 = vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL);
  v240 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v241 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v242 = veorq_s8(v232, v240);
  v243 = veorq_s8(v231, v239);
  v244 = veorq_s8(v230, v238);
  v245 = veorq_s8(v229, v237);
  v246 = veorq_s8(v228, v236);
  v247 = veorq_s8(v227, v235);
  v248 = veorq_s8(v226, v234);
  v249 = vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL);
  v250 = vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL);
  v251 = vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL);
  v252 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v253 = vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL);
  v254 = vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL);
  v255 = vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL);
  v256 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v248);
  v257 = veorq_s8(vaddq_s64(v249, v241), v77);
  v258 = veorq_s8(vaddq_s64(v250, v242), v77);
  v259 = veorq_s8(vaddq_s64(v251, v243), v77);
  v260 = veorq_s8(vaddq_s64(v252, v244), v77);
  v261 = veorq_s8(vaddq_s64(v253, v245), v77);
  v262 = veorq_s8(vaddq_s64(v254, v246), v77);
  v263 = veorq_s8(vaddq_s64(v255, v247), v77);
  v264 = veorq_s8(v256, v77);
  v265 = veorq_s8(v264, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v266 = veorq_s8(v263, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v267 = veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v246, 3uLL), v246, 0x3DuLL));
  v268 = veorq_s8(v261, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v269 = veorq_s8(v260, vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL));
  v270 = veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v243, 3uLL), v243, 0x3DuLL));
  v271 = veorq_s8(v258, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v272 = veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v241, 3uLL), v241, 0x3DuLL));
  v273 = vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL);
  v274 = vsraq_n_u64(vshlq_n_s64(v263, 0x38uLL), v263, 8uLL);
  v275 = vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL);
  v276 = vsraq_n_u64(vshlq_n_s64(v261, 0x38uLL), v261, 8uLL);
  v277 = vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL);
  v278 = vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL);
  v279 = vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL);
  v280 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v272);
  v281 = vaddq_s64(v279, v271);
  v282 = vaddq_s64(v278, v270);
  v283 = vaddq_s64(v277, v269);
  v284 = vaddq_s64(v276, v268);
  v285 = vaddq_s64(v275, v267);
  v286 = vaddq_s64(v274, v266);
  v287 = vaddq_s64(v273, v265);
  v288 = veorq_s8(vaddq_s64(vsubq_s64(v287, vandq_s8(vaddq_s64(v287, v287), *&STACK[0x260])), *&STACK[0x250]), *&STACK[0x240]);
  v289 = veorq_s8(vaddq_s64(vsubq_s64(v286, vandq_s8(vaddq_s64(v286, v286), *&STACK[0x260])), *&STACK[0x250]), *&STACK[0x240]);
  v290 = veorq_s8(vaddq_s64(vsubq_s64(v285, vandq_s8(vaddq_s64(v285, v285), *&STACK[0x260])), *&STACK[0x250]), *&STACK[0x240]);
  v291 = veorq_s8(vaddq_s64(vsubq_s64(v284, vandq_s8(vaddq_s64(v284, v284), *&STACK[0x260])), *&STACK[0x250]), *&STACK[0x240]);
  v292 = veorq_s8(vaddq_s64(vsubq_s64(v283, vandq_s8(vaddq_s64(v283, v283), *&STACK[0x260])), *&STACK[0x250]), *&STACK[0x240]);
  v293 = veorq_s8(vaddq_s64(vsubq_s64(v282, vandq_s8(vaddq_s64(v282, v282), *&STACK[0x260])), *&STACK[0x250]), *&STACK[0x240]);
  v294 = veorq_s8(vaddq_s64(vsubq_s64(v281, vandq_s8(vaddq_s64(v281, v281), *&STACK[0x260])), *&STACK[0x250]), *&STACK[0x240]);
  v295 = veorq_s8(vaddq_s64(vsubq_s64(v280, vandq_s8(vaddq_s64(v280, v280), *&STACK[0x260])), *&STACK[0x250]), *&STACK[0x240]);
  v296 = veorq_s8(v295, vsraq_n_u64(vshlq_n_s64(v272, 3uLL), v272, 0x3DuLL));
  v297 = veorq_s8(v294, vsraq_n_u64(vshlq_n_s64(v271, 3uLL), v271, 0x3DuLL));
  v298 = veorq_s8(v293, vsraq_n_u64(vshlq_n_s64(v270, 3uLL), v270, 0x3DuLL));
  v299 = veorq_s8(v292, vsraq_n_u64(vshlq_n_s64(v269, 3uLL), v269, 0x3DuLL));
  v300 = veorq_s8(v291, vsraq_n_u64(vshlq_n_s64(v268, 3uLL), v268, 0x3DuLL));
  v301 = veorq_s8(v290, vsraq_n_u64(vshlq_n_s64(v267, 3uLL), v267, 0x3DuLL));
  v302 = veorq_s8(v289, vsraq_n_u64(vshlq_n_s64(v266, 3uLL), v266, 0x3DuLL));
  v303 = veorq_s8(v288, vsraq_n_u64(vshlq_n_s64(v265, 3uLL), v265, 0x3DuLL));
  v304 = vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL);
  v305 = vsraq_n_u64(vshlq_n_s64(v294, 0x38uLL), v294, 8uLL);
  v306 = vsraq_n_u64(vshlq_n_s64(v293, 0x38uLL), v293, 8uLL);
  v307 = vsraq_n_u64(vshlq_n_s64(v292, 0x38uLL), v292, 8uLL);
  v308 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v291, 0x38uLL), v291, 8uLL), v300);
  v309 = vaddq_s64(v307, v299);
  v310 = STACK[0x2C0] + v78;
  v311 = vaddq_s64(v306, v298);
  v298.i64[0] = v310 + 7;
  v298.i64[1] = v310 + 6;
  v312 = vaddq_s64(v305, v297);
  v297.i64[0] = v310 + 9;
  v297.i64[1] = v310 + 8;
  v299.i64[0] = v310 + 5;
  v299.i64[1] = v310 + 4;
  v313 = *&STACK[0x230];
  *&STACK[0x350] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v288, 0x38uLL), v288, 8uLL), v303), *&STACK[0x230]), vnegq_s64(vandq_s8(vshlq_n_s64(v79, 3uLL), a2)));
  v300.i64[0] = v310 + 3;
  v300.i64[1] = v310 + 2;
  v314 = veorq_s8(vaddq_s64(v304, v296), v313);
  v315 = veorq_s8(v312, v313);
  v316 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL), v301), v313);
  v317 = vandq_s8(vshlq_n_s64(v87, 3uLL), a2);
  v318 = vandq_s8(vshlq_n_s64(v85, 3uLL), a2);
  v319 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v289, 0x38uLL), v289, 8uLL), v302), v313), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x330], 3uLL), a2)));
  v320 = vshlq_u64(v316, vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x340], 3uLL), a2)));
  v321 = vshlq_u64(veorq_s8(v308, v313), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x360], 3uLL), a2)));
  *&STACK[0x360] = vshlq_u64(veorq_s8(v309, v313), vnegq_s64(vandq_s8(vshlq_n_s64(v84, 3uLL), a2)));
  v322 = vshlq_u64(veorq_s8(v311, v313), vnegq_s64(v318));
  v323 = vshlq_u64(v315, vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), a2)));
  v324 = vshlq_u64(v314, vnegq_s64(v317));
  v325 = vandq_s8(v300, v74);
  v326 = vandq_s8(v299, v74);
  v327 = vandq_s8(v297, v74);
  v328 = vandq_s8(v298, v74);
  v329 = vsraq_n_u64(vshlq_n_s64(v328, 0x38uLL), v328, 8uLL);
  v330 = vsraq_n_u64(vshlq_n_s64(v327, 0x38uLL), v327, 8uLL);
  v331 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v325, 0x38uLL), v325, 8uLL), a3);
  v332 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL), a3);
  v333 = veorq_s8(v332, *&STACK[0x220]);
  v334 = veorq_s8(v331, *&STACK[0x220]);
  v335 = veorq_s8(v331, *&STACK[0x210]);
  v336 = veorq_s8(v332, *&STACK[0x210]);
  v337 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v334, 0x38uLL), v334, 8uLL), v335), *&STACK[0x200]);
  v338 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL), v336), *&STACK[0x200]);
  v339 = vsraq_n_u64(vshlq_n_s64(v335, 3uLL), v335, 0x3DuLL);
  v340 = veorq_s8(v338, vsraq_n_u64(vshlq_n_s64(v336, 3uLL), v336, 0x3DuLL));
  v341 = veorq_s8(v337, v339);
  v342 = vsraq_n_u64(vshlq_n_s64(v338, 0x38uLL), v338, 8uLL);
  v343 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v337, 0x38uLL), v337, 8uLL), v341);
  v344 = veorq_s8(vaddq_s64(v342, v340), a69);
  v345 = veorq_s8(v343, a69);
  v346 = vsraq_n_u64(vshlq_n_s64(v340, 3uLL), v340, 0x3DuLL);
  v347 = veorq_s8(v345, vsraq_n_u64(vshlq_n_s64(v341, 3uLL), v341, 0x3DuLL));
  v348 = veorq_s8(v344, v346);
  v349 = vsraq_n_u64(vshlq_n_s64(v345, 0x38uLL), v345, 8uLL);
  v350 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v344, 0x38uLL), v344, 8uLL), v348);
  v351 = veorq_s8(vaddq_s64(v349, v347), v75);
  v352 = veorq_s8(v350, v75);
  v353 = vsraq_n_u64(vshlq_n_s64(v347, 3uLL), v347, 0x3DuLL);
  v354 = veorq_s8(v352, vsraq_n_u64(vshlq_n_s64(v348, 3uLL), v348, 0x3DuLL));
  v355 = veorq_s8(v351, v353);
  v356 = vsraq_n_u64(vshlq_n_s64(v352, 0x38uLL), v352, 8uLL);
  v357 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL), v355);
  v358 = veorq_s8(vaddq_s64(v356, v354), v76);
  v359 = veorq_s8(v357, v76);
  v360 = vsraq_n_u64(vshlq_n_s64(v354, 3uLL), v354, 0x3DuLL);
  v361 = veorq_s8(v359, vsraq_n_u64(vshlq_n_s64(v355, 3uLL), v355, 0x3DuLL));
  v362 = veorq_s8(v358, v360);
  v363 = vsraq_n_u64(vshlq_n_s64(v359, 0x38uLL), v359, 8uLL);
  v364 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v358, 0x38uLL), v358, 8uLL), v362);
  v365 = veorq_s8(vaddq_s64(v363, v361), v77);
  v366 = veorq_s8(v364, v77);
  v367 = vsraq_n_u64(vshlq_n_s64(v361, 3uLL), v361, 0x3DuLL);
  v368 = veorq_s8(v366, vsraq_n_u64(vshlq_n_s64(v362, 3uLL), v362, 0x3DuLL));
  v369 = veorq_s8(v365, v367);
  v370 = vsraq_n_u64(vshlq_n_s64(v366, 0x38uLL), v366, 8uLL);
  v371 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v365, 0x38uLL), v365, 8uLL), v369);
  v372 = veorq_s8(vaddq_s64(v370, v368), a68);
  v373 = veorq_s8(v371, a68);
  v374 = vsraq_n_u64(vshlq_n_s64(v368, 3uLL), v368, 0x3DuLL);
  v375 = veorq_s8(v373, vsraq_n_u64(vshlq_n_s64(v369, 3uLL), v369, 0x3DuLL));
  v376 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v372, 0x38uLL), v372, 8uLL), veorq_s8(v372, v374));
  v377 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v373, 0x38uLL), v373, 8uLL), v375);
  v378 = vsubq_s64(v377, vandq_s8(vaddq_s64(v377, v377), a67));
  v377.i64[0] = v310 + 1;
  v377.i64[1] = v310;
  v379 = vaddq_s64(v330, a3);
  v483.val[3] = veorq_s8(v321, vshlq_u64(veorq_s8(vaddq_s64(v378, a66), a63), vnegq_s64(vandq_s8(vshlq_n_s64(v300, 3uLL), a2))));
  v483.val[2] = veorq_s8(v320, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v376, vandq_s8(vaddq_s64(v376, v376), a67)), a66), a63), vnegq_s64(vandq_s8(vshlq_n_s64(v299, 3uLL), a2))));
  v380 = veorq_s8(v379, *&STACK[0x220]);
  v381 = veorq_s8(v379, *&STACK[0x210]);
  v382 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v380, 0x38uLL), v380, 8uLL), v381), *&STACK[0x200]);
  v383 = veorq_s8(v382, vsraq_n_u64(vshlq_n_s64(v381, 3uLL), v381, 0x3DuLL));
  v384 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v382, 0x38uLL), v382, 8uLL), v383), a69);
  v385 = veorq_s8(v384, vsraq_n_u64(vshlq_n_s64(v383, 3uLL), v383, 0x3DuLL));
  v386 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v384, 0x38uLL), v384, 8uLL), v385), v75);
  v387 = veorq_s8(v386, vsraq_n_u64(vshlq_n_s64(v385, 3uLL), v385, 0x3DuLL));
  v388 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v386, 0x38uLL), v386, 8uLL), v387), v76);
  v389 = veorq_s8(v388, vsraq_n_u64(vshlq_n_s64(v387, 3uLL), v387, 0x3DuLL));
  v390 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v388, 0x38uLL), v388, 8uLL), v389), v77);
  v391 = veorq_s8(v390, vsraq_n_u64(vshlq_n_s64(v389, 3uLL), v389, 0x3DuLL));
  v392 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v390, 0x38uLL), v390, 8uLL), v391), a68);
  v393 = veorq_s8(v392, vsraq_n_u64(vshlq_n_s64(v391, 3uLL), v391, 0x3DuLL));
  v394 = vsraq_n_u64(vshlq_n_s64(v392, 0x38uLL), v392, 8uLL);
  v392.i64[0] = v310 - 1;
  v392.i64[1] = v310 - 2;
  v395 = vaddq_s64(v394, v393);
  v396 = vsubq_s64(v395, vandq_s8(vaddq_s64(v395, v395), a67));
  v395.i64[0] = v310 - 3;
  v395.i64[1] = v310 - 4;
  v397 = vshlq_u64(veorq_s8(vaddq_s64(v396, a66), a63), vnegq_s64(vandq_s8(vshlq_n_s64(v297, 3uLL), a2)));
  v297.i64[0] = v310 - 5;
  v297.i64[1] = v310 - 6;
  v398 = vaddq_s64(v329, a3);
  v483.val[0] = veorq_s8(v319, v397);
  v399 = veorq_s8(v398, *&STACK[0x220]);
  v400 = veorq_s8(v398, *&STACK[0x210]);
  v401 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v399, 0x38uLL), v399, 8uLL), v400), *&STACK[0x200]);
  v402 = veorq_s8(v401, vsraq_n_u64(vshlq_n_s64(v400, 3uLL), v400, 0x3DuLL));
  v403 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v401, 0x38uLL), v401, 8uLL), v402), a69);
  v404 = veorq_s8(v403, vsraq_n_u64(vshlq_n_s64(v402, 3uLL), v402, 0x3DuLL));
  v405 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v403, 0x38uLL), v403, 8uLL), v404), v75);
  v406 = veorq_s8(v405, vsraq_n_u64(vshlq_n_s64(v404, 3uLL), v404, 0x3DuLL));
  v407 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v405, 0x38uLL), v405, 8uLL), v406), v76);
  v408 = veorq_s8(v407, vsraq_n_u64(vshlq_n_s64(v406, 3uLL), v406, 0x3DuLL));
  v409 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v407, 0x38uLL), v407, 8uLL), v408), v77);
  v410 = veorq_s8(v409, vsraq_n_u64(vshlq_n_s64(v408, 3uLL), v408, 0x3DuLL));
  v411 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v409, 0x38uLL), v409, 8uLL), v410), a68);
  v412 = vandq_s8(v297, v74);
  v413 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v411, 0x38uLL), v411, 8uLL), veorq_s8(v411, vsraq_n_u64(vshlq_n_s64(v410, 3uLL), v410, 0x3DuLL)));
  v414 = vandq_s8(v395, v74);
  v415 = vandq_s8(v392, v74);
  v483.val[1] = veorq_s8(*&STACK[0x350], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v413, vandq_s8(vaddq_s64(v413, v413), a67)), a66), a63), vnegq_s64(vandq_s8(vshlq_n_s64(v298, 3uLL), a2))));
  v416 = vandq_s8(v377, v74);
  v417 = vsraq_n_u64(vshlq_n_s64(v416, 0x38uLL), v416, 8uLL);
  v418 = vsraq_n_u64(vshlq_n_s64(v415, 0x38uLL), v415, 8uLL);
  v419 = vsraq_n_u64(vshlq_n_s64(v414, 0x38uLL), v414, 8uLL);
  v420 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v412, 0x38uLL), v412, 8uLL), a3);
  v421 = vaddq_s64(v419, a3);
  v419.i64[0] = vqtbl4q_s8(v483, a62).u64[0];
  v422 = veorq_s8(v421, *&STACK[0x220]);
  v483.val[0] = veorq_s8(v420, *&STACK[0x220]);
  v423 = veorq_s8(v420, *&STACK[0x210]);
  v424 = veorq_s8(v421, *&STACK[0x210]);
  v483.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483.val[0], 0x38uLL), v483.val[0], 8uLL), v423), *&STACK[0x200]);
  v425 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v422, 0x38uLL), v422, 8uLL), v424), *&STACK[0x200]);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v423, 3uLL), v423, 0x3DuLL);
  v426 = veorq_s8(v425, vsraq_n_u64(vshlq_n_s64(v424, 3uLL), v424, 0x3DuLL));
  v427 = veorq_s8(v483.val[0], v483.val[1]);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v425, 0x38uLL), v425, 8uLL);
  v428 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483.val[0], 0x38uLL), v483.val[0], 8uLL), v427);
  v483.val[0] = veorq_s8(vaddq_s64(v483.val[1], v426), a69);
  v429 = veorq_s8(v428, a69);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v426, 3uLL), v426, 0x3DuLL);
  v430 = veorq_s8(v429, vsraq_n_u64(vshlq_n_s64(v427, 3uLL), v427, 0x3DuLL));
  v431 = veorq_s8(v483.val[0], v483.val[1]);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v429, 0x38uLL), v429, 8uLL);
  v432 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483.val[0], 0x38uLL), v483.val[0], 8uLL), v431);
  v483.val[0] = veorq_s8(vaddq_s64(v483.val[1], v430), v75);
  v433 = veorq_s8(v432, v75);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v430, 3uLL), v430, 0x3DuLL);
  v434 = veorq_s8(v433, vsraq_n_u64(vshlq_n_s64(v431, 3uLL), v431, 0x3DuLL));
  v435 = veorq_s8(v483.val[0], v483.val[1]);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v433, 0x38uLL), v433, 8uLL);
  v436 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483.val[0], 0x38uLL), v483.val[0], 8uLL), v435);
  v483.val[0] = veorq_s8(vaddq_s64(v483.val[1], v434), v76);
  v437 = veorq_s8(v436, v76);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v434, 3uLL), v434, 0x3DuLL);
  v438 = veorq_s8(v437, vsraq_n_u64(vshlq_n_s64(v435, 3uLL), v435, 0x3DuLL));
  v439 = veorq_s8(v483.val[0], v483.val[1]);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v437, 0x38uLL), v437, 8uLL);
  v440 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483.val[0], 0x38uLL), v483.val[0], 8uLL), v439);
  v483.val[0] = veorq_s8(vaddq_s64(v483.val[1], v438), v77);
  v441 = veorq_s8(v440, v77);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v438, 3uLL), v438, 0x3DuLL);
  v442 = veorq_s8(v441, vsraq_n_u64(vshlq_n_s64(v439, 3uLL), v439, 0x3DuLL));
  v443 = veorq_s8(v483.val[0], v483.val[1]);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v441, 0x38uLL), v441, 8uLL);
  v444 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483.val[0], 0x38uLL), v483.val[0], 8uLL), v443);
  v483.val[0] = veorq_s8(vaddq_s64(v483.val[1], v442), a68);
  v445 = veorq_s8(v444, a68);
  v483.val[1] = vsraq_n_u64(vshlq_n_s64(v442, 3uLL), v442, 0x3DuLL);
  v446 = veorq_s8(v445, vsraq_n_u64(vshlq_n_s64(v443, 3uLL), v443, 0x3DuLL));
  v447 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v483.val[0], 0x38uLL), v483.val[0], 8uLL), veorq_s8(v483.val[0], v483.val[1]));
  v448 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v445, 0x38uLL), v445, 8uLL), v446);
  v449 = vaddq_s64(v418, a3);
  v482.val[3] = veorq_s8(v324, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v448, vandq_s8(vaddq_s64(v448, v448), a67)), a66), a63), vnegq_s64(vandq_s8(vshlq_n_s64(v297, 3uLL), a2))));
  v482.val[2] = veorq_s8(v323, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v447, vandq_s8(vaddq_s64(v447, v447), a67)), a66), a63), vnegq_s64(vandq_s8(vshlq_n_s64(v395, 3uLL), a2))));
  v450 = veorq_s8(v449, *&STACK[0x220]);
  v451 = veorq_s8(v449, *&STACK[0x210]);
  v452 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v450, 0x38uLL), v450, 8uLL), v451), *&STACK[0x200]);
  v453 = veorq_s8(v452, vsraq_n_u64(vshlq_n_s64(v451, 3uLL), v451, 0x3DuLL));
  v454 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v452, 0x38uLL), v452, 8uLL), v453), a69);
  v455 = veorq_s8(v454, vsraq_n_u64(vshlq_n_s64(v453, 3uLL), v453, 0x3DuLL));
  v456 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v454, 0x38uLL), v454, 8uLL), v455), v75);
  v457 = veorq_s8(v456, vsraq_n_u64(vshlq_n_s64(v455, 3uLL), v455, 0x3DuLL));
  v458 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v456, 0x38uLL), v456, 8uLL), v457), v76);
  v459 = veorq_s8(v458, vsraq_n_u64(vshlq_n_s64(v457, 3uLL), v457, 0x3DuLL));
  v460 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v458, 0x38uLL), v458, 8uLL), v459), v77);
  v461 = veorq_s8(v460, vsraq_n_u64(vshlq_n_s64(v459, 3uLL), v459, 0x3DuLL));
  v462 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v460, 0x38uLL), v460, 8uLL), v461), a68);
  v463 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v462, 0x38uLL), v462, 8uLL), veorq_s8(v462, vsraq_n_u64(vshlq_n_s64(v461, 3uLL), v461, 0x3DuLL)));
  v464 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v463, vandq_s8(vaddq_s64(v463, v463), a67)), a66), a63), vnegq_s64(vandq_s8(vshlq_n_s64(v392, 3uLL), a2)));
  v465 = vaddq_s64(v417, a3);
  v482.val[1] = veorq_s8(v322, v464);
  v466 = veorq_s8(v465, *&STACK[0x220]);
  v467 = veorq_s8(v465, *&STACK[0x210]);
  v468 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v466, 0x38uLL), v466, 8uLL), v467), *&STACK[0x200]);
  v469 = veorq_s8(v468, vsraq_n_u64(vshlq_n_s64(v467, 3uLL), v467, 0x3DuLL));
  v470 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v468, 0x38uLL), v468, 8uLL), v469), a69);
  v471 = veorq_s8(v470, vsraq_n_u64(vshlq_n_s64(v469, 3uLL), v469, 0x3DuLL));
  v472 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v470, 0x38uLL), v470, 8uLL), v471), v75);
  v473 = veorq_s8(v472, vsraq_n_u64(vshlq_n_s64(v471, 3uLL), v471, 0x3DuLL));
  v474 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v472, 0x38uLL), v472, 8uLL), v473), v76);
  v475 = veorq_s8(v474, vsraq_n_u64(vshlq_n_s64(v473, 3uLL), v473, 0x3DuLL));
  v476 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v474, 0x38uLL), v474, 8uLL), v475), v77);
  v477 = veorq_s8(v476, vsraq_n_u64(vshlq_n_s64(v475, 3uLL), v475, 0x3DuLL));
  v478 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v476, 0x38uLL), v476, 8uLL), v477), a68);
  v479 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v478, 0x38uLL), v478, 8uLL), veorq_s8(v478, vsraq_n_u64(vshlq_n_s64(v477, 3uLL), v477, 0x3DuLL)));
  v482.val[0] = veorq_s8(*&STACK[0x360], vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v479, vandq_s8(vaddq_s64(v479, v479), a67)), a66), a63), vnegq_s64(vandq_s8(vshlq_n_s64(v377, 3uLL), a2))));
  v419.i64[1] = vqtbl4q_s8(v482, a62).u64[0];
  v480 = vrev64q_s8(v419);
  *(v310 - 6) = veorq_s8(vextq_s8(v480, v480, 8uLL), *&STACK[0x370]);
  return (*(a65 + 8 * ((62 * (v70 == v78)) ^ v69)))();
}

uint64_t sub_1001864A8()
{
  v2 = STACK[0x580];
  STACK[0x5F8] = *(v1 + 8 * v0);
  return sub_1001C8BE4(v2);
}

uint64_t sub_10018651C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a4 + 40 * v4 + 28);
  switch(v8)
  {
    case 1:
      v10 = STACK[0x5F0];
      STACK[0x4D0] = *(v7 + 8 * (v5 - 8417));
      return sub_1001AD354(v10);
    case 3:
      return (*(v7 + 8 * (((11 * (v5 ^ 0x246F) + 271 * (v5 ^ 0x2435) - 6545) * (*(a4 + 40 * v4 + 16) == 0)) ^ (v5 - 5020))))();
    case 2:
      return (*(v7 + 8 * (((STACK[0x5F0] != 0) * (v5 - 9061)) ^ (v5 - 771))))();
    default:
      return (STACK[0x958])(a1, a2, a3, (v6 + 5));
  }
}

uint64_t sub_100186618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  LODWORD(STACK[0x25C]) = v63;
  STACK[0x2A8] = v62;
  LODWORD(STACK[0x220]) = 165422439;
  return sub_1001A4718(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

void sub_10018663C(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x1000F8624);
}

uint64_t sub_10018665C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, int a15, char a16, int a17, unsigned int a18, uint64_t a19, char *a20)
{
  a18 = (v20 - 4101) ^ (33731311 * ((1639025179 - (&a17 ^ 0xBAAF4092 | 0x61B18A1B) + (&a17 ^ 0xBAAF4092 | 0x9E4E75E4)) ^ 0x1D17FF55));
  a19 = a13;
  a20 = &a12;
  (*(v21 + 8 * (v20 + 2248)))(&a17);
  a19 = a13;
  a20 = &a16;
  a18 = (v20 - 4101) ^ (33731311 * ((&a17 & 0x8FEBB0C5 | ~(&a17 | 0x8FEBB0C5)) ^ 0x49E28519));
  (*(v21 + 8 * (v20 + 2248)))(&a17);
  a18 = (v20 - 4101) ^ (33731311 * ((((2 * &a17) | 0x94298832) - &a17 + 904608743) ^ 0xF3E20E3A));
  a19 = a13;
  a20 = &a10;
  (*(v21 + 8 * (v20 ^ 0x39C8)))(&a17);
  a19 = a13;
  LODWORD(a20) = v20 - 2008441969 * (((&a17 | 0x4B3C9D43) + (~&a17 | 0xB4C362BC)) ^ 0x3A5C94C) - 1668;
  v23 = (*(v21 + 8 * (v20 ^ 0x393A)))(&a17);
  return (*(v21 + 8 * ((15 * (a17 == v22 + v20 - 1811696420)) ^ v20)))(v23);
}

uint64_t sub_100186818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  (*(v17 + 8 * (v13 + 4046)))(v15);
  v18 = STACK[0x330];
  *(v16 - 224) = *a13;
  *(v16 - 232) = v13 + 1358806181 * ((v16 - 232) ^ 0x3F2F6C83) - 2259;
  v19 = (*(v18 + 8 * (v13 + 4038)))(v16 - 232);
  if (v14)
  {
    v20 = 1;
  }

  else
  {
    v20 = LODWORD(STACK[0x7AC]) == ((v13 - 138917504) & 0x847B79D ^ 0xFFFF4C2C);
  }

  v21 = v20;
  return (*(STACK[0x330] + 8 * ((v13 - 757) ^ (32 * v21))))(v19);
}

uint64_t sub_100186974()
{
  v4 = 3 * (v3 ^ 0xCF8);
  v10 = (v3 + 5483) ^ (((((&v8 | 0x8A32E5F4) ^ 0xFFFFFFFE) - (~&v8 | 0x75CD1A0B)) ^ 0x2DA4C969) * v1);
  v9 = v6;
  (*(v0 + 8 * (v3 ^ 0x2EA3)))(&v8);
  v9 = v7;
  v10 = (v4 + 2325) ^ (((&v8 + 1838873659 - 2 * (&v8 & 0x6D9AFC3B)) ^ 0x35F32F59) * v1);
  (*(v0 + 8 * (v4 + 3591)))(&v8);
  return (v2 - 16257999);
}

uint64_t sub_100186A7C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return sub_100186A88();
}

uint64_t sub_100186AEC@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x4A4;
  v3 = (*(v1 + 8 * (a1 + 7136)))();
  STACK[0x7A8] = 0;
  v4 = STACK[0x524];
  v5 = (v2 - 2123);
  STACK[0x740] += v5 ^ 0xFFFFFFFFFFFFFB65;
  return (*(v1 + 8 * ((913 * (v4 == v2 + 16254671)) ^ v5)))(v3);
}

uint64_t sub_100186C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, __int16 a15, char a16, __int16 a17, char a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, char *a25)
{
  a24 = (1710126949 * (((&a20 | 0xD6919CF8) - (&a20 & 0xD6919CF8)) ^ 0xE48AC768)) ^ 0xD06;
  a22 = a19;
  a23 = &a14;
  a25 = &a18;
  (*(v25 + 76664))(&a20);
  a21 = (33731311 * (((&a20 | 0x96AB87FF) - (&a20 & 0x96AB87FF)) ^ 0xAF5D4DDC)) ^ 0xC9C;
  a22 = a19;
  a23 = &a16;
  (*(v25 + 76616))(&a20);
  a22 = a19;
  LODWORD(a23) = 5661 - 2008441969 * (((&a20 | 0x46594474) - (&a20 & 0x46594474)) ^ 0xEC0107A);
  v26 = (*(v25 + 77016))(&a20);
  return (*(v25 + 8 * ((50 * (a20 == 16257999)) | 0x138C)))(v26);
}

uint64_t sub_100186ED0(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v29 = a15 - 8;
  v30 = a16 + v29 + v18;
  v31.i64[0] = a16 + v29 + 11;
  v31.i64[1] = a16 + v29 + 10;
  v32.i64[0] = a16 + v29 + 13;
  v32.i64[1] = a16 + v29 + 12;
  v33.i64[0] = a16 + v29 + 15;
  v33.i64[1] = a16 + v29 + 14;
  v34.i64[0] = v30 + 8;
  v34.i64[1] = a16 + v29 + 16;
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
  v58 = veorq_s8(vaddq_s64(v56, v54), v20);
  v59 = veorq_s8(v57, v20);
  v60 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v61 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v62 = veorq_s8(v58, v60);
  v63 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v65 = veorq_s8(vaddq_s64(v63, v61), v21);
  v66 = veorq_s8(v64, v21);
  v67 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v68 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v69 = veorq_s8(v65, v67);
  v70 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v72 = vaddq_s64(v70, v68);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v72, v72), v22), v72), v23), v24);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v71, v71), v22), v71), v23), v24);
  v75 = vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL);
  v76 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v77 = veorq_s8(v73, v75);
  v78 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v77);
  v80 = veorq_s8(vaddq_s64(v78, v76), v25);
  v81 = veorq_s8(v79, v25);
  v82 = vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL);
  v83 = veorq_s8(v81, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v84 = veorq_s8(v80, v82);
  v85 = vsraq_n_u64(vshlq_n_s64(v81, 0x38uLL), v81, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL), v84);
  v87 = veorq_s8(vaddq_s64(v85, v83), v26);
  v88 = veorq_s8(v86, v26);
  v89 = vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL);
  v90 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v91 = veorq_s8(v87, v89);
  v92 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v94 = vaddq_s64(v43, a5);
  v95 = vaddq_s64(v93, v91);
  v96 = veorq_s8(vaddq_s64(v92, v90), v28);
  v127.val[3] = vshlq_u64(veorq_s8(v95, v28), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v127.val[2] = vshlq_u64(v96, vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v97 = veorq_s8(v94, a6);
  v98 = veorq_s8(v94, a7);
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), a8);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), v20);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v21);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v105, v105), v22), v105), v23), v24);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v25);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v26);
  v111 = vaddq_s64(v44, a5);
  v127.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL))), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v112 = veorq_s8(v111, a6);
  v113 = veorq_s8(v111, a7);
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), a8);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v20);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v21);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v120, v120), v22), v120), v23), v24);
  v122 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL), v122), v25);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v125 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), v124), v26);
  v127.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL))), v28), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a2)));
  *(v30 + 1) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v127, v27)), *(v17 + v29));
  return (*(STACK[0x330] + 8 * (((a14 == v29) * v19) ^ v16)))();
}

uint64_t sub_100186F04@<X0>(_DWORD *a1@<X8>)
{
  v4 = (v1 - 901052120) & 0x15B4FFFE;
  *(v2 + 80) = 1;
  v5 = v4 - 943;
  *(v2 + 84) = *a1;
  v6 = STACK[0x728];
  STACK[0x808] = &STACK[0xA30] + STACK[0x728];
  STACK[0x728] = ((v4 - 4397) | 0x1026u) - 2354 + v6 - 2973;
  v7 = STACK[0x340];
  STACK[0x5A8] = STACK[0x340];
  STACK[0x3B8] = 0;
  STACK[0x338] = 0;
  STACK[0x610] = 0;
  LODWORD(STACK[0x4D4]) = 0;
  STACK[0x5E8] = 0;
  STACK[0x7C8] = 0;
  v8 = (*(v3 + 8 * (v4 + 3978)))();
  if (v7)
  {
    v9 = LODWORD(STACK[0x684]) == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  return (*(STACK[0x330] + 8 * ((11 * v10) ^ v5)))(v8);
}

uint64_t sub_100187120@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 - 7764) | 0xAA0;
  v4 = (*(v2 + 8 * (v3 ^ 0x2B08)))(a1 << (((((v1 - 84) | 0xA0) + 86) | 0x86u) + 125), 0x100004000313F17) != 0;
  return (*(v2 + 8 * (v3 ^ (4 * v4))))();
}

uint64_t sub_1001871FC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = LOWORD(STACK[0x974]);
  if (v68 == 17168)
  {
    goto LABEL_4;
  }

  if (v68 != 33980)
  {
    v69 = a64;
    if (v68 != 20706)
    {
LABEL_5:
      STACK[0x938] = 0;
      LODWORD(STACK[0x6B4]) = 197499219;
      return (*(v67 + 8 * (((v66 == v69 + 16251908) * (((v69 - 510838125) & 0x1E72BDBD) - 1897)) ^ (v69 - 4886))))();
    }

LABEL_4:
    STACK[0x410] = v64;
    v66 = 16215638;
    v69 = a64;
    goto LABEL_5;
  }

  v71 = STACK[0x430];
  STACK[0x410] = v64;
  LODWORD(STACK[0x6B4]) = a1;
  return (*(v67 + 8 * (((v71 + v65 == 0) * (((a64 - 507246742) & 0x1E3BF9FF) - 6364)) | (a64 - 3877))))();
}

uint64_t sub_100187378@<X0>(uint64_t a1@<X8>)
{
  v2 = STACK[0x3E8];
  STACK[0x848] = *(STACK[0x3E8] + 8 * v1);
  return sub_1001A9E30(v2, a1);
}

uint64_t sub_1001873E4(void *a1)
{
  v3 = v1 ^ 0x552;
  v4 = (v1 ^ 0x552) + 5615;
  *a1 = 0;
  a1[1] = 0;
  STACK[0x838] = *(v2 + 8 * v3);
  v5 = (*(v2 + 8 * (v4 ^ 0x3269)))(112, 0x100004098D10E67);
  STACK[0x828] = v5;
  return (*(v2 + 8 * (((v5 == 0) * (v4 ^ 0x17D4)) ^ (v4 - 1218))))();
}

uint64_t sub_100187578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x3E4];
  v6 = (LODWORD(STACK[0x3E4]) - 4673) | 0x11;
  LODWORD(STACK[0x534]) = STACK[0x3A0];
  LODWORD(STACK[0x61C]) = STACK[0x3B0];
  LODWORD(STACK[0x7E0]) = STACK[0x3C0];
  LODWORD(STACK[0x844]) = v4;
  return (*(a4 + 8 * (((v6 - 540) * (a1 != 0)) ^ (v5 + 3363))))();
}

void sub_1001875D0()
{
  v0 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E370) ^ 0xDF)) ^ byte_100683C50[byte_10069D200[(-85 * ((dword_10077E220 + dword_10077E370) ^ 0xDF))] ^ 0x71]) - 151);
  v1 = *(v0 - 4);
  v2 = *(&off_100755B60 + (byte_100683C5C[(byte_10069D20C[(-85 * ((dword_10077E220 + v1) ^ 0xDF)) - 12] ^ 0x71) - 12] ^ (-85 * ((dword_10077E220 + v1) ^ 0xDF))) + 42);
  v3 = &v5[*v2 - v1];
  *(v0 - 4) = 2054362027 * v3 - 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * (((v6 | 0x3C431B9F) - v6 + (v6 & 0xC3BCE460)) ^ 0xE58400F);
  LOBYTE(v2) = -85 * ((*v2 - *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E370) ^ 0xDF)) ^ byte_100683C50[byte_10069D200[(-85 * ((dword_10077E220 + dword_10077E370) ^ 0xDF))] ^ 0xE9]) + 135) - 8;
  (*&v4[8 * (byte_100694EA8[(byte_10068DFC8[v2 - 8] ^ 0xBF) - 8] ^ v2) + 75368])(v6);
  __asm { BRAA            X8, X17 }
}

void sub_100187898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, char a6, _BYTE *a7, char a8)
{
  *a5 = a6;
  *a7 = a8;
  JUMPOUT(0x100162DF8);
}

uint64_t sub_1001878E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, unsigned int a16)
{
  v19 = v18 | 0x142;
  v20 = (v18 | 0x142) + 5287;
  a16 = (v19 + 6943) ^ (((-1107368521 - (&a14 | 0xBDFEE5B7) + (&a14 | 0x42011A48)) ^ 0x1A68C92A) * v17);
  a15 = a12;
  (*(v16 + 8 * (v19 ^ 0x20F7u)))(&a14);
  a16 = (v20 + 1656) ^ (((((2 * &a14) | 0xEE054350) - &a14 + 150822488) ^ 0xAF6B72CA) * v17);
  a15 = a11;
  v21 = (*(v16 + 8 * (v20 ^ 0x3FAEu)))(&a14);
  return sub_1001AA9CC(v21);
}

uint64_t sub_1001878F0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, int a54, uint64_t a55, uint64_t a56)
{
  *(((2 * v56) & 0x168F7AFE8) + (v56 ^ 0xF76B9F7EB47BD7F4) + a56 + 0x89460814B84280CLL) = 0;
  v58 = (((a1 - 687) | 0x64) ^ 0xC61) + v56;
  *(((2 * v58) & 0x35DF13DE) + (v58 ^ 0xDFD5DDF51AEF89EFLL) + a56 + 0x202A220AE5107611) = -9392;
  v59 = (a54 ^ 0xCF980618) & (2 * (a54 & 0x19)) ^ a54 & 0x19;
  LODWORD(v58) = ((2 * (a54 ^ 0x8F100618)) ^ 0x81104902) & (a54 ^ 0x8F100618);
  v60 = v58 | 1;
  LODWORD(v58) = (v58 | 0x60C00681) & (4 * v59) ^ v59;
  v61 = ((4 * v60) ^ 0x83309804) & v60 ^ (4 * v60) & 0x60CC2680;
  LODWORD(v58) = v58 ^ 0x60CC2681 ^ (v61 ^ 0x200) & (16 * v58);
  v62 = (16 * (v61 ^ 0x60CC2481)) & 0x60CC2680 ^ 0x600C0681 ^ ((16 * (v61 ^ 0x60CC2481)) ^ 0xCC26810) & (v61 ^ 0x60CC2481);
  v63 = (v58 << 8) & 0x60CC2600 ^ v58 ^ ((v58 << 8) ^ 0xCC268100) & v62;
  v64 = a54 ^ (2 * ((v63 << 16) & 0x60CC0000 ^ v63 ^ ((v63 << 16) ^ 0x26810000) & ((v62 << 8) & 0x60CC0000 ^ 0x20C80000 ^ ((v62 << 8) ^ 0x4C260000) & v62)));
  v65 = (((2 * (v56 + 6)) & 0x17CE7EEDALL) + ((v56 + 6) ^ 0xFBEF9D2EBE73F76DLL) + a56 + 0x41062D1418C0893);
  *v65 = HIBYTE(v64) ^ 0xEF;
  v65[1] = BYTE2(v64) ^ 0x4C;
  v65[2] = BYTE1(v64) ^ 0x6D;
  v65[3] = v64 ^ 0x9B;
  return (*(v57 + 8 * ((121 * ((LODWORD(STACK[0x48C]) | ((LODWORD(STACK[0x48C]) < 0x1023DF67) << 32)) == 270786407)) ^ a1)))();
}

uint64_t sub_100187BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21)
{
  a20 = 476323082 - 1710126949 * ((&a20 + 528296211 - 2 * (&a20 & 0x1F7D2913)) ^ 0x2D667283);
  v22 = (*(v21 + 77088))(&a20);
  return (*(v21 + 8 * ((47 * (a21 == 16257999)) ^ 0x18C9u)))(v22);
}

uint64_t sub_100187C58@<X0>(uint64_t a1@<X3>, unint64_t a2@<X8>)
{
  v5 = STACK[0x8DC];
  STACK[0x6A8] = a2;
  LODWORD(STACK[0x938]) = v4;
  LOWORD(STACK[0x93E]) = v3;
  LODWORD(STACK[0x940]) = v5;
  LODWORD(STACK[0x944]) = STACK[0x87C];
  STACK[0x948] = STACK[0x810];
  STACK[0x6E8] = STACK[0x708];
  return (*(a1 + 8 * (((((v2 + 31) ^ 0xFFFFF2C9) + v2 - 1229) * (a2 == 0)) ^ v2)))();
}

uint64_t sub_100187D0C()
{
  v4 = LOWORD(STACK[0x8C6]);
  switch(v4)
  {
    case 17168:
      goto LABEL_4;
    case 33980:
      v5 = (LODWORD(STACK[0x32C]) - 1059446587) & 0x3F25DFCD;
      v6 = LODWORD(STACK[0x32C]) + 756;
      v7 = STACK[0x630];
      STACK[0x6D8] = v0;
      LODWORD(STACK[0x4B4]) = v2;
      return (*(v3 + 8 * (((v7 + v1 != 0) * (v5 ^ 0x1694)) ^ v6)))();
    case 20706:
LABEL_4:
      STACK[0x6D8] = v0;
      break;
  }

  *STACK[0x4C0] = 0;
  LODWORD(STACK[0x4B4]) = 197499219;
  return sub_100187DB4();
}

uint64_t sub_100187DB4()
{
  v2 = *STACK[0x3A8];
  v3 = STACK[0x730];
  STACK[0x3B0] = STACK[0x730];
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v1 + 8 * ((v5 * ((v0 + 2087919628) & 0x838CC6A9 ^ 0x372)) ^ v0)))();
}

uint64_t sub_100187EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * ((257339326 - (&a12 | 0xF56AFBE) + (&a12 | 0xF0A95041)) ^ 0x40AAC837) + 8154;
  a12 = &a9;
  v16 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * ((12 * (a13 == 16257999)) ^ v15)))(v16);
}

uint64_t sub_1001880DC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFE563 ^ (v4 + 2122)) + v2;
  *(v5 - 7 + v6) = *(a2 - 7 + v6);
  return (*(a1 + 8 * ((2222 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_100188180()
{
  v0 = STACK[0x3F8] - 25649;
  v1 = STACK[0x3F8] - 8111;
  v2 = LOWORD(STACK[0x9FE]);
  STACK[0x520] = STACK[0xA00];
  return (*(STACK[0x400] + 8 * ((535 * (v2 == (v0 & 0x5D77 ^ 0x5E77))) ^ v1)))();
}

uint64_t sub_1001881F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = 1317436891 * ((&a14 + 599706472 - 2 * (&a14 & 0x23BECB68)) ^ 0x93BD531E) + 8154;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((387 * (a15 == v18)) ^ v17)))(v19);
}

uint64_t sub_1001882EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = LODWORD(STACK[0x3E4]) - 1932;
  v6 = v4 == -328589762;
  LOBYTE(STACK[0x457]) = v6;
  return (*(a4 + 8 * ((LODWORD(STACK[0x3A0]) * v6) ^ v5)))();
}

void sub_100188328(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x1001C4C44);
}

void sub_100188348(int a1@<W8>)
{
  v1 = ((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36AD3;
  v2 = __ROR8__(v1 & 0xFFFFFFFFFFFFFFF8, 8);
  v3 = ((a1 - 1375) - v2 + 0x6AF7234D0CC11FB8) & 0xE17ED4F2859DC12FLL | (v2 + 0x1508DCB2F33ECE2BLL) & 0x1A812B0D7A623ED0;
  v4 = v3 ^ 0xAC9796C9EA8B26FDLL;
  v3 ^= 0x4D1735E737D57A1uLL;
  v5 = __ROR8__(v4, 8);
  v6 = (v5 + v3 - ((2 * (v5 + v3)) & 0xA8F535F8906AB678) - 0x2B856503B7CAA4C4) ^ 0x30E7ED23CF08E442;
  v7 = v6 ^ __ROR8__(v3, 61);
  v8 = (__ROR8__(v6, 8) + v7) ^ 0xF5A2F1B9B5D0B209;
  v9 = v8 ^ __ROR8__(v7, 61);
  v10 = (__ROR8__(v8, 8) + v9) ^ 0x5963B6C555D97F1FLL;
  v11 = v10 ^ __ROR8__(v9, 61);
  v12 = __ROR8__(v10, 8);
  v13 = __ROR8__((((2 * ((v12 + v11) ^ 0xE7B5DC45273D63A1)) | 0x504C6837B780C63ELL) - ((v12 + v11) ^ 0xE7B5DC45273D63A1) + 0x57D9CBE4243F9CE1) ^ 0x2ED675740CE22449, 8);
  v14 = (((2 * ((v12 + v11) ^ 0xE7B5DC45273D63A1)) | 0x504C6837B780C63ELL) - ((v12 + v11) ^ 0xE7B5DC45273D63A1) + 0x57D9CBE4243F9CE1) ^ 0x2ED675740CE22449 ^ __ROR8__(v11, 61);
  v15 = (((2 * (v13 + v14)) | 0x4F1E4801C06BB8FCLL) - (v13 + v14) + 0x5870DBFF1FCA2382) ^ 0xC34C380290B10212;
  v16 = v15 ^ __ROR8__(v14, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0x1A2AEBE44253AF03;
  v18 = __ROR8__((((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36AD2) & 0xFFFFFFFFFFFFFFF8, 8);
  v19 = v18 - ((2 * v18 + 0x2A11B965E67D9C56) & 0x86491E2C94CF3D9ALL) - 0x27D29436C2599308;
  v20 = v19 ^ 0xACDCD2D2571791FLL;
  v19 ^= 0xA28B28BABC870843;
  v21 = __ROR8__(v20, 8);
  v22 = (((2 * ((v21 + v19) ^ 0xE86B6D598CE7C62CLL)) & 0x3776BD40C68BCDALL) - ((v21 + v19) ^ 0xE86B6D598CE7C62CLL) - 0x1BBB5EA06345E6ELL) ^ 0xF2B25093F211D8C0;
  v23 = v22 ^ __ROR8__(v19, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xF5A2F1B9B5D0B209;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x5963B6C555D97F1FLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x61459D2AF01F24F7;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x64C31C027084DE6CLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0x1A2AEBE44253AF03;
  v33 = __ROR8__(v32, 8);
  v34 = __ROR8__(v31, 61);
  v35 = (((((v33 + (v32 ^ v34) - ((2 * (v33 + (v32 ^ v34))) & 0x46C4DEB32D067766) + 0x23626F5996833BB3) ^ 0x88522D8BBE0467F2) >> (8 * ((((2 * LOBYTE(STACK[0x220])) & 0xA6) + (LOBYTE(STACK[0x220]) ^ 0xD3) + LOBYTE(STACK[0x718]) + 46) & 7u))) ^ *(((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36AD2)) << 48) | (((((__ROR8__(v17, 8) + (v17 ^ __ROR8__(v16, 61))) ^ 0xAB3042D228875C41) >> (8 * ((((2 * LOBYTE(STACK[0x220])) & 0xA6) + (LOBYTE(STACK[0x220]) ^ 0xD3) + LOBYTE(STACK[0x718]) + 45) & 7u))) ^ *v1) << 56);
  v36 = __ROR8__((((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36AD1) & 0xFFFFFFFFFFFFFFF8, 8);
  v37 = ((2 * (v36 - 0x6AF7234D0CC131D5)) | 0xE988EE55C850EEE4) - (v36 - 0x6AF7234D0CC131D5) + 0xB3B88D51BD7888ELL;
  v38 = v37 ^ 0xBD2D35118B3E90A0;
  v37 ^= 0x156BD08612C8E1FCuLL;
  v39 = (__ROR8__(v38, 8) + v37) ^ 0xE49D77DF873DBF7ELL;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v42 = __ROR8__((v41 + v40 - ((2 * (v41 + v40)) & 0x6A1EDDA6EAF44D6) - 0x7CAF0912C8A85D95) ^ 0x76F2075482871062, 8);
  v43 = (v41 + v40 - ((2 * (v41 + v40)) & 0x6A1EDDA6EAF44D6) - 0x7CAF0912C8A85D95) ^ 0x76F2075482871062 ^ __ROR8__(v40, 61);
  v44 = (v42 + v43) ^ 0x5963B6C555D97F1FLL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ 0x61459D2AF01F24F7;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ 0x64C31C027084DE6CLL;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0x1A2AEBE44253AF03;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = __ROR8__(v50, 8);
  v53 = v35 | (((((((v52 + v51) | 0xC0D69FAEA99994B0) - ((v52 + v51) | 0x3F29605156666B4FLL) + 0x3F29605156666B4FLL) ^ 0x6BE6DD7C811EC8F1) >> (8 * ((((2 * LOBYTE(STACK[0x220])) & 0xA6) + (LOBYTE(STACK[0x220]) ^ 0xD3) + LOBYTE(STACK[0x718]) + 47) & 7u))) ^ *(((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36AD1)) << 40);
  v54 = (__ROR8__((((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36AD0) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v55 = __ROR8__(v54 ^ 0x4DE9423B6F16E7D2, 8);
  v54 ^= 0xE5AFA7ACF6E0968ELL;
  v56 = (v55 + v54) ^ 0xE49D77DF873DBF7ELL;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0xF5A2F1B9B5D0B209;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0x5963B6C555D97F1FLL;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (((v62 + v61) | 0xAC2390E6C13EB103) - ((v62 + v61) | 0x53DC6F193EC14EFCLL) + 0x53DC6F193EC14EFCLL) ^ 0xCD660DCC312195F4;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ 0x64C31C027084DE6CLL;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (v67 + v66 - ((2 * (v67 + v66)) & 0xE3F30D59F9F95424) + 0x71F986ACFCFCAA12) ^ 0x6BD36D48BEAF0511;
  v69 = v53 | (((((__ROR8__(v68, 8) + (v68 ^ __ROR8__(v66, 61))) ^ 0xAB3042D228875C41) >> (8 * ((((2 * LOBYTE(STACK[0x220])) & 0xA6) + (LOBYTE(STACK[0x220]) ^ 0xD3) + LOBYTE(STACK[0x718]) + 48) & 7u))) ^ *(((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36AD0)) << 32);
  v70 = __ROR8__((((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36ACFLL) & 0xFFFFFFFFFFFFFFF8, 8);
  v71 = -2 - (((0x6AF7234D0CC131D4 - v70) | 0x44BA01A51A183DE0) + ((v70 + 0x1508DCB2F33ECE2BLL) | 0xBB45FE5AE5E7C21FLL));
  v72 = __ROR8__(v71 ^ 0xD53439E750EDA32, 8);
  v71 ^= 0xA515A609ECF8AB6ELL;
  v73 = (((2 * ((v72 + v71) ^ 0xBE8B2A9C9DF400CFLL)) & 0xAA23D21ABB2D7C00) - ((v72 + v71) ^ 0xBE8B2A9C9DF400CFLL) + 0x2AEE16F2A26941FFLL) ^ 0x70F84BB1B8A0FE4ELL;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = __ROR8__(v73, 8);
  v76 = __ROR8__((((2 * (v75 + v74)) & 0x7D84ABA23E9CFE7ELL) - (v75 + v74) - 0x3EC255D11F4E7F40) ^ 0x349F5B97556132C9, 8);
  v77 = (((2 * (v75 + v74)) & 0x7D84ABA23E9CFE7ELL) - (v75 + v74) - 0x3EC255D11F4E7F40) ^ 0x349F5B97556132C9 ^ __ROR8__(v74, 61);
  v78 = (((v76 + v77) | 0xD44CE57641558F6ELL) - ((v76 + v77) | 0x2BB31A89BEAA7091) + 0x2BB31A89BEAA7091) ^ 0x8D2F53B3148CF071;
  v79 = __ROR8__(v78, 8);
  v80 = v78 ^ __ROR8__(v77, 61);
  v81 = (((2 * (v79 + v80)) & 0x56507D4A3E0F7B40) - (v79 + v80) - 0x2B283EA51F07BDA1) ^ 0xB5925C7010E766A8;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (((2 * (v83 + v82)) & 0xEEF74AFFBBE4930CLL) - (v83 + v82) + 0x8845A80220DB679) ^ 0x6C47468252896815;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (((2 * (v86 + v85)) & 0x29B65A41F14458CCLL) - (v86 + v85) - 0x14DB2D20F8A22C67) ^ 0xF10E393B450E7C9ALL;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = __ROR8__(v87, 8);
  v90 = v69 & 0xFFFFFFFF00FFFFFFLL | (((((v89 + v88 - ((2 * (v89 + v88)) & 0xDE26E3A15DEF6F6ALL) + 0x6F1371D0AEF7B7B5) ^ 0xC42333028670EBF4) >> (8 * ((((2 * LOBYTE(STACK[0x220])) & 0xA6) + (LOBYTE(STACK[0x220]) ^ 0xD3) + LOBYTE(STACK[0x718]) + 49) & 7u))) ^ *(((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36ACFLL)) << 24);
  v91 = __ROR8__((((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36ACELL) & 0xFFFFFFFFFFFFFFF8, 8);
  v92 = ((2 * v91 + 0x2A11B965E67D9C56) & 0xCB0FE93C98309366) - v91 + 0x56F2EAEC0A8E821;
  v93 = v92 ^ 0xD391495ADCF1519ELL;
  v92 ^= 0x7BD7ACCD450720C2uLL;
  v94 = __ROR8__(v93, 8);
  v95 = (((v94 + v92) ^ 0x8FF42FE233FDEFE0 | 0xCCF5982A4DA0F226) - ((v94 + v92) ^ 0x8FF42FE233FDEFE0 | 0x330A67D5B25F0DD9) + 0x330A67D5B25F0DD9) ^ 0xA79CC017F960A2B8;
  v96 = v95 ^ __ROR8__(v92, 61);
  v97 = (__ROR8__(v95, 8) + v96) ^ 0xF5A2F1B9B5D0B209;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = (__ROR8__(v97, 8) + v98) ^ 0x5963B6C555D97F1FLL;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = __ROR8__(v99, 8);
  v102 = (((2 * (v101 + v100)) | 0x6B60C641F567F5AALL) - (v101 + v100) - 0x35B06320FAB3FAD5) ^ 0x54F5FE0A0AACDE22;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = (__ROR8__(v102, 8) + v103) ^ 0x64C31C027084DE6CLL;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = (__ROR8__(v104, 8) + v105) ^ 0x1A2AEBE44253AF03;
  v107 = v90 & 0xFFFFFFFFFF00FFFFLL | (((((__ROR8__(v106, 8) + (v106 ^ __ROR8__(v105, 61))) ^ 0xAB3042D228875C41) >> (8 * ((((2 * LOBYTE(STACK[0x220])) & 0xA6) + (LOBYTE(STACK[0x220]) ^ 0xD3) + LOBYTE(STACK[0x718]) + 50) & 7u))) ^ *(((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36ACELL)) << 16);
  v108 = (__ROR8__((((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36ACDLL) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v109 = (__ROR8__(v108 ^ 0x4DE9423B6F16E7D2, 8) + (v108 ^ 0xE5AFA7ACF6E0968ELL)) ^ 0xE49D77DF873DBF7ELL;
  v110 = v109 ^ __ROR8__(v108 ^ 0xE5AFA7ACF6E0968ELL, 61);
  v111 = __ROR8__(v109, 8);
  v112 = (v111 + v110 - ((2 * (v111 + v110)) & 0x10D88C22F14EF5CLL) + 0x86C461178A77AELL) ^ 0xF52435D8A25AC5A7;
  v113 = v112 ^ __ROR8__(v110, 61);
  v114 = (__ROR8__(v112, 8) + v113) ^ 0x5963B6C555D97F1FLL;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = __ROR8__(v114, 8);
  v117 = (((2 * (v116 + v115)) | 0xF8F4D7410A173B82) - (v116 + v115) - 0x7C7A6BA0850B9DC1) ^ 0x1D3FF68A7514B936;
  v118 = v117 ^ __ROR8__(v115, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0x64C31C027084DE6CLL;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = __ROR8__(v119, 8);
  v122 = (((v121 + v120) & 0x865B83655FEF6F5 ^ 0x2498320576F0D5) + ((v121 + v120) & 0xF79A47C9AA01090ALL ^ 0xC68006C000000803) - 1) ^ 0xDC8E7516472557D4;
  v123 = v107 & 0xFFFFFFFFFFFF00FFLL | (((((__ROR8__(v122, 8) + (v122 ^ __ROR8__(v120, 61))) ^ 0xAB3042D228875C41) >> (8 * ((((2 * LOBYTE(STACK[0x220])) & 0xA6) + (LOBYTE(STACK[0x220]) ^ 0xD3) + LOBYTE(STACK[0x718]) + 51) & 7u))) ^ *(((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36ACDLL)) << 8);
  v124 = __ROR8__((((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36ACCLL) & 0xFFFFFFFFFFFFFFF8, 8);
  v125 = ((2 * (v124 - 0x6AF7234D0CC131D5)) | 0x804B0297E5FB7EA4) - (v124 - 0x6AF7234D0CC131D5) - 0x4025814BF2FDBF52;
  v126 = v125 ^ 0x9CCC3709DEB5880;
  v125 ^= 0xA18A26E7041D29DCLL;
  v127 = __ROR8__(v126, 8);
  v128 = (((2 * (v127 + v125)) & 0xC07D41EEC5780520) - (v127 + v125) + 0x1FC15F089D43FD6FLL) ^ 0xFB5C28D71A7E4211;
  v129 = v128 ^ __ROR8__(v125, 61);
  v130 = __ROR8__(v128, 8);
  v131 = (v130 + v129 - ((2 * (v130 + v129)) & 0xC66D97DBD851D3B2) - 0x1CC9341213D71627) ^ 0x16943A5459F85BD0;
  v132 = v131 ^ __ROR8__(v129, 61);
  v133 = __ROR8__(v131, 8);
  v134 = (((2 * (v133 + v132)) | 0x341E0CCC86BF04E6) - (v133 + v132) + 0x65F0F999BCA07D8DLL) ^ 0xC36CB0A31686FD6CLL;
  v135 = v134 ^ __ROR8__(v132, 61);
  v136 = __ROR8__(v134, 8);
  v137 = __ROR8__((v136 + v135 - ((2 * (v136 + v135)) & 0xA996373FDA7782A4) + 0x54CB1B9FED3BC152) ^ 0x358E86B51D24E5A5, 8);
  v138 = (v136 + v135 - ((2 * (v136 + v135)) & 0xA996373FDA7782A4) + 0x54CB1B9FED3BC152) ^ 0x358E86B51D24E5A5 ^ __ROR8__(v135, 61);
  v139 = (v137 + v138) ^ 0x64C31C027084DE6CLL;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = __ROR8__(v139, 8);
  v142 = (v141 + v140 - ((2 * (v141 + v140)) & 0xAB9BCCB5A89BD69ALL) + 0x55CDE65AD44DEB4DLL) ^ 0x4FE70DBE961E444ELL;
  v143 = v142 ^ __ROR8__(v140, 61);
  v144 = __ROR8__(v142, 8);
  v145 = v123 | ((((((2 * (v144 + v143)) & 0x970A9B9F1F62DE94) - (v144 + v143) - 0x4B854DCF8FB16F4BLL) ^ 0x1F4AF0E258C9CCF4) >> (8 * ((((2 * LOBYTE(STACK[0x220])) & 0xA6) + (LOBYTE(STACK[0x220]) ^ 0xD3) + LOBYTE(STACK[0x718]) + 52) & 7u))) ^ *(((2 * STACK[0x220]) & 0x7BE8F7FFFBC6D5A6) + (STACK[0x220] ^ 0x3DF47BFFFDE36AD3) + STACK[0x718] - 0x3DF47BFFFDE36ACCLL));
  STACK[0x710] = v145 - ((2 * v145) & 0x8F13CB4E9EA6B5BALL) + 0x4789E5A74F535ADDLL;
  JUMPOUT(0x100189230);
}

uint64_t sub_10018923C@<X0>(int a1@<W8>)
{
  STACK[0x628] = STACK[0x8A0];
  v3 = LODWORD(STACK[0x894]) == 197499219 && LOWORD(STACK[0x89A]) == 33980;
  return (*(v1 + 8 * ((v3 * (((a1 - 1356) ^ 0x2DBD) - 8478)) ^ a1)))();
}

uint64_t sub_100189294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 26;
  v67 = (*(v65 + 8 * ((v64 ^ 0x7C60) + 3418)))(26, 0x100004077774924);
  *(a1 + 24) = v67;
  return (*(a64 + 8 * (((v67 != 0) * ((v64 ^ 0x614F) - 1356)) ^ v64 ^ 0x7C60)))();
}

uint64_t sub_10018930C@<X0>(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  return sub_100160358();
}

uint64_t sub_10018936C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, int a14, int a15, char a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, char *a22, unsigned int a23, char *a24)
{
  a24 = &a13;
  a21 = a17;
  a22 = &a11;
  a23 = (v24 + 518) ^ (1710126949 * ((&a19 - 270038435 - 2 * (&a19 & 0xEFE78A5D)) ^ 0xDDFCD1CD));
  (*(v25 + 8 * (v24 ^ 0x2E6Fu)))(&a19);
  a20 = (v24 + 412) ^ (33731311 * (((&a19 | 0xDE3A44FE) - (&a19 & 0xDE3A44FE)) ^ 0xE7CC8EDD));
  a21 = a17;
  a22 = &a16;
  (*(v25 + 8 * (v24 ^ 0x2E69u)))(&a19);
  LODWORD(a22) = v24 - 2008441969 * ((&a19 & 0xAAB1D4BB | ~(&a19 | 0xAAB1D4BB)) ^ 0x1DD77F4A) + 2845;
  a21 = a17;
  v27 = (*(v25 + 8 * (v24 ^ 0x2E9Bu)))(&a19);
  return (*(v25 + 8 * (((a19 == v26) * (((v24 + 3865) ^ 0x1541) - 3918)) | v24)))(v27);
}

uint64_t sub_1001894CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4 == 16257999)
  {
    v7 = STACK[0x8A0];
    v8 = *(STACK[0x8A0] + 8);
    v9 = STACK[0x8A8];
    v9[1] = v8;
    *v9 = *v7;
    return (*(v5 + 8 * (((v8 != 0) * (((v4 - 4984) | 0x210) - 4773)) | (v4 - 376))))();
  }

  else if (a4 == 16215947)
  {
    return (*(v5 + 8 * ((((((v4 - 6431) | 0x1018) ^ 0xFFFFF786) + ((v4 - 3096) | 0x311)) * (*(STACK[0x670] + 8) == 0)) ^ (v4 - 4138))))();
  }

  else
  {
    return sub_100189544();
  }
}

uint64_t sub_1001895F0()
{
  STACK[0x9F8] = v0;
  v3 = STACK[0x3C0];
  STACK[0xA00] = STACK[0x3C0];
  return (*(v2 + 8 * (((v0 - v3 > ((v1 + 708716580) & 0xD5C1D7DB ^ 0x17C2uLL)) * (((v1 - 6083) | 0x182) + 15682)) ^ (v1 + 1903))))();
}

uint64_t sub_100189708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = -v8 - v14;
  v17 = v12 - v11 >= (((v10 - 5880) | 0x508u) ^ 0x51BuLL) && v15 + v9 + 16 >= ((v10 - 2045622060) & 0x79EDB7FB) - 6075 && (v15 + a6 + 18) > 0xF;
  v18 = v15 + a8 + 17;
  v20 = v17 && v18 > 0xF;
  return (*(v13 + 8 * ((464 * v20) ^ v10)))();
}

uint64_t sub_100189818(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, unsigned int a46)
{
  v50 = v47[396] ^ ((((34 * (v46 ^ 0xE0C)) ^ 0x7FFFDAF0) & *v47 | v47[623] & 0x80000000) >> 1);
  v47[623] = (v50 + a1 - (a2 & (2 * v50))) ^ *(v49 + 4 * ((((v46 - 2581) | 0x2008) ^ 0x250F) & *v47));
  return (*(v48 + 8 * ((4866 * (a46 > 0x26F)) ^ v46)))();
}

uint64_t sub_100189918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a15 = &a13;
  a17 = v18 + 3 + 1317436891 * (((&a15 | 0xB9A10AAA) - &a15 + (&a15 & 0x465EF550)) ^ 0x9A292DC) + 5959;
  v20 = (*(v17 + 8 * (v18 + 7445)))(&a15);
  return (*(v17 + 8 * (((a16 == v19) * ((v18 - 2138287347) ^ (v18 - 2138293542))) ^ (v18 + 3))))(v20);
}

uint64_t sub_100189A08@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  STACK[0x388] = 0;
  STACK[0x6A0] = 0;
  return (*(v2 + 8 * (((((1874 * (v1 ^ 0x9CD) - 5556) | 0x80) ^ 0xF9) * (v3 == 0)) ^ v1)))();
}

uint64_t sub_100189A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = 34 * (v64 ^ 0x1AA6);
  v68 = (*(v66 + 8 * (v64 ^ 0x3F43)))();
  return (*(a64 + 8 * ((((1095 * (((v67 - 3004) | 0x1800) ^ 0x1924)) ^ 0x9CB) * (LODWORD(STACK[0x648]) == v65)) ^ v67)))(v68);
}

uint64_t sub_100189AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, char a12, __int16 a13, char a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, char *a21)
{
  a20 = (v21 + 2249) ^ (1710126949 * (((&a16 | 0x614C9C37) - &a16 + (&a16 & 0x9EB363C8)) ^ 0x5357C7A7));
  a21 = &a14;
  a18 = a15;
  a19 = &a10;
  (*(v22 + 8 * (v21 ^ 0x2152)))(&a16);
  a18 = a15;
  a19 = &a12;
  a17 = (v21 + 2143) ^ (33731311 * ((((&a16 | 0x8CE1AF78) ^ 0xFFFFFFFE) - (~&a16 | 0x731E5087)) ^ 0x4AE89AA4));
  (*(v22 + 8 * (v21 ^ 0x2154)))(&a16);
  a18 = a15;
  LODWORD(a19) = v21 - 2008441969 * ((&a16 + 1941461791 - 2 * (&a16 & 0x73B85B1F)) ^ 0x3B210F11) + 4576;
  v23 = (*(v22 + 8 * (v21 + 8542)))(&a16);
  return (*(v22 + 8 * (((a16 == 16257999) * (137 * (v21 ^ 0x418) - 4999)) ^ v21)))(v23);
}

void sub_100189C5C()
{
  v0 = *(&off_100755B60 + ((-85 * ((dword_10077E220 - dword_10077DEA8) ^ 0xDF)) ^ byte_100694EA0[byte_10068DFC0[(-85 * ((dword_10077E220 - dword_10077DEA8) ^ 0xDF))] ^ 0xBF]) + 109);
  v1 = *(v0 - 4);
  v2 = *(&off_100755B60 + ((-85 * (v1 ^ dword_10077E220 ^ 0xDF)) ^ byte_10068DEC0[byte_100683950[(-85 * (v1 ^ dword_10077E220 ^ 0xDF))] ^ 0xEE]) + 85);
  v3 = v1 ^ &v5 ^ *v2;
  *(v0 - 4) = (2054362027 * v3) ^ 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((v6 & 0x95EB65D9 | ~(v6 | 0x95EB65D9)) ^ 0x580FC1B6);
  LOBYTE(v2) = -85 * (*(v0 - 4) ^ 0xDF ^ *v2);
  v4 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077DEA8) ^ 0xDF)) ^ byte_10068DEC0[byte_100683950[(-85 * ((dword_10077E220 + dword_10077DEA8) ^ 0xDF))] ^ 0x21]) + 150) - 8;
  (*&v4[8 * (byte_100694EA8[(byte_10068DFC8[v2 - 8] ^ 1) - 8] ^ v2) + 75592])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100189E70@<X0>(unsigned __int16 a1@<W8>)
{
  v4 = (((((v2 ^ 0x8206) + 32250) ^ ((v2 ^ 0x88B8) + 30536) ^ ((v2 ^ 0xE028 ^ ((v1 ^ 0x597) - 1594)) + 5707)) - 19509) >> 6) < 0x343u;
  v5 = ((((v2 ^ 0x8206) + 32250) ^ ((v2 ^ 0x88B8) + 30536) ^ ((v2 ^ 0xE028 ^ ((v1 ^ 0x597) - 1594)) + 5707)) - 19509) > (a1 - 12096);
  if ((a1 >> 6) > 0xBCu == v4)
  {
    v4 = v5;
  }

  return (*(v3 + 8 * ((1773 * v4) ^ v1)))();
}

void sub_100189F10()
{
  v0 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E3C0) ^ 0xDF)) ^ byte_100683C50[byte_10069D200[(-85 * ((dword_10077E220 + dword_10077E3C0) ^ 0xDF))] ^ 0xE2]) + 99);
  v1 = *(v0 - 4);
  v2 = *(&off_100755B60 + (byte_100683C50[byte_10069D200[(-85 * (v1 ^ dword_10077E220 ^ 0xDF))] ^ 0xB1] ^ (-85 * (v1 ^ dword_10077E220 ^ 0xDF))) + 156);
  v3 = (*v2 + v1) ^ &v6;
  *(v0 - 4) = 2054362027 * v3 + 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v7[0] = 476323082 - 1710126949 * (((v7 | 0xD1A7DB17) - v7 + (v7 & 0x2E5824E8)) ^ 0xE3BC8087);
  LOBYTE(v2) = -85 * (*(v0 - 4) ^ 0xDF ^ *v2);
  v4 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E3C0) ^ 0xDF)) ^ byte_10068E1C0[byte_100683B50[(-85 * ((dword_10077E220 + dword_10077E3C0) ^ 0xDF))] ^ 0xAD]) + 277) - 8;
  (*&v4[8 * (v2 ^ byte_100683C50[byte_10069D200[v2] ^ 0x1F]) + 76384])(v7);
  if (v7[1] == 16257999)
  {
    v5 = 1793;
  }

  else
  {
    v5 = 1792;
  }

  __asm { BRAA            X8, X17 }
}

uint64_t sub_10018A234@<X0>(int a1@<W8>)
{
  STACK[0x9E0] = v1;
  v2 = STACK[0x620];
  STACK[0x9E8] = STACK[0x620];
  return (*(STACK[0x3E8] + 8 * (((v1 - v2 > ((a1 - 923966709) & 0x37128AC6) - 569) * ((a1 - 11) ^ 0x1FF0)) ^ a1)))();
}

uint64_t sub_10018A294(uint64_t a1, uint64_t a2)
{
  LOWORD(STACK[0xA3E]) = v2;
  LODWORD(STACK[0x330]) = v2;
  return sub_100140A90(a1, a2, v3 - 8558);
}

uint64_t sub_10018A2B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, int a18)
{
  *a4 = 0;
  *a5 = 0;
  a17 = 476323082 - 1710126949 * (&a17 ^ 0x321B5B90);
  v19 = (*(v18 + 77088))(&a17);
  return (*(v18 + 8 * ((3302 * (a18 == 16257999)) ^ 0x1249)))(v19);
}

uint64_t sub_10018A35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char *a16, int a17, unsigned int a18)
{
  a18 = 1317436891 * (&a16 ^ 0xB0039876) + 8154;
  a16 = &a14;
  v20 = (*(v19 + 77096))(&a16);
  return (*(v19 + 8 * ((12193 * (a17 == 16257999)) ^ v18)))(v20);
}

uint64_t sub_10018A45C()
{
  v4 = (*(v0 + 8 * (v1 + 3971)))(128, v2);
  v5 = STACK[0x3E8];
  STACK[0x510] = v4;
  return (*(v5 + 8 * ((13488 * (v3 - v4 < (v1 - 2927) - 2704)) ^ v1)))();
}

uint64_t sub_10018A4B4@<X0>(__int16 a1@<W8>)
{
  v3 = STACK[0x350];
  STACK[0x7B0] = *(v2 + 8 * v1);
  return sub_1001B56DC(v3, a1);
}

uint64_t sub_10018A4E8@<X0>(unsigned int a1@<W8>)
{
  v4 = (((*(v1 + 16) ^ 0x832D56F) + ((v2 - 5465) ^ 0x42389386)) ^ ((*(v1 + 16) ^ 0xE0C665D5) - 1429461689) ^ (((v2 - 1033) ^ 0x170B588E ^ *(v1 + 16)) + 1560350679)) + 1463797431;
  v5 = (a1 > 0xF2CA79DB) ^ (v4 < 0xD358624);
  v6 = a1 + 221611556 > v4;
  if (v5)
  {
    v6 = a1 > 0xF2CA79DB;
  }

  return (*(v3 + 8 * ((!v6 | (8 * !v6)) ^ v2)))();
}

uint64_t sub_10018A5B8()
{
  v6 = (((v3 - 1100) - 2938) ^ v2) + v0;
  *(v5 - 7 + v6) = veor_s8(*(v1 - 7 + v6), 0x3C3C3C3C3C3C3C3CLL);
  return (*(v4 + 8 * ((((v0 & 0xFFFFFFF8) - 8 == v2) | (2 * ((v0 & 0xFFFFFFF8) - 8 == v2))) ^ v3)))();
}

uint64_t sub_10018A614()
{
  STACK[0xA38] = v3;
  STACK[0xA40] = v1;
  return (*(v4 + 8 * (((v2 > (((v0 ^ 0xC1Fu) + 4420) ^ 0x17C2uLL)) * (((v0 ^ 0xC1F) - 1178) ^ 0x2411)) ^ v0 ^ 0xC1F)))();
}

uint64_t sub_10018A66C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  (*(a1 + 8 * (v2 + 7603)))(a2);
  *(STACK[0x4B8] + 24) = 0;
  return sub_10018A6A0();
}

void sub_10018A6A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 8 * (v4 + 0x1FFF)))();
  STACK[0x4B8] = 0;
  JUMPOUT(0x10018A6D4);
}

uint64_t sub_10018A8A0@<X0>(int a1@<W8>)
{
  v3 = STACK[0x450];
  STACK[0x8A0] = v1 + 116;
  STACK[0x550] = v3;
  return (*(v2 + 8 * (((((a1 - 642) | 0xC00) - 3382) * (v3 == 0)) ^ a1)))();
}

uint64_t sub_10018A9C0@<X0>(int a1@<W2>, int a2@<W3>, int a3@<W4>, int a4@<W5>, int a5@<W6>, int a6@<W7>, unsigned int a7@<W8>)
{
  v11 = (((*(v7 + 16) ^ a3) + a4) ^ ((v8 ^ a2) + a6 + (*(v7 + 16) ^ a5)) ^ ((*(v7 + 16) ^ (((v8 - 598) | a1) + 1270346645)) - 1533535899)) + 1072899615;
  v12 = a7 + v9 > v11;
  v13 = (a7 > 0xAF3CBE9B) ^ (v11 < v9);
  v14 = v12;
  if (v13)
  {
    v15 = a7 > 0xAF3CBE9B;
  }

  else
  {
    v15 = v14;
  }

  return (*(v10 + 8 * ((428 * v15) ^ v8)))();
}

uint64_t sub_10018AA64()
{
  v2 = *(STACK[0x4B8] + 20);
  if (!v2)
  {
    return sub_10018AD70();
  }

  if (v2 != 1)
  {
    JUMPOUT(0x1000FFE94);
  }

  v3 = (*(v1 + 8 * (v0 ^ 0x3076)))(STACK[0x7A0], 0, 32);
  return sub_10018AAC4(v3, v4, v5);
}

uint64_t sub_10018AAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x2B0]) = STACK[0x6C4];
  LODWORD(STACK[0x2A0]) = ((v5 - 208) | 0x200C) + 197489942;
  STACK[0x280] = STACK[0x7C8];
  STACK[0x2C0] = v3;
  STACK[0x290] = v3 + 56;
  LODWORD(STACK[0x2F0]) = STACK[0x35C];
  LODWORD(STACK[0x310]) = LOBYTE(STACK[0x79B]);
  LODWORD(STACK[0x2D0]) = STACK[0x49C];
  STACK[0x300] = STACK[0x8A8];
  LODWORD(STACK[0x260]) = v6 ^ 0x15BC;
  LODWORD(STACK[0x250]) = v6 ^ 0x4A5;
  LODWORD(STACK[0x270]) = v6 + 1758965744;
  LODWORD(STACK[0x240]) = v6 ^ 0x17A6;
  STACK[0x2E0] = v4;
  return sub_10018ABA8(3690921440, a2, a3, 4371, 2770712349);
}

uint64_t sub_10018ABF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (v6 == a5)
  {
    return (*(v8 + 8 * (LODWORD(STACK[0x32C]) + 3371)))();
  }

  if (v6 == v7)
  {
    return (*(v8 + 8 * (((8 * ((5 * LOBYTE(STACK[0x240]) - 1) & 1)) & 0xEF | (16 * ((5 * LODWORD(STACK[0x240]) - 1) & 1))) ^ (LODWORD(STACK[0x32C]) - 464))))();
  }

  if (v6 != 2021246416)
  {
    JUMPOUT(0x10018ABC8);
  }

  v10 = STACK[0x32C];
  LODWORD(STACK[0x35C]) = STACK[0x2F0];
  LOBYTE(STACK[0x79B]) = STACK[0x310];
  LODWORD(STACK[0x49C]) = STACK[0x2D0];
  STACK[0x8A8] = STACK[0x300];
  LODWORD(STACK[0x8B4]) = v5;
  return (*(v8 + 8 * ((29 * (v10 != -36401)) ^ (v10 - 4616))))();
}

uint64_t sub_10018AE8C(int *a1)
{
  v2 = a1[1] + 33731311 * (((a1 ^ 0xFE2044FE | 0xC923161C) - (a1 ^ 0xFE2044FE) + ((a1 ^ 0xFE2044FE) & 0x36DCE9E3)) ^ 0xEF598C1);
  result = (*(*(&off_100755B60 + (v2 ^ 0x7350D0D9)) + (v2 - 1934666789) - 1))(*(&off_100755B60 + (v2 ^ 0x7350D101)) - 12, sub_100020450);
  v4 = **(&off_100755B60 + (v2 - 1934676154));
  if (result)
  {
    v4 = 16215693;
  }

  *a1 = v4;
  return result;
}

void sub_10018AF94(uint64_t a1)
{
  v1 = 1358806181 * ((a1 & 0xE3B80B69 | ~(a1 | 0xE3B80B69)) ^ 0x23689815);
  v2 = *(*(a1 + 8) + 12) + 763869471;
  v3 = *(a1 + 20) - v1 + 160859340;
  v4 = v3 < 0x47B2E1F5;
  v5 = v4 ^ (v2 < 0x47B2E1F5);
  v6 = v2 < v3;
  if (!v5)
  {
    v4 = v6;
  }

  __asm { BRAA            X12, X17 }
}

uint64_t sub_10018B0B0@<X0>(unint64_t a1@<X8>)
{
  STACK[0x408] = *(v5 + 8 * v1);
  STACK[0x5F8] = v2;
  LODWORD(STACK[0x6AC]) = v3;
  STACK[0x6E8] = a1;
  STACK[0x608] = 0;
  LODWORD(STACK[0x580]) = 197499219;
  STACK[0x7D0] = 0x431A33AA2E6D965FLL;
  STACK[0x568] = 0;
  v6 = (*(v5 + 8 * (v4 + 4376)))(16, 0x20040A4A59CD2);
  v7 = STACK[0x330];
  STACK[0x350] = v6;
  return (*(v7 + 8 * (((v6 != 0) * (((v4 - 1966978291) & 0x753DB1EF) - 4471)) ^ v4)))();
}

uint64_t sub_10018B1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(STACK[0x630] + 24);
  STACK[0x588] = v5;
  return (*(STACK[0x400] + 8 * (((v5 == 0) * ((v3 ^ v4) + v3 - 190 - 17182)) ^ v3)))(a1, a2, a3, 16215976);
}

uint64_t sub_10018B20C()
{
  STACK[0xA88] = v1;
  v3 = STACK[0x478];
  STACK[0xA90] = STACK[0x478];
  return (*(v2 + 8 * ((2288 * (v1 - v3 > ((v0 + 2048285961) & 0x85E98F79) - 799)) ^ v0)))();
}

void sub_10018B2E0()
{
  STACK[0x588] = 0;
  STACK[0x7D0] = 0;
  STACK[0x908] = *(v1 + 8 * v0);
  JUMPOUT(0x10000C22CLL);
}

uint64_t sub_10018B348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v6 + 127 - v4;
  v8 = *(v7 - 31);
  v9 = a1 + 127 - v4;
  *(v9 - 15) = *(v7 - 15);
  *(v9 - 31) = v8;
  return (*(a4 + 8 * ((13939 * (v4 + 32 == 23 * (v5 ^ 0x1689u) - 5093)) ^ v5)))();
}

uint64_t sub_10018B3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char *a19, int a20, unsigned int a21)
{
  a19 = &a16;
  a21 = v23 + 1317436891 * (&a19 ^ 0xB0039876) + 2914;
  v24 = (*(v22 + 8 * (v23 + 4397)))(&a19);
  return (*(v22 + 8 * (((a20 == 16257999) * (((v23 + 1342169989) & 0xFB37892E ^ (v21 + 706)) + (v23 ^ 0x4FE))) ^ v23)))(v24);
}

uint64_t sub_10018B4C4(unint64_t a1)
{
  v5 = *(v4 + 8 * (((*v1 == 0) * ((v3 + 2152) ^ v2)) ^ v3));
  STACK[0x370] = a1;
  return v5();
}

uint64_t sub_10018B5F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v64 = STACK[0x9C0];
  STACK[0x260] = ((v63 - 2024) | 0x242u) + ((STACK[0x9C0] + 4) ^ 0x7673CFF7F47FFDDELL) + ((2 * (STACK[0x9C0] + 4)) & 0xECE79FEFE8FFFBBCLL) - 0x10308D8644006412;
  v65 = STACK[0x9E0];
  STACK[0x250] = ((STACK[0x9E0] + 4) ^ 0xF6CFDF75F67FEDF6) + 0x6F7362FBB9FFB620 + ((2 * (STACK[0x9E0] + 4)) & 0xED9FBEEBECFFDBECLL);
  v66 = STACK[0xA00];
  STACK[0x240] = ((STACK[0xA00] + 4) ^ 0x7E57CAF7BCFFBD9FLL) - 0x181488860C801989 + ((2 * (STACK[0xA00] + 4)) & 0xFCAF95EF79FF7B3ELL);
  v67 = STACK[0xA20];
  STACK[0x230] = ((STACK[0xA20] + 4) ^ 0x76C376F7F5FFBCFELL) - 0x10803486458018E8 + ((2 * (STACK[0xA20] + 4)) & 0xED86EDEFEBFF79FCLL);
  v68 = STACK[0xA40];
  STACK[0x220] = ((STACK[0xA40] + 4) ^ 0x7E5FC6F9B77FA5BELL) - 0x181C8488070001A8 + ((2 * (STACK[0xA40] + 4)) & 0xFCBF8DF36EFF4B7CLL);
  v69 = STACK[0xA50];
  STACK[0x200] = ((STACK[0xA50] + 4) ^ 0xEF7BF277B3FFECD7) + 0x76C74FF9FC7FB73FLL + ((2 * (STACK[0xA50] + 4)) & 0xDEF7E4EF67FFD9AELL);
  v70 = STACK[0x990] + 10;
  v71 = STACK[0x980];
  v84 = ((STACK[0x960] + 4) ^ 0xF767C375BDFFA4B7) + 0x6EDB7EFBF27FFF5FLL + ((2 * (STACK[0x960] + 4)) & 0xEECF86EB7BFF496ELL);
  v83 = ((STACK[0x950] + 4) ^ 0xF6E7427DF17FEC3ELL) + 0x6F5BFFF3BEFFB7D8 + ((2 * (STACK[0x950] + 4)) & 0xEDCE84FBE2FFD87CLL);
  v72 = STACK[0xA70];
  v82 = ((STACK[0xA70] + 4) ^ 0x7EEB567BB87FAF9ELL) - 0x18A8140A08000B88 + ((2 * (STACK[0xA70] + 4)) & 0xFDD6ACF770FF5F3CLL);
  v81 = ((STACK[0x990] + 6) ^ 0x6B3EFFFFFCFFFF3FLL) - 0x930404604040E06 + ((2 * (STACK[0x990] + 6)) & 0xD67DFFFFF9FFFE7ELL);
  v80 = ((STACK[0x970] + 6) ^ 0xE31EBFFDF9FFFFBFLL) + 0x7EEFFFBBFEFBF17ALL + ((2 * (STACK[0x970] + 6)) & 0xC63D7FFBF3FFFF7ELL);
  v79 = ((STACK[0x960] + 6) ^ 0x7A6EBFF9FEFBF1F9) - 0x18600040060000C0 + ((2 * (STACK[0x960] + 6)) & 0xF4DD7FF3FDF7E3F2);
  v78 = ((STACK[0x950] + 6) ^ 0x7E9EBFBDFAFFF1FDLL) - 0x1C900004020400C4 + ((2 * (STACK[0x950] + 6)) & 0xFD3D7F7BF5FFE3FALL);
  STACK[0x210] = v68 + 10;
  STACK[0x270] = v70;
  STACK[0x2F0] = STACK[0x880];
  STACK[0x2E0] = STACK[0x860];
  STACK[0x2D0] = STACK[0x4F8];
  STACK[0x2C0] = STACK[0x690];
  STACK[0x370] = STACK[0x388];
  v77 = STACK[0xA38];
  STACK[0x360] = STACK[0x5E8];
  v75 = STACK[0x988];
  v76 = STACK[0xA48];
  STACK[0x350] = STACK[0x838];
  STACK[0x2B0] = STACK[0x490];
  STACK[0x2A0] = STACK[0x398];
  STACK[0x290] = STACK[0x780];
  STACK[0x280] = STACK[0x498];
  STACK[0x340] = STACK[0x850];
  v74 = STACK[0xA68];
  LODWORD(STACK[0x330]) = LOWORD(STACK[0x92E]);
  LODWORD(STACK[0x310]) = LOWORD(STACK[0x91E]);
  LODWORD(STACK[0x300]) = LOWORD(STACK[0x90A]);
  LODWORD(STACK[0x320]) = LOWORD(STACK[0x8C6]);
  return sub_10012B9DC(v71, a2, 0x3D956106EF62582ELL, 0x3D2CC4E5C304AE09, 0x695ADC2B381AFB93, 0xCC6D33EEA00FE42, 0xF99C96608AFF80DELL, 0xC3E67D93F2F32D7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, ((v72 + 10) ^ 0xEE1EBFFDFBFBF7FBLL) + 0x73EFFFBBFCFFF93ELL + ((2 * (v72 + 10)) & 0xDC3D7FFBF7F7EFF6), (v70 ^ 0x66EFBFB9FAFFF37DLL) - 0x4E1000002040244 + ((2 * v70) & 0xCDDF7F73F5FFE6FALL), ((v69 + 10) ^ 0x633EBFBDF9FFF53FLL) - 0x130000401040406 + ((2 * (v69 + 10)) & 0xC67D7F7BF3FFEA7ELL), ((v68 + 10) ^ 0x6ADEFFFFFCFBFF3BLL) - 0x8D0404604000E02 + ((2 * (v68 + 10)) & 0xD5BDFFFFF9F7FE76), v74, v75, v76, v77, v72 + 10, a30, ((v72 + 6) ^ 0x671FFFFDFEFBFF79) - 0x511404406000E40 + ((2 * (v72 + 6)) & 0xCE3FFFFBFDF7FEF2), a32, v78, a34, v79, a36, v80, a38, ((v71 + 6) ^ 0x66DEBFF9FCFFFF3FLL) - 0x4D0004004040E06 + ((2 * (v71 + 6)) & 0xCDBD7FF3F9FFFE7ELL), a40, v81, a42, ((v69 + 6) ^ 0xE21EBFBBFAFBFB7BLL) + 0x7FEFFFFDFDFFF5BELL + ((2 * (v69 + 6)) & 0xC43D7F77F5F7F6F6), a44, ((v68 + 6) ^ 0xE6BFFFBBFCFBFD79) + 0x7B4EBFFDFBFFF3C0 + ((2 * (v68 + 6)) & 0xCD7FFF77F9F7FAF2), a46, ((v67 + 6) ^ 0xF24FFFBDF9FFFFBFLL) + 0x6FBEBFFBFEFBF17ALL + ((2 * (v67 + 6)) & 0xE49FFF7BF3FFFF7ELL), a48, a49, a50, ((v66 + 6) ^ 0x777FFFB9FBFFFBFFLL) - 0x1571400003040AC6 + ((2 * (v66 + 6)) & 0xEEFFFF73F7FFF7FELL), a52, ((v65 + 6) ^ 0xFFEEFFBDFDFBF73FLL) + 0x621FBFFBFAFFF9FALL + ((2 * (v65 + 6)) & 0xFFDDFF7BFBF7EE7ELL), a54, ((v64 + 6) ^ 0x7A8EBFB9F8FBF5BBLL) - 0x1880000000000482 + ((2 * (v64 + 6)) & 0xF51D7F73F1F7EB76), a56, v82, a58, v83, a60, v84, a62, a63);
}

void sub_10018BF64(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  v9 = ((&a3 - 2079601309 - 2 * (&a3 & 0x840BCD63)) ^ 0xA8F77C18) * a1;
  a6 = v9 ^ 0x19EC40F9;
  a7 = -1683109072 - v9;
  a4 = (v7 - 2769) ^ v9;
  a3 = 0;
  (*(v8 + 8 * (v7 ^ 0x2B6Du)))(&a3);
  JUMPOUT(0x100188034);
}

uint64_t sub_10018C094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = v8 + (v16 ^ 0x1D1Bu) - 2635;
  v23 = __ROR8__((v7 + v22) & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = ((v23 - 0x2607A7720729A79) | 0x7F50B0EAB20D7126) - ((v23 - 0x2607A7720729A79) | v9) + v9;
  v25 = __ROR8__(v24 ^ 0xA166AAF4BCB468F5, 8);
  v26 = (((2 * (v25 + (v24 ^ 0x4D9A86B240DF44CALL))) | 0x8E237DE192A9CA6ALL) - (v25 + (v24 ^ 0x4D9A86B240DF44CALL)) + 0x38EE410F36AB1ACBLL) ^ 0xF9D62AAA5A604418;
  v27 = v26 ^ __ROR8__(v24 ^ 0x4D9A86B240DF44CALL, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) & 0x7381049A069EAA6) - (v28 + v27) - 0x39C0824D034F554) ^ 0xF8C85E9088759E58;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x87C30A0A7B081733;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((2 * (v33 + v32)) & 0x295CF5CC1B28F7C6) - (v33 + v32) - 0x14AE7AE60D947BE4) ^ 0xCE2C7D00F8642E60 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__((((2 * (v33 + v32)) & 0x295CF5CC1B28F7C6) - (v33 + v32) - 0x14AE7AE60D947BE4) ^ 0xCE2C7D00F8642E60, 8) + v34) ^ 0x2E769D09049CAA6ALL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = __ROR8__(v35, 8);
  v38 = (((2 * ((v37 + v36) ^ 0xB26D991E94D41A74)) | 0x113E4DE7F9261D5ELL) - ((v37 + v36) ^ 0xB26D991E94D41A74) - 0x89F26F3FC930EAFLL) ^ 0x703A61C38953CBECLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__((a7 + v22) & 0xFFFFFFFFFFFFFFF8, 8);
  v41 = __ROR8__(v38, 8);
  v42 = ((v40 - 0x6AF7234D0CC131D5) & a2 ^ a3) + ((v40 - 0x6AF7234D0CC131D5) & v14 ^ a1) - 1;
  v43 = v42 ^ a4;
  v44 = v42 ^ a5;
  v45 = v41 + v39 - ((2 * (v41 + v39)) & 0x1B79F8777AE58672);
  v46 = (__ROR8__(v43, 8) + v44) ^ v18;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v20;
  v49 = v48 ^ __ROR8__(v47, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ v10;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ v19;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0x64C31C027084DE6CLL;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = (__ROR8__(v54, 8) + v55) ^ v11;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = __ROR8__(v56, 8);
  *(a7 + v22) = (((v45 + v12) ^ v13) >> (8 * ((v7 + v22) & 7))) ^ (((v17 - ((v58 + v57) | v17) + ((v58 + v57) | a6)) ^ v15) >> (8 * ((a7 + v22) & 7))) ^ *(v7 + v22);
  return (*(v21 + 8 * ((2 * (v22 != 0)) | (4 * (v22 != 0)) | v16)))();
}

uint64_t sub_10018C3C0@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v2 = *(STACK[0x640] + 24);
  STACK[0x668] = v2;
  return (*(a1 + 8 * (((v2 == 0) * ((227 * (a2 ^ 0x1EA6)) ^ 0x1468)) ^ a2)))();
}

uint64_t sub_10018C40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x8C6]) = v63;
  LODWORD(STACK[0x320]) = v63;
  return sub_10012B9DC(a1, a63 - 2293, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_10018CEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>)
{
  v17 = v9 + a2;
  v18 = v9 - 1;
  v19 = __ROR8__((a1 + v18) & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = v19 + (((a9 - 5588) | 0x90u) ^ 0x23E8DF0DACD2C30FLL) - ((v12 + 2 * v19) & 0x9AB21C279A9FA3B4);
  v21 = v20 ^ 0xFC06D5ED7418C184;
  v20 ^= 0x48785223880F4E9EuLL;
  v22 = (__ROR8__(v21, 8) + v20) ^ 0x8174304F61371433;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = (((2 * (v24 + v23)) | 0x18EB48C98BD8DF8CLL) - (v24 + v23) + 0x738A5B9B3A13903ALL) ^ 0xC4AB9D20D7B66D92;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x57D072DFC3A5F657;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = __ROR8__(v27, 8);
  v30 = __ROR8__((v17 + 9) & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = (v29 + v28 - ((2 * (v29 + v28)) & 0x2C52FD9897BC5F5CLL) + 0x16297ECC4BDE2FAELL) ^ 0xE44B7CAA9406F12CLL;
  v32 = v31 ^ __ROR8__(v28, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v15;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x6E1E19DDB33CB23ALL;
  v36 = (0x6AF7234D0CC131D4 - v30) & 0xA03A397A7DAB0203 | (v30 + 0x1508DCB2F33ECE2BLL) & 0x5FC5C6858254FDFCLL;
  v37 = v36 ^ 0xE9D37B4112BDE5D1;
  v36 ^= 0x41959ED68B4B948DuLL;
  v38 = (__ROR8__(v37, 8) + v36) ^ 0xE49D77DF873DBF7ELL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = __ROR8__(v35, 8) + (v35 ^ __ROR8__(v34, 61));
  v41 = (__ROR8__(v38, 8) + v39) ^ 0xF5A2F1B9B5D0B209;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = __ROR8__((v10 - ((v43 + v42) | v10) + ((v43 + v42) | 0x14FFD55FD52326CCLL)) ^ 0x4D9C639A80FA59D3, 8);
  v45 = (v10 - ((v43 + v42) | v10) + ((v43 + v42) | 0x14FFD55FD52326CCLL)) ^ 0x4D9C639A80FA59D3 ^ __ROR8__(v42, 61);
  v46 = ((a3 | (2 * (v44 + v45))) - (v44 + v45) + a4) ^ a5;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (v48 + v47 - (a6 & (2 * (v48 + v47))) + a7) ^ a8;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (v11 - ((v51 + v50) | v11) + ((v51 + v50) | v13)) ^ v14;
  *(v17 + 9) = (((__ROR8__(v52, 8) + (v52 ^ __ROR8__(v50, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v17 + 9) & 7))) ^ (((((2 * v40) & 0x5202C593F84559D0) - v40 - 0x290162C9FC22ACE9) ^ 0xE3CC50A6FE864535) >> (8 * ((a1 + v18) & 7))) ^ *(a1 + v18);
  return (*(v16 + 8 * ((47 * (v18 != 0)) ^ (a9 + 2067))))();
}

void sub_10018D290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6)
{
  v6 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E278) ^ 0xDF)) ^ byte_10068DEC0[byte_100683950[(-85 * ((dword_10077E220 + dword_10077E278) ^ 0xDF))] ^ 0xEE]) + 143);
  v7 = -85 * ((dword_10077E220 + *v6) ^ 0xDF);
  v8 = *(&off_100755B60 + (byte_100694EA8[(byte_10068DFC8[v7 - 8] ^ 0x67) - 8] ^ v7) + 143);
  v9 = *v8 - *v6 - &v11;
  *v6 = 2054362027 * (v9 - 0xB4207763EF64BDFLL);
  *v8 = 2054362027 * (v9 ^ 0xB4207763EF64BDFLL);
  *a5 = 0;
  *a6 = 0;
  v12[0] = 476323082 - 1710126949 * ((((2 * v12) | 0x88903A6A) - v12 + 1001906891) ^ 0xF65346A5);
  LOBYTE(v8) = -85 * (*v6 ^ 0xDF ^ *v8);
  v10 = *(&off_100755B60 + ((-85 * (dword_10077E278 ^ 0xDF ^ dword_10077E220)) ^ byte_100683C50[byte_10069D200[(-85 * (dword_10077E278 ^ 0xDF ^ dword_10077E220))] ^ 0xB1]) + 234) - 8;
  (*&v10[8 * (byte_100683C5C[(byte_10069D20C[v8 - 12] ^ 0xE9) - 12] ^ v8) + 75936])(v12);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10018D4CC()
{
  v3 = *v1;
  STACK[0x7D8] = 0;
  STACK[0x3A0] = 0;
  return (*(v2 + 8 * ((((v0 + 878532775) & 0xCBA29ADE ^ 0xA5C) * (v3 != 0)) ^ v0)))();
}

uint64_t sub_10018D51C()
{
  v3 = *v1;
  STACK[0x568] = 0;
  STACK[0x730] = 0;
  return (*(v2 + 8 * ((49 * (((v3 == 0) ^ (((v0 + 82) & 0xF7) + 37)) & 1)) ^ v0)))();
}

uint64_t sub_10018D578()
{
  (*(v2 + 8 * (v0 ^ 0x3C42)))();
  *(v1 + 24) = 0;
  return sub_10015E700();
}

uint64_t sub_10018D5A0()
{
  v2 = LODWORD(STACK[0x2D0]);
  if (v2 == 17168)
  {
    return (*(STACK[0x330] + 8 * ((LODWORD(STACK[0x32C]) - 4225) ^ (2742 * (v1 == 197499223)))))();
  }

  v4 = STACK[0x32C];
  if (v2 == 20706 || (v5 = STACK[0x32C], v2 == 33980))
  {
    STACK[0x6C8] = v0;
    v5 = v4;
  }

  v6 = *STACK[0x3A0];
  STACK[0x668] = 0;
  STACK[0x698] = 0;
  return (*(STACK[0x330] + 8 * (((v6 != 0) * (((v5 - 5458) | 9) ^ 0xAA)) ^ (v5 + 1445))))();
}

uint64_t sub_10018D6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v17 = STACK[0x32C];
  v18 = (LODWORD(STACK[0x778]) ^ 0x7E373BFEF9EBFD77) - 0x50000842E1204805 + ((LODWORD(STACK[0x778]) << ((92 * (v17 ^ 0xF4) + 124) ^ (v17 + 63))) & 0x1F3D7FAEELL);
  v19 = ((LODWORD(STACK[0x778]) ^ 0xF9EBFD77) + 517978107 + ((LODWORD(STACK[0x778]) << ((92 * (v17 ^ 0xF4) + 124) ^ (v17 + 63))) & 0xF3D7FAEE)) & 0xE7344A8E;
  v20 = (((LODWORD(STACK[0x778]) ^ 0xF9EBFD77) + 517978107 + ((LODWORD(STACK[0x778]) << ((92 * (v17 ^ 0xF4) + 124) ^ (v17 + 63))) & 0xF3D7FAEE)) ^ 0xD632202C) & (2 * v19) ^ v19;
  v21 = ((2 * (v18 ^ 0x127A2130)) ^ 0xEA9CD77C) & (v18 ^ 0x127A2130) ^ (2 * (v18 ^ 0x127A2130)) & 0xF54E6BBE;
  v22 = v21 ^ 0x15422882;
  v23 = (v21 ^ 0xA0004238) & (4 * v20) ^ v20;
  v24 = ((4 * v22) ^ 0xD539AEF8) & v22 ^ (4 * v22) & 0xF54E6BBC;
  v25 = (v24 ^ 0xD5082AA0) & (16 * v23) ^ v23;
  v26 = ((16 * (v24 ^ 0x20464106)) ^ 0x54E6BBE0) & (v24 ^ 0x20464106) ^ (16 * (v24 ^ 0x20464106)) & 0xF54E6BB0;
  return (*(STACK[0x330] + 8 * ((23 * ((((LODWORD(STACK[0x778]) ^ 0xF9EBFD77) + 517978107 + ((LODWORD(STACK[0x778]) << ((92 * (v17 ^ 0xF4) + 124) ^ (v17 + 63))) & 0xF3D7FAEE)) ^ (2 * ((((v26 ^ 0xA108401E) << 8) & 0x754E0000 ^ 0x444A0000 ^ (((v26 ^ 0xA108401E) << 8) ^ 0x4E6B0000) & (v26 ^ 0xA108401E)) & (((v26 ^ 0x54462B00) & (v25 << 8) ^ v25) << 16) ^ (v26 ^ 0x54462B00) & (v25 << 8) ^ v25))) != -416003442)) ^ (v17 - 4400))))(a17);
}

uint64_t sub_10018D8B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  LODWORD(a61) = 0;
  LODWORD(STACK[0x220]) = -1706067298;
  return sub_1001A4718(a1, a2, a3, (v62 - 6270) | 0x45u, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62);
}

uint64_t sub_10018D958@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  *(a2 + 104) = veorq_s8(*(v2 + 88), xmmword_10069D320);
  v4 = *(v2 + 4);
  *(a2 + 20) = v4;
  return (*(v3 + 8 * ((52 * (v4 == ((((a1 - 1924012393) & 0x72AE0F13) - 3727) | 0x1400) - 5250)) ^ (a1 - 1924012393) & 0x72AE0F13)))();
}

uint64_t sub_10018DA14()
{
  LODWORD(STACK[0xB14]) = v1;
  STACK[0x740] -= 32;
  return (*(v2 + 8 * ((((((22 * (v0 ^ 0x2116) - 1102) | 0x81) + 33) ^ 0x1E72) * (v1 == 16257999)) ^ (22 * (v0 ^ 0x2116)))))();
}

uint64_t sub_10018DA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11)
{
  a11 = (v12 - 1451034854) ^ (956911519 * ((&a10 - 1542318116 - 2 * (&a10 & 0xA41217DC)) ^ 0x4E8367D9));
  v13 = (*(v11 + 8 * (v12 + 6890)))(&a10);
  return (*(v11 + 8 * (((a10 == ((v12 + 791728398) & 0xD0CF3D74) + 538285483) * ((v12 + 3715) ^ 0x3239)) ^ v12)))(v13);
}

uint64_t sub_10018DB48@<X0>(uint64_t a1@<X8>)
{
  STACK[0x6F0] = v1;
  STACK[0x5B0] = 0;
  STACK[0x7C0] = 0;
  if (a1)
  {
    v4 = v1 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v3 + 8 * ((v5 * ((v2 ^ 0x2E69) + ((v2 + 1339510458) & 0xB0288DE7) - 2813)) ^ v2)))();
}

void sub_10018DC94(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (33731311 * (((a1 | 0x9DC1A4FD) - (a1 & 0x9DC1A4FD)) ^ 0xA4376EDE));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10018DD44@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 6414)))(v1);
  STACK[0x760] = 0;
  return sub_1000DC628();
}

uint64_t sub_10018DDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = v9 + v8;
  v21 = v9 + v8 + 9;
  v22 = __ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = (v22 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v24 = (__ROR8__((v22 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v23) ^ v17;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = __ROR8__(((((v26 + v25) << ((v10 - 89) ^ 0xCAu)) & v16) - (v26 + v25) + v15) ^ a5, 8);
  v28 = ((((v26 + v25) << ((v10 - 89) ^ 0xCAu)) & v16) - (v26 + v25) + v15) ^ a5 ^ __ROR8__(v25, 61);
  v29 = (v27 + v28 - (a6 & (2 * (v27 + v28))) + a7) ^ a8;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x61459D2AF01F24F7;
  v32 = v9 - 1;
  v33 = v31 ^ __ROR8__(v30, 61);
  v34 = __ROR8__(v31, 8);
  v35 = (((v34 + v33) | a2) - ((v34 + v33) | a3) + a3) ^ a4;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v19;
  v38 = (__ROR8__(v37, 8) + (v37 ^ __ROR8__(v36, 61))) ^ v12;
  *(v20 + 9) = *(v11 + v32) ^ ((((v38 | v14) - (v38 | a1) + a1) ^ v13) >> (8 * (v21 & 7u))) ^ 0x3C;
  return (*(v18 + 8 * (v10 | (16 * (v32 != 0)))))();
}

uint64_t sub_10018DF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = STACK[0x7D0];
  STACK[0x420] = STACK[0x7D0];
  v69 = STACK[0x3F8];
  v70 = STACK[0x6A0];
  v71 = 2048652491 * ((((v66 - 232) | 0xB767C13D) - ((v66 - 232) & 0xB767C13D)) ^ 0x6D65638);
  v72 = (((LODWORD(STACK[0x45C]) ^ 0x416EB1F9) - 1097773561) ^ ((LODWORD(STACK[0x45C]) ^ 0x6003C45F) - 1610859615) ^ ((LODWORD(STACK[0x45C]) ^ ((((v65 ^ 0x251) - 1102241348) & 0x41B2D73C) + (((v65 ^ 0x251) + 559) ^ 0x2AA8E1AB))) - 715713781)) - v71 + 340520430;
  *(v66 - 208) = v71 + (v65 ^ 0x251) + 3457;
  *(v66 - 204) = v72;
  *(v66 - 200) = v71 ^ 0x6600C1C6;
  *(v66 - 224) = v69;
  *(v66 - 216) = v70;
  *(v66 - 192) = v68;
  *(v66 - 184) = v68;
  v73 = (*(v67 + 8 * (v65 ^ 0x2FF9)))(v66 - 232);
  return (*(a64 + 8 * ((1364 * (*(v66 - 232) == v64)) ^ v65 ^ 0x251)))(v73, 16215976);
}

uint64_t sub_10018E04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  (*(v34 + 8 * (v33 + 148)))(a16 + a17, 0x100004077774924);
  v35 = (*(v34 + 8 * SHIDWORD(a15)))();
  *v31 = v35;
  return sub_10018E0BC(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, v32, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

uint64_t sub_10018E100@<X0>(int a1@<W8>)
{
  v5 = LOWORD(STACK[0x946]);
  switch(v5)
  {
    case 17168:
      goto LABEL_4;
    case 33980:
      v6 = STACK[0x880];
      STACK[0x428] = v1;
      LODWORD(STACK[0x80C]) = a1;
      return (*(v4 + 8 * (((v6 + v2 != 0) * (((v3 - 2504) | 0x524) - 1198)) ^ (v3 + 6181))))();
    case 20706:
LABEL_4:
      STACK[0x428] = v1;
      break;
  }

  STACK[0x6C0] = 0;
  LODWORD(STACK[0x80C]) = 197499219;
  return sub_100182A34();
}

uint64_t sub_10018E1EC()
{
  v4 = STACK[0x7A8];
  v5 = STACK[0x900];
  STACK[0xB08] = &STACK[0xB60] + v0;
  STACK[0x740] = v1;
  STACK[0x7E0] = v4;
  STACK[0x858] = v5;
  v6 = (*(v3 + 8 * (v2 ^ 0x563)))();
  STACK[0x760] = 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  return (*(v3 + 8 * ((v8 * (2 * ((v2 + 1937985260) & 0x8C7C94BE ^ 0x805) - 6400)) ^ v2)))(v6);
}

uint64_t sub_10018E27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W4>, uint64_t a4@<X8>)
{
  v18 = a2 - 1;
  v19 = __ROR8__((v14 + v18) & ((a3 - 1801709186) & 0x6B63E69D ^ 0xFFFFFFFFFFFFF9E0), 8);
  v20 = (v19 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v21 = (__ROR8__((v19 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v20) ^ v12;
  v22 = v21 ^ __ROR8__(v20, 61);
  v23 = __ROR8__(v21, 8);
  v24 = ((a4 & (2 * (v23 + v22))) - (v23 + v22) + v15) ^ v13;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) | 0x45B996DFB575EE6) - (v26 + v25) - 0x22DCCB6FDABAF73) ^ 0x5B4E7A73A872D06CLL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = __ROR8__((a1 + v18) & 0xFFFFFFFFFFFFFFF8, 8);
  v31 = -2 - (((v16 - v30) | 0x2AB11F016CBDAD66) + ((v30 + v17) | 0xD54EE0FE93425299));
  v32 = __ROR8__(v31 ^ 0x63585D3A03AB4AB4, 8);
  v31 ^= 0xCB1EB8AD9A5D3BE8;
  v33 = (((2 * (v29 + v28)) & 0xE50EF93BD6C6A2AALL) - (v29 + v28) - 0x72877C9DEB635156) ^ 0xEC3D1E48E4838A5DLL;
  v34 = v33 ^ __ROR8__(v28, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x64C31C027084DE6CLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (((2 * (v32 + v31)) | 0xF382F877F675E8D6) - (v32 + v31) - 0x79C17C3BFB3AF46BLL) ^ 0x9D5C0BE47C074B15;
  v38 = (__ROR8__(v35, 8) + v36) ^ 0x1A2AEBE44253AF03;
  v39 = v37 ^ __ROR8__(v31, 61);
  v40 = (__ROR8__(v37, 8) + v39) ^ 0xF5A2F1B9B5D0B209;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ 0x5963B6C555D97F1FLL;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v38, 8) + (v38 ^ __ROR8__(v36, 61));
  v45 = (__ROR8__(v42, 8) + v43) ^ 0x61459D2AF01F24F7;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x64C31C027084DE6CLL;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (v4 - ((v49 + v48) ^ v5 | v4) + ((v49 + v48) ^ v5 | v6)) ^ v7;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = __ROR8__(v50, 8);
  *(a1 + v18) = ((((v8 & (2 * (v52 + v51))) - (v52 + v51) + v9) ^ v10) >> (8 * ((a1 + v18) & 7))) ^ *(v14 + v18) ^ (((((2 * v44) & 0x8D3B02A49A14CEA0) - v44 + 0x39627EADB2F598AFLL) ^ 0x92523C7F9A72C4EELL) >> (8 * ((v14 + v18) & 7)));
  return (*(v11 + 8 * ((975 * (v18 == 0)) ^ a3)))();
}

uint64_t sub_10018E624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
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
  return sub_10015CA80(0x126AA61F6F56C0D8, a2, 0x2A5638492DD55EAELL, 0x4C48AAE1C333D048, 0xEAD4E3DB691550A9, 169, 0x64C31C027084DE6CLL, 0x61459D2AF01F24F7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_10018E670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = v11 - 1;
  v15 = v9 + v14 + v8;
  v16 = __ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = (a2 | (2 * (v16 + 0x2D9C56C6ED9D3E2ELL))) - (v16 + 0x2D9C56C6ED9D3E2ELL) + a3;
  v18 = v17 ^ ((v7 - 847) + 0x572C57D23557E35);
  v19 = v17 ^ a4;
  v20 = __ROR8__(v18, 8);
  v21 = __ROR8__(((a5 & (2 * (v20 + v19))) - (v20 + v19) + a6) ^ v12, 8);
  v22 = ((a5 & (2 * (v20 + v19))) - (v20 + v19) + a6) ^ v12 ^ __ROR8__(v19, 61);
  v23 = ((a7 & (2 * (v21 + v22))) - (v21 + v22) + 0x365717C7E4CB1A76) ^ 0x8BD86B3AFACC8D6DLL;
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = (v10 - ((v25 + v24) | v10) + ((v25 + v24) | 0x1323CE1A44C5F46ELL)) ^ 0xEEA89D249DAFB75ALL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xAC7DA0564C1838BLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((2 * (v30 + v29)) & 0x2A5861B0BA21BA34) - (v30 + v29) - 0x152C30D85D10DD1BLL) ^ 0x8B436845DC92299CLL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x8E4D6ECA343D275ELL;
  *v15 = ((__ROR8__(v33, 8) + (v33 ^ __ROR8__(v32, 61))) ^ 0x51BB4171AFEDC628) >> (8 * (v15 & 7u));
  return (*(v13 + 8 * ((11886 * (v14 == 0)) ^ (v7 + 1133))))();
}

uint64_t sub_10018E830()
{
  v2 = *(STACK[0x4D8] + 24);
  STACK[0x630] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 - 456) | 0x1126) - 3885) ^ 0x698)) ^ v0)))();
}

uint64_t sub_10018E9B4()
{
  v3 = STACK[0x614];
  STACK[0x640] = (v1 - 1740) + STACK[0x640] - 974;
  return (*(v2 + 8 * ((12675 * (v3 == v0)) ^ (v1 + 1805))))();
}

void sub_10018E9F4(id a1)
{
  v1 = *(&off_100755B60 + ((-85 * (dword_10077E288 ^ 0xDF ^ dword_10077E220)) ^ byte_100694EA0[byte_10068DFC0[(-85 * (dword_10077E288 ^ 0xDF ^ dword_10077E220))] ^ 0x67]) + 268);
  v2 = *(&off_100755B60 + (byte_100683C50[byte_10069D200[(-85 * ((dword_10077E220 - *v1) ^ 0xDF))] ^ 0xE9] ^ (-85 * ((dword_10077E220 - *v1) ^ 0xDF))) + 57);
  v3 = (*v2 + *v1) ^ &v4;
  *v1 = 2054362027 * v3 + 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v7 = 2094 - 33731311 * ((1680157476 - (v5 | 0x64252B24) + (v5 | 0x9BDAD4DB)) ^ 0xA22C1EF8);
  v6 = *(&off_100755B60 + ((-85 * ((*v2 + *v1) ^ 0xDF)) ^ byte_100683C50[byte_10069D200[(-85 * ((*v2 + *v1) ^ 0xDF))] ^ 0xD9]) - 121) - 4;
  LOBYTE(v1) = -85 * ((*v2 + *v1) ^ 0xDF);
  (*(*(&off_100755B60 + ((-85 * (dword_10077E288 ^ 0xDF ^ dword_10077E220)) ^ byte_100683C50[byte_10069D200[(-85 * (dword_10077E288 ^ 0xDF ^ dword_10077E220))] ^ 0xB1]) + 234) + (byte_100694EA8[(byte_10068DFC8[v1 - 8] ^ 0x67) - 8] ^ v1) + 9685))(v5);
}

uint64_t sub_10018EE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v65 - 232) = 0;
  *(v65 - 220) = v64 - 869295389 * ((2 * ((v65 - 232) & 0x76510168) - (v65 - 232) + 162463380) ^ 0xB8FAD2C7) - 656015794;
  v67 = (*(v66 + 8 * (v64 ^ 0x2910)))(v65 - 232);
  return (*(a64 + 8 * (((*(v65 - 224) == v64 + 16254701) * ((v64 - 2363) ^ 0x2D0B)) ^ v64)))(v67);
}

void sub_10018F08C(id a1, void *a2)
{
  v2 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077DEA0) ^ 0xDF)) ^ byte_100683C50[byte_10069D200[(-85 * ((dword_10077E220 + dword_10077DEA0) ^ 0xDF))] ^ 0x71]) + 11);
  v3 = *(v2 - 4);
  v4 = *(&off_100755B60 + (byte_10068E1C0[byte_100683B50[(-85 * (v3 ^ dword_10077E220 ^ 0xDF))] ^ 0x80] ^ (-85 * (v3 ^ dword_10077E220 ^ 0xDF))) + 100);
  v5 = *v4 - v3 - &v11;
  v6 = 2054362027 * (v5 - 0xB4207763EF64BDFLL);
  v7 = 2054362027 * (v5 ^ 0xB4207763EF64BDFLL);
  *(v2 - 4) = v6;
  *v4 = v7;
  LOBYTE(v7) = -85 * ((v7 - *(v2 - 4)) ^ 0xDF);
  v8 = *(&off_100755B60 + ((-85 * ((dword_10077E220 - dword_10077DEA0) ^ 0xDF)) ^ byte_10068DEC0[byte_100683950[(-85 * ((dword_10077E220 - dword_10077DEA0) ^ 0xDF))] ^ 0x21]) + 150) - 8;
  v9 = (*&v8[8 * (byte_100683C5C[(byte_10069D20C[v7 - 12] ^ 0xB1) - 12] ^ v7) + 77112])(a2);
  v10 = *&v8[8 * ((-85 * ((*v4 + *(v2 - 4)) ^ 0xDF)) ^ byte_10068E1C0[byte_100683B50[(-85 * ((*v4 + *(v2 - 4)) ^ 0xDF))] ^ 0xAD]) + 76816];

  v10(v9);
}

void sub_10018F284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10018F2F4()
{
  v6 = (*(v2 + 8 * (3 * (v0 ^ 0x39F) + 749)))(*v3, *v1, *(v1 + 8) + ((3 * (v0 ^ 0x39F) - 7373) ^ 0xE5D4D2D8));
  *v1 = v5;
  *(v1 + 8) = v4;
  *(v1 + 12) = v4;
  return sub_10018F33C(v6);
}

void sub_10018F3A0()
{
  STACK[0x560] = 0;
  STACK[0x590] = 0;
  STACK[0x518] = *(v1 + 8 * v0);
  JUMPOUT(0x10018F3C4);
}

uint64_t sub_10018F4B8@<X0>(uint64_t a1@<X8>)
{
  v7 = v2 - 1;
  *(a1 + v7) = *(v4 + v7);
  return (*(v6 + 8 * (((v7 != (v5 ^ 0x114E)) * v3) ^ v1)))();
}

uint64_t sub_10018F52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  if (a10 == 925652384)
  {
    v24 = -654855621;
  }

  else
  {
    v24 = 1032869496;
  }

  v25 = (((&a16 | 0x6FE79C14) - (&a16 & 0x6FE79C14)) ^ 0x378E4F76) * v21;
  a17 = v25 + 851381303;
  a18 = a14;
  a19 = &a13;
  a20 = v24 - v25;
  a21 = v25 + v23 + 1674575794;
  v26 = (*(v22 + 8 * (v23 + 6288)))(&a16);
  return (*(v22 + 8 * ((2 * (((v23 - 1) ^ (a16 == (v23 ^ 0xF81F37))) & 1)) & 0xFB | (4 * (((v23 - 1) ^ (a16 == (v23 ^ 0xF81F37))) & 1)) | v23)))(v26);
}

uint64_t sub_10018F734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, __int16 a15, char a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, char *a22)
{
  a21 = (v22 - 502) ^ (1710126949 * ((&a17 - 2063676954 - 2 * (&a17 & 0x84FEC9E6)) ^ 0xB6E59276));
  a22 = &a12;
  a19 = a13;
  a20 = &a14;
  (*(v23 + 8 * (v22 + 5747)))(&a17);
  a18 = (v22 - 608) ^ (33731311 * ((2 * ((&a17 ^ 0xB3ADA4AA) & 0x672826FA) - (&a17 ^ 0xB3ADA4AA) + 416798976) ^ 0x928CB789));
  a19 = a13;
  a20 = &a16;
  (*(v23 + 8 * (v22 ^ 0x2B95)))(&a17);
  LODWORD(a20) = v22 - 2008441969 * (&a17 ^ 0x4899540E) + 1825;
  a19 = a13;
  v24 = (*(v23 + 8 * (v22 ^ 0x2B67)))(&a17);
  return (*(v23 + 8 * (((a17 == 16257999) * ((v22 + 1236114077) & 0x1F77 ^ 0x2482)) ^ v22)))(v24);
}

uint64_t sub_10018F89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v10 = 1525 * ((v6 + 362417901) & 0xEA65EFE6 ^ 0x625);
  *v7 = a1;
  *a6 = v14;
  v17 = (v10 + 3771) ^ ((((&v15 | 0x447DB515) + (~&v15 | 0xBB824AEA)) ^ 0x1C146676) * v8);
  v16 = v13;
  (*(v9 + 8 * (v10 ^ 0x3453)))(&v15);
  v16 = v12;
  v17 = ((v10 ^ 0x1930) + 6059) ^ (((&v15 - 1031723266 - 2 * (&v15 & 0xC28126FE)) ^ 0x9AE8F59C) * v8);
  (*(v9 + 8 * ((v10 ^ 0x1930) + 7325)))(&v15);
  return 0;
}

uint64_t sub_10018F9E0@<X0>(int a1@<W8>, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, unsigned int a6, int a7)
{
  v12 = v9 & 0x4A4E6E71;
  v13 = (((v9 & 0x4A4E6E71 ^ 0x285E) + 2845) ^ 0x134D) + (v8 ^ 0xBCD0635C);
  v14 = (&a3 ^ 0x2CFCB17B) * a1;
  a4 = ((v9 & 0x4A4E6E71) - 7317) ^ v14;
  a3 = &a2;
  a5 = v10;
  a6 = ((v13 ^ 0xBFFF56FB) + 1508698622 + ((2 * v13) & 0x7FFEADF6)) ^ v14;
  a7 = v7 - v14;
  v15 = (*(v11 + 8 * (v9 & 0x4A4E6E71 ^ 0x5B1u)))(&a3);
  if (v13)
  {
    v16 = *(v10 + 24) == 16257999;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;
  return (*(v11 + 8 * ((245 * v17) ^ v12)))(v15);
}

uint64_t sub_10018FB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, int a15)
{
  a14 = 476323082 - 1710126949 * ((((&a14 | 0x19FB468E) ^ 0xFFFFFFFE) - (~&a14 | 0xE604B971)) ^ 0xD41FE2E1);
  v16 = (*(v15 + 77088))(&a14);
  return (*(v15 + 8 * ((4609 * (a15 == 16257999)) ^ 0x5D4u)))(v16);
}