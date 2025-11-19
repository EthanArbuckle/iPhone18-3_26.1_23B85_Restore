void D2Zl4GdLl()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - qword_1EAF167F0) ^ 0x30))) ^ 0x86u) - 12) ^ (91 * ((dword_1EAF16720 - qword_1EAF167F0) ^ 0x30))) + 45];
  v1 = &v4[qword_1EAF167F0 + *(v0 - 4)];
  v2 = 636859739 * v1 + 0x1D38D65F7E9650D0;
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_1EAF167F0 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1963AB768(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 282)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * (v1 - 10111 + ((v1 - 2738) | 0x119))) ^ v1)))();
}

uint64_t sub_1963AB9D8()
{
  (*(v4 + 8 * (v0 ^ 0x130A)))(v3);
  *v1 = 0;
  return v2(4857, 4294962794);
}

uint64_t sub_1963ABCA8()
{
  v5 = v1 ^ 0x17B;
  v7 = v2 > 0x1F && ((v3 + ((v5 - 2080797854) & 0x7C0669F7u) + 1406 - 3922) ^ v0) > 7;
  return (*(v4 + 8 * ((214 * v7) ^ v5)))();
}

uint64_t sub_1963ABD38@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X4>, _DWORD *a3@<X5>, char a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v17 = *a2;
  v18 = a17 - ((2 * a17) & 0x75FC608A) + 989737029;
  v19 = ((*a3 << (((a4 + 81) & 0xC7) - 68)) & 0xFD7FBBFE) + (*a3 ^ 0xFEBFDDFF) + 20980225;
  *(*a2 + v19) = HIBYTE(v18) ^ 0x3A;
  *(v17 + v19 + 1) = BYTE2(v18) ^ 0xFE;
  *(v17 + v19 + 2) = BYTE1(v18) ^ 0x30;
  *(v17 + v19 + 3) = v18 ^ 0x45;
  *a3 += 4;
  return a1();
}

uint64_t sub_1963ABE04(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16) + 912648571 * (result ^ 0xDCCD4C35);
  *v1 = 67109120;
  v1[1] = v2;
  return result;
}

uint64_t sub_1963ABE94(uint64_t result)
{
  v1 = 1468321087 * (result ^ 0x55CBE96FD4EF416ELL);
  v2 = *(result + 56) ^ v1;
  v3 = *result + v1;
  v4 = *(result + 48) + v1;
  v5 = *(result + 4) ^ v1;
  v6 = *(result + 12) - v1;
  v7 = *(result + 40) + v1;
  v8 = *(result + 32) - v1;
  v9 = *(result + 24);
  v10 = *(result + 16) ^ v1;
  *v9 = 134219778;
  *(v9 + 4) = v2;
  *(v9 + 12) = 1040;
  *(v9 + 14) = v3;
  *(v9 + 18) = 2096;
  *(v9 + 20) = v4;
  *(v9 + 28) = 1024;
  *(v9 + 30) = v5;
  *(v9 + 34) = 1040;
  *(v9 + 36) = v6;
  *(v9 + 40) = 2096;
  *(v9 + 42) = v7;
  *(v9 + 50) = 1024;
  *(v9 + 52) = v8;
  *(v9 + 56) = 2048;
  *(v9 + 58) = v10;
  return result;
}

void sub_1963ABF48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 8) == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = v2;
  v1 = *(a1 + 24) ^ (1466156297 * (((a1 | 0x809A0FB5) - (a1 & 0x809A0FB5)) ^ 0x532D8FE4));
  __asm { BRAA            X10, X17 }
}

uint64_t sub_1963AC12C@<X0>(uint64_t *a1@<X5>, _DWORD *a2@<X6>, uint64_t (*a3)(void)@<X7>, int a4@<W8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  v17 = *a1;
  v18 = a17 - ((((a4 + 1276678860) & 0xB3E7797F) + 1979467559) & (2 * a17)) + 989737029;
  v19 = ((2 * *a2) & 0xD5FCFBDE) + (*a2 ^ 0xEAFE7DEF) + 352420369;
  *(*a1 + v19) = HIBYTE(v18) ^ 0x3A;
  *(v17 + v19 + 1) = BYTE2(v18) ^ 0xFE;
  *(v17 + v19 + 2) = BYTE1(v18) ^ 0x30;
  *(v17 + v19 + 3) = v18 ^ 0x45;
  *a2 += 4;
  return a3();
}

void EKNEpfxz52bXl()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = off_1F0B1A108 - 8;
  v1 = off_1F0B1A230 - 4;
  v2 = (&off_1F0B1A0C0)[(*(off_1F0B1A230 + (*(off_1F0B1A108 + (91 * ((dword_1EAF16720 + qword_1EAF166E0) ^ 0x30)) - 8) ^ 0x45u) - 4) ^ (91 * ((dword_1EAF16720 + qword_1EAF166E0) ^ 0x30))) + 98];
  v3 = qword_1EAF166E0 - &v6 + *(v2 - 4);
  v4 = 636859739 * v3 - 0x1D38D65F7E9650D0;
  v5 = 636859739 * (v3 ^ 0xE2C729A08169AF30);
  qword_1EAF166E0 = v4;
  *(v2 - 4) = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1963AC49C()
{
  *(v6 - 136) = (v0 + 1311671230) ^ (1468321087 * (((v1 ^ 0x3C86F597 | 0x757DCB32) - (v1 ^ 0x3C86F597) + ((v1 ^ 0x3C86F597) & 0x8A8234CD)) ^ 0x9D147FCB));
  *(v6 - 144) = v2;
  (*(v5 + 8 * (v0 ^ 0xCE7)))(v6 - 144);
  v7 = (*(v5 + 8 * (v0 ^ 0xCCE)))(**(v3 + 8 * (v0 - 5309)), *(v3 + 8 * (v0 - 5269)) - 4, v4);
  v8 = ((2 * v7) & 0xB3DF7DEA) + (v7 ^ 0xD9EFBEF5);
  *(v6 - 144) = v2;
  *(v6 - 136) = (v0 - 50589072) ^ (912648571 * (((v1 | 0x687E3249) - (v1 & 0x687E3249)) ^ 0xB4B37E7C));
  v9 = (*(v5 + 8 * (v0 ^ 0xC89)))(v6 - 144);
  return (*(v5 + 8 * (((v8 == -638599435) * (((v0 ^ 0xB0817B8B) + 1333696462) ^ 0x69A)) ^ v0)))(v9);
}

uint64_t sub_1963AC62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17)
{
  v23 = 912648571 * ((&a15 - 2 * (&a15 & 0x3841332A249E7900) + 0x3841332A249E7900) ^ 0x78E221A2F8533535);
  a17 = &a11;
  LODWORD(a16) = (v22 - 715639310) ^ v23;
  a15 = v17 - v23;
  (*(v20 + 8 * (v22 + 2926)))(&a15);
  (*(v20 + 8 * (v22 ^ 0x17EFu)))(a9, v18, 0, *(v19 + 8 * (v22 ^ 0xEA4u)) - 8, &a11, 12);
  v24 = 346387183 * (((&a15 | 0x8A9FFE92) - &a15 + (&a15 & 0x75600168)) ^ 0xFF72B42);
  LOBYTE(a15) = v24 + 84;
  a16 = v17;
  LODWORD(a17) = v22 + 568 - v24 - 267;
  v25 = (*(v20 + 8 * (v22 + 3010)))(&a15);
  return (*(v20 + 8 * (((*v21 == 0) * (((v22 - 3654) | 0x1080) ^ 0x153F)) ^ (v22 + 568))))(v25);
}

uint64_t sub_1963AC964@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v4) ^ v2)))();
}

uint64_t sub_1963AC9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, char a27, __int16 a28, char a29)
{
  (*(v33 + 8 * (v34 ^ 0xB21)))(v30);
  v36 = *v29;
  v37 = 1311869473 * ((-565400113 - ((v35 - 144) | 0xDE4CADCF) + ((v35 - 144) | 0x21B35230)) ^ 0xCA5C489C);
  v38 = 563293286 - v37 + 622816387 * *v31 + 3901;
  *(v35 - 144) = (*(v29 + 3) + 599664785 - ((*(v29 + 3) << ((v34 + 123) ^ 0x69)) & 0x477C5122)) ^ v37;
  *(v35 - 104) = v38;
  *(v35 - 112) = v37 + v34 + 791;
  *(v35 - 120) = &a27;
  *(v35 - 136) = v36;
  *(v35 - 128) = &a29;
  (*(v33 + 8 * (v34 ^ 0xB19)))(v35 - 144);
  v39 = *(v35 - 108);
  v40 = (*(v33 + 8 * (v34 + 1757)))(v30);
  return (*(v33 + 8 * (((v39 == ((v34 - 901) ^ 0xBB9) + 1625072815) * (v34 - 901 - v32 - 1454956248)) ^ (v34 - 901))))(v40);
}

uint64_t sub_1963ACB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = (*(v11 + 8 * (v13 ^ 0x15E6)))(a11, a10);
  *v12 = v14;
  return (*(v11 + 8 * (((v14 == 0) * ((v13 ^ 0x11B95CD2) - 297357246)) ^ v13)))();
}

uint64_t sub_1963ACB94()
{
  v3 = (v1 - 400178945) & 0x17DA3DFD;
  v4 = (*(v2 + 8 * (v3 + 3156)))(v0, @"igoeg");
  return (*(v2 + 8 * (((v4 == 0) * (((v3 - 522424165) & 0x1F238AC7) - 2127)) ^ (v3 + 3035))))(v4, v5, v6, v7, v8);
}

uint64_t sub_1963ACD10()
{
  *(v0 + 8) = 4096;
  *v1 = v0;
  return v2();
}

uint64_t sub_1963ACD98@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v10 = ~v5 + v2;
  v11 = *(a2 + v10 - 15);
  v12 = *(a2 + v10 - 31);
  v13 = v8 + v10;
  *(v13 - 15) = v11;
  *(v13 - 31) = v12;
  return (*(v9 + 8 * ((((v6 ^ v7) + v5 == v3) * a1) ^ v4)))();
}

uint64_t sub_1963ACE70@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  *(v8 + v3) = *(a2 + v3);
  v9 = ((v3 + 1) ^ v4) != v5 + ((v2 + v6) & a1) - 1663;
  return (*(v7 + 8 * ((v9 | (v9 << 6)) ^ v2)))();
}

uint64_t sub_1963ACFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, unsigned int a31)
{
  v34 = (a31 | ((a31 < (v31 ^ 0x49C239A0u)) << 32)) + *(v32 + 12) + 103262599;
  v36 = v34 < 0x4FE9E3AC || v34 > *(v32 + 8) + 1340728236;
  return (*(v33 + 8 * ((v36 * (((v31 - 462951839) & 0x1B981259) - 25)) ^ v31)))();
}

uint64_t sub_1963AD160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  v6 = *(v5 - 180) + *(v4 + 12) + ((*(v5 - 180) < ((90 * (a3 ^ 0xEC1)) ^ 0x49C23839u)) << 32) + 2564642703u;
  v8 = v6 < 0xE29F91B4 || v6 > *(v4 + 8) + 3802108340u;
  return (*(v3 + 8 * ((15 * v8) ^ a3)))(a1, a2, a3 ^ 0xF3Eu);
}

uint64_t sub_1963AD2A0@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * (((v6 == 0) * v4) ^ v2)))();
}

uint64_t sub_1963AD3B4@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (127 * (v3 ^ 0xBB8) + 7147)) ^ v3)))();
}

uint64_t sub_1963AD44C(uint64_t result)
{
  v1 = *(result + 24);
  v2 = 1311869473 * ((2 * (result & 0x4D58803E62C6F9A1) - result + 0x32A77FC19D39065ELL) ^ 0x8108A89476D61CF2);
  v3 = *(result + 40);
  v4 = *(result + 32);
  v5 = *result + 1311869473 * ((2 * (result & 0x62C6F9A1) - result - 1657207202) ^ 0x76D61CF2);
  v6 = *(result + 8) + 1311869473 * ((2 * (result & 0x62C6F9A1) - result - 1657207202) ^ 0x76D61CF2);
  v7 = *(result + 16) ^ v2;
  *v1 = 67110146;
  *(v1 + 4) = v5;
  *(v1 + 8) = 1040;
  *(v1 + 10) = v6;
  *(v1 + 14) = 2096;
  *(v1 + 16) = v7;
  *(v1 + 24) = 1024;
  *(v1 + 26) = v3 ^ (1311869473 * ((2 * (result & 0x62C6F9A1) - result - 1657207202) ^ 0x76D61CF2));
  *(v1 + 30) = 2048;
  *(v1 + 32) = v4 - v2;
  return result;
}

void Rm5cU8chw2Q()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[(*(off_1F0B1A230 + (*(off_1F0B1A108 + (91 * ((dword_1EAF16720 + qword_1EAF166C8) ^ 0x30)) - 8) ^ 0x45u) - 4) ^ (91 * ((dword_1EAF16720 + qword_1EAF166C8) ^ 0x30))) + 98];
  v1 = &v4[qword_1EAF166C8 + *(v0 - 4)];
  v2 = 636859739 * v1 + 0x768A6804525E3610;
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_1EAF166C8 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1963AD6F0()
{
  v7 = *v6;
  if (*v6 >= 0x40)
  {
    v8 = 64;
  }

  else
  {
    v8 = *v6;
  }

  v9 = *v4;
  v10 = *v14;
  v11 = 1311869473 * (v16 ^ 0xB3AFD755EBEF1AACLL);
  v16[2] = v8 - v11;
  v19 = v10 + v11;
  v16[0] = v2 - v11 + ((v0 - 86512712) & 0x4D2FBDBF ^ 0xFE3A7C78);
  v16[1] = (v0 + 2118004563) ^ v11;
  v17 = v9 ^ v11;
  v18 = v15;
  v20 = v7 ^ v11;
  (*(v3 + 8 * (v0 + 2460)))(v16);
  (*(v3 + 8 * (v0 ^ 0x983)))(v13, v1, 0, *(v5 + 8 * (v0 - 3949)) - 8, v15, 40);
  return (v2 - 1237465637);
}

uint64_t sub_1963AD824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = (*(v13 + 52864))(a13, a12);
  *v14 = v15;
  return (*(v13 + 8 * ((46 * (v15 != 0)) ^ 0x168Cu)))();
}

uint64_t sub_1963AD868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned int a28)
{
  a28 = (v31 + 1311675340) ^ (1468321087 * ((404487979 - (&a27 | 0x181BFF2B) + (&a27 | 0xE7E400D4)) ^ 0x330B41BA));
  a27 = v28;
  (*(v30 + 8 * (v31 ^ 0x1CE9)))(&a27);
  v32 = (*(v30 + 8 * (v31 + 5184)))(**(v29 + 8 * (v31 ^ 0x5F1)), *(v29 + 8 * (v31 ^ 0x599)) - 4, a16);
  v33 = ((2 * v32) & 0xB38F746A) + (v32 ^ 0x59C7BA35);
  a28 = (v31 - 50584962) ^ (912648571 * (((&a27 | 0xF4368A47) - (&a27 & 0xF4368A47)) ^ 0x28FBC672));
  a27 = v28;
  v34 = (*(v30 + 8 * (v31 + 5255)))(&a27);
  return (*(v30 + 8 * (((v33 != 1506261557) * ((v31 - 1702144593) & 0x6574B58F ^ 0x1046)) ^ v31)))(v34);
}

uint64_t sub_1963AD9E0()
{
  v4 = (*(v3 + 52864))(v1, v2);
  *v0 = v4;
  return (*(v3 + 8 * ((139 * (v4 == 0)) ^ 0x1129u)))();
}

uint64_t sub_1963ADB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, int a20, char *a21, uint64_t a22)
{
  v29 = 163 * (v25 ^ 0x52C);
  v30 = 912648571 * (((&a19 | 0xDFB29727A43B2044) - &a19 + (&a19 & 0x204D68D85BC4DFB8)) ^ 0x9F1185AF78F66C71);
  a21 = &a13;
  a20 = (v25 - 715636997) ^ v30;
  a19 = v24 - v30;
  (*(v28 + 8 * (v25 ^ 0x1C8Bu)))(&a19);
  (*(v28 + 8 * (v25 ^ 0x1C96u)))(a10, v26, 0, *(v27 + 8 * (v25 ^ 0x5BDu)) - 4, &a13, 12);
  v31 = 1466156297 * ((((2 * &a19) | 0x1E67737D5369067CLL) - &a19 - 0xF33B9BEA9B4833ELL) ^ 0x85F6CC757A03036FLL);
  a21 = v23;
  a22 = v22;
  a19 = (v24 ^ 0xC777DFBF5DDAFCE7) - v31 + ((v24 << ((v29 - 119) & 0xEA ^ 0xEBu)) & 0x8EEFBF7EBBB5F9CELL) + 0x7FA9BED5FFFF7BC0;
  a20 = (v29 - 1701) ^ v31;
  v32 = (*(v28 + 8 * (v29 ^ 0x12AFu)))(&a19);
  if (v22)
  {
    v33 = v23 == 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = v33;
  return (*(v28 + 8 * ((212 * ((v34 ^ (v29 - 109)) & 1)) ^ v29)))(v32);
}

void QThZx0FIkDGwP1(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 - dword_1EAF16960) ^ 0x30)) ^ byte_196EBFDF0[byte_196EC05F0[(91 * ((dword_1EAF16720 - dword_1EAF16960) ^ 0x30))] ^ 0x1D]) - 149];
  v8 = 91 * ((dword_1EAF16720 - *v7) ^ 0x30);
  v9 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + v8 - 8) ^ 0xE3u) - 8) ^ v8) - 48];
  v10 = &v15[1] + (*(v9 - 4) ^ *v7);
  *v7 = 636859739 * v10 + 0x768A6804525E3610;
  *(v9 - 4) = 636859739 * (v10 ^ 0xE2C729A08169AF30);
  v14 = 0;
  v15[0] = 1237465637;
  v11 = a1 - ((2 * a1) & 0x6B570093361338D4) - 0x4A547FB664F66396;
  v12 = 891395573 * (((~v16 | 0x99CB60674DBD650ELL) + (v16 | 0x66349F98B2429AF1)) ^ 0x583013E3886F854BLL);
  v16[2] = v12 ^ ((a5 ^ 0xFFFABD6D) + 1441624000 + ((2 * a5) & 0xFFF57ADA));
  v16[0] = v12 ^ 0xEB8;
  v19 = v12 ^ v11;
  v20 = &v14;
  v21 = a6;
  v22 = v12 ^ ((a3 ^ 0xFDFBEDEF) + 1475100478 + ((2 * a3) & 0xFBF7DBDE));
  v23 = a4;
  v24 = a2;
  v17 = a7;
  v18 = v15;
  LOBYTE(v7) = 91 * ((*(v9 - 1) + *v7) ^ 0x30);
  v13 = (&off_1F0B1A0C0)[((91 * ((dword_1EAF16720 + dword_1EAF16960) ^ 0x30)) ^ byte_196EC07F0[byte_196EC03C0[(91 * ((dword_1EAF16720 + dword_1EAF16960) ^ 0x30))] ^ 0x86]) + 46] - 8;
  (*&v13[8 * (*(off_1F0B1A3F0 + (*(off_1F0B1A830 + v7) ^ 0xE9u) - 12) ^ v7) + 51368])(v16);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1963AE1C8(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (912648571 * ((2 * (a1 & 0x66FF76C4) - a1 + 419465531) ^ 0xC5CDC50E));
  if (*a1)
  {
    return (*&(&off_1F0B1A0C0)[v1 + 50583710][8 * v1 + 404721624])(*a1);
  }

  else
  {
    return (*&(&off_1F0B1A0C0)[v1 + 50583710][8 * v1 + 404721624])((&off_1F0B1A0C0)[v1 ^ 0xFCFC27B7]);
  }
}

void fcexHpmxKluw()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - qword_1EAF166D0) ^ 0x30))) ^ 0xE9u) - 12) ^ (91 * ((dword_1EAF16720 - qword_1EAF166D0) ^ 0x30))) - 139];
  qword_1EAF166D0 = 636859739 * ((*(v0 - 4) + qword_1EAF166D0) ^ &v2 ^ 0xE2C729A08169AF30);
  *(v0 - 4) = qword_1EAF166D0;
  v1 = 91 * ((*(v0 - 1) - qword_1EAF166D0) ^ 0x30);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1963AE3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int *a29)
{
  v33 = 211 * (a21 ^ 0x60F);
  (*(v31 + 8 * (a21 ^ 0x1FC6)))(v30);
  v34 = *a29;
  v35 = *v29;
  v36 = 1311869473 * ((~((v32 - 144) | 0x9AF6C1F) + ((v32 - 144) & 0x9AF6C1F)) ^ 0x1DBF894C);
  *(v32 - 144) = (*(v29 + 3) + 599664785 - ((2 * *(v29 + 3)) & 0x477C5122)) ^ v36;
  *(v32 - 136) = v35;
  *(v32 - 128) = v32 - 152;
  *(v32 - 120) = v32 - 180;
  *(v32 - 112) = v36 + a21 + 4090;
  *(v32 - 104) = (v33 ^ 0x21933FBC) - v36 + 622816387 * v34;
  (*(v31 + 8 * (a21 ^ 0x1FFE)))(v32 - 144);
  v37 = *(v32 - 108);
  v38 = (*(v31 + 8 * (a21 ^ 0x1FC0)))(v30);
  return (*(v31 + 8 * (((v37 == 1625074048) * ((v33 - 517) ^ 0x986 ^ ((v33 + 1) | 0x200))) ^ v33)))(v38);
}

uint64_t sub_1963AE564()
{
  v6 = 912648571 * ((-700407324 - (&v10 | 0xD640A1E4) + (&v10 | 0x29BF5E1B)) ^ 0xF572122E);
  v10 = (v5 + 1318475538) ^ v6;
  v11 = v9;
  v12 = v2 - v6 + ((v5 - v0 - 3912) ^ 0x29C42E8C);
  (*(v4 + 8 * (v5 + 2410)))(&v10);
  (*(v4 + 8 * (v5 ^ 0x929)))(v8, v1, 0, *(v3 + 8 * (v5 ^ 0x1031)) - 12, v9, 8);
  return (v2 - 1237465637);
}

uint64_t sub_1963AE680@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((3107 * (v5 == ((2 * v3) ^ 0x5E8u) - 254)) ^ v3)))();
}

uint64_t sub_1963AE734(uint64_t result)
{
  v1 = *(result + 24);
  v2 = 652747349 * ((result - 2 * (result & 0x9A19A7FD99280FA9) - 0x65E6580266D7F057) ^ 0xC0AF0C01DBDB313CLL);
  v3 = *(result + 48) - v2;
  v4 = *(result + 8) - v2;
  v5 = *(result + 40) ^ v2;
  v6 = *(result + 56) ^ v2;
  v7 = *(result + 12) + v2;
  v8 = *(result + 36) - v2;
  v9 = *result ^ v2;
  LODWORD(v2) = *(result + 32) - v2;
  *v1 = 134219778;
  *(v1 + 4) = v3;
  *(v1 + 12) = 1024;
  *(v1 + 14) = v4;
  *(v1 + 18) = 1040;
  *(v1 + 20) = v5;
  *(v1 + 24) = 2096;
  *(v1 + 26) = v6;
  *(v1 + 34) = 1024;
  *(v1 + 36) = v7;
  *(v1 + 40) = 1040;
  *(v1 + 42) = v8;
  *(v1 + 46) = 2096;
  *(v1 + 48) = v9;
  *(v1 + 56) = 1024;
  *(v1 + 58) = v2;
  return result;
}

uint64_t sub_1963AE80C@<X0>(uint64_t a1@<X8>)
{
  v6 = 617 * (v3 ^ 0xD573F01);
  v7 = (v2 ^ 0xFFFFFFFFFFFFF6E7 ^ (v6 + 1094)) + v1;
  *(v4 - 7 + v7) = *(a1 - 7 + v7);
  return (*(v5 + 8 * ((2506 * ((v1 & 0xFFFFFFF8) - 8 == v2)) ^ v6)))();
}

void PqUfoAiCUu()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = off_1F0B1A660 - 8;
  v1 = off_1F0B1A1D8 - 8;
  v2 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * (qword_1EAF167E0 ^ 0x30 ^ dword_1EAF16720)) - 8) ^ 0x7Du) - 8) ^ (91 * (qword_1EAF167E0 ^ 0x30 ^ dword_1EAF16720))) + 100];
  v3 = (*(v2 - 4) + qword_1EAF167E0) ^ &v6;
  v4 = 636859739 * v3 - 0x1D38D65F7E9650D0;
  v5 = 636859739 * (v3 ^ 0xE2C729A08169AF30);
  qword_1EAF167E0 = v4;
  *(v2 - 4) = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1963AE9D0(uint64_t result)
{
  v1 = *(result + 24);
  v2 = 1384597421 * ((-2 - ((~result | 0xE987887C0DB4898ELL) + (result | 0x16787783F24B7671))) ^ 0x9FFA5013EF7AD0F7);
  v3 = *(result + 36) ^ v2;
  v4 = *(result + 32) - v2;
  v5 = *(result + 16) ^ v2;
  v6 = *(result + 44);
  v7 = *(result + 48) - v2;
  v8 = *result ^ v2;
  v9 = *(result + 8) - v2;
  *v1 = 67110658;
  *(v1 + 4) = v3;
  *(v1 + 8) = 1040;
  *(v1 + 10) = v4;
  *(v1 + 14) = 2096;
  *(v1 + 16) = v5;
  *(v1 + 24) = 1024;
  *(v1 + 26) = v7;
  *(v1 + 30) = 1040;
  *(v1 + 32) = v8;
  *(v1 + 36) = 2096;
  *(v1 + 38) = v9;
  *(v1 + 46) = 1024;
  *(v1 + 48) = v6 + v2;
  return result;
}

void sub_1963AEAA0(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 64) + 1384597421 * ((~a1 & 0x97F022C2 | a1 & 0x680FDD3D) ^ 0x753E7BBB);
  v3[0] = v1 - 891395573 * ((((2 * v3) | 0xDA298710) - v3 - 1830077320) ^ 0x5739DC33) - 1109;
  v2 = (&off_1F0B1A0C0)[v1 ^ 0x151C] - 8;
  (*&v2[8 * (v1 ^ 0xCAF)])(v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1963AF2CC@<X0>(int a1@<W8>)
{
  v6 = a1 + 2990;
  (*(v4 + 8 * (a1 + 5863)))();
  *v2 = 0;
  *v2 = 0;
  v2[1] = 0;
  v7 = (*(v4 + 8 * (v6 + 2873)))(v2);
  return (*(v4 + 8 * (((v5 < ((((v6 + 1040349524) | 0x1C46D6) - 1042206395) | v1) + 698532534) * (((v6 + 1040349524) | 0x1C46D6) - 1042200380 + v3)) ^ (((v6 + 1040349524) | 0x1C46D6) - 1042202913))))(v7);
}

uint64_t sub_1963AF7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = (((v9 ^ 0xDC66669C739CD7FELL) + 0x7C1829590395D82ALL) ^ ((v9 ^ 0x4AE5AF2E67BB0917) - 0x15641F14E84DF93FLL) ^ (v10 + 0x7D0049A8AF6358D7 + (v9 ^ 0xDD7E066C3B1B2134))) + a7;
  v14 = (v7 < v8) ^ (v13 < v11);
  v15 = v13 < v7;
  if (v14)
  {
    v15 = v7 < v8;
  }

  return (*(v12 + 8 * ((3032 * v15) ^ 0x12Cu)))();
}

uint64_t sub_1963AF89C()
{
  v3 = v0 - 2103;
  v4 = v2 == (((v0 - 1136) | 0x405) ^ 0x49C22CB8);
  return (*(v1 + 8 * (((v4 << 7) | (v4 << 8)) ^ v3)))();
}

uint64_t sub_1963AF8DC()
{
  v4 = v0 ^ 0xA5C2A3BCLL;
  v6 = v2 > 0x1F && v4 >= (v1 - 24) - 4377;
  return (*(v3 + 8 * ((v6 * ((v1 + 601156150) & 0xDC2B17B4 ^ 0x1352)) ^ v1)))();
}

uint64_t sub_1963AF938@<X0>(int a1@<W8>)
{
  v4 = a1 + 1611;
  (*(v3 + 8 * (a1 ^ 0x1A39)))();
  *v1 = 0;
  *v1 = 0;
  v1[1] = 0;
  v5 = (*(v3 + 8 * (v4 + 4028)))(v1);
  return v2(v5);
}

uint64_t sub_1963AFAB4@<X0>(unsigned int a1@<W2>, unint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = (((v4 ^ a1) - 4903) ^ a2) + v3;
  *(v5 + v7) = *(a3 + v7);
  return (*(v6 + 8 * (((v7 != 0) * a1) ^ v4 ^ a1)))();
}

uint64_t sub_1963AFB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (*(v13 + 52864))(a12, a11);
  *v14 = v15;
  return (*(v13 + 8 * ((8135 * (v15 == 0)) ^ v12)))();
}

uint64_t sub_1963AFBFC()
{
  if (*v14 >= 0x40)
  {
    v8 = 64;
  }

  else
  {
    v8 = *v14;
  }

  v9 = *v7;
  v10 = *v5;
  v11 = 1311869473 * (((v16 | 0x1625F33F54735CC7) - v16 + (v16 & 0xE9DA0CC0AB8CA338)) ^ 0xA58A246ABF9C466BLL);
  v20 = *v14 ^ v11;
  v16[1] = (v2 + 2118007888) ^ v11;
  v16[2] = v8 - v11;
  v16[0] = v4 - v11 + ((v2 + v1) ^ 0x885277B0);
  v19 = v10 + v11;
  v17 = v9 ^ v11;
  v18 = v15;
  (*(v0 + 8 * (v2 ^ 0x1AE9)))(v16);
  (*(v0 + 8 * (v2 + 5754)))(v13, v3, 0, *(v6 + 8 * (v2 - 606)) - 4, v15, 40);
  return (v4 - 1237465637);
}

uint64_t sub_1963B06FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(a2 + v5);
  return (*(v4 + 8 * (((v5 == 0) * (v3 + 2716)) ^ v3)))();
}

uint64_t sub_1963B08C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a21, uint64_t *a22)
{
  v25 = a22;
  a19 = 0;
  a21 = 0;
  v26 = (&off_1F0B1A0C0)[v23 - 935] - 8;
  (*(v22 + 8 * (v23 ^ 0x1A35)))(v26);
  v27 = *(&off_1F0B1A0C0)[v23 - 962];
  v28 = *v25;
  v29 = 1311869473 * ((((v24 - 144) ^ 0x9DD36924) - 1442125322 - 2 * (((v24 - 144) ^ 0x9DD36924) & 0xAA0AE9F6)) ^ 0xDC369A7E);
  *(v24 - 144) = (*(v25 + 3) + 599664785 - ((*(v25 + 3) << (((v23 + 10) | 0x28) - 42)) & 0x477C5122)) ^ v29;
  *(v24 - 112) = v29 + v23 + 4619;
  *(v24 - 104) = 563296376 - v29 + 622816387 * v27 + 811;
  *(v24 - 120) = &a21;
  *(v24 - 136) = v28;
  *(v24 - 128) = &a19;
  (*(v22 + 8 * (v23 + 5627)))(v24 - 144);
  v30 = *(v24 - 108);
  v31 = (*(v22 + 8 * (v23 + 5585)))(v26);
  return (*(v22 + 8 * ((2001 * (v30 == 1893509507)) ^ v23)))(v31);
}

uint64_t sub_1963B0A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v20 = (v17 ^ 0x3A58CBF7FEB7FFFFLL) + ((2 * v17) & 0x1FD6FFFFELL) - 0x3A58CBF765B93A0DLL;
  v22 = v20 < (((v18 ^ 0x11C9u) + 3913) ^ 0x98FED561uLL) || v20 > *(a17 + 8) + 2566833646u;
  return (*(v19 + 8 * ((5367 * v22) ^ v18 ^ 0x11C9)))();
}

uint64_t sub_1963B0AB8()
{
  v5 = (*(v2 + 8 * (v4 ^ 0xE02)))(v0, v1);
  *v3 = v5;
  return (*(v2 + 8 * (((v5 == 0) * ((v4 ^ 0x1A04) + 237)) ^ v4)))();
}

void ShHwAthFTZpQ05NCik7qQZ9wja()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = off_1F0B1A830;
  v1 = off_1F0B1A3F0 - 12;
  v2 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - qword_1EAF169A8) ^ 0x30))) ^ 0xEFu) - 12) ^ (91 * ((dword_1EAF16720 - qword_1EAF169A8) ^ 0x30))) - 120];
  v3 = qword_1EAF169A8 ^ &v6 ^ *(v2 - 4);
  v4 = 636859739 * v3 + 0x1D38D65F7E9650D0;
  v5 = 636859739 * (v3 ^ 0xE2C729A08169AF30);
  qword_1EAF169A8 = v4;
  *(v2 - 4) = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1963B0D00(uint64_t result)
{
  v1 = 1864678469 * (((result | 0x754864357B5A4F0ELL) - result + (result & 0x8AB79BCA84A5B0F1)) ^ 0xDB85B06482A58E7);
  v2 = *(result + 24);
  v3 = *(result + 16) + v1;
  v4 = *(result + 8) ^ v1;
  *v2 = 67109376;
  *(v2 + 4) = v3;
  *(v2 + 8) = 2048;
  *(v2 + 10) = v4;
  return result;
}

uint64_t sub_1963B0DE8(uint64_t result)
{
  v1 = *(result + 24);
  v2 = *result;
  v3 = *(result + 16);
  v4 = 1468321087 * (((result | 0x1A2E28317D33E51DLL) - result + (result & 0xE5D1D7CE82CC1AE2)) ^ 0x4FE5C15EA9DCA473);
  v5 = *(result + 8) + v4;
  *v1 = 68158210;
  *(v1 + 4) = v5;
  *(v1 + 8) = 2096;
  *(v1 + 10) = v2 ^ v4;
  *(v1 + 18) = 1024;
  *(v1 + 20) = v3 + v4;
  return result;
}

