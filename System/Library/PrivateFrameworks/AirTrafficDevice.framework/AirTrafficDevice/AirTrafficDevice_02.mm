uint64_t sub_223897AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, unint64_t a58, uint64_t a59, uint64_t a60, int a61)
{
  v61 = STACK[0x450];
  STACK[0x3E0] = *(v65 + 8 * (a61 - 1036));
  STACK[0x398] = v61;
  STACK[0x440] = a58;
  v62 = ((*(v61 + 68) & ((((a61 - 55) | 0x24E) - 535) ^ 0x467) ^ 0xD44F96C4) + 1572829549) ^ ((*(v61 + 68) & ((((a61 - 55) | 0x24E) - 535) ^ 0x467) ^ 0x1D7D3135) - 1802641762) ^ ((*(v61 + 68) & ((((a61 - 55) | 0x24E) - 535) ^ 0x467) ^ 0xC932A7F1) + 1086474330);
  *(v61 + v62 + 1980698711) = -48;
  v63.n128_u64[0] = 0x5050505050505050;
  v63.n128_u64[1] = 0x5050505050505050;
  return (*(v65 + 8 * ((358 * (v62 + 1980698655 < 0xFFFFFFC8)) | (a61 - 1104))))(a1, 9, a42, a41, v63);
}

uint64_t sub_223897AC8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int8x16_t *a6@<X8>)
{
  *a6 = veorq_s8(*v7, xmmword_223907ED0);
  STACK[0x498] += (v6 - 741) ^ 0x3AELL;
  STACK[0x4A0] = a1;
  STACK[0x4A8] = a1;
  return (*(v8 + 8 * (v6 ^ (193 * (a6 == a1)))))(a1, a2, a3, a4, a5);
}

uint64_t sub_223897B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v11 = *(v10 - 220 + v5 + 72);
  v12 = (((a5 + v7 - 2363) ^ 0xDD786FC3) & (2 * v5)) + (v5 ^ 0x6BDF2FF5) + v6;
  *(a1 + v12) = v11 ^ 0x8E;
  *(a1 + v12 + 1) = (BYTE1(v11) ^ 0x36) - ((2 * (BYTE1(v11) ^ 0x36)) & 0xA0) + 80;
  *(a1 + v12 + 2) = (BYTE2(v11) ^ 0xFC) - ((2 * (BYTE2(v11) ^ 0xFC)) & 0xA0) + 80;
  *(a1 + v12 + 3) = (HIBYTE(v11) ^ 0xDF) - ((2 * (HIBYTE(v11) ^ 0xDF)) & 0xA0) + 80;
  return (*(v9 + 8 * (((v5 + 4 < *(v10 - 128)) * v8) ^ v7)))();
}

uint64_t sub_223897BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned int a14, char *a15, int a16)
{
  a15 = &a10;
  a14 = (50899313 * (((&a14 | 0x6403F09D) - &a14 + (&a14 & 0x9BFC0F60)) ^ 0x4EC8DAE7)) ^ 0xF11;
  v18 = (*(v16 + 32872))(&a14);
  return (*(v16 + 8 * ((233 * (a16 != v17)) ^ 0x17Au)))(v18);
}

uint64_t sub_223897C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, uint64_t a21, unsigned int a22, int a23, uint64_t a24)
{
  v29 = &a19;
  a21 = a17;
  a19 = (v24 + 825) ^ (1564307779 * (((v29 | 0x5B95807D) + (~v29 | 0xA46A7F82)) ^ 0xCC984C6F));
  a23 = -1564307779 * (((v29 | 0x5B95807D) + (~v29 | 0xA46A7F82)) ^ 0xCC984C6F) + 1264667083 * v26 + 1046635743;
  (*(v27 + 8 * (v24 + 2540)))(&a19);
  v30 = 1564307779 * ((-1045856419 - (&a19 ^ 0x868D46CB | 0xC1A97F5D) + (&a19 ^ 0x868D46CB | 0x3E5680A2)) ^ 0x2FD60A7A);
  a23 = 1264667083 * a13 - v30 + 1046635743;
  a21 = a17;
  a19 = (v24 + 825) ^ v30;
  (*(v27 + 8 * (v24 + 2540)))(&a19);
  v31 = 742307843 * ((2 * (&a19 & 0x4FF4BC70) - &a19 + 806044557) ^ 0x2E29CED8);
  a24 = a17;
  a21 = v28;
  a22 = ((v25 ^ 0x47FEFF76) + ((2 * v25) & 0x8FFDFEEC) + v24 - 1324602) ^ v31;
  a19 = (v24 - 282) ^ v31;
  v32 = (*(v27 + 8 * (v24 ^ 0x1630)))(&a19);
  return (*(v27 + 8 * ((2305 * (a20 == 1423875590)) | v24)))(v32);
}

uint64_t sub_223897E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, uint64_t *a14, int a15)
{
  a14 = &a9;
  a13 = (v16 + 2176) ^ (50899313 * ((-766112153 - (&a13 | 0xD2560E67) + (&a13 | 0x2DA9F198)) ^ 0x762DBE2));
  v18 = (*(v15 + 8 * (v16 ^ 0x169C)))(&a13);
  return (*(v15 + 8 * ((2954 * (a15 == v17 + (v16 ^ 0x430) - 673)) ^ v16)))(v18);
}

uint64_t sub_223897EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = (1037613739 * (&a12 ^ 0xD1022D7F)) ^ 0x86F54BA0;
  v14 = (*(v13 + 32816))(&a12);
  return (*(v13 + 8 * ((264 * (a12 == 1423875590)) ^ 0x21Bu)))(v14);
}

uint64_t sub_2238980F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, int *a22, unsigned int a23)
{
  a23 = (v23 - 68) ^ (843532609 * ((((2 * &a20) | 0xCE336D0A) - &a20 - 1729738373) ^ 0x3B54E200));
  a20 = a19;
  a22 = &a18;
  v25 = (*(v24 + 8 * (v23 ^ 0x47Eu)))(&a20);
  return (*(v24 + 8 * (((a18 == (v23 ^ 0xB92)) * (((v23 - 1531293203) & 0x5B45A6BE) - 1076)) ^ v23)))(v25);
}

uint64_t sub_2238982D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, int a14, int a15, unsigned int a16, char *a17)
{
  v21 = 675097751 * ((&a12 - 1539687304 - 2 * (&a12 & 0xA43A3C78)) ^ 0xE77A19EE);
  a16 = v21 ^ 0xBEB0E746;
  a12 = a11;
  a17 = &a10;
  a13 = (v20 + 1421512091) ^ v21;
  a14 = v21 ^ 0x5BE748A1;
  v22 = (*(v17 + 8 * (v20 + 3702)))(&a12);
  return (*(v17 + 8 * ((2445 * (a15 == ((v20 + 1073565317) ^ v19) + v18)) ^ (v20 + 22))))(v22);
}

void Y2Zxt()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = qword_2836EB200[((-33 * ((qword_27D09D558 - dword_27D09D818) ^ 0x74)) ^ byte_2238FD7F0[byte_2238FA660[(-33 * ((qword_27D09D558 - dword_27D09D818) ^ 0x74))] ^ 0xFD]) + 26];
  v1 = off_2836EB588 - 4;
  v2 = off_2836EB888 - 12;
  v3 = qword_2836EB200[(*(off_2836EB888 + (*(off_2836EB588 + (-33 * (*v0 ^ qword_27D09D558 ^ 0x74)) - 4) ^ 0xFEu) - 12) ^ (-33 * (*v0 ^ qword_27D09D558 ^ 0x74))) - 31];
  v4 = 1321670111 * (((*v3 ^ *v0) - &v6) ^ 0x448BD34F94FDFB74);
  *v0 = v4;
  *v3 = v4;
  v7[1] = (1037613739 * (v7 ^ 0xD1022D7F)) ^ 0x86F54BA0;
  LOBYTE(v3) = -33 * ((*v3 + *v0) ^ 0x74);
  v5 = qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D818) ^ 0x74)) ^ byte_2238FD8F0[byte_2238FA760[(-33 * ((qword_27D09D558 + dword_27D09D818) ^ 0x74))] ^ 0xC9]) - 76];
  (*(v5 + 8 * ((v3 ^ v2[v1[v3] ^ 0xBB]) + 4002)))(v7);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_223898970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, int a15, unsigned int a16, char *a17)
{
  v21 = ((2 * (&a12 & 0x2EEE3100) - &a12 + 1360121597) ^ 0x1251EB6B) * v19;
  a12 = a9;
  a16 = v21 ^ 0xBEB0E746;
  a13 = (v20 + 1421511323) ^ v21;
  a14 = v21 ^ 0xE4C30646;
  a17 = &a10;
  v22 = (*(v17 + 8 * (v20 + 2934)))(&a12);
  return (*(v17 + 8 * (((a15 == v18 + 5 * (v20 ^ 0x491) - 275) * ((v20 - 1084095145) & 0x409DFEBF ^ 0x612)) ^ v20)))(v22);
}

