uint64_t sub_1969EC1D4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int32x4_t a14, int32x4_t a15, int32x4_t a16, int32x4_t a17, int a18)
{
  LODWORD(a10) = a5 + 53 * (a3 ^ 0x5B) - 1449183830;
  HIDWORD(a5) = HIDWORD(a10) ^ 0xEC2;
  v20 = vdupq_n_s32(0x5D5D9ADu);
  v21.i64[0] = 0xECECECECECECECECLL;
  v21.i64[1] = 0xECECECECECECECECLL;
  v22 = vdupq_n_s32(0x5D5D9A9u);
  v23 = *(v18 + 8 * a3);
  v24 = *(v19 + 72);
  v25 = *(v19 + 84);
  v26 = (*(v19 + 96) - ((2 * *(v19 + 96)) & 0xCF) - 17);
  if (v26 == 237)
  {
    v70 = vld4q_s8(v19);
    HIDWORD(a8) = *(v19 + 88);
    v52 = veorq_s8(v70.val[0], v21);
    v53 = vmovl_high_u8(v52);
    v54 = vmovl_u8(*v52.i8);
    v55 = veorq_s8(v70.val[1], v21);
    _Q21 = vmovl_high_u8(v55);
    _Q20 = vmovl_u8(*v55.i8);
    v58 = vshll_n_s16(*_Q20.i8, 0x10uLL);
    __asm { SHLL2           V20.4S, V20.8H, #0x10 }

    v59 = vshll_n_s16(*_Q21.i8, 0x10uLL);
    __asm { SHLL2           V21.4S, V21.8H, #0x10 }

    v60 = veorq_s8(v70.val[2], v21);
    v61 = vmovl_u8(*v60.i8);
    v62 = vmovl_high_u8(v60);
    v70.val[0] = veorq_s8(v70.val[3], v21);
    v70.val[1] = vmovl_u8(*v70.val[0].i8);
    v70.val[2] = vmovl_u16(*v70.val[1].i8);
    v70.val[1] = vmovl_high_u16(v70.val[1]);
    v70.val[0] = vmovl_high_u8(v70.val[0]);
    v70.val[3] = vmovl_u16(*v70.val[0].i8);
    v70.val[0] = vmovl_high_u16(v70.val[0]);
    v63 = vorrq_s8(vorrq_s8(vorrq_s8(_Q21, vshll_high_n_u16(v62, 8uLL)), vshlq_n_s32(vmovl_high_u16(v53), 0x18uLL)), v70.val[0]);
    v64 = vorrq_s8(vorrq_s8(vorrq_s8(v59, vshll_n_u16(*v62.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v53.i8), 0x18uLL)), v70.val[3]);
    v65 = vorrq_s8(vorrq_s8(vorrq_s8(_Q20, vshll_high_n_u16(v61, 8uLL)), vshlq_n_s32(vmovl_high_u16(v54), 0x18uLL)), v70.val[1]);
    v66 = vorrq_s8(vorrq_s8(vorrq_s8(v58, vshll_n_u16(*v61.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v54.i8), 0x18uLL)), v70.val[2]);
    v70.val[0] = veorq_s8(vandq_s8(v63, v20), (*v70.val & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v70.val[3] = veorq_s8(vandq_s8(v64, v20), (*&v70.val[3] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v70.val[1] = veorq_s8(vandq_s8(v65, v20), (*&v70.val[1] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    v70.val[2] = veorq_s8(vandq_s8(v66, v20), (*&v70.val[2] & __PAIR128__(0xFFFFFF04FFFFFF04, 0xFFFFFF04FFFFFF04)));
    a14 = vaddq_s32(vsubq_s32(v66, vaddq_s32(v70.val[2], v70.val[2])), v22);
    a15 = vaddq_s32(vsubq_s32(v65, vaddq_s32(v70.val[1], v70.val[1])), v22);
    a16 = vaddq_s32(vsubq_s32(v64, vaddq_s32(v70.val[3], v70.val[3])), v22);
    a17 = vaddq_s32(vsubq_s32(v63, vaddq_s32(v70.val[0], v70.val[0])), v22);
    a18 = __ROR4__(a16.i32[0] ^ a17.i32[1] ^ a14.i32[2] ^ *(&a14 + (((6 * HIDWORD(a5) - 4254) | 0x440u) ^ 0xFFFFFFFFFA54189ELL) + 95150386), 31) ^ 0x5D5D9A9;
    v67 = *(v18 + 8 * ((6 * HIDWORD(a5)) ^ 0x1C));
    LODWORD(v68) = 2731 * (HIDWORD(a10) ^ 0xDDD);
    HIDWORD(v68) = v68 + 676530816;
    HIDWORD(a12) = HIDWORD(a10) ^ 0xC33;
    LODWORD(v69) = HIDWORD(a10) ^ 0xCD9;
    HIDWORD(v69) = HIDWORD(a10) ^ 0xFEF;
    return v67(95150386, 95150387, v25, a1, v24, v67, v24, 2085029739, a4, a5, a2, a7, a8, v68, a10, v23, a12, v69);
  }

  else
  {
    if (v26 != 238)
    {
      JUMPOUT(0x1969EC8CCLL);
    }

    v71 = vld4q_s8(v19);
    v27 = veorq_s8(v71.val[0], v21);
    v28 = vmovl_high_u8(v27);
    v29 = vmovl_high_u16(v28);
    v30 = vmovl_u16(*v28.i8);
    v31 = vmovl_u8(*v27.i8);
    v32 = vmovl_high_u16(v31);
    v33 = vmovl_u16(*v31.i8);
    v34 = veorq_s8(v71.val[1], v21);
    v35 = vmovl_u8(*v34.i8);
    v36 = vmovl_high_u8(v34);
    v37 = veorq_s8(v71.val[2], v21);
    _Q25 = vmovl_u8(*v37.i8);
    _Q24 = vmovl_high_u8(v37);
    __asm
    {
      SHLL2           V26.4S, V24.8H, #0x10
      SHLL2           V27.4S, V25.8H, #0x10
    }

    v71.val[0] = veorq_s8(v71.val[3], v21);
    v71.val[1] = vmovl_u8(*v71.val[0].i8);
    v71.val[2] = vmovl_u16(*v71.val[1].i8);
    v71.val[0] = vmovl_high_u8(v71.val[0]);
    v71.val[3] = vmovl_u16(*v71.val[0].i8);
    v71.val[0] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v71.val[0]), 0x18uLL), _Q26), vorrq_s8(vshll_high_n_u16(v36, 8uLL), v29));
    v71.val[3] = vorrq_s8(vorrq_s8(vshlq_n_s32(v71.val[3], 0x18uLL), vshll_n_s16(*_Q24.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v36.i8, 8uLL), v30));
    v71.val[1] = vorrq_s8(vorrq_s8(vshlq_n_s32(vmovl_high_u16(v71.val[1]), 0x18uLL), _Q27), vorrq_s8(vshll_high_n_u16(v35, 8uLL), v32));
    v46 = vdupq_n_s32(0x5D5D9B9u);
    v71.val[2] = vorrq_s8(vorrq_s8(vshlq_n_s32(v71.val[2], 0x18uLL), vshll_n_s16(*_Q25.i8, 0x10uLL)), vorrq_s8(vshll_n_u16(*v35.i8, 8uLL), v33));
    v47 = veorq_s8(vandq_s8(v71.val[0], v46), (*&v29 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v48 = veorq_s8(vandq_s8(v71.val[3], v46), (*&v30 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v49 = veorq_s8(vandq_s8(v71.val[1], v46), (*&v32 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    v50 = veorq_s8(vandq_s8(v71.val[2], v46), (*&v33 & __PAIR128__(0xFFFFFF10FFFFFF10, 0xFFFFFF10FFFFFF10)));
    a14 = vaddq_s32(vsubq_s32(v71.val[2], vaddq_s32(v50, v50)), v22);
    a15 = vaddq_s32(vsubq_s32(v71.val[1], vaddq_s32(v49, v49)), v22);
    a16 = vaddq_s32(vsubq_s32(v71.val[3], vaddq_s32(v48, v48)), v22);
    a17 = vaddq_s32(vsubq_s32(v71.val[0], vaddq_s32(v47, v47)), v22);
    return (*(v18 + 8 * (HIDWORD(a10) ^ 0x15)))(v20);
  }
}

uint64_t sub_1969ECFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18)
{
  v21 = 1012216201 * (((&a13 ^ 0x984CD4E6) - 1239601661 - 2 * ((&a13 ^ 0x984CD4E6) & 0xB61D2E03)) ^ 0xAAF87209);
  a18 = v21 + v20 - 1795305604;
  a13 = v21 ^ 0x80F33AA;
  a15 = v21 - 1137445230;
  a16 = a9;
  a17 = &a10;
  v22 = (*(v18 + 8 * (v20 + 4447)))(&a13);
  return (*(v18 + 8 * (((a14 == v19 + ((v20 + 1033414343) & 0x1F76) - 3942) * ((v20 + 389993655) & 0x2BB7 ^ 0x1427)) ^ v20)))(v22);
}

uint64_t sub_1969ED0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v17 = (a12 + v13);
  *(v17 - 1) = v16;
  *v17 = v16;
  return (*(v15 + 8 * ((((v14 + 2516) - 4087 == (v12 & 0xFFFFFFFFFFFFFFF0)) * a6) ^ v14)))();
}

void sub_1969ED288(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  (*(a1 + 8 * (v2 + 6260)))(a2);
  v3 = STACK[0x370];
  v4 = STACK[0x470];
  *(STACK[0x470] + 24) = 0;
  sub_1968EFE64(v4, v5, v6, v7, v8, v3);
}

uint64_t sub_1969ED300(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7)
{
  v13 = *(v11 + 48 * v10 + 36);
  v15 = v13 != v12 && v13 + a3 < a7;
  return (*(v8 + 8 * ((v15 * ((v7 ^ (a5 - 472)) - v9 - 2792)) | v7)))();
}

uint64_t sub_1969ED394@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v2 = a2 + 301;
  v3 = ((a2 - 1960283630) & 0x74D79E5F) - 2245;
  v4 = STACK[0x3C0];
  STACK[0x768] = STACK[0x3C0];
  return (*(a1 + 8 * (((v3 ^ 0xDAA) * (v4 == 0)) ^ v2)))();
}

uint64_t sub_1969ED4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v65 == 8 || v65 == 5)
  {
    LOBYTE(STACK[0x6DF]) = LOBYTE(STACK[0x19DF]) ^ 0xEC;
    LOBYTE(STACK[0x6DE]) = LOBYTE(STACK[0x19DE]) ^ 0xEC;
    LOBYTE(STACK[0x6DD]) = LOBYTE(STACK[0x19DD]) ^ 0xEC;
    LOBYTE(STACK[0x6DC]) = LOBYTE(STACK[0x19DC]) ^ 0xEC;
    LOBYTE(STACK[0x6DB]) = LOBYTE(STACK[0x19DB]) ^ 0xEC;
    LOBYTE(STACK[0x6DA]) = LOBYTE(STACK[0x19DA]) ^ 0xEC;
    LOBYTE(STACK[0x6D9]) = LOBYTE(STACK[0x19D9]) ^ 0xEC;
    LOBYTE(STACK[0x6D8]) = LOBYTE(STACK[0x19D8]) ^ 0xEC;
    LOBYTE(STACK[0x6D7]) = LOBYTE(STACK[0x19D7]) ^ 0xEC;
    LOBYTE(STACK[0x6D6]) = LOBYTE(STACK[0x19D6]) ^ 0xEC;
    LOBYTE(STACK[0x6D5]) = LOBYTE(STACK[0x19D5]) ^ 0xEC;
    LOBYTE(STACK[0x6D4]) = LOBYTE(STACK[0x19D4]) ^ 0xEC;
    LOBYTE(STACK[0x6D3]) = LOBYTE(STACK[0x19D3]) ^ 0xEC;
    LOBYTE(STACK[0x6D2]) = LOBYTE(STACK[0x19D2]) ^ 0xEC;
    LOBYTE(STACK[0x6D1]) = LOBYTE(STACK[0x19D1]) ^ 0xEC;
    LOBYTE(STACK[0x6D0]) = LOBYTE(STACK[0x19D0]) ^ 0xEC;
  }

  v67 = STACK[0x370];
  v68 = STACK[0x370] - 690;
  v69 = (*(v66 + 8 * (STACK[0x370] ^ 0xCEC)))(LODWORD(STACK[0x5FC]), v65, a65 ^ 0xE7C898DF, (STACK[0x370] + 30084833) & 0xFE34DBBF ^ 0x5D5DB35 ^ LODWORD(STACK[0x5CC]), &STACK[0x6D0], STACK[0x3D0], LODWORD(STACK[0x59C]), &STACK[0x19B0]);
  v70 = ((2 * v69) & 0xFFBFEAF2) + (v69 ^ 0xFFDFF579);
  v71 = (*(v66 + 8 * (v67 ^ 0xCFC)))(*STACK[0x278], STACK[0x3D0], LODWORD(STACK[0x59C]));
  return (*(v66 + 8 * ((204 * (v70 == -2099847)) ^ v68)))(v71);
}

uint64_t sub_1969ED9AC@<X0>(int a1@<W8>)
{
  v8 = 489239129 * ((v7 - 144) ^ v2);
  *(v7 - 144) = (v5 + 173) ^ v8;
  *(v7 - 128) = (v1 ^ 0xFFFFAFE6) - v8 + 752810810 + ((v5 - 44330) & a1);
  *(v7 - 136) = v6;
  v9 = (*(v3 + 8 * (v5 + 3504)))(v7 - 144);
  return (*(v3 + 8 * ((510 * (((v5 + 89) ^ (*(v7 - 140) == v4)) & 1)) ^ v5)))(v9);
}

uint64_t sub_1969EDDE0()
{
  v3 = *(v0 + 16) - 170633196 + ((v1 + 1719437381) & 0x99837799);
  v4 = *(v0 + 12) - 1309738827;
  v5 = (v4 < 0x8BCACE4) ^ (v3 < 0x8BCACE4);
  v6 = v3 < v4;
  if (v5)
  {
    v6 = v4 < 0x8BCACE4;
  }

  return (*(v2 + 8 * ((1508 * v6) ^ v1)))();
}

void sub_1969EDEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v21 - 112) = &a18;
  *(v21 - 104) = a12;
  *(v21 - 136) = v19 + ((((2 * (v21 - 144)) | 0xAA851FE6) - (v21 - 144) - 1430425587) ^ 0x1A9A8CC4) * v18 + 3553;
  *(v21 - 144) = &a14;
  *(v21 - 128) = v20;
  *(v21 - 120) = &a14;
  JUMPOUT(0x1969A6F08);
}

uint64_t sub_1969EDF44()
{
  v0.n128_u64[0] = 0xECECECECECECECECLL;
  v0.n128_u64[1] = 0xECECECECECECECECLL;
  return sub_1969EDF54(v0);
}

uint64_t sub_1969EDF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>, int8x16_t a4@<Q0>)
{
  v9 = ~v6 + a3;
  v10 = *(a2 + v9 - 15);
  v11 = *(a2 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = veorq_s8(v10, a4);
  *(v12 - 31) = veorq_s8(v11, a4);
  return (*(v8 + 8 * ((((v5 + 3930) ^ v7) + v6 == v4) ^ (v5 + 2811))))();
}

uint64_t sub_1969EDFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, int a14, int a15, unsigned int a16, uint64_t a17, char *a18, int a19)
{
  v23 = ((&a14 + 1935533170 - 2 * (&a14 & 0x735DE472)) ^ 0xF7F46C9E) * v21;
  a17 = a10;
  a18 = &a12;
  a19 = v23 - 1795305098 + v22;
  a16 = v23 - 1086285303;
  a14 = v23 ^ 0x80F33AA;
  v24 = (*(v19 + 8 * (v22 + 4953)))(&a14);
  return (*(v19 + 8 * (((a15 == v20) * ((v22 - 758) ^ 0x427)) ^ v22)))(v24);
}

void sub_1969EE0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, unsigned int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, int a20, char *a21)
{
  v24 = 1621291457 * ((2 * (&a19 & 0x3D8B01F8) - &a19 - 1032520186) ^ 0xF4637F9F);
  a21 = &a10;
  a19 = v24 + (v21 ^ (v23 + 3072) ^ 0x7D9FBDA3) + ((2 * v21) & 0xFB3F5BEE) - 201335043;
  a20 = v24 + v23 + 2090;
  (*(v22 + 8 * (v23 + 5772)))(&a19);
  (*(v22 + 8 * ((v23 + 3072) ^ 0xA39)))(a13);
  JUMPOUT(0x19692D1A8);
}

uint64_t sub_1969EE23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, int a14, unsigned int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int16 a20, unsigned int a21, uint64_t a22)
{
  *v23 = v28;
  v29 = *v24;
  *(v29 + 3) = 16908633;
  *(v29 + 2) = 76;
  *v29 = 20550;
  *(v29 + 7) = 0;
  *(v29 + 8) = bswap32(v25 + 44);
  *(v29 + 12) = *v22;
  *(v29 + 13) = 0;
  *(v29 + 14) = a12;
  *(v29 + 15) = 0;
  a21 = ((v26 ^ 0x1B34) - 3524) ^ (753662761 * ((~&a20 & 0x9DEA6F39 | &a20 & 0x621590C6) ^ 0xF8F09472));
  a20 = -1239 * ((~&a20 & 0x6F39 | &a20 & 0x90C6) ^ 0x9472) + 1572;
  a22 = v29 + 16;
  v30 = (*(v27 + 8 * ((v26 ^ 0x1B34) + 2935)))(&a20);
  *(v29 + 32) = bswap32(a15);
  return (*(v27 + 8 * ((7 * ((((v26 ^ 0x1B34) - 1436931183) & 0x55A5DDFE ^ 0xB36EB94) + v25 - ((v25 << ((v26 ^ 0x34) + 103)) & 0x166DE57C) == 188150462)) ^ v26 ^ 0x1B34)))(v30);
}

uint64_t sub_1969EE3A8@<X0>(int a1@<W5>, int a2@<W6>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, int a60)
{
  if (a60 == -1773392752 || a60 == 798020379 || a60 == -1654668468)
  {
    JUMPOUT(0x1969EE48CLL);
  }

  return (*(v60 + 8 * ((a1 - 486) ^ (((a3 >> 3) & 1) * a2))))();
}

uint64_t sub_1969EE568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v19 = (v16 - 24) | 2;
  v20 = v17 + v15;
  *(v20 - 1) = (&a15 ^ 0xBA) * (&a15 + 17);
  *(v20 + ((v19 - 3978) ^ 0xFFFFFFFFFFFFFB3ELL)) = (&a15 ^ 0xBB) * (&a15 + 18);
  return (*(v18 + 8 * ((42 * ((v15 & 0xFFFFFFFE) != 2)) ^ v19)))();
}

uint64_t sub_1969EE5E0@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  v6 = 877 * (a2 ^ 0x29B);
  (*(v4 + 8 * (a2 ^ 0x199B)))(*v8, a1, v10);
  *(v5 - 208) = (v6 - 2059849679) ^ (((((v5 - 208) | 0x1FF2988B) - (v5 - 208) + ((v5 - 208) & 0xE00D6770)) ^ 0x7AE863C0) * v3);
  (*(v4 + 8 * (v6 + 769)))(v5 - 208);
  result = v7;
  *(v7 + 16) = v9;
  return result;
}

void sub_1969EE6B8(_DWORD **a1@<X0>, uint64_t a2@<X8>)
{
  **a1 = v3;
  *(a2 + 16) = v2;
  JUMPOUT(0x19691E118);
}

uint64_t sub_1969EE810()
{
  v5 = v1 - 1;
  *(v4 + v5) = (((v2 ^ 0xB) + 90) ^ v0) * (v0 + 17);
  return (*(v3 + 8 * ((239 * (v5 == 0)) ^ v2)))();
}

uint64_t sub_1969EED74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 12);
  *(v8 - 140) = (v5 - 1999284710) ^ (((-2 - ((~(v8 - 144) | 0xFC912903) + ((v8 - 144) | 0x36ED6FC))) ^ 0x998BD248) * v4);
  *(v8 - 144) = ((v5 - 95) ^ 0x63) + ((-2 - ((~(v8 + 112) | 3) + ((v8 + 112) | 0xFC))) ^ 0x48) * v4 + (((v7 ^ 0xB) - 107) ^ ((v7 ^ 0x59) - 57) ^ ((((v5 ^ 0x1B) - 49) ^ v7) - 83));
  *(v8 - 136) = ((-2 - ((~(v8 + 112) | 3) + ((v8 + 112) | 0xFC))) ^ 0x48) * v4 + v9 + 44;
  v10 = (*(v6 + 8 * (v5 ^ 0xE70)))(v8 - 144);
  return (*(v6 + 8 * ((3508 * (*(v8 - 132) == 1906281716)) ^ v5)))(v10, a2, a3, 654144011);
}

uint64_t sub_1969EEEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20)
{
  v25 = (a3 + 4 * (v21 + v23));
  *v25 = a20 ^ __ROR4__(*(v25 - 8) ^ *(v25 - 3) ^ *(v25 - 14) ^ *(v25 - 16), 31);
  return (*(v22 + 8 * ((7011 * (v21 + 1 == v24 + 80)) ^ v20)))((v20 + 1377));
}

uint64_t sub_1969EEF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = ~v5 + v2;
  v10 = *(a2 + v9 - 15);
  v11 = *(a2 + v9 - 31);
  v12 = v7 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * (((2 * ((v4 ^ a1) + v5 == v3)) | (4 * ((v4 ^ a1) + v5 == v3))) ^ (v6 - 2738))))();
}

uint64_t sub_1969EF368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v42 = 282 * (v40 ^ 0x711);
  v43 = *v39;
  v44 = *(v39 + 1);
  v45 = *(v39 + 9);
  v46 = *(v39 + 13);
  v47 = v39[15];
  *(v41 - 144) = v43;
  *(v41 - 143) = v44;
  *(v41 - 135) = v45;
  *(v41 - 131) = v46;
  *(v41 - 129) = v47;
  if (a39)
  {
    v48 = *(a1 + 40) == 0;
  }

  else
  {
    v48 = 1;
  }

  v50 = !v48 && *(a1 + 24) != 0;
  return (*(a3 + 8 * ((69 * v50) ^ v42)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33);
}

void sub_1969EF3AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, char a20, int a21, int a22, char a23, __int16 a24, unsigned __int8 a25, int a26, unsigned __int8 a27)
{
  *(v27 - 124) = a26 ^ 0x838FF9D1;
  *(v27 - 128) = a21 ^ 0x42B79926;
  *(v27 - 132) = (((a19 ^ 0x20) << 24) | (((11 * ((a3 + 11) ^ 0x1F) - 97) ^ a20) << 8) | a25 ^ 0x9E | ((a27 ^ 0xF9) << 16)) ^ 0x500FC56;
  *(v27 - 120) = (a23 & 0x9F | (~a23 | 0xFFFFFF00) & (a22 ^ 0xEE0710)) ^ 0x740E8E9B;
  JUMPOUT(0x1969675A4);
}

uint64_t sub_1969EF4B8(__n128 a1)
{
  v3[-1] = a1;
  *v3 = a1;
  return (*(v5 + 8 * (((v4 == 0) * v2) ^ v1)))();
}

uint64_t sub_1969EF4E0@<X0>(int a1@<W8>, uint64_t a2, int a3)
{
  v5 = v4 + 48798697 < a3 - 2076917860;
  if ((a3 - 2076917860) < 0x2E89BE9 != v4 > 0xFD176416)
  {
    v5 = (a3 - 2076917860) < 0x2E89BE9;
  }

  return (*(v3 + 8 * ((197 * !v5) ^ a1)))();
}

uint64_t sub_1969EF550(uint64_t a1)
{
  v4 = *(a1 + 48);
  **(a1 + 24) = 0;
  *v4 = 0;
  return (*(v1 + 8 * ((61 * (*(v2 + 5) == (v3 + 102))) ^ v3)))();
}

void sub_1969EF58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  v21 = *(a4 + 96) - ((2 * *(a4 + 96)) & 0x5B403A78) - 1382015684;
  v22 = 1068996913 * ((~((v20 - 136) | 0xEAE7F43E) + ((v20 - 136) & 0xEAE7F43E)) ^ 0xC0F6EA50);
  *(v20 - 120) = a4;
  *(v20 - 136) = v21 ^ v22;
  *(v20 - 128) = v22 + a19;
  (*(v19 + 8 * a18))(v20 - 136);
  JUMPOUT(0x1969EF63CLL);
}

uint64_t sub_1969EF6E0(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v19 = *(STACK[0x580] + (v11 + (v10 & 0xF) * a6) % (((v8 - 1786) | 0x296) ^ 0x1151u)) ^ (16 * *(STACK[0x580] + v11 + (v10 >> 4) * a6 - ((((v11 + (v10 >> 4) * a6) * v15) >> 32) >> 9) * v12));
  v20 = a7 + (((*(v7 + ((v19 ^ 9) * v18 + 13178 - ((((v19 ^ 9u) * v18 + 13178) * v17) >> 32) * v13)) - (((v19 ^ 0x59) + 97) ^ v19 ^ 0x59)) >> 4) ^ 0xE) * a6;
  *(STACK[0x580] + v9 * a6 - 261492520 - ((((v9 * a6 - 261492520) * v15) >> 32) >> 9) * v12) = 16 * *(STACK[0x580] + (v20 - ((v20 * a3) >> 32) * v12));
  return (*(v16 + 8 * (((v9 + 1 != a2 + 256) * v14) ^ v8)))();
}

uint64_t sub_1969EF88C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v16 = (v10 + 2793) | v9;
  v17 = (*(v14 + 4 * v15) ^ v5) + v7 + a3 * (((v16 + v11) | v12) ^ (v5 + 194) ^ *(*(v8 + 8) + a2));
  *(v14 + 4 * v15) = v17 + v5 - (((v16 ^ v13) + v6) & (2 * v17));
  return (*(v4 + 8 * (v16 ^ (31 * (a4 != 0)))))();
}

uint64_t sub_1969EF8E4(uint64_t a1)
{
  LODWORD(STACK[0x534]) = v1;
  STACK[0x590] -= 432;
  return (STACK[0x468])(a1, 1906281716, 48);
}

uint64_t sub_1969EF99C(uint64_t a1, uint64_t a2, int a3)
{
  v12 = v7 > 0xF;
  v10 = (v6 - 1) & 0xFLL;
  v11 = -v9 - v6 + 1;
  v12 = v12 && (v11 + v4 + v10) > 0xF;
  v13 = v12 && (v11 + v3 + v10) > 0xF;
  v14 = v11 + v5 + v10;
  v16 = v13 && v14 >= ((a3 - 257642898) & 0xF5B4EDB) - 4977 + (599 * ((a3 - 2516) ^ 0x7B7u));
  return (*(v8 + 8 * ((111 * v16) ^ (a3 - 2516))))(599 * ((a3 - 2516) ^ 0x7B7u));
}

void sub_1969EFC04(uint64_t a1)
{
  *a1 = 256;
  memset((a1 + 8), 236, 36);
  *(a1 + 56) = 3974950124;
  memset((a1 + 64), 236, 36);
  *(a1 + 112) = 3974950124;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 131) = 0;
  JUMPOUT(0x1969EFC54);
}

uint64_t sub_1969EFF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  v39 = v32;
  v40 = (v36 ^ 0xEE7DB6AD) & (2 * ((17 * (v35 ^ 0xEA) + v33) & v36)) ^ (17 * (v35 ^ 0xEA) + v33) & v36;
  v41 = ((2 * (v36 ^ 0xFECDDAED)) ^ 0xE169DB8A) & (v36 ^ 0xFECDDAED) ^ (2 * (v36 ^ 0xFECDDAED)) & 0x70B4EDC4;
  v42 = v41 ^ 0x10942445;
  v43 = (v41 ^ 0x6030C985) & (4 * v40) ^ v40;
  v44 = ((4 * v42) ^ 0xC2D3B714) & v42 ^ (4 * v42) & 0x70B4EDC4;
  v45 = (v44 ^ 0x4090A501) & (16 * v43) ^ v43;
  v46 = ((16 * (v44 ^ 0x302448C1)) ^ 0xB4EDC50) & (v44 ^ 0x302448C1) ^ (16 * (v44 ^ 0x302448C1)) & 0x70B4EDC0;
  v47 = v45 ^ 0x70B4EDC5 ^ (v46 ^ 0x4CC85) & (v45 << 8);
  v48 = (v47 << 16) & 0x70B40000 ^ v47 ^ ((v47 << 16) ^ 0x6DC50000) & (((v46 ^ 0x70B02185) << 8) & 0x70B40000 ^ 0x40100000 ^ (((v46 ^ 0x70B02185) << 8) ^ 0x34ED0000) & (v46 ^ 0x70B02185));
  v49 = ((-2117216273 - ((v37 - 120) | 0x81CDD7EF) + ((v37 - 120) | 0x7E322810)) ^ 0xABDCC981) * a8;
  *(v37 - 104) = &a23;
  *(v37 - 120) = v49 ^ v36 ^ (2 * v48) ^ 0x3B8F19E;
  *(v37 - 112) = v49 + v38 + v35;
  v50 = (*(v34 + 8 * (v35 ^ 0x1A7A)))(v37 - 120);
  return (*(v34 + 8 * ((2918 * ((a32 & 0x3Fu) + v39 > ((17 * (v35 ^ 0xEA) + 1148) | 0x174u) - 2358)) ^ (17 * (v35 ^ 0xEA)))))(v50);
}

uint64_t sub_1969F0174()
{
  v1 = STACK[0x28C];
  v2 = LODWORD(STACK[0x28C]) + 4966;
  v3 = STACK[0x480];
  STACK[0x550] = STACK[0x480];
  STACK[0x418] = 0;
  LODWORD(STACK[0x44C]) = 763604091;
  STACK[0x4A8] = 0;
  LODWORD(STACK[0x604]) = 763604091;
  STACK[0x560] = 0;
  return (*(v0 + 8 * ((((v3 == 0) ^ v2) & 1 | (2 * (((v3 == 0) ^ v2) & 1))) ^ v1)))();
}

uint64_t sub_1969F051C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v10 = v9 ^ ((a7 - 4304) | 0xB) ^ 0xFA2A22ED;
  if ((v8 - 1578499267) < 0xB4D2547C != v10 > 0x4B2DAB83)
  {
    v11 = (v8 - 1578499267) < 0xB4D2547C;
  }

  else
  {
    v11 = v8 - 1578499267 > v10 - 1261284228;
  }

  return (*(v7 + 8 * ((v11 * ((a7 - 4304) ^ 0x421)) ^ (a7 - 27))))();
}

uint64_t sub_1969F05A0@<X0>(int a1@<W1>, int a2@<W8>)
{
  v4 = STACK[0x590];
  v5 = &STACK[0x6E0] + STACK[0x590];
  STACK[0x3A8] = (v5 + 2048);
  STACK[0x3F0] = (v5 + 2176);
  STACK[0x5A0] = (v5 + 2304);
  STACK[0x590] = v4 + 2432;
  LODWORD(STACK[0x380]) = a1;
  return (*(v3 + 8 * ((5658 * (*v2 == ((145 * (a2 ^ 0x692)) ^ 0x1581) - 6085)) ^ a2)))();
}

uint64_t sub_1969F0620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  (*(v24 + 8 * SHIDWORD(a13)))(a14 + 16, 0x100004077774924);
  v25 = (*(v24 + 8 * a13))();
  *v23 = v25;
  return sub_1969F0698(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_1969F0908@<X0>(char a1@<W0>, unsigned int a2@<W3>, char a3@<W4>, char a4@<W5>, char a5@<W7>, _BYTE *a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, __int16 a32, char a33)
{
  *a6 += (((a31 ^ 0x94) - 45) ^ ((a31 ^ 0xA8) - 17) ^ ((a31 ^ 0xCB) + v33 - 18 + 83)) + 78;
  if (v35 == 426488387)
  {
    v40 = a6;
  }

  else
  {
    v40 = a6 + 1;
  }

  *v40 = v39 + *v40 - 45;
  v41 = v35 ^ 0x196BB242;
  a6[2 % v41] = (((v37 ^ 0x86) + 118) ^ ((v37 ^ 0xE6) + 22) ^ ((v37 ^ 0x8E) + 126)) + a6[2 % v41] - 30;
  a6[3 % v41] += 92;
  a6[4 % v41] += ((((a33 - ((2 * a33) & 0xFB) + 125) ^ 0x25) - 37) ^ (((a33 - ((2 * a33) & 0xFB) + 125) ^ 0x1E) - 30) ^ (((a33 - ((2 * a33) & 0xFB) + 125) ^ 0x46) - 70)) + 125;
  a6[a2 % v41] += a5 + 53;
  a6[6 % v41] = (((v36 ^ 0x90) + 114) ^ ((v36 ^ 0xD6) + 56) ^ ((v36 ^ 0xA7) + 71)) + a6[6 % v41] - 1;
  a6[7 % v41] += a1;
  a6[8 % v41] = ((((v38 - ((2 * v38) & 0xD6) - 21) ^ 0xD6) + 42) ^ (((v38 - ((2 * v38) & 0xD6) - 21) ^ 0x29) - 41) ^ (((v38 - ((2 * v38) & 0xD6) - 21) ^ a3) - 20)) + a6[8 % v41] - 21;
  a6[9 % v41] += a4;
  a6[0xA % v41] += v34;
  return sub_1969F0B4C();
}

uint64_t sub_1969F0E4C@<X0>(uint64_t a1@<X8>)
{
  v5 = *(a1 + v2 - 16);
  v6 = (a1 + v4 + 24);
  *v6 = *(a1 + v2 - 32);
  v6[1] = v5;
  return (*(v3 + 8 * ((381 * ((v1 & 0x1E74FB37u) - 237300484 - (a1 & 0xFFFFFFE0) == 2065)) ^ ((v1 & 0x1E74FB37) - 237301041))))(2065 - ((v1 & 0x1E74FB37u) - 237300484));
}

uint64_t sub_1969F0ED8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v9 = (v4 + 4 * (a4 + v7));
  *v9 = (v6 + ((a3 - 495) | 5) - 1671) ^ __ROR4__(*(v9 - 8) ^ *(v9 - 3) ^ *(v9 - 14) ^ *(v9 - 16), 31);
  return (*(v5 + 8 * ((6395 * (a4 + 1 == v8 + 80)) ^ a3)))();
}

uint64_t sub_1969F0F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, int *a23)
{
  v26 = v24 ^ (v23 + 2943);
  a16 = 0;
  LODWORD(a21) = v26 + 1310 - 1575331711 * (&a21 ^ 0x6C5B9502);
  a22 = a14;
  a23 = &a16;
  (*(v25 + 8 * (v26 ^ 0x190D)))(&a21);
  LODWORD(a21) = v26 + 1310 - 1575331711 * ((&a21 & 0xED89184E | ~(&a21 | 0xED89184E)) ^ 0x7E2D72B3);
  a22 = a14;
  a23 = &a19;
  (*(v25 + 8 * (v26 ^ 0x190D)))(&a21);
  a21 = a14;
  HIDWORD(a22) = v26 - 489239129 * ((((2 * (&a21 ^ 0xABC3963A)) | 0x8869B436) - (&a21 ^ 0xABC3963A) + 1003169253) ^ 0xD6DF6F17) - 26;
  v27 = (*(v25 + 8 * (v26 ^ 0x1913)))(&a21);
  return (*(v25 + 8 * (((a22 != ((v26 - 635) ^ 0x719F8DDC)) * (((v26 - 635) | 0x294) - 925)) ^ v26)))(v27);
}

uint64_t sub_1969F1A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, int a10)
{
  a9 = 192807272 - 1068996913 * (((&a9 ^ 0xD0B1D548) + 1089221245 - 2 * ((&a9 ^ 0xD0B1D548) & 0x40EC327D)) ^ 0x45B306A4);
  v11 = (*(v10 + 54800))(&a9);
  return (*(v10 + 8 * ((546 * (a10 == 1906281716)) | 0x1405u)))(v11);
}

void sub_1969F1AD0(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  (*(a1 + 8 * (v2 + 2777)))(a2);
  *(STACK[0x690] + 24) = 0;
  JUMPOUT(0x1968EA3D8);
}

uint64_t sub_1969F1AF8@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = a2 ^ 0x1FB7;
  v18 = ((v14 + 188150462) ^ 0xB36F2BEu) < 8 || a14 - a1 < (((v16 - 499096704) & 0x1DBF877Fu) + 5528) - 6319;
  return (*(v15 + 8 * ((98 * v18) ^ v16)))();
}

uint64_t sub_1969F1F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11)
{
  v14 = (((a11 - 41322033) ^ 0x181E42FA) - 488971879) ^ (a11 - 41322033) ^ (((a11 - 41322033) ^ 0xA5AC7FFF) + 1600707742) ^ (((a11 - 41322033) ^ 0xEF7FFB7F) + 364599326) ^ ((((v11 ^ 0x53) + 1475774148) ^ (a11 - 41322033)) + (*(v13 - 200) ^ 0xAD323F50));
  v15 = ((v11 ^ 0x53) - 4943) | 0x602;
  *(v13 - 200) = v15;
  v17 = v14 != 87776413 && ((v15 ^ 0x6D9) & v14) == 13;
  v18 = *(v12 + 8 * ((v17 * ((v11 ^ 0x53) - 5087)) ^ v11 ^ 0x53));
  *(v13 - 204) = -42899;
  return v18();
}

void sub_1969F2064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  *(v35 - 168) = 998242381 * (((~(v35 - 168) & 0x97B9DFCC) - (~(v35 - 168) | 0x97B9DFCD)) ^ 0x3DD6471B) + 1135415174 + v32 + 1465;
  *(v35 - 160) = a32;
  (*(v33 + 8 * (v32 ^ 0x15BF)))(v35 - 168);
  v36 = v32 + 1188;
  v37 = 1283153057 * ((((v35 - 168) | 0x37110FF3) - (v35 - 168) + ((v35 - 168) & 0xC8EEF008)) ^ 0x78C90CC4);
  v38 = *(v34 + 8 * (v32 - 3726)) - 8;
  *(v35 - 168) = a32;
  *(v35 - 160) = v38;
  *(v35 - 152) = v32 + 1188 + v37;
  *(v35 - 148) = v37 + 814017574;
  v39 = v32 ^ 0x159C;
  (*(v33 + 8 * v39))(v35 - 168);
  v40 = 1283153057 * ((v35 - 168) ^ 0x4FD80337);
  *(v35 - 152) = v36 + v40;
  *(v35 - 148) = v40 + 814017559;
  *(v35 - 168) = a32;
  *(v35 - 160) = a22;
  (*(v33 + 8 * v39))(v35 - 168);
  JUMPOUT(0x1969F21C4);
}

uint64_t sub_1969F2378@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v3 = *(a2 + 8);
  STACK[0x390] = 0;
  LODWORD(STACK[0x634]) = -1720256293;
  STACK[0x678] = 0;
  return (*(a1 + 8 * (((((v3 == 0) ^ v2 ^ 0xC5) & 1) * ((v2 ^ 0xC86) - 238)) ^ v2)))();
}

uint64_t sub_1969F26A8()
{
  if (v1)
  {
    v4 = *((v2 ^ 0x1A81ECC59515547FLL) - 0x1A81ECC595155467) == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 || v0 == 0;
  return (*(v3 + 8 * ((1008 * ((v6 ^ 0xD3) & 1)) ^ 0xDEDu)))();
}

uint64_t sub_1969F275C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x730] = v6 + 8;
  v8 = STACK[0x790];
  LODWORD(STACK[0x630]) = STACK[0x43C];
  STACK[0x6C8] = v8;
  STACK[0x5E8] = 0;
  LODWORD(STACK[0x3EC]) = -1720256293;
  STACK[0x820] = 0x3378E7DAD334F2CBLL;
  STACK[0x7D8] = 0;
  v9 = (*(a6 + 8 * (v7 + 5797)))(16, 0x20040A4A59CD2);
  v10 = STACK[0x370];
  STACK[0x648] = v9;
  return (*(v10 + 8 * ((29 * (((v7 - 1) ^ (v9 == 0)) & 1)) ^ v7)))();
}

uint64_t sub_1969F27FC@<X0>(uint64_t a1@<X8>)
{
  v4 = v3 & 0x76BA1EEF;
  v6 = (v4 + 534) ^ (654144011 * (&v6 ^ 0x2CD47D9C));
  v7 = a1;
  v8 = v2;
  return (*(v1 + 8 * (v4 + 3118)))(&v6);
}

uint64_t sub_1969F284C()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_1969F28E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = LOWORD(STACK[0x86E]);
  if (v11 == 26075)
  {
    v13 = STACK[0x7C0];
    STACK[0x430] = v8;
    LODWORD(STACK[0x4B8]) = v10;
    return (*(a6 + 8 * (((v13 + v9 == 0) * (((a8 - 3421) | 0x410) - 3332)) ^ (a8 - 1469))))();
  }

  else
  {
    if (v11 == 45445 || (v12 = a8, v11 == 41591))
    {
      STACK[0x430] = v8;
      v12 = a8;
    }

    v15 = 113 * (v12 ^ 0x164A);
    *STACK[0x770] = 0;
    LODWORD(STACK[0x4B8]) = -1720256293;
    v16 = STACK[0x758];
    v17 = *STACK[0x498];
    STACK[0x380] = STACK[0x758];
    if (v17)
    {
      v18 = v16 == 0;
    }

    else
    {
      v18 = 1;
    }

    v19 = v18;
    return (*(a6 + 8 * ((v19 * ((((v15 - 2263) | 8) + 332) ^ 0x2BA)) ^ v15)))();
  }
}

uint64_t sub_1969F2A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, int a28)
{
  *v34 = ((-((~(v30 - 1585) + v31) ^ (v32 - (v30 - 1585))) | (~(v30 - 1585) + v31)) >> 63) + v34[623];
  *(v35 - 136) = 1881689346 - v33 + v30;
  *(v35 - 168) = v33 + 1;
  *(v35 - 164) = v30 + v33 + 1221535178;
  v36 = (v35 - 176);
  v36[3] = v33 + 3;
  *v36 = (v28 + 1) - v33;
  *(v35 - 144) = v30 + v33 + 1221535512;
  *(v35 - 140) = a28;
  v37 = (*(v29 + 8 * a27))(v35 - 176);
  return (*(v29 + 8 * *(v35 - 160)))(v37);
}

uint64_t sub_1969F2AB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, unsigned int a7)
{
  v13 = *(v11 + 48 * v7 + 36);
  v15 = v13 != v12 && ((v8 + 4412) ^ 0x11CC ^ (a3 - 520)) + v13 < a7;
  return (*(v10 + 8 * ((v15 * ((v8 + 4412 - v9 - 282) ^ (a5 + 40))) ^ (v8 + 4412))))();
}

uint64_t sub_1969F2B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v26 = v22 - 2181;
  *(v25 - 144) = v22 + 998242381 * ((2 * ((v25 - 144) & 0x4174D3A0) - (v25 - 144) - 1098175400) ^ 0x14E4B48E) + 1135414016;
  *(v25 - 136) = &STACK[0xBE8];
  v27 = v22;
  (*(v23 + 8 * (v22 ^ 0x3FE)))(v25 - 144);
  v28 = 1283153057 * ((((v25 - 144) | 0x3B8831C6) - (v25 - 144) + ((v25 - 144) & 0xC477CE38)) ^ 0x745032F1);
  v29 = *(v24 + 8 * (v27 - 5922)) - 12;
  *(v25 - 144) = &STACK[0xBE8];
  *(v25 - 136) = v29;
  *(v25 - 128) = v27 - 1435 + v28;
  *(v25 - 124) = v28 + 814017574;
  (*(v23 + 8 * (v27 + 325)))(v25 - 144);
  v30 = 1283153057 * ((v25 - 1426384107 - 2 * ((v25 - 144) & 0xAAFB1BA5)) ^ 0xE5231892);
  *(v25 - 144) = &STACK[0xBE8];
  *(v25 - 136) = a22;
  *(v25 - 128) = v27 - 1435 + v30;
  *(v25 - 124) = v30 + 814017559;
  v31 = (*(v23 + 8 * (v27 ^ 0x3DD)))(v25 - 144);
  LODWORD(STACK[0xC40]) = STACK[0xBE8];
  LODWORD(STACK[0xC44]) = STACK[0xBEC];
  LODWORD(STACK[0xC48]) = STACK[0xBF0];
  STACK[0xC4C] = STACK[0xBF4];
  LODWORD(STACK[0xC54]) = STACK[0xBFC];
  v32 = *&STACK[0xC10];
  *&STACK[0xC58] = *&STACK[0xC00];
  *&STACK[0xC68] = v32;
  return (*(v23 + 8 * ((74 * ((((v26 - 70) ^ 0xCD) + 1) & 1)) ^ (v26 - 70))))(v31);
}

void sub_1969F2D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = ((v10 & (v8 + 901)) << ((v9 - 31) ^ 0x84)) & (v10 ^ 0x6F75A6A5) ^ v10 & (v8 + 901);
  v14 = ((2 * (v10 ^ 0x7B47ACB5)) ^ 0xEA7D373A) & (v10 ^ 0x7B47ACB5) ^ (2 * (v10 ^ 0x7B47ACB5)) & 0xF53E9B9C;
  v15 = v14 ^ 0x15028885;
  v16 = (v14 ^ 0x642E1105) & (4 * v13) ^ v13;
  v17 = ((4 * v15) ^ 0xD4FA6E74) & v15 ^ (4 * v15) & 0xF53E9B9C;
  v18 = (v17 ^ 0xD43A0A09) & (16 * v16) ^ v16;
  v19 = ((16 * (v17 ^ 0x21049189)) ^ 0x53E9B9D0) & (v17 ^ 0x21049189) ^ (16 * (v17 ^ 0x21049189)) & 0xF53E9B90;
  v20 = v18 ^ 0xF53E9B9D ^ (v19 ^ 0x5128990D) & (v18 << 8);
  v21 = (v20 << 16) & 0x753E0000 ^ v20 ^ ((v20 << 16) ^ 0x1B9D0000) & (((v19 ^ 0xA416020D) << 8) & 0x753E0000 ^ 0x41240000 ^ (((v19 ^ 0xA416020D) << 8) ^ 0x3E9B0000) & (v19 ^ 0xA416020D));
  v22 = (((~(v11 - 120) & 0xF1739760) - (~(v11 - 120) | 0xF1739761)) ^ 0x249D76F0) * a8;
  *(v11 - 120) = v22 ^ v10 ^ (2 * v21) ^ 0xEB9C1D2E;
  *(v11 - 112) = v12 + v9 + v22 + 59;
  *(v11 - 104) = a6;
  JUMPOUT(0x1969F2EECLL);
}

uint64_t sub_1969F2F58(int a1)
{
  v9 = *(v3 + 4 * (v7 + v4 + v1 - 2280 - 3560));
  HIDWORD(v10) = *(v3 + 4 * (v7 + v4 - 8)) ^ *(v3 + 4 * (v7 + v4 - 3)) ^ v9 ^ *(v3 + 4 * (v7 + v4 - 16)) ^ v5;
  LODWORD(v10) = *(v3 + 4 * (v7 + v4 - 8)) ^ *(v3 + 4 * (v7 + v4 - 3)) ^ v9 ^ *(v3 + 4 * (v7 + v4 - 16));
  *(v3 + 4 * (v2 + v7)) = (v10 >> 31) ^ v6;
  return (*(v8 + 8 * ((((v2 + 1 + v7) < 0x50) * a1) ^ v1)))();
}

uint64_t sub_1969F2FFC()
{
  v4 = (*(v1 + 8 * (v3 + 5144)))(*v2, *(v0 + 8 * (v3 ^ 0x734)));
  **(v0 + 8 * (v3 ^ 0x7EC)) = v4;
  return (*(v1 + 8 * (((v4 == 0) * ((((v3 - 1293) | 0x1804) ^ 0xFFFFE176) + (v3 ^ 0x1E6))) ^ v3)))();
}

void sub_1969F3074(uint64_t a1)
{
  (*(v1 + 56120))();
  (*(v1 + 53768))(a1);
  JUMPOUT(0x196971324);
}

uint64_t sub_1969F3258()
{
  LODWORD(STACK[0x330]) = v2;
  STACK[0x338] = v1;
  LODWORD(STACK[0x340]) = v0;
  STACK[0x5F0] = 0;
  v6 = 489239129 * ((2 * ((v5 - 208) & 0x60F8E1A0) - (v5 - 208) + 520560223) ^ 0xA62F3D69);
  *(v5 - 176) = v6 + 483267739;
  *(v5 - 192) = (v4 - 2306) ^ v6;
  *(v5 - 200) = &STACK[0x5F0];
  *(v5 - 208) = &STACK[0x4C0];
  *(v5 - 184) = 0;
  v7 = (*(v3 + 8 * (v4 ^ 0xD6F)))(v5 - 208);
  return (*(v3 + 8 * (((*(v5 - 172) == 1906281716) * (((v4 - 5365) | 0x152B) ^ 0x17DC)) ^ v4)))(v7);
}

void sub_1969F3334(char *a1@<X8>)
{
  v2 = &STACK[0x19E0] + v1;
  *v2 = *a1;
  *(v2 + 1) = *(a1 + 1);
  *(v2 + 9) = *(a1 + 9);
  *(v2 + 13) = *(a1 + 13);
  v2[15] = a1[15];
  v4 = *a1;
  v3 = *(a1 + 1);
  *(v2 + 2) = v4;
  *(v2 + 3) = v3;
  JUMPOUT(0x1969D9F70);
}

uint64_t sub_1969F3378()
{
  v5 = *(v0 + 4 * (v3 - 1));
  v6 = 1566083941 * (((v5 ^ (v5 >> 30) ^ 0xC57B9F16) + 773898384) ^ ((v5 ^ (v5 >> 30) ^ 0x8F7BF2C2) + 1679863132) ^ ((v5 ^ (v5 >> 30) ^ 0x4A006DD4) - 1587858866)) + 596827422;
  *(v0 + 4 * v3) = (*(v0 + 4 * v3) ^ v6 ^ ((v6 ^ 0xD003BFA8) + 1166308024) ^ ((v6 ^ 0xDCD29FFB) + 1230328549) ^ ((v6 ^ 0x99D2ED1C) + 206905348) ^ ((v6 ^ 0xFF7BFFAF) + 1794912945) ^ 0x6A7832E0) - v3;
  v7 = STACK[0x350];
  *(v4 - 192) = v3 + 1 - STACK[0x350];
  *(v4 - 172) = (v1 - 84372101) ^ v7;
  *(v4 - 208) = ((v1 + 503364715) | 9) + v7;
  *(v4 - 204) = (v1 + 503364715) ^ v7;
  *(v4 - 176) = v1 + 503364715 - v7 + 319;
  *(v4 - 184) = v7;
  *(v4 - 200) = STACK[0x348];
  v8 = (*(v2 + 8 * (v1 + 721)))(v4 - 208);
  return (*(v2 + 8 * *(v4 - 180)))(v8);
}

uint64_t sub_1969F34F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v21 = 998242381 * ((((v20 - 136) | 0xCE961FF4) - (v20 - 136) + ((v20 - 136) & 0x3169E008)) ^ 0x64F98722);
  *(v20 - 128) = &a17;
  *(v20 - 136) = (((v19 - 3781) ^ v17 ^ 0x75BFF88F) + ((2 * v17) & 0xEB7FF57E) - 269568005) ^ v21;
  *(v20 - 132) = (v19 + 447) ^ v21;
  v22 = (*(v18 + 8 * (v19 + 2418)))(v20 - 136);
  return sub_1969F3590(v22);
}

uint64_t sub_1969F3590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v20 - 120) = v18 + ((2 * ((v20 - 136) & 0x301DFC48) - (v20 - 136) - 807271500) ^ 0xAAF8F8FF) * v19 + 1703;
  *(v20 - 136) = a16;
  *(v20 - 128) = v16;
  v21 = (*(v17 + 8 * (v18 + 6241)))(v20 - 136);
  return (*(v17 + 8 * ((123 * (*(v20 - 116) <= ((v18 + 3170) ^ 0x5818A539u))) ^ v18)))(v21);
}

uint64_t sub_1969F370C@<X0>(uint64_t a1@<X8>)
{
  v8 = *(v5 + a1 + 40);
  v9 = v1 + a1;
  *(v9 + 24) = *(v5 + a1 + 24);
  *(v9 + 40) = v8;
  return (*(v7 + 8 * (((a1 + ((v4 + v2) & v6) == 3919) * v3) ^ v4)))();
}

uint64_t sub_1969F38DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a3 + v6) ^ 0xEC;
  return (*(v5 + 8 * ((3220 * (v6 == 0)) ^ (v4 + 5334))))();
}

uint64_t sub_1969F39E4()
{
  STACK[0x3D0] = STACK[0x4D8];
  LODWORD(STACK[0x59C]) = STACK[0x38C];
  return (*(v1 + 8 * ((84 * (((((v0 - 116) & 0x4F) - 102) ^ ((LODWORD(STACK[0x42C]) - 1) < 2)) & 1)) ^ (v0 - 628981364) & 0x257D7F4F)))();
}

uint64_t sub_1969F3A48(uint64_t a1, __n128 a2)
{
  v8 = STACK[0x370];
  v2 = *(v5 + 8 * (v4 - 5704));
  STACK[0x278] = *(v6 + 8 * (v4 - 5614));
  STACK[0x270] = v7 + 4;
  return v2(a1, 1906281716, 48, 1906239693, 4356, v8, 95, 6138, a2, 0);
}

uint64_t sub_1969F3B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v18 = 753662761 * ((((v17 - 144) | 0x39F79C44) - (v17 - 144) + ((v17 - 144) & 0xC60863B8)) ^ 0x5CED670F);
  *(v17 - 144) = &a14;
  *(v17 - 136) = v18 ^ 0x781EFA5A;
  *(v17 - 132) = (v16 - 878) ^ v18;
  v19 = (*(v14 + 8 * (v16 + 1492)))(v17 - 144);
  return (*(v14 + 8 * (((((v15 == 0) ^ (v16 - 9)) & 1) * ((v16 ^ 0x120B) - 1790)) ^ (v16 - 3259))))(v19);
}

uint64_t sub_1969F3CA0@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v6 = (*(v4 + 8 * (v5 ^ 0xB75)))(a1, 1337519501 * (*(v2 + 8) ^ a2) - 236321470);
  **(v3 + 8 * (v5 - 3586)) = v6;
  return (*(v4 + 8 * (((((v5 + 54) ^ (v6 == 0)) & 1) * (v5 - 4021)) ^ v5)))();
}

void sub_1969F3D1C(int a1@<W8>, uint64_t a2, __int128 a3, int a4)
{
  v5 = 1283153057 * (&a3 ^ 0x4FD80337);
  a4 = a1 - v5 - 3868;
  HIDWORD(a3) = 0;
  LODWORD(a3) = v5 - 1938887815;
  *(&a3 + 4) = v5 + 436188070;
  (*(v4 + 8 * (a1 ^ 0x931)))(&a3);
  JUMPOUT(0x1969BF88CLL);
}

uint64_t sub_1969F3E24@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  *v1 = v1[3];
  v1[3] = v4;
  v5 = v1[1];
  v1[1] = v1[2];
  v1[2] = v5;
  return (*(a1 + 8 * (((v2 == 1805132658) * ((v3 + 4728) ^ 0x1623)) ^ v3)))();
}

uint64_t sub_1969F3E80(__n128 *a1, double a2, __n128 a3)
{
  v6 = &STACK[0x6E0] + v4;
  *v6 = 988001955;
  *(v6 + 1) = 0;
  *(v6 + 4) = 1737729328;
  *(v6 + 6) = 763604091;
  *(&STACK[0x6E0] + v4 + 40) = 763604091;
  *(v6 + 4) = 0;
  STACK[0x5B0] = &STACK[0x6E0] + v4 + 40;
  *(&STACK[0x6E0] + v4 + 48) = 0;
  STACK[0x540] = &STACK[0x6E0] + v4 + 48;
  *(&STACK[0x6E0] + v4 + 56) = 763604091;
  *(&STACK[0x6E0] + v4 + 64) = 0;
  STACK[0x5D0] = &STACK[0x6E0] + v4 + 56;
  STACK[0x4F0] = &STACK[0x6E0] + v4 + 64;
  *(&STACK[0x6E0] + v4 + 72) = 763604091;
  STACK[0x580] = &STACK[0x6E0] + v4 + 72;
  *(&STACK[0x6E0] + v4 + 80) = 0;
  STACK[0x3C8] = &STACK[0x6E0] + v4 + 80;
  v6[88] = 33;
  a1->n128_u32[0] = 988001955;
  memset(&a1->n128_u8[4], 236, 15);
  a1[1].n128_u32[3] = 0;
  STACK[0x2E8] = &a1[1].n128_u64[1] + 4;
  a1[1].n128_u32[2] = 763604091;
  a1[14].n128_u32[2] = 0;
  STACK[0x2E0] = &a1[14].n128_u64[1];
  memset(&a1[27].n128_u8[4], 236, 30);
  memset(&a1[70].n128_i8[8], 236, 18);
  a1[72].n128_u64[0] = 0xECECECECECECECECLL;
  a1[72].n128_u64[1] = 0xECECECECECECECECLL;
  a1[73] = a3;
  a1[74] = a3;
  return (*(v5 + 8 * ((254 * ((((v3 + 25) & 0x78) - 7) & 1)) ^ (v3 - 1639028711) & 0x61B19778u)))();
}

uint64_t sub_1969F4030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = ~v6 + v2;
  v9 = *(a2 + v8 - 15);
  v10 = *(a2 + v8 - 31);
  v11 = a1 + v8;
  *(v11 - 15) = v9;
  *(v11 - 31) = v10;
  return (*(v7 + 8 * ((120 * (v6 + v4 - 1662 != v3)) ^ v5)))();
}

uint64_t sub_1969F4300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, char a40, char a41, char a42, char a43, char a44, char a45, char a46, char a47, char a48, char a49, char a50, char a51, char a52, char a53, char a54)
{
  *(v59 + 16) = v58;
  *(v59 + 20) = v54 ^ 0x13A39530;
  *(v59 + 24) = a13 ^ 0x5D5D9A9;
  *(v59 + 560) = a32;
  if (v58 == 8 || v58 == 5)
  {
    *(v59 + 43) = a54 ^ 0xEC;
    *(v59 + 42) = a53 ^ 0xEC;
    *(v59 + 41) = a52 ^ 0xEC;
    *(v59 + 40) = a51 ^ 0xEC;
    *(v59 + 39) = a50 ^ 0xEC;
    *(v59 + 38) = a49 ^ 0xEC;
    *(v59 + 37) = a48 ^ 0xEC;
    *(v59 + 36) = a47 ^ 0xEC;
    *(v59 + 35) = a46 ^ 0xEC;
    *(v59 + 34) = a45 ^ 0xEC;
    *(v59 + 33) = a44 ^ 0xEC;
    *(v59 + 32) = a43 ^ 0xEC;
    *(v59 + 31) = a42 ^ 0xEC;
    *(v59 + 30) = a41 ^ 0xEC;
    *(v59 + 29) = a40 ^ 0xEC;
    *(v59 + 28) = a39 ^ 0xEC;
  }

  *(v60 - 172) = (v57 + 1972) ^ (489239129 * ((((v60 - 176) | 0x49D39025) + (~(v60 - 176) | 0xB62C6FDA)) ^ 0xF0FBB312));
  v61 = (*(v56 + 8 * (v57 ^ 0x1389)))(v60 - 176);
  return (*(v56 + 8 * ((1534 * (*(v60 - 176) == v55 + v57 - 2106 - 102)) ^ (v57 - 2146))))(v61);
}

uint64_t sub_1969F4698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v49 = *(a5 + 8 * (((v48 - 2862 + (v48 ^ 0x16A6) - 7011) * (v47 == a45)) ^ v48));
  STACK[0x2D0] = v47;
  return v49(a47, 0x4647DA357A539214);
}

uint64_t sub_1969F4848@<X0>(char a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, char a56)
{
  STACK[0x240] = v57;
  STACK[0x248] = v56;
  return (*(v58 + 8 * ((4076 * ((((a1 & 1) == 0) ^ (3 * a56)) & 1)) ^ a55)))();
}

unsigned __int8 **sub_1969F4884@<X0>(unsigned __int8 **result@<X0>, char a2@<W8>)
{
  v7 = (v6 - 128);
  v8 = *result;
  if (a2 == 100)
  {
LABEL_4:
    v9 = &v8[56 * *v8 + 24];
    v10 = ((((v6 - 128) | 0xF2E73430) - ((v6 - 128) | 0xD18CBCF) + 219728847) ^ 0x97FDCF7B) * v5;
    *(v6 - 104) = v18;
    *(v6 - 120) = v9;
    *(v6 - 128) = (((((v6 - 128) | 0x3430) - ((v6 - 128) | 0xCBCF) - 13361) ^ 0xCF7B) * v5) ^ 0x6298;
    *(v6 - 112) = v10 + 1904658650;
    *(v6 - 108) = v2 - v10 - 1922;
    (*(v4 + 8 * (v2 ^ 0xF79)))(v6 - 128);
    v11 = 998242381 * ((v6 - 128) ^ 0xAA6F98D6);
    *v7 = (v2 - 1995) ^ v11;
    *(v6 - 124) = v11 + 2125716558;
    *(v6 - 120) = v18;
    *(v6 - 112) = &v17;
    (*(v4 + 8 * (v2 ^ 0xE84)))(v6 - 128);
    v12 = 998242381 * ((v6 - 851303059 - 2 * ((v6 - 128) & 0xCD4225ED)) ^ 0x672DBD3B);
    *v7 = (v2 - 1995) ^ v12;
    *(v6 - 124) = v12 + 2125716558;
    *(v6 - 120) = v18;
    *(v6 - 112) = &v16;
    (*(v4 + 8 * (v2 + 1412)))(v6 - 128);
    *v7 = v18;
    *(v6 - 120) = v2 + 1825732043 * ((((v6 - 128) | 0x3ACF703) + (~(v6 - 128) | 0xFC5308FC)) ^ 0x33AA435) - 5491;
    *(v6 - 112) = v3;
    return (*(v4 + 8 * (v2 ^ 0xEB8)))(v6 - 128);
  }

  if (a2 != 3)
  {
    if (a2 != 2)
    {
      return result;
    }

    goto LABEL_4;
  }

  *v7 = v2 - 1575331711 * ((v6 + 1560129698 - 2 * ((v6 - 128) & 0x5CFDB122)) ^ 0x30A62420) - 1915868722;
  *(v6 - 120) = v19;
  (*(v4 + 8 * (v2 + 1317)))(v6 - 128);
  v13 = ((v6 - 2103918807 - 2 * ((v6 - 128) & 0x8298BFA9)) ^ 0xE78244E2) * v5;
  *(v6 - 120) = &v17;
  *(v6 - 112) = v19;
  *v7 = v13 ^ 0x7383F52B;
  *(v6 - 124) = v2 + 1869823483 + v13;
  (*(v4 + 8 * (v2 + 1385)))(v6 - 128);
  v14 = (((v6 - 128) & 0x96281106 | ~((v6 - 128) | 0x96281106)) ^ 0xCCD15B2) * v5;
  *(v6 - 120) = &v16;
  *(v6 - 112) = v19;
  *v7 = v14 ^ 0x7383F52B;
  *(v6 - 124) = v2 + 1869823483 + v14;
  (*(v4 + 8 * (v2 + 1385)))(v6 - 128);
  v15 = &v8[56 * *v8];
  *(v6 - 129) = v15[43] ^ 0xEC;
  *(v6 - 130) = v15[42] ^ 0xEC;
  *(v6 - 131) = v15[41] ^ 0xEC;
  *(v6 - 132) = v15[40] ^ 0xEC;
  *(v6 - 133) = v15[39] ^ 0xEC;
  *(v6 - 134) = v15[38] ^ 0xEC;
  *(v6 - 135) = v15[37] ^ 0xEC;
  *(v6 - 136) = v15[36] ^ 0xEC;
  *(v6 - 137) = v15[35] ^ 0xEC;
  *(v6 - 138) = v15[34] ^ 0xEC;
  *(v6 - 139) = v15[33] ^ 0xEC;
  *(v6 - 140) = v15[32] ^ 0xEC;
  *(v6 - 141) = v15[31] ^ 0xEC;
  *(v6 - 142) = v15[30] ^ 0xEC;
  *(v6 - 143) = v15[29] ^ 0xEC;
  *(v6 - 144) = v15[28] ^ 0xEC;
  *(v6 - 145) = v15[27] ^ 0xEC;
  *(v6 - 146) = v15[26] ^ 0xEC;
  *(v6 - 147) = v15[25] ^ 0xEC;
  *(v6 - 148) = v15[24] ^ 0xEC;
  *(v6 - 120) = v19;
  *(v6 - 112) = v6 - 148;
  *v7 = v3;
  *(v6 - 104) = v2 + 455395931 * ((v6 - 1811766201 - 2 * ((v6 - 128) & 0x9402A4C7)) ^ 0xE2F3FA0B) + 142;
  return (*(v4 + 8 * (v2 + 1288)))(v6 - 128);
}

uint64_t sub_1969F4D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int *a16)
{
  a9 = 0;
  a15 = a12;
  a16 = &a9;
  LODWORD(a14) = v16 + 1282 - ((2 * (&a14 & 0x2B96C1E0) - &a14 - 731300326) ^ 0xB832AB18) * v19;
  (*(v18 + 8 * (v16 + 5871)))(&a14);
  LODWORD(a14) = v16 + 1282 - ((((2 * &a14) | 0xF1B0A40A) - &a14 - 2027442693) ^ 0x1483C707) * v19;
  a15 = a12;
  a16 = &a10;
  (*(v18 + 8 * (v16 ^ 0x1911)))(&a14);
  a14 = a12;
  HIDWORD(a15) = v16 - 489239129 * (((&a14 | 0x2CCD29E6) - &a14 + (&a14 & 0xD332D618)) ^ 0x95E50AD0) - 54;
  v20 = (*(v18 + 8 * (v16 + 5873)))(&a14);
  return (*(v18 + 8 * ((4649 * (a15 == (((v16 - 958) | 0x208) ^ (v17 + 521)))) ^ v16)))(v20);
}

uint64_t sub_1969F6B60()
{
  if (v1)
  {
    v4 = v2 == ((v0 - 1343950617) & 0x5E3FFF7D) + (v0 ^ 0xF1DB0E1B);
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  return (*(v3 + 8 * ((11 * v5) | v0)))();
}

uint64_t sub_1969F6BB8()
{
  v3 = (v0 - 143) | 0x20;
  v4 = ((2 * v9) & 0xEB7F1BEE) + 2078277373 + ((v3 - 171998001) ^ v9);
  v5 = v3 + 1598;
  v10 = v3 - (((&v10 | 0x16451E07) - (&v10 & 0x16451E07)) ^ 0xEE993E46) * v1 + 3757;
  v11 = v8;
  (*(v2 + 8 * (v3 ^ 0x1383)))(&v10);
  v10 = v5 - ((((2 * &v10) | 0xAB94C522) - &v10 - 1439326865) ^ 0xAD1642D0) * v1 + 2159;
  v11 = v7;
  (*(v2 + 8 * (v5 ^ 0x15CD)))(&v10);
  return v4 - 1906281716;
}

uint64_t sub_1969F6C88(__n128 a1)
{
  a1.n128_u16[0] = -4884;
  a1.n128_u8[2] = -20;
  a1.n128_u8[3] = -20;
  a1.n128_u8[4] = -20;
  a1.n128_u8[5] = -20;
  a1.n128_u8[6] = -20;
  a1.n128_u8[7] = -20;
  return sub_1969F6CA0(a1);
}

uint64_t sub_1969F6CA0@<X0>(uint64_t a1@<X8>, int8x8_t a2@<D0>)
{
  v9 = (a1 + v5);
  v10 = veor_s8(*(v7 + v5 + 8), a2);
  *v9 = veor_s8(*(v7 + v5), a2);
  v9[1] = v10;
  return (*(v8 + 8 * (((v5 + v4 - 2126 == v2) * v6) ^ (v3 + 1606))))();
}

void sub_1969F6D0C()
{
  v6 = 1283153057 * ((2 * ((v5 - 144) & 0x17976710) - (v5 - 144) + 1751685352) ^ 0x27B09BDF);
  *(v5 - 136) = v4;
  *(v5 - 120) = v3;
  *(v5 - 144) = v0 + v6 + 418792435 + v2;
  *(v5 - 140) = v2 - v6 + 5860;
  (*(v1 + 8 * (v2 ^ 0x1881)))(v5 - 144);
  JUMPOUT(0x19696E7E8);
}

uint64_t sub_1969F6D90(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, unsigned int a8)
{
  v13 = v8 < a8;
  v14 = v9 + 1;
  if (v13 == v14 > a6 + 2)
  {
    v13 = v14 + a8 < v8;
  }

  return (*(v12 + 8 * ((v13 * (v11 & a1 ^ a5)) ^ v10)))();
}

_DWORD *sub_1969F8CC8()
{
  result = v1;
  *v1 = (v2 ^ 0xF19F9CF7) + 2147479549 + ((v2 << (v3 ^ 0x17)) & 0xE33E30CA);
  return result;
}

void sub_1969F8D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned __int8 a20, int a21, unsigned __int8 a22, int a23, int a24, int a25, unsigned __int8 a26, uint64_t a27, int a28, char a29, int a30)
{
  *(v30 - 124) = (((a22 ^ 0x94) << (a29 ^ 0xB1)) + (a23 << 24) + (a26 ^ 0x25 | ((*(v30 - 116) ^ 0x2A) << 8))) ^ 0xBCD39399;
  *(v30 - 128) = a20 & 0xD7 ^ 0x40F2EED3 ^ (a30 ^ 0x25D59FA0) & (a20 ^ 0xFFFFFF0F);
  *(v30 - 132) = a21 ^ 0x5B07E830;
  JUMPOUT(0x1969B87F4);
}

void sub_1969F8E5C()
{
  if (v0 == 1159249384)
  {
    v2 = 1906281716;
  }

  else
  {
    v2 = 1906239692;
  }

  *(v1 + 40) = v2;
}

uint64_t sub_1969F8EBC(uint64_t a1, uint64_t a2, int a3)
{
  STACK[0x590] = v4 - 1824;
  LODWORD(STACK[0x380]) = a3;
  return (*(v5 + 8 * ((4047 * (*(v6 + 360) > ((v3 + 797542905) & 0xD07677FF) - 6138)) ^ v3)))();
}

uint64_t sub_1969F8F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, uint64_t a17, uint64_t a18)
{
  v22 = 753662761 * (((&a15 ^ 0xC5F0FEFB | 0x4F95AA92) - (&a15 ^ 0xC5F0FEFB) + ((&a15 ^ 0xC5F0FEFB) & 0xB06A5569)) ^ 0xEF7FAF22);
  a15 = (v20 ^ 0x77371B99) + ((2 * v20) & 0xEE6E3732) - v22 - 553718025;
  a16 = v22 ^ 0x15D7;
  a17 = a9;
  a18 = v19;
  (*(v21 + 54232))(&a15);
  v23 = 1621291457 * (&a15 ^ 0x36178199);
  a18 = a9;
  a16 = v23 + 1241;
  LODWORD(a17) = (1122297523 * v18 + 296299868) ^ v23;
  v24 = (*(v21 + 54664))(&a15);
  return (*(v21 + 8 * ((4935 * (a15 == 1906281716)) ^ 0x512u)))(v24);
}

uint64_t sub_1969F908C@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(v4 + v5) = *(a2 + v5);
  return (*(a1 + 8 * ((5188 * (v5 == 248 * (v3 ^ 0xE0Bu) - 4712)) ^ v3)))();
}

uint64_t sub_1969F90D0@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v6 = (((v4 + 1872) - 2467) ^ v3) + v2;
  *(v5 - 7 + v6) = veor_s8(*(a2 - 7 + v6), 0xECECECECECECECECLL);
  return (*(a1 + 8 * ((821 * (((v4 - 602) & v2) - 8 != v3)) ^ (v4 - 235))))();
}

void sub_1969F9184(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  STACK[0x240] = v4;
  STACK[0x590] -= 1616;
  LODWORD(STACK[0x380]) = a4 - 162;
  JUMPOUT(0x196A01674);
}

void sub_1969F9198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = *(STACK[0x738] + 20);
  if (!v8)
  {
    JUMPOUT(0x1968E94F8);
  }

  if (v8 == 1)
  {
    (*(a6 + 8 * (a8 ^ 0xCB2)))(STACK[0x5C8], 0, 32);
    JUMPOUT(0x1969F91F4);
  }

  sub_1969A7A9C(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1969F942C(uint64_t a1)
{
  v8 = a1 - 1;
  v9 = ((3 * (v1 ^ 0x1111u)) ^ 0xD5FLL) & v8;
  *(v6 + v8) = *(v5 + v9) ^ *(v2 + v8) ^ *(v9 + v4 + 7) ^ *(v9 + v3 + 5) ^ (33 * v9);
  return (*(v7 + 8 * ((5570 * (v8 == 0)) ^ (v1 - 3946))))();
}

uint64_t sub_1969F9560@<X0>(int a1@<W8>)
{
  v5 = *(v1 - 88);
  *(v1 - 1) = *(v1 - 104);
  *v1 = v5;
  return (*(v3 + 8 * (((v2 == 0) * a1) ^ v4)))();
}

uint64_t sub_1969F9BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, int a17, int a18, unsigned int a19, uint64_t a20, char *a21, int a22)
{
  v24 = 1012216201 * ((((&a17 | 0x20B5DEE) ^ 0xFFFFFFFE) - (~&a17 | 0xFDF4A211)) ^ 0x795D2AFD);
  a22 = v24 + v23 + 49 - 1795305817;
  a20 = a16;
  a21 = &a14;
  a19 = v24 + 1357291636;
  a17 = v24 ^ 0x80F33AA;
  v25 = (*(v22 + 8 * ((v23 + 49) ^ 0x137A)))(&a17);
  return (*(v22 + 8 * ((6973 * (a18 == ((v23 + 49) ^ 0xB41) + 1906281016)) ^ (v23 + 49))))(v25);
}

uint64_t sub_1969F9E90(uint64_t a1)
{
  v6 = STACK[0x280];
  v1 = *(v4 + 8 * v3);
  STACK[0x278] = *(v5 + 8 * (877 * (v3 ^ 0x1B9) - 5614));
  STACK[0x270] = v6 + 4;
  return v1(a1, 1906281716, 48);
}

uint64_t sub_1969F9ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24)
{
  v27 = 1012216201 * ((1087270855 - (&a19 | 0x40CE6FC7) + (&a19 | 0xBF319038)) ^ 0x3B9818D4);
  a21 = v27 - 235263691;
  a19 = v27 ^ 0x80F33AA;
  a24 = v27 + v24 - 1795308133;
  a22 = a13;
  a23 = &a14;
  v28 = (*(v25 + 8 * (v24 + 1918)))(&a19);
  return (*(v25 + 8 * ((((((v24 ^ 0xF) + 1) ^ (a20 == v26)) & 1) * (v24 - 4869)) | v24)))(v28);
}

uint64_t sub_1969F9FD8(unint64_t a1, int a2, int a3, unsigned int a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v13 = HIDWORD(a1) + a4 * (*(a7 + 4 * a5) ^ v8) + (a3 ^ (v8 + 2019) ^ *(a8 + 4 * a6));
  *(a8 + 4 * a6) = v13 + v8 - ((v10 + 844) & (2 * v13));
  return (*(v11 + 8 * (((a5 + 1 == v9) * v12) ^ a2)))();
}

uint64_t sub_1969FA148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, int a17, char *a18, unsigned int a19)
{
  a19 = v19 - 1825732043 * ((2 * (&a17 & 0xC955EE8) - &a17 + 1936367895) ^ 0x73FCF220) - 114;
  a18 = &a14;
  v21 = (*(v20 + 8 * (v19 ^ 0x1C66)))(&a17);
  return (*(v20 + 8 * ((6101 * (a17 == v19 + 1906273263 + ((v19 - 945063505) & 0x38549356) + 1895)) ^ v19)))(v21);
}

uint64_t sub_1969FA1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, uint64_t a11, int a12, char a13, uint64_t a14, int a15, char a16, __int16 a17, char a18, __int16 a19, char a20, uint64_t a21, uint64_t a22, char *a23)
{
  LODWORD(a21) = v23 - 2563 - ((&a21 + 739667760 - 2 * (&a21 & 0x2C166F30)) ^ 0x404DFA32) * v25;
  a22 = a14;
  a23 = &a20;
  (*(v24 + 8 * (v23 ^ 0x86A)))(&a21);
  LODWORD(a21) = v23 - 2563 - ((2 * (&a21 & 0xAE57878) - &a21 - 182810747) ^ 0x99411287) * v25;
  a22 = a14;
  a23 = &a18;
  (*(v24 + 8 * (v23 + 2026)))(&a21);
  LODWORD(a21) = v23 - 2563 - ((&a21 & 0x50B506A3 | ~(&a21 | 0x50B506A3)) ^ 0xC3116C5E) * v25;
  a22 = a14;
  a23 = &a16;
  (*(v24 + 8 * (v23 ^ 0x86A)))(&a21);
  LODWORD(a21) = v23 - 2563 - (((&a21 | 0x36E4A734) - &a21 + (&a21 & 0xC91B58C8)) ^ 0x5ABF3236) * v25;
  a22 = a14;
  a23 = &a13;
  (*(v24 + 8 * (v23 + 2026)))(&a21);
  a22 = a14;
  a23 = &a10;
  LODWORD(a21) = v23 - 2563 - (((&a21 | 0x794A4AA3) + (~&a21 | 0x86B5B55C)) ^ 0x1511DFA0) * v25;
  (*(v24 + 8 * (v23 ^ 0x86A)))(&a21);
  HIDWORD(a22) = v23 - 489239129 * (&a21 ^ 0xB9282336) - 3899;
  a21 = a14;
  v26 = (*(v24 + 8 * (v23 + 2028)))(&a21);
  return (*(v24 + 8 * ((3009 * (a22 == (v23 ^ 0x51DA2DDD) + 533019415 + 5 * (v23 ^ 0x117B) + 9)) ^ v23)))(v26);
}

uint64_t sub_1969FA488@<X0>(uint64_t a1@<X5>, unsigned int a2@<W8>)
{
  v3 = 16 - ((((v2 + 759) | 0x940) - 6613) & a2 ^ (2 * ((((v2 + 2224) ^ 0x1659) & (2 * a2) | 2) & (a2 + 1427892608))) ^ 0xA);
  LODWORD(STACK[0x578]) = v3;
  return (*(a1 + 8 * ((8090 * ((a2 ^ 0xA7E07FF477CFD7FDLL) + ((2 * a2) & 0xEF9FAFFALL) + ((2 * v3) & 0x1C) + (v3 ^ 0x5BFD97EBAEDFFFEELL) - 0x3DE17E026AFD7EBLL < 0xFFFFFFF6)) ^ v2)))();
}

uint64_t sub_1969FA5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = LODWORD(STACK[0x59C]);
  v73 = *(v67 + 52) ^ ((*(v67 + 52) ^ 0xF03E22FC) + 75607327) ^ ((*(v67 + 52) ^ 0x3A773433) - 825705518) ^ ((*(v67 + 52) ^ 0xB2B69905) + 1175000808) ^ 0xE7CCBC68 ^ (((v66 - 1738974890) & 0x67A6B7FB) + ((v66 + 1941961006) ^ *(v67 + 52)) - 2030020549);
  STACK[0x338] = v72;
  v74 = 654144011 * ((((v68 | 0xA366746C) ^ 0xFFFFFFFE) - (~v68 | 0x5C998B93)) ^ 0x704DF60F);
  *(v71 - 208) = a66 - v74;
  *(v71 - 204) = v73 + v74;
  *(v71 - 184) = v74 + v66 - 1558;
  *(v71 - 192) = v70;
  *(v71 - 176) = &STACK[0x6D0];
  *(v71 - 168) = STACK[0x248];
  *(v71 - 200) = ((v72 ^ 0x5F6FF5AE) - 1095074186 + ((2 * v72) & 0xBEDFEB5C)) ^ v74;
  v75 = (*(v69 + 8 * (v66 + 5156)))(v71 - 208);
  v76 = *(v71 - 160);
  LODWORD(STACK[0x450]) = v76;
  return (*(v69 + 8 * ((2760 * (v76 == 1906281716)) ^ v66)))(v75);
}

uint64_t sub_1969FA77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t *a14, unsigned int a15)
{
  a15 = 1498 - 1825732043 * (((&a13 | 0x4E05A049) - (&a13 & 0x4E05A049)) ^ 0x4E93F37E);
  a14 = &a9;
  v18 = (*(v15 + 53584))(&a13);
  return (*(v15 + 8 * ((141 * (a13 == v16)) ^ v17)))(v18);
}

uint64_t sub_1969FA954(uint64_t a1)
{
  v5 = v4 + 1833;
  v7 = (*(v2 + 8 * (v5 ^ 0x249)))(a1, **(v1 + 8 * (v5 ^ 0x1B2A)), 0, v3 + 4);
  v8 = (*(v2 + 8 * (v4 + 2159)))(a1);
  return (*(v2 + 8 * ((159 * (v7 == (v5 ^ 0x140A) - 4481 + ((v4 - 4590) | 0x444))) ^ v5)))(v8);
}

uint64_t sub_1969FA9F0@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  result = (*(v3 + 8 * (a2 ^ 0x18F5)))(*v4, a1, *(v2 + 8) + ((a2 + 1404) ^ 0xA93242BF));
  *v2 = v6;
  *(v2 + 8) = v5;
  *(v2 + 12) = v5;
  return result;
}

uint64_t sub_1969FAB28(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20)
{
  v26 = v21 ^ 0x4FC6DA14;
  *(v25 - 108) = v20;
  v27 = (v23 + v20);
  v174 = v20 | (1443 * (a8 ^ 0x1A22)) ^ 0xB42;
  v28 = (*(a13 + (v27[13] ^ 8)) ^ v27[13] ^ ((v27[13] ^ (((2 * a8) ^ 0x24) - 124)) - 65)) << 16;
  v29 = *(a16 + (v27[11] ^ 0x17));
  v30 = *(a16 + (v27[15] ^ 0xF9));
  v31 = ((*(a14 + (*v27 ^ 0x71)) + 74) ^ 8) << 24;
  v32 = *(a15 + (v27[6] ^ 0x78));
  v33 = (((((v32 ^ (v32 >> 1) & 0x36) ^ 6) << 8) + 1515016549 - (((v32 ^ (v32 >> 1) & 0x36) << 9) & 0xA200)) ^ 0x5A4D5165) + (((*(a14 + (*(v23 + v174) ^ 0x8ALL)) + 74) ^ 0xC9) << 24);
  v34 = (((v31 ^ 0xF9FFFFFF) & ((((*(a15 + (v27[2] ^ 0xEELL)) >> 1) & 0x36 ^ *(a15 + (v27[2] ^ 0xEELL))) << 8) ^ 0x9E2FA700) & 0xAD00A3F5 | v31 & 0x21000000 | *(a16 + (v27[3] ^ 0xD6)) & 0xF5) ^ 0xC259CE41) & (((v31 ^ 0xF9FFFFFF) & ((((*(a15 + (v27[2] ^ 0xEELL)) >> 1) & 0x36 ^ *(a15 + (v27[2] ^ 0xEELL))) << 8) ^ 0x9E2FA700) & 0x52005C0A | v31 & 0x40000000 | *(a16 + (v27[3] ^ 0xD6)) & 0xA) ^ 0xEDDFB3F5) | (v31 ^ 0xF9FFFFFF) & ((((*(a15 + (v27[2] ^ 0xEELL)) >> 1) & 0x36 ^ *(a15 + (v27[2] ^ 0xEELL))) << 8) ^ 0x9E2FA700) & 0x1000100A | *(a16 + (v27[3] ^ 0xD6)) & 0xA;
  v35 = ((*(a15 + (v27[14] ^ 0x5ELL)) >> 1) & 0x36 ^ *(a15 + (v27[14] ^ 0x5ELL))) << 8;
  v36 = (v35 ^ 0xFFFFCAFF) & ((v30 & 0x77777777 | ((((((*(a14 + (v27[12] ^ 0xB9)) + 74) ^ 0xE9) << 24) ^ 0x5C5E0057) & (v28 ^ 0xFF670057) | v28 & 0xA10000) ^ 0xEA9348DF) & (v30 ^ 0xFFFF7CBF)) ^ 0x2C2DAE42);
  v37 = v35 & 0x1900;
  v38 = v33 + *(a16 + (v27[7] ^ 0x35));
  v39 = (((v27[5] ^ 0xE8) - 65) ^ v27[5] ^ *(a13 + (v27[5] ^ 8))) << 16;
  v173 = v27[1];
  v40 = (((v27[9] ^ 0x4B) - 65) ^ v27[9] ^ 0x4B ^ *(a13 + (v27[9] ^ 0xABLL))) << 16;
  v41 = (v40 & 0x40440044 | 0x400D402) ^ a7 ^ 0xAA9E2780 ^ ((((((*(a15 + (v27[10] ^ 0xE7)) >> 1) & 0x36 ^ *(a15 + (v27[10] ^ 0xE7))) << 8) ^ 0x3FB8472C) & (v29 ^ 0x3FF9FF7E) & 0x3E28E3EF | v29 & 0xC3) ^ 0xCC06DE79 ^ ((((((*(a15 + (v27[10] ^ 0xE7)) >> 1) & 0x36 ^ *(a15 + (v27[10] ^ 0xE7))) << 8) ^ 0x3FB8472C) & (v29 ^ 0x3FF9FF7E) | v29 & 0xD3) ^ 0xC0050410) & ((((*(a14 + (v27[8] & 0xFD ^ 0xFB ^ (v27[8] & 2 | 0xCCu))) + 74) ^ 0xC9) << 24) ^ 0xDB951C10)) & (v40 ^ 0xFF19FFFF);
  v42 = ((v39 & 0x750000 ^ v38 & 0xCB75C8DB ^ 0x7E8A7725) & (v38 & 0x348A3724 ^ v39 & 0x8A0000 ^ 0x5EB347BD) | (v39 & 0x750000 ^ v38 & 0xCB75C8DB) & 0x81448842) ^ a3 ^ 0xDAD55EA5;
  v43 = ((((v173 ^ 0xC0 ^ ((v173 ^ 0xC0) - 65) ^ *(a13 + (v173 ^ 0x20))) << 16) ^ 0xD39E20DD) & (v34 ^ 0xA0A6BC42) | v34 & 0x2C00DF22) ^ a1 ^ 0xC8AE412E;
  v44 = v26 ^ v37 ^ 0xB5CFA66F ^ v36;
  v45 = HIBYTE(v44);
  v46 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (a8 ^ 0x1A14));
  v47 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a8 - 6682) - 12;
  v48 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a8 - 6186);
  v49 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (a8 ^ 0x1A0A)) - 4;
  v50 = (*&v47[4 * (HIBYTE(v43) ^ 0xA6)] + v22) ^ *(v48 + 4 * ((v26 ^ v37) ^ 0x6Fu ^ v36)) ^ *&v49[4 * (BYTE1(v41) ^ 0xE5)] ^ *(v46 + 4 * (BYTE2(v42) ^ 0x24u));
  v51 = v50 ^ (v41 >> 8);
  v52 = BYTE1(v44) ^ 0xD1682052 ^ *&v49[4 * (BYTE1(v44) ^ v24)];
  v53 = (*&v47[4 * (HIBYTE(v42) ^ 0xC5)] + v22) ^ *(v46 + 4 * (BYTE2(v41) ^ 0xE6u)) ^ 0x3B74A8B8;
  v54 = ((-v53 ^ 0xBFEED617 ^ (v52 - (v53 ^ v52)) ^ (v53 - 1074866665 - ((2 * v53) & 0x7FDDAC2E))) + v52) ^ __ROR4__(__ROR4__(*(v48 + 4 * (v43 ^ 0x83u)), 21) ^ 0x9F4E4A3B, 11);
  v55 = BYTE1(v43) ^ 0xD16820E1 ^ *&v49[4 * (BYTE1(v43) ^ 0x69)];
  v56 = (*&v47[4 * (HIBYTE(v41) ^ 0x5C)] + v22) ^ *(v46 + 4 * BYTE2(v44)) ^ 0x3B74A8B8;
  v57 = ((-v56 ^ 0x206F280A ^ (v56 + 544155658 - ((2 * v56) & 0x40DE5014)) ^ (v55 - (v56 ^ v55))) + v55) ^ *(v48 + 4 * (v42 ^ 0xDCu));
  v58 = BYTE1(v42) ^ 0x1F27E95B ^ (*&v47[4 * v45] + v22) ^ *(v46 + 4 * (BYTE2(v43) ^ 0xE0u)) ^ *(v48 + 4 * (v41 ^ 0x3Fu)) ^ *&v49[4 * (BYTE1(v42) ^ 0x83)];
  if ((v58 & 0x1000000) != 0)
  {
    v59 = -16777216;
  }

  else
  {
    v59 = 0x1000000;
  }

  v60 = (v59 + v58) ^ 0xCA088F2D;
  v61 = HIBYTE(v60);
  v62 = (*&v47[4 * (HIBYTE(v50) ^ 0x5F)] + v22) ^ *&v49[4 * (BYTE1(v57) ^ 0x64)] ^ *(v48 + 4 * (v60 ^ 7u)) ^ *(v46 + 4 * (BYTE2(v54) ^ 0x80u));
  v63 = (v47[4 * (HIBYTE(v50) ^ 0x5F)] + v22) ^ v49[4 * (BYTE1(v57) ^ 0x64)] ^ *(v48 + 4 * (v60 ^ 7u)) ^ *(v46 + 4 * (BYTE2(v54) ^ 0x80u)) ^ BYTE1(v57);
  v64 = (*&v47[4 * (HIBYTE(v54) ^ 0x38)] + v22) ^ *(v46 + 4 * (BYTE2(v57) ^ 0xF9u)) ^ *&v49[4 * (BYTE1(v60) ^ v24)] ^ *(v48 + 4 * (v51 ^ 0x4Bu));
  v65 = v64 ^ BYTE1(v60);
  v66 = *&v47[4 * (HIBYTE(v57) ^ 0xA8)] + v22;
  v67 = *&v49[4 * (BYTE1(v50) ^ 0x16)] ^ ((BYTE1(v50) ^ 0xCC) - 781705136 + ((v50 >> 7) & 0xA4 ^ 0xFFFFFF7F) + 3) ^ *(v48 + 4 * (v54 ^ 0xB6u)) ^ ((*(v46 + 4 * BYTE2(v60)) ^ 0x3B74A8B8 ^ ((*(v46 + 4 * BYTE2(v60)) ^ 0xC48B5747) + 1) ^ (v66 - (*(v46 + 4 * BYTE2(v60)) ^ 0x3B74A8B8 ^ v66))) + v66);
  v68 = (*&v47[4 * v61] + v22) ^ *(v46 + 4 * (BYTE2(v50) ^ 0xE8u)) ^ *(v48 + 4 * (v57 ^ 0x6Cu)) ^ *&v49[4 * (BYTE1(v54) ^ 0x8E)];
  v69 = *&v49[4 * (BYTE1(v67) ^ 0x94)];
  v70 = (*&v47[4 * (v24 ^ HIBYTE(v62))] + v22) ^ *(v46 + 4 * (BYTE2(v64) ^ 0x5Au)) ^ *(v48 + 4 * ((v68 ^ BYTE1(v54)) ^ 0x37u)) ^ ((BYTE1(v67) ^ 0xD168201C) + v69 - 2 * ((BYTE1(v67) ^ 0xD168201C) & v69));
  v71 = BYTE1(v62);
  v72 = *(v48 + 4 * (v65 ^ 0xCDu));
  v73 = *(v46 + 4 * (BYTE2(v67) ^ 0x2Fu)) ^ BYTE1(v68) ^ (*&v47[4 * (HIBYTE(v64) ^ 0x3C)] + v22) ^ *&v49[4 * (BYTE1(v68) ^ 0x24)] ^ *(v48 + 4 * (v63 ^ 0x4Au));
  if ((v72 & 0x20000000) != 0)
  {
    v74 = -536870912;
  }

  else
  {
    v74 = 0x20000000;
  }

  HIDWORD(v75) = v72;
  LODWORD(v75) = v74 + v72;
  v76 = *(v46 + 4 * (BYTE2(v68) ^ 0x90u)) ^ *&v49[4 * (BYTE1(v62) ^ 0x1F)] ^ (*&v47[4 * (HIBYTE(v67) ^ 0xE7)] + v22) ^ __ROR4__((v75 >> 28) ^ 0xB58EE473, 4);
  v77 = (*&v47[4 * (HIBYTE(v68) ^ 0xAA)] + v22) ^ *(v46 + 4 * (BYTE2(v62) ^ 0x39u)) ^ *&v49[4 * (BYTE1(v64) ^ 0x74)] ^ *(v48 + 4 * (v67 ^ 0xDu));
  v78 = BYTE1(v62) ^ 0x1DC0EC4B ^ v76;
  v79 = BYTE1(v73) ^ 0x9A;
  v80 = (v73 ^ 0x8A279A7B) >> 8;
  v81 = (*&v47[4 * (HIBYTE(v70) ^ 0x14)] + v22) ^ *(v46 + 4 * ((v73 ^ 0x8A279A7B) >> 16)) ^ *(v48 + 4 * ((v77 ^ BYTE1(v64)) ^ 0xA8u)) ^ *&v49[4 * (BYTE1(v78) ^ v24)];
  v82 = v81 ^ BYTE1(v78);
  v83 = *&v49[4 * (BYTE1(v77) ^ 0x78)] ^ (*&v47[4 * ((v73 ^ 0x8A279A7B) >> 24)] + v22) ^ *(v48 + 4 * (v70 ^ 0xB1u)) ^ *(v46 + 4 * BYTE2(v78));
  v84 = *(v46 + 4 * (BYTE2(v77) ^ 0x84u)) ^ (((v70 >> 8) & 0xFC ^ 0xAB066336) & ((v70 >> 8) & 3 ^ 0xAB0663FD) | (v70 >> 8) & 1) ^ *&v49[4 * (BYTE1(v70) ^ 0x90)] ^ *(v48 + 4 * (v73 ^ 0x7Cu)) ^ (*&v47[4 * (HIBYTE(v76) ^ 0xEF)] + v22);
  v85 = BYTE1(v77) ^ 0xF9B33D1D ^ v83;
  v86 = *(v46 + 4 * (BYTE2(v70) ^ 0x99u)) ^ *&v49[4 * (v79 ^ v24)] ^ (*&v47[4 * (HIBYTE(v77) ^ 0x2D)] + v22) ^ *(v48 + 4 * (v71 ^ 0x4Bu ^ v76));
  v87 = *&v49[4 * (BYTE1(v84) ^ 0xD8)];
  v88 = *(v46 + 4 * BYTE2(v85)) ^ *(v48 + 4 * ((v86 ^ v80) ^ 0x70u)) ^ (*&v47[4 * (HIBYTE(v81) ^ 0xF2)] + v22) ^ ((-v87 ^ 0x1C445CC5 ^ ((BYTE1(v84) ^ 0xD1682050) - (BYTE1(v84) ^ 0xD1682050 ^ v87)) ^ (v87 + 474242245 - ((2 * v87) & 0x3888B98A))) + (BYTE1(v84) ^ 0xD1682050));
  v89 = *(v46 + 4 * (BYTE2(v84) ^ 0xA1u)) ^ (*&v47[4 * (HIBYTE(v83) ^ 0xB)] + v22) ^ *&v49[4 * (BYTE1(v86) ^ 0x47)] ^ *(v48 + 4 * (v82 ^ 0x91u));
  v90 = v89 ^ BYTE1(v86);
  v91 = (*&v47[4 * (HIBYTE(v84) ^ 0x27)] + v22) ^ *(v46 + 4 * (BYTE2(v86) ^ 0xAFu)) ^ *&v49[4 * (BYTE1(v81) ^ 0x23)] ^ *(v48 + 4 * (BYTE1(v77) ^ 0x1Du ^ v83));
  v92 = v91 ^ BYTE1(v81);
  v93 = *(v48 + 4 * (v84 ^ 0xA4u));
  v94 = v88 ^ 0xAC2123B4;
  v95 = *(v46 + 4 * (BYTE2(v81) ^ 0x18u)) ^ BYTE1(v85) ^ (*&v47[4 * (HIBYTE(v86) ^ 0xD2)] + v22) ^ *&v49[4 * (BYTE1(v85) ^ v24)] ^ v93;
  v96 = v95 ^ 0xA97E9C5F;
  v97 = *&v47[4 * (HIBYTE(v88) ^ 0x5E)] + v22;
  v98 = *(v46 + 4 * ((v90 ^ 0x5766068u) >> 16)) ^ 0x3B74A8B8;
  v99 = *&v49[4 * (((v92 ^ 0x5F7A) >> 8) ^ v24)] ^ *(v48 + 4 * (v95 ^ 0x58u)) ^ (v98 + v97 - 2 * (v98 & v97));
  v100 = *&v47[4 * (HIBYTE(v89) ^ 0xF7)];
  v101 = *(v46 + 4 * ((v95 ^ 0xA97E9C5F) >> 16)) ^ BYTE1(v94) ^ (*&v47[4 * (HIBYTE(v91) ^ 8)] + v22) ^ *(v48 + 4 * (v90 ^ 0x6Fu)) ^ *&v49[4 * (BYTE1(v94) ^ v24)];
  v102 = ((v90 ^ 0x6068) >> 8) ^ 0xD1682052;
  v103 = *&v49[4 * (((v90 ^ 0x6068) >> 8) ^ v24)];
  v104 = v102 & 0x40;
  if ((v103 & v102 & 0x40) != 0)
  {
    v104 = -v104;
  }

  v105 = *(v46 + 4 * (BYTE2(v92) ^ 0x5Du)) ^ (v100 + v22);
  v106 = ((v92 ^ 0x5F7A) >> 8) ^ 0x8844616E ^ v99;
  v107 = v105 ^ BYTE1(v96) ^ *&v49[4 * (BYTE1(v96) ^ v24)] ^ *(v48 + 4 * (v88 ^ 0xB3u)) ^ 0xC5CAF788;
  v108 = *(v46 + 4 * BYTE2(v94)) ^ v102 & 0xD16820BF ^ (*&v47[4 * HIBYTE(v96)] + v22) ^ *(v48 + 4 * (v92 ^ 0x7Du)) ^ (v104 + v103);
  LOBYTE(v124) = v101 ^ 0xA7;
  v109 = BYTE1(v108) ^ 0x14;
  v110 = *&v47[4 * (HIBYTE(v99) ^ 0x7A)] + v22;
  v111 = ((v101 ^ 0xF6A7) >> 8);
  v112 = *(v46 + 4 * BYTE2(v107)) ^ 0x3B74A8B8;
  v113 = ((v101 ^ 0x4C1BF6A7) >> 16) % 0x56u;
  v114 = v110 & v112 ^ *&v49[4 * (v111 ^ v24)] ^ (v110 | v112) ^ *(v48 + 4 * (v108 ^ 6u));
  v115 = ((((v101 ^ 0x4C1BF6A7) >> 16) - v113) ^ v113) + 2 * ((((v101 ^ 0x4C1BF6A7) >> 16) - v113) & v113);
  v116 = *(v46 + 4 * ((v108 ^ 0x47811401) >> 16)) ^ BYTE1(v106) ^ (*&v47[4 * (HIBYTE(v101) ^ 0xBE)] + v22) ^ *&v49[4 * (BYTE1(v106) ^ v24)];
  v117 = v114 ^ v111;
  v118 = *(v46 + 4 * v115);
  v119 = (*(v48 + 4 * v107) ^ 0xF53B61E8 ^ -(*(v48 + 4 * v107) ^ 0xF53B61E8) ^ ((v116 ^ 0xEA1C88EA) + (*(v48 + 4 * v107) ^ 0x1F27E902 ^ v116) - 2 * (*(v48 + 4 * v107) ^ 0x1F27E902 ^ v116))) + (v116 ^ 0xEA1C88EA);
  v120 = *&v47[4 * (HIBYTE(v108) ^ 0xB5)];
  v121 = v109;
  v122 = *(v46 + 4 * BYTE2(v106)) ^ 0x3B74A8B8 ^ (((2 * v120) & 0xB3034DE) + (v120 ^ v22));
  v123 = *(v48 + 4 * v106);
  v124 = v124;
  if (!(((v117 ^ 0x245341BA) + 1916040468) | v117 ^ 0x245341BA))
  {
    v124 = v122;
  }

  v125 = BYTE1(v107);
  v126 = *&v49[4 * (BYTE1(v107) ^ v24)];
  v127 = (*&v47[4 * HIBYTE(v107)] + v22) ^ *&v49[4 * (v121 ^ v24)] ^ v121 ^ v123 ^ 0x15CBF90E ^ v118;
  v128 = BYTE1(v119) ^ 0xB8;
  v129 = v126 ^ v125 ^ v122 ^ *(v48 + 4 * (v124 ^ 7u));
  v130 = ((*&v47[4 * HIBYTE(v127)] + v22) ^ *(v46 + 4 * ((v119 ^ 0x357BB800) >> 16)) ^ 0xEA1C88EA ^ ((v129 ^ 0x9342) >> 8) ^ *(v48 + 4 * (v117 ^ 0x95u)) ^ *&v49[4 * (((v129 ^ 0x9342) >> 8) ^ v24)]) + 824103333;
  v131 = ((2 * v130) & 0x9DC25CB6) + (v130 ^ 0xCEE12E5B);
  v132 = (*&v47[4 * (HIBYTE(v119) ^ 0xC7)] + v22) ^ *&v49[4 * (((v117 ^ 0xF892) >> 8) ^ v24)] ^ *(v48 + 4 * (v127 ^ 7u)) ^ *(v46 + 4 * ((v129 ^ 0xF44D9342) >> 16));
  v133 = v132 ^ ((v117 ^ 0xF892) >> 8);
  v134 = *(v46 + 4 * BYTE2(v127)) ^ (*&v47[4 * (HIBYTE(v114) ^ 0x98)] + v22) ^ *&v49[4 * (((v119 ^ 0xB800) >> 8) ^ v24)] ^ 0x4BFBE9D9 ^ *(v48 + 4 * (v129 ^ 0x45u));
  v135 = *(v46 + 4 * ((v117 ^ 0x6AF9F892u) >> 16)) ^ BYTE1(v127) ^ *&v49[4 * (BYTE1(v127) ^ v24)] ^ *(v48 + 4 * (v119 ^ 7u)) ^ (*&v47[4 * ((v129 ^ 0xF44D9342) >> 24)] + v22);
  v136 = BYTE1(v135) ^ 0x24;
  v137 = *(v46 + 4 * ((v131 ^ 0x35A0C691) >> 16)) ^ (*&v47[4 * HIBYTE(v134)] + v22) ^ ((v133 ^ 0x41D2) >> 8) ^ *&v49[4 * (((v133 ^ 0x41D2) >> 8) ^ v24)] ^ *(v48 + 4 * (v135 ^ 0x84u));
  v138 = HIWORD(v77);
  v139 = *(v46 + 4 * ((v133 ^ 0x746C41D2u) >> 16)) ^ *&v49[4 * (((v135 ^ 0x2483) >> 8) ^ v24)] ^ *(v48 + 4 * (v134 ^ v128)) ^ (*&v47[4 * (HIBYTE(v131) ^ 0xC7)] + v22);
  v140 = ((v131 ^ 0xC691) >> 8);
  v141 = *(v46 + 4 * ((v135 ^ 0xC8D92483) >> 16)) ^ (*&v47[4 * (HIBYTE(v132) ^ 0x86)] + v22) ^ *&v49[4 * (BYTE1(v134) ^ v24)] ^ *(v48 + 4 * ((((2 * v130) & 0xB6) + (v130 ^ 0x5B)) ^ 0x96u));
  v142 = *(v46 + 4 * BYTE2(v134)) ^ (*&v47[4 * (HIBYTE(v135) ^ 0x3A)] + v22) ^ *&v49[4 * (v140 ^ v24)];
  v143 = *(v48 + 4 * (v133 ^ 0xD5u));
  v144 = v140 ^ 0xEA1C88EA ^ v142;
  if ((v143 & 0x800000 & v142) != 0)
  {
    v145 = -(v143 & 0x800000);
  }

  else
  {
    v145 = v143 & 0x800000;
  }

  v146 = (v145 + v144) ^ v143 & 0xFF7FFFFF;
  v147 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a8 - 6679) - 12;
  v148 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a8 - 6264) - 8;
  v149 = *&v148[4 * (BYTE2(v139) ^ 0x8F)] ^ 0x6C56D810;
  v150 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (a8 ^ 0x1A82));
  v151 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a8 - 6252) - 12;
  v152 = v149 ^ *&v147[4 * (HIBYTE(v137) ^ 0xFD)] ^ (*(v150 + 4 * (BYTE1(v141) ^ 0x2Du)) - 1204411238) ^ (v149 >> 1) & 0x2770D721 ^ *&v151[4 * (v146 ^ 0x94)];
  v153 = *&v148[4 * (BYTE2(v141) ^ 0x6F)] ^ 0x6C56D810;
  v154 = v153 ^ *&v147[4 * (HIBYTE(v139) ^ 0xA3)] ^ (v153 >> 1) & 0x2770D721 ^ *&v151[4 * (v137 ^ 0xFF)];
  v155 = *&v148[4 * (((v146 ^ 0x24E7E49C) >> (v138 & 0x10) >> (v138 & 0x10 ^ 0x10)) ^ 0xC1)] ^ 0x6C56D810;
  v156 = *(v150 + 4 * (BYTE1(v146) ^ 0xDFu)) - 1204411238;
  v157 = v155 ^ *&v147[4 * (HIBYTE(v141) ^ 0x56)] ^ (*(v150 + 4 * (BYTE1(v137) ^ 0x22u)) - 1204411238) ^ (v155 >> 1) & 0x2770D721 ^ *&v151[4 * ((v139 ^ v136) ^ 0x2F)];
  v158 = *&v147[4 * (HIBYTE(v146) ^ 0xF5)];
  LODWORD(v147) = *&v148[4 * (BYTE2(v137) ^ 0xBF)];
  v159 = *&v151[4 * ((v141 ^ BYTE1(v134)) ^ 0x56)] ^ (*(v150 + 4 * (BYTE1(v139) ^ 0x32u)) - 1204411238) ^ (v147 ^ 0x6C56D810 ^ v158) & 0xFFFFDFFF ^ (((v147 ^ 0x6C56D810) >> 1) & 0x2770D721 | (v147 ^ 0x6C56D810 ^ v158) & 0x2000);
  v160 = (((BYTE3(v157) ^ 0x44) - (BYTE3(v157) ^ 0x50)) ^ 0xFFFFFFF8) + (BYTE3(v157) ^ 0x44);
  v161 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a8 - 6332) - 8;
  v27[8] = v161[v160 ^ 0xF4] ^ v160 ^ 0xAA;
  v162 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (a8 ^ 0x1B9C)) - 8;
  LODWORD(v147) = v162[v159 ^ 0x82] ^ 0x48;
  LODWORD(v160) = v162[v159 ^ 0x82] ^ 0x48 ^ (v147 >> 6) ^ (v147 >> 2);
  v27[15] = (((((v160 >> 4) | (16 * v160)) ^ 0x92) >> 4) | (16 * (((v160 >> 4) | (16 * v160)) ^ 0x92))) ^ 0xA5;
  v163 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (a8 ^ 0x1BAA)) - 8;
  v27[2] = v163[BYTE1(v152) ^ 0x96] ^ 0xEA;
  v164 = v154 ^ v156;
  *v27 = BYTE3(v152) ^ 0x52 ^ v161[BYTE3(v152) ^ 0x63];
  v165 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + a8 - 6112) - 12;
  v27[5] = v165[BYTE2(v164) ^ 0x8ELL] ^ (v165[BYTE2(v164) ^ 0x8ELL] >> 2) & 0x2E ^ 0xC3;
  LODWORD(v160) = v162[v164 ^ 0x98];
  v27[7] = (v160 ^ 0xEF) & 0xC0 | ((v160 ^ 0x48 ^ (((v160 ^ 0x48) & 0xC0) >> 4) ^ (4 * (v160 ^ 0xEF))) >> 2);
  v27[6] = v163[BYTE1(v164) ^ 0x31] ^ 0xC8;
  v27[13] = v165[BYTE2(v159) ^ 0x43] ^ 0xA1 ^ (v165[BYTE2(v159) ^ 0x43] >> 2) & 0x2E;
  LOBYTE(v160) = v162[v152 ^ 0xB6];
  LOBYTE(v156) = v160 ^ 0x48;
  v166 = v160 ^ 0x48;
  LOBYTE(v160) = v160 ^ 0xBE;
  LOBYTE(v156) = (v156 >> 6) ^ (v166 >> 2);
  v167 = (BYTE1(v157) ^ 0x5E) - ((2 * (BYTE1(v157) ^ 0x5E)) & 0x174u);
  v168 = v156 & 0x1E ^ (v160 & 0x9E);
  v169 = *(v25 - 108);
  v27[3] = v156 & 0xE1 ^ v160 & 0x61 | v156 & 0x1E ^ v160 & 0x9E;
  v27[10] = v163[(v167 + 186)] ^ 0x86;
  v27[12] = HIBYTE(v159) ^ 0x84 ^ v161[HIBYTE(v159) ^ 0x24];
  v27[1] = v165[BYTE2(v152) ^ 0xEFLL] ^ 0x69 ^ (v165[BYTE2(v152) ^ 0xEFLL] >> 2) & 0x2E;
  v27[14] = v163[BYTE1(v159) ^ 0x92] ^ 0x72;
  *(a19 + v174) = BYTE3(v164) ^ 0xE5 ^ v161[BYTE3(v164) ^ 0x41];
  v170 = v165[BYTE2(v157) ^ 0x82];
  v171 = v170 ^ 0x34;
  if (v173 == 192)
  {
    v171 = 75;
  }

  v27[9] = (v170 - 2 * (v171 & v170) + 75) ^ ((v170 - 2 * (v171 & v170) + 75) >> 2) & 0x2E ^ 1;
  v27[11] = v162[v157 ^ 0xFDLL] ^ ((v162[v157 ^ 0xFDLL] ^ 0x48) >> 6) ^ ((v162[v157 ^ 0xFDLL] ^ 0x48) >> 2) ^ 0xBB;
  return (*(a20 + 8 * ((204 * (((v169 + 16) ^ a18) != -1407945448)) ^ (a8 - 3265))))(v152, v163, v164, 134, v167, v168, v157, a8, a9, a10, a11, a12, a13, a14);
}

void sub_1969FB0B8(int a1@<W8>, uint64_t a2, int a3, unsigned int a4, uint64_t a5, int a6)
{
  v9 = (((&a3 | 0x7FA9972F) + (~&a3 | 0x805668D0)) ^ 0x30719419) * v6;
  a3 = v9 + a1;
  a4 = v9 + 436188070;
  a6 = v7 - v9 - 2195;
  a5 = 0;
  (*(v8 + 8 * (v7 + 3450)))(&a3);
  JUMPOUT(0x196A113B8);
}

uint64_t sub_1969FB18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = LOWORD(STACK[0x86C]);
  if (v13 == 26075)
  {
    v15 = STACK[0x598];
    STACK[0x708] = v8;
    LODWORD(STACK[0x4B8]) = v11;
    return (*(a6 + 8 * (((v15 + v9 == 0) * (((a8 + 730465546) & 0xD475EDF8) - 2396)) ^ (a8 - 1101))))();
  }

  else
  {
    if (v13 == 45445 || (v14 = a8, v13 == 41591))
    {
      STACK[0x708] = v8;
      v10 = 1906239355;
      v14 = a8;
    }

    *STACK[0x380] = 0;
    LODWORD(STACK[0x4B8]) = -1720256293;
    return (*(a6 + 8 * ((((((((v14 - 1948217201) & 0x741F5BB7) - 291) | 0x46A) + 4187) ^ (((v14 - 1948217201) & 0x741F5BB7) + 5049)) * (v10 != v12)) ^ (v14 - 1948217201) & 0x741F5BB7)))();
  }
}

uint64_t sub_1969FB2D0()
{
  result = v1;
  *(v1 + 24) = v2;
  return result;
}

void fp_dh_c60b89969c70fdc0929d1227b6edc64c(uint64_t a1)
{
  v1 = 1825732043 * (((a1 | 0x65EE05ED) - a1 + (a1 & 0x9A11FA12)) ^ 0x657856DA);
  __asm { BRAA            X12, X17 }
}

void sub_1969FB4E8(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x196A028B4);
}

void sub_1969FB544()
{
  LODWORD(STACK[0x3D0]) = -1720256289;
  STACK[0x410] = STACK[0x8B8] + 24;
  LODWORD(STACK[0x340]) = LODWORD(STACK[0xA64]) ^ 0xD8C2E756;
  v0 = LOWORD(STACK[0xA5E]);
  LODWORD(STACK[0x3C0]) = v0;
  LODWORD(STACK[0x3A0]) = v0 ^ 0xFFFFB88F;
  STACK[0x400] = STACK[0x620] + 24;
  v1 = LOWORD(STACK[0xB3E]);
  LODWORD(STACK[0x3B0]) = v1;
  LODWORD(STACK[0x390]) = v1 ^ 0xFFFF9583;
  LODWORD(STACK[0x330]) = LODWORD(STACK[0xB44]) ^ 0xD8C2E756;
  STACK[0x3F0] = STACK[0x520] + 24;
  STACK[0x3E0] = STACK[0x8A0] + 24;
  v2 = STACK[0xA60];
  LODWORD(STACK[0x360]) = STACK[0xA60];
  LODWORD(STACK[0x380]) = v2 ^ 0xD8C2E756;
  v3 = STACK[0xB40];
  LODWORD(STACK[0x350]) = STACK[0xB40];
  LODWORD(STACK[0x370]) = v3 ^ 0xD8C2E756;
  JUMPOUT(0x1969B5B2CLL);
}

uint64_t sub_1969FB5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v26 = a23;
  *(v25 - 136) = a9 - 1575331711 * ((((v25 - 136) | 0x3B3FC089) - ((v25 - 136) & 0x3B3FC089)) ^ 0x5764558B) + 1403;
  v23[1] = v26;
  v23[2] = &a12;
  (*(v24 + 8 * (a9 ^ 0x19E8)))(v25 - 136);
  *v23 = a23;
  *(v25 - 124) = a9 - 489239129 * ((v25 - 136) ^ 0xB9282336) + 67;
  v27 = (*(v24 + 8 * (a9 + 5994)))(v25 - 136);
  return (*(v24 + 8 * ((7074 * (*(v25 - 128) == (((a9 + 26226947) | 0x56044B10) ^ 0x260BF3AD))) ^ a9)))(v27);
}

uint64_t sub_1969FB6A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v22 = v9 - v10 + v7;
  *&v23 = v22 - 15;
  *(&v23 + 1) = v22 - 16;
  *&STACK[0x390] = v23;
  *&v23 = v22 - 13;
  *(&v23 + 1) = v22 - 14;
  *&STACK[0x370] = v23;
  v24.i64[0] = v22 - 5;
  v24.i64[1] = v22 - 6;
  v25.i64[0] = v22 - 3;
  v25.i64[1] = v22 - 4;
  v26 = v9 - v10 - 1;
  v27.i64[0] = v7 + v26;
  v27.i64[1] = v22 - 2;
  v28.i64[0] = (a6 + 213) + v22 - 3619;
  v28.i64[1] = v22 - 8;
  v29 = *&STACK[0x340];
  v30 = vandq_s8(v28, *&STACK[0x340]);
  v31 = vandq_s8(v27, *&STACK[0x340]);
  v32 = vandq_s8(v25, *&STACK[0x340]);
  v33 = vandq_s8(v24, *&STACK[0x340]);
  v34 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v35 = vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL);
  v36 = vsraq_n_u64(vshlq_n_s64(v31, 0x38uLL), v31, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v30, 0x38uLL), v30, 8uLL);
  v38 = *&STACK[0x410];
  v39 = vaddq_s64(v36, *&STACK[0x410]);
  v40 = vaddq_s64(v35, *&STACK[0x410]);
  v42 = *&STACK[0x3F0];
  v41 = *&STACK[0x400];
  v43 = *&STACK[0x3E0];
  *&STACK[0x380] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3F0], v37), *&STACK[0x3E0]), vorrq_s8(vaddq_s64(v37, *&STACK[0x410]), *&STACK[0x400]));
  v44 = vaddq_s64(vorrq_s8(vsubq_s64(v42, v36), v43), vorrq_s8(v39, v41));
  v45 = vsubq_s64(v13, vaddq_s64(vorrq_s8(vsubq_s64(v42, v34), v43), vorrq_s8(vaddq_s64(v34, v38), v41)));
  v46 = vsubq_s64(v13, vaddq_s64(vorrq_s8(vsubq_s64(v42, v35), v43), vorrq_s8(v40, v41)));
  v47 = *&STACK[0x310];
  v48 = veorq_s8(v46, *&STACK[0x310]);
  v49 = veorq_s8(v45, *&STACK[0x310]);
  v50 = veorq_s8(v45, v16);
  v51 = veorq_s8(v46, v16);
  v52 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v51);
  v53 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v50);
  v55 = *&STACK[0x2E0];
  v54 = *&STACK[0x2F0];
  v56 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v53, v53), *&STACK[0x2F0]), v53), *&STACK[0x2E0]), v17);
  v57 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v52, v52), *&STACK[0x2F0]), v52), *&STACK[0x2E0]), v17);
  v58 = veorq_s8(v57, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v59 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL), v59);
  v61 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v57, 0x38uLL), v57, 8uLL), v58);
  v62 = *&STACK[0x230];
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v60, v18), vorrq_s8(v60, *&STACK[0x230])), *&STACK[0x230]), *&STACK[0x3D0]);
  v64 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v61, v18), vorrq_s8(v61, *&STACK[0x230])), *&STACK[0x230]), *&STACK[0x3D0]);
  v65 = *&STACK[0x3D0];
  v66 = vsraq_n_u64(vshlq_n_s64(v59, 3uLL), v59, 0x3DuLL);
  v67 = veorq_s8(v64, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v68 = veorq_s8(v63, v66);
  v69 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v68);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v67);
  v71 = *&STACK[0x2B0];
  v72 = *&STACK[0x3C0];
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), *&STACK[0x2B0]), v70), v21), *&STACK[0x3C0]);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v69, v69), *&STACK[0x2B0]), v69), v21), *&STACK[0x3C0]);
  v75 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v76 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v77 = veorq_s8(v73, v75);
  v78 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v79 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v77);
  v80 = vaddq_s64(v78, v76);
  v81 = *&STACK[0x3B0];
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v80, v80), *&STACK[0x3B0]), v80), v19), v20);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v79, v79), *&STACK[0x3B0]), v79), v19), v20);
  v84 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v85 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v86 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v85);
  v88 = veorq_s8(vaddq_s64(v86, v84), v12);
  v89 = veorq_s8(v87, v12);
  v90 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v91 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v92 = veorq_s8(v88, v90);
  v93 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v94 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v92);
  v95 = veorq_s8(vaddq_s64(v93, v91), v15);
  v96 = veorq_s8(v94, v15);
  v97.i64[0] = v22 - 11;
  v97.i64[1] = v22 - 12;
  *&STACK[0x350] = v97;
  v98 = vsubq_s64(v13, v44);
  v99 = *&STACK[0x330];
  v205.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL))), v14), vnegq_s64(vandq_s8(vshlq_n_s64(v24, 3uLL), *&STACK[0x330])));
  v205.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL))), v14), vnegq_s64(vandq_s8(vshlq_n_s64(v25, 3uLL), *&STACK[0x330])));
  v100 = veorq_s8(v98, v47);
  v101 = veorq_s8(v98, v16);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v102, v102), v54), v102), v55), v17);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v105, v18), vorrq_s8(v105, v62)), v62), v65);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v108, v108), v71), v108), v21), v72);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v111, v111), v81), v111), v19), v20);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113), v12);
  v115 = veorq_s8(v114, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v115), v15);
  v91.i64[0] = v22 - 9;
  v91.i64[1] = v22 - 10;
  *&STACK[0x360] = v91;
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL)));
  v118 = vandq_s8(v91, v29);
  v119 = vsubq_s64(v13, *&STACK[0x380]);
  v205.val[0] = vshlq_u64(veorq_s8(v117, v14), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v99)));
  v120 = veorq_s8(v119, v47);
  v121 = veorq_s8(v119, v16);
  v122 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121);
  v123 = v55;
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v122, v122), v54), v122), v55), v17);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v126, v18), vorrq_s8(v126, v62)), v62), v65);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v130 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v129, v129), v71), v129), v21), v72);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v132, v132), v81), v132), v19), v20);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134), v12);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136), v15);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v139 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v140 = vandq_s8(v97, v29);
  v141 = vaddq_s64(v139, v138);
  v142 = *&STACK[0x370];
  v143 = vandq_s8(*&STACK[0x370], v29);
  v205.val[3] = vshlq_u64(veorq_s8(v141, v14), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v99)));
  v144 = *&STACK[0x390];
  v145 = vandq_s8(*&STACK[0x390], v29);
  v146 = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL);
  v148 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v149 = vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL);
  v150 = *&STACK[0x410];
  v152 = *&STACK[0x3F0];
  v151 = *&STACK[0x400];
  v153 = *&STACK[0x3E0];
  *&STACK[0x380] = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3F0], v149), *&STACK[0x3E0]), vorrq_s8(vaddq_s64(v149, *&STACK[0x410]), *&STACK[0x400]));
  v154 = vsubq_s64(v13, vaddq_s64(vorrq_s8(vsubq_s64(v152, v146), v153), vorrq_s8(vaddq_s64(v146, v150), v151)));
  v155 = vsubq_s64(v13, vaddq_s64(vorrq_s8(vsubq_s64(v152, v147), v153), vorrq_s8(vaddq_s64(v147, v150), v151)));
  v118.i64[0] = vqtbl4q_s8(v205, *&STACK[0x250]).u64[0];
  v205.val[0] = veorq_s8(v155, v47);
  v205.val[1] = veorq_s8(v154, v47);
  v205.val[2] = veorq_s8(v154, v16);
  v205.val[3] = veorq_s8(v155, v16);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL), v205.val[3]);
  v205.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[2]);
  v205.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v205.val[1], v205.val[1]), v54), v205.val[1]), v123), v17);
  v205.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v205.val[0], v205.val[0]), v54), v205.val[0]), v123), v17);
  v156 = vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL);
  v205.val[2] = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[3], 3uLL), v205.val[3], 0x3DuLL));
  v205.val[3] = veorq_s8(v205.val[1], v156);
  v157 = vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[3]);
  v205.val[1] = vaddq_s64(v157, v205.val[2]);
  v205.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v205.val[0], v18), vorrq_s8(v205.val[0], v62)), v62), *&STACK[0x3D0]);
  v205.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v205.val[1], v18), vorrq_s8(v205.val[1], v62)), v62), *&STACK[0x3D0]);
  v205.val[2] = veorq_s8(v205.val[1], vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL));
  v205.val[3] = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[3], 3uLL), v205.val[3], 0x3DuLL));
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL), v205.val[3]);
  v205.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[2]);
  v205.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v205.val[1], v205.val[1]), v71), v205.val[1]), v21), *&STACK[0x3C0]);
  v205.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v205.val[0], v205.val[0]), v71), v205.val[0]), v21), *&STACK[0x3C0]);
  v158 = vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL);
  v205.val[2] = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[3], 3uLL), v205.val[3], 0x3DuLL));
  v205.val[3] = veorq_s8(v205.val[1], v158);
  v159 = vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[3]);
  v205.val[1] = vaddq_s64(v159, v205.val[2]);
  v205.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v205.val[1], v205.val[1]), *&STACK[0x3B0]), v205.val[1]), *&STACK[0x3A0]), v20);
  v205.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v205.val[0], v205.val[0]), *&STACK[0x3B0]), v205.val[0]), *&STACK[0x3A0]), v20);
  v160 = vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL);
  v205.val[2] = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[3], 3uLL), v205.val[3], 0x3DuLL));
  v205.val[3] = veorq_s8(v205.val[1], v160);
  v161 = vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[3]);
  v205.val[1] = veorq_s8(vaddq_s64(v161, v205.val[2]), v12);
  v205.val[0] = veorq_s8(v205.val[0], v12);
  v162 = vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL);
  v205.val[2] = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[3], 3uLL), v205.val[3], 0x3DuLL));
  v205.val[3] = veorq_s8(v205.val[1], v162);
  v163 = vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL);
  v205.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), v205.val[3]);
  v205.val[1] = veorq_s8(vaddq_s64(v163, v205.val[2]), v15);
  v205.val[0] = veorq_s8(v205.val[0], v15);
  v164 = vsraq_n_u64(vshlq_n_s64(v205.val[2], 3uLL), v205.val[2], 0x3DuLL);
  v205.val[2] = veorq_s8(v205.val[0], vsraq_n_u64(vshlq_n_s64(v205.val[3], 3uLL), v205.val[3], 0x3DuLL));
  v165 = vsubq_s64(v13, vaddq_s64(vorrq_s8(vsubq_s64(v152, v148), v153), vorrq_s8(vaddq_s64(v148, v150), v151)));
  v205.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[1], 0x38uLL), v205.val[1], 8uLL), veorq_s8(v205.val[1], v164)), v14), vnegq_s64(vandq_s8(vshlq_n_s64(v144, 3uLL), v99)));
  v205.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205.val[0], 0x38uLL), v205.val[0], 8uLL), v205.val[2]), v14), vnegq_s64(vandq_s8(vshlq_n_s64(v142, 3uLL), v99)));
  v166 = veorq_s8(v165, v47);
  v167 = veorq_s8(v165, v16);
  v168 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v167);
  v169 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v168, v168), v54), v168), v123), v17);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v167, 3uLL), v167, 0x3DuLL));
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v171, v18), vorrq_s8(v171, v62)), v62), *&STACK[0x3D0]);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v174, v174), v71), v174), v21), *&STACK[0x3C0]);
  v176 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL));
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176);
  v178 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v177, v177), *&STACK[0x3B0]), v177), *&STACK[0x3A0]), v20);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v180 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179), v12);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v182 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181), v15);
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL)));
  v184 = vsubq_s64(v13, *&STACK[0x380]);
  v205.val[1] = vshlq_u64(veorq_s8(v183, v14), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x350], 3uLL), v99)));
  v185 = veorq_s8(v184, v47);
  v186 = veorq_s8(v184, v16);
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186);
  v188 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v187, v187), v54), v187), v123), v17);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189);
  v191 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v190, v18), vorrq_s8(v190, v62)), v62), *&STACK[0x3D0]);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v193 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192);
  v194 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v193, v193), v71), v193), v21), *&STACK[0x3C0]);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v196 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v195);
  v197 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v196, v196), *&STACK[0x3B0]), v196), *&STACK[0x3A0]), v20);
  v198 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v199 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v198), v12);
  v200 = veorq_s8(v199, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v201 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL), v200), v15);
  v205.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL))), v14), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x360], 3uLL), v99)));
  v118.i64[1] = vqtbl4q_s8(v205, *&STACK[0x250]).u64[0];
  v202 = vrev64q_s8(*(v6 + v26));
  v205.val[0].i64[0] = 0xECECECECECECECECLL;
  v205.val[0].i64[1] = 0xECECECECECECECECLL;
  v203 = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v202, v202, 8uLL), v205.val[0]), v118));
  *(v7 + v26 - 15) = vextq_s8(v203, v203, 8uLL);
  return (*(v11 + 8 * (((v10 + 16 == v9) * v8) ^ a6)))();
}

uint64_t sub_1969FC2B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v9 = a8 ^ 0xF4A;
  v10 = a8 ^ 0xEBF;
  *a1 = 0;
  a1[1] = 0;
  *(v8 + 8) = a1;
  v11 = (*(a6 + 8 * ((a8 ^ 0xF4A) + 374)))(16, 0x20040A4A59CD2);
  return (*(STACK[0x370] + 8 * (((v11 == 0) * (((v9 - 698) ^ 0xFFFFF1D1) + v10)) ^ v9)))();
}

uint64_t sub_1969FC334()
{
  v3 = STACK[0x628];
  STACK[0x790] = STACK[0x628];
  v4 = STACK[0x758];
  v5 = (((LODWORD(STACK[0x5CC]) ^ 0x8BA8E89E) + 1951864674) ^ ((LODWORD(STACK[0x5CC]) ^ 0xEFB57245) + 273321403) ^ ((((v0 + 2597) | 8) ^ LODWORD(STACK[0x5CC]) ^ 0xFD6B6C1C) + 43294208)) + 57936960;
  v6 = 753662761 * ((v2 - 1882258961 - 2 * ((v2 - 224) & 0x8FCF02CF)) ^ 0xEAD5F984);
  *(v2 - 200) = STACK[0x938];
  *(v2 - 192) = v3;
  *(v2 - 216) = v3;
  *(v2 - 176) = v4;
  *(v2 - 184) = (v0 + 1227) ^ v6;
  *(v2 - 224) = 1294227624 - v6;
  *(v2 - 220) = v5 ^ v6;
  v7 = (*(v1 + 8 * (v0 ^ 0x18A4)))(v2 - 224);
  return (*(v1 + 8 * ((3423 * (*(v2 - 208) == ((v0 + 2597) ^ 0x719F82E0))) ^ v0)))(v7);
}

uint64_t sub_1969FC630()
{
  v3 = STACK[0x970];
  STACK[0x430] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (((v3 == 0) * (((((v1 ^ 0x42F) - 826) | 0xC08) - 3263) ^ 0x166)) ^ v1 ^ 0x42F)))();
}

uint64_t sub_1969FC65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v13 = *(a1 + v5);
  v14 = v5 + a2;
  v15 = v5 - 1;
  *(v12 + v15) = *(a4 + v15) ^ *(v6 + v15) ^ (v15 * v7) ^ v13 ^ a3 ^ *(v14 + (v4 ^ v10) * v8 - 441);
  return (*(v11 + 8 * (((v15 == 0) * v9) ^ v4)))();
}

uint64_t sub_1969FC760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (((a9 ^ 0xF97FFF28) + 109045653 + v12) ^ ((a9 ^ 0xD2A123D6) + 761191466) ^ (((v13 - 1167382350) ^ a9) + 1167378989)) - 410362860;
  v16 = ((v15 ^ 0xA71109C2) + 221938907) ^ v15 ^ ((v15 ^ 0x576B12DF) - 46096440) ^ ((v15 ^ 0xD2518415) + 2021263630) ^ ((v15 ^ 0x77FFEDEF) - 573284104);
  v18 = v16 == (((v14 - 130) | 0x682) ^ 0x55D4756D) || (((v14 - 130) ^ 0x107) & v16) != 7;
  return (*(a2 + 8 * ((37 * v18) ^ v14)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12);
}

uint64_t sub_1969FC884(__n128 a1)
{
  v4[-1] = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

void sub_1969FC8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 96) - ((2 * *(a4 + 96)) & 0x4A) - 89);
  if (v6 == 166)
  {
    v10 = *(a4 + 64);
    v9 = *(a4 + 68);
    *(a4 + 56) = (v5 + 61 + 8 * (v9 - ((2 * v9) & 0x18)) - 20) ^ 0x8C;
    *(a4 + 57) = v4 ^ (v9 >> 5);
    *(a4 + 58) = v4 ^ (v9 >> 13);
    *(a4 + 59) = v4 ^ (v9 >> 21);
    *(a4 + 60) = ((__PAIR64__(v10, v9) >> 29) - ((2 * (__PAIR64__(v10, v9) >> 29)) & 0xAA) - 43) ^ 0x39;
    *(a4 + 61) = v4 ^ (v10 >> 5);
    *(a4 + 62) = v4 ^ (v10 >> 13);
    v8 = (v10 >> 21) ^ 0xFFFFFFEC;
  }

  else
  {
    if (v6 != 169)
    {
      goto LABEL_6;
    }

    v8 = *(a4 + 64);
    v7 = *(a4 + 68);
    *(a4 + 56) = v4 ^ (v8 >> 21);
    *(a4 + 57) = v4 ^ (v8 >> 13);
    *(a4 + 58) = v4 ^ (v8 >> 5);
    *(a4 + 59) = ((__PAIR64__(v8, v7) >> 29) + (((v5 + 45) | 0x10) ^ 0xEB) - 2 * (__PAIR64__(v8, v7) >> 29) - 32) ^ 0x93;
    *(a4 + 60) = v4 ^ (v7 >> 21);
    *(a4 + 61) = v4 ^ (v7 >> 13);
    *(a4 + 62) = v4 ^ (v7 >> 5);
    LOBYTE(v8) = (8 * (v7 - ((2 * v7) & 4)) - 112) ^ 0x7C;
  }

  *(a4 + 63) = v8;
LABEL_6:
  JUMPOUT(0x1969CE738);
}

uint64_t sub_1969FCA1C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x1EDA)))();
  STACK[0x788] = 0;
  return (STACK[0x7C0])(v2);
}

uint64_t sub_1969FCA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18)
{
  v21 = 1012216201 * ((-1022599485 - (&a13 | 0xC30C5EC3) + (&a13 | 0x3CF3A13C)) ^ 0xB85A29D0);
  a16 = a9;
  a17 = &a11;
  a13 = v21 ^ 0x80F33AA;
  a15 = v21 + 658859819;
  a18 = v21 + v20 - 1795305284;
  v22 = (*(v18 + 8 * (v20 + 4767)))(&a13);
  return (*(v18 + 8 * (((a14 == v19) * (((v20 - 997) | 0x44) + (v20 ^ 0x158F))) ^ v20)))(v22);
}

uint64_t sub_1969FCB20@<X0>(int a1@<W8>)
{
  v9 = v2 < v3;
  *(v6 + v4 + 24) = *(v5 + v4) ^ 0xEC;
  if (v9 == v4 + 1 > 0xBAA09236)
  {
    v9 = a1 + v4 + 3474 < v2;
  }

  return (*(v7 + 8 * ((v9 * (v1 + 4511)) ^ v8)))();
}

uint64_t sub_1969FCBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char a16)
{
  *(v20 - 144) = a11;
  *(v20 - 128) = &a14;
  *(v20 - 120) = a12;
  *(v20 - 136) = (v17 + 3569) ^ (1575331711 * ((((v20 - 144) | 0x14E3640E) - (v20 - 144) + ((v20 - 144) & 0xEB1C9BF0)) ^ 0x78B8F10C));
  *(v20 - 112) = &a14;
  (*(v19 + 8 * (v17 ^ 0x189F)))(v20 - 144);
  *(v20 - 128) = a11;
  *(v20 - 120) = &a14;
  *(v20 - 112) = &a16;
  *(v20 - 104) = a12;
  *(v20 - 144) = &a14;
  *(v20 - 136) = v17 + 1283153057 * ((~((v20 - 144) | 0x2FBC07F6) + ((v20 - 144) & 0x2FBC07F6)) ^ 0x9F9BFB3E) + 3553;
  v21 = (*(v19 + 8 * (v17 + 6208)))(v20 - 144);
  return (*(v19 + 8 * ((247 * (v18 + v17 + 595 - 1188 + ((v17 - 1714612176) & 0x6632FF9F) + ((v17 - 1090913104) & 0x41060FCEu) - 1516664616 > 0x7FFFFFFE)) ^ (v17 + 30))))(v21);
}

uint64_t sub_1969FCF48@<X0>(char a1@<W0>, uint64_t a2@<X3>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  *(a2 + v4 + a4) = *(a3 + v4);
  v7 = ((v5 + 315) ^ 0x687) + v4 == (a1 & 0x78);
  return (*(v6 + 8 * (((4 * v7) | (8 * v7)) ^ v5)))();
}

void fp_dh_bd5bc70e390364e04a386e950f9e336e(uint64_t a1)
{
  v1 = 998242381 * ((-2 - ((a1 | 0xDAE77CE3) + (~a1 | 0x2518831C))) ^ 0x8F771BCA);
  v2 = *(a1 + 20) ^ v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) - v1;
  v5 = (8 * (((v4 ^ 0x7BA2CC7D) + 369462888) ^ v4 ^ ((v4 ^ 0x184A5B36) + 367860013) ^ ((v4 ^ 0xE4BD5D1) + 65837004) ^ ((v4 ^ 0x1FFBFF7F) + 308067686))) ^ 0x92C5EF28;
  v6 = *(v3 + 16);
  v7 = *(v3 + 20) + __CFADD__(v5, v6) + (((((v4 ^ 0x7B25357) - 1441459890) ^ v4 ^ ((v4 ^ 0xEA40EE1C) + 1206365191) ^ ((v4 ^ 0xC655EF50) + 1811066188) ^ ((v4 ^ 0x79FFEFFE) - 732385818)) >> 29) ^ 2);
  *(v3 + 16) = v5 + v6;
  *(v3 + 20) = v7;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1969FD1DC@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(v2 + 24) = a2;
  *(result + 8) = 1906239529;
  return result;
}

uint64_t sub_1969FD1F0(__n128 a1, __n128 a2, __n128 a3)
{
  a2.n128_u32[0] = 14155992;
  a2.n128_u16[2] = 216;
  a2.n128_u16[3] = 216;
  a3.n128_u32[0] = 15466732;
  a3.n128_u16[2] = 236;
  a3.n128_u16[3] = 236;
  return sub_1969FD224(a1, a2, a3);
}

uint64_t sub_1969FD224@<X0>(unsigned int a1@<W8>, uint8x8_t a2@<D0>, int8x8_t a3@<D1>, int16x4_t a4@<D2>)
{
  v11 = (v7 & v8) - v6 - 3985;
  a2.i32[0] = *(v4 + v11);
  v12 = vmovl_u8(a2).u64[0];
  v13 = vadd_s16(vsub_s16(v12, vand_s8(vadd_s16(v12, v12), a3)), a4);
  *(v5 + v11) = vuzp1_s8(v13, v13).u32[0];
  return (*(v10 + 8 * (((v6 == 16) * v9) ^ a1)))(0);
}

uint64_t sub_1969FD278@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v7 = v3 - 1;
  *(a2 + v7) = *(v5 + v7) - ((v2 + a1) & (2 * *(v5 + v7))) - 20;
  return (*(v6 + 8 * (((v7 != 0) * v4) ^ v2)))();
}

uint64_t sub_1969FD2B0()
{
  v1 = STACK[0x4A0];
  v2 = STACK[0x958];
  v3 = &STACK[0xB70] + STACK[0x958];
  STACK[0x938] = v3;
  v4 = v3 + 16;
  STACK[0x758] = (v3 + 16);
  STACK[0x4E8] = (v3 + 48);
  STACK[0x958] = v2 + 80;
  (*(STACK[0x248] + 8 * (v0 + 4092)))();
  v5 = v4;
  v6 = STACK[0x248];
  v7 = (*(STACK[0x248] + 8 * (v0 ^ 0x101C)))(v5, 0, 32);
  STACK[0x970] = 0;
  STACK[0x628] = 0;
  LODWORD(STACK[0x5CC]) = -1720256293;
  STACK[0x960] = 0;
  LODWORD(STACK[0x5F4]) = 0;
  STACK[0x578] = v1;
  return (*(v6 + 8 * (((v1 == 0) * (v0 + 809 + ((2 * v0) ^ 0x153C) - 3336)) ^ v0)))(v7);
}

uint64_t fp_dh_62a60ff91a25c8719d77607882cde384(uint64_t a1)
{
  v210 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v194 = (*v2 ^ 0x7DFFBFFB) - 6390617 + ((2 * *v2) & 0xFBFF7FF6);
  v195 = (v2[1] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[1]) & 0xFBFF7FF6);
  v196 = (v2[2] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[2]) & 0xFBFF7FF6);
  v197 = (v2[3] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[3]) & 0xFBFF7FF6);
  v198 = (v2[4] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[4]) & 0xFBFF7FF6);
  v199 = (v2[5] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[5]) & 0xFBFF7FF6);
  v200 = (v2[6] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[6]) & 0xFBFF7FF6);
  v201 = (v2[7] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[7]) & 0xFBFF7FF6);
  v202 = (v2[8] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[8]) & 0xFBFF7FF6);
  v203 = (v2[9] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[9]) & 0xFBFF7FF6);
  v204 = (v2[10] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[10]) & 0xFBFF7FF6);
  v205 = (v2[11] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[11]) & 0xFBFF7FF6);
  v206 = (v2[12] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[12]) & 0xFBFF7FF6);
  v207 = (v2[13] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[13]) & 0xFBFF7FF6);
  v208 = (v2[14] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[14]) & 0xFBFF7FF6);
  v209 = (v2[15] ^ 0x7DFFBFFB) - 6390617 + ((2 * v2[15]) & 0xFBFF7FF6);
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  LODWORD(v2) = v194;
  v6 = *v1 + v194 + 1861378123 + ((((v5 & v3 | v4 & ~v3) ^ 0xB04A7D72) + 1123460547) ^ (((v5 & v3 | v4 & ~v3) ^ 0x18C1EB7D) - 360893490) ^ (((v5 & v3 | v4 & ~v3) ^ 0xA88B960F) + 1513574080));
  v7 = (2 * (v6 & 0xF81D2EDA ^ 0xA528A42A)) & 0xA0280420 ^ v6 & 0xF81D2EDA ^ 0xA528A42A ^ ((2 * (v6 & 0xF81D2EDA ^ 0xA528A42A)) ^ 0x4A514854) & (v6 ^ 0x5D358AF0);
  v8 = (2 * (v6 ^ 0x5D358AF0)) & 0xA528A42A ^ 0xA528A42A ^ ((2 * (v6 ^ 0x5D358AF0)) ^ 0x4A514854) & (v6 ^ 0x5D358AF0);
  v9 = (4 * v7) & 0xA528A428 ^ v7 ^ ((4 * v7) ^ 0x94A290A8) & v8;
  v10 = (4 * v8) & 0xA528A428 ^ 0x21082402 ^ ((4 * v8) ^ 0x94A290A8) & v8;
  v11 = (16 * v9) & 0xA528A420 ^ v9 ^ ((16 * v9) ^ 0x10824020) & v10;
  v12 = (16 * v10) & 0xA528A420 ^ 0xA520A40A ^ ((16 * v10) ^ 0x528A42A0) & v10;
  v13 = v11 ^ (v11 << 8) & 0xA528A400 ^ ((v11 << 8) ^ 0x8242200) & v12 ^ 0x8400A008;
  v14 = (v13 << 16) & 0x280000 ^ v13 ^ ((v13 << 16) ^ 0x2A0000) & ((v12 << 8) & 0x280000 ^ ((v12 << 8) ^ 0xA40000) & v12 ^ 0x80000);
  v15 = (v6 ^ 0xFE5D8CD2) & (2 * (v6 & 0xF81D2EDA)) ^ v6 & 0xF81D2EDA;
  v16 = ((2 * (v6 ^ 0x9E4F8972)) ^ 0xCCA54F50) & (v6 ^ 0x9E4F8972) ^ (2 * (v6 ^ 0x9E4F8972)) & 0x6652A7A8;
  v17 = (v16 ^ 0x40000700) & (4 * v15) ^ v15;
  v18 = ((4 * (v16 ^ 0x2252A0A8)) ^ 0x994A9EA0) & (v16 ^ 0x2252A0A8) ^ (4 * (v16 ^ 0x2252A0A8)) & 0x6652A7A8;
  v19 = (v18 ^ 0x4286A0) & (16 * v17) ^ v17;
  v20 = ((16 * (v18 ^ 0x66102108)) ^ 0x652A7A80) & (v18 ^ 0x66102108) ^ (16 * (v18 ^ 0x66102108)) & 0x6652A7A0;
  v21 = v19 ^ 0x6652A7A8 ^ (v20 ^ 0x64022200) & (v19 << 8);
  v22 = ((v14 << 8) ^ (v6 << 7)) & 0xFFFFFF80 | ((v6 ^ (2 * ((v21 << 16) & 0x66666666 ^ v21 ^ ((v21 << 16) ^ 0x27000000) & (((v20 ^ 0x2508528) << 8) & 0x66520000 ^ 0x24000000 ^ (((v20 ^ 0x2508528) << 8) ^ 0x52A70000) & (v20 ^ 0x2508528))))) >> 25);
  v23 = v3 - 1442212664 + (((v22 ^ 0x4122D2BC) + 304852658) ^ ((v22 ^ 0x56CAACF9) + 96719093) ^ ((v22 ^ 0x19DB3979) + 1255294325));
  v24 = ((v23 ^ 0xD9DAD18A) + 560390544) ^ v23 ^ ((v23 ^ 0x3B964ED5) - 1020625199) ^ ((v23 ^ 0x98F1BF1A) + 1615695648) ^ ((v23 ^ 0x7DFEEFBF) - 2059214917);
  v25 = v3 & (v24 ^ 0x743CFFA) | v5 & ~(v24 ^ 0x743CFFA);
  v26 = v4 + v195 + 180059365 + (((v25 ^ 0xDE678F9F) + 1931459056) ^ ((v25 ^ 0x2806098) - 1342679319) ^ ((v25 ^ 0xDCE7EF07) + 1906301304));
  v27 = (v26 ^ 0xB8F1F71E) & (2 * (v26 & 0xB2F5C75E)) ^ v26 & 0xB2F5C75E;
  v28 = ((2 * (v26 ^ 0xD8F07FAE)) ^ 0xD40B71E0) & (v26 ^ 0xD8F07FAE) ^ (2 * (v26 ^ 0xD8F07FAE)) & 0x6A05B8F0;
  v29 = v28 ^ 0x2A048810;
  v30 = (v28 ^ 0x400130E0) & (4 * v27) ^ v27;
  v31 = ((4 * v29) ^ 0xA816E3C0) & v29 ^ (4 * v29) & 0x6A05B8F0;
  v32 = v30 ^ 0x6A05B8F0 ^ (v31 ^ 0x2804A0C0) & (16 * v30);
  v33 = (16 * (v31 ^ 0x42011830)) & 0x6A05B8F0 ^ 0x4A0430F0 ^ ((16 * (v31 ^ 0x42011830)) ^ 0xA05B8F00) & (v31 ^ 0x42011830);
  v34 = (v32 << 8) & 0x6A05B800 ^ v32 ^ ((v32 << 8) ^ 0x5B8F000) & v33;
  HIDWORD(v35) = ((v26 ^ 0xDF1787C9) + 147605) ^ v26 ^ ((v26 ^ 0x8DB00) + 859230) ^ ((v26 ^ 0xA9B14) + 1006666) ^ ((v26 ^ 0xFFFFFF7F) + 669731);
  LODWORD(v35) = v26 ^ (2 * ((v34 << 16) & 0x6A000000 ^ v34 ^ ((v34 << 16) ^ 0x8F00000) & ((v33 << 8) & 0x6A050000 ^ 0x6A000000 ^ ((v33 << 8) ^ 0x5B80000) & v33)));
  v36 = (((v24 ^ 0xD5A54741) - 2069529345) ^ ((v24 ^ 0xD957D142) - 2007504130) ^ ((v24 ^ 0xBB159F9) + 1521574471)) - 1249987870 + ((((v35 >> 20) ^ 0x8604165F) + 1118985294) ^ (((v35 >> 20) ^ 0xD9446BD6) + 502407621) ^ (((v35 >> 20) ^ 0xFCCA5AE6) + 947654901));
  v37 = ((v36 ^ 0xBE06EC31) + 856033129) ^ v36 ^ ((v36 ^ 0x2DD41C6B) - 1596655821) ^ ((v36 ^ 0x1E421B07) - 1824329633) ^ ((v36 ^ 0xFF6FFFFB) + 1919882403);
  v38 = (v24 ^ v3) & 0x887710D5 ^ v3 ^ (v37 ^ 0xFA880473) & (v24 ^ v3 ^ 0x743CFFA);
  v39 = v5 + v196 - 11706683 + (((v38 ^ 0x3D999562) - 1910174723) ^ ((v38 ^ 0x3B3DD0B0) - 2004791761) ^ ((v38 ^ 0x6E74502) - 1252271203));
  v40 = (v39 ^ 0xEA212601) & (2 * (v39 & 0xF3353725)) ^ v39 & 0xF3353725;
  v41 = ((2 * (v39 ^ 0x6A016E01)) ^ 0x3268B248) & (v39 ^ 0x6A016E01) ^ (2 * (v39 ^ 0x6A016E01)) & 0x99345924;
  v42 = v41 ^ 0x89144924;
  v43 = (v41 ^ 0x10201000) & (4 * v40) ^ v40;
  v44 = ((4 * v42) ^ 0x64D16490) & v42 ^ (4 * v42) & 0x99345924;
  v45 = v43 ^ 0x99345924 ^ (v44 ^ 0x104000) & (16 * v43);
  v46 = (16 * (v44 ^ 0x99241924)) & 0x99345920 ^ 0x8304924 ^ ((16 * (v44 ^ 0x99241924)) ^ 0x93459240) & (v44 ^ 0x99241924);
  v47 = (v45 << 8) & 0x99345900 ^ v45 ^ ((v45 << 8) ^ 0x34592400) & v46;
  HIDWORD(v35) = ((v39 ^ 0xABE23184) + 1697) ^ v39 ^ ((v39 ^ 0xEF8) + 14813) ^ ((v39 ^ 0xC48) + 15213) ^ ((v39 ^ 0x7BEF) + 19660);
  LODWORD(v35) = v39 ^ (2 * ((v47 << 16) & 0x19340000 ^ v47 ^ ((v47 << 16) ^ 0x59240000) & ((v46 << 8) & 0x19340000 ^ 0x9240000 ^ ((v46 << 8) ^ 0x34590000) & v46)));
  v48 = (((v37 ^ 0x132678E7) - 788232848) ^ ((v37 ^ 0xAB562D2D) + 1769263270) ^ ((v37 ^ 0xCA8F416C) + 145603813)) + 1583787253 + ((((v35 >> 15) ^ 0x9228FEB0) + 1873898864) ^ (((v35 >> 15) ^ 0x7F47CD) - 35204077) ^ (((v35 >> 15) ^ 0x3E01F16) - 25588534));
  v49 = (v48 ^ 0x164835A7) & (2 * (v48 & 0x848D3427)) ^ v48 & 0x848D3427;
  v50 = ((2 * (v48 ^ 0x1E4015E9)) ^ 0x359A439C) & (v48 ^ 0x1E4015E9) ^ (2 * (v48 ^ 0x1E4015E9)) & 0x9ACD21CE;
  v51 = v50 ^ 0x8A452042;
  v52 = (v50 ^ 0x1008018C) & (4 * v49) ^ v49;
  v53 = ((4 * v51) ^ 0x6B348738) & v51 ^ (4 * v51) & 0x9ACD21CC;
  v54 = v52 ^ 0x9ACD21CE ^ (v53 ^ 0xA040100) & (16 * v52);
  v55 = (16 * (v53 ^ 0x90C920C6)) & 0x9ACD21C0 ^ 0x120D210E ^ ((16 * (v53 ^ 0x90C920C6)) ^ 0xACD21CE0) & (v53 ^ 0x90C920C6);
  v56 = (v54 << 8) & 0x9ACD2100 ^ v54 ^ ((v54 << 8) ^ 0xCD21CE00) & v55;
  v57 = v48 ^ (2 * ((v56 << 16) & 0x1ACD0000 ^ v56 ^ ((v56 << 16) ^ 0x21CE0000) & ((v55 << 8) & 0x1ACD0000 ^ 0x12CC0000 ^ ((v55 << 8) ^ 0x4D210000) & v55)));
  v58 = (v37 ^ 0x3DDD0277 ^ v24 ^ 0xAEFFC440) & 0xA1339E51 ^ v24 ^ 0xAEFFC440 ^ (v57 ^ 0x1BEE9EA) & (v37 ^ 0x3DDD0277 ^ v24 ^ 0xAEFFC440 ^ 0xE69E1D6B);
  v59 = v3 + v197 - 894254343 + (((v58 ^ 0x88E449A3) + 1655578339) ^ ((v58 ^ 0x2C66F6B6) - 970153480) ^ ((v58 ^ 0xAD2CA8EE) + 1197932464));
  v60 = (v59 ^ 0xC1826E12) & (2 * (v59 & 0x95888E98)) ^ v59 & 0x95888E98;
  v61 = ((2 * (v59 ^ 0xE1826302)) ^ 0xE815DB34) & (v59 ^ 0xE1826302) ^ (2 * (v59 ^ 0xE1826302)) & 0x740AED9A;
  v62 = v61 ^ 0x140A248A;
  v63 = (v61 ^ 0x60004800) & (4 * v60) ^ v60;
  v64 = ((4 * v62) ^ 0xD02BB668) & v62 ^ (4 * v62) & 0x740AED98;
  v65 = (v64 ^ 0x500AA400) & (16 * v63) ^ v63;
  v66 = ((16 * (v64 ^ 0x24004992)) ^ 0x40AED9A0) & (v64 ^ 0x24004992) ^ (16 * (v64 ^ 0x24004992)) & 0x740AED90;
  v67 = v65 ^ 0x740AED9A ^ (v66 ^ 0x400AC900) & (v65 << 8);
  HIDWORD(v35) = ((v59 ^ 0x5DFF2A1E) + 138) ^ v59 ^ ((v59 ^ 0x23A) + 174) ^ ((v59 ^ 0x2B2) + 38) ^ ((v59 ^ 0x3FE) + 362);
  LODWORD(v35) = v59 ^ (2 * (((v67 << 16) ^ 0x6D9A0000) & (((v66 ^ 0x3400241A) << 8) & 0x740A0000 ^ 0x74020000 ^ (((v66 ^ 0x3400241A) << 8) ^ 0xAED0000) & (v66 ^ 0x3400241A)) ^ v67 ^ ((v67 << 16) & 0x740A0000 | 0x2C00)));
  v68 = (((v57 ^ 0xCC062F3) - 569319125) ^ ((v57 ^ 0x9D9CD0EC) + 1330402102) ^ ((v57 ^ 0x31D1C5A4) - 486455682)) + 1604149989 + ((((v35 >> 10) ^ 0xAD14470E) + 1626189406) ^ (((v35 >> 10) ^ 0xFA91A28D) + 929582047) ^ (((v35 >> 10) ^ 0xDA887C0) - 1068405100));
  v69 = (v68 ^ 0x54B49D87) & (2 * (v68 & 0x96301DA7)) ^ v68 & 0x96301DA7;
  v70 = ((2 * (v68 ^ 0x78B4868F)) ^ 0xDD093650) & (v68 ^ 0x78B4868F) ^ (2 * (v68 ^ 0x78B4868F)) & 0xEE849B28;
  v71 = v70 ^ 0x22848928;
  v72 = (v70 ^ 0xC8001200) & (4 * v69) ^ v69;
  v73 = ((4 * v71) ^ 0xBA126CA0) & v71 ^ (4 * v71) & 0xEE849B28;
  v74 = (v73 ^ 0xAA000820) & (16 * v72) ^ v72;
  v75 = ((16 * (v73 ^ 0x44849308)) ^ 0xE849B280) & (v73 ^ 0x44849308) ^ (16 * (v73 ^ 0x44849308)) & 0xEE849B20;
  v76 = v74 ^ 0xEE849B28 ^ (v75 ^ 0xE8009200) & (v74 << 8);
  v77 = v68 ^ (2 * ((v76 << 16) & 0x6E840000 ^ v76 ^ ((v76 << 16) ^ 0x1B280000) & (((v75 ^ 0x6840928) << 8) & 0x6E840000 ^ 0x6A040000 ^ (((v75 ^ 0x6840928) << 8) ^ 0x49B0000) & (v75 ^ 0x6840928))));
  v78 = (v57 ^ 0x2D2F7C26 ^ v37 ^ 0x3DDD0277) & 0x86AC2BEA ^ v37 ^ 0x3DDD0277 ^ (v77 ^ 0xD995001D) & (v57 ^ 0x2D2F7C26 ^ v37 ^ 0x3DDD0277 ^ 0xC2801D4C);
  v79 = v198 + (((v24 ^ 0x17E816F2) + 1189621070) ^ ((v24 ^ 0x4F3FEFCF) + 507499633) ^ ((v24 ^ 0x5F9436C7) + 244583801)) - 1522700971 + (((v78 ^ 0x431126F5) + 1825910136) ^ ((v78 ^ 0x9D98B707) - 1302545274) ^ ((v78 ^ 0x132B8E6B) + 1022330346));
  HIDWORD(v35) = ((v79 ^ 0x921BA672) + 32373544) ^ v79 ^ ((v79 ^ 0x6BB1AD) + 27127033) ^ ((v79 ^ 0x1926A8A) + 6567904) ^ ((v79 ^ 0x1EBDFFF) + 1933995);
  LODWORD(v35) = ((v79 ^ 0xAFCE5562) + 909641784) ^ v79 ^ ((v79 ^ 0xCFED138) - 1794601874) ^ ((v79 ^ 0x3AE6D900) - 1559198624) ^ ((v79 ^ 0xFFDFFFF0) + 1714004656);
  v80 = (((v77 ^ 0x2ACCA060) + 165489556) ^ ((v77 ^ 0xA10C9E97) - 2112023195) ^ ((v77 ^ 0xD4F91500) - 135749900)) - 542670972 + ((((v35 >> 25) ^ 0x437507F6) - 256548281) ^ (((v35 >> 25) ^ 0xD137843C) + 1660412301) ^ (((v35 >> 25) ^ 0x9693D6F9) + 626242378));
  v81 = (v80 ^ 0xE91E8FFA) & (2 * (v80 & 0xED1EAFF3)) ^ v80 & 0xED1EAFF3;
  v82 = ((2 * (v80 ^ 0xF91E88F8)) ^ 0x28004E16) & (v80 ^ 0xF91E88F8) ^ (2 * (v80 ^ 0xF91E88F8)) & 0x1400270A;
  v83 = v82 ^ 0x14002109;
  v84 = (v82 ^ 0x600) & (4 * v81) ^ v81;
  v85 = ((4 * v83) ^ 0x50009C2C) & v83 ^ (4 * v83) & 0x14002708;
  v86 = (v85 ^ 0x10000400) & (16 * v84) ^ v84;
  v87 = ((16 * (v85 ^ 0x4002303)) ^ 0x400270B0) & (v85 ^ 0x4002303) ^ (16 * (v85 ^ 0x4002303)) & 0x14002700;
  v88 = v86 ^ 0x1400270B ^ (v87 ^ 0x2000) & (v86 << 8);
  v89 = v80 ^ (2 * (((v88 << 16) ^ 0x270B0000) & (((v87 ^ 0x1400070B) << 8) & 0x14000000 ^ 0x14000000 ^ (((v87 ^ 0x1400070B) << 8) ^ 0x270000) & (v87 ^ 0x1400070B)) ^ v88 ^ ((v88 << 16) & 0x14000000 | 0x270A)));
  v90 = (v77 ^ 0xDCEE740C ^ v57 ^ 0x2D2F7C26) & 0x87657EE0 ^ v57 ^ 0x2D2F7C26 ^ (v89 ^ 0x4A7BD111) & (v77 ^ 0xDCEE740C ^ v57 ^ 0x2D2F7C26 ^ 0xE755466);
  v91 = v199 + (((v37 ^ 0x66E3BE6E) - 1530838041) ^ ((v37 ^ 0x6413D47F) - 1506727432) ^ ((v37 ^ 0x700F7EB7) - 1305640128)) + 198830763 + (((v90 ^ 0x8850F167) + 2132646521) ^ ((v90 ^ 0xD0F64131) + 666577455) ^ ((v90 ^ 0xD361EFAB) + 606897333));
  v92 = 2 * (v91 & 0x90A780CB);
  v93 = ((2 * (v91 ^ 0xFC814551)) ^ 0xD84D8B34) & (v91 ^ 0xFC814551) ^ (2 * (v91 ^ 0xFC814551)) & 0x6C26C59A;
  v94 = (v93 ^ 0x40040110) & (4 * (v92 & (v91 ^ 0xDC8744C3) ^ v91 & 0x90A780CB)) ^ v92 & (v91 ^ 0xDC8744C3) ^ v91 & 0x90A780CB;
  v95 = ((4 * (v93 ^ 0x2422448A)) ^ 0xB09B1668) & (v93 ^ 0x2422448A) ^ (4 * (v93 ^ 0x2422448A)) & 0x6C26C598;
  v96 = (v95 ^ 0x20020400) & (16 * v94) ^ v94;
  v97 = ((16 * (v95 ^ 0x4C24C192)) ^ 0xC26C59A0) & (v95 ^ 0x4C24C192) ^ (16 * (v95 ^ 0x4C24C192)) & 0x6C26C590;
  v98 = v96 ^ 0x6C26C59A ^ (v97 ^ 0x40244100) & (v96 << 8);
  v99 = (v98 << 16) & 0x60000 ^ v98 ^ ((v98 << 16) ^ 0x20000) & (((v97 ^ 0x2C02841A) << 8) & 0x60000 ^ (((v97 ^ 0x2C02841A) << 8) ^ 0x50000) & (v97 ^ 0x2C02841A) ^ 0x20000);
  v100 = v92 & (v91 ^ 0xC2370C83) ^ v91 & 0x90A780CB;
  v101 = ((2 * (v91 ^ 0xE2760D91)) ^ 0xE5A31AB4) & (v91 ^ 0xE2760D91) ^ (2 * (v91 ^ 0xE2760D91)) & 0x72D18D5A;
  v102 = v101 ^ 0x1250854A;
  v103 = (v101 ^ 0x40800010) & (4 * v100) ^ v100;
  v104 = ((4 * v102) ^ 0xCB463568) & v102 ^ (4 * v102) & 0x72D18D58;
  v105 = (v104 ^ 0x42400540) & (16 * v103) ^ v103;
  v106 = ((16 * (v104 ^ 0x30918812)) ^ 0x2D18D5A0) & (v104 ^ 0x30918812) ^ (16 * (v104 ^ 0x30918812)) & 0x72D18D50;
  v107 = v105 ^ 0x72D18D5A ^ (v106 ^ 0x20108500) & (v105 << 8);
  v108 = ((v99 << 13) ^ (v91 << 12)) & 0xFFFFF000 | ((v91 ^ (2 * ((v107 << 16) & 0x72D00000 ^ v107 ^ ((v107 << 16) ^ 0xD580000) & (((v106 ^ 0x52C1085A) << 8) & 0x72D10000 ^ 0x22500000 ^ (((v106 ^ 0x52C1085A) << 8) ^ 0x518D0000) & (v106 ^ 0x52C1085A))))) >> 20);
  v109 = (((v89 ^ 0x9DE18ED6) + 713601274) ^ ((v89 ^ 0xBF6A9899) + 134457015) ^ ((v89 ^ 0xEF95B9BE) + 1492944786)) - 1578863399 + (((v108 ^ 0xBF56C184) + 1064566519) ^ ((v108 ^ 0x2DD4D43E) - 1376654515) ^ ((v108 ^ 0x723DE2E0) - 233251437));
  v110 = ((v109 ^ 0x7F1484CE) - 65161775) ^ v109 ^ ((v109 ^ 0xD46DDB31) + 1466231344) ^ ((v109 ^ 0x28706E41) - 1418109088) ^ ((v109 ^ 0xFFFFFF5F) + 2096549442);
  v111 = (v89 ^ 0x4896C1D0 ^ v77 ^ 0xDCEE740C) & 0x8DDDB2F4 ^ v77 ^ 0xDCEE740C ^ (v110 ^ 0xF12B7C15) & (v89 ^ 0x4896C1D0 ^ v77 ^ 0xDCEE740C ^ 0x65F31DA);
  HIDWORD(v35) = v200 + (v57 ^ 0xA08D77BB) + 37109257 + (((v111 ^ 0xCF94AD11) + 1615137118) ^ ((v111 ^ 0x478B8D18) - 396744363) ^ ((v111 ^ 0xF954F22) - 1606096017));
  LODWORD(v35) = HIDWORD(v35);
  v112 = v110 ^ 0x9E966AF3;
  v113 = v110 ^ 0x7CF6CEE1;
  v114 = (v35 >> 15) + (v110 ^ 0x7CF6CEE1);
  HIDWORD(v35) = v201 + (v77 ^ 0x5F392BF7) + 2141739103 + (((v114 & (v89 ^ 0xB1E86110 ^ v110)) - ((2 * (v114 & (v89 ^ 0xB1E86110 ^ v110))) & 0xB10DC42) - 2054656479) ^ v89 ^ 0x4896C1D0);
  LODWORD(v35) = HIDWORD(v35);
  v115 = (v35 >> 10) + v114;
  v116 = v115 & ((v114 - ((2 * v114) & 0xC4C14824) - 496983022) ^ v112);
  HIDWORD(v35) = v202 + (v89 ^ 0xCD1EAFF1) - 337486794 + ((v116 - ((2 * v116) & 0xC4C14824) - 496983022) ^ v112);
  LODWORD(v35) = HIDWORD(v35);
  v117 = (v35 >> 25) + v115;
  HIDWORD(v35) = v203 + v113 + 229030669 + (v115 & v117 | v114 & ~v117);
  LODWORD(v35) = HIDWORD(v35);
  v118 = (v35 >> 20) + v117;
  HIDWORD(v35) = v204 + v114 - 2107564273 + (v117 & v118 | v115 & ~v118);
  LODWORD(v35) = HIDWORD(v35);
  v119 = (v35 >> 15) + v118;
  HIDWORD(v35) = v205 + v115 + 197040924 + (v118 & v119 | v117 & ~v119);
  LODWORD(v35) = HIDWORD(v35);
  v120 = (v35 >> 10) + v119;
  HIDWORD(v35) = v206 + v117 - 302918528 + (v119 & v120 | v118 & ~v120);
  LODWORD(v35) = HIDWORD(v35);
  v121 = (v35 >> 25) + v120;
  HIDWORD(v35) = v207 + v118 + 2147103985 + (v120 & v121 | v119 & ~v121);
  LODWORD(v35) = HIDWORD(v35);
  v122 = (v35 >> 20) + v121;
  HIDWORD(v35) = v208 + v119 + 685442796 + (v121 & v122 | v120 & ~v122);
  LODWORD(v35) = HIDWORD(v35);
  v123 = (v35 >> 15) + v122;
  HIDWORD(v35) = v209 + v120 - 870986881 + (v122 & v123 | v121 & ~v123);
  LODWORD(v35) = HIDWORD(v35);
  v124 = (v35 >> 10) + v123;
  HIDWORD(v35) = v195 + v121 + 2021648576 + (v124 & v122 | v123 & ~v122);
  LODWORD(v35) = HIDWORD(v35);
  v125 = (v35 >> 27) + v124;
  HIDWORD(v35) = v200 + v122 + 1117943454 + (v125 & v123 | v124 & ~v123);
  LODWORD(v35) = HIDWORD(v35);
  v126 = (v35 >> 23) + v125;
  HIDWORD(v35) = v205 + v123 - 1463804497 + (v126 & v124 | v125 & ~v124);
  LODWORD(v35) = HIDWORD(v35);
  v127 = (v35 >> 18) + v126;
  HIDWORD(v35) = v194 + v124 + 1813547784 + (v127 & v125 | v126 & ~v125);
  LODWORD(v35) = HIDWORD(v35);
  v128 = (v35 >> 12) + v127;
  HIDWORD(v35) = v199 + v125 + 1485886395 + (v128 & v126 | v127 & ~v126);
  LODWORD(v35) = HIDWORD(v35);
  v129 = (v35 >> 27) + v128;
  HIDWORD(v35) = v204 + v126 - 2069506127 + (v129 & v127 | v128 & ~v127);
  LODWORD(v35) = HIDWORD(v35);
  v130 = (v35 >> 23) + v129;
  HIDWORD(v35) = v209 + v127 + 1526966751 + (v130 & v128 | v129 & ~v128);
  LODWORD(v35) = HIDWORD(v35);
  v131 = (v35 >> 18) + v130;
  HIDWORD(v35) = v198 + v128 + 1781907238 + (v131 & v129 | v130 & ~v129);
  LODWORD(v35) = HIDWORD(v35);
  v132 = (v35 >> 12) + v131;
  HIDWORD(v35) = v203 + v129 - 1539075772 + (v132 & v130 | v131 & ~v130);
  LODWORD(v35) = HIDWORD(v35);
  v133 = (v35 >> 27) + v132;
  HIDWORD(v35) = v208 + v130 + 1167641396 + (v133 & v131 | v132 & ~v131);
  LODWORD(v35) = HIDWORD(v35);
  v134 = (v35 >> 23) + v133;
  HIDWORD(v35) = v197 + v131 + 2000081125 + (v134 & v132 | v133 & ~v132);
  LODWORD(v35) = HIDWORD(v35);
  v135 = (v35 >> 18) + v134;
  HIDWORD(v35) = v202 + v132 - 943990709 + (v135 & v133 | v134 & ~v133);
  LODWORD(v35) = HIDWORD(v35);
  v136 = (v35 >> 12) + v135;
  HIDWORD(v35) = v207 + v133 + 742763619 + (v136 & v134 | v135 & ~v134);
  LODWORD(v35) = HIDWORD(v35);
  v137 = (v35 >> 27) + v136;
  HIDWORD(v35) = v196 + v134 + 2136041302 + (v137 & v135 | v136 & ~v135);
  LODWORD(v35) = HIDWORD(v35);
  v138 = (v35 >> 23) + v137;
  HIDWORD(v35) = v201 + v135 - 372193737 + (v138 & v136 | v137 & ~v136);
  LODWORD(v35) = HIDWORD(v35);
  v139 = (v35 >> 18) + v138;
  HIDWORD(v35) = v206 + v136 + 260837352 + ((v139 ^ v138) & v137 ^ v138);
  LODWORD(v35) = HIDWORD(v35);
  v140 = (v35 >> 12) + v139;
  v194 = *(&v194 + (v137 & 0xF));
  *(&v194 + (v137 & 0xF)) = v2;
  LODWORD(v2) = v195;
  v195 = *(&v194 + (v140 & 0xF));
  *(&v194 + (v140 & 0xF)) = v2;
  LODWORD(v2) = v196;
  v196 = *(&v194 + (v139 & 0xF));
  *(&v194 + (v139 & 0xF)) = v2;
  LODWORD(v2) = v197;
  v197 = *(&v194 + (v138 & 0xF));
  *(&v194 + (v138 & 0xF)) = v2;
  LODWORD(v2) = v198;
  v198 = *(&v194 + (v137 >> 4));
  *(&v194 + (v137 >> 4)) = v2;
  v141 = v199;
  v199 = *(&v194 + (v140 >> 4));
  *(&v194 + (v140 >> 4)) = v141;
  LODWORD(v2) = v200;
  v200 = *(&v194 + (v139 >> 4));
  *(&v194 + (v139 >> 4)) = v2;
  LODWORD(v2) = v201;
  v201 = *(&v194 + (v138 >> 4));
  *(&v194 + (v138 >> 4)) = v2;
  HIDWORD(v35) = v199 + v137 - 2107900768 + (v140 ^ v139 ^ v138);
  LODWORD(v35) = HIDWORD(v35);
  v142 = (v35 >> 28) + v140;
  HIDWORD(v35) = v202 + v138 + 164870623 + (v142 ^ v140 ^ v139);
  LODWORD(v35) = HIDWORD(v35);
  v143 = (v35 >> 21) + v142;
  HIDWORD(v35) = v205 + v139 - 268491648 + (v142 ^ v140 ^ v143);
  LODWORD(v35) = HIDWORD(v35);
  v144 = (v35 >> 16) + v143;
  HIDWORD(v35) = v208 + v140 - 2142831766 + (v143 ^ v142 ^ v144);
  LODWORD(v35) = HIDWORD(v35);
  v145 = (v35 >> 9) + v144;
  HIDWORD(v35) = v195 + v142 + 656453026 + (v144 ^ v143 ^ v145);
  LODWORD(v35) = HIDWORD(v35);
  v146 = (v35 >> 28) + v145;
  HIDWORD(v35) = v198 + v143 - 834628857 + (v145 ^ v144 ^ v146);
  LODWORD(v35) = HIDWORD(v35);
  v147 = (v35 >> 21) + v146;
  HIDWORD(v35) = v201 + v144 + 2031947454 + (v146 ^ v145 ^ v147);
  LODWORD(v35) = HIDWORD(v35);
  v148 = (v35 >> 16) + v147;
  HIDWORD(v35) = v204 + v145 + 1092714446 + (v147 ^ v146 ^ v148);
  LODWORD(v35) = HIDWORD(v35);
  v149 = (v35 >> 9) + v148;
  HIDWORD(v35) = v207 + v146 - 1426243036 + (v148 ^ v147 ^ v149);
  LODWORD(v35) = HIDWORD(v35);
  v150 = (v35 >> 28) + v149;
  HIDWORD(v35) = v194 + v147 + 1828907864 + (v149 ^ v148 ^ v150);
  LODWORD(v35) = HIDWORD(v35);
  v151 = (v35 >> 21) + v150;
  HIDWORD(v35) = v197 + v148 + 1464923107 + (v150 ^ v149 ^ v151);
  LODWORD(v35) = HIDWORD(v35);
  v152 = (v35 >> 16) + v151;
  HIDWORD(v35) = v200 + v149 - 2031493021 + (v151 ^ v150 ^ v152);
  LODWORD(v35) = HIDWORD(v35);
  v153 = (v35 >> 9) + v152;
  HIDWORD(v35) = v203 + v150 + 1547080599 + (v152 ^ v151 ^ v153);
  LODWORD(v35) = HIDWORD(v35);
  v154 = (v35 >> 28) + v153;
  HIDWORD(v35) = v206 + v151 + 1765629251 + (v153 ^ v152 ^ v154);
  LODWORD(v35) = HIDWORD(v35);
  v155 = (v35 >> 21) + v154;
  HIDWORD(v35) = v209 + v152 - 1576779690 + (v154 ^ v153 ^ v155);
  LODWORD(v35) = HIDWORD(v35);
  v156 = (v35 >> 16) + v155;
  HIDWORD(v35) = v196 + v153 + 1192106435 + (v155 ^ v154 ^ v156);
  LODWORD(v35) = HIDWORD(v35);
  v157 = (v35 >> 9) + v156;
  HIDWORD(v35) = v194 + v154 + 1988814242 + ((v157 | ~v155) ^ v156);
  LODWORD(v35) = HIDWORD(v35);
  v158 = (v35 >> 26) + v157;
  HIDWORD(v35) = v201 + v155 - 980630795 + ((v158 | ~v156) ^ v157);
  LODWORD(v35) = HIDWORD(v35);
  v159 = (v35 >> 22) + v158;
  HIDWORD(v35) = v208 + v156 + 771090181 + ((v159 | ~v157) ^ v158);
  LODWORD(v35) = HIDWORD(v35);
  v160 = (v35 >> 17) + v159;
  HIDWORD(v35) = v199 + v157 + 2130011031 + ((v160 | ~v158) ^ v159);
  LODWORD(v35) = HIDWORD(v35);
  v161 = (v35 >> 11) + v160;
  HIDWORD(v35) = v206 + v158 - 407036639 + ((v161 | ~v159) ^ v160);
  LODWORD(v35) = HIDWORD(v35);
  v162 = (v35 >> 26) + v161;
  HIDWORD(v35) = v197 + v159 + 292458480 + ((v162 | ~v160) ^ v161);
  LODWORD(v35) = HIDWORD(v35);
  v163 = (v35 >> 22) + v162;
  HIDWORD(v35) = v204 + v160 - 2108573733 + ((v163 | ~v161) ^ v162);
  LODWORD(v35) = HIDWORD(v35);
  v164 = (v35 >> 17) + v163;
  HIDWORD(v35) = v195 + v161 + 132522287 + ((v164 | ~v162) ^ v163);
  LODWORD(v35) = HIDWORD(v35);
  v165 = (v35 >> 11) + v164;
  HIDWORD(v35) = v202 + v162 - 234208851 + ((v165 | ~v163) ^ v164);
  LODWORD(v35) = HIDWORD(v35);
  v166 = (v35 >> 26) + v165;
  HIDWORD(v35) = v209 + v163 - 2138133954 + ((v166 | ~v164) ^ v165);
  LODWORD(v35) = HIDWORD(v35);
  v167 = (v35 >> 22) + v166;
  HIDWORD(v35) = v200 + v164 + 627246706 + ((v167 | ~v165) ^ v166);
  LODWORD(v35) = HIDWORD(v35);
  v168 = (v35 >> 17) + v167;
  HIDWORD(v35) = v207 + v165 - 798370561 + ((v168 | ~v166) ^ v167);
  LODWORD(v35) = HIDWORD(v35);
  v169 = (v35 >> 11) + v168;
  HIDWORD(v35) = v198 + v166 + 2041922016 + ((v169 | ~v167) ^ v168);
  LODWORD(v35) = HIDWORD(v35);
  LODWORD(v2) = v169 + ((v35 >> 26) ^ 0xE42557EE) + ((2 * (v35 >> 26)) & 0xC84AAFDC) + 1006627072;
  v170 = (v2 ^ 0x9F98BFC1) & (2 * (v2 & 0xDFDABF12)) ^ v2 & 0xDFDABF12;
  v171 = ((2 * (v2 ^ 0x369CCDC1)) ^ 0xD28CE5A6) & (v2 ^ 0x369CCDC1) ^ (2 * (v2 ^ 0x369CCDC1)) & 0xE94672D2;
  v172 = v171 ^ 0x29421251;
  v173 = (v171 ^ 0xC0046080) & (4 * v170) ^ v170;
  v174 = ((4 * v172) ^ 0xA519CB4C) & v172 ^ (4 * v172) & 0xE94672D0;
  v175 = (v174 ^ 0xA1004240) & (16 * v173) ^ v173;
  v176 = ((16 * (v174 ^ 0x48463093)) ^ 0x94672D30) & (v174 ^ 0x48463093) ^ (16 * (v174 ^ 0x48463093)) & 0xE94672D0;
  v177 = v175 ^ 0xE94672D3 ^ (v176 ^ 0x80462000) & (v175 << 8);
  LODWORD(v2) = v2 ^ (2 * ((v177 << 16) & 0x69460000 ^ v177 ^ ((v177 << 16) ^ 0x72D30000) & (((v176 ^ 0x690052C3) << 8) & 0x69460000 ^ 0x29040000 ^ (((v176 ^ 0x690052C3) << 8) ^ 0x46720000) & (v176 ^ 0x690052C3))));
  HIDWORD(v35) = v205 + v167 + 1067234707 + ((v169 - ((2 * v169) & 0x16256B68) - 1961708108) ^ 0x74ED4A4B ^ (v2 ^ 0x322DA54B) & v168);
  LODWORD(v35) = HIDWORD(v35);
  v178 = (((v2 ^ 0x8FA027DC) + 1328734880) ^ ((v2 ^ 0x88E31CCD) + 1215420815) ^ ((v2 ^ 0xCA9161A5) + 168010983)) + 345496058 + (v35 >> 22);
  v179 = (v178 ^ 0x9C37468E) & (2 * (v178 & 0xDE27860E)) ^ v178 & 0xDE27860E;
  v180 = ((2 * (v178 ^ 0x3F4A9A)) ^ 0xBC319928) & (v178 ^ 0x3F4A9A) ^ (2 * (v178 ^ 0x3F4A9A)) & 0xDE18CC94;
  v181 = v180 ^ 0x42084494;
  v182 = (v180 ^ 0x98100800) & (4 * v179) ^ v179;
  v183 = ((4 * v181) ^ 0x78633250) & v181 ^ (4 * v181) & 0xDE18CC94;
  v184 = (v183 ^ 0x58000000) & (16 * v182) ^ v182;
  v185 = ((16 * (v183 ^ 0x8618CC84)) ^ 0xE18CC940) & (v183 ^ 0x8618CC84) ^ (16 * (v183 ^ 0x8618CC84)) & 0xDE18CC90;
  v186 = v184 ^ 0xDE18CC94 ^ (v185 ^ 0xC008C800) & (v184 << 8);
  v187 = (v178 ^ (2 * ((v186 << 16) & 0x5E180000 ^ v186 ^ ((v186 << 16) ^ 0x4C940000) & (((v185 ^ 0x1E100494) << 8) & 0x5E180000 ^ 0x46100000 ^ (((v185 ^ 0x1E100494) << 8) ^ 0x18CC0000) & (v185 ^ 0x1E100494)))) ^ 0x5C9E0D9) & v169 ^ v2;
  HIDWORD(v35) = v196 + v168 + 232567789 + (((v187 ^ 0xD4CA8B7C) + 2042350621) ^ ((v187 ^ 0xC66BFD4) - 1592264523) ^ ((v187 ^ 0xEA8191E3) + 1206965892));
  LODWORD(v35) = HIDWORD(v35);
  v188 = v178 + 2110514257 + (v35 >> 17);
  v189 = ((v188 ^ 0x3BE3B0CD) + 1538789746) ^ v188 ^ ((v188 ^ 0x3A149AE5) + 1515141978) ^ ((v188 ^ 0xE3A40994) - 2080397271) ^ ((v188 ^ 0x7DF77DFF) + 497867844);
  v190 = ((v178 ^ 0x47C6ECF6) - 1713280260) ^ v178 ^ ((v178 ^ 0x93B361B) - 685985769) ^ ((v178 ^ 0x10F25C70) - 824845698) ^ ((v178 ^ 0x7FD7FF6F) - 1578075805) ^ v189 & 0xA4897ABB ^ (v189 ^ 0x605BA1BC) & (v2 ^ 0x695B200F);
  HIDWORD(v35) = v203 + v169 + 1215161723 + (((v190 ^ 0x826A0DF7) + 1497242162) ^ ((v190 ^ 0xC30F8CDB) + 408656670) ^ ((v190 ^ 0xBF4B2799) + 1679765600));
  LODWORD(v35) = HIDWORD(v35);
  result = v1[1];
  *v1 = *v1 - 222339064 + (((v2 ^ 0x586EC78D) - 1728314673) ^ ((v2 ^ 0xBDCA36E5) + 2102981543) ^ ((v2 ^ 0x2876ABDC) - 387682656));
  v1[1] = result + v188 + ((v35 >> 11) ^ 0x7BBFFF96) + ((2 * (v35 >> 11)) & 0xF77FFF2C) - 459562457;
  v192 = v1[2] + 1616617916 + v188 + 1;
  v193 = v1[3] - 567835122 + v178;
  v1[2] = v192;
  v1[3] = v193;
  return result;
}

void fp_dh_39335171eb8cf91912c06ef3850be0e0(uint64_t a1)
{
  v1 = 1012216201 * ((a1 - 1129148669 - 2 * (a1 & 0xBCB28F03)) ^ 0x381B07EF);
  v2 = *(a1 + 12) ^ v1;
  __asm { BRAA            X13, X17 }
}

uint64_t sub_1969FFDAC()
{
  STACK[0xA18] = v0;
  v3 = STACK[0x6F8];
  STACK[0xA20] = STACK[0x6F8];
  return (*(v1 + 8 * (((v0 - v3 > (v2 - 3329) - 274) * (v2 + 2675)) ^ (v2 - 1149))))();
}

uint64_t sub_1969FFDF8()
{
  v4 = (*(v2 + 8 * (v3 + 3109)))();
  *v0 = 0;
  return v1(v4);
}

void fp_dh_eafb84b432d87c17ad24633c1984b624(uint64_t a1)
{
  v1 = 1068996913 * (a1 ^ 0xD5EEE191);
  __asm { BRAA            X10, X17 }
}

void sub_196A0002C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x800]) = v7;
  LODWORD(STACK[0x43C]) = STACK[0x330];
  LODWORD(STACK[0x48C]) = STACK[0x340];
  LODWORD(STACK[0x44C]) = v8;
  LODWORD(STACK[0x414]) = v7;
  STACK[0x6F8] = *(a6 + 8 * (25 * (v6 ^ 0x25A) - 5476));
  JUMPOUT(0x1969CE4D0);
}

uint64_t sub_196A00084()
{
  v1 = *(STACK[0x8D0] + 24);
  STACK[0x7A0] = v1;
  return (*(STACK[0x248] + 8 * (((v1 == 0) * ((((v0 - 3812) | 0xA08) ^ 0xFFFFF047) + ((v0 + 1660730628) & 0x9D033367))) ^ v0)))();
}

uint64_t sub_196A0012C()
{
  v5 = (v1 + v4 + 41);
  *(v5 - 1) = 0u;
  *v5 = 0u;
  return (*(v3 + 8 * ((((v0 & 0xFFFFFFE0) == 32) * (v2 + 853)) ^ (v2 - 3425))))();
}

void fp_dh_ab30292583be0c7dd712835584e7a14b(uint64_t a1)
{
  v1 = 1790939281 * ((-2 - ((~a1 | 0xD6F6A71E) + (a1 | 0x290958E1))) ^ 0x2E2A875F);
  __asm { BRAA            X12, X17 }
}

uint64_t sub_196A002E4()
{
  v2 = STACK[0x4C0];
  STACK[0x538] = STACK[0x4C0];
  return (*(v1 + 8 * (((((v2 == 0) ^ (v0 - 70)) & 1) * ((v0 ^ 0xC54) - 2065)) ^ v0)))();
}

uint64_t sub_196A00344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  *(v23 - 128) = &a21;
  *(v23 - 132) = v21 + 1012216201 * ((((v23 - 136) | 0x32AA7C8B) - (v23 - 136) + ((v23 - 136) & 0xCD558370)) ^ 0xB603F467) + 1255;
  v24 = (*(v22 + 8 * (v21 ^ 0x123C)))(v23 - 136);
  return (*(v22 + 8 * (((*(v23 - 136) == ((v21 - 6818110) & 0x57FC7F7D) + 436931995) * (((v21 - 675208622) & 0x283ED79F) + 471)) | v21)))(v24);
}

uint64_t fp_dh_1f54bfb24b7427ffd7e55ad5fdc940eb(uint64_t result)
{
  v1 = *(result + 8);
  *v1 = 0xFBDC740BB9F3DCDCLL;
  v1[1] = 0x5190721660F77F86;
  v1[2] = 0;
  return result;
}

uint64_t fp_dh_b7518feea8c17f4f55e165dce16b0837(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = 1283153057 * (((a1 | 0x5EAF6260) - a1 + (a1 & 0xA1509D9F)) ^ 0x11776157);
  v2 = *(a1 + 48) + v1;
  v3 = *(a1 + 12) ^ v1;
  v4 = *(a1 + 24);
  v5 = *(a1 + 40);
  v6 = *(a1 + 32) + v1;
  v7 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 ^ 0x8EC6A082)) - 4;
  if (v3 == 1448105703 || v3 == 1448105700)
  {
    __asm { BRAA            X20, X17 }
  }

  v9 = *a1;
  v10 = 998242381 * (((v14 | 0xB6396C4D) - (v14 & 0xB6396C4D)) ^ 0x1C56F49B);
  v18 = *(a1 + 16);
  v11 = v2 + 1899589200;
  v17 = v6 + v10 - 752326117;
  v15 = v11 + v10;
  v14[0] = v9;
  v14[1] = v5;
  v14[2] = v4;
  result = (*&v7[8 * v11 + 19056])(v14);
  *(a1 + 8) = v16;
  return result;
}

void fp_dh_0d0491cbebcbf4d4847c494cdacdf209(uint64_t a1)
{
  v1 = *(a1 + 40) ^ (753662761 * ((-888151013 - (a1 | 0xCB0FE41B) + (a1 | 0x34F01BE4)) ^ 0x51EAE0AF));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_196A0086C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, int a13)
{
  a10 = 455395931 * (((&a10 | 0xCB9B4600) - (&a10 & 0xCB9B4600)) ^ 0xBD6A18CC) + 1218;
  a11 = v14;
  a12 = v13;
  (*(v15 + 55800))(&a10);
  return sub_1969DDD00(a13);
}

void FHN8Er(uint64_t a1)
{
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_cd36a3c020896b186c916386d25640ff) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_cd36a3c020896b186c916386d25640ff) ^ 0x55))] ^ 0xE1]) + 117);
  v3 = *(v2 - 4);
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - v3) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - v3) ^ 0x55))] ^ 0x76]) + 593);
  v5 = v3 ^ &v9 ^ *(v4 - 4);
  v6 = 810526117 * v5 - 0x3983E51A1E6C17ABLL;
  v7 = 810526117 * (v5 ^ 0xC67C1AE5E193E855);
  *(v2 - 4) = v6;
  *(v4 - 4) = v7;
  LODWORD(v4) = *(v2 - 4);
  v8 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_cd36a3c020896b186c916386d25640ff ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * (fp_dh_cd36a3c020896b186c916386d25640ff ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0xE1]) + 516) - 4;
  (*&v8[8 * (*(off_1F0B0CB90 + (*(off_1F0B0C400 + (-91 * ((v7 - v4) ^ 0x55))) ^ 0xCu)) ^ (-91 * ((v7 - v4) ^ 0x55))) + 53208])(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + (-91 * ((v7 + v4) ^ 0x55))) ^ 0xBBu) - 8) ^ (-91 * ((v7 + v4) ^ 0x55))) | 0x200u)), fp_dh_ac8b380baf0bf0ca926b0e34adc42df4);
  __asm { BRAA            X8, X17 }
}

void NQ7ggq70Owbvqj8qbExsJ5Hw()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_12b5f9ec7fd3d4d7c67dab14bebaf030) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_12b5f9ec7fd3d4d7c67dab14bebaf030) ^ 0x55))] ^ 0x16]) + 242);
  v1 = *(v0 - 4);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - v1) ^ 0x55))) ^ 0x60u) - 8) ^ (-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - v1) ^ 0x55))) + 562);
  v3 = *(v2 - 4) - v1 - &v5;
  *(v0 - 4) = 810526117 * v3 + 0x3983E51A1E6C17ABLL;
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v6[0] = 1575331711 * ((2 * (v6 & 0x73560400) - v6 - 1935016967) ^ 0xE0F26EFB) + 1655634431;
  LOBYTE(v2) = -91 * (*(v0 - 4) ^ 0x55 ^ *(v2 - 4));
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_12b5f9ec7fd3d4d7c67dab14bebaf030) ^ 0x55)) ^ fp_dh_085b997b52366f602a7525e2de3d45fc[fp_dh_2105d8695f17c8422a3228296125ea91[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_12b5f9ec7fd3d4d7c67dab14bebaf030) ^ 0x55))] ^ 0x7F]) + 583) - 4;
  (*&v4[8 * (*(off_1F0B0BBB0 + (*(off_1F0B0C120 + v2 - 8) ^ 0x1Du) - 12) ^ v2) + 52880])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196A00D70()
{
  if (v0 == -604250380 || v0 == 1765068451 || v0 == 1646731647)
  {
    JUMPOUT(0x196A00E28);
  }

  return (*(v2 + 8 * ((v3 - 2106) ^ (4610 * ((v1 & 8) == 0)))))();
}

void fp_dh_a234a528b6e6d86ecf90f9c798945deb()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v1 = *(v0 + 40) + 1621291457 * ((1478030690 - (v0 | 0x5818F562) + (v0 | 0xA7E70A9D)) ^ 0x91F08B04);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_196A010D4()
{
  v3 = v0;
  v4 = (*(v2 + 8 * (v1 ^ 0x1992)))();
  STACK[0x958] -= 32;
  return (*(v2 + 8 * (((v3 == (((v1 + 46) | 0x20A) ^ 0x1170) + 1906275705) * (((v1 + 46) | 0x20A) ^ 0x86B)) ^ ((v1 + 46) | 0x20A))))(v4);
}

uint64_t sub_196A011C8()
{
  STACK[0xAB8] = v1;
  v3 = STACK[0x478];
  STACK[0xAC0] = STACK[0x478];
  return (*(v2 + 8 * (((v1 - v3 > ((3 * (v0 ^ 0x409u)) ^ 0x12AuLL)) * (129 * (v0 ^ 0x474) - 3380)) ^ v0)))();
}

void sub_196A01218()
{
  LOWORD(STACK[0x9EE]) = v0;
  LODWORD(STACK[0x3F0]) = v0;
  JUMPOUT(0x196A17488);
}

uint64_t sub_196A013E4()
{
  v3 = *v1;
  STACK[0x8D0] = 0;
  STACK[0x768] = 0;
  return (*(v2 + 8 * ((((12 * (v0 ^ 0x136E)) ^ (v0 + 1210580279) & 0xB7D7F1F5 ^ 0xF52) * (v3 == 0)) ^ v0)))();
}

uint64_t sub_196A014D8()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x16C9)))(32, 0x103004054B5FA7DLL);
  STACK[0x620] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 ^ 0xC43) + 4817) ^ (686 * (v0 ^ 0xC43)))) | v0)))();
}

void fp_dh_c4e8673cdff0bd7dbbe5c31af0d4dde1(uint64_t a1)
{
  v1 = 753662761 * (((a1 | 0x33B7BAE1) - a1 + (a1 & 0xCC48451E)) ^ 0x56AD41AA);
  __asm { BRAA            X9, X17 }
}

void U4HBs()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_876d3cef7b0a6bd7e1fb8f230a728582) ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_876d3cef7b0a6bd7e1fb8f230a728582) ^ 0x55))] ^ 0x76]) + 228);
  v1 = -91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + *v0) ^ 0x55);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0C8F0 + (*(off_1F0B0CD68 + v1 - 4) ^ 0xD2u) - 4) ^ v1) + 373);
  v3 = &v5[*(v2 - 4) ^ *v0];
  *v0 = (810526117 * v3) ^ 0xC67C1AE5E193E855;
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v6[0] = 1575331711 * (((v6 | 0xF69B15D6) - (v6 & 0xF69B15D6)) ^ 0x9AC080D4) + 1655634431;
  LOBYTE(v2) = -91 * (*v0 ^ 0x55 ^ *(v2 - 4));
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_876d3cef7b0a6bd7e1fb8f230a728582) ^ 0x55)) ^ fp_dh_085b997b52366f602a7525e2de3d45fc[fp_dh_2105d8695f17c8422a3228296125ea91[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_876d3cef7b0a6bd7e1fb8f230a728582) ^ 0x55))] ^ 0xE0]) + 607) - 4;
  (*&v4[8 * (*(off_1F0B0CAE8 + (*(off_1F0B0CC80 + v2) ^ 0x60u) - 8) ^ v2) + 54296])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196A01960@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0xB24]) = v1;
  STACK[0x958] = (a1 - 1483) + STACK[0x958] - 96;
  return (*(v2 + 8 * (((a1 ^ 0x1509) * (v1 == 1906281716)) ^ a1)))();
}

uint64_t sub_196A019E4@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v43 = STACK[0x228] + 120;
  v44 = (v41 ^ a2) + a41;
  STACK[0x988] = v44;
  return (*(v42 + 8 * (v43 ^ (117 * (v44 <= a33)))))(a1, 1906239698);
}

uint64_t sub_196A01A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v15 = (a1 - 843325662) & 0x32440F7D;
  v16 = ((a13 + 482848606) ^ 0xA16BF761) & (2 * ((a13 + 482848606) & 0xB46B8642)) ^ (a13 + 482848606) & 0xB46B8642;
  v17 = (v13 ^ 0x5D547866) & (2 * ((a13 + 482848606) ^ 0xE93FFB61)) ^ ((v15 - 1163332615) ^ (2 * ((a13 + 482848606) ^ 0xE93FFB61))) & ((a13 + 482848606) ^ 0xE93FFB61);
  v18 = ((4 * (v17 ^ 0x45540521)) ^ 0x7551F48C) & (v17 ^ 0x45540521) ^ (4 * (v17 ^ 0x45540521)) & 0x5D547D20;
  v19 = (v18 ^ 0x55507400) & (16 * ((v17 ^ 0x10003800) & (4 * v16) ^ v16)) ^ (v17 ^ 0x10003800) & (4 * v16) ^ v16;
  v20 = ((16 * (v18 ^ 0x8040923)) ^ 0xD547D230) & (v18 ^ 0x8040923) ^ (16 * (v18 ^ 0x8040923)) & 0x5D547D20;
  v21 = v19 ^ 0x5D547D23 ^ (v20 ^ 0x55445000) & (v19 << 8);
  v22 = (a13 + 482848606) ^ (2 * ((v21 << 16) & 0x5D540000 ^ v21 ^ ((v21 << 16) ^ 0x7D230000) & (((v20 ^ 0x8102D03) << 8) & 0x5D540000 ^ 0x9000000 ^ (((v20 ^ 0x8102D03) << 8) ^ 0x547D0000) & (v20 ^ 0x8102D03))));
  v24 = v22 == -1262257148 || (((337 * (v15 ^ 0x649)) ^ 0x54B) & v22) != ((v15 - 1217775535) & 0x4895CDE9) - 3204;
  return (*(v14 + 8 * ((16 * v24) | (32 * v24) | v15)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_196A01C4C@<X0>(int a1@<W8>)
{
  v6 = *(v1 + 4 * (v4 - 1));
  *(v1 + 4 * v4) = ((1566083941 * (v6 ^ (v6 >> 30))) ^ *(v1 + 4 * v4)) - v4;
  v7 = 1283153057 * ((((v5 - 152) | 0xF7E2B4B6154E3E98) - ((v5 - 152) & 0xF7E2B4B6154E3E98)) ^ 0x5E0F27015A963DAFLL);
  *(v5 - 116) = (a1 - 84366432) ^ v7;
  *(v5 - 128) = v7;
  *(v5 - 120) = a1 + 250005995 - v7 - 348;
  *(v5 - 152) = v7 + a1 + 250005995 - 20;
  *(v5 - 148) = (a1 + 250005995) ^ v7;
  *(v3 + 16) = v7 ^ 0x26F;
  *(v3 + 24) = v4 + 1 - v7;
  v8 = (*(v2 + 8 * (a1 + 6390)))(v5 - 152);
  return (*(v2 + 8 * *(v5 - 124)))(v8);
}

uint64_t sub_196A01D78@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v3 = (*(a1 + 8 * (a2 ^ 0x19DD)))();
  v4 = STACK[0x370];
  *(v2 + 24) = 0;
  return sub_1969F31EC(v3, v5, v6, v7, v8, v4);
}

uint64_t sub_196A01DE4@<X0>(unsigned int a1@<W8>)
{
  v4 = ((v2 + 1461) ^ 0x7B8) + 1277424353 + (((*(v1 + 16) ^ 0x8180B1CD) - 1366044888) ^ ((*(v1 + 16) ^ 0x1598F7DC) + 982223159) ^ ((*(v1 + 16) ^ 0x6BE7B9EE) + 1156892421));
  v5 = (a1 > 0xE2EF7DEC) ^ (v4 < 0x1D108213);
  v6 = a1 + 487621139 > v4;
  if (v5)
  {
    v6 = a1 > 0xE2EF7DEC;
  }

  return (*(v3 + 8 * ((22 * !v6) ^ v2)))();
}

void CdfajkOy32ff()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_945f4689927c186922906a70f26a598c ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_6bb4c8a2c0a94389f7d3484ce1392143[fp_dh_a638abeab64ef8dd834670971c7b9d6d[(-91 * (fp_dh_945f4689927c186922906a70f26a598c ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0x4E]) - 182);
  v1 = *(v0 - 4);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))] ^ 0x1D]) + 385);
  v3 = &v5[*(v2 - 4) ^ v1];
  *(v0 - 4) = (810526117 * v3) ^ 0xC67C1AE5E193E855;
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v6[0] = 1575331711 * ((v6 & 0x88FBE953 | ~(v6 | 0x88FBE953)) ^ 0x1B5F83AE) + 1655634431;
  LOBYTE(v2) = -91 * ((*(v2 - 4) - *(v0 - 4)) ^ 0x55);
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_945f4689927c186922906a70f26a598c) ^ 0x55)) ^ fp_dh_6bb4c8a2c0a94389f7d3484ce1392143[fp_dh_a638abeab64ef8dd834670971c7b9d6d[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_945f4689927c186922906a70f26a598c) ^ 0x55))] ^ 0x15]) + 461) - 4;
  (*&v4[8 * (*(off_1F0B0BBB0 + (*(off_1F0B0C120 + v2 - 8) ^ 0xE1u) - 12) ^ v2) + 53664])(v6);
  __asm { BRAA            X9, X17 }
}

void fp_dh_d58ec6074cad13c87163d4ae2a01213a(uint64_t a1)
{
  v1 = *(a1 + 16) - 1283153057 * ((((2 * a1) | 0x82D70306) - a1 + 1049919101) ^ 0x8EB382B4);
  v2 = *(a1 + 8);
  v3 = (*(v2 + 16) >> 3) & 0x3F;
  *(v2 + 24 + v3) = 0x80;
  __asm { BRAA            X13, X17 }
}

uint64_t sub_196A026EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, __int16 a35, char a36)
{
  v39 = v37 % 0xD2u;
  v40 = *(&a36 + (v37 - 13) % 0xD2u);
  v41 = *(&a36 + (v37 + ((2 * v36) ^ 0x1E1Cu) - 739) % 0xD2);
  v42 = (((v40 >> 5) | (8 * v40)) - ((2 * ((v40 >> 5) | (8 * v40))) & 0xFFFFFFDF) + 111) ^ *(&a36 + v39);
  v43 = *(&a36 + (v37 - 155) % 0xD2u);
  *(&a36 + v39) = (((v41 >> 3) | (32 * v41)) ^ 0xFE) + (((v43 >> 1) | (v43 << 7)) ^ 0x86) + ((2 * ((v41 >> 3) | (32 * v41))) & 0xFC) - (v43 & 0xF2) + (((v42 ^ 0x6B) + 119) ^ ((v42 ^ 0xE7) - 5) ^ ((v42 ^ 0xE3) - 1)) + 9;
  return (*(v38 + 8 * ((7 * (v37 != 839)) ^ v36)))();
}

void sub_196A02910()
{
  v4 = STACK[0x330] + 4 * v2;
  v5 = *v4;
  LODWORD(v4) = -1555358357 * ((*(*STACK[0x338] + (*STACK[0x340] & 0xFFFFFFFF91F4D4BCLL)) ^ v4) & 0x7FFFFFFF);
  LODWORD(v4) = v4 ^ WORD1(v4);
  v6 = 4 * ((-1555358357 * v4) >> 24);
  *(v1 + 4 * v2) ^= v5 ^ (v0 - (v3 - 6136) < ~(v3 - 6136)) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + SLODWORD(STACK[0x32C])) + v6 - 4) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + SLODWORD(STACK[0x328])) + v6 - 8) ^ *(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + SLODWORD(STACK[0x324])) + v6 - 12) ^ (v4 * ((v3 ^ 0x12D7) + 493550292)) ^ (-1555358357 * v4) ^ (444360667 * ((-1555358357 * v4) >> 24));
  JUMPOUT(0x196A02A04);
}

uint64_t sub_196A02B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, int a4@<W8>, int8x16_t a5@<Q0>, int8x16_t a6@<Q3>)
{
  v9 = (a2 + (v7 + a4));
  v10 = *v9;
  v11 = v9[1];
  v12 = (a1 + v7);
  *v12 = vaddq_s8(vsubq_s8(v10, vandq_s8(vaddq_s8(v10, v10), a6)), a5);
  v12[1] = vaddq_s8(vsubq_s8(v11, vandq_s8(vaddq_s8(v11, v11), a6)), a5);
  return (*(v8 + 8 * ((a3 + v6 + 3127) | (4 * (v7 == 32)))))();
}

uint64_t fp_dh_2890b633393b9ee10fff2f384e8ab704(_DWORD *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = 654144011 * ((((2 * a1) | 0x8451BABC) - a1 - 1109974366) ^ 0x6EFCA0C2);
  v3 = *a1 + v2;
  v11 = v3 - 489239129 * ((2 * (&v10 & 0x2D69F8C8) - &v10 - 761919691) ^ 0x6BBE2403) - 1567369456;
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v3 ^ 0x30524D5A)) - 4;
  (*&v4[8 * (v3 ^ 0x305255FD)])(&v10);
  v5 = 1621291457 * ((&v10 + 994119083 - 2 * (&v10 & 0x3B410DAB)) ^ 0xD568C32);
  v11 = v3 + v5 - 2019442080;
  v12 = 1866249606 - v5;
  result = (*&v4[8 * (v3 - 810693686)])(&v10);
  v7 = 1618133546;
  if ((v10 - 364443022) > 5 || ((1 << (v10 + 114)) & 0x25) == 0)
  {
    goto LABEL_57;
  }

  v8 = a1[2] ^ v2;
  if (v8 > -264020090)
  {
    if (v8 > 414844453)
    {
      if (v8 <= 1365354753)
      {
        if (v8 > 1003609871)
        {
          if (v8 == 1003609872)
          {
            goto LABEL_56;
          }

          v9 = 1358882382;
        }

        else
        {
          if (v8 == 414844454)
          {
            goto LABEL_56;
          }

          v9 = 698060085;
        }
      }

      else if (v8 <= 1685594512)
      {
        if (v8 == 1365354754)
        {
          goto LABEL_56;
        }

        v9 = 1583597438;
      }

      else
      {
        if (v8 == 1685594513 || v8 == 1858302884)
        {
          goto LABEL_56;
        }

        v9 = 1961130473;
      }
    }

    else if (v8 <= 230926676)
    {
      if (v8 > -26889839)
      {
        if (v8 == -26889838)
        {
          goto LABEL_56;
        }

        v9 = 4476423;
      }

      else
      {
        if (v8 == -264020089)
        {
          goto LABEL_56;
        }

        v9 = -236593372;
      }
    }

    else if (v8 <= 279552725)
    {
      if (v8 == 230926677)
      {
        goto LABEL_56;
      }

      v9 = 234325939;
    }

    else
    {
      if (v8 == 279552726 || v8 == 339343269)
      {
        goto LABEL_56;
      }

      v9 = 386987830;
    }
  }

  else if (v8 > -1061036841)
  {
    if (v8 <= -621537127)
    {
      if (v8 > -844266958)
      {
        if (v8 == -844266957)
        {
          goto LABEL_56;
        }

        v9 = -661873529;
      }

      else
      {
        if (v8 == -1061036840)
        {
          goto LABEL_56;
        }

        v9 = -1015876376;
      }
    }

    else if (v8 <= -420486613)
    {
      if (v8 == -621537126)
      {
        goto LABEL_56;
      }

      v9 = -510297583;
    }

    else
    {
      if (v8 == -420486612 || v8 == -387643333)
      {
        goto LABEL_56;
      }

      v9 = -298393429;
    }
  }

  else if (v8 <= -1560908637)
  {
    if (v8 > -1707090177)
    {
      if (v8 == -1707090176)
      {
        goto LABEL_56;
      }

      v9 = -1699349151;
    }

    else
    {
      if (v8 == -2039147600)
      {
        goto LABEL_56;
      }

      v9 = -1885111177;
    }
  }

  else
  {
    if (v8 > -1309205039)
    {
      if (v8 != -1309205038 && v8 != -1308302750)
      {
        v9 = -1220402307;
        goto LABEL_54;
      }

LABEL_56:
      v7 = 1618133547;
      goto LABEL_57;
    }

    if (v8 == -1560908636)
    {
      goto LABEL_56;
    }

    v9 = -1499486058;
  }

LABEL_54:
  v7 = 1618133547;
  if (v8 != v9)
  {
    v7 = 1618133546;
  }

LABEL_57:
  a1[1] = v7;
  return result;
}

void fp_dh_d5f5852cf44c93dff1cd0b4ab0cef390(uint64_t a1)
{
  v1 = *(a1 + 8) - 1825732043 * ((((2 * a1) | 0x2409D460) - a1 + 1845171664) ^ 0x9292B907);
  v2 = *a1;
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0x24F)) - 4;
  v4 = ((*(v2 + 68) & (((v1 + 1513) | 0xC8) - 1705) ^ 0xAF5CE9A2) + 1029307458) ^ ((*(v2 + 68) & (((v1 + 1513) | 0xC8) - 1705) ^ 0xF53E58CF) + 1731939629) ^ ((*(v2 + 68) & (((v1 + 1513) | 0xC8) - 1705) ^ 0x5A62B16D) - 932731761);
  *(v2 + v4 + 1845160476) = 108;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_196A05E50@<X0>(int a1@<W8>)
{
  STACK[0xB08] = v1;
  v2 = STACK[0x728];
  STACK[0xB10] = STACK[0x728];
  return (*(STACK[0x248] + 8 * ((3358 * (v1 - v2 > ((a1 + 1711) | 0x400u) + ((2 * a1) ^ 0x624u) - 3857)) ^ a1)))();
}

uint64_t sub_196A05EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char a13, char *a14, char *a15, unsigned int a16, int a17, uint64_t a18)
{
  v21 = 1283153057 * ((&a14 + 1863255037 - 2 * (&a14 & 0x6F0F03FD)) ^ 0x20D700CA);
  a18 = v18;
  a14 = &a13;
  a15 = &a10;
  a16 = 1312495670 - v21;
  a17 = v21 + v20 - 1416;
  v22 = (*(v19 + 8 * (v20 ^ 0x113C)))(&a14);
  return (*(v19 + 8 * (((*(v18 + 24) == (v20 ^ 0x719F86DC)) * ((v20 - 1937116393) & 0x73760FF8 ^ 0x13A8)) ^ v20)))(v22);
}

uint64_t sub_196A0603C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, int a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  v34 = ((a33 & 0x3F ^ 0xD3D3F6EC) - 22497688) ^ ((a33 & 0x3F ^ 0x1CA13A9F) + 836401685) ^ (((((a21 + 659902738) & 0xD8AAADED) - 814563509) ^ a33 & 0x3F) - 502690567);
  *(&a24 + v34 - 763052172) = 108;
  return (*(v33 + 8 * ((1022 * (v34 - 763052228 < 0xFFFFFFC8)) ^ (a21 - 3442))))(a1, a2, a3);
}

void sub_196A06104()
{
  v5 = STACK[0x680];
  v6 = STACK[0x680] + 16;
  *v5 = 0x285020DC00000040;
  v5[1] = v6;
  v7 = v5 + 34;
  v5[34] = 0x285020DC00000040;
  v5[35] = v5 + 36;
  STACK[0x330] = (v5 + 68);
  v5[68] = 0x285020DC00000040;
  v5[69] = v5 + 70;
  STACK[0x338] = (v5 + 102);
  v5[102] = 0x285020DC00000040;
  v5[103] = v5 + 104;
  STACK[0x340] = (v5 + 136);
  v5[136] = 0x285020DC00000040;
  v5[137] = v5 + 138;
  v8 = STACK[0x3E8] + 4;
  v9 = v1 + 2016;
  v10 = 998242381 * ((-1643299935 - (v2 | 0x9E0D3BA1) + (v2 | 0x61F2C45E)) ^ 0xCB9D5C88);
  *(v4 - 192) = v8;
  *(v4 - 184) = v5;
  *(v4 - 208) = (((v0 ^ 0xF76E48A2) + 143767390) ^ ((v0 ^ 0xDC5B20DE) + 598007586) ^ ((v0 ^ 0x2EE0B1D5) + ((v1 - 2085416724) & 0x7C4CF7FF) - 786483664)) - v10 + 1629054912;
  *(v4 - 204) = v1 + 2016 + v10;
  v11 = v1 + 2965;
  (*(v3 + 8 * (v1 + 2965)))(v4 - 208);
  v12 = v0 ^ 0x5D5D9A9u;
  v13 = v8 + v12;
  v14 = 998242381 * ((((2 * (v4 - 208)) | 0xCB9A9940) - (v4 - 208) - 1707953312) ^ 0xCFA2D476);
  *(v4 - 192) = v13;
  *(v4 - 184) = v7;
  *(v4 - 208) = (((v0 ^ 0xBF869A6C) + 1081697684) ^ ((v0 ^ 0x87F674D9) + 2013891367) ^ ((v0 ^ 0x3DA5371C) - 1034237724)) - v14 + 1629054912;
  *(v4 - 204) = v1 + 2016 + v14;
  v15 = v1 ^ 0x15AB;
  (*(v3 + 8 * v15))(v4 - 208);
  v16 = 998242381 * ((((v4 - 208) | 0x564D3C3) + (~(v4 - 208) | 0xFA9B2C3C)) ^ 0xAF0B4B14);
  v17 = STACK[0x330];
  *(v4 - 192) = v13 + v12;
  *(v4 - 184) = v17;
  *(v4 - 208) = (((v0 ^ 0x729A86D1) - 1922729681) ^ ((v0 ^ 0x83BF5345) + 2084613307) ^ ((v0 ^ 0xF4F00C3D) + 185594819)) - v16 + 1629054912;
  *(v4 - 204) = v9 + v16;
  (*(v3 + 8 * v11))(v4 - 208);
  v18 = v13 + v12 + v12;
  v19 = 998242381 * ((((v4 - 208) | 0x78BB6D98) - ((v4 - 208) & 0x78BB6D98)) ^ 0xD2D4F54E);
  v20 = STACK[0x338];
  *(v4 - 192) = v18;
  *(v4 - 184) = v20;
  *(v4 - 208) = (((v0 ^ 0xC822422D) + 937278931) ^ ((v0 ^ 0x499D3D91) - 1235041681) ^ ((v0 ^ 0x846AA615) + 2073385451)) - v19 + 1629054912;
  *(v4 - 204) = v9 + v19;
  (*(v3 + 8 * v15))(v4 - 208);
  v21 = 998242381 * ((v4 + 462666261 - 2 * ((v4 - 208) & 0x1B93BAE5)) ^ 0xB1FC2233);
  *(v4 - 208) = (((v0 ^ 0xC1424F28) + 1052618968) ^ ((v0 ^ 0x78EA621C) - 2028626460) ^ ((v0 ^ 0xBC7DF49D) + 1132596067)) - v21 + 1629054912;
  *(v4 - 204) = v9 + v21;
  v22 = STACK[0x340];
  *(v4 - 192) = v18 + v12;
  *(v4 - 184) = v22;
  (*(v3 + 8 * v15))(v4 - 208);
  JUMPOUT(0x1969EAF18);
}

uint64_t sub_196A06570()
{
  v2 = STACK[0x63C];
  STACK[0x958] -= 80;
  return (*(v0 + 8 * (((v2 == 1906281716) * (v1 - 1714)) ^ (v1 - 3198))))();
}

uint64_t sub_196A06754()
{
  v2 = STACK[0x4B0];
  STACK[0x618] = STACK[0x4B0];
  return (*(v1 + 8 * (((v2 != 0) * ((v0 + 1747870662) & 0x97D19E1D ^ 0xE1E)) ^ v0)))();
}

uint64_t sub_196A0683C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, int a12)
{
  v14 = (((a12 - 1754063805) ^ 0xBDBFD4E3) + 1217986276) ^ (a12 - 1754063805) ^ (((a12 - 1754063805) ^ 0xE0802B20) + 363266337) ^ (((a12 - 1754063805) ^ 0x3EBFFFF7) - 879176200) ^ ((a9 ^ 0x9C7FFCAA) + ((a12 - 1754063805) ^ 0x6958D5CB));
  v16 = (~v14 & 0xF) == 0 && v14 != ((v12 - 1442831492) & 0x55FFDAE5 ^ 0xAD8C75E);
  return (*(v13 + 8 * ((83 * v16) ^ v12)))(a1, a2, a3, a4, a5, a6, a7, a8, a10);
}

uint64_t sub_196A06A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, int a20, uint64_t a21, uint64_t a22)
{
  v29 = v25 + 32 * v26;
  v30 = *(v29 + 8);
  v31 = (&a19 ^ 0x651AFB4B) * v23;
  v32 = (*v29 ^ (v28 + 2013259041)) - v31 + ((2 * *v29) & 0xEFFFD762) - 566878497;
  a21 = a15;
  a22 = v30;
  a19 = v32;
  a20 = (v28 + 3911) ^ v31;
  (*(v27 + 8 * (v28 ^ 0x1CEB)))(&a19);
  v33 = *(v29 + 24);
  v34 = ((&a19 + v22 - 2 * (&a19 & v22)) ^ 0x5167320F) * v23;
  a19 = (*(v29 + 16) ^ 0xDEBE2BBA) - v34 + ((2 * *(v29 + 16)) & 0xBD7C5774) + 2004344534;
  a20 = (v28 + 3911) ^ v34;
  a21 = a15;
  a22 = v33;
  v35 = (*(v27 + 8 * (v28 + 5099)))(&a19);
  return (*(v27 + 8 * ((122 * (v24 <= (v26 + 1))) ^ v28)))(v35);
}

uint64_t sub_196A06BBC(uint64_t a1)
{
  if (v2 == 41591)
  {
    return (*(STACK[0x248] + 8 * ((v3 - 1491) ^ (2 * (v1 == -1720256289)))))(a1, 1906239698);
  }

  if (v2 == 26075 || v2 == 45445)
  {
    JUMPOUT(0x1969C3190);
  }

  return (STACK[0x6E0])();
}

uint64_t sub_196A06D48(uint64_t a1)
{
  v2 = STACK[0x228] - 2744;
  v3 = STACK[0x228] - 2123;
  LOBYTE(STACK[0x64F]) = v1 == -2127722562;
  return (*(a1 + 8 * (((v2 ^ 0x34E) * (v1 != -2127722562)) ^ v3)))();
}

void sub_196A06D8C(int a1@<W8>, uint64_t a2, __int128 a3, int a4)
{
  v6 = ((-603627865 - (&a3 | 0xDC055EA7) + (&a3 | 0x23FAA158)) ^ 0x6C22A26F) * a1;
  HIDWORD(a3) = 0;
  a4 = v4 - v6 - 4421;
  LODWORD(a3) = v6 - 1933976395;
  *(&a3 + 4) = v6 + 436188070;
  (*(v5 + 8 * (v4 ^ 0xF48u)))(&a3);
  JUMPOUT(0x196A06E14);
}

uint64_t sub_196A06EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  STACK[0x788] = 0;
  STACK[0x530] = 0;
  v62 = (*(v61 + 8 * (v60 + 1558)))(8, 0x1000040789AEA99);
  v63 = *(v61 + 8 * (((v62 == 0) * ((55 * ((v60 - 1225754907) & 0x490F75AF ^ 0x134)) ^ 0xCE2)) ^ v60));
  STACK[0x248] = v61;
  return v63(v62, v64, v65, v66, v67, v68, v69, v70, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60);
}

uint64_t sub_196A06F84@<X0>(unint64_t a1@<X8>)
{
  v9 = (((v1 << (v5 - 27)) & 0x5BBFABFFFCFEFBC8) + (v1 ^ 0xADDFD5FFFE7F7DE4) + v2);
  v10 = (v9[0x52202A000180821CLL] << 24) | (v9[0x52202A000180821DLL] << 16) | (v9[((v4 - 3484) | 0x814u) ^ 0x52202A0001808C02] << 8);
  v11 = (v10 | v9[0x52202A000180821FLL]) - 1720256293 - 2 * ((v10 | v9[0x52202A000180821FLL]) & 0x1976F8DF ^ v9[0x52202A000180821FLL] & 4);
  v12 = ((2 * (v1 + 4)) & 0x3D9FFD8FE71EBA6ELL) + ((v1 + 4) ^ 0xDECFFEC7F38F5D37) + v2 + 0x213001380C70A2C9;
  v13 = (_byteswap_ushort(*v12) - 2 * (_byteswap_ushort(*v12) & 0x180E ^ *(v12 + 1) & 2) + 6168);
  switch(v13)
  {
    case 18659:
      STACK[0x568] = v2 + v3;
      STACK[0x918] = a1;
      return (*(v7 + 8 * (((((v11 == -1720256293) ^ (v8 - 1)) & 1) * (((v8 - 2460) | 0x11C) - 1314)) ^ (v8 + 918))))();
    case 40085:
      return (*(v7 + 8 * (((v8 + 4492) * (v6 == -1720256301)) ^ (v8 + 386))))();
    case 36743:
      return (*(v7 + 8 * ((26 * (((v6 == -1720256289) ^ (-59 * (v8 ^ 0xB))) & 1)) ^ (v8 - 718))))();
    default:
      return sub_19698DF34();
  }
}

void sub_196A071C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  v33 = 753662761 * ((v32 + 1737810228 - 2 * ((v32 - 144) & 0x6794E1C4)) ^ 0x28E1A8F);
  *(v32 - 136) = v33 ^ 0x781DFA5A;
  *(v32 - 132) = (v31 + 738) ^ v33;
  *(v32 - 144) = &a28;
  (*(v28 + 8 * (v31 ^ 0x143C)))(v32 - 144);
  *(v32 - 112) = &a28;
  *(v32 - 104) = v30;
  *(v32 - 144) = &a14;
  *(v32 - 136) = v31 + 1283153057 * ((v32 + 1955219586 - 2 * ((v32 - 144) & 0x748A4912)) ^ 0x3B524A25) + 354;
  *(v32 - 128) = v29;
  *(v32 - 120) = &a14;
  (*(v28 + 8 * (v31 + 3009)))(v32 - 144);
  JUMPOUT(0x196A072A8);
}

void sub_196A073A8(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  JUMPOUT(0x196A073BCLL);
}

uint64_t sub_196A073F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14, uint64_t a15, uint64_t a16, int a17)
{
  v22 = 2 * &a13;
  v23 = 1621291457 * (((v22 | 0xA48B9C3E) - &a13 - 1380306463) ^ 0x64524F86);
  a14 = v23 + 1241;
  LODWORD(a15) = (1122297523 * v19 + 296299868) ^ v23;
  a16 = a10;
  (*(v21 + 54664))(&a13);
  v24 = 753662761 * (((v22 | 0x9CD9DA50) - &a13 + 831722200) ^ 0xAB761663);
  a13 = (v18 ^ 0x5E362FDB) + ((2 * v18) & 0xBC6C5FB6) - v24 - 134227275;
  a14 = v24 ^ 0x15D7;
  a15 = a10;
  a16 = v17;
  v25 = (*(v21 + 54232))(&a13);
  return (*(v21 + 8 * ((1069 * (a17 == v20)) ^ 0xBFB)))(v25);
}

uint64_t sub_196A075E4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t (*a25)(uint64_t))
{
  v28 = 1283153057 * ((((v27 - 136) | 0xAF2F4BB3) + (~(v27 - 136) | 0x50D0B44C)) ^ 0xE0F74885);
  *(v27 - 120) = (v25 + 2924) ^ v28;
  *(v27 - 136) = v28 + (a2 ^ 0xEDFEAD7E) + ((2 * a2) & 0xDBFD5AFC) + 1053390848;
  *(v27 - 128) = a4;
  v29 = (*(v26 + 8 * (v25 + 6741)))(v27 - 136);
  return a25(v29);
}

void sub_196A07834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, unsigned __int8 a14, __int16 a15, unsigned int a16, char *a17)
{
  v23 = *(v17 + 8);
  a16 = (v18 - 5691) ^ (753662761 * (((&a15 | 0xD34D8C48) - (&a15 & 0xD34D8C48)) ^ 0xB6577703));
  a17 = &a11;
  a15 = -1239 * (((&a15 | 0x8C48) - (&a15 & 0x8C48)) ^ 0x7703) + 1560;
  (*(v21 + 8 * (v18 | 0x300)))(&a15);
  v20[130] = (a14 ^ 0xECu) % 0xA;
  *a1 = 1498173510;
  *(a1 + 4) = v19 ^ 0x82;
  *(a1 + 5) = 257;
  *(a1 + 7) = 0;
  *(a1 + 8) = 0x4000000;
  *(a1 + 12) = 2;
  *(a1 + 14) = v20[130] & (((v18 - 54) & 0x6F) - 72);
  *(a1 + 15) = -69;
  v20[1] = 2;
  v20[131] = 0;
  *v23 = a1;
  v24 = *(v17 + 16);
  **(v17 + 56) = 16;
  *v24 = 1;
  JUMPOUT(0x19694D8B4);
}

void sub_196A07958(int a1@<W8>)
{
  if (v2 < 0)
  {
    v2 = -v2;
  }

  **(v1 + 8) = v2 - ((v3 + 998645806) & (2 * v2)) - 1648159379;
  *(v1 + 4) = a1 + 1;
}

uint64_t fp_dh_4c77f553b456ccda090accbf17744818(uint64_t a1)
{
  v1 = *(a1 + 8) - 654144011 * ((a1 + 925799076 - 2 * (a1 & 0x372E92A4)) ^ 0x1BFAEF38);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 & 0x48C280AA));
  v489 = v1 - 86340805;
  v491 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 86340373);
  v3 = *v491;
  v4 = *(v2 - 7);
  v5 = (((v4 ^ 0xF9) + 7) ^ ((v4 ^ 0xC2) + 62) ^ ((v4 ^ 0xDF) + 33)) + ((((2 * v4) & 0xC8 ^ 0x1A) + 88) ^ (((2 * v4) & 0xC8 ^ 0xBD) - 15) ^ (((2 * v4) & 0xC8 ^ 0xA7) - 21)) - 98;
  v6 = v5 & 0x6E ^ 0xDB;
  v7 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0x5257505));
  v8 = *(v7 + 798 + ((v5 ^ (2 * ((v5 ^ 0x78) & (2 * ((v5 ^ 0x78) & (2 * ((v5 ^ 0x78) & (2 * ((v5 ^ 0x78) & (2 * ((v5 ^ 0x78) & (2 * (v6 ^ v5 & 0x16)) ^ v6)) ^ v6)) ^ v6)) ^ v6)) ^ v6))) ^ 0x15u));
  v487 = v7 + 798;
  v9 = v3[4] - ((2 * v3[4]) & 0xD4) - 0x67B7DA23D5355196;
  v10 = -23 * v8 - 16;
  v11 = ((v2[4] - ((2 * v2[4]) & 0x1E0u) - 180971472) << 32) - 0x4000000000;
  v12 = 80 * v8 + 46;
  v13 = v12 & 0x50 ^ 0x43;
  v14 = v13 ^ v10 & 0xFFFFFFC6 ^ 0x7B ^ (v10 ^ 0x10) & (2 * ((v10 ^ 0x10) & (2 * ((v10 ^ 0x10) & (2 * ((v10 ^ 0x10) & 0x16 ^ v10 & 0xFFFFFFC6 ^ 0x7B)) ^ v10 & 0xFFFFFFC6 ^ 0x7B)) ^ v10 & 0xFFFFFFC6 ^ 0x7B)) ^ (v12 ^ 0x52) & (2 * ((v12 ^ 0x52) & (2 * ((v12 ^ 0x52) & (2 * ((v12 ^ 0x52) & (2 * ((v12 ^ 0x40) & (2 * v13) | v13)) ^ v13)) ^ v13)) ^ v13));
  v15 = v10 ^ v12;
  v485 = v2[5];
  v16 = ((v485 - ((2 * v485) & 0xFFCF) + 28647) ^ 0x9018) & (((((*v491)[16] - ((2 * (*v491)[16]) & 0x14E)) << 8) - 22784) ^ 0xF29C) ^ ((v485 - ((2 * v485) & 0xFFCF) + 28647) & 0x2A63 | 0x8000);
  v17 = v16 & 0x2CC3;
  v18 = ((v2[2] - ((2 * v2[2]) & 0x13C)) << 16) + 1100873728;
  v19 = (v16 & 0xD33C ^ 0x982D293191C57CA5) & (*&v18 & 0x910000 ^ 0xD83FBDB9D34FFFBFLL) ^ (*&v18 & 0x100000 | 0x40129488420A5022);
  v20 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0x52575C3));
  v21 = (v19 | 0x204042062C200040) & ((v17 ^ 0x10502D933EBED994) & (*&v18 & 0x6E0000 ^ 0x10D06FB3BEB1FFDFLL) ^ (*&v18 & 0x400000 | 0xA009C3A5408744E6)) ^ v19 & 0x2001818084460ELL;
  v22 = (v9 ^ 0x2282400041055190) & ((v20[10] << 8) ^ 0x22CA6488698FE3FALL) ^ v9 & 0x8800015002000F05;
  v23 = v20[23] << 16;
  v24 = (v22 ^ 0xE833A610BBEC6D65) & (v23 ^ 0xFFFFFFFFFFECFFFFLL) ^ v23 & 0x9C0000;
  HIDWORD(v25) = v8;
  LODWORD(v25) = (v14 << 25) ^ (v15 << 24);
  v26 = (v22 ^ 0x450721AFE3644953) & (v23 ^ 0xFFFFFFFFFFECFFFFLL) ^ v23 & 0x140000;
  v27 = ((v26 ^ 0xC9557F0A5D59A4EDLL) + 0x7C255915DB857112) ^ ((v26 ^ 0x1CEE54CA24CD3D95) - 0x56618D2A5DEE1796) ^ ((v26 ^ 0x3A766FB7F16F2ED1) - 0x70F9B657884C04D2);
  v28 = (((v24 ^ 0x143377CE0FCDA67) - 0x3F4DED0EF406D6E4) ^ ((v24 ^ 0xDD4952AA1F0C9BADLL) + 0x1CB87727F40968D2) ^ ((v24 ^ 0x9EF3A61E2F83D255) + 0x5F028393C486212ALL)) - v27 + 0x3AD2AD6F83E5D658;
  v29 = ((v28 ^ 0x29467BD8264EAF2BLL) + 0x35A7B56B68858433) ^ v28 ^ ((v28 ^ 0x587A79D58B2027A1) + 0x449BB766C5EB0CB9) ^ ((v28 ^ 0x498FDCBA23AFA323) + 0x556E12096D64883BLL) ^ ((v28 ^ 0x5BADEFFB3FF5FF4FLL) + 0x474C2148713ED457);
  LODWORD(v28) = (v20[12] >> 1) | (v20[12] << 7);
  v30 = (((v25 >> 27) << 40) & 0x690000000000 ^ 0x73095F83EAC308ALL ^ (((v25 >> 27) << 40) ^ 0x7FFFCFFFFFFFFFFLL) & (v21 & 0x907161A52EF9A160 ^ 0x2B4B79D5D7AE6678 ^ (v21 ^ 0xF84004801020804) & ((v20[25] << 24) ^ 0x2F8C8E5AC2065E9FLL))) & (v11 ^ 0x2C9680FFFFFFFFFLL) ^ v11 & 0x4309D2D00000000;
  v31 = v27 + 0x18D5658A37E10DADLL + ((((2 * v29) ^ 0x3DA93A0248BBF5C6) + 0x27DC7E0EFEAD346FLL) ^ (((2 * v29) ^ 0x7DCDC632E5D4746ALL) + 0x67B8823E53C2B5C3) ^ (((2 * v29) ^ 0x86589EA9CF062860) - 0x63D2255A86EF1637));
  LOBYTE(v21) = (*v491)[20];
  v32 = (-5 - v21) & 0xE0 | 0x1D;
  LOBYTE(v21) = v21 + 4;
  v33 = v32 ^ v21 & 0xBA;
  LOBYTE(v22) = (v21 ^ 0x60) & (2 * ((v21 ^ 0x60) & (2 * ((v21 ^ 0x60) & (2 * ((v21 ^ 0x60) & (2 * ((v21 ^ 0x60) & (2 * ((v21 ^ 0x60) & (2 * v33) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33)) ^ v33;
  LOBYTE(v15) = (((v28 ^ 0xCD) - 28) ^ ((v28 ^ 0x44) + 107) ^ ((v28 ^ 0xC3) - 18)) + (((v28 ^ 0x35) - 78) ^ ((v28 ^ 0x7A) - 1) ^ ((v28 ^ 0x65) - 30)) + 54;
  v34 = v15 & 0x2C ^ 0x5F;
  LOBYTE(v29) = (v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & (2 * ((v15 ^ 0x36) & 0x1A ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34)) ^ v34;
  v35 = ((v3[19] - ((2 * v3[19]) & 0xB4)) << 7) + 0x2254B3C34345AD00;
  LOBYTE(v28) = *(v7 + 5 + (((v20[12] >> 1) | (v20[12] << 7)) ^ 0x2FLL)) ^ v15 ^ (2 * v29);
  v481 = ((((*v491)[6] - ((2 * (*v491)[6]) & 0x1BCu) + 742) << 53) - 0x100000000000000) ^ __ROR8__(v2[1] - ((2 * v2[1]) & 0x148) + 0x722D2E4F33885EA4, 3) ^ (32 * v30) ^ 0xA36DD24ECB116E6DLL;
  v36 = -85 * (((v28 ^ 0x46) + 38) ^ ((v28 ^ 0x96) - 10) ^ ((v28 ^ 0x4F) + 45)) + 51;
  LOBYTE(v27) = v36 & 6 ^ 0x2C;
  v37 = v31 ^ (v20[22] << 32) ^ ((v31 ^ 0x21A2B173DD83095FLL) - 0x6E795FFBC704D137) ^ ((v31 ^ 0xB87F37380BB28A08) + 0x85B264FEECAADA0) ^ ((v31 ^ 0xB1DFB699320926A4) + 0x1FBA7EED7710134) ^ ((v31 ^ 0x67D9DE5AFEBF7D9BLL) - 0x280230D2E438A5F3) ^ ((v36 ^ (2 * ((v36 ^ 0x4C) & (2 * ((v36 ^ 0x4C) & (2 * ((v36 ^ 0x4C) & (2 * ((v36 ^ 0x4C) & (2 * ((v36 ^ 0x4C) & (2 * v27) ^ v27)) ^ v27)) ^ v27)) ^ v27)) ^ v27))) << 24);
  v38 = v20[37] << 40;
  v39 = (v37 ^ 0x3C9EE0A1081D848) & (v38 ^ 0x3CD1B2AB389DC5DLL) ^ v37 & 0x3CD082AB389DC5DLL;
  v40 = ((v38 ^ 0x962CD48CE76DC9A9) + 0x5DA93F0800905EF0) ^ ((v38 ^ 0x1DC6F03630AEA0BALL) - 0x29BCE44D28ACC803) ^ ((v38 ^ 0x8BEA37BAD7C36913) + 0x406FDC3E303EFE56);
  v41 = ((v37 ^ 0xA524C88A3F14C883) - 0x32826601F3D5ECCFLL) ^ ((v37 ^ 0x92A2A8449A5A93FFLL) - 0x50406CF569BB7B3);
  v42 = (v37 ^ 0x785D8E55B9C98314) + 0x1004DF218AF758A8;
  LODWORD(v37) = *(v7 + 798 + ((v21 ^ (2 * v22)) ^ 0x21u));
  v43 = v41 ^ v42;
  LODWORD(v21) = -23 * v37 + 120;
  LODWORD(v42) = v37 & 2 | v21 & 0xFFFFFF88 | 1;
  v44 = ((((v3[11] - ((2 * v3[11]) & 0x88u) + 122) << 55) - 0x1B00000000000000) ^ 0xB16B368A996275B9) & ((v20[7] << 47) ^ 0xFFF6B7EAF9E37FB9) | (v20[7] << 47) & 0x14800000000000;
  v45 = v40 + v43 - ((((2 * v39) ^ 0x9CD0591B8FE312ACLL) + 0xDC3E824BB75DDA3) ^ (((2 * v39) ^ 0xDA37090B9C60E106) + 0x4B24B834A8F62E09) ^ (((2 * v39) ^ 0x417540043280433ALL) - 0x2F990EC4F9E973CBLL)) - 0x57400400F7C8B9A9;
  v46 = (v45 ^ 0xFABECEA7E1071F84) & (2 * (v45 & 0xFAB8ECB7F5A79E25)) ^ v45 & 0xFAB8ECB7F5A79E25;
  v47 = ((2 * (v45 ^ 0x3BCEDFCC494C1B86)) ^ 0x82EC66F779D70B46) & (v45 ^ 0x3BCEDFCC494C1B86) ^ (2 * (v45 ^ 0x3BCEDFCC494C1B86)) & 0xC176337BBCEB85A2;
  v48 = (v47 ^ 0x8064227338820100) & (4 * v46) ^ v46;
  v49 = ((4 * (v47 ^ 0x41121108842884A1)) ^ 0x5D8CDEEF3AE168CLL) & (v47 ^ 0x41121108842884A1) ^ (4 * (v47 ^ 0x41121108842884A1)) & 0xC176337BBCEB85A0;
  v50 = (v49 ^ 0x150016AB0AA0480) & (16 * v48) ^ v48;
  v51 = ((16 * (v49 ^ 0xC02632110C418123)) ^ 0x176337BBCEB85A30) & (v49 ^ 0xC02632110C418123) ^ (16 * (v49 ^ 0xC02632110C418123)) & 0xC176337BBCEB85A0;
  v52 = (v51 ^ 0x162333B8CA80000) & (v50 << 8) ^ v50;
  v53 = (((v51 ^ 0xC014004030438583) << 8) ^ 0x76337BBCEB85A300) & (v51 ^ 0xC014004030438583) ^ ((v51 ^ 0xC014004030438583) << 8) & 0xC176337BBCEB8500;
  v54 = v52 ^ 0xC176337BBCEB85A3 ^ (v53 ^ 0x40323338A8810000) & (v52 << 16);
  v55 = (v54 << 32) & 0x4176337B00000000 ^ v54 ^ ((v54 << 32) ^ 0x3CEB85A300000000) & (((v53 ^ 0x81440043146A04A3) << 16) & 0x4176337B00000000 ^ 0x4004031000000000 ^ (((v53 ^ 0x81440043146A04A3) << 16) ^ 0x337BBCEB00000000) & (v53 ^ 0x81440043146A04A3));
  v56 = ((v20[39] >> 1) & 7 ^ 0x3EBB633258E5E191 ^ ((v44 ^ 0xDDBD5A55E66DF90DLL | (v44 ^ 0x2242A5AA199206F2) & (~v20[39] << 63)) ^ 0xEA6BDE8CF8E4BA4CLL) & ((v20[39] >> 1) ^ 0xFFFFFFFFFFFFFFF6)) & (v35 ^ 0xDDAB4C3CBCBA52FFLL);
  LODWORD(v44) = 80 * v37 + 21;
  LODWORD(v44) = v44 ^ v21 ^ (2 * ((v44 ^ 0x6A) & (2 * ((v44 ^ 0x6A) & (2 * ((v44 ^ 0x6A) & (2 * ((v44 ^ 0x6A) & (2 * (v44 & 0x64)) ^ v44 & 0x64)) ^ v44 & 0x64)) ^ v44 & 0x64 ^ 0x40)) ^ (v42 | v44 & 0x64 ^ 0x40) ^ (v21 ^ 8) & (2 * ((v21 ^ 8) & (2 * ((v21 ^ 8) & (2 * ((v21 ^ 8) & (2 * ((v21 ^ 8) & (2 * (v21 & (2 * (v42 ^ v37 & 2)) ^ v42)) ^ v42)) ^ v42)) ^ v42)) ^ v42))));
  v57 = v35 & 0x2050A28200712880 ^ 0x4773F9BC5B100D64 ^ v56;
  v58 = ((2 * (((v20[36] >> 1) ^ 0x466F3153) & 0x420F1105 ^ ((v20[36] << 31) | 0x21108685u) | ((v20[36] >> 1) ^ 0x466F3153) & 0x460207A)) ^ 0x34F99F53) & (((((v20[36] >> 1) ^ 0xFDA9390466F3153) & 0x81100420F1105 ^ (((v20[36] & 1) << 31) | 0x4020682421108685) | ((v20[36] >> 1) ^ 0xFDA9390466F3153) & 0xFD282900460207ALL) >> 31) ^ 0x600A0897);
  v59 = __ROR8__(v57, 47) ^ (v20[11] << 32);
  LODWORD(v37) = ((((v44 >> 7) & 1 | 0xFFFFFF84) ^ (16 * (v44 >> 3))) & ((2 * v37) & 0xE ^ 0xFFFFFFF5) | (2 * v37) & 0xA) ^ 0xFFFFFFD8;
  LODWORD(v57) = *(v7 + 542 + ((*v491)[5] ^ 0x1BLL)) ^ (*v491)[5];
  v60 = ((v37 >> 4) | (16 * v37)) << 40;
  v61 = v59 & 0xC96C946FFDAE1754;
  v62 = v60 & 0x6B0000000000 ^ v59;
  v63 = (v62 & 0x10030280025028AALL ^ 0xC96CD66FFFEE17F4) & (v61 ^ 0xD04356E27BD03FBALL ^ v60 & 0x940000000000) | v62 & 0x269029100001C001;
  v64 = (v62 | 0xFFFF3FFFFFFFFFFFLL) & ((((v3[10] - ((2 * v3[10]) & 0x126u) + 45226) << 48) - 0x17000000000000) ^ 0xD303587E59EDA14CLL);
  LOBYTE(v21) = (((v58 ^ 0x9D) + 45) ^ ((v58 ^ 0x5F) - 17) ^ ((v58 ^ 0xFD) + 77)) - ((((2 * v58) & 0x20 ^ 0x65) - 104) ^ 0xE) + 50;
  v65 = v21 ^ 0xF3;
  LOBYTE(v53) = ((v21 ^ 0x39) + 25) ^ v21 ^ ((v21 ^ 0xD) + 45) ^ ((v21 ^ 0x19) + 57);
  LODWORD(v62) = (*v20 >> 1) | (*v20 << 7);
  LODWORD(v21) = 65 * (((v57 ^ 1) - 106) ^ ((v57 ^ 0x2E) - 69) ^ ((v57 ^ 0xFFFFFFDE) + 75)) + 94;
  v66 = v21 ^ (2 * ((v21 ^ 0x3C) & (2 * ((v21 ^ 0x3C) & (2 * ((v21 ^ 0x3C) & (2 * ((v21 ^ 0x3C) & (2 * (v21 & 0x3C)) ^ v21 & 0x3C)) ^ v21 & 0x3C)) ^ v21 & 0x3C)) ^ (v21 & 0x3C | 0x40)));
  v67 = v63 ^ 0x89709FD5879F5E53;
  v68 = 0xF6E404B5411F8551 - (((v63 ^ 0xEC50690CA871E945) - 0x6520F6D92FEEB716) ^ ((v63 ^ 0x2CFA0B1D32A9A9B8) + 0x5A756B374AC90815) ^ ((v63 ^ 0x1455B4DF0501AD07) + 0x62DAD4F57D610CACLL));
  v69 = (v68 ^ 0x23AEB18F0611B757) & (2 * (v68 & 0xAB8CB22FA699C706)) ^ v68 & 0xAB8CB22FA699C706;
  v70 = ((2 * (v68 ^ 0x66AF91D10F333357)) ^ 0x9A4647FD5355E8A2) & (v68 ^ 0x66AF91D10F333357) ^ (2 * (v68 ^ 0x66AF91D10F333357)) & 0xCD2323FEA9AAF450;
  v71 = (v70 ^ 0x880201FC00002000) & (4 * v69) ^ v69;
  v72 = ((4 * (v70 ^ 0x45212002A8AA1451)) ^ 0x348C8FFAA6ABD144) & (v70 ^ 0x45212002A8AA1451) ^ (4 * (v70 ^ 0x45212002A8AA1451)) & 0xCD2323FEA9AAF450;
  v73 = (v72 ^ 0x40003FAA0AAD040) & (16 * v71) ^ v71;
  v74 = ((16 * (v72 ^ 0xC923200409002411)) ^ 0xD2323FEA9AAF4510) & (v72 ^ 0xC923200409002411) ^ (16 * (v72 ^ 0xC923200409002411)) & 0xCD2323FEA9AAF450;
  v75 = (v74 ^ 0xC02223EA88AA4400) & (v73 << 8) ^ v73;
  v76 = (((v74 ^ 0xD0100142100B041) << 8) ^ 0x2323FEA9AAF45100) & (v74 ^ 0xD0100142100B041) ^ ((v74 ^ 0xD0100142100B041) << 8) & 0xCD2323FEA9AAF400;
  v77 = v75 ^ 0xCD2323FEA9AAF451 ^ (v76 ^ 0x12322A8A8A00000) & (v75 << 16);
  v78 = (((v64 ^ 0xFA2FD06EA416D71ELL) - 0x38362E5444D7F558) ^ ((v64 ^ 0x5EDCEF41FF26353ALL) + 0x633AEE84E018E884) ^ ((v64 ^ 0xC763675102DD4368) - 0x57A996BE21C612ELL)) - (((v67 ^ v64 ^ 0x3AFFFA6CE678912ELL) + 0x719FBA9F9464C98) ^ ((v67 ^ v64 ^ 0xF12B85926A56F1E2) - 0x33327BA88A97D3A4) ^ ((v67 ^ v64 ^ 0xF5CB6E9BCD857229) - 0x37D290A12D44506FLL)) + 0x11F35477DD32793DLL;
  v79 = (v78 ^ 0x5B2F5B4CB06FD02ALL) & (2 * (v78 & 0x938F626D3A8FD92ALL)) ^ v78 & 0x938F626D3A8FD92ALL;
  v80 = ((2 * (v78 ^ 0x7B3DDB06E164D06ALL)) ^ 0xD16572D7B7D61280) & (v78 ^ 0x7B3DDB06E164D06ALL) ^ (2 * (v78 ^ 0x7B3DDB06E164D06ALL)) & 0xE8B2B96BDBEB0940;
  v81 = (v80 ^ 0xC020104192420000) & (4 * v79) ^ v79;
  v82 = ((4 * (v80 ^ 0x2892892848290940)) ^ 0xA2CAE5AF6FAC2500) & (v80 ^ 0x2892892848290940) ^ (4 * (v80 ^ 0x2892892848290940)) & 0xE8B2B96BDBEB0940;
  v83 = (v82 ^ 0xA082A12B4BA80100) & (16 * v81) ^ v81;
  v84 = ((16 * (v82 ^ 0x4830184090430840)) ^ 0x8B2B96BDBEB09400) & (v82 ^ 0x4830184090430840) ^ (16 * (v82 ^ 0x4830184090430840)) & 0xE8B2B96BDBEB0940;
  v85 = (v84 ^ 0x882290299AA00000) & (v83 << 8) ^ v83;
  v86 = (((v84 ^ 0x60902942414B0940) << 8) ^ 0xB2B96BDBEB094000) & (v84 ^ 0x60902942414B0940) ^ ((v84 ^ 0x60902942414B0940) << 8) & 0xE8B2B96BDBEB0900;
  v87 = v85 ^ 0xE8B2B96BDBEB0940 ^ (v86 ^ 0xA0B0294BCB090000) & (v85 << 16);
  v88 = (v65 - 45) ^ *(v7 + 542 + (v58 ^ 0xFA06F0F7));
  v89 = v68 ^ v67 ^ v78 ^ (2 * ((v77 << 32) & 0x4D2323FE00000000 ^ v77 ^ ((v77 << 32) ^ 0x29AAF45100000000) & (((v76 ^ 0xCC000156010AA451) << 16) & 0xCD2323FE00000000 ^ 0x4C01025400000000 ^ (((v76 ^ 0xCC000156010AA451) << 16) ^ 0x23FEA9AA00000000) & (v76 ^ 0xCC000156010AA451)) ^ v87 ^ (v87 << 32) & 0x68B2B96B00000000 ^ ((v87 << 32) ^ 0x5BEB094000000000) & (((v86 ^ 0x4802902010E20940) << 16) & 0x68B2B96B00000000 ^ 0x4090200000000000 ^ (((v86 ^ 0x4802902010E20940) << 16) ^ 0x396BDBEB00000000) & (v86 ^ 0x4802902010E20940))));
  v90 = (((v64 ^ 0x1316FA8276FD2240) + 0x2EF0FB4769C3FFFALL) ^ ((v64 ^ 0xA8342337A47418F9) - 0x6A2DDD0D44B53ABFLL) ^ ((v64 ^ 0xD8B281CB8B649BF5) - 0x1AAB7FF16BA5B9B3)) - 0x2B9C3250678DE517 + (((v89 ^ 0xFB74EEDB60E27312) - 0x4F96D4099EF58110) ^ ((v89 ^ 0x4212F95934B10414) + 0x90F3C74355909EALL) ^ ((v89 ^ 0x14C9E9D1348020A1) + 0x5FD42CFC35682D5DLL));
  v91 = ((v90 ^ 0x11592C65078C5DF2) - 0x8D54E8C470CAFC8) ^ v90 ^ ((v90 ^ 0x8AC91B766B61A25CLL) + 0x6CBA8660D41EAF9ALL) ^ ((v90 ^ 0xFCD29A01FB9AF083) + 0x1AA1071744E5FD47) ^ ((v90 ^ 0x7ECECFFBD7F7FD17) - 0x6742AD1297770F2DLL);
  LOBYTE(v76) = (((v62 ^ 0xEE) + 62) ^ ((v62 ^ 0x6C) - 64) ^ ((v62 ^ 0xC8) + 28)) + (((v62 ^ 0x41) + 2) ^ ((v62 ^ 0x9D) - 34) ^ ((v62 ^ 0xF6) - 73)) + 14;
  LOBYTE(v58) = v76 & 0xDB ^ 0x3F;
  LOBYTE(v76) = v76 ^ (2 * ((v76 ^ 0x6C) & (2 * ((v76 ^ 0x6C) & (2 * ((v76 ^ 0x6C) & (2 * ((v76 ^ 0x6C) & (2 * ((v76 ^ 0x6C) & (2 * (((2 * v76) & 0x5A ^ 0x36) & (v76 ^ 0x6C) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58)) ^ v58));
  LOBYTE(v58) = 65 * (((v53 ^ v88 ^ 0x3F) + 79) ^ ((v53 ^ v88 ^ 0xB5) - 59) ^ ((v53 ^ v88 ^ 0x66) + 24)) - 12;
  LOBYTE(v78) = v58 & 0xF6 ^ 4;
  LOBYTE(v78) = v58 ^ (2 * ((v58 ^ 0x6C) & (2 * ((v58 ^ 0x6C) & (2 * ((v58 ^ 0x6C) & (2 * ((v58 ^ 0x6C) & (2 * ((v58 ^ 0x6C) & (2 * v78) ^ v78)) ^ v78)) ^ v78)) ^ v78)) ^ v78));
  v92 = v3[1] - ((2 * v3[1]) & 0x9A) + 0x5F5C74965D58344DLL;
  LOBYTE(v58) = *(v7 + 5 + (((*v20 >> 1) | (*v20 << 7)) ^ 0x2FLL)) ^ 0x1A ^ v76 & 0x3E;
  LOBYTE(v67) = (v58 - ((2 * v58) & 0x50) + 40) ^ v76 & 0xC1;
  v93 = (v20[33] ^ 0x13u) << 32;
  *(&v94 + 1) = v91 ^ 0x62E94080F23ALL;
  *&v94 = v91 ^ (v66 << 56) ^ 0x258C000000000000;
  v95 = (((v20[18] << 24) ^ 0x1E634217A9) & ~v93 | v93 & 0xFFFFFFE1FFFFFFFFLL) ^ 0x1E704217A9 | ((-85 * (((v67 ^ 0xE9 ^ -(v67 ^ 0xE9) ^ (124 - (v67 ^ 0x95))) + 124) ^ 0xCF)) << 40) | (((v78 << 16) | 0xFFFFFFFFFE7FFFFFLL) & ((v20[9] << 8) ^ 0x61FBC3DA4E8019D3) & 0xC24080F400 | ((v78 & 0x7F) << 16) & 0xC240DBF400) ^ 0xFB4EF60B22 ^ (v92 ^ 0x2902240F6FLL) & 0x390E240FFFLL & ((((v78 << 16) | 0xFFFFFFFFFE7FFFFFLL) & ((v20[9] << 8) ^ 0x61FBC3DA4E8019D3) & 0xFFFFFFFFFF80FFFFLL | ((v78 & 0x7F) << 16)) ^ 0x210000052CLL);
  v96 = *(v2 - 1);
  v97 = v20[30] ^ 0x13;
  v98 = (((v20[17] ^ 0x13u) << 56) | ((v20[2] ^ 0x13u) << 48)) + v95;
  v99 = (v96 - ((2 * v96) & 0xA11E2D2ELL) - 0x2DA9907EAF70E969) ^ (((v3[9] - 2 * (v3[9] & 0xFu) + 1589) << 48) - 0x26000000000000) ^ (((v3[18] - ((2 * v3[18]) & 0xFFC3u) + 103) << 56) - 0x600000000000000) ^ v45 ^ (2 * v55) ^ 0xE5A22D711BDD2730;
  v100 = ((v20[13] ^ 0x13u) << 56) | ((v20[20] ^ 0x13u) << 48) | ((v20[1] ^ 0x13u) << 40) | ((v20[32] ^ 0x13) << 24) | ((v20[31] ^ 0x13u) << 32) | v97 | ((v20[19] ^ 0x13) << 16) | ((v20[21] ^ 0x13) << 8);
  v101 = (v100 - 2 * (v100 & 0x7E7726BDEF0B5B77 ^ v97 & 4) + 0x7E7726BDEF0B5B73) ^ __ROR8__(v481, 5);
  v102 = v98 ^ v100;
  v103 = v98 ^ v100 ^ 0x6981DB25B8E70D2ALL;
  v104 = v103 & (v98 ^ 0x64C962E53D24D3E4);
  v105 = v99 & (v101 ^ 0x57FED3BFC3DBCE22) ^ v103;
  *&v94 = __ROR8__((v94 >> 47) ^ 0xB5023F8CE3880A83, 17);
  v106 = v99 ^ v94 ^ 0x4C8A9E0C3DEDFC65;
  v107 = v101 ^ 0x70CEC298D9240F81 ^ v106 & (~(2 * v99) + v99);
  v108 = v106 ^ v104;
  v109 = 0x8000000000;
  if (((v99 ^ v94) & 0x8000000000) != 0)
  {
    v109 = 0xFFFFFF8000000000;
  }

  v110 = (v102 ^ 0x967E24DA4718F2D5) & (v101 ^ 0xA8012C403C2431DDLL);
  v111 = v105 ^ 0xCFEDD6D04E634840 ^ v107;
  v112 = v107 ^ v99 ^ ((v109 + v106) ^ 0xFFFFFF7FFFFFFFFFLL) & (v98 ^ 0x9B369D1AC2DB2C1BLL);
  v113 = (v105 ^ 0x2DC9C80E268A629BuLL) >> 7;
  v114 = v98 ^ v110 ^ 0x45BA5D47081D2D31;
  v115 = ((((2 * v108) & 0xE845E332F290CE1ALL) - 0x7422F1997948670DLL) ^ 0xFFFFFFFFFFFFFFFELL) + v108;
  v116 = v114 ^ v108;
  v117 = v112 ^ 0xA1209990D9043365 ^ (v112 >> 39) ^ ((v112 ^ 0xA1209990D9043365) >> 61) ^ (8 * (v112 ^ 0xA1209990D9043365)) ^ ((v112 ^ 0xA1209990D9043365) << 25);
  v118 = v115 ^ __ROR8__(v115, 1) ^ (v115 >> 6) ^ (v115 << (v92 & 0x3A ^ 8) << (v92 & 0x3A ^ 0x32));
  v119 = v116 ^ (v116 >> 10);
  *(&v120 + 1) = v119;
  *&v120 = v119 ^ (v116 << 54);
  v121 = ((((v105 ^ 0x2DC9C80E268A629BLL) << 57) ^ (v105 << 23)) & 0xFFFFFFFFFF800000 | ((v105 ^ 0x2DC9C80E268A629BuLL) >> 41)) ^ 0x71345314D800000 ^ ((v105 ^ 0x2DC9C80E268A629BLL ^ -(v105 ^ 0x2DC9C80E268A629BLL) ^ (v113 - (v105 ^ 0x2DC9C80E268A629BLL) - (v113 ^ -v113 ^ ((v105 ^ 0x2DC9C80E268A629BLL) - (v113 ^ v105 ^ 0x2DC9C80E268A629BLL))))) + v113);
  v122 = __ROR8__(__ROR8__(v116, 54) & 0xFFFFFFFFF80003FFLL ^ 0x1F919C39BA9FE5D2 ^ (v120 >> 37), 27) ^ (v116 << 47);
  v123 = v117 ^ 0x1424133;
  v124 = v117 ^ 0xFFFFFFFFFEBDBECCLL;
  v125 = v111 ^ v121 ^ (v111 << 36) ^ (v111 >> 19) ^ ((v111 >> 28) | (v111 << 45));
  v126 = v122 ^ v121;
  v127 = v117 ^ 0x1424133 ^ v118;
  v128 = (v122 ^ 0x53FCBA43F2338737) & ~v127;
  v129 = v126 ^ 0x53FCBA43F2338737;
  v130 = v127 ^ (v126 ^ 0x53FCBA43F2338737) & (v122 ^ 0xAC0345BC0DCC78C8);
  v131 = v124 & v118 ^ v125;
  v132 = (v126 ^ 0xAC0345BC0DCC78C8) & v125;
  v133 = v123 & ~v125 ^ v129;
  v134 = v128 ^ v123 ^ v131;
  v135 = v133 ^ v131 ^ 0xB9208E071B8932D5;
  v136 = v122 ^ v132 ^ v130 ^ 0x5CE94D0CD7BC19E6;
  *(&v120 + 1) = v130;
  *&v120 = v130 ^ 0xDEDBE286AAB15F6ALL;
  v137 = (v120 >> 1) ^ v130 ^ 0xDEDBE286AAB15F6ALL ^ ((v130 ^ 0xDEDBE286AAB15F6ALL) >> 6) ^ ((v130 ^ 0xDEDBE286AAB15F6ALL) << 58);
  v138 = v134 ^ 0xA02813FE5825BADLL;
  v139 = 8 * (v134 ^ 0xA02813FE5825BADLL);
  v140 = v139 & 0x40000;
  v141 = (v139 & 0x40000 & v134) == 0;
  v142 = ((v134 ^ 0xA02813FE5825BADLL) >> 39) ^ (v134 >> 61);
  if (!v141)
  {
    v140 = -v140;
  }

  v143 = (v142 | (v138 << 25)) ^ v139 & 0xFFFFFFFFFFFBFFFFLL ^ (v140 + v138);
  v144 = v133 ^ 0xA6B052124AE97655 ^ ((v133 ^ 0xA6B052124AE97655) << 23) ^ ((v133 ^ 0xA6B052124AE97655) >> 7) ^ (((v133 ^ 0xA6B052124AE97655) >> 41) | ((v133 ^ 0xA6B052124AE97655) << 57));
  v145 = (v135 >> 28) ^ (v135 >> 19) ^ (v135 << 36) ^ (0x200000000001 * v135 - ((v135 << 46) & (2 * v135))) ^ v144;
  v146 = v136 ^ __ROR8__(v136, 10) ^ (v136 >> 17) ^ (v136 << 47);
  v147 = v143 ^ v137;
  v148 = v137 & ~v143 ^ v145;
  v149 = v146 & ~(v143 ^ v137) ^ v143;
  v150 = v143 & ~v145;
  v151 = v145 & ~(v144 ^ v146);
  v152 = v150 ^ v144 ^ v146;
  v153 = __ROR8__(__ROR8__(__ROR8__(v149, 46) ^ __ROR8__(v148, 46), 59) ^ 0x44B6AA59B5D279DALL, 5);
  v154 = (v147 ^ -v147 ^ ((v144 & ~v146) - (v147 ^ v144 & ~v146))) + (v144 & ~v146);
  v155 = v148 ^ v152 ^ 0x9D2FB4127C41CCALL;
  v156 = ((v153 ^ 0x334673D370B2F478) << (v485 & 0x2E) << (v485 & 0x2E ^ 0x2Eu)) ^ (v153 >> 18) ^ 0x8B1D21FAE104F99CLL;
  v157 = v156 ^ __ROR8__(v156, 61) ^ (v156 >> 39) ^ (v156 << 25);
  v158 = v152 & 0x20;
  v159 = (v152 ^ 0x9BC7CB0371CE90DLL) >> 7;
  if ((v159 & v152 & 0x20) != 0)
  {
    v158 = -v158;
  }

  v160 = v155 ^ __ROR8__(v155, 19) ^ (v155 >> 28) ^ (v155 << 36);
  *(&v161 + 1) = v152 ^ 0x9BC7CB0371CE90DLL;
  *&v161 = v152;
  v162 = __ROR8__((v161 >> 4) & 0xF000000000000007 ^ __ROR8__((v158 + v159) ^ (v152 ^ 0x9BC7CB0371CE90DLL) & 0xFFFFFFFFFFFFFFDFLL, 61) ^ 0x4C591F496D8CE39ELL, 3) ^ __ROR8__(v152 ^ 0x9BC7CB0371CE90DLL, 41);
  v163 = v151 + v146;
  v164 = v151 & v146;
  v165 = v157 & (v162 ^ v160 ^ 0x3674DC16D24E638CLL);
  v166 = v165 ^ 0x100000000000;
  if (!v164)
  {
    v166 = 0xFFFFEFFFFFFFFFFFLL;
  }

  v167 = v163 - 2 * v164;
  v168 = 0x2000000000000000;
  if ((v157 & 0x2000000000000000) != 0)
  {
    v168 = 0xE000000000000000;
  }

  v169 = (v154 ^ 0xD5C9D94976895B35) & 0x400000000000;
  if ((v169 & v167) != 0)
  {
    v169 = -v169;
  }

  v170 = (v169 + v167) ^ (v154 ^ 0xD5C9D94976895B35) & 0xFFFFBFFFFFFFFFFFLL ^ __ROR8__((v169 + v167) ^ (v154 ^ 0xD5C9D94976895B35) & 0xFFFFBFFFFFFFFFFFLL, 17) ^ (((v169 + v167) ^ (v154 ^ 0xD5C9D94976895B35) & 0xFFFFBFFFFFFFFFFFLL) << 54) ^ (((v169 + v167) ^ (v154 ^ 0xD5C9D94976895B35) & 0xFFFFBFFFFFFFFFFFLL) >> 10);
  v171 = v170 ^ v162;
  v172 = v165 & 0x100000000000;
  if ((v165 & 0x100000000000 & (v170 ^ v162)) != 0)
  {
    v172 = -v172;
  }

  v173 = v154 ^ 0x61171F08F2F960A3 ^ (v154 >> 6) ^ __ROR8__(v154 ^ 0x61171F08F2F960A3, 1) ^ ((v154 ^ 0x61171F08F2F960A3) << 58) ^ v157;
  v174 = __ROR8__((v173 ^ 0xFE7BA383DC341A7DLL) & v170 ^ v157, 55);
  v175 = v173 ^ 0x1845C7C23CBE582;
  v176 = v162 ^ v160 ^ 0xC98B23E92DB19C73;
  v177 = ((v168 + v157) ^ 0xDFFFFFFFFFFFFFFFLL) & v175 ^ v176;
  v178 = v177 ^ __ROR8__(v174 ^ 0xA2DAECAF53F88A09, 9);
  v179 = -53 * (v178 >> 61);
  v180 = (v171 ^ 0x3674DC16D24E638CLL | v176) ^ v160;
  v181 = v162 ^ 0xC98B23E92DB19C73;
  v182 = (v172 + (v171 ^ 0xC98B23E92DB19C73)) ^ v166 & v165;
  v183 = v182 ^ v177 ^ 0xD44C8A5A383054BCLL;
  if (v118 == v123)
  {
    v184 = v171 ^ 0xC98B23E92DB19C73;
  }

  else
  {
    v184 = v181;
  }

  v185 = v170 ^ ~v180;
  v186 = v170 & 0x80000000000000;
  v141 = (v185 & v170 & 0x80000000000000) == 0;
  v187 = v185 & 0xEBDE49889CEC2DF3;
  if (!v141)
  {
    v186 = -v186;
  }

  v188 = (v186 + v187) ^ v170 & 0xEB5E49889CEC2DF3;
  v189 = v170 & 0xEBDE49889CEC2DF3;
  v190 = v184 & ~v170 ^ v175;
  v191 = v178 ^ 0x17AC3225D23390B4;
  v192 = v190 ^ 0xB8C75C206030C3E3 ^ (((v187 ^ -v187 ^ (v189 - v188)) + v189) | ~v180 & 0x1421B6776313D20CLL);
  v193 = v183 ^ __ROR8__(v183, 19) ^ (v183 >> 28);
  v194 = ((v192 >> 17) | (v192 << 54)) ^ (v192 << 47) ^ ((v192 >> 10) & 0x2CFA5692E8FF22 ^ v192 & 0x186CFA5692E8FF22 | (v192 >> 10) & 0x1305A96D1700DDLL ^ v192 & 0xE79305A96D1700DDLL);
  v195 = __ROR8__((v191 >> 14) & 0x3FFFFFE000000 ^ __ROR8__(v191 ^ (8 * v191) ^ (((((110 - (v179 ^ 0x80)) ^ v179 ^ 0xEE ^ -(v179 ^ 0xEE)) + 110) ^ (*(v7 + (v179 ^ 0x4DLL) + 272) - ((2 * *(v7 + (v179 ^ 0x4DLL) + 272)) & 0xA2) - 47)) - 44), 39) ^ 0xEB5DEA3A2FA715D7, 25) ^ (v191 << 25);
  v196 = v182 ^ 0xBB7C14E8CBAB9550 ^ ((v182 ^ 0xBB7C14E8CBAB9550) >> 7) ^ ((v182 ^ 0xBB7C14E8CBAB9550) << 23) ^ (((v182 ^ 0xBB7C14E8CBAB9550) >> 41) | ((v182 ^ 0xBB7C14E8CBAB9550) << 57));
  v197 = v196 ^ (v193 + (v183 << 36) - 2 * (v193 & (v183 << 36)));
  v198 = v196 ^ v194;
  v199 = v190 ^ 0x9168644D1B60DBD1 ^ __ROR8__(v190 ^ 0x9168644D1B60DBD1, 1) ^ ((v190 ^ 0x9168644D1B60DBD1) >> 6) ^ ((v190 ^ 0x9168644D1B60DBD1) << 58) ^ v195;
  v200 = v199 ^ 0xD38AEBF5AEF51D17;
  v201 = v199 ^ 0x2C75140A510AE2E8;
  v202 = v199 ^ 0xD38AEBF5AEF51D17 ^ (~(2 * v194) + v194) & v198;
  v203 = v200 & (v195 ^ 0x2C75140A510AE2E8);
  v204 = v197 & 0x100000000;
  if ((v203 & v197 & 0x100000000) != 0)
  {
    v204 = -v204;
  }

  v205 = (v195 ^ 0x2C75140A510AE2E8 | v197) ^ v198;
  v206 = v197 & ~v198;
  v207 = (v204 + v203) ^ v197 & 0xFFFFFFFEFFFFFFFFLL;
  v208 = v201 & v194 ^ v195;
  v209 = v194 ^ v206 ^ 0xF7AD6319A4D1A253;
  v210 = v208 ^ v207;
  v211 = v207 ^ v205;
  v212 = __ROR8__(v210 ^ 0xC5D411FBA41DE116 ^ (8 * (v210 ^ 0xC5D411FBA41DE116)), 61);
  v213 = ((v212 >> 3) ^ (v210 >> 61) | (v212 << 61)) ^ __ROR8__(v210 ^ 0xC5D411FBA41DE116, 39);
  v214 = v209 ^ v202 ^ __ROR8__(v209 ^ v202, 10) ^ ((v209 ^ v202) >> 17) ^ ((v209 ^ v202) << 47);
  v215 = v205 ^ 0xCD40DF990A5DA44BLL ^ __ROR8__(v205 ^ 0xCD40DF990A5DA44BLL, 7) ^ ((v205 ^ 0xCD40DF990A5DA44BLL) >> 41) ^ ((v205 ^ 0xCD40DF990A5DA44BLL) << 23);
  *(&v216 + 1) = v202 ^ 0xE6AFD3A35688678BLL;
  *&v216 = v202;
  v217 = v215 ^ (v211 >> 19) ^ v211 ^ 0x67616EE6882F51DBLL ^ ((v211 ^ 0x67616EE6882F51DBLL) >> 28) ^ ((v211 ^ 0x67616EE6882F51DBLL) << 36) ^ ((v211 ^ 0x67616EE6882F51DBLL) << (v119 & 0x2D) << (45 - (v119 & 0x2Du)));
  v218 = v217 ^ 0xCEC2DDCD105;
  v219 = (v216 >> 6) ^ __ROR8__(((((v202 ^ 0xE6AFD3A35688678BLL) & 1) << 24) | ((v202 ^ 0xE6AFD3A35688678BLL ^ ((v202 ^ 0xE6AFD3A35688678BLL) >> 1)) << 25)) ^ ((v202 ^ 0xE6AFD3A35688678BLL ^ ((v202 ^ 0xE6AFD3A35688678BLL) >> 1)) >> 39) ^ 0xF596DBB01F33CE4ELL, 25) ^ v213 ^ 0x1541E87DF1E7A4B0;
  v220 = v219 ^ 0x8F3C7049B7D05D27 ^ v215 & ~v214;
  v221 = v215 ^ v214;
  v222 = (v219 ^ 0x8F3C7049B7D05D27) & (v213 ^ 0xFFFFFFFFFFFFFFF9) ^ v217 ^ 0xCEC2DDCD105;
  v223 = ((v213 ^ 6 | v217 ^ 0xFFFFF313D2232EFALL) - (v217 ^ 0xEABE1B6E23C48A4CLL ^ v213 ^ 0x1541E87DF1E7A4B0)) ^ v221;
  v224 = v218 & ~v221;
  v225 = v213 ^ (v219 ^ 0x70C38FB6482FA2D8) & v214 ^ v222 ^ 0xC97EC05A7B916DE0;
  v226 = v220 ^ 0xB6014E3F62F5C29BLL;
  v227 = v214 ^ v224 ^ 0x19D6341295E4AA7BLL ^ v220;
  v228 = v222 ^ v223 ^ 0x536D2F0225076AF0 ^ ((v222 ^ v223) >> 28) ^ __ROR8__(v222 ^ v223 ^ 0x536D2F0225076AF0, 19) ^ ((v222 ^ v223 ^ 0x536D2F0225076AF0) << 36);
  v3[16] = (((v228 ^ 0xF022) >> 8) - ((2 * ((v228 ^ 0xF022) >> 8)) & 0x28) - 108) ^ 0x94;
  v229 = v227 ^ (v227 << 47) ^ (v227 >> 10) ^ (v227 << (v92 & 0x36 ^ 4) << (v92 & 0x36 ^ 0x32));
  v2[5] = v228 ^ 0x22;
  v230 = *(v487 + ((((v228 ^ 0x36D2F022) >> 16) - 28) ^ 0x7BLL));
  v231 = v225 ^ __ROR8__(v225, 61) ^ (v225 >> 39);
  v232 = v231 ^ (v225 << 25);
  v233 = v231 - ((2 * v231) & 0x68);
  v234 = (v231 >> 8) + (~(2 * (v231 >> 8)) | 0xD9);
  v235 = v227 >> 17;
  v236 = (v227 >> 17) & 0x100000000;
  if ((v229 & v236) != 0)
  {
    v236 = -v236;
  }

  v237 = v236 + v229;
  v3[6] = (BYTE6(v228) - ((2 * BYTE6(v228)) & 0x68) + 52) ^ 0x34;
  v2[4] = BYTE4(v228) ^ 5;
  v2[1] = HIBYTE(v228);
  v20[10] = v234 + 20;
  v238 = v226 ^ __ROR8__(v226, 1) ^ (v226 >> 6);
  HIDWORD(v239) = v230;
  LODWORD(v239) = (((((-23 * v230) ^ (80 * v230)) & 0x80) - ((18 * v230) & 0x10) + (((-23 * v230) ^ (80 * v230)) & 0x78)) << 24) - 2013265920;
  *(v2 - 7) = BYTE5(v228);
  v20[25] = ((v228 ^ 0x36D2F022) >> 24) - ((2 * ((v228 ^ 0x36D2F022) >> 24)) & 0x26) + 19;
  v2[2] = v239 >> 27;
  v240 = (v232 >> 9) & 0x80 | (v232 >> 17) & 0x7F;
  v241 = (v240 ^ 0xC3) + (v240 ^ 0xA3);
  v3[4] = (v233 - 76) ^ 0xB4;
  LOBYTE(v240) = *(v7 + 5 + (v240 ^ 0xA6));
  v3[11] = (BYTE1(v238) - ((2 * BYTE1(v238)) & 0x10) - 120) ^ 0x88;
  LOBYTE(v240) = 84 - 85 * (v240 ^ v241 ^ 0xB3);
  v242 = v240 & 0x88 ^ 0xB6;
  v20[23] = v240 ^ (2 * ((v240 ^ 0x2C) & (2 * ((v240 ^ 0x2C) & (2 * ((v240 ^ 0x2C) & (2 * ((v240 ^ 0x2C) & (2 * ((v240 ^ 0x2C) & (2 * v242) ^ v242)) ^ v242)) ^ v242)) ^ v242)) ^ v242)) ^ 0x9B;
  v20[22] = BYTE4(v232) - ((2 * BYTE4(v232)) & 0x26) + 19;
  v243 = v232 >> ((v149 >> 46) & 0x30) >> ((v149 >> 46) & 0x30 ^ 0x30);
  v3[18] = (HIBYTE(v232) - ((2 * HIBYTE(v232)) & 0x4E) - 89) ^ 0xA7;
  v244 = v237 ^ v235 & 0xFFFFFFFEFFFFFFFFLL;
  v20[7] = v238 - ((2 * v238) & 0x26) + 19;
  v20[37] = BYTE5(v232) + (~(2 * BYTE5(v232)) | 0xD9) + 20;
  v3[9] = (v243 + (~(2 * v243) | 0x67) + 77) ^ 0x4C;
  v20[12] = BYTE3(v232) - ((2 * BYTE3(v232)) & 0x26) + 19;
  v245 = 65 * (*(v7 + 542 + (BYTE2(v238) ^ 0x1BLL)) ^ BYTE2(v238) ^ 0xF1) + 44;
  LOBYTE(v243) = v245 & 0x10 | 0x26;
  v3[10] = (BYTE6(v238) - 2 * (BYTE6(v238) & 0x1F) + 31) ^ 0x1F;
  v3[19] = (BYTE3(v238) - ((2 * BYTE3(v238)) & 0x62) - 79) ^ 0xB1;
  v20[39] = v245 ^ (2 * ((v245 ^ 0x54) & (2 * ((v245 ^ 0x54) & (2 * ((v245 ^ 0x54) & (2 * ((v245 ^ 0x54) & (2 * ((v245 ^ 0x54) & (2 * v243) ^ v243)) ^ v243)) ^ v243)) ^ v243)) ^ v243)) ^ 3;
  v20[36] = ((v237 ^ v235) >> 16) - ((2 * ((v237 ^ v235) >> 16)) & 0x26) + 19;
  v3[20] = (BYTE5(v238) - ((2 * BYTE5(v238)) & 0xC7) + 99) ^ 0x63;
  v3[5] = (((v238 ^ (v226 << 58)) >> 56) - ((2 * ((v238 ^ (v226 << 58)) >> 56)) & 0xCF) - 25) ^ 0xE7;
  v20[11] = BYTE4(v238) - ((2 * BYTE4(v238)) & 0x26) + 19;
  v20[18] = ((v237 ^ v235) >> 24) - ((2 * ((v237 ^ v235) >> 24)) & 0x26) + 19;
  v20[17] = HIBYTE(v237) + (~(2 * HIBYTE(v237)) | 0xD9) + 20;
  *v20 = BYTE5(v244) - ((2 * BYTE5(v244)) & 0x26) + 19;
  v3[1] = ((v237 ^ v235) - ((2 * (v237 ^ v235)) & 0x9A) + 77) ^ 0x4D;
  v246 = v223 ^ 0x27DC0C0D967AC3ACLL ^ ((v223 ^ 0x27DC0C0D967AC3ACLL) << 23) ^ (((v223 ^ 0x27DC0C0D967AC3ACLL) >> 7) ^ ((v223 ^ 0x27DC0C0D967AC3ACLL) >> 41) | ((v223 ^ 0x27DC0C0D967AC3ACLL) << 57));
  v20[9] = ((v237 ^ v235) >> 8) - ((2 * ((v237 ^ v235) >> 8)) & 0x26) + 19;
  v20[33] = BYTE4(v244) - ((2 * BYTE4(v244)) & 0x26) + 19;
  v20[2] = BYTE6(v237) - ((2 * BYTE6(v237)) & 0x26) + 19;
  LODWORD(v244) = *(v487 + (((v223 ^ 0xAC ^ ((v223 ^ 0x27DC0C0D967AC3ACLL) >> 7) ^ ((v223 ^ 0x27DC0C0D967AC3ACLL) >> 41)) - 28) ^ 0x7BLL));
  v20[32] = BYTE3(v246) + (~(2 * BYTE3(v246)) | 0xD9) + 20;
  v20[19] = ((v223 ^ 0x967AC3AC ^ ((v223 ^ 0x967AC3AC) << 23) ^ ((v223 ^ 0x27DC0C0D967AC3ACLL) >> 7) ^ ((v223 ^ 0x27DC0C0D967AC3ACLL) >> 41)) >> 16) ^ 0x13;
  v20[21] = ((v223 ^ 0xC3AC ^ ((v223 ^ 0x27DC0C0D967AC3ACLL) >> 7) ^ ((v223 ^ 0x27DC0C0D967AC3ACLL) >> 41)) >> 8) ^ 0x13;
  v20[20] = BYTE6(v246) ^ 0x13;
  HIDWORD(v239) = v244;
  LODWORD(v239) = ((-23 * v244) ^ (80 * v244)) << 24;
  v20[13] = HIBYTE(v246) ^ 0x13;
  v20[30] = (v239 >> 27) ^ 2;
  v20[1] = BYTE5(v246) ^ 0x13;
  v20[31] = BYTE4(v246) ^ 0x13;
  *(v2 - 1) = v96 + 1;
  v247 = *v491;
  v248 = (*v491)[2] - ((2 * (*v491)[2]) & 0x12E) + 0x1D33BB104086AE97;
  v486 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0x5257581));
  v249 = *v486 << 32;
  v482 = v249 & 0xFFFFFFC3FFFFFFFFLL | (((*v491)[8] - ((2 * (*v491)[8]) & 0x162u) + 19156) << 48);
  v488 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0x52575E5));
  v484 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 86340653);
  v250 = ((((*v488 - ((2 * *v488) & 0x28)) << 8) + 0xA9263BBA8C71400) ^ 0x513955A1F7FCA733) & (v248 ^ 0xE2CC44EFBF79516CLL) ^ v248 & 0x10080000000CCCLL;
  v483 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v489);
  v251 = ((*v483 << 24) & 0x8D000000 ^ 0xBCC34E20DEC83F25 ^ (v250 & 0xC8243671CBC5C860 ^ 0x70DF21820D456CA0 ^ (v250 ^ 0xA444C1E5A0C40008) & ((((*v484 - ((2 * *v484) & 0x10A)) << 16) + 0x19349ACFB3850000) ^ 0x2EEF534187BF379FLL)) & ((*v483 << 24) ^ 0xFFFFFFFF26FFFFFFLL)) & (v249 ^ 0xFFFFFF26FFFFFFFFLL);
  LOBYTE(v250) = 121 * *(v2 - 10) + 66;
  LOBYTE(v249) = v250 & 0xDE ^ 0x90;
  v252 = (v250 ^ 0x3C) & (2 * ((v250 ^ 0x3C) & (2 * ((v250 ^ 0x3C) & (2 * ((v250 ^ 0x3C) & (2 * ((v250 ^ 0x3C) & (2 * v249) ^ v249)) ^ v249)) ^ v249)) ^ v249)) ^ v249;
  v253 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 86340754);
  v254 = v253 + 520;
  LODWORD(v249) = *(v253 + 520 + (v2[6] ^ 0x68));
  v255 = 91 * v249 - 114;
  v256 = v255 & 0xFFFFFFFE ^ 0xFFFFFFC6;
  v257 = v255 ^ (2 * ((v255 ^ 0x70) & (2 * ((v255 ^ 0x70) & (2 * ((v255 ^ 0x70) & (2 * ((v255 ^ 0x70) & (2 * ((v255 ^ 0x70) & (2 * v256) ^ v256)) ^ v256)) ^ v256)) ^ v256)) ^ v256));
  LOBYTE(v250) = v250 ^ (2 * v252) ^ 0x21;
  v258 = v257 ^ (v257 >> 4) ^ (v257 >> 2);
  v259 = *(v2 - 11) - ((2 * *(v2 - 11)) & 0x15C) + 863649198;
  LOBYTE(v258) = 13 - 33 * (((v258 ^ 0x16) - 40) ^ ((v258 ^ 0x71) - 79) ^ ((v258 ^ 0x37) - 9));
  v480 = v253 - 9;
  LODWORD(v250) = *(v253 - 9 + v250);
  v260 = ((v250 >> 6) | (4 * v250)) - ((2 * ((v250 >> 6) | (4 * v250))) & 0x26);
  LOBYTE(v250) = v258 & 0x1B ^ 0xAB;
  LOBYTE(v256) = v258 ^ (2 * ((v258 ^ 0x44) & (2 * ((v258 ^ 0x44) & (2 * ((v258 ^ 0x44) & (2 * ((v258 ^ 0x44) & (2 * ((v258 ^ 0x44) & (2 * (((2 * v258) & 0xA ^ 0x5E) & (v258 ^ 0x44) ^ v250)) ^ v250)) ^ v250)) ^ v250)) ^ v250)) ^ v250)) ^ 0x1B;
  v261 = ((v247[3] - ((2 * v247[3]) & 4u) + 39226) << 48) - 0x38000000000000;
  v262 = v20[15];
  v263 = (((((v20[34] << 24) ^ 0x20772A61) & (v259 ^ 0xCC8D525B) | v259 & 0x59E) ^ 0xAED021CA) & ((v20[3] << 16) ^ 0xFFEC7FFF) ^ ((v20[3] << 16) & 0x580000 | 0x74A09D0F)) & ((v262 << 8) ^ 0xFFFFECFF) ^ (v262 << 8) & 0x6C00;
  v264 = v256 << (v249 & 0x20) << (v249 & 0x20 ^ 0x20);
  v265 = v263 & 0xAB74B362;
  v266 = v264 & 0x2E0000009DLL ^ v263 & 0x548B4C9D;
  v267 = *(v2 - 8);
  v268 = v264 & 0xD100000062;
  LODWORD(v264) = 91 * *(v253 + 520 + ((*v491)[17] ^ 0x68)) - 27;
  v269 = v264 & 0xFFFFFF8F ^ 0x5A;
  v270 = v264 ^ (2 * ((v264 ^ 0x1A) & (2 * ((v264 ^ 0x1A) & (2 * ((v264 ^ 0x1A) & (2 * ((v264 ^ 0x1A) & (2 * ((v264 ^ 0x1A) & (2 * ((v264 ^ 0x12) & (2 * v264) & 0x36 ^ v269)) ^ v269)) ^ v269)) ^ v269)) ^ v269)) ^ v269));
  v271 = ((*v2 - ((2 * *v2) & 0x6Cu) - 890627776) << 32) - 0xA00000000;
  v272 = (((v265 ^ 0xA7D6B589691BB8B0 ^ v268) & ((v20[8] << 40) ^ 0xA7DEA6FFFF7FBBFBLL) | (v20[8] << 40) & 0x4A0000000000) ^ 0xE5222C08B071AB62) & (v266 ^ 0xFFFFFFFFBFFCFBF3) ^ v266 & 0x2E04814C0DLL;
  LODWORD(v266) = (2 * ((v260 + 19) ^ (16 * (v260 + 19)))) | (((v260 + 19) ^ ~(16 * (v260 + 19))) >> 7) & 1;
  LOBYTE(v266) = (((v266 ^ 0x83) - 33) ^ ((v266 ^ 0xA1) - 3) ^ ((v266 ^ 0x9B) - 57)) + 79;
  v273 = (v266 & 0xCC | 0x31) ^ v266 & 0xE2;
  LOBYTE(v266) = v266 ^ (2 * ((v266 ^ 0x4C) & (2 * ((v266 ^ 0x4C) & (2 * ((v266 ^ 0x4C) & (2 * ((v266 ^ 0x4C) & (2 * ((v266 ^ 0x4C) & (2 * ((v266 ^ 0x4C) & (2 * v273) ^ v273)) ^ v273)) ^ v273)) ^ v273)) ^ v273)) ^ v273));
  v274 = (v272 & 0xE0C8095E5690 ^ 0x18419D1D6140E15BLL) & (v261 & 0x4B000000000000 ^ 0x9863FFDF6BFEF7FBLL) | v261 & 0xA000000000000;
  v275 = ((*(v2 - 5) - ((2 * *(v2 - 5)) & 0x9Au) + 234) << 56) - 0x1D00000000000000;
  v276 = (v272 & 0x140254A10064 ^ 0x14F5844205945094) & (v261 & 0xB4000000000000 ^ 0x1445944255B550F4) | v272 & 0xB35A200A90BLL;
  v277 = (v274 ^ 0xC32F418AFAE48073) & (v276 ^ 0xEFAA639C8E4A2F41) | v276 & 0x90032064018847;
  v278 = v266 << 8;
  v279 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v489 + 337);
  v280 = v270 ^ ((v270 & 0xF0) >> 2);
  LODWORD(v265) = ((v270 ^ 0xE2) >> 6) | (4 * (v270 ^ 0xFFFFFFE2));
  v281 = (v277 ^ 0x2492200800041E03) & ((((v267 - ((2 * v267) & 0xFFFFFFFB) + 60) << 56) - 0x3F00000000000000) ^ 0x81BA291997941F83);
  v282 = v277 & 0x8345D6E6686BE07CLL;
  LODWORD(v265) = v280 & 0xFFFFFFFC ^ v265;
  LODWORD(v277) = (v265 ^ ((v265 ^ 0x13) + 24) ^ ((v265 ^ 0xB) + 16) ^ 0xFFFFFFFB) - (((v265 ^ 0xFFFFFFF7) + 110) ^ ((v265 ^ 0x3E) - 91) ^ ((v265 ^ 0xFFFFFFE8) + 115)) - 115;
  v283 = (v277 & 0xFFFFFFC7 | 0x28) ^ v277 & 0xFFFFFFD0;
  v284 = v277 ^ (2 * ((v277 ^ 0x46) & (2 * ((v277 ^ 0x46) & (2 * ((v277 ^ 0x46) & (2 * ((v277 ^ 0x46) & (2 * ((v277 ^ 0x46) & (2 * ((v277 ^ 0x46) & (2 * v283) ^ v283)) ^ v283)) ^ v283)) ^ v283)) ^ v283)) ^ v283));
  v285 = (((v278 ^ 0xFFFFFFFFFFFFC3FFLL) & ((((v20[38] << 16) ^ 0x6A5AA9B5A4766C7) & (v20[28] ^ 0x8FFDFEFBFEFF6EDCLL) | v20[28] & 0x38) ^ 0xC41685A8303183B3) | v278 & 0x1A00) ^ 0x3D4CD0CC95820080) & (v271 & 0x426212EE00000000 ^ 0x6133AD58A94CCA22 ^ (v271 ^ 0x3515E6C9FF8F4CE2) & ((((v247[21] - ((2 * v247[21]) & 0x192)) << 24) - 0x350C019F37000000) ^ 0x676A9371988F4CE2)) ^ ((v278 ^ 0xFFFFFFFFFFFFC3FFLL) & ((((v20[38] << 16) ^ 0x6A5AA9B5A4766C7) & (v20[28] ^ 0x8FFDFEFBFEFF6EDCLL) | v20[28] & 0x38) ^ 0xC41685A8303183B3) & 0x41372F90063C793FLL | v278 & 0x1800);
  LODWORD(v265) = (((v284 ^ 0xFFFFFF9F) - 24) ^ ((v284 ^ 0x7D) + 6) ^ ((v284 ^ 9) + 114)) + (((v265 ^ 0x28) + 45) ^ ((v265 ^ 7) + 4) ^ ((v265 ^ 0x4C) + 73));
  LOBYTE(v284) = *(v2 - 12);
  LOBYTE(v276) = v284 + 123;
  LOBYTE(v284) = ((-124 - v284) & 0xED | 0x10) ^ (v284 + 123) & 0xAA;
  v286 = 2 * ((v265 + 92) & (2 * (v265 - 36)) & 0x50 | (v265 - 36) & 0x28);
  v287 = 2 * ((v286 ^ (v265 - 36)) & 0x28 ^ v286 & (v265 + 92));
  HIDWORD(v239) = v265;
  LODWORD(v239) = (((v287 ^ (v265 - 36)) & 0x28 ^ v287 & (v265 + 92)) << 25) ^ ((v265 + 92) << 24);
  v288 = ((v247[22] - ((2 * v247[22]) & 0x12A)) << 24) + 0x5DA89FBF95000000;
  v289 = 45 - 33 * ((((v239 >> 26) ^ 0xFFFFFF8A) - 55) ^ (((v239 >> 26) ^ 0xF) + 78) ^ (((v239 >> 26) ^ 0x3F) + 126));
  LOBYTE(v277) = v289 & 0x82 ^ 0xDB;
  LOBYTE(v289) = v289 ^ (2 * ((v289 ^ 0x6C) & (2 * ((v289 ^ 0x6C) & (2 * ((v289 ^ 0x6C) & (2 * ((v289 ^ 0x6C) & (2 * ((v289 ^ 0x6C) & (2 * ((v289 ^ 0x6C) & 0x2E ^ v277)) ^ v277)) ^ v277)) ^ v277)) ^ v277)) ^ v277));
  v290 = *v247 - ((2 * *v247) & 0x1EA) - 0x119C9FE57412680BLL;
  v291 = ((v289 << 8) ^ 0x9D27C07E7CCB4930) & (v290 ^ 0x3184BA65750268C5) ^ v290 & 0x42400000822414CFLL;
  v292 = (v291 & 0x5A2200029C4ABA52 ^ 0xD924548CF99EAC10 ^ (v291 ^ 0x20983F8101100008) & ((((*v279 - ((2 * *v279) & 0x120)) << 16) + 0x66277B0868900000) ^ 0xE3E291F50A2545ADLL)) & ((v20[5] << 40) ^ 0xFFFFECFFFFFFFFFFLL) ^ (v20[5] << 40) & 0x410000000000;
  v293 = (v292 ^ 0xF93C408CF88E8C12) & ((((((*(v2 - 6) - ((2 * *(v2 - 6)) & 0xFF9Fu) + 1446803967) << 32) - 0x3000000000) ^ 0xC049247590CBA92CLL) & ((v20[24] << 24) ^ 0xFFFFFFFFEEEBFF7FLL) | (v20[24] << 24) & 0x6F000000) ^ 0xA74BF878240D8E42) ^ v292 & 0xCEC15A3D4839D891;
  v294 = v253 + 251;
  LOBYTE(v290) = *(v253 + 251 + ((v276 ^ (2 * ((v276 ^ 0x6C) & (2 * ((v276 ^ 0x6C) & (2 * ((v276 ^ 0x6C) & (2 * ((v276 ^ 0x6C) & (2 * ((v276 ^ 0x6C) & (2 * ((v276 ^ 0x6C) & (2 * v284) ^ v284)) ^ v284)) ^ v284)) ^ v284)) ^ v284)) ^ v284))) ^ 0x49u)) ^ 0xA7;
  v295 = (v275 ^ 0x32FFB3170F2ECD4CLL) & ((v20[16] << 48) ^ 0xFBC2B3170F2ECD4CLL) ^ (v275 & 0x400000000000000 | 0xC008860803000);
  v296 = (v285 ^ 0x310400800508101BLL) & (v295 & 0xBE780298058C8500 ^ 0x3A107657DC0AC877 ^ (v295 ^ 0x224C2090410211) & ((((*(v2 - 9) - ((2 * *(v2 - 9)) & 0xFAu) + 691078) << 40) - 0x90000000000) ^ 0x4B0CCC27FA637A5DLL)) ^ v285 & 0x3A303A17DC1AC8D5;
  v297 = (v293 ^ 0xC800000C40080000) & ((((v2[7] - ((2 * v2[7]) & 0xE8u) + 421) << 48) - 0x31000000000000) ^ 0xB9593D3DF5EA5346) ^ v293 & 0x47D2C2C20A15ACB9;
  v298 = (((v297 ^ 0x731EA5257AC8CF69) - 0x6EE1A699886907F8) ^ ((v297 ^ 0x3E2829849D8CF04ALL) - 0x23D72A386F2D38DBLL) ^ ((v297 ^ 0xF2C9335E10AB48CCLL) + 0x10C9CF1D1DF57FA3)) + 0x7D6329836D6E3ED4;
  v299 = (v298 ^ 0x9225A65F0B61D05FLL) & (2 * (v298 & 0x9001A69F1369941ELL)) ^ v298 & 0x9001A69F1369941ELL;
  v300 = ((2 * (v298 ^ 0x9225A2650DB1F84FLL)) ^ 0x44809F43DB0D8A2) & (v298 ^ 0x9225A2650DB1F84FLL) ^ (2 * (v298 ^ 0x9225A2650DB1F84FLL)) & 0x22404FA1ED86C50;
  v301 = (v300 ^ 0xF01C804000) & (4 * v299) ^ v299;
  v302 = ((4 * (v300 ^ 0x224040A02482451)) ^ 0x89013E87B61B144) & (v300 ^ 0x224040A02482451) ^ (4 * (v300 ^ 0x224040A02482451)) & 0x22404FA1ED86C50;
  v303 = (v302 ^ 0xE81A402040) & (16 * v301) ^ v301;
  v304 = ((16 * (v302 ^ 0x224041204984C11)) ^ 0x22404FA1ED86C510) & (v302 ^ 0x224041204984C11) ^ (16 * (v302 ^ 0x224041204984C11)) & 0x22404FA1ED86C50;
  v305 = (v304 ^ 0x20004A00C804400) & (v303 << 8) ^ v303;
  v306 = (((v304 ^ 0x24005A12582841) << 8) ^ 0x2404FA1ED86C5100) & (v304 ^ 0x24005A12582841) ^ ((v304 ^ 0x24005A12582841) << 8) & 0x22404FA1ED86C00;
  v307 = v305 ^ 0x22404FA1ED86C51 ^ (v306 ^ 0x4001A18480000) & (v305 << 16);
  v308 = v298 ^ (2 * ((v307 << 32) & 0x22404FA00000000 ^ v307 ^ ((v307 << 32) ^ 0x1ED86C5100000000) & (((v306 ^ 0x22004E006902C51) << 16) & 0x22404FA00000000 ^ 0x204002200000000 ^ (((v306 ^ 0x22004E006902C51) << 16) ^ 0x4FA1ED800000000) & (v306 ^ 0x22004E006902C51))));
  v309 = *(*v491 + 3);
  v310 = v282 ^ (v309 - ((2 * v309) & 0xEF6DDBF0) - 0x4640862888491208) ^ v281;
  v311 = (v20[27] ^ 0xFFFFFFFFFFFFFFCFLL) & ((v20[29] << 8) ^ 0x379E98688FDFCB54) ^ (v20[27] & 0xAB | 0x801038270200200);
  v312 = (((v308 ^ 0xAA709A326380F5F7) + 0x3BF6F84B83B7AE51) ^ ((v308 ^ 0xE56CF9A2BD6AFFB7) + 0x74EA9BDB5D5DA411) ^ ((v308 ^ 0x4BCE287B7445AA70) - 0x25B7B5FD6B8D0E28)) - 0x502D6450754714CDLL + ((((2 * v308) & 0x2937D84108EDD918 ^ 0x872AE2ED156A4AC1) - 0x51EB476200D9FA33) ^ (((2 * v308) & 0x2937D84108EDD918 ^ 0x1B1F01A465D2A279) + 0x32215BD48F9EED75) ^ (((2 * v308) & 0x2937D84108EDD918 ^ 0xBC26AB49781871A0) - 0x6AE70EC66DABC152));
  v313 = (v312 ^ 0xB1AD802907D55B1ELL) & (2 * (v312 & 0xB1AC284D47C1431FLL)) ^ v312 & 0xB1AC284D47C1431FLL;
  v314 = ((2 * (v312 ^ 0xF0AD80310FD5DF2ELL)) ^ 0x820350F890293862) & (v312 ^ 0xF0AD80310FD5DF2ELL) ^ (2 * (v312 ^ 0xF0AD80310FD5DF2ELL)) & 0x4101A87C48149C30;
  v315 = (v314 ^ 0x1007800001820) & (4 * v313) ^ v313;
  v316 = ((4 * (v314 ^ 0x4100A80448148411)) ^ 0x406A1F1205270C4) & (v314 ^ 0x4100A80448148411) ^ (4 * (v314 ^ 0x4100A80448148411)) & 0x4101A87C48149C30;
  v317 = (v316 ^ 0xA07000101000) & (16 * v315) ^ v315;
  v318 = ((16 * (v316 ^ 0x4101080C48048C31)) ^ 0x101A87C48149C310) & (v316 ^ 0x4101080C48048C31) ^ (16 * (v316 ^ 0x4101080C48048C31)) & 0x4101A87C48149C30;
  v319 = (v318 ^ 0x804400008000) & (v317 << 8) ^ v317;
  v320 = (((v318 ^ 0x4101283848141C21) << 8) ^ 0x1A87C48149C3100) & (v318 ^ 0x4101283848141C21) ^ ((v318 ^ 0x4101283848141C21) << 8) & 0x4101A87C48149C00;
  v321 = v319 ^ 0x4101A87C48149C31 ^ (v320 ^ 0x100284800140000) & (v319 << 16);
  v322 = (v321 << 32) & 0x4101A87C00000000 ^ v321 ^ ((v321 << 32) ^ 0x48149C3100000000) & (((v320 ^ 0x4001803448008C31) << 16) & 0x4101A87C00000000 ^ 0x4101A06800000000 ^ (((v320 ^ 0x4001803448008C31) << 16) ^ 0x287C481400000000) & (v320 ^ 0x4001803448008C31));
  LOBYTE(v281) = (((((v290 >> 3) | (32 * v290)) ^ 0x49) + 121) ^ (((v290 >> 3) | (32 * v290)) + 50) ^ ((((v290 >> 3) | (32 * v290)) ^ 0x2F) + 31)) + 36;
  LOBYTE(v320) = v281 & 0xDE ^ 0x2D;
  v323 = ((v20[4] << 32) & 0xAF00000000 ^ 0xC29C5EC6B4B07AEFLL ^ (((((v281 ^ (2 * ((v281 ^ 4) & (2 * ((v281 ^ 4) & (2 * ((v281 ^ 4) & (2 * ((v281 ^ 4) & (2 * ((v281 ^ 4) & (2 * ((v281 ^ 4) & (2 * v320) ^ v320)) ^ v320)) ^ v320)) ^ v320)) ^ v320)) ^ v320))) << 16) ^ 0xAD5CBA7FA61D5249) & (v288 ^ 0xE27724407BFF726DLL) | v288 & 0x50A0058059000000) ^ 0x852A36AF638E4BAFLL) & ((v20[4] << 32) ^ 0xFFFFFFECFFFF7FEFLL)) & (v311 ^ 0xC0606415000025A8) ^ v311 & 0x595086A9F029CF6;
  v324 = (v323 ^ 0x4020200000000420) & ((((v247[7] - ((2 * v247[7]) & 0x94u) + 8256376) << 40) - 0x2E0000000000) ^ 0xCF2F8AFF04CC5F6DLL);
  v325 = v323 & 0x4D2B3F00FB33A092;
  v326 = v312 ^ (v20[35] << 56) ^ (2 * v322);
  v327 = v325 ^ ((v20[26] ^ 0x13u) << 48) ^ v324 ^ 0xBFDFDFFFFFFFFF7FLL;
  v328 = (v327 - ((2 * v327) & 0x26D6DEA48D1ABEA2) - 0x6C9490ADB972A0AFLL) ^ (v20[6] << 56) ^ 0x806B6F52468D5F51;
  v329 = ~v278 & 0x200;
  if (((v310 | v278) & 0x200) == 0)
  {
    v329 = -v329;
  }

  v330 = (v329 + (v310 & 0x6507E805CB0A27C1 ^ 0x4401000088080201)) ^ ((v310 ^ v296) & 0x9AF817FA34F5D83ELL | v296 & 0x6507E805CB0A25C1);
  v331 = (v482 - 0x23000000000000) ^ (v20[14] << 56) ^ (((v2[3] - ((2 * v2[3]) & 0xFF8Fu) + 13179375) << 40) - 0x280000000000) ^ v251 ^ (v328 - ((2 * v328) & 0x5DEE61E3F2DB7756) - 0x5108CF0E06924455);
  v332 = v331 ^ 0xBFB0437AB34FD493;
  v333 = ((v331 ^ 0xB5CFA4A09F52AF2DLL) - ((2 * (v331 ^ 0xB5CFA4A09F52AF2DLL)) & 0xEB00304BA7C50882) - 0xA7FE7DA2C1D7BBFLL) & (v310 ^ 0x51D04EFA092D98BELL);
  v334 = v330 ^ 0x15BE577897CF2469;
  v335 = v330 ^ 0xEA41A8876830DB96;
  v336 = v326 ^ v328;
  v337 = v334 & (v310 ^ 0xAE2FB105F6D26741) ^ v332;
  v338 = (v326 ^ 0x64AF6B42C4517489) & v335;
  v339 = (v336 ^ 0xA3275711782773CALL) & v332 ^ v326 ^ 0x64AF6B42C4517489;
  v340 = v337 ^ v310 ^ v338;
  v341 = -v337;
  v342 = -v337 & 0x4000;
  if ((v342 & v337) != 0)
  {
    v342 = -v342;
  }

  v343 = v342 + v337;
  v141 = (v343 & 0x20000000000 & v341) == 0;
  v344 = v341 & 0xFFFFFFFFFFFFBFFFLL;
  v345 = v343 & 0x20000000000 ^ v344;
  v346 = v344 - (v343 & 0x20000000000);
  v347 = v326 ^ 0x9B5094BD3BAE8B76;
  v348 = v336 ^ v333;
  v349 = (v336 ^ 0x5CD8A8EE87D88C35) & v347;
  if (v141)
  {
    v346 = v345;
  }

  v350 = v343 & 0xFFFFFDFFFFFFFFFFLL ^ (0x8E3A7BF533997672 - (v337 ^ 0x8E3A7BF533997672)) ^ v346;
  v351 = v349 ^ v334;
  v352 = v350 - 0x71C5840ACC66898ELL;
  v353 = 0x71C5840ACC66898ELL - v350;
  v354 = ((v348 ^ 0x5CD8A8EE87D88C35) - (v348 ^ 0x5CD8A8EE87D88C35 ^ v352)) ^ v352;
  v355 = v340 ^ 0x283F39B235299587;
  v356 = *(v480 + ~(121 * ((v340 ^ 0x283F39B235299587) >> 61)));
  v357 = (v356 >> 6) | (4 * v356);
  v358 = v354 & 0x400000;
  if ((v354 & 0x400000 & v353) != 0)
  {
    v358 = -v358;
  }

  v359 = (((v358 + v353) ^ v354 & 0xFFFFFFFFFFBFFFFFLL) + (v348 ^ 0x5CD8A8EE87D88C35)) ^ 0x991843FD98FA006ELL;
  v360 = v339 ^ v351;
  v361 = v339 ^ v351 ^ 0xDE8CC05DCAC6012ALL;
  v362 = (v361 | 0xFFFFFFFFFFFFFDCFLL) - (v360 ^ 0x21733FA23539FCE5);
  HIDWORD(v363) = v357 ^ ~(16 * v357);
  LODWORD(v363) = (v357 ^ (16 * v357)) << 24;
  v364 = v351 + 0x7422F1997948670DLL;
  v365 = (2 * v351) & 0xE845E332F290CE1ALL;
  v366 = v355 ^ (v363 >> 31);
  v367 = (8 * v355) & 0x100000000;
  v141 = (v367 & v366) == 0;
  v368 = (8 * v355) ^ v366;
  if (!v141)
  {
    v367 = -v367;
  }

  *(&v369 + 1) = v368;
  *&v369 = (v367 + v355) ^ (8 * v355) & 0xFFFFFFFE00000000;
  v370 = (v340 >> 39) ^ __ROR8__((v369 >> 32) ^ 0x8AAFA1E1D734B9E0, 32) ^ 0xD734B9E08AFFDF92;
  v371 = v348 ^ 0x711160E0A152EEAELL;
  v372 = v370 + (v355 << 25) - 2 * (v370 & (v355 << 25));
  *(&v369 + 1) = v361;
  *&v369 = v360;
  v373 = ((v369 >> 13) & 0xFFF800000000000FLL | (16 * (v361 >> 17))) ^ 0x9F412CA0B8CA498FLL;
  v374 = v371 ^ __ROR8__(v371, 7) ^ (v371 >> 41);
  v375 = (((v364 - v365) >> 6) | (v364 << 63)) ^ ((v364 - v365) << 58) ^ __ROR8__(__ROR8__(v364 - v365, 13) & 0xFFF7FFFFFFFFFFFFLL ^ __ROR8__(v364 - v365, 12) ^ 0x22933860E2D4273BLL, 52) ^ v372;
  *(&v369 + 1) = v361;
  *&v369 = v362;
  v376 = (v369 >> 10) ^ v361 ^ __ROR8__(v373, 4);
  v377 = v374 + (v371 << 23) - 2 * (v374 & (v371 << 23));
  v378 = v359 ^ v377 ^ __ROR8__(v359, 19) ^ (v359 >> 28) ^ (v359 << 36);
  v379 = __ROR8__(v378, 1) ^ (((v375 ^ 0x33860E2D4273B229) & ~v372) >> 1) ^ (((v375 ^ 0x33860E2D4273B229) & ~v372) << 63) ^ 0x844F04FD62974D77;
  v380 = (v375 ^ 0xCC79F1D2BD8C4DD6) & (v376 ^ 0xF9F412CA0B8CA498);
  v381 = v376 ^ 0xF9F412CA0B8CA498 ^ v377;
  v382 = v375 ^ 0x33860E2D4273B229 ^ (v376 ^ 0x60BED35F4735B67) & v377;
  v383 = v372 & ~v378;
  v384 = v378 & ~v381;
  v385 = v383 ^ v381;
  *&v369 = __ROR8__(v379, 63);
  v386 = v385 ^ 0xB1BE87FDDEA7A83ALL ^ v369;
  v387 = v385 ^ 0xA6B052124AE97655;
  v388 = __ROR8__(v382 ^ 0xDEDBE286AAB15F6ALL, 18) & 0xFFFFBFFFFFFFFFFFLL ^ __ROR8__(v382 ^ 0xDEDBE286AAB15F6ALL, 17) ^ 0x49758EA7AD734D43;
  v389 = v376 ^ v384 ^ 0xF6E1E5852E033A49 ^ v382 ^ __ROR8__(v376 ^ v384 ^ 0xF6E1E5852E033A49 ^ v382, 10) ^ ((v376 ^ v384 ^ 0xF6E1E5852E033A49 ^ v382) >> 17) ^ ((v376 ^ v384 ^ 0xF6E1E5852E033A49 ^ v382) << 47);
  v390 = v387 ^ __ROR8__(v387, 7) ^ (v387 >> 41) ^ (v387 << 23);
  *(&v369 + 1) = v380 ^ v372 ^ v369 ^ 0x29C88C520ACC142;
  *&v369 = v380 ^ v372 ^ v369;
  v391 = (v369 >> 61) ^ *(&v369 + 1);
  v392 = *(&v369 + 1) << 25;
  v393 = v391 ^ (*(&v369 + 1) >> 39);
  v394 = (*(&v369 + 1) << 25) ^ v391;
  if (v262 == 19)
  {
    v395 = v393;
  }

  else
  {
    v395 = ~v394;
  }

  v396 = __ROR8__(v388, 47) ^ (v382 << 63);
  v141 = v396 == 0x1D4F5AE69A8692EBLL;
  v397 = v395 & v392 ^ (v393 | v392);
  v398 = v386 ^ v390 ^ __ROR8__(v386, 19) ^ (v386 >> 28) ^ (v386 << 36);
  v399 = __ROR8__((((v382 ^ 0x6A) & 0x3F) << 9) ^ __ROR8__(v396 ^ (v382 >> 6) ^ 0x1E34356C802C5796, 49) ^ 0xE6E22B4D0F49DE6, 15);
  v400 = __ROR8__(v389 ^ v390, 17) ^ 0x6224437B832A344CLL;
  v401 = v397 ^ v399;
  v402 = v397 ^ v399 ^ 0xC433E323BA965E16;
  v403 = v399 ^ 0x3BCC1CDC4569A1E9;
  v404 = v401 ^ 0x3BCC1CDC4569A1E9;
  v405 = __ROR8__(v389, 6) ^ 0xE9FC6AD93C3B18A1;
  v406 = v402 & v389;
  v407 = __ROR8__(v400, 47);
  v408 = v398 & (v407 ^ 0x7908F9AB97673BB7) ^ v389;
  if (v141)
  {
    v403 = v404;
  }

  v409 = v403 & ~v397 ^ v398;
  v410 = (v398 | ~v397) ^ v407;
  v411 = v404 ^ (v407 ^ 0x86F706546898C448) & (__ROR8__(v405, 58) ^ 0x80E549B0F139D785);
  v412 = (v408 ^ v411) - ((2 * (v408 ^ v411)) & 0xAB93B292ED12B66ALL) - 0x2A3626B68976A4CBLL;
  v413 = v397 ^ v406 ^ 0x92F095738C504AF7 ^ v409 ^ __ROR8__(v397 ^ v406 ^ 0x92F095738C504AF7 ^ v409, 61) ^ ((v397 ^ v406 ^ 0x92F095738C504AF7 ^ v409) >> 39) ^ ((v397 ^ v406 ^ 0x92F095738C504AF7 ^ v409) << 25);
  v414 = v409 ^ v410;
  v415 = v409 ^ v410 ^ 0x70DA02EAB0A3277DLL;
  v416 = v411 ^ 0x61171F08F2F960A3 ^ (v411 >> 6) ^ __ROR8__(v411 ^ 0x61171F08F2F960A3, 1) ^ ((v411 ^ 0x61171F08F2F960A3) << 58) ^ 0x1845C7C23CBE582;
  v417 = v413 + v416 - 2 * (v413 & v416);
  v418 = ((v412 ^ (v412 >> 10)) + (v412 << 54) - 2 * ((v412 << 54) & v412)) ^ __ROR8__(v412, 17);
  v419 = v410 ^ 0x70B4851BA07BD2BALL ^ __ROR8__(v410 ^ 0x70B4851BA07BD2BALL, 7) ^ ((v410 ^ 0x70B4851BA07BD2BALL) >> 41) ^ ((v410 ^ 0x70B4851BA07BD2BALL) << 23);
  *(&v420 + 1) = v415;
  *&v420 = v414;
  v421 = (v420 >> 28) ^ v419 ^ ((v415 ^ (v415 >> 19)) + (v415 << 45) - 2 * ((v415 << 45) & v415));
  v422 = v421 ^ 0x70DA02EABLL;
  v423 = (v421 ^ 0x70DA02EABLL ^ v418 ^ v419) + 0x427A1BC1558A0EB4;
  v424 = (v421 ^ 0xFFFFFFF8F25FD154) & v413 ^ v418 ^ v419;
  v425 = (v422 | ~(v418 ^ v419)) - 0x427A1BC1558A0EB3;
  *&v420 = __ROR8__(__ROR8__(v422 ^ v417 & ~v413, 24) ^ 0x1277A09AEB60FCAALL, 40);
  v426 = v424 ^ 0x4EA7EAA69222231CLL ^ v420;
  v427 = v418 & ~v417 ^ v413 ^ v420;
  v428 = v419 & ~v418 ^ v417;
  *(&v420 + 1) = v427 ^ 0x89963FAF2F881B51;
  *&v420 = v427;
  v429 = v418 ^ v428 ^ 0xB8C75C206030C3E3 ^ ((v423 ^ v425) + 2 * (v425 & v423));
  v430 = (v420 >> 61) ^ v427 ^ 0x89963FAF2F881B51 ^ ((v427 ^ 0x89963FAF2F881B51) >> 39);
  v431 = (v430 ^ 4) + (*(&v420 + 1) << 25) + 2 * (v430 & (*(&v420 + 1) << 25)) - 4 * (v430 & (*(&v420 + 1) << 25));
  v432 = ((v428 ^ 0x9168644D1B60DBD1) & 0x7FFFFFFFFFFFFFFFLL ^ ((v428 ^ 0x9168644D1B60DBD1) >> 1) | (((v428 ^ 0x9168644D1B60DBD1) & 0x8000000000000000) + ((v428 ^ 0x9168644D1B60DBD1) << 63))) ^ __ROR8__(v428 ^ 0x9168644D1B60DBD1, 6);
  v433 = v424 ^ 0xBB7C14E8CBAB9550 ^ __ROR8__(v424 ^ 0xBB7C14E8CBAB9550, 7) ^ ((v424 ^ 0xBB7C14E8CBAB9550) << 23) ^ ((v424 ^ 0xBB7C14E8CBAB9550) >> 41);
  v434 = v429 ^ __ROR8__(v429, 10) ^ (v429 >> 17) ^ (v429 << 47);
  v435 = v426 ^ __ROR8__(v426, 19) ^ __ROR8__(v426, 28) ^ v433;
  v436 = v433 & 0x400000;
  v437 = v433 & 0xFFFFFFFFFFBFFFFFLL;
  if ((v434 & v436) != 0)
  {
    v436 = -v436;
  }

  v438 = (v436 + v434) ^ v437;
  v439 = (v432 & ~v431) + v435 - 2 * (v432 & ~v431 & v435);
  v440 = v431 ^ v432;
  v441 = v438 & ~v434 ^ v440;
  v442 = v438 ^ v431 & ~v435;
  v443 = v434 & ~v440 ^ v431 ^ v439;
  v444 = v439 ^ v442 ^ 0x989E911977D0AE24;
  v445 = (v438 | ~v435) ^ v434 ^ v441;
  v446 = v441 ^ 0xE6AFD3A35688678BLL ^ ((v441 ^ 0xE6AFD3A35688678BLL) >> 1) ^ ((v441 ^ 0xE6AFD3A35688678BLL) << 58) ^ ((v441 ^ 0xE6AFD3A35688678BLL) >> 6) ^ ((v441 ^ 0xE6AFD3A35688678BLL) << 63);
  v447 = v442 ^ 0x32BF2066F5A25BB4;
  *(&v448 + 1) = v442 ^ 0x32BF2066F5A25BB4;
  *&v448 = v442;
  v449 = __ROR8__(__ROR8__(v448 >> 63, 8) ^ 0xE728655E828924ADLL, 56) ^ 0xB7054D959368C140;
  *(&v448 + 1) = v443 ^ 0x165EFA0E0AE8FC01;
  *&v448 = v443;
  v450 = (v448 >> 61) ^ v443 ^ 0x165EFA0E0AE8FC01 ^ ((v443 ^ 0x165EFA0E0AE8FC01uLL) >> 39) ^ ((v443 ^ 0x165EFA0E0AE8FC01) << 25);
  v451 = (((v445 ^ 0x8529CE65B2E5DACLL) >> 10) & 0x1678A3C5C47C57 ^ (v445 ^ 0x8529CE65B2E5DACLL) & 0x1BD678A3C5C47C57 | ((v445 ^ 0x8529CE65B2E5DACLL) >> 10) & 0x29875C3A3B83A8 ^ (v445 ^ 0x8529CE65B2E5DACLL) & 0xE429875C3A3B83A8) ^ ((v445 ^ 0x8529CE65B2E5DACLL) << 54);
  v452 = (v451 ^ (v445 >> 17) ^ 0x4294E732D97) + ((v445 ^ 0x8529CE65B2E5DACLL) << 47) - 2 * (v451 & ((v445 ^ 0x8529CE65B2E5DACLL) << 47));
  v453 = ((v447 >> 41) | (v447 << 57)) ^ (v447 << 23) ^ __ROR8__((v447 >> 6) & 0x3FFFFFFFFFFFFFELL ^ __ROR8__(__ROR8__(v449, 30) ^ 0x6931B29E7D804C5CLL, 34) ^ 0x12A6EBBD5FF59AEDLL, 1);
  v454 = v444 ^ (v444 << 36) ^ (v444 >> 19) ^ ((v444 >> 28) | (v444 << 45)) ^ v453;
  v455 = v453 ^ v452;
  v456 = v454 ^ v446 & ~v450;
  v457 = v453 ^ v452 ^ 0x895375DEAFFACD76;
  v458 = (v454 ^ 0x76AC8A2150053289) & v450 ^ v457;
  v459 = (((v458 ^ v456) >> 28) ^ ((v458 ^ v456) >> 19) | ((v458 ^ v456 ^ 0x69AD6FFE7D83815ALL) << 45)) ^ v458 ^ v456 ^ 0x69AD6FFE7D83815ALL;
  v247[2] = ((v458 ^ v456) >> 28) ^ ((v458 ^ v456) >> 19) ^ v458 ^ v456 ^ 0x5A ^ 0xA;
  *v484 = ((((v458 ^ v456) >> 28) ^ ((v458 ^ v456) >> 19) ^ v458 ^ v456 ^ 0x7D83815A) >> 16) ^ 0x18;
  v460 = v459 ^ ((v458 ^ v456) << 36);
  v247[8] = BYTE6(v460) ^ 0x2D;
  *v486 = ((v460 ^ 0xAB3487D07A50DEBBLL) >> 32) ^ 0x57;
  *v483 = ((((v458 ^ v456) >> 28) ^ ((v458 ^ v456) >> 19) ^ v458 ^ v456 ^ 0x7D83815A) >> 24) ^ 0xEC;
  v461 = v446 ^ v450;
  v462 = v450 ^ v452 & ~v461 ^ v456 ^ 0x94E077A278C34B57;
  v463 = (v457 & ~v452) + v461 - ((v457 & ~v452 & v461) << (v267 & 1) << !(v267 & 1));
  v464 = v452 ^ (v455 ^ 0x76AC8A2150053289) & (v454 ^ 0x895375DEAFFACD76) ^ 0x7F2224E1700603CFLL ^ v463;
  v465 = v458 ^ 0x507ED11A8C40BFB7;
  v466 = v464 ^ (v464 >> 10) ^ ((v464 >> 17) | (v464 << 54));
  v467 = (v462 << 25) ^ __ROR8__(__ROR8__(__ROR8__(v462, 60) & 0xFFFFF8000000000FLL ^ __ROR8__(v462 ^ __ROR8__(v462, 61), 21) ^ 0x594F50EBA37D6FC2, 12) ^ 0xEBD431629D4F6ED9, 31) ^ 0x27EAB21E2FE34B2FLL;
  v20[14] = ((v460 ^ 0xAB3487D07A50DEBBLL) >> 56) ^ 0x82;
  v468 = v464 << 47;
  *v488 = BYTE1(v459) ^ 0x80;
  v2[3] = (((v460 ^ 0xAB3487D07A50DEBBLL) >> 32) >> 8) ^ 0x2E;
  LODWORD(v459) = *(v480 + ~(121 * v467));
  v20[34] = BYTE3(v467) - ((2 * BYTE3(v467)) & 0x26) + 19;
  v469 = (v464 << 47) ^ (0xFFFF800000000000 * v464) ^ (v466 - (v466 ^ (v464 << 47)));
  *&v448 = __ROR8__(v465, 7);
  v470 = v469 & v466;
  v471 = (v464 << 47) - (v469 ^ v466);
  v472 = (v448 & 0x82123C5D72310A3CLL ^ (v465 >> 41) & 0x310A3C | (v465 >> 41) & 0x4EF5C3) ^ v448 & 0x7DEDC3A28DCEF5C3;
  v473 = v466 ^ -v466 ^ (v471 - 2 * v470);
  LODWORD(v459) = (v459 >> 6) | (4 * v459);
  DWORD1(v448) = v459 ^ ~(16 * v459);
  LODWORD(v448) = (v459 ^ (16 * v459)) << 24;
  LOBYTE(v459) = v448 >> 31;
  *(v2 - 8) = HIBYTE(v467);
  *(&v448 + 1) = v463;
  *&v448 = v463 ^ 0x58BF23BBF4A0D1FCLL;
  v20[15] = BYTE1(v467) - ((2 * BYTE1(v467)) & 0x26) + 19;
  *(v2 - 11) = v459;
  v2[6] = BYTE4(v467);
  v474 = (v448 >> 1) ^ v463 ^ 0x58BF23BBF4A0D1FCLL ^ ((v463 ^ 0x58BF23BBF4A0D1FCLL) >> 6);
  v20[3] = BYTE2(v467) - ((2 * BYTE2(v467)) & 0x26) + 19;
  LOBYTE(v467) = (((v448 >> 1) ^ v463 ^ 0xF4A0D1FC ^ ((v463 ^ 0x58BF23BBF4A0D1FCLL) >> 6)) >> 24) - ((2 * (((v448 >> 1) ^ v463 ^ 0xF4A0D1FC ^ ((v463 ^ 0x58BF23BBF4A0D1FCLL) >> 6)) >> 24)) & 0x2C);
  v247[3] = (BYTE6(v467) - ((2 * BYTE6(v467)) & 0xBF) + 95) ^ 0x5F;
  v475 = v474 ^ ((v463 ^ 0x58BF23BBF4A0D1FCLL) << 58);
  v20[8] = BYTE5(v467) - ((2 * BYTE5(v467)) & 0x26) + 19;
  LODWORD(v459) = *(v254 + (v475 ^ 0x68));
  *v2 = BYTE4(v474);
  v247[17] = (BYTE1(v473) - ((2 * BYTE1(v473)) & 0x60) + 48) ^ 0x30;
  *(v2 - 5) = HIBYTE(v475);
  *(v2 - 10) = BYTE1(v474);
  v247[21] = (v467 - 106) ^ 0x96;
  v476 = v473 + v468;
  v477 = (v465 ^ -v465 ^ (v472 - (v472 ^ v465))) + v472;
  LODWORD(v472) = 33 * ((91 * v459) ^ ((91 * v459) >> 4) ^ ((91 * v459) >> 2) ^ 0xFFFFFF9E);
  LOBYTE(v470) = (8 - v472) & 0x7A ^ 0x41;
  LOBYTE(v471) = (8 - v472) ^ 0x78;
  *(v2 - 9) = BYTE5(v474);
  v2[7] = BYTE6(v476);
  v20[16] = BYTE6(v474) - ((2 * BYTE6(v474)) & 0x26) + 19;
  v20[38] = BYTE2(v474) + (~(2 * BYTE2(v474)) | 0xD9) + 20;
  v20[28] = (8 - v472) ^ (2 * (v471 & (2 * (v471 & (2 * (v471 & (2 * (v471 & (2 * (v471 & (2 * (v470 ^ -v472 & 2)) ^ v470)) ^ v470)) ^ v470)) ^ v470)) ^ v470)) ^ 0x69;
  v478 = v477 ^ (v465 << 23);
  v20[5] = BYTE5(v476) - ((2 * BYTE5(v476)) & 0x26) + 19;
  *(v2 - 12) = BYTE2(v478);
  *(v2 - 6) = BYTE4(v473);
  result = v473 - ((2 * v473) & 0x5C) - 82;
  v20[24] = BYTE3(v473) - ((2 * BYTE3(v473)) & 0x26) + 19;
  *v247 = (v473 - ((2 * v473) & 0x5C) - 82) ^ 0xAE;
  *v279 = BYTE2(v473);
  v20[27] = v477 - ((2 * v477) & 0x26) + 19;
  v247[22] = (((v477 ^ (v465 << 23)) >> 24) - ((2 * ((v477 ^ (v465 << 23)) >> 24)) & 0xB8) - 36) ^ 0xDC;
  v20[35] = HIBYTE(v476) - ((2 * HIBYTE(v476)) & 0x26) + 19;
  v20[29] = BYTE1(v477) + (~(2 * BYTE1(v477)) | 0xD9) + 20;
  v20[4] = BYTE4(v478) - ((2 * BYTE4(v478)) & 0x26) + 19;
  LOBYTE(v473) = *(v294 + ((BYTE5(v478) + 104) ^ 0xELL));
  v20[6] = HIBYTE(v478) - ((2 * HIBYTE(v478)) & 0x26) + 19;
  v20[26] = BYTE6(v478) - ((2 * BYTE6(v478)) & 0x26) + 19;
  LOBYTE(v478) = ((v473 ^ 0x94) >> 3) | (32 * (v473 ^ 0x94));
  v247[7] = (v478 - ((2 * v478) & 0xA6) - 45) ^ 0xD3;
  *(*v491 + 3) = v309 + 1;
  *a1 = v460 ^ 0xEC1E6C4D984D1295;
  return result;
}

void TsbHVdUOnzCHizuzrAdwYFpb()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_bc078cbf90a67865d751f41904fee764) ^ 0x55)) ^ fp_dh_f91fc0840f96157211663b2f57192a64[fp_dh_8faf55e1ec561ba954cb30afd881e868[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d - fp_dh_bc078cbf90a67865d751f41904fee764) ^ 0x55))] ^ 0x60]) + 216);
  v1 = off_1F0B0C400;
  v2 = off_1F0B0CB90;
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0CB90 + (*(off_1F0B0C400 + (-91 * (*v0 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) ^ 0xE0u)) ^ (-91 * (*v0 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) + 574);
  v4 = &v6[*(v3 - 4) ^ *v0];
  *v0 = 810526117 * v4 - 0x3983E51A1E6C17ABLL;
  *(v3 - 4) = 810526117 * (v4 ^ 0xC67C1AE5E193E855);
  v7[0] = 1575331711 * (((v7 | 0x4D372AB1) - (v7 & 0x4D372AB1)) ^ 0x216CBFB3) + 1655634431;
  LOBYTE(v3) = -91 * ((*(v3 - 4) + *v0) ^ 0x55);
  v5 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * (fp_dh_bc078cbf90a67865d751f41904fee764 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d)) ^ fp_dh_378bc4107cb6dcf27404a2e870094cfd[fp_dh_edc1ca543d77d0bec88dcf73a8b89350[(-91 * (fp_dh_bc078cbf90a67865d751f41904fee764 ^ 0x55 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d))] ^ 0x16]) + 473) - 4;
  (*&v5[8 * (v3 ^ v2[v1[v3] ^ 0xE0]) + 54392])(v7);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196A0D1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, __int16 a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19)
{
  LODWORD(a17) = v19 + 1727 - 1575331711 * (&a17 ^ 0x6C5B9502);
  a18 = a16;
  a19 = &a11;
  (*(v20 + 8 * (v19 ^ 0x18AC)))(&a17);
  LODWORD(a17) = v19 + 1727 - 1575331711 * (((&a17 | 0xDCA6E19F) - (&a17 & 0xDCA6E19F)) ^ 0xB0FD749D);
  a18 = a16;
  a19 = &a15;
  (*(v20 + 8 * (v19 | 0x18AC)))(&a17);
  LODWORD(a17) = v19 + 1727 - 1575331711 * (((&a17 | 0x757A9563) + (~&a17 | 0x8A856A9C)) ^ 0x19210060);
  a18 = a16;
  a19 = &a13;
  (*(v20 + 8 * (v19 | 0x18AC)))(&a17);
  a17 = a16;
  HIDWORD(a18) = v19 - 489239129 * (&a17 ^ 0xB9282336) + 391;
  v22 = (*(v20 + 8 * (v19 ^ 0x18B2)))(&a17);
  return (*(v20 + 8 * ((1630 * (a18 == v21 + v19 - 330951712)) ^ v19)))(v22);
}

uint64_t sub_196A0D4B4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, char a18)
{
  v22 = 70 * (v20 ^ 0xE46);
  *(a12 + 16) = -a2;
  v23 = 753662761 * ((2 * ((v21 - 136) & 0x1EDC6FA8) - (v21 - 136) + 1629720658) ^ 0x4396B19);
  *(v21 - 128) = v23 ^ 0x781DFA5A;
  *(v21 - 124) = (v22 + 3968) ^ v23;
  *(v21 - 136) = v18;
  (*(v19 + 8 * (v22 + 6338)))(v21 - 136);
  v24 = 998242381 * ((((v21 - 136) | 0x6A48BD66) - (v21 - 136) + ((v21 - 136) & 0x95B74298)) ^ 0xC02725B0);
  *(v21 - 128) = v18;
  *(v21 - 136) = (((32 * a15) ^ 0xE5FEBEFF) + 2142237627 + ((a15 << (((v22 ^ 0xA2) + 30) ^ 0xB6)) & 0xCBFD7DC0)) ^ v24;
  *(v21 - 132) = (v22 + 4228) ^ v24;
  (*(v19 + 8 * (v22 + 6199)))(v21 - 136);
  *(v21 - 136) = (v22 + 3687) ^ (654144011 * (((v21 - 136) & 0xF3CAA8CA | ~((v21 - 136) | 0xF3CAA8CA)) ^ 0x20E12AA9));
  *(v21 - 128) = a17;
  *(v21 - 120) = &a18;
  (*(v19 + 8 * (v22 + 6271)))(v21 - 136);
  *(v21 - 136) = a17;
  *(v21 - 128) = v18;
  *(v21 - 120) = v22 + 753662761 * ((v21 + 400349375 - 2 * ((v21 - 136) & 0x17DCD947)) ^ 0x72C6220C) + 1703;
  v25 = (*(v19 + 8 * (v22 ^ 0x18A1)))(v21 - 136);
  return (*(v19 + 8 * ((123 * (*(v21 - 116) <= 0x5818ABABu)) ^ v22)))(v25);
}

uint64_t sub_196A0D6D8@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(a1 + v5) = *(v3 + v5) + 11 * (v4 ^ 0xC9) - ((2 * *(v3 + v5)) & 0xD8) - 47;
  return (*(v2 + 8 * ((476 * (v5 != 0)) ^ v4)))();
}

uint64_t fp_dh_5fd4be6a0b28b1f48ce6822cfdb5407a(uint64_t a1)
{
  if (*a1)
  {
    v2 = *(a1 + 32) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 24) ^ (1283153057 * ((-2 - ((a1 | 0x768FF520) + (~a1 | 0x89700ADF))) ^ 0xC6A809E8));
  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0x944)) + 8 * ((v3 * (((v1 - 2872) | 0xB43) - 2764)) ^ v1) - 4))();
}

uint64_t sub_196A0D96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (a5 + v7 + 8);
  *(v10 - 1) = v9;
  *v10 = v9;
  return (*(v8 + 8 * ((((v6 & 0xFFFFFFFFFFFFFFF0) == 16) * ((v5 - 1564) ^ 0x6D4)) ^ v5)))();
}

uint64_t sub_196A0D9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v40 = LODWORD(STACK[0x36C]) - 978;
  v41 = (v39 ^ 0x9976F8DB) + a39;
  STACK[0x830] = v41;
  return (*(a6 + 8 * (v40 ^ (112 * (v41 > a33)))))();
}

uint64_t fp_dh_6535de39107068d678780b8b36b36aa5(void *a1)
{
  v196 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v1 = a1[1];
  v180 = (**a1 ^ 0xDBF7FBFB) + 1725920592 + ((2 * **a1) & 0xB7EFF7F6);
  v181 = (v2[1] ^ 0xDBF7FBFB) + 1725920592 + ((2 * v2[1]) & 0xB7EFF7F6);
  v182 = (v2[2] ^ 0xDBF7FBFB) + 1725920592 + ((2 * v2[2]) & 0xB7EFF7F6);
  v183 = (v2[3] ^ 0xDBF7FBFB) + 1725920592 + ((2 * v2[3]) & 0xB7EFF7F6);
  v184 = (v2[4] ^ 0xDBF7FBFB) + 1725920592 + ((2 * v2[4]) & 0xB7EFF7F6);
  v185 = (v2[5] ^ 0xDBF7FBFB) + 1725920592 + ((2 * v2[5]) & 0xB7EFF7F6);
  v186 = (v2[6] ^ 0xDBF7FBFB) + 1725920592 + ((2 * v2[6]) & 0xB7EFF7F6);
  v187 = (v2[7] ^ 0xDBF7FBFB) + 1725920592 + ((2 * v2[7]) & 0xB7EFF7F6);
  v188 = (v2[8] ^ 0xDBF7FBFB) + 1725920592 + ((2 * v2[8]) & 0xB7EFF7F6);
  v189 = (v2[9] ^ 0xDBF7FBFB) + 1725920592 + ((2 * v2[9]) & 0xB7EFF7F6);
  v190 = (v2[10] ^ 0xDBF7FBFB) + 1725920592 + ((2 * v2[10]) & 0xB7EFF7F6);
  v191 = (v2[11] ^ 0xDBF7FBFB) + 1725920592 + ((2 * v2[11]) & 0xB7EFF7F6);
  v192 = (v2[12] ^ 0xDBF7FBFB) + 1725920592 + ((2 * v2[12]) & 0xB7EFF7F6);
  v193 = (v2[13] ^ 0xDBF7FBFB) + 1725920592 + ((2 * v2[13]) & 0xB7EFF7F6);
  v194 = (v2[14] ^ 0xDBF7FBFB) + 1725920592 + ((2 * v2[14]) & 0xB7EFF7F6);
  v195 = (v2[15] ^ 0xDBF7FBFB) + 1725920592 + ((2 * v2[15]) & 0xB7EFF7F6);
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = *v1 + v180 - 1124281890 + ((((v5 & v3 | v4 & ~v3) ^ 0x9AA320F0) - 1457082290) ^ (((v5 & v3 | v4 & ~v3) ^ 0x46567254) + 1976820458) ^ (((v5 & v3 | v4 & ~v3) ^ 0xDCF552A4) - 277822950));
  v7 = (v6 ^ 0x2488084) & (2 * (v6 & 0xA410D091)) ^ v6 & 0xA410D091;
  v8 = ((2 * (v6 ^ 0x4A4920A6)) ^ 0xDCB3E06E) & (v6 ^ 0x4A4920A6) ^ (2 * (v6 ^ 0x4A4920A6)) & 0xEE59F036;
  v9 = v8 ^ 0x22481011;
  v10 = (v8 ^ 0x8001C004) & (4 * v7) ^ v7;
  v11 = ((4 * v9) ^ 0xB967C0DC) & v9 ^ (4 * v9) & 0xEE59F034;
  v12 = (v11 ^ 0xA841C010) & (16 * v10) ^ v10;
  v13 = ((16 * (v11 ^ 0x46183023)) ^ 0xE59F0370) & (v11 ^ 0x46183023) ^ (16 * (v11 ^ 0x46183023)) & 0xEE59F030;
  v14 = v12 ^ 0xEE59F037 ^ (v13 ^ 0xE4190000) & (v12 << 8);
  HIDWORD(v15) = ((v6 ^ 0xB844AE3E) + 5537455) ^ v6 ^ ((v6 ^ 0x1578446) + 21451991) ^ ((v6 ^ 0x123FAF9) + 20130410) ^ ((v6 ^ 0x1DFFFEE) + 30355327);
  LODWORD(v15) = v6 ^ (2 * ((v14 << 16) & 0xEEEEEEEE ^ v14 ^ ((v14 << 16) ^ 0x70000000) & (((v13 ^ 0xA40F007) << 8) & 0x6E590000 ^ 0x26000000 ^ (((v13 ^ 0xA40F007) << 8) ^ 0x59F00000) & (v13 ^ 0xA40F007))));
  v16 = v3 + 1574596499 + ((((v15 >> 25) ^ 0x20996127) + 1928249469) ^ (((v15 >> 25) ^ 0x24436509) + 1983169619) ^ (((v15 >> 25) ^ 0xF34DB3F2) - 1590029654));
  v17 = (v16 ^ 0xFB1075F4) & (2 * (v16 & 0xFC4579E5)) ^ v16 & 0xFC4579E5;
  v18 = ((2 * (v16 ^ 0x1B904736)) ^ 0xCFAA7DA6) & (v16 ^ 0x1B904736) ^ (2 * (v16 ^ 0x1B904736)) & 0xE7D53ED2;
  v19 = v18 ^ 0x20550251;
  v20 = (v18 ^ 0xC3002C80) & (4 * v17) ^ v17;
  v21 = ((4 * v19) ^ 0x9F54FB4C) & v19 ^ (4 * v19) & 0xE7D53ED0;
  v22 = (v21 ^ 0x87543A40) & (16 * v20) ^ v20;
  v23 = ((16 * (v21 ^ 0x60810493)) ^ 0x7D53ED30) & (v21 ^ 0x60810493) ^ (16 * (v21 ^ 0x60810493)) & 0xE7D53ED0;
  v24 = v22 ^ 0xE7D53ED3 ^ (v23 ^ 0x65512C00) & (v22 << 8);
  v25 = v16 ^ (2 * ((v24 << 16) & 0x67D50000 ^ v24 ^ ((v24 << 16) ^ 0x3ED30000) & (((v23 ^ 0x828412C3) << 8) & 0x67D50000 ^ 0x22C10000 ^ (((v23 ^ 0x828412C3) << 8) ^ 0x553E0000) & (v23 ^ 0x828412C3))));
  v26 = v3 & (v25 ^ 0x7E4D0443) | v5 & ~(v25 ^ 0x7E4D0443);
  v27 = v4 + v181 + 1876225280 + (((v26 ^ 0x7D105514) + 1067236324) ^ ((v26 ^ 0x73036001) + 831491831) ^ ((v26 ^ 0xE133515) + 1285544931));
  v28 = (v27 ^ 0xFB6D48DA) & (2 * (v27 & 0xF38E6A13)) ^ v27 & 0xF38E6A13;
  v29 = ((2 * (v27 ^ 0x1D711CFE)) ^ 0xDDFEEDDA) & (v27 ^ 0x1D711CFE) ^ (2 * (v27 ^ 0x1D711CFE)) & 0xEEFF76EC;
  v30 = v29 ^ 0x22011225;
  v31 = (v29 ^ 0xCC7A60C8) & (4 * v28) ^ v28;
  v32 = ((4 * v30) ^ 0xBBFDDBB4) & v30 ^ (4 * v30) & 0xEEFF76EC;
  v33 = (v32 ^ 0xAAFD52A0) & (16 * v31) ^ v31;
  v34 = ((16 * (v32 ^ 0x44022449)) ^ 0xEFF76ED0) & (v32 ^ 0x44022449) ^ (16 * (v32 ^ 0x44022449)) & 0xEEFF76E0;
  v35 = v33 ^ 0xEEFF76ED ^ (v34 ^ 0xEEF76600) & (v33 << 8);
  v36 = ((((v35 << 16) ^ v35 ^ ((v35 << 16) ^ 0x50000) & ((v34 << 8) & 0x70000 ^ ((v34 << 8) ^ 0x60000) & v34 ^ 0x10000)) << 13) ^ (v27 << 12)) & 0xFFFFF000 | ((((v27 ^ 0x29F2052) - 250525119) ^ v27 ^ ((v27 ^ 0xE6C5C33D) + 357280048) ^ ((v27 ^ 0x977CC9F0) + 1693623280) ^ ((v27 ^ 0x7F57BF7E) - 1931881106)) >> 20);
  v37 = (((v25 ^ 0x9A94C791) - 956289127) ^ ((v25 ^ 0xE8955EE3) - 1258178837) ^ ((v25 ^ 0xC4C9D31) + 1373140281)) - 225274344 + (((v36 ^ 0x3565D5D4) + 1728244656) ^ ((v36 ^ 0x97B2EC38) - 975842748) ^ ((v36 ^ 0xAABA92B) + 1489803089));
  v38 = ((v37 ^ 0x30C54203) - 541946659) ^ v37 ^ ((v37 ^ 0xC230271A) + 759687622) ^ ((v37 ^ 0x1C88AFE6) - 201367238) ^ ((v37 ^ 0xFEF5FBDF) + 293745921);
  v39 = (v25 ^ v3) & 0xD4E1F436 ^ v3 ^ (v38 ^ 0xC469C516) & (v25 ^ v3 ^ 0x7E4D0443);
  v40 = v5 + v182 - 620954467 + (((v39 ^ 0x2B86B494) + 1938809557) ^ ((v39 ^ 0x95285293) - 853474092) ^ ((v39 ^ 0xEAEFE205) - 1293503418));
  v41 = (v40 ^ 0xF9FB2AA8) & (2 * (v40 & 0xFA03B0B0)) ^ v40 & 0xFA03B0B0;
  v42 = ((2 * (v40 ^ 0x29F80AA8)) ^ 0xA7F77430) & (v40 ^ 0x29F80AA8) ^ (2 * (v40 ^ 0x29F80AA8)) & 0xD3FBBA18;
  v43 = v42 ^ 0x50088A08;
  v44 = (v42 ^ 0x80130000) & (4 * v41) ^ v41;
  v45 = ((4 * v43) ^ 0x4FEEE860) & v43 ^ (4 * v43) & 0xD3FBBA18;
  v46 = (v45 ^ 0x43EAA800) & (16 * v44) ^ v44;
  v47 = ((16 * (v45 ^ 0x90111218)) ^ 0x3FBBA180) & (v45 ^ 0x90111218) ^ (16 * (v45 ^ 0x90111218)) & 0xD3FBBA10;
  v48 = v46 ^ 0xD3FBBA18 ^ (v47 ^ 0x13BBA000) & (v46 << 8);
  HIDWORD(v15) = ((v40 ^ 0xF86D646B) + 21701) ^ v40 ^ ((v40 ^ 0x5F02) + 28590) ^ ((v40 ^ 0x1886) + 10282) ^ ((v40 ^ 0x6CBF) + 23569);
  LODWORD(v15) = v40 ^ (2 * ((v48 << 16) & 0x53FB0000 ^ v48 ^ ((v48 << 16) ^ 0x3A180000) & (((v47 ^ 0xC0401A18) << 8) & 0x53FB0000 ^ 0x410000 ^ (((v47 ^ 0xC0401A18) << 8) ^ 0x7BBA0000) & (v47 ^ 0xC0401A18))));
  v49 = (((v38 ^ 0x2698FD11) + 628815697) ^ ((v38 ^ 0x9C0606C8) - 1612444534) ^ ((v38 ^ 0xAA16CAF9) - 1443577671)) - 226095281 + ((((v15 >> 15) ^ 0x35F3515A) - 1628974521) ^ (((v15 >> 15) ^ 0x7F0F9C22) - 736420033) ^ (((v15 >> 15) ^ 0xD45C3EF1) + 2135473646));
  v50 = ((v49 ^ 0x524E0C51) - 1776989974) ^ v49 ^ ((v49 ^ 0x9E707F38) + 1512782721) ^ ((v49 ^ 0x882534D1) + 1283354730) ^ ((v49 ^ 0x7FBFFCFF) - 1142638520);
  v51 = (v38 ^ 0xFC1DF5BE ^ v25 ^ 0xA26B17F6) & 0x43EA0FAD ^ v25 ^ 0xA26B17F6 ^ (v50 ^ 0x784EB4EA) & (v38 ^ 0xFC1DF5BE ^ v25 ^ 0xA26B17F6 ^ 0x30B3D72B);
  v52 = v3 + v183 - 494384610 + (((v51 ^ 0xF98F5760) - 1735387526) ^ ((v51 ^ 0xABB594B8) - 894773854) ^ ((v51 ^ 0x8EBED744) - 274622882));
  v53 = (v52 ^ 0x9CD0B9FF) & (2 * (v52 & 0xDEC2BDFF)) ^ v52 & 0xDEC2BDFF;
  v54 = ((2 * (v52 ^ 0x28548887)) ^ 0xED2C6AF0) & (v52 ^ 0x28548887) ^ (2 * (v52 ^ 0x28548887)) & 0xF6963578;
  v55 = v54 ^ 0x12921508;
  v56 = (v54 ^ 0xE4042070) & (4 * v53) ^ v53;
  v57 = ((4 * v55) ^ 0xDA58D5E0) & v55 ^ (4 * v55) & 0xF6963578;
  v58 = (v57 ^ 0xD2101560) & (16 * v56) ^ v56;
  v59 = ((16 * (v57 ^ 0x24862018)) ^ 0x69635780) & (v57 ^ 0x24862018) ^ (16 * (v57 ^ 0x24862018)) & 0xF6963570;
  v60 = v58 ^ 0xF6963578 ^ (v59 ^ 0x60021500) & (v58 << 8);
  HIDWORD(v15) = ((v52 ^ 0xA2566579) + 136) ^ v52 ^ ((v52 ^ 0x75) + 396) ^ ((v52 ^ 0x1FA) + 5) ^ ((v52 ^ 0x2F7) + 778);
  LODWORD(v15) = v52 ^ (2 * ((v60 << 16) & 0x76960000 ^ v60 ^ ((v60 << 16) ^ 0x35780000) & (((v59 ^ 0x96942078) << 8) & 0x76960000 ^ 0x60820000 ^ (((v59 ^ 0x96942078) << 8) ^ 0x16350000) & (v59 ^ 0x96942078))));
  v61 = (((v50 ^ 0x289B4C5) - 1752862137) ^ ((v50 ^ 0x1EB0AF1F) - 1950586467) ^ ((v50 ^ 0x279DA09D) - 1299093985)) + 1807829958 + ((((v15 >> 10) ^ 0xEDC1DEC4) + 1396112881) ^ (((v15 >> 10) ^ 0xF9BBB592) + 1196201639) ^ (((v15 >> 10) ^ 0x942C98E3) + 719043544));
  v62 = ((v61 ^ 0xC4DA98D3) + 1647246626) ^ v61 ^ ((v61 ^ 0x2EB6E9A9) - 2008904612) ^ ((v61 ^ 0xCC180488) + 1793876347) ^ ((v61 ^ 0x7F7FEFFF) - 645166578);
  v63 = (v50 ^ 0x6AF3397C ^ v38 ^ 0xFC1DF5BE) & 0x3E4BF645 ^ v38 ^ 0xFC1DF5BE ^ (v62 ^ 0x67406C48) & (v50 ^ 0x6AF3397C ^ v38 ^ 0xFC1DF5BE ^ 0xBDC246A5);
  v64 = v184 + (((v25 ^ 0xC199B539) - 1676845775) ^ ((v25 ^ 0x245652B7) + 2042804927) ^ ((v25 ^ 0x9B82E3CD) - 971633723)) + 258675669 + (((v63 ^ 0xA3C4708F) - 1365158577) ^ ((v63 ^ 0x99198BA2) - 1803768220) ^ ((v63 ^ 0xEA0A79B6) - 412132232));
  HIDWORD(v15) = ((v64 ^ 0xFDC0F789) + 7078242) ^ v64 ^ ((v64 ^ 0x1F30134) + 6289373) ^ ((v64 ^ 0x1970015) + 3929854) ^ ((v64 ^ 0x1F7FFBF) + 5966168);
  LODWORD(v15) = ((v64 ^ 0xC1E29464) + 1615749773) ^ v64 ^ ((v64 ^ 0x6588DDFB) - 1004262636) ^ ((v64 ^ 0x4C69FF8) - 1519752936) ^ ((v64 ^ 0xFEFFDF60) + 1599285664);
  v65 = (((v62 ^ 0xDB871C5D) - 409598963) ^ ((v62 ^ 0x52897151) + 1855482113) ^ ((v62 ^ 0xD005F701) - 334172335)) - 1694188730 + ((((v15 >> 25) ^ 0x292E04FC) + 777304766) ^ (((v15 >> 25) ^ 0x2024809) + 91813449) ^ (((v15 >> 25) ^ 0x2A8C75A) + 97679644));
  v66 = ((v65 ^ 0xB426BB62) + 1690580752) ^ v65 ^ ((v65 ^ 0x60B890F3) - 1336271713) ^ ((v65 ^ 0x447CE7DC) - 1801557070) ^ ((v65 ^ 0xBFFFBFDF) + 1864184755);
  v67 = v66 ^ 0x74A89998;
  v68 = (v62 ^ 0xC3EEE7AE ^ v50 ^ 0x6AF3397C) & 0x51CC6DB1 ^ v50 ^ 0x6AF3397C ^ (v66 ^ 0x7ED11E23) & (v62 ^ 0xC3EEE7AE ^ v50 ^ 0x6AF3397C ^ 0xCBB2FF98);
  v69 = v185 + (((v38 ^ 0xA542D3AC) - 1499407890) ^ ((v38 ^ 0xD5ECB30B) - 703678133) ^ ((v38 ^ 0x60265187) + 1673812935)) - 1787640273 + (((v68 ^ 0xD40CD1D9) + 1159294900) ^ ((v68 ^ 0xCFFC9E65) + 1592336400) ^ ((v68 ^ 0xB27A017) - 1707991426));
  v70 = (v69 ^ 0x93941109) & (2 * (v69 & 0xDA11018C)) ^ v69 & 0xDA11018C;
  v71 = ((2 * (v69 ^ 0x27961111)) ^ 0xFB0E213A) & (v69 ^ 0x27961111) ^ (2 * (v69 ^ 0x27961111)) & 0xFD87109C;
  v72 = v71 ^ 0x4811085;
  v73 = (v71 ^ 0xF8040010) & (4 * v70) ^ v70;
  v74 = ((4 * v72) ^ 0xF61C4274) & v72 ^ (4 * v72) & 0xFD87109C;
  v75 = (v74 ^ 0xF4040000) & (16 * v73) ^ v73;
  v76 = ((16 * (v74 ^ 0x9831089)) ^ 0xD87109D0) & (v74 ^ 0x9831089) ^ (16 * (v74 ^ 0x9831089)) & 0xFD871090;
  v77 = v75 ^ 0xFD87109D ^ (v76 ^ 0xD801000D) & (v75 << 8);
  v78 = ((((v77 << 16) ^ v77 ^ ((v77 << 16) ^ 0x50000) & (((v76 >> 4 << 12) | 0xD00) & (v76 ^ 0xD801100D) ^ 0x70000)) << 13) ^ (v69 << 12)) & 0xFFFFF000 | ((((v69 ^ 0xA7A1918F) + 2108723205) ^ v69 ^ ((v69 ^ 0x15BF310) - 615845220) ^ ((v69 ^ 0xE4EB6340) + 1056596704) ^ ((v69 ^ 0x67FFFFBF) - 1108410827)) >> 20);
  v79 = (((v66 ^ 0xEF44672B) + 1678967117) ^ ((v66 ^ 0x69724C66) - 500880894) ^ ((v66 ^ 0xA92B58DF) + 578567865)) - 1020698009 + (((v78 ^ 0xE26220D6) - 1118526850) ^ ((v78 ^ 0x499AC0A1) + 380387851) ^ ((v78 ^ 0xF9F38229) - 1497038717));
  v80 = ((v79 ^ 0xE8623F73) + 1663867360) ^ v79 ^ ((v79 ^ 0xFC841E88) + 2009774117) ^ ((v79 ^ 0x9FA82F45) + 350652906) ^ ((v79 ^ 0xFFFF57ED) + 1957818690);
  v81 = (v67 ^ v62 ^ 0xC3EEE7AE) & 0xB0464F4E ^ v62 ^ 0xC3EEE7AE ^ (v80 ^ 0xC4F7161D) & (v67 ^ v62 ^ 0xC3EEE7AE ^ 0xC15097A9);
  v82 = v186 + (((v50 ^ 0xF170A24C) + 1685873872) ^ ((v50 ^ 0x46F2D761) - 738323997) ^ ((v50 ^ 0x8C26CE6A) + 422185194)) + 787210055 + (((v81 ^ 0xD3984966) + 1201455995) ^ ((v81 ^ 0x650E14A5) - 250962246) ^ ((v81 ^ 0xAC332768) + 943172981));
  v83 = 2 * (v82 & 0xF9228704);
  v84 = ((2 * (v82 ^ 0xB8B9747D)) ^ 0x8337E6F2) & (v82 ^ 0xB8B9747D) ^ (2 * (v82 ^ 0xB8B9747D)) & 0x419BF378;
  v85 = (v84 ^ 0x1122030) & (4 * (v83 & (v82 ^ 0xF8B87675) ^ v82 & 0xF9228704)) ^ v83 & (v82 ^ 0xF8B87675) ^ v82 & 0xF9228704;
  v86 = ((4 * (v84 ^ 0x40881109)) ^ 0x66FCDE4) & (v84 ^ 0x40881109) ^ (4 * (v84 ^ 0x40881109)) & 0x419BF378;
  v87 = v85 ^ 0x419BF379 ^ (v86 ^ 0xBC160) & (16 * v85);
  v88 = (v87 << 8) & 0xFFFFF3FF ^ v87 ^ ((v87 << 8) ^ 0x3900) & (((16 * (v86 ^ 0x41903219)) ^ 0x3700) & (v86 ^ 0x41903219) ^ (16 * (v86 ^ 0x41903219)) & 0x3300);
  v89 = v83 & (v82 ^ 0xFC0206D1) ^ v82 & 0xF9228704;
  v90 = ((2 * (v82 ^ 0x3E4706D1)) ^ 0x8ECB03AA) & (v82 ^ 0x3E4706D1) ^ (2 * (v82 ^ 0x3E4706D1)) & 0xC76581D4;
  v91 = v90 ^ 0x41248055;
  v92 = (v90 ^ 0x84000000) & (4 * v89) ^ v89;
  v93 = ((4 * v91) ^ 0x1D960754) & v91 ^ (4 * v91) & 0xC76581D4;
  v94 = (v93 ^ 0x5040140) & (16 * v92) ^ v92;
  v95 = ((16 * (v93 ^ 0xC2618081)) ^ 0x76581D50) & (v93 ^ 0xC2618081) ^ (16 * (v93 ^ 0xC2618081)) & 0xC76581D0;
  v96 = v94 ^ 0xC76581D5 ^ (v95 ^ 0x46400100) & (v94 << 8);
  v97 = ((v88 << 18) ^ (v82 << 17)) & 0xFFFE0000 | ((v82 ^ (2 * ((v96 << 16) & 0x47650000 ^ v96 ^ ((v96 << 16) ^ 0x1D50000) & (((v95 ^ 0x81258085) << 8) & 0x47650000 ^ 0x2640000 ^ (((v95 ^ 0x81258085) << 8) ^ 0x65810000) & (v95 ^ 0x81258085))))) >> 15);
  v98 = (((v80 ^ 0xF0330D69) + 1302874405) ^ ((v80 ^ 0x8EB92CE3) + 857893039) ^ ((v80 ^ 0xA3B78D9) - 1214235499)) - 1003424325 + (((v97 ^ 0x64E1FD75) - 517137794) ^ ((v97 ^ 0x52AC68D) - 2132401786) ^ ((v97 ^ 0x6627D13F) - 471124424));
  v99 = ((v98 ^ 0xDC6FA3E8) + 753630398) ^ v98 ^ ((v98 ^ 0xEDA848E4) + 489461682) ^ ((v98 ^ 0x41633C59) - 1310203123) ^ ((v98 ^ 0x7FDFF7FF) - 1889851221);
  v100 = v99 ^ 0xCD14C690;
  v101 = (v99 ^ 0x54AE44AE) & (v80 ^ 0x4264BBB2 ^ v67 ^ 0x6D6008EB) ^ (v80 ^ 0x4264BBB2 ^ v67) & 0x5BD56404;
  HIDWORD(v15) = v187 + (v62 ^ 0x590B9A0D) - 1167121482 + (((v101 ^ 0x49400000) - 2 * ((v101 ^ 0x49400000) & 0x5BB5EA0F ^ v101 & 5) + 1538648586) ^ v66 ^ 0x74A89998);
  LODWORD(v15) = HIDWORD(v15);
  v102 = v99 ^ 0xF7B20AA;
  v103 = (v15 >> 10) + (v99 ^ 0xF7B20AA);
  HIDWORD(v15) = v188 + (v66 ^ 0x2F1D7392) + 648619917 + (((v103 & (v80 ^ 0x7BCA79F9 ^ v99)) - ((2 * (v103 & (v80 ^ 0x7BCA79F9 ^ v99))) & 0x6DABC5C2) + 919986913) ^ v80 ^ 0x4264BBB2);
  LODWORD(v15) = HIDWORD(v15);
  v104 = (v15 >> 25) + v103;
  v105 = v104 & ((v103 - ((2 * v103) & 0x84DFCC74) - 1032853958) ^ v100);
  HIDWORD(v15) = v189 + (v80 ^ 0x74B15953) + 1215137380 + ((v105 - ((2 * v105) & 0x84DFCC74) - 1032853958) ^ v100);
  LODWORD(v15) = HIDWORD(v15);
  v106 = (v15 >> 20) + v104;
  HIDWORD(v15) = v190 + v102 - 1121457562 + (v104 & v106 | v103 & ~v106);
  LODWORD(v15) = HIDWORD(v15);
  v107 = (v15 >> 15) + v106;
  HIDWORD(v15) = v191 + v103 + 1183147635 + (v106 & v107 | v104 & ~v107);
  LODWORD(v15) = HIDWORD(v15);
  v108 = (v15 >> 10) + v107;
  HIDWORD(v15) = v192 + v104 + 683188183 + (v107 & v108 | v106 & ~v108);
  LODWORD(v15) = HIDWORD(v15);
  v109 = (v15 >> 25) + v108;
  HIDWORD(v15) = v193 + v106 - 1161756600 + (v108 & v109 | v107 & ~v109);
  LODWORD(v15) = HIDWORD(v15);
  v110 = (v15 >> 20) + v109;
  HIDWORD(v15) = v194 + v107 + 1671549507 + (v109 & v110 | v108 & ~v110);
  LODWORD(v15) = HIDWORD(v15);
  v111 = (v15 >> 15) + v110;
  HIDWORD(v15) = v195 + v108 + 115119830 + (v110 & v111 | v109 & ~v111);
  LODWORD(v15) = HIDWORD(v15);
  v112 = (v15 >> 10) + v111;
  HIDWORD(v15) = v181 + v109 - 1287212009 + (v112 & v110 | v111 & ~v110);
  LODWORD(v15) = HIDWORD(v15);
  v113 = (v15 >> 27) + v112;
  HIDWORD(v15) = v186 + v110 + 2104050165 + (v113 & v111 | v112 & ~v111);
  LODWORD(v15) = HIDWORD(v15);
  v114 = (v15 >> 23) + v113;
  HIDWORD(v15) = v191 + v111 - 477697786 + (v114 & v112 | v113 & ~v112);
  LODWORD(v15) = HIDWORD(v15);
  v115 = (v15 >> 18) + v114;
  HIDWORD(v15) = v180 + v112 - 1495312801 + (v115 & v113 | v114 & ~v113);
  LODWORD(v15) = HIDWORD(v15);
  v116 = (v15 >> 12) + v115;
  HIDWORD(v15) = v185 + v113 - 1822974190 + (v116 & v114 | v115 & ~v114);
  LODWORD(v15) = HIDWORD(v15);
  v117 = (v15 >> 27) + v116;
  HIDWORD(v15) = v190 + v114 - 1083399416 + (v117 & v115 | v116 & ~v115);
  LODWORD(v15) = HIDWORD(v15);
  v118 = (v15 >> 23) + v117;
  HIDWORD(v15) = v195 + v115 - 1781893834 + (v118 & v116 | v117 & ~v116);
  LODWORD(v15) = HIDWORD(v15);
  v119 = (v15 >> 18) + v118;
  HIDWORD(v15) = v184 + v116 - 1526953347 + (v119 & v117 | v118 & ~v117);
  LODWORD(v15) = HIDWORD(v15);
  LODWORD(v2) = (v15 >> 12) + v119;
  HIDWORD(v15) = v189 + v117 - 552969061 + (v2 & v118 | v119 & ~v118);
  LODWORD(v15) = HIDWORD(v15);
  v120 = (v15 >> 27) + v2;
  HIDWORD(v15) = v194 + v118 - 2141219189 + (v120 & v119 | v2 & ~v119);
  LODWORD(v15) = HIDWORD(v15);
  v121 = (v15 >> 23) + v120;
  HIDWORD(v15) = v183 + v119 - 1308779460 + (v121 & v2 | v120 & ~v2);
  LODWORD(v15) = HIDWORD(v15);
  v122 = (v15 >> 18) + v121;
  HIDWORD(v15) = v188 + v2 + 42116002 + (v122 & v120 | v121 & ~v120);
  LODWORD(v15) = HIDWORD(v15);
  v123 = (v15 >> 12) + v122;
  HIDWORD(v15) = v193 + v120 + 1728870330 + (v123 & v121 | v122 & ~v121);
  LODWORD(v15) = HIDWORD(v15);
  v124 = (v15 >> 27) + v123;
  HIDWORD(v15) = v182 + v121 - 1172819283 + (v124 & v122 | v123 & ~v122);
  LODWORD(v15) = HIDWORD(v15);
  v125 = (v15 >> 23) + v124;
  HIDWORD(v15) = v187 + v122 + 613912974 + (v125 & v123 | v124 & ~v123);
  LODWORD(v15) = HIDWORD(v15);
  v126 = (v15 >> 18) + v125;
  HIDWORD(v15) = v192 + v123 + 1246944063 + ((v126 ^ v125) & v124 ^ v125);
  LODWORD(v15) = HIDWORD(v15);
  LODWORD(v2) = *(&v180 + (v124 & 0xF));
  v127 = (v15 >> 12) + v126;
  *(&v180 + (v124 & 0xF)) = *(&v180 + (v127 & 0xF));
  *(&v180 + (v127 & 0xF)) = v2;
  v128 = *(&v180 + (v126 & 0xF));
  *(&v180 + (v126 & 0xF)) = *(&v180 + (v125 & 0xF));
  *(&v180 + (v125 & 0xF)) = v128;
  v129 = *(&v180 + (v124 >> 4));
  *(&v180 + (v124 >> 4)) = *(&v180 + (v127 >> 4));
  *(&v180 + (v127 >> 4)) = v129;
  v130 = (v124 >> 8) & 0xF;
  v131 = *(&v180 + v130);
  LODWORD(v2) = (v127 >> 8) & 0xF;
  *(&v180 + v130) = *(&v180 + v2);
  *(&v180 + v2) = v131;
  v132 = *(&v180 + (v124 >> 12));
  *(&v180 + (v124 >> 12)) = *(&v180 + (v127 >> 12));
  *(&v180 + (v127 >> 12)) = v132;
  HIDWORD(v15) = v185 + v124 - 1121794057 + (v127 ^ v126 ^ v125);
  LODWORD(v15) = HIDWORD(v15);
  LODWORD(v2) = (v15 >> 28) + v127;
  HIDWORD(v15) = v188 + v125 + 1150977334 + (v2 ^ v127 ^ v126);
  LODWORD(v15) = HIDWORD(v15);
  v133 = (v15 >> 21) + v2;
  HIDWORD(v15) = v191 + v126 + 717615063 + (v2 ^ v127 ^ v133);
  LODWORD(v15) = HIDWORD(v15);
  v134 = (v15 >> 16) + v133;
  HIDWORD(v15) = v194 + v127 - 1156725055 + (v133 ^ v2 ^ v134);
  LODWORD(v15) = HIDWORD(v15);
  v135 = (v15 >> 9) + v134;
  HIDWORD(v15) = v181 + v2 + 1642559737 + (v134 ^ v133 ^ v135);
  LODWORD(v15) = HIDWORD(v15);
  v136 = (v15 >> 28) + v135;
  HIDWORD(v15) = v184 + v133 + 151477854 + (v135 ^ v134 ^ v136);
  LODWORD(v15) = HIDWORD(v15);
  v137 = (v15 >> 21) + v136;
  HIDWORD(v15) = v187 + v134 - 1276913131 + (v136 ^ v135 ^ v137);
  LODWORD(v15) = HIDWORD(v15);
  v138 = (v15 >> 16) + v137;
  HIDWORD(v15) = v190 + v135 + 2078821157 + (v137 ^ v136 ^ v138);
  LODWORD(v15) = HIDWORD(v15);
  v139 = (v15 >> 9) + v138;
  HIDWORD(v15) = v193 + v136 - 440136325 + (v138 ^ v137 ^ v139);
  LODWORD(v15) = HIDWORD(v15);
  v140 = (v15 >> 28) + v139;
  HIDWORD(v15) = v180 + v137 - 1479952721 + (v139 ^ v138 ^ v140);
  LODWORD(v15) = HIDWORD(v15);
  v141 = (v15 >> 21) + v140;
  HIDWORD(v15) = v183 + v138 - 1843937478 + (v140 ^ v139 ^ v141);
  LODWORD(v15) = HIDWORD(v15);
  v142 = (v15 >> 16) + v141;
  HIDWORD(v15) = v186 + v139 - 1045386310 + (v141 ^ v140 ^ v142);
  LODWORD(v15) = HIDWORD(v15);
  v143 = (v15 >> 9) + v142;
  HIDWORD(v15) = v189 + v140 - 1761779986 + (v142 ^ v141 ^ v143);
  LODWORD(v15) = HIDWORD(v15);
  v144 = (v15 >> 28) + v143;
  HIDWORD(v15) = v192 + v141 - 1543231334 + (v143 ^ v142 ^ v144);
  LODWORD(v15) = HIDWORD(v15);
  v145 = (v15 >> 21) + v144;
  HIDWORD(v15) = v195 + v142 - 590672979 + (v144 ^ v143 ^ v145);
  LODWORD(v15) = HIDWORD(v15);
  v146 = (v15 >> 16) + v145;
  HIDWORD(v15) = v182 + v143 - 2116754150 + (v145 ^ v144 ^ v146);
  LODWORD(v15) = HIDWORD(v15);
  v147 = (v15 >> 9) + v146;
  HIDWORD(v15) = v180 + v144 - 1320046343 + ((v147 | ~v145) ^ v146);
  LODWORD(v15) = HIDWORD(v15);
  v148 = (v15 >> 26) + v147;
  HIDWORD(v15) = v187 + v145 + 5475916 + ((v148 | ~v146) ^ v147);
  LODWORD(v15) = HIDWORD(v15);
  v149 = (v15 >> 22) + v148;
  HIDWORD(v15) = v194 + v146 + 1757196892 + ((v149 | ~v147) ^ v148);
  LODWORD(v15) = HIDWORD(v15);
  v150 = (v15 >> 17) + v149;
  HIDWORD(v15) = v185 + v147 - 1178849554 + ((v150 | ~v148) ^ v149);
  LODWORD(v15) = HIDWORD(v15);
  v151 = (v15 >> 11) + v150;
  HIDWORD(v15) = v192 + v148 + 579070072 + ((v151 | ~v149) ^ v150);
  LODWORD(v15) = HIDWORD(v15);
  v152 = (v15 >> 26) + v151;
  HIDWORD(v15) = v183 + v149 + 1278565191 + ((v152 | ~v150) ^ v151);
  LODWORD(v15) = HIDWORD(v15);
  v153 = (v15 >> 22) + v152;
  HIDWORD(v15) = v190 + v150 - 1122467022 + ((v153 | ~v151) ^ v152);
  LODWORD(v15) = HIDWORD(v15);
  v154 = (v15 >> 17) + v153;
  HIDWORD(v15) = v181 + v151 + 1118628998 + ((v154 | ~v152) ^ v153);
  LODWORD(v15) = HIDWORD(v15);
  v155 = (v15 >> 11) + v154;
  HIDWORD(v15) = v188 + v152 + 751897860 + ((v155 | ~v153) ^ v154);
  LODWORD(v15) = HIDWORD(v15);
  v156 = (v15 >> 26) + v155;
  HIDWORD(v15) = v195 + v153 - 1152027243 + ((v156 | ~v154) ^ v155);
  LODWORD(v15) = HIDWORD(v15);
  v157 = (v15 >> 22) + v156;
  HIDWORD(v15) = v186 + v154 + 1613353417 + ((v157 | ~v155) ^ v156);
  LODWORD(v15) = HIDWORD(v15);
  v158 = (v15 >> 17) + v157;
  HIDWORD(v15) = v193 + v155 + 187736150 + ((v158 | ~v156) ^ v157);
  LODWORD(v15) = HIDWORD(v15);
  v159 = (v15 >> 11) + v158;
  HIDWORD(v15) = v184 + v156 - 1266938569 + ((v159 | ~v157) ^ v158);
  LODWORD(v15) = HIDWORD(v15);
  v160 = v159 + ((v15 >> 26) ^ 0x5C77FA3F) + ((2 * (v15 >> 26)) & 0xB8EFF47E) - 71319556;
  v161 = ((v160 ^ 0x54F38698) - 214187171) ^ v160 ^ ((v160 ^ 0x372D9B4C) - 1863983479) ^ ((v160 ^ 0xC4164010) + 1675494869) ^ ((v160 ^ 0xFFFFE7FF) + 1480041020);
  HIDWORD(v15) = v191 + v157 + 2053341418 + ((v159 - ((2 * v159) & 0x9414A8EE) + 1242190967) ^ 0xB5F5AB88 ^ (v161 ^ 0xA7C845C4) & v158);
  LODWORD(v15) = HIDWORD(v15);
  v162 = (((v161 ^ 0x41D1FAAB) + 1911222727) ^ ((v161 ^ 0x58E31214) + 1758992762) ^ ((v161 ^ 0x41055284) + 1899911658)) - 1508816031 + (v15 >> 22);
  LODWORD(v2) = 2 * (v162 & 0xF1E20348);
  v163 = ((2 * (v162 ^ 0xC0B6AB0)) ^ 0xFBD2D3F0) & (v162 ^ 0xC0B6AB0) ^ (2 * (v162 ^ 0xC0B6AB0)) & 0xFDE969F8;
  v164 = v163 ^ 0x4292808;
  v165 = (v163 ^ 0xC9800160) & (4 * (v2 & (v162 ^ 0xEDCB6A20) ^ v162 & 0xF1E20348)) ^ v2 & (v162 ^ 0xEDCB6A20) ^ v162 & 0xF1E20348;
  v166 = ((4 * v164) ^ 0xF7A5A7E0) & v164 ^ (4 * v164) & 0xFDE969F8;
  v167 = (v166 ^ 0xF5A121E0) & (16 * v165) ^ v165;
  v168 = ((16 * (v166 ^ 0x8484818)) ^ 0xDE969F80) & (v166 ^ 0x8484818) ^ (16 * (v166 ^ 0x8484818)) & 0xFDE969F0;
  v169 = v167 ^ 0xFDE969F8 ^ (v168 ^ 0xDC800900) & (v167 << 8);
  v170 = (v162 ^ (2 * ((v169 << 16) & 0x7DE90000 ^ v169 ^ ((v169 << 16) ^ 0x69F80000) & (((v168 ^ 0x21696078) << 8) & 0x7DE90000 ^ 0x14800000 ^ (((v168 ^ 0x21696078) << 8) ^ 0x69690000) & (v168 ^ 0x21696078)))) ^ 0x261F2F47) & v159 ^ v161;
  HIDWORD(v15) = v182 + v158 - 1841446589 + (((v170 ^ 0xD84A55F0) + 708882457) ^ ((v170 ^ 0x4EA1633B) - 1129609516) ^ ((v170 ^ 0x3123730F) - 1020684568));
  LODWORD(v15) = HIDWORD(v15);
  v171 = v162 + 955870881 + (v15 >> 17);
  v172 = ((v171 ^ 0x37DE9441) - 1892286232) ^ v171 ^ ((v171 ^ 0xF5B1C435) + 1297698964) ^ ((v171 ^ 0xF687D4D3) + 1315913846) ^ ((v171 ^ 0x73FFEFFE) - 887653543);
  v173 = v2 & (v162 ^ 0xF1D9832C) ^ v162 & 0xF1E20348;
  LODWORD(v2) = ((2 * (v162 ^ 0x739981BC)) ^ 0x4F705E8) & (v162 ^ 0x739981BC) ^ (2 * (v162 ^ 0x739981BC)) & 0x827B82F4;
  v174 = (v2 ^ 0x700070) & (4 * v173) ^ v173;
  LODWORD(v2) = ((4 * (v2 ^ 0x82088214)) ^ 0x9EE0BD0) & (v2 ^ 0x82088214) ^ (4 * (v2 ^ 0x82088214)) & 0x827B82F4;
  v175 = (v2 ^ 0x6A02C0) & (16 * v174) ^ v174;
  LODWORD(v2) = ((16 * (v2 ^ 0x82118024)) ^ 0x27B82F40) & (v2 ^ 0x82118024) ^ (16 * (v2 ^ 0x82118024)) & 0x827B82F0;
  v176 = v175 ^ 0x827B82F4 ^ (v2 ^ 0x2380200) & (v175 << 8);
  v177 = v162 ^ (2 * ((v176 << 16) & 0x27B0000 ^ v176 ^ ((v176 << 16) ^ 0x2F40000) & (((v2 ^ 0x804380B4) << 8) & 0x27B0000 ^ 0x790000 ^ (((v2 ^ 0x804380B4) << 8) ^ 0x7B820000) & (v2 ^ 0x804380B4)))) ^ v172 & 0xD34E3D22 ^ (v172 ^ 0xB8E894A6) & (v161 ^ 0x8B798719);
  HIDWORD(v15) = v189 + v159 - 395321846 + (((v177 ^ 0x9C1E300D) - 1033676468) ^ ((v177 ^ 0x4E43CD7A) + 272540733) ^ ((v177 ^ 0x4C1F100A) + 308443469));
  LODWORD(v15) = HIDWORD(v15);
  result = v1[1];
  *v1 = *v1 - 1745662295 + (((v161 ^ 0x40D49424) + 1894752074) ^ ((v161 ^ 0xC5376D0A) - 183736728) ^ ((v161 ^ 0xDDD44315) - 303085447));
  v1[1] = result + v171 + ((v15 >> 11) ^ 0x92F5C9FD) + ((2 * (v15 >> 11)) & 0x25EB93FA) + 636668586;
  v179 = v1[3] - 236846264 + v162;
  v1[2] = v1[2] - 1192717146 + v171 + 1;
  v1[3] = v179;
  return result;
}

void fp_dh_27b059b6765631ee13d7186bb20bb7b0(uint64_t a1)
{
  v1 = *(a1 + 20) - 753662761 * ((((2 * a1) | 0x4B2FE168) - a1 + 1516769100) ^ 0xC08D0BFF);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_196A114B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  *a28 = STACK[0x7C8];
  *(a28 + 8) = 1;
  *(v31 - 216) = *a29;
  *(v31 - 224) = ((v29 ^ 0xAE1) + 1100) ^ (455395931 * ((((v31 - 224) | 0x4F72C5D3) + (~(v31 - 224) | 0xB08D3A2C)) ^ 0x39839B1E));
  (*(v30 + 8 * (v29 ^ 0x1813)))(v31 - 224);
  return (*(v30 + 8 * (((STACK[0x6F0] == 0) * (43 * (v29 ^ 0x299) - 3587)) ^ v29 ^ 0xAE1)))();
}

void sub_196A121F4()
{
  *&STACK[0x410] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3F0] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x400] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3D0] = vdupq_n_s64(v3);
  *&STACK[0x3E0] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  STACK[0x380] = v2 & 0xFFFFFFF8;
  *&STACK[0x3B0] = vdupq_n_s64(v1);
  *&STACK[0x3C0] = vdupq_n_s64(v0);
  STACK[0x390] = v2;
  *&STACK[0x3A0] = xmmword_196EBFAE0;
  JUMPOUT(0x196A122F8);
}

uint64_t sub_196A1285C()
{
  v3 = ((v1 - 1101371989) & 0x41A58EFF ^ 0xFFFFFFFFFFFFF1A8) + v0;
  v5 = v3 > (2 * (v1 ^ 0x1BFBu)) - 1183 || ((v0 - 1) & 0xFu) < (v3 & 0xF);
  return (*(v2 + 8 * (v1 ^ (16 * v5))))();
}

uint64_t fp_dh_70f78b4955244d6a0f0e2737ad156664(uint64_t result)
{
  v1 = 1283153057 * (((result | 0x6588A1F3AAA41FCBLL) - (result & 0x6588A1F3AAA41FCBLL)) ^ 0xCC653244E57C1CFCLL);
  v2 = *(result + 24);
  v3 = *(result + 32);
  v4 = v2 - v1;
  v5 = v2 == v3;
  v6 = v4 > v3 - v1;
  if ((*(result + 4) ^ v1))
  {
    v5 = v6;
  }

  v7 = !v5;
  v8 = 12;
  if (!v7)
  {
    v8 = 8;
  }

  *(result + 40) = (*(result + v8) - v1) ^ (*result - v1);
  return result;
}

void Fhjfdethrte87erhy4()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_ec4aa5d69b8283f825559291d9181c60) ^ 0x55)) ^ fp_dh_222236759e9e7014a4b1132c99a61f18[fp_dh_a39239c15ed61b79f612ca2106c00643[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_ec4aa5d69b8283f825559291d9181c60) ^ 0x55))] ^ 0x5C]));
  v1 = *(v0 - 4);
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (*(off_1F0B0BE30 + (*(off_1F0B0CCB0 + (-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55)) - 4) ^ 0xC2u)) ^ (-91 * (v1 ^ fp_dh_f272d8beb7e490dc1fc02e5519da452d ^ 0x55))) + 495);
  v3 = *(v2 - 4) - v1 - &v5;
  *(v0 - 4) = 810526117 * v3 + 0x528FD8C35B4E87C9;
  *(v2 - 4) = 810526117 * (v3 ^ 0xC67C1AE5E193E855);
  v6[0] = 1575331711 * ((v6 & 0x475122CE | ~(v6 | 0x475122CE)) ^ 0xD4F54833) + 1655634431;
  LOBYTE(v2) = -91 * (*(v0 - 4) ^ 0x55 ^ *(v2 - 4));
  v4 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + ((-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_ec4aa5d69b8283f825559291d9181c60) ^ 0x55)) ^ fp_dh_6bb4c8a2c0a94389f7d3484ce1392143[fp_dh_a638abeab64ef8dd834670971c7b9d6d[(-91 * ((fp_dh_f272d8beb7e490dc1fc02e5519da452d + fp_dh_ec4aa5d69b8283f825559291d9181c60) ^ 0x55))] ^ 0xD2]) + 406) - 4;
  (*&v4[8 * (*(off_1F0B0BBB0 + (*(off_1F0B0C120 + v2 - 8) ^ 0xBu) - 12) ^ v2) + 52688])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196A136D0()
{
  v2 = v0;
  v3 = (*(v0 + 8 * (v1 ^ 0x145D)))();
  v4 = STACK[0x63C];
  STACK[0x958] -= 80;
  return (*(v2 + 8 * (((v4 == 1906281716) * (v1 - 1714)) ^ (v1 - 3198))))(v3);
}

uint64_t sub_196A13730@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  STACK[0x8A8] = v2;
  v3 = STACK[0x5D8];
  STACK[0x8B0] = STACK[0x5D8];
  return (*(a1 + 8 * (((v2 - v3 > ((a2 + 5189) ^ 0x1654uLL)) * ((a2 - 169) ^ 0x2F)) ^ a2)))();
}

void fp_dh_de8cf30c5acd01ba459f5978f6333228(uint64_t a1)
{
  v1 = *a1 ^ (455395931 * ((2 * (a1 & 0x7C9FFFD8) - a1 - 2090860505) ^ 0xF5915EEB));
  v2 = *(a1 + 8);
  v3 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v1 ^ 0xE00)) - 4;
  (*&v3[8 * (v1 ^ 0x168D)])(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 2619), fp_dh_ac8b380baf0bf0ca926b0e34adc42df4);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_196A13B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (v10)
  {
    v12 = *(v11 + 8) == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  return (*(a1 + 8 * (((((7 * (v9 ^ 0x7D)) ^ v13) & 1) * (v9 - 3195)) ^ v9)))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_196A13C10@<X0>(uint64_t a1@<X8>)
{
  v5 = v3 + a1;
  v6.i64[0] = 0xECECECECECECECECLL;
  v6.i64[1] = 0xECECECECECECECECLL;
  v7 = veorq_s8(*(v2 + a1 + 16), v6);
  *(v5 + 24) = veorq_s8(*(v2 + a1), v6);
  *(v5 + 40) = v7;
  return (*(v4 + 8 * ((4093 * (a1 + (v1 - 250) == 554)) ^ v1)))();
}

uint64_t sub_196A13DDC()
{
  *(v3 - 216) = 654144011 * ((((v3 - 224) ^ 0x92A01EB) + 4426764 - 2 * (((v3 - 224) ^ 0x92A01EB) & 0x438C0C)) ^ 0x25BDF07B) + 86337211 + v0;
  v4 = (*(v1 + 8 * (v0 + 3284)))(v3 - 224);
  *(v2 + 24) = *(v3 - 224) ^ (v0 + 5);
  return (*(v1 + 8 * ((v0 - 997) ^ 0x90)))(v4);
}

uint64_t sub_196A13E98(uint64_t a1)
{
  v5 = (v4 + 662380029) & 0xD884F3FC;
  v6 = *STACK[0x580];
  v7 = STACK[0x248];
  STACK[0x6E0] = *(STACK[0x248] + 8 * v4);
  STACK[0x428] = &STACK[0x51C];
  STACK[0x608] = 0;
  LODWORD(STACK[0x7BC]) = -1720256293;
  STACK[0x5D0] = 0;
  if (v6)
  {
    v1 = &STACK[0x51C] == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = v1;
  return (*(v7 + 8 * ((v2 * ((28 * (v5 ^ 0x131D)) ^ (14 * (v5 ^ 0x1381)) ^ 0xF89)) ^ v5)))(a1, 1906239693);
}

void fp_dh_d08a6829d981a9c507478bfa083d0f67(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) + 1825732043 * (((a1 | 0xF9FC0596) - a1 + (a1 & 0x603FA69)) ^ 0xF96A56A1);
  v3[0] = v1 + 1575331711 * (((v3 | 0xE3057D12) - v3 + (v3 & 0x1CFA82E8)) ^ 0x8F5EE810) + 1655629553;
  v2 = *(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v1 - 4246) - 4;
  (*&v2[8 * v1 + 15568])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_196A14130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, unsigned int a22, uint64_t a23, char *a24, unsigned int a25)
{
  v26 = 1012216201 * ((&a20 & 0xD9F2D813 | ~(&a20 | 0xD9F2D813)) ^ 0xA2A4AF00);
  a22 = v26 + 1249100332;
  a20 = v26 ^ 0x80F33AB;
  a23 = a16;
  a24 = &a14;
  a25 = v26 + a12 - 1795304154;
  v27 = (*(v25 + 8 * (a12 ^ 0x19F9)))(&a20);
  return (*(v25 + 8 * ((4187 * (a21 == ((a12 - 350) ^ 0x719F8020 ^ ((a12 + 262) | 0xA70)))) ^ a12)))(v27);
}

void sub_196A1420C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _BYTE *a13, uint64_t a14, uint64_t a15, uint64_t a16, _BYTE *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _BYTE *a24)
{
  *a13 ^= *a24 ^ 0x82;
  a17[15] ^= a24[1] ^ 0x82;
  a17[16] ^= a24[2] ^ 0x82;
  a17[17] ^= a24[3] ^ 0x82;
  a17[18] ^= a24[4] ^ (7 * (v24 ^ 0x5A) + 109);
  a17[19] ^= a24[5] ^ 0x82;
  a17[20] ^= a24[6] ^ 0x82;
  a17[21] ^= a24[7] ^ 0x82;
  a17[22] ^= a24[8] ^ 0x82;
  a17[23] ^= a24[9] ^ 0x82;
  a17[24] ^= a24[10] ^ 0x82;
  a17[25] ^= a24[11] ^ 0x82;
  a17[26] ^= a24[12] ^ 0x82;
  a17[27] ^= a24[13] ^ 0x82;
  a17[28] ^= a24[14] ^ 0x82;
  a17[29] ^= a24[15] ^ 0x82;
  JUMPOUT(0x1969D953CLL);
}

uint64_t sub_196A143D8(uint64_t result)
{
  *v2 = -1;
  *(result + 8) = v1;
  return result;
}

uint64_t sub_196A14420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10)
{
  v12 = ((((v11 ^ a9) + 194009783) ^ 0xDF7FD437) + 1426933205) ^ ((v11 ^ a9) + 194009783) ^ ((((v11 ^ a9) + 194009783) ^ 0x4F02C47D) - 982493793) ^ ((((v11 ^ a9) + 194009783) ^ 0xBA17C0A9) + 811946315) ^ ((((v11 ^ a9) + 194009783) ^ 0x5FE7BEFF) - 711643363);
  v14 = v12 == 1972203036 || (v12 & 0xF) != (((v10 - 3825) | 0x800) ^ 0x8B6);
  return (*(a1 + 8 * (((2 * v14) | (16 * v14)) ^ v10)))(a1, a2, a3, a4, a5, a6, a7, a8, a10);
}

uint64_t fp_dh_b87792fd42c13aee7bdae3ef38039334(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = 753662761 * ((((2 * a1) | 0x81E216C4) - a1 + 1057944734) ^ 0xA5EBF029);
  v2 = *(a1 + 4) - v1;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = 1283153057 * (v8 ^ 0x4FD80337);
  v6 = (*a1 ^ v1) + v5 - 1124010308;
  v9 = v2 - 1869823954 + v5;
  v10 = v6;
  v8[0] = v3;
  v8[1] = v4;
  return (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v2 - 1869828397) + 8 * v2 - 0x37B99C794))(v8);
}

void sub_196A1465C()
{
  v4 = *(v0 + 8) ^ v2;
  v5 = ((v3 + 3620) + (v4 ^ 0x1E7F0D09EBDE0B86) - 0x6269B83A6DC89A33) ^ v4 ^ ((v4 ^ 0x3A4ACACDAA85A9BBLL) - 0x465C7FFE2C93236BLL) ^ ((v4 ^ 0x37DCFF2C289B5400) - 0x4BCA4A1FAE8DDED0) ^ ((v4 ^ 0x6FFF8DDBEFD67CEDLL) - 0x13E938E869C0F63DLL);
  *v6 = (HIBYTE(v5) ^ 0x7C) - 2 * ((HIBYTE(v5) ^ 0x7C) & 0x6D ^ HIBYTE(v5) & 1) - 20;
  v6[1] = (BYTE6(v5) ^ 0x16) - ((2 * (BYTE6(v5) ^ 0x16)) & 0xD8) - 20;
  v6[2] = (BYTE5(v5) ^ 0xB5) + (~(2 * (BYTE5(v5) ^ 0xB5)) | 0x27) - 19;
  v6[3] = (BYTE4(v5) ^ 0x33) - ((2 * (BYTE4(v5) ^ 0x33)) & 0xD8) - 20;
  v6[4] = (BYTE3(v5) ^ 0x86) - ((2 * (BYTE3(v5) ^ 0x86)) & 0xD8) - 20;
  v6[5] = (BYTE2(v5) ^ 0x16) - ((2 * (BYTE2(v5) ^ 0x16)) & 0xD8) - 20;
  v6[6] = (BYTE1(v5) ^ 0x8A) - ((2 * (BYTE1(v5) ^ 0x8A)) & 0xD8) - 20;
  v6[7] = v5 ^ 0x3C;
  *v0 = *(v1 + 24);
}

uint64_t sub_196A148D8@<X0>(int a1@<W1>, unsigned int a2@<W2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *(a3 + a5) = v6;
  v8 = ((v5 + a1) & a2 ^ a4) + a5 == 56;
  return (*(v7 + 8 * ((v8 | (16 * v8)) ^ v5)))();
}

uint64_t sub_196A14908()
{
  result = v1;
  *(v1 + 32) = (v2 ^ 0xF3FFDEFE) + 2107616758 + ((2 * v2) & 0xE7FEB0D8);
  return result;
}

uint64_t fp_dh_89fa3958c722c2d6016156cba435f15a(_DWORD *a1)
{
  v2 = *a1 + 1068996913 * (a1 ^ 0xD5EEE191);
  v3 = v2 - 192806888;
  result = (*(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 - 192806640)) + 8 * (v2 - 192800371) - 4))(*(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + (v2 ^ 0xB7E00E9)) - 4, fp_dh_d463b3d3adefbbf2e84adb778549c2af);
  v5 = **(&fp_dh_42271fdf9a75de9c58cc05122fdcdb42 + v3);
  if (result)
  {
    v5 = 1906239410;
  }

  a1[1] = v5;
  return result;
}

void fp_dh_e6dd7e47f8e7087056da482ec2b4fe19(uint64_t a1)
{
  v1 = *(a1 + 20) + 753662761 * (((a1 | 0x8B6482AC) - (a1 | 0x749B7D53) + 1956347219) ^ 0xEE7E79E7);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_196A14B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v14.i64[0] = 0xC6C6C6C6C6C6C6C6;
  v14.i64[1] = 0xC6C6C6C6C6C6C6C6;
  *(v13 - 112) = veorq_s8(vaddq_s8(**(v12 + 32), v14), xmmword_196EBFBC0);
  return (*(v11 + 8 * (a1 | (16 * (a9 == 0)))))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11);
}

uint64_t sub_196A14B74@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 5770));

  return v3(v1);
}

uint64_t sub_196A14D38()
{
  (*(v1 + 8 * (v0 + 5280)))();
  *(v2 + 24) = 0;
  return sub_1969FCFC8();
}

uint64_t sub_196A14D60@<X0>(uint64_t a1@<X8>)
{
  *v4 = v2;
  *(v2 + 8) = *(a1 + 8);
  *(a1 + 8) = v2;
  return (*(v5 + 8 * (((v3 == 5845) * (v3 - 3895)) ^ (v3 - 1344))))();
}

uint64_t sub_196A14D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v18 - 144) = v17;
  *(v18 - 136) = (v14 - 1683) ^ (1575331711 * ((~((v18 - 144) | 0x2B42D781) + ((v18 - 144) & 0x2B42D781)) ^ 0xB8E6BD7C));
  *(v18 - 128) = &a14;
  *(v18 - 120) = a12;
  *(v18 - 112) = &a14;
  (*(v16 + 8 * (v14 + 1021)))(v18 - 144);
  *(v18 - 136) = (v14 - 1683) ^ (1575331711 * ((((v18 - 144) | 0xAEE9DCA) - ((v18 - 144) & 0xAEE9DCA)) ^ 0x66B508C8));
  *(v18 - 120) = a12;
  *(v18 - 112) = &a14;
  *(v18 - 128) = &a14;
  *(v18 - 144) = a11;
  (*(v16 + 8 * (v14 + 1021)))(v18 - 144);
  *(v18 - 136) = (v14 - 1683) ^ (1575331711 * ((((2 * (v18 - 144)) | 0x29B3B434) - (v18 - 144) - 349821466) ^ 0x78824F18));
  *(v18 - 120) = a12;
  *(v18 - 112) = &a14;
  *(v18 - 144) = a11;
  *(v18 - 128) = &a14;
  (*(v16 + 8 * (v14 ^ 0xC03)))(v18 - 144);
  v19 = 489239129 * ((v18 - 144) ^ 0xB9282336);
  *(v18 - 144) = (v14 - 2352) ^ v19;
  *(v18 - 136) = a13;
  *(v18 - 128) = ((v15 - 1516654140) ^ 0x7CDEBFF3) - v19 - 1342182611 + (((v15 - 1516654140) << (54 * (v14 ^ 0xF0) - 97)) & 0xF9BD7FE6);
  v20 = (*(v16 + 8 * (v14 + 979)))(v18 - 144);
  return (*(v16 + 8 * ((62 * (*(v18 - 140) != ((6 * (v14 ^ 0x14FA)) ^ 0x5DC99A02))) ^ v14)))(v20);
}

uint64_t sub_196A153B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(void))
{
  *v20 = *(STACK[0xA48] + a7);
  v20[4] = *(STACK[0xA88] + a5);
  v20[8] = *(STACK[0xAC8] + a3);
  v20[12] = *(STACK[0xB08] + v17);
  v20[1] = *(STACK[0xA98] + v19);
  v20[5] = *(STACK[0xAD8] + a2);
  v20[9] = *(STACK[0xB18] + a1);
  v20[13] = *(STACK[0xA58] + v18);
  v20[2] = *(STACK[0xAE8] + v24);
  v20[10] = *(STACK[0xA68] + v23);
  v20[6] = *(STACK[0xB28] + v16);
  v20[14] = *(STACK[0xAA8] + v21);
  v20[15] = *(STACK[0xAF8] + a6);
  v20[11] = *(STACK[0xAB8] + a4);
  v20[7] = *(STACK[0xA78] + v22);
  v20[3] = *(STACK[0xB38] + v15);
  return a15();
}

void sub_196A15484()
{
  *&STACK[0x320] = vdupq_n_s64(0x38uLL);
  *&STACK[0x2D0] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x350] = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  *&STACK[0x300] = vdupq_n_s64(0xC351D2FA9AB1B69CLL);
  *&STACK[0x310] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x2E0] = vdupq_n_s64(0x8EB890C1F5A7514ELL);
  *&STACK[0x2F0] = vdupq_n_s64(0xC751D2FA9AB1B69CLL);
  *&STACK[0x2B0] = vdupq_n_s64(0xDCED4F79D683836ALL);
  *&STACK[0x2C0] = vdupq_n_s64(0x26FE75566C512012uLL);
  *&STACK[0x290] = vdupq_n_s64(v0);
  *&STACK[0x2A0] = vdupq_n_s64(0xEE76A7BCEB41C1B5);
  JUMPOUT(0x196A15710);
}

uint64_t sub_196A16D68@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  a2.n128_u16[0] = -10024;
  a2.n128_u8[2] = -40;
  a2.n128_u8[3] = -40;
  a2.n128_u8[4] = -40;
  a2.n128_u8[5] = -40;
  a2.n128_u8[6] = -40;
  a2.n128_u8[7] = -40;
  a3.n128_u16[0] = -4884;
  a3.n128_u8[2] = -20;
  a3.n128_u8[3] = -20;
  a3.n128_u8[4] = -20;
  a3.n128_u8[5] = -20;
  a3.n128_u8[6] = -20;
  a3.n128_u8[7] = -20;
  return sub_196A16DA4(v3 - 7, (v4 + 1708668866) & 0x9A27D6DB, a1 - 7, (v4 + 1708668866) & 0x9A27D6DB ^ 0x10D2, 4931, a2, a3);
}

uint64_t sub_196A16E78@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W3>, uint64_t a4@<X8>)
{
  v14 = (*(*(v11 + 8) + 4 * v5) ^ v10) + v4;
  *(*(a4 + 8) + 4 * v5) = (v14 - ((v7 & v8 ^ v9) & (2 * v14)) + a1) ^ a2;
  return (*(v13 + 8 * (((v12 > v5 + 1) * a3) ^ (v6 + 200))))();
}

uint64_t sub_196A171EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14, uint64_t a15, uint64_t a16, int a17)
{
  v22 = 1621291457 * ((2 * (&a13 & 0x42DECA90) - &a13 - 1121897105) ^ 0x8B36B4F6);
  a16 = a11;
  a14 = v22 + 1241;
  LODWORD(a15) = v22 ^ (1122297523 * v19 + 296299868);
  (*(v21 + 54664))(&a13);
  v23 = 753662761 * ((2 * (&a13 & 0x50391480) - &a13 + 801565561) ^ 0x4ADC1032);
  a15 = a11;
  a16 = v17;
  a13 = (v18 ^ 0x5FB7FFDE) - v23 + ((2 * v18) & 0xBF6FFFBC) - 159511886;
  a14 = v23 ^ 0x15D7;
  v24 = (*(v21 + 54232))(&a13);
  return (*(v21 + 8 * (((a17 != v20) | (16 * (a17 != v20))) ^ 0xB8Du)))(v24);
}

uint64_t sub_196A17348@<X0>(int a1@<W8>)
{
  STACK[0xAF8] = v1;
  v2 = STACK[0x778];
  STACK[0xB00] = STACK[0x778];
  return (*(STACK[0x248] + 8 * (((v1 - v2 > 9) * (((a1 - 809) | 0x404) ^ (a1 - 596339150) & 0x238B5DCF ^ 0x181D)) ^ a1)))();
}

uint64_t sub_196A173D8@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 4);
  *(a1 + 20) = v4;
  return (*(v3 + 8 * ((209 * (((((v2 - 92) | 0x44) + 1) ^ (v4 == ((11 * (((v2 - 2652) | 0x44) ^ 0x4D9)) ^ 0x1217))) & 1)) ^ ((v2 - 2652) | 0x44))))();
}

uint64_t sub_196A17C18(int a1)
{
  v8 = v5 - 6010 + (a1 + 4811);
  *(v7 + v8) = *(v3 + (v8 & 0xF)) ^ *(v1 + v8) ^ *(v2 + (v8 & 0xF)) ^ *(v4 + (v8 & 0xF)) ^ (-31 * (v8 & 0xF));
  return (*(v6 + 8 * ((4527 * (v8 == 0)) ^ (a1 + 387))))();
}

uint64_t sub_196A19E70@<X0>(int a1@<W8>)
{
  v3 = STACK[0x788];
  STACK[0x7C0] = *(v2 + 8 * v1);
  return (*(v2 + 8 * ((2 * (v3 != 0)) | ((v3 != 0) << 6) | ((v1 ^ a1 ^ ((v1 ^ 0x491) + 4968)) + v1))))();
}

void sub_196A19F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43)
{
  v47 = STACK[0x678];
  v45[35] = *(STACK[0x678] + 15);
  v45[34] = *(v47 + 14);
  v45[33] = *(v47 + 13);
  v45[32] = *(v47 + 12);
  v45[31] = *(v47 + 11);
  v45[30] = *(v47 + 10);
  v45[29] = *(v47 + 9);
  v45[28] = *(v47 + 8);
  v45[27] = *(v47 + 7);
  v45[26] = *(v47 + 6);
  v45[25] = *(v47 + 5);
  v45[24] = *(v47 + 4);
  v45[23] = *(v47 + 3);
  v45[22] = *(v47 + 2);
  v45[21] = *(v47 + 1);
  v45[20] = *v47;
  v48 = STACK[0x618];
  LODWORD(v47) = 1068996913 * (((v43 | 0xD8D7D474) - (v43 & 0xD8D7D474)) ^ 0xD3935E5);
  *(v46 - 192) = STACK[0x618];
  *(v46 - 208) = v47 ^ 0xADA01D3E;
  *(v46 - 200) = v47 + a6 + 46792543;
  (*(v44 + 8 * a43))(v46 - 208);
  STACK[0x610] = v48;
  STACK[0x548] = STACK[0x340];
  LODWORD(STACK[0x460]) = 438359147;
  LODWORD(STACK[0x57C]) = -1178265637;
  JUMPOUT(0x196966134);
}

uint64_t sub_196A1A0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, int a34, unsigned int a35, int a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51)
{
  *(v55 - 128) = v53 + 1283153057 * (((v55 - 144) & 0x4D391280 | ~((v55 - 144) | 0x4D391280)) ^ 0xFD1EEE48) + 3475;
  *(v55 - 120) = v51 + a35;
  *(v55 - 104) = &a37;
  *(v55 - 144) = &a51;
  *(v55 - 136) = a28;
  (*(v52 + 8 * (v53 ^ 0x1B69)))(v55 - 144);
  return (*(v52 + 8 * ((1982 * (*(v55 - 112) == v54 + ((v53 + 2900) | 8) - 3355)) ^ v53)))(a32);
}

uint64_t sub_196A1A1D4()
{
  v1 = *(STACK[0x890] + 24);
  STACK[0x4F0] = v1;
  return (*(STACK[0x248] + 8 * (((v1 == 0) * ((((v0 - 4512) | 0x200) + 2744) ^ 0xE3A)) ^ v0)))();
}

uint64_t sub_196A1BF58@<X0>(unint64_t a1@<X8>)
{
  STACK[0x840] = *(v5 + 8 * v2);
  STACK[0x730] = a1;
  LODWORD(STACK[0xB38]) = v4;
  LOWORD(STACK[0xB3E]) = -28805;
  LODWORD(STACK[0xB40]) = -1720256289;
  LODWORD(STACK[0xB44]) = v3;
  STACK[0xB48] = 0x25B2F1AA6CA5FEE2;
  STACK[0xB50] = 0;
  return (*(v5 + 8 * (((((v2 - 9) ^ (a1 == 0)) & 1) * ((v2 + 1751989726) & 0x9792CF7F ^ 0xE3B)) ^ (v2 + 4640))))();
}

uint64_t sub_196A1BFC0@<X0>(int a1@<W2>, uint64_t a2@<X8>)
{
  v6 = v2 < v4;
  *(a2 + v3) = -31;
  v7 = v3 + 1;
  if (v6 == v7 > 0x6B341DE3)
  {
    v6 = v7 + v4 < v2;
  }

  return (*(v5 + 8 * ((30 * !v6) ^ (a1 - 3491))))();
}

char *fp_dh_71c4acc3d25df08038dc59c5fb4fcc76(char *result, char *a2, unint64_t a3)
{
  if (((a2 ^ result) & 7) == 0)
  {
    v5 = -result & 7;
    if ((-result & 7u) <= 3)
    {
      if ((-result & 7u) <= 1)
      {
        if (!v5)
        {
LABEL_27:
          v13 = a3 >= v5;
          v14 = a3 - v5;
          if (!v13)
          {
            v14 = 0;
          }

          if (v14 >= 8)
          {
            v15 = ((v14 >> 3) + 7) >> 3;
            v16 = (v14 >> 3) & 7;
            if (v16 > 3)
            {
              if (((v14 >> 3) & 7) <= 5)
              {
                if (v16 == 4)
                {
                  goto LABEL_58;
                }

                goto LABEL_57;
              }

              if (v16 == 6)
              {
                goto LABEL_56;
              }

              goto LABEL_55;
            }

            if (((v14 >> 3) & 7) > 1)
            {
              if (v16 == 2)
              {
                goto LABEL_60;
              }

              goto LABEL_59;
            }

            if (!v16)
            {
              goto LABEL_54;
            }

            while (1)
            {
              v32 = *result;
              result += 8;
              *a2 = v32;
              a2 += 8;
              if (!--v15)
              {
                break;
              }

LABEL_54:
              v25 = *result;
              result += 8;
              *a2 = v25;
              a2 += 8;
LABEL_55:
              v26 = *result;
              result += 8;
              *a2 = v26;
              a2 += 8;
LABEL_56:
              v27 = *result;
              result += 8;
              *a2 = v27;
              a2 += 8;
LABEL_57:
              v28 = *result;
              result += 8;
              *a2 = v28;
              a2 += 8;
LABEL_58:
              v29 = *result;
              result += 8;
              *a2 = v29;
              a2 += 8;
LABEL_59:
              v30 = *result;
              result += 8;
              *a2 = v30;
              a2 += 8;
LABEL_60:
              v31 = *result;
              result += 8;
              *a2 = v31;
              a2 += 8;
            }
          }

          v33 = v14 & 7;
          if (v33 <= 3)
          {
            if (v33 <= 1)
            {
              if (!v33)
              {
                return result;
              }

LABEL_78:
              *a2 = *result;
              return result;
            }

            if (v33 == 2)
            {
LABEL_77:
              v39 = *result++;
              *a2++ = v39;
              goto LABEL_78;
            }

LABEL_76:
            v38 = *result++;
            *a2++ = v38;
            goto LABEL_77;
          }

          if (v33 > 5)
          {
            if (v33 != 6)
            {
              v34 = *result++;
              *a2++ = v34;
            }

            v35 = *result++;
            *a2++ = v35;
          }

          else if (v33 == 4)
          {
            goto LABEL_75;
          }

          v36 = *result++;
          *a2++ = v36;
LABEL_75:
          v37 = *result++;
          *a2++ = v37;
          goto LABEL_76;
        }

LABEL_26:
        v12 = *result++;
        *a2++ = v12;
        goto LABEL_27;
      }

      if (v5 == 2)
      {
LABEL_25:
        v11 = *result++;
        *a2++ = v11;
        goto LABEL_26;
      }

LABEL_24:
      v10 = *result++;
      *a2++ = v10;
      goto LABEL_25;
    }

    if ((-result & 7u) > 5)
    {
      if (v5 != 6)
      {
        v6 = *result++;
        *a2++ = v6;
      }

      v7 = *result++;
      *a2++ = v7;
    }

    else if (v5 == 4)
    {
      goto LABEL_23;
    }

    v8 = *result++;
    *a2++ = v8;
LABEL_23:
    v9 = *result++;
    *a2++ = v9;
    goto LABEL_24;
  }

  if ((a3 + 7) >= 8)
  {
    v3 = (a3 + 7) >> 3;
    v4 = a3 & 7;
    if (v4 > 3)
    {
      if ((a3 & 7) <= 5)
      {
        if (v4 == 4)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      if (v4 == 6)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    if ((a3 & 7) > 1)
    {
      if (v4 == 2)
      {
        goto LABEL_51;
      }

      goto LABEL_50;
    }

    if ((a3 & 7) == 0)
    {
      goto LABEL_45;
    }

    while (1)
    {
      v24 = *result++;
      *a2++ = v24;
      if (!--v3)
      {
        break;
      }

LABEL_45:
      v17 = *result++;
      *a2++ = v17;
LABEL_46:
      v18 = *result++;
      *a2++ = v18;
LABEL_47:
      v19 = *result++;
      *a2++ = v19;
LABEL_48:
      v20 = *result++;
      *a2++ = v20;
LABEL_49:
      v21 = *result++;
      *a2++ = v21;
LABEL_50:
      v22 = *result++;
      *a2++ = v22;
LABEL_51:
      v23 = *result++;
      *a2++ = v23;
    }
  }

  return result;
}

void sub_196A1C484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  STACK[0x3F0] = a1 + a14 + v15 + v14 - a13 + 0x2459120130450D9;
  STACK[0x3D0] = v14 & 0xFFFFFFF8;
  JUMPOUT(0x196A1C5C4);
}

uint64_t sub_196A1D2AC(unint64_t a1)
{
  STACK[0x590] = v3 + ((v1 - 57000709) & 0x365BFDC) - 3188;
  STACK[0x5D8] = a1;
  return (*(v4 + 8 * (v1 ^ (7693 * (v2 > a1)))))();
}

void sub_196A1D340()
{
  STACK[0x848] = 0;
  STACK[0x4D0] = *(STACK[0x248] + 8 * (v0 - 3265));
  JUMPOUT(0x196A1D364);
}

void sub_196A1D3C4()
{
  STACK[0x738] = 0;
  STACK[0x4D0] = *(v0 + 8 * (v1 - 3328));
  JUMPOUT(0x196999F10);
}

uint64_t sub_196A1D3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18 = ((((v17 - 144) | 0x72152FC9) - ((v17 - 144) & 0x72152FC9)) ^ 0xCB3D0CFF) * v15;
  *(v17 - 136) = a13;
  *(v17 - 128) = v13 - v18 + (((v16 - 922) | 0x228) ^ 0xD2784EF4 ^ ((v16 + 3224) | 1));
  *(v17 - 144) = (v16 + 515) ^ v18;
  v19 = (*(v14 + 8 * (v16 ^ 0x1106)))(v17 - 144);
  return (*(v14 + 8 * ((26 * (*(v17 - 140) == 1573492468)) | v16)))(v19);
}

void sub_196A1D4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14)
{
  v17 = (((v16 ^ 0x8D53376A) + 1923926166) ^ ((v16 ^ 0xC8DE4020) + 924958688) ^ ((v16 ^ 0x39CA7021) - 969568289)) + 1636949158 + (((a14 ^ 0x72196F49) - 1914269513) ^ ((a14 ^ 0x1AA00CEC) - 446696684) ^ (((67 * (v15 ^ 0xEFF) + 352212719) ^ a14) - 352216270));
  v18 = (v17 ^ 0x14F83138) & (2 * (v17 & 0x96FC3230)) ^ v17 & 0x96FC3230;
  v19 = ((2 * (v17 ^ 0x3CF87518)) ^ 0x54088E50) & (v17 ^ 0x3CF87518) ^ (2 * (v17 ^ 0x3CF87518)) & 0xAA044728;
  v20 = v19 ^ 0xAA044128;
  v21 = v19 & (4 * v18) ^ v18;
  v22 = ((4 * v20) ^ 0xA8111CA0) & v20 ^ (4 * v20) & 0xAA044728;
  v23 = v21 ^ 0xAA044728 ^ (v22 ^ 0xA8000420) & (16 * v21);
  v24 = (16 * (v22 ^ 0x2044308)) & 0xAA044720 ^ 0xA000528 ^ ((16 * (v22 ^ 0x2044308)) ^ 0xA0447280) & (v22 ^ 0x2044308);
  v25 = (v23 << 8) & 0xAA044700 ^ v23 ^ ((v23 << 8) ^ 0x4472800) & v24;
  *(v14 + 88) = v17 ^ (2 * ((v25 << 16) & 0x2A040000 ^ v25 ^ ((v25 << 16) ^ 0x47280000) & ((v24 << 8) & 0x2A040000 ^ 0x2A000000 ^ ((v24 << 8) ^ 0x4470000) & v24))) ^ 0xBABBBB0B;
  JUMPOUT(0x196A1D6ACLL);
}

uint64_t sub_196A1D708@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v6 = (v4 + v3 + 16);
  v6[-1] = a2;
  *v6 = a2;
  return (*(v5 + 8 * ((((a1 & 0xFFFFFFFFFFFFFFE0) == 32) * (((2 * v2) ^ 0xD42) - 4456)) ^ v2)))();
}

uint64_t sub_196A1D74C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v3 + 8) = a1;
  LODWORD(STACK[0x824]) = 1906281716;
  v5 = STACK[0x248];
  v1 = ((236 * (v4 ^ 0x1920)) ^ 0x5F) - 520;
  STACK[0x4C0] = STACK[0x580];
  STACK[0x958] += (95 * (v1 ^ 0x600u)) ^ 0xFFFFFFFFFFFFFBF5;
  return (*(v5 + 8 * (v1 ^ 0x1430)))();
}

_BYTE *fp_dh_9ce0f494986b3860faebeb7ccbf464fc(_BYTE *result, unsigned int a2, unint64_t a3)
{
  v3 = -result & 7;
  if (v3 > a3)
  {
    LODWORD(v3) = a3;
  }

  if (v3 > 3)
  {
    if (v3 > 5)
    {
      if (v3 != 6)
      {
        if (v3 != 7)
        {
          goto LABEL_20;
        }

        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v3 == 4)
    {
LABEL_16:
      *result++ = a2;
      goto LABEL_17;
    }

    *result++ = a2;
    goto LABEL_16;
  }

  switch(v3)
  {
    case 1:
LABEL_19:
      *result++ = a2;
      break;
    case 2:
LABEL_18:
      *result++ = a2;
      goto LABEL_19;
    case 3:
LABEL_17:
      *result++ = a2;
      goto LABEL_18;
  }

LABEL_20:
  v4 = a3 - v3;
  if (v4 >= 8)
  {
    v5 = 0x101010101010101 * a2;
    v6 = ((v4 >> 3) + 7) >> 3;
    v7 = (v4 >> 3) & 7;
    if (v7 > 3)
    {
      if (((v4 >> 3) & 7) <= 5)
      {
        if (v7 == 4)
        {
          goto LABEL_36;
        }

        goto LABEL_35;
      }

      if (v7 == 6)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    if (((v4 >> 3) & 7) > 1)
    {
      if (v7 == 2)
      {
        goto LABEL_38;
      }

      goto LABEL_37;
    }

    if (!v7)
    {
      goto LABEL_32;
    }

    while (1)
    {
      *result = v5;
      result += 8;
      if (!--v6)
      {
        break;
      }

LABEL_32:
      *result = v5;
      result += 8;
LABEL_33:
      *result = v5;
      result += 8;
LABEL_34:
      *result = v5;
      result += 8;
LABEL_35:
      *result = v5;
      result += 8;
LABEL_36:
      *result = v5;
      result += 8;
LABEL_37:
      *result = v5;
      result += 8;
LABEL_38:
      *result = v5;
      result += 8;
    }
  }

  v8 = v4 & 7;
  if (v8 > 3)
  {
    if (v8 > 5)
    {
      if (v8 != 6)
      {
        *result++ = a2;
      }

      *result++ = a2;
    }

    else if (v8 == 4)
    {
      goto LABEL_53;
    }

    *result++ = a2;
LABEL_53:
    *result++ = a2;
LABEL_54:
    *result++ = a2;
LABEL_55:
    *result++ = a2;
    goto LABEL_56;
  }

  if (v8 > 1)
  {
    if (v8 == 2)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  if (v8)
  {
LABEL_56:
    *result = a2;
  }

  return result;
}

uint64_t fpfs_HDRBatonAvailable()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_199();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_45();
  if (!v2)
  {
    if (*(v0 + 80))
    {
      CMBaseObjectGetDerivedStorage();
      v3 = CMBaseObjectGetDerivedStorage();
      if (!CelestialShouldLimitHDRConcurrentPlayback() || (*(v3 + 872) - 1) >= 2)
      {
        fpfsi_SwitchBetweenHDRAndSDR(*(v0 + 80), 0);
      }
    }
  }

  return fpfs_UnlockWithCaller();
}

uint64_t fpfs_4kBatonAvailable()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_199();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_45();
  if (!v2)
  {
    if (*(v0 + 80))
    {
      CMBaseObjectGetDerivedStorage();
      v3 = CMBaseObjectGetDerivedStorage();
      if (!CelestialShouldLimit4kConcurrentPlayback() || (*(v3 + 872) - 1) >= 2)
      {
        fpfsi_SwitchBetween4kAndHD();
      }
    }
  }

  return fpfs_UnlockWithCaller();
}

uint64_t fpfs_SpatialAudioPreferencesChanged()
{
  OUTLINED_FUNCTION_645();
  OUTLINED_FUNCTION_199();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_173(DerivedStorage);
  FigSimpleMutexLock();
  OUTLINED_FUNCTION_45();
  if (!v11 && *(v1 + 80))
  {
    OUTLINED_FUNCTION_271(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14));
  }

  return fpfs_UnlockAndPostNotificationsWithCaller(v0);
}

uint64_t fpfsi_pauseItem(uint64_t result)
{
  if (result)
  {
    v1 = result;
    CMBaseObjectGetDerivedStorage();
    v4 = OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
    v5 = v2;
    return fpfs_setRateInternal(v3, v1, v6, &v4, 0.0);
  }

  return result;
}

void fpfs_CheckIfLikelyToKeepUpAndNotify()
{
  OUTLINED_FUNCTION_831();
  v514 = v2;
  v515 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_369();
  v513 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v501 = **&MEMORY[0x1E6960C70];
  v500 = 0;
  CFRetain(v0);
  v15 = CMBaseObjectGetDerivedStorage();
  if (FigRetainProxyIsInvalidated())
  {
    goto LABEL_66;
  }

  if (v11)
  {
    v16 = 1;
  }

  else
  {
    v16 = *(DerivedStorage + 160) == 0;
  }

  v17 = *(v15 + 1680);
  v454 = v9;
  v460 = v7;
  if (v17)
  {
    v18 = FigAlternateIsIFrameOnly(v17) != 0;
  }

  else
  {
    v18 = 0;
  }

  LODWORD(v472) = v18;
  HIDWORD(v472) = fpfsi_waitForVenueDescriptionProcessing();
  OUTLINED_FUNCTION_498();
  v19 = &unk_1EAF16000;
  v478 = DerivedStorage;
  if (!v20)
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_755();
  v21 = !v20;
  if (!v21 && !v18)
  {
    goto LABEL_52;
  }

  if (v18 || !v16)
  {
    goto LABEL_53;
  }

  if (*(CMBaseObjectGetDerivedStorage() + 1024))
  {
    OUTLINED_FUNCTION_196();
    do
    {
      OUTLINED_FUNCTION_247();
      if (v20)
      {
        if (*(v22 + 112))
        {
          goto LABEL_28;
        }
      }
    }

    while (*(v22 + 24));
  }

  if (*(CMBaseObjectGetDerivedStorage() + 1024))
  {
    OUTLINED_FUNCTION_144();
    while (1)
    {
      OUTLINED_FUNCTION_247();
      if (v20)
      {
        if (*(v23 + 112))
        {
          break;
        }
      }

      if (!*(v23 + 24))
      {
        goto LABEL_27;
      }
    }

LABEL_28:
    v24 = 1;
    goto LABEL_29;
  }

LABEL_27:
  v24 = 0;
LABEL_29:
  OUTLINED_FUNCTION_58();
  time2 = **&MEMORY[0x1E6960CC0];
  v25 = CMTimeCompare(&time1, &time2);
  if (!v24 || !v25)
  {
    if (dword_1EAF169F0)
    {
      v29 = OUTLINED_FUNCTION_124();
      OUTLINED_FUNCTION_839(v29, v30, v31, v32, v33, v34, v35, v36, value, v357, v363, v369, v375, v381, v387, v393, v399, v405, v411, v417, v423, v429, v435, v442, cf, v454, v7, v466, v472, DerivedStorage, v485, v490, v494, type.value, *&type.timescale, type.epoch, v499.value);
      OUTLINED_FUNCTION_28();
      if (v16)
      {
        if (v0)
        {
          v37 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v37 = "";
        }

        v485 = v37;
        if (v1)
        {
          v19 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v19 = "";
        }

        OUTLINED_FUNCTION_58();
        CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 136316418;
        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_160(v38);
        v507 = v19;
        v508 = v39;
        OUTLINED_FUNCTION_26(v40);
        OUTLINED_FUNCTION_23();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_506();
      }

      OUTLINED_FUNCTION_597();
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_855();
      DerivedStorage = v478;
    }

    if (!*(DerivedStorage + 160))
    {
      fpfs_stopPlaybackForInternalReason();
    }

LABEL_52:
    v16 = 0;
    goto LABEL_53;
  }

  if (dword_1EAF169F0)
  {
    LODWORD(v19) = v499.value;
    v485 = OUTLINED_FUNCTION_124();
    os_log_type_enabled(v485, type.value);
    OUTLINED_FUNCTION_125();
    if (v20)
    {
      v27 = v26;
    }

    else
    {
      v27 = v499.value;
    }

    if (v27)
    {
      if (v0)
      {
        v28 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v28 = "";
      }

      HIDWORD(v466) = HIDWORD(v28);
      if (v1)
      {
        v19 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v19 = "";
      }

      OUTLINED_FUNCTION_58();
      CMTimeGetSeconds(&time1);
      LODWORD(time2.value) = 136316418;
      OUTLINED_FUNCTION_44();
      OUTLINED_FUNCTION_160(v112);
      v507 = v19;
      v508 = v113;
      OUTLINED_FUNCTION_26(v114);
      OUTLINED_FUNCTION_31();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_506();
    }

    OUTLINED_FUNCTION_597();
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_855();
  }

LABEL_53:
  LODWORD(v466) = *(v15 + 524);
  OUTLINED_FUNCTION_58();
  IsItemReadyToStart = fpfs_IsItemReadyToStart(v1, &time1, v5, &v500 + 1, &v501, &v500);
  if ((v501.flags & 1) != 0 && (OUTLINED_FUNCTION_498(), v20) && (fpfs_GetTime(v15, &time1), OUTLINED_FUNCTION_745(v42, v43, v44, v45, v46, v47, v48, v49, value, v357, v363, v369, v375, v381, v387, v393, v399, v405, v411, v417, v423, v429, v435, v442, cf, v454, v460, v466, v472, v478, v485, v490, v494, type.value, *&type.timescale, type.epoch, 0, 0, 0, v500, *&v501.value), CMTimeSubtract(&v499, &time2, &time1), memset(&type, 0, sizeof(type)), OUTLINED_FUNCTION_58(), time2 = v499, v50 = CMTimeSubtract(&type, &time1, &time2), OUTLINED_FUNCTION_743(v50, v51, v52, *(v15 + 1072), v53, v54, v55, v56, valuec, v358, v364, v370, v376, v382, v388, v394, v400, v406, v412, v418, v424, v430, v436, v443, cfc, v455, v461, v467, v473, v479, v486, v491, v495, v57, type.value), OUTLINED_FUNCTION_745(v58, v59, v60, v61, v62, v63, v64, v65, valued, v359, v365, v371, v377, v383, v389, v395, v401, v407, v413, v419, v425, v431, v437, v444, cfd, v456, v462, v468, v474, v480, v487, v492, v496, type.value, *&type.timescale, type.epoch, v499.value, *&v499.timescale, v499.epoch, v500, *&v501.value), OUTLINED_FUNCTION_57(), v74 = fpfs_CheckCanKeepUp(v66, v67, v68, v69, v70, v71, v72, v73), v74) && (OUTLINED_FUNCTION_365(v74, v75, v76, v77, v78, v79, v80, v81, value, v357, v363, v369, v375, v381, v387, v393, v399, v405, v411, v417, v423, v429, v435, v442, cf, v454, v460, v466, v472, v478, v485, v490, v494, type.value, *&type.timescale, type.epoch, v499.value, *&v499.timescale, v499.epoch, v500, v82, v501.value), fpfsi_TryToSeekWithinBuffer(), v91))
  {
    OUTLINED_FUNCTION_365(v91, v92, v93, v94, v95, v96, v97, v98, value, v357, v363, v369, v375, v381, v387, v393, v399, v405, v411, v417, v423, v429, v435, v442, cf, v454, v460, v466, v472, v478, v485, v490, 0, type.value, *&type.timescale, type.epoch, v499.value, *&v499.timescale, v499.epoch, v500, v99, v501.value);
    fpfsi_CopyDateForTime();
    if (dword_1EAF169F0)
    {
      OUTLINED_FUNCTION_595();
      LODWORD(v19) = HIDWORD(v490);
      v485 = OUTLINED_FUNCTION_497();
      LODWORD(cf) = BYTE3(v490);
      os_log_type_enabled(v485, BYTE3(v490));
      OUTLINED_FUNCTION_125();
      if (!v20)
      {
        v108 = HIDWORD(v490);
      }

      if (v108)
      {
        LODWORD(v442) = v108;
        if (v0)
        {
          v100 = CMBaseObjectGetDerivedStorage();
          v110 = (v100 + 888);
        }

        else
        {
          v110 = "";
        }

        v439 = v110;
        if (v1)
        {
          v100 = CMBaseObjectGetDerivedStorage();
          v264 = (v100 + 3096);
        }

        else
        {
          v264 = "";
        }

        OUTLINED_FUNCTION_365(v100, v101, v102, v103, v104, v105, v106, v107, value, v357, v363, v369, v375, v381, v387, v393, v399, v405, v411, v417, v423, v264, v439, v442, cf, v454, v460, v466, v472, v478, v485, v490, v494, type.value, *&type.timescale, type.epoch, v499.value, *&v499.timescale, v499.epoch, v500, v109, v501.value);
        v265.n128_f64[0] = CMTimeGetSeconds(&time1);
        v266 = v265.n128_u64[0];
        v19 = v497;
        OUTLINED_FUNCTION_743(v267, v268, v269, v270, v271, v272, v273, v274, valuee, v361, v367, v373, v379, v385, v391, v397, v403, v409, v415, v421, v427, v433, v440, v446, cfe, v458, v464, v470, v476, v483, v488, v493, v497, v265, type.value);
        CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 136316930;
        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_160(v275);
        v507 = v429;
        v508 = v276;
        v509 = v266;
        v510 = 2112;
        v511[0] = v19;
        LOWORD(v511[1]) = v276;
        *(&v511[1] + 2) = v277;
        OUTLINED_FUNCTION_71();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
        LODWORD(v19) = HIDWORD(v490);
      }

      OUTLINED_FUNCTION_597();
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_855();
    }

    if (v494)
    {
      CFRelease(v494);
    }

    LODWORD(v485) = -12863;
  }

  else
  {
    LODWORD(v485) = 0;
  }

  if (IsItemReadyToStart)
  {
    v83 = 1;
  }

  else
  {
    v83 = v16;
  }

  if (v83 != 1)
  {
LABEL_62:
    v84 = *(v15 + 524);
    if (!v84)
    {
      fpfs_setPlaythroughPredictionAndNotify(v1, 2);
      goto LABEL_66;
    }

    goto LABEL_63;
  }

  OUTLINED_FUNCTION_596();
  if (!v85)
  {
    if (*(v15 + 553) == 1)
    {
      time1.value = 0;
      v86 = *(v15 + 912);
      cf = FigGetAllocatorForMedia();
      FigBaseObject = FigBytePumpGetFigBaseObject(v86);
      v88 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v88)
      {
        v88(FigBaseObject, @"FBP_PrebufferReservation", cf, &time1);
      }

      if (time1.value)
      {
        CFRelease(time1.value);
      }

      LODWORD(v19) = -353280000;
    }

    if (dword_1EAF169F0)
    {
      v89 = OUTLINED_FUNCTION_124();
      LODWORD(v19) = v499.value;
      HIDWORD(cf) = HIDWORD(v89);
      LODWORD(v442) = LOBYTE(type.value);
      os_log_type_enabled(v89, type.value);
      OUTLINED_FUNCTION_125();
      if (!v20)
      {
        v90 = v19;
      }

      if (v90)
      {
        LODWORD(v435) = v90;
        if (v0)
        {
          v111 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v111 = "";
        }

        v429 = v111;
        if (v1)
        {
          v19 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v19 = "";
        }

        OUTLINED_FUNCTION_58();
        CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 136316930;
        OUTLINED_FUNCTION_44();
        OUTLINED_FUNCTION_160(v115);
        v507 = v19;
        v508 = v116;
        v509 = v117;
        v510 = 1024;
        LODWORD(v511[0]) = v16;
        WORD2(v511[0]) = 1024;
        *(v511 + 6) = IsItemReadyToStart;
        OUTLINED_FUNCTION_71();
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_506();
      }

      OUTLINED_FUNCTION_597();
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_855();
    }

    v118 = OUTLINED_FUNCTION_409();
    fpfs_UpdateDimensions(v118, v119);
    v120 = CMBaseObjectGetDerivedStorage();
    if (!*(v120 + 464))
    {
      v121 = v120;
      cfa = *(v120 + 469);
      if (!*(v120 + 469) && *MEMORY[0x1E695FF58] == 1)
      {
        if (v1)
        {
          v122 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v122 = "";
        }

        strncpy(&time1, v122, 8uLL);
        OUTLINED_FUNCTION_197();
        kdebug_trace();
      }

      *(v121 + 464) = 1;
      *(v121 + 469) = 1;
      if (*(v121 + 2088) == 0.0)
      {
        *(v121 + 2088) = CFAbsoluteTimeGetCurrent();
        v123 = *(v121 + 2040);
        v124 = *(v121 + 2056);
        v442 = @"playerStats";
        if (*(v121 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v125 = OUTLINED_FUNCTION_594();
          v126(v125);
        }

        if (*(v121 + 2568))
        {
          v435 = *(v121 + 2568);
          v127 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v127)
          {
            v127(v435, @"playerStats", 0x1F0B65558, ((v124 - v123) * 1000.0), 0);
          }

          if (*(v121 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            v128 = OUTLINED_FUNCTION_594();
            v129(v128);
          }
        }
      }

      if (!cfa)
      {
        fpfsi_networkActivitySubmitMetricsForInitialStartupIfAvailable();
        if (*(v121 + 2072))
        {
          if (!*(v121 + 2096))
          {
            FigGetUpTimeNanoseconds();
            v130 = *(v121 + 2568);
            if (v130)
            {
              v442 = *(v121 + 2072);
              if (*(*(CMBaseObjectGetVTable() + 16) + 56))
              {
                OUTLINED_FUNCTION_405();
                v133(v130, 0x1F0B64678, 0x1F0B67638, v131 / v132, 1);
              }
            }
          }
        }
      }

      v411 = @"AbsoluteTimeWhenReadyToPlay";
      v417 = 0;
      v399 = @"DisplayNonForcedSubtitles";
      v405 = @"EligibleForDSPBasedEnhancedDialogue";
      v387 = @"VideoSlotArray";
      v393 = @"VideoTrackMatrix";
      v375 = @"CurrentDuration";
      v381 = @"CurrentDimensions";
      v363 = @"CanPlayReverse";
      v369 = @"SupportsFrameStepping";
      v134 = OUTLINED_FUNCTION_298();
      fpfs_CreateNotificationPayloadForProperties(v134, v135, v136, v137, v138, v139, v140, v141, @"CanPlayFastForward", @"CanPlayFastReverse");
      v142 = OUTLINED_FUNCTION_236();
      cf = v143;
      fpfs_EnqueueNotification(v142, v144, v145, v143);
      fpfs_enqueuePrerollDidCompleteNotificationIfNeeded();
      if (*(v121 + 2097))
      {
        if (!*(v121 + 2099))
        {
          if (*(v121 + 2024) > 0.0)
          {
            Current = CFAbsoluteTimeGetCurrent();
            OUTLINED_FUNCTION_492(Current - *(v121 + 2024), 1000.0);
            FigReportingAgentStatsSetIntValueWithOptions(v147);
          }

          goto LABEL_132;
        }

        *(v121 + 2099) = 0;
        *(v121 + 2008) = CFAbsoluteTimeGetCurrent() - *(v121 + 1984);
      }

      else
      {
        *(v121 + 2097) = 1;
        *(v121 + 2000) = CFAbsoluteTimeGetCurrent() - *(v121 + 1992);
      }

      v148 = *(v121 + 2568);
      if (v148 && *(*(CMBaseObjectGetVTable() + 16) + 56))
      {
        v149 = OUTLINED_FUNCTION_730(1000.0);
        v150(v148, v149);
      }

LABEL_132:
      v19 = &unk_1EAF16000;
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  LODWORD(cf) = (IsItemReadyToStart == 0) & ~v472;
  if (cf || *(v15 + 524) == 1)
  {
    goto LABEL_136;
  }

  if (*MEMORY[0x1E695FF50])
  {
    v187 = fig_log_handle();
    if (os_signpost_enabled(v187))
    {
      if (v1)
      {
        v188 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v188 = "";
      }

      LODWORD(time1.value) = 136315394;
      *(&time1.value + 4) = v188;
      LOWORD(time1.flags) = 2048;
      *(&time1.flags + 2) = v1;
      OUTLINED_FUNCTION_546();
      _os_signpost_emit_with_name_impl(v197, v187, OS_SIGNPOST_EVENT, v198, v199, v200, &time1, 0x16u);
    }
  }

  if (*MEMORY[0x1E695FF40])
  {
    if (v1)
    {
      v201 = (CMBaseObjectGetDerivedStorage() + 3096);
    }

    else
    {
      v201 = "";
    }

    value = v201;
    v357 = v1;
    fig_gm_ktrace_wrapper();
  }

  v202 = OUTLINED_FUNCTION_409();
  fpfs_setPlaythroughPredictionAndNotify(v202, v203);
  v204 = CMBaseObjectGetDerivedStorage();
  time1.value = 0;
  time2.value = 0;
  if (*(CMBaseObjectGetDerivedStorage() + 1024))
  {
    OUTLINED_FUNCTION_144();
    while (1)
    {
      OUTLINED_FUNCTION_247();
      if (v20)
      {
        if (v205[14])
        {
          break;
        }
      }

      if (!v205[3])
      {
        goto LABEL_178;
      }
    }
  }

  else
  {
LABEL_178:
    if (!*(CMBaseObjectGetDerivedStorage() + 1024))
    {
LABEL_184:
      v206 = 0;
      goto LABEL_186;
    }

    OUTLINED_FUNCTION_196();
    while (1)
    {
      OUTLINED_FUNCTION_247();
      if (v20)
      {
        if (v205[14])
        {
          break;
        }
      }

      if (!v205[3])
      {
        goto LABEL_184;
      }
    }
  }

  v206 = v205[57];
LABEL_186:
  if (fpfsi_copyPlayableTimeL3(v1, &time2))
  {
LABEL_196:
    v206 = time2.value;
    goto LABEL_197;
  }

  if (*(v204 + 2032) > 0.0)
  {
    goto LABEL_188;
  }

  if (*(v204 + 2096))
  {
    if (*(v204 + 2024) > 0.0)
    {
LABEL_188:
      CFAbsoluteTimeGetCurrent();
      FigGetAllocatorForMedia();
      v207 = OUTLINED_FUNCTION_593();
      if (FigMetricItemLikelyToKeepUpEventCreate(v208, v209, v210, v211, v207))
      {
        goto LABEL_197;
      }
    }

LABEL_194:
    v217 = *(v204 + 3400);
    v218 = time1.value;
    v219 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v219)
    {
      v219(v217, 0, v218);
    }

    goto LABEL_196;
  }

  CFAbsoluteTimeGetCurrent();
  FigGetAllocatorForMedia();
  v212 = OUTLINED_FUNCTION_593();
  if (!FigMetricItemInternalInitialLikelyToKeepUpEventCreate(v213, v214, v215, v216, v212))
  {
    goto LABEL_194;
  }

LABEL_197:
  if (v206)
  {
    CFRelease(v206);
  }

  if (time1.value)
  {
    CFRelease(time1.value);
  }

  if (!*(v15 + 2096))
  {
    *(v15 + 2096) = 1;
    v220 = CFAbsoluteTimeGetCurrent() - *(v15 + 1992);
    *(v15 + 1976) = v220;
    v221 = *(v15 + 2568);
    if (!v221)
    {
      goto LABEL_136;
    }

    v222 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v222)
    {
      goto LABEL_136;
    }

    v223 = v220 * 1000.0;
    goto LABEL_211;
  }

  if (*(v15 + 2098))
  {
    v226 = CFAbsoluteTimeGetCurrent();
    v227 = *(v15 + 1984);
    *(v15 + 2098) = 0;
    v221 = *(v15 + 2568);
    if (!v221)
    {
      goto LABEL_136;
    }

    v228 = v226;
    v222 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (!v222)
    {
      goto LABEL_136;
    }

    v223 = (v228 - v227) * 1000.0;
LABEL_211:
    v222(v221, @"playerStats", 0x1F0B654F8, v223, 0);
    goto LABEL_136;
  }

  if (*(v15 + 2024) > 0.0)
  {
    v224 = CFAbsoluteTimeGetCurrent();
    OUTLINED_FUNCTION_492(v224 - *(v15 + 2024), 1000.0);
    FigReportingAgentStatsSetIntValueWithOptions(v225);
  }

LABEL_136:
  fpfsi_performCurrentResourceConservationAction(v1, *(v478 + 828));
  *(v15 + 2024) = 0;
  v151 = OUTLINED_FUNCTION_249();
  if (fpfs_getNext(v151, v152) != v1)
  {
LABEL_137:
    v153 = cf;
    goto LABEL_237;
  }

  v153 = cf;
  if (v466 == 1)
  {
    v154 = 1;
  }

  else
  {
    v154 = cf;
  }

  if ((v154 & 1) == 0)
  {
    OUTLINED_FUNCTION_58();
    CMTimeGetSeconds(&time1);
    v229 = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_592(v229);
    v442 = CMBaseObjectGetDerivedStorage();
    fpfsi_RTCReportingUpdateCurrentAlternateInfo();
    v230 = OUTLINED_FUNCTION_610();
    fpfsi_RTCReportingUpdateBufferDuration(v230, v231);
    if (*(v13 + 2568))
    {
      if (*(*(CMBaseObjectGetVTable() + 16) + 8))
      {
        OUTLINED_FUNCTION_614();
        OUTLINED_FUNCTION_305();
        v240(v232, v233, v234, v235, v236, v237, v238, v239, value, v357, v363, v369);
      }

      if (*(v13 + 2568))
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 64))
        {
          v241 = OUTLINED_FUNCTION_614();
          v242(v241);
        }

        if (*(v13 + 2568))
        {
          if (*(*(CMBaseObjectGetVTable() + 16) + 64))
          {
            v243 = OUTLINED_FUNCTION_614();
            v244(v243);
          }

          if (*(v13 + 2568))
          {
            if (*(*(CMBaseObjectGetVTable() + 16) + 64))
            {
              v245 = OUTLINED_FUNCTION_614();
              v246(v245);
            }

            if (*(v13 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 64))
            {
              v247 = OUTLINED_FUNCTION_614();
              v248(v247);
            }
          }
        }
      }
    }

    v249 = *(v13 + 1680);
    if (v249)
    {
      FigAlternateIsIFrameOnly(v249);
      OUTLINED_FUNCTION_381();
    }

    else
    {
      v250 = 0;
    }

    v153 = cf;
    if (!*(v13 + 2616) && (v250 & 1) == 0)
    {
      *(v13 + 2616) = 1;
      CFAbsoluteTimeGetCurrent();
      CFAbsoluteTimeGetCurrent();
      *(v13 + 3016) = CFAbsoluteTimeGetCurrent();
      if (*(v13 + 2568))
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v252 = OUTLINED_FUNCTION_590();
          v253(v252);
        }

        if (*(v13 + 2568) && *(*(CMBaseObjectGetVTable() + 16) + 56))
        {
          v254 = OUTLINED_FUNCTION_590();
          v255(v254);
        }
      }

      fpfsi_networkActivitySubmitMetricsForInitialStartupIfAvailable();
      fpfsi_RTCReportingReportDesiredRateChange(*(&v442[3].info + 1));
    }
  }

  v155 = v478;
  OUTLINED_FUNCTION_755();
  if (v20)
  {
    if (v156 != 1)
    {
      if (dword_1EAF169F0)
      {
        LODWORD(v499.value) = 0;
        LOBYTE(type.value) = 0;
        v189 = OUTLINED_FUNCTION_128();
        OUTLINED_FUNCTION_229(v189, v190, v191, v192, v193, v194, v195, v196, value, v357, v363, v369, v375, v381, v387, v393, v399, v405, v411, v417, v423, v429, v435, v442, cf, v454, v460, v466, v472, v478, v485, v490, v494, type.value, *&type.timescale, type.epoch, v499.value);
        OUTLINED_FUNCTION_37();
        if (v19)
        {
          if (v0)
          {
            CMBaseObjectGetDerivedStorage();
          }

          if (v1)
          {
            v251 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v251 = "";
          }

          LODWORD(time2.value) = 136316162;
          OUTLINED_FUNCTION_6(v251);
          OUTLINED_FUNCTION_71();
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_449();
        v155 = v482;
        v153 = cfb;
      }

      if (fpfs_shouldReleaseRenderChainForPausing())
      {
        fpfsi_ReleaseRenderChainsForPausing(*(v155 + 80));
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_498();
    if (!v20)
    {
      goto LABEL_237;
    }

    IsDisplayModeSwitchInProgress = FPSupport_IsDisplayModeSwitchInProgress();
    v158 = OUTLINED_FUNCTION_410();
    fpfs_GetNextTimeToPlay(v158, v159, v160);
    v161 = OUTLINED_FUNCTION_747();
    v162 = fpfsi_atOrAfterTimeToPausePlayback(v161);
    if (IsDisplayModeSwitchInProgress)
    {
      v170 = v16;
    }

    else
    {
      v170 = 1;
    }

    if (v170 != 1 || v162 || HIDWORD(v472))
    {
      if (IsDisplayModeSwitchInProgress)
      {
        if (!dword_1EAF169F0)
        {
          goto LABEL_137;
        }

        LODWORD(v499.value) = 0;
        LOBYTE(type.value) = 0;
        v171 = OUTLINED_FUNCTION_128();
        OUTLINED_FUNCTION_229(v171, v172, v173, v174, v175, v176, v177, v178, value, v357, v363, v369, v375, v381, v387, v393, v399, v405, v411, v417, v423, v429, v435, v442, cf, v454, v460, v466, v472, v478, v485, v490, v494, type.value, *&type.timescale, type.epoch, v499.value);
        OUTLINED_FUNCTION_37();
        if (!v19)
        {
          goto LABEL_305;
        }

        if (v0)
        {
          v179 = CMBaseObjectGetDerivedStorage();
        }

        if (!v1)
        {
          goto LABEL_304;
        }
      }

      else if (v162)
      {
        if (!dword_1EAF169F0)
        {
          goto LABEL_137;
        }

        LODWORD(v499.value) = 0;
        LOBYTE(type.value) = 0;
        v256 = OUTLINED_FUNCTION_128();
        OUTLINED_FUNCTION_229(v256, v257, v258, v259, v260, v261, v262, v263, value, v357, v363, v369, v375, v381, v387, v393, v399, v405, v411, v417, v423, v429, v435, v442, cf, v454, v460, v466, v472, v478, v485, v490, v494, type.value, *&type.timescale, type.epoch, v499.value);
        OUTLINED_FUNCTION_37();
        if (!v19)
        {
          goto LABEL_305;
        }

        if (v0)
        {
          v179 = CMBaseObjectGetDerivedStorage();
        }

        if (!v1)
        {
          goto LABEL_304;
        }
      }

      else
      {
        if (!HIDWORD(v472) || !dword_1EAF169F0)
        {
          goto LABEL_137;
        }

        v278 = OUTLINED_FUNCTION_124();
        OUTLINED_FUNCTION_229(v278, v279, v280, v281, v282, v283, v284, v285, value, v357, v363, v369, v375, v381, v387, v393, v399, v405, v411, v417, v423, v429, v435, v442, cf, v454, v460, v466, v472, v478, v485, v490, v494, type.value, *&type.timescale, type.epoch, v499.value);
        OUTLINED_FUNCTION_37();
        if (!v19)
        {
          goto LABEL_305;
        }

        if (v0)
        {
          v179 = CMBaseObjectGetDerivedStorage();
        }

        if (!v1)
        {
LABEL_304:
          OUTLINED_FUNCTION_216(v179, v180, v181, v182, v183, v184, v185, v186, valuea, v360, v366, v372, v378, v384, v390, v396, v402, v408, v414, v420, v426, v432, v438, v445, cf, v457, v463, v469, v475, v481);
          LODWORD(time2.value) = 136316418;
          OUTLINED_FUNCTION_6(v314);
          v508 = v315;
          OUTLINED_FUNCTION_26(v316);
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl();
LABEL_305:
          OUTLINED_FUNCTION_7();
LABEL_306:
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          goto LABEL_137;
        }
      }

LABEL_303:
      v179 = CMBaseObjectGetDerivedStorage();
      goto LABEL_304;
    }

    if (!*(v478 + 168) && *(v15 + 464))
    {
      OUTLINED_FUNCTION_726(v162, v163, v164, v165, v166, v167, v168, v169, value, v357, v363, v369, v375, v381, v387, v393, v399, v405, v411, v417, v423, v429, v435, v442, cf, v454, v460, v466, v472, v478);
      OUTLINED_FUNCTION_439();
      fpfs_notifyExternalStartupTasksOfEvents();
    }

    if (!fpfs_areAllExternalStartupTasksCompleted())
    {
      if (!dword_1EAF169F0)
      {
        goto LABEL_137;
      }

      OUTLINED_FUNCTION_223();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_229(os_log_and_send_and_compose_flags_and_os_log_type, v307, v308, v309, v310, v311, v312, v313, value, v357, v363, v369, v375, v381, v387, v393, v399, v405, v411, v417, v423, v429, v435, v442, cf, v454, v460, v466, v472, v478, v485, v490, v494, type.value, *&type.timescale, type.epoch, v499.value);
      OUTLINED_FUNCTION_37();
      if (!v19)
      {
        goto LABEL_305;
      }

      if (v0)
      {
        v179 = CMBaseObjectGetDerivedStorage();
      }

      if (!v1)
      {
        goto LABEL_304;
      }

      goto LABEL_303;
    }

    valid = fpfs_audioOnlyValidAlternateList(v15);
    if (!valid)
    {
      v294 = OUTLINED_FUNCTION_726(valid, v287, v288, v289, v290, v291, v292, v293, value, v357, v363, v369, v375, v381, v387, v393, v399, v405, v411, v417, v423, v429, v435, v442, cf, v454, v460, v466, v472, v478);
      v295 = v294 >= 0.0 && v294 <= 2.0;
      v296 = v295;
      if (((v296 | v472) & 1) == 0 && !*(v15 + 2992))
      {
        OUTLINED_FUNCTION_298();
        fpfs_EnterBestEffortTrickplayMode(v334);
      }
    }

    if (*(v15 + 2992))
    {
      goto LABEL_137;
    }

    v297 = CMBaseObjectGetDerivedStorage();
    v153 = cf;
    if (!*(v297 + 1024))
    {
      goto LABEL_308;
    }

    OUTLINED_FUNCTION_144();
    while (1)
    {
      OUTLINED_FUNCTION_247();
      if (v20)
      {
        if (*(v305 + 112))
        {
          break;
        }
      }

      if (!*(v305 + 24))
      {
        goto LABEL_308;
      }
    }

    if (!*(v305 + 120))
    {
LABEL_308:
      if (dword_1EAF169F0)
      {
        OUTLINED_FUNCTION_223();
        v317 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_839(v317, v318, v319, v320, v321, v322, v323, v324, value, v357, v363, v369, v375, v381, v387, v393, v399, v405, v411, v417, v423, v429, v435, v442, cf, v454, v460, v466, v472, v478, v485, v490, v494, type.value, *&type.timescale, type.epoch, v499.value);
        OUTLINED_FUNCTION_28();
        if (v16)
        {
          if (v0)
          {
            v325 = CMBaseObjectGetDerivedStorage();
            v333 = (v325 + 888);
          }

          else
          {
            v333 = "";
          }

          if (v1)
          {
            v325 = CMBaseObjectGetDerivedStorage();
          }

          v335 = OUTLINED_FUNCTION_216(v325, v326, v327, v328, v329, v330, v331, v332, value, v357, v363, v369, v375, v381, v387, v393, v399, v405, v411, v417, v423, v429, v435, v442, cf, v454, v460, v466, v472, v478);
          LODWORD(time2.value) = 136316418;
          *(&time2.value + 4) = "fpfs_CheckIfLikelyToKeepUpAndNotify";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = v0;
          HIWORD(time2.epoch) = 2082;
          v503 = v333;
          v504 = 2048;
          v505 = v1;
          v506 = 2082;
          v507 = v336;
          v508 = 2048;
          OUTLINED_FUNCTION_26(v335);
          OUTLINED_FUNCTION_23();
          _os_log_send_and_compose_impl();
          OUTLINED_FUNCTION_506();
        }

        OUTLINED_FUNCTION_2();
        v297 = fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      OUTLINED_FUNCTION_726(v297, v298, v299, v300, v301, v302, v303, v304, value, v357, v363, v369, v375, v381, v387, v393, v399, v405, v411, v417, v423, v429, v435, v442, cf, v454, v460, v466, v472, v478);
      time1 = *v459;
      time2 = *v465;
      v337 = fpfs_SetRateWithFadeInternal(v0, MEMORY[0x1E6960C70], &time1, &time2);
      v489 = v337;
      if (!v337)
      {
        if (*(v484 + 872) != 1)
        {
          OUTLINED_FUNCTION_726(v337, v338, v339, v340, v341, v342, v343, v344, valueb, v362, v368, v374, v380, v386, v392, v398, v404, v410, v416, v422, v428, v434, v441, v447, cf, v459, v465, v471, v477, v484);
          OUTLINED_FUNCTION_484();
          if (v20)
          {
            v349 = OUTLINED_FUNCTION_409();
            fpfs_ReportVideoPlaybackTimeThroughFigLog(v349);
            fpfs_ReportAudioPlaybackThroughFigLog(v1);
          }
        }

        goto LABEL_137;
      }

      OUTLINED_FUNCTION_223();
      v345 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v346 = v499.value;
      os_log_type_enabled(v345, type.value);
      OUTLINED_FUNCTION_125();
      if (v20)
      {
        v348 = v347;
      }

      else
      {
        v348 = v346;
      }

      if (v348)
      {
        if (v0)
        {
          CMBaseObjectGetDerivedStorage();
        }

        if (v1)
        {
          v350 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v350 = "";
        }

        LODWORD(time2.value) = 136316418;
        OUTLINED_FUNCTION_6(v350);
        v508 = 1024;
        LODWORD(v509) = v489;
        OUTLINED_FUNCTION_71();
        OUTLINED_FUNCTION_30();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_506();
      }

      OUTLINED_FUNCTION_16();
      goto LABEL_306;
    }
  }

LABEL_237:
  if (v153)
  {
    goto LABEL_62;
  }

  v84 = *(v15 + 524);
LABEL_63:
  if (v84 == 1)
  {
    fpfsi_setPlaybackMonitorOkayToAttemptSwitchUp(v15, v500);
  }

LABEL_66:
  CFRelease(v0);
  OUTLINED_FUNCTION_648();
}

uint64_t fpfs_setRateInternal(int a1, int a2, uint64_t a3, uint64_t a4, float a5)
{
  v158 = a4;
  OUTLINED_FUNCTION_261();
  v171 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Next = fpfs_getNext(DerivedStorage, 0);
  if (flags)
  {
    v11 = flags;
  }

  else
  {
    v11 = Next;
  }

  if (!v11)
  {
    return 0;
  }

  v12 = Next;
  v13 = CMBaseObjectGetDerivedStorage();
  v14 = *(v13 + 840);
  v15 = a5 == 0.0 && v14 == a5;
  if (v15 && (*(a3 + 12) & 1) != 0)
  {
    OUTLINED_FUNCTION_77();
    FPSTimelineConverterL3TimeToL2(&time2, &time1);
    fpfs_SetTime(v11, &time1);
  }

  if (v14 == a5)
  {
    return 0;
  }

  if (v11 != v12)
  {
    return 4294954436;
  }

  if (*(v13 + 3257))
  {
    return 0;
  }

  v156 = v12;
  v16 = *(v13 + 1680);
  if (v16)
  {
    FigAlternateIsIFrameOnly(v16);
    OUTLINED_FUNCTION_381();
    v19 = a5 != 0.0;
    if (a5 != 0.0 && v17)
    {
      fpfs_setIFrameOnlyRate(v11, a5);
      return v20;
    }
  }

  else
  {
    v18 = 0;
    v19 = a5 != 0.0;
  }

  HIDWORD(v157) = v18;
  OUTLINED_FUNCTION_133();
  fpfsi_scheduleFVTTransitionsForItem(v22, v23, v24);
  v25 = &unk_1EAF16000;
  v26 = &unk_1EAF16000;
  if (!*(v13 + 464))
  {
    v37 = OUTLINED_FUNCTION_550();
    fpfsi_setItemRateTimebaseAndAnchor(v40, v37, v38, v39, v39);
LABEL_152:
    if (*(v13 + 840) == 0.0)
    {
      fpfs_GetTime(v13, &time1);
      OUTLINED_FUNCTION_169(MEMORY[0x1E6960CC0]);
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        fpfs_JumpToTime(v11, MEMORY[0x1E6960CC0], 0);
      }
    }

    fpfsi_updateItemTimePropertiesForRateChange(v14);
    if (dword_1EAF169F0)
    {
      v122 = OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_828(v122, v123, v124, v125, v126, v127, v128, v129, v152, v153, v154, DerivedStorage, v156, v157, v158, v159, type, cf, SHIDWORD(cf), number);
      OUTLINED_FUNCTION_176();
      if (v15)
      {
        v131 = v130;
      }

      else
      {
        v131 = flags;
      }

      if (v131)
      {
        if (v5)
        {
          v132 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v132 = "";
        }

        v133 = CMBaseObjectGetDerivedStorage() + 3096;
        fpfs_GetTime(v13, &time1);
        CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 136316930;
        OUTLINED_FUNCTION_140();
        v165 = v132;
        *v166 = v134;
        *&v166[2] = v135;
        *&v166[10] = v136;
        *&v166[12] = v133;
        OUTLINED_FUNCTION_375();
        LOWORD(v168) = v137;
        *(&v168 + 2) = v138;
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_200();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_778();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_420();
    }

    return 0;
  }

  OUTLINED_FUNCTION_131();
  flags = *(v13 + 2904);
  if (!*(CMBaseObjectGetDerivedStorage() + 504) || flags)
  {
LABEL_56:
    v43 = !v19;
    if (!flags)
    {
      v43 = 1;
    }

    if ((v43 & 1) == 0)
    {
      *(v13 + 3257) = 1;
      v44 = fpfsi_SeekToCurrentTime(v11);
      *(v13 + 3257) = 0;
      if (v44)
      {
        goto LABEL_184;
      }
    }

    goto LABEL_60;
  }

  if (FigGetCFPreferenceBooleanWithDefault())
  {
    cf = 0;
    number = 0;
    CMBaseObjectGetDerivedStorage();
    v27 = *(CMBaseObjectGetDerivedStorage() + 1024);
    if (v27)
    {
      while (1)
      {
        if (*(v27 + 48) == epoch)
        {
          v28 = *(v27 + 112);
          if (v28)
          {
            break;
          }
        }

        v27 = *(v27 + 24);
        if (!v27)
        {
          goto LABEL_28;
        }
      }

      flags = 0;
      if (v14 > 2.0 || v14 < 0.0)
      {
        goto LABEL_52;
      }

      v31 = a5 >= 0.0 && a5 <= 2.0;
      if (v31 && v19)
      {
        flags = *(v28 + 32);
        if (flags)
        {
          epoch = "fpfs_flushRenderChainForDifferentRateIfNecessary";
          HIDWORD(type) = 0;
          AllocatorForMedia = FigGetAllocatorForMedia();
          FigBaseObject = FigRenderPipelineGetFigBaseObject(flags);
          CMBaseObjectCopyProperty(FigBaseObject, @"Started", AllocatorForMedia, &cf);
          flags = 0;
          if (!cf)
          {
LABEL_196:
            LODWORD(v26) = -353280000;
LABEL_51:
            v25 = &unk_1EAF16000;
            goto LABEL_52;
          }

          LODWORD(v26) = -353280000;
          v25 = &unk_1EAF16000;
          if (cf == *MEMORY[0x1E695E4D0])
          {
            v34 = *(*(v27 + 112) + 32);
            v35 = FigGetAllocatorForMedia();
            v36 = FigRenderPipelineGetFigBaseObject(v34);
            CMBaseObjectCopyProperty(v36, @"DecodingRate", v35, &number);
            if (number)
            {
              CFNumberGetValue(number, kCFNumberFloat32Type, &type + 4);
              v26 = &unk_1EAF16000;
              v25 = &unk_1EAF16000;
              if (*(&type + 1) != a5)
              {
                if (dword_1EAF169F0)
                {
                  LODWORD(type) = 0;
                  HIBYTE(v159) = 0;
                  LODWORD(v26) = 0;
                  v154 = OUTLINED_FUNCTION_637();
                  os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT);
                  OUTLINED_FUNCTION_176();
                  if (v15)
                  {
                    v144 = v143;
                  }

                  else
                  {
                    v144 = 0;
                  }

                  if (v144)
                  {
                    if (v5)
                    {
                      CMBaseObjectGetDerivedStorage();
                    }

                    CMBaseObjectGetDerivedStorage();
                    LODWORD(time2.value) = 136316930;
                    *(&time2.value + 4) = "fpfs_flushRenderChainForDifferentRateIfNecessary";
                    OUTLINED_FUNCTION_118();
                    OUTLINED_FUNCTION_579();
                    *&v166[22] = v148;
                    *&v166[30] = v149;
                    *&v167 = a5;
                    LOWORD(v168) = v149;
                    *(&v168 + 2) = v150;
                    OUTLINED_FUNCTION_62();
                    OUTLINED_FUNCTION_35();
                    _os_log_send_and_compose_impl();
                  }

                  OUTLINED_FUNCTION_432();
                  OUTLINED_FUNCTION_7();
                  OUTLINED_FUNCTION_420();
                  v25 = &unk_1EAF16000;
                }

                *(CMBaseObjectGetDerivedStorage() + 840) = 0;
                fpfsi_updateMaxPlayThroughTime();
                v151.n128_u64[0] = 0;
                if (!fpfs_SetRateOnTrack(v27, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], v151))
                {
                  fpfsi_ReleaseRenderChainsForPausing(v11);
                  flags = 1;
                  goto LABEL_52;
                }
              }

              goto LABEL_46;
            }

            flags = 0;
            goto LABEL_196;
          }
        }

LABEL_52:
        if (number)
        {
          CFRelease(number);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        goto LABEL_56;
      }
    }

    else
    {
LABEL_28:
      if (dword_1EAF169F0)
      {
        epoch = "fpfs_flushRenderChainForDifferentRateIfNecessary";
        HIDWORD(type) = 0;
        LOBYTE(type) = 0;
        v29 = OUTLINED_FUNCTION_638();
        os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_69();
        if (&unk_1EAF16000)
        {
          if (v5)
          {
            CMBaseObjectGetDerivedStorage();
          }

          CMBaseObjectGetDerivedStorage();
          LODWORD(time2.value) = 136316162;
          *(&time2.value + 4) = "fpfs_flushRenderChainForDifferentRateIfNecessary";
          OUTLINED_FUNCTION_118();
          *&v166[2] = v156;
          *&v166[10] = v41;
          *&v166[12] = v42;
          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_34();
          OUTLINED_FUNCTION_282();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_432();
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_420();
        flags = 0;
        goto LABEL_51;
      }
    }

LABEL_46:
    flags = 0;
    goto LABEL_52;
  }

LABEL_60:
  if (a5 == 0.0)
  {
    cf = 0;
    if (gPlayerStopMode == 1)
    {
      if ((OUTLINED_FUNCTION_588(), v46 ^ v47 | v15) && v45 >= 0.0 || *(v13 + 2992))
      {
        if (*(CMBaseObjectGetDerivedStorage() + 1024))
        {
          OUTLINED_FUNCTION_144();
          while (1)
          {
            OUTLINED_FUNCTION_247();
            if (v15)
            {
              v49 = *(v48 + 112);
              if (v49)
              {
                break;
              }
            }

            if (!*(v48 + 24))
            {
              goto LABEL_84;
            }
          }

          if (*(v48 + 168) == 6)
          {
            flags = *(v49 + 32);
            v50 = FigGetAllocatorForMedia();
            v51 = FigRenderPipelineGetFigBaseObject(flags);
            v52 = CMBaseObjectCopyProperty(v51, @"NextNonJerkyStopTime", v50, &cf);
            v53 = cf;
            if (v52 || !cf)
            {
              v25 = &unk_1EAF16000;
            }

            else
            {
              CMTimeMakeFromDictionary(&time1, cf);
              number = time1.value;
              flags = time1.flags;
              LODWORD(v163) = time1.timescale;
              v25 = &unk_1EAF16000;
              if ((time1.flags & 0x1D) == 1)
              {
                epoch = time1.epoch;
                if ((*(a3 + 12) & 1) == 0 || (time1.value = number, time1.timescale = v163, OUTLINED_FUNCTION_77(), CMTimeCompare(&time1, &time2) >= 1))
                {
                  *a3 = number;
                  *(a3 + 8) = v163;
                  *(a3 + 12) = flags;
                  *(a3 + 16) = epoch;
                }
              }

              v53 = cf;
            }

            if (v53)
            {
              CFRelease(v53);
            }
          }
        }
      }
    }
  }

LABEL_84:
  if (fpfs_isItemALameDuck() && ((*(a3 + 12) & 1) != 0 || (*(v158 + 12) & 1) != 0))
  {
    if (v25[636])
    {
      v54 = OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_826(v54, v55, v56, v57, v58, v59, v60, v61, v152, v153, v154, DerivedStorage, v156, v157, v158, v159, type, cf, SHIDWORD(cf), number);
      OUTLINED_FUNCTION_69();
      if (v26)
      {
        if (v5)
        {
          v62 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v62 = "";
        }

        v154 = v62;
        epoch = CMBaseObjectGetDerivedStorage() + 3096;
        flags = &time1;
        time1 = *a3;
        Seconds = CMTimeGetSeconds(&time1);
        time1 = *v158;
        CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 136316674;
        OUTLINED_FUNCTION_140();
        v165 = v154;
        *v166 = v64;
        *&v166[2] = v156;
        *&v166[10] = v65;
        *&v166[12] = epoch;
        *&v166[20] = v64;
        *&v166[22] = Seconds;
        *&v166[30] = v64;
        v167 = v66;
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_282();
        _os_log_send_and_compose_impl();
        OUTLINED_FUNCTION_778();
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_420();
    }

    *v158 = OUTLINED_FUNCTION_800(MEMORY[0x1E6960C70]);
    *(v158 + 16) = v67;
  }

  if ((v157 & 0x100000000) == 0)
  {
    v68 = *(v13 + 1024);
    if (v68)
    {
      epoch = 1986618469;
      do
      {
        if (*(v68 + 48) == 1986618469)
        {
          v69 = *(v68 + 112);
          if (v69)
          {
            v70 = *(v69 + 32);
            if (v70)
            {
              flags = FigRenderPipelineGetFigBaseObject(v70);
              if (*(*(CMBaseObjectGetVTable() + 8) + 56))
              {
                v71 = OUTLINED_FUNCTION_309();
                v72(v71);
              }
            }
          }
        }

        v68 = *(v68 + 24);
      }

      while (v68);
    }
  }

  if (a5 < 0.0)
  {
    fpfsi_isItemPlayedOut(v11);
    if (v73)
    {
      *(v13 + 3080) = 1;
    }
  }

  if (a5 != 0.0)
  {
    if (!*(v13 + 464))
    {
      goto LABEL_112;
    }

    if (*(CMBaseObjectGetDerivedStorage() + 1024))
    {
      OUTLINED_FUNCTION_144();
      while (1)
      {
        OUTLINED_FUNCTION_247();
        if (v15)
        {
          if (*(v92 + 112))
          {
            break;
          }
        }

        if (!*(v92 + 24))
        {
          goto LABEL_108;
        }
      }

      if (*(v92 + 120))
      {
LABEL_112:
        if (dword_1EAF169F0)
        {
          v82 = OUTLINED_FUNCTION_122();
          OUTLINED_FUNCTION_828(v82, v83, v84, v85, v86, v87, v88, v89, v152, v153, v154, DerivedStorage, v156, v157, v158, v159, type, cf, SHIDWORD(cf), number);
          OUTLINED_FUNCTION_176();
          if (v15)
          {
            v91 = v90;
          }

          else
          {
            v91 = flags;
          }

          if (v91)
          {
            if (v5)
            {
              flags = CMBaseObjectGetDerivedStorage() + 888;
            }

            else
            {
              flags = "";
            }

            v140 = CMBaseObjectGetDerivedStorage();
            v141 = *(v13 + 464);
            LODWORD(time2.value) = 136316674;
            *(&time2.value + 4) = "fpfs_setRateInternal";
            if (v141)
            {
              *&v142 = COERCE_DOUBLE("first rendering video track is in preroll");
            }

            else
            {
              *&v142 = COERCE_DOUBLE("item not ready");
            }

            LOWORD(time2.flags) = 2048;
            *(&time2.flags + 2) = v5;
            HIWORD(time2.epoch) = 2082;
            v165 = flags;
            *v166 = 2048;
            *&v166[2] = v156;
            *&v166[10] = 2082;
            *&v166[12] = v140 + 3096;
            *&v166[20] = 2048;
            *&v166[22] = a5;
            *&v166[30] = 2080;
            v167 = v142;
            OUTLINED_FUNCTION_62();
            OUTLINED_FUNCTION_27();
            OUTLINED_FUNCTION_200();
            _os_log_send_and_compose_impl();
            OUTLINED_FUNCTION_778();
          }

          OUTLINED_FUNCTION_7();
          OUTLINED_FUNCTION_420();
        }

        goto LABEL_147;
      }
    }
  }

LABEL_108:
  if (dword_1EAF169F0)
  {
    v74 = OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_826(v74, v75, v76, v77, v78, v79, v80, v81, v152, v153, v154, DerivedStorage, v156, v157, v158, v159, type, cf, SHIDWORD(cf), number);
    OUTLINED_FUNCTION_69();
    if (&unk_1EAF16000)
    {
      if (v5)
      {
        flags = CMBaseObjectGetDerivedStorage() + 888;
      }

      else
      {
        flags = "";
      }

      CMBaseObjectGetDerivedStorage();
      LODWORD(time2.value) = 136316418;
      *(&time2.value + 4) = "fpfs_setRateInternal";
      OUTLINED_FUNCTION_118();
      OUTLINED_FUNCTION_579();
      *&v166[22] = a5;
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_282();
      _os_log_send_and_compose_impl();
      OUTLINED_FUNCTION_778();
    }

    OUTLINED_FUNCTION_432();
    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_420();
  }

  if (*(v13 + 568))
  {
    v93 = OUTLINED_FUNCTION_627();
    fpfs_getAnchorTimeForSyncTimebase(a5, v93, v94, a3, v158);
  }

  else if (v19 && (*(a3 + 12) & 1) == 0 && (*(v158 + 12) & 1) == 0)
  {
    OUTLINED_FUNCTION_627();
    fpfs_getCachedAnchorTimeForItem();
  }

  TimebaseStarterTrack = fpfsi_getTimebaseStarterTrack();
  if (!TimebaseStarterTrack)
  {
    v96 = OUTLINED_FUNCTION_550();
    fpfsi_setItemRateTimebaseAndAnchor(v99, v96, v97, v98, v98);
    FigGetUpTimeNanoseconds();
    v100 = OUTLINED_FUNCTION_577();
    goto LABEL_146;
  }

  v102 = TimebaseStarterTrack;
  if (*MEMORY[0x1E695FF58] == 1 && v19)
  {
    v104 = CMBaseObjectGetDerivedStorage();
    strncpy(&time1, (v104 + 3096), 8uLL);
    OUTLINED_FUNCTION_197();
    kdebug_trace();
  }

  time1 = *a3;
  v105 = OUTLINED_FUNCTION_169(v158);
  v105.n128_f32[0] = a5;
  v44 = fpfs_SetRateOnTrack(v102, &time1, &time2, v105);
  if (!v44)
  {
    if (!v19)
    {
LABEL_147:
      if (fpfs_shouldReleaseRenderChainForPausing())
      {
        fpfsi_ReleaseRenderChainsForPausing(v11);
      }

      v107 = CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_248(v107);
      CMBaseObjectGetDerivedStorage();
      OUTLINED_FUNCTION_179();
      OUTLINED_FUNCTION_194();
      RenderingTrackofType = fpfs_LastRenderingTrackofType(v108, v109, 0);
      v111 = OUTLINED_FUNCTION_178();
      fpfs_getNext(v111, v112);
      if (!v19)
      {
        OUTLINED_FUNCTION_179();
        if (fpfs_isItemALameDuck())
        {
          CMBaseObjectGetDerivedStorage();
          v113 = MEMORY[0x1E6960C70];
          v114 = OUTLINED_FUNCTION_550();
          fpfsi_setItemRateTimebaseAndAnchor(v116, v114, v115, v113, v113);
          fpfsi_setItemRateTimebaseAndAnchor(0.0, flags, 1, v113, v113);
          fpfs_CancelGaplessTransitionThatDependsOnTrack(*epoch, RenderingTrackofType, 1, v117, v118, v119, v120, v121, v152, v153, v154, DerivedStorage, v156, v157, v158, v159, type, cf, number, v163, time2.value, *&time2.timescale, time2.epoch, v165, *v166, *&v166[8], *&v166[16], *&v166[24], v167, v168, *(&v168 + 1), v169);
        }
      }

      goto LABEL_152;
    }

    OUTLINED_FUNCTION_112((v13 + 408));
    *(v13 + 424) = v106;
    v100 = v11;
    v101 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_146:
    fpfsi_SetLastTimestampClientDidPauseOnContentSteeringMonitor(v100, v101);
    goto LABEL_147;
  }

LABEL_184:
  v21 = v44;
  v145 = v11;
  if (*(v13 + 840) == 0.0)
  {
    OUTLINED_FUNCTION_133();
  }

  else
  {
    v146 = 1;
    v147 = 0;
  }

  fpfsi_scheduleFVTTransitionsForItem(v145, v146, v147);
  return v21;
}

void fpfs_setIFrameOnlyRate(uint64_t a1, float a2)
{
  v48 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  CMBaseObjectGetDerivedStorage();
  v7 = *(v2 + 1680);
  if (v7 && FigAlternateIsIFrameOnly(v7))
  {
    if (a2 != 0.0 && *(v2 + 840) != a2)
    {
      if (dword_1EAF169F0)
      {
        OUTLINED_FUNCTION_21();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        OUTLINED_FUNCTION_304(os_log_and_send_and_compose_flags_and_os_log_type, v11, v12, v13, v14, v15, v16, v17, v35, v36, v37, v38, SBYTE2(v38), BYTE3(v38), SHIDWORD(v38));
        OUTLINED_FUNCTION_46();
        if (v3)
        {
          v18 = *v2;
          if (*v2)
          {
            CMBaseObjectGetDerivedStorage();
          }

          if (a1)
          {
            CMBaseObjectGetDerivedStorage();
          }

          LODWORD(v39) = 136316418;
          OUTLINED_FUNCTION_139();
          *(&v40 + 6) = v18;
          OUTLINED_FUNCTION_379();
          *(&v42 + 2) = a1;
          OUTLINED_FUNCTION_574();
          WORD2(v43) = v19;
          *(&v43 + 6) = v20;
          OUTLINED_FUNCTION_39();
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_448();
          OUTLINED_FUNCTION_507();
        }

        OUTLINED_FUNCTION_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      for (i = *(v2 + 1024); i; i = *(i + 24))
      {
        if (*(i + 48) == 1986618469)
        {
          v22 = *(i + 112);
          if (v22)
          {
            v23 = *(v22 + 32);
            if (v23)
            {
              FigRenderPipelineGetFigBaseObject(v23);
              if (*(*(CMBaseObjectGetVTable() + 8) + 56))
              {
                v24 = OUTLINED_FUNCTION_373();
                v25(v24);
              }
            }
          }
        }
      }

      v26 = OUTLINED_FUNCTION_198();
      fpfs_GetNextTimeToPlay(v26, v27, v28);
      v29 = MEMORY[0x1E6960C70];
      fpfs_IssueSeekToPump(a1, &v45, MEMORY[0x1E6960C68], 0, 1, 0, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], MEMORY[0x1E6960C70], v36, v37, v38, v39, v40, *(&v40 + 1), v41, v42, *(&v42 + 1), v43, *(&v43 + 1), v44, v45.n128_i64[0], v45.n128_i64[1], v46, v47);
      if (!v30)
      {
        fpfs_GetTime(v2, &v45);
        fpfs_PrepareToReuseLastIFrameTrack();
        if (!v31)
        {
          *(v2 + 1536) = 1044549468;
          *(v2 + 1496) = *v29;
          *(v2 + 1512) = *(v29 + 16);
          if (*(v2 + 1952) != 0.0)
          {
            CFAbsoluteTimeGetCurrent();
            OUTLINED_FUNCTION_573();
            *(v2 + 1960) = *(v2 + 1960) + v32 * v33;
            Current = CFAbsoluteTimeGetCurrent();
            OUTLINED_FUNCTION_479(Current);
          }

          fpfsi_RTCReportingUpdatePlayingTrackStats(v2);
          fpfsi_RTCReportingReportRateChange(*(v2 + 840));
        }
      }
    }

    OUTLINED_FUNCTION_628();
  }

  else
  {
    OUTLINED_FUNCTION_243();
    OUTLINED_FUNCTION_628();

    FigSignalErrorAtGM();
  }
}

BOOL fpfs_isItemALameDuck()
{
  OUTLINED_FUNCTION_522();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_194();
  fpfs_LastRenderingTrackofType(v4, v5, 0);
  v6 = OUTLINED_FUNCTION_179();
  Next = fpfs_getNext(v6, v1);
  v8 = 0;
  if (v2 && Next)
  {
    v9 = CMBaseObjectGetDerivedStorage();
    FigGetAllocatorForMedia();
    v10 = OUTLINED_FUNCTION_179();
    FigRenderPipelineGetFigBaseObject(v10);
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v11 = OUTLINED_FUNCTION_188();
      v13 = v12(v11);
      v21 = OUTLINED_FUNCTION_582(v13, v14, v15, v16, v17, v18, v19, v20, v24, v25);
      if (!v22 && v21 && *(v0 + 576) != v21)
      {
        v8 = v21 == *(v9 + 576);
LABEL_10:
        CFRelease(v21);
        return v8;
      }

      v8 = 0;
      if (v21)
      {
        goto LABEL_10;
      }
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

void fpfsi_isItemPlayedOut(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = **&MEMORY[0x1E6960C70];
  if (!fpfsi_GetDuration(a1, &v7.value))
  {
    OUTLINED_FUNCTION_29();
    if (v3)
    {
      fpfs_GetTime(DerivedStorage, &time1);
      v4 = v7;
      CMTimeMultiplyByFloat64(&time2, &v4, 0.95);
      CMTimeCompare(&time1, &time2);
    }
  }
}

void fpfs_getCachedAnchorTimeForItem()
{
  OUTLINED_FUNCTION_182();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v136 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v127 = *MEMORY[0x1E6960C70];
  v10 = *(MEMORY[0x1E6960C70] + 16);
  v128 = v10;
  v124 = v127;
  v125 = v10;
  v85 = v127;
  *&v122.value = v127;
  v122.epoch = v10;
  if (*(DerivedStorage + 148))
  {
    v11 = DerivedStorage;
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v122, HostTimeClock);
    OUTLINED_FUNCTION_348();
    OUTLINED_FUNCTION_696(v13, v14, v15, v16, v17, v18, v19, v20, v59, v63, v67, v71, v76, v81, v85, *(&v85 + 1), v91, v96, v100, v104, v108, v112, v115, v118, *&v122.value);
    v29 = OUTLINED_FUNCTION_345(v21, v22, v23, v24, v25, v26, v27, v28, v60, v64, v68, v72, v77, v82, v86, v89, v92, v97, v101, v105, v109, v113, v116, v119, v122.value, *&v122.timescale, v122.epoch, v123, v124, *(&v124 + 1), v125, v126, v127, *(&v127 + 1), v128, v129, *v130, *&v130[8], *&v130[16], v131, *v132, *&v132[8], *&v132[16], *&v132[24], v133, *v134, *&v134[8], *&v134[16], time.value);
    if (CMTimeCompare(v29, v30) < 1)
    {
      v83 = CMBaseObjectGetDerivedStorage();
      fpfs_GetItemBufferedDuration(v6);
      HIDWORD(v106) = 0;
      BYTE3(v106) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_70();
      if (v0)
      {
        if (v8)
        {
          v32 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v32 = "";
        }

        v78 = v32;
        if (v6)
        {
          v33 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v33 = "";
        }

        v73 = v33;
        OUTLINED_FUNCTION_348();
        Seconds = CMTimeGetSeconds(&time);
        time = v122;
        v35 = CMTimeGetSeconds(&time);
        OUTLINED_FUNCTION_348();
        OUTLINED_FUNCTION_696(v36, v37, v38, v39, v40, v41, v42, v43, v61, v65, v69, v73, v78, v83, v87, *(&v87 + 1), v93, v98, v102, v106, v87, *(&v87 + 1), v10, v120, *&v122.value);
        v52 = OUTLINED_FUNCTION_345(v44, v45, v46, v47, v48, v49, v50, v51, v62, v66, v70, v74, v79, v84, v88, v90, v94, v99, v103, v107, v110, v114, v117, v121, v122.value, *&v122.timescale, v122.epoch, v123, v124, *(&v124 + 1), v125, v126, v127, *(&v127 + 1), v128, v129, *v130, *&v130[8], *&v130[16], v131, *v132, *&v132[8], *&v132[16], *&v132[24], v133, *v134, *&v134[8], *&v134[16], time.value);
        CMTimeSubtract(v54, v52, v53);
        time = v95;
        v55 = CMTimeGetSeconds(&time);
        time = v111;
        v56 = CMTimeGetSeconds(&time);
        *v130 = 136317186;
        *&v130[4] = "fpfs_getCachedAnchorTimeForItem";
        *&v130[12] = 2048;
        *&v130[14] = v8;
        *&v130[22] = 2082;
        v131 = v80;
        *v132 = 2048;
        *&v132[2] = v6;
        *&v132[10] = 2082;
        *&v132[12] = v75;
        *&v132[20] = 2048;
        *&v132[22] = Seconds;
        *&v132[30] = 2048;
        v133 = *&v35;
        *v134 = 2048;
        *&v134[2] = v55;
        *&v134[10] = 2048;
        *&v134[12] = v56;
        OUTLINED_FUNCTION_117();
        OUTLINED_FUNCTION_35();
        OUTLINED_FUNCTION_307();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_454();
      *(v11 + 128) = v10;
      *(v11 + 112) = v87;
      *(v11 + 136) = v87;
      *(v11 + 152) = v10;
      v57 = *(v83 + 2568);
      if (v57)
      {
        v58 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (v58)
        {
          v58(v57, @"playerStats", 0x1F0B43CF8, 1);
        }
      }
    }

    else
    {
      v127 = *(v11 + 112);
      v128 = *(v11 + 128);
      v124 = *(v11 + 136);
      v125 = *(v11 + 152);
    }
  }

  if (v4)
  {
    *v4 = v127;
    *(v4 + 16) = v128;
  }

  if (v2)
  {
    *v2 = v124;
    *(v2 + 16) = v125;
  }

  OUTLINED_FUNCTION_181();
}

void fpfs_SetRateOnTrack()
{
  OUTLINED_FUNCTION_193();
  v201 = v3;
  v207 = v5;
  v211 = v4;
  v7 = v6;
  v9 = v8;
  v232 = *MEMORY[0x1E69E9840];
  v10 = *(v8 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_248(DerivedStorage);
  v12 = CMBaseObjectGetDerivedStorage();
  if ((fpfs_rateModifiedByPref_sCheckedPref & 1) == 0)
  {
    v13 = CFPreferencesCopyValue(@"streamingDrift", @"com.apple.coremedia", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    fpfs_rateModifiedByPref_sCheckedPref = 1;
    if (v13)
    {
      v1 = v13;
      v14 = CFEqual(v13, @"playSlightlySlower");
      v15 = MEMORY[0x1E69E9848];
      if (v14)
      {
        fpfs_rateModifiedByPref_sRate = 1065185444;
        fprintf(*MEMORY[0x1E69E9848], "FigPlayer_Stream will play streams slightly slower (%.2f) due to defaults write.\n");
      }

      else if (CFEqual(v1, @"playSlightlyFaster"))
      {
        fpfs_rateModifiedByPref_sRate = 1065437102;
        fprintf(*v15, "FigPlayer_Stream will play streams slightly faster (%.2f) due to defaults write.\n");
      }

      CFRelease(v1);
    }
  }

  if (v7 == 1.0)
  {
    v7 = *&fpfs_rateModifiedByPref_sRate;
  }

  v204 = v12;
  OUTLINED_FUNCTION_685();
  if (v121 && v7 != 0.0)
  {
    OUTLINED_FUNCTION_209();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_461(os_log_and_send_and_compose_flags_and_os_log_type, v17, v18, v19, v20, v21, v22, v23, v194, v195, v196, v197, v198, v199, v200, v201, v202, v12, v207, v211, cf[0], cf[1], v215, v216, valuePtr);
    OUTLINED_FUNCTION_69();
    if (!v2)
    {
      goto LABEL_20;
    }

    if (*v0)
    {
      CMBaseObjectGetDerivedStorage();
      if (!v10)
      {
LABEL_19:
        *v224 = 136316162;
        OUTLINED_FUNCTION_394();
        *&v226[2] = v10;
        *&v226[10] = v24;
        *&v226[12] = v25;
        OUTLINED_FUNCTION_87();
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_282();
        _os_log_send_and_compose_impl();
LABEL_20:
        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_420();
        goto LABEL_21;
      }
    }

    else if (!v10)
    {
      goto LABEL_19;
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_19;
  }

LABEL_21:
  if (!*(v9 + 112))
  {
    goto LABEL_267;
  }

  v203 = *(v9 + 32);
  if (*(v9 + 168) != 6)
  {
    OUTLINED_FUNCTION_209();
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_461(v26, v27, v28, v29, v30, v31, v32, v33, v194, v195, v196, v197, v198, v199, v200, v201, v203, v204, v207, v211, cf[0], cf[1], v215, v216, valuePtr);
    OUTLINED_FUNCTION_69();
    if (!v2)
    {
      goto LABEL_30;
    }

    v34 = *v0;
    if (*v0)
    {
      CMBaseObjectGetDerivedStorage();
      if (!v10)
      {
LABEL_29:
        *v224 = 136316418;
        OUTLINED_FUNCTION_338();
        *&v224[14] = v34;
        OUTLINED_FUNCTION_163();
        *&v226[2] = v10;
        *&v226[10] = v35;
        *&v226[12] = v36;
        *&v226[20] = 1024;
        *&v226[22] = v37;
        OUTLINED_FUNCTION_87();
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_282();
        _os_log_send_and_compose_impl();
LABEL_30:
        OUTLINED_FUNCTION_16();
        OUTLINED_FUNCTION_420();
        goto LABEL_31;
      }
    }

    else if (!v10)
    {
      goto LABEL_29;
    }

    CMBaseObjectGetDerivedStorage();
    goto LABEL_29;
  }

LABEL_31:
  OUTLINED_FUNCTION_196();
  v39 = &unk_1EAF16000;
  if (dword_1EAF169F0)
  {
    OUTLINED_FUNCTION_209();
    v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    OUTLINED_FUNCTION_461(v40, v41, v42, v43, v44, v45, v46, v47, v194, v195, v196, v197, v198, v199, v200, v201, v203, v204, v207, v211, cf[0], cf[1], v215, v216, valuePtr);
    OUTLINED_FUNCTION_69();
    if (v2)
    {
      v48 = *v0;
      if (*v0)
      {
        CMBaseObjectGetDerivedStorage();
      }

      if (v10)
      {
        CMBaseObjectGetDerivedStorage();
      }

      *v224 = 136316930;
      OUTLINED_FUNCTION_338();
      *&v224[14] = v48;
      OUTLINED_FUNCTION_163();
      *&v226[2] = v10;
      *&v226[10] = v49;
      *&v226[12] = v50;
      *&v226[20] = v51;
      *&v226[22] = v52;
      *&v226[30] = v51;
      v227 = v203;
      LOWORD(v228) = v49;
      *(&v228 + 2) = v53;
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_34();
      OUTLINED_FUNCTION_282();
      _os_log_send_and_compose_impl();
      v39 = &unk_1EAF16000;
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_420();
    OUTLINED_FUNCTION_196();
  }

  if (!*(*(v9 + 112) + 25))
  {
    OUTLINED_FUNCTION_624();
    fpfs_SetTimebaseOnTrack();
    OUTLINED_FUNCTION_196();
    if (v67)
    {
      goto LABEL_267;
    }
  }

  v54 = MEMORY[0x1E695FF58];
  if (*(v9 + 48) != v38)
  {
    OUTLINED_FUNCTION_474();
    if (*(*(CMBaseObjectGetVTable() + 16) + 8) && !*(v204 + 462))
    {
      if (*v54 == 1)
      {
        if (v10)
        {
          v82 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v82 = "";
        }

        strncpy(&v230, v82, 8uLL);
        OUTLINED_FUNCTION_192();
      }

      v230 = *v211;
      OUTLINED_FUNCTION_392(v207);
      if (!fpfs_setRateOnPrimaryAndAuxRenderPipelines())
      {
        *(CMBaseObjectGetDerivedStorage() + 840) = v7;
        fpfsi_updateMaxPlayThroughTime();
      }

      v58 = 1;
    }

    else
    {
      if (*v54 == 1)
      {
        if (v10)
        {
          v55 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v55 = "";
        }

        strncpy(&v230, v55, 8uLL);
        OUTLINED_FUNCTION_192();
      }

      OUTLINED_FUNCTION_29();
      if (v121)
      {
        v230 = *v56;
        OUTLINED_FUNCTION_392(v207);
        v58 = 1;
        v57 = &v230;
        v61 = v224;
        v59 = v10;
        v60 = v7;
      }

      else
      {
        v57 = MEMORY[0x1E6960C70];
        v58 = 1;
        v59 = v10;
        v60 = v7;
        v61 = MEMORY[0x1E6960C70];
      }

      fpfsi_setItemRateTimebaseAndAnchor(v60, v59, 1, v57, v61);
    }

    goto LABEL_53;
  }

  if (!*(v204 + 536) || v7 <= 0.0)
  {
    goto LABEL_135;
  }

  v68 = *(v9 + 16);
  v69 = CMBaseObjectGetDerivedStorage();
  v199 = OUTLINED_FUNCTION_740(v69);
  v70 = CMBaseObjectGetDerivedStorage();
  *&valuePtr = 0;
  cf[0] = 0;
  v71 = OUTLINED_FUNCTION_249();
  v73 = fpfs_WantAudioHardwarePassthroughForTrack(v71, v72);
  if (!*(v70 + 504))
  {
    if (v73)
    {
      v230.value = 0;
      FormatList = CMAudioFormatDescriptionGetFormatList(*(v9 + 56), &v230);
      v75 = v230.value == 0;
      if (!FormatList)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v198 = v68;
      v83 = *(v1 + 96);
      if (v83)
      {
        v84 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v84)
        {
          if (!v84(v83, @"AfmfpbProperty_HighestValidDeclaredSampleRate", *MEMORY[0x1E695E480], cf))
          {
            if (cf[0])
            {
              v85 = CFGetTypeID(cf[0]);
              if (v85 == CFNumberGetTypeID())
              {
                CFNumberGetValue(cf[0], kCFNumberDoubleType, &valuePtr);
              }
            }
          }
        }
      }

      mSampleRate = *&valuePtr;
      if (*&valuePtr != 0.0)
      {
        v68 = v198;
        goto LABEL_68;
      }

      v68 = v198;
      if ((*(v1 + 560) & 0x10) == 0)
      {
LABEL_68:
        if (mSampleRate != 0.0)
        {
          if (*(v70 + 904))
          {
            if (dword_1EAF169F0)
            {
              v77 = v68;
              v78 = OUTLINED_FUNCTION_559();
              v79 = v222;
              v1 = type[0];
              v198 = v78;
              os_log_type_enabled(v78, type[0]);
              OUTLINED_FUNCTION_176();
              if (v121)
              {
                v81 = v80;
              }

              else
              {
                v81 = v79;
              }

              if (v81)
              {
                v200 = v10;
                v10 = &unk_1EAF16000;
                if (v199)
                {
                  v39 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v39 = "";
                }

                if (v77)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                *v224 = 136316418;
                OUTLINED_FUNCTION_338();
                *&v224[14] = v199;
                OUTLINED_FUNCTION_163();
                *&v226[2] = v77;
                *&v226[10] = v92;
                *&v226[12] = v93;
                *&v226[20] = v94;
                *&v226[22] = v95;
                OUTLINED_FUNCTION_87();
                OUTLINED_FUNCTION_35();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_777();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_420();
            }
          }

          else
          {
            v88 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat64Type, &valuePtr);
            if (dword_1EAF169F0)
            {
              v198 = v68;
              v89 = OUTLINED_FUNCTION_559();
              v90 = v222;
              v197 = v89;
              HIDWORD(v196) = type[0];
              os_log_type_enabled(v89, type[0]);
              OUTLINED_FUNCTION_176();
              if (v121)
              {
                v1 = v91;
              }

              else
              {
                v1 = v90;
              }

              if (v1)
              {
                v200 = v10;
                v10 = &unk_1EAF16000;
                if (v199)
                {
                  v39 = (CMBaseObjectGetDerivedStorage() + 888);
                }

                else
                {
                  v39 = "";
                }

                if (v198)
                {
                  CMBaseObjectGetDerivedStorage();
                }

                *v224 = 136316418;
                OUTLINED_FUNCTION_338();
                *&v224[14] = v199;
                OUTLINED_FUNCTION_163();
                *&v226[2] = v198;
                *&v226[10] = v96;
                *&v226[12] = v97;
                *&v226[20] = v98;
                *&v226[22] = v99;
                OUTLINED_FUNCTION_87();
                OUTLINED_FUNCTION_27();
                _os_log_send_and_compose_impl();
                OUTLINED_FUNCTION_777();
              }

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_420();
            }

            v100 = *(v70 + 536);
            if (v100)
            {
              v101 = *(CMBaseObjectGetVTable() + 16);
              if (v101)
              {
                v102 = *(v101 + 56);
                if (v102)
                {
                  v102(v100, *MEMORY[0x1E69B0210], v88);
                }
              }
            }

            if (v88)
            {
              CFRelease(v88);
            }
          }
        }

        v87 = 0;
LABEL_124:
        if (cf[0])
        {
          CFRelease(cf[0]);
        }

        if (v87)
        {
          goto LABEL_267;
        }

        goto LABEL_127;
      }

      v230.value = 0;
      FormatList = CMAudioFormatDescriptionGetRichestDecodableFormat(*(v9 + 56));
      v75 = FormatList == 0;
      v86 = 48;
      if (!FormatList)
      {
        v86 = 0;
      }

      v230.value = v86;
      if (!FormatList)
      {
LABEL_91:
        OUTLINED_FUNCTION_120();
        v87 = FigSignalErrorAtGM();
        goto LABEL_124;
      }
    }

    if (!v75)
    {
      mSampleRate = FormatList->mASBD.mSampleRate;
      *&valuePtr = FormatList->mASBD.mSampleRate;
      goto LABEL_68;
    }

    goto LABEL_91;
  }

LABEL_127:
  v9 = v0[128];
  if (!v9)
  {
LABEL_130:
    OUTLINED_FUNCTION_120();
    FigSignalErrorAtGM();
    goto LABEL_267;
  }

  while (*(v9 + 32) != v203)
  {
    v9 = *(v9 + 24);
    if (!v9)
    {
      goto LABEL_130;
    }
  }

  if (*(v204 + 108) == 0.0)
  {
    LODWORD(valuePtr) = 0;
    LOBYTE(cf[0]) = 0;
    v103 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v103, cf[0]);
    OUTLINED_FUNCTION_40();
    if (v9)
    {
      v104 = *v0;
      if (*v0)
      {
        v105 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v105 = "";
      }

      if (v10)
      {
        v112 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v112 = "";
      }

      *v224 = 136316162;
      *&v224[4] = "fpfs_SetRateOnTrack";
      *&v224[12] = 2048;
      *&v224[14] = v104;
      *&v224[22] = 2082;
      v225 = v105;
      *v226 = 2048;
      *&v226[2] = v10;
      *&v226[10] = 2082;
      *&v226[12] = v112;
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_31();
      OUTLINED_FUNCTION_456();
    }

    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_414();
    goto LABEL_267;
  }

LABEL_135:
  if (v7 != 0.0)
  {
    v106 = v10;
    v107 = v39;
    v108 = (v9 + 376);
    if (*(v211 + 12))
    {
      v109 = *v211;
      *(v9 + 392) = *(v211 + 16);
      *v108 = v109;
    }

    else
    {
      CMTimebaseGetTime(&v230, v0[72]);
      *v108 = *&v230.value;
      *(v9 + 392) = v230.epoch;
    }

    v39 = v107;
    v10 = v106;
    if (*(CMBaseObjectGetDerivedStorage() + 504))
    {
      if (*(*(v9 + 112) + 48))
      {
        if (*(*(CMBaseObjectGetVTable() + 16) + 104))
        {
          v110 = *(*(v9 + 112) + 48);
          v111 = *(*(CMBaseObjectGetVTable() + 16) + 104);
          if (!v111)
          {
            goto LABEL_155;
          }
        }

        else
        {
          v110 = *(*(v9 + 112) + 48);
          v111 = *(*(CMBaseObjectGetVTable() + 16) + 24);
          if (!v111)
          {
            goto LABEL_155;
          }
        }

        if (v111(v110))
        {
          v113 = *(*(v9 + 112) + 32);
          v114 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v114)
          {
            v114(v113, *MEMORY[0x1E695E4D0]);
          }
        }
      }
    }
  }

LABEL_155:
  if (v7 > 0.0)
  {
    v115 = CMBaseObjectGetDerivedStorage();
    OUTLINED_FUNCTION_740(v115);
    v116 = CMBaseObjectGetDerivedStorage();
    *v224 = 0;
    v117 = *(v9 + 56);
    CMFormatDescriptionGetMediaSubType(v117);
    v118 = 0;
    OUTLINED_FUNCTION_330();
    if (v121)
    {
LABEL_184:
      OUTLINED_FUNCTION_473();
      goto LABEL_185;
    }

    OUTLINED_FUNCTION_325();
    if (!v121)
    {
      OUTLINED_FUNCTION_331();
      if (v121)
      {
        goto LABEL_185;
      }

      OUTLINED_FUNCTION_326();
      if (!v121)
      {
        OUTLINED_FUNCTION_327();
        if (v121)
        {
          goto LABEL_185;
        }

        OUTLINED_FUNCTION_322();
        if (!v121)
        {
          OUTLINED_FUNCTION_329();
          if (v121)
          {
            goto LABEL_185;
          }

          OUTLINED_FUNCTION_324();
          if (!v121)
          {
            OUTLINED_FUNCTION_328();
            if (!v121)
            {
              OUTLINED_FUNCTION_323();
              if (!v121)
              {
                v118 = 1;
                goto LABEL_185;
              }

              goto LABEL_167;
            }

LABEL_185:
            if (*(v9 + 48) == v119 && !*(v116 + 504))
            {
              v203 = v116;
              v125 = fpfs_WantAudioHardwarePassthroughForTrack(v9, v224);
              v205 = v1;
              CMBaseObjectGetDerivedStorage();
              v126 = *MEMORY[0x1E69AF7F0];
              FigCFEqual();
              OUTLINED_FUNCTION_381();
              v200 = v10;
              if (v125 == v128)
              {
                if (v127)
                {
                  v129 = 1633889587;
                }

                else
                {
                  v129 = 0;
                }

                if (v125)
                {
                  v130 = *v224 == v129;
                }

                else
                {
                  v130 = 1;
                }

                v131 = v130;
              }

              else
              {
                v131 = 0;
              }

              v132 = (v118 & 1) == 0 && *(CMBaseObjectGetDerivedStorage() + 568) != 0;
              v133 = *MEMORY[0x1E69AF800];
              v134 = MEMORY[0x1E69AF7F8];
              if (v131 && FigCFEqual() == v132 && *(v116 + 544))
              {
                v39 = &unk_1EAF16000;
                v10 = v200;
                v136 = v205;
              }

              else
              {
                v135 = *v134;
                v199 = *v134;
                if (v125)
                {
                  v135 = v126;
                }

                if (!v132)
                {
                  v133 = v135;
                }

                v136 = v205;
                if (*(v116 + 32) == 2 && *(v116 + 536))
                {
                  fpfsi_setAudioSessionPreferredAudioHardwareFormat(*v205, *(v9 + 16), v133);
                }

                v137 = *(v116 + 544);
                *(v116 + 544) = v133;
                if (v133)
                {
                  CFRetain(v133);
                }

                v39 = &unk_1EAF16000;
                if (v137)
                {
                  CFRelease(v137);
                }

                AllocatorForMedia = FigGetAllocatorForMedia();
                Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                FigCFDictionarySetValue();
                fpfs_PostNotificationWhenUnlocked(*v205, @"AudioHardwareFormatChanged", *v205, Mutable);
                v10 = v200;
                if (Mutable)
                {
                  CFRelease(Mutable);
                }
              }

              *(v116 + 560) = 0;
              if (FigCFEqual())
              {
                SpatializationConfiguration = fpfsi_GetSpatializationConfiguration();
                fpfs_setPreferredNumberOfAudioOutputChannels(*v136, *(v9 + 56), SpatializationConfiguration == 1, 1, v141, v142, v143, v144, v194, v195, v196, v197, SHIDWORD(v197), v198, v199, v200, v201, v116, v205, v207, SWORD2(v207), SBYTE6(v207), v211, cf[0], cf[1], v215, v216, valuePtr, *(&valuePtr + 1), v218, v219, *type, v221, v222, v223, *v224, *&v224[8], *&v224[16], v225, *v226, *&v226[8], *&v226[16], *&v226[24], v227, v228, *(&v228 + 1), v229, v230.value, *&v230.timescale, v230.epoch, v231);
              }
            }

            goto LABEL_219;
          }
        }
      }
    }

LABEL_167:
    v230.value = 0;
    v118 = 1;
    if (CMAudioFormatDescriptionGetFormatList(v117, &v230))
    {
      v119 = 1936684398;
      if (v230.value >= 0x30uLL)
      {
        OUTLINED_FUNCTION_151();
        v121 = v121 || v120 == 1700997939;
        v122 = v121 || v120 == 1885547315;
        v123 = v122 || v120 == 1902324531;
        if (v123 || v120 == 2053319475)
        {
          v118 = 0;
        }
      }

      goto LABEL_185;
    }

    goto LABEL_184;
  }

LABEL_219:
  if (FigStreamTrackIsRendererTimebaseStarter(v9))
  {
    if (*v54 == 1)
    {
      if (v10)
      {
        v145 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v145 = "";
      }

      strncpy(&v230, v145, 8uLL);
      OUTLINED_FUNCTION_192();
    }

    v58 = 1;
  }

  else
  {
    v58 = 0;
  }

  OUTLINED_FUNCTION_387(v211);
  v215 = *(v146 + 16);
  *cf = *v146;
  v147 = *(v9 + 16);
  v208 = CMBaseObjectGetDerivedStorage();
  v148 = CMBaseObjectGetDerivedStorage();
  v222 = 0;
  v223 = 0;
  LODWORD(v221) = 0;
  *type = 0;
  v206 = v147;
  fpfsi_DetermineRateSnapping(v147, &v222);
  v212 = v148;
  v149 = OUTLINED_FUNCTION_309();
  if (!fpfs_ConfigureRatePlan(v149, v150, v151, v152, v153, v154, v155))
  {
    OUTLINED_FUNCTION_120();
    if (!FigSignalErrorAtGM())
    {
      goto LABEL_266;
    }

    goto LABEL_53;
  }

  OUTLINED_FUNCTION_484();
  v156 = v208;
  if (!v121)
  {
    if (fpfs_WantAudioHardwarePassthroughForTrack(v9, &v223 + 1))
    {
      if (*(v39 + 636))
      {
        v177 = OUTLINED_FUNCTION_552();
        os_log_type_enabled(v177, BYTE3(v219));
        OUTLINED_FUNCTION_69();
        if (v147)
        {
          v203 = v177;
          v178 = *v208;
          if (*v208)
          {
            v179 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v179 = "";
          }

          v192 = v147;
          if (v147)
          {
            v193 = (CMBaseObjectGetDerivedStorage() + 3096);
            v192 = v147;
          }

          else
          {
            v193 = "";
          }

          *v224 = 136317186;
          *&v224[4] = "fpfs_DecideAndSetAudioRenderPipelineRate";
          *&v224[12] = 2048;
          *&v224[14] = v178;
          *&v224[22] = 2082;
          v225 = v179;
          *v226 = 2048;
          *&v226[2] = v192;
          *&v226[10] = 2082;
          *&v226[12] = v193;
          *&v226[20] = 1024;
          *&v226[22] = HIBYTE(HIDWORD(v223));
          *&v226[26] = 1024;
          *&v226[28] = BYTE6(v223);
          LOWORD(v227) = 1024;
          *(&v227 + 2) = BYTE5(v223);
          HIWORD(v227) = 1024;
          LODWORD(v228) = BYTE4(v223);
          OUTLINED_FUNCTION_87();
          OUTLINED_FUNCTION_34();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_420();
        v156 = v208;
      }

      *&type[4] = 1065353216;
      *type = v7;
      LOBYTE(v221) = 1;
    }
  }

  v157 = v0;
  v158 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &type[4]);
  if (!v158)
  {
    OUTLINED_FUNCTION_120();
    FigSignalErrorAtGM();
    goto LABEL_266;
  }

  v159 = v158;
  v160 = v156[128];
  OUTLINED_FUNCTION_196();
  if (!v160)
  {
LABEL_241:
    v0 = v157;
    if (v221)
    {
      if (dword_1EAF169F0)
      {
        v175 = OUTLINED_FUNCTION_552();
        os_log_type_enabled(v175, BYTE3(v219));
        OUTLINED_FUNCTION_69();
        if (v147)
        {
          v203 = v175;
          if (*v208)
          {
            CMBaseObjectGetDerivedStorage();
          }

          if (v206)
          {
            CMBaseObjectGetDerivedStorage();
          }

          *v224 = 136316162;
          OUTLINED_FUNCTION_394();
          *&v226[2] = v180;
          *&v226[10] = v181;
          *&v226[12] = v182;
          OUTLINED_FUNCTION_87();
          OUTLINED_FUNCTION_34();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_420();
      }

      v183 = fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
      *(v212 + 522) = 1;
      v172 = OUTLINED_FUNCTION_314(v183, v184, v185, v186, v187, v188, v189, v190, v194, v195, v196, v197, v198, v199, v200, v201, v203, v206, v208, v212, cf[0], cf[1], v215, v216, valuePtr, v218);
      v174 = v210;
    }

    else
    {
      v173 = OUTLINED_FUNCTION_314(v161, v162, v163, v164, v165, v166, v167, v168, v194, v195, v196, v197, v198, v199, v200, v201, v203, v206, v208, v212, cf[0], cf[1], v215, v216, valuePtr, v218);
      if (v173)
      {
        v172 = v173;
        goto LABEL_265;
      }

      v174 = v209;
      if (!*(v213 + 521))
      {
        fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
      }

      v172 = 0;
      *(v213 + 522) = 0;
    }

    *(v174 + 864) = *&type[4];
    goto LABEL_265;
  }

  v147 = @"PipelineRate";
  while (1)
  {
    if (v160 == v9)
    {
      goto LABEL_236;
    }

    if (*(v160 + 48) != v169)
    {
      goto LABEL_236;
    }

    v161 = *(v160 + 112);
    if (!v161)
    {
      goto LABEL_236;
    }

    fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
    FigBaseObject = FigRenderPipelineGetFigBaseObject(*(*(v160 + 112) + 32));
    v171 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v171)
    {
      break;
    }

    v171(FigBaseObject, @"PipelineRate", v159);
    OUTLINED_FUNCTION_196();
    if (v161)
    {
      v172 = v161;
      goto LABEL_247;
    }

LABEL_236:
    v160 = *(v160 + 24);
    if (!v160)
    {
      goto LABEL_241;
    }
  }

  v172 = -12782;
LABEL_247:
  v0 = v157;
LABEL_265:
  CFRelease(v159);
  if (!v172)
  {
LABEL_266:
    *(CMBaseObjectGetDerivedStorage() + 840) = v7;
    fpfsi_updateMaxPlayThroughTime();
    if (v7 == 0.0)
    {
      goto LABEL_267;
    }

    OUTLINED_FUNCTION_198();
    OUTLINED_FUNCTION_530();
    for (i = v0[128]; i; i = i[3])
    {
      if (i[16])
      {
        OUTLINED_FUNCTION_298();
        fpfs_scheduleForwardEndTimeForTrack();
      }

      if (i[35])
      {
        OUTLINED_FUNCTION_234();
        fpfs_CheckVideoSyncQueue();
      }
    }
  }

LABEL_53:
  if (v58)
  {
    if (v7 != 0.0)
    {
      v62 = CMBaseObjectGetDerivedStorage();
      FigGetUpTimeNanoseconds();
      if (*(v62 + 2072))
      {
        v63 = *(v62 + 2568);
        if (v63)
        {
          OUTLINED_FUNCTION_199();
          if (*(*(CMBaseObjectGetVTable() + 16) + 56))
          {
            OUTLINED_FUNCTION_405();
            v66(v63, 0x1F0B64678, 0x1F0B676B8, v64 / v65, 1);
          }
        }
      }
    }
  }

LABEL_267:
  OUTLINED_FUNCTION_191();
}

uint64_t fpfsi_ReleaseRenderChainsForPausing(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 2904) || (v4 = DerivedStorage, *(DerivedStorage + 840) != 0.0))
  {
    OUTLINED_FUNCTION_239();

    return FigSignalErrorAtGM();
  }

  else
  {
    if ((*(DerivedStorage + 332) & 1) == 0)
    {
      fpfsi_ClearCachedAudioRenderChains(a1);
      fpfsi_ClearCachedVideoRenderChains(a1);
      v5 = *(v4 + 1024);
      if (v5)
      {
        OUTLINED_FUNCTION_424();
        do
        {
          v6 = *(v5 + 24);
          if (*(v5 + 112))
          {
            v7 = *(v5 + 48);
            if (v7 == v1 || v7 == 1936684398)
            {
              fpfs_ReleaseTrackRenderChain(v5);
              if (*(v5 + 48) == 1936684398)
              {
                fpfs_PrepareAndEnqueueSpatialAudioRenderingChangedNotification(*v4, *(v5 + 16), v9, v10, v11, v12, v13, v14);
              }
            }
          }

          if (!v6)
          {
            break;
          }

          v5 = v6;
        }

        while (*(v4 + 1024));
      }

      *(v4 + 528) = 1;
      v15 = OUTLINED_FUNCTION_203();
      fpfs_SetRenderChainsReleasedForPause(v15, v16);
      *(v4 + 2905) = 0;
      fpfsi_EnqueuePlayableRangeChangedNotification(a1);
    }

    return 0;
  }
}

void fpfsi_updateItemTimePropertiesForRateChange(float a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 840);
  if (v4 != a1)
  {
    v5 = DerivedStorage;
    if (v4 != 0.0 && *(DerivedStorage + 464) != 0)
    {
      if ((*(DerivedStorage + 236) & 1) == 0)
      {
        fpfs_GetTime(DerivedStorage, &v43);
        OUTLINED_FUNCTION_388(v5 + 1160);
        v15 = OUTLINED_FUNCTION_175(v7, v8, v9, v10, v11, v12, v13, v14, v40, v41, *(v5 + 1176), v42, v43.n128_i8[0]);
        CMTimeAdd(v17, v15, v16);
        *(v5 + 224) = time;
      }

      v18 = *(v5 + 1680);
      if ((!v18 || !FigAlternateIsIFrameOnly(v18)) && (*(v5 + 3060) & 1) == 0)
      {
        fpfs_GetTime(v5, &time);
        *(v5 + 3048) = time;
        *(v5 + 3072) = FigGetUpTimeNanoseconds();
      }
    }

    v19 = *(v5 + 1680);
    if (!v19 || !FigAlternateIsIFrameOnly(v19))
    {
      if (*(v5 + 1952) != 0.0)
      {
        *(v5 + 1960) = *(v5 + 1960) + (CFAbsoluteTimeGetCurrent() - *(v5 + 1952)) * fabsf(a1);
        Current = CFAbsoluteTimeGetCurrent();
        OUTLINED_FUNCTION_479(Current);
      }

      if (*(v5 + 840) != 0.0)
      {
        v21 = CFAbsoluteTimeGetCurrent();
        *(v5 + 1952) = v21;
        if (*(v5 + 1936) == 0.0)
        {
          *(v5 + 1936) = v21;
          fpfs_GetTime(v5, &v43);
          OUTLINED_FUNCTION_388(v5 + 1160);
          v30 = OUTLINED_FUNCTION_175(v22, v23, v24, v25, v26, v27, v28, v29, v40, v41, *(v5 + 1176), v42, v43.n128_i8[0]);
          CMTimeAdd(v32, v30, v31);
          *(v5 + 1944) = CMTimeGetSeconds(&time);
          v33 = *(v5 + 2568);
          if (v33)
          {
            v34 = *(*(OUTLINED_FUNCTION_854() + 16) + 56);
            if (v34)
            {
              v34(v33, @"playerStats", 0x1F0B656F8, 1000 * v1, 0);
            }
          }
        }
      }

      v35 = *(v5 + 840);
      v36 = CMBaseObjectGetDerivedStorage();
      time.value = 0;
      AllocatorForMedia = FigGetAllocatorForMedia();
      if (!FigMetricItemRateChangeEventCreate(AllocatorForMedia, *(v36 + 1680), &time, v35, a1) && *(*(CMBaseObjectGetVTable() + 16) + 40))
      {
        v38 = OUTLINED_FUNCTION_383();
        v39(v38);
      }

      if (time.value)
      {
        CFRelease(time.value);
      }
    }

    fpfsi_RTCReportingUpdatePlayingTrackStats(v5);
    fpfsi_RTCReportingReportRateChange(*(v5 + 840));
  }
}

void fpfs_IssueSeekToPump(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 *a25)
{
  OUTLINED_FUNCTION_182();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  HIDWORD(v158) = v34;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v263 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_172(DerivedStorage);
  v155 = CMBaseObjectGetDerivedStorage();
  v42 = (v25 + 145);
  OUTLINED_FUNCTION_367();
  v248 = *(v25 + 145);
  v43 = OUTLINED_FUNCTION_422();
  v46 = CMTimeAdd(v45, v43, v44);
  OUTLINED_FUNCTION_159(v46, v47, v48, v49, v50, v51, v52, v53, v131, v134, v137, v141, v143, v146, v149, v152, v155, v158, v161, v164, v165, v169, v172, v176, v179, v183, v186, v190, v193, v197, v200, v204, v207, v210, v213, v216, v219, v222, v225, v228, v54, v231);
  v162 = *MEMORY[0x1E6960CC0];
  *&v248.value = *MEMORY[0x1E6960CC0];
  v55 = *(MEMORY[0x1E6960CC0] + 16);
  v248.epoch = v55;
  v56 = OUTLINED_FUNCTION_422();
  if (CMTimeCompare(v56, v57) < 0)
  {
    v231 = v162;
    v233 = v55;
  }

  time = *v36;
  *&v248.value = *v42;
  v248.epoch = v25[147];
  v58 = OUTLINED_FUNCTION_422();
  CMTimeAdd(v60, v58, v59);
  *&time.value = *v42;
  if (OUTLINED_FUNCTION_255(v25[147], v132, v135, v138, v144, v147, v150, v153, v156, v159, v162, v166, v170, v173, v177, v180, v184, v187, v191, v194, v198, v201, v205, v208, v211, v214, v217, v220, v223, v226, v229, v231, *(&v231 + 1), v233, v234, 0, 0, 0, v237, v239, *(&v239 + 1), v240, v241, *type, *&type[8], v243, v244, v245, *(&v245 + 1), v246, v247, *&v248.value, v248.epoch))
  {
    *&time.value = *v38;
    v61 = OUTLINED_FUNCTION_255(*(v38 + 16), v133, v136, v139, v145, v148, os_log_and_send_and_compose_flags_and_os_log_type, v154, v157, v160, v163, v167, v171, v174, v178, v181, v185, v188, v192, v195, v199, v202, v206, v209, v212, v215, v218, v221, v224, v227, v230, *v232, *&v232[8], *&v232[16], v235, *v236, *&v236[8], *&v236[16], v238, v239, *(&v239 + 1), v240, v241, *type, *&type[8], v243, v244, v245, *(&v245 + 1), v246, v247, *&v248.value, v248.epoch);
    if (!v61 || (OUTLINED_FUNCTION_159(v61, v62, v63, v64, v65, v66, v67, v68, v133, v136, v139, *(&v139 + 1), v145, v148, os_log_and_send_and_compose_flags_and_os_log_type, v154, v157, v160, v163, *(&v163 + 1), v167, v171, v174, v178, v181, v185, v188, v192, v195, v199, v202, v206, v209, v212, v215, v218, v221, v224, v227, v230, v69, *v232), *&v248.value = v163, v248.epoch = v55, v70 = OUTLINED_FUNCTION_422(), !CMTimeCompare(v70, v71)) || (OUTLINED_FUNCTION_29(), v81) && (OUTLINED_FUNCTION_159(v72, v73, v74, v75, v76, v77, v78, v79, v133, v136, v139, *(&v139 + 1), v145, v148, os_log_and_send_and_compose_flags_and_os_log_type, v154, v157, v160, v163, *(&v163 + 1), v167, v171, v174, v178, v181, v185, v188, v192, v195, v199, v202, v206, v209, v212, v215, v218, v221, v224, v227, v230, v80, *v232), v248 = *(v25 + 166), v82 = OUTLINED_FUNCTION_422(), CMTimeCompare(v82, v83) <= 0))
    {
      if (dword_1EAF169F0)
      {
        HIDWORD(v154) = v33;
        LODWORD(v245) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        HIDWORD(v148) = 0;
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_176();
        if (!v81)
        {
          v84 = 0;
        }

        if (v84)
        {
          HIDWORD(v145) = v84;
          LODWORD(v148) = v31;
          v85 = *v25;
          if (*v25)
          {
            v86 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v86 = "";
          }

          v142 = v86;
          if (v40)
          {
            v87 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v87 = "";
          }

          v140 = v87;
          OUTLINED_FUNCTION_367();
          v88.n128_f64[0] = CMTimeGetSeconds(&time);
          v89 = v88.n128_u64[0];
          OUTLINED_FUNCTION_159(v90, v91, v92, v93, v94, v95, v96, v97, v133, v136, v140, v142, v145, v148, os_log_and_send_and_compose_flags_and_os_log_type, v154, v157, v160, v163, *(&v163 + 1), v167, v171, v174, v178, v181, v185, v188, v192, v195, v199, v202, v206, v209, v212, v215, v218, v221, v224, v227, v230, v88, *v232);
          Seconds = CMTimeGetSeconds(&time);
          time = *(v25 + 166);
          v99 = CMTimeGetSeconds(&time);
          *&time.value = *v42;
          time.epoch = v25[147];
          LODWORD(v248.value) = 136317186;
          *(&v248.value + 4) = "fpfs_IssueSeekToPump";
          LOWORD(v248.flags) = 2048;
          *(&v248.flags + 2) = v85;
          HIWORD(v248.epoch) = 2082;
          v249 = *(&v139 + 1);
          v250 = 2048;
          v251 = v40;
          v252 = 2082;
          v253 = v139;
          v254 = 2048;
          v255 = v89;
          v256 = 2048;
          v257 = Seconds;
          v258 = 2048;
          v259 = v99;
          v260 = 2048;
          v261 = CMTimeGetSeconds(&time);
          LODWORD(v136) = 92;
          v133 = &v248;
          OUTLINED_FUNCTION_108();
          _os_log_send_and_compose_impl();
          v31 = v148;
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_420();
        v33 = HIDWORD(v154);
      }

      *v42 = v163;
      v25[147] = v55;
      v100 = v25[12];
      *&time.value = v163;
      time.epoch = v55;
      FigAlternatePlaybackBitrateMonitorSetPumpOffset(v100, &time);
    }
  }

  if (v33)
  {
    if ((~v36->flags & 0x11) != 0)
    {
      goto LABEL_32;
    }

    if (*(v157 + 108) >= 0.0)
    {
      v113 = CMTimeMake(&v248, 2, 1);
      OUTLINED_FUNCTION_435(v113, v114, v115, v116, v117, v118, v119, v120, v133, v136, v139, *(&v139 + 1), v145, v148, os_log_and_send_and_compose_flags_and_os_log_type, v154, v157, v160, v163, *(&v163 + 1), v167, v171, v174, v178, v181, v185, v188, v192, v195, v199, v202, v206, v209, v212, v215, v218, v221, v224, v227, v230, *v232);
      CMTimeSubtract(v123, v121, v122);
    }

    else
    {
      v101 = CMTimeMake(&v248, 2, 1);
      OUTLINED_FUNCTION_435(v101, v102, v103, v104, v105, v106, v107, v108, v133, v136, v139, *(&v139 + 1), v145, v148, os_log_and_send_and_compose_flags_and_os_log_type, v154, v157, v160, v163, *(&v163 + 1), v167, v171, v174, v178, v181, v185, v188, v192, v195, v199, v202, v206, v209, v212, v215, v218, v221, v224, v227, v230, *v232);
      CMTimeAdd(v111, v109, v110);
    }

    *v236 = *&time.value;
    epoch = time.epoch;
  }

  else
  {
    if ((*(v25 + 1484) & 1) == 0)
    {
      goto LABEL_32;
    }

    *v236 = *MEMORY[0x1E6960C70];
    epoch = *(MEMORY[0x1E6960C70] + 16);
  }

  *&v236[16] = epoch;
LABEL_32:
  v124 = v25[63];
  if (v124)
  {
    CFRelease(v124);
    v25[63] = 0;
  }

  v125 = v25[114];
  v196 = *v29;
  v203 = *(v29 + 2);
  v182 = *v27;
  v189 = *(v27 + 2);
  v168 = *a25;
  v175 = *(a25 + 2);
  v126 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v126 || (time = *v232, v248 = *v236, v245 = v196, v246 = v203, *type = v182, v243 = v189, v239 = v168, v240 = v175, v126(v125, &time, &v248, HIDWORD(v160), v31, &v245, type, &v239, (v25 + 116))))
  {
    v128 = OUTLINED_FUNCTION_198();
    fpfs_FlowControlPump(v128, v129, 0, v130);
  }

  else
  {
    v127 = CMBaseObjectGetDerivedStorage();
    if (*(v127 + 471))
    {
      *(v127 + 471) = 0;
    }
  }

  OUTLINED_FUNCTION_181();
}

void fpfs_PrepareToReuseLastIFrameTrack()
{
  OUTLINED_FUNCTION_845();
  v3 = v2;
  v5 = v4;
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_251();
  OUTLINED_FUNCTION_301();
  fpfs_LastTrackOfType(v6, v7, 0);
  v8 = OUTLINED_FUNCTION_798();
  fpfsi_pauseItem(v8);
  if (v1)
  {
    if (*(v1 + 200))
    {
      v9 = v1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v0 + 1024);
  if (v10)
  {
    do
    {
      v11 = *(v10 + 24);
      if (v10 != v9)
      {
        fpfs_DeleteTrack(v5, v10);
      }

      if (!v11)
      {
        break;
      }

      v10 = v11;
    }

    while (*(v0 + 1024));
  }

  if (!v9)
  {
    goto LABEL_22;
  }

  if (!*(v9 + 198))
  {
    v12 = v9;
    goto LABEL_14;
  }

  fpfs_AddNewTrack();
  if (!v21)
  {
    v22 = OUTLINED_FUNCTION_617();
    fpfs_DeleteTrack(v22, v23);
LABEL_22:
    v24 = MEMORY[0x1E6960C70];
    *(v0 + 1496) = *MEMORY[0x1E6960C70];
    *(v0 + 1512) = *(v24 + 16);
    *(v0 + 1541) = 0;
LABEL_23:
    *(v0 + 528) = 1;
    goto LABEL_24;
  }

  v12 = v21;
  v27 = *(v21 + 64);
  v28 = *(v21 + 40);
  v29 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v29)
  {
    v29(v27, v28, &kManifoldOutputCallbacks, v12);
  }

  fpfs_fmtDescChangeNote();
  if (v30)
  {
    goto LABEL_24;
  }

  v31 = OUTLINED_FUNCTION_617();
  fpfs_DeleteTrack(v31, v32);
LABEL_14:
  v13 = OUTLINED_FUNCTION_663();
  *(v12 + 224) = v14;
  *(v12 + 208) = v13;
  v15 = OUTLINED_FUNCTION_663();
  *(v12 + 248) = v16;
  *(v12 + 232) = v15;
  v17 = *(v12 + 112);
  if (v17)
  {
    fpfs_FlushPrimaryAndAuxRenderChains(v17, 1);
  }

  else if (v3)
  {
    fpfs_EnsureRenderChainForTrack();
    v25 = OUTLINED_FUNCTION_234();
    fpfs_SetRenderChainsReleasedForPause(v25, v26);
  }

  v18 = MEMORY[0x1E6960C70];
  v19 = v0 + 24 * *(v12 + 196);
  v33 = *MEMORY[0x1E6960C70];
  *(v19 + 248) = *MEMORY[0x1E6960C70];
  v20 = *(v18 + 16);
  *(v19 + 264) = v20;
  CMBufferQueueReset(*(v12 + 96));
  *(v0 + 1512) = v20;
  *(v0 + 1496) = v33;
  *(v0 + 1541) = 0;
  if (!*(v12 + 112))
  {
    goto LABEL_23;
  }

LABEL_24:
  OUTLINED_FUNCTION_843();
}