void sub_1963B0E7C(uint64_t a1)
{
  v1 = *(a1 + 4) - 912648571 * (a1 ^ 0xDCCD4C35);
  v2 = (&off_1F0B1A0C0)[v1 - 1761] - 8;
  v3 = (*&v2[8 * v1 + 37832])(*(a1 + 16), @"lK1");
  v4 = (((2 * v3) & 0x5E) + (v3 ^ 0x2F)) == 48;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1963B1098()
{
  *(v2 + 8) = 4096;
  *v1 = v2;
  return v0(4294962059, 479);
}

void sub_1963B1120(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, unsigned int a26)
{
  a26 = v29 + 583883621 * (((&a24 | 0x755C3557) - (&a24 & 0x755C3557)) ^ 0xD46FE9F8) + v27 + 1909;
  a24 = a1;
  (*(v26 + 8 * (v27 ^ (v28 + 3323))))(&a24);
  JUMPOUT(0x19637523CLL);
}

uint64_t sub_1963B1204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v24 = (v18 + 559174501) & 0x37F7;
  if (v17 >= 0x40)
  {
    v25 = 64;
  }

  else
  {
    v25 = v17;
  }

  if (v21 >= 0x40)
  {
    v26 = 64;
  }

  else
  {
    v26 = v21;
  }

  if (v19 >= 0x40)
  {
    v27 = 64;
  }

  else
  {
    v27 = v19;
  }

  v28 = 583883621 * ((v23 - 184) ^ 0xFBAB76BAA133DCAFLL);
  *(v23 - 184) = v28 ^ v25;
  *(v23 - 180) = v21 - v28;
  *(v23 - 160) = v28 ^ v19;
  *(v23 - 156) = v28 + v26;
  *(v23 - 128) = v28 + a7;
  *(v23 - 152) = v28 + v18 - 724384862;
  *(v23 - 176) = v27 - v28;
  *(v23 - 172) = v28 ^ v17;
  *(v23 - 168) = a8 - v28;
  *(v23 - 144) = v28 + a9;
  *(v23 - 136) = va;
  (*(v16 + 8 * (v18 ^ 0x1317u)))(v23 - 184);
  (*(v16 + 8 * (v18 + 4175)))(a1, v20, 0, *(v22 + 8 * (v18 ^ 0x994u)), va, 68);
  v29 = 1864678469 * ((((2 * (v23 - 184)) | 0x5DF3F75A) - (v23 - 184) + 1359348819) ^ 0x9D89EC44);
  *(v23 - 128) = (v17 ^ 0xFFB5E9E5) - v29 + ((v17 << (v24 + 75)) & 0xFF6BD3CA) + 805043803;
  *(v23 - 144) = 55 - 69 * ((((2 * (v23 + 72)) | 0x5A) - (v23 + 72) + 83) ^ 0x44);
  *(v23 - 136) = a6;
  *(v23 - 108) = v29 ^ ((v21 ^ 0x3FBFEA61) - 269353505 + ((2 * v21) & 0x7F7FD4C2));
  *(v23 - 104) = v19 - ((2 * v19) & 0x16AA6D56) - v29 - 1957349717;
  *(v23 - 184) = a7;
  *(v23 - 176) = a9;
  *(v23 - 120) = a5;
  *(v23 - 160) = a4;
  *(v23 - 152) = a8;
  *(v23 - 112) = v24 - v29 - 2078;
  v30 = (*(v16 + 8 * (v24 ^ 0xE9Eu)))(v23 - 184);
  if (a4)
  {
    v31 = a6 == 0;
  }

  else
  {
    v31 = 1;
  }

  v33 = !v31 && a5 != 0;
  return (*(v16 + 8 * (v24 ^ (13 * v33))))(v30);
}

uint64_t sub_1963B1464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, int a24, char a25)
{
  v31 = (v26 - 2514) | 0xA4A;
  (*(v29 + 8 * (v26 ^ 0x139F)))(v27);
  v32 = *v28;
  v33 = *v25;
  v34 = 1311869473 * ((((v30 - 144) | 0x89062C7D) - (v30 - 144) + ((v30 - 144) & 0x76F9D380)) ^ 0x62E936D1);
  *(v30 - 144) = (*(v25 + 3) + 599664785 - ((2 * *(v25 + 3)) & 0x477C5122)) ^ v34;
  *(v30 - 120) = &a23;
  *(v30 - 104) = (v31 ^ 0x21933168) - v34 + 622816387 * v32;
  *(v30 - 112) = v34 + v26 + 2993;
  *(v30 - 136) = v33;
  *(v30 - 128) = &a25;
  (*(v29 + 8 * (v26 + 4001)))(v30 - 144);
  v35 = *(v30 - 108);
  v36 = (*(v29 + 8 * (v26 ^ 0x1399)))(v27);
  return (*(v29 + 8 * ((7847 * (v35 == (v31 ^ 0xCEC5B8EC ^ (v31 - 1374088996)))) ^ v31)))(v36);
}

uint64_t sub_1963B15AC@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 ^ 0x15E5)))();
  *v1 = 0;
  return sub_1963A94EC();
}

uint64_t sub_1963B15CC@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v4) ^ v2)))();
}

uint64_t sub_1963B168C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v29 = (v27 ^ 0x7ED9FFBCCBDBB6FDLL) + ((v27 << ((a11 - 25) ^ 0x8Fu)) & 0x197B76DFALL) - 0x7ED9FFBC7D0514AELL;
  v31 = v29 < 0x4ED6A24B || v29 > (a11 ^ 0x1729u) + *(a27 + 8) + 1322683325;
  return (*(v28 + 8 * ((2686 * v31) ^ a11)))();
}

uint64_t sub_1963B18E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = (*(v11 + 52864))(a11, a10);
  *v12 = v13;
  return (*(v11 + 8 * ((25 * (v13 != 0)) ^ 0x46Cu)))();
}

void sub_1963B192C()
{
  *(v1 - 200) = 0;
  *(v1 - 192) = v0 - 4610;
  JUMPOUT(0x196381664);
}

uint64_t sub_1963B1A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, uint64_t a24, uint64_t *a25)
{
  v28 = a25;
  a24 = 0;
  a23 = 0;
  v29 = (&off_1F0B1A0C0)[v25 & 0x3BCF80D2] - 8;
  (*(v26 + 8 * (v25 ^ 0x139F)))(v29);
  v30 = *(&off_1F0B1A0C0)[v25 - 2588];
  v31 = *v28;
  v32 = 1311869473 * ((((2 * (v27 - 144)) | 0xB8FB353A) - (v27 - 144) - 1551735453) ^ 0xB7928031);
  *(v27 - 144) = (*(v28 + 3) + 599664785 - ((*(v28 + 3) << (((v25 - 10) | 0x82) ^ 0xCA)) & 0x477C5122)) ^ v32;
  *(v27 - 112) = v32 + v25 + 2993;
  *(v27 - 104) = 563294568 - v32 + 622816387 * v30 + 2619;
  *(v27 - 120) = &a23;
  *(v27 - 136) = v31;
  *(v27 - 128) = &a24;
  (*(v26 + 8 * (v25 + 4001)))(v27 - 144);
  v33 = *(v27 - 108);
  v34 = (*(v26 + 8 * (v25 ^ 0x1399)))(v29);
  return (*(v26 + 8 * (((16 * (v33 == 1893509507)) | (32 * (v33 == 1893509507))) ^ v25)))(v34);
}

void JE2f6WCx()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * (qword_1EAF166D8 ^ 0x30 ^ dword_1EAF16720))) ^ 0xEFu) - 12) ^ (91 * (qword_1EAF166D8 ^ 0x30 ^ dword_1EAF16720))) - 120];
  v1 = (*(v0 - 4) ^ qword_1EAF166D8) - &v4;
  v2 = 636859739 * v1 - 0x1D38D65F7E9650D0;
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_1EAF166D8 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1963B21A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, int a8@<W8>, uint64_t a9, uint64_t a10, _DWORD *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, int a33)
{
  v33 = (a8 + 237137399) & 0xF1DD8FF5;
  *a11 = (v33 ^ 0xB63DC31A) + a33;
  return sub_1963AD504(a1, a2, a3, a4, v33, a5, a6, a7, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19);
}

uint64_t sub_1963B2204@<X0>(uint64_t a1@<X2>, int a2@<W8>)
{
  v4 = ((2 * v2) & 0x174D83FACLL) + (((a2 + 1918) + 0x7EAAFDC5BA6C1656) ^ v2) - 0x7EAAFDC534954129;
  v6 = v4 < 0x85D6DEA9 || v4 > *(a1 + 8) + 2245451433u;
  return (*(v3 + 8 * ((6750 * v6) ^ a2)))();
}

uint64_t sub_1963B2288@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((390 * (v5 == (v3 ^ 0x17D4u) - 437)) ^ v3)))();
}

void sub_1963B2320(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 72) - 891395573 * ((2 * (a1 & 0xA8E57F07) - a1 + 1461354744) ^ 0x6D379F43);
  v3[0] = v1 - 891395573 * (((v3 | 0xB9CF4313) - (v3 & 0xB9CF4313)) ^ 0x83E25CA8) + 2062;
  v2 = (&off_1F0B1A0C0)[v1 ^ 0x961] - 8;
  (*&v2[8 * (v1 ^ 0x10D2)])(v3);
  __asm { BRAA            X9, X17 }
}

void sub_1963B245C(uint64_t a1, ...)
{
  va_start(va, a1);
  (*(v1 + 8 * (v2 + 5925)))(va);
  JUMPOUT(0x1963B2474);
}

uint64_t sub_1963B2544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7 + v2) = *(a2 + v7);
  return (*(v6 + 8 * ((v7 == (v4 + 2381) + v5) | v4)))();
}

uint64_t sub_1963B2644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 8) = 4096;
  *v4 = v5;
  return v6(a1, 37, a3, a4, v7);
}

uint64_t sub_1963B26C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t *a22, int a23, int a24, uint64_t a25, int a26, uint64_t a27, uint64_t *a28, int *a29, int a30, int a31, int a32)
{
  v37 = v35 - v32;
  v38 = a22;
  a21 = 0;
  a24 = 0;
  v39 = *(v33 + 8 * (v35 - 3170)) - 8;
  (*(v36 + 8 * (v35 + 3352)))(v39);
  v40 = *v38;
  v41 = *(v38 + 3) + 599664785 - (((v35 - 2187) ^ 0x477C550B) & (2 * *(v38 + 3)));
  v42 = 1311869473 * ((v34 - 1757463952 - 2 * (v34 & 0x973F3A70)) ^ 0x7CD020DC);
  a32 = v37 - v42 + 622816387 * **(v33 + 8 * (v35 ^ 0xC83)) - 1278148356;
  a30 = v42 + v35 + 2384;
  a27 = v40;
  a28 = &a21;
  a26 = v41 ^ v42;
  a29 = &a24;
  (*(v36 + 8 * (v35 ^ 0x1540)))(&a26);
  v43 = a31;
  v44 = (*(v36 + 8 * (v35 + 3350)))(v39);
  return (*(v36 + 8 * ((13 * (v43 != 1893509507)) ^ v35)))(v44);
}

uint64_t sub_1963B2A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v32 = (v30 ^ 0x3FFE9FCFFEEBBE3FLL) + (a14 ^ 0x17CCu) + ((2948 * (a14 ^ 0xC6u) + 0x1FDD76576) & (2 * v30)) - 0x3FFE9FCFB86F770FLL;
  v34 = v32 < 0x467C5E34 || v32 > *(a30 + 8) + 1182555700;
  return (*(v31 + 8 * ((4555 * v34) ^ a14)))();
}

uint64_t sub_1963B2C3C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, __int16 a16, char a17, __int16 a18, char a19, __int16 a20, char a21)
{
  v26 = *v23;
  v27 = ((2 * *a8) & 0xD57CBFDE) + (*a8 ^ 0xEABE5FEF) + 356622353;
  *(*v23 + v27) = a21;
  *(v26 + v27 + 1) = a19;
  *(v26 + v27 + 2) = a17;
  *(v26 + v27 + 3) = a15;
  *a8 += v21 ^ 0x46F;
  return (*(v24 + 8 * (v21 ^ ((v25 != v22) * a1))))();
}

uint64_t sub_1963B2CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  v45 = v42 - 945;
  v46 = v42 ^ 0x307;
  v56 = *v43;
  *(v43 + 3) = v41 + v40 - 1237465637;
  v57 = v42;
  v47 = (*(v44 + 8 * (v42 + 5559)))();
  *(a40 + 64) = v47;
  HIDWORD(a16) = 1237465637;
  return (*(v44 + 8 * ((95 * (((v46 ^ v45 ^ (v47 == 0)) & 1) == 0)) ^ v57)))(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, v56, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27);
}

uint64_t sub_1963B2E24()
{
  v6 = *v9;
  v7 = 912648571 * ((((2 * &v11) | 0x6B899829475E6066) - &v11 + 0x4A3B33EB5C50CFCDLL) ^ 0xF567DE9C7F627C06);
  v12 = (v0 + 1902289469) ^ v7;
  v11 = v6 - v7;
  v13 = v10;
  (*(v5 + 8 * (v0 ^ 0x63F5B849)))(&v11);
  (*(v5 + 8 * (v0 - 1677035604)))(v4, v2, 0, *(v1 + 8 * (v0 - 1677042035)) - 8, v10, 12);
  return (v3 - 1237465637);
}

uint64_t sub_1963B355C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *(v4 - 216) = a1;
  v5 = a2 - 4575;
  v6 = (a2 - 848) | 0x10D;
  v7 = *(v4 - 200);
  *(v4 - 176) = 0;
  *(v4 - 184) = 0;
  v8 = (&off_1F0B1A0C0)[a2 - 5406] - 8;
  (*(v2 + 8 * (a2 + 1116)))(v8);
  v9 = *(&off_1F0B1A0C0)[v5 - 858];
  v10 = *v7;
  v11 = 1311869473 * ((2 * (v3 & 0x1A243CC8) - v3 + 1708901175) ^ 0x8E34D99B);
  *(v4 - 144) = (*(v7 + 3) + 599664785 - ((2 * *(v7 + 3)) & 0x477C5122)) ^ v11;
  *(v4 - 112) = v11 + v5 + 4723;
  *(v4 - 104) = 563297187 - v11 + 622816387 * v9;
  *(v4 - 136) = v10;
  *(v4 - 128) = v4 - 176;
  *(v4 - 120) = v4 - 184;
  (*(v2 + 8 * (v5 ^ 0x1A65)))(v4 - 144);
  v12 = *(v4 - 108);
  v13 = (*(v2 + 8 * (v5 ^ 0x1A5B)))(v8);
  return (*(v2 + 8 * (((v12 == 1893509507) * (v6 - 1456)) ^ v5)))(v13);
}

uint64_t sub_1963B3978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, unsigned int a21)
{
  v25 = v21 ^ 0xA2E;
  *(v22 + 8) = a21;
  *(v22 + 12) = 0;
  v26 = (*(v23 + 8 * ((v21 ^ 0xA2E) + 3685)))(*(&off_1F0B1A0C0)[v21 ^ 0x159], a19, a21);
  return (*(v23 + 8 * (((v24 == 1237465637) * (v25 ^ 0x7BF)) ^ (v25 - 2591))))(v26);
}

uint64_t sub_1963B3A8C()
{
  *(v1 + 8) = 4096;
  *v0 = v1;
  return v2(v3, 2147482831, 7480, 825, 867);
}

uint64_t sub_1963B3AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t (*a16)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v25 = (*(v24 + 8 * (v20 + 793765189)))(*v23);
  *v23 = v22;
  *(v23 + 8) = v21;
  return a16(v25, 2367137852, 214723087, 2808654594, a20, a19, a18);
}

uint64_t sub_1963B3CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, unsigned int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v31 = (v29 ^ 0xDFBCEBDAFBFECC6FLL) + ((v29 << ((a9 - 15) ^ 0x26)) & 0x1F7FD98DELL) + 0x20431425098C10D7;
  v33 = v31 < 0x58ADD42 || v31 > *(a29 + 8) + 92986690;
  return (*(v30 + 8 * ((3915 * v33) ^ a9)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1963B3F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t *a21, uint64_t a22, int a23)
{
  a22 = 0;
  a23 = 0;
  v26 = (&off_1F0B1A0C0)[v24 ^ 0x13E4] - 8;
  (*(v23 + 8 * (v24 ^ 0xA7A)))(v26);
  v27 = *(&off_1F0B1A0C0)[v24 ^ 0x1381];
  v28 = *a21;
  v29 = 1311869473 * ((((v25 - 144) | 0x58ED1B28) - (v25 - 144) + ((v25 - 144) & 0xA712E4D0)) ^ 0xB3020184);
  *(v25 - 144) = (*(a21 + 3) + 599664785 - ((*(a21 + 3) << (v24 ^ 0xB7)) & 0x477C5122)) ^ v29;
  *(v25 - 136) = v28;
  *(v25 - 128) = &a22;
  *(v25 - 112) = v29 + v24 + 590;
  *(v25 - 104) = v24 + 181 - v29 + 622816387 * v27 + 563291960;
  *(v25 - 120) = &a23;
  (*(v23 + 8 * (v24 ^ 0xA42)))(v25 - 144);
  v30 = *(v25 - 108);
  v31 = (*(v23 + 8 * (v24 + 1556)))(v26);
  return (*(v23 + 8 * ((1243 * (v30 == 1893509507)) ^ v24)))(v31);
}

uint64_t sub_1963B4224@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = a1 ^ 0x11BB;
  LODWORD(a6) = v9 ^ 0xFFFFEF74;
  HIDWORD(a3) = v9 ^ 0x1054;
  HIDWORD(a5) = (v9 ^ 0x1054) + 5455;
  v12 = (1413 * (a1 ^ 0xB0) - 123) | 0x40;
  v13 = (*(v10 + 8 * (a1 ^ 0x197D)))(16, 3886098504);
  return (*(v10 + 8 * (((v13 == 0) * (v12 ^ 0x103E)) ^ v11)))(v13, v14, v15, v16, 1237422985, v17, v18, v19, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1963B4294()
{
  v3 = (*(v1 + 12) ^ 0x5A97EDDFFFB5F6DBLL) + (((v0 | 0x7F0u) + 1255716381 + (((v0 | 0x7F0) - 3449) | 0x401u) + 0x1B493111FLL) & (2 * *(v1 + 12))) - 0x5A97EDDFE88BDA91;
  v5 = v3 < 0x172A1C46 || v3 > *(v1 + 8) + 388635718;
  return (*(v2 + 8 * ((4090 * v5) ^ (v0 | 0x7F0))))();
}

uint64_t sub_1963B432C()
{
  v5 = v2 | 0x1900;
  v7 = (v1 ^ v0) < 8 || v3 < (((v5 - 5721) | 0x80u) ^ 0x388uLL);
  return (*(v4 + 8 * (v5 ^ (((((v5 + 295969833) ^ v7) & 1) == 0) << 6))))();
}

void sub_1963B4454(int a1@<W8>)
{
  (*(v2 + 8 * (a1 ^ 0x831)))();
  *v1 = 0;
  JUMPOUT(0x1963504ACLL);
}

uint64_t sub_1963B4488()
{
  v6 = (*(v5 + 8 * (v0 + v3 + 1697)))(v2);
  *v1 = 0;
  return v4(v6);
}

uint64_t sub_1963B44E4()
{
  v3 = *(v2 - 192);
  *(v2 - 168) = 0;
  *(v2 - 184) = 0;
  v4 = (&off_1F0B1A0C0)[v0 ^ 0x4E8] - 8;
  (*(v1 + 8 * (v0 ^ 0x1D76)))(v4);
  v5 = *(&off_1F0B1A0C0)[v0 - 1155];
  v6 = *v3;
  v7 = 1311869473 * ((2 * ((v2 - 144) & 0x6E6130C0) - (v2 - 144) - 1851863237) ^ 0x7A71D597);
  *(v2 - 144) = (*(v3 + 3) + 599664785 - ((2 * *(v3 + 3)) & 0x477C5122)) ^ v7;
  *(v2 - 136) = v6;
  *(v2 - 128) = v2 - 168;
  *(v2 - 112) = v7 + v0 + 4426;
  *(v2 - 104) = 563293386 - v7 + ((v0 - 618) | 0xC89) + 622816387 * v5;
  *(v2 - 120) = v2 - 184;
  (*(v1 + 8 * (v0 ^ 0x1D4E)))(v2 - 144);
  v8 = *(v2 - 108);
  v9 = (*(v1 + 8 * (v0 ^ 0x1D70)))(v4);
  return (*(v1 + 8 * (((v8 == 1893509507) * (((v0 + 2102999585) & 0x82A6CFFD) + 1760)) ^ v0)))(v9);
}

void sub_1963B46FC(uint64_t a1)
{
  v1 = *(a1 + 8) ^ (583883621 * (a1 ^ 0xA133DCAF));
  v2 = (&off_1F0B1A0C0)[v1 ^ 0x878] - 8;
  v3 = (*&v2[8 * (v1 ^ 0x120E)])((&off_1F0B1A0C0)[v1 ^ 0x8E4] - 12, 5);
  *((&off_1F0B1A0C0)[v1 ^ 0x8D8] - 4) = v3;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1963B47D0()
{
  v7 = 566710099 * (((v13 | 0x8A1530FD4629097BLL) - (v13 | 0x75EACF02B9D6F684) + 0x75EACF02B9D6F684) ^ 0x759DDE2FCA6C51F7);
  v8 = *v11 - v7;
  v16 = *v0 + v7;
  v13[0] = v7 + v5 + 576630138;
  v13[1] = v8;
  v14 = v7 + v6;
  v15 = v12;
  v13[2] = 16 - v7;
  (*(v4 + 8 * (v5 + 3312)))(v13);
  (*(v4 + 8 * (v5 + 3212)))(v10, v2, 0, *(v1 + 8 * (v5 - 3311)), v12, 34);
  return (v3 - 1237465637);
}

uint64_t sub_1963B4AC8()
{
  *(v6 - 144) = v0;
  *(v6 - 136) = (v2 + 1311676327) ^ (1468321087 * (v3 ^ 0xD4EF416E));
  (*(v5 + 8 * (v2 ^ 0x18CC)))(v6 - 144);
  v7 = (*(v5 + 8 * (v2 + 6171)))(**(v4 + 8 * (v2 - 212)), *(v4 + 8 * (v2 - 172)) - 4, v1);
  v8 = ((3 * (v2 ^ 0x59D) - 3149534) & (2 * v7)) + (v7 ^ 0x7FE7FFED);
  *(v6 - 144) = v0;
  *(v6 - 136) = (v2 - 50583975) ^ (912648571 * (((v3 | 0xE730B282) - (v3 & 0xE730B282)) ^ 0x3BFDFEB7));
  v9 = (*(v5 + 8 * (v2 + 6242)))(v6 - 144);
  return (*(v5 + 8 * (((v8 == 2145910765) * (v2 ^ 0x1744)) ^ v2)))(v9);
}

uint64_t sub_1963B4C48(unint64_t a1)
{
  v5 = v2 ^ 0x3E4;
  v6 = (((v2 ^ 0x3E4) - 5909) | 0x1094u) ^ 0x10B4;
  v8 = (v1 ^ a1) < 8 || v3 < v6;
  return (*(v4 + 8 * (((2 * v8) | (8 * v8)) ^ v5)))();
}

void sub_1963B4C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, _DWORD *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, int a45, int a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t *a51)
{
  v52 = *a51;
  v53 = ((a46 ^ 0x3F22A375) - 278266784) ^ a46 ^ ((a46 ^ 0xA88063A7) + 2026585230) ^ ((a46 ^ 0x6F6B9FDC) - 1088372489) ^ ((a46 ^ 0xD77DFFDB) + 121020658);
  v54 = ((2 * *a40) & 0xF7FCFB9E) + ((v51 + 3488) ^ *a40 ^ 0xFBFE6DCC) + 67207729;
  *(*a51 + v54) = HIBYTE(v53) ^ 0x2F;
  *(v52 + v54 + 1) = BYTE2(v53) ^ 0xB4;
  *(v52 + v54 + 2) = ((((a46 ^ 0xA375) - 928) ^ a46 ^ ((a46 ^ 0x63A7) + 15502) ^ ((a46 ^ 0x9FDC) - 16137) ^ ((a46 ^ 0xFFDB) - 24334)) >> 8) ^ 0xA0;
  *(v52 + v54 + 3) = ((a46 ^ 0x75) + 96) ^ a46 ^ ((a46 ^ 0xA7) - 114) ^ ((a46 ^ 0xDC) - 9) ^ ((a46 ^ 0xDB) - 14) ^ 0xD5;
  *a40 += 4;
  JUMPOUT(0x196354D14);
}

uint64_t sub_1963B4E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = v11 + 11;
  v16 = (*(v14 + 8 * (v15 + 3003)))(a11, a10);
  *v12 = v16;
  return (*(v14 + 8 * (((v16 == 0) * ((v15 + 1042202818) ^ (v13 + 899) ^ (3 * (v15 ^ 0xC6F)))) ^ v15)))();
}

void sub_1963B4F60(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 24) ^ (912648571 * ((-2 - ((~a1 | 0x8CD022AE) + (a1 | 0x732FDD51))) ^ 0x501D6E9B));
  v3[0] = v1 - 891395573 * ((v3 - 1155932725 - 2 * (v3 & 0xBB19DDCB)) ^ 0x8134C270) - 1517;
  v2 = (&off_1F0B1A0C0)[v1 - 5788] - 8;
  (*&v2[8 * (v1 ^ 0xED7)])(v3);
  __asm { BRAA            X8, X17 }
}

void sub_1963B544C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, char a29)
{
  (*(v32 + 8 * (v31 ^ 0x10C6u)))(v29);
  v35 = *v30;
  v36 = *v33;
  v37 = *(v33 + 3) + 599664785 - ((2 * *(v33 + 3)) & 0x477C5122);
  v38 = 1311869473 * ((((v34 - 144) | 0x3B61F162) - (v34 - 144) + ((v34 - 144) & 0xC49E0E98)) ^ 0xD08EEBCE);
  *(v34 - 120) = &a29;
  *(v34 - 144) = v37 ^ v38;
  *(v34 - 112) = v38 + v31 + 3322;
  *(v34 - 104) = v31 + 2826 - v38 + 622816387 * v35 + 563292047;
  *(v34 - 136) = v36;
  *(v34 - 128) = v34 - 152;
  (*(v32 + 8 * (v31 ^ 0x10FEu)))(v34 - 144);
  (*(v32 + 8 * (v31 | 0x10C0u)))(v29);
  JUMPOUT(0x196399558);
}

uint64_t sub_1963B554C@<X0>(uint64_t a1@<X8>)
{
  v5 = (v1 + v2 - 16);
  v7 = *(v5 - 1);
  v6 = *v5;
  v8 = (a1 + v2 - 16);
  *(v8 - 1) = v7;
  *v8 = v6;
  return (*(v4 + 8 * ((3358 * (v3 - 2201 - (v2 & 0xFFFFFFE0) == 3205)) ^ v3)))();
}

uint64_t sub_1963B55A4()
{
  *(v1 + 8) = 4096;
  *v2 = v1;
  return v0();
}

uint64_t sub_1963B55D0()
{
  v3 = (*(v1 + 12) ^ 0x7F6EAB3D9D7EFF92) + ((*(v1 + 12) << ((v0 - 45) ^ 0x58)) & 0x13AFDFF24) - 0x7F6EAB3CC8FB04C3;
  v5 = v3 < ((92 * (v0 ^ 0x990)) ^ 0xD483FD23uLL) || v3 > *(v1 + 8) + 3565419211u;
  return (*(v2 + 8 * ((23 * v5) ^ v0)))();
}

uint64_t sub_1963B56AC@<X0>(int a1@<W4>, uint64_t a2@<X8>)
{
  v6 = v2 + (v3 + 441) - 1565;
  *(v4 + v6) = *(a2 + v6);
  return (*(v5 + 8 * (((v6 == 0) * a1) ^ v3)))();
}

uint64_t sub_1963B56D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32)
{
  v35 = *(v34 - 152);
  *(v34 - 160) = 0;
  a32 = 0;
  v36 = (&off_1F0B1A0C0)[v32 ^ 0x4E7] - 8;
  (*(v33 + 8 * (v32 ^ 0x1D79)))(v36);
  v37 = *(&off_1F0B1A0C0)[v32 ^ 0x482];
  v38 = *(v35 + 12) + 599664785 - ((*(v35 + 12) << (v32 + 76)) & 0x477C5122);
  v39 = 1311869473 * ((((v34 - 144) | 0xA96E27D7) - (v34 - 144) + ((v34 - 144) & 0x5691D828)) ^ 0x42813D7B);
  *(v34 - 136) = *v35;
  *(v34 - 128) = v34 - 160;
  *(v34 - 120) = &a32;
  *(v34 - 144) = v38 ^ v39;
  *(v34 - 104) = 563297187 - v39 + 622816387 * v37;
  *(v34 - 112) = v39 + v32 + 4431;
  (*(v33 + 8 * (v32 + 5439)))(v34 - 144);
  v40 = *(v34 - 108);
  v41 = (*(v33 + 8 * (v32 + 5397)))(v36);
  return (*(v33 + 8 * ((69 * (v40 != ((v32 + 1547869526) | 0x818C5824) - 1827819692)) ^ v32)))(v41);
}

uint64_t sub_1963B5948(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0x112)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v1 + 17) ^ (v4 == 0)) & 1 | v1)))();
}

uint64_t sub_1963B5ADC@<X0>(uint64_t a1@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7 + v1) = *(v5 + v7);
  return (*(v6 + 8 * (((v7 == (v2 - 1024) - 1983) * v4) ^ v2)))();
}

uint64_t sub_1963B5BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = (*(v12 + 8 * (v14 + 2214)))(a10, v11);
  *v13 = v15;
  return (*(v12 + 8 * (((v15 == 0) * (((v14 - 186654523) & 0x3FFFDFFD) + v10 - 3692)) ^ v14)))();
}

uint64_t sub_1963B5CFC()
{
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  return (*(v1 + 8 * (((v0 - 463482124) * v5) | (v0 - 463475728))))();
}

uint64_t sub_1963B5ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v17 = (*(v15 + 52864))(v16, a13);
  *v14 = v17;
  return (*(v15 + 8 * ((1964 * (v17 == 0)) ^ v13)))();
}

uint64_t sub_1963B6008@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, int a19, int a20, uint64_t a21)
{
  v29 = (v21 + 476);
  v30 = (a1 + v22 + v26);
  v30[4] = v25[7];
  v30[3] = v25[6];
  v30[2] = v25[5];
  v30[1] = v25[4];
  *v30 = v25[3];
  *(v30 - 1) = v25[2];
  *(a1 + (v29 ^ 0xBC02580808C4C72ALL) + v22) = v25[1];
  *v23 = *v25;
  *v24 += 8;
  a21 = 0;
  a20 = 0;
  v31 = (&off_1F0B1A0C0)[(v29 ^ 0x12BF)] - 8;
  (*(v27 + 8 * (v29 ^ 0xB21)))(v31);
  v32 = *(&off_1F0B1A0C0)[(v29 ^ 0x12DA)];
  v33 = *a18;
  v34 = *(a18 + 3) + 599664785 - ((2 * *(a18 + 3)) & 0x477C5122);
  v35 = 1311869473 * ((2 * ((v28 - 144) & 0xE6B5EC8) - (v28 - 144) - 241917642) ^ 0x1A7BBB9A);
  *(v28 - 120) = &a20;
  *(v28 - 144) = v34 ^ v35;
  *(v28 - 112) = v35 + v29 + 791;
  *(v28 - 104) = 563293286 - v35 + 83 * (v29 ^ 0x12C2) + v32 * ((116 * (v29 ^ 0x12CF)) ^ 0x251F63EB);
  *(v28 - 136) = v33;
  *(v28 - 128) = &a21;
  (*(v27 + 8 * (v29 + 1799)))(v28 - 144);
  v36 = *(v28 - 108);
  v37 = (*(v27 + 8 * (v29 + 1757)))(v31);
  return (*(v27 + 8 * ((496 * (v36 == 1893509507)) ^ v29)))(v37);
}

uint64_t sub_1963B6328()
{
  v3 = (*(v1 + 12) ^ 0x7CB77FEFCEBFEBDFLL) + ((2 * *(v1 + 12)) & 0x19D7FD7BELL) - 0x7CB77FEF2B523FF6;
  v5 = v3 > 0xA36DABE4 && v3 <= (v0 ^ 0xB6Bu) + 4320 + *(v1 + 8) + 2741867920u;
  return (*(v2 + 8 * ((46 * v5) ^ v0)))();
}

uint64_t sub_1963B6430@<X0>(unint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v9 = ~v4 + v3;
  v10 = *(a3 + v9 - 15);
  v11 = *(a3 + v9 - 31);
  v12 = v7 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * (((((v5 + 239) ^ a1) + v4 == v6) * a2) ^ v5)))();
}

uint64_t sub_1963B64E8()
{
  v3 = (*(v1 + 12) ^ 0x6DC77E0463FFEDF0) + (((3 * ((v0 + 450) ^ 0x1492u)) ^ 0xC7FFD558) & (2 * *(v1 + 12))) - 0x6DC77E04614E6760;
  v5 = v3 < ((v0 + 450) ^ 0x15B6u) + 45187264 || v3 > *(v1 + 8) + 45188748;
  return (*(v2 + 8 * ((199 * v5) ^ (v0 + 450))))();
}

uint64_t sub_1963B6638()
{
  (*(v3 + 8 * (v2 & 0xF4B1BF5 ^ 0x1A83u)))(v1);
  *v0 = 0;
  return v4(v5, 2147482831, 7480, 825, 867);
}

uint64_t sub_1963B685C()
{
  *(v7 - 144) = v3;
  *(v7 - 136) = (v2 + 1311675682) ^ (1468321087 * ((((2 * v1) | 0x3E0BFF24) - v1 + 1626996846) ^ 0x4BEABEFC));
  (*(v6 + 8 * (v2 + 5567)))(v7 - 144);
  v8 = (*(v6 + 8 * ((v2 + 4188) ^ 0xDC6)))(**(v5 + 8 * ((v2 + 4188) ^ 0x14F7)), *(v5 + 8 * ((v2 + 4188) ^ 0x149F)) - 4, v4);
  v9 = ((v8 << (v2 + 92 - v0 + 86)) & 0xB3CD754E) + (v8 ^ 0x59E6BAA7);
  *(v7 - 144) = v3;
  *(v7 - 136) = (v2 - 50584620) ^ (912648571 * ((~(v1 | 0x6D1CD7CC) + (v1 & 0x6D1CD7CC)) ^ 0x4E2E6406));
  v10 = (*(v6 + 8 * (v2 + 5597)))(v7 - 144);
  return (*(v6 + 8 * (((v9 == 1508293287) * ((v2 + 572706820) & 0xDDDD2FFB ^ 0xFB3)) ^ (v2 + 4188))))(v10);
}

uint64_t sub_1963B6A00()
{
  v5 = v0 ^ (v3 + 1680) ^ ((v2 - 2668) | 0x880u);
  v7 = v1 >= (v2 + 3383) - 6387 && v5 > 7;
  return (*(v4 + 8 * ((54 * v7) ^ v2)))();
}

void sub_1963B6A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, unsigned int a27, uint64_t a28)
{
  *(v29 + 8) = a27;
  *(v29 + 12) = 0;
  (*(v30 + 8 * ((v28 + 1175) ^ 0x1D0C)))(*(&off_1F0B1A0C0)[v28 - 43], a28, a27);
  JUMPOUT(0x1963B6AE0);
}