uint64_t sub_223898A58@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = (v2 - 2066823623) & 0x7B31333F;
  *v4 = a1;
  *v3 = a2;
  v7 = (v6 + 61267915) & 0xFC591FFF;
  v11 = v6 - 143681137 * ((((2 * &v11) | 0xF3392D92) - &v11 - 2040305353) ^ 0x9F343AD9) - 41;
  v12 = v10;
  (*(v5 + 8 * (v6 ^ 0x1327)))(&v11);
  v12 = v9;
  v11 = v7 - 143681137 * (((&v11 | 0xB58585DB) - (&v11 & 0xB58585DB)) ^ 0x532D29CB) + 12;
  (*(v5 + 8 * (v7 + 3342)))(&v11);
  return 0;
}

void df35957c4e0()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = qword_2836EB200[(*(off_2836EB7F0 + (*(off_2836EB850 + (-33 * ((qword_27D09D558 + dword_27D09D768) ^ 0x74)) - 4) ^ 0x64u)) ^ (-33 * ((qword_27D09D558 + dword_27D09D768) ^ 0x74))) + 157];
  v1 = *(v0 - 4);
  v2 = qword_2836EB200[((-33 * (v1 ^ qword_27D09D558 ^ 0x74)) ^ *(off_2836EB7F0 + (*(off_2836EB850 + (-33 * (v1 ^ qword_27D09D558 ^ 0x74)) - 4) ^ 0x64u))) - 3];
  v3 = (*v2 + v1) ^ &v10;
  *(v0 - 4) = 1321670111 * (v3 - 0x448BD34F94FDFB74);
  *v2 = 1321670111 * (v3 ^ 0x448BD34F94FDFB74);
  v9 = 0;
  v12 = &v9;
  v13 = -1224077185 - 1785193651 * ((2 * (v11 & 0x71294F8) - v11 - 118658299) ^ 0xECCCF29);
  v4 = off_2836EB588 - 4;
  v5 = off_2836EB888 - 12;
  v6 = qword_2836EB200[((-33 * ((qword_27D09D558 + dword_27D09D768) ^ 0x74)) ^ byte_2238FA560[byte_223907C60[(-33 * ((qword_27D09D558 + dword_27D09D768) ^ 0x74))] ^ 0xFC]) - 132];
  (*(v6 + 8 * ((*(off_2836EB888 + (*(off_2836EB588 + (-33 * ((*v2 + *(v0 - 4)) ^ 0x74)) - 4) ^ 0xDBu) - 12) ^ (-33 * ((*v2 + *(v0 - 4)) ^ 0x74))) + 3998)))(v11);
  v8 = 0;
  v12 = &v8;
  v13 = -1224077185 - 1785193651 * ((2 * (v11 & 0x1808A0A0) - v11 - 403218599) ^ 0x11D6FB75);
  (*(v6 + 8 * (((-33 * (*(v0 - 4) ^ 0x74 ^ *v2)) ^ v5[v4[(-33 * (*(v0 - 4) ^ 0x74 ^ *v2))] ^ 0x4F]) + 4082)))(v11);
  v11[1] = (1037613739 * ((325949872 - (v11 | 0x136D99B0) + (v11 | 0xEC92664F)) ^ 0x3D904B30)) ^ 0x86F54BA0;
  v7 = -33 * ((*v2 - *(v0 - 4)) ^ 0x74);
  (*(v6 + 8 * ((*(off_2836EB578 + (*(off_2836EB480 + v7 - 4) ^ 0xF0u) - 8) ^ v7) + 4100)))(v11);
  __asm { BRAA            X8, X17 }
}

void sub_223898FF4(uint64_t a1)
{
  v1 = *(a1 + 36) ^ (1504884919 * (a1 ^ 0xFBC3B71B));
  __asm { BRAA            X11, X17 }
}

uint64_t sub_2238990F0()
{
  v4 = (v3 - 2233) | 0x4A2;
  v5 = (v4 - 917) | 2;
  v11 = v8;
  v10 = v4 - ((&v10 & 0x12326DB2 | ~(&v10 | 0x12326DB2)) ^ 0xB653E5D) * v2 - 416;
  (*(v1 + 8 * (v4 + 2914)))(&v10);
  v11 = v7;
  v10 = v5 - (((&v10 | 0xBCCEA105) - &v10 + (&v10 & 0x43315EF8)) ^ 0x5A660D15) * v2 + 499;
  result = (*(v1 + 8 * (v5 + 3829)))(&v10);
  *(v0 + 8) = (v9 ^ 0xD4FFDF2E) + 2145304280 + ((v4 ^ 0xA9FFBAFA) & (2 * v9));
  return result;
}

uint64_t sub_223899218(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32) + 1037613739 * ((((2 * a1) | 0x128F474A) - a1 + 1991793755) ^ 0x58458EDA);
  v3 = *(a1 + 24);
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = 1504884919 * ((((2 * &v8) | 0xD2B7E662) - &v8 + 379849935) ^ 0x1298442A);
  v13 = v6 ^ (v2 - 68671306);
  v10 = v3;
  v11 = v5;
  v9 = v4;
  v8 = v6 + 1155798973;
  result = (*(qword_2836EB200[v2 - 68671858] + 8 * (v2 ^ 0x417C987)))(&v8);
  *(a1 + 16) = v12;
  return result;
}

void sub_223899380(uint64_t a1)
{
  v1 = 843532609 * (((a1 | 0x20F8A4B6) - a1 + (a1 & 0xDF075B49)) ^ 0x7CB5F033);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_2238996F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, unsigned int a13, char *a14, int a15)
{
  a14 = &a11;
  a13 = (50899313 * (&a13 ^ 0x2ACB2A7A)) ^ 0xF11;
  v17 = (*(v15 + 32872))(&a13);
  return (*(v15 + 8 * ((3197 * (a15 == ((v16 - 1261) ^ 0x71F))) ^ 0x7D4u)))(v17);
}

uint64_t sub_223899784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, int a19, unsigned int a20, char *a21)
{
  v26 = 675097751 * ((((&a16 | 0xAC0FCD2E) ^ 0xFFFFFFFE) - (~&a16 | 0x53F032D1)) ^ 0x10B01747);
  a16 = a11;
  a21 = &a13;
  a20 = v26 ^ 0xBEB0E746;
  a17 = (v24 + 1421508967) ^ v26;
  a18 = v26 ^ 0xCD664347;
  v27 = (*(v22 + 8 * (v24 ^ 0x1DC6u)))(&a16);
  return (*(v22 + 8 * (((a19 == v23) * (v25 + (v24 ^ 0x600) + (v24 ^ v21) - 4045)) ^ v24)))(v27);
}

uint64_t sub_22389984C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  a18 = (1037613739 * ((&a17 + 1477601791 - 2 * (&a17 & 0x581269FF)) ^ 0x89104480)) ^ 0x86F54BA0;
  v19 = (*(v18 + 32816))(&a17);
  return (*(v18 + 8 * ((335 * (a17 == 1423875590)) ^ 0xC4Du)))(v19);
}

