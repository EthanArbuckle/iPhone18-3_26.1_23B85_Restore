void sub_10025EA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  *a8 = v8;
  *v9 = v10;
  JUMPOUT(0x10020C6F4);
}

uint64_t sub_10025EA9C()
{
  v3 = 457 * (v0 ^ 0xBC2);
  v9 = (v0 + 5329) ^ (1824088897 * (((&v7 | 0x605F177C) - (&v7 & 0x605F177C)) ^ 0x3836C41E));
  v8 = v5;
  (*(v1 + 8 * (v0 ^ 0x2E45)))(&v7);
  v8 = v6;
  v9 = (v3 + 3319) ^ (1824088897 * (&v7 ^ 0x5869D362));
  (*(v1 + 8 * (v3 ^ 0x362F)))(&v7);
  return (v2 - 16257999);
}

uint64_t sub_10025EB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v19 - 89) ^ (33731311 * (((&a15 | 0xF9F95082) - (&a15 & 0xF9F95082)) ^ 0xC00F9AA1));
  a17 = a12;
  a18 = &a11;
  (*(v18 + 8 * (v19 + 6260)))(&a15);
  LODWORD(a18) = v19 - 2008441969 * (((&a15 | 0x96C23D70) - &a15 + (&a15 & 0x693DC288)) ^ 0xDE5B697E) + 2344;
  a17 = a12;
  v20 = (*(v18 + 8 * (v19 + 6310)))(&a15);
  return (*(v18 + 8 * ((474 * (a15 != (((v19 - 970) | 0x404) ^ 0xF81EE0))) ^ v19)))(v20);
}

uint64_t sub_10025ECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a3 - 1;
  v18 = v9 + v17 + v8;
  v19 = __ROR8__(v18 & 0xFFFFFFFFFFFFFFF8, 8);
  v20 = (v14 | (2 * (v19 + 0x2D9C56C6ED9D3E2ELL))) - (v19 + 0x2D9C56C6ED9D3E2ELL) + a6;
  v21 = v20 ^ (139 * (v7 ^ 0x17FAu) + 0x572C57D23556A95);
  v22 = v20 ^ a7;
  v23 = __ROR8__(v21, 8);
  v24 = __ROR8__(((v11 & (2 * (v23 + v22))) - (v23 + v22) + v12) ^ v13, 8);
  v25 = ((v11 & (2 * (v23 + v22))) - (v23 + v22) + v12) ^ v13 ^ __ROR8__(v22, 61);
  v26 = ((v15 & (2 * (v24 + v25))) - (v24 + v25) + 0x365717C7E4CB1A76) ^ 0x8BD86B3AFACC8D6DLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (v10 - ((v28 + v27) | v10) + ((v28 + v27) | 0x1323CE1A44C5F46ELL)) ^ 0xEEA89D249DAFB75ALL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ 0xAC7DA0564C1838BLL;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = __ROR8__(v31, 8);
  v34 = (((2 * (v33 + v32)) & 0x2A5861B0BA21BA34) - (v33 + v32) - 0x152C30D85D10DD1BLL) ^ 0x8B436845DC92299CLL;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0x8E4D6ECA343D275ELL;
  *v18 = ((__ROR8__(v36, 8) + (v36 ^ __ROR8__(v35, 61))) ^ 0x51BB4171AFEDC628) >> (8 * (v18 & 7u));
  return (*(v16 + 8 * ((30 * (v17 == 0)) ^ (v7 - 1794))))();
}

uint64_t sub_10025EF80()
{
  v2 = *(STACK[0x708] + 24);
  STACK[0x498] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((v0 + 582641425) ^ 0xDD458DD4) + ((v0 + 582641425) & 0xDD458E7A))) ^ v0)))();
}

uint64_t sub_10025F034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = **(&off_100315F70 + ((v65 + 3996) & 0x8A3C8441));
  *(v66 - 232) = v65 + 3996 + 1710126949 * ((v66 - 1199643003 - 2 * ((v66 - 232) & 0xB87EE76D)) ^ 0x8A65BCFD) + 2122;
  *(v66 - 224) = v67;
  (*(v64 + 8 * ((v65 + 3996) ^ 0x3C59)))(v66 - 232);
  *(v66 - 228) = (v65 - 1451034739) ^ (956911519 * ((v66 - 232) ^ 0xEA917005));
  v68 = (*(a64 + 8 * (v65 + 7005)))(v66 - 232);
  v69 = *(v66 - 232) != ((v65 + 3996) ^ 0x1168) + 538289758;
  return (*(a64 + 8 * (((2 * v69) | (8 * v69)) ^ (v65 + 3996))))(v68);
}

uint64_t sub_10025F310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(STACK[0x5C8] + 24);
  STACK[0x740] = v5;
  return (*(a4 + 8 * (((v5 == 0) * ((((v4 - 1212079769) ^ 0xB7C12776) - 1699) ^ (v4 - 1212079769) & 0x483ED7F7)) ^ v4)))();
}

uint64_t sub_10025FF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0xAF8] = v73;
  v74 = STACK[0x6C0];
  STACK[0xB00] = STACK[0x6C0];
  return (*(a72 + 8 * (((v73 - v74 > 9) * ((((v72 + 2878) | 0x4C2) - 5612) ^ 0x1281)) ^ v72)))();
}

uint64_t sub_10025FF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, int a18, unsigned int a19, int a20)
{
  v21 = 956911519 * ((((2 * &a17) | 0x4E96870C) - &a17 - 659243910) ^ 0xCDDA3383);
  HIDWORD(a17) = v21 + 543642718;
  a18 = v21 ^ 0x61FE7926;
  a19 = 1002199530 - v21;
  a20 = v21 ^ 0x1602;
  (*(v20 + 77008))(&a17);
  a17 = &a13;
  a19 = 1317436891 * ((2 * (&a17 & 0x7F305B58) - &a17 + 13608096) ^ 0xB0CC3CD6) + 8154;
  v22 = (*(v20 + 77096))(&a17);
  return (*(v20 + 8 * ((1991 * (a18 == 16257999)) ^ 0xB7Eu)))(v22);
}

uint64_t sub_1002600A8@<X0>(int a1@<W8>)
{
  v2 = STACK[0x8B8];
  v3 = &STACK[0xB60] + STACK[0x740];
  STACK[0x8C8] = v3;
  STACK[0x900] = (v3 + 16);
  STACK[0x7C0] = 0;
  STACK[0x4C8] = 0;
  LODWORD(STACK[0x854]) = 197499219;
  STACK[0x7A8] = 0;
  LODWORD(STACK[0x544]) = 197499219;
  STACK[0x620] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((a1 + 1514598348) & 0xA5B8FDE7) - 2816)) ^ (a1 + 1514598348) & 0xA5B8FDE7)))();
}

uint64_t sub_100260134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  LOWORD(STACK[0x926]) = v63;
  LODWORD(STACK[0x350]) = v63;
  return sub_10013ABD0(v64 - 5288, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55, a56, a57, a58, a59, a60, a61, a62, a63);
}

uint64_t sub_100260150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, __int16 a12, char a13, uint64_t a14, char a15, __int16 a16, char a17, uint64_t a18, int a19, char a20, int a21, unsigned int a22, uint64_t a23, char *a24)
{
  a22 = (v24 + 1286) ^ (33731311 * ((&a21 & 0x79A0A4ED | ~(&a21 | 0x79A0A4ED)) ^ 0xBFA99131));
  a23 = a18;
  a24 = &a13;
  (*(v26 + 8 * (v24 ^ 0x22FF)))(&a21);
  a23 = a18;
  a24 = &a15;
  a22 = (v24 + 1286) ^ (33731311 * (((&a21 | 0x4CBC5882) - (&a21 & 0x4CBC5882)) ^ 0x754A92A1));
  (*(v26 + 8 * (v24 + 7635)))(&a21);
  a22 = (v24 + 1286) ^ (33731311 * (((&a21 | 0xB5DE600A) - (&a21 & 0xB5DE600A)) ^ 0x8C28AA29));
  a23 = a18;
  a24 = &a20;
  (*(v26 + 8 * (v24 ^ 0x22FF)))(&a21);
  a23 = a18;
  a24 = &a11;
  a22 = (v24 + 1286) ^ (33731311 * ((((&a21 | 0xD2620A1A) ^ 0xFFFFFFFE) - (~&a21 | 0x2D9DF5E5)) ^ 0x146B3FC6));
  (*(v26 + 8 * (v24 + 7635)))(&a21);
  a22 = (v24 + 1286) ^ (33731311 * ((&a21 & 0x5A2894C7 | ~(&a21 | 0x5A2894C7)) ^ 0x9C21A11B));
  a23 = a18;
  a24 = &a17;
  (*(v26 + 8 * (v24 ^ 0x22FF)))(&a21);
  LODWORD(a24) = v24 - 2008441969 * ((1638927686 - (&a21 ^ 0x3D302A96 | 0x61B00D46) + (&a21 ^ 0x3D302A96 | 0x9E4FF2B9)) ^ 0xEBE68C21) + 3719;
  a23 = a18;
  v28 = (*(v26 + 8 * (v24 ^ 0x220D)))(&a21);
  return (*(v26 + 8 * (((a21 == 16257999) * (v25 ^ (v27 - 60))) ^ v24)))(v28);
}

uint64_t sub_1002603E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, unsigned int a19)
{
  a19 = (v19 + 6079) ^ (((2 * (&a17 & 0x62D29FE0) - &a17 - 1657970659) ^ 0xC544B37F) * v20);
  a18 = a13;
  v22 = (*(v21 + 8 * (v19 + 7345)))(&a17);
  return sub_10026045C(v22);
}

uint64_t sub_10026045C()
{
  v7 = (v3 + 3841) ^ (((-1891601042 - (v6 | 0x8F40756E) + (v6 | 0x70BF8A91)) ^ 0x28D659F3) * v1);
  v6[1] = v5;
  (*(v2 + 8 * (v3 + 5107)))(v6);
  return (v0 - 16257999);
}

uint64_t sub_100260570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v6 - 32);
  v10 = (v7 - 32);
  v11 = *v10;
  *(v9 - 1) = *(v10 - 1);
  *v9 = v11;
  return (*(a4 + 8 * (((v5 == 32) * v8) ^ v4)))();
}

uint64_t sub_10026060C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char *a13, int a14, unsigned int a15)
{
  a13 = &a11;
  a15 = v16 + 1317436891 * ((2 * (&a13 & 0x359CA8D0) - &a13 - 899459284) ^ 0x7A60CF5A) + 4928;
  v17 = (*(v15 + 8 * (v16 ^ 0x293F)))(&a13);
  return (*(v15 + 8 * (((a14 == 16257999) * (((v16 + 1616641498) | 0x18010408) ^ 0x785D113A)) ^ v16)))(v17);
}

uint64_t sub_1002606C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unsigned int a12, int a13, uint64_t a14)
{
  a14 = v15;
  a11 = v14;
  a12 = 2008441969 * ((-377644372 - (&a11 | 0xE97D9AAC) + (&a11 | 0x16826553)) ^ 0x5E1B315D) + 4055;
  (*(v16 + 77384))(&a11);
  return sub_1001D9EDC(a13);
}

void sub_100260788(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3, uint64_t a4, unsigned int a5)
{
  a5 = 1824 - 869295389 * ((&a4 + 1173547721 - 2 * (&a4 & 0x45F2EAC9)) ^ 0xF4A6C69A);
  a4 = a1;
  (*(a2 + 78128))(&a4);
  JUMPOUT(0x1001DC14CLL);
}

uint64_t sub_1002607F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  *v22 = 0x9908B0DF00000000;
  v25 = 1824088897 * ((a20 + 0x5D0499BBD91DACF1 - 2 * (a20 & 0x5D0499BBD91DACF1)) ^ 0xDFEB0387E12C9C16);
  v22[5] = **(v23 + 8 * (v20 - 741)) ^ v25;
  *(v24 - 112) = (v20 + 1365484860) ^ (1824088897 * ((a20 - 652366607 - 2 * (a20 & 0xD91DACF1)) ^ 0xE12C9C16));
  *(v24 - 144) = 1824088897 * ((a20 - 652366607 - 2 * (a20 & 0xD91DACF1)) ^ 0xE12C9C16) + v20 + 1454889199;
  *(v24 - 140) = 1824088897 * ((a20 - 652366607 - 2 * (a20 & 0xD91DACF1)) ^ 0xE12C9C16) + v20 + 1365484860 + 52;
  *(v24 - 152) = 1824088897 * ((a20 - 652366607 - 2 * (a20 & 0xD91DACF1)) ^ 0xE12C9C16);
  v22[3] = v25;
  *(v24 - 128) = ((v20 + 1365484860) ^ 0x3AE) - 1824088897 * ((a20 - 652366607 - 2 * (a20 & 0xD91DACF1)) ^ 0xE12C9C16);
  v26 = (*(v21 + 8 * (v20 + 8696)))(v24 - 152);
  return (*(v21 + 8 * *(v24 - 148)))(v26);
}

uint64_t sub_1002609FC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  *(a57 + (((a1 + 681) ^ 0x16EC597CDLL) & (2 * v57)) + (v57 ^ 0x7DEBD9FFB762DBEFLL) - 0x7DEBD9FFB762DBEFLL) = 0;
  *(a57 + ((2 * (v57 + 4)) & 0xDFEFFAB6) + ((v57 + 4) ^ 0x45FBCEBB6FF7FD5BLL) - 0x45FBCEBB6FF7FD5BLL) = -9392;
  v59 = (a41 & 0x45 | (2 * (a41 & 1))) ^ (a41 ^ 0x662027B6) & (2 * (a41 & 0x45));
  v60 = (2 * (a41 ^ 0x662027B6)) & 0x72 ^ 0x11 ^ ((2 * (a41 ^ 0x662027B6)) ^ 0x40A510E6) & (a41 ^ 0x662027B6);
  v61 = (4 * v59) & v60 ^ v59 ^ ((4 * v59) & 0x230 | 0xB042A840);
  v62 = (4 * v60) & 0xBC52EE70 ^ 0xC104633 ^ ((4 * v60) ^ 0x714BB9CC) & v60;
  v63 = (16 * v61) & 0xBC52EE70 ^ v61 ^ ((16 * v61) ^ 0x42A8400) & v62;
  v64 = (16 * v62) & 0xBC52EE70 ^ 0x38500843 ^ ((16 * v62) ^ 0xC52EE730) & v62;
  v65 = v63 ^ (v63 << 8) & 0xBC52EE00 ^ ((v63 << 8) ^ 0x402C4000) & v64 ^ 0x8128233;
  v66 = a41 ^ (2 * ((v65 << 16) & 0x3C520000 ^ v65 ^ ((v65 << 16) ^ 0x6E730000) & ((v64 << 8) & 0x3C520000 ^ 0x2C100000 ^ ((v64 << 8) ^ 0x52EE0000) & v64)));
  v67 = (a57 + ((2 * (v57 + 6)) & 0x1E8FDDF9ALL) + ((v57 + 6) ^ 0xDBEFB97BF47EEFCDLL) + 0x241046840B811033);
  *v67 = HIBYTE(v66) ^ 0xFA;
  v67[1] = BYTE2(v66) ^ 0x73;
  v67[2] = BYTE1(v66) ^ 0x15;
  v67[3] = v66 ^ 0x23;
  return (*(v58 + 8 * (a1 ^ (235 * ((840616331 - a51) - 840616315 < 8)))))(-840616316, 16215976);
}

uint64_t sub_100260CD8()
{
  v5 = (*(v4 + 8 * (v3 ^ 0x70E)))();
  result = (*(v4 + 8 * (v3 | 0x4C3)))(v5, v1, 4096);
  if (result >= (((v3 + 720719350) & 0xD50AB5BF) - 9405))
  {
    v2 = 16257999;
  }

  *(v0 + 8) = v2;
  return result;
}

uint64_t sub_100260DD0@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X7>, uint64_t a4@<X8>)
{
  v20 = v12 - 1;
  v21 = __ROR8__((v16 + v20) & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = (v21 - 0x6AF7234D0CC131D5) ^ 0xE1AFA7ACF6E0968ELL;
  v23 = (a2 + 5087) ^ 0xE49D77DF873DA5DELL ^ (__ROR8__((v21 - 0x6AF7234D0CC131D5) ^ 0x49E9423B6F16E7D2, 8) + v22);
  v24 = v23 ^ __ROR8__(v22, 61);
  v25 = __ROR8__(v23, 8);
  v26 = ((v17 & (2 * (v25 + v24))) - (v25 + v24) + a3) ^ v15;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = __ROR8__(v26, 8);
  v29 = (((2 * (v28 + v27)) | 0x45B996DFB575EE6) - (v28 + v27) - 0x22DCCB6FDABAF73) ^ 0x5B4E7A73A872D06CLL;
  v30 = v29 ^ __ROR8__(v27, 61);
  v31 = __ROR8__(v29, 8);
  v32 = __ROR8__((a1 + v20) & 0xFFFFFFFFFFFFFFF8, 8);
  v33 = -2 - (((v18 - v32) | 0x2AB11F016CBDAD66) + ((v32 + 0x1508DCB2F33ECE2BLL) | 0xD54EE0FE93425299));
  v34 = __ROR8__(v33 ^ 0x63585D3A03AB4AB4, 8);
  v33 ^= 0xCB1EB8AD9A5D3BE8;
  v35 = (((2 * (v31 + v30)) & 0xE50EF93BD6C6A2AALL) - (v31 + v30) - 0x72877C9DEB635156) ^ 0xEC3D1E48E4838A5DLL;
  v36 = v35 ^ __ROR8__(v30, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0x64C31C027084DE6CLL;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = ((v19 | (2 * (v34 + v33))) - (v34 + v33) + v4) ^ v5;
  v40 = (__ROR8__(v37, 8) + v38) ^ 0x1A2AEBE44253AF03;
  v41 = v39 ^ __ROR8__(v33, 61);
  v42 = (__ROR8__(v39, 8) + v41) ^ 0xF5A2F1B9B5D0B209;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ 0x5963B6C555D97F1FLL;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = __ROR8__(v40, 8) + (v40 ^ __ROR8__(v38, 61));
  v47 = (__ROR8__(v44, 8) + v45) ^ v14;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = (__ROR8__(v47, 8) + v48) ^ 0x64C31C027084DE6CLL;
  v50 = v49 ^ __ROR8__(v48, 61);
  v51 = __ROR8__(v49, 8);
  v52 = (a4 - ((v51 + v50) ^ v6 | a4) + ((v51 + v50) ^ v6 | v7)) ^ v8;
  v53 = v52 ^ __ROR8__(v50, 61);
  v54 = __ROR8__(v52, 8);
  *(a1 + v20) = ((((v9 & (2 * (v54 + v53))) - (v54 + v53) + v10) ^ v11) >> (8 * ((a1 + v20) & 7))) ^ *(v16 + v20) ^ (((((2 * v46) & 0x8D3B02A49A14CEA0) - v46 + 0x39627EADB2F598AFLL) ^ 0x92523C7F9A72C4EELL) >> (8 * ((v16 + v20) & 7)));
  return (*(v13 + 8 * ((6077 * (v20 == 0)) ^ a2)))();
}

uint64_t sub_1002610F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *v7 = v6;
  *(v6 + 8) = *(a5 + 8);
  *(a5 + 8) = v6;
  return sub_10023EFB0(a1, a2, a3, a4);
}

uint64_t sub_100261160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, unsigned int a21)
{
  a21 = v21 - 2008441969 * ((&a19 & 0x1286EABC | ~(&a19 | 0x1286EABC)) ^ 0xA5E0414D) + 3383;
  a20 = a18;
  v24 = (*(v23 + 8 * (v21 ^ 0x2D7D)))(&a19);
  return (*(v23 + 8 * (((a19 == v22) * (v21 ^ 0x1860 ^ v21 ^ 0x196F ^ 0x16E1)) ^ v21)))(v24);
}

uint64_t sub_100261288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v8 = STACK[0x648];
  STACK[0x6E0] = STACK[0x648];
  return (*(a4 + 8 * (((((v7 ^ (v8 == 0)) & 1) == 0) * (a6 ^ 0x1404)) ^ v6)))();
}

void sub_1002612C8(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x10010355CLL);
}

uint64_t sub_10026132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = *(v8 + 8 * ((((a6 - 6101) | 0x1540u) + v6 - 6108 < ((a6 - 5103) | 0x108Au) - 5899) ^ a6));
  STACK[0x980] = *(v8 + 8 * v7);
  return v9(a1, a2, 0x321FCFCE9C141D67, a4, a5, *(a3 + 8 * (a6 - 6642)) - 8);
}

void sub_1002613E4(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v6 = *(STACK[0x5F8] + 120);
  v7 = STACK[0x5F8] + 104;
  v8 = 914963389 * ((1660318185 - ((v5 - 232) | 0x62F671E9) + ((v5 - 232) | 0x9D098E16)) ^ 0xB1F53F6D);
  *(v5 - 192) = ((*(STACK[0x5F8] + 100) ^ 0xEAA2A79B) + ((v3 - 1306) ^ 0x35FDFA24) + ((2 * *(STACK[0x5F8] + 100)) & 0xD5454F36)) ^ v8;
  *(v5 - 184) = v2;
  *(v5 - 168) = v7;
  *(v5 - 216) = (((v4 ^ 0xD3803A15) + 746571243) ^ ((v4 ^ 0xCC355F80) + 868917376) ^ ((v4 ^ 0x1470FCC6) - 342949062)) - v8 + 1996137537;
  *(v5 - 208) = v8 + (v6 ^ 0xCEFBBBBB) + ((2 * v6) & 0x9DF77776) + 1001225584;
  *(v5 - 224) = v2;
  *(v5 - 232) = 1491323843 - v8;
  *(v5 - 176) = v8 + v3 + 2153;
  *(v5 - 200) = a2;
  (*(a1 + 8 * (v3 + 7250)))(v5 - 232);
  JUMPOUT(0x100261550);
}

uint64_t sub_1002615E0@<X0>(int a1@<W8>)
{
  *STACK[0x418] = v1;
  LODWORD(STACK[0x824]) = v2;
  return (*(v3 + 8 * (((v2 == 16257999) * ((a1 - 6360) ^ 0xDB)) ^ (a1 - 4713))))();
}

uint64_t sub_100261760@<X0>(unint64_t a1@<X8>)
{
  STACK[0x760] = a1;
  LODWORD(STACK[0x998]) = v3;
  LOWORD(STACK[0x99E]) = v2;
  LODWORD(STACK[0x9A0]) = STACK[0x62C];
  LODWORD(STACK[0x9A4]) = STACK[0x89C];
  STACK[0x9A8] = STACK[0x588];
  STACK[0x750] = STACK[0x4E8];
  return (*(v4 + 8 * (((a1 != 0) * (((2 * v1) ^ 0x44EE) - 349)) ^ v1)))();
}

void sub_100261B84()
{
  v2 = v4[3] ^ 0x3C;
  v3 = ((*v4 ^ 0x3C) << 24) | ((v4[1] ^ 0x3C) << 16) | ((v4[2] ^ 0x3C) << 8) | v2;
  **(v0 + 16) = (v3 - 2 * (v3 & 0x11AB605A ^ v2 & 8) - 1851039662) ^ 0x91AB6052;
  *v0 = *(v1 + 24);
}

uint64_t sub_100261CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  *(v49 - 240) = *v47;
  *(v49 - 239) = v47[1];
  *(v49 - 238) = v47[2];
  *(v49 - 237) = v47[3];
  *(v49 - 236) = v47[4];
  *(v49 - 235) = v47[5];
  *(v49 - 234) = v47[6];
  *(v49 - 233) = v47[7];
  *(v49 - 232) = v47[8];
  *(v49 - 231) = v47[9];
  *(v49 - 230) = v47[10];
  *(v49 - 229) = v47[11];
  *(v49 - 228) = v47[12];
  *(v49 - 227) = v47[13];
  *(v49 - 226) = v47[14];
  *(v49 - 225) = v47[15];
  if (a8)
  {
    v50 = v49 == 240;
  }

  else
  {
    v50 = 1;
  }

  v53 = v50 || *(a1 + 48) == 0 || *(a1 + 64) == 0;
  return (*(v48 + 8 * (v53 ^ v46 ^ 0x292E)))(a1, a2, a3, v49 - 240, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_100261D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = (((&a14 | 0x845A2815) - &a14 + (&a14 & 0x7BA5D7E8)) ^ 0xDC33FB77) * v21;
  a16 = a11;
  a17 = &a12;
  a15 = v23 + 1733649567;
  a18 = 1032869496 - v23;
  a19 = v23 + v22 + 1674577608;
  v24 = (*(v20 + 8 * (v22 ^ 0x206A)))(&a14);
  return (*(v20 + 8 * (((a14 == v19) * ((v22 - 523931047) & 0x17CC ^ 0x65B)) ^ v22)))(v24);
}

uint64_t sub_100262054@<X0>(int a1@<W8>)
{
  v2 = STACK[0x5B8];
  v3 = *STACK[0x668];
  STACK[0x800] = *(v1 + 8 * a1);
  STACK[0x6C8] = v3;
  LODWORD(STACK[0x520]) = 1;
  STACK[0x598] = v2;
  return (*(v1 + 8 * (((v2 == 0) * (((a1 + 616609973) & 0xDB3F4FEF) + 9476)) ^ (a1 + 2169))))();
}

uint64_t sub_1002620BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v72 == 16257999)
  {
    v75 = STACK[0x550];
    v76 = *(STACK[0x550] + 8);
    v77 = STACK[0x580];
    v77[1] = v76;
    *v77 = *v75;
    return (*(v73 + 8 * (((((v76 == 0) ^ (v71 - 70)) & 1) * (((v71 - 935) | 1) - 5046)) ^ (v71 + 3430))))();
  }

  else if (v72 == 16215947)
  {
    return (*(v73 + 8 * (((*(STACK[0x648] + 8) == 0) * ((a71 ^ 0x17C8) - 2223 + 761 * (a71 ^ 0x17C8))) ^ (a71 + 2817))))();
  }

  else
  {
    return (*(v73 + 8 * ((((((v71 - 6087) ^ (*(STACK[0x580] + 24) == 0)) & 1) == 0) * ((v71 - 4613) ^ 0x5DE)) ^ (v71 + 2207))))();
  }
}

uint64_t sub_100262304()
{
  *(v1 + 108) = 0;
  v3 = STACK[0x788];
  *(v1 + 104) = 16;
  *(v1 + 103) = v3[23];
  *(v1 + 102) = v3[22];
  *(v1 + 101) = v3[21];
  *(v1 + 100) = v3[20];
  *(v1 + 99) = v3[19];
  *(v1 + 98) = v3[18];
  *(v1 + 97) = v3[17];
  *(v1 + 96) = v3[16];
  *(v1 + 95) = v3[15];
  *(v1 + 94) = v3[14];
  *(v1 + 93) = v3[13];
  *(v1 + 92) = v3[12];
  *(v1 + 91) = v3[11];
  *(v1 + 90) = v3[10];
  *(v1 + 89) = v3[9];
  *(v1 + 88) = v3[8];
  return (*(v2 + 8 * (((v3[4] == (v0 ^ 0x69)) * (((v0 - 3337) | 0x693) - 5980)) ^ v0)))();
}

void sub_100262448(uint64_t a1@<X8>)
{
  *v2 = v1;
  *(v1 + 8) = *(a1 + 8);
  *(a1 + 8) = v1;
  JUMPOUT(0x10026247CLL);
}

uint64_t sub_10026248C()
{
  v0 = STACK[0x5D0];
  *v0 = 0u;
  v0[1] = 0u;
  return sub_1002624BC();
}

uint64_t sub_1002624BC@<X0>(uint64_t *a1@<X8>)
{
  v4 = *a1;
  STACK[0x5E8] = *(v3 + 8 * v2);
  return (*(v3 + 8 * (((((-109 * (v1 ^ 0xD5)) ^ (v4 == 0)) & 1) * (v1 - 6813)) ^ v1)))();
}

uint64_t sub_100262C08()
{
  v2 = LOBYTE(STACK[0x77F]);
  LODWORD(STACK[0x800]) = STACK[0x70C];
  return (*(v1 + 8 * (((v2 != ((73 * (((v0 + 78) | 0x20) ^ 0x6C)) ^ 0x48)) * (((((v0 - 4786) | 0x1820) ^ 0x1B6C) + 991) ^ 0x302)) ^ ((v0 - 4786) | 0x1820))))();
}

uint64_t sub_100262C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, char a14, int a15, __int16 a16, int a17, uint64_t a18, char a19, uint64_t a20, unsigned int a21)
{
  v24 = (v23 - 4164) | 0x208;
  *v21 = a12;
  *(v21 + 4) = a17;
  *(v21 + 8) = a14;
  *(v21 + 10) = a16;
  v25 = (v24 - 1022) | 0x2003;
  a21 = (v24 + 6800) ^ (1824088897 * ((((&a19 | 0xCDE9504C) ^ 0xFFFFFFFE) - (~&a19 | 0x3216AFB3)) ^ 0x6A7F7CD1));
  a20 = a10;
  (*(v22 + 8 * (v24 ^ 0x2386)))(&a19);
  a21 = (v25 - 373) ^ (1824088897 * ((2 * (&a19 & 0x1183F450) - &a19 - 293860440) ^ 0xB615D8CA));
  a20 = a13;
  v26 = (*(v22 + 8 * (v25 ^ 0x783)))(&a19);
  return sub_10026D7D4(v26);
}

uint64_t sub_100262D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  STACK[0x820] = v5;
  if (v7)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  return (*(a4 + 8 * ((((((v6 ^ 0x45) + 1) ^ v9) & 1) * ((v6 + 642338432) & 0xD9B6AFFC ^ 0x291)) ^ v6)))();
}

uint64_t sub_100262DD8(uint64_t a1)
{
  v1 = 1358806181 * (a1 ^ 0x3F2F6C83);
  v2 = *(a1 + 32) ^ v1;
  v3 = *(a1 + 48) + v1;
  v4 = *(a1 + 40);
  v5 = *a1;
  v6 = *(a1 + 52) + v1;
  v7 = *(&off_100315F70 + v2 - 915945387) - 8;
  if (v3 == 726920995 || v3 == 726920992)
  {
    __asm { BRAA            X19, X17 }
  }

  v9 = *(a1 + 8);
  v10 = 33731311 * ((2 * (v13 & 0x67C88B18) - v13 + 406287584) ^ 0x21C1BEC3);
  v14 = *(a1 + 24);
  v15 = v5;
  v13[1] = v6 - v10 - 805185212;
  v17 = v10 + v2 - 915938572;
  v16 = v9;
  v18 = v4;
  result = (*&v7[8 * (v2 ^ 0x36981D35)])(v13);
  *(a1 + 16) = v13[0];
  return result;
}

uint64_t sub_1002630CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a4 + a2;
  v10 = a4 - 1;
  *(v6 + v10) = *(v7 + v10) ^ *(a1 + v10) ^ (47 * v10) ^ *(v9 + 3) ^ *(v4 + v10) ^ 0x3C;
  return (*(v8 + 8 * ((59 * (v10 == ((v5 + 1461900446) & 0xA8DD1FD5 ^ 0xF11))) ^ v5)))();
}

void sub_100263144()
{
  *&STACK[0x2D0] = vdupq_n_s64(0x64C31C027084DE6CuLL);
  *&STACK[0x300] = vdupq_n_s64(0xD54EE0FE93425299);
  *&STACK[0x310] = vdupq_n_s64(v1);
  *&STACK[0x2E0] = vdupq_n_s64(0x2AB11F016CBDAD66uLL);
  *&STACK[0x2F0] = vdupq_n_s64(v0);
  JUMPOUT(0x1002633B0);
}