void sub_1963B6B20(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 52) + 1311869473 * ((a1 & 0x66870629 | ~(a1 | 0x66870629)) ^ 0x7297E37A);
  v3[0] = v1 - 891395573 * ((((v3 | 0x8F4CFB70) ^ 0xFFFFFFFE) - (~v3 | 0x70B3048F)) ^ 0x4A9E1B34) + 353;
  v2 = (&off_1F0B1A0C0)[v1 - 3918] - 8;
  (*&v2[8 * v1 + 20776])(v3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1963B7374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, int a14)
{
  v17 = (v14 ^ 0x7CDB2DF9DAEEFB6FLL) + (((a14 + 2286) ^ 0x1B5DDFF8ELL) & (2 * v14)) - 0x7CDB2DF9D8C4F2F8;
  v19 = v17 < (((a14 + 2286) | 0x228u) ^ 0x22A030BuLL) || v17 > *(v16 + 8) + 36309107;
  return (*(v15 + 8 * ((6601 * v19) ^ a14)))();
}

uint64_t sub_1963B740C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, char a12, uint64_t a13, char a14, uint64_t a15, unsigned int a16, char *a17, unsigned int a18, int *a19, char *a20, uint64_t a21, char a22, int a23)
{
  v27 = 1311869473 * (&a16 ^ 0xEBEF1AAC);
  a18 = 1018148182 - v27;
  a17 = &a12;
  a23 = v25 - v27 + 1519;
  a16 = -50886009 - v27;
  a19 = &a11;
  a20 = &a14;
  a21 = v26;
  a22 = v27 | 1;
  v28 = (*(v24 + 8 * (v25 ^ 0x1024)))(&a16);
  return (*(v24 + 8 * (((a11 == v23 + 8) * (((v25 - 2490) | 0x98A) ^ 0x14D1)) ^ v25)))(v28);
}

void sub_1963B74CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, int a27, char a28)
{
  (*(v32 + 8 * (v29 ^ 0x1F6F)))(v30);
  v34 = *v31;
  v35 = *v28;
  v36 = *(v28 + 3) + ((v29 + 3771) ^ 0x23BE3DCF) - ((2 * *(v28 + 3)) & 0x477C5122);
  v37 = 1311869473 * ((((2 * (v33 - 144)) | 0x4861E324) - (v33 - 144) + 1540296302) ^ 0x4FDFEB3E);
  *(v33 - 120) = &a28;
  *(v33 - 144) = v36 ^ v37;
  *(v33 - 104) = 563297187 - v37 + 622816387 * v34;
  *(v33 - 112) = v37 + v29 + 3937;
  *(v33 - 136) = v35;
  *(v33 - 128) = &a25;
  (*(v32 + 8 * (v29 + 4945)))(v33 - 144);
  (*(v32 + 8 * (v29 ^ 0x1F69)))(v30);
  JUMPOUT(0x1963971E0);
}

uint64_t sub_1963B76E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v37 = *(a34 + 96);
  v38 = *(a34 + 80);
  *(v36 - 200) = 0;
  *(v36 - 156) = 1237465637;
  *(v36 - 180) = 1237465637;
  *(v36 - 188) = 1237465637;
  if (v37)
  {
    v39 = v38 == 0;
  }

  else
  {
    v39 = 1;
  }

  v40 = v39;
  return (*(v35 + 8 * ((v40 * ((v34 + 3318) ^ v34 ^ 0xAF8 ^ 0x1764)) ^ v34)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, v37);
}

uint64_t sub_1963B79D8(uint64_t a1, unint64_t a2)
{
  v8 = (*(v2 + 12) ^ v4) + ((2 * *(v2 + 12)) & 0x1FFBFAD1ALL) - 0x7BFFF6A7D91ABCF4;
  v10 = v8 < a2 + 1364 || v8 > ((v3 + v5) & v6 ^ a2) + *(v2 + 8);
  return (*(v7 + 8 * ((105 * ((v3 ^ v10) & 1)) ^ v3)))();
}

uint64_t sub_1963B7B34()
{
  v5 = (*(v2 + 52864))(v0, v1);
  *v3 = v5;
  return (*(v2 + 8 * ((16 * (v5 == 0)) | ((v5 == 0) << 7) | v4)))();
}

uint64_t sub_1963B7D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t *a14)
{
  v17 = (*(v16 + 52864))(v14, v15);
  *a14 = v17;
  return (*(v16 + 8 * ((8131 * (v17 == 0)) ^ 0x82Du)))();
}

uint64_t sub_1963B7D90@<X0>(uint64_t *a1@<X2>, _DWORD *a2@<X3>, uint64_t (*a3)(void)@<X4>, char a4@<W8>)
{
  v5 = *a1;
  v6 = v4 - ((2 * v4) & 0x75FC608A) + 989737029;
  v7 = ((*a2 << ((a4 ^ 0x42) - 103)) & 0xDD75BF9E) + (*a2 ^ 0xEEBADFCF) + 289742897;
  *(*a1 + v7) = HIBYTE(v6) ^ 0x3A;
  *(v5 + v7 + 1) = BYTE2(v6) ^ 0xFE;
  *(v5 + v7 + 2) = BYTE1(v6) ^ 0x30;
  *(v5 + v7 + 3) = v6 ^ 0x45;
  *a2 += 4;
  return a3();
}

uint64_t sub_1963B7F14()
{
  v5 = (*(v3 + 8 * (v0 ^ 0x1DD9u)))(v2, v4);
  *v1 = v5;
  return (*(v3 + 8 * (((v5 != 0) * (((v0 - 845517842) & 0x1DCC) - 3504)) ^ v0)))();
}

uint64_t sub_1963B7F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = v3 - 1;
  *(a1 + v7) = *(a2 + v7);
  return (*(v6 + 8 * (v5 ^ ((((v7 - a3) | (a3 - v7)) >= 0) * v4))))();
}

uint64_t sub_1963B802C()
{
  v4 = *(v3 - 184);
  *(v3 - 168) = 0;
  *(v3 - 188) = 0;
  v5 = *(v1 + 8 * (v0 - 3248)) - 8;
  (*(v2 + 8 * (v0 + 3274)))(v5);
  v6 = **(v1 + 8 * (v0 ^ 0xD35));
  v7 = *v4;
  v8 = 1311869473 * (((((v3 - 144) | 0x240B862) ^ 0xFFFFFFFE) - (~(v3 - 144) | 0xFDBF479D)) ^ 0x16505D31);
  *(v3 - 144) = (*(v4 + 3) + 599664785 - ((2 * *(v4 + 3)) & 0x477C5122)) ^ v8;
  *(v3 - 136) = v7;
  *(v3 - 128) = v3 - 168;
  *(v3 - 120) = v3 - 188;
  *(v3 - 112) = v8 + v0 + 2306;
  *(v3 - 104) = ((v0 - 2071) ^ 0x21933F48) - v8 + 622816387 * v6;
  (*(v2 + 8 * (v0 + 3314)))(v3 - 144);
  v9 = *(v3 - 108);
  v10 = (*(v2 + 8 * (v0 + 3272)))(v5);
  return (*(v2 + 8 * ((6452 * (v9 == 1893509507)) ^ v0)))(v10);
}

uint64_t sub_1963B816C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = (*(v14 - 156) | ((*(v14 - 156) < 0x49C23A25u) << 32)) + *(v12 + 12) + (((v11 - 2172) | 0x201u) ^ 0x777CD9F0);
  v17 = v15 < 0xC13F059A || v15 > (((v11 - 6330) | 0x1221u) ^ 0xC13F17FDLL) + *(v12 + 8);
  v18 = *(v13 + 8 * ((21 * v17) | v11));
  *(v14 - 208) = v12;
  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_1963B82B8@<X0>(int a1@<W3>, uint64_t a2@<X8>)
{
  v8 = v3 + (v6 + v4 + 3209) - 3476;
  *(a2 + v8 + v2) = *(v5 + v8);
  return (*(v7 + 8 * (((v8 == 0) * a1) ^ (v6 + v4 + 2242))))();
}

uint64_t sub_1963B82F0()
{
  *v0 = 0;
  v0[1] = 0;
  v5 = (*(v2 + 8 * (v3 ^ 0x1284)))(v0);
  return (*(v2 + 8 * ((57 * (v1 >= ((((v3 + 281292080) & 0xEF3BD7FF) - 3122) ^ 0x36F ^ (v4 + 621)))) ^ (v3 + 281292080) & 0xEF3BD7FF)))(v5);
}

void sub_1963B87B4(_DWORD *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1 - 1468321087 * ((a1 & 0xECD4EFF9 | ~(a1 | 0xECD4EFF9)) ^ 0xC7C45168);
  v3 = v1 - 891395573 * (((&v3 | 0x2602FDE) - &v3 + (&v3 & 0xFD9FD020)) ^ 0x384D3065) + 1947;
  v2 = (&off_1F0B1A0C0)[v1 ^ 0x9EC] - 8;
  (*&v2[8 * (v1 | 0x105F)])(&v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1963B898C()
{
  v5 = (*(v4 + 8 * (v0 ^ 0x1ED9)))(v2, v3);
  *v1 = v5;
  return (*(v4 + 8 * ((113 * (((v5 == 0) ^ v0) & 1)) ^ v0)))();
}

uint64_t sub_1963B8A08()
{
  (*(v4 + 8 * (v3 ^ 0x1471u)))(v1);
  *v2 = 0;
  return v0(1779929083, 4294959580);
}

uint64_t sub_1963B8CF4()
{
  v4 = (*(v1 + 12) ^ 0x9FDDAEFFEFFB7ED1) + ((*(v1 + 12) << (((v0 - 96) | 0x15u) - 20)) & 0x1DFF6FDA2) + 0x602251006D2C4AB3;
  v6 = v4 >= (v0 ^ (v3 - 2144)) + 162034590 && v4 <= *(v1 + 8) + 1562888576;
  return (*(v2 + 8 * ((208 * v6) ^ v0)))();
}

uint64_t sub_1963B8DD4@<X0>(int a1@<W1>, uint64_t a2@<X6>, uint64_t a3@<X8>)
{
  v9 = v6 - v7 - 8;
  *(a3 + 0x4114104060060FFALL + v3 + v6 + v4 - v7) = *(a2 + v9);
  return (*(v8 + 8 * ((((((a1 - 38) ^ 0xA85) & v5) != v9) * ((a1 - 38) ^ 0xAA8)) ^ (a1 - 38))))();
}

uint64_t sub_1963B8F6C@<X0>(unsigned int a1@<W2>, int a2@<W3>, uint64_t a3@<X8>)
{
  v7 = v3 - 1;
  *(v5 + v7) = *(a3 + v7);
  return (*(v6 + 8 * (((v7 == (v4 ^ a1) - 1300) * a2) ^ v4)))();
}

uint64_t sub_1963B8F9C()
{
  (*(v2 + 8 * (v0 + 3369)))();
  *v1 = 0;
  return sub_1963B82F0();
}

uint64_t sub_1963B8FC4(uint64_t a1)
{
  v5 = v1 ^ a1;
  v7 = v3 < 0x20 || v5 < (29 * (v2 ^ 0xD8Fu)) - 746;
  return (*(v4 + 8 * ((57 * (((v2 + 14) ^ v7) & 1)) ^ v2)))();
}

uint64_t sub_1963B9014()
{
  if (*v13 >= 0x40)
  {
    v7 = 64;
  }

  else
  {
    v7 = *v13;
  }

  v8 = *v5;
  v9 = *v6;
  v10 = 1311869473 * ((2 * (v15 & 0x8134973E7F1D710) - v15 - 0x8134973E7F1D714) ^ 0x444361D9F3E13240);
  v19 = *v13 ^ v10;
  v16 = v8 ^ v10;
  v17 = v14;
  v15[0] = v2 - v10 + ((v3 + 297355079) ^ 0xA784953F);
  v15[1] = (v3 + 2118006241) ^ v10;
  v18 = v9 + v10;
  v15[2] = v7 - v10;
  (*(v0 + 8 * (v3 ^ 0x105Au)))(v15);
  (*(v0 + 8 * (v3 + 4107)))(v12, v1, 0, *(v4 + 8 * (v3 - 2345)) - 8, v14, 40);
  return (v2 - 1237465637);
}

uint64_t sub_1963B926C@<X0>(int a1@<W8>)
{
  v3 = a1 - 771;
  v4 = a1 - 1262;
  v5 = *(v2 - 160);
  *(v2 - 152) = 0;
  *(v2 - 180) = 0;
  v6 = (&off_1F0B1A0C0)[a1 - 2235] - 8;
  (*(v1 + 8 * (a1 + 4287)))(v6);
  v7 = *(&off_1F0B1A0C0)[v3 - 1491];
  v8 = *v5;
  v9 = 1311869473 * ((v2 - 336535843 - 2 * ((v2 - 144) & 0xEBF0DF6D)) ^ 0x1FC5C1);
  *(v2 - 144) = (*(v5 + 3) + 599664785 - ((2 * *(v5 + 3)) & 0x477C5122)) ^ v9;
  *(v2 - 136) = v8;
  *(v2 - 128) = v2 - 152;
  *(v2 - 120) = v2 - 180;
  *(v2 - 104) = 563297187 - v9 + v7 * (v4 + 622815332);
  *(v2 - 112) = v9 + v3 + 4090;
  (*(v1 + 8 * (v3 + 5098)))(v2 - 144);
  v10 = *(v2 - 108);
  v11 = (*(v1 + 8 * (v3 ^ 0x1FC0)))(v6);
  return (*(v1 + 8 * ((28 * (v10 == 1893509507)) ^ v3)))(v11);
}

void sub_1963B93B4(uint64_t a1@<X8>)
{
  *v1 = *v5;
  v6 = (a1 + v3 + v4);
  *v6 = v5[1];
  v6[1] = v5[2];
  v6[2] = v5[3];
  *(v3 + v4 + ((v2 - 1453828371) & 0x56A7A9FF) + a1 - 2234) = v5[4];
  v6[4] = v5[5];
  v6[5] = v5[6];
  v6[6] = v5[7];
  JUMPOUT(0x196377660);
}

uint64_t sub_1963B9424()
{
  *(v5 - 136) = (v3 + 1311672799) ^ (1468321087 * ((((2 * (v5 - 144)) | 0x983885D4) - (v5 - 144) - 1276920554) ^ 0x98F30384));
  *(v5 - 144) = v0;
  (*(v4 + 8 * (v3 + 2684)))(v5 - 144);
  v6 = (*(v4 + 8 * (v3 ^ 0x16AD)))(**(v2 + 8 * (v3 ^ 0xF9C)), *(v2 + 8 * (v3 ^ 0xFF4)) - 4, v1);
  v7 = ((v6 << (((v3 - 94) & 0x68) - 71)) & 0xDFB7774E) + ((51 * (v3 ^ 0xF62)) ^ 0xEFDBA94A ^ v6);
  *(v5 - 136) = (v3 - 50587503) ^ (912648571 * ((~((v5 - 144) | 0x28EB38D4) + ((v5 - 144) & 0x28EB38D4)) ^ 0xBD98B1E));
  *(v5 - 144) = v0;
  v8 = (*(v4 + 8 * (v3 + 2714)))(v5 - 144);
  return (*(v4 + 8 * ((85 * (v7 != -270812249)) ^ v3)))(v8);
}

uint64_t sub_1963B96D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  v17 = *a6;
  v18 = (*a14 ^ 0xFEFA5F4F) + 17144033 + (((16 * (v14 ^ 0x15C5)) ^ 0xFDF4B94E) & (2 * *a14));
  *(*a6 + v18 + (v14 ^ 0x15C5) + 1875) = 0;
  *(v17 + v18 + 2001) = 0;
  *(v17 + v18 + 2002) = 0;
  *(v17 + v18 + 2003) = 8;
  v19 = (*a14 + 4);
  *a14 = v19;
  v20 = v16 > *a6 - 0x75DEBFDD57FF3EBELL + ((2 * v19) & 0xAFFE7D7ELL) + (v19 ^ 0x75DEBFDD57FF3EBFuLL) - 1;
  return (*(v15 + 8 * ((2 * v20) | (4 * v20) | v14)))(a14, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
}

void sub_1963B9D08(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 12) - 1864678469 * ((((2 * a1) | 0x1DB5479C) - a1 - 249209806) ^ 0x3DAAB427);
  v3[0] = v1 - 891395573 * (((v3 | 0x73BA51D2) - (v3 & 0x73BA51D2)) ^ 0x49974E69) + 1443;
  v2 = (&off_1F0B1A0C0)[v1 ^ 0xB14] - 8;
  (*&v2[8 * v1 + 29496])(v3);
  __asm { BRAA            X9, X17 }
}

void sub_1963B9F10()
{
  v2 = *(v0 + 24);
  **(v0 + 16) = v3;
  *v2 = v4;
  *(v0 + 36) = v1 + 1510;
}

uint64_t sub_1963BA134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 - 7 + ~v3 + v2) = *(a2 - 7 + ~v3 + v2);
  v6 = ((v4 - 971) ^ 0x9F6) + v3 == (v2 & 0xFFFFFFF8);
  return (*(v5 + 8 * ((v6 | (2 * v6)) ^ v4)))();
}

uint64_t sub_1963BA180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, uint64_t a17, _DWORD *a18)
{
  v20 = *v19;
  v21 = ((2 * *a18) & 0xFFFEFEDE) + (*a18 ^ 0xFFFF7F6F);
  v22 = a16 - ((((a9 + 901547657) & 0xCA4374D7) + 1979472825) & (2 * a16)) + 989737029;
  *(*v19 + v21 + 32913) = HIBYTE(v22) ^ 0x3A;
  *(v20 + v21 + 32914) = BYTE2(v22) ^ 0xFE;
  *(v20 + v21 + 32915) = BYTE1(v22) ^ 0x30;
  *(v20 + v21 + 32916) = v22 ^ 0x45;
  *a18 += 4;
  return v18(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13);
}

uint64_t sub_1963BA250(uint64_t a1)
{
  (*(v1 + 8 * (v3 ^ 0x12CF)))();
  v5 = (*(v1 + 8 * (v3 + 4395)))(a1);
  return (*(v1 + 8 * ((1219 * (v2 - 1765493338 + 1229 * (v3 ^ 0x8C4u) < v3 - 2244)) ^ v3)))(v5);
}

uint64_t sub_1963BA2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, uint64_t *a16)
{
  a15 = v21 + 1384597421 * ((2 * (&a15 & 0x2D99BD18) - &a15 - 765050138) ^ 0x30A81B9F) - 1501088759;
  a16 = &a9;
  (*(v19 + 8 * (v21 + 3938)))(&a15);
  v22 = (*(v19 + 8 * (v21 ^ 0x132Bu)))(v16, v18, 0, (&off_1F0B1A0C0)[v21 ^ 0xABFu] - 8, &a9, 2);
  *v17 = (&off_1F0B1A0C0)[(v21 - 1977) ^ 0x255] - 12;
  *(v17 + 8) = 128;
  return (*(v19 + 8 * (((*v20 == 0) * ((v21 + 2276) ^ 0x535)) ^ (v21 - 1977))))(v22);
}

uint64_t sub_1963BA3DC@<X0>(int a1@<W8>)
{
  (*(v2 + 8 * (a1 + 5851)))();
  *v1 = 0;
  return sub_196387DA8();
}

uint64_t sub_1963BA51C()
{
  v6 = *v1;
  if (*v1 >= 0x40)
  {
    v7 = 64;
  }

  else
  {
    v7 = *v1;
  }

  v8 = 912648571 * (((v14 | 0x733B055A964C9293) - (v14 | 0x8CC4FAA569B36D6CLL) - 0x733B055A964C9294) ^ 0x339817D24A81DEA6);
  v9 = *v2 ^ v8;
  v15 = *v12 - v8;
  v16 = v9;
  v17 = v13;
  v14[0] = -42847 - v8;
  v14[1] = v7 + v8;
  v14[2] = (v0 - 1476600004) ^ v8;
  v14[3] = v6 - v8;
  (*(v5 + 8 * (v0 ^ 0x1721)))(v14);
  (*(v5 + 8 * (v0 ^ 0x1778)))(v11, v3, 0, *(v4 + 8 * (v0 ^ 0xE07)) - 12, v13, 40);
  return 4294924449;
}

uint64_t sub_1963BA658()
{
  v5 = (*(v4 + 8 * (v2 ^ 0x113A)))(v1);
  *v3 = 0;
  return v0(v5, 1840, 4294962917);
}

uint64_t sub_1963BA838()
{
  v5 = v1 ^ v0;
  v7 = v2 < 0x20 || v5 < 8;
  return (*(v4 + 8 * (((((v3 + 392) | 1) - 3373) * v7) | v3)))();
}

uint64_t sub_1963BA940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *(a1 + v4 + v3) = *(a3 + v4);
  v8 = ((v4 + (v6 + 1401) - 2316) ^ v5) != a2;
  return (*(v7 + 8 * (v8 | (2 * v8) | v6)))();
}

uint64_t sub_1963BA97C@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v4 = 2024068013 - 566710099 * (&v4 ^ 0x8C45588C);
  (*(v2 + 52976))(&v4);
  return (v1 - 1237465637);
}

void sub_1963BAAB8(uint64_t a1@<X8>)
{
  *v2 = *v4;
  v6 = (a1 + v1 + v5);
  *(v6 - 2) = v4[1];
  *(a1 + v1 - 0x43FDA7F7F73B3D25 + (v3 ^ 0x1AD8u)) = v4[2];
  *v6 = v4[3];
  v6[1] = v4[4];
  v6[2] = v4[5];
  v6[3] = v4[6];
  v6[4] = v4[7];
  JUMPOUT(0x1963BAB20);
}

uint64_t sub_1963BAD58@<X0>(uint64_t a1@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * (((v6 != 0) * v4) | v2)))();
}

void sub_1963BAE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, int a19)
{
  v22 = (*(v21 + 8 * ((v20 + 3899) ^ 0xC45)))(v19, @"gaX8gT7e");
  (*(v21 + 8 * ((v20 + 3899) ^ 0xC3E)))(v22, 3, &a19);
  JUMPOUT(0x19637927CLL);
}

uint64_t sub_1963BAF54()
{
  v5 = *v9;
  v6 = 652747349 * ((((2 * (v4 - 144)) | 0x7793CD3A) - (v4 - 144) + 1144396131) ^ 0xF93AD808);
  *(v4 - 128) = v10;
  *(v4 - 144) = v0 - v6 - 138266697;
  *(v4 - 140) = v1 ^ v6;
  *(v4 - 136) = v5 - v6;
  (*(v3 + 8 * (v0 + 4067)))(v4 - 144);
  (*(v3 + 8 * (v0 + 4001)))(v8, v2, 0, (&off_1F0B1A0C0)[v0 ^ 0xA4E] - 4, v10, 14);
  return v1;
}

uint64_t sub_1963BB2A8@<X0>(int a1@<W8>)
{
  v5 = v1 - a1;
  *(v2 + 8) = *(v4 - 188);
  *(v2 + 12) = 0;
  (*(v3 + 8 * (v5 + 3397)))(*(&off_1F0B1A0C0)[v5 ^ 0xC97], *(v4 - 168), *(v4 - 188));
  return (*(v3 + 8 * ((((v5 - 2686) | 0x20) + 5737) ^ (v5 - 3134))))(1237465637);
}

uint64_t sub_1963BB360@<X0>(unint64_t a1@<X4>, int a2@<W5>, uint64_t a3@<X8>)
{
  v7 = ((v4 - 1071806960) & 0xD31AAD9D ^ a1) + v3;
  *(v5 + v7) = *(a3 + v7);
  return (*(v6 + 8 * (((v7 == 0) * a2) ^ (v4 - 1825032914))))();
}

uint64_t sub_1963BB474()
{
  v3 = (*(v1 + 12) ^ 0x2FD33B57FFDBEF79) + ((2 * *(v1 + 12)) & 0x1FFB7DEF2) - 0x2FD33B575F56C432;
  v5 = v3 >= ((v0 - 1540) | 0x440u) + 2693080319u && v3 <= *(v1 + 8) + 2693081923u;
  return (*(v2 + 8 * ((26 * v5) ^ v0)))();
}

uint64_t sub_1963BB708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, int a21, char a22)
{
  v28 = (v25 - 208) | 2;
  (*(v23 + 8 * (v25 ^ 0x1A35)))(v22);
  v29 = *v26;
  v30 = 1311869473 * ((~((v27 - 144) | 0x557EBF7A) + ((v27 - 144) & 0x557EBF7A)) ^ 0x416E5A29);
  v31 = 563296376 - v30 + v28 + 622816387 * *v24;
  *(v27 - 144) = (*(v26 + 3) + 599664785 - ((2 * *(v26 + 3)) & 0x477C5122)) ^ v30;
  *(v27 - 136) = v29;
  *(v27 - 128) = &a19;
  *(v27 - 120) = &a22;
  *(v27 - 104) = v31;
  *(v27 - 112) = v30 + v25 + 4619;
  (*(v23 + 8 * (v25 ^ 0x1A0D)))(v27 - 144);
  v32 = *(v27 - 108);
  v33 = (*(v23 + 8 * (v25 + 5585)))(v22);
  return (*(v23 + 8 * ((5336 * (v32 == (((v28 - 491) | 0x19) ^ 0x60DCA8D9))) ^ v28)))(v33);
}

uint64_t sub_1963BB870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = (v6 ^ 0xF733F36BB8EDFFFELL) + ((v6 << ((v5 - a5) ^ 0xC8u)) & 0x171DBFFFCLL) + 0x8CC0C951D71354DLL;
  v10 = v8 < 0xD65F3547 || v8 > *(a4 + 8) + 3596563783u;
  return (*(v7 + 8 * ((787 * v10) ^ v5)))();
}

uint64_t sub_1963BB940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v14 = (*(v13 + 8 * (v11 + 1171)))((v12 - 1237465637), 3886098504);
  *a11 = v14;
  return (*(v13 + 8 * (((v14 != 0) * (((v11 + 61) ^ 0x10E7) - 1328)) ^ v11)))();
}

void sub_1963BB9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  (*(v14 + 8 * (v15 ^ 0x1284)))(va, 0, 192);
  JUMPOUT(0x1963BBA78);
}

void Qhl17oSYJtCJIxM()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * (qword_1EAF167F8 ^ 0x30 ^ dword_1EAF16720)) - 8) ^ 0xCAu) - 8) ^ (91 * (qword_1EAF167F8 ^ 0x30 ^ dword_1EAF16720))) - 84];
  v1 = *(v0 - 4) - qword_1EAF167F8 - &v4;
  v2 = 636859739 * (v1 + 0x1D38D65F7E9650D0);
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_1EAF167F8 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1963BBC3C()
{
  result = v0(*v1);
  *(v1 + 8) = result + v2 - ((2 * result) & 0x6C738F86);
  return result;
}

uint64_t sub_1963BBCD4@<X0>(uint64_t a1@<X8>)
{
  v5 = (v3 + v1 - 16);
  v6 = *(a1 + v1 - 16);
  *(v5 - 1) = *(a1 + v1 - 32);
  *v5 = v6;
  return (*(v4 + 8 * ((((v1 & 0xFFFFFFE0) == 32) * (v2 - 4182)) ^ v2)))();
}

uint64_t sub_1963BBE2C()
{
  v3 = ((2 * *(v1 + 12)) & 0x17FCB7FBCLL) + ((67 * (v0 ^ 0x1602) + ((v0 - 5659) | 0x1210) - 0x650323401A6BDDLL) ^ *(v1 + 12)) + 0x650324199223E9;
  v5 = v3 >= 0xD977E3C3 && v3 <= *(v1 + 8) + 3648512963u;
  return (*(v2 + 8 * ((194 * v5) ^ v0)))();
}

uint64_t sub_1963BBEC8(unsigned int a1, int a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v12 = (*(v8 + 12) ^ a3) + ((((a8 ^ a1) * a2) ^ a4) & (2 * *(v8 + 12))) + a5;
  v14 = v12 >= 0x437F676A && v12 <= *(v8 + 8) + 1132423018;
  return (*(v10 + 8 * ((v14 * (((a8 ^ a1) - v11 + 2490) ^ v9)) ^ a8)))();
}

void qtZa1uk5tFOQ7T()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = off_1F0B1A660 - 8;
  v1 = off_1F0B1A1D8 - 8;
  v2 = (&off_1F0B1A0C0)[(*(off_1F0B1A1D8 + (*(off_1F0B1A660 + (91 * ((dword_1EAF16720 + qword_1EAF16810) ^ 0x30)) - 8) ^ 0xCAu) - 8) ^ (91 * ((dword_1EAF16720 + qword_1EAF16810) ^ 0x30))) - 84];
  v3 = (*(v2 - 4) + qword_1EAF16810) ^ &v6;
  v4 = (636859739 * v3) ^ 0xE2C729A08169AF30;
  v5 = 636859739 * (v3 ^ 0xE2C729A08169AF30);
  qword_1EAF16810 = v4;
  *(v2 - 4) = v5;
  __asm { BRAA            X8, X17 }
}

void sub_1963BC1EC(int a1@<W8>, uint64_t a2, uint64_t a3, void *a4)
{
  *a4 = ((a1 - 2498) ^ 0xB63DC513) + *(v4 - 184);
  *(v4 - 196) = 1237465637;
  JUMPOUT(0x196379CE4);
}

uint64_t sub_1963BC250()
{
  v2 = *(v1 - 196) > 2u;
  v3 = *(v1 - 216);
  **(v1 - 208) = (*(v1 - 188) - 1237465637);
  return (*(v0 + 8 * (((((v3 + 53) ^ 0x8ED) + 188) * v2) ^ v3)))();
}

uint64_t sub_1963BC318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  *(v33 - 136) = (v32 + 1311675645) ^ (1468321087 * (((v29 | 0xB64244EA) - (v29 & 0xB64244EA)) ^ 0x62AD0584));
  *(v33 - 144) = v28;
  (*(v30 + 8 * (v32 ^ 0x1DA6)))(v33 - 144);
  v34 = (*(v30 + 8 * (v32 + 5489)))(**(v31 + 8 * (v32 - 894)), *(v31 + 8 * (v32 - 854)) - 4, a28);
  v35 = ((((8 * v32) ^ 0x26D8) - 1148880470) & (2 * v34)) + (v32 ^ 0x5DC2BBFA ^ v34);
  *(v33 - 144) = v28;
  *(v33 - 136) = (v32 - 50584657) ^ (912648571 * ((v29 - 698429364 - 2 * (v29 & 0xD65ED04C)) ^ 0xA939C79));
  v36 = (*(v30 + 8 * (v32 ^ 0x1DC8)))(v33 - 144);
  return (*(v30 + 8 * ((5763 * (v35 == 1573044197)) ^ v32)))(v36);
}

uint64_t sub_1963BC478@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v12 = a1 ^ 0xA23D0DED;
  v13 = 1311869473 * ((((v11 - 120) | 0xA674AA20) - (v11 - 120) + ((v11 - 120) & 0x598B55D8)) ^ 0x4D9BB08C);
  *(v11 - 120) = v13 + a1 + 1573065318;
  *(v11 - 112) = &a9;
  *(v11 - 104) = 1135654977 - v13;
  (*(v9 + 8 * (a1 ^ 0xA23D1CAA)))(v11 - 120);
  return (*(v9 + 8 * (((*(v11 - 116) == -1237727293) * ((v12 ^ (v10 - 1892)) + 638982059)) ^ v12)))(0xFE539749512D18E4);
}

uint64_t sub_1963BC7A8@<X0>(uint64_t a1@<X8>)
{
  *(v5 + v1 - 8 - v2) = *(a1 + v1 - 8 - v2);
  v6 = (v3 - 2166) - (v1 & 0xFFFFFFF8) - 3447 != -v2;
  return (*(v4 + 8 * (((2 * v6) | (4 * v6)) ^ (v3 - 2))))();
}

uint64_t sub_1963BCA64@<X0>(uint64_t a1@<X8>)
{
  v9 = ~v4 + v2;
  v10 = *(v1 + v9 - 15);
  v11 = *(v1 + v9 - 31);
  v12 = a1 + v9;
  *(v12 - 15) = v10;
  *(v12 - 31) = v11;
  return (*(v8 + 8 * (((v6 + v4 == v3) * v7) ^ v5)))();
}

uint64_t sub_1963BCBC4()
{
  v4 = (*(v1 + 12) ^ 0xAF685A7F7EBECDF3) + ((2 * *(v1 + 12)) & 0xFD7D9BE6) + 0x5097A5816D1ADE7ELL;
  v6 = v4 < ((v0 - 1021) ^ (v3 + 66)) || v4 > *(v1 + 8) + v3;
  return (*(v2 + 8 * ((105 * v6) ^ v0)))();
}

uint64_t sub_1963BCCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  v34 = 201 * (v27 ^ 0x898);
  v35 = 912648571 * ((((v33 - 144) | 0xFD5856838CC4242ALL) - ((v33 - 144) | 0x2A7A97C733BDBD5) + 0x2A7A97C733BDBD5) ^ 0xBDFB440B5009681FLL);
  *(v33 - 136) = (v27 - 715637840) ^ v35;
  *(v33 - 144) = v31 - v35;
  *(v33 - 128) = &a27;
  (*(v32 + 8 * (v27 + 4396)))(v33 - 144);
  (*(v32 + 8 * (v27 + 4383)))(v28, v30, 0, *(v29 + 8 * (v27 - 2129)) - 12, &a27, 12);
  *(v33 - 144) = v34 - 891395573 * (((v33 - 144) & 0xF1F6F75F | ~((v33 - 144) | 0xF1F6F75F)) ^ 0x3424171B) + 962;
  v36 = (*(v32 + 8 * (v34 ^ 0x1486u)))(v33 - 144);
  return (*(v32 + 8 * (v34 | (2 * (*(v33 - 140) != ((13 * (((v34 - 2736) | 0x812) ^ 0xA99)) ^ 0x455A9543))))))(v36);
}

uint64_t sub_1963BCFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t a20, char *a21)
{
  v27 = (v21 - 2122) | 0x418;
  v28 = 583883621 * (&a19 ^ 0xFBAB76BAA133DCAFLL);
  a20 = v28 ^ a11;
  a21 = &a13;
  LODWORD(a19) = (v21 + 273735147) ^ v28;
  HIDWORD(a19) = v22 - v28;
  (*(v25 + 8 * (v21 + 4060)))(&a19);
  (*(v25 + 8 * (v21 ^ 0x13B9u)))(a10, v23, 0, *(v24 + 8 * (v21 ^ 0xAB3u)) - 8, &a13, 18);
  v29 = 566710099 * (&a19 ^ 0x8C45588C);
  LODWORD(a20) = v29 + v27 - 1056168480;
  LODWORD(a21) = (v22 ^ 0xFF5D7B4F) - v29 + (((v27 + 19) ^ 0xFEBAF36C) & (2 * v22)) + 669972223;
  a19 = a11;
  v30 = (*(v25 + 8 * (v27 ^ 0x1FD9)))(&a19);
  return (*(v25 + 8 * ((4856 * (*v26 == 0)) ^ v27)))(v30);
}

uint64_t sub_1963BD140@<X0>(uint64_t a1@<X8>)
{
  v6 = v2 - 1;
  *(a1 + v6) = *(v1 + v6);
  return (*(v4 + 8 * (((v6 == 0) * ((v3 ^ 0x3E1EC332) + 3920)) ^ (v5 + v3 + 3021))))();
}