uint64_t sub_223899940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  if (v62 == -1506237098 || v62 == 535059165 || v62 == -1389671798)
  {
    JUMPOUT(0x2238999F4);
  }

  return (*(v63 + 8 * ((a61 + 1915) ^ (2042 * ((v61 >> 3) & 1)))))(a1, a2, a3, a4, 1423875590, 1423833567, a61);
}

uint64_t sub_223899B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned int a17, char *a18, int a19)
{
  a17 = (v20 + 1365) ^ (50899313 * ((((2 * &a17) | 0x51007712) - &a17 + 1467991159) ^ 0x824B11F3));
  a18 = &a13;
  v22 = (*(v19 + 8 * (v20 + 1617)))(&a17);
  return (*(v19 + 8 * ((1432 * (a19 == ((v20 - 2235) | 0x6C) + (v20 ^ (v21 - 2273)))) ^ v20)))(v22);
}

uint64_t sub_223899C40@<X0>(int a1@<W8>, int a2, char a3, __int16 a4, char a5, int a6, int a7, uint64_t a8, char *a9, char *a10, int a11, int a12)
{
  v14 = a1 ^ 0xD2E;
  v15 = 1504884919 * ((&a7 - 540402767 - 2 * (&a7 & 0xDFCA1BB1)) ^ 0x2409ACAA);
  a12 = ((a1 ^ 0xD2E) - 513) ^ v15;
  a7 = v15 + 1165979789;
  a10 = &a3;
  a8 = v12;
  a9 = &a5;
  v16 = (*(v13 + 8 * ((a1 ^ 0xD2E) + 3014)))(&a7);
  return (*(v13 + 8 * (((*(v12 + 24) == 1423875590) * (((v14 + 1254) ^ 0xC89) + 1828)) ^ v14)))(v16);
}

uint64_t sub_223899D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, int *a19, unsigned int a20)
{
  a20 = (v20 + 906) ^ (843532609 * ((2 * (&a17 & 0x278E9E8) - &a17 - 41478640) ^ 0xA1CA4295));
  a17 = a13;
  a19 = &a15;
  v23 = (*(v21 + 8 * (v20 + 2088)))(&a17);
  return (*(v21 + 8 * (((a15 == 0) * (v22 + ((v20 + 2145712170) & 0xBFBF9F5F) + 3129)) ^ v20)))(v23);
}

uint64_t sub_223899EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, unsigned int a20, char *a21, int a22)
{
  a21 = &a17;
  a20 = (v23 + 3170) ^ (50899313 * (((&a20 | 0xF7BB7677) - &a20 + (&a20 & 0x8448988)) ^ 0xDD705C0D));
  v26 = (*(v24 + 8 * (v23 + 3422)))(&a20);
  return (*(v24 + 8 * (((a22 == v22 + v23 - 687) * (a14 + (v23 ^ (v25 - 3735)) - 2322)) ^ v23)))(v26);
}

uint64_t sub_223899F60(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = 675097751 * ((a1 & 0x4FD7CBBA | ~(a1 | 0x4FD7CBBA)) ^ 0xF36811D3);
  v3 = *(a1 + 8) ^ v2;
  v4 = *(a1 + 12) ^ v2;
  v5 = *(a1 + 20) ^ v2;
  v6 = *a1;
  v7 = *(a1 + 24);
  v8 = 1360693095 * v4 + 1362909090;
  v9 = (v8 ^ 0x3C077026) & (2 * (v8 & 0xBC4764B4)) ^ v8 & 0xBC4764B4;
  v10 = ((2 * (v8 ^ 0x1407F00E)) ^ 0x50812974) & (v8 ^ 0x1407F00E) ^ (2 * (v8 ^ 0x1407F00E)) & 0xA84094BA;
  v11 = v10 ^ 0xA840948A;
  v12 = (v10 ^ 0x30) & (4 * v9) ^ v9;
  v13 = ((4 * v11) ^ 0xA10252E8) & v11 ^ (4 * v11) & 0xA84094B8;
  v14 = (v13 ^ 0xA00010A0) & (16 * v12) ^ v12;
  v15 = ((16 * (v13 ^ 0x8408412)) ^ 0x84094BA0) & (v13 ^ 0x8408412) ^ (16 * (v13 ^ 0x8408412)) & 0xA84094B0;
  v16 = ((v14 ^ 0xA84094BA ^ v15 & (v14 << 8)) << 16) & 0x28400000 ^ v14 ^ 0xA84094BA ^ v15 & (v14 << 8) ^ (((v15 ^ 0x2840941A) << 8) & 0x28400000 ^ 0x28400000 ^ (((v15 ^ 0x2840941A) << 8) ^ 0x40940000) & (v15 ^ 0x2840941A)) & (((v14 ^ 0xA84094BA ^ v15 & (v14 << 8)) << 16) ^ 0x14BA0000);
  v17 = 1504884919 * ((((2 * &v19) | 0xCCB15A98) - &v19 - 1717087564) ^ 0x9D9B1A57);
  v24 = v3 - v17 - 1421511401;
  v19 = v6;
  v22 = v7;
  v20 = v8 ^ v17 ^ (2 * v16) ^ 0x3B7A5CD9;
  v21 = v17 - 857656881 + (((v5 ^ 0xB89149A9) + 1198437975) ^ ((v5 ^ 0xC96706DE) + 915994914) ^ ((v5 ^ 0xCF46A830) + 817453008));
  result = (*(qword_2836EB200[v3 ^ 0x54BA8F0A] + 8 * (v3 ^ 0x54BA9FC8)))(&v19);
  *(a1 + 16) = v23;
  return result;
}

uint64_t sub_22389A260(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1 ^ (1785193651 * (a1 ^ 0xF621A42C));
  v2 = *(a1 + 8);
  v3 = v1 - 1212454794;
  v7 = v2[1];
  v6 = v1 - 1212454794 - 143681137 * ((&v6 & 0x35F1F6D5 | ~(&v6 | 0x35F1F6D5)) ^ 0x2CA6A53A);
  v4 = qword_2836EB200[v1 - 1212455493];
  (*(v4 + 8 * (v1 ^ 0x48448A98)))(&v6);
  v7 = *v2;
  v6 = v3 - 143681137 * (((&v6 | 0x951AB86B) + (~&v6 | 0x6AE54794)) ^ 0x73B2147A);
  return (*(v4 + 8 * (v3 + 3330)))(&v6);
}

uint64_t sub_22389A450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, int a20, int a21, char *a22)
{
  if (v25)
  {
    v26 = -1095702715;
  }

  else
  {
    v26 = -1095702716;
  }

  v27 = 675097751 * ((((&a17 | 0xCE073C1C) ^ 0xFFFFFFFE) - (~&a17 | 0x31F8C3E3)) ^ 0x72B8E675);
  a17 = a14;
  a21 = v26 ^ v27;
  a18 = (v24 + 1421511231) ^ v27;
  a19 = v27 ^ 0xD818BC0C;
  a22 = &a12;
  v28 = (*(v22 + 8 * (v24 + 2842)))(&a17);
  return (*(v22 + 8 * ((883 * (a20 == v23 + ((4 * (v24 ^ 0x75B) - 2146) | 0xC88) - 3466)) ^ v24)))(v28);
}

uint64_t sub_22389A530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = (1037613739 * (&a12 ^ 0xD1022D7F)) ^ 0x86F54BA0;
  v15 = (*(v13 + 32816))(&a12);
  return (*(v13 + 8 * ((3696 * (a12 == 1423875590)) ^ v14)))(v15);
}

uint64_t sub_22389A5BC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X7>, int a7@<W8>)
{
  v12 = (a7 - 1);
  v13 = (v7 + 1036);
  *(a4 + v12) = ((v12 & 0xF) * a1) ^ *(a6 + v12) ^ *(a5 + (v12 & 0xF)) ^ *((v12 & 0xF) + a2 + 5) ^ *((v12 & 0xF) + v13 + a3 - 1111) ^ v10;
  return (*(v11 + 8 * (((v12 == (v13 ^ v8)) * v9) ^ (v7 + 3548))))();
}