uint64_t sub_1002649CC@<X0>(int a1@<W8>)
{
  STACK[0x9A8] = v1;
  v3 = STACK[0x7F8];
  STACK[0x9B0] = STACK[0x7F8];
  return (*(v2 + 8 * ((2448 * (v1 - v3 > ((a1 - 3125) | 0x1180u) - 5613)) ^ a1)))();
}

uint64_t sub_100264A1C@<X0>(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x31A6)))(a1);
  *(STACK[0x790] + 24) = 0;
  return sub_100264A48();
}

uint64_t sub_100264A48()
{
  v2 = (*(v1 + 8 * (v0 + 6155)))();
  STACK[0x790] = 0;
  return sub_100264A74(v2);
}

void sub_100264A88()
{
  v0 = *(&off_100315F70 + ((-85 * ((dword_100330E70 - dword_100330D28) ^ 0xDF)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * ((dword_100330E70 - dword_100330D28) ^ 0xDF))] ^ 0x1F]) - 58);
  v1 = *(v0 - 4);
  v2 = *(&off_100315F70 + (byte_1002B7200[byte_1002B0320[(-85 * ((dword_100330E70 - v1) ^ 0xDF))] ^ 0x9B] ^ (-85 * ((dword_100330E70 - v1) ^ 0xDF))) + 128);
  v3 = 2054362027 * ((&v7[1] + v1 + *v2) ^ 0xB4207763EF64BDFLL);
  *(v0 - 4) = v3;
  *v2 = v3;
  v6 = 0;
  v5 = 0;
  v9 = &v5;
  v8[0] = 869295389 * ((1800565523 - (v8 | 0x6B527313) + (v8 | 0x94AD8CEC)) ^ 0x25F9A0BF) + 1903876051;
  LODWORD(v3) = 2054362027 * ((*v2 - *(v0 - 4)) ^ 0x3EF64BDF);
  v4 = *(&off_100315F70 + ((-85 * (dword_100330D28 ^ 0xDF ^ dword_100330E70)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * (dword_100330D28 ^ 0xDF ^ dword_100330E70))] ^ 0x1F]) + 191) - 8;
  (*&v4[8 * (byte_1002A5FBC[(byte_1002BF56C[v3 - 12] ^ 0xE2) - 12] ^ v3) + 76816])(v8);
  v7[0] = 0;
  v8[0] = 869295389 * ((v8 & 0x6C6D09CE | ~(v8 | 0x6C6D09CE)) ^ 0x22C6DA62) + 1903876051;
  v9 = v7;
  (*&v4[8 * (byte_1002B022C[(byte_1002A5CB0[(-85 * ((*v2 - *(v0 - 4)) ^ 0xDF))] ^ 0x21) - 12] ^ (-85 * ((*v2 - *(v0 - 4)) ^ 0xDF))) + 76024])(v8);
  v8[0] = 476323082 - 1710126949 * ((((v8 | 0x15AA73E0) ^ 0xFFFFFFFE) - (~v8 | 0xEA558C1F)) ^ 0xD84ED78F);
  (*&v4[8 * ((-85 * ((*v2 - *(v0 - 4)) ^ 0xDF)) ^ byte_1002B7200[byte_1002B0320[(-85 * ((*v2 - *(v0 - 4)) ^ 0xDF))] ^ 0xBF]) + 75368])(v8);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100264DD4@<X0>(uint64_t a1@<X3>, _DWORD *a2@<X8>)
{
  v4 = (v2 + 3856) | 2;
  v5 = v2 - 2685;
  *(v3 + 84) = *a2;
  v6 = STACK[0x4E8];
  STACK[0x630] = &STACK[0xA00] + STACK[0x4E8];
  STACK[0x4E8] = v6 + ((v2 - 959530343) & 0x39313BBF ^ 0xA9ELL);
  v7 = STACK[0x6F0];
  STACK[0x7D0] = STACK[0x6F0];
  STACK[0x678] = 0;
  STACK[0x4F0] = 0;
  STACK[0x568] = 0;
  LODWORD(STACK[0x560]) = 0;
  STACK[0x6A0] = 0;
  STACK[0x5B8] = 0;
  v8 = (*(a1 + 8 * (v2 ^ 0x31E5)))();
  if (v7)
  {
    v9 = LODWORD(STACK[0x618]) == v4 - 9079;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  return (*(STACK[0x3E8] + 8 * ((993 * v10) ^ v5)))(v8);
}

void sub_10026506C(uint64_t a1)
{
  v1 = *(a1 + 16) + 33731311 * ((-2 - ((a1 | 0x7FFD9340) + (~a1 | 0x80026CBF))) ^ 0xB9F4A69C);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100265220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x600] = v4;
  v6 = (*(a4 + 8 * (v5 ^ 0x3765)))(32, 0x103004054B5FA7DLL);
  v7 = STACK[0x3E8];
  STACK[0x4C0] = v6;
  return (*(v7 + 8 * (((v6 == 0) * (((v5 + 414) ^ 0xFFFFFD79) + (v5 ^ 0xA63))) ^ v5)))();
}

void sub_1002657F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v6 = a4 == 0;
  }

  else
  {
    v6 = 1;
  }

  v9 = !v6 && a5 != 0 && a6 != 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100265924()
{
  STACK[0x948] = v1;
  v3 = STACK[0x478];
  STACK[0x950] = STACK[0x478];
  return (*(v2 + 8 * ((3130 * (v1 - v3 > (4 * ((v0 - 1814264284) & 0x2C236F4A ^ 0xA15u)) - 371)) ^ v0)))();
}

uint64_t sub_100265A50()
{
  v4 = (*(v3 + 8 * (v0 + 4623)))();
  *v1 = 0;
  return v2(v4);
}

uint64_t sub_100265AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, unint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v43 = STACK[0x3F8] - 507;
  v44 = (v41 ^ v42) + a41;
  STACK[0xA10] = v44;
  return (*(STACK[0x400] + 8 * (v43 ^ (29 * (v44 > a34)))))();
}

uint64_t sub_100265B34()
{
  v5 = (v2 - 1901) - v1 - 1800;
  v6 = *(v0 + v5 - 15);
  v7 = *(v0 + v5 - 31);
  v8 = v3 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((6347 * (v1 == 96)) ^ v2)))();
}

uint64_t sub_100265B80@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v2 + v7);
  return (*(v6 + 8 * (((v7 == 0) * ((v5 - a2 - 712) ^ 0x1F0E)) ^ (v3 + v5 + 3252))))();
}

uint64_t sub_100265BBC@<X0>(int8x16_t *a1@<X8>)
{
  v2.i64[0] = 0x7878787878787878;
  v2.i64[1] = 0x7878787878787878;
  v3 = vsubq_s8(v1[1], vandq_s8(vaddq_s8(v1[1], v1[1]), v2));
  v4 = vandq_s8(vaddq_s8(*v1, *v1), v2);
  v2.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v2.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  *a1 = vaddq_s8(vsubq_s8(*v1, v4), v2);
  a1[1] = vaddq_s8(v3, v2);
  return sub_100265BF0();
}

uint64_t sub_100265BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  (*(v64 + 8 * (v65 ^ 0x34CA)))(v67, 0, 24);
  *(v66 + 104) = 0x1FA834112;
  *(v66 + 112) = 0x200000004;
  STACK[0x5B8] = v67;
  LODWORD(STACK[0x73C]) = 0;
  STACK[0x4D8] = 0;
  v68 = (*(a64 + 8 * (v65 ^ 0x34E8)))(128, 0x10800400FED9166);
  STACK[0x668] = v68;
  return (*(a64 + 8 * (((v68 == 0) * (((v65 - 4416) | 0xA40) ^ 0xA57)) ^ v65)))();
}

void sub_100265CA0(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&STACK[0x310] = vdupq_n_s64(0x731CB210FB4C4567uLL);
  *&STACK[0x320] = vdupq_n_s64(0x19C69BDE09677532uLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x6D4CEA43F2532C17uLL);
  *&STACK[0x300] = vdupq_n_s64(v7);
  *&STACK[0x2D0] = vdupq_n_s64(0xC008A9762A8A187uLL);
  *&STACK[0x2E0] = vdupq_n_s64(0xE7FEEAD13AAEBCF2);
  STACK[0x2C0] = a6 + v8;
  *&STACK[0x2A0] = vdupq_n_s64(v9);
  *&STACK[0x2B0] = vdupq_n_s64(0x176202B71A6AE107uLL);
  *&STACK[0x290] = vdupq_n_s64(a1);
  STACK[0x280] = v6 + v8 - 8512;
  *&STACK[0x260] = vdupq_n_s64(a3);
  *&STACK[0x270] = vdupq_n_s64(a2);
  *&STACK[0x240] = vdupq_n_s64(a5);
  *&STACK[0x250] = vdupq_n_s64(a4);
  *&STACK[0x220] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x230] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x200] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x210] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  JUMPOUT(0x100265E8CLL);
}

uint64_t sub_1002670F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = ((&a14 & 0xDACD8FDA | ~(&a14 | 0xDACD8FDA)) ^ 0x7D5BA347) * v21;
  a15 = v23 + 920149463;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674576251;
  a16 = a12;
  a17 = &a11;
  v24 = (*(v19 + 8 * (v22 ^ 0x2EA7u)))(&a14);
  return (*(v19 + 8 * (((a14 == v20) * ((((v22 - 557378418) & 0x37C7) - 3800) ^ 0x117B)) ^ v22)))(v24);
}

uint64_t sub_100267298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v65 - 224) = (v64 - 2140796570) ^ (914963389 * ((v65 - 232) ^ 0x2CFCB17B));
  (*(v66 + 8 * (v64 + 9178)))(v65 - 232);
  v67 = *(STACK[0x668] + 8);
  STACK[0x5F8] = *(a64 + 8 * v64);
  return sub_10027D4B8(v67);
}

uint64_t sub_1002673BC()
{
  v1.n128_u64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v1.n128_u64[1] = 0x3C3C3C3C3C3C3C3CLL;
  return sub_1002673E0((v0 + 2138297564) ^ 0x1866, 9512, v1);
}

uint64_t sub_1002673E0(uint64_t a1, int a2, int8x16_t a3)
{
  v11 = ~v7 + v5;
  v12 = *(v3 + v11 - 15);
  v13 = *(v3 + v11 - 31);
  v14 = v9 + v11;
  *(v14 - 15) = veorq_s8(v12, a3);
  *(v14 - 31) = veorq_s8(v13, a3);
  return (*(v10 + 8 * (((a1 + v7 == v6) * a2) ^ (v4 + v8 + 1283))))();
}

uint64_t sub_100267430@<X0>(unint64_t a1@<X8>)
{
  STACK[0x938] = v2;
  v4 = STACK[0x370];
  STACK[0x940] = STACK[0x370];
  return (*(v3 + 8 * ((1532 * (v2 - v4 > (((v1 ^ 0x1B45u) + 5274) ^ a1))) ^ v1)))();
}

void sub_100267518(uint64_t a1)
{
  v1 = 869295389 * ((~a1 & 0xF52F98AE | a1 & 0xAD06751) ^ 0x447BB4FD);
  v2 = *(a1 + 12) - v1;
  v3 = (*(a1 + 8) - v1);
  if (*a1)
  {
    v4 = v3 == 12299;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100267658(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v27 = v20;
  STACK[0x310] = a5 & 0xFFFFFFF8;
  v28 = a16 - (a5 & 0xFFFFFFF8) + 8;
  v29 = a6 + v19 + a1 + v16 + a5 - a16;
  v30 = v17 + a5 - a16;
  v31.i64[0] = v30 - 7;
  v31.i64[1] = v30 - 8;
  v32.i64[0] = v30 - 3;
  v32.i64[1] = v30 - 4;
  v33.i64[0] = v30 - 1;
  v33.i64[1] = v30 - 2;
  v34 = (a3 + 3904) | 0x200u;
  v35.i64[0] = v30 - 5;
  v35.i64[1] = v30 + (v34 ^ 0xFFFFFFFFFFFFE5A2);
  v36.i64[0] = v29 - 5;
  v36.i64[1] = v29 + (v34 ^ 0xFFFFFFFFFFFFE5A2);
  v37.i64[0] = v29 - 1;
  v37.i64[1] = v29 - 2;
  v38.i64[0] = v29 - 3;
  v38.i64[1] = v29 - 4;
  v39.i64[0] = v29 - 7;
  v39.i64[1] = v29 - 8;
  v40 = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  v41 = vandq_s8(v35, v40);
  v42 = vandq_s8(v33, v40);
  v43 = vandq_s8(v32, v40);
  v44 = vandq_s8(v31, v40);
  v45 = vsraq_n_u64(vshlq_n_s64(v44, 0x38uLL), v44, 8uLL);
  v46 = vsraq_n_u64(vshlq_n_s64(v43, 0x38uLL), v43, 8uLL);
  v47 = vsraq_n_u64(vshlq_n_s64(v42, 0x38uLL), v42, 8uLL);
  v48 = vsraq_n_u64(vshlq_n_s64(v41, 0x38uLL), v41, 8uLL);
  v49 = vdupq_n_s64(0x38uLL);
  v50 = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  v51 = vaddq_s64(v48, v50);
  v52 = vaddq_s64(v47, v50);
  v53 = vaddq_s64(v46, v50);
  v54 = vaddq_s64(v45, v50);
  v55 = vdupq_n_s64(v27);
  v56 = vdupq_n_s64(0xB30538E1A5AF13B6);
  v57 = vsubq_s64(vorrq_s8(v51, v55), vorrq_s8(v51, v56));
  v58 = vaddq_s64(vsubq_s64(vorrq_s8(v54, v55), vorrq_s8(v54, v56)), v56);
  v59 = vaddq_s64(vsubq_s64(vorrq_s8(v53, v55), vorrq_s8(v53, v56)), v56);
  v60 = vaddq_s64(vsubq_s64(vorrq_s8(v52, v55), vorrq_s8(v52, v56)), v56);
  v61 = vdupq_n_s64(0x513852535460B9BuLL);
  v62 = vaddq_s64(v57, v56);
  v63 = veorq_s8(v62, v61);
  v64 = veorq_s8(v60, v61);
  v65 = veorq_s8(v59, v61);
  v66 = vdupq_n_s64(0xAD5560B2ACB07AC7);
  v67 = veorq_s8(v58, v61);
  v68 = veorq_s8(v58, v66);
  v69 = veorq_s8(v59, v66);
  v70 = veorq_s8(v60, v66);
  v71 = veorq_s8(v62, v66);
  v72 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v73 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), v69);
  v74 = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  v75 = veorq_s8(vaddq_s64(v72, v68), v74);
  v76 = veorq_s8(v73, v74);
  v77 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v64, 0x38uLL), v64, 8uLL), v70), v74);
  v78 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v63, 0x38uLL), v63, 8uLL), v71), v74);
  v79 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v71, 3uLL), v71, 0x3DuLL));
  v80 = veorq_s8(v77, vsraq_n_u64(vshlq_n_s64(v70, 3uLL), v70, 0x3DuLL));
  v81 = veorq_s8(v76, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v82 = veorq_s8(v75, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v83 = vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL);
  v84 = vsraq_n_u64(vshlq_n_s64(v77, 0x38uLL), v77, 8uLL);
  v85 = vsraq_n_u64(vshlq_n_s64(v76, 0x38uLL), v76, 8uLL);
  v86 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v75, 0x38uLL), v75, 8uLL), v82);
  v87 = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  v88 = veorq_s8(vaddq_s64(v83, v79), v87);
  v89 = veorq_s8(vaddq_s64(v84, v80), v87);
  v90 = veorq_s8(vaddq_s64(v85, v81), v87);
  v91 = veorq_s8(v86, v87);
  v92 = vsraq_n_u64(vshlq_n_s64(v79, 3uLL), v79, 0x3DuLL);
  v93 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v94 = vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL);
  v95 = veorq_s8(v91, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v96 = veorq_s8(v90, v94);
  v97 = veorq_s8(v89, v93);
  v98 = veorq_s8(v88, v92);
  v99 = vsraq_n_u64(vshlq_n_s64(v91, 0x38uLL), v91, 8uLL);
  v100 = vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL);
  v101 = vsraq_n_u64(vshlq_n_s64(v89, 0x38uLL), v89, 8uLL);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v88, 0x38uLL), v88, 8uLL), v98);
  v103 = vaddq_s64(v101, v97);
  v104 = vaddq_s64(v100, v96);
  v105 = vaddq_s64(v99, v95);
  v106 = vdupq_n_s64(0x68767FB9A21293EuLL);
  v107 = vdupq_n_s64(0x343B3FDCD10949FuLL);
  v108 = vaddq_s64(vsubq_s64(v102, vandq_s8(vaddq_s64(v102, v102), v106)), v107);
  v109 = vaddq_s64(vsubq_s64(v103, vandq_s8(vaddq_s64(v103, v103), v106)), v107);
  v110 = vaddq_s64(vsubq_s64(v104, vandq_s8(vaddq_s64(v104, v104), v106)), v107);
  v111 = vaddq_s64(vsubq_s64(v105, vandq_s8(vaddq_s64(v105, v105), v106)), v107);
  v112 = vdupq_n_s64(0x5A20053898C9EB80uLL);
  v113 = veorq_s8(v111, v112);
  v114 = veorq_s8(v110, v112);
  v115 = veorq_s8(v109, v112);
  v116 = veorq_s8(v108, v112);
  v117 = vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL);
  v118 = vsraq_n_u64(vshlq_n_s64(v96, 3uLL), v96, 0x3DuLL);
  v119 = vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL);
  v120 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v98, 3uLL), v98, 0x3DuLL));
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
  v131 = vdupq_n_s64(0x20842EAD28A8535AuLL);
  v132 = vdupq_n_s64(0xDF7BD152D757ACA5);
  v133 = vaddq_s64(vsubq_s64(vorrq_s8(v130, v131), vorrq_s8(v130, v132)), v132);
  v134 = vaddq_s64(vsubq_s64(vorrq_s8(v129, v131), vorrq_s8(v129, v132)), v132);
  v135 = vaddq_s64(vsubq_s64(vorrq_s8(v128, v131), vorrq_s8(v128, v132)), v132);
  v136 = vaddq_s64(vsubq_s64(vorrq_s8(v127, v131), vorrq_s8(v127, v132)), v132);
  v137 = vdupq_n_s64(0x41C1B387D8B777ADuLL);
  v138 = veorq_s8(v136, v137);
  v139 = veorq_s8(v135, v137);
  v140 = veorq_s8(v134, v137);
  v141 = veorq_s8(v133, v137);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v120, 3uLL), v120, 0x3DuLL));
  v143 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v144 = veorq_s8(v139, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v145 = veorq_s8(v138, vsraq_n_u64(vshlq_n_s64(v123, 3uLL), v123, 0x3DuLL));
  v146 = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v147 = vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL);
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v138, 0x38uLL), v138, 8uLL), v145);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v139, 0x38uLL), v139, 8uLL), v144);
  v150 = vaddq_s64(v147, v143);
  v151 = vaddq_s64(v146, v142);
  v152 = vdupq_n_s64(0x9D61AAA81A10264DLL);
  v153 = vdupq_n_s64(0x629E5557E5EFD9B2uLL);
  v154 = vsubq_s64(vorrq_s8(v148, v152), vorrq_s8(v148, v153));
  v155 = vaddq_s64(vsubq_s64(vorrq_s8(v151, v152), vorrq_s8(v151, v153)), v153);
  v156 = vaddq_s64(vsubq_s64(vorrq_s8(v150, v152), vorrq_s8(v150, v153)), v153);
  v157 = vaddq_s64(vsubq_s64(vorrq_s8(v149, v152), vorrq_s8(v149, v153)), v153);
  v158 = vdupq_n_s64(0xF9A2B6AA6A94F821);
  v159 = veorq_s8(vaddq_s64(v154, v153), v158);
  v160 = veorq_s8(v157, v158);
  v161 = veorq_s8(v156, v158);
  v162 = veorq_s8(v155, v158);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL));
  v164 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v165 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v144, 3uLL), v144, 0x3DuLL));
  v166 = veorq_s8(v159, vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL));
  v167 = vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL);
  v168 = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  v169 = veorq_s8(vaddq_s64(v167, v163), v168);
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v164), v168);
  v171 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v165), v168);
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v166), v168);
  v173 = vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL);
  v174 = vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL);
  v175 = vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL);
  v176 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v177 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), veorq_s8(v169, v173));
  v178 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), veorq_s8(v170, v174));
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v171, 0x38uLL), v171, 8uLL), veorq_s8(v171, v175));
  v180 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v176);
  v181 = vdupq_n_s64(0x170BF460A85E9EEEuLL);
  v182 = vdupq_n_s64(0xF47A05CFABD0B088);
  v183 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v177, v177), v181), v177), v182);
  v184 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v178, v178), v181), v178), v182);
  v185 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v179, v179), v181), v179), v182);
  v186 = vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v180, v180), v181), v180), v182);
  v187 = vdupq_n_s64(0x5F4A471D8357ECC9uLL);
  v188 = veorq_s8(v186, v187);
  v189 = veorq_s8(v185, v187);
  v190 = veorq_s8(v184, v187);
  v191 = veorq_s8(v183, v187);
  v192 = vandq_s8(vshlq_n_s64(v31, 3uLL), v49);
  v193 = vandq_s8(vshlq_n_s64(v32, 3uLL), v49);
  v194 = vshlq_u64(v191, vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), v49)));
  v195 = vshlq_u64(v190, vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), v49)));
  v196 = vshlq_u64(v189, vnegq_s64(v193));
  v197 = vshlq_u64(v188, vnegq_s64(v192));
  v198 = vandq_s8(v39, v40);
  v199 = vandq_s8(v38, v40);
  v200 = vandq_s8(v37, v40);
  v201 = vandq_s8(v36, v40);
  v202 = vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL);
  v203 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v204 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v205 = vdupq_n_s64(0x568FD0F9DF82F1E3uLL);
  v206 = vsraq_n_u64(vshlq_n_s64(v198, 0x38uLL), v198, 8uLL);
  v207 = vaddq_s64(v206, v205);
  v208 = vaddq_s64(v204, v205);
  v209 = vaddq_s64(v203, v205);
  v210 = vdupq_n_s64(0x29702F06207D0E1CuLL);
  v211 = vaddq_s64(v202, v205);
  v212 = vdupq_n_s64(0x5879FD990C46CAD5uLL);
  v213 = vaddq_s64(vandq_s8(vsubq_s64(v210, v202), v212), v211);
  v214 = vaddq_s64(vandq_s8(vsubq_s64(v210, v203), v212), v209);
  v215 = vaddq_s64(vandq_s8(vsubq_s64(v210, v204), v212), v208);
  v216 = vaddq_s64(vandq_s8(vsubq_s64(v210, v206), v212), v207);
  v217 = vdupq_n_s64(0x5E79FD990C46CAD5uLL);
  v218 = vsubq_s64(v216, vandq_s8(v207, v217));
  v219 = vsubq_s64(v215, vandq_s8(v208, v217));
  v220 = vsubq_s64(v214, vandq_s8(v209, v217));
  v221 = vsubq_s64(v213, vandq_s8(v211, v217));
  v222 = vdupq_n_s64(0x6F262667B511DA8BuLL);
  v223 = veorq_s8(v221, v222);
  v224 = veorq_s8(v220, v222);
  v225 = veorq_s8(v219, v222);
  v226 = veorq_s8(v218, v222);
  v227 = vdupq_n_s64(0xDB58A1A949065591);
  v228 = veorq_s8(v218, v227);
  v229 = veorq_s8(v219, v227);
  v230 = veorq_s8(v220, v227);
  v231 = veorq_s8(v221, v227);
  v232 = vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL);
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v225, 0x38uLL), v225, 8uLL), v229);
  v234 = vaddq_s64(v232, v228);
  v235 = vdupq_n_s64(0xBC7AB44B3A189480);
  v236 = veorq_s8(v234, v235);
  v237 = veorq_s8(v233, v235);
  v238 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v224, 0x38uLL), v224, 8uLL), v230), v235);
  v239 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), v231), v235);
  v240 = vdupq_n_s64(0xF0BA186BA47F666CLL);
  v241 = vdupq_n_s64(0x87A2F3CA2DC04CCALL);
  v242 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v236, v236), v240), v236), v241);
  v243 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v237, v237), v240), v237), v241);
  v244 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v238, v238), v240), v238), v241);
  v245 = vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v239, v239), v240), v239), v241);
  v246 = vdupq_n_s64(a7);
  v247 = veorq_s8(v245, v246);
  v248 = veorq_s8(v244, v246);
  v249 = veorq_s8(v243, v246);
  v250 = veorq_s8(v242, v246);
  v251 = vsraq_n_u64(vshlq_n_s64(v231, 3uLL), v231, 0x3DuLL);
  v252 = vsraq_n_u64(vshlq_n_s64(v230, 3uLL), v230, 0x3DuLL);
  v253 = veorq_s8(v250, vsraq_n_u64(vshlq_n_s64(v228, 3uLL), v228, 0x3DuLL));
  v254 = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v229, 3uLL), v229, 0x3DuLL));
  v255 = veorq_s8(v248, v252);
  v256 = veorq_s8(v247, v251);
  v257 = vsraq_n_u64(vshlq_n_s64(v250, 0x38uLL), v250, 8uLL);
  v258 = vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL);
  v259 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v247, 0x38uLL), v247, 8uLL), v256);
  v260 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v248, 0x38uLL), v248, 8uLL), v255);
  v261 = vaddq_s64(v258, v254);
  v262 = vaddq_s64(v257, v253);
  v263 = vdupq_n_s64(a8);
  v264 = vdupq_n_s64(v22);
  v265 = vdupq_n_s64(v23);
  v266 = veorq_s8(vaddq_s64(vsubq_s64(v262, vandq_s8(vaddq_s64(v262, v262), v263)), v264), v265);
  v267 = veorq_s8(vaddq_s64(vsubq_s64(v261, vandq_s8(vaddq_s64(v261, v261), v263)), v264), v265);
  v268 = veorq_s8(vaddq_s64(vsubq_s64(v260, vandq_s8(vaddq_s64(v260, v260), v263)), v264), v265);
  v269 = veorq_s8(vaddq_s64(vsubq_s64(v259, vandq_s8(vaddq_s64(v259, v259), v263)), v264), v265);
  v270 = vsraq_n_u64(vshlq_n_s64(v253, 3uLL), v253, 0x3DuLL);
  v271 = vsraq_n_u64(vshlq_n_s64(v254, 3uLL), v254, 0x3DuLL);
  v272 = vsraq_n_u64(vshlq_n_s64(v255, 3uLL), v255, 0x3DuLL);
  v273 = veorq_s8(v269, vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL));
  v274 = veorq_s8(v268, v272);
  v275 = veorq_s8(v267, v271);
  v276 = veorq_s8(v266, v270);
  v277 = vsraq_n_u64(vshlq_n_s64(v269, 0x38uLL), v269, 8uLL);
  v278 = vsraq_n_u64(vshlq_n_s64(v268, 0x38uLL), v268, 8uLL);
  v279 = vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL);
  v280 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v266, 0x38uLL), v266, 8uLL), v276);
  v281 = vdupq_n_s64(0x57D072DFC3A5F657uLL);
  v282 = veorq_s8(vaddq_s64(v277, v273), v281);
  v283 = veorq_s8(vaddq_s64(v278, v274), v281);
  v284 = veorq_s8(vaddq_s64(v279, v275), v281);
  v285 = veorq_s8(v280, v281);
  v286 = vsraq_n_u64(vshlq_n_s64(v273, 3uLL), v273, 0x3DuLL);
  v287 = vsraq_n_u64(vshlq_n_s64(v274, 3uLL), v274, 0x3DuLL);
  v288 = vsraq_n_u64(vshlq_n_s64(v275, 3uLL), v275, 0x3DuLL);
  v289 = veorq_s8(v285, vsraq_n_u64(vshlq_n_s64(v276, 3uLL), v276, 0x3DuLL));
  v290 = veorq_s8(v284, v288);
  v291 = veorq_s8(v283, v287);
  v292 = veorq_s8(v282, v286);
  v293 = vsraq_n_u64(vshlq_n_s64(v285, 0x38uLL), v285, 8uLL);
  v294 = vsraq_n_u64(vshlq_n_s64(v284, 0x38uLL), v284, 8uLL);
  v295 = vsraq_n_u64(vshlq_n_s64(v283, 0x38uLL), v283, 8uLL);
  v296 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v282, 0x38uLL), v282, 8uLL), v292);
  v297 = vaddq_s64(v295, v291);
  v298 = vaddq_s64(v294, v290);
  v299 = vaddq_s64(v293, v289);
  v300 = vdupq_n_s64(v24);
  v301 = vdupq_n_s64(v25);
  v302 = vaddq_s64(vsubq_s64(v296, vandq_s8(vaddq_s64(v296, v296), v300)), v301);
  v303 = vaddq_s64(vsubq_s64(v297, vandq_s8(vaddq_s64(v297, v297), v300)), v301);
  v304 = vaddq_s64(vsubq_s64(v298, vandq_s8(vaddq_s64(v298, v298), v300)), v301);
  v305 = vaddq_s64(vsubq_s64(v299, vandq_s8(vaddq_s64(v299, v299), v300)), v301);
  v306 = vdupq_n_s64(v26);
  v307 = veorq_s8(v305, v306);
  v308 = veorq_s8(v304, v306);
  v309 = veorq_s8(v303, v306);
  v310 = veorq_s8(v302, v306);
  v311 = vsraq_n_u64(vshlq_n_s64(v289, 3uLL), v289, 0x3DuLL);
  v312 = vsraq_n_u64(vshlq_n_s64(v290, 3uLL), v290, 0x3DuLL);
  v313 = vsraq_n_u64(vshlq_n_s64(v291, 3uLL), v291, 0x3DuLL);
  v314 = veorq_s8(v310, vsraq_n_u64(vshlq_n_s64(v292, 3uLL), v292, 0x3DuLL));
  v315 = veorq_s8(v309, v313);
  v316 = veorq_s8(v308, v312);
  v317 = veorq_s8(v307, v311);
  v318 = vsraq_n_u64(vshlq_n_s64(v310, 0x38uLL), v310, 8uLL);
  v319 = vsraq_n_u64(vshlq_n_s64(v309, 0x38uLL), v309, 8uLL);
  v320 = vsraq_n_u64(vshlq_n_s64(v308, 0x38uLL), v308, 8uLL);
  v321 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v307, 0x38uLL), v307, 8uLL), v317);
  v322 = vaddq_s64(v320, v316);
  v323 = vaddq_s64(v319, v315);
  v324 = vaddq_s64(v318, v314);
  v325 = vdupq_n_s64(v21);
  v326 = vdupq_n_s64(0x2451E0AF25CF2710uLL);
  v327 = vaddq_s64(vsubq_s64(vorrq_s8(v324, v325), vorrq_s8(v324, v326)), v326);
  v328 = vaddq_s64(vsubq_s64(vorrq_s8(v323, v325), vorrq_s8(v323, v326)), v326);
  v329 = vaddq_s64(vsubq_s64(vorrq_s8(v322, v325), vorrq_s8(v322, v326)), v326);
  v330 = vaddq_s64(vsubq_s64(vorrq_s8(v321, v325), vorrq_s8(v321, v326)), v326);
  v331 = vdupq_n_s64(v18);
  v332 = veorq_s8(v330, v331);
  v333 = veorq_s8(v329, v331);
  v334 = veorq_s8(v328, v331);
  v335 = veorq_s8(v327, v331);
  v336 = vsraq_n_u64(vshlq_n_s64(v317, 3uLL), v317, 0x3DuLL);
  v337 = vsraq_n_u64(vshlq_n_s64(v316, 3uLL), v316, 0x3DuLL);
  v338 = vsraq_n_u64(vshlq_n_s64(v315, 3uLL), v315, 0x3DuLL);
  v339 = veorq_s8(v335, vsraq_n_u64(vshlq_n_s64(v314, 3uLL), v314, 0x3DuLL));
  v340 = veorq_s8(v334, v338);
  v341 = veorq_s8(v333, v337);
  v342 = veorq_s8(v332, v336);
  v343 = vsraq_n_u64(vshlq_n_s64(v335, 0x38uLL), v335, 8uLL);
  v344 = vsraq_n_u64(vshlq_n_s64(v334, 0x38uLL), v334, 8uLL);
  v345 = vsraq_n_u64(vshlq_n_s64(v333, 0x38uLL), v333, 8uLL);
  v346 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v332, 0x38uLL), v332, 8uLL), v342);
  v347 = vaddq_s64(v344, v340);
  v348 = vaddq_s64(v343, v339);
  v349 = vdupq_n_s64(0x6E1E19DDB33CB23AuLL);
  v350 = veorq_s8(v348, v349);
  v351 = veorq_s8(v347, v349);
  v352 = veorq_s8(vaddq_s64(v345, v341), v349);
  v353 = veorq_s8(v346, v349);
  v354 = vsraq_n_u64(vshlq_n_s64(v339, 3uLL), v339, 0x3DuLL);
  v355 = vsraq_n_u64(vshlq_n_s64(v340, 3uLL), v340, 0x3DuLL);
  v356 = vsraq_n_u64(vshlq_n_s64(v341, 3uLL), v341, 0x3DuLL);
  v357 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v353, 0x38uLL), v353, 8uLL), veorq_s8(v353, vsraq_n_u64(vshlq_n_s64(v342, 3uLL), v342, 0x3DuLL)));
  v358 = vdupq_n_s64(0x3532CD90FD5B1622uLL);
  v359 = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v351, 0x38uLL), v351, 8uLL), veorq_s8(v351, v355)), v358), vnegq_s64(vandq_s8(vshlq_n_s64(v37, 3uLL), v49)));
  v361.val[3] = veorq_s8(vshlq_u64(veorq_s8(v357, v358), vnegq_s64(vandq_s8(vshlq_n_s64(v39, 3uLL), v49))), v197);
  v361.val[1] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v352, 0x38uLL), v352, 8uLL), veorq_s8(v352, v356)), v358), vnegq_s64(vandq_s8(vshlq_n_s64(v38, 3uLL), v49))), v196);
  v361.val[0] = veorq_s8(v359, v195);
  v361.val[2] = veorq_s8(vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v350, 0x38uLL), v350, 8uLL), veorq_s8(v350, v354)), v358), vnegq_s64(vandq_s8(vshlq_n_s64(v36, 3uLL), v49))), v194);
  *(v29 - 8) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v361, xmmword_1002BF670)), *(v30 - 8));
  return (*(STACK[0x330] + 8 * ((6644 * (v28 == 0)) ^ a3)))();
}