uint64_t sub_1963BD180@<X0>(uint64_t a1@<X8>)
{
  v5 = v2 - 1;
  *(a1 + v5) = *(v1 + v5);
  return (*(v4 + 8 * ((2697 * (((v3 + 1) ^ (((v5 - (v3 - 2936)) | ((v3 - 2936) - v5)) < 0)) & 1)) ^ (v3 - 2250))))();
}

uint64_t sub_1963BD254@<X0>(int a1@<W8>)
{
  v6 = v3 - 1531319354 + (v4 + a1);
  *(v1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * ((60 * (v6 == 0)) ^ (v4 - 134))))();
}

uint64_t sub_1963BD290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, unsigned int a42)
{
  v45 = (a42 | ((a42 < ((v42 - 3203) | 0x415u) + 1237464590) << 32)) + *(v43 + 12) - 760708601;
  v47 = v45 < 0x1C6ABC2C || v45 > (v42 - 1397) + *(v43 + 8) + 476755228;
  HIDWORD(a16) = 1237422987;
  return (*(v44 + 8 * (((16 * v47) | (32 * v47)) ^ v42)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1963BD328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, int a27, uint64_t *a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v35 = a28;
  a31 = 0;
  a27 = 0;
  v36 = (&off_1F0B1A0C0)[v32 - 3180] - 8;
  (*(v33 + 8 * (v32 ^ 0x1572)))(v36);
  v37 = *v35;
  v38 = *(v35 + 3) + 599664785 - ((2 * *(v35 + 3)) & 0x477C5122);
  v39 = 1311869473 * (((v31 | 0x20E18727) + (~v31 | 0xDF1E78D8)) ^ 0xCB0E9D8A);
  *(v34 - 112) = 563297187 - v39 + *(&off_1F0B1A0C0)[v32 ^ 0xC89] * ((v32 - 275928271) & 0x10724B5F ^ 0x251F6FCC);
  v40 = (v34 - 152);
  v40[1] = v37;
  v40[2] = &a31;
  *(v34 - 120) = v39 + v32 + 2374;
  *(v34 - 152) = v38 ^ v39;
  v40[3] = &a27;
  (*(v33 + 8 * (v32 + 3382)))(v34 - 152);
  v41 = *(v34 - 116);
  v42 = (*(v33 + 8 * (v32 + 3340)))(v36);
  return (*(v33 + 8 * ((116 * (v41 == 1893509507)) ^ v32)))(v42);
}

uint64_t sub_1963BD488@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v7 = (v3 ^ a1) + v4;
  *(v6 + v7) = *(a2 + v7);
  return (*(v5 + 8 * (((v7 != 0) | (32 * (v7 != 0))) ^ v2)))();
}

uint64_t sub_1963BD53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, int a25, char a26)
{
  (*(v28 + 8 * (v29 ^ 0x177Bu)))(v27);
  v32 = *v30;
  v33 = *(v30 + 3) + 599664785 - ((*(v30 + 3) << (v29 + 74)) & 0x477C5122);
  v34 = 1311869473 * ((v31 - 144) ^ 0xEBEF1AAC);
  *(v31 - 104) = 563297187 - v34 + 622816387 * *v26;
  *(v31 - 112) = v34 + v29 + 1869;
  *(v31 - 144) = v33 ^ v34;
  *(v31 - 120) = &a24;
  *(v31 - 136) = v32;
  *(v31 - 128) = &a26;
  (*(v28 + 8 * (v29 + 2877)))(v31 - 144);
  v35 = *(v31 - 108);
  v36 = (*(v28 + 8 * (v29 ^ 0x177Du)))(v27);
  return (*(v28 + 8 * (((((v29 + 2443) | 0x121) ^ ((v29 - 3623) | 0x160) ^ 0x13D6) * (v35 == 1625074048)) ^ (v29 - 1747))))(v36);
}

uint64_t sub_1963BD780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned int a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v28 = v21 & 0x17FF;
  v29 = (v28 + 810143137) & 0x24F7;
  if (a17 >= 0x40)
  {
    v30 = 64;
  }

  else
  {
    v30 = a17;
  }

  if (a14 >= 0x40)
  {
    v31 = 64;
  }

  else
  {
    v31 = a14;
  }

  v32 = 1427277979 * ((~(v27 - 160) & 0x5EF59D246ECB14DDLL | (v27 - 160) & 0xA10A62DB9134EB22) ^ 0x789F5A923E9A59B5);
  *(v27 - 120) = v32 + v30;
  *(v27 - 128) = v32 ^ a17;
  *(v27 - 124) = (v28 + 417137397) ^ v32;
  v24[6] = v27 - 224;
  *(v27 - 160) = v32 ^ a14;
  *(v27 - 156) = v32 + v31;
  v24[1] = v32 + a20;
  v24[2] = a18 - v32;
  v24[3] = v25 - v32;
  (*(v20 + 8 * (v28 + 2037)))(v27 - 160);
  (*(v20 + 8 * (v28 + 1978)))(v23, v26, 0, *(v22 + 8 * (v28 - 4501)) - 8, v27 - 224, 56);
  *(v27 - 160) = v29 - 891395573 * ((2 * ((v27 - 160) & 0x7E972230) - (v27 - 160) - 2123833912) ^ 0xBB45C273) + 3220;
  v33 = (*(v20 + 8 * (v29 ^ 0x1D58u)))(v27 - 160);
  return (*(v20 + 8 * (v29 ^ (8 * (*(v27 - 156) != 1163564281)))))(v33);
}

uint64_t sub_1963BDA94@<X0>(uint64_t a1@<X8>)
{
  v5 = ((2 * v3) & 0xFFB3A27E) + (v3 ^ 0x7FD9D13F);
  v6 = (*(*a1 + ((v4 + 587471038) & 0xDCFBF7DD ^ 0x80263D84) + v5) << 24) | (*(*a1 + v5 - 2144981310) << 16) | (*(*a1 + v5 - 2144981309) << 8) | *(*a1 + v5 - 2144981308);
  *v1 = (v6 ^ 0xDDEFFB67) + 1808940734 + ((2 * v6) & 0xBBDFF6CE);
  *(a1 + 12) = v3 + 4;
  return v2();
}

uint64_t sub_1963BDB5C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v8 = (a1 - 1774984834) & 0x69CC1E7C;
  v9 = a2 - 0x1B5E7F51CFFF3EE5 + v3 + v4 - v5;
  *(v9 + v2) = *(v7 - v5 - 8 + v2);
  return (*(v6 + 8 * (((v5 - (v2 & 0xFFFFFFF8) != -8) * (((v8 - 1116) | 0x40) ^ 0x124D)) ^ v8)))(v9 - 8, v5 - (v2 & 0xFFFFFFF8) + 16);
}

uint64_t sub_1963BE048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, unsigned int a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 + 8) = a27;
  *(v32 + 12) = 0;
  v34 = (v31 - 4206062) & 0x3E5EEEDF;
  (*(v33 + 8 * (v31 + 3064)))(*(&off_1F0B1A0C0)[v31 - 3542], a31, a27);
  return (*(v33 + 8 * ((v34 - 1042206383) ^ 0x1474)))(1042206423);
}

void sub_1963BE108(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 12) + 652747349 * ((a1 - 2 * (a1 & 0x6AEF4D44) + 1794067780) ^ 0x281C73D1);
  v3[0] = v1 - 891395573 * ((v3 & 0x8FC03611 | ~(v3 | 0x8FC03611)) ^ 0x4A12D655) - 2120;
  v2 = (&off_1F0B1A0C0)[v1 ^ 0x190F] - 8;
  (*&v2[8 * (v1 ^ 0xBC)])(v3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1963BE238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, unint64_t a35, int a36, int a37, uint64_t a38, char *a39, int a40, int a41, int a42, uint64_t a43, uint64_t a44, char a45, int a46, uint64_t a47, uint64_t a48, int a49, uint64_t a50)
{
  v57 = (v51 - 1902460730) & 0x71653B3F;
  if (v56 >= 0x40)
  {
    v58 = 64;
  }

  else
  {
    v58 = v56;
  }

  if (v53 >= 0x40)
  {
    v59 = 64;
  }

  else
  {
    v59 = v53;
  }

  v60 = 652747349 * ((~&a35 & 0xEB3BC55947F1DF4 | &a35 & 0xF14C43AA6B80E20BLL) ^ 0x540517A9D68C2361);
  a35 = v60 ^ a18;
  a42 = v60 ^ v58;
  a43 = v60 + v50;
  a44 = v60 ^ a15;
  a36 = v60 + a17;
  a37 = v56 - v60;
  LODWORD(a38) = (v51 - 780420623) ^ v60;
  a40 = v60 + v53;
  a41 = v60 + v59;
  a39 = &a26;
  (*(v52 + 8 * (v51 + 1506)))(&a35);
  (*(v52 + 8 * (v51 + 1411)))(a9, v54, 0, *(v55 + 8 * (v51 ^ 0x14E7)), &a26, 62);
  v61 = 652747349 * (((&a35 | 0x157E857B447F66F1) - (&a35 & 0x157E857B447F66F1)) ^ 0x4FC82E87068C5864);
  a45 = v61 + 84;
  a38 = a13;
  a39 = 0;
  a47 = a14;
  a48 = a12;
  a43 = 0;
  a44 = ((v50 ^ 0x3915BF7FFCB2EBBELL) - 0x30052020F0304B0ALL + (((v57 - 2330) + 0x722B7EFFF965D06BLL) & (2 * v50))) ^ v61;
  a40 = -1998276698 - v61;
  a42 = (v53 ^ 0x34FFFFE1) + ((2 * v53) & 0x69FFFFC2) - v61 - 268501216;
  a46 = v57 - v61 + 1835;
  a35 = a15;
  a49 = (v56 ^ 0x35FFFF77) + ((2 * v56) & 0x6BFFFEEE) - 285278326 + v61;
  a36 = v61 + 1344803742;
  a37 = ((2 * a17) & 0xEBD0BFFE) + (a17 ^ 0x75E85FFF) - v61 + (v57 ^ 0xDA3FA3B4);
  a50 = a18;
  v62 = (*(v52 + 8 * (v57 ^ 0xA3Bu)))(&a35);
  if (a13)
  {
    v63 = a12 == 0;
  }

  else
  {
    v63 = 1;
  }

  v65 = !v63 && a14 != 0;
  return (*(v52 + 8 * (v57 ^ (30 * v65))))(v62);
}

uint64_t sub_1963BE5AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v16 = (*(v9 + 12) ^ v11) + (((((v15 + a7) & a8 ^ v8) * v10) ^ v12) & (2 * *(v9 + 12))) + v13;
  v18 = v16 < 0xDF10701 || v16 > *(v9 + 8) + 233899777;
  return (*(v14 + 8 * ((15 * v18) ^ v15)))();
}

uint64_t sub_1963BE6C8()
{
  v5 = (*(v3 + 52864))(v1, v2);
  *v4 = v5;
  return (*(v3 + 8 * ((120 * (v5 == 0)) ^ v0)))();
}

uint64_t sub_1963BE768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, int *a44)
{
  (*(v47 + 8 * (v46 ^ 0x1693)))(v44);
  v49 = *a44;
  v50 = *v45;
  v51 = 1311869473 * ((((v48 - 144) | 0x55B98677) - ((v48 - 144) & 0x55B98677)) ^ 0xBE569CDB);
  *(v48 - 144) = (*(v45 + 3) - (((v46 + 707) ^ 0x477C4300) & (2 * *(v45 + 3))) + 599664785) ^ v51;
  *(v48 - 112) = v51 + v46 + 1701;
  *(v48 - 104) = 563297187 - v51 + 622816387 * v49;
  *(v48 - 128) = v48 - 176;
  *(v48 - 120) = v48 - 184;
  *(v48 - 136) = v50;
  (*(v47 + 8 * (v46 ^ 0x16AB)))(v48 - 144);
  v52 = *(v48 - 108);
  v53 = (*(v47 + 8 * (v46 + 2667)))(v44);
  return (*(v47 + 8 * ((361 * (v52 == ((v46 - 3423) | 0x42) + 1625073470)) ^ (v46 + 707))))(v53);
}

uint64_t sub_1963BE8A4(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 ^ 0xD10)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * (((v1 - 5342) | 0xAEC) + ((v1 - 2718) | 0xAC) - 5530)) ^ v1)))();
}

uint64_t sub_1963BE960()
{
  *(v1 + 8) = 4096;
  *v2 = v1;
  return v0(1155365296, 7553, 896765210, 3398201341, 3346);
}

uint64_t sub_1963BE9B0()
{
  result = (*(v2 + 8 * (v0 + 5937)))(v5);
  *(v1 + 36) = v3;
  return result;
}

uint64_t sub_1963BEA40@<X0>(_DWORD *a1@<X8>)
{
  v5 = ((2 * v1) & 0x6DF3D7D6) + (v1 ^ 0x36F9EBEB);
  v6 = (*(*v3 + v5 + ((v2 - 1999868192) & 0x77339FD7u) - 922354497) << 24) | (*(*v3 + (v5 - 922348522)) << 16) | (*(*v3 + (v5 - 922348521)) << 8) | *(*v3 + (v5 - 922348520));
  *a1 = (v6 ^ 0xDDEFFB67) + 1808940734 + ((2 * v6) & 0xBBDFF6CE);
  *(v3 + 12) += 4;
  return v4();
}

uint64_t sub_1963BEB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v13 = (*(v11 + 52864))(a11, a10);
  *v12 = v13;
  return (*(v11 + 8 * ((11 * (v13 != 0)) ^ 0xAC2u)))();
}

uint64_t sub_1963BECA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = (*(v11 + 52864))(a10, v10);
  *v12 = v13;
  return (*(v11 + 8 * ((83 * (((v13 == 0) ^ 0xE5) & 1)) ^ 0x7B9u)))();
}

uint64_t sub_1963BEDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = (*(v12 + 52864))(a12, a11);
  *v13 = v14;
  return (*(v12 + 8 * ((58 * (v14 != 0)) ^ 0xE9Au)))();
}

void sub_1963BEE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t *a14)
{
  v18 = (((2 * v15) & 0x6CAD42EE) + (v15 ^ 0xDFEF7F7F3656A177) + v14 + 0x20108080C9A95E89);
  v19 = (*(((2 * v15) & 0x6CAD42EE) + (v15 ^ 0xDFEF7F7F3656A177) + v14 + 0x20108080C9A95E8ALL) << (((v16 - 19) & 0x4Eu) - 20)) | (*v18 << 56) | (v18[2] << 40) | (v18[3] << 32) | (v18[4] << 24) | (v18[5] << 16) | (v18[6] << 8);
  v20 = v18[7] - ((2 * v18[7]) & 0x1A8) + 0x1B1479D21F1EF9D4;
  *a14 = v20 & 0x1F2 ^ 0x4AF9C64E2F3CDFDDLL ^ ((v19 - ((2 * v19) & 0xFFFAD6776E1550FCLL) - 0x294C448F557BALL) ^ 0xB504AD759836764BLL) & (v20 ^ 0xE4EB862DE0E1062BLL);
  *(v17 + 12) += 8;
  JUMPOUT(0x1963BEF8CLL);
}

uint64_t sub_1963BF1A0()
{
  v3 = (*(v1 + 12) ^ 0xDDBDE6CDFFF6DBFBLL) + ((2 * *(v1 + 12)) & 0x1FFEDB7F6) + 0x22421932330BA695;
  v5 = v3 < ((v0 + 1503500610) & 0xA6625DBD ^ 0x33028B81uLL) || v3 > ((v0 - 884331218) & 0x34B5D3FF) + *(v1 + 8) + 855797585;
  return (*(v2 + 8 * ((31 * v5) ^ v0)))();
}

void sub_1963BF254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, int a22, int a23, char a24)
{
  (*(v27 + 8 * (v24 + 4359)))(v26);
  v30 = *v28;
  v31 = *v25;
  v32 = 1311869473 * ((((v29 - 144) ^ 0x704600C3 | 0xE39AC1C) + ((v29 - 144) ^ 0x638881C | 0xF1C653E3)) ^ 0x9D919272);
  *(v29 - 144) = (*(v25 + 3) + 599664785 - ((*(v25 + 3) << ((57 * (v24 ^ 0xF7)) ^ 0x23)) & 0x477C5122)) ^ v32;
  *(v29 - 120) = &a24;
  *(v29 - 104) = 563297187 - v32 + 622816387 * v30;
  *(v29 - 112) = v32 + v24 + 3391;
  *(v29 - 136) = v31;
  *(v29 - 128) = &a21;
  (*(v27 + 8 * (v24 + 4399)))(v29 - 144);
  (*(v27 + 8 * (v24 ^ 0x110F)))(v26);
  JUMPOUT(0x1963BF378);
}

uint64_t sub_1963BF404(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v2 + 8 * (v1 + 592)))(4096, 3886098504);
  *a1 = v4;
  return (*(v2 + 8 * (((v4 == 0) * ((((4 * v1) ^ 0x5630) - 1124134858) & 0x4300EFC8 ^ 0xB31)) ^ v1)))();
}

void sub_1963BF470(uint64_t a1)
{
  v1 = *(a1 + 32) - 1311869473 * (a1 ^ 0xEBEF1AAC);
  v2 = (&off_1F0B1A0C0)[v1 ^ 0x1668] - 8;
  (*&v2[8 * v1 + 7824])();
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1963BF614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, unsigned int a27)
{
  v29 = *(v28 - 168);
  *(v28 - 176) = 0;
  *(v28 - 196) = 0;
  v30 = (&off_1F0B1A0C0)[a27 ^ 0x1063] - 8;
  (*(v27 + 8 * (a27 ^ 0x9FD)))(v30);
  v31 = *(&off_1F0B1A0C0)[a27 ^ 0x1006];
  v32 = *v29;
  v33 = 1311869473 * ((v28 + 1642834800 - 2 * ((v28 - 144) & 0x61EBAC00)) ^ 0x8A04B6AC);
  *(v28 - 144) = (*(v29 + 3) + 599664785 - ((2 * *(v29 + 3)) & 0x477C5122)) ^ v33;
  *(v28 - 120) = v28 - 196;
  *(v28 - 136) = v32;
  *(v28 - 128) = v28 - 176;
  *(v28 - 112) = v33 + a27 + 1491;
  *(v28 - 104) = 563296814 - v33 + 622816387 * v31 + 373;
  (*(v27 + 8 * (a27 ^ 0x9C5)))(v28 - 144);
  v34 = *(v28 - 108);
  v35 = (*(v27 + 8 * (a27 ^ 0x9FB)))(v30);
  return (*(v27 + 8 * ((1081 * (v34 == a27 + 1893505362)) ^ a27)))(v35);
}

void V1ENnlVTqh9Sf()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = off_1F0B1A830;
  v1 = off_1F0B1A3F0 - 12;
  v2 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 + qword_1EAF16518) ^ 0x30))) ^ 0x9Au) - 12) ^ (91 * ((dword_1EAF16720 + qword_1EAF16518) ^ 0x30))) - 65];
  v3 = 636859739 * (&v4[*(v2 - 4) - qword_1EAF16518] ^ 0xE2C729A08169AF30);
  qword_1EAF16518 = v3;
  *(v2 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1963BFAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a1 + a2);
  *v4 = 0u;
  v4[1] = 0u;
  return (*(v2 + 8 * ((58 * (a2 + ((v3 - 906) | 0x2A7u) == 1111)) ^ v3)))();
}

void tx1dvbn5WUg()
{
  v5 = *MEMORY[0x1E69E9840];
  v0 = (&off_1F0B1A0C0)[(*(off_1F0B1A230 + (*(off_1F0B1A108 + (91 * ((dword_1EAF16720 + qword_1EAF16980) ^ 0x30)) - 8) ^ 0xF9u) - 4) ^ (91 * ((dword_1EAF16720 + qword_1EAF16980) ^ 0x30))) + 81];
  v1 = &v4[*(v0 - 4) - qword_1EAF16980];
  v2 = 636859739 * v1 + 0x768A6804525E3610;
  v3 = 636859739 * (v1 ^ 0xE2C729A08169AF30);
  qword_1EAF16980 = v2;
  *(v0 - 4) = v3;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1963BFEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v39 = ((2 * v37) & 0x1FC5DF5F6) + (((v36 ^ 0x252u) - 0x240021B201D1089ALL) ^ v37) + 0x240021B2D75246D7;
  v41 = v39 < 0xD58141CE || v39 > ((v36 + 462) ^ 0xD581425BLL) + *(a36 + 8);
  return (*(v38 + 8 * ((5717 * v41) ^ v36)))();
}

void *sub_1963BFF70(void *result)
{
  v1 = result[2];
  v2 = *result + 912648571 * ((((2 * result) | 0x82BD52FC70D795F6) - result + 0x3EA15681C7943505) ^ 0x81FDBBF6E4A686CELL);
  *v1 = 134217984;
  *(v1 + 4) = v2;
  return result;
}

void NShFxR7kzzF227Pf()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = off_1F0B1A830;
  v1 = off_1F0B1A3F0 - 12;
  v2 = (&off_1F0B1A0C0)[(*(off_1F0B1A3F0 + (*(off_1F0B1A830 + (91 * ((dword_1EAF16720 - qword_1EAF16530) ^ 0x30))) ^ 0x75u) - 12) ^ (91 * ((dword_1EAF16720 - qword_1EAF16530) ^ 0x30))) + 62];
  v3 = qword_1EAF16530 - &v6 + *(v2 - 4);
  v4 = (636859739 * v3) ^ 0xE2C729A08169AF30;
  v5 = 636859739 * (v3 ^ 0xE2C729A08169AF30);
  qword_1EAF16530 = v4;
  *(v2 - 4) = v5;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1963C014C()
{
  v5 = (*(v2 + 8 * (v4 + 2385)))(v0, v1);
  *v3 = v5;
  return (*(v2 + 8 * (((v5 == 0) * ((v4 ^ 0xFE) - 3971)) ^ v4)))();
}

uint64_t sub_1963C02E4(uint64_t result)
{
  v1 = 652747349 * ((((2 * result) | 0xA2DA74B8) - result - 1366112860) ^ 0x139E04C9);
  v2 = *(result + 16);
  v3 = *(result + 4) ^ v1;
  v4 = *(result + 8) + v1;
  *v2 = 67109376;
  *(v2 + 4) = v3;
  *(v2 + 8) = 1024;
  *(v2 + 10) = v4;
  return result;
}

void sub_1963C0384(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 12) ^ (566710099 * ((((2 * a1) | 0xBD128308) - a1 - 1586053508) ^ 0xD2CC1908));
  v3[0] = v1 - 891395573 * (((v3 ^ 0x253ADBF0 | 0x33B5B19B) - ((v3 ^ 0x253ADBF0) & 0x33B5B19B)) ^ 0x2CA275D0) + 140;
  v2 = (&off_1F0B1A0C0)[v1 - 4131] - 8;
  (*&v2[8 * v1 + 19072])(v3);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1963C057C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24, uint64_t a25, uint64_t *a26)
{
  v29 = *a26;
  v30 = a2 + 989737029 - ((2 * a2) & 0x75FC608A);
  v31 = ((*a24 << (111 * (v26 ^ 0xB9) - 76)) & 0xDFFCFBDE) + (*a24 ^ 0x6FFE7DEF) - 1878949359;
  *(*a26 + v31) = HIBYTE(v30) ^ 0x3A;
  *(v29 + v31 + 1) = BYTE2(v30) ^ 0xFE;
  *(v29 + v31 + 2) = BYTE1(v30) ^ 0x30;
  *(v29 + v31 + 3) = v30 ^ 0x45;
  v32 = (*a24 + 4);
  *a24 = v32;
  return (*(v27 + 8 * ((120 * (v28 <= *a26 + ((2 * v32) & 0x1FCFBDFE0) + (v32 ^ 0xBCFCB836FE7DEFF0) + 0x430347C901821010)) ^ v26)))();
}

uint64_t sub_1963C08AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = (*(v13 + 8 * (v12 + 2040)))(a12, a11);
  *v14 = v15;
  return (*(v13 + 8 * (((v15 == 0) * ((v12 + 638846503) & 0xD9EBEC7F ^ (v12 - 3927))) ^ v12)))();
}

uint64_t sub_1963C0A74()
{
  (*(v4 + 8 * (v3 ^ 0x11E9)))(v1);
  *v2 = 0;
  return v0(4463, 22);
}

uint64_t sub_1963C0B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unsigned int a36, char *a37, uint64_t a38, unsigned int a39, char a40, int a41, uint64_t a42)
{
  v49 = v46 - 1535;
  if (v48 >= 0x40)
  {
    v50 = 64;
  }

  else
  {
    v50 = v48;
  }

  if (v47 >= 0x40)
  {
    v51 = 64;
  }

  else
  {
    v51 = v47;
  }

  v52 = 1427277979 * (((&a30 | 0x269E61AEBAE26F25) - &a30 + (&a30 & 0xD9619E51451D90D8)) ^ 0xF4A618EAB3224DLL);
  a37 = &a17;
  a32 = v52 + a14;
  a33 = a13 - v52;
  a34 = a12 - v52;
  a36 = v52 + v50;
  a30 = v52 ^ v47;
  a31 = v52 + v51;
  LODWORD(a35) = v52 ^ v48;
  HIDWORD(a35) = (v46 + 417138479) ^ v52;
  (*(v43 + 8 * (v46 ^ 0x1457u)))(&a30);
  (*(v43 + 8 * (v46 ^ 0x141Cu)))(a9, v44, 0, *(v42 + 8 * (v46 ^ 0xDAFu)), &a17, 56);
  v53 = 566710099 * (&a30 ^ 0x8C45588C);
  a41 = (v47 ^ 0x3FB4F7EA) + v53 - 606093408 + ((v47 << ((((v46 + 1) ^ 0x19) - 71) ^ (11 * ((v46 + 1) ^ 0x19)))) & 0x7F69EFD4);
  a34 = 0;
  a35 = 0;
  a36 = v53 ^ ((v48 ^ 0xFBB4B78E) + 534773756 + ((2 * v48) & 0xF7696F1C));
  a40 = 83 * (&a30 ^ 0x8C) + 113;
  a42 = a11;
  a39 = v53 + v46 + 1163560773;
  a37 = a15;
  a38 = a13;
  a32 = a12;
  a33 = a14;
  v54 = (*(v43 + 8 * (v49 ^ 0x1E64)))(&a30);
  return (*(v43 + 8 * ((2167 * (*v45 == 0)) ^ v49)))(v54);
}

uint64_t sub_1963C0ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char *a20, uint64_t a21, char *a22, unsigned int a23)
{
  v29 = (v24 - 1316880679) & 0x4E7DFDFF;
  v30 = 912648571 * ((((2 * &a20) | 0x15E635AB18A27296) - &a20 - 0xAF31AD58C51394BLL) ^ 0x4A50085D509C757ELL);
  a20 = &v25[-v30];
  LODWORD(a21) = (v24 - 715637973) ^ v30;
  a22 = &a17;
  (*(v28 + 8 * (v24 + 4263)))(&a20);
  (*(v28 + 8 * (v24 + 4250)))(a10, v26, 0, *(v27 + 8 * (v24 - 2175)) - 12, &a17, 12);
  a21 = v23;
  a22 = v25;
  a23 = (v29 + 948) ^ (1466156297 * ((((&a20 | 0x12D2AD00) ^ 0xFFFFFFFE) - (~&a20 | 0xED2D52FF)) ^ 0x3E9AD2AE));
  v31 = (*(v28 + 8 * (v29 + 5149)))(&a20);
  return (*(v28 + 8 * (((v23 != 0) * (((v29 - 1495) ^ 0x9CBA26D) - 164340337)) ^ v29)))(v31);
}

uint64_t sub_1963C10E8(uint64_t *a1)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(v1 + 8 * ((v2 ^ 0x55A) + 2606)))(4096, 3886098504);
  *a1 = v4;
  return (*(v1 + 8 * (((v4 != 0) * ((v2 ^ 0xEAA) + 368 * (v2 ^ 0xAF9) - 2197)) ^ v2 ^ 0x55A)))();
}

uint64_t sub_1963C11A0@<X0>(_DWORD *a1@<X8>)
{
  v5 = (v3 + 1074525325) | 0x13735440;
  v6 = ((2 * v2) & 0xEF33275E) + (v2 ^ 0xF79993AF);
  v7 = (*(*v4 + v6 - 1259923857 + v5) << 24) | (*(*v4 + v6 + 140930130) << 16) | (*(*v4 + v6 + 140930131) << 8) | *(*v4 + v6 + 140930132);
  *a1 = (v7 ^ 0xDDEFFB67) + 1808940734 + ((2 * v7) & 0xBBDFF6CE);
  *(v4 + 12) = v2 + 4;
  return v1();
}

uint64_t sub_1963C14CC(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *a1 ^ (1468321087 * ((a1 + 1856335430 - 2 * (a1 & 0x6EA56E46)) ^ 0xBA4A2F28));
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = 1468321087 * ((~&v7 & 0xAA182DA2 | &v7 & 0x55E7D25D) ^ 0x7EF76CCC);
  v8 = 94 - v5;
  v7 = v2 + v5 - 2057600093;
  v10 = v3;
  v11 = v4;
  result = (*&(&off_1F0B1A0C0)[v2 ^ 0x7AA489AD][8 * (v2 ^ 0x7AA49029) - 8])(&v7);
  *(a1 + 4) = v9 - 1237465637;
  return result;
}

_BYTE *sub_1963C1604(_BYTE *result, unsigned int a2, unint64_t a3)
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

uint64_t FigPlayerStreamCreateWithOptions()
{
  MEMORY[0x19A8D3660](&sFigStreamPlayerInitOnce, fig_player_stream_init_once);
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  FPSupport_CheckPlayerPerformanceTrace();
  FigPlayerGetClassID();
  CMDerivedObjectCreate();
  return FigSignalErrorAtGM();
}

uint64_t fpfs_ValeriaEnabled(uint64_t a1, const void *a2)
{
  result = RaEiDSv6c();
  if (result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    ++*(v5 + 8);
    if (!*(DerivedStorage + 52))
    {
      *(DerivedStorage + 525) = 1;
      fpfs_stopResetDisturbReprepareAndResume(a2, *(DerivedStorage + 80), 0);
    }

    return fpfs_UnlockAndPostNotificationsWithCaller(a2);
  }

  return result;
}

void FigCFRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t fpfs_determineIfNotificationQueueShouldTargetAsyncControlQueueOnce(_BYTE *a1)
{
  v2 = FPSupport_PlayerInternalDispatchQueuesPreferTargetingAsyncControlQueue();
  result = _os_feature_enabled_impl();
  *a1 = (v2 != 0) & result;
  return result;
}

void fpfs_stopResetDisturbReprepareAndResume(const void *a1, const __CFArray *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = DerivedStorage;
    v8 = CMBaseObjectGetDerivedStorage();
    v9 = *(v8 + 1024);
    v10 = *(v7 + 108) == 0.0 || v9 == 0;
    v11 = !v10;
    if (!v10)
    {
      fpfsi_pauseItem(a2);
    }

    if (*(v8 + 912))
    {
      fpfsi_ConfigurePumpForPlayerAndRelock();
    }

    v12 = CMBaseObjectGetDerivedStorage();
    fpfs_ClearAllCachedRenderChains(a2);
    *(v12 + 796) = 0;
    if (v9)
    {
      if (a3 == 1)
      {
        fpfs_PrepareForSeek(a2, 255, 1);
      }

      if (*(v8 + 593) && !*(v8 + 592))
      {
        if (dword_1EAF169F0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        fpfsi_SetCurrentTimeWithSeekID(a2, MEMORY[0x1E6960C88]);
      }

      else
      {
        fpfsi_SeekToCurrentTime(a2);
      }
    }

    if (*(v7 + 80) == a2)
    {
      fpfs_enqueuePrerollWasCancelledNotificationIfNeeded(a2);
      if (*(v7 + 463) && !*(v7 + 462))
      {
        fpfs_UpdateNeroPlaybackActiveStateAndNotifyIfNeeded(a1, a2, 0);
      }

      if (v11)
      {
        fpfs_GetItemBufferedDuration(a2);
        fpfs_CheckIfLikelyToKeepUpAndNotify();
      }
    }
  }
}

uint64_t fpfs_UnlockAndPostNotificationsWithCaller(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = DerivedStorage;
  v4 = *(DerivedStorage + 8);
  if (v4 >= 1)
  {
    *(DerivedStorage + 8) = --v4;
  }

  if (!v4)
  {
    fpfs_CheckIfPlaybackStateChangedAndNotifyBeforeUnlock(a1);
    v6 = (v3 + 88);
    v7 = *(v3 + 88);
    if (v7)
    {
      v8 = 0;
      while (1)
      {
        while (1)
        {
          v9 = v7;
          v10 = v7 + 4;
          v7 = v7[4];
          v11 = *(v10 - 1);
          if (v11 == MEMORY[0x19A8D35D0]())
          {
            break;
          }

LABEL_18:
          if (!v7)
          {
            goto LABEL_23;
          }
        }

        if (!v8)
        {
          v12 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
          v8 = v12;
          if (v12)
          {
            *v12 = 0;
            v12[1] = v12;
          }
        }

        v13 = *v6;
        if (*v6 == v9)
        {
          v17 = v13[4];
          *v6 = v17;
          v16 = v3 + 88;
          if (v17)
          {
            goto LABEL_16;
          }
        }

        else
        {
          do
          {
            v14 = v13;
            v13 = v13[4];
          }

          while (v13 != v9);
          v15 = v13[4];
          v14[4] = v15;
          v16 = (v14 + 4);
          if (v15)
          {
LABEL_16:
            if (v8)
            {
              goto LABEL_17;
            }

            goto LABEL_22;
          }
        }

        *(v3 + 96) = v16;
        if (v8)
        {
LABEL_17:
          v9[4] = 0;
          *v8[1] = v9;
          v8[1] = v10;
          goto LABEL_18;
        }

LABEL_22:
        dispatch_async_f(*(v3 + 24), v9, fpfs_PostNotificationFromDispatch);
        if (!v7)
        {
LABEL_23:
          if (v8)
          {
            dispatch_async_f(*(v3 + 24), v8, fpfs_PostNotificationListFromDispatch);
          }

          break;
        }
      }
    }
  }

  return FigSimpleMutexUnlock();
}