uint64_t sub_22389AFA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, unsigned int a17, int a18, unsigned int a19, char *a20)
{
  v23 = 675097751 * ((&a15 + 1951040864 - 2 * (&a15 & 0x744A8560)) ^ 0x370AA0F6);
  a19 = v23 ^ 0xBEB0E746;
  a20 = &a14;
  a16 = (v22 + 1421512315) ^ v23;
  a17 = v23 ^ 0x960E3E75;
  a15 = a13;
  v24 = (*(v21 + 8 * (v22 ^ 0x10DA)))(&a15);
  return (*(v21 + 8 * ((3268 * (a18 == ((((v22 + 154) | 0x84) + 2456) ^ (v20 - 2188)))) ^ v22)))(v24);
}

void sub_22389B3C0(uint64_t a1)
{
  v1 = *(a1 + 32) - 1564307779 * ((a1 - 427373151 - 2 * (a1 & 0xE686CDA1)) ^ 0x718B01B2);
  __asm { BRAA            X11, X17 }
}

uint64_t sub_22389B4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, int a17, int a18)
{
  if (a14 && a14 != -42052)
  {
    JUMPOUT(0x22389B540);
  }

  return (*(v18 + 8 * (6 * (a18 == 0) + 2457)))();
}

uint64_t sub_22389B684@<X0>(int a1@<W8>)
{
  v7 = v1;
  v6 = a1 - ((((&v6 | 0x93B34D38) ^ 0xFFFFFFFE) - (~&v6 | 0x6C4CB2C7)) ^ 0x8AE41ED7) * v2 - 1246;
  (*(v3 + 8 * (a1 + 2084)))(&v6);
  return (v4 - 1423875590);
}

uint64_t sub_22389B720@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, char a24)
{
  v27 = a1[4];
  v33 = *a1;
  v28 = a1[2];
  v29 = v28[1];
  *(v26 - 144) = (v25 + 472) ^ (1564307779 * ((((v26 - 144) | 0x6B87ECB) - (v26 - 144) + ((v26 - 144) & 0xF9478130)) ^ 0x91B5B2D8));
  *(v26 - 136) = v29;
  *(v26 - 128) = &a8;
  *(v26 - 120) = a2;
  *(v26 - 112) = v28;
  *(v26 - 104) = v27;
  (*(v24 + 8 * (v25 + 966)))(v26 - 144);
  *(v26 - 112) = v25 + 1564307779 * ((826303392 - ((v26 - 144) | 0x314063A0) + ((v26 - 144) | 0xCEBF9C5F)) ^ 0x59B2504C) + 256;
  *(v26 - 144) = &a24;
  *(v26 - 136) = v28;
  *(v26 - 128) = &a8;
  *(v26 - 120) = v27;
  (*(v24 + 8 * (v25 + 927)))(v26 - 144);
  *(v26 - 144) = (v25 + 472) ^ (1564307779 * ((2 * ((v26 - 144) & 0x1FB3C6F8) - (v26 - 144) + 1615608066) ^ 0xF741F511));
  *(v26 - 112) = v28;
  *(v26 - 104) = v27;
  *(v26 - 120) = &a24;
  *(v26 - 136) = &a8;
  *(v26 - 128) = &a12;
  (*(v24 + 8 * (v25 + 966)))(v26 - 144);
  *(v26 - 112) = v28;
  *(v26 - 104) = v27;
  *(v26 - 144) = (v25 + 472) ^ (1564307779 * ((567302308 - ((v26 - 144) | 0x21D058A4) + ((v26 - 144) | 0xDE2FA75B)) ^ 0x49226B48));
  *(v26 - 136) = &a12;
  *(v26 - 128) = &a22;
  *(v26 - 120) = &a24;
  (*(v24 + 8 * (v25 ^ 0x1C4E)))(v26 - 144);
  *(v26 - 112) = v28;
  *(v26 - 104) = v27;
  *(v26 - 120) = &a24;
  *(v26 - 136) = &a22;
  *(v26 - 128) = &a20;
  *(v26 - 144) = (v25 + 472) ^ (1564307779 * ((2 * ((v26 - 144) & 0x336228E0) - (v26 - 144) + 1285412636) ^ 0xDB901B0F));
  (*(v24 + 8 * (v25 ^ 0x1C4E)))(v26 - 144);
  *(v26 - 136) = &a20;
  *(v26 - 128) = &a10;
  *(v26 - 144) = (v25 + 472) ^ (1564307779 * ((v26 - 775713944 - 2 * ((v26 - 144) & 0xD1C38BF8)) ^ 0x46CE47EB));
  *(v26 - 112) = v28;
  *(v26 - 104) = v27;
  *(v26 - 120) = &a24;
  (*(v24 + 8 * (v25 + 966)))(v26 - 144);
  *(v26 - 112) = v28;
  *(v26 - 104) = v27;
  *(v26 - 144) = (v25 + 472) ^ (1564307779 * ((v26 - 144) ^ 0x970DCC13));
  *(v26 - 136) = &a10;
  *(v26 - 128) = &a14;
  *(v26 - 120) = &a24;
  (*(v24 + 8 * (v25 + 966)))(v26 - 144);
  *(v26 - 144) = (v25 + 472) ^ (1564307779 * (((v26 - 144) & 0xEB87FC4B | ~((v26 - 144) | 0xEB87FC4B)) ^ 0x8375CFA7));
  *(v26 - 136) = &a14;
  *(v26 - 128) = &a16;
  *(v26 - 112) = v28;
  *(v26 - 104) = v27;
  *(v26 - 120) = &a24;
  (*(v24 + 8 * (v25 + 966)))(v26 - 144);
  *(v26 - 144) = (v25 + 472) ^ (1564307779 * ((((v26 - 144) | 0x28D920B9) + (~(v26 - 144) | 0xD726DF46)) ^ 0xBFD4ECAB));
  *(v26 - 112) = v28;
  *(v26 - 104) = v27;
  *(v26 - 128) = &a24;
  *(v26 - 120) = &a24;
  *(v26 - 136) = &a16;
  (*(v24 + 8 * (v25 + 966)))(v26 - 144);
  v30 = *v28;
  *(v26 - 144) = v25 - 435584651 * (((v26 - 144) & 0xA8B90484 | ~((v26 - 144) | 0xA8B90484)) ^ 0x3A74E12D) - 644;
  *(v26 - 136) = &a18;
  *(v26 - 128) = v30;
  (*(v24 + 8 * (v25 ^ 0x1C70)))(v26 - 144);
  *(v26 - 144) = (v25 + 287) ^ (1785193651 * ((2 * ((v26 - 144) & 0x75FD6138) - (v26 - 144) + 167943873) ^ 0xFC233AED));
  *(v26 - 136) = v33;
  v31 = (*(v24 + 8 * (v25 ^ 0x1C2E)))(v26 - 144);
  return (*(v24 + 8 * ((239 * (((v25 - 845692200) ^ 0xCD97CA85) + *(v26 - 140) - 1502343962 + 2113 < ((v25 - 845692200) & 0x32683FFEu) + 2147479747)) ^ v25)))(v31);
}