uint64_t sub_1002683D8()
{
  *(v5 - 224) = v1 ^ (914963389 * ((((2 * (v5 - 232)) | 0xF478A40A) - (v5 - 232) + 96710139) ^ 0xD6C0E37E));
  v6 = (*(v4 + 8 * (v0 ^ 0x326D)))(v5 - 232);
  *(v3 + 16) = *(v5 - 232) ^ v2;
  return (*(v4 + 8 * (v0 + 674)))(v6);
}

uint64_t sub_1002684C8()
{
  LOWORD(STACK[0x89A]) = v2;
  LODWORD(STACK[0x2B0]) = v2;
  return (*(STACK[0x330] + 8 * (v1 - 5298)))();
}

uint64_t sub_1002685A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, unint64_t a51)
{
  v51 = STACK[0x3E4];
  v52 = (a3 ^ 0xBC59953u) + STACK[0x240];
  STACK[0x8B0] = v52;
  return (*(STACK[0x3E8] + 8 * ((v51 - 260) | (8 * (v52 <= a51)))))();
}

uint64_t sub_10026878C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, int a11, uint64_t a12, int a13, unsigned int a14)
{
  v18 = 914963389 * (((&a10 | 0xB4866586) - &a10 + (&a10 & 0x4B799A78)) ^ 0x987AD4FD);
  a10 = &a9;
  a12 = v14;
  a13 = (((2 * v17) & 0x32) - 68295680 + (((v16 ^ 0x1D34) + 503206904) ^ v17)) ^ v18;
  a14 = -1686438660 - v18;
  a11 = (v16 - 4185) ^ v18;
  v19 = (*(v15 + 8 * (v16 + 4491)))(&a10);
  return (*(v15 + 8 * ((2708 * (*(v14 + 24) == 16257999)) ^ v16)))(v19);
}

void sub_1002688B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  *&STACK[0x380] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x390] = vdupq_n_s64(0x9508DCB2F33ECE2BLL);
  *&STACK[0x360] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x370] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  STACK[0x210] = a5 & 0xFFFFFFF8;
  *&STACK[0x340] = vdupq_n_s64(0x6FE9388060F65D57uLL);
  *&STACK[0x350] = vdupq_n_s64(0x202D8EFF3E134550uLL);
  *&STACK[0x320] = vdupq_n_s64(0x45B996DFB575EE6uLL);
  *&STACK[0x330] = vdupq_n_s64(0x9A4BC939D526EF5ELL);
  *&STACK[0x300] = vdupq_n_s64(0x5B4E7A73A872D06CuLL);
  *&STACK[0x310] = vdupq_n_s64(0xFDD233490254508DLL);
  *&STACK[0x2E0] = vdupq_n_s64(0xE50EF93BD6C6A2AALL);
  *&STACK[0x2F0] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x2C0] = vdupq_n_s64(0x8D788362149CAEAALL);
  *&STACK[0x2D0] = xmmword_1002BF670;
  *&STACK[0x2A0] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x2B0] = vdupq_n_s64(0xEC3D1E48E4838A5DLL);
  *&STACK[0x280] = vdupq_n_s64(0x39627EADB2F598AFuLL);
  *&STACK[0x290] = vdupq_n_s64(0x8D3B02A49A14CEA0);
  *&STACK[0x260] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x270] = vdupq_n_s64(0x92523C7F9A72C4EELL);
  *&STACK[0x240] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x250] = vdupq_n_s64(0xD54EE0FE93425299);
  *&STACK[0x220] = vdupq_n_s64(a6);
  *&STACK[0x230] = vdupq_n_s64(a8);
  JUMPOUT(0x100268B0CLL);
}

void sub_1002695D4(uint64_t a1)
{
  v1 = *(a1 + 8) - 2008441969 * ((((2 * a1) | 0x66E4568) - a1 - 53945012) ^ 0x4BAE76BA);
  v2 = *(&off_100315F70 + v1 - 3776) - 8;
  (*&v2[8 * v1 + 44360])(v5, 0, 128);
  v3 = 1710126949 * ((&v6 + 738329364 - 2 * (&v6 & 0x2C020314)) ^ 0x1E195884);
  LODWORD(v7) = v3 ^ (v1 + 940076323);
  HIDWORD(v7) = 1303982150 - v3;
  v6 = v5;
  (*&v2[8 * (v1 ^ 0x2A6A)])(&v6);
  v4 = 31943069 * (&v6 ^ 0x5312319B63A94678);
  v6 = v5;
  v7 = (v4 + 0x605222BC435F6A18) | 1;
  v8 = v1 - v4 + 584252646;
  (*&v2[8 * v1 + 44912])(&v6);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_100269980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = a2 - 1;
  v18 = v9 + v17 + v8;
  v19 = __ROR8__(v18 & ((4243 * (v7 ^ 0x1467u)) ^ 0xFFFFFFFFFFFFDEDELL), 8);
  v20 = (v19 + a5) ^ a6;
  v21 = __ROR8__((v19 + a5) ^ v16, 8);
  v22 = __ROR8__(((v11 & (2 * (v21 + v20))) - (v21 + v20) + v15) ^ v13, 8);
  v23 = ((v11 & (2 * (v21 + v20))) - (v21 + v20) + v15) ^ v13 ^ __ROR8__(v20, 61);
  v24 = (v10 - ((v22 + v23) | v10) + ((v22 + v23) | v12)) ^ v14;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ a7;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0xF2620266DFD8DE82;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (v30 + v29 - ((2 * (v30 + v29)) & 0x5C3E923DC79C4710) + 0x2E1F491EE3CE2388) ^ 0x97A1B9D365930275;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x6E1E19DDB33CB23ALL;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  *v18 = ((((2 * (v35 + v34)) & 0x93BA3B681E438AC2) - (v35 + v34) + 0x3622E24BF0DE3A9ELL) ^ 0x3102FDB0D852CBCLL) >> (8 * (v18 & 7u));
  return (*(a4 + 8 * ((3146 * (v17 == 0)) ^ (v7 + 613))))();
}

uint64_t sub_100269B04()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x2887)))();
  STACK[0x418] = 0;
  return (STACK[0x770])(v2);
}

uint64_t sub_100269B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a16 = (v18 + 2109) ^ ((((&a15 | 0x93B9EC39) - &a15 + (&a15 & 0x6C4613C0)) ^ 0xAA4F261A) * v21);
  a17 = a10;
  a18 = &a12;
  (*(v20 + 8 * (v18 ^ 0x2136)))(&a15);
  LODWORD(a18) = v18 - 2008441969 * (((&a15 ^ 0x709A6727 | 0xD9489401) - ((&a15 ^ 0x709A6727) & 0xD9489401)) ^ 0xE14BA728) + 4542;
  a17 = a10;
  v22 = (*(v20 + 8 * (v18 + 8508)))(&a15);
  return (*(v20 + 8 * ((6862 * (a15 == ((v18 + 1715159448) & 0x1E9F ^ (v19 + 905)))) ^ v18)))(v22);
}

uint64_t sub_100269C9C()
{
  v3 = (*(v2 + 8 * (v1 + 3212)))(64, v0);
  STACK[0x760] = v3;
  return (*(v2 + 8 * (((v3 != 0) * (((v1 + 1788240529) & 0x9569A57B) - 8456)) ^ (v1 + 1657))))();
}

void sub_100269D10(uint64_t a1)
{
  v1 = *(a1 + 4) + 1875091903 * ((a1 & 0xE8D1405E | ~(a1 | 0xE8D1405E)) ^ 0x215B3C22);
  v3 = v1 - 1710126949 * ((((&v3 | 0x1649C412) ^ 0xFFFFFFFE) - (~&v3 | 0xE9B63BED)) ^ 0xDBAD607D) + 476319409;
  v2 = *(&off_100315F70 + (v1 ^ 0xF4E)) - 8;
  (*&v2[8 * v1 + 47704])(&v3);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100269FB0@<X0>(unint64_t a1@<X0>, __int16 a2@<W8>)
{
  STACK[0x660] = a1;
  LODWORD(STACK[0x9B8]) = v5;
  LOWORD(STACK[0x9BE]) = a2;
  LODWORD(STACK[0x9C0]) = v6;
  LODWORD(STACK[0x9C4]) = v2;
  STACK[0x9C8] = v4;
  STACK[0x9D0] = v7;
  return (*(v8 + 8 * (((a1 == 0) * (538 * ((v3 - 2060051445) & 0x7AC9D7F6 ^ 0x15F1) - 2807)) ^ v3)))();
}

void sub_10026A01C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10026A08C(uint64_t a1)
{
  v7 = *(v3 + 8 * (((v5 - 8844) | 0x1003) ^ 0x370C));
  v9 = v7(a1, 0);
  if (v9 == 16)
  {
    v6 = -42029;
    result = a1;
    goto LABEL_7;
  }

  v10 = v9;
  result = a1;
  if (v10 == 12)
  {
LABEL_7:
    result = (*(v3 + 8 * (v2 + 5221)))(result);
    goto LABEL_8;
  }

  if (v10)
  {
    v6 = -42030;
    goto LABEL_7;
  }

  v6 = 0;
  *v4 = a1;
LABEL_8:
  *v1 = v6;
  return result;
}

uint64_t sub_10026A11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12)
{
  v18 = ((2 * (v14 & 0x7B7D5B721A426FF8) - v14 - 0x7B7D5B721A427000) ^ 0x50662B01540C0705) * v17;
  a12 = *(v16 + 20) - v18 + 0x4BDB88A3AECF6863 + (~(2 * *(v16 + 20)) | 0x6848EEB8A2612F3BLL);
  a10 = v18 - 1219622829 + v13;
  v19 = (*(v12 + 8 * (v13 + 3284)))(&a10);
  if (a11 != 16257999 && a11 != 16215948)
  {
    return (*(v12 + 8 * (((v15 - 6340) * (a11 == 16257999)) ^ (v15 - 3715))))(v19);
  }

  *(v16 + 20) = 0;
  *(v16 + 92) = 203186117;
  v22 = *(v16 + 124);
  if (v22)
  {
    v23 = *(v16 + 116) == ((v15 - 1119) ^ 0x14E1);
  }

  else
  {
    v23 = 1;
  }

  v24 = v23;
  return (*(v12 + 8 * ((143 * v24) ^ (v15 - 2854))))(v22, v20, v21);
}

uint64_t sub_10026A29C@<X0>(int a1@<W8>)
{
  v2 = a1 | 0x4B8;
  v3 = (a1 | 0x4B8) ^ 0x1839;
  v4 = *(STACK[0x720] + 24);
  STACK[0x388] = v4;
  return (*(v1 + 8 * (((v4 != 0) * (v3 - 3354)) ^ v2)))();
}

uint64_t sub_10026A2E0(uint64_t a1)
{
  v2 = *(a1 + 4) + 956911519 * ((a1 - 1138522822 - 2 * (a1 & 0xBC23853A)) ^ 0x56B2F53F);
  v5 = v2 + 2048652491 * ((-381725712 - (v4 | 0xE93F53F0) + (v4 | 0x16C0AC0F)) ^ 0xA7713B0A) - 1986968849;
  result = (*(*(&off_100315F70 + (v2 ^ 0x766EDD31)) + (v2 ^ 0x766EF9F1) - 1))(v4);
  *a1 = v4[0];
  return result;
}

void sub_10026A400()
{
  v0 = *(&off_100315F70 + ((-85 * ((dword_100330E70 - dword_100331008) ^ 0xDF)) ^ byte_1002B0220[byte_1002A5CB0[(-85 * ((dword_100330E70 - dword_100331008) ^ 0xDF))] ^ 0xEE]) + 144);
  v1 = -85 * ((dword_100330E70 - *v0) ^ 0xDF);
  v2 = *(&off_100315F70 + (byte_1002B7208[(byte_1002B0328[v1 - 8] ^ 1) - 8] ^ v1) + 14);
  v3 = *v2 - *v0 - &v5;
  *v0 = 2054362027 * v3 + 0x1FC86B74B1533AF5;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((2 * (v6 & 0x36DDAAE8) - v6 + 1226986771) ^ 0x7B390E83);
  LOBYTE(v2) = -85 * (*v0 ^ 0xDF ^ *v2);
  v4 = *(&off_100315F70 + ((-85 * ((dword_100330E70 + dword_100331008) ^ 0xDF)) ^ byte_1002B7200[byte_1002B0320[(-85 * ((dword_100330E70 + dword_100331008) ^ 0xDF))] ^ 0x9B]) + 206) - 8;
  (*&v4[8 * (byte_1002B7308[(byte_1002B0420[v2] ^ 0x2A) - 8] ^ v2) + 75712])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10026A61C@<X0>(uint64_t a1@<X0>, int a2@<W6>, uint64_t a3@<X8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(a3 + v7);
  return (*(v6 + 8 * ((14241 * (v7 == (((a2 + v5 + 2114) | 0x335u) ^ 0xBB5))) ^ (v5 + v3))))();
}

void sub_10026A710(uint64_t a1@<X8>)
{
  (*(v2 + 8 * (v1 ^ 0x3C5E)))(a1);
  *(STACK[0x618] + 24) = 0;
  JUMPOUT(0x10015D0F8);
}

uint64_t sub_10026A788()
{
  STACK[0xA88] = v1;
  v3 = STACK[0x928];
  STACK[0xA90] = STACK[0x928];
  return (*(v2 + 8 * (((v1 - v3 > (v0 ^ 0x9E5u) - 478) * ((v0 ^ 0x1FC9) - 6053)) ^ v0)))();
}

uint64_t sub_10026A7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v23 = ((2 * (&a16 & 0xF70C7B8) - &a16 + 1888434244) ^ 0x28E6EB26) * v21;
  a17 = v23 + 982124808;
  a18 = a12;
  a19 = &a14;
  a20 = -654855621 - v23;
  a21 = v23 + a10 + 1674574660;
  v24 = (*(v22 + 8 * (a10 ^ 0x34EE)))(&a16);
  return (*(v22 + 8 * ((13329 * (a16 == ((a10 - 2512) ^ 0xF81459))) ^ a10)))(v24);
}

uint64_t sub_10026A95C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 104) = veorq_s8(*(v4 + 88), xmmword_1002BF680);
  v5 = *(v4 + 4);
  *(a1 + 20) = v5;
  return (*(a4 + 8 * (((v5 == ((a2 + 7428) ^ 0x24D7)) * (a2 + 3628)) ^ (a2 - 917))))();
}

uint64_t sub_10026A9B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 138;
  v6 = (*(a4 + 8 * (v4 + 3326)))(138, 0x100004077774924);
  v7 = STACK[0x3E8];
  *(a1 + 24) = v6;
  return (*(v7 + 8 * (((v6 != 0) * ((((v4 - 5919) | 0x400) + 3808) ^ 0x146E)) | v4)))();
}

uint64_t sub_10026AA8C()
{
  v3 = STACK[0x6B0];
  *(v1 + 104) = 16;
  *(v1 + 103) = *(v3 + 23);
  *(v1 + 102) = *(v3 + 22);
  *(v1 + 101) = *(v3 + 21);
  *(v1 + 100) = *(v3 + 20);
  *(v1 + 99) = *(v3 + 19);
  *(v1 + 98) = *(v3 + 18);
  *(v1 + 97) = *(v3 + 17);
  *(v1 + 96) = *(v3 + 16);
  *(v1 + 95) = *(v3 + 15);
  *(v1 + 94) = *(v3 + 14);
  *(v1 + 93) = *(v3 + 13);
  *(v1 + 92) = *(v3 + 12);
  *(v1 + 91) = *(v3 + 11);
  *(v1 + 90) = *(v3 + 10);
  *(v1 + 89) = *(v3 + 9);
  *(v1 + 88) = *(v3 + 8);
  *(v1 + 84) = *v3;
  return (*(v2 + 8 * (((*(v3 + 4) == 0) * ((v0 + 458231097) & 0xE4AFF4DF ^ 0x1DE6)) ^ v0)))();
}

void sub_10026ABE8()
{
  v3 = *(v0 + 40);
  **(v0 + 16) = v2;
  *v3 = v4;
  *(v0 + 56) = v1;
}

uint64_t sub_10026AC58(_DWORD *a1)
{
  v2 = a1[1] ^ (956911519 * ((2 * (a1 & 0x3B074F9) - a1 - 61895930) ^ 0x16DEFB03));
  v4[1] = v2 + 1710126949 * (((v4 | 0xB6B0CF29) + (~v4 | 0x494F30D6)) ^ 0x84AB94B8) - 1179738666;
  result = (*(*(&off_100315F70 + (v2 ^ 0xA98300C0)) + (v2 ^ 0xA983240E) - 1))(v4);
  *a1 = v4[0];
  return result;
}

uint64_t sub_10026AEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v90.i64[0] = &v72[-164] + (((v74 ^ v71) - 3151) | v73) - 4;
  v90.i64[1] = v72->i64 + 7;
  v91 = v90;
  *&STACK[0x310] = v90;
  v92.i64[0] = v72->i64 + 2;
  v92.i64[1] = v72->i64 + 3;
  v93.i64[0] = v72->i64 + 4;
  v93.i64[1] = v72->i64 + 5;
  v94.i64[0] = v72;
  v94.i64[1] = v72->i64 + 1;
  v90.i64[0] = &v72->i64[1];
  v90.i64[1] = &v72->i64[1] + 1;
  *&STACK[0x370] = v90;
  v90.i64[0] = &v72->i64[1] + 2;
  v90.i64[1] = &v72->i64[1] + 3;
  *&STACK[0x360] = v90;
  v95 = vandq_s8(v94, *&STACK[0x350]);
  v96 = vandq_s8(v93, *&STACK[0x350]);
  v97 = vandq_s8(v92, *&STACK[0x350]);
  v98 = vandq_s8(v91, *&STACK[0x350]);
  v99 = *&STACK[0x2E0];
  v100 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v95, 0x38uLL), v95, 8uLL), *&STACK[0x2E0]);
  v101 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), *&STACK[0x2E0]);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), *&STACK[0x2E0]);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), *&STACK[0x2E0]);
  v104 = vsubq_s64(vorrq_s8(v100, *&STACK[0x340]), vorrq_s8(v100, v84));
  v105 = vsubq_s64(vorrq_s8(v101, *&STACK[0x340]), vorrq_s8(v101, v84));
  v106 = vsubq_s64(vorrq_s8(v102, *&STACK[0x340]), vorrq_s8(v102, v84));
  *&STACK[0x320] = vsubq_s64(vorrq_s8(v103, *&STACK[0x340]), vorrq_s8(v103, v84));
  v107 = vaddq_s64(v105, v84);
  v108 = vaddq_s64(v104, v84);
  v109 = veorq_s8(v108, v89);
  v110 = veorq_s8(v107, v89);
  v111 = *&STACK[0x2B0];
  v112 = veorq_s8(v107, *&STACK[0x2C0]);
  v113 = veorq_s8(v108, *&STACK[0x2C0]);
  v114 = *&STACK[0x2C0];
  v115 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v112), *&STACK[0x2B0]);
  v116 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v113), *&STACK[0x2B0]);
  v117 = vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL);
  v118 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v113, 3uLL), v113, 0x3DuLL));
  v119 = veorq_s8(v115, v117);
  v120 = vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL);
  v121 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL), v119);
  v122 = veorq_s8(vaddq_s64(v120, v118), v77);
  v123 = veorq_s8(v121, v77);
  v124 = veorq_s8(v123, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v125 = veorq_s8(v122, vsraq_n_u64(vshlq_n_s64(v118, 3uLL), v118, 0x3DuLL));
  v126 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v122, 0x38uLL), v122, 8uLL), v125);
  v128 = vaddq_s64(v126, v124);
  v129 = *&STACK[0x290];
  v130 = veorq_s8(vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(v128, v128), *&STACK[0x290])), v78), v79);
  v131 = veorq_s8(vaddq_s64(vsubq_s64(v127, vandq_s8(vaddq_s64(v127, v127), *&STACK[0x290])), v78), v79);
  v132 = veorq_s8(v131, vsraq_n_u64(vshlq_n_s64(v125, 3uLL), v125, 0x3DuLL));
  v133 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v124, 3uLL), v124, 0x3DuLL));
  v134 = vsraq_n_u64(vshlq_n_s64(v131, 0x38uLL), v131, 8uLL);
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v133);
  v136 = veorq_s8(vaddq_s64(v134, v132), v80);
  v137 = veorq_s8(v135, v80);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v133, 3uLL), v133, 0x3DuLL));
  v139 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v132, 3uLL), v132, 0x3DuLL));
  v140 = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v141 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v139);
  v142 = vaddq_s64(v140, v138);
  v143 = *&STACK[0x330];
  v144 = *&STACK[0x250];
  v145 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v142, v142), *&STACK[0x330]), v142), *&STACK[0x250]), v83);
  v146 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v141, v141), *&STACK[0x330]), v141), *&STACK[0x250]), v83);
  v147 = veorq_s8(v146, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v148 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL));
  v149 = vsraq_n_u64(vshlq_n_s64(v146, 0x38uLL), v146, 8uLL);
  v150 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), v148);
  v151 = vaddq_s64(v149, v147);
  v152 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v150, v85), vorrq_s8(v150, v87)), v87), v86);
  v153 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v151, v85), vorrq_s8(v151, v87)), v87), v86);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v155 = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v156.i64[0] = &v72->i64[1] + 4;
  v156.i64[1] = &v72->i64[1] + 5;
  *&STACK[0x300] = v156;
  v157 = vaddq_s64(v106, v84);
  v158 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL)));
  v159 = vaddq_s64(v155, v154);
  v274.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v159, v88), vorrq_s8(v159, v81)), v81), v82), vnegq_s64(vandq_s8(vshlq_n_s64(v94, 3uLL), v76)));
  v274.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v158, v88), vorrq_s8(v158, v81)), v81), v82), vnegq_s64(vandq_s8(vshlq_n_s64(v93, 3uLL), v76)));
  v160 = veorq_s8(v157, v89);
  v161 = veorq_s8(v157, v114);
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), v111);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), v77);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL), v165);
  v167 = veorq_s8(vaddq_s64(vsubq_s64(v166, vandq_s8(vaddq_s64(v166, v166), v129)), v78), v79);
  v168 = veorq_s8(v167, vsraq_n_u64(vshlq_n_s64(v165, 3uLL), v165, 0x3DuLL));
  v169 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL), v168), v80);
  v170 = veorq_s8(v169, vsraq_n_u64(vshlq_n_s64(v168, 3uLL), v168, 0x3DuLL));
  v171 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL), v170);
  v172 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v171, v171), v143), v171), v144), v83);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v170, 3uLL), v170, 0x3DuLL));
  v174 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173);
  v175 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v174, v85), vorrq_s8(v174, v87)), v87), v86);
  v93.i64[0] = &v72->i64[1] + 6;
  v93.i64[1] = &v72->i64[1] + 7;
  v176 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), veorq_s8(v175, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL)));
  v177 = vandq_s8(v93, *&STACK[0x350]);
  v178 = vaddq_s64(*&STACK[0x320], v84);
  v274.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v176, v88), vorrq_s8(v176, v81)), v81), v82), vnegq_s64(vandq_s8(vshlq_n_s64(v92, 3uLL), v76)));
  v179 = veorq_s8(v178, v89);
  v180 = veorq_s8(v178, v114);
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), v111);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v183 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182), v77);
  v184 = veorq_s8(v183, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v185 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v183, 0x38uLL), v183, 8uLL), v184);
  v186 = veorq_s8(vaddq_s64(vsubq_s64(v185, vandq_s8(vaddq_s64(v185, v185), v129)), v78), v79);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v184, 3uLL), v184, 0x3DuLL));
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187), v80);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189);
  v191 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v190, v190), v143), v190), v144), v83);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v193 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192);
  v194 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v193, v85), vorrq_s8(v193, v87)), v87), v86);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v196 = vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL);
  v197 = vandq_s8(v156, *&STACK[0x350]);
  v198 = vaddq_s64(v196, v195);
  v199 = vandq_s8(*&STACK[0x360], *&STACK[0x350]);
  v274.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v198, v88), vorrq_s8(v198, v81)), v81), v82), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x310], 3uLL), v76)));
  v200 = vandq_s8(*&STACK[0x370], *&STACK[0x350]);
  v201 = vsraq_n_u64(vshlq_n_s64(v200, 0x38uLL), v200, 8uLL);
  v202 = vsraq_n_u64(vshlq_n_s64(v199, 0x38uLL), v199, 8uLL);
  v203 = vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL);
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v99);
  v205 = vaddq_s64(v203, v99);
  v206 = vaddq_s64(v202, v99);
  v207 = vaddq_s64(v201, v99);
  v208 = vsubq_s64(vorrq_s8(v205, *&STACK[0x340]), vorrq_s8(v205, v84));
  v209 = vsubq_s64(vorrq_s8(v206, *&STACK[0x340]), vorrq_s8(v206, v84));
  v210 = vsubq_s64(vorrq_s8(v207, *&STACK[0x340]), vorrq_s8(v207, v84));
  v211 = vaddq_s64(v208, v84);
  v212 = vaddq_s64(vsubq_s64(vorrq_s8(v204, *&STACK[0x340]), vorrq_s8(v204, v84)), v84);
  v207.i64[0] = vqtbl4q_s8(v274, a71).u64[0];
  v213 = veorq_s8(v212, v89);
  v274.val[0] = veorq_s8(v211, v89);
  v274.val[1] = veorq_s8(v211, v114);
  v274.val[2] = veorq_s8(v212, v114);
  v274.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), v274.val[1]), v111);
  v214 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v213, 0x38uLL), v213, 8uLL), v274.val[2]), v111);
  v215 = vsraq_n_u64(vshlq_n_s64(v274.val[1], 3uLL), v274.val[1], 0x3DuLL);
  v274.val[1] = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v274.val[2], 3uLL), v274.val[2], 0x3DuLL));
  v274.val[2] = veorq_s8(v274.val[0], v215);
  v216 = vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL);
  v217 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), v274.val[2]);
  v274.val[0] = veorq_s8(vaddq_s64(v216, v274.val[1]), v77);
  v218 = veorq_s8(v217, v77);
  v219 = vsraq_n_u64(vshlq_n_s64(v274.val[1], 3uLL), v274.val[1], 0x3DuLL);
  v274.val[1] = veorq_s8(v218, vsraq_n_u64(vshlq_n_s64(v274.val[2], 3uLL), v274.val[2], 0x3DuLL));
  v274.val[2] = veorq_s8(v274.val[0], v219);
  v220 = vsraq_n_u64(vshlq_n_s64(v218, 0x38uLL), v218, 8uLL);
  v221 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), v274.val[2]);
  v274.val[0] = vaddq_s64(v220, v274.val[1]);
  v274.val[0] = veorq_s8(vaddq_s64(vsubq_s64(v274.val[0], vandq_s8(vaddq_s64(v274.val[0], v274.val[0]), v129)), v78), v79);
  v222 = veorq_s8(vaddq_s64(vsubq_s64(v221, vandq_s8(vaddq_s64(v221, v221), v129)), v78), v79);
  v223 = vsraq_n_u64(vshlq_n_s64(v274.val[1], 3uLL), v274.val[1], 0x3DuLL);
  v274.val[1] = veorq_s8(v222, vsraq_n_u64(vshlq_n_s64(v274.val[2], 3uLL), v274.val[2], 0x3DuLL));
  v274.val[2] = veorq_s8(v274.val[0], v223);
  v224 = vsraq_n_u64(vshlq_n_s64(v222, 0x38uLL), v222, 8uLL);
  v225 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), v274.val[2]);
  v274.val[0] = veorq_s8(vaddq_s64(v224, v274.val[1]), v80);
  v226 = veorq_s8(v225, v80);
  v227 = vsraq_n_u64(vshlq_n_s64(v274.val[1], 3uLL), v274.val[1], 0x3DuLL);
  v274.val[1] = veorq_s8(v226, vsraq_n_u64(vshlq_n_s64(v274.val[2], 3uLL), v274.val[2], 0x3DuLL));
  v274.val[2] = veorq_s8(v274.val[0], v227);
  v228 = vsraq_n_u64(vshlq_n_s64(v226, 0x38uLL), v226, 8uLL);
  v229 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), v274.val[2]);
  v274.val[0] = vaddq_s64(v228, v274.val[1]);
  v274.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v274.val[0], v274.val[0]), *&STACK[0x330]), v274.val[0]), v144), v83);
  v230 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v229, v229), *&STACK[0x330]), v229), v144), v83);
  v231 = vsraq_n_u64(vshlq_n_s64(v274.val[1], 3uLL), v274.val[1], 0x3DuLL);
  v274.val[1] = veorq_s8(v230, vsraq_n_u64(vshlq_n_s64(v274.val[2], 3uLL), v274.val[2], 0x3DuLL));
  v274.val[2] = veorq_s8(v274.val[0], v231);
  v232 = vsraq_n_u64(vshlq_n_s64(v230, 0x38uLL), v230, 8uLL);
  v233 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), v274.val[2]);
  v274.val[0] = vaddq_s64(v232, v274.val[1]);
  v234 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v233, v85), vorrq_s8(v233, v87)), v87), v86);
  v274.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v274.val[0], v85), vorrq_s8(v274.val[0], v87)), v87), v86);
  v235 = vaddq_s64(v209, v84);
  v236 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v234, 0x38uLL), v234, 8uLL), veorq_s8(v234, vsraq_n_u64(vshlq_n_s64(v274.val[2], 3uLL), v274.val[2], 0x3DuLL)));
  v274.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v274.val[0], 0x38uLL), v274.val[0], 8uLL), veorq_s8(v274.val[0], vsraq_n_u64(vshlq_n_s64(v274.val[1], 3uLL), v274.val[1], 0x3DuLL)));
  v274.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v274.val[0], v88), vorrq_s8(v274.val[0], v81)), v81), v82), vnegq_s64(vandq_s8(vshlq_n_s64(v93, 3uLL), v76)));
  v274.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v236, v88), vorrq_s8(v236, v81)), v81), v82), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x300], 3uLL), v76)));
  v237 = veorq_s8(v235, v89);
  v238 = veorq_s8(v235, v114);
  v239 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v237, 0x38uLL), v237, 8uLL), v238), v111);
  v240 = veorq_s8(v239, vsraq_n_u64(vshlq_n_s64(v238, 3uLL), v238, 0x3DuLL));
  v241 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v239, 0x38uLL), v239, 8uLL), v240), v77);
  v242 = veorq_s8(v241, vsraq_n_u64(vshlq_n_s64(v240, 3uLL), v240, 0x3DuLL));
  v243 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v241, 0x38uLL), v241, 8uLL), v242);
  v244 = veorq_s8(vaddq_s64(vsubq_s64(v243, vandq_s8(vaddq_s64(v243, v243), v129)), v78), v79);
  v245 = veorq_s8(v244, vsraq_n_u64(vshlq_n_s64(v242, 3uLL), v242, 0x3DuLL));
  v246 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v244, 0x38uLL), v244, 8uLL), v245), v80);
  v247 = veorq_s8(v246, vsraq_n_u64(vshlq_n_s64(v245, 3uLL), v245, 0x3DuLL));
  v248 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v246, 0x38uLL), v246, 8uLL), v247);
  v249 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v248, v248), *&STACK[0x330]), v248), v144), v83);
  v250 = veorq_s8(v249, vsraq_n_u64(vshlq_n_s64(v247, 3uLL), v247, 0x3DuLL));
  v251 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v249, 0x38uLL), v249, 8uLL), v250);
  v252 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v251, v85), vorrq_s8(v251, v87)), v87), v86);
  v253 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v252, 0x38uLL), v252, 8uLL), veorq_s8(v252, vsraq_n_u64(vshlq_n_s64(v250, 3uLL), v250, 0x3DuLL)));
  v254 = vaddq_s64(v210, v84);
  v274.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v253, v88), vorrq_s8(v253, v81)), v81), v82), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x360], 3uLL), v76)));
  v255 = veorq_s8(v254, v89);
  v256 = veorq_s8(v254, v114);
  v257 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v255, 0x38uLL), v255, 8uLL), v256), v111);
  v258 = veorq_s8(v257, vsraq_n_u64(vshlq_n_s64(v256, 3uLL), v256, 0x3DuLL));
  v259 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v257, 0x38uLL), v257, 8uLL), v258), v77);
  v260 = veorq_s8(v259, vsraq_n_u64(vshlq_n_s64(v258, 3uLL), v258, 0x3DuLL));
  v261 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v259, 0x38uLL), v259, 8uLL), v260);
  v262 = veorq_s8(vaddq_s64(vsubq_s64(v261, vandq_s8(vaddq_s64(v261, v261), v129)), v78), v79);
  v263 = veorq_s8(v262, vsraq_n_u64(vshlq_n_s64(v260, 3uLL), v260, 0x3DuLL));
  v264 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v262, 0x38uLL), v262, 8uLL), v263), v80);
  v265 = veorq_s8(v264, vsraq_n_u64(vshlq_n_s64(v263, 3uLL), v263, 0x3DuLL));
  v266 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v264, 0x38uLL), v264, 8uLL), v265);
  v267 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v266, v266), *&STACK[0x330]), v266), v144), v83);
  v268 = veorq_s8(v267, vsraq_n_u64(vshlq_n_s64(v265, 3uLL), v265, 0x3DuLL));
  v269 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v267, 0x38uLL), v267, 8uLL), v268);
  v270 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v269, v85), vorrq_s8(v269, v87)), v87), v86);
  v271 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v270, 0x38uLL), v270, 8uLL), veorq_s8(v270, vsraq_n_u64(vshlq_n_s64(v268, 3uLL), v268, 0x3DuLL)));
  v272 = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v271, v88), vorrq_s8(v271, v81)), v81), v82), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x370], 3uLL), v76)));
  v207.i64[1] = vqtbl4q_s8(v274, a71).u64[0];
  *v72 = v207;
  return (*(v75 + 8 * (((a2 != 16) * v71) ^ v74 ^ v71)))();
}