void fpfsi_ConfigurePumpForPlayerAndRelock()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 1848);
  if (v1)
  {
    v2 = CFRetain(v1);
  }

  else
  {
    v2 = 0;
  }

  v3 = CMBaseObjectGetDerivedStorage();
  v4 = MEMORY[0x1E695E4D0];
  if (!*(v3 + 462))
  {
    v4 = MEMORY[0x1E695E4C0];
  }

  v5 = *v4;
  AllocatorForMedia = FigGetAllocatorForMedia();
  Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"FBPSTN_Video", v5);
  if (*(v3 + 462))
  {
    CFDictionarySetValue(Mutable, @"FBPSTN_NeroTransport", *(v3 + 488));
  }

  if (v2)
  {
    FigBaseObject = FigBytePumpGetFigBaseObject(*(DerivedStorage + 912));
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      v9(FigBaseObject, 0x1F0B1F1B8, v2);
    }
  }

  v10 = FigBytePumpGetFigBaseObject(*(DerivedStorage + 912));
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v11)
  {
    v11(v10, 0x1F0B1F038, Mutable);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t fpfsi_SetCurrentTimeWithSeekID(uint64_t a1, __int128 *a2)
{
  v8 = *a2;
  v9 = *(a2 + 2);
  v6 = *MEMORY[0x1E6960C80];
  v7 = *(MEMORY[0x1E6960C80] + 16);
  v4 = *MEMORY[0x1E6960C88];
  v5 = *(MEMORY[0x1E6960C88] + 16);
  v3 = 0;
  return fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts(a1, &v8, 0, &v6, &v4, 0, 0, 0, 16842753, 0, v3);
}

uint64_t fpfsi_SeekToCurrentTime(uint64_t a1)
{
  memset(&v13, 0, sizeof(v13));
  memset(&v12, 0, sizeof(v12));
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fpfs_GetNextTimeToPlay(DerivedStorage, 0, &v15);
  lhs = v15;
  *&rhs.value = kSeekToCurrentFudge;
  rhs.epoch = 0;
  CMTimeAdd(&v14, &lhs, &rhs);
  v3 = *(DerivedStorage + 1680);
  if (v3 && FigAlternateIsIFrameOnly(v3))
  {
    CMTimeMake(&lhs, 2, 1);
    rhs = v14;
    CMTimeSubtract(&v13, &rhs, &lhs);
    CMTimeMake(&lhs, 2, 1);
    rhs = v14;
    CMTimeAdd(&v12, &rhs, &lhs);
    v4 = 0;
    v5 = 0;
    v6 = 240;
  }

  else if (*(DerivedStorage + 332))
  {
    if (*(DerivedStorage + 1484))
    {
      v13 = **&MEMORY[0x1E6960C70];
      v12 = v13;
      v6 = 245;
    }

    else
    {
      v7 = *(DerivedStorage + 392);
      v13 = *(DerivedStorage + 344);
      v12 = *(DerivedStorage + 368);
      v6 = v7 | 0xF0u;
    }

    v4 = *(DerivedStorage + 2220);
    v5 = *(DerivedStorage + 2240);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v13 = **&MEMORY[0x1E6960C70];
    v12 = v13;
    v6 = 245;
  }

  lhs = v14;
  rhs = v13;
  v9 = v12;
  return fpfsi_SetCurrentTimeWithRangeAndSeekIDGuts(a1, &lhs, v6, &rhs, &v9, v4, 0, v5, 1, 0, 0);
}

void fpfs_enqueuePrerollWasCancelledNotificationIfNeeded(const __CFArray *a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 2224))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (fpfs_getNext(DerivedStorage, 0) == a1)
    {
      fpfs_enqueuePrerollWasCancelledNotificationIfNeeded_cold_2();
    }

    else
    {
      fpfs_enqueuePrerollWasCancelledNotificationIfNeeded_cold_1();
    }
  }
}