uint64_t sub_22389BC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  v51 = &STACK[0x530] + v48;
  *v51 = 1814522873;
  *(v51 + 1) = 0;
  *(v51 + 4) = 970359668;
  *(v51 + 6) = 801774386;
  *(v51 + 4) = 0;
  *(&STACK[0x530] + v48 + 40) = 801774386;
  STACK[0x480] = &STACK[0x530] + v48 + 40;
  *(&STACK[0x530] + v48 + 48) = 0;
  STACK[0x468] = &STACK[0x530] + v48 + 48;
  *(&STACK[0x530] + v48 + 56) = 801774386;
  STACK[0x380] = &STACK[0x530] + v48 + 56;
  *(&STACK[0x530] + v48 + 64) = 0;
  STACK[0x248] = &STACK[0x530] + v48 + 64;
  *(&STACK[0x530] + v48 + 72) = 801774386;
  STACK[0x210] = &STACK[0x530] + v48 + 72;
  *(&STACK[0x530] + v48 + 80) = 0;
  STACK[0x3B0] = &STACK[0x530] + v48 + 80;
  v51[88] = 13;
  v49->n128_u32[0] = 1814522873;
  memset(&v49->n128_u8[4], 80, 20);
  v49[1].n128_u32[2] = 801774386;
  v49[1].n128_u32[3] = 0;
  v49[14].n128_u32[2] = 0;
  memset(&v49[27].n128_u8[4], 80, 40);
  memset(&v49[70].n128_i8[8], 80, 40);
  v49[73] = a9;
  v49[74] = a9;
  return (*(v50 + 8 * ((203 * (((2 * v47) ^ 0x1AF0) == 240)) ^ v47)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47);
}

uint64_t sub_22389BD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, int a19, unsigned int a20, char *a21)
{
  v24 = 675097751 * ((2 * (&a16 & 0x44CF2C0) - &a16 + 2075331899) ^ 0x38F328AD);
  a21 = &a13;
  a20 = v24 ^ 0xBEB0E746;
  a16 = a11;
  a17 = (v23 + 1421509496) ^ v24;
  a18 = v24 ^ 0xC7872690;
  v25 = (*(v22 + 8 * (v23 ^ 0x1BD5)))(&a16);
  return (*(v22 + 8 * ((1839 * (a19 == ((v23 - v21 - 2243) ^ 0xCDBDA682 ^ (3 * (v23 ^ 0xB86))))) ^ v23)))(v25);
}

uint64_t sub_22389BE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20)
{
  v23 = v20 + v21 + 1470;
  a20 = (v21 - 759171161) ^ (1037613739 * ((((&a19 ^ 0x14431228) & 0x7F4B3278) + (&a19 ^ 0x6B9C2DD4) - ((&a19 ^ 0x6B9C2DD4) & 0x7F4B3278)) ^ 0xC5D532D3));
  v24 = (*(v22 + 8 * (v21 ^ (v21 - 4090))))(&a19);
  return (*(v22 + 8 * ((466 * (a19 != 1423875590)) ^ v23)))(v24);
}

uint64_t sub_22389BF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, unsigned int a18, char *a19, int a20)
{
  a19 = &a16;
  a18 = (50899313 * ((-951669035 - (&a18 | 0xC746AED5) + (&a18 | 0x38B9512A)) ^ 0x12727B50)) ^ 0xF11;
  v23 = (*(v20 + 32872))(&a18);
  return (*(v20 + 8 * ((551 * (a20 == v22)) ^ v21)))(v23);
}

uint64_t sub_22389C060@<X0>(uint64_t a1@<X8>)
{
  v5 = v1 - 1;
  *(v3 + v5) = *(a1 + v5);
  return (*(v4 + 8 * ((126 * (v5 == 0)) ^ (v2 + 1364))))();
}

uint64_t sub_22389C0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = (1037613739 * ((((&a12 | 0xE177D9C8) ^ 0xFFFFFFFE) - (~&a12 | 0x1E882637)) ^ 0xCF8A0B48)) ^ 0x86F54BA0;
  v15 = (*(v13 + 32816))(&a12);
  return (*(v13 + 8 * ((455 * (a12 == 1423875590)) ^ v14)))(v15);
}

uint64_t sub_22389C1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, uint64_t a13, int a14, unsigned int a15)
{
  v19 = &a12;
  a15 = -1564307779 * ((v19 - 985582952 - 2 * (v19 & 0xC5413298)) ^ 0x524CFE8B) + 1264667083 * v15 + 1046635743;
  a12 = (v18 + 1981) ^ (1564307779 * ((v19 - 985582952 - 2 * (v19 & 0xC5413298)) ^ 0x524CFE8B));
  a13 = a11;
  v20 = (*(v16 + 8 * (v18 + 3696)))(&a12);
  return (*(v16 + 8 * (((a14 != (v18 ^ (v17 + 186)) + 350309851) * (v18 - 396)) ^ v18)))(v20);
}

uint64_t sub_22389C274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, int a17, unsigned int a18, uint64_t *a19)
{
  v22 = 675097751 * ((&a14 - 271426209 - 2 * (&a14 & 0xEFD25D5F)) ^ 0xAC9278C9);
  a14 = a12;
  a19 = &a9;
  a15 = (v21 + 1421511643) ^ v22;
  a16 = v22 ^ 0x905CE119;
  a18 = v22 ^ 0xBEB0E746;
  v23 = (*(v20 + 8 * (v21 ^ 0x137A)))(&a14);
  return (*(v20 + 8 * ((240 * (((v21 - 1) ^ (a17 == ((v21 - v19 - 96) ^ 0x2FD10B00))) & 1)) ^ v21)))(v23);
}

void sub_22389C378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, int a22, uint64_t a23, int *a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v34 = 4 * (v31 + v30);
  v35 = ((*(*a25 + (*a24 & 0xFFFFFFFFFDBF6FECLL)) ^ (a29 + v34)) & 0x7FFFFFFF) * (((v32 - 717) | 0x420) - 307158453);
  v36 = -307157381 * (v35 ^ HIWORD(v35));
  *(a30 + v34) = *(a29 + v34) ^ 0x6CA168E5 ^ (*(a30 + v34) + 1822517477 - ((2 * *(a30 + v34)) & 0xD942D1CA)) ^ *(qword_2836EB200[a22] + 4 * HIBYTE(v36) - 4) ^ *(qword_2836EB200[a21] + 4 * HIBYTE(v36) - 8) ^ *(qword_2836EB200[v32 - 587] + 4 * (HIBYTE(v36) + 4) - 4) ^ v36 ^ (v36 << ((((v32 - 730 - v30) & ((v32 - 730) ^ (-2 - v33)) | v30 & ~(v32 - 730)) < 0) | 0x10)) ^ (-471850983 * HIBYTE(v36));
  JUMPOUT(0x22389C498);
}

uint64_t sub_22389C6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t (*a18)(uint64_t, int *), uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, int a28, int a29, int a30, char a31)
{
  v37 = (v34 - 1051008623) & 0x3EA5128D;
  a31 = a27;
  v31 = 1785193651 * ((~((v36 - 168) | 0x60740B72) + ((v36 - 168) & 0x60740B72)) ^ 0x69AA50A1);
  *(v36 - 160) = v31 + v37 + 428;
  *(v36 - 156) = 561411246 - v31;
  *(v36 - 168) = a2;
  v32 = (*(v35 + 8 * (v37 + 4175)))(v36 - 168);
  return a18(v32, &a30);
}

uint64_t sub_22389C828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  a13 = (1037613739 * ((&a12 - 246207505 - 2 * (&a12 & 0xF1532BEF)) ^ 0x20510690)) ^ 0x86F54BA0;
  v14 = (*(v13 + 32816))(&a12);
  return (*(v13 + 8 * ((730 * (a12 == 1423875590)) ^ 0x8A1u)))(v14);
}

void ysE4jN2LzGiDiW(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = 1810;
  }

  else
  {
    v3 = 1811;
  }

  __asm { BRAA            X9, X17 }
}

uint64_t sub_22389CAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, int a20, unsigned int a21, char *a22)
{
  v25 = 675097751 * (((&a17 | 0xD543FA47) - (&a17 & 0xD543FA47)) ^ 0x9603DFD1);
  a22 = &a14;
  a21 = v25 ^ 0xBEB0E746;
  a17 = a11;
  a18 = (v22 + 1421511786) ^ v25;
  a19 = v25 ^ 0x937D6B74;
  v26 = (*(v23 + 8 * (v22 ^ 0x12CBu)))(&a17);
  return (*(v23 + 8 * (((a20 == v24) * (v22 + 674 + (v22 ^ 0xB81) - 3283)) ^ v22)))(v26);
}