void sub_10026B9A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  v5 = v3 || a3 == 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10026BB00@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v5 = *a2;
  STACK[0x770] = *(a1 + 8 * v2);
  STACK[0x670] = v4;
  STACK[0x758] = 0;
  STACK[0x620] = 0;
  return (*(a1 + 8 * (((v5 == 0) * (((v3 - 9191) | 0x280) ^ 0x266)) ^ v3)))();
}

uint64_t sub_10026BD14()
{
  v3 = STACK[0x580];
  STACK[0x548] = *(v2 + 8 * v1);
  return (*(v2 + 8 * (((((v1 ^ 0xAFB) - 13) ^ 0xBFA ^ (((v1 ^ 0xAFB) - 13) | 8) ^ 0xBD8) * (v3 == 0)) ^ v1 ^ 0xAFB)))();
}

uint64_t sub_10026BD7C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  LODWORD(STACK[0xA64]) = v3;
  STACK[0x640] = STACK[0x640] + ((a2 - 1683) | 0x32Au) - 859;
  return (*(v4 + 8 * (a2 ^ (2845 * (v3 == v2)))))(a1, 16215976);
}

uint64_t sub_10026BDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (v4 == 16257999)
  {
    v7 = STACK[0x4B8];
    v8 = *(STACK[0x4B8] + 8);
    v9 = STACK[0x4C0];
    v9[1] = v8;
    *v9 = *v7;
    return (*(a4 + 8 * (((v8 == 0) * ((v5 + 2732) ^ (v5 - 1940) ^ 0x123D)) ^ (v5 + 2151))))();
  }

  else if (v4 == 16215947)
  {
    return (*(a4 + 8 * (((*(STACK[0x808] + 8) == 0) * (((v5 - 5089) | 0x501) - 917)) ^ (v5 - 3972))))();
  }

  else
  {
    return (*(a4 + 8 * (((*(STACK[0x4C0] + 24) == 0) * (v5 - 1402 + v5 - 1383 - 7455)) ^ (v5 + 537))))();
  }
}

uint64_t sub_10026BEB0@<X0>(int a1@<W8>)
{
  v2 = STACK[0x448];
  STACK[0x588] = STACK[0x448];
  return (*(v1 + 8 * (((v2 == 0) * (((a1 ^ 0x17EA) + 2538) ^ 0x145A)) ^ a1)))();
}

uint64_t sub_10026BF54@<X0>(unsigned int a1@<W1>, uint64_t a2@<X8>)
{
  v6 = (v2 + ((2 * (a2 + 6)) & 0x4D9EFBB37DFFE74ELL) + ((a2 + 6) ^ 0xA6CF7DD9BEFFF3A7) + 0x5930822641000C59);
  v7 = (*v6 << 24) | (v6[1] << 16) | (v6[2] << 8);
  return (*(v5 + 8 * ((38 * ((((v7 | v6[3]) + a1 - 2 * ((v7 | v6[3]) & (a1 + 12) ^ v6[3] & 0xC)) ^ a1) + a2 + 10 <= v3)) ^ v4)))();
}

uint64_t sub_10026C598@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W7>, char a5@<W8>)
{
  v17 = v10 + v9 - 0x7E3601B1CFF728CALL;
  v18 = __ROR8__(v17 & 0xFFFFFFFFFFFFFFF8, 8);
  v19 = v18 - ((2 * v18 + 0xD1FA1F3BF05E3C6) & 0x1522CB6B6EA8E362) - 0x1EDEC95069289C6CLL;
  v20 = __ROR8__(v19 ^ 0xBBCEBE4B0E0361EFLL, 8);
  v19 ^= 0xFB03985F214EEF5uLL;
  v21 = __ROR8__((v20 + v19) ^ a2, 8);
  v22 = *(STACK[0x400] + 8 * a4);
  v23 = (v20 + v19) ^ a2 ^ __ROR8__(v19, 61);
  v24 = (v21 + v23) ^ a3;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (v26 + v25 - ((2 * (v26 + v25)) & 0x92A42596A0926910) + 0x495212CB50493488) ^ 0x1E82601493ECC2DFLL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v27, 8) + v28) ^ v12;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v6;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ a1;
  *v17 = (((__ROR8__(v33, 8) + (v33 ^ __ROR8__(v32, 61))) ^ v11) >> (8 * (v17 & 7u))) ^ HIBYTE(v8) ^ 0x82;
  v34 = __ROR8__((v17 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v35 = (0x29702F06207D0E1CLL - v34) & 0x79175E2C12C0C2DDLL | (v34 + 0x568FD0F9DF82F1E3) & 0x84E8A1D3ED3F3D22;
  v36 = __ROR8__(v35 ^ 0x4A4885D2AB97D283, 8);
  v35 ^= 0xFE36021C57805D99;
  v37 = (v36 + v35 - ((2 * (v36 + v35)) & 0xE50EC2BE45B2CC5ELL) - 0xD789EA0DD2699D1) ^ 0x73F3511043EE721CLL;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (((2 * (v39 + v38)) | 0xC127DFD94147335ELL) - (v39 + v38) - 0x6093EFECA0A399AFLL) ^ 0x284DD6A8B2F99BFBLL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = __ROR8__((((2 * (v42 + v41)) | 0x6287D6B764F85500) - (v42 + v41) - 0x3143EB5BB27C2A80) ^ 0x6693998471D9DCD7, 8);
  v44 = (((2 * (v42 + v41)) | 0x6287D6B764F85500) - (v42 + v41) - 0x3143EB5BB27C2A80) ^ 0x6693998471D9DCD7 ^ __ROR8__(v41, 61);
  v45 = (v43 + v44) ^ v12;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v6;
  v48 = v47 ^ __ROR8__(v46, 61);
  v49 = __ROR8__(v47, 8);
  *(v17 + 1) = (((__ROR8__((((2 * (v49 + v48)) | 0x360AC320C760007CLL) - (v49 + v48) + 0x64FA9E6F9C4FFFC2) ^ 0xF51B784DD08CB204, 8) + ((((2 * (v49 + v48)) | 0x360AC320C760007CLL) - (v49 + v48) + 0x64FA9E6F9C4FFFC2) ^ 0xF51B784DD08CB204 ^ __ROR8__(v48, 61))) ^ v11) >> (8 * ((v17 + 1) & 7))) ^ BYTE2(v8) ^ 0xD1;
  v50 = __ROR8__((v17 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v51 = -2 - (((0x29702F06207D0E1CLL - v50) | 0xC0963AD6F9C849DALL) + ((v50 + 0x568FD0F9DF82F1E3) | 0x3F69C5290637B625));
  v52 = v51 ^ 0xF1C9E128409F5984;
  v51 ^= 0x45B766E6BC88D69EuLL;
  v53 = (__ROR8__(v52, 8) + v51) ^ a2;
  v54 = v53 ^ __ROR8__(v51, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ a3;
  v56 = v55 ^ __ROR8__(v54, 61);
  v57 = __ROR8__(v55, 8);
  v58 = (((2 * (v57 + v56)) & 0x3491A382ECB7AD6) - (v57 + v56) - 0x1A48D1C1765BD6CLL) ^ 0xA98B003C2B3FB4C3;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (((2 * (v60 + v59)) | 0xBC926A3ADA0D4D3ALL) - (v60 + v59) - 0x5E49351D6D06A69DLL) ^ 0xAC2B377BB2DE781FLL;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (((2 * (v63 + v62)) & 0xC0B992F3FD58C89ALL) - (v63 + v62) - 0x605CC979FEAC644ELL) ^ 0x261DC64B870EBA4FLL;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = __ROR8__(v64, 8);
  v67 = (((2 * (v66 + v65)) | 0x526500C12C79ADD0) - (v66 + v65) - 0x29328060963CD6E8) ^ 0x472C99BD250064D2;
  v68 = v67 ^ __ROR8__(v65, 61);
  v69 = __ROR8__(v67, 8);
  *(v17 + 2) = (((((2 * (v69 + v68)) & 0x243286079BD1E962) - (v69 + v68) + 0x6DE6BCFC32170B4ELL) ^ 0x58D4716CCF4C1D6CuLL) >> (8 * ((v17 + 2) & 7))) ^ BYTE1(v8) ^ 0x17;
  v70 = __ROR8__((v17 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v71 = v70 - ((2 * v70 - 0x52E05E0C40FA1C3ALL) & 0xDABB7CACD8D286FCLL) + 0x43ED8F504BEC3561;
  v72 = v71 ^ 0xDC0265A8D53E5320;
  v71 ^= 0x687CE2662929DC3AuLL;
  v73 = __ROR8__(v72, 8);
  v74 = (((2 * (v73 + v71)) | 0xC1B61E594159C0E2) - (v73 + v71) - 0x60DB0F2CA0ACE071) ^ 0xE1AF3F63C19BF442;
  v75 = v74 ^ __ROR8__(v71, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ a3;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = (__ROR8__(v76, 8) + v77) ^ 0x57D072DFC3A5F657;
  v79 = v78 ^ __ROR8__(v77, 61);
  v80 = __ROR8__(v78, 8);
  v81 = ((v13 & (2 * (v80 + v79))) - (v80 + v79) + v14) ^ v15;
  v82 = v81 ^ __ROR8__(v79, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ v6;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ a1;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = __ROR8__(v85, 8);
  *(v17 + 3) = v8 ^ a5 ^ (((v87 + v86 - (v16 & (2 * (v87 + v86))) + v7) ^ v5) >> (8 * ((v17 + 3) & 7)));
  return v22();
}

uint64_t sub_10026CC64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, uint64_t a60, uint64_t a61, uint64_t a62, _DWORD *a63)
{
  *a4 = a1;
  *a63 = a59;
  return a5();
}

void sub_10026CD24(uint64_t a1, uint64_t a2)
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

uint64_t sub_10026CD98@<X0>(uint64_t a1@<X8>)
{
  STACK[0x890] = 0;
  STACK[0x7F8] = 0;
  STACK[0x518] = *(v3 + 8 * v2);
  return sub_100236B70(a1);
}

uint64_t sub_10026CDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v17 = v11 - 1;
  v18 = (__ROR8__((v7 + v17) & 0xFFFFFFFFFFFFFFF8, 8) - 0x6AF7234D0CC131D5) & 0xFBFFFFFFFFFFFFFFLL;
  v19 = v18 ^ 0x4DE9423B6F16E7D2;
  v20 = v18 ^ v14;
  v21 = (__ROR8__(v19, 8) + v20) ^ v15;
  v22 = __ROR8__(v21, 8);
  v23 = __ROR8__(v20, 61);
  v24 = (v22 + (v21 ^ v23) - (((v22 + (v21 ^ v23)) << ((v12 - 1) ^ a7)) & v8) + v9) ^ v10;
  v25 = v24 ^ __ROR8__(v21 ^ v23, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ 0x5963B6C555D97F1FLL;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x61459D2AF01F24F7;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = __ROR8__(v28, 8);
  v31 = ((a2 | (2 * ((v30 + v29) ^ a1))) - ((v30 + v29) ^ a1) + a3) ^ a4;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x1A2AEBE44253AF03;
  *(v7 + v17) = *(v13 + v17) ^ (((__ROR8__(v33, 8) + (v33 ^ __ROR8__(v32, 61))) ^ 0xAB3042D228875C41) >> (8 * ((v7 + v17) & 7))) ^ 0x3C;
  return (*(v16 + 8 * (v12 ^ (4 * (v17 != 0)))))();
}

void sub_10026CFFC(uint64_t a1)
{
  v1 = 1317436891 * (((a1 ^ 0xF854B432) - 292733615 - 2 * ((a1 ^ 0xF854B432) & 0xEE8D3D51)) ^ 0xA6DA1115);
  __asm { BRAA            X8, X17 }
}

_DWORD *sub_10026D0F4()
{
  result = v1;
  *v1 = v2;
  return result;
}

uint64_t sub_10026D14C()
{
  v6[1] = v5;
  v7 = (v3 + 3332) ^ ((((v6 | 0xFFABFF3B) + (~v6 | 0x5400C4)) ^ 0xA7C22C58) * v1);
  (*(v0 + 8 * (v3 + 4598)))(v6);
  return (v2 - 16257999);
}

void sub_10026D1EC(int a1@<W8>, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  v10 = (((&a3 | 0xF87D1697) + (~&a3 | 0x782E968)) ^ 0xD481A7ED) * a1;
  a4 = (v8 - 3892) ^ v10;
  a3 = 0;
  a6 = v10 ^ 0x19EC40F9;
  a7 = v7 - v10;
  (*(v9 + 8 * (v8 + 4784)))(&a3);
  JUMPOUT(0x10026D268);
}

uint64_t sub_10026D2A4()
{
  v14 = v10;
  v15 = &v12;
  v13[1] = (v0 + 1339) ^ (33731311 * ((((v13 | 0xA10C6F50) ^ 0xFFFFFFFE) - (~v13 | 0x5EF390AF)) ^ 0x67055A8C));
  (*(v2 + 8 * (v0 + 7688)))(v13);
  LODWORD(v15) = v0 - 2008441969 * ((v13 & 0xD988E45C | ~(v13 | 0xD988E45C)) ^ 0x6EEE4FAD) + 3772;
  v14 = v10;
  (*(v2 + 8 * (v0 + 7738)))(v13);
  if (v13[0] == v4 + v1)
  {
    v5 = -956802065;
  }

  else
  {
    v5 = 1073657839;
  }

  if (v13[0] == v4 + v1)
  {
    v6 = -1913604130;
  }

  else
  {
    v6 = 2147315678;
  }

  if (v13[0] == v4 + v1)
  {
    v7 = 973060064;
  }

  else
  {
    v7 = -1057399840;
  }

  v8 = (v5 ^ v12) + v7 + (v6 & (2 * v12));
  v14 = v10;
  LODWORD(v15) = (v0 + 6457) ^ ((v13 ^ 0x5869D362) * v3);
  (*(v2 + 8 * (v0 + 7723)))(v13);
  v14 = v11;
  LODWORD(v15) = (v4 + 3497) ^ (((v13 & 0xFFE671B1 | ~(v13 | 0xFFE671B1)) ^ 0x58705D2C) * v3);
  (*(v2 + 8 * (v4 ^ 0x377D)))(v13);
  return (v8 - 16257999);
}

uint64_t sub_10026D4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, unsigned int a19)
{
  a18 = a13;
  a19 = (v20 + 3795) ^ ((((&a17 | 0x35EA6A1E) - &a17 + (&a17 & 0xCA1595E0)) ^ 0x6D83B97C) * v19);
  (*(v21 + 8 * (v20 ^ 0x344B)))(&a17);
  a19 = (v20 + 3795) ^ (((&a17 & 0x12828FCA | ~(&a17 | 0x12828FCA)) ^ 0xB514A357) * v19);
  a18 = a16;
  v22 = (*(v21 + 8 * ((v20 - 3095) ^ 0x203C)))(&a17);
  return sub_10026D58C(v22);
}

uint64_t sub_10026D5D0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = (a1 ^ v64) + a28;
  STACK[0x9B8] = v66;
  return (*(v65 + 8 * ((a64 + 2229) | (v66 <= a23) | (4 * (v66 <= a23)))))();
}

uint64_t sub_10026D698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20, unsigned int a21, unsigned int a22)
{
  v25 = ((2 * ((&a17 ^ 0x98CBBE13) & 0x21B3E491) - (&a17 ^ 0x98CBBE13) - 565437590) ^ 0x1EEE761B) * v22;
  a21 = -654855621 - v25;
  a22 = v25 + v24 + 1674574563;
  a19 = a16;
  a20 = &a13;
  a18 = v25 - 357109105;
  v26 = (*(v23 + 8 * (v24 + 5057)))(&a17);
  return (*(v23 + 8 * ((13540 * (a17 == ((((v24 - 4119) | 0x400) + 16256664) ^ (v24 - 2624)))) ^ v24)))(v26);
}

uint64_t sub_10026D818(uint64_t a1)
{
  v3 = v1 | 0x912;
  v4 = (*(v2 + 8 * ((v1 | 0x912) + 7184)))(a1, 2631218403) == 0;
  return (*(v2 + 8 * ((v4 ^ ((v3 - 114) ^ (v3 - 1))) & 1 | v3)))();
}

uint64_t sub_10026D91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = ((v4 - 589) ^ 0xFFFFFFFFFFFFEB9ALL) + v5;
  *(a1 + v7) = *(v6 + v7);
  return (*(a4 + 8 * ((13995 * (v7 == 0)) ^ v4)))();
}

uint64_t sub_10026D9E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, int a16, unsigned int a17, uint64_t a18, char *a19, unsigned int a20, unsigned int a21)
{
  v24 = ((2 * (&a16 & 0x791754E0) - &a16 + 115911449) ^ 0x5E81787B) * v23;
  a18 = a12;
  a19 = &a14;
  a17 = v24 - 1383858828;
  a20 = -654855621 - v24;
  a21 = v24 + 1674579114;
  v25 = (*(v22 + 76864))(&a16);
  return (*(v22 + 8 * ((2244 * (a16 == 16257999)) ^ v21)))(v25);
}

void sub_10026DB8C()
{
  STACK[0x748] = 0;
  STACK[0x848] = *(STACK[0x3E8] + 8 * (v0 - 4337));
  JUMPOUT(0x100164A3CLL);
}

uint64_t sub_10026DC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = ((v2 + 2135574407) & 0x80B5BACE ^ 0xFFFFFFFFFFFFE7B3) + a2;
  v6 = *(v3 + v5 - 15);
  v7 = *(v3 + v5 - 31);
  v8 = a1 + v5;
  *(v8 - 15) = v6;
  *(v8 - 31) = v7;
  return (*(v4 + 8 * ((58 * ((a2 & 0xFFFFFFE0) == 32)) ^ (v2 - 355))))();
}

uint64_t sub_10026DCA0@<X0>(int a1@<W8>)
{
  v2 = STACK[0x938];
  LODWORD(STACK[0x52C]) = STACK[0x6B4];
  return (*(v1 + 8 * (((((v2 == 0) ^ (a1 - 1)) & 1) * (((a1 - 1171162863) & 0x45CE6CB5) - 699)) ^ a1)))();
}

uint64_t sub_10026DE30()
{
  v3 = LODWORD(STACK[0x2C0]);
  if (v3 == 17168)
  {
    return (*(STACK[0x330] + 8 * ((v2 + 3320) ^ (1744 * (v1 == 197499223)))))();
  }

  if (v3 == 20706 || v3 == 33980)
  {
    STACK[0x448] = v0;
  }

  return (STACK[0x758])();
}

uint64_t sub_10026DEE4()
{
  v2 = STACK[0x868];
  STACK[0x510] = *(v1 + 8 * v0);
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 843) ^ (v0 + 8710) ^ 0x2567)) | (v0 + 8710))))();
}

uint64_t sub_10026DF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = (((&a14 | 0x3E0A11C6) - &a14 + (&a14 & 0xC1F5EE38)) ^ 0x6663C2A4) * v21;
  a15 = v22 - 1041240636;
  a18 = -654855621 - v22;
  a19 = v22 + v20 + 1674576915;
  a16 = a12;
  a17 = &a11;
  v23 = (*(v19 + 8 * (v20 ^ 0x2D1F)))(&a14);
  return (*(v19 + 8 * ((53 * (a14 == ((v20 - 34246809) & 0x6CF4EFDF ^ (v20 - 573762018) & 0x3DEB ^ 0x6C0C68B0))) ^ v20)))(v23);
}