void fpfs_UpdateNeroPlaybackActiveStateAndNotifyIfNeeded(const void *a1, uint64_t a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 463) != a3)
  {
    v6 = DerivedStorage;
    *(DerivedStorage + 463) = a3;
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFDictionaryCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9 = Mutable;
    v10 = *MEMORY[0x1E695E4D0];
    v11 = *MEMORY[0x1E695E4C0];
    if (*(v6 + 463))
    {
      v12 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v12 = *MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"CurrentIsNeroPlaybackActive", v12);
    if (*(v6 + 463))
    {
      v13 = v10;
    }

    else
    {
      v13 = v11;
    }

    FigPropertyStorageSetValue(*(v6 + 16), @"IsNeroPlaybackActive", v13);
    fpfs_EnqueueNotification(a1, @"IsNeroPlaybackActiveDidChange", a1, v9);
    if (v9)
    {
      CFRelease(v9);
    }

    if (*(v6 + 463))
    {
      if (!dword_1EAF169F0)
      {
        return;
      }
    }

    else if (!dword_1EAF169F0)
    {
      return;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t fpfs_GetItemBufferedDuration(uint64_t a1, CMTime *a2, uint64_t a3, unsigned int a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(CMBaseObjectGetDerivedStorage() + 108);
  memset(&v59, 0, sizeof(v59));
  v10 = 1;
  fpfs_GetNextTimeToPlay(DerivedStorage, 1, &v59);
  v62 = v59;
  v61 = v59;
  start = v59;
  v11 = *(DerivedStorage + 1072);
  if (v11)
  {
    v10 = *(DerivedStorage + 472);
    if (*(DerivedStorage + 553))
    {
      if (*(DerivedStorage + 472) && *(DerivedStorage + 1744))
      {
        v10 = *(DerivedStorage + 475);
      }
    }
  }

  if ((v11 & 2) != 0)
  {
    v12 = *(DerivedStorage + 473);
    if (*(DerivedStorage + 553) && *(DerivedStorage + 473) && *(DerivedStorage + 1744))
    {
      v12 = *(DerivedStorage + 476);
    }
  }

  else
  {
    v12 = 1;
  }

  v13 = *(DerivedStorage + 1024);
  if (!v13)
  {
    v27 = 0;
    v29 = 1;
    v30 = 1;
    v28 = 1;
    if (!a3)
    {
      goto LABEL_70;
    }

    goto LABEL_68;
  }

  v48 = v12;
  v49 = v10;
  v47 = a2;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v14 = DerivedStorage + 976;
  v15 = DerivedStorage + 472;
  do
  {
    v16 = *(v13 + 168);
    if (v16 == 7 || v16 == 4)
    {
      *&time1.start.value = *(v13 + 208);
      time1.start.epoch = *(v13 + 224);
      time2 = v59;
      if (CMTimeCompare(&time1.start, &time2) > 0 || *(v13 + 200))
      {
        goto LABEL_52;
      }
    }

    else if (*(v13 + 64) == *(v14 + 16 * *(v13 + 196) + 8))
    {
      goto LABEL_52;
    }

    if (fpfs_LooksLikeStrandedTrack(a1, *(v13 + 196), a4, v13))
    {
      v18 = *(v13 + 200) == 0;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(v13 + 48);
    switch(v19)
    {
      case 1935832172:
        if ((*(v13 + 244) & 1) != 0 && !v18)
        {
          if (v9 < 0.0)
          {
            time2 = start;
            lhs = *(v13 + 232);
            CMTimeMinimum(&time1.start, &time2, &lhs);
            start = time1.start;
          }

          else
          {
            time1.start = start;
            time2 = *(v13 + 232);
            CMTimeMaximum(&start, &time1.start, &time2);
          }
        }

        v50 = 1;
        break;
      case 1986618469:
        if ((*(v13 + 244) & 1) != 0 && !v18)
        {
          if (v9 < 0.0)
          {
            time2 = v61;
            lhs = *(v13 + 232);
            CMTimeMinimum(&time1.start, &time2, &lhs);
            v61 = time1.start;
          }

          else
          {
            time1.start = v61;
            time2 = *(v13 + 232);
            CMTimeMaximum(&v61, &time1.start, &time2);
          }
        }

        v20 = *(v13 + 64);
        v21 = *(v13 + 196);
        if (v20 == *(v14 + 16 * v21))
        {
          if (v18)
          {
            goto LABEL_42;
          }
        }

        else if (v20 != *(v14 + 16 * v21 + 8) || v18)
        {
LABEL_42:
          LODWORD(v51) = 1;
          break;
        }

        v49 = *(v13 + 198);
        goto LABEL_42;
      case 1936684398:
        if ((*(v13 + 244) & 1) != 0 && !v18)
        {
          if (v9 < 0.0)
          {
            time2 = v62;
            lhs = *(v13 + 232);
            CMTimeMinimum(&time1.start, &time2, &lhs);
            v62 = time1.start;
          }

          else
          {
            time1.start = v62;
            time2 = *(v13 + 232);
            CMTimeMaximum(&v62, &time1.start, &time2);
          }
        }

        v22 = *(v13 + 64);
        v23 = *(v13 + 196);
        if (v22 == *(v14 + 16 * v23))
        {
          if (v18)
          {
            goto LABEL_51;
          }
        }

        else if (v22 != *(v14 + 16 * v23 + 8) || v18)
        {
LABEL_51:
          BYTE4(v51) = 1;
          break;
        }

        v48 = *(v13 + 198);
        goto LABEL_51;
    }

LABEL_52:
    if ((*(v13 + 244) & 1) == 0)
    {
      v24 = *(v13 + 48);
      if (v24 == 1986618469 || v24 == 1936684398)
      {
        v25 = *(v13 + 196);
        v26 = *(v15 + v25);
        if (*(DerivedStorage + 553))
        {
          if (*(v15 + v25))
          {
            if (!*(DerivedStorage + 1744))
            {
              goto LABEL_61;
            }

            v26 = *(v15 + v25 + 3);
            goto LABEL_59;
          }
        }

        else
        {
LABEL_59:
          if (v26)
          {
            goto LABEL_61;
          }
        }

        v52 = 1;
      }
    }

LABEL_61:
    v13 = *(v13 + 24);
  }

  while (v13);
  v27 = BYTE4(v51);
  v28 = v52 == 0;
  v29 = v51 == 0;
  v30 = v50 == 0;
  a2 = v47;
  v12 = v48;
  v10 = v49;
  if (a3)
  {
LABEL_68:
    v31 = 0;
    v32 = *MEMORY[0x1E6960C70];
    v33 = *(MEMORY[0x1E6960C70] + 16);
    do
    {
      v34 = a3 + v31;
      *v34 = v32;
      *(v34 + 16) = v33;
      v31 += 24;
    }

    while (v31 != 72);
  }

LABEL_70:
  if (fpfsi_HasRequiredSubstreamsToIndicateBuffering())
  {
    memset(&time1, 0, 24);
    memset(&time2, 0, sizeof(time2));
    if (v9 < 0.0)
    {
      lhs = v59;
      *&rhs.value = *&v62.value;
      epoch = v62.epoch;
    }

    else
    {
      lhs = v62;
      *&rhs.value = *&v59.value;
      epoch = v59.epoch;
    }

    rhs.epoch = epoch;
    CMTimeSubtract(&time2, &lhs, &rhs);
    rhs = time2;
    v53 = *MEMORY[0x1E6960CC0];
    *&v55.value = *MEMORY[0x1E6960CC0];
    v37 = *(MEMORY[0x1E6960CC0] + 16);
    v55.epoch = v37;
    CMTimeMaximum(&lhs, &rhs, &v55);
    v38 = lhs.epoch;
    time2 = lhs;
    if (v29 && v27 == 0)
    {
      v39 = 1;
    }

    else
    {
      v39 = v27;
    }

    if (v28)
    {
      v40 = v27;
    }

    else
    {
      v40 = v39;
    }

    *&a2->value = *&lhs.value;
    a2->epoch = v38;
    if (!v29)
    {
      if (v9 < 0.0)
      {
        lhs = v59;
        *&rhs.value = *&v61.value;
        v41 = v61.epoch;
      }

      else
      {
        lhs = v61;
        *&rhs.value = *&v59.value;
        v41 = v59.epoch;
      }

      if ((rhs.epoch = v41, CMTimeSubtract(&time1.start, &lhs, &rhs), rhs = time1.start, *&v55.value = v53, v55.epoch = v37, CMTimeMaximum(&lhs, &rhs, &v55), time1.start = lhs, !v40) || !v10 && v12 == 1 || v12 == v10 && (lhs = time1.start, rhs = *a2, CMTimeCompare(&lhs, &rhs) < 0))
      {
        *&a2->value = *&time1.start.value;
        a2->epoch = time1.start.epoch;
      }
    }

    if (a3)
    {
      if ((*(DerivedStorage + 1072) & 2) != 0)
      {
        if (!v29)
        {
          *a3 = *&time1.start.value;
          *(a3 + 16) = time1.start.epoch;
        }

        if (v40)
        {
          *(a3 + 24) = time2;
        }
      }

      else
      {
        v42 = *&a2->value;
        *(a3 + 16) = a2->epoch;
        *a3 = v42;
      }

      if (!v30)
      {
        if (v9 < 0.0)
        {
          rhs = v59;
          *&v55.value = *&start.value;
          v43 = start.epoch;
        }

        else
        {
          rhs = start;
          *&v55.value = *&v59.value;
          v43 = v59.epoch;
        }

        v55.epoch = v43;
        CMTimeSubtract(&lhs, &rhs, &v55);
        *(a3 + 48) = *&lhs.value;
        v44 = lhs.epoch;
        *(a3 + 64) = lhs.epoch;
        *&rhs.value = *(a3 + 48);
        rhs.epoch = v44;
        *&v55.value = v53;
        v55.epoch = v37;
        CMTimeMaximum(&lhs, &rhs, &v55);
        *(a3 + 48) = lhs;
      }
    }
  }

  else
  {
    v36 = MEMORY[0x1E6960CC0];
    *&a2->value = *MEMORY[0x1E6960CC0];
    a2->epoch = *(v36 + 16);
  }

  v45 = *(DerivedStorage + 3120);
  time2 = v59;
  lhs = *a2;
  CMTimeRangeMake(&time1, &time2, &lhs);
  return FigNetworkUrgencyMonitorSetPlayableRange(v45);
}

const __CFArray *fpfs_getNext(uint64_t a1, const void *a2)
{
  if (a2)
  {
    v5 = (a1 + 72);
    result = *(a1 + 72);
    if (!result)
    {
      v8 = 0;
      v7 = 0;
      if (*(a1 + 80) == a2)
      {
        return result;
      }

LABEL_10:
      v14.location = 0;
      v14.length = v7;
      v11 = CFArrayGetFirstIndexOfValue(v8, v14, a2) + 1;
      if (v11 >= v7)
      {
        return 0;
      }

      goto LABEL_14;
    }

    Count = CFArrayGetCount(result);
    v7 = Count;
    if (*(a1 + 80) != a2)
    {
      v8 = *v5;
      goto LABEL_10;
    }

    if (Count > 0)
    {
      v11 = 0;
      goto LABEL_14;
    }

    return 0;
  }

  result = *(a1 + 80);
  if (result)
  {
    return result;
  }

  v10 = *(a1 + 72);
  v9 = (a1 + 72);
  result = v10;
  if (!v10)
  {
    return result;
  }

  if (CFArrayGetCount(result) <= 0)
  {
    return 0;
  }

  v11 = 0;
  v5 = v9;
LABEL_14:
  v12 = *v5;

  return CFArrayGetValueAtIndex(v12, v11);
}

uint64_t fpfs_SetTime(uint64_t a1, CMTime *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  fpfsi_RemoveAndClearTimer((DerivedStorage + 1608));
  v4 = MEMORY[0x1E6960C70];
  v5 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 1616) = *MEMORY[0x1E6960C70];
  v6 = *(v4 + 16);
  *(DerivedStorage + 1632) = v6;
  *(DerivedStorage + 1640) = v5;
  *(DerivedStorage + 1656) = v6;
  for (i = *(DerivedStorage + 1024); i; i = *(i + 24))
  {
    *(i + 172) = v5;
    *(i + 188) = v6;
  }

  v8 = *(DerivedStorage + 568);
  if (v8)
  {
    memset(&v13, 0, sizeof(v13));
    CMTimebaseGetTime(&v13, v8);
    time1 = v13;
    time2 = *a2;
    if (CMTimeCompare(&time1, &time2))
    {
      if (dword_1EAF169F0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  v10 = *(DerivedStorage + 576);
  time2 = *a2;
  FPSTimelineConverterL2TimeToL3(&time2, &time1);
  CMTimebaseSetTime(v10, &time1);
  v11 = *&a2->value;
  *(DerivedStorage + 3316) = a2->epoch;
  *(DerivedStorage + 3300) = v11;
  result = FigGetUpTimeNanoseconds();
  *(DerivedStorage + 3328) = result;
  return result;
}

void fpfs_getAnchorTimeForSyncTimebase(float a1, uint64_t a2, uint64_t a3, CMTime *a4, CMTime *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = CMBaseObjectGetDerivedStorage();
  v21 = **&MEMORY[0x1E6960C70];
  v20 = v21;
  v10 = *(v9 + 568);
  if (v10)
  {
    Rate = CMTimebaseGetRate(v10);
    v12 = *(DerivedStorage + 108);
    if (v12 == Rate && v12 == a1)
    {
      fpfs_GetNextTimeToPlay(v9, 0, &v21);
      v15 = *(v9 + 568);
      HostTimeClock = CMClockGetHostTimeClock();
      time = v21;
      CMSyncConvertTime(&v20, &time, v15, HostTimeClock);
      memset(&v19, 0, sizeof(v19));
      v17 = CMClockGetHostTimeClock();
      CMClockGetTime(&time, v17);
      lhs = v20;
      CMTimeSubtract(&v19, &lhs, &time);
      if (!dword_1EAF169F0)
      {
        goto LABEL_11;
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    }

    else
    {
      if (a1 == 0.0)
      {
        goto LABEL_11;
      }

      LODWORD(v19.value) = 0;
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_11:
  if (a4)
  {
    *a4 = v21;
  }

  if (a5)
  {
    *a5 = v20;
  }
}

uint64_t fpfsi_getTimebaseStarterTrack()
{
  result = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (result)
  {
    while (*(result + 48) != 1936684398 || !*(result + 112))
    {
      result = *(result + 24);
      if (!result)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    result = *(CMBaseObjectGetDerivedStorage() + 1024);
    if (result)
    {
      while (*(result + 48) != 1986618469 || !*(result + 112))
      {
        result = *(result + 24);
        if (!result)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      result = *(CMBaseObjectGetDerivedStorage() + 1024);
      if (result)
      {
        while (*(result + 48) != 1835365473 || !*(result + 112))
        {
          result = *(result + 24);
          if (!result)
          {
            goto LABEL_13;
          }
        }
      }

      else
      {
LABEL_13:
        result = *(CMBaseObjectGetDerivedStorage() + 1024);
        if (result)
        {
          while (*(result + 48) != 1935832172 || !*(result + 112))
          {
            result = *(result + 24);
            if (!result)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
LABEL_17:
          for (result = *(CMBaseObjectGetDerivedStorage() + 1024); result; result = *(result + 24))
          {
            if (*(result + 48) == 1668047728 && *(result + 112))
            {
              break;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL fpfs_shouldReleaseRenderChainForPausing()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 840) != 0.0)
  {
    return 0;
  }

  v2 = v1;
  if (*(v1 + 108) != 0.0 || *(DerivedStorage + 2904))
  {
    return 0;
  }

  v4 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (v4)
  {
    while (*(v4 + 48) != 1986618469 || !*(v4 + 112))
    {
      v4 = *(v4 + 24);
      if (!v4)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v5 = *(CMBaseObjectGetDerivedStorage() + 1024);
    if (!v5)
    {
      return 0;
    }

    while (*(v5 + 48) != 1936684398 || !*(v5 + 112))
    {
      v5 = *(v5 + 24);
      if (!v5)
      {
        return 0;
      }
    }
  }

  v6 = *(DerivedStorage + 1680);
  if (v6 && FigAlternateIsIFrameOnly(v6))
  {
    return 0;
  }

  return *(v2 + 824) || *(DerivedStorage + 2905) || *(v2 + 828) > 1;
}

void fpfs_GetTime(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  CMTimebaseGetTimeClampedAboveAnchorTime();
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  time = v8;
  FPSTimelineConverterL3TimeToL2(&time, a2);
  time1 = **&MEMORY[0x1E6960CC0];
  time2 = *a2->n128_u8;
  CMTimeMaximum(&time, &time1, &time2);
  *a2->n128_u64 = time;
  *(a1 + 3300) = *a2;
  *(a1 + 3316) = a2[1].n128_u64[0];
  *(a1 + 3328) = UpTimeNanoseconds;
  if (v9)
  {
    if (dword_1EAF169F0 >= 2)
    {
      cf = 0;
      time2.value = 0;
      if (!fpfsi_CopyPlayerAndItemFromItemRetainProxy(*(a1 + 16), &time2, &cf))
      {
        if (dword_1EAF169F0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CFRelease(time2.value);
        CFRelease(cf);
      }
    }
  }
}

void fpfs_JumpToTime(uint64_t a1, CMTime *a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  lhs = *a2;
  fpfs_SetTime(a1, &lhs);
  fpfsi_synchronizeLayerToTimebaseWithTransaction();
  if (a3)
  {
    fpfs_CheckPrebufferedLevels(&lhs, a1, 0, -1, 0);
  }

  lhs = *a2;
  if (fpfsi_atOrAfterTimeToPausePlayback(DerivedStorage))
  {

    fpfs_HandleReachingTimeToPausePlayback();
  }

  else if (*(DerivedStorage + 1436))
  {
    memset(&v10, 0, sizeof(v10));
    lhs = *(DerivedStorage + 1424);
    *&rhs.value = kTimeToPausePlaybackAdvanceNotice;
    rhs.epoch = 0;
    CMTimeSubtract(&v10, &lhs, &rhs);
    memset(&v9, 0, sizeof(v9));
    fpfsi_EstimateTimeToPause(&lhs);
    rhs = *(DerivedStorage + 1424);
    CMTimeSubtract(&v9, &rhs, &lhs);
    lhs = *a2;
    rhs = v10;
    if (CMTimeCompare(&lhs, &rhs) >= 1)
    {
      lhs = *a2;
      rhs = *(DerivedStorage + 1424);
      if (CMTimeCompare(&lhs, &rhs) < 0)
      {
        if (dword_1EAF169F0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v8 = *(DerivedStorage + 2352);
        lhs = v9;
        FigSpeedRampTimerScheduleForL2Time(v8, &lhs, 0);
      }
    }
  }
}

void fpfsi_RemoveAndClearTimer(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      FigSpeedRampTimerCancel(v2);
      CFRelease(*a1);
      *a1 = 0;
    }
  }
}

double fpfs_GetNextTimeToPlay@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1E6960C70];
  v7 = *MEMORY[0x1E6960C70];
  *a3 = *MEMORY[0x1E6960C70];
  v8 = *(v6 + 16);
  *(a3 + 16) = v8;
  v9 = *(a1 + 1576);
  if (v9)
  {
    memset(&lhs, 0, sizeof(lhs));
    v18 = v7;
    fpfsi_GetPumpReferenceTimeForDate(a1, v9, &lhs);
    rhs = lhs;
    fpfs_GetTimeForDate();
    v7 = v18;
  }

  if ((*(a3 + 12) & 1) == 0)
  {
    if (*(a1 + 1484))
    {
      v10 = 1472;
    }

    else
    {
      if ((*(a1 + 332) & 1) == 0)
      {
        goto LABEL_9;
      }

      v10 = 320;
    }

    v11 = a1 + v10;
    v15 = *v11;
    *a3 = *v11;
    *(a3 + 16) = *(v11 + 16);
  }

LABEL_9:
  v12 = *(a3 + 12);
  if ((~v12 & 9) != 0)
  {
    if ((~v12 & 5) != 0)
    {
      goto LABEL_18;
    }

    v17 = v7;
    memset(&lhs, 0, sizeof(lhs));
    fpfsi_GetPumpMaxTimeAvailable(&lhs);
    if ((lhs.flags & 1) == 0)
    {
      *&v15 = v17;
      *a3 = v17;
      goto LABEL_12;
    }

    rhs = lhs;
    v19 = *(a1 + 1160);
    v20 = *(a1 + 1176);
    p_rhs = &rhs;
    v14 = &v19;
  }

  else
  {
    if ((*(a1 + 1340) & 1) == 0)
    {
      *a3 = v7;
LABEL_12:
      *(a3 + 16) = v8;
      goto LABEL_18;
    }

    lhs = *(a1 + 1328);
    rhs = *(a1 + 1160);
    p_rhs = &lhs;
    v14 = &rhs;
  }

  CMTimeSubtract(a3, p_rhs, v14);
LABEL_18:
  if ((*(a3 + 12) & 0x1D) != 1)
  {
    if (a2)
    {
      fpfs_GetApproximateTime(a1, &lhs);
    }

    else
    {
      fpfs_GetTime(a1, &lhs);
    }

    *&v15 = lhs.value;
    *a3 = lhs;
  }

  return *&v15;
}

uint64_t fpfs_FlowControlPump(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  if (!*(a1 + 912))
  {
    return 0;
  }

  v8 = *(a1 + 2568);
  if (v8)
  {
    v9 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v9)
    {
      v9(v8, @"playerStats", 0x1F0B66B78, a2, 0);
    }
  }

  v10 = 0;
  while (1)
  {
    v11 = *(a1 + 912);
    if (!v11)
    {
      break;
    }

    if (((1 << v10) & a4) != 0)
    {
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v12)
      {
        v12(v11, v10);
      }

      if (!*(a1 + 2080) && *(a1 + 2072) && !*(a1 + 2096))
      {
        UpTimeNanoseconds = FigGetUpTimeNanoseconds();
        v14 = *(a1 + 2568);
        if (v14)
        {
          v15 = UpTimeNanoseconds;
          v16 = *(a1 + 2072);
          v17 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v17)
          {
            v17(v14, 0x1F0B64678, 0x1F0B67658, (v15 - v16) / 0xF4240uLL, 1);
          }
        }

        *(a1 + 2080) = 1;
      }
    }

    else if (((1 << v10) & a2) != 0)
    {
      v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v18)
      {
        v18(v11, v10, a3);
      }
    }

    if (++v10 == 3)
    {
      return 0;
    }
  }

  return FigSignalErrorAtGM();
}

void fpfsi_GetPumpReferenceTimeForDate(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = MEMORY[0x1E6960C70];
  v5 = *MEMORY[0x1E6960C70];
  *a3 = *MEMORY[0x1E6960C70];
  v6 = *(v4 + 16);
  *(a3 + 16) = v6;
  v15 = v5;
  v16 = v6;
  v7 = *(a1 + 912);
  if (v7)
  {
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v10)
    {
      if (v10(v7, a2, a3, &v15) == -12783)
      {
        v11 = *(a1 + 1592);
        if (v11)
        {
          v12 = v11;
          do
          {
            v13 = MEMORY[0x19A8CCD90](v12[2]);
            if (v13 <= MEMORY[0x19A8CCD90](a2))
            {
              v11 = v12;
            }

            v12 = *v12;
          }

          while (v12);
          v14 = *(v11 + 3);
          *(a3 + 16) = v11[5];
          *a3 = v14;
        }
      }
    }
  }
}

__n128 fpfs_GetApproximateTime@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v4 = MEMORY[0x1E6960C70];
  *a2 = *MEMORY[0x1E6960C70];
  a2[1].n128_u64[0] = *(v4 + 16);
  UpTimeNanoseconds = FigGetUpTimeNanoseconds();
  if ((*(a1 + 3312) & 1) != 0 && UpTimeNanoseconds - *(a1 + 3328) < 1000001)
  {
    result = *(a1 + 3300);
    *a2 = result;
    a2[1].n128_u64[0] = *(a1 + 3316);
  }

  else
  {

    fpfs_GetTime(a1, a2);
  }

  return result;
}

uint64_t fpfsi_CopyPlayerAndItemFromItemRetainProxy(uint64_t a1, CFTypeRef *a2, CFTypeRef *a3)
{
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    v5 = FigSignalErrorAtGM();
    DerivedStorage = 0;
  }

  else
  {
    Owner = FigRetainProxyGetOwner();
    if (Owner)
    {
      Owner = CFRetain(Owner);
    }

    *a3 = Owner;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v5 = 0;
  }

  FigRetainProxyUnlockMutex();
  if (a2 && DerivedStorage)
  {
    FigSimpleMutexLock();
    if (*(DerivedStorage + 24))
    {
      FigSimpleMutexUnlock();
      v5 = 4294954511;
    }

    else
    {
      *a2 = CFRetain(*DerivedStorage);
      FigSimpleMutexUnlock();
      if (!v5)
      {
        return v5;
      }
    }

    if (*a3)
    {
      CFRelease(*a3);
      *a3 = 0;
    }
  }

  return v5;
}

uint64_t CMBaseObjectCopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4);
}

uint64_t fpfs_LastTrackOfType(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 1024);
  v6 = v5 == 0;
  result = 0;
  while (!v6 && v5 != a3)
  {
    if (*(v5 + 48) == a2)
    {
      result = v5;
    }

    v5 = *(v5 + 24);
    v6 = v5 == 0;
  }

  return result;
}

void fpfs_DeleteTrack(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *DerivedStorage;
  v6 = CMBaseObjectGetDerivedStorage();
  isTrackInLists = fpfsi_isTrackInLists(DerivedStorage, a2, 3u);
  v8 = dword_1EAF169F0;
  if (!isTrackInLists && dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v8 = dword_1EAF169F0;
  }

  if (v8)
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  fpfs_CompleteLogIfLastTrack(a1, a2);
  if (*(a2 + 112))
  {
    if (*(a2 + 48) != 1986618469)
    {
      v11 = fpfs_itemContainsTrackWithSharedRenderChain(a1, a2);
      Next = fpfs_getNext(v6, *(v6 + 80));
      if (!Next || !fpfs_itemContainsTrackWithSharedRenderChain(Next, a2))
      {
        v13 = *(v6 + 80);
        if (v13 == a1 || v13 == 0)
        {
          v15 = 1;
          if (v11)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v15 = fpfs_itemContainsTrackWithSharedRenderChain(v13, a2) == 0;
          if (v11)
          {
            goto LABEL_21;
          }
        }

        if (v15)
        {
          fpfs_FlushPrimaryAndAuxRenderChains(*(a2 + 112), 1);
          for (i = *(a2 + 112); i; i = *(i + 88))
          {
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
          }
        }
      }
    }
  }

LABEL_21:
  v17 = *(a2 + 24);
  if (v17)
  {
    while (*(v17 + 48) != *(a2 + 48) || !*(v17 + 56) || !FigStreamTrackCanTracksBeSyncPairsIgnoringDiscontinuity(a2, v17))
    {
      v17 = *(v17 + 24);
      if (!v17)
      {
        goto LABEL_26;
      }
    }

    v18 = 0;
  }

  else
  {
LABEL_26:
    v18 = 1;
  }

  v19 = fpfs_shouldCheckAndReportVariantEnded(a2);
  fpfs_ReleaseTrackRenderChain(a2);
  if (*(a2 + 48) == 1936684398)
  {
    fpfs_PrepareAndEnqueueSpatialAudioRenderingChangedNotification(*DerivedStorage, *(a2 + 16), v20, v21, v22, v23, v24, v25);
  }

  v26 = (DerivedStorage + 1024);
  v27 = (DerivedStorage + 1024);
  do
  {
    v28 = *v27;
    v27 = (*v27 + 24);
    if (v28)
    {
      v29 = v28 == a2;
    }

    else
    {
      v29 = 1;
    }
  }

  while (!v29);
  if (v28)
  {
    if (v19)
    {
      fpfsi_RTCReportingReportCheckAndReportVariantEnded(DerivedStorage, a2);
    }

    v30 = *v26;
    if (*v26 == a2)
    {
      v39 = *(v30 + 24);
      *v26 = v39;
      if (v39)
      {
        goto LABEL_59;
      }

      goto LABEL_54;
    }

    do
    {
      v31 = v30;
      v30 = *(v30 + 24);
    }

    while (v30 != a2);
    v32 = *(v30 + 24);
    *(v31 + 24) = v32;
    v26 = (v31 + 24);
    if (!v32)
    {
LABEL_54:
      v40 = 1032;
LABEL_58:
      *(DerivedStorage + v40) = v26;
    }
  }

  else
  {
    v26 = (DerivedStorage + 1040);
    v33 = (DerivedStorage + 1040);
    do
    {
      v34 = *v33;
      v33 = (*v33 + 24);
      if (v34)
      {
        v35 = v34 == a2;
      }

      else
      {
        v35 = 1;
      }
    }

    while (!v35);
    if (v34)
    {
      v36 = *v26;
      if (*v26 == a2)
      {
        v41 = *(v36 + 24);
        *v26 = v41;
        if (v41)
        {
          goto LABEL_59;
        }
      }

      else
      {
        do
        {
          v37 = v36;
          v36 = *(v36 + 24);
        }

        while (v36 != a2);
        v38 = *(v36 + 24);
        *(v37 + 24) = v38;
        v26 = (v37 + 24);
        if (v38)
        {
          goto LABEL_59;
        }
      }

      v40 = 1048;
      goto LABEL_58;
    }
  }

LABEL_59:
  fpfsi_RemoveAndClearTimer((a2 + 128));
  fpfsi_RemoveAndClearTimer((a2 + 136));
  v42 = *(a2 + 280);
  if (v42)
  {
    CFRelease(v42);
    *(a2 + 280) = 0;
  }

  fpfs_StopFeedingTrack(a2, 0, 0);
  v43 = *(a2 + 64);
  if (v43)
  {
    *(a2 + 64) = 0;
    CFRelease(v43);
  }

  v44 = *(a2 + 88);
  if (v44)
  {
    CFRelease(v44);
    *(a2 + 88) = 0;
  }

  v45 = *(a2 + 96);
  if (v45)
  {
    BufferCount = CMBufferQueueGetBufferCount(v45);
    v47 = *(a2 + 96);
    if (BufferCount >= 1)
    {
      fpfs_SendBufferQueueToChomper(v6, v47);
LABEL_70:
      *(a2 + 96) = 0;
      goto LABEL_71;
    }

    if (v47)
    {
      CFRelease(*(a2 + 96));
      goto LABEL_70;
    }
  }

LABEL_71:
  if (*(a2 + 400))
  {
    fpfsi_RemoveCPECryptorListenersOncePerItem(a1, a2);
    v53 = *(a2 + 400);
    if (v53)
    {
      CFRelease(v53);
      *(a2 + 400) = 0;
    }
  }

  if (v18)
  {
    fpfs_ChangeTrackState(a2, 8u);
    v48 = (DerivedStorage + 1056);
    do
    {
      v49 = *v48;
      v48 = (*v48 + 24);
      if (v49)
      {
        v50 = v49 == a2;
      }

      else
      {
        v50 = 1;
      }
    }

    while (!v50);
    if (v49)
    {
      v51 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      *(a2 + 24) = 0;
      **(DerivedStorage + 1064) = a2;
      *(DerivedStorage + 1064) = a2 + 24;
    }
  }

  else
  {
    fpfs_PrepareAndEnqueueTracksChangedNotification(v5, a1);
    if (!*(v6 + 8) && dword_1EAF169F0)
    {
      v52 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fpfs_FreeTrack(a2);
  }
}

void fpfs_FlushPrimaryAndAuxRenderChains(uint64_t a1, int a2)
{
  v3 = a1;
  if (a1)
  {
    v4 = a1;
    do
    {
      v5 = *(v4 + 32);
      v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v6)
      {
        v6(v5, 0);
      }

      v4 = *(v4 + 88);
    }

    while (v4);
  }

  if (!*(v3 + 56))
  {
    ++fpfs_HaltPrimaryAndAuxRenderChains_sResumeTag;
    values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &fpfs_HaltPrimaryAndAuxRenderChains_sResumeTag);
    if (values)
    {
      AllocatorForMedia = FigGetAllocatorForMedia();
      v8 = CFDictionaryCreate(AllocatorForMedia, MEMORY[0x1E6960580], &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v8)
      {
        v9 = v8;
        do
        {
          v10 = *(v3 + 56);
          v11 = values;
          *(v3 + 56) = values;
          if (v11)
          {
            CFRetain(v11);
          }

          if (v10)
          {
            CFRelease(v10);
          }

          CMNotificationCenterGetDefaultLocalCenter();
          CMNotificationCenterPostNotification();
          if (a2)
          {
            CMNotificationCenterGetDefaultLocalCenter();
            CMNotificationCenterPostNotification();
          }

          v3 = *(v3 + 88);
        }

        while (v3);
        CFRelease(v9);
      }

      else
      {
        fpfs_FlushPrimaryAndAuxRenderChains_cold_1();
      }
    }

    else
    {
      fpfs_FlushPrimaryAndAuxRenderChains_cold_2();
    }

    if (values)
    {
      CFRelease(values);
    }
  }
}

void fpfs_CompleteLogIfLastTrack(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(a2 + 440);
  if (v4 != -1)
  {
    v5 = *(DerivedStorage + 1024);
    if (v5)
    {
      while (v5 == a2 || *(v5 + 440) != v4 || *(DerivedStorage + 1088) != *(v5 + 196))
      {
        v5 = *(v5 + 24);
        if (!v5)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      fpfs_MarkAccessLogEntryComplete();
    }

    *(a2 + 440) = -1;
  }
}

uint64_t fpfs_itemContainsTrackWithSharedRenderChain(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    return 0;
  }

  v4 = *(a2 + 112);
  if (!v4)
  {
    return 0;
  }

  v5 = *(DerivedStorage + 1024);
  if (!v5)
  {
    return 0;
  }

  while (v5 == a2 || *(v5 + 112) != v4)
  {
    v5 = *(v5 + 24);
    if (!v5)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t fpfs_shouldCheckAndReportVariantEnded(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 48);
    if (v2 == 1986618469)
    {
      goto LABEL_8;
    }

    if (v2 == 1936684398)
    {
      result = *(result + 456);
      if (!result)
      {
        return result;
      }

      if (!FigAlternateHasVideo(result))
      {
LABEL_8:
        if (!*(v1 + 200) && !*(v1 + 472) && fpfs_FirstTrackWithFormatDescriptionOfType(*(v1 + 16), *(v1 + 48)) == v1)
        {
          DerivedStorage = CMBaseObjectGetDerivedStorage();
          fpfs_GetTime(DerivedStorage, &time2);
          v4 = *(v1 + 208);
          return CMTimeCompare(&v4, &time2) < 1;
        }
      }
    }

    return 0;
  }

  return result;
}

void fpfs_ReleaseTrackRenderChain(uint64_t a1)
{
  v104 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(a1 + 112);
  if (!v4)
  {
    goto LABEL_85;
  }

  v5 = *(a1 + 112);
  if (*(a1 + 197))
  {
    fpfs_SetFeederTrack(*(a1 + 112), 0);
    v5 = *(a1 + 112);
  }

  if (*(v5 + 64))
  {
    v6 = *(a1 + 24);
    if (v6)
    {
      while (1)
      {
        if (*(v6 + 48) == *(a1 + 48))
        {
          v7 = *(v6 + 112);
          if (v7)
          {
            break;
          }
        }

        v6 = *(v6 + 24);
        if (!v6)
        {
          goto LABEL_12;
        }
      }

      if (v7 != v5 && *(v6 + 168) == 6)
      {
        if (dword_1EAF169F0)
        {
          LODWORD(cf) = 0;
          BYTE4(type) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        fpfs_setPropertyOnPrimaryAndAuxRenderPipelines();
        v66 = *(*(a1 + 112) + 64);
        if (v66)
        {
          CFRelease(v66);
          *(*(a1 + 112) + 64) = 0;
        }
      }
    }
  }

LABEL_12:
  if (*(a1 + 48) == 1936684398 && !*(a1 + 437))
  {
    RenderingTrackofType = fpfs_LastRenderingTrackofType(v2, 1936684398, a1);
    v29 = CMBaseObjectGetDerivedStorage();
    if (*(CMBaseObjectGetDerivedStorage() + 504) && _os_feature_enabled_impl() && *(v29 + 968))
    {
      v30 = a1;
      while (1)
      {
        if (v30 != a1 && *(v30 + 48) == 1936684398)
        {
          v31 = *(v30 + 112);
          if (v31)
          {
            break;
          }
        }

        v30 = *(v30 + 24);
        if (!v30)
        {
          goto LABEL_110;
        }
      }

      v32 = v31 != *(a1 + 112);
    }

    else
    {
      v32 = 1;
    }

    if (*(DerivedStorage + 530) || !v32 || RenderingTrackofType && !*(RenderingTrackofType + 437))
    {
LABEL_110:
      if (dword_1EAF169F0 >= 2)
      {
        LODWORD(cf) = 0;
        BYTE4(type) = 0;
        v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v33 = FigRetainProxyRetain();
      v34 = *(*(a1 + 112) + 32);
      if (v34)
      {
        LODWORD(v34) = CFRetain(v34);
      }

      if (dword_1EAF169F0)
      {
        LODWORD(cf) = 0;
        BYTE4(type) = 0;
        v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
        LODWORD(v34) = fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      fpfs_deferredAudioPlayResourceReleased(v34, v33);
    }
  }

  v8 = CMBaseObjectGetDerivedStorage();
  IsPlayerPerformanceTraceEnabled = FPSupport_IsPlayerPerformanceTraceEnabled();
  v10 = *(a1 + 48);
  if (v10 == 1986618469 || v10 == 1936684398)
  {
    v16 = CMBaseObjectGetDerivedStorage();
    if (!(*(v16 + 712) | IsPlayerPerformanceTraceEnabled))
    {
      v27 = *(a1 + 48);
      if (v27 != 1986618469)
      {
        goto LABEL_60;
      }

      if (*(a1 + 200))
      {
        goto LABEL_59;
      }
    }

    v17 = CMBaseObjectGetDerivedStorage();
    cf = 0;
    v18 = *(a1 + 112);
    if (!v18)
    {
LABEL_59:
      v27 = *(a1 + 48);
LABEL_60:
      if (v27 == 1936684398)
      {
        fpfs_CancelGaplessTransitionThatDependsOnTrack(*DerivedStorage, a1, 0, v11, v12, v13, v14, v15, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, type, cf);
      }

      goto LABEL_62;
    }

    v19 = *(v18 + 32);
    if (!v19)
    {
      LODWORD(AllocatorForMedia) = -12860;
      goto LABEL_56;
    }

    v20 = v17;
    AllocatorForMedia = FigGetAllocatorForMedia();
    FigBaseObject = FigRenderPipelineGetFigBaseObject(v19);
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v23)
    {
      LODWORD(AllocatorForMedia) = -12782;
      goto LABEL_56;
    }

    LODWORD(AllocatorForMedia) = v23(FigBaseObject, @"PerformanceDictionary", AllocatorForMedia, &cf);
    v24 = cf;
    if (AllocatorForMedia)
    {
      v25 = 1;
    }

    else
    {
      v25 = cf == 0;
    }

    if (v25)
    {
      if (!cf)
      {
        goto LABEL_58;
      }

      goto LABEL_57;
    }

    if (*(a1 + 48) == 1986618469)
    {
      v82 = v20;
      v83 = 0;
      v88 = 0;
      type = 0;
      v86 = 0;
      v87 = 0;
      v84 = 0;
      v85 = 0;
      v81 = @"NumberOfFramesDroppedByVideoDecoder";
      FigCFDictionaryGetInt32IfPresent();
      v80 = @"NumberOfGroupsOfFramesDroppedByVideoDecoder";
      FigCFDictionaryGetInt32IfPresent();
      v79 = @"NumberOfFramesDroppedInFlushHandshake";
      FigCFDictionaryGetInt32IfPresent();
      v78 = @"NumberOfFramesDecodedForCatchup";
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      FigCFDictionaryGetInt32IfPresent();
      if (*(*(a1 + 112) + 72))
      {
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
        FigCFDictionaryGetInt32IfPresent();
      }

      fpfs_GetTime(v20, &time2);
      time1 = *(a1 + 208);
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        v50 = *(v20 + 2568);
        if (v50)
        {
          v71 = 0;
          v72 = 0;
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v69 = 0;
          v70 = 0;
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          v81 = @"playerStats";
          v51 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v51)
          {
            v51(v50, @"playerStats", 0x1F0B42A78, 0);
          }

          v52 = *(v20 + 2568);
          if (v52)
          {
            v53 = *(*(CMBaseObjectGetVTable() + 16) + 32);
            if (v53)
            {
              v53(v52, @"playerStats", 0x1F0B42A98, 0);
            }

            v54 = *(v20 + 2568);
            if (v54)
            {
              v55 = *(*(CMBaseObjectGetVTable() + 16) + 32);
              if (v55)
              {
                v55(v54, @"playerStats", 0x1F0B42AB8, 0);
              }

              v56 = *(v20 + 2568);
              if (v56)
              {
                v57 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                if (v57)
                {
                  v57(v56, @"playerStats", 0x1F0B42AD8, 0);
                }

                v58 = *(v20 + 2568);
                if (v58)
                {
                  v59 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                  if (v59)
                  {
                    v59(v58, @"playerStats", 0x1F0B42A58, 0);
                  }

                  v60 = *(v20 + 2568);
                  if (v60)
                  {
                    v61 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                    if (v61)
                    {
                      v61(v60, @"playerStats", 0x1F0B42AF8, 0);
                    }

                    v62 = *(v20 + 2568);
                    if (v62)
                    {
                      v63 = *(*(CMBaseObjectGetVTable() + 16) + 32);
                      if (v63)
                      {
                        v63(v62, @"playerStats", 0x1F0B42B18, 0);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v24 = cf;
      v26 = *(a1 + 112);
      AllocatorForMedia = *(v26 + 72);
      *(v26 + 72) = cf;
      if (!v24)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v36 = *(a1 + 112);
      AllocatorForMedia = *(v36 + 72);
      *(v36 + 72) = cf;
    }

    CFRetain(v24);
LABEL_54:
    if (AllocatorForMedia)
    {
      CFRelease(AllocatorForMedia);
      LODWORD(AllocatorForMedia) = 0;
    }

LABEL_56:
    v24 = cf;
    if (!cf)
    {
LABEL_58:
      if (!AllocatorForMedia && *(*(a1 + 112) + 72) && *(v16 + 712) | IsPlayerPerformanceTraceEnabled)
      {
        v45 = *(a1 + 48);
        if (v45 == 1936684398)
        {
          v46 = (v8 + 1912);
        }

        else
        {
          if (v45 != 1986618469)
          {
            goto LABEL_62;
          }

          v46 = (v8 + 1904);
        }

        fpfsi_StoreTrackPerformanceDictionaries(a1, v46);
      }

      goto LABEL_59;
    }

LABEL_57:
    CFRelease(v24);
    goto LABEL_58;
  }

LABEL_62:
  if (FigStreamTrackIsRendererTimebaseStarter(a1))
  {
    v37 = *(*(a1 + 112) + 32);
    v38 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (v38)
    {
      v38(v37);
    }
  }

  if (*(a1 + 112) == v4)
  {
    *(a1 + 112) = 0;
    fpfs_releaseRenderChain(v2);
  }

  else if (dword_1EAF169F0)
  {
    LODWORD(cf) = 0;
    v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v40 = cf;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v41 = v40;
    }

    else
    {
      v41 = v40 & 0xFFFFFFFE;
    }

    if (!v41)
    {
      goto LABEL_84;
    }

    v42 = *DerivedStorage;
    if (*DerivedStorage)
    {
      v43 = (CMBaseObjectGetDerivedStorage() + 888);
      if (v2)
      {
LABEL_73:
        v44 = (CMBaseObjectGetDerivedStorage() + 3096);
LABEL_83:
        v47 = *(DerivedStorage + 160);
        v48 = *(a1 + 112);
        LODWORD(time1.value) = 136316930;
        *(&time1.value + 4) = "fpfs_ReleaseTrackRenderChain";
        LOWORD(time1.flags) = 2048;
        *(&time1.flags + 2) = v42;
        HIWORD(time1.epoch) = 2082;
        v92 = v43;
        v93 = 2048;
        v94 = v2;
        v95 = 2082;
        v96 = v44;
        v97 = 1024;
        v98 = v47;
        v99 = 2048;
        v100 = v48;
        v101 = 2048;
        v102 = v4;
        _os_log_send_and_compose_impl();
LABEL_84:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_85;
      }
    }

    else
    {
      v43 = "";
      if (v2)
      {
        goto LABEL_73;
      }
    }

    v44 = "";
    goto LABEL_83;
  }

LABEL_85:
  if (*(a1 + 104))
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
    v49 = *(a1 + 104);
    if (v49)
    {
      CFRelease(v49);
      *(a1 + 104) = 0;
    }
  }

  *(a1 + 120) = 0;
  *(a1 + 437) = 1;
  *(a1 + 439) = 0;
}

void fpfs_PrepareAndEnqueueSpatialAudioRenderingChangedNotification(uint64_t a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(a1, a2, a3, a4, a5, a6, a7, a8, @"IsRenderingSpatialAudio", 0);
  if (NotificationPayloadForProperties)
  {
    v11 = NotificationPayloadForProperties;
    fpfs_EnqueueNotification(a1, @"SpatialAudioRenderingChanged", a2, NotificationPayloadForProperties);

    CFRelease(v11);
  }
}

uint64_t fpfs_StopFeedingTrack(uint64_t a1, uint64_t a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = CMBaseObjectGetDerivedStorage();
  target = 0;
  if (!*(a1 + 198))
  {
    v9 = *(a1 + 64);
    if (v9)
    {
      v10 = *(a1 + 40);
      v11 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v11)
      {
        v11(v9, v10, 0, 0);
      }
    }

    *(a1 + 198) = 1;
  }

  if (*(a1 + 48) == 1986618469)
  {
    v12 = *(a1 + 196);
    v13 = *(DerivedStorage + 472 + v12);
    if (*(DerivedStorage + 553))
    {
      if (!*(DerivedStorage + 472 + v12))
      {
        goto LABEL_14;
      }

      if (!*(DerivedStorage + 1744))
      {
LABEL_12:
        if (fpfs_LastTrackOfType(v6, 1986618469, 0) == a1)
        {
          fpfs_SignalImageQueueGaugeEnqueueingCompleteAfterDecoding(a1);
        }

        goto LABEL_14;
      }

      v13 = *(DerivedStorage + 472 + v12 + 3);
    }

    if (!v13)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_14:
  AllocatorForMedia = FigGetAllocatorForMedia();
  if (!CMSampleBufferCreate(AllocatorForMedia, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &target))
  {
    CMSetAttachment(target, *MEMORY[0x1E6960490], *MEMORY[0x1E695E4D0], 1u);
    fpfsi_logAttachMarker(a1);
    fpfs_RenderBufferOrEnqueueToStartupQueue(a1, target);
  }

  if (*(a1 + 48) == 1936684398)
  {
    fpfs_AccumulateTrackDurationToBufferedAirPlayRenderedSampleRange(a1);
    if (!fpfs_TrackMightRenderMoreAudio(a1))
    {
      fpfs_EnqueuePossibleEndOfMediaData(a1);
    }

    if (fpfsi_AreAnyOtherTracksOfMediaTypeAwaitingPlayingState(v6, a1))
    {
      fpfs_EnqueueReleaseAfterDecoding(a1);
    }
  }

  v15 = *(a1 + 112);
  if (v15)
  {
    fpfs_SetFeederTrack(v15, 0);
  }

  if (a3 && *(v8 + 32))
  {
    if ((*(a1 + 244) & 1) == 0 && (~*(a1 + 156) & 0x11) != 0)
    {
      v16 = MEMORY[0x1E6960C80];
      *(a1 + 232) = *MEMORY[0x1E6960C80];
      *(a1 + 248) = *(v16 + 16);
      for (i = *(DerivedStorage + 1024); i; i = *(i + 24))
      {
        if (*(i + 80) <= *(a1 + 80) && (*(i + 244) & 1) != 0)
        {
          time1 = *(a1 + 232);
          time2 = *(i + 232);
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            v18 = *(i + 232);
            *(a1 + 248) = *(i + 248);
            *(a1 + 232) = v18;
          }
        }
      }

      if ((*(a1 + 244) & 0x1D) != 1)
      {
        fpfs_GetNextTimeToPlay(DerivedStorage, 0, &time1);
        *(a1 + 232) = time1;
      }
    }

    if (!a2)
    {
      if (!*(a1 + 128) && (*(a1 + 244) & 1) != 0)
      {
        fpfs_EnsureEndTimerProcForTrack(a1);
      }

      goto LABEL_39;
    }

LABEL_38:
    fpfs_StopPlayingItemWithOSStatus(v8, v6, a2);
    goto LABEL_39;
  }

  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a2)
  {
    goto LABEL_38;
  }

LABEL_39:
  if (target)
  {
    CFRelease(target);
  }

  return a2;
}

void fpfs_SendBufferQueueToChomper(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
  if (v4)
  {
    v5 = v4;
    *v4 = a2;
    v6 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v6)
    {
      v7 = v6;
LABEL_11:
      v5[1] = v7;
      global_queue = dispatch_get_global_queue(-2, 0);

      dispatch_async_f(global_queue, v5, fpfs_BufferChomper);
      return;
    }

    v8 = *(a1 + 984);
    if (v8)
    {
      CFRelease(v8);
    }

    v7 = FigOSTransactionCreate();
    *(a1 + 984) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    if (v7)
    {
      goto LABEL_11;
    }

    FigSignalErrorAtGM();
    free(v5);
  }

  else
  {
    FigSignalErrorAtGM();
  }

  FigBufferQueueRelease();
}

void fpfs_PrepareAndEnqueueTracksChangedNotification(uint64_t a1, const void *a2)
{
  CMBaseObjectGetDerivedStorage();
  NotificationPayloadForProperties = fpfs_CreateNotificationPayloadForProperties(a1, a2, v4, v5, v6, v7, v8, v9, @"TrackIDArray", @"CurrentStableVariantID");
  if (NotificationPayloadForProperties)
  {
    fpfs_EnqueueNotification(a1, @"TracksChanged", a2, NotificationPayloadForProperties);

    CFRelease(NotificationPayloadForProperties);
  }
}

void fpfs_FreeTrack(void *a1)
{
  CMBaseObjectGetDerivedStorage();
  if (a1[13])
  {
    CMNotificationCenterGetDefaultLocalCenter();
    FigNotificationCenterRemoveWeakListener();
  }

  CFRelease(a1);
}

void fpfs_ChangeTrackState(uint64_t a1, unsigned int a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = *(a1 + 168);
  if (v4 == a2)
  {
    goto LABEL_13;
  }

  if (dword_1EAF169F0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = *(a1 + 168);
  }

  if ((*(a1 + 156) & 1) != 0 || a2 <= 8 && ((1 << a2) & 0x103) != 0)
  {
    v6 = v4;
  }

  else
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    a2 = 0;
    v6 = *(a1 + 168);
  }

  if (v6 == 8)
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(a1 + 168) = a2;
  if (v4 == 1)
  {
    fpfs_ResolveAllWaitingTracks(*(a1 + 16));
    if (v9)
    {
LABEL_13:
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

uint64_t fpfs_UpdateCurrentAccessLogEntryPlayTimes(uint64_t result)
{
  v1 = result;
  if ((*(result + 2648) & 0x8000000000000000) == 0)
  {
LABEL_2:
    CMBaseObjectGetDerivedStorage();
    v2 = *(v1 + 2648);
    if ((v2 & 0x8000000000000000) == 0 && v2 < CFArrayGetCount(*(v1 + 1920)))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(v1 + 1920), v2);
      if (ValueAtIndex)
      {
        v4 = ValueAtIndex;
        if (CFDictionaryContainsKey(ValueAtIndex, @"c-provisional-entry"))
        {
          if (CFDictionaryContainsKey(v4, @"date") || *(v1 + 1952) <= 0.0)
          {
LABEL_10:
            if (!fpfs_UpdateAccessLogEntryPlayTimeForKey(v4, @"c-duration-watched", *(v1 + 1960), *(v1 + 1952), fabsf(*(v1 + 840))) && !fpfs_UpdateAccessLogEntryPlayTimeForKey(v4, @"c-wall-clock-duration-watched", *(v1 + 1968), *(v1 + 1952), 1.0))
            {
              if (*(v1 + 840) == 0.0)
              {
                *(v1 + 1952) = 0;
                v8 = 0;
              }

              else
              {
                *(v1 + 1952) = CFAbsoluteTimeGetCurrent();
                fpfs_GetTime(v1, &lhs);
                v14 = *(v1 + 1160);
                CMTimeAdd(&time, &lhs, &v14);
                *(v1 + 1944) = CMTimeGetSeconds(&time);
                v8 = *(v1 + 1952);
              }

              *(v1 + 1960) = 0;
              *(v1 + 1968) = 0;
              *(v1 + 1936) = v8;
            }

            goto LABEL_24;
          }

          AllocatorForMedia = FigGetAllocatorForMedia();
          v6 = CFDateCreate(AllocatorForMedia, *(v1 + 1952));
          if (v6)
          {
            v7 = v6;
            CFDictionarySetValue(v4, @"date", v6);
            CFRelease(v7);
            goto LABEL_10;
          }

          fpfs_UpdateCurrentAccessLogEntryPlayTimes_cold_1();
        }
      }

      else
      {
        fpfs_UpdateCurrentAccessLogEntryPlayTimes_cold_2();
      }
    }

LABEL_24:
    result = FigCFArrayGetValueAtIndex();
    if (result)
    {
      result = CFDictionaryContainsKey(result, @"c-total-audio-channels");
      if (!result)
      {
        v11 = *(v1 + 1024);
        if (v11)
        {
          v12 = 0;
          do
          {
            if (*(v11 + 168) == 6 && *(v11 + 48) == 1936684398)
            {
              result = fpfs_GetAudioOutputChannelCount(*(v11 + 56), 0, 0);
              if (v12 <= result)
              {
                result = fpfs_GetAudioOutputChannelCount(*(v11 + 56), 0, 0);
                v12 = result;
              }
            }

            v11 = *(v11 + 24);
          }

          while (v11);
          if (v12 >= 1)
          {
            return FigCFDictionarySetInt64();
          }
        }
      }
    }

    return result;
  }

  v9 = *(result + 1024);
  if (v9)
  {
    while (1)
    {
      if (*(v9 + 168) == 6 && (*(v9 + 440) & 0x8000000000000000) == 0 && *(v1 + 1088) == *(v9 + 196))
      {
        v10 = FigCFArrayGetValueAtIndex();
        result = CFDictionaryContainsKey(v10, @"c-provisional-entry");
        if (result)
        {
          break;
        }
      }

      v9 = *(v9 + 24);
      if (!v9)
      {
        if ((*(v1 + 2648) & 0x8000000000000000) == 0)
        {
          goto LABEL_2;
        }

        return result;
      }
    }

    v13 = *(v9 + 440);
    *(v1 + 2648) = v13;
    if ((v13 & 0x8000000000000000) == 0)
    {
      goto LABEL_2;
    }
  }

  return result;
}

uint64_t fpfs_GetAudioOutputChannelCount(CMAudioFormatDescriptionRef desc, uint64_t a2, int a3)
{
  if (a2 && a3)
  {
    FigAudioFormatDescriptionGetBestDecodableFormatAndChannelLayoutForRenderingPreferences();
  }

  RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(desc);
  if (!RichestDecodableFormat)
  {
    return CMAudioFormatDescriptionGetChannelCount();
  }

  mChannelsPerFrame = RichestDecodableFormat->mASBD.mChannelsPerFrame;
  if (a3)
  {
    if (FigAudioFormatDescriptionRequiresImmersiveRendering())
    {
      return 0x7FFFFFFFLL;
    }

    else
    {
      return mChannelsPerFrame;
    }
  }

  return mChannelsPerFrame;
}

uint64_t fpfs_UpdateAccessLogEntryPlayTimeForKey(const __CFDictionary *a1, const void *a2, double a3, double a4, double a5)
{
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
    v9 = valuePtr;
  }

  else
  {
    v9 = 0.0;
  }

  valuePtr = v9 + a3;
  if (a4 != 0.0)
  {
    valuePtr = valuePtr + (CFAbsoluteTimeGetCurrent() - a4) * a5;
  }

  return FigCFDictionarySetDouble();
}

CFTypeRef fpfsi_copyCurrentVideoDestination()
{
  v0 = *(CMBaseObjectGetDerivedStorage() + 1024);
  if (!v0)
  {
    return 0;
  }

  while (*(v0 + 48) != 1986618469 || !*(v0 + 112))
  {
    v0 = *(v0 + 24);
    if (!v0)
    {
      return 0;
    }
  }

  v2 = *(v0 + 104);
  if (!v2)
  {
    return 0;
  }

  return CFRetain(v2);
}

uint64_t fpfs_FirstTrackWithFormatDescriptionOfType(uint64_t a1, int a2)
{
  result = CMBaseObjectGetDerivedStorage();
  if (result)
  {
    for (result = *(result + 1024); result; result = *(result + 24))
    {
      if (*(result + 48) == a2 && *(result + 56))
      {
        break;
      }
    }
  }

  return result;
}

uint64_t fpfs_SetFeederTrack(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2 != a2)
  {
    v4 = result;
    if (v2)
    {
      *(v2 + 197) = 0;
      result = CMBaseObjectGetDerivedStorage();
      if (dword_1EAF169F0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        result = fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(v4 + 8) = 0;
      for (i = *(v4 + 88); i; i = *(i + 88))
      {
        *(i + 8) = 0;
      }
    }

    if (a2)
    {
      *(v4 + 8) = a2;
      v7 = *(v4 + 88);
      v8 = a2;
      if (v7)
      {
        do
        {
          *(v7 + 8) = a2;
          v7 = *(v7 + 88);
        }

        while (v7);
        v8 = *(v4 + 8);
      }

      *(v8 + 197) = 1;
      result = CMBaseObjectGetDerivedStorage();
      if (dword_1EAF169F0)
      {
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        return fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  return result;
}

uint64_t fpfs_LastRenderingTrackofType(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(CMBaseObjectGetDerivedStorage() + 1024);
  v6 = v5 == 0;
  result = 0;
  while (!v6 && v5 != a3)
  {
    if (*(v5 + 48) == a2)
    {
      if (*(v5 + 112))
      {
        result = v5;
      }
    }

    v5 = *(v5 + 24);
    v6 = v5 == 0;
  }

  return result;
}

void fpfs_deferredAudioPlayResourceReleased(int a1, int a2, uint64_t a3, const void *a4, int a5, int a6, int a7, int a8)
{
  fpfsi_CopyPlayerAndItemFromItemRetainProxyAndLockPlayer(a2, &v36, &v37, a4, a5, a6, a7, a8, v32, v33, v34, v35, 0, rhs.value, rhs.timescale, SBYTE2(rhs.timescale), HIBYTE(rhs.timescale), rhs.flags, rhs.epoch, SHIDWORD(rhs.epoch), v39, v40, type.value, *&type.timescale, type.epoch, v42, v43.value, *&v43.timescale, v43.epoch, v44, v45.value, *&v45.timescale, v45.epoch, v46, *v47, *&v47[8], *&v47[16], *&v47[24], v48.value, *&v48.timescale, v48.epoch, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, *MEMORY[0x1E69E9840], v63, v64, v65, v66, v67, v68, v69);
  if (!v9)
  {
    v10 = v37;
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v12 = DerivedStorage[128];
    if (v12)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        if (!v13)
        {
          if (*(v12 + 48) == 1936684398 && *(v12 + 112))
          {
            if (*(v12 + 438))
            {
              v13 = v12;
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }
        }

        v15 = *(v12 + 112);
        if (v15 && *(v15 + 32) == a4)
        {
          *(v12 + 437) = 1;
          v14 = v12;
        }

        v12 = *(v12 + 24);
      }

      while (v12);
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    if (!dword_1EAF169F0)
    {
LABEL_35:
      if (!v13 || !*(v13 + 112) || *(v13 + 472) || !v14)
      {
        goto LABEL_59;
      }

      if (*(v13 + 80) == *(v14 + 80))
      {
        HaveSamePassthroughFormat = fpfs_DoTracksHaveSamePassthroughFormat(v13, v14, 0);
      }

      else
      {
        LOBYTE(v48.value) = 0;
        HaveSamePassthroughFormat = fpfs_DoTracksHaveSamePassthroughFormat(v13, v14, &v48);
        if (LOBYTE(v48.value))
        {
          v25 = FigAudioFormatDescriptionRequiresImmersiveRendering();
          v26 = FigAudioFormatDescriptionRequiresImmersiveRendering();
          if (v25 && v26)
          {
            HaveSamePassthroughFormat = 1;
          }

          else if (v25 == v26)
          {
            AudioOutputChannelCount = fpfs_GetAudioOutputChannelCount(*(v13 + 56), 0, 0);
            HaveSamePassthroughFormat = AudioOutputChannelCount == fpfs_GetAudioOutputChannelCount(*(v14 + 56), 0, 0);
          }

          else
          {
            HaveSamePassthroughFormat = 0;
          }
        }
      }

      if (!HaveSamePassthroughFormat || !*(*(v13 + 112) + 25) && fpfs_SetTimebaseOnTrack())
      {
LABEL_59:
        v30 = v36;
        fpfs_UnlockAndPostNotificationsWithCaller(v36);
        if (!v30)
        {
          goto LABEL_61;
        }

        goto LABEL_60;
      }

      if (*(v14 + 472))
      {
        fpfs_SetRateOnTrack();
        if (v31)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (gFSPIsCrossfadeOn == 1)
        {
          memset(&v45, 0, sizeof(v45));
          CMBaseObjectGetDerivedStorage();
          v48 = *(v13 + 208);
          type = *(v14 + 232);
          rhs = *(v13 + 208);
          CMTimeSubtract(&v43, &type, &rhs);
          type = v43;
          rhs = *gFSPAudioCrossfadeDuration;
          if (CMTimeCompare(&type, &rhs) >= 1)
          {
            v43 = *gFSPAudioCrossfadeDuration;
          }

          type = v43;
          rhs = **&MEMORY[0x1E6960CC0];
          if (CMTimeCompare(&type, &rhs) >= 1)
          {
            type = v48;
            rhs = v43;
            CMTimeAdd(&v45, &type, &rhs);
            type = v48;
            rhs = v45;
            fpfs_scheduleVolumeRamping(v13, 0.0, 1.0);
            type = v48;
            rhs = v45;
            fpfs_scheduleVolumeRamping(v14, 1.0, 0.0);
          }
        }

        v28 = *(*(v13 + 112) + 32);
        v29 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v29 || v29(v28))
        {
          goto LABEL_59;
        }
      }

      *(v13 + 438) = 0;
      goto LABEL_59;
    }

    LODWORD(v43.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = v43.value;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value))
    {
      v18 = value;
    }

    else
    {
      v18 = value & 0xFFFFFFFE;
    }

    if (!v18)
    {
LABEL_34:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_35;
    }

    v19 = *DerivedStorage;
    if (*DerivedStorage)
    {
      v20 = (CMBaseObjectGetDerivedStorage() + 888);
      if (v10)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v20 = "";
      if (v10)
      {
LABEL_24:
        v21 = (CMBaseObjectGetDerivedStorage() + 3096);
        if (v14)
        {
LABEL_25:
          v22 = *(v14 + 32);
LABEL_30:
          if (v13)
          {
            v23 = *(v13 + 32);
          }

          else
          {
            v23 = -1;
          }

          LODWORD(v45.value) = 136316674;
          *(&v45.value + 4) = "fpfs_deferredAudioPlayResourceReleased";
          LOWORD(v45.flags) = 2048;
          *(&v45.flags + 2) = v19;
          HIWORD(v45.epoch) = 2082;
          v46 = v20;
          *v47 = 2048;
          *&v47[2] = v10;
          *&v47[10] = 2082;
          *&v47[12] = v21;
          *&v47[20] = 1024;
          *&v47[22] = v22;
          *&v47[26] = 1024;
          *&v47[28] = v23;
          _os_log_send_and_compose_impl();
          goto LABEL_34;
        }

LABEL_29:
        v22 = -1;
        goto LABEL_30;
      }
    }

    v21 = "";
    if (v14)
    {
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  v30 = v36;
  if (v36)
  {
LABEL_60:
    CFRelease(v30);
  }

LABEL_61:
  if (v37)
  {
    CFRelease(v37);
  }

  FigRetainProxyRelease();
  if (a4)
  {
    CFRelease(a4);
  }
}

void fpfs_releaseRenderChain(const __CFArray *a1, void *a2)
{
  queueOut[27] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  if ((*a2)-- != 1)
  {
    return;
  }

  v7 = v5;
  if (*(a2 + 24))
  {
    fpfs_EstablishTimebase(a1);
  }

  v8 = *(a2 + 2);
  if (v8)
  {
    MediaType = CMFormatDescriptionGetMediaType(v8);
    switch(MediaType)
    {
      case 0x636C6370u:
        FPSupport_resetClosedCaptionLayer(v7 + 208);
        break;
      case 0x736F756Eu:
        v11 = 0;
LABEL_14:
        v10 = 1;
        goto LABEL_15;
      case 0x76696465u:
        v10 = 0;
        v11 = 1;
LABEL_15:
        FigFormatDescriptionRelease();
        *(a2 + 2) = 0;
        goto LABEL_16;
    }

    v11 = 1;
    goto LABEL_14;
  }

  v11 = 1;
  v10 = 1;
LABEL_16:
  v12 = *(a2 + 6);
  if (v12)
  {
    CFRelease(v12);
    *(a2 + 6) = 0;
  }

  v13 = *(a2 + 4);
  if (v13)
  {
    queueOut[0] = 0;
    FPSupport_ForgetAboutMetadataOutputRenderPipeline(*(DerivedStorage + 1888), v13);
    v14 = *(DerivedStorage + 1872);
    if (v14)
    {
      FigLegibleOutputManagerForgetAboutLegibleOutputRenderPipeline(v14, *(a2 + 4));
    }

    if (v10)
    {
      if ((v11 & 1) == 0)
      {
        fpfsi_RemoveAudioRenderChainListeners();
      }
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterRemoveWeakListener();
    }

    FigBaseObject = FigRenderPipelineGetFigBaseObject(*(a2 + 4));
    v16 = *(CMBaseObjectGetVTable() + 8);
    if (*v16 >= 2uLL)
    {
      v17 = v16[8];
      if (v17)
      {
        v17(FigBaseObject);
      }
    }

    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (*(a2 + 5) && (AllocatorForMedia = FigGetAllocatorForMedia(), CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers(), !CMBufferQueueCreate(AllocatorForMedia, 0, CallbacksForUnsortedSampleBuffers, queueOut)))
    {
      MEMORY[0x19A8CE710](*(a2 + 5), fpfs_StealBuffer, queueOut[0]);
      fpfs_SendBufferQueueToChomper(v7, queueOut[0]);
    }

    else
    {
      v21 = *(a2 + 4);
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 64);
      if (v22)
      {
        v22(v21, 0);
      }
    }

    v23 = FigRenderPipelineGetFigBaseObject(*(a2 + 4));
    if (v23)
    {
      v24 = v23;
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v25)
      {
        v25(v24);
      }
    }

    CFRelease(*(a2 + 4));
    *(a2 + 4) = 0;
  }

  if (*(a2 + 5))
  {
    FigBufferQueueRelease();
    *(a2 + 5) = 0;
  }

  v26 = *(a2 + 7);
  if (v26)
  {
    CFRelease(v26);
    *(a2 + 7) = 0;
  }

  v27 = *(a2 + 8);
  if (v27)
  {
    CFRelease(v27);
    *(a2 + 8) = 0;
  }

  v28 = *(a2 + 9);
  if (v28)
  {
    CFRelease(v28);
    *(a2 + 9) = 0;
  }

  if ((v10 & 1) == 0)
  {
    --*(v7 + 672);
  }

  if (*(a2 + 11))
  {
    fpfs_releaseRenderChain(a1);
  }

  free(a2);
}

uint64_t fpfsi_FirstImageEnqueued(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v9[25] = *MEMORY[0x1E69E9840];
  v8 = 0;
  v9[0] = 0;
  result = fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, v9, &v8);
  if (result)
  {
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if (dword_1EAF169F0)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (a4)
    {
      CFRetain(a4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMBaseObjectGetDerivedStorage();
    FigGetAllocatorForMedia();
    return FigDeferNotificationToDispatchQueue();
  }

  return result;
}

uint64_t fpfs_DoTracksHaveSamePassthroughFormat(uint64_t a1, uint64_t a2, char *a3)
{
  v8 = 0;
  v5 = fpfs_WantAudioHardwarePassthroughForTrack(a1, &v8 + 1);
  if (v5 == fpfs_WantAudioHardwarePassthroughForTrack(a2, &v8) && (!v5 || HIDWORD(v8) == v8))
  {
    v6 = 1;
    result = 1;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    v6 = 0;
    result = 0;
    if (!a3)
    {
      return result;
    }
  }

  if (v5)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t fpfs_UnlockWithCaller()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  v3 = __OFSUB__(v1, 1);
  v2 = v1 - 1 < 0;
  v4 = v1 - 1;
  if (v2 == v3)
  {
    *(DerivedStorage + 8) = v4;
  }

  return FigSimpleMutexUnlock();
}

uint64_t fpfs_passthroughFormatForAudioFormat(const opaqueCMFormatDescription *a1)
{
  v2 = 1700997939;
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  if (MediaSubType <= 1885692722)
  {
    if (MediaSubType > 1700997938)
    {
      if (MediaSubType == 1700997939)
      {
        return v2;
      }

      if (MediaSubType != 1700998451)
      {
        v4 = 1885547315;
        goto LABEL_16;
      }

      goto LABEL_18;
    }

    if (MediaSubType == 1667574579)
    {
      return v2;
    }

    v5 = 1667575091;
LABEL_12:
    if (MediaSubType != v5)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  if (MediaSubType > 1902469938)
  {
    if (MediaSubType == 2053464883)
    {
      goto LABEL_18;
    }

    if (MediaSubType == 2053319475)
    {
      return v2;
    }

    v5 = 1902469939;
    goto LABEL_12;
  }

  if (MediaSubType != 1885692723)
  {
    v4 = 1902324531;
LABEL_16:
    if (MediaSubType == v4)
    {
      return v2;
    }

    goto LABEL_27;
  }

LABEL_18:
  sizeOut = 0;
  FormatList = CMAudioFormatDescriptionGetFormatList(a1, &sizeOut);
  if (FormatList && sizeOut > 0x2F)
  {
    mFormatID = FormatList->mASBD.mFormatID;
    if (mFormatID <= 1885547314)
    {
      if (mFormatID == 1667574579)
      {
        return v2;
      }

      v8 = 1700997939;
    }

    else
    {
      if (mFormatID == 1885547315 || mFormatID == 1902324531)
      {
        return v2;
      }

      v8 = 2053319475;
    }

    if (mFormatID == v8)
    {
      return v2;
    }
  }

LABEL_27:
  v9 = 1633889587;
  v10 = CMFormatDescriptionGetMediaSubType(a1);
  v2 = 1700998451;
  if (v10 > 1885430578)
  {
    if (v10 <= 1902469938)
    {
      if (v10 == 1885430579)
      {
        return v9;
      }

      if (v10 != 1885692723)
      {
        v11 = 1902207795;
LABEL_43:
        if (v10 != v11)
        {
          return 0;
        }

        return v9;
      }

      return v2;
    }

    if (v10 == 1902469939)
    {
      return v2;
    }

    if (v10 == 2053202739)
    {
      return v9;
    }

    v12 = 2053464883;
LABEL_39:
    if (v10 != v12)
    {
      return 0;
    }

    return v2;
  }

  if (v10 <= 1667326770)
  {
    if (v10 == 1633889587)
    {
      return v9;
    }

    v11 = 1667312947;
    goto LABEL_43;
  }

  if (v10 == 1667326771)
  {
    return v9;
  }

  if (v10 != 1667575091)
  {
    v12 = 1700998451;
    goto LABEL_39;
  }

  return v2;
}

uint64_t CMAudioFormatDescriptionIsAtmos(const opaqueCMFormatDescription *a1)
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
  result = 1;
  if (MediaSubType <= 1885692722)
  {
    if (MediaSubType > 1700997938)
    {
      if (MediaSubType == 1700997939)
      {
        return result;
      }

      if (MediaSubType != 1700998451)
      {
        v4 = 1885547315;
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (MediaSubType == 1667574579)
    {
      return result;
    }

    v5 = 1667575091;
LABEL_12:
    if (MediaSubType != v5)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (MediaSubType > 1902469938)
  {
    if (MediaSubType == 2053464883)
    {
      goto LABEL_16;
    }

    if (MediaSubType == 2053319475)
    {
      return result;
    }

    v5 = 1902469939;
    goto LABEL_12;
  }

  if (MediaSubType != 1885692723)
  {
    v4 = 1902324531;
    goto LABEL_24;
  }

LABEL_16:
  sizeOut = 0;
  FormatList = CMAudioFormatDescriptionGetFormatList(a1, &sizeOut);
  result = 0;
  if (FormatList && sizeOut >= 0x30)
  {
    MediaSubType = FormatList->mASBD.mFormatID;
    result = 1;
    if (MediaSubType <= 1885547314)
    {
      if (MediaSubType == 1667574579)
      {
        return result;
      }

      v4 = 1700997939;
LABEL_24:
      if (MediaSubType == v4)
      {
        return result;
      }

      return 0;
    }

    if (MediaSubType != 1885547315 && MediaSubType != 1902324531)
    {
      v4 = 2053319475;
      goto LABEL_24;
    }
  }

  return result;
}

void fpfsi_StoreTrackPerformanceDictionaries(uint64_t a1, CFArrayRef *a2)
{
  Mutable = *a2;
  if (!*a2)
  {
    AllocatorForMedia = FigGetAllocatorForMedia();
    Mutable = CFArrayCreateMutable(AllocatorForMedia, 0, MEMORY[0x1E695E9C0]);
    *a2 = Mutable;
  }

  v6 = *(a1 + 112);
  if (!*(v6 + 80))
  {
    goto LABEL_9;
  }

  Count = CFArrayGetCount(Mutable);
  Mutable = *a2;
  if (Count <= 0)
  {
    v6 = *(a1 + 112);
LABEL_9:
    CFArrayAppendValue(Mutable, *(v6 + 72));
    *(*(a1 + 112) + 80) = 1;
    return;
  }

  v8 = CFArrayGetCount(*a2) - 1;
  v9 = *(*(a1 + 112) + 72);

  CFArraySetValueAtIndex(Mutable, v8, v9);
}

uint64_t fpfs_CancelGaplessAttemptGuts(uint64_t a1, const void *a2, int a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CMBaseObjectGetDerivedStorage();
  v8 = *(result + 1024);
  if (v8)
  {
    while (*(v8 + 48) != 1936684398 || !*(v8 + 112))
    {
      v8 = *(v8 + 24);
      if (!v8)
      {
        return result;
      }
    }

    if (*(DerivedStorage + 2472) && *(v8 + 439))
    {
      if (*(DerivedStorage + 2473))
      {
        result = fpfs_EnqueueNotification(a1, @"CancelNextItemTransitionTimer", a2, 0);
        *(DerivedStorage + 2473) = 0;
      }

      *(DerivedStorage + 2472) = 0;
      *(v8 + 439) = 0;
      if (a3)
      {

        return fpfs_stopResetDisturbReprepareAndResume(a1, a2, 0);
      }
    }
  }

  return result;
}

uint64_t FigRenderPipelineCancelAndFlushTransition(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(a1, a2);
}

uint64_t fpfsi_EnsureRenderChainListenersAndPropertiesForAudioTrack()
{
  CMBaseObjectGetDerivedStorage();
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterAddWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterAddWeakListener();
}

uint64_t fpfsi_RemoveAudioRenderChainListeners()
{
  CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

uint64_t fpfs_EnqueueNotification(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 8);
  v9 = fpfs_EnqueueNotificationWithoutLocking(a1, a2, a3, a4);
  fpfs_UnlockAndPostNotificationsWithCaller(a1);
  return v9;
}

uint64_t fpfs_EnqueueNotificationWithoutLocking(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = DerivedStorage;
  v9 = (DerivedStorage + 88);
  if (*(DerivedStorage + 88))
  {
    v10 = *(DerivedStorage + 96);
    if (*(v10 - 24) == a3 && *(v10 - 16) == a4 && CFEqual(*(v10 - 32), a2))
    {
      return 0;
    }
  }

  v11 = malloc_type_malloc(0x28uLL, 0xE0040CDB25F8DuLL);
  if (v11)
  {
    v12 = v11;
    if (CFEqual(a2, @"StreamLikelyToKeepUp"))
    {
      v13 = *v9;
      while (v13)
      {
        while (1)
        {
          v14 = v13;
          v13 = *(v13 + 32);
          if (CFEqual(*v14, @"StreamUnlikelyToKeepUp"))
          {
            v15 = *(v14 + 8);
            if (v15 == a3)
            {
              break;
            }
          }

          if (!v13)
          {
            goto LABEL_23;
          }
        }

        v16 = *v9;
        if (*v9 == v14)
        {
          v21 = *(v16 + 32);
          *v9 = v21;
          v19 = v9;
          if (v21)
          {
            goto LABEL_15;
          }
        }

        else
        {
          do
          {
            v17 = v16;
            v16 = *(v16 + 32);
          }

          while (v16 != v14);
          v18 = *(v16 + 32);
          *(v17 + 32) = v18;
          v19 = (v17 + 32);
          if (v18)
          {
            goto LABEL_15;
          }
        }

        *(v8 + 96) = v19;
LABEL_15:
        if (a3)
        {
          CFRelease(v15);
        }

        v20 = *(v14 + 16);
        if (v20)
        {
          CFRelease(v20);
        }

        free(v14);
      }
    }

LABEL_23:
    *v12 = a2;
    if (a3)
    {
      v22 = CFRetain(a3);
    }

    else
    {
      v22 = 0;
    }

    v12[1] = v22;
    if (a4)
    {
      v23 = CFRetain(a4);
    }

    else
    {
      v23 = 0;
    }

    v12[2] = v23;
    v24 = MEMORY[0x19A8D35D0]();
    result = 0;
    v12[3] = v24;
    v12[4] = 0;
    **(v8 + 96) = v12;
    *(v8 + 96) = v12 + 4;
  }

  else
  {
    fpfs_EnqueueNotificationWithoutLocking_cold_1(&v26);
    return v26;
  }

  return result;
}

void fpfs_AudioPlayResourceReleased(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = 0;
  cf = 0;
  if (!fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, &cf, &v6))
  {
    FigRetainProxyRetain();
    if (a4)
    {
      CFRetain(a4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v5 = v6;
    CMBaseObjectGetDerivedStorage();
    FigGetAllocatorForMedia();
    FigDeferNotificationToDispatchQueue();
    if (cf)
    {
      CFRelease(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void fpfsi_AudioLatencyChanged(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  cf[25] = *MEMORY[0x1E69E9840];
  v8 = 0;
  cf[0] = 0;
  if (fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, cf, &v8))
  {
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if (dword_1EAF169F0)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigRetainProxyRetain();
    if (a4)
    {
      CFRetain(a4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v7 = v8;
    CMBaseObjectGetDerivedStorage();
    FigGetAllocatorForMedia();
    FigDeferNotificationToDispatchQueue();
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

void fpfsi_renderPipelineRequiresManualRestart(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  cf[25] = *MEMORY[0x1E69E9840];
  v8 = 0;
  cf[0] = 0;
  if (fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, cf, &v8))
  {
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if (dword_1EAF169F0)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigRetainProxyRetain();
    if (a4)
    {
      CFRetain(a4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v7 = v8;
    CMBaseObjectGetDerivedStorage();
    FigGetAllocatorForMedia();
    FigDeferNotificationToDispatchQueue();
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

void fpfsi_RenderPipelineFailedToStart(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  cf[25] = *MEMORY[0x1E69E9840];
  v8 = 0;
  cf[0] = 0;
  if (fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, cf, &v8))
  {
    if (dword_1EAF169F0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    if (dword_1EAF169F0)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    FigRetainProxyRetain();
    if (a4)
    {
      CFRetain(a4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v7 = v8;
    CMBaseObjectGetDerivedStorage();
    FigGetAllocatorForMedia();
    FigDeferNotificationToDispatchQueue();
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

void fpfsi_RenderPipelineWantsRebuildToIncreaseFidelity(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = 0;
  cf = 0;
  if (!fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, &cf, &v6))
  {
    FigRetainProxyRetain();
    if (a4)
    {
      CFRetain(a4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v5 = v6;
    CMBaseObjectGetDerivedStorage();
    FigGetAllocatorForMedia();
    FigDeferNotificationToDispatchQueue();
    if (cf)
    {
      CFRelease(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void fpfsi_RenderPipelineDeviceHasDisconnected(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = 0;
  cf = 0;
  if (!fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, &cf, &v6))
  {
    FigRetainProxyRetain();
    if (a4)
    {
      CFRetain(a4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v5 = v6;
    CMBaseObjectGetDerivedStorage();
    FigGetAllocatorForMedia();
    FigDeferNotificationToDispatchQueue();
    if (cf)
    {
      CFRelease(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void fpfsi_renderPipelineProcessingModeChanged(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = 0;
  cf = 0;
  if (!fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, &cf, &v6))
  {
    FigRetainProxyRetain();
    if (a4)
    {
      CFRetain(a4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v5 = v6;
    CMBaseObjectGetDerivedStorage();
    FigGetAllocatorForMedia();
    FigDeferNotificationToDispatchQueue();
    if (cf)
    {
      CFRelease(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void fpfsi_RenderPipelinePrerollLost(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = 0;
  cf = 0;
  if (!fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, &cf, &v6))
  {
    FigRetainProxyRetain();
    if (a4)
    {
      CFRetain(a4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v5 = v6;
    CMBaseObjectGetDerivedStorage();
    FigGetAllocatorForMedia();
    FigDeferNotificationToDispatchQueue();
    if (cf)
    {
      CFRelease(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void fpfsi_renderPipelineStartupTimestampsChanged(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = 0;
  cf = 0;
  if (!fpfsi_CopyPlayerAndItemFromItemRetainProxy(a2, &cf, &v6))
  {
    FigRetainProxyRetain();
    if (a4)
    {
      CFRetain(a4);
    }

    CMNotificationCenterGetDefaultLocalCenter();
    v5 = v6;
    CMBaseObjectGetDerivedStorage();
    FigGetAllocatorForMedia();
    FigDeferNotificationToDispatchQueue();
    if (cf)
    {
      CFRelease(cf);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

uint64_t fpfsi_ClearCachedAudioRenderChains(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 824))
  {
    fpfs_releaseRenderChain(a1);
  }

  *(DerivedStorage + 824) = 0;
  return 0;
}

void fpfsi_MoveTrackToPlayedOut(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v5 = a1;
  v103 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 16);
  v7 = *a1;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = fpfs_shouldCheckAndReportVariantEnded(a2);
  v9 = *(a2 + 112);
  if (v9 && (v10 = *(v9 + 40)) != 0)
  {
    memset(&refcon, 0, sizeof(refcon));
    CMBufferQueueGetFirstPresentationTimeStamp(&refcon, v10);
    memset(&v81, 0, sizeof(v81));
    CMBufferQueueGetEndPresentationTimeStamp(&v81, *(*(a2 + 112) + 40));
    memset(&v80, 0, sizeof(v80));
    CMBufferQueueGetDuration(&v80, *(*(a2 + 112) + 40));
    time1 = v80;
    time2 = **&MEMORY[0x1E6960CC0];
    v11 = CMTimeCompare(&time1, &time2);
    AllocatorForMedia = FigGetAllocatorForMedia();
    v13 = AllocatorForMedia;
    if (v11 < 1)
    {
      v17 = CFStringCreateWithCString(AllocatorForMedia, "inputQueue empty", 0x8000100u);
    }

    else
    {
      time1 = refcon;
      Seconds = CMTimeGetSeconds(&time1);
      time1 = v81;
      v15 = CMTimeGetSeconds(&time1);
      time1 = v80;
      v16 = CMTimeGetSeconds(&time1);
      v17 = CFStringCreateWithFormat(v13, 0, @"inputQueue remaining : [%g->%g](dur:%g)", *&Seconds, *&v15, *&v16);
    }

    cf = v17;
  }

  else
  {
    cf = 0;
  }

  fpfs_ReleaseTrackRenderChain(a2);
  if (*(a2 + 168) == 6)
  {
    v24 = *(a2 + 48);
    if (v24 == 1936684398)
    {
      fpfs_PrepareAndEnqueueSpatialAudioRenderingChangedNotification(*v5, *(a2 + 16), v18, v19, v20, v21, v22, v23);
      v24 = *(a2 + 48);
    }

    if (v24 == 1986618469)
    {
      v25 = *(a2 + 24);
      if (v25)
      {
        v26 = MEMORY[0x1E6960CC0];
        do
        {
          if (*(v25 + 48) == 1986618469 && (*(v25 + 168) | 4) == 5 && !*(v25 + 280))
          {
            fpfs_GetTime(v5, &refcon);
            fpfs_PrimeVideoSyncTimer(v25, &refcon, v26);
          }

          v25 = *(v25 + 24);
        }

        while (v25);
      }
    }
  }

  if (v8)
  {
    fpfsi_RTCReportingReportCheckAndReportVariantEnded(v5, a2);
  }

  v27 = v5[128];
  if (v27 == a2)
  {
    v30 = v5 + 128;
    v41 = *(v27 + 24);
    v5[128] = v41;
    if (!v41)
    {
LABEL_24:
      v5[129] = v30;
    }
  }

  else
  {
    do
    {
      v28 = v27;
      v27 = *(v27 + 24);
    }

    while (v27 != a2);
    v29 = *(v27 + 24);
    *(v28 + 24) = v29;
    v30 = (v28 + 24);
    if (!v29)
    {
      goto LABEL_24;
    }
  }

  v31 = *(a2 + 168);
  v32 = v31 > 7;
  v33 = (1 << v31) & 0xB0;
  if (!v32 && v33 != 0)
  {
    if (dword_1EAF169F0)
    {
      LODWORD(v80.value) = 0;
      LOBYTE(time1.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = v80.value;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, time1.value))
      {
        v44 = value;
      }

      else
      {
        v44 = value & 0xFFFFFFFE;
      }

      if (v44)
      {
        v66 = *v5;
        if (*v5)
        {
          v67 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v67 = "";
        }

        if (v6)
        {
          v68 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v68 = "";
        }

        v69 = *(a2 + 32);
        LODWORD(v81.value) = 136316418;
        *(&v81.value + 4) = "fpfsi_MoveTrackToPlayedOut";
        LOWORD(v81.flags) = 2048;
        *(&v81.flags + 2) = v66;
        HIWORD(v81.epoch) = 2082;
        v82 = v67;
        v83 = 2048;
        v84 = v6;
        v85 = 2082;
        v86 = v68;
        v87 = 1024;
        v88 = v69;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    fpfs_ChangeTrackState(a2, 6u);
    v70 = v5[321];
    if (v70)
    {
      v71 = *(a2 + 448);
      v72 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v72)
      {
        v72(v70, @"playerStats", 0x1F0B42338, v71, 0);
      }
    }

    fpfsi_RTCReportingUpdateVariantRank(v5, *(a2 + 464), *(a2 + 468));
  }

  fpfsi_RemoveAndClearTimer((a2 + 128));
  fpfs_unscheduleRanDryTimer(v6, a2);
  *(a2 + 120) = 0;
  if (*(a3 + 12))
  {
    time1.value = 0;
    v35 = FigGetAllocatorForMedia();
    CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
    if (!CMBufferQueueCreate(v35, 0, CallbacksForUnsortedSampleBuffers, &time1))
    {
      *&refcon.timescale = *a3;
      v37 = *(a3 + 2);
      refcon.value = time1.value;
      v102 = v37;
      CMBufferQueueCallForEachBuffer(*(a2 + 96), fpfs_GrabBuffersBeforeTime, &refcon);
      v38 = *(a2 + 96);
      if (v38)
      {
        BufferCount = CMBufferQueueGetBufferCount(v38);
        v40 = *(a2 + 96);
        if (BufferCount < 1)
        {
          if (v40)
          {
            CFRelease(*(a2 + 96));
          }
        }

        else
        {
          fpfs_SendBufferQueueToChomper(DerivedStorage, v40);
        }
      }

      *(a2 + 96) = time1.value;
      v81 = *(a2 + 232);
      v80 = *a3;
      if (CMTimeCompare(&v81, &v80) >= 1)
      {
        v45 = *a3;
        *(a2 + 248) = *(a3 + 2);
        *(a2 + 232) = v45;
      }

      v46 = MEMORY[0x1E6960C98];
      v47 = *(MEMORY[0x1E6960C98] + 16);
      *(a2 + 512) = *MEMORY[0x1E6960C98];
      *(a2 + 528) = v47;
      *(a2 + 544) = *(v46 + 32);
    }
  }

  if (dword_1EAF169F0)
  {
    LODWORD(v80.value) = 0;
    LOBYTE(time1.value) = 0;
    v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v49 = v80.value;
    if (os_log_type_enabled(v48, time1.value))
    {
      v50 = v49;
    }

    else
    {
      v50 = v49 & 0xFFFFFFFE;
    }

    if (v50)
    {
      v51 = *v5;
      if (*v5)
      {
        v52 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v52 = "";
      }

      v73 = v52;
      v74 = v5;
      v76 = v7;
      if (v6)
      {
        v53 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v53 = "";
      }

      v54 = *(a2 + 32);
      v55 = *(a2 + 48);
      v56 = HIBYTE(v55);
      v57 = BYTE2(v55);
      v58 = BYTE1(v55);
      v59 = v55;
      refcon = *(a2 + 232);
      v60 = CMTimeGetSeconds(&refcon);
      LODWORD(v81.value) = 136317954;
      *(&v81.value + 4) = "fpfsi_MoveTrackToPlayedOut";
      LOWORD(v81.flags) = 2048;
      *(&v81.flags + 2) = v51;
      HIWORD(v81.epoch) = 2082;
      v82 = v73;
      v83 = 2048;
      v84 = v6;
      v85 = 2082;
      v86 = v53;
      v87 = 1024;
      v88 = v54;
      v89 = 1024;
      v90 = v56;
      v91 = 1024;
      v92 = v57;
      v93 = 1024;
      v94 = v58;
      v95 = 1024;
      v96 = v59;
      v97 = 2048;
      v98 = v60;
      v99 = 2114;
      v100 = cf;
      _os_log_send_and_compose_impl();
      v5 = v74;
      v7 = v76;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v61 = v5 + 130;
  v62 = v5[130];
  if (v62)
  {
    v63 = *(a2 + 32);
    v64 = v5[130];
    while (1)
    {
      v65 = *(v64 + 24);
      if (*(v64 + 32) < v63)
      {
        if (!v65)
        {
          v61 = (v64 + 24);
          goto LABEL_72;
        }

        if (*(v65 + 32) > v63)
        {
          break;
        }
      }

      v64 = *(v64 + 24);
      if (!v65)
      {
        *(a2 + 24) = v62;
        goto LABEL_74;
      }
    }

    v61 = (v64 + 24);
    *(a2 + 24) = v65;
  }

  else
  {
LABEL_72:
    *(a2 + 24) = 0;
    v5[131] = a2 + 24;
  }

LABEL_74:
  *v61 = a2;
  if (*(a2 + 48) == 1986618469)
  {
    fpfsi_PostExternalProtectionRequiredChangedNotification(*(a2 + 16));
  }

  fpfs_CompleteLogIfLastTrack(v6, a2);
  fpfs_PrepareAndEnqueueTracksChangedNotification(v7, v6);
}

__n128 fpfs_DecodeTimeForAudioRandomAccessInBufferQueue@<Q0>(uint64_t a1@<X0>, CMTime *a2@<X2>, uint64_t a3@<X8>)
{
  v15 = *MEMORY[0x1E69E9840];
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  CMBaseObjectGetDerivedStorage();
  memset(&v9, 0, sizeof(v9));
  lhs = *a2;
  rhs = *(a1 + 412);
  CMTimeAdd(&v12, &lhs, &rhs);
  lhs = *(a1 + 144);
  CMTimeSubtract(&v9, &v12, &lhs);
  if ((v9.flags & 0x1D) != 1)
  {
    v9 = *a2;
  }

  lhs = v9;
  FigDecodeTimeForAudioRandomAccessInBufferQueue(&v12);
  value = v12.value;
  flags = v12.flags;
  timescale = v12.timescale;
  if ((v12.flags & 0x1D) == 1)
  {
    epoch = v12.epoch;
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    lhs.value = value;
    lhs.timescale = timescale;
    lhs.flags = flags;
    lhs.epoch = epoch;
    rhs = *(a1 + 412);
    CMTimeSubtract(&v12, &lhs, &rhs);
    lhs = *(a1 + 144);
    CMTimeAdd(a3, &v12, &lhs);
    if ((*(a3 + 12) & 0x1D) != 1)
    {
      *a3 = value;
      *(a3 + 8) = timescale;
      *(a3 + 12) = flags;
      *(a3 + 16) = epoch;
    }
  }

  else
  {
    result = *&a2->value;
    *a3 = *&a2->value;
    *(a3 + 16) = a2->epoch;
  }

  return result;
}

uint64_t fpfsi_ReuseSamplesInQueue(CMSampleBufferRef sbuf, uint64_t *a2)
{
  v4 = *a2;
  if (*(a2 + 89) || !fpfs_IsMarkerOnly(sbuf) || fpfs_IsMarkerSampleContainingAttachment(sbuf, *MEMORY[0x1E6960538]))
  {
    memset(&v10, 0, sizeof(v10));
    CMSampleBufferGetOutputPresentationTimeStamp(&v10, sbuf);
    memset(&v9, 0, sizeof(v9));
    lhs = *(a2 + 1);
    rhs = *(a2 + 4);
    CMTimeSubtract(&v9, &lhs, &rhs);
    if (!fpfs_IsMarkerOnly(sbuf))
    {
      memset(&v8, 0, sizeof(v8));
      CMSampleBufferGetPresentationTimeStamp(&time2, sbuf);
      rhs = time2;
      time1 = *(v4 + 412);
      CMTimeSubtract(&lhs, &rhs, &time1);
      rhs = *(v4 + 144);
      CMTimeAdd(&v8, &lhs, &rhs);
      memset(&lhs, 0, sizeof(lhs));
      CMSampleBufferGetDuration(&lhs, sbuf);
      memset(&rhs, 0, sizeof(rhs));
      if (lhs.flags)
      {
        time1 = v8;
        time2 = lhs;
        CMTimeAdd(&rhs, &time1, &time2);
      }

      else
      {
        rhs = v8;
      }

      time1 = rhs;
      time2 = v9;
      if (CMTimeCompare(&time1, &time2) < 0 || (*(a2 + 68) & 1) != 0 && (time1 = rhs, time2 = *(a2 + 7), CMTimeCompare(&time1, &time2) > 0))
      {
        if (!*(a2 + 88))
        {
          return 0;
        }

        if (fpfs_IsVideoSync(sbuf))
        {
          time1 = v8;
          time2 = v9;
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            *(a2 + 92) = v10;
            CMBufferQueueReset(a2[10]);
          }
        }

        time1 = rhs;
        time2 = *(a2 + 7);
        if (CMTimeCompare(&time1, &time2) >= 1)
        {
          memset(&time1, 0, sizeof(time1));
          CMSampleBufferGetOutputDecodeTimeStamp(&time1, sbuf);
          time2 = time1;
          v6 = *(a2 + 7);
          if (CMTimeCompare(&time2, &v6) > 0)
          {
            return 0;
          }

          fpfs_DoNotDisplay(sbuf);
        }
      }

      else
      {
        time1 = v8;
        time2 = v10;
        if (CMTimeCompare(&time1, &time2))
        {
          CMRemoveAttachment(sbuf, *MEMORY[0x1E6960560]);
          time1 = v8;
          CMSampleBufferSetOutputPresentationTimeStamp(sbuf, &time1);
        }

        CMRemoveAttachment(sbuf, *MEMORY[0x1E6960510]);
        fpfs_RemoveDoNotDisplay(sbuf);
      }
    }

    CMRemoveAttachment(sbuf, *MEMORY[0x1E6960500]);
    CMBufferQueueEnqueue(a2[10], sbuf);
  }

  return 0;
}

__n128 fpfs_unscheduleRanDryTimer(uint64_t a1, uint64_t a2)
{
  CMBaseObjectGetDerivedStorage();
  v4 = *(a2 + 136);
  if (v4)
  {
    v6 = *MEMORY[0x1E6960C88];
    v7 = *(MEMORY[0x1E6960C88] + 16);
    FigSpeedRampTimerScheduleForL2Time(v4, &v6, 1u);
    v5 = MEMORY[0x1E6960C70];
    result = *MEMORY[0x1E6960C70];
    *(a2 + 172) = *MEMORY[0x1E6960C70];
    *(a2 + 188) = *(v5 + 16);
  }

  return result;
}

uint64_t fpfs_GrabBuffersBeforeTime(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  memset(&v7, 0, sizeof(v7));
  CMSampleBufferGetOutputDecodeTimeStamp(&time1, a1);
  CMSampleBufferGetOutputPresentationTimeStamp(&v5, a1);
  CMTimeMinimum(&v7, &time1, &v5);
  if (fpfs_IsMarkerOnly(a1) || (time1 = v7, v5 = *(a2 + 8), CMTimeCompare(&time1, &v5) <= 0))
  {
    CMBufferQueueEnqueue(*a2, a1);
  }

  return 0;
}

uint64_t fpfsi_PostExternalProtectionRequiredChangedNotification(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *DerivedStorage;
  result = fpfsi_GetExternalProtectionMethodRequiredForPlayback();
  if (*(DerivedStorage + 3000) != result)
  {
    *(DerivedStorage + 3000) = result;

    return fpfs_EnqueueNotification(v3, @"RequiresExternalProtectionChanged", a1, 0);
  }

  return result;
}

uint64_t fpfs_PrimeVideoSyncTimer(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v8 = CMBaseObjectGetDerivedStorage();
  v32 = 0uLL;
  v33 = 0;
  v31 = *a2;
  values = 0;
  v54 = 0;
  if (*(v8 + 456))
  {
    v9 = -249;
  }

  else
  {
    v9 = -32;
  }

  v10 = *(a1 + 280);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 280) = 0;
  }

  lhs = v31;
  rhs = *a3;
  CMTimeSubtract(&v31, &lhs, &rhs);
  CMTimeMake(&rhs, v9, 1000);
  v30 = v31;
  CMTimeAdd(&lhs, &v30, &rhs);
  v31 = lhs;
  fpfs_GetTime(DerivedStorage, &v32);
  lhs = v31;
  *&rhs.value = v32;
  rhs.epoch = v33;
  if (CMTimeCompare(&lhs, &rhs) <= 0)
  {
    CMTimeMake(&rhs, 10, 1000);
    *&v30.value = v32;
    v30.epoch = v33;
    CMTimeAdd(&lhs, &v30, &rhs);
    v31 = lhs;
  }

  FigRetainProxyRetain();
  v11 = *(a1 + 32);
  values = *(DerivedStorage + 16);
  v54 = v11;
  AllocatorForMedia = FigGetAllocatorForMedia();
  v13 = CFArrayCreate(AllocatorForMedia, &values, 2, 0);
  fpfsi_CreateTimebaseTimer(v6, *(DerivedStorage + 600), v13, fpfs_VideoSyncTimerDispatchFunc, fpfs_VideoSyncTimerCancelFunc, (a1 + 280));
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 280);
  if (!v14)
  {
    return FigRetainProxyRelease();
  }

  lhs = v31;
  result = FigSpeedRampTimerScheduleForL2Time(v14, &lhs, 1u);
  if (dword_1EAF169F0)
  {
    LODWORD(v30.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = v30.value;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v18 = value;
    }

    else
    {
      v18 = value & 0xFFFFFFFE;
    }

    if (v18)
    {
      v19 = *DerivedStorage;
      if (*DerivedStorage)
      {
        v20 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v20 = "";
      }

      v29 = v20;
      if (v6)
      {
        v21 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v21 = "";
      }

      v28 = v21;
      v22 = *(a1 + 32);
      lhs = v31;
      Seconds = CMTimeGetSeconds(&lhs);
      lhs = *a2;
      v24 = CMTimeGetSeconds(&lhs);
      lhs = *a3;
      v25 = CMTimeGetSeconds(&lhs);
      *&lhs.value = v32;
      lhs.epoch = v33;
      v26 = CMTimeGetSeconds(&lhs);
      Rate = CMTimebaseGetRate(*(DerivedStorage + 576));
      LODWORD(rhs.value) = 136317698;
      *(&rhs.value + 4) = "fpfs_PrimeVideoSyncTimer";
      LOWORD(rhs.flags) = 2048;
      *(&rhs.flags + 2) = v19;
      HIWORD(rhs.epoch) = 2082;
      v35 = v29;
      v36 = 2048;
      v37 = v6;
      v38 = 2082;
      v39 = v28;
      v40 = 2048;
      v41 = v22;
      v42 = 2048;
      v43 = Seconds;
      v44 = 2048;
      v45 = v24;
      v46 = 2048;
      v47 = v25;
      v48 = 2048;
      v49 = v26;
      v50 = 2048;
      v51 = Rate;
      _os_log_send_and_compose_impl();
    }

    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

uint64_t fpfsi_CreateTimebaseTimer(const void *a1, NSObject *a2, const void *a3, uint64_t a4, uint64_t a5, CFTypeRef *a6)
{
  cf = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = CFGetAllocator(a1);
  v14 = FigSpeedRampTimerCreate(v13, *(DerivedStorage + 3376), *(DerivedStorage + 576), 1uLL, a2, a3, a4, a5, &cf);
  if (v14)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a6 = cf;
  }

  return v14;
}

uint64_t fpfs_VideoSyncTimerCancelFunc(const __CFArray *a1)
{
  CFArrayGetValueAtIndex(a1, 0);

  return FigRetainProxyRelease();
}

BOOL fpfs_IsTrialReadyToComplete(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 1024);
  if (!v3)
  {
    v5 = 0;
    return v5 == *(a1 + 1752);
  }

  v5 = 0;
  v6 = MEMORY[0x1E6960C70];
  v7 = 1;
  do
  {
    v8 = *(v3 + 196);
    if (*(v3 + 64) == *(a1 + 976 + 16 * v8 + 8))
    {
      v5 |= 1 << v8;
      if (v3 != a2 && (*(v3 + 200) || *(v3 + 168) == 1))
      {
        v9 = *(v3 + 48);
        if (v9 == 1936684398)
        {
          fpfs_GetTime(a1, &v13);
          v12 = *v6;
          v10 = fpfs_CheckAudioSync(a1, v3, 0, &v13, &v12, 1, 0);
        }

        else
        {
          if (v9 != 1986618469)
          {
            goto LABEL_4;
          }

          v10 = fpfs_CheckVideoSyncQueue(v3, 1);
        }

        if (!v10)
        {
          v7 = 0;
        }
      }
    }

LABEL_4:
    v3 = *(v3 + 24);
  }

  while (v3);
  if (!v7)
  {
    return 0;
  }

  return v5 == *(a1 + 1752);
}

void fpfs_StopPlayingItemWithOSStatus(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf = 0;
  FigCreateErrorForOSStatus(a3, &cf);
  fpfs_StopPlayingItem();
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t fpfs_CheckAudioSync(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, CMTime *a4, CMTime *a5, int a6, CMTime *a7)
{
  if (!*(a2 + 199))
  {
    return 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  TrackOfType = fpfs_LastTrackOfType(*(a2 + 16), 1936684398, a2);
  v16 = TrackOfType;
  if (TrackOfType)
  {
    *&v29.value = *(TrackOfType + 208);
    v17 = *(TrackOfType + 224);
  }

  else
  {
    *&v29.value = *MEMORY[0x1E6960C80];
    v17 = *(MEMORY[0x1E6960C80] + 16);
  }

  v29.epoch = v17;
  memset(&v28, 0, sizeof(v28));
  v27 = *a4;
  v19 = *(a2 + 64);
  v20 = *(a2 + 196);
  if (a6)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19 == *(a1 + 976 + 16 * v20 + 8);
  }

  v22 = !v21;
  if (!TrackOfType)
  {
    if (*(a1 + 840) == 0.0)
    {
      goto LABEL_27;
    }

    if (v19 != *(a1 + 976 + 16 * v20))
    {
      CMTimeMake(&rhs, 250, 1000);
      lhs = *a4;
      CMTimeAdd(&v27, &lhs, &rhs);
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  if (*(TrackOfType + 244))
  {
    memset(&rhs, 0, sizeof(rhs));
    lhs = *(TrackOfType + 232);
    v24 = *gFSPAudioCrossfadeDuration;
    CMTimeSubtract(&rhs, &lhs, &v24);
    lhs = *a5;
    v24 = rhs;
    if (CMTimeCompare(&lhs, &v24) >= 1)
    {
      *a5 = rhs;
    }
  }

  if (*(a1 + 840) == 0.0 && !*(v16 + 439))
  {
    goto LABEL_25;
  }

  if ((*(v16 + 244) & 1) == 0 || !*(CMBaseObjectGetDerivedStorage() + 504))
  {
LABEL_24:
    CMTimeMake(&rhs, 2, 1);
    lhs = *a4;
    CMTimeAdd(&v27, &lhs, &rhs);
    if (!v16)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v27 = *(v16 + 232);
LABEL_25:
  if (fpfs_canCrossfade(DerivedStorage, v16, a2))
  {
    lhs = *a5;
    v24 = *gFSPAudioCrossfadeDuration;
    CMTimeSubtract(&rhs, &lhs, &v24);
    *&a5->value = *&rhs.value;
    epoch = rhs.epoch;
    a5->epoch = rhs.epoch;
    *&lhs.value = *&a5->value;
    lhs.epoch = epoch;
    *&v24.value = kAudioRampingDownSilenceDuration;
    v24.epoch = 0;
    CMTimeSubtract(&rhs, &lhs, &v24);
    *a5 = rhs;
  }

LABEL_27:
  rhs = v27;
  lhs = *a5;
  if (CMTimeCompare(&rhs, &lhs) >= 1)
  {
    v27 = *a5;
  }

  rhs = v27;
  lhs = v29;
  if (CMTimeCompare(&rhs, &lhs) < 0)
  {
    v27 = v29;
  }

  rhs = v27;
  lhs = *(a2 + 312);
  if (CMTimeCompare(&rhs, &lhs) < 0)
  {
    v27 = *(a2 + 312);
  }

  if (CMBufferQueueIsEmpty(*(a2 + 88)))
  {
    if (a3)
    {
      CMSampleBufferGetOutputPresentationTimeStamp(&v28, a3);
    }

    else
    {
      v28 = **&MEMORY[0x1E6960C70];
    }
  }

  else
  {
    CMBufferQueueGetMinPresentationTimeStamp(&v28, *(a2 + 88));
  }

  rhs = v28;
  lhs = *a5;
  if (CMTimeCompare(&rhs, &lhs) <= 0)
  {
    rhs = v27;
    result = (fpfs_IsAudioTrackReadyToStart(a2, a3, &rhs, v22) != 0) & v22;
    if (!a7)
    {
      return result;
    }
  }

  else
  {
    CMBufferQueueEnqueue(*(a2 + 88), a3);
    result = 0;
    if (!a7)
    {
      return result;
    }
  }

  *a7 = v27;
  return result;
}

uint64_t fpfs_canCrossfade(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = gFSPIsCrossfadeOn == 1 && *(a1 + 504) == 0;
  if (!v3 || *(a2 + 48) != 1936684398 || *(a3 + 48) != 1936684398)
  {
    return 0;
  }

  fpfs_canCrossfade_cold_1();
  return v5;
}

CMTime *fpfs_GetEndOutputPresentationTimeStamp@<X0>(opaqueCMSampleBuffer *a1@<X0>, CMTime *a2@<X8>)
{
  memset(&v8, 0, sizeof(v8));
  CMSampleBufferGetOutputPresentationTimeStamp(&v8, a1);
  memset(&v7, 0, sizeof(v7));
  result = CMSampleBufferGetOutputDuration(&v7, a1);
  if (v7.flags)
  {
    lhs = v8;
    v5 = v7;
    return CMTimeAdd(a2, &lhs, &v5);
  }

  else
  {
    *a2 = v8;
  }

  return result;
}

opaqueCMSampleBuffer *fpfs_TrimAudioTrack(uint64_t a1, CMTime *a2)
{
  v2 = a2;
  v48 = *MEMORY[0x1E69E9840];
  v29 = *a2;
  if (*(a1 + 436))
  {
    lhs = *a2;
    fpfs_DecodeTimeForAudioRandomAccessInBufferQueue(a1, &lhs, &v29);
  }

  else
  {
    lhs = *a2;
    rhs = *(a1 + 412);
    CMTimeSubtract(&v29, &lhs, &rhs);
  }

  result = CMBufferQueueGetHead(*(a1 + 88));
  if (result)
  {
    v5 = result;
    v6 = (a1 + 412);
    v7 = &unk_1EAF16000;
    v23 = v2;
    do
    {
      memset(&v28, 0, sizeof(v28));
      memset(&v27, 0, sizeof(v27));
      CMSampleBufferGetPresentationTimeStamp(&v26, v5);
      rhs = v26;
      v30 = *v6;
      CMTimeSubtract(&lhs, &rhs, &v30);
      rhs = *(a1 + 144);
      CMTimeAdd(&v27, &lhs, &rhs);
      lhs = v27;
      rhs = *v2;
      result = CMTimeCompare(&lhs, &rhs);
      if ((result & 0x80000000) == 0)
      {
        break;
      }

      CMSampleBufferGetDuration(&lhs, v5);
      rhs = v27;
      CMTimeAdd(&v28, &rhs, &lhs);
      lhs = v28;
      rhs = v29;
      result = CMTimeCompare(&lhs, &rhs);
      if (result > 0)
      {
        break;
      }

      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (v7[636] >= 2u)
      {
        v9 = DerivedStorage;
        LODWORD(v30.value) = 0;
        LOBYTE(v26.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = v30.value;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v26.value))
        {
          v12 = value;
        }

        else
        {
          v12 = value & 0xFFFFFFFE;
        }

        if (v12)
        {
          v13 = *v9;
          if (*v9)
          {
            v14 = (CMBaseObjectGetDerivedStorage() + 888);
          }

          else
          {
            v14 = "";
          }

          v25 = v14;
          v15 = *(a1 + 16);
          if (v15)
          {
            v16 = (CMBaseObjectGetDerivedStorage() + 3096);
          }

          else
          {
            v16 = "";
          }

          v24 = v16;
          v17 = *(a1 + 32);
          v18 = v27.value;
          timescale = v27.timescale;
          lhs = v27;
          Seconds = CMTimeGetSeconds(&lhs);
          lhs = v28;
          v21 = CMTimeGetSeconds(&lhs);
          LODWORD(rhs.value) = 136317442;
          *(&rhs.value + 4) = "fpfs_TrimAudioTrack";
          LOWORD(rhs.flags) = 2048;
          *(&rhs.flags + 2) = v13;
          HIWORD(rhs.epoch) = 2082;
          v32 = v25;
          v33 = 2048;
          v34 = v15;
          v35 = 2082;
          v36 = v24;
          v37 = 2048;
          v38 = v17;
          v39 = 2048;
          v40 = v18;
          v41 = 1024;
          v42 = timescale;
          v43 = 2048;
          v44 = Seconds;
          v45 = 2048;
          v46 = v21;
          _os_log_send_and_compose_impl();
          v6 = (a1 + 412);
          v2 = v23;
          v7 = &unk_1EAF16000;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v22 = CMBufferQueueDequeueAndRetain(*(a1 + 88));
      if (v22)
      {
        CFRelease(v22);
      }

      result = CMBufferQueueGetHead(*(a1 + 88));
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t fpfs_isDecryptorReady(uint64_t a1)
{
  cf = 0;
  v1 = *(a1 + 400);
  AllocatorForMedia = FigGetAllocatorForMedia();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3 || v3(v1, *MEMORY[0x1E6961118], AllocatorForMedia, &cf))
  {
    return 1;
  }

  v4 = *MEMORY[0x1E695E4D0] == cf;
  CFRelease(cf);
  return v4;
}

uint64_t fpfs_CanRenderAudio()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 523))
  {
    return 0;
  }

  v2 = DerivedStorage;
  if (*(CMBaseObjectGetDerivedStorage() + 504))
  {
    return 1;
  }

  result = *(v2 + 536);
  if (result)
  {
    return FPSupport_IsAnAudioDeviceAvailable(result) != 0;
  }

  return result;
}

double fpfs_GetTrackStartupQueueDuration@<D0>(uint64_t a1@<X0>, CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v10, 0, sizeof(v10));
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  CMBufferQueueGetDuration(a3, *(a1 + 88));
  time1 = *a3;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    refcon = 0;
    CMBufferQueueCallForEachBuffer(*(a1 + 88), fpfs_GetMinSampleInStartupQueue, &refcon);
    if (refcon)
    {
      memset(&v8, 0, sizeof(v8));
      CMSampleBufferGetPresentationTimeStamp(&v7, refcon);
      time2 = v7;
      rhs = *(a1 + 412);
      CMTimeSubtract(&time1, &time2, &rhs);
      time2 = *(a1 + 144);
      CMTimeAdd(&v8, &time1, &time2);
      time1 = *a2;
      time2 = v8;
      CMTimeSubtract(&v10, &time1, &time2);
      time2 = *a3;
      rhs = v10;
      CMTimeSubtract(&time1, &time2, &rhs);
      result = *&time1.value;
      *a3 = time1;
    }
  }

  return result;
}

uint64_t fpfs_CheckCanKeepUp(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  memset(&v22, 0, sizeof(v22));
  lhs = *a3;
  rhs = *(DerivedStorage + 1160);
  CMTimeAdd(&v22, &lhs, &rhs);
  v21 = 0;
  v16 = *(DerivedStorage + 912);
  if (v16)
  {
    *&v20.value = *a2;
    v20.epoch = *(a2 + 16);
    v19 = v22;
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v17)
    {
      lhs = v20;
      rhs = v19;
      v17(v16, &lhs, &rhs, a4, a5, a6, a7, a8, &v21);
      return v21;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (a6)
    {
      *a6 = 0;
    }
  }

  return result;
}

uint64_t fpfs_GetMinSampleInStartupQueue(opaqueCMSampleBuffer *a1, CMSampleBufferRef *a2)
{
  memset(&v8, 0, sizeof(v8));
  CMSampleBufferGetPresentationTimeStamp(&v8, a1);
  memset(&v7, 0, sizeof(v7));
  CMSampleBufferGetDecodeTimeStamp(&v7, a1);
  if (fpfs_IsMarkerOnly(a1))
  {
    return 0;
  }

  if (v7.flags)
  {
    if (!*a2 || (CMSampleBufferGetPresentationTimeStamp(&time2, *a2), v5 = v8, CMTimeCompare(&v5, &time2) < 0))
    {
      *a2 = a1;
    }

    if (fpfs_IsVideoSync(a1))
    {
      return 4294954433;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *a2 = a1;
    return 4294954433;
  }
}

BOOL fpfs_IsMarkerOnly(opaqueCMSampleBuffer *a1)
{
  if (CMSampleBufferGetNumSamples(a1))
  {
    return 0;
  }

  CMSampleBufferGetOutputPresentationTimeStamp(&v3, a1);
  return (v3.flags & 1) == 0;
}

CMItemCount fpfs_IsVideoSync(opaqueCMSampleBuffer *a1)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    if (ValueAtIndex)
    {
      v4 = ValueAtIndex;
      v5 = *MEMORY[0x1E6960458];
      if (CFDictionaryContainsKey(ValueAtIndex, *MEMORY[0x1E6960458]))
      {
        return CFDictionaryGetValue(v4, v5) == *MEMORY[0x1E695E4C0];
      }
    }
  }

  else
  {
    result = CMSampleBufferGetNumSamples(a1);
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

uint64_t fpfs_CanRenderVideo(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80))
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (*(a1 + 525))
    {
      if (*(DerivedStorage + 912))
      {
        if (*(DerivedStorage + 400))
        {
          FigCFDictionaryGetBooleanIfPresent();
        }

        cf = 0;
        v5 = *(CMBaseObjectGetDerivedStorage() + 912);
        if (!v5)
        {
          return 0;
        }

        AllocatorForMedia = FigGetAllocatorForMedia();
        FigBaseObject = FigBytePumpGetFigBaseObject(v5);
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v8)
        {
          return 0;
        }

        if (v8(FigBaseObject, @"FBP_HasKeyContent", AllocatorForMedia, &cf))
        {
          v9 = 1;
        }

        else
        {
          v9 = cf == *MEMORY[0x1E695E4D0];
        }

        v10 = v9;
        if (cf)
        {
          CFRelease(cf);
        }

        if (v10)
        {
          return 0;
        }
      }
    }
  }

  if (a2 && (v11 = CMBaseObjectGetDerivedStorage(), v12 = FigStreamingItemCombinedVideoDestinationCopyVisualContexts(*(v11 + 656)), TrackWithFormatDescriptionOfType = fpfs_FirstTrackWithFormatDescriptionOfType(a2, 1986618469), v12))
  {
    v14 = TrackWithFormatDescriptionOfType;
    if (CFArrayGetCount(v12) >= 1)
    {
      v15 = fpfsi_VideoOutputAllowedWithPermissivePolicy(v14);
    }

    else
    {
      v15 = 0;
    }

    CFRelease(v12);
  }

  else
  {
    v15 = 0;
  }

  v16 = *(a1 + 384);
  if (v16 && CFArrayGetCount(v16) > 0 || *(a1 + 408) >= 1)
  {
    v15 = 1;
  }

  if (FigStreamingPlayerCombinedVideoDestinationGetFVTCount(*(a1 + 376)) > 0)
  {
    result = 1;
  }

  else
  {
    result = v15;
  }

  if (*(a1 + 462))
  {
    if (a2)
    {
      if (*(a1 + 496))
      {
        return *(a1 + 80) == a2;
      }

      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t fpfs_FirstCandidateSyncTrackOfDiscontinuityDomainAndType(uint64_t a1, uint64_t a2)
{
  for (i = *(CMBaseObjectGetDerivedStorage() + 1024); i && i != a2; i = *(i + 24))
  {
    if (*(i + 168) == 6 && *(i + 48) == *(a2 + 48) && *(i + 80) == *(a2 + 80))
    {
      time1 = *(a2 + 288);
      v6 = *(i + 232);
      if (CMTimeCompare(&time1, &v6) < 1)
      {
        return i;
      }
    }
  }

  return 0;
}

uint64_t fpfsi_TrialSwitchDownInProgress(uint64_t a1)
{
  if (!*(a1 + 1680))
  {
    return 0;
  }

  result = *(a1 + 1744);
  if (result)
  {
    PeakBitRate = FigAlternateGetPeakBitRate(result);
    return PeakBitRate < FigAlternateGetPeakBitRate(*(a1 + 1680));
  }

  return result;
}

BOOL fpfs_TimeIsAfter(uint64_t a1, CMTime *a2, CMTime *a3)
{
  if (*(a1 + 108) >= 0.0)
  {
    time1 = *a2;
    v4 = *a3;
    return CMTimeCompare(&time1, &v4) > 0;
  }

  else
  {
    time1 = *a2;
    v4 = *a3;
    return CMTimeCompare(&time1, &v4) >> 31;
  }
}

uint64_t fpfs_GetFirstNonMarkerSBuf(opaqueCMSampleBuffer *a1, opaqueCMSampleBuffer **a2)
{
  if (fpfs_IsMarkerOnly(a1))
  {
    return 0;
  }

  *a2 = a1;
  return 0xFFFFFFFFLL;
}

void fpfs_DoNotDisplay(opaqueCMSampleBuffer *a1)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 1u);
  if (SampleAttachmentsArray)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    if (ValueAtIndex)
    {
      v3 = *MEMORY[0x1E6960410];
      v4 = *MEMORY[0x1E695E4D0];

      CFDictionarySetValue(ValueAtIndex, v3, v4);
    }
  }
}

uint64_t fpfs_RenderBuffer(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v61 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = CMBaseObjectGetDerivedStorage();
  v6 = a1 + 112;
  if (!*(a1 + 112))
  {
    return 0;
  }

  v7 = v5;
  v45 = 0uLL;
  v46 = 0;
  time1 = *(DerivedStorage + 1352);
  FPSTimelineConverterL3TimeToL2(&time1, &v45);
  if (*(a1 + 48) == 1986618469)
  {
    v8 = CMBaseObjectGetDerivedStorage();
    if (*(a1 + 48) == 1986618469)
    {
      fpfs_RenderBuffer_cold_1(a2, v8);
    }
  }

  if (*(v7 + 49))
  {
    if (v45.n128_u8[12])
    {
      memset(&v44, 0, sizeof(v44));
      fpfs_GetEndOutputPresentationTimeStamp(a2, &v44);
      if (v44.flags)
      {
        time1 = v44;
        *&time2.value = v45;
        time2.epoch = v46;
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          memset(&v43, 0, sizeof(v43));
          CMSampleBufferGetOutputPresentationTimeStamp(&v43, a2);
          memset(&v42, 0, sizeof(v42));
          CMSampleBufferGetOutputDecodeTimeStamp(&v42, a2);
          time1 = v43;
          *&time2.value = v45;
          time2.epoch = v46;
          if (CMTimeCompare(&time1, &time2) >= 1)
          {
            time1 = v42;
            *&time2.value = v45;
            time2.epoch = v46;
            if (CMTimeCompare(&time1, &time2) > 0)
            {
              return 0;
            }
          }

          time1 = v43;
          *&time2.value = v45;
          time2.epoch = v46;
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            *v41 = v45;
            *&v41[16] = v46;
            memset(&time1, 0, sizeof(time1));
            CMSampleBufferGetOutputPresentationTimeStamp(&time1, a2);
            memset(&time2, 0, sizeof(time2));
            memset(&v49, 0, sizeof(v49));
            type = *v41;
            rhs = time1;
            if (CMTimeCompare(&type, &rhs) >= 1)
            {
              v34 = *MEMORY[0x1E6960558];
              CMRemoveAttachment(a2, *MEMORY[0x1E6960558]);
              fpfs_GetEndOutputPresentationTimeStamp(a2, &time2);
              type = time2;
              rhs = *v41;
              if ((CMTimeCompare(&type, &rhs) & 0x80000000) == 0)
              {
                type = time2;
                rhs = *v41;
                CMTimeSubtract(&v49, &type, &rhs);
                type = v49;
                rhs = **&MEMORY[0x1E6960CC0];
                if (CMTimeCompare(&type, &rhs) >= 1)
                {
                  AllocatorForMedia = FigGetAllocatorForMedia();
                  type = v49;
                  v36 = CMTimeCopyAsDictionary(&type, AllocatorForMedia);
                  if (v36)
                  {
                    v37 = v36;
                    CMSetAttachment(a2, v34, v36, 1u);
                    CFRelease(v37);
                  }
                }
              }
            }
          }

          else
          {
            fpfs_DoNotDisplay(a2);
          }
        }
      }
    }
  }

  v9 = *(*v6 + 56);
  if (!v9)
  {
    goto LABEL_34;
  }

  if (dword_1EAF169F0)
  {
    LODWORD(v49.value) = 0;
    LOBYTE(type.value) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value = v49.value;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value))
    {
      v12 = value;
    }

    else
    {
      v12 = value & 0xFFFFFFFE;
    }

    if (v12)
    {
      v13 = *DerivedStorage;
      if (*DerivedStorage)
      {
        v14 = (CMBaseObjectGetDerivedStorage() + 888);
      }

      else
      {
        v14 = "";
      }

      v38 = v14;
      v39 = v7;
      v15 = *(a1 + 16);
      if (v15)
      {
        v16 = (CMBaseObjectGetDerivedStorage() + 3096);
      }

      else
      {
        v16 = "";
      }

      CMSampleBufferGetOutputPresentationTimeStamp(&time1, a2);
      Seconds = CMTimeGetSeconds(&time1);
      LODWORD(time2.value) = 136316674;
      *(&time2.value + 4) = "fpfs_RenderBuffer";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = v13;
      HIWORD(time2.epoch) = 2082;
      v51 = v38;
      v52 = 2048;
      v53 = v15;
      v54 = 2082;
      v55 = v16;
      v56 = 2048;
      v57 = *&a2;
      v58 = 2048;
      v59 = Seconds;
      _os_log_send_and_compose_impl();
      v7 = v39;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v9 = *(*v6 + 56);
  }

  CMSetAttachment(a2, *MEMORY[0x1E6960518], v9, 1u);
  CFRelease(*(*(a1 + 112) + 56));
  *(*(a1 + 112) + 56) = 0;
  if (*(a1 + 48) == 1986618469)
  {
    v18 = 1.0;
    if (*(v7 + 108) < 0.0 && !*(DerivedStorage + 2992))
    {
      v18 = -1.0;
    }

    *&time1.value = v18;
    if (CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &time1))
    {
      fpfs_RenderBuffer_cold_2(a1 + 112);
    }

LABEL_34:
    if (*(a1 + 48) == 1986618469)
    {
      if (*(a1 + 200) && (*(DerivedStorage + 332) & 1) != 0 && !*(a1 + 120))
      {
        for (i = *(CMBaseObjectGetDerivedStorage() + 1024); i; i = *(i + 24))
        {
          if (*(i + 48) == 1986618469 && *(i + 112))
          {
            break;
          }
        }

        if (i == a1)
        {
          fpfs_UnsuspendVideoRenderingForTrack();
          fpfs_PrerollTrack(a1);
        }
      }

      if (*(a1 + 48) == 1986618469)
      {
        if (*(a1 + 120))
        {
          if (!*(a1 + 200))
          {
            fpfs_GetEndOutputPresentationTimeStamp(a2, &time1);
            time2 = *(a1 + 208);
            if (CMTimeCompare(&time1, &time2) < 0)
            {
              fpfs_DoNotDisplay(a2);
            }
          }
        }
      }
    }
  }

  if ((*(DerivedStorage + 1460) & 1) != 0 && *(a1 + 48) == 1986618469 && !*(a1 + 200))
  {
    v26 = *(a1 + 16);
    time1 = *(DerivedStorage + 1448);
    if (fpfsi_ProcessVideoSampleForClamping(v26, a1, a2, &time1))
    {
      return 0;
    }
  }

  v20 = MEMORY[0x1E695E4D0];
  if (*(a1 + 201))
  {
    if (dword_1EAF169F0)
    {
      LODWORD(v49.value) = 0;
      LOBYTE(type.value) = 0;
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v22 = v49.value;
      if (os_log_type_enabled(v21, type.value))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 0xFFFFFFFE;
      }

      if (v23)
      {
        v40 = v7;
        v24 = *DerivedStorage;
        if (v24)
        {
          v25 = (CMBaseObjectGetDerivedStorage() + 888);
        }

        else
        {
          v25 = "";
        }

        v28 = *(a1 + 16);
        if (v28)
        {
          v29 = (CMBaseObjectGetDerivedStorage() + 3096);
        }

        else
        {
          v29 = "";
        }

        CMSampleBufferGetOutputPresentationTimeStamp(&time1, a2);
        v30 = CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 136316418;
        *(&time2.value + 4) = "fpfs_RenderBuffer";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = v24;
        HIWORD(time2.epoch) = 2082;
        v51 = v25;
        v52 = 2048;
        v53 = v28;
        v54 = 2082;
        v55 = v29;
        v56 = 2048;
        v57 = v30;
        _os_log_send_and_compose_impl();
        v7 = v40;
        v20 = MEMORY[0x1E695E4D0];
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSetAttachment(a2, *MEMORY[0x1E6960510], *v20, 1u);
    *(a1 + 201) = 0;
  }

  if (*(v7 + 108) < 0.0)
  {
    CMSetAttachment(a2, *MEMORY[0x1E6960520], *v20, 1u);
  }

  if (*(a1 + 48) == 1835365473)
  {
    LODWORD(time1.value) = *(a1 + 32);
    v31 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &time1);
    CMSetAttachment(a2, *MEMORY[0x1E6962E30], v31, 0);
    if (v31)
    {
      CFRelease(v31);
    }
  }

  v27 = CMBufferQueueEnqueue(*(*v6 + 40), a2);
  for (j = *(*v6 + 88); j; j = *(j + 88))
  {
    CMBufferQueueEnqueue(*(j + 40), a2);
  }

  return v27;
}

BOOL fpfs_IsVideoDependedOnByOthers(opaqueCMSampleBuffer *a1)
{
  SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a1, 0);
  if (SampleAttachmentsArray && (ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0)) != 0 && (v3 = ValueAtIndex, v4 = *MEMORY[0x1E6960450], CFDictionaryContainsKey(ValueAtIndex, *MEMORY[0x1E6960450])))
  {
    return CFDictionaryGetValue(v3, v4) == *MEMORY[0x1E695E4D0];
  }

  else
  {
    return 1;
  }
}

double fpfs_GetFirstPTSInRange(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  memset(&v7, 0, sizeof(v7));
  CMSampleBufferGetOutputPresentationTimeStamp(&v7, a1);
  if (!fpfs_IsMarkerOnly(a1))
  {
    time1 = v7;
    v5 = *(a2 + 24);
    if (CMTimeCompare(&time1, &v5) < 1 || (CMSampleBufferGetOutputDecodeTimeStamp(&time1, a1), v5 = *(a2 + 24), CMTimeCompare(&time1, &v5) <= 0))
    {
      time1 = v7;
      v5 = *a2;
      if ((CMTimeCompare(&time1, &v5) & 0x80000000) == 0)
      {
        time1 = v7;
        v5 = *(a2 + 24);
        if (CMTimeCompare(&time1, &v5) <= 0)
        {
          time1 = v7;
          v5 = *(a2 + 48);
          if (CMTimeCompare(&time1, &v5) < 0)
          {
            result = *&v7.value;
            *(a2 + 48) = v7;
          }
        }
      }
    }
  }

  return result;
}

CMTime *fpfs_GetStartupDurationOfType@<X0>(CMTime *result@<X0>, CMTime *a2@<X8>)
{
  v2 = result;
  v4 = MEMORY[0x1E6960CC0];
  *&a2->value = *MEMORY[0x1E6960CC0];
  a2->epoch = *(v4 + 16);
  value = result[2].value;
  do
  {
    if (*(v2 + 48) == value)
    {
      v6 = *(v2 + 208);
      fpfs_GetTrackStartupQueueDuration(v2, &v6, &rhs);
      v6 = *a2;
      result = CMTimeAdd(a2, &v6, &rhs);
    }

    v2 = *(v2 + 24);
  }

  while (v2);
  return result;
}

CMTime *fpfs_TimeAfterPlayback@<X0>(uint64_t a1@<X0>, CMTime *a2@<X1>, CMTime *a3@<X2>, CMTime *a4@<X8>)
{
  if (*(a1 + 108) >= 0.0)
  {
    lhs = *a2;
    v5 = *a3;
    return CMTimeAdd(a4, &lhs, &v5);
  }

  else
  {
    lhs = *a2;
    v5 = *a3;
    return CMTimeSubtract(a4, &lhs, &v5);
  }
}

uint64_t fpfs_CountNonDroppableUntil(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  memset(&v9, 0, sizeof(v9));
  CMSampleBufferGetOutputDecodeTimeStamp(&v9, a1);
  memset(&v8, 0, sizeof(v8));
  CMSampleBufferGetOutputDuration(&v8, a1);
  if (!fpfs_IsMarkerOnly(a1))
  {
    time1 = v9;
    time2 = *a2;
    if (CMTimeCompare(&time1, &time2) <= 0)
    {
      if (fpfs_IsVideoDependedOnByOthers(a1))
      {
        ++*(a2 + 48);
      }

      if (v8.flags)
      {
        ++*(a2 + 56);
        time2 = *(a2 + 24);
        v5 = v8;
        CMTimeAdd(&time1, &time2, &v5);
        *(a2 + 24) = time1;
      }
    }

    else
    {
      CMSampleBufferGetOutputPresentationTimeStamp(&time1, a1);
      time2 = *a2;
      if (CMTimeCompare(&time1, &time2) > 0)
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return 0;
}

BOOL fpfs_TimeIsAtOrAfter(uint64_t a1, CMTime *a2, CMTime *a3)
{
  time1 = *a2;
  v7 = *a3;
  if (!CMTimeCompare(&time1, &v7))
  {
    return 1;
  }

  time1 = *a2;
  v7 = *a3;
  return fpfs_TimeIsAfter(a1, &time1, &v7);
}

double fpfs_VideoSyncSearch(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  memset(&v9, 0, sizeof(v9));
  memset(&v8, 0, sizeof(v8));
  if (fpfs_IsVideoSync(a1))
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&v9, a1);
    lhs = v9;
    v6 = *(a2 + 24);
    CMTimeAdd(&v8, &lhs, &v6);
    lhs = v9;
    v6 = *(a2 + 120);
    if (CMTimeCompare(&lhs, &v6) < 0)
    {
      lhs = *a2;
      v6 = v8;
      if (CMTimeCompare(&lhs, &v6) <= 0)
      {
        lhs = v9;
        v6 = *(a2 + 48);
        if (CMTimeCompare(&lhs, &v6) >= 1)
        {
          v5 = (a2 + 72);
LABEL_10:
          result = *&v9.value;
          *v5 = v9;
          return result;
        }
      }

      v5 = (a2 + 96);
      if ((*(a2 + 108) & 0x1D) != 1)
      {
        goto LABEL_10;
      }

      lhs = v9;
      v6 = *a2;
      if (CMTimeCompare(&lhs, &v6) <= 0)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t fpfs_PrerollTrack(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 48) == 1986618469 && *(result + 112) && !*(result + 120))
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      if (*(v1 + 48) == 1986618469)
      {
        v3 = DerivedStorage;
        if (CMVideoFormatDescriptionGetVideoDynamicRange() >= 2 && !*(v1 + 200))
        {
          v4 = *(v3 + 1024);
          if (v4)
          {
            while (v4 != v1)
            {
              if (*(v4 + 48) != 1986618469 || CMVideoFormatDescriptionGetVideoDynamicRange() <= 1)
              {
                v4 = *(v4 + 24);
                if (v4)
                {
                  continue;
                }
              }

              goto LABEL_16;
            }

            CelestialPreallocateSurfaceMemoryForHDRVideo();
          }
        }
      }

LABEL_16:
      result = fpfs_PrerollRenderPipeline();
      *(v1 + 120) = result == 0;
    }
  }

  return result;
}

BOOL fpfsi_ProcessVideoSampleForClamping(uint64_t a1, uint64_t a2, opaqueCMSampleBuffer *a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  memset(&v20, 0, sizeof(v20));
  CMSampleBufferGetOutputDecodeTimeStamp(&v20, a3);
  memset(&v19, 0, sizeof(v19));
  CMSampleBufferGetOutputPresentationTimeStamp(&v19, a3);
  if (fpfs_IsMarkerOnly(a3))
  {
    v7 = CMGetAttachment(a3, *MEMORY[0x1E6960500], 0);
    v8 = (a4 + 12);
    if (*(a4 + 12))
    {
      if (v7)
      {
        v20 = *(a2 + 232);
        v19 = v20;
        if (dword_1EAF169F0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }
  }

  else
  {
    v8 = (a4 + 12);
  }

  if ((*v8 & 1) == 0 || (v20.flags & 1) == 0)
  {
    v10 = 0;
LABEL_10:
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a3, 0);
    if (SampleAttachmentsArray)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
    }

    else
    {
      ValueAtIndex = 0;
    }

    v13 = *MEMORY[0x1E6960488];
    if (FigCFDictionaryGetValue())
    {
      fpfs_RemoveDoNotDisplay(a3);
      CFDictionaryRemoveValue(ValueAtIndex, v13);
    }

    return v10;
  }

  time = v19;
  time2 = *a4;
  v14 = CMTimeCompare(&time, &time2);
  time = v20;
  time2 = *a4;
  v15 = CMTimeCompare(&time, &time2);
  if (v14 < 0 || (v15 & 0x80000000) == 0)
  {
    v10 = (v14 | v15) >= 0;
    if ((v14 & 0x80000000) == 0)
    {
      return v10;
    }

    goto LABEL_10;
  }

  v16 = CMSampleBufferGetSampleAttachmentsArray(a3, 0);
  if (v16)
  {
    CFArrayGetValueAtIndex(v16, 0);
  }

  if (FigCFDictionaryGetValue() != *MEMORY[0x1E695E4D0])
  {
    v17 = CMSampleBufferGetSampleAttachmentsArray(a3, 1u);
    if (v17)
    {
      CFArrayGetValueAtIndex(v17, 0);
    }

    FigCFDictionarySetValue();
    fpfs_DoNotDisplay(a3);
  }

  return 0;
}