uint64_t sub_22389CB74(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16)
{
  *a2 = 0;
  a16 = (1037613739 * ((((2 * &a15) | 0x53DFAD0C) - &a15 + 1443899770) ^ 0x78EDFBF9)) ^ 0x86F54BA0;
  v18 = (*(v16 + 32816))(&a15);
  return (*(v16 + 8 * ((1787 * (a15 == 1423875590)) ^ v17)))(v18);
}

uint64_t sub_22389CD2C@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50)
{
  v54 = *(v51 + a1 * v52 + 36);
  LODWORD(STACK[0x280]) = v54;
  v55 = v54 + 1650183779;
  v57 = v55 > 689110042 || v55 < a50;
  return (*(v53 + 8 * ((v57 * (v50 - 156)) ^ v50)))();
}

uint64_t sub_22389CE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, unsigned int a13, char *a14, int a15)
{
  a14 = &a11;
  a13 = (50899313 * ((2 * ((&a13 ^ 0x4E1AECE9) & 0x7DBBD6F8) - (&a13 ^ 0x4E1AECE9) - 2109462267) ^ 0xE695EF96)) ^ 0xF11;
  v18 = (*(v15 + 32872))(&a13);
  return (*(v15 + 8 * ((2456 * (a15 == v17)) ^ v16)))(v18);
}

uint64_t sub_22389CF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, int a18, unsigned int a19, char *a20)
{
  v22 = 675097751 * ((1658148249 - (&a15 | 0x62D55599) + (&a15 | 0x9D2AAA66)) ^ 0xDE6A8FF0);
  a15 = a11;
  a20 = &a12;
  a19 = v22 ^ 0xBEB0E746;
  a16 = (v21 + 1421512299) ^ v22;
  a17 = v22 ^ 0x440D4665;
  v23 = (*(v20 + 8 * (v21 + 3910)))(&a15);
  return (*(v20 + 8 * (((a18 == 1423875590) * (((v21 ^ 0x68C) - 1370) ^ 0x9DF)) ^ v21)))(v23);
}

uint64_t sub_22389D08C(__n128 a1, __n128 a2)
{
  a1.n128_u16[0] = -24416;
  a1.n128_u8[2] = -96;
  a1.n128_u8[3] = -96;
  a1.n128_u8[4] = -96;
  a1.n128_u8[5] = -96;
  a1.n128_u8[6] = -96;
  a1.n128_u8[7] = -96;
  a2.n128_u16[0] = 20560;
  a2.n128_u8[2] = 80;
  a2.n128_u8[3] = 80;
  a2.n128_u8[4] = 80;
  a2.n128_u8[5] = 80;
  a2.n128_u8[6] = 80;
  a2.n128_u8[7] = 80;
  return sub_22389D0A0(a1, a2);
}

uint64_t sub_22389D0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, unsigned int a18, unsigned int a19, uint64_t a20)
{
  v25 = &a15;
  a17 = a11;
  a15 = (v24 + 694) ^ (1564307779 * ((2 * (v25 & 0x635432C0) - v25 - 1666462407) ^ 0xBA6012A));
  a19 = -1564307779 * ((2 * (v25 & 0x635432C0) - v25 - 1666462407) ^ 0xBA6012A) + 1264667083 * v22 + 1046635743;
  (*(v23 + 8 * (v24 + 2409)))(&a15);
  v26 = 742307843 * ((((&a15 ^ 0x52088120) & 0x7F2AC1A4) + (&a15 ^ 0x2DF260D5) - ((&a15 ^ 0x2DF260D5) & 0x7F2AC1A4)) ^ 0x4CFA2C24);
  a18 = (((2 * v21) & 0xBFFDDEEE) + 1743511535 + (v21 ^ 0xDFFEEEDF ^ (4 * (v24 ^ 0x6C7)))) ^ v26;
  a15 = (v24 - 413) ^ v26;
  a20 = a11;
  a17 = v20;
  v27 = (*(v23 + 8 * (v24 + 2413)))(&a15);
  return (*(v23 + 8 * ((2486 * (a16 == 1423875590)) ^ v24)))(v27);
}

uint64_t sub_22389D268@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  v39 = (v38 + 4 * a1);
  v40 = a1 + 1;
  *v39 = *(&a35 + (*(v38 + 4 * v40) & 1)) ^ v39[397] ^ ((*(v38 + 4 * v40) & 0x7FFFFFFE | v36 & 0x80000000) >> (v35 + 42));
  return (*(v37 + 8 * (((v40 == 227) | (8 * (v40 == 227))) ^ v35)))();
}

uint64_t sub_22389D2C0()
{
  v6 = v0 + 1;
  if (v2)
  {
    v7 = v6 == ((v1 + 2739) ^ 0xCF2u ^ v4);
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  return (*(v5 + 8 * ((v8 * v3) ^ v1)))();
}

uint64_t sub_22389D440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, unsigned int a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, unsigned int a20, int a21, unsigned int a22, char *a23)
{
  v25 = 675097751 * (&a18 ^ 0x43402596);
  a22 = v25 ^ 0xBEB0E746;
  a19 = (a12 + 1421511813) ^ v25;
  a20 = v25 ^ 0xC9E4075D;
  a23 = &a15;
  a18 = a17;
  v26 = (*(v23 + 8 * (a12 ^ 0x12A0)))(&a18);
  return (*(v23 + 8 * ((85 * (((a12 - 101) ^ (a21 == v24)) & 1)) ^ a12)))(v26);
}

_BYTE *sub_22389D4EC(_BYTE *result, unsigned int a2, unint64_t a3)
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

id ATGetDisabledAssetTypes(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [v1 allClients];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v9 = [v8 disabledAssetTypes];
          v10 = [v9 allObjects];
          [v2 addObjectsFromArray:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  return v2;
}

BOOL ATWaitForSpringBoard(double a1)
{
  out_token = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = dispatch_get_global_queue(0, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __ATWaitForSpringBoard_block_invoke;
  handler[3] = &unk_2784E4688;
  v4 = v2;
  v10 = v4;
  notify_register_dispatch("com.apple.springboard.finishedstartup", &out_token, v3, handler);

  state64 = 0;
  notify_get_state(out_token, &state64);
  v5 = 0;
  if (!state64)
  {
    v6 = dispatch_time(0, (a1 * 1000000000.0));
    v5 = dispatch_semaphore_wait(v4, v6) != 0;
  }

  return v5;
}

intptr_t __ATWaitForSpringBoard_block_invoke(uint64_t a1, int token)
{
  state64 = 0;
  result = notify_get_state(token, &state64);
  if (state64)
  {
    return dispatch_semaphore_signal(*(a1 + 32));
  }

  return result;
}

void ATDisplayErrorForAssets(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"NUM_ITEMS_FORMAT" value:&stru_2836EC190 table:@"AirTraffic"];
  v12 = [v2 localizedStringWithFormat:v4, a1];

  v5 = MEMORY[0x277CBEAC0];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"ITUNES_SYNC" value:&stru_2836EC190 table:@"AirTraffic"];
  v8 = *MEMORY[0x277CBF188];
  v9 = *MEMORY[0x277CBF198];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v11 = CFUserNotificationCreate(0, 0.0, 1uLL, 0, [v5 dictionaryWithObjectsAndKeys:{v7, v8, v12, v9, v10, *MEMORY[0x277CBF1B0], 0}]);

  if (v11)
  {
    CFRelease(v11);
  }
}

void ATDisplayErrorForAppInstall(void *a1, int a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a1;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"APP_INSTALL_FAIL_PROFILE_FORMAT" value:&stru_2836EC190 table:@"AirTraffic"];
  v17 = [v3 stringWithFormat:v7, v5];

  v8 = MEMORY[0x277CBEAC0];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = v9;
  if (a2)
  {
    v11 = @"ICLOUD_RESTORE";
  }

  else
  {
    v11 = @"ITUNES_SYNC";
  }

  v12 = [v9 localizedStringForKey:v11 value:&stru_2836EC190 table:@"AirTraffic"];
  v13 = *MEMORY[0x277CBF188];
  v14 = *MEMORY[0x277CBF198];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v16 = CFUserNotificationCreate(0, 0.0, 1uLL, 0, [v8 dictionaryWithObjectsAndKeys:{v12, v13, v17, v14, v15, *MEMORY[0x277CBF1B0], 0}]);

  if (v16)
  {
    CFRelease(v16);
  }
}

