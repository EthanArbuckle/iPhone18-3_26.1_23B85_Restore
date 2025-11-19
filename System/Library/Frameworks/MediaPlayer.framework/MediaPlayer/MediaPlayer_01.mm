uint64_t sub_1A23E07B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v71 - 192) = v68 - 896639297 * ((((v71 - 192) | 0xFBB4AD1C) - (v71 - 192) + ((v71 - 192) & 0x44B52E0)) ^ 0xEF1F3B64) - 149754651;
  (*(v70 + 8 * (v68 ^ (v66 - 1810))))(v71 - 192);
  LOBYTE(STACK[0x1840]) = (((v67 - v68) | (v68 - v67)) >> (((v68 + v69) | 0xC4) + 83)) - 21 * ((v71 + 64 - 2 * ((v71 + 64) & 0x20) + 32) ^ 0xCC) + 89;
  *(v71 - 168) = &STACK[0x414];
  *(v71 - 184) = &a66;
  *(v71 - 188) = v69 - 1388665877 * ((v71 - 192 - 2 * ((v71 - 192) & 0x7BF22220) + 2079466016) ^ 0xF65F40CC) + v68 + 2083;
  v72 = (*(v70 + 8 * (v68 ^ 0x90F016B5)))(v71 - 192);
  return (*(v70 + 8 * (((STACK[0x310] == 0) * ((122 * (((v68 + v69) | 0xC4) ^ 0x2C5)) ^ 0x439)) ^ (((v68 + v69) | 0xC4) + 365))))(v72);
}

uint64_t sub_1A23E090C(__n128 a1, __n128 a2)
{
  a1.n128_u32[0] = 1179666;
  a1.n128_u16[2] = 18;
  a1.n128_u16[3] = 18;
  a2.n128_u32[0] = 8978569;
  a2.n128_u16[2] = 137;
  a2.n128_u16[3] = 137;
  return sub_1A23E0928(a1, a2);
}

uint64_t sub_1A23E0928@<X0>(uint64_t a1@<X8>, int8x8_t a2@<D0>, int16x4_t a3@<D1>, uint8x8_t a4@<D2>)
{
  a4.i32[0] = *(v4 + v7 - v6);
  v10 = vmovl_u8(a4).u64[0];
  *(a1 + v7 - v6) = vuzp1_s8(vadd_s16(vsub_s16(v10, vand_s8(vadd_s16(v10, v10), a2)), a3), a2).u32[0];
  return (*(v9 + 8 * (((v6 + 4 == (v5 + 549) - 1901) * v8) ^ v5)))();
}

uint64_t sub_1A23E097C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, int a56)
{
  v60 = 1556366573 * ((~((v59 - 192) | 0xC9FA5D5950B9E36DLL) + ((v59 - 192) & 0xC9FA5D5950B9E36DLL)) ^ 0x1DFEDC45CBA23F78);
  *(v59 - 168) = -642708459 - v60 + a56 - 715 + 54;
  *(v59 - 184) = v60 - 2030745388 + a56;
  *(v59 - 180) = ((a56 - 715) ^ 0xD9B10C71) - v60;
  *(v59 - 176) = v60 ^ (a56 - 715) ^ 0xD9B10C15;
  *(v59 - 172) = v58 - v60;
  *(v59 - 192) = v60 + 3;
  *(v59 - 160) = v60 + (v57 + 1);
  v61 = (*(v56 + 8 * (a56 + 2152)))(v59 - 192);
  return (*(v56 + 8 * *(v59 - 152)))(v61);
}

void sub_1A23E0A68(uint64_t a1@<X8>)
{
  v2 = &STACK[0x17E0] + a1;
  *v2 = *v1;
  *(v2 + 1) = *(v1 + 1);
  *(v2 + 9) = *(v1 + 9);
  *(v2 + 13) = *(v1 + 13);
  v2[15] = v1[15];
  v4 = *v1;
  v3 = *(v1 + 1);
  *(v2 + 2) = v4;
  *(v2 + 3) = v3;
  JUMPOUT(0x1A23E0ED8);
}

uint64_t sub_1A23E2954@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v8 = *(a2 + v3 + 72);
  v9 = (v3 ^ 0xFEDFF7F6) + 18874649 + ((v3 << (v2 + 53)) & 0xFDBFEFE8);
  *(v5 + v9 + 1777) = (a1 ^ HIBYTE(v8)) - ((2 * (a1 ^ HIBYTE(v8))) & 0x12) - 119;
  *(v5 + v9 + 1778) = (v6 ^ BYTE2(v8)) - ((2 * (v6 ^ BYTE2(v8))) & 0x12) - 119;
  *(v5 + v9 + 1779) = (BYTE1(v8) ^ 0x70) - ((v8 >> 7) & 0x12) - 119;
  *(v5 + v9 + 1780) = v8 ^ 0xF9;
  return (*(v7 + 8 * ((2248 * (v3 + 4 < *(a2 + 92))) ^ v4)))(186);
}

void sub_1A23E2A1C()
{
  v0 = STACK[0x420];
  v1 = STACK[0x3E4];
  v2 = STACK[0x370];
  LODWORD(STACK[0x25C]) = 1;
  STACK[0x228] = v0;
  LODWORD(STACK[0x2E4]) = v1;
  STACK[0x3A8] = v2;
  LODWORD(STACK[0x308]) = 411672603;
  JUMPOUT(0x1A23E2A60);
}

uint64_t sub_1A23E2AC4()
{
  v5 = *(*(v1 + 40) + v0) - *(v3 + v0);
  v6 = (v5 ^ (((v2 - 967) | 2) - 55593008)) - 413737410 + ((2 * v5) & 0xF95F6FDE);
  v8 = v0 == 15 || v6 != -469330387;
  return (*(v4 + 8 * ((1985 * v8) ^ v2)))();
}

uint64_t sub_1A23E2B3C@<X0>(uint64_t a1@<X8>)
{
  v5 = (((v4 + 268567190) | 0x5A00320u) ^ 0xFFFFFFFFEA5DF88ELL) + v3;
  *(a1 + v5) = *(v2 + v5) - ((2 * *(v2 + v5)) & 0x12) - 119;
  return (*(v1 + 8 * ((1853 * (v5 == 0)) ^ v4)))(0);
}

uint64_t sub_1A23E2CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, uint64_t a26, int a27, int a28)
{
  v35 = 1556366573 * ((v34 - 0x61B51A304C87058CLL - 2 * ((v34 - 152) & 0x9E4AE5CFB378FB0CLL)) ^ 0xB5B19B2CD79CD8E6);
  *(v34 - 144) = v35 + v29 - 2030744951;
  *(v34 - 140) = (a28 ^ 2) - v35;
  *(v34 - 128) = a28 - v35;
  *(v32 + 8) = v35 + 3;
  *(v32 + 40) = (v28 + 1) + v35 - (((((~(v29 + 344) + v33) ^ (v30 - (v29 + 344))) - 1) & ((v29 + 344) - v33) & 0x8000000000000000) == 0) + (v29 - 278);
  *(v34 - 136) = v35 ^ a27;
  *(v34 - 132) = 1 - v35;
  v36 = (*(v31 + 8 * a25))(v34 - 152);
  return (*(v31 + 8 * *(v34 - 112)))(v36);
}

uint64_t sub_1A23E2E48()
{
  result = (*(v2 + 8 * (v4 + 2388)))(**(v3 + 8 * (v4 - 395)), v6, v7);
  *(v0 + 32) = v1;
  return result;
}

uint64_t sub_1A23E318C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  LODWORD(STACK[0x30C]) = v59;
  LODWORD(STACK[0x318]) = v60;
  return (*(v61 + 8 * ((459 * (v57 - 223 == ((11 * (v58 ^ 0x275)) ^ (v62 - 1135)))) ^ (v58 - 704))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56);
}

uint64_t sub_1A23E3334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, int a14, int a15)
{
  v20 = *(v15 + 8) - v18;
  v21 = 1388665877 * ((((&a12 | 0x24FAC080) ^ 0xFFFFFFFE) - (~&a12 | 0xDB053F7F)) ^ 0x56A85D93);
  a13 = a9;
  a15 = v21 + v19 + 2152;
  a12 = ((((v19 - 40140650) & 0x2647F1E) - 5269601) * v20 + 418635856) ^ v21;
  v22 = (*(v16 + 8 * (v19 + 2242)))(&a12);
  return (*(v16 + 8 * ((1771 * (a14 == v17)) ^ v19)))(v22);
}

void sub_1A23E3698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  v34 = 1504884919 * ((2 * ((v33 - 144) & 0x55F8D7D8) - (v33 - 144) - 1442371551) ^ 0x51C49F3A);
  *(v33 - 140) = v31 - v34 + ((v30 + 1350) ^ 0x29E2E7C2);
  *(v33 - 136) = v29;
  *(v33 - 128) = &a29;
  *(v33 - 120) = v30 - v34 + 650;
  (*(v32 + 8 * (v30 + 1991)))(v33 - 144);
  JUMPOUT(0x1A23DBBC0);
}

uint64_t sub_1A23E371C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, _BYTE *a9, uint64_t a10, char a11, __int16 a12, char a13, unsigned int a14, int a15, char *a16, unsigned int a17, _BYTE *a18)
{
  a17 = (v18 - 1059) ^ (143681137 * ((&a14 & 0x3F6BEF22 | ~(&a14 | 0x3F6BEF22)) ^ 0xA1AEA795));
  a18 = a9;
  a16 = &a13;
  (*(v19 + 8 * (v18 + 890)))(&a14);
  v21 = 2 * &a14;
  a16 = &a11;
  a17 = (v18 - 1059) ^ (143681137 * (((v21 | 0xE15B6234) - &a14 - 1890431258) ^ 0x11970652));
  a18 = a9;
  (*(v19 + 8 * (v18 ^ 0xCBA)))(&a14);
  a14 = v18 - 1556366573 * (((v21 | 0x76F105E6) - &a14 + 1149730061) ^ 0xDF9CA119) + 805;
  a16 = a9;
  v22 = (*(v19 + 8 * (v18 + 924)))(&a14);
  return (*(v19 + 8 * ((3430 * (a15 == ((v18 - v20 + 364) ^ 0x984951D8))) ^ v18)))(v22);
}

uint64_t sub_1A23E38FC@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v2 + v7);
  return (*(v6 + 8 * ((49 * ((((v5 - a2) ^ (v7 == 0)) & 1) == 0)) | (v3 + v5 + 160))))();
}

uint64_t sub_1A23E3BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, int a56)
{
  v62 = (a56 - 93);
  *v60 = v60[623] - (v62 & 0xB4947981) + (((v56 + ((~v62 + v58) ^ (v57 - v62)) - 2) & (v62 - v58)) >> 63);
  return (*(v61 + 8 * ((419 * ((v62 ^ 0x26E) + v59 + ((((v56 - 1) | 0x2CC) - 717) ^ v56) == 0)) ^ (v56 + 159))))();
}

uint64_t sub_1A23E4064()
{
  v4 = v0 | 0x242;
  v5 = (((v0 | 0x242) - 61) ^ 0x6524E1F9) + v10;
  v6 = 1785193651 * ((2 * ((v3 - 144) & 0x7CFE7718) - (v3 - 144) + 50432224) ^ 0x80B102F6);
  *(v3 - 128) = v5 ^ v6;
  *(v3 - 120) = v4 - v6 + 543;
  *(v3 - 144) = v8;
  *(v3 - 136) = v2;
  (*(v1 + 8 * (v4 ^ 0x98C)))(v3 - 144);
  *v9 = v10;
  result = v11;
  *(v11 + 56) = 1863271989;
  return result;
}

uint64_t sub_1A23E41D0@<X0>(uint64_t a1@<X8>)
{
  v5 = a1 + 335 - v1;
  v6 = *(v5 - 31);
  v7 = v4 + 335 - v1;
  v8.i64[0] = 0x1212121212121212;
  v8.i64[1] = 0x1212121212121212;
  v9.i64[0] = 0x8989898989898989;
  v9.i64[1] = 0x8989898989898989;
  *(v7 - 15) = vaddq_s8(vsubq_s8(*(v5 - 15), vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)), v9);
  *(v7 - 31) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v8)), v9);
  return (*(v3 + 8 * (((v1 == 288) * (((v2 - 681) | 0x244) - 591)) ^ v2)))();
}

uint64_t sub_1A23E4248(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v13 = (*(v11 + 4 * v12) ^ v6) + v7 + a3 * (*(*(v8 + 8) + 4 * a2) ^ v6);
  *(v11 + 4 * v12) = v13 + v6 - (v5 & (2 * v13));
  return (*(v4 + 8 * (v10 | ((a4 != a2) * v9))))();
}

uint64_t sub_1A23E427C@<X0>(uint64_t a1@<X8>)
{
  v11 = (*(*(v9 + 8) + 4 * v1) ^ v3) + v2;
  *(*(a1 + 8) + 4 * v1) = v11 + v6 - (v8 & (2 * v11));
  return (*(v7 + 8 * (((v10 > v1 + 1) * v5) ^ v4)))();
}

uint64_t sub_1A23E42C4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v31 = STACK[0x310];
  v32 = LODWORD(STACK[0x3B4]) ^ 0xEF5DBDBF;
  v33 = (2 * LODWORD(STACK[0x3B4])) & 0xDEBB7B7E;
  v34 = 843532609 * ((~((v30 - 192) | 0x6CA860A5) + ((v30 - 192) & 0x6CA860A5)) ^ 0x83EBE804);
  *(v30 - 148) = (v29 - 1776823944) ^ v34;
  *(v30 - 176) = a1;
  *(v30 - 168) = a27 + 4;
  *(v30 - 160) = (1591951115 * v27 + 636042909) ^ v34;
  *(v30 - 156) = v32 - v34 + v33 + 2063588992;
  *(v30 - 192) = a16;
  *(v30 - 184) = v31;
  v35 = (*(v28 + 8 * (v29 + 2249)))(v30 - 192);
  return (*(v28 + 8 * ((1135 * (*(v30 - 152) == (v29 ^ 0x5B ^ a17))) ^ v29)))(v35);
}

uint64_t sub_1A23E47D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v75 = 1037613739 * ((((2 * (v74 - 192)) | 0x85A114BE) - (v74 - 192) - 1120963167) ^ 0x93D2A720);
  *(v74 - 128) = (v72 ^ 0x8BBF97FF) - v75 + 2 * v72 + 2147417085;
  *(v74 - 136) = &STACK[0x38C];
  LOBYTE(STACK[0x1850]) = (-85 * ((((2 * (v74 + 64)) | 0xBE) - (v74 + 64) - 95) ^ 0x20)) ^ 0x29;
  *(v74 - 144) = v71 - v75 - 2240;
  *(v74 - 192) = v75 + (a71 ^ 0x3BD19FBE) + ((a71 << ((v71 + 70) ^ 0x6C)) & 0x77A33F7C) - 671090696;
  *(v74 - 184) = a23;
  *(v74 - 176) = a60;
  *(v74 - 152) = a54;
  *(v74 - 168) = a16;
  v76 = (*(v73 + 8 * (v71 + 342)))(v74 - 192);
  v77 = *(v74 - 156) != ((v71 - 142) ^ 0x6F0F4FAC);
  return (*(v73 + 8 * (((2 * v77) | (16 * v77)) ^ v71)))(v76);
}

uint64_t sub_1A23E4928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, unsigned int a15)
{
  a15 = 1960 - 1785193651 * (&a12 ^ 0x83B08A16);
  a13 = a10;
  a14 = v15;
  v19 = (*(v17 + 23152))(&a12);
  return (*(v17 + 8 * (((a12 != v16) * (((v18 + 146400854) | 0x40) ^ 0x326)) ^ 0x326)))(v19);
}

uint64_t sub_1A23E4A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, unsigned int a56)
{
  HIDWORD(v61) = a56 - 477807589;
  LODWORD(a40) = (a56 - 1624834766) & 0x60D907D7;
  LODWORD(a29) = (a56 - 488069849) & 0x1D175BBC;
  LODWORD(a32) = a29 ^ 0x3B0;
  HIDWORD(v60) = 59 * (a56 ^ 0x2C1);
  LODWORD(v60) = 13 * (a56 ^ 0x2F7);
  LODWORD(a30) = a56 - 1506135757;
  LODWORD(v61) = a56 ^ 0x9CA;
  LODWORD(a41) = a56 ^ 0x21F;
  return (*(v58 + 8 * (v57 - 716)))(a1, a2, 413509333, a4, a5, 3291123599, a56, 1863271989, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v60, a32, v59 + 9, a34, a43 + 9, v59 + 29, a43 + 29, v59 + 49, a43 + 49, a40, a41, v61, a43, a44, 0x22AD43425CD75083);
}

uint64_t sub_1A23E4ABC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = a2 ^ (a5 + 16);
  v15 = a2 + 2349;
  v16 = 1785193651 * ((v13 - 120) ^ 0x83B08A16);
  *(v13 - 112) = v13 - 220;
  *(v13 - 104) = a12 - v16 + 576482350;
  *(v13 - 120) = a2 - v16 + 1253;
  v17 = (*(v12 + 8 * (a2 + 2807)))(v13 - 120);
  v18 = *(v13 - 152) & (v15 ^ 0x962u);
  *(v13 - 220 + v18) = 9;
  return (*(v12 + 8 * ((1867 * (v18 > (v14 ^ 0x1884D2Eu))) ^ a2)))(v17);
}

void sub_1A23E4B9C(uint64_t a1)
{
  v1 = 1556366573 * ((-1985969913 - (a1 | 0x89A08107) + (a1 | 0x765F7EF8)) ^ 0x12BB5D12);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1A23E4C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20)
{
  *a6 = 0;
  *a7 = 0;
  a20 = (210068311 * ((((&a19 | 0x5A6B65F6) ^ 0xFFFFFFFE) - (~&a19 | 0xA5949A09)) ^ 0x3742A5AD)) ^ 0x48449A90;
  v23 = (*(v22 + 22400))(&a19);
  return (*(v22 + 8 * ((743 * (a19 == v20)) ^ v21)))(v23);
}

uint64_t sub_1A23E4D28(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  STACK[0x218] = a33 + 317 * (v33 ^ 0x288u) - 698;
  STACK[0x230] = a1;
  return (*(v34 + 8 * (v33 ^ (2076 * (v35 > a1)))))();
}

uint64_t sub_1A23E4E04()
{
  STACK[0x290] = 0;
  v3 = 896639297 * (((~(v2 - 192) & 0x744F21A0) - (~(v2 - 192) | 0x744F21A1)) ^ 0x60E4B7D9);
  *(v2 - 168) = v3 ^ 0x52840B2A;
  *(v2 - 192) = v3 + v1 - 28;
  *(v2 - 160) = &STACK[0x3FC];
  *(v2 - 184) = 0;
  *(v2 - 176) = &STACK[0x290];
  v4 = (*(v0 + 8 * (v1 ^ 0xACE)))(v2 - 192);
  return (*(v0 + 8 * (((*(v2 - 152) == 1863271989) * ((v1 - 1131131863) & 0x436BB67D ^ ((v1 - 286) | 0x240) ^ 0x532)) ^ v1)))(v4);
}

uint64_t sub_1A23E4EF0(uint64_t a1)
{
  v5 = *(v3 + 336);
  v6 = *(a1 + 16) + v1 + ((v4 - 109) ^ 0x8CCA15B1);
  v7 = (v5 > 0x540E111) ^ (v6 < 0xFABF1EEE);
  v8 = v4 - 88140138 + v5 > v6;
  if (v7)
  {
    v8 = v5 > 0x540E111;
  }

  return (*(v2 + 8 * ((63 * v8) ^ v4)))();
}

uint64_t sub_1A23E4FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5) ^ 0x89;
  return (*(v4 + 8 * ((2081 * (v5 == ((v3 + 691099304) & 0xD6CEACE7 ^ 0x426))) ^ v3)))();
}

uint64_t sub_1A23E50CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, char a18)
{
  *(v23 - 128) = v18;
  *(v23 - 120) = &a18;
  *(v23 - 136) = v20 + a15 * v21 + 692;
  v24 = (*(v19 + 8 * (v20 ^ 0xED9)))(v23 - 136);
  return (*(v19 + 8 * (((*(v23 - 112) > v22) * (v20 - 1461)) ^ v20)))(v24);
}

void sub_1A23E5134()
{
  v0 = MEMORY[0x1EEE9AC00]();
  if (*(v0 + 8))
  {
    v2 = *(v0 + 16) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *v0 - 210068311 * (((v0 | 0x7627AF5) - (v0 | 0xF89D850A) - 123894518) ^ 0x95B44551);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23E5264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, uint64_t a21)
{
  v23 = 7 * ((v21 - 1718) ^ 0x141);
  *a6 = (a14 >> ((7 * ((v21 + 74) ^ 0x41)) ^ 0x72)) ^ 0x3787A31;
  a20 = (v23 + 2197) ^ (50899313 * ((&a20 + 316773899 - 2 * (&a20 & 0x12E1960B)) ^ 0x382ABC71));
  a21 = a15;
  (*(v22 + 8 * (v23 ^ 0xB34)))(&a20);
  a21 = a17;
  a20 = (v23 + 2197) ^ (50899313 * ((2 * (&a20 & 0x7D3CC678) - &a20 - 2101134970) ^ 0xA80813FC));
  v24 = (*(v22 + 8 * (v23 + 2764)))(&a20);
  return sub_1A23E5374(v24);
}

uint64_t sub_1A23E5434@<X0>(int a1@<W8>)
{
  *v3 = v9 ^ v4;
  v10 = (a1 + 1634) ^ (50899313 * (((&v10 | 0x4E503E31) - &v10 + (&v10 & 0xB1AFC1C8)) ^ 0x649B144B));
  v11 = v8;
  (*(v2 + 8 * (a1 ^ 0x9E9)))(&v10);
  v10 = (a1 + 1634) ^ (50899313 * (((&v10 | 0x676BE7D9) - &v10 + (&v10 & 0x98941820)) ^ 0x4DA0CDA3));
  v11 = v7;
  result = (*(v2 + 8 * (a1 ^ 0x9E9)))(&v10);
  *(v1 + 8) = 1863271989;
  return result;
}

uint64_t sub_1A23E55A8()
{
  v4 = v3 ^ 0x3CE;
  v14 = v8;
  v12 = &v7;
  v13 = (v3 + 244) ^ ((&v10 ^ 0x613AB748) * v0);
  (*(v2 + 8 * (v3 ^ 0x993u)))(&v10);
  v10 = v3 - 1556366573 * ((517668120 - (&v10 | 0x1EDAFD18) + (&v10 | 0xE12502E7)) ^ 0x85C1210D) + 2108;
  v12 = v8;
  (*(v2 + 8 * (v3 + 2227)))(&v10);
  if (v11 == v1 + (v3 ^ 0x3CE) - 327)
  {
    v5 = v7;
  }

  else
  {
    v5 = v11;
  }

  v10 = (v3 + 1667) ^ (50899313 * ((&v10 & 0xCE912D27 | ~(&v10 | 0xCE912D27)) ^ 0x1BA5F8A2));
  v12 = v8;
  (*(v2 + 8 * (v3 ^ 0x9CAu)))(&v10);
  v12 = v9;
  v10 = (v4 + 1989) ^ (50899313 * ((&v10 & 0xAE55C016 | ~(&v10 | 0xAE55C016)) ^ 0x7B611593));
  (*(v2 + 8 * (v4 + 2556)))(&v10);
  return v5 ^ v1;
}

void sub_1A23E5774(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, int a8, int a9)
{
  v10 = v9 - (**(a2 + 8) == 0);
  *(*(a1 + 96) + 800) = 64;
  *(*(a1 + 96) + 804) = 1389192254;
  *(*(a1 + 96) + 808) = *(a1 + 96) + 816;
  v11 = *(a2 + 8) + (*(a2 + 4) - v10);
  a5 = *(a1 + 96) + 800;
  a6 = v11;
  a9 = 1556366573 * (((&a5 | 0xB389605C) - (&a5 & 0xB389605C)) ^ 0xD76D43B6) - 1178099753 + v10;
  a7 = 1556366573 * (((&a5 | 0xB389605C) - (&a5 & 0xB389605C)) ^ 0xD76D43B6) + 2242;
  (*(a3 + 23072))(&a5);
  JUMPOUT(0x1A23E5870);
}

uint64_t sub_1A23E59EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, int a20, unsigned int a21)
{
  v26 = 1388665877 * ((&a18 & 0x6DEBBA12 | ~(&a18 | 0x6DEBBA12)) ^ 0x1FB92701);
  a19 = a14;
  a21 = v26 + 2769;
  a18 = v26 ^ (199880445 * v24 + 103127814);
  (*(v25 + 22872))(&a18);
  v27 = 1388665877 * (&a18 ^ 0x8DAD62EC);
  a21 = v27 + 2769;
  a18 = v27 ^ (199880445 * HIDWORD(v23) + 103127814);
  a19 = a14;
  (*(v25 + 22872))(&a18);
  v28 = 1388665877 * ((2 * (&a18 & 0xA2F7A90) - &a18 - 170883733) ^ 0x787DE787);
  a18 = v28 ^ (199880445 * v23 + 103127814);
  a19 = a14;
  a21 = v28 + 2769;
  (*(v25 + 22872))(&a18);
  v29 = 1388665877 * (((&a18 | 0xC3ED7B5) + (~&a18 | 0xF3C1284A)) ^ 0x8193B558);
  a19 = a14;
  a21 = v29 + 2769;
  a18 = (199880445 * v22 + 103127814) ^ v29;
  (*(v25 + 22872))(&a18);
  a21 = v27 + 2769;
  a19 = a14;
  a18 = v27 ^ (199880445 * v21 + 103127814);
  v30 = (*(v25 + 22872))(&a18);
  return (*(v25 + 8 * ((2764 * (a20 == 1863271989)) ^ 0x3ADu)))(v30);
}

uint64_t sub_1A23E5C8C@<X0>(int a1@<W8>)
{
  *(*v4 + v2) = v1;
  v6 = v3 != v2 + (a1 ^ 0x7F7) - 830;
  return (*(v5 + 8 * ((v6 | (2 * v6)) ^ a1)))();
}

uint64_t sub_1A23E5CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 ^ 0x48u) + 640 - 1549) ^ v3) + v2;
  *(a1 - 7 + v6) = veor_s8(*(a2 - 7 + v6), 0x8989898989898989);
  v7 = ((v4 ^ 0xFFFFFC3C) & v2) - 8 != v3;
  return (*(v5 + 8 * (((8 * v7) | (v7 << 6)) ^ v4 ^ 0x48)))();
}

uint64_t sub_1A23E5D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char *a19, int a20, unsigned int a21, unsigned int a22)
{
  v24 = 1556366573 * ((((2 * &a19) | 0x91CC7494) - &a19 + 924435894) ^ 0xAC0219A0);
  a20 = v24 ^ 0x661FAE4E;
  a22 = 1844776152 - v24;
  LODWORD(a19) = 2027 - v24;
  HIDWORD(a19) = v24 + 295473086;
  (*(v22 + 22792))(&a19);
  a21 = ((&a19 & 0xDAFF62D7 | ~(&a19 | 0xDAFF62D7)) ^ 0xB7D6A28C) * v23 + 789;
  a19 = &a16;
  v25 = (*(v22 + 22888))(&a19);
  return (*(v22 + 8 * ((248 * (a20 == 1863271989)) ^ 0x77u)))(v25);
}

uint64_t sub_1A23E5EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a17 = ((1779554172 - (&a15 ^ 0x5AAC33D7 | 0x6A11D77C) + (&a15 ^ 0x5AAC33D7 | 0x95EE2883)) ^ 0x5D9424F0) * v19 + 789;
  a15 = &a11;
  v21 = (*(v18 + 22888))(&a15);
  return (*(v18 + 8 * ((3900 * (a16 == v17)) ^ v20)))(v21);
}

uint64_t sub_1A23E5F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v22 - 128) = v20;
  *(v22 - 120) = &a17;
  *(v22 - 136) = v21 + ((((v22 - 136) | 0x78CA4850) - (v22 - 136) + ((v22 - 136) & 0x8735B7A8)) ^ 0x1C2E6BBA) * v17 - 131;
  v23 = (*(v19 + 8 * (v21 + 546)))(v22 - 136);
  return (*(v19 + 8 * ((((v21 ^ (*(v22 - 112) > v18)) & 1) * ((v21 - 1290988512) & 0x4CF2EBED ^ 0x8FB)) ^ v21)))(v23);
}

uint64_t sub_1A23E6050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23)
{
  v30 = 1388665877 * ((((2 * v28) | 0x52DE200E) - v28 + 1452339193) ^ 0x24C272EB);
  a22 = a19;
  LODWORD(a21) = (199880445 * v27 + 103127814) ^ v30;
  HIDWORD(a23) = v30 + 2769;
  (*(v29 + 22872))(&a21);
  v31 = 1388665877 * (((~v28 & 0x8F46C28B) + v28 - (v28 & 0x8F46C28B)) ^ 0x2EBA067);
  HIDWORD(a23) = v31 + 2769;
  LODWORD(a21) = v31 ^ (v26 * (v23 | 0xBE9EE94) + 103127814);
  a22 = a19;
  (*(v29 + 22872))(&a21);
  v32 = 1785193651 * ((~v28 & 0x110093BCD3E72DDFLL | v28 & 0xEEFF6C432C18D220) ^ 0x39142EB65057A7C9);
  LODWORD(a22) = 2356 - v32;
  a23 = a19;
  a21 = v32 ^ ((v25 ^ 0x7FBF7F9958FA6A6BLL) - 0x648408091048220ALL + ((2 * v25) & 0xFF7EFF32B1F4D4D6));
  (*(v29 + 23016))(&a21);
  v33 = 1785193651 * (v28 ^ 0x2814BD0A83B08A16);
  a21 = v33 ^ ((v24 ^ 0x9BFBFFF5CDF25F65) + 0x7F3F779A7ABFE8FCLL + ((2 * v24) & 0x37F7FFEB9BE4BECALL));
  LODWORD(a22) = 2356 - v33;
  a23 = a19;
  v34 = (*(v29 + 23016))(&a21);
  return (*(v29 + 8 * ((316 * (HIDWORD(a22) == 1863271989)) ^ 0x26Fu)))(v34);
}

uint64_t sub_1A23E6308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v22 = 1564307779 * ((~((v21 - 136) | 0x8A7A84F8) + ((v21 - 136) & 0x8A7A84F8)) ^ 0xE288B714);
  *(v21 - 128) = &a17;
  *(v21 - 120) = v18 - v22 - 360;
  *(v21 - 136) = ((((v18 ^ 0x6D8) - 537619295) ^ v19) + ((2 * v19) & 0xBFE931FC) + 1837105148) ^ v22;
  (*(v20 + 8 * (v18 ^ 0x9BE)))(v21 - 136);
  *(v21 - 128) = v17;
  *(v21 - 120) = a16;
  *(v21 - 136) = (v18 ^ 0x6D8) + 1556366573 * ((193025081 - ((v21 - 136) | 0xB815439) + ((v21 - 136) | 0xF47EABC6)) ^ 0x909A882C) + 1051;
  v23 = (*(v20 + 8 * ((v18 ^ 0x6D8) + 1728)))(v21 - 136);
  return (*(v20 + 8 * ((49 * (*(v21 - 112) <= 11 * (v18 ^ 0x254u) + 798453419)) ^ v18 ^ 0x6D8)))(v23);
}

uint64_t sub_1A23E6470(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  *a4 = 0;
  *a5 = 0;
  a16 = (210068311 * (((&a15 ^ 0xDA97BCF9) - 144323490 - 2 * ((&a15 ^ 0xDA97BCF9) & 0xF765CC5E)) ^ 0xBF244F03)) ^ 0x48449A90;
  v18 = (*(v16 + 22400))(&a15);
  return (*(v16 + 8 * ((2872 * (a15 == v17)) ^ 0x384u)))(v18);
}

uint64_t sub_1A23E6518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int32x4_t a21, int32x4_t a22)
{
  v24 = v22 & 0xFFFFFFF8;
  v25 = (a6 - 649);
  a21 = vdupq_n_s32(0x3198BE60u);
  a22 = a21;
  v26 = *(v23 + 8 * (((v24 == 8) * ((a6 - 1037) ^ 0x20A)) ^ v25));
  return v26(a1, (v24 - 8), v24, v25, &a21, 8, v26, a8, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1A23E65A4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3)
{
  v8 = v5 - 1;
  *(a3 + v8) = *(v3 + v8);
  return (*(v7 + 8 * ((2734 * (v8 == (v6 ^ (v4 + 448)) - 1033)) ^ (a1 + v6 - 1412))))();
}

uint64_t sub_1A23E65E8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, unsigned int a7)
{
  v13 = *(v11 + 4 * (v9 + 1));
  v14 = *(v11 + 4 * (a1 + v9 + ((v7 + a6) | a7)) + 1584) ^ ((v13 & 0x7FFFFFFE | v8 & 0x80000000) >> 1);
  *(v11 + 4 * v9) = (v14 + v10 - (a4 & (2 * v14))) ^ *(a5 + 4 * (v13 & 1));
  return (*(v12 + 8 * (((4 * (v9 == 226)) | ((v9 == 226) << 9)) ^ v7)))();
}

uint64_t sub_1A23E665C@<X0>(int a1@<W0>, uint64_t a2@<X1>, char a3@<W4>, uint64_t a4@<X8>)
{
  v7 = v4 - 1;
  *(a4 + v7) = *(a2 + v7) + ~(((v5 ^ a3) - 48) & (2 * *(a2 + v7))) - 118;
  return (*(v6 + 8 * (((v7 == 0) * a1) ^ v5)))();
}

void sub_1A23E6C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  *(v30 - 144) = a13;
  *(v30 - 136) = v28 + 143681137 * ((2 * ((v30 - 144) & 0xC961698) - (v30 - 144) - 211162784) ^ 0x92535E28) + 590;
  *(v30 - 120) = a14;
  *(v30 - 112) = &a22;
  *(v30 - 128) = &a22;
  (*(v29 + 8 * (v28 + 2716)))(v30 - 144);
  *(v30 - 128) = &a22;
  *(v30 - 120) = a14;
  *(v30 - 144) = &a22;
  *(v30 - 112) = &a28;
  *(v30 - 104) = a13;
  *(v30 - 136) = (v28 + 1605) ^ (143681137 * ((((v30 - 144) | 0x6FD84756) - (v30 - 144) + ((v30 - 144) & 0x9027B8A8)) ^ 0xEE2F01E));
  (*(v29 + 8 * (v28 ^ 0xA78)))(v30 - 144);
  JUMPOUT(0x1A23EB154);
}

uint64_t sub_1A23E6DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, uint64_t a14, _BYTE *a15, char a16, int a17, unsigned int a18, int a19, char *a20, char *a21, _BYTE *a22, _BYTE *a23)
{
  a20 = &a17;
  a22 = a15;
  LODWORD(a21) = (v23 + 11) ^ (((-2 - ((&a18 ^ 0xA6099190 | 0x59644A6D) + (&a18 ^ 0x8240864 | 0xA69BB592))) ^ 0x30E8D143) * v24);
  v26 = (*(v25 + 8 * (v23 + 1960)))(&a18);
  return sub_1A23DA040(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_1A23E6F18@<X0>(unsigned int a1@<W0>, int a2@<W1>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16)
{
  v23 = v16 < a1;
  *(&a16 + a3) = *(v22 + v18) - ((2 * *(v22 + v18)) & 0x12) - 119;
  if (v23 == v18 + 1 > v19)
  {
    v23 = v18 + (a2 ^ (a1 + 79)) < v16;
  }

  return (*(v21 + 8 * ((v23 * v17) ^ v20)))();
}

uint64_t sub_1A23E6F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  a16 = ((2 * (&a14 & 0x43192C58) - &a14 - 1125723231) ^ 0x2E30EC05) * v16 + 789;
  a14 = v18;
  v20 = (*(v17 + 22888))(&a14);
  return (*(v17 + 8 * ((776 * (a15 == v19)) ^ 0x107u)))(v20);
}

uint64_t sub_1A23E7004@<X0>(int a1@<W1>, int a2@<W8>)
{
  v7 = *(v10 + 32);
  if ((a1 + a2 - 1) >= 0x7FFFFFFF)
  {
    v8 = -1516582788 - v2;
  }

  else
  {
    v8 = v2;
  }

  v11[1] = v8;
  *(v6 - 128) = (v3 - 433) ^ (((((2 * (v6 - 128)) | 0x9503B900) - (v6 - 128) - 1250024576) ^ 0x604AF6FA) * v5);
  *(v6 - 120) = v7;
  *(v6 - 112) = v11;
  return (*(v4 + 8 * (v3 + 804)))(v6 - 128);
}

uint64_t sub_1A23E70C4(__n128 a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7)
{
  v9 = (a6 + 4 * a7);
  *v9 = a1;
  v9[1] = a1;
  return (*(v8 + 8 * (((a3 == a7) * v7) ^ a5)))();
}

uint64_t sub_1A23E7160@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = v6 + 32;
  v11 = (v10 ^ v8 ^ v4) + v3;
  v12 = *(a2 + v11 - 15);
  v13 = *(a2 + v11 - 31);
  v14 = a3 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v5 == v10) * a1) ^ v7)))();
}

uint64_t sub_1A23E7168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  v36 = v33 ^ 0xB86;
  *(v35 - 144) = v32;
  *(v35 - 128) = v34;
  *(v35 - 136) = (v33 ^ 0xB86) + 896639297 * ((v35 + 246253336 - 2 * ((v35 - 144) & 0xEAD87A8)) ^ 0x1A0611D0) + 178;
  (*(v31 + 8 * (v33 ^ 0x3AC)))(v35 - 144);
  v37 = v33 ^ 0xA75;
  v38 = a27;
  v39 = (v33 ^ 0xB86) + 953;
  *(v35 - 144) = &a24;
  *(v35 - 112) = &a24;
  *(v35 - 104) = &a26;
  *(v35 - 128) = v38;
  *(v35 - 120) = v34;
  *(v35 - 136) = v39 ^ (143681137 * ((v35 + 703938161 - 2 * ((v35 - 144) & 0x29F53F01)) ^ 0x48CF8849));
  v40 = (v33 ^ 0xB86) + 1948;
  (*(v31 + 8 * v40))(v35 - 144);
  *(v35 - 144) = &a24;
  *(v35 - 128) = &a24;
  *(v35 - 120) = v34;
  *(v35 - 112) = a14;
  *(v35 - 104) = &a26;
  *(v35 - 136) = v39 ^ (143681137 * ((v35 - 2104509530 - 2 * ((v35 - 144) & 0x828FBC36)) ^ 0xE3B50B7E));
  (*(v31 + 8 * v40))(v35 - 144);
  *(v35 - 128) = a19;
  *(v35 - 144) = &a24;
  *(v35 - 136) = (v36 - 1197043235) ^ (143681137 * (((v35 - 144) & 0x7A2EEC74 | ~((v35 - 144) | 0x7A2EEC74)) ^ 0xE4EBA4C3));
  (*(v31 + 8 * (v36 + 2117)))(v35 - 144);
  *(v35 - 136) = v36 + 896639297 * ((((v35 - 144) ^ 0x331EA4AE | 0x5401F83F) - ((v35 - 144) ^ 0x331EA4AE) + (((v35 - 144) ^ 0x331EA4AE) & 0xABFE07C0)) ^ 0x73B4CAE9) + 178;
  *(v35 - 128) = &a31;
  *(v35 - 144) = &a24;
  (*(v31 + 8 * (v36 ^ 0x82A)))(v35 - 144);
  *(v35 - 144) = (v36 + 810) ^ (50899313 * ((((2 * (v35 - 144)) | 0xA3F99376) - (v35 - 144) + 771962437) ^ 0xFB37E3C1));
  *(v35 - 136) = &a31;
  *(v35 - 128) = &a24;
  v41 = (*(v31 + 8 * (v36 ^ 0x801)))(v35 - 144);
  return (*(v31 + 8 * ((((((v36 - 689) ^ (a18 == 0)) & 1) == 0) * (v37 - 602)) ^ (v36 + 1000))))(v41);
}

void sub_1A23E7724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, _DWORD *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  v43 = (v40 + 21925756) | 0x2020004Du;
  v44 = a5 ^ (a7 | (a38 << 32));
  v45 = a4 ^ 0x93A3AFF322FB2807;
  v46 = ((a4 ^ 0x93A3AFF322FB2807) + 0x61FAEE9F353A49F3 - 2 * ((a4 ^ 0x93A3AFF322FB2807) & 0x61FAEE9F353A49FBLL ^ a4 & 8)) ^ v41;
  v47 = ((a4 ^ 0x93A3AFF322FB2807) - 2 * ((a4 ^ 0x93A3AFF322FB2807) & 0x3CD17026505AC56DLL ^ a4 & 8) + 0x3CD17026505AC565) ^ a3;
  v48 = v44 & 0x55DA4DD849C708ACLL ^ v47 ^ 0xFAF8B76C8F017684 ^ (v46 ^ v43 ^ 0xC221B67661665C31) & (v44 ^ 0x516BD7CB44E356E7) ^ 0xEA7D3CEE13DB5F38;
  v49 = __ROR8__(__ROR8__(v48, 48) ^ 0xF88FAA3AC130441ALL, 16);
  v50 = v49 ^ 0xA4CC00E977BBF715 ^ ((v49 ^ 0xA4CC00E977BBF715) << 23) ^ (((v49 >> 41) ^ (v49 >> 7) ^ 0xA0B88367515694B9) & (((v49 ^ 0xA4CC00E977BBF715) << 57) ^ 0x6FFFFFFFFFFFFFFFLL) | ((v49 ^ 0xA4CC00E977BBF715) << 57) & 0x5E00000000000000);
  v51 = a3 ^ 0x1E8F277FDF5E7BDLL ^ ((v46 ^ 0x1E5AD358FF0B00A4) & (v47 ^ 0x507489370FE897BLL) | (v47 ^ 0xFAF8B76C8F017684) & 0x765ED709093B338BLL);
  if (((a4 ^ 0x93A3AFF322FB2807) & 0x82EE1687ACCADB62) == 0)
  {
    v45 = v47 ^ 0xFAF8B76C8F017684;
  }

  v52 = v45 & (a3 ^ 0x39D638B520A44C1ELL);
  v53 = v44 ^ 0xAE51D11D84D4AB60;
  v54 = v39 ^ v44 ^ 0xAE51D11D84D4AB60;
  v55 = v52 ^ v54 ^ 0x1FA804325FF00418;
  if (v46 == 0x68040451F630332FLL)
  {
    v55 = v54 ^ 0x6057FBCDA00FFBE7;
  }

  v56 = (v52 ^ v54 ^ 0x135F5BF4F2D8E457) + 2 * (v52 & (v54 ^ 0x135F5BF4F2D8E457)) - 2 * ((v55 ^ 0x7308A03952D71FB0) & v52);
  v57 = (-v56 ^ (v51 - (v56 ^ v51)) ^ 0xB9795D1751FA59B9 ^ (v56 - ((2 * v56) & 0x72F2BA2EA3F4B372) - 0x4686A2E8AE05A647)) + v51;
  v58 = v57 ^ __ROR8__(v57, 17) ^ (v57 << 54) ^ (v57 >> 10);
  v59 = v54 & 0xEC6777B091849412 ^ (v54 ^ 0x135F5BF4F2D8E457) & (v44 ^ 0x42F35F842A983D0ALL) ^ 0x9625B7D149BB716DLL ^ v46;
  *(&v60 + 1) = v48 ^ v59 ^ 0x83FB7EBB897BB434;
  *&v60 = v48 ^ v59;
  v61 = v50 ^ 0xDA960BDEEBB4F923 ^ v58 ^ 0x2CE9E8463A8D53DALL;
  v62 = *(&v60 + 1) ^ __ROR8__(*(&v60 + 1), 28) ^ (v60 >> 19) ^ v50 ^ 0xDA960BDEEBB4F923;
  v63 = v54 & 0x20376E627AEA1205 ^ v53 ^ (v54 ^ 0xECA0A40B0D271BA8) & (a3 ^ 0xE61EA928A5B1A1E4) ^ v59;
  *(&v60 + 1) = v63 ^ 0x96D3468C3E4E5BE1;
  *&v60 = v63;
  v64 = v63 ^ 0x96D3468C3E4E5BE1 ^ __ROR8__(v63 ^ 0x96D3468C3E4E5BE1, 61) ^ (v60 >> 39);
  v65 = __ROR8__(__ROR8__(v64 ^ 0xB2E9C78B38FE53E0 ^ (v56 >> 6) ^ (v56 >> 1) ^ v56 ^ 0x6C7202DAC3C1B069 ^ ((v56 ^ 0x6C7202DAC3C1B069) << 58) ^ (((v56 ^ 0x6C7202DAC3C1B069) << 63) | 0x2AF1A7413A467E58) ^ 0x5AD0F1253C122489, 31) ^ 0xC6572CCB51B506D4, 33);
  v66 = ((v50 ^ 0x341ED173E14B8BDELL) & ~v58 | v58 & 0x3501B6BB763D66C3) ^ v65;
  *(&v60 + 1) = v61 & 0x263039AF99BF9E9 ^ v58 ^ 0x2CE9E8463A8D53DALL ^ (v61 ^ 0x89F7BAFB9B0B81BLL) & (v62 ^ 0x757E3E77FE083D8FLL) ^ v66 ^ 0x21FAFB4D2CF6C775 ^ 0xC4569D82E6A9E008;
  *&v60 = v61 & 0x263039AF99BF9E9 ^ v58 ^ 0x2CE9E8463A8D53DALL ^ (v61 ^ 0x89F7BAFB9B0B81BLL) & (v62 ^ 0x757E3E77FE083D8FLL) ^ v66 ^ 0x21FAFB4D2CF6C775;
  v67 = v60 >> 17;
  *&v60 = __ROR8__(*(&v60 + 1), 10);
  v68 = v61 ^ v62 & 0x2D7E1954CA9C9A5DLL ^ (v62 ^ 0x88E2C212F86C3B99) & (v64 ^ 0xD046349F165654B2) ^ 0x62CFE934D516D0D2;
  v69 = (v68 & 0xF2F0F93CF1701AFDLL ^ 0xF40C98054429A76BLL) & (v68 & 0xD0F06C30E8FE502 ^ 0xF2F0F93FF77E3AFDLL) | v68 & 0x90306C20A864000;
  v70 = __ROR8__(v69 ^ 0x31C0A8675C00CBB3, 7);
  v71 = ((v67 ^ v60 ^ 0x308A45BA1AD665F5) - ((2 * (v67 ^ v60 ^ 0x308A45BA1AD665F5)) & 0xE8E77AC35162EC5CLL) + 0x7473BD61A8B1762ELL) ^ *(&v60 + 1);
  *&v60 = __ROR8__(v69 ^ 0x31C0A8675C00CBB3, 41);
  v72 = ((v70 ^ v60 ^ 0x96ED144B05E6E093) - ((2 * (v70 ^ v60 ^ 0x96ED144B05E6E093)) & 0x8C6AC3DD85FA2360) - 0x39CA9E113D02EE50) ^ v69 ^ 0x31C0A8675C00CBB3;
  v73 = v64 & 0xBF3D1410E63A5A50 ^ v62 ^ 0xAD71277A368BFCCDLL ^ (v65 ^ 0x35863752ACBC56A5) & (v64 ^ 0x2C7D23423353110);
  v74 = v69 ^ v73 ^ ((v69 ^ v73 ^ 0xABCB29D00B5C331FLL) >> 19) ^ ((v69 ^ v73 ^ 0xABCB29D00B5C331FLL) >> 28) ^ ((v69 ^ v73 ^ 0x960D1D8ABB8EBDBCLL) << 36) ^ ((v69 ^ v73 ^ 0x960D1D8ABB8EBDBCLL) << 45) ^ 0xF3608FA3DD3C31C8;
  *(&v60 + 1) = v73 ^ v64 ^ 0xB2E9C78B38FE53E0;
  *&v60 = v73 ^ v64;
  v75 = (v65 ^ 0x7544DCBDB579F30ALL) & (v58 ^ 0xA92117B279268E93) ^ v65 & 0xA92117B279268E93 ^ __ROR8__((v60 >> 54) ^ 0xEF5AA6124BB40C7DLL, 10);
  LOBYTE(v62) = *(v42 + ((v75 >> 61) ^ 0x55));
  v76 = (v62 ^ ((v62 ^ 0x3C) - ((2 * (v62 ^ 0x3C) + 2) & 0xE8) - 11) ^ 0x37 ^ ((v62 ^ (57 - (v62 ^ 0xFA)) ^ 0x33 ^ ((v62 ^ 0x3C) - ((2 * (v62 ^ 0x3C) + 2) & 0x1E) + 16)) + 1)) - 62;
  v77 = v76 ^ (v75 >> 39) ^ v75 ^ 0xC64D80987CEA6D83 ^ (8 * (v75 ^ 0xC64D80987CEA6D83)) ^ ((v75 ^ 0xC64D80987CEA6D83) << 25);
  v78 = (v72 - ((2 * v72) & 0x9D53A79114961C66) + 0x4EA9D3C88A4B0E33) ^ v74;
  v79 = v71 ^ 0x147D2CDEEA4;
  v80 = v72 ^ v71 ^ 0x147D2CDEEA4;
  v81 = (~(2 * v78) + v78) & (v77 ^ 0xFBF059A5D1015F27) ^ v80;
  v82 = ((v81 ^ 0x26974B18501E2B14) >> 7) ^ ((v81 ^ 0x26974B18501E2B14) >> 41) ^ ((v81 ^ 0x26974B18501E2B14) << 23) ^ (0x200000000000001 * (v81 ^ 0x26974B18501E2B14) - (((v81 ^ 0x26974B18501E2B14) << 58) & (2 * (v81 ^ 0x26974B18501E2B14))));
  v83 = (v66 >> 1) ^ 0x687FF1334AF25506;
  v84 = v66 ^ (~v66 << 58);
  v85 = v84 ^ 0x1CFFE26695E4AA0CLL;
  if ((v83 & 0x100000000000 & v84) != 0)
  {
    v86 = -(v83 & 0x100000000000);
  }

  else
  {
    v86 = v83 & 0x100000000000;
  }

  v87 = ((v66 >> 6) | ((v66 ^ 0x21FAFB4D2CF6C775) << 63)) ^ v83 & 0xFFFFEFFFFFFFFFFFLL ^ (v86 + v85);
  v88 = ((v72 & (v71 ^ 0xFFFFFEB82D32115BLL)) - ((2 * (v72 & (v71 ^ 0xFFFFFEB82D32115BLL))) & 0x630EB63D29C31750) - 0x4E78A4E16B1E7458) ^ v77 ^ v87;
  if (v76)
  {
    v89 = (v79 - ((2 * v79) & 0x9D53A79114961C66) + 0x4EA9D3C88A4B0E33) ^ v74;
  }

  else
  {
    v89 = v78;
  }

  v90 = v89 & ~v80;
  v91 = v88 ^ 0x6F46E752F97AB46DLL;
  v92 = v71 ^ v90 ^ 0xD502B74FA430D7D8 ^ v88 ^ 0x6F46E752F97AB46DLL;
  v93 = __ROR8__(v92, 10);
  v94 = (v92 ^ v93 ^ (v92 >> 17)) + (v92 << 47) - 2 * ((v92 ^ v93 ^ (v92 >> 17)) & (v92 << 47));
  v95 = v88 ^ 0xB06117DE92FFFE2BLL;
  v96 = (((2 * (0x34CDB152F4A04500 - ((v88 ^ 0xB06117DE92FFFE2BLL) << 58))) & 0x9000000000000200) + ((0x34CDB152F4A04500 - ((v88 ^ 0xB06117DE92FFFE2BLL) << 58)) ^ 0xCB324EAD0B5FBB00)) ^ ((v88 ^ 0xB06117DE92FFFE2BLL) << 58) ^ ((v88 ^ 0xB06117DE92FFFE2BLL) - ((((v88 ^ 0xB06117DE92FFFE2BLL) << 58) & 0xF800000000000000 ^ (v88 ^ 0xB06117DE92FFFE2BLL) & 0xF9BFE541A2368FBELL | (v88 ^ 0xB06117DE92FFFE2BLL) & 0x6401ABE5DC97041) ^ ((v88 ^ 0xB06117DE92FFFE2BLL) << 58) & 0x400000000000000));
  v97 = v77 & 0x24D74C69FCA12F75 ^ 0x40704482CA02050 ^ (v77 ^ 0x40FA65A2EFEA0D8) & (v87 ^ 0xA794B3E066F6BDDDLL);
  v98 = (v78 ^ -v78 ^ (v97 - (v78 ^ v97))) + v97;
  v99 = __ROR8__(__ROR8__(__ROR8__(__ROR8__(v77 ^ (((v77 ^ v87 ^ 0x874C59D3B4A93270) & v79) - ((2 * ((v77 ^ v87 ^ 0x874C59D3B4A93270) & v79)) & 0x296D7DEE50F7D694) - 0x6B494108D78414B6) ^ v98 ^ 0x5D3E1F6A073966D1, 21) ^ 0x8851649EEBDF1E19, 24) ^ 0x52EBDEC6E9CFA14CLL, 40) ^ 0xC6E9CFA14C52EBDELL, 43);
  v100 = v99 ^ 0x93DD7BE3C3310A2CLL ^ ((v99 ^ 0x93DD7BE3C3310A2CLL) >> 39) ^ (((8 * (v99 ^ 0x93DD7BE3C3310A2CLL)) ^ ((v99 ^ 0x93DD7BE3C3310A2CLL) << 25)) & 0xFFFFFFFFFFFFFFF8 | ((v99 ^ 0x93DD7BE3C3310A2CLL) >> 61));
  v101 = (v96 + v95) ^ (v91 << 63) ^ __ROR8__((v95 >> 2) & 0x3FFFFFFFFFFFFFF0 ^ __ROR8__(v100, 60) ^ 0xECB19F7A9D6DC488, 4) ^ 0x8ECB19F7A9D6DC48;
  v102 = v101 & 0xA8F512753D8F931ELL ^ (v95 >> 1) & 0x28F512753D8F931ELL | (v101 ^ (v95 >> 1)) & 0x570AED8AC2706CE1;
  v103 = v102 ^ v82 & ~v94;
  *(&v104 + 1) = v103;
  *&v104 = v103 ^ 0xD3DA1E3360BF843ALL;
  v105 = ((v104 >> 1) ^ v103 ^ 0xD3DA1E3360BF843ALL) & 0x8359E977A142CE31 ^ ((v103 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x8000000000000000 | ((v104 >> 1) ^ v103 ^ 0xD3DA1E3360BF843ALL) & 0x7CA616885EBD31CELL ^ ((v103 ^ 0xD3DA1E3360BF843ALL) << 58) & 0x7C00000000000000;
  *(&v104 + 1) = v103;
  *&v104 = v103 ^ 0xD3DA1E3360BF843ALL;
  v106 = v81 ^ 0x6E04C15915AB860ALL ^ v98 ^ __ROR8__(v81 ^ 0x6E04C15915AB860ALL ^ v98, 19) ^ ((v81 ^ 0x6E04C15915AB860ALL ^ v98) << 36) ^ ((v81 ^ 0x6E04C15915AB860ALL ^ v98) >> 28) ^ v82;
  v107 = ((v102 ^ v100) + (v102 | ~v100) + 1) ^ v106;
  v108 = v100 ^ v94 & ~v102 ^ 0x425764BB5877DA25 ^ v107;
  v109 = v108 ^ (v108 >> 61) ^ (v108 >> 39) ^ (8 * v108) ^ (v108 << 25);
  v110 = v94 ^ v82;
  v111 = v100 & ~v106 ^ v94 ^ v82;
  v112 = v111 ^ 0xFD;
  v113 = v111 ^ 0x70C7A8D3F3643DFDLL ^ __ROR8__(v111 ^ 0x70C7A8D3F3643DFDLL, 7) ^ ((v111 ^ 0x70C7A8D3F3643DFDLL) >> 41) ^ ((v111 ^ 0x70C7A8D3F3643DFDLL) << 23);
  v114 = v111 ^ 0x97F6A7E5F6E8F58ALL ^ v107 ^ __ROR8__(v111 ^ 0x97F6A7E5F6E8F58ALL ^ v107, 19) ^ ((v111 ^ 0x97F6A7E5F6E8F58ALL ^ v107) << 36) ^ ((v111 ^ 0x97F6A7E5F6E8F58ALL ^ v107) >> 28);
  *&v104 = __ROR8__((v104 >> 9) & 0xE07FFFFFFFFFFFFFLL ^ __ROR8__(v109 ^ v105, 3) ^ 0x55413C453664FDCDLL, 61);
  v115 = ((v114 | v113) ^ v113 & v114) & 0x2D23D578E308995FLL | (v114 ^ v113) & 0xD2DC2A871CF766A0;
  v116 = v106 & ~v110;
  v117 = (v104 ^ 0xAA09E229B327EE6ALL) & ~v109 ^ v115;
  v118 = v94 ^ 0x44C9D571A5C4A51CLL ^ v116 ^ v103 ^ ((v94 ^ 0x44C9D571A5C4A51CLL ^ v116 ^ v103) >> 10) ^ ((v94 ^ 0x44C9D571A5C4A51CLL ^ v116 ^ v103) << 47) ^ ((v94 ^ 0x44C9D571A5C4A51CLL ^ v116 ^ v103) << 54) ^ ((v94 ^ 0x44C9D571A5C4A51CLL ^ v116 ^ v103) >> 17);
  v119 = ((v117 ^ v109) + ((v104 ^ 0x55F61DD64CD81195) & v118) - 2 * ((v117 ^ v109) & (v104 ^ 0x55F61DD64CD81195) & v118)) ^ 0x6005BE354A5BB0B2;
  v120 = v119 >> (v58 & 0x3D) >> (v58 & 0x3D ^ 0x3D);
  v121 = (8 * v119) ^ (v119 >> 39) ^ ((v119 ^ (v119 << 25)) & 0xF21553F3FD140018 ^ v120 & 0x18 | (v119 ^ (v119 << 25)) & 0xDEAAC0C02EBFFE7 ^ v120 & 0xE7);
  v122 = v109 & ~v115 ^ v118 ^ v113;
  v123 = v122 ^ 0x2DB5B6AF87F64351 ^ ((v122 ^ 0x2DB5B6AF87F64351) << 23) ^ ((v122 ^ 0x2DB5B6AF87F64351) >> 7) ^ (((v122 ^ 0x2DB5B6AF87F64351) >> 41) | ((v122 ^ 0x2DB5B6AF87F64351) << 57));
  v124 = v122 ^ 0x93C23431B76D41FLL ^ v117;
  v125 = (v124 ^ (v124 >> 28)) + (v124 >> 19) - 2 * ((v124 ^ (v124 >> 28)) & (v124 >> 19));
  v126 = v124 << 36;
  v127 = v125 ^ (v124 << 45);
  v128 = v115 & ~(v118 ^ v113);
  v129 = v127 ^ v126;
  v130 = v104 ^ 0xAA09E229B327EE6ALL ^ v113 & ~v118;
  v131 = v127 ^ v126 ^ v123;
  v132 = v118 ^ 0xF374A001D380BDC2 ^ v128 ^ v130 ^ ((v118 ^ 0xF374A001D380BDC2 ^ v128 ^ v130) >> 10) ^ ((v118 ^ 0xF374A001D380BDC2 ^ v128 ^ v130) << 47) ^ ((v118 ^ 0xF374A001D380BDC2 ^ v128 ^ v130) << 54) ^ ((v118 ^ 0xF374A001D380BDC2 ^ v128 ^ v130) >> 17);
  v133 = v132 ^ v123;
  v134 = v121 & ~v131 ^ v133;
  v135 = v130 ^ 0x6DC4FB0BD4FFFF44;
  *(&v104 + 1) = v130;
  *&v104 = v130 ^ 0x6DC4FB0BD4FFFF44;
  v136 = (v104 >> 1) ^ v130 ^ 0x6DC4FB0BD4FFFF44 ^ ((v130 ^ 0x6DC4FB0BD4FFFF44) << 58) ^ v121;
  v137 = v135 >> 6;
  if (v126 == v127)
  {
    v138 = v137;
  }

  else
  {
    v138 = ~(v137 ^ v136);
  }

  v139 = v136 + v137 - 2 * (v138 & v136);
  v140 = v139 ^ (((~v132 | 0xFFFFFFFFEFFFFFFFLL) - (v132 & 0x4000000000)) ^ v132 & 0xFFFFFFBFEFFFFFFFLL) & v133;
  v141 = v133 == -1;
  v142 = __ROR8__(((v131 << (v125 & 0x2B) << (v125 & 0x2B ^ 0x2B)) + (v131 >> 21)) ^ __ROR8__(v139 & ~v121, 21) ^ 0x6D12C2B6EED373A6, 43);
  v143 = v132 & ~v139 ^ v121 ^ v142;
  v144 = v134 ^ 0x5035F38BF1002A3ALL ^ v142;
  v145 = v144 ^ (v144 >> 19);
  v146 = v145 & 0xD99EEE0927173347 ^ (v144 << 45) & 0xD99EE00000000000 | v145 & 0x266111F6D8E8CCB8 ^ (v144 << 45) & 0x2661000000000000;
  v147 = v146 + v145 - 2 * v146;
  v148 = v143 ^ 0xE013161F571CC4C5 ^ ((v143 ^ 0xE013161F571CC4C5) >> 39) ^ (8 * (v143 ^ 0xE013161F571CC4C5));
  v149 = v148 ^ (((v143 ^ 0xE013161F571CC4C5) >> 61) | (v143 << 25));
  v150 = (((v144 << 45) ^ (0xFFFFE00000000000 * v144) ^ v147) + v145) ^ (v144 >> 28);
  v151 = v150 & 0x78E134634F73AA70 ^ (v144 << 36) & 0x78E1346000000000 | v150 & 0x871ECB9CB08C558FLL ^ (v144 << 36) & 0x871ECB9000000000;
  v152 = v151 + 0x61FAEE9F353A49F3 - 2 * (v151 & 0x61FAEE9F353A49FFLL ^ v150 & 0xC);
  v38[65] = v152 ^ 0xF3;
  v153 = *(a35 + ((69 * ((v152 ^ 0x61FAEE9F353A49F3uLL) >> (v150 & 8) >> (v150 & 8 ^ 8))) ^ 0x3DLL)) - 18;
  LOBYTE(v150) = (((v153 ^ 0x57) + v153 - 2 * (v153 ^ 0x57)) ^ 0xFE) + v153;
  v38[54] = ((v148 ^ (((v143 ^ 0xE013161F571CC4C5) >> 61) | (v143 << 25))) >> 24) ^ 0x8A;
  v38[28] = BYTE2(v152) ^ 0x3A;
  v38[41] = (v150 >> 2) | (v150 << 6);
  v154 = (v152 ^ 0x61FAEE9F353A49F3uLL) >> (v112 & 0x20) >> (v112 & 0x20 ^ 0x20u);
  v38[35] = BYTE1(v148);
  v155 = v129 ^ v132;
  if (v141)
  {
    v156 = 0;
  }

  else
  {
    v156 = v155;
  }

  v38[21] = BYTE2(v148);
  v157 = v140 - ((2 * v140) & 0x5A47EBDAAC1EB792);
  v38[58] = v154;
  v38[17] = BYTE4(v149) ^ 0x89;
  v38[5] = BYTE3(v152) ^ 0x35;
  v38[47] = BYTE5(v152) ^ 0xEE;
  v38[14] = HIBYTE(v152) ^ 0x61;
  v38[48] = BYTE6(v152) ^ 0xFA;
  v38[16] = (v149 ^ 0x3EAE39898A000000) >> (v143 & 0x28) >> (v143 & 0x28 ^ 0x28);
  v158 = v157 + 0x2D23F5ED560F5BC9;
  v159 = v157 - 0x5BDA183C59819C5ELL;
  v160 = 0x88FE0E29AF90F827;
  if (v158 < 0x88FE0E29AF90F827)
  {
    v159 = v158;
    v160 = 0;
  }

  if (v159)
  {
    v161 = v158;
  }

  else
  {
    v161 = v160;
  }

  *(&v162 + 1) = v161;
  *&v162 = v158;
  v38[6] = v149;
  v163 = *(v42 + (BYTE6(v149) ^ 0xF9));
  v164 = (v162 >> 1) ^ v158 ^ (v161 << 58) ^ (v161 >> 6);
  v38[10] = BYTE1(v164);
  v38[18] = BYTE4(v164);
  v38[25] = BYTE2(v164);
  v38[42] = HIBYTE(v149) ^ 0x3E;
  v165 = v132 ^ v156 & v131 ^ 0x29E1AB0124FF49E7 ^ v140;
  *&v162 = __ROR8__(v165, 10);
  v166 = (v165 ^ v162 ^ (v165 << 47)) + (v165 >> 17) - 2 * ((v165 ^ v162 ^ (v165 << 47)) & (v165 >> 17));
  v38[12] = BYTE5(v164);
  v38[23] = BYTE6(v164);
  v38[44] = v164;
  v38[24] = BYTE3(v164);
  v38[30] = (v163 ^ 0xFA) - 119;
  v38[62] = HIBYTE(v164);
  v38[19] = (v165 ^ v162) + (v165 >> 17) - 2 * ((v165 ^ v162) & (v165 >> 17));
  LOBYTE(v165) = *(a37 + ((((v165 ^ v162) + (v165 >> 17) - 2 * ((v165 ^ v162) & (v165 >> 17))) >> 8) ^ 0x27) + 279);
  v38[8] = BYTE3(v166);
  v38[33] = BYTE2(v166);
  v38[4] = (v165 ^ BYTE1(v166) ^ 0x2D ^ ((BYTE1(v166) ^ 0x2D) + 72) ^ 0x41) + 15;
  v167 = *(a36 + (((v166 >> 28) & 0xF0 | (v166 >> 36) & 0xF) ^ 0x5C));
  v168 = v134 ^ __ROR8__(v134 ^ 0x4734313A1F2B2857, 41) ^ ((v134 ^ 0x4734313A1F2B2857) >> 7);
  v38[46] = HIBYTE(v166);
  v38[43] = BYTE6(v166);
  v38[38] = BYTE5(v166);
  v38[31] = ((v167 >> 5) | (8 * v167)) ^ 0xC1;
  LOBYTE(v166) = *(v42 + ((((((4 * v168) | (v168 >> 6)) ^ 0xA) >> 2) | ((((4 * v168) | (v168 >> 6)) ^ 0xA) << 6)) ^ 0x82));
  v38[55] = BYTE4(v168) ^ 0x3A;
  v38[34] = BYTE3(v168) ^ 0x1F;
  v38[32] = BYTE1(v168) ^ 0x28;
  v169 = v168 ^ ((v134 ^ 0x4734313A1F2B2857) << 57);
  v38[15] = (v166 ^ 0xFA) - 119;
  v38[7] = (v169 ^ 0x4734313A1F2B2857uLL) >> (v61 & 0x10 ^ 0x10) >> (v61 & 0x10);
  v38[61] = BYTE5(v168) ^ 0x31;
  v38[56] = (*(v42 + (BYTE6(v168) ^ 0x63)) ^ 0xFA) - 119;
  v38[51] = HIBYTE(v169) ^ 0x47;
  *a33 = a38 + 1;
  JUMPOUT(0x1A23E8BACLL);
}

uint64_t sub_1A23E8CFC@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v14 = (v8 & a1 ^ a2) + v5 + (*(*(v13 + 8) + 4 * v7) ^ v9) - (*(*(v12 + 8) + 4 * v7) ^ v9);
  *(*(a4 + 8) + 4 * v7) = v14 + v9 - (v11 & (2 * v14));
  return (*(v10 + 8 * (((v7 + 1 == v4) * a3) ^ v6)))();
}

uint64_t sub_1A23E8E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17, unsigned int a18)
{
  v20 = 1556366573 * ((&a15 & 0x95B13826 | ~(&a15 | 0x95B13826)) ^ 0xEAAE433);
  a18 = 1844776156 - v20;
  LODWORD(a15) = 2027 - v20;
  HIDWORD(a15) = v20 + 295473084;
  a16 = v20 ^ 0x661FAE48;
  (*(v19 + 22792))(&a15);
  a15 = &a12;
  a17 = ((&a15 & 0x7EDD9813 | ~(&a15 | 0x7EDD9813)) ^ 0x13F45848) * v18 + 789;
  v21 = (*(v19 + 22888))(&a15);
  return (*(v19 + 8 * ((114 * (((a16 == 1863271989) ^ 0xE5) & 1)) ^ 0xA1u)))(v21);
}

void sub_1A23E8FE0()
{
  v4 = *(v0 + 24);
  **(v0 + 8) = *v1;
  *v4 = *v2 + ((v3 + 1550) ^ 0x52D1291C) - ((2 * *v2) & 0xA5A2466E);
  *v0 = 1863271989;
}

void sub_1A23E90A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10)
{
  v13 = ((v11 ^ 0x2574751D) - 467247720) ^ v11 ^ ((v11 ^ 0xA9A1E3C0) + 1760807755) ^ ((v11 ^ 0xFFEFDFFF) + 1052637046) ^ (((v12 - 1152) ^ 0x8CC5B7A2) + (v11 ^ 0x4D979E57));
  *a10 = (HIBYTE(v13) ^ 0x3E) - ((2 * (HIBYTE(v13) ^ 0x3E)) & 0x12) - 119;
  a10[1] = (BYTE2(v13) ^ 0xAD) - ((2 * (BYTE2(v13) ^ 0xAD)) & 0x12) - 119;
  a10[2] = (BYTE1(v13) ^ 0xD7) - ((2 * (BYTE1(v13) ^ 0xD7)) & 0x12) - 119;
  a10[3] = ((v11 ^ 0x1D) - 104) ^ v11 ^ ((v11 ^ 0xC0) + 75) ^ (117 - v11) ^ (((v12 + 0x80) ^ 0xA2) + (v11 ^ 0x57)) ^ 0xFC;
  v14 = v10 - ((2 * v10) & 0x2A1B60BE0D68568CLL) + 0x150DB05F06B42B46;
  a10[4] = (HIBYTE(v14) ^ 0x15) - ((2 * (HIBYTE(v14) ^ 0x15)) & 0x12) - 119;
  a10[5] = (BYTE6(v14) ^ 0xD) - ((2 * (BYTE6(v14) ^ 0xD)) & 0x12) - 119;
  a10[6] = (BYTE5(v14) ^ 0xB0) - ((2 * BYTE5(v14)) & 0x12) - 119;
  a10[7] = (BYTE4(v14) ^ 0x5F) - ((2 * (BYTE4(v14) ^ 0x5F)) & 0x12) - 119;
  a10[8] = (((v10 - ((2 * v10) & 0xD68568C) + 112470854) >> 24) ^ 6) - ((2 * ((v10 - ((2 * v10) & 0xD68568C) + 112470854) >> 24)) & 0x12) - 119;
  a10[9] = (BYTE2(v14) ^ 0xB4) + (~(2 * BYTE2(v14)) | 0xED) - 118;
  a10[10] = (BYTE1(v14) ^ 0x2B) - 2 * ((BYTE1(v14) ^ 0x2B) & 0xD ^ BYTE1(v14) & 4) - 119;
  a10[11] = v14 ^ 0xCF;
  JUMPOUT(0x1A23C62B0);
}

uint64_t sub_1A23E9280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, int a19, int a20)
{
  v25 = *(v20 + 16);
  v26 = *(v20 + 40);
  v27 = 843532609 * (&a13 ^ 0x10BC775E);
  a17 = (v24 - 1365 + 1591951115 * v22 - 1777266583) ^ v27;
  a18 = (a12 ^ 0xFFDFBDFF) - v27 + ((2 * a12) & 0xFFBF7BFE) + 1786633792;
  a20 = (v24 - 1776825150) ^ v27;
  a15 = a10;
  a16 = v26;
  a13 = v25;
  a14 = a10;
  v28 = (*(v23 + 8 * (v24 + 1043)))(&a13);
  return (*(v23 + 8 * ((19 * (a19 != v21)) ^ v24)))(v28);
}

uint64_t sub_1A23E97E4()
{
  v3 = v0 + ((2 * v1) ^ 0x28u) - 2579;
  v5 = v3 > 0xF || ((v0 - 1) & 0xFu) < (v3 & 0xF);
  return (*(v2 + 8 * ((v5 * ((125 * (v1 ^ 0x509)) ^ 0x9F9)) ^ v1)))();
}

uint64_t sub_1A23E983C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * (((v6 != 0) * (((a2 + v4 + 411) | 0xC3) + 28)) ^ (a2 + v4 + 1039))))();
}

uint64_t sub_1A23E9888(uint64_t a1, uint64_t a2, int a3)
{
  v10 = v6 + 32;
  v11 = (v10 ^ a2 ^ ((v5 + 99) | v8)) + v4;
  v12 = *(v3 + v11 - 15);
  v13 = *(v3 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v9 + 8 * (((v7 == v10) * a3) ^ (v5 + 1053))))();
}

uint64_t sub_1A23E9890()
{
  v4 = v2 < 0x734C570B;
  if (v4 == (v1 + 1) > 0xFFFFFFFF8CB3A8F4)
  {
    v4 = v1 + 1934382859 + (v0 - 294) - 112 < v2;
  }

  return (*(v3 + 8 * ((v4 * (v0 - 162)) ^ (v0 + 2270))))();
}

uint64_t sub_1A23E9EB8()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_1A23E9EE0(uint64_t a1, int a2)
{
  v5 = (a2 ^ 0x47C) - 195;
  v6 = v4 > 1043625647;
  if (v6 == v2 - 285334254 < (((a2 ^ 0x47C) - 2091134912) & 0x7CA42FBF ^ 0xC1CB8C47))
  {
    v6 = v2 - 285334254 < (v5 ^ 0x41CB8D04) + v4;
  }

  return (*(v3 + 8 * ((196 * v6) ^ v5)))(1043625647);
}

uint64_t sub_1A23E9F84@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unsigned int a39)
{
  v42 = *(&a27 + a2 + 72);
  v43 = (a2 ^ 0x7EFFE75F ^ (v40 - 423973025) & 0x19454B7E) + ((2 * a2) & 0xFDFFCEE8) + v39;
  *(a1 + v43) = (HIBYTE(v42) ^ 0x3B) - ((2 * (HIBYTE(v42) ^ 0x3B)) & 0x12) - 119;
  *(a1 + v43 + 1) = (BYTE2(v42) ^ 0xD5) - ((2 * (BYTE2(v42) ^ 0xD5)) & 0x12) - 119;
  *(a1 + v43 + 2) = (BYTE1(v42) ^ 0x70) - ((v42 >> 7) & 0x12) - 119;
  *(a1 + v43 + 3) = v42 ^ 0xF9;
  return (*(v41 + 8 * ((62 * (a2 + 4 < a39)) ^ v40)))();
}

uint64_t sub_1A23EA234(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  v38 = 175 * (a2 ^ 0x57);
  v33 = 1785193651 * ((((v32 - 128) | 0x1B65B6FD) - ((v32 - 128) & 0x1B65B6FD)) ^ 0x98D53CEB);
  *(v32 - 112) = a12 - v33 + (a2 ^ (a7 - 38)) - 1249720853;
  *(v32 - 128) = a2 - v33 + 1207;
  *(v32 - 120) = &a22;
  v34 = (*(v31 + 8 * (a2 ^ 0xB79)))(v32 - 128);
  v35 = a31 & 0x3F;
  *(&a22 + v35) = 9;
  return (*(v31 + 8 * (((v35 > 0x37) * (v38 + 175)) ^ a2)))(v34);
}

uint64_t sub_1A23EA374@<X0>(uint64_t result@<X0>, unsigned int a2@<W1>, _DWORD *a3@<X8>)
{
  v8 = *(result + 40);
  v7 = *(result + 48);
  v9 = *(result + 16);
  *a3 = v5;
  *v9 = v4;
  *v8 = v6;
  *v7 = v3 + a2;
  *(result + 4) = 1863271989;
  return result;
}

uint64_t sub_1A23EA3F0@<X0>(int a1@<W7>, int a2@<W8>, uint64_t a3, int a4, int a5)
{
  v6 = a1 ^ (a1 - 1639);
  v7 = a5 == ((v6 + 585790858) & 0xDD15897F) - 2421 && a2 != (v6 ^ 0xE4744948);
  return (*(v5 + 8 * ((v7 * (((v6 - 2498) | 0x454) ^ 0x4EC)) ^ v6)))();
}

uint64_t sub_1A23EA59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v16 = (v10 ^ 0x3198BE60u) + v11;
  *(v14 + 4 * v15) = v16 + v10 - (v9 & (2 * v16));
  return (*(v8 + 8 * (((v16 < (((v13 - 199) | 4u) ^ a8)) * v12) ^ v13)))(a1, (v13 - 940));
}

uint64_t sub_1A23EA934(uint64_t a1)
{
  v12 = (v7 + v3 + v1);
  v13 = ((*(v1 + ((v2 + 3) ^ (v7 + 1720)) + v3) ^ v9) << 24) | ((v12[1] ^ v9) << 16) | ((v12[2] ^ v9) << 8);
  *(v11 + 4 * (((((v3 ^ 0x28895FC0) - 1788072005) ^ v3 ^ ((v3 ^ 0x28A35294) - 1790565649) ^ ((v3 ^ 0xB9CF6C2C) + 69868631) ^ ((v3 ^ 0xFBFFEEFC) + 1176149640)) >> 2) ^ v6)) = (v13 | v12[3] ^ v9) + v8 - 2 * ((v13 | v12[3] ^ v9) & (v8 + 10) ^ (v12[3] ^ v9) & v4);
  return (*(v5 + 8 * ((13 * ((v3 + 4 + v7) > 0x3F)) ^ v2)))(a1, v10 + 16);
}

uint64_t sub_1A23EAAC4@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  v3 = (v2 ^ 0x5B) - (((a2 ^ 0xCA01C01B) + 905854949) ^ ((a2 ^ 0x5E2C0A7B) - 1579944571) ^ ((a2 ^ 0xFB228C55) + 81621931)) + 42213836;
  **(result + 8) = v3 ^ ((v3 ^ 0x1E1E40C6) - 1871335799) ^ ((v3 ^ 0xBE7C81A3) + 806842350) ^ ((v3 ^ 0xAE090F0B) + 543351110) ^ ((v3 ^ 0x7FFFDFDF) - 241946222) ^ 0x1E9B5784;
  return result;
}

uint64_t sub_1A23EAD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, int a15, unsigned int a16, int a17, uint64_t a18, char *a19)
{
  v23 = 143681137 * (((&a14 | 0x30CD3D57) - &a14 + (&a14 & 0xCF32C2A8)) ^ 0x51F78A1F);
  a16 = v23 ^ 0xD9B2AC43;
  a18 = a11;
  a19 = &a12;
  a14 = v23 ^ 0x6163ACC5;
  a15 = v23 + 1421512349 + v22;
  v24 = (*(v19 + 8 * (v22 ^ 0xBB2)))(&a14);
  return (*(v19 + 8 * (((a17 == ((v22 + 76) ^ (v20 + 144))) * (v21 ^ 0x485)) ^ v22)))(v24);
}

uint64_t sub_1A23EAF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  *(v25 - 128) = v20;
  *(v25 - 120) = v18 + 538 - 1564307779 * a12 - 476;
  *(v25 - 136) = (1564307779 * a12) ^ 0x4D7498FB;
  (*(v21 + 8 * (v18 + 2652)))(v25 - 136);
  *(v25 - 136) = (v18 + 1412) ^ (50899313 * ((-1663802584 - (v19 | 0x9CD46328) + a11) ^ 0x49E0B6AD));
  *(v25 - 128) = v24;
  *(v25 - 120) = a18;
  (*(v21 + 8 * (v18 + 2649)))(v25 - 136);
  *(v25 - 136) = v18 + 538 + a10 * v22 + 1407;
  *(v25 - 120) = a18;
  *(v25 - 128) = a17;
  v26 = (*(v21 + 8 * ((v18 + 538) ^ 0x9E4)))(v25 - 136);
  return (*(v21 + 8 * (((*(v25 - 112) <= v23) * ((v18 - 268631296) & 0x1002FCFF ^ 0x13D)) ^ (v18 + 538))))(v26);
}

void sub_1A23EB0D0(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v19 - 144) = &a15;
  *(v19 - 128) = &a15;
  *(v19 - 136) = ((a1 & 0x4A9B09FF) + 1423) ^ (143681137 * ((v19 + 727965954 - 2 * ((v19 - 144) & 0x2B63E192)) ^ 0x4A5956DA));
  *(v19 - 104) = a6;
  *(v19 - 120) = a7;
  *(v19 - 112) = &a19;
  JUMPOUT(0x1A23EB140);
}

uint64_t sub_1A23EB1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v20 = ((388690894 - ((v19 - 144) | 0x172AF3CE) + ((v19 - 144) | 0xE8D50C31)) ^ 0x6B658627) * v17;
  *(v19 - 128) = v20 + v16 - 1258;
  *(v19 - 136) = a15;
  *(v19 - 140) = 109234736 - v20 + v18 - (((v18 << ((v16 ^ 0x4B) + 84)) + 257036828) & 0x3DB38244);
  v21 = (*(v15 + 8 * (v16 ^ 0xCD0)))(v19 - 144);
  return (*(v15 + 8 * ((4027 * (*(v19 - 144) == -147050827)) ^ v16)))(v21);
}

uint64_t sub_1A23EB358@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v5.i64[0] = 0x1212121212121212;
  v5.i64[1] = 0x1212121212121212;
  v6.i64[0] = 0x8989898989898989;
  v6.i64[1] = 0x8989898989898989;
  v7 = vaddq_s8(vsubq_s8(*(v2 + v4 - 12), vandq_s8(vaddq_s8(*(v2 + v4 - 12), *(v2 + v4 - 12)), v5)), v6);
  *(v2 + a2 - 32) = vaddq_s8(vsubq_s8(*(v2 + v4 - 28), vandq_s8(vaddq_s8(*(v2 + v4 - 28), *(v2 + v4 - 28)), v5)), v6);
  *(v2 + a2 - 16) = v7;
  return (*(v3 + 8 * ((((v2 & 0x60) == 32) * (a1 ^ 0x79C)) ^ (a1 - 143))))();
}

uint64_t sub_1A23EB3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v22 - 128) = v17 + (((v19 | (v22 - 128)) - ((v22 - 128) & v19)) ^ 0x3330B017) * v20 + 1721;
  *(v22 - 120) = &a17;
  *(v22 - 112) = a16;
  v23 = (*(v18 + 8 * (v17 ^ 0xAA2)))(v22 - 128);
  return (*(v18 + 8 * ((952 * (*(v22 - 104) > v21 + ((v17 - 445) | 0x2A4u) + 372)) ^ v17)))(v23);
}

uint64_t sub_1A23EB458(uint64_t a1)
{
  v6 = ((v4 + v2) | 0x445u) - 1126;
  v7.i64[0] = 0x8989898989898989;
  v7.i64[1] = 0x8989898989898989;
  v8 = a1 + v6 + v3;
  v9 = veorq_s8(*(v1 + v6 + v3 - 31), v7);
  *(v8 - 15) = veorq_s8(*(v1 + v6 + v3 - 15), v7);
  *(v8 - 31) = v9;
  return (*(v5 + 8 * ((63 * ((v3 & 0xFFFFFFE0) != 32)) ^ (v4 + v2 + 1726))))();
}

uint64_t sub_1A23EB4C4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, _DWORD *a12, uint64_t a13, unint64_t a14, int a15, int a16, int a17)
{
  v29 = v17 ^ 0x231;
  v23 = ((v17 ^ 0x231) - 287) | 0x400;
  *a12 = a1;
  LODWORD(STACK[0x21C]) = a17;
  STACK[0x220] = a14;
  LODWORD(STACK[0x228]) = a16 - v21 + 413892651;
  STACK[0x230] = a9 + v21 - 164717055 + (((v17 ^ 0x231) - 1893224995) & 0x70D85B2Fu);
  v24 = (*(v20 + 48 * v22 + 8))(a6);
  return (*(v19 + 8 * (((v24 + 1863271989 - ((2 * v24) & 0xDE1E8C6A) != 1863271989) * (v23 ^ 0x406)) ^ v29)))(v24, 919678557, v25, v26, 1227805090, v27, v18, 3375287651, a2, a3);
}

uint64_t sub_1A23EB5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17, unsigned int a18)
{
  v22 = 1556366573 * ((&a15 & 0x1A67BFA5 | ~(&a15 | 0x1A67BFA5)) ^ 0x817C63B0);
  LODWORD(a15) = 2027 - v22;
  HIDWORD(a15) = v22 + 295473084;
  a18 = 1844776156 - v22;
  a16 = v22 ^ 0x661FAE48;
  (*(v19 + 22792))(&a15);
  a17 = (((&a15 ^ 0x260A1098 | 0xB0586DF4) - (&a15 ^ 0x260A1098) + ((&a15 ^ 0x260A1098) & 0x4FA79208)) ^ 0x48442C8) * v18 + 789;
  a15 = &a11;
  v23 = (*(v19 + 22888))(&a15);
  return (*(v19 + 8 * ((1446 * (a16 == v21)) ^ v20)))(v23);
}

uint64_t sub_1A23EB790()
{
  *(v3 + 4) = v0;
  *(v5 - 144) = (16 * (v1 ^ 0x1C0) - 973) ^ (((((v5 - 144) | 0xC1E96F99) + (~(v5 - 144) | 0x3E169066)) ^ 0xEB2245E2) * v2);
  *(v5 - 136) = v3;
  *(v5 - 128) = &v7;
  return (*(v4 + 8 * ((16 * (v1 ^ 0x1C0) - 2253) ^ 0xA5B)))(v5 - 144);
}

uint64_t sub_1A23EB890()
{
  v5 = (v2 + v4 - 220 + 8);
  *(v5 - 1) = 0x8989898989898989;
  *v5 = 0x8989898989898989;
  return (*(v3 + 8 * ((((((v1 + 402) ^ 0xFFFFFFFFFFFFFC00) & v0) != 16) * (((v1 + 402) ^ 0x191) - 583)) ^ (v1 + 402) ^ 0x1A)))();
}

uint64_t sub_1A23EB93C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *v4 = a1;
  *v3 = v2;
  v7 = (a2 ^ 0xF97) + 120;
  v12 = v10;
  v11 = ((a2 ^ 0xF97) + 426) ^ (50899313 * (&v11 ^ 0x2ACB2A7A));
  (*(v6 + 8 * (a2 ^ 0x3B6)))(&v11);
  v11 = (v7 + 306) ^ (50899313 * ((2 * (&v11 & 0x702A6568) - &v11 + 265656981) ^ 0x251EB0EF));
  v12 = v9;
  (*(v6 + 8 * (v7 + 873)))(&v11);
  return v5 ^ 0x6F0F4635u;
}

uint64_t sub_1A23EBA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, unsigned int a20, int a21, uint64_t a22, char *a23)
{
  if ((a11 - 1002645689) < 0xEA4C5EF)
  {
    v26 = 1633922245;
  }

  else
  {
    v26 = 1633922246;
  }

  v27 = 143681137 * (((&a18 | 0x3F3F51AD) - (&a18 & 0x3F3F51AD)) ^ 0x5E05E6E5);
  a19 = v27 + v25 + 1421512136;
  a20 = v27 ^ 0xA232987B;
  a18 = v26 ^ v27;
  a22 = a13;
  a23 = &a14;
  v28 = (*(v24 + 8 * (v25 ^ 0xA6F)))(&a18);
  return (*(v24 + 8 * ((570 * (a21 == ((5 * (v25 ^ 0x1D3)) ^ (v23 - 1459) ^ (3 * (v25 ^ 0x8E))))) ^ v25)))(v28);
}

uint64_t sub_1A23EBBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v32 = (a5 - 306456870) & 0xF0D59AF9;
  v33 = v29 + 560896077;
  (*(v31 + 8 * (v33 + 2240)))(a17 + a18, 0x100004077774924);
  v34 = (*(v31 + 8 * (v33 + 2209)))();
  *v30 = v34;
  v35 = 1812433253 * ((v34 >> 30) ^ 0x5C8B6AA3 ^ (v34 + 1552640675 - ((2 * v34) & 0xB916D546))) + 1;
  v30[1] = v35;
  return (*(v31 + 8 * v32))(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_1A23EBD94()
{
  v4 = (v3 ^ 0xEB7D504B) + v2;
  v5 = v0 - 1387482732;
  v6 = (v5 < 0xF54EAC5B) ^ (v4 < 0xF54EAC5B);
  v7 = v4 > v5;
  if (v6)
  {
    v7 = v4 < 0xF54EAC5B;
  }

  return (*(v1 + 8 * ((v7 * (v3 - 753)) ^ v3)))();
}

uint64_t sub_1A23EBF24@<X0>(uint64_t a1@<X8>)
{
  v8 = v4 - a1;
  *(v8 + 91) = ((a1 + v2) ^ v3) * (a1 + v2 + 17);
  *(v8 + 90) = ((a1 + v2) ^ 0xBB) * (a1 + v2 + 18);
  return (*(v7 + 8 * (((v5 + a1 == 92) * v6) ^ v1)))();
}

uint64_t sub_1A23EC09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v16 = v13 + 2071;
  v17 = 52 * (v16 ^ 0x879);
  v19 = ((((((a13 + 126) ^ 0xC8) - 46) ^ (a13 + 126) ^ (((a13 + 126) ^ 0xFD) - 27) ^ (((a13 + 126) ^ 0x4D) + v16 - 6)) ^ (((*(v15 - 132) - 74) ^ (a13 + 126)) - 120)) & 0xF) != 6 || ((((a13 + 1241008254) ^ 0xB6003AC8) + 826614994) ^ (a13 + 1241008254) ^ (((a13 + 1241008254) ^ 0x6FEFBFFD) - 391470619) ^ (((a13 + 1241008254) ^ 0xD5E1CD4D) + v16 + 1386531578) ^ (((*(v15 - 132) + 1957995190) ^ (a13 + 1241008254)) - 202262648)) == (v16 ^ 0x78BAE9BD);
  *(v15 - 132) = v17;
  v20 = *(v14 + 8 * ((v19 * (v17 - 1735)) ^ v16));
  *(v15 - 136) = -42899;
  return v20();
}

uint64_t sub_1A23EC228(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27)
{
  v31 = 843532609 * (((~(v30 - 144) | 0x9D2A1E42FAFB4380) + ((v30 - 144) | 0x62D5E1BD0504BC7FLL)) ^ 0xFF45D58815B8CB20);
  v32 = *a4;
  *(v30 - 144) = v28 - v31 + v27;
  v33 = v27 - 1478592608 + v31;
  *(v30 - 112) = v33 - 98;
  *(v30 - 108) = v33;
  *(v30 - 120) = v31;
  *(v30 - 116) = v33 - 7;
  *(v30 - 136) = v32 + v31;
  *(v30 - 128) = v31;
  v34 = (*(v29 + 8 * (v27 ^ a27)))(v30 - 144);
  return (*(v29 + 8 * *(v30 - 140)))(v34);
}

uint64_t sub_1A23EC30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v27 = *v26;
  v28 = *(v26 + 48);
  *(v25 - 192) = ((a1 - 1109) | 2) + 680;
  *(v25 - 112) = veorq_s8(*v27, xmmword_1A273D9B0);
  if (v24)
  {
    v29 = v28 == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = !v29;
  v31 = *(v23 + 8 * ((240 * v30) ^ a1));
  *(v25 - 196) = -42900;
  return v31(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t sub_1A23EC3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 128) = v17;
  *(v21 - 120) = &a17;
  *(v21 - 136) = v20 + ((((2 * (v21 - 136)) | 0xB252AF92) - (v21 - 136) - 1495881673) ^ 0x3DCD7423) * v19 + 1001;
  v22 = (*(v18 + 8 * (v20 ^ 0xF92)))(v21 - 136);
  return (*(v18 + 8 * ((38 * (((v20 + 25) | 1u) - 798456912 + *(v21 - 112) >= (v20 ^ 0xF6C87F94))) ^ v20)))(v22);
}

uint64_t sub_1A23EC480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = v6 + 8;
  *(a3 + (v10 ^ a5 ^ a2) + v5) = *(v8 + (v10 ^ a5 ^ a2) + v5);
  return (*(v9 + 8 * (((2 * (a4 != v10)) | (4 * (a4 != v10))) ^ v7)))();
}

uint64_t sub_1A23EC5B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3)
{
  v7 = (v4 + 688243465) & 0xD6FA3F2F;
  (*(v6 + 8 * (v4 ^ 0x8BA)))(**(a2 + 8 * (v4 ^ 0x39B)), a1, (v7 + v3 + *(v5 + 8)));
  *(v5 + (((v7 + 547) | 0x29u) ^ 0x864)) = (&a3 ^ 0xBA) * (&a3 + 17);
  *(v5 + 30) = (&a3 ^ 0xBB) * (&a3 + 18);
  return (*(v6 + 8 * v7))();
}

uint64_t sub_1A23EC660@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = ((v3 - 58) ^ 0x21) + *(v1 + v5) - ((2 * *(v1 + v5)) & 0x12);
  return (*(v4 + 8 * ((989 * (v5 == 0)) ^ v3)))();
}

void sub_1A23EC7B8()
{
  v3 = *v0 ^ v2;
  v4 = (v3 ^ 0xE0A2616F270D279FLL) & (2 * (v3 & 0xE4C4886FB74DB79FLL)) ^ v3 & 0xE4C4886FB74DB79FLL;
  v5 = ((2 * (v3 ^ 0xA022616845164497)) ^ 0x89CDD20FE4B7E610) & (v3 ^ 0xA022616845164497) ^ (2 * (v3 ^ 0xA022616845164497)) & 0x44E6E907F25BF308;
  v6 = v5 ^ 0x4422290012481108;
  v7 = (v5 ^ 0x44007E013E200) & (4 * v4) ^ v4;
  v8 = ((4 * v6) ^ 0x139BA41FC96FCC20) & v6 ^ (4 * v6) & 0x44E6E907F25BF308;
  v9 = (v8 ^ 0x82A007C04BC000) & (16 * v7) ^ v7;
  v10 = ((16 * (v8 ^ 0x4464490032103308)) ^ 0x4E6E907F25BF3080) & (v8 ^ 0x4464490032103308) ^ (16 * (v8 ^ 0x4464490032103308)) & 0x44E6E907F25BF300;
  v11 = (v10 ^ 0x44668007201B3000) & (v9 << 8) ^ v9;
  v12 = (((v10 ^ 0x806900D240C308) << 8) ^ 0xE6E907F25BF30800) & (v10 ^ 0x806900D240C308) ^ ((v10 ^ 0x806900D240C308) << 8) & 0x44E6E907F25BF300;
  v13 = v11 ^ 0x44E6E907F25BF308 ^ (v12 ^ 0x44E0010252530000) & (v11 << 16);
  v14 = v3 ^ (2 * ((v13 << 32) & 0x44E6E90700000000 ^ v13 ^ ((v13 << 32) ^ 0x725BF30800000000) & (((v12 ^ 0x6E805A008F308) << 16) & 0x44E6E90700000000 ^ 0x4E0090400000000 ^ (((v12 ^ 0x6E805A008F308) << 16) ^ 0x6907F25B00000000) & (v12 ^ 0x6E805A008F308))));
  *v15 = (HIBYTE(v14) ^ 0xED) - ((2 * (HIBYTE(v14) ^ 0xED)) & 0x12) - 119;
  v15[1] = (BYTE6(v14) ^ 0x8C) - ((2 * (BYTE6(v14) ^ 0x8C)) & 0x12) - 119;
  v15[2] = (BYTE5(v14) ^ 0x98) - 2 * ((BYTE5(v14) ^ 0x98) & 0xF ^ BYTE5(v14) & 6) - 119;
  v15[3] = (BYTE4(v14) ^ 0x60) - ((2 * BYTE4(v14)) & 0x12) - 119;
  v15[4] = (BYTE3(v14) ^ 0x53) - ((2 * (BYTE3(v14) ^ 0x53)) & 0x12) - 119;
  v15[5] = (BYTE2(v14) ^ 0xFA) + (~(2 * (BYTE2(v14) ^ 0xFA)) | 0xED) - 118;
  v15[6] = (BYTE1(v14) ^ 0x51) - 2 * ((BYTE1(v14) ^ 0x51) & 0xD ^ BYTE1(v14) & 4) - 119;
  v15[7] = v14 ^ 6;
  *(v0 + 12) = *(v1 + 24);
}

uint64_t sub_1A23ECB20@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, unsigned int a39)
{
  v42 = *(&a27 + a2 + 72);
  v43 = ((2 * a2) & 0x7EDE7FE8) + (a2 ^ 0x3F6F3FF5) + v39;
  *(a1 + v43) = v42 ^ 0xF9;
  *(a1 + v43 + 1) = (((v40 ^ 0xE7) + 70) ^ BYTE1(v42)) - ((v42 >> 7) & 0x12) - 119;
  *(a1 + v43 + 2) = (BYTE2(v42) ^ 0xD5) - 2 * ((BYTE2(v42) ^ 0xD5) & 0xB ^ BYTE2(v42) & 2) - 119;
  *(a1 + v43 + 3) = (HIBYTE(v42) ^ 0x3B) - ((2 * (HIBYTE(v42) ^ 0x3B)) & 0x12) - 119;
  return (*(v41 + 8 * ((47 * (a2 + 4 >= a39)) ^ v40)))();
}

uint64_t sub_1A23ECC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, unsigned int a19, int a20, uint64_t a21, char *a22)
{
  v26 = 143681137 * ((-1613611047 - (&a17 | 0x9FD23FD9) + (&a17 | 0x602DC026)) ^ 0x117776E);
  a17 = (((((v22 - 768) | 0x430) - 469763682) ^ v23) + 2 * v23 + 2103684589) ^ v26;
  a18 = v26 + v22 + 1421511480;
  a21 = a11;
  a22 = &a13;
  a19 = v26 ^ 0xA11B98E8;
  v27 = (*(v25 + 8 * (v22 + 1805)))(&a17);
  return (*(v25 + 8 * ((448 * (a20 == v24)) ^ v22)))(v27);
}

uint64_t sub_1A23ECD14(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = ((v4 ^ 0x62B) + 1212952963) & 0xB7B3CEDC;
  *v6 = a1;
  *v5 = v4 ^ 0x62B ^ (a4 - 484) ^ v11;
  v9 = 2 * (v8 ^ 0x162);
  v15 = v12;
  v14 = (v8 + 1608) ^ (50899313 * (((&v14 | 0x871BF61B) - (&v14 & 0x871BF61B)) ^ 0xADD0DC61));
  (*(v7 + 8 * (v8 ^ 0x987)))(&v14);
  v15 = v13;
  v14 = (v9 + 448) ^ (50899313 * (((&v14 | 0x239CC0F6) - (&v14 & 0x239CC0F6)) ^ 0x957EA8C));
  (*(v7 + 8 * (v9 + 1015)))(&v14);
  return 0;
}

uint64_t sub_1A23ED264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = 475 * (v7 ^ 0x355);
  v9 = ((v8 - 278) ^ 0x2A1) + v5;
  *(*(v2 + 8) + 4 * (v5 + v3)) = v6 ^ (v4 + 630) ^ v8;
  v10 = v8 + 455;
  v11 = v9 + v3;
  *(v2 + 4) = v9;
  if (v9 + v3 < 0)
  {
    v11 = -v11;
  }

  return (*(a2 + 8 * ((3472 * ((v10 + (v11 ^ 0x56ED77BF) + ((2 * v11) & 0xADDAEF7E) - 69212414 + ((v10 - 490366978) & 0x1D3A67F5 ^ (v3 + 750))) > (((v10 + 428605409) & 0xE673FFFF) - 1375))) ^ v10)))(a1, 490366965, 3866361855);
}

uint64_t sub_1A23ED42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, _BYTE *a16, uint64_t a17, char a18, __int16 a19, char a20, uint64_t a21, unsigned int a22, int a23, char *a24, unsigned int a25, _BYTE *a26)
{
  v29 = (v27 - 2504) | 0x408;
  a26 = a16;
  a25 = (v27 - 1723) ^ ((((&a22 | 0x7C6FE1CB) - &a22 + (&a22 & 0x83901E30)) ^ 0x1D555683) * v26);
  a24 = &a14;
  (*(v28 + 8 * (v27 ^ 0x122)))(&a22);
  a26 = a16;
  a25 = (v29 - 251) ^ (((&a22 - 1976893676 - 2 * (&a22 & 0x8A2AFF14)) ^ 0xEB10485C) * v26);
  a24 = &a18;
  (*(v28 + 8 * (v29 + 1698)))(&a22);
  a26 = a16;
  a25 = (v29 - 251) ^ ((((&a22 | 0x16D5FEB) + (~&a22 | 0xFE92A014)) ^ 0x6057E8A2) * v26);
  a24 = &a20;
  (*(v28 + 8 * (v29 ^ 0xF62)))(&a22);
  a24 = a16;
  a22 = v29 - 1556366573 * ((&a22 & 0x21FC5F92 | ~(&a22 | 0x21FC5F92)) ^ 0xBAE78387) + 1613;
  v30 = (*(v28 + 8 * (v29 + 1732)))(&a22);
  return (*(v28 + 8 * (((a23 == 1863271989) * (((v29 - 376) | 0x92) + 67)) ^ v29)))(v30);
}

uint64_t sub_1A23ED4A4(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = v9 | 0x8E09410;
  if (v10 >= a3)
  {
    v14 = -1863311893;
  }

  else
  {
    v14 = a8;
  }

  return (*(v11 + 8 * (((v14 == a8) * (v12 + v13 + 3469)) ^ (v12 + v13 + 1330))))();
}

void sub_1A23ED500(uint64_t a1@<X8>, uint64_t a2, int a3, unsigned int a4)
{
  v7 = 896639297 * ((((2 * &a2) | 0x750AE5BC) - &a2 - 981824222) ^ 0x2E2EE4A6);
  a3 = (v6 - 1769) ^ v7;
  a4 = (-895076527 - v5 - ((((95 * (v6 ^ 0x873)) ^ 0x9AE930E9) - 2 * v5) & 0xFA633CAE)) ^ v7;
  a2 = v4;
  (*(a1 + 8 * (v6 + 721)))(&a2);
  JUMPOUT(0x1A23ED59CLL);
}

uint64_t sub_1A23ED648@<X0>(uint64_t a1@<X8>)
{
  if (v4 >= 0)
  {
    v4 = v4;
  }

  else
  {
    v4 = -v4;
  }

  v5 = v4 - 1;
  *(*(v1 + 8) + 4 * v5) = *(*(a1 + 8) + 4 * v5);
  return (*(v2 + 8 * ((23 * (v5 != (((v3 - 561) | 0x224u) ^ 0x22DLL))) ^ ((v3 - 561) | 0x224))))();
}

uint64_t sub_1A23ED6AC@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, unsigned int a8@<W8>, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v22 = v20 ^ a7;
  *(v14 + v13) = v20 ^ a7 ^ *(a10 + v13) ^ 0x3C;
  v23 = a8 + v21 + 2;
  v24 = (((a12 ^ v17) + v18) ^ ((a12 ^ a1) + a2) ^ (((v22 - 1827) ^ a3 ^ a12) + ((v22 + v15) & v16 ^ a4))) + a5;
  v25 = v24 < v12;
  v26 = v23 + v12 < v24;
  if (v23 > a8 != v25)
  {
    v26 = v25;
  }

  return (*(v19 + 8 * ((!v26 * a6) ^ v22)))();
}

void sub_1A23ED6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *v36 = (v35 + 1) ^ v35 ^ ((((a30 - v35) | (v35 - a30)) >= 0) | 0x80000000);
  (*(v37 + 8 * (v35 ^ 0xB4A)))(a35);
  JUMPOUT(0x1A23ED730);
}

uint64_t sub_1A23ED83C@<X0>(uint64_t a1@<X5>, unint64_t a2@<X8>, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6, _BYTE *a7, uint64_t a8, _BYTE *a9, int a10, _BYTE *a11, _BYTE *a12, _BYTE *a13, uint64_t a14, _BYTE *a15, uint64_t a16, _BYTE *a17, uint64_t a18, _BYTE *a19, _BYTE *a20, _BYTE *a21, _BYTE *a22, _DWORD **a23, _BYTE *a24, _BYTE *a25, _BYTE *a26, uint64_t a27, char a28)
{
  *a6 = v31;
  *a17 = BYTE3(v31);
  a6[1] = v30 >> (34 * (a28 ^ 0x5Cu) - 20);
  a5[1] = BYTE4(v31) ^ 0x30;
  a9[20] = v29;
  *a19 = BYTE5(v30);
  a9[64] = BYTE2(v31);
  a9[50] = BYTE3(a1);
  *a22 = BYTE1(v31);
  *a20 = a1;
  a9[26] = BYTE6(a1);
  *a21 = BYTE4(a1);
  a5[2] = BYTE1(v28);
  a9[45] = BYTE5(a1);
  *a24 = HIBYTE(a1);
  a9[11] = BYTE2(v28);
  *a25 = BYTE1(v29);
  *a5 = HIBYTE(v30);
  *a7 = BYTE2(v29);
  a9[52] = BYTE4(v29);
  *a12 = BYTE3(v29);
  v34 = *(a3 + 526 + (((v33 >> 33) & 0x80 | (v29 >> 41) & 0x7F) ^ 0x1D));
  a9[9] = BYTE6(v29);
  *a11 = (((v34 >> 4) | (16 * v34)) ^ 0xB ^ (((v34 >> 4) | (16 * v34)) >> 1) & 0x55) + 95;
  v35 = *(a4 + (((v29 >> 51) & 0xE0 | (v33 >> 59)) ^ 0xF3));
  a9[39] = v32 ^ 0x53;
  *a15 = (v35 ^ 0xBC) + 74;
  v36 = *(a4 + (((v32 >> 3) & 0xE0 | (v32 >> 11)) ^ 0xEF));
  v37 = (a2 >> 38) ^ 0xB0;
  a9[49] = BYTE5(v32) ^ 0xBB;
  a9[63] = BYTE3(v32) ^ 0xC1;
  a9[13] = BYTE6(v32) ^ 0x15;
  *a13 = BYTE2(v32) ^ 0x1D;
  v38 = v37 & 0xFC | (a2 >> 46) & 3;
  *a26 = (v36 ^ 0xBC) + 74;
  a9[36] = BYTE4(v32) ^ 0xF2;
  a9[60] = BYTE1(a2) ^ 0x54;
  a9[27] = BYTE2(a2) ^ 0x11;
  a9[40] = (v32 ^ 0x4F15BBF2C11DE053) >> (v28 & 0x38) >> (v28 & 0x38 ^ 0x38u);
  a9[53] = BYTE3(a2) ^ 5;
  a9[59] = a2 ^ 0x4C;
  a9[22] = BYTE4(a2) ^ 0x2D;
  a9[37] = -35 * ((((v37 & 0xFC | (a2 >> 46) & 3) ^ 0x86) - ((2 * v37) & 0xD0) + (*(a8 + (v38 ^ 0x97)) ^ 0xB2) + ((2 * *(a8 + (v38 ^ 0x97))) & 0x64) + 79) ^ 0x85);
  v39 = *(a3 + 526 + (((a2 >> 41) & 0x80 | (a2 >> 49) & 0x7F) ^ 0x56));
  a9[29] = HIBYTE(a2) ^ 0x30;
  a9[57] = (((v39 >> 4) | (16 * v39)) ^ 0xB) + ((((v39 >> 4) | (16 * v39)) >> 1) & 0x55) - 2 * ((((v39 >> 4) | (16 * v39)) >> 1) & 0x55 & (((v39 >> 4) | (16 * v39)) ^ 0xB)) + 95;
  **a23 = a10 + 1;
  return sub_1A23D4FC8();
}

uint64_t sub_1A23EE080@<X0>(int a1@<W8>, uint64_t a2, int a3, char a4, __int16 a5, char a6, int a7, unsigned int a8, char *a9, char *a10, uint64_t a11, uint64_t a12, int a13)
{
  v15 = a1 - 1881;
  v16 = 1785193651 * ((&a8 & 0x589262AC | ~(&a8 | 0x589262AC)) ^ 0x24DD1745);
  a8 = 1885882917 - v16;
  a9 = &a4;
  a10 = &a6;
  a13 = v15 - v16 + 100;
  a12 = v13;
  v17 = (*(v14 + 8 * (v15 + 2174)))(&a8);
  return (*(v14 + 8 * (((*(v13 + 24) == ((83 * (v15 ^ 0x2AB)) ^ 0x6F0F4C38)) * (((v15 ^ 0x2AB) + 1194) ^ 0x4BD)) ^ v15)))(v17);
}

void sub_1A23EE1B0()
{
  v7 = *(v5 + 8);
  v8 = (*(v7 + 4 * (v6 - 1)) ^ v0) >> v1;
  *(v7 + 4 * v2) = v8 + v0 - ((v4 + v3 - 2025) & (2 * v8));
  JUMPOUT(0x1A23E32BCLL);
}

uint64_t sub_1A23EE40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  (*(v21 + 8 * SHIDWORD(a12)))(a13 + 16, 0x100004077774924);
  v22 = (*(v21 + 8 * a12))();
  *v20 = v22;
  return sub_1A23EE460(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1A23EE530@<X0>(uint64_t a1@<X8>)
{
  v4 = 7 * (v2 ^ 0x6E4);
  v5 = **(a1 + 8) == v1 + ((v4 - 1224) | 0x40) - 338;
  return (*(v3 + 8 * (((2 * v5) | (4 * v5)) ^ v4)))((v4 - 871));
}

uint64_t sub_1A23EE5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = (v12 - 13) ^ 0x680;
  v16 = *(a11 - 4 + 4 * v14) == v11 + ((v15 + 1015904086) & 0xC3728DFF) + 55 - 1586;
  return (*(v13 + 8 * (((4 * v16) | (8 * v16)) ^ v15)))();
}

uint64_t sub_1A23EE68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19)
{
  *a5 = 0;
  *a6 = 0;
  a19 = (210068311 * (((&a18 | 0x12841B3E) - &a18 + (&a18 & 0xED7BE4C0)) ^ 0x8052249A)) ^ 0x48449A90;
  v22 = (*(v20 + 22400))(&a18);
  return (*(v20 + 8 * ((2749 * (a18 == v19)) ^ v21)))(v22);
}

uint64_t sub_1A23EE8A0@<X0>(uint64_t a1@<X1>, int8x16_t *a2@<X3>, uint64_t a3@<X8>, int8x16_t a4@<Q4>, int8x16_t a5@<Q5>)
{
  v8 = (a1 + a3);
  v9 = vaddq_s8(vaddq_s8(a2[1], a5), vmvnq_s8(vandq_s8(vaddq_s8(a2[1], a2[1]), a4)));
  *v8 = vaddq_s8(vaddq_s8(*a2, a5), vmvnq_s8(vandq_s8(vaddq_s8(*a2, *a2), a4)));
  v8[1] = v9;
  return (*(v7 + 8 * ((776 * ((v5 ^ 0x9ADLL) == (v6 & 0x60))) ^ v5)))();
}

uint64_t sub_1A23EEA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char a13, unsigned int a14, char *a15, char *a16, uint64_t a17, uint64_t a18, int a19)
{
  v23 = 1785193651 * ((515293733 - (&a14 | 0x1EB6C225) + (&a14 | 0xE1493DDA)) ^ 0x62F9B7CC);
  a19 = v22 - v23 + 646;
  a15 = &a13;
  a16 = &a10;
  a14 = 1883181929 - v23;
  a18 = v19;
  v24 = (*(v20 + 8 * (v22 + 2720)))(&a14);
  return (*(v20 + 8 * (((*(v19 + 24) == v21) * ((v22 + 99859297) & 0xFA0C449D ^ (v22 - 128117271) & 0x7A2EFD7 ^ 0xEFC)) ^ v22)))(v24);
}

uint64_t sub_1A23EEC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12, int a13, int a14)
{
  a12 = &a11;
  a14 = ((&a12 + 1248015797 - 2 * (&a12 & 0x4A6335B5)) ^ 0xD8B50A11) * v16 + 789;
  v18 = (*(v15 + 22888))(&a12);
  return (*(v15 + 8 * ((1428 * (a13 == v14)) ^ v17)))(v18);
}

uint64_t sub_1A23EEE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 136) = v19 + ((2 * ((v20 - 136) & 0xCB53570) - (v20 - 136) + 1934281359) ^ 0x17AEE965) * v17 + 1606;
  *(v20 - 128) = &a17;
  *(v20 - 120) = a16;
  v21 = (*(v18 + 8 * (v19 + 2283)))(v20 - 136);
  return (*(v18 + 8 * (((*(v20 - 112) > 0x2F9777A7u) * ((v19 + 1220961517) & 0xB7399FF7 ^ 0x1F4)) ^ v19)))(v21);
}

uint64_t sub_1A23EEF24(int8x16_t a1, double a2, double a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v13 = (v11 + v8);
  v14 = vaddq_s8(vsubq_s8(v13[1], vandq_s8(vaddq_s8(v13[1], v13[1]), a4)), a1);
  *v12 = vaddq_s8(vsubq_s8(*v13, vandq_s8(vaddq_s8(*v13, *v13), a4)), a1);
  v12[1] = v14;
  return (*(v10 + 8 * (a8 + v9 + 1473)))();
}

uint64_t sub_1A23EEFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v18 = v15 + 1043661433 < a15 - 1000623574;
  if ((a15 - 1000623574) < 0x3E350279 != v15 > 0xC1CAFD86)
  {
    v18 = (a15 - 1000623574) < 0x3E350279;
  }

  return (*(v16 + 8 * (((2 * (((v17 - 110) ^ v18) & 1)) & 0xEF | (16 * (((v17 - 110) ^ v18) & 1))) ^ v17)))();
}

uint64_t sub_1A23EF034@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, int a7@<W8>, uint64_t a8, uint64_t a9, int a10, int a11)
{
  v13 = v11 + 522624125 < a11 + 108731474;
  if ((a11 + 108731474) < 0x1F269C7D != v11 > 0xE0D96382)
  {
    v13 = (a11 + 108731474) < 0x1F269C7D;
  }

  return (*(v12 + 8 * ((!v13 * (a7 - 425)) ^ a7)))(522624125, (a7 - 389), a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1A23EF294(int a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v14 = HIDWORD(v11) + a2 * (*(a5 + 4 * a4) ^ v8) + (*(a8 + 4 * a3) ^ v8);
  *(a8 + 4 * a3) = v14 + ((a7 | 8) ^ (v8 + 264)) - (v10 & (2 * v14));
  return (*(v12 + 8 * (((a4 + 1 == v9) * v13) ^ a1)))();
}

uint64_t sub_1A23EF510()
{
  v4 = 163 * (v0 ^ 0x694);
  *v6 = v8 ^ 0x6F0F45E7 ^ v4;
  v11 = v9;
  v10 = (v4 + 1338) ^ (((((2 * &v10) | 0x6942993C) - &v10 + 1264497506) ^ 0x9E6A66E4) * v2);
  (*(v3 + 8 * (v4 ^ 0x891)))(&v10);
  v11 = v7;
  v10 = (v4 + 1338) ^ ((((&v10 | 0x8273189A) - &v10 + (&v10 & 0x7D8CE760)) ^ 0xA8B832E0) * v2);
  (*(v3 + 8 * (v4 + 1905)))(&v10);
  return v1 ^ 0x6F0F4635u;
}

uint64_t sub_1A23EF64C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3)
{
  v7 = *(v4 + v3 - 16);
  v8 = (v4 + a3 - 16);
  *(v8 - 1) = *(v4 + v3 - 32);
  *v8 = v7;
  return (*(v6 + 8 * ((3980 * ((v5 + a1) - (v4 & 0xFFFFFFE0) == 1486)) ^ (v5 + a1 + 326))))();
}

void cp2g1b9ro(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23EF7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, unsigned int a45)
{
  *v47 = (v46 ^ 0xFFFFFF66) + v45;
  v50 = v47[6 * ((v46 + 1208104550) & 0xB7FDCB16 ^ 0x8619E37D) + 2 + 6 * v45];
  LODWORD(STACK[0x3E0]) = v47[6 * (v45 - 2045124245) + 6];
  return (*(v49 + 8 * (v46 | (4 * (*(v48 + (v50 + a8) * a3 + 36) != a2)))))(a45, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_1A23EF8D8@<X0>(int a1@<W8>)
{
  v3 = *(v7 + 16);
  v4 = *(v7 + 40);
  v9[0] = 0x8989898989898989;
  v9[1] = 0x8989898989898989;
  v5 = 1037613739 * ((((2 * (v2 - 176)) | 0x5F385C3C) - (v2 - 176) + 1348719074) ^ 0x7E9E0361);
  *(v2 - 160) = v4;
  *(v2 - 152) = &v8;
  *(v2 - 168) = v9;
  *(v2 - 144) = (a1 + 2536) ^ v5;
  *(v2 - 176) = v5 + 784505208;
  *(v2 - 136) = v3;
  result = (*(v1 + 8 * (a1 ^ 0xB40)))(v2 - 176);
  *(v7 + 4) = *(v2 - 140);
  return result;
}

uint64_t sub_1A23EFA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _BYTE *a14, uint64_t a15, uint64_t a16, int a17, char a18, uint64_t a19, unsigned int a20, int a21, char *a22, unsigned int a23, _BYTE *a24)
{
  v28 = (v25 - 233) | 0x121;
  a23 = (v28 + 580) ^ ((((&a20 | 0xE1A17349) - (&a20 & 0xE1A17349)) ^ 0x809BC401) * v24);
  a24 = a14;
  a22 = &a18;
  (*(v26 + 8 * (v28 ^ 0xA23)))(&a20);
  a20 = v28 - 1556366573 * (((&a20 | 0xA24D7FD3) + (~&a20 | 0x5DB2802C)) ^ 0xC6A95C38) + 2444;
  a22 = a14;
  v29 = (*(v26 + 8 * (v28 + 2563)))(&a20);
  return (*(v26 + 8 * ((105 * (a21 != v27)) ^ v28)))(v29);
}

uint64_t sub_1A23EFB14@<X0>(uint64_t a1@<X1>, int a2@<W6>, uint64_t a3@<X8>)
{
  v8 = a3 + 1;
  *(v7 + 4 * v8 + 908) = *(a1 + 4 * (*(v7 + 4 * v8 + 912) & (v4 - 753))) ^ *(v7 + 4 * v8) ^ ((*(v7 + 4 * v8 + 912) & 0x7FFFFFFE | v5 & 0x80000000) >> 1);
  return (*(v6 + 8 * (((v8 == 395) * a2) ^ v3)))();
}

void sub_1A23EFB70(_DWORD *a1)
{
  v1 = 896639297 * (a1 ^ 0x14AB9678);
  v2 = *a1 - v1;
  v3 = a1[6] ^ v1;
  v5 = (~v3 & 0x30000000) == 0 || (v3 & 0x3F000000) == 301989888;
  __asm { BRAA            X11, X17 }
}

void sub_1A23EFC28(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  a6 = v7;
  a5 = v8 + 1380333833 * ((530447766 - (&a3 | 0x1F9DFD96) + (&a3 | 0xE0620269)) ^ 0x5E30A9E3) - 891;
  a3 = a1;
  a4 = v7;
  (*(v6 + 8 * (v8 + 1890)))(&a3);
  JUMPOUT(0x1A23EFC90);
}

uint64_t sub_1A23EFCB8(uint64_t a1, int8x16_t a2, int8x16_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v12 = v9 + a1;
  v13 = *(a5 + v12 - 16);
  *(a8 + v12 + 1436) = vaddq_s8(vsubq_s8(*(a5 + v12), vandq_s8(vaddq_s8(*(a5 + v12), *(a5 + v12)), a2)), a3);
  *(a8 + v12 + 1420) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a2)), a3);
  return (*(v11 + 8 * (((v10 == v12) * a6) ^ v8)))();
}

uint64_t sub_1A23EFD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, unsigned int a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v77 = (*(v75 + 8 * (v72 + 1759)))(LODWORD(STACK[0x2F4]), a2, STACK[0x278]);
  if (v77)
  {
    if (v77 != 268435459)
    {
      v86 = 210068311 * ((-482864823 - ((v76 - 192) | 0xE3381149) + ((v76 - 192) | 0x1CC7EEB6)) ^ 0x8E11D112);
      *(v76 - 176) = v86 + a56 + 124;
      *(v76 - 184) = &STACK[0x284];
      *(v76 - 192) = (v77 + 1863271989 - ((2 * v77) & 0xDE1E8C6A)) ^ v86;
      JUMPOUT(0x1A23D6160);
    }

    LODWORD(STACK[0x284]) = -1863312115;
    return (*(v75 + 8 * ((((a56 - 343059447) & 0x1472AD2B ^ (a56 + 712800555) & 0xD583849C ^ 0x480) * (a68 == 0)) ^ (a56 - 587))))();
  }

  else
  {
    STACK[0x360] = &STACK[0x490] + v73;
    LODWORD(STACK[0x35C]) = 365765082;
    STACK[0x218] = (a56 ^ 0xFFFFFFFFFFFFFD7CLL) + v74;
    STACK[0x338] = 0;
    LODWORD(STACK[0x410]) = 2044285006;
    *(v76 - 188) = a56 + 1037613739 * ((((v76 - 192) | 0xF605B57) - ((v76 - 192) & 0xF605B57)) ^ 0xDE627628) + 1986157560;
    (*(v75 + 8 * (a56 ^ 0x997)))(v76 - 192);
    v78 = (*(v75 + 8 * (a56 + 2147)))(336, 0x100004077774924);
    return (*(v75 + 8 * (((4 * (v78 == 0)) | (32 * (v78 == 0))) ^ (a56 + 1227))))(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a72, a27, a28, a29, a30, a31, a32, a33, a34, a35);
  }
}

uint64_t sub_1A23EFF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, int a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  STACK[0x17A0] = 0x22947D9AEE315895;
  STACK[0x1798] = 0xC92A584C82AC0BE9;
  v31 = STACK[0x200];
  LODWORD(STACK[0x43C]) = STACK[0x200];
  v32 = 1556366573 * ((((v30 - 192) | 0x6989AC92) - ((v30 - 192) & 0x6989AC92)) ^ 0xD6D8F78);
  *(v30 - 192) = ((v31 ^ 0xBA15DFF5) + 1475017279 + ((2 * v31) & 0x742BBFEA)) ^ v32;
  *(v30 - 144) = v32 ^ a25 ^ ((a25 ^ 0xED76E860) + 108461017) ^ ((a25 ^ 0xAF3DAA4E) + 1144895991) ^ ((a25 ^ 0x29CA4196) - 1026928081) ^ ((a25 ^ 0x7F7EEFFF) - 1803617208) ^ 0xE9F7F025;
  *(v30 - 140) = (v28 + 427) ^ v32;
  *(v30 - 136) = &STACK[0x310];
  *(v30 - 152) = &STACK[0x17C8];
  *(v30 - 168) = &STACK[0x438];
  v33 = v28 + 119;
  *(v30 - 184) = a28;
  *(v30 - 176) = &STACK[0x1798];
  v34 = (*(v29 + 8 * (v28 + 2860)))(v30 - 192);
  return (*(v29 + 8 * ((13 * (*(v30 - 160) == 1863271989)) ^ v33)))(v34);
}

uint64_t sub_1A23EFFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v19 = (((a17 ^ 0x8AB92E7C) + 1967575428) ^ ((a17 ^ 0xE65C481B) + 430159845) ^ ((a17 ^ 0x3EA2052) - 65675578 + ((v17 - 2027141140) & 0x78D3B7FF))) + 228138744;
  v20 = v19 < 0x9E89D8C3;
  v21 = v19 > a10 - 1635133245;
  if (a10 > 0x6176273C != v20)
  {
    v21 = v20;
  }

  return (*(v18 + 8 * ((489 * v21) ^ v17)))();
}

uint64_t sub_1A23F0110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22)
{
  v27 = v24[623] - (v22 + 344);
  if (v23 - (v22 + 344) < ~(v22 + 344))
  {
    ++v27;
  }

  *v24 = v27 + 622;
  return (*(v25 + 8 * (((v26 + (a22 & 0x950C52DF) - 654 + (((a22 & 0x950C52DF) - 1828782350) & (v22 + 344)) == 1) * ((((a22 & 0x950C52DF) - 376) | 1) - 176)) ^ a22 & 0x950C52DF)))();
}

uint64_t sub_1A23F015C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(a12 + 16) = -v17;
  v23 = 1785193651 * ((((v22 - 136) | 0x90B838F9) - (v22 - 136) + ((v22 - 136) & 0x6F47C700)) ^ 0x1308B2EF);
  *(v22 - 128) = v20;
  *(v22 - 136) = v18 - v23 + 1638;
  *(v22 - 132) = v23 + 259466218;
  (*(v19 + 8 * (v18 + 1762)))(v22 - 136);
  v24 = 1564307779 * ((2 * ((v22 - 136) & 0x367CEBE0) - (v22 - 136) + 1233327130) ^ 0xDE8ED809);
  *(v22 - 128) = v20;
  *(v22 - 136) = (((32 * v21) ^ 0x5DF69AFE) - 276955652 + ((((v18 ^ 0xCA6) - 1134) ^ 0xBBED3140) & (v21 << 6))) ^ v24;
  *(v22 - 120) = v18 - v24 - 832;
  (*(v19 + 8 * (v18 + 1758)))(v22 - 136);
  *(v22 - 136) = (v18 + 518) ^ (50899313 * ((((v22 - 136) | 0xF32EA432) - ((v22 - 136) & 0xF32EA432)) ^ 0xD9E58E48));
  *(v22 - 128) = &a17;
  *(v22 - 120) = a16;
  (*(v19 + 8 * (v18 ^ 0xF65)))(v22 - 136);
  *(v22 - 136) = v18 + 1556366573 * (((v22 - 136) & 0x458EB53E | ~((v22 - 136) | 0x458EB53E)) ^ 0xDE95692B) + 1051;
  *(v22 - 128) = v20;
  *(v22 - 120) = a16;
  v25 = (*(v19 + 8 * (v18 ^ 0xF40)))(v22 - 136);
  return (*(v19 + 8 * ((49 * (*(v22 - 112) <= 0x2F9777A6u)) ^ v18)))(v25);
}

uint64_t sub_1A23F03A8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v10 = ~v6 + v3;
  v11 = *(v2 + v10 - 15);
  v12 = *(v2 + v10 - 31);
  v13 = a1 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * (((v6 + (v4 ^ v7) - 2533 == v5) * v8) ^ (a2 + v4 + 2762))))();
}

void sub_1A23F0514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v33 - 136) = (v32 + 1605) ^ (143681137 * ((((v33 - 144) | 0xADA0C531) + (~(v33 - 144) | 0x525F3ACE)) ^ 0xCC9A7278));
  *(v33 - 112) = &a32;
  *(v33 - 104) = a13;
  *(v33 - 144) = &a22;
  *(v33 - 128) = &a22;
  *(v33 - 120) = a14;
  JUMPOUT(0x1A23EB148);
}

uint64_t sub_1A23F0600()
{
  v5 = (*(v2 + 24) ^ v0) - 1051580342;
  v7 = ((349 * ((v1 + 937006364) & 0xC826633D ^ 0x21F) - 697) & *(v3 + 20)) == 0 && v5 < 0xFFFFFFBF;
  return (*(v4 + 8 * (((4 * v7) | (16 * v7)) ^ v1)))();
}

uint64_t sub_1A23F06AC(unsigned int *a1)
{
  *(a1 + v1 + 4) = 0;
  *a1 = v1;
  return 0;
}

uint64_t sub_1A23F06F8(uint64_t a1, uint64_t a2)
{
  qword_1EB0948C8 = 1922045707 * ((qword_1EB0948C8 - &v6 + qword_1EB094620) ^ 0x21D37FB25A3D4D43);
  qword_1EB094620 = qword_1EB0948C8;
  v2 = *(a2 + 4);
  v3 = *(&off_1F14948E0 + (unk_1A273D75C ^ 0xE1u) + 130) - 8;
  if (v2 == 2044285009)
  {
    __asm { BRAA            X1, X17 }
  }

  if (v2 == 2044285016)
  {
    v4 = **(a2 + 8) - 9;
    __asm { BRAA            X1, X17 }
  }

  return 4294925278;
}

uint64_t sub_1A23F0B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, unsigned int a53)
{
  (*(v55 + 8 * (v53 ^ 0x986)))();
  LODWORD(STACK[0x284]) = v54;
  return (*(v55 + 8 * ((((v53 ^ 0x67C) - 1145) * v56) ^ (v53 + 309))))(a53, 1718356402);
}

uint64_t sub_1A23F0C6C(uint64_t a1)
{
  v10 = v2 + 8;
  *(v6 + (v10 ^ 0xFFFFFFFFFFFFF9D5 ^ v5) + v1) = vadd_s8(vadd_s8(*(v3 + (v10 ^ 0xFFFFFFFFFFFFF9D5 ^ v5) + v1), v9), vmvn_s8(vand_s8(vadd_s8(*(v3 + (v10 ^ 0xFFFFFFFFFFFFF9D5 ^ v5) + v1), *(v3 + (v10 ^ 0xFFFFFFFFFFFFF9D5 ^ v5) + v1)), v8)));
  return (*(v7 + 8 * ((115 * (a1 == v10)) ^ v4)))();
}

uint64_t sub_1A23F0CAC()
{
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[398];
  v7 = *(v3 + 4 * (v5 & 1));
  *v1 = v1[397] ^ ((v4 & 0x7FFFFFFE | *v1 & 0x80000000) >> 1) ^ *(v3 + 4 * (v4 & 1));
  v1[v0 + 1285 - 1563] = v6 ^ ((v5 & 0x7FFFFFFE | v4 & 0x80000000) >> 1) ^ v7;
  return (*(v2 + 8 * (v0 + 1537)))();
}

void sub_1A23F0CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  *(a34 + 52) += (v34 + 2059336428) & 0x854103DE ^ 0x2CD;
  LODWORD(STACK[0x43C]) = *(a34 + 360);
  JUMPOUT(0x1A23F0CF4);
}

uint64_t sub_1A23F0D44()
{
  v4 = v0 + 1079;
  v5 = (v0 - 574) | 9;
  v6 = ((((v3 - 192) | 0xABE8FD83) - (v3 - 192) + ((v3 - 192) & 0x54170278)) ^ 0xBF436BFB) * v1;
  *(v3 - 184) = 0;
  *(v3 - 176) = &STACK[0x250];
  *(v3 - 168) = v6 ^ 0x52840B2D;
  *(v3 - 160) = &STACK[0x26C];
  *(v3 - 192) = v6 + v0 + 1079 - 1257;
  v7 = (*(v2 + 8 * (v0 + 2340)))(v3 - 192);
  return (*(v2 + 8 * ((13 * (*(v3 - 152) != (v5 ^ 0x6F0F463E))) ^ v4)))(v7);
}

uint64_t sub_1A23F0E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unsigned int a20)
{
  v26 = 1388665877 * ((((2 * &a17) | 0xC9F32D24) - &a17 - 1694078610) ^ 0xE954F47E);
  LODWORD(a17) = v26 ^ (199880445 * v23 + 103127814);
  a18 = a12;
  HIDWORD(a19) = v26 + v25 + 2392;
  (*(v24 + 8 * (v25 + 2482)))(&a17);
  v27 = 1037613739 * (((&a17 | 0x585DDE7D) - (&a17 & 0x585DDE7D)) ^ 0x895FF302);
  a20 = ((v22 ^ 0xBFBDDFFD) + v25 + 473 + ((2 * v22) & 0x7F7BBFFA) + 2129654822) ^ v27;
  a19 = v21;
  LODWORD(a18) = v25 - v27 + 3;
  a17 = a12;
  v28 = (*(v24 + 8 * (v25 + 2494)))(&a17);
  return (*(v24 + 8 * ((231 * (HIDWORD(a18) == v20)) ^ v25)))(v28);
}

uint64_t sub_1A23F0F5C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22, int a23, unsigned int a24, uint64_t a25)
{
  v28 = 896639297 * (&a22 ^ 0x14AB9678);
  a24 = (v27 + (((v27 ^ 0x32F) + (a4 & 0xFFFFFFF0)) ^ 0x4BFFDB55) + ((2 * ((v27 ^ 0x32F) + (a4 & 0xFFFFFFF0))) & 0x97FFB6A0) - 8871312) ^ v28;
  a22 = (((a4 - a13 + 17927676) ^ 0xFFFFFDB7) + 2129389519 + ((2 * (a4 - a13 + 17927676)) & 0xFFFFFB6E)) ^ v28;
  a23 = (v27 + 1546) ^ v28;
  a25 = v25;
  v29 = (*(v26 + 8 * (v27 + 2010)))(&a22);
  return (*(v26 + 8 * ((2745 * (*(v25 + 24) == 1863271989)) ^ v27)))(v29);
}

uint64_t sub_1A23F104C()
{
  LODWORD(STACK[0x404]) = -12787669;
  LODWORD(STACK[0x214]) = 128;
  v3 = STACK[0x2C8] + 528;
  v4 = STACK[0x2C8] + 800;
  v5 = STACK[0x288];
  v6 = STACK[0x380];
  v7 = 143681137 * ((v2 - 192) ^ 0x613AB748);
  *(v2 - 192) = (v0 + 917) ^ v7;
  *(v2 - 176) = v7 ^ 0x25FE89CC;
  *(v2 - 184) = v4;
  *(v2 - 152) = v6;
  *(v2 - 144) = 0;
  *(v2 - 136) = &STACK[0x214];
  *(v2 - 128) = 0;
  *(v2 - 168) = v5;
  *(v2 - 160) = v3;
  v8 = (*(v1 + 8 * (v0 + 1405)))(v2 - 192);
  return (*(v1 + 8 * (((*(v2 - 188) == ((v0 - 230) | 0x261) + 1863270086) * (((v0 - 867101447) & 0x33AEE7DE) - 156)) ^ v0)))(v8);
}

uint64_t sub_1A23F1138(uint64_t result)
{
  v1 = 143681137 * ((result - 2 * (result & 0x4355A96EC1F4D40CLL) + 0x4355A96EC1F4D40CLL) ^ 0xA38366CDA0CE6344);
  v2 = *(result + 16) + v1;
  v3 = *(result + 8) ^ v1;
  v4 = *result + 143681137 * ((result - 2 * (result & 0xC1F4D40C) - 1040919540) ^ 0xA0CE6344);
  v5 = v2 < v3;
  v6 = v2 < v3;
  v7 = v5;
  if ((*(result + 32) + 143681137 * ((result - 2 * (result & 0xC1F4D40C) - 1040919540) ^ 0xA0CE6344)))
  {
    v6 = v7;
  }

  if (!v6)
  {
    v4 = *(result + 40) ^ (143681137 * ((result - 2 * (result & 0xC1F4D40C) - 1040919540) ^ 0xA0CE6344));
  }

  *(result + 28) = v4 ^ (*(result + 24) + 143681137 * ((result - 2 * (result & 0xC1F4D40C) - 1040919540) ^ 0xA0CE6344));
  return result;
}

uint64_t sub_1A23F1234(_DWORD *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1 + 896639297 * ((((2 * a1) | 0xAB36FC72) - a1 - 1436253753) ^ 0x4130E841);
  v3 = *(*(&off_1F14948E0 + (v1 ^ 0x88030A50)) - 4);
  v4 = v1 + 2013067420 + 143681137 * (((&v3 | 0xDD2601B3) - &v3 + (&v3 & 0x22D9FE48)) ^ 0xBC1CB6FB);
  return (*(*(&off_1F14948E0 + (v1 ^ 0x88030A5F)) + (v1 + 2013069458) - 1))(&v3);
}

void lCUad()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 + dword_1EB094648) ^ 0x43)) ^ byte_1A2739820[byte_1A2733420[(11 * ((qword_1EB094620 + dword_1EB094648) ^ 0x43))] ^ 0x1B]) - 25);
  v1 = *(&off_1F14948E0 + (*(off_1F1494B60 + ((*off_1F1494B98)[(11 * ((qword_1EB094620 + *v0) ^ 0x43))] ^ 0xABu) - 12) ^ (11 * ((qword_1EB094620 + *v0) ^ 0x43))) - 20);
  v2 = 1922045707 * ((*(v1 - 4) - *v0 - &v4) ^ 0x21D37FB25A3D4D43);
  *v0 = v2;
  *(v1 - 4) = v2;
  v5[1] = (210068311 * (((v5 | 0x3E08249B) - v5 + (v5 & 0xC1F7DB60)) ^ 0xACDE1B3F)) ^ 0x48449A90;
  LOBYTE(v1) = 11 * ((*(v1 - 4) - *v0) ^ 0x43);
  v3 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 + dword_1EB094648) ^ 0x43)) ^ byte_1A273D510[byte_1A2739520[(11 * ((qword_1EB094620 + dword_1EB094648) ^ 0x43))] ^ 0x73]) + 36) - 8;
  (*&v3[8 * (*(off_1F1494A90 + (*(off_1F1494EA0 + v1 - 8) ^ 0xAEu)) ^ v1) + 21616])(v5);
  __asm { BRAA            X8, X17 }
}

void sub_1A23F15AC(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *a1 + 843532609 * (((a1 | 0xB8044663) - a1 + (a1 & 0x47FBB99C)) ^ 0xA8B8313D);
  v2 = *(a1 + 8);
  v6 = v1 - 896639297 * ((&v4 & 0x1F8F569E | ~(&v4 | 0x1F8F569E)) ^ 0xF4DB3F19) + 1198;
  v4 = v2;
  v3 = *(&off_1F14948E0 + v1 - 344) - 8;
  (*&v3[8 * (v1 ^ 0xAA6)])(&v4);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23F16C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v11 = *(a3 + 8);
  v12 = (*(v11 + 4 * v4) ^ v5) + HIDWORD(a2);
  *(v11 + 4 * v4) = v12 + v8 - ((v3 ^ v6 ^ (v10 + 651)) & (2 * v12));
  return (*(v9 + 8 * (((v4 + 1 == a1) * v7) ^ v3)))();
}

uint64_t sub_1A23F174C@<X0>(int a1@<W5>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  v43 = (v41 + 4 * a2);
  v44 = v39 & 0x80000000;
  v45 = a2 + 1;
  v46 = *(v41 + 4 * v45);
  v47 = v43[397] ^ ((v46 & ((v38 + 414) ^ 0x7FFFF92A) | v44) >> 1);
  *v43 = (v40 + v47 - (a1 & (2 * v47))) ^ *(&a38 + (v46 & 1));
  return (*(v42 + 8 * ((102 * (v45 == 227)) ^ v38)))();
}

void sub_1A23F180C(uint64_t a1)
{
  v1 = 210068311 * (a1 ^ 0x92D63FA4);
  v2 = *(a1 + 4) + v1;
  v3 = (*(a1 + 16) ^ v1);
  if (*(a1 + 8))
  {
    v4 = v3 == 13639;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23F1A40@<X0>(unsigned int a1@<W8>)
{
  v8 = v5 + v2;
  v9 = v5 - 1;
  *(*v6 + (v1 + v9)) = *(*v6 + v8);
  return (*(v7 + 8 * (((v9 == v3) * v4) ^ a1)))();
}

uint64_t sub_1A23F1A9C@<X0>(uint64_t a1@<X3>, unsigned int a2@<W8>)
{
  v9 = a2 < v5;
  *(v8 - 252 + v2) = ((v7 + 83) & 0x3D) + *(a1 + v3) - ((2 * *(a1 + v3)) & 0x12) + 81;
  v10 = v3 + 1;
  if (v9 == v10 > v4)
  {
    v9 = v10 + v5 < a2;
  }

  return (*(v6 + 8 * (((2 * !v9) | (16 * !v9)) ^ v7)))();
}

uint64_t sub_1A23F1CE4@<X0>(uint64_t a1@<X8>)
{
  v7 = v5 - a1;
  *(v7 + 91) = ((a1 + v3) ^ v4 ^ v2) * (a1 + v3 + 17);
  *(v7 + 90) = ((a1 + v3) ^ 0xBB) * (a1 + v3 + 18);
  return (*(v6 + 8 * (((16 * (a1 == 90)) | ((a1 == 90) << 7)) ^ v1)))(0);
}

uint64_t sub_1A23F2230(__n128 a1)
{
  v4[-1] = a1;
  *v4 = a1;
  return (*(v5 + 8 * (((v3 == 0) * v2) ^ v1)))();
}

uint64_t sub_1A23F2374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  v44 = 1785193651 * ((-1087683630 - ((v43 - 176) | 0xBF2B43D2) + ((v43 - 176) | 0x40D4BC2D)) ^ 0xC364363B);
  *(v43 - 168) = a2;
  *(v43 - 176) = a5 - v44 + 1288;
  *(v43 - 160) = a11 - v44;
  v45 = (*(v42 + 8 * (a5 ^ 0xB2A)))(v43 - 176);
  v46 = a42 & 0x3F;
  *(&a33 + v46) = 9;
  return (*(v42 + 8 * (((v46 > 0x37) * (a5 + 260)) ^ a5)))(v45);
}

uint64_t sub_1A23F25D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18)
{
  *a4 = 0;
  *a5 = 0;
  a18 = (210068311 * (&a17 ^ 0x92D63FA4)) ^ 0x48449A90;
  v21 = (*(v19 + 22400))(&a17);
  return (*(v19 + 8 * ((2522 * (a17 == v18)) ^ v20)))(v21);
}

void bcn5Uck5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v7 = a6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = !v7 && a7 != 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1A23F270C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 16) + 146528754;
  v4 = *(a1 + 12) - 882472413;
  v5 = v3 < 0x9CD67E6;
  v6 = v3 > v4;
  if (v5 != v4 < (v2 ^ 0x9CD64E0u))
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return (*(v1 + 8 * ((!v7 * (v2 - 756)) ^ v2)))();
}

void sub_1A23F2858(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = *(v8 - 156);
  if (v9 == 1)
  {
    v13 = *(v8 - 188);
    v12 = *(v8 - 184);
    *(v8 - 196) = (((a8 + 125) & 0xA9 ^ 0x69) + 8 * (v12 - ((2 * v12) & 0xFB)) - 96) ^ 0xE1;
    *(v8 - 195) = (v12 >> 5) ^ 0x89;
    *(v8 - 194) = (v12 >> 13) ^ 0x89;
    *(v8 - 193) = (v12 >> 21) ^ 0x89;
    *(v8 - 192) = ((__PAIR64__(v13, v12) >> 29) - ((2 * (__PAIR64__(v13, v12) >> 29)) & 0x42) - 95) ^ 0x28;
    *(v8 - 191) = (v13 >> 5) ^ 0x89;
    *(v8 - 190) = (v13 >> 13) ^ 0x89;
    v11 = (v13 >> 21) ^ 0xFFFFFF89;
  }

  else
  {
    if (v9 != 2)
    {
      goto LABEL_6;
    }

    v11 = *(v8 - 188);
    v10 = *(v8 - 184);
    *(v8 - 196) = (v11 >> 21) - ((v11 >> 20) & 0x12) - 119;
    *(v8 - 195) = (v11 >> 13) - ((a3 + a8 + 16) & (2 * (v11 >> 13))) - 119;
    *(v8 - 194) = (v11 >> 5) - ((v11 >> 4) & 0x12) - 119;
    *(v8 - 193) = (__PAIR64__(v11, v10) >> 29) - ((2 * (__PAIR64__(v11, v10) >> 29)) & 0x12) - 119;
    *(v8 - 192) = (~(v10 >> 20) | 0xED) + (v10 >> 21) - 118;
    *(v8 - 191) = (v10 >> 13) - ((v10 >> 12) & 0x12) - 119;
    *(v8 - 190) = (~(v10 >> 4) | 0xED) + (v10 >> 5) - 118;
    LOBYTE(v11) = (8 * (v10 - ((2 * v10) & 8)) + 32) ^ 0xA9;
  }

  *(v8 - 189) = v11;
LABEL_6:
  JUMPOUT(0x1A23DDEE8);
}

uint64_t sub_1A23F2DB8@<X0>(uint64_t a1@<X0>, int a2@<W4>, int a3@<W5>, uint64_t a4@<X8>)
{
  v7 = (a1 + v4 - 16);
  v8 = (a4 + v4 - 16);
  v9.i64[0] = 0x8989898989898989;
  v9.i64[1] = 0x8989898989898989;
  v10 = veorq_s8(*v8, v9);
  v7[-1] = veorq_s8(v8[-1], v9);
  *v7 = v10;
  return (*(v6 + 8 * ((((v4 & 0xFFFFFFE0) == 32) * (v5 ^ (a3 + 1011) ^ 0xFBF)) ^ (a2 + v5 + 944))))();
}

uint64_t sub_1A23F2E14@<X0>(uint64_t a1@<X0>, char a2@<W3>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28)
{
  v31 = *(&a16 + a3 + 72);
  v32 = ((2 * a3) & 0xFCFEFFD8) + (a3 ^ 0xFE7F7FEE) + v28;
  *(a1 + v32) = v31 ^ 0xF9;
  *(a1 + v32 + 1) = ((v29 - a2 - 23) ^ BYTE1(v31)) - ((v31 >> 7) & 0x12) - 119;
  *(a1 + v32 + 2) = (BYTE2(v31) ^ 0xD5) - 2 * ((BYTE2(v31) ^ 0xD5) & 0xB ^ BYTE2(v31) & 2) - 119;
  *(a1 + v32 + 3) = (HIBYTE(v31) ^ 0x3B) - ((2 * (HIBYTE(v31) ^ 0x3B)) & 0x12) - 119;
  return (*(v30 + 8 * ((55 * (a3 + 4 < a28)) ^ v29)))();
}

uint64_t sub_1A23F2EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v31 = *(v27 + 4 * (v26 - 1));
  *(v27 + 4 * v26) = ((1566083941 * (v31 ^ (v31 >> 30))) ^ *(v27 + 4 * v26)) - v26;
  *(v29 + 40) = v26 + 1 + a25;
  *(v30 - 136) = a25 ^ (v25 - 1751077795) ^ 0x7C;
  *(v30 - 132) = 1 - a25;
  *(v29 + 8) = a25 + 623;
  v32 = v25 - 1751077795 - a25;
  *(v30 - 128) = v32;
  *(v30 - 144) = a25 + v25 - 2030744951;
  *(v30 - 140) = v32 + 13;
  v33 = (*(v28 + 8 * (v25 ^ 0xA23)))(v30 - 152);
  return (*(v28 + 8 * *(v30 - 112)))(v33);
}

uint64_t sub_1A23F2F88@<X0>(uint64_t a1@<X8>)
{
  v9 = v1 - 1 + (*(*(v7 + 8) + 4 * v2) ^ v4);
  *(*(a1 + 8) + 4 * v2) = v9 + v4 - ((v6 + 179 * (v3 ^ 0x16E) - 537) & (2 * v9));
  return (*(v5 + 8 * ((2353 * (v2 + 1 == v8)) ^ v3)))();
}

uint64_t sub_1A23F3040@<X0>(int a1@<W4>, uint64_t a2@<X8>)
{
  v6 = *(a2 + v3 - 15);
  *(a2 + v4 + 1136) = *(a2 + v3 - 31);
  *(a2 + v4 + 1152) = v6;
  return (*(v2 + 8 * ((891 * ((((a2 & 0x7FFFFFE0) == 32) ^ (v5 + a1 - 58)) & 1)) ^ (v5 + a1 + 804))))();
}

uint64_t sub_1A23F30C8(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 24);
  return 0;
}

uint64_t sub_1A23F30E0(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = 1388665877 * ((-2 - ((a1 | 0xD3DFA21E) + (~a1 | 0x2C205DE1))) ^ 0xA18D3F0D);
  v3 = *(a1 + 52) ^ v2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v7 = *a1;
  v8 = (*(a1 + 8) ^ v2) - 353412061;
  v9 = 1564307779 * ((2061209758 - (&v11 | 0x7ADB909E) + (&v11 | 0x85246F61)) ^ 0x1229A372);
  v3 += 542396665;
  v16 = v3 + v9 + 611;
  v15 = v6;
  v11 = v5;
  v13 = v7;
  v14 = v8 ^ v9;
  v17 = v4;
  result = (*(*(&off_1F14948E0 + v3) + v3 + 2620))(&v11);
  *(a1 + 48) = v12;
  return result;
}

uint64_t sub_1A23F32A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v29 - 120) = v22;
  *(v29 - 112) = &a22;
  *(v29 - 136) = v28 + ((~((v29 - 144) | 0xE73C7771) + ((v29 - 144) & 0xE73C7771)) ^ 0x79F93FC6) * v25 + 339;
  *(v29 - 128) = &a22;
  *(v29 - 144) = v27;
  (*(v23 + 8 * (v28 ^ 0xAE1)))(v29 - 144);
  v30 = ((~((v29 - 144) | 0xE50C9804) + ((v29 - 144) & 0xE50C9804)) ^ 0x9943EDED) * v24;
  *(v29 - 128) = v30 + v28 + 340;
  *(v29 - 140) = ((v26 - 1) ^ (((v26 - 1) ^ 0xD582F7E0) + 841744112) ^ (((v26 - 1) ^ 0x727DA049) + (((v28 ^ 0x1AD) + 584) ^ 0x95D4AB0A)) ^ (((v26 - 1) ^ 0xFD6FEFF7) + 449242873) ^ 0x68F37D2 ^ (((v26 - 1) ^ 0x42C64EAE) + ((71 * (v28 ^ 0x1AD)) ^ 0xA56F46C1))) - v30;
  *(v29 - 136) = a15;
  v31 = (*(v23 + 8 * (v28 ^ 0xA9E)))(v29 - 144);
  return (*(v23 + 8 * ((904 * (*(v29 - 144) == -147050827)) ^ v28)))(v31);
}

void sub_1A23F3438(uint64_t a1)
{
  v1 = *(a1 + 12) ^ (1037613739 * (((a1 | 0xBC4B3E54) - (a1 | 0x43B4C1AB) + 1135919531) ^ 0x6D49132B));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1A23F354C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = v18 + ((-1831056605 - (&a14 | 0x92DC4B23) + (&a14 | 0x6D23B4DC)) ^ 0xFFF58B78) * v19 + 107;
  v20 = (*(v16 + 8 * (v18 ^ 0x987)))(&a14);
  return (*(v16 + 8 * (((a15 == v17) * (((v18 - 522) | 4) + 94)) ^ v18)))(v20);
}

uint64_t sub_1A23F3688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, char a16, int a17, int a18, char a19, unsigned int a20, int a21, uint64_t a22, char *a23, int *a24, int a25, char *a26, char *a27)
{
  a15 = 164714449;
  v29 = *(a2 + 4);
  v30 = *(a2 + 8);
  v31 = 1556366573 * ((2 * (&a20 & 0x2958B318) - &a20 + 1453804774) ^ 0x32436F0C);
  a24 = &a15;
  a22 = v30;
  a23 = &a14;
  a20 = v29 - v31 + ((113 * (v27 ^ 0x57A)) ^ 0xCE28ADF8);
  a26 = &a19;
  a27 = &a16;
  a25 = v27 - v31 - 953;
  v33 = (*(v28 + 8 * (v27 + 1495)))(&a20);
  return (*(v28 + 8 * ((3573 * (a21 == 1863271989)) ^ v27)))(v33, a2);
}

void sub_1A23F3E20(uint64_t a1)
{
  v1 = *(a1 + 24) ^ (843532609 * ((a1 + 963887202 - 2 * (a1 & 0x3973C062)) ^ 0x29CFB73C));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1A23F3F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  *(v25 - 144) = a13;
  *(v25 - 120) = a14;
  *(v25 - 112) = &a22;
  *(v25 - 136) = v24 + 503 + 143681137 * ((339947332 - ((v25 - 144) | 0x14432F44) + ((v25 - 144) | 0xEBBCD0BB)) ^ 0x8A8667F3);
  *(v25 - 128) = &a22;
  (*(v22 + 8 * (v24 ^ 0xA4D)))(v25 - 144);
  *(v25 - 120) = a14;
  *(v25 - 112) = &a22;
  *(v25 - 136) = v24 + 503 + 143681137 * ((v25 - 976799490 - 2 * ((v25 - 144) & 0xC5C7398E)) ^ 0xA4FD8EC6);
  *(v25 - 144) = a13;
  *(v25 - 128) = &a22;
  (*(v22 + 8 * (v24 ^ 0xA4D)))(v25 - 144);
  v26 = 1785193651 * ((((2 * (v25 - 144)) | 0x6652CEE4) - (v25 - 144) - 858351474) ^ 0xB099ED64);
  *(v25 - 136) = a15;
  *(v25 - 140) = 109234736 - v26 + v23 - ((2 * v23 + 257036828) & 0x3DB38244) + (v24 ^ 0x1A9) + 371 - 544;
  *(v25 - 128) = v26 + v24 + 504;
  v27 = (*(v22 + 8 * (v24 + 2610)))(v25 - 144);
  return (*(v22 + 8 * ((44 * (*(v25 - 144) != -147050827)) ^ v24)))(v27);
}

uint64_t sub_1A23F4424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v48 = STACK[0x41C];
  *(STACK[0x488] + 4 * (((((v48 ^ 0xBCA2FF83) + 979903281) ^ v48 ^ ((a7 ^ 0x43F) + 621339338 + (v48 ^ 0xA3C2350F)) ^ ((v48 ^ 0x99BC167F) + 527878861) ^ ((v48 ^ 0xFFE9FFBF) + 2032345869)) >> 2) ^ 0x1E4D48D3)) = v47;
  LODWORD(STACK[0x41C]) = v48 + 4;
  return (*(v46 + 8 * ((((v48 + 4 + v45) < 0x40) * (((a7 ^ 0x43F) - 659) ^ 0x46E ^ (((a7 ^ 0x43F) - 659) | 0x28D) ^ 0xA59)) ^ a7 ^ 0x43F)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44);
}

uint64_t sub_1A23F452C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, int a14, int a15, int a16, uint64_t a17, char *a18)
{
  v21 = 143681137 * (((&a13 | 0xCA281077) - &a13 + (&a13 & 0x35D7EF88)) ^ 0xAB12A73F);
  a15 = v21 ^ 0x446D7C1B;
  a17 = a9;
  a18 = &a11;
  a13 = v21 ^ 0x6163ACC5;
  a14 = v21 + 1421511971 + v20;
  v22 = (*(v18 + 8 * (v20 ^ 0x908u)))(&a13);
  return (*(v18 + 8 * (((((v20 + 55) ^ (a16 == v19)) & 1) * (((v20 - 30) | 0x69) - 498)) ^ v20)))(v22);
}

uint64_t sub_1A23F46A4()
{
  v8 = (v5 + v4 + v1);
  *v8 = v7;
  v8[1] = v7;
  return (*(v6 + 8 * ((v4 + v3 - 2068 == v2) | (2 * (v4 + v3 - 2068 == v2)) | v0)))();
}

void zxcm2Qme0x(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *(&off_1F14948E0 + (*(off_1F1494B60 + ((*off_1F1494B98)[(11 * ((qword_1EB094620 - dword_1EB094628) ^ 0x43))] ^ 0xE6u) - 12) ^ (11 * ((qword_1EB094620 - dword_1EB094628) ^ 0x43))) - 138);
  v5 = *(v4 - 4);
  v6 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 - v5) ^ 0x43)) ^ *(off_1F1494B60 + ((*off_1F1494B98)[(11 * ((qword_1EB094620 - v5) ^ 0x43))] ^ 0xE6u) - 12)) + 6);
  v7 = *(v6 - 4) - v5 - &v12;
  *(v4 - 4) = (1922045707 * v7) ^ 0x21D37FB25A3D4D43;
  *(v6 - 4) = 1922045707 * (v7 ^ 0x21D37FB25A3D4D43);
  v10 = 0;
  v13 = &v10;
  v14 = 1380333833 * (((&v13 | 0x1F963DF) - (&v13 & 0x1F963DF)) ^ 0xBFABC855) - 1224077185;
  v8 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 - dword_1EB094628) ^ 0x43)) ^ byte_1A2730B50[byte_1A273D810[(11 * ((qword_1EB094620 - dword_1EB094628) ^ 0x43))] ^ 0x54]) - 27) - 8;
  (*&v8[8 * (*(off_1F1494D30 + (*(off_1F1494EC0 + (11 * ((*(v6 - 4) - *(v4 - 4)) ^ 0x43))) ^ 0x7Fu)) ^ (11 * ((*(v6 - 4) - *(v4 - 4)) ^ 0x43))) + 22368])(&v13);
  v11 = 0;
  v14 = 1380333833 * ((2 * (&v13 & 0x4E4503C8) - &v13 - 1313145802) ^ 0xFE857BC) - 1224077185;
  v13 = &v11;
  v9 = 11 * (*(v4 - 4) ^ 0x43 ^ *(v6 - 4));
  (*&v8[8 * (*(off_1F1494AC8 + (*(off_1F1494A30 + v9 - 4) ^ 0x73u) - 12) ^ v9) + 21992])(&v13);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23F54C0()
{
  v3 = (v6 - 1331) | 0x91;
  v14 = v7;
  v12 = &v9;
  v13 = (v6 - 768) ^ ((&v10 ^ 0x613AB748) * v0);
  (*(v2 + 8 * (v6 + 1181)))(&v10);
  v10 = v6 - 1556366573 * (((&v10 | 0x924C1BB) + (~&v10 | 0xF6DB3E44)) ^ 0x6DC0E250) + 1096;
  v12 = v7;
  (*(v2 + 8 * (v6 ^ 0xD41u)))(&v10);
  if (v11 == v1 + v3 - 475)
  {
    v4 = v9;
  }

  else
  {
    v4 = v11;
  }

  v10 = (v6 + 655) ^ (50899313 * (&v10 ^ 0x2ACB2A7A));
  v12 = v7;
  (*(v2 + 8 * (v6 ^ 0xD3Eu)))(&v10);
  v12 = v8;
  v10 = (v3 + 1841) ^ (50899313 * (&v10 ^ 0x2ACB2A7A));
  (*(v2 + 8 * (v3 ^ 0xA98)))(&v10);
  return v4 ^ v1;
}

uint64_t sub_1A23F5654@<X0>(_DWORD *a1@<X0>, void *a2@<X8>)
{
  v7 = *(*a2 + (v4 - 17927673)) ^ 0x89;
  v8 = ((*(*a2 + (v4 - 17927675)) ^ 0x89) << (((v5 - 4) | 8) ^ 0x1A)) + ((*(*a2 + (v4 - 17927676)) ^ 0xB ^ (v5 + 1549282553) & 0xA3A7D882) << 24) + ((*(*a2 + (v4 - 17927674)) ^ 0x89) << 8) + v7;
  return (*(v2 + 8 * ((55 * (((v8 + v3 - 2 * (v8 & (v3 + 10) ^ v7 & 0xA)) & 0xFFFFFF ^ 0xF4635) - (v6 + *a1) == -1876906721)) ^ (v5 + 1812))))();
}

uint64_t sub_1A23F574C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  v19 = 1504884919 * ((((&a12 | 0xCE6D35CC) ^ 0xFFFFFFFE) - (~&a12 | 0x3192CA33)) ^ 0xCA517D28);
  a15 = &a10;
  a13 = v16;
  a14 = -1889269338 - v19;
  a12 = v17 - v19 + 124;
  a16 = v19 ^ 0x57AA81AE;
  v20 = (*(v18 + 8 * (v17 ^ 0xAEB)))(&a12);
  return (*(v18 + 8 * ((2418 * (*(v16 + 24) == ((v17 + 2341) ^ 0x6F0F4CE4))) ^ v17)))(v20);
}

uint64_t sub_1A23F580C()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_1A23F587C(uint64_t a1, uint64_t a2)
{
  if (**(a2 + 8))
  {
    v2 = -64;
  }

  else
  {
    v2 = -66;
  }

  *(a1 + 88) = ((**(a2 + 8) != 0) ^ 0x7B) + v2;
  return 0;
}

uint64_t sub_1A23F5B58@<X0>(char a1@<W8>)
{
  v6 = v2[1];
  v7 = (v4 + v1);
  *v7 = *v2;
  v7[1] = v6;
  return (*(v5 + 8 * ((1239 * ((((v3 - 584) | 0x44u) ^ 0x64) == (a1 & 0x60))) ^ v3)))(68);
}

uint64_t sub_1A23F5BAC@<X0>(unsigned int a1@<W0>, unsigned int a2@<W8>)
{
  v9 = v4 < a1;
  *(v8 - 220 + v2) = *(v6 + v3) - ((*(v6 + v3) << (a2 + 76)) & 0x12) - 119;
  v10 = v3 + 1;
  if (v9 == v10 > v5)
  {
    v9 = v10 + a1 < v4;
  }

  return (*(v7 + 8 * (((4 * !v9) | (8 * !v9)) ^ a2)))();
}

void MaYVT0G(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = !v7 && a6 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23F5E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v26 = a12 < 0xDCBC9D76;
  if (v26 == v23 > 0x23436289)
  {
    v26 = v23 - 591618698 < a12;
  }

  return (*(v25 + 8 * ((!v26 * (6 * (v24 ^ 0x823) + 3)) ^ v24)))(a1, 27, 3675684054, 619281178, a23, &STACK[0x254]);
}

uint64_t sub_1A23F5FB8@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v4 = ((a1 - 359) | 0x223) + *(a2 + 4) - 1302715138;
  v5 = (v2 - 1302714587 < -2061005981) ^ (v4 < -2061005981);
  v6 = v2 - 1302714587 > v4;
  if (v5)
  {
    v6 = v2 - 1302714587 < -2061005981;
  }

  return (*(v3 + 8 * ((v6 * (29 * (a1 ^ 0x178) + 2436)) ^ a1)))();
}

uint64_t sub_1A23F6034@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v3 + v5) - ((*(v3 + v5) << ((((v1 - 12) | 0x39) ^ 0x40) & 0xC7)) & 0x12) - 119;
  return (*(v4 + 8 * ((63 * (v5 == 0)) ^ v1)))();
}

uint64_t sub_1A23F6088()
{
  v7 = v3 - 1;
  *(v6 + v7) ^= *(v2 + (v7 & 0xF)) ^ *((v7 & 0xF) + v1 + 3) ^ (97 * (v7 & 0xF)) ^ *((v7 & 0xF) + v0 + 5) ^ 0x89;
  return (*(v5 + 8 * ((2767 * (v7 == 0)) ^ (v4 - 128))))();
}

uint64_t sub_1A23F611C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  v48 = ((v46 - 424) ^ ((v46 - 1203) | 8u) ^ 0xFFFFFFFFFFFFF8FALL) + a46;
  v49 = __CFADD__(a1, v48);
  v50 = HIDWORD(v48);
  v52 = v49 || v50 != 0;
  return (*(v47 + 8 * (((2 * v52) | (8 * v52)) ^ v46)))();
}

uint64_t sub_1A23F618C()
{
  v2 = v0 | 0x808;
  v3 = LODWORD(STACK[0x43C]) + ((v0 | 0x808) ^ 0xFFFFF6A5) < (((v0 | 0x808) - 1678) ^ 0x2CEu);
  return (*(v1 + 8 * (((2 * v3) | (4 * v3)) ^ v2)))();
}

void sub_1A23F61DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, char *a21, char *a22, int a23, uint64_t a24)
{
  a23 = (v24 - 112) ^ (843532609 * ((&a20 - 2041393732 - 2 * (&a20 & 0x8652CDBC)) ^ 0x96EEBAE2));
  a24 = a15;
  a21 = &a14;
  a22 = &a16;
  (*(v25 + 8 * (v24 ^ 0xA2Bu)))(&a20);
  JUMPOUT(0x1A23EFA18);
}

void sub_1A23F6254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, _DWORD *a25)
{
  *a25 = 64;
  *(v28 + 252) = 1389192254;
  *(v28 + 256) = v28 + 264;
  v42 = v28 + 520;
  *(v28 + 520) = 0x52CD643E00000040;
  *(v28 + 528) = v28 + 536;
  v43 = v28 + 792;
  *(v28 + 792) = 0x52CD643E00000040;
  *(v28 + 800) = v28 + 808;
  v44 = v28 + 1064;
  *(v28 + 1064) = 0x52CD643E00000040;
  *(v28 + 1072) = v28 + 1080;
  v45 = v28 + 1336;
  *(v28 + 1336) = 0x52CD643E00000040;
  *(v28 + 1344) = v28 + 1352;
  v30 = STACK[0x338] + 4;
  v31 = v25 + 1367;
  v32 = 1504884919 * ((-1095089203 - ((v29 - 192) | 0xBEBA43CD) + ((v29 - 192) | 0x4145BC32)) ^ 0xBA860B29);
  *(v29 - 188) = -1363192052 - v32 + ((v25 - 944269485) & 0x38486ACC) + (((v27 ^ 0x8AF1E061) + 1963859871) ^ ((v27 ^ 0x67922933) - 1737632051) ^ ((v27 ^ 0x826C8F67) + 2106814617)) - 716;
  *(v29 - 184) = v30;
  *(v29 - 176) = a25;
  *(v29 - 168) = v25 + 1367 - v32;
  (*(v26 + 8 * (v25 ^ 0xBEC)))(v29 - 192);
  v33 = v27 ^ 0x6F0F4635u;
  v34 = v30 + v33;
  v35 = 1504884919 * ((-1765695564 - ((v29 - 192) | 0x96C19FB4) + ((v29 - 192) | 0x693E604B)) ^ 0x92FDD750);
  *(v29 - 188) = (((v27 ^ 0xE8A7CA67) + 391656857) ^ ((v27 ^ 0x794CC1A6) - 2035073446) ^ ((v27 ^ 0xFEE44DF4) + 18592268)) - v35 - 1363192052;
  *(v29 - 168) = v25 + 1367 - v35;
  *(v29 - 184) = v34;
  *(v29 - 176) = v42;
  LODWORD(v42) = v25 + 2708;
  (*(v26 + 8 * (v25 + 2708)))(v29 - 192);
  v36 = v34 + v33;
  v37 = 1504884919 * ((-558500029 - ((v29 - 192) | 0xDEB5F743) + ((v29 - 192) | 0x214A08BC)) ^ 0xDA89BFA7);
  *(v29 - 188) = (((v27 ^ 0x83EF84) - 8646532) ^ ((v27 ^ 0xB25A966E) + 1302686098) ^ ((v27 ^ 0xDDD63FDF) + 573161505)) - v37 - 1363192052;
  *(v29 - 168) = v25 + 1367 - v37;
  *(v29 - 184) = v36;
  *(v29 - 176) = v43;
  v38 = v25 ^ 0xBEC;
  (*(v26 + 8 * v38))(v29 - 192);
  v39 = v36 + v33;
  v40 = 1504884919 * ((2 * ((v29 - 192) & 0x5B07B118) - (v29 - 192) + 620252899) ^ 0xDF3BF9F8);
  *(v29 - 168) = v31 - v40;
  *(v29 - 184) = v39;
  *(v29 - 176) = v44;
  *(v29 - 188) = (((v27 ^ 0xE47EBCB3) + 461456205) ^ ((v27 ^ 0x9004EB5C) + 1878725796) ^ ((v27 ^ 0x1B7511DA) - 460657114)) - v40 - 1363192052;
  (*(v26 + 8 * v42))(v29 - 192);
  v41 = 1504884919 * ((2024850754 - ((v29 - 192) | 0x78B0C542) + ((v29 - 192) | 0x874F3ABD)) ^ 0x7C8C8DA6);
  *(v29 - 168) = v31 - v41;
  *(v29 - 188) = (((v27 ^ 0x3A06B71F) - 973518623) ^ ((v27 ^ 0xC2F51112) + 1024126702) ^ ((v27 ^ 0x97FCE038) + 1745035208)) - v41 - 1363192052;
  *(v29 - 184) = v39 + v33;
  *(v29 - 176) = v45;
  (*(v26 + 8 * v38))(v29 - 192);
  JUMPOUT(0x1A23DFC08);
}

uint64_t sub_1A23F6718@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8)
{
  a8 = a1;
  a7 = (v10 + v11 + 1583) ^ (((&a7 & 0x8B67EEE7 | ~(&a7 | 0x8B67EEE7)) ^ 0x5E533B62) * v8);
  v12 = (*(v9 + 8 * (v10 + v11 + 2150)))(&a7);
  return (*(v9 + 8 * (((a5 == 0) * (((v11 + 984503099) & 0x11B127FB) - 323)) ^ (v11 + v10))))(v12);
}

void sub_1A23F680C(uint64_t a1)
{
  v1 = *(a1 + 8) + 1037613739 * (a1 ^ 0xD1022D7F);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1A23F68AC()
{
  v4 = 191 * (v0 ^ 0x40E);
  v9 = v7;
  v8 = (v0 + 1283) ^ (50899313 * ((((2 * &v8) | 0xC4B3E65A) - &v8 + 497421523) ^ 0xC892D957));
  (*(v2 + 8 * (v0 + 1850)))(&v8);
  v9 = v6;
  v8 = (v4 + 979) ^ (50899313 * (((&v8 ^ 0xA2115331 | 0x5DCE244E) + (&v8 ^ 0x1402240E | 0xA231DBB1)) ^ 0x9CD85D44));
  (*(v2 + 8 * (v4 + 1546)))(&v8);
  return v3 ^ v1;
}

uint64_t sub_1A23F69D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, int a13, unsigned int a14)
{
  a12 = &a10;
  a14 = (((&a12 | 0xCAE49A35) - &a12 + (&a12 & 0x351B65C8)) ^ 0x5832A591) * v16 + 789;
  v17 = (*(v15 + 22888))(&a12);
  return (*(v15 + 8 * ((1648 * (a13 == v14)) | 0x10Cu)))(v17);
}

void sub_1A23F6A7C(int a1@<W8>, unsigned int a2, uint64_t a3, int a4)
{
  v8 = (((&a2 | 0x7FE486C7) - &a2 + (&a2 & 0x801B7938)) ^ 0x6F58F199) * v6;
  a4 = ((v7 ^ 0xA9E) + 128) ^ v8;
  a2 = -436917702 - (v8 + a1) - ((300437222 - (a1 << (((v7 ^ 0x9E) - 6) & 0x9F ^ 0x1C))) & 0xBA02058E);
  a3 = v4;
  (*(v5 + 8 * ((v7 ^ 0xA9E) + 2282)))(&a2);
  JUMPOUT(0x1A23F6B30);
}

uint64_t sub_1A23F6B88(unsigned int a1)
{
  v8 = (v4 - 1) & 0xF;
  v12 = (1 - v7 + v3 - v4 + v8) < 0x10 || v5 < ((a1 - 294) ^ 0x2FEuLL) || (1 - v7 + v1 - v4 + v8) < 0x10 || v2 - v7 - v4 + v8 + ((a1 - 1711695205) & 0x66066BDF ^ 0xA8EuLL) < 0x10;
  return (*(v6 + 8 * ((116 * v12) ^ a1)))();
}

uint64_t sub_1A23F6C20@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v6 = (v4 - 961) | 0x10;
  v7 = v6 - 101;
  *(*(a2 + 8) + 4 * (((v6 - 101) ^ (v3 - 428)) + a1)) = v5 ^ 0xD1EBA8D1 ^ v6;
  *(a2 + 4) = a1 + 1;
  v8 = a1 + 1 + v3;
  if (v8 < 0)
  {
    v8 = -v8;
  }

  return (*(v2 + 8 * ((3172 * (((v8 ^ ((v7 ^ 0x701) - 621847126)) + ((2 * v8) & 0xB5DEC8FE) + 621845376) > ((67 * (v7 ^ 0x1CE) - 1222) | 0x403) - 1548)) ^ v7 ^ 0x701)))();
}

uint64_t sub_1A23F6CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, char *a13, uint64_t a14, char a15, int a16, int a17)
{
  v25 = *(v17 + 32) ^ v23;
  v26 = (((&a12 | 0x39AFFCA4) - &a12 + (&a12 & 0xC6500358)) ^ 0xB4029E48) * v21;
  a13 = &a10;
  a14 = v22;
  a15 = v25 - (((&a12 | 0xA4) - &a12 + (&a12 & 0x58)) ^ 0x48) * v21 - 8;
  a16 = (v20 + 998) ^ v26;
  a17 = (v24 + 714424221 + (v20 ^ 0x717)) ^ v26;
  v27 = (*(v19 + 8 * (v20 ^ 0xA04)))(&a12);
  return (*(v19 + 8 * ((2351 * (a12 == v18)) ^ v20)))(v27);
}

uint64_t sub_1A23F6DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = v8;
  v10 = v8 + 1;
  *(a1 + v3 + 4) = *(*(a2 + 8) + v9);
  v11 = *(a2 + 4) + v6;
  v12 = v11 < v4;
  v13 = v10 + v4 < v11;
  if (v10 > v7 != v12)
  {
    v13 = v12;
  }

  return (*(a3 + 8 * ((4 * v13) | (8 * v13) | v5)))();
}

uint64_t sub_1A23F6DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, _BYTE *a13, int a14, char a15, unsigned int a16, int a17, char *a18, unsigned int a19, _BYTE *a20)
{
  a20 = a13;
  a19 = (v22 + 653) ^ (((((&a16 | 0xEFEC4508) ^ 0xFFFFFFFE) - (~&a16 | 0x1013BAF7)) ^ 0x71290DBF) * v21);
  a18 = &a15;
  (*(v20 + 8 * (v22 ^ 0xBEA)))(&a16);
  a19 = (v22 + 653) ^ (((806195647 - (&a16 | 0x300D91BF) + (&a16 | 0xCFF26E40)) ^ 0xAEC8D908) * v21);
  a20 = a13;
  a18 = &a11;
  (*(v20 + 8 * (v22 + 2602)))(&a16);
  a16 = v22 - 1556366573 * (&a16 ^ 0x64E423EA) + 2517;
  a18 = a13;
  v23 = (*(v20 + 8 * (v22 ^ 0xBCC)))(&a16);
  return (*(v20 + 8 * (((a17 != (((v22 - 70) | 0x200) ^ 0x6F0F449F)) * ((v22 + 3) ^ 0xF0)) ^ v22)))(v23);
}

uint64_t sub_1A23F6FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20)
{
  *a6 = 0;
  *a7 = 0;
  a20 = (210068311 * ((&a19 & 0xE30378C9 | ~(&a19 | 0xE30378C9)) ^ 0x8E2AB892)) ^ 0x48449A90;
  v21 = (*(v20 + 22400))(&a19);
  return (*(v20 + 8 * ((53 * (a19 == 1863271989)) ^ 0x194u)))(v21);
}

uint64_t sub_1A23F71B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24)
{
  v27 = (*(v26 + 8 * (v24 + 1506)))();
  LODWORD(STACK[0x460]) = v25;
  return (*(v26 + 8 * ((231 * (((v25 == (v24 ^ 0x7A4 ^ a24)) ^ (-77 * (v24 ^ 0x6C) + 1)) & 1)) ^ v24)))(v27);
}

uint64_t sub_1A23F725C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, _DWORD *a14)
{
  v18 = 1380333833 * ((((2 * (v16 - 128)) | 0x8B7ED7D4) - (v16 - 128) - 1170172906) ^ 0xFBEDC060);
  v19 = (*a14 ^ 0x3198BE60) * *(*(a11 + 8) + 16);
  *(v16 - 112) = (v19 ^ (((v14 - 18) | 0x12) - 470288596)) - v18 + ((2 * v19) & 0xC7EFF67E) + 2109720060;
  *(v16 - 120) = &a13;
  *(v16 - 128) = v14 + 1404 - v18 - 1896;
  *(v16 - 124) = 1389192254 - v18;
  *(v16 - 104) = a12;
  v20 = (*(v15 + 8 * (v14 + 1765)))(v16 - 128);
  return (*(v15 + 8 * (((2 * (a3 == 1)) | (16 * (a3 == 1))) ^ (v14 + 1404))))(v20);
}

uint64_t sub_1A23F73C0(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 4) ^ (17645 * ((((2 * result) | 0x62BC) - result + 20130) ^ 0x92B4));
  *(v1 + 64) = 0;
  *(v1 + 92) = 0;
  *(v1 + 96) = v2 & 0x1FF ^ 0x1FB;
  v3 = v2 ^ 0xFB;
  if (v3 == 1)
  {
    v4 = 16;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    *(v1 + 88) = -133721728;
    v4 = 20;
LABEL_5:
    *(v1 + 72) = 0xD418DBF95C905371;
    *(v1 + 80) = 0x2BE72406A36FAC8ELL;
    *(v1 + 92) = v4;
  }

  *result = 683662444;
  return result;
}

void sub_1A23F74A4(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16) + 1388665877 * ((-2 - ((a1 | 0x5787872) + (~a1 | 0xFA87878D))) ^ 0x772AE561);
  v2 = *(a1 + 8);
  if (*(v2 + 4) - 1389192254 >= 0)
  {
    v3 = *(v2 + 4) - 1389192254;
  }

  else
  {
    v3 = 1389192254 - *(v2 + 4);
  }

  if (*(*a1 + 4) - 1389192254 >= 0)
  {
    v4 = *(*a1 + 4) - 1389192254;
  }

  else
  {
    v4 = 1389192254 - *(*a1 + 4);
  }

  v7 = v1 - 843532609 * ((2 * (&v7 & 0x229EDFF8) - &v7 - 580837372) ^ 0xCDDD575A) - 424;
  v8 = v2;
  v5 = *(&off_1F14948E0 + (v1 ^ 0x300)) - 8;
  (*&v5[8 * (v1 ^ 0x885)])(&v7);
  if (v3 >= v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  __asm { BRAA            X15, X17 }
}

uint64_t sub_1A23F7620()
{
  v5 = v2 < v0;
  if (v5 == (v1 + 1) > 0xFFFFFFFF3897CFA9)
  {
    v5 = v0 + v1 + 135 * (((v3 - 166) | 0x99) ^ 0x4B6u) - 1214 < v2;
  }

  return (*(v4 + 8 * ((26 * !v5) ^ v3)))();
}

uint64_t sub_1A23F7724@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v13 = (*(*(v10 + 8) + 4 * v4) ^ v9) + v3;
  *(*(a3 + 8) + 4 * v4) = (v13 + (v6 & v7 ^ a1) - (v8 & (2 * v13))) ^ a2;
  return (*(v12 + 8 * ((v11 > v4 + 1) ^ (v5 + 1652))))();
}

uint64_t sub_1A23F78BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = ((((&a14 | 0x18F40700) ^ 0xFFFFFFFE) - (~&a14 | 0xE70BF8FF)) ^ 0x75DDC75B) * v18 + 789;
  v20 = (*(v17 + 22888))(&a14);
  return (*(v17 + 8 * ((2912 * (a15 == ((v16 + 172) ^ 0xD4))) ^ v19)))(v20);
}

uint64_t sub_1A23F7A1C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = (a2 - 2134) | 0x117;
  *v4 = a1;
  *v3 = v2;
  v11 = (v7 + 1997) ^ (50899313 * (((&v11 | 0x2D99C759) + (~&v11 | 0xD26638A6)) ^ 0x752ED22));
  v12 = v9;
  (*(v5 + 8 * (v7 + 2564)))(&v11);
  v11 = ((v7 ^ 0x2BB) + 1416) ^ (50899313 * ((((2 * &v11) | 0x5ABEA434) - &v11 + 1386261990) ^ 0x87947860));
  v12 = v10;
  (*(v5 + 8 * ((v7 ^ 0x2BB) + 1983)))(&v11);
  return v6 ^ 0x6F0F4635u;
}

uint64_t sub_1A23F7CD0@<X0>(int a1@<W8>)
{
  v4 = 1556366573 * ((-2 - ((~(v3 - 184) | 0xE240037919443947) + ((v3 - 184) | 0x1DBFFC86E6BBC6B8))) ^ 0xC9BB7D9A7DA01AADLL);
  v5 = v3 - 184;
  *(v5 + 24) = v1 - v4;
  *(v3 - 164) = a1 - 762947083 + v4;
  *(v3 - 184) = ((a1 - 762947083) | 0x2B) + v4;
  *(v5 + 8) = v4 + 3825636909u;
  *(v3 - 152) = v4;
  *(v3 - 148) = v4 + a1 - 2124585800;
  *(v3 - 144) = (a1 - 762946995) ^ v4;
  v6 = (*(v2 + 8 * (a1 + 2915)))(v3 - 184);
  return (*(v2 + 8 * *(v3 - 168)))(v6);
}

uint64_t sub_1A23F7DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v30 = 1037613739 * ((((v29 - 192) | 0x3722DC62) - ((v29 - 192) & 0x3722DC62)) ^ 0xE620F11D);
  *(v29 - 152) = 0;
  *(v29 - 144) = &STACK[0x35C];
  *(v29 - 184) = v30 + 365765082;
  *(v29 - 180) = (v26 + 412) ^ v30;
  *(v29 - 192) = 0;
  *(v29 - 176) = a26;
  *(v29 - 168) = v28;
  *(v29 - 160) = a25;
  v31 = (*(v27 + 8 * (v26 + 2506)))(v29 - 192);
  v32 = *(v29 - 136);
  LODWORD(STACK[0x464]) = v32;
  return (*(v27 + 8 * (((v32 == v26 + 1863271576) * (((v26 - 345) | 0x288) ^ 0xBD0)) ^ v26)))(v31);
}

uint64_t sub_1A23F7FD8@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, uint64_t a7)
{
  a7 = a3;
  a5 = a1;
  a6 = (v9 - 540) ^ (143681137 * ((2 * (&a4 & 0x74D31118) - &a4 + 187494116) ^ 0x6A1659AC));
  v10 = (*(v8 + 8 * (v9 + 1409)))(&a4);
  return (*(v8 + 8 * (v9 | (2 * ((v9 ^ (a4 == (v9 ^ 0x4FE ^ (v7 + 285)))) & 1)))))(v10);
}

uint64_t sub_1A23F810C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = (v4 ^ (v6 + 2032) ^ 0xFFFFFFFFFFFFF871) + v3;
  v8 = *(v2 + v7 - 15);
  v9 = *(v2 + v7 - 31);
  v10 = a1 + v7;
  *(v10 - 15) = v8;
  *(v10 - 31) = v9;
  return (*(v5 + 8 * ((2105 * ((v3 & 0xFFFFFFE0) == 32)) ^ (v4 + a2))))();
}

uint64_t sub_1A23F81D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = (a9 + v11);
  *(v14 - 1) = v13;
  *v14 = v13;
  return (*(v12 + 8 * ((((v9 & 0x30) == 16) * ((v10 - 944) ^ 0x38D)) ^ v10)))();
}

uint64_t sub_1A23F8214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, __int16 a15, char a16, uint64_t a17, int a18, char a19, char *a20, char *a21, char *a22, unsigned int a23, unsigned int a24, char *a25)
{
  a21 = &a16;
  a22 = a20;
  a24 = ((v25 | 0x5E0) + 68670420) ^ (1037613739 * ((&a21 - 1979010262 - 2 * (&a21 & 0x8A0AB32A)) ^ 0x5B089E55));
  a25 = &a19;
  (*(v27 + 8 * ((v25 | 0x5E0) + 1383)))(&a21);
  a23 = ((v25 | 0x5E0) - 620) ^ (((((2 * &a21) | 0xB6E8DA54) - &a21 + 613126870) ^ 0xBA4EDA62) * v26);
  a25 = a20;
  a22 = &a14;
  (*(v27 + 8 * ((v25 | 0x5E0) ^ 0xEF3)))(&a21);
  a22 = a20;
  LODWORD(a21) = (v25 | 0x5E0) - 1556366573 * (((&a21 ^ 0x2EE9331F | 0x7BAAEC2D) - (&a21 ^ 0x2EE9331F) + ((&a21 ^ 0x2EE9331F) & 0x845513D2)) ^ 0x31A7FCD8) + 1244;
  v28 = (*(v27 + 8 * ((v25 | 0x5E0) + 1363)))(&a21);
  return (*(v27 + 8 * (((HIDWORD(a21) == ((((v25 | 0x5E0) - 983) | 0x480) ^ 0x6F0F40A7)) * (((v25 | 0x5E0) ^ 0x63B) - 53)) ^ (v25 | 0x5E0))))(v28);
}

void sub_1A23F8470(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = 143681137 * (((a1 | 0x137B3D8E) - (a1 & 0x137B3D8E)) ^ 0x72418AC6);
  v2 = *a1 ^ v1;
  v3 = *(a1 + 64);
  v4 = *(a1 + 24);
  v5 = *(a1 + 16) ^ v1;
  v13 = 0x52CD643E00000001;
  v14 = &v8;
  v11 = 0x52CD643E00000082;
  v12 = &v16;
  v9 = 0x52CD643E00000082;
  v10 = &v15;
  if (v3 | v4)
  {
    v6 = v5 == 637438284;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1A23F8610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v21 - 136) = &a17;
  *(v21 - 128) = (v20 + 231) ^ (210068311 * ((v21 + 491453917 - 2 * ((v21 - 136) & 0x1D4AFE65)) ^ 0x8F9CC1C1));
  *(v21 - 120) = v17;
  v22 = (*(v18 + 8 * (v20 ^ 0x3E7u)))(v21 - 136);
  return (*(v18 + 8 * (((v19 == ((v20 - 1668) ^ 0x284)) * (3 * (v20 ^ 0x9DE) + 273)) ^ v20)))(v22);
}

uint64_t sub_1A23F86B8()
{
  v5 = 134 * (v3 ^ 0x405);
  v13 = &v8;
  v14 = (v3 - 138) ^ ((&v11 ^ 0x613AB748) * v0);
  v15 = v10;
  (*(v2 + 8 * (v3 + 1811)))(&v11);
  v11 = v3 - 1556366573 * ((&v11 + 996633227 - 2 * (&v11 & 0x3B676A8B)) ^ 0x5F834961) + 1726;
  v13 = v10;
  (*(v2 + 8 * (v3 + 1845)))(&v11);
  if (v12 == v1 + v5 - 268)
  {
    v6 = v8;
  }

  else
  {
    v6 = v12;
  }

  v11 = (v3 + 1285) ^ ((&v11 ^ 0x2ACB2A7A) * v4);
  v13 = v10;
  (*(v2 + 8 * (v3 + 1852)))(&v11);
  v11 = (v5 + 2048) ^ ((((&v11 | 0x6D853417) - &v11 + (&v11 & 0x927ACBE8)) ^ 0x474E1E6D) * v4);
  v13 = v9;
  (*(v2 + 8 * (v5 + 2615)))(&v11);
  return v6 ^ v1;
}

uint64_t sub_1A23F884C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6, _BYTE *a7, char a8, int a9, int a10, char a11, uint64_t a12, unsigned int a13, int a14, char *a15, char *a16, _BYTE *a17, _BYTE *a18)
{
  a17 = a7;
  LODWORD(a16) = (a1 - 392) ^ (((-542474274 - (&a13 | 0xDFAA7FDE) + (&a13 | 0x20558021)) ^ 0x416F3769) * v18);
  a15 = &a5;
  v20 = (*(v19 + 8 * (a1 + 1557)))(&a13);
  return sub_1A23D920C(v20, v21, v22, v23, v24, v25, v26, v27, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void sub_1A23F88C4()
{
  v2 = (((v0 ^ 0xEDA78DF7) + 307786249) ^ ((v0 ^ 0x8E6816A2) + 1905781086) ^ ((v0 ^ 0x581AEB25) - 1478159141)) - 760720781 + (((LODWORD(STACK[0x2AC]) ^ 0xF77BC3D9) + 142883879) ^ ((LODWORD(STACK[0x2AC]) ^ 0x7A19C2AF) - 2048508591) ^ (((v1 - 1229493678) ^ LODWORD(STACK[0x2AC])) + 1229491962));
  v3 = (v2 ^ 0x94FAAD6D) & (2 * (v2 & 0xA5028E6D)) ^ v2 & 0xA5028E6D;
  v4 = ((2 * (v2 ^ 0xD4FEBDBF)) ^ 0xE3F867A4) & (v2 ^ 0xD4FEBDBF) ^ (2 * (v2 ^ 0xD4FEBDBF)) & 0x71FC33D2;
  v5 = v4 ^ 0x10041052;
  v6 = (v4 ^ 0x20182380) & (4 * v3) ^ v3;
  v7 = ((4 * v5) ^ 0xC7F0CF48) & v5 ^ (4 * v5) & 0x71FC33D0;
  v8 = (v7 ^ 0x41F00340) & (16 * v6) ^ v6;
  v9 = ((16 * (v7 ^ 0x300C3092)) ^ 0x1FC33D20) & (v7 ^ 0x300C3092) ^ (16 * (v7 ^ 0x300C3092)) & 0x71FC33D0;
  v10 = v8 ^ 0x71FC33D2 ^ (v9 ^ 0x11C03100) & (v8 << 8);
  LODWORD(STACK[0x2AC]) = v2 ^ (2 * ((v10 << 16) & 0x71FC0000 ^ v10 ^ ((v10 << 16) ^ 0x33D20000) & (((v9 ^ 0x603C02D2) << 8) & 0x71FC0000 ^ 0x1CC0000 ^ (((v9 ^ 0x603C02D2) << 8) ^ 0x7C330000) & (v9 ^ 0x603C02D2)))) ^ 0x1E8F99B9;
  JUMPOUT(0x1A23F8AC4);
}

uint64_t sub_1A23F912C(uint64_t a1, uint64_t a2, int a3)
{
  if ((v4 + 20758338) < 0x24E4D36 != (v5 ^ 0x90F0B9CA) > 433 * (((a3 - 2337) | 0x290) ^ 0x2DEu) - 38686873)
  {
    v6 = (v4 + 20758338) < 0x24E4D36;
  }

  else
  {
    v6 = v4 + 20758338 > (v5 ^ 0x90F0B9CA) + 38686006;
  }

  return (*(v3 + 8 * ((201 * !v6) ^ a3)))();
}

void Ejwmn62s(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t sub_1A23F9234()
{
  v5 = v3 ^ 0x2DE;
  v14 = (v3 + 681) ^ (((2 * (&v11 & 0x11991980) - &v11 - 295246213) ^ 0x8F5C5133) * v0);
  v13 = &v10;
  v15 = v8;
  (*(v2 + 8 * (v3 ^ 0xBCE)))(&v11);
  v11 = v3 - 1556366573 * ((2 * (&v11 & 0x4E2A68C8) - &v11 + 836081458) ^ 0x5531B4D8) + 2545;
  v13 = v8;
  (*(v2 + 8 * (v3 ^ 0xBE8)))(&v11);
  if (v12 == v1 + (v3 ^ 0x2DE) - 522)
  {
    v6 = v10;
  }

  else
  {
    v6 = v12;
  }

  v11 = (v3 + 2104) ^ (((&v11 & 0x9CE45583 | ~(&v11 | 0x9CE45583)) ^ 0x49D08006) * v4);
  v13 = v8;
  (*(v2 + 8 * (v3 ^ 0xB97)))(&v11);
  v13 = v9;
  v11 = (v5 + 1794) ^ (((&v11 - 1786903401 - 2 * (&v11 & 0x957E0497)) ^ 0xBFB52EED) * v4);
  (*(v2 + 8 * (v5 + 2361)))(&v11);
  return v6 ^ v1;
}

uint64_t sub_1A23F940C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v38 = *(a34 + 52);
  v39 = STACK[0x438];
  v40 = 1785193651 * ((((v37 - 192) | 0x5DD8095B) - ((v37 - 192) & 0x5DD8095B)) ^ 0xDE68834D);
  *(v37 - 180) = (((a17 ^ 0x2635393D) - 641022538 + ((v36 + 588776600) & 0xDCE7F9DD)) ^ ((a17 ^ 0xA216BE02) + 1575567870) ^ (((v36 + 1404090421) & 0xAC4F47FF ^ 0xC0C8E482) + (a17 ^ 0x3F3719B2))) - v40 - 6026268;
  *(v37 - 192) = v38 - v40 + 355129087;
  *(v37 - 184) = (v36 - 621) ^ v40;
  *(v37 - 152) = a34 + 36;
  *(v37 - 176) = &STACK[0x1788];
  *(v37 - 168) = v34;
  *(v37 - 160) = (v39 ^ 0xDBEEAB6B) - v40 + ((2 * v39) & 0xB7DD56D6) + 2146689013;
  v41 = (*(v35 + 8 * (v36 + 2248)))(v37 - 192);
  return (*(v35 + 8 * ((1330 * (*(v37 - 188) == 1863271989)) ^ v36)))(v41);
}

uint64_t sub_1A23F95A4(uint64_t a1, float a2)
{
  v9 = v2 + 4;
  *(v6 + (v9 ^ a1 ^ v4) + v3) = a2;
  return (*(v8 + 8 * (((v7 != v9) | (8 * (v7 != v9))) ^ v5)))();
}

uint64_t sub_1A23F978C@<X0>(uint64_t a1@<X8>)
{
  v6 = (v3 + 1957) ^ (50899313 * ((&v6 & 0x5A2EA09E | ~(&v6 | 0x5A2EA09E)) ^ 0x8F1A751B));
  v7 = a1;
  result = (*(v2 + 8 * (v3 + 2524)))(&v6);
  *(v1 + 36) = v4;
  return result;
}

uint64_t sub_1A23F97EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  STACK[0x218] = a33 + (v34 - 429) - 2428;
  LODWORD(STACK[0x284]) = v35;
  return (*(v36 + 8 * ((234 * (*(a34 + 360) > 1u)) ^ v34)))();
}

uint64_t sub_1A23F9978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v21 - 136) = v16 + (((v17 | 0x890E8B02) - (v17 & 0x890E8B02)) ^ 0xEDEAA8E8) * v20 + 1424;
  *(v21 - 128) = v19;
  *(v21 - 120) = a16;
  v22 = (*(v18 + 8 * (v16 + 2101)))(v21 - 136);
  return (*(v18 + 8 * ((467 * (*(v21 - 112) - 798455720 < ((v16 + 155564305) & 0xF6BA46FF ^ 0xD67B19EE))) ^ v16)))(v22);
}

uint64_t sub_1A23F9A50(unint64_t a1, uint64_t a2, int a3)
{
  v9 = a3 ^ 0xEE3;
  v10 = a3 ^ 0x278u;
  v11 = (v6 - 1) & 0xF;
  v15 = a1 > 0xF && (v3 - v8 - v6 + v11 + 1) > 0xF && (v4 - v8 - v6 + v11 + 6) > 0xF && v5 - v8 - v6 + v11 + (v9 + 651) - 2321 >= (v10 ^ 0xA02uLL);
  return (*(v7 + 8 * ((121 * v15) ^ v9)))();
}

void sub_1A23F9AE0(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) ^ (896639297 * (((a1 ^ 0xB97472D1) - 491364205 - 2 * ((a1 ^ 0xB97472D1) & 0xE2B66093)) ^ 0x4F69843A));
  v3 = *a1;
  v5 = v1 - 896639297 * ((2 * (&v3 & 0x24AE1D20) - &v3 - 615390500) ^ 0xCFFA74A4) + 1290;
  v2 = *(&off_1F14948E0 + (v1 ^ 0x10C)) - 8;
  (*&v2[8 * (v1 ^ 0xAC2)])(&v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23F9C2C@<X0>(uint64_t a1@<X1>, unsigned int a2@<W3>, unint64_t a3@<X4>, int a4@<W5>, unsigned int a5@<W8>)
{
  v9 = (v8 + 4 * v6);
  v10 = v6 + 1;
  *v9 = *(a1 + 4 * (*(v8 + 4 * v10) & 1)) ^ v9[397] ^ ((*(v8 + 4 * v10) & 0x7FFFFFFE | v5 & 0x80000000) >> 1);
  return (*(v7 + 8 * (((v10 == (((a5 + 192) | a2) ^ a3)) * a4) ^ a5)))();
}

void sub_1A23F9CD0()
{
  v1 = *(v0 - 180);
  *(v0 - 124) = *(v0 - 184) ^ 0xCE5920C4;
  *(v0 - 128) = v1 ^ 0x1978C64A;
  *(v0 - 132) = *(v0 - 188) ^ 0x8AA361C;
  *(v0 - 136) = *(v0 - 176) ^ 0xDCB3F494;
  JUMPOUT(0x1A23BC3B4);
}

uint64_t sub_1A23F9E78@<X0>(uint64_t a1@<X0>, unsigned int a2@<W8>)
{
  v6 = *(&STACK[0x254] + a2 + 72);
  v7 = (((v3 ^ v2) - 4151) & (2 * a2)) + (a2 ^ 0xFFFFF7F4);
  *(a1 + v7 + 2060) = (HIBYTE(v6) ^ 0x3B) - ((2 * (HIBYTE(v6) ^ 0x3B)) & 0x12) - 119;
  *(a1 + v7 + 2061) = (BYTE2(v6) ^ 0xD5) - ((2 * (BYTE2(v6) ^ 0xD5)) & 0x12) - 119;
  *(a1 + v7 + 2062) = (BYTE1(v6) ^ 0x70) - ((v6 >> 7) & 0x12) - 119;
  *(a1 + v7 + 2063) = v6 ^ 0xF9;
  return (*(v5 + 8 * (((a2 + 4 >= LODWORD(STACK[0x2B0])) * v4) ^ v3)))();
}

uint64_t sub_1A23F9FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19, unsigned int a20)
{
  v23 = 1556366573 * (&a17 ^ 0x64E423EA);
  LODWORD(a17) = 2027 - v23;
  HIDWORD(a17) = v23 + 295473084;
  a18 = v23 ^ 0x661FAE48;
  a20 = 1844776156 - v23;
  (*(v21 + 22792))(&a17);
  a17 = &a11;
  a19 = ((2 * (&a17 & 0x3D5BA4F8) - &a17 + 1118067461) ^ 0xD07264A1) * v22 + 789;
  v24 = (*(v21 + 22888))(&a17);
  return (*(v21 + 8 * ((462 * (a18 != ((v20 - 883) ^ 0x4F7))) ^ 0x4F7u)))(v24);
}

uint64_t sub_1A23FA0AC@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  if (a7 == ((7 * (a1 ^ 0x3F1)) ^ (v9 - 2816)) + (a1 ^ 0x913))
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  return (*(v8 + 8 * ((2038 * v10) ^ a1)))();
}

uint64_t sub_1A23FA1A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  v13 = a13 - 1047425020 > a6;
  if (a6 < 0xC1918FC4 != (a13 - 1047425020) < 0xC1918FC4)
  {
    v13 = (a13 - 1047425020) < 0xC1918FC4;
  }

  return (*(v16 + 8 * ((!v13 * a3) ^ (v15 + a5 + 1835))))();
}

uint64_t sub_1A23FA2E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  v18 = 1785193651 * ((v17 - 1263328648 - 2 * ((v17 - 152) & 0xB4B32310)) ^ 0x3703A906);
  *(v17 - 136) = a15 - v18 + ((v16 - a3 + 1239098420) ^ (v16 + 1974));
  *(v17 - 152) = v16 - v18 + 1245;
  *(v17 - 144) = v17 - 252;
  (*(v15 + 8 * (v16 + 2799)))(v17 - 152);
  v19 = *(v17 - 184);
  *(v17 - 252 + (v19 & 0x3F)) = 9;
  return (*(v15 + 8 * ((1401 * ((v19 & 0x3Fu) > 0x37)) ^ v16)))((v19 & 0x3Fu) + 1);
}

uint64_t sub_1A23FA3D4@<X0>(uint64_t a1@<X1>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int *a22)
{
  v23 = a2 + 877;
  v24 = (*(v22 + 8 * (a2 + 2744)))(*a22, a1, LODWORD(STACK[0x2A4]));
  return (*(v22 + 8 * ((1010 * (LODWORD(STACK[0x284]) == v23 + 1863270964)) | v23)))(v24);
}

uint64_t sub_1A23FA42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, int a18, int a19, uint64_t a20, char *a21)
{
  v24 = 143681137 * ((((2 * &a16) | 0xA2BC4824) - &a16 - 1365124114) ^ 0x3064935A);
  a20 = a12;
  a21 = &a11;
  a17 = v24 + v21 + 1421512288;
  a18 = v24 ^ 0x46483059;
  a16 = (2 * (a10 & 1) + (a10 ^ ((v21 + 163) | 0x200) ^ 0x717FBC79) - 270275385) ^ v24;
  v25 = (*(v22 + 8 * (v21 + 2613)))(&a16);
  return (*(v22 + 8 * ((478 * (a19 != v23)) ^ v21)))(v25);
}

void sub_1A23FA500(uint64_t a1)
{
  v1 = *(a1 + 12) - 210068311 * (a1 ^ 0x92D63FA4);
  v2 = *(&off_1F14948E0 + (v1 ^ 0x39E)) - 8;
  v3 = *&v2[8 * ((((*&v2[8 * (v1 ^ 0x83A)])(32, 0x101004023FF3BD5) == 0) * (v1 - 726)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23FA594@<X0>(uint64_t a1@<X8>)
{
  v9 = v3 - 445;
  v10 = (*(*(v7 + 8) + 4 * v2) ^ v4) + v1;
  *(*(a1 + 8) + 4 * v2) = v10 + v4 - ((v10 << (v9 ^ 0xA)) & v6);
  return (*(v5 + 8 * ((963 * (v2 + 1 == v8)) ^ v9)))();
}

uint64_t sub_1A23FA61C()
{
  if (((v0 + 385) ^ v7) + v1 == 20)
  {
    v10 = 0;
  }

  else
  {
    v9 = (*(v2 + v1) ^ v6) - (*(v3 + v1) ^ v6);
    v10 = v9 + v4 - (v5 & (2 * v9)) == v4;
  }

  v11 = !v10;
  return (*(v8 + 8 * (((8 * v11) | (16 * v11)) ^ v0)))();
}

uint64_t sub_1A23FA66C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = *(a2 + 4);
  *(a1 + 32) = *(a2 + 8);
  return 0;
}

uint64_t sub_1A23FA684(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v11 = *(v9 + 48 * v10 + 36);
  v13 = v11 != a2 && a5 + ((v6 - 492) | 0x441u) + v11 - 1623 < 0x80000003;
  return (*(v8 + 8 * ((v13 * (v7 + (v6 ^ (a6 - 1026)) + 3642)) ^ v6)))();
}

uint64_t sub_1A23FA6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22)
{
  v26 = 1388665877 * (&a19 ^ 0x8DAD62EC);
  a20 = a16;
  HIDWORD(a21) = v26 + v22 + 2650;
  LODWORD(a19) = v26 ^ (199880445 * v24 + 103127814);
  (*(v25 + 8 * (v22 + 2740)))(&a19);
  v27 = 1037613739 * ((2 * (&a19 & 0x3EF5E390) - &a19 - 1056301970) ^ 0x10083111);
  a22 = ((v23 ^ 0x7EEFDFF7) - 1078069378 + ((((v22 ^ 0x47B) - 700) ^ 0xFDDFBEBE) & (2 * v23))) ^ v27;
  LODWORD(a20) = v22 - v27 + 261;
  a21 = a12;
  a19 = a16;
  v28 = (*(v25 + 8 * (v22 ^ 0xB40)))(&a19);
  return (*(v25 + 8 * ((2278 * (HIDWORD(a20) == 1863271989)) ^ v22)))(v28);
}

uint64_t sub_1A23FA8C4@<X0>(uint64_t a1@<X8>)
{
  v5 = (v4 - 252 + a1);
  *v5 = 0x8989898989898989;
  v5[1] = 0x8989898989898989;
  return (*(v3 + 8 * ((896 * ((v1 ^ 0x925) == (v2 & 0xFFFFFFFFFFFFFFF0))) ^ v1)))();
}

uint64_t sub_1A23FA918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, __int16 a15, char a16, __int16 a17, char a18, int a19, int a20, char a21)
{
  v26 = 1556366573 * ((v25 - 152) ^ 0x64E423EA);
  *(v25 - 128) = &a14;
  *(v25 - 120) = v22 - v26 + 321;
  *(v25 - 112) = &a16;
  *(v25 - 104) = &a18;
  *(v25 - 144) = a13;
  *(v25 - 136) = &a21;
  *(v25 - 152) = v21 - v26 - 180745539 + ((v22 + 276) ^ (v24 - 387));
  v27 = (*(v23 + 8 * (v22 ^ 0xB33)))(v25 - 152);
  return (*(v23 + 8 * ((1003 * (*(v25 - 148) == 1863271989)) ^ v22)))(v27);
}

void jEGq2i0LF()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 + dword_1EB0947F8) ^ 0x43)) ^ byte_1A2730B50[byte_1A273D810[(11 * ((qword_1EB094620 + dword_1EB0947F8) ^ 0x43))] ^ 0x53]) - 84);
  v1 = *(&off_1F14948E0 + (*(off_1F1494B60 + ((*off_1F1494B98)[(11 * ((qword_1EB094620 + *v0) ^ 0x43))] ^ 0xE6u) - 12) ^ (11 * ((qword_1EB094620 + *v0) ^ 0x43))) + 6);
  v2 = (*(v1 - 4) ^ *v0) - &v4;
  *v0 = (1922045707 * v2) ^ 0x21D37FB25A3D4D43;
  *(v1 - 4) = 1922045707 * (v2 ^ 0x21D37FB25A3D4D43);
  v5[1] = (210068311 * ((2 * (v5 & 0x3CDDF760) - v5 + 1126303898) ^ 0xD1F4373E)) ^ 0x48449A90;
  LOBYTE(v1) = 11 * ((*(v1 - 4) + *v0) ^ 0x43);
  v3 = *(&off_1F14948E0 + ((11 * (dword_1EB0947F8 ^ 0x43 ^ qword_1EB094620)) ^ byte_1A2730B50[byte_1A273D810[(11 * (dword_1EB0947F8 ^ 0x43 ^ qword_1EB094620))] ^ 0x53]) + 15) - 8;
  (*&v3[8 * (*(off_1F1494AC8 + (*(off_1F1494A30 + v1 - 4) ^ 0x4Fu) - 12) ^ v1) + 21784])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23FACD4@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W8>)
{
  v11 = ~v8 + v4;
  v12 = *(v3 + v11 - 15);
  v13 = *(v3 + v11 - 31);
  v14 = a1 + v11;
  *(v14 - 15) = v12;
  *(v14 - 31) = v13;
  return (*(v10 + 8 * ((((v7 ^ (v5 + 1138) ^ v9) + v8 == v6) * a2) ^ (a3 + v7 + 489))))();
}

uint64_t sub_1A23FAD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15)
{
  *(*(a13 + 96) + 504) = v15 + 1;
  *(*(a13 + 96) + 496) = a15 - 1;
  v18 = 1556366573 * (((((v17 - 152) | 0xA168CE98) ^ 0xFFFFFFFE) - (~(v17 - 152) | 0x5E973167)) ^ 0x3A73128D);
  *(v17 - 136) = -875954088 - v18;
  *(v17 - 148) = v18 ^ 0xD9C233F9;
  *(v17 - 144) = v17 - 252;
  v19 = (*(v16 + 22576))(v17 - 152);
  return (*(v16 + 8 * ((71 * (a15 + (*(v17 - 184) & 0x3Fu) - 2044285071 < 0xFFFFFFC0)) | 0x1B0u)))(v19);
}

uint64_t sub_1A23FAF68@<X0>(uint64_t a1@<X0>, int a2@<W5>, int a3@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7);
  return (*(v6 + 8 * (((8 * (((v5 - a3) ^ (v7 == 0)) & 1)) & 0xBF | ((((v5 - a3) ^ (v7 == 0)) & 1) << 6)) ^ (a2 + v5 + 669))))();
}

uint64_t sub_1A23FAFAC@<X0>(int a1@<W1>, unsigned int a2@<W7>, char a3@<W8>)
{
  v13 = (v11 + 4 * v8);
  v14 = (v10 >> (((v12 + 7) | a3) - 114)) + (*v13 ^ v3) + HIDWORD(v5) + a2 * (*(v6 + 4 * v8) ^ v3);
  *(v13 - 1) = v14 + v3 - (a1 & (2 * v14));
  return (*(v9 + 8 * (((v8 + 1 == v4) * v7) ^ (v12 + 377))))();
}

uint64_t sub_1A23FB070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  v24 = 1388665877 * ((367746923 - (v23 ^ 0x2AEA06B9 | 0x15EB5F6B) + (v23 ^ 0x2AEA06B9 | 0xEA14A094)) ^ 0x4D53C4C1);
  HIDWORD(a16) = v24 + 2769;
  a15 = a12;
  LODWORD(a14) = (199880445 * v20 + 103127814) ^ v24;
  (v22)[2859](&a14);
  v25 = 1785193651 * (((v23 | 0x9CEA5955CDD67786) - (v23 | 0x6315A6AA32298879) + 0x6315A6AA32298879) ^ 0xB4FEE45F4E66FD90);
  a14 = v25 ^ ((v19 ^ 0x7F7F77DE5FF64A7DLL) - 0x6444004E1744021CLL + ((2 * v19) & 0xFEFEEFBCBFEC94FALL));
  LODWORD(a15) = 2356 - v25;
  a16 = a12;
  (v22)[2877](&a14);
  a15 = a12;
  a16 = v18;
  a17 = 1960 - 1785193651 * (((v23 | 0xD71373E0) - v23 + (v23 & 0x28EC8C18)) ^ 0x54A3F9F6);
  (v22)[2894](&a14);
  v26 = 1388665877 * ((((2 * v23) | 0xC3F6C01A) - v23 + 503619571) ^ 0x6C5602E1);
  LODWORD(a14) = v26 ^ (199880445 * v17 + 103127814);
  HIDWORD(a16) = v26 + 2769;
  a15 = a12;
  v27 = (v22[2859])(&a14);
  return (v22[(249 * (a16 != v21)) ^ 0x75u])(v27);
}

void U4HBs(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = !v5 && a4 != 0 && a5 != 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1A23FB524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W8>)
{
  v8 = *(a1 + 8);
  *v6 = 0;
  return (*(v7 + 8 * (((v8 == 0) * ((a6 + 1955) ^ 0x984)) ^ a6)))(a1, a2, a3, a4, a5);
}

uint64_t sub_1A23FB5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t (*a26)(void), uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, unint64_t a53, unint64_t a54)
{
  STACK[0x340] = a54;
  STACK[0x398] = a53;
  return a26();
}

void sub_1A23FB604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  *v29 = (((a18 - v28) | (v28 - a18)) >> (((v28 + 17) | 6) + 8)) | 0x80000000;
  (*(v30 + 8 * (v28 ^ 0xB4A)))(a28);
  JUMPOUT(0x1A23FB660);
}

uint64_t sub_1A23FB704(__n128 a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v9 = (a5 + 4 * a7);
  *v9 = a1;
  v9[1] = a1;
  return (*(v8 + 8 * (((v7 == a7) * a6) ^ a3)))();
}

uint64_t sub_1A23FB770@<X0>(char a1@<W0>, uint64_t a2@<X1>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(uint64_t, char *, uint64_t), uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, char a28)
{
  v32 = (a3 + 2032963435) & 0x86D36B6F;
  v33 = (a2 + v28);
  *v33 = v29;
  v33[1] = v30;
  *(a2 + (v32 ^ 0x28) + v28) = v31;
  v33[3] = a1;
  return sub_1A23B7090(a2, v32, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
}

uint64_t sub_1A23FB7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, char a19, int a20, char a21, char *a22, char *a23, unsigned int a24, uint64_t a25)
{
  a22 = &a17;
  a23 = &a19;
  a25 = a15;
  a24 = (v25 - 2471) ^ (843532609 * ((((2 * &a21) | 0xFE4A242A) - &a21 + 14347755) ^ 0xEF99654B));
  v27 = (*(v26 + 8 * (v25 + 242)))(&a21);
  return (*(v26 + 8 * ((((v25 ^ 0xE40) - 928) * (a10 < 0x4A67EEA8)) ^ v25)))(v27);
}

uint64_t sub_1A23FB8C0()
{
  if (v0 <= 0x12 && ((1 << v0) & 0x42405) != 0)
  {
    return sub_1A23CA2E0();
  }

  else
  {
    return (*(v2 + 8 * ((((*(v6 + v1 * v5 + 40) & 8) == 0) * ((-655449791 - v3) ^ 0x165)) ^ (v4 - 655447953))))(4294925278);
  }
}

uint64_t sub_1A23FB954(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int8x16_t a5, int8x8_t a6)
{
  v13 = a2 - 8;
  v15.val[0].i64[0] = (v9 + v13 - 1) & 0xF;
  v15.val[0].i64[1] = (v9 + v13 + 14) & 0xF;
  v15.val[1].i64[0] = (v9 + v13 + 13) & 0xF;
  v15.val[1].i64[1] = (v9 + v13 + v10) & 0xF;
  v15.val[2].i64[0] = (v9 + v13 + 11) & 0xF;
  v15.val[2].i64[1] = (v9 + v13 + 10) & 0xF;
  v15.val[3].i64[0] = (v9 + v13 + 9) & 0xF;
  v15.val[3].i64[1] = (v9 + v13) & 0xF ^ 8;
  *(a3 + v13) = veor_s8(veor_s8(veor_s8(*(v6 + v15.val[0].i64[0] - 7), *(a3 + v13)), veor_s8(*(v7 + v15.val[0].i64[0] - 7), *(v15.val[0].i64[0] + v8 - 6))), vrev64_s8(vmul_s8(*&vqtbl4q_s8(v15, a5), a6)));
  return (*(v12 + 8 * (((a1 == v13) * a4) ^ v11)))();
}

uint64_t sub_1A23FC000()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 + dword_1EB094870) ^ 0x43)) ^ byte_1A2730B50[byte_1A273D810[(11 * ((qword_1EB094620 + dword_1EB094870) ^ 0x43))] ^ 0x36]) + 109);
  v1 = *(&off_1F14948E0 + (*(off_1F1494B60 + ((*off_1F1494B98)[(11 * ((qword_1EB094620 - *v0) ^ 0x43))] ^ 0xE6u) - 12) ^ (11 * ((qword_1EB094620 - *v0) ^ 0x43))) + 6);
  v2 = &v4[*(v1 - 4) - *v0];
  *v0 = 1922045707 * (v2 - 0x21D37FB25A3D4D43);
  *(v1 - 4) = 1922045707 * (v2 ^ 0x21D37FB25A3D4D43);
  v6 = 143681137 * (&v5 ^ 0x613AB748) + 1124;
  LOBYTE(v2) = 11 * ((*(v1 - 4) + *v0) ^ 0x43);
  v5 = *(&off_1F14948E0 + (*(off_1F1494A90 + (*(off_1F1494EA0 + v2 - 8) ^ 0xB2u)) ^ v2) - 16);
  LOBYTE(v1) = 11 * ((*(v1 - 4) - *v0) ^ 0x43);
  return (*(*(&off_1F14948E0 + ((11 * (dword_1EB094870 ^ 0x43 ^ qword_1EB094620)) ^ byte_1A273D410[byte_1A2739420[(11 * (dword_1EB094870 ^ 0x43 ^ qword_1EB094620))] ^ 0xAE]) + 41) + (*(off_1F1494B50 + (*(off_1F1494C88 + v1 - 4) ^ 0xB8u) - 12) ^ v1) + 2687))(&v5);
}

void df35957c4e0()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F14948E0 + (*(off_1F1494AC8 + (*(off_1F1494A30 + (11 * ((qword_1EB094620 + dword_1EB0947E8) ^ 0x43)) - 4) ^ 0x4Fu) - 12) ^ (11 * ((qword_1EB094620 + dword_1EB0947E8) ^ 0x43))) + 99);
  v1 = *(&off_1F14948E0 + (*(off_1F1494B60 + ((*off_1F1494B98)[(11 * ((qword_1EB094620 - *v0) ^ 0x43))] ^ 0x54u) - 12) ^ (11 * ((qword_1EB094620 - *v0) ^ 0x43))) - 15);
  v2 = (*(v1 - 4) + *v0) ^ &v8;
  *v0 = 1922045707 * (v2 - 0x21D37FB25A3D4D43);
  *(v1 - 4) = 1922045707 * (v2 ^ 0x21D37FB25A3D4D43);
  v7 = 0;
  v9 = &v7;
  v10 = 1380333833 * ((2 * (&v9 & 0x5C7DC3F8) - &v9 - 1551746046) ^ 0x1DD09788) - 1224077185;
  LOBYTE(v2) = 11 * ((*(v1 - 4) + *v0) ^ 0x43);
  v3 = *(&off_1F14948E0 + ((11 * (dword_1EB0947E8 ^ 0x43 ^ qword_1EB094620)) ^ byte_1A273D710[byte_1A2739720[(11 * (dword_1EB0947E8 ^ 0x43 ^ qword_1EB094620))] ^ 0xBC]) + 130) - 8;
  (*&v3[8 * (*(off_1F1494948 + (*(off_1F1494C60 + v2 - 8) ^ 0x1Bu) - 12) ^ v2) + 21072])(&v9);
  v6 = 0;
  v10 = 1380333833 * (((&v9 | 0x44FBE8B5) - (&v9 & 0x44FBE8B5)) ^ 0xFAA9433F) - 1224077185;
  v9 = &v6;
  v4 = 11 * ((*(v1 - 4) - *v0) ^ 0x43);
  (*&v3[8 * (*(off_1F1494B50 + (*(off_1F1494C88 + v4 - 4) ^ 0xB8u) - 12) ^ v4) + 21112])(&v9);
  HIDWORD(v9) = (210068311 * (((&v9 | 0x6E14A34D) + (~&v9 | 0x91EB5CB2)) ^ 0xFCC29CE8)) ^ 0x48449A90;
  v5 = 11 * ((*(v1 - 4) + *v0) ^ 0x43);
  (*&v3[8 * (*(off_1F1494A90 + (*(off_1F1494EA0 + v5 - 8) ^ 0x29u)) ^ v5) + 21200])(&v9);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A23FC920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char *a12, int a13, char a14, uint64_t a15, uint64_t *a16, char *a17, unsigned int a18, unsigned int a19, char *a20)
{
  a20 = &a11;
  a16 = &a9;
  a17 = a12;
  a19 = (v20 + 68670454) ^ (1037613739 * ((2 * (&a16 & 0x4AF87668) - &a16 - 1257797230) ^ 0x6405A4ED));
  (*(v22 + 8 * (v20 + 1417)))(&a16);
  a17 = &a14;
  a18 = (v20 - 586) ^ (((((2 * &a16) | 0x10BC9D5A) - &a16 - 140398253) ^ 0x6964F9E5) * v21);
  a20 = a12;
  (*(v22 + 8 * (v20 + 1363)))(&a16);
  LODWORD(a16) = v20 - 1556366573 * (&a16 ^ 0x64E423EA) + 1278;
  a17 = a12;
  v23 = (*(v22 + 8 * (v20 ^ 0xEFB)))(&a16);
  return (*(v22 + 8 * ((3247 * (HIDWORD(a16) == ((2 * v20) ^ 0x94A) + 1863271281)) ^ v20)))(v23);
}

uint64_t sub_1A23FCA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _BYTE *a13, int a14, char a15, __int16 a16, char a17, int a18, char a19, __int16 a20, char a21, unsigned int a22, int a23, char *a24, char *a25, _BYTE *a26, _BYTE *a27)
{
  a26 = a13;
  LODWORD(a25) = (v28 - 616) ^ (((2 * (&a22 & 0x6A4CEE70) - &a22 - 1783426675) ^ 0xF489A6C5) * v29);
  a24 = &a15;
  (*(v30 + 8 * (v28 ^ 0xEFFu)))(&a22);
  LODWORD(a26) = ((v28 ^ 0x79E) - 490) ^ (843532609 * (((&a22 | 0x726C40D9) + (~&a22 | 0x8D93BF26)) ^ 0x62D03786));
  a24 = &a19;
  a25 = &a17;
  a27 = a13;
  (*(v30 + 8 * (v28 ^ 0xECF)))(&a22);
  a26 = a13;
  a24 = &a21;
  LODWORD(a25) = ((v28 ^ 0x79E) + 258) ^ (((&a22 + 1796743589 - 2 * (&a22 & 0x6B1821A5)) ^ 0xA2296ED) * v29);
  (*(v30 + 8 * (v28 ^ 0xEFF)))(&a22);
  a24 = a13;
  a22 = (v28 ^ 0x79E) - 1556366573 * (((&a22 | 0x1CDB8737) - (&a22 & 0x1CDB8737)) ^ 0x783FA4DD) + 2122;
  v31 = (*(v30 + 8 * ((v28 ^ 0x79E) + 2241)))(&a22);
  return (*(v30 + 8 * (((a23 == v27) * (v28 ^ 0xE98)) ^ v28 ^ 0x79E)))(v31);
}

uint64_t sub_1A23FCCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  v31 = ((-1722873699 - ((v30 - 144) | 0x994F089D) + ((v30 - 144) | 0x66B0F762)) ^ 0xE5007D74) * v26;
  *(v30 - 136) = &a26;
  *(v30 - 144) = v29 - v31 + 314;
  *(v30 - 140) = v31 + 259531754;
  v32 = (*(v27 + 8 * (v29 + 438)))(v30 - 144);
  return (*(v27 + 8 * (((v28 != 0) * ((v29 - 2131) ^ 0x1FA)) ^ (v29 - 62))))(v32);
}

uint64_t sub_1A23FCE24@<X0>(uint64_t a1@<X0>, int a2@<W4>, uint64_t a3@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a3 + v6) ^ (v4 + 57) & 0xCF ^ 0xC6;
  return (*(v5 + 8 * ((3759 * (v6 == 0)) ^ (a2 + v4 + 2346))))();
}

uint64_t sub_1A23FCE78(_DWORD *a1)
{
  v1 = 1556366573 * ((((2 * a1) | 0x79B6148) - a1 + 2083671900) ^ 0xE729934E);
  v2 = a1[3] ^ v1;
  v3 = a1[4] ^ v1;
  v4 = *(*a1 + 4);
  v6 = v4 - 1389192254;
  v5 = v4 - 1389192254 < 0;
  v7 = 1389192254 - v4;
  if (!v5)
  {
    v7 = v6;
  }

  return (*(*(&off_1F14948E0 + v2 - 979) + ((148 * (((v2 - 105) ^ ((v3 - 37215422) < (4 * v7))) & 1)) ^ v2) - 1))();
}

uint64_t sub_1A23FCF3C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v7 = *(v5 + a4 + 16);
  v8 = (a1 + a4);
  *(v8 - 1) = *(v5 + a4);
  *v8 = v7;
  return (*(v6 + 8 * (((v4 == a4) * a3) ^ a2)))();
}

void sub_1A23FCF6C(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  v12 = v9 + 833;
  v13 = ((((2 * (&a4 ^ 0xEF32912C)) | 0xF9FAE034) - (&a4 ^ 0xEF32912C) - 2096984090) ^ 0x680C562D) * v8;
  a6 = a1 - v13;
  a7 = 0;
  a8 = v13 ^ 0x57AA81AA;
  a4 = v12 - v13 - 684;
  a5 = v10;
  (*(v11 + 8 * (v12 ^ 0xF93)))(&a4);
  sub_1A23E7120();
}

void sub_1A23FD024(int a1@<W8>, int a2, __int16 a3, char a4, char a5, char a6, char a7, char a8, char a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, char a22, char a23, char a24, char a25, char a26, char a27, char a28, char a29, char a30, char a31, char a32, char a33, char a34, char a35, char a36, char a37, char a38, char a39, char a40, char a41, char a42, char a43, char a44, char a45, char a46, char a47, char a48, char a49, char a50, char a51, char a52, char a53)
{
  v59 = *(v57 + 8 * (a1 ^ 0xA22u));
  v60 = *(v57 + 8 * (a1 - 2548));
  v61 = *v59;
  v62 = *v60;
  a24 = -7 * **v60 + 66;
  a25 = -7 * v62[1] + 66;
  a26 = -7 * v62[2] + 66;
  a27 = -7 * v62[3] + 66;
  a28 = -7 * v62[4] + 66;
  a29 = -7 * v62[5] + 66;
  a30 = -7 * v62[6] + 66;
  a31 = -7 * v62[7] + 66;
  a32 = -7 * v62[8] + 66;
  a33 = -7 * v62[9] + 66;
  a34 = -7 * v62[10] + 66;
  a35 = -7 * v62[11] + 66;
  a36 = -7 * v62[12] + 66;
  a37 = -7 * v62[13] + 66;
  a38 = -7 * v62[14] + 66;
  a39 = -7 * v62[15] + 66;
  a40 = -7 * v62[16] + 66;
  v63 = *v60;
  a41 = -7 * v63[17] + 66;
  a42 = -7 * v63[18] + 66;
  a43 = -7 * v63[19] + 66;
  a44 = -7 * v63[20] + 66;
  a45 = -7 * v63[21] + 66;
  a46 = -7 * v63[22] + 66;
  a47 = -7 * v63[23] + 66;
  a48 = -7 * v63[24] + 66;
  a49 = -7 * v63[25] + 66;
  a50 = -7 * v63[26] + 66;
  a51 = -7 * v63[27] + 66;
  a52 = -7 * v63[28] + 66;
  a53 = -7 * v63[29] + 66;
  v64 = (*(v55 + 8 * (a1 + 332)))(v61, &a24, v53);
  if (v64 == 1102)
  {
    v65 = *v59;
    v66 = *(*(v57 + 8 * (v56 ^ 0xAB5)) - 4);
    a4 = *v66 ^ 0x5A;
    a5 = v66[1] ^ 0x5A;
    a6 = v66[2] ^ 0x5A;
    a7 = v66[3] ^ 0x5A;
    a8 = v66[4] ^ 0x5A;
    a9 = (13 * (v56 ^ 0x7A)) ^ 0x47 ^ v66[5];
    a10 = v66[6] ^ 0x5A;
    a11 = v66[7] ^ 0x5A;
    a12 = v66[8] ^ 0x5A;
    a13 = v66[9] ^ 0x5A;
    a14 = v66[10] ^ 0x5A;
    a15 = v66[11] ^ 0x5A;
    a16 = v66[12] ^ 0x5A;
    a17 = v66[13] ^ 0x5A;
    a18 = v66[14] ^ 0x5A;
    a19 = v66[15] ^ 0x5A;
    a20 = v66[16] ^ 0x5A;
    a21 = v66[17] ^ 0x5A;
    a22 = v66[18] ^ 0x5A;
    a23 = v66[19] ^ 0x5A;
    v67 = (*(v55 + 8 * (v56 ^ 0x15C)))(v65, &a4, v53);
    (*(v55 + 8 * ((1994 * (v67 != 0)) ^ (v56 - 1620))))(v67, v68, v69, v70, v71, v72, v73);
  }

  else
  {
    if (v64)
    {
      JUMPOUT(0x1A23E9024);
    }

    *(v58 + 344) |= (v56 - 1550) ^ 0x417;
    *(v58 + 44) = 1418414342;
    (*(v55 + 8 * (v56 + 342)))(*v53, v58 + 332, v58 + 336, v58 + 340, v54);
    sub_1A23E8FE0();
  }
}

uint64_t sub_1A23FD45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v20 - 136) = v17 + ((((v20 - 136) | 0x987DB5ED) + (~(v20 - 136) | 0x67824A12)) ^ 0xFC999606) * v19 + 1523;
  *(v20 - 128) = &a17;
  *(v20 - 120) = a16;
  v21 = (*(v18 + 8 * (v17 + 2200)))(v20 - 136);
  return (*(v18 + 8 * ((25 * (*(v20 - 112) > (v17 ^ 0x6D8u) + 798454602)) ^ v17)))(v21);
}

void sub_1A23FD4F8(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = 1388665877 * ((((2 * a1) | 0x4F4CD2A8) - a1 - 665217364) ^ 0xAA0B0BB8);
  v2 = *(a1 + 4) + v1;
  v3 = *(&off_1F14948E0 + v2 - 2464) - 8;
  v4 = (*(a1 + 16) + v1);
  (*&v3[8 * (v2 ^ 0x118)])(*(&off_1F14948E0 + (v2 ^ 0xAAA)) - 4, sub_1A23C0168);
  v5 = *(*(&off_1F14948E0 + v2 - 2471) - 4);
  v6 = v2 - 1556366573 * ((&v5 & 0x3C6FD109 | ~(&v5 | 0x3C6FD109)) ^ 0xA7740D1C) - 629;
  (*&v3[8 * v2 + 2456])(&v5);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1A23FD690(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, int a7, unint64_t a8)
{
  v15 = (*(v14 + 4 * v12) ^ v8) + (v11 ^ HIDWORD(a8));
  v16 = v15 + (((a7 ^ 0x3E6u) + 197) ^ 0xA0D156BD79E432B9) - ((2 * v15) & 0x2F3C8628CLL);
  *(v14 + 4 * a1) = v16 ^ 0x487C8F26;
  *(v14 + 4 * v12) = HIDWORD(v16) ^ 0x9149E8DD;
  return (*(v13 + 8 * (a7 ^ ((v10 + 1 != v9) * a4))))();
}

void sub_1A23FD7CC(char a1@<W8>, uint64_t a2, unsigned __int8 *a3)
{
  v5 = a3[3] ^ 0x89;
  v6 = ((*a3 ^ 0x89) << 24) | ((a3[1] ^ 0x89) << 16) | (((a1 - 35) ^ a3[2] ^ 0xF4) << 8) | v5;
  **(v3 + 8) = v6 + v4 - 2 * (v6 & (v4 + 10) ^ v5 & 0xA);
  JUMPOUT(0x1A23E53F8);
}

uint64_t sub_1A23FD840(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (v6 <= v7 - a2)
  {
    v9 = v7 - a2;
  }

  else
  {
    v9 = v6;
  }

  return (*(v8 + 8 * ((38 * (((a6 + 149) ^ 0x6F3u) + v9 < ((a6 - 2015604328) & 0x7823AAEFu) - 705)) ^ a6)))();
}

uint64_t sub_1A23FD89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char *a19, int a20, unsigned int a21)
{
  a19 = &a16;
  a21 = ((2 * (&a19 & 0x67E25080) - &a19 - 1742884997) ^ 0xACB90DF) * v21 + 789;
  v23 = (*(v22 + 22888))(&a19);
  return (*(v22 + 8 * ((3 * (a20 == 1863271989)) ^ 0x438u)))(v23);
}

uint64_t sub_1A23FD9A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *(*(a2 + 96) + 448) = *(*(a1 + 8) + 12) - ((2 * *(*(a1 + 8) + 12)) & 0x12) - 119;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 8 * ((324 * v4) ^ 0x855)))(0);
}

void XpqjnD(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

uint64_t sub_1A23FDA80()
{
  v6 = v4 ^ 0x488;
  v14 = &v10;
  v15 = (v4 - 827) ^ ((((&v12 | 0xB4D1DDDA) - &v12 + (&v12 & 0x4B2E2220)) ^ 0xD5EB6A92) * v0);
  v16 = v9;
  (*(v2 + 8 * (v4 ^ 0xDA2u)))(&v12);
  v12 = v4 - 1556366573 * ((&v12 + 1675180237 - 2 * (&v12 & 0x63D938CD)) ^ 0x73D1B27) + 1037;
  v14 = v9;
  (*(v2 + 8 * (v4 ^ 0xD84u)))(&v12);
  if (v13 == (v4 ^ 0x488 ^ v5))
  {
    v7 = v10;
  }

  else
  {
    v7 = v13;
  }

  v12 = (v4 + 596) ^ (((&v12 & 0x89349581 | ~(&v12 | 0x89349581)) ^ 0x5C004004) * v3);
  v14 = v9;
  (*(v2 + 8 * (v4 ^ 0xDFBu)))(&v12);
  v12 = (v6 + 1756) ^ (((1781754212 - (&v12 | 0x6A336964) + (&v12 | 0x95CC969B)) ^ 0xBF07BCE1) * v3);
  v14 = v11;
  (*(v2 + 8 * (v6 + 2323)))(&v12);
  return v7 ^ v1;
}

uint64_t sub_1A23FDE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int *a28)
{
  (*(v31 + 8 * (v28 + 2117)))(*a28, v30, 2048);
  v32 = *(v31 + 8 * ((1894 * ((*(v31 + 8 * (v28 + 2116)))(*a28, &STACK[0x3A0], LODWORD(STACK[0x3FC]) + ((v29 + (v28 ^ 0x352) + 631 - 1691) ^ (13 * (v28 ^ 0x352u))), 1) == 0)) ^ v28));
  return v32();
}

uint64_t sub_1A23FDF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, unint64_t a31, _DWORD *a32)
{
  *a32 = v33 + 1;
  v37 = (((v32 >> (v34 - 66)) ^ v32) << 7) & 0x9D2C5680 ^ (v32 >> (v34 - 66)) ^ v32;
  *(*a28 + a31) ^= v35 & (v37 << 15) ^ v37 ^ ((v35 & (v37 << 15) ^ v37) >> 18);
  return (*(v36 + 8 * ((146 * (a31 < 0x1FC)) ^ (v34 - 560896076) ^ 0xA37)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

void sub_1A23FE080(unint64_t a1)
{
  STACK[0x338] = a1;
  LODWORD(STACK[0x410]) = v1;
  JUMPOUT(0x1A23FE094);
}

uint64_t sub_1A23FE110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  v19 = (v16 - 1820) | 0x443;
  v20 = 1504884919 * ((((2 * &a12) | 0x971E2B7A) - &a12 + 879815235) ^ 0x304CA2A6);
  a13 = v17;
  a15 = &a10;
  a14 = -1889269338 - v20;
  a12 = v19 - v20 - 1075;
  a16 = v20 ^ 0x57AA81B2;
  v21 = (*(v18 + 8 * (v19 ^ 0xD1C)))(&a12);
  return (*(v18 + 8 * (((*(v17 + 24) != ((v19 - 1351) | 0x820) + 1863269633) * (v19 - 1462)) ^ v19)))(v21);
}

uint64_t sub_1A23FE264(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v9 = *(v8 + v5 * v7 + 36);
  v11 = v9 != v4 && v9 + 978887560 < a3;
  return (*(v6 + 8 * (((2 * ((v11 ^ (v3 + 122)) & 1)) & 0xEF | (16 * ((v11 ^ (v3 + 1807170938)) & 1))) ^ v3)))();
}

uint64_t sub_1A23FE30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v15 = (*(v13 + 8 * (v12 + 60)))(v11 ^ v14, 3638310758);
  *a11 = v15;
  return (*(v13 + 8 * (((v15 != 0) * ((((v12 + 358483144) & 0xEAA1F7FC) - 1857) ^ 0x70)) ^ v12)))();
}

uint64_t sub_1A23FE494(unsigned int a1)
{
  v1 = *(v8 + 8 * (v10 - 1779));
  v2 = v5 + 4 + v9;
  v3 = *v6;
  *(*v6 + v2) = (HIBYTE(a1) ^ 0xC7) - (v11 & (2 * (HIBYTE(a1) ^ 0xC7))) - 119;
  *(v3 + v2 + 1) = (v7 ^ BYTE2(a1)) - (v11 & (2 * (v7 ^ BYTE2(a1)))) - 119;
  *(v3 + v2 + 2) = (BYTE1(a1) ^ 4) - (v11 & (a1 >> 7)) - 119;
  *(v3 + v2 + 3) = a1 ^ 0xC3;
  return v1();
}

uint64_t sub_1A23FE4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = (((v13 - 583) - 1002) ^ v12) + v11;
  *(a10 - 7 + v15) = *(v10 - 7 + v15);
  return (*(v14 + 8 * ((3799 * ((v11 & 0xFFFFFFF8) - 8 == v12)) ^ v13)))();
}

uint64_t sub_1A23FE53C(uint64_t result)
{
  v1 = 843532609 * (((result | 0xB1B38D2E90DEAA51) - (result | 0x4E4C72D16F2155AELL) + 0x4E4C72D16F2155AELL) ^ 0x2C23B91B8062DD0FLL);
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = v2 - v1;
  v5 = v2 == v3;
  v6 = v4 > v3 - v1;
  if ((*(result + 24) - v1))
  {
    v5 = v6;
  }

  v7 = !v5;
  v8 = 28;
  if (!v7)
  {
    v8 = 36;
  }

  *(result + 4) = (*(result + v8) - v1) ^ (*(result + 32) - v1);
  return result;
}

uint64_t sub_1A23FE5E4(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 4);
  *(a1 + 64) = *(a2 + 8);
  return 0;
}

uint64_t sub_1A23FE5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a12;
  a16 = (((&a14 | 0x53831B84) - (&a14 & 0x53831B84)) ^ 0xC1552420) * v18 + 789;
  v19 = (*(v17 + 22888))(&a14);
  return (*(v17 + 8 * ((4092 * (a15 == v16)) ^ 0x56Eu)))(v19);
}

void sub_1A23FE684(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8) ^ (1785193651 * (((a1 | 0xAC036185) - (a1 & 0xAC036185)) ^ 0x2FB3EB93));
  v2 = 1556366573 * (v5 ^ 0x64E423EA);
  v7 = v4;
  v8 = v1 - v2 - 875954130;
  v6 = v2 ^ 0xD9C233F9;
  v3 = *(&off_1F14948E0 + v1 + 97) - 8;
  (*&v3[8 * (v1 ^ 0xB2C)])(v5);
  __asm { BRAA            X14, X17 }
}

uint64_t sub_1A23FE878()
{
  v13 = &v9;
  v14 = (v5 + 707) ^ (((&v11 + 578973921 - 2 * (&v11 & 0x228270E1)) ^ 0x43B8C7A9) * v0);
  v15 = v10;
  (*(v2 + 8 * (v5 ^ 0xBA0u)))(&v11);
  v11 = v5 - 1556366573 * ((&v11 + 1433460675 - 2 * (&v11 & 0x5570DFC3)) ^ 0x3194FC29) + 2571;
  v13 = v10;
  (*(v2 + 8 * (v5 + 2690)))(&v11);
  if (v12 == (v4 ^ (v1 + 76)))
  {
    v6 = v9;
  }

  else
  {
    v6 = v12;
  }

  v13 = v10;
  v11 = (v5 + 2130) ^ (((-1780764242 - (&v11 | 0x95DBB1AE) + (&v11 | 0x6A244E51)) ^ 0x40EF642B) * v3);
  (*(v2 + 8 * (v5 + 2697)))(&v11);
  v13 = v8;
  v11 = (v4 + 2136) ^ (((2 * (&v11 & 0x2E068598) - &v11 - 772179360) ^ 0xFB32501A) * v3);
  (*(v2 + 8 * (v4 + 2703)))(&v11);
  return v6 ^ v1;
}

uint64_t sub_1A23FEBEC@<X0>(int a1@<W8>)
{
  v8 = (((v1 ^ 0x55433ED3) + 1167384579 - 2 * ((v1 ^ 0x55433ED3) & 0x4594E003)) ^ 0x47C48A8) * v4;
  *(v7 - 160) = &STACK[0x3E4];
  *(v7 - 168) = a1 ^ v8;
  *(v7 - 184) = 0;
  *(v7 - 176) = &STACK[0x420];
  *(v7 - 192) = v8 + v3 + 387;
  v9 = (*(v5 + 8 * (v3 + 2905)))(v7 - 192);
  v10 = *(v7 - 152);
  STACK[0x3B8] = v2;
  return (*(v5 + 8 * (((v10 == v6 + ((2 * v3) ^ 0x2DA) - 716) * ((v3 + 177) ^ 0x434)) ^ v3)))(v9, 1718356402);
}

uint64_t sub_1A23FEDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v19 - 136) = v18 + ((v19 - 270166779 - 2 * ((v19 - 144) & 0xEFE59595)) ^ 0x8EDF22DD) * v13 + 132;
  *(v19 - 144) = v16;
  *(v19 - 120) = v15;
  *(v19 - 112) = &a13;
  *(v19 - 128) = &a13;
  (*(v17 + 8 * (v18 ^ 0x93E)))(v19 - 144);
  v20 = 1785193651 * ((((v19 - 144) | 0xDEF0C9C2) - ((v19 - 144) & 0xDEF0C9C2)) ^ 0x5D4043D4);
  *(v19 - 128) = v20 + v18 + 133;
  *(v19 - 136) = a10;
  *(v19 - 140) = ((v14 - 1) ^ (((v14 - 1) ^ 0xEDC72D82) + 174990478) ^ (((v14 - 1) ^ 0xEC7C0B1D) + 198509075) ^ (((v18 + 999) ^ (v14 - 1) ^ 0x7FFDF9A1) - 1739262223) ^ (((v18 - 522636231) & 0x1F26CBCF ^ (v14 - 1) ^ 0x66102D10) - 2118572384) ^ 0x68F37D2) - v20;
  v21 = (*(v17 + 8 * (v18 ^ 0x941)))(v19 - 144);
  return (*(v17 + 8 * ((247 * (*(v19 - 144) == -147050827)) ^ v18)))(v21);
}

uint64_t sub_1A23FEFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v2 - 1;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * (((v7 != 0) * (v3 - v4 + 81)) ^ (v5 + v3 + 2095))))();
}

uint64_t sub_1A23FF130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v71 - 192) = -2013067256 - 896639297 * ((((v71 - 192) | 0x200A9AE3) - ((v71 - 192) & 0x200A9AE3)) ^ 0x34A10C9B) + v69 + 53;
  (*(v70 + 8 * (v69 + 2206)))(v71 - 192);
  *(v71 - 168) = &STACK[0x414];
  *(v71 - 184) = &a66;
  *(v71 - 188) = v69 - 1388665877 * ((-2 - ((~(v71 - 192) | 0x16AA1A8B) + ((v71 - 192) | 0xE955E574))) ^ 0x9B077867) + 1940;
  LOBYTE(STACK[0x1840]) = 89 - 21 * ((-2 - ((~(v71 + 64) | 0x8B) + ((v71 + 64) | 0x74))) ^ 0x67);
  v72 = (*(v70 + 8 * (v69 ^ 0x9CD)))(v71 - 192);
  v73 = *(v71 - 192);
  LODWORD(STACK[0x30C]) = v67 + v69 + 53 - 715;
  LODWORD(STACK[0x318]) = v68;
  return (*(v70 + 8 * ((459 * (v73 == ((11 * ((v69 + 53) ^ 0x275)) ^ 0x6F0F41C6))) ^ (v69 - 651))))(v72);
}

uint64_t sub_1A23FF234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  v43 = ((((v42 - 144) | 0x7853F788A67482CDLL) - ((v42 - 144) & 0x7853F788A67482CDLL)) ^ 0x53A8896BC290A127) * v40;
  *(v42 - 112) = (v41 + 1) + v43;
  *(v42 - 128) = v43 ^ (v39 - 560896076) ^ 0x72D3C30F;
  *(v42 - 124) = 1 - v43;
  *(v42 - 120) = ((v39 - 560896076) ^ 0x72D3C333) - v43;
  *(v42 - 144) = v43 + 3;
  *(v42 - 136) = v43 + v39 + 1703326547;
  *(v42 - 132) = 1926480655 - v43 + v39 - 560896076 + 66;
  v44 = (*(a39 + 8 * (v39 - 560893209)))(v42 - 144);
  return (*(a39 + 8 * *(v42 - 104)))(v44);
}

void sub_1A23FF334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  *(v25 - 144) = &a22;
  *(v25 - 112) = &a24;
  *(v25 - 104) = a13;
  *(v25 - 136) = (v24 + 1234) ^ (143681137 * ((v25 - 144) ^ 0x613AB748));
  *(v25 - 128) = &a22;
  *(v25 - 120) = a14;
  JUMPOUT(0x1A23FF38CLL);
}

void sub_1A23FF498(int a1@<W8>)
{
  if (v2 < 0)
  {
    v2 = -v2;
  }

  **(v1 + 8) = v2 - ((v3 + 1664185046) & (2 * v2)) + 832093792;
  *(v1 + 4) = a1 + 1;
}

uint64_t sub_1A23FF8A8()
{
  v7 = v6 + v3;
  v8 = (v3 - 1) & 0xF;
  v9 = v8 + 1 - v3;
  v10 = v0 + v9;
  v11 = v0 + v8 + 1;
  v12 = v1 + v9;
  v13 = v1 + v8 + 1;
  v14 = v2 + ((v4 + 78) ^ 0xA10) - v3 + v8;
  v15 = v8 + v2 + 2;
  v17 = v11 > v6 && v10 < v7;
  v19 = v13 > v6 && v12 < v7 || v17;
  if (v15 <= v6 || v14 >= v7)
  {
    v21 = v19;
  }

  else
  {
    v21 = 1;
  }

  return (*(v5 + 8 * ((v21 * (v4 - 2479)) ^ v4)))();
}

uint64_t sub_1A23FFA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, int a16, int a17, uint64_t a18, char *a19)
{
  v22 = 143681137 * (((&a14 | 0x1FE71F67) - (&a14 & 0x1FE71F67)) ^ 0x7EDDA82F);
  a15 = v22 + v21 + 1421512301;
  a16 = v22 ^ 0x7D949367;
  a18 = a11;
  a19 = &a10;
  a14 = v22 ^ 0x6163ACC5;
  v23 = (*(v20 + 8 * (v21 + 2626)))(&a14);
  return (*(v20 + 8 * (((a17 == v19) * (v21 + 231)) ^ v21)))(v23);
}

uint64_t sub_1A23FFB0C@<X0>(uint64_t a1@<X2>, int a2@<W4>, unsigned int a3@<W5>, unint64_t a4@<X6>, uint64_t a5@<X7>, int a6@<W8>)
{
  v15 = (*(a1 + 4 * a6) ^ v6) + ((v8 + 1986) ^ HIDWORD(v14));
  v16 = v15 - (((((v13 + a2) & a3) - 566) ^ a4) & (2 * v15)) + a5;
  *(a1 + 4 * v9) = v16 ^ v10;
  *(a1 + 4 * a6) = HIDWORD(v16) ^ v12;
  return (*(v11 + 8 * (v13 ^ (4 * (v7 + 1 != a6)))))();
}

uint64_t sub_1A23FFBAC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *v6 = veorq_s8(*v8, xmmword_1A273D970);
  STACK[0x440] = STACK[0x440] + ((v7 - 1829513915) & 0x6D0C29F7u) + 231 - 670;
  STACK[0x448] = a1;
  STACK[0x450] = a1;
  return (*(v9 + 8 * (v7 | (4 * (v6 != a1)) | (32 * (v6 != a1)))))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1A23FFC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17)
{
  v22 = 1388665877 * (((&a14 | 0x8D7E71EE) - (&a14 & 0x8D7E71EE)) ^ 0xD31302);
  HIDWORD(a16) = v22 + 2769;
  a15 = a10;
  LODWORD(a14) = (199880445 * v19 + 103127814) ^ v22;
  (*(v21 + 22872))(&a14);
  v23 = 1037613739 * ((2 * (&a14 & 0x6FC68560) - &a14 + 272202396) ^ 0xC13B57E3);
  LODWORD(a15) = 380 - v23;
  a14 = a10;
  a17 = v23 ^ ((v18 ^ 0x7EFFDF77) - 1079117826 + ((2 * v18) & 0xFDFFBEEE));
  a16 = v17;
  v24 = (*(v21 + 22968))(&a14);
  return (*(v21 + 8 * ((4 * (HIDWORD(a15) == v20)) | 0xBAu)))(v24);
}

uint64_t sub_1A2400D84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  v29 = v26 ^ 0x980;
  v40 = a1[4];
  v30 = *a1;
  v31 = a1[1];
  v32 = v26 ^ 0xCB;
  v33 = v31[1];
  *(v28 - 144) = &a14;
  *(v28 - 112) = a2;
  *(v28 - 104) = v31;
  *(v28 - 128) = v33;
  *(v28 - 120) = v30;
  *(v28 - 136) = ((v26 ^ 0x980) - 497) ^ (143681137 * ((((v28 - 144) | 0xF33F2C53) + (~(v28 - 144) | 0xCC0D3AC)) ^ 0x92059B1A));
  v39 = v26 ^ 0xBB6;
  (*(v27 + 8 * (v26 ^ 0xBB6)))(v28 - 144);
  v38 = 2 * (v28 - 144);
  *(v28 - 144) = v31;
  *(v28 - 128) = &a10;
  *(v28 - 120) = v30;
  *(v28 - 136) = v29 + 143681137 * (((v38 | 0xF43F0314) - (v28 - 144) + 98598518) ^ 0x9B2536C2) - 1512;
  *(v28 - 112) = &a14;
  (*(v27 + 8 * (v29 + 614)))(v28 - 144);
  *(v28 - 128) = &a14;
  *(v28 - 120) = v30;
  *(v28 - 112) = &a10;
  *(v28 - 104) = v31;
  v34 = (v29 - 497) ^ (143681137 * ((v28 - 144) ^ 0x613AB748));
  *(v28 - 136) = v34;
  *(v28 - 144) = &a22;
  (*(v27 + 8 * v39))(v28 - 144);
  *(v28 - 128) = &a22;
  *(v28 - 120) = v30;
  *(v28 - 112) = &a10;
  *(v28 - 104) = v31;
  *(v28 - 136) = v34;
  *(v28 - 144) = &a18;
  (*(v27 + 8 * v39))(v28 - 144);
  *(v28 - 136) = (v29 - 497) ^ (143681137 * ((-766387025 - ((v28 - 144) | 0xD251DCAF) + ((v28 - 144) | 0x2DAE2350)) ^ 0x4C949418));
  *(v28 - 144) = &a24;
  *(v28 - 112) = &a10;
  *(v28 - 104) = v31;
  *(v28 - 128) = &a18;
  *(v28 - 120) = v30;
  (*(v27 + 8 * (v29 + 498)))(v28 - 144);
  *(v28 - 112) = &a10;
  *(v28 - 104) = v31;
  *(v28 - 136) = (v29 - 497) ^ (143681137 * ((2 * ((v28 - 144) & 0x72C173E8) - (v28 - 144) - 1925280747) ^ 0xEC043B5D));
  *(v28 - 128) = &a24;
  *(v28 - 120) = v30;
  *(v28 - 144) = &a12;
  (*(v27 + 8 * v39))(v28 - 144);
  *(v28 - 144) = &a26;
  *(v28 - 112) = &a10;
  *(v28 - 104) = v31;
  *(v28 - 128) = &a12;
  *(v28 - 120) = v30;
  *(v28 - 136) = (v29 - 497) ^ (143681137 * (((v38 | 0x75E14D92) - (v28 - 144) - 988849865) ^ 0x5BCA1181));
  (*(v27 + 8 * (v29 + 498)))(v28 - 144);
  *(v28 - 136) = (v29 - 497) ^ (143681137 * ((v28 + 288424919 - 2 * ((v28 - 144) & 0x11310467)) ^ 0x700BB32F));
  *(v28 - 144) = &a20;
  *(v28 - 112) = &a10;
  *(v28 - 104) = v31;
  *(v28 - 128) = &a26;
  *(v28 - 120) = v30;
  (*(v27 + 8 * v39))(v28 - 144);
  *(v28 - 136) = (v29 - 497) ^ (143681137 * ((-836210791 - ((v28 - 144) | 0xCE286F99) + ((v28 - 144) | 0x31D79066)) ^ 0x50ED272E));
  *(v28 - 112) = &a10;
  *(v28 - 104) = v31;
  *(v28 - 144) = &a10;
  *(v28 - 128) = &a20;
  *(v28 - 120) = v30;
  (*(v27 + 8 * (v29 + 498)))(v28 - 144);
  v35 = *v31;
  *(v28 - 144) = (v29 - 640) ^ (50899313 * (((((v28 - 144) | 0xF24C25E6) ^ 0xFFFFFFFE) - (~(v28 - 144) | 0xDB3DA19)) ^ 0x2778F063));
  *(v28 - 136) = &a16;
  *(v28 - 128) = v35;
  (*(v27 + 8 * (v29 ^ 0x3DB)))(v28 - 144);
  *(v28 - 144) = v40;
  *(v28 - 132) = v29 + 50899313 * ((v28 + 282028760 - 2 * ((v28 - 144) & 0x10CF6B68)) ^ 0x3A044112) - 1665;
  v36 = (*(v27 + 8 * (v29 ^ 0x3D2)))(v28 - 144);
  return (*(v27 + 8 * ((((*(v28 - 136) - 408352497) > 0x7FFFFFFE) * (v32 + 67)) ^ v29)))(v36);
}

void sub_1A24012C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = *(v9 + 8);
  **(v9 + 16) = v8;
  *v11 = a8;
  *v9 = *(v10 + 24);
}

uint64_t sub_1A2401374@<X0>(int a1@<W8>)
{
  v6 = (a1 + 1121050894) & 0xBD2E1EEE;
  *(*v4 + v2) = -119;
  v7 = v3 != v2 + (v6 ^ v1) - 830;
  return (*(v5 + 8 * ((v7 | (2 * v7)) ^ v6)))();
}

uint64_t sub_1A2401A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if ((a8 & 2) != 0)
  {
    v68 = 1;
  }

  else
  {
    v68 = 2;
  }

  LODWORD(STACK[0x43C]) = v68;
  LODWORD(STACK[0x30C]) = 0;
  LODWORD(STACK[0x318]) = 0;
  return (*(v67 + 8 * ((459 * (a65 == ((11 * (v66 ^ 0x275)) ^ 0x6F0F41C6))) ^ (v66 - 704))))(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1A2401A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51)
{
  if ((a3 & 0x20) != 0)
  {
    v53 = 2;
  }

  else
  {
    v53 = 5;
  }

  LODWORD(STACK[0x200]) = v53;
  if (v51 > -840899597)
  {
    if (v51 == -840899596 || v51 == 1412371803)
    {
      goto LABEL_12;
    }

    v54 = -500603527;
  }

  else
  {
    if (v51 == -1927491726 || v51 == -1841407410)
    {
      goto LABEL_12;
    }

    v54 = -1453905592;
  }

  if (v51 != v54)
  {
    JUMPOUT(0x1A2401A38);
  }

LABEL_12:
  *&STACK[0x17C8] = xmmword_1A273D920;
  return (*(v52 + 8 * ((((a51 - 639) ^ 0xA0) * ((a3 & 0x20) == 0)) ^ (a51 + 916))))(a1, 1718356402, a2, 2045123515);
}

void sub_1A2401EC8(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  LODWORD(STACK[0x204]) = a1;
  v49 = (*(v48 + 8 * (v47 ^ 0xA7D)))(a47 + 16, 0);
  v50 = *(a47 + 16);
  *(a47 + 4) = *(a47 + 24);
  *(a47 + 8) = v50;
  v51 = v47 ^ 0xB9B;
  *(a47 + 12) = (*(v48 + 8 * v51))(v49);
  *a47 = (*(v48 + 8 * v51))();
  JUMPOUT(0x1A2401F38);
}

void sub_1A24020C0(uint64_t a1@<X8>, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v8 = v6 + 1130;
  a3 = (v6 + 221) ^ (50899313 * (&a3 ^ 0x2ACB2A7A));
  a5 = a1;
  (*(v5 + 8 * (v6 + 1458)))(&a3);
  *(v7 + 4) = (v8 ^ 0xA59AC18C) - *(v7 + 4);
  JUMPOUT(0x1A23C13A0);
}

void sub_1A2402140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35)
{
  v36 = *(STACK[0x298] - 0x10B2D3D621445EDCLL);
  v37 = *STACK[0x3E8];
  STACK[0x2F8] = v35;
  LODWORD(STACK[0x37C]) = v36;
  STACK[0x3D0] = v37;
  STACK[0x260] = a35;
  LODWORD(STACK[0x248]) = 1640393826;
  JUMPOUT(0x1A2402D50);
}

uint64_t sub_1A24021B8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (v18 + 4 * v13);
  v21 = HIDWORD(v15) + v14 * (*(v10 + 4 * v13) ^ v8) + (*v20 ^ v8) + (v9 >> ((v19 - 127) ^ v17)) + v11 * (*(v16 + 4 * v13) ^ v8);
  *(v20 - 1) = v21 + v8 - (a2 & (2 * v21));
  return (*(v12 + 8 * ((960 * (v13 + 1 == a8)) ^ v19)))();
}

uint64_t sub_1A2402234(__n128 a1)
{
  a1.n128_u16[0] = -30327;
  a1.n128_u8[2] = -119;
  a1.n128_u8[3] = -119;
  a1.n128_u8[4] = -119;
  a1.n128_u8[5] = -119;
  a1.n128_u8[6] = -119;
  a1.n128_u8[7] = -119;
  return sub_1A240225C(a1);
}

uint64_t sub_1A2402298@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * (v4 ^ 0x7B1B5031)) ^ (a2 + v4 + 890))))();
}

void sub_1A2402404(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 4) - 2044285006) > 4;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1A2402470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((7 * (v3 ^ 0x164u)) ^ 0xFFFFFFFFFFFFF968) + v2;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * ((776 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_1A24024B0(int a1, uint64_t a2, char a3)
{
  v7 = *(v6 - 252 + 4 * (v3 >> (((v4 + 30) & 0xFE) + a3)) + 72);
  v8 = a1 + (v3 ^ 0xFFFDFBF7) + ((2 * v3) & 0xFFFBF7E8);
  *(a2 + v8 + 9) = (HIBYTE(v7) ^ 0x3B) - ((2 * (HIBYTE(v7) ^ 0x3B)) & 0x12) - 119;
  *(a2 + v8 + 11) = (BYTE1(v7) ^ 0x70) - ((v7 >> 7) & 0x12) - 119;
  *(a2 + v8 + 10) = (BYTE2(v7) ^ 0xD5) - ((2 * (BYTE2(v7) ^ 0xD5)) & 0x12) - 119;
  *(a2 + v8 + 12) = v7 ^ 0xF9;
  return (*(v5 + 8 * ((3431 * (v3 + 4 < *(v6 - 160))) ^ v4)))();
}

uint64_t sub_1A2402588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, int a19, int a20)
{
  if (a16 != 1863271989 && a16 != -1863311991)
  {
    JUMPOUT(0x1A23B4554);
  }

  return (*(v21 + 8 * ((92 * (a20 != (v20 ^ (v20 + 439) ^ 0x6F0F444C))) ^ (v20 + 605144500))))();
}

void sub_1A2402ADC(uint64_t a1)
{
  v1 = 1556366573 * ((a1 - 1459571285 - 2 * (a1 & 0xA900B5AB)) ^ 0xCDE49641);
  v2 = **(a1 + 24) - 329001285;
  v3 = *a1 + v1 - 1372376124;
  v4 = v2 < 0xF6352E8B;
  v5 = v2 > v3;
  if (v3 < 0xF6352E8B != v4)
  {
    v5 = v4;
  }

  __asm { BRAA            X10, X17 }
}

uint64_t sub_1A2402C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, int a13, unsigned int a14)
{
  a12 = &a10;
  a14 = ((1384389409 - (&a12 | 0x52841B21) + (&a12 | 0xAD7BE4DE)) ^ 0x3FADDB7A) * v16 + 789;
  v17 = (*(v15 + 22888))(&a12);
  return (*(v15 + 8 * ((3145 * (a13 == v14)) ^ 0x60F)))(v17);
}

void sub_1A2402F08(uint64_t a1)
{
  v1 = (1564307779 * (((a1 | 0x689DD73) - (a1 & 0x689DD73)) ^ 0x91841160)) ^ *(a1 + 16) ^ 0x4C6;
  __asm { BRAA            X3, X17 }
}

uint64_t sub_1A2403094@<X0>(uint64_t a1@<X1>, int a2@<W8>)
{
  result = (*(v3 + 8 * (a2 ^ 0xCB7)))(*v4, a1, ((a2 - 2025) | 0x489u) + *(v2 + 8) - 1046930014);
  *v2 = v6;
  *(v2 + 8) = v5;
  *(v2 + 12) = v5;
  return result;
}

uint64_t sub_1A24031DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15)
{
  a15 = (210068311 * ((&a14 & 0x8853A63C | ~(&a14 | 0x8853A63C)) ^ 0xE57A6667)) ^ 0x48449A90;
  v16 = (*(v15 + 22400))(&a14);
  return (*(v15 + 8 * ((3916 * (a14 == 1863271989)) ^ 0x743u)))(v16);
}

uint64_t sub_1A2403274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v22 - 120) = v17;
  *(v22 - 112) = &a17;
  *(v22 - 128) = v21 + ((((v22 - 128) ^ 0x4DC98325 | 0x7E6051F5) - ((v22 - 128) ^ 0x4DC98325) + (((v22 - 128) ^ 0x4DC98325) & 0x819FAE08)) ^ 0x574DF13A) * v19 + 1119;
  v23 = (*(v18 + 8 * (v21 ^ 0xF04)))(v22 - 128);
  return (*(v18 + 8 * (((*(v22 - 104) <= (v20 + 1049)) * ((149 * (v21 ^ 0x41A)) ^ 0x1FC)) ^ v21)))(v23);
}

uint64_t sub_1A2403510@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v7 = (a2 - 465) | 0xAu;
  **(a1 + 16) = v6 + v5 + v7 - 258;
  return (*(v3 + 8 * ((1480 * (*(a3 + 24) == v4 + v7 - 266)) ^ v7)))();
}

void PjPfaWZz()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 + dword_1EB094868) ^ 0x43)) ^ byte_1A273D410[byte_1A2739420[(11 * ((qword_1EB094620 + dword_1EB094868) ^ 0x43))] ^ 0xB2]) + 128);
  v1 = 11 * ((qword_1EB094620 + *v0) ^ 0x43);
  v2 = *(&off_1F14948E0 + (*(off_1F1494948 + (*(off_1F1494C60 + v1 - 8) ^ 0x1Bu) - 12) ^ v1) - 67);
  v3 = &v5[*(v2 - 4) ^ *v0];
  *v0 = 1922045707 * v3 - 0x4AEE6E5751BCA91FLL;
  *(v2 - 4) = 1922045707 * (v3 ^ 0x21D37FB25A3D4D43);
  v6[1] = (210068311 * ((((2 * (v6 ^ 0x281B318)) | 0x87864A10) - (v6 ^ 0x281B318) - 1136862472) ^ 0xD394A9B4)) ^ 0x48449A90;
  LOBYTE(v2) = 11 * ((*(v2 - 4) - *v0) ^ 0x43);
  v4 = *(&off_1F14948E0 + ((11 * ((qword_1EB094620 + dword_1EB094868) ^ 0x43)) ^ byte_1A2730B50[byte_1A273D810[(11 * ((qword_1EB094620 + dword_1EB094868) ^ 0x43))] ^ 0xE6]) - 6) - 8;
  (*&v4[8 * (*(off_1F1494B60 + ((*off_1F1494B98)[v2] ^ 0x54u) - 12) ^ v2) + 21072])(v6);
  __asm { BRAA            X8, X17 }
}

void sub_1A24039EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  **(a1 + 8) = v3;
  *(a2 + 16) = v2;
  JUMPOUT(0x1A23CDB04);
}

uint64_t sub_1A2403A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  *(v19 - 120) = (v17 + 448) ^ (210068311 * ((~((v19 - 128) | 0x88AF3458) + ((v19 - 128) & 0x88AF3458)) ^ 0xE586F403));
  *(v19 - 128) = &a15;
  *(v19 - 112) = v16;
  v20 = (*(v15 + 8 * (v17 ^ 0x2DE)))(v19 - 128);
  return (*(v15 + 8 * (((v17 - 1981) * (v18 == 1)) ^ v17)))(v20);
}

void sub_1A2403AF0(uint64_t a1)
{
  v1 = *(a1 + 40) - 1564307779 * ((2 * (a1 & 0x6232EE25) - a1 - 1647504934) ^ 0xAC0DDC9);
  __asm { BRAA            X0, X17 }
}

uint64_t sub_1A2403C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * (((v2 + v4 + 2452) | 0x80) - 1113)) ^ (v2 + v4 + 3221))))();
}

uint64_t sub_1A2403C74@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X4>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  v16 = HIDWORD(v14) + HIDWORD(v11) + ((v12 + 670) ^ (v10 - 1545) ^ *(v15 + 4 * a4));
  *(v15 + 4 * a10) = v16 + v10 - ((a2 + v12 + 156 - 1077) & (2 * v16));
  *(v15 + 4 * a4) = HIDWORD(v16) | v10;
  return (*(v13 + 8 * (v12 ^ (63 * (a1 + 1 == a3)))))();
}

void sub_1A2403D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v70 = *STACK[0x3F0];
  v71 = *a69;
  STACK[0x2F8] = v69;
  LODWORD(STACK[0x37C]) = v70;
  STACK[0x3D0] = v71;
  STACK[0x260] = a36;
  LODWORD(STACK[0x248]) = 1565756625;
  JUMPOUT(0x1A2402D50);
}

uint64_t sub_1A2403F08(uint64_t a1, uint64_t a2)
{
  *(v2 + 1424) = v3;
  *(*(a1 + 96) + 520) = *(a2 + 8) + 1;
  return 0;
}

uint64_t sub_1A2403F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, __int16 a16, char a17, char *a18, char a19, int a20, int a21, char a22, uint64_t a23, char a24, char *a25, char *a26, char *a27, char *a28, char *a29)
{
  a25 = &a24;
  a26 = a18;
  a28 = &a22;
  HIDWORD(a27) = (v30 + 68670631) ^ (1037613739 * (&a25 ^ 0xD1022D7F));
  (*(v32 + 8 * (v30 + 1594)))(&a25);
  a29 = a18;
  LODWORD(a28) = (v30 - 1157) ^ (843532609 * ((2 * (&a25 & 0x33815C38) - &a25 - 864115772) ^ 0xDCC2D49A));
  a26 = &a17;
  a27 = &a19;
  (*(v32 + 8 * (v30 + 1556)))(&a25);
  a26 = &a15;
  LODWORD(a27) = (v30 - 409) ^ ((((&a25 | 0xCFBF717C) - (&a25 & 0xCFBF717C)) ^ 0xAE85C634) * v31);
  a28 = a18;
  (*(v32 + 8 * (v30 + 1540)))(&a25);
  a26 = a18;
  LODWORD(a25) = v30 - 1556366573 * ((&a25 - 2069642899 - 2 * (&a25 & 0x84A3C16D)) ^ 0xE047E287) + 1455;
  v33 = (*(v32 + 8 * (v30 ^ 0xE2A)))(&a25);
  return (*(v32 + 8 * (((HIDWORD(a25) != v29) * ((v30 ^ 0x779) - 571)) ^ v30)))(v33);
}

uint64_t sub_1A2404218@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v12 = (*(*(v11 + 8) + 4 * v4) ^ v7) + v2 + (*(*(v8 + 8) + 4 * v4) ^ v7);
  *(*(a2 + 8) + 4 * v4) = v12 + v7 - ((v12 << ((v5 + 88) ^ v6)) & v10);
  return (*(v9 + 8 * (((v4 + 1 != v3) * a1) ^ v5)))();
}

uint64_t sub_1A2404288@<X0>(uint64_t a1@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7) - (v5 & (2 * *(v3 + v7))) - 119;
  return (*(v1 + 8 * (((v7 == 0) * v6) ^ v2)))(0);
}

void sub_1A24042BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22)
{
  v29 = ((((v28 - 144) | 0x4E19F62D) + (~(v28 - 144) | 0xB1E609D2)) ^ 0xCDA97C3A) * v25;
  *(v28 - 136) = &a20;
  *(v28 - 144) = v23 - v29 + 147;
  *(v28 - 140) = v29 + 259466218;
  v30 = v22;
  (*(v24 + 8 * (v23 | 0x10F)))(v28 - 144);
  *(v28 - 128) = &a22;
  *(v28 - 120) = v30;
  *(v28 - 112) = &a20;
  *(v28 - 104) = v27;
  *(v28 - 144) = &a22;
  *(v28 - 136) = (v23 - 830) ^ ((((v28 - 144) & 0x8C37436F | ~((v28 - 144) | 0x8C37436F)) ^ 0x12F20BD8) * v26);
  (*(v24 + 8 * (v23 + 165)))(v28 - 144);
  JUMPOUT(0x1A23EB7A0);
}

uint64_t sub_1A2404420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, int a20)
{
  a20 = v20 - 63889078;
  *(v23 - 128) = (v21 + 957) ^ (50899313 * ((v23 - 128) ^ 0x2ACB2A7A));
  *(v23 - 120) = &a17;
  *(v23 - 112) = a16;
  (*(v22 + 8 * (v21 + 2194)))(v23 - 128);
  *(v23 - 128) = v21 + 1556366573 * ((((v23 - 128) | 0xC9AE39) - (v23 - 128) + ((v23 - 128) & 0xFF3651C0)) ^ 0x642D8DD3) + 1490;
  *(v23 - 120) = &a19;
  *(v23 - 112) = a16;
  v24 = (*(v22 + 8 * (v21 ^ 0x9BB)))(v23 - 128);
  return (*(v22 + 8 * (((*(v23 - 104) <= (v21 + 798455040)) * ((v21 ^ 0x17B) - 872)) ^ v21)))(v24);
}

uint64_t sub_1A2404528()
{
  v3 = *(v2 + 8 * (v0 + 2126));

  return v3(v1);
}

uint64_t sub_1A240458C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v25 = *(a21 + 8);
  STACK[0x244] = 0x8989898989898989;
  STACK[0x24C] = 0x8989898989898989;
  v26 = 1037613739 * ((v24 - 184) ^ 0xD1022D7F);
  v27 = (v24 - 184);
  v27[2] = v25;
  v27[3] = &STACK[0x220];
  v27[5] = &STACK[0x234];
  *(v24 - 152) = (v21 + 2458) ^ v26;
  *(v24 - 184) = v26 + 784505208;
  v27[1] = &STACK[0x244];
  v28 = (*(v22 + 8 * (v21 ^ 0xB12)))(v24 - 184);
  return (*(v22 + 8 * (((*(v24 - 148) == v23) * (v21 + (v21 ^ 0x762) - 89)) ^ v21)))(v28);
}

void QgPp5PNq(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v5 = a5 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A2404D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v5 + 8);
  v8 = *(v5 + 16);
  *(v6 - 132) = 26 * (v3 ^ 0x822);
  *(v6 - 112) = veorq_s8(*v9, xmmword_1A273D910);
  *(v6 - 144) = v7;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  v12 = *(v4 + 8 * ((28 * v11) ^ v3));
  *(v6 - 136) = -42900;
  return v12(a1, a2, a3);
}

uint64_t sub_1A2404DFC@<X0>(int a1@<W4>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, int a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  v64 = a1 + 525;
  v62 = 143681137 * ((v61 - 192) ^ 0x613AB748);
  *(v61 - 192) = (a1 + 1725) ^ v62;
  *(v61 - 184) = a2 + 800;
  *(v61 - 168) = v58 + 1168;
  *(v61 - 160) = a2 + 528;
  *(v61 - 176) = ((v59 ^ 0xFFFEDBCF) + 637513085 + ((2 * v59) & 0xFFFDB79E)) ^ v62;
  *(v61 - 152) = 0;
  *(v61 - 144) = &STACK[0x490] + a27;
  *(v61 - 136) = &a58;
  *(v61 - 128) = 0;
  (*(v60 + 8 * (a1 + 2213)))(v61 - 192);
  return (*(v60 + 8 * (((((a50 ^ (*(v61 - 188) == 1863271989)) & 1) == 0) | (32 * (((a50 ^ (*(v61 - 188) == 1863271989)) & 1) == 0))) ^ v64)))(520);
}

uint64_t sub_1A2404FA0@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v13 = (v12 + 4 * v6);
  v14 = HIDWORD(v11) + (*v13 ^ v2) + HIDWORD(v4) + v10 * (*(v9 + 4 * v6) ^ v2);
  *(v13 - 1) = v14 + v2 - ((v14 << ((v5 - 1) ^ v3)) & a1);
  return (*(v8 + 8 * (((v6 + 1 != a2) * v7) ^ v5)))();
}

uint64_t sub_1A24050CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = (210068311 * (&a12 ^ 0x92D63FA4)) ^ 0x48449A90;
  v15 = (*(v14 + 22400))(&a12);
  return (*(v14 + 8 * ((1924 * (a12 == v13)) ^ 0x147u)))(v15);
}

void sub_1A2405140(uint64_t a1)
{
  v2 = *v1;
  *a1 = 0;
  *(a1 + 8) = 0x3E66DDC33E66DDC3;
  *(a1 + 16) = 0xCC55435801118DFCLL;
  *(a1 + 24) = 1863271989;
  *v2 = a1;
  JUMPOUT(0x1A2405178);
}

void sub_1A2405334(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, int a47)
{
  *(v49 + 1424) = 0;
  memset((v49 + 1432), 137, 104);
  *(a1 + 96) = v49;
  STACK[0x3D8] = a1 + 96;
  *(v49 + 476) = v48;
  v51 = STACK[0x2A8];
  STACK[0x2F8] = *(v50 + 8 * (v47 - 825)) - 12;
  LODWORD(STACK[0x37C]) = a47;
  STACK[0x3D0] = v51;
  STACK[0x260] = a1;
  LODWORD(STACK[0x248]) = 1491119424;
  JUMPOUT(0x1A2402D54);
}

uint64_t sub_1A24053F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char *a18, int a19, unsigned int a20)
{
  a18 = &a14;
  a20 = ((1800799794 - (&a18 ^ 0xF2ED84B9 | 0x6B560632) + (&a18 ^ 0xF2ED84B9 | 0x94A9F9CD)) ^ 0xF49242D0) * v22 + 789;
  v23 = (*(v21 + 22888))(&a18);
  return (*(v21 + 8 * ((2714 * (a19 == v20)) ^ 0xF9u)))(v23);
}

void sub_1A24054FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19)
{
  v23 = 1556366573 * ((v22 - 144) ^ 0x64E423EA);
  *(v22 - 144) = v21;
  *(v22 - 132) = (v20 + 404) ^ v23;
  *(v22 - 128) = (((v20 - 61) ^ 0xEC6AB9E9) + a17) ^ v23;
  *(v22 - 120) = a19;
  (*(v19 + 8 * (v20 + 2181)))(v22 - 144);
  JUMPOUT(0x1A23E40F4);
}

uint64_t sub_1A2405564(void *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  *a1 = 0;
  *a2 = 0;
  a16 = (210068311 * ((&a15 & 0x635B662B | ~(&a15 | 0x635B662B)) ^ 0xE72A670)) ^ 0x48449A90;
  v18 = (*(v17 + 22400))(&a15);
  return (*(v17 + 8 * ((3966 * (a15 == v16)) ^ 0x7DAu)))(v18);
}

void sub_1A2405604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = *(v12 + 24);
  **(v12 + 56) = v13;
  *v14 = a12;
  JUMPOUT(0x1A2405618);
}

uint64_t sub_1A24056FC@<X0>(void *a1@<X4>, int a2@<W5>, unsigned int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  v45 = &a42 + (a2 - 1);
  v46 = 757077909 * ((*(*a1 + (*a26 & 0xFFFFFFFFEFF70758)) ^ v45) & 0x7FFFFFFF);
  v47 = 757077909 * (v46 ^ HIWORD(v46));
  v48 = *(*(&off_1F14948E0 + (v43 ^ 0x32)) + (v47 >> 24) - 4);
  v49 = *(*(&off_1F14948E0 + v43 - 122) + (v47 >> 24));
  v50 = (((v43 - 953332124) & 0x38D2B5FD ^ 3) + ((v43 + 146) | 2) + (a3 >> v42) - ((2 * (a3 >> v42)) & 0x2C) - 15) ^ *(*(&off_1F14948E0 + v43 - 31) + (v47 >> 24) - 4) ^ v48 ^ v49 ^ v47 ^ (-7 * (v47 >> 24));
  LODWORD(v47) = ((((v43 + 100) & 0xFD ^ 3) + ((v43 - 110) | 2) + (a3 >> v42) - ((2 * (a3 >> v42)) & 0x2C) - 15) ^ *(*(&off_1F14948E0 + v43 - 31) + (v47 >> 24) - 4) ^ v48 ^ v49 ^ v47 ^ (-7 * BYTE3(v47)));
  *v45 = v50 ^ 0x16;
  return (*(v44 + 8 * ((967 * (a2 == (v47 != 22))) ^ v43)))();
}

uint64_t sub_1A240580C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, int a16)
{
  a16 = v16 + 768979756 + ((v17 + 427) | 0x550);
  *(v20 - 120) = &a13;
  *(v20 - 112) = v18;
  *(v20 - 128) = (v17 + 1389) ^ (50899313 * ((((v20 - 128) | 0x82085CD5) - ((v20 - 128) & 0x82085CD5)) ^ 0xA8C376AF));
  (*(v19 + 8 * (v17 ^ 0xBCE)))(v20 - 128);
  *(v20 - 128) = v17 + 1556366573 * ((v20 + 210069414 - 2 * ((v20 - 128) & 0xC856826)) ^ 0x68614BCC) + 1922;
  *(v20 - 120) = &a15;
  *(v20 - 112) = v18;
  v21 = (*(v19 + 8 * (v17 + 2599)))(v20 - 128);
  return (*(v19 + 8 * (((*(v20 - 104) > 0x2F9777A6u) * (v17 ^ 0x16E)) ^ v17)))(v21);
}

uint64_t sub_1A2405A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22)
{
  v28 = 1388665877 * ((&a19 & 0x79B57301 | ~(&a19 | 0x79B57301)) ^ 0xBE7EE12);
  LODWORD(a19) = v28 ^ (199880445 * v26 + 103127814);
  HIDWORD(a21) = v28 + 2769;
  a20 = a14;
  (*(v27 + 22872))(&a19);
  a22 = 1960 - 1785193651 * (((&a19 | 0xCA3DE6EC) - (&a19 & 0xCA3DE6EC)) ^ 0x498D6CFA);
  a20 = a14;
  a21 = v25;
  (*(v27 + 23152))(&a19);
  v29 = 1388665877 * ((-1326929879 - (&a19 | 0xB0E8A829) + (&a19 | 0x4F1757D6)) ^ 0xC2BA353A);
  HIDWORD(a21) = v29 + 2769;
  a20 = a14;
  LODWORD(a19) = v29 ^ (199880445 * v24 + 103127814);
  (*(v27 + 22872))(&a19);
  v30 = 1037613739 * ((((&a19 | 0x698EAEC0) ^ 0xFFFFFFFE) - (~&a19 | 0x9671513F)) ^ 0x47737C40);
  a19 = a14;
  LODWORD(a20) = 380 - v30;
  a22 = ((v23 ^ 0xFEBDD7F5) + 1072693120 + ((2 * v23) & 0xFD7BAFEA)) ^ v30;
  a21 = v22;
  v31 = (*(v27 + 22968))(&a19);
  return (*(v27 + 8 * ((2916 * (HIDWORD(a20) == 1863271989)) ^ 0x392u)))(v31);
}

uint64_t sub_1A2405D4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, _BYTE *a14, char a15, uint64_t a16, int a17, char a18, unsigned int a19, int a20, char *a21, char *a22, _BYTE *a23, _BYTE *a24)
{
  a24 = a14;
  a21 = &a18;
  a22 = &a15;
  LODWORD(a23) = (v24 - 684) ^ (843532609 * ((&a19 & 0x61922151 | ~(&a19 | 0x61922151)) ^ 0x8ED1A9F0));
  (*(v26 + 8 * (v24 ^ 0x817)))(&a19);
  a21 = &a13;
  LODWORD(a22) = (v24 + 64) ^ ((((&a19 | 0xC568A016) - (&a19 & 0xC568A016)) ^ 0xA452175E) * v25);
  a23 = a14;
  (*(v26 + 8 * (v24 + 2013)))(&a19);
  a19 = v24 - 1556366573 * ((2 * (&a19 & 0x2B09EAA0) - &a19 + 1425413464) ^ 0x301236B2) + 1928;
  a21 = a14;
  v27 = (*(v26 + 8 * (v24 + 2047)))(&a19);
  return (*(v26 + 8 * ((1188 * (a20 == (((v24 - 637) | 0x112) ^ 0x6F0F47E7))) ^ v24)))(v27);
}

uint64_t sub_1A2405EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13)
{
  *(v19 - 144) = &a13;
  *(v19 - 136) = (v13 + 1138) ^ (((((v19 - 144) | 0x689DFE67) - ((v19 - 144) & 0x689DFE67)) ^ 0x9A7492F) * v17);
  *(v19 - 112) = &a11;
  *(v19 - 104) = v16;
  *(v19 - 128) = &a13;
  *(v19 - 120) = v15;
  v20 = (*(v18 + 8 * (v13 + 2133)))(v19 - 144);
  return (*(v18 + 8 * ((195 * ((v14 - 408353129 + v13 - 9) < 0x7FFFFFFF)) ^ (v13 + 990))))(v20);
}

uint64_t sub_1A2406010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, uint64_t a13, uint64_t a14, unsigned int a15)
{
  v21 = 1388665877 * (((&a12 | 0xC9464EAD) - &a12 + (&a12 & 0x36B9B150)) ^ 0x44EB2C41);
  a12 = v21 ^ (199880445 * v18 + 103127814);
  a13 = a11;
  HIDWORD(a14) = v21 + 2769;
  (*(v20 + 22872))(&a12);
  v22 = 1388665877 * (((&a12 ^ 0xDDE4B60D) & 0xC6676E38 | ~(&a12 ^ 0xDDE4B60D | 0xC6676E38)) ^ 0x69D14526);
  a12 = (199880445 * HIDWORD(v17) + 103127814) ^ v22;
  a13 = a11;
  HIDWORD(a14) = v22 + 2769;
  (*(v20 + 22872))(&a12);
  v23 = 1388665877 * (((&a12 | 0x90F3D3D7) - &a12 + (&a12 & 0x6F0C2C28)) ^ 0x1D5EB13B);
  a13 = a11;
  a12 = v23 ^ (199880445 * v17 + 103127814);
  HIDWORD(a14) = v23 + 2769;
  (*(v20 + 22872))(&a12);
  a15 = 1960 - 1785193651 * (((&a12 | 0xCDD5242A) - &a12 + (&a12 & 0x322ADBD0)) ^ 0x4E65AE3C);
  a13 = a11;
  a14 = v16;
  (*(v20 + 23152))(&a12);
  v24 = 1388665877 * (((&a12 | 0x96521786) - (&a12 & 0x96521786)) ^ 0x1BFF756A);
  a12 = v24 ^ (199880445 * v15 + 103127814);
  a13 = a11;
  HIDWORD(a14) = v24 + 2769;
  v25 = (*(v20 + 22872))(&a12);
  return (*(v20 + 8 * ((3064 * (a14 == v19)) ^ 0x289u)))(v25);
}

void sub_1A2406294(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  a3 = a1;
  a6 = v8;
  a5 = v7 + 1380333833 * (((&a3 | 0xA46394AD) - &a3 + (&a3 & 0x5B9C6B50)) ^ 0x1A313F27) - 1302;
  (*(v6 + 8 * (v7 + 1479)))(&a3);
  JUMPOUT(0x1A23C13A0);
}

uint64_t sub_1A2406360()
{
  v6 = (v3 + v2);
  *v6 = v5;
  v6[1] = v5;
  v7 = ((v0 + 1368) | 4u) - 2068 == (v1 & 0xFFFFFFFFFFFFFFF0);
  return (*(v4 + 8 * (v7 | (2 * v7) | v0)))();
}

uint64_t sub_1A24067BC()
{
  v6 = (((v0 | 0xA876A158) - (v0 & 0xA876A158)) ^ 0xBCDD3720) * v2;
  *(v5 - 168) = v6 ^ 0x52840B2F;
  *(v5 - 184) = 0;
  *(v5 - 176) = &STACK[0x250];
  *(v5 - 160) = &STACK[0x26C];
  *(v5 - 192) = v6 + v1 - 1257;
  v7 = (*(v3 + 8 * (v1 + 1261)))(v5 - 192);
  return (*(v3 + 8 * ((13 * (*(v5 - 152) != (((v1 - 1647) | 3) ^ (v4 + 9)))) ^ v1)))(v7);
}

void sub_1A24068B4()
{
  v2 = (*(v1 + 8 * (v0 ^ 0xA1B)))(3);
  v3 = *(&off_1F14948E0 + (v0 ^ 0x118));
  *v3 = v2;
  v4 = v3;
  (*(v1 + 8 * (v0 ^ 0xA7A)))();
  v5 = (*(v1 + 8 * (v0 + 2565)))(66);
  v6 = *(&off_1F14948E0 + (v0 ^ 0x190));
  *(v6 - 4) = v5;
  v6 = (v6 - 4);
  (*(v1 + 8 * (v0 + 2598)))();
  v7 = (*(v1 + 8 * (v0 + 2565)))(2);
  v8 = *(&off_1F14948E0 + v0 - 210);
  *(v8 - 4) = v7;
  *v7 = 7196;
  **v6 = 0;
  **(&off_1F14948E0 + v0 - 103) = 0;
  v9 = *(v8 - 4);
  v10 = *v6;
  v11 = *v4;
  v10[64] = 1;
  **(&off_1F14948E0 + v0 - 289) = 51;
  v10[9] = -15;
  v9[1] = 79;
  **(&off_1F14948E0 + v0 - 206) = 80;
  **(&off_1F14948E0 + v0 - 169) = -77;
  *v9 = -22;
  v10[11] = 73;
  *v11 = 68;
  v10[20] = -44;
  **(&off_1F14948E0 + v0 - 207) = -121;
  v10[36] = -11;
  v10[45] = -113;
  v10[49] = 25;
  *(v11 + 1) = 6695;
  **(&off_1F14948E0 + (v0 ^ 0x184)) = -122;
  **(&off_1F14948E0 + v0 - 192) = 88;
  v10[26] = -34;
  v10[60] = -5;
  **(&off_1F14948E0 + v0 - 222) = 96;
  **(&off_1F14948E0 + v0 - 153) = 80;
  **(&off_1F14948E0 + v0 - 195) = 17;
  **(&off_1F14948E0 + (v0 ^ 0x19D)) = 119;
  v10[52] = 47;
  v10[50] = 102;
  v10[59] = -59;
  v10[22] = -36;
  v10[29] = 59;
  v10[27] = 34;
  v10[40] = -80;
  v10[13] = 23;
  **(&off_1F14948E0 + (v0 ^ 0x196)) = 99;
  v10[53] = 3;
  **(&off_1F14948E0 + v0 - 252) = -109;
  v10[39] = 54;
  v10[57] = 73;
  **(&off_1F14948E0 + (v0 ^ 0x11E)) = 83;
  v10[37] = -52;
  v10[63] = -72;
  v12 = *v6;
  *(v12 + 65) = -85;
  *(v12 + 5) = -14;
  *(v12 + 54) = 32;
  *(v12 + 58) = 113;
  *(v12 + 8) = 16909;
  *(v12 + 28) = -39;
  *(v12 + 47) = -4065;
  *(v12 + 21) = 15;
  *(v12 + 41) = -29527;
  *(v12 + 38) = -121;
  *(v12 + 31) = 8824;
  *(v12 + 10) = -98;
  *(v12 + 25) = 69;
  *(v12 + 7) = 27031;
  *(v12 + 23) = -86;
  *(v12 + 14) = -90;
  *(v12 + 62) = -105;
  *(v12 + 35) = 52;
  *(v12 + 33) = 15089;
  *(v12 + 55) = -30385;
  *(v12 + 46) = -17;
  *(v12 + 4) = -92;
  *(v12 + 15) = 72;
  *(v12 + 51) = -15;
  *(v12 + 12) = -15;
  *(v12 + 30) = 36;
  *(v12 + 61) = 73;
  *(v12 + 9) = -9761;
  *(v12 + 43) = 19744;
  *(v12 + 6) = 45;
  *(v12 + 24) = -72;
  JUMPOUT(0x1A24075A8);
}

uint64_t sub_1A24075D0(uint64_t a1, int a2, int a3)
{
  if ((v5 + a2) > 0xBFADED6E != v3 - 128968758 < ((a3 + 963) ^ 0x577u) + 1079120095)
  {
    v6 = (v5 + a2) > 0xBFADED6E;
  }

  else
  {
    v6 = v5 + a2 + 1079120529 > (v3 - 128968758);
  }

  return (*(v4 + 8 * ((v6 * (((a3 + 963) ^ 0x29D) - 1575)) ^ (a3 + 963))))();
}

uint64_t sub_1A240769C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17)
{
  v23 = 1388665877 * (((&a14 | 0x93A3C99B) - (&a14 & 0x93A3C99B)) ^ 0x1E0EAB77);
  LODWORD(a14) = v23 ^ (199880445 * v20 + 103127814);
  HIDWORD(a16) = v23 + 2769;
  a15 = a13;
  (*(v21 + 22872))(&a14);
  v24 = 1388665877 * ((2 * (&a14 & 0x6D5FF88) - &a14 - 114687886) ^ 0x7487629E);
  LODWORD(a14) = (199880445 * HIDWORD(v19) + 103127814) ^ v24;
  a15 = a13;
  HIDWORD(a16) = v24 + 2769;
  (*(v21 + 22872))(&a14);
  v25 = 1388665877 * (((&a14 | 0xBDD07130) - &a14 + (&a14 & 0x422F8EC8)) ^ 0x307D13DC);
  LODWORD(a14) = v25 ^ (199880445 * v19 + 103127814);
  a15 = a13;
  HIDWORD(a16) = v25 + 2769;
  (*(v21 + 22872))(&a14);
  v26 = 1037613739 * (((&a14 | 0xF336C6A) - &a14 + (&a14 & 0xF0CC9390)) ^ 0xDE314115);
  LODWORD(a15) = 380 - v26;
  a17 = v26 ^ ((v18 ^ 0xBEBFFFFF) + 2146293622 + ((2 * v18) & 0x7D7FFFFE));
  a14 = a13;
  a16 = v17;
  v27 = (*(v21 + 22968))(&a14);
  return (*(v21 + 8 * ((108 * (HIDWORD(a15) != v22)) ^ 0x22Fu)))(v27);
}

uint64_t sub_1A240791C(uint64_t a1, int a2)
{
  v5 = v2 + 2146528284 + (a2 ^ 0xB03);
  v6 = v4 - 1105061458 > v5;
  if ((v4 - 1105061458) < 0xC7F3717D != v5 < 0xC7F3717D)
  {
    v6 = (v4 - 1105061458) < 0xC7F3717D;
  }

  return (*(v3 + 8 * ((2 * v6) | (4 * v6) | a2)))();
}

uint64_t sub_1A24079C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18)
{
  v24 = (v22 - 1296636260) & 0x6FE;
  v25 = 1388665877 * ((2 * (&a15 & 0x68A5EE20) - &a15 - 1755704868) ^ 0x1AF77330);
  HIDWORD(a17) = v25 + v24 + 1173;
  a16 = a12;
  LODWORD(a15) = v25 ^ (199880445 * v20 + 103127814);
  (*(v21 + 8 * (v24 ^ 0xD17u)))(&a15);
  v26 = 1037613739 * (((&a15 | 0x2E6E6E08) - (&a15 & 0x2E6E6E08)) ^ 0xFF6C4377);
  a18 = (((2 * v19) & 0x7FDFAFFE) + (v19 ^ 0xBFEFD7FF) + (((v24 - 1513) | 0x80) ^ 0x7EBDFFA5)) ^ v26;
  a17 = v18;
  LODWORD(a16) = v24 - v26 - 1216;
  a15 = a12;
  v27 = (*(v21 + 8 * (v24 + 1275)))(&a15);
  return (*(v21 + 8 * ((3177 * (HIDWORD(a16) == v23)) ^ v24)))(v27);
}

uint64_t sub_1A2407B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, unsigned int a14, int a15, uint64_t a16, uint64_t *a17)
{
  v20 = 143681137 * (((~&a12 & 0x97D8DE76) - (~&a12 | 0x97D8DE77)) ^ 0xF6E2693F);
  a14 = v20 ^ 0xB64F21D9;
  a12 = v20 ^ 0x6163ACC5;
  a13 = v20 + v19 + 1421511677;
  a16 = a10;
  a17 = &a9;
  v21 = (*(v17 + 8 * (v19 + 2002)))(&a12);
  return (*(v17 + 8 * (((a15 == (v19 ^ (v18 - 2053) ^ 0x984951D8)) * ((v19 + 1116) ^ 0xC38)) ^ v19)))(v21);
}

uint64_t sub_1A2407C20@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(v4 + v5) = *(a1 + v5) - (((-115 * (v1 ^ 0xC5)) ^ 0xB4) & (2 * *(a1 + v5))) - 119;
  return (*(v3 + 8 * ((719 * (v5 == 0)) ^ v1)))();
}

uint64_t sub_1A2407C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a16 = (&a14 ^ 0x92D63FA4) * v18 + 789;
  a14 = &a12;
  v20 = (*(v17 + 22888))(&a14);
  return (*(v17 + 8 * ((2931 * (a15 == v16)) ^ v19)))(v20);
}

uint64_t sub_1A2407CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v21 = 1564307779 * ((v20 - 136) ^ 0x970DCC13);
  *(v20 - 128) = &a17;
  *(v20 - 136) = ((v17 ^ 0xFD76DFFA) + 1342028032 + ((v17 << ((v19 + 45) & 0xB7 ^ 0x16)) & 0xFAEDBFF4)) ^ v21;
  *(v20 - 120) = v19 - v21 - 277;
  v22 = (*(v18 + 8 * (v19 + 2313)))(v20 - 136);
  return sub_1A2407D68(v22);
}

uint64_t sub_1A2407D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v19 - 136) = v18 + 1556366573 * ((((2 * (v19 - 136)) | 0xC7093984) - (v19 - 136) - 1669635266) ^ 0x760BF28) + 353;
  *(v19 - 128) = v16;
  *(v19 - 120) = a16;
  v20 = (*(v17 + 8 * (v18 ^ 0xC0A)))(v19 - 136);
  return (*(v17 + 8 * (v18 ^ (32 * (*(v19 - 112) > ((v18 - 1592) ^ 0x2F9773F6 ^ (v18 - 366768456) & 0x15DC6EBFu))))))(v20);
}

uint64_t sub_1A2407E6C()
{
  *(v3 - 1) = v5;
  *v3 = v5;
  return (*(v4 + 8 * (((v2 == 0) * v1) ^ v0)))();
}

uint64_t sub_1A2407E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  v22 = 1388665877 * (((&a14 | 0x2A60084B) + (~&a14 | 0xD59FF7B4)) ^ 0xA7CD6AA6);
  LODWORD(a14) = v22 ^ (199880445 * v19 + 103127814);
  HIDWORD(a16) = v22 + v21 + 2061;
  a15 = a13;
  (*(v20 + 8 * (v21 + 2151)))(&a14);
  v23 = 1037613739 * ((-1325081901 - (&a14 | 0xB104DAD3) + (&a14 | 0x4EFB252C)) ^ 0x9FF90853);
  a14 = a13;
  LODWORD(a15) = v21 - v23 - 328;
  a17 = ((v18 ^ 0x3EADF77D) + ((2 * v18) & 0x7D5BEEFA) - 10068 + (v21 ^ 0x588)) ^ v23;
  a16 = v17;
  v24 = (*(v20 + 8 * (v21 + 2163)))(&a14);
  return (*(v20 + 8 * ((2562 * (HIDWORD(a15) == 1863271989)) ^ v21)))(v24);
}

void sub_1A2408984(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40) ^ (896639297 * ((((2 * a1) | 0xCC5E7DA6) - a1 + 433111341) ^ 0xF284A8AB));
  v2 = *(a1 + 24);
  v4 = 0;
  v6 = &v4;
  v7 = v1 - 1224077867 + 1380333833 * ((((&v6 | 0xAC610868) ^ 0xFFFFFFFE) - (~&v6 | 0x539EF797)) ^ 0xEDCC5C1D);
  v3 = *(&off_1F14948E0 + v1 - 543) - 8;
  (*&v3[8 * v1 + 17360])(&v6);
  v5 = 0;
  v7 = v1 - 1224077867 + 1380333833 * ((&v6 - 2012405333 - 2 * (&v6 & 0x880D21AB)) ^ 0x365F8A21);
  v6 = &v5;
  (*&v3[8 * (v1 ^ 0x98E)])(&v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A2408C24(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = (*(a1 + 8) ^ (143681137 * (a1 ^ 0x613AB748))) + 1197042549;
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  v5 = v2 + 1785193651 * ((v4 & 0x7E99EFF6 | ~(v4 | 0x7E99EFF6)) ^ 0x2D69A1F) + 315;
  return (*(*(&off_1F14948E0 + v2) + v2 + 2773))(v4);
}

uint64_t sub_1A2408E48(uint64_t a1, int a2)
{
  v5 = 205 * (v4 ^ 0x873);
  v6 = a2 + 1247674242 + (v5 ^ 0xB7);
  v7 = (((v5 - 2223) | 0x288) ^ 0x4A5E0552) + v3;
  v8 = v7 < 489385016;
  v9 = v6 < v7;
  if (v6 < 489385016 != v8)
  {
    v9 = v8;
  }

  return (*(v2 + 8 * ((23 * v9) ^ v5)))();
}

uint64_t sub_1A24090D0()
{
  STACK[0x310] = STACK[0x2E8];
  LODWORD(STACK[0x438]) = STACK[0x3B4];
  v2 = LODWORD(STACK[0x43C]) + (v0 ^ 0xFFFFF94A) < (((v0 ^ 0xFEF) - 1678) ^ 0x2CEu);
  return (*(v1 + 8 * (((2 * v2) | (4 * v2)) ^ v0 ^ 0xFEF)))();
}

uint64_t sub_1A2409308@<X0>(uint64_t a1@<X8>)
{
  result = 0;
  *v1 = a1;
  return result;
}

uint64_t sub_1A240931C(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 4);
  *(a1 + 48) = *(a2 + 8);
  return 0;
}

void sub_1A2409334(uint64_t a1)
{
  v2 = *(*(a1 + 8) + 4) + 217866191;
  v3 = *(*(a1 + 16) + 4) + 217866191;
  v4 = (v2 < -540425203) ^ (v3 < -540425203);
  v5 = v2 > v3;
  if (v4)
  {
    v5 = v2 < -540425203;
  }

  v1 = *a1 - 1556366573 * ((a1 + 187305641 - 2 * (a1 & 0xB2A0EA9)) ^ 0x6FCE2D43);
  __asm { BRAA            X14, X17 }
}

void sub_1A240944C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, _DWORD *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v32 = (a28 + 4 * v30);
  v33 = *v32;
  LODWORD(v32) = 757077909 * ((*(*a22 + (*a23 & 0x2D9478A0)) ^ v32) & 0x7FFFFFFF);
  LODWORD(v32) = v32 ^ (v32 >> 16);
  v34 = 757077909 * v32;
  v35 = 395640832 * v32;
  v36 = 4 * (v34 >> ((v31 + 119) ^ 0x96));
  v37 = *(*(&off_1F14948E0 + v31 - 205) + v36 - 4);
  v38 = *(*(&off_1F14948E0 + v31 - 194) + v36 - 12);
  v39 = (v31 - 276) ^ 0xFFFFFFFD;
  if (v29 - (v31 - 276) >= ~(v31 - 276))
  {
    ++v39;
  }

  *(a29 + 4 * v30) = v33 ^ 0xB3E38972 ^ (*(a29 + 4 * v30) - 1276933774 - ((2 * *(a29 + 4 * v30)) & 0x67C712E4)) ^ v37 ^ v38 ^ *(*(&off_1F14948E0 + v31 - 136) + (v34 >> ((v31 + 119) ^ 0x96)) + 3) ^ v35 ^ v34 ^ (v39 - 471850983 * (v34 >> ((v31 + 119) ^ 0x96)) + 1);
  JUMPOUT(0x1A240955CLL);
}

void OowSGu(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v5 = a2 == 0;
  }

  else
  {
    v5 = 1;
  }

  v8 = !v5 && a4 != 0 && a5 != 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1A2409678()
{
  v4 = 169 * (v7 ^ 0x248);
  v14 = (v7 + 314) ^ ((((&v11 | 0xC245CE41) + (~&v11 | 0x3DBA31BE)) ^ 0xA37F7908) * v0);
  v15 = v8;
  v13 = &v9;
  (*(v2 + 8 * (v7 + 2263)))(&v11);
  v13 = v8;
  v11 = v7 - 1556366573 * ((&v11 + 415929659 - 2 * (&v11 & 0x18CA953B)) ^ 0x7C2EB6D1) + 2178;
  (*(v2 + 8 * (v7 ^ 0x97Fu)))(&v11);
  if (v12 == (v4 ^ v3))
  {
    v5 = v9;
  }

  else
  {
    v5 = v12;
  }

  v13 = v8;
  v11 = (v7 + 1737) ^ (((2 * ((&v11 ^ 0xDA2C4FE3) & 0x1B933660) - (&v11 ^ 0xDA2C4FE3) - 462632549) ^ 0x148BAC02) * v1);
  (*(v2 + 8 * (v7 | 0x900u)))(&v11);
  v11 = (v4 + 457) ^ (((&v11 + 590847839 - 2 * (&v11 & 0x23379F5F)) ^ 0x9FCB525) * v1);
  v13 = v10;
  (*(v2 + 8 * (v4 ^ 0xC00u)))(&v11);
  return v5 ^ (v3 + 1215);
}

uint64_t sub_1A2409918(int8x16_t a1, double a2, double a3, int8x16_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, int a10)
{
  v14 = (a8 + (v11 + v12));
  v15 = *v14;
  v16 = v14[1];
  v17 = (a9 + v11);
  *v17 = vaddq_s8(vsubq_s8(v15, vandq_s8(vaddq_s8(v15, v15), a4)), a1);
  v17[1] = vaddq_s8(vsubq_s8(v16, vandq_s8(vaddq_s8(v16, v16), a4)), a1);
  return (*(v13 + 8 * (((v11 == 32) * a10) ^ (a7 + v10 + 624))))();
}

uint64_t sub_1A2409A48@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(v1 + v5) = *(a1 + v5) - ((((v3 + 63) | 0x20) ^ 0xB8) & (2 * *(a1 + v5))) - 119;
  return (*(v4 + 8 * ((3195 * (v5 == 0)) ^ v3)))();
}

uint64_t sub_1A2409BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, uint64_t a18, uint64_t a19, unsigned int a20)
{
  v26 = 1388665877 * ((1926122126 - (&a17 | 0x72CE4A8E) + (&a17 | 0x8D31B571)) ^ 0x9CD79D);
  a18 = a15;
  a17 = (199880445 * v24 + 103127814) ^ v26;
  HIDWORD(a19) = v26 + 2769;
  (*(v25 + 22872))(&a17);
  v27 = 1388665877 * (((&a17 | 0x74BD9960) - &a17 + (&a17 & 0x8B426698)) ^ 0xF910FB8C);
  a17 = v27 ^ (199880445 * HIDWORD(v23) + 103127814);
  HIDWORD(a19) = v27 + 2769;
  a18 = a15;
  (*(v25 + 22872))(&a17);
  v28 = 1388665877 * (((&a17 | 0xFC18AFE9) - (&a17 & 0xFC18AFE9)) ^ 0x71B5CD05);
  a18 = a15;
  a17 = v28 ^ (199880445 * v23 + 103127814);
  HIDWORD(a19) = v28 + 2769;
  (*(v25 + 22872))(&a17);
  a18 = a15;
  a19 = v22;
  a20 = 1960 - 1785193651 * ((((&a17 | 0x9E4C4240) ^ 0xFFFFFFFE) - (~&a17 | 0x61B3BDBF)) ^ 0xE20337A9);
  (*(v25 + 23152))(&a17);
  v29 = 1388665877 * (((&a17 ^ 0xDC38390E | 0x4941B84A) - (&a17 ^ 0xDC38390E) + ((&a17 ^ 0xDC38390E) & 0xB6BE47B4)) ^ 0x18D4E3A8);
  HIDWORD(a19) = v29 + 2769;
  a18 = a15;
  a17 = v29 ^ (199880445 * v21 + 103127814);
  (*(v25 + 22872))(&a17);
  v30 = 1388665877 * ((28745800 - (&a17 | 0x1B6A048) + (&a17 | 0xFE495FB7)) ^ 0x73E43D5B);
  a18 = a15;
  a17 = v30 ^ (199880445 * v20 + 103127814);
  HIDWORD(a19) = v30 + 2769;
  v31 = (*(v25 + 22872))(&a17);
  return (*(v25 + 8 * ((2241 * (a19 == 1863271989)) ^ 0x1D2u)))(v31);
}

void sub_1A2409F40(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *a1 + 843532609 * ((2 * (a1 & 0x32711CCA) - a1 + 1301209909) ^ 0x5D32946B);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v9[0] = 0x52CD643E00000082;
  v9[1] = &v12;
  v10[0] = 0x52CD643E00000082;
  v10[1] = &v11;
  v6 = v5[1];
  LODWORD(v14) = (143681137 * ((2 * (&v13 & 0x41DB4FC0) - &v13 - 1104891843) ^ 0xDF1E0775)) ^ (v1 + 148);
  v13 = v9;
  v15 = v6;
  v16 = v4;
  v17 = v2;
  v18 = v5;
  v7 = *(&off_1F14948E0 + (v1 ^ 0x6D5)) - 8;
  (*&v7[8 * v1 + 9144])(&v13);
  v8 = *v5;
  LODWORD(v13) = (50899313 * (((&v13 | 0x3CC4A229) + (~&v13 | 0xC33B5DD6)) ^ 0x160F8852)) ^ (v1 + 5);
  v14 = v10;
  v15 = v8;
  (*&v7[8 * (v1 ^ 0xD66)])(&v13);
  HIDWORD(v14) = v1 + 50899313 * (((&v13 | 0x8AEF3FE6) - (&v13 & 0x8AEF3FE6)) ^ 0xA024159C) - 1020;
  v13 = v3;
  (*&v7[8 * (v1 ^ 0xD6F)])(&v13);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1A240A174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, char *a11, char a12, uint64_t a13, int a14, char a15, char *a16, char *a17, unsigned int a18, unsigned int a19, char *a20)
{
  a16 = &a12;
  a17 = a11;
  a19 = (v22 + 68671322) ^ (1037613739 * ((((2 * &a16) | 0x223264C2) - &a16 - 286863969) ^ 0xC01B1F1E));
  a20 = &a15;
  (*(v21 + 8 * (v22 ^ 0x933)))(&a16);
  a20 = a11;
  a18 = (v22 + 282) ^ ((((&a16 | 0x2BBEAE24) - &a16 + (&a16 & 0xD44151D8)) ^ 0x4A84196C) * v23);
  a17 = &a10;
  (*(v21 + 8 * (v22 ^ 0x979)))(&a16);
  a17 = a11;
  LODWORD(a16) = v22 - 1556366573 * ((&a16 - 1791987692 - 2 * (&a16 & 0x95307014)) ^ 0xF1D453FE) + 2146;
  v24 = (*(v21 + 8 * (v22 ^ 0x95F)))(&a16);
  return (*(v21 + 8 * (((HIDWORD(a16) == v20) * (v22 ^ 0x2EC)) ^ v22)))(v24);
}

_BYTE *sub_1A240A348(_BYTE *result, unsigned int a2, unint64_t a3)
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

uint64_t sub_1A240A4BC@<X0>(int a1@<W4>, int a2@<W6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  v24 = (a15 + 24 * v20);
  *v24 = v23;
  v24[1] = a2;
  *&v22[6 * v20 + 4] = a11;
  v24[4] = a18;
  *v22 = v19 + 1;
  return (*(v21 + 8 * (((((a3 - 1087) | 0x402) - 330) * ((v18 + a1) < 0x80000003)) ^ a3)))();
}

id MPMediaItemAnimatedArtwork.init(artworkID:previewImageRequestHandler:videoAssetFileURLRequestHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = MEMORY[0x1A58DCF80](a1, a2);

  OUTLINED_FUNCTION_6();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  OUTLINED_FUNCTION_6();
  v15 = swift_allocObject();
  *(v15 + 16) = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @async (@unowned CGSize) -> (@owned UIImage?);
  *(v15 + 24) = v14;
  OUTLINED_FUNCTION_6();
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for specialized closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:);
  *(v16 + 24) = v15;
  v28 = _sSo6CGSizeVxRi_zRi0_zlySo7UIImageCSgIsegn_Iegng_AbEIegg_Iegyg_TRTA;
  v29 = v16;
  v24 = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = thunk for @escaping @callee_guaranteed (@unowned CGSize, @guaranteed @escaping @callee_guaranteed (@guaranteed UIImage?) -> ()) -> ();
  v27 = &block_descriptor;
  v17 = _Block_copy(&v24);

  OUTLINED_FUNCTION_6();
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  OUTLINED_FUNCTION_6();
  v19 = swift_allocObject();
  *(v19 + 16) = &async function pointer to partial apply for thunk for @escaping @callee_guaranteed @async (@unowned CGSize) -> (@out URL?);
  *(v19 + 24) = v18;
  OUTLINED_FUNCTION_6();
  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for specialized closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:);
  *(v20 + 24) = v19;
  v28 = _sSo6CGSizeVxRi_zRi0_zly10Foundation3URLVSgIsegn_Iegng_AbFIegn_Iegyg_TRTA;
  v29 = v20;
  v24 = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = thunk for @escaping @callee_guaranteed (@unowned CGSize, @guaranteed @escaping @callee_guaranteed (@in_guaranteed URL?) -> ()) -> ();
  v27 = &block_descriptor_20;
  v21 = _Block_copy(&v24);

  v22 = [v12 initWithArtworkID:v13 previewImageRequestHandler:v17 videoAssetFileURLRequestHandler:v21];

  _Block_release(v21);
  _Block_release(v17);

  return v22;
}

uint64_t thunk for @escaping @callee_guaranteed @async (@unowned CGSize) -> (@owned UIImage?)(uint64_t a1, unint64_t *a2, int *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = a2[1];
  v10 = (a3 + *a3);
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = thunk for @escaping @callee_guaranteed @async (@unowned CGSize) -> (@owned UIImage?);
  v7.n128_u64[0] = v4;
  v8.n128_u64[0] = v5;

  return v10(v7, v8);
}

uint64_t thunk for @escaping @callee_guaranteed @async (@unowned CGSize) -> (@owned UIImage?)()
{
  OUTLINED_FUNCTION_3();
  v2 = v1;
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_0();
  *v6 = v5;

  *v4 = v2;
  OUTLINED_FUNCTION_5();

  return v7();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @async (@unowned CGSize) -> (@owned UIImage?)()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4(v1);

  return v4(v3);
}

uint64_t _sSo6CGSizeVxRi_zRi0_zlySo7UIImageCSgIsegn_Iegng_AbEIegg_Iegyg_TR(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t (*)(void *a1), uint64_t), double a4, double a5)
{
  *v10 = a4;
  *&v10[1] = a5;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  a3(v10, partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UIImage?) -> (), v8);
}

uint64_t thunk for @escaping @callee_guaranteed @async (@unowned CGSize) -> (@out URL?)(uint64_t a1, unint64_t *a2, int *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v11 = (a3 + *a3);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = thunk for @escaping @callee_guaranteed @async (@unowned CGSize) -> (@out URL?);
  v8.n128_u64[0] = v5;
  v9.n128_u64[0] = v6;

  return v11(a1, v8, v9);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned CGSize, @guaranteed @escaping @callee_guaranteed (@guaranteed UIImage?) -> ()) -> ()(uint64_t a1, void *aBlock, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 32);
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;

  v9(a6, v11, a3, a4);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSURL?) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x1E6968FB0];
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00]();
  v6 = &v11 - v5;
  outlined init with copy of URL?(a1, &v11 - v5, &lazy cache variable for type metadata for URL?, v4);
  v7 = type metadata accessor for URL();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    URL._bridgeToObjectiveC()(v8);
    v9 = v10;
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  (*(a2 + 16))(a2, v9);
}

uint64_t specialized closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00]();
  v16 = &v20 - v15;
  v17 = type metadata accessor for TaskPriority();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = a1;
  *(v18 + 40) = a2;
  *(v18 + 48) = a3;
  *(v18 + 56) = a4;
  *(v18 + 64) = a5;
  *(v18 + 72) = a6;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, a8, v18);
}

uint64_t specialized closure #1 in closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8)
{
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);
  v12 = swift_task_alloc();
  *(v8 + 48) = v12;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v15 = (a8 + *a8);
  v13 = swift_task_alloc();
  *(v8 + 56) = v13;
  *v13 = v8;
  v13[1] = specialized closure #1 in closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:);

  return v15(v12, v8 + 16);
}

{
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v11 = (a8 + *a8);
  v9 = swift_task_alloc();
  *(v8 + 56) = v9;
  *v9 = v8;
  v9[1] = specialized closure #1 in closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:);

  return v11(v8 + 32, v8 + 16);
}

uint64_t specialized closure #1 in closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:)()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:), 0, 0);
}

{
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 48);
  (*(v0 + 32))(v1);
  outlined destroy of TaskPriority?(v1, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0]);

  OUTLINED_FUNCTION_5();

  return v2();
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](specialized closure #1 in closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:), 0, 0);
}

{
  OUTLINED_FUNCTION_3();
  (*(v0 + 40))(v0 + 32);

  OUTLINED_FUNCTION_5();

  return v1();
}

{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  type metadata accessor for URL?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00]();
  v11 = v23 - v10;
  outlined init with copy of URL?(a3, v23 - v10, &lazy cache variable for type metadata for TaskPriority?, v9);
  v12 = type metadata accessor for TaskPriority();
  LODWORD(v9) = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (v9 == 1)
  {
    outlined destroy of TaskPriority?(v11, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0]);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = String.utf8CString.getter() + 32;
      v18 = swift_allocObject();
      *(v18 + 16) = a4;
      *(v18 + 24) = a5;

      if (v16 | v14)
      {
        v24[0] = 0;
        v24[1] = 0;
        v19 = v24;
        v24[2] = v14;
        v24[3] = v16;
      }

      else
      {
        v19 = 0;
      }

      v23[1] = 7;
      v23[2] = v19;
      v23[3] = v17;
      v21 = swift_task_create();

      outlined destroy of TaskPriority?(a3, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0]);

      return v21;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0]);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  OUTLINED_FUNCTION_0();
  *v2 = v1;

  OUTLINED_FUNCTION_5();

  return v3();
}

uint64_t specialized closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:)(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return specialized closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:)(a2, a3, a4, a5, *a1, a1[1], &unk_1F148E2A8, &async function pointer to partial apply for specialized closure #1 in closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:));
}

{
  return specialized closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:)(a2, a3, a4, a5, *a1, a1[1], &unk_1F148E370, &async function pointer to partial apply for specialized closure #1 in closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:));
}

uint64_t specialized closure #1 in closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, double *a8)
{
  v15 = *a8;
  v16 = a8[1];
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = specialized closure #1 in closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:);

  return specialized closure #1 in closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:)(v15, v16, a1, a2, a3, a4, a5, a6);
}

{
  v15 = *a8;
  v16 = a8[1];
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = thunk for @escaping @callee_guaranteed @async (@unowned CGSize) -> (@out URL?);

  return specialized closure #1 in closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:)(v15, v16, a1, a2, a3, a4, a5, a6);
}

uint64_t partial apply for specialized closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:)(double *a1, uint64_t a2, uint64_t a3)
{
  return specialized closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:)(a1, a2, a3, *(v3 + 16), *(v3 + 24));
}

{
  return specialized closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:)(a1, a2, a3, *(v3 + 16), *(v3 + 24));
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @async (@unowned CGSize) -> (@out URL?)()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4(v1);

  return v4(v3);
}

uint64_t _sSo6CGSizeVxRi_zRi0_zly10Foundation3URLVSgIsegn_Iegng_AbFIegn_Iegyg_TRTA(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = *(v4 + 16);
  *v7 = a3;
  *&v7[1] = a4;
  return v5(v7, a1, a2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CGSize(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CGSize(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!lazy cache variable for type metadata for CGSize)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for CGSize);
    }
  }
}

void type metadata accessor for URL?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t partial apply for specialized closure #1 in closure #1 in static MPMediaItemAnimatedArtwork.requestHandler<A, B>(asyncRequestHandler:)()
{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2(v1);

  return v4(v3);
}

{
  OUTLINED_FUNCTION_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2(v1);

  return v4(v3);
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  type metadata accessor for URL?(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8(v1);

  return v4(v3);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_39()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_8(v1);

  return v4(v3);
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  type metadata accessor for URL?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_29Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t MPMusicPlayerPlayParameters.init(from:)(void *a1)
{
  type metadata accessor for KeyedDecodingContainer<MPMusicPlayerPlayParameters.DynamicCodingKey>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<MPMusicPlayerPlayParameters.DynamicCodingKey>, MEMORY[0x1E69E6F48]);
  v4 = v3;
  OUTLINED_FUNCTION_4_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00]();
  v8 = &v58 - v7;
  v69 = Dictionary.init(dictionaryLiteral:)();
  v9 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  lazy protocol witness table accessor for type MPMusicPlayerPlayParameters.DynamicCodingKey and conformance MPMusicPlayerPlayParameters.DynamicCodingKey();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v64 = v1;
  if (v1)
  {
    goto LABEL_2;
  }

  v59 = v6;
  v61 = a1;
  v10 = KeyedDecodingContainer.allKeys.getter();
  v11 = *(v10 + 16);
  v63 = v8;
  v62 = v4;
  v60 = v10;
  if (!v11)
  {
LABEL_40:

    type metadata accessor for MPMusicPlayerPlayParameters();

    MPMusicPlayerPlayParameters.__allocating_init(dictionary:)(v48, v47);
    if (v49)
    {

      v50 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v9 = [v50 initWithDictionary_];

      v52 = v61;
      if (!v9)
      {
        goto LABEL_49;
      }

      (*(v59 + 8))(v63, v4);

      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      return v9;
    }

    v9 = type metadata accessor for DecodingError();
    v54 = swift_allocError();
    v55 = v59;
    v57 = v56;
    a1 = v61;
    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    dispatch thunk of Decoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v9 - 1) + 104))(v57, *MEMORY[0x1E69E6B00], v9);
    v64 = v54;
    swift_willThrow();
    (*(v55 + 8))(v63, v62);
LABEL_2:

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v9;
  }

  v12 = v8;
  v13 = (v10 + 40);
  v14 = MEMORY[0x1E69E6530];
  while (1)
  {
    v16 = *(v13 - 1);
    v15 = *v13;
    swift_bridgeObjectRetain_n();
    specialized attemptDecodingStronglyTypedValueIfNeeded #1 <A>() in MPMusicPlayerPlayParameters.init(from:)(&v69, v16, v15, v12, v16, v15);

    swift_beginAccess();
    v17 = v69;
    if (*(v69 + 16))
    {
      v18 = OUTLINED_FUNCTION_3_0();
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
      if (v21)
      {
        outlined init with copy of Any(*(v17 + 56) + 32 * v20, &v67);
      }

      else
      {
        v67 = 0u;
        v68 = 0u;
      }

      v14 = MEMORY[0x1E69E6530];
    }

    else
    {
      v67 = 0u;
      v68 = 0u;
    }

    swift_endAccess();
    v22 = *(&v68 + 1);
    outlined destroy of Any?(&v67);
    if (!v22)
    {
      *&v67 = v16;
      *(&v67 + 1) = v15;
      v12 = v63;
      v23 = v64;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      if (v23)
      {

        v64 = 0;
LABEL_16:
        v14 = MEMORY[0x1E69E6530];
        goto LABEL_17;
      }

      v64 = 0;
      if (v66[0] == 2)
      {
        goto LABEL_16;
      }

      *(&v68 + 1) = MEMORY[0x1E69E6370];
      LOBYTE(v67) = v66[0] & 1;
      OUTLINED_FUNCTION_8_0();
      outlined init with take of Any(&v67, v66);
      swift_isUniquelyReferenced_nonNull_native();
      v65 = v69;
      v39 = OUTLINED_FUNCTION_3_0();
      specialized __RawDictionaryStorage.find<A>(_:)(v39, v40);
      OUTLINED_FUNCTION_5_0();
      if (v32)
      {
        goto LABEL_47;
      }

      v42 = v41;
      type metadata accessor for _NativeDictionary<String, Any>();
      if (OUTLINED_FUNCTION_7_0())
      {
        v43 = OUTLINED_FUNCTION_3_0();
        specialized __RawDictionaryStorage.find<A>(_:)(v43, v44);
        if ((v42 & 1) != (v45 & 1))
        {
          goto LABEL_50;
        }
      }

      v14 = MEMORY[0x1E69E6530];
      v17 = v65;
      if (v42)
      {
        OUTLINED_FUNCTION_9_0();
      }

      else
      {
        OUTLINED_FUNCTION_2_0();
        if (v32)
        {
          goto LABEL_48;
        }

        *(v17 + 16) = v46;
      }

      v69 = v17;
      swift_endAccess();
      v4 = v62;
    }

    v12 = v63;
LABEL_17:
    if (*(v17 + 16))
    {
      v24 = OUTLINED_FUNCTION_3_0();
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v25);
      v14 = MEMORY[0x1E69E6530];
      if (v27)
      {
        outlined init with copy of Any(*(v17 + 56) + 32 * v26, &v67);
        swift_bridgeObjectRelease_n();
        outlined destroy of Any?(&v67);
        goto LABEL_30;
      }
    }

    v67 = 0u;
    v68 = 0u;
    outlined destroy of Any?(&v67);
    *&v67 = v16;
    *(&v67 + 1) = v15;
    v28 = v64;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (v28)
    {
      swift_bridgeObjectRelease_n();

      v64 = 0;
      goto LABEL_30;
    }

    v64 = 0;

    *(&v68 + 1) = v14;
    *&v67 = *v66;
    OUTLINED_FUNCTION_8_0();
    outlined init with take of Any(&v67, v66);
    swift_isUniquelyReferenced_nonNull_native();
    v65 = v69;
    v29 = OUTLINED_FUNCTION_3_0();
    specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
    OUTLINED_FUNCTION_5_0();
    if (v32)
    {
      break;
    }

    v33 = v31;
    type metadata accessor for _NativeDictionary<String, Any>();
    if (OUTLINED_FUNCTION_7_0())
    {
      v34 = OUTLINED_FUNCTION_3_0();
      specialized __RawDictionaryStorage.find<A>(_:)(v34, v35);
      if ((v33 & 1) != (v36 & 1))
      {
        goto LABEL_50;
      }
    }

    v14 = MEMORY[0x1E69E6530];
    v37 = v65;
    if (v33)
    {
      OUTLINED_FUNCTION_9_0();
    }

    else
    {
      OUTLINED_FUNCTION_2_0();
      if (v32)
      {
        goto LABEL_46;
      }

      *(v37 + 16) = v38;
    }

    v69 = v37;
    swift_endAccess();
    v4 = v62;
    v12 = v63;
LABEL_30:
    v13 += 2;
    if (!--v11)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized attemptDecodingStronglyTypedValueIfNeeded #1 <A>() in MPMusicPlayerPlayParameters.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v11 = *a1;
  if (*(*a1 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3), (v13 & 1) != 0))
  {
    outlined init with copy of Any(*(v11 + 56) + 32 * v12, &v18);
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  swift_endAccess();
  v14 = *(&v19 + 1);
  outlined destroy of Any?(&v18);
  if (v14)
  {
    return 0;
  }

  v20 = a5;
  v21 = a6;
  type metadata accessor for KeyedDecodingContainer<MPMusicPlayerPlayParameters.DynamicCodingKey>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<MPMusicPlayerPlayParameters.DynamicCodingKey>, MEMORY[0x1E69E6F48]);
  v15 = MEMORY[0x1E69E6158];
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v18;
  if (*(&v18 + 1))
  {
    *(&v19 + 1) = v15;
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    specialized Dictionary.subscript.setter(&v18, a2, a3);
    swift_endAccess();
  }

  return v16;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    outlined destroy of Any?(a1);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return outlined destroy of Any?(v9);
  }

  return result;
}

void __swiftcall MPMusicPlayerPlayParameters.__allocating_init(dictionary:)(MPMusicPlayerPlayParameters_optional *__return_ptr retstr, Swift::OpaquePointer dictionary)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 initWithDictionary_];
}

uint64_t MPMusicPlayerPlayParameters.encode(to:)(void *a1)
{
  v2 = v1;
  type metadata accessor for KeyedDecodingContainer<MPMusicPlayerPlayParameters.DynamicCodingKey>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<MPMusicPlayerPlayParameters.DynamicCodingKey>, MEMORY[0x1E69E6F58]);
  v38 = v4;
  OUTLINED_FUNCTION_4_0();
  v35 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = [v2 dictionary];
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MPMusicPlayerPlayParameters.DynamicCodingKey and conformance MPMusicPlayerPlayParameters.DynamicCodingKey();
  v37 = v8;
  result = dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  v13 = *(v10 + 64);
  v36 = v10;
  v14 = 1 << *(v10 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  while (v16)
  {
    v18 = v12;
LABEL_10:
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v20 = v19 | (v18 << 6);
    v21 = (*(v36 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    outlined init with copy of Any(*(v36 + 56) + 32 * v20, v43);
    *&v44 = v23;
    *(&v44 + 1) = v22;
    outlined init with take of Any(v43, &v45);

LABEL_11:
    v47 = v44;
    v48[0] = v45;
    v48[1] = v46;
    v24 = *(&v44 + 1);
    if (!*(&v44 + 1))
    {

      v29 = OUTLINED_FUNCTION_0_0();
      return v30(v29);
    }

    v25 = v47;
    outlined init with take of Any(v48, &v44);
    outlined init with copy of Any(&v44, v43);
    if (swift_dynamicCast())
    {
      v41 = v39;
      v42 = v40;
      v39 = v25;
      v40 = v24;
      OUTLINED_FUNCTION_1_0();
      v26 = v49;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v26)
      {
        swift_endAccess();

        __swift_destroy_boxed_opaque_existential_1Tm(&v44);
        v31 = OUTLINED_FUNCTION_0_0();
        v32(v31);
      }

      v49 = 0;
      swift_endAccess();

LABEL_22:
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v44);
    }

    else
    {
      outlined init with copy of Any(&v44, v43);
      if (swift_dynamicCast())
      {
        LOBYTE(v39) = v41 & 1;
        v41 = v25;
        v42 = v24;
        OUTLINED_FUNCTION_1_0();
        OUTLINED_FUNCTION_6_0();
        v27 = v49;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v49 = v27;
        if (v27)
        {
          goto LABEL_26;
        }

        swift_endAccess();
LABEL_21:

        goto LABEL_22;
      }

      outlined init with copy of Any(&v44, v43);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_21;
      }

      v39 = v41;
      v41 = v25;
      v42 = v24;
      OUTLINED_FUNCTION_1_0();
      OUTLINED_FUNCTION_6_0();
      v28 = v49;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v49 = v28;
      if (v28)
      {
LABEL_26:
        swift_endAccess();

        __swift_destroy_boxed_opaque_existential_1Tm(&v44);
        v33 = OUTLINED_FUNCTION_0_0();
        v34(v33);
      }

      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1Tm(&v44);
    }
  }

  while (1)
  {
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      v16 = 0;
      v45 = 0u;
      v46 = 0u;
      v44 = 0u;
      goto LABEL_11;
    }

    v16 = *(v10 + 64 + 8 * v18);
    ++v12;
    if (v16)
    {
      v12 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MPMusicPlayerPlayParameters.DynamicCodingKey()
{
  v1 = *v0;

  return v1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MPMusicPlayerPlayParameters.DynamicCodingKey@<X0>(uint64_t *a1@<X8>)
{
  result = MPMusicPlayerPlayParameters.DynamicCodingKey.init(stringValue:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MPMusicPlayerPlayParameters.DynamicCodingKey@<X0>(uint64_t *a1@<X8>)
{
  result = MPMusicPlayerPlayParameters.DynamicCodingKey.init(intValue:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MPMusicPlayerPlayParameters.DynamicCodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMusicPlayerPlayParameters.DynamicCodingKey and conformance MPMusicPlayerPlayParameters.DynamicCodingKey();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MPMusicPlayerPlayParameters.DynamicCodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MPMusicPlayerPlayParameters.DynamicCodingKey and conformance MPMusicPlayerPlayParameters.DynamicCodingKey();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance MPMusicPlayerPlayParameters@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MPMusicPlayerPlayParameters.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v9 = *(*v3 + 24);
    type metadata accessor for _NativeDictionary<String, Any>();
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);

    outlined init with take of Any((*(v11 + 56) + 32 * v7), a3);
    _NativeDictionary._delete(at:)();
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  type metadata accessor for _NativeDictionary<String, Any>();
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *v5;
  if (v17)
  {
    v21 = (v20[7] + 32 * v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);

    return outlined init with take of Any(a1, v21);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v16, a2, a3, a1, v20);
  }
}

unint64_t lazy protocol witness table accessor for type MPMusicPlayerPlayParameters.DynamicCodingKey and conformance MPMusicPlayerPlayParameters.DynamicCodingKey()
{
  result = lazy protocol witness table cache variable for type MPMusicPlayerPlayParameters.DynamicCodingKey and conformance MPMusicPlayerPlayParameters.DynamicCodingKey;
  if (!lazy protocol witness table cache variable for type MPMusicPlayerPlayParameters.DynamicCodingKey and conformance MPMusicPlayerPlayParameters.DynamicCodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPMusicPlayerPlayParameters.DynamicCodingKey and conformance MPMusicPlayerPlayParameters.DynamicCodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPMusicPlayerPlayParameters.DynamicCodingKey and conformance MPMusicPlayerPlayParameters.DynamicCodingKey;
  if (!lazy protocol witness table cache variable for type MPMusicPlayerPlayParameters.DynamicCodingKey and conformance MPMusicPlayerPlayParameters.DynamicCodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPMusicPlayerPlayParameters.DynamicCodingKey and conformance MPMusicPlayerPlayParameters.DynamicCodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MPMusicPlayerPlayParameters.DynamicCodingKey and conformance MPMusicPlayerPlayParameters.DynamicCodingKey;
  if (!lazy protocol witness table cache variable for type MPMusicPlayerPlayParameters.DynamicCodingKey and conformance MPMusicPlayerPlayParameters.DynamicCodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPMusicPlayerPlayParameters.DynamicCodingKey and conformance MPMusicPlayerPlayParameters.DynamicCodingKey);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  type metadata accessor for Any?();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for Any?()
{
  if (!lazy cache variable for type metadata for Any?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Any?);
    }
  }
}

unint64_t type metadata accessor for MPMusicPlayerPlayParameters()
{
  result = lazy cache variable for type metadata for MPMusicPlayerPlayParameters;
  if (!lazy cache variable for type metadata for MPMusicPlayerPlayParameters)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for MPMusicPlayerPlayParameters);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void type metadata accessor for _NativeDictionary<String, Any>()
{
  if (!lazy cache variable for type metadata for _NativeDictionary<String, Any>)
  {
    v0 = type metadata accessor for _NativeDictionary();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _NativeDictionary<String, Any>);
    }
  }
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void type metadata accessor for KeyedDecodingContainer<MPMusicPlayerPlayParameters.DynamicCodingKey>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type MPMusicPlayerPlayParameters.DynamicCodingKey and conformance MPMusicPlayerPlayParameters.DynamicCodingKey();
    v7 = a3(a1, &unk_1F148E3F0, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MPMusicPlayerPlayParameters.DynamicCodingKey(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MPMusicPlayerPlayParameters.DynamicCodingKey(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_0()
{

  return swift_beginAccess();
}

_OWORD *OUTLINED_FUNCTION_2_0()
{
  *(v3 + 8 * (v0 >> 6) + 64) |= 1 << v0;
  v5 = (*(v3 + 48) + 16 * v0);
  *v5 = v2;
  v5[1] = v1;
  return outlined init with take of Any((v4 - 184), (*(v3 + 56) + 32 * v0));
}

BOOL OUTLINED_FUNCTION_7_0()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1, v0);
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return swift_beginAccess();
}

_OWORD *OUTLINED_FUNCTION_9_0()
{
  v3 = (*(v1 + 56) + 32 * v0);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);

  return outlined init with take of Any((v2 - 184), v3);
}

uint64_t sub_1A240E224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v20 = -191875503 * (v19 ^ 1) - 2 * v19 + 5;
  *(&a19 + 16 * &a19 - 144 * ((&a9 - 0x36F214C141B3E0BELL) / 9) - 0x6F214C141B3E10D1) = *(qword_1E7675040[v20 + 6] + 8) ^ *(a2 + 15) ^ 0xD1 ^ *(qword_1E7675040[v20 + 1] + 13) ^ *(qword_1E7675040[v20 + 5] + 14);
  return (*(a5 + 8 * v20))();
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2412724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getATAssetClass_block_invoke(uint64_t a1)
{
  AirTrafficLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("ATAsset");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getATAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getATAssetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPMediaDownloadManager.m" lineNumber:57 description:{@"Unable to find class %s", "ATAsset"}];

    __break(1u);
  }
}

void *AirTrafficLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!AirTrafficLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __AirTrafficLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7675180;
    v6 = 0;
    AirTrafficLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AirTrafficLibraryCore_frameworkLibrary;
  if (!AirTrafficLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AirTrafficLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"MPMediaDownloadManager.m" lineNumber:56 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AirTrafficLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AirTrafficLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getATMachDownloadObserverServiceNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AirTrafficLibrary();
  result = dlsym(v2, "ATMachDownloadObserverServiceName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getATMachDownloadObserverServiceNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A2412EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getATMachKeepLocalRequestHandlerServiceNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AirTrafficLibrary();
  result = dlsym(v2, "ATMachKeepLocalRequestHandlerServiceName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getATMachKeepLocalRequestHandlerServiceNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A2414B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getATStartupCompleteNotificationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AirTrafficLibrary();
  result = dlsym(v2, "ATStartupCompleteNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getATStartupCompleteNotificationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void _handleATCStartupCompletedNotification(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = dispatch_time(0, 2000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___handleATCStartupCompletedNotification_block_invoke;
  block[3] = &unk_1E7682518;
  v6 = v2;
  v4 = v2;
  dispatch_after(v3, MEMORY[0x1E69E96A0], block);
}

uint64_t ___handleATCStartupCompletedNotification_block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplayer", "Download");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1A238D000, v2, OS_LOG_TYPE_DEFAULT, "Handling atc startup notification", v4, 2u);
  }

  return [*(a1 + 32) _prefectchAllATDownloads];
}

uint64_t __Block_byref_object_copy__99(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2419660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getSSDownloadExternalPropertyRentalInformation()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSSDownloadExternalPropertyRentalInformationSymbolLoc_ptr;
  v9 = getSSDownloadExternalPropertyRentalInformationSymbolLoc_ptr;
  if (!getSSDownloadExternalPropertyRentalInformationSymbolLoc_ptr)
  {
    v1 = StoreServicesLibrary();
    v7[3] = dlsym(v1, "SSDownloadExternalPropertyRentalInformation");
    getSSDownloadExternalPropertyRentalInformationSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadExternalPropertyRentalInformation(void)"];
    [v4 handleFailureInFunction:v5 file:@"MPStoreDownload.m" lineNumber:31 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A241A018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSSDownloadExternalPropertyRentalInformationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadExternalPropertyRentalInformation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadExternalPropertyRentalInformationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *StoreServicesLibrary()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!StoreServicesLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __StoreServicesLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76752E0;
    v6 = 0;
    StoreServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = StoreServicesLibraryCore_frameworkLibrary;
  if (!StoreServicesLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *StoreServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"MPStoreDownload.m" lineNumber:23 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __StoreServicesLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  StoreServicesLibraryCore_frameworkLibrary = result;
  return result;
}

void getSSDownloadPropertyStoreItemIdentifier()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSSDownloadPropertyStoreItemIdentifierSymbolLoc_ptr;
  v9 = getSSDownloadPropertyStoreItemIdentifierSymbolLoc_ptr;
  if (!getSSDownloadPropertyStoreItemIdentifierSymbolLoc_ptr)
  {
    v1 = StoreServicesLibrary();
    v7[3] = dlsym(v1, "SSDownloadPropertyStoreItemIdentifier");
    getSSDownloadPropertyStoreItemIdentifierSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyStoreItemIdentifier(void)"];
    [v4 handleFailureInFunction:v5 file:@"MPStoreDownload.m" lineNumber:47 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A241A45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSSDownloadPropertyStoreItemIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyStoreItemIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyStoreItemIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getSSDownloadPropertyReason()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSSDownloadPropertyReasonSymbolLoc_ptr;
  v9 = getSSDownloadPropertyReasonSymbolLoc_ptr;
  if (!getSSDownloadPropertyReasonSymbolLoc_ptr)
  {
    v1 = StoreServicesLibrary();
    v7[3] = dlsym(v1, "SSDownloadPropertyReason");
    getSSDownloadPropertyReasonSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyReason(void)"];
    [v4 handleFailureInFunction:v5 file:@"MPStoreDownload.m" lineNumber:49 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A241A6E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSSDownloadPropertyReasonSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyReason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyReasonSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A241B07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSSDownloadPhaseCanceledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPhaseCanceled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPhaseCanceledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPhaseDataRestoreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPhaseDataRestore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPhaseDataRestoreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPhaseDownloadingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPhaseDownloading");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPhaseDownloadingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPhaseFailedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPhaseFailed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPhaseFailedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPhaseFinishedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPhaseFinished");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPhaseFinishedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPhaseInstallingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPhaseInstalling");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPhaseInstallingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getSSDownloadPhasePaused()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSSDownloadPhasePausedSymbolLoc_ptr;
  v9 = getSSDownloadPhasePausedSymbolLoc_ptr;
  if (!getSSDownloadPhasePausedSymbolLoc_ptr)
  {
    v1 = StoreServicesLibrary();
    v7[3] = dlsym(v1, "SSDownloadPhasePaused");
    getSSDownloadPhasePausedSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPhasePaused(void)"];
    [v4 handleFailureInFunction:v5 file:@"MPStoreDownload.m" lineNumber:38 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A241B3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getSSDownloadPhasePreflight()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSSDownloadPhasePreflightSymbolLoc_ptr;
  v9 = getSSDownloadPhasePreflightSymbolLoc_ptr;
  if (!getSSDownloadPhasePreflightSymbolLoc_ptr)
  {
    v1 = StoreServicesLibrary();
    v7[3] = dlsym(v1, "SSDownloadPhasePreflight");
    getSSDownloadPhasePreflightSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPhasePreflight(void)"];
    [v4 handleFailureInFunction:v5 file:@"MPStoreDownload.m" lineNumber:39 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A241B538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getSSDownloadPhaseProcessing()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSSDownloadPhaseProcessingSymbolLoc_ptr;
  v9 = getSSDownloadPhaseProcessingSymbolLoc_ptr;
  if (!getSSDownloadPhaseProcessingSymbolLoc_ptr)
  {
    v1 = StoreServicesLibrary();
    v7[3] = dlsym(v1, "SSDownloadPhaseProcessing");
    getSSDownloadPhaseProcessingSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPhaseProcessing(void)"];
    [v4 handleFailureInFunction:v5 file:@"MPStoreDownload.m" lineNumber:40 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A241B69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getSSDownloadPhaseWaiting()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSSDownloadPhaseWaitingSymbolLoc_ptr;
  v9 = getSSDownloadPhaseWaitingSymbolLoc_ptr;
  if (!getSSDownloadPhaseWaitingSymbolLoc_ptr)
  {
    v1 = StoreServicesLibrary();
    v7[3] = dlsym(v1, "SSDownloadPhaseWaiting");
    getSSDownloadPhaseWaitingSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPhaseWaiting(void)"];
    [v4 handleFailureInFunction:v5 file:@"MPStoreDownload.m" lineNumber:41 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A241B800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSSDownloadPhaseWaitingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPhaseWaiting");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPhaseWaitingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPhaseProcessingSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPhaseProcessing");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPhaseProcessingSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPhasePreflightSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPhasePreflight");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPhasePreflightSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPhasePausedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPhasePaused");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPhasePausedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getSSDownloadPropertyLibraryItemIdentifier()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSSDownloadPropertyLibraryItemIdentifierSymbolLoc_ptr;
  v9 = getSSDownloadPropertyLibraryItemIdentifierSymbolLoc_ptr;
  if (!getSSDownloadPropertyLibraryItemIdentifierSymbolLoc_ptr)
  {
    v1 = StoreServicesLibrary();
    v7[3] = dlsym(v1, "SSDownloadPropertyLibraryItemIdentifier");
    getSSDownloadPropertyLibraryItemIdentifierSymbolLoc_ptr = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyLibraryItemIdentifier(void)"];
    [v4 handleFailureInFunction:v5 file:@"MPStoreDownload.m" lineNumber:48 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A241BB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSSDownloadPropertyLibraryItemIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyLibraryItemIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyLibraryItemIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A241BD50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSSDownloadPropertyIsRestoreSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyIsRestore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyIsRestoreSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getSSPurchaseClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SSPurchase");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSPurchaseClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSSPurchaseClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPStoreDownload.m" lineNumber:27 description:{@"Unable to find class %s", "SSPurchase"}];

    __break(1u);
  }
}

void *__getSSDownloadPropertyTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyKindSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyKindSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyHandlerIDSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyHandlerID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyHandlerIDSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyStoreSagaIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyStoreSagaIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyStoreSagaIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyClientBundleIdentifierSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyClientBundleIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyClientBundleIdentifierSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadKindMusicSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadKindMusic");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadKindMusicSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id getSSDownloadPolicyClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSSDownloadPolicyClass_softClass;
  v7 = getSSDownloadPolicyClass_softClass;
  if (!getSSDownloadPolicyClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSSDownloadPolicyClass_block_invoke;
    v3[3] = &unk_1E7680410;
    v3[4] = &v4;
    __getSSDownloadPolicyClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A241DC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getSSDownloadPolicyRuleClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSSDownloadPolicyRuleClass_softClass;
  v7 = getSSDownloadPolicyRuleClass_softClass;
  if (!getSSDownloadPolicyRuleClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSSDownloadPolicyRuleClass_block_invoke;
    v3[3] = &unk_1E7680410;
    v3[4] = &v4;
    __getSSDownloadPolicyRuleClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A241DD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSSDownloadSizeLimitNoLimitSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadSizeLimitNoLimit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadSizeLimitNoLimitSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getSSDownloadPolicyUserDefaultStateClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SSDownloadPolicyUserDefaultState");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSDownloadPolicyUserDefaultStateClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSSDownloadPolicyUserDefaultStateClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPStoreDownload.m" lineNumber:29 description:{@"Unable to find class %s", "SSDownloadPolicyUserDefaultState"}];

    __break(1u);
  }
}

void *__getSSDownloadSizeLimitDisabledSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadSizeLimitDisabled");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadSizeLimitDisabledSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyShouldCancelOnFailureSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyShouldCancelOnFailure");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyShouldCancelOnFailureSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyShouldSuppressErrorDialogsSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary();
  result = dlsym(v2, "SSDownloadPropertyShouldSuppressErrorDialogs");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyShouldSuppressErrorDialogsSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __getSSMutableURLRequestPropertiesClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SSMutableURLRequestProperties");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSMutableURLRequestPropertiesClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSSMutableURLRequestPropertiesClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPStoreDownload.m" lineNumber:25 description:{@"Unable to find class %s", "SSMutableURLRequestProperties"}];

    __break(1u);
  }
}

void __getSSDownloadPolicyRuleClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SSDownloadPolicyRule");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSDownloadPolicyRuleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSSDownloadPolicyRuleClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPStoreDownload.m" lineNumber:24 description:{@"Unable to find class %s", "SSDownloadPolicyRule"}];

    __break(1u);
  }
}

void __getSSDownloadPolicyClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SSDownloadPolicy");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSDownloadPolicyClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSSDownloadPolicyClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPStoreDownload.m" lineNumber:26 description:{@"Unable to find class %s", "SSDownloadPolicy"}];

    __break(1u);
  }
}

void sub_1A241E28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSSDownloadClass_block_invoke(uint64_t a1)
{
  StoreServicesLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SSDownload");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSDownloadClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSSDownloadClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPStoreDownload.m" lineNumber:28 description:{@"Unable to find class %s", "SSDownload"}];

    __break(1u);
  }
}

__CFString *MPStoreDownloadSSDownloadKindFromMPMediaType(__int16 a1)
{
  v1 = @"feature-movie";
  v2 = @"tv-episode";
  v3 = @"book";
  v4 = @"podcast";
  v5 = @"videoPodcast";
  if ((a1 & 0x400) == 0)
  {
    v5 = @"song";
  }

  if ((a1 & 2) == 0)
  {
    v4 = v5;
  }

  if ((a1 & 4) == 0)
  {
    v3 = v4;
  }

  if ((a1 & 0x200) == 0)
  {
    v2 = v3;
  }

  if ((a1 & 0x100) == 0)
  {
    v1 = v2;
  }

  if ((a1 & 0x800) != 0)
  {
    return @"music-video";
  }

  else
  {
    return v1;
  }
}

id MPStoreDownloadOriginatorWithStationInformation(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [a1 mutableCopy];
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      [v6 appendFormat:@";stationId:%llu", a3];
    }

    if (v5)
    {
      [v7 appendFormat:@";stationHash:%@", v5];
    }

    v8 = v7;
  }

  return v7;
}

void sub_1A241F290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSSDownloadPhaseFinishedSymbolLoc_block_invoke_183(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadPhaseFinished");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPhaseFinishedSymbolLoc_ptr_182 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *StoreServicesLibrary_184()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!StoreServicesLibraryCore_frameworkLibrary_191)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __StoreServicesLibraryCore_block_invoke_192;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E76753D8;
    v6 = 0;
    StoreServicesLibraryCore_frameworkLibrary_191 = _sl_dlopen();
  }

  v0 = StoreServicesLibraryCore_frameworkLibrary_191;
  if (!StoreServicesLibraryCore_frameworkLibrary_191)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *StoreServicesLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"MPStoreDownloadManager.m" lineNumber:36 description:{@"%s", v4[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void getSSDownloadPropertyLibraryItemIdentifier_186()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSSDownloadPropertyLibraryItemIdentifierSymbolLoc_ptr_187;
  v9 = getSSDownloadPropertyLibraryItemIdentifierSymbolLoc_ptr_187;
  if (!getSSDownloadPropertyLibraryItemIdentifierSymbolLoc_ptr_187)
  {
    v1 = StoreServicesLibrary_184();
    v7[3] = dlsym(v1, "SSDownloadPropertyLibraryItemIdentifier");
    getSSDownloadPropertyLibraryItemIdentifierSymbolLoc_ptr_187 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyLibraryItemIdentifier(void)"];
    [v4 handleFailureInFunction:v5 file:@"MPStoreDownloadManager.m" lineNumber:54 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A241F598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSSDownloadPropertyLibraryItemIdentifierSymbolLoc_block_invoke_188(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadPropertyLibraryItemIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyLibraryItemIdentifierSymbolLoc_ptr_187 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StoreServicesLibraryCore_block_invoke_192()
{
  result = _sl_dlopen();
  StoreServicesLibraryCore_frameworkLibrary_191 = result;
  return result;
}

id getSSPurchaseClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSSPurchaseClass_softClass_200;
  v7 = getSSPurchaseClass_softClass_200;
  if (!getSSPurchaseClass_softClass_200)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSSPurchaseClass_block_invoke_201;
    v3[3] = &unk_1E7680410;
    v3[4] = &v4;
    __getSSPurchaseClass_block_invoke_201(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A241FD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSSDownloadClass_block_invoke_197(uint64_t a1)
{
  StoreServicesLibrary_184();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SSDownload");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSDownloadClass_softClass_196 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSSDownloadClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPStoreDownloadManager.m" lineNumber:42 description:{@"Unable to find class %s", "SSDownload"}];

    __break(1u);
  }
}

void __getSSPurchaseClass_block_invoke_201(uint64_t a1)
{
  StoreServicesLibrary_184();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SSPurchase");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSSPurchaseClass_softClass_200 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSSPurchaseClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"MPStoreDownloadManager.m" lineNumber:41 description:{@"Unable to find class %s", "SSPurchase"}];

    __break(1u);
  }
}

void *__getSSDownloadPropertyClientBundleIdentifierSymbolLoc_block_invoke_204(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadPropertyClientBundleIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyClientBundleIdentifierSymbolLoc_ptr_203 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyKindSymbolLoc_block_invoke_207(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadPropertyKind");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyKindSymbolLoc_ptr_206 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getSSDownloadPropertyStoreItemIdentifier_215()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSSDownloadPropertyStoreItemIdentifierSymbolLoc_ptr_216;
  v9 = getSSDownloadPropertyStoreItemIdentifierSymbolLoc_ptr_216;
  if (!getSSDownloadPropertyStoreItemIdentifierSymbolLoc_ptr_216)
  {
    v1 = StoreServicesLibrary_184();
    v7[3] = dlsym(v1, "SSDownloadPropertyStoreItemIdentifier");
    getSSDownloadPropertyStoreItemIdentifierSymbolLoc_ptr_216 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPropertyStoreItemIdentifier(void)"];
    [v4 handleFailureInFunction:v5 file:@"MPStoreDownloadManager.m" lineNumber:57 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A242132C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSSDownloadPropertyStoreItemIdentifierSymbolLoc_block_invoke_217(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadPropertyStoreItemIdentifier");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyStoreItemIdentifierSymbolLoc_ptr_216 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __Block_byref_object_copy__220(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void soft_SSDownloadPhaseIsFinishedPhase(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getSSDownloadPhaseIsFinishedPhaseSymbolLoc_ptr;
  v9 = getSSDownloadPhaseIsFinishedPhaseSymbolLoc_ptr;
  if (!getSSDownloadPhaseIsFinishedPhaseSymbolLoc_ptr)
  {
    v3 = StoreServicesLibrary_184();
    v7[3] = dlsym(v3, "SSDownloadPhaseIsFinishedPhase");
    getSSDownloadPhaseIsFinishedPhaseSymbolLoc_ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v2)
  {
    v2(v1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"BOOL soft_SSDownloadPhaseIsFinishedPhase(NSString *__strong)"];
    [v4 handleFailureInFunction:v5 file:@"MPStoreDownloadManager.m" lineNumber:73 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A2422794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void getSSDownloadPhaseFailed()
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v0 = getSSDownloadPhaseFailedSymbolLoc_ptr_239;
  v9 = getSSDownloadPhaseFailedSymbolLoc_ptr_239;
  if (!getSSDownloadPhaseFailedSymbolLoc_ptr_239)
  {
    v1 = StoreServicesLibrary_184();
    v7[3] = dlsym(v1, "SSDownloadPhaseFailed");
    getSSDownloadPhaseFailedSymbolLoc_ptr_239 = v7[3];
    v0 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (v0)
  {
    v2 = *v0;

    v3 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getSSDownloadPhaseFailed(void)"];
    [v4 handleFailureInFunction:v5 file:@"MPStoreDownloadManager.m" lineNumber:72 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1A24228F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSSDownloadPhaseFailedSymbolLoc_block_invoke_240(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadPhaseFailed");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPhaseFailedSymbolLoc_ptr_239 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPhaseIsFinishedPhaseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadPhaseIsFinishedPhase");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPhaseIsFinishedPhaseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1A242664C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location)
{
  objc_destroyWeak((v33 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2426E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getSSDownloadKindMusicSymbolLoc_block_invoke_267(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadKindMusic");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadKindMusicSymbolLoc_ptr_266 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadKindMusicVideoSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadKindMusicVideo");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadKindMusicVideoSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadExternalPropertyBytesDownloadedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadExternalPropertyBytesDownloaded");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadExternalPropertyBytesDownloadedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadExternalPropertyPercentCompleteSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadExternalPropertyPercentComplete");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadExternalPropertyPercentCompleteSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadExternalPropertyPolicySizeLimitSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadExternalPropertyPolicySizeLimit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadExternalPropertyPolicySizeLimitSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadExternalPropertyRentalInformationSymbolLoc_block_invoke_272(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadExternalPropertyRentalInformation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadExternalPropertyRentalInformationSymbolLoc_ptr_271 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyDownloadPhaseSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadPropertyDownloadPhase");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyDownloadPhaseSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyEncodedErrorDataSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadPropertyEncodedErrorData");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyEncodedErrorDataSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyIsRestoreSymbolLoc_block_invoke_275(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadPropertyIsRestore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyIsRestoreSymbolLoc_ptr_274 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyPreferredAssetFlavorSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadPropertyPreferredAssetFlavor");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyPreferredAssetFlavorSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyReasonSymbolLoc_block_invoke_278(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadPropertyReason");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyReasonSymbolLoc_ptr_277 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyThumbnailImageURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadPropertyThumbnailImageURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyThumbnailImageURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyTitleSymbolLoc_block_invoke_281(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadPropertyTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyTitleSymbolLoc_ptr_280 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyHandlerIDSymbolLoc_block_invoke_284(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadPropertyHandlerID");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyHandlerIDSymbolLoc_ptr_283 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadPropertyCollectionNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadPropertyCollectionName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadPropertyCollectionNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadKindMovieSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadKindMovie");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadKindMovieSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getSSDownloadKindTelevisionEpisodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = StoreServicesLibrary_184();
  result = dlsym(v2, "SSDownloadKindTelevisionEpisode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getSSDownloadKindTelevisionEpisodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

__CFString *_MPStoreDownloadManagerInt64KeyPointerFunctionDescription(void *a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lli", *a1];
  }

  else
  {
    v2 = @"0";
  }

  return v2;
}

BOOL _MPStoreDownloadManagerInt64KeyPointerFunctionIsEqual(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      return *a1 == *a2;
    }
  }

  return result;
}

void *_MPStoreDownloadManagerInt64KeyPointerFunctionHash(void *result)
{
  if (result)
  {
    return ((*result ^ (*result << 32)) >> 32);
  }

  return result;
}

void _MPStoreDownloadManagerInt64KeyPointerFunctionRelinquish(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

void *_MPStoreDownloadManagerInt64KeyPointerFunctionAcquire(void *result, uint64_t (*a2)(void))
{
  if (result)
  {
    v2 = result;
    v3 = a2();
    v4 = malloc_type_malloc(v3, 0x2201B7uLL);

    return memcpy(v4, v2, v3);
  }

  return result;
}

id _NSStringFromMPMediaEntityType(uint64_t a1)
{
  v1 = &_MPMediaEntityTypeDescriptions;
  v2 = 7;
  while (*v1 != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      v3 = 0;
      goto LABEL_6;
    }
  }

  v3 = v1[1];
LABEL_6:

  return v3;
}

id _NSStringFromMPMediaLibraryArtworkType(uint64_t a1)
{
  v1 = &_MPMediaLibraryArtworkTypeDescriptions;
  v2 = 6;
  while (*v1 != a1)
  {
    v1 += 2;
    if (!--v2)
    {
      v3 = 0;
      goto LABEL_6;
    }
  }

  v3 = v1[1];
LABEL_6:

  return v3;
}

__CFString *_NSStringFromMPMediaLibraryArtworkVariantType(unint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown/%ld", a1];
  }

  else
  {
    v2 = off_1E76755D0[a1];
  }

  return v2;
}

void sub_1A242BB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A242D420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A242D774(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_1A242D8DC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1A242DBF0(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_1A2431780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2431AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A243304C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A2433E54(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1140(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A243587C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1A2436D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1554(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2438E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 88));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

char *_MSV_XXH_XXH64_update(char *result, char *__src, size_t __n)
{
  if (__src)
  {
    v3 = __n;
    v4 = __src;
    v5 = result;
    *result += __n;
    v6 = *(result + 18);
    if (v6 + __n <= 0x1F)
    {
      result = memcpy(&result[v6 + 40], __src, __n);
      LODWORD(v7) = *(v5 + 18) + v3;
LABEL_12:
      *(v5 + 18) = v7;
      return result;
    }

    v8 = &__src[__n];
    if (v6)
    {
      result = memcpy(&result[v6 + 40], __src, (32 - v6));
      v9 = __ROR8__(*(v5 + 2) - 0x3D4D51C2D82B14B1 * *(v5 + 6), 33);
      *(v5 + 1) = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 1) - 0x3D4D51C2D82B14B1 * *(v5 + 5), 33);
      *(v5 + 2) = 0x9E3779B185EBCA87 * v9;
      v10 = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 4) - 0x3D4D51C2D82B14B1 * *(v5 + 8), 33);
      *(v5 + 3) = 0x9E3779B185EBCA87 * __ROR8__(*(v5 + 3) - 0x3D4D51C2D82B14B1 * *(v5 + 7), 33);
      *(v5 + 4) = v10;
      v4 += (32 - *(v5 + 18));
      *(v5 + 18) = 0;
    }

    if (v4 + 32 <= v8)
    {
      v11 = *(v5 + 1);
      v12 = *(v5 + 2);
      v14 = *(v5 + 3);
      v13 = *(v5 + 4);
      do
      {
        v11 = 0x9E3779B185EBCA87 * __ROR8__(v11 - 0x3D4D51C2D82B14B1 * *v4, 33);
        v12 = 0x9E3779B185EBCA87 * __ROR8__(v12 - 0x3D4D51C2D82B14B1 * *(v4 + 1), 33);
        v14 = 0x9E3779B185EBCA87 * __ROR8__(v14 - 0x3D4D51C2D82B14B1 * *(v4 + 2), 33);
        v13 = 0x9E3779B185EBCA87 * __ROR8__(v13 - 0x3D4D51C2D82B14B1 * *(v4 + 3), 33);
        v4 += 32;
      }

      while (v4 <= v8 - 32);
      *(v5 + 1) = v11;
      *(v5 + 2) = v12;
      *(v5 + 3) = v14;
      *(v5 + 4) = v13;
    }

    if (v4 < v8)
    {
      v7 = v8 - v4;
      result = memcpy(v5 + 40, v4, v7);
      goto LABEL_12;
    }
  }

  return result;
}

void sub_1A243CC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A243F48C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

double MPArtworkRepresentationBestSizeMatchingSize(void *a1, double a2, double a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = *(&MPArtworkCatalogOriginalSize + 1);
  v7 = *&MPArtworkCatalogOriginalSize;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v16 + 1) + 8 * i) CGSizeValue];
        v14 = v12 >= v7;
        if (v13 >= v6)
        {
          v14 = 1;
        }

        if (v12 < a2)
        {
          v14 = 1;
        }

        if (v13 < a3)
        {
          v14 = 1;
        }

        if (!v14)
        {
          v6 = v13;
          v7 = v12;
        }
      }

      v9 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v7;
}

uint64_t __MPArtworkSortSizes_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 CGSizeValue];
  v6 = v5;
  v8 = v7;
  [v4 CGSizeValue];
  v11 = v8 != v10 || v6 != v9;
  if (v8 < v10 || v6 < v9)
  {
    v13 = -1;
  }

  else
  {
    v13 = v11;
  }

  return v13;
}

id getSSAuthorizationRequestClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSSAuthorizationRequestClass_softClass;
  v7 = getSSAuthorizationRequestClass_softClass;
  if (!getSSAuthorizationRequestClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getSSAuthorizationRequestClass_block_invoke;
    v3[3] = &unk_1E7680410;
    v3[4] = &v4;
    __getSSAuthorizationRequestClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1A2445ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSSAuthorizationRequestClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!StoreServicesLibraryCore_frameworkLibrary_2592)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __StoreServicesLibraryCore_block_invoke_2593;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7675DE8;
    v8 = 0;
    StoreServicesLibraryCore_frameworkLibrary_2592 = _sl_dlopen();
  }

  if (!StoreServicesLibraryCore_frameworkLibrary_2592)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *StoreServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MPHomeSharingErrorResolver.m" lineNumber:27 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SSAuthorizationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSSAuthorizationRequestClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"MPHomeSharingErrorResolver.m" lineNumber:28 description:{@"Unable to find class %s", "SSAuthorizationRequest"}];

LABEL_10:
    __break(1u);
  }

  getSSAuthorizationRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StoreServicesLibraryCore_block_invoke_2593()
{
  result = _sl_dlopen();
  StoreServicesLibraryCore_frameworkLibrary_2592 = result;
  return result;
}

void sub_1A2448FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2748(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

Class __getSSRentalCheckoutRequestClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!StoreServicesLibraryCore_frameworkLibrary_2902)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __StoreServicesLibraryCore_block_invoke_2903;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7675EF0;
    v8 = 0;
    StoreServicesLibraryCore_frameworkLibrary_2902 = _sl_dlopen();
  }

  if (!StoreServicesLibraryCore_frameworkLibrary_2902)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *StoreServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MPHomeSharingRentalErrorResolver.m" lineNumber:29 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SSRentalCheckoutRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSSRentalCheckoutRequestClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"MPHomeSharingRentalErrorResolver.m" lineNumber:30 description:{@"Unable to find class %s", "SSRentalCheckoutRequest"}];

LABEL_10:
    __break(1u);
  }

  getSSRentalCheckoutRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StoreServicesLibraryCore_block_invoke_2903()
{
  result = _sl_dlopen();
  StoreServicesLibraryCore_frameworkLibrary_2902 = result;
  return result;
}

uint64_t __Block_byref_object_copy__2985(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A244BDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 160), 8);
  _Unwind_Resume(a1);
}

Class __getSSRentalCheckinRequestClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!StoreServicesLibraryCore_frameworkLibrary_3001)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __StoreServicesLibraryCore_block_invoke_3002;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E7675F30;
    v8 = 0;
    StoreServicesLibraryCore_frameworkLibrary_3001 = _sl_dlopen();
  }

  if (!StoreServicesLibraryCore_frameworkLibrary_3001)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *StoreServicesLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"MPHomeSharingRentalTracker.m" lineNumber:24 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("SSRentalCheckinRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSSRentalCheckinRequestClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"MPHomeSharingRentalTracker.m" lineNumber:25 description:{@"Unable to find class %s", "SSRentalCheckinRequest"}];

LABEL_10:
    __break(1u);
  }

  getSSRentalCheckinRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StoreServicesLibraryCore_block_invoke_3002()
{
  result = _sl_dlopen();
  StoreServicesLibraryCore_frameworkLibrary_3001 = result;
  return result;
}

uint64_t MPSubscriptionStatusCapabilitiesForSubscriptionStatus(void *a1)
{
  v1 = a1;
  v2 = [v1 hasCapability:1];
  v3 = [v1 hasCapability:256];

  if (v3)
  {
    return v2 | 2;
  }

  else
  {
    return v2;
  }
}

void MPStoreGetClientTokenForIdentity(void *a1, char a2, void *a3)
{
  v5 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __MPStoreGetClientTokenForIdentity_block_invoke;
  v7[3] = &unk_1E7675F50;
  v8 = v5;
  v6 = v5;
  MPStoreGetClientTokenStatusForIdentity(a1, a2, v7);
}

void __MPStoreGetClientTokenForIdentity_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v10 = v5;
  if (a3)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = [v5 tokenResult];
    v7 = [v6 token];

    v8 = *(a1 + 32);
    if (v7)
    {
      v9 = [v10 lastError];
      (*(v8 + 16))(v8, v7, v9);
    }

    else
    {
      v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69E4198] code:-7102 userInfo:0];
      (*(v8 + 16))(v8, 0, v9);
    }
  }
}

void MPStoreGetClientTokenStatusForIdentity(void *a1, char a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (!v5)
  {
    v5 = [MEMORY[0x1E69E4680] activeAccount];
  }

  v7 = [MEMORY[0x1E69E4688] defaultIdentityStore];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __MPStoreGetClientTokenStatusForIdentity_block_invoke;
  v9[3] = &unk_1E7675F78;
  v10 = v6;
  v11 = a2;
  v8 = v6;
  [v7 getPropertiesForUserIdentity:v5 completionHandler:v9];
}

void __MPStoreGetClientTokenStatusForIdentity_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "MPStoreGetClientToken failed to get identity properties for token request. err=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    if (v5)
    {
      v8 = MEMORY[0x1E695DFD8];
      v9 = [v5 DSID];
      v10 = [v8 setWithObject:v9];

      v11 = [MEMORY[0x1E69E4440] sharedProvider];
      v12 = *(a1 + 40);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __MPStoreGetClientTokenStatusForIdentity_block_invoke_5;
      v13[3] = &unk_1E767C5D0;
      v14 = *(a1 + 32);
      [v11 getTokenStatusForDSIDs:v10 forcingRefresh:v12 completion:v13];

      goto LABEL_7;
    }

    v7 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A238D000, v7, OS_LOG_TYPE_DEFAULT, "MPStoreGetClientToken not fetching auth token because there's no active account", buf, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
LABEL_7:
}

void __MPStoreGetClientTokenStatusForIdentity_block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v5 = [a2 allValues];
    v8 = [v5 firstObject];

    (*(*(a1 + 32) + 16))();
    v6 = [v8 tokenResult];
    [v6 timeToLiveMillis];

    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"MPStoreClientTokenDidChangeNotification"];
    MRMediaRemotePostDelayedNotification();
  }
}

void sub_1A244E4CC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3309(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A244F5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _MPContentTasteBestIDFromIdentifiers(void *a1)
{
  v1 = a1;
  v2 = [v1 universalStore];
  v3 = [v2 adamID];

  if (!v3)
  {
    v4 = [v1 universalStore];
    v3 = [v4 purchasedAdamID];

    if (!v3)
    {
      v5 = [v1 universalStore];
      v3 = [v5 subscriptionAdamID];
    }
  }

  return v3;
}

void sub_1A245118C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t MPContentTasteContentTypeFromMPModelObject(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = 3;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = 4;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2 = 7;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v2 = 5;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v2 = 6;
            }

            else
            {
              v2 = 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_1A2451AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t MPMediaContentTasteTasteTypeToMPMediaEntityLikedState(uint64_t a1)
{
  v1 = 3;
  if (a1 != 2)
  {
    v1 = 1;
  }

  if (a1 == 1)
  {
    return 2;
  }

  else
  {
    return v1;
  }
}

void sub_1A245379C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A245487C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _ML3TrackPropertiesFromMPMediaItemProperties(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E695DF90];
    v2 = a1;
    v3 = [v1 dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___ML3TrackPropertiesFromMPMediaItemProperties_block_invoke;
    v6[3] = &unk_1E767A438;
    v4 = v3;
    v7 = v4;
    [v2 enumerateKeysAndObjectsUsingBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id _ML3CollectionPropertiesFromMPMediaItemColectionProperties(void *a1)
{
  if (a1)
  {
    v1 = MEMORY[0x1E695DF90];
    v2 = a1;
    v3 = [v1 dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
    v4 = ML3CollectionEntityClassForGroupingType();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___ML3CollectionPropertiesFromMPMediaItemColectionProperties_block_invoke;
    v7[3] = &unk_1E76763B8;
    v9 = v4;
    v5 = v3;
    v8 = v5;
    [v2 enumerateKeysAndObjectsUsingBlock:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_1A2457490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2458CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1A2458F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}