uint64_t sub_10026E068(int8x16_t a1, int8x16_t a2, int64x2_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v28 = a16 - 16;
  v29.i64[0] = a14 + v28 + 11;
  v29.i64[1] = a14 + v28 + 10;
  v30.i64[0] = a14 + v28 + 13;
  v30.i64[1] = a14 + v28 + 12;
  v31.i64[0] = a14 + v28 + 15;
  v31.i64[1] = a14 + v28 + 14;
  v32.i64[0] = a14 + v28 + 19;
  v32.i64[1] = a14 + v28 + 18;
  v33.i64[0] = a14 + v28 + 21;
  v33.i64[1] = a14 + v28 + 20;
  v34.i64[0] = a14 + v28 + 23;
  v34.i64[1] = a14 + v28 + 22;
  v35.i64[0] = a14 + v28 + 25;
  v35.i64[1] = a14 + v28 + v16 + 16;
  v36 = vandq_s8(v35, a1);
  v37 = vandq_s8(v34, a1);
  v38 = vandq_s8(v33, a1);
  v39 = vandq_s8(v32, a1);
  v40 = vsraq_n_u64(vshlq_n_s64(v39, 0x38uLL), v39, 8uLL);
  v41 = vsraq_n_u64(vshlq_n_s64(v38, 0x38uLL), v38, 8uLL);
  v42 = vsraq_n_u64(vshlq_n_s64(v37, 0x38uLL), v37, 8uLL);
  v43 = vsraq_n_u64(vshlq_n_s64(v36, 0x38uLL), v36, 8uLL);
  v44 = vsubq_s64(v42, vandq_s8(vaddq_s64(vaddq_s64(v42, v42), a3), a4));
  v45 = vsubq_s64(v43, vandq_s8(vaddq_s64(vaddq_s64(v43, v43), a3), a4));
  v46 = vaddq_s64(vsubq_s64(v41, vandq_s8(vaddq_s64(vaddq_s64(v41, v41), a3), a4)), a5);
  v47 = vaddq_s64(vsubq_s64(v40, vandq_s8(vaddq_s64(vaddq_s64(v40, v40), a3), a4)), a5);
  v48 = veorq_s8(v47, a6);
  v49 = veorq_s8(v46, a6);
  v50 = veorq_s8(v46, a7);
  v51 = veorq_s8(v47, a7);
  v52 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v49, 0x38uLL), v49, 8uLL), v50), a8);
  v53 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v48, 0x38uLL), v48, 8uLL), v51), a8);
  v54 = vsraq_n_u64(vshlq_n_s64(v50, 3uLL), v50, 0x3DuLL);
  v55 = veorq_s8(v53, vsraq_n_u64(vshlq_n_s64(v51, 3uLL), v51, 0x3DuLL));
  v56 = veorq_s8(v52, v54);
  v57 = vsraq_n_u64(vshlq_n_s64(v53, 0x38uLL), v53, 8uLL);
  v58 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v52, 0x38uLL), v52, 8uLL), v56);
  v59 = veorq_s8(vaddq_s64(v57, v55), v19);
  v60 = veorq_s8(v58, v19);
  v61 = vsraq_n_u64(vshlq_n_s64(v55, 3uLL), v55, 0x3DuLL);
  v62 = veorq_s8(v60, vsraq_n_u64(vshlq_n_s64(v56, 3uLL), v56, 0x3DuLL));
  v63 = veorq_s8(v59, v61);
  v64 = vsraq_n_u64(vshlq_n_s64(v60, 0x38uLL), v60, 8uLL);
  v65 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v59, 0x38uLL), v59, 8uLL), v63);
  v66 = veorq_s8(vaddq_s64(v64, v62), v20);
  v67 = veorq_s8(v65, v20);
  v68 = veorq_s8(v67, vsraq_n_u64(vshlq_n_s64(v63, 3uLL), v63, 0x3DuLL));
  v69 = veorq_s8(v66, vsraq_n_u64(vshlq_n_s64(v62, 3uLL), v62, 0x3DuLL));
  v70 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), v69);
  v72 = vaddq_s64(v70, v68);
  v73 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v72, v72), v21), v72), v22), v23);
  v74 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v71, v71), v21), v71), v22), v23);
  v75 = veorq_s8(v74, vsraq_n_u64(vshlq_n_s64(v69, 3uLL), v69, 0x3DuLL));
  v76 = veorq_s8(v73, vsraq_n_u64(vshlq_n_s64(v68, 3uLL), v68, 0x3DuLL));
  v77 = vsraq_n_u64(vshlq_n_s64(v74, 0x38uLL), v74, 8uLL);
  v78 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v76);
  v79 = veorq_s8(vaddq_s64(v77, v75), v24);
  v80 = veorq_s8(v78, v24);
  v81 = vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL);
  v82 = veorq_s8(v80, vsraq_n_u64(vshlq_n_s64(v76, 3uLL), v76, 0x3DuLL));
  v83 = veorq_s8(v79, v81);
  v84 = vsraq_n_u64(vshlq_n_s64(v80, 0x38uLL), v80, 8uLL);
  v85 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v83);
  v86 = veorq_s8(vaddq_s64(v84, v82), v25);
  v87 = veorq_s8(v85, v25);
  v88 = veorq_s8(v86, vsraq_n_u64(vshlq_n_s64(v82, 3uLL), v82, 0x3DuLL));
  v82.i64[0] = a14 + v28 + 17;
  v82.i64[1] = a14 + v28 + 16;
  v89 = vaddq_s64(v44, a5);
  v191.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v86, 0x38uLL), v86, 8uLL), v88), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v32, 3uLL), a2)));
  v191.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v87, 0x38uLL), v87, 8uLL), veorq_s8(v87, vsraq_n_u64(vshlq_n_s64(v83, 3uLL), v83, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v33, 3uLL), a2)));
  v90 = veorq_s8(v89, a6);
  v91 = veorq_s8(v89, a7);
  v92 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v91), a8);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v91, 3uLL), v91, 0x3DuLL));
  v94 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93), v19);
  v95 = veorq_s8(v94, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v96 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v94, 0x38uLL), v94, 8uLL), v95), v20);
  v97 = veorq_s8(v96, vsraq_n_u64(vshlq_n_s64(v95, 3uLL), v95, 0x3DuLL));
  v98 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v96, 0x38uLL), v96, 8uLL), v97);
  v99 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v98, v98), v21), v98), v22), v23);
  v100 = veorq_s8(v99, vsraq_n_u64(vshlq_n_s64(v97, 3uLL), v97, 0x3DuLL));
  v101 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL), v100), v24);
  v102 = veorq_s8(v101, vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL));
  v103 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v101, 0x38uLL), v101, 8uLL), v102), v25);
  v104 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v103, 0x38uLL), v103, 8uLL), veorq_s8(v103, vsraq_n_u64(vshlq_n_s64(v102, 3uLL), v102, 0x3DuLL)));
  v105 = vandq_s8(v82, a1);
  v106 = vaddq_s64(v45, a5);
  v191.val[1] = vshlq_u64(veorq_s8(v104, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v34, 3uLL), a2)));
  v107 = veorq_s8(v106, a6);
  v108 = veorq_s8(v106, a7);
  v109 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v108), a8);
  v110 = veorq_s8(v109, vsraq_n_u64(vshlq_n_s64(v108, 3uLL), v108, 0x3DuLL));
  v111 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v109, 0x38uLL), v109, 8uLL), v110), v19);
  v112 = veorq_s8(v111, vsraq_n_u64(vshlq_n_s64(v110, 3uLL), v110, 0x3DuLL));
  v113 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v111, 0x38uLL), v111, 8uLL), v112), v20);
  v114 = veorq_s8(v113, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v115 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL), v114);
  v116 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v115, v115), v21), v115), v22), v23);
  v117 = veorq_s8(v116, vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL));
  v118 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v116, 0x38uLL), v116, 8uLL), v117), v24);
  v119 = veorq_s8(v118, vsraq_n_u64(vshlq_n_s64(v117, 3uLL), v117, 0x3DuLL));
  v120 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v119), v25);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v119, 3uLL), v119, 0x3DuLL));
  v122 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v123 = vandq_s8(v31, a1);
  v124 = vaddq_s64(v122, v121);
  v125 = vandq_s8(v30, a1);
  v191.val[0] = vshlq_u64(veorq_s8(v124, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v35, 3uLL), a2)));
  v126 = vandq_s8(v29, a1);
  v127 = vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL);
  v128 = vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL);
  v129 = vsraq_n_u64(vshlq_n_s64(v123, 0x38uLL), v123, 8uLL);
  v130 = vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL);
  v131 = vsubq_s64(v129, vandq_s8(vaddq_s64(vaddq_s64(v129, v129), a3), a4));
  v132 = vaddq_s64(vsubq_s64(v128, vandq_s8(vaddq_s64(vaddq_s64(v128, v128), a3), a4)), a5);
  v133 = vaddq_s64(vsubq_s64(v127, vandq_s8(vaddq_s64(vaddq_s64(v127, v127), a3), a4)), a5);
  v128.i64[0] = vqtbl4q_s8(v191, v27).u64[0];
  v134 = veorq_s8(v133, a6);
  v191.val[0] = veorq_s8(v132, a6);
  v135 = veorq_s8(v132, a7);
  v136 = veorq_s8(v133, a7);
  v191.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v135), a8);
  v137 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v134, 0x38uLL), v134, 8uLL), v136), a8);
  v138 = veorq_s8(v137, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v139 = veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v137, 0x38uLL), v137, 8uLL);
  v140 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v139);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v138), v19);
  v141 = veorq_s8(v140, v19);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v138, 3uLL), v138, 0x3DuLL);
  v142 = veorq_s8(v141, vsraq_n_u64(vshlq_n_s64(v139, 3uLL), v139, 0x3DuLL));
  v143 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v141, 0x38uLL), v141, 8uLL);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v143);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v142), v20);
  v145 = veorq_s8(v144, v20);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v142, 3uLL), v142, 0x3DuLL);
  v146 = veorq_s8(v145, vsraq_n_u64(vshlq_n_s64(v143, 3uLL), v143, 0x3DuLL));
  v147 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL);
  v148 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v147);
  v191.val[0] = vaddq_s64(v191.val[1], v146);
  v191.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v191.val[0], v191.val[0]), v21), v191.val[0]), v22), v23);
  v149 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v148, v148), v21), v148), v22), v23);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v147, 3uLL), v147, 0x3DuLL));
  v151 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v152 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v151);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v150), v24);
  v153 = veorq_s8(v152, v24);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v150, 3uLL), v150, 0x3DuLL);
  v154 = veorq_s8(v153, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v155 = veorq_s8(v191.val[0], v191.val[1]);
  v191.val[1] = vsraq_n_u64(vshlq_n_s64(v153, 0x38uLL), v153, 8uLL);
  v156 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), v155);
  v191.val[0] = veorq_s8(vaddq_s64(v191.val[1], v154), v25);
  v157 = veorq_s8(v156, v25);
  v158 = vaddq_s64(v131, a5);
  v191.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191.val[0], 0x38uLL), v191.val[0], 8uLL), veorq_s8(v191.val[0], vsraq_n_u64(vshlq_n_s64(v154, 3uLL), v154, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v29, 3uLL), a2)));
  v191.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), veorq_s8(v157, vsraq_n_u64(vshlq_n_s64(v155, 3uLL), v155, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v30, 3uLL), a2)));
  v159 = veorq_s8(v158, a6);
  v160 = veorq_s8(v158, a7);
  v161 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v159, 0x38uLL), v159, 8uLL), v160), a8);
  v162 = veorq_s8(v161, vsraq_n_u64(vshlq_n_s64(v160, 3uLL), v160, 0x3DuLL));
  v163 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v161, 0x38uLL), v161, 8uLL), v162), v19);
  v164 = veorq_s8(v163, vsraq_n_u64(vshlq_n_s64(v162, 3uLL), v162, 0x3DuLL));
  v165 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v163, 0x38uLL), v163, 8uLL), v164), v20);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v164, 3uLL), v164, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), v21), v167), v22), v23);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169), v24);
  v171 = veorq_s8(v170, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v172 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), v171), v25);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v171, 3uLL), v171, 0x3DuLL)));
  v174 = vaddq_s64(vsubq_s64(v130, vandq_s8(vaddq_s64(vaddq_s64(v130, v130), a3), a4)), a5);
  v191.val[1] = vshlq_u64(veorq_s8(v173, v26), vnegq_s64(vandq_s8(vshlq_n_s64(v31, 3uLL), a2)));
  v175 = veorq_s8(v174, a6);
  v176 = veorq_s8(v174, a7);
  v177 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v175, 0x38uLL), v175, 8uLL), v176), a8);
  v178 = veorq_s8(v177, vsraq_n_u64(vshlq_n_s64(v176, 3uLL), v176, 0x3DuLL));
  v179 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178), v19);
  v180 = veorq_s8(v179, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v181 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v179, 0x38uLL), v179, 8uLL), v180), v20);
  v182 = veorq_s8(v181, vsraq_n_u64(vshlq_n_s64(v180, 3uLL), v180, 0x3DuLL));
  v183 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v181, 0x38uLL), v181, 8uLL), v182);
  v184 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v183, v183), v21), v183), v22), v23);
  v185 = veorq_s8(v184, vsraq_n_u64(vshlq_n_s64(v182, 3uLL), v182, 0x3DuLL));
  v186 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v184, 0x38uLL), v184, 8uLL), v185), v24);
  v187 = veorq_s8(v186, vsraq_n_u64(vshlq_n_s64(v185, 3uLL), v185, 0x3DuLL));
  v188 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187), v25);
  v191.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL))), v26), vnegq_s64(vandq_s8(vshlq_n_s64(v82, 3uLL), a2)));
  v128.i64[1] = vqtbl4q_s8(v191, v27).u64[0];
  v189 = vrev64q_s8(v128);
  *(a14 + v28 + 10) = veorq_s8(vextq_s8(v189, v189, 8uLL), *(a15 + v28));
  return (*(v18 + 8 * (((a11 + v28 != 0) * v17) ^ a13)))();
}

uint64_t sub_10026EC40()
{
  v3 = (((2 * v1) & 0x1FFFF9783B7BF4FELL) + (v1 ^ 0x4FFFFCBC1DBDFA7FLL) + v0 - 0x4FFFFCBC1DBDFA7FLL);
  v4 = (v3[1] << (v2 - 32)) | (*v3 << 56) | (v3[2] << 40) | (v3[3] << 32) | (v3[4] << 24) | (v3[5] << 16) | (v3[6] << 8) | v3[7];
  STACK[0x8F0] = v4 + 0x431A33AA2E6D965FLL - ((2 * v4) & 0x863467545CDB2CBELL);
  return sub_10026ECFC();
}

uint64_t sub_10026ED3C()
{
  v3 = (*(v2 + 8 * (v0 + 3865)))(LODWORD(STACK[0x4B4]) ^ 0xBC59953u, 0x100004077774924);
  v4 = STACK[0x330];
  STACK[0x958] = v3;
  if (v3)
  {
    v5 = 16257999;
  }

  else
  {
    v5 = v1 - 5;
  }

  LODWORD(STACK[0x964]) = v5;
  return (*(v4 + 8 * ((102 * (((v3 == 0) ^ ((v0 ^ 0xD1) - 63 * (v0 ^ 0x80))) & 1)) | v0)))();
}

uint64_t sub_10026EDF0@<X0>(int a1@<W8>)
{
  v6 = LOWORD(STACK[0x99A]);
  if (v6 == 17168)
  {
    goto LABEL_4;
  }

  if (v6 == 33980)
  {
    v8 = STACK[0x438];
    STACK[0x7B8] = v1;
    LODWORD(STACK[0x520]) = a1;
    STACK[0x7C8] = v8 + v2;
    v7 = v3;
    v4 = 16257999;
    return (*(v5 + 8 * (((v4 == 16257999) * ((4283 * (v7 ^ 0x17C9)) ^ 0x2C56)) ^ (v7 - 4056))))();
  }

  v7 = v3;
  if (v6 == 20706)
  {
LABEL_4:
    STACK[0x7B8] = v1;
    LODWORD(STACK[0x520]) = a1;
    v4 = 16215638;
    v7 = v3;
  }

  return (*(v5 + 8 * (((v4 == 16257999) * ((4283 * (v7 ^ 0x17C9)) ^ 0x2C56)) ^ (v7 - 4056))))();
}

uint64_t sub_10026EEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W8>)
{
  STACK[0x858] = STACK[0x4D8];
  STACK[0x4C8] = 0;
  return (*(v4 + 8 * a4))(a1, a2, a3, v4);
}

uint64_t sub_10026EFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8 * (v4 ^ 0x2176)))(LODWORD(STACK[0x7F4]) ^ 0xBC58D36 ^ (v4 - 1180) ^ 0x145Du, 0x100004077774924);
  v6 = STACK[0x3E8];
  STACK[0x968] = v5;
  if (v5)
  {
    v7 = 16257999;
  }

  else
  {
    v7 = 16215971;
  }

  LODWORD(STACK[0x974]) = v7;
  return (*(v6 + 8 * (((v5 != 0) * (((v4 - 1180) | 0x542) ^ 0x54E)) ^ v4)))();
}

void sub_10026F0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8)
{
  *&STACK[0x210] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x370] = vdupq_n_s64(v9);
  *&STACK[0x380] = vdupq_n_s64(v15);
  *&STACK[0x350] = vdupq_n_s64(v10);
  *&STACK[0x360] = vdupq_n_s64(v8);
  *&STACK[0x330] = vdupq_n_s64(v12);
  *&STACK[0x340] = vdupq_n_s64(v11);
  *&STACK[0x310] = vdupq_n_s64(a6);
  *&STACK[0x320] = vdupq_n_s64(v14);
  *&STACK[0x2F0] = vdupq_n_s64(a7);
  *&STACK[0x300] = vdupq_n_s64(v13);
  *&STACK[0x2D0] = vdupq_n_s64(0x52D1CFA255142C6CuLL);
  *&STACK[0x2E0] = vdupq_n_s64(0xA5A39F44AA2858D8);
  *&STACK[0x2B0] = vdupq_n_s64(0xAB3042D228875C41);
  *&STACK[0x2C0] = vdupq_n_s64(0x48FB24461747836FuLL);
  *&STACK[0x290] = vdupq_n_s64(0xE1AFA7ACF6E0968ELL);
  *&STACK[0x2A0] = vdupq_n_s64(0x49E9423B6F16E7D2uLL);
  *&STACK[0x270] = vdupq_n_s64(0xF5A2F1B9B5D0B209);
  *&STACK[0x280] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x250] = vdupq_n_s64(0xBCFFAF874FA44A5ALL);
  *&STACK[0x260] = vdupq_n_s64(0x1A2AEBE44253AF03uLL);
  *&STACK[0x240] = vdupq_n_s64(0xDE7FD7C3A7D2252DLL);
  *&STACK[0x220] = vdupq_n_s64(a8);
  *&STACK[0x230] = xmmword_1002BF690;
  JUMPOUT(0x10026F2C8);
}

uint64_t sub_10027058C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  STACK[0x3C0] = *(a8 + 24);
  HIDWORD(a35) = a7;
  return (*(a4 + 8 * ((47 * ((v37 ^ v36) < 227 * (v35 ^ 0x16D9u) - 5213)) ^ v35)))(0x5879FD990C46CAD5, a5, 0xD02B2EB47D7683C6, 0x6815975A3EBB41E3, v38, a2, 0xE49D77DF873DBF7ELL, 0x4CFAC71E5A50EC49, a9, a10, a11, a12, a13, a7 ^ 0xF67EFDFFDF195FEFLL, a8, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_100270794()
{
  LODWORD(STACK[0x804]) = v1;
  STACK[0x670] = *(v2 + 8 * v0);
  return sub_1002707AC();
}

uint64_t sub_1002707AC@<X0>(int a1@<W8>)
{
  STACK[0x4C8] = v1;
  v3 = *v1;
  STACK[0x7B8] = *v1;
  return (*(v2 + 8 * (((((v3 == 0) ^ (a1 - 1)) & 1) * (((a1 - 4162) | 0x11E) + 38)) ^ a1)))();
}

uint64_t sub_100270880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * (&a12 ^ 0xB0039876) + 8154;
  a12 = &a11;
  v17 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * ((61 * (a13 == v16)) ^ v15)))(v17);
}

uint64_t sub_1002709FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&STACK[0x240] = vdupq_n_s64(0x38uLL);
  *&STACK[0x3B0] = vdupq_n_s64(0x1508DCB2F33ECE2BuLL);
  *&STACK[0x3C0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x390] = vdupq_n_s64(0x6AF7234D0CC131D4uLL);
  *&STACK[0x3A0] = vdupq_n_s64(0xE79B7CAD81EAE601);
  *&STACK[0x380] = vdupq_n_s64(0x186483527E1519FEuLL);
  *&STACK[0x340] = vdupq_n_s64(0x518DC1691103FE2CuLL);
  *&STACK[0x350] = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
  *&STACK[0x320] = vdupq_n_s64(0xE49D77DF873DBF7ELL);
  *&STACK[0x330] = vdupq_n_s64(0xF9CB24FE88F58F70);
  *&STACK[0x300] = vdupq_n_s64(0xD8E8834EF9F28923);
  *&STACK[0x310] = vdupq_n_s64(0x4E2EF9620C1AEDB8uLL);
  *&STACK[0x2E0] = vdupq_n_s64(0x5963B6C555D97F1FuLL);
  *&STACK[0x2F0] = vdupq_n_s64(0x2D4A72F74C223B2AuLL);
  *&STACK[0x360] = vdupq_n_s64(0x71C80D200006C20uLL);
  *&STACK[0x370] = vdupq_n_s64(0xF8C32E29FF588391);
  *&STACK[0x2C0] = vdupq_n_s64(0x9BDDB8F1D8DC304DLL);
  *&STACK[0x2D0] = vdupq_n_s64(0x61459D2AF01F24F7uLL);
  *&STACK[0x230] = xmmword_1002BF690;
  *&STACK[0x2A0] = vdupq_n_s64(v7);
  *&STACK[0x2B0] = vdupq_n_s64(v8);
  return sub_100208DFC(2021819248, 0, 0x71C80D200006C20, a4, 0x518DC1691103FE2CLL, a6, a7);
}

void sub_100270BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4 ^ 0x8E6;
  *(v6 - 224) = ((v4 ^ 0x14B8) - 2140796667) ^ (914963389 * ((v6 - 232) ^ 0x2CFCB17B));
  (*(a4 + 8 * (v4 ^ 0x3333)))(v6 - 232);
  *(v5 + 112) = *(v6 - 232) ^ (v7 - 1232139380);
  JUMPOUT(0x1001D8DB8);
}

uint64_t sub_100270C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *v6 = v5;
  *(v5 + 8) = *(a4 + 8);
  *(a4 + 8) = v5;
  return sub_10021AC14(a1, a2, a3, 16257999);
}

uint64_t sub_100270C98()
{
  STACK[0x590] = 0;
  v3 = STACK[0x6F8];
  STACK[0x3D8] = *(v2 + 8 * v1);
  LODWORD(STACK[0xA24]) = -126895411;
  STACK[0xA28] = &STACK[0x590];
  return (*(v2 + 8 * (((v3 != 0) * ((((((v1 - 1789415859) & 0x6AA875C1) - 7361) | 0x1406) - 1552) ^ 0x15FB)) ^ (v1 - 1789415859) & 0x6AA875C1)))();
}

uint64_t sub_100270CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, _DWORD *a24, uint64_t a25, uint64_t a26, _DWORD *a27, void *a28)
{
  v35 = a11 & 0x889E8C11;
  v36 = ((v35 ^ (v30 - 970) ^ 0xFFFFFFFE | v29) & (((v30 - 970) | 0x13FE) - v29) | (v35 ^ (v30 - 970) ^ 0xFFFFFFFE) & v29) >> 31;
  v37 = (a11 & 0x889E8C11) + 2599;
  *a24 = v29 + 1;
  v38 = v28 ^ ((v28 - (a11 & 0x889E8C11) + v30 - 970) >> 11);
  v39 = (((v35 - 1658038657) & ((v38 - v36) << 7) ^ v38) << 15) & 0xEFC60000 ^ (v35 - 1658038657) & ((v38 - v36) << 7) ^ v38 ^ (((((v35 - 1658038657) & ((v38 - v36) << 7) ^ v38) << 15) & 0xEFC60000 ^ (v35 - 1658038657) & ((v38 - v36) << 7) ^ v38) >> 18);
  v40 = (v31 + (v34 - 1));
  v41 = -778651209 * ((*(*a28 + (*a27 & 0x148A538C)) ^ v40) & 0x7FFFFFFF);
  v42 = -778651209 * (v41 ^ HIWORD(v41));
  v43 = *(*(v33 + 8 * (v37 ^ 0xA18)) + (v42 >> 24));
  v44 = *(*(v33 + 8 * (v37 ^ 0xABF)) + (((a11 & 0x889E8C11) + 253902330) & 0xF0DDCBB6) - 2479 + (v42 >> 24) - 12);
  v45 = *(*(v33 + 8 * (v37 ^ 0xA2D)) + (v42 >> 24) - 8) ^ v39 ^ v43 ^ v44 ^ v42 ^ (-73 * (v42 >> 24));
  LODWORD(v42) = (*(*(v33 + 8 * (v37 ^ 0xA2D)) + (v42 >> 24) - 8) ^ v39 ^ v43 ^ v44 ^ v42 ^ (-73 * BYTE3(v42)));
  *v40 = v45;
  return (*(v32 + 8 * ((1321 * (v34 == (v42 != 60))) ^ v37)))();
}

uint64_t sub_100270E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, __int16 a15, char a16, char *a17, int a18, char a19, __int16 a20, char a21, uint64_t a22, int a23, unsigned int a24, char *a25, char *a26, char *a27, char *a28)
{
  a25 = a17;
  a26 = &a19;
  a28 = &a16;
  LODWORD(a27) = (v28 + 242) ^ (((-1186758393 - (&a23 | 0xB9438107) + (&a23 | 0x46BC7EF8)) ^ 0x74A72568) * v31);
  (*(v29 + 8 * (v28 + 6491)))(&a23);
  a27 = a17;
  a25 = &a21;
  LODWORD(a26) = v28 + 956911519 * ((-1668232106 - (&a23 | 0x9C90CC56) + (&a23 | 0x636F33A9)) ^ 0x89FE43AC) + 6196;
  (*(v29 + 8 * (v28 + 6530)))(&a23);
  a25 = a17;
  a26 = &a14;
  a24 = (v28 + 136) ^ (33731311 * ((((2 * &a23) | 0x4587746C) - &a23 - 583252534) ^ 0x1B357015));
  (*(v29 + 8 * (v28 ^ 0x297Du)))(&a23);
  LODWORD(a26) = v28 - 2008441969 * ((&a23 - 924682220 - 2 * (&a23 & 0xC8E27814)) ^ 0x807B2C1A) + 2569;
  a25 = a17;
  v32 = (*(v29 + 8 * (v28 + 6535)))(&a23);
  return (*(v29 + 8 * (((a23 == v30) * ((v28 - 99) ^ 0x973)) ^ v28)))(v32);
}

uint64_t sub_100271104()
{
  v1 = *(STACK[0x668] + 24);
  STACK[0x570] = v1;
  return (*(STACK[0x330] + 8 * (((v1 == 0) * (((v0 + 1981207108) & 0x89E93BD7 ^ 0xFFFFF3DB) + ((v0 - 1687) | 0x10D4))) ^ v0)))();
}

uint64_t sub_100271188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, unsigned int a21, uint64_t a22, uint64_t a23)
{
  v27 = 1824088897 * (((&a19 | 0xF5BECD65) - &a19 + (&a19 & 0xA413298)) ^ 0xADD71E07);
  a21 = (v25 ^ 0x7FB6FEDF) + ((2 * v25) & 0xFF6DFDBE) - v27 - 823268437;
  a19 = v27 + v23 + 764;
  a22 = v24;
  a23 = a12;
  v28 = (*(v26 + 8 * (v23 + 6638)))(&a19);
  return (*(v26 + 8 * ((10840 * (a20 == 2177 * (v23 ^ 0xBB3) + 16253645)) ^ v23)))(v28);
}

void sub_100271264()
{
  v2 = (v0 - 1041) | 0x400;
  STACK[0x3A0] = (v2 ^ 0xFFFFFB5E) & v1;
  LODWORD(STACK[0x3B0]) = v2;
  STACK[0x390] = (v2 + 4115);
  JUMPOUT(0x100271410);
}

uint64_t sub_10027211C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v23 = ((-1275135746 - (&a14 | 0xB3FEF8FE) + (&a14 | 0x4C010701)) ^ 0x1468D463) * v21;
  a15 = v23 - 85195060;
  a16 = a12;
  a17 = &a10;
  a18 = -654855621 - v23;
  a19 = v23 + v22 + 1674577939;
  v24 = (*(v20 + 8 * (v22 ^ 0x211F)))(&a14);
  return (*(v20 + 8 * (((a14 == ((v22 - 1310437144) & 0xEDF ^ (v19 + 961))) * ((v22 - 698094757) & 0x1EED ^ 0x1B6)) ^ v22)))(v24);
}

uint64_t sub_10027228C@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v2) = 0;
  v6 = v2 < 0xFFFFFFFFCDE53684 && v2 + 840616316 < v1;
  return (*(v4 + 8 * ((v6 * (((24 * (v3 ^ 0x14D9) + 2776) | 0x140) + 22)) ^ (24 * (v3 ^ 0x14D9)))))();
}

uint64_t sub_1002722E8@<X0>(uint64_t a1@<X8>, int8x16_t a2@<Q0>, int8x16_t a3@<Q1>)
{
  v11 = v5 + 32;
  v12 = (v11 ^ v8 ^ v4) + v3;
  v13 = *(v9 + v12 - 15);
  v14 = *(v9 + v12 - 31);
  v15 = a1 + v12;
  *(v15 - 15) = vaddq_s8(vsubq_s8(v13, vandq_s8(vaddq_s8(v13, v13), a2)), a3);
  *(v15 - 31) = vaddq_s8(vsubq_s8(v14, vandq_s8(vaddq_s8(v14, v14), a2)), a3);
  return (*(v10 + 8 * ((120 * (v6 != v11)) ^ v7)))();
}

uint64_t sub_100272548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v35 = *(v30 + 4 * (v31 - 1));
  *(v30 + 4 * v31) = ((1566083941 * (v35 ^ (v35 >> 30))) ^ *(v30 + 4 * v31)) - v31;
  v36 = 2048652491 * ((0xC81A77718E866EC0 - ((v34 - 152) | 0xC81A77718E866EC0) + a29) ^ 0xE3010702C0C8063ALL);
  *(v34 - 112) = v36 ^ 1;
  v37 = v29 - 2026031905 + v36;
  *(v34 - 152) = (v29 + 1745252473) ^ v36;
  *(v34 - 136) = v37;
  *(v34 - 128) = ((v29 - 2026031905) ^ 0x28) + v36;
  *(v34 - 124) = v37 + 648;
  *(v33 + 16) = 623 - v36;
  *(v33 + 40) = (v31 + 1) ^ v36;
  v38 = (*(v32 + 8 * (v29 ^ 0x261A)))(v34 - 152);
  return (*(v32 + 8 * *(v34 - 132)))(v38);
}

uint64_t sub_1002726E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, int a12, int a13, char a14, uint64_t a15, int a16, char a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, char *a23)
{
  a22 = (v23 + 1305605087) ^ (1358806181 * ((&a18 + 1415417890 - 2 * (&a18 & 0x545D9022)) ^ 0x6B72FCA1));
  a23 = &a14;
  a20 = a10;
  a21 = &a11;
  (*(v24 + 8 * (v23 ^ 0x2E34)))(&a18);
  a19 = (v23 + 182) ^ (33731311 * ((&a18 - 240232212 - 2 * (&a18 & 0xF1AE58EC)) ^ 0xC85892CF));
  a20 = a10;
  a21 = &a14;
  (*(v24 + 8 * (v23 + 6531)))(&a18);
  a19 = (v23 + 182) ^ (33731311 * ((((2 * &a18) | 0x53B26B7E) - &a18 + 1445382721) ^ 0x902FFF9C));
  a20 = a10;
  a21 = &a17;
  (*(v24 + 8 * (v23 + 6531)))(&a18);
  a20 = a10;
  LODWORD(a21) = v23 - 2008441969 * (&a18 ^ 0x4899540E) + 2615;
  v25 = (*(v24 + 8 * (v23 ^ 0x2E7D)))(&a18);
  return (*(v24 + 8 * (((a18 == 16257999) * (((11 * (v23 ^ 0xB91) + 3379) | 0xD85) - 1787)) ^ v23)))(v25);
}

uint64_t sub_100272914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, unsigned int a16, unsigned int a17, uint64_t a18, uint64_t a19)
{
  v24 = 1875091903 * ((((2 * &a15) | 0xA99D4AB2) - &a15 - 1422828889) ^ 0x62BB26DA);
  a18 = a12;
  a16 = (v21 ^ 0xBEBDBFFE) + ((2 * v21) & 0x7D7B7FFC) + 1633613484 + v24;
  a17 = v24 + 7724;
  (*(v22 + 77160))(&a15);
  v25 = 1824088897 * (((&a15 | 0xF210C612) - &a15 + (&a15 & 0xDEF39E8)) ^ 0xAA791570);
  a18 = v19;
  a19 = a12;
  a17 = (v20 ^ 0x6FFEEF9F) - v25 + ((2 * v20) & 0xDFFDDF3E) - 559547669;
  a15 = v25 + 3757;
  v26 = (*(v22 + 77048))(&a15);
  return (*(v22 + 8 * ((9095 * (a16 == v23)) ^ 0x713u)))(v26);
}

uint64_t sub_100272A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, uint64_t a20, unsigned int a21)
{
  a20 = a18;
  a21 = v21 - (((&a19 | 0xBEBF446A) - (&a19 & 0xBEBF446A)) ^ 0xF6261064) * v22 + 1907;
  v25 = (*(v24 + 8 * (v21 ^ 0x2B31u)))(&a19);
  return (*(v24 + 8 * (((a19 == (v21 ^ 0x1E2C ^ v23)) * (((v21 + 273846595) & 0xEFAD6E76) + 3561)) ^ v21)))(v25);
}

uint64_t sub_100272B38@<X0>(int a1@<W8>)
{
  v2 = a1 ^ 0x2760;
  v3 = v2 + 7558;
  (*(v1 + 8 * (v2 + 8212)))();
  v4 = STACK[0x400];
  STACK[0x7B0] = 0;
  return (*(v4 + 8 * (((STACK[0x730] != 0) * ((v3 ^ 0x3319) - 4579)) ^ v3)))();
}

uint64_t sub_100272C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * (&a12 ^ 0xB0039876) + 8154;
  a12 = &a10;
  v16 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * ((3906 * (a13 == v15)) ^ 0x149Eu)))(v16);
}

uint64_t sub_100272CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *v8;
  STACK[0x328] = *v8;
  return (*(v9 + 8 * (((v10 != 0) * ((v7 + 1701929530) & 0x9A8E9BFE ^ 0xA31)) ^ v7)))(a1, a2, a3, a4, a5, a6, a7, 16215950);
}

uint64_t sub_100272E48(uint64_t a1, uint64_t a2, int a3)
{
  v7 = (((a3 + 2900) - 7079) ^ a1) + v4;
  *(v5 - 7 + v7) = veor_s8(*(v3 - 7 + v7), 0x3C3C3C3C3C3C3C3CLL);
  return (*(v6 + 8 * ((12817 * ((v4 & 0xFFFFFFF8) - 8 == a1)) ^ a3)))();
}

uint64_t sub_10027309C@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v2 = (a2 + 212) | 0xE80;
  v3 = LODWORD(STACK[0x688]) - 7842 + v2;
  LODWORD(STACK[0x688]) = v3;
  return (*(a1 + 8 * (((v3 != ((v2 - 943646518) & 0x383EDCF7 ^ 0x1465)) * (((v2 - 425520877) & 0x195CDDEF) - 3381)) ^ v2)))();
}

uint64_t sub_100273210()
{
  v2 = STACK[0x558];
  v3 = STACK[0x528];
  v4 = STACK[0x64C];
  STACK[0x4A0] = 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = !v5 && v4 != ((v0 - 1843) ^ 0x999) - 7279;
  return (*(v1 + 8 * (((2 * v7) | (4 * v7)) ^ v0)))();
}

void sub_100273288(int a1@<W8>)
{
  v5 = *v2;
  v6 = *(v2 + 4) + a1;
  *(*v2 + v6) = (HIBYTE(v1) ^ 0x9B) - ((2 * (HIBYTE(v1) ^ 0x9B)) & 0x78) + 60;
  *(v5 + v6 + 1) = (BYTE2(v1) ^ 0xF2) - ((2 * (BYTE2(v1) ^ 0xF2)) & 0x78) + 60;
  *(v5 + v6 + 2) = (BYTE1(v1) ^ 0xB) - ((2 * (BYTE1(v1) ^ 0xB)) & 0x78) + 60;
  *(v5 + v6 + 3) = v1 ^ 0x84;
  v7 = *v2;
  v8 = ((v4 ^ 0xD94019CF) + 1062446794) ^ v4 ^ ((v4 ^ 0x614DC877) - 2023852174) ^ ((v4 ^ 0x5D1C6EAE) - 1156591191) ^ ((v4 ^ 0xFCFDFFEF) + 451821802);
  v9 = ((2 * (a1 + *(v2 + 4) + 4)) & 0xABFD9FFE) + ((a1 + *(v2 + 4) + 4) ^ 0x55FECFFF) - 1442762751;
  *(*v2 + v9) = (HIBYTE(v8) ^ 0x19) - 2 * ((HIBYTE(v8) ^ 0x19) & 0x3E ^ HIBYTE(v8) & 2) + 60;
  *(v7 + v9 + 1) = (BYTE2(v8) ^ 0xEC) - 2 * ((BYTE2(v8) ^ 0xEC) & 0x3E ^ BYTE2(v8) & 2) + 60;
  *(v7 + v9 + 2) = (((((v4 ^ 0x19CF) - 22838) ^ v4 ^ ((v4 ^ 0xC877) + 30578) ^ ((v4 ^ 0x6EAE) - 11863) ^ ((v4 ^ 0xFFEF) + 16618)) >> 8) ^ 0x40) - ((v8 >> 7) & 0x78) + 60;
  *(v7 + v9 + 3) = ((v4 ^ 0xCF) - 54) ^ v4 ^ ((v4 ^ 0x77) + 114) ^ ((v4 ^ 0xAE) - 87) ^ ((v4 ^ 0xEF) - 22) ^ 0xC5;
  *(v2 + 4) = v3;
  JUMPOUT(0x100149148);
}

