uint64_t sub_100023E58()
{
  v2 = STACK[0x280];
  *(v1 - 240) = v0;
  *v2 = v0;
  return (STACK[0x2B0])();
}

uint64_t sub_100023E70@<X0>(int a1@<W8>, uint64_t a2, unsigned int a3)
{
  a3 = a1 - 1358806181 * ((2 * (&a3 & 0x287BF28) - &a3 + 2105032913) ^ 0x42572C52) - 42;
  v4 = (*(v3 + 8 * (a1 ^ 0x3206u)))(&a3);
  return sub_100023EE0(v4);
}

uint64_t sub_100023EE0()
{
  v7 = *v3;
  v6 = v4 + 1358806181 * ((&v6 + 534885444 - 2 * (&v6 & 0x1FE1B444)) ^ 0x20CED8C7) - 3149;
  result = (*(v1 + 8 * (v4 + 3148)))(&v6);
  *(v0 + 16) = v2;
  return result;
}

uint64_t sub_100023F7C(void *a1)
{
  v3 = 2 * (v1 ^ 0x816);
  v4 = (v3 - 354003025) & 0x1519BFD7;
  *a1 = 0;
  a1[1] = 0;
  STACK[0x7F8] = *(v2 + 8 * v3);
  v5 = (*(v2 + 8 * (v4 + 3551)))(112, 0x100004098D10E67);
  STACK[0x8F0] = v5;
  return (*(v2 + 8 * (((v5 == 0) * ((23 * (v4 ^ 0x1698)) ^ 0x1F26)) ^ (v4 + 2643))))();
}

uint64_t sub_100024054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned int a10, unsigned int a11, uint64_t a12)
{
  a12 = **(&off_100755B60 + v14 - 8239);
  a10 = v14 + 1710126949 * (&a10 ^ 0x321B5B90) + 449;
  (*(v12 + 8 * (v14 + 1360)))(&a10);
  a11 = (v14 - 1451040408) ^ (956911519 * (((&a10 | 0xF8728A29) + (~&a10 | 0x78D75D6)) ^ 0x12E3FA2D));
  v15 = (*(v12 + 8 * (v14 ^ 0x5C8)))(&a10);
  return (*(v12 + 8 * (((a10 == ((v14 + 1112850296) & 0xBDAB24DB ^ 0x2015AA2F)) * (((v14 + 542237089) | 0x708084E) ^ (v13 + 1954))) ^ v14)))(v15);
}

void sub_100024174()
{
  v0 = *(&off_100755B60 + ((-85 * (dword_10077E3B0 ^ 0xDF ^ dword_10077E220)) ^ byte_100683C50[byte_10069D200[(-85 * (dword_10077E3B0 ^ 0xDF ^ dword_10077E220))] ^ 0xE2]) + 158);
  v1 = *(v0 - 4);
  v2 = *(&off_100755B60 + (byte_100694EA8[(byte_10068DFC8[(-85 * ((dword_10077E220 + v1) ^ 0xDF)) - 8] ^ 0x9B) - 8] ^ (-85 * ((dword_10077E220 + v1) ^ 0xDF))) + 128);
  v3 = *v2 - v1 - &v5;
  *(v0 - 4) = 2054362027 * v3 - 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((((2 * v6) | 0x8D78727A) - v6 + 960743107) ^ 0xF4A762AD);
  LOBYTE(v2) = -85 * ((*v2 + *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E3B0) ^ 0xDF)) ^ byte_100694EA0[byte_10068DFC0[(-85 * ((dword_10077E220 + dword_10077E3B0) ^ 0xDF))] ^ 0xBF]) + 64) - 8;
  (*&v4[8 * (byte_100694FA8[(byte_10068E0C0[v2] ^ 0x2A) - 8] ^ v2) + 75712])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000243E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v20 - 722) ^ (33731311 * ((((2 * &a15) | 0x3105B79A) - &a15 + 1736254515) ^ 0xA17411EE));
  a17 = a11;
  a18 = &a13;
  (*(v19 + 8 * (v20 + 5627)))(&a15);
  a17 = a11;
  LODWORD(a18) = v20 - 2008441969 * (((&a15 | 0xDEA0554D) - (&a15 & 0xDEA0554D)) ^ 0x96390143) + 1711;
  v21 = (*(v19 + 8 * (v20 ^ 0x2AF5)))(&a15);
  return (*(v19 + 8 * (((a15 == v18) * (v20 + 3953)) ^ v20)))(v21);
}

uint64_t sub_100024500(uint64_t a1)
{
  v5 = (((v1 - 61562302) & 0x3AB4EEF) + 933593497) & 0xC85A7FF1;
  *v8 = a1;
  *v9 = v10;
  v6 = 82 * (v5 ^ 0xFAE);
  v14 = v11;
  v15 = (v5 + 4329) ^ (((&v13 + 1836689581 - 2 * (&v13 & 0x6D79A8AD)) ^ 0x35107BCF) * v2);
  (*(v3 + 8 * (v5 + 5595)))(&v13);
  v14 = v12;
  v15 = (v6 + 5804) ^ ((&v13 ^ 0x5869D362) * v2);
  (*(v3 + 8 * (v6 + 7070)))(&v13);
  return (v4 - 16257999);
}

uint64_t sub_100024638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, unsigned int a18)
{
  a17 = a13;
  a18 = (v18 + 3455) ^ ((((&a16 | 0x2283497C) - &a16 + (&a16 & 0xDD7CB680)) ^ 0x7AEA9A1E) * v19);
  (*(v20 + 8 * (v18 ^ 0x3697)))(&a16);
  a17 = a14;
  a18 = ((v18 ^ 0x15F0) + 6575) ^ (((2 * (&a16 & 0x78C89580) - &a16 + 121072254) ^ 0x5F5EB91C) * v19);
  v21 = (*(v20 + 8 * (v18 ^ 0x3697)))(&a16);
  return sub_100024704(v21);
}

void sub_1000247C4(uint64_t a1)
{
  v1 = *(a1 + 4) - 2048652491 * ((-2 - ((a1 | 0x418F9A29) + (~a1 | 0xBE7065D6))) ^ 0xFC1F2D3);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_100024A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *v5 = v4;
  *(v4 + 8) = *(a4 + 8);
  *(a4 + 8) = v4;
  return sub_100133D30(a1, a2, a3);
}

uint64_t sub_100024A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = (&a14 ^ 0x5869D362) * v20;
  a15 = v22 + 1542371418;
  a18 = -654855621 - v22;
  a19 = v22 + v21 + 1674574926;
  a16 = a10;
  a17 = &a12;
  v23 = (*(v19 + 8 * (v21 ^ 0x35D4)))(&a14);
  return (*(v19 + 8 * ((60 * (a14 == 3 * (v21 ^ 0x172F) + 7 * (v21 ^ 0x125E) + 16248680)) ^ v21)))(v23);
}

uint64_t sub_100024B4C@<X0>(int a1@<W8>)
{
  LODWORD(STACK[0x58C]) = v9;
  v10 = (LODWORD(STACK[0x588]) - 694354100) & 0x2962F3FC;
  LODWORD(STACK[0x588]) = v5 - 1707705392;
  v11 = LODWORD(STACK[0x590]) + 30028750 + v10;
  v12 = v11 < 0x2C0B376;
  v13 = (-257 * ((((*STACK[0x398] ^ 0xF2CEBDBC) + (((2 * (v10 ^ 0x13CE)) ^ 0x57C) & (2 * *STACK[0x398])) + 221332036) * v7 - v8 - 975910153) / 0x101) - LODWORD(STACK[0x5B0])) ^ v6 ^ v4;
  v14 = v6 - (v13 ^ v2);
  v15 = LODWORD(STACK[0x5B0]) - (v13 ^ v2);
  HIDWORD(v16) = v13 ^ v2;
  LODWORD(v16) = v13 ^ v2;
  v17 = (((v16 >> 29) - v15 + v14) ^ v13) + v1;
  v18 = v17 ^ v15;
  v19 = v17 + v13;
  v20 = v17 ^ v14;
  HIDWORD(v16) = v17;
  LODWORD(v16) = v17;
  v21 = (((v16 >> 28) - (v20 + v18)) ^ v19) + v3;
  v22 = __ROR4__(__ROR4__(v21 ^ v18, 3) ^ 0xBA187B78, 29) ^ 0xD0C3DBC5;
  v23 = (v21 ^ v20) + a1 - (v21 + v19) + (v22 ^ __ROR4__(v21, 28));
  if (v11 >= 0x2C0B376)
  {
    v12 = v11 > 0x2C0B377;
  }

  LODWORD(STACK[0x5B0]) = v23 ^ v22;
  return (*(STACK[0x598] + 8 * ((13710 * v12) ^ v10)))();
}

uint64_t sub_100024CE8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0xAB8] = v65;
  v66 = STACK[0x4E8];
  STACK[0xAC0] = STACK[0x4E8];
  return (*(a65 + 8 * ((326 * (v65 - v66 > ((a1 - 1445) ^ 0x14DFu) - 6074)) ^ a1)))();
}

uint64_t sub_100024E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * (&a12 ^ 0xB0039876) + 8154;
  a12 = &a10;
  v17 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * ((4675 * (a13 == v16)) ^ v15)))(v17);
}

uint64_t sub_100024F58(uint64_t a1)
{
  v2 = *a1 - 869295389 * (((a1 | 0x86E0A434) - a1 + (a1 & 0x791F5BCB)) ^ 0x37B48867);
  v5 = v2 + 379709487 - 914963389 * (((v4 | 0xC4CF1BC) - (v4 & 0xC4CF1BC)) ^ 0x20B040C7);
  result = (*(*(&off_100755B60 + (v2 ^ 0xE95E3165)) + v2 + 379712806))(v4);
  *(a1 + 4) = v4[0];
  return result;
}

uint64_t sub_1000250B4(uint64_t a1)
{
  v6 = v4 - 1;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * (((v6 == 0) * ((v3 + 1012794078) & 0x335E0DF5 ^ 0x6F5)) ^ (v2 + v3 + 1982))))();
}

void sub_100025100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(&off_100755B60 + ((-85 * (dword_10077E228 ^ 0xDF ^ dword_10077E220)) ^ byte_10068E1C0[byte_100683B50[(-85 * (dword_10077E228 ^ 0xDF ^ dword_10077E220))] ^ 0x80]) - 61);
  v5 = *(&off_100755B60 + (byte_100694EA0[byte_10068DFC0[(-85 * (*v4 ^ dword_10077E220 ^ 0xDF))] ^ 0x6D] ^ (-85 * (*v4 ^ dword_10077E220 ^ 0xDF))) + 184);
  v6 = (*v5 - *v4) ^ &v11;
  *v4 = 2054362027 * v6 + 0x1FC86B74B1533AF5;
  *v5 = 2054362027 * (v6 ^ 0xB4207763EF64BDFLL);
  v9 = 0;
  v12 = 869295389 * ((((&v12 | 0x63E1E0CC) ^ 0xFFFFFFFE) - (~&v12 | 0x9C1E1F33)) ^ 0x2D4A3360) + 1903876051;
  v13 = &v9;
  v7 = *(&off_100755B60 + ((-85 * ((dword_10077E220 - dword_10077E228) ^ 0xDF)) ^ byte_100694EA0[byte_10068DFC0[(-85 * ((dword_10077E220 - dword_10077E228) ^ 0xDF))] ^ 0xBF]) + 64) - 8;
  (*&v7[8 * ((-85 * ((*v5 + *v4) ^ 0xDF)) ^ byte_100694EA0[byte_10068DFC0[(-85 * ((*v5 + *v4) ^ 0xDF))] ^ 0x9B]) + 76472])(&v12);
  v10 = 0;
  v13 = &v10;
  v12 = 869295389 * (((&v12 | 0xE5A128E) - (&v12 & 0xE5A128E)) ^ 0xBF0E3EDD) + 1903876051;
  v8 = -85 * (*v4 ^ 0xDF ^ *v5);
  (*&v7[8 * (byte_10068E1CC[(byte_100683B54[v8 - 4] ^ 0x80) - 12] ^ v8) + 76248])(&v12);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100025444()
{
  *(v3 - 136) = v1 + 675641766 - 956911519 * ((v3 - 1886939832 - 2 * ((v3 - 136) & 0x8F8795D0)) ^ 0x6516E5D5) - 1177010681;
  *(v0 + 8) = &v6;
  (*(v2 + 8 * (v1 + 7192)))(v3 - 136);
  return (v5 ^ 0xB0FD57DF) + ((2 * v5) & 0x61FAAFBE) + ((v1 + 675641766) ^ 0x67BF38A5) - 16257999;
}

uint64_t sub_100025534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W7>, unint64_t a4@<X8>)
{
  v18 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v19 = vdupq_n_s64(0x38uLL);
  *&STACK[0x390] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x3A0] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x370] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x380] = vdupq_n_s64(v12);
  *&STACK[0x350] = vdupq_n_s64(v13);
  *&STACK[0x360] = vdupq_n_s64(v4);
  *&STACK[0x330] = vdupq_n_s64(0x45B996DFB575EE6uLL);
  *&STACK[0x340] = vdupq_n_s64(0x9A4BC939D526EF5ELL);
  *&STACK[0x310] = vdupq_n_s64(0x5B4E7A73A872D06CuLL);
  *&STACK[0x320] = vdupq_n_s64(0xFDD233490254508DLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x8D788362149CAEAALL);
  *&STACK[0x300] = vdupq_n_s64(0xE50EF93BD6C6A2AALL);
  v20 = vdupq_n_s64(v11);
  *&STACK[0x2D0] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x2E0] = vdupq_n_s64(0xEC3D1E48E4838A5DLL);
  *&STACK[0x2B0] = vdupq_n_s64(0x39627EADB2F598AFuLL);
  *&STACK[0x2C0] = vdupq_n_s64(0x8D3B02A49A14CEA0);
  *&STACK[0x290] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x2A0] = vdupq_n_s64(0x92523C7F9A72C4EELL);
  *&STACK[0x270] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x280] = vdupq_n_s64(0xD54EE0FE93425299);
  *&STACK[0x260] = vdupq_n_s64(0x2AB11F016CBDAD66uLL);
  v21 = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  v22 = vdupq_n_s64(0x63585D3A03AB4AB4uLL);
  v23 = vdupq_n_s64(0xCB1EB8AD9A5D3BE8);
  v24 = vdupq_n_s64(0xF382F877F675E8D6);
  v25 = vdupq_n_s64(0x863E83C404C50B95);
  v26 = vdupq_n_s64(0x9D5C0BE47C074B15);
  v27 = vdupq_n_s64(v14);
  *&STACK[0x250] = xmmword_10069D310;
  v28 = ((a3 + 3990) ^ 0xFFFFFFFFFFFFE920) - v17;
  v29.i64[0] = v15 + a2 - v17 - 7;
  v29.i64[1] = v15 + a2 + v28;
  v30.i64[0] = v15 + a2 - v17 - 1;
  v30.i64[1] = v15 + a2 - v17 - 2;
  v31.i64[0] = v15 + a2 - v17 - 3;
  v31.i64[1] = v15 + a2 - v17 - 4;
  v32.i64[0] = v15 + a2 - v17 - 5;
  v32.i64[1] = v15 + a2 - v17 - 6;
  v33.i64[0] = a1 + a2 - v17 - 5;
  v33.i64[1] = a1 + a2 - v17 - 6;
  v34.i64[0] = a1 + a2 - v17 - 3;
  v34.i64[1] = a1 + a2 - v17 - 4;
  v35.i64[0] = a1 + a2 - v17 - 1;
  v35.i64[1] = a1 + a2 - v17 - 2;
  v36.i64[0] = a1 + a2 - v17 - 7;
  v36.i64[1] = a1 + a2 + v28;
  v37 = vandq_s8(v32, v18);
  v38 = vandq_s8(v31, v18);
  v39 = vandq_s8(v30, v18);
  v40 = vandq_s8(v29, v18);
  v41 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), *&STACK[0x3A0]);
  v42 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL), *&STACK[0x3A0]);
  v43 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL), *&STACK[0x3A0]);
  v44 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v40, 0x38uLL), v40, 8uLL), *&STACK[0x3A0]);
  v45 = veorq_s8(v44, *&STACK[0x390]);
  v46 = veorq_s8(v43, *&STACK[0x390]);
  v47 = veorq_s8(v42, *&STACK[0x390]);
  v48 = veorq_s8(v41, *&STACK[0x390]);
  v49 = veorq_s8(v41, *&STACK[0x380]);
  v50 = veorq_s8(v42, *&STACK[0x380]);
  v51 = veorq_s8(v43, *&STACK[0x380]);
  v52 = veorq_s8(v44, *&STACK[0x380]);
  v53 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v49), *&STACK[0x370]);
  v54 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v50), *&STACK[0x370]);
  v55 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v51), *&STACK[0x370]);
  v56 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v52), *&STACK[0x370]);
  v57 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v58 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v59 = vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL);
  v60 = veorq_s8(v56, vsraq_n_u64(vshlq_n_s64(v52, 3uLL), v52, 0x3DuLL));
  v61 = veorq_s8(v55, v59);
  v62 = veorq_s8(v54, v58);
  v63 = veorq_s8(v53, v57);
  v64 = vsraq_n_u64(vshlq_n_s64(v56, 0x38uLL), v56, 8uLL);
  v65 = vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL);
  v66 = vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL), v63);
  v68 = vaddq_s64(v66, v62);
  v69 = vaddq_s64(v65, v61);
  v70 = vaddq_s64(v64, v60);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), *&STACK[0x360]), v70), *&STACK[0x350]), *&STACK[0x340]);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v69, v69), *&STACK[0x360]), v69), *&STACK[0x350]), *&STACK[0x340]);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v68, v68), *&STACK[0x360]), v68), *&STACK[0x350]), *&STACK[0x340]);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v67, v67), *&STACK[0x360]), v67), *&STACK[0x350]), *&STACK[0x340]);
  v75 = vsraq_n_u64(vshlq_n_s64(v60, 3uLL), v60, 0x3DuLL);
  v76 = vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL);
  v77 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v78 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v79 = veorq_s8(v73, v77);
  v80 = veorq_s8(v72, v76);
  v81 = veorq_s8(v71, v75);
  v82 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v83 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v81);
  v86 = vaddq_s64(v84, v80);
  v87 = vaddq_s64(v83, v79);
  v88 = vaddq_s64(v82, v78);
  v89 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v88, v88), *&STACK[0x330]), v88), *&STACK[0x320]), *&STACK[0x310]);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v87, v87), *&STACK[0x330]), v87), *&STACK[0x320]), *&STACK[0x310]);
  v91 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v86, v86), *&STACK[0x330]), v86), *&STACK[0x320]), *&STACK[0x310]);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v85, v85), *&STACK[0x330]), v85), *&STACK[0x320]), *&STACK[0x310]);
  v93 = vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v95 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v96 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v97 = veorq_s8(v91, v95);
  v98 = veorq_s8(v90, v94);
  v99 = veorq_s8(v89, v93);
  v100 = vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v102 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v99);
  v104 = vaddq_s64(v102, v98);
  v105 = vaddq_s64(v101, v97);
  v106 = vaddq_s64(v100, v96);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v106, v106), *&STACK[0x300]), v106), *&STACK[0x2F0]), *&STACK[0x2E0]);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v105, v105), *&STACK[0x300]), v105), *&STACK[0x2F0]), *&STACK[0x2E0]);
  v109 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v104, v104), *&STACK[0x300]), v104), *&STACK[0x2F0]), *&STACK[0x2E0]);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v103, v103), *&STACK[0x300]), v103), *&STACK[0x2F0]), *&STACK[0x2E0]);
  v111 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v112 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v113 = vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL);
  v114 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v115 = veorq_s8(v109, v113);
  v116 = veorq_s8(v108, v112);
  v117 = veorq_s8(v107, v111);
  v118 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v119 = vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL);
  v120 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v117);
  v122 = veorq_s8(vaddq_s64(v118, v114), v20);
  v123 = veorq_s8(vaddq_s64(v119, v115), v20);
  v124 = veorq_s8(vaddq_s64(v120, v116), v20);
  v125 = veorq_s8(v121, v20);
  v126 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL);
  v129 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v130 = veorq_s8(v124, v128);
  v131 = veorq_s8(v123, v127);
  v132 = veorq_s8(v122, v126);
  v133 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v134 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v135 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v132);
  v137 = veorq_s8(vaddq_s64(v133, v129), *&STACK[0x2D0]);
  v138 = veorq_s8(vaddq_s64(v134, v130), *&STACK[0x2D0]);
  v139 = veorq_s8(vaddq_s64(v135, v131), *&STACK[0x2D0]);
  v140 = veorq_s8(v136, *&STACK[0x2D0]);
  v141 = vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL);
  v144 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v145 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), veorq_s8(v137, v141));
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), veorq_s8(v138, v142));
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), veorq_s8(v139, v143));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v144);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v148, v148), *&STACK[0x2C0]), v148), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v147, v147), *&STACK[0x2C0]), v147), *&STACK[0x2B0]), *&STACK[0x2A0]);
  v151 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v146, v146), *&STACK[0x2C0]), v146), *&STACK[0x2B0]), *&STACK[0x2A0]);
  *&STACK[0x3B0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v145, v145), *&STACK[0x2C0]), v145), *&STACK[0x2B0]), *&STACK[0x2A0]), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v19)));
  v152 = vshlq_u64(v151, vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), v19)));
  v153 = vshlq_u64(v150, vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), v19)));
  v154 = vshlq_u64(v149, vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), v19)));
  v155 = vandq_s8(v36, v18);
  v156 = vandq_s8(v35, v18);
  v157 = vandq_s8(v34, v18);
  v158 = vandq_s8(v33, v18);
  v159 = vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL);
  v160 = vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL);
  v161 = vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL);
  v162 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v163 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x270], v162), *&STACK[0x260]), vorrq_s8(vaddq_s64(v162, *&STACK[0x290]), *&STACK[0x280]));
  v164 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x270], v161), *&STACK[0x260]), vorrq_s8(vaddq_s64(v161, *&STACK[0x290]), *&STACK[0x280]));
  v165 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x270], v160), *&STACK[0x260]), vorrq_s8(vaddq_s64(v160, *&STACK[0x290]), *&STACK[0x280]));
  v166 = vsubq_s64(v21, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x270], v159), *&STACK[0x260]), vorrq_s8(vaddq_s64(v159, *&STACK[0x290]), *&STACK[0x280])));
  v167 = vsubq_s64(v21, v165);
  v168 = vsubq_s64(v21, v164);
  v169 = veorq_s8(v167, v22);
  v170 = veorq_s8(v166, v22);
  v171 = veorq_s8(v166, v23);
  v172 = veorq_s8(v167, v23);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v172);
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v174, v174), v24), v174), v25), v26);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v173, v173), v24), v173), v25), v26);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v178 = veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL));
  v179 = vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL);
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v178);
  v181 = veorq_s8(vaddq_s64(v179, v177), v27);
  v182 = veorq_s8(v180, v27);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v184 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v185 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v184);
  v187 = vaddq_s64(v185, v183);
  v188 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v189 = veorq_s8(v187, v188);
  v190 = veorq_s8(v186, v188);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v192 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v193 = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v192);
  v195 = vaddq_s64(v193, v191);
  v196 = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  v197 = veorq_s8(v195, v196);
  v198 = veorq_s8(v194, v196);
  v199 = vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL);
  v200 = veorq_s8(v198, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v201 = veorq_s8(v197, v199);
  v202 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v203 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v201);
  v204 = veorq_s8(vaddq_s64(v202, v200), v20);
  v205 = veorq_s8(v203, v20);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v207 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL));
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL), v207);
  v209 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206);
  v210 = vdupq_n_s64(v5);
  v211 = veorq_s8(v209, v210);
  v212 = vdupq_n_s64(v6);
  v213 = veorq_s8(v208, v210);
  v214 = vdupq_n_s64(a4);
  v215 = vaddq_s64(vsubq_s64(vorrq_s8(v213, v212), vorrq_s8(v213, v214)), v214);
  v216 = vdupq_n_s64(v7);
  v217 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v211, v212), vorrq_s8(v211, v214)), v214), v216);
  v218 = veorq_s8(v215, v216);
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL)));
  v220 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL)));
  v221 = vdupq_n_s64(v8);
  v222 = vsubq_s64(vandq_s8(vaddq_s64(v220, v220), v221), v220);
  v223 = vdupq_n_s64(v9);
  v224 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v219, v219), v221), v219), v223);
  v225 = vdupq_n_s64(v10);
  v261.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(v222, v223), v225), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v19))), v154);
  v261.val[1] = veorq_s8(vshlq_u64(veorq_s8(v224, v225), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), v19))), v153);
  v226 = veorq_s8(v168, v22);
  v227 = veorq_s8(v168, v23);
  v228 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227);
  v229 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v228, v228), v24), v228), v25), v26);
  v230 = veorq_s8(v229, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v231 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v229, 0x38uLL), v229, 8uLL), v230), v27);
  v232 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL));
  v233 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v232), v188);
  v234 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL));
  v235 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL), v234), v196);
  v236 = veorq_s8(v235, vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL));
  v237 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v235, 0x38uLL), v235, 8uLL), v236), v20);
  v238 = veorq_s8(v237, vsraq_n_u64(vshlq_n_s64(v236, 3uLL), v236, 0x3DuLL));
  v239 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL), v238), v210);
  v240 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v239, v212), vorrq_s8(v239, v214)), v214), v216);
  v241 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v240, 0x38uLL), v240, 8uLL), veorq_s8(v240, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL)));
  v242 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v241, v241), v221), v241), v223), v225), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v19)));
  v243 = vsubq_s64(v21, v163);
  v261.val[0] = veorq_s8(v242, v152);
  v244 = veorq_s8(v243, v22);
  v245 = veorq_s8(v243, v23);
  v246 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245);
  v247 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v246, v246), v24), v246), v25), v26);
  v248 = veorq_s8(v247, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v249 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v248), v27);
  v250 = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v248, 3uLL), v248, 0x3DuLL));
  v251 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), v250), v188);
  v252 = veorq_s8(v251, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL));
  v253 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v251, 0x38uLL), v251, 8uLL), v252), v196);
  v254 = veorq_s8(v253, vsraq_n_u64(vshlq_n_s64(v252, 3uLL), v252, 0x3DuLL));
  v255 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v253, 0x38uLL), v253, 8uLL), v254), v20);
  v256 = veorq_s8(v255, vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL));
  v257 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), v256), v210);
  v258 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v257, v212), vorrq_s8(v257, v214)), v214), v216);
  v259 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v258, 0x38uLL), v258, 8uLL), veorq_s8(v258, vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL)));
  v261.val[3] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v259, v259), v221), v259), v223), v225), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v19))), *&STACK[0x3B0]);
  *(a1 + a2 - v17 - 8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v261, *&STACK[0x250])), *(v15 + a2 - v17 - 8));
  return (*(v16 + 8 * ((60 * (8 - (a2 & 0xFFFFFFF8) == -v17)) ^ a3)))();
}

uint64_t sub_100026204()
{
  v5 = v4 + v0;
  v16 = v4 + v0 - 2008441969 * (((&v14 | 0x8D25A98E) - &v14 + (&v14 & 0x72DA5670)) ^ 0xC5BCFD80);
  v15 = v13;
  (*(v1 + 8 * (v4 + v0 + 3966)))(&v14);
  if (v14 == v3 + v0 + 754610459 + 1368)
  {
    v6 = 922670079;
  }

  else
  {
    v6 = 503011295;
  }

  if (v14 == v3 + v0 + 754610459 + 1368)
  {
    v7 = 1845340158;
  }

  else
  {
    v7 = 1006022590;
  }

  if (v14 == v3 + v0 + 754610459 + 1368)
  {
    v8 = -906412080;
  }

  else
  {
    v8 = -486753296;
  }

  v9 = (v6 ^ v11) + v8 + (v7 & (2 * v11));
  v15 = v13;
  v16 = (v5 + 2685) ^ ((((&v14 | 0x94082D9B) - &v14 + (&v14 & 0x6BF7D260)) ^ 0xCC61FEF9) * v2);
  (*(v1 + 8 * (v0 ^ 0xD305BE99)))(&v14);
  v15 = v12;
  v16 = (v0 + 754615685) ^ ((((&v14 | 0x86FC24F9) + (~&v14 | 0x7903DB06)) ^ 0xDE95F79A) * v2);
  (*(v1 + 8 * ((v0 + 754610459) ^ 0x29BC)))(&v14);
  return (v9 - 16257999);
}

void sub_1000263EC(uint64_t a1)
{
  v1 = *(a1 + 12) - 1317436891 * ((a1 + 503694825 - 2 * (a1 & 0x1E05C5E9)) ^ 0xAE065D9F);
  v2 = *(&off_100755B60 + v1 - 7875) - 8;
  v3 = *&v2[8 * ((39 * ((*&v2[8 * (v1 ^ 0x3A78)])(32, 0x101004023FF3BD5) != 0)) ^ v1)];
  __asm { BRAA            X8, X17 }
}

void sub_1000264AC(uint64_t a1)
{
  v1 = *(a1 + 24) - 1824088897 * (((a1 | 0xAC93D2C6) - (a1 | 0x536C2D39) + 1399598393) ^ 0xF4FA01A4);
  __asm { BRAA            X9, X17 }
}

_DWORD *sub_1000265A8@<X0>(_DWORD *result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  **(result + 2) = (v4 + v3 - 1591) ^ a2;
  *(a3 + 16) = v5;
  return sub_100043DB4(result);
}

uint64_t sub_1000265FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, unsigned int a19, uint64_t a20, uint64_t a21)
{
  v27 = ((2 * (&a17 & 0x2159E9F8) - &a17 - 559540733) ^ 0x86CFC561) * v22;
  a17 = v27 + v21 + 2364;
  a19 = (v24 ^ 0x7FB4FABB) - v27 + ((v24 << (v21 ^ 0x70)) & 0xFF69F576) - 823136305;
  a20 = v23;
  a21 = a13;
  v28 = (*(v25 + 8 * (v21 + 8238)))(&a17);
  return (*(v25 + 8 * (((a18 == v26) * ((v21 + 2016131178) & 0x476F ^ 0x1A95)) ^ v21)))(v28);
}

uint64_t sub_100026740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, _DWORD *a39)
{
  v44 = a32 & 0xFD4D3FBF;
  *a39 ^= a38 ^ ((((v44 ^ 0x1B23) - ((~(v39 + 1232691366) + v40) ^ (v42 - (v39 + 1232691366)))) | (~(v39 + 1232691366) + v40)) >> 63);
  return (*(v43 + 8 * ((109 * (v41 - 1 != v44 - 1232698310 + ((v44 + 880934122) | 0x82048750) - 1829584570)) ^ v44)))(a1, a2, a3, 1232696482);
}

uint64_t sub_1000267AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a16 = 1317436891 * (((&a14 | 0xB2CF11BF) - &a14 + (&a14 & 0x4D30EE40)) ^ 0x2CC89C9) + 8154;
  a14 = &a10;
  v18 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((4475 * (a15 == v17)) ^ 0xE0Eu)))(v18);
}

uint64_t sub_100026838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t (*a33)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a8 == 17168)
  {
    return (*(STACK[0x2A8] + 8 * (v35 ^ (11002 * (v34 == v33 + 4)))))(a1, a2, a3, a4, a5, a6, a7, 17168);
  }

  if (a8 == 20706 || a8 == 33980)
  {
    return (*(STACK[0x2A8] + 8 * ((((a6 ^ 0x9EB) + 7936) * (a8 == 17168)) ^ (a6 - 2412))))();
  }

  return a33(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_100026910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((123 * ((((v4 + v2) ^ (v6 == 0)) & 1) == 0)) ^ (v4 + v2 + 3774))))();
}

uint64_t sub_10002699C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, int8x16_t a6@<Q0>)
{
  v11 = a2 + a3;
  v12 = veorq_s8(*(a5 + v11), a6);
  v13 = (a1 + v11);
  v13[-1] = veorq_s8(*(a5 + v11 - 16), a6);
  *v13 = v12;
  return (*(v10 + 8 * (((v9 + v8 == 0) * a4) ^ (v7 + v6))))();
}

uint64_t sub_100026AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, _DWORD *a29, unsigned int *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42)
{
  *a29 = a42 + 1;
  v45 = *a30;
  v46 = v44 - 152;
  v47 = 2048652491 * ((v44 + 0x121EB88571CA76EALL - 2 * ((v44 - 152) & 0x121EB88571CA7782)) ^ 0xC6FA3709C07BE087);
  v48 = v42 - 970059808 + v47;
  *(v44 - 128) = ((v42 - 970059808) ^ 0xA7) + v47;
  *(v44 - 124) = v48 - 744;
  *(v46 + 8) = 5119 - v47;
  *(v46 + 32) = v45 ^ v47;
  *(v44 - 112) = v47 ^ 1;
  *(v44 - 136) = v48;
  *(v44 - 152) = (v42 - 1317022489) ^ v47;
  v49 = (*(v43 + 8 * (v42 ^ 0xB686BA8C)))(v44 - 152);
  return (*(v43 + 8 * *(v44 - 132)))(v49);
}

uint64_t sub_100026BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, unsigned int a17)
{
  a16 = a11;
  a17 = (v18 + 3815) ^ (1824088897 * ((&a15 & 0xFA965264 | ~(&a15 | 0xFA965264)) ^ 0x5D007EF9));
  v19 = (*(v17 + 8 * (v18 + 5081)))(&a15);
  return sub_10004E664(v19);
}

uint64_t sub_100026BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, __int16 a14, char a15, _BYTE *a16, uint64_t a17, int a18, unsigned int a19, char *a20, char *a21, _BYTE *a22)
{
  a22 = a16;
  LODWORD(a21) = v22 + 956911519 * (&a18 ^ 0xEA917005) + 4992;
  a20 = &a15;
  (*(v24 + 8 * (v22 ^ 0x355E)))(&a18);
  a19 = (v22 - 1068) ^ (33731311 * ((2 * (&a18 & 0x34132630) - &a18 - 873670195) ^ 0xF21A13EE));
  a20 = a16;
  a21 = &a13;
  (*(v24 + 8 * (v22 ^ 0x35A1)))(&a18);
  a20 = a16;
  LODWORD(a21) = v22 - 2008441969 * (&a18 ^ 0x4899540E) + 1365;
  v25 = (*(v24 + 8 * (v22 + 5331)))(&a18);
  return (*(v24 + 8 * ((324 * (a18 == v23)) ^ v22)))(v25);
}

uint64_t sub_100026D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = v9 + v8;
  v19 = v9 + v8 + 9;
  v20 = __ROR8__(v19 & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5;
  v21 = __ROR8__(v20 ^ 0x49E9423B6F16E7D2, 8);
  v20 ^= 0xE1AFA7ACF6E0968ELL;
  v22 = (v21 + v20) ^ v16;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = __ROR8__(v22, 8);
  v25 = __ROR8__(((a8 & (2 * (v24 + v23))) - (v24 + v23) + v12) ^ a4, 8);
  v26 = ((a8 & (2 * (v24 + v23))) - (v24 + v23) + v12) ^ a4 ^ __ROR8__(v23, 61);
  v27 = (v25 + v26 - (a5 & (2 * (v25 + v26))) + a6) ^ a7;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v15;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (0x74116C981532F660 - ((v31 + v30) | 0x74116C981532F660) + ((v31 + v30) | a3)) ^ a2;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x1A2AEBE44253AF03;
  v35 = v9 - 6084 + v10 + 4735;
  v36 = (__ROR8__(v34, 8) + (v34 ^ __ROR8__(v33, 61))) ^ v13;
  *(v18 + 9) = *(v11 + v35) ^ (((0x6FD00DA82B5215D6 - (v36 | 0x6FD00DA82B5215D6) + (v36 | a1)) ^ v14) >> (8 * (v19 & 7u))) ^ 0x3C;
  return (*(v17 + 8 * ((26 * (v35 != 0)) ^ v10)))();
}

uint64_t sub_100026E94(int a1, int a2, double a3, double a4, double a5, double a6, double a7, int8x16_t a8)
{
  v25 = v9 - 16;
  v26.i64[0] = v25 + v10 + 15;
  v26.i64[1] = v25 + v10 + 14;
  v27.i64[0] = v25 + v10 + 13;
  v27.i64[1] = v11 - 16 + v10 - 1731;
  v28.i64[0] = v25 + v10 + 11;
  v28.i64[1] = v25 + v10 + 10;
  v29.i64[0] = v25 + v10 + 9;
  v29.i64[1] = v25 + v10 + 8;
  *&v30 = v25 + v10 + 7;
  *(&v30 + 1) = v25 + v10 + 6;
  *&STACK[0x3B0] = v30;
  *&v30 = v25 + v10 + 5;
  *(&v30 + 1) = v25 + v10 + 4;
  *&STACK[0x3A0] = v30;
  v31 = *&STACK[0x320];
  v32 = vandq_s8(v29, *&STACK[0x320]);
  v33 = vandq_s8(v28, *&STACK[0x320]);
  v34 = vandq_s8(v27, *&STACK[0x320]);
  v35 = vandq_s8(v26, *&STACK[0x320]);
  v36 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v37 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL);
  v39 = *&STACK[0x380];
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v32, 0x38uLL), v32, 8uLL), *&STACK[0x390]);
  v41 = vaddq_s64(v38, *&STACK[0x390]);
  v42 = vaddq_s64(v37, *&STACK[0x390]);
  v43 = vaddq_s64(v36, *&STACK[0x390]);
  *&STACK[0x340] = vsubq_s64(vorrq_s8(vaddq_s64(v43, v43), *&STACK[0x380]), v43);
  v44 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v40, v40), v39), v40), v24);
  v45 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v41, v41), v39), v41), v24);
  v46 = veorq_s8(v45, a8);
  v47 = veorq_s8(v44, a8);
  v48 = veorq_s8(v44, v17);
  v49 = veorq_s8(v45, v17);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v49);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v48);
  v53 = *&STACK[0x2A0];
  v52 = *&STACK[0x2B0];
  v54 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v51, v51), v14), v51), v15), *&STACK[0x2B0]);
  v55 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v50, v50), v14), v50), v15), *&STACK[0x2B0]);
  v56 = vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL);
  v57 = veorq_s8(v55, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v58 = veorq_s8(v54, v56);
  v59 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v54, 0x38uLL), v54, 8uLL), v58);
  v60 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v55, 0x38uLL), v55, 8uLL), v57);
  v61 = *&STACK[0x370];
  v62 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v60, v60), *&STACK[0x2A0]), v60), *&STACK[0x370]), v16);
  v63 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v59, v59), *&STACK[0x2A0]), v59), *&STACK[0x370]), v16);
  v64 = veorq_s8(v63, vsraq_n_u64(vshlq_n_s64(v58, 3uLL), v58, 0x3DuLL));
  v65 = veorq_s8(v62, vsraq_n_u64(vshlq_n_s64(v57, 3uLL), v57, 0x3DuLL));
  v66 = vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL);
  v67 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v62, 0x38uLL), v62, 8uLL), v65);
  v68 = vaddq_s64(v66, v64);
  v69 = *&STACK[0x280];
  v70 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v67, *&STACK[0x280]), vorrq_s8(v67, v19)), v19), v18);
  v71 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v68, *&STACK[0x280]), vorrq_s8(v68, v19)), v19), v18);
  v72 = veorq_s8(v71, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v73 = veorq_s8(v70, vsraq_n_u64(vshlq_n_s64(v65, 3uLL), v65, 0x3DuLL));
  v74 = *&STACK[0x360];
  v75 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v72), *&STACK[0x360]);
  v76 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v70, 0x38uLL), v70, 8uLL), v73), *&STACK[0x360]);
  v77 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v73, 3uLL), v73, 0x3DuLL));
  v78 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v72, 3uLL), v72, 0x3DuLL));
  v79 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v80 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v78);
  v81 = vaddq_s64(v79, v77);
  v82 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v81, v81), v20), v81), v21), v22);
  v83 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v80, v80), v20), v80), v21), v22);
  v84 = veorq_s8(v83, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v85 = veorq_s8(v82, vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL));
  v86 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v85);
  v88 = veorq_s8(vaddq_s64(v86, v84), v23);
  v89 = veorq_s8(v87, v23);
  v90 = vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL);
  v91 = veorq_s8(v89, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v92 = veorq_s8(v88, v90);
  v93 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL);
  v95.i64[0] = v25 + v10 + 3;
  v95.i64[1] = v25 + v10 + 2;
  *&STACK[0x330] = v95;
  v96 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v42, v42), v39), v42), v24);
  v199.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v94, v92), *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), v13)));
  v199.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v93, v91), *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v13)));
  v97 = veorq_s8(v96, a8);
  v98 = veorq_s8(v96, v17);
  v99 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v99, v99), v14), v99), v15), v52);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101);
  v103 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v102, v102), v53), v102), v61), v16);
  v104 = veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL));
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v105, v69), vorrq_s8(v105, v19)), v19), v18);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v74);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v110, v110), v20), v110), v21), v22);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v23);
  v28.i64[0] = v25 + v10 + 1;
  v28.i64[1] = v25 + v10;
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL)));
  v115 = vandq_s8(v28, v31);
  v116 = vaddq_s64(*&STACK[0x340], v24);
  v199.val[1] = vshlq_u64(veorq_s8(v114, *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), v13)));
  v117 = veorq_s8(v116, a8);
  v118 = veorq_s8(v116, v17);
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v119, v119), v14), v119), v15), v52);
  v121 = v52;
  v122 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v123 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v122);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v123, v123), v53), v123), v61), v16);
  v125 = veorq_s8(v124, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL), v125);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v126, v69), vorrq_s8(v126, v19)), v19), v18);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128), v74);
  v130 = veorq_s8(v129, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL), v130);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v131, v131), v20), v131), v21), v22);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL));
  v134 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), v23);
  v135 = veorq_s8(v134, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v136 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v137 = vandq_s8(v95, v31);
  v138 = vaddq_s64(v136, v135);
  v139 = vandq_s8(*&STACK[0x3A0], v31);
  v199.val[0] = vshlq_u64(veorq_s8(v138, *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(v26, 3uLL), v13)));
  v140 = vandq_s8(*&STACK[0x3B0], v31);
  v141 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v142 = vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL);
  v143 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), *&STACK[0x390]);
  v145 = vaddq_s64(v143, *&STACK[0x390]);
  v146 = vaddq_s64(v142, *&STACK[0x390]);
  v147 = vaddq_s64(v141, *&STACK[0x390]);
  v148 = vsubq_s64(vorrq_s8(vaddq_s64(v147, v147), *&STACK[0x380]), v147);
  v149 = vsubq_s64(vorrq_s8(vaddq_s64(v146, v146), *&STACK[0x380]), v146);
  v150 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v144, v144), *&STACK[0x380]), v144), v24);
  v151 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v145, v145), *&STACK[0x380]), v145), v24);
  v147.i64[0] = vqtbl4q_s8(v199, *&STACK[0x350]).u64[0];
  v199.val[0] = veorq_s8(v151, a8);
  v199.val[1] = veorq_s8(v150, a8);
  v199.val[2] = veorq_s8(v150, v17);
  v199.val[3] = veorq_s8(v151, v17);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[3]);
  v199.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[2]);
  v199.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[1], v199.val[1]), v14), v199.val[1]), v15), v121);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[0], v199.val[0]), v14), v199.val[0]), v15), v121);
  v152 = vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL);
  v199.val[2] = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[3], 3uLL), v199.val[3], 0x3DuLL));
  v199.val[3] = veorq_s8(v199.val[1], v152);
  v153 = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[3]);
  v199.val[1] = vaddq_s64(v153, v199.val[2]);
  v199.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[1], v199.val[1]), v53), v199.val[1]), *&STACK[0x370]), v16);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[0], v199.val[0]), v53), v199.val[0]), *&STACK[0x370]), v16);
  v154 = vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL);
  v199.val[2] = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[3], 3uLL), v199.val[3], 0x3DuLL));
  v199.val[3] = veorq_s8(v199.val[1], v154);
  v155 = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[3]);
  v199.val[1] = vaddq_s64(v155, v199.val[2]);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v199.val[0], v69), vorrq_s8(v199.val[0], v19)), v19), v18);
  v199.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v199.val[1], v69), vorrq_s8(v199.val[1], v19)), v19), v18);
  v199.val[2] = veorq_s8(v199.val[1], vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL));
  v199.val[3] = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[3], 3uLL), v199.val[3], 0x3DuLL));
  v199.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[2]), *&STACK[0x360]);
  v199.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[3]), *&STACK[0x360]);
  v156 = vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL);
  v199.val[2] = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[3], 3uLL), v199.val[3], 0x3DuLL));
  v199.val[3] = veorq_s8(v199.val[1], v156);
  v157 = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[3]);
  v199.val[1] = vaddq_s64(v157, v199.val[2]);
  v199.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[1], v199.val[1]), v20), v199.val[1]), v21), v22);
  v199.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v199.val[0], v199.val[0]), v20), v199.val[0]), v21), v22);
  v158 = vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL);
  v199.val[2] = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[3], 3uLL), v199.val[3], 0x3DuLL));
  v199.val[3] = veorq_s8(v199.val[1], v158);
  v159 = vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL);
  v199.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), v199.val[3]);
  v199.val[1] = veorq_s8(vaddq_s64(v159, v199.val[2]), v23);
  v199.val[0] = veorq_s8(v199.val[0], v23);
  v160 = vsraq_n_u64(vshlq_n_s64(v199.val[2], 3uLL), v199.val[2], 0x3DuLL);
  v199.val[2] = veorq_s8(v199.val[0], vsraq_n_u64(vshlq_n_s64(v199.val[3], 3uLL), v199.val[3], 0x3DuLL));
  v161 = vaddq_s64(v149, v24);
  v199.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[1], 0x38uLL), v199.val[1], 8uLL), veorq_s8(v199.val[1], v160)), *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), v13)));
  v199.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v199.val[0], 0x38uLL), v199.val[0], 8uLL), v199.val[2]), *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x330], 3uLL), v13)));
  v162 = veorq_s8(v161, a8);
  v163 = veorq_s8(v161, v17);
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v164, v164), v14), v164), v15), v121);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), v53), v167), *&STACK[0x370]), v16);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v170, v69), vorrq_s8(v170, v19)), v19), v18);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), *&STACK[0x360]);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v175, v175), v20), v175), v21), v22);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177), v23);
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL)));
  v180 = vaddq_s64(v148, v24);
  v199.val[1] = vshlq_u64(veorq_s8(v179, *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3A0], 3uLL), v13)));
  v181 = veorq_s8(v180, a8);
  v182 = veorq_s8(v180, v17);
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v183, v183), v14), v183), v15), v121);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v186 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185);
  v187 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v186, v186), v53), v186), *&STACK[0x370]), v16);
  v188 = veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v189 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), v188);
  v190 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v189, v69), vorrq_s8(v189, v19)), v19), v18);
  v191 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL));
  v192 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL), v191), *&STACK[0x360]);
  v193 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v191, 3uLL), v191, 0x3DuLL));
  v194 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v193);
  v195 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v194, v194), v20), v194), v21), v22);
  v196 = veorq_s8(v195, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL));
  v197 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v195, 0x38uLL), v195, 8uLL), v196), v23);
  v199.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v196, 3uLL), v196, 0x3DuLL))), *&STACK[0x220]), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x3B0], 3uLL), v13)));
  v147.i64[1] = vqtbl4q_s8(v199, *&STACK[0x350]).u64[0];
  v199.val[0] = vrev64q_s8(v147);
  *v28.i64[1] = vextq_s8(v199.val[0], v199.val[0], 8uLL);
  return (*(v12 + 8 * (((v8 == 16) * a2) ^ a1)))();
}

uint64_t sub_100026ED0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W8>)
{
  v6 = *(a2 + ((*(v3 + (776 * v4 + a3) % 0x3C9u) ^ 0xB4u) * (v5 - 3808) + 83142) % 0x3A0);
  *(v3 + (776 * v4 + 204088) % 0x3C9u) = v6 ^ ((v6 ^ 0x7D) >> 2) ^ ((v6 ^ 0x7D) >> 1) ^ 0xD8;
  return (*(a1 + 8 * ((4149 * (v4 == 15)) ^ v5)))();
}

uint64_t sub_100026FCC()
{
  STACK[0x360] = &STACK[0xB80];
  STACK[0x348] = &STACK[0xFA0];
  v3 = *(v1 + 40) ^ STACK[0x2B8];
  return (*(v2 + 8 * ((1426 * ((((v3 ^ 0xB448B204) + 1270304252) ^ ((v3 ^ 0x6C768E3B) - 1819708987) ^ ((v3 ^ ((v0 ^ 0xEF) - 577312858)) + 577310051)) == -94948994)) ^ v0)))(3362771362, 1902370367, 1708388018, 1708388018, 1902370367, 1281797710);
}

uint64_t sub_1000270F8@<X0>(int a1@<W8>)
{
  v7 = (a1 - 4662) | 0xA02;
  v8 = STACK[0x6D0];
  v9 = 1358806181 * ((((v6 - 232) | 0x33F7C55F) - (v6 - 232) + ((v6 - 232) & 0xCC083AA0)) ^ 0xCD8A9DC);
  *(v6 - 224) = v9 + a1 + 142;
  *(v6 - 220) = (v4 ^ 0x7F68DBB7) - v9 + ((2 * v4) & 0xFED1B76E) - 301990818;
  *(v6 - 232) = v1;
  *(v6 - 216) = v2;
  *(v6 - 208) = v1;
  *(v6 - 192) = v8;
  *(v6 - 200) = ((v7 - 1113733505) ^ v3) + v9;
  v10 = (*(v5 + 8 * (a1 ^ 0x37DC)))(v6 - 232);
  return (*(v5 + 8 * ((7849 * (*(v6 - 196) == ((6 * (v7 ^ 0x995)) ^ 0xF805B5))) ^ v7)))(v10);
}

uint64_t sub_100027244@<X0>(uint64_t a1@<X0>, char a2@<W6>, int a3@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v3 + v7) ^ 0x3C;
  return (*(v6 + 8 * ((19 * (((v5 ^ a2) ^ (v7 == 0)) & 1)) ^ (a3 + v5 + 2652))))();
}

void sub_100027284()
{
  v0 = *(&off_100755B60 + ((-85 * (dword_10077DEE0 ^ 0xDF ^ dword_10077E220)) ^ byte_100683C50[byte_10069D200[(-85 * (dword_10077DEE0 ^ 0xDF ^ dword_10077E220))] ^ 0xD9]) - 83);
  v1 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + *v0) ^ 0xDF)) ^ byte_10068DEC0[byte_100683950[(-85 * ((dword_10077E220 + *v0) ^ 0xDF))] ^ 0x21]) + 72);
  v2 = &v4[*v0 + *v1];
  *v0 = (2054362027 * v2) ^ 0xB4207763EF64BDFLL;
  *v1 = 2054362027 * (v2 ^ 0xB4207763EF64BDFLL);
  v5[0] = 476323082 - 1710126949 * ((2 * (v5 & 0x76A1F610) - v5 + 157157869) ^ 0x3B45527D);
  LOBYTE(v1) = -85 * ((*v1 + *v0) ^ 0xDF);
  v3 = *(&off_100755B60 + ((-85 * (dword_10077DEE0 ^ 0xDF ^ dword_10077E220)) ^ byte_100694EA0[byte_10068DFC0[(-85 * (dword_10077DEE0 ^ 0xDF ^ dword_10077E220))] ^ 0x6D]) + 262) - 8;
  (*&v3[8 * (byte_100683A50[byte_10069D108[v1 - 8] ^ 0xDD] ^ v1) + 75144])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000274B8(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, uint64_t a43, int a44, int a45, int a46, unint64_t a47, uint64_t a48)
{
  LODWORD(a28) = 0;
  LODWORD(a33) = (v56 + 542432432) | 0xC0A000C;
  v58 = v49 ^ 0xCFF03F73 ^ (a7 & (v55 ^ 0xFF76ACCD) ^ v52 ^ (a33 - 2036097802)) & v53;
  v59 = *(&off_100755B60 + (v56 ^ 0x170Du));
  v60 = v59 + 8 * (*(a12 + (v58 >> 24)) ^ a2);
  v61 = a34 ^ 0x49D3D1C1 ^ (a39 ^ 0x94A3854F ^ ((a37 & (a38 ^ 0xB2E20469) | a36) ^ 0x78A11B0) & a40) & a35;
  v62 = *(a12 + (v61 >> 24));
  v63 = a41 ^ 0x1F4CD8B1 ^ ((v56 - 4846) ^ (a3 << 8) ^ 0x15FBAFA) & a42;
  v64 = v54 ^ 0x6B57F379 ^ v51 & (v50 ^ 0x3373F2EFu);
  v65 = *(a12 + (v54 ^ 0x79 ^ v51 & (v50 ^ 0xEFu)));
  v66 = *(a12 + BYTE1(v61));
  v67 = *(a12 + BYTE2(v61));
  v68 = *(a12 + (v63 >> 24));
  v69 = *(a12 + BYTE1(v58));
  v70 = *(v59 + 8 * (*(a12 + BYTE1(v63)) ^ a2)) >> 16;
  v71 = (*(v59 + 8 * (*(a12 + BYTE2(v63)) ^ a2)) ^ ((*(a12 + BYTE2(v63)) ^ 0x5CLL) - (*(a12 + BYTE2(v63)) ^ 0x2FFBF42515uLL))) >> 8;
  v72 = (*(v59 + 8 * (v62 ^ a2)) >> 24) ^ (*(v59 + 8 * (*(a12 + (a41 ^ 0xB1 ^ ((v56 + 18) ^ 0xFAu) & a42)) ^ a2)) >> 16) ^ *(v59 + 8 * (*(a12 + BYTE2(v58)) ^ a2) + 4) ^ ((*(v59 + 8 * (*(a12 + (v64 >> 24)) ^ a2)) ^ ((*(a12 + (v64 >> 24)) ^ 0x5CLL) - (*(a12 + (v64 >> 24)) ^ 0x2FFBF42515uLL))) >> 8) ^ 0xEF269417;
  v73 = *(a12 + (((*(v59 + 8 * (v62 ^ a2)) >> 24) ^ WORD1(*(v59 + 8 * (*(a12 + (a41 ^ 0xB1 ^ ((v56 + 18) ^ 0xFAu) & a42)) ^ a2))) ^ *(v59 + 8 * (*(a12 + BYTE2(v58)) ^ a2) + 4) ^ ((*(v59 + 8 * (*(a12 + (v64 >> 24)) ^ a2)) ^ ((*(a12 + (v64 >> 24)) ^ 0x5C) - (*(a12 + (v64 >> 24)) ^ 0xFBF42515))) >> 8) ^ 0x9417) >> 8));
  v74 = *(v60 + 4) ^ (*(v59 + 8 * (*(a12 + (a34 ^ 0xC1 ^ (a39 ^ 0x4F ^ ((a37 & (a38 ^ 0x69) | a36) ^ 0xB0u) & a40) & a35)) ^ a2)) >> 24) ^ ((*(v59 + 8 * (v65 ^ a2)) ^ ((v65 ^ 0x5C) - (v65 ^ 0x2FFBF42515uLL))) >> 8) ^ v70 ^ 0x2B2DE1C5;
  v75 = *(v59 + 8 * (*(a12 + BYTE1(v64)) ^ a2) + 4) ^ (*(v59 + 8 * (*(a12 + v58) ^ a2)) >> 24) ^ v71 ^ (*(v59 + 8 * (v66 ^ a2)) >> 16) ^ 0x27A8B167;
  v76 = (*(v59 + 8 * (v68 ^ a2)) >> 24) ^ (*(v59 + 8 * (*(a12 + BYTE2(v64)) ^ a2)) >> 16) ^ *(v59 + 8 * (v67 ^ a2) + 4) ^ ((*(v59 + 8 * (v69 ^ a2)) ^ ((v69 ^ 0x5C) - (v69 ^ 0x2FFBF42515uLL))) >> 8) ^ 0x25AE54BC;
  v77 = *(a12 + (*(v60 + 4) ^ BYTE3(*(v59 + 8 * (*(a12 + (a34 ^ 0xC1 ^ (a39 ^ 0x4F ^ ((a37 & (a38 ^ 0x69) | a36) ^ 0xB0u) & a40) & a35)) ^ a2))) ^ (((*(v59 + 8 * (v65 ^ a2)) ^ ((v65 ^ 0x5C) - (v65 ^ 0x2515))) >> 8) ^ v70) ^ 0xC5));
  v78 = *(a12 + BYTE2(v72));
  v79 = *(a12 + (v72 >> 24));
  v80 = *(a12 + (v75 >> 24));
  v81 = *(a12 + BYTE1(v74));
  v82 = *(a12 + v76);
  v83 = *(a12 + v75);
  v84 = *(a12 + v72);
  v85 = *(a12 + BYTE1(v76));
  v86 = *(a12 + BYTE1(v75));
  v87 = v59 + 8 * (*(a12 + BYTE2(v75)) ^ a2);
  v88 = (*(v59 + 8 * (*(a12 + BYTE2(v76)) ^ a2)) ^ ((((*(a12 + BYTE2(v76)) ^ 0x5CLL) - (*(a12 + BYTE2(v76)) ^ 0x8643452FFBF42515)) ^ 1) + 1)) >> 8;
  v89 = *(v59 + 8 * (v77 ^ a2));
  v90 = v59 + 8 * (v80 ^ a2);
  v91 = *(v59 + 8 * (v78 ^ a2)) >> 16;
  v92 = *(v59 + 8 * (v83 ^ a2)) >> 24;
  v93 = *(v59 + 8 * (v86 ^ a2)) >> 16;
  v94 = *(v90 + 4) ^ (v89 >> 24) ^ ((*(v59 + 8 * (*(a12 + (v76 >> 24)) ^ a2)) ^ ((*(a12 + (v76 >> 24)) ^ 0x5CLL) - (*(a12 + (v76 >> 24)) ^ 0x2FFBF42515uLL))) >> 8) ^ v91 ^ 0xB7520EEC;
  v95 = (*(v59 + 8 * (*(a12 + (v74 >> 24)) ^ a2)) >> 24) ^ (*(v59 + 8 * (v73 ^ a2)) >> 16) ^ *(v87 + 4) ^ v88 ^ 0xA1E6025E;
  v96 = *(a12 + (((*(v59 + 8 * (*(a12 + (v74 >> 24)) ^ a2)) >> 24) ^ WORD1(*(v59 + 8 * (v73 ^ a2))) ^ *(v87 + 4) ^ v88 ^ 0x25E) >> 8));
  v97 = *(v59 + 8 * (v84 ^ a2) + 4) ^ (*(v59 + 8 * (v85 ^ a2)) >> 24) ^ ((*(v59 + 8 * (*(a12 + BYTE2(v74)) ^ a2)) ^ ((*(a12 + BYTE2(v74)) ^ 0x5CLL) - (*(a12 + BYTE2(v74)) ^ 0x2FFBF42515uLL))) >> 8) ^ v93 ^ 0x9F1771EA;
  v98 = *(a12 + BYTE1(v97));
  v99 = *(v59 + 8 * (v82 ^ a2) + 4) ^ v92 ^ ((*(v59 + 8 * (v79 ^ a2)) ^ ((v79 ^ 0x5C) - (v79 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v81 ^ a2)) >> 16) ^ 0x7B658EE4;
  v100 = *(a12 + (v97 >> 24));
  v101 = *(a12 + BYTE2(v95));
  v102 = *(a12 + BYTE2(v97));
  v103 = *(a12 + v99);
  v104 = *(a12 + (v95 >> 24));
  v105 = *(a12 + v97);
  v106 = *(a12 + v95);
  v107 = *(a12 + BYTE1(v99));
  v108 = (*(v59 + 8 * (v104 ^ a2)) ^ ((v104 ^ 0x5C) - (v104 ^ 0x2FFBF42515uLL))) >> 8;
  v109 = *(v59 + 8 * (*(a12 + BYTE1(v94)) ^ a2)) >> 16;
  v110 = *(v59 + 8 * (v105 ^ a2)) >> 24;
  v111 = (v107 ^ 0x5C) - (v107 ^ 0x8643452FFBF42515);
  LODWORD(v104) = ((*(v59 + 8 * (v98 ^ a2)) ^ ((v98 ^ 0x5C) - (v98 ^ 0x2FFBF42515uLL))) >> 8) ^ 0x3A2D1430;
  v112 = (*(v59 + 8 * (v107 ^ a2)) ^ v111) >> 16;
  v113 = (*(v59 + 8 * (*(a12 + (v94 >> 24)) ^ a2)) >> 24) ^ (*(v59 + 8 * (v96 ^ a2)) >> 16) ^ *(v59 + 8 * (*(a12 + BYTE2(v99)) ^ a2) + 4) ^ v104;
  v114 = (*(v59 + 8 * (*(a12 + (v99 >> 24)) ^ a2)) >> 24) ^ (*(v59 + 8 * (*(a12 + v94) ^ a2)) >> 16) ^ *(v59 + 8 * (v102 ^ a2) + 4) ^ ((*(v59 + 8 * (v101 ^ a2)) ^ ((v101 ^ 0x5C) - (v101 ^ 0x2FFBF42515uLL))) >> 8) ^ 0x8E355DF4;
  v115 = *(v59 + 8 * (v106 ^ a2) + 4) ^ v110 ^ ((*(v59 + 8 * (*(a12 + BYTE2(v94)) ^ a2)) ^ ((*(a12 + BYTE2(v94)) ^ 0x5CLL) - (*(a12 + BYTE2(v94)) ^ 0x2FFBF42515uLL))) >> 8) ^ v112 ^ 0x41C73323;
  v116 = *(v48 + BYTE2(v115));
  v117 = *(v59 + 8 * (v100 ^ a2) + 4) ^ (*(v59 + 8 * (v103 ^ a2)) >> 24) ^ v108 ^ v109 ^ 0xF0D6095D;
  v118 = *(v48 + BYTE2(v117));
  v119 = *(v48 + BYTE1(v115));
  v120 = *(v48 + v117);
  v121 = *(v48 + (v117 >> 24));
  v122 = *(v48 + BYTE2(v113));
  v123 = *(v48 + (v115 >> 24));
  v124 = *(v48 + (v114 >> (v111 & 0x10) >> (v111 & 0x10 ^ 0x10)));
  v125 = *(v48 + (v113 >> 24));
  v126 = *(v48 + v115);
  v127 = *(v48 + v113);
  v128 = v59 + 8 * (*(v48 + BYTE1(v113)) ^ a2);
  v129 = *(v48 + BYTE1(v117));
  v130 = *(v48 + (v114 >> 24));
  v131 = __ROR8__(__ROR8__(*(v59 + 8 * (v123 ^ a2)) ^ 0x47673A74000000, 34) ^ 0x4E4000000019A6BCLL, 30);
  v132 = ((*(v59 + 8 * (*(v48 + v114) ^ a2)) ^ ((*(v48 + v114) ^ 0x5CLL) - (*(v48 + v114) ^ 0x2FFBF42515uLL))) >> 8) ^ *(v128 + 4) ^ (*(v59 + 8 * (v118 ^ a2)) >> 16) ^ (*(v59 + 8 * (v119 ^ a2)) >> 24) ^ 0xE094DB40;
  v133 = (*(v59 + 8 * (v121 ^ a2)) >> 24) ^ (*(v59 + 8 * (*(v48 + BYTE1(v114)) ^ a2)) >> 16) ^ *(v59 + 8 * (v116 ^ a2) + 4) ^ ((*(v59 + 8 * (v122 ^ a2)) ^ ((v122 ^ 0x5C) - (v122 ^ 0x2FFBF42515uLL))) >> 8) ^ 0x3A3F80C5;
  v134 = *(v59 + 8 * (v127 ^ a2) + 4) ^ (*(v59 + 8 * (v126 ^ a2)) >> 24) ^ ((*(v59 + 8 * (v130 ^ a2)) ^ ((v130 ^ 0x5C) - (v130 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v129 ^ a2)) >> 16) ^ 0x30097C3A;
  v135 = *(v48 + (BYTE3(*(v59 + 8 * (v121 ^ a2))) ^ BYTE2(*(v59 + 8 * (*(v48 + BYTE1(v114)) ^ a2))) ^ *(v59 + 8 * (v116 ^ a2) + 4) ^ ((*(v59 + 8 * (v122 ^ a2)) ^ ((v122 ^ 0x5C) - (v122 ^ 0x2515))) >> 8) ^ 0xC5));
  v136 = *(v59 + 8 * (v125 ^ a2) + 4) ^ (*(v59 + 8 * (v120 ^ a2)) >> 16) ^ ((*(v59 + 8 * (v124 ^ a2)) ^ ((v124 ^ 0x5C) - (v124 ^ 0x2FFBF42515uLL))) >> 8) ^ 0xCF2E7EAF ^ (v131 >> 24);
  v137 = *(v48 + (v136 >> 24));
  v138 = *(v48 + ((*(v59 + 8 * (v125 ^ a2) + 4) ^ WORD1(*(v59 + 8 * (v120 ^ a2))) ^ ((*(v59 + 8 * (v124 ^ a2)) ^ ((v124 ^ 0x5C) - (v124 ^ 0x2515))) >> 8)) ^ 0xAFu ^ BYTE3(v131)));
  v139 = *(v48 + BYTE1(v134));
  v140 = *(v48 + BYTE1(v136));
  v141 = *(v48 + BYTE2(v134));
  v142 = *(v48 + BYTE1(v133));
  v143 = *(v48 + (v134 >> 24));
  v144 = *(v48 + BYTE1(v132));
  v145 = *(v48 + v134);
  LOBYTE(v116) = *(v48 + BYTE2(v132));
  v146 = *(v48 + BYTE2(v136));
  LODWORD(v114) = *(v59 + 8 * (v135 ^ a2) + 4) ^ (*(v59 + 8 * (*(v48 + (v132 >> 24)) ^ a2)) >> 24) ^ (*(v59 + 8 * (v139 ^ a2)) >> 16);
  LODWORD(v136) = ((*(v59 + 8 * (v142 ^ a2)) ^ ((v142 ^ 0x5C) - (v142 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v141 ^ a2)) >> 24) ^ *(v59 + 8 * (*(v48 + v132) ^ a2) + 4) ^ (*(v59 + 8 * (v138 ^ a2)) >> 16);
  v147 = v114 ^ 0x6700C266 ^ ((*(v59 + 8 * (v137 ^ a2)) + (v137 ^ 0x5C) - (v137 ^ 0x8643452FFBF42515) - 2 * (*(v59 + 8 * (v137 ^ a2)) & ((v137 ^ 0x5C) - (v137 ^ 0x8643452FFBF42515)))) >> 8);
  v148 = *(v48 + (v114 ^ 0x66u ^ ((*(v59 + 8 * (v137 ^ a2)) + (v137 ^ 0x5C) - (v137 ^ 0x2515) - 2 * (*(v59 + 8 * (v137 ^ a2)) & ((v137 ^ 0x5C) - (v137 ^ 0x2515)))) >> 8)));
  v149 = v136 ^ 0xEF5F3BBB;
  v150 = ((*(v59 + 8 * (v143 ^ a2)) ^ ((v143 ^ 0x5C) - (v143 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v144 ^ a2)) >> 16) ^ (*(v59 + 8 * (*(v48 + BYTE2(v133)) ^ a2)) >> 24) ^ *(v59 + 8 * (v140 ^ a2) + 4) ^ 0x2DE22623;
  v151 = *(v48 + ((((*(v59 + 8 * (v143 ^ a2)) ^ ((v143 ^ 0x5C) - (v143 ^ 0xFBF42515))) >> 8) ^ WORD1(*(v59 + 8 * (v144 ^ a2))) ^ (*(v59 + 8 * (*(v48 + BYTE2(v133)) ^ a2)) >> 24) ^ *(v59 + 8 * (v140 ^ a2) + 4) ^ 0x2623) >> 8));
  v152 = (*(v59 + 8 * ((v116 & 0x80 ^ 0xF790DFAA2840C0FFLL) & (v116 & 0x7F ^ 0x1790DFAA2A40C8C3) ^ 0xF790DFAA2840C0E9)) >> 24) ^ (*(v59 + 8 * (v145 ^ a2)) >> 16) ^ *(v59 + 8 * (*(v48 + (v133 >> 24)) ^ a2) + 4) ^ ((*(v59 + 8 * (v146 ^ a2)) ^ ((v146 ^ 0x5C) - (v146 ^ 0x2FFBF42515uLL))) >> 8) ^ 0xC5A75DBC;
  v153 = *(v48 + BYTE2(v152));
  v154 = *(v48 + BYTE1(v147));
  v155 = *(v48 + v152);
  v156 = *(v48 + (v150 >> 24));
  v157 = (*(v59 + 8 * (*(v48 + BYTE2(v150)) ^ a2)) >> 24) ^ (*(v59 + 8 * (*(v48 + BYTE2(v149)) ^ a2)) >> 16) ^ *(v59 + 8 * (*(v48 + (v152 >> 24)) ^ a2) + 4) ^ ((*(v59 + 8 * (v154 ^ a2)) ^ ((v154 ^ 0x5C) - (v154 ^ 0x2FFBF42515uLL))) >> 8);
  v158 = (((BYTE3(*(v59 + 8 * (v156 ^ a2))) << 27) ^ 0x8226754A) & ((*(v59 + 8 * (v156 ^ a2)) >> 29) & 0x7FFFFFFLL ^ 0xF984C1E8) | (*(v59 + 8 * (v156 ^ a2)) >> 29) & 0x5D98AB5) ^ (((*(v59 + 8 * (v155 ^ a2)) >> 5) & 0xF8000000 ^ 0x9F851CB9) & ((*(v59 + 8 * (v155 ^ a2)) >> 37) ^ 0xFA93E6CDLL) | (*(v59 + 8 * (v155 ^ a2)) >> 37) & 0x7AE346);
  LODWORD(v158) = ((32 * v158) ^ 0xBB1DC040 | (v158 >> 27) ^ 0x1C) ^ (*(v59 + 8 * (*(v48 + (v149 >> 24)) ^ a2)) >> 16) ^ ((*(v59 + 8 * (*(v48 + BYTE2(v147)) ^ a2)) ^ ((*(v48 + BYTE2(v147)) ^ 0x5CLL) - (*(v48 + BYTE2(v147)) ^ 0x2FFBF42515uLL))) >> 8);
  LODWORD(v140) = (*(v59 + 8 * (*(v48 + v149) ^ a2)) >> 24) ^ *(v59 + 8 * (*(v48 + ((((*(v59 + 8 * (v143 ^ a2)) ^ ((v143 ^ 0x5C) - (v143 ^ 0x2515))) >> 8) ^ WORD1(*(v59 + 8 * (v144 ^ a2))) ^ BYTE3(*(v59 + 8 * (*(v48 + BYTE2(v133)) ^ a2))) ^ *(v59 + 8 * (v140 ^ a2) + 4)) ^ 0x23u)) ^ a2) + 4);
  v159 = *(v59 + 8 * (*(v48 + BYTE1(v149)) ^ a2) + 4) ^ ((*(v59 + 8 * (v151 ^ a2)) ^ ((v151 ^ 0x5C) - (v151 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v148 ^ a2)) >> 24) ^ (*(v59 + 8 * (v153 ^ a2)) >> 16) ^ 0xC58ED1BD;
  v160 = *(v48 + (*(v59 + 8 * (*(v48 + BYTE1(v149)) ^ a2) + 4) ^ ((*(v59 + 8 * (v151 ^ a2)) ^ ((v151 ^ 0x5C) - (v151 ^ 0x2515))) >> 8) ^ BYTE3(*(v59 + 8 * (v148 ^ a2))) ^ BYTE2(*(v59 + 8 * (v153 ^ a2))) ^ 0xBD));
  v161 = (-(v158 ^ 0x9A725621) ^ 0x10614F8D ^ (1223721385 - (v158 ^ 0xD282D788)) ^ ((v158 ^ 0x9A725621) + 274812813 - 2 * ((v158 ^ 0x9A725621) & 0x10614F9D ^ v158 & 0x10))) + 1223721385;
  v162 = ((*(v59 + 8 * (*(v48 + BYTE1(v152)) ^ a2)) ^ ((*(v48 + BYTE1(v152)) ^ 0x5CLL) - (*(v48 + BYTE1(v152)) ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (*(v48 + (v147 >> 24)) ^ a2)) >> 16) ^ v140 ^ 0xFBAC403D;
  v163 = *(v48 + ((v157 ^ 0x1A6B) >> 8));
  v164 = *(v48 + ((-(v158 ^ 0x21) ^ 0x8D ^ (-87 - (v158 ^ 0x88)) ^ ((v158 ^ 0x21) - 115 - 2 * ((v158 ^ 0x21) & 0x9D ^ v158 & 0x10))) - 87));
  v165 = *(v48 + BYTE2(v161));
  v166 = *(v48 + (v161 >> 24));
  v167 = *(v48 + BYTE1(v159));
  v168 = *(v48 + BYTE2(v159));
  v169 = *(v48 + BYTE1(v162));
  v170 = *(v48 + v162);
  v171 = *(v48 + ((v157 ^ 0x69FD1A6B) >> 16));
  v172 = *(v48 + BYTE1(v161));
  v173 = *(v59 + 8 * (v160 ^ a2));
  v174 = *(v48 + (BYTE3(v157) ^ 0x69));
  v175 = *(v59 + 8 * (*(v48 + (v157 ^ 0x6Bu)) ^ a2)) >> 24;
  LODWORD(v157) = *(v59 + 8 * (v165 ^ a2) + 4);
  v176 = *(v59 + 8 * (v163 ^ a2));
  v177 = v163 ^ 0x2FFBF42515;
  v178 = v163 ^ 0x5C;
  LODWORD(v163) = v175 ^ (v173 >> 16) ^ ((*(v59 + 8 * (*(v48 + (v162 >> 24)) ^ a2)) ^ ((*(v48 + (v162 >> 24)) ^ 0x5CLL) - (*(v48 + (v162 >> 24)) ^ 0x2FFBF42515uLL))) >> 8);
  LODWORD(v159) = *(v59 + 8 * (*(v48 + (v159 >> 24)) ^ a2) + 4) ^ (*(v59 + 8 * (*(v48 + BYTE2(v162)) ^ a2)) >> 24) ^ ((*(v59 + 8 * (v174 ^ a2)) ^ ((v174 ^ 0x5C) - (v174 ^ 0x2FFBF42515uLL))) >> 8);
  v179 = *(v59 + 8 * (v172 ^ a2)) ^ ((v172 ^ 0x5C) - (v172 ^ 0x8643452FFBF42515));
  v180 = v163 ^ 0x7E514157 ^ v157;
  v181 = ((v176 ^ (v178 - v177)) >> 8) ^ (*(v59 + 8 * (v170 ^ a2)) >> 24) ^ *(v59 + 8 * (v167 ^ a2) + 4) ^ 0xECFA85CC ^ (*(v59 + 8 * (v166 ^ a2)) >> 16);
  v182 = *(v59 + 8 * (v169 ^ a2) + 4) ^ ((*(v59 + 8 * (v168 ^ a2)) ^ ((v168 ^ 0x5C) - (v168 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v171 ^ a2)) >> 16) ^ 0xC6D4B027 ^ (*(v59 + 8 * (v164 ^ a2)) >> 24);
  v183 = v159 ^ 0xD72CBAA1 ^ (v179 >> 16);
  v184 = *(v48 + (v182 >> (v179 & 0x10) >> (v179 & 0x10 ^ 0x10)));
  v185 = *(v48 + (v182 >> 24));
  v186 = *(v48 + BYTE1(v183));
  v187 = *(v48 + BYTE2(v181));
  v188 = *(v48 + BYTE2(v183));
  v189 = *(v48 + BYTE2(v180));
  v190 = *(v48 + (v183 >> 24));
  v191 = *(v48 + v182);
  LODWORD(v179) = ((*(v59 + 8 * (*(v48 + v180) ^ a2)) ^ ((*(v48 + v180) ^ 0x5CLL) - (*(v48 + v180) ^ 0x2FFBF42515uLL))) >> 8) ^ *(v59 + 8 * (*(v48 + v183) ^ a2) + 4);
  v192 = (*(v59 + 8 * (v185 ^ a2)) >> 24) ^ (*(v59 + 8 * (v187 ^ a2)) >> 16) ^ *(v59 + 8 * (v188 ^ a2) + 4) ^ ((*(v59 + 8 * (v189 ^ a2)) ^ ((v189 ^ 0x5C) - (v189 ^ 0x2FFBF42515uLL))) >> 8) ^ 0xFF51F086;
  v193 = *(v48 + (BYTE3(*(v59 + 8 * (v185 ^ a2))) ^ BYTE2(*(v59 + 8 * (v187 ^ a2))) ^ *(v59 + 8 * (v188 ^ a2) + 4) ^ ((*(v59 + 8 * (v189 ^ a2)) ^ ((v189 ^ 0x5C) - (v189 ^ 0x2515))) >> 8) ^ 0x86));
  v194 = ((*(v59 + 8 * (v191 ^ a2)) ^ ((v191 ^ 0x5C) - (v191 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v190 ^ a2)) >> 16) ^ (*(v59 + 8 * (*(v48 + (v180 >> 24)) ^ a2)) >> 24) ^ *(v59 + 8 * (*(v48 + (v181 >> 24)) ^ a2) + 4) ^ 0x3C39B03C;
  v195 = *(v59 + 8 * (*(v48 + BYTE1(v181)) ^ a2) + 4) ^ (*(v59 + 8 * (*(v48 + BYTE1(v180)) ^ a2)) >> 24) ^ (*(v59 + 8 * (v186 ^ a2)) >> 16) ^ 0x86A5F4E2 ^ ((*(v59 + 8 * (v184 ^ a2)) ^ ((v184 ^ 0x5C) - (v184 ^ 0x2FFBF42515uLL))) >> 8);
  v196 = v179 ^ (*(v59 + 8 * (*(v48 + v181) ^ a2)) >> 16) ^ (*(v59 + 8 * (*(v48 + BYTE1(v182)) ^ a2)) >> 24) ^ 0x546DBE4B;
  v197 = *(v48 + (((*(v59 + 8 * (v185 ^ a2)) >> 24) ^ WORD1(*(v59 + 8 * (v187 ^ a2))) ^ *(v59 + 8 * (v188 ^ a2) + 4) ^ ((*(v59 + 8 * (v189 ^ a2)) ^ ((v189 ^ 0x5C) - (v189 ^ 0xFBF42515))) >> 8) ^ 0xF086) >> 8));
  v198 = *(v48 + (v179 ^ WORD1(*(v59 + 8 * (*(v48 + v181) ^ a2))) ^ BYTE3(*(v59 + 8 * (*(v48 + BYTE1(v182)) ^ a2))) ^ 0x4B));
  v199 = *(v48 + BYTE2(v196));
  v200 = *(v48 + BYTE2(v195));
  v201 = (*(v59 + 8 * (v193 ^ a2)) >> 24) ^ *(v59 + 8 * (*(v48 + v194) ^ a2) + 4) ^ (*(v59 + 8 * (*(v48 + v195) ^ a2)) >> 16) ^ ((*(v59 + 8 * (v198 ^ a2)) ^ ((v198 ^ 0x5C) - (v198 ^ 0x2FFBF42515uLL))) >> 8) ^ 0x89436B47;
  v202 = (*(v59 + 8 * (*(v48 + BYTE1(v194)) ^ a2)) >> 24) ^ (*(v59 + 8 * (v197 ^ a2)) >> 16) ^ *(v59 + 8 * (*(v48 + ((v179 ^ WORD1(*(v59 + 8 * (*(v48 + v181) ^ a2))) ^ (*(v59 + 8 * (*(v48 + BYTE1(v182)) ^ a2)) >> 24) ^ 0xBE4B) >> 8)) ^ a2) + 4) ^ ((*(v59 + 8 * (*(v48 + BYTE1(v195)) ^ a2)) ^ ((*(v48 + BYTE1(v195)) ^ 0x5CLL) - (*(v48 + BYTE1(v195)) ^ 0x2FFBF42515uLL))) >> 8) ^ 0x786A6060;
  v203 = (*(v59 + 8 * (*(v48 + (v195 >> 24)) ^ a2)) >> 24) ^ (*(v59 + 8 * (*(v48 + (v196 >> 24)) ^ a2)) >> 16) ^ *(v59 + 8 * (*(v48 + (v192 >> 24)) ^ a2) + 4) ^ ((*(v59 + 8 * (*(v48 + (v194 >> 24)) ^ a2)) ^ ((*(v48 + (v194 >> 24)) ^ 0x5CLL) - (*(v48 + (v194 >> 24)) ^ 0x2FFBF42515uLL))) >> 8) ^ 0x6CCC183A;
  v204 = *(v59 + 8 * (v199 ^ a2) + 4) ^ (*(v59 + 8 * (*(v48 + BYTE2(v194)) ^ a2)) >> 24) ^ (*(v59 + 8 * (*(v48 + BYTE2(v192)) ^ a2)) >> 16) ^ 0x939C7CA6 ^ (((-*(v59 + 8 * (v200 ^ a2)) ^ ((v200 ^ 0x5C) - (v200 ^ 0x8643452FFBF42515) - (*(v59 + 8 * (v200 ^ a2)) ^ ((v200 ^ 0x5C) - (v200 ^ 0x8643452FFBF42515)))) ^ 0x442BB06BDALL ^ (*(v59 + 8 * (v200 ^ a2)) - ((2 * *(v59 + 8 * (v200 ^ a2))) & 0x117F9E885760D7B4) - 0x774030BBD44F9426)) + (v200 ^ 0x5C) - (v200 ^ 0x8643452FFBF42515)) >> 8);
  LODWORD(v198) = *(v48 + v202);
  v205 = *(v48 + (v203 >> 24));
  v206 = *(v48 + BYTE2(v203));
  v207 = *(v48 + (v204 >> 24));
  v208 = *(v48 + v204);
  v209 = *(v48 + BYTE1(v203));
  v210 = *(v48 + (v201 >> 24));
  v211 = *(v48 + v203);
  v212 = *(v48 + BYTE1(v204));
  LODWORD(v206) = ((*(v59 + 8 * (*(v48 + BYTE1(v201)) ^ a2)) ^ ((*(v48 + BYTE1(v201)) ^ 0x5CLL) - (*(v48 + BYTE1(v201)) ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (*(v48 + BYTE2(v204)) ^ a2)) >> 24) ^ *(v59 + 8 * (v206 ^ a2) + 4);
  LODWORD(v194) = ((*(v59 + 8 * (*(v48 + BYTE1(v202)) ^ a2)) ^ ((*(v48 + BYTE1(v202)) ^ 0x5CLL) - (*(v48 + BYTE1(v202)) ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v205 ^ a2)) >> 24) ^ *(v59 + 8 * (*(v48 + BYTE2(v201)) ^ a2) + 4);
  LODWORD(v209) = ((*(v59 + 8 * (*(v48 + v201) ^ a2)) ^ ((*(v48 + v201) ^ 0x5CLL) - (*(v48 + v201) ^ 0x2FFBF42515uLL))) >> 8) ^ *(v59 + 8 * (v209 ^ a2) + 4) ^ (*(v59 + 8 * (*(v48 + (v202 >> 24)) ^ a2)) >> 16);
  v213 = v194 ^ 0x3C4FA6E ^ (*(v59 + 8 * (v207 ^ a2)) >> 16);
  v214 = v206 ^ 0x24F8B05 ^ (*(v59 + 8 * (v198 & 0xE6 ^ 0xF962B3F2 ^ ((v198 & 0x19 ^ 0x18) + ((2 * v198) | 0xFFFFFFDF) - 110971935 - 2 * (((v198 & 0x19 ^ 0x18) + ((2 * v198) | 0xFFFFFFDF) + 17) & 0x7962B3D8 ^ (v198 & 0x19 ^ 0x18) & 8)))) >> 16);
  v215 = ((*(v59 + 8 * (v211 ^ a2)) ^ ((v211 ^ 0x5C) - (v211 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v210 ^ a2)) >> 16) ^ (*(v59 + 8 * (*(v48 + BYTE2(v202)) ^ a2)) >> 24) ^ 0x913D5F55 ^ *(v59 + 8 * (v208 ^ a2) + 4);
  v216 = *(v48 + ((v194 ^ 0xFA6E ^ WORD1(*(v59 + 8 * (v207 ^ a2)))) >> 8));
  v217 = v209 ^ 0x52E56307 ^ (*(v59 + 8 * (v212 ^ a2)) >> 24);
  v218 = *(v48 + v217);
  v219 = *(v48 + ((((*(v59 + 8 * (v211 ^ a2)) ^ ((v211 ^ 0x5C) - (v211 ^ 0xFBF42515))) >> 8) ^ WORD1(*(v59 + 8 * (v210 ^ a2))) ^ (*(v59 + 8 * (*(v48 + BYTE2(v202)) ^ a2)) >> 24) ^ 0x5F55 ^ *(v59 + 8 * (v208 ^ a2) + 4)) >> 8));
  v220 = *(v48 + BYTE2(v213));
  v221 = *(v48 + BYTE1(v217));
  v222 = *(v48 + (v214 >> 24));
  v223 = *(v48 + (v215 >> 24));
  v224 = *(v48 + BYTE2(v215));
  v225 = *(v48 + BYTE2(v217));
  v226 = *(v48 + v214);
  v227 = *(v48 + (v213 >> 24));
  v228 = *(v48 + v213);
  v229 = *(v48 + BYTE1(v214));
  v230 = *(v48 + (v217 >> 24));
  v231 = *(v48 + v215);
  v232 = (*(v59 + 8 * (v216 ^ a2)) >> 24) ^ *(v59 + 8 * (v219 ^ a2) + 4) ^ ((*(v59 + 8 * (v218 ^ a2)) ^ ((v218 ^ 0x5C) - (v218 ^ 0x2FFBF42515uLL))) >> 8) ^ 0x7C44721B ^ (*(v59 + 8 * (*(v48 + BYTE2(v214)) ^ a2)) >> 16);
  LODWORD(v228) = ((*(v59 + 8 * (v230 ^ a2)) ^ ((v230 ^ 0x5C) - (v230 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v228 ^ a2)) >> 24) ^ *(v59 + 8 * (v231 ^ a2) + 4);
  v233 = (*(v59 + 8 * (v224 ^ a2)) >> 24) ^ (*(v59 + 8 * (v220 ^ a2)) >> 16) ^ *(v59 + 8 * (v221 ^ a2) + 4) ^ 0x91F3625F ^ ((*(v59 + 8 * (v222 ^ a2)) ^ ((v222 ^ 0x5C) - (v222 ^ 0x2FFBF42515uLL))) >> 8);
  v234 = *(v48 + (((*(v59 + 8 * (v216 ^ a2)) >> 24) ^ *(v59 + 8 * (v219 ^ a2) + 4) ^ ((*(v59 + 8 * (v218 ^ a2)) ^ ((v218 ^ 0x5C) - (v218 ^ 0xFBF42515))) >> 8) ^ 0x721B ^ WORD1(*(v59 + 8 * (*(v48 + BYTE2(v214)) ^ a2)))) >> 8));
  LODWORD(v227) = *(v59 + 8 * (v225 ^ a2) + 4) ^ (*(v59 + 8 * (v223 ^ a2)) >> 24) ^ (*(v59 + 8 * (v227 ^ a2)) >> 16) ^ 0xC7AF54F7;
  v235 = *(v48 + (BYTE3(*(v59 + 8 * (v224 ^ a2))) ^ BYTE2(*(v59 + 8 * (v220 ^ a2))) ^ *(v59 + 8 * (v221 ^ a2) + 4) ^ 0x5F ^ ((*(v59 + 8 * (v222 ^ a2)) ^ ((v222 ^ 0x5C) - (v222 ^ 0x2515))) >> 8)));
  v236 = v227 ^ ((*(v59 + 8 * (v226 ^ a2)) ^ ((v226 ^ 0x5C) - (v226 ^ 0x2FFBF42515uLL))) >> 8);
  v237 = v228 ^ 0x4B26EEE6 ^ (*(v59 + 8 * (v229 ^ a2)) >> 16);
  v238 = *(v48 + (v236 >> 24));
  v239 = *(v48 + BYTE1(v233));
  v240 = *(v48 + (v228 ^ 0xE6u ^ BYTE2(*(v59 + 8 * (v229 ^ a2)))));
  v241 = *(v48 + ((v228 ^ 0xEEE6 ^ WORD1(*(v59 + 8 * (v229 ^ a2)))) >> 8));
  v242 = *(v48 + (v233 >> 24));
  v243 = *(v48 + BYTE2(v233));
  v244 = *(v48 + BYTE1(v236));
  LODWORD(v235) = *(v59 + 8 * (v235 ^ a2) + 4) ^ (*(v59 + 8 * (v234 ^ a2)) >> 24) ^ ((*(v59 + 8 * (*(v48 + BYTE2(v236)) ^ a2)) ^ ((*(v48 + BYTE2(v236)) ^ 0x5CLL) - (*(v48 + BYTE2(v236)) ^ 0x2FFBF42515uLL))) >> 8);
  LODWORD(v229) = *(v59 + 8 * (v241 ^ a2) + 4) ^ (*(v59 + 8 * (*(v48 + v236) ^ a2)) >> 24) ^ ((*(v59 + 8 * (*(v48 + (v232 >> 24)) ^ a2)) ^ ((*(v48 + (v232 >> 24)) ^ 0x5CLL) - (*(v48 + (v232 >> 24)) ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v243 ^ a2)) >> 16);
  v245 = *(v59 + 8 * (v242 ^ a2)) >> 16;
  v246 = v235 ^ (*(v59 + 8 * (*(v48 + (v237 >> 24)) ^ a2)) >> 16) ^ 0x18CF8FB;
  v247 = v229 ^ 0x9A2B8DDD;
  v248 = *(v48 + (v235 ^ WORD1(*(v59 + 8 * (*(v48 + (v237 >> 24)) ^ a2))) ^ 0xFB));
  v249 = ((*(v59 + 8 * (v239 ^ a2)) ^ ((v239 ^ 0x5C) - (v239 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v238 ^ a2)) >> 16) ^ (*(v59 + 8 * (v240 ^ a2)) >> 24) ^ *(v59 + 8 * (*(v48 + BYTE2(v232)) ^ a2) + 4) ^ 0x75FDA48E;
  v250 = ((*(v59 + 8 * (*(v48 + v232) ^ a2)) ^ ((*(v48 + v232) ^ 0x5CLL) - (*(v48 + v232) ^ 0x2FFBF42515uLL))) >> 8) ^ *(v59 + 8 * (*(v48 + BYTE2(v237)) ^ a2) + 4) ^ v245 ^ (*(v59 + 8 * (v244 ^ a2)) >> 24) ^ 0x862CEADC;
  v251 = *(v48 + v250);
  v252 = *(v48 + BYTE2(v249));
  v253 = *(v48 + BYTE1(v250));
  v254 = *(v48 + ((v235 ^ WORD1(*(v59 + 8 * (*(v48 + (v237 >> 24)) ^ a2))) ^ 0xF8FB) >> 8));
  v255 = *(v48 + (v229 ^ 0xDDu));
  v256 = *(v48 + BYTE2(v246));
  v257 = *(v48 + BYTE2(v250));
  v258 = *(v48 + (v249 >> 24));
  v259 = *(v48 + (v250 >> 24));
  v260 = *(v48 + v249);
  LODWORD(v249) = *(v59 + 8 * (*(v48 + BYTE1(v249)) ^ a2) + 4) ^ (*(v59 + 8 * (v248 ^ a2)) >> 24) ^ ((*(v59 + 8 * (*(v48 + BYTE2(v247)) ^ a2)) ^ ((*(v48 + BYTE2(v247)) ^ 0x5CLL) - (*(v48 + BYTE2(v247)) ^ 0x2FFBF42515uLL))) >> 8);
  LODWORD(v256) = *(v59 + 8 * (v257 ^ a2) + 4) ^ (*(v59 + 8 * (v255 ^ a2)) >> 24) ^ ((*(v59 + 8 * (v256 ^ a2)) ^ ((v256 ^ 0x5C) - (v256 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v258 ^ a2)) >> 16) ^ 0x422B4B91;
  LODWORD(v260) = (*(v59 + 8 * (*(v48 + (v246 >> 24)) ^ a2)) >> 24) ^ (*(v59 + 8 * (v259 ^ a2)) >> 16) ^ *(v59 + 8 * (v260 ^ a2) + 4);
  v261 = v249 ^ (*(v59 + 8 * (v251 ^ a2)) >> 16) ^ 0xE410230;
  v262 = *(a12 + (v249 ^ WORD1(*(v59 + 8 * (v251 ^ a2))) ^ 0x30));
  v263 = (*(v59 + 8 * (*(v48 + (v247 >> 24)) ^ a2)) >> 24) ^ (*(v59 + 8 * (v252 ^ a2)) >> 16) ^ *(v59 + 8 * (v253 ^ a2) + 4) ^ ((*(v59 + 8 * (v254 ^ a2)) ^ ((v254 ^ 0x5C) - (v254 ^ 0x2FFBF42515uLL))) >> 8) ^ 0x256061CB;
  LODWORD(v131) = __ROR4__(__ROR4__(((v256 & 0x210337AE ^ 0x1771F20B) & (v256 & 0xDEFCC851 ^ 0x6593B7AE) | v256 & 0xC88C0850) ^ 0x4D3B6968, 16) ^ 0x70121A74, 16);
  v264 = v131 ^ 0x2CB76C87;
  v265 = v260 ^ ((*(v59 + 8 * (*(v48 + BYTE1(v247)) ^ a2)) ^ ((*(v48 + BYTE1(v247)) ^ 0x5CLL) - (*(v48 + BYTE1(v247)) ^ 0x2FFBF42515uLL))) >> 8) ^ 0xC5AB868B;
  LODWORD(v251) = *(a12 + BYTE2(v265));
  v266 = *(a12 + BYTE2(v261));
  LODWORD(v257) = *(a12 + (v131 ^ 0x87u));
  v267 = *(a12 + (v260 ^ ((*(v59 + 8 * (*(v48 + BYTE1(v247)) ^ a2)) ^ ((*(v48 + BYTE1(v247)) ^ 0x5C) - (*(v48 + BYTE1(v247)) ^ 0x2515))) >> 8) ^ 0x8B));
  v268 = *(a12 + (v261 >> 24));
  v269 = *(a12 + v263) - ((2 * *(a12 + v263)) & 0xB8u) + 92;
  LODWORD(v251) = ((*(v59 + 8 * (v269 ^ 0x76)) ^ (v269 - (v269 ^ 0x452FFBF42549uLL))) >> 16) ^ ((*(v59 + 8 * (v262 ^ a2)) ^ ((v262 ^ 0x5C) - (v262 ^ 0x2FFBF42515uLL))) >> 8) ^ *(v59 + 8 * ((-(v251 ^ 0x5C) ^ 0xE83A238 ^ (118 - (v251 ^ a2)) ^ ((v251 ^ 0x5C) + 243507768 - ((2 * (v251 ^ 0x5C)) & 0x70))) + 118) + 4);
  LODWORD(v255) = ((*(v59 + 8 * (*(a12 + BYTE1(v263)) ^ a2)) ^ ((*(a12 + BYTE1(v263)) ^ 0x5CLL) - (*(a12 + BYTE1(v263)) ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (*(a12 + (v265 >> 24)) ^ a2)) >> 24) ^ *(v59 + 8 * (*(a12 + BYTE1(v261)) ^ a2) + 4);
  v270 = *(v59 + 8 * ((((v257 ^ 0x5C) - (v257 ^ a2)) ^ 0xFFFFFFFC) + (v257 ^ 0x5C))) >> 24;
  v271 = v251 ^ 0xACD3F28D ^ (*(v59 + 8 * (*(a12 + BYTE2(v264)) ^ a2)) >> 24);
  v272 = *(a12 + BYTE2(v271));
  v273 = v255 ^ 0x1868EFDE ^ (*(v59 + 8 * (*(a12 + (v264 >> 24)) ^ a2)) >> 16);
  v274 = *(v59 + 8 * (v267 ^ a2) + 4) ^ ((*(v59 + 8 * (v266 ^ a2)) ^ ((v266 ^ 0x5C) - (v266 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (*(a12 + BYTE2(v263)) ^ a2)) >> 16) ^ 0xD9D77D13 ^ v270;
  v275 = *(a12 + ((v255 ^ 0xEFDE ^ WORD1(*(v59 + 8 * (*(a12 + (v264 >> 24)) ^ a2)))) >> 8));
  v276 = ((*(v59 + 8 * (v268 ^ a2)) ^ ((v268 ^ 0x5C) - (v268 ^ 0x2FFBF42515uLL))) >> 8) ^ *(v59 + 8 * (*(a12 + BYTE1(v265)) ^ a2) + 4) ^ (*(v59 + 8 * (*(a12 + (v263 >> 24)) ^ a2)) >> 16) ^ 0x38BF578D ^ (*(v59 + 8 * (*(a12 + BYTE1(v264)) ^ a2)) >> 24);
  v277 = *(a12 + ((((*(v59 + 8 * (v268 ^ a2)) ^ ((v268 ^ 0x5C) - (v268 ^ 0x2515))) >> 8) ^ *(v59 + 8 * (*(a12 + BYTE1(v265)) ^ a2) + 4) ^ WORD1(*(v59 + 8 * (*(a12 + (v263 >> 24)) ^ a2)))) ^ 0x8D ^ BYTE3(*(v59 + 8 * (*(a12 + BYTE1(v264)) ^ a2)))));
  v278 = *(a12 + (v251 ^ 0x8D ^ BYTE3(*(v59 + 8 * (*(a12 + BYTE2(v264)) ^ a2)))));
  LODWORD(v255) = *(v59 + 8 * (*(a12 + BYTE2(v273)) ^ a2) + 4) ^ (*(v59 + 8 * (*(a12 + BYTE1(v276)) ^ a2)) >> 16) ^ (*(v59 + 8 * (*(a12 + (v271 >> 24)) ^ a2)) >> 24);
  LODWORD(v264) = *(v59 + 8 * (*(a12 + BYTE2(v276)) ^ a2) + 4) ^ ((*(v59 + 8 * (v278 ^ a2)) ^ ((v278 ^ 0x5C) - (v278 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (*(a12 + (v273 >> 24)) ^ a2)) >> 16) ^ (*(v59 + 8 * (*(a12 + v274) ^ a2)) >> 24);
  LODWORD(v268) = *(v59 + 8 * (*(a12 + BYTE1(v271)) ^ a2) + 4) ^ (*(v59 + 8 * (*(a12 + (v276 >> 24)) ^ a2)) >> 24) ^ ((*(v59 + 8 * (*(a12 + v273) ^ a2)) ^ ((*(a12 + v273) ^ 0x5CLL) - (*(a12 + v273) ^ 0x2FFBF42515uLL))) >> 8);
  v279 = ((*(v59 + 8 * (v272 ^ a2)) ^ ((v272 ^ 0x5C) - (v272 ^ 0x2FFBF42515uLL))) >> 8) ^ (*(v59 + 8 * (v275 ^ a2)) >> 16) ^ *(v59 + 8 * (v277 ^ a2) + 4) ^ (*(v59 + 8 * (*(a12 + BYTE2(v274)) ^ a2)) >> 24) ^ 0x95EC20FC;
  v280 = *(v59 + 8 * (*(a12 + BYTE1(v274)) ^ a2)) >> 16;
  v281 = v264 ^ 0xFB042A9;
  v282 = ((*(v59 + 8 * (*(a12 + (v274 >> 24)) ^ a2)) ^ ((*(a12 + (v274 >> 24)) ^ 0x5CLL) - (*(a12 + (v274 >> 24)) ^ 0x2FFBF42515uLL))) >> 8) ^ v255 ^ 0x51FD8BCB;
  v283 = v268 ^ 0xD7323396 ^ ((v280 ^ 0xBAD0040B) + 1145333659 - 2 * ((v280 ^ 0xBAD0040B) & 0x4444679F ^ v280 & 4));
  LODWORD(v251) = *(a12 + ((((*(v59 + 8 * (v272 ^ a2)) ^ ((v272 ^ 0x5C) - (v272 ^ 0xFBF42515))) >> 8) ^ WORD1(*(v59 + 8 * (v275 ^ a2))) ^ *(v59 + 8 * (v277 ^ a2) + 4) ^ (*(v59 + 8 * (*(a12 + BYTE2(v274)) ^ a2)) >> 24) ^ 0x20FC) >> 8));
  LODWORD(v277) = *(a12 + ((((*(v59 + 8 * (*(a12 + (v274 >> 24)) ^ a2)) ^ ((*(a12 + (v274 >> 24)) ^ 0x5C) - (*(a12 + (v274 >> 24)) ^ 0xFBF42515))) >> 8) ^ v255 ^ 0x8BCB) >> 8));
  LODWORD(v268) = *(a12 + (v281 >> 24)) | (*(a12 + (v282 >> 24)) << 8) | (*(a12 + BYTE2(v283)) << 24);
  LODWORD(v282) = (*(a12 + BYTE2(v279)) << 24) | (*(a12 + BYTE2(v281)) << 8) | (*(a12 + BYTE2(v282)) << 16);
  LODWORD(v271) = v268 | (*(a12 + (v279 >> 24)) << 16);
  LODWORD(v279) = (*(a12 + v281) << 24) | (*(a12 + v279) << 8) | *(a12 + (((*(v59 + 8 * (*(a12 + (v274 >> 24)) ^ a2)) ^ ((*(a12 + (v274 >> 24)) ^ 0x5C) - (*(a12 + (v274 >> 24)) ^ 0x2515))) >> 8) ^ v255 ^ 0xCBu)) | (*(a12 + (v283 >> 24)) << 16);
  LODWORD(v268) = *(a12 + BYTE1(v281)) | (*(a12 + v283) << 24) | (v251 << 16);
  v284 = __ROR8__(a47 & 0xFFFFFFFFFFFFFFF8, 8) - 0x2607A7720729A79;
  v285 = __ROR8__(v284 ^ 0xDE361A1E0EB919D3, 8);
  v284 ^= 0x32CA3658F2D235ECuLL;
  v286 = (v285 + v284) ^ 0x3EC7945A9334A12DLL;
  v287 = v286 ^ __ROR8__(v284, 61);
  v288 = __ROR8__(v286, 8) + v287;
  v289 = v288 ^ __ROR8__(v287, 61);
  v290 = ((v289 ^ 0x4ABA94BA7BE94F4) + __ROR8__(v288 ^ 0x4ABA94BA7BE94F4, 8)) ^ 0x87C30A0A7B081733;
  *(&v291 + 1) = v289 ^ 0x4ABA94BA7BE94F4;
  *&v291 = v289;
  v292 = v290 ^ (v291 >> 61);
  v293 = (v292 + __ROR8__(v290, 8)) ^ 0x257DF8190A0FAA7CLL;
  v294 = v293 ^ __ROR8__(v292, 61);
  v295 = (__ROR8__(v293, 8) + v294) ^ 0x2E769D09049CAA6ALL;
  v296 = __ROR8__(v295, 8);
  v297 = v295 ^ __ROR8__(v294, 61);
  v298 = (v296 + v297) ^ 0xCAC8DE2EE114DF37;
  v299 = __ROR8__(v298, 8);
  v300 = (__ROR8__(a47 + 8, 8) & 0xF8FFFFFFFFFFFFFFLL) - 0x2607A7720729A79;
  v301 = v298 ^ __ROR8__(v297, 61);
  v302 = v300 ^ 0x32CA3658F2D235ECLL;
  v303 = (__ROR8__(v300 ^ 0xDE361A1E0EB919D3, 8) + (v300 ^ 0x32CA3658F2D235ECLL)) ^ 0x3EC7945A9334A12DLL;
  v304 = v303 ^ __ROR8__(v302, 61);
  v305 = (__ROR8__(v303, 8) + v304) ^ 0x4ABA94BA7BE94F4;
  *&v291 = __ROR8__(v304, 61);
  v306 = v305 ^ v291;
  v307 = ((v305 ^ v291) + (v305 << 56) + (v305 >> 8)) ^ 0x87C30A0A7B081733;
  v308 = v307 ^ __ROR8__(v306, 61);
  v309 = (__ROR8__(v307, 8) + v308) ^ 0x257DF8190A0FAA7CLL;
  v310 = v309 ^ __ROR8__(v308, 61);
  v311 = (__ROR8__(v309, 8) + v310) ^ 0x2E769D09049CAA6ALL;
  v312 = v311 ^ __ROR8__(v310, 61);
  v313 = (v312 + __ROR8__(v311, 8)) ^ 0xCAC8DE2EE114DF37;
  v314 = (__ROR8__(a47 + 16, 8) & 0xF8FFFFFFFFFFFFFFLL) - 0x2607A7720729A79;
  v315 = v314 ^ 0xDE361A1E0EB919D3;
  v314 ^= 0x32CA3658F2D235ECuLL;
  v316 = (__ROR8__(v315, 8) + v314) ^ 0x3EC7945A9334A12DLL;
  v317 = v316 ^ __ROR8__(v314, 61);
  v318 = (__ROR8__(v316, 8) + v317) ^ 0x4ABA94BA7BE94F4;
  v319 = v318 ^ __ROR8__(v317, 61);
  v320 = (__ROR8__(v318, 8) + v319) ^ 0x87C30A0A7B081733;
  v321 = v320 ^ __ROR8__(v319, 61);
  v322 = (__ROR8__(v320, 8) + v321) ^ 0x257DF8190A0FAA7CLL;
  v323 = v322 ^ __ROR8__(v321, 61);
  v324 = (v323 + __ROR8__(v322, 8)) ^ 0x2E769D09049CAA6ALL;
  v325 = ((v313 ^ __ROR8__(v312, 61)) + __ROR8__(v313, 8)) ^ 0x67C4AB124F7C297BLL;
  LOBYTE(v313) = 8 * (a47 & 7);
  v326 = ((v301 + v299) ^ 0x67C4AB124F7C297BLL) >> v313;
  v327 = v326 + 16 * (v325 << (v313 ^ 0x3Cu));
  v328 = v324 ^ __ROR8__(v323, 61);
  v329 = v328 + __ROR8__(v324, 8);
  v330 = (v325 >> v313) + 16 * (((__ROR8__(v329 ^ 0xCAC8DE2EE114DF37, 8) + (v329 ^ __ROR8__(v328, 61) ^ 0xAC8DE2EE114DF37)) ^ 0x7C4AB124F7C297BLL) << (v313 ^ 0x3Cu));
  v363 = HIDWORD(v330);
  v364 = v326;
  LODWORD(v275) = (v282 | *(a12 + BYTE1(v283))) ^ 0xF97DAAAC;
  LOBYTE(v283) = *(a48 + (v326 ^ a45 ^ 0x89)) ^ BYTE3(v275);
  v362 = v327 >> 8;
  v361 = v327 >> 16;
  v360 = HIDWORD(v327);
  LODWORD(v271) = v271 ^ 0x142ED2CE;
  LOBYTE(v254) = *(a48 + (BYTE4(v327) ^ a45 ^ 0xEBu)) ^ BYTE1(v271);
  v359 = HIWORD(v327);
  LOBYTE(v272) = *(a48 + (BYTE6(v327) ^ a45 ^ 0x15u)) ^ BYTE3(v271);
  v354 = HIBYTE(v327);
  v355 = v325 >> v313;
  LOBYTE(v326) = *(a48 + (HIBYTE(v327) ^ a45 ^ 0x51u)) ^ BYTE2(v271);
  LODWORD(v274) = v279 ^ 0x76337F68;
  LOBYTE(v251) = *(a48 + (((v325 >> v313) ^ a45) ^ 0x30u)) ^ ((v279 ^ 0x76337F68) >> 24);
  v357 = v327 >> 24;
  LOBYTE(v279) = v275 ^ *(a48 + (BYTE3(v327) ^ a45 ^ 0xA9u)) ^ 0x3B;
  v353 = v327 >> 40;
  LOBYTE(v327) = v271 ^ *(a48 + ((BYTE5(v327) ^ a45) ^ 0xCFu)) ^ 0x3B;
  v356 = v330 >> 8;
  v358 = v330 >> 16;
  LOBYTE(v313) = *(a48 + (BYTE1(v330) ^ a45 ^ 0x31u)) ^ BYTE2(v274);
  LOBYTE(v329) = *(a48 + ((BYTE2(v330) ^ a45) ^ 0xF3u)) ^ BYTE1(v274);
  v352 = v330 >> 24;
  LOBYTE(v275) = v274 ^ *(a48 + (BYTE3(v330) ^ a45 ^ 0x73u)) ^ 0x3B;
  v351 = v330 >> 40;
  v350 = HIWORD(v330);
  LOBYTE(v253) = *(a48 + (HIBYTE(v330) ^ a45 ^ 0xB8u));
  v331 = *(&off_100755B60 + v56 - 5989);
  v332 = *(v331 + (v283 ^ 0x3Bu));
  v333 = v279;
  v334 = *(v331 + ((*(a48 + (BYTE1(v327) ^ a45 ^ 0xD6u)) ^ BYTE2(v275)) ^ 0x3Bu));
  v335 = *(v331 + ((*(a48 + (BYTE2(v327) ^ a45 ^ 0xB6u)) ^ BYTE1(v275)) ^ 0x3Bu));
  v336 = *(v331 + v333);
  LODWORD(v324) = (v268 | (v277 << 8)) ^ 0xAA50052B;
  v337 = *(v331 + (v254 ^ 0x3Bu));
  v338 = *(v331 + v327);
  LODWORD(v277) = *(a48 + (((a45 ^ -a45 ^ (BYTE4(v330) - (a45 ^ BYTE4(v330)))) + BYTE4(v330)) ^ 0x5ALL)) ^ BYTE3(v324);
  LODWORD(v269) = *(a48 + (BYTE6(v330) ^ a45 ^ 0x6Du)) ^ (v324 >> 8);
  v339 = *(v331 + (v272 ^ 0x3Bu));
  v340 = *(v331 + (v326 ^ 0x3Bu));
  v341 = *(v331 + (v251 ^ 0x3Bu));
  LOBYTE(v253) = v324 ^ v253 ^ 0x3B;
  v342 = *(v331 + (v313 ^ 0x3Bu));
  v343 = *(v331 + (v329 ^ 0x3Bu));
  v344 = *(v331 + v275);
  v345 = *(v331 + ((*(a48 + ((BYTE5(v330) ^ a45) ^ 0xEFu)) ^ BYTE2(v324)) ^ 0x3Bu));
  LODWORD(v313) = *(v331 + (v277 ^ 0x3Bu));
  LODWORD(v275) = *(v331 + (v269 ^ 0x3Bu));
  LODWORD(v331) = *(v331 + v253);
  *(a47 + 12) = v313 ^ (v313 >> 4) ^ 0x75;
  *(a47 + 14) = v275 ^ (v275 >> 4) ^ 0x75;
  *(a47 + 15) = v331 ^ (v331 >> 4) ^ 0x75;
  if (a13 < 0xB6FFED01 != (a46 - 1224741615) < 0xB6FFED01)
  {
    v346 = a13 < 0xB6FFED01;
  }

  else
  {
    v346 = a46 - 1224741615 < a13;
  }

  *a47 = v332 ^ (v332 >> 4) ^ 0x75;
  *(a47 + 4) = v337 ^ (v337 >> 4) ^ 0x75;
  *(a47 + 1) = v334 ^ (v334 >> 4) ^ 0x75;
  *(a47 + 2) = v335 ^ (v335 >> 4) ^ 0x75;
  *(a47 + 3) = v336 ^ (v336 >> 4) ^ 0x75;
  *(a47 + 6) = v339 ^ (v339 >> 4) ^ 0x75;
  *(a47 + 5) = v338 ^ (v338 >> 4) ^ 0x75;
  v347 = v340 ^ (v340 >> 4) ^ 0x75;
  *(a47 + 7) = v347;
  v348 = v342 ^ (v342 >> 4) ^ 0x75;
  *(a47 + 9) = v348;
  *(a47 + 8) = v341 ^ (v341 >> 4) ^ 0x75;
  *(a47 + 10) = v343 ^ (v343 >> 4) ^ 0x75;
  *(a47 + 11) = v344 ^ (v344 >> 4) ^ 0x75;
  *(a47 + 13) = v345 ^ (v345 >> 4) ^ 0x75;
  LODWORD(a16) = v56 - 4846;
  return (*(v57 + 8 * (v56 ^ (14128 * v346))))(v334 ^ (v334 >> 4) ^ 0x75, a2, v344, v345, v335 ^ (v335 >> 4) ^ 0x75, v347, v348, 117, a9, a10, a11, a12, a13, a14, a15, a16, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, a28, v361, v362, v363, v364, a33, a34, a35, a36, a37, a38, a39, a40, a41);
}

void sub_100029CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19)
{
  a17 = a14;
  a19 = (v21 + v19 + 2046) ^ (1358806181 * ((-2041468252 - (&a16 | 0x8651AAA4) + (&a16 | 0x79AE555B)) ^ 0x468139D8));
  a16 = 0;
  (*(v20 + 8 * (v19 ^ 0xD305BEDA)))(&a16);
  JUMPOUT(0x100026208);
}

void sub_100029D68()
{
  if (v3 == 203186117 || v3 == 203186114)
  {
    *(v4 - 128) = ((v2 - 57) & 0x9F ^ 0x35) + (HIBYTE(v1) ^ 0xB4) - 2 * ((((v2 + 115) | 0x82) + 107) & HIBYTE(v1) ^ (HIBYTE(v1) ^ 0xB4) & 0x3E);
    *(v4 - 127) = (BYTE6(v1) ^ 0x6E) - 2 * ((BYTE6(v1) ^ 0x6E) & 0x3D ^ BYTE6(v1) & 1) + 60;
    *(v4 - 126) = (BYTE5(v1) ^ 0x31) - ((2 * (BYTE5(v1) ^ 0x31)) & 0x78) + 60;
    *(v4 - 125) = (BYTE4(v1) ^ 0x7E) + (~(2 * (BYTE4(v1) ^ 0x7E)) | 0x87) + 61;
    *(v4 - 124) = (BYTE3(v1) ^ 0x75) - ((2 * (BYTE3(v1) ^ 0x75)) & 0x78) + 60;
    *(v4 - 123) = (BYTE2(v1) ^ 0x35) - ((2 * (BYTE2(v1) ^ 0x35)) & 0x78) + 60;
    *(v4 - 122) = (BYTE1(v1) ^ 0xB0) + ~(2 * ((BYTE1(v1) ^ 0xB0) & 0x3F ^ BYTE1(v1) & 3)) + 61;
    *(v4 - 121) = v1 ^ 0x48;
    (*(v0 + 8 * ((7938 * ((((v2 - 57) & 0x9F ^ 0x35) + (HIBYTE(v1) ^ 0xB4) - 2 * ((((v2 + 115) | 0x82) + 107) & HIBYTE(v1) ^ (HIBYTE(v1) ^ 0xB4) & 0x3E)) == 60)) ^ (v2 - 2713))))();
  }

  else
  {
    sub_1000E3DAC();
  }
}

uint64_t sub_10002A130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, int a17, char a18, __int16 a19, char a20, uint64_t a21, int a22, char a23, __int16 a24, char a25, int a26, int a27, unsigned int a28, uint64_t a29, char *a30, unsigned int a31, char *a32)
{
  a31 = (v32 + 1305605459) ^ (1358806181 * ((&a27 & 0xE1200228 | ~(&a27 | 0xE1200228)) ^ 0x21F09154));
  a29 = a16;
  a30 = &a25;
  a32 = &a23;
  (*(v34 + 8 * (v32 + 7008)))(&a27);
  a31 = (v32 + 660) ^ (1710126949 * (((&a27 | 0x6D4AAB21) - &a27 + (&a27 & 0x92B554D8)) ^ 0x5F51F0B1));
  a29 = a16;
  a30 = &a18;
  a32 = &a20;
  (*(v34 + 8 * (v32 ^ 0x2F1D)))(&a27);
  a28 = (v32 + 554) ^ (33731311 * (&a27 ^ 0x39F6CA23));
  a29 = a16;
  a30 = &a15;
  (*(v34 + 8 * (v32 ^ 0x2F1B)))(&a27);
  LODWORD(a30) = v32 - 2008441969 * ((((2 * (&a27 ^ 0x3AA158AD)) | 0x4BA54DA2) - (&a27 ^ 0x3AA158AD) + 1512921391) ^ 0xD7EAAA72) + 2987;
  a29 = a16;
  v35 = (*(v34 + 8 * (v32 + 6953)))(&a27);
  return (*(v34 + 8 * ((6460 * (a27 == ((v32 - 358) ^ v33) + v32 - 22)) ^ v32)))(v35);
}

uint64_t sub_10002A310@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = v2;
  return sub_10006CA2C(a1, 197499219);
}

void sub_10002A330(_DWORD *a1)
{
  v1 = 33731311 * ((2 * (a1 & 0xC4FEB5) - a1 + 2134573386) ^ 0x46CDCB69);
  v2 = a1[3] - v1;
  v3 = a1[2] - v1;
  v4 = *a1 ^ v1;
  v5 = a1[4] + v1;
  v6 = a1[1] + v1;
  v7 = *(&off_100755B60 + (v2 ^ 0x85D));
  *(v7 - 1) = v3;
  *v7 = v4;
  v7[1] = v5;
  v7[2] = v6;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10002A400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int a11)
{
  a11 = 1934676430 - 33731311 * (&a10 ^ 0x39F6CA23);
  v12 = (*(v11 + 76984))(&a10);
  return (*(v11 + 8 * ((5449 * (a10 == 16257999)) ^ 0x7CAu)))(v12);
}

uint64_t sub_10002A500(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = *(v6 + 8 * (v4 + 7755));
  v9 = v7(v5);
  return sub_100151158(v9, v10, v11, a4);
}

uint64_t sub_10002A548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v25 = ((((2 * &a16) | 0x25AEAC8) - &a16 - 19756388) ^ 0x5944A606) * v21;
  a20 = -654855621 - v25;
  a21 = v25 + v24 + 1674571962;
  a17 = v25 - 1940530245;
  a18 = a14;
  a19 = &a12;
  v26 = (*(v23 + 8 * (v24 ^ 0x3E78)))(&a16);
  return (*(v23 + 8 * ((14905 * (a16 == ((10 * (v24 ^ 0x1B91)) ^ (v22 - 970)))) ^ v24)))(v26);
}

uint64_t sub_10002A6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, unsigned int a15, uint64_t a16, uint64_t a17)
{
  v22 = v21 & 0x2FCD;
  v23 = 1875091903 * (((&a13 | 0xA51219CB) - &a13 + (&a13 & 0x5AEDE630)) ^ 0x93679A48);
  a14 = (v19 ^ 0xAD9EB7BA) + ((2 * v19) & 0x5B3D6F74) + 1920859888 + v23;
  a15 = v23 + v22 + 4707;
  a16 = a11;
  (*(v20 + 8 * (v22 + 6628)))(&a13);
  v24 = 1824088897 * (((&a13 | 0x91B03F5F) + (~&a13 | 0x6E4FC0A0)) ^ 0xC9D9EC3C);
  a16 = v17;
  a17 = a11;
  a15 = ((2 * v18) & 0xBF69F5FE) - v24 + (v18 ^ 0x5FB4E95C ^ (v22 + 2010)) - 286265461;
  a13 = v24 + v22 + 740;
  v25 = (*(v20 + 8 * (v22 ^ 0x2E56u)))(&a13);
  return (*(v20 + 8 * ((12246 * (a14 == 16257999)) ^ v22)))(v25);
}

uint64_t sub_10002A858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, _DWORD *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, int a22)
{
  *a6 = 0;
  *a7 = 0;
  a21 = 476323082 - 1710126949 * ((&a21 & 0x46939D0C | ~(&a21 | 0x46939D0C)) ^ 0x8B773963);
  v23 = (*(v22 + 77088))(&a21);
  return (*(v22 + 8 * ((3407 * (a22 == 16257999)) ^ 0x15C0u)))(v23);
}

uint64_t sub_10002A908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 290 * (v4 ^ 0x1F97);
  STACK[0x978] = v5;
  v7 = STACK[0x3F0];
  STACK[0x980] = STACK[0x3F0];
  return (*(a4 + 8 * (((v5 - v7 > 9) * (5 * (v6 ^ 0x5DE) + 5730)) ^ v6)))();
}

uint64_t sub_10002AA40(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v72 == 17168)
  {
    return (*(a71 + 8 * ((v74 + 63) ^ (15069 * (v71 == a2 + 4)))))();
  }

  if (v72 == 20706 || v72 == 33980)
  {
    return sub_10005E470(a1);
  }

  return (*(a71 + 8 * ((5209 * (v73 == 13 * ((v74 - 959594696) & 0x39322B1F ^ 0x72) + 16249978)) ^ (v74 - 2801))))();
}

uint64_t sub_10002AB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a12;
  a16 = 1317436891 * ((((&a14 | 0xEE129C44) ^ 0xFFFFFFFE) - (~&a14 | 0x11ED63BB)) ^ 0xA1EEFBCD) + 8154;
  v18 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((8873 * (a15 == 16257999)) ^ v17)))(v18);
}

uint64_t sub_10002ABC8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xB48] = v1 ^ 0xBC59953u;
  *(a1 + 16) = ((v2 - 2046132745) & 0x79F577DB) + 197499219 + (((v1 ^ 0x9C7D4E64) + 1669509532) ^ ((v1 ^ 0xE7EF5CE6) + 403743514) ^ ((v1 ^ 0x70578BD1) - 1884794865 + (v2 ^ 0x28A8))) - 593;
  v5 = (*(v3 + 8 * (v2 ^ 0x292A)))();
  v6 = STACK[0x400];
  *(a1 + 24) = v5;
  return (*(v6 + 8 * ((86 * (v5 != 0)) ^ v2)))();
}

uint64_t sub_10002AE9C()
{
  v3 = STACK[0x740];
  v4 = &STACK[0xB60] + STACK[0x740];
  STACK[0x6D8] = (v4 + 32);
  STACK[0x680] = (v4 + 48);
  STACK[0x740] = ((v1 - 344) ^ (v1 - 848984910) & 0x329A67FFu ^ 0x129ELL) + v3;
  v5 = (*(v2 + 8 * (v1 + 3165)))(v4, 0, 32);
  STACK[0x8A8] = 0;
  STACK[0x5A0] = v0;
  return (*(v2 + 8 * (v1 | (8 * (v0 == 0)))))(v5);
}

uint64_t sub_10002AF24(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v74 = LODWORD(STACK[0x340]);
  if (v74 == 17168)
  {
    return (*(a72 + 8 * ((v73 - 1558) ^ (2096 * (v72 == a4 + 4)))))();
  }

  if (v74 == 20706)
  {
    return (*(a72 + 8 * ((2390 * (v72 == 166 * (v73 ^ 0x17DF) + 197494579)) ^ (v73 - 1558))))();
  }

  if (v74 != 33980)
  {
    return sub_1000128D8();
  }

  STACK[0x5C0] = STACK[0x588] + STACK[0x2A0];
  return sub_100030E60(2 * (v73 ^ 0x19CCu));
}

uint64_t sub_10002B060(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 26;
  v4 = (*(v2 + 8 * (v1 ^ 0x6F0)))(26, 0x100004077774924);
  *(a1 + 24) = v4;
  return (*(v2 + 8 * (((v4 == 0) * ((869 * ((v1 + 2005381796) & 0x88782F7F ^ 0x571)) ^ 0x17CF)) ^ v1)))();
}

uint64_t sub_10002B0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a17 = a13;
  a18 = &a11;
  a16 = (v20 - 2175) ^ (33731311 * (&a15 ^ 0x39F6CA23));
  (*(v18 + 8 * ((v20 - 1065) ^ 0x359B)))(&a15);
  LODWORD(a18) = v20 - 1065 - 2008441969 * (((&a15 | 0xE368383B) - &a15 + (&a15 & 0x1C97C7C0)) ^ 0xABF16C35) + 1323;
  a17 = a13;
  v21 = (*(v18 + 8 * (v20 + 4224)))(&a15);
  return (*(v18 + 8 * (((a15 == v19) * (v20 ^ 0x1C24)) ^ (v20 - 1065))))(v21);
}

uint64_t sub_10002B1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, int a15, char a16, __int16 a17, char a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, char *a23, unsigned int a24, char *a25)
{
  a24 = (v25 + 1347) ^ (((((2 * &a20) | 0x8A89DA6E) - &a20 + 985338569) ^ 0xF75FB6A7) * v28);
  a25 = &a18;
  a22 = a11;
  a23 = &a13;
  (*(v26 + 8 * (v25 + 7596)))(&a20);
  a21 = (v25 + 1241) ^ (33731311 * (((&a20 | 0xF58CCE3B) + (~&a20 | 0xA7331C4)) ^ 0xCC7A0419));
  a22 = a11;
  a23 = &a16;
  (*(v26 + 8 * (v25 ^ 0x22AA)))(&a20);
  a22 = a11;
  LODWORD(a23) = v25 - 2008441969 * ((2 * (&a20 & 0x49839AB0) - &a20 + 914122057) ^ 0x7EE53147) + 3674;
  v29 = (*(v26 + 8 * (v25 ^ 0x2258)))(&a20);
  return (*(v26 + 8 * ((45 * (a20 != ((v25 - 594) ^ (v27 + 751)))) ^ v25)))(v29);
}

uint64_t sub_10002B330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, char a12, __int16 a13, char a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, char *a21)
{
  a18 = a9;
  a19 = &a10;
  a21 = &a12;
  a20 = (v22 + 1305601260) ^ (1358806181 * (((&a16 | 0xB144C984) - (&a16 & 0xB144C984)) ^ 0x8E6BA507));
  (*(v21 + 8 * (v22 + 2809)))(&a16);
  a17 = (v22 - 3645) ^ (33731311 * ((((2 * &a16) | 0x2BE0538A) - &a16 + 1779422779) ^ 0xAC06E3E6));
  a18 = a9;
  a19 = &a14;
  (*(v21 + 8 * (v22 + 2704)))(&a16);
  LODWORD(a19) = v22 - 1476 - 2008441969 * ((2 * (&a16 & 0x451A000) - &a16 - 72458242) ^ 0xB3370BF0) + 264;
  a18 = a9;
  v23 = (*(v21 + 8 * ((v22 - 1476) ^ 0x308E)))(&a16);
  return (*(v21 + 8 * ((2414 * (a16 == ((v22 - 5825) ^ 0x1EC1) + ((v22 - 5825) | 0x10E0) + 16245758)) ^ (v22 - 1476))))(v23);
}

uint64_t sub_10002B6EC(uint64_t a1)
{
  v3 = STACK[0x3F8] - 8438;
  v4 = STACK[0x3F8] - 59;
  LODWORD(STACK[0x84C]) = v1;
  return (*(v2 + 8 * ((1984 * (((v3 ^ (a1 == 0)) & 1) == 0)) ^ v4)))();
}

uint64_t sub_10002B734()
{
  v2 = STACK[0x3F8] ^ 0x2B9E;
  v3 = (*(v1 + 8 * (v2 + 5604)))((((v2 - 3006) | 0x2020u) + 197489971) ^ LODWORD(STACK[0x964]), 0x100004077774924);
  v4 = STACK[0x400];
  STACK[0xA68] = v3;
  if (v3)
  {
    v5 = 16257999;
  }

  else
  {
    v5 = v0 - 5;
  }

  LODWORD(STACK[0xA74]) = v5;
  return (*(v4 + 8 * (((v3 == 0) * ((v2 - 1292162763) & 0x4D04D7EF ^ 0x10AC)) ^ v2)))();
}

uint64_t sub_10002B810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10)
{
  *(v12 - 116) = v11 - 1875091903 * ((((v12 - 120) | 0xCB082F71) + (~(v12 - 120) | 0x34F7D08E)) ^ 0xFD7DACF3) + 960663670;
  (*(v10 + 8 * (v11 ^ 0x35CD)))(v12 - 120);
  v13 = 1875091903 * ((((v12 - 120) | 0xE7344200) - (v12 - 120) + ((v12 - 120) & 0x18CBBDF8)) ^ 0xD141C183);
  *(v12 - 120) = (v11 - 119670823) ^ v13;
  *(v12 - 116) = v13 ^ 0x5D845C70;
  v14 = (*(v10 + 8 * (v11 ^ 0x35CE)))(v12 - 120);
  return (*(v10 + 8 * ((((a10 >> 7) ^ 1) * (((304 * (v11 ^ 0x1009) - 1203767081) & 0x47C00720) - 1786)) ^ v11)))(v14);
}

uint64_t sub_10002B924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, unsigned int a23)
{
  v25 = ((&a18 & 0xE31E131 | ~(&a18 | 0xE31E131)) ^ 0xA9A7CDAC) * v23;
  a22 = -654855621 - v25;
  a23 = v25 + a12 + 1674575388;
  a19 = v25 + 739404086;
  a20 = a15;
  a21 = &a14;
  v26 = (*(v24 + 8 * (a12 + 5882)))(&a18);
  return (*(v24 + 8 * (((a18 == (a12 ^ 0xF81D41)) * (((a12 - 3198) | 0x4E5) ^ 0x2AFF)) ^ a12)))(v26);
}

uint64_t sub_10002BA1C()
{
  v5 = *(v0 + 8);
  v6 = 1875091903 * ((2 * ((v4 - 120) & 0x45C0B2B0) - (v4 - 120) - 1170256565) ^ 0x8C4ACEC8);
  *(v4 - 120) = (v2 - 119670970) ^ v6;
  *(v4 - 116) = v6 ^ (v3 + 450324997);
  v7 = (*(v1 + 8 * (v2 ^ 0x3563)))(v4 - 120);
  return (*(v1 + 8 * (((*v5 >> 7) ^ 1 | (4 * ((*v5 >> 7) ^ 1))) ^ (v2 + 3408))))(v7);
}

void sub_10002BA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    v6 = a6 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = v6;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10002BA98@<X0>(unsigned int a1@<W8>)
{
  v3 = 16 - (~((v1 - 1411 + ((a1 + 588548505) ^ (v1 - 1412))) ^ (((a1 + 588548505) ^ 8) + 9) ^ (8 - ((a1 + 588548505) ^ 6))) & 0xF);
  LODWORD(STACK[0x668]) = v3;
  return (*(v2 + 8 * ((3392 * ((a1 ^ 0x7A7FBFFFCBA13F97) + ((2 * a1) & 0x197427F2ELL) + ((2 * v3) & 0xFFFFFFFFFFFFFFEFLL) + (v3 ^ 0x5FEBFD6CCC8D7C37) + 0x2594429367D14432 < 0xFFFFFFF6)) ^ v1)))();
}

uint64_t sub_10002BBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 + 1398595235) - 6182 + v2;
  v7 = *(a2 + v6 - 15);
  v8 = *(a2 + v6 - 31);
  v9 = a1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((v4 + v3 + 1168) | (8 * ((v2 & 0xFFFFFFE0) != 32)))))();
}

uint64_t sub_10002BC34()
{
  v5 = STACK[0x994];
  STACK[0x790] = v0;
  LODWORD(STACK[0xA08]) = v3;
  LOWORD(STACK[0xA0E]) = v2;
  LODWORD(STACK[0xA10]) = v5;
  LODWORD(STACK[0xA14]) = STACK[0x8B4];
  STACK[0xA18] = STACK[0x540];
  STACK[0x5D8] = STACK[0x5C0];
  return (*(v4 + 8 * (((((v0 == 0) ^ (v1 + 105)) & 1) * (((v1 - 4477) | 0x1200) ^ 0x17CA)) | v1)))();
}

uint64_t sub_10002BCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 ^ 0xCu) + 1065 - 3676) ^ v3) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  v7 = ((v4 ^ 0xFFFFF5C6) & v2) - 8 != v3;
  return (*(v5 + 8 * (((4 * v7) | (8 * v7)) ^ v4 ^ 0xC)))();
}

uint64_t sub_10002BD08()
{
  v1 = (STACK[0x3F8] + 111728285) & 0xF9571F6F;
  LODWORD(STACK[0x46C]) = v0;
  v2 = STACK[0x400];
  STACK[0x440] = STACK[0x9F0];
  v4 = LODWORD(STACK[0x9E4]) != 197499219 || LOWORD(STACK[0x9EA]) != (((v1 - 5095) | 0x1118) ^ 0x93E2);
  return (*(v2 + 8 * ((124 * v4) ^ v1)))();
}

uint64_t sub_10002BD38()
{
  v4 = (v0 - 1764045386) & 0x69253FEB;
  v9 = v7;
  v10 = (v0 + 6226) ^ ((((&v8 | 0x2817D5D5) + (~&v8 | 0xD7E82A2A)) ^ 0x707E06B6) * v2);
  (*(v1 + 8 * (v0 ^ 0x2DC4)))(&v8);
  v10 = (v4 + 2736) ^ (((1689196937 - (&v8 | 0x64AF1989) + (&v8 | 0x9B50E676)) ^ 0xC3393514) * v2);
  v9 = v6;
  (*(v1 + 8 * (v4 + 4002)))(&v8);
  return (v3 - 16257999);
}

uint64_t sub_10002BE58@<X0>(int a1@<W8>)
{
  v2 = STACK[0x438];
  STACK[0x530] = *(v1 + 8 * a1);
  return sub_100127930(v2);
}

uint64_t sub_10002BE8C()
{
  v2 = *(STACK[0x3E8] + 24);
  STACK[0x438] = v2;
  return (*(v1 + 8 * (((v2 == 0) * ((((v0 + 168468899) & 0xF5F54D7E) + 3661) ^ 0x17C9)) | v0)))();
}

uint64_t sub_10002BFBC@<X0>(unint64_t a1@<X8>)
{
  STACK[0x4B8] = a1;
  v3 = (*(v2 + 8 * (v1 ^ 0x22BB)))(32, 0x103004054B5FA7DLL);
  STACK[0x7F0] = v3;
  return (*(v2 + 8 * (((v3 == 0) * (((v1 - 1073599322) & 0x3FFDEF76) - 8959)) ^ v1)))();
}

uint64_t sub_10002C06C()
{
  v8 = v5;
  v9 = (v3 + 6812) ^ (((2 * (&v7 & 0x68455680) - &v7 + 398109049) ^ 0x4FD37A1B) * v1);
  (*(v0 + 8 * (v3 ^ 0x2072u)))(&v7);
  v9 = ((v3 ^ 0x1190) + 3116) ^ (((((&v7 | 0xA688A716) ^ 0xFFFFFFFE) - (~&v7 | 0x597758E9)) ^ 0x11E8B8B) * v1);
  v8 = v6;
  (*(v0 + 8 * ((v3 ^ 0x1190u) + 4382)))(&v7);
  return (v2 - 16257999);
}

uint64_t sub_10002C178@<X0>(int a1@<W3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  v19 = a1 + 799180585;
  v20 = ((a1 + 799180585) ^ 0x98319708) & (2 * ((a1 + 799180585) & 0xC2B5D7A9)) ^ (a1 + 799180585) & 0xC2B5D7A9;
  v21 = ((2 * ((a1 + 799180585) ^ 0x19519358)) ^ 0xB7C889E2) & ((a1 + 799180585) ^ 0x19519358) ^ (2 * ((a1 + 799180585) ^ 0x19519358)) & 0xDBE444F0;
  v22 = v21 ^ 0x48244411;
  v23 = (v21 ^ 0x13C000E0) & (4 * v20) ^ v20;
  v24 = ((4 * v22) ^ 0x6F9113C4) & v22 ^ (4 * v22) & 0xDBE444F0;
  v25 = (v24 ^ 0x4B8000C0) & (16 * v23) ^ v23;
  v26 = ((16 * (v24 ^ 0x90644431)) ^ 0xBE444F10) & (v24 ^ 0x90644431) ^ (16 * (v24 ^ 0x90644431)) & 0xDBE444F0;
  v27 = v25 ^ 0xDBE444F1 ^ (v26 ^ 0x9A444400) & (v25 << 8);
  v28 = a2 ^ 0x3D549628 ^ (v17 - ((2 * v15) & 0xB5A30002) + 1294589651);
  v29 = v14 == LODWORD(STACK[0x4A8]);
  v30 = a2 ^ 0x357916B8;
  LODWORD(STACK[0x508]) = v30;
  LODWORD(STACK[0x510]) = v30 + v13 + v28;
  LODWORD(STACK[0x520]) = v28 + 2098573322;
  LODWORD(STACK[0x518]) = (v19 ^ (2 * ((v27 << 16) & 0x5BE40000 ^ v27 ^ ((v27 << 16) ^ 0x44F10000) & (((v26 ^ 0x41A000E1) << 8) & 0x5BE40000 ^ 0x1BA00000 ^ (((v26 ^ 0x41A000E1) << 8) ^ 0x64440000) & (v26 ^ 0x41A000E1)))) ^ 0x2FA0165B ^ (v16 - ((2 * v16) & 0xB63A9020) - 618838000)) + 2098573322;
  return (*(v18 + 8 * (((((((a13 ^ 0x2084) - 8704) | 0x8B0) ^ 0xFFFFF8F2) + (((a13 ^ 0x2084) - 1322178063) & 0x4ECEBFCE)) * v29) ^ a13 ^ 0x2084)))();
}

uint64_t sub_10002C44C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, unsigned int a23)
{
  a22 = a19;
  a23 = (v23 + 4039) ^ (1824088897 * ((&a21 & 0xF74FE41D | ~(&a21 | 0xF74FE41D)) ^ 0x50D9C880));
  v25 = (*(v24 + 8 * (v23 ^ 0x355F)))(&a21);
  return sub_10002C4B8(v25);
}

uint64_t sub_10002C4B8()
{
  v7 = (v2 + 2778) ^ ((((v6 | 0xA4D38B2B) + (~v6 | 0x5B2C74D4)) ^ 0xFCBA5848) * v1);
  v6[1] = v5;
  (*(v3 + 8 * (v2 ^ 0x304C)))(v6);
  return (v0 - 16257999);
}

uint64_t sub_10002C558@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 ^ 0xA50;
  (*(v2 + 8 * (v1 ^ 0x34CD)))(a1);
  v4 = STACK[0x400];
  *(STACK[0x8A0] + 24) = 0;
  v5 = (*(v4 + 8 * (v3 ^ 0x3E9D)))();
  v6 = STACK[0x400];
  STACK[0x8A0] = 0;
  return (*(v6 + 8 * ((((63 * (((v3 ^ 0x166F) - 546559351) & 0x2093DDBF ^ 0x1528)) ^ 0x83D) * (*(STACK[0x5D8] + 5) == 0)) ^ v3 ^ 0x166F)))(v5);
}

uint64_t sub_10002C5FC(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int64x2_t a8)
{
  v28 = v10 - 8;
  v29.i64[0] = v11 + v28 + v13 + 8;
  v29.i64[1] = v11 + v28 + 12;
  v30.i64[0] = v11 + v28 + 17;
  v30.i64[1] = v11 + v28 + 16;
  v31.i64[0] = v11 + v28 + 15;
  v31.i64[1] = v11 + v28 + 14;
  v32.i64[0] = v11 + v28 + 11;
  v32.i64[1] = v11 + v28 + 10;
  v33 = vandq_s8(v32, a1);
  v34 = vandq_s8(v31, a1);
  v35 = vandq_s8(v30, a1);
  v36 = vandq_s8(v29, a1);
  v37 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v38 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v39 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v33, 0x38uLL), v33, 8uLL), a3);
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL), a3);
  v41 = veorq_s8(v40, a4);
  v42 = veorq_s8(v39, a4);
  v43 = veorq_s8(v39, a5);
  v44 = veorq_s8(v40, a5);
  v45 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v43), a6);
  v46 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL), v44), a6);
  v47 = vsraq_n_u64(vshlq_n_s64(v43, 3uLL), v43, 0x3DuLL);
  v48 = veorq_s8(v46, vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL));
  v49 = veorq_s8(v45, v47);
  v50 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v45, 0x38uLL), v45, 8uLL), v49);
  v51 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v46, 0x38uLL), v46, 8uLL), v48);
  v52 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v51, v51), a7), v51), a8), v15);
  v53 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v50, v50), a7), v50), a8), v15);
  v54 = vsraq_n_u64(vshlq_n_s64(v48, 3uLL), v48, 0x3DuLL);
  v55 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL));
  v56 = veorq_s8(v52, v54);
  v57 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v56);
  v59 = vaddq_s64(v57, v55);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(v59, vandq_s8(vaddq_s64(v59, v59), v16)), v17), v18);
  v61 = veorq_s8(vaddq_s64(vsubq_s64(v58, vandq_s8(vaddq_s64(v58, v58), v16)), v17), v18);
  v62 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v63 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v64 = veorq_s8(v60, v62);
  v65 = vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL);
  v66 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v64);
  v67 = veorq_s8(vaddq_s64(v65, v63), v19);
  v68 = veorq_s8(v66, v19);
  v69 = vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL);
  v70 = veorq_s8(v68, vsraq_n_u64(vshlq_n_s64(v64, 3uLL), v64, 0x3DuLL));
  v71 = veorq_s8(v67, v69);
  v72 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL), v71);
  v74 = vaddq_s64(v72, v70);
  v75 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v73, v20), vorrq_s8(v73, v21)), v21), v22);
  v76 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v74, v20), vorrq_s8(v74, v21)), v21), v22);
  v77 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v78 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v79 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL), v77), v23);
  v80 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v78), v23);
  v81 = vsraq_n_u64(vshlq_n_s64(v77, 3uLL), v77, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v78, 3uLL), v78, 0x3DuLL));
  v83 = veorq_s8(v79, v81);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v85 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v86 = vaddq_s64(v38, a3);
  v87 = veorq_s8(vaddq_s64(v84, v82), v24);
  v88 = veorq_s8(vaddq_s64(v85, v83), v24);
  v125.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v88, v25), vorrq_s8(v88, v26)), v26), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v125.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v87, v25), vorrq_s8(v87, v26)), v26), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v89 = veorq_s8(v86, a4);
  v90 = veorq_s8(v86, a5);
  v91 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90), a6);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v93, v93), a7), v93), a8), v15);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(v96, vandq_s8(vaddq_s64(v96, v96), v16)), v17), v18);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v19);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100);
  v102 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v101, v20), vorrq_s8(v101, v21)), v21), v22);
  v103 = veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v104 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), v103), v23);
  v105 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), veorq_s8(v104, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL))), v24);
  v106 = vaddq_s64(v37, a3);
  v125.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v105, v25), vorrq_s8(v105, v26)), v26), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v107 = veorq_s8(v106, a4);
  v108 = veorq_s8(v106, a5);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), a6);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110);
  v112 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v111, v111), a7), v111), a8), v15);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(v114, vandq_s8(vaddq_s64(v114, v114), v16)), v17), v18);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v19);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v119, v20), vorrq_s8(v119, v21)), v21), v22);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v121), v23);
  v123 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL))), v24);
  v125.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v123, v25), vorrq_s8(v123, v26)), v26), v27), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a2)));
  *(v11 + v28 + 10) = vrev64_s8(veor_s8(veor_s8(vrev64_s8(*(v12 + v28)), 0x3C3C3C3C3C3C3C3CLL), *&vqtbl4q_s8(v125, *&STACK[0x3E0])));
  return (*(STACK[0x400] + 8 * (((v9 == v28) * v14) ^ v8)))();
}

uint64_t sub_10002C604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, int a15, char a16, int a17, uint64_t a18, char *a19, int a20, char *a21)
{
  a20 = (v22 + 1470) ^ (((&a17 - 1842658280 - 2 * (&a17 & 0x922B4418)) ^ 0xA0301F88) * v23);
  a21 = &a13;
  a18 = a10;
  a19 = &a16;
  v24 = (*(v21 + 8 * (v22 + 7719)))(&a17);
  return (*(v21 + 8 * ((9053 * (a17 == ((v22 + 1905) ^ 0xF81D76))) ^ v22)))(v24);
}

uint64_t sub_10002C6B4()
{
  v6 = (v0 - 32);
  v7 = (v2 - 32);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v5 + 8 * (((v1 != 32) * v4) ^ v3)))();
}

uint64_t sub_10002C6C4@<X0>(uint64_t a1@<X1>, int a2@<W5>, unsigned int a3@<W8>)
{
  v10 = v9 + (v6 & 0xF) * v7 - ((4469269 * (v9 + (v6 & 0xFu) * v7)) >> 32) * a2;
  v11 = STACK[0x94C];
  LOBYTE(STACK[0x94C]) = *(a1 + v10);
  *(a1 + v10) = v11;
  LOBYTE(v10) = STACK[0xAA5];
  v12 = v9 + a3 % 0xF * v7 + 345 - ((4469269 * (v9 + a3 % 0xF * v7 + 345)) >> 32) * a2;
  LOBYTE(STACK[0xAA5]) = *(a1 + v12);
  v13 = (v5 % 0xE) | 0x220;
  *(STACK[0x5A0] + v12) = v10;
  LOBYTE(v10) = STACK[0x83D];
  v14 = a3 + 1320393833;
  LOBYTE(STACK[0x83D]) = *(STACK[0x5A0] + (v13 * v7 - ((4469269 * (v13 * v7)) >> 32) * a2));
  v15 = (((v5 % 0xE) & 9 ^ v7) + ((v5 % 0xE) & 9)) * v13;
  *(STACK[0x5A0] + (v15 - ((4469269 * v15) >> 32) * a2)) = v10;
  v16 = 345 * (v4 % 0xD) + 188025 - 961 * ((4469269 * (345 * (v4 % 0xD) + 188025)) >> 32);
  v17 = v6 ^ v5;
  LOBYTE(v15) = STACK[0x996];
  v18 = v6 - 1659356021;
  LOBYTE(STACK[0x996]) = *(STACK[0x5A0] + v16);
  *(STACK[0x5A0] + v16) = v15;
  v19 = v4 - a3;
  v20 = v17 + v18;
  LOBYTE(v16) = STACK[0x72E];
  v21 = v18 - v14;
  v22 = v20 + v14;
  v23 = 345 * ((v18 - v14) % 0xCu) + 188370 - 961 * ((4469269 * (345 * ((v18 - v14) % 0xCu) + 188370)) >> 32);
  v24 = (v20 + v14) % 0xB;
  v25 = v19 - 1319245151;
  LOBYTE(STACK[0x72E]) = *(STACK[0x5A0] + v23);
  *(STACK[0x5A0] + v23) = v16;
  v26 = 345 * v24 + 188715 - 961 * ((4469269 * (345 * v24 + 188715)) >> 32);
  LOBYTE(v15) = STACK[0x887];
  LOBYTE(STACK[0x887]) = *(STACK[0x5A0] + v26);
  v27 = v20 + v21;
  v28 = v22 + v20 + v21;
  *(STACK[0x5A0] + v26) = v15;
  v29 = 345 * (v20 % 0xA) + 189060 - 961 * ((4469269 * (345 * (v20 % 0xA) + 189060)) >> 32);
  LOBYTE(v23) = STACK[0x9E0];
  LOBYTE(STACK[0x9E0]) = *(STACK[0x5A0] + v29);
  *(STACK[0x5A0] + v29) = v23;
  v30 = v22 ^ v21;
  v31 = (v22 ^ v25) + v28;
  LOBYTE(v22) = STACK[0x778];
  v32 = 345 * (v25 % 9) + 189405 - 961 * ((4469269 * (345 * (v25 % 9) + 189405)) >> 32);
  LOBYTE(STACK[0x778]) = *(STACK[0x5A0] + v32);
  *(STACK[0x5A0] + v32) = v22;
  LOBYTE(v15) = STACK[0x8D1];
  v33 = 345 * ((v30 - v31) & 7) + 189750 - 961 * ((4469269 * (345 * ((v30 - v31) & 7) + 189750)) >> 32);
  *(STACK[0x5A0] + (v21 & 0x1B1 ^ 0x1B1) + (v21 & 0x1B1)) = *(STACK[0x5A0] + v33);
  *(STACK[0x5A0] + v33) = v15;
  v34 = 345 * ((v28 ^ 0x28632A02u) % 7) + 190095 - 961 * ((4469269 * (345 * ((v28 ^ 0x28632A02u) % 7) + 190095)) >> 32);
  v35 = (v30 - v31) ^ v30 ^ v27;
  LOBYTE(v25) = STACK[0xA2A];
  LOBYTE(STACK[0xA2A]) = *(STACK[0x5A0] + v34);
  *(STACK[0x5A0] + v34) = v25;
  v36 = STACK[0x5A0];
  v37 = 345 * ((v30 ^ v27) % 6) + 190440 - 961 * ((4469269 * (345 * ((v30 ^ v27) % 6) + 190440)) >> 32);
  LOBYTE(v33) = STACK[0x7C2];
  LOBYTE(STACK[0x7C2]) = *(STACK[0x5A0] + v37);
  *(v36 + v37) = v33;
  LOBYTE(v37) = STACK[0x91B];
  v38 = 345 * (v31 % 5) + 190785 - 961 * ((4469269 * (345 * (v31 % 5) + 190785)) >> 32);
  LOBYTE(v31) = ((v30 - v31) ^ v30 ^ v27) + v31;
  LOBYTE(STACK[0x91B]) = *(v36 + v38);
  *(v36 + v38) = v37;
  v39 = 345 * ((v31 + v35) & 3) + 191130;
  v40 = v39 - 961 * ((4469269 * v39) >> 32);
  LOBYTE(v15) = STACK[0xA74];
  LOBYTE(STACK[0xA74]) = *(v36 + v40);
  *(v36 + v40) = v15;
  v41 = v3 ^ 0x1B07;
  LOBYTE(v27) = v31 + (v30 ^ ~v27);
  v42 = 345 * (((v28 ^ 0x28632A02u) + 1224649944 + v35) % 3) + 191475 - 961 * ((4469269 * (345 * (((v28 ^ 0x28632A02u) + 1224649944 + v35) % 3) + 191475)) >> 32);
  LOBYTE(v21) = STACK[0x80C];
  LOBYTE(STACK[0x80C]) = *(v36 + v42);
  *(v36 + v42) = v21;
  v43 = STACK[0x965];
  v44 = (v27 & 1) == 0;
  v45 = 581;
  if (!v44)
  {
    v45 = 926;
  }

  LOBYTE(STACK[0x965]) = *(v36 + v45);
  *(v36 + v45) = v43;
  v46 = *(v36 + ((1585 * (v41 ^ 0x1446)) ^ 0x3489Fu) % 0x3C1);
  v47 = 923 * (*(v36 + 583) ^ 0x2B ^ (((32 * v46) ^ 0x9F) + ((16 * v46) ^ 0x30) - 12)) + 14768;
  v48 = v47 - 928 * ((4628198 * v47) >> 32);
  v49 = *(&off_100755B60 + (v41 ^ 0x14AA)) - 12;
  *(v36 + 253) = *(v36 + (345 * (((v49[v48] >> 4) | (16 * v49[v48])) ^ 0xA1u) + 186029) % 0x3C1);
  return (*(v8 + 8 * v41))();
}

uint64_t sub_10002CD08@<X0>(int a1@<W8>)
{
  v3 = (*(v2 + 8 * (a1 ^ 0x2DA9)))();
  STACK[0x6C8] = 0;
  return v1(v3);
}

uint64_t sub_10002CD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (v20)
  {
    v21 = a4 == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = v21;
  LODWORD(a16) = v19 ^ 0x13CB;
  return (*(a2 + 8 * (((v19 ^ 0x73B ^ (v19 - 1856224986) & 0x6EA3B7FB) * v22) ^ v19)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_10002D858()
{
  v4 = (*(v1 + 8 * (v3 ^ 0x3971)))(*v2, *(v0 + 8 * (v3 ^ 0x1CE3)) - 4);
  **(v0 + 8 * (v3 ^ 0x1CD9)) = v4;
  return (*(v1 + 8 * (((v4 != 0) * ((v3 + 623) ^ 0x1876 ^ ((v3 - 5513) | 0x3B))) ^ v3)))();
}

uint64_t sub_10002D8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v11 = STACK[0x310];
  v12 = (LODWORD(STACK[0x310]) - 648);
  STACK[0x5B0] = v12;
  v13 = (v12 ^ 0x70372194) + a8 + v8 - v10;
  v14 = v8 + 1847734611 < v13;
  if (v8 > 0x91DDCEAC != v13 < 0x6E223153)
  {
    v14 = v13 < 0x6E223153;
  }

  return (*(v9 + 8 * ((30 * v14) ^ v11)))(0xF5A2F1B9B5D0B209, 0xAB3042D228875C41, 0x9508DCB2F33ECE2BLL, 0x64C31C027084DE6CLL, 0x61459D2AF01F24F7, 0x5963B6C555D97F1FLL);
}

void sub_10002DA78()
{
  v0 = *(&off_100755B60 + ((-85 * ((dword_10077E220 - dword_10077DEF0) ^ 0xDF)) ^ byte_100694FA0[byte_10068E0C0[(-85 * ((dword_10077E220 - dword_10077DEF0) ^ 0xDF))] ^ 0x2A]) + 62);
  v1 = -85 * ((dword_10077E220 - *v0) ^ 0xDF);
  v2 = *(&off_100755B60 + (byte_100694EA8[(byte_10068DFC8[v1 - 8] ^ 0xBF) - 8] ^ v1) - 14);
  v3 = *v0 ^ &v5 ^ *v2;
  *v0 = 2054362027 * v3 + 0x1FC86B74B1533AF5;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((v6 + 164749135 - 2 * (v6 & 0x9D1DF4F)) ^ 0x3BCA84DF);
  LOBYTE(v2) = -85 * (*v0 ^ 0xDF ^ *v2);
  v4 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077DEF0) ^ 0xDF)) ^ byte_100683C50[byte_10069D200[(-85 * ((dword_10077E220 + dword_10077DEF0) ^ 0xDF))] ^ 0x1F]) + 191) - 8;
  (*&v4[8 * (byte_10068DECC[(byte_100683950[v2] ^ 0x21) - 12] ^ v2) + 76056])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10002DD44@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(a16 + 40) = STACK[0x440];
  *(a16 + 24) = 108;
  LODWORD(STACK[0x7EC]) = 16257999;
  return (*(v16 + 8 * (((7 * ((a1 + 5434) ^ 0x1AE0) != 6083) * (a1 - 1068)) ^ (a1 + 5434))))();
}

uint64_t sub_10002DDAC@<X0>(int a1@<W8>)
{
  (*(v1 + 8 * (a1 ^ 0x3897)))();
  *(v2 + 24) = 0;
  return sub_1000F5570();
}

uint64_t sub_10002DDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  HIDWORD(a9) = 16257999;
  *(v23 - 216) = a1;
  *(v23 - 192) = a1;
  return (*(v22 + 8 * ((((((((v21 + 1056) | 0x848) + 1964781620) & 0x8AE3CFD3) - 163319640) & 0x9BC0F4F) + 8134) ^ (((v21 + 1056) | 0x848) + 1964781620) & 0x8AE3CFD3)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21);
}

uint64_t sub_10002DDF4(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0x3F8] - 8632;
  LODWORD(STACK[0x380]) = 17168;
  return sub_100140A90(a1, a2, v2);
}

void sub_10002DE14(id a1)
{
  v1 = *(&off_100755B60 + ((-85 * (dword_10077E0F0 ^ 0xDF ^ dword_10077E220)) ^ byte_100683C50[byte_10069D200[(-85 * (dword_10077E0F0 ^ 0xDF ^ dword_10077E220))] ^ 0xE2]) + 113);
  v2 = -85 * ((dword_10077E220 + *v1) ^ 0xDF);
  v3 = *(&off_100755B60 + (byte_100694EA8[(byte_10068DFC8[v2 - 8] ^ 0x6D) - 8] ^ v2) + 184);
  v4 = (*v3 - *v1) ^ &v6;
  *v1 = 2054362027 * v4 + 0x1FC86B74B1533AF5;
  *v3 = 2054362027 * (v4 ^ 0xB4207763EF64BDFLL);
  v5 = 167987495 - 1317436891 * (&v5 ^ 0xB0039876);
  LOBYTE(v3) = -85 * ((*v3 + *v1) ^ 0xDF);
  (*(*(&off_100755B60 + ((-85 * (dword_10077E0F0 ^ 0xDF ^ dword_10077E220)) ^ byte_100683C50[byte_10069D200[(-85 * (dword_10077E0F0 ^ 0xDF ^ dword_10077E220))] ^ 0xD9]) + 49) + (byte_100683C5C[(byte_10069D20C[v3 - 12] ^ 0xD9) - 12] ^ v3) + 9459))(&v5);
}

uint64_t sub_10002DFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = (*(v70 + 8 * (v71 + 3551)))((v71 - 5410) ^ (v69 + 671) ^ LODWORD(STACK[0x6B4]), 0x100004077774924);
  STACK[0xA98] = v72;
  if (v72)
  {
    a69 = 16257999;
  }

  LODWORD(STACK[0xAA4]) = a69;
  return (*(v70 + 8 * (((v72 == 0) * ((v71 + 1005) ^ 0x1BD2)) ^ (v71 - 534))))();
}

void sub_10002E064()
{
  v0 = *(&off_100755B60 + ((-85 * (dword_10077E3A0 ^ 0xDF ^ dword_10077E220)) ^ byte_10068E1C0[byte_100683B50[(-85 * (dword_10077E3A0 ^ 0xDF ^ dword_10077E220))] ^ 0x80]) + 16);
  v1 = *(v0 - 4);
  v2 = *(&off_100755B60 + (byte_100694EA8[(byte_10068DFC8[(-85 * ((dword_10077E220 + v1) ^ 0xDF)) - 8] ^ 1) - 8] ^ (-85 * ((dword_10077E220 + v1) ^ 0xDF))) + 14);
  v3 = (*v2 - v1) ^ &v5;
  *(v0 - 4) = (2054362027 * v3) ^ 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((v6 - 1144590568 - 2 * (v6 & 0xBBC6EF18)) ^ 0x89DDB488);
  LOBYTE(v2) = -85 * (*(v0 - 4) ^ 0xDF ^ *v2);
  v4 = *(&off_100755B60 + ((-85 * (dword_10077E3A0 ^ 0xDF ^ dword_10077E220)) ^ byte_100683C50[byte_10069D200[(-85 * (dword_10077E3A0 ^ 0xDF ^ dword_10077E220))] ^ 0xB1]) + 234) - 8;
  (*&v4[8 * (byte_100683C5C[(byte_10069D20C[v2 - 12] ^ 0xD9) - 12] ^ v2) + 75248])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10002E2EC(uint64_t a1)
{
  v5 = (v4 + 250626959) & 0xF10FA7C1;
  v6 = (*(v2 + 8 * (v5 ^ 0x22D7)))(v1, a1, 0);
  *(v3 - 0x18487EF8CB592F80) = v6;
  return (*(v2 + 8 * (((v6 == 0) * ((v5 - 735914696) & 0x2BDD3F76 ^ 0x1974)) | v5)))();
}

uint64_t sub_10002E374()
{
  STACK[0x868] = 0;
  STACK[0x440] = 0;
  return (*(v0 + 8 * ((676 * (((v1 - 3903) | 0x1101) ^ 0x1980) + 114) ^ (v1 - 661))))();
}

void sub_10002E3C4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10002FBF4(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 26;
  v4 = (*(v2 + 8 * (v1 ^ 0x329B)))(26, 0x100004077774924);
  v5 = STACK[0x400];
  *(a1 + 24) = v4;
  return (*(v5 + 8 * (((v4 == 0) * (((1156 * (v1 ^ 0x1731)) ^ 0xFFFFDD53) + (v1 ^ 0x1000))) ^ v1)))();
}

uint64_t sub_10002FC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  a12 = 476323082 - 1710126949 * ((&a12 & 0xE2DB6375 | ~(&a12 | 0xE2DB6375)) ^ 0x2F3FC71A);
  v14 = (*(v13 + 77088))(&a12);
  return (*(v13 + 8 * ((8238 * (a13 == 16257999)) | 0x4D0u)))(v14);
}

uint64_t sub_10002FD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, char *a19)
{
  v22 = 2048652491 * ((2 * (&a17 & 0x7E094050) - &a17 + 32948143) ^ 0xB04728AA);
  a17 = v22 + ((((v21 - 4680) ^ 0x898) + 318609957) ^ v19) + ((2 * v19) & 0x25FB3FFE) - 302353456;
  a18 = v21 - 4680 - v22 + 3830;
  a19 = &a10 + 4;
  v23 = (*(v20 + 8 * (v21 + 1653)))(&a17);
  return sub_100069F64(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_10002FE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v18 - 895) ^ (33731311 * ((((&a15 | 0x568A423C) ^ 0xFFFFFFFE) - (~&a15 | 0xA975BDC3)) ^ 0x908377E0));
  a17 = a12;
  a18 = &a11;
  (*(v19 + 8 * (v18 ^ 0x3572)))(&a15);
  a17 = a12;
  LODWORD(a18) = v18 - 2008441969 * (((&a15 | 0x565C8E77) - &a15 + (&a15 & 0xA9A37188)) ^ 0x1EC5DA79) + 1538;
  v20 = (*(v19 + 8 * (v18 ^ 0x3580)))(&a15);
  return (*(v19 + 8 * ((38 * (((v18 + 34) ^ (a15 == v18 + 16253876)) & 1)) ^ v18)))(v20);
}

uint64_t sub_10002FF74@<X0>(char a1@<W8>)
{
  v1 = STACK[0x588] + (STACK[0x2A0] ^ 0xDFE7BBF7F5F7E9FBLL) + 0x201844080A081605 + ((STACK[0x2A0] << (a1 - 39)) & 0xBFCF77EFEBEFD3F6);
  v2 = __ROR8__(v1 & 0xFFFFFFFFFFFFFFF8, 8);
  v3 = (0x6AF7234D0CC131D4 - v2) & 0xE17ED4F2859DC12FLL | (v2 + 0x1508DCB2F33ECE2BLL) & 0x1A812B0D7A623ED0;
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
  v13 = (((2 * ((v12 + v11) ^ 0xE7B5DC45273D63A1)) | 0x504C6837B780C63ELL) - ((v12 + v11) ^ 0xE7B5DC45273D63A1) + 0x57D9CBE4243F9CE1) ^ 0x2ED675740CE22449;
  v14 = v13 ^ __ROR8__(v11, 61);
  v15 = __ROR8__(v13, 8);
  v16 = (((2 * (v15 + v14)) | 0x4F1E4801C06BB8FCLL) - (v15 + v14) + 0x5870DBFF1FCA2382) ^ 0xC34C380290B10212;
  v17 = v16 ^ __ROR8__(v14, 61);
  v18 = (__ROR8__(v16, 8) + v17) ^ 0x1A2AEBE44253AF03;
  v19 = __ROR8__((v1 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = (((__ROR8__(v18, 8) + (v18 ^ __ROR8__(v17, 61))) ^ 0xAB3042D228875C41) >> (8 * (v1 & 7u))) ^ *v1;
  v21 = v19 - ((2 * v19 + 0x2A11B965E67D9C56) & 0x86491E2C94CF3D9ALL) - 0x27D29436C2599308;
  v22 = __ROR8__(v21 ^ 0xACDCD2D2571791FLL, 8);
  v21 ^= 0xA28B28BABC870843;
  v23 = (((2 * ((v22 + v21) ^ 0xE86B6D598CE7C62CLL)) & 0x3776BD40C68BCDALL) - ((v22 + v21) ^ 0xE86B6D598CE7C62CLL) - 0x1BBB5EA06345E6ELL) ^ 0xF2B25093F211D8C0;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ 0xF5A2F1B9B5D0B209;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ 0x5963B6C555D97F1FLL;
  v28 = v27 ^ __ROR8__(v26, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ 0x61459D2AF01F24F7;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x64C31C027084DE6CLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x1A2AEBE44253AF03;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((((v35 + v34 - ((2 * (v35 + v34)) & 0x46C4DEB32D067766) + 0x23626F5996833BB3) ^ 0x88522D8BBE0467F2) >> (8 * ((v1 + 1) & 7))) ^ *(v1 + 1)) << 48) | (v20 << 56);
  v37 = __ROR8__((v1 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v38 = ((2 * (v37 - 0x6AF7234D0CC131D5)) | 0xE988EE55C850EEE4) - (v37 - 0x6AF7234D0CC131D5) + 0xB3B88D51BD7888ELL;
  v39 = v38 ^ 0xBD2D35118B3E90A0;
  v38 ^= 0x156BD08612C8E1FCuLL;
  v40 = (__ROR8__(v39, 8) + v38) ^ 0xE49D77DF873DBF7ELL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (v42 + v41 - ((2 * (v42 + v41)) & 0x6A1EDDA6EAF44D6) - 0x7CAF0912C8A85D95) ^ 0x76F2075482871062;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x5963B6C555D97F1FLL;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x61459D2AF01F24F7;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x64C31C027084DE6CLL;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0x1A2AEBE44253AF03;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  v54 = v36 | (((((0x3F29605156666B4FLL - ((v53 + v52) | 0x3F29605156666B4FLL) + ((v53 + v52) | 0xC0D69FAEA99994B0)) ^ 0x6BE6DD7C811EC8F1) >> (8 * ((v1 + 2) & 7))) ^ *(v1 + 2)) << 40);
  v55 = (__ROR8__((v1 + 3) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v56 = v55 ^ 0x4DE9423B6F16E7D2;
  v55 ^= 0xE5AFA7ACF6E0968ELL;
  v57 = (__ROR8__(v56, 8) + v55) ^ 0xE49D77DF873DBF7ELL;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ 0xF5A2F1B9B5D0B209;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0x5963B6C555D97F1FLL;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (0x53DC6F193EC14EFCLL - ((v63 + v62) | 0x53DC6F193EC14EFCLL) + ((v63 + v62) | 0xAC2390E6C13EB103)) ^ 0xCD660DCC312195F4;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ 0x64C31C027084DE6CLL;
  v67 = __ROR8__(v66, 8);
  v68 = v66 ^ __ROR8__(v65, 61);
  v69 = (v67 + v68 - ((2 * (v67 + v68)) & 0xE3F30D59F9F95424) + 0x71F986ACFCFCAA12) ^ 0x6BD36D48BEAF0511;
  v70 = __ROR8__((v1 + 4) & 0xFFFFFFFFFFFFFFF8, 8);
  v71 = v54 | (((((__ROR8__(v69, 8) + (v69 ^ __ROR8__(v68, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v1 + 3) & 7))) ^ *(v1 + 3)) << 32);
  v72 = -2 - (((0x6AF7234D0CC131D4 - v70) | 0x44BA01A51A183DE0) + ((v70 + 0x1508DCB2F33ECE2BLL) | 0xBB45FE5AE5E7C21FLL));
  v73 = v72 ^ 0xD53439E750EDA32;
  v72 ^= 0xA515A609ECF8AB6ELL;
  v74 = __ROR8__(v73, 8);
  v75 = (((2 * ((v74 + v72) ^ 0xBE8B2A9C9DF400CFLL)) & 0xAA23D21ABB2D7C00) - ((v74 + v72) ^ 0xBE8B2A9C9DF400CFLL) + 0x2AEE16F2A26941FFLL) ^ 0x70F84BB1B8A0FE4ELL;
  v76 = v75 ^ __ROR8__(v72, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (((2 * (v77 + v76)) & 0x7D84ABA23E9CFE7ELL) - (v77 + v76) - 0x3EC255D11F4E7F40) ^ 0x349F5B97556132C9;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = __ROR8__(v78, 8);
  v81 = (0x2BB31A89BEAA7091 - ((v80 + v79) | 0x2BB31A89BEAA7091) + ((v80 + v79) | 0xD44CE57641558F6ELL)) ^ 0x8D2F53B3148CF071;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = __ROR8__(v81, 8);
  v84 = (((2 * (v83 + v82)) & 0x56507D4A3E0F7B40) - (v83 + v82) - 0x2B283EA51F07BDA1) ^ 0xB5925C7010E766A8;
  v85 = v84 ^ __ROR8__(v82, 61);
  v86 = __ROR8__(v84, 8);
  v87 = __ROR8__((((2 * (v86 + v85)) & 0xEEF74AFFBBE4930CLL) - (v86 + v85) + 0x8845A80220DB679) ^ 0x6C47468252896815, 8);
  v88 = (((2 * (v86 + v85)) & 0xEEF74AFFBBE4930CLL) - (v86 + v85) + 0x8845A80220DB679) ^ 0x6C47468252896815 ^ __ROR8__(v85, 61);
  v89 = (((2 * (v87 + v88)) & 0x29B65A41F14458CCLL) - (v87 + v88) - 0x14DB2D20F8A22C67) ^ 0xF10E393B450E7C9ALL;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = __ROR8__(v89, 8);
  v92 = v71 & 0xFFFFFFFF00FFFFFFLL | (((((v91 + v90 - ((2 * (v91 + v90)) & 0xDE26E3A15DEF6F6ALL) + 0x6F1371D0AEF7B7B5) ^ 0xC42333028670EBF4) >> (8 * ((v1 + 4) & 7))) ^ *(v1 + 4)) << 24);
  v93 = __ROR8__((v1 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v94 = ((2 * v93 + 0x2A11B965E67D9C56) & 0xCB0FE93C98309366) - v93 + 0x56F2EAEC0A8E821;
  v95 = v94 ^ 0xD391495ADCF1519ELL;
  v94 ^= 0x7BD7ACCD450720C2uLL;
  v96 = __ROR8__(v95, 8);
  v97 = __ROR8__((0x330A67D5B25F0DD9 - ((v96 + v94) ^ 0x8FF42FE233FDEFE0 | 0x330A67D5B25F0DD9) + ((v96 + v94) ^ 0x8FF42FE233FDEFE0 | 0xCCF5982A4DA0F226)) ^ 0xA79CC017F960A2B8, 8);
  v98 = (0x330A67D5B25F0DD9 - ((v96 + v94) ^ 0x8FF42FE233FDEFE0 | 0x330A67D5B25F0DD9) + ((v96 + v94) ^ 0x8FF42FE233FDEFE0 | 0xCCF5982A4DA0F226)) ^ 0xA79CC017F960A2B8 ^ __ROR8__(v94, 61);
  v99 = (v97 + v98) ^ 0xF5A2F1B9B5D0B209;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0x5963B6C555D97F1FLL;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = __ROR8__(v101, 8);
  v104 = (((2 * (v103 + v102)) | 0x6B60C641F567F5AALL) - (v103 + v102) - 0x35B06320FAB3FAD5) ^ 0x54F5FE0A0AACDE22;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = (__ROR8__(v104, 8) + v105) ^ 0x64C31C027084DE6CLL;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = (__ROR8__(v106, 8) + v107) ^ 0x1A2AEBE44253AF03;
  v109 = v92 & 0xFFFFFFFFFF00FFFFLL | (((((__ROR8__(v108, 8) + (v108 ^ __ROR8__(v107, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v1 + 5) & 7))) ^ *(v1 + 5)) << 16);
  v110 = (__ROR8__((v1 + 6) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v111 = v110 ^ 0x4DE9423B6F16E7D2;
  v110 ^= 0xE5AFA7ACF6E0968ELL;
  v112 = (__ROR8__(v111, 8) + v110) ^ 0xE49D77DF873DBF7ELL;
  v113 = __ROR8__(v112, 8);
  v114 = v112 ^ __ROR8__(v110, 61);
  v115 = (v113 + v114 - ((2 * (v113 + v114)) & 0x10D88C22F14EF5CLL) + 0x86C461178A77AELL) ^ 0xF52435D8A25AC5A7;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0x5963B6C555D97F1FLL;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = __ROR8__(v117, 8);
  v120 = (((2 * (v119 + v118)) | 0xF8F4D7410A173B82) - (v119 + v118) - 0x7C7A6BA0850B9DC1) ^ 0x1D3FF68A7514B936;
  v121 = v120 ^ __ROR8__(v118, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0x64C31C027084DE6CLL;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = __ROR8__(v122, 8);
  v125 = v109 & 0xFFFFFFFFFFFF00FFLL | (((((__ROR8__((((v124 + v123) & 0x865B83655FEF6F5 ^ 0x2498320576F0D5) + ((v124 + v123) & 0xF79A47C9AA01090ALL ^ 0xC68006C000000803) - 1) ^ 0xDC8E7516472557D4, 8) + ((((v124 + v123) & 0x865B83655FEF6F5 ^ 0x2498320576F0D5) + ((v124 + v123) & 0xF79A47C9AA01090ALL ^ 0xC68006C000000803) - 1) ^ 0xDC8E7516472557D4 ^ __ROR8__(v123, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v1 + 6) & 7))) ^ *(v1 + 6)) << 8);
  v126 = *(v1 + 7);
  v1 += 7;
  v127 = __ROR8__(v1 & 0xFFFFFFFFFFFFFFF8, 8);
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
  v140 = (v139 + v138 - ((2 * (v139 + v138)) & 0xA996373FDA7782A4) + 0x54CB1B9FED3BC152) ^ 0x358E86B51D24E5A5;
  v141 = v140 ^ __ROR8__(v138, 61);
  v142 = (__ROR8__(v140, 8) + v141) ^ 0x64C31C027084DE6CLL;
  v143 = __ROR8__(v142, 8);
  v144 = v142 ^ __ROR8__(v141, 61);
  v145 = (v143 + v144 - ((2 * (v143 + v144)) & 0xAB9BCCB5A89BD69ALL) + 0x55CDE65AD44DEB4DLL) ^ 0x4FE70DBE961E444ELL;
  v146 = v145 ^ __ROR8__(v144, 61);
  v147 = __ROR8__(v145, 8);
  v148 = v125 | ((((((2 * (v147 + v146)) & 0x970A9B9F1F62DE94) - (v147 + v146) - 0x4B854DCF8FB16F4BLL) ^ 0x1F4AF0E258C9CCF4) >> (8 * (v1 & 7u))) ^ v126);
  STACK[0x540] = v148 + 0x4789E5A74F535ADDLL - ((2 * v148) & 0x8F13CB4E9EA6B5BALL);
  return sub_100030E60();
}

uint64_t sub_100030E60@<X0>(int a1@<W8>)
{
  STACK[0x660] = STACK[0x998];
  v3 = LODWORD(STACK[0x98C]) != (a1 ^ 0xB5E) + 197493267 || LOWORD(STACK[0x992]) != (1359 * (a1 ^ 0x1C1B) + 27185);
  return (*(v1 + 8 * ((150 * v3) ^ a1)))();
}

uint64_t sub_100030ED0@<X0>(uint64_t a1@<X8>)
{
  STACK[0x640] = 0;
  STACK[0x478] = 0;
  STACK[0x500] = *(v2 + 8 * v1);
  return sub_1000D57DC(a1);
}

uint64_t sub_100030F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  a12 = 476323082 - 1710126949 * (&a12 ^ 0x321B5B90);
  v15 = (*(v13 + 77088))(&a12);
  return (*(v13 + 8 * (((32 * (a13 == 16257999)) | ((a13 == 16257999) << 8)) ^ v14)))(v15);
}

uint64_t sub_10003105C()
{
  STACK[0xA08] = v1;
  v4 = STACK[0x7B8];
  STACK[0xA10] = STACK[0x7B8];
  return (*(v3 + 8 * (((v1 - v4 > 9) * ((41 * (v0 ^ 0x975) + 2488) ^ v2)) ^ v0)))();
}

uint64_t sub_1000310F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v16 = 6 * (a8 ^ 0xE76);
  LODWORD(STACK[0x3C0]) = ((v16 - 1687) | 0x800) - 395;
  return (*(v15 + 8 * (((8 * ((((a15 & 8) == 0) ^ (v16 - 1)) & 1)) & 0xDF | (32 * ((((a15 & 8) == 0) ^ (v16 - 1)) & 1))) ^ v16)))();
}

uint64_t sub_100031200()
{
  v7 = v4;
  v8 = (v0 + 4189) ^ (1824088897 * (&v6 ^ 0x5869D362));
  (*(v1 + 8 * ((v0 + 3153) ^ 0x3902u)))(&v6);
  v8 = (v0 + 4189) ^ (1824088897 * (((&v6 | 0x4337665B) + (~&v6 | 0xBCC899A4)) ^ 0x1B5EB538));
  v7 = v5;
  (*(v1 + 8 * ((v0 - 2538) ^ 0x23DF)))(&v6);
  return v0 + 3153 + (v3 ^ 0xDFF89FEF) + ((2 * v3) & 0xBFF13FDE) + 537346947;
}

void sub_100031364(_DWORD *a1)
{
  v1 = *a1 ^ (956911519 * ((-1067761761 - (a1 | 0xC05B3F9F) + (a1 | 0x3FA4C060)) ^ 0xD535B065));
  v5 = v1 + 869295389 * ((2 * (&v5 & 0x74EAC7F8) - &v5 + 185939972) ^ 0xBA411457) - 379703319;
  v2 = *(&off_100755B60 + (v1 ^ 0x19E)) - 8;
  (*&v2[8 * (v1 + 9571)])(&v5);
  v4 = v6 != 33 && **(&off_100755B60 + (v1 | 0x16)) == 96;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1000314F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  v5 = STACK[0x538];
  STACK[0x7A8] = STACK[0x538];
  return (*(v4 + 8 * (((((71 * (a4 ^ 0x1FF6)) ^ 0xFFFFEA64) + a4 - 7906) * (v5 == 0)) ^ a4)))(a1, a2, a3, 16215976);
}

uint64_t sub_100031540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v24 = (((&a15 ^ 0xA130048 | 0x916CA2B5) + (&a15 ^ 0x904C2215 | 0x6E935D4A)) ^ 0xC236F13E) * v20;
  a16 = v24 + 364398105;
  a17 = a14;
  a18 = &a13;
  a19 = -654855621 - v24;
  a20 = v24 + v23 + 1674574832;
  v25 = (*(v22 + 8 * (v23 ^ 0x3532)))(&a15);
  return (*(v22 + 8 * ((88 * (a15 == ((1553 * (((v23 - 4082) | 0x603) ^ 0x6C8)) ^ (v21 + 96)))) ^ v23)))(v25);
}

uint64_t sub_100031624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char *a19, int a20, unsigned int a21)
{
  a21 = v22 + 1317436891 * ((-1228944066 - (&a19 | 0xB6BFCD3E) + (&a19 | 0x494032C1)) ^ 0xF943AAB7) + 5899;
  a19 = &a16;
  v23 = (*(v21 + 8 * (v22 ^ 0x2D6A)))(&a19);
  return (*(v21 + 8 * (((a20 == ((v22 + 861902550) & 0x20715F) + 16253642) * (((v22 + 1560493150) | 0x4CA200) ^ 0x5D4FE10D)) ^ v22)))(v23);
}

uint64_t sub_10003171C(uint64_t a1, uint64_t a2)
{
  v2 = STACK[0x3F8] - 8541;
  LODWORD(STACK[0x360]) = 17168;
  return sub_100140A90(a1, a2, v2);
}

uint64_t sub_1000317A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a15 = &a11;
  a17 = 1317436891 * (&a15 ^ 0xB0039876) + 8154;
  v20 = (*(v17 + 77096))(&a15);
  return (*(v17 + 8 * ((6843 * (a16 == v18)) ^ v19)))(v20);
}

uint64_t sub_1000318E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  v47 = STACK[0x3F8] + 169;
  v48 = (v45 ^ v46) + a45;
  STACK[0xA40] = v48;
  return (*(STACK[0x400] + 8 * (v47 ^ (39 * (v48 > a36)))))();
}

uint64_t sub_1000319DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, unsigned int a14)
{
  a13 = a9;
  a14 = (v17 + v16) ^ (((489902743 - (&a12 | 0x1D335297) + (&a12 | 0xE2CCAD68)) ^ 0xBAA57E0A) * v15);
  v18 = (*(v14 + 8 * (v17 + v16 + 1266)))(&a12);
  return sub_100031A40(v18);
}

uint64_t sub_100031A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, unsigned int a14)
{
  a13 = a10;
  a14 = (v17 + v16) ^ (((2 * (&a12 & 0x2161CE8) - &a12 - 35003632) ^ 0xA5803072) * v15);
  v18 = (*(v14 + 8 * (v17 ^ 0x60293BE3)))(&a12);
  return sub_100031AA4(v18);
}

uint64_t sub_100031AE8@<X0>(unsigned int a1@<W3>, __int16 a2@<W8>)
{
  v7 = (16 * *(v5 + (158 * (a1 >> 4) - 6286 - 969 * (((158 * (a1 >> 4) - 6286) & 0xFFFEu) / 0x3C9)))) ^ 0x90;
  v8 = *(v6 + (v2 + 353 * (*(v5 + ((a1 & 0xF) * (v3 - 4828) - 6286) % 0x3C9u) ^ 0x46 ^ (v7 - ((2 * v7) & 0x20) + 25)) - 1628) % 0x3B0);
  *(v5 + (158 * a1 + 18644 - 969 * (((158 * a1 + 18644) & 0xFFFEu) / 0x3C9))) = (16 * *(v5 + (a2 + 158 * ((v8 >> 6) ^ (v8 >> 4) ^ 6)) % 0x3C9u)) ^ 0x89;
  return (*(v4 + 8 * ((13284 * (a1 == 255)) ^ v3)))();
}

uint64_t sub_100031C98()
{
  v2 = STACK[0x5F0];
  STACK[0x7C0] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v2 != 0) * ((((v0 + 157) | 0x2181) ^ 0x244A) - 444)) ^ ((v0 + 157) | 0x2181))))();
}

uint64_t sub_100031D10(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x394]) = 86;
  LODWORD(STACK[0x378]) = 1;
  v15 = (v13 ^ v9) + v11 + ((((v13 ^ v9) & 0xC5B253ED ^ 0xC5B253ED) + ((v13 ^ v9) & 0xC5B253ED)) ^ 0xE002786B);
  return (*(v14 + 8 * v8))((a4 ^ (v10 - 749967392)) + a8 - 1954959434 - 1219449489, v15 + 17753045 + v15 + ((v12 - (v13 ^ v9)) ^ v13 ^ v9), v15 - 1219449489, ((v12 - (v13 ^ v9)) ^ v13 ^ v9) - (v13 ^ v9) - 1221626861);
}

uint64_t sub_100031E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, char *a16, int a17, unsigned int a18)
{
  a18 = 1317436891 * ((((2 * &a16) | 0xCB71AD22) - &a16 - 1706612369) ^ 0xD5BB4EE7) + 8154;
  a16 = &a14;
  v21 = (*(v18 + 77096))(&a16);
  return (*(v18 + 8 * ((59 * (a17 == v20)) ^ v19)))(v21);
}

uint64_t sub_100031EC0@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W5>, unsigned int a4@<W8>)
{
  v11 = v7 + 32;
  v12 = (v11 ^ v9 ^ (2 * (v6 ^ a4))) + v5;
  v13 = *(v4 + v12 - 15);
  v14 = *(v4 + v12 - 31);
  v15 = a1 + v12;
  *(v15 - 15) = v13;
  *(v15 - 31) = v14;
  return (*(v10 + 8 * (((v8 == v11) * a2) ^ (a3 + v6 + 3288))))();
}

uint64_t sub_100031F00@<X0>(int a1@<W8>, int8x16_t a2@<Q5>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int8x16_t *a22)
{
  v25 = (v23 + 908);
  v26 = vld1q_dup_f32(v25);
  v27 = (a1 + 1155363985) & 0xBB2287BD;
  v28.i64[0] = 0x8000000080000000;
  v28.i64[1] = 0x8000000080000000;
  v29.i64[0] = 0x100000001;
  v29.i64[1] = 0x100000001;
  a2.i32[0] = *(v23 + 4 * (v27 - 1753));
  a2.i32[1] = a22->i32[2];
  a2.i32[2] = a22->i32[3];
  v30 = vextq_s8(v26, a2, 0xCuLL);
  v31 = a2;
  v31.i32[3] = a22[1].i32[0];
  v32 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v31, vnegq_f32(v29)), vandq_s8(v30, v28)), 1uLL), *(a22 - 908));
  v30.i32[0] = *(v22 + 4 * (*(v23 + 4 * (v27 - 1753)) & 1));
  v30.i32[1] = *(v22 + 4 * (a22->i32[2] & 1));
  v30.i32[2] = *(v22 + 4 * (a22->i32[3] & 1));
  v30.i32[3] = *(v22 + 4 * (v31.i8[12] & 1));
  *a22 = veorq_s8(vaddq_s32(vsubq_s32(v32, vandq_s8(vaddq_s32(v32, v32), vdupq_n_s32(0x52CCE0Eu))), vdupq_n_s32(0x82966707)), v30);
  return (*(v24 + 8 * a1))();
}

uint64_t sub_100031FF8(uint64_t a1)
{
  v2 = 2048652491 * ((-2 - ((~a1 | 0x7E7DB4420FC06E9CLL) + (a1 | 0x81824BBDF03F9163))) ^ 0xAA993BCEBE71F999);
  result = (**(&off_100755B60 + ((*a1 - v2) & 0x4881CA5C)))((*(a1 + 8) + v2) ^ 0x4BDB88A3AECF6862);
  *(a1 + 4) = (result ^ 0x67FF37FF) - 1728521264 + ((2 * result) & 0xCFFE6FFE);
  return result;
}

void sub_1000320DC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1000322A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, __int16 a16, char a17, int a18, char a19, uint64_t a20, uint64_t a21, char a22, __int16 a23, char a24, int a25, unsigned int a26, uint64_t a27, char *a28, unsigned int a29, char *a30)
{
  v32 = (v30 ^ 0xC4E) + 56;
  a29 = v32 ^ (1710126949 * (((&a25 | 0x79D156D2) - &a25 + (&a25 & 0x862EA928)) ^ 0x4BCA0D42));
  a27 = a20;
  a28 = &a22;
  a30 = &a19;
  v33 = (v30 ^ 0xC4E) + 6305;
  (*(v31 + 8 * v33))(&a25);
  a29 = v32 ^ (1710126949 * ((&a25 & 0xE6BF67A7 | ~(&a25 | 0xE6BF67A7)) ^ 0x2B5BC3C8));
  a30 = &a17;
  a27 = a20;
  a28 = &a24;
  (*(v31 + 8 * v33))(&a25);
  a26 = ((v30 ^ 0xC4E) - 50) ^ (33731311 * ((&a25 & 0x8E8FFC93 | ~(&a25 | 0x8E8FFC93)) ^ 0x4886C94F));
  a27 = a20;
  a28 = &a15;
  (*(v31 + 8 * ((v30 ^ 0xC4E) + 6299)))(&a25);
  a27 = a20;
  LODWORD(a28) = (v30 ^ 0xC4E) - 2008441969 * ((((2 * &a25) | 0xB34B8A) - &a25 - 5875141) ^ 0x48C0F1CB) + 2383;
  v34 = (*(v31 + 8 * (v30 ^ 0x251B)))(&a25);
  return (*(v31 + 8 * ((10567 * (a25 == (v30 ^ 0xC4E) + 16254721)) ^ v30 ^ 0xC4E)))(v34);
}

uint64_t sub_100032604@<X0>(uint64_t a1@<X8>)
{
  v8 = v5 - 1;
  *(v7 + v8) = *(v1 + (((v2 ^ 0x1A28u) - 1257) & v8)) ^ *(a1 + v8) ^ *(v3 + (((v2 ^ 0x1A28u) - 1257) & v8)) ^ *(v4 + (((v2 ^ 0x1A28u) - 1257) & v8)) ^ (-13 * (((v2 ^ 0x28) + 23) & v8));
  return (*(v6 + 8 * ((46 * (v8 != 0)) ^ (v2 - 3722))))();
}

uint64_t sub_100032664@<X0>(int a1@<W8>)
{
  v2 = STACK[0x438];
  STACK[0x508] = *(v1 + 8 * a1);
  return (*(v1 + 8 * (((((v2 == 0) ^ (a1 + 108)) & 1) * (((a1 - 188) | 0x1582) - 6078)) ^ (a1 + 4717))))();
}

uint64_t sub_10003268C@<X0>(uint64_t a1@<X0>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = a2 - 5594;
  v7 = (a2 - 5699) | 0x1D0;
  v8 = (*(v5 + 8 * ((a2 - 5594) ^ 0x21CB)))(a1, 1281988702);
  *a5 = v8;
  return (*(v5 + 8 * (((v8 != 0) * ((v6 ^ 0x18E8) - 8551 + v7)) ^ v6)))();
}

uint64_t sub_100032778(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x8F0]) = a4;
  STACK[0x948] = STACK[0x5B0];
  STACK[0x8E8] = *(v5 + 8 * (v4 - 9030));
  return sub_1001606F4();
}

uint64_t sub_1000328E4@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v80 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v81 = v66 - v73 - 5;
  v82 = v66 - v73 - 6;
  v83 = v66 - v73 - 7;
  v84.i64[0] = v65 + v81;
  v84.i64[1] = v65 + v82;
  v85 = v66 - v73 - 8;
  v86.i64[0] = v65 + v83;
  v86.i64[1] = v65 + v85;
  v87.i64[0] = a9 + v83;
  v87.i64[1] = a9 + v85;
  v88.i64[0] = a9 + v81;
  v88.i64[1] = a9 + v82;
  v89 = vandq_s8(v86, v80);
  v90 = vandq_s8(v84, v80);
  v645 = vdupq_n_s64(v75);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v645);
  v92 = vdupq_n_s64(v69);
  v93 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v645);
  v94 = vdupq_n_s64(v70);
  v95 = vaddq_s64(vsubq_s64(vorrq_s8(v93, v92), vorrq_s8(v93, v94)), v94);
  v96 = vdupq_n_s64(v71);
  *&STACK[0x240] = v96;
  v97 = vaddq_s64(vsubq_s64(vorrq_s8(v91, v92), vorrq_s8(v91, v94)), v94);
  v98 = veorq_s8(v97, v96);
  v99 = veorq_s8(v95, v96);
  v100 = vdupq_n_s64(v72);
  v101 = veorq_s8(v95, v100);
  v102 = veorq_s8(v97, v100);
  v103 = v100;
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v102);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v101);
  v106 = vdupq_n_s64(a1);
  v647 = vdupq_n_s64(a2);
  v107 = vdupq_n_s64(a3);
  v108 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v105, v105), v106), v105), v647), v107);
  v109 = vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v104, v104), v106), v104), v647), v107);
  v111 = v107;
  v112 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v113 = veorq_s8(v108, v109);
  v114 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v113);
  v116 = vaddq_s64(v114, v112);
  v117 = vdupq_n_s64(a4);
  *&STACK[0x250] = v117;
  v118 = vdupq_n_s64(a5);
  v119 = vdupq_n_s64(a6);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v116, v116), v117), v116), v118), v119);
  v121 = v119;
  v650 = v119;
  v122 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v123 = vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL);
  v124 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v115, v115), v117), v115), v118), v121);
  v125 = veorq_s8(v124, v123);
  v126 = veorq_s8(v120, v122);
  v127 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v126);
  v129 = vaddq_s64(v127, v125);
  v130 = vdupq_n_s64(a7);
  *&STACK[0x350] = v130;
  v131 = veorq_s8(v129, v130);
  v132 = veorq_s8(v128, v130);
  v133 = vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL);
  v134 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v135 = veorq_s8(v131, v133);
  v136 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v135);
  v137 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v134);
  v138 = vdupq_n_s64(a8);
  *&STACK[0x310] = v138;
  v139 = vdupq_n_s64(0xEB518519F26B841CLL);
  *&STACK[0x370] = v139;
  v140 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v136, v136), v138), v136), v139);
  v141 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v137, v137), v138), v137), v139);
  v142 = vdupq_n_s64(0xCE2C7D00F8642E60);
  v143 = veorq_s8(v141, v142);
  v144 = v142;
  *&STACK[0x360] = v142;
  v145 = vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL);
  v146 = veorq_s8(v140, v144);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v148 = veorq_s8(v143, v145);
  v149 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v148);
  v151 = vdupq_n_s64(0x2E769D09049CAA6AuLL);
  v152 = veorq_s8(vaddq_s64(v149, v147), v151);
  v153 = vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL);
  v154 = vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL);
  v155 = veorq_s8(v150, v151);
  v156 = veorq_s8(v155, v154);
  v157 = veorq_s8(v152, v153);
  v158 = vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v157);
  v160 = vdupq_n_s64(0xB26D991E94D41A74);
  *&STACK[0x300] = v160;
  v161 = veorq_s8(vaddq_s64(v158, v156), v160);
  v162 = veorq_s8(v159, v160);
  v163 = vdupq_n_s64(0x113E4DE7F9261D5EuLL);
  v164 = vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL);
  v165 = vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL);
  v166 = vandq_s8(v88, v80);
  v167 = vandq_s8(v87, v80);
  v168 = v80;
  v169 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), *&STACK[0x3A0]);
  v170 = *&STACK[0x3A0];
  v171 = vdupq_n_s64(0xDBB8563E21D61BA0);
  v172 = vdupq_n_s64(0x38403E00000281uLL);
  v173 = vdupq_n_s64(0x2047A9C1DE29E45FuLL);
  *&STACK[0x2E0] = v171;
  *&STACK[0x2F0] = v173;
  v174 = v79;
  v175 = vdupq_n_s64(0x44520400020E41EuLL);
  v176 = vaddq_s64(veorq_s8(vandq_s8(v169, v173), v175), veorq_s8(vandq_s8(v169, v171), v172));
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v166, 0x38uLL), v166, 8uLL), v170);
  v166.i64[0] = -1;
  v166.i64[1] = -1;
  v178 = vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v177, v173), v175), veorq_s8(vandq_s8(v177, v171), v172)), v166);
  v179.i64[0] = -1;
  v179.i64[1] = -1;
  v180 = vdupq_n_s64(0x499422456F36014CuLL);
  v181 = veorq_s8(v178, v180);
  v182 = v180;
  *&STACK[0x2C0] = v180;
  *&STACK[0x2D0] = v175;
  v183 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v184 = vaddq_s64(v176, v179);
  v185 = veorq_s8(v184, v182);
  v186 = vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL);
  v187 = vdupq_n_s64(0xE1D2C7D2F6C07010);
  v188 = veorq_s8(v178, v187);
  v189 = v187;
  *&STACK[0x2B0] = v187;
  v190 = vaddq_s64(v183, v188);
  v191 = vsraq_n_u64(vshlq_n_s64(v188, 3uLL), v188, 0x3DuLL);
  v192 = veorq_s8(v184, v189);
  v193 = veorq_s8(vaddq_s64(v186, v192), v77);
  v194 = veorq_s8(v193, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v195 = vsraq_n_u64(vshlq_n_s64(v193, 0x38uLL), v193, 8uLL);
  v196 = vdupq_n_s64(0xF760D90C036CF151);
  v197 = vdupq_n_s64(0x703A61C38953CBECuLL);
  v198 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v161, v161), v163), v161), v196), v197);
  v199 = veorq_s8(v198, v165);
  v200 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v201 = veorq_s8(v190, *&STACK[0x340]);
  v202 = veorq_s8(v201, v191);
  v203 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v204 = vaddq_s64(v195, v194);
  v205 = vsraq_n_u64(vshlq_n_s64(v194, 3uLL), v194, 0x3DuLL);
  *&STACK[0x210] = v196;
  v206 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v162, v162), v163), v162), v196), v197);
  v648 = v197;
  v207 = veorq_s8(v206, v164);
  v208 = vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL);
  v209 = vaddq_s64(v203, v202);
  v210 = vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL);
  v211 = vdupq_n_s64(v68);
  v212 = veorq_s8(v209, v211);
  v213 = v211;
  *&STACK[0x270] = v211;
  v214 = veorq_s8(v212, v210);
  v215 = vsraq_n_u64(vshlq_n_s64(v212, 0x38uLL), v212, 8uLL);
  v216 = veorq_s8(v204, v213);
  v217 = veorq_s8(v216, v205);
  v218 = vsraq_n_u64(vshlq_n_s64(v216, 0x38uLL), v216, 8uLL);
  v219 = vaddq_s64(v215, v214);
  v220 = vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL);
  v221 = vaddq_s64(v218, v217);
  v222 = vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL);
  v223 = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  v224 = veorq_s8(v221, v223);
  *&STACK[0x280] = v223;
  v225 = veorq_s8(v224, v222);
  v226 = vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL);
  v227 = veorq_s8(v219, v223);
  v228 = veorq_s8(v227, v220);
  v229 = vsraq_n_u64(vshlq_n_s64(v227, 0x38uLL), v227, 8uLL);
  v230 = vaddq_s64(v226, v225);
  v231 = vsraq_n_u64(vshlq_n_s64(v225, 3uLL), v225, 0x3DuLL);
  v232 = vaddq_s64(v208, v207);
  v233 = veorq_s8(vaddq_s64(v229, v228), v78);
  v234 = veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL));
  v235 = vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL);
  v236 = veorq_s8(v230, v78);
  v237 = veorq_s8(v236, v231);
  v238 = vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL);
  v239 = vaddq_s64(v235, v234);
  v240 = vsraq_n_u64(vshlq_n_s64(v234, 3uLL), v234, 0x3DuLL);
  v241 = vaddq_s64(v200, v199);
  v242 = vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL);
  v243 = veorq_s8(vaddq_s64(v238, v237), v174);
  v244 = veorq_s8(v243, v242);
  v245 = vsraq_n_u64(vshlq_n_s64(v243, 0x38uLL), v243, 8uLL);
  v246 = vdupq_n_s64(0x1B79F8777AE58672uLL);
  *&STACK[0x230] = v246;
  v247 = vsubq_s64(v241, vandq_s8(vaddq_s64(v241, v241), v246));
  v248 = veorq_s8(v239, v174);
  v249 = veorq_s8(v248, v240);
  v250 = vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL);
  v251 = vaddq_s64(v245, v244);
  v252 = vsraq_n_u64(vshlq_n_s64(v244, 3uLL), v244, 0x3DuLL);
  v253 = vaddq_s64(v250, v249);
  v254 = vsraq_n_u64(vshlq_n_s64(v249, 3uLL), v249, 0x3DuLL);
  v255 = vdupq_n_s64(v67);
  v256 = veorq_s8(v253, v255);
  v257 = v255;
  *&STACK[0x260] = v255;
  v258 = veorq_s8(v256, v254);
  v259 = vsraq_n_u64(vshlq_n_s64(v256, 0x38uLL), v256, 8uLL);
  v260 = veorq_s8(v251, v257);
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v260, 0x38uLL), v260, 8uLL), veorq_s8(v260, v252));
  v262 = vaddq_s64(v259, v258);
  v263 = vdupq_n_s64(0x6D6EFEEB143C2D7CuLL);
  v264 = vdupq_n_s64(v74);
  *&STACK[0x390] = v263;
  v265 = vsubq_s64(vorrq_s8(v261, v263), vorrq_s8(v261, v264));
  v266 = vsubq_s64(vorrq_s8(v262, v263), vorrq_s8(v262, v264));
  v267 = vdupq_n_s64(0xDBCFC3BBD72C339uLL);
  v268 = vaddq_s64(vsubq_s64(v232, vandq_s8(vaddq_s64(v232, v232), v246)), v267);
  v269 = vdupq_n_s64(0x6A785729F20EEA42uLL);
  *&STACK[0x290] = v269;
  *&STACK[0x2A0] = v267;
  v270 = vdupq_n_s64(0x38uLL);
  v271 = vshlq_u64(veorq_s8(v268, v269), vnegq_s64(vandq_s8(vshlq_n_s64(v84, 3uLL), v270)));
  v272 = vshlq_u64(veorq_s8(vaddq_s64(v247, v267), v269), vnegq_s64(vandq_s8(vshlq_n_s64(v86, 3uLL), v270)));
  v649 = v270;
  v273 = vdupq_n_s64(0xC65EBC393CBB713DLL);
  *&STACK[0x380] = v273;
  v653.val[3] = veorq_s8(v272, vshlq_u64(veorq_s8(vaddq_s64(v265, v264), v273), vnegq_s64(vandq_s8(vshlq_n_s64(v87, 3uLL), v270))));
  v653.val[2] = veorq_s8(v271, vshlq_u64(veorq_s8(vaddq_s64(v266, v264), v273), vnegq_s64(vandq_s8(vshlq_n_s64(v88, 3uLL), v270))));
  v274 = v66 - v73 - 3;
  v275 = v66 - v73 - 4;
  v271.i64[0] = v65 + v274;
  v271.i64[1] = v65 + v275;
  v276 = v168;
  v642 = v168;
  v643 = v94;
  v277 = vandq_s8(v271, v168);
  v278 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v277, 0x38uLL), v277, 8uLL), v645);
  v279 = vaddq_s64(vsubq_s64(vorrq_s8(v278, v92), vorrq_s8(v278, v94)), v94);
  v280 = *&STACK[0x240];
  v281 = veorq_s8(v279, *&STACK[0x240]);
  v282 = v103;
  v644 = v103;
  v283 = veorq_s8(v279, v103);
  v284 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v281, 0x38uLL), v281, 8uLL), v283);
  v285 = v111;
  v286 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v284, v284), v106), v284), v647), v111);
  v287 = veorq_s8(v286, vsraq_n_u64(vshlq_n_s64(v283, 3uLL), v283, 0x3DuLL));
  v288 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v286, 0x38uLL), v286, 8uLL), v287);
  v289 = *&STACK[0x250];
  v290 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v288, v288), *&STACK[0x250]), v288), v118), v650);
  v291 = veorq_s8(v290, vsraq_n_u64(vshlq_n_s64(v287, 3uLL), v287, 0x3DuLL));
  v292 = vsraq_n_u64(vshlq_n_s64(v290, 0x38uLL), v290, 8uLL);
  v293 = vsraq_n_u64(vshlq_n_s64(v291, 3uLL), v291, 0x3DuLL);
  v294 = *&STACK[0x360];
  v295 = veorq_s8(vaddq_s64(v292, v291), *&STACK[0x350]);
  v296 = veorq_s8(v295, v293);
  v297 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v295, 0x38uLL), v295, 8uLL), v296);
  v298 = vsraq_n_u64(vshlq_n_s64(v296, 3uLL), v296, 0x3DuLL);
  v299 = *&STACK[0x370];
  v300 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v297, v297), *&STACK[0x310]), v297), *&STACK[0x370]), *&STACK[0x360]);
  v301 = veorq_s8(v300, v298);
  v302 = vsraq_n_u64(vshlq_n_s64(v300, 0x38uLL), v300, 8uLL);
  v303 = vsraq_n_u64(vshlq_n_s64(v301, 3uLL), v301, 0x3DuLL);
  v304 = veorq_s8(vaddq_s64(v302, v301), v151);
  v305 = veorq_s8(v304, v303);
  v306 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v304, 0x38uLL), v304, 8uLL), v305), *&STACK[0x300]);
  v651 = v163;
  v307 = vsraq_n_u64(vshlq_n_s64(v305, 3uLL), v305, 0x3DuLL);
  v308 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v306, v306), v163), v306), v196), v197);
  v309 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v308, 0x38uLL), v308, 8uLL), veorq_s8(v308, v307));
  v279.i64[0] = a9 + v274;
  v279.i64[1] = a9 + v275;
  v310 = vandq_s8(v279, v276);
  v311 = *&STACK[0x3A0];
  v312 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v310, 0x38uLL), v310, 8uLL), *&STACK[0x3A0]);
  v314 = *&STACK[0x2E0];
  v313 = *&STACK[0x2F0];
  v315 = vandq_s8(v312, *&STACK[0x2E0]);
  v316 = v172;
  *&STACK[0x220] = v172;
  v317 = veorq_s8(v315, v172);
  v318 = *&STACK[0x2C0];
  v319 = *&STACK[0x2D0];
  v320 = vaddq_s64(veorq_s8(vandq_s8(v312, v313), *&STACK[0x2D0]), v317);
  v317.i64[0] = -1;
  v317.i64[1] = -1;
  v321 = vaddq_s64(v320, v317);
  v322 = veorq_s8(v321, *&STACK[0x2C0]);
  v323 = *&STACK[0x2B0];
  v324 = veorq_s8(v321, *&STACK[0x2B0]);
  v325 = vsraq_n_u64(vshlq_n_s64(v324, 3uLL), v324, 0x3DuLL);
  v326 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v322, 0x38uLL), v322, 8uLL), v324), *&STACK[0x340]);
  v327 = veorq_s8(v326, v325);
  v328 = *&STACK[0x270];
  v329 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v326, 0x38uLL), v326, 8uLL), v327), *&STACK[0x270]);
  v330 = veorq_s8(v329, vsraq_n_u64(vshlq_n_s64(v327, 3uLL), v327, 0x3DuLL));
  v331 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v329, 0x38uLL), v329, 8uLL), v330), *&STACK[0x280]);
  v332 = veorq_s8(v331, vsraq_n_u64(vshlq_n_s64(v330, 3uLL), v330, 0x3DuLL));
  v333 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v309, vandq_s8(vaddq_s64(v309, v309), *&STACK[0x230])), *&STACK[0x2A0]), *&STACK[0x290]), vnegq_s64(vandq_s8(vshlq_n_s64(v271, 3uLL), v649)));
  v334 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v331, 0x38uLL), v331, 8uLL), v332), *&STACK[0x3B0]);
  v335 = veorq_s8(v334, vsraq_n_u64(vshlq_n_s64(v332, 3uLL), v332, 0x3DuLL));
  v336 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v334, 0x38uLL), v334, 8uLL), v335), *&STACK[0x330]);
  v337 = veorq_s8(v336, vsraq_n_u64(vshlq_n_s64(v335, 3uLL), v335, 0x3DuLL));
  v338 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v336, 0x38uLL), v336, 8uLL), v337), *&STACK[0x260]);
  v339 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v338, 0x38uLL), v338, 8uLL), veorq_s8(v338, vsraq_n_u64(vshlq_n_s64(v337, 3uLL), v337, 0x3DuLL)));
  v340 = *&STACK[0x380];
  v341 = vorrq_s8(v339, *&STACK[0x390]);
  *&STACK[0x200] = v264;
  v653.val[1] = veorq_s8(v333, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v341, vorrq_s8(v339, v264)), v264), v340), vnegq_s64(vandq_s8(vshlq_n_s64(v279, 3uLL), v649))));
  v342 = v66 - v73 - 1;
  v343 = ((v76 + 3398) ^ 0xFFFFFFFFFFFFE83DLL) + v66 - v73;
  v271.i64[0] = v65 + v342;
  v271.i64[1] = v65 + v343;
  v344 = vandq_s8(v271, v642);
  v345 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v344, 0x38uLL), v344, 8uLL), v645);
  v346 = vaddq_s64(vsubq_s64(vorrq_s8(v345, v92), vorrq_s8(v345, v643)), v643);
  v347 = veorq_s8(v346, v280);
  v348 = veorq_s8(v346, v282);
  v349 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v347, 0x38uLL), v347, 8uLL), v348);
  v350 = vsraq_n_u64(vshlq_n_s64(v348, 3uLL), v348, 0x3DuLL);
  v351 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v349, v349), v106), v349), v647), v285);
  v352 = veorq_s8(v351, v350);
  v353 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL), v352);
  v354 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v353, v353), v289), v353), v118), v650);
  v355 = veorq_s8(v354, vsraq_n_u64(vshlq_n_s64(v352, 3uLL), v352, 0x3DuLL));
  v356 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v354, 0x38uLL), v354, 8uLL), v355), *&STACK[0x350]);
  v357 = veorq_s8(v356, vsraq_n_u64(vshlq_n_s64(v355, 3uLL), v355, 0x3DuLL));
  v358 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v356, 0x38uLL), v356, 8uLL), v357);
  v359 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v358, v358), *&STACK[0x310]), v358), v299), v294);
  v360 = veorq_s8(v359, vsraq_n_u64(vshlq_n_s64(v357, 3uLL), v357, 0x3DuLL));
  v361 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v359, 0x38uLL), v359, 8uLL), v360), v151);
  v362 = veorq_s8(v361, vsraq_n_u64(vshlq_n_s64(v360, 3uLL), v360, 0x3DuLL));
  v363 = vsraq_n_u64(vshlq_n_s64(v361, 0x38uLL), v361, 8uLL);
  v294.i64[0] = a9 + v342;
  v294.i64[1] = a9 + v343;
  v364 = vandq_s8(v294, v642);
  v365 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v364, 0x38uLL), v364, 8uLL), v311);
  v340.i64[0] = -1;
  v340.i64[1] = -1;
  v366 = vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v365, v313), v319), veorq_s8(vandq_s8(v365, v314), v316)), v340);
  v367 = veorq_s8(v366, v318);
  v368 = veorq_s8(v366, v323);
  v369 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v367, 0x38uLL), v367, 8uLL), v368);
  v370 = vsraq_n_u64(vshlq_n_s64(v368, 3uLL), v368, 0x3DuLL);
  v371 = vsraq_n_u64(vshlq_n_s64(v362, 3uLL), v362, 0x3DuLL);
  v372 = vaddq_s64(v363, v362);
  v373 = veorq_s8(v369, *&STACK[0x340]);
  v374 = veorq_s8(v373, v370);
  v375 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v373, 0x38uLL), v373, 8uLL), v374), v328);
  v376 = veorq_s8(v375, vsraq_n_u64(vshlq_n_s64(v374, 3uLL), v374, 0x3DuLL));
  v377 = veorq_s8(v372, *&STACK[0x300]);
  v378 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v375, 0x38uLL), v375, 8uLL), v376), *&STACK[0x280]);
  v379 = veorq_s8(v378, vsraq_n_u64(vshlq_n_s64(v376, 3uLL), v376, 0x3DuLL));
  v380 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v378, 0x38uLL), v378, 8uLL), v379);
  v381 = vsraq_n_u64(vshlq_n_s64(v379, 3uLL), v379, 0x3DuLL);
  v382 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v377, v377), v651), v377), *&STACK[0x210]), v648);
  v383 = veorq_s8(v382, v371);
  v384 = vsraq_n_u64(vshlq_n_s64(v382, 0x38uLL), v382, 8uLL);
  v385 = veorq_s8(v380, *&STACK[0x3B0]);
  v386 = veorq_s8(v385, v381);
  v387 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v385, 0x38uLL), v385, 8uLL), v386), *&STACK[0x330]);
  v388 = veorq_s8(v387, vsraq_n_u64(vshlq_n_s64(v386, 3uLL), v386, 0x3DuLL));
  v389 = vaddq_s64(v384, v383);
  v390 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v387, 0x38uLL), v387, 8uLL), v388), *&STACK[0x260]);
  v391 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v390, 0x38uLL), v390, 8uLL), veorq_s8(v390, vsraq_n_u64(vshlq_n_s64(v388, 3uLL), v388, 0x3DuLL)));
  v653.val[0] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v389, vandq_s8(vaddq_s64(v389, v389), *&STACK[0x230])), *&STACK[0x2A0]), *&STACK[0x290]), vnegq_s64(vandq_s8(vshlq_n_s64(v271, 3uLL), v649))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v391, *&STACK[0x390]), vorrq_s8(v391, *&STACK[0x200])), *&STACK[0x200]), *&STACK[0x380]), vnegq_s64(vandq_s8(vshlq_n_s64(v294, 3uLL), v649))));
  v646 = vqtbl4q_s8(v653, *&STACK[0x320]);
  v392 = v66 - v73 - 13;
  v393 = v66 - v73 - 14;
  v313.i64[0] = v65 + v392;
  v313.i64[1] = v65 + v393;
  v394 = vandq_s8(v313, v642);
  v395 = v66 - v73 - 15;
  v396 = v66 - v73 - 16;
  v318.i64[0] = v65 + v395;
  v318.i64[1] = v65 + v396;
  v397 = vandq_s8(v318, v642);
  v398 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v397, 0x38uLL), v397, 8uLL), v645);
  v399 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v394, 0x38uLL), v394, 8uLL), v645);
  v400 = vaddq_s64(vsubq_s64(vorrq_s8(v399, v92), vorrq_s8(v399, v643)), v643);
  v401 = veorq_s8(v400, v280);
  v402 = vsraq_n_u64(vshlq_n_s64(v401, 0x38uLL), v401, 8uLL);
  v403 = vaddq_s64(vsubq_s64(vorrq_s8(v398, v92), vorrq_s8(v398, v643)), v643);
  v404 = veorq_s8(v403, v280);
  v405 = vsraq_n_u64(vshlq_n_s64(v404, 0x38uLL), v404, 8uLL);
  v406 = veorq_s8(v400, v644);
  v407 = vaddq_s64(v402, v406);
  v408 = vsraq_n_u64(vshlq_n_s64(v406, 3uLL), v406, 0x3DuLL);
  v409 = veorq_s8(v403, v644);
  v410 = vaddq_s64(v405, v409);
  v411 = vsraq_n_u64(vshlq_n_s64(v409, 3uLL), v409, 0x3DuLL);
  v412 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v410, v410), v106), v410), v647), v285);
  v413 = veorq_s8(v412, v411);
  v414 = vsraq_n_u64(vshlq_n_s64(v412, 0x38uLL), v412, 8uLL);
  v415 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v407, v407), v106), v407), v647), v285);
  v416 = veorq_s8(v415, v408);
  v417 = vsraq_n_u64(vshlq_n_s64(v415, 0x38uLL), v415, 8uLL);
  v418 = vaddq_s64(v414, v413);
  v419 = vaddq_s64(v417, v416);
  v420 = vsraq_n_u64(vshlq_n_s64(v413, 3uLL), v413, 0x3DuLL);
  v421 = vsraq_n_u64(vshlq_n_s64(v416, 3uLL), v416, 0x3DuLL);
  v422 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v419, v419), *&STACK[0x250]), v419), v118), v650);
  v423 = veorq_s8(v422, v421);
  v424 = vsraq_n_u64(vshlq_n_s64(v422, 0x38uLL), v422, 8uLL);
  v425 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v418, v418), *&STACK[0x250]), v418), v118), v650);
  v426 = veorq_s8(v425, v420);
  v427 = vsraq_n_u64(vshlq_n_s64(v425, 0x38uLL), v425, 8uLL);
  v428 = vaddq_s64(v424, v423);
  v429 = vsraq_n_u64(vshlq_n_s64(v423, 3uLL), v423, 0x3DuLL);
  v430 = veorq_s8(vaddq_s64(v427, v426), *&STACK[0x350]);
  v431 = veorq_s8(v430, vsraq_n_u64(vshlq_n_s64(v426, 3uLL), v426, 0x3DuLL));
  v432 = vsraq_n_u64(vshlq_n_s64(v430, 0x38uLL), v430, 8uLL);
  v433 = veorq_s8(v428, *&STACK[0x350]);
  v434 = veorq_s8(v433, v429);
  v435 = vsraq_n_u64(vshlq_n_s64(v433, 0x38uLL), v433, 8uLL);
  v436 = vaddq_s64(v432, v431);
  v437 = vaddq_s64(v435, v434);
  v438 = vsraq_n_u64(vshlq_n_s64(v431, 3uLL), v431, 0x3DuLL);
  v439 = vsraq_n_u64(vshlq_n_s64(v434, 3uLL), v434, 0x3DuLL);
  v440 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v437, v437), *&STACK[0x310]), v437), *&STACK[0x370]), *&STACK[0x360]);
  v441 = veorq_s8(v440, v439);
  v442 = vsraq_n_u64(vshlq_n_s64(v440, 0x38uLL), v440, 8uLL);
  v443 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v436, v436), *&STACK[0x310]), v436), *&STACK[0x370]), *&STACK[0x360]);
  v444 = veorq_s8(v443, v438);
  v445 = vsraq_n_u64(vshlq_n_s64(v443, 0x38uLL), v443, 8uLL);
  v446 = vaddq_s64(v442, v441);
  v447 = vsraq_n_u64(vshlq_n_s64(v441, 3uLL), v441, 0x3DuLL);
  v448 = vaddq_s64(v445, v444);
  v449 = vsraq_n_u64(vshlq_n_s64(v444, 3uLL), v444, 0x3DuLL);
  v450 = veorq_s8(v448, v151);
  v451 = veorq_s8(v450, v449);
  v452 = vsraq_n_u64(vshlq_n_s64(v450, 0x38uLL), v450, 8uLL);
  v453 = veorq_s8(v446, v151);
  v454 = veorq_s8(v453, v447);
  v455 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v453, 0x38uLL), v453, 8uLL), v454);
  v456 = vsraq_n_u64(vshlq_n_s64(v454, 3uLL), v454, 0x3DuLL);
  v316.i64[0] = a9 + v395;
  v316.i64[1] = a9 + v396;
  v457 = vandq_s8(v316, v642);
  v458 = vsraq_n_u64(vshlq_n_s64(v457, 0x38uLL), v457, 8uLL);
  v457.i64[0] = a9 + v392;
  v457.i64[1] = a9 + v393;
  v459 = vandq_s8(v457, v642);
  v460 = vaddq_s64(v458, v311);
  v461 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v459, 0x38uLL), v459, 8uLL), v311);
  v394.i64[0] = -1;
  v394.i64[1] = -1;
  v462 = vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v461, *&STACK[0x2F0]), *&STACK[0x2D0]), veorq_s8(vandq_s8(v461, *&STACK[0x2E0]), *&STACK[0x220])), v394);
  v463 = veorq_s8(v462, *&STACK[0x2C0]);
  v464 = vsraq_n_u64(vshlq_n_s64(v463, 0x38uLL), v463, 8uLL);
  v465 = vsraq_n_u64(vshlq_n_s64(v451, 3uLL), v451, 0x3DuLL);
  v466 = vaddq_s64(v452, v451);
  v467 = vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v460, *&STACK[0x2F0]), *&STACK[0x2D0]), veorq_s8(vandq_s8(v460, *&STACK[0x2E0]), *&STACK[0x220])), v394);
  v468 = veorq_s8(v467, *&STACK[0x2C0]);
  v469 = vsraq_n_u64(vshlq_n_s64(v468, 0x38uLL), v468, 8uLL);
  v470 = veorq_s8(v462, *&STACK[0x2B0]);
  v471 = vaddq_s64(v464, v470);
  v472 = vsraq_n_u64(vshlq_n_s64(v470, 3uLL), v470, 0x3DuLL);
  v473 = veorq_s8(v455, *&STACK[0x300]);
  v474 = veorq_s8(v467, *&STACK[0x2B0]);
  v475 = veorq_s8(vaddq_s64(v469, v474), *&STACK[0x340]);
  v476 = veorq_s8(v475, vsraq_n_u64(vshlq_n_s64(v474, 3uLL), v474, 0x3DuLL));
  v477 = vsraq_n_u64(vshlq_n_s64(v475, 0x38uLL), v475, 8uLL);
  v478 = veorq_s8(v466, *&STACK[0x300]);
  v479 = veorq_s8(v471, *&STACK[0x340]);
  v480 = veorq_s8(v479, v472);
  v481 = vsraq_n_u64(vshlq_n_s64(v479, 0x38uLL), v479, 8uLL);
  v482 = vaddq_s64(v477, v476);
  v483 = vsraq_n_u64(vshlq_n_s64(v476, 3uLL), v476, 0x3DuLL);
  v484 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v478, v478), v651), v478), *&STACK[0x210]), v648);
  v485 = veorq_s8(v484, v465);
  v486 = vsraq_n_u64(vshlq_n_s64(v484, 0x38uLL), v484, 8uLL);
  v487 = veorq_s8(vaddq_s64(v481, v480), *&STACK[0x270]);
  v488 = veorq_s8(v487, vsraq_n_u64(vshlq_n_s64(v480, 3uLL), v480, 0x3DuLL));
  v489 = vsraq_n_u64(vshlq_n_s64(v487, 0x38uLL), v487, 8uLL);
  v490 = veorq_s8(v482, *&STACK[0x270]);
  v491 = veorq_s8(v490, v483);
  v492 = vsraq_n_u64(vshlq_n_s64(v490, 0x38uLL), v490, 8uLL);
  v493 = vaddq_s64(v489, v488);
  v494 = vsraq_n_u64(vshlq_n_s64(v488, 3uLL), v488, 0x3DuLL);
  v495 = vaddq_s64(v492, v491);
  v496 = vsraq_n_u64(vshlq_n_s64(v491, 3uLL), v491, 0x3DuLL);
  v497 = veorq_s8(v495, *&STACK[0x280]);
  v498 = veorq_s8(v497, v496);
  v499 = vsraq_n_u64(vshlq_n_s64(v497, 0x38uLL), v497, 8uLL);
  v500 = veorq_s8(v493, *&STACK[0x280]);
  v501 = veorq_s8(v500, v494);
  v502 = vsraq_n_u64(vshlq_n_s64(v500, 0x38uLL), v500, 8uLL);
  v503 = vaddq_s64(v499, v498);
  v504 = vsraq_n_u64(vshlq_n_s64(v498, 3uLL), v498, 0x3DuLL);
  v505 = vaddq_s64(v502, v501);
  v506 = vsraq_n_u64(vshlq_n_s64(v501, 3uLL), v501, 0x3DuLL);
  v507 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v473, v473), v651), v473), *&STACK[0x210]), v648);
  v508 = veorq_s8(v507, v456);
  v509 = vsraq_n_u64(vshlq_n_s64(v507, 0x38uLL), v507, 8uLL);
  v510 = veorq_s8(v505, *&STACK[0x3B0]);
  v511 = veorq_s8(v510, v506);
  v512 = vsraq_n_u64(vshlq_n_s64(v510, 0x38uLL), v510, 8uLL);
  v513 = veorq_s8(v503, *&STACK[0x3B0]);
  v514 = veorq_s8(v513, v504);
  v515 = vsraq_n_u64(vshlq_n_s64(v513, 0x38uLL), v513, 8uLL);
  v516 = vaddq_s64(v512, v511);
  v517 = vsraq_n_u64(vshlq_n_s64(v511, 3uLL), v511, 0x3DuLL);
  v518 = vaddq_s64(v509, v508);
  v519 = vsraq_n_u64(vshlq_n_s64(v514, 3uLL), v514, 0x3DuLL);
  v520 = veorq_s8(vaddq_s64(v515, v514), *&STACK[0x330]);
  v521 = veorq_s8(v520, v519);
  v522 = vsraq_n_u64(vshlq_n_s64(v520, 0x38uLL), v520, 8uLL);
  v523 = veorq_s8(v516, *&STACK[0x330]);
  v524 = veorq_s8(v523, v517);
  v525 = vsraq_n_u64(vshlq_n_s64(v523, 0x38uLL), v523, 8uLL);
  v526 = vaddq_s64(v486, v485);
  v527 = vaddq_s64(v522, v521);
  v528 = vsraq_n_u64(vshlq_n_s64(v521, 3uLL), v521, 0x3DuLL);
  v529 = vaddq_s64(v525, v524);
  v530 = vsraq_n_u64(vshlq_n_s64(v524, 3uLL), v524, 0x3DuLL);
  v531 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v518, vandq_s8(vaddq_s64(v518, v518), *&STACK[0x230])), *&STACK[0x2A0]), *&STACK[0x290]), vnegq_s64(vandq_s8(vshlq_n_s64(v313, 3uLL), v649)));
  v532 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v526, vandq_s8(vaddq_s64(v526, v526), *&STACK[0x230])), *&STACK[0x2A0]), *&STACK[0x290]), vnegq_s64(vandq_s8(vshlq_n_s64(v318, 3uLL), v649)));
  v533 = veorq_s8(v529, *&STACK[0x260]);
  v534 = veorq_s8(v533, v530);
  v535 = vsraq_n_u64(vshlq_n_s64(v533, 0x38uLL), v533, 8uLL);
  v536 = veorq_s8(v527, *&STACK[0x260]);
  v537 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v536, 0x38uLL), v536, 8uLL), veorq_s8(v536, v528));
  v538 = vaddq_s64(v535, v534);
  v539 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v538, *&STACK[0x390]), vorrq_s8(v538, *&STACK[0x200])), *&STACK[0x200]), *&STACK[0x380]), vnegq_s64(vandq_s8(vshlq_n_s64(v457, 3uLL), v649)));
  v540 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v537, *&STACK[0x390]), vorrq_s8(v537, *&STACK[0x200])), *&STACK[0x200]), *&STACK[0x380]), vnegq_s64(vandq_s8(vshlq_n_s64(v316, 3uLL), v649)));
  v541 = v66 - v73 - 11;
  v542 = v66 - v73 - 12;
  v537.i64[0] = v65 + v541;
  v537.i64[1] = v65 + v542;
  v652.val[3] = veorq_s8(v532, v540);
  v652.val[2] = veorq_s8(v531, v539);
  v543 = vandq_s8(v537, v642);
  v544 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v543, 0x38uLL), v543, 8uLL), v645);
  v545 = vaddq_s64(vsubq_s64(vorrq_s8(v544, v92), vorrq_s8(v544, v643)), v643);
  v546 = veorq_s8(v545, *&STACK[0x240]);
  v547 = veorq_s8(v545, v644);
  v548 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v546, 0x38uLL), v546, 8uLL), v547);
  v549 = vsraq_n_u64(vshlq_n_s64(v547, 3uLL), v547, 0x3DuLL);
  v550 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v548, v548), v106), v548), v647), v285);
  v551 = veorq_s8(v550, v549);
  v552 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v550, 0x38uLL), v550, 8uLL), v551);
  v553 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v552, v552), *&STACK[0x250]), v552), v118), v650);
  v554 = veorq_s8(v553, vsraq_n_u64(vshlq_n_s64(v551, 3uLL), v551, 0x3DuLL));
  v555 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v553, 0x38uLL), v553, 8uLL), v554), *&STACK[0x350]);
  v556 = veorq_s8(v555, vsraq_n_u64(vshlq_n_s64(v554, 3uLL), v554, 0x3DuLL));
  v557 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v555, 0x38uLL), v555, 8uLL), v556);
  v558 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v557, v557), *&STACK[0x310]), v557), *&STACK[0x370]), *&STACK[0x360]);
  v559 = veorq_s8(v558, vsraq_n_u64(vshlq_n_s64(v556, 3uLL), v556, 0x3DuLL));
  v560 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v558, 0x38uLL), v558, 8uLL), v559), v151);
  v561 = veorq_s8(v560, vsraq_n_u64(vshlq_n_s64(v559, 3uLL), v559, 0x3DuLL));
  v562 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v560, 0x38uLL), v560, 8uLL), v561);
  v563 = vsraq_n_u64(vshlq_n_s64(v561, 3uLL), v561, 0x3DuLL);
  v560.i64[0] = a9 + v541;
  v560.i64[1] = a9 + v542;
  v564 = vandq_s8(v560, v642);
  v565 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v564, 0x38uLL), v564, 8uLL), *&STACK[0x3A0]);
  v530.i64[0] = -1;
  v530.i64[1] = -1;
  v566 = vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v565, *&STACK[0x2F0]), *&STACK[0x2D0]), veorq_s8(vandq_s8(v565, *&STACK[0x2E0]), *&STACK[0x220])), v530);
  v567 = veorq_s8(v566, *&STACK[0x2C0]);
  v568 = veorq_s8(v566, *&STACK[0x2B0]);
  v569 = vsraq_n_u64(vshlq_n_s64(v568, 3uLL), v568, 0x3DuLL);
  v570 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v567, 0x38uLL), v567, 8uLL), v568), *&STACK[0x340]);
  v571 = veorq_s8(v570, v569);
  v572 = veorq_s8(v562, *&STACK[0x300]);
  v573 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v570, 0x38uLL), v570, 8uLL), v571), *&STACK[0x270]);
  v574 = veorq_s8(v573, vsraq_n_u64(vshlq_n_s64(v571, 3uLL), v571, 0x3DuLL));
  v575 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v573, 0x38uLL), v573, 8uLL), v574);
  v576 = vsraq_n_u64(vshlq_n_s64(v574, 3uLL), v574, 0x3DuLL);
  v577 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v572, v572), v651), v572), *&STACK[0x210]), v648);
  v578 = veorq_s8(v577, v563);
  v579 = vsraq_n_u64(vshlq_n_s64(v577, 0x38uLL), v577, 8uLL);
  v580 = veorq_s8(v575, *&STACK[0x280]);
  v581 = veorq_s8(v580, v576);
  v582 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v580, 0x38uLL), v580, 8uLL), v581), *&STACK[0x3B0]);
  v583 = veorq_s8(v582, vsraq_n_u64(vshlq_n_s64(v581, 3uLL), v581, 0x3DuLL));
  v584 = vsraq_n_u64(vshlq_n_s64(v582, 0x38uLL), v582, 8uLL);
  v585 = vaddq_s64(v579, v578);
  v586 = vsraq_n_u64(vshlq_n_s64(v583, 3uLL), v583, 0x3DuLL);
  v587 = veorq_s8(vaddq_s64(v584, v583), *&STACK[0x330]);
  v588 = veorq_s8(v587, v586);
  v589 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v587, 0x38uLL), v587, 8uLL), v588), *&STACK[0x260]);
  v590 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v589, 0x38uLL), v589, 8uLL), veorq_s8(v589, vsraq_n_u64(vshlq_n_s64(v588, 3uLL), v588, 0x3DuLL)));
  v652.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(v585, vandq_s8(vaddq_s64(v585, v585), *&STACK[0x230])), *&STACK[0x2A0]), *&STACK[0x290]), vnegq_s64(vandq_s8(vshlq_n_s64(v537, 3uLL), v649))), vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v590, *&STACK[0x390]), vorrq_s8(v590, *&STACK[0x200])), *&STACK[0x200]), *&STACK[0x380]), vnegq_s64(vandq_s8(vshlq_n_s64(v560, 3uLL), v649))));
  v591 = v66 - v73 - 9;
  v592 = v66 - v73 - 10;
  v560.i64[0] = v65 + v591;
  v560.i64[1] = v65 + v592;
  v593 = vandq_s8(v560, v642);
  v594 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v593, 0x38uLL), v593, 8uLL), v645);
  v595 = vaddq_s64(vsubq_s64(vorrq_s8(v594, v92), vorrq_s8(v594, v643)), v643);
  v596 = veorq_s8(v595, *&STACK[0x240]);
  v597 = veorq_s8(v595, v644);
  v598 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v596, 0x38uLL), v596, 8uLL), v597);
  v599 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v598, v598), v106), v598), v647), v285);
  v600 = veorq_s8(v599, vsraq_n_u64(vshlq_n_s64(v597, 3uLL), v597, 0x3DuLL));
  v601 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v599, 0x38uLL), v599, 8uLL), v600);
  v602 = vsraq_n_u64(vshlq_n_s64(v600, 3uLL), v600, 0x3DuLL);
  v603 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v601, v601), *&STACK[0x250]), v601), v118), v650);
  v604 = veorq_s8(v603, v602);
  v605 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v603, 0x38uLL), v603, 8uLL), v604), *&STACK[0x350]);
  v606 = veorq_s8(v605, vsraq_n_u64(vshlq_n_s64(v604, 3uLL), v604, 0x3DuLL));
  v607 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v605, 0x38uLL), v605, 8uLL), v606);
  v608 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v607, v607), *&STACK[0x310]), v607), *&STACK[0x370]), *&STACK[0x360]);
  v609 = veorq_s8(v608, vsraq_n_u64(vshlq_n_s64(v606, 3uLL), v606, 0x3DuLL));
  v610 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v608, 0x38uLL), v608, 8uLL), v609), v151);
  v611 = veorq_s8(v610, vsraq_n_u64(vshlq_n_s64(v609, 3uLL), v609, 0x3DuLL));
  v584.i64[0] = a9 + v591;
  v584.i64[1] = a9 + v592;
  v612 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v610, 0x38uLL), v610, 8uLL), v611), *&STACK[0x300]);
  v613 = vsraq_n_u64(vshlq_n_s64(v611, 3uLL), v611, 0x3DuLL);
  v614 = vandq_s8(v584, v642);
  v615 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v614, 0x38uLL), v614, 8uLL), *&STACK[0x3A0]);
  v588.i64[0] = -1;
  v588.i64[1] = -1;
  v616 = vaddq_s64(vaddq_s64(veorq_s8(vandq_s8(v615, *&STACK[0x2F0]), *&STACK[0x2D0]), veorq_s8(vandq_s8(v615, *&STACK[0x2E0]), *&STACK[0x220])), v588);
  v617 = veorq_s8(v616, *&STACK[0x2C0]);
  v618 = veorq_s8(v616, *&STACK[0x2B0]);
  v619 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v612, v612), v651), v612), *&STACK[0x210]), v648);
  v620 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v617, 0x38uLL), v617, 8uLL), v618), *&STACK[0x340]);
  v621 = veorq_s8(v619, v613);
  v622 = veorq_s8(v620, vsraq_n_u64(vshlq_n_s64(v618, 3uLL), v618, 0x3DuLL));
  v623 = vsraq_n_u64(vshlq_n_s64(v620, 0x38uLL), v620, 8uLL);
  v624 = vsraq_n_u64(vshlq_n_s64(v619, 0x38uLL), v619, 8uLL);
  v625 = veorq_s8(vaddq_s64(v623, v622), *&STACK[0x270]);
  v626 = veorq_s8(v625, vsraq_n_u64(vshlq_n_s64(v622, 3uLL), v622, 0x3DuLL));
  v627 = vaddq_s64(v624, v621);
  v628 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v625, 0x38uLL), v625, 8uLL), v626), *&STACK[0x280]);
  v629 = veorq_s8(v628, vsraq_n_u64(vshlq_n_s64(v626, 3uLL), v626, 0x3DuLL));
  v630 = vsraq_n_u64(vshlq_n_s64(v628, 0x38uLL), v628, 8uLL);
  v631 = vsubq_s64(v627, vandq_s8(vaddq_s64(v627, v627), *&STACK[0x230]));
  v632 = veorq_s8(vaddq_s64(v630, v629), *&STACK[0x3B0]);
  v633 = veorq_s8(v632, vsraq_n_u64(vshlq_n_s64(v629, 3uLL), v629, 0x3DuLL));
  v634 = vsraq_n_u64(vshlq_n_s64(v633, 3uLL), v633, 0x3DuLL);
  v635 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v632, 0x38uLL), v632, 8uLL), v633), *&STACK[0x330]);
  v636 = veorq_s8(v635, v634);
  v637 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v635, 0x38uLL), v635, 8uLL), v636), *&STACK[0x260]);
  v638 = vshlq_u64(veorq_s8(vaddq_s64(v631, *&STACK[0x2A0]), *&STACK[0x290]), vnegq_s64(vandq_s8(vshlq_n_s64(v560, 3uLL), v649)));
  v639 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v637, 0x38uLL), v637, 8uLL), veorq_s8(v637, vsraq_n_u64(vshlq_n_s64(v636, 3uLL), v636, 0x3DuLL)));
  v652.val[0] = veorq_s8(v638, vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v639, *&STACK[0x390]), vorrq_s8(v639, *&STACK[0x200])), *&STACK[0x200]), *&STACK[0x380]), vnegq_s64(vandq_s8(vshlq_n_s64(v584, 3uLL), v649))));
  v639.i64[0] = v646.i64[0];
  v639.i64[1] = vqtbl4q_s8(v652, *&STACK[0x320]).u64[0];
  v640 = vrev64q_s8(v639);
  *(v294.i64[0] - 15) = veorq_s8(vextq_s8(v640, v640, 8uLL), *(v65 + v342 - 15));
  return (*(a65 + 8 * ((7082 * (v73 + 16 == v66)) ^ v76)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, v642.i64[0], v642.i64[1], v643.i64[0], v643.i64[1], v106.i64[0], v106.i64[1], v644.i64[0], v644.i64[1], v118.i64[0], v118.i64[1], v285.i64[0], v285.i64[1], v645.i64[0], v645.i64[1], v646.i64[0], v646.i64[1], v647.i64[0], v647.i64[1], v648.i64[0], v648.i64[1], v151.i64[0], v151.i64[1]);
}

uint64_t sub_100034310@<X0>(__int16 a1@<W8>)
{
  v3 = STACK[0x880];
  STACK[0x638] = *(v2 + 8 * v1);
  return sub_1000EFF50(v3, a1);
}

void sub_1000343BC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100034584(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = LODWORD(STACK[0x668]) - 1475269830 + (~(2 * LODWORD(STACK[0x668])) | 0xAFDDA98B) + 1;
  v75 = __ROR8__(a1 & 0xFFFFFFFFFFFFFFF8, 8);
  v76 = -2 - (((0xD263A9391262C1D1 - v75) | 0x23ABB080323C1D9ELL) + ((v75 + 0x2D9C56C6ED9D3E2ELL) | 0xDC544F7FCDC3E261));
  v77 = __ROR8__(v76 ^ 0xA8C1DB874C757D0FLL, 8);
  v76 ^= 0xC4236DB0209C8C7ELL;
  v78 = __ROR8__((((2 * (v77 + v76)) | 0x99D223D2D02820B2) - (v77 + v76) - 0x4CE911E968141059) ^ 0xB77E0557A23878B0, 8);
  v79 = (((2 * (v77 + v76)) | 0x99D223D2D02820B2) - (v77 + v76) - 0x4CE911E968141059) ^ 0xB77E0557A23878B0 ^ __ROR8__(v76, 61);
  v80 = (((2 * (v78 + v79)) & 0x8F6525C9DD8836E8) - (v78 + v79) - 0x47B292E4EEC41B75) ^ 0x5C211E60F3C7390;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ 0xFD8B533ED96A4334;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = (__ROR8__(v82, 8) + v83) ^ 0xAC7DA0564C1838BLL;
  v85 = __ROR8__(v84, 8);
  v86 = v84 ^ __ROR8__(v83, 61);
  v87 = (((2 * (v85 + v86)) & 0xF027525D3234064ALL) - (v85 + v86) + 0x7EC56D166E5FCDALL) ^ 0x667CF1B31898F7A3;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = __ROR8__(v87, 8);
  v90 = (((v89 + v88) & 0x8EAD920A7052A3D5 ^ 0xE0482026042A2D4) + ((v89 + v88) & 0x71526DF58FAD5C2ALL ^ 0x21120D218DA55809) - 1) ^ 0xA15BE1E9D9DADD82;
  v91 = v90 ^ __ROR8__(v88, 61);
  v92 = __ROR8__(v90, 8);
  v93 = *(a72 + 8 * (v72 - 5736));
  LOBYTE(v91) = ((0x3205D7FD44242D8DLL - ((v92 + v91) | 0x3205D7FD44242D8DLL) + ((v92 + v91) | 0xCDFA2802BBDBD272)) ^ 0x9C4169731436145ALL) >> (8 * (a1 & 7u));
  v94 = __ROR8__((a1 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  *a1 = v91;
  v95 = ((0x5263A9391262C1D1 - v94) & 0x4BA5C546AFD99716) + v94 + 0x2D9C56C6ED9D3E2ELL - ((v94 + 0x2D9C56C6ED9D3E2ELL) & 0x4BA5C546AFD99716);
  v96 = v95 ^ 0xC0CFAE41D190F787;
  v95 ^= 0xAC2D1876BD7906F6;
  v97 = (__ROR8__(v96, 8) + v95) ^ 0xFB9714BECA2C68E9;
  v98 = v97 ^ __ROR8__(v95, 61);
  v99 = (__ROR8__(v97, 8) + v98) ^ 0xBD8F7CFD1E07971BLL;
  v100 = v99 ^ __ROR8__(v98, 61);
  v101 = (__ROR8__(v99, 8) + v100) ^ 0xFD8B533ED96A4334;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = __ROR8__(v101, 8);
  v104 = (0x1D2752216EB1A3C7 - ((v103 + v102) | 0x1D2752216EB1A3C7) + ((v103 + v102) | 0xE2D8ADDE914E5C38)) ^ 0xE81F77DBF58FDFB3;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = (__ROR8__(v104, 8) + v105) ^ 0x6190A7627E7D0B79;
  v107 = v106 ^ __ROR8__(v105, 61);
  v108 = (__ROR8__(v106, 8) + v107) ^ 0x8E4D6ECA343D275ELL;
  v109 = v108 ^ __ROR8__(v107, 61);
  v110 = __ROR8__(v108, 8);
  *(a1 + 1) = ((((2 * (v110 + v109)) & 0xC884705B0AEFB5E8) - (v110 + v109) + 0x1BBDC7D27A88250BLL) ^ 0x4A0686A3D565E323) >> (8 * ((a1 + 1) & 7));
  v111 = (__ROR8__((a1 + 2) & 0xFFFFFFFFFFFFFFF8, 8) + 0x2D9C56C6ED9D3E2ELL) & 0xFBFFFFFFFFFFFFFFLL;
  v112 = v111 ^ 0x8F6A6B077E496091;
  v111 ^= 0xE388DD3012A091E0;
  v113 = (__ROR8__(v112, 8) + v111) ^ 0xFB9714BECA2C68E9;
  v114 = v113 ^ __ROR8__(v111, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ 0xBD8F7CFD1E07971BLL;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ 0xFD8B533ED96A4334;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = __ROR8__(v117, 8);
  v120 = (((2 * (v119 + v118)) | 0x333C1D6226586300) - (v119 + v118) + 0x6661F14EECD3CE80) ^ 0x9359D4B477EDB20BLL;
  v121 = v120 ^ __ROR8__(v118, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ 0x6190A7627E7D0B79;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = __ROR8__(v122, 8);
  v125 = (((2 * (v124 + v123)) | 0xB3087D222DCB6276) - (v124 + v123) + 0x267BC16EE91A4EC5) ^ 0x57C9505B22D89665;
  *(a1 + 2) = ((__ROR8__(v125, 8) + (v125 ^ __ROR8__(v123, 61))) ^ 0x51BB4171AFEDC628) >> (8 * ((a1 + 2) & 7));
  v126 = __ROR8__((a1 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v127 = (v126 + 0x2D9C56C6ED9D3E2ELL) ^ 0xE788DD3012A091E0;
  v128 = (__ROR8__((v126 + 0x2D9C56C6ED9D3E2ELL) ^ 0x8B6A6B077E496091, 8) + v127) ^ 0xFB9714BECA2C68E9;
  v129 = v128 ^ __ROR8__(v127, 61);
  v130 = __ROR8__(v128, 8);
  v131 = (v130 + v129 - ((2 * (v130 + v129)) & 0x60C6AC64451B9A2ALL) + 0x30635632228DCD15) ^ 0x8DEC2ACF3C8A5A0ELL;
  v132 = v131 ^ __ROR8__(v129, 61);
  v133 = __ROR8__(v131, 8);
  v134 = __ROR8__((0x642DC2ADAD339112 - ((v133 + v132) | 0x642DC2ADAD339112) + ((v133 + v132) | 0x9BD23D5252CC6EEDLL)) ^ 0x66596E6C8BA62DD9, 8);
  v135 = (0x642DC2ADAD339112 - ((v133 + v132) | 0x642DC2ADAD339112) + ((v133 + v132) | 0x9BD23D5252CC6EEDLL)) ^ 0x66596E6C8BA62DD9 ^ __ROR8__(v132, 61);
  v136 = (v134 + v135) ^ 0xAC7DA0564C1838BLL;
  v137 = v136 ^ __ROR8__(v135, 61);
  v138 = __ROR8__(v136, 8);
  v139 = (((v138 + v137) ^ 0x2A44837A6D1B1138) - ((2 * ((v138 + v137) ^ 0x2A44837A6D1B1138)) & 0x2C0C21C03C023D7ALL) - 0x69F9EF1FE1FEE143) ^ 0xDDD234F80D6704FCLL;
  v140 = v139 ^ __ROR8__(v137, 61);
  v141 = __ROR8__(v139, 8);
  v142 = (((2 * (v141 + v140)) & 0x7D331DC7FBD5E894) - (v141 + v140) + 0x4166711C02150BB5) ^ 0xCF2B1FD636282CEBLL;
  v143 = v142 ^ __ROR8__(v140, 61);
  v144 = __ROR8__(v142, 8);
  v145 = (v144 + v143) ^ 0x51BB4171AFEDC628;
  *(a1 + 3) = v145 >> (8 * ((a1 + 3) & 7));
  return v93(v145, v73, v144, 0x66596E6C8BA62DD9, 0xFB9714BECA2C68E9, 0x51BB4171AFEDC628, 0x6190A7627E7D0B79, 0x2D9C56C6ED9D3E2ELL, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36);
}

void sub_100035218()
{
  v0 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E2A0) ^ 0xDF)) ^ byte_100694FA0[byte_10068E0C0[(-85 * ((dword_10077E220 + dword_10077E2A0) ^ 0xDF))] ^ 0x2A]) + 129);
  v1 = *(&off_100755B60 + (byte_100694FA8[(byte_10068E0C0[(-85 * ((dword_10077E220 + *v0) ^ 0xDF))] ^ 0x2A) - 8] ^ (-85 * ((dword_10077E220 + *v0) ^ 0xDF))) + 29);
  v2 = &v4[*v0 + *v1];
  *v0 = 2054362027 * v2 + 0x1FC86B74B1533AF5;
  *v1 = 2054362027 * (v2 ^ 0xB4207763EF64BDFLL);
  v5[0] = 476323082 - 1710126949 * ((2 * (v5 & 0x2CCBD850) - v5 - 751556695) ^ 0xE12F7C39);
  LOBYTE(v1) = -85 * ((*v1 - *v0) ^ 0xDF);
  v3 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E2A0) ^ 0xDF)) ^ byte_10068DEC0[byte_100683950[(-85 * ((dword_10077E220 + dword_10077E2A0) ^ 0xDF))] ^ 0xEE]) + 163) - 8;
  (*&v3[8 * (byte_100683C5C[(byte_10069D20C[v1 - 12] ^ 0x1F) - 12] ^ v1) + 76384])(v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10003547C(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  LODWORD(STACK[0x428]) = a3;
  LODWORD(STACK[0x42C]) = a1;
  LODWORD(STACK[0x430]) = v9;
  LODWORD(STACK[0x424]) = v14;
  v16 = (v8 + 520) | 0x221;
  LODWORD(STACK[0x438]) = (v16 ^ 0xE5B9843F) + (((STACK[0x408] & 0x1A4FF7EA ^ 0x1A4FF7EA) + (STACK[0x408] & 0x1A4FF7EA)) & 0x1ED67DFA);
  v17 = LODWORD(STACK[0x580]) + 973352165;
  LODWORD(STACK[0x3E0]) = STACK[0x370];
  v18 = STACK[0x56C];
  v19 = STACK[0x590];
  v20 = STACK[0x584];
  LODWORD(STACK[0x590]) = v16;
  v21 = (v16 + 649) | 0x800;
  v22 = (v17 - 658104925) ^ v15;
  LODWORD(STACK[0x57C]) = v21;
  v23 = (v21 ^ 0x20A1903A) - v15 + v20 + v22 + (((v17 - 658104925) | (3793500 - v17)) & 0x4A0022);
  v24 = LODWORD(STACK[0x5A8]) ^ v18;
  v25 = v15 - 146818720 + v23;
  v26 = LODWORD(STACK[0x58C]) + 1644357678 + 2 * v22;
  v27 = v24 + v19 - 146818720;
  v28 = v25 ^ 0xB8F5D976;
  v29 = (v25 ^ 0xD279C636) + v26 - (v25 ^ 0xB8F5D976);
  v30 = 1307086487 - v26 + v23;
  v31 = LODWORD(STACK[0x588]) + 1644357678 + 2 * v24;
  v30 ^= 0x287BD67Eu;
  ++v29;
  v32 = (v27 ^ 0xD279C636) + v31 - (v27 ^ 0xB8F5D976);
  v33 = (v24 + v19 - v18 + 1307086487 - v31) ^ 0x287BD67E;
  v34 = v22 + 1445599364 + v25;
  v35 = v34 - v29;
  v36 = v32 + 1;
  v37 = v33 ^ v27 ^ 0xB8F5D976;
  v38 = (v34 - v29) ^ v29;
  v39 = v34 + v30;
  v40 = v24 + 1445599364 + v27;
  v41 = v40 - v36;
  v42 = v30 - 1328190537 - (v28 ^ v30) + v29 + v35;
  v43 = (v40 - v36) ^ v36;
  v44 = v33 + v40;
  v45 = v42 ^ v35;
  v46 = v39 - 1041785072 + v35;
  v47 = v39 - 1232409416 + v45;
  v48 = v33 - 1328190537 + v36 - v37 + v41;
  v49 = v47 ^ (v46 + v38);
  v39 -= 139534866;
  v50 = v44 - 1041785072 + v41;
  v51 = v39 - v47;
  v52 = v44 - 1232409416 + (v48 ^ v41);
  v53 = v52 ^ (v50 + v43);
  v54 = ((2 * (v51 + v12)) & 0x41D71154) + ((v51 + v12) ^ 0x20EB88AA);
  v55 = v46 + 240362915 - v51;
  v56 = v49 - 1199280769 + v55;
  v57 = v44 - 139534866 - v52;
  v58 = (v55 + 569239062) ^ v56;
  v59 = v50 + 240362915 - v57;
  v60 = v53 - 1199280769 + v59;
  v56 ^= 0xE1ECDB7F;
  v57 ^= 0x2F027951u;
  v61 = v57 - v41 + 661887291;
  v62 = v39 - v46 - 240362915 + (v54 ^ 0x2F027951);
  v63 = v60 ^ (v59 + 569239062);
  v60 ^= 0xE1ECDB7F;
  v64 = v60 + v57;
  v65 = v58 - 1790107813;
  v66 = (v62 ^ 0xC9A7B4ED) - (v58 - 1790107813);
  v67 = ((v63 + 236931912) ^ v60) + v63 + 236931912;
  v68 = v64 + 2 * (v63 + 236931912);
  v63 -= 1790107813;
  v69 = (v61 ^ 0xC9A7B4ED) - v63;
  v70 = v66 ^ (((v58 + 236931912) ^ v56) + v58 + 236931912);
  v71 = (v54 ^ 0x2F027951) + v56 + 2 * (v58 + 236931912) + v70;
  v72 = v67 ^ v69;
  v73 = v66 - v58;
  v74 = (v73 + 1790107813) ^ v70;
  v75 = v74 ^ v71;
  v76 = v69 - v63;
  v77 = v72 ^ v76;
  v78 = v73 + 288913759 + v74;
  v79 = v72 ^ v76 ^ (v68 + v72);
  v80 = (v75 - 371223506) ^ 0x69EDD0C3;
  v81 = (v63 ^ 0x973ED4D) - 1679940960 + v79;
  v82 = v76 - 1501194054 + v77;
  v83 = (v65 ^ 0x973ED4D) - 1679940960 + v75;
  v84 = v77 + 743745285 - v82 - v81;
  v85 = (v79 - 371223506) ^ 0x69EDD0C3;
  v86 = v83 + 2115354724 + (v80 ^ v78);
  v87 = 454831526 - v73 - v83;
  v88 = (v85 ^ v82) + v81;
  v89 = v86 + v87;
  v90 = v86 ^ v78;
  v91 = (v86 + v87) ^ (-1189030992 - v87 + v80);
  v92 = v86 + 37352814 + v89;
  v93 = v91 ^ v92;
  v94 = v89 ^ 0x37C41F87;
  v95 = (v88 + 2115354724) ^ v82;
  v96 = v85 - v84 + (v75 & 0xB920D3B0) + (v75 & 0xB920D3B0 ^ 0xB920D3B0);
  v97 = v88 + 2115354724 + v84;
  v98 = v89 ^ 0x5B104118;
  v99 = v88 - 2142259758 + v97;
  v100 = v97 ^ 0x37C41F87;
  v101 = v99 ^ v97 ^ v96;
  v97 ^= 0x5B104118u;
  v102 = v92 - (v98 + v94);
  v103 = v98 - v102 + 953221156;
  v104 = v99 - (v97 + v100);
  v105 = v97 - v104;
  v106 = (v102 + 591377523) ^ 0x8AD95361;
  v107 = v90 - 987976692 + v94 + v103;
  v108 = (v103 - (v102 + 591377523)) ^ v106;
  v106 -= 154855873;
  v109 = v106 ^ v107;
  v110 = v106 - v108;
  v111 = v110 + v109;
  v112 = v110 - (v108 ^ 0x36D4D687);
  v104 += 591377523;
  v113 = v98 - 1343695095 + v93;
  v114 = v105 + 953221156 - v104;
  v104 ^= 0x8AD95361;
  v115 = v114 ^ v104;
  v104 -= 154855873;
  v116 = v112 ^ (v113 - v102 + v103 + v108);
  v117 = (v116 ^ v111) + (v108 ^ 0xC398F03E);
  v118 = v104 ^ (v95 - 987976692 + v100 + v105 + 953221156);
  v119 = v117 + v116;
  v120 = v104 - v115;
  v121 = v120 + v118;
  v122 = v120 - (v115 ^ 0x36D4D687);
  v123 = v119 ^ v112;
  v124 = v105 - 1343695095 + v105 + 953221156 + v101 + v115;
  v125 = v119 ^ v108 ^ 0xC398F03E;
  v126 = v125 ^ v117;
  v127 = v124 ^ v122;
  v128 = v125 - 644096343;
  v129 = (v125 - 644096343) ^ v119;
  v130 = v115 ^ 0xC398F03E;
  v131 = v129 ^ 0x47605E35;
  v132 = (v127 ^ v121) + (v115 ^ 0xC398F03E);
  v133 = v123 - v128;
  v134 = v132 + v127;
  v135 = v128 - (v129 ^ 0x47605E35);
  v136 = v126 - (v129 ^ 0x47605E35);
  v137 = v134 ^ v130;
  v138 = v137 ^ v132;
  v139 = v137 - 644096343;
  LOBYTE(STACK[0xF42]) = v136 ^ 0xC0;
  v140 = (v137 - 644096343) ^ v134;
  v141 = (v134 ^ v122) - v139;
  LOBYTE(STACK[0xD75]) = (v140 ^ 0x35) - (v13 & (2 * (v140 ^ 0x35))) - 67;
  v142 = v139 - (v140 ^ 0x47605E35);
  v143 = v138 - (v140 ^ 0x47605E35);
  LOBYTE(STACK[0xBF3]) = v142 - (v13 & (2 * v142)) - 67;
  LOBYTE(STACK[0xC3A]) = v129 ^ 0xF5;
  LOBYTE(STACK[0xCB4]) = v143 - (v13 & (2 * v143)) - 67;
  LOBYTE(STACK[0xE81]) = v135 ^ 0xC0;
  v141 ^= 0xCCF20281;
  LOBYTE(STACK[0xDC0]) = v133 ^ 0x41;
  LOBYTE(STACK[0xEFB]) = v141 - (v13 & (2 * v141)) - 67;
  v144 = v142 ^ v141;
  LOBYTE(v139) = (v142 ^ v141) - 123;
  LOBYTE(v112) = v139 & 0xEC ^ 0x9B;
  LOBYTE(v141) = 2 * ((2 * (v112 ^ v139 & 0x12)) ^ 0x24 ^ v112 ^ ((2 * (v112 ^ v139 & 0x12)) ^ 0x24) & v139);
  LOBYTE(v141) = 2 * ((2 * (v141 ^ v112 ^ v141 & v139)) ^ v112 ^ (2 * (v141 ^ v112 ^ v141 & v139)) & v139);
  v145 = v136 - v131;
  v146 = v135 ^ v131;
  v147 = v133 ^ 0xCCF20281 ^ v135;
  v135 ^= 0xEB7408A5;
  LOBYTE(v139) = v139 ^ (2 * ((2 * (v141 ^ v112 ^ v141 & v139)) ^ v112 ^ (2 * (v141 ^ v112 ^ v141 & v139)) & v139));
  v148 = v146 ^ 0x312F6BB2;
  v149 = v145 - (v135 - v147);
  LOBYTE(STACK[0xBF7]) = v139 ^ 0x51;
  v150 = v142 ^ 0xEB7408A5;
  v151 = (v142 ^ 0xEB7408A5) - v144;
  v152 = v143 - (v140 ^ 0x47605E35) - v151;
  LOBYTE(STACK[0xCFF]) = v146 ^ 0x72;
  LOBYTE(STACK[0xF46]) = (v135 - v147) ^ 0xC0;
  LOBYTE(STACK[0xC3E]) = v149 ^ 0xC0;
  v153 = v140 ^ 0x764F3587 ^ v142;
  v154 = v135 - 1139132285;
  LOBYTE(STACK[0xE3A]) = v153 + (~(2 * v153) | 0x85) - 66;
  v155 = v135 - v147 - 2112097621;
  LOBYTE(STACK[0xD79]) = v152 - (v13 & (2 * v152)) - 67;
  v156 = v149 - (v135 - 1139132285);
  v157 = v155 + v148;
  LOBYTE(STACK[0xCB8]) = v151 - (v13 & (2 * v151)) - 67;
  v151 -= 2112097621;
  v158 = v152 - (v150 - 1139132285);
  LOBYTE(STACK[0xE85]) = (v147 - 125) ^ 0xC0;
  v159 = v155 - v156;
  v160 = v151 - v158;
  v161 = (v151 - v158) ^ 0x7558E059;
  v162 = v157 - v156;
  v163 = v159 ^ v154;
  v164 = v153 - 1825166503 + v151;
  v165 = v158 + 1825166503;
  v166 = v164 - v158;
  v167 = __ROR4__(__ROR4__(v161, 17) ^ 0x702CBAAC, 15);
  LOBYTE(STACK[0xCBC]) = ((v150 - 125) ^ v167) - (v13 & (2 * ((v150 - 125) ^ v167))) - 67;
  LOBYTE(STACK[0xEFF]) = v166 + (~(2 * v166) | 0x85) - 66;
  LOBYTE(STACK[0xC42]) = v159 ^ 0xC0;
  v168 = v159 - (v156 + 1825166503);
  LOBYTE(STACK[0xD7D]) = v160 - (v13 & (2 * v160)) - 67;
  LOBYTE(STACK[0xDC4]) = (v162 + 89) ^ 0xC0;
  LOBYTE(STACK[0xE3E]) = v158 - 89 - (v13 & (2 * (v158 - 89))) - 67;
  v169 = v160 - (v158 + 1825166503);
  LOBYTE(STACK[0xF4A]) = v163 ^ 0xC0;
  v170 = v163 + v156 + 1825166503;
  v171 = v162 - 1825166503 + v168 - v170;
  LOBYTE(STACK[0xD03]) = (v156 - 89) ^ 0xC0;
  v172 = v156 + 1825166503 - v170;
  LOBYTE(STACK[0xE89]) = (v162 + 89 + v168 - v170) ^ 0xC0;
  v173 = ((v150 - 1139132285) ^ v167) + v158 + 1825166503;
  v174 = v170 - 1515948625;
  v175 = v169 + v166 - v173;
  v176 = v165 - v173;
  LOBYTE(STACK[0xD81]) = v173 + (~(2 * v173) | 0x85) - 66;
  LOBYTE(STACK[0xF03]) = v176 - (v13 & (2 * v176)) - 67;
  v177 = v171 ^ (v170 - 1515948625);
  v169 ^= 0x565AC1A3u;
  LOBYTE(STACK[0xBFB]) = v175 - (v13 & (2 * v175)) - 67;
  LOBYTE(STACK[0xC46]) = v170 ^ 0xC0;
  v178 = v168 ^ 0x565AC1A3 ^ v171;
  v173 -= 1515948625;
  LOBYTE(STACK[0xE42]) = v169 - (v13 & (2 * v169)) - 67;
  v179 = v175 ^ v169;
  v180 = v178 ^ v177;
  LOBYTE(STACK[0xDC8]) = v172 ^ 0xC0;
  v181 = v177 + v174;
  LOBYTE(STACK[0xD07]) = v168 ^ 0x63;
  v182 = v175 ^ v173;
  v183 = v173 ^ v169;
  v184 = v176 - (v182 + v179);
  LOBYTE(STACK[0xBFF]) = v184 - (v13 & (2 * v184)) - 67;
  v185 = v172 - (v177 + v178);
  v186 = v182 + v173;
  v187 = v184 ^ v186;
  LOBYTE(STACK[0xF4E]) = (v177 - 51) ^ 0xC0;
  v188 = v177 + 1961916877;
  v182 += 1961916877;
  LOBYTE(STACK[0xDCC]) = v180 ^ 0xC0;
  v189 = (v185 ^ v181) - 315247240;
  LOBYTE(STACK[0xF07]) = v183 - (v13 & (2 * v183)) - 67;
  LOBYTE(STACK[0xE46]) = v186 - (v13 & (2 * v186)) - 67;
  LOBYTE(STACK[0xCC0]) = v182 - (v13 & (2 * v182)) - 67;
  v190 = v187 ^ v182;
  LOBYTE(STACK[0xE8D]) = v185 ^ 0xC0;
  v191 = (v187 ^ v183) + v186 - v183;
  v192 = v185 ^ v181 ^ v180;
  v193 = v192 + v181 - v180;
  v194 = (v185 ^ v181 ^ v188) - v193;
  v195 = (v187 ^ v183) + 1339114111;
  v196 = v192 + 1339114111;
  v197 = v192 + 1339114111 + (v189 ^ 0x12CA4A88) + ((2 * v189) & 0x25949510);
  v198 = v195 + v187;
  LOBYTE(STACK[0xD0B]) = v181 ^ 0xC0;
  LOBYTE(STACK[0xC4A]) = v194 ^ 0xC0;
  LOBYTE(STACK[0xD85]) = v190 - v191 - (v13 & (2 * (v190 - v191))) - 67;
  LOBYTE(STACK[0xCC4]) = v198 - (v13 & (2 * v198)) - 67;
  LOBYTE(STACK[0xF0B]) = v191 - (v13 & (2 * v191)) - 67;
  LOBYTE(STACK[0xF52]) = v197 ^ 0xC0;
  v199 = v194 ^ v193;
  LOBYTE(STACK[0xC03]) = v195 - (v13 & (2 * v195)) - 67;
  LOBYTE(STACK[0xDD0]) = v193 ^ 0xC0;
  v200 = v198 ^ v191;
  v201 = (v196 ^ 0xF0634CE2 ^ v193) - (v194 ^ v193);
  v202 = (v197 ^ v193) + v201;
  v203 = v190 - 2 * ((v190 - v191) & v191);
  LOBYTE(STACK[0xE91]) = v196 ^ 0xC0;
  v204 = (v195 ^ 0xF0634CE2 ^ v191) - v203;
  LOBYTE(STACK[0xC4E]) = v202 ^ 0xC0;
  v205 = v199 ^ 0x65CB01C4;
  LOBYTE(STACK[0xC07]) = v204 - (v13 & (2 * v204)) - 67;
  v206 = v204 + v200;
  LOBYTE(STACK[0xD0F]) = v199 ^ 4;
  LOBYTE(STACK[0xD89]) = v206 - (v13 & (2 * v206)) - 67;
  v207 = v203 ^ 0x65CB01C4;
  v208 = v203 ^ 0x65CB01C4 ^ v204;
  LOBYTE(STACK[0xE4A]) = v207 - (v13 & (2 * v207)) - 67;
  v209 = v195 ^ 0x52A17A23;
  v210 = v205 ^ v201;
  LOBYTE(STACK[0xCC8]) = (v195 ^ 0x23) - (v13 & (2 * (v195 ^ 0x23))) - 67;
  v211 = v206 ^ v207;
  v212 = (v195 ^ 0x52A17A23) + 2045116411 - v207;
  LOBYTE(STACK[0xE95]) = v201 ^ 0xC0;
  v213 = v209 - 2036180600;
  LOBYTE(STACK[0xF0F]) = v209 - 120 - (v13 & (2 * (v209 - 120))) - 67;
  LOBYTE(v201) = (v212 - 108) & 0xF0 ^ 0x86;
  LOBYTE(STACK[0xF56]) = v196 ^ 0xE3;
  LOBYTE(v207) = (v212 - 108) ^ (2 * (((v212 - 108) ^ 0x74) & (2 * (((v212 - 108) ^ 0x74) & (2 * (((v212 - 108) ^ 0x74) & (2 * (((v212 - 108) ^ 0x74) & (2 * (((v212 - 108) ^ 0x74) & (2 * v201) ^ v201)) ^ v201)) ^ v201)) ^ v201)) ^ v201));
  v214 = (v196 ^ 0x52A17A23) + 2045116411 - v205;
  v215 = v210 - v214;
  v216 = v208 - v212;
  v217 = v211 - (v209 - 2036180600);
  LOBYTE(STACK[0xD8D]) = v207 ^ 0x4D;
  LOBYTE(STACK[0xCCC]) = v216 - (v13 & (2 * v216)) - 67;
  LOBYTE(STACK[0xE4E]) = v217 - (v13 & (2 * v217)) - 67;
  v218 = (v196 ^ 0x52A17A23) - 2036180600;
  v219 = (v202 ^ v205) - v218;
  LOBYTE(STACK[0xDD4]) = ((v196 ^ 0x23) - 120) ^ 0xC0;
  LOBYTE(STACK[0xD13]) = v219 ^ 0xC0;
  v220 = v215 ^ v218;
  v221 = v219 - (v215 ^ v218);
  v212 += 971237280;
  v222 = v216 ^ v213;
  v223 = v214 + 971237280;
  v224 = v212 + v213;
  LOBYTE(STACK[0xF5A]) = v215 ^ 0xC0;
  v225 = v214 + 971237280 + v218;
  LOBYTE(v196) = ((v196 - ((2 * v196) & 0xFB) + 61) ^ v196 ^ 0xE3) & a8 ^ (v214 - 120) ^ 0x9C;
  v226 = v217 - v222;
  LOBYTE(STACK[0xC52]) = v196;
  v227 = v225 ^ v220;
  v228 = (v217 - v222) ^ v212;
  v229 = v222 ^ v224;
  v230 = v226 ^ v224;
  v231 = v221 ^ v225;
  LOBYTE(STACK[0xC0B]) = v230 - (v13 & (2 * v230)) - 67;
  LOBYTE(STACK[0xDD8]) = (v221 + 120) ^ 0xC0;
  v226 += 1336308088;
  LOBYTE(STACK[0xD17]) = v221 ^ v223 ^ 0xC0;
  LOBYTE(STACK[0xF13]) = v226 - (v13 & (2 * v226)) - 67;
  LOBYTE(STACK[0xD91]) = v229 - (v13 & (2 * v229)) - 67;
  LOBYTE(STACK[0xE52]) = v228 - (v13 & (2 * v228)) - 67;
  LOBYTE(STACK[0xE99]) = v231 ^ 0xC0;
  LOBYTE(STACK[0xC56]) = v227 ^ 0xC0;
  v232 = (v221 ^ v223) - 1008054794;
  v233 = v231 - 1942269449;
  v228 -= 1008054794;
  v234 = v227 ^ 0xD23F945D ^ ((v202 & 0x17BFD4ED ^ 0x17BFD4ED) + (v202 & 0x17BFD4ED)) & 0x2DEAFDEB;
  v235 = v221 + 1336308088 - v231 - v234;
  v236 = v234 + v232;
  v237 = v236 ^ (v231 - 1942269449);
  v238 = v229 ^ 0xD79540B4;
  v239 = v226 - ((v229 ^ 0xD79540B4) + v230);
  v240 = v228 + v238;
  v230 -= 1942269449;
  v241 = v228 - v230;
  v242 = v240 ^ v230;
  LOBYTE(STACK[0xF17]) = v241 - (v13 & (2 * v241)) - 67;
  LOBYTE(STACK[0xCD0]) = v242 + (~(2 * v242) | 0x85) - 66;
  LOBYTE(STACK[0xF5E]) = v237 ^ 0xC0;
  v243 = v232 - v233 - v236;
  LOBYTE(STACK[0xDDC]) = (v232 - v233) ^ 0xC0;
  LOBYTE(STACK[0xC0F]) = v239 - (v13 & (2 * v239)) - 67;
  v244 = v236 ^ 0x14CCBA09;
  LOBYTE(STACK[0xE56]) = v240 - (v13 & (2 * v240)) - 67;
  v245 = v237 + (v236 ^ 0x14CCBA09);
  LOBYTE(STACK[0xE9D]) = v235 ^ 0xC0;
  LOBYTE(STACK[0xD1B]) = v236 ^ 0xC0;
  v246 = v241 - v240;
  v247 = v235 - v243 + v245;
  v248 = v240 ^ 0x14CCBA09;
  v249 = v242 + (v240 ^ 0x14CCBA09);
  v250 = v243 - v247;
  v251 = (v243 - v247) ^ v245;
  v252 = v239 - v246 + v249;
  v253 = v246 - v252;
  v254 = (v246 - v252) ^ v249;
  LOBYTE(STACK[0xD95]) = v254 - (v13 & (2 * v254)) - 67;
  LOBYTE(STACK[0xC5A]) = v251 ^ 0xC0;
  v255 = v250 + 520441938;
  v256 = v244 - v251;
  LOBYTE(STACK[0xF62]) = v247 ^ 0xC0;
  v257 = v244 - v251 + v247;
  *(((482 - v73) & 0x100) + ((v73 + 29) & 0x100u) + STACK[0x5B0] + 4) = v252 - (v13 & (2 * v252)) - 67;
  LOBYTE(STACK[0xEA1]) = v250 ^ 0xC0;
  v258 = ((v244 - v251) ^ v251) + v244 - v251 - (v250 + 520441938);
  v259 = v257 ^ 0x99C2B450;
  v260 = v248 - v254;
  LOBYTE(STACK[0xC13]) = v253 - (v13 & (2 * v253)) - 67;
  v261 = v260 + v252;
  LOBYTE(STACK[0xF1B]) = v260 - (v13 & (2 * v260)) - 67;
  v262 = v256 - v255 + 75761317;
  LOBYTE(STACK[0xDE0]) = v256 ^ 0xC0;
  v253 += 520441938;
  v263 = v260 - v253;
  v264 = v260 - v253 + (v260 ^ v254);
  v265 = v257 ^ 0x99C2B450 ^ v255;
  v266 = v263 + 75761317;
  v261 ^= 0x99C2B450;
  LOBYTE(STACK[0xD1F]) = v258 ^ 0xC0;
  v267 = (v265 ^ v258) + v12;
  v268 = v261 ^ v253;
  LOBYTE(STACK[0xC5E]) = v257 ^ 0x90;
  LOBYTE(STACK[0xCD8]) = (v261 ^ v253) - (v13 & (2 * (v261 ^ v253))) - 67;
  LOBYTE(STACK[0xF66]) = v265 ^ 0xC0;
  LOBYTE(STACK[0xC17]) = v266 - (v13 & (2 * v266)) - 67;
  LOBYTE(STACK[0xD99]) = v261 + (~(2 * v261) | 0x85) - 66;
  LOBYTE(STACK[0xE5A]) = v264 - (v13 & (2 * v264)) - 67;
  v269 = v266 - v261;
  v270 = v261 ^ v253 ^ v264;
  v271 = v264 ^ v253;
  v272 = v258 ^ v255;
  v273 = v271 - 1232241240;
  LOBYTE(STACK[0xEA5]) = v262 ^ 0xC0;
  v274 = v272 ^ (v262 - v259);
  LODWORD(v276) = __ROR4__(v269 ^ v271, 21) ^ 0xD78AF592;
  HIDWORD(v276) = v276;
  v275 = v276 >> 11;
  LOBYTE(v271) = (v267 - v274 - 86) ^ ((87 - v271) | (v271 - 88)) & a8;
  v277 = v270 - (v275 ^ 0xB25AF15E);
  LOBYTE(STACK[0xDE4]) = v271 - (v13 & (2 * v271)) - 67;
  LOBYTE(STACK[0xF1F]) = v277 - (v13 & (2 * v277)) - 67;
  LOBYTE(STACK[0xE5E]) = v273 - (v13 & (2 * v273)) - 67;
  v278 = v265 - (v267 - v274);
  v279 = v278 - 2111590162;
  LOBYTE(STACK[0xD23]) = (v272 - 88) ^ 0xC0;
  v280 = v268 - 1559283304 - v277;
  LOBYTE(STACK[0xC62]) = (v278 - 18) ^ 0xC0;
  LOBYTE(STACK[0xD9D]) = v280 - (v13 & (2 * v280)) - 67;
  v281 = (v274 ^ -v274 ^ (a8 - (v274 ^ a8))) - 111;
  LOBYTE(STACK[0xF6A]) = v281 ^ (2 * (((2 * (((2 * (((2 * (((2 * (v281 ^ 0x2C)) & 0x68 ^ 0x34) & (v281 ^ 0x2C))) ^ 0x34) & (v281 ^ 0x2C))) ^ 0x34) & (v281 ^ 0x2C))) ^ 0x34) & (v281 ^ 0x6C))) ^ v11;
  v282 = v273 - (v268 - 1559283304);
  LOBYTE(STACK[0xCDC]) = (v275 ^ 0x5E) - (v13 & (2 * (v275 ^ 0x5E))) - 67;
  v283 = ((232541969 - v278) & 0xAA46154) + ((v278 - 2111590162) & 0xAA46154);
  v284 = (v275 ^ 0xB25AF15E) + 243058316;
  v285 = v272 - v265;
  LOBYTE(STACK[0xDE8]) = (v272 - v265 + 78) ^ 0xC0;
  LOBYTE(STACK[0xC1B]) = v268 + 24 - (v13 & (2 * (v268 + 24))) - 67;
  LOBYTE(STACK[0xEA9]) = (v265 + 24) ^ 0xC0;
  v286 = v272 - v265 + (v279 ^ 0x5CC782FE);
  v287 = v274 - ((v275 & 0x47843C5 ^ 0x4200281 | (v275 ^ 0xB25AF15E) & 0x47843C5 | v283) ^ 0xFF7F5AA1);
  LOBYTE(STACK[0xF23]) = v282 + 62 - (v13 & (2 * (v282 + 62))) - 67;
  v288 = v280 ^ 0x5CC782FE;
  LOBYTE(STACK[0xE62]) = (v280 ^ 0xFE) - (v13 & (2 * (v280 ^ 0xFE))) - 67;
  LOBYTE(STACK[0xDA1]) = (v275 ^ 0x5E) - 116 - (v13 & (2 * ((v275 ^ 0x5E) - 116))) - 67;
  v289 = (v265 - 133461224) ^ 0xD989028A;
  LOBYTE(v280) = v279 ^ 0x3E;
  v290 = (v268 - 133461224) ^ 0xD989028A;
  LOBYTE(STACK[0xD27]) = v280;
  LOBYTE(STACK[0xC66]) = v287 ^ 0xC0;
  v291 = v282 - (v290 + v268) + 662924838;
  LOBYTE(STACK[0xC1F]) = v291 - (v13 & (2 * v291)) - 67;
  v292 = v285 - v265 - v289 + 989966902;
  LOBYTE(STACK[0xF6E]) = (((v265 + 24) ^ 0x8A) + 71) ^ 0xC0;
  v293 = v265 - 1083664924 + v287;
  LOBYTE(STACK[0xEAD]) = v292 ^ 0xC0;
  v294 = v268 - 1083664924 + v284;
  v295 = v294 + v282 + 529463614 + v288;
  LOBYTE(STACK[0xF27]) = v295 - (v13 & (2 * v295)) - 67;
  LOBYTE(v282) = (v290 - 119) & 0x48 ^ 0x4D;
  LOBYTE(v287) = (v290 - 119) ^ 0x3E;
  v296 = v286 + 856505678 + v293;
  v297 = v295 - v291;
  LOBYTE(STACK[0xCE0]) = (v290 - 119) ^ (2 * (v287 & (2 * (v287 & (2 * (v287 & (2 * (v287 & (2 * (v287 & (2 * (v287 & 0x36 ^ v282)) ^ v282)) ^ v282)) ^ v282)) ^ v282)) ^ v282)) ^ 0xF5;
  LOBYTE(v273) = v296 - v292;
  LOBYTE(STACK[0xD2B]) = v293 ^ 0xC0;
  LOBYTE(STACK[0xE66]) = v294 - (v13 & (2 * v294)) - 67;
  LOBYTE(STACK[0xC6A]) = (v289 + 59) ^ 0xC0;
  v298 = v293 - (v296 - v292);
  v299 = v294 - v297;
  LOBYTE(STACK[0xDEC]) = v296 ^ 0xC0;
  LOBYTE(STACK[0xF72]) = ((v292 ^ 0xA5) + 122) ^ 0xC0;
  v300 = (v296 - v292) ^ (v289 + 212543369);
  v301 = v297 ^ (v290 + 212543369);
  LOBYTE(STACK[0xC23]) = v301 - (v13 & (2 * v301)) - 67;
  LOBYTE(STACK[0xDA5]) = v290 + 59 - (v13 & (2 * (v290 + 59))) - 67;
  LOBYTE(STACK[0xCE4]) = (v291 ^ 0xA5) + 122 - (v13 & (2 * ((v291 ^ 0xA5) + 122))) - 67;
  LOBYTE(STACK[0xF2B]) = v299 + v290 - 119 - (v13 & (2 * (v299 + v290 - 119))) - 67;
  LOBYTE(STACK[0xDF0]) = (v298 + v289 - 119) ^ 0xC0;
  LOBYTE(STACK[0xEB1]) = v273 ^ (v289 - 119) ^ 0xC0;
  LODWORD(STACK[0x58C]) = v300 + 558880493;
  LODWORD(STACK[0x588]) = v301 - ((((v300 + 558880493) & 0xFEC0430B) + ((-558880494 - v300) & 0xFEC0430B)) & 0x9F000404 | 0x40B02913);
  LODWORD(STACK[0x580]) = -315247240 - (v298 + v289 + 212543369);
  LODWORD(STACK[0x5A8]) = -(v299 + v290 + 212543369);
  return (*(v10 + 8 * (LODWORD(STACK[0x590]) ^ (STACK[0x3E4] & 1 | (16 * (STACK[0x3E4] & 1))))))();
}

uint64_t sub_1000369A0()
{
  if (STACK[0x608])
  {
    v2 = STACK[0x830] == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  return (*(v0 + 8 * ((v3 * ((v1 ^ 0x11D0) + 2672)) ^ (v1 - 2203))))();
}

uint64_t sub_1000369F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, char a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19)
{
  a17 = (v19 + 958) ^ (33731311 * (((&a16 | 0x44B2017E) - &a16 + (&a16 & 0xBB4DFE80)) ^ 0x7D44CB5D));
  a18 = a12;
  a19 = &a11;
  (*(v20 + 8 * (v19 + 7307)))(&a16);
  a17 = (v19 + 958) ^ (33731311 * ((((2 * &a16) | 0x615C79BE) - &a16 - 816725215) ^ 0x958F6FC));
  a18 = a12;
  a19 = &a14;
  (*(v20 + 8 * (v19 + 7307)))(&a16);
  a18 = a12;
  LODWORD(a19) = v19 - 2008441969 * ((&a16 & 0x2FFA3A0 | ~(&a16 | 0x2FFA3A0)) ^ 0xB5990851) + 3391;
  v22 = (*(v20 + 8 * (v19 + 7357)))(&a16);
  return (*(v20 + 8 * (((a16 != v21) * ((((v19 + 1871402716) & 0x9074BFDF) - 837650645) ^ (v19 - 837644755))) ^ v19)))(v22);
}

uint64_t sub_100036B64@<X0>(uint64_t a1@<X2>, uint64_t a2@<X5>, uint64_t a3@<X6>, uint64_t a4@<X7>, int a5@<W8>, int8x16_t a6@<Q0>, int8x16_t a7@<Q1>, int64x2_t a8@<Q2>, int8x16_t a9@<Q3>, int64x2_t a10@<Q4>, int8x16_t a11@<Q5>, int8x16_t a12@<Q6>, int8x16_t a13@<Q7>, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v77 = a1 - 8;
  v78.i64[0] = a3 + v77 + 11;
  v78.i64[1] = a3 + v77 + 10;
  v79.i64[0] = a3 + v77 + 13;
  v79.i64[1] = a3 + v77 + 12;
  v80.i64[0] = a3 + v77 + 17;
  v80.i64[1] = a3 + v77 + 16;
  v81.i64[0] = a3 + v77 + 15;
  v81.i64[1] = a4 + v77 + v65 + 8;
  v82 = vandq_s8(v81, a6);
  v83 = vandq_s8(v80, a6);
  v84 = vandq_s8(v79, a6);
  v85 = vandq_s8(v78, a6);
  v86 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v87 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v88 = vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL);
  v89 = vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL);
  v90 = vsubq_s64(v88, vandq_s8(vaddq_s64(vaddq_s64(v88, v88), a8), a9));
  v91 = vsubq_s64(v89, vandq_s8(vaddq_s64(vaddq_s64(v89, v89), a8), a9));
  v92 = vaddq_s64(vsubq_s64(v87, vandq_s8(vaddq_s64(vaddq_s64(v87, v87), a8), a9)), a10);
  v93 = vaddq_s64(vsubq_s64(v86, vandq_s8(vaddq_s64(vaddq_s64(v86, v86), a8), a9)), a10);
  v94 = veorq_s8(v93, a11);
  v95 = veorq_s8(v92, a11);
  v96 = veorq_s8(v92, a12);
  v97 = veorq_s8(v93, a12);
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), a13);
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v97), a13);
  v100 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v101 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v102 = veorq_s8(v98, v100);
  v103 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v102);
  v105 = veorq_s8(vaddq_s64(v103, v101), v68);
  v106 = veorq_s8(v104, v68);
  v107 = vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL);
  v108 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL));
  v109 = veorq_s8(v105, v107);
  v110 = vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL);
  v111 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v109);
  v112 = veorq_s8(vaddq_s64(v110, v108), v69);
  v113 = veorq_s8(v111, v69);
  v114 = vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL);
  v115 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v116 = veorq_s8(v112, v114);
  v117 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v118 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v116);
  v119 = vaddq_s64(v117, v115);
  v120 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v119, v119), v70), v119), v71), v72);
  v121 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v118, v118), v70), v118), v71), v72);
  v122 = vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL);
  v123 = veorq_s8(v121, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v124 = veorq_s8(v120, v122);
  v125 = vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL), v124);
  v127 = veorq_s8(vaddq_s64(v125, v123), v73);
  v128 = veorq_s8(v126, v73);
  v129 = vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL);
  v130 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v131 = veorq_s8(v127, v129);
  v132 = vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL);
  v133 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v131);
  v134 = veorq_s8(vaddq_s64(v132, v130), v74);
  v135 = veorq_s8(v133, v74);
  v136 = vsraq_n_u64(vshlq_n_s64(v130, 3uLL), v130, 0x3DuLL);
  v137 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v138 = veorq_s8(v134, v136);
  v139 = vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL);
  v140 = vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL);
  v141 = vaddq_s64(v90, a10);
  v142 = vaddq_s64(v140, v138);
  v143 = veorq_s8(vaddq_s64(v139, v137), v75);
  v174.val[3] = vshlq_u64(veorq_s8(v142, v75), vnegq_s64(vandq_s8(vshlq_n_s64(v78, 3uLL), a7)));
  v174.val[2] = vshlq_u64(v143, vnegq_s64(vandq_s8(vshlq_n_s64(v79, 3uLL), a7)));
  v144 = veorq_s8(v141, a11);
  v145 = veorq_s8(v141, a12);
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), a13);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147), v68);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149), v69);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151);
  v153 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v152, v152), v70), v152), v71), v72);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v155 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154), v73);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156), v74);
  v158 = vaddq_s64(v91, a10);
  v174.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL))), v75), vnegq_s64(vandq_s8(vshlq_n_s64(v80, 3uLL), a7)));
  v159 = veorq_s8(v158, a11);
  v160 = veorq_s8(v158, a12);
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), a13);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), v68);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), v69);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), v70), v167), v71), v72);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v73);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v74);
  v174.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL))), v75), vnegq_s64(vandq_s8(vshlq_n_s64(v81, 3uLL), a7)));
  *(a3 + v77 + 10) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v174, v76)), *(v66 + v77));
  return (*(a65 + 8 * (((a2 == v77) * v67) ^ a5)))();
}

uint64_t sub_100036B78()
{
  v2 = STACK[0x450];
  (*(v1 + 8 * (v0 ^ 0x25D2)))(&STACK[0xCD7], 4096);
  STACK[0x478] = *(v1 + 8 * v0);
  return sub_1000B0D70(v2);
}

uint64_t sub_100036CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = 1317436891 * (((&a14 | 0xBAB221AE) - (&a14 & 0xBAB221AE)) ^ 0xAB1B9D8) + 8154;
  v19 = (*(v17 + 77096))(&a14);
  return (*(v17 + 8 * ((6691 * (a15 == v16)) ^ v18)))(v19);
}

uint64_t sub_100036D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  v18 = (a4 ^ 0xB6ECE84E) + (((a17 ^ 0x1F074BD8) - 520571864) ^ ((a17 ^ 0x15055439) - 352670777) ^ ((a17 ^ 0x1C786B2) - 29853362));
  v19 = (v18 ^ 0x42968DEC) & (2 * (v18 & 0x54D8CDE9)) ^ v18 & 0x54D8CDE9;
  v20 = ((2 * (v18 ^ (a4 - 1029217384))) ^ 0x2CFE96AA) & (v18 ^ (a4 - 1029217384)) ^ (2 * (v18 ^ (a4 - 1029217384))) & 0x967F4B54 ^ 0x92014955;
  v21 = (((2 * (v18 ^ (a4 - 1029217384))) ^ 0x2CFE96AA) & (v18 ^ (a4 - 1029217384)) ^ (2 * (v18 ^ (a4 - 1029217384))) & 0x967F4B54 ^ 0x4660200) & (4 * v19) ^ v19;
  v22 = ((4 * v20) ^ 0x59FD2D54) & v20 ^ (4 * v20) & 0x967F4B54;
  v23 = (v22 ^ 0x107D0950) & (16 * v21) ^ v21;
  v24 = ((16 * (v22 ^ 0x86024201)) ^ 0x67F4B550) & (v22 ^ 0x86024201) ^ (16 * (v22 ^ 0x86024201)) & 0x967F4B50;
  v25 = (v18 ^ (2 * ((((v24 ^ 0x900B4A05) << 8) & 0x167F0000 ^ 0x164B0000 ^ (((v24 ^ 0x900B4A05) << 8) ^ 0x7F4B0000) & (v24 ^ 0x900B4A05)) & (((v24 ^ 0x6740100) & (v23 << 8) ^ v23) << 16) ^ (v24 ^ 0x6740100) & (v23 << 8) ^ v23))) != 1423494633;
  return (*(v17 + 8 * ((2 * v25) | (8 * v25) | a4)))(a1, a2, a3, 16257999);
}

uint64_t sub_100036F70(int a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v71 = a1 - 5430;
  v72 = __ROR8__(a4 & 0xFFFFFFFFFFFFFFF8, 8);
  v73 = -2 - (((0xD263A9391262C1D1 - v72) | 0x23ABB080323C1D9ELL) + ((v72 + 0x2D9C56C6ED9D3E2ELL) | 0xDC544F7FCDC3E261));
  v74 = __ROR8__(v73 ^ 0xA8C1DB874C757D0FLL, 8);
  v73 ^= 0xC4236DB0209C8C7ELL;
  v75 = __ROR8__((((2 * (v74 + v73)) | 0x99D223D2D02820B2) - (v74 + v73) - 0x4CE911E968141059) ^ 0xB77E0557A23878B0, 8);
  v76 = (((2 * (v74 + v73)) | 0x99D223D2D02820B2) - (v74 + v73) - 0x4CE911E968141059) ^ 0xB77E0557A23878B0 ^ __ROR8__(v73, 61);
  v77 = (((2 * (v75 + v76)) & 0x8F6525C9DD8836E8) - (v75 + v76) - 0x47B292E4EEC41B75) ^ 0x5C211E60F3C7390;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ 0xFD8B533ED96A4334;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0xAC7DA0564C1838BLL;
  v82 = __ROR8__(v81, 8);
  v83 = v81 ^ __ROR8__(v80, 61);
  v84 = (((2 * (v82 + v83)) & 0xF027525D3234064ALL) - (v82 + v83) + 0x7EC56D166E5FCDALL) ^ 0x667CF1B31898F7A3;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (((v86 + v85) & 0x8EAD920A7052A3D5 ^ 0xE0482026042A2D4) + ((v86 + v85) & 0x71526DF58FAD5C2ALL ^ 0x21120D218DA55809) - 1) ^ 0xA15BE1E9D9DADD82;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = __ROR8__(v87, 8);
  v90 = *(a71 + 8 * v71);
  LOBYTE(v88) = ((0x3205D7FD44242D8DLL - ((v89 + v88) | 0x3205D7FD44242D8DLL) + ((v89 + v88) | 0xCDFA2802BBDBD272)) ^ 0x9C4169731436145ALL) >> (8 * (a4 & 7u));
  v91 = __ROR8__((a4 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  *a4 = v88;
  v92 = ((0x5263A9391262C1D1 - v91) & 0x4BA5C546AFD99716) + v91 + 0x2D9C56C6ED9D3E2ELL - ((v91 + 0x2D9C56C6ED9D3E2ELL) & 0x4BA5C546AFD99716);
  v93 = v92 ^ 0xC0CFAE41D190F787;
  v92 ^= 0xAC2D1876BD7906F6;
  v94 = (__ROR8__(v93, 8) + v92) ^ 0xFB9714BECA2C68E9;
  v95 = v94 ^ __ROR8__(v92, 61);
  v96 = (__ROR8__(v94, 8) + v95) ^ 0xBD8F7CFD1E07971BLL;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ 0xFD8B533ED96A4334;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = __ROR8__(v98, 8);
  v101 = (0x1D2752216EB1A3C7 - ((v100 + v99) | 0x1D2752216EB1A3C7) + ((v100 + v99) | 0xE2D8ADDE914E5C38)) ^ 0xE81F77DBF58FDFB3;
  v102 = v101 ^ __ROR8__(v99, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0x6190A7627E7D0B79;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = (__ROR8__(v103, 8) + v104) ^ 0x8E4D6ECA343D275ELL;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = __ROR8__(v105, 8);
  *(a4 + 1) = ((((2 * (v107 + v106)) & 0xC884705B0AEFB5E8) - (v107 + v106) + 0x1BBDC7D27A88250BLL) ^ 0x4A0686A3D565E323) >> (8 * ((a4 + 1) & 7));
  v108 = (__ROR8__((a4 + 2) & 0xFFFFFFFFFFFFFFF8, 8) + 0x2D9C56C6ED9D3E2ELL) & 0xFBFFFFFFFFFFFFFFLL;
  v109 = v108 ^ 0x8F6A6B077E496091;
  v108 ^= 0xE388DD3012A091E0;
  v110 = (__ROR8__(v109, 8) + v108) ^ 0xFB9714BECA2C68E9;
  v111 = v110 ^ __ROR8__(v108, 61);
  v112 = (__ROR8__(v110, 8) + v111) ^ 0xBD8F7CFD1E07971BLL;
  v113 = v112 ^ __ROR8__(v111, 61);
  v114 = (__ROR8__(v112, 8) + v113) ^ 0xFD8B533ED96A4334;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = __ROR8__(v114, 8);
  v117 = (((2 * (v116 + v115)) | 0x333C1D6226586300) - (v116 + v115) + 0x6661F14EECD3CE80) ^ 0x9359D4B477EDB20BLL;
  v118 = v117 ^ __ROR8__(v115, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0x6190A7627E7D0B79;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = __ROR8__(v119, 8);
  v122 = (((2 * (v121 + v120)) | 0xB3087D222DCB6276) - (v121 + v120) + 0x267BC16EE91A4EC5) ^ 0x57C9505B22D89665;
  *(a4 + 2) = ((__ROR8__(v122, 8) + (v122 ^ __ROR8__(v120, 61))) ^ 0x51BB4171AFEDC628) >> (8 * ((a4 + 2) & 7));
  v123 = __ROR8__((a4 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v124 = (v123 + 0x2D9C56C6ED9D3E2ELL) ^ 0xE788DD3012A091E0;
  v125 = (__ROR8__((v123 + 0x2D9C56C6ED9D3E2ELL) ^ 0x8B6A6B077E496091, 8) + v124) ^ 0xFB9714BECA2C68E9;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = __ROR8__(v125, 8);
  v128 = (v127 + v126 - ((2 * (v127 + v126)) & 0x60C6AC64451B9A2ALL) + 0x30635632228DCD15) ^ 0x8DEC2ACF3C8A5A0ELL;
  v129 = v128 ^ __ROR8__(v126, 61);
  v130 = __ROR8__(v128, 8);
  v131 = __ROR8__((0x642DC2ADAD339112 - ((v130 + v129) | 0x642DC2ADAD339112) + ((v130 + v129) | 0x9BD23D5252CC6EEDLL)) ^ 0x66596E6C8BA62DD9, 8);
  v132 = (0x642DC2ADAD339112 - ((v130 + v129) | 0x642DC2ADAD339112) + ((v130 + v129) | 0x9BD23D5252CC6EEDLL)) ^ 0x66596E6C8BA62DD9 ^ __ROR8__(v129, 61);
  v133 = (v131 + v132) ^ 0xAC7DA0564C1838BLL;
  v134 = v133 ^ __ROR8__(v132, 61);
  v135 = __ROR8__(v133, 8);
  v136 = (((v135 + v134) ^ 0x2A44837A6D1B1138) - ((2 * ((v135 + v134) ^ 0x2A44837A6D1B1138)) & 0x2C0C21C03C023D7ALL) - 0x69F9EF1FE1FEE143) ^ 0xDDD234F80D6704FCLL;
  v137 = v136 ^ __ROR8__(v134, 61);
  v138 = __ROR8__(v136, 8);
  v139 = (((2 * (v138 + v137)) & 0x7D331DC7FBD5E894) - (v138 + v137) + 0x4166711C02150BB5) ^ 0xCF2B1FD636282CEBLL;
  v140 = v139 ^ __ROR8__(v137, 61);
  v141 = __ROR8__(v139, 8);
  *(a4 + 3) = ((v141 + v140) ^ 0x51BB4171AFEDC628) >> (8 * ((a4 + 3) & 7));
  return v90(v141, 0x642DC2ADAD339112, 0x6190A7627E7D0B79, 0xDDD234F80D6704FCLL, 0x4BA5C546AFD99716, 0x3205D7FD44242D8DLL, 0x1D2752216EB1A3C7, a4 + 4, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
}

uint64_t sub_100037C00@<X0>(uint64_t a1@<X8>)
{
  v8 = 956911519 * ((((v7 - 232) ^ 0xA09ADAD4) + 628963678 - 2 * (((v7 - 232) ^ 0xA09ADAD4) & 0x257D395E)) ^ 0x6F76938F);
  *(v7 - 216) = v2 ^ v8;
  *(v7 - 232) = v5;
  *(v7 - 224) = a1;
  *(v7 - 188) = (v4 + 1323) ^ v8;
  *(v7 - 208) = v3;
  *(v7 - 192) = v8 ^ 0x5A8CE82;
  *(v7 - 200) = ((v1 ^ 0x39F66DDE) - 956301314 + ((v1 << (v4 + 20)) & 0x73ECDBBC)) ^ v8;
  v9 = (*(v6 + 8 * (v4 ^ 0x2143)))(v7 - 232);
  return (STACK[0x4C0])(v9);
}

uint64_t sub_100037E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, int a13, unsigned int a14)
{
  a12 = &a10;
  a14 = v15 + 1317436891 * ((&a12 & 0x2671BDF2 | ~(&a12 | 0x2671BDF2)) ^ 0x698DDA7B) + 6969;
  v17 = (*(v14 + 8 * (v15 ^ 0x2104u)))(&a12);
  return (*(v14 + 8 * (((a13 == (v15 ^ 0x123B) + 16252213) * (v16 - 1384129665)) ^ v15)))(v17);
}

uint64_t sub_100037F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, int a12, uint64_t a13, uint64_t a14)
{
  v19 = ((((2 * (v18 - 136)) | 0x1D792CF4) - (v18 - 136) - 247240314) ^ 0x38C915F9) * v15;
  *(v18 - 132) = v19 + a12 + (*v17 ^ 0x70BEBFBF) + ((2 * *v17) & 0xE17D7F7E) - 1352798902;
  *(v18 - 128) = v19 + a11 + 4160;
  *(v14 + 16) = a14;
  v20 = (*(v16 + 8 * (a11 + 6081)))(v18 - 136);
  return (*(v16 + 8 * ((14 * (*(v18 - 136) != 16257999)) ^ a12)))(v20);
}

uint64_t sub_100038028(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (v72 ^ a2) + a32;
  STACK[0x928] = v73;
  return (*(a72 + 8 * ((a71 + 1820) ^ (57 * (v73 <= a28)))))();
}

uint64_t sub_10003809C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, _DWORD *a55)
{
  *STACK[0x7A0] = v55;
  *a55 = STACK[0x774];
  return (STACK[0x498])();
}

uint64_t sub_1000380D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((v3 + 2026) ^ 0xFFFFFFFFFFFFDD9ELL) + v2;
  v6 = *(a2 + v5 - 15);
  v7 = *(a2 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * (((2 * ((v2 & 0xFFFFFFE0) == 32)) | (8 * ((v2 & 0xFFFFFFE0) == 32))) ^ v3)))();
}

uint64_t sub_100038130@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, int a3@<W8>)
{
  v7 = *(v3 + (a3 + 776 * (v6 & 0xF) - 969 * ((4432371 * (a3 + 776 * (v6 & 0xF))) >> 32)));
  v8 = (16 * *(v3 + (v4 + 218731 + 776 * (v6 >> 4) - 1142) % 0x3C9)) ^ 0xD0;
  v9 = 149 * (((v8 - ((2 * v8) & 0x60) - 67) ^ v7) ^ 0x41 ^ (((v8 - ((2 * v8) & 0x60) - 67) ^ v7) & 0x6E | ((v8 - ((2 * v8) & 0x60) - 67) ^ ~v7) & 0x42 | ((v8 - ((2 * v8) & 0x60) - 67) ^ ~v7) & 0x2C) & ((14 - v5) ^ v6)) + 41869;
  v10 = 776 * (((*(a2 + (v9 - 928 * ((4628198 * v9) >> 32))) - 78) >> 4) ^ 0xC) + 478792;
  *(v3 + 776 * v6 % 0x3C9) = (16 * *(v3 + (v10 - 969 * ((4432371 * v10) >> 32)))) ^ 0x6D;
  return (*(a1 + 8 * ((7 * (v5 == 1017337742)) ^ v4)))();
}

uint64_t sub_1000382B4@<X0>(int a1@<W8>)
{
  v2 = a1 + 5738;
  (*(v1 + 8 * (a1 ^ 0x2BD7)))();
  return (*(v1 + 8 * (((STACK[0x688] == 0) * (((v2 - 1918773064) & 0x725E1FFF) + ((v2 - 7497) ^ 0xFFFFE358))) ^ v2)))();
}

uint64_t sub_10003831C()
{
  v3 = *v1;
  STACK[0x470] = 0;
  STACK[0x658] = 0;
  return (*(v2 + 8 * ((100 * (v3 != 0)) ^ v0)))();
}

uint64_t sub_10003835C(_DWORD *a1)
{
  v1 = *a1 + 1317436891 * ((-696727548 - (a1 | 0xD678C804) + (a1 | 0x298737FB)) ^ 0x9984AF8D);
  v2 = *(&off_100755B60 + (v1 - 167987141));
  v8 = v1 - 167983112 - 33731311 * ((&v5 & 0x9692E003 | ~(&v5 | 0x9692E003)) ^ 0x509BD5DF);
  v7 = (v2 - 4);
  v3 = *(&off_100755B60 + (v1 ^ 0xA034830)) - 8;
  (*&v3[8 * (v1 ^ 0xA036C7E)])(&v5);
  v8 = v1 - 167983112 - 33731311 * ((2 * (&v5 & 0x441EA828) - &v5 + 1004623826) ^ 0x2179DF1);
  v7 = *(&off_100755B60 + (v1 ^ 0xA0349C3)) - 4;
  (*&v3[8 * (v1 - 167977934)])(&v5);
  v5 = v1 - 167980157 + 2008441969 * ((((2 * &v5) | 0xF43D9F04) - &v5 - 2048839554) ^ 0x32879B8C);
  v6 = 8 - 113 * ((((2 * &v5) | 4) - &v5 + 126) ^ 0x8C);
  return (*&v3[8 * (v1 ^ 0xA036CBF)])(&v5);
}

void sub_100038560(uint64_t a1)
{
  v1 = *a1 - 1358806181 * (((a1 | 0xBF27F6E) - a1 + (a1 & 0xF40D8091)) ^ 0x34DD13ED);
  v2 = *(a1 + 8);
  v3 = *(&off_100755B60 + v1 - 3084) - 8;
  (*&v3[8 * v1 + 50224])(*(&off_100755B60 + v1 - 3232), sub_1000B1988);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100038648(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = (v4 - 4941) ^ 0xE8B;
  *v6 = a1;
  *a4 = v11;
  v9 = (v8 + 1732345028) & 0x98BE7EBF;
  v16 = (v8 + 5599) ^ ((&v14 ^ 0x5869D362) * v5);
  v15 = v12;
  (*(v7 + 8 * ((v4 - 4941) ^ 0x21BC)))(&v14);
  v15 = v13;
  v16 = (v9 + 6747) ^ (((&v14 + 1076979627 - 2 * (&v14 & 0x403167AB)) ^ 0x1858B4C9) * v5);
  (*(v7 + 8 * (v9 ^ 0x23B3)))(&v14);
  return 0;
}

uint64_t sub_10003876C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (v3 - 1565510552);
  v6 = *(a2 + v5 - 7062 + v2 - 31);
  v7 = a1 + v5 - 7062 + v2;
  *(v7 - 15) = *(a2 + v5 - 7062 + v2 - 15);
  *(v7 - 31) = v6;
  return (*(v4 + 8 * ((4340 * ((v2 & 0xFFFFFFE0) == 32)) ^ (v3 - 1565513947))))();
}

uint64_t sub_100038838(uint64_t result)
{
  v1 = 1824088897 * ((-2 - ((~result | 0x598C86AE847C51B8) + (result | 0xA67379517B83AE47))) ^ 0x340BEBA5DC1582DALL);
  v2 = *(result + 40) ^ v1;
  v3 = *result ^ v1;
  v4 = *(result + 32);
  v5 = v4 ^ v1;
  v6 = *(result + 16);
  v7 = v6 ^ v1;
  v8 = *(result + 12) - v1;
  v9 = *(result + 24) + v1;
  v10 = v7 > v5;
  v11 = v6 == v4;
  if (v3)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (!v12)
  {
    v2 = v8;
  }

  *(result + 4) = v2 ^ v9;
  return result;
}

uint64_t sub_1000389D0(int a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = LODWORD(STACK[0x590]) + 1925860716;
  v9 = ((*STACK[0x398] ^ 0xF6FA6FFD) + ((*STACK[0x398] << ((v7 - 25) & 0x35 ^ 0x34)) & 0x1FA) - 748992964) * a6 - v6 + 448460946;
  v10 = ((((v9 + a1 + v9 % 0x101) ^ 0xCAEAD68B) + 2 * ((v9 + a1 + v9 % 0x101) & 0xCAEAD68B)) ^ LODWORD(STACK[0x5B0])) + a2;
  v11 = v10 ^ LODWORD(STACK[0x5B0]);
  v12 = v10 + a1;
  v13 = -890579317 - v10;
  HIDWORD(v14) = v10;
  LODWORD(v14) = v10;
  v15 = (((v14 >> 31) - (a1 - 890579317)) ^ v11) + a3;
  v16 = v15 ^ v12;
  v17 = v15 + v11;
  HIDWORD(v14) = v15;
  LODWORD(v14) = v15;
  v18 = v15 ^ v13;
  v19 = ((v16 + (v14 >> 29) - v18) ^ v17) + 1573817735;
  v20 = v19 + v17;
  v21 = v19 ^ v16;
  v22 = v19 + v18;
  HIDWORD(v14) = v19;
  LODWORD(v14) = v19;
  v23 = (v14 >> 31) - (v19 ^ v16);
  v24 = v8 > 0x73C0BB49;
  if (v8 < 0x73C0BB48)
  {
    v24 = 1;
  }

  v25 = ((v23 ^ v22) - v20) ^ 0xC89B4787;
  LODWORD(STACK[0x5B0]) = v20 - v25;
  return (*(STACK[0x598] + 8 * ((3002 * v24) ^ (v7 - 1390))))(v25 ^ v21);
}

_DWORD *sub_100038B60(uint64_t a1)
{
  v1 = 1824088897 * ((a1 + 988125058 - 2 * (a1 & 0x3AE59782)) ^ 0x628C44E0);
  v2 = *(a1 + 20) + v1;
  v3 = *(a1 + 24) + v1;
  v4 = *(a1 + 32);
  v5 = *(&off_100755B60 + (v2 ^ 0x2C5EF54B)) - 8;
  if (v3 == 1461241532)
  {
    __asm { BRAA            X12, X17 }
  }

  if (v3 == 1461241535)
  {
    __asm { BRAA            X8, X17 }
  }

  if (v3 == 1461241534)
  {
    __asm { BRAA            X12, X17 }
  }

  return sub_1000874F0(a1, 16215968);
}

uint64_t sub_100038E00(uint64_t a1, uint64_t a2)
{
  LOWORD(STACK[0x9FE]) = v2;
  LODWORD(STACK[0x380]) = v2;
  return sub_100140A90(a1, a2, v3 - 8549);
}

uint64_t sub_100038E1C@<X0>(int a1@<W5>, int a2@<W6>, int a3@<W8>)
{
  LODWORD(STACK[0x570]) = a3;
  STACK[0x330] = 0;
  LODWORD(STACK[0x420]) = 0;
  STACK[0x358] = 0;
  STACK[0x320] = 0;
  v9 = STACK[0x6DC];
  LODWORD(STACK[0x540]) = STACK[0x6DC];
  LODWORD(STACK[0x4F8]) = v7 + 2347 * ((a2 - v7 - a1) / 0x92Bu);
  LODWORD(STACK[0x57C]) = -1673081951 * v9;
  v10 = -1673081951 * v9 - 1663319554;
  v11 = (v10 >> 10) ^ 0xA53DC9F5;
  LODWORD(STACK[0x454]) = v11;
  LODWORD(STACK[0x440]) = v10 >> 22;
  LODWORD(STACK[0x4F4]) = v10 >> 21;
  v12 = (v10 >> 21) ^ 0x89B2AFE6;
  LODWORD(STACK[0x460]) = v12;
  v13 = (v10 >> 11) ^ 0xCAD4D7B;
  LODWORD(STACK[0x480]) = v13;
  LODWORD(STACK[0x43C]) = v10 >> 25;
  v14 = (v10 >> 25) ^ 0x9A6CE7FA;
  LODWORD(STACK[0x490]) = v14;
  v15 = HIBYTE(v10) ^ (v10 >> 17) ^ (v10 >> 22) ^ v11 ^ v13 ^ v14 ^ v12;
  v16 = HIWORD(v10) ^ 0x47E63683;
  LODWORD(STACK[0x424]) = v16;
  v17 = (v10 >> 19) ^ 0x99EDDBDB;
  LODWORD(STACK[0x418]) = v17;
  v18 = (v10 >> 12) ^ 0xE1274617;
  LODWORD(STACK[0x41C]) = v18;
  v19 = (v10 >> 14) ^ 0xA7DE8929;
  LODWORD(STACK[0x470]) = v19;
  v20 = v15 ^ v17 ^ v16 ^ v19 ^ v18;
  v21 = (v10 >> 30) | 0x6A82C5B8;
  LODWORD(STACK[0x504]) = v21;
  v22 = (v10 >> 9) ^ 0x6BC298C3;
  LODWORD(STACK[0x458]) = v22;
  v23 = (v10 >> 29) ^ 0x5630615;
  LODWORD(STACK[0x508]) = v23;
  v24 = v21 ^ v23;
  LODWORD(STACK[0x46C]) = v24;
  v25 = v20 ^ v22 ^ v24;
  v26 = (v25 & 0xFAA0CB0D ^ 0x22D0B375) & (v25 & 0xFAA0CB0D ^ 0x27D4B578) ^ v25 & 0xFAA0C900;
  STACK[0x488] = 1053876835 * (((v26 ^ 0x649C3E0C) - 331635539) ^ ((v26 ^ 0x377CB49B) - 1076154820) ^ ((v26 ^ 0x8B90F0EA) + 53963339)) - 1348465114;
  v27 = STACK[0x6CC];
  LODWORD(STACK[0x4F0]) = STACK[0x6CC];
  LODWORD(STACK[0x538]) = v4;
  LODWORD(STACK[0x524]) = v6;
  v28 = -1663319554 - 1673081951 * v27;
  LODWORD(STACK[0x500]) = v28 >> 25;
  v29 = (v28 >> 30) ^ (v28 >> 29) ^ 0x9302F9E6;
  LODWORD(STACK[0x44C]) = v29;
  LODWORD(STACK[0x3E4]) = v28 >> 19;
  LODWORD(STACK[0x560]) = v5;
  LODWORD(STACK[0x42C]) = v28 >> 21;
  v30 = (v28 >> 21) ^ (v28 >> 22);
  LODWORD(STACK[0x4FC]) = v30;
  v31 = v30 ^ (v28 >> 19) ^ v29 ^ (((v28 >> 25) ^ HIBYTE(v28)) - ((2 * ((v28 >> 25) ^ HIBYTE(v28))) & 0x1CC) - 1828521498);
  LOBYTE(v30) = (v31 & 0xF ^ 0xF) + (v31 & 0xF);
  v32 = (v28 >> 14) ^ 0x20D9953A;
  LODWORD(STACK[0x47C]) = v32;
  LODWORD(STACK[0x408]) = HIWORD(v28);
  v33 = (v28 >> 17) ^ (v28 >> 8) ^ HIWORD(v28) ^ v32;
  v34 = (v28 >> 11) ^ 0x6EB7B811;
  v35 = (v28 >> 10) ^ 0x97B5AC22;
  v36 = (v28 >> 12) ^ 0x918BE52F ^ v34;
  LODWORD(STACK[0x404]) = v36;
  v37 = v33 ^ v36 ^ v35;
  v38 = (v28 >> 6) ^ 0xBADF983E;
  v39 = (v28 >> 9) ^ 0x1FA6D29;
  v40 = (v28 >> 5) ^ 0x39D248A4;
  v41 = (v28 >> 7) ^ 0xFFC858EA;
  LODWORD(STACK[0x3F4]) = v41;
  v42 = v37 ^ v39 ^ v41 ^ v38 ^ v40 ^ v31;
  v43 = v42 ^ 0x906FF2D4;
  v44 = (v42 >> 21) ^ 0x28D1537A;
  LODWORD(STACK[0x498]) = v28 << 8;
  LODWORD(STACK[0x4A8]) = v28 << 7;
  v45 = -1673081951 * LODWORD(STACK[0x6C8]) - 1663319554;
  v46 = (8 * v28) ^ (4 * v28);
  LODWORD(STACK[0x4A0]) = v28 << 10;
  v47 = (v28 << 8) ^ (v28 << 24) ^ (v28 << 10) ^ v46 ^ v45 ^ ((v28 << 7) - ((v28 << 8) & 0xC60CC800) - 486120328) ^ (v28 << v30) ^ (4 * (v42 ^ 0x906FF2D4)) ^ (32 * (v42 ^ 0x906FF2D4)) ^ ((v42 ^ 0x906FF2D4) << 11) ^ (4 * v44) ^ (32 * v44) ^ (v44 << 11) ^ 0xE76D1ED0;
  v48 = v47 - ((2 * v47) & 0x88E9F17A);
  v49 = (v28 << 20) ^ 0x5EC5B9BA;
  LODWORD(STACK[0x4E0]) = v49;
  LODWORD(STACK[0x548]) = v28 << 13;
  LODWORD(STACK[0x4E8]) = v28 << 16;
  LODWORD(STACK[0x450]) = v28 << 18;
  LODWORD(STACK[0x53C]) = v3;
  v50 = (v28 << 11) ^ 0xC474F8BD;
  LODWORD(STACK[0x428]) = v50;
  v51 = (v28 << 16) ^ (v28 << 13) ^ (v28 << 18) ^ v50 ^ v49;
  v52 = (v28 << 21) ^ 0x113EF5EC;
  v53 = (v28 << 22) ^ 0x6D51225A;
  LODWORD(STACK[0x3F0]) = v53;
  v54 = (v28 << 23) ^ 0x652A31EE;
  LODWORD(STACK[0x438]) = v52;
  v55 = v51 ^ v52 ^ v53 ^ v54;
  v56 = (v28 << 26) ^ 0x379A59FF;
  v57 = (v28 << 27) ^ 0x540A99F5;
  v58 = (v28 << 25) ^ 0xC44D11FA;
  LODWORD(STACK[0x4B0]) = v58;
  LODWORD(STACK[0x430]) = v56;
  v59 = v55 ^ v58 ^ v56 ^ v57 ^ v43 ^ (v48 - 998967107);
  v60 = v10;
  LODWORD(STACK[0x580]) = 8 * v10;
  LODWORD(STACK[0x3F8]) = 4 * v10;
  v61 = (8 * v10) ^ (4 * v10) ^ 0x3F69D6C0;
  LODWORD(STACK[0x4C0]) = v61;
  v62 = (v10 >> 8) ^ 0xAABEA0E;
  LODWORD(STACK[0x3EC]) = v62;
  v63 = (v10 >> 7) ^ 0x4E15777A;
  LODWORD(STACK[0x3E8]) = v63;
  v64 = (v10 >> 6) ^ 0x33497078;
  LODWORD(STACK[0x3FC]) = v10 >> 5;
  v65 = v62 ^ (v10 >> 5) ^ v63 ^ v64 ^ v25;
  v66 = -1663319554 - 1673081951 * LODWORD(STACK[0x6D8]);
  LODWORD(STACK[0x520]) = v10 << 7;
  v67 = (v10 << 7) ^ 0x99B8248B;
  LODWORD(STACK[0x40C]) = v67;
  LODWORD(STACK[0x410]) = v10 << 10;
  LODWORD(STACK[0x518]) = v10 << 24;
  v68 = (v10 << 11) ^ 0xFE8F9842;
  LODWORD(STACK[0x55C]) = v68;
  v69 = v66 ^ (v10 << 15) ^ (v10 << 8) ^ (v10 << 24) ^ (v10 << 10) ^ v67 ^ v68;
  v70 = (v10 << 13) ^ 0xD1A7B35C;
  LODWORD(STACK[0x590]) = v70;
  v71 = (v10 << 20) ^ 0xDC1B543D;
  LODWORD(STACK[0x588]) = v71;
  LODWORD(STACK[0x4EC]) = v10 << 18;
  v72 = (v10 << 18) ^ 0xE0523382;
  LODWORD(STACK[0x4D0]) = v72;
  v73 = (v10 << 16) ^ 0x8F3DA439;
  LODWORD(STACK[0x58C]) = v73;
  v74 = v69 ^ v70 ^ v73 ^ v72 ^ v71;
  v75 = (v60 << 22) ^ 0x89E7D0B3;
  LODWORD(STACK[0x510]) = v75;
  v76 = (v60 << 25) ^ 0xAA024D8B;
  LODWORD(STACK[0x584]) = v76;
  v77 = (v60 << 26) ^ 0x4AEFFBAC;
  LODWORD(STACK[0x550]) = v77;
  v78 = (v60 << 21) ^ 0x240B5006;
  LODWORD(STACK[0x4C8]) = v78;
  v79 = (v60 << 23) ^ 0xEAE218AC;
  LODWORD(STACK[0x4C4]) = v79;
  v80 = v60;
  v81 = (v60 << 27) ^ 0x5519192F;
  LODWORD(STACK[0x4B8]) = v81;
  v82 = v74 ^ v78 ^ v75 ^ v79 ^ v76 ^ v77 ^ v81 ^ v61 ^ v65 ^ 0x1799BB96 ^ (4 * (v65 ^ 0x1799BB96)) ^ (32 * (v65 ^ 0x1799BB96)) ^ ((v65 ^ 0x1799BB96) << 11);
  LODWORD(STACK[0x4DC]) = v82;
  v65 >>= 21;
  LODWORD(STACK[0x400]) = v65 ^ 0x5FA3F2E6;
  v83 = v59 ^ v44;
  v84 = v83 ^ 0x7A2AD0BE;
  v85 = (v84 & 0x15 ^ 0x686C96AC) & (v84 & 0x15 ^ 0xECFFD6E9) ^ v84 & 0x10;
  v86 = v82 ^ (4 * (v65 ^ 0x5FA3F2E6));
  LODWORD(STACK[0x45C]) = v86;
  v87 = v65 ^ 0x5AA8FD75 ^ v86;
  LODWORD(STACK[0x54C]) = v87;
  v88 = (((v87 & 0x87 ^ 0x13119E82) + 885722542) ^ (v87 & 0x87 | 0x57DA9B30) ^ ((v87 & 0x87 ^ 0x8C938885) - 1421272149)) + (((v87 & 0x87 ^ 0x2454974B) - 756249527) ^ ((v87 & 0x87 ^ 0x291B501) - 198595069) ^ ((v87 & 0x87 ^ 0x26C522CA) - 797099574)) + 1174359052;
  v89 = (((v85 ^ 0x220B4E6B) + 1854242376) ^ ((v85 ^ 0xE49408A2) - 1474676593) ^ ((v85 ^ 0xAEF3D074) - 495067047)) + 969921498;
  LODWORD(STACK[0x414]) = v89 * v88 + 193 * (148 * v88 - v89 + 8 * v89);
  v90 = (16 * v28) ^ (32 * v28) ^ (v28 << 17) ^ v46;
  v91 = v28 >> (((v28 >> 18) & 0xE ^ 0xE) + ((v28 >> 18) & 0xE));
  v92 = v91 - ((2 * v91) & 0x99D392E6) + 1290389875;
  LOBYTE(v73) = -(a1 + v8) - LODWORD(STACK[0x4F8]);
  v93 = (v28 >> 18) ^ 0x6191358D;
  v94 = (v28 >> 13) ^ 0x2F0FBC6A;
  v95 = STACK[0x3E4];
  v96 = (v28 >> 28) ^ (v28 >> 27) ^ (v28 >> 15) ^ (v28 >> 2) ^ LODWORD(STACK[0x3E4]) ^ v93 ^ v94 ^ v34 ^ v35 ^ v39;
  v97 = (v28 >> 4) ^ 0x3955A95A;
  v98 = v96 ^ v38 ^ v40 ^ v97 ^ LODWORD(STACK[0x44C]) ^ (LODWORD(STACK[0x42C]) - ((v28 >> 20) & 0xB58) - 1011350100) ^ v92;
  v99 = (v92 >> 30) ^ (v98 >> 27) ^ (v98 >> 21) ^ 0x3E9F2F56;
  LOBYTE(v40) = ((v90 & 0x9C) - (v90 | 0x63)) * ((v73 & 0x89 ^ 0x89) + (v73 & 0x89));
  v100 = v98 ^ 0x64699072;
  v101 = (v98 ^ 0x106DBC04) << (v40 & 7) << (v40 & 0xF8);
  v102 = v90 - ((2 * v90) & 0x742A5190) + 974465226;
  v103 = -1673081951 * LODWORD(STACK[0x6C0]) - 1663319554;
  LODWORD(STACK[0x44C]) = v28 << 14;
  v104 = LODWORD(STACK[0x548]) ^ (v28 << 30) ^ (v28 << 14) ^ (v28 << 18) ^ v103;
  v105 = LODWORD(STACK[0x428]) ^ (v28 << 19) ^ 0x3B777AC;
  LODWORD(STACK[0x42C]) = v105;
  v106 = v104 ^ v105 ^ (v28 << 21) ^ 0x113EF5EC ^ LODWORD(STACK[0x3F0]) ^ v54 ^ (v28 << 26) ^ 0x379A59FF ^ v57;
  v107 = (v28 << 28) ^ 0x39CC5729;
  LODWORD(STACK[0x428]) = v107;
  LODWORD(STACK[0x3F0]) = v106 ^ v107 ^ v102 ^ v100 ^ (4 * v100) ^ (v100 << 11) ^ v99 ^ v101 ^ (4 * v99) ^ (32 * v99) ^ (v99 << 11);
  v108 = LODWORD(STACK[0x4FC]) ^ (v28 >> 20) ^ (v28 >> 1) ^ LODWORD(STACK[0x500]) ^ v95;
  v109 = v93 ^ LODWORD(STACK[0x408]) ^ LODWORD(STACK[0x47C]) ^ v94 ^ LODWORD(STACK[0x404]) ^ LODWORD(STACK[0x3F4]) ^ v38 ^ v97 ^ (v108 - ((2 * v108) & 0xC3226B1A) + 1636906381);
  LODWORD(STACK[0x408]) = v109 ^ 0xFC9096CB;
  LODWORD(STACK[0x404]) = (v28 >> 31) ^ (v109 >> 27) ^ (v109 >> 21) ^ 0xA42E6C95;
  v110 = v80;
  v111 = 2 * v80;
  LODWORD(STACK[0x4F8]) = 2 * v80;
  v112 = (v80 >> 31) ^ (v80 >> 26) ^ (v80 >> 3);
  v113 = (v112 - ((2 * v112) & 0x15058B70) + 1786955192) ^ LODWORD(STACK[0x504]);
  v114 = v113 - ((2 * v113) & 0xAC60C2A) + 90375701;
  v115 = STACK[0x440];
  v116 = STACK[0x43C];
  v117 = (v80 >> 18) ^ 0x3BBF16E7;
  v118 = (v80 >> 15) ^ 0x90D73CAB;
  v119 = STACK[0x418];
  v120 = STACK[0x424];
  v121 = STACK[0x41C];
  v122 = STACK[0x454];
  v123 = STACK[0x3E8];
  v124 = (v80 >> 4) ^ 0x8ECF9242;
  v125 = LODWORD(STACK[0x440]) ^ LODWORD(STACK[0x43C]) ^ LODWORD(STACK[0x508]) ^ LODWORD(STACK[0x418]) ^ v117 ^ LODWORD(STACK[0x424]) ^ v118 ^ LODWORD(STACK[0x41C]) ^ LODWORD(STACK[0x454]) ^ LODWORD(STACK[0x3EC]) ^ LODWORD(STACK[0x3E8]) ^ v64 ^ v124 ^ v114;
  LODWORD(STACK[0x508]) = v125 ^ 0x3F713E6E;
  v126 = (v125 >> 27) ^ (v125 >> 21);
  LODWORD(STACK[0x504]) = v126 ^ 0x1BF9CEDE;
  LODWORD(STACK[0x500]) = (v126 ^ 0x65B) << (((v126 & 0xF9 ^ ((v126 & 0xF9) + 1) ^ ((v126 & 0xF9) + 5) ^ 3) - ((v126 & 1) == 0) + 1) & 5);
  LODWORD(STACK[0x4FC]) = LODWORD(STACK[0x3F8]) - (STACK[0x580] & 0xEF297360) + 2006235570;
  LODWORD(v101) = ((v80 >> 27) & 0x16 ^ 0x16) + ((v80 >> 27) & 0x16);
  LODWORD(STACK[0x47C]) = (((v80 + 1633416350 - ((2 * v80) & 0xC2B7E93C)) ^ 0x615BF49E) << v101) - ((2 * (((v80 + 1633416350 - ((2 * v80) & 0xC2B7E93C)) ^ 0x615BF49E) << v101)) & 0xE096BBEC) - 263496202;
  v127 = LODWORD(STACK[0x3FC]) ^ (v80 >> 27);
  v128 = (v80 >> 28) ^ (v80 >> 2);
  v129 = STACK[0x460];
  v130 = v128 ^ v127 ^ LODWORD(STACK[0x460]) ^ v119 ^ v117 ^ v118;
  v131 = LODWORD(STACK[0x470]) ^ (v110 >> 13) ^ 0x1AC91FA8;
  v132 = STACK[0x480];
  v133 = v130 ^ v131 ^ LODWORD(STACK[0x480]) ^ v122 ^ LODWORD(STACK[0x458]) ^ v64 ^ v124 ^ LODWORD(STACK[0x46C]);
  LODWORD(STACK[0x46C]) = v133 ^ 0x51D6ABA3;
  LODWORD(STACK[0x470]) = (v133 >> 21) ^ (v133 >> 27) ^ 0x48F31587;
  v134 = (v110 >> 1) ^ (v110 >> 20) ^ ((v115 ^ -v115 ^ (v116 - ((v115 - (STACK[0x4F4] & 0x7F4) - 1704138758) ^ LODWORD(STACK[0x490])))) + v116);
  v135 = v119 ^ v129 ^ v117 ^ v120 ^ v131 ^ v121 ^ v132 ^ v123 ^ v64 ^ v124 ^ v134;
  v136 = (v134 >> 30) | 0x89378F08;
  v137 = v135 ^ 0x9FB90977;
  v138 = v136 ^ (v135 >> 21);
  v139 = LODWORD(STACK[0x57C]) - (v111 & 0xAECEB936) - 196927847;
  v140 = ((LODWORD(STACK[0x540]) << 31) | 0x5D68BE35) ^ (-1673081951 * LODWORD(STACK[0x6D4]) - 1663319554);
  v141 = (v110 << 14) ^ 0xE3544A75;
  LODWORD(STACK[0x57C]) = v141;
  v142 = v138 ^ (v137 >> 27);
  v143 = v140 ^ (v110 << 12) ^ LODWORD(STACK[0x590]) ^ v141 ^ LODWORD(STACK[0x40C]) ^ v139 ^ (32 * v137) ^ (v137 << 11);
  v144 = v137 ^ v142;
  LODWORD(STACK[0x480]) = v144;
  v145 = v143 ^ (4 * v144) ^ (32 * v142) ^ (v142 << 11);
  v146 = LODWORD(STACK[0x410]) ^ 0x420A9569;
  LODWORD(STACK[0x4F4]) = v146;
  v147 = ((v145 ^ 0xC1631BC8) - 2 * ((v145 ^ 0xC1631BC8) & 0x420A956B ^ v145 & 2) + 1107989865) ^ v146;
  LODWORD(STACK[0x460]) = ((v147 - ((2 * v147) & 0xFD1F3084) - 24143806) ^ LODWORD(STACK[0x55C])) - 2 * (((v147 - ((2 * v147) & 0xFD1F3084) - 24143806) ^ LODWORD(STACK[0x55C])) & 0xF3DA43D ^ (v147 - ((2 * v147) & 0xFD1F3084) - 24143806) & 4) - 1891785671;
  LODWORD(STACK[0x3E0]) = (32 * LODWORD(STACK[0x400])) ^ (LODWORD(STACK[0x400]) << 11);
  v148 = (4 * (v83 ^ 0x7A2AD0BE)) ^ 0xB339D24A;
  LODWORD(STACK[0x3E4]) = v148;
  LODWORD(STACK[0x540]) = 8 * (v83 ^ 0x7A2AD0BE);
  v149 = ~(8 * (v83 ^ 0x7A2AD0BE)) & 0x100000;
  v150 = v84 ^ (2 * v84) ^ v148;
  v151 = (v149 & v150) == 0;
  v152 = v150 ^ 0xD54AAD68;
  if (!v151)
  {
    v149 = -v149;
  }

  LODWORD(STACK[0x490]) = v149 + v152;
  v153 = v83 ^ 0x6D8CAF68;
  v154 = (v153 << STACK[0x488]) - ((2 * (v153 << STACK[0x488])) & 0x61819808) - 1329542140;
  LODWORD(STACK[0x488]) = (v154 ^ 0xB0C0CC04) - 2 * ((v154 ^ 0xB0C0CC04) & 0x57B6974E ^ v154 & 0xA) - 675899580;
  v155 = (v59 >> 29) ^ 0x6467451E;
  LODWORD(STACK[0x3D8]) = v155;
  v156 = (v59 >> 30) | 0xA3386AB4;
  v157 = (v59 >> 31) ^ (v59 >> 15) ^ (v59 >> 26) ^ v156 ^ v155;
  v158 = (v59 >> 22) ^ 0xCCAFBD6F;
  v159 = (v59 >> 25) ^ 0x9B45734;
  v160 = (v59 >> 19) ^ 0xF67D4E23;
  LODWORD(STACK[0x3B0]) = v158;
  LODWORD(STACK[0x3BC]) = v160;
  v161 = v157 ^ v158 ^ v159 ^ v160;
  v162 = (v59 >> 12) ^ 0x2AA48479;
  v163 = (v59 >> 18) ^ 0x4E38349E;
  v164 = HIWORD(v59) ^ 0xB8B6540B;
  LODWORD(STACK[0x3D4]) = v164;
  v165 = v83;
  v166 = (v83 >> 6) ^ 0x2B833869;
  v167 = (v83 >> 10) ^ 0x97F037CD;
  LODWORD(STACK[0x3C0]) = v167;
  v168 = (v83 >> 8) ^ 0x32E6261A;
  LODWORD(STACK[0x3C8]) = v168;
  v169 = (v83 >> 4) ^ 0x8AB0E50E;
  v170 = (v83 >> 7) ^ 0x260DCEAB;
  v171 = v161 ^ v163 ^ v164 ^ v162 ^ (v84 >> 3) ^ v167 ^ v168 ^ v170 ^ v166 ^ v169;
  LODWORD(STACK[0x454]) = v171;
  LODWORD(STACK[0x458]) = ((4 * v171) ^ 0x3C20BAB8) - 2 * (((4 * v171) ^ 0x3C20BAB8) & 0x5D67C964 ^ (4 * v171) & 4) + 1567082851;
  v172 = v153 >> ((((v84 & 0x25 ^ 0xCD) + 42) ^ ((v84 & 0x25 ^ 0x66) - 125) ^ ((v84 & 0x25 ^ 0x75) - 110)) - (((v84 & 0x25 ^ 0xD4) - 37) ^ ((v84 & 0x25 ^ 0x24) + 43) ^ ((v84 & 0x25 ^ 0xF4) - 5)) + 6);
  LOBYTE(v164) = LODWORD(STACK[0x414]) + 12 - ((2 * (LODWORD(STACK[0x414]) + 12)) & 0x3F) - 97;
  LODWORD(STACK[0x424]) = v153 << (((v59 >> 26) & 0x99 ^ 0x5B) & 0x18 ^ 0x53 ^ ((v59 >> 26) & 8 | ((v59 >> 26) & 0x99 ^ 0x5B) & 0x52));
  v173 = v153 << (v164 & 0xAA ^ 0x8A) << (v164 & 0x55 ^ 0x15);
  v174 = (v59 >> 21) ^ 0x47E3A47A;
  v175 = (v59 >> 14) ^ 0x5047AF9F;
  v176 = (v59 >> 13) ^ (v59 >> 20) ^ v159 ^ v174 ^ (v59 >> 22) ^ 0xCCAFBD6F ^ v160 ^ v163 ^ v175 ^ v162 ^ (v172 - ((2 * v172) & 0x5D8A6CEC) - 1362807178);
  v177 = (v59 >> 11) ^ 0x8ABBF;
  LODWORD(STACK[0x40C]) = (v84 << 10) ^ 0xE9D86092;
  v178 = (v84 << 7) ^ 0xA5C81FF3;
  v179 = (v84 << 11) ^ 0xDA398A0F;
  v180 = (v84 << 13) ^ 0xD3CC6819;
  v181 = (v84 << 14) ^ 0xAC769D2D;
  LODWORD(STACK[0x400]) = v181;
  LODWORD(STACK[0x3FC]) = (v84 << 16) ^ 0xB6120276;
  v182 = (v84 << 18) ^ 0x5E879EE4;
  LODWORD(STACK[0x3EC]) = v180;
  v183 = ((v165 << 31) | 0x32A3DB03) ^ v84 ^ (v84 << 12) ^ v178 ^ (v84 << 10) ^ 0xE9D86092 ^ v179 ^ v180 ^ v181 ^ (v84 << 16) ^ 0xB6120276 ^ v182;
  v184 = (v84 << 20) ^ 0x7E81914B;
  LODWORD(STACK[0x3F4]) = v184;
  v185 = (v84 << 26) ^ 0x9CC541D;
  v186 = (v84 << 28) ^ 0x613ACC53;
  LODWORD(STACK[0x3F8]) = v186;
  v187 = (v84 << 25) ^ 0xC6DC88A5;
  v188 = v184 ^ (v84 << 21) ^ 0xEC7F36B7;
  LODWORD(STACK[0x3E8]) = v185;
  v189 = v183 ^ v188 ^ v187 ^ v185 ^ v186 ^ v173;
  LODWORD(STACK[0x440]) = v189;
  v190 = ((v177 ^ -v177 ^ ((v176 ^ 0xEE9C5DFF) - ((v177 - ((2 * v177) & 0x66FFC) - 2029832194) ^ 0x699F6A01 ^ v176))) + (v176 ^ 0xEE9C5DFF)) ^ (v84 >> 1);
  v191 = v166 ^ v170 ^ v169 ^ v190;
  v192 = v189 & 0x20000000;
  if ((v189 & 0x20000000 & STACK[0x3F0]) != 0)
  {
    v192 = -v192;
  }

  LODWORD(STACK[0x43C]) = v192 + (LODWORD(STACK[0x3F0]) ^ 0xD5C02140);
  LODWORD(STACK[0x410]) = v191;
  LODWORD(STACK[0x41C]) = v191 ^ 0xA2F10A7E;
  LODWORD(STACK[0x418]) = ((4 * (v191 ^ 0xA2F10A7E)) ^ 0xA6A71D30) - ((2 * ((4 * (v191 ^ 0xA2F10A7E)) ^ 0xA6A71D30)) & 0x53538E98) + 698992460;
  LODWORD(STACK[0x414]) = ((v190 >> 30) | 0x6950768C) ^ (v191 >> 27) ^ (((v191 >> 21) ^ 0x45A) - 2 * (((v191 >> 21) ^ 0x45A) & 0x68D ^ (v191 >> 21) & 1) + 1766880908);
  v193 = v166 ^ v170 ^ LODWORD(STACK[0x3C8]) ^ HIBYTE(v59) ^ (v59 >> 17) ^ (v165 >> 9) ^ (v165 >> 5) ^ LODWORD(STACK[0x3B0]) ^ v156 ^ LODWORD(STACK[0x3D8]) ^ v159 ^ v174 ^ LODWORD(STACK[0x3BC]) ^ LODWORD(STACK[0x3D4]) ^ v175 ^ v162 ^ v177 ^ LODWORD(STACK[0x3C0]);
  v194 = v193 ^ 0xD4A7AF11;
  v195 = (v193 >> 21) ^ 0x23A0322C;
  v196 = STACK[0x45C];
  v197 = (LODWORD(STACK[0x45C]) >> 30) ^ (LODWORD(STACK[0x45C]) >> 29) ^ 0x1920312B;
  v198 = STACK[0x54C];
  v199 = LODWORD(STACK[0x3E0]) ^ LODWORD(STACK[0x54C]);
  v200 = (4 * (v199 ^ 0xC90176A5)) ^ (8 * (v199 ^ 0xC90176A5)) ^ 0x559FA210;
  LODWORD(STACK[0x3E0]) = v200;
  v201 = (v84 << 10) ^ (v84 << 16) ^ LODWORD(STACK[0x540]) ^ v179 ^ (v84 << 13) ^ 0xD3CC6819 ^ LODWORD(STACK[0x3E4]) ^ v178 ^ v182;
  v202 = STACK[0x408];
  v203 = STACK[0x404];
  v204 = v28 ^ (LODWORD(STACK[0x4F0]) << 31) ^ (v28 << 12) ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x6C4])) ^ LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x4A0]) ^ (LODWORD(STACK[0x4A8]) - (STACK[0x498] & 0xD10DB500) + 1753668311) ^ (4 * LODWORD(STACK[0x408])) ^ (32 * LODWORD(STACK[0x408])) ^ (LODWORD(STACK[0x408]) << 11) ^ (4 * LODWORD(STACK[0x404])) ^ (32 * LODWORD(STACK[0x404])) ^ (LODWORD(STACK[0x404]) << 11) ^ (v84 << 27) ^ (v84 << 23) ^ (v84 << 8) ^ (v84 << 15) ^ v201;
  v205 = (v84 << 22) ^ 0xBEA770E1;
  LODWORD(STACK[0x4A8]) = v205;
  v206 = (v84 << 24) ^ 0x745E8DB2;
  LODWORD(STACK[0x4A0]) = v206;
  LODWORD(STACK[0x3F0]) = v195;
  v207 = v204 ^ v188 ^ v205 ^ v206 ^ v187 ^ (v84 << 26) ^ 0x9CC541D ^ (32 * v194) ^ (4 * v194) ^ (v194 << 11) ^ (4 * v195) ^ (32 * v195) ^ (v195 << 11) ^ 0x843890B7;
  v208 = LODWORD(STACK[0x4E8]) ^ LODWORD(STACK[0x44C]) ^ LODWORD(STACK[0x450]) ^ LODWORD(STACK[0x42C]) ^ LODWORD(STACK[0x4E0]) ^ LODWORD(STACK[0x438]) ^ LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x428]) ^ v202 ^ v203 ^ v194 ^ (v207 - ((2 * v207) & 0x88E9F17A) - 998967107);
  v209 = ((v199 ^ 0xC90176A5) << 11) ^ 0x6ED83E14;
  LODWORD(STACK[0x430]) = v209;
  v210 = ((v199 ^ 0xC90176A5) << 13) ^ 0xA5D4AE95;
  LODWORD(STACK[0x548]) = v210;
  v211 = ((v199 ^ 0xC90176A5) << 14) ^ 0x9E1D740C;
  v212 = ((v199 ^ 0xC90176A5) << 18) ^ 0xBF1CE46E;
  LODWORD(STACK[0x44C]) = v212;
  v213 = (16 * (v199 ^ 0xC90176A5)) ^ (32 * (v199 ^ 0xC90176A5)) ^ ((v199 ^ 0xC90176A5) << 17) ^ v209 ^ v210 ^ v211 ^ v212;
  v214 = ((v199 ^ 0xC90176A5) << 23) ^ 0x9BB5A4C1;
  LODWORD(STACK[0x498]) = v214;
  v215 = ((v199 ^ 0xC90176A5) << 21) ^ 0x1D1F7204;
  LODWORD(STACK[0x438]) = v215;
  v216 = ((v199 ^ 0xC90176A5) << 19) ^ 0xC56DAD6B;
  v217 = ((v199 ^ 0xC90176A5) << 22) ^ 0x97477DF8;
  LODWORD(STACK[0x450]) = v217;
  v218 = v213 ^ v216 ^ v215 ^ v217 ^ v214 ^ v200;
  v219 = (v199 ^ 0xC90176A5) << 26;
  v220 = -(v218 ^ 0x33736789) ^ v218 ^ ((((v219 ^ 0xA61094F1) - 897248537) ^ ((v219 ^ 0xCC4FB654) - 1596313532) ^ ((v219 ^ 0x5E5F22A5) + 852141235)) - (((v218 ^ 0x33736789 ^ v219 ^ 0xA16BA664) - 1676934215) ^ ((v218 ^ 0x33736789 ^ v219 ^ 0x5CB7496E) + 1641082035) ^ ((v218 ^ 0x33736789 ^ v219 ^ 0xC9DCEF0A) - 189052201)) - 1328406587);
  LODWORD(STACK[0x42C]) = v219 ^ 0x936A79E8;
  LODWORD(STACK[0x4F0]) = (((v219 ^ 0xE18A8E4A) - 1927346082) ^ ((v219 ^ 0xE496A491) - 2013060473) ^ ((v219 ^ 0x311C2ADB) + 1569303757)) + 1770603159 + (((v220 ^ 0xB23D950D) - 1129331243) ^ ((v220 ^ 0x2292DD55) + 738233741) ^ ((v220 ^ 0xA3DC2FD1) - 1387364599));
  v221 = (v199 >> 21) ^ 0xF230BD57;
  v222 = (v199 >> 18) ^ 0xE64C4CD5;
  v223 = (v199 >> 19) ^ 0xF5E2FA4D;
  v224 = v197 ^ v221 ^ v223;
  LODWORD(STACK[0x428]) = v224;
  v225 = (v196 >> 28) ^ (v196 >> 27) ^ (v199 >> 15) ^ (v199 >> 2) ^ v224 ^ v222;
  v226 = (v199 >> 11) ^ 0x38DDBFF7;
  v227 = (v199 >> 14) ^ 0xCE263BFB;
  LODWORD(STACK[0x3E4]) = v227;
  v228 = (v199 >> 10) ^ 0x938773DB;
  LODWORD(STACK[0x408]) = v228;
  v229 = (v199 >> 9) ^ 0x9FCD5435;
  LODWORD(STACK[0x404]) = v229;
  v230 = v227 ^ (v199 >> 13) ^ 0xF80BBFAF;
  v231 = v225 ^ v230 ^ v226 ^ v228 ^ v229;
  v232 = (v199 >> 5) ^ 0xEC0A1B96;
  v233 = (v199 >> 6) ^ 0xA69AECF2;
  v234 = (v199 >> 4) ^ 0xDDC4885;
  v235 = v231 ^ v233 ^ v232 ^ v234;
  LODWORD(STACK[0x4E0]) = v235 ^ 0xAAB98148;
  LODWORD(STACK[0x4E8]) = (v235 >> 21) ^ (v235 >> 27) ^ 0x4BCEEE69;
  v236 = HIWORD(v199) ^ 0x99A663A4;
  v237 = (v196 >> 22) ^ 0x7E012E14;
  v238 = (v199 >> 7) ^ 0xB24303AD;
  v239 = (v199 >> 12) ^ 0xC791AFD7;
  v240 = v237 ^ (v196 >> 25) ^ (v199 >> 1) ^ (v199 >> 20) ^ v222 ^ v236 ^ v221 ^ v223 ^ v230 ^ v239 ^ v226 ^ v238 ^ v234;
  v241 = (v240 >> 27) ^ (LODWORD(STACK[0x4DC]) >> 31);
  v242 = v240 ^ v233;
  v243 = v241 ^ (v242 >> 21);
  LOBYTE(v206) = v110;
  LODWORD(STACK[0x4DC]) = v110 << 17;
  v244 = (-1663319554 - 1673081951 * LODWORD(STACK[0x6D0])) ^ (32 * v110) ^ (16 * v110) ^ (v110 << 28) ^ (v110 << 17) ^ ((v110 << 30) | 0x2EEFD217) ^ LODWORD(STACK[0x57C]);
  v245 = LODWORD(STACK[0x55C]) ^ LODWORD(STACK[0x590]) ^ LODWORD(STACK[0x4D0]);
  v246 = (v110 << 19) ^ 0x43350A54;
  LODWORD(STACK[0x4B4]) = v110;
  v247 = STACK[0x4C8];
  v248 = STACK[0x550];
  v249 = v244 ^ v245 ^ v246 ^ LODWORD(STACK[0x4C8]) ^ LODWORD(STACK[0x4C4]) ^ LODWORD(STACK[0x550]) ^ LODWORD(STACK[0x4B8]) ^ LODWORD(STACK[0x4C0]) ^ LODWORD(STACK[0x46C]) ^ LODWORD(STACK[0x47C]) ^ (4 * LODWORD(STACK[0x46C])) ^ (32 * LODWORD(STACK[0x46C])) ^ (LODWORD(STACK[0x46C]) << 11) ^ LODWORD(STACK[0x470]) ^ (4 * LODWORD(STACK[0x470])) ^ (32 * LODWORD(STACK[0x470])) ^ (LODWORD(STACK[0x470]) << 11);
  v250 = v198;
  v251 = (v198 << 28) | 0xA409DC;
  LODWORD(STACK[0x55C]) = v251;
  v252 = v249 ^ (v198 << 31) ^ v199 ^ 0xC90176A5 ^ v251;
  v253 = ((v199 ^ 0xC90176A5) << 7) ^ 0x77DFC045 ^ ((v199 ^ 0xC90176A5) << 10) ^ 0xF4D5C3B7 ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x548]);
  v254 = STACK[0x44C];
  v255 = v253 ^ v211 ^ LODWORD(STACK[0x44C]) ^ v216;
  v256 = ((v199 ^ 0xC90176A5) << 20) ^ 0x958C2BE7;
  v257 = ((v199 ^ 0xC90176A5) << 25) ^ 0x7CE08D11;
  v258 = STACK[0x438];
  v259 = STACK[0x42C];
  v260 = v252 ^ ((v199 ^ 0xC90176A5) << 16) ^ ((v199 ^ 0xC90176A5) << 12) ^ v255 ^ v256 ^ LODWORD(STACK[0x438]) ^ v257 ^ LODWORD(STACK[0x42C]) ^ v242 ^ 0x1A2CCD4F ^ (4 * (v242 ^ 0x1A2CCD4F)) ^ (32 * (v242 ^ 0x1A2CCD4F));
  LODWORD(STACK[0x4B0]) = v243;
  v261 = v260 ^ (4 * v243) ^ (32 * v243) ^ (v243 << 11) ^ (((v242 << 11) ^ 0x8454000) - ((2 * ((v242 << 11) ^ 0x8454000)) & 0xA8637000) - 734938328) ^ 0x22C53C7;
  LODWORD(STACK[0x548]) = v261 - ((2 * v261) & 0x4DA30F12) - 1496217719;
  v262 = (v196 >> 25) ^ HIBYTE(v196) ^ v237 ^ (v199 >> 17) ^ (v199 >> 8) ^ LODWORD(STACK[0x428]) ^ v236 ^ LODWORD(STACK[0x3E4]) ^ v239 ^ v226 ^ LODWORD(STACK[0x408]) ^ LODWORD(STACK[0x404]) ^ v238 ^ v233 ^ v232;
  v263 = v262 ^ 0xA4D3AB82;
  v264 = (v262 >> 21) ^ 0xB1A31E72;
  v265 = LODWORD(STACK[0x58C]) ^ LODWORD(STACK[0x4EC]) ^ v246 ^ LODWORD(STACK[0x588]) ^ v247 ^ LODWORD(STACK[0x584]) ^ v248;
  v266 = (v206 << 28) | 0xF8350F1;
  LODWORD(STACK[0x4D0]) = v266;
  v267 = LODWORD(STACK[0x480]) ^ v265 ^ v266 ^ LODWORD(STACK[0x460]) ^ (v199 << 16);
  v268 = (v250 << 27) ^ 0xC37B5421;
  LODWORD(STACK[0x4EC]) = v268;
  v269 = v267 ^ v268 ^ ((v199 ^ 0xC90176A5) << 15) ^ ((v199 ^ 0xC90176A5) << 8) ^ ((v199 ^ 0xC90176A5) << 24) ^ v253 ^ v254 ^ v256 ^ v258 ^ LODWORD(STACK[0x450]) ^ LODWORD(STACK[0x498]) ^ v257 ^ v259 ^ LODWORD(STACK[0x3E0]) ^ v263 ^ (4 * v263) ^ (32 * v263) ^ (v263 << 11);
  v270 = (v208 >> 30) ^ 0x2F902F51;
  v271 = (v208 >> 29) ^ 0xC66761C7;
  v272 = (v208 >> 19) ^ 0x47065DEE;
  v273 = (v208 >> 21) ^ 0xA365100B;
  v274 = (v208 >> 11) ^ 0xF0C5BB7;
  v275 = (v208 >> 14) ^ 0x980C776F;
  v276 = v208 ^ LODWORD(STACK[0x3F0]);
  v277 = v276 ^ 0xC2E02C91;
  v278 = (v276 >> 6) ^ 0xCB7C2D73;
  v279 = (v276 >> 10) ^ 0x22EA25D1;
  v280 = (v276 >> 5) ^ 0xA2E96BB6;
  v281 = (v208 >> 28) ^ (v208 >> 27) ^ (v208 >> 18) ^ (v208 >> 15) ^ (v208 >> 13) ^ v270 ^ v271 ^ v273 ^ v272 ^ v275 ^ v274 ^ ((v276 ^ 0xC2E02C91) >> 4) ^ ((v276 ^ 0xC2E02C91) >> 2);
  v282 = (v276 ^ 0xC2E02C91) >> 9;
  v283 = v278 ^ v279 ^ v280 ^ v281 ^ v282;
  v284 = (LODWORD(STACK[0x454]) >> 27) ^ (LODWORD(STACK[0x454]) >> 21);
  v285 = (v84 << 17) ^ (v84 << 6) ^ (v84 << 29) ^ STACK[0x540] & 0xFFEFFFFF ^ LODWORD(STACK[0x400]) ^ LODWORD(STACK[0x3FC]) ^ LODWORD(STACK[0x40C]) ^ LODWORD(STACK[0x3EC]) ^ LODWORD(STACK[0x3F4]) ^ LODWORD(STACK[0x4A8]) ^ LODWORD(STACK[0x4A0]) ^ LODWORD(STACK[0x3E8]) ^ LODWORD(STACK[0x3F8]) ^ LODWORD(STACK[0x424]) ^ LODWORD(STACK[0x490]) ^ LODWORD(STACK[0x454]) ^ LODWORD(STACK[0x488]) ^ (32 * LODWORD(STACK[0x454])) ^ (LODWORD(STACK[0x454]) << 11) ^ v284 ^ (4 * (v284 ^ 0x79)) ^ (32 * (v284 ^ 0x79)) ^ ((v284 ^ 0x79) << 11) ^ LODWORD(STACK[0x458]) ^ (32 * (v276 ^ 0xC2E02C91)) ^ (16 * (v276 ^ 0xC2E02C91)) ^ ((v276 ^ 0xC2E02C91) << 14) ^ ((v276 ^ 0xC2E02C91) << 17) ^ ((v276 ^ 0xC2E02C91) << 19) ^ ((v276 ^ 0xC2E02C91) << 28) ^ (((v276 ^ 0xC2E02C91) << 30) | 0x159D1939);
  LODWORD(STACK[0x4C0]) = v283 ^ 0x39105B9;
  v286 = ((v285 ^ (4 * (v283 ^ 0x39105B9)) ^ 0x4980937F) - ((2 * (v285 ^ (4 * (v283 ^ 0x39105B9)) ^ 0x4980937F)) & 0x3743F030) + 463599640) ^ (32 * (v283 ^ 0x39105B9)) ^ 0x829E3118;
  LODWORD(STACK[0x540]) = v286 - ((2 * v286) & 0x13DDB28E) + 166648135;
  v287 = (v281 >> 27) ^ (v283 >> 21) ^ 0x7AD;
  LODWORD(STACK[0x4A0]) = ((v281 >> 27) & 0xB ^ 3) + ((v281 >> 27) & 0xB ^ 8);
  LODWORD(STACK[0x490]) = v287;
  LODWORD(STACK[0x498]) = v287 - ((2 * v287) & 0x974) + 2090501306;
  v288 = HIWORD(v208) ^ (v208 >> 12) ^ (v208 >> 17) ^ (v208 >> 22) ^ HIBYTE(v208) ^ (v276 >> 8) ^ v273 ^ v272 ^ v275 ^ v274 ^ ((v276 ^ 0xC2E02C91) >> 7) ^ v282 ^ v279 ^ v278 ^ v280 ^ (((v208 >> 25) & 0xFFFFFFC7 ^ v270 ^ v271 ^ 0x14083068) & ((v208 >> 25) & 0x38 ^ 0x7C0D76D3) | ((v208 >> 25) & 0xFFFFFFC7 ^ v270 ^ v271) & 0x420004);
  v289 = v288 ^ 0x315CD033;
  v290 = LODWORD(STACK[0x410]) ^ (LODWORD(STACK[0x41C]) << 11) ^ (32 * LODWORD(STACK[0x41C])) ^ LODWORD(STACK[0x418]) ^ LODWORD(STACK[0x414]) ^ (4 * (LODWORD(STACK[0x414]) ^ 0x11)) ^ (32 * (LODWORD(STACK[0x414]) ^ 0x11)) ^ ((LODWORD(STACK[0x414]) ^ 0x11) << 11) ^ STACK[0x440] & 0xDFFFFFFF ^ LODWORD(STACK[0x43C]) ^ ((v276 ^ 0xC2E02C91) << 8) ^ ((v276 ^ 0xC2E02C91) << 7) ^ ((v276 ^ 0xC2E02C91) << 10) ^ ((v276 ^ 0xC2E02C91) << 15) ^ ((v276 ^ 0xC2E02C91) << 16) ^ ((v276 ^ 0xC2E02C91) << 20) ^ ((v276 ^ 0xC2E02C91) << 24) ^ ((v276 ^ 0xC2E02C91) << 25) ^ (4 * (v288 ^ 0x315CD033)) ^ 0xF59009B9;
  v291 = (32 * (v288 ^ 0x315CD033)) ^ 0xDCDB89C ^ (v290 - ((2 * v290) & 0x8814E4F8) - 1005948292);
  v288 >>= 21;
  v292 = (4 * v288) ^ 0x8E0;
  v293 = (8 * (v276 ^ 0xC2E02C91)) ^ (4 * (v276 ^ 0xC2E02C91)) ^ 0x14457FD8 ^ ((v276 ^ 0xC2E02C91) << 13) ^ ((v276 ^ 0xC2E02C91) << 18) ^ ((v276 ^ 0xC2E02C91) << 21) ^ ((v276 ^ 0xC2E02C91) << 22) ^ ((v276 ^ 0xC2E02C91) << 23) ^ ((v276 ^ 0xC2E02C91) << 26) ^ ((v276 ^ 0xC2E02C91) << 27);
  LODWORD(STACK[0x45C]) = v293;
  v294 = v293 ^ v288 ^ v289 ^ ((v289 ^ v276 ^ 0xC2E02C91 ^ v288) << 11) ^ ((v292 ^ (32 * v288) ^ 0x4700) - 2 * ((v292 ^ (32 * v288) ^ 0x4700) & 0x5A78 ^ (4 * v288) & 0x10) + 173038185) ^ (v291 - ((2 * v291) & 0x4153214C) + 547983526);
  LOBYTE(v288) = (v292 | (4 * v288) ^ 0x1F) & 0x51 & ((v288 & 6 ^ 0xF9) + ~(v288 & 6) + ((v292 | (4 * v288) ^ 0x1F) & 0xB5) + 2);
  v295 = v269 ^ (4 * v264);
  v296 = v295 ^ (32 * v264);
  v297 = (v296 >> 29) ^ 0xBC147A8B;
  v298 = v296 ^ (v264 << 11);
  v299 = v298 ^ v264;
  v300 = v298 ^ v264 ^ 0x7CD6DED4;
  STACK[0x460] = v300;
  STACK[0x4C8] = v300 << ((v288 - ((2 * v288) & 0x80) - 60) & 0x40 ^ 0x40) << ((v288 - ((2 * v288) & 0x80) - 60) & 0x95 ^ 0x84);
  v301 = (v295 >> 30) ^ 0xFC61F19A;
  v302 = (v298 >> 19) ^ 0x36C87D37;
  v303 = (v298 >> 18) ^ 0x9F9B37B9;
  v304 = HIWORD(v298) ^ 0x2493C24C;
  v305 = (v298 >> 25) ^ 0x3970308E ^ (v298 >> 22) ^ 0x5F25E638;
  v306 = (v298 >> 12) ^ 0x64E229D0;
  LODWORD(v300) = ((v298 ^ v264) >> 10) ^ 0xE9BD1B89;
  LODWORD(STACK[0x43C]) = v300;
  v307 = ((v298 ^ v264) >> 8) ^ 0xCD8C2FC5;
  LODWORD(STACK[0x440]) = v307;
  v308 = v298 ^ v264 ^ 0x4CE7645E;
  v309 = v295 >> 31;
  v310 = ((v298 ^ v264) >> 6) ^ 0xB9E9BE2A;
  v311 = ((v298 ^ v264) >> 7) ^ 0xBCC04673;
  v312 = (v295 >> 31) ^ (v298 >> 26) ^ (v308 >> 3) ^ (v308 >> 4);
  v313 = v297 ^ (v298 >> 15) ^ v301 ^ v305 ^ v302 ^ v303 ^ v304 ^ v306 ^ v300 ^ v307 ^ v311 ^ v310 ^ v312;
  LODWORD(STACK[0x480]) = v313 ^ 0xAB327EAB;
  v314 = (v313 >> 21) ^ (v312 >> 27);
  LODWORD(STACK[0x488]) = v314;
  v315 = ((4 * v314) ^ 0x1D4C) - ((2 * ((4 * v314) ^ 0x1D4C)) & 0x16C8);
  v316 = (v308 << 7) ^ 0x509A5ECB;
  v317 = (v308 << 10) ^ 0x15C38527;
  LODWORD(STACK[0x430]) = v317;
  LODWORD(v300) = (v308 << 11) ^ 0x84F9CA4E;
  LODWORD(STACK[0x438]) = v300;
  LODWORD(STACK[0x458]) = v316;
  v318 = v308 ^ (v308 << 12) ^ (v308 << 19) ^ v316 ^ v317 ^ v300;
  v319 = (v308 << 13) ^ 0x3AD67706;
  v320 = (v308 << 16) ^ 0xB1595FCF;
  v321 = (v308 << 18) ^ 0x85BD2F4C;
  v322 = v319 ^ (v308 << 14) ^ 0x1EE3ED11 ^ v320;
  LODWORD(STACK[0x47C]) = v322;
  v323 = v318 ^ v322 ^ v321;
  v324 = (v308 << 20) ^ 0x25851D8A;
  v325 = (v308 << 25) ^ 0xB7EAD00F;
  LODWORD(STACK[0x470]) = v325;
  v326 = (v308 << 21) ^ 0xEFF80D23;
  LODWORD(STACK[0x454]) = v324;
  v327 = v323 ^ v324 ^ v326 ^ v325;
  HIDWORD(v328) = v327 ^ 0x1C1A;
  LODWORD(v328) = v327 ^ 0xE47DC000;
  LODWORD(v300) = (v308 << 26) ^ 0x3E3C01AD;
  LODWORD(STACK[0x450]) = v300;
  HIDWORD(v328) = ((v328 >> 14) - ((2 * (v328 >> 14)) & 0x885A87A6) + 1143817171) ^ (v308 << 12) & 0x3FFFF ^ 0xDC89AF2E;
  LODWORD(v328) = HIDWORD(v328);
  LODWORD(STACK[0x46C]) = v315 - 269849756;
  LODWORD(STACK[0x4C4]) = (v328 >> 18) - ((2 * (v328 >> 18)) & 0x4EAB68D0) + 659928168;
  v329 = (v298 >> 20) ^ (v298 >> 13) ^ (v308 >> 1) ^ (v308 >> 4);
  v330 = (v298 >> 21) ^ 0x94F5F230 ^ v302;
  v331 = (v298 >> 14) ^ 0xD017C3E9;
  v332 = (v298 >> 11) ^ 0x15FF11BA;
  v333 = v305 ^ v330 ^ v303 ^ v304 ^ v331 ^ v306 ^ v332 ^ v311 ^ v310 ^ v329;
  LODWORD(STACK[0x4A8]) = v333 ^ 0x68CBFE1B;
  LODWORD(STACK[0x4B8]) = v309 ^ (v329 >> 27) ^ (v333 >> 21) ^ 0x5CEA8AAB;
  v334 = v301 ^ HIBYTE(v298) ^ v297 ^ v305 ^ v330;
  v335 = (v308 << 22) ^ 0x1F398B31;
  LODWORD(STACK[0x44C]) = v335;
  v336 = STACK[0x460] << (-65 * ((((v299 & 0xDF ^ 8) + 43) ^ ((v299 & 0xDF ^ 0x86) - 91) ^ ((v299 & 0xDF ^ 0x5A) + 121)) + (((v299 & 0xDF ^ 0x6E) - 3) ^ ((v299 & 0xDF ^ 0x22) - 79) ^ ((v299 & 0xDF ^ 0x47) - 42)) + 111) * ((v334 & 0xB9 ^ 0xB8) + (v334 & 0xB9 ^ 1)));
  LODWORD(STACK[0x460]) = (v299 << 31) | 0x1693818E;
  v337 = (v299 >> 9) ^ (v298 >> 17) ^ (v299 >> 5) ^ v304 ^ v331 ^ v306 ^ v332 ^ LODWORD(STACK[0x43C]) ^ LODWORD(STACK[0x440]) ^ v311 ^ v310 ^ v334;
  v338 = (v337 >> 21) ^ 0xB68BBCBC;
  v339 = (4 * v308) ^ 0x16F9CA07;
  v340 = (8 * v308) ^ 0x1FD14EE6;
  v341 = STACK[0x430];
  v342 = v321 ^ v324 ^ v326;
  v343 = (v308 << 24) ^ 0x54E3A228;
  v344 = (LODWORD(STACK[0x4B0]) | (v308 << 15)) ^ (v308 << 8) ^ (v308 << 23) ^ (v308 << 27) ^ v340 ^ v339 ^ v316 ^ LODWORD(STACK[0x430]) ^ LODWORD(STACK[0x438]) ^ v319 ^ v320 ^ v342 ^ v335 ^ v343 ^ v300 ^ LODWORD(STACK[0x548]) ^ v337 ^ 0x918F305E ^ (4 * (v337 ^ 0x918F305E)) ^ (32 * (v337 ^ 0x918F305E)) ^ ((v337 ^ 0x918F305E) << 11) ^ (4 * v338) ^ (32 * v338) ^ (v338 << 11) ^ (v336 - ((2 * v336) & 0x4F55FFA6) - 1481965613);
  v345 = (v294 >> 19) ^ 0xF67 ^ (v294 >> 18) ^ 0x1ECF;
  v346 = HIWORD(v294) ^ 0x7B3E;
  v347 = (v294 >> 12) ^ 0x7B3E3;
  v348 = (v294 >> 7) ^ 0xF67C69;
  v349 = (v294 >> 4) ^ 0x7B3E34C;
  v350 = (v294 >> 6) ^ 0x1ECF8D3;
  v351 = (v294 >> 31) ^ (v294 >> 26) ^ (v294 >> 25) ^ ((v294 ^ 0x4E8136B6) >> 3) ^ ((v294 ^ 0x4E8136B6) >> 8) ^ ((v294 ^ 0x4E8136B6) >> 30) ^ ((v294 ^ 0x4E8136B6) >> 29) ^ ((v294 ^ 0x4E8136B6) >> 22) ^ ((v294 ^ 0x4E8136B6) >> 15) ^ ((v294 ^ 0x7B3E34C0) >> 10) ^ v345 ^ v346 ^ v347 ^ v348 ^ v350 ^ v349;
  LODWORD(v336) = v351 ^ 0x68234C6;
  v352 = ((v351 ^ 0x68234C6) >> 21) ^ (v351 >> 27);
  v353 = (v294 ^ 0x4E8136B6) << 25;
  v354 = (v353 | (32 * v352)) ^ (v352 << 11) ^ 0x21568304 ^ (2 * (v294 ^ 0x4E8136B6)) ^ (4 * (v294 ^ 0x4E8136B6)) ^ (8 * (v294 ^ 0x4E8136B6)) ^ ((v294 ^ 0x4E8136B6) << 6) ^ ((v294 ^ 0x4E8136B6) << 17) ^ ((v294 ^ 0x4E8136B6) << 24) ^ ((v294 ^ 0x4E8136B6) << 29) ^ ((v294 ^ 0x7B3E34C0) << 22) ^ (4 * v336) ^ (32 * v336) ^ (v336 << 11) ^ (4 * v352);
  v355 = v354 - 2 * (v354 & 0x1E41A658 ^ (((2 * (v294 ^ 0xB6)) ^ (4 * (v294 ^ 0xB6)) ^ (8 * (v294 ^ 0xB6)) ^ ((v294 ^ 0xB6) << 6) ^ (4 * v336) ^ (32 * v336)) ^ (4 * v352)) & 8);
  v356 = v294 ^ ((v294 ^ 0x4E8136B6) << 7) ^ ((v294 ^ 0x4E8136B6) << 10) ^ ((v294 ^ 0x4E8136B6) << 13) ^ ((v294 ^ 0x4E8136B6) << 14) ^ ((v294 ^ 0x4E8136B6) << 16) ^ ((v294 ^ 0x4E8136B6) << 20) ^ ((v294 ^ 0x4E8136B6) << 26) ^ ((v294 ^ 0x4E8136B6) << 28) ^ 0x7B323190;
  LODWORD(v336) = v356 ^ v336 ^ v352;
  LODWORD(STACK[0x548]) = v336 ^ (v355 - 1639864752);
  LODWORD(v336) = ((v294 ^ 0x4E8136B6) >> 14) ^ ((v294 ^ 0x4E8136B6) >> 13) ^ ((v294 ^ 0x4E8136B6) >> 21) ^ ((v294 ^ 0x4E8136B6) >> 20) ^ ((v294 ^ 0x4E8136B6) >> 11) ^ ((v294 ^ 0x4E8136B6) >> 1) ^ ((v294 ^ 0x7B3E34C0) >> (((v336 ^ (v355 + 80)) & 0x16 ^ 0x16) + ((v336 ^ (v355 + 80)) & 0x16)));
  v357 = (v294 >> 25) ^ v346 ^ v345 ^ v347 ^ v348 ^ v350 ^ v349 ^ 0x1AD84F14 ^ v336;
  LODWORD(v300) = LODWORD(STACK[0x45C]) ^ LODWORD(STACK[0x4C0]) ^ (4 * LODWORD(STACK[0x490])) ^ ((LODWORD(STACK[0x4C0]) ^ v277) << 11) ^ (32 * LODWORD(STACK[0x490])) ^ (LODWORD(STACK[0x490]) << LODWORD(STACK[0x4A0])) ^ LODWORD(STACK[0x498]) ^ LODWORD(STACK[0x540]) ^ (v294 << 31) ^ ((v294 ^ 0x4E8136B6) << 12) ^ ((v294 ^ 0x4E8136B6) << 11) ^ ((v294 ^ 0x4E8136B6) << 19) ^ ((v294 ^ 0x4E8136B6) << 18) ^ ((v294 ^ 0x4E8136B6) << 21) ^ v353 ^ (4 * v357) ^ (32 * v357) ^ (v357 << 11) ^ 0x28B989D5;
  v358 = v300 - ((2 * v300) & 0x3C834CA0) - 1639864752;
  LODWORD(v336) = (v357 >> 21) ^ (v336 >> 30);
  LODWORD(v300) = v344 ^ v338 ^ 0x74DD74B8;
  LODWORD(STACK[0x4C0]) = 8 * v300;
  LODWORD(STACK[0x4B0]) = 4 * v300;
  v359 = v356 ^ v357;
  v357 >>= 27;
  LODWORD(STACK[0x540]) = v359 ^ v336 ^ v357 ^ (32 * (v336 ^ v357)) ^ (4 * (v336 ^ v357)) ^ ((v336 ^ v357) << 11) ^ v358;
  v360 = 2 * (((8 * v300) ^ 0x2306A968) & ((4 * v300) ^ 0x4EE57C7C) ^ (4 * v300) & 0x3ECC5190);
  LODWORD(STACK[0x4A0]) = 12 * (((v344 ^ v338 ^ 0x38602F7A) + 860005438) ^ ((v344 ^ v338 ^ 0xE803EA) - 1949661010) ^ ((v344 ^ v338 ^ 0x3FEC0737) + 1959693425)) - (((v360 ^ 0x226AE7A3) - 1129357012) ^ ((v360 ^ 0x1A23AFFB) - 2065290892) ^ ((v360 ^ 0x25C1E878) - 1157337359)) - 268592099;
  v361 = ((v344 >> 29) | 0x31698E88) ^ ((v344 >> 30) | 0x31698E8C);
  v362 = (v344 ^ v338 ^ 0x47642BA7) >> ((v357 & 0xFB ^ 0x1B) + (v357 & 0xFB));
  v363 = (v344 >> 18) ^ (v344 >> 28) ^ (v344 >> 15) ^ (v344 >> 21) ^ 0x1D86D ^ (v362 - ((2 * v362) & 0x92) + 73);
  v364 = (v344 >> 11) ^ 0xF80F5B5F;
  v365 = v364 ^ (v344 >> 13) ^ (v300 >> 2) ^ (v300 >> 4) ^ (v363 - 222858566 + (~(2 * v363) | 0x9A911A8D));
  v366 = (v344 >> 14) ^ 0xA0E3FE80;
  v367 = ((v344 ^ v338) >> 10) ^ 0xE474B600;
  v368 = ((v344 ^ v338) >> 6) ^ 0x883480EF;
  v369 = ((v344 ^ v338) >> 5) ^ 0xDE528903;
  v370 = ((v344 ^ v338) >> 9) ^ 0xA06F0863;
  LODWORD(v336) = v366 ^ (v344 >> 19) ^ v368 ^ v369 ^ v367 ^ v370 ^ (v361 - ((2 * v361) & 0xC) - 1467347474) ^ v365;
  v371 = v336 ^ 0x17FEB2B3;
  v372 = (v365 >> 27) ^ (v336 >> 21) ^ 0xBCB7F81;
  LODWORD(v336) = v308 ^ (v308 << 17) ^ (v308 << 6) ^ (v308 << 29);
  v308 <<= 28;
  LODWORD(v336) = v336 ^ v308 ^ v339 ^ v340 ^ LODWORD(STACK[0x458]) ^ v341 ^ LODWORD(STACK[0x47C]) ^ LODWORD(STACK[0x454]) ^ LODWORD(STACK[0x44C]) ^ v343 ^ LODWORD(STACK[0x470]) ^ LODWORD(STACK[0x450]) ^ LODWORD(STACK[0x480]) ^ (4 * LODWORD(STACK[0x480])) ^ (32 * LODWORD(STACK[0x480])) ^ (LODWORD(STACK[0x480]) << 11) ^ LODWORD(STACK[0x488]) ^ (32 * LODWORD(STACK[0x488])) ^ (LODWORD(STACK[0x488]) << 11) ^ LODWORD(STACK[0x46C]) ^ STACK[0x4C8];
  v373 = (v300 << 18) ^ 0x90E2637E;
  v374 = (v300 << 11) ^ 0x6B945B77;
  v375 = (v300 << 13) ^ 0x1BF2CC75;
  v376 = (v300 << 21) ^ 0x3A230930;
  v377 = (v300 << 27) ^ 0x2557C4F6;
  v378 = (v300 << 26) ^ 0x6D79C87D;
  v379 = (v300 << 23) ^ 0xE490B4D9;
  v380 = (v300 << 22) ^ 0xA0A5049B;
  v381 = v336 ^ ((v344 ^ v338) << 30) ^ (v300 << 19) ^ (16 * v300) ^ (32 * v300) ^ (v300 << 14) ^ (v300 << 17) ^ (v300 << 28) ^ v377 ^ v378 ^ v376 ^ v374 ^ v375 ^ v373 ^ v380 ^ v379 ^ LODWORD(STACK[0x4A0]) ^ v371 ^ (4 * v371) ^ (32 * v371) ^ (v371 << 11) ^ v372 ^ (4 * v372) ^ (v372 << 11) ^ (32 * v372);
  v382 = (v344 >> 22) ^ (v344 >> 17) ^ HIWORD(v344) ^ (v344 >> 12) ^ (v344 >> 21) ^ (v344 >> 19) ^ ((v344 ^ v338) >> 8) ^ ((v344 ^ v338) >> 7) ^ v366 ^ v364 ^ v368 ^ v369 ^ ((v344 >> 25) ^ HIBYTE(v344) | 0x448E7500) ^ v367 ^ v370 ^ (v361 - ((2 * v361) & 4) + 1181490442);
  v383 = LODWORD(STACK[0x4B4]) ^ (LODWORD(STACK[0x4B4]) << 29) ^ (LODWORD(STACK[0x4B4]) << 6) ^ LODWORD(STACK[0x4F8]) ^ LODWORD(STACK[0x518]) ^ LODWORD(STACK[0x580]) ^ LODWORD(STACK[0x520]) ^ LODWORD(STACK[0x4DC]) ^ LODWORD(STACK[0x4F4]) ^ LODWORD(STACK[0x590]) ^ LODWORD(STACK[0x57C]) ^ LODWORD(STACK[0x58C]) ^ LODWORD(STACK[0x588]) ^ LODWORD(STACK[0x510]) ^ LODWORD(STACK[0x584]) ^ LODWORD(STACK[0x550]) ^ LODWORD(STACK[0x4D0]) ^ LODWORD(STACK[0x4FC]) ^ LODWORD(STACK[0x508]) ^ (4 * LODWORD(STACK[0x508])) ^ (LODWORD(STACK[0x508]) << 11) ^ (32 * LODWORD(STACK[0x508])) ^ LODWORD(STACK[0x504]) ^ (4 * LODWORD(STACK[0x504])) ^ (LODWORD(STACK[0x504]) << 11) ^ LODWORD(STACK[0x500]) ^ (LODWORD(STACK[0x54C]) << 30) ^ LODWORD(STACK[0x4EC]) ^ LODWORD(STACK[0x55C]) ^ LODWORD(STACK[0x4E0]) ^ (4 * LODWORD(STACK[0x4E0])) ^ (32 * LODWORD(STACK[0x4E0])) ^ (LODWORD(STACK[0x4E0]) << 11) ^ LODWORD(STACK[0x4E8]) ^ (4 * LODWORD(STACK[0x4E8])) ^ (32 * LODWORD(STACK[0x4E8])) ^ (LODWORD(STACK[0x4E8]) << 11) ^ LODWORD(STACK[0x4F0]) ^ LODWORD(STACK[0x460]) ^ v308 ^ LODWORD(STACK[0x4A8]) ^ (4 * LODWORD(STACK[0x4A8])) ^ (32 * LODWORD(STACK[0x4A8])) ^ (LODWORD(STACK[0x4A8]) << 11) ^ LODWORD(STACK[0x4B8]) ^ (4 * LODWORD(STACK[0x4B8])) ^ (32 * LODWORD(STACK[0x4B8])) ^ (LODWORD(STACK[0x4B8]) << 11) ^ LODWORD(STACK[0x4C4]) ^ (v300 << 8) ^ (v300 << 7) ^ (v300 << 10) ^ (v300 << 15) ^ (v300 << 16) ^ (v300 << 20);
  v384 = v383 ^ (v300 << 24) ^ (v300 << 25) ^ LODWORD(STACK[0x4B0]) ^ LODWORD(STACK[0x4C0]) ^ v374 ^ v375 ^ v373 ^ v376 ^ v380 ^ v379 ^ v378 ^ v377;
  LODWORD(v300) = v382 ^ 0x865F5A6E;
  v385 = (v382 >> 21) ^ 0xC1045B25;
  v386 = STACK[0x540];
  v387 = LODWORD(STACK[0x540]) ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x638]));
  LOBYTE(STACK[0xC3A]) = HIBYTE(v387) ^ 0xC0;
  LODWORD(v336) = v300 ^ (4 * v300) ^ (32 * v300) ^ (v300 << 11) ^ v385 ^ (4 * v385) ^ v384;
  v388 = (32 * v385) ^ (v385 << 11) ^ v336;
  v389 = STACK[0x67C];
  LODWORD(v300) = v388 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x678]));
  LOBYTE(STACK[0xCB4]) = BYTE2(v300) ^ 0xA1;
  LOBYTE(STACK[0xD75]) = BYTE3(v300) ^ 0x71;
  LOBYTE(STACK[0xEFB]) = v300 ^ 0x31;
  LOBYTE(STACK[0xE81]) = BYTE1(v387) ^ 0xC0;
  LOBYTE(STACK[0xBF3]) = BYTE1(v300) ^ 0x2A;
  LOBYTE(STACK[0xDC0]) = v387 ^ 0xC0;
  LOBYTE(STACK[0xF42]) = BYTE2(v387) ^ 0xC0;
  v390 = STACK[0x548];
  LODWORD(v300) = LODWORD(STACK[0x548]) ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x63C]));
  LOBYTE(STACK[0xCFF]) = BYTE3(v300) ^ 0xC0;
  v391 = v390 ^ (-1663319554 - 1673081951 * LODWORD(STACK[0x6B8]));
  LODWORD(STACK[0x31C]) = v391;
  v392 = (v391 & 0x26A ^ 0x26Au) + (v391 & 0x26A);
  v393 = v381;
  v394 = v381 ^ (-1673081951 * v389 - 1663319554);
  v395 = STACK[0x5B0];
  *(v395 + v392) = HIBYTE(v394) ^ 0x30;
  v396 = v393 ^ (-1673081951 * LODWORD(STACK[0x5F4]) - 1663319554);
  v397 = v393;
  LODWORD(STACK[0x4C8]) = v393;
  LOBYTE(v393) = v396;
  LODWORD(STACK[0x590]) = v396;
  LOBYTE(v392) = (v396 & 0xE9 ^ 0x22) & (v396 & 0xE9 ^ 0xA6);
  v398 = STACK[0x64C];
  LOBYTE(v396) = STACK[0x64C] & 0xF9;
  LOBYTE(STACK[0xC3E]) = BYTE2(v300) ^ 0xC0;
  LOBYTE(v392) = ((((v396 ^ 0xE9) - 118) ^ ((v396 ^ 8) + 105) ^ ((v396 ^ 0x18) + 121)) + (v396 ^ ((v396 ^ 0x22) + 95) ^ ((v396 ^ 0x5B) + 40) ^ 0x7F) - 23) & 0xFB ^ v393 & 0x69 ^ v392;
  LOBYTE(STACK[0xD79]) = ((v394 ^ 0x8DC0B159) >> ((v392 ^ 0x57) & 0x6F ^ 0xC) >> ((v392 ^ 0x80) & 0x90)) ^ 0xBD;
  LODWORD(v392) = v386 ^ (-1673081951 * LODWORD(STACK[0x670]) - 1663319554);
  LODWORD(STACK[0x58C]) = v392;
  LOBYTE(STACK[0xF46]) = BYTE1(v300) ^ 0xC0;
  LOBYTE(STACK[0xE85]) = v300 ^ 0xC0;
  LOBYTE(STACK[0xBF7]) = v394 ^ 0xE4;
  v399 = v388;
  LODWORD(v300) = v388 ^ (-1673081951 * LODWORD(STACK[0x680]) - 1663319554);
  LOBYTE(STACK[0xEFF]) = BYTE3(v300) ^ 0x71;
  v400 = v386 ^ (-1673081951 * LODWORD(STACK[0x640]) - 1663319554);
  LOBYTE(STACK[0xD03]) = BYTE2(v400) ^ 0xC0;
  LOBYTE(STACK[0xD7D]) = BYTE1(v300) ^ 0x2A;
  LOBYTE(STACK[0xDC4]) = (v400 >> ((v392 & 0x18 ^ 0x18) + (v392 & 0x18))) ^ 0xC0;
  LOBYTE(STACK[0xC42]) = BYTE1(v400) ^ 0xC0;
  LOBYTE(STACK[0xCBC]) = v300 ^ 0x31;
  LOBYTE(STACK[0xE3E]) = BYTE2(v300) ^ 0xA1;
  LOBYTE(STACK[0xCB8]) = BYTE1(v394) ^ 0xC;
  LOBYTE(STACK[0xF4A]) = v400 ^ 0xC0;
  LODWORD(v300) = v397 ^ (-1673081951 * LODWORD(STACK[0x684]) - 1663319554);
  LOBYTE(STACK[0xF03]) = BYTE2(v300) ^ 0x7D;
  LOBYTE(STACK[0xBFB]) = BYTE3(v300) ^ 0x30;
  LODWORD(v392) = v390 ^ (-1673081951 * LODWORD(STACK[0x644]) - 1663319554);
  LOBYTE(STACK[0xE89]) = BYTE3(v392) ^ 0xC0;
  LOBYTE(STACK[0xDC8]) = BYTE2(v392) ^ 0xC0;
  LOBYTE(STACK[0xC46]) = v392 ^ 0xC0;
  LOBYTE(STACK[0xD07]) = BYTE1(v392) ^ 0xC0;
  LOBYTE(STACK[0xD81]) = v300 ^ 0xE4;
  LOBYTE(STACK[0xE42]) = BYTE1(v300) ^ 0xC;
  v401 = STACK[0x68C];
  LODWORD(v392) = v388 ^ (-1673081951 * LODWORD(STACK[0x688]) - 1663319554);
  LODWORD(STACK[0x504]) = v388;
  LODWORD(STACK[0x508]) = v392;
  LOBYTE(STACK[0xCC0]) = BYTE3(v392) ^ 0x71;
  v402 = v386 ^ (-1673081951 * LODWORD(STACK[0x648]) - 1663319554);
  LODWORD(STACK[0x510]) = v402;
  LOBYTE(STACK[0xF4E]) = HIBYTE(v402) ^ 0xC0;
  LOBYTE(STACK[0xDCC]) = BYTE1(v402) ^ 0xC0;
  LOBYTE(STACK[0xE8D]) = BYTE2(v402) ^ 0xC0;
  LOBYTE(STACK[0xBFF]) = BYTE2(v392) ^ 0xA1;
  v403 = -1673081951 * LODWORD(STACK[0x6B4]);
  LODWORD(STACK[0x520]) = v403;
  v404 = (1663319553 - v403) & 0xB8CD2E76;
  v403 -= 1663319554;
  LODWORD(STACK[0x518]) = v403;
  *(v395 + (((v394 & 0xB4690269 ^ 0x148E1DFD) + 1613405991) ^ ((v394 & 0xB4690269 ^ 0xBE49409E) - 890387898) ^ ((v394 & 0xB4690269 ^ 0x2E875D2A) + 1512300530)) - (v404 + (v403 & 0xB8CD2E76)) + (((v394 & 0xB4690269 ^ 0x53CCD53F) + 889869148) ^ ((v394 & 0xB4690269 ^ 0x1DB7B067) + 2071016964) ^ ((v394 & 0xB4690269 ^ 0x7E526778) + 412410141)) - 1131403156) = BYTE1(v392) ^ 0x2A;
  v405 = v399 ^ (-1673081951 * LODWORD(STACK[0x6B0]) - 1663319554);
  LODWORD(STACK[0x57C]) = v405;
  v406 = (v405 & 0xF4BA7BC1 ^ 0x7BC55FC8) & (v405 & 0xF4BA7BC1 ^ 0xCF5D978C) ^ v405 & 0x40223381;
  v407 = STACK[0x5C4];
  LODWORD(v392) = (STACK[0x5C4] & 0x7C95E618 ^ 0x41EAC976) & (STACK[0x5C4] & 0x7C95E618 | 0x36A19E7) ^ STACK[0x5C4] & 0x3C152608;
  LODWORD(v392) = (((v392 ^ 0xA68EDAC2) - 388605924) ^ ((v392 ^ 0x82386C64) - 866062658) ^ ((v392 ^ 0x594959D8) + 387046146)) - 411278199;
  v408 = (((v406 ^ 0x17AB991E) - 1392477324) ^ ((v406 ^ 0x5B37CB6) - 1088905508) ^ ((v406 ^ 0xADE789E1) + 390884237)) + 1739837108;
  LODWORD(STACK[0x4F4]) = v408 * v392 + 2105723399 * (1307945977 * v408 - 1650289183 * v392);
  LODWORD(STACK[0x55C]) = (LODWORD(STACK[0x5A8]) ^ 0xEB709517) + LODWORD(STACK[0x528]);
  v409 = STACK[0x61C];
  LODWORD(v392) = -1673081951 * LODWORD(STACK[0x618]);
  LODWORD(STACK[0x580]) = v392 - 1663319554;
  LODWORD(v300) = ((1663319553 - v392) & 0x9CC3C17E) + ((v392 - 1663319554) & 0x9CC3C17E);
  LODWORD(v300) = (v384 & 0x8C884000 ^ 0xBFF9478B ^ (v384 & 0x8C984184 ^ 0xC984BEFC) & (v384 & 0x8C984184 ^ 0xEBB4BF79)) & (v300 ^ 0xFEFFFFFF) ^ v300 & 0x5024388;
  LODWORD(STACK[0x4D0]) = (((v300 ^ 0xAE124E36) - 440824957) ^ ((v300 ^ 0x8156F32C) - 889375079) ^ ((v300 ^ 0xD5A1056D) - 1643462438)) - 1673081951 * LODWORD(STACK[0x5BC]) + 1320256060;
  LODWORD(STACK[0x550]) = (-1673081951 * v409 - 1663319554) ^ 0x58E35B51;
  LODWORD(STACK[0x588]) = (-1673081951 * LODWORD(STACK[0x5DC]) - 1663319554) ^ 0x51101A2A;
  LODWORD(STACK[0x584]) = (-1673081951 * LODWORD(STACK[0x5E4]) - 1663319554) ^ 0xDDE2CCDA;
  v410 = STACK[0x620];
  LODWORD(STACK[0x54C]) = (-1673081951 * LODWORD(STACK[0x624]) - 1663319554) ^ 0xD4118DA1;
  LODWORD(v300) = (v336 & 0x1C9F1C91 ^ 0x7217FF5A) & (v336 & 0x1C9F1C91 ^ 0x6E7CFBEE) ^ v336 & 0x941801;
  LODWORD(STACK[0x4DC]) = (((v300 ^ 0x1B8A7B07) - 1744937631) ^ ((v300 ^ 0xA10E277) - 2040216559) ^ ((v300 ^ 0xEF55A3C4) + 1663141284)) - 1673081951 * LODWORD(STACK[0x62C]) - 1924865236;
  v411 = STACK[0x634];
  v412 = 948803394 * LODWORD(STACK[0x630]) - 270966607;
  LODWORD(v300) = -1673081951 * LODWORD(STACK[0x630]) - 1144431830;
  LODWORD(v392) = (v300 ^ 0x64A42694) & (2 * (v300 & 0x4436A4D6)) ^ v300 & 0x4436A4D6;
  LODWORD(v336) = ((2 * (v300 ^ 0x6CA96E10)) ^ 0x513F958C) & (v300 ^ 0x6CA96E10) ^ (2 * (v300 ^ 0x6CA96E10)) & 0x289FCAC6;
  LODWORD(v392) = (v336 ^ 0x1F8080) & (4 * v392) ^ v392;
  LODWORD(v336) = ((4 * (v336 ^ 0x28804A42)) ^ 0xA27F2B18) & (v336 ^ 0x28804A42) ^ (4 * (v336 ^ 0x28804A42)) & 0x289FCAC4;
  LODWORD(v392) = (v336 ^ 0x201F0A00) & (16 * v392) ^ v392;
  LODWORD(v336) = ((16 * (v336 ^ 0x880C0C6)) ^ 0x89FCAC60) & (v336 ^ 0x880C0C6) ^ (16 * (v336 ^ 0x880C0C6)) & 0x289FCAC0;
  LODWORD(v392) = v392 ^ 0x289FCAC6 ^ (v336 ^ 0x89C8800) & (v392 << 8);
  LODWORD(v300) = v300 ^ (2 * ((v392 << 16) & 0x289F0000 ^ v392 ^ ((v392 << 16) ^ 0x4AC60000) & (((v336 ^ 0x20034286) << 8) & 0x289F0000 ^ 0x20150000 ^ (((v336 ^ 0x20034286) << 8) ^ 0x1FCA0000) & (v336 ^ 0x20034286))));
  LODWORD(v392) = (v412 ^ 0x5A69F2F) & (2 * (v412 & 0x10269F4F)) ^ v412 & 0x10269F4F;
  LODWORD(v336) = (2 * (v412 ^ 0x25A79BA9)) & 0x358104E4 ^ 0x14810422 ^ ((2 * (v412 ^ 0x25A79BA9)) ^ 0x6B0209CC) & (v412 ^ 0x25A79BA9);
  LODWORD(v392) = (4 * v392) & v336 ^ v392 ^ ((4 * v392) & 0x1800464 | 0x14000080);
  LODWORD(v336) = (4 * v336) & 0x358104E4 ^ 0x21810466 ^ ((4 * v336) ^ 0xD6041398) & v336;
  LODWORD(v392) = v392 ^ (16 * v392) & 0x358104E0 ^ ((16 * v392) ^ 0x40000800) & v336 ^ 0x21810466;
  LODWORD(v336) = ((16 * v336) ^ 0x58104E60) & v336 ^ (16 * v336) & 0x358104E0;
  LODWORD(v392) = (v392 << 8) & 0x35810400 ^ v392 ^ ((v392 << 8) ^ 0x8104E600) & (v336 ^ 0x25810086);
  v413 = (v412 ^ (2 * ((v392 << 16) & 0x14810000 ^ v392 ^ ((v392 << 16) ^ 0xC20000) & ((v336 ^ 0x10000086) & ((v336 ^ 0x25810086) << 8) ^ 0x14810000)))) & 0x39B783FC;
  LODWORD(STACK[0x4C4]) = (((v300 ^ 0x26372921) + 356570544) ^ ((v300 ^ 0xC28A6666) - 235037975) ^ ((v300 ^ 0x7C63BFE3) + 1326728046)) + (((v413 ^ 0xE6E45B90) - 604818679) ^ ((v413 ^ 0xB692329B) - 1954194940) ^ ((v413 ^ 0x6852EB8B) + 1430618900)) + 1327696316;
  LODWORD(v300) = -1673081951 * LODWORD(STACK[0x65C]);
  LODWORD(STACK[0x4A8]) = v300 - 1663319554;
  LODWORD(v300) = (((v300 - 1663319554) & 0xEEAFEF3) + ((52706817 - v300) & 0xEEAFEF3)) & 0x1CFFFDF7;
  v414 = ((v300 ^ 0xE180C8CB) + 161091222) ^ ((v300 ^ 0x83A20455) + 1807270412) ^ ((v300 ^ 0xDEC0E6F) - 436811726);
  LODWORD(STACK[0x498]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5B8]);
  LODWORD(STACK[0x528]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5D8]);
  LODWORD(v392) = STACK[0x5FC];
  LODWORD(STACK[0x47C]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5F8]);
  LODWORD(STACK[0x490]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5C0]);
  LODWORD(STACK[0x500]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5E0]);
  LODWORD(v336) = STACK[0x604];
  LODWORD(STACK[0x470]) = -1663319554 - 1673081951 * LODWORD(STACK[0x600]);
  v415 = -1663319554 - 1673081951 * v392;
  LODWORD(STACK[0x488]) = -1663319554 - 1673081951 * v407;
  LODWORD(STACK[0x4E0]) = -1663319554 - 1673081951 * v410;
  v416 = -1663319554 - 1673081951 * v336;
  v417 = STACK[0x5EC];
  LODWORD(STACK[0x4FC]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5E8]);
  LODWORD(STACK[0x480]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5C8]);
  LODWORD(STACK[0x4E8]) = -1663319554 - 1673081951 * LODWORD(STACK[0x628]);
  LODWORD(v392) = STACK[0x60C];
  v418 = -1663319554 - 1673081951 * LODWORD(STACK[0x608]);
  LODWORD(STACK[0x4F8]) = -1663319554 - 1673081951 * v417;
  v419 = -1663319554 - 1673081951 * LODWORD(STACK[0x5CC]);
  v420 = -1663319554 - 1673081951 * v392;
  LODWORD(v392) = STACK[0x5D4];
  v421 = -1663319554 - 1673081951 * LODWORD(STACK[0x5D0]);
  LODWORD(STACK[0x4F0]) = -1663319554 - 1673081951 * LODWORD(STACK[0x5F0]);
  v422 = -1663319554 - 1673081951 * v392;
  v423 = -1663319554 - 1673081951 * LODWORD(STACK[0x610]);
  v424 = -1663319554 - 1673081951 * v411;
  v425 = -1663319554 - 1673081951 * LODWORD(STACK[0x614]);
  LODWORD(STACK[0x4EC]) = -1663319554 - 1673081951 * LODWORD(STACK[0x6BC]);
  v426 = -1663319554 - 1673081951 * v398;
  v427 = -1663319554 - 1673081951 * v401;
  v428 = -1663319554 - 1673081951 * LODWORD(STACK[0x650]);
  v429 = -1663319554 - 1673081951 * LODWORD(STACK[0x690]);
  v430 = -1663319554 - 1673081951 * LODWORD(STACK[0x654]);
  LODWORD(STACK[0x4A0]) = -1663319554 - 1673081951 * LODWORD(STACK[0x694]);
  v431 = -1663319554 - 1673081951 * LODWORD(STACK[0x658]);
  v432 = STACK[0x69C];
  v433 = -1663319554 - 1673081951 * LODWORD(STACK[0x698]);
  v434 = -1663319554 - 1673081951 * LODWORD(STACK[0x660]);
  LODWORD(v392) = -1663319554 - 1673081951 * LODWORD(STACK[0x6A0]);
  v435 = -1663319554 - 1673081951 * LODWORD(STACK[0x664]);
  LODWORD(STACK[0x4B4]) = -1663319554 - 1673081951 * LODWORD(STACK[0x6A4]);
  LODWORD(v300) = -1663319554 - 1673081951 * LODWORD(STACK[0x6A8]);
  LODWORD(v395) = -1663319554 - 1673081951 * LODWORD(STACK[0x66C]);
  LODWORD(v336) = -1663319554 - 1673081951 * LODWORD(STACK[0x668]);
  LODWORD(STACK[0x4B8]) = -1663319554 - 1673081951 * LODWORD(STACK[0x6AC]);
  v436 = -1663319554 - 1673081951 * LODWORD(STACK[0x674]);
  LODWORD(STACK[0x4B0]) = -1673081951 * v432 - v414 - 2016148304;
  v437 = STACK[0x504];
  v438 = LODWORD(STACK[0x504]) ^ 0x482F67AE;
  LODWORD(STACK[0x4C0]) = LODWORD(STACK[0x4DC]) ^ LODWORD(STACK[0x504]);
  LODWORD(STACK[0x4DC]) = v437 ^ LODWORD(STACK[0x4C4]);
  LODWORD(STACK[0x4C4]) = v437 ^ v424;
  v439 = v437 ^ v429;
  v440 = v437 ^ v433;
  v441 = v437 ^ v392;
  LODWORD(v392) = v437 ^ v300;
  v442 = STACK[0x540];
  LODWORD(STACK[0x318]) = LODWORD(STACK[0x540]) ^ LODWORD(STACK[0x47C]);
  LODWORD(STACK[0x314]) = v442 ^ LODWORD(STACK[0x470]);
  LODWORD(STACK[0x504]) = v442 ^ v415;
  LODWORD(STACK[0x310]) = v442 ^ v416;
  v443 = v442 ^ v418;
  LODWORD(STACK[0x308]) = v442 ^ v420;
  LODWORD(STACK[0x300]) = v442 ^ v423;
  LODWORD(STACK[0x2FC]) = v442 ^ v425;
  v444 = v442 ^ v431;
  v445 = v442 ^ v428;
  v446 = v442 ^ v434;
  v447 = v442 ^ v336;
  LODWORD(v336) = STACK[0x548];
  LODWORD(STACK[0x2F8]) = LODWORD(STACK[0x548]) ^ LODWORD(STACK[0x498]);
  LODWORD(STACK[0x2F4]) = v336 ^ LODWORD(STACK[0x490]);
  LODWORD(STACK[0x2F0]) = LODWORD(STACK[0x4D0]) ^ v336;
  LODWORD(STACK[0x2EC]) = v336 ^ LODWORD(STACK[0x488]);
  LODWORD(STACK[0x2E8]) = v336 ^ v419;
  v448 = v336 ^ LODWORD(STACK[0x480]);
  LODWORD(STACK[0x2E4]) = v336 ^ v421;
  LODWORD(STACK[0x2E0]) = v336 ^ v422;
  v449 = v336 ^ v426;
  v450 = v336 ^ v430;
  LODWORD(v300) = v336 ^ LODWORD(STACK[0x4A8]);
  v451 = v336 ^ v395;
  v452 = v336 ^ v435;
  LODWORD(v336) = v336 ^ v436;
  LOBYTE(STACK[0xE46]) = LODWORD(STACK[0x508]) ^ 0x31;
  LOBYTE(STACK[0xD0B]) = LODWORD(STACK[0x510]) ^ 0xC0;
  v453 = STACK[0x4C8];
  LOBYTE(STACK[0xD85]) = ((LODWORD(STACK[0x4C8]) ^ v427) >> 24) ^ 0x30;
  LODWORD(v395) = ((HIBYTE(v449) - (HIBYTE(v449) ^ 0x7D)) ^ 0xFE) + HIBYTE(v449);
  LOBYTE(STACK[0xE91]) = BYTE1(v449) ^ 0xC0;
  LOBYTE(STACK[0xC4A]) = v395 - ((2 * v395) & 0x7A) - 67;
  LOBYTE(STACK[0xF0B]) = v453 ^ v427 ^ 0xE4;
  LOBYTE(STACK[0xCC4]) = ((v453 ^ v427) >> 16) ^ 0x7D;
  LOBYTE(STACK[0xF52]) = BYTE2(v449) ^ 0xC0;
  LOBYTE(STACK[0xDD0]) = v449 ^ 0xC0;
  LOBYTE(STACK[0xC03]) = ((v453 ^ v427) >> 8) ^ 0xC;
  LOBYTE(v449) = LODWORD(STACK[0x4F4]) - 119;
  LOBYTE(STACK[0xD0F]) = HIBYTE(v445) ^ 0xC0;
  LOBYTE(STACK[0xC4E]) = BYTE2(v445) ^ 0xC0;
  LOBYTE(STACK[0xE4A]) = (((v439 ^ 0xCC1C978C) >> v449) - ((2 * ((v439 ^ 0xCC1C978C) >> v449)) & 0x40) + 32) ^ 0x9D;
  LOBYTE(STACK[0xD89]) = BYTE2(v439) ^ 0xA1;
  LOBYTE(STACK[0xDD4]) = HIBYTE(v450) ^ 0xC0;
  LOBYTE(STACK[0xCC8]) = BYTE1(v439) ^ 0x2A;
  LOBYTE(STACK[0xC07]) = v439 ^ 0x31;
  LOBYTE(STACK[0xF56]) = BYTE1(v445) ^ 0xC0;
  v454 = v453 ^ LODWORD(STACK[0x4A0]);
  LOBYTE(STACK[0xD8D]) = BYTE1(v454) ^ 0xC;
  LOBYTE(STACK[0xE95]) = v445 ^ 0xC0;
  LOBYTE(STACK[0xE4E]) = BYTE2(v454) ^ 0x7D;
  LOBYTE(STACK[0xD13]) = BYTE2(v450) ^ 0xC0;
  LOBYTE(STACK[0xF0F]) = HIBYTE(v454) ^ 0x30;
  LOBYTE(STACK[0xC52]) = BYTE1(v450) ^ 0xC0;
  LOBYTE(STACK[0xF5A]) = v450 ^ 0xC0;
  LOBYTE(STACK[0xCCC]) = v454 ^ 0xE4;
  LOBYTE(STACK[0xDD8]) = BYTE2(v444) ^ 0xC0;
  v455 = STACK[0x518];
  v456 = ((1 - LODWORD(STACK[0x520])) ^ LODWORD(STACK[0x518])) & 0x7D ^ HIBYTE(v444);
  LOBYTE(STACK[0xC0B]) = HIBYTE(v440) ^ 0x71;
  LOBYTE(STACK[0xE99]) = v456 - ((2 * v456) & 0x7A) - 67;
  LOBYTE(STACK[0xF13]) = BYTE2(v440) ^ 0xA1;
  LOBYTE(STACK[0xD17]) = BYTE1(v444) ^ 0xC0;
  LOBYTE(STACK[0xE52]) = BYTE1(v440) ^ 0x2A;
  LOBYTE(STACK[0xC56]) = v444 ^ 0xC0;
  LOBYTE(STACK[0xD91]) = v440 ^ 0x31;
  v457 = v453 ^ LODWORD(STACK[0x4B0]);
  LOBYTE(STACK[0xCD0]) = HIBYTE(v457) ^ 0x30;
  LOBYTE(STACK[0xE9D]) = BYTE2(v300) ^ 0xC0;
  LOBYTE(STACK[0xDDC]) = BYTE1(v300) ^ 0xC0;
  LOBYTE(STACK[0xF17]) = BYTE1(v457) ^ 0xC;
  LOBYTE(STACK[0xE56]) = v457 ^ 0xE4;
  LOBYTE(STACK[0xD1B]) = ((v300 - (v300 ^ 0x7D)) ^ 0xFE) + v300 - ((2 * (((v300 - (v300 ^ 0x7D)) ^ 0xFE) + v300)) & 0x7A) - 67;
  LOBYTE(STACK[0xF62]) = (v446 >> (BYTE1(v457) & 0x10 ^ 0x10) >> (BYTE1(v457) & 0x10)) ^ 0xC0;
  LOBYTE(STACK[0xF5E]) = BYTE3(v300) ^ 0xC0;
  LOBYTE(STACK[0xC0F]) = BYTE2(v457) ^ 0x7D;
  LOBYTE(STACK[0xCD4]) = BYTE2(v441) ^ 0xA1;
  LOBYTE(STACK[0xC5A]) = HIBYTE(v446) ^ 0xC0;
  LOBYTE(STACK[0xEA1]) = BYTE1(v446) ^ 0xC0;
  LOBYTE(STACK[0xD95]) = HIBYTE(v441) ^ 0x71;
  LODWORD(v300) = v453 ^ LODWORD(STACK[0x4B4]);
  LOBYTE(STACK[0xE5A]) = BYTE3(v300) ^ 0x30;
  LOBYTE(STACK[0xDE0]) = v446 ^ 0xC0;
  LOBYTE(STACK[0xD1F]) = HIBYTE(v452) ^ 0xC0;
  LOBYTE(STACK[0xC13]) = BYTE1(v441) ^ 0x2A;
  LOBYTE(STACK[0xCD8]) = BYTE1(v300) ^ 0xC;
  LOBYTE(STACK[0xF1B]) = v441 ^ 0x31;
  LOBYTE(STACK[0xD99]) = BYTE2(v300) ^ 0x7D;
  LOBYTE(STACK[0xC5E]) = BYTE2(v452) ^ 0xC0;
  LOBYTE(STACK[0xF1F]) = BYTE3(v392) ^ 0x71;
  LOBYTE(STACK[0xEA5]) = v452 ^ 0xC0;
  LOBYTE(STACK[0xD23]) = BYTE2(v447) ^ 0xC0;
  LOBYTE(STACK[0xF66]) = BYTE1(v452) ^ 0xC0;
  LOBYTE(STACK[0xE5E]) = BYTE2(v392) ^ 0xA1;
  LOBYTE(STACK[0xC62]) = BYTE1(v447) ^ 0xC0;
  LOBYTE(STACK[0xDE4]) = HIBYTE(v447) ^ 0xC0;
  LOBYTE(STACK[0xC17]) = v300 ^ 0xE4;
  LODWORD(v300) = v453 ^ LODWORD(STACK[0x4B8]);
  LOBYTE(STACK[0xC1B]) = BYTE3(v300) ^ 0x30;
  LOBYTE(STACK[0xD9D]) = BYTE1(v392) ^ 0x2A;
  LOBYTE(STACK[0xEA9]) = HIBYTE(v451) ^ 0xC0;
  LOBYTE(STACK[0xF6A]) = v447 ^ 0xC0;
  LOBYTE(STACK[0xC66]) = v451 ^ 0xC0;
  LOBYTE(STACK[0xE62]) = BYTE1(v300) ^ 0xC;
  LOBYTE(STACK[0xCDC]) = v392 ^ 0x31;
  LOBYTE(STACK[0xD27]) = BYTE1(v451) ^ 0xC0;
  LOBYTE(STACK[0xDA1]) = v300 ^ 0xE4;
  v458 = STACK[0x57C];
  LOBYTE(STACK[0xCE0]) = HIBYTE(LODWORD(STACK[0x57C])) ^ 0x71;
  LODWORD(v392) = STACK[0x58C];
  LOBYTE(STACK[0xDEC]) = BYTE1(LODWORD(STACK[0x58C])) ^ 0xC0;
  LOBYTE(STACK[0xF23]) = BYTE2(v300) ^ 0x7D;
  LOBYTE(STACK[0xDE8]) = BYTE2(v451) ^ 0xC0;
  LOBYTE(STACK[0xC1F]) = BYTE2(v458) ^ 0xA1;
  LOBYTE(STACK[0xF27]) = BYTE1(v458) ^ 0x2A;
  LOBYTE(STACK[0xD2B]) = v392 ^ 0xC0;
  LOBYTE(STACK[0xEAD]) = BYTE2(v392) ^ 0xC0;
  LOBYTE(STACK[0xF6E]) = BYTE3(v392) ^ 0xC0;
  LOBYTE(STACK[0xE66]) = v458 ^ 0x31;
  LOBYTE(STACK[0xEB1]) = BYTE1(v336) ^ 0xC0;
  LOBYTE(STACK[0xC23]) = ((v453 ^ v455) >> 8) ^ 0xC;
  LOBYTE(STACK[0xDA5]) = ((v453 ^ v455) >> 24) ^ 0x30;
  LOBYTE(STACK[0xCE4]) = ((v453 ^ v455) >> 16) ^ 0x7D;
  LOBYTE(STACK[0xF72]) = ((BYTE2(v336) - (BYTE2(v336) ^ 0x7D)) ^ 0xFE) + BYTE2(v336) - ((2 * (((BYTE2(v336) - (BYTE2(v336) ^ 0x7D)) ^ 0xFE) + BYTE2(v336))) & 0x7A) - 67;
  LOBYTE(STACK[0xC6A]) = BYTE3(v336) ^ 0xC0;
  LOBYTE(STACK[0xDF0]) = v336 ^ 0xC0;
  LOBYTE(STACK[0xF2B]) = v453 ^ v455 ^ 0xE4;
  LODWORD(STACK[0x2DC]) = (((v438 ^ LODWORD(STACK[0x4E0]) ^ 0x5521DC08) + 2015894511) ^ ((v438 ^ LODWORD(STACK[0x4E0]) ^ 0x561902B7) + 2064696658) ^ ((v438 ^ LODWORD(STACK[0x4E0]) ^ 0x870B2E9D) - 1442649732)) + 887984742;
  LODWORD(v300) = LODWORD(STACK[0x580]) ^ 0x8433F022;
  LODWORD(STACK[0x2D8]) = LODWORD(STACK[0x550]) ^ v438;
  v459 = v438 ^ LODWORD(STACK[0x4E8]);
  LODWORD(STACK[0x2D4]) = LODWORD(STACK[0x54C]) ^ v438;
  LODWORD(STACK[0x2D0]) = v300 ^ v438;
  LODWORD(STACK[0x2CC]) = (((LODWORD(STACK[0x4C0]) ^ 0x1828E8AC) + 1743913818) ^ ((LODWORD(STACK[0x4C0]) ^ 0xFF26EE35) - 2130967103) ^ ((LODWORD(STACK[0x4C0]) ^ 0x2B129115) + 1422424801)) - 1565743503;
  LODWORD(STACK[0x2C8]) = ((LODWORD(STACK[0x4C4]) ^ 0x6F93FFC) + 235598038) ^ ((LODWORD(STACK[0x4C4]) ^ 0x58178610) + 1357138234) ^ ((LODWORD(STACK[0x4C4]) ^ 0x92F22E60) - 1711152822);
  LODWORD(v300) = ((LODWORD(STACK[0x4DC]) ^ 0x478E72B4) + 1067081600) ^ ((LODWORD(STACK[0x4DC]) ^ 0xD44AA43D) - 1403090441) ^ ((LODWORD(STACK[0x4DC]) ^ 0x5FD84105) + 667708623);
  LODWORD(STACK[0x2C0]) = ((v459 ^ 0x339E5B89) + 308568347) ^ ((v459 ^ 0x97B6E8CA) - 1236479398) ^ ((v459 ^ 0x201B4361) + 31554035);
  v460 = v453 ^ LODWORD(STACK[0x500]);
  LODWORD(STACK[0x2B8]) = LODWORD(STACK[0x588]) ^ v453;
  LODWORD(STACK[0x2B4]) = LODWORD(STACK[0x584]) ^ v453;
  LODWORD(v392) = v453 ^ LODWORD(STACK[0x4FC]);
  LODWORD(v336) = v453 ^ LODWORD(STACK[0x4F8]);
  v461 = v453 ^ LODWORD(STACK[0x4F0]);
  v462 = v453 ^ 0x8DC0B159 ^ LODWORD(STACK[0x4EC]);
  LODWORD(STACK[0x2B0]) = v453 ^ 0x8DC0B159 ^ LODWORD(STACK[0x528]);
  LODWORD(STACK[0x2AC]) = (((v460 ^ 0x960B3C1D) - 2121596879) ^ ((v460 ^ 0xA4A26917) - 1289595589) ^ ((v460 ^ 0xBF69E453) - 1461069697)) - 1079275791;
  LODWORD(STACK[0x2A8]) = (((v461 ^ 0xA440C27B) + 589636243) ^ ((v461 ^ 0xAD1C4CA8) + 712617026) ^ ((v461 ^ 0x849C3F8A) + 66707300)) + 999899640;
  LODWORD(STACK[0x2A4]) = v443 + 2112280372;
  LODWORD(STACK[0x2A0]) = v448 + 2112280372;
  LODWORD(STACK[0x29C]) = (((LODWORD(STACK[0x590]) ^ 0xC24D72BB) + 183864093) ^ ((LODWORD(STACK[0x590]) ^ 0xB185EAF4) + 2034045780) ^ ((LODWORD(STACK[0x590]) ^ 0xFE082916) + 917557426)) + 1067062746;
  LODWORD(STACK[0x298]) = ((v336 ^ 0xF5EB43E8) - 1463596477) ^ ((v336 ^ 0x1EAC2452) + 1132735993) ^ ((v336 ^ 0x6687D6E3) + 1001381706);
  LODWORD(STACK[0x294]) = (((v392 ^ 0x6C53BC41) - 169630507) ^ ((v392 ^ 0xB2AF007C) + 723458282) ^ ((v392 ^ 0x533C0D64) - 896789006)) + 527952410;
  v463 = LODWORD(STACK[0x5A8]) ^ 0x240;
  LODWORD(STACK[0x290]) = LODWORD(STACK[0x504]) + 315247240;
  LODWORD(STACK[0x28C]) = v300 - 1841964703;
  LODWORD(STACK[0x288]) = LODWORD(STACK[0x31C]) - v462;
  LODWORD(STACK[0x354]) = 1093148745;
  LODWORD(STACK[0x344]) = 943215;
  LODWORD(STACK[0x340]) = 710676930;
  LODWORD(STACK[0x33C]) = 938989;
  LODWORD(STACK[0x338]) = -1213754149;
  LODWORD(STACK[0x3E4]) = 1;
  return (*(STACK[0x598] + 8 * (v463 ^ 0x1C)))();
}

uint64_t sub_10003D738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t *a15, unsigned int a16, unsigned int a17)
{
  v22 = (((&a12 | 0xED5B494E) - &a12 + (&a12 & 0x12A4B6B0)) ^ 0xB5329A2C) * v19;
  a13 = v22 - 944470126;
  a14 = a10;
  a15 = &a9;
  a16 = -654855621 - v22;
  a17 = v22 + v18 + 1674574852;
  v23 = (*(v17 + 8 * (v18 + 5346)))(&a12);
  return (*(v17 + 8 * (((a12 == v20) * (((v18 - 664359199) & 0x61FF) - v21 - 1613304421)) ^ v18)))(v23);
}

uint64_t sub_10003D80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, uint64_t a15, uint64_t a16, int a17)
{
  a15 = v17 + 956911519 * ((2 * (v21 & 0xA89F6157C077E0) - v21 + 0x7F57609EA83F881CLL) ^ 0x3A61154242AEF819) - ((v17 << ((v20 + 17) ^ 0x42u)) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34;
  a16 = a11;
  a14 = (v20 - 2612) ^ (956911519 * ((2 * (v21 & 0x57C077E0) - v21 - 1472231396) ^ 0x42AEF819));
  v22 = (*(v18 + 8 * (v20 + 5965)))(&a14);
  return (*(v18 + 8 * (((a17 != v19) * (v20 - 3521)) ^ v20)))(v22);
}

uint64_t sub_10003D8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = 1317436891 * ((1803464870 - (&a14 | 0x6B7EB0A6) + (&a14 | 0x94814F59)) ^ 0x2482D72F) + 8154;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((3602 * (a15 == v17)) ^ v18)))(v19);
}

void sub_10003D98C(unsigned int a1@<W8>)
{
  v3 = ((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBDDLL;
  v4 = __ROR8__(v3 & 0xFFFFFFFFFFFFFFF8, 8);
  v5 = (0x6AF7234D0CC131D4 - v4) & (a1 ^ 0xE17ED4F2859DCFCDLL) | (v4 + 0x1508DCB2F33ECE2BLL) & 0x1A812B0D7A623ED0;
  v6 = __ROR8__(v5 ^ 0xAC9796C9EA8B26FDLL, 8);
  v5 ^= 0x4D1735E737D57A1uLL;
  v7 = (v6 + v5 - ((2 * (v6 + v5)) & 0xA8F535F8906AB678) - 0x2B856503B7CAA4C4) ^ 0x30E7ED23CF08E442;
  v8 = v7 ^ __ROR8__(v5, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0xF5A2F1B9B5D0B209;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = (__ROR8__(v9, 8) + v10) ^ 0x5963B6C555D97F1FLL;
  v12 = v11 ^ __ROR8__(v10, 61);
  v13 = __ROR8__(v11, 8);
  v14 = (((2 * ((v13 + v12) ^ 0xE7B5DC45273D63A1)) | 0x504C6837B780C63ELL) - ((v13 + v12) ^ 0xE7B5DC45273D63A1) + 0x57D9CBE4243F9CE1) ^ 0x2ED675740CE22449;
  v15 = v14 ^ __ROR8__(v12, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) | 0x4F1E4801C06BB8FCLL) - (v16 + v15) + 0x5870DBFF1FCA2382) ^ 0xC34C380290B10212;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x1A2AEBE44253AF03;
  v20 = __ROR8__((((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBDCLL) & 0xFFFFFFFFFFFFFFF8, 8);
  v21 = v20 - ((2 * v20 + 0x2A11B965E67D9C56) & 0x86491E2C94CF3D9ALL) - 0x27D29436C2599308;
  v22 = v21 ^ 0xACDCD2D2571791FLL;
  v21 ^= 0xA28B28BABC870843;
  v23 = __ROR8__(v22, 8);
  v24 = (((2 * ((v23 + v21) ^ 0xE86B6D598CE7C62CLL)) & 0x3776BD40C68BCDALL) - ((v23 + v21) ^ 0xE86B6D598CE7C62CLL) - 0x1BBB5EA06345E6ELL) ^ 0xF2B25093F211D8C0;
  v25 = v24 ^ __ROR8__(v21, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0xF5A2F1B9B5D0B209;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x5963B6C555D97F1FLL;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x61459D2AF01F24F7;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v1;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0x1A2AEBE44253AF03;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = __ROR8__(v34, 8);
  v37 = ((((v36 + v35 - ((2 * (v36 + v35)) & 0x46C4DEB32D067766) + 0x23626F5996833BB3) ^ 0x88522D8BBE0467F2) >> (8 * ((((2 * LOBYTE(STACK[0x2B0])) & 0xBA) + (LOBYTE(STACK[0x2B0]) ^ 0xDD) + LOBYTE(STACK[0x5E0]) + 36) & 7u))) ^ *(((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBDCLL)) << 48;
  v38 = __ROR8__((((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBDBLL) & 0xFFFFFFFFFFFFFFF8, 8);
  v39 = v37 | (((((__ROR8__(v19, 8) + (v19 ^ __ROR8__(v18, 61))) ^ 0xAB3042D228875C41) >> (8 * ((((2 * LOBYTE(STACK[0x2B0])) & 0xBA) + (LOBYTE(STACK[0x2B0]) ^ 0xDD) + LOBYTE(STACK[0x5E0]) + 35) & 7u))) ^ *v3) << 56);
  v40 = ((2 * (v38 + v2)) | 0xE988EE55C850EEE4) - (v38 + v2) + 0xB3B88D51BD7888ELL;
  v41 = __ROR8__(v40 ^ 0xBD2D35118B3E90A0, 8);
  v40 ^= 0x156BD08612C8E1FCuLL;
  v42 = (v41 + v40) ^ 0xE49D77DF873DBF7ELL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (v44 + v43 - ((2 * (v44 + v43)) & 0x6A1EDDA6EAF44D6) - 0x7CAF0912C8A85D95) ^ 0x76F2075482871062;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ 0x5963B6C555D97F1FLL;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x61459D2AF01F24F7;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ v1;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0x1A2AEBE44253AF03;
  v54 = __ROR8__(v53, 8);
  v55 = __ROR8__(v52, 61);
  v56 = v39 | (((((((v54 + (v53 ^ v55)) | 0xC0D69FAEA99994B0) - ((v54 + (v53 ^ v55)) | 0x3F29605156666B4FLL) + 0x3F29605156666B4FLL) ^ 0x6BE6DD7C811EC8F1) >> (8 * ((((2 * LOBYTE(STACK[0x2B0])) & 0xBA) + (LOBYTE(STACK[0x2B0]) ^ 0xDD) + LOBYTE(STACK[0x5E0]) + 37) & 7u))) ^ *(((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBDBLL)) << 40);
  v57 = (__ROR8__((((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBDALL) & 0xFFFFFFFFFFFFFFF8, 8) + v2) & 0xFBFFFFFFFFFFFFFFLL;
  v58 = v57 ^ 0x4DE9423B6F16E7D2;
  v57 ^= 0xE5AFA7ACF6E0968ELL;
  v59 = (__ROR8__(v58, 8) + v57) ^ 0xE49D77DF873DBF7ELL;
  v60 = v59 ^ __ROR8__(v57, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0xF5A2F1B9B5D0B209;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ 0x5963B6C555D97F1FLL;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (((v65 + v64) | 0xAC2390E6C13EB103) - ((v65 + v64) | 0x53DC6F193EC14EFCLL) + 0x53DC6F193EC14EFCLL) ^ 0xCD660DCC312195F4;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ v1;
  v69 = v68 ^ __ROR8__(v67, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (v70 + v69 - ((2 * (v70 + v69)) & 0xE3F30D59F9F95424) + 0x71F986ACFCFCAA12) ^ 0x6BD36D48BEAF0511;
  v72 = v56 | (((((__ROR8__(v71, 8) + (v71 ^ __ROR8__(v69, 61))) ^ 0xAB3042D228875C41) >> (8 * ((((2 * LOBYTE(STACK[0x2B0])) & 0xBA) + (LOBYTE(STACK[0x2B0]) ^ 0xDD) + LOBYTE(STACK[0x5E0]) + 38) & 7u))) ^ *(((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBDALL)) << 32);
  v73 = __ROR8__((((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBD9) & 0xFFFFFFFFFFFFFFF8, 8);
  v74 = -2 - (((0x6AF7234D0CC131D4 - v73) | 0x44BA01A51A183DE0) + ((v73 + 0x1508DCB2F33ECE2BLL) | 0xBB45FE5AE5E7C21FLL));
  v75 = v74 ^ 0xD53439E750EDA32;
  v74 ^= 0xA515A609ECF8AB6ELL;
  v76 = __ROR8__(v75, 8);
  v77 = (((2 * ((v76 + v74) ^ 0xBE8B2A9C9DF400CFLL)) & 0xAA23D21ABB2D7C00) - ((v76 + v74) ^ 0xBE8B2A9C9DF400CFLL) + 0x2AEE16F2A26941FFLL) ^ 0x70F84BB1B8A0FE4ELL;
  v78 = v77 ^ __ROR8__(v74, 61);
  v79 = __ROR8__(v77, 8);
  v80 = (((2 * (v79 + v78)) & 0x7D84ABA23E9CFE7ELL) - (v79 + v78) - 0x3EC255D11F4E7F40) ^ 0x349F5B97556132C9;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = __ROR8__(v80, 8);
  v83 = (((v82 + v81) | 0xD44CE57641558F6ELL) - ((v82 + v81) | 0x2BB31A89BEAA7091) + 0x2BB31A89BEAA7091) ^ 0x8D2F53B3148CF071;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = __ROR8__(v83, 8);
  v86 = __ROR8__((((2 * (v85 + v84)) & 0x56507D4A3E0F7B40) - (v85 + v84) - 0x2B283EA51F07BDA1) ^ 0xB5925C7010E766A8, 8);
  v87 = (((2 * (v85 + v84)) & 0x56507D4A3E0F7B40) - (v85 + v84) - 0x2B283EA51F07BDA1) ^ 0xB5925C7010E766A8 ^ __ROR8__(v84, 61);
  v88 = (((2 * (v86 + v87)) & 0xEEF74AFFBBE4930CLL) - (v86 + v87) + 0x8845A80220DB679) ^ 0x6C47468252896815;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (((2 * (v90 + v89)) & 0x29B65A41F14458CCLL) - (v90 + v89) - 0x14DB2D20F8A22C67) ^ 0xF10E393B450E7C9ALL;
  v92 = v91 ^ __ROR8__(v89, 61);
  v93 = __ROR8__(v91, 8);
  v94 = v72 & 0xFFFFFFFF00FFFFFFLL | (((((v93 + v92 - ((2 * (v93 + v92)) & 0xDE26E3A15DEF6F6ALL) + 0x6F1371D0AEF7B7B5) ^ 0xC42333028670EBF4) >> (8 * ((((2 * LOBYTE(STACK[0x2B0])) & 0xBA) + (LOBYTE(STACK[0x2B0]) ^ 0xDD) + LOBYTE(STACK[0x5E0]) + 39) & 7u))) ^ *(((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBD9)) << 24);
  v95 = __ROR8__((((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBD8) & 0xFFFFFFFFFFFFFFF8, 8);
  v96 = ((2 * v95 + 0x2A11B965E67D9C56) & 0xCB0FE93C98309366) - v95 + 0x56F2EAEC0A8E821;
  v97 = v96 ^ 0xD391495ADCF1519ELL;
  v96 ^= 0x7BD7ACCD450720C2uLL;
  v98 = __ROR8__(v97, 8);
  v99 = __ROR8__((((v98 + v96) ^ 0x8FF42FE233FDEFE0 | 0xCCF5982A4DA0F226) - ((v98 + v96) ^ 0x8FF42FE233FDEFE0 | 0x330A67D5B25F0DD9) + 0x330A67D5B25F0DD9) ^ 0xA79CC017F960A2B8, 8);
  v100 = (((v98 + v96) ^ 0x8FF42FE233FDEFE0 | 0xCCF5982A4DA0F226) - ((v98 + v96) ^ 0x8FF42FE233FDEFE0 | 0x330A67D5B25F0DD9) + 0x330A67D5B25F0DD9) ^ 0xA79CC017F960A2B8 ^ __ROR8__(v96, 61);
  v101 = (v99 + v100) ^ 0xF5A2F1B9B5D0B209;
  v102 = v101 ^ __ROR8__(v100, 61);
  v103 = (__ROR8__(v101, 8) + v102) ^ 0x5963B6C555D97F1FLL;
  v104 = v103 ^ __ROR8__(v102, 61);
  v105 = __ROR8__(v103, 8);
  v106 = (((2 * (v105 + v104)) | 0x6B60C641F567F5AALL) - (v105 + v104) - 0x35B06320FAB3FAD5) ^ 0x54F5FE0A0AACDE22;
  v107 = v106 ^ __ROR8__(v104, 61);
  v108 = (__ROR8__(v106, 8) + v107) ^ v1;
  v109 = v108 ^ __ROR8__(v107, 61);
  v110 = (__ROR8__(v108, 8) + v109) ^ 0x1A2AEBE44253AF03;
  v111 = v94 & 0xFFFFFFFFFF00FFFFLL | (((((__ROR8__(v110, 8) + (v110 ^ __ROR8__(v109, 61))) ^ 0xAB3042D228875C41) >> (8 * ((((2 * LOBYTE(STACK[0x2B0])) & 0xBA) + (LOBYTE(STACK[0x2B0]) ^ 0xDD) + LOBYTE(STACK[0x5E0]) + 40) & 7u))) ^ *(((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBD8)) << 16);
  v112 = (__ROR8__((((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBD7) & 0xFFFFFFFFFFFFFFF8, 8) + v2) & 0xFBFFFFFFFFFFFFFFLL;
  v113 = v112 ^ 0x4DE9423B6F16E7D2;
  v112 ^= 0xE5AFA7ACF6E0968ELL;
  v114 = (__ROR8__(v113, 8) + v112) ^ 0xE49D77DF873DBF7ELL;
  v115 = __ROR8__(v114, 8);
  v116 = v114 ^ __ROR8__(v112, 61);
  v117 = (v115 + v116 - ((2 * (v115 + v116)) & 0x10D88C22F14EF5CLL) + 0x86C461178A77AELL) ^ 0xF52435D8A25AC5A7;
  v118 = v117 ^ __ROR8__(v116, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0x5963B6C555D97F1FLL;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = __ROR8__(v119, 8);
  v122 = (((2 * (v121 + v120)) | 0xF8F4D7410A173B82) - (v121 + v120) - 0x7C7A6BA0850B9DC1) ^ 0x1D3FF68A7514B936;
  v123 = v122 ^ __ROR8__(v120, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ v1;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = __ROR8__(v124, 8);
  v127 = v111 & 0xFFFFFFFFFFFF00FFLL | (((((__ROR8__((((v126 + v125) & 0x865B83655FEF6F5 ^ 0x2498320576F0D5) + ((v126 + v125) & 0xF79A47C9AA01090ALL ^ 0xC68006C000000803) - 1) ^ 0xDC8E7516472557D4, 8) + ((((v126 + v125) & 0x865B83655FEF6F5 ^ 0x2498320576F0D5) + ((v126 + v125) & 0xF79A47C9AA01090ALL ^ 0xC68006C000000803) - 1) ^ 0xDC8E7516472557D4 ^ __ROR8__(v125, 61))) ^ 0xAB3042D228875C41) >> (8 * ((((2 * LOBYTE(STACK[0x2B0])) & 0xBA) + (LOBYTE(STACK[0x2B0]) ^ 0xDD) + LOBYTE(STACK[0x5E0]) + 41) & 7u))) ^ *(((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBD7)) << 8);
  v128 = __ROR8__((((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBD6) & 0xFFFFFFFFFFFFFFF8, 8);
  v129 = ((2 * (v128 + v2)) | 0x804B0297E5FB7EA4) - (v128 + v2) - 0x4025814BF2FDBF52;
  v130 = v129 ^ 0x9CCC3709DEB5880;
  v129 ^= 0xA18A26E7041D29DCLL;
  v131 = __ROR8__(v130, 8);
  v132 = (((2 * (v131 + v129)) & 0xC07D41EEC5780520) - (v131 + v129) + 0x1FC15F089D43FD6FLL) ^ 0xFB5C28D71A7E4211;
  v133 = v132 ^ __ROR8__(v129, 61);
  v134 = __ROR8__(v132, 8);
  v135 = (v134 + v133 - ((2 * (v134 + v133)) & 0xC66D97DBD851D3B2) - 0x1CC9341213D71627) ^ 0x16943A5459F85BD0;
  v136 = v135 ^ __ROR8__(v133, 61);
  v137 = __ROR8__(v135, 8);
  v138 = (((2 * (v137 + v136)) | 0x341E0CCC86BF04E6) - (v137 + v136) + 0x65F0F999BCA07D8DLL) ^ 0xC36CB0A31686FD6CLL;
  v139 = v138 ^ __ROR8__(v136, 61);
  v140 = __ROR8__(v138, 8);
  v141 = (v140 + v139 - ((2 * (v140 + v139)) & 0xA996373FDA7782A4) + 0x54CB1B9FED3BC152) ^ 0x358E86B51D24E5A5;
  v142 = v141 ^ __ROR8__(v139, 61);
  v143 = (__ROR8__(v141, 8) + v142) ^ v1;
  v144 = __ROR8__(v143, 8);
  v145 = v143 ^ __ROR8__(v142, 61);
  v146 = (v144 + v145 - ((2 * (v144 + v145)) & 0xAB9BCCB5A89BD69ALL) + 0x55CDE65AD44DEB4DLL) ^ 0x4FE70DBE961E444ELL;
  v147 = v146 ^ __ROR8__(v145, 61);
  v148 = __ROR8__(v146, 8);
  v149 = v127 | ((((((2 * (v148 + v147)) & 0x970A9B9F1F62DE94) - (v148 + v147) - 0x4B854DCF8FB16F4BLL) ^ 0x1F4AF0E258C9CCF4) >> (8 * ((((2 * LOBYTE(STACK[0x2B0])) & 0xBA) + (LOBYTE(STACK[0x2B0]) ^ 0xDD) + LOBYTE(STACK[0x5E0]) + 42) & 7u))) ^ *(((2 * STACK[0x2B0]) & 0x77FAFFEFCFEFD7BALL) + (STACK[0x2B0] ^ 0x3BFD7FF7E7F7EBDDLL) + STACK[0x5E0] - 0x3BFD7FF7E7F7EBD6));
  STACK[0x7D8] = v149 + 0x4789E5A74F535ADDLL - ((2 * v149) & 0x8F13CB4E9EA6B5BALL);
  JUMPOUT(0x10003E84CLL);
}

uint64_t sub_10003E908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, __int16 a11, char a12, int a13, char a14, char *a15, char *a16, uint64_t a17, unsigned int a18, int a19)
{
  v22 = 1317436891 * (((&a14 | 0x9F232A3C) - (&a14 & 0x9F232A3C)) ^ 0x2F20B24A);
  a18 = 1592118204 - v22;
  a19 = (v21 + 670) ^ v22;
  a15 = &a12;
  a16 = &a10;
  a17 = v19;
  v23 = (*(v20 + 8 * (v21 + 7923)))(&a14);
  return (*(v20 + 8 * (((*(v19 + 24) != (((v21 - 1646) | 0x1009) ^ 0xF80346)) * (v21 - 1270)) ^ v21)))(v23);
}

uint64_t sub_10003EA3C(uint64_t a1)
{
  v5 = (2 * (v1 ^ 0x3AF) + 743) | 0x21A;
  *v3 = a1;
  *v2 = v8;
  v12 = (v5 + 3643) ^ (1824088897 * ((&v10 - 1264227316 - 2 * (&v10 & 0xB4A56C0C)) ^ 0xECCCBF6E));
  v11 = v9;
  (*(v4 + 8 * (v5 + 4909)))(&v10);
  v11 = v7;
  v12 = ((v5 ^ 0x1F75) + 4976) ^ (1824088897 * ((((2 * &v10) | 0x69B86ECA) - &v10 + 1260636315) ^ 0xECB5E407));
  (*(v4 + 8 * ((v5 ^ 0x1F75) + 6242)))(&v10);
  return 0;
}

void sub_10003EC94(uint64_t a1)
{
  v2 = *(&off_100755B60 + ((-85 * (dword_10077DF00 ^ 0xDF ^ dword_10077E220)) ^ byte_10068DEC0[byte_100683950[(-85 * (dword_10077DF00 ^ 0xDF ^ dword_10077E220))] ^ 0x21]) + 84);
  v3 = -85 * (*v2 ^ dword_10077E220 ^ 0xDF);
  v4 = *(&off_100755B60 + (byte_100683A50[byte_10069D108[v3 - 8] ^ 0xDD] ^ v3) - 42);
  v5 = (*v4 ^ *v2) - &v9;
  v6 = (2054362027 * v5) ^ 0xB4207763EF64BDFLL;
  v7 = 2054362027 * (v5 ^ 0xB4207763EF64BDFLL);
  *v2 = v6;
  *v4 = v7;
  LODWORD(v4) = *v2;
  v8 = *(&off_100755B60 + ((-85 * ((dword_10077E220 - dword_10077DF00) ^ 0xDF)) ^ byte_100683C50[byte_10069D200[(-85 * ((dword_10077E220 - dword_10077DF00) ^ 0xDF))] ^ 0x71]) + 120) - 8;
  (*&v8[8 * (byte_10068DECC[(byte_100683950[(-85 * ((v7 + v4) ^ 0xDF))] ^ 0xEE) - 12] ^ (-85 * ((v7 + v4) ^ 0xDF))) + 76200])(*(&off_100755B60 + (byte_100683C5C[(byte_10069D20C[(-85 * (v4 ^ 0xDF ^ v7)) - 12] ^ 0xE9) - 12] ^ (-85 * (v4 ^ 0xDF ^ v7))) - 13), sub_1000B1988);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10003EE88@<X0>(int a1@<W8>)
{
  v5 = a1 - 1201;
  v6 = (*(v3 + 8 * (a1 + 7123)))(v4);
  if (v1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2;
  }

  return (*(v3 + 8 * (((1556 * (v5 ^ 0x545) + 1922) * v7) ^ v5)))(v6);
}

uint64_t sub_10003EEE4()
{
  *(v6 - 224) = v1 ^ (((((v6 - 232) | 0x4A43B577) + (~(v6 - 232) | 0xB5BC4A88)) ^ 0x66BF040D) * v5);
  v7 = (*(v4 + 8 * (v0 ^ 0x3265)))(v6 - 232);
  *(v3 + 16) = *(v6 - 232) ^ v2;
  return (*(v4 + 8 * (v0 + 766)))(v7);
}

uint64_t sub_10003EF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned int a16, int a17)
{
  a16 = 476323082 - 1710126949 * (((&a16 | 0x900FFFE3) - (&a16 & 0x900FFFE3)) ^ 0xA214A473);
  v18 = (*(v17 + 77088))(&a16);
  return (*(v17 + 8 * ((4792 * (a17 == 16257999)) ^ 0x78Du)))(v18);
}

uint64_t sub_10003F054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, char a5@<W8>)
{
  v10 = STACK[0x270];
  v11 = *STACK[0x300] + 6;
  v12 = __ROR8__(v11 & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = ((0x6AF7234D0CC131D4 - v12) & a2) + v12 + v8 - ((v12 + v8) & a2);
  v14 = __ROR8__(v13 ^ 0xAB257711D84E66DLL, 8);
  v13 ^= 0xA2F4B2E684729731;
  v15 = (((v14 + v13) & 0xB9CE2113715ACFF7 ^ 0x184A000231524D61) + ((v14 + v13) & 0x4631DEEC8EA53008 ^ 0x460196A406053009) - 1) ^ 0xBAD6E179B06AC217;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ 0xF5A2F1B9B5D0B209;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x5963B6C555D97F1FLL;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = (__ROR8__(v19, 8) + v20) ^ a4;
  v22 = __ROR8__(v21, 8);
  v23 = v21 ^ __ROR8__(v20, 61);
  v24 = (v22 + v23) ^ 0x64C31C027084DE6CLL;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8) + v25;
  v27 = __ROR8__((*STACK[0x300] + 7) & 0xFFFFFFFFFFFFFFF8, 8);
  v28 = (0x6AF7234D0CC131D4 - v27) & 0xC2A16714FA488FC8 | (v27 + 0x1508DCB2F33ECE2BLL) & 0x3D5E98EB05B77037;
  v29 = __ROR8__(v28 ^ 0x8B48252F955E681ALL, 8);
  v28 ^= 0x230EC0B80CA81946uLL;
  v30 = (((2 * v26) | 0x36A4398A31861B6ALL) - v26 - 0x1B521CC518C30DB5) ^ 0x178F7215A90A2B6;
  v31 = (((2 * (v29 + v28)) & 0xAC7FF88AB7D467A0) - (v29 + v28) - 0x563FFC455BEA33D1) ^ 0x4D5D746523287351;
  v32 = v31 ^ __ROR8__(v28, 61);
  v33 = __ROR8__(v31, 8);
  v34 = ((__ROR8__(v30, 8) + (v30 ^ __ROR8__(v25, 61))) ^ 0xAB3042D228875C41) >> (8 * (v11 & 7u));
  v35 = (v33 + v32 - ((2 * (v33 + v32)) & 0xBB63D01A1060ED3ALL) - 0x224E17F2F7CF8963) ^ 0x281319B4BDE0C494;
  v36 = v35 ^ __ROR8__(v32, 61);
  v37 = *(STACK[0x330] + 8 * (LODWORD(STACK[0x32C]) - 5500));
  *v11 = v34 ^ HIBYTE(LODWORD(STACK[0x270])) ^ 0xDD;
  v38 = (__ROR8__(v35, 8) + v36) ^ 0x5963B6C555D97F1FLL;
  v39 = v38 ^ __ROR8__(v36, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ a4;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * (v42 + v41)) | 0x63B77BB044F1F226) - (v42 + v41) + 0x4E244227DD8706EDLL) ^ 0xD518A1DA52FC277FLL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ 0x1A2AEBE44253AF03;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = __ROR8__(v45, 8);
  *(v11 + 1) = (((v47 + v46 - ((2 * (v47 + v46)) & 0x7F0D34FB28D08226) + 0x3F869A7D94684113) ^ 0x94B6D8AFBCEF1D52) >> (8 * ((v11 + 1) & 7))) ^ BYTE2(v10) ^ 0x60;
  v48 = __ROR8__((v11 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v49 = ((2 * v48 + 0x2A11B965E67D9C56) & 0xC8758E867E4F43EALL) - v48 + 0x6BC5C09CD998FDFLL;
  v50 = __ROR8__(v49 ^ 0xD22C7A87AFCEB9D8, 8);
  v49 ^= 0x7A6A9F103638C884uLL;
  v51 = (v50 + v49) ^ 0xE49D77DF873DBF7ELL;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ 0xF5A2F1B9B5D0B209;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0x5963B6C555D97F1FLL;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (((2 * (v57 + v56)) | 0x316A40512FDE1242) - (v57 + v56) + 0x674ADFD76810F6DFLL) ^ 0xF9F0BD0267F02DD6;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ 0x64C31C027084DE6CLL;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ 0x1A2AEBE44253AF03;
  *(v11 + 2) = (((__ROR8__(v62, 8) + (v62 ^ __ROR8__(v61, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v11 + 2) & 7))) ^ BYTE1(v10) ^ 0xF8;
  v63 = __ROR8__((v11 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v64 = (0xAF7234D0CC131D4 - v63) & 0x126AA61F6F56C0D8 | (v63 + v8) & v9;
  v65 = v64 ^ v7;
  v66 = v64 ^ v5;
  v67 = (__ROR8__(v65, 8) + v66) ^ 0xE49D77DF873DBF7ELL;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0xF5A2F1B9B5D0B209;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = __ROR8__(v69, 8);
  v72 = ((a1 | (2 * (v71 + v70))) - (v71 + v70) + a3) ^ v6;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ a4;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0x64C31C027084DE6CLL;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ 0x1A2AEBE44253AF03;
  *(v11 + 3) = v10 ^ a5 ^ (((__ROR8__(v78, 8) + (v78 ^ __ROR8__(v77, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v11 + 3) & 7)));
  return v37();
}

uint64_t sub_10003F674(uint64_t a1)
{
  v2 = 1710126949 * (((a1 | 0x1DAA112) - (a1 & 0x1DAA112)) ^ 0x33C1FA82);
  v3 = *(a1 + 8) ^ v2;
  v19 = v3 - 1875091903 * (&v18 ^ 0x36758383) + 20587403;
  v4 = *(&off_100755B60 + v3 - 940080099) - 8;
  (*&v4[8 * (v3 ^ 0x38085938)])(&v18);
  v5 = 1875091903 * (((&v18 | 0x402FB4F9) - &v18 + (&v18 & 0xBFD04B04)) ^ 0x765A377A);
  v18 = v5 ^ (v3 - 1059747090);
  v19 = v5 ^ 0x5D845C70;
  result = (*&v4[8 * v3 - 0x1C042B9C8])(&v18);
  if (v20 == 203186117 || v20 == 203186114)
  {
    v7 = *(a1 + 12) + v2;
    v8 = ((v7 & 0xD9A67BD6) << (-93 * (v3 ^ 0xF7) - 70)) & (v7 ^ 0x9DA57387) ^ v7 & 0xD9A67BD6;
    v9 = ((2 * (v7 ^ 0xADAD808B)) ^ 0xE817F6BA) & (v7 ^ 0xADAD808B) ^ (2 * (v7 ^ 0xADAD808B)) & 0x740BFB5C;
    v10 = v9 ^ 0x14080945;
    v11 = (v9 ^ 0x7003F21C) & (4 * v8) ^ v8;
    v12 = ((4 * v10) ^ 0xD02FED74) & v10 ^ (4 * v10) & 0x740BFB5C;
    v13 = (v12 ^ 0x500BE940) & (16 * v11) ^ v11;
    v14 = ((16 * (v12 ^ 0x24001209)) ^ 0x40BFB5D0) & (v12 ^ 0x24001209) ^ (16 * (v12 ^ 0x24001209)) & 0x740BFB50;
    v15 = v13 ^ 0x740BFB5D ^ (v14 ^ 0x400BB100) & (v13 << 8);
    v16 = (v15 << 16) & 0x740B0000 ^ v15 ^ ((v15 << 16) ^ 0x7B5D0000) & (((v14 ^ 0x34004A0D) << 8) & 0x740B0000 ^ 0x74000000 ^ (((v14 ^ 0x34004A0D) << 8) ^ 0xBFB0000) & (v14 ^ 0x34004A0D));
    v17 = 956911519 * (((&v18 | 0x4ECBBE91) - &v18 + (&v18 & 0xB134416C)) ^ 0xA45ACE94);
    v20 = v3 - v17 + 1927849047;
    v18 = v17 ^ v7 ^ (2 * v16) ^ 0x1B46DBD6;
    (*&v4[8 * v3 - 0x1C042B788])(&v18);
    __asm { BRAA            X8, X17 }
  }

  return result;
}

uint64_t sub_10003FAA8()
{
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 || v0 == 0;
  return (*(v3 + 8 * ((97 * v6) ^ 0x4B6u)))();
}

uint64_t sub_10003FBFC@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, __int16 a4@<W8>)
{
  v9 = 2493 * (v5 ^ 0x1392);
  v10 = ((v9 ^ 0x1375) & v4) + 19;
  v11 = *(v6 + (v10 * a1 - (((((v10 * a1) & 0xFFFEu) * a2) >> 16) >> 7) * a3));
  v12 = v8;
  v13 = v8 % 0xE;
  v14 = STACK[0x77F];
  v15 = STACK[0x588];
  LOBYTE(STACK[0x77F]) = v11;
  v16 = v10 * ((v11 ^ 0xFF87 | v11 ^ 0x18) & a1);
  *(v6 + (v16 - ((((v16 & 0xFFFEu) * a2) >> 16) >> 7) * a3)) = v14;
  v17 = STACK[0x5B0];
  v18 = LODWORD(STACK[0x5B0]) % 0xD;
  v19 = STACK[0x81D];
  v20 = (v15 % 0xF * a1 + 3160 - (((4329 * ((v15 % 0xF * a1 + 3160) & 0xFFFE)) >> 16) >> 6) * a3);
  LOBYTE(STACK[0x81D]) = *(v6 + v20);
  *(v6 + v20) = v19;
  LOBYTE(v20) = STACK[0x8BB];
  v21 = (v13 * a1 + 3318 - (((4329 * ((v13 * a1 + 3318) & 0xFFFEu)) >> 16) >> 6) * a3);
  v17 ^= 0x1076C98Bu;
  v22 = v17 - 1738597062;
  LOBYTE(STACK[0x8BB]) = *(v6 + v21);
  v23 = v4 ^ 0xBCF3EAF2;
  *(v6 + v21) = v20;
  LODWORD(v20) = (v12 - (v4 ^ 0xBCF3EAF2)) ^ v17;
  v24 = (v18 * a1 + 3476 - (((4329 * ((v18 * a1 + 3476) & 0xFFFEu)) >> 16) >> 6) * a3);
  LOBYTE(v17) = STACK[0x959];
  v25 = v15 + v4 - 580771575;
  v26 = v23 - v20;
  LOBYTE(STACK[0x959]) = *(v6 + v24);
  *(v6 + v24) = v17;
  LOWORD(v12) = a4 + (((2 * (v25 % 0xB)) & 0xA) + ((v25 % 0xB) ^ 5)) * a1;
  v27 = STACK[0x9F7];
  v28 = (v26 % 0xC * a1 + 3634 - (((4329 * ((v26 % 0xC * a1 + 3634) & 0xFFFE)) >> 16) >> 6) * a3);
  LOBYTE(STACK[0x9F7]) = *(v6 + v28);
  *(v6 + v28) = v27;
  LOBYTE(v28) = STACK[0xA95];
  v29 = (v12 - ((((v12 & 0xFFFE) * a2) >> 16) >> 7) * a3);
  LOBYTE(STACK[0xA95]) = *(v6 + v29);
  *(v6 + v29) = v28;
  LOBYTE(v29) = STACK[0x76A];
  v30 = (v20 % 0xA * a1 + 3950 - (((4329 * ((v20 % 0xA * a1 + 3950) & 0xFFFE)) >> 16) >> 6) * a3);
  LOBYTE(STACK[0x76A]) = *(v6 + v30);
  *(v6 + v30) = v29;
  v31 = (v22 % 9 * a1 + 4108 - (((((v22 % 9 * a1 + 4108) & 0xFFFE) * a2) >> 16) >> 7) * a3);
  v26 ^= 0x154201F3u;
  v32 = v26 ^ v25;
  LOBYTE(v28) = STACK[0x808];
  LOBYTE(STACK[0x808]) = *(v6 + v31);
  *(v6 + v31) = v28;
  LOBYTE(v28) = STACK[0x8A6];
  v33 = (((v26 + 15100) & 7) * a1 + 4266 - (((4329 * (((v26 + 700922620) & 7) * a1 + 4266)) >> 16) >> 6) * a3);
  LOBYTE(STACK[0x8A6]) = *(v6 + v33);
  LODWORD(v20) = (v26 ^ v22) + v20 + v32;
  *(v6 + v33) = v28;
  LOWORD(v29) = (v32 + 1229034082) % 7u * a1 + 4424;
  LOBYTE(v28) = STACK[0x944];
  v34 = (v29 - (((4329 * (v29 & 0xFFFE)) >> 16) >> 6) * a3);
  LOBYTE(STACK[0x944]) = *(v6 + v34);
  *(v6 + v34) = v28;
  LOBYTE(v28) = STACK[0x9E2];
  LODWORD(v24) = v22 % 5;
  v35 = (v20 % 6 * a1 + 4582 - (((4329 * ((v20 % 6 * a1 + 4582) & 0xFFFE)) >> 16) >> 6) * a3);
  LOBYTE(STACK[0x9E2]) = *(v6 + v35);
  *(v6 + v35) = v28;
  LOBYTE(v22) = (v26 - 4) ^ v22;
  LODWORD(v24) = v24 * a1;
  LOBYTE(v26) = v22 + v26 - v20;
  LOBYTE(v35) = STACK[0xA80];
  LOBYTE(STACK[0xA80]) = *(v6 + ((v24 + 4740) & 0xFFFEu) % ((379 - v24) & a3 ^ (v24 + 4740) & 0x3C8u));
  *(v6 + (v24 + 4740 - (((4329 * (v24 + 4740)) >> 16) >> 6) * a3)) = v35;
  LOBYTE(v20) = v20 - v22;
  v36 = ((v26 & 3) * a1 + 4898 - (((4329 * ((v26 & 3) * a1 + 4898)) >> 16) >> 6) * a3);
  LOBYTE(v22) = STACK[0x755];
  LOBYTE(STACK[0x755]) = *(v6 + v36);
  *(v6 + v36) = v22;
  v37 = ((v32 - 824529894) % 3u * a1 + 5056 - (((4329 * (((v32 - 824529894) % 3u * a1 + 5056) & 0xFFFE)) >> 16) >> 6) * a3);
  LOBYTE(v32) = STACK[0x7F3];
  LOBYTE(STACK[0x7F3]) = *(v6 + v37);
  *(v6 + v37) = v32;
  v38 = (v20 & 1) == 0;
  v39 = 433;
  if (!v38)
  {
    v39 = 591;
  }

  v40 = STACK[0x891];
  LOBYTE(STACK[0x891]) = *(&STACK[0x6E0] + v39);
  *(&STACK[0x6E0] + v39) = v40;
  v41 = (16 * *(STACK[0x5A0] + (-6286 - (((59250 * a2) >> 16) >> 7) * a3))) ^ 0x90;
  v42 = (v41 - ((2 * v41) & 0x20) + 25) ^ *(STACK[0x5A0] + (-6286 - (((59250 * a2) >> 16) >> 7) * a3));
  v43 = (*(*(&off_100755B60 + (v9 ^ 0x121B)) + (353 * (v42 ^ 0xBF) + 6354 - 944 * ((4549754 * (353 * (v42 ^ 0xBFu) + 6354)) >> 32)) - 4) ^ v42 ^ 0x81 ^ ((v42 ^ 0x81) + 116) ^ 0x4D) * a1;
  *(STACK[0x5A0] + (70942 - 73 * a3)) = *(STACK[0x5A0] + ((v43 + 3002) & 0xFFFEu) % ((((v43 + 3002) & 0x2BCA) + ((13381 - v43) & 0x2BCB)) & 0x47CDu));
  return (*(v7 + 8 * (v9 ^ 0xEA)))();
}

uint64_t sub_100040200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (v3 - 4424)) ^ v3)))();
}

uint64_t sub_100040328()
{
  v4 = 17 * (v3 ^ 0x6A8);
  v10 = (v3 + 6579) ^ ((((&v8 | 0x626C3763) - &v8 + (&v8 & 0x9D93C898)) ^ 0x3A05E401) * v1);
  v9 = v7;
  (*(v0 + 8 * (v3 + 7845)))(&v8);
  v9 = v6;
  v10 = (v4 + 7003) ^ (((&v8 & 0x29BBA9E8 | ~(&v8 | 0x29BBA9E8)) ^ 0x8E2D8575) * v1);
  (*(v0 + 8 * (v4 ^ 0x20B3)))(&v8);
  return (v2 - 16257999);
}

uint64_t sub_1000404A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v11 = v8 + 32;
  v12 = (((v7 + v6) + a2) ^ v11) + v5;
  v13 = *(a4 + v12 - 15);
  v14 = *(a4 + v12 - 31);
  v15 = a1 + v12;
  *(v15 - 15) = v13;
  *(v15 - 31) = v14;
  return (*(v10 + 8 * (((v9 == v11) * a3) ^ (v4 + v7 + 2200))))();
}

uint64_t sub_1000404A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v4) ^ v2)))();
}

uint64_t sub_1000404CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = v13 ^ 0x1E31;
  v18 = ((v14 + 444718648) ^ 0x1A81DE38u) < (v16 ^ 0x4B0u) || (a13 - a1) < 0x20;
  return (*(v15 + 8 * ((90 * (((v16 + 107) ^ v18) & 1)) ^ v16)))();
}

uint64_t sub_10004055C@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 ^ 0x1DA6;
  v6 = _byteswap_ulong(*(((2 * (a1 + 6)) & 0x1F5E7BBBEFFF94DCLL) + ((a1 + 6) ^ 0xFAF3DDDF7FFCA6ELL) + v1 - 0xFAF3DDDF7FFCA6ELL));
  v7 = ((v6 + 197499219 - 2 * (v6 & 0xBC5995F ^ *(((2 * (a1 + 6)) & 0x1F5E7BBBEFFF94DCLL) + ((a1 + 6) ^ 0xFAF3DDDF7FFCA6ELL) + v1 - 0xFAF3DDDF7FFCA6BLL) & 0xC)) ^ 0xBC59953) + a1 + 10 > v3;
  return (*(v4 + 8 * (((4 * v7) | (8 * v7)) ^ v5)))();
}

uint64_t sub_10004064C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = a2 - 2915;
  v4 = (a2 + 1209375294) & 0xB7EA5F5F;
  v5 = (*(v2 + 8 * (a2 + 3297)))(a1, 3597337111) != 0;
  return (*(v2 + 8 * ((v5 * (v4 - 4649)) ^ v3)))();
}

uint64_t sub_1000406B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, unsigned int a22, uint64_t a23, uint64_t a24)
{
  v29 = 1875091903 * (((&a21 | 0xAFACA343) + (~&a21 | 0x50535CBC)) ^ 0x99D920C1);
  HIDWORD(a21) = (v27 ^ 0x745FF6AE) + ((2 * v27) & 0xE8BFED5C) - 1413693444 + v29;
  a22 = v29 + 7724;
  a23 = a17;
  (*(v28 + 77160))(&a21);
  a22 = 1824088897 * (((&a21 | 0xDB43A985) - (&a21 & 0xDB43A985)) ^ 0x832A7AE7) + 2305;
  a21 = v26;
  a23 = a17;
  (*(v28 + 76720))(&a21);
  v30 = 1875091903 * (&a21 ^ 0x36758383);
  HIDWORD(a21) = (v25 ^ 0x705EBEFE) + ((2 * v25) & 0xE0BD7DFC) - 1346504788 + v30;
  a22 = v30 + 7724;
  a23 = a17;
  (*(v28 + 77160))(&a21);
  v31 = 1824088897 * (((~&a21 & 0xD6EC4ADE) - (~&a21 | 0xD6EC4ADF)) ^ 0x8E8599BD);
  LODWORD(a21) = v31 + 3757;
  a22 = (v24 ^ 0xEFBCFEFA) + ((2 * v24) & 0xDF79FDF4) - v31 + 1592257424;
  a24 = a17;
  a23 = a14;
  v32 = (*(v28 + 77048))(&a21);
  return (*(v28 + 8 * ((1579 * (HIDWORD(a21) == 16257999)) ^ 0x10D3u)))(v32);
}

uint64_t sub_1000408EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, unint64_t a17, uint64_t a18, uint64_t a19)
{
  v24 = 956911519 * ((v23 - 2 * (v23 & 0xA952DA6382B3F005) - 0x56AD259C7D4C0FFBLL) ^ 0xEC64AFBF68228000);
  a15 = v24 ^ 0x3FE;
  a17 = v21 - ((2 * v21) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v24;
  a18 = a14;
  (*(v22 + 76792))(&a15);
  v25 = 1824088897 * ((v23 & 0xEFBDF3CC | ~(v23 | 0xEFBDF3CC)) ^ 0x482BDF51);
  a15 = v25 + 3757;
  LODWORD(a17) = (v20 ^ 0xEEBFEB9A) + ((2 * v20) & 0xDD7FD734) - v25 + 1608842992;
  a18 = v19;
  a19 = a14;
  v26 = (*(v22 + 77048))(&a15);
  return (*(v22 + 8 * ((5241 * (a16 == 16257999)) ^ 0xF58u)))(v26);
}

uint64_t sub_100040A54@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 40 * v1 + 28);
  switch(v4)
  {
    case 1:
      v7 = STACK[0x900];
      STACK[0x530] = *(v2 + 8 * (v3 - 5989));
      return sub_100127930(v7);
    case 3:
      v6 = *(a1 + 40 * v1 + 16);
      return (*(v2 + 8 * ((((((v3 ^ 0x1BD3u) + 0x7DFFC3FB333AE65ELL) & (2 * v6)) + (v6 ^ 0x3EFFE1FD999D7937) != 0x3EFFE1FD999D7937) * ((v3 ^ 0x157E) - 598)) ^ (v3 + 3303))))();
    case 2:
      return (*(v2 + 8 * (((STACK[0x900] == 0) * ((v3 - 5471) ^ 0x210)) ^ (v3 - 4361))))();
    default:
      return (STACK[0x780])();
  }
}

uint64_t sub_100040BB4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *v1 = a1;
  return (*(v3 + 8 * (((STACK[0x8C0] != 0) * ((v2 + 3765) ^ 0x1680)) ^ (v2 + 3675))))();
}

void sub_100040BF0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x534]) = v6;
  LODWORD(STACK[0x56C]) = v5;
  LODWORD(STACK[0x528]) = a4 + 1;
  LODWORD(STACK[0x5A8]) = v4 + 4781;
  JUMPOUT(0x100040C88);
}

uint64_t sub_100040D84(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, unsigned int a40)
{
  LODWORD(STACK[0x4A0]) += v41;
  LODWORD(STACK[0x540]) = a5 + LODWORD(STACK[0x44C]);
  LODWORD(STACK[0x4C8]) += 64;
  LODWORD(STACK[0x56C]) = LODWORD(STACK[0x4C0]) + LODWORD(STACK[0x548]);
  v48 = a6 & 0x40000;
  if ((a6 & 0x40000 & a8) != 0)
  {
    v48 = -v48;
  }

  LODWORD(STACK[0x588]) = a4 ^ a7;
  LODWORD(STACK[0x548]) = ((((v48 + a8) ^ a6 & 0xFFFBFFFF) - a6) ^ ((v44 ^ a8) - v44) ^ ((a4 ^ a7 ^ v43 ^ a8) - (a4 ^ a7 ^ v43))) - v47;
  v49 = v40 + 951808442;
  v50 = (a7 - v43) ^ a3;
  v51 = a7 - v43 + v40 + 951808442;
  v52 = LODWORD(STACK[0x310]) + 914;
  LODWORD(STACK[0x538]) = v52;
  v53 = v52 ^ 0xA1Au;
  STACK[0x5B0] = v53;
  v54 = v50 ^ v43 ^ (v53 - 208039948);
  v55 = STACK[0x584];
  v56 = v44 - a6;
  v57 = v46 + 951808442;
  v58 = v56 ^ v42;
  v59 = v56 + v57;
  v60 = v58 ^ a6 ^ 0xF399A2F4;
  v61 = ((LODWORD(STACK[0x590]) ^ 0xF399A2F4 ^ v58 ^ a6) - v60) ^ ((v59 ^ LODWORD(STACK[0x590])) - v59) ^ ((v51 ^ LODWORD(STACK[0x584]) ^ v54 ^ LODWORD(STACK[0x590])) - (v51 ^ LODWORD(STACK[0x584]) ^ v54));
  v62 = v51 - (v50 ^ 0xB72E331);
  v63 = v59 - (v58 ^ 0xB72E331);
  v50 ^= 0x7E07931Au;
  v64 = v50 - 284194973;
  v65 = v54 - v50 + v62;
  v66 = STACK[0x550];
  v67 = STACK[0x580];
  v68 = ((v50 - 284194973 + v62) ^ v66 ^ v65 ^ LODWORD(STACK[0x580])) - ((v50 - 284194973 + v62) ^ v66 ^ v65);
  LODWORD(STACK[0x53C]) = v61 - v57;
  v69 = v57 - v60;
  v58 ^= 0x7E07931Au;
  v70 = v60 - v58;
  v58 -= 284194973;
  v71 = v70 + v63;
  v72 = (((v70 + v63) ^ v67) - (v70 + v63)) ^ (((v63 + v58) ^ v67) - (v63 + v58)) ^ v68;
  v73 = (v40 + 951808442 - v54) ^ v64;
  v64 ^= 0x6B189F9Au;
  v74 = v65 + v64;
  v75 = (v73 + 262065247) ^ v62;
  v62 += 1311201533;
  v76 = v74 ^ 0x8598ACE6;
  v77 = STACK[0x57C];
  v78 = STACK[0x58C];
  v79 = (v62 ^ LODWORD(STACK[0x57C]) ^ v74 ^ 0x8598ACE6 ^ LODWORD(STACK[0x58C])) - (v62 ^ LODWORD(STACK[0x57C]) ^ v74 ^ 0x8598ACE6);
  v80 = v69 ^ v58;
  LODWORD(STACK[0x590]) = v72 - v80;
  v81 = (v80 + 262065247) ^ v63;
  v82 = v58 ^ 0x6B189F9A;
  v83 = v71 + (v58 ^ 0x6B189F9A);
  v63 += 1311201533;
  v84 = v78 ^ 0x8598ACE6 ^ v83;
  v83 ^= 0x8598ACE6;
  v85 = (v84 - v83) ^ ((v63 ^ v78) - v63) ^ v79;
  v86 = v75 + v62;
  v87 = (v75 + v62) ^ v74 ^ 0x8598ACE6;
  v88 = v62 - v87;
  v89 = v85 - v81;
  v90 = v81 + v82;
  v91 = v81 + v63;
  v92 = (v81 + v63) ^ v83;
  v93 = v90 + v92;
  v94 = v63 - v92;
  v95 = v88 - 2095050516;
  v96 = v86 - v88;
  v97 = v93 ^ v94;
  v98 = v91 - v94;
  v99 = v94 - 2095050516;
  v100 = ((LODWORD(STACK[0x524]) ^ v99) - v99) ^ ((LODWORD(STACK[0x524]) ^ v83) - v83) ^ ((v76 ^ v45 ^ (v88 - 2095050516) ^ LODWORD(STACK[0x524])) - (v76 ^ v45 ^ (v88 - 2095050516)));
  v101 = ((v75 + v64 + v87) ^ v88) + v76;
  v102 = v101 + v96;
  v103 = (v95 - (v101 + v96)) ^ (v101 + v96);
  v104 = v76 + 748749322;
  v105 = STACK[0x560];
  LODWORD(v106) = __ROR4__((v76 + 748749322) ^ STACK[0x560] ^ v103, 21) ^ 0x49CBD68F;
  HIDWORD(v106) = v106;
  v107 = STACK[0x54C];
  v108 = (LODWORD(STACK[0x54C]) ^ 0xD1E9397A ^ (v106 >> 11)) - ((v106 >> 11) ^ 0xD1E9397A);
  v109 = v97 + v83;
  LODWORD(STACK[0x58C]) = v100 - v98;
  v110 = v97 + v83 + v98;
  v111 = (v99 - v110) ^ v110;
  v112 = v109 + v83 + 748749322;
  v110 ^= 0xB915FEB5;
  v113 = (((v111 ^ v107) - v111) ^ (((v83 + 748749322) ^ v107) - (v83 + 748749322)) ^ v108) - v110;
  v114 = v110 - (v83 + 748749322);
  v115 = v101 + v76 + 748749322;
  v116 = v76 + 2103518918 + v115 - v103;
  v117 = STACK[0x570];
  v118 = v83 + 2103518918 + v112 - v111;
  v119 = (((v118 ^ LODWORD(STACK[0x55C])) - v118) ^ (((v111 + 1814602028) ^ LODWORD(STACK[0x55C])) - (v111 + 1814602028)) ^ (((v103 + 1814602028) ^ v117 ^ v116 ^ LODWORD(STACK[0x55C])) - ((v103 + 1814602028) ^ v117 ^ v116))) - (v114 + v118);
  v120 = v102 ^ 0xB915FEB5;
  v121 = (v102 ^ 0xB915FEB5) - v104;
  v122 = (v121 ^ v115 ^ v116) - v121;
  v123 = v121 + v116;
  LODWORD(STACK[0x450]) += v77 + v75;
  LODWORD(STACK[0x46C]) += LODWORD(STACK[0x53C]);
  LODWORD(STACK[0x480]) += v66 + v73;
  LODWORD(STACK[0x44C]) = LODWORD(STACK[0x540]) + a4;
  LODWORD(STACK[0x490]) += v119;
  LODWORD(STACK[0x47C]) += v45 + v96;
  LODWORD(STACK[0x458]) += v89;
  v124 = v116 - 1213748154;
  v125 = v123 + (((v119 & 0x9FFBB896 ^ 0x9FFBB896) + (v119 & 0x9FFBB896)) & 0xB5EF29BE) * (((v103 + 1806959417) & 0xA9A0A84F ^ 0xA9A0A84F) + ((v103 + 1806959417) & 0xA9A0A84F)) - 1112295940;
  v126 = v83 - 58 + v112 - v111 + 70;
  LODWORD(STACK[0x45C]) += v55 + v49;
  v127 = v126 ^ (v111 + 45);
  v128 = v122 + v116 - 1213748154;
  v129 = (((v114 ^ v112 ^ (v83 - 58 + v112 - v111)) - v114) ^ v126) + 2 * (((v114 ^ v112 ^ (v83 - 58 + v112 - v111)) - v114) & v126);
  v130 = LODWORD(STACK[0x548]) + LODWORD(STACK[0x460]);
  LOBYTE(STACK[0x94C]) = (v116 + 70) ^ (v103 + 45) ^ 0x34;
  LODWORD(STACK[0x4C0]) = LODWORD(STACK[0x56C]) - 2124391199;
  LODWORD(STACK[0x440]) += v105 + v120;
  v131 = ((v116 - 1213748154) ^ (v103 + 1252981805)) - 1452489720;
  v132 = LODWORD(STACK[0x4C4]) - 1699839473;
  v133 = a40 - 1734770482 < v132;
  if (v132 < 0x989980CE != a40 > 0x67667F31)
  {
    v133 = v132 < 0x989980CE;
  }

  LOBYTE(STACK[0x858]) = v118 + 70 + v114 - ((2 * (v118 + 70 + v114)) & 0xE7) - 13;
  LODWORD(STACK[0x488]) += v113;
  LOBYTE(STACK[0x9B1]) = v129 - ((2 * v129) & 0xE7) - 13;
  LOBYTE(STACK[0xAC0]) = v118 + 70 - ((2 * (v118 + 70)) & 0xE7) - 13;
  LOBYTE(STACK[0x967]) = v127 - ((2 * v127) & 0xE7) - 13;
  v134 = v118 + 70 + v114 - 112;
  LODWORD(STACK[0x498]) += v123 + v117;
  LOBYTE(STACK[0x83D]) = v125 ^ 0x34;
  v135 = (v125 - 721262192) ^ v131;
  LOBYTE(STACK[0xAA5]) = (v116 + 70) ^ 0x34;
  v136 = v131 + v128;
  v137 = v125 - 721262192 + v136;
  v138 = v127 + 8;
  v139 = v129 + v127 + 8;
  v140 = (v137 ^ v124 ^ 0x67718FEE) + 2 * (v137 & (v124 ^ 0x67718FEE));
  v141 = v138 ^ v134;
  LOBYTE(STACK[0x996]) = v128 ^ 0x34;
  LOBYTE(STACK[0x72E]) = v135 ^ 0x34;
  LOBYTE(STACK[0x887]) = v140 ^ 0x34;
  LOBYTE(STACK[0x9E0]) = v137 ^ 0x34;
  LOBYTE(STACK[0x749]) = v141 - ((2 * v141) & 0xE7) - 13;
  v142 = v140 - v137;
  v143 = v139 + v134;
  v144 = v137 ^ v135;
  LOBYTE(v135) = v143 + (v126 ^ 0xEE);
  v139 ^= 0x59u;
  v145 = v140 + (v136 ^ 0x46DC7F59);
  LOBYTE(STACK[0x9FB]) = v143 - ((2 * v143) & 0xE7) - 13;
  LOBYTE(STACK[0x793]) = v139 - ((2 * v139) & 0xE7) - 13;
  v146 = v144 ^ v145;
  v145 -= 217335541;
  v147 = v142 ^ 0x2568FC38;
  LOBYTE(STACK[0x8A2]) = v135 - ((2 * v135) & 0xE7) - 13;
  LOBYTE(STACK[0x778]) = v136 ^ 0x6D;
  v148 = v135 + v139;
  v149 = v143 ^ v141 ^ v148;
  LOBYTE(STACK[0x8D1]) = v146 ^ 0x34;
  v150 = v148 + 11;
  LOBYTE(STACK[0x8EC]) = v149 - ((2 * v149) & 0xE7) - 13;
  v151 = (v148 + 11) ^ (v143 - 30);
  v152 = v145 ^ (v137 - 951641630);
  LOBYTE(STACK[0xA2A]) = v142 ^ 0xC;
  v153 = v146 - v152;
  v154 = v126 ^ 0xD6;
  LOBYTE(STACK[0xA45]) = v154 - ((2 * v154) & 0xE7) - 13;
  v155 = v147 + v145;
  LOBYTE(STACK[0x7DD]) = v151 - ((2 * v151) & 0xE7) - 13;
  v156 = (v152 ^ 0xE195107B) - (v147 + v145);
  v157 = v156 & 0x8000000;
  LOBYTE(STACK[0x7C2]) = v152 ^ 0x34;
  LOBYTE(STACK[0x91B]) = v145 ^ 0x34;
  LOBYTE(STACK[0x936]) = v150 - ((2 * v150) & 0xE7) - 13;
  v158 = v149 - v151;
  v159 = v147 - 1431892761;
  v160 = STACK[0x4C8] & 0x1005309;
  v161 = v155 - 640345925;
  if ((v156 & 0x8000000 & v153) != 0)
  {
    v157 = -v157;
  }

  v162 = v150 + v154;
  v163 = (v157 + v153) ^ v156 & 0xF7FFFFFF;
  v164 = (v151 ^ 0x7B) - v162;
  LOBYTE(STACK[0xA74]) = (v157 + v153) ^ v156 ^ 0x34;
  v165 = v164 ^ v158;
  v166 = v162 - 69;
  LOBYTE(STACK[0xA8F]) = v165 - ((2 * v165) & 0xE7) - 13;
  v167 = (v161 ^ v159) - v156;
  LOBYTE(STACK[0xAD9]) = v166 - ((2 * v166) & 0xE7) - 13;
  LOBYTE(STACK[0x965]) = v156 ^ 0x34;
  v168 = v156 + (v161 ^ 0x543C7D45);
  v169 = v166 ^ (v154 - (((v160 ^ 9) + v160) | 0x10));
  LOBYTE(STACK[0x827]) = v169 + (~(2 * v169) | 0x19) - 12;
  v170 = v169 - v164;
  v171 = v163 + v167;
  v172 = v168 ^ v161 ^ 0x543C7D45;
  v173 = v165 - 37 + v170;
  LOBYTE(STACK[0xABE]) = v161 ^ 0x34;
  LOBYTE(STACK[0x980]) = v164 - ((2 * v164) & 0xE7) - 13;
  LOBYTE(STACK[0x80C]) = v161 ^ v159 ^ 0x34;
  v174 = (v171 + 39950555) ^ v167;
  v175 = v164 + (v166 ^ 0x45);
  v176 = v175 ^ v166 ^ 0x45;
  LOBYTE(STACK[0x9AF]) = (v171 - 37) ^ v167 ^ 0x34;
  v168 += 1235244956;
  v175 -= 100;
  LOBYTE(STACK[0x856]) = (v171 - 37) ^ 0x34;
  LOBYTE(STACK[0x8BB]) = v176 + (~(2 * v176) | 0x19) - 12;
  LOBYTE(STACK[0x747]) = v168 ^ 0x34;
  LOBYTE(STACK[0x762]) = v175 - ((2 * v175) & 0xE7) - 13;
  LOBYTE(v171) = v173 ^ v170;
  v177 = v175 + v176;
  v178 = v174 + v172 + v168;
  LOBYTE(STACK[0x871]) = v173 - ((2 * v173) & 0xE7) - 13;
  LOBYTE(STACK[0x9CA]) = (v173 ^ v170) - ((2 * (v173 ^ v170)) & 0xE7) - 13;
  v179 = (v176 ^ 0x9C) + 48;
  v180 = (v172 ^ 0xACBAD39C) - 660219088;
  v181 = v179 ^ v170;
  v182 = v180 ^ v167;
  LOBYTE(v171) = v171 + v177;
  LOBYTE(STACK[0x8A0]) = v172 ^ 0x34;
  v183 = v178 ^ (v172 + v168);
  LOBYTE(STACK[0x9F9]) = v182 ^ 0x34;
  v184 = v171 ^ v177;
  LOBYTE(v171) = v171 + 63;
  v185 = v182 - 2136490433 + v178;
  LOBYTE(STACK[0xA14]) = v181 - ((2 * v181) & 0xE7) - 13;
  LOBYTE(STACK[0x791]) = (v178 + 63) ^ 0x34;
  LOBYTE(STACK[0xA43]) = ((v172 ^ 0x9C) + 48) ^ 0x34;
  LOBYTE(STACK[0x905]) = v184 + (~(2 * v184) | 0x19) - 12;
  v186 = v184 ^ v181;
  LOBYTE(STACK[0x7AC]) = v171 - ((2 * v171) & 0xE7) - 13;
  v187 = v185 ^ v180;
  v188 = (v185 ^ v180) - 1083229416;
  v189 = v185 - v188;
  LOBYTE(v171) = v171 + v181;
  LOBYTE(STACK[0xA5E]) = v179 - ((2 * v179) & 0xE7) - 13;
  v190 = v182 + 1486567716 + v189;
  LOBYTE(STACK[0x8EA]) = v183 ^ 0x34;
  v191 = (v183 ^ v182) + 1662668881;
  v192 = (v171 ^ v179) + 24;
  LOBYTE(v171) = v171 - v192;
  LOBYTE(STACK[0x7DB]) = v190 ^ 0x34;
  LOBYTE(STACK[0x934]) = v189 ^ 0x34;
  v193 = ((2 * v181) & 0x48) + (v181 ^ 0x24) + v171;
  v194 = v189 + v191;
  LOBYTE(STACK[0x7F6]) = v193 - ((2 * v193) & 0xE7) - 13;
  v186 += 81;
  LOBYTE(STACK[0x94F]) = v171 - ((2 * v171) & 0xE7) - 13;
  LOBYTE(STACK[0x825]) = v188 ^ 0x34;
  LOBYTE(STACK[0xAA8]) = v186 - ((2 * v186) & 0xE7) - 13;
  LOBYTE(STACK[0xA8D]) = v191 ^ 0x34;
  v195 = v190 ^ (v189 + v191);
  v196 = v189 + 44792061;
  v197 = v195 ^ (v189 + 44792061);
  LOBYTE(STACK[0x840]) = v192 - ((2 * v192) & 0xE7) - 13;
  v198 = v171 + v186;
  v199 = v192 - v193;
  v200 = v198 ^ v193;
  v201 = v187 - v190 + 1973029423;
  LOBYTE(v171) = v171 - 3;
  v202 = v194 + v196;
  v203 = v171 + v198;
  v199 += 23;
  LOBYTE(v171) = v200 ^ v171;
  LOBYTE(STACK[0x97E]) = v195 ^ 0x50;
  LOBYTE(STACK[0x731]) = v171 - ((2 * v171) & 0xE7) - 13;
  LOBYTE(STACK[0x86F]) = v202 ^ 0x34;
  LOBYTE(STACK[0x88A]) = v203 + (~(2 * v203) | 0x19) - 12;
  LOBYTE(STACK[0x9E3]) = v199 - ((2 * v199) & 0xE7) - 13;
  v200 ^= 0x64u;
  LOBYTE(STACK[0x999]) = v200 - ((2 * v200) & 0xE7) - 13;
  LOBYTE(v190) = (v195 ^ 0x64) - 50;
  v204 = (v195 ^ 0x14132764) + 1311296718 + v201;
  LOBYTE(STACK[0x9C8]) = v201 ^ 0x34;
  LOBYTE(STACK[0xAD7]) = v197 ^ 0x34;
  LOBYTE(v201) = v200 - 50;
  v205 = ((v197 + 101452214) ^ 0xF9F3F64A) - v204 + ((2 * (v197 + 101452214)) & 0xF3E7EC94);
  v206 = v200 - 50 + v199;
  v207 = v202 - (v195 ^ 0x14132764) - v204;
  v208 = v204 - v205;
  v209 = ((v195 ^ 0x14132764) + 1311296718) ^ 0x6B57CBDE;
  v210 = v205 - v207 - 938888900;
  LOBYTE(v171) = v171 - v206;
  v211 = v203 - v200 + v206 - 2 * v206;
  v212 = v206 - v171;
  LOBYTE(STACK[0xA2D]) = v211 - ((2 * v211) & 0xE7) - 13;
  LOBYTE(v171) = v171 + 60;
  LOBYTE(STACK[0x8B9]) = (v205 + 60) ^ 0x34;
  v213 = v201 ^ 0xDE;
  LOBYTE(STACK[0x760]) = v190 ^ 0xEA;
  LOBYTE(STACK[0x8D4]) = v171 - ((2 * v171) & 0xE7) - 13;
  LOBYTE(STACK[0x77B]) = (v201 ^ 0xDE) - ((2 * (v201 ^ 0xDE)) & 0xE7) - 13;
  v214 = v210 ^ 0x8D1A1D5C;
  v215 = v171 - v211;
  v216 = v211 - 40;
  LOBYTE(STACK[0xA12]) = v207 ^ 0x34;
  v217 = v207 + 1463020248;
  LOBYTE(STACK[0x7C5]) = v212 + (~(2 * v212) | 0x19) - 12;
  v218 = (v210 ^ 0x5C) & 0xF7;
  LOBYTE(STACK[0x7AA]) = v208 ^ 0x34;
  v219 = v208 ^ 0x767DD0E3;
  v220 = v209 - v208 - (v208 ^ 0x767DD0E3);
  LODWORD(STACK[0x460]) = v130;
  if (v43 == LODWORD(STACK[0x588]))
  {
    v221 = v218 ^ 0xC7;
  }

  else
  {
    v221 = -9;
  }

  v222 = v215 ^ 0x5C;
  LOBYTE(STACK[0xA77]) = v222 - ((2 * v222) & 0xE7) - 13;
  v223 = v212 ^ 0xE3;
  v224 = v213 - v212 - (v212 ^ 0xE3);
  v225 = v223 ^ v216;
  v226 = v221 | v218;
  v227 = v219 - v214;
  LOBYTE(STACK[0x968]) = v223 - v222 - ((2 * (v223 - v222)) & 0xE7) - 13;
  LOBYTE(STACK[0xA5C]) = v210 ^ 0x68;
  v228 = v226 & ((v130 & 0xC7 ^ 0xC7) + (v130 & 0xC7));
  LOBYTE(STACK[0x91E]) = v224 - ((2 * v224) & 0xE7) - 13;
  v229 = v223 - v222 - v224;
  v230 = v219 ^ v217 ^ v214;
  LOBYTE(STACK[0x7F4]) = v219 ^ v217 ^ 0x34;
  v231 = v222 ^ v225;
  v232 = (v219 ^ v217) + 16;
  v233 = v220 - (v219 ^ v217) - v230;
  LOBYTE(STACK[0x80F]) = v225 - ((2 * v225) & 0xE7) - 13;
  LOBYTE(STACK[0x94D]) = v227 ^ 0x34;
  v234 = v224 - v225 - v231;
  v235 = v225 + 16;
  v236 = (v227 - v220) ^ v232;
  LOBYTE(STACK[0x903]) = (v228 ^ v220) + (~(2 * (v228 ^ v220)) | 0x19) - 12;
  LOBYTE(STACK[0xAC1]) = v234 + (~(2 * v234) | 0x19) - 12;
  v237 = v236 ^ 0xB5;
  if (v233 == 7642611)
  {
    v237 = 8;
  }

  LOBYTE(STACK[0xAA6]) = v233 ^ 0x34;
  v238 = v230 + (v237 & v236 | ~v236 & 8 | 0x42);
  v239 = v231 - 85;
  v240 = v229 ^ v235;
  LOBYTE(STACK[0x997]) = v232 ^ 0xE6;
  LOBYTE(STACK[0x74A]) = v240 - ((2 * v240) & 0xE7) - 13;
  v241 = v230 - 85;
  LOBYTE(STACK[0x83E]) = (v238 + 97) ^ 0x34;
  v242 = v240 - v239;
  LOBYTE(STACK[0x859]) = v239 - ((2 * v239) & 0xE7) - 13;
  v243 = v236 - v241;
  v244 = v233 ^ v241;
  v245 = v235 ^ 0xD2;
  v246 = v232 ^ 0xD2 ^ (v236 - v241);
  v247 = (v236 - v241) ^ v233;
  LOBYTE(STACK[0x9B2]) = v245 - ((2 * v245) & 0xE7) - 13;
  v248 = v239 ^ v234;
  v249 = (v242 ^ v234) + 53;
  v250 = v242 ^ v245;
  LOBYTE(STACK[0x72F]) = (v236 ^ 0xC7) - ((2 * (v236 ^ 0xC7)) & 0xE7) - 13;
  v251 = v248 + 23;
  LOBYTE(STACK[0x8A3]) = v249 - ((2 * v249) & 0xE7) - 13;
  v252 = v249 - (v242 - 29);
  LOBYTE(STACK[0x8ED]) = v242 - 29 - ((2 * (v242 - 29)) & 0xE7) - 13;
  LOBYTE(STACK[0x888]) = (v247 + 53) ^ 0x34;
  v253 = (v250 + 15) & 0x1F ^ 0xAD;
  v254 = (v250 + 15) ^ 0x44;
  LOBYTE(STACK[0x794]) = (v250 + 15) ^ (2 * (v254 & (2 * (v254 & (2 * (v254 & (2 * (v254 & (2 * (v254 & (2 * (((2 * (v250 + 15)) & 0xA ^ 0x5A) & (v250 + 15) ^ v253)) ^ v253)) ^ v253)) ^ v253)) ^ v253)) ^ v253)) ^ 0xEC;
  LOBYTE(STACK[0x9E1]) = (v244 + 23) ^ 0x34;
  LOBYTE(STACK[0x9FC]) = v248 + 23 + (~(2 * (v248 + 23)) | 0x19) - 12;
  LOBYTE(STACK[0x779]) = (v246 - 44) ^ 0x34;
  v255 = v247 - v243 + 82;
  LOBYTE(STACK[0x8D2]) = (v243 - 29) ^ 0x34;
  v256 = (v243 - 127) ^ (v244 + 23);
  v257 = v246 + 34 - (v256 ^ 0x6B);
  v258 = v251 ^ 0x6B ^ (v242 - 127);
  v259 = v250 + 34 - v258;
  LOBYTE(STACK[0x7DE]) = v258 - ((2 * v258) & 0xE7) - 13;
  LOBYTE(STACK[0xA2B]) = (v255 - v257) ^ 0x34;
  LOBYTE(STACK[0x937]) = v259 - ((2 * v259) & 0xE7) - 13;
  v260 = (v256 ^ 0x6B) + v243 + 60;
  LOBYTE(STACK[0x7C3]) = v256 ^ 0x5F;
  LOBYTE(STACK[0xA46]) = v252 - v259 + (~(2 * (v252 - v259)) | 0x19) - 12;
  LOBYTE(STACK[0x91C]) = v257 ^ 0x34;
  v261 = (v243 + 60) ^ 0x34;
  v243 += 106;
  LOBYTE(STACK[0xA75]) = v261;
  LOBYTE(STACK[0xA90]) = v242 + 60 - ((2 * (v242 + 60)) & 0xE7) - 13;
  v262 = v258 + v242 + 60;
  v263 = v257 ^ v243;
  v264 = v243 - v263;
  v242 += 106;
  v265 = v263 ^ v255;
  v266 = v264 ^ v255;
  v267 = v259 ^ v242;
  LOBYTE(STACK[0x80D]) = v266 ^ 0x34;
  v268 = v242 - v267;
  v269 = v267 ^ v252;
  v270 = v268 ^ v252;
  LOBYTE(STACK[0x828]) = v270 - ((2 * v270) & 0xE7) - 13;
  LOBYTE(STACK[0x981]) = v262 ^ 0x7B;
  LOBYTE(STACK[0x966]) = v260 ^ 0xBC;
  LOBYTE(STACK[0xABF]) = v265 ^ 0x34;
  v265 -= 85;
  LOBYTE(STACK[0xADA]) = v269 - ((2 * v269) & 0xE7) - 13;
  LOBYTE(STACK[0x872]) = v268 - ((2 * v268) & 0xE7) - 13;
  v269 -= 85;
  v271 = v270 - v269;
  v272 = (v262 ^ 0x60 ^ v268) - v271;
  LOBYTE(STACK[0x857]) = v264 ^ 0x34;
  v273 = (v260 ^ 0x60 ^ v264) - (v266 - v265);
  LOBYTE(STACK[0x9B0]) = (v266 - v265 + 81) ^ 0x34;
  v262 ^= 0xAAu;
  v274 = v269 - v272;
  LOBYTE(STACK[0x763]) = v262 - ((2 * v262) & 0xE7) - 13;
  v275 = (v271 - 101) & 0x74 ^ 0x63;
  v276 = (v271 - 101) ^ 0x36;
  LOBYTE(STACK[0x9CB]) = (v271 - 101) ^ (2 * (v276 & (2 * (v276 & (2 * (v276 & (2 * (v276 & (2 * (((2 * (v275 ^ (v271 - 101) & 0x42)) ^ 4) & v276 ^ v275)) ^ v275)) ^ v275)) ^ v275)) ^ v275)) ^ 0x87;
  LOBYTE(STACK[0x748]) = v260 ^ 0x9E;
  LOBYTE(STACK[0x8BC]) = v274 - ((2 * v274) & 0xE7) - 13;
  LOBYTE(STACK[0x8A1]) = (v265 - v273) ^ 0x34;
  LOBYTE(STACK[0xA15]) = v272 - ((2 * v272) & 0xE7) - 13;
  LOBYTE(STACK[0x7AD]) = v271 - 32 + (v274 ^ 0xFA) - ((2 * (v271 - 32 + (v274 ^ 0xFA))) & 0xE7) - 13;
  LOBYTE(STACK[0x7F7]) = (v272 ^ v262) + 95 - ((2 * ((v272 ^ v262) + 95)) & 0xE7) - 13;
  LOBYTE(STACK[0x9FA]) = v273 ^ 0x34;
  LOBYTE(STACK[0xA5F]) = (v274 ^ 0xFA) - 110 - ((2 * ((v274 ^ 0xFA) - 110)) & 0xE7) - 13;
  LOBYTE(STACK[0x8EB]) = ((v260 ^ 0xAA) + 28) ^ 0x34;
  LOBYTE(STACK[0xA44]) = (((v265 - v273) ^ 0xFA) - 110) ^ 0x34;
  LOBYTE(STACK[0x906]) = v262 + 28 - ((2 * (v262 + 28)) & 0xE7) - 13;
  LOBYTE(STACK[0x792]) = (v266 - v265 - 32 + ((v265 - v273) ^ 0xFA)) ^ 0x34;
  LOBYTE(STACK[0x7DC]) = ((v273 ^ v260 ^ 0xAA) + 95) ^ 0x34;
  LODWORD(STACK[0x454]) += LODWORD(STACK[0x590]);
  LODWORD(STACK[0x470]) += LODWORD(STACK[0x58C]);
  return (*(STACK[0x598] + 8 * (LODWORD(STACK[0x310]) ^ (3715 * v133))))();
}

uint64_t sub_100042148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int a19, unsigned int a20, uint64_t a21, char *a22, unsigned int a23, unsigned int a24)
{
  v28 = ((2 * (&a19 & 0x171C0A88) - &a19 - 387713678) ^ 0xB08A2610) * v27;
  a21 = a16;
  a22 = &a17;
  a20 = v28 - 136092114;
  a23 = -654855621 - v28;
  a24 = v28 + v26 + 1674574757;
  v29 = (*(v24 + 8 * (v26 ^ 0x348D)))(&a19);
  return (*(v24 + 8 * ((31 * (a19 == ((v26 - 1223) ^ 0x4F1 ^ (v25 + 1841)))) ^ v26)))(v29);
}

uint64_t sub_100042208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 + 418) - 3138) ^ v3) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((5048 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_100042294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20)
{
  v23 = v20 ^ 0x17D3;
  a18 = (v23 - 1180) ^ (33731311 * ((&a17 - 1688564590 - 2 * (&a17 & 0x9B5A8C92)) ^ 0xA2AC46B1));
  a19 = a14;
  a20 = &a13;
  (*(v22 + 8 * (v23 ^ 0x3451)))(&a17);
  a19 = a14;
  LODWORD(a20) = v23 - 2008441969 * ((((2 * &a17) | 0x808FE292) - &a17 - 1078456649) ^ 0x8DEA547) + 1253;
  v24 = (*(v22 + 8 * (v23 + 5219)))(&a17);
  return (*(v22 + 8 * (((a17 == v21) * ((v23 + 483) ^ 0x217A)) ^ v23)))(v24);
}

uint64_t sub_10004238C()
{
  v11 = *v0;
  v12 = (2 * *v0) & 0xC0A4457886BED430;
  v13 = (((v8 | 0x9F89969FD3432D9ELL) - v8 + (v8 & 0x607669602CBCD260)) ^ 0xCC9BA704B0EA6BE6) * v5;
  *(v10 - 104) = v6 - v13 + v2;
  *(v10 - 120) = v7;
  *(v10 - 112) = v13 + v4 + v11 - v12;
  v14 = (*(v1 + 8 * v9))(v10 - 120);
  return (*(v1 + 8 * ((8722 * (*(v10 - 100) == v3)) ^ v2)))(v14);
}

void sub_10004243C(uint64_t a1)
{
  v1 = *(a1 + 12) - 956911519 * ((((2 * a1) | 0xF065BBFC) - a1 - 2016599550) ^ 0x92A3ADFB);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_100042548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, unsigned int a15)
{
  a14 = a12;
  a15 = (v15 + 3198) ^ (1824088897 * ((((2 * &a13) | 0x1A25E81C) - &a13 + 1928137714) ^ 0xD57B276C));
  v17 = (*(v16 + 8 * (v15 ^ 0x3190)))(&a13);
  return sub_1000425B4(v17);
}

uint64_t sub_1000425B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, unsigned int a15)
{
  a14 = a10;
  a15 = (v17 + 6171) ^ (((&a13 & 0xA595133C | ~(&a13 | 0xA595133C)) ^ 0x2033FA1) * v15);
  v18 = (*(v16 + 8 * (v17 + 7437)))(&a13);
  return sub_100042614(v18);
}

uint64_t sub_100042668()
{
  STACK[0xAA8] = v1;
  v3 = STACK[0x7D0];
  STACK[0xAB0] = STACK[0x7D0];
  return (*(v2 + 8 * (((v1 - v3 > 9) * (((v0 - 8431) | 0x194) + 379)) ^ v0)))();
}

uint64_t sub_1000426AC@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = *(*a3 + (v4 - 1374807825)) ^ 0x3C;
  v7 = ((*(*a3 + (v4 - 1374807827)) ^ 0x3C) << (v5 & 0x7F ^ 0x4B)) + ((*(*a3 + (v4 - 1374807828)) ^ 0x3C) << 24) + ((*(*a3 + v4 - 1374809417 + 37 * (v5 & 0x610CBE7F ^ 0x1C70u)) ^ 0x3C) << 8) + v6;
  return (*(v3 + 8 * ((60 * (((v7 - 2 * (v7 & 0x11AB605A ^ v6 & 8) - 1851039662) & 0xFFFFFF ^ 0xAB6052) - (a2 + *(a1 + 32)) != -1585842996)) ^ v5 & 0x610CBE7Fu)))();
}

void sub_1000427F0()
{
  v0 = __chkstk_darwin();
  v1 = *(v0 + 44) ^ (956911519 * ((2 * (v0 & 0x7D96F6F4) - v0 - 2107045621) ^ 0x68F8790E));
  v2 = *(v0 + 24);
  v3 = *(v0 + 32) ^ (956911519 * ((2 * (v0 & 0x7D96F6F4) - v0 - 2107045621) ^ 0x68F8790E));
  v4 = *(&off_100755B60 + (v1 ^ 0xB0F)) - 8;
  (*&v4[8 * (v1 ^ 0x2F98)])(v7, 0, 296);
  if (v2)
  {
    v5 = v3 == 16150012;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100042988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = (v5 ^ v3) + v4;
  *(a1 + v8) = *(a2 + v8);
  return (*(v7 + 8 * (((v8 != 0) * v6) ^ v2)))();
}

uint64_t sub_1000429B0@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 ^ 0x3BB7)))();
  *(v1 + 24) = 0;
  return sub_1000B1718();
}

uint64_t sub_100042B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, int a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v73 = (*(v72 + 8 * ((a72 - 1425) ^ 0x3798)))(LODWORD(STACK[0x544]) ^ 0xBC59953u, 0x100004077774924);
  STACK[0xAB8] = v73;
  if (v73)
  {
    a53 = 16257999;
  }

  LODWORD(STACK[0xAC4]) = a53;
  return (*(v72 + 8 * (((v73 == 0) * (((a72 - 5541) ^ 0xFFFFE632) + ((a72 - 1425) ^ 0xE77))) ^ (a72 - 1425))))();
}

uint64_t sub_100042BE8@<X0>(uint64_t a1@<X8>)
{
  STACK[0x680] = 0;
  STACK[0x7B0] = 0;
  STACK[0x500] = *(v2 + 8 * v1);
  return sub_1000D57DC(a1);
}

uint64_t sub_100042C14@<X0>(uint64_t a1@<X8>)
{
  STACK[0x718] = 0;
  STACK[0x3F0] = 0;
  STACK[0x500] = *(v2 + 8 * v1);
  return sub_1000D57DC(a1);
}

uint64_t sub_100042D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v72 = STACK[0x360];
  if (LODWORD(STACK[0x360]) == 17168)
  {
    return (*(a72 + 8 * (LODWORD(STACK[0x2E0]) ^ (4596 * (LODWORD(STACK[0x300]) == LODWORD(STACK[0x370]))))))();
  }

  if (v72 == 20706)
  {
    return (*(a72 + 8 * (((LODWORD(STACK[0xA10]) == 197499227) * ((a71 - 1545756269) & 0x5C2247FF ^ 0xA58)) ^ (a71 - 4372))))();
  }

  if (v72 != 33980)
  {
    return (*(a72 + 8 * (((*(STACK[0x7C0] + 24) == 0) * ((a71 ^ 0xFFFFECE1) + a71 - 4831)) ^ (a71 - 3720))))();
  }

  v74 = LODWORD(STACK[0xA20]) - ((2 * LODWORD(STACK[0xA20])) & 0xDCE86D8E) + a71 - 294379772 == -294373689;
  return (*(a72 + 8 * (((4 * v74) | (32 * v74)) ^ (a71 + 1800))))();
}

uint64_t sub_10004306C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v3 = a2 + 2984;
  v4 = (*(v2 + 8 * (a2 + 3139)))(a1, 3466631855) == 0;
  return (*(v2 + 8 * ((50 * ((v4 ^ (v3 + 10)) & 1)) ^ v3)))();
}

uint64_t sub_100043264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = 476323082 - 1710126949 * ((2 * ((&a15 ^ 0xDF91B755) & 0x19502C5D) - (&a15 ^ 0xDF91B755) + 1722799010) ^ 0x8B253F67);
  v17 = (*(v16 + 77088))(&a15);
  return (*(v16 + 8 * ((99 * (((a16 == 16257999) ^ 0xA5) & 1)) ^ 0x1BB8u)))(v17);
}

uint64_t sub_100043330@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x1C;
  v3 = (2 * (a1 ^ 0x1C)) ^ 0x28B2;
  STACK[0xAB8] = v1;
  v4 = STACK[0x5E8];
  STACK[0xAC0] = STACK[0x5E8];
  return (*(STACK[0x400] + 8 * (((v1 - v4 > 9) * (v3 ^ (v2 + 10284))) ^ v2)))();
}

uint64_t sub_100043378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7)
{
  v12 = v8 + 8;
  v13 = (v12 ^ a6 ^ ((v10 + 661) | a5)) + v7;
  *(a3 + v13) = *(v9 + v13);
  return (*(v11 + 8 * (((a4 == v12) * a7) ^ v10)))();
}

uint64_t sub_10004341C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, int a13, char a14, uint64_t a15, char a16, int a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, char *a23)
{
  a23 = &a14;
  a22 = (v24 + 1305603437) ^ (1358806181 * ((&a18 & 0x6E63D813 | ~(&a18 | 0x6E63D813)) ^ 0xAEB34B6F));
  a20 = a15;
  a21 = &a16;
  (*(v23 + 8 * (v24 + 4986)))(&a18);
  a19 = (v24 - 1468) ^ (33731311 * ((&a18 - 1528811583 - 2 * (&a18 & 0xA4E02FC1)) ^ 0x9D16E5E2));
  a20 = a15;
  a21 = &a11;
  (*(v23 + 8 * ((v24 - 1274) ^ 0x2837)))(&a18);
  LODWORD(a21) = v24 - 1274 - 2008441969 * ((((2 * &a18) | 0x85ACE902) - &a18 + 1026132863) ^ 0x8A4F208F) + 2239;
  a20 = a15;
  v25 = (*(v23 + 8 * (v24 + 4931)))(&a18);
  return (*(v23 + 8 * (((a18 == 16257999) * (((v24 - 574) | 0x245) - 4545)) ^ (v24 - 1274))))(v25);
}

uint64_t sub_100043594@<X0>(int a1@<W3>, unint64_t a2@<X8>)
{
  v7 = LOWORD(STACK[0x9DE]);
  if (v7 == 17168)
  {
LABEL_4:
    STACK[0x4B8] = a2;
    LODWORD(STACK[0x7EC]) = v3;
    a1 = v5 - 338;
    goto LABEL_6;
  }

  if (v7 != 33980)
  {
    if (v7 != 20706)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  v8 = STACK[0x778];
  STACK[0x4B8] = a2;
  LODWORD(STACK[0x7EC]) = v3;
  STACK[0x718] = v8 + v2;
  a1 = 16257999;
LABEL_6:
  if (a1 == 16215947)
  {
    return (*(v6 + 8 * (((((*(STACK[0x6F0] + 97) == 65) ^ (v4 + 1)) & 1) * (v4 ^ 0x247F)) ^ (v4 - 4726))))();
  }

  if (a1 == 16257999)
  {
    v9 = *(STACK[0x6F0] + 20);
    if (v9 == 1)
    {
      LODWORD(STACK[0x3C0]) = (v4 - 7187) | 0x350;
      LODWORD(STACK[0x390]) = v4 - 6992;
      LODWORD(STACK[0x3D0]) = 952 * (v4 ^ 0x2426);
      LODWORD(STACK[0x3A0]) = v4 - 8200;
      LODWORD(STACK[0x3B0]) = v4 - 8169;
      return sub_100137390();
    }

    else
    {
      v10 = v5 - 26;
      LODWORD(v11) = v4;
      if (!v9)
      {
        if (*(STACK[0x6F0] + 97) == 65)
        {
          v10 = 16215797;
        }

        v11 = STACK[0x3F8];
      }

      LODWORD(STACK[0x794]) = v10;
      STACK[0x868] = STACK[0x6F0];
      STACK[0x610] = *(v6 + 8 * (v11 - 8474));
      return sub_1000FA3B4((v11 - 8474) ^ 0x2352);
    }
  }

  else
  {
    LODWORD(STACK[0x794]) = a1;
    return (*(v6 + 8 * (v4 - 3932)))();
  }
}

uint64_t sub_10004395C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, char a14, int a15, int a16, char a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, char *a23)
{
  v26 = v23 + 1369;
  a19 = (v26 - 492) ^ (33731311 * ((2 * (&a18 & 0x683AF510) - &a18 + 398789358) ^ 0x2E33C0CD));
  a20 = a10;
  a21 = &a17;
  (*(v24 + 8 * (v26 ^ 0x2BE1)))(&a18);
  a22 = (v26 - 386) ^ (1710126949 * ((&a18 & 0x647C2756 | ~(&a18 | 0x647C2756)) ^ 0xA9988339));
  a23 = &a14;
  a20 = a10;
  a21 = &a12;
  (*(v24 + 8 * (v26 + 5863)))(&a18);
  a20 = a10;
  LODWORD(a21) = v26 - 2008441969 * ((&a18 & 0x95A0649 | ~(&a18 | 0x95A0649)) ^ 0xBE3CADB8) + 1941;
  v27 = (*(v24 + 8 * (v26 ^ 0x2B13)))(&a18);
  return (*(v24 + 8 * (((a18 == v25) * ((v26 + 1582157663) & 0x2BDC ^ 0x812)) ^ v26)))(v27);
}

uint64_t sub_100043B18@<X0>(uint64_t a1@<X6>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int64x2_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int8x16_t a58, uint64_t a59, uint64_t a60, int8x16_t a61)
{
  v76 = a2 - 16;
  v77.i64[0] = v76 + a1 + 7;
  v77.i64[1] = v76 + a1 + v66;
  v78 = v77;
  *&STACK[0x2B0] = v77;
  v79.i64[0] = v76 + a1 + 9;
  v79.i64[1] = v76 + a1 + 8;
  v80.i64[0] = v76 + a1 + 5;
  v80.i64[1] = v76 + a1 + 4;
  v81.i64[0] = v76 + a1 + 3;
  v81.i64[1] = v76 + a1 + 2;
  v77.i64[0] = v76 + a1 + 1;
  v77.i64[1] = v76 + a1;
  *&STACK[0x310] = v77;
  v77.i64[0] = v76 + a1 - 1;
  v77.i64[1] = v76 + a1 - 2;
  *&STACK[0x300] = v77;
  v82 = vandq_s8(v81, *&STACK[0x2F0]);
  v83 = vandq_s8(v80, *&STACK[0x2F0]);
  v84 = vandq_s8(v79, *&STACK[0x2F0]);
  v85 = vandq_s8(v78, *&STACK[0x2F0]);
  v86 = vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL);
  v87 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v88 = *&STACK[0x280];
  v89 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), *&STACK[0x280]);
  v90 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), *&STACK[0x280]);
  v91 = veorq_s8(v90, *&STACK[0x270]);
  v92 = veorq_s8(v89, *&STACK[0x270]);
  v93 = *&STACK[0x270];
  v94 = *&STACK[0x260];
  v95 = veorq_s8(v89, *&STACK[0x260]);
  v96 = veorq_s8(v90, *&STACK[0x260]);
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v95), v68);
  v98 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v96), v68);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v100 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v101 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v100);
  v103 = vaddq_s64(v101, v99);
  v105 = *&STACK[0x230];
  v104 = *&STACK[0x240];
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v103, v103), *&STACK[0x240]), v103), *&STACK[0x230]), v69);
  v107 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v102, v102), *&STACK[0x240]), v102), *&STACK[0x230]), v69);
  v108 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v109 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v110 = veorq_s8(v106, v108);
  v111 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v110);
  v113 = vaddq_s64(v111, v109);
  v115 = *&STACK[0x200];
  v114 = *&STACK[0x210];
  v116 = veorq_s8(vaddq_s64(vsubq_s64(v113, vandq_s8(vaddq_s64(v113, v113), *&STACK[0x210])), *&STACK[0x200]), v73);
  v117 = veorq_s8(vaddq_s64(vsubq_s64(v112, vandq_s8(vaddq_s64(v112, v112), *&STACK[0x210])), *&STACK[0x200]), v73);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v119 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v120 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v119);
  v122 = veorq_s8(vaddq_s64(v120, v118), a61);
  v123 = veorq_s8(v121, a61);
  v124 = vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL);
  v125 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v126 = veorq_s8(v122, v124);
  v127 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v128 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v126);
  v129 = vaddq_s64(v127, v125);
  v130 = *&STACK[0x2E0];
  v131 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v128, *&STACK[0x2E0]), vorrq_s8(v128, v72)), v72), v67);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v129, *&STACK[0x2E0]), vorrq_s8(v129, v72)), v72), v67);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v134 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v135 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133), v71);
  v136 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL), v134), v71);
  v137 = vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL);
  v138.i64[0] = v76 + a1 - 3;
  v138.i64[1] = v76 + a1 - 4;
  *&STACK[0x2A0] = v138;
  v139 = vaddq_s64(v87, v88);
  v140 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL))), a58);
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), veorq_s8(v135, v137)), a58);
  v236.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v141, v74), vorrq_s8(v141, a51)), a51), v70), vnegq_s64(vandq_s8(vshlq_n_s64(v81, 3uLL), v75)));
  v236.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v140, v74), vorrq_s8(v140, a51)), a51), v70), vnegq_s64(vandq_s8(vshlq_n_s64(v80, 3uLL), v75)));
  v142 = v93;
  v143 = veorq_s8(v139, v93);
  v144 = veorq_s8(v139, v94);
  v145 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144), v68);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v146);
  v148 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v147, v147), v104), v147), v105), v69);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149);
  v151 = veorq_s8(vaddq_s64(vsubq_s64(v150, vandq_s8(vaddq_s64(v150, v150), v114)), v115), v73);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL));
  v153 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152), a61);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154);
  v156 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v155, v130), vorrq_s8(v155, v72)), v72), v67);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), v71);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v157.i64[0] = v76 + a1 - 5;
  v157.i64[1] = v76 + a1 - 6;
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159), a58);
  v161 = vandq_s8(v157, *&STACK[0x2F0]);
  v162 = vaddq_s64(v86, v88);
  v236.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v160, v74), vorrq_s8(v160, a51)), a51), v70), vnegq_s64(vandq_s8(vshlq_n_s64(v79, 3uLL), v75)));
  v163 = veorq_s8(v162, v93);
  v164 = veorq_s8(v162, v94);
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), v68);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), v104), v167), v105), v69);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(vaddq_s64(vsubq_s64(v170, vandq_s8(vaddq_s64(v170, v170), v114)), v115), v73);
  v172 = veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v173 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), v172), a61);
  v174 = veorq_s8(v173, vsraq_n_u64(vshlq_n_s64(v172, 3uLL), v172, 0x3DuLL));
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v173, 0x38uLL), v173, 8uLL), v174);
  v176 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v175, v130), vorrq_s8(v175, v72)), v72), v67);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v174, 3uLL), v174, 0x3DuLL));
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177), v71);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v180 = vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL);
  v181 = vandq_s8(v138, *&STACK[0x2F0]);
  v182 = veorq_s8(vaddq_s64(v180, v179), a58);
  v183 = vandq_s8(*&STACK[0x300], *&STACK[0x2F0]);
  v236.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v182, v74), vorrq_s8(v182, a51)), a51), v70), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2B0], 3uLL), v75)));
  v184 = vandq_s8(*&STACK[0x310], *&STACK[0x2F0]);
  v185 = vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL);
  v186 = vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL);
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v88);
  v188 = vaddq_s64(v186, v88);
  v186.i64[0] = vqtbl4q_s8(v236, *&STACK[0x2C0]).u64[0];
  v236.val[0] = veorq_s8(v188, v142);
  v236.val[1] = veorq_s8(v187, v142);
  v236.val[2] = veorq_s8(v187, v94);
  v236.val[3] = veorq_s8(v188, v94);
  v236.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[1], 0x38uLL), v236.val[1], 8uLL), v236.val[2]), v68);
  v236.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL), v236.val[3]), v68);
  v189 = vsraq_n_u64(vshlq_n_s64(v236.val[2], 3uLL), v236.val[2], 0x3DuLL);
  v236.val[2] = veorq_s8(v236.val[0], vsraq_n_u64(vshlq_n_s64(v236.val[3], 3uLL), v236.val[3], 0x3DuLL));
  v236.val[3] = veorq_s8(v236.val[1], v189);
  v190 = vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL);
  v236.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[1], 0x38uLL), v236.val[1], 8uLL), v236.val[3]);
  v236.val[1] = vaddq_s64(v190, v236.val[2]);
  v236.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v236.val[1], v236.val[1]), v104), v236.val[1]), v105), v69);
  v236.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v236.val[0], v236.val[0]), v104), v236.val[0]), v105), v69);
  v191 = vsraq_n_u64(vshlq_n_s64(v236.val[2], 3uLL), v236.val[2], 0x3DuLL);
  v236.val[2] = veorq_s8(v236.val[0], vsraq_n_u64(vshlq_n_s64(v236.val[3], 3uLL), v236.val[3], 0x3DuLL));
  v236.val[3] = veorq_s8(v236.val[1], v191);
  v192 = vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL);
  v236.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[1], 0x38uLL), v236.val[1], 8uLL), v236.val[3]);
  v236.val[1] = vaddq_s64(v192, v236.val[2]);
  v236.val[1] = veorq_s8(vaddq_s64(vsubq_s64(v236.val[1], vandq_s8(vaddq_s64(v236.val[1], v236.val[1]), v114)), v115), v73);
  v236.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v236.val[0], vandq_s8(vaddq_s64(v236.val[0], v236.val[0]), v114)), v115), v73);
  v193 = vsraq_n_u64(vshlq_n_s64(v236.val[2], 3uLL), v236.val[2], 0x3DuLL);
  v236.val[2] = veorq_s8(v236.val[0], vsraq_n_u64(vshlq_n_s64(v236.val[3], 3uLL), v236.val[3], 0x3DuLL));
  v236.val[3] = veorq_s8(v236.val[1], v193);
  v194 = vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL);
  v236.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[1], 0x38uLL), v236.val[1], 8uLL), v236.val[3]);
  v236.val[1] = veorq_s8(vaddq_s64(v194, v236.val[2]), a61);
  v236.val[0] = veorq_s8(v236.val[0], a61);
  v195 = vsraq_n_u64(vshlq_n_s64(v236.val[2], 3uLL), v236.val[2], 0x3DuLL);
  v236.val[2] = veorq_s8(v236.val[0], vsraq_n_u64(vshlq_n_s64(v236.val[3], 3uLL), v236.val[3], 0x3DuLL));
  v236.val[3] = veorq_s8(v236.val[1], v195);
  v196 = vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL);
  v236.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[1], 0x38uLL), v236.val[1], 8uLL), v236.val[3]);
  v236.val[1] = vaddq_s64(v196, v236.val[2]);
  v236.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v236.val[0], *&STACK[0x2E0]), vorrq_s8(v236.val[0], v72)), v72), *&STACK[0x2D0]);
  v236.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v236.val[1], *&STACK[0x2E0]), vorrq_s8(v236.val[1], v72)), v72), *&STACK[0x2D0]);
  v236.val[2] = veorq_s8(v236.val[1], vsraq_n_u64(vshlq_n_s64(v236.val[2], 3uLL), v236.val[2], 0x3DuLL));
  v236.val[3] = veorq_s8(v236.val[0], vsraq_n_u64(vshlq_n_s64(v236.val[3], 3uLL), v236.val[3], 0x3DuLL));
  v236.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[1], 0x38uLL), v236.val[1], 8uLL), v236.val[2]), v71);
  v236.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL), v236.val[3]), v71);
  v197 = vsraq_n_u64(vshlq_n_s64(v236.val[2], 3uLL), v236.val[2], 0x3DuLL);
  v236.val[2] = veorq_s8(v236.val[0], vsraq_n_u64(vshlq_n_s64(v236.val[3], 3uLL), v236.val[3], 0x3DuLL));
  v236.val[3] = veorq_s8(v236.val[1], v197);
  v198 = vsraq_n_u64(vshlq_n_s64(v236.val[0], 0x38uLL), v236.val[0], 8uLL);
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v88);
  v236.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236.val[1], 0x38uLL), v236.val[1], 8uLL), v236.val[3]);
  v236.val[1] = veorq_s8(vaddq_s64(v198, v236.val[2]), a58);
  v236.val[0] = veorq_s8(v236.val[0], a58);
  v236.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v236.val[0], v74), vorrq_s8(v236.val[0], a51)), a51), v70), vnegq_s64(vandq_s8(vshlq_n_s64(v157, 3uLL), v75)));
  v236.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v236.val[1], v74), vorrq_s8(v236.val[1], a51)), a51), v70), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x2A0], 3uLL), v75)));
  v200 = veorq_s8(v199, v142);
  v201 = veorq_s8(v199, v94);
  v202 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL), v201), v68);
  v203 = veorq_s8(v202, vsraq_n_u64(vshlq_n_s64(v201, 3uLL), v201, 0x3DuLL));
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v202, 0x38uLL), v202, 8uLL), v203);
  v205 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v204, v204), v104), v204), v105), v69);
  v206 = veorq_s8(v205, vsraq_n_u64(vshlq_n_s64(v203, 3uLL), v203, 0x3DuLL));
  v207 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v205, 0x38uLL), v205, 8uLL), v206);
  v208 = veorq_s8(vaddq_s64(vsubq_s64(v207, vandq_s8(vaddq_s64(v207, v207), v114)), v115), v73);
  v209 = veorq_s8(v208, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v210 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v208, 0x38uLL), v208, 8uLL), v209), a61);
  v211 = veorq_s8(v210, vsraq_n_u64(vshlq_n_s64(v209, 3uLL), v209, 0x3DuLL));
  v212 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v210, 0x38uLL), v210, 8uLL), v211);
  v213 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v212, *&STACK[0x2E0]), vorrq_s8(v212, v72)), v72), *&STACK[0x2D0]);
  v214 = veorq_s8(v213, vsraq_n_u64(vshlq_n_s64(v211, 3uLL), v211, 0x3DuLL));
  v215 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v214), v71);
  v216 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v214, 3uLL), v214, 0x3DuLL))), a58);
  v217 = vaddq_s64(v185, v88);
  v236.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v216, v74), vorrq_s8(v216, a51)), a51), v70), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x300], 3uLL), v75)));
  v218 = veorq_s8(v217, v142);
  v219 = veorq_s8(v217, v94);
  v220 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), v219), v68);
  v221 = veorq_s8(v220, vsraq_n_u64(vshlq_n_s64(v219, 3uLL), v219, 0x3DuLL));
  v222 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v220, 0x38uLL), v220, 8uLL), v221);
  v223 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v222, v222), v104), v222), v105), v69);
  v224 = veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v221, 3uLL), v221, 0x3DuLL));
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224);
  v226 = veorq_s8(vaddq_s64(vsubq_s64(v225, vandq_s8(vaddq_s64(v225, v225), v114)), v115), v73);
  v227 = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v228 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL), v227), a61);
  v229 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v227, 3uLL), v227, 0x3DuLL));
  v230 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229);
  v231 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v230, *&STACK[0x2E0]), vorrq_s8(v230, v72)), v72), *&STACK[0x2D0]);
  v232 = veorq_s8(v231, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v233 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v231, 0x38uLL), v231, 8uLL), v232), v71);
  v234 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v233, 0x38uLL), v233, 8uLL), veorq_s8(v233, vsraq_n_u64(vshlq_n_s64(v232, 3uLL), v232, 0x3DuLL))), a58);
  v236.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v234, v74), vorrq_s8(v234, a51)), a51), v70), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x310], 3uLL), v75)));
  v186.i64[1] = vqtbl4q_s8(v236, *&STACK[0x2C0]).u64[0];
  v236.val[0] = vrev64q_s8(*(v65 - 16 + a1));
  v236.val[1].i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v236.val[1].i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v236.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v236.val[0], v236.val[0], 8uLL), v236.val[1]), v186));
  *v157.i64[1] = vextq_s8(v236.val[0], v236.val[0], 8uLL);
  return (*(v61 + 8 * (((v64 != 16) * v62) ^ v63)))();
}

uint64_t sub_100043C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14)
{
  *(v16 + 24) = 107;
  *(v16 + 40) = 0;
  v18 = (*(v17 + 8 * ((v15 + 531) ^ 0x3747)))(v14);
  return sub_1000BF948(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_100043CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, int a22, unsigned int a23, uint64_t a24)
{
  a21 = ((3 * v27) ^ 0x2D) + 113 * (((&a21 | 0xAA) - (&a21 | 0x55) + 85) ^ 0xA4);
  a24 = v24;
  a23 = (v25 + 276) ^ (2008441969 * (((&a21 | 0x23B2B6AA) - (&a21 | 0xDC4D4955) - 598914731) ^ 0x6B2BE2A4));
  v28 = (*(v26 + 8 * (v25 ^ 0x2234)))(&a21);
  return (*(v26 + 8 * ((6701 * (a22 == ((v25 - 2033734744) & 0x79385F5F ^ 0xF81C8C))) ^ v25)))(v28);
}

uint64_t sub_100043E2C@<X0>(int a1@<W8>)
{
  v2 = *(STACK[0x610] + 24);
  STACK[0x7E0] = v2;
  return (*(v1 + 8 * ((((a1 + 113) ^ (v2 == 0)) & 1 | (32 * (((a1 + 113) ^ (v2 == 0)) & 1))) ^ a1)))();
}

uint64_t sub_100043E6C()
{
  v3 = v0 - 5446;
  v4 = (v0 - 5446) ^ 0x960u;
  STACK[0xA28] = v1;
  v5 = STACK[0x898];
  STACK[0xA30] = STACK[0x898];
  return (*(v2 + 8 * (((v1 - v5 > v4 - 747) * (v3 ^ 0x1F9B)) ^ v3)))();
}

uint64_t sub_100043FA8(uint64_t a1)
{
  STACK[0x5B0] = v1;
  LODWORD(STACK[0x554]) = STACK[0x804];
  return (*(v3 + 8 * (((((v2 - 118) ^ (STACK[0x5A8] == 0)) & 1) * ((v2 - 3440) ^ 0x210)) ^ v2)))(a1, 197499219);
}

uint64_t sub_10004410C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13)
{
  a12 = 476323082 - 1710126949 * ((&a12 + 943502261 - 2 * (&a12 & 0x383CB3B5)) ^ 0xA27E825);
  v14 = (*(v13 + 77088))(&a12);
  return (*(v13 + 8 * ((2973 * (a13 == 16257999)) ^ 0x14A1u)))(v14);
}

uint64_t sub_1000442C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6)
{
  v12 = v7 - 1;
  *(a2 + v12) = *(a3 + v12) ^ *(v8 + ((v12 + 31) & 0xF)) ^ *(((v12 + 31) & 0xF) + v9 + 3) ^ (((v12 + 31) & 0xF) * a4) ^ *(v10 + ((v12 + 31) & 0xF)) ^ 0x3C;
  return (*(v11 + 8 * (((v12 + 31 == a5) * a6) ^ v6)))();
}

uint64_t sub_1000443BC()
{
  *(v7 - 224) = v3 ^ (((((v7 - 232) | 0xDDFDD24D) - ((v7 - 232) & 0xDDFDD24D)) ^ 0xF1016336) * v5);
  v8 = (*(v6 + 8 * v4))(v7 - 232);
  *(v1 + 8) = *(v7 - 232) ^ v0;
  return (*(v6 + 8 * ((v2 - 1878) ^ 0x15E)))(v8, 197499219);
}

uint64_t sub_100044458(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, int a37, int a38, int a39, int a40, int a41, int a42, int a43, int a44, int a45, int a46, int a47, int a48, int a49, int a50, int a51, int a52, unsigned __int8 a53, unsigned int a54, int a55, unsigned int a56, uint64_t a57, uint64_t a58, _BYTE *a59, uint64_t a60)
{
  v69 = v68;
  v70 = (v68 - 1059753686) ^ v67 ^ (v64 ^ (v68 + 744417400) ^ 0xBE225FBF ^ (((a40 ^ 0x5322272) & a38 | a36) ^ 0x7C163350) & v61) & a7;
  v71 = *(&off_100755B60 + v68 - 2990);
  v72 = *(v71 + 8 * (*(a10 + (v70 >> 24)) ^ a3)) ^ 0xA8A762F367B548BCLL;
  v73 = v72 ^ (32 * v72) ^ (8 * v72);
  v74 = (((((a5 ^ 0x5DDFBB0B) & a6 | a42) ^ 0x4AE62C8) & a8 ^ v63) & v65 | v66) ^ 0x47BB4B1u;
  v75 = *(a10 + ((((((a5 ^ 0xB) & a6 | a42) ^ 0xC8) & a8 ^ v63) & v65 | v66) ^ 0xB1u));
  v76 = *(v71 + 8 * (*(a10 + BYTE2(v60)) ^ a3)) ^ 0x4BA8C5E094D2F929;
  v77 = a50 ^ 0xC6C93CC6 ^ (a46 & (a48 ^ 0x10860EC6) | a44);
  v78 = *(a10 + BYTE1(v74));
  v79 = *(a10 + (v74 >> 24));
  v80 = *(v71 + 8 * (*(a10 + (v77 >> 24)) ^ a3)) ^ 0xF1A62D5B8687E9B6;
  LODWORD(v73) = ((v76 ^ (32 * v76) ^ (8 * v76)) >> 24) ^ ((v80 ^ (32 * v80) ^ (8 * v80)) >> 32) ^ (v73 >> 16);
  v81 = *(v71 + 8 * (v75 ^ a3)) ^ 0x1DD37837EB6F15A7;
  v82 = *(v71 + 8 * (*(a10 + (v60 >> 24)) ^ a3)) ^ 0x72FD46093CAA22B4;
  LODWORD(v81) = v73 ^ ((v81 ^ (32 * v81) ^ (8 * v81)) >> 8);
  v83 = *(v71 + 8 * (*(a10 + (a50 ^ 0xC6 ^ (a46 & (a48 ^ 0xC6u) | a44))) ^ a3)) ^ 0x2B533E5815CA48E0;
  v84 = *(v71 + 8 * (*(a10 + v70) ^ a3)) ^ 0xF9AD650087DE27EBLL;
  LODWORD(v82) = ((v83 ^ (32 * v83) ^ (8 * v83)) >> 8) ^ ((v82 ^ (32 * v82) ^ (8 * v82)) >> 32) ^ ((v84 ^ (32 * v84) ^ (8 * v84)) >> 24) ^ ((*(v71 + 8 * (v78 ^ a3)) ^ (32 * (*(v71 + 8 * (v78 ^ a3)) ^ 0xA24179F39E8E1F11)) ^ (8 * (*(v71 + 8 * (v78 ^ a3)) ^ 0xA24179F39E8E1F11))) >> 16);
  v85 = *(v71 + 8 * (*(a10 + BYTE1(v77)) ^ a3));
  v86 = *(v71 + 8 * (*(a10 + BYTE2(v74)) ^ a3)) ^ 0x703B8964564B6A3BLL;
  v87 = *(v71 + 8 * (*(a10 + BYTE1(v70)) ^ a3)) ^ 0x6120E2BC7DE99F20;
  v88 = *(v71 + 8 * (*(a10 + v60) ^ a3)) ^ 0xDA0D5694ECA90550;
  LODWORD(v85) = ((v86 ^ (32 * v86) ^ (8 * v86)) >> 24) ^ ((v85 ^ (32 * (v85 ^ 0x2A1AEADD188EF275)) ^ (8 * (v85 ^ 0x2A1AEADD188EF275uLL))) >> 16) ^ ((v87 ^ (32 * v87) ^ (8 * v87)) >> 32);
  v89 = *(v71 + 8 * (*(a10 + BYTE2(v70)) ^ a3));
  v90 = *(v71 + 8 * (*(a10 + BYTE1(v60)) ^ a3)) ^ 0x9024FE5A826BBEA6;
  v91 = *(v71 + 8 * (*(a10 + BYTE2(v77)) ^ a3)) ^ 0xBC8D37CE9CD278C5;
  v92 = v81 ^ 0xB3D4D192;
  v93 = v82 ^ 0xBA2906E0;
  v94 = v85 ^ ((v88 ^ (32 * v88) ^ (8 * v88)) >> 8) ^ 0xEBE95A67;
  v95 = ((v89 ^ (32 * (v89 ^ 0xA4D596E8B42B887FLL)) ^ (8 * (v89 ^ 0xA4D596E8B42B887FLL))) >> 8) ^ ((v90 ^ (32 * v90) ^ (8 * v90)) >> 16) ^ ((*(v71 + 8 * (v79 ^ a3)) ^ (32 * (*(v71 + 8 * (v79 ^ a3)) ^ 0xA7ED73001B85FCCCLL)) ^ (8 * (*(v71 + 8 * (v79 ^ a3)) ^ 0xA7ED73001B85FCCCLL))) >> 32) ^ ((v91 ^ (32 * v91) ^ (8 * v91)) >> 24) ^ 0xCE3F4363;
  v96 = *(a10 + (v94 >> 24));
  v97 = *(a10 + v95);
  v98 = *(a10 + BYTE1(v95));
  v99 = *(a10 + v94);
  v100 = *(a10 + BYTE1(v94));
  v101 = *(a10 + (v92 >> 24));
  v102 = *(a10 + BYTE2(v95));
  v103 = *(a10 + v93);
  v104 = *(a10 + (v95 >> 24));
  v105 = *(a10 + BYTE1(v93));
  v106 = *(a10 + BYTE2(v94));
  v107 = *(v71 + 8 * (*(a10 + BYTE1(v92)) ^ a3));
  v108 = *(v71 + 8 * (*(a10 + BYTE2(v93)) ^ a3)) ^ 0x7D254B6D0022DEC4;
  v109 = *(v71 + 8 * (v96 ^ a3)) ^ 0x54395B58BC4B9E6ALL;
  LODWORD(v107) = ((v108 ^ (32 * v108) ^ (8 * v108)) >> 16) ^ ((v107 ^ 0x49394AF1E521B455 ^ (32 * (v107 ^ 0x49394AF1E521B455)) ^ (8 * (v107 ^ 0x49394AF1E521B455uLL))) >> 8);
  v110 = *(v71 + 8 * (v97 ^ a3)) ^ 0x699DF1409B2D36E1;
  v111 = *(v71 + 8 * (*(a10 + (v93 >> 24)) ^ a3)) ^ 0x5F2807802D73BD78;
  LODWORD(v81) = v107 ^ ((v109 ^ (32 * v109) ^ (8 * v109)) >> 24) ^ ((v110 ^ (32 * v110) ^ (8 * v110)) >> 32);
  v112 = (*(v71 + 8 * (v98 ^ a3)) ^ (32 * (*(v71 + 8 * (v98 ^ a3)) ^ 0xBA12001EBB5EA5B1)) ^ (8 * (*(v71 + 8 * (v98 ^ a3)) ^ 0xBA12001EBB5EA5B1))) >> 16;
  v113 = *(v71 + 8 * (*(a10 + BYTE2(v92)) ^ a3)) ^ (32 * (*(v71 + 8 * (*(a10 + BYTE2(v92)) ^ a3)) ^ 0x652588B6FB6DDC91)) ^ (8 * (*(v71 + 8 * (*(a10 + BYTE2(v92)) ^ a3)) ^ 0x652588B6FB6DDC91));
  v114 = *(v71 + 8 * (v100 ^ a3)) & 0xFFFFFDFFFFFFFFFFLL ^ 0xE3349C62B2297655 ^ (0x18CB4FC383E94FCDLL - (*(v71 + 8 * (v100 ^ a3)) & 0x20000000000));
  LODWORD(v103) = ((v114 ^ (32 * v114) ^ (8 * v114)) >> 16) ^ ((*(v71 + 8 * (v102 ^ a3)) ^ (32 * (*(v71 + 8 * (v102 ^ a3)) ^ 0x6EA53714763B4668)) ^ (8 * (*(v71 + 8 * (v102 ^ a3)) ^ 0x6EA53714763B4668uLL))) >> 24) ^ ((*(v71 + 8 * (v101 ^ a3)) ^ (32 * (*(v71 + 8 * (v101 ^ a3)) ^ 0xE82B74CABB843A0ELL)) ^ (8 * (*(v71 + 8 * (v101 ^ a3)) ^ 0xE82B74CABB843A0ELL))) >> 32) ^ ((*(v71 + 8 * (v103 ^ a3)) ^ (32 * (*(v71 + 8 * (v103 ^ a3)) ^ 0xEA8E1A68D9419258)) ^ (8 * (*(v71 + 8 * (v103 ^ a3)) ^ 0xEA8E1A68D9419258))) >> 8);
  v115 = *(v71 + 8 * (v104 ^ a3)) ^ 0x1B188605063579A2;
  v116 = *(v71 + 8 * ((*(a10 + v92) - 2 * (*(a10 + v92) & 0xE8u) + 232) ^ 0xD3)) ^ 0x57B467F08DD9E7B4;
  LODWORD(v105) = ((v115 ^ (32 * v115) ^ (8 * v115)) >> 32) ^ ((*(v71 + 8 * (v105 ^ a3)) ^ (32 * (*(v71 + 8 * (v105 ^ a3)) ^ 0x1DF48BCF4384E593)) ^ (8 * (*(v71 + 8 * (v105 ^ a3)) ^ 0x1DF48BCF4384E593uLL))) >> 16);
  v117 = v81 ^ 0x93DCE477;
  v118 = ((*(v71 + 8 * (v99 ^ a3)) ^ (32 * (*(v71 + 8 * (v99 ^ a3)) ^ 0xDF3FB549FED56743)) ^ (8 * (*(v71 + 8 * (v99 ^ a3)) ^ 0xDF3FB549FED56743))) >> 8) ^ ((v111 ^ (32 * v111) ^ (8 * v111)) >> 32) ^ v112 ^ (v113 >> 24) ^ 0x352D3F51;
  v119 = v103 ^ 0x556DC357;
  v120 = ((v116 ^ (32 * v116) ^ (8 * v116)) >> 8) ^ v105 ^ ((*(v71 + 8 * (v106 ^ a3)) ^ (32 * (*(v71 + 8 * (v106 ^ a3)) ^ 0xA3FF3FF626DBFBF3)) ^ (8 * (*(v71 + 8 * (v106 ^ a3)) ^ 0xA3FF3FF626DBFBF3))) >> 24) ^ 0xD4DE097D;
  v121 = *(a10 + (v119 >> 24));
  v122 = *(a10 + BYTE2(v118));
  v123 = *(a10 + v120);
  v124 = *(a10 + (v118 >> 24));
  v125 = *(a10 + (v103 ^ 0x57u));
  v126 = *(a10 + (v117 >> 24));
  v127 = *(a10 + BYTE1(v120));
  v128 = *(a10 + BYTE1(v117));
  v129 = *(a10 + (v81 ^ 0x77u));
  v130 = *(a10 + BYTE1(v119));
  v131 = *(a10 + v118);
  v132 = *(a10 + BYTE1(v118));
  v133 = *(v71 + 8 * (*(a10 + BYTE2(v117)) ^ a3));
  v134 = *(a10 + BYTE2(v119));
  v135 = *(v71 + 8 * (v122 ^ a3)) ^ 0x9B4EF10CD2567C9BLL;
  v136 = *(v71 + 8 * (v121 ^ a3)) ^ 0x97DB90A1B0774394;
  LODWORD(v136) = ((v135 ^ (32 * v135) ^ (8 * v135)) >> 32) ^ ((v133 ^ (32 * (v133 ^ 0x2DB0C3C2A35DA957)) ^ (8 * (v133 ^ 0x2DB0C3C2A35DA957uLL))) >> 24) ^ ((v136 ^ (32 * v136) ^ (8 * v136)) >> 8);
  v137 = *(v71 + 8 * (*(a10 + BYTE2(v120)) ^ a3)) ^ 0x560AF4423A1ACFC4;
  v138 = *(v71 + 8 * (v129 ^ a3)) ^ 0x193B1573A21403BFLL;
  LODWORD(v133) = ((*(v71 + 8 * (v130 ^ a3)) ^ (32 * (*(v71 + 8 * (v130 ^ a3)) ^ 0xE6D212A2949244E1)) ^ (8 * (*(v71 + 8 * (v130 ^ a3)) ^ 0xE6D212A2949244E1))) >> 8) ^ ((v138 ^ (32 * v138) ^ (8 * v138)) >> 24);
  v139 = *(v71 + 8 * (v131 ^ a3)) ^ 0xC1D298D994877AE3;
  v140 = *(v71 + 8 * (*(a10 + (v120 >> 24)) ^ a3));
  v141 = *(v71 + 8 * (v128 ^ a3)) ^ 0x5539C8B388F97DF8;
  v142 = *(v71 + 8 * (v132 ^ a3)) ^ 0xF151B33D5F14FF2FLL;
  LODWORD(v141) = ((v141 ^ (32 * v141) ^ (8 * v141)) >> 8) ^ ((v142 ^ (32 * v142) ^ (8 * v142)) >> 16);
  v143 = *(v71 + 8 * (v134 ^ a3)) ^ 0xF83DD0B818F2531DLL;
  v144 = v136 ^ 0x9DADF1DE ^ ((*(v71 + 8 * (v123 ^ a3)) ^ (32 * (*(v71 + 8 * (v123 ^ a3)) ^ 0x7C7DCEBF58BD8FE4)) ^ (8 * (*(v71 + 8 * (v123 ^ a3)) ^ 0x7C7DCEBF58BD8FE4uLL))) >> 16);
  LODWORD(v141) = v141 ^ ((v143 ^ (32 * v143) ^ (8 * v143)) >> 24);
  v145 = ((v137 ^ (32 * v137) ^ (8 * v137)) >> 16) ^ v133 ^ ((v139 ^ (32 * v139) ^ (8 * v139)) >> 32) ^ 0x516FE8C0;
  v146 = ((*(v71 + 8 * (v125 ^ a3)) ^ (32 * (*(v71 + 8 * (v125 ^ a3)) ^ 0x2C0B5B3CEA195FE7)) ^ (8 * (*(v71 + 8 * (v125 ^ a3)) ^ 0x2C0B5B3CEA195FE7uLL))) >> 24) ^ ((*(v71 + 8 * (v124 ^ a3)) ^ 0xC08BA403D7DDBADFLL ^ (32 * (*(v71 + 8 * (v124 ^ a3)) ^ 0xC08BA403D7DDBADFLL)) ^ (8 * (*(v71 + 8 * (v124 ^ a3)) ^ 0xC08BA403D7DDBADFLL))) >> 16) ^ ((*(v71 + 8 * (v126 ^ a3)) ^ (32 * (*(v71 + 8 * (v126 ^ a3)) ^ 0x2A18691AF1F15627)) ^ (8 * (*(v71 + 8 * (v126 ^ a3)) ^ 0x2A18691AF1F15627uLL))) >> 8) ^ 0x3738396D ^ ((*(v71 + 8 * (v127 ^ a3)) ^ (32 * (*(v71 + 8 * (v127 ^ a3)) ^ 0xA98719CFF0F2CE69)) ^ (8 * (*(v71 + 8 * (v127 ^ a3)) ^ 0xA98719CFF0F2CE69))) >> 32);
  v147 = v141 ^ 0x74FA56EE ^ ((v140 ^ (32 * (v140 ^ 0x69B6B2A5BD483F25)) ^ (8 * (v140 ^ 0x69B6B2A5BD483F25uLL))) >> 32);
  v148 = *(v62 + (v136 ^ 0xDEu ^ ((*(v71 + 8 * (v123 ^ a3)) ^ (32 * (*(v71 + 8 * (v123 ^ a3)) ^ 0x58BD8FE4)) ^ (8 * (*(v71 + 8 * (v123 ^ a3)) ^ 0x58BD8FE4u))) >> 16)));
  v149 = *(v62 + v147);
  v150 = *(v62 + v146);
  v151 = *(v62 + BYTE1(v147));
  v152 = *(v62 + ((v136 ^ 0xF1DE ^ ((*(v71 + 8 * (v123 ^ a3)) ^ (32 * (*(v71 + 8 * (v123 ^ a3)) ^ 0x58BD8FE4)) ^ (8 * (*(v71 + 8 * (v123 ^ a3)) ^ 0x58BD8FE4u))) >> 16)) >> 8));
  v153 = v147 >> 24;
  v154 = *(v62 + BYTE2(v147));
  v155 = *(v62 + BYTE2(v146));
  v156 = v146 >> 24;
  v157 = *(v71 + 8 * (v148 ^ a3)) ^ 0x2B117C8446397D9CLL;
  v158 = *(v71 + 8 * (*(v62 + v145) ^ a3)) ^ 0x2419C05B14A81C2DLL;
  LODWORD(v157) = ((*(v71 + 8 * (v150 ^ a3)) ^ (32 * (*(v71 + 8 * (v150 ^ a3)) ^ 0xE225B8598A91DDE8)) ^ (8 * (*(v71 + 8 * (v150 ^ a3)) ^ 0xE225B8598A91DDE8))) >> 8) ^ ((v157 ^ (32 * v157) ^ (8 * v157)) >> 32) ^ ((v158 ^ (32 * v158) ^ (8 * v158)) >> 16);
  v159 = (-*(v71 + 8 * (v149 ^ a3)) ^ 0x330AF6AD5D43BD4ELL ^ (0x18CB4FC383E94FCDLL - (*(v71 + 8 * (v149 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (*(v71 + 8 * (v149 ^ a3)) + 0x330AF6AD5D43BD4ELL - ((2 * *(v71 + 8 * (v149 ^ a3))) & 0x6615ED5ABA877A9CLL))) + 0x18CB4FC383E94FCDLL;
  v160 = (v159 ^ (32 * v159) ^ (8 * v159)) >> 24;
  v161 = v151 ^ a3;
  v162 = (*(v71 + 8 * (*(v62 + BYTE1(v145)) ^ a3)) ^ (32 * (*(v71 + 8 * (*(v62 + BYTE1(v145)) ^ a3)) ^ 0x2BC517F18E42CD9CLL)) ^ (8 * (*(v71 + 8 * (*(v62 + BYTE1(v145)) ^ a3)) ^ 0x2BC517F18E42CD9CLL)) ^ 0xB46E282963981CE2) >> (v160 & 8 ^ 8) >> (v160 & 8);
  v163 = *(v71 + 8 * (v152 ^ a3)) ^ 0x28B95D6406A87FELL;
  v164 = *(v71 + 8 * (*(v62 + BYTE2(v145)) ^ a3));
  LODWORD(v131) = ((*(v71 + 8 * v161) ^ 0x3B0B162A8120B0C7 ^ (32 * (*(v71 + 8 * v161) ^ 0x3B0B162A8120B0C7)) ^ (8 * (*(v71 + 8 * v161) ^ 0x3B0B162A8120B0C7uLL))) >> 16) ^ ((*(v71 + 8 * (*(v62 + BYTE1(v146)) ^ a3)) ^ (32 * (*(v71 + 8 * (*(v62 + BYTE1(v146)) ^ a3)) ^ 0x67675882390CD366)) ^ (8 * (*(v71 + 8 * (*(v62 + BYTE1(v146)) ^ a3)) ^ 0x67675882390CD366uLL))) >> 32);
  v165 = *(v71 + 8 * (*(v62 + BYTE2(v144)) ^ a3)) ^ 0x2DDF4E920D0C10CELL;
  v166 = *(v71 + 8 * (*(v62 + v153) ^ a3));
  v167 = *(v71 + 8 * (*(v62 + (v144 >> 24)) ^ a3)) ^ 0xA2BF211654ECD9F3;
  LODWORD(v167) = ((v167 ^ (32 * v167) ^ (8 * v167)) >> 16) ^ ((v166 ^ (32 * (v166 ^ 0x91AFA219B99565E6)) ^ (8 * (v166 ^ 0x91AFA219B99565E6))) >> 8);
  v168 = *(v71 + 8 * (*(v62 + v156) ^ a3)) ^ 0x4E6B23F3382BD75ELL;
  v169 = *(v71 + 8 * (*(v62 + (v145 >> 24)) ^ a3)) ^ 0xA70C8E3562C1E916;
  v171 = __ROR4__(__ROR4__(v157 ^ 0x6DEC0BEA ^ v160, 26) ^ 0xAD6B03E1, 6);
  v170 = v171 ^ 0x79F6A83Du;
  LODWORD(v168) = v167 ^ ((v168 ^ (32 * v168) ^ (8 * v168)) >> 24) ^ ((v169 ^ (32 * v169) ^ (8 * v169)) >> 32);
  v172 = ((*(v71 + 8 * (v154 ^ a3)) ^ (32 * (*(v71 + 8 * (v154 ^ a3)) ^ 0x4AF38DD187CF06EFLL)) ^ (8 * (*(v71 + 8 * (v154 ^ a3)) ^ 0x4AF38DD187CF06EFuLL))) >> 16) ^ ((v164 ^ 0xDC6A572A04A091D3 ^ (32 * (v164 ^ 0xDC6A572A04A091D3)) ^ (8 * (v164 ^ 0xDC6A572A04A091D3))) >> 8) ^ ((v165 ^ (32 * v165) ^ (8 * v165)) >> 24) ^ ((*(v71 + 8 * (v155 ^ a3)) ^ (32 * (*(v71 + 8 * (v155 ^ a3)) ^ 0x19C544A0C99203DALL)) ^ (8 * (*(v71 + 8 * (v155 ^ a3)) ^ 0x19C544A0C99203DAuLL))) >> 32) ^ 0x94BD4172;
  v173 = *(v62 + ((((*(v71 + 8 * (v154 ^ a3)) ^ (32 * (*(v71 + 8 * (v154 ^ a3)) ^ 0x87CF06EF)) ^ (8 * (*(v71 + 8 * (v154 ^ a3)) ^ 0x87CF06EF))) >> 16) ^ ((v164 ^ 0x91D3 ^ (32 * (v164 ^ 0x91D3)) ^ (8 * (v164 ^ 0x91D3))) >> 8) ^ ((v165 ^ (32 * v165) ^ (8 * v165)) >> 24) ^ ((*(v71 + 8 * (v155 ^ a3)) ^ (32 * (*(v71 + 8 * (v155 ^ a3)) ^ 0x19C544A0C99203DALL)) ^ (8 * (*(v71 + 8 * (v155 ^ a3)) ^ 0x19C544A0C99203DAuLL))) >> 32)) ^ 0x72u));
  v174 = v168 ^ 0x92E2C65E;
  v175 = *(v62 + (v174 >> 24));
  v176 = v131 ^ ((v163 ^ (32 * v163) ^ (8 * v163)) >> 24) ^ 0xB7B28FFB ^ v162;
  v177 = *(v62 + BYTE1(v172));
  v178 = *(v62 + v174);
  v179 = *(v62 + BYTE2(v172));
  v180 = *(v62 + (v176 >> 24));
  v181 = *(v62 + v176);
  v182 = *(v62 + BYTE2(v174));
  v183 = *(v62 + BYTE1(v174));
  v184 = *(v71 + 8 * (*(v62 + (v170 >> 24)) ^ a3)) ^ 0x89F00C7E2DE640F4;
  v185 = *(v62 + BYTE1(v176));
  v186 = *(v62 + (v172 >> 24));
  v187 = *(v71 + 8 * (*(v62 + BYTE2(v176)) ^ a3)) ^ 0xBDBC0F8C4B91BA6DLL;
  v188 = *(v71 + 8 * (v173 ^ a3));
  LODWORD(v173) = ((v187 ^ (32 * v187) ^ (8 * v187)) >> 32) ^ ((v184 ^ (32 * v184) ^ (8 * v184)) >> 24);
  v189 = *(v71 + 8 * (v180 ^ a3)) ^ 0x112D85830F3848FFLL;
  v190 = *(v71 + 8 * (v178 ^ a3)) ^ 0x4A2DC42FC497DCCDLL;
  LODWORD(v154) = ((*(v71 + 8 * (v177 ^ a3)) ^ (32 * (*(v71 + 8 * (v177 ^ a3)) ^ 0x6B21C7439A5E39EALL)) ^ (8 * (*(v71 + 8 * (v177 ^ a3)) ^ 0x6B21C7439A5E39EAuLL))) >> 24) ^ ((v190 ^ (32 * v190) ^ (8 * v190)) >> 32) ^ ((v189 ^ (32 * v189) ^ (8 * v189)) >> 16);
  v191 = *(v71 + 8 * (*(v62 + (v171 ^ 0x3Du)) ^ a3)) ^ 0x311F857C78CBD71DLL;
  v192 = (v191 ^ (32 * v191) ^ (8 * v191)) >> 8;
  v193 = (-*(v71 + 8 * (v183 ^ a3)) ^ 0x947B763962B63FD7 ^ (0x18CB4FC383E94FCDLL - (*(v71 + 8 * (v183 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (*(v71 + 8 * (v183 ^ a3)) - 0x6B8489C69D49C029 - ((2 * *(v71 + 8 * (v183 ^ a3))) & 0x28F6EC72C56C7FAELL))) + 0x18CB4FC383E94FCDLL;
  v194 = *(v71 + 8 * (*(v62 + BYTE1(v170)) ^ a3)) ^ 0x85D5EEB22C07F706;
  v195 = *(v71 + 8 * (v181 ^ a3)) ^ 0x83DBDF385BF5C46BLL;
  LODWORD(v191) = ((v194 ^ (32 * v194) ^ (8 * v194)) >> 16) ^ ((*(v71 + 8 * (v179 ^ a3)) ^ (32 * (*(v71 + 8 * (v179 ^ a3)) ^ 0x683194D50881A61DLL)) ^ (8 * (*(v71 + 8 * (v179 ^ a3)) ^ 0x683194D50881A61DuLL))) >> 32) ^ ((v195 ^ (32 * v195) ^ (8 * v195)) >> 24) ^ ((v193 ^ (32 * v193) ^ (8 * v193)) >> 8);
  v196 = *(v71 + 8 * (v182 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v197 = *(v71 + 8 * (*(v62 + BYTE2(v170)) ^ a3));
  v198 = *(v71 + 8 * (v185 ^ a3)) ^ 0xE8013709C4FA46B0;
  v199 = *(v71 + 8 * (v186 ^ a3)) ^ 0x83E045FAA277B081;
  v200 = (((8 * v199) ^ (32 * v199) ^ 0xBC3916ED3F2813E0) - 2 * (((8 * v199) ^ (32 * v199) ^ 0xBC3916ED3F2813E0) & 0x1B2B0A39219EFF58 ^ (8 * v199) & 0x10) - 0x64D4F5C6DE6100B4) ^ v199;
  v201 = v173 ^ ((v188 ^ (32 * (v188 ^ 0xA379CC0C61969AF8)) ^ (8 * (v188 ^ 0xA379CC0C61969AF8))) >> 8) ^ ((*(v71 + 8 * (v175 ^ a3)) ^ (32 * (*(v71 + 8 * (v175 ^ a3)) ^ 0xBB6864B07BC49549)) ^ (8 * (*(v71 + 8 * (v175 ^ a3)) ^ 0xBB6864B07BC49549))) >> 16) ^ 0x972982EA;
  v202 = ((v197 ^ (32 * (v197 ^ 0x4DB41DAF87559D83)) ^ (8 * (v197 ^ 0x4DB41DAF87559D83uLL))) >> 24) ^ ((v198 ^ (32 * v198) ^ (8 * v198)) >> 32) ^ (((-v196 ^ 0x4AEB5B0061E64500 ^ (v196 + 0x4AEB5B0061E64500 - ((2 * v196) & 0x95D6B600C3CC8A04) + 2) ^ (((32 * v196) ^ (8 * v196)) - ((32 * v196) ^ (8 * v196) ^ v196))) + ((32 * v196) ^ (8 * v196))) >> 16) ^ ((v200 >> 8) - ((v200 >> 7) & 0x959A85714E6294) + 0x5A4ACD42B8A7314ALL) ^ 0x5A4ACD46C7AF7628;
  v203 = *(v62 + v201);
  v204 = v191 ^ 0x4B4EF4AD;
  v205 = v154 ^ v192 ^ 0x374541D0;
  v206 = *(v62 + BYTE1(v204));
  v207 = *(v62 + BYTE2(v204));
  v208 = v202 ^ 0x67F01339;
  v209 = *(v62 + BYTE1(v205));
  v210 = *(v62 + (BYTE2(v202) ^ 0xF0));
  v211 = *(v62 + (v202 ^ 0x39u));
  v212 = *(v62 + (v204 >> 24));
  v213 = *(v62 + BYTE2(v201));
  v214 = *(v62 + BYTE1(v201));
  v215 = v201 >> 24;
  v216 = *(v62 + (v205 >> 24));
  v217 = *(v62 + v215);
  v218 = *(v62 + BYTE2(v205));
  v219 = v203 ^ a3;
  v220 = *(v62 + v204);
  v221 = *(v71 + 8 * (*(v62 + v205) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v221) = ((v221 ^ (32 * v221) ^ (8 * v221)) >> 32) ^ ((*(v71 + 8 * v219) ^ (32 * (*(v71 + 8 * v219) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * v219) ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((*(v71 + 8 * (v206 ^ a3)) ^ (32 * (*(v71 + 8 * (v206 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v206 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8);
  v222 = *(v71 + 8 * (v209 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v222) = ((*(v71 + 8 * (v207 ^ a3)) ^ (32 * (*(v71 + 8 * (v207 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v207 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32) ^ ((v222 ^ (32 * v222) ^ (8 * v222)) >> 24);
  v223 = *(v71 + 8 * (*(v62 + (v208 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v224 = *(v71 + 8 * (v214 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v225 = (v223 ^ (32 * v223) ^ (8 * v223)) >> 8;
  v226 = *(v71 + 8 * (v213 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v223) = ((*(v71 + 8 * (v212 ^ a3)) ^ (32 * (*(v71 + 8 * (v212 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v212 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32) ^ ((v226 ^ (32 * v226) ^ (8 * v226)) >> 16) ^ ((*(v71 + 8 * (v218 ^ a3)) ^ (32 * (*(v71 + 8 * (v218 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v218 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24);
  v227 = *(v71 + 8 * (*(v62 + BYTE1(v208)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v228 = *(v71 + 8 * (v217 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v229 = __ROR8__(__ROR8__(v228 ^ (32 * v228) ^ (8 * v228), 31) ^ 0xAA000000012CAEE6, 33);
  v230 = *(v71 + 8 * (v216 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v231 = *(v71 + 8 * (v220 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v232 = (v231 ^ (32 * v231) ^ (8 * v231)) >> 8;
  v233 = v221 ^ ((*(v71 + 8 * (v210 ^ a3)) ^ (8 * *(v71 + 8 * (v210 ^ a3))) ^ (32 * *(v71 + 8 * (v210 ^ a3)))) >> 16) ^ 0x9BD1F07D;
  v234 = v222 ^ ((v224 ^ (32 * v224) ^ (8 * v224)) >> 16) ^ 0x4484838 ^ v225;
  v235 = ((*(v71 + 8 * (v211 ^ a3)) ^ (32 * (*(v71 + 8 * (v211 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v211 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8) ^ v223 ^ 0x521B0D21;
  v236 = ((v230 ^ (32 * v230) ^ (8 * v230)) >> 32) ^ v232 ^ ((v227 ^ (32 * v227) ^ (8 * v227)) >> 16) ^ (v229 >> 24) ^ 0x60FEF739;
  v237 = *(v62 + BYTE2(v236));
  v238 = *(v62 + (v236 >> 24));
  v239 = *(v62 + (v221 ^ ((*(v71 + 8 * (v210 ^ a3)) ^ (8 * *(v71 + 8 * (v210 ^ a3))) ^ (32 * *(v71 + 8 * (v210 ^ a3)))) >> 16) ^ 0x7D));
  v240 = *(v62 + BYTE1(v236));
  v241 = *(v62 + v236);
  v242 = *(v62 + BYTE2(v234));
  v243 = *(v62 + BYTE1(v234));
  v244 = ((*(v71 + 8 * (*(v62 + (v234 >> 24)) ^ a3)) - (*(v71 + 8 * (*(v62 + (v234 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ 0xFFFFFFFFFFFFFFFELL) + *(v71 + 8 * (*(v62 + (v234 >> 24)) ^ a3));
  v245 = (v244 ^ (32 * v244) ^ (8 * v244) ^ 0x551CA03B385D0B87) >> (v219 & 0x20) >> (~v219 & 0x20);
  v246 = *(v71 + 8 * (*(v62 + BYTE1(v235)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v237) = ((v246 ^ (32 * v246) ^ (8 * v246)) >> 8) ^ ((*(v71 + 8 * (v239 ^ a3)) ^ (32 * (*(v71 + 8 * (v239 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v239 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((*(v71 + 8 * (v237 ^ a3)) ^ (32 * (*(v71 + 8 * (v237 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v237 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 16);
  v247 = *(v71 + 8 * (*(v62 + BYTE2(v235)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v248 = *(v71 + 8 * (v238 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v234) = ((v247 ^ (32 * v247) ^ (8 * v247)) >> 16) ^ ((*(v71 + 8 * (*(v62 + v234) ^ a3)) ^ (32 * (*(v71 + 8 * (*(v62 + v234) ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (*(v62 + v234) ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8);
  v249 = v248 ^ (32 * v248) ^ (8 * v248);
  v250 = *(v71 + 8 * (*(v62 + BYTE1(v233)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v251 = v234 ^ (v249 >> 24);
  v252 = ((v250 ^ (32 * v250) ^ (8 * v250)) >> 32) ^ 0x551CA03B;
  v253 = (((v251 ^ 0x4420B721uLL) >> 18) | ((v251 ^ 0x4420B721) << 14)) ^ ((v252 >> 18) | (v252 << 14));
  v254 = *(v71 + 8 * (*(v62 + (v235 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v255 = *(v71 + 8 * (*(v62 + BYTE2(v233)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v256 = *(v71 + 8 * (v243 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v257 = *(v71 + 8 * (*(v62 + (v233 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v258 = *(v71 + 8 * (v242 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v259 = *(v71 + 8 * (*(v62 + v235) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v240) = ((v257 ^ (32 * v257) ^ (8 * v257)) >> 24) ^ ((v258 ^ (32 * v258) ^ (8 * v258)) >> 32) ^ ((*(v71 + 8 * (v240 ^ a3)) ^ (32 * (*(v71 + 8 * (v240 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v240 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 16);
  v260 = (((v253 ^ 0x55272016uLL) >> 14) | ((v253 ^ 0x55272016) << 18)) ^ 0x38A68048;
  v261 = v237 ^ 0x80306567 ^ v245;
  v262 = ((*(v71 + 8 * (v241 ^ a3)) ^ (32 * (*(v71 + 8 * (v241 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v241 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((v254 ^ (32 * v254) ^ (8 * v254)) >> 16) ^ ((v255 ^ (32 * v255) ^ (8 * v255)) >> 32) ^ ((v256 ^ (32 * v256) ^ (8 * v256)) >> 8) ^ 0x39155CB;
  v263 = *(v62 + v261);
  v264 = *(v62 + (v262 >> 24));
  v265 = *(v62 + BYTE2(v260));
  v266 = v240 ^ ((v259 ^ (32 * v259) ^ (8 * v259)) >> 8) ^ 0x5D655F8D;
  v267 = *(v62 + BYTE2(v266));
  v268 = *(v62 + BYTE1(v260));
  v269 = *(v62 + BYTE1(v261));
  v270 = *(v62 + v262);
  v271 = *(v62 + BYTE1(v262));
  v272 = *(v62 + (v266 >> 24));
  v273 = *(v62 + v266);
  v274 = *(v62 + (v260 >> 24));
  v275 = *(v62 + BYTE2(v261));
  v276 = v261 >> 24;
  v277 = *(v62 + BYTE2(v262));
  v278 = *(v62 + BYTE1(v266));
  v279 = *(v71 + 8 * (v263 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v280 = *(v62 + v260);
  v281 = v279 ^ (32 * v279) ^ (8 * v279);
  v282 = ((v268 >> 5) & 0xFFFFFFFF07FFFFFFLL | ((v268 & 0x1F) << 27)) ^ 0xFB18B9FF;
  v283 = v281 >> 16;
  v284 = *(v71 + 8 * (((32 * v282) & 0x63173FE0 | (v282 >> 27)) ^ 0x63173FC4)) ^ 0x18CB4FC383E94FCDLL;
  v285 = *(v71 + 8 * (v264 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v286 = *(v71 + 8 * (v267 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v287 = *(v71 + 8 * (v265 ^ a3));
  LODWORD(v265) = v283 ^ ((v285 ^ (32 * v285) ^ (8 * v285)) >> 32) ^ ((v286 ^ (32 * v286) ^ (8 * v286)) >> 8);
  v288 = *(v71 + 8 * (v270 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v289 = *(v71 + 8 * (v269 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v290 = v271 ^ a3;
  LODWORD(v271) = ((v288 ^ (32 * v288) ^ (8 * v288)) >> 32) ^ ((*(v71 + 8 * (v272 ^ a3)) ^ (32 * (*(v71 + 8 * (v272 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v272 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8) ^ ((v289 ^ (32 * v289) ^ (8 * v289)) >> 16);
  v291 = *(v71 + 8 * (v273 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v288) = ((v291 ^ (32 * v291) ^ (8 * v291)) >> 24) ^ ((*(v71 + 8 * v290) ^ 0x18CB4FC383E94FCDLL ^ (32 * (*(v71 + 8 * v290) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * v290) ^ 0x18CB4FC383E94FCDuLL))) >> 16);
  v292 = *(v71 + 8 * (v275 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v288) = v288 ^ ((v292 ^ (32 * v292) ^ (8 * v292)) >> 32);
  v293 = *(v71 + 8 * (v278 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v294 = *(v71 + 8 * (*(v62 + v276) ^ a3));
  v295 = *(v71 + 8 * (v280 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v294) = ((v293 ^ (32 * v293) ^ (8 * v293)) >> 32) ^ ((((32 * (v294 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v294 ^ 0x18CB4FC383E94FCDLL))) + (v294 ^ 0x4DD7EFF8BBB4444ALL) - 2 * (((32 * (v294 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v294 ^ 0x18CB4FC383E94FCDLL))) & (v294 ^ 0x4DD7EFF8BBB4444AuLL))) >> 8) ^ ((*(v71 + 8 * (v277 ^ a3)) ^ (32 * (*(v71 + 8 * (v277 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v277 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24);
  v296 = v271 ^ 0xBB8FF93F ^ ((v287 ^ (32 * (v287 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v287 ^ 0x18CB4FC383E94FCDuLL))) >> 24);
  v297 = ((v284 ^ (32 * v284) ^ (8 * v284)) >> 24) ^ v265 ^ 0x7EF118D0;
  v298 = *(v62 + (v296 >> 24));
  v299 = v288 ^ 0x304D88E ^ ((*(v71 + 8 * (v274 ^ a3)) ^ (32 * (*(v71 + 8 * (v274 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v274 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8);
  v300 = ((v295 ^ (32 * v295) ^ (8 * v295)) >> 16) ^ v294 ^ 0xEED525B0;
  v301 = *(v62 + (v271 ^ 0x3F ^ ((v287 ^ (32 * (v287 ^ 0x83E94FCD)) ^ (8 * (v287 ^ 0x83E94FCD))) >> 24)));
  v302 = *(v62 + (v299 >> 24));
  v303 = *(v62 + BYTE1(v299));
  v304 = *(v62 + v299);
  v305 = *(v62 + BYTE1(v300));
  v306 = *(v62 + BYTE2(v300));
  v307 = *(v62 + v300);
  v308 = *(v62 + BYTE2(v297));
  v309 = *(v62 + (v297 >> 24));
  v310 = v300 >> 24;
  v311 = *(v62 + BYTE1(v296));
  v312 = *(v62 + v297);
  v313 = *(v62 + BYTE2(v296));
  v314 = *(v62 + BYTE1(v297)) ^ a3;
  v315 = *(v62 + BYTE2(v299));
  v316 = *(v71 + 8 * v314) ^ 0x18CB4FC383E94FCDLL ^ (32 * (*(v71 + 8 * v314) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * v314) ^ 0x18CB4FC383E94FCDLL));
  v317 = v298 ^ a3;
  v318 = v316 >> 8;
  v319 = *(v71 + 8 * (v307 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v316) = ((*(v71 + 8 * v317) ^ 0x18CB4FC383E94FCDLL ^ (32 * (*(v71 + 8 * v317) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * v317) ^ 0x18CB4FC383E94FCDuLL))) >> 16) ^ ((*(v71 + 8 * (v302 ^ a3)) ^ (32 * (*(v71 + 8 * (v302 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v302 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24);
  v320 = (v319 ^ (32 * v319) ^ (8 * v319)) >> 32;
  v321 = *(v71 + 8 * (v301 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v301) = v316 ^ v320;
  v322 = *(v71 + 8 * (v304 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v323 = *(v71 + 8 * (v305 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v316) = ((v322 ^ (32 * v322) ^ (8 * v322)) >> 8) ^ ((v321 ^ (32 * v321) ^ (8 * v321)) >> 32);
  v324 = (v323 ^ (32 * v323) ^ (8 * v323)) >> 16;
  v325 = v308 ^ a3;
  LODWORD(v308) = v316 ^ v324;
  v326 = *(v71 + 8 * (v303 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v327 = *(v71 + 8 * (v306 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v328 = *(v71 + 8 * (*(v62 + v310) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v329 = *(v71 + 8 * (v313 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v330 = v301 ^ 0xFEFCEE0 ^ v318;
  LODWORD(v315) = ((v328 ^ (32 * v328) ^ (8 * v328)) >> 16) ^ ((v329 ^ (32 * v329) ^ (8 * v329)) >> 32) ^ ((*(v71 + 8 * (v315 ^ a3)) ^ (32 * (*(v71 + 8 * (v315 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v315 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8);
  v331 = v308 ^ 0xDF327E42 ^ ((*(v71 + 8 * v325) ^ 0x18CB4FC383E94FCDLL ^ (32 * (*(v71 + 8 * v325) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * v325) ^ 0x18CB4FC383E94FCDuLL))) >> 24);
  v332 = ((v327 ^ (32 * v327) ^ (8 * v327)) >> 24) ^ ((v326 ^ (32 * v326) ^ (8 * v326)) >> 16) ^ ((*(v71 + 8 * (v311 ^ a3)) ^ (32 * (*(v71 + 8 * (v311 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v311 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8) ^ 0xE8B556D6 ^ ((*(v71 + 8 * (v309 ^ a3)) ^ (32 * (*(v71 + 8 * (v309 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v309 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32);
  v333 = ((*(v71 + 8 * (v312 ^ a3)) ^ (32 * (*(v71 + 8 * (v312 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v312 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ v315 ^ 0x80CAF789;
  v334 = *(v62 + (v332 >> 24));
  v335 = *(v62 + BYTE2(v333));
  v336 = *(v62 + v333);
  v337 = *(v62 + BYTE1(v332));
  v338 = *(v62 + (v330 >> 24));
  v339 = *(v62 + (v333 >> 24));
  v340 = *(v62 + v331);
  v341 = *(v62 + v330);
  v342 = *(v62 + BYTE1(v333));
  v343 = *(v62 + BYTE1(v330));
  v344 = *(v71 + 8 * (*(v62 + BYTE2(v330)) ^ a3));
  v345 = *(v62 + BYTE2(v332));
  v346 = *(v71 + 8 * (*(v62 + BYTE2(v331)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v347 = *(v71 + 8 * (*(v62 + (v331 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v346) = ((v346 ^ (32 * v346) ^ (8 * v346)) >> 8) ^ ((v344 ^ (32 * (v344 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v344 ^ 0x18CB4FC383E94FCDuLL))) >> 32) ^ ((*(v71 + 8 * (v334 ^ a3)) ^ (32 * (*(v71 + 8 * (v334 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v334 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 16) ^ ((*(v71 + 8 * (v335 ^ a3)) ^ (32 * (*(v71 + 8 * (v335 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v335 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24);
  v348 = *(v71 + 8 * (*(v62 + v332) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v332) = ((v348 ^ (32 * v348) ^ (8 * v348)) >> 8) ^ ((v347 ^ (32 * v347) ^ (8 * v347)) >> 32);
  v349 = *(v71 + 8 * (v339 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v350 = *(v71 + 8 * (v338 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v351 = *(v71 + 8 * (v337 ^ a3));
  LODWORD(v337) = v332 ^ ((v349 ^ (32 * v349) ^ (8 * v349)) >> 16) ^ ((v350 ^ (32 * v350) ^ (8 * v350)) >> 24);
  v352 = *(v71 + 8 * (v336 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v353 = *(v71 + 8 * (v341 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v354 = *(v71 + 8 * (v342 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v352) = ((v352 ^ (32 * v352) ^ (8 * v352)) >> 16) ^ ((v351 ^ (32 * (v351 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v351 ^ 0x18CB4FC383E94FCDuLL))) >> 8) ^ ((v353 ^ (32 * v353) ^ (8 * v353)) >> 24) ^ ((*(v71 + 8 * (v340 ^ a3)) ^ (32 * (*(v71 + 8 * (v340 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v340 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32);
  v355 = *(v71 + 8 * (*(v62 + BYTE1(v331)) ^ a3));
  v356 = *(v71 + 8 * (v345 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v357 = v346 ^ 0x9318DA7D;
  LODWORD(v356) = ((*(v71 + 8 * (v343 ^ a3)) ^ (32 * (*(v71 + 8 * (v343 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v343 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 16) ^ ((v354 ^ (32 * v354) ^ (8 * v354)) >> 8) ^ ((v355 ^ (32 * (v355 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v355 ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((v356 ^ (32 * v356) ^ (8 * v356)) >> 32);
  v358 = v352 ^ 0xEB982E9F;
  v359 = v337 ^ 0x947B4DBF;
  v360 = v356 ^ 0x4087B74E;
  v361 = *(v62 + BYTE1(v358));
  v362 = *(v62 + (v356 ^ 0x4Eu));
  v363 = *(v62 + (v346 ^ 0x7Du));
  v364 = *(v62 + BYTE1(v357));
  v365 = *(v62 + BYTE1(v359));
  v366 = *(v62 + BYTE2(v357));
  v367 = *(v71 + 8 * (*(v62 + (v357 >> 24)) ^ a3));
  v368 = *(v71 + 8 * (*(v62 + BYTE2(v359)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v369 = *(v71 + 8 * (*(v62 + (v352 ^ 0x9Fu)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v370 = *(v71 + 8 * (*(v62 + (v360 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v368) = ((v368 ^ (32 * v368) ^ (8 * v368)) >> 32) ^ ((v367 ^ (32 * (v367 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v367 ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((v369 ^ (32 * v369) ^ (8 * v369)) >> 8) ^ ((v370 ^ (32 * v370) ^ (8 * v370)) >> 16);
  v371 = *(v71 + 8 * (*(v62 + (v359 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v372 = *(v71 + 8 * (v362 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v373 = *(v71 + 8 * (v363 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v374 = *(v71 + 8 * (*(v62 + BYTE2(v358)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v372) = ((*(v71 + 8 * (v361 ^ a3)) ^ (32 * (*(v71 + 8 * (v361 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v361 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((v371 ^ (32 * v371) ^ (8 * v371)) >> 16) ^ ((v372 ^ (32 * v372) ^ (8 * v372)) >> 32) ^ ((v373 ^ (32 * v373) ^ (8 * v373)) >> 8);
  v375 = *(v71 + 8 * (*(v62 + BYTE1(v360)) ^ a3));
  v376 = *(v71 + 8 * (*(v62 + v359) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v377 = *(v71 + 8 * (*(v62 + BYTE2(v360)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v378 = *(v71 + 8 * (v366 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v379 = *(v71 + 8 * (v365 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v380 = *(v71 + 8 * (*(v62 + (v358 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v381 = v368 ^ 0xEC7378ED;
  v382 = v372 ^ 0x940D5EB7;
  LODWORD(v379) = ((v378 ^ (32 * v378) ^ (8 * v378)) >> 32) ^ ((v377 ^ (32 * v377) ^ (8 * v377)) >> 24) ^ ((v379 ^ (32 * v379) ^ (8 * v379)) >> 8) ^ ((v380 ^ (32 * v380) ^ (8 * v380)) >> 16);
  v383 = ((v375 ^ (32 * (v375 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v375 ^ 0x18CB4FC383E94FCDuLL))) >> 16) ^ ((v374 ^ (32 * v374) ^ (8 * v374)) >> 8) ^ ((*(v71 + 8 * (v364 ^ a3)) ^ (32 * (*(v71 + 8 * (v364 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v364 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((v376 ^ (32 * v376) ^ (8 * v376)) >> 32) ^ 0x18FC90DF;
  v384 = *(v62 + (v368 ^ 0xEDu));
  v385 = v379 ^ 0x66E00D81;
  v386 = *(v62 + (v372 ^ 0xB7u));
  v387 = *(v62 + ((((v375 ^ (32 * (v375 ^ 0x83E94FCD)) ^ (8 * (v375 ^ 0x83E94FCD))) >> 16) ^ ((v374 ^ (32 * v374) ^ (8 * v374)) >> 8) ^ ((*(v71 + 8 * (v364 ^ a3)) ^ (32 * (*(v71 + 8 * (v364 ^ a3)) ^ 0x83E94FCD)) ^ (8 * (*(v71 + 8 * (v364 ^ a3)) ^ 0x83E94FCD))) >> 24) ^ ((v376 ^ (32 * v376) ^ (8 * v376)) >> 32)) ^ 0xDFu));
  v388 = *(v62 + BYTE1(v385));
  v389 = *(v62 + BYTE1(v381));
  v390 = *(v62 + BYTE1(v382));
  v391 = *(v62 + BYTE1(v383));
  v392 = *(v62 + BYTE2(v385));
  v393 = *(v62 + BYTE2(v383));
  v394 = *(v62 + BYTE2(v381));
  v395 = *(v62 + (v385 >> 24));
  v396 = *(v62 + BYTE2(v382));
  v397 = *(v62 + v385);
  v398 = *(v62 + (v381 >> 24));
  v399 = v383 >> 24;
  v400 = *(v62 + (v382 >> 24));
  v401 = *(v71 + 8 * (v384 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v402 = *(v71 + 8 * (v386 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v403 = *(v71 + 8 * (v387 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v388) = ((v402 ^ (32 * v402) ^ (8 * v402)) >> 16) ^ ((v401 ^ (32 * v401) ^ (8 * v401)) >> 8) ^ ((v403 ^ (32 * v403) ^ (8 * v403)) >> 24) ^ ((*(v71 + 8 * (v388 ^ a3)) ^ (32 * (*(v71 + 8 * (v388 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v388 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32);
  v404 = *(v71 + 8 * (v390 ^ a3)) + 0x18CB4FC383E94FCDLL - ((2 * *(v71 + 8 * (v390 ^ a3))) & 0x31969F8707D29F9ALL);
  v405 = *(v71 + 8 * (v391 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v406 = *(v71 + 8 * (v392 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v407 = *(v71 + 8 * (v389 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v408 = *(v71 + 8 * (v393 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v407) = ((v404 ^ (32 * v404) ^ (8 * v404)) >> 24) ^ ((v405 ^ (32 * v405) ^ (8 * v405)) >> 32) ^ ((v406 ^ (32 * v406) ^ (8 * v406)) >> 8) ^ ((v407 ^ (32 * v407) ^ (8 * v407)) >> 16);
  v409 = *(v71 + 8 * (v395 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v410 = *(v71 + 8 * (v396 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v411 = *(v71 + 8 * (v397 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v412 = ((v409 ^ (32 * v409) ^ (8 * v409)) >> 24) ^ ((v408 ^ (32 * v408) ^ (8 * v408)) >> 16) ^ ((*(v71 + 8 * (v394 ^ a3)) ^ (32 * (*(v71 + 8 * (v394 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v394 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32) ^ ((v410 ^ (32 * v410) ^ (8 * v410)) >> 8);
  v413 = *(v71 + 8 * (v400 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v414 = *(v71 + 8 * (*(v62 + v399) ^ a3));
  LODWORD(v414) = ((*(v71 + 8 * (v398 ^ a3)) ^ (32 * (*(v71 + 8 * (v398 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v398 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32) ^ ((v411 ^ (32 * v411) ^ (8 * v411)) >> 24) ^ ((v413 ^ (32 * v413) ^ (8 * v413)) >> 8) ^ ((v414 ^ (32 * (v414 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v414 ^ 0x18CB4FC383E94FCDuLL))) >> 16);
  v415 = v388 ^ 0x1104DEA5;
  v416 = *(v62 + BYTE2(v415));
  v417 = v407 ^ 0xB7E429BC;
  v418 = *(v62 + (v417 >> 24));
  v419 = v414 ^ 0xBADBE30;
  v420 = *(v62 + BYTE1(v419));
  v421 = *(v62 + (v407 ^ 0xBCu));
  v422 = *(v62 + (v412 ^ 0x6Eu));
  v423 = *(v62 + (v415 >> 24));
  v424 = *(v62 + ((v412 ^ 0x696E) >> 8));
  v425 = *(v62 + BYTE2(v419));
  v426 = *(v62 + (v419 >> 24));
  v427 = *(v62 + v415);
  v428 = *(v62 + v419);
  v429 = *(v62 + BYTE1(v417));
  v430 = *(v62 + BYTE2(v417));
  v431 = *(v62 + BYTE1(v415));
  v432 = *(v62 + ((v412 ^ 0x3C73696E) >> 16));
  v433 = (*(v71 + 8 * (v416 ^ a3)) ^ (32 * (*(v71 + 8 * (v416 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v416 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24;
  v434 = *(v71 + 8 * (v418 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v435 = (v434 ^ (32 * v434) ^ (8 * v434)) >> 32;
  v436 = *(v71 + 8 * (*(v62 + (BYTE3(v412) ^ 0x3CLL)) ^ a3));
  v437 = 0x4000000000;
  if ((v436 & 0x4000000000) != 0)
  {
    v437 = 0xFFFFFFC000000000;
  }

  v438 = v433 ^ ((*(v71 + 8 * (v420 ^ a3)) ^ (32 * (*(v71 + 8 * (v420 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v420 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 16);
  v439 = *(v71 + 8 * (v421 ^ a3));
  v440 = v435 ^ v438;
  v441 = *(v71 + 8 * (v422 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v442 = (v441 ^ (32 * v441) ^ (8 * v441)) >> 32;
  v443 = *(v71 + 8 * (v425 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v444 = ((v439 ^ (32 * (v439 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v439 ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((v443 ^ (32 * v443) ^ (8 * v443)) >> 8);
  v445 = *(v71 + 8 * (v423 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v446 = *(v71 + 8 * (v424 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v447 = v444 ^ ((v445 ^ (32 * v445) ^ (8 * v445)) >> 16);
  v448 = (0x18CB4FC383E94FCDLL - (*(v71 + 8 * (v426 ^ a3)) & 0x20000000000)) ^ *(v71 + 8 * (v426 ^ a3)) & 0xFFFFFDFFFFFFFFFFLL;
  v449 = *(v71 + 8 * (v427 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v450 = ((v449 ^ (32 * v449) ^ (8 * v449)) >> 32) ^ ((v448 ^ (32 * v448) ^ (8 * v448)) >> 24) ^ ((*(v71 + 8 * (v429 ^ a3)) ^ (32 * (*(v71 + 8 * (v429 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v429 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8) ^ ((v446 ^ (32 * v446) ^ (8 * v446)) >> 16);
  v451 = *(v71 + 8 * (v431 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v452 = *(v71 + 8 * (v430 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v452) = ((v451 ^ (32 * v451) ^ (8 * v451)) >> 24) ^ ((*(v71 + 8 * (v428 ^ a3)) ^ (32 * (*(v71 + 8 * (v428 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v428 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 16) ^ ((v452 ^ (32 * v452) ^ (8 * v452)) >> 32);
  v453 = *(v71 + 8 * (v432 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v454 = v440 ^ 0xF133B5DD ^ (((v437 + v436) ^ 0x18CB4F8383E94FCDLL ^ (32 * ((v437 + v436) ^ 0x18CB4F8383E94FCDLL)) ^ (8 * ((v437 + v436) ^ 0x18CB4F8383E94FCDLL))) >> 8);
  v455 = *(a10 + (v440 ^ 0xDDu ^ (((v437 + v436) ^ 0x4FCD ^ (32 * ((v437 + v436) ^ 0x4FCD)) ^ (8 * ((v437 + v436) ^ 0x4FCD))) >> 8)));
  v456 = v442 ^ v447 ^ 0xBE3E25D6;
  v457 = v450 ^ 0xEBF5A7DC;
  v458 = *(a10 + (v457 >> 24));
  v459 = v452 ^ 0xF77C9907 ^ ((v453 ^ (32 * v453) ^ (8 * v453)) >> 8);
  v460 = *(a10 + (v442 ^ v447 ^ 0xD6));
  v461 = *(a10 + BYTE2(v459));
  v462 = *(a10 + v457);
  v463 = *(a10 + v459);
  v464 = *(a10 + (v459 >> 24));
  v465 = *(a10 + BYTE1(v457));
  v466 = *(a10 + BYTE1(v454));
  v467 = *(a10 + BYTE1(v459));
  v468 = *(a10 + BYTE2(v457));
  v469 = *(v71 + 8 * (v455 ^ a3)) ^ (32 * (*(v71 + 8 * (v455 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v455 ^ a3)) ^ 0x18CB4FC383E94FCDLL));
  v470 = *(v71 + 8 * (*(a10 + (v456 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v469) = ((v470 ^ (32 * v470) ^ (8 * v470)) >> 8) ^ HIDWORD(v469);
  v471 = *(v71 + 8 * (v461 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v472 = *(v71 + 8 * (v460 ^ a3));
  LODWORD(v460) = v469 ^ ((*(v71 + 8 * (v458 ^ a3)) ^ (32 * (*(v71 + 8 * (v458 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v458 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 16) ^ ((v471 ^ (32 * v471) ^ (8 * v471)) >> 24);
  v473 = *(v71 + 8 * (v462 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v462) = ((v473 ^ (32 * v473) ^ (8 * v473)) >> 24) ^ ((v472 ^ (32 * (v472 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v472 ^ 0x18CB4FC383E94FCDuLL))) >> 16) ^ ((*(v71 + 8 * (v464 ^ a3)) ^ (32 * (*(v71 + 8 * (v464 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v464 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32);
  v474 = *(v71 + 8 * (v465 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v475 = *(v71 + 8 * (v463 ^ a3));
  v476 = (32 * (v475 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v475 ^ 0x18CB4FC383E94FCDLL));
  v477 = (v476 + (v475 ^ 0x4DD7EFF8BBB4444ALL) - 2 * (v476 & (v475 ^ 0x4DD7EFF8BBB4444AuLL))) >> 16;
  v478 = *(v71 + 8 * (*(a10 + BYTE2(v454)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v479 = *(v71 + 8 * (*(a10 + BYTE1(v456)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v474) = ((v478 ^ (32 * v478) ^ (8 * v478)) >> 24) ^ ((v474 ^ (32 * v474) ^ (8 * v474)) >> 8) ^ v477;
  v480 = *(v71 + 8 * (*(a10 + (v454 >> 24)) ^ a3));
  v481 = (*(v71 + 8 * (v467 ^ a3)) ^ (32 * (*(v71 + 8 * (v467 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v467 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8;
  v482 = (32 * (v480 ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (v480 ^ 0x18CB4FC383E94FCDLL));
  v483 = ((v482 ^ -v482 ^ ((v480 ^ 0x4DD7EFF8BBB4444ALL) - (v480 ^ 0x4DD7EFF8BBB4444ALL ^ v482))) + (v480 ^ 0x4DD7EFF8BBB4444AuLL)) >> 16;
  v484 = *(v71 + 8 * (*(a10 + BYTE2(v456)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v485 = v460 ^ 0x6E84EAC2;
  v486 = v462 ^ ((*(v71 + 8 * (v466 ^ a3)) ^ (32 * (*(v71 + 8 * (v466 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v466 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 8) ^ 0xFFCFAB12;
  v487 = v474 ^ ((v479 ^ (32 * v479) ^ (8 * v479)) >> 32) ^ 0xA23D1DEA;
  v488 = *(a10 + (v462 ^ ((*(v71 + 8 * (v466 ^ a3)) ^ (32 * (*(v71 + 8 * (v466 ^ a3)) ^ 0x4FCD)) ^ (8 * (*(v71 + 8 * (v466 ^ a3)) ^ 0x4FCD))) >> 8) ^ 0x12));
  v489 = ((v484 ^ (32 * v484) ^ (8 * v484)) >> 24) ^ v481 ^ ((*(v71 + 8 * (v468 ^ a3)) ^ (32 * (*(v71 + 8 * (v468 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v468 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32) ^ 0xBA0F008B ^ v483;
  v490 = *(a10 + v487);
  v491 = *(a10 + (v489 >> 24));
  v492 = *(a10 + ((v462 ^ ((*(v71 + 8 * (v466 ^ a3)) ^ (32 * (*(v71 + 8 * (v466 ^ a3)) ^ 0x83E94FCD)) ^ (8 * (*(v71 + 8 * (v466 ^ a3)) ^ 0x83E94FCD))) >> 8) ^ 0xAB12) >> 8));
  v493 = *(a10 + BYTE1(v489));
  v494 = *(a10 + BYTE2(v487));
  v495 = *(a10 + BYTE1(v487));
  v496 = *(a10 + v485);
  v497 = *(a10 + BYTE1(v485));
  v498 = *(a10 + BYTE2(v486));
  v499 = *(a10 + BYTE2(v489));
  v500 = *(a10 + v489);
  v501 = *(a10 + (v486 >> 24));
  v502 = *(a10 + (v487 >> 24));
  v503 = *(v71 + 8 * (*(a10 + (v485 >> 24)) ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v504 = *(a10 + BYTE2(v485));
  v505 = *(v71 + 8 * (v490 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v485) = ((*(v71 + 8 * (v488 ^ a3)) ^ (32 * (*(v71 + 8 * (v488 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v488 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((v503 ^ (32 * v503) ^ (8 * v503)) >> 16) ^ ((v505 ^ (32 * v505) ^ (8 * v505)) >> 32);
  v506 = *(v71 + 8 * (v491 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v507 = (v506 ^ (32 * v506) ^ (8 * v506)) >> 8;
  v508 = *(v71 + 8 * (v495 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v506) = ((v508 ^ (32 * v508) ^ (8 * v508)) >> 8) ^ ((*(v71 + 8 * (v492 ^ a3)) ^ (32 * (*(v71 + 8 * (v492 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v492 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 32);
  v509 = *(v71 + 8 * (v500 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v510 = *(v71 + 8 * (v496 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v496) = v506 ^ ((v509 ^ (32 * v509) ^ (8 * v509)) >> 16);
  v511 = *(v71 + 8 * (v494 ^ a3));
  v512 = *(v71 + 8 * (v493 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v513 = ((*(v71 + 8 * (v498 ^ a3)) - (*(v71 + 8 * (v498 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ 0xFFFFFFFFFFFFFFFELL) + *(v71 + 8 * (v498 ^ a3));
  v514 = *(v71 + 8 * (v499 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v511) = ((*(v71 + 8 * (v497 ^ a3)) ^ (32 * (*(v71 + 8 * (v497 ^ a3)) ^ 0x18CB4FC383E94FCDLL)) ^ (8 * (*(v71 + 8 * (v497 ^ a3)) ^ 0x18CB4FC383E94FCDuLL))) >> 24) ^ ((v512 ^ (32 * v512) ^ (8 * v512)) >> 16) ^ ((v513 ^ (32 * v513) ^ (8 * v513)) >> 32) ^ ((v511 ^ (8 * (((4 * (v511 ^ 0x18CB4FC383E94FCDLL)) ^ (-4 * (v511 ^ 0x18CB4FC383E94FCDLL)) ^ ((v511 ^ 0x18CB4FC383E94FCDLL) - ((4 * (v511 ^ 0x18CB4FC383E94FCDLL)) ^ v511 ^ 0x18CB4FC383E94FCDLL))) + (v511 ^ 0x18CB4FC383E94FCDuLL)))) >> 8);
  v515 = *(v71 + 8 * (v504 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v516 = *(v71 + 8 * (v501 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  v517 = *(v71 + 8 * (v502 ^ a3)) ^ 0x18CB4FC383E94FCDLL;
  LODWORD(v514) = ((v515 ^ (32 * v515) ^ (8 * v515)) >> 24) ^ ((v516 ^ (32 * v516) ^ (8 * v516)) >> 32) ^ ((v514 ^ (32 * v514) ^ (8 * v514)) >> 16);
  v518 = v496 ^ ((v510 ^ (32 * v510) ^ (8 * v510)) >> 24) ^ 0xED471B1;
  v519 = v485 ^ v507 ^ 0x2974DCF6;
  v520 = v511 ^ 0x9219EB3C;
  v521 = v514 ^ ((v517 ^ (32 * v517) ^ (8 * v517)) >> 8) ^ 0xE6529A41;
  LODWORD(v497) = (*(a10 + BYTE1(v519)) << 24) | (*(a10 + BYTE2(v518)) << 16) | *(a10 + BYTE2(v521)) | (*(a10 + (v511 ^ 0x3Cu)) << 8);
  v522 = (__ROR8__(a59, 8) & 0xF8FFFFFFFFFFFFFFLL) - 0x2607A7720729A79;
  v523 = __ROR8__(v522 ^ 0xDE361A1E0EB919D3, 8);
  v522 ^= 0x32CA3658F2D235ECuLL;
  v524 = (v523 + v522) ^ 0x3EC7945A9334A12DLL;
  v526 = __ROR8__(v522, 61);
  v525 = v524 ^ v526;
  v527 = ((v524 ^ v526) + (v524 << 56) + (v524 >> 8)) ^ 0x4ABA94BA7BE94F4;
  v528 = v527 ^ __ROR8__(v525, 61);
  v529 = (__ROR8__(v527, 8) + v528) ^ 0x87C30A0A7B081733;
  v530 = v529 ^ __ROR8__(v528, 61);
  v531 = (v530 + __ROR8__(v529, 8)) ^ 0x257DF8190A0FAA7CLL;
  v532 = v531 ^ __ROR8__(v530, 61);
  v533 = (v532 + __ROR8__(v531, 8)) ^ 0x2E769D09049CAA6ALL;
  v534 = v533 ^ __ROR8__(v532, 61);
  v535 = (v534 + __ROR8__(v533, 8)) ^ 0xCAC8DE2EE114DF37;
  v536 = __ROR8__(v535, 8);
  v537 = v535 ^ __ROR8__(v534, 61);
  v538 = __ROR8__((a59 + 8) & 0xFFFFFFFFFFFFFFF8, 8) - 0x2607A7720729A79;
  v539 = __ROR8__(v538 ^ 0xDE361A1E0EB919D3, 8);
  v538 ^= 0x32CA3658F2D235ECuLL;
  v540 = (v539 + v538) ^ 0x3EC7945A9334A12DLL;
  v541 = v540 ^ __ROR8__(v538, 61);
  v542 = __ROR8__(v540, 8) + v541;
  v544 = __ROR8__(v541, 61);
  v543 = v542 ^ v544;
  v545 = (v542 ^ v544 ^ 0x4ABA94BA7BE94F4) + ((v542 ^ 0x4ABA94BA7BE94F4uLL) >> 8) + ((v542 ^ 0x4ABA94BA7BE94F4) << 56);
  *(&v546 + 1) = v543 ^ 0x4ABA94BA7BE94F4;
  *&v546 = v543;
  v545 ^= 0x87C30A0A7B081733;
  v547 = v545 ^ (v546 >> 61);
  v548 = (v547 + __ROR8__(v545, 8)) ^ 0x257DF8190A0FAA7CLL;
  v549 = v548 ^ __ROR8__(v547, 61);
  v550 = (__ROR8__(v548, 8) + v549) ^ 0x2E769D09049CAA6ALL;
  v551 = v550 ^ __ROR8__(v549, 61);
  v552 = (v551 + __ROR8__(v550, 8)) ^ 0xCAC8DE2EE114DF37;
  v553 = (__ROR8__(v552, 8) + (v552 ^ __ROR8__(v551, 61))) ^ 0x67C4AB124F7C297BLL;
  LOBYTE(v552) = 8 * (a59 & 7);
  v554 = ((v537 + v536) ^ 0x67C4AB124F7C297BLL) >> v552;
  v555 = v554 + 4 * (v553 << (v552 ^ 0x3Eu));
  v556 = (__ROR8__(a59 + 16, 8) & 0xF8FFFFFFFFFFFFFFLL) - 0x2607A7720729A79;
  *&v546 = __ROR8__(v556 ^ 0xDE361A1E0EB919D3, 8);
  v556 ^= 0x32CA3658F2D235ECuLL;
  v557 = (v546 + v556) ^ 0x3EC7945A9334A12DLL;
  v558 = v557 ^ __ROR8__(v556, 61);
  v559 = (v558 + __ROR8__(v557, 8)) ^ 0x4ABA94BA7BE94F4;
  v560 = v559 ^ __ROR8__(v558, 61);
  v561 = (__ROR8__(v559, 8) + v560) ^ 0x87C30A0A7B081733;
  v562 = v561 ^ __ROR8__(v560, 61);
  v563 = (v562 + __ROR8__(v561, 8)) ^ 0x257DF8190A0FAA7CLL;
  v564 = v563 ^ __ROR8__(v562, 61);
  v565 = (v564 + __ROR8__(v563, 8)) ^ 0x2E769D09049CAA6ALL;
  v566 = v565 ^ __ROR8__(v564, 61);
  v567 = (v566 + __ROR8__(v565, 8)) ^ 0xCAC8DE2EE114DF37;
  v568 = v567 ^ __ROR8__(v566, 61);
  *&v546 = __ROR8__(v567, 8);
  v593 = v555 >> 8;
  LODWORD(v567) = v497 ^ 0x6775DE63;
  v569 = *(a57 + (v554 ^ a53 ^ 0x4E)) ^ ((v497 ^ 0x6775DE63) >> 24);
  LODWORD(v566) = *(a57 + ((BYTE1(v555) ^ a53) ^ 0x7Cu)) ^ ((v497 ^ 0x6775DE63) >> 16);
  v591 = v555 >> 16;
  LODWORD(v491) = *(a57 + (BYTE2(v555) ^ a53 ^ 0x28u)) ^ ((v497 ^ 0x6775DE63) >> 8);
  v592 = HIDWORD(v555);
  LODWORD(v507) = *(a57 + (BYTE4(v555) ^ a53 ^ 0x94u)) ^ 0xFFFFFFB5;
  LODWORD(v493) = ((*(a10 + (v518 >> 24)) << 8) | (*(a10 + (v521 >> 24)) << 24) | *(a10 + BYTE1(v520)) | (*(a10 + BYTE2(v519)) << 16)) ^ 0xBD9E26C2;
  LODWORD(v507) = ((v507 >> 5) | (8 * v507)) ^ ((v493 >> 5) & 0xF8 | (v493 >> 13));
  LOBYTE(v500) = (v507 >> 3) | (32 * v507);
  LODWORD(v507) = (*(a10 + (v519 >> 24)) << 24) | (*(a10 + BYTE2(v520)) << 8) | (*(a10 + v518) << 16) | *(a10 + v521);
  v570 = v546 + v568;
  v590 = v555 >> 24;
  v589 = HIWORD(v555);
  v571 = *(a57 + (((v554 + 4 * (v553 << (v552 ^ 0x3E))) >> 24) ^ a53 ^ 5)) ^ v567;
  LODWORD(v494) = *(a57 + (BYTE6(v555) ^ a53 ^ 0xA9u)) ^ BYTE3(v493);
  v587 = HIBYTE(v555);
  LODWORD(v490) = *(a57 + (HIBYTE(v555) ^ a53 ^ 0x9Au)) ^ WORD1(v493);
  v588 = v555 >> 40;
  v572 = *(a57 + (BYTE5(v555) ^ a53 ^ 0xD1u)) ^ *(a10 + BYTE1(v520)) ^ 0xC2;
  v573 = v69;
  v574 = *(&off_100755B60 + (v69 ^ 0xB6D)) - 4;
  LOBYTE(v555) = v569 ^ v574[v569 ^ 0x41];
  LOBYTE(v568) = v566 ^ v574[v566 ^ 0x41];
  v575 = v571 ^ v574[v571 ^ 0x41];
  LOBYTE(v571) = v572 ^ v574[v572 ^ 0x41];
  v576 = v491 ^ v574[v491 ^ 0x41];
  v577 = v553 >> v552;
  LODWORD(v491) = v507 ^ 0xCEA4DA1;
  LODWORD(v507) = *(a57 + (v577 ^ a53 ^ 0x69)) ^ ((v507 ^ 0xCEA4DA1) >> 8) ^ v574[(*(a57 + (v577 ^ a53 ^ 0x69)) ^ ((v507 ^ 0x4DA1) >> 8)) ^ 0x41];
  LOBYTE(v569) = v500 ^ 0xBD ^ v574[v500 ^ 0xF4];
  LOBYTE(v500) = v490 ^ v574[v490 ^ 0x41];
  v578 = v494 ^ v574[v494 ^ 0x41];
  v579 = v577 + 4 * ((v570 ^ 0x27C4AB124F7C297BLL) << (v552 ^ 0x3Eu));
  LOBYTE(v570) = *(a57 + ((BYTE1(v579) ^ a53) ^ 0x11u)) ^ v491 ^ v574[(*(a57 + ((BYTE1(v579) ^ a53) ^ 0x11u)) ^ v491) ^ 0x41];
  LODWORD(v552) = *(a57 + ((BYTE2(v579) ^ a53) ^ 0xF1u)) ^ BYTE3(v491) ^ v574[(*(a57 + ((BYTE2(v579) ^ a53) ^ 0xF1u)) ^ BYTE3(v491)) ^ 0x41];
  LODWORD(v518) = (*(a10 + (v520 >> 24)) | (*(a10 + v519) << 16) | (*(a10 + BYTE1(v521)) << 24) | (*(a10 + BYTE1(v518)) << 8)) ^ 0xBD6A5F57;
  v580 = *(a57 + (BYTE4(v579) ^ a53 ^ 0x21u)) ^ BYTE3(v518) ^ v574[(*(a57 + (BYTE4(v579) ^ a53 ^ 0x21u)) ^ BYTE3(v518)) ^ 0x41];
  v581 = *(a57 + (BYTE5(v579) ^ a53 ^ 0x27u)) ^ WORD1(v518) ^ v574[(*(a57 + (BYTE5(v579) ^ a53 ^ 0x27u)) ^ BYTE2(v518)) ^ 0x41];
  LODWORD(v494) = *(a57 + (BYTE3(v579) ^ a53 ^ 0xC5u)) ^ WORD1(v491) ^ v574[(*(a57 + (BYTE3(v579) ^ a53 ^ 0xC5u)) ^ BYTE2(v491)) ^ 0x41];
  LOBYTE(v490) = *(a57 + ((HIBYTE(v579) ^ a53) ^ 0x40u)) ^ v518 ^ v574[(*(a57 + ((HIBYTE(v579) ^ a53) ^ 0x40u)) ^ v518) ^ 0x41];
  LODWORD(v518) = *(a57 + (BYTE6(v579) ^ a53 ^ 0x8Cu)) ^ (v518 >> 8);
  v582 = v518 ^ v574[v518 ^ 0x41];
  *a59 = v555 ^ 8;
  a59[1] = v568 ^ 8;
  a59[3] = v575 ^ 8;
  a59[2] = v576 ^ 8;
  a59[5] = v571 ^ 8;
  v583 = v507 ^ 8;
  a59[8] = v507 ^ 8;
  a59[4] = v569;
  a59[7] = v500 ^ 8;
  a59[6] = v578 ^ 8;
  a59[9] = v570 ^ 8;
  a59[10] = v552 ^ 8;
  a59[12] = v580 ^ 8;
  a59[13] = v581 ^ 8;
  a59[11] = v494 ^ 8;
  a59[15] = v490 ^ 8;
  a59[14] = v582 ^ 8;
  if (a56 < 0x9A5B1D0F != a54 - 1705304801 < 0x9A5B1D0F)
  {
    v584 = a56 < 0x9A5B1D0F;
  }

  else
  {
    v584 = a54 - 1705304801 < a56;
  }

  v585 = *(a60 + 8 * (v573 ^ (7998 * v584)));
  return v585(v585, v583, a3, v581 ^ 8, a54, v575 ^ 8u, v582 ^ 8u, v580 ^ 8, a9, a10, a11, HIWORD(v579), HIDWORD(v579), HIBYTE(v579), v579 >> 24, v579 >> 40, v579 >> 16, v579 >> 8, v587, v588, v589, v590, v591, v592, v593, v554, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_100047870(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unsigned __int8 a40, uint64_t a41, unsigned __int8 a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  v56 = 3 * (a28 ^ 0x1F84);
  v65 = a1 ^ 0x13u;
  LODWORD(a29) = *(a47 + (a29 ^ 0x5DLL)) ^ *(a47 + (v54 ^ 0xB3));
  v57 = *(a47 + (a32 ^ 0x5DLL)) ^ *(a47 + (((v56 - 75) ^ v54) ^ 0x2ALL));
  LODWORD(a33) = *(a47 + (v54 ^ 0xD7));
  LODWORD(a32) = *(a47 + (v54 ^ 0xD3));
  v58 = v65;
  LODWORD(v65) = *(a47 + (v54 ^ 0x71));
  LODWORD(a36) = ((*(a47 + (v54 ^ 0xBELL)) ^ *(a47 + (v55 ^ 0x5DLL)) ^ 0x9A) << 24) & 0xFA000000;
  v59 = *(a47 + (a42 ^ 0x5DLL)) ^ *(a47 + (v54 ^ 0xCFLL));
  v60 = (*(a47 + (a40 ^ 0x5DLL)) ^ v65) << 16;
  v61 = (*(a47 + (v58 ^ 0x9E)) << 24) ^ 0xA3FFBB0B;
  v62 = 0xD10BA1A4035EB46DLL * *(v53 + 8 * (a30 & 7 ^ 0xC7));
  v63 = 0xD10BA1A4035EB46DLL * *(v53 + 8 * (((a30 & 7 ^ 0xAF36DD6F) & ~(1 << (v56 ^ 0xFB)) | (1 << (v56 ^ 0xFB)) & 0x90) ^ 0xAF36DDA8));
  *(&a51 + (~a30 >> 3)) = v52 ^ v51 ^ 0x8B2B426DDDB2962ELL ^ v62 ^ (v62 >> 4) & 0xC4616F6EC3FF13ALL;
  *(&a51 + ((~a30 >> 3) ^ 1u)) = v52 ^ v51 ^ 0x8B2B426DDDB2962ELL ^ v63 ^ (v63 >> 4) & 0xC4616F6EC3FF13ALL;
  return (*(a50 + 8 * v56))(*(a50 + 8 * v56), v56 ^ 0x7FBu, a3, v52 ^ v51 ^ 0x8B2B426DDDB2962ELL, v60, v61, v57 ^ 0xFFFFFFF3, (v59 << 8) ^ 0xFFFFF9EB, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, v65, v54 ^ 0xCu, v52 ^ v51, a29, a30, a31, a32, a33, a34, a35, a36);
}

uint64_t sub_100047DF8@<X0>(_DWORD *a1@<X3>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned int a11, int a12)
{
  *a1 = 0;
  v14 = v13 + a2;
  a11 = v13 - 1710126949 * (((&a11 | 0x26F9DF46) - &a11 + (&a11 & 0xD90620B8)) ^ 0x14E284D6) + 1259031490;
  v15 = (*(v12 + 8 * (v13 ^ 0xD158F4EC)))(&a11);
  return (*(v12 + 8 * (((a12 == 16257999) * (v14 + 2049)) ^ v14)))(v15);
}

uint64_t sub_1000480D0()
{
  v2.i64[0] = 0x7878787878787878;
  v2.i64[1] = 0x7878787878787878;
  v3 = vsubq_s8(v1[1], vandq_s8(vaddq_s8(v1[1], v1[1]), v2));
  v4 = vandq_s8(vaddq_s8(*v1, *v1), v2);
  v2.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v2.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  *v0 = vaddq_s8(vsubq_s8(*v1, v4), v2);
  v0[1] = vaddq_s8(v3, v2);
  return sub_100048118();
}

uint64_t sub_100048118()
{
  (*(v3 + 8 * (v0 ^ 0x2F2D)))(v2, 0, 24);
  *(v1 + 104) = 0x1FA834112;
  *(v1 + 112) = 0x200000004;
  STACK[0x8C0] = v2;
  LODWORD(STACK[0x40C]) = 0;
  STACK[0x708] = 0;
  v4 = (*(v3 + 8 * (v0 ^ 0x2F0F)))(128, 0x10800400FED9166);
  STACK[0x618] = v4;
  return (*(v3 + 8 * (((v4 != 0) * (((869 * (v0 ^ 0xAAA) + 595560508) & 0xDC8077C3) - 6081)) | v0)))();
}

uint64_t sub_100048468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unint64_t a15, uint64_t a16, int a17)
{
  a15 = 956911519 * ((v22 - 2 * (v22 & 0x476F404D94A63867) + 0x476F404D94A63867) ^ 0x25935917E374862) + v19 + ((v21 + 6397) ^ 0x9CD6A715681F7E5BLL) - ((v19 << ((v21 ^ 0x3Au) + 97)) & 0x39AD4E2AD03EC198);
  a16 = a11;
  a14 = (v21 - 412) ^ (956911519 * ((v22 - 2 * (v22 & 0x94A63867) - 1801045913) ^ 0x7E374862));
  (*(v20 + 8 * (v21 + 8165)))(&a14);
  v23 = 956911519 * ((~v22 & 0x3EF880EE121F02A6 | v22 & 0xC1077F11EDE0FD59) ^ 0x7BCEF532F88E72A3);
  a14 = (v21 - 412) ^ v23;
  a15 = v18 - ((2 * v18) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v23;
  a16 = a11;
  (*(v20 + 8 * (v21 ^ 0x20E5)))(&a14);
  v24 = 956911519 * ((~v22 & 0x6E2460BF8BE064D9 | v22 & 0x91DB9F40741F9B26) ^ 0x2B121563617114DCLL);
  a15 = v17 - ((2 * v17) & 0x39AD4E2AD03EC198) - 0x632958EA97E09F34 + v24;
  a16 = a11;
  a14 = (v21 - 412) ^ v24;
  v25 = (*(v20 + 8 * (v21 ^ 0x20E5)))(&a14);
  return (*(v20 + 8 * ((58 * (a17 != 16257999)) ^ v21)))(v25);
}

uint64_t sub_10004864C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (((v4 ^ 0x1236u) - 3917) ^ v3) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((14344 * ((v2 & 0xFFFFFFF8) - 8 == v3)) ^ v4)))();
}

uint64_t sub_1000486A0@<X0>(int a1@<W8>)
{
  STACK[0xBA0] = v1;
  v2 = STACK[0x968];
  STACK[0xBA8] = STACK[0x968];
  return (*(STACK[0x400] + 8 * (((v1 - v2 > (a1 + 5520) - 9239) * (((a1 - 3708) | 0x20A) + 6600)) ^ a1)))();
}

uint64_t sub_100048708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = STACK[0x680];
  STACK[0x938] = STACK[0x680];
  return (*(STACK[0x400] + 8 * (((2312 * (v3 ^ 0x486) + ((v3 - 1010) | 0x2027) - 17533) * (v4 == 0)) ^ v3)))(a1, a2, a3, 16215976);
}

uint64_t sub_100048B84(uint64_t a1, int8x16_t a2, int8x16_t a3, int64x2_t a4, int8x16_t a5, int64x2_t a6, int8x16_t a7, int8x16_t a8, int8x16_t a9, uint64_t a10, unsigned int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16)
{
  v27 = v17 - 16;
  v28.i64[0] = v27 + a1 - 5;
  v28.i64[1] = v27 + a1 - 6;
  v29.i64[0] = v27 + a1 - 3;
  v29.i64[1] = v27 + a1 - 4;
  v30.i64[0] = v27 + a1 - 1;
  v30.i64[1] = v27 + a1 - 2;
  v31.i64[0] = v27 + a1 + 5;
  v31.i64[1] = v27 + a1 + 4;
  v32.i64[0] = v27 + a1 + 7;
  v32.i64[1] = v27 + a1 + 6;
  v33.i64[0] = v27 + a1 + 9;
  v33.i64[1] = v27 + a1 + 8;
  v34.i64[0] = v27 + a1 + a15;
  v34.i64[1] = v27 + a1 + 2;
  v35 = vandq_s8(v34, a2);
  v36 = vandq_s8(v33, a2);
  v37 = vandq_s8(v32, a2);
  v38 = vandq_s8(v31, a2);
  v39 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v40 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v43 = vsubq_s64(v41, vandq_s8(vaddq_s64(vaddq_s64(v41, v41), a4), a5));
  v44 = vsubq_s64(v42, vandq_s8(vaddq_s64(vaddq_s64(v42, v42), a4), a5));
  v45 = vaddq_s64(vsubq_s64(v40, vandq_s8(vaddq_s64(vaddq_s64(v40, v40), a4), a5)), a6);
  v46 = vaddq_s64(vsubq_s64(v39, vandq_s8(vaddq_s64(vaddq_s64(v39, v39), a4), a5)), a6);
  v47 = veorq_s8(v46, a7);
  v48 = veorq_s8(v45, a7);
  v49 = veorq_s8(v45, a8);
  v50 = veorq_s8(v46, a8);
  v51 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v49), a9);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v47, 0x38uLL), v47, 8uLL), v50), a9);
  v53 = vsraq_n_u64(vshlq_n_s64(v49, 3uLL), v49, 0x3DuLL);
  v54 = veorq_s8(v52, vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL));
  v55 = veorq_s8(v51, v53);
  v56 = vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL);
  v57 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v51, 0x38uLL), v51, 8uLL), v55);
  v58 = veorq_s8(vaddq_s64(v56, v54), v18);
  v59 = veorq_s8(v57, v18);
  v60 = vsraq_n_u64(vshlq_n_s64(v54, 3uLL), v54, 0x3DuLL);
  v61 = veorq_s8(v59, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v62 = veorq_s8(v58, v60);
  v63 = vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL);
  v64 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v58, 0x38uLL), v58, 8uLL), v62);
  v65 = veorq_s8(vaddq_s64(v63, v61), v19);
  v66 = veorq_s8(v64, v19);
  v67 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v68 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v61, 3uLL), v61, 0x3DuLL));
  v69 = vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v68);
  v71 = vaddq_s64(v69, v67);
  v72 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v71, v71), v20), v71), v21), v22);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v70, v70), v20), v70), v21), v22);
  v74 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v75 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL));
  v76 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v75);
  v78 = veorq_s8(vaddq_s64(v76, v74), v23);
  v79 = veorq_s8(v77, v23);
  v80 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v81 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82 = veorq_s8(v78, v80);
  v83 = vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL);
  v84 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v82);
  v85 = veorq_s8(vaddq_s64(v83, v81), v24);
  v86 = veorq_s8(v84, v24);
  v87 = veorq_s8(v85, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v81.i64[0] = v27 + a1 + 1;
  v81.i64[1] = v27 + a1;
  v88 = vaddq_s64(v43, a6);
  v190.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v87), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a3)));
  v190.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a3)));
  v89 = veorq_s8(v88, a7);
  v90 = veorq_s8(v88, a8);
  v91 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90), a9);
  v92 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL));
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL), v92), v18);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v92, 3uLL), v92, 0x3DuLL));
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), v19);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v97 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v97, v97), v20), v97), v21), v22);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v100 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), v99), v23);
  v101 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL));
  v102 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v101), v24);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v102, 0x38uLL), v102, 8uLL), veorq_s8(v102, vsraq_n_u64(vshlq_n_s64(v101, 3uLL), v101, 0x3DuLL)));
  v104 = vandq_s8(v81, a2);
  v105 = vaddq_s64(v44, a6);
  v190.val[0] = vshlq_u64(veorq_s8(v103, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a3)));
  v106 = veorq_s8(v105, a7);
  v107 = veorq_s8(v105, a8);
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), a9);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109), v18);
  v111 = veorq_s8(v110, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v112 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v111), v19);
  v113 = veorq_s8(v112, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v112, 0x38uLL), v112, 8uLL), v113);
  v115 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v114, v114), v20), v114), v21), v22);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v23);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v118), v24);
  v120 = veorq_s8(v119, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v121 = vsraq_n_u64(vshlq_n_s64(v119, 0x38uLL), v119, 8uLL);
  v122 = vandq_s8(v30, a2);
  v123 = vaddq_s64(v121, v120);
  v124 = vandq_s8(v29, a2);
  v190.val[3] = vshlq_u64(veorq_s8(v123, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a3)));
  v125 = vandq_s8(v28, a2);
  v126 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v124, 0x38uLL), v124, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL);
  v130 = vsubq_s64(v128, vandq_s8(vaddq_s64(vaddq_s64(v128, v128), a4), a5));
  v131 = vaddq_s64(vsubq_s64(v127, vandq_s8(vaddq_s64(vaddq_s64(v127, v127), a4), a5)), a6);
  v132 = vaddq_s64(vsubq_s64(v126, vandq_s8(vaddq_s64(vaddq_s64(v126, v126), a4), a5)), a6);
  v127.i64[0] = vqtbl4q_s8(v190, v25).u64[0];
  v133 = veorq_s8(v132, a7);
  v190.val[0] = veorq_s8(v131, a7);
  v134 = veorq_s8(v131, a8);
  v135 = veorq_s8(v132, a8);
  v190.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v134), a9);
  v136 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v135), a9);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v138 = veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL);
  v139 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v138);
  v190.val[0] = veorq_s8(vaddq_s64(v190.val[1], v137), v18);
  v140 = veorq_s8(v139, v18);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v142 = veorq_s8(v190.val[0], v190.val[1]);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v142);
  v190.val[0] = veorq_s8(vaddq_s64(v190.val[1], v141), v19);
  v144 = veorq_s8(v143, v19);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v146 = veorq_s8(v190.val[0], v190.val[1]);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL);
  v147 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v146);
  v190.val[0] = vaddq_s64(v190.val[1], v145);
  v190.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v190.val[0], v190.val[0]), v20), v190.val[0]), v21), v22);
  v148 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v147, v147), v20), v147), v21), v22);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v150 = veorq_s8(v190.val[0], v190.val[1]);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL);
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v150);
  v190.val[0] = veorq_s8(vaddq_s64(v190.val[1], v149), v23);
  v152 = veorq_s8(v151, v23);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v154 = veorq_s8(v190.val[0], v190.val[1]);
  v190.val[1] = vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL);
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), v154);
  v190.val[0] = veorq_s8(vaddq_s64(v190.val[1], v153), v24);
  v156 = veorq_s8(v155, v24);
  v157 = vaddq_s64(v130, a6);
  v190.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v190.val[0], 0x38uLL), v190.val[0], 8uLL), veorq_s8(v190.val[0], vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), a3)));
  v190.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a3)));
  v158 = veorq_s8(v157, a7);
  v159 = veorq_s8(v157, a8);
  v160 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159), a9);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), v18);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v19);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v166, v166), v20), v166), v21), v22);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v23);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170), v24);
  v172 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), veorq_s8(v171, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL)));
  v173 = vaddq_s64(vsubq_s64(v129, vandq_s8(vaddq_s64(vaddq_s64(v129, v129), a4), a5)), a6);
  v190.val[1] = vshlq_u64(veorq_s8(v172, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a3)));
  v174 = veorq_s8(v173, a7);
  v175 = veorq_s8(v173, a8);
  v176 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), v175), a9);
  v177 = veorq_s8(v176, vsraq_n_u64(vshlq_n_s64(v175, 3uLL), v175, 0x3DuLL));
  v178 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v176, 0x38uLL), v176, 8uLL), v177), v18);
  v179 = veorq_s8(v178, vsraq_n_u64(vshlq_n_s64(v177, 3uLL), v177, 0x3DuLL));
  v180 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179), v19);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL));
  v182 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181);
  v183 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v182, v182), v20), v182), v21), v22);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v185 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184), v23);
  v186 = veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v187 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186), v24);
  v190.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v187, 0x38uLL), v187, 8uLL), veorq_s8(v187, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v81, 3uLL), a3)));
  v127.i64[1] = vqtbl4q_s8(v190, v25).u64[0];
  v188 = vrev64q_s8(v127);
  *(v81.i64[1] - 6) = veorq_s8(vextq_s8(v188, v188, 8uLL), *(a14 - 16 + a1));
  return (*(v16 + 8 * (((a13 == 16) * a16) ^ a11)))();
}

uint64_t sub_100048B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a15 = &a12;
  a17 = 1317436891 * ((((2 * &a15) | 0xCDEF1EA) - &a15 + 2039514891) ^ 0x366CE083) + 8154;
  v20 = (*(v18 + 77096))(&a15);
  return (*(v18 + 8 * ((14201 * (a16 == v19)) ^ v17)))(v20);
}

uint64_t sub_100048C18()
{
  v3 = 7 * (v2 ^ 0xB03);
  v4 = (v3 - 399971687) & 0x17D71DFD;
  v10 = v6;
  v11 = (v3 + 5077) ^ (((&v9 & 0xAEACBA1F | ~(&v9 | 0xAEACBA1F)) ^ 0x93A9682) * v1);
  (*(v0 + 8 * (v3 + 6343)))(&v9);
  v10 = v7;
  v11 = (v4 + 2878) ^ (((2 * (&v9 & 0x3137ACE8) - &v9 - 825732335) ^ 0x96A18073) * v1);
  (*(v0 + 8 * (v4 ^ 0x30D0)))(&v9);
  return (v8 ^ 0x67FCB3FF) - 1728356400 + ((v3 ^ 0xCFF96B3A) & (2 * v8)) - 16257999;
}

uint64_t sub_100048DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = 1317436891 * ((&a14 + 859900673 - 2 * (&a14 & 0x33410B01)) ^ 0x83429377) + 8154;
  v18 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * (((a15 == 16257999) * ((v17 - 1504397114) ^ 0x3A06)) ^ 0x1E97)))(v18);
}

uint64_t sub_100048F10(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return (*(v3 + 8 * ((11 * (((149 * (v2 ^ 0xA06) + 647) ^ 0xBC59C3C ^ v1 ^ ((149 * (v2 ^ 0xA06) + 1378) | 0x42)) != 0)) ^ (149 * (v2 ^ 0xA06)))))();
}

uint64_t sub_100048F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (a1 + v2 - 16);
  v7 = (a2 + v2 - 16);
  v8 = *v7;
  *(v6 - 1) = *(v7 - 1);
  *v6 = v8;
  return (*(v4 + 8 * ((((v2 & 0xFFFFFFE0) == 32) * (802 * (v3 ^ (v5 - 6)) + 7207)) ^ (v3 + 782715465))))();
}

uint64_t sub_100048FCC()
{
  v3 = STACK[0x5B0];
  STACK[0x698] = STACK[0x5B0];
  v4 = STACK[0x5F0];
  v5 = STACK[0x5A8];
  v6 = 2048652491 * ((((v2 - 232) | 0x6615652B) + (~(v2 - 232) | 0x99EA9AD4)) ^ 0xD7A4F22F);
  v7 = (((LODWORD(STACK[0x554]) ^ 0x8AB466B7) + 1967888713) ^ ((LODWORD(STACK[0x554]) ^ 0x1FDE0A17) - 534645271) ^ ((LODWORD(STACK[0x554]) ^ 0x9EAFF5F3) + 1632635405)) - v6 + 340520430;
  *(v2 - 208) = v6 + v0 + 4106;
  *(v2 - 204) = v7;
  *(v2 - 224) = v4;
  *(v2 - 216) = v5;
  *(v2 - 192) = v3;
  *(v2 - 184) = v3;
  *(v2 - 200) = v6 ^ 0x6600C1C6;
  v8 = (*(v1 + 8 * (v0 + 8225)))(v2 - 232);
  return (*(v1 + 8 * ((9478 * (*(v2 - 232) == 31 * (((v0 + 4209) | 0x1C0) ^ 0x17DA) + 16257224)) ^ v0)))(v8, 197499219);
}

void sub_10004918C()
{
  v3 = *(v0 + 8) - v2;
  *v4 = (HIBYTE(v3) ^ 0x9C) - 2 * ((HIBYTE(v3) ^ 0x9C) & 0x3D ^ HIBYTE(v3) & 1) + 60;
  v4[1] = (BYTE6(v3) ^ 0xD6) - ((2 * (BYTE6(v3) ^ 0xD6)) & 0x78) + 60;
  v4[2] = (BYTE5(v3) ^ 0xA7) + (~(2 * (BYTE5(v3) ^ 0xA7)) | 0x87) + 61;
  v4[3] = (BYTE4(v3) ^ 0x15) - ((2 * (BYTE4(v3) ^ 0x15)) & 0x78) + 60;
  v4[4] = (BYTE3(v3) ^ 0x68) - 2 * ((BYTE3(v3) ^ 0x68) & 0x3D ^ BYTE3(v3) & 1) + 60;
  v4[5] = (BYTE2(v3) ^ 0x1F) - ((2 * (BYTE2(v3) ^ 0x1F)) & 0x78) + 60;
  v4[6] = (BYTE1(v3) ^ 0x60) - 2 * ((BYTE1(v3) ^ 0x60) & 0x3D ^ BYTE1(v3) & 1) + 60;
  v4[7] = v3 ^ 0xF0;
  *(v0 + 24) = *(v1 + 24);
}

uint64_t sub_1000492C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, int a11, uint64_t a12, int a13, unsigned int a14)
{
  v17 = 914963389 * ((&a10 + 315556834 - 2 * (&a10 & 0x12CF03E2)) ^ 0x3E33B299);
  a10 = &a9;
  a13 = v17 ^ 0x19EC4101;
  a14 = -1693904160 - v17;
  a11 = (v15 - 34) ^ v17;
  a12 = v14;
  v18 = (*(v16 + 8 * (v15 ^ 0x263E)))(&a10);
  return (*(v16 + 8 * ((8802 * (*(v14 + 24) == 16257999)) ^ v15)))(v18);
}

uint64_t sub_100049374()
{
  v2 = STACK[0x440];
  STACK[0x838] = *(v1 + 8 * (v0 - 6242));
  return (*(v1 + 8 * ((v0 - 6242) ^ 0x17BF ^ ((((v2 == 0) ^ (((v0 - 98) ^ 0xBF) + 1)) & 1) * (v0 - 6531)))))();
}

void sub_1000493BC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned int a18, int a19, char *a20)
{
  v21 = 2048652491 * ((((&a18 | 0x3571401E) ^ 0xFFFFFFFE) - (~&a18 | 0xCA8EBFE1)) ^ 0x7B3F28E4);
  a20 = &a11;
  a18 = v21 + (a1 ^ 0x89FB33FF) + ((a1 << ((v20 ^ 3) + 39)) & 0x13F667FE) + 1996283856;
  a19 = (v20 ^ 0x18AE) - v21 + 2753;
  JUMPOUT(0x10004945CLL);
}

uint64_t sub_1000494A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = v9 - 1;
  a9 = v12;
  *(a2 + v12) = (&a9 ^ 0xBA) * (&a9 + 17);
  v13 = *(v11 + 8 * ((2368 * (v12 == 0)) ^ (v10 - 3904)));
  return v13(v13);
}

uint64_t sub_1000494F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unsigned int a21, int a22)
{
  *a5 = 0;
  *a6 = 0;
  a21 = 476323082 - 1710126949 * ((773898187 - (&a21 | 0x2E20BFCB) + (&a21 | 0xD1DF4034)) ^ 0xE3C41BA4);
  v23 = (*(v22 + 77088))(&a21);
  return (*(v22 + 8 * ((360 * (a22 == 16257999)) | 0x1686u)))(v23);
}

uint64_t sub_1000495B4@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = a1 - 7070;
  v10 = (a1 + 671113435) | 0x450205;
  *(v8 - 136) = a1 - 7070 + ((v8 + 1496915627 - 2 * ((v8 - 136) & 0x59391F33)) ^ 0x6B2244A3) * v7 + 3074;
  *(v8 - 128) = &a6;
  v11 = (*(v6 + 8 * (a1 + 1331)))(v8 - 136);
  return (*(v6 + 8 * (((*(v8 - 120) == v10 - 659386246) * (v9 ^ 0x1CDF)) ^ v9)))(v11);
}

uint64_t sub_100049664@<X0>(unsigned int a1@<W8>, uint64_t a2, uint64_t a3, int a4)
{
  if (v6)
  {
    v7 = a4 == ((a1 - 802596462) & 0x2FD687EF ^ 0x6CB);
  }

  else
  {
    v7 = 1;
  }

  v9 = v7 || v5 == 0;
  return (*(v4 + 8 * (((2 * (((a1 + 114) ^ v9) & 1)) & 0xFB | (4 * (((a1 + 1745351282) ^ v9) & 1))) ^ a1)))();
}

uint64_t sub_1000497F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16, unsigned int a17, uint64_t a18, uint64_t a19)
{
  v23 = 1824088897 * ((2 * (&a15 & 0x2E772E98) - &a15 - 779562653) ^ 0x89E10201);
  a15 = v23 + 3757;
  a17 = ((2 * v20) & 0xBDCBD59E) - v23 + (v20 ^ 0x5EE5EACF) - 272695365;
  a18 = v19;
  a19 = a13;
  v24 = (*(v21 + 77048))(&a15);
  return (*(v21 + 8 * (((32 * (a16 == v22)) | ((a16 == v22) << 9)) ^ 0x932u)))(v24);
}

uint64_t sub_1000498AC()
{
  v2 = STACK[0x538];
  STACK[0x4D0] = *(v1 + 8 * (v0 + 577));
  return sub_1001AD354(v2);
}

uint64_t sub_1000498DC()
{
  v2 = (*(v1 + 8 * (v0 + 277)))(64, 0x100004077774924);
  STACK[0x558] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 - 6075) ^ 0xB43) - 1891)) ^ v0)))();
}

uint64_t sub_100049938(uint64_t a1)
{
  *v3 = a1;
  *v2 = v8;
  v5 = ((v1 + 2164275) & 0xFFDEFBDD) + 735;
  v11 = v7;
  v12 = (((v1 + 2164275) & 0xFFDEFBDD) + 3265) ^ (1824088897 * (&v10 ^ 0x5869D362));
  (*(v4 + 8 * (((v1 + 2164275) & 0xFFDEFBDD) + 4531)))(&v10);
  v12 = (v5 + 2530) ^ (1824088897 * (((&v10 | 0xC30D1145) + (~&v10 | 0x3CF2EEBA)) ^ 0x9B64C226));
  v11 = v9;
  (*(v4 + 8 * (v5 + 3796)))(&v10);
  return 0;
}

uint64_t sub_100049A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int8x16_t a25, int8x16_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int8x16_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int8x16_t a42, int8x16_t a43, uint64_t a44, uint64_t a45, int8x16_t a46, int8x16_t a47, int64x2_t a48, int8x16_t a49, int8x16_t a50, int8x16_t a51, int8x16_t a52, int64x2_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int8x16_t a58)
{
  v64 = (a16 + v58 + a21 + a22);
  v65 = 1213 * (a2 ^ 0x549);
  v66.i64[0] = v59 + v58 - 15;
  v66.i64[1] = v59 + v58 - 16;
  v255 = v66;
  v66.i64[0] = v59 + v58 - 13;
  v66.i64[1] = v59 + v58 - 14;
  v254 = v66;
  v67.i64[0] = v59 + v58 - 7;
  v67.i64[1] = v59 + v58 - 8;
  v68.i64[0] = v59 + v58 - 3;
  v68.i64[1] = v59 + v58 - 4;
  v69.i64[0] = v59 + v58 - 1;
  v69.i64[1] = v59 + v58 - 2;
  v70.i64[0] = v59 + v58 - 5;
  v70.i64[1] = v59 + v58 + (v65 ^ 0xFFFFFFFFFFFFE394);
  v71 = vandq_s8(v70, a37);
  v72 = vandq_s8(v69, a37);
  v73 = vandq_s8(v68, a37);
  v74 = vandq_s8(v67, a37);
  v75 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v76 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v77 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v78 = vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL);
  v252 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v78), *&STACK[0x210]), vorrq_s8(vaddq_s64(v78, *&STACK[0x270]), *&STACK[0x230]));
  v79 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v77), *&STACK[0x210]), vorrq_s8(vaddq_s64(v77, *&STACK[0x270]), *&STACK[0x230]));
  v80 = vsubq_s64(a53, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v75), *&STACK[0x210]), vorrq_s8(vaddq_s64(v75, *&STACK[0x270]), *&STACK[0x230])));
  v81 = vsubq_s64(a53, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v76), *&STACK[0x210]), vorrq_s8(vaddq_s64(v76, *&STACK[0x270]), *&STACK[0x230])));
  v82 = veorq_s8(v81, a52);
  v83 = veorq_s8(v80, a52);
  v84 = veorq_s8(v80, a51);
  v85 = veorq_s8(v81, a51);
  v86 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v83, 0x38uLL), v83, 8uLL), v84), a50);
  v87 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v85), a50);
  v88 = veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v89 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v84, 3uLL), v84, 0x3DuLL));
  v90 = vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL);
  v91 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v89);
  v92 = vaddq_s64(v90, v88);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v92, v92), a49), v92), a48), a47);
  v94 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v91, v91), a49), v91), a48), a47);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v96 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v88, 3uLL), v88, 0x3DuLL));
  v97 = vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v96);
  v99 = veorq_s8(vaddq_s64(v97, v95), a46);
  v100 = veorq_s8(v98, a46);
  v101 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v102 = veorq_s8(v100, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v103 = veorq_s8(v99, v101);
  v104 = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v103);
  v106 = veorq_s8(vaddq_s64(v104, v102), *&STACK[0x200]);
  v107 = veorq_s8(v105, *&STACK[0x200]);
  v108 = vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL);
  v109 = veorq_s8(v107, vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL));
  v110 = veorq_s8(v106, v108);
  v111 = vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL);
  v112 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v110);
  v113 = vaddq_s64(v111, v109);
  v114 = veorq_s8(v113, a58);
  v115 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v113, v62), v63), v114), vandq_s8(v114, v62));
  v116 = veorq_s8(v112, a58);
  v117 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v112, v62), v63), v116), vandq_s8(v116, v62)), a43);
  v118 = veorq_s8(v115, a43);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v120 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v121 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), a42);
  v122 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL), v120), a42);
  v123 = vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL);
  v124 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v125 = veorq_s8(v121, v123);
  v126 = vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL);
  v127 = vsraq_n_u64(vshlq_n_s64(v121, 0x38uLL), v121, 8uLL);
  v128.i64[0] = v59 + v58 - 11;
  v128.i64[1] = v59 + v58 - 12;
  v129 = vsubq_s64(a53, v79);
  v257.val[3] = vshlq_u64(veorq_s8(vaddq_s64(v127, v125), v61), vnegq_s64(vandq_s8(vshlq_n_s64(v67, 3uLL), a26)));
  v257.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v126, v124), v61), vnegq_s64(vandq_s8(vshlq_n_s64(v68, 3uLL), a26)));
  v130 = veorq_s8(v129, a52);
  v131 = veorq_s8(v129, a51);
  v132 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131), a50);
  v133 = veorq_s8(v132, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v134 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v133);
  v135 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v134, v134), a49), v134), a48), a47);
  v136 = veorq_s8(v135, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v135, 0x38uLL), v135, 8uLL), v136), a46);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), *&STACK[0x200]);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140);
  v142 = veorq_s8(v141, a58);
  v143 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v141, v62), v63), v142), vandq_s8(v142, v62)), a43);
  v144 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v145 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v144), a42);
  v142.i64[0] = v59 + v58 - 9;
  v142.i64[1] = v59 + v58 - 10;
  v146 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL)));
  v147 = vandq_s8(v142, a37);
  v148 = vsubq_s64(a53, v252);
  v257.val[0] = vshlq_u64(veorq_s8(v146, v61), vnegq_s64(vandq_s8(vshlq_n_s64(v69, 3uLL), a26)));
  v149 = veorq_s8(v148, a52);
  v150 = veorq_s8(v148, a51);
  v151 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL), v150), a50);
  v152 = veorq_s8(v151, vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL));
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v151, 0x38uLL), v151, 8uLL), v152);
  v154 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v153, v153), a49), v153), a48), a47);
  v155 = veorq_s8(v154, vsraq_n_u64(vshlq_n_s64(v152, 3uLL), v152, 0x3DuLL));
  v156 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v154, 0x38uLL), v154, 8uLL), v155), a46);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), *&STACK[0x200]);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159);
  v161 = veorq_s8(v160, a58);
  v162 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v160, v62), v63), v161), vandq_s8(v161, v62)), a43);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), a42);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL);
  v167 = vandq_s8(v128, a37);
  v168 = vaddq_s64(v166, v165);
  v169 = vandq_s8(v254, a37);
  v257.val[2] = vshlq_u64(veorq_s8(v168, v61), vnegq_s64(vandq_s8(vshlq_n_s64(v70, 3uLL), a26)));
  v170 = vandq_s8(v255, a37);
  v171 = vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v173 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v174 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v253 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v174), *&STACK[0x210]), vorrq_s8(vaddq_s64(v174, *&STACK[0x270]), *&STACK[0x230]));
  v175 = vsubq_s64(a53, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v171), *&STACK[0x210]), vorrq_s8(vaddq_s64(v171, *&STACK[0x270]), *&STACK[0x230])));
  v176 = vsubq_s64(a53, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v172), *&STACK[0x210]), vorrq_s8(vaddq_s64(v172, *&STACK[0x270]), *&STACK[0x230])));
  v171.i64[0] = vqtbl4q_s8(v257, a25).u64[0];
  v177 = veorq_s8(v176, a52);
  v178 = veorq_s8(v175, a52);
  v179 = veorq_s8(v175, a51);
  v180 = veorq_s8(v176, a51);
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v178, 0x38uLL), v178, 8uLL), v179), a50);
  v182 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v180), a50);
  v183 = vsraq_n_u64(vshlq_n_s64(v179, 3uLL), v179, 0x3DuLL);
  v184 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v185 = veorq_s8(v181, v183);
  v186 = vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL);
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v185);
  v188 = vaddq_s64(v186, v184);
  v189 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v188, v188), a49), v188), a48), a47);
  v190 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v187, v187), a49), v187), a48), a47);
  v191 = vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL);
  v192 = veorq_s8(v190, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v193 = veorq_s8(v189, v191);
  v194 = vsraq_n_u64(vshlq_n_s64(v190, 0x38uLL), v190, 8uLL);
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v193);
  v196 = veorq_s8(vaddq_s64(v194, v192), a46);
  v197 = veorq_s8(v195, a46);
  v198 = vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL);
  v199 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL));
  v200 = veorq_s8(v196, v198);
  v201 = vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL);
  v202 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v196, 0x38uLL), v196, 8uLL), v200);
  v203 = veorq_s8(vaddq_s64(v201, v199), *&STACK[0x200]);
  v204 = veorq_s8(v202, *&STACK[0x200]);
  v205 = vsraq_n_u64(vshlq_n_s64(v199, 3uLL), v199, 0x3DuLL);
  v206 = veorq_s8(v204, vsraq_n_u64(vshlq_n_s64(v200, 3uLL), v200, 0x3DuLL));
  v207 = veorq_s8(v203, v205);
  v208 = vsraq_n_u64(vshlq_n_s64(v204, 0x38uLL), v204, 8uLL);
  v209 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), v207);
  v210 = vaddq_s64(v208, v206);
  v211 = veorq_s8(v210, a58);
  v212 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v210, v62), v63), v211), vandq_s8(v211, v62));
  v213 = veorq_s8(v209, a58);
  v214 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v209, v62), v63), v213), vandq_s8(v213, v62)), a43);
  v215 = veorq_s8(v212, a43);
  v216 = veorq_s8(v215, vsraq_n_u64(vshlq_n_s64(v206, 3uLL), v206, 0x3DuLL));
  v217 = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v218 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v215, 0x38uLL), v215, 8uLL), v216), a42);
  v219 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v217), a42);
  v220 = vsraq_n_u64(vshlq_n_s64(v216, 3uLL), v216, 0x3DuLL);
  v221 = veorq_s8(v219, vsraq_n_u64(vshlq_n_s64(v217, 3uLL), v217, 0x3DuLL));
  v222 = vsubq_s64(a53, vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x220], v173), *&STACK[0x210]), vorrq_s8(vaddq_s64(v173, *&STACK[0x270]), *&STACK[0x230])));
  v256.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL), veorq_s8(v218, v220)), v61), vnegq_s64(vandq_s8(vshlq_n_s64(v255, 3uLL), a26)));
  v256.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v219, 0x38uLL), v219, 8uLL), v221), v61), vnegq_s64(vandq_s8(vshlq_n_s64(v254, 3uLL), a26)));
  v223 = veorq_s8(v222, a52);
  v224 = veorq_s8(v222, a51);
  v225 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v224), a50);
  v226 = veorq_s8(v225, vsraq_n_u64(vshlq_n_s64(v224, 3uLL), v224, 0x3DuLL));
  v227 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v226);
  v228 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v227, v227), a49), v227), a48), a47);
  v229 = veorq_s8(v228, vsraq_n_u64(vshlq_n_s64(v226, 3uLL), v226, 0x3DuLL));
  v230 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228, 0x38uLL), v228, 8uLL), v229), a46);
  v231 = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v232 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL), v231), *&STACK[0x200]);
  v233 = veorq_s8(v232, vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL));
  v234 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v232, 0x38uLL), v232, 8uLL), v233);
  v235 = veorq_s8(v234, a58);
  v236 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v234, v62), v63), v235), vandq_s8(v235, v62)), a43);
  v237 = veorq_s8(v236, vsraq_n_u64(vshlq_n_s64(v233, 3uLL), v233, 0x3DuLL));
  v238 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v236, 0x38uLL), v236, 8uLL), v237), a42);
  v239 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v238, 0x38uLL), v238, 8uLL), veorq_s8(v238, vsraq_n_u64(vshlq_n_s64(v237, 3uLL), v237, 0x3DuLL)));
  v240 = vsubq_s64(a53, v253);
  v256.val[1] = vshlq_u64(veorq_s8(v239, v61), vnegq_s64(vandq_s8(vshlq_n_s64(v128, 3uLL), a26)));
  v241 = veorq_s8(v240, a52);
  v257.val[0] = veorq_s8(v240, a51);
  v242 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v257.val[0]), a50);
  v257.val[0] = veorq_s8(v242, vsraq_n_u64(vshlq_n_s64(v257.val[0], 3uLL), v257.val[0], 0x3DuLL));
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v242, 0x38uLL), v242, 8uLL), v257.val[0]);
  v244 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v243, v243), a49), v243), a48), a47);
  v257.val[0] = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v257.val[0], 3uLL), v257.val[0], 0x3DuLL));
  v245 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v257.val[0]), a46);
  v257.val[0] = veorq_s8(v245, vsraq_n_u64(vshlq_n_s64(v257.val[0], 3uLL), v257.val[0], 0x3DuLL));
  v246 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v245, 0x38uLL), v245, 8uLL), v257.val[0]), *&STACK[0x200]);
  v257.val[0] = veorq_s8(v246, vsraq_n_u64(vshlq_n_s64(v257.val[0], 3uLL), v257.val[0], 0x3DuLL));
  v247 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v257.val[0]);
  v248 = veorq_s8(v247, a58);
  v249 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v247, v62), v63), v248), vandq_s8(v248, v62)), a43);
  v257.val[0] = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v257.val[0], 3uLL), v257.val[0], 0x3DuLL));
  v250 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), v257.val[0]), a42);
  v256.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL), veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v257.val[0], 3uLL), v257.val[0], 0x3DuLL))), v61), vnegq_s64(vandq_s8(vshlq_n_s64(v142, 3uLL), a26)));
  v171.i64[1] = vqtbl4q_s8(v256, a25).u64[0];
  v256.val[0] = vrev64q_s8(v171);
  *v64 = veorq_s8(vextq_s8(v256.val[0], v256.val[0], 8uLL), *(v59 + v58 - 16));
  return (*(*(v60 - 256) + 8 * ((5957 * ((v58 & 0xFFFFFFF0) == 16)) ^ (a2 + 1513))))(v58 & 0xFFFFFFF0, a2, v65, 16 - (v58 & 0xFFFFFFF0), v59 + v58, a6, v64, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25.i64[0], a25.i64[1], a26.i64[0], a26.i64[1], a27, a28);
}

uint64_t sub_10004A57C()
{
  LODWORD(STACK[0x25C]) = v1;
  LODWORD(STACK[0x200]) = LODWORD(STACK[0x2B0]) >> ((((4 * v0) ^ 0x40) - 77) ^ 0x47);
  LODWORD(STACK[0x220]) = v2;
  return sub_100141CCC(0x435B154A729201BFLL, 0xEAD4E3DB691550A9, 0x126AA61F6F56C0D8, v2, 0x5F83E4240040270ALL, 83, 0x5EA5347A8335DC6CLL, 0x5963B6C555D97F1FLL);
}

uint64_t sub_10004A750()
{
  v4 = STACK[0x7F0];
  STACK[0x780] = STACK[0x7F0];
  v5 = *(STACK[0x4B8] + 100);
  v6 = STACK[0x4B8] + 104;
  v7 = (*(STACK[0x4B8] + 120) ^ 0x57F3F5FE) - 1149321408 + (((3 * (v0 ^ 0x4A1) + 1655271933) & 0x9D567A2D ^ 0xAFE7E9DD) & (2 * *(STACK[0x4B8] + 120)));
  v8 = 1358806181 * ((((v2 - 232) | 0x59631A57) - (v2 - 232) + ((v2 - 232) & 0xA69CE5A8)) ^ 0x664C76D4);
  v9 = (236591001 * (((LODWORD(STACK[0x82C]) ^ 0x4C3A3F30) - 1278885680) ^ ((LODWORD(STACK[0x82C]) ^ 0x5E7D318B) - 1585262987) ^ ((LODWORD(STACK[0x82C]) ^ 0x198297E8) - 427988968)) + 179962559) ^ v8;
  *(v2 - 224) = STACK[0x700];
  *(v2 - 184) = v4;
  *(v2 - 176) = v4;
  *(v2 - 200) = v8 + v0 + 1461;
  *(v2 - 196) = v7 ^ v8;
  *(v2 - 208) = v6;
  *(v2 - 192) = v9;
  *(v2 - 188) = v8 + 1334444757 * v5 + 206659825;
  *(v2 - 216) = v8 - 1498995465;
  v10 = (*(v3 + 8 * (v0 ^ 0x2610)))(v2 - 232);
  return (*(STACK[0x330] + 8 * ((7319 * (*(v2 - 232) == v1)) ^ v0)))(v10);
}

uint64_t sub_10004B6E0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0x9D8] = v1 ^ 0xBC59953u;
  *(a1 + 16) = (((v1 ^ 0x57749467) - 1467258021 + v2 - 7557) ^ ((v1 ^ 0x990522EF) + 1727716625) ^ ((v1 ^ 0xC5B43A2D ^ ((v2 - 2481) | 0x1E4)) + 978047013)) + 197499229;
  v5 = (*(v3 + 8 * (v2 ^ 0x3861)))();
  v6 = STACK[0x330];
  *(a1 + 24) = v5;
  return (*(v6 + 8 * (((v5 == 0) | (4 * (v5 == 0))) ^ v2)))();
}

uint64_t sub_10004B7B8@<X0>(int a1@<W8>)
{
  result = (*(v1 + 8 * (a1 + 6244)))();
  *(v3 + 4) = v4;
  return result;
}

void sub_10004B854(uint64_t a1)
{
  v1 = *(a1 + 8) + 869295389 * ((a1 & 0x846F91CA | ~(a1 | 0x846F91CA)) ^ 0xCAC44266);
  v2 = *(&off_100755B60 + v1 - 1545) - 8;
  (*&v2[8 * v1 + 62208])(v5, 0, 128);
  v3 = 1710126949 * ((2 * (&v6 & 0x2A608FD8) - &v6 - 710971355) ^ 0xE7842BB5);
  v6 = v5;
  LODWORD(v7) = v3 ^ (v1 + 940078554);
  HIDWORD(v7) = -733388397 - v3;
  (*&v2[8 * (v1 ^ 0x229D)])(&v6);
  v4 = 31943069 * (&v6 ^ 0x5312319B63A94678);
  v6 = v5;
  v7 = (v4 + 0x605222BC435F6A18) | 5;
  v8 = v1 - v4 + 584254877;
  (*&v2[8 * v1 + 62760])(&v6);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10004BA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19)
{
  a19 = v21 + 1317436891 * (&a17 ^ 0xB0039876) + 3510;
  a17 = &a12;
  v22 = (*(v20 + 8 * (v21 ^ 0x3781)))(&a17);
  return (*(v20 + 8 * (((a18 != v19) * (((v21 ^ 0x123D) + 7018) ^ (286 * (v21 ^ 0x123D)))) ^ v21)))(v22);
}

uint64_t sub_10004BB7C@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v13 = (v3 + v6) ^ *(a1 + v5 * v8 + v12 - ((((v5 * v8 + v12) * v9) >> 32) >> 9) * v7);
  *(a1 + v5 * v8 + 209760 - ((((v5 * v8 + 209760) * v9) >> 32) >> 9) * v7) = *(a3 + (v13 * a2 + 510419 - (((v13 * a2 + 510419) * v4) >> 32) * v10)) ^ 0x65;
  return (*(v11 + 8 * ((6989 * (v5 == 15)) ^ v3)))();
}

uint64_t sub_10004BC54()
{
  *(v3 - 224) = (v1 - 2140803489) ^ (914963389 * (((((v3 - 232) | 0xEC08A0AE) ^ 0xFFFFFFFE) - (~(v3 - 232) | 0x13F75F51)) ^ 0x3F0BEE2A));
  v4 = (*(v2 + 8 * (v1 ^ 0x3975u)))(v3 - 232);
  *v0 = *(v3 - 232) ^ 0xAC;
  return (*(v2 + 8 * ((v1 - 1221099236) & 0x48C87EDB ^ 0x18u)))(v4);
}

void sub_10004BD4C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  STACK[0x918] = a4;
  v4 = STACK[0x868];
  *(v4 + 112) = 197499219;
  *(v4 + 116) = 197499219;
  *(v4 + 108) = 0;
  *(v4 + 104) = 0;
  JUMPOUT(0x10002E37CLL);
}

uint64_t sub_10004BD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, _DWORD *a11)
{
  *a9 = a1;
  *a11 = v12;
  return (*(v13 + 8 * (((((a10 == 0) ^ v11) & 1) * ((v11 + 962) ^ 0x9D5)) ^ v11)))();
}

uint64_t sub_10004BE84()
{
  v2 = ((v0 + 3550) ^ 0x17FE) + LODWORD(STACK[0x528]);
  LODWORD(STACK[0x528]) = v2;
  return (*(v1 + 8 * ((3185 * (v2 == ((v0 - 1109) ^ 0x5CC))) ^ (v0 + 3550))))();
}

void sub_10004BF34(int a1@<W8>)
{
  if ((a1 - 203186114) < 2)
  {
    __asm { BRAA            X9, X17 }
  }

  if (a1 == 203186112 || a1 == 203186117)
  {
    __asm { BRAA            X8, X17 }
  }

  *(v3 + 12) = (((v2 ^ 0x637E21B1) - 1219133494) ^ ((v2 ^ 0x40485C57) - 1805450704) ^ ((v2 ^ 0x7A929D83) - 1363557380)) + 1936217521;
}

uint64_t sub_10004C36C@<X0>(int a1@<W8>)
{
  *&STACK[0x270] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x220] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x230] = vdupq_n_s64(0xE79B7CAD81EAE601);
  *&STACK[0x210] = vdupq_n_s64(0x186483527E1519FEuLL);
  *&STACK[0x200] = vdupq_n_s64(v1);
  return sub_100175B24(2021819248, 1070421257, (a1 & 0x1D8E53DFu) + 4287);
}

void sub_10004C5E0(uint64_t a1@<X6>, char a2@<W8>, uint64_t a3, unint64_t a4)
{
  v4 = *(a1 + 24);
  v5 = __ROR8__((v4 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v6 = (v5 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v7 = (__ROR8__((v5 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v6) ^ 0xE49D77DF873DBF7ELL;
  v8 = v7 ^ __ROR8__(v6, 61);
  v9 = (__ROR8__(v7, 8) + v8) ^ 0xF5A2F1B9B5D0B209;
  v10 = v9 ^ __ROR8__(v8, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (v11 + v10 - ((2 * (v11 + v10)) & 0x512B57FB6494046ALL) + 0x2895ABFDB24A0235) ^ 0x71F61D38E7937D2ALL;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0x61459D2AF01F24F7;
  v15 = __ROR8__(v14, 8);
  v16 = v14 ^ __ROR8__(v13, 61);
  v17 = (((v15 + v16) ^ 0x79C11BFC4894BC72 | 0xC3906BA06D3A2EC5) - ((v15 + v16) ^ 0x79C11BFC4894BC72 | 0x3C6F945F92C5D13ALL) + 0x3C6F945F92C5D13ALL) ^ 0xDE926C5E552A4CDBLL;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ 0x1A2AEBE44253AF03;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v4[10] = (((((2 * (v21 + v20)) | 0xC38C36871CFCF294) - (v21 + v20) - 0x61C61B438E7E794ALL) ^ 0xCAF65991A6F9250BLL) >> (8 * ((v4 + 10) & 7u))) ^ (a4 >> (a2 ^ 0xB8u)) ^ 0x43;
  v22 = __ROR8__((v4 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = v22 - ((2 * v22 + 0x2A11B965E67D9C56) & 0x89AD15096A95E46ELL) - 0x262098C857763F9ELL;
  v24 = v23 ^ 0xD3FC8BFDA5C15E5;
  v23 ^= 0xA5792D2843AA64B9;
  v25 = __ROR8__(v24, 8);
  v26 = (((2 * (v25 + v23)) & 0x172EA68DBB7EC94) - (v25 + v23) + 0x7F468ACB922409B5) ^ 0x9BDBFD141519B6CBLL;
  v27 = v26 ^ __ROR8__(v23, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) & 0xD4F2B43A3958542) - (v28 + v27) - 0x6A795A1D1CAC2A2) ^ 0xCFA9BE79BE58F57;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0x5963B6C555D97F1FLL;
  v32 = __ROR8__(v31, 8);
  v33 = v31 ^ __ROR8__(v30, 61);
  v34 = (((v32 + v33) | 0x3A57A17B6EDF06BLL) - ((v32 + v33) | 0xFC5A85E849120F94) - 0x3A57A17B6EDF06CLL) ^ 0x62E0E73D46F2D49CLL;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x64C31C027084DE6CLL;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = (((v38 + v37) | 0x3F31863D75651161) - ((v38 + v37) | 0xC0CE79C28A9AEE9ELL) - 0x3F31863D75651162) ^ 0x251B6DD93736BE62;
  v40 = v39 ^ __ROR8__(v37, 61);
  v41 = __ROR8__(v39, 8);
  v4[11] = (((((2 * (v41 + v40)) | 0xAB41BFF64D60CE6CLL) - (v41 + v40) - 0x55A0DFFB26B06736) ^ 0xFE909D290E373B77) >> (8 * ((v4 + 11) & 7u))) ^ BYTE6(a4) ^ 0x1A;
  v42 = (__ROR8__((v4 + 12) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v43 = v42 ^ 0x4DE9423B6F16E7D2;
  v42 ^= 0xE5AFA7ACF6E0968ELL;
  v44 = __ROR8__(v43, 8);
  v45 = (v44 + v42 - ((2 * (v44 + v42)) & 0xA684DABE1F7F2120) - 0x2CBD92A0F0406F70) ^ 0x37DF1A8088822FEELL;
  v46 = v45 ^ __ROR8__(v42, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (((v47 + v46) | 0x2D1013F9AFD52057) - ((v47 + v46) | 0xD2EFEC06502ADFA8) - 0x2D1013F9AFD52058) ^ 0xD8B2E2401A05925ELL;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = (__ROR8__(v48, 8) + v49) ^ 0x5963B6C555D97F1FLL;
  v51 = __ROR8__(v50, 8);
  v52 = v50 ^ __ROR8__(v49, 61);
  v53 = (v51 + v52 - ((2 * (v51 + v52)) & 0x505C9B69C721B602) + 0x282E4DB4E390DB01) ^ 0x496BD09E138FFFF6;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ 0x64C31C027084DE6CLL;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = (__ROR8__(v55, 8) + v56) ^ 0x1A2AEBE44253AF03;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = __ROR8__(v57, 8);
  v4[12] = (((((2 * (v59 + v58)) & 0xA6AF603E61524BD2) - (v59 + v58) + 0x2CA84FE0CF56DA16) ^ 0x87980D32E7D18657) >> (8 * ((v4 + 12) & 7u))) ^ BYTE5(a4) ^ 0x33;
  v60 = __ROR8__((v4 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v61 = ((2 * (v60 - 0x6AF7234D0CC131D5)) | 0xBCD338F7A72AF0E2) - (v60 - 0x6AF7234D0CC131D5) - 0x5E699C7BD3957871;
  v62 = v61 ^ 0x1780DE40BC839FA3;
  v61 ^= 0xBFC63BD72575EEFFLL;
  v63 = __ROR8__(v62, 8);
  v64 = (((v63 + v61) | 0x524D786A2DAA5236) - ((v63 + v61) | 0xADB28795D255ADC9) - 0x524D786A2DAA5237) ^ 0xB6D00FB5AA97ED48;
  v65 = v64 ^ __ROR8__(v61, 61);
  v66 = __ROR8__(v64, 8);
  v67 = (((2 * (v66 + v65)) | 0xC461725543BD74EALL) - (v66 + v65) - 0x6230B92AA1DEBA75) ^ 0x97924893140E087CLL;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = (__ROR8__(v67, 8) + v68) ^ 0x5963B6C555D97F1FLL;
  v70 = v69 ^ __ROR8__(v68, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ 0x61459D2AF01F24F7;
  v72 = __ROR8__(v71, 8);
  v73 = v71 ^ __ROR8__(v70, 61);
  v74 = (((v72 + v73) | 0xD6A77E9273FF605BLL) - ((v72 + v73) | 0x2958816D8C009FA4) + 0x2958816D8C009FA4) ^ 0xB2646290037BBE37;
  v75 = __ROR8__(v74, 8);
  v76 = v74 ^ __ROR8__(v73, 61);
  v77 = (v75 + v76 - ((2 * (v75 + v76)) & 0x9E7D2340626A9232) - 0x30C16E5FCECAB6E7) ^ 0xD5147A447366E61ALL;
  v4[13] = (((__ROR8__(v77, 8) + (v77 ^ __ROR8__(v76, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v4 + 13) & 7u))) ^ BYTE4(a4) ^ 0xAA;
  v78 = __ROR8__((v4 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v79 = v78 - ((2 * v78 + 0x2A11B965E67D9C56) & 0x20559374910370F8) - 0x5ACC5992C43F7959;
  v80 = v79 ^ 0x59C38B8127975FAELL;
  v79 ^= 0xF1856E16BE612EF2;
  v81 = (__ROR8__(v80, 8) + v79) ^ 0xE49D77DF873DBF7ELL;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0xF5A2F1B9B5D0B209;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0x5963B6C555D97F1FLL;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  v88 = __ROR8__((v87 + v86 - ((2 * (v87 + v86)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL, 8);
  v89 = (v87 + v86 - ((2 * (v87 + v86)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL ^ __ROR8__(v86, 61);
  v90 = (v88 + v89 - ((2 * (v88 + v89)) & 0xBB2E9B3140AA9E2CLL) + 0x5D974D98A0554F16) ^ 0x3954519AD0D1917ALL;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = (__ROR8__(v90, 8) + v91) ^ 0x1A2AEBE44253AF03;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = __ROR8__(v92, 8);
  v4[14] = (((((v94 + v93) | 0x6B6AF9C6B406ECE7) - ((v94 + v93) | 0x949506394BF91318) - 0x6B6AF9C6B406ECE8) ^ 0xC05ABB149C81B0A6) >> (8 * ((v4 + 14) & 7u))) ^ BYTE3(a4) ^ 0x2E;
  v95 = __ROR8__((v4 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v96 = ((v95 - 0x6AF7234D0CC131D5) & 0xF89A3C6BA21CFB5FLL ^ 0x40000C09A010C112) + ((v95 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) - (((v95 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) & 0xF89A3C6BA21CFB5FLL);
  v97 = v96 ^ 0x8A84C36C7E52240;
  v96 ^= 0xA0EEA9A15E13531CLL;
  v98 = (__ROR8__(v97, 8) + v96) ^ 0xE49D77DF873DBF7ELL;
  v99 = v98 ^ __ROR8__(v96, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ 0xF5A2F1B9B5D0B209;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = __ROR8__(v100, 8);
  v103 = __ROR8__((((2 * (v102 + v101)) & 0x7EC0B560615BD22) - (v102 + v101) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71, 8);
  v104 = (((2 * (v102 + v101)) & 0x7EC0B560615BD22) - (v102 + v101) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71 ^ __ROR8__(v101, 61);
  v105 = (((v103 + v104) & 0xF4B1E271DC896087 ^ 0xA0425158896006) + ((v103 + v104) ^ 0xFE51A922A5729599) - (((v103 + v104) ^ 0xFE51A922A5729599) & 0xF4B1E271DC896087)) ^ 0x6BA5D67989E4D1E9;
  v106 = v105 ^ __ROR8__(v104, 61);
  v107 = __ROR8__(v105, 8);
  v108 = (((2 * (v107 + v106)) | 0x81910D2EFE6F15ACLL) - (v107 + v106) - 0x40C886977F378AD6) ^ 0x240B9A950FB354BALL;
  v109 = v108 ^ __ROR8__(v106, 61);
  v110 = __ROR8__(v108, 8);
  v111 = (((v110 + v109) | 0x452FEAF2D8983268) - ((v110 + v109) | 0xBAD0150D2767CD97) - 0x452FEAF2D8983269) ^ 0x5F0501169ACB9D6BLL;
  v112 = v111 ^ __ROR8__(v109, 61);
  v113 = __ROR8__(v111, 8);
  v4[15] = (((v113 + v112 - ((2 * (v113 + v112)) & 0x5CD5F962F5DFE9B2) - 0x5195034E85100B27) ^ 0x55ABE635268A898) >> (8 * ((v4 + 15) & 7u))) ^ BYTE2(a4) ^ 0x6D;
  v114 = __ROR8__((v4 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v115 = -2 - (((0x6AF7234D0CC131D4 - v114) | 0xB9373BCC9E95648DLL) + ((v114 - 0x6AF7234D0CC131D5) | 0x46C8C433616A9B72));
  v116 = v115 ^ 0xF0DE79F7F183835FLL;
  v115 ^= 0x58989C606875F203uLL;
  v117 = (__ROR8__(v116, 8) + v115) ^ 0xE49D77DF873DBF7ELL;
  v118 = v117 ^ __ROR8__(v115, 61);
  v119 = (__ROR8__(v117, 8) + v118) ^ 0xF5A2F1B9B5D0B209;
  v120 = v119 ^ __ROR8__(v118, 61);
  v121 = (__ROR8__(v119, 8) + v120) ^ 0x5963B6C555D97F1FLL;
  v122 = v121 ^ __ROR8__(v120, 61);
  v123 = __ROR8__(v121, 8);
  v124 = (((2 * (v123 + v122)) & 0x24C3B6EDA515D42ALL) - (v123 + v122) + 0x6D9E24892D7515EALL) ^ 0xCDBB9A3DD6A311DLL;
  v125 = v124 ^ __ROR8__(v122, 61);
  v126 = __ROR8__(v124, 8);
  v127 = (((v126 + v125) | 0x3A521DF821A27A3ELL) - ((v126 + v125) | 0xC5ADE207DE5D85C1) - 0x3A521DF821A27A3FLL) ^ 0x5E9101FA5126A452;
  v128 = v127 ^ __ROR8__(v125, 61);
  v129 = (__ROR8__(v127, 8) + v128) ^ 0x1A2AEBE44253AF03;
  v130 = __ROR8__(v129, 8);
  v131 = __ROR8__(v128, 61);
  LOBYTE(v128) = (((((2 * (v130 + (v129 ^ v131))) | 0x4D724CAE0D8F11E6) - (v130 + (v129 ^ v131)) + 0x5946D9A8F938770DLL) ^ 0xD8964852E40D4B2uLL) >> (8 * ((v4 + 16) & 7u))) ^ BYTE1(a4) ^ 0x96;
  v132 = __ROR8__((v4 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v4[16] = v128;
  v133 = ((2 * ((v132 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4)) | 0x301A5F137AACAE0ELL) - ((v132 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4) - 0x180D2F89BD565707;
  v134 = v133 ^ 0xDE90BDF0289CA71;
  v133 ^= 0xA5AFEE489B7FBB2DLL;
  v135 = __ROR8__(v134, 8);
  v136 = (((2 * (v135 + v133)) | 0x692CEF71A0CBBC0ELL) - (v135 + v133) - 0x349677B8D065DE07) ^ 0xD00B006757586179;
  v137 = v136 ^ __ROR8__(v133, 61);
  v138 = __ROR8__(v136, 8);
  v139 = __ROR8__((((2 * (v138 + v137)) & 0xFD81E0C09A12569ALL) - (v138 + v137) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL, 8);
  v140 = (((2 * (v138 + v137)) & 0xFD81E0C09A12569ALL) - (v138 + v137) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL ^ __ROR8__(v137, 61);
  v141 = (v139 + v140) ^ 0x5963B6C555D97F1FLL;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = (__ROR8__(v141, 8) + v142) ^ 0x61459D2AF01F24F7;
  v144 = v143 ^ __ROR8__(v142, 61);
  v145 = __ROR8__(v143, 8);
  v146 = (v145 + v144 - ((2 * (v145 + v144)) & 0x3076304A369A11B8) - 0x67C4E7DAE4B2F724) ^ 0xFCF804276BC9D6B0;
  v147 = v146 ^ __ROR8__(v144, 61);
  v148 = __ROR8__(v146, 8);
  v149 = (v148 + v147 - ((2 * (v148 + v147)) & 0x43F5BC2EBD15E7BELL) + 0x21FADE175E8AF3DFLL) ^ 0x3BD035F31CD95CDCLL;
  v4[17] = (((__ROR8__(v149, 8) + (v149 ^ __ROR8__(v147, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v4 + 17) & 7u))) ^ a4 ^ 0x5F;
  sub_1000F0BA4();
}

uint64_t sub_10004D670@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, _DWORD *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36)
{
  *a22 = a36 + 1;
  v39 = 1710126949 * ((((v38 - 152) | 0x277B28D23B42D113) - (v38 - 152) + ((v38 - 152) & 0xD884D72DC4BD2EE8)) ^ 0x4F7D4C0B09598A83);
  v40 = v38 - 152;
  *(v40 + 16) = *v36 - v39;
  *(v40 + 32) = v39 ^ 0x13FF;
  *(v38 - 144) = ((a1 + 1232977275) ^ 0x6F) - v39;
  *(v38 - 140) = a1 + 1232977275 - v39 + 579;
  *(v38 - 152) = (a1 + 1232977275) ^ v39;
  *(v38 - 148) = v39;
  *(v38 - 128) = (a1 - 1737626868) ^ v39;
  v41 = (*(v37 + 8 * (a1 + 1232701059)))(v38 - 152);
  return (*(v37 + 8 * *(v38 - 124)))(v41);
}

uint64_t sub_10004D764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(STACK[0x490]) = 16257999;
  v5 = STACK[0x9A0];
  STACK[0x978] = STACK[0x9A0];
  return (*(v4 + 8 * (((((((v3 - 5936) | 0x340) + 6347) | 0x400) - 9201) * (v5 == 0)) ^ ((v3 - 5936) | 0x340))))(a1, a2, a3, 16215976);
}

uint64_t sub_10004D840()
{
  v2 = LODWORD(STACK[0x380]) - 1556;
  LODWORD(STACK[0x314]) = LODWORD(STACK[0x374]) + 1405210103 + LODWORD(STACK[0x57C]);
  LODWORD(STACK[0x308]) = LODWORD(STACK[0x370]) - 339580378 + LODWORD(STACK[0x584]);
  LODWORD(STACK[0x338]) = (v2 ^ 0x293CF999) + LODWORD(STACK[0x424]);
  v3 = (((v2 + 2041769899) & 0x864D2FFF ^ ((v2 - 450) | 0x1C80) ^ 0x368D) * (STACK[0x378] & 1)) | v2;
  LODWORD(STACK[0x354]) = LODWORD(STACK[0x3F4]) + 1157472793;
  LODWORD(STACK[0x340]) = v0 - 134760406;
  LODWORD(STACK[0x2E4]) = LODWORD(STACK[0x3F8]) + 517689445;
  LODWORD(STACK[0x318]) = LODWORD(STACK[0x3F0]) - 566100543;
  LODWORD(STACK[0x2FC]) = LODWORD(STACK[0x3FC]) + 184116032;
  v4 = *(v1 + 8 * v3);
  LODWORD(STACK[0x2F4]) = STACK[0x418];
  LODWORD(STACK[0x2E0]) = STACK[0x40C];
  LODWORD(STACK[0x300]) = STACK[0x400];
  LODWORD(STACK[0x310]) = STACK[0x404];
  LODWORD(STACK[0x2C8]) = STACK[0x414];
  LODWORD(STACK[0x348]) = STACK[0x410];
  LODWORD(STACK[0x2E8]) = STACK[0x41C];
  LODWORD(STACK[0x344]) = STACK[0x408];
  return v4();
}

uint64_t sub_10004D988(int a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  LODWORD(STACK[0x410]) += LODWORD(STACK[0x55C]);
  LODWORD(STACK[0x5B0]) = v15 + v13;
  v19 = (v12 - v10 - 1951064141) ^ (a4 - 1958870687);
  v20 = (((v11 ^ v18) - v18) ^ ((v7 ^ a1) - v17) ^ ((v11 ^ v14 ^ (a4 + 1298106656) ^ a6) - (v14 ^ (a4 + 1298106656) ^ a6))) - v16;
  v21 = (a3 - (v16 + 1951064141)) ^ (a5 - 1958870687);
  v22 = (a6 + 578669096) ^ 0x6E571C18;
  v23 = a5 + 1123955400;
  v24 = v16 + 1951064141 + v17 + 578669096;
  v25 = (v17 + 578669096) ^ 0x6E571C18;
  v26 = ((LODWORD(STACK[0x534]) ^ 0x6E571C18 ^ (v17 + 578669096)) - v25) ^ ((v23 ^ LODWORD(STACK[0x534])) - v23) ^ (((a4 + 1123955400) ^ LODWORD(STACK[0x584]) ^ v22 ^ LODWORD(STACK[0x534])) - ((a4 + 1123955400) ^ LODWORD(STACK[0x584]) ^ v22));
  v27 = v10 + v8 - 57528667;
  LODWORD(STACK[0x584]) += v27;
  v28 = v27 ^ (a4 + 1123955400) ^ (v19 + 160490879);
  v29 = v27 - v22;
  v30 = v22 - (v19 + 160490879) + 2140257556;
  v31 = v24 ^ v23 ^ (v21 + 160490879);
  v32 = v25 - (v21 + 160490879) + 2140257556;
  v33 = ((v32 ^ LODWORD(STACK[0x588])) - v32) ^ ((v31 ^ LODWORD(STACK[0x588])) - v31) ^ ((v28 ^ LODWORD(STACK[0x54C]) ^ v30 ^ LODWORD(STACK[0x588])) - (v28 ^ LODWORD(STACK[0x54C]) ^ v30));
  LODWORD(STACK[0x588]) = v26 - v24;
  v34 = v24 - v25;
  v35 = v29 - v19;
  v36 = v19 - v35;
  v37 = v35 - 160490879;
  v38 = v30 + v28;
  v39 = v30 - (v28 ^ (v35 - 160490879));
  v40 = (v28 ^ (v35 - 160490879)) + v36 + 1519097918;
  v41 = v14;
  v39 ^= 0xFABA49CA;
  v42 = v38 + v36 + 1519097918;
  v43 = v38 ^ v40;
  v44 = STACK[0x58C];
  v45 = STACK[0x590];
  v46 = (v39 ^ LODWORD(STACK[0x58C]) ^ v43 ^ LODWORD(STACK[0x590])) - (v39 ^ LODWORD(STACK[0x58C]) ^ v43);
  LODWORD(STACK[0x57C]) = v33 - (v34 - v21 - 160490879);
  v47 = v21 - (v34 - v21) + 1519097918;
  v48 = (v34 - v21 - 160490879) ^ v31;
  v49 = v32 + v31;
  v50 = v32 - v48;
  v51 = v48 + v47;
  v52 = v49 + v47;
  v53 = v51 ^ v49;
  v54 = v45 ^ 0xFABA49CA ^ v50;
  v50 ^= 0xFABA49CA;
  v55 = (v45 - 2 * (v53 & v45)) ^ (v54 - v50) ^ v46;
  v56 = v42 + v40 - 2 * (v42 & v40);
  v57 = v39 ^ v42;
  v58 = v43 - v39;
  v59 = v40 + v44;
  v60 = -1707705392 - (v53 & 0x66B11AA6) + (v53 | 0x994EE559) + v57 + ((v40 + v44) | 0xCC7A9ED5) - ((v40 + v44) & 0x3385612A);
  v61 = v57 ^ v40;
  v62 = v53 - v50;
  v63 = v60 - v56 + 2;
  v64 = STACK[0x56C];
  v65 = v55 - v51;
  v66 = v50 ^ v52 ^ v51;
  v67 = (v50 ^ v52) - (v52 ^ v51);
  v68 = ((v9 ^ v67) - v67) ^ ((v9 ^ (v62 - (v52 ^ v51))) - (v62 - (v52 ^ v51))) ^ ((v9 ^ (v58 - v56) ^ v64 ^ v63) - ((v58 - v56) ^ v64 ^ v63));
  v69 = v61 + v63;
  v70 = v58 + v63 + 583590656;
  v71 = STACK[0x548];
  v72 = v62 - v66;
  v73 = v66 - 2003671248 + v67;
  v74 = v72 + v73;
  v75 = (((v73 - 725678567) ^ LODWORD(STACK[0x580])) - (v73 - 725678567)) ^ (((v72 + v73) ^ LODWORD(STACK[0x580])) - (v72 + v73)) ^ (((v69 + 1565617481) ^ v71 ^ (v70 + 1707705392) ^ LODWORD(STACK[0x580])) - ((v69 + 1565617481) ^ v71 ^ (v70 + 1707705392)));
  v76 = STACK[0x540];
  v77 = v70 + 1707705392 + ((v61 - 2003671248) ^ 0x87D8BB14);
  v78 = v68 - (v66 - 2003671248);
  v79 = v74 + ((v66 - 2003671248) ^ 0x87D8BB14);
  v80 = (((v74 - 1729525651) ^ LODWORD(STACK[0x53C])) - (v74 - 1729525651)) ^ (((v73 - 281335021) ^ LODWORD(STACK[0x53C])) - (v73 - 281335021)) ^ (((v69 + 2009961027) ^ v76 ^ (v70 - 21820259) ^ LODWORD(STACK[0x53C])) - ((v69 + 2009961027) ^ v76 ^ (v70 - 21820259)));
  LODWORD(STACK[0x3F0]) += v78;
  LODWORD(STACK[0x3FC]) += v65;
  LODWORD(STACK[0x3F8]) += v20;
  LODWORD(STACK[0x418]) += v59;
  v81 = STACK[0x5B0];
  v82 = LODWORD(STACK[0x3EC]) + LODWORD(STACK[0x5B0]);
  LODWORD(STACK[0x41C]) += LODWORD(STACK[0x54C]) + v37;
  LODWORD(STACK[0x404]) += v64 + v61 - 2003671248;
  LODWORD(STACK[0x414]) += v41 + v10;
  LODWORD(STACK[0x40C]) += LODWORD(STACK[0x588]);
  LODWORD(STACK[0x3F4]) += v76 + (v77 ^ (v70 + 1707705392) ^ (v70 - 21820259));
  LODWORD(STACK[0x400]) += v75 - v79;
  LODWORD(STACK[0x424]) += v71 + v77;
  LODWORD(STACK[0x408]) += v80 - (v79 ^ v74 ^ (v74 - 1729525651));
  v83 = v82 - 1468338657 + ((v81 | (32218765 - v6)) & 0x80847D6);
  if (LODWORD(STACK[0x394]) == 52)
  {
    LODWORD(STACK[0x31C]) = LODWORD(STACK[0x374]) + 1405210103 + LODWORD(STACK[0x57C]);
    LODWORD(STACK[0x2DC]) = LODWORD(STACK[0x370]) - 339580378 + LODWORD(STACK[0x584]);
    v85 = STACK[0x2B4];
    LODWORD(STACK[0x360]) = (LODWORD(STACK[0x2B4]) ^ 0xF7F7BC2E) + v83;
    v86 = ((v85 + 2041769899) & 0x864D2FFF ^ ((v85 - 450) | 0x1C80) ^ 0x368D) * (STACK[0x378] & 1);
    LODWORD(STACK[0x2D0]) = LODWORD(STACK[0x3F8]) + 517689445;
    LODWORD(STACK[0x328]) = LODWORD(STACK[0x3F0]) - 566100543;
    LODWORD(STACK[0x33C]) = LODWORD(STACK[0x3F4]) + 1157472793;
    LODWORD(STACK[0x320]) = LODWORD(STACK[0x424]) + 691862941;
    LODWORD(STACK[0x2F8]) = LODWORD(STACK[0x3FC]) + 184116032;
    v87 = *(STACK[0x598] + 8 * (v86 | v85));
    LODWORD(STACK[0x2C0]) = STACK[0x40C];
    LODWORD(STACK[0x2CC]) = STACK[0x414];
    LODWORD(STACK[0x330]) = STACK[0x408];
    LODWORD(STACK[0x2F0]) = STACK[0x404];
    LODWORD(STACK[0x2EC]) = STACK[0x400];
    LODWORD(STACK[0x358]) = STACK[0x410];
    LODWORD(STACK[0x2D8]) = STACK[0x418];
    LODWORD(STACK[0x2D4]) = STACK[0x41C];
    return v87();
  }

  else if (LODWORD(STACK[0x394]) == 86)
  {
    return sub_10004D840();
  }

  else
  {
    return (*(STACK[0x598] + 8 * ((((STACK[0x37C] & 0x8B90FCED) + ((LODWORD(STACK[0x380]) - 934) ^ 0xFFFFFAAC)) * (STACK[0x3A8] & 1)) ^ (LODWORD(STACK[0x380]) + 1338))))();
  }
}

void sub_10004E0D8(uint64_t a1)
{
  v1 = *(a1 + 16) - 956911519 * (((a1 | 0xE515A6CD) - a1 + (a1 & 0x1AEA5932)) ^ 0xF84D6C8);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10004E1A4()
{
  (*(v1 + 8 * (v0 + 144)))();
  STACK[0x688] = 0;
  return sub_100088114();
}

_DWORD *sub_10004E2B8@<X0>(_DWORD *result@<X0>, int a2@<W8>)
{
  *(v2 + 24) = a2;
  *result = 16215812;
  return result;
}

uint64_t sub_10004E2CC()
{
  (*(v1 + 8 * (v0 ^ 0x3C0A)))(*(v2 - 256));
  **(v2 - 216) = 0;
  return (*(v2 - 240))();
}

void sub_10004E310()
{
  v0 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E100) ^ 0xDF)) ^ byte_100694EA0[byte_10068DFC0[(-85 * ((dword_10077E220 + dword_10077E100) ^ 0xDF))] ^ 0x67]) + 29);
  v1 = *(v0 - 4);
  v2 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + v1) ^ 0xDF)) ^ byte_10068DEC0[byte_100683950[(-85 * ((dword_10077E220 + v1) ^ 0xDF))] ^ 0x21]) + 72);
  v3 = v1 ^ &v5 ^ *v2;
  *(v0 - 4) = 2054362027 * v3 + 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((2 * (v6 & 0x7B0EC2D8) - v6 + 82918694) ^ 0x36EA66B6);
  LOBYTE(v2) = -85 * (*(v0 - 4) ^ 0xDF ^ *v2);
  v4 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E100) ^ 0xDF)) ^ byte_10068DEC0[byte_100683950[(-85 * ((dword_10077E220 + dword_10077E100) ^ 0xDF))] ^ 0xEE]) + 163) - 8;
  (*&v4[8 * (byte_10068E1CC[(byte_100683B54[v2 - 4] ^ 0x80) - 12] ^ v2) + 76280])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10004E528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, unint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v42 = STACK[0x3F8] - 600;
  v43 = (v40 ^ v41) + a40;
  STACK[0xA00] = v43;
  return (*(STACK[0x400] + 8 * (v42 ^ (35 * (v43 <= a33)))))();
}

void sub_10004E584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, char a16, uint64_t a17, unsigned int a18)
{
  *v20 = a1;
  *v19 = a15;
  a18 = ((v18 ^ 0x14DA) + 7201) ^ (1824088897 * ((&a16 & 0x79EBB262 | ~(&a16 | 0x79EBB262)) ^ 0xDE7D9EFF));
  a17 = a10;
  (*(v21 + 8 * (((v18 ^ 0x14DA) + 2624) ^ 0x2B35)))(&a16);
  JUMPOUT(0x10004E608);
}

void sub_10004E6A8()
{
  v0 = *(&off_100755B60 + ((-85 * ((dword_10077E220 - dword_10077DED0) ^ 0xDF)) ^ byte_100683A50[byte_10069D100[(-85 * ((dword_10077E220 - dword_10077DED0) ^ 0xDF))] ^ 0xDD]) - 82);
  v1 = -85 * ((dword_10077E220 + *v0) ^ 0xDF);
  v2 = *(&off_100755B60 + (byte_100694EA8[(byte_10068DFC8[v1 - 8] ^ 0x6D) - 8] ^ v1) + 184);
  v3 = &v5[*v2 ^ *v0];
  *v0 = 2054362027 * v3 + 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((v6 - 1017940651 - 2 * (v6 & 0xC3537555)) ^ 0xF1482EC5);
  LOBYTE(v0) = -85 * ((*v2 + *v0) ^ 0xDF);
  v4 = *(&off_100755B60 + ((-85 * ((dword_10077E220 - dword_10077DED0) ^ 0xDF)) ^ byte_100694EA0[byte_10068DFC0[(-85 * ((dword_10077E220 - dword_10077DED0) ^ 0xDF))] ^ 0x6D]) + 262) - 8;
  (*&v4[8 * (byte_100683C5C[(byte_10069D20C[v0 - 12] ^ 0xE2) - 12] ^ v0) + 76848])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10004E904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, unsigned int a17)
{
  a17 = (v18 + 6822) ^ (1824088897 * ((((2 * &a15) | 0x32C017CE) - &a15 - 425724903) ^ 0x4109D885));
  a16 = a11;
  v19 = (*(v17 + 8 * (v18 + 8088)))(&a15);
  return sub_1000C5D80(v19);
}

uint64_t sub_10004E910(uint64_t a1)
{
  v7 = LOWORD(STACK[0x9A4]);
  if (v7 == 17168)
  {
    goto LABEL_4;
  }

  if (v7 != 33980)
  {
    if (v7 != 20706)
    {
LABEL_5:
      STACK[0x8A8] = 0;
      LODWORD(STACK[0x654]) = v4;
      return sub_1000D4D58(a1);
    }

LABEL_4:
    STACK[0x670] = v2;
    goto LABEL_5;
  }

  v9 = STACK[0x3E8];
  STACK[0x670] = v2;
  LODWORD(STACK[0x654]) = v1;
  return (*(v5 + 8 * (((v9 + v3 == 0) * (((v6 + 727563419) & 0xD4A22FFD) - 1018)) ^ (v6 - 4111))))(a1);
}

uint64_t sub_10004E9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, unsigned int a14)
{
  a14 = (v16 + 4610) ^ (((1784851517 - (&a12 | 0x6A62AC3D) + (&a12 | 0x959D53C2)) ^ 0xCDF480A0) * v14);
  a13 = a9;
  v17 = (*(v15 + 8 * (v16 + 5876)))(&a12);
  return sub_10004EA30(v17);
}

uint64_t sub_10004EA30()
{
  v8 = (v3 + 3758) ^ (((v7 + 1120363495 - 2 * (v7 & 0x42C763E7)) ^ 0x1AAEB085) * v1);
  v7[1] = v6;
  result = (*(v2 + 8 * (v3 ^ 0x3460)))(v7);
  *(v0 + 8) = v4;
  return result;
}

void sub_10004EAC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3)
  {
    v6 = a6 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10004EB98()
{
  *(v4 - 224) = (v0 - 2140802193) ^ (((v4 - 1465866490 - 2 * ((v4 - 232) & 0xA8A0A7EE)) ^ 0x845C1695) * v3);
  v5 = (*(v2 + 8 * (v0 + 3555)))(v4 - 232);
  *(v1 + 8) = *(v4 - 232) ^ 0xAC;
  return (*(v2 + 8 * (v0 - 756)))(v5);
}

uint64_t sub_10004EC68()
{
  v2 = (*(v1 + 8 * (v0 + 7321)))();
  STACK[0x550] = 0;
  return (*(v1 + 8 * ((((v0 - 1865) | 8) + 5665) ^ 0x1DAD ^ ((v0 - 1865) | 8))))(v2);
}

uint64_t sub_10004ED38(int a1)
{
  v4 = v2 + 1;
  v5 = v1 < 0x435814D6;
  if (v5 == v4 < 0x435814D6)
  {
    v5 = v4 < v1;
  }

  return (*(v3 + 8 * (a1 ^ (2 * v5))))();
}

uint64_t sub_10004ED48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, int a17, uint64_t a18, uint64_t a19)
{
  v23 = 1875091903 * ((((2 * &a15) | 0xA58EC02E) - &a15 + 758685673) ^ 0xE4B2E394);
  a18 = a14;
  a16 = ((2 * v20) & 0xD6BBEDF6) + (v20 ^ 0x6B5DF6FB) + ((v22 + 377) ^ 0xB4BEAD9C) + v23;
  a17 = v23 + v22 + 3442;
  (*(v21 + 8 * (v22 + 5363)))(&a15);
  v24 = 1824088897 * ((-526740077 - (&a15 | 0xE09A9593) + (&a15 | 0x1F656A6C)) ^ 0x470CB90E);
  a18 = a10;
  a19 = a14;
  a17 = (v19 ^ 0x5EF7EE9A) + ((2 * v19) & 0xBDEFDD34) - v24 - 273875984;
  a15 = v24 + v22 - 525;
  v25 = (*(v21 + 8 * (v22 + 5349)))(&a15);
  return (*(v21 + 8 * ((1159 * (a16 == 16257999)) ^ v22)))(v25);
}

uint64_t sub_10004EF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char *a15, int a16, unsigned int a17)
{
  a15 = &a12;
  a17 = 1317436891 * ((&a15 & 0x1D596EE2 | ~(&a15 | 0x1D596EE2)) ^ 0x52A5096B) + 8154;
  v18 = (*(v17 + 77096))(&a15);
  return (*(v17 + 8 * ((7705 * (a16 == 16257999)) ^ 0x92Fu)))(v18);
}

uint64_t sub_10004EFE8@<X0>(uint64_t a1@<X5>, uint64_t a2@<X6>, int a3@<W8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, unint64_t a60)
{
  v63 = *(v60 + 24);
  v64 = __ROR8__((v63 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v65 = (v64 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v66 = (__ROR8__((v64 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v65) ^ 0xE49D77DF873DBF7ELL;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = (__ROR8__(v66, 8) + v67) ^ 0xF5A2F1B9B5D0B209;
  v69 = __ROR8__(v68, 8);
  v70 = v68 ^ __ROR8__(v67, 61);
  v71 = (v69 + v70 - ((2 * (v69 + v70)) & 0x512B57FB6494046ALL) + 0x2895ABFDB24A0235) ^ 0x71F61D38E7937D2ALL;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ v61;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (((v75 + v74) ^ 0x79C11BFC4894BC72 | 0xC3906BA06D3A2EC5) - ((v75 + v74) ^ 0x79C11BFC4894BC72 | 0x3C6F945F92C5D13ALL) + 0x3C6F945F92C5D13ALL) ^ 0xDE926C5E552A4CDBLL;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ v62;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = __ROR8__(v78, 8);
  v63[10] = (((((2 * (v80 + v79)) | 0xC38C36871CFCF294) - (v80 + v79) - 0x61C61B438E7E794ALL) ^ 0xCAF65991A6F9250BLL) >> (8 * ((v63 + 10) & 7u))) ^ (a60 >> ((a3 + 93) ^ 0x77u)) ^ 0x43;
  v81 = __ROR8__((v63 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v82 = v81 - ((2 * v81 + 0x2A11B965E67D9C56) & 0x89AD15096A95E46ELL) - 0x262098C857763F9ELL;
  v83 = v82 ^ 0xD3FC8BFDA5C15E5;
  v82 ^= 0xA5792D2843AA64B9;
  v84 = __ROR8__(v83, 8);
  v85 = (((2 * (v84 + v82)) & 0x172EA68DBB7EC94) - (v84 + v82) + 0x7F468ACB922409B5) ^ 0x9BDBFD141519B6CBLL;
  v86 = v85 ^ __ROR8__(v82, 61);
  v87 = __ROR8__(v85, 8);
  v88 = (((2 * (v87 + v86)) & 0xD4F2B43A3958542) - (v87 + v86) - 0x6A795A1D1CAC2A2) ^ 0xCFA9BE79BE58F57;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0x5963B6C555D97F1FLL;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  v93 = (((v92 + v91) | 0x3A57A17B6EDF06BLL) - ((v92 + v91) | 0xFC5A85E849120F94) - 0x3A57A17B6EDF06CLL) ^ 0x62E0E73D46F2D49CLL;
  v94 = v93 ^ __ROR8__(v91, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ 0x64C31C027084DE6CLL;
  v96 = __ROR8__(v95, 8);
  v97 = v95 ^ __ROR8__(v94, 61);
  v98 = (((v96 + v97) | 0x3F31863D75651161) - ((v96 + v97) | 0xC0CE79C28A9AEE9ELL) - 0x3F31863D75651162) ^ 0x251B6DD93736BE62;
  v99 = __ROR8__(v98, 8);
  v100 = __ROR8__(v97, 61);
  v63[11] = (((((2 * (v99 + (v98 ^ v100))) | 0xAB41BFF64D60CE6CLL) - (v99 + (v98 ^ v100)) - 0x55A0DFFB26B06736) ^ 0xFE909D290E373B77) >> (8 * ((v63 + 11) & 7u))) ^ BYTE6(a60) ^ 0x1A;
  v101 = (__ROR8__((v63 + 12) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v102 = v101 ^ 0x4DE9423B6F16E7D2;
  v101 ^= 0xE5AFA7ACF6E0968ELL;
  v103 = __ROR8__(v102, 8);
  v104 = (v103 + v101 - ((2 * (v103 + v101)) & 0xA684DABE1F7F2120) - 0x2CBD92A0F0406F70) ^ 0x37DF1A8088822FEELL;
  v105 = v104 ^ __ROR8__(v101, 61);
  v106 = __ROR8__(v104, 8);
  v107 = (((v106 + v105) | 0x2D1013F9AFD52057) - ((v106 + v105) | 0xD2EFEC06502ADFA8) - 0x2D1013F9AFD52058) ^ 0xD8B2E2401A05925ELL;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ 0x5963B6C555D97F1FLL;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = __ROR8__(v109, 8);
  v112 = __ROR8__((v111 + v110 - ((2 * (v111 + v110)) & 0x505C9B69C721B602) + 0x282E4DB4E390DB01) ^ 0x496BD09E138FFFF6, 8);
  v113 = (v111 + v110 - ((2 * (v111 + v110)) & 0x505C9B69C721B602) + 0x282E4DB4E390DB01) ^ 0x496BD09E138FFFF6 ^ __ROR8__(v110, 61);
  v114 = (v112 + v113) ^ 0x64C31C027084DE6CLL;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = (__ROR8__(v114, 8) + v115) ^ v62;
  v117 = v116 ^ __ROR8__(v115, 61);
  v118 = __ROR8__(v116, 8);
  v63[12] = (((((2 * (v118 + v117)) & 0xA6AF603E61524BD2) - (v118 + v117) + 0x2CA84FE0CF56DA16) ^ 0x87980D32E7D18657) >> (8 * ((v63 + 12) & 7u))) ^ BYTE5(a60) ^ 0x33;
  v119 = __ROR8__((v63 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v120 = ((2 * (v119 - 0x6AF7234D0CC131D5)) | 0xBCD338F7A72AF0E2) - (v119 - 0x6AF7234D0CC131D5) - 0x5E699C7BD3957871;
  v121 = v120 ^ 0x1780DE40BC839FA3;
  v120 ^= 0xBFC63BD72575EEFFLL;
  v122 = __ROR8__(v121, 8);
  v123 = (((v122 + v120) | 0x524D786A2DAA5236) - ((v122 + v120) | 0xADB28795D255ADC9) - 0x524D786A2DAA5237) ^ 0xB6D00FB5AA97ED48;
  v124 = v123 ^ __ROR8__(v120, 61);
  v125 = __ROR8__(v123, 8);
  v126 = (((2 * (v125 + v124)) | 0xC461725543BD74EALL) - (v125 + v124) - 0x6230B92AA1DEBA75) ^ 0x97924893140E087CLL;
  v127 = v126 ^ __ROR8__(v124, 61);
  v128 = (__ROR8__(v126, 8) + v127) ^ 0x5963B6C555D97F1FLL;
  v129 = v128 ^ __ROR8__(v127, 61);
  v130 = (__ROR8__(v128, 8) + v129) ^ v61;
  v131 = v130 ^ __ROR8__(v129, 61);
  v132 = __ROR8__(v130, 8);
  v133 = (((v132 + v131) | 0xD6A77E9273FF605BLL) - ((v132 + v131) | 0x2958816D8C009FA4) + 0x2958816D8C009FA4) ^ 0xB2646290037BBE37;
  v134 = v133 ^ __ROR8__(v131, 61);
  v135 = __ROR8__(v133, 8);
  v63[13] = (((__ROR8__((v135 + v134 - ((2 * (v135 + v134)) & 0x9E7D2340626A9232) - 0x30C16E5FCECAB6E7) ^ 0xD5147A447366E61ALL, 8) + ((v135 + v134 - ((2 * (v135 + v134)) & 0x9E7D2340626A9232) - 0x30C16E5FCECAB6E7) ^ 0xD5147A447366E61ALL ^ __ROR8__(v134, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v63 + 13) & 7u))) ^ BYTE4(a60) ^ 0xAA;
  v136 = __ROR8__((v63 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v137 = v136 - ((2 * v136 + 0x2A11B965E67D9C56) & 0x20559374910370F8) - 0x5ACC5992C43F7959;
  v138 = v137 ^ 0x59C38B8127975FAELL;
  v137 ^= 0xF1856E16BE612EF2;
  v139 = (__ROR8__(v138, 8) + v137) ^ 0xE49D77DF873DBF7ELL;
  v140 = v139 ^ __ROR8__(v137, 61);
  v141 = (__ROR8__(v139, 8) + v140) ^ 0xF5A2F1B9B5D0B209;
  v142 = v141 ^ __ROR8__(v140, 61);
  v143 = (__ROR8__(v141, 8) + v142) ^ 0x5963B6C555D97F1FLL;
  v144 = v143 ^ __ROR8__(v142, 61);
  v145 = __ROR8__(v143, 8);
  v146 = (v145 + v144 - ((2 * (v145 + v144)) & 0xF9BA02E111CAE97ALL) + 0x7CDD017088E574BDLL) ^ 0x1D989C5A78FA504ALL;
  v147 = v146 ^ __ROR8__(v144, 61);
  v148 = __ROR8__(v146, 8);
  v149 = __ROR8__((v148 + v147 - ((2 * (v148 + v147)) & 0xBB2E9B3140AA9E2CLL) + 0x5D974D98A0554F16) ^ 0x3954519AD0D1917ALL, 8);
  v150 = (v148 + v147 - ((2 * (v148 + v147)) & 0xBB2E9B3140AA9E2CLL) + 0x5D974D98A0554F16) ^ 0x3954519AD0D1917ALL ^ __ROR8__(v147, 61);
  v151 = (v149 + v150) ^ v62;
  v152 = v151 ^ __ROR8__(v150, 61);
  v153 = __ROR8__(v151, 8);
  LOBYTE(v152) = (((((v153 + v152) | 0x6B6AF9C6B406ECE7) - ((v153 + v152) | 0x949506394BF91318) - 0x6B6AF9C6B406ECE8) ^ 0xC05ABB149C81B0A6) >> (8 * ((v63 + 14) & 7u))) ^ BYTE3(a60) ^ 0x2E;
  v154 = __ROR8__((v63 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v63[14] = v152;
  v155 = ((v154 - 0x6AF7234D0CC131D5) & 0xF89A3C6BA21CFB5FLL ^ 0x40000C09A010C112) + ((v154 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) - (((v154 - 0x6AF7234D0CC131D5) ^ 0xB9DB32660AEF3ECDLL) & 0xF89A3C6BA21CFB5FLL);
  v156 = v155 ^ 0x8A84C36C7E52240;
  v155 ^= 0xA0EEA9A15E13531CLL;
  v157 = (__ROR8__(v156, 8) + v155) ^ 0xE49D77DF873DBF7ELL;
  v158 = v157 ^ __ROR8__(v155, 61);
  v159 = (__ROR8__(v157, 8) + v158) ^ 0xF5A2F1B9B5D0B209;
  v160 = v159 ^ __ROR8__(v158, 61);
  v161 = __ROR8__(v159, 8);
  v162 = (((2 * (v161 + v160)) & 0x7EC0B560615BD22) - (v161 + v160) - 0x3F605AB030ADE92) ^ 0xA56A4C91A92C5E71;
  v163 = v162 ^ __ROR8__(v160, 61);
  v164 = __ROR8__(v162, 8);
  v165 = (((v164 + v163) & 0xF4B1E271DC896087 ^ 0xA0425158896006) + ((v164 + v163) ^ 0xFE51A922A5729599) - (((v164 + v163) ^ 0xFE51A922A5729599) & 0xF4B1E271DC896087)) ^ 0x6BA5D67989E4D1E9;
  v166 = v165 ^ __ROR8__(v163, 61);
  v167 = __ROR8__(v165, 8);
  v168 = (((2 * (v167 + v166)) | 0x81910D2EFE6F15ACLL) - (v167 + v166) - 0x40C886977F378AD6) ^ 0x240B9A950FB354BALL;
  v169 = v168 ^ __ROR8__(v166, 61);
  v170 = __ROR8__(v168, 8);
  v171 = (((v170 + v169) | 0x452FEAF2D8983268) - ((v170 + v169) | 0xBAD0150D2767CD97) - 0x452FEAF2D8983269) ^ 0x5F0501169ACB9D6BLL;
  v172 = v171 ^ __ROR8__(v169, 61);
  v173 = __ROR8__(v171, 8);
  v63[15] = (((v173 + v172 - ((2 * (v173 + v172)) & 0x5CD5F962F5DFE9B2) - 0x5195034E85100B27) ^ 0x55ABE635268A898) >> (8 * ((v63 + 15) & 7u))) ^ BYTE2(a60) ^ 0x6D;
  v174 = __ROR8__((v63 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v175 = -2 - (((0x6AF7234D0CC131D4 - v174) | 0xB9373BCC9E95648DLL) + ((v174 - 0x6AF7234D0CC131D5) | 0x46C8C433616A9B72));
  v176 = __ROR8__(v175 ^ 0xF0DE79F7F183835FLL, 8);
  v175 ^= 0x58989C606875F203uLL;
  v177 = (v176 + v175) ^ 0xE49D77DF873DBF7ELL;
  v178 = v177 ^ __ROR8__(v175, 61);
  v179 = (__ROR8__(v177, 8) + v178) ^ 0xF5A2F1B9B5D0B209;
  v180 = v179 ^ __ROR8__(v178, 61);
  v181 = (__ROR8__(v179, 8) + v180) ^ 0x5963B6C555D97F1FLL;
  v182 = v181 ^ __ROR8__(v180, 61);
  v183 = __ROR8__(v181, 8);
  v184 = (((2 * (v183 + v182)) & 0x24C3B6EDA515D42ALL) - (v183 + v182) + 0x6D9E24892D7515EALL) ^ 0xCDBB9A3DD6A311DLL;
  v185 = v184 ^ __ROR8__(v182, 61);
  v186 = __ROR8__(v184, 8);
  v187 = (((v186 + v185) | 0x3A521DF821A27A3ELL) - ((v186 + v185) | 0xC5ADE207DE5D85C1) - 0x3A521DF821A27A3FLL) ^ 0x5E9101FA5126A452;
  v188 = v187 ^ __ROR8__(v185, 61);
  v189 = (__ROR8__(v187, 8) + v188) ^ v62;
  v190 = v189 ^ __ROR8__(v188, 61);
  v191 = __ROR8__(v189, 8);
  v63[16] = (((((2 * (v191 + v190)) | 0x4D724CAE0D8F11E6) - (v191 + v190) + 0x5946D9A8F938770DLL) ^ 0xD8964852E40D4B2) >> (8 * ((v63 + 16) & 7u))) ^ BYTE1(a60) ^ 0x96;
  v192 = __ROR8__((v63 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v193 = ((2 * ((v192 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4)) | 0x301A5F137AACAE0ELL) - ((v192 - 0x6AF7234D0CC131D5) ^ 0x5C0D666DD0C97AA4) - 0x180D2F89BD565707;
  v194 = v193 ^ 0xDE90BDF0289CA71;
  v193 ^= 0xA5AFEE489B7FBB2DLL;
  v195 = __ROR8__(v194, 8);
  v196 = (((2 * (v195 + v193)) | 0x692CEF71A0CBBC0ELL) - (v195 + v193) - 0x349677B8D065DE07) ^ 0xD00B006757586179;
  v197 = v196 ^ __ROR8__(v193, 61);
  v198 = __ROR8__(v196, 8);
  v199 = (((2 * (v198 + v197)) & 0xFD81E0C09A12569ALL) - (v198 + v197) - 0x7EC0F0604D092B4ELL) ^ 0x749DFE26072666BBLL;
  v200 = v199 ^ __ROR8__(v197, 61);
  v201 = (__ROR8__(v199, 8) + v200) ^ 0x5963B6C555D97F1FLL;
  v202 = v201 ^ __ROR8__(v200, 61);
  v203 = (__ROR8__(v201, 8) + v202) ^ v61;
  v204 = v203 ^ __ROR8__(v202, 61);
  v205 = __ROR8__(v203, 8);
  v206 = (v205 + v204 - ((2 * (v205 + v204)) & 0x3076304A369A11B8) - 0x67C4E7DAE4B2F724) ^ 0xFCF804276BC9D6B0;
  v207 = v206 ^ __ROR8__(v204, 61);
  v208 = __ROR8__(v206, 8);
  v209 = (v208 + v207 - ((2 * (v208 + v207)) & 0x43F5BC2EBD15E7BELL) + 0x21FADE175E8AF3DFLL) ^ 0x3BD035F31CD95CDCLL;
  v63[17] = (((__ROR8__(v209, 8) + (v209 ^ __ROR8__(v207, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v63 + 17) & 7u))) ^ a60 ^ 0x5F;
  return sub_1000B6060(0x9508DCB2F33ECE2BLL, 0x5963B6C555D97F1FLL, 0x2A11B965E67D9C56, a3 + 349, a60, a1, a2, STACK[0x2BC], a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

uint64_t sub_10004FF50()
{
  LODWORD(STACK[0x514]) = v2;
  STACK[0x528] = STACK[0x880];
  STACK[0x580] = *(v1 + 8 * (v0 - 5608));
  return sub_1000830DC();
}

uint64_t sub_10004FF8C(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *(v4 + a3 + 16);
  v8 = (v5 + a3);
  *(v8 - 1) = *(v4 + a3);
  *v8 = v7;
  return (*(v6 + 8 * ((28 * (v3 != a3)) ^ a2)))();
}

uint64_t sub_10004FFC0(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int8x16_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v26 = a10 - 16;
  v27.i64[0] = a14 + v26 - 15;
  v27.i64[1] = a14 + v26 - 16;
  v28.i64[0] = a14 + v26 - 13;
  v28.i64[1] = a14 + v26 - 14;
  v29.i64[0] = a14 + v26 - 11;
  v29.i64[1] = a14 + v26 - 12;
  v30.i64[0] = a14 + v26 - 5;
  v30.i64[1] = a14 + v26 - 6;
  v31.i64[0] = a14 + v26 - 3;
  v31.i64[1] = a14 + v26 - 4;
  v32.i64[0] = a14 + v26 - 1;
  v32.i64[1] = a14 + v26 - 2;
  v33.i64[0] = a14 + v26 - 7;
  v33.i64[1] = a14 + v26 + a16;
  v34 = vandq_s8(v33, a1);
  v35 = vandq_s8(v32, a1);
  v36 = vandq_s8(v31, a1);
  v37 = vandq_s8(v30, a1);
  v38 = vsraq_n_u64(vshlq_n_s64(v35, 0x38uLL), v35, 8uLL);
  v39 = vsraq_n_u64(vshlq_n_s64(v34, 0x38uLL), v34, 8uLL);
  v40 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL), a3);
  v41 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL), a3);
  v42 = veorq_s8(v41, a4);
  v43 = veorq_s8(v40, a4);
  v44 = veorq_s8(v40, a5);
  v45 = veorq_s8(v41, a5);
  v46 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL), v45);
  v47 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL), v44);
  v48 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v46, a6), vorrq_s8(v46, a7)), a7), a8);
  v49 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v47, a6), vorrq_s8(v47, a7)), a7), a8);
  v50 = veorq_s8(v49, vsraq_n_u64(vshlq_n_s64(v44, 3uLL), v44, 0x3DuLL));
  v51 = veorq_s8(v48, vsraq_n_u64(vshlq_n_s64(v45, 3uLL), v45, 0x3DuLL));
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v50), v18);
  v53 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v51), v18);
  v54 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v55 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v56 = veorq_s8(v52, v54);
  v57 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v56);
  v59 = vaddq_s64(v57, v55);
  v60 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v58, v19), vorrq_s8(v58, v20)), v20), v21);
  v61 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v59, v19), vorrq_s8(v59, v20)), v20), v21);
  v62 = veorq_s8(v61, vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL));
  v63 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v64 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v61, 0x38uLL), v61, 8uLL), v62), v22);
  v65 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL), v63), v22);
  v66 = vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL);
  v67 = veorq_s8(v65, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v68 = veorq_s8(v64, v66);
  v69 = vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v68);
  v71 = veorq_s8(vaddq_s64(v69, v67), v23);
  v72 = veorq_s8(v70, v23);
  v73 = vsraq_n_u64(vshlq_n_s64(v67, 3uLL), v67, 0x3DuLL);
  v74 = veorq_s8(v72, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v75 = veorq_s8(v71, v73);
  v76 = vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v71, 0x38uLL), v71, 8uLL), v75);
  v78 = veorq_s8(vaddq_s64(v76, v74), v24);
  v79 = veorq_s8(v77, v24);
  v80 = vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL);
  v81 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v82 = veorq_s8(v78, v80);
  v80.i64[0] = a14 + v26 - 9;
  v80.i64[1] = a14 + v26 - 10;
  v83 = vaddq_s64(v38, a3);
  v84 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v81), v25);
  v169.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v82), v25), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v169.val[1] = vshlq_u64(v84, vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v85 = veorq_s8(v83, a4);
  v86 = veorq_s8(v83, a5);
  v87 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v85, 0x38uLL), v85, 8uLL), v86);
  v88 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v87, a6), vorrq_s8(v87, a7)), a7), a8);
  v89 = veorq_s8(v88, vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL));
  v90 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v89), v18);
  v91 = veorq_s8(v90, vsraq_n_u64(vshlq_n_s64(v89, 3uLL), v89, 0x3DuLL));
  v92 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91);
  v93 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v92, v19), vorrq_s8(v92, v20)), v20), v21);
  v94 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v95 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL), v94), v22);
  v96 = veorq_s8(v95, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v97 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), v96), v23);
  v98 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v99 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v98), v24);
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL)));
  v101 = vandq_s8(v80, a1);
  v102 = vaddq_s64(v39, a3);
  v169.val[0] = vshlq_u64(veorq_s8(v100, v25), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v103 = veorq_s8(v102, a4);
  v104 = veorq_s8(v102, a5);
  v105 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), v104);
  v106 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v105, a6), vorrq_s8(v105, a7)), a7), a8);
  v107 = veorq_s8(v106, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v108 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v106, 0x38uLL), v106, 8uLL), v107), v18);
  v109 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL));
  v110 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL), v109);
  v111 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v110, v19), vorrq_s8(v110, v20)), v20), v21);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v109, 3uLL), v109, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v22);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114), v23);
  v116 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v117 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v116), v24);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v116, 3uLL), v116, 0x3DuLL));
  v119 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v120 = vandq_s8(v29, a1);
  v121 = vaddq_s64(v119, v118);
  v122 = vandq_s8(v28, a1);
  v169.val[3] = vshlq_u64(veorq_s8(v121, v25), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v123 = vandq_s8(v27, a1);
  v124 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v125 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v126 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), a3);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL), a3);
  v123.i64[0] = vqtbl4q_s8(v169, *&STACK[0x3E0]).u64[0];
  v169.val[0] = veorq_s8(v127, a4);
  v169.val[1] = veorq_s8(v126, a4);
  v169.val[2] = veorq_s8(v126, a5);
  v169.val[3] = veorq_s8(v127, a5);
  v169.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL), v169.val[3]);
  v169.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), v169.val[2]);
  v169.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169.val[0], a6), vorrq_s8(v169.val[0], a7)), a7), a8);
  v169.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169.val[1], a6), vorrq_s8(v169.val[1], a7)), a7), a8);
  v169.val[2] = veorq_s8(v169.val[1], vsraq_n_u64(vshlq_n_s64(v169.val[2], 3uLL), v169.val[2], 0x3DuLL));
  v169.val[3] = veorq_s8(v169.val[0], vsraq_n_u64(vshlq_n_s64(v169.val[3], 3uLL), v169.val[3], 0x3DuLL));
  v169.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), v169.val[2]), v18);
  v169.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL), v169.val[3]), v18);
  v128 = vsraq_n_u64(vshlq_n_s64(v169.val[2], 3uLL), v169.val[2], 0x3DuLL);
  v169.val[2] = veorq_s8(v169.val[0], vsraq_n_u64(vshlq_n_s64(v169.val[3], 3uLL), v169.val[3], 0x3DuLL));
  v169.val[3] = veorq_s8(v169.val[1], v128);
  v129 = vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL);
  v169.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), v169.val[3]);
  v169.val[1] = vaddq_s64(v129, v169.val[2]);
  v169.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169.val[0], v19), vorrq_s8(v169.val[0], v20)), v20), v21);
  v169.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v169.val[1], v19), vorrq_s8(v169.val[1], v20)), v20), v21);
  v169.val[2] = veorq_s8(v169.val[1], vsraq_n_u64(vshlq_n_s64(v169.val[2], 3uLL), v169.val[2], 0x3DuLL));
  v169.val[3] = veorq_s8(v169.val[0], vsraq_n_u64(vshlq_n_s64(v169.val[3], 3uLL), v169.val[3], 0x3DuLL));
  v169.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), v169.val[2]), v22);
  v169.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL), v169.val[3]), v22);
  v130 = vsraq_n_u64(vshlq_n_s64(v169.val[2], 3uLL), v169.val[2], 0x3DuLL);
  v169.val[2] = veorq_s8(v169.val[0], vsraq_n_u64(vshlq_n_s64(v169.val[3], 3uLL), v169.val[3], 0x3DuLL));
  v169.val[3] = veorq_s8(v169.val[1], v130);
  v131 = vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL);
  v169.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), v169.val[3]);
  v169.val[1] = veorq_s8(vaddq_s64(v131, v169.val[2]), v23);
  v169.val[0] = veorq_s8(v169.val[0], v23);
  v132 = vsraq_n_u64(vshlq_n_s64(v169.val[2], 3uLL), v169.val[2], 0x3DuLL);
  v169.val[2] = veorq_s8(v169.val[0], vsraq_n_u64(vshlq_n_s64(v169.val[3], 3uLL), v169.val[3], 0x3DuLL));
  v169.val[3] = veorq_s8(v169.val[1], v132);
  v133 = vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL);
  v169.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), v169.val[3]);
  v169.val[1] = veorq_s8(vaddq_s64(v133, v169.val[2]), v24);
  v169.val[0] = veorq_s8(v169.val[0], v24);
  v134 = vsraq_n_u64(vshlq_n_s64(v169.val[2], 3uLL), v169.val[2], 0x3DuLL);
  v169.val[2] = veorq_s8(v169.val[0], vsraq_n_u64(vshlq_n_s64(v169.val[3], 3uLL), v169.val[3], 0x3DuLL));
  v135 = vaddq_s64(v124, a3);
  v169.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[1], 0x38uLL), v169.val[1], 8uLL), veorq_s8(v169.val[1], v134)), v25), vnegq_s64(vandq_s8(vshlq_n_s64(v27, 3uLL), a2)));
  v169.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169.val[0], 0x38uLL), v169.val[0], 8uLL), v169.val[2]), v25), vnegq_s64(vandq_s8(vshlq_n_s64(v28, 3uLL), a2)));
  v136 = veorq_s8(v135, a4);
  v137 = veorq_s8(v135, a5);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137);
  v139 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v138, a6), vorrq_s8(v138, a7)), a7), a8);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v141 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140), v18);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v143 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL), v142);
  v144 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v143, v19), vorrq_s8(v143, v20)), v20), v21);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), v22);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147), v23);
  v149 = veorq_s8(v148, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v150 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v148, 0x38uLL), v148, 8uLL), v149), v24);
  v151 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v149, 3uLL), v149, 0x3DuLL)));
  v152 = vaddq_s64(v125, a3);
  v169.val[1] = vshlq_u64(veorq_s8(v151, v25), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a2)));
  v153 = veorq_s8(v152, a4);
  v154 = veorq_s8(v152, a5);
  v155 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL), v154);
  v156 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v155, a6), vorrq_s8(v155, a7)), a7), a8);
  v157 = veorq_s8(v156, vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL));
  v158 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v156, 0x38uLL), v156, 8uLL), v157), v18);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v157, 3uLL), v157, 0x3DuLL));
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159);
  v161 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v160, v19), vorrq_s8(v160, v20)), v20), v21);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), v22);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), v23);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166), v24);
  v169.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL))), v25), vnegq_s64(vandq_s8(vshlq_n_s64(v80, 3uLL), a2)));
  v123.i64[1] = vqtbl4q_s8(v169, *&STACK[0x3E0]).u64[0];
  v169.val[0] = vrev64q_s8(*(a14 + v26 - 16));
  v169.val[1].i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v169.val[1].i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v169.val[0] = vrev64q_s8(veorq_s8(veorq_s8(vextq_s8(v169.val[0], v169.val[0], 8uLL), v169.val[1]), v123));
  *(a15 + v26) = vextq_s8(v169.val[0], v169.val[0], 8uLL);
  return (*(v17 + 8 * (((a13 == v26) * v16) | a11)))();
}

uint64_t sub_10004FFC8@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12)
{
  v14 = a1 - 5502;
  if (v12)
  {
    v15 = a12 == (v14 ^ 0x2D66) - 8498;
  }

  else
  {
    v15 = 1;
  }

  v17 = v15 || a3 == 0;
  return (*(v13 + 8 * ((v17 * (v14 ^ 0xC7F)) | v14)))();
}

uint64_t sub_1000500A8@<X0>(int a1@<W8>)
{
  v2 = a1 + 8431;
  v3 = STACK[0x730];
  v4 = STACK[0x924];
  v5 = a1 + 5;
  v6 = a1 + 8330;
  STACK[0x4C0] = *(v1 + 8 * a1);
  STACK[0x6A8] = &STACK[0x7B8];
  LODWORD(STACK[0x7F4]) = v4;
  STACK[0x4F8] = v3;
  STACK[0x440] = 0;
  LODWORD(STACK[0x46C]) = 197499219;
  STACK[0x7D8] = 0x4789E5A74F535ADDLL;
  STACK[0x780] = 0;
  v7 = (*(v1 + 8 * ((a1 + 8431) ^ 0x127)))(16, 0x20040A4A59CD2);
  v8 = STACK[0x400];
  STACK[0x880] = v7;
  return (*(v8 + 8 * ((((v5 ^ (v7 == 0)) & 1) * (v6 ^ 0x2433)) ^ v2)))();
}

uint64_t sub_100050210@<X0>(int a1@<W8>)
{
  STACK[0xA98] = v1;
  v2 = STACK[0x520];
  STACK[0xAA0] = STACK[0x520];
  return (*(STACK[0x400] + 8 * (((v1 - v2 > (3 * (a1 ^ 0x4A2u)) - 624) * ((a1 ^ 0x2051) - 9043)) ^ a1)))();
}

uint64_t sub_1000502D0@<X0>(int a1@<W8>)
{
  v3 = LODWORD(STACK[0x4C4]) + 1185649741;
  v4 = v3 < v1;
  if (v4 == v1 + 1 < v1)
  {
    v4 = v1 + 1 < v3;
  }

  return (*(v2 + 8 * ((2826 * v4) ^ (a1 + 2855))))();
}

void sub_100050430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1000504F0()
{
  LODWORD(STACK[0x848]) = v0 - v1 + 26;
  v4 = (*(v3 + 8 * (v2 + 4063)))();
  v5 = STACK[0x400];
  STACK[0x4B0] = v4;
  return (*(v5 + 8 * (((v4 == 0) * (((v2 - 4515) | 0x2000) ^ 0x242B)) ^ v2)))();
}

void sub_100050570()
{
  **(v1 + 8 * ((v3 - 4144) ^ 0xF7A)) = 538291947;
  **(v1 + 8 * (v3 - 7980)) = *v2;
  *(v0 + 8) = 16257999;
}

uint64_t sub_1000505CC()
{
  v5 = (v2 | 0x311) - 30;
  v6.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v6.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  v7 = (((v2 | 0x311) - 4025) | 0x46u) - 1095 + v1;
  v8 = *(v4 + v7 - 15);
  v9 = *(v4 + v7 - 31);
  v10 = v0 + v7;
  *(v10 - 15) = veorq_s8(v8, v6);
  *(v10 - 31) = veorq_s8(v9, v6);
  LODWORD(v10) = ((v5 ^ 0x7FFFEC7B) & v1) != 32;
  return (*(v3 + 8 * (((2 * v10) | (32 * v10)) ^ v5)))();
}

uint64_t sub_10005069C()
{
  STACK[0x568] = 0;
  v2 = STACK[0x730];
  STACK[0x500] = *(v0 + 8 * (v1 - 6063));
  return sub_1000D57DC(v2);
}

uint64_t sub_1000506DC@<X0>(int a1@<W8>)
{
  v4 = (a1 + 759503079) & 0x52BAF579;
  *(v2 - 224) = (a1 - 2140801677) ^ (914963389 * ((2 * ((v2 - 232) & 0x5F110898) - (v2 - 232) + 552531814) ^ 0xC12461D));
  (*(v3 + 8 * (a1 + 4071)))(v2 - 232);
  *(v1 + 112) = *(v2 - 232) ^ (v4 - 1232140833);
  return sub_10008D8E4(v4 - 8669);
}

uint64_t sub_100050810@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  v8 = (v2 ^ v4 ^ v5) + v3;
  STACK[0xA30] = v8;
  *(a1 + v8) = ((a2 + 1) ^ v6) * (a2 + 18);
  return (*(v7 + 8 * (v2 | (4 * (v8 == 0)))))();
}

uint64_t sub_100050858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  v55 = (a7 - 4584);
  v56 = *(v53 + 8 * (((v55 ^ 0xF41) * (a44 < 0x10)) ^ a7));
  return v56(a1, a2, a3, a4, v55, v55 ^ 0x1720, v56, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, v54, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53);
}

uint64_t sub_1000509A0@<X0>(int a1@<W8>)
{
  v2 = STACK[0x508];
  STACK[0x478] = *(v1 + 8 * a1);
  return sub_1000B0D70(v2);
}

uint64_t sub_1000509C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22)
{
  v25 = *(a22 + 40);
  v26 = a9 ^ 0x3AAD;
  v27 = (v23 + a21 + (a9 ^ 0x3AADu) - 1505084478);
  v25[15] = v27[15];
  v25[14] = v27[14];
  v25[13] = v27[13];
  v25[12] = v27[12];
  v25[11] = v27[11];
  v25[10] = v27[10];
  v25[9] = v27[9];
  v25[8] = v27[8];
  v25[7] = v27[7];
  v25[6] = v27[6];
  v25[5] = v27[5];
  v25[4] = v27[4];
  v25[3] = v27[3];
  v25[2] = v27[2];
  v25[1] = v27[1];
  *v25 = *v27;
  return (*(v24 + 8 * (((((v22 == 0) ^ (v26 - 3)) & 1) * ((v26 - 656102915) ^ 0xD8E4CF49)) ^ v26)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void sub_100050ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4)
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

uint64_t sub_100050C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unsigned int a19, int a20)
{
  *a5 = 0;
  a19 = v21 - 1710126949 * ((&a19 & 0xD0939F21 | ~(&a19 | 0xD0939F21)) ^ 0x1D773B4E) - 934168436;
  v22 = (*(v20 + 8 * (v21 - 1410481882)))(&a19);
  return (*(v20 + 8 * (((a20 == 16257999) * ((v21 ^ (v21 + 2010)) + 9212)) ^ (v21 - 1410489432))))(v22);
}

uint64_t sub_100050D70(uint64_t a1, unint64_t a2)
{
  *&STACK[0x240] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3D0] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x3E0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3B0] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x3C0] = vdupq_n_s64(0xE79B7CAD81EAE601);
  *&STACK[0x3A0] = vdupq_n_s64(0x186483527E1519FEuLL);
  *&STACK[0x360] = vdupq_n_s64(0x518DC1691103FE2CuLL);
  *&STACK[0x370] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x340] = vdupq_n_s64(a2);
  *&STACK[0x350] = vdupq_n_s64(0xF9CB24FE88F58F70);
  *&STACK[0x320] = vdupq_n_s64(0xD8E8834EF9F28923);
  *&STACK[0x330] = vdupq_n_s64(0x4E2EF9620C1AEDB8uLL);
  *&STACK[0x300] = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  *&STACK[0x310] = vdupq_n_s64(0x2D4A72F74C223B2AuLL);
  *&STACK[0x380] = vdupq_n_s64(0x71C80D200006C20uLL);
  *&STACK[0x390] = vdupq_n_s64(0xF8C32E29FF588391);
  *&STACK[0x2E0] = vdupq_n_s64(0x9BDDB8F1D8DC304DLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x2D0] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x230] = xmmword_10069D330;
  *&STACK[0x2C0] = vdupq_n_s64(0xAB3042D228875C41);
  return sub_10001F608();
}

uint64_t sub_100051080@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  STACK[0x2B0] = v65;
  STACK[0x290] = a3 & 0xFFFFFFF8;
  v68 = a2 + a3 - a1;
  STACK[0x2A0] = v63;
  v69.i64[0] = v68 - 5;
  v69.i64[1] = v68 - 6;
  v70.i64[0] = v68 - 3;
  v70.i64[1] = v68 - 4;
  v71.i64[0] = v68 - 1;
  v71.i64[1] = v68 - 2;
  v72.i64[0] = v68 + ((v64 + 1336814895) & 0xB051CAF4) - 2663;
  v72.i64[1] = v68 - 8;
  v73 = vandq_s8(v72, *&STACK[0x3E0]);
  v74 = vandq_s8(v71, *&STACK[0x3E0]);
  v75 = vandq_s8(v70, *&STACK[0x3E0]);
  v76 = vandq_s8(v69, *&STACK[0x3E0]);
  v77 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v78 = vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL);
  v79 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v80 = vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL);
  v81 = vdupq_n_s64(0x38uLL);
  v82 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3B0], v80), *&STACK[0x3A0]), vorrq_s8(vaddq_s64(v80, *&STACK[0x3D0]), *&STACK[0x3C0]));
  v83 = vorrq_s8(vaddq_s64(v77, *&STACK[0x3D0]), *&STACK[0x3C0]);
  v84 = vorrq_s8(vsubq_s64(*&STACK[0x3B0], v77), *&STACK[0x3A0]);
  v85 = vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3B0], v79), *&STACK[0x3A0]), vorrq_s8(vaddq_s64(v79, *&STACK[0x3D0]), *&STACK[0x3C0]));
  v86 = vsubq_s64(*&STACK[0x370], vaddq_s64(v84, v83));
  v87 = vsubq_s64(*&STACK[0x370], vaddq_s64(vorrq_s8(vsubq_s64(*&STACK[0x3B0], v78), *&STACK[0x3A0]), vorrq_s8(vaddq_s64(v78, *&STACK[0x3D0]), *&STACK[0x3C0])));
  v88 = veorq_s8(v87, *&STACK[0x360]);
  v89 = veorq_s8(v86, *&STACK[0x360]);
  v90 = veorq_s8(v86, *&STACK[0x350]);
  v91 = veorq_s8(v87, *&STACK[0x350]);
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL), v90), *&STACK[0x340]);
  v93 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v91), *&STACK[0x340]);
  v94 = vsraq_n_u64(vshlq_n_s64(v90, 3uLL), v90, 0x3DuLL);
  v95 = veorq_s8(v93, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v96 = veorq_s8(v92, v94);
  v97 = vsraq_n_u64(vshlq_n_s64(v93, 0x38uLL), v93, 8uLL);
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v96);
  v99 = vaddq_s64(v97, v95);
  v100 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v99, v99), *&STACK[0x330]), v99), *&STACK[0x320]), *&STACK[0x310]);
  v101 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v98, v98), *&STACK[0x330]), v98), *&STACK[0x320]), *&STACK[0x310]);
  v102 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v103 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL));
  v104 = veorq_s8(v100, v102);
  v105 = vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL);
  v106 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL), v104);
  v107 = veorq_s8(vaddq_s64(v105, v103), *&STACK[0x300]);
  v108 = veorq_s8(v106, *&STACK[0x300]);
  v109 = vsraq_n_u64(vshlq_n_s64(v103, 3uLL), v103, 0x3DuLL);
  v110 = veorq_s8(v108, vsraq_n_u64(vshlq_n_s64(v104, 3uLL), v104, 0x3DuLL));
  v111 = veorq_s8(v107, v109);
  v112 = vsraq_n_u64(vshlq_n_s64(v108, 0x38uLL), v108, 8uLL);
  v113 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v111);
  v114 = veorq_s8(vaddq_s64(v112, v110), *&STACK[0x2F0]);
  v115 = veorq_s8(v113, *&STACK[0x2F0]);
  v116 = vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL);
  v117 = veorq_s8(v115, vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL));
  v118 = veorq_s8(v114, v116);
  v119 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v120 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v114, 0x38uLL), v114, 8uLL), v118);
  v121 = vaddq_s64(v119, v117);
  v122 = veorq_s8(v121, *&STACK[0x390]);
  v123 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v121, v67), *&STACK[0x380]), v122), vandq_s8(v122, v67));
  v124 = veorq_s8(v120, *&STACK[0x390]);
  v125 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v120, v67), *&STACK[0x380]), v124), vandq_s8(v124, v67)), *&STACK[0x2E0]);
  v126 = veorq_s8(v123, *&STACK[0x2E0]);
  v127 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v128 = veorq_s8(v125, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v129 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v127), *&STACK[0x2D0]);
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v128), *&STACK[0x2D0]);
  v131 = vsraq_n_u64(vshlq_n_s64(v127, 3uLL), v127, 0x3DuLL);
  v132 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL));
  v133 = veorq_s8(v129, v131);
  v134 = vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL);
  v135 = vsraq_n_u64(vshlq_n_s64(v129, 0x38uLL), v129, 8uLL);
  v136 = vsubq_s64(*&STACK[0x370], v85);
  v173.val[2] = vshlq_u64(veorq_s8(vaddq_s64(v135, v133), *&STACK[0x2C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v69, 3uLL), v81)));
  v173.val[1] = vshlq_u64(veorq_s8(vaddq_s64(v134, v132), *&STACK[0x2C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v70, 3uLL), v81)));
  v137 = veorq_s8(v136, *&STACK[0x360]);
  v138 = veorq_s8(v136, *&STACK[0x350]);
  v139 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL), v138), *&STACK[0x340]);
  v140 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v140);
  v142 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v141, v141), *&STACK[0x330]), v141), *&STACK[0x320]), *&STACK[0x310]);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v140, 3uLL), v140, 0x3DuLL));
  v144 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143), *&STACK[0x300]);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v146 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), *&STACK[0x2F0]);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL), v147);
  v149 = veorq_s8(v148, *&STACK[0x390]);
  v150 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v148, v67), *&STACK[0x380]), v149), vandq_s8(v149, v67)), *&STACK[0x2E0]);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), *&STACK[0x2D0]);
  v153 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL)));
  v154 = vsubq_s64(*&STACK[0x370], v82);
  v173.val[0] = vshlq_u64(veorq_s8(v153, *&STACK[0x2C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v71, 3uLL), v81)));
  v155 = veorq_s8(v154, *&STACK[0x360]);
  v156 = veorq_s8(v154, *&STACK[0x350]);
  v157 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156), *&STACK[0x340]);
  v158 = veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158);
  v160 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v159, v159), *&STACK[0x330]), v159), *&STACK[0x320]), *&STACK[0x310]);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), *&STACK[0x300]);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), *&STACK[0x2F0]);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(v166, *&STACK[0x390]);
  v168 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v166, v67), *&STACK[0x380]), v167), vandq_s8(v167, v67)), *&STACK[0x2E0]);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), *&STACK[0x2D0]);
  v173.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL))), *&STACK[0x2C0]), vnegq_s64(vandq_s8(vshlq_n_s64(v72, 3uLL), v81)));
  *(a62 + v62 + v63 + a3 - a1) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v173, v66)), *(v68 - 8));
  v171 = a1 - (a3 & 0xFFFFFFF8) == -8;
  return (*(STACK[0x400] + 8 * ((v171 | (2 * v171)) ^ v64)))();
}

uint64_t sub_100051680()
{
  *v1 = 96;
  *(v1 + 4) = 0x817CD8C582DA5774;
  *(v1 + 12) = 0x6B1B3F6D9C6DE02BLL;
  *(v1 + 20) = 1333359008;
  *(v1 + 24) = 4;
  *(v1 + 28) = 0x70CC0723262192B4;
  return (*(v2 + 8 * ((v0 + 3344) ^ (2 * (*(v1 + 40) != 0)))))();
}

uint64_t sub_100051700@<X0>(int a1@<W8>)
{
  (*(v3 + 8 * (a1 ^ v1)))();
  *(v2 + 24) = 0;
  return sub_100022C2C();
}

void sub_100051764()
{
  v0 = *(&off_100755B60 + ((-85 * ((dword_10077E220 + dword_10077E290) ^ 0xDF)) ^ byte_10068E1C0[byte_100683B50[(-85 * ((dword_10077E220 + dword_10077E290) ^ 0xDF))] ^ 0x80]) + 102);
  v1 = -85 * ((dword_10077E220 + *v0) ^ 0xDF);
  v2 = *(&off_100755B60 + (byte_100694EA8[(byte_10068DFC8[v1 - 8] ^ 0x6D) - 8] ^ v1) + 184);
  v3 = *v2 - *v0 - &v5;
  *v0 = (2054362027 * v3) ^ 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * (((v6 | 0x96B1385F) - v6 + (v6 & 0x694EC7A0)) ^ 0xA4AA63CF);
  LOBYTE(v2) = -85 * (*v0 ^ 0xDF ^ *v2);
  v4 = *(&off_100755B60 + ((-85 * (dword_10077E290 ^ 0xDF ^ dword_10077E220)) ^ byte_10068DEC0[byte_100683950[(-85 * (dword_10077E290 ^ 0xDF ^ dword_10077E220))] ^ 0x21]) + 150) - 8;
  (*&v4[8 * (byte_100694FA8[(byte_10068E0C0[v2] ^ 0x2A) - 8] ^ v2) + 75712])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100051A50@<X0>(unsigned __int16 a1@<W8>)
{
  v4 = (((v2 ^ 0xFFEC) + 20) ^ ((v2 ^ 0xFA21) + 1503) ^ ((v2 ^ 0xE6C6) + 4634 + ((v1 + 2475) ^ 0x1507))) - 2697;
  v5 = v4;
  v6 = (v4 >> 2) < 0x49Bu;
  if (a1 > 0xED93u == v6)
  {
    v6 = v5 > (a1 + 4716);
  }

  return (*(v3 + 8 * ((10902 * v6) ^ v1)))();
}

void sub_100051AE4(_DWORD *a1)
{
  v1 = *a1 + 1358806181 * (((a1 | 0x3472B3FC) - (a1 & 0x3472B3FC)) ^ 0xB5DDF7F);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_100051C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, unsigned int a13, unsigned int a14, uint64_t a15, uint64_t a16)
{
  v21 = 1875091903 * (((&a12 ^ 0x79F8533E) + 836021255 - 2 * ((&a12 ^ 0x79F8533E) & 0x31D4AC07)) ^ 0x7E597CBA);
  a15 = a11;
  a13 = (v17 ^ 0x3F3DB7BA) + ((2 * v17) & 0x7E7B6F74) - 522256656 + v21;
  a14 = v21 + (v19 ^ 0x9D508B17) + 1082;
  (*(v18 + 8 * (v19 ^ 0x9D50B748)))(&a12);
  v22 = *(v16 + 8);
  v23 = 1824088897 * (((&a12 | 0x95F7DA19) - &a12 + (&a12 & 0x6A0825E0)) ^ 0xCD9E097B);
  a14 = (*v16 ^ 0x7EA6FF8E) - v23 + (((v19 ^ 0x9D508B15) - 45226708) & (2 * *v16)) - 805442820;
  a12 = (v19 ^ 0x9D508B17) - 2885 + v23;
  a15 = v22;
  a16 = a11;
  (*(v18 + 8 * ((v19 ^ 0x9D508B17) + 2989)))(&a12);
  v24 = *(v16 + 24);
  v25 = 1824088897 * ((2 * ((&a12 ^ 0x36859D1A) & 0x5B1A6010) - (&a12 ^ 0x36859D1A) - 1528455189) ^ 0xCA09D193);
  a14 = (*(v16 + 16) ^ 0x6FB7FBCE) - v25 + ((2 * *(v16 + 16)) & 0xDF6FF79C) - 554897732;
  a12 = (v19 ^ 0x9D508B17) - 2885 + v25;
  a15 = v24;
  a16 = a11;
  v26 = (*(v18 + 8 * (v19 ^ 0x9D50B77A)))(&a12);
  return (*(v18 + 8 * ((1882 * (a13 == v20)) ^ v19 ^ 0x9D508B17)))(v26);
}

uint64_t sub_100051ED0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 + v2 - 1 - 31);
  v6 = a1 + v2 - 1;
  *(v6 - 15) = *(a2 + v2 - 1 - 15);
  *(v6 - 31) = v5;
  return (*(v4 + 8 * ((51 * (((1178 * ((v3 + 1645879281) & 0x9DE5DFFD ^ 0x17DB)) ^ 0x914) != ((((v3 + 1645879281) & 0x9DE5DFFD) - 6137) & v2))) ^ (v3 + 1645879281) & 0x9DE5DFFD)))();
}

uint64_t sub_100051F54()
{
  STACK[0xAD8] = v1;
  v3 = STACK[0x8B8];
  STACK[0xAE0] = STACK[0x8B8];
  return (*(v2 + 8 * (((v1 - v3 > 9) * (((v0 + 946420354) & 0xC796B6BC) + 1932)) ^ v0)))();
}

uint64_t sub_100051FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unsigned int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v23 = (v22 ^ 0xD1E74FD2) * v20 + 768039326;
  v24 = (v23 ^ 0xD6C97D99) & (2 * (v23 & (v21 - 427218400))) ^ v23 & (v21 - 427218400);
  v25 = ((2 * (v23 ^ 0x9ED9FCB9)) ^ 0xF0A17A40) & (v23 ^ 0x9ED9FCB9) ^ (2 * (v23 ^ 0x9ED9FCB9)) & 0x7850BD20;
  v26 = (v25 ^ 0x30108900) & (4 * v24) ^ v24;
  v27 = ((4 * (v25 ^ 0x8508520)) ^ 0xE142F480) & (v25 ^ 0x8508520) ^ (4 * (v25 ^ 0x8508520)) & 0x7850BD20;
  v28 = (v27 ^ 0x6040B400) & (16 * v26) ^ v26;
  v29 = ((16 * (v27 ^ 0x18100920)) ^ 0x850BD200) & (v27 ^ 0x18100920) ^ (16 * (v27 ^ 0x18100920)) & 0x7850BD20;
  v30 = v28 ^ 0x7850BD20 ^ (v29 ^ 0x9000) & (v28 << 8);
  v31 = v23 ^ (2 * ((v30 << 16) & 0x78500000 ^ v30 ^ ((v30 << 16) ^ 0x3D200000) & (((v29 ^ 0x78502D20) << 8) & 0x78500000 ^ 0x28400000 ^ (((v29 ^ 0x78502D20) << 8) ^ 0x50BD0000) & (v29 ^ 0x78502D20))));
  LODWORD(a17) = (a9 - 4075) | 0x402;
  v33 = v31 == a17 + 1713911591 || ((((a9 - 3177) | 0x1C9) - 1516) & v31) != 9;
  return (*(a2 + 8 * ((92 * v33) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_100052208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v6 + 8 * ((42 * (((((v5 ^ 0x825) + 3075) ^ (STACK[0x220] < 0x10)) & 1) == 0)) ^ v5));
  STACK[0x210] = v4;
  return v7(a1, a2, a3, a4, 0);
}

uint64_t sub_100052250(_DWORD *a1)
{
  v1 = 2048652491 * ((-871686245 - (a1 | 0xCC0B1F9B) + (a1 | 0x33F4E064)) ^ 0x82457761);
  v2 = a1[1] + v1;
  return (*(*(&off_100755B60 + (v2 ^ 0x1D2F)) + (((*a1 - v1 - 16258000 < 0x63) * (((v2 - 6712) ^ 0x22FA) + ((v2 - 6712) | 0x44A) - 9962)) ^ v2) - 1))();
}