void ATDisplaySyncAlert()
{
  v0 = MGCopyAnswer();
  v1 = MEMORY[0x277CCACA8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"WAIT_FOR_FINISH_FORMAT_DEVICE" value:&stru_2836EC190 table:@"AirTraffic"];
  v11 = [v1 stringWithFormat:v3, v0];

  if (v0)
  {
    CFRelease(v0);
  }

  v4 = MEMORY[0x277CBEAC0];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"ITUNES_SYNC_IN_PROGRESS" value:&stru_2836EC190 table:@"AirTraffic"];
  v7 = *MEMORY[0x277CBF188];
  v8 = *MEMORY[0x277CBF198];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v10 = CFUserNotificationCreate(0, 0.0, 1uLL, 0, [v4 dictionaryWithObjectsAndKeys:{v6, v7, v11, v8, v9, *MEMORY[0x277CBF1B0], 0}]);

  if (v10)
  {
    CFRelease(v10);
  }
}

void sub_2238A3734(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2238A438C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id ATGrappaDeviceInfo()
{
  v11 = *MEMORY[0x277D85DE8];
  NuRl2rYpg6zLtnsguhi3();
  if (v0)
  {
    v1 = v0;
    v2 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v10 = v1;
      _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_ERROR, "GrappaDeviceGetInfo failed, %ld", buf, 0xCu);
    }

    if (v1 == -42180)
    {
      exit(-42180);
    }

    v3 = 0;
  }

  else
  {
    v4 = MEMORY[0x277CBEAC0];
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:0];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:0];
    v3 = [v4 dictionaryWithObjectsAndKeys:{v5, @"version", v6, @"deviceType", v7, @"protocolVersion", 0}];
  }

  return v3;
}

id ATGrappaEstablishSession(void *a1, _DWORD *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  v10 = 0;
  if (!v3)
  {
LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  VVaAJGMXS456O5KIXfqv([v3 bytes], objc_msgSend(v3, "length"), a2, &v10);
  if (!v5)
  {
    if (v10)
    {
      v8 = [MEMORY[0x277CBEA90] dataWithBytes:v10 length:0];
      X5EvIJWqdcALcjaxX6Pl(v10);
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v6 = v5;
  v7 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v12 = v6;
    _os_log_impl(&dword_223819000, v7, OS_LOG_TYPE_ERROR, "Grappa session could not be established, %ld", buf, 0xCu);
  }

  if (v6 == -42180)
  {
    exit(-42180);
  }

  v8 = 0;
  *a2 = 0;
LABEL_10:

  return v8;
}

void ATStoreAssetLinkRaiseWithSerialABCReport(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1;
  v5 = dispatch_semaphore_create(0);
  v6 = MEMORY[0x277D27EF0];
  v7 = *MEMORY[0x277D27EB0];
  v12[0] = v3;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __ATStoreAssetLinkRaiseWithSerialABCReport_block_invoke;
  v10[3] = &unk_2784E5938;
  v11 = v5;
  v9 = v5;
  [v6 snapshotWithDomain:v7 type:@"Bug" subType:@"ATStoreAssetLink" context:v4 triggerThresholdValues:0 events:v8 completion:v10];

  dispatch_semaphore_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:{@"ATStoreAssetLinkThrowWithSerialABCReport %@ %@", v4, v3}];
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2238AD1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getBLErrorDomainSymbolLoc_block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  if (!BookLibraryLibraryCore_frameworkLibrary)
  {
    v5[1] = MEMORY[0x277D85DD0];
    v5[2] = 3221225472;
    v5[3] = __BookLibraryLibraryCore_block_invoke;
    v5[4] = &__block_descriptor_40_e5_v8__0l;
    v5[5] = v5;
    v6 = xmmword_2784E47E8;
    v7 = 0;
    BookLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = BookLibraryLibraryCore_frameworkLibrary;
  if (!BookLibraryLibraryCore_frameworkLibrary)
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *BookLibraryLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"NSError+ATAdditions.m" lineNumber:18 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "BLErrorDomain");
  *(*(a1[4] + 8) + 24) = result;
  getBLErrorDomainSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t __BookLibraryLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BookLibraryLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __Block_byref_object_copy__979(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2238B2BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1115(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2238B7AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1280(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void _handleDataMigratorFinishedNotification(uint64_t a1, void *a2)
{
  if (a2)
  {

    [a2 handleDataMigrationFinished];
  }

  else
  {
    v6 = v2;
    v7 = v3;
    v4 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_223819000, v4, OS_LOG_TYPE_ERROR, "invalid observer to handle migration complete notification", v5, 2u);
    }
  }
}

id getMPMediaLibraryClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getMPMediaLibraryClass_softClass;
  v7 = getMPMediaLibraryClass_softClass;
  if (!getMPMediaLibraryClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getMPMediaLibraryClass_block_invoke;
    v3[3] = &unk_2784E5B40;
    v3[4] = &v4;
    __getMPMediaLibraryClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2238BB2EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPStoreDownloadClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPStoreDownload");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPStoreDownloadClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPStoreDownloadClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ATMPStoreAssetLink.m" lineNumber:29 description:{@"Unable to find class %s", "MPStoreDownload"}];

    __break(1u);
  }
}

void MediaPlayerLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __MediaPlayerLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2784E4AA0;
    v5 = 0;
    MediaPlayerLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"ATMPStoreAssetLink.m" lineNumber:25 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __MediaPlayerLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary = result;
  return result;
}

void __getMPMediaLibraryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaLibraryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaLibraryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ATMPStoreAssetLink.m" lineNumber:27 description:{@"Unable to find class %s", "MPMediaLibrary"}];

    __break(1u);
  }
}

void sub_2238BBDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1516(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2238BCCD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2238BD99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getMPMediaQueryClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPMediaQueryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ATMPStoreAssetLink.m" lineNumber:26 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
  }
}

void __getMPStoreDownloadManagerClass_block_invoke(uint64_t a1)
{
  MediaPlayerLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPStoreDownloadManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMPStoreDownloadManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPStoreDownloadManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ATMPStoreAssetLink.m" lineNumber:28 description:{@"Unable to find class %s", "MPStoreDownloadManager"}];

    __break(1u);
  }
}

uint64_t __Block_byref_object_copy__1637(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2238BEC04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v20 - 112));
  _Unwind_Resume(a1);
}

void sub_2238BF7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getNRPairedDeviceRegistryClass_block_invoke(uint64_t a1)
{
  NanoRegistryLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("NRPairedDeviceRegistry");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getNRPairedDeviceRegistryClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ATDeviceSyncSessionAssetTask.m" lineNumber:25 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

    __break(1u);
  }
}