uint64_t sub_100273544()
{
  STACK[0x748] = 0;
  v3 = STACK[0x378];
  STACK[0x3D8] = *(v2 + 8 * v1);
  LODWORD(STACK[0xA24]) = 485375226;
  STACK[0xA28] = &STACK[0x748];
  return (*(v2 + 8 * (((v3 != 0) * ((((((v1 + 8066) | 0x481) - 7361) | 0x1406) - 1552) ^ 0x15FB)) ^ ((v1 + 8066) | 0x481))))();
}

void sub_100273F4C(int a1@<W8>)
{
  v4 = (a1 ^ 0x2324) + 8740;
  *(v2 - 224) = ((a1 ^ 0x2324) - 2140796942) ^ (914963389 * ((v2 - 26035230 - 2 * ((v2 - 232) & 0xFE72BCCA)) ^ 0xD28E0DB1));
  (*(v3 + 8 * ((a1 ^ 0x2324) + 8806)))(v2 - 232);
  *(v1 + 112) = v4 ^ *(v2 - 232) ^ 0xB68F0C9B;
  JUMPOUT(0x10026DEFCLL);
}

uint64_t sub_10027406C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v7 = v4 - 1;
  *(a1 + v7) = *(v2 + v7);
  return (*(v6 + 8 * ((5372 * (v7 == (v5 - a2) - 3262)) ^ (v3 + v5 + 2442))))();
}

void sub_1002740A8(uint64_t a1@<X8>)
{
  *(a1 + 16) = *v1;
  *(a1 + 88) = *(v1 + 72);
  *(a1 + 92) = *(v1 + 76);
  *(a1 + 96) = *(v1 + 80);
  *(a1 + 97) = *(v1 + 81);
  *(a1 + 120) = *(v1 + 104);
  *(a1 + 100) = *(v1 + 84);
  *(a1 + 124) = *(v1 + 108) & 1;
  JUMPOUT(0x100274128);
}

uint64_t sub_100274198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, int a16)
{
  a15 = v17 - 1710126949 * ((1572677594 - (&a15 | 0x5DBD27DA) + (&a15 | 0xA242D825)) ^ 0x905983B5) + 476320890;
  v18 = (*(v16 + 8 * (v17 + 7444)))(&a15);
  return (*(v16 + 8 * (((a16 != 16257999) | (2 * (a16 != 16257999))) ^ v17)))(v18);
}

uint64_t sub_100274270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, int a16)
{
  a15 = 476323082 - 1710126949 * ((&a15 - 84886246 - 2 * (&a15 & 0xFAF0BD1A)) ^ 0xC8EBE68A);
  v18 = (*(v17 + 77088))(&a15);
  return (*(v17 + 8 * ((823 * (a16 == 16257999)) ^ v16)))(v18);
}

uint64_t sub_1002746D4()
{
  v3 = ((v1 - 223574237) & 0xD537B35) - ((v0 + 474961462) & 0xF ^ (2 * (v0 + 474961462)) & 8 ^ 4) - 4865;
  LODWORD(STACK[0x778]) = v3;
  return (*(v2 + 8 * ((115 * ((v0 ^ 0x7FDFF3FED4AFEF5ALL) + ((2 * v0) & 0x1A95FDEB4) + 2 * v3 + 0x26A49C5B8FD131C7 + (v3 ^ 0x597B6FA59B7EDEDFuLL) < 0xFFFFFFF6)) ^ v1)))();
}

uint64_t sub_1002749D4()
{
  v3 = *(v1 + 8);
  STACK[0x6F8] = v3;
  return (*(v2 + 8 * ((((((v0 + 1142129034) & 0xBBEC6B5F) + 651) ^ ((v0 - 4465) | 0x117)) * (v3 != 0)) ^ v0)))();
}

uint64_t sub_100274A2C(uint64_t a1, void *a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned int a13, int a14)
{
  v17 = v16 - v14 - 3164;
  *a2 = 0;
  *a3 = 0;
  a13 = v16 - 1710126949 * (((&a13 | 0xA17C00A5) - (&a13 & 0xA17C00A5)) ^ 0x93675B35) + 476319856;
  v18 = (*(v15 + 8 * (v16 + 6410)))(&a13);
  return (*(v15 + 8 * ((4749 * (a14 == (v17 ^ 0x78A51DB3))) ^ v16)))(v18);
}

uint64_t sub_100274AD8@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 228) = (v2 - 476) ^ (33731311 * ((((2 * (v4 - 232)) | 0x524A3E62) - (v4 - 232) + 1457184975) ^ 0x90D3D512));
  *(v4 - 224) = a1;
  *(v4 - 216) = &STACK[0x604];
  v5 = (*(v1 + 8 * (v2 + 5873)))(v4 - 232);
  return (*(STACK[0x330] + 8 * (((*(v4 - 232) == ((v2 + 1432457583) & 0xAA9E65FE ^ (v3 + 602))) * ((2 * v2) ^ 0x1C16)) ^ v2)))(v5);
}

uint64_t sub_100274B90(uint64_t a1)
{
  v6 = (((v3 + v2) | 0x82Eu) ^ 0xFFFFFFFFFFFFF5D1) + v4;
  *(a1 + v6) = *(v1 + v6);
  return (*(v5 + 8 * ((1004 * (v6 == 0)) ^ (v3 + v2 + 4070))))();
}

uint64_t sub_100274CB0(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  return sub_10022C35C(535 * (v1 ^ 0x1632u));
}

void sub_100274D08()
{
  *&STACK[0x3B0] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x3A0] = xmmword_1002BF670;
  JUMPOUT(0x100274E74);
}

uint64_t sub_1002753AC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v7 = 1875091903 * (((&v9 | 0x8BCF3D0F) - (&v9 & 0x8BCF3D0F)) ^ 0xBDBABE8C);
  v14 = a4;
  v15 = a6;
  v16 = v7 ^ ((a2 ^ 0xFEDDB6F3) + 1974886208 + ((2 * a2) & 0xFDBB6DE6));
  v12 = ((2 * a5) & 0xFF6B3FE8) - v7 + (a5 ^ 0x7FB59FF4) - 637534464;
  v13 = v7 + 9377;
  v10 = a1;
  v11 = a3;
  (*(v6 + 76960))(&v9);
  return (v9 - 16257999);
}

uint64_t sub_100275538@<X0>(uint64_t a1@<X3>, unint64_t a2@<X8>)
{
  v2 = (LODWORD(STACK[0x3E4]) - 5141) | 0x40A;
  STACK[0x8E8] = a2;
  v3 = STACK[0x780];
  STACK[0x8F0] = STACK[0x780];
  return (*(a1 + 8 * ((9734 * (a2 - v3 > ((v2 ^ 0x103Fu) - 4661) - 551)) ^ v2)))();
}

uint64_t sub_1002755BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a12;
  a16 = 1317436891 * ((&a14 + 2073060290 - 2 * (&a14 & 0x7B9063C2)) ^ 0xCB93FBB4) + 8154;
  v18 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((54 * (a15 != v17)) ^ 0x615)))(v18);
}

uint64_t sub_100275674(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(v5 + v3 - 16);
  v8 = (v5 + a1 - 16);
  *(v8 - 1) = *(v5 + v3 - 32);
  *v8 = v7;
  return (*(v6 + 8 * ((1368 * ((a3 + 1898357693) - (v5 & 0xFFFFFFE0) == 8468)) ^ (v4 + a3 + 3662))))();
}

uint64_t sub_1002756F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13, uint64_t *a14, char *a15, uint64_t a16, unsigned int a17, int a18)
{
  v21 = v18 - 653;
  v22 = v18 + 114;
  v23 = v18 - 27;
  v24 = v18 - 784;
  v25 = 1317436891 * ((2 * ((&a13 ^ 0x9CDEE4A8) & 0x30E7F470) - (&a13 ^ 0x9CDEE4A8) - 820507767) ^ 0xE3C57757);
  a14 = &a9;
  a15 = &a11;
  a16 = v19;
  a17 = 1602299020 - v25;
  a18 = v24 ^ v25;
  v26 = (*(v20 + 8 * (v21 ^ 0x2FEE)))(&a13);
  return (*(v20 + 8 * (v21 ^ (16 * (((v22 ^ v23) ^ (*(v19 + 24) == 16257999)) & 1)))))(v26);
}

uint64_t sub_100275824(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  LODWORD(STACK[0x310]) = 0;
  *v4 = 0u;
  v4[1] = 0u;
  return sub_10023F47C(3690921440, a2, a3, a4);
}

uint64_t sub_1002758A0()
{
  STACK[0x7E8] = STACK[0x348];
  STACK[0x670] = *(v2 + 8 * v1);
  return sub_1002707AC(v1 + 4107);
}

uint64_t sub_1002758A8()
{
  v9 = (v1 + 6486) ^ (1824088897 * (((&v7 | 0x66EE4855) - &v7 + (&v7 & 0x9911B7A8)) ^ 0x3E879B37));
  v8 = v4;
  (*(v2 + 8 * (v1 ^ 0x22C8u)))(&v7);
  v9 = (v1 + 6486) ^ (1824088897 * ((((&v7 | 0x5E4F3F3C) ^ 0xFFFFFFFE) - (~&v7 | 0xA1B0C0C3)) ^ 0xF9D913A1));
  v8 = v6;
  (*(v2 + 8 * ((v1 - 104) ^ 0x2350)))(&v7);
  return (v5 ^ 0xB7F993FF) + 1224638416 + ((v5 << (v0 ^ 0x31)) & 0x6FF327FE) - 16257999;
}

void sub_1002759F8()
{
  LODWORD(STACK[0x534]) = v1;
  LODWORD(STACK[0x61C]) = 197499219;
  LODWORD(STACK[0x7E0]) = 197499219;
  LODWORD(STACK[0x844]) = v2;
  STACK[0x4E8] = v0;
  JUMPOUT(0x100275A20);
}

uint64_t sub_100275AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X6>, int a7@<W7>, int a8@<W8>)
{
  if (v8 == 17168)
  {
    return (*(a6 + 8 * ((a7 + 52) ^ (5025 * (a5 == a8 + 4)))))();
  }

  if (v8 == 20706 || v8 == 33980)
  {
    return (*(a6 + 8 * (((((a7 + 51) | 1) + 4376) * (v8 == 17168)) ^ (a7 + 52))))(a1, a2, a3, a4, 197499219);
  }

  LODWORD(STACK[0x268]) = v8;
  return (STACK[0x260])();
}

uint64_t sub_100275D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, unint64_t a36)
{
  v40 = (v38 + ((2 * (v37 + 6)) & 0x6C7E72F77DF7E76CLL) + ((v37 + 6) ^ 0xF63F397BBEFBF3B6) + 0x9C0C68441040C4ALL);
  v41 = (*v40 << 24) | (v40[1] << 16) | (v40[2] << 8);
  return (*(v39 + 8 * ((2037 * ((((v41 | v40[3]) + 197499219 - 2 * ((v41 | v40[3]) & 0xBC5995F ^ v40[3] & 0xC)) ^ 0xBC59953u) + v37 + 10 <= a36)) ^ v36)))();
}

uint64_t sub_1002760EC@<X0>(int a1@<W3>, int a2@<W8>, int8x16_t a3@<Q0>, int8x16_t a4@<Q1>, int8x16_t a5@<Q4>, int8x16_t a6@<Q5>, int8x16_t a7@<Q6>, int32x4_t a8@<Q7>)
{
  v14 = v9 + 4;
  a4.i64[0] = *(v10 + 4);
  a4.i32[2] = *(v11 + 4 * (v14 + v8));
  v15 = vextq_s8(a3, a4, 0xCuLL);
  v16 = a4;
  v16.i32[3] = *(v10 + 16);
  v17 = veorq_s8(vshrq_n_u32(vorrq_s8(vandq_s8(v16, a6), vandq_s8(v15, a5)), 1uLL), *(v10 - 908));
  v15.i32[0] = *(v13 + 4 * (*(v10 + 4) & 1));
  v15.i32[1] = *(v13 + 4 * (*(v10 + 8) & 1));
  v15.i32[2] = *(v13 + 4 * (*(v11 + 4 * (v14 + v8)) & 1));
  v15.i32[3] = *(v13 + 4 * (v16.i8[12] & 1));
  *v10 = veorq_s8(vaddq_s32(vsubq_s32(v17, vandq_s8(vaddq_s32(v17, v17), a7)), a8), v15);
  return (*(v12 + 8 * (((v14 == -3245) * a1) ^ a2)))();
}

uint64_t sub_100276160@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 8);
  STACK[0x9B0] = 0;
  STACK[0x520] = 0;
  return (*(STACK[0x400] + 8 * (((((v1 + 841) | 0x20) - 9166) * (v2 != 0)) ^ v1)))();
}

void sub_1002761F8(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  LODWORD(STACK[0x394]) = v2;
  JUMPOUT(0x1002248D4);
}

uint64_t sub_100276218@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v66 = v65 ^ a1;
  v67 = *(STACK[0x678] + 24);
  STACK[0x3D0] = v67;
  return (*(a65 + 8 * (((v67 == 0) * ((v65 - 878694419) & 0x345FBFFF ^ (v66 - 4057))) ^ v65)))();
}

uint64_t sub_1002762D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = LODWORD(STACK[0x360]);
  switch(v6)
  {
    case 17168:
      return (*(STACK[0x3E8] + 8 * ((v5 - 4071) ^ (146 * (a3 == 197499223)))))();
    case 20706:
      return (*(STACK[0x3E8] + 8 * ((((v5 + 2130862360) & 0x80FD9AF2 ^ 0x1F0D) * (a3 == 197499227)) ^ (v5 - 4071))))();
    case 33980:
      STACK[0x708] = STACK[0x6E0] + STACK[0x2F0];
      JUMPOUT(0x1001F1EC0);
  }

  return sub_1002213B0(a1, a2, a3, a4, a5, v5);
}

void sub_1002765A0()
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

uint64_t sub_1002765D4()
{
  v4 = (*(v3 + 8 * (v0 + 8394)))();
  *v1 = 0;
  return v2(v4);
}

void sub_1002765F8(int a1)
{
  v2 = *(&off_100315F70 + (a1 ^ 0x903)) - 4;
  *(v1 - 256) = *(&off_100315F70 + (a1 ^ 0x9F2));
  *(v1 - 248) = v2;
  JUMPOUT(0x100276D3CLL);
}

uint64_t sub_100278874@<X0>(uint64_t a1@<X3>, unsigned int a2@<W8>)
{
  v6 = v5 < v3;
  *(v4 + v2) = 0;
  if (v6 == (a2 ^ 0x13F1uLL) + v2 > 0xFFFFFFFFCDE53684)
  {
    v6 = v3 + v2 + 1 < v5;
  }

  return (*(a1 + 8 * ((2044 * v6) ^ a2)))();
}

uint64_t sub_1002788D8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xA50] = ((v1 - 32) | 0x20u) + 0x5E419F52E8AC3FEELL + (((v2 ^ 0x11A1C2F5AE308480) - 0x11A1C2F5AE308480) ^ ((v2 ^ 0x244643D37C7A7A97) - 0x244643D37C7A7A97) ^ ((v2 ^ 0x35E78126D98F6744) - 0x35E78126D98F6EBELL + ((v1 - 874) ^ 0x27CCu)));
  *(a1 + 16) = (((v2 ^ 0xA004CBBB) + 1610298437) ^ ((v2 ^ 0x40FF2A48) - 1090464328) ^ ((v2 ^ 0xEB3E78A0) + 348227424)) + 197499229;
  v5 = (*(v3 + 8 * (v1 + 386)))();
  v6 = STACK[0x400];
  *(a1 + 24) = v5;
  return (*(v6 + 8 * ((69 * (v5 == 0)) ^ (v1 - 874))))();
}

uint64_t sub_100278A4C()
{
  v0 = STACK[0x32C];
  v1 = LOWORD(STACK[0x886]);
  STACK[0x448] = STACK[0x888];
  return (*(STACK[0x330] + 8 * (((v1 == 17168) * (((v0 + 379570601) & 0xE960377E) - 342)) ^ (v0 - 2561))))();
}

void sub_100278AAC()
{
  STACK[0x540] = 0;
  STACK[0x690] = 0;
  STACK[0x3D8] = *(STACK[0x330] + 8 * v0);
  JUMPOUT(0x10023929CLL);
}

uint64_t sub_100278B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, int a18, unsigned int a19, uint64_t a20, char *a21, unsigned int a22, unsigned int a23)
{
  v26 = (v23 + 130279740) & 0x40B9E;
  v27 = ((((&a18 | 0xB20D1424) ^ 0xFFFFFFFE) - (~&a18 | 0x4DF2EBDB)) ^ 0x159B38B9) * v24;
  a19 = v27 + 1136829205;
  a22 = -654855621 - v27;
  a23 = v27 + 1674579114;
  a20 = a13;
  a21 = &a16;
  v28 = (*(v25 + 76864))(&a18);
  return (*(v25 + 8 * ((14191 * (a18 == v26 + 16255565)) ^ 0x14A7u)))(v28);
}

uint64_t sub_100278C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, char *a20)
{
  a18 = (33731311 * (((&a17 | 0xBE3FBC99) - (&a17 & 0xBE3FBC99)) ^ 0x87C976BA)) ^ 0xC9C;
  a19 = a15;
  a20 = &a14;
  (*(v21 + 76616))(&a17);
  a19 = a15;
  LODWORD(a20) = 5661 - 2008441969 * ((&a17 + 128911006 - 2 * (&a17 & 0x7AF069E)) ^ 0x4F365290);
  v23 = (*(v21 + 77016))(&a17);
  return (*(v21 + 8 * ((2845 * (a17 == v22)) ^ v20)))(v23);
}

void sub_100278D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  STACK[0x830] = *(a4 + 8 * (v4 - 5051));
  LODWORD(STACK[0x3A0]) = STACK[0x534];
  LODWORD(STACK[0x3B0]) = STACK[0x61C];
  LODWORD(STACK[0x3D0]) = 16215971;
  LODWORD(STACK[0x3C0]) = STACK[0x7E0];
  LODWORD(STACK[0x390]) = v5 ^ 0x1FAA;
  JUMPOUT(0x1001F4C1CLL);
}

uint64_t sub_100278DF4@<X0>(uint64_t a1@<X8>)
{
  v5 = v4 + 127 - a1;
  v6 = *(v5 - 31);
  v7 = v3 + 127 - a1;
  v8.i64[0] = 0x7878787878787878;
  v8.i64[1] = 0x7878787878787878;
  v9.i64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v9.i64[1] = 0x3C3C3C3C3C3C3C3CLL;
  *(v7 - 15) = vaddq_s8(vsubq_s8(*(v5 - 15), vandq_s8(vaddq_s8(*(v5 - 15), *(v5 - 15)), v8)), v9);
  *(v7 - 31) = vaddq_s8(vsubq_s8(v6, vandq_s8(vaddq_s8(v6, v6), v8)), v9);
  return (*(v1 + 8 * (((a1 == 96) * ((v2 - 3176) ^ 0x984)) ^ v2)))();
}

uint64_t sub_100278FF0(uint64_t a1, int a2, uint64_t a3)
{
  v8 = *(v5 + a3 + 16);
  v9 = (v6 + a3);
  *v9 = *(v5 + a3);
  v9[1] = v8;
  return (*(v7 + 8 * (((v3 == a3) * a2) ^ v4)))();
}

uint64_t sub_1002790B4(uint64_t a1)
{
  *(a1 + 16) = *v2;
  *(a1 + 88) = *(v2 + 72);
  *(a1 + 92) = *(v2 + 76);
  *(a1 + 96) = *(v2 + 80);
  *(a1 + 97) = *(v2 + 81);
  *(a1 + 120) = *(v2 + 104);
  *(a1 + 100) = *(v2 + 84);
  *(a1 + 124) = *(v2 + 108) & (((v1 + 114) & 0x77) - 114);
  return sub_100279140();
}

uint64_t sub_100279140(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, char a7, int a8)
{
  v12 = a3 + v8 - 1312;
  *(v10 + v12) = *(a2 + v12) ^ *(*(v11 + 8 * a4) - 8 + (v12 & 0xF)) ^ *((v12 & 0xF) + *(v11 + 8 * a5) - 12 + 3) ^ ((v12 & 0xF) * a7) ^ *(*(v11 + 8 * a6) + (v12 & 0xF)) ^ 0x3C;
  return (*(STACK[0x3E8] + 8 * (((v12 != 0) * a8) ^ v9)))();
}

uint64_t sub_100279248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13, uint64_t a14, uint64_t *a15, unsigned int a16, unsigned int a17)
{
  v21 = ((&a12 - 200548955 - 2 * (&a12 & 0xF40BDDA5)) ^ 0xAC620EC7) * v18;
  a14 = a10;
  a15 = &a9;
  a16 = -654855621 - v21;
  a17 = v21 + v20 + 1674576141;
  a13 = v21 - 179957024;
  v22 = (*(v17 + 8 * (v20 ^ 0x2E15)))(&a12);
  return (*(v17 + 8 * ((52 * (a12 != (((v20 ^ 0xFFB) + 1719) ^ (v19 + 2280)))) ^ v20)))(v22);
}

uint64_t sub_100279380()
{
  v2 = (v0 - 4286) | 0xA01;
  v3 = (STACK[0x900] ^ 0xDE538BA8) & (2 * (STACK[0x900] & 0xDF630BA9)) ^ STACK[0x900] & 0xDF630BA9;
  v4 = v0 ^ 0x909285B7 ^ ((2 * (LODWORD(STACK[0x900]) ^ (v2 + 1221692593))) ^ 0x2F652086) & (LODWORD(STACK[0x900]) ^ (v2 + 1221692593)) ^ (2 * (LODWORD(STACK[0x900]) ^ (v2 + 1221692593))) & 0x97B29042;
  v5 = (((2 * (LODWORD(STACK[0x900]) ^ (v2 + 1221692593))) ^ 0x2F652086) & (LODWORD(STACK[0x900]) ^ (v2 + 1221692593)) ^ (2 * (LODWORD(STACK[0x900]) ^ (v2 + 1221692593))) & 0x97B29042 ^ 0x7000000) & (4 * v3) ^ v3;
  v6 = ((4 * v4) ^ 0x5ECA410C) & v4 ^ (4 * v4) & 0x97B29040;
  v7 = (v6 ^ 0x16820000) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x81309043)) ^ 0x7B290430) & (v6 ^ 0x81309043) ^ (16 * (v6 ^ 0x81309043)) & 0x97B29040;
  v9 = (STACK[0x900] ^ (2 * ((((v8 ^ 0x84929043) << 8) & 0x17B20000 ^ 0x12900000 ^ (((v8 ^ 0x84929043) << 8) ^ 0xB2900000) & (v8 ^ 0x84929043)) & (((v8 ^ 0x13200000) & (v7 << 8) ^ v7) << 16) ^ (v8 ^ 0x13200000) & (v7 << 8) ^ v7))) == -547157079;
  return (*(v1 + 8 * (((8 * v9) | (16 * v9)) ^ (v0 + 2347))))();
}

uint64_t sub_1002794F4()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x35C3)))();
  v3 = STACK[0x330];
  STACK[0x590] = 0;
  return (*(v3 + 8 * (((*(STACK[0x6B0] + 5) != (((v0 ^ 0x5E) + 13) ^ 0x26)) * ((4 * (v0 ^ 0x185E)) ^ 0x2061)) ^ v0 ^ 0x185E)))(v2);
}

uint64_t sub_100279564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3.n128_u64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v3.n128_u64[1] = 0x3C3C3C3C3C3C3C3CLL;
  return sub_10027958C(a1, 4445, a3, 770041607, v3);
}

uint64_t sub_10027958C@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W3>, uint64_t a4@<X8>, int8x16_t a5@<Q0>)
{
  v13 = ~v8 + v5;
  v14 = *(a4 + v13 - 15);
  v15 = *(a4 + v13 - 31);
  v16 = a1 + v13;
  *(v16 - 15) = veorq_s8(v14, a5);
  *(v16 - 31) = veorq_s8(v15, a5);
  return (*(v12 + 8 * ((((((a3 + v7 + 72) | v9) ^ v11) + v8 == v6) * a2) ^ v10)))();
}

uint64_t sub_1002795FC()
{
  v4 = 1358806181 * ((v3 + 1475160102 - 2 * ((v3 - 120) & 0x57ED289E)) ^ 0x68C2441D);
  *(v3 - 104) = v2;
  *(v3 - 120) = v4 - 1569389450;
  *(v3 - 116) = v4 - 740060536 + v1;
  v5 = (*(v0 + 8 * (v1 ^ 0x2A02)))(v3 - 120);
  return (*(v0 + 8 * (((*(v3 - 112) == 16257999) * ((v1 ^ 0x7A3) + 2657)) ^ v1)))(v5);
}

void sub_1002796A4(unint64_t a1@<X0>, unsigned int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v19 = ((a2 ^ v10) + v11) ^ ((a2 ^ 0x5AFB426E0B8A3085) - 0x5AFB426E0B8A3085) ^ ((a2 ^ (v9 + v8) ^ 0x72A534C6BE2CFC05) - 0x72A534C6DF106852);
  v20 = v15 + (v19 + v12) * (v19 + v13) - ((((v15 + (v19 + v12) * (v19 + v13)) * v16) >> 64) >> 31) * v17;
  v21 = v20 * v18 + (v14 ^ v7) * (v14 ^ v7) + a4;
  v22 = (v21 - (((v21 * a1) >> 64) >> 31) * a5) * v20;
  *(a6 + a3) = *(v6 + a3) ^ (v22 >> 15) ^ 0x3C;
  *(a6 + (a3 | 1)) = *(v6 + (a3 | 1)) ^ (v22 >> 23) ^ 0x3C;
  *(a6 + (a3 | 2)) = *(v6 + (a3 | 2)) ^ (v22 >> 31) ^ 0x3C;
  *(a6 + (a3 | 3)) = *(v6 + (a3 | 3)) ^ (v22 >> 39) ^ 0x3C;
  JUMPOUT(0x10018A68CLL);
}

uint64_t sub_100279808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18)
{
  a17 = a12;
  a18 = &a11;
  a16 = (v18 + 1007) ^ (33731311 * (&a15 ^ 0x39F6CA23));
  (*(v19 + 8 * (v18 + 7356)))(&a15);
  a17 = a12;
  LODWORD(a18) = v18 - 2008441969 * ((934883449 - (&a15 | 0x37B93079) + (&a15 | 0xC846CF86)) ^ 0x80DF9B88) + 3440;
  v21 = (*(v19 + 8 * (v18 ^ 0x2D36)))(&a15);
  return (*(v19 + 8 * (((a15 == v20) * ((v18 ^ 0x382) - 2785)) ^ v18)))(v21);
}

uint64_t sub_100279958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, int a14, unsigned int a15, uint64_t a16, char *a17, unsigned int a18, unsigned int a19)
{
  v22 = (((&a14 ^ 0x86037F31) & 0xEBD1BD42 | ~(&a14 ^ 0x86037F31 | 0xEBD1BD42)) ^ 0xCA44EEEE) * v19;
  a15 = v22 - 1953920832;
  a18 = -654855621 - v22;
  a19 = v22 + v21 + 1674574045;
  a16 = a9;
  a17 = &a12;
  v23 = (*(v20 + 8 * (v21 ^ 0x3645u)))(&a14);
  return (*(v20 + 8 * (((a14 == 16257999) * (((v21 - 4040) | 0x38) ^ 0xCB4)) ^ v21)))(v23);
}

uint64_t sub_100279A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, int a30, int a31, uint64_t a32, int a33, int a34, int a35, int a36)
{
  v40 = 1710126949 * ((0x9557F33CB065C338 - ((v39 - 152) | 0x9557F33CB065C338) + a32) ^ 0x2AE681A7D816757);
  *(v37 + 24) = (v38 + 1) - v40;
  *(v39 - 152) = a36 ^ v40;
  *(v39 - 148) = v40;
  *(v39 - 128) = a34 ^ v40;
  *(v39 - 144) = a36 - v40 - 22;
  *(v39 - 140) = a35 - v40;
  *(v37 + 40) = v40 ^ 3;
  v41 = (*(v36 + 8 * a31))(v39 - 152);
  return (*(v36 + 8 * *(v39 - 124)))(v41);
}

uint64_t sub_100279B8C()
{
  v11 = (v0 + 6025) ^ ((&v9 ^ 0x5869D362) * v1);
  v10 = v8;
  v4 = v0 ^ 0x2C9D;
  v5 = 1097 * (v0 ^ 0x913);
  (*(v2 + 8 * v4))(&v9);
  v11 = (v5 + 6152) ^ ((&v9 ^ 0x5869D362) * v1);
  v10 = v7;
  (*(v2 + 8 * (v5 ^ 0x2D1E)))(&v9);
  return (v3 - 16257999);
}

uint64_t sub_100279CB4(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unsigned int a15, uint64_t a16, int a17, int a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22, uint64_t a23, uint64_t a24, unsigned int a25, unsigned int a26)
{
  v27.n128_u64[0] = 0x7878787878787878;
  v27.n128_u64[1] = 0x7878787878787878;
  v28.n128_u64[0] = 0x3C3C3C3C3C3C3C3CLL;
  v28.n128_u64[1] = 0x3C3C3C3C3C3C3C3CLL;
  return (*(v26 + 8 * ((((a18 + 726283800) & 0xD4B5E8DE ^ 0x2AE4) * (a15 < 0xFFFFFFFE)) ^ a18)))(a21, -474, 27, a25, 3953782941, 3904377628, 2443927634, a26, a1, a2, a3, v27, v28);
}

uint64_t sub_100279DB4@<X0>(int a1@<W8>)
{
  STACK[0x998] = v1;
  v2 = STACK[0x698];
  STACK[0x9A0] = STACK[0x698];
  return (*(STACK[0x330] + 8 * (((v1 - v2 > ((6 * (a1 ^ 0x1A7Cu)) ^ 0x15FFuLL)) * (((a1 - 6613) | 0x187) + 14462)) ^ a1)))();
}

uint64_t sub_100279E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, int a42, int a43, int a44, int a45, int a46)
{
  v51 = v50 - 224;
  *(v51 + 88) = v49 | 3;
  *(v51 + 72) = ((v48 + 1) ^ a43 ^ 0xC5A1302D ^ (v46 - (a46 - 8863) >= ~(a46 - 8863))) - v49;
  *(v50 - 144) = (a46 + 1324639579) ^ v49;
  *(v50 - 160) = a43 - v49 + 12;
  *(v50 - 156) = a45 - v49;
  *(v50 - 168) = a43 ^ v49;
  *(v50 - 164) = v49;
  v52 = (*(v47 + 8 * a44))(v50 - 168);
  return (*(v47 + 8 * *(v50 - 140)))(v52);
}

void sub_100279EBC()
{
  LODWORD(STACK[0x534]) = STACK[0x3A0];
  LODWORD(STACK[0x61C]) = STACK[0x3B0];
  LODWORD(STACK[0x7E0]) = STACK[0x3C0];
  LODWORD(STACK[0x844]) = v0;
  JUMPOUT(0x10017F848);
}