void *__getNRWatchOSVersionForRemoteDeviceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = NanoRegistryLibrary();
  result = dlsym(v2, "NRWatchOSVersionForRemoteDevice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getNRWatchOSVersionForRemoteDeviceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *NanoRegistryLibrary()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __NanoRegistryLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2784E4D78;
    v6 = 0;
    NanoRegistryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = NanoRegistryLibraryCore_frameworkLibrary;
  if (!NanoRegistryLibraryCore_frameworkLibrary)
  {
    v0 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
    [v0 handleFailureInFunction:v3 file:@"ATDeviceSyncSessionAssetTask.m" lineNumber:24 description:{@"%s", v4[0]}];

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

uint64_t __NanoRegistryLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  NanoRegistryLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2238C6F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id location)
{
  objc_destroyWeak((v55 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2197(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2238CA64C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_2238CAE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2324(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2238CB0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getBLDownloadQueueNonUIClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getBLDownloadQueueNonUIClass_softClass;
  v7 = getBLDownloadQueueNonUIClass_softClass;
  if (!getBLDownloadQueueNonUIClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getBLDownloadQueueNonUIClass_block_invoke;
    v3[3] = &unk_2784E5B40;
    v3[4] = &v4;
    __getBLDownloadQueueNonUIClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2238CCE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getBLDownloadQueueNonUIClass_block_invoke(uint64_t a1)
{
  BookLibraryCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BLDownloadQueueNonUI");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBLDownloadQueueNonUIClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBLDownloadQueueNonUIClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ATBookRedownloadOperation.m" lineNumber:29 description:{@"Unable to find class %s", "BLDownloadQueueNonUI"}];

    __break(1u);
  }
}

void BookLibraryCoreLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!BookLibraryCoreLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __BookLibraryCoreLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2784E4EF0;
    v5 = 0;
    BookLibraryCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!BookLibraryCoreLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *BookLibraryCoreLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"ATBookRedownloadOperation.m" lineNumber:23 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __BookLibraryCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BookLibraryCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2238CD614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getBLRestoreRequestItemClass_block_invoke(uint64_t a1)
{
  BookLibraryCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BLRestoreRequestItem");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBLRestoreRequestItemClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBLRestoreRequestItemClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ATBookRedownloadOperation.m" lineNumber:30 description:{@"Unable to find class %s", "BLRestoreRequestItem"}];

    __break(1u);
  }
}

void __getBLPurchaseRequestClass_block_invoke(uint64_t a1)
{
  BookLibraryCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("BLPurchaseRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getBLPurchaseRequestClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getBLPurchaseRequestClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ATBookRedownloadOperation.m" lineNumber:31 description:{@"Unable to find class %s", "BLPurchaseRequest"}];

    __break(1u);
  }
}

void dispatch_client_async(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[ATClientController sharedInstance];
  v6 = [v5 queueForClient:v4];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __dispatch_client_async_block_invoke;
  block[3] = &unk_2784E53E8;
  v9 = v3;
  v7 = v3;
  dispatch_async(v6, block);
}

void __dispatch_client_async_block_invoke(uint64_t a1)
{
  if (dispatch_get_specific(@"disabled_queue"))
  {
    v2 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "Cancelling block execution", v4, 2u);
    }
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

void dispatch_client_sync(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = +[ATClientController sharedInstance];
  v6 = [v5 queueForClient:v4];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __dispatch_client_sync_block_invoke;
  block[3] = &unk_2784E53E8;
  v9 = v3;
  v7 = v3;
  dispatch_sync(v6, block);
}

void __dispatch_client_sync_block_invoke(uint64_t a1)
{
  if (dispatch_get_specific(@"disabled_queue"))
  {
    v2 = _ATLogCategoryFramework();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_223819000, v2, OS_LOG_TYPE_DEFAULT, "Cancelling block execution", v4, 2u);
    }
  }

  else
  {
    v3 = *(*(a1 + 32) + 16);

    v3();
  }
}

uint64_t __Block_byref_object_copy__2962(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _atcStandardDefaults()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqual:@"com.apple.atc"];

  if (v2)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.atc"];
  }

  return v3;
}

id _airTrafficPersistentDictionary()
{
  v0 = _atcStandardDefaults();
  v1 = [v0 dictionaryRepresentation];

  v2 = [v1 objectForKey:@"Hosts"];
  v3 = [v2 allValues];
  v4 = [v3 valueForKey:@"LibraryID"];
  v5 = [MEMORY[0x277CBEB68] null];
  v6 = [v4 containsObject:v5];

  if (v6)
  {
    v7 = [v2 mutableCopy];
    v8 = [v1 mutableCopy];

    [v8 setObject:v7 forKey:@"Hosts"];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = ___airTrafficPersistentDictionary_block_invoke;
    v11[3] = &unk_2784E4F88;
    v12 = v7;
    v9 = v7;
    [v2 enumerateKeysAndObjectsUsingBlock:v11];

    v1 = v8;
  }

  return v1;
}

void ___airTrafficPersistentDictionary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v5 objectForKey:@"LibraryID"];

  if (!v6)
  {
    v7 = [v5 mutableCopy];
    [v7 setObject:v8 forKey:@"LibraryID"];
    [*(a1 + 32) setObject:v7 forKey:v8];
  }
}

uint64_t __Block_byref_object_copy__3365(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2238D6B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3429(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2238D6F74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2238D74F0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 80));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_2238D8254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose((v48 - 216), 8);
  _Block_object_dispose((v48 - 168), 8);
  _Block_object_dispose((v48 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3549(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2238D9908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_2238DB3F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose((v48 - 248), 8);
  _Block_object_dispose((v48 - 200), 8);
  _Block_object_dispose((v48 - 168), 8);
  _Block_object_dispose((v48 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_2238DE22C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2238DE414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _ATBuddyCallback(uint64_t a1, uint64_t a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___ATBuddyCallback_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a2;
  if (_ATBuddyCallback___buddyFinishedToken != -1)
  {
    dispatch_once(&_ATBuddyCallback___buddyFinishedToken, block);
  }
}

Class __getMPPlaybackUserDefaultsClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  if (!MediaPlayerLibraryCore_frameworkLibrary_4276)
  {
    v6[1] = MEMORY[0x277D85DD0];
    v6[2] = 3221225472;
    v6[3] = __MediaPlayerLibraryCore_block_invoke_4277;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_2784E5770;
    v8 = 0;
    MediaPlayerLibraryCore_frameworkLibrary_4276 = _sl_dlopen();
  }

  if (!MediaPlayerLibraryCore_frameworkLibrary_4276)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"ATMusicRedownloadOperation.m" lineNumber:23 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MPPlaybackUserDefaults");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMPPlaybackUserDefaultsClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"ATMusicRedownloadOperation.m" lineNumber:24 description:{@"Unable to find class %s", "MPPlaybackUserDefaults"}];

LABEL_10:
    __break(1u);
  }

  getMPPlaybackUserDefaultsClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __Block_byref_object_copy__4252(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __MediaPlayerLibraryCore_block_invoke_4277()
{
  result = _sl_dlopen();
  MediaPlayerLibraryCore_frameworkLibrary_4276 = result;
  return result;
}

void sub_2238E9908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2238EA574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 144), 8);
  _Block_object_dispose((v15 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4551(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2238EB1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2238EBBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_2238ED4C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4938(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2238EF468(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void __getMTStoreIdentifierClass_block_invoke(uint64_t a1)
{
  PodcastsFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MTStoreIdentifier");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getMTStoreIdentifierClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getMTStoreIdentifierClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ATPodcastEpisodeDownloadOperation.m" lineNumber:27 description:{@"Unable to find class %s", "MTStoreIdentifier"}];

    __break(1u);
  }
}

void sub_2238F1984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPFFairPlayAssetClass_block_invoke(uint64_t a1)
{
  PodcastsFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PFFairPlayAsset");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPFFairPlayAssetClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPFFairPlayAssetClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ATPodcastEpisodeDownloadOperation.m" lineNumber:25 description:{@"Unable to find class %s", "PFFairPlayAsset"}];

    __break(1u);
  }
}

void PodcastsFoundationLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!PodcastsFoundationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __PodcastsFoundationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2784E5B60;
    v5 = 0;
    PodcastsFoundationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PodcastsFoundationLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x277CCA890] currentHandler];
    v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PodcastsFoundationLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"ATPodcastEpisodeDownloadOperation.m" lineNumber:22 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __PodcastsFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  PodcastsFoundationLibraryCore_frameworkLibrary = result;
  return result;
}

void sub_2238F211C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getPFFairPlayKeyLoaderClass_block_invoke(uint64_t a1)
{
  PodcastsFoundationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PFFairPlayKeyLoader");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPFFairPlayKeyLoaderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPFFairPlayKeyLoaderClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ATPodcastEpisodeDownloadOperation.m" lineNumber:26 description:{@"Unable to find class %s", "PFFairPlayKeyLoader"}];

    __break(1u);
  }
}