uint64_t sub_100279F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, int a12, uint64_t a13, char *a14, int a15, char a16, int a17)
{
  v25 = -3 * (*(v17 + 32) + v23);
  v26 = (&a12 ^ 0x321B5B90) * v21;
  a17 = v26 + v20 + 1458;
  a13 = v22;
  a14 = &a10;
  a16 = (&a12 ^ 0x90) * v21 + v25 + 92;
  a15 = v26 + 864028683 + v24;
  v27 = (*(v19 + 8 * (v20 + 6273)))(&a12);
  return (*(v19 + 8 * (((a12 == v18) * (v20 ^ 0x10A0)) ^ v20)))(v27);
}

uint64_t sub_10027A0DC()
{
  (*(v1 + 8 * (v0 + 1166)))();
  v2 = STACK[0x330];
  STACK[0x5E0] = 0;
  return (*(v2 + 8 * (((STACK[0x520] == 0) * ((3437 * (v0 ^ 0x20F4) + 1871) ^ 0x221B)) ^ (3437 * (v0 ^ 0x20F4)))))();
}

uint64_t sub_10027A1E8@<X0>(uint64_t a1@<X3>, int a2@<W8>)
{
  v6 = *v5;
  STACK[0x4A0] = *(a1 + 8 * v2);
  STACK[0x5B0] = v6;
  LODWORD(STACK[0x614]) = v4;
  STACK[0x608] = v3;
  return (*(a1 + 8 * (((v3 == 0) * ((31 * (a2 ^ 0x1498)) ^ 0x1EBA)) ^ (a2 - 1302))))();
}

uint64_t sub_10027A238()
{
  v3 = (((2 * v1) & 0xFEDBD7BBB1BEF9CLL) + (v1 ^ 0x87F6DEBDDD8DF7CELL) + v0 + 0x780921422271FA0CLL);
  v4 = (v3[3622] << 56) | (v3[3623] << 48) | (v3[(2 * (v2 ^ 0x3D14)) ^ 0x2594] << 40) | (v3[3625] << 32) | (v3[3626] << 24) | (v3[3627] << 16) | (v3[3628] << 8) | v3[3629];
  STACK[0x458] = v4 + 0x431A33AA2E6D965FLL - ((2 * v4) & 0x863467545CDB2CBELL);
  return sub_10027A2FC();
}

void sub_10027A2FC(uint64_t a1@<X3>, unint64_t a2@<X8>)
{
  STACK[0x730] = a2;
  STACK[0x5A0] = *(a1 + 8 * (v2 - 3399));
  JUMPOUT(0x10011274CLL);
}

uint64_t sub_10027A378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = LOWORD(STACK[0x8CE]);
  switch(v7)
  {
    case 17168:
      goto LABEL_4;
    case 33980:
      v8 = STACK[0x740];
      STACK[0x570] = v4;
      LODWORD(STACK[0x7F4]) = a3;
      return (*(a4 + 8 * (((v8 + v5 != 0) * (((v6 + 750605168) & 0xD3429CFE) - 1109)) ^ (v6 - 689))))();
    case 20706:
LABEL_4:
      STACK[0x570] = v4;
      break;
  }

  *STACK[0x580] = 0;
  LODWORD(STACK[0x7F4]) = 197499219;
  return sub_100262D70(a1, a2, a3, a4);
}

uint64_t sub_10027A520()
{
  v2 = *(STACK[0x5B8] + 20);
  if (v2)
  {
    if (v2 == 1)
    {
      (*(v1 + 8 * (v0 + 352)))(STACK[0x628], 0, 32);
      JUMPOUT(0x1000F8148);
    }

    JUMPOUT(0x1001ADFA8);
  }

  return sub_10027A598();
}

uint64_t sub_10027A598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  STACK[0x518] = v4;
  STACK[0x760] = *(v7 + 8 * v6);
  STACK[0x4B0] = 0;
  LODWORD(STACK[0x654]) = 546879932;
  LODWORD(STACK[0x848]) = 0;
  return (*(v7 + 8 * ((99 * ((((v3 - 7942) ^ (v5 == 0)) & 1) == 0)) ^ (v3 - 4070))))(a1, a2, a3, 16215976);
}

uint64_t sub_10027A628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = LODWORD(STACK[0x380]);
  if (v7 == 17168)
  {
    return (*(STACK[0x3E8] + 8 * ((v6 - 563) ^ (12428 * (a3 == 197499223)))))();
  }

  if (v7 == 20706 || v7 == 33980)
  {
    STACK[0x620] = a6;
  }

  return (STACK[0x770])(a1, a2, a3, STACK[0x3E8]);
}

uint64_t sub_10027A6B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  STACK[0x230] = a1;
  *(v8 - 200) = a1;
  v9 = *(a7 + 8 * ((70 * (LODWORD(STACK[0x25C]) == ((((((v7 - 330) | 0x1A0) - 1442) | 0x84) + 16258553) ^ (((v7 - 330) | 0x1A0) + 1021391274) & 0xC31ECDFF))) ^ ((v7 - 330) | 0x1A0)));
  STACK[0x2A8] = STACK[0x270];
  return v9();
}

uint64_t sub_10027A748()
{
  v1 = *(STACK[0x758] + 24);
  STACK[0x790] = v1;
  return (*(STACK[0x3E8] + 8 * (((v1 == 0) * (((227 * (v0 ^ 0x147F)) ^ 0xFFFFFFCD) + v0 + 8)) ^ v0)))();
}

uint64_t sub_10027A854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v24 = ((917997502 - (&a15 | 0x36B787BE) + (&a15 | 0xC9487841)) ^ 0x9121AB23) * v21;
  a16 = v24 - 1540187763;
  a17 = a13;
  a18 = &a10;
  a19 = -654855621 - v24;
  a20 = v24 + v22 + 1674574376;
  v25 = (*(v20 + 8 * (v22 + 4870)))(&a15);
  return (*(v20 + 8 * (((a15 != v23) * ((335 * (v22 ^ 0x1286) + 59) ^ (v22 - 3343))) ^ v22)))(v25);
}

uint64_t sub_10027A920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = 1317436891 * ((&a14 + 1863741123 - 2 * (&a14 & 0x6F166EC3)) ^ 0xDF15F6B5) + 8154;
  v19 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((197 * (a15 == v18)) ^ v17)))(v19);
}

uint64_t sub_10027A9A4()
{
  v1 = ((v0 + 41341218) & 0xFD8939C9) + 378997690 + (((*(STACK[0x518] + 116) ^ 0x34ECEC58) - 887942232) ^ ((*(STACK[0x518] + 116) ^ 0xFF4A3F24) + 11911388) ^ ((*(STACK[0x518] + 116) ^ 0xC0634A2F) + 1067234769));
  *(STACK[0x518] + 116) = v1 ^ ((v1 ^ 0x79FB7E12) - 1932193269) ^ ((v1 ^ 0xEA9DE919) + 531858690) ^ ((v1 ^ 0xE668EB93) + 323389324) ^ ((v1 ^ 0x7FDFEF7F) - 1963883672) ^ 0x1140AB4;
  return sub_10027AAA0();
}

uint64_t sub_10027AAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x470];
  v6 = STACK[0x4E8];
  v7 = &STACK[0xA00] + STACK[0x4E8];
  STACK[0x440] = v7;
  v8 = v7 + 16;
  STACK[0x798] = (v7 + 16);
  STACK[0x738] = (v7 + 48);
  STACK[0x4E8] = v6 + 80;
  (*(a4 + 8 * (v4 ^ 0x401)))();
  v9 = (*(STACK[0x3E8] + 8 * (v4 ^ 0x401)))(v8, 0, 32);
  v10 = STACK[0x3E8];
  STACK[0x5F0] = 0;
  STACK[0x7F8] = 0;
  LODWORD(STACK[0x6DC]) = 197499219;
  STACK[0x4B0] = 0;
  LODWORD(STACK[0x5EC]) = 0;
  STACK[0x4D0] = v5;
  return (*(v10 + 8 * ((((((v4 + 194469502) & 0xF4688BCF) - 2808) ^ 0xDD) * (v5 != 0)) ^ v4)))(v9);
}

uint64_t sub_10027ABA4@<X0>(int a1@<W8>, uint64_t a2, uint64_t *a3, int a4, uint64_t a5, unsigned int a6, unsigned int a7)
{
  v12 = (((&a3 | 0xC87FE277) - &a3 + (&a3 & 0x37801D88)) ^ 0xE483530C) * a1;
  a5 = v7;
  a3 = &a2;
  a6 = (((v11 + 3518) ^ 0xCB47733D) + v9) ^ v12;
  a7 = -1683109072 - v12;
  a4 = (v11 - 5048) ^ v12;
  v13 = (*(v8 + 8 * (v11 + 3628)))(&a3);
  return (*(v8 + 8 * (((*(v7 + 24) == v10 + 3956) * (v11 ^ 0x187C)) ^ v11)))(v13);
}

void sub_10027ACA8()
{
  v1 = (v0 + 908);
  vld1q_dup_f32(v1);
  JUMPOUT(0x10027ACD4);
}

uint64_t sub_10027AD78@<X0>(int a1@<W8>)
{
  v3 = *(v2 + 8 * (a1 + 3203));

  return v3(v1);
}

uint64_t sub_10027AE70@<X0>(unsigned int a1@<W0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X6>, int a7@<W8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x210] = a6;
  v66 = *(a6 + 24);
  LODWORD(STACK[0x220]) = a2;
  STACK[0x200] = a2 ^ 0x9DFEFFEEFDFFF39FLL;
  v67 = (v65 ^ a1) < (((a7 ^ 0x32D8) - 2744) | 4u) - 6086;
  v68 = *(a4 + 8 * ((v67 | (4 * v67)) ^ a7 ^ 0x32D8));
  STACK[0x3D0] = v66;
  return v68(a65, ((2 * a2) & 0x1FBFFE73ELL) + (a2 ^ 0x9DFEFFEEFDFFF39FLL) + 0x6201001102000C61, a3, 0x61459D2AF01F24F7, a5, 1280, -2);
}

uint64_t sub_10027AF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4 ^ 0xB7B;
  (*(a4 + 8 * (v4 ^ 0x2B7A)))();
  v7 = STACK[0x3E8];
  *(v5 + 24) = 0;
  v8 = (*(v7 + 8 * (v6 ^ 0x2001)))(v5);
  return sub_10023EFB0(v8, v9, v10, STACK[0x3E8]);
}

uint64_t sub_10027B024()
{
  LOWORD(STACK[0x8D6]) = v2;
  LODWORD(STACK[0x2D0]) = v2;
  return (*(STACK[0x330] + 8 * (v1 - 5235)))();
}

uint64_t sub_10027B040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char *a14, int a15, unsigned int a16)
{
  a14 = &a11;
  a16 = 1317436891 * ((&a14 + 1603139409 - 2 * (&a14 & 0x5F8DF751)) ^ 0xEF8E6F27) + 8154;
  v17 = (*(v16 + 77096))(&a14);
  return (*(v16 + 8 * ((3661 * (a15 == 16257999)) ^ 0x15EAu)))(v17);
}

uint64_t sub_10027B14C()
{
  v2 = (*(v1 + 8 * (v0 + 1573)))(32, 0x103004054B5FA7DLL);
  v3 = STACK[0x330];
  STACK[0x4E0] = v2;
  return (*(v3 + 8 * ((((v0 - 1024360319) & 0x3D0E75F7 ^ 0x8DB ^ ((v0 - 698) | 0x100)) * (v2 != 0)) ^ v0)))();
}

void sub_10027B1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = v7 || a6 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10027B248@<X0>(uint64_t a1@<X8>)
{
  result = 0;
  *v1 = a1;
  return result;
}

uint64_t sub_10027B33C()
{
  LODWORD(STACK[0x79C]) = v1;
  STACK[0x638] = STACK[0x5C0];
  STACK[0x7D8] = *(STACK[0x330] + 8 * (v0 - 5007));
  LODWORD(STACK[0x310]) = v2 - 5614;
  LODWORD(STACK[0x300]) = v2 - 5021;
  LODWORD(STACK[0x2F0]) = v2 - 5055;
  LODWORD(STACK[0x2E0]) = v2 - 4572;
  LODWORD(STACK[0x2D0]) = v2 - 5037;
  return sub_10022CAA0();
}

uint64_t sub_10027B48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 - 224) = (v4 - 2140796422) ^ (914963389 * ((((v5 - 232) | 0x7F3CA9F7) - (v5 - 232) + ((v5 - 232) & 0x80C35608)) ^ 0x53C0188C));
  (*(a4 + 8 * (v4 ^ 0x249E)))(v5 - 232);
  v6 = STACK[0x3E8];
  v7 = *(STACK[0x6C0] + 8);
  STACK[0x6B8] = *(STACK[0x3E8] + 8 * v4);
  return sub_1002458CC(v6, v7);
}

void sub_10027B540()
{
  v2 = *(STACK[0x800] + 20);
  if (v2)
  {
    if (v2 == 1)
    {
      (*(v1 + 8 * (v0 ^ 0x324B)))(STACK[0x4E8], 0, 32);
      sub_10027B590(&STACK[0x508]);
    }

    else
    {
      sub_1001A33D4();
    }
  }

  else
  {
    sub_10027B5E8();
  }
}

uint64_t sub_10027B590@<X0>(uint64_t *a1@<X8>)
{
  LODWORD(STACK[0x3A0]) = 17 * (v1 ^ 0x175D);
  LODWORD(STACK[0x390]) = v1 - 718307316;
  return sub_1002624BC(a1);
}

uint64_t sub_10027B610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = STACK[0x7F8];
  STACK[0x5C0] = STACK[0x7F8];
  v7 = *(STACK[0x4D0] + 100);
  v8 = STACK[0x440];
  v9 = v4 + 2439 + (*(STACK[0x4D0] + 120) ^ 0x3BF2FDFE) + ((2 * *(STACK[0x4D0] + 120)) & 0x77E5FBFC) - 679501093;
  v10 = 236591001 * (((v4 ^ 0x18B1DEF7 ^ LODWORD(STACK[0x6DC])) - 414307369) ^ ((LODWORD(STACK[0x6DC]) ^ 0x5D502825) - 1565534245) ^ ((LODWORD(STACK[0x6DC]) ^ 0x4E24655F) - 1311008095)) + 179962559;
  v11 = 1358806181 * ((2 * ((v5 - 232) & 0x6C88B710) - (v5 - 232) + 326584558) ^ 0x2C58246D);
  *(v5 - 208) = STACK[0x4D0] + 104;
  *(v5 - 216) = v11 - 1498995465;
  *(v5 - 200) = v11 + v4 - 310;
  *(v5 - 196) = v9 ^ v11;
  *(v5 - 224) = v8;
  *(v5 - 192) = v10 ^ v11;
  *(v5 - 188) = v11 + 1334444757 * v7 + 206659825;
  *(v5 - 184) = v6;
  *(v5 - 176) = v6;
  v12 = (*(a4 + 8 * (v4 ^ 0x2F3D)))(v5 - 232);
  return (*(STACK[0x3E8] + 8 * ((340 * (*(v5 - 232) == 16257999)) ^ v4)))(v12);
}

void sub_10027B9C8()
{
  v0 = *(&off_100315F70 + ((-85 * ((dword_100330E70 - dword_100330E80) ^ 0xDF)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * ((dword_100330E70 - dword_100330E80) ^ 0xDF))] ^ 0xE9]) - 88);
  v1 = *(v0 - 4);
  v2 = *(&off_100315F70 + ((-85 * ((dword_100330E70 + v1) ^ 0xDF)) ^ byte_1002B0220[byte_1002A5CB0[(-85 * ((dword_100330E70 + v1) ^ 0xDF))] ^ 0x21]) + 72);
  v3 = (*v2 - v1) ^ &v5;
  *(v0 - 4) = (2054362027 * v3) ^ 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[1] = 1934676430 - 33731311 * (v6 ^ 0x39F6CA23);
  LODWORD(v2) = 2054362027 * ((*v2 - *(v0 - 4)) ^ 0x3EF64BDF);
  v4 = *(&off_100315F70 + ((-85 * ((dword_100330E70 - dword_100330E80) ^ 0xDF)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * ((dword_100330E70 - dword_100330E80) ^ 0xDF))] ^ 0x1F]) + 191) - 8;
  (*&v4[8 * (byte_1002B7208[(byte_1002B0328[v2 - 8] ^ 0xBF) - 8] ^ v2) + 75264])(v6);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10027BD10@<X0>(int a1@<W8>)
{
  v1 = (((*(STACK[0x6B0] + 116) ^ 0x5CC190D0) + ((2 * a1) ^ 0xA33E7F08)) ^ ((*(STACK[0x6B0] + 116) ^ 0x5689D319) - 1451873049) ^ ((*(STACK[0x6B0] + 116) ^ 0x18DDA9A) - 26073754)) + 711842995;
  v2 = (v1 ^ 0xF407BA28) & (2 * (v1 & 0xE157BCA1)) ^ v1 & 0xE157BCA1;
  v3 = ((2 * (v1 ^ 0x7605FB28)) ^ 0x2EA48F12) & (v1 ^ 0x7605FB28) ^ (2 * (v1 ^ 0x7605FB28)) & 0x97524788;
  v4 = v3 ^ 0x91524089;
  v5 = (v3 ^ 0x6000700) & (4 * v2) ^ v2;
  v6 = ((4 * v4) ^ 0x5D491E24) & v4 ^ (4 * v4) & 0x97524788;
  v7 = (v6 ^ 0x15400600) & (16 * v5) ^ v5;
  v8 = ((16 * (v6 ^ 0x82124189)) ^ 0x75247890) & (v6 ^ 0x82124189) ^ (16 * (v6 ^ 0x82124189)) & 0x97524780;
  v9 = v7 ^ 0x97524789 ^ (v8 ^ 0x15004000) & (v7 << 8);
  *(STACK[0x6B0] + 116) = v1 ^ (2 * ((v9 << 16) & 0x17520000 ^ v9 ^ ((v9 << 16) ^ 0x47890000) & (((v8 ^ 0x82520709) << 8) & 0x17520000 ^ 0x5100000 ^ (((v8 ^ 0x82520709) << 8) ^ 0x52470000) & (v8 ^ 0x82520709)))) ^ 0xCA36AAE0;
  return sub_10027BECC();
}

uint64_t sub_10027BECC()
{
  v2 = STACK[0x868];
  v3 = STACK[0x728];
  v4 = &STACK[0xA30] + STACK[0x728];
  STACK[0x700] = v4;
  v5 = v4 + 16;
  STACK[0x5F0] = (v4 + 16);
  STACK[0x7A0] = (v4 + 48);
  STACK[0x728] = v3 - 5089 + 1723 * (v0 ^ 0x2025u);
  (*(v1 + 8 * (v0 + 1370)))();
  v6 = (*(STACK[0x330] + 8 * (v0 + 1370)))(v5, 0, 32);
  v7 = STACK[0x330];
  STACK[0x3E8] = 0;
  STACK[0x7F0] = 0;
  LODWORD(STACK[0x82C]) = 197499219;
  STACK[0x430] = 0;
  LODWORD(STACK[0x828]) = 0;
  STACK[0x4B8] = v2;
  return (*(v7 + 8 * (((v2 == 0) * (((v0 - 8230) | 0x282) ^ 0x2F4)) ^ v0)))(v6);
}

uint64_t sub_10027BF9C()
{
  v2 = *STACK[0x4B0];
  STACK[0x858] = 0;
  STACK[0x540] = 0;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 ^ 0x2309) + 1748)) ^ v0)))();
}

uint64_t sub_10027C050@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56)
{
  LODWORD(STACK[0x90C]) = a1;
  v57 = (a1 ^ 0xBC59953u) + STACK[0x270];
  STACK[0x910] = v57;
  return (*(v56 + 8 * ((a56 + 6368) ^ (30 * (v57 > a19)))))();
}

uint64_t sub_10027C0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, int a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = (*(v67 + 8 * (v65 ^ 0x2004)))(LODWORD(STACK[0x80C]) ^ 0xBC59953u, 0x100004077774924);
  STACK[0x9C8] = v68;
  if (v68)
  {
    a51 = v66;
  }

  LODWORD(STACK[0x9D4]) = a51;
  return (*(a65 + 8 * (((v68 != 0) * ((v65 ^ 0x23B) - 1940)) | v65)))();
}

uint64_t sub_10027C170@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = v2 - 1;
  *(a2 + v5) = *(a1 + v5);
  return (*(v4 + 8 * (((v5 != 0) * ((42 * (v3 ^ 0x1E5D)) ^ 0x811)) ^ (v3 - 4223))))();
}

uint64_t sub_10027C1B4()
{
  STACK[0xA18] = v1;
  v3 = STACK[0x590];
  STACK[0xA20] = STACK[0x590];
  return (*(v2 + 8 * ((54 * (((v1 - v3 > (v0 ^ 0x27Bu) - 416) ^ (v0 - 1)) & 1)) ^ v0)))();
}

uint64_t sub_10027C220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, unsigned int a19, uint64_t a20, char *a21)
{
  a19 = (v21 + 997) ^ (33731311 * ((((&a18 | 0x23D9F47C) ^ 0xFFFFFFFE) - (~&a18 | 0xDC260B83)) ^ 0xE5D0C1A0));
  a20 = a16;
  a21 = &a13;
  (*(v22 + 8 * (v21 ^ 0x2DDE)))(&a18);
  a20 = a16;
  LODWORD(a21) = v21 - 2008441969 * (&a18 ^ 0x4899540E) + 3430;
  v23 = (*(v22 + 8 * (v21 + 7396)))(&a18);
  return (*(v22 + 8 * ((124 * (a18 == ((v21 + 1546) ^ 0xF81D0E))) ^ v21)))(v23);
}

uint64_t sub_10027C310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  LODWORD(STACK[0x78C]) = v4 - v5 + 26;
  v7 = (*(a4 + 8 * (v6 + 3198)))();
  v8 = STACK[0x3E8];
  STACK[0x828] = v7;
  return (*(v8 + 8 * ((29 * (((v7 == 0) ^ (-77 * (((v6 - 31) | 0x60) ^ 0x67) + 1)) & 1)) ^ v6)))();
}

uint64_t sub_10027C3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v3 ^ 0xFFFFFFFFFFFFF4B6 ^ ((v4 ^ 0xE0u) + 716)) + v2;
  *(a1 - 7 + v6) = *(a2 - 7 + v6);
  return (*(v5 + 8 * ((224 * ((v2 & 0xFFFFFFF8) - 8 != v3)) ^ v4 ^ 0xE0)))();
}

void sub_10027C408()
{
  v0 = *(&off_100315F70 + (byte_1002A5FBC[(byte_1002BF56C[(-85 * (dword_100330F90 ^ 0xDF ^ dword_100330E70)) - 12] ^ 0xB1) - 12] ^ (-85 * (dword_100330F90 ^ 0xDF ^ dword_100330E70))) + 203);
  v1 = *(v0 - 4);
  v2 = *(&off_100315F70 + (byte_1002B052C[(byte_1002A5EB4[(-85 * ((dword_100330E70 + v1) ^ 0xDF)) - 4] ^ 0xAD) - 12] ^ (-85 * ((dword_100330E70 + v1) ^ 0xDF))) + 199);
  v3 = &v5[*v2 ^ v1];
  *(v0 - 4) = (2054362027 * v3) ^ 0xB4207763EF64BDFLL;
  *v2 = 2054362027 * (v3 ^ 0xB4207763EF64BDFLL);
  v6[0] = 476323082 - 1710126949 * ((184128274 - (v6 | 0xAF99312) + (v6 | 0xF5066CED)) ^ 0xC71D377D);
  LOBYTE(v2) = -85 * ((*v2 - *(v0 - 4)) ^ 0xDF);
  v4 = *(&off_100315F70 + ((-85 * (dword_100330F90 ^ 0xDF ^ dword_100330E70)) ^ byte_1002A5FB0[byte_1002BF560[(-85 * (dword_100330F90 ^ 0xDF ^ dword_100330E70))] ^ 0x1F]) + 191) - 8;
  (*&v4[8 * (byte_1002B7208[(byte_1002B0328[v2 - 8] ^ 0x67) - 8] ^ v2) + 76624])(v6);
  __asm { BRAA            X8, X17 }
}

void sub_10027C634(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = v1;
  JUMPOUT(0x100279518);
}

uint64_t sub_10027C700()
{
  *(v2 - 228) = v1 - 33731311 * ((((v2 - 232) | 0x614E82E0) - ((v2 - 232) & 0x614E82E0)) ^ 0x58B848C3) + 1934673796;
  v5 = v0;
  v3 = (*(v0 + 8 * (v1 ^ 0x2FDD)))(v2 - 232);
  return (*(v5 + 8 * (((*(v2 - 232) == 16257999) * (v1 - 2202)) | v1)))(v3);
}

uint64_t sub_10027CE38()
{
  v2 = STACK[0x438];
  LODWORD(STACK[0x68C]) = STACK[0x7CC];
  return (*(v1 + 8 * (((v2 == 0) * ((v0 - 4184) ^ (v0 - 4211))) ^ v0)))();
}

uint64_t sub_10027CE7C()
{
  v2 = STACK[0x4A0];
  STACK[0x740] = *(v1 + 8 * v0);
  return sub_10027D44C(v2);
}

void sub_10027CF08(uint64_t a1)
{
  v1 = 2008441969 * ((a1 & 0xB41CF87E | ~(a1 | 0xB41CF87E)) ^ 0x37A538F);
  v2 = *(a1 + 28) ^ v1;
  v3 = *(a1 + 32);
  v4 = ((((*(a1 + 24) - v1) ^ 0x1151993F) - 290560319) ^ (((*(a1 + 24) - v1) ^ 0xC28C3A17) + 1030997481) ^ (((*(a1 + 24) - v1) ^ 0xEAC39360) + 356281504)) - 1539757407;
  v5 = 2008441969 * ((2 * (&v9 & 0x2FBB62E8) - &v9 - 800809705) ^ 0x98DDC919);
  v9 = v5 - 235825323 * (*(a1 + 8) ^ v1) + 118679478;
  v13 = &v8;
  v10 = v3;
  v11 = &v7;
  v12 = v4 ^ v5;
  v14 = v2 - v5 + 2761;
  v6 = *(&off_100315F70 + v2 - 5360) - 8;
  (*&v6[8 * v2 + 32560])(&v9);
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10027D16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (((*(v5 + 16) ^ 0x4E50E979) + 614863233) ^ ((*(v5 + 16) ^ 0xEE517093) - 2069395349) ^ ((*(v5 + 16) ^ 0x5FFE6615) + 889757421)) - 156278046;
  v8 = (((v6 - 5304) | 0x821) ^ 0x8BB86590) + v4 > v7;
  v9 = (v4 > 0x74479616) ^ (v7 < 0x8BB869E9);
  v10 = v8;
  if (v9)
  {
    v11 = v4 > 0x74479616;
  }

  else
  {
    v11 = v10;
  }

  return (*(a4 + 8 * (v11 | (4 * v11) | v6)))();
}

uint64_t sub_10027D240(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  v4 = (*(v3 + 8 * (v2 + 3717)))(16, 0x20040A4A59CD2) != 0;
  return (*(STACK[0x330] + 8 * ((v4 * (((v2 - 4121) | 0x18DA) ^ 0x1FED)) ^ v2)))();
}

void sub_10027D2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  v7 = v5 || a5 == 0;
  __asm { BRAA            X9, X17 }
}

uint64_t sub_10027D39C()
{
  v2 = (*(v1 + 8 * (v0 ^ 0x161u)))(32, 0x103004054B5FA7DLL);
  STACK[0x7B0] = v2;
  return (*(v1 + 8 * (((v2 != 0) * ((v0 ^ 0x3308) - 6072)) ^ v0)))();
}

uint64_t sub_10027D44C@<X0>(unint64_t a1@<X8>)
{
  STACK[0x6B0] = a1;
  LODWORD(STACK[0xA78]) = v5;
  LOWORD(STACK[0xA7E]) = v1;
  LODWORD(STACK[0xA80]) = v7;
  LODWORD(STACK[0xA84]) = v2;
  STACK[0xA88] = v4;
  STACK[0xA90] = v6;
  return (*(v8 + 8 * (((a1 == 0) * (6 * ((v3 + 1773579523) & 0x96493DB7 ^ 0xCA5) - 2597)) ^ v3)))();
}

uint64_t sub_10027D508@<X0>(int a1@<W8>)
{
  v6 = v3 - 1;
  *(v5 + v6) = *(v2 + v6) ^ 0x3C;
  return (*(v4 + 8 * (((v6 != 0) * a1) ^ v1)))();
}

uint64_t sub_10027DA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a1 + a8 - 0x7E3601B1CFF728CALL;
  v23 = __ROR8__(v22 & 0xFFFFFFFFFFFFFFF8, 8);
  v24 = v23 - ((2 * v23 + 0xD1FA1F3BF05E3C6) & 0x1522CB6B6EA8E362) - 0x1EDEC95069289C6CLL;
  v25 = __ROR8__(v24 ^ 0xBBCEBE4B0E0361EFLL, 8);
  v24 ^= 0xFB03985F214EEF5uLL;
  v26 = __ROR8__((v25 + v24) ^ v11, 8);
  v27 = *(STACK[0x3E8] + 8 * v18);
  v28 = (v25 + v24) ^ v11 ^ __ROR8__(v24, 61);
  v29 = (v26 + v28) ^ a2;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v32 = (v31 + v30 - ((2 * (v31 + v30)) & 0x92A42596A0926910) + 0x495212CB50493488) ^ 0x1E82601493ECC2DFLL;
  v33 = v32 ^ __ROR8__(v30, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v15;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v10;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0x6E1E19DDB33CB23ALL;
  *v22 = (((__ROR8__(v38, 8) + (v38 ^ __ROR8__(v37, 61))) ^ v14) >> (8 * (v22 & 7u))) ^ HIBYTE(v12) ^ 0x82;
  v39 = __ROR8__((v22 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v40 = (0x29702F06207D0E1CLL - v39) & 0x79175E2C12C0C2DDLL | (v39 + v13) & 0x84E8A1D3ED3F3D22;
  v41 = __ROR8__(v40 ^ 0x4A4885D2AB97D283, 8);
  v40 ^= 0xFE36021C57805D99;
  v42 = (v41 + v40 - ((2 * (v41 + v40)) & 0xE50EC2BE45B2CC5ELL) - 0xD789EA0DD2699D1) ^ 0x73F3511043EE721CLL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (((2 * (v44 + v43)) | 0xC127DFD94147335ELL) - (v44 + v43) - 0x6093EFECA0A399AFLL) ^ 0x284DD6A8B2F99BFBLL;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = __ROR8__(v45, 8);
  v48 = __ROR8__((((2 * (v47 + v46)) | 0x6287D6B764F85500) - (v47 + v46) - 0x3143EB5BB27C2A80) ^ 0x6693998471D9DCD7, 8);
  v49 = (((2 * (v47 + v46)) | 0x6287D6B764F85500) - (v47 + v46) - 0x3143EB5BB27C2A80) ^ 0x6693998471D9DCD7 ^ __ROR8__(v46, 61);
  v50 = (v48 + v49) ^ v15;
  v51 = v50 ^ __ROR8__(v49, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ v10;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = __ROR8__(v52, 8);
  *(v22 + 1) = (((__ROR8__((((2 * (v54 + v53)) | 0x360AC320C760007CLL) - (v54 + v53) + 0x64FA9E6F9C4FFFC2) ^ 0xF51B784DD08CB204, 8) + ((((2 * (v54 + v53)) | 0x360AC320C760007CLL) - (v54 + v53) + 0x64FA9E6F9C4FFFC2) ^ 0xF51B784DD08CB204 ^ __ROR8__(v53, 61))) ^ v14) >> (8 * ((v22 + 1) & 7))) ^ BYTE2(v12) ^ 0xD1;
  v55 = __ROR8__((v22 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v56 = -2 - (((0x29702F06207D0E1CLL - v55) | 0xC0963AD6F9C849DALL) + ((v55 + v13) | 0x3F69C5290637B625));
  v57 = v56 ^ 0xF1C9E128409F5984;
  v56 ^= 0x45B766E6BC88D69EuLL;
  v58 = (__ROR8__(v57, 8) + v56) ^ v11;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ a2;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (((2 * (v62 + v61)) & 0x3491A382ECB7AD6) - (v62 + v61) - 0x1A48D1C1765BD6CLL) ^ 0xA98B003C2B3FB4C3;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = __ROR8__(v63, 8);
  v66 = (((2 * (v65 + v64)) | 0xBC926A3ADA0D4D3ALL) - (v65 + v64) - 0x5E49351D6D06A69DLL) ^ 0xAC2B377BB2DE781FLL;
  v67 = v66 ^ __ROR8__(v64, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (((2 * (v68 + v67)) & 0xC0B992F3FD58C89ALL) - (v68 + v67) - 0x605CC979FEAC644ELL) ^ 0x261DC64B870EBA4FLL;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (((2 * (v71 + v70)) | 0x526500C12C79ADD0) - (v71 + v70) - 0x29328060963CD6E8) ^ 0x472C99BD250064D2;
  v73 = v72 ^ __ROR8__(v70, 61);
  v74 = __ROR8__(v72, 8);
  *(v22 + 2) = (((((2 * (v74 + v73)) & 0x243286079BD1E962) - (v74 + v73) + 0x6DE6BCFC32170B4ELL) ^ 0x58D4716CCF4C1D6CuLL) >> (8 * ((v22 + 2) & 7))) ^ BYTE1(v12) ^ 0x17;
  v75 = __ROR8__((v22 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v76 = v75 - ((2 * v75 - 0x52E05E0C40FA1C3ALL) & 0xDABB7CACD8D286FCLL) + 0x43ED8F504BEC3561;
  v77 = v76 ^ 0xDC0265A8D53E5320;
  v76 ^= 0x687CE2662929DC3AuLL;
  v78 = __ROR8__(v77, 8);
  v79 = (((2 * (v78 + v76)) | 0xC1B61E594159C0E2) - (v78 + v76) - 0x60DB0F2CA0ACE071) ^ 0xE1AF3F63C19BF442;
  v80 = v79 ^ __ROR8__(v76, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ a2;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ 0x57D072DFC3A5F657;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8);
  v86 = ((v16 & (2 * (v85 + v84))) - (v85 + v84) + v17) ^ v19;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ v10;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ 0x6E1E19DDB33CB23ALL;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = __ROR8__(v90, 8);
  *(v22 + 3) = v12 ^ v9 ^ (((v92 + v91 - (v20 & (2 * (v92 + v91))) + v21) ^ v8) >> (8 * ((v22 + 3) & 7)));
  return v27();
}

uint64_t sub_10027E134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, unsigned int a13)
{
  a13 = (956911519 * (&a12 ^ 0xEA917005)) ^ 0xA98301D7;
  v14 = (*(v13 + 77112))(&a12);
  return (*(v13 + 8 * ((46 * (a12 == 538291946)) ^ 0xFCFu)))(v14);
}

uint64_t sub_10027E514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, unsigned int a16, uint64_t a17, char *a18, unsigned int a19, unsigned int a20)
{
  v23 = ((((&a15 | 0x116EE940) ^ 0xFFFFFFFE) - (~&a15 | 0xEE9116BF)) ^ 0xB6F8C5DD) * v21;
  a19 = 1032869496 - v23;
  a20 = v23 + v22 + 1674577821;
  a16 = v23 + 1723283275;
  a17 = a13;
  a18 = &a10;
  v24 = (*(v20 + 8 * (v22 + 8315)))(&a15);
  return (*(v20 + 8 * (v22 | (16 * (a15 != ((v22 - 1998583382) & 0x771FF9DB) + ((v22 + 915) | 0x346) + 16252758)))))(v24);
}

void sub_10027E5E8(uint64_t a1)
{
  v1 = *(a1 + 4) - 956911519 * ((2 * (a1 & 0x98084BF6) - a1 + 1744286729) ^ 0x8D66C40C);
  v4 = 552;
  v6 = 25885 * (((&v5 ^ 0xF2B3 | 0x38E2) - (&v5 ^ 0xF2B3 | 0xC71D) - 14563) ^ 0xE602) + 12303;
  v5 = &v3;
  v7 = v1 + 869295389 * (((&v5 ^ 0x2818F2B3 | 0xF05438E2) - (&v5 ^ 0x2818F2B3 | 0xFABC71D) + 262915869) ^ 0x6918E602) - 8515;
  v2 = *(&off_100315F70 + (v1 ^ 0x2419)) - 8;
  (*&v2[8 * (v1 ^ 0xEA)])(&v5);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_10027E80C@<X0>(uint64_t a1@<X8>)
{
  v5 = _byteswap_ulong(*(((2 * (v1 + 6)) & 0x3D9FF3FBFFF61F5ELL) + ((v1 + 6) ^ 0x5ECFF9FDFFFB0FAFLL) + a1 - 0x5ECFF9FDFFFB0FAFLL));
  v6 = ((v5 + 197499219 - 2 * (v5 & 0xBC5995F ^ *(((2 * (v1 + 6)) & 0x3D9FF3FBFFF61F5ELL) + ((v1 + 6) ^ 0x5ECFF9FDFFFB0FAFLL) + a1 - 0x5ECFF9FDFFFB0FACLL) & 0xC)) ^ 0xBC59953) + v1 + 10 > v2;
  return (*(v4 + 8 * (((16 * v6) | (v6 << 6)) ^ v3)))();
}

uint64_t sub_10027E8E8@<X0>(uint64_t a1@<X8>)
{
  *v3 = v2;
  *(v2 + 8) = *(a1 + 8);
  *(a1 + 8) = v2;
  return sub_1002055A4();
}

uint64_t sub_10027E920@<X0>(unint64_t *a1@<X8>)
{
  v3 = *a1;
  STACK[0x830] = *a1;
  return (*(v2 + 8 * (((v3 == 0) * (((v1 - 1796128875) & 0x6B0EB961) - 269)) | v1)))();
}

uint64_t sub_10027E9E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = LOWORD(STACK[0x8CC]);
  if (v8 == 17168)
  {
    goto LABEL_4;
  }

  if (v8 == 33980)
  {
    v10 = STACK[0x7E8];
    STACK[0x3F0] = v4;
    LODWORD(STACK[0x7F4]) = a3;
    return (*(a4 + 8 * (((v10 + v5 != 0) * (v7 - 5206)) ^ (v7 - 498))))();
  }

  v9 = v7;
  if (v8 == 20706)
  {
LABEL_4:
    STACK[0x3F0] = v4;
    v6 = 16215638;
    v9 = v7;
  }

  *STACK[0x820] = 0;
  LODWORD(STACK[0x7F4]) = 197499219;
  return (*(a4 + 8 * (((((v9 - 4741) ^ 0x1585) + ((v9 - 4741) | 0x400) - 6632) * (v6 == 16257999)) ^ (v9 - 2471))))();
}

uint64_t sub_10027F48C()
{
  STACK[0x958] = v1;
  v3 = STACK[0x700];
  STACK[0x960] = STACK[0x700];
  return (*(v2 + 8 * (((v1 - v3 > ((v0 ^ 0x2A34u) - 5682) - 2625) * (v0 ^ 0xE47)) ^ v0 ^ 0x2A34)))();
}

uint64_t sub_10027F4F8()
{
  STACK[0x948] = v1;
  v3 = STACK[0x6D8];
  STACK[0x950] = STACK[0x6D8];
  return (*(v2 + 8 * (((v1 - v3 > (v0 + 3885) - 5613) * (((v0 - 1444) | 0x48) ^ 0x14B6)) ^ v0)))();
}

uint64_t sub_10027F5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v3 - 1;
  *(a1 + v6) = *(a2 + v6);
  return (*(v5 + 8 * ((121 * (v6 == (v4 - v2 - 2) - 3483)) ^ (v4 + 1267638684))))();
}

uint64_t sub_10027F680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v18 = ((((v17 - 120) | 0xE2C930A7DEE3331BLL) - ((v17 - 120) | 0x1D36CF58211CCCE4) + 0x1D36CF58211CCCE4) ^ 0xB1DB013CBD4A7563) * v16;
  v19 = v18 + v15 + *v10 - (v13 & (2 * *v10));
  *(v17 - 120) = &a10;
  *(v17 - 112) = v19;
  *(v17 - 104) = v14 - v18 + v12;
  v20 = (*(v11 + 8 * (v12 ^ 0x2A12)))(v17 - 120);
  return (*(v11 + 8 * ((8156 * (*(v17 - 100) == 16257999)) ^ v12)))(v20);
}

uint64_t sub_10027F738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = (*(v66 + 8 * (v65 + 6970)))();
  v68 = STACK[0x614];
  STACK[0x640] = (v65 - 1740) + STACK[0x640] - 974;
  return (*(a64 + 8 * ((12675 * (v68 == v64)) ^ (v65 + 1805))))(v67);
}

void sub_10027F790(uint64_t a1)
{
  v1 = *a1 - 1710126949 * ((a1 & 0x515F7A29 | ~(a1 | 0x515F7A29)) ^ 0x9CBBDE46);
  v2 = *(a1 + 8);
  v3 = *(&off_100315F70 + (v1 ^ 0x2327)) - 8;
  (*&v3[8 * (v1 ^ 0x799)])(*(&off_100315F70 + (v1 ^ 0x22B3)), sub_10016625C);
  __asm { BRAA            X10, X17 }
}

uint64_t sub_10027F9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = STACK[0x3E4];
  v5 = (*(a4 + 8 * (LODWORD(STACK[0x3E4]) ^ 0x31C7)))(16, 0x20040A4A59CD2);
  return (*(STACK[0x3E8] + 8 * ((121 * ((v4 ^ (v5 == 0)) & 1)) ^ (v4 - 1333))))();
}

uint64_t sub_10027FA34()
{
  v2 = (*(v1 + 8 * (v0 + 4047)))(32, 0x103004054B5FA7DLL);
  v3 = STACK[0x330];
  STACK[0x470] = v2;
  return (*(v3 + 8 * ((49 * (((v2 == 0) ^ (v0 + 36)) & 1)) ^ v0)))();
}

uint64_t sub_10027FA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51)
{
  HIDWORD(a20) = v53;
  v54 = (*(v52 + 8 * (v51 + 6120)))(&a51, 0);
  (*(v52 + 8 * (v51 + 6063)))(v54);
  v55 = (*(v52 + 8 * (v51 ^ 0x2873)))();
  HIDWORD(a38) = a39 ^ a15;
  return sub_10027FB7C(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42);
}

uint64_t sub_10027FB7C()
{
  v7 = *(v0 + 4 * (v1 - 1));
  *(v0 + 4 * v1) = (*(v5 + 4 * v4) ^ 0x2DDD12DF) + v4 + ((1664525 * (v7 ^ (v7 >> 30))) ^ *(v0 + 4 * v1));
  v8 = 1710126949 * ((~((v6 - 168) | 0x3FCECA77471D3365) + ((v6 - 168) & 0x3FCECA77471D3365)) ^ 0xA83751518AF9970ALL);
  v9 = v6 - 224;
  *(v9 + 88) = v8 ^ 0x26F;
  *(v9 + 72) = v1 + 1 - v8;
  *(v6 - 160) = v3 - 937004365 - v8 + 13;
  *(v6 - 156) = ((v3 - 937004365) ^ 0x3B9) - v8;
  *(v6 - 168) = (v3 - 937004365) ^ v8;
  *(v6 - 164) = v8;
  *(v6 - 144) = (v3 + 1324639579) ^ v8;
  v10 = (*(v2 + 8 * (v3 + 210)))(v6 - 168);
  return (*(v2 + 8 * *(v6 - 140)))(v10);
}

uint64_t sub_10027FC7C@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = ((a2 + v4 + 2188) ^ 0xFFFFFFFFFFFFF744) + v3;
  *(a1 + v6) = *(v2 + v6);
  return (*(v5 + 8 * ((940 * (v6 == 0)) ^ (a2 + v4 + 3501))))();
}

uint64_t sub_10027FCB8(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  STACK[0xA08] = v1 ^ 0xBC59953u;
  *(a1 + 16) = (((v1 ^ 0x1F3CD3FB) - 524080123) ^ ((v1 ^ 0x9DE3C384) + 1646017660) ^ ((v1 ^ 0x891A89B9 ^ ((v2 ^ 0x3FFE) - 2739) ^ 0x1563) + 1994749652)) + 197499229;
  v5 = (*(v3 + 8 * ((v2 ^ 0x3FFE) + 1273)))();
  v6 = STACK[0x330];
  *(a1 + 24) = v5;
  return (*(v6 + 8 * ((19 * (v5 == 0)) ^ v2 ^ 0x3FFE)))();
}

uint64_t sub_10027FDD8()
{
  v3 = ((2 * v1) & 0x3FFDBBDBBB7B3C8ELL) + (v1 ^ 0x1FFEDDEDDDBD9E47) + v0;
  v4 = (*(v3 - 0x1FFEDDEDDDBD9E47) << 56) | (*(v3 + (((v2 - 5278) | 0x965u) ^ 0xE00122122242685FLL)) << 48) | (*(v3 - 0x1FFEDDEDDDBD9E45) << 40) | (*(v3 - 0x1FFEDDEDDDBD9E44) << 32) | (*(v3 - 0x1FFEDDEDDDBD9E43) << 24) | (*(v3 - 0x1FFEDDEDDDBD9E42) << 16) | (*(v3 - 0x1FFEDDEDDDBD9E41) << 8) | *(v3 - 0x1FFEDDEDDDBD9E40);
  STACK[0x7D0] = v4 + 0x431A33AA2E6D965FLL - ((2 * v4) & 0x863467545CDB2CBELL);
  return sub_10027FEA4();
}

uint64_t sub_10027FF0C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *v1 = a1;
  return (*(v3 + 8 * (((STACK[0x858] == 0) * (2 * (v2 - 2536) - 11190)) ^ v2)))();
}

uint64_t sub_10027FFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, char *a12, int a13, unsigned int a14)
{
  a14 = 1317436891 * ((2 * (&a12 & 0x30F538A0) - &a12 + 1326106462) ^ 0xFF095F28) + 8154;
  a12 = &a11;
  v17 = (*(v14 + 77096))(&a12);
  return (*(v14 + 8 * (((a13 == v16) * ((v15 - 1655664906) ^ 0x9D509B8E)) ^ v15)))(v17);
}

void sub_100281D40(uint64_t a1)
{
  v1 = *(a1 + 16) + 33731311 * ((-2 - ((a1 | 0x9E6A01AA) + (~a1 | 0x6195FE55))) ^ 0x58633476);
  __asm { BRAA            X10, X17 }
}

void sub_100281E78()
{
  v0 = *(&off_100315F70 + ((-85 * ((dword_100330E70 - dword_100330FD8) ^ 0xDF)) ^ byte_1002B7300[byte_1002B0420[(-85 * ((dword_100330E70 - dword_100330FD8) ^ 0xDF))] ^ 0x2A]) + 163);
  v1 = *(&off_100315F70 + ((-85 * (*v0 ^ dword_100330E70 ^ 0xDF)) ^ byte_1002B0220[byte_1002A5CB0[(-85 * (*v0 ^ dword_100330E70 ^ 0xDF))] ^ 0xEE]) + 85);
  v2 = &v4[*v1 - *v0];
  *v0 = 2054362027 * v2 + 0x1FC86B74B1533AF5;
  *v1 = 2054362027 * (v2 ^ 0xB4207763EF64BDFLL);
  v5[0] = 476323082 - 1710126949 * ((v5 + 686639723 - 2 * (v5 & 0x28ED4A6B)) ^ 0x1AF611FB);
  LOBYTE(v1) = -85 * (*v0 ^ 0xDF ^ *v1);
  v3 = *(&off_100315F70 + ((-85 * ((dword_100330E70 + dword_100330FD8) ^ 0xDF)) ^ byte_1002B7200[byte_1002B0320[(-85 * ((dword_100330E70 + dword_100330FD8) ^ 0xDF))] ^ 1]) + 92) - 8;
  (*&v3[8 * (byte_1002A5FBC[(byte_1002BF56C[v1 - 12] ^ 0xE9) - 12] ^ v1) + 75936])(v5);
  __asm { BRAA            X8, X17 }
}

void sub_1002820D0(_DWORD *a1)
{
  v1 = *a1 - 1824088897 * ((-2 - ((~a1 | 0x839EE099) + (a1 | 0x7C611F66))) ^ 0xDBF733FB);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1002821B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = STACK[0x5F0];
  STACK[0x5D0] = *(a4 + 8 * v4);
  return sub_100261B54(a4, v5);
}

uint64_t sub_1002821E8@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  v6 = ((a2 + v4 + 3584) ^ 0xFFFFFFFFFFFFF1D0) + v3;
  v7 = *(v2 + v6 - 15);
  v8 = *(v2 + v6 - 31);
  v9 = a1 + v6;
  *(v9 - 15) = v7;
  *(v9 - 31) = v8;
  return (*(v5 + 8 * ((5420 * ((v3 & 0xFFFFFFE0) == 32)) ^ (a2 + v4 + 1520))))();
}

uint64_t sub_100282290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v68 - 220) = v66 + (((~(v68 - 232) & 0x3A0B8DA8) - (~(v68 - 232) | 0x3A0B8DA9)) ^ 0x62625ECB) * v65 + 1624351959;
  *(v68 - 232) = v64;
  v70 = (*(v69 + 8 * (v66 ^ 0x2C42)))(v68 - 232);
  return (*(a64 + 8 * (((*(v67 + 32) == (v66 - 444) - 2190) * (v66 ^ 0x991)) ^ (v66 + 2495))))(v70);
}

uint64_t sub_100282410@<X0>(unsigned int a1@<W8>)
{
  v4 = (((*(v1 + 16) ^ 0x95109AD8) + 1894256436) ^ ((*(v1 + 16) ^ 0xAA36D061) + 1338918283) ^ ((*(v1 + 16) ^ 0xC0D9B546) + 622928046)) - 1967799525;
  v5 = (a1 > 0x5B42D2CF) ^ (v4 < 0xA4BD2D30);
  v6 = a1 - 1531111122 + ((v2 - 1178890415) & 0x46447556) > v4;
  if (v5)
  {
    v6 = a1 > 0x5B42D2CF;
  }

  return (*(v3 + 8 * ((61 * !v6) ^ v2)))();
}

void sub_1002825B8(uint64_t a1)
{
  v1 = *(a1 + 56) + 1710126949 * ((2 * (a1 & 0xABF44594) - a1 + 1410054763) ^ 0x6610E1FB);
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v4 = 914963389 * ((1049250315 - (v8 | 0x3E8A4A0B) + (v8 | 0xC175B5F4)) ^ 0xED89048F);
  v5 = *(a1 + 36) + 1710126949 * ((2 * (a1 & 0xABF44594) - a1 + 1410054763) ^ 0x6610E1FB) - v4;
  v6 = -1048309713 * (*(a1 + 8) ^ (1710126949 * ((2 * (a1 & 0xABF44594) - a1 + 1410054763) ^ 0x6610E1FB)));
  v14 = *(a1 + 24);
  v12 = v3;
  v9 = v2;
  v10 = v3;
  v13 = (v6 + 925357747) ^ v4;
  v11 = v5 + 997465963;
  v8[0] = v1 - v4 + 1631356711;
  v7 = *(&off_100315F70 + v1 - 3097) - 8;
  (*&v7[8 * (v1 ^ 0x2880)])(v8);
  __asm { BRAA            X8, X17 }
}

uint64_t sub_100282750()
{
  v4 = *(v0 + 40 * v1 + 28);
  switch(v4)
  {
    case 1:
      v7 = STACK[0x6C8];
      STACK[0x5F8] = *(v3 + 8 * (v2 - 2143));
      return sub_10027D4B8(v7);
    case 3:
      v6 = *(v0 + 40 * v1 + 16);
      return (*(v3 + 8 * ((250 * (((43 * (v2 ^ 0xA77u) + 0x1A3AF77BE7AB60B8) ^ v6) + ((2 * v6) & 0x3475EEF7CF56D5EELL) != 0x1A3AF77BE7AB6AF7)) ^ (v2 - 254))))();
    case 2:
      return (*(v3 + 8 * (((STACK[0x6C8] != 0) * (((v2 - 673267795) & 0x282137BD) - 435)) ^ (v2 + 3587))))();
    default:
      return (STACK[0x800])();
  }
}

uint64_t sub_10028294C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 1117 * (LODWORD(STACK[0x3E4]) ^ 0x1466);
  v5 = STACK[0x86C];
  STACK[0x4E8] = STACK[0x4E8] - 5269 + ((v4 + 1869) | 1u);
  return (*(a4 + 8 * ((6267 * (v5 == ((v4 - 1219358489) & 0x48ADFFFB) + 16250325)) ^ v4)))();
}

uint64_t sub_100282A54@<X0>(uint64_t a1@<X8>)
{
  v6 = 1710126949 * ((v4 - 232) ^ 0x321B5B90);
  *(v4 - 204) = 101 * ((v4 + 24) ^ 0x90) + 22;
  *(v4 - 208) = v6 + 636535337 + (((v3 ^ 0x2F414975) - 792807797) ^ ((v3 ^ 0x5CA05111) - 1554010385) ^ (((((((8 * v1) ^ 0x10528) + 1917888382) & 0x8DAF5FFE) + 2015652673) ^ v3) - 2015658295));
  *(v4 - 200) = v6 + v1 - 3720;
  *(v4 - 224) = a1;
  *(v4 - 216) = &STACK[0x550];
  v7 = (*(v5 + 8 * (v1 + 1095)))(v4 - 232);
  return (*(STACK[0x330] + 8 * ((26 * (*(v4 - 232) != v2)) ^ v1)))(v7);
}

void sub_100282BB4(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  *(v1 + 8) = a1;
  LODWORD(STACK[0x65C]) = v2;
  JUMPOUT(0x10015F96CLL);
}

uint64_t sub_100282C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W8>)
{
  STACK[0x3F0] = v3;
  STACK[0x500] = *(v4 + 8 * a3);
  return sub_1002431DC(a1, a2);
}

void sub_100282D60(uint64_t a1)
{
  v1 = *(a1 + 4) - 2048652491 * ((2 * (a1 & 0x54A06222) - a1 + 727686621) ^ 0x9AEE0AD8);
  v3[1] = v1 - 33731311 * (((v3 | 0xEFE0B918) - (v3 & 0xEFE0B918)) ^ 0xD616733B) + 1934669966;
  v2 = *(&off_100315F70 + v1 - 6185) - 8;
  (*&v2[8 * (v1 ^ 0x3CD7)])(v3);
  __asm { BRAA            X8, X17 }
}

void sub_100282E98()
{
  STACK[0x310] = STACK[0x4E0] + 24;
  v0 = LOWORD(STACK[0x9BE]);
  LODWORD(STACK[0x2C0]) = v0;
  LODWORD(STACK[0x2B0]) = v0 ^ 0xFFFFA60A;
  v1 = STACK[0x9C0];
  LODWORD(STACK[0x2D0]) = 197499223;
  LODWORD(STACK[0x220]) = LODWORD(STACK[0x9C4]) ^ 0xD6A561FA;
  STACK[0x300] = STACK[0x820] + 24;
  v2 = LOWORD(STACK[0x9F6]);
  LODWORD(STACK[0x2A0]) = v2;
  LODWORD(STACK[0x290]) = v2 ^ 0x4CF9;
  v3 = STACK[0x9F8];
  LODWORD(STACK[0x210]) = LODWORD(STACK[0x9FC]) ^ 0xD6A561FA;
  STACK[0x2F0] = STACK[0x6F0] + 24;
  STACK[0x2E0] = STACK[0x470] + 24;
  LODWORD(STACK[0x240]) = v1;
  LODWORD(STACK[0x280]) = v1 ^ 0xD6A561FA;
  LODWORD(STACK[0x230]) = v3;
  LODWORD(STACK[0x270]) = v3 ^ 0xD6A561FA;
  LODWORD(STACK[0x260]) = LODWORD(STACK[0x51C]) ^ 0xD6A561FA;
  LODWORD(STACK[0x250]) = LODWORD(STACK[0x8F4]) - ((2 * LODWORD(STACK[0x8F4])) & 0xBAC1F152) - 580847447;
  JUMPOUT(0x1000F394CLL);
}

void sub_100283060()
{
  LODWORD(STACK[0x5D4]) = v1;
  STACK[0x688] = STACK[0x350];
  STACK[0x7D8] = *(v2 + 8 * (v0 - 5025));
  JUMPOUT(0x100283088);
}

uint64_t sub_100283104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, int a20, unsigned int a21)
{
  a21 = 1317436891 * (((&a19 ^ 0x402030 | 0xF610124F) + (&a19 ^ 0x50101201 | 0x9EFEDB0)) ^ 0xE053AA46) + 8154;
  a19 = &a12;
  v23 = (*(v21 + 77096))(&a19);
  return (*(v21 + 8 * ((13233 * (a20 == ((v22 + 1199) ^ 0xBB1))) ^ 0x1102u)))(v23);
}

_BYTE *sub_100283230(_BYTE *result, unsigned int a2, unint64_t a3)
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

uint64_t sub_1002833AC(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100336860 == -1)
  {
    if (qword_100336868)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10028590C();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100336868)
    {
      return _availability_version_check();
    }
  }

  if (qword_100336858 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100285924();
    a3 = v10;
    a4 = v9;
    v8 = dword_100336848 < v11;
    if (dword_100336848 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10033684C > a3)
      {
        return 1;
      }

      if (dword_10033684C >= a3)
      {
        return dword_100336850 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100336848 < a2;
  if (dword_100336848 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_100283540(uint64_t result)
{
  v1 = qword_100336868;
  if (qword_100336868)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100336868 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100336848, &dword_10033684C, &dword_100336850);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_100283888(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to subscribe to AVSystemController notifications: %@", &v2, 0xCu);
}

double sub_100283900(float *a1, int a2, os_log_t log)
{
  v3 = *a1;
  v5 = 134218240;
  v6 = v3;
  v7 = 1024;
  v8 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to retrieve valid volume delta (%f) with result: %d, using fallback", &v5, 0x12u);
  return result;
}

void sub_100283990(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = 138412546;
  v8 = v6;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Could not start system app server for %@: %@", &v7, 0x16u);
}

void sub_100283A9C(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to disable ClarityBoard: %@", &v2, 0xCu);
}

void sub_100283B14(NSObject *a1)
{
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v5[0] = 67109378;
  v5[1] = v2;
  v6 = 2080;
  v7 = v4;
  _os_log_error_impl(&_mh_execute_header, a1, OS_LOG_TYPE_ERROR, "Failed to set temporary directory for ClarityBoard (%d): %s", v5, 0x12u);
}

void sub_100283D3C(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  sub_1000088A0();
  sub_1000088AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100283DE4(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 32) identifier];
  sub_1000088A0();
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Failed to launch process for %@.", v4, 0xCu);
}

void sub_100283E7C(void *a1)
{
  v1 = [a1 identifier];
  sub_1000088A0();
  sub_1000088AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100283F08(uint64_t a1)
{
  v1 = [*(a1 + 32) bundleIdentifier];
  sub_1000088A0();
  sub_1000088AC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_10028417C()
{
  sub_1000088A0();
  v3 = 2112;
  v4 = v0;
  _os_log_fault_impl(&_mh_execute_header, v1, OS_LOG_TYPE_FAULT, "failed to set audio session category (%@) due to: %@", v2, 0x16u);
}

void sub_100284200()
{
  sub_1000088A0();
  sub_100014FD4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100284270()
{
  sub_1000088A0();
  sub_100014FD4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002842E0()
{
  sub_1000088A0();
  sub_100014FD4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100284350()
{
  sub_100014FE0();
  sub_100014FD4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002843A0()
{
  sub_1000088A0();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Could not load: %{public}@ %{public}@", v2, 0x16u);
}

void sub_100284424()
{
  sub_1000088A0();
  sub_100014FEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100284494()
{
  sub_100014FE0();
  sub_100014FD4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002844D0(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  sub_1000088A0();
  sub_100014FF8();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0x16u);
}

void sub_10028457C()
{
  sub_1000088A0();
  sub_100014FEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1002845EC(uint64_t a1)
{
  v1 = [*(a1 + 32) identifier];
  sub_1000088A0();
  sub_100014FF8();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_100284698()
{
  sub_1000088A0();
  sub_100014FEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100284708(void *a1)
{
  [a1 count];
  sub_1000088A0();
  sub_100014FF8();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0xCu);
}

void sub_10028478C()
{
  sub_100014FE0();
  sub_100014FD4();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002847C8(void *a1, uint64_t a2)
{
  [a1 timeIntervalSinceDate:a2];
  sub_100014FF8();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_100284864()
{
  sub_100014FE0();
  sub_100014FEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002848A0()
{
  sub_100014FE0();
  sub_100014FEC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1002848F0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unable to find application for scene: %@", &v2, 0xCu);
}

void sub_100284968(uint64_t a1, NSObject *a2)
{
  v3 = [*(a1 + 40) bundleIdentifier];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unexpected scene transition context type for app: %@", &v4, 0xCu);
}

void sub_100284A48(void *a1, NSObject *a2)
{
  v3 = [a1 soundPath];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to create file URL for sound path: '%@'", &v4, 0xCu);
}

void sub_100284AE0(os_log_t log)
{
  v1 = 138412290;
  v2 = @"com.apple.SBUserNotification";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to lookup the bootstrap port for %@", &v1, 0xCu);
}

void sub_100284BD0(void *a1, uint64_t a2, NSObject *a3)
{
  [a1 pid];
  v5 = BSProcessDescriptionForPID();
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Authorization failure: %{public}@: %{public}@", &v6, 0x16u);
}

void sub_100284C84(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to get current silent mode state: %@", &v2, 0xCu);
}

void sub_100285074(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Failed to get record for app bundle identifier: %@", &v4, 0xCu);
}

void sub_10028510C()
{
  sub_10001FE90();
  v3 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "Error getting application record for app with identifier %@: %@", v2, 0x16u);
}

void sub_100285188(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, ">>> Unable to look up record for application with bundle identifier %@, but no error was provided.", &v2, 0xCu);
}

void sub_100285200(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 bundleIdentifier];
  sub_10001FE90();
  v7 = a2;
  _os_log_fault_impl(&_mh_execute_header, a3, OS_LOG_TYPE_FAULT, "Invalid badge value was set for %@: %@", v6, 0x16u);
}

void sub_1002852A4(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 bundleIdentifier];
  sub_10001FE90();
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Invalid badge for %@: %@", v6, 0x16u);
}

void sub_1002853B4(unint64_t a1, NSObject *a2)
{
  v3 = sub_100027FC0(a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "We expect an exclusion rect for %@, but don't have one", &v4, 0xCu);
}

void sub_100285460(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unhandled location alert: %@", &v2, 0xCu);
}

void sub_1002857D4(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Unexpectedly had multiple running application processes for %@", &v2, 0xCu);
}

void sub_100285890(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Unable to terminate %@.", &v3, 0xCu);
}

NSURLRequest __swiftcall URLRequest._bridgeToObjectiveC()()
{
  v0 = URLRequest._bridgeToObjectiveC()();
  result._internal = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}