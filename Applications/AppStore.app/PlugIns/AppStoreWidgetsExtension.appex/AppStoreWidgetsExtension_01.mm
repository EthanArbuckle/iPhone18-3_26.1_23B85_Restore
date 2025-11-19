uint64_t sub_10001C4D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v9 = sub_10004C1B0();
  sub_10001C8FC(a1, &v50, a3, a4, a5);
  v30 = *&v51[48];
  v31 = *&v51[64];
  v32 = *&v51[80];
  v33 = v51[96];
  v26 = v50;
  v27 = *v51;
  v28 = *&v51[16];
  v29 = *&v51[32];
  v34[0] = v50;
  v34[1] = *v51;
  v34[2] = *&v51[16];
  v34[3] = *&v51[32];
  v34[4] = *&v51[48];
  v34[5] = *&v51[64];
  v34[6] = *&v51[80];
  v35 = v51[96];
  sub_100003E3C(&v26, &v48, &qword_100065870, &qword_10004F070);
  sub_100003EA4(v34, &qword_100065870, &qword_10004F070);
  *&v25[71] = v30;
  *&v25[87] = v31;
  *&v25[103] = v32;
  *&v25[7] = v26;
  *&v25[23] = v27;
  *&v25[39] = v28;
  v25[119] = v33;
  *&v25[55] = v29;
  v10 = sub_10004C1B0();
  LOBYTE(v13[0]) = 1;
  sub_10001CAD8(a1, &v50, a3, a4, a5);
  v41 = *&v51[64];
  v42 = *&v51[80];
  v43 = *&v51[96];
  v36 = v50;
  v37 = *v51;
  v38 = *&v51[16];
  v39 = *&v51[32];
  v40 = *&v51[48];
  v44[0] = v50;
  v44[1] = *v51;
  v44[2] = *&v51[16];
  v44[3] = *&v51[32];
  v44[4] = *&v51[48];
  v44[5] = *&v51[64];
  v44[6] = *&v51[80];
  v45 = *&v51[96];
  sub_100003E3C(&v36, &v48, &qword_100065878, &qword_10004F078);
  sub_100003EA4(v44, &qword_100065878, &qword_10004F078);
  *(&v24[4] + 7) = v40;
  *(&v24[5] + 7) = v41;
  *(&v24[6] + 7) = v42;
  *(&v24[7] + 7) = v43;
  *(v24 + 7) = v36;
  *(&v24[1] + 7) = v37;
  *(&v24[2] + 7) = v38;
  *(&v24[3] + 7) = v39;
  v46 = v9;
  v47[0] = 1;
  *&v47[1] = *v25;
  *&v47[17] = *&v25[16];
  *&v47[33] = *&v25[32];
  *&v47[113] = *&v25[112];
  *&v47[97] = *&v25[96];
  *&v47[81] = *&v25[80];
  *&v47[65] = *&v25[64];
  *&v47[49] = *&v25[48];
  __src[6] = *&v47[80];
  __src[7] = *&v47[96];
  *(&__src[7] + 9) = *&v47[105];
  __src[2] = *&v47[16];
  __src[3] = *&v47[32];
  __src[4] = *&v47[48];
  __src[5] = *&v47[64];
  __src[0] = v9;
  __src[1] = *v47;
  v48 = v10;
  v49[0] = 1;
  *&v49[1] = v24[0];
  *&v49[17] = v24[1];
  *&v49[81] = v24[5];
  *&v49[65] = v24[4];
  *&v49[97] = v24[6];
  *&v49[112] = *(&v24[6] + 15);
  *&v49[33] = v24[2];
  *&v49[49] = v24[3];
  __src[11] = *&v49[16];
  __src[12] = *&v49[32];
  __src[9] = v10;
  __src[10] = *v49;
  __src[16] = *&v49[96];
  __src[17] = *(&v24[6] + 15);
  __src[14] = *&v49[64];
  __src[15] = *&v49[80];
  __src[13] = *&v49[48];
  memcpy(a2, __src, 0x120uLL);
  *&v51[65] = v24[4];
  *&v51[81] = v24[5];
  *&v51[97] = v24[6];
  *&v51[112] = *(&v24[6] + 15);
  *&v51[1] = v24[0];
  *&v51[17] = v24[1];
  *&v51[33] = v24[2];
  v50 = v10;
  v51[0] = 1;
  *&v51[49] = v24[3];
  sub_100003E3C(&v46, v13, &qword_100065880, &qword_10004F080);
  sub_100003E3C(&v48, v13, &qword_100065888, &qword_10004F088);
  sub_100003EA4(&v50, &qword_100065888, &qword_10004F088);
  v19 = *&v25[64];
  v20 = *&v25[80];
  v21 = *&v25[96];
  v15 = *v25;
  v16 = *&v25[16];
  v17 = *&v25[32];
  v13[0] = v9;
  v13[1] = 0;
  v14 = 1;
  v22 = *&v25[112];
  v18 = *&v25[48];
  return sub_100003EA4(v13, &qword_100065880, &qword_10004F080);
}

uint64_t sub_10001C8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = sub_10004C280();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;

  sub_10004C720();
  sub_10004BF90();
  v23 = 1;
  v22 = 0;
  *&v21[39] = v26;
  *&v21[23] = v25;
  *&v21[7] = v24;
  v27[0] = v10;
  v27[1] = 0;
  LOBYTE(v28) = 1;
  *(&v28 + 1) = sub_10001F98C;
  *&v29 = v11;
  *(&v29 + 1) = a4 * 0.34;
  v30[0] = 0;
  *&v30[48] = *(&v26 + 1);
  v12 = *&v21[32];
  *&v30[33] = *&v21[32];
  v13 = *&v21[16];
  *&v30[17] = *&v21[16];
  v14 = *v21;
  *&v30[1] = *v21;
  v15 = v28;
  v16 = v29;
  *a2 = v10;
  *(a2 + 16) = v15;
  v17 = *&v30[32];
  *(a2 + 64) = *&v30[16];
  *(a2 + 80) = v17;
  v18 = *v30;
  *(a2 + 32) = v16;
  *(a2 + 48) = v18;
  v20[104] = 0;
  *(a2 + 96) = *&v30[48];
  *(a2 + 104) = a4 * 0.34;
  *(a2 + 112) = 0;
  v31[0] = v10;
  v31[1] = 0;
  v32 = 1;
  v33 = sub_10001F98C;
  v34 = v11;
  v35 = a4 * 0.34;
  v36 = 0;
  *&v39[15] = *&v21[47];
  *v39 = v12;
  v38 = v13;
  v37 = v14;
  sub_100003E3C(v27, v20, &qword_1000658A0, &qword_10004F0A0);
  return sub_100003EA4(v31, &qword_1000658A0, &qword_10004F0A0);
}

uint64_t sub_10001CAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = a4 * 0.34;
  v11 = sub_10004C280();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;

  sub_10004C720();
  sub_10004BF90();
  v28 = 1;
  v27 = 0;
  v23 = 0;
  v29 = v11;
  LOBYTE(v30) = 1;
  *(&v30 + 1) = v10;
  LOBYTE(v31) = 0;
  *(&v31 + 1) = sub_10001F988;
  *v32 = v12;
  v14 = v24;
  v13 = v25;
  *&v32[24] = v25;
  *&v32[8] = v24;
  v15 = v26;
  *&v32[40] = v26;
  *&v22[39] = v31;
  *&v22[23] = v30;
  *&v22[7] = v11;
  *&v22[103] = *(&v26 + 1);
  *&v22[87] = *&v32[32];
  *&v22[71] = *&v32[16];
  *&v22[55] = *v32;
  v16 = *&v22[48];
  *(a2 + 41) = *&v22[32];
  v17 = *v22;
  *(a2 + 25) = *&v22[16];
  *(a2 + 9) = v17;
  *(a2 + 104) = *&v22[95];
  v18 = *&v22[64];
  *(a2 + 89) = *&v22[80];
  *(a2 + 73) = v18;
  v19 = v23;
  *a2 = v10;
  *(a2 + 8) = v19;
  *(a2 + 57) = v16;
  v33[0] = v11;
  v33[1] = 0;
  v34 = 1;
  v35 = v10;
  v36 = 0;
  v37 = sub_10001F988;
  v38 = v12;
  v40 = v13;
  v41 = v15;
  v39 = v14;
  sub_100003E3C(&v29, &v21, &qword_100065890, &qword_10004F090);
  return sub_100003EA4(v33, &qword_100065890, &qword_10004F090);
}

uint64_t sub_10001CCB4@<X0>(uint64_t a1@<X0>, void *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v16 = sub_10004C1B0();
  LOBYTE(v41[0]) = 1;
  sub_10001D3A8(a1, &v68, a3, a4, a5);
  v25 = *&v69[48];
  v26 = *&v69[64];
  v27 = *&v69[80];
  v28 = v69[96];
  v21 = v68;
  v22 = *v69;
  v23 = *&v69[16];
  v24 = *&v69[32];
  v29[0] = v68;
  v29[1] = *v69;
  v29[2] = *&v69[16];
  v29[3] = *&v69[32];
  v29[4] = *&v69[48];
  v29[5] = *&v69[64];
  v29[6] = *&v69[80];
  v30 = v69[96];
  sub_100003E3C(&v21, &v55, &qword_100065870, &qword_10004F070);
  sub_100003EA4(v29, &qword_100065870, &qword_10004F070);
  *&v20[71] = v25;
  *&v20[87] = v26;
  *&v20[103] = v27;
  *&v20[7] = v21;
  *&v20[23] = v22;
  *&v20[39] = v23;
  v20[119] = v28;
  *&v20[55] = v24;
  v9 = v41[0];
  v14 = v41[0];
  v10 = sub_10004C1B0();
  LOBYTE(v59[0]) = 1;
  sub_10001D6E0(a1, &v68, a3, a4, a5);
  v37 = *&v69[80];
  v38 = *&v69[96];
  v39 = *&v69[112];
  v33 = *&v69[16];
  v34 = *&v69[32];
  v35 = *&v69[48];
  v36 = *&v69[64];
  v31 = v68;
  v32 = *v69;
  v41[6] = *&v69[80];
  v41[7] = *&v69[96];
  v41[8] = *&v69[112];
  v41[2] = *&v69[16];
  v41[3] = *&v69[32];
  v41[4] = *&v69[48];
  v41[5] = *&v69[64];
  v40 = v69[128];
  v42 = v69[128];
  v41[0] = v68;
  v41[1] = *v69;
  sub_100003E3C(&v31, &v55, &qword_1000658A8, &qword_10004F0A8);
  sub_100003EA4(v41, &qword_1000658A8, &qword_10004F0A8);
  *&v19[103] = v37;
  *&v19[119] = v38;
  *&v19[135] = v39;
  *&v19[39] = v33;
  *&v19[55] = v34;
  *&v19[71] = v35;
  *&v19[87] = v36;
  *&v19[7] = v31;
  v19[151] = v40;
  *&v19[23] = v32;
  v11 = v59[0];
  v12 = sub_10004C1B0();
  LOBYTE(v59[0]) = 1;
  sub_10001DB14(a1, &v68, a3, a4, a5);
  v47 = *&v69[48];
  v48 = *&v69[64];
  v49 = *&v69[80];
  v50 = *&v69[96];
  v43 = v68;
  v44 = *v69;
  v45 = *&v69[16];
  v46 = *&v69[32];
  v51[0] = v68;
  v51[1] = *v69;
  v51[2] = *&v69[16];
  v51[3] = *&v69[32];
  v51[4] = *&v69[48];
  v51[5] = *&v69[64];
  v51[6] = *&v69[80];
  v52 = *&v69[96];
  sub_100003E3C(&v43, &v55, &qword_100065878, &qword_10004F078);
  sub_100003EA4(v51, &qword_100065878, &qword_10004F078);
  *&v18[71] = v47;
  *&v18[87] = v48;
  *&v18[103] = v49;
  *&v18[119] = v50;
  *&v18[7] = v43;
  *&v18[23] = v44;
  *&v18[39] = v45;
  *&v18[55] = v46;
  LOBYTE(a1) = v59[0];
  v53 = v16;
  v54[0] = v9;
  *&v54[1] = *v20;
  *&v54[17] = *&v20[16];
  *&v54[33] = *&v20[32];
  *&v54[113] = *&v20[112];
  *&v54[97] = *&v20[96];
  *&v54[81] = *&v20[80];
  *&v54[65] = *&v20[64];
  *&v54[49] = *&v20[48];
  __src[6] = *&v54[80];
  __src[7] = *&v54[96];
  *(&__src[7] + 9) = *&v54[105];
  __src[2] = *&v54[16];
  __src[3] = *&v54[32];
  __src[4] = *&v54[48];
  __src[5] = *&v54[64];
  __src[0] = v16;
  __src[1] = *v54;
  v55 = v10;
  v56[0] = v11;
  *&v56[49] = *&v19[48];
  *&v56[33] = *&v19[32];
  *&v56[97] = *&v19[96];
  *&v56[113] = *&v19[112];
  *&v56[129] = *&v19[128];
  *&v56[145] = *&v19[144];
  *&v56[65] = *&v19[64];
  *&v56[81] = *&v19[80];
  *&v56[1] = *v19;
  *&v56[17] = *&v19[16];
  *(&__src[18] + 9) = *&v56[137];
  __src[17] = *&v56[112];
  __src[18] = *&v56[128];
  __src[13] = *&v56[48];
  __src[14] = *&v56[64];
  __src[15] = *&v56[80];
  __src[16] = *&v56[96];
  __src[9] = v10;
  __src[10] = *v56;
  __src[11] = *&v56[16];
  __src[12] = *&v56[32];
  v57 = v12;
  v58[0] = v59[0];
  *&v58[1] = *v18;
  *&v58[17] = *&v18[16];
  *&v58[81] = *&v18[80];
  *&v58[65] = *&v18[64];
  *&v58[97] = *&v18[96];
  *&v58[112] = *&v18[111];
  *&v58[33] = *&v18[32];
  *&v58[49] = *&v18[48];
  __src[26] = *&v58[80];
  __src[27] = *&v58[96];
  __src[28] = *&v18[111];
  __src[22] = *&v58[16];
  __src[23] = *&v58[32];
  __src[24] = *&v58[48];
  __src[25] = *&v58[64];
  __src[20] = v12;
  __src[21] = *v58;
  memcpy(a2, __src, 0x1D0uLL);
  v65 = *&v18[64];
  v66 = *&v18[80];
  *v67 = *&v18[96];
  *&v67[15] = *&v18[111];
  v61 = *v18;
  v62 = *&v18[16];
  v63 = *&v18[32];
  v59[0] = v12;
  v59[1] = 0;
  v60 = a1;
  v64 = *&v18[48];
  sub_100003E3C(&v53, &v68, &qword_100065880, &qword_10004F080);
  sub_100003E3C(&v55, &v68, &qword_1000658B0, &qword_10004F0B0);
  sub_100003E3C(&v57, &v68, &qword_100065888, &qword_10004F088);
  sub_100003EA4(v59, &qword_100065888, &qword_10004F088);
  *&v69[97] = *&v19[96];
  *&v69[113] = *&v19[112];
  v70 = *&v19[128];
  *&v69[33] = *&v19[32];
  *&v69[49] = *&v19[48];
  *&v69[65] = *&v19[64];
  *&v69[81] = *&v19[80];
  *&v69[1] = *v19;
  v68 = v10;
  v69[0] = v11;
  v71 = *&v19[144];
  *&v69[17] = *&v19[16];
  sub_100003EA4(&v68, &qword_1000658B0, &qword_10004F0B0);
  v72[0] = v16;
  v72[1] = 0;
  v73 = v14;
  v78 = *&v20[64];
  v79 = *&v20[80];
  v80 = *&v20[96];
  v81 = *&v20[112];
  v74 = *v20;
  v75 = *&v20[16];
  v76 = *&v20[32];
  v77 = *&v20[48];
  return sub_100003EA4(v72, &qword_100065880, &qword_10004F080);
}

uint64_t sub_10001D3A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = sub_10004C280();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a3;
  *(v11 + 32) = a4;
  *(v11 + 40) = a5;

  sub_10004C720();
  sub_10004BF90();
  v23 = 1;
  v22 = 0;
  *&v21[39] = v26;
  *&v21[23] = v25;
  *&v21[7] = v24;
  v27[0] = v10;
  v27[1] = 0;
  LOBYTE(v28) = 1;
  *(&v28 + 1) = sub_10001F770;
  *&v29 = v11;
  *(&v29 + 1) = a4 * 0.5;
  v30[0] = 0;
  *&v30[48] = *(&v26 + 1);
  v12 = *&v21[32];
  *&v30[33] = *&v21[32];
  v13 = *&v21[16];
  *&v30[17] = *&v21[16];
  v14 = *v21;
  *&v30[1] = *v21;
  v15 = v28;
  v16 = v29;
  *a2 = v10;
  *(a2 + 16) = v15;
  v17 = *&v30[32];
  *(a2 + 64) = *&v30[16];
  *(a2 + 80) = v17;
  v18 = *v30;
  *(a2 + 32) = v16;
  *(a2 + 48) = v18;
  v20[104] = 0;
  *(a2 + 96) = *&v30[48];
  *(a2 + 104) = a4 * 0.5;
  *(a2 + 112) = 0;
  v31[0] = v10;
  v31[1] = 0;
  v32 = 1;
  v33 = sub_10001F770;
  v34 = v11;
  v35 = a4 * 0.5;
  v36 = 0;
  *&v39[15] = *&v21[47];
  *v39 = v12;
  v38 = v13;
  v37 = v14;
  sub_100003E3C(v27, v20, &qword_1000658A0, &qword_10004F0A0);
  return sub_100003EA4(v31, &qword_1000658A0, &qword_10004F0A0);
}

uint64_t sub_10001D580@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_10004BFA0();
  result = sub_10001AEFC(a1);
  if (a1[2])
  {
    v5 = *(type metadata accessor for AppIcon(0) - 8);
    sub_10001F810(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), a2, type metadata accessor for AppIcon);
    sub_10001AEFC(a1);
    sub_10001AEFC(a1);
    sub_10004C720();
    sub_10004BF90();
    v6 = (a2 + *(sub_100003650(&qword_100064888, &qword_10004DB10) + 36));
    *v6 = v8;
    v6[1] = v9;
    v6[2] = v10;
    result = sub_100003650(&qword_100065780, &qword_10004EFE8);
    v7 = a2 + *(result + 36);
    *v7 = 0x3FF0000000000000;
    *(v7 + 8) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001D6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = a4 * 0.5 * 0.5;
  v11 = sub_10004C280();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;

  v27 = 1;
  v26 = 0;
  v25 = 0;
  sub_10004C720();
  sub_10004BF90();
  *(&v23[4] + 7) = v24;
  *(&v23[2] + 7) = *&v23[9];
  *(v23 + 7) = *&v23[7];
  v22 = 0;
  v28[0] = v11;
  v28[1] = 0;
  LOBYTE(v29) = 1;
  *(&v29 + 1) = v10;
  LOBYTE(v30) = 0;
  *(&v30 + 1) = sub_10001F74C;
  *&v31 = v12;
  *(&v31 + 1) = v10;
  v32[0] = 0;
  *&v32[48] = *(&v24 + 1);
  *&v32[33] = *&v23[4];
  *&v32[17] = *&v23[2];
  *&v32[1] = *v23;
  *&v21[55] = v31;
  *&v21[39] = v30;
  *&v21[23] = v29;
  *&v21[7] = v11;
  *&v21[119] = *&v32[48];
  *&v21[103] = *&v32[32];
  *&v21[87] = *&v32[16];
  *&v21[71] = *v32;
  v20[120] = 0;
  *a2 = v10;
  *(a2 + 8) = 0;
  v13 = *v21;
  v14 = *&v21[16];
  v15 = *&v21[32];
  *(a2 + 57) = *&v21[48];
  *(a2 + 41) = v15;
  *(a2 + 25) = v14;
  *(a2 + 9) = v13;
  v16 = *&v21[64];
  v17 = *&v21[80];
  v18 = *&v21[96];
  *(a2 + 120) = *&v21[111];
  *(a2 + 105) = v18;
  *(a2 + 89) = v17;
  *(a2 + 73) = v16;
  *(a2 + 136) = v10;
  *(a2 + 144) = 0;
  v33[0] = v11;
  v33[1] = 0;
  v34 = 1;
  v35 = v10;
  v36 = 0;
  v37 = sub_10001F74C;
  v38 = v12;
  v39 = v10;
  v40 = 0;
  *&v43[15] = *(&v23[5] + 7);
  *v43 = *&v23[4];
  v42 = *&v23[2];
  v41 = *v23;
  sub_100003E3C(v28, v20, &qword_1000658B8, &qword_10004F0B8);
  return sub_100003EA4(v33, &qword_1000658B8, &qword_10004F0B8);
}

uint64_t sub_10001D93C@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_10004BFA0();
  result = sub_10001AEFC(a1);
  if (a1[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v5 = *(type metadata accessor for AppIcon(0) - 8);
    sub_10001F810(a1 + *(v5 + 72) + ((*(v5 + 80) + 32) & ~*(v5 + 80)), a2, type metadata accessor for AppIcon);
    sub_10001AEFC(a1);
    sub_10001AEFC(a1);
    sub_10004C720();
    sub_10004BF90();
    v6 = (a2 + *(sub_100003650(&qword_100064888, &qword_10004DB10) + 36));
    *v6 = v10;
    v6[1] = v11;
    v6[2] = v12;
    v7 = a2 + *(sub_100003650(&qword_100065780, &qword_10004EFE8) + 36);
    *v7 = 0x3FF0000000000000;
    *(v7 + 8) = 0;
    sub_10004C5C0();
    v8 = sub_10004C5F0();

    result = sub_100003650(&qword_100065898, &qword_10004F098);
    v9 = a2 + *(result + 36);
    *v9 = v8;
    *(v9 + 8) = xmmword_10004EF00;
    *(v9 + 24) = 0xBFF0000000000000;
  }

  return result;
}

uint64_t sub_10001DB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>)
{
  v10 = a4 * 0.5;
  v11 = sub_10004C280();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;

  sub_10004C720();
  sub_10004BF90();
  v28 = 1;
  v27 = 0;
  v23 = 0;
  v29 = v11;
  LOBYTE(v30) = 1;
  *(&v30 + 1) = v10;
  LOBYTE(v31) = 0;
  *(&v31 + 1) = sub_10001F73C;
  *v32 = v12;
  v14 = v24;
  v13 = v25;
  *&v32[24] = v25;
  *&v32[8] = v24;
  v15 = v26;
  *&v32[40] = v26;
  *&v22[39] = v31;
  *&v22[23] = v30;
  *&v22[7] = v11;
  *&v22[103] = *(&v26 + 1);
  *&v22[87] = *&v32[32];
  *&v22[71] = *&v32[16];
  *&v22[55] = *v32;
  v16 = *&v22[48];
  *(a2 + 41) = *&v22[32];
  v17 = *v22;
  *(a2 + 25) = *&v22[16];
  *(a2 + 9) = v17;
  *(a2 + 104) = *&v22[95];
  v18 = *&v22[64];
  *(a2 + 89) = *&v22[80];
  *(a2 + 73) = v18;
  v19 = v23;
  *a2 = v10;
  *(a2 + 8) = v19;
  *(a2 + 57) = v16;
  v33[0] = v11;
  v33[1] = 0;
  v34 = 1;
  v35 = v10;
  v36 = 0;
  v37 = sub_10001F73C;
  v38 = v12;
  v40 = v13;
  v41 = v15;
  v39 = v14;
  sub_100003E3C(&v29, &v21, &qword_100065890, &qword_10004F090);
  return sub_100003EA4(v33, &qword_100065890, &qword_10004F090);
}

uint64_t sub_10001DCEC@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_10004BFA0();
  result = sub_10001AEFC(a1);
  if (a1[2] < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v5 = *(type metadata accessor for AppIcon(0) - 8);
    sub_10001F810(a1 + 2 * *(v5 + 72) + ((*(v5 + 80) + 32) & ~*(v5 + 80)), a2, type metadata accessor for AppIcon);
    sub_10001AEFC(a1);
    sub_10001AEFC(a1);
    sub_10004C720();
    sub_10004BF90();
    v6 = (a2 + *(sub_100003650(&qword_100064888, &qword_10004DB10) + 36));
    *v6 = v10;
    v6[1] = v11;
    v6[2] = v12;
    v7 = a2 + *(sub_100003650(&qword_100065780, &qword_10004EFE8) + 36);
    *v7 = 0x3FF0000000000000;
    *(v7 + 8) = 0;
    sub_10004C5C0();
    v8 = sub_10004C5F0();

    result = sub_100003650(&qword_100065898, &qword_10004F098);
    v9 = a2 + *(result + 36);
    *v9 = v8;
    *(v9 + 8) = xmmword_10004EF00;
    *(v9 + 24) = 0xBFF0000000000000;
  }

  return result;
}

uint64_t sub_10001DEC4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003650(&qword_100064888, &qword_10004DB10);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v7 = __chkstk_darwin(v6);
  v8 = __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v10 = __chkstk_darwin(&v45 - v9);
  v12 = &v45 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v45 - v14;
  v16 = __chkstk_darwin(v13);
  v53 = &v45 - v17;
  result = __chkstk_darwin(v16);
  v23 = &v45 - v22;
  v24 = a1[2];
  if (!v24)
  {
    __break(1u);
    goto LABEL_7;
  }

  v47 = a2;
  v48 = result;
  v49 = v21;
  v50 = v20;
  v51 = v19;
  v25 = *(type metadata accessor for AppIcon(0) - 8);
  v26 = a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  sub_10001F810(v26, v23, type metadata accessor for AppIcon);
  sub_10001AEFC(a1);
  sub_10001AEFC(a1);
  sub_10004C720();
  result = sub_10004BF90();
  v27 = &v23[*(v4 + 36)];
  v28 = v55;
  *v27 = v54;
  *(v27 + 1) = v28;
  *(v27 + 2) = v56;
  if (v24 == 1)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v52 = v23;
  v29 = *(v25 + 72);
  v30 = v53;
  sub_10001F810(v26 + v29, v53, type metadata accessor for AppIcon);
  sub_10001AEFC(a1);
  sub_10001AEFC(a1);
  sub_10004C720();
  result = sub_10004BF90();
  v31 = (v30 + *(v4 + 36));
  v32 = v58;
  *v31 = v57;
  v31[1] = v32;
  v31[2] = v59;
  if (v24 < 3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v33 = v15;
  sub_10001F810(v26 + 2 * v29, v15, type metadata accessor for AppIcon);
  sub_10001AEFC(a1);
  sub_10001AEFC(a1);
  sub_10004C720();
  result = sub_10004BF90();
  v34 = &v15[*(v4 + 36)];
  v35 = v61;
  *v34 = v60;
  *(v34 + 1) = v35;
  *(v34 + 2) = v62;
  if (v24 != 3)
  {
    sub_10001F810(v26 + 3 * v29, v12, type metadata accessor for AppIcon);
    sub_10001AEFC(a1);
    sub_10001AEFC(a1);
    sub_10004C720();
    sub_10004BF90();
    v36 = &v12[*(v4 + 36)];
    v37 = v64;
    *v36 = v63;
    *(v36 + 1) = v37;
    *(v36 + 2) = v65;
    v38 = v48;
    sub_100003E3C(v52, v48, &qword_100064888, &qword_10004DB10);
    v39 = v53;
    v40 = v49;
    sub_100003E3C(v53, v49, &qword_100064888, &qword_10004DB10);
    v41 = v50;
    sub_100003E3C(v33, v50, &qword_100064888, &qword_10004DB10);
    v42 = v51;
    sub_100003E3C(v12, v51, &qword_100064888, &qword_10004DB10);
    v46 = v33;
    v43 = v47;
    sub_100003E3C(v38, v47, &qword_100064888, &qword_10004DB10);
    v44 = sub_100003650(&qword_1000658C0, &unk_10004F0C0);
    sub_100003E3C(v40, v43 + v44[12], &qword_100064888, &qword_10004DB10);
    sub_100003E3C(v41, v43 + v44[16], &qword_100064888, &qword_10004DB10);
    sub_100003E3C(v42, v43 + v44[20], &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v12, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v46, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v39, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v52, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v42, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v41, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v40, &qword_100064888, &qword_10004DB10);
    return sub_100003EA4(v38, &qword_100064888, &qword_10004DB10);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10001E4D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v120 = type metadata accessor for DynamicTypeFont();
  v4 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v6 = (&v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100003650(&qword_100065250, &unk_10004E730);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v119 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v117 = &v109 - v11;
  v12 = sub_10004C200();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = type metadata accessor for AppIcon(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v116 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_100003650(&qword_1000658C8, &qword_10004F0D0);
  v18 = *(*(v118 - 8) + 64);
  v19 = __chkstk_darwin(v118);
  v21 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v109 - v22;
  v24 = sub_100003650(&qword_100064888, &qword_10004DB10);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24);
  v27 = __chkstk_darwin(v26);
  v28 = __chkstk_darwin(v27);
  __chkstk_darwin(v28);
  v30 = __chkstk_darwin(&v109 - v29);
  v32 = &v109 - v31;
  result = __chkstk_darwin(v30);
  v38 = a1[2];
  if (!v38)
  {
    __break(1u);
    goto LABEL_6;
  }

  v121 = result;
  v122 = v23;
  v111 = v37;
  v112 = v36;
  v113 = v35;
  v114 = v21;
  v115 = a2;
  v39 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v123 = &v109 - v34;
  sub_10001F810(v39, &v109 - v34, type metadata accessor for AppIcon);
  sub_10001AEFC(a1);
  sub_10001AEFC(a1);
  sub_10004C720();
  result = sub_10004BF90();
  v40 = (v123 + *(v24 + 36));
  v41 = v126;
  *v40 = v125;
  v40[1] = v41;
  v40[2] = v127;
  if (v38 == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v42 = *(v15 + 72);
  sub_10001F810(v39 + v42, v32, type metadata accessor for AppIcon);
  sub_10001AEFC(a1);
  sub_10001AEFC(a1);
  sub_10004C720();
  result = sub_10004BF90();
  v43 = &v32[*(v24 + 36)];
  v44 = v129;
  *v43 = v128;
  *(v43 + 1) = v44;
  *(v43 + 2) = v130;
  v45 = v38 - 3;
  if (v38 >= 3)
  {
    v46 = v39 + 2 * v42;
    v47 = v121;
    v110 = v32;
    v109 = v45;
    sub_10001F810(v46, v121, type metadata accessor for AppIcon);
    sub_10001AEFC(a1);
    sub_10001AEFC(a1);
    sub_10004C720();
    sub_10004BF90();
    v48 = (v47 + *(v24 + 36));
    v49 = v132;
    *v48 = v131;
    v48[1] = v49;
    v48[2] = v133;
    sub_10001AEFC(a1);
    v51 = v50;
    v53 = v52;
    v54 = v116;
    sub_10001F810(v46, v116, type metadata accessor for AppIcon);
    v55 = type metadata accessor for AppIconConfiguration(0);
    LOBYTE(v47) = *(v54 + v55[7]);
    sub_10001F878(v54, type metadata accessor for AppIconConfiguration);
    v56 = v122;
    v57 = &v122[v55[9]];
    sub_10004CB40();
    sub_10004BB60();
    *(v56 + v55[5]) = 0;
    v58 = v56 + v55[6];
    *v58 = v51;
    *(v58 + 8) = v53;
    *(v58 + 16) = 0;
    *(v56 + v55[7]) = v47;
    *(v56 + v55[8]) = 1;
    sub_10001AEFC(a1);
    sub_10001AEFC(a1);
    sub_10004C720();
    sub_10004BF90();
    v59 = (v56 + *(v24 + 36));
    v60 = v135;
    *v59 = v134;
    v59[1] = v60;
    v59[2] = v136;
    sub_10004C1F0();
    v137._countAndFlagsBits = 0x2073756C70;
    v137._object = 0xE500000000000000;
    sub_10004C1E0(v137);
    v124 = v109;
    sub_10004C1C0();
    v138._countAndFlagsBits = 0;
    v138._object = 0xE000000000000000;
    sub_10004C1E0(v138);
    sub_10004C220();
    v61 = sub_10004C500();
    v63 = v62;
    v65 = v64;
    sub_10004C420();
    v109 = sub_10004C4C0();
    v67 = v66;
    v69 = v68;
    v116 = v70;
    sub_10001AC44(v61, v63, v65 & 1);

    v71 = sub_10004C470();
    v72 = enum case for ContentSizeCategory.large(_:);
    v73 = sub_10004C270();
    v74 = *(v73 - 8);
    v75 = v117;
    (*(v74 + 104))(v117, v72, v73);
    v76 = *(v74 + 56);
    v76(v75, 0, 1, v73);
    v77 = v119;
    sub_10001F794(v75, v119);
    *v6 = swift_getKeyPath();
    sub_100003650(&qword_100065078, &qword_10004E9D0);
    swift_storeEnumTagMultiPayload();
    v78 = v120;
    v79 = *(v120 + 20);
    *(v6 + v79) = swift_getKeyPath();
    sub_100003650(&qword_100065080, &qword_10004E3B0);
    swift_storeEnumTagMultiPayload();
    v80 = *(v78 + 28);
    v76(v6 + v80, 1, 1, v73);
    *(v6 + *(v78 + 24)) = v71;
    sub_100015C48(v77, v6 + v80);
    v81 = v122;
    v82 = &v122[*(v118 + 36)];
    v83 = sub_100003650(&qword_100065258, &qword_100050430);
    sub_10001F810(v6, &v82[*(v83 + 36)], type metadata accessor for DynamicTypeFont);
    *v82 = v109;
    *(v82 + 1) = v67;
    v82[16] = v69 & 1;
    *(v82 + 3) = v116;
    sub_10001F878(v6, type metadata accessor for DynamicTypeFont);
    *&v82[*(sub_100003650(&qword_1000658D0, &qword_10004F140) + 36)] = 256;
    KeyPath = swift_getKeyPath();
    v85 = &v82[*(sub_100003650(&qword_1000658D8, &qword_10004F178) + 36)];
    *v85 = KeyPath;
    *(v85 + 1) = 1;
    v85[16] = 0;
    v86 = swift_getKeyPath();
    v87 = &v82[*(sub_100003650(&qword_1000658E0, &qword_10004F1B0) + 36)];
    *v87 = v86;
    v87[1] = 0xC000000000000000;
    v88 = swift_getKeyPath();
    v89 = &v82[*(sub_100003650(&qword_1000658E8, &qword_10004F1E8) + 36)];
    *v89 = v88;
    v89[8] = 1;
    v90 = sub_10004C600();
    v91 = swift_getKeyPath();
    v92 = &v82[*(sub_100003650(&qword_1000658F0, &qword_10004F220) + 36)];
    *v92 = v91;
    v92[1] = v90;
    v93 = *(sub_100003650(&qword_1000658F8, &qword_10004F228) + 36);
    v94 = enum case for BlendMode.plusLighter(_:);
    v95 = sub_10004C740();
    (*(*(v95 - 8) + 104))(&v82[v93], v94, v95);
    v96 = sub_10004C720();
    v98 = v97;
    v99 = &v82[*(sub_100003650(&qword_100065900, &qword_10004F230) + 36)];
    *v99 = v96;
    v99[1] = v98;
    v100 = v111;
    sub_100003E3C(v123, v111, &qword_100064888, &qword_10004DB10);
    v101 = v110;
    v102 = v112;
    sub_100003E3C(v110, v112, &qword_100064888, &qword_10004DB10);
    v103 = v121;
    v104 = v113;
    sub_100003E3C(v121, v113, &qword_100064888, &qword_10004DB10);
    v105 = v81;
    v106 = v114;
    sub_100003E3C(v105, v114, &qword_1000658C8, &qword_10004F0D0);
    v107 = v115;
    sub_100003E3C(v100, v115, &qword_100064888, &qword_10004DB10);
    v108 = sub_100003650(&qword_100065908, &qword_10004F238);
    sub_100003E3C(v102, v107 + v108[12], &qword_100064888, &qword_10004DB10);
    sub_100003E3C(v104, v107 + v108[16], &qword_100064888, &qword_10004DB10);
    sub_100003E3C(v106, v107 + v108[20], &qword_1000658C8, &qword_10004F0D0);
    sub_100003EA4(v122, &qword_1000658C8, &qword_10004F0D0);
    sub_100003EA4(v103, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v101, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v123, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v106, &qword_1000658C8, &qword_10004F0D0);
    sub_100003EA4(v104, &qword_100064888, &qword_10004DB10);
    sub_100003EA4(v102, &qword_100064888, &qword_10004DB10);
    return sub_100003EA4(v100, &qword_100064888, &qword_10004DB10);
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_10001F1C8()
{
  result = qword_1000657D0;
  if (!qword_1000657D0)
  {
    sub_100003698(&qword_100065778, &qword_10004EFE0);
    sub_100003D30(&qword_1000657D8, &qword_1000657E0, &qword_10004F028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000657D0);
  }

  return result;
}

unint64_t sub_10001F280()
{
  result = qword_1000657E8;
  if (!qword_1000657E8)
  {
    sub_100003698(&qword_100065760, &qword_10004EFC8);
    sub_100003D30(&qword_1000657F0, &qword_1000657F8, &unk_10004F030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000657E8);
  }

  return result;
}

unint64_t sub_10001F338()
{
  result = qword_100065800;
  if (!qword_100065800)
  {
    sub_100003698(&qword_1000657A8, &qword_10004F010);
    sub_10001F3C4();
    sub_10001F554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065800);
  }

  return result;
}

unint64_t sub_10001F3C4()
{
  result = qword_100065808;
  if (!qword_100065808)
  {
    sub_100003698(&qword_1000657A0, &qword_10004F008);
    sub_10001F480(&qword_100064808, type metadata accessor for AppIcon);
    sub_10001F4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065808);
  }

  return result;
}

uint64_t sub_10001F480(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001F4C8()
{
  result = qword_100065810;
  if (!qword_100065810)
  {
    sub_100003698(&qword_100065780, &qword_10004EFE8);
    sub_10000F85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065810);
  }

  return result;
}

unint64_t sub_10001F554()
{
  result = qword_100065818;
  if (!qword_100065818)
  {
    sub_100003698(&qword_100065820, &qword_10004F040);
    sub_100003D30(&qword_100065828, &qword_100065830, &qword_10004F048);
    sub_100003D30(&qword_100065838, &qword_100065840, &qword_10004F050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065818);
  }

  return result;
}

unint64_t sub_10001F634()
{
  result = qword_100065848;
  if (!qword_100065848)
  {
    sub_100003698(&qword_100065770, &qword_10004EFD8);
    sub_10001F1C8();
    sub_10001F280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065848);
  }

  return result;
}

uint64_t sub_10001F704()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001F73C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  return sub_10001DCEC(*(v1 + 16), a1);
}

uint64_t sub_10001F74C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  return sub_10001D93C(*(v1 + 16), a1);
}

uint64_t sub_10001F770@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  return sub_10001D580(*(v1 + 16), a1);
}

uint64_t sub_10001F794(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065250, &unk_10004E730);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001F810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001F878(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10001F8FC()
{
  result = qword_100065910;
  if (!qword_100065910)
  {
    sub_100003698(&qword_100065918, qword_10004F240);
    sub_10001F338();
    sub_10001F634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065910);
  }

  return result;
}

uint64_t sub_10001F9A4()
{
  v0 = type metadata accessor for SingleLineTextObserver.State();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_10004BEA0();
  return v3;
}

uint64_t sub_10001FA1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CardDetailView.Heading(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100003650(&qword_100064F98, qword_10004E520);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10001FB60(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for CardDetailView.Heading(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100003650(&qword_100064F98, qword_10004E520);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for IconFallbackTodayCardView()
{
  result = qword_100065978;
  if (!qword_100065978)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001FCDC()
{
  sub_10001FF34(319, &qword_100065988, type metadata accessor for AppIcon, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10001FF34(319, &qword_100065990, sub_1000129C0, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CardDetailView.Heading(319);
      if (v2 <= 0x3F)
      {
        sub_10001FE50();
        if (v3 <= 0x3F)
        {
          sub_10001FEA0();
          if (v4 <= 0x3F)
          {
            sub_10001FF34(319, &qword_100065010, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10001FE50()
{
  if (!qword_100065998)
  {
    v0 = sub_10004CEB0();
    if (!v1)
    {
      atomic_store(v0, &qword_100065998);
    }
  }
}

void sub_10001FEA0()
{
  if (!qword_1000659A0)
  {
    type metadata accessor for SingleLineTextObserver.State();
    sub_10002175C(&qword_1000659A8, type metadata accessor for SingleLineTextObserver.State);
    v0 = sub_10004BF30();
    if (!v1)
    {
      atomic_store(v0, &qword_1000659A0);
    }
  }
}

void sub_10001FF34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10001FFB4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004C190();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003650(&qword_100065078, &qword_10004E9D0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for IconFallbackTodayCardView();
  sub_100003E3C(v1 + *(v12 + 40), v11, &qword_100065078, &qword_10004E9D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10004CB70();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10004CDD0();
    v16 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_1000201BC@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for IconFallbackTodayCardView();
  v4 = v3[6];
  v5 = (v1 + v3[8]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  type metadata accessor for SingleLineTextObserver.State();
  sub_10002175C(&qword_1000659A8, type metadata accessor for SingleLineTextObserver.State);
  v9 = sub_10004BF20();
  v10 = (v1 + v3[7]);
  v12 = *v10;
  v11 = v10[1];
  v13 = (v1 + v3[9]);
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v13 + 16);
  v17 = sub_10004BF20();
  v18 = type metadata accessor for CardDetailView(0);
  sub_100021A14(v1 + v4, a1 + v18[8], type metadata accessor for CardDetailView.Heading);
  *a1 = swift_getKeyPath();
  sub_100003650(&qword_100065078, &qword_10004E9D0);
  swift_storeEnumTagMultiPayload();
  *(a1 + v18[5]) = swift_getKeyPath();
  sub_100003650(&qword_100065080, &qword_10004E3B0);
  swift_storeEnumTagMultiPayload();
  *(a1 + v18[6]) = swift_getKeyPath();
  sub_100003650(&qword_100064958, &qword_10004FA30);
  swift_storeEnumTagMultiPayload();
  v19 = v18[7];
  *(a1 + v19) = swift_getKeyPath();
  sub_100003650(&qword_100064960, &qword_10004DC30);
  swift_storeEnumTagMultiPayload();
  v20 = a1 + v18[9];
  *v20 = sub_100021A7C;
  *(v20 + 1) = v9;
  v20[16] = 0;
  v21 = (a1 + v18[10]);
  *v21 = v12;
  v21[1] = v11;
  v22 = a1 + v18[11];
  *v22 = sub_100021A7C;
  *(v22 + 1) = v17;
  v22[16] = 0;
  *(a1 + v18[12]) = 0x8000000000000000;
  *(a1 + v18[13]) = 0x7FF0000000000000;
  v23 = (a1 + v18[14]);
  *v23 = xmmword_10004E260;
  v23[1] = xmmword_10004E270;
}

uint64_t sub_100020448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_10004C710();
  a3[1] = v6;
  v7 = sub_100003650(&qword_1000659F0, &qword_10004F358);
  return sub_1000204A8(a2, a1, a3 + *(v7 + 44));
}

uint64_t sub_1000204A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v58 = a3;
  v56 = type metadata accessor for TitleView();
  v4 = *(*(v56 - 8) + 64);
  v5 = __chkstk_darwin(v56);
  v57 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = (&v48 - v7);
  v53 = sub_100003650(&qword_1000659F8, &qword_10004F360);
  v9 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v11 = &v48 - v10;
  v50 = sub_100003650(&qword_100065A00, &qword_10004F368);
  v12 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v49 = &v48 - v13;
  v52 = sub_100003650(&qword_100065A08, &qword_10004F370);
  v14 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v16 = &v48 - v15;
  v17 = sub_10004CB70();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v48 - v23;
  v25 = sub_100003650(&qword_100065A10, &qword_10004F378);
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25 - 8);
  v55 = &v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v54 = &v48 - v29;
  sub_10001FFB4(v24);
  (*(v18 + 104))(v22, enum case for WidgetFamily.systemSmall(_:), v17);
  sub_10002175C(&qword_100065328, &type metadata accessor for WidgetFamily);
  sub_10004CD40();
  sub_10004CD40();
  v30 = *(v18 + 8);
  v30(v22, v17);
  v30(v24, v17);
  if (v60 == v59)
  {
    *v16 = sub_10004C290();
    *(v16 + 1) = 0;
    v16[16] = 0;
    v31 = sub_100003650(&qword_100065A48, &qword_10004F438);
    sub_100020BA8(a1, &v16[*(v31 + 44)]);
    sub_10004BFA0();
    sub_10004BFA0();
    sub_10004C720();
    sub_10004BF90();
    v32 = &v16[*(v52 + 36)];
    v33 = v61;
    *v32 = v60;
    *(v32 + 1) = v33;
    *(v32 + 2) = v62;
    v34 = &qword_100065A08;
    v35 = &qword_10004F370;
    sub_100003E3C(v16, v49, &qword_100065A08, &qword_10004F370);
    swift_storeEnumTagMultiPayload();
    sub_1000217A4();
    sub_100003D30(&qword_100065A38, &qword_1000659F8, &qword_10004F360);
    v36 = v54;
    sub_10004C320();
    v37 = v16;
  }

  else
  {
    *v11 = sub_10004C1B0();
    *(v11 + 1) = 0;
    v11[16] = 1;
    v38 = sub_100003650(&qword_100065A18, &qword_10004F380);
    sub_100020F30(a1, &v11[*(v38 + 44)]);
    v34 = &qword_1000659F8;
    v35 = &qword_10004F360;
    sub_100003E3C(v11, v49, &qword_1000659F8, &qword_10004F360);
    swift_storeEnumTagMultiPayload();
    sub_1000217A4();
    sub_100003D30(&qword_100065A38, &qword_1000659F8, &qword_10004F360);
    v36 = v54;
    sub_10004C320();
    v37 = v11;
  }

  sub_100003EA4(v37, v34, v35);
  *v8 = swift_getKeyPath();
  sub_100003650(&qword_100065078, &qword_10004E9D0);
  swift_storeEnumTagMultiPayload();
  v39 = v56;
  v40 = *(v56 + 20);
  *(v8 + v40) = swift_getKeyPath();
  sub_100003650(&qword_100065080, &qword_10004E3B0);
  swift_storeEnumTagMultiPayload();
  v41 = v39[6];
  *(v8 + v41) = swift_getKeyPath();
  sub_100003650(&qword_100064958, &qword_10004FA30);
  swift_storeEnumTagMultiPayload();
  v42 = (v8 + v39[7]);
  *v42 = 0u;
  v42[1] = 0u;
  *(v8 + v39[8]) = 0;
  v43 = v55;
  sub_100003E3C(v36, v55, &qword_100065A10, &qword_10004F378);
  v44 = v57;
  sub_100021A14(v8, v57, type metadata accessor for TitleView);
  v45 = v58;
  sub_100003E3C(v43, v58, &qword_100065A10, &qword_10004F378);
  v46 = sub_100003650(&qword_100065A40, &qword_10004F430);
  sub_100021A14(v44, v45 + *(v46 + 48), type metadata accessor for TitleView);
  sub_100021870(v8);
  sub_100003EA4(v36, &qword_100065A10, &qword_10004F378);
  sub_100021870(v44);
  return sub_100003EA4(v43, &qword_100065A10, &qword_10004F378);
}

uint64_t sub_100020BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003650(&qword_100065A50, &qword_10004F440);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v31 - v9);
  v11 = type metadata accessor for IconFallbackTodayCardView();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*a1 + 16))
  {
    v15 = sub_10004C1A0();
    sub_100021A14(a1, &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IconFallbackTodayCardView);
    v16 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v17 = swift_allocObject();
    sub_100021678(v14, v17 + v16);
    v18 = sub_10004C3A0();
    LOBYTE(v45) = 0;
    LOBYTE(v37[0]) = 0;
    v39 = v15;
    LOBYTE(v40) = 0;
    *(&v40 + 1) = sub_100021984;
    *&v41 = v17;
    BYTE8(v41) = v18;
    __asm { FMOV            V0.2D, #16.0 }

    v42 = _Q0;
    v43 = 0uLL;
    v44 = 0;
  }

  else
  {
    LOBYTE(v37[0]) = 1;
    LOBYTE(v31) = 1;
    *&v39 = 0;
    BYTE8(v39) = 1;
    HIBYTE(v44) = 1;
  }

  sub_100003650(&qword_100065A58, &qword_10004F448);
  sub_1000218CC();
  sub_10004C320();
  sub_1000201BC(v10);
  *(v10 + *(sub_100003650(&qword_100065A78, &qword_10004F458) + 36)) = 256;
  *(v10 + *(v4 + 36)) = 0x3FF0000000000000;
  v33 = v47;
  v34 = v48;
  v35 = v49;
  v36 = v50;
  v31 = v45;
  v32 = v46;
  sub_100003E3C(v10, v8, &qword_100065A50, &qword_10004F440);
  v24 = v34;
  v37[2] = v33;
  v37[3] = v34;
  v25 = v35;
  v37[4] = v35;
  v26 = v36;
  v38 = v36;
  v27 = v31;
  v28 = v32;
  v37[0] = v31;
  v37[1] = v32;
  *(a2 + 32) = v33;
  *(a2 + 48) = v24;
  *(a2 + 64) = v25;
  *(a2 + 80) = v26;
  *a2 = v27;
  *(a2 + 16) = v28;
  v29 = sub_100003650(&qword_100065A80, &qword_10004F460);
  sub_100003E3C(v8, a2 + *(v29 + 48), &qword_100065A50, &qword_10004F440);
  sub_100003E3C(v37, &v39, &qword_100065A88, &qword_10004F468);
  sub_100003EA4(v10, &qword_100065A50, &qword_10004F440);
  sub_100003EA4(v8, &qword_100065A50, &qword_10004F440);
  v41 = v33;
  v42 = v34;
  v43 = v35;
  v44 = v36;
  v39 = v31;
  v40 = v32;
  return sub_100003EA4(&v39, &qword_100065A88, &qword_10004F468);
}

uint64_t sub_100020F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for IconFallbackTodayCardView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_100003650(&qword_100065A90, &qword_10004F4A8);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  *v14 = sub_10004C290();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v15 = sub_100003650(&qword_100065A98, &qword_10004F4B0);
  sub_1000212AC(&v14[*(v15 + 44)]);
  sub_10004BFA0();
  sub_10004C720();
  sub_10004BF90();
  v16 = &v14[*(v8 + 44)];
  v17 = v32[4];
  *(v16 + 1) = v32[3];
  *(v16 + 2) = v17;
  *v16 = v32[2];
  if (*(*a1 + 16))
  {
    sub_100021A14(a1, &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IconFallbackTodayCardView);
    v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v19 = swift_allocObject();
    sub_100021678(&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    v20 = sub_10004C3A0();
    LOBYTE(v31[0]) = 0;
    *&v33 = sub_100021C5C;
    *(&v33 + 1) = v19;
    LOBYTE(v34) = v20;

    v21 = xmmword_10004F2A0;
  }

  else
  {
    *&v34 = 0;
    v21 = 0uLL;
    v33 = 0u;
  }

  *(&v34 + 1) = 0;
  *v35 = v21;
  *&v35[16] = 0;
  v35[24] = 0;
  sub_100003E3C(v14, v12, &qword_100065A90, &qword_10004F4A8);
  v25 = v33;
  v26 = v34;
  v27[0] = *v35;
  *(v27 + 9) = *&v35[9];
  sub_100003E3C(v12, a2, &qword_100065A90, &qword_10004F4A8);
  v22 = (a2 + *(sub_100003650(&qword_100065AA0, &qword_10004F4B8) + 48));
  *(v30 + 9) = *(v27 + 9);
  v28 = v25;
  v29 = v26;
  v30[0] = v27[0];
  sub_100003E3C(&v28, v31, &qword_100065AA8, &qword_10004F4C0);
  sub_100003EA4(&v33, &qword_100065AA8, &qword_10004F4C0);
  v23 = v29;
  *v22 = v28;
  v22[1] = v23;
  v22[2] = v30[0];
  *(v22 + 41) = *(v30 + 9);
  sub_100003EA4(v14, &qword_100065A90, &qword_10004F4A8);
  v31[0] = v25;
  v31[1] = v26;
  v32[0] = v27[0];
  *(v32 + 9) = *(v27 + 9);
  sub_100003EA4(v31, &qword_100065AA8, &qword_10004F4C0);
  return sub_100003EA4(v12, &qword_100065A90, &qword_10004F4A8);
}

uint64_t sub_1000212AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003650(&qword_100065A50, &qword_10004F440);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  sub_10004C720();
  sub_10004C040();
  *&v15[55] = v20;
  *&v15[71] = v21;
  *&v15[87] = v22;
  *&v15[103] = v23;
  *&v15[7] = v17;
  *&v15[23] = v18;
  v16 = 1;
  *&v15[39] = v19;
  sub_1000201BC(v9);
  *(v9 + *(sub_100003650(&qword_100065A78, &qword_10004F458) + 36)) = 256;
  *(v9 + *(v3 + 44)) = 0x3FF0000000000000;
  sub_100003E3C(v9, v7, &qword_100065A50, &qword_10004F440);
  v10 = *&v15[80];
  *(a1 + 73) = *&v15[64];
  *(a1 + 89) = v10;
  *(a1 + 105) = *&v15[96];
  v11 = *&v15[16];
  *(a1 + 9) = *v15;
  *(a1 + 25) = v11;
  v12 = *&v15[48];
  *(a1 + 41) = *&v15[32];
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 120) = *&v15[111];
  *(a1 + 57) = v12;
  v13 = sub_100003650(&qword_100065AB0, &qword_10004F4C8);
  sub_100003E3C(v7, a1 + *(v13 + 48), &qword_100065A50, &qword_10004F440);
  sub_100003EA4(v9, &qword_100065A50, &qword_10004F440);
  return sub_100003EA4(v7, &qword_100065A50, &qword_10004F440);
}

double sub_1000214EC@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;

  sub_10004BFA0();
  v5 = v4;
  v7 = v6;
  sub_10004BFA0();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8 + -16.0 + -12.0;
  result = 26.0;
  *(a2 + 32) = xmmword_10004F2B0;
  *(a2 + 48) = 0xC039000000000000;
  return result;
}

uint64_t sub_10002156C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100021A14(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IconFallbackTodayCardView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100021678(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_1000216DC;
  a2[1] = v7;
  return result;
}

uint64_t sub_100021678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconFallbackTodayCardView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000216DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for IconFallbackTodayCardView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100020448(a1, v6, a2);
}

uint64_t sub_10002175C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000217A4()
{
  result = qword_100065A20;
  if (!qword_100065A20)
  {
    sub_100003698(&qword_100065A08, &qword_10004F370);
    sub_100003D30(&qword_100065A28, &qword_100065A30, &qword_10004F388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065A20);
  }

  return result;
}

uint64_t sub_100021870(uint64_t a1)
{
  v2 = type metadata accessor for TitleView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000218CC()
{
  result = qword_100065A60;
  if (!qword_100065A60)
  {
    sub_100003698(&qword_100065A58, &qword_10004F448);
    sub_100003D30(&qword_100065A68, &qword_100065A70, &qword_10004F450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065A60);
  }

  return result;
}

uint64_t sub_100021984@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IconFallbackTodayCardView() - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  result = sub_10004BFA0();
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = 0x4010000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  return result;
}

uint64_t sub_100021A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100021A8C()
{
  v1 = type metadata accessor for IconFallbackTodayCardView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = v0 + v3 + v1[6];
  type metadata accessor for CardDetailView.Heading(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_10004BB40();
    (*(*(v8 - 8) + 8))(v7, v8);
  }

  else
  {
    v9 = *(v7 + 8);
  }

  v10 = *(v5 + v1[7] + 8);

  v11 = (v5 + v1[8]);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v11 + 16);
  sub_100021670();
  v15 = (v5 + v1[9]);
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v15 + 16);
  sub_100021670();
  v19 = v1[10];
  sub_100003650(&qword_100065078, &qword_10004E9D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_10004CB70();
    (*(*(v20 - 8) + 8))(v5 + v19, v20);
  }

  else
  {
    v21 = *(v5 + v19);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_100021C5C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IconFallbackTodayCardView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1000214EC(v4, a1);
}

uint64_t sub_100021D40(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100003650(&qword_100064F98, qword_10004E520);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003650(&qword_100064F90, qword_10004E280);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_100003650(&qword_100065250, &unk_10004E730);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100021EEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100003650(&qword_100064F98, qword_10004E520);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_100003650(&qword_100064F90, qword_10004E280);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = sub_100003650(&qword_100065250, &unk_10004E730);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for DynamicTypeFont()
{
  result = qword_100065B20;
  if (!qword_100065B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000220D0()
{
  sub_100022204(319, &qword_100065010, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100022204(319, &qword_100065008, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100022204(319, &unk_100065B30, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100022204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100022284@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004C190();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003650(&qword_100065078, &qword_10004E9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100003E3C(v2, &v17 - v11, &qword_100065078, &qword_10004E9D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10004CB70();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10004CDD0();
    v16 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100022484@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10004C190();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003650(&qword_100065080, &qword_10004E3B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for DynamicTypeFont();
  sub_100003E3C(v1 + *(v12 + 20), v11, &qword_100065080, &qword_10004E3B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10004C270();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10004CDD0();
    v16 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10002268C(uint64_t a1)
{
  v3 = sub_10004CB70();
  v49 = *(v3 - 8);
  v50 = v3;
  v4 = *(v49 + 64);
  v5 = __chkstk_darwin(v3);
  v48 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v48 - v7;
  v9 = sub_100003650(&qword_1000651A0, &qword_10004E640);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v51 = &v48 - v11;
  v12 = sub_100003650(&qword_100065250, &unk_10004E730);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v48 - v14;
  v16 = sub_10004C270();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v48 - v22;
  v24 = type metadata accessor for DynamicTypeFont();
  sub_100003E3C(v1 + *(v24 + 28), v15, &qword_100065250, &unk_10004E730);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100003EA4(v15, &qword_100065250, &unk_10004E730);
LABEL_20:

    return a1;
  }

  (*(v17 + 32))(v23, v15, v16);
  sub_100022484(v21);
  v25 = sub_1000116B4(v21, v23);
  v26 = *(v17 + 8);
  v26(v21, v16);
  if (!v25)
  {
    goto LABEL_19;
  }

  sub_10004C3C0();
  v27 = sub_10004C3E0();

  if ((v27 & 1) == 0)
  {
    sub_10004C400();
    v28 = sub_10004C3E0();

    if ((v28 & 1) == 0)
    {
      sub_10004C440();
      v29 = sub_10004C3E0();

      if ((v29 & 1) == 0)
      {
        sub_10004C450();
        v30 = sub_10004C3E0();

        if ((v30 & 1) == 0)
        {
          sub_10004C4A0();
          v31 = sub_10004C3E0();

          if ((v31 & 1) == 0)
          {
            sub_10004C3D0();
            v32 = sub_10004C3E0();

            if ((v32 & 1) == 0)
            {
              sub_10004C3F0();
              v36 = sub_10004C3E0();

              if ((v36 & 1) == 0)
              {
                sub_10004C460();
                v37 = sub_10004C3E0();

                if ((v37 & 1) == 0)
                {
                  sub_10004C490();
                  v38 = sub_10004C3E0();

                  if ((v38 & 1) == 0)
                  {
                    sub_10004C470();
                    v39 = sub_10004C3E0();

                    if ((v39 & 1) == 0)
                    {
                      sub_10004C480();
                      v40 = sub_10004C3E0();

                      if (v40)
                      {
                        sub_100022284(v8);
                        v42 = v48;
                        v41 = v49;
                        v43 = v50;
                        (*(v49 + 104))(v48, enum case for WidgetFamily.systemSmall(_:), v50);
                        sub_100022DDC();
                        sub_10004CD40();
                        sub_10004CD40();
                        v44 = *(v41 + 8);
                        v44(v42, v43);
                        v44(v8, v43);
                        v45 = sub_10004C410();
                        v46 = v51;
                        (*(*(v45 - 8) + 56))(v51, 1, 1, v45);
                        a1 = sub_10004C430();
                        v35 = v46;
                        goto LABEL_11;
                      }

LABEL_19:
                      v26(v23, v16);
                      goto LABEL_20;
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

  v33 = sub_10004C410();
  v34 = v51;
  (*(*(v33 - 8) + 56))(v51, 1, 1, v33);
  a1 = sub_10004C430();
  v35 = v34;
LABEL_11:
  sub_100003EA4(v35, &qword_1000651A0, &qword_10004E640);
  v26(v23, v16);
  return a1;
}

uint64_t sub_100022D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10002268C(*(v3 + *(a2 + 24)));
  KeyPath = swift_getKeyPath();
  v8 = sub_100003650(&qword_100065B68, &qword_10004F590);
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  result = sub_100003650(&qword_100065B70, &unk_10004F598);
  v10 = (a3 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = v6;
  return result;
}

unint64_t sub_100022DDC()
{
  result = qword_100065328;
  if (!qword_100065328)
  {
    sub_10004CB70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065328);
  }

  return result;
}

unint64_t sub_100022E38()
{
  result = qword_100065B78;
  if (!qword_100065B78)
  {
    sub_100003698(&qword_100065B70, &unk_10004F598);
    sub_100003D30(&qword_100065B80, &qword_100065B68, &qword_10004F590);
    sub_100003D30(&qword_1000651F0, &qword_1000651F8, &qword_10004E6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065B78);
  }

  return result;
}

id sub_100022F1C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  v4 = v2;
  result = [objc_opt_self() _iconVariantForUIApplicationIconFormat:2 scale:&v4];
  dword_100065B88 = result;
  return result;
}

uint64_t sub_100022FD8()
{
  if (qword_100064700 != -1)
  {
    swift_once();
  }

  result = LIIconOutputSizeForVariant();
  qword_100065B90 = v1;
  qword_100065B98 = v2;
  return result;
}

uint64_t sub_100023034()
{
  if (qword_100064700 != -1)
  {
    swift_once();
  }

  result = LIIconContinuousCornerRadiusForVariant();
  qword_100065BA0 = v1;
  return result;
}

uint64_t sub_1000230A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003650(&qword_100064F98, qword_10004E520);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000231BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003650(&qword_100064F98, qword_10004E520);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for TodayWidgetSmallMediumEntryView()
{
  result = qword_100065C08;
  if (!qword_100065C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10002331C()
{
  sub_100023400(319, &qword_100065010, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100023400(319, &unk_100065C18, type metadata accessor for WidgetTodayCard, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100023400(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100023480@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10004C190();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003650(&qword_100065078, &qword_10004E9D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100003E3C(v2, &v17 - v11, &qword_100065078, &qword_10004E9D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10004CB70();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10004CDD0();
    v16 = sub_10004C390();
    sub_10004BE50();

    sub_10004C180();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100023680@<X0>(char *a1@<X8>)
{
  v29 = a1;
  v2 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v28 - v7;
  v9 = sub_100003650(&qword_1000655E8, &qword_10004F6C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_10004BB40();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for TodayWidgetSmallMediumEntryView() + 20);
  v28 = v1;
  v19 = v1 + v18;
  v20 = v18;
  sub_100003E3C(v19, v8, &qword_100065BA8, qword_10004F5A8);
  v21 = type metadata accessor for WidgetTodayCard();
  v22 = *(*(v21 - 8) + 48);
  if (v22(v8, 1, v21) == 1)
  {
    sub_100003EA4(v8, &qword_100065BA8, qword_10004F5A8);
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  else
  {
    sub_100003E3C(&v8[*(v21 + 48)], v12, &qword_1000655E8, &qword_10004F6C0);
    sub_100026988(v8, type metadata accessor for WidgetTodayCard);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      v26 = *(v14 + 32);
      v26(v17, v12, v13);
      v26(v29, v17, v13);
      type metadata accessor for CardDetailView.Heading(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  sub_100003EA4(v12, &qword_1000655E8, &qword_10004F6C0);
  sub_100003E3C(v28 + v20, v6, &qword_100065BA8, qword_10004F5A8);
  if (v22(v6, 1, v21) == 1)
  {
    sub_100003EA4(v6, &qword_100065BA8, qword_10004F5A8);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = *(v6 + 2);
    v24 = *(v6 + 3);

    sub_100026988(v6, type metadata accessor for WidgetTodayCard);
  }

  v25 = v29;
  *v29 = v23;
  *(v25 + 1) = v24;
  type metadata accessor for CardDetailView.Heading(0);
  return swift_storeEnumTagMultiPayload();
}

void *sub_100023A28()
{
  v1 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for WidgetTodayCard();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TodayWidgetSmallMediumEntryView();
  sub_100003E3C(v0 + *(v10 + 20), v4, &qword_100065BA8, qword_10004F5A8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100003EA4(v4, &qword_100065BA8, qword_10004F5A8);
    return 0;
  }

  else
  {
    sub_1000270EC(v4, v9, type metadata accessor for WidgetTodayCard);
    if (*(*(v9 + 8) + 16) == 1)
    {
      v11 = *(v9 + 9);
      v12 = v11;
    }

    else
    {
      v11 = 0;
    }

    sub_100026988(v9, type metadata accessor for WidgetTodayCard);
  }

  return v11;
}

uint64_t sub_100023BF0()
{
  v0 = sub_10004C4E0();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_10004C200();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_10004BB40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v25[-v10];
  v12 = type metadata accessor for CardDetailView.Heading(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100023680(v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v11, v15, v4);
    sub_10004C1F0();
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    sub_10004C1E0(v26);
    (*(v5 + 16))(v9, v11, v4);
    sub_10004C4D0();
    v16 = sub_10004C4F0();
    v18 = v17;
    v20 = v19;
    sub_10004C1D0();
    sub_10001AC44(v16, v18, v20 & 1);

    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    sub_10004C1E0(v27);
    sub_10004C220();
    v21 = sub_10004C500();
    (*(v5 + 8))(v11, v4);
    return v21;
  }

  else
  {
    v23 = *v15;
    if (*(v15 + 1))
    {
      v24 = *v15;
      sub_10004C240();
    }

    else
    {
      sub_10004C210();
    }

    return sub_10004C500();
  }
}

uint64_t sub_100023F44()
{
  v1 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = type metadata accessor for TodayWidgetSmallMediumEntryView();
  sub_100003E3C(v0 + *(v5 + 20), v4, &qword_100065BA8, qword_10004F5A8);
  v6 = type metadata accessor for WidgetTodayCard();
  if ((*(*(v6 - 8) + 48))(v4, 1, v6) == 1)
  {
    sub_100003EA4(v4, &qword_100065BA8, qword_10004F5A8);
LABEL_5:
    sub_10004C210();
    return sub_10004C500();
  }

  v7 = *(v4 + 4);
  v8 = *(v4 + 5);

  sub_100026988(v4, type metadata accessor for WidgetTodayCard);
  if (!v8)
  {
    goto LABEL_5;
  }

  sub_10004C240();
  return sub_10004C500();
}

uint64_t sub_1000240BC()
{
  v1 = sub_10004C200();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for TodayWidgetSmallMediumEntryView();
  sub_100003E3C(v0 + *(v7 + 20), v6, &qword_100065BA8, qword_10004F5A8);
  v8 = type metadata accessor for WidgetTodayCard();
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_100003EA4(v6, &qword_100065BA8, qword_10004F5A8);
  if (v9 == 1)
  {
    sub_10004C210();
  }

  else
  {
    sub_10004C1F0();
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    sub_10004C1E0(v21);
    v10 = sub_100023BF0();
    v12 = v11;
    v14 = v13;
    sub_10004C1D0();
    sub_10001AC44(v10, v12, v14 & 1);

    v22._countAndFlagsBits = 8236;
    v22._object = 0xE200000000000000;
    sub_10004C1E0(v22);
    v15 = sub_100023F44();
    v17 = v16;
    LOBYTE(v12) = v18;
    sub_10004C1D0();
    sub_10001AC44(v15, v17, v12 & 1);

    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    sub_10004C1E0(v23);
    sub_10004C220();
  }

  return sub_10004C500();
}

uint64_t sub_100024344@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v46 = &v41 - v5;
  v6 = sub_10004C360();
  v52 = *(v6 - 8);
  v53 = v6;
  v7 = *(v52 + 64);
  __chkstk_darwin(v6);
  v51 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004C380();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100003650(&qword_100065C48, &qword_10004F640);
  v13 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v15 = &v41 - v14;
  v48 = sub_100003650(&qword_100065C50, &qword_10004F648);
  v45 = *(v48 - 8);
  v16 = *(v45 + 64);
  __chkstk_darwin(v48);
  v18 = &v41 - v17;
  v19 = sub_100003650(&qword_100065C58, &qword_10004F650);
  v49 = *(v19 - 8);
  v50 = v19;
  v20 = *(v49 + 64);
  __chkstk_darwin(v19);
  v47 = &v41 - v21;
  sub_1000248E8(v1, v15);
  sub_10004C370();
  v55 = v1;
  sub_10004C720();
  v22 = sub_100003650(&qword_100065C60, &qword_10004F658);
  v23 = sub_1000260F8();
  v24 = v18;
  v25 = v41;
  v26 = sub_100026678(&qword_100065CF0, &qword_100065C60, &qword_10004F658, sub_10002672C);
  v42 = v22;
  sub_10004C580();
  (*(v43 + 8))(v12, v44);
  sub_100003EA4(v15, &qword_100065C48, &qword_10004F640);
  v27 = type metadata accessor for TodayWidgetSmallMediumEntryView();
  v28 = v46;
  sub_100003E3C(v2 + *(v27 + 20), v46, &qword_100065BA8, qword_10004F5A8);
  v29 = type metadata accessor for WidgetTodayCard();
  LODWORD(v22) = (*(*(v29 - 8) + 48))(v28, 1, v29);
  sub_100003EA4(v28, &qword_100065BA8, qword_10004F5A8);
  v30 = v51;
  if (v22 == 1)
  {
    sub_10004C350();
  }

  else
  {
    sub_10004C340();
  }

  v56 = v25;
  v57 = v42;
  v58 = v23;
  v59 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v47;
  v32 = v48;
  sub_10004C590();
  (*(v52 + 8))(v30, v53);
  (*(v45 + 8))(v24, v32);
  v34 = sub_1000240BC();
  v36 = v35;
  v38 = v37;
  v56 = v32;
  v57 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v39 = v50;
  sub_10004C570();
  sub_10001AC44(v34, v36, v38 & 1);

  return (*(v49 + 8))(v33, v39);
}

uint64_t sub_1000248E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v146 = a1;
  v2 = type metadata accessor for AppIcon(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for IconFallbackTodayCardView();
  v7 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v123 = (&v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v120 = sub_100003650(&qword_100065CC0, &qword_10004F688);
  v9 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v121 = &v116 - v10;
  v138 = sub_100003650(&qword_100065CA8, &qword_10004F680);
  v11 = *(*(v138 - 8) + 64);
  __chkstk_darwin(v138);
  v122 = &v116 - v12;
  v139 = sub_100003650(&qword_100065D48, &qword_10004F708);
  v125 = *(v139 - 8);
  v13 = v125[8];
  __chkstk_darwin(v139);
  v124 = &v116 - v14;
  v135 = sub_100003650(&qword_100065D50, &qword_10004F710);
  v15 = *(*(v135 - 8) + 64);
  __chkstk_darwin(v135);
  v137 = &v116 - v16;
  v17 = sub_10004BF00();
  v18 = *(v17 - 8);
  v140 = v17;
  v141 = v18;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v118 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v129 = &v116 - v22;
  v126 = type metadata accessor for BrandedTodayCardView();
  v23 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v127 = (&v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v133 = sub_100003650(&qword_100065C90, &unk_10004F670);
  v25 = *(*(v133 - 8) + 64);
  __chkstk_darwin(v133);
  v128 = &v116 - v26;
  v134 = sub_100003650(&qword_100065D58, &qword_10004F718);
  v131 = *(v134 - 8);
  v27 = *(v131 + 8);
  __chkstk_darwin(v134);
  v130 = &v116 - v28;
  v144 = sub_100003650(&qword_100065C88, &qword_10004F668);
  v29 = *(*(v144 - 8) + 64);
  __chkstk_darwin(v144);
  v136 = &v116 - v30;
  v142 = sub_100003650(&qword_100065D60, &qword_10004F720);
  v31 = *(*(v142 - 8) + 64);
  __chkstk_darwin(v142);
  v33 = &v116 - v32;
  v143 = sub_100003650(&qword_100065CE8, &qword_10004F698);
  v34 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v143);
  v36 = (&v116 - v35);
  v37 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v40 = &v116 - v39;
  v41 = type metadata accessor for WidgetTodayCard();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  v45 = &v116 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for TodayWidgetSmallMediumEntryView();
  sub_100003E3C(v146 + *(v46 + 20), v40, &qword_100065BA8, qword_10004F5A8);
  v47 = *(v42 + 48);
  v132 = v41;
  if (v47(v40, 1, v41) == 1)
  {
    sub_100003EA4(v40, &qword_100065BA8, qword_10004F5A8);
    *v36 = swift_getKeyPath();
    sub_100003650(&qword_100065080, &qword_10004E3B0);
    swift_storeEnumTagMultiPayload();
    v48 = type metadata accessor for PlaceholderTodayCardView();
    v49 = *(v48 + 20);
    *(v36 + v49) = swift_getKeyPath();
    sub_100003650(&qword_100065078, &qword_10004E9D0);
    swift_storeEnumTagMultiPayload();
    v50 = (v36 + *(v48 + 24));
    *v50 = 0u;
    v50[1] = 0u;
    v51 = (v36 + *(v143 + 36));
    v52 = sub_100003650(&qword_1000653E8, &qword_10004F9C0);
    (*(v141 + 104))(v51 + *(v52 + 28), enum case for ColorScheme.dark(_:), v140);
    *v51 = swift_getKeyPath();
    sub_100003E3C(v36, v33, &qword_100065CE8, &qword_10004F698);
    swift_storeEnumTagMultiPayload();
    sub_100026208();
    sub_100026590();
    sub_10004C320();
    return sub_100003EA4(v36, &qword_100065CE8, &qword_10004F698);
  }

  else
  {
    v117 = v33;
    sub_1000270EC(v40, v45, type metadata accessor for WidgetTodayCard);
    v54 = *(v45 + 7);
    if (v54)
    {
      v55 = *(v45 + 9);
      v56 = v126;
      v57 = *(v126 + 40);
      v58 = v55;
      v59 = v54;
      v125 = v59;
      v60 = v127;
      sub_100023680(v127 + v57);
      v61 = v45;
      v62 = *(v45 + 4);
      v63 = *(v61 + 5);
      *v60 = swift_getKeyPath();
      sub_100003650(&qword_100065078, &qword_10004E9D0);
      swift_storeEnumTagMultiPayload();
      *(v60 + v56[5]) = swift_getKeyPath();
      sub_100003650(&qword_100065080, &qword_10004E3B0);
      swift_storeEnumTagMultiPayload();
      *(v60 + v56[7]) = swift_getKeyPath();
      sub_100003650(&qword_100064960, &qword_10004DC30);
      swift_storeEnumTagMultiPayload();
      v64 = v56[6];
      *(v60 + v64) = swift_getKeyPath();
      sub_100003650(&qword_100064958, &qword_10004FA30);
      swift_storeEnumTagMultiPayload();
      *(v60 + v56[8]) = v59;
      *(v60 + v56[9]) = v55;
      v65 = (v60 + v56[11]);
      *v65 = v62;
      v65[1] = v63;
      v66 = v60 + v56[12];
      *v66 = sub_100021D20;
      *(v66 + 1) = 0;
      v66[16] = 0;
      v67 = v60 + v56[13];
      *v67 = sub_100021D20;
      *(v67 + 1) = 0;
      v67[16] = 0;
      v68 = v140;
      v69 = v141;
      v70 = &enum case for ColorScheme.dark(_:);
      if (!v61[48])
      {
        v70 = &enum case for ColorScheme.light(_:);
      }

      v71 = v129;
      (*(v141 + 104))(v129, *v70, v140);
      KeyPath = swift_getKeyPath();
      v73 = v133;
      v74 = v128;
      v75 = &v128[*(v133 + 36)];
      v76 = sub_100003650(&qword_1000653E8, &qword_10004F9C0);
      (*(v69 + 32))(v75 + *(v76 + 28), v71, v68);
      *v75 = KeyPath;
      sub_1000270EC(v60, v74, type metadata accessor for BrandedTodayCardView);
      v77 = *(v132 + 44);
      v78 = sub_100026308();

      v79 = v130;
      sub_10004C520();
      sub_100003EA4(v74, &qword_100065C90, &unk_10004F670);
      v80 = v131;
      v81 = v134;
      (*(v131 + 2))(v137, v79, v134);
      swift_storeEnumTagMultiPayload();
      v147 = v73;
      v148 = v78;
      v45 = v61;
      swift_getOpaqueTypeConformance2();
      v82 = sub_1000263F0();
      v147 = v138;
      v148 = v82;
      swift_getOpaqueTypeConformance2();
      v83 = v136;
      sub_10004C320();

      v80[1](v79, v81);
    }

    else
    {
      v84 = *(v45 + 8);
      v85 = *(v84 + 16);
      v86 = &_swiftEmptyArrayStorage;
      if (v85)
      {
        v131 = v45;
        v147 = &_swiftEmptyArrayStorage;
        sub_100026A38(0, v85, 0);
        v86 = v147;
        v87 = *(type metadata accessor for AppIconConfiguration(0) - 8);
        v88 = v84 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
        v89 = *(v87 + 72);
        v90 = v140;
        do
        {
          sub_100026F7C(v88, v6, type metadata accessor for AppIconConfiguration);
          v147 = v86;
          v92 = v86[2];
          v91 = v86[3];
          if (v92 >= v91 >> 1)
          {
            sub_100026A38(v91 > 1, v92 + 1, 1);
            v86 = v147;
          }

          v86[2] = v92 + 1;
          sub_1000270EC(v6, v86 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v92, type metadata accessor for AppIcon);
          v88 += v89;
          --v85;
        }

        while (v85);
        v45 = v131;
      }

      else
      {
        v90 = v140;
      }

      v93 = sub_100023A28();
      v94 = v119;
      v95 = v123;
      sub_100023680(v123 + *(v119 + 24));
      v97 = *(v45 + 4);
      v96 = *(v45 + 5);
      *(v95 + v94[10]) = swift_getKeyPath();
      sub_100003650(&qword_100065078, &qword_10004E9D0);
      swift_storeEnumTagMultiPayload();
      *v95 = v86;
      v95[1] = v93;
      v98 = (v95 + v94[7]);
      *v98 = v97;
      v98[1] = v96;
      v99 = v95 + v94[8];
      *v99 = sub_100021D20;
      *(v99 + 1) = 0;
      v99[16] = 0;
      v100 = v95 + v94[9];
      *v100 = sub_100021D20;
      *(v100 + 1) = 0;
      v100[16] = 0;
      v101 = v141;
      v102 = &enum case for ColorScheme.dark(_:);
      if (!v45[48])
      {
        v102 = &enum case for ColorScheme.light(_:);
      }

      v103 = v118;
      (*(v141 + 104))(v118, *v102, v90);
      v104 = swift_getKeyPath();
      v105 = v121;
      v106 = &v121[*(v120 + 36)];
      v107 = sub_100003650(&qword_1000653E8, &qword_10004F9C0);
      (*(v101 + 32))(v106 + *(v107 + 28), v103, v90);
      *v106 = v104;
      sub_1000270EC(v95, v105, type metadata accessor for IconFallbackTodayCardView);
      v108 = v122;
      sub_100026FE4(v105, v122);
      v109 = v138;
      *(v108 + *(v138 + 36)) = 0;
      v110 = *(v132 + 44);
      v111 = sub_1000263F0();

      v112 = v124;
      sub_10004C520();
      sub_100003EA4(v108, &qword_100065CA8, &qword_10004F680);
      v113 = v125;
      v114 = v139;
      (v125[2])(v137, v112, v139);
      swift_storeEnumTagMultiPayload();
      v115 = sub_100026308();
      v147 = v133;
      v148 = v115;
      swift_getOpaqueTypeConformance2();
      v147 = v109;
      v148 = v111;
      swift_getOpaqueTypeConformance2();
      v83 = v136;
      sub_10004C320();
      (v113[1])(v112, v114);
    }

    sub_100027054(v83, v117);
    swift_storeEnumTagMultiPayload();
    sub_100026208();
    sub_100026590();
    sub_10004C320();
    sub_100003EA4(v83, &qword_100065C88, &qword_10004F668);
    return sub_100026988(v45, type metadata accessor for WidgetTodayCard);
  }
}

uint64_t sub_1000258C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v51 = sub_100003650(&qword_100065D38, &qword_10004F6C8);
  v3 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v5 = &v43 - v4;
  v6 = type metadata accessor for PlatterView();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_10004CB70();
  *&v45 = *(v10 - 8);
  v11 = *(v45 + 64);
  v12 = __chkstk_darwin(v10);
  v44 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  v46 = sub_100003650(&qword_100065D40, &qword_10004F6D0);
  v16 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v47 = (&v43 - v17);
  v18 = sub_100003650(&qword_100065D00, &qword_10004F6A0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v49 = &v43 - v20;
  v21 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v43 - v23;
  sub_100003E3C(a1, &v43 - v23, &qword_100065BA8, qword_10004F5A8);
  v25 = type metadata accessor for WidgetTodayCard();
  LODWORD(a1) = (*(*(v25 - 8) + 48))(v24, 1, v25);
  sub_100003EA4(v24, &qword_100065BA8, qword_10004F5A8);
  if (a1 == 1)
  {
    *v9 = swift_getKeyPath();
    sub_100003650(&qword_100064958, &qword_10004FA30);
    swift_storeEnumTagMultiPayload();
    *(v9 + *(v6 + 20)) = 0;
    sub_100026F7C(v9, v5, type metadata accessor for PlatterView);
    swift_storeEnumTagMultiPayload();
    sub_10002672C();
    sub_1000272F8(&qword_100065448, type metadata accessor for PlatterView);
    sub_10004C320();
    return sub_100026988(v9, type metadata accessor for PlatterView);
  }

  v43 = v18;
  v27 = v5;
  v28 = sub_100023A28();
  if (v28)
  {
    v29 = v28;
    v30 = sub_10004C5B0();
    if (qword_1000646F8 != -1)
    {
      swift_once();
    }

    v31 = xmmword_100068E90;

    v48 = *(&xmmword_100068E90 + 8);
    v45 = unk_100068EA8;
    v32 = sub_10004C3A0();
    v33 = v47;
    *v47 = v30;
    v33[1] = v31;
    v34 = v45;
    *(v33 + 1) = v48;
    *(v33 + 2) = v34;
    *(v33 + 48) = v32;
    swift_storeEnumTagMultiPayload();

    sub_100003650(&qword_100065D20, &unk_10004F6B0);
    sub_1000267DC();
    sub_1000272F8(&qword_100065448, type metadata accessor for PlatterView);
    v35 = v49;
    sub_10004C320();

    goto LABEL_10;
  }

  sub_100023480(v15);
  v37 = v44;
  v36 = v45;
  (*(v45 + 104))(v44, enum case for WidgetFamily.systemLarge(_:), v10);
  sub_1000272F8(&qword_100065098, &type metadata accessor for WidgetFamily);
  v38 = sub_10004CD00();
  v39 = *(v36 + 8);
  v39(v37, v10);
  v39(v15, v10);
  if ((v38 & 1) == 0)
  {
    *v9 = swift_getKeyPath();
    sub_100003650(&qword_100064958, &qword_10004FA30);
    swift_storeEnumTagMultiPayload();
    *(v9 + *(v6 + 20)) = 0;
    sub_100026F7C(v9, v47, type metadata accessor for PlatterView);
    swift_storeEnumTagMultiPayload();
    sub_100003650(&qword_100065D20, &unk_10004F6B0);
    sub_1000267DC();
    sub_1000272F8(&qword_100065448, type metadata accessor for PlatterView);
    v35 = v49;
    sub_10004C320();
    sub_100026988(v9, type metadata accessor for PlatterView);
LABEL_10:
    v40 = 0;
    v41 = v27;
    goto LABEL_11;
  }

  v40 = 1;
  v41 = v27;
  v35 = v49;
LABEL_11:
  v42 = sub_100003650(&qword_100065D10, &qword_10004F6A8);
  (*(*(v42 - 8) + 56))(v35, v40, 1, v42);
  sub_100003E3C(v35, v41, &qword_100065D00, &qword_10004F6A0);
  swift_storeEnumTagMultiPayload();
  sub_10002672C();
  sub_1000272F8(&qword_100065448, type metadata accessor for PlatterView);
  sub_10004C320();
  return sub_100003EA4(v35, &qword_100065D00, &qword_10004F6A0);
}

uint64_t sub_1000260BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for TodayWidgetSmallMediumEntryView();
  return sub_1000258C8(v3 + *(v4 + 20), a1);
}

unint64_t sub_1000260F8()
{
  result = qword_100065C68;
  if (!qword_100065C68)
  {
    sub_100003698(&qword_100065C48, &qword_10004F640);
    sub_10002617C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065C68);
  }

  return result;
}

unint64_t sub_10002617C()
{
  result = qword_100065C70;
  if (!qword_100065C70)
  {
    sub_100003698(&qword_100065C78, &qword_10004F660);
    sub_100026208();
    sub_100026590();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065C70);
  }

  return result;
}

unint64_t sub_100026208()
{
  result = qword_100065C80;
  if (!qword_100065C80)
  {
    sub_100003698(&qword_100065C88, &qword_10004F668);
    sub_100003698(&qword_100065C90, &unk_10004F670);
    sub_100026308();
    swift_getOpaqueTypeConformance2();
    sub_100003698(&qword_100065CA8, &qword_10004F680);
    sub_1000263F0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065C80);
  }

  return result;
}

unint64_t sub_100026308()
{
  result = qword_100065C98;
  if (!qword_100065C98)
  {
    sub_100003698(&qword_100065C90, &unk_10004F670);
    sub_1000272F8(&qword_100065CA0, type metadata accessor for BrandedTodayCardView);
    sub_100003D30(&qword_100065438, &qword_1000653E8, &qword_10004F9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065C98);
  }

  return result;
}

unint64_t sub_1000263F0()
{
  result = qword_100065CB0;
  if (!qword_100065CB0)
  {
    sub_100003698(&qword_100065CA8, &qword_10004F680);
    sub_1000264A8();
    sub_100003D30(&qword_100065CD0, &qword_100065CD8, &qword_10004F690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065CB0);
  }

  return result;
}

unint64_t sub_1000264A8()
{
  result = qword_100065CB8;
  if (!qword_100065CB8)
  {
    sub_100003698(&qword_100065CC0, &qword_10004F688);
    sub_1000272F8(&qword_100065CC8, type metadata accessor for IconFallbackTodayCardView);
    sub_100003D30(&qword_100065438, &qword_1000653E8, &qword_10004F9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065CB8);
  }

  return result;
}

unint64_t sub_100026590()
{
  result = qword_100065CE0;
  if (!qword_100065CE0)
  {
    sub_100003698(&qword_100065CE8, &qword_10004F698);
    sub_1000272F8(&qword_100065430, type metadata accessor for PlaceholderTodayCardView);
    sub_100003D30(&qword_100065438, &qword_1000653E8, &qword_10004F9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065CE0);
  }

  return result;
}

uint64_t sub_100026678(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003698(a2, a3);
    a4();
    sub_1000272F8(&qword_100065448, type metadata accessor for PlatterView);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002672C()
{
  result = qword_100065CF8;
  if (!qword_100065CF8)
  {
    sub_100003698(&qword_100065D00, &qword_10004F6A0);
    sub_100026678(&qword_100065D08, &qword_100065D10, &qword_10004F6A8, sub_1000267DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065CF8);
  }

  return result;
}

unint64_t sub_1000267DC()
{
  result = qword_100065D18;
  if (!qword_100065D18)
  {
    sub_100003698(&qword_100065D20, &unk_10004F6B0);
    sub_100003D30(&qword_100065D28, &qword_100065D30, &qword_100050130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065D18);
  }

  return result;
}

uint64_t sub_1000268B8(uint64_t a1)
{
  v2 = sub_10004CB10();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10004C150();
}

uint64_t sub_100026988(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

size_t sub_1000269F4(size_t a1, int64_t a2, char a3)
{
  result = sub_100026D98(a1, a2, a3, *v3, &qword_100065DA0, &qword_10004F820, type metadata accessor for AppIconConfiguration);
  *v3 = result;
  return result;
}

size_t sub_100026A38(size_t a1, int64_t a2, char a3)
{
  result = sub_100026D98(a1, a2, a3, *v3, &qword_100065D68, &qword_10004F7F8, type metadata accessor for AppIcon);
  *v3 = result;
  return result;
}

void *sub_100026A7C(void *a1, int64_t a2, char a3)
{
  result = sub_100026B44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100026A9C(size_t a1, int64_t a2, char a3)
{
  result = sub_100026D98(a1, a2, a3, *v3, &qword_100065D70, &qword_10004F800, type metadata accessor for WidgetTodayCard);
  *v3 = result;
  return result;
}

char *sub_100026AE0(char *a1, int64_t a2, char a3)
{
  result = sub_100026C8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100026B00(size_t a1, int64_t a2, char a3)
{
  result = sub_100026D98(a1, a2, a3, *v3, &qword_100065D98, &qword_10004F818, type metadata accessor for TodayWidgetEntry);
  *v3 = result;
  return result;
}

void *sub_100026B44(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003650(&qword_100065DA8, &qword_10004F828);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003650(&qword_100065DB0, qword_10004F830);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100026C8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100003650(&qword_100065D90, &qword_10004F810);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100026D98(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003650(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100026F7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100026FE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065CC0, &qword_10004F688);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027054(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065C88, &qword_10004F668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000270EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10002715C()
{
  result = qword_100065D78;
  if (!qword_100065D78)
  {
    sub_100003698(&qword_100065D80, &qword_10004F808);
    sub_100003698(&qword_100065C50, &qword_10004F648);
    sub_100003698(&qword_100065C48, &qword_10004F640);
    sub_100003698(&qword_100065C60, &qword_10004F658);
    sub_1000260F8();
    sub_100026678(&qword_100065CF0, &qword_100065C60, &qword_10004F658, sub_10002672C);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000272F8(&qword_100065D88, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065D78);
  }

  return result;
}

uint64_t sub_1000272F8(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100027354(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004BBA0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000273D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004BBA0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for TodayWidgetTimelineProvider()
{
  result = qword_100065E40;
  if (!qword_100065E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100027490()
{
  result = sub_10004BBA0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100027544()
{
  v0 = sub_10004CC10();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100003650(&qword_100065E98, &unk_10004F900);
  sub_100004D10(v2, qword_100068EB8);
  sub_100004D74(v2, qword_100068EB8);
  sub_100003650(&qword_100065D98, &qword_10004F818);
  v3 = type metadata accessor for TodayWidgetEntry();
  v4 = *(*(v3 - 8) + 72);
  v5 = (*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10004DC70;
  if (qword_100064728 != -1)
  {
    swift_once();
  }

  v7 = sub_100004D74(v3, qword_100065DD0);
  sub_100030894(v7, v6 + v5, type metadata accessor for TodayWidgetEntry);
  sub_10004CC00();
  sub_1000308FC(&qword_100065E78, type metadata accessor for TodayWidgetEntry);
  return sub_10004CCB0();
}

uint64_t sub_100027734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v104 = a2;
  v97 = a3;
  v4 = type metadata accessor for TodayWidgetTimelineProvider();
  v94 = *(v4 - 8);
  v5 = *(v94 + 64);
  __chkstk_darwin(v4 - 8);
  v102 = v6;
  v96 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_10004CCA0();
  v95 = *(v101 - 8);
  v7 = *(v95 + 8);
  __chkstk_darwin(v101);
  v93 = v8;
  v100 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004C8A0();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100003650(&qword_100065E80, &qword_10004F8E8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v85 - v14;
  v16 = sub_10004CB70();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v90 = (&v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v22 = &v85 - v21;
  v89 = type metadata accessor for Trace();
  v91 = *(v89 - 1);
  v23 = *(v91 + 8);
  __chkstk_darwin(v89);
  v105 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v24;
  __chkstk_darwin(v25);
  v27 = &v85 - v26;
  v28 = sub_10004CC90();
  sub_10004CC80();
  v29 = *(v12 + 56);
  (*(v17 + 32))(&v15[v29], v22, v16);
  v30 = *(v17 + 88);
  v98 = v16;
  v31 = v30(&v15[v29], v16);
  v99 = a1;
  v106 = v27;
  if ((v28 & 1) == 0)
  {
    if (v31 == enum case for WidgetFamily.systemSmall(_:))
    {
      sub_10004C950();
      sub_10004C940();
      sub_10004BE70();
      sub_10004CE70();
      v32 = sub_10004C940();
      v33 = "TodayWidget:getTimeline (small)";
      v34 = 31;
      v35 = v27;
      goto LABEL_10;
    }

    if (v31 == enum case for WidgetFamily.systemMedium(_:))
    {
      sub_10004C950();
      sub_10004C940();
      sub_10004BE70();
      sub_10004CE70();
      v32 = sub_10004C940();
      v33 = "TodayWidget:getTimeline (medium)";
      v34 = 32;
      v35 = v27;
      goto LABEL_10;
    }

    v42 = enum case for WidgetFamily.systemLarge(_:);
    v43 = v31;
    sub_10004C950();
    sub_10004C940();
    sub_10004BE70();
    sub_10004CE70();
    v39 = sub_10004C940();
    if (v43 == v42)
    {
      v40 = "TodayWidget:getTimeline (large)";
      v41 = 31;
      goto LABEL_15;
    }

    v45 = "TodayWidget:getTimeline (unknown family)";
    v46 = 40;
LABEL_18:
    sub_10004BE60();

    v47 = &v27[v89[5]];
    *v47 = v45;
    *(v47 + 1) = v46;
    v47[16] = 2;
    (*(v17 + 8))(&v15[v29], v98);
    goto LABEL_19;
  }

  if (v31 == enum case for WidgetFamily.systemSmall(_:))
  {
    sub_10004C950();
    sub_10004C940();
    sub_10004BE70();
    sub_10004CE70();
    v32 = sub_10004C940();
    v33 = "TodayWidget:getTimeline (small, preview)";
    v34 = 40;
    v35 = v27;
LABEL_10:
    sub_10004BE60();

    v36 = &v35[v89[5]];
    *v36 = v33;
    *(v36 + 1) = v34;
    v36[16] = 2;
    goto LABEL_20;
  }

  if (v31 == enum case for WidgetFamily.systemMedium(_:))
  {
    sub_10004C950();
    sub_10004C940();
    sub_10004BE70();
    sub_10004CE70();
    v32 = sub_10004C940();
    v33 = "TodayWidget:getTimeline (medium, preview)";
    v34 = 41;
    v35 = v27;
    goto LABEL_10;
  }

  v37 = enum case for WidgetFamily.systemLarge(_:);
  v38 = v31;
  sub_10004C950();
  sub_10004C940();
  sub_10004BE70();
  sub_10004CE70();
  v39 = sub_10004C940();
  if (v38 != v37)
  {
    v45 = "TodayWidget:getTimeline (unknown family, preview)";
    v46 = 49;
    goto LABEL_18;
  }

  v40 = "TodayWidget:getTimeline (large, preview)";
  v41 = 40;
LABEL_15:
  sub_10004BE60();

  v44 = &v27[v89[5]];
  *v44 = v40;
  *(v44 + 1) = v41;
  v44[16] = 2;
LABEL_19:
  a1 = v99;
LABEL_20:
  v48 = v17;
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v89 = sub_10004CAD0();
  v88 = sub_100004D74(v89, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v49 = *(sub_10004C8D0() - 8);
  v50 = *(v49 + 72);
  v51 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C890();
  v110._countAndFlagsBits = 0x6C656D6954746567;
  v110._object = 0xEC00000028656E69;
  sub_10004C880(v110);
  v52 = v98;
  v108 = v98;
  sub_100007BCC(v107);
  sub_10004CC80();
  sub_10004C870();
  sub_100003EA4(v107, &qword_100064A10, &qword_10004FB00);
  v111._countAndFlagsBits = 44;
  v111._object = 0xE100000000000000;
  sub_10004C880(v111);
  v53 = sub_10004CC90();
  v108 = &type metadata for Bool;
  LOBYTE(v107[0]) = v53 & 1;
  sub_10004C870();
  sub_100003EA4(v107, &qword_100064A10, &qword_10004FB00);
  v112._object = 0x800000010005A430;
  v112._countAndFlagsBits = 0xD00000000000002BLL;
  sub_10004C880(v112);
  v54 = v90;
  sub_10004CC80();
  v55 = sub_10004CB60();
  (*(v48 + 8))(v54, v52);
  v108 = &type metadata for Int;
  v107[0] = v55;
  sub_10004C870();
  sub_100003EA4(v107, &qword_100064A10, &qword_10004FB00);
  v113._countAndFlagsBits = 0x766572507369202CLL;
  v113._object = 0xED0000203A776569;
  sub_10004C880(v113);
  v56 = sub_10004CC90();
  v108 = &type metadata for Bool;
  LOBYTE(v107[0]) = v56 & 1;
  sub_10004C870();
  sub_100003EA4(v107, &qword_100064A10, &qword_10004FB00);
  v114._countAndFlagsBits = 0;
  v114._object = 0xE000000000000000;
  sub_10004C880(v114);
  sub_10004C8B0();
  sub_10004C9C0();

  v57 = v103;
  v98 = sub_100032630(a1, 0, v103);
  v58 = v95;
  v59 = *(v95 + 2);
  v87 = v95 + 16;
  v89 = v59;
  v60 = v100;
  (v59)(v100, a1, v101);
  v90 = type metadata accessor for TodayWidgetTimelineProvider;
  v61 = v96;
  sub_100030894(v57, v96, type metadata accessor for TodayWidgetTimelineProvider);
  v88 = type metadata accessor for Trace;
  sub_100030894(v106, v105, type metadata accessor for Trace);
  v62 = *(v58 + 80);
  v63 = (v62 + 16) & ~v62;
  v93 += v63;
  v86 = v63;
  v64 = *(v94 + 80);
  v65 = (v93 + v64) & ~v64;
  v66 = v91[80];
  v67 = (v102 + v66 + v65) & ~v66;
  v94 = v62 | v64 | v66;
  v91 = v92 + 7;
  v68 = &v92[v67 + 7] & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  v92 = *(v58 + 4);
  v70 = v69 + v63;
  v71 = v101;
  (v92)(v70, v60, v101);
  v95 = type metadata accessor for TodayWidgetTimelineProvider;
  v72 = v69 + v65;
  v73 = v61;
  sub_100030ED0(v61, v72, type metadata accessor for TodayWidgetTimelineProvider);
  v85 = type metadata accessor for Trace;
  v74 = v69 + v67;
  v75 = v105;
  sub_100030ED0(v105, v74, type metadata accessor for Trace);
  v76 = (v69 + v68);
  v77 = v97;
  *v76 = v104;
  v76[1] = v77;
  (v89)(v60, v99, v71);
  sub_100030894(v106, v75, v88);
  sub_100030894(v103, v73, v90);
  v78 = (v93 + v66) & ~v66;
  v79 = &v91[v78] & 0xFFFFFFFFFFFFFFF8;
  v80 = swift_allocObject();
  (v92)(v80 + v86, v100, v71);
  sub_100030ED0(v105, v80 + v78, v85);
  v81 = (v80 + v79);
  *v81 = v104;
  v81[1] = v77;
  sub_100030ED0(v73, v80 + ((v64 + v79 + 16) & ~v64), v95);
  v82 = sub_100007874();
  swift_retain_n();
  v83 = sub_10004CE20();
  v108 = v82;
  v109 = &protocol witness table for OS_dispatch_queue;
  v107[0] = v83;
  sub_10004CA30();

  sub_100030F38(v106, type metadata accessor for Trace);
  return sub_100007B80(v107);
}

uint64_t sub_1000283FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v133 = a6;
  v134 = a5;
  v132 = a4;
  v128 = a3;
  v8 = sub_10004CC10();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v129 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WidgetTodayCard();
  v140 = *(v11 - 8);
  v12 = *(v140 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (&v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_10004CAD0();
  v146 = *(v15 - 8);
  v16 = *(v146 + 64);
  __chkstk_darwin(v15);
  v160 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003650(&qword_1000655E8, &qword_10004F6C0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v127 = &v124 - v20;
  v157 = sub_10004BB40();
  v21 = *(v157 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v157 - 8);
  v124 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v125 = &v124 - v26;
  v27 = __chkstk_darwin(v25);
  v135 = &v124 - v28;
  v29 = __chkstk_darwin(v27);
  v126 = &v124 - v30;
  __chkstk_darwin(v29);
  v147 = &v124 - v31;
  v131 = sub_100003650(&qword_100065E98, &unk_10004F900);
  v130 = *(v131 - 8);
  v32 = *(v130 + 64);
  __chkstk_darwin(v131);
  v137 = &v124 - v33;
  v34 = sub_10004C8A0();
  v35 = *(*(v34 - 8) + 64);
  v36 = __chkstk_darwin(v34 - 8);
  v159 = &v124 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v141 = &v124 - v38;
  v163 = type metadata accessor for TodayWidgetCardCollection();
  v39 = *(v163 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v163);
  v42 = &v124 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for TodayWidgetEntry();
  v164 = *(v43 - 8);
  v165 = v43;
  v44 = *(v164 + 64);
  v45 = __chkstk_darwin(v43);
  v161 = &v124 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v48 = &v124 - v47;
  v136 = a1;
  v49 = *a1;
  v50 = *(*a1 + 16);
  v142 = v15;
  v145 = a2;
  v138 = v21;
  if (v50)
  {
    v166[0] = &_swiftEmptyArrayStorage;
    v51 = v39;
    sub_100026B00(0, v50, 0);
    v52 = v157;
    v53 = v166[0];
    v54 = v49 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v162 = *(v51 + 72);
    v55 = (v21 + 32);
    do
    {
      sub_100030894(v54, v42, type metadata accessor for TodayWidgetCardCollection);
      (*v55)(v48, &v42[*(v163 + 20)], v52);
      v56 = &v48[*(v165 + 20)];
      *v56 = *v42;
      *(v56 + 1) = 0;
      *(v56 + 2) = 0;
      *(v56 + 3) = 0;
      v166[0] = v53;
      v58 = *(v53 + 16);
      v57 = *(v53 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_100026B00(v57 > 1, v58 + 1, 1);
        v52 = v157;
        v53 = v166[0];
      }

      *(v53 + 16) = v58 + 1;
      sub_100030ED0(v48, v53 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v58, type metadata accessor for TodayWidgetEntry);
      v54 += v162;
      --v50;
    }

    while (v50);
    v155 = v53;
    v15 = v142;
    a2 = v145;
  }

  else
  {
    v155 = &_swiftEmptyArrayStorage;
  }

  v59 = v147;
  if (qword_1000646A8 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v158 = sub_100004D74(v15, qword_100068DB0);
    v60 = sub_100003650(&qword_100064A08, &unk_10004EAB0);
    v61 = *(sub_10004C8D0() - 8);
    v62 = *(v61 + 80);
    v63 = (v62 + 32) & ~v62;
    v151 = *(v61 + 72);
    v152 = v62;
    v154 = v60;
    v64 = swift_allocObject();
    v156 = xmmword_10004DC70;
    *(v64 + 16) = xmmword_10004DC70;
    sub_10004C890();
    v168._countAndFlagsBits = 0x6C656D6954746567;
    v168._object = 0xEC00000028656E69;
    sub_10004C880(v168);
    v153 = sub_10004CB70();
    v167 = v153;
    sub_100007BCC(v166);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v166, &qword_100064A10, &qword_10004FB00);
    v169._countAndFlagsBits = 44;
    v169._object = 0xE100000000000000;
    sub_10004C880(v169);
    v65 = sub_10004CC90();
    v167 = &type metadata for Bool;
    LOBYTE(v166[0]) = v65 & 1;
    sub_10004C870();
    sub_100003EA4(v166, &qword_100064A10, &qword_10004FB00);
    v170._countAndFlagsBits = 0xD000000000000017;
    v170._object = 0x800000010005A7B0;
    sub_10004C880(v170);
    v162 = v63;
    sub_10004C8B0();
    sub_10004C9C0();

    v66 = v155;
    v67 = v161;
    v150 = v155[2];
    if (!v150)
    {
      break;
    }

    v68 = 0;
    v149 = v155 + ((*(v164 + 80) + 32) & ~*(v164 + 80));
    v139 = "r missing artwork at ";
    v148 = (v138 + 16);
    v144 = (v146 + 16);
    v143 = (v146 + 8);
    while (v68 < *(v66 + 16))
    {
      v72 = *(v164 + 72);
      v163 = v68;
      sub_100030894(&v149[v72 * v68], v67, type metadata accessor for TodayWidgetEntry);
      v73 = (v67 + *(v165 + 20));
      if (v73[2] < 0)
      {
        *(swift_allocObject() + 16) = v156;
        sub_10004C890();
        v171._countAndFlagsBits = 0x6C656D6954746567;
        v171._object = 0xEC00000028656E69;
        sub_10004C880(v171);
        v167 = v153;
        sub_100007BCC(v166);
        sub_10004CC80();
        sub_10004C870();
        sub_100003EA4(v166, &qword_100064A10, &qword_10004FB00);
        v172._countAndFlagsBits = 44;
        v172._object = 0xE100000000000000;
        sub_10004C880(v172);
        v69 = sub_10004CC90();
        v167 = &type metadata for Bool;
        LOBYTE(v166[0]) = v69 & 1;
        sub_10004C870();
        sub_100003EA4(v166, &qword_100064A10, &qword_10004FB00);
        v173._countAndFlagsBits = 0xD000000000000021;
        v173._object = (v139 | 0x8000000000000000);
        sub_10004C880(v173);
        v70 = v157;
        v167 = v157;
        v71 = sub_100007BCC(v166);
        (*v148)(v71, v161, v70);
        sub_10004C870();
        sub_100003EA4(v166, &qword_100064A10, &qword_10004FB00);
        v174._countAndFlagsBits = 0;
        v174._object = 0xE000000000000000;
        sub_10004C880(v174);
        v67 = v161;
        sub_10004C8B0();
        sub_10004C9C0();
        v59 = v147;
      }

      else
      {
        v74 = *v73;
        (*v144)(v160, v158, v15);
        v75 = swift_allocObject();
        *(v75 + 16) = v156;
        sub_10004C890();
        v175._countAndFlagsBits = 0x6C656D6954746567;
        v175._object = 0xEC00000028656E69;
        sub_10004C880(v175);
        v167 = v153;
        sub_100007BCC(v166);
        sub_10004CC80();
        sub_10004C870();
        sub_100003EA4(v166, &qword_100064A10, &qword_10004FB00);
        v176._countAndFlagsBits = 44;
        v176._object = 0xE100000000000000;
        sub_10004C880(v176);
        v76 = sub_10004CC90();
        v167 = &type metadata for Bool;
        LOBYTE(v166[0]) = v76 & 1;
        sub_10004C870();
        sub_100003EA4(v166, &qword_100064A10, &qword_10004FB00);
        v177._countAndFlagsBits = 0x6F6853202D203A29;
        v177._object = 0xED000020676E6977;
        sub_10004C880(v177);
        v77 = *(v74 + 16);
        if (v77)
        {
          v146 = v75;
          v166[0] = &_swiftEmptyArrayStorage;
          sub_100026AE0(0, v77, 0);
          v78 = v166[0];
          v79 = v74 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
          v80 = *(v140 + 72);
          do
          {
            sub_100030894(v79, v14, type metadata accessor for WidgetTodayCard);
            v82 = *v14;
            v81 = v14[1];

            sub_100030F38(v14, type metadata accessor for WidgetTodayCard);
            v166[0] = v78;
            v84 = v78[2];
            v83 = v78[3];
            if (v84 >= v83 >> 1)
            {
              sub_100026AE0((v83 > 1), v84 + 1, 1);
              v78 = v166[0];
            }

            v78[2] = v84 + 1;
            v85 = &v78[2 * v84];
            *(v85 + 4) = v82;
            *(v85 + 5) = v81;
            v79 += v80;
            --v77;
          }

          while (v77);
          v15 = v142;
          v59 = v147;
        }

        else
        {
          v78 = &_swiftEmptyArrayStorage;
        }

        v166[0] = v78;
        sub_100003650(&qword_100065EA0, qword_10004F910);
        sub_1000307A4();
        v86 = sub_10004CCE0();
        v88 = v87;

        v167 = &type metadata for String;
        v166[0] = v86;
        v166[1] = v88;
        sub_10004C860();
        sub_100003EA4(v166, &qword_100064A10, &qword_10004FB00);
        v178._countAndFlagsBits = 544497952;
        v178._object = 0xE400000000000000;
        sub_10004C880(v178);
        v89 = v157;
        v167 = v157;
        v90 = sub_100007BCC(v166);
        v67 = v161;
        (*v148)(v90, v161, v89);
        sub_10004C870();
        sub_100003EA4(v166, &qword_100064A10, &qword_10004FB00);
        v179._countAndFlagsBits = 0;
        v179._object = 0xE000000000000000;
        sub_10004C880(v179);
        sub_10004C8B0();
        v91 = v160;
        sub_10004C9C0();

        (*v143)(v91, v15);
        a2 = v145;
      }

      v68 = v163 + 1;
      sub_100030F38(v67, type metadata accessor for TodayWidgetEntry);
      v66 = v155;
      if (v68 == v150)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

LABEL_23:
  v92 = v127;
  sub_100029CC0(v66, a2, v127);
  v93 = v138;
  v94 = v157;
  if ((*(v138 + 48))(v92, 1, v157) == 1)
  {
    sub_100003EA4(v92, &qword_1000655E8, &qword_10004F6C0);
    v164 = *(type metadata accessor for TodayWidgetContainer() + 20);
    sub_10004CBF0();
    sub_1000308FC(&qword_100065E78, type metadata accessor for TodayWidgetEntry);
    sub_10004CCB0();
    *(swift_allocObject() + 16) = v156;
    sub_10004C890();
    v180._countAndFlagsBits = 0x6C656D6954746567;
    v180._object = 0xEC00000028656E69;
    sub_10004C880(v180);
    v95 = v153;
    v167 = v153;
    sub_100007BCC(v166);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v166, &qword_100064A10, &qword_10004FB00);
    v181._countAndFlagsBits = 44;
    v181._object = 0xE100000000000000;
    sub_10004C880(v181);
    v96 = sub_10004CC90();
    v167 = &type metadata for Bool;
    LOBYTE(v166[0]) = v96 & 1;
    sub_10004C870();
    sub_100003EA4(v166, &qword_100064A10, &qword_10004FB00);
    v182._countAndFlagsBits = 0xD00000000000001ELL;
    v182._object = 0x800000010005A7D0;
    sub_10004C880(v182);
    sub_10004C8B0();
    sub_10004C9C0();

    *(swift_allocObject() + 16) = v156;
    sub_10004C890();
    v183._countAndFlagsBits = 0x6C656D6954746567;
    v183._object = 0xEC00000028656E69;
    sub_10004C880(v183);
    v167 = v95;
    sub_100007BCC(v166);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v166, &qword_100064A10, &qword_10004FB00);
    v184._countAndFlagsBits = 44;
    v184._object = 0xE100000000000000;
    sub_10004C880(v184);
    v97 = sub_10004CC90();
    v167 = &type metadata for Bool;
    LOBYTE(v166[0]) = v97 & 1;
    sub_10004C870();
    sub_100003EA4(v166, &qword_100064A10, &qword_10004FB00);
    v185._countAndFlagsBits = 0x64696C6156203A29;
    v185._object = 0xEF206C69746E7520;
    sub_10004C880(v185);
    v98 = v157;
    v167 = v157;
    v99 = sub_100007BCC(v166);
    (*(v138 + 16))(v99, v136 + v164, v98);
    sub_10004C870();
    sub_100003EA4(v166, &qword_100064A10, &qword_10004FB00);
    v186._countAndFlagsBits = 46;
    v186._object = 0xE100000000000000;
    sub_10004C880(v186);
    sub_10004C8B0();
    sub_10004C9C0();
  }

  else
  {
    v100 = *(v93 + 32);
    v100(v59, v92, v94);
    sub_100030808(0xDD4uLL);
    v101 = v135;
    sub_10004BB10();
    v102 = v125;
    sub_10004BB30();
    sub_1000308FC(&qword_100065EB0, &type metadata accessor for Date);
    v103 = sub_10004CCF0();
    v163 = *(v93 + 8);
    v164 = v93 + 8;
    (v163)(v102, v94);
    if (v103)
    {
      (*(v93 + 16))(v126, v101, v94);
    }

    else
    {
      v104 = v100;
      sub_100030808(0xDD4uLL);
      v105 = v124;
      sub_10004BB10();
      v106 = type metadata accessor for TodayWidgetContainer();
      v107 = v136;
      v108 = *(v106 + 20);
      if (sub_10004CCF0())
      {
        (v163)(v105, v94);
        (*(v93 + 16))(v126, v107 + v108, v94);
      }

      else
      {
        v104(v126, v105, v94);
      }
    }

    sub_10004CBF0();
    sub_1000308FC(&qword_100065E78, type metadata accessor for TodayWidgetEntry);
    sub_10004CCB0();
    *(swift_allocObject() + 16) = v156;
    sub_10004C890();
    v187._countAndFlagsBits = 0x6C656D6954746567;
    v187._object = 0xEC00000028656E69;
    sub_10004C880(v187);
    v167 = v153;
    sub_100007BCC(v166);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v166, &qword_100064A10, &qword_10004FB00);
    v188._countAndFlagsBits = 44;
    v188._object = 0xE100000000000000;
    sub_10004C880(v188);
    v109 = sub_10004CC90();
    v167 = &type metadata for Bool;
    LOBYTE(v166[0]) = v109 & 1;
    sub_10004C870();
    sub_100003EA4(v166, &qword_100064A10, &qword_10004FB00);
    v189._countAndFlagsBits = 0xD00000000000003FLL;
    v189._object = 0x800000010005A7F0;
    sub_10004C880(v189);
    sub_10004C8B0();
    sub_10004C9F0();

    *(swift_allocObject() + 16) = v156;
    sub_10004C890();
    v190._countAndFlagsBits = 0x6C656D6954746567;
    v190._object = 0xEC00000028656E69;
    sub_10004C880(v190);
    v167 = v153;
    sub_100007BCC(v166);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v166, &qword_100064A10, &qword_10004FB00);
    v191._countAndFlagsBits = 44;
    v191._object = 0xE100000000000000;
    sub_10004C880(v191);
    v110 = sub_10004CC90();
    v167 = &type metadata for Bool;
    LOBYTE(v166[0]) = v110 & 1;
    sub_10004C870();
    sub_100003EA4(v166, &qword_100064A10, &qword_10004FB00);
    v192._countAndFlagsBits = 0xD000000000000025;
    v192._object = 0x800000010005A830;
    sub_10004C880(v192);
    v167 = v94;
    v111 = sub_100007BCC(v166);
    v112 = v126;
    (*(v93 + 16))(v111, v126, v94);
    sub_10004C870();
    sub_100003EA4(v166, &qword_100064A10, &qword_10004FB00);
    v193._countAndFlagsBits = 46;
    v193._object = 0xE100000000000000;
    sub_10004C880(v193);
    sub_10004C8B0();
    sub_10004C9F0();

    v113 = v163;
    (v163)(v135, v94);
    v113(v112, v94);
    v113(v147, v94);
  }

  v114 = [objc_opt_self() standardUserDefaults];
  isa = sub_10004CDC0().super.super.isa;
  v116 = sub_10004CD10();
  [v114 setValue:isa forKey:v116];

  sub_10004CE60();
  sub_10004C950();
  v117 = sub_10004C940();
  v118 = (v132 + *(type metadata accessor for Trace() + 20));
  v119 = *v118;
  v120 = v118[1];
  v121 = *(v118 + 16);
  sub_10004BE60();

  v122 = v137;
  v134(v137);
  return (*(v130 + 8))(v122, v131);
}

uint64_t sub_100029CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v133 = a2;
  v107 = a3;
  v4 = type metadata accessor for AppIconConfiguration(0);
  v129 = *(v4 - 8);
  v130 = v4;
  v5 = *(v129 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v110 = &v106 - v10;
  __chkstk_darwin(v9);
  v12 = &v106 - v11;
  v13 = sub_10004CB70();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v124 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v123 = &v106 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v106 - v21;
  __chkstk_darwin(v20);
  v127 = &v106 - v23;
  v24 = type metadata accessor for WidgetTodayCard();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24 - 8);
  v28 = &v106 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for TodayWidgetEntry();
  v29 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v32 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = *(a1 + 16);
  if (!v111)
  {
LABEL_81:
    v87 = sub_10004BB40();
    return (*(*(v87 - 8) + 56))(v107, 1, 1, v87);
  }

  v33 = 0;
  v114 = a1 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
  v121 = (v14 + 32);
  v132 = enum case for WidgetFamily.systemSmall(_:);
  v128 = (v14 + 8);
  v119 = (v14 + 104);
  v120 = (v14 + 88);
  v113 = *(v30 + 72);
  v131 = v13;
  v122 = v28;
  v112 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v22;
  v117 = v25;
  while (1)
  {
    v116 = v33;
    sub_100030894(v114 + v113 * v33, v32, type metadata accessor for TodayWidgetEntry);
    v34 = &v32[*(v115 + 20)];
    if ((*(v34 + 2) & 0x8000000000000000) == 0)
    {
      v35 = *v34;
      v36 = *(*v34 + 16);
      if (v36)
      {
        break;
      }
    }

LABEL_3:
    v33 = v116 + 1;
    v32 = v112;
    sub_100030F38(v112, type metadata accessor for TodayWidgetEntry);
    if (v33 == v111)
    {
      goto LABEL_81;
    }
  }

  v37 = 0;
  v134 = v35 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v125 = v36;
  v126 = v35;
  while (1)
  {
    if (v37 >= *(v35 + 16))
    {
      __break(1u);
      goto LABEL_91;
    }

    sub_100030894(v134 + *(v25 + 72) * v37, v28, type metadata accessor for WidgetTodayCard);
    if (!*(v28 + 7))
    {
      break;
    }

LABEL_7:
    ++v37;
    sub_100030F38(v28, type metadata accessor for WidgetTodayCard);
    if (v37 == v36)
    {
      goto LABEL_3;
    }
  }

  v136 = *(v28 + 8);
  v38 = *(v136 + 16);
  v39 = v127;
  sub_10004CC80();
  (*v121)(v22, v39, v13);
  v40 = (*v120)(v22, v13);
  if (v40 == v132)
  {
    v41 = 3;
    if (v38 <= 4)
    {
      v41 = 4;
    }

    v135 = v41;
  }

  else
  {
    v42 = 6;
    if (!v37)
    {
      v42 = 11;
    }

    v135 = v42;
    (*v128)(v22, v13);
  }

  v43 = &_swiftEmptyArrayStorage;
  v138 = &_swiftEmptyArrayStorage;
  v44 = *(v136 + 16);
  if (v44)
  {
    v45 = *(v130 + 20);
    v46 = v136 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
    v47 = *(v129 + 72);
    do
    {
      sub_100030894(v46, v12, type metadata accessor for AppIconConfiguration);
      v48 = *&v12[v45];
      v49 = v48;
      sub_100030F38(v12, type metadata accessor for AppIconConfiguration);
      if (v48)
      {
        sub_10004CD50();
        if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_10004CD80();
        }

        sub_10004CDA0();
        v43 = v138;
      }

      v46 += v47;
      --v44;
    }

    while (v44);
  }

  if (v43 >> 62)
  {
    v50 = sub_10004CF90();
  }

  else
  {
    v50 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = v131;

  if (!v50)
  {
    if (qword_1000646A8 == -1)
    {
LABEL_83:
      v89 = sub_10004CAD0();
      sub_100004D74(v89, qword_100068DB0);
      sub_100003650(&qword_100064A08, &unk_10004EAB0);
      v90 = *(sub_10004C8D0() - 8);
      v91 = *(v90 + 72);
      v92 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      *(swift_allocObject() + 16) = xmmword_10004DC70;
      sub_10004C850();
      sub_10004C9E0();

      v93 = sub_10004BB40();
      v94 = *(v93 - 8);
      v95 = v107;
      v96 = v112;
      (*(v94 + 16))(v107, v112, v93);
      sub_100030F38(v96, type metadata accessor for TodayWidgetEntry);
      (*(v94 + 56))(v95, 0, 1, v93);
      v97 = v122;
      return sub_100030F38(v97, type metadata accessor for WidgetTodayCard);
    }

LABEL_91:
    swift_once();
    goto LABEL_83;
  }

  v51 = v123;
  sub_10004CC80();
  v52 = v124;
  (*v119)(v124, v132, v13);
  sub_1000308FC(&qword_100065328, &type metadata accessor for WidgetFamily);
  sub_10004CD40();
  sub_10004CD40();
  v53 = *v128;
  (*v128)(v52, v13);
  v53(v51, v13);
  v54 = v136;
  v55 = *(v136 + 16);
  if (v138 == v137)
  {
    if (v55 >= 5)
    {
      if (v55 >= v135)
      {
        v56 = v135;
      }

      else
      {
        v56 = *(v136 + 16);
      }

      v138 = &_swiftEmptyArrayStorage;
      goto LABEL_60;
    }

    v138 = &_swiftEmptyArrayStorage;
    if (!v55)
    {
      v62 = &_swiftEmptyArrayStorage;
      goto LABEL_53;
    }

    v57 = *(v130 + 20);
    v58 = v136 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
    v108 = *(v129 + 72);
    v109 = v58;
    v59 = v110;
    sub_100030894(v58, v110, type metadata accessor for AppIconConfiguration);
    v60 = *(v59 + v57);
    v61 = v60;
    sub_100030F38(v59, type metadata accessor for AppIconConfiguration);
    if (v60)
    {
      sub_10004CD50();
      if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v83 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10004CD80();
      }

      sub_10004CDA0();
      v62 = v138;
      if (v55 == 1)
      {
LABEL_53:
        if (v62 >> 62)
        {
          v55 = sub_10004CF90();
        }

        else
        {
          v55 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v55 != *(v54 + 16))
        {
          if (qword_1000646A8 == -1)
          {
            goto LABEL_83;
          }

          goto LABEL_91;
        }

        goto LABEL_56;
      }
    }

    else
    {
      v62 = &_swiftEmptyArrayStorage;
      if (v55 == 1)
      {
        goto LABEL_53;
      }
    }

    v63 = v110;
    sub_100030894(v109 + v108, v110, type metadata accessor for AppIconConfiguration);
    v64 = *(v63 + v57);
    v65 = v64;
    sub_100030F38(v63, type metadata accessor for AppIconConfiguration);
    if (v64)
    {
      sub_10004CD50();
      if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v84 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10004CD80();
      }

      sub_10004CDA0();
      v62 = v138;
    }

    if (v55 == 2)
    {
      goto LABEL_52;
    }

    v66 = v110;
    sub_100030894(v109 + 2 * v108, v110, type metadata accessor for AppIconConfiguration);
    v67 = *(v66 + v57);
    v68 = v67;
    sub_100030F38(v66, type metadata accessor for AppIconConfiguration);
    if (v67)
    {
      sub_10004CD50();
      if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v85 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10004CD80();
      }

      sub_10004CDA0();
      v62 = v138;
    }

    if (v55 == 3)
    {
LABEL_52:
      v13 = v131;
    }

    else
    {
      v80 = v110;
      sub_100030894(v109 + 3 * v108, v110, type metadata accessor for AppIconConfiguration);
      v81 = *(v80 + v57);
      v82 = v81;
      sub_100030F38(v80, type metadata accessor for AppIconConfiguration);
      v13 = v131;
      if (v81)
      {
        sub_10004CD50();
        if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v86 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_10004CD80();
        }

        sub_10004CDA0();
        v62 = v138;
      }
    }

    goto LABEL_53;
  }

LABEL_56:
  if (v55 >= v135)
  {
    v56 = v135;
  }

  else
  {
    v56 = v55;
  }

  v138 = &_swiftEmptyArrayStorage;
  if (!v55)
  {
    v73 = &_swiftEmptyArrayStorage;
    goto LABEL_68;
  }

LABEL_60:
  v69 = v129;
  v70 = v54 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
  v71 = *(v130 + 20);

  v72 = *(v69 + 72);
  v73 = &_swiftEmptyArrayStorage;
  do
  {
    sub_100030894(v70, v8, type metadata accessor for AppIconConfiguration);
    v74 = *&v8[v71];
    v75 = v74;
    sub_100030F38(v8, type metadata accessor for AppIconConfiguration);
    if (v74)
    {
      sub_10004CD50();
      if (*((v138 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v138 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v76 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_10004CD80();
      }

      sub_10004CDA0();
      v73 = v138;
    }

    v70 += v72;
    --v56;
  }

  while (v56);
  v54 = v136;

  v13 = v131;
LABEL_68:
  v22 = v118;
  v25 = v117;
  if (v73 >> 62)
  {
    v77 = sub_10004CF90();
  }

  else
  {
    v77 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v78 = *(v54 + 16);
  if (v78 >= v135)
  {
    v78 = v135;
  }

  v79 = v77 == v78;
  v28 = v122;
  v36 = v125;
  v35 = v126;
  if (v79)
  {
    goto LABEL_7;
  }

  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v98 = sub_10004CAD0();
  sub_100004D74(v98, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v99 = *(sub_10004C8D0() - 8);
  v100 = *(v99 + 72);
  v101 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C850();
  sub_10004C9E0();

  v102 = sub_10004BB40();
  v103 = *(v102 - 8);
  v104 = v107;
  v105 = v112;
  (*(v103 + 16))(v107, v112, v102);
  sub_100030F38(v105, type metadata accessor for TodayWidgetEntry);
  (*(v103 + 56))(v104, 0, 1, v102);
  v97 = v28;
  return sub_100030F38(v97, type metadata accessor for WidgetTodayCard);
}

uint64_t sub_10002ADB4(uint64_t a1, uint64_t (*a2)(), uint64_t a3, void (*a4)(uint64_t), void (*a5)(uint64_t), uint64_t a6)
{
  v109 = a6;
  v122 = a5;
  v129 = a4;
  v118 = a3;
  v117 = a1;
  v107 = type metadata accessor for Trace();
  v111 = *(v107 - 8);
  v7 = *(v111 + 64);
  v8 = __chkstk_darwin(v107);
  v125 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v9;
  __chkstk_darwin(v8);
  v128 = &v101 - v10;
  v11 = type metadata accessor for TodayWidgetTimelineProvider();
  v110 = *(v11 - 8);
  v12 = *(v110 + 8);
  v13 = __chkstk_darwin(v11 - 8);
  v124 = &v101 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v14;
  __chkstk_darwin(v13);
  v127 = &v101 - v15;
  v121 = sub_10004CCA0();
  v120 = *(v121 - 8);
  v16 = *(v120 + 64);
  v17 = __chkstk_darwin(v121);
  v126 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v18;
  __chkstk_darwin(v17);
  v114 = &v101 - v19;
  v20 = sub_100003650(&qword_100065E88, &qword_10004F8F0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v106 = &v101 - v22;
  v113 = sub_10004C970();
  v108 = *(v113 - 1);
  v23 = *(v108 + 8);
  __chkstk_darwin(v113);
  v101 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10004C8A0();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v27 = sub_10004CAD0();
  v115 = sub_100004D74(v27, qword_100068DB0);
  v28 = sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v29 = *(sub_10004C8D0() - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v104 = *(v29 + 72);
  v105 = v28;
  v31 = swift_allocObject();
  v103 = xmmword_10004DC70;
  *(v31 + 16) = xmmword_10004DC70;
  sub_10004C890();
  v137._countAndFlagsBits = 0x6C656D6954746567;
  v137._object = 0xEC00000028656E69;
  sub_10004C880(v137);
  v102 = sub_10004CB70();
  v131 = v102;
  sub_100007BCC(aBlock);
  sub_10004CC80();
  sub_10004C870();
  sub_100003EA4(aBlock, &qword_100064A10, &qword_10004FB00);
  v138._countAndFlagsBits = 44;
  v138._object = 0xE100000000000000;
  sub_10004C880(v138);
  v116 = a2;
  v32 = sub_10004CC90();
  v131 = &type metadata for Bool;
  LOBYTE(aBlock[0]) = v32 & 1;
  sub_10004C870();
  sub_100003EA4(aBlock, &qword_100064A10, &qword_10004FB00);
  v139._countAndFlagsBits = 0xD00000000000002FLL;
  v139._object = 0x800000010005A5A0;
  sub_10004C880(v139);
  v33 = v117;
  swift_getErrorValue();
  v34 = v135;
  v35 = v136;
  v131 = v136;
  v36 = sub_100007BCC(aBlock);
  (*(*(v35 - 1) + 16))(v36, v34, v35);
  sub_10004C870();
  sub_100003EA4(aBlock, &qword_100064A10, &qword_10004FB00);
  v140._countAndFlagsBits = 0;
  v140._object = 0xE000000000000000;
  sub_10004C880(v140);
  sub_10004C8B0();
  sub_10004C9E0();

  v134 = v33;
  swift_errorRetain();
  sub_100003650(&qword_100065E90, &qword_10004F8F8);
  if (swift_dynamicCast())
  {
    sub_10004CE60();
    sub_10004C950();
    v37 = sub_10004C940();
    v38 = (v118 + *(v107 + 20));
    v39 = *v38;
    v40 = v38[1];
    v41 = *(v38 + 16);
    sub_10004BE60();

    *(swift_allocObject() + 16) = v103;
    sub_10004C890();
    v141._countAndFlagsBits = 0x6C656D6954746567;
    v141._object = 0xEC00000028656E69;
    sub_10004C880(v141);
    v131 = v102;
    sub_100007BCC(aBlock);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(aBlock, &qword_100064A10, &qword_10004FB00);
    v142._countAndFlagsBits = 44;
    v142._object = 0xE100000000000000;
    sub_10004C880(v142);
    v42 = sub_10004CC90();
    v131 = &type metadata for Bool;
    LOBYTE(aBlock[0]) = v42 & 1;
    sub_10004C870();
    sub_100003EA4(aBlock, &qword_100064A10, &qword_10004FB00);
    v143._object = 0x800000010005A5F0;
    v143._countAndFlagsBits = 0xD000000000000017;
    sub_10004C880(v143);
    sub_10004C8B0();
    sub_10004C9E0();

    if (qword_100064718 != -1)
    {
      swift_once();
    }

    v43 = sub_100003650(&qword_100065E98, &unk_10004F900);
    v44 = sub_100004D74(v43, qword_100068EB8);
    v129(v44);
  }

  else
  {
    v46 = v116;

    aBlock[0] = v33;
    swift_errorRetain();
    v47 = v106;
    v48 = v113;
    v49 = swift_dynamicCast();
    v50 = v108;
    v51 = *(v108 + 7);
    if (v49)
    {
      v51(v47, 0, 1, v48);
      v52 = v101;
      (*(v50 + 4))(v101, v47, v48);
      sub_10002BDA0();
      v54 = v126;
      v53 = v127;
      v55 = v121;
      v56 = v120;
      if (v57)
      {
        v58 = [objc_opt_self() defaultService];
        v59 = v114;
        (*(v56 + 16))(v114, v46, v55);
        v60 = v50;
        v61 = (*(v56 + 80) + 16) & ~*(v56 + 80);
        v62 = swift_allocObject();
        (*(v56 + 32))(v62 + v61, v59, v55);
        v132 = sub_10003070C;
        v133 = v62;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10002C434;
        v131 = &unk_1000628D0;
        v63 = _Block_copy(aBlock);

        [v58 reloadWidgetOnConnectivityToEndpoint:0 parameters:0 replyHandler:v63];
        _Block_release(v63);

        (*(v60 + 1))(v101, v113);
      }

      else
      {
        (*(v50 + 1))(v52, v48);
      }
    }

    else
    {
      v51(v47, 1, 1, v48);
      sub_100003EA4(v47, &qword_100065E88, &qword_10004F8F0);
      v54 = v126;
      v53 = v127;
      v55 = v121;
      v56 = v120;
    }

    if (qword_100064730 != -1)
    {
      swift_once();
    }

    v64 = qword_100068ED0;
    sub_100030894(v109, v53, type metadata accessor for TodayWidgetTimelineProvider);
    v65 = v56;
    v66 = v56 + 16;
    v67 = v46;
    v68 = *(v56 + 16);
    v68(v54, v67, v55);
    v69 = v128;
    sub_100030894(v118, v128, type metadata accessor for Trace);
    v70 = *(v64 + 16);

    v71 = sub_10004CA10();

    if ((v71 & 1) == 0 && *(v64 + 24) != 1)
    {
      *(v64 + 24) = 1;
      v72 = objc_autoreleasePoolPush();
      sub_100017608(v64);
      objc_autoreleasePoolPop(v72);
    }

    v118 = *(v64 + 16);
    v116 = type metadata accessor for TodayWidgetTimelineProvider;
    sub_100030894(v53, v124, type metadata accessor for TodayWidgetTimelineProvider);
    v73 = v114;
    v113 = v68;
    v68(v114, v54, v55);
    v115 = type metadata accessor for Trace;
    sub_100030894(v69, v125, type metadata accessor for Trace);
    v74 = v110[80];
    v75 = (v74 + 16) & ~v74;
    v109 = v66;
    v76 = v65;
    v77 = *(v65 + 80);
    v78 = (v119 + v77 + v75) & ~v77;
    v79 = *(v111 + 80);
    v80 = (v123 + v79 + v78) & ~v79;
    v111 = v74 | v77 | v79;
    v110 = v112 + 7;
    v81 = (v112 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
    v82 = swift_allocObject();
    v112 = type metadata accessor for TodayWidgetTimelineProvider;
    v83 = v82 + v75;
    v84 = v82;
    v85 = v124;
    sub_100030ED0(v124, v83, type metadata accessor for TodayWidgetTimelineProvider);
    v107 = *(v76 + 32);
    v86 = v84 + v78;
    v87 = v84;
    v117 = v84;
    v88 = v121;
    (v107)(v86, v73, v121);
    v108 = type metadata accessor for Trace;
    v89 = v87 + v80;
    v90 = v125;
    sub_100030ED0(v125, v89, type metadata accessor for Trace);
    v91 = (v87 + v81);
    v92 = v122;
    *v91 = v129;
    v91[1] = v92;
    (v113)(v73, v126, v88);
    sub_100030894(v127, v85, v116);
    sub_100030894(v128, v90, v115);
    v93 = (v77 + 16) & ~v77;
    v94 = (v123 + v74 + v93) & ~v74;
    v95 = (v119 + v79 + v94) & ~v79;
    v96 = &v110[v95] & 0xFFFFFFFFFFFFFFF8;
    v97 = swift_allocObject();
    (v107)(v97 + v93, v73, v88);
    sub_100030ED0(v124, v97 + v94, v112);
    sub_100030ED0(v125, v97 + v95, v108);
    v98 = (v97 + v96);
    *v98 = v129;
    v98[1] = v92;
    v99 = sub_100007874();
    swift_retain_n();

    v100 = sub_10004CE20();
    v131 = v99;
    v132 = &protocol witness table for OS_dispatch_queue;
    aBlock[0] = v100;
    sub_10004CA30();

    sub_100030F38(v128, type metadata accessor for Trace);
    (*(v120 + 8))(v126, v88);
    sub_100030F38(v127, type metadata accessor for TodayWidgetTimelineProvider);
    return sub_100007B80(aBlock);
  }
}

void sub_10002BDA0()
{
  v0 = sub_10004C960();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = AMSErrorDomain;
    while (v2 < *(v0 + 16))
    {
      v4 = *(v0 + 8 * v2 + 32);
      swift_errorRetain();
      v5 = sub_10004BA80();
      IsEqual = AMSErrorIsEqual();

      if (IsEqual || (v7 = sub_10004BA80(), v8 = AMSErrorIsEqual(), v7, v8))
      {

        goto LABEL_10;
      }

      v9 = sub_10004BA80();
      v10 = v3;
      v11 = AMSErrorIsEqual();

      if ((v11 & 1) == 0 && v1 != ++v2)
      {
        continue;
      }

      goto LABEL_10;
    }

    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

uint64_t sub_10002BEC8(int a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v37 = a1;
  v4 = sub_10004C8A0();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = sub_10004CAD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v13 = sub_100004D74(v8, qword_100068DB0);
  v14 = *(v9 + 16);
  v35 = v13;
  v14(v12);
  v15 = sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v16 = *(sub_10004C8D0() - 8);
  v17 = *(v16 + 72);
  v36 = v8;
  v18 = *(v16 + 80);
  v31 = v17;
  v34 = v15;
  v19 = swift_allocObject();
  v30 = xmmword_10004DC70;
  *(v19 + 16) = xmmword_10004DC70;
  sub_10004C890();
  v42._countAndFlagsBits = 0x6C656D6954746567;
  v42._object = 0xEC00000028656E69;
  sub_10004C880(v42);
  v29 = sub_10004CB70();
  v41 = v29;
  sub_100007BCC(&v39);
  sub_10004CC80();
  sub_10004C870();
  sub_100003EA4(&v39, &qword_100064A10, &qword_10004FB00);
  v43._countAndFlagsBits = 44;
  v43._object = 0xE100000000000000;
  sub_10004C880(v43);
  v33 = a3;
  v20 = sub_10004CC90();
  v41 = &type metadata for Bool;
  LOBYTE(v39) = v20 & 1;
  sub_10004C870();
  sub_100003EA4(&v39, &qword_100064A10, &qword_10004FB00);
  v44._countAndFlagsBits = 0xD000000000000047;
  v44._object = 0x800000010005A630;
  sub_10004C880(v44);
  v21 = 0x64656C696146;
  if (v37)
  {
    v21 = 0x73736563637553;
  }

  v22 = 0xE600000000000000;
  v41 = &type metadata for String;
  if (v37)
  {
    v22 = 0xE700000000000000;
  }

  v39 = v21;
  v40 = v22;
  sub_10004C870();
  sub_100003EA4(&v39, &qword_100064A10, &qword_10004FB00);
  v45._countAndFlagsBits = 46;
  v45._object = 0xE100000000000000;
  sub_10004C880(v45);
  sub_10004C8B0();
  v23 = v36;
  sub_10004C9C0();

  (*(v9 + 8))(v12, v23);
  result = v38;
  if (v38)
  {
    swift_getErrorValue();
    v38 = sub_10004D010();
    v26 = v25;
    *(swift_allocObject() + 16) = v30;
    sub_10004C890();
    v46._countAndFlagsBits = 0x6C656D6954746567;
    v46._object = 0xEC00000028656E69;
    sub_10004C880(v46);
    v41 = v29;
    sub_100007BCC(&v39);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(&v39, &qword_100064A10, &qword_10004FB00);
    v47._countAndFlagsBits = 44;
    v47._object = 0xE100000000000000;
    sub_10004C880(v47);
    v27 = sub_10004CC90();
    v41 = &type metadata for Bool;
    LOBYTE(v39) = v27 & 1;
    sub_10004C870();
    sub_100003EA4(&v39, &qword_100064A10, &qword_10004FB00);
    v48._object = 0x800000010005A680;
    v48._countAndFlagsBits = 0xD000000000000046;
    sub_10004C880(v48);
    v41 = &type metadata for String;
    v39 = v38;
    v40 = v26;
    sub_10004C870();
    sub_100003EA4(&v39, &qword_100064A10, &qword_10004FB00);
    v49._countAndFlagsBits = 46;
    v49._object = 0xE100000000000000;
    sub_10004C880(v49);
    sub_10004C8B0();
    sub_10004C9E0();
  }

  return result;
}

void sub_10002C434(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10002C4AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v35 = a6;
  v36 = a5;
  v32 = a3;
  v8 = sub_10004CC10();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v34 = sub_100003650(&qword_100065E98, &unk_10004F900);
  v10 = *(v34 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v34);
  v13 = &v32 - v12;
  v33 = sub_10004BB40();
  v14 = *(v33 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v33);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  sub_10004BC10();
  sub_10004C900();
  sub_10004CA00();
  v19 = sub_10004BBF0();
  v20 = sub_10004BC00();
  sub_10002C87C(v19, v20, v17);
  sub_10004CE60();
  sub_10004C950();
  v21 = sub_10004C940();
  v22 = (a4 + *(type metadata accessor for Trace() + 20));
  v23 = *v22;
  v24 = v22[1];
  v25 = *(v22 + 16);
  sub_10004BE60();

  sub_100003650(&qword_100065D98, &qword_10004F818);
  v26 = type metadata accessor for TodayWidgetEntry();
  v27 = *(*(v26 - 8) + 72);
  v28 = (*(*(v26 - 8) + 80) + 32) & ~*(*(v26 - 8) + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10004DC70;
  if (qword_100064720 != -1)
  {
    swift_once();
  }

  v30 = sub_100004D74(v26, qword_100065DB8);
  sub_100030894(v30, v29 + v28, type metadata accessor for TodayWidgetEntry);
  sub_10004CBF0();
  sub_1000308FC(&qword_100065E78, type metadata accessor for TodayWidgetEntry);
  sub_10004CCB0();
  v36(v13);

  (*(v10 + 8))(v13, v34);
  return (*(v14 + 8))(v17, v33);
}

void sub_10002C87C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_10004C8A0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_10004BB40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v3;
  v14 = sub_10002F494();
  v15 = exp2f(v14) * a1;
  v16 = a2;
  if (v15 <= a2)
  {
    v17 = v15;
  }

  else
  {
    v17 = a2;
  }

  sub_10004BB30();
  v36 = a3;
  sub_10004BB10();
  (*(v10 + 8))(v13, v9);
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v34 = sub_10004CAD0();
  v33 = sub_100004D74(v34, qword_100068DB0);
  v32 = sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v18 = *(sub_10004C8D0() - 8);
  v31 = *(v18 + 72);
  v19 = *(v18 + 80);
  v20 = swift_allocObject();
  v30 = xmmword_10004DC70;
  *(v20 + 16) = xmmword_10004DC70;
  sub_10004C890();
  v39._countAndFlagsBits = 0x6C656D6954746567;
  v39._object = 0xEC00000028656E69;
  sub_10004C880(v39);
  v35 = sub_10004CB70();
  v38 = v35;
  sub_100007BCC(v37);
  sub_10004CC80();
  sub_10004C870();
  sub_100003EA4(v37, &qword_100064A10, &qword_10004FB00);
  v40._countAndFlagsBits = 44;
  v40._object = 0xE100000000000000;
  sub_10004C880(v40);
  v21 = sub_10004CC90();
  v38 = &type metadata for Bool;
  LOBYTE(v37[0]) = v21 & 1;
  sub_10004C870();
  sub_100003EA4(v37, &qword_100064A10, &qword_10004FB00);
  v41._countAndFlagsBits = 0x207478654E203A29;
  v41._object = 0xEF203A7972746572;
  sub_10004C880(v41);
  v38 = v9;
  v22 = sub_100007BCC(v37);
  (*(v10 + 16))(v22, v36, v9);
  sub_10004C870();
  sub_100003EA4(v37, &qword_100064A10, &qword_10004FB00);
  v42._countAndFlagsBits = 46;
  v42._object = 0xE100000000000000;
  sub_10004C880(v42);
  sub_10004C8B0();
  sub_10004C9E0();

  *(swift_allocObject() + 16) = v30;
  if (v17 >= v16)
  {
    sub_10004C890();
    v46._countAndFlagsBits = 0x6C656D6954746567;
    v46._object = 0xEC00000028656E69;
    sub_10004C880(v46);
    v38 = v35;
    sub_100007BCC(v37);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v37, &qword_100064A10, &qword_10004FB00);
    v47._countAndFlagsBits = 44;
    v47._object = 0xE100000000000000;
    sub_10004C880(v47);
    v27 = sub_10004CC90();
    v38 = &type metadata for Bool;
    LOBYTE(v37[0]) = v27 & 1;
    sub_10004C870();
    sub_100003EA4(v37, &qword_100064A10, &qword_10004FB00);
    v48._countAndFlagsBits = 0xD000000000000040;
    v48._object = 0x800000010005A720;
    sub_10004C880(v48);
    sub_10004C8B0();
    sub_10004C9E0();
  }

  else
  {
    sub_10004C890();
    v43._countAndFlagsBits = 0x6C656D6954746567;
    v43._object = 0xEC00000028656E69;
    sub_10004C880(v43);
    v38 = v35;
    sub_100007BCC(v37);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v37, &qword_100064A10, &qword_10004FB00);
    v44._countAndFlagsBits = 44;
    v44._object = 0xE100000000000000;
    sub_10004C880(v44);
    v23 = sub_10004CC90();
    v38 = &type metadata for Bool;
    LOBYTE(v37[0]) = v23 & 1;
    sub_10004C870();
    sub_100003EA4(v37, &qword_100064A10, &qword_10004FB00);
    v45._countAndFlagsBits = 0xD00000000000001ELL;
    v45._object = 0x800000010005A770;
    sub_10004C880(v45);
    sub_10004C8B0();
    sub_10004C9E0();

    if (__OFADD__(sub_10002F494(), 1))
    {
      __break(1u);
    }

    else
    {
      v24 = [objc_opt_self() standardUserDefaults];
      isa = sub_10004CDC0().super.super.isa;
      v26 = sub_10004CD10();
      [v24 setValue:isa forKey:v26];
    }
  }
}

uint64_t sub_10002CEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v49 = a6;
  v50 = a5;
  v41 = a4;
  v40[3] = a3;
  v6 = sub_10004CC10();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v47 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100003650(&qword_100065E98, &unk_10004F900);
  v46 = *(v48 - 8);
  v9 = *(v46 + 64);
  __chkstk_darwin(v48);
  v44 = v40 - v10;
  v45 = sub_10004BB40();
  v43 = *(v45 - 8);
  v11 = *(v43 + 64);
  __chkstk_darwin(v45);
  v42 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10004C8A0();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v15 = sub_10004CAD0();
  v40[0] = sub_100004D74(v15, qword_100068DB0);
  v16 = sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v17 = *(sub_10004C8D0() - 8);
  v18 = *(v17 + 80);
  v40[1] = *(v17 + 72);
  v40[2] = v16;
  v19 = swift_allocObject();
  v51 = xmmword_10004DC70;
  *(v19 + 16) = xmmword_10004DC70;
  sub_10004C890();
  v56._countAndFlagsBits = 0x6C656D6954746567;
  v56._object = 0xEC00000028656E69;
  sub_10004C880(v56);
  v55 = sub_10004CB70();
  sub_100007BCC(v54);
  sub_10004CC80();
  sub_10004C870();
  sub_100003EA4(v54, &qword_100064A10, &qword_10004FB00);
  v57._countAndFlagsBits = 44;
  v57._object = 0xE100000000000000;
  sub_10004C880(v57);
  v20 = sub_10004CC90();
  v55 = &type metadata for Bool;
  LOBYTE(v54[0]) = v20 & 1;
  sub_10004C870();
  sub_100003EA4(v54, &qword_100064A10, &qword_10004FB00);
  v58._countAndFlagsBits = 0xD00000000000002CLL;
  v58._object = 0x800000010005A6D0;
  sub_10004C880(v58);
  swift_getErrorValue();
  v22 = v52;
  v21 = v53;
  v55 = v53;
  v23 = sub_100007BCC(v54);
  (*(*(v21 - 1) + 16))(v23, v22, v21);
  sub_10004C870();
  sub_100003EA4(v54, &qword_100064A10, &qword_10004FB00);
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  sub_10004C880(v59);
  sub_10004C8B0();
  sub_10004C9E0();

  if (qword_100064730 != -1)
  {
    swift_once();
  }

  v24 = qword_100068ED0;
  *(swift_allocObject() + 16) = v51;
  sub_10004C850();
  sub_10004C9C0();

  sub_100003650(&qword_100065548, &unk_10004EAD0);
  v25 = sub_10004CA90();
  v26 = *(v24 + 16);
  *(v24 + 16) = v25;

  v27 = v42;
  sub_10002C87C(15, 3600, v42);
  sub_10004CE60();
  sub_10004C950();
  v28 = sub_10004C940();
  v29 = (v41 + *(type metadata accessor for Trace() + 20));
  v30 = *v29;
  v31 = v29[1];
  v32 = *(v29 + 16);
  sub_10004BE60();

  sub_100003650(&qword_100065D98, &qword_10004F818);
  v33 = type metadata accessor for TodayWidgetEntry();
  v34 = *(*(v33 - 8) + 72);
  v35 = (*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = v51;
  if (qword_100064720 != -1)
  {
    swift_once();
  }

  v37 = sub_100004D74(v33, qword_100065DB8);
  sub_100030894(v37, v36 + v35, type metadata accessor for TodayWidgetEntry);
  sub_10004CBF0();
  sub_1000308FC(&qword_100065E78, type metadata accessor for TodayWidgetEntry);
  v38 = v44;
  sub_10004CCB0();
  v50(v38);
  (*(v46 + 8))(v38, v48);
  return (*(v43 + 8))(v27, v45);
}

uint64_t sub_10002D62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = a3;
  v89 = a2;
  v83 = sub_10004CCA0();
  v78 = *(v83 - 8);
  v4 = *(v78 + 64);
  __chkstk_darwin(v83);
  v82 = v5;
  v84 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C8A0();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_100003650(&qword_100065E80, &qword_10004F8E8);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v75 - v11;
  v13 = sub_10004CB70();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v77 = (&v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v75 - v18;
  v20 = type metadata accessor for Trace();
  v79 = *(v20 - 8);
  v21 = *(v79 + 64);
  __chkstk_darwin(v20);
  v80 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v22;
  __chkstk_darwin(v23);
  v25 = &v75 - v24;
  v26 = sub_10004CC90();
  v88 = a1;
  sub_10004CC80();
  v27 = *(v9 + 56);
  (*(v14 + 32))(&v12[v27], v19, v13);
  v28 = *(v14 + 88);
  v86 = v13;
  v29 = v28(&v12[v27], v13);
  v90 = v25;
  if (v26)
  {
    if (v29 == enum case for WidgetFamily.systemSmall(_:))
    {
      sub_10004C950();
      sub_10004C940();
      sub_10004BE70();
      sub_10004CE70();
      v30 = sub_10004C940();
      v31 = "TodayWidget:getSnapshot (small, preview)";
      v32 = v25;
      v33 = 40;
LABEL_10:
      sub_10004BE60();

      v34 = &v32[*(v20 + 20)];
      *v34 = v31;
      *(v34 + 1) = v33;
      v34[16] = 2;
      goto LABEL_11;
    }

    if (v29 == enum case for WidgetFamily.systemMedium(_:))
    {
      sub_10004C950();
      sub_10004C940();
      sub_10004BE70();
      sub_10004CE70();
      v30 = sub_10004C940();
      v31 = "TodayWidget:getSnapshot (medium, preview)";
      v32 = v25;
      v33 = 41;
      goto LABEL_10;
    }

    v64 = enum case for WidgetFamily.systemLarge(_:);
    v65 = v29;
    sub_10004C950();
    sub_10004C940();
    sub_10004BE70();
    sub_10004CE70();
    v66 = sub_10004C940();
    if (v65 == v64)
    {
      v67 = "TodayWidget:getSnapshot (large, preview)";
      v68 = 40;
LABEL_18:
      sub_10004BE60();

      v71 = &v25[*(v20 + 20)];
      *v71 = v67;
      *(v71 + 1) = v68;
      v71[16] = 2;
      goto LABEL_11;
    }

    v72 = "TodayWidget:getSnapshot (unknown family, preview)";
    v73 = 49;
  }

  else
  {
    if (v29 == enum case for WidgetFamily.systemSmall(_:))
    {
      sub_10004C950();
      sub_10004C940();
      sub_10004BE70();
      sub_10004CE70();
      v30 = sub_10004C940();
      v31 = "TodayWidget:getSnapshot (small)";
      v32 = v25;
      v33 = 31;
      goto LABEL_10;
    }

    if (v29 == enum case for WidgetFamily.systemMedium(_:))
    {
      sub_10004C950();
      sub_10004C940();
      sub_10004BE70();
      sub_10004CE70();
      v30 = sub_10004C940();
      v31 = "TodayWidget:getSnapshot (medium)";
      v32 = v25;
      v33 = 32;
      goto LABEL_10;
    }

    v69 = enum case for WidgetFamily.systemLarge(_:);
    v70 = v29;
    sub_10004C950();
    sub_10004C940();
    sub_10004BE70();
    sub_10004CE70();
    v66 = sub_10004C940();
    if (v70 == v69)
    {
      v67 = "TodayWidget:getSnapshot (large)";
      v68 = 31;
      goto LABEL_18;
    }

    v72 = "TodayWidget:getSnapshot (unknown family)";
    v73 = 40;
  }

  sub_10004BE60();

  v74 = &v25[*(v20 + 20)];
  *v74 = v72;
  *(v74 + 1) = v73;
  v74[16] = 2;
  (*(v14 + 8))(&v12[v27], v86);
LABEL_11:
  v35 = v14;
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v76 = sub_10004CAD0();
  v75 = sub_100004D74(v76, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v36 = *(sub_10004C8D0() - 8);
  v37 = *(v36 + 72);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C890();
  v94._countAndFlagsBits = 0x7370616E53746567;
  v94._object = 0xEC00000028746F68;
  sub_10004C880(v94);
  v39 = v86;
  v92 = v86;
  sub_100007BCC(v91);
  v40 = v88;
  sub_10004CC80();
  sub_10004C870();
  sub_100003EA4(v91, &qword_100064A10, &qword_10004FB00);
  v95._countAndFlagsBits = 44;
  v95._object = 0xE100000000000000;
  sub_10004C880(v95);
  v41 = sub_10004CC90();
  v92 = &type metadata for Bool;
  LOBYTE(v91[0]) = v41 & 1;
  sub_10004C870();
  sub_100003EA4(v91, &qword_100064A10, &qword_10004FB00);
  v96._object = 0x800000010005AA00;
  v96._countAndFlagsBits = 0xD00000000000002BLL;
  sub_10004C880(v96);
  v42 = v77;
  sub_10004CC80();
  v43 = sub_10004CB60();
  (*(v35 + 8))(v42, v39);
  v92 = &type metadata for Int;
  v91[0] = v43;
  sub_10004C870();
  sub_100003EA4(v91, &qword_100064A10, &qword_10004FB00);
  v97._countAndFlagsBits = 0x766572507369202CLL;
  v97._object = 0xED0000203A776569;
  sub_10004C880(v97);
  v44 = sub_10004CC90();
  v92 = &type metadata for Bool;
  LOBYTE(v91[0]) = v44 & 1;
  sub_10004C870();
  sub_100003EA4(v91, &qword_100064A10, &qword_10004FB00);
  v98._countAndFlagsBits = 0;
  v98._object = 0xE000000000000000;
  sub_10004C880(v98);
  sub_10004C8B0();
  sub_10004C9C0();

  v86 = sub_100032630(v40, 1, v81);
  v45 = v78;
  v81 = *(v78 + 16);
  v47 = v83;
  v46 = v84;
  v81(v84, v40, v83);
  v77 = type metadata accessor for Trace;
  v48 = v80;
  sub_100030894(v90, v80, type metadata accessor for Trace);
  v49 = *(v45 + 80);
  v50 = (v49 + 16) & ~v49;
  v75 = v50;
  v76 = v50 + v82;
  v51 = (v50 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = *(v79 + 80);
  v79 = v49 | v52;
  v53 = swift_allocObject();
  v78 = *(v45 + 32);
  (v78)(v53 + v50, v46, v47);
  v54 = v53;
  v82 = v53;
  v55 = (v53 + v51);
  v56 = v85;
  *v55 = v89;
  v55[1] = v56;
  sub_100030ED0(v48, v54 + ((v52 + v51 + 16) & ~v52), type metadata accessor for Trace);
  v81(v46, v88, v47);
  sub_100030894(v90, v48, v77);
  v57 = (v76 + v52) & ~v52;
  v58 = (v87 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  (v78)(v59 + v75, v46, v47);
  sub_100030ED0(v48, v59 + v57, type metadata accessor for Trace);
  v60 = (v59 + v58);
  *v60 = v89;
  v60[1] = v56;
  v61 = sub_100007874();
  swift_retain_n();
  v62 = sub_10004CE20();
  v92 = v61;
  v93 = &protocol witness table for OS_dispatch_queue;
  v91[0] = v62;
  sub_10004CA30();

  sub_100030F38(v90, type metadata accessor for Trace);
  return sub_100007B80(v91);
}

uint64_t sub_10002E174(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v101 = a3;
  v102 = a5;
  v100 = a4;
  v91 = a2;
  v6 = type metadata accessor for WidgetTodayCard();
  v89 = *(v6 - 8);
  v7 = *(v89 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = (v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = type metadata accessor for TodayWidgetEntry();
  v10 = *(*(v99 - 8) + 64);
  __chkstk_darwin(v99);
  v12 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_10004CAD0();
  v94 = *(v104 - 8);
  v13 = *(v94 + 64);
  __chkstk_darwin(v104);
  v93 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10004C8A0();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v92 = v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v19 = type metadata accessor for TodayWidgetCardCollection();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v103 = (v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_100003650(&qword_100065EB8, qword_1000507B0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v83 - v28;
  v30 = sub_10004BB40();
  v96 = *(v30 - 8);
  v31 = *(v96 + 64);
  __chkstk_darwin(v30);
  v33 = v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BB30();
  v34 = *a1;
  v95 = v33;
  v105 = v33;
  sub_10002EE88(sub_100030E10, v34, v29);
  v97 = v29;
  sub_100030E60(v29, v26);
  v35 = *(v20 + 48);
  v90 = v19;
  v36 = v35(v26, 1, v19);
  v98 = v30;
  if (v36 == 1)
  {
    v37 = v101;
    sub_100003EA4(v26, &qword_100065EB8, qword_1000507B0);
    if (qword_1000646A8 != -1)
    {
      swift_once();
    }

    sub_100004D74(v104, qword_100068DB0);
    sub_100003650(&qword_100064A08, &unk_10004EAB0);
    v38 = *(sub_10004C8D0() - 8);
    v39 = *(v38 + 72);
    v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    *(swift_allocObject() + 16) = xmmword_10004DC70;
    sub_10004C890();
    v108._countAndFlagsBits = 0x7370616E53746567;
    v108._object = 0xEC00000028746F68;
    sub_10004C880(v108);
    v107 = sub_10004CB70();
    sub_100007BCC(v106);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v106, &qword_100064A10, &qword_10004FB00);
    v109._countAndFlagsBits = 44;
    v109._object = 0xE100000000000000;
    sub_10004C880(v109);
    v41 = sub_10004CC90();
    v107 = &type metadata for Bool;
    LOBYTE(v106[0]) = v41 & 1;
    sub_10004C870();
    sub_100003EA4(v106, &qword_100064A10, &qword_10004FB00);
    v110._countAndFlagsBits = 0xD000000000000051;
    v110._object = 0x800000010005AB70;
    sub_10004C880(v110);
    sub_10004C8B0();
    sub_10004C9C0();

    if (qword_100064720 != -1)
    {
      swift_once();
    }

    v42 = sub_100004D74(v99, qword_100065DB8);
    v37(v42);
    v43 = v98;
    v44 = v96;
  }

  else
  {
    v87 = v12;
    sub_100030ED0(v26, v103, type metadata accessor for TodayWidgetCardCollection);
    if (qword_1000646A8 != -1)
    {
      swift_once();
    }

    v45 = v104;
    v88 = sub_100004D74(v104, qword_100068DB0);
    v85 = sub_100003650(&qword_100064A08, &unk_10004EAB0);
    v46 = *(sub_10004C8D0() - 8);
    v83[1] = *(v46 + 72);
    v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v48 = swift_allocObject();
    v84 = xmmword_10004DC70;
    *(v48 + 16) = xmmword_10004DC70;
    sub_10004C890();
    v111._countAndFlagsBits = 0x7370616E53746567;
    v111._object = 0xEC00000028746F68;
    sub_10004C880(v111);
    v83[0] = sub_10004CB70();
    v107 = v83[0];
    sub_100007BCC(v106);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v106, &qword_100064A10, &qword_10004FB00);
    v112._countAndFlagsBits = 44;
    v112._object = 0xE100000000000000;
    sub_10004C880(v112);
    v49 = sub_10004CC90();
    v107 = &type metadata for Bool;
    LOBYTE(v106[0]) = v49 & 1;
    sub_10004C870();
    sub_100003EA4(v106, &qword_100064A10, &qword_10004FB00);
    v113._object = 0x800000010005ABD0;
    v113._countAndFlagsBits = 0xD000000000000039;
    sub_10004C880(v113);
    sub_10004C8B0();
    v50 = v88;
    sub_10004C9C0();

    (*(v94 + 16))(v93, v50, v45);
    v86 = v47;
    v88 = swift_allocObject();
    *(v88 + 16) = v84;
    sub_10004C890();
    v114._countAndFlagsBits = 0x7370616E53746567;
    v114._object = 0xEC00000028746F68;
    sub_10004C880(v114);
    v107 = v83[0];
    sub_100007BCC(v106);
    sub_10004CC80();
    sub_10004C870();
    sub_100003EA4(v106, &qword_100064A10, &qword_10004FB00);
    v115._countAndFlagsBits = 44;
    v115._object = 0xE100000000000000;
    sub_10004C880(v115);
    v51 = sub_10004CC90();
    v107 = &type metadata for Bool;
    LOBYTE(v106[0]) = v51 & 1;
    sub_10004C870();
    sub_100003EA4(v106, &qword_100064A10, &qword_10004FB00);
    v116._countAndFlagsBits = 0x69776F6853203A29;
    v116._object = 0xEB0000000020676ELL;
    sub_10004C880(v116);
    v52 = v103;
    v53 = *v103;
    v54 = *(*v103 + 16);
    if (v54)
    {
      v106[0] = _swiftEmptyArrayStorage;

      sub_100026AE0(0, v54, 0);
      v55 = v106[0];
      v56 = (*(v89 + 80) + 32) & ~*(v89 + 80);
      v91 = v53;
      v57 = v53 + v56;
      v58 = *(v89 + 72);
      do
      {
        sub_100030894(v57, v9, type metadata accessor for WidgetTodayCard);
        v59 = *v9;
        v60 = v9[1];

        sub_100030F38(v9, type metadata accessor for WidgetTodayCard);
        v106[0] = v55;
        v62 = v55[2];
        v61 = v55[3];
        if (v62 >= v61 >> 1)
        {
          sub_100026AE0((v61 > 1), v62 + 1, 1);
          v55 = v106[0];
        }

        v55[2] = v62 + 1;
        v63 = &v55[2 * v62];
        v63[4] = v59;
        v63[5] = v60;
        v57 += v58;
        --v54;
      }

      while (v54);
      v52 = v103;
      v64 = v91;
    }

    else
    {
      v65 = *v103;

      v55 = _swiftEmptyArrayStorage;
      v64 = v53;
    }

    v106[0] = v55;
    sub_100003650(&qword_100065EA0, qword_10004F910);
    sub_1000307A4();
    v66 = sub_10004CCE0();
    v68 = v67;

    v107 = &type metadata for String;
    v106[0] = v66;
    v106[1] = v68;
    sub_10004C860();
    sub_100003EA4(v106, &qword_100064A10, &qword_10004FB00);
    v117._countAndFlagsBits = 544497952;
    v117._object = 0xE400000000000000;
    sub_10004C880(v117);
    v69 = *(v90 + 20);
    v43 = v98;
    v107 = v98;
    v70 = sub_100007BCC(v106);
    v44 = v96;
    v71 = *(v96 + 16);
    v71(v70, v52 + v69, v43);
    sub_10004C870();
    sub_100003EA4(v106, &qword_100064A10, &qword_10004FB00);
    v118._countAndFlagsBits = 0;
    v118._object = 0xE000000000000000;
    sub_10004C880(v118);
    sub_10004C8B0();
    v72 = v104;
    v73 = v93;
    sub_10004C9C0();

    (*(v94 + 8))(v73, v72);
    v74 = v87;
    v71(v87, v52 + v69, v43);
    v75 = (v74 + *(v99 + 20));
    *v75 = v64;
    v75[1] = 0;
    v75[2] = 0;
    v75[3] = 0;
    v101(v74);
    sub_100030F38(v74, type metadata accessor for TodayWidgetEntry);
    sub_100030F38(v52, type metadata accessor for TodayWidgetCardCollection);
  }

  v76 = v102;
  sub_10004CE60();
  sub_10004C950();
  v77 = sub_10004C940();
  v78 = (v76 + *(type metadata accessor for Trace() + 20));
  v79 = *v78;
  v80 = v78[1];
  v81 = *(v78 + 16);
  sub_10004BE60();

  sub_100003EA4(v97, &qword_100065EB8, qword_1000507B0);
  return (*(v44 + 8))(v95, v43);
}

uint64_t sub_10002EE88@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for TodayWidgetCardCollection();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v20 = a3;
    v13 = *(v8 + 72);
    v14 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v13 * (v12 - 1);
    v15 = -v13;
    while (1)
    {
      sub_100030894(v14, v11, type metadata accessor for TodayWidgetCardCollection);
      v16 = a1(v11);
      if (v3)
      {
        return sub_100030F38(v11, type metadata accessor for TodayWidgetCardCollection);
      }

      if (v16)
      {
        break;
      }

      --v12;
      sub_100030F38(v11, type metadata accessor for TodayWidgetCardCollection);
      v14 += v15;
      if (!v12)
      {
        v17 = 1;
        a3 = v20;
        return (*(v8 + 56))(a3, v17, 1, v7);
      }
    }

    a3 = v20;
    sub_100030ED0(v11, v20, type metadata accessor for TodayWidgetCardCollection);
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  return (*(v8 + 56))(a3, v17, 1, v7);
}

uint64_t sub_10002F060(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_10004C8A0();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v8 = sub_10004CAD0();
  sub_100004D74(v8, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v9 = *(sub_10004C8D0() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C890();
  v28._countAndFlagsBits = 0x7370616E53746567;
  v28._object = 0xEC00000028746F68;
  sub_10004C880(v28);
  v27 = sub_10004CB70();
  sub_100007BCC(v26);
  sub_10004CC80();
  sub_10004C870();
  sub_100003EA4(v26, &qword_100064A10, &qword_10004FB00);
  v29._countAndFlagsBits = 44;
  v29._object = 0xE100000000000000;
  sub_10004C880(v29);
  v12 = sub_10004CC90();
  v27 = &type metadata for Bool;
  LOBYTE(v26[0]) = v12 & 1;
  sub_10004C870();
  sub_100003EA4(v26, &qword_100064A10, &qword_10004FB00);
  v30._object = 0x800000010005A5A0;
  v30._countAndFlagsBits = 0xD00000000000002FLL;
  sub_10004C880(v30);
  swift_getErrorValue();
  v27 = v25;
  v13 = sub_100007BCC(v26);
  (*(*(v25 - 1) + 16))(v13);
  sub_10004C870();
  sub_100003EA4(v26, &qword_100064A10, &qword_10004FB00);
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  sub_10004C880(v31);
  sub_10004C8B0();
  sub_10004C9E0();

  sub_10004CE60();
  sub_10004C950();
  v14 = sub_10004C940();
  v15 = (a3 + *(type metadata accessor for Trace() + 20));
  v16 = *v15;
  v17 = v15[1];
  v18 = *(v15 + 16);
  sub_10004BE60();

  v26[0] = a1;
  swift_errorRetain();
  sub_100003650(&qword_100065E90, &qword_10004F8F8);
  if (swift_dynamicCast())
  {
    if (qword_100064728 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for TodayWidgetEntry();
    v20 = sub_100004D74(v19, qword_100065DD0);
    a4(v20);
  }

  else
  {

    if (qword_100064720 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for TodayWidgetEntry();
    v23 = sub_100004D74(v22, qword_100065DB8);
    return (a4)(v23);
  }
}

uint64_t sub_10002F494()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_10004CD10();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_10004CEC0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_100003EA4(v7, &qword_100064A10, &qword_10004FB00);
  }

  return 0;
}

uint64_t sub_10002F5AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100064720 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TodayWidgetEntry();
  v3 = sub_100004D74(v2, qword_100065DB8);
  return sub_100030894(v3, a1, type metadata accessor for TodayWidgetEntry);
}

uint64_t sub_10002F634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10002F6E8;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10002F6E8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10002F7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100030F9C;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_10002F894(uint64_t *a1)
{
  v3 = *(sub_10004CCA0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TodayWidgetTimelineProvider() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for Trace() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_1000283FC(a1, v1 + v4, v1 + v7, v1 + v10, v12, v13);
}

uint64_t sub_10002F9FC()
{
  v1 = sub_10004CCA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for Trace() - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for TodayWidgetTimelineProvider() - 8);
  v11 = *(v10 + 80);
  v12 = (v9 + v11 + 16) & ~v11;
  v13 = *(v10 + 64);
  v14 = v3 | v7 | v11;
  (*(v2 + 8))(v0 + v4, v1);
  v15 = sub_10004BE80();
  (*(*(v15 - 8) + 8))(v0 + v8, v15);
  v16 = *(v0 + v9 + 8);

  v17 = sub_10004BBA0();
  (*(*(v17 - 8) + 8))(v0 + v12, v17);

  return _swift_deallocObject(v0, v12 + v13, v14 | 7);
}

uint64_t sub_10002FC08(uint64_t a1)
{
  v3 = *(sub_10004CCA0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Trace() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for TodayWidgetTimelineProvider() - 8);
  v10 = *(v1 + v8);
  v11 = *(v1 + v8 + 8);
  v12 = v1 + ((v8 + *(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_10002ADB4(a1, (v1 + v4), v1 + v7, v10, v11, v12);
}

uint64_t sub_10002FD54()
{
  v0 = sub_10004BB40();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TodayWidgetEntry();
  sub_100004D10(v5, qword_100065DB8);
  v6 = sub_100004D74(v5, qword_100065DB8);
  sub_10004BAF0();
  result = (*(v1 + 32))(v6, v4, v0);
  v8 = (v6 + *(v5 + 20));
  *v8 = &_swiftEmptyArrayStorage;
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0;
  return result;
}

uint64_t sub_10002FE64()
{
  v0 = sub_10004BB40();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TodayWidgetEntry();
  sub_100004D10(v5, qword_100065DD0);
  v6 = sub_100004D74(v5, qword_100065DD0);
  sub_10004BAF0();
  v7 = sub_10004C210();
  v9 = v8;
  v11 = v10;
  v13 = v12 & 1 | 0x8000000000000000;
  result = (*(v1 + 32))(v6, v4, v0);
  v15 = (v6 + *(v5 + 20));
  *v15 = v7;
  v15[1] = v9;
  v15[2] = v13;
  v15[3] = v11;
  return result;
}

uint64_t sub_10002FFAC()
{
  v1 = *(type metadata accessor for TodayWidgetTimelineProvider() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_10004CCA0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(type metadata accessor for Trace() - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = v2 | v7 | v11;
  v14 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = sub_10004BBA0();
  (*(*(v15 - 8) + 8))(v0 + v3, v15);
  (*(v6 + 8))(v0 + v8, v5);
  v16 = sub_10004BE80();
  (*(*(v16 - 8) + 8))(v0 + v12, v16);
  v17 = *(v0 + v14 + 8);

  return _swift_deallocObject(v0, v14 + 16, v13 | 7);
}

uint64_t sub_1000301B0(uint64_t *a1)
{
  v3 = *(type metadata accessor for TodayWidgetTimelineProvider() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_10004CCA0() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for Trace() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_10002C4AC(a1, v1 + v4, v1 + v7, v1 + v10, v12, v13);
}

uint64_t sub_100030318()
{
  v1 = sub_10004CCA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for TodayWidgetTimelineProvider() - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(type metadata accessor for Trace() - 8);
  v11 = *(v10 + 80);
  v12 = (v8 + v9 + v11) & ~v11;
  v13 = v3 | v7 | v11;
  v14 = (*(v10 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v15 = sub_10004BBA0();
  (*(*(v15 - 8) + 8))(v0 + v8, v15);
  v16 = sub_10004BE80();
  (*(*(v16 - 8) + 8))(v0 + v12, v16);
  v17 = *(v0 + v14 + 8);

  return _swift_deallocObject(v0, v14 + 16, v13 | 7);
}

uint64_t sub_10003051C(uint64_t a1)
{
  v3 = *(sub_10004CCA0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TodayWidgetTimelineProvider() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for Trace() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  v12 = *v11;
  v13 = *(v11 + 8);

  return sub_10002CEF4(a1, v1 + v4, v1 + v7, v1 + v10, v12, v13);
}

uint64_t sub_100030684()
{
  v1 = sub_10004CCA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10003070C(int a1, uint64_t a2)
{
  v5 = *(sub_10004CCA0() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10002BEC8(a1, a2, v6);
}

uint64_t sub_10003078C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000307A4()
{
  result = qword_100065EA8;
  if (!qword_100065EA8)
  {
    sub_100003698(&qword_100065EA0, qword_10004F910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065EA8);
  }

  return result;
}

unint64_t sub_100030808(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100030894(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000308FC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100030944()
{
  v1 = sub_10004CCA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for Trace() - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 16) & ~v7;
  v9 = *(v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = *(v0 + v5 + 8);

  v12 = sub_10004BE80();
  (*(*(v12 - 8) + 8))(v0 + v8, v12);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_100030AB4(uint64_t *a1)
{
  v3 = *(sub_10004CCA0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for Trace() - 8);
  v7 = *(v1 + v5);
  v8 = *(v1 + v5 + 8);
  v9 = v1 + ((v5 + *(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_10002E174(a1, v1 + v4, v7, v8, v9);
}

uint64_t sub_100030B9C()
{
  v1 = sub_10004CCA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(type metadata accessor for Trace() - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = v3 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_10004BE80();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);
  v12 = *(v0 + v10 + 8);

  return _swift_deallocObject(v0, v10 + 16, v9 | 7);
}

uint64_t sub_100030D0C(uint64_t a1)
{
  v3 = *(sub_10004CCA0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Trace() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_10002F060(a1, v1 + v4, v1 + v7, v9);
}

BOOL sub_100030E10()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for TodayWidgetCardCollection() + 20);
  return sub_10004BB20() != -1;
}

uint64_t sub_100030E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003650(&qword_100065EB8, qword_1000507B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100030ED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100030F38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100030FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003650(&qword_100064F90, qword_10004E280);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000310EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100003650(&qword_100064F90, qword_10004E280);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_100003650(&qword_100065BA8, qword_10004F5A8);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for TodayWidgetLargeEntryView()
{
  result = qword_100065F18;
  if (!qword_100065F18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100031258()
{
  sub_100031384(319, &qword_100065008, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100031384(319, &unk_100065C18, type metadata accessor for WidgetTodayCard, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100031384(319, &qword_100065F28, type metadata accessor for WidgetTodayCard, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100031384(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_100031404()
{
  v1 = type metadata accessor for TodayCardListViewItem(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + *(type metadata accessor for TodayWidgetLargeEntryView() + 24));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = type metadata accessor for WidgetTodayCard();
    v9 = *(v8 - 8);
    v10 = v6 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    sub_1000322BC(v10, v5, type metadata accessor for WidgetTodayCard);
    v11 = *(v9 + 56);
    v11(v5, 0, 1, v8);
    sub_100003650(&qword_100065468, &qword_10004EA50);
    v12 = *(v2 + 72);
    v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    if (v7 == 1)
    {
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_10004DC70;
      sub_100032384(v5, v14 + v13, type metadata accessor for TodayCardListViewItem);
    }

    else
    {
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_10004E4F0;
      v20 = v14 + v13;
      sub_1000322BC(v5, v20, type metadata accessor for TodayCardListViewItem);
      sub_1000322BC(v10 + *(v9 + 72), v20 + v12, type metadata accessor for WidgetTodayCard);
      v11((v20 + v12), 0, 1, v8);
      sub_100032324(v5, type metadata accessor for TodayCardListViewItem);
    }
  }

  else
  {
    sub_100003650(&qword_100065468, &qword_10004EA50);
    v15 = *(v2 + 72);
    v16 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10004E4F0;
    v17 = v14 + v16;
    v18 = type metadata accessor for WidgetTodayCard();
    v19 = *(*(v18 - 8) + 56);
    v19(v17, 1, 1, v18);
    v19(v17 + v15, 1, 1, v18);
  }

  return v14;
}

uint64_t sub_100031708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = type metadata accessor for TodayWidgetSmallMediumEntryView();
  v3 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v5 = (&v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = sub_100003650(&qword_100065F88, &qword_10004FA38);
  v6 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v8 = &v39 - v7;
  v41 = type metadata accessor for PlaceholderTodayCardView();
  v9 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100003650(&qword_100065BA8, qword_10004F5A8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v39 - v14;
  v16 = type metadata accessor for WidgetTodayCard();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100003650(&qword_100065F90, &qword_10004FA40);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v39 - v26;
  v28 = *(type metadata accessor for TodayWidgetLargeEntryView() + 20);
  v43 = a1;
  sub_100003E3C(a1 + v28, v15, &qword_100065BA8, qword_10004F5A8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100003EA4(v15, &qword_100065BA8, qword_10004F5A8);
    *v11 = swift_getKeyPath();
    sub_100003650(&qword_100065080, &qword_10004E3B0);
    swift_storeEnumTagMultiPayload();
    v29 = v41;
    v30 = *(v41 + 20);
    *(v11 + v30) = swift_getKeyPath();
    sub_100003650(&qword_100065078, &qword_10004E9D0);
    swift_storeEnumTagMultiPayload();
    v31 = (v11 + *(v29 + 24));
    *v31 = 0u;
    v31[1] = 0u;
    sub_1000322BC(v11, v8, type metadata accessor for PlaceholderTodayCardView);
    swift_storeEnumTagMultiPayload();
    sub_100032274(&qword_100065F98, type metadata accessor for TodayWidgetSmallMediumEntryView);
    sub_100032274(&qword_100065430, type metadata accessor for PlaceholderTodayCardView);
    sub_10004C320();
    v32 = type metadata accessor for PlaceholderTodayCardView;
    v33 = v11;
  }

  else
  {
    sub_100032384(v15, v20, type metadata accessor for WidgetTodayCard);
    v34 = *(v42 + 20);
    sub_1000322BC(v20, v5 + v34, type metadata accessor for WidgetTodayCard);
    (*(v17 + 56))(v5 + v34, 0, 1, v16);
    *v5 = swift_getKeyPath();
    sub_100003650(&qword_100065078, &qword_10004E9D0);
    swift_storeEnumTagMultiPayload();
    sub_1000322BC(v5, v8, type metadata accessor for TodayWidgetSmallMediumEntryView);
    swift_storeEnumTagMultiPayload();
    sub_100032274(&qword_100065F98, type metadata accessor for TodayWidgetSmallMediumEntryView);
    sub_100032274(&qword_100065430, type metadata accessor for PlaceholderTodayCardView);
    sub_10004C320();
    sub_100032324(v5, type metadata accessor for TodayWidgetSmallMediumEntryView);
    v32 = type metadata accessor for WidgetTodayCard;
    v33 = v20;
  }

  sub_100032324(v33, v32);
  v35 = sub_100031404();
  sub_100003E3C(v27, v24, &qword_100065F90, &qword_10004FA40);
  v36 = v44;
  sub_100003E3C(v24, v44, &qword_100065F90, &qword_10004FA40);
  v37 = (v36 + *(sub_100003650(&qword_100065FA0, &unk_10004FAB8) + 48));
  *v37 = 0x4030000000000000;
  v37[1] = v35;
  v37[2] = 0x4024000000000000;

  sub_100003EA4(v27, &qword_100065F90, &qword_10004FA40);

  return sub_100003EA4(v24, &qword_100065F90, &qword_10004FA40);
}

uint64_t sub_100031D64@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100003650(&qword_100064958, &qword_10004FA30);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for PlatterView();
  *(a1 + *(result + 20)) = 1;
  return result;
}

uint64_t sub_100031DCC()
{
  v1 = sub_10004C380();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003650(&qword_100065F60, &qword_10004F9B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v16 - v8;
  *v9 = sub_10004C280();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = sub_100003650(&qword_100065F68, &qword_10004F9B8);
  sub_100031708(v0, &v9[*(v10 + 44)]);
  v11 = &v9[*(v6 + 36)];
  v12 = *(sub_100003650(&qword_1000653E8, &qword_10004F9C0) + 28);
  v13 = enum case for ColorScheme.dark(_:);
  v14 = sub_10004BF00();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = swift_getKeyPath();
  sub_10004C370();
  sub_10004C720();
  type metadata accessor for PlatterView();
  sub_100032184();
  sub_100032274(&qword_100065448, type metadata accessor for PlatterView);
  sub_10004C580();
  (*(v2 + 8))(v5, v1);
  return sub_100003EA4(v9, &qword_100065F60, &qword_10004F9B0);
}

uint64_t sub_1000320A4(uint64_t a1)
{
  v2 = sub_10004BF00();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_10004C060();
}

unint64_t sub_100032184()
{
  result = qword_100065F70;
  if (!qword_100065F70)
  {
    sub_100003698(&qword_100065F60, &qword_10004F9B0);
    sub_100003D30(&qword_100065F78, &qword_100065F80, &qword_10004F9F8);
    sub_100003D30(&qword_100065438, &qword_1000653E8, &qword_10004F9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100065F70);
  }

  return result;
}

uint64_t sub_100032274(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000322BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100032324(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100032384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000323EC()
{
  sub_100003698(&qword_100065F60, &qword_10004F9B0);
  type metadata accessor for PlatterView();
  sub_100032184();
  sub_100032274(&qword_100065448, type metadata accessor for PlatterView);
  return swift_getOpaqueTypeConformance2();
}

void *sub_1000324B0(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10004CF90())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    v15 = _swiftEmptyArrayStorage;
    sub_10004CF50();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = sub_10004CF20();
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v10 = *(a3 + 8 * j + 32);
      }

      v13 = v10;
      a1(&v14, &v13);
      if (v4)
      {
        goto LABEL_19;
      }

      v4 = 0;

      sub_10004CF30();
      v11 = v15[2];
      sub_10004CF60();
      sub_10004CF70();
      sub_10004CF40();
      if (v9 == i)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_100032630(uint64_t a1, int a2, uint64_t a3)
{
  v59 = a2;
  v57 = type metadata accessor for AppStoreWidgetCacheDescriptor();
  v5 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v56 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10004C8A0();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v62 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_10004CC50();
  v10 = *(v60 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v60);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003650(&qword_100065250, &unk_10004E730);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v56 - v16;
  v18 = sub_10004C270();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v61 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10004CB70();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a3;
  v63 = sub_10004BB90();
  v64 = v27;
  v67._countAndFlagsBits = 45;
  v67._object = 0xE100000000000000;
  sub_10004CD30(v67);
  sub_10004CC80();
  v28 = sub_10004CB60();
  v29 = v26;
  v30 = a1;
  (*(v23 + 8))(v29, v22);
  v66 = v28;
  v68._countAndFlagsBits = sub_10004CFE0();
  sub_10004CD30(v68);

  v69._countAndFlagsBits = 45;
  v69._object = 0xE100000000000000;
  sub_10004CD30(v69);
  v31 = sub_10004CC90();
  v32 = (v31 & 1) == 0;
  if (v31)
  {
    v33._countAndFlagsBits = 1702195828;
  }

  else
  {
    v33._countAndFlagsBits = 0x65736C6166;
  }

  if (v32)
  {
    v34 = 0xE500000000000000;
  }

  else
  {
    v34 = 0xE400000000000000;
  }

  v33._object = v34;
  sub_10004CD30(v33);

  v70._countAndFlagsBits = 45;
  v70._object = 0xE100000000000000;
  sub_10004CD30(v70);
  sub_10004CC70();
  swift_getKeyPath();
  v35 = sub_10004CC60();

  (*(v10 + 8))(v13, v60);
  if (v35)
  {
    if (*(v35 + 16))
    {
      (*(v19 + 16))(v17, v35 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v18);
      v36 = 0;
    }

    else
    {
      v36 = 1;
    }

    v37 = v61;

    (*(v19 + 56))(v17, v36, 1, v18);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      (*(v19 + 32))(v37, v17, v18);
      goto LABEL_16;
    }
  }

  else
  {
    (*(v19 + 56))(v17, 1, 1, v18);
    v37 = v61;
  }

  (*(v19 + 104))(v37, enum case for ContentSizeCategory.large(_:), v18);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    sub_100003EA4(v17, &qword_100065250, &unk_10004E730);
  }

LABEL_16:
  sub_100035E0C(&qword_100065FC0, &type metadata accessor for ContentSizeCategory);
  v71._countAndFlagsBits = sub_10004CFE0();
  sub_10004CD30(v71);

  (*(v19 + 8))(v37, v18);
  v39 = v63;
  v38 = v64;
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v40 = sub_10004CAD0();
  sub_100004D74(v40, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v41 = *(sub_10004C8D0() - 8);
  v42 = *(v41 + 72);
  v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C890();
  v72._object = 0x800000010005AC10;
  v72._countAndFlagsBits = 0xD000000000000013;
  sub_10004C880(v72);
  v65 = &type metadata for String;
  v63 = v39;
  v64 = v38;

  sub_10004C870();
  sub_100003EA4(&v63, &qword_100064A10, &qword_10004FB00);
  v73._countAndFlagsBits = 0;
  v73._object = 0xE000000000000000;
  sub_10004C880(v73);
  sub_10004C8B0();
  sub_10004C9C0();

  if (qword_100064740 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v44 = off_100065FB0;
  if (*(off_100065FB0 + 2) && (v45 = sub_10004286C(v39, v38), (v46 & 1) != 0))
  {
    v47 = *(v44[7] + 8 * v45);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_100003650(&qword_100065FC8, &qword_10004FB08);
    v47 = sub_10004CA90();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = off_100065FB0;
    off_100065FB0 = 0x8000000000000000;
    sub_100043604(v47, v39, v38, isUniquelyReferenced_nonNull_native);

    off_100065FB0 = v66;
    swift_endAccess();
    v49 = v57;
    v50 = *(v57 + 20);
    v51 = sub_10004CCA0();
    v52 = v56;
    (*(*(v51 - 8) + 16))(v56 + v50, v30, v51);
    v53 = *(v49 + 28);
    v54 = sub_10004BBA0();
    (*(*(v54 - 8) + 16))(v52 + v53, v58, v54);
    *v52 = v39;
    v52[1] = v38;
    *(v52 + *(v49 + 24)) = v59 & 1;
    sub_10003305C(v52);
    sub_10003568C(v52);
  }

  return v47;
}

Swift::Int sub_100032F0C()
{
  sub_10004D060();
  sub_10004D070(0);
  return sub_10004D0A0();
}

Swift::Int sub_100032F78()
{
  sub_10004D060();
  sub_10004D070(0);
  return sub_10004D0A0();
}

uint64_t sub_100032FC8()
{
  type metadata accessor for Bootstrap();
  swift_allocObject();
  result = sub_10001751C();
  qword_100068ED0 = result;
  return result;
}

uint64_t type metadata accessor for AppStoreWidgetCacheDescriptor()
{
  result = qword_100066080;
  if (!qword_100066080)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10003305C(uint64_t *a1)
{
  v2 = sub_100003650(&qword_100065FD0, &qword_10004FB10);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v60 - v4;
  v6 = type metadata accessor for AppStoreWidgetCacheDescriptor();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v60 - v11;
  if (byte_100065FB8)
  {
    if (qword_100064738 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_10003644C(a1, v5, type metadata accessor for AppStoreWidgetCacheDescriptor);
    sub_100034EB8(0, 0, v5);
    return swift_endAccess();
  }

  if (qword_100064740 != -1)
  {
    swift_once();
  }

  v14 = *a1;
  v13 = a1[1];
  swift_beginAccess();
  v15 = off_100065FB0;
  if (!*(off_100065FB0 + 2))
  {
    return swift_endAccess();
  }

  v16 = sub_10004286C(v14, v13);
  if ((v17 & 1) == 0)
  {
    return swift_endAccess();
  }

  v18 = *(v15[7] + 8 * v16);
  swift_endAccess();
  byte_100065FB8 = 1;
  v19 = objc_opt_self();
  v67 = v18;

  v20 = [v19 standardUserDefaults];
  v21 = sub_10004CD10();
  v22 = [v20 valueForKey:v21];

  if (v22)
  {
    sub_10004CEC0();
    swift_unknownObjectRelease();
  }

  else
  {
    v75 = 0u;
    v76 = 0u;
  }

  v72 = v75;
  v73 = v76;
  if (*(&v76 + 1))
  {
    v24 = swift_dynamicCast();
    if (v24)
    {
      v25 = v70;
    }

    else
    {
      v25 = 0;
    }

    if (v24)
    {
      v26 = v71;
    }

    else
    {
      v26 = 0;
    }

    v65 = v25;
    v66 = v26;
  }

  else
  {
    sub_100003EA4(&v72, &qword_100064A10, &qword_10004FB00);
    v65 = 0;
    v66 = 0;
  }

  v27 = [v19 standardUserDefaults];
  v28 = sub_10004CD10();
  v29 = [v27 valueForKey:v28];

  if (v29)
  {
    sub_10004CEC0();
    swift_unknownObjectRelease();
  }

  else
  {
    v75 = 0u;
    v76 = 0u;
  }

  v72 = v75;
  v73 = v76;
  if (*(&v76 + 1))
  {
    v30 = swift_dynamicCast();
    if (v30)
    {
      v31 = v70;
    }

    else
    {
      v31 = 0;
    }

    if (v30)
    {
      v32 = v71;
    }

    else
    {
      v32 = 0;
    }

    v64 = v32;
  }

  else
  {
    sub_100003EA4(&v72, &qword_100064A10, &qword_10004FB00);
    v31 = 0;
    v64 = 0;
  }

  if (qword_100064730 != -1)
  {
    swift_once();
  }

  v33 = qword_100068ED0;
  v34 = v12;
  sub_10003644C(a1, v12, type metadata accessor for AppStoreWidgetCacheDescriptor);
  v35 = *(v33 + 16);

  v36 = sub_10004CA10();

  if ((v36 & 1) == 0 && *(v33 + 24) != 1)
  {
    *(v33 + 24) = 1;
    v37 = objc_autoreleasePoolPush();
    sub_100017608(v33);
    objc_autoreleasePoolPop(v37);
  }

  v38 = *(v33 + 16);
  v68 = type metadata accessor for AppStoreWidgetCacheDescriptor;
  v69 = v34;
  sub_10003644C(v34, v9, type metadata accessor for AppStoreWidgetCacheDescriptor);
  v39 = *(v7 + 80);
  v40 = (v39 + 16) & ~v39;
  v41 = (v8 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  sub_100035840(v9, v42 + v40);
  v43 = (v42 + v41);
  v61 = v31;
  v60 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v64;
  *v43 = v31;
  v43[1] = v44;
  v45 = (v42 + ((v41 + 23) & 0xFFFFFFFFFFFFFFF8));
  v46 = v65;
  v47 = v66;
  *v45 = v65;
  v45[1] = v47;
  v62 = sub_10004C930();
  *(&v73 + 1) = v62;
  v74 = &protocol witness table for SyncTaskScheduler;
  sub_100007BCC(&v72);

  v63 = v38;

  sub_10004C920();
  sub_100003650(&qword_100065FD8, &qword_10004FB18);
  sub_100035E54(&qword_100065FE0, &qword_100065FD8, &qword_10004FB18);
  sub_10004CA70();

  sub_100007B80(&v72);
  v48 = v60;
  sub_10003644C(v69, v60, v68);
  v49 = swift_allocObject();
  v49[2] = v46;
  v49[3] = v47;
  v49[4] = v61;
  v49[5] = v44;
  v50 = v48;
  sub_100035840(v48, v49 + ((v39 + 48) & ~v39));
  v51 = swift_allocObject();
  *(v51 + 16) = sub_100035A90;
  *(v51 + 24) = v49;
  *(&v73 + 1) = v62;
  v74 = &protocol witness table for SyncTaskScheduler;
  sub_100007BCC(&v72);
  sub_10004C920();
  sub_100003650(&qword_100065FC8, &qword_10004FB08);
  sub_100035E54(&qword_100065FE8, &qword_100065FC8, &qword_10004FB08);
  sub_10004CA70();

  sub_100007B80(&v72);
  v53 = v68;
  v52 = v69;
  sub_10003644C(v69, v50, v68);
  v54 = (v39 + 24) & ~v39;
  v55 = swift_allocObject();
  v56 = v67;
  *(v55 + 16) = v67;
  sub_100035840(v50, v55 + v54);
  sub_10003644C(v52, v50, v53);
  v57 = swift_allocObject();
  *(v57 + 16) = v56;
  sub_100035840(v50, v57 + v54);
  v58 = sub_100007874();
  swift_retain_n();
  v59 = sub_10004CE20();
  *(&v73 + 1) = v58;
  v74 = &protocol witness table for OS_dispatch_queue;
  *&v72 = v59;
  sub_10004CA30();

  sub_10003568C(v52);
  return sub_100007B80(&v72);
}

void *sub_100033908()
{
  result = sub_100035EFC(&_swiftEmptyArrayStorage);
  off_100065FB0 = result;
  return result;
}

uint64_t sub_100033930@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(*v1 + 16))
  {
    v14 = type metadata accessor for AppStoreWidgetCacheDescriptor();
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a1;
    v12 = 1;
    goto LABEL_6;
  }

  v4 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100035640(v3);
    v3 = result;
    v6 = *(result + 16);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  v6 = v3[2];
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_4:
  v7 = v6 - 1;
  v8 = type metadata accessor for AppStoreWidgetCacheDescriptor();
  v15 = *(v8 - 8);
  v9 = v3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v7;
  v3[2] = v7;
  *v1 = v3;
  sub_100035840(v9, a1);
  v10 = *(v15 + 56);
  v11 = a1;
  v12 = 0;
  v13 = v8;
LABEL_6:

  return v10(v11, v12, 1, v13);
}

uint64_t sub_100033A84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a5;
  v36 = a6;
  v33 = a3;
  v34 = a4;
  v8 = sub_10004BBA0();
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  __chkstk_darwin(v8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004CB70();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004BBD0();
  v38 = *(v16 - 8);
  v17 = *(v38 + 64);
  __chkstk_darwin(v16);
  v37 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  sub_10004BC10();
  sub_10004C900();
  sub_10004CA00();
  sub_100011DF8(v39, 3);
  sub_100003650(&qword_100065DB0, qword_10004F830);
  v20 = sub_10004CD60();

  if (v20)
  {
    sub_100003650(&qword_100065FD8, &qword_10004FB18);
    sub_100035EA8();
    swift_allocError();
    return sub_10004CA40();
  }

  else
  {
    v22 = type metadata accessor for AppStoreWidgetCacheDescriptor();
    v29 = v16;
    v23 = v22[5];
    sub_10004CC80();
    sub_10004CB60();
    (*(v12 + 8))(v15, v11);
    v24 = *(a2 + v22[6]);
    sub_10004CC90();
    (*(v30 + 16))(v32, a2 + v22[7], v31);

    v25 = v37;
    sub_10004BBC0();
    sub_10004BCA0();
    sub_10004CA00();
    sub_10004C990();

    sub_10004C910();
    sub_10004C980();

    sub_100035E0C(&qword_100066010, &type metadata accessor for WidgetIntent);
    v26 = v29;
    sub_10004BC90();
    sub_100003650(&qword_100065548, &unk_10004EAD0);
    v39 = v19;

    sub_10004CA50();
    sub_100035E54(&qword_100066018, &qword_100065548, &unk_10004EAD0);
    v27 = sub_10004CA20();

    (*(v38 + 8))(v25, v26);
    return v27;
  }
}

uint64_t sub_100033F14(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v75 = a7;
  v76 = a2;
  v72 = a3;
  v73 = a6;
  v71 = a5;
  v9 = sub_10004C8A0();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v11);
  v70 = &v68 - v12;
  v13 = sub_10004CAD0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v74 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v69 = &v68 - v18;
  v19 = objc_opt_self();
  v20 = [v19 standardUserDefaults];
  v77 = a1;
  sub_10004BDE0();
  if (v21)
  {
    v22 = sub_10004CD10();
  }

  else
  {
    v22 = 0;
  }

  v23 = sub_10004CD10();
  [v20 setObject:v22 forKey:v23];

  swift_unknownObjectRelease();
  v24 = [v19 standardUserDefaults];
  sub_10004BDD0();
  if (v25)
  {
    v26 = sub_10004CD10();
  }

  else
  {
    v26 = 0;
  }

  v27 = v13;
  v28 = sub_10004CD10();
  [v24 setObject:v26 forKey:v28];

  swift_unknownObjectRelease();
  v29 = sub_10004BDE0();
  if (v30)
  {
    if (!a4)
    {
      v33 = v14;
      v35 = v74;
      goto LABEL_21;
    }

    v31 = a4;
    v32 = v72;
    v33 = v14;
    if (v29 == v72 && v30 == v31)
    {

      v34 = v73;
      v35 = v74;
    }

    else
    {
      v36 = sub_10004CFF0();

      v34 = v73;
      v35 = v74;
      if ((v36 & 1) == 0)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v33 = v14;
    v34 = v73;
    v35 = v74;
    v31 = a4;
    v32 = v72;
    if (v31)
    {
      goto LABEL_23;
    }
  }

  v37 = sub_10004BDD0();
  if (!v38)
  {
    if (!v34)
    {
      goto LABEL_34;
    }

    goto LABEL_23;
  }

  if (!v34)
  {
LABEL_21:

    goto LABEL_23;
  }

  if (v37 == v71 && v38 == v34)
  {

LABEL_34:
    if (qword_1000646A8 != -1)
    {
      swift_once();
    }

    v59 = sub_100004D74(v27, qword_100068DB0);
    v35 = v69;
    (*(v33 + 16))(v69, v59, v27);
    sub_100003650(&qword_100064A08, &unk_10004EAB0);
    v60 = *(sub_10004C8D0() - 8);
    v61 = *(v60 + 72);
    v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    *(swift_allocObject() + 16) = xmmword_10004DC70;
    sub_10004C890();
    v86._countAndFlagsBits = 0xD000000000000012;
    v86._object = 0x800000010005ACD0;
    sub_10004C880(v86);
    if (v31)
    {
      v63 = &type metadata for String;
      v64 = v31;
    }

    else
    {
      v32 = 0;
      v64 = 0;
      v63 = 0;
      v81 = 0;
    }

    v79 = v32;
    v80 = v64;
    v82 = v63;

    sub_10004C870();
    sub_100003EA4(&v79, &qword_100064A10, &qword_10004FB00);
    v87._countAndFlagsBits = 0xD000000000000011;
    v87._object = 0x800000010005ACF0;
    sub_10004C880(v87);
    if (v34)
    {
      v65 = &type metadata for String;
      v66 = v34;
      v67 = v71;
    }

    else
    {
      v67 = 0;
      v66 = 0;
      v65 = 0;
      v81 = 0;
    }

    v43 = v77;
    v79 = v67;
    v80 = v66;
    v82 = v65;

    sub_10004C870();
    sub_100003EA4(&v79, &qword_100064A10, &qword_10004FB00);
    v88._countAndFlagsBits = 46;
    v88._object = 0xE100000000000000;
    sub_10004C880(v88);
    goto LABEL_32;
  }

  v58 = sub_10004CFF0();

  if (v58)
  {
    goto LABEL_34;
  }

LABEL_23:
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v39 = sub_100004D74(v27, qword_100068DB0);
  (*(v33 + 16))(v35, v39, v27);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v40 = *(sub_10004C8D0() - 8);
  v41 = *(v40 + 72);
  v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C890();
  v83._countAndFlagsBits = 0xD000000000000035;
  v83._object = 0x800000010005AC90;
  sub_10004C880(v83);
  v43 = v77;
  v44 = sub_10004BDE0();
  if (v45)
  {
    v46 = &type metadata for String;
  }

  else
  {
    v44 = 0;
    v46 = 0;
    v81 = 0;
  }

  v79 = v44;
  v80 = v45;
  v82 = v46;
  sub_10004C870();
  sub_100003EA4(&v79, &qword_100064A10, &qword_10004FB00);
  v84._countAndFlagsBits = 0x206D6F726620;
  v84._object = 0xE600000000000000;
  sub_10004C880(v84);
  v47 = sub_10004BDD0();
  if (v48)
  {
    v49 = &type metadata for String;
  }

  else
  {
    v47 = 0;
    v49 = 0;
    v81 = 0;
  }

  v79 = v47;
  v80 = v48;
  v82 = v49;
  sub_10004C870();
  sub_100003EA4(&v79, &qword_100064A10, &qword_10004FB00);
  v85._countAndFlagsBits = 46;
  v85._object = 0xE100000000000000;
  sub_10004C880(v85);
LABEL_32:
  sub_10004C8B0();
  sub_10004C9C0();

  (*(v33 + 8))(v35, v27);
  v50 = v75 + *(type metadata accessor for AppStoreWidgetCacheDescriptor() + 20);
  type metadata accessor for WidgetArtworkLoader();
  sub_10004C900();
  sub_10004CA00();
  v51 = v79;
  sub_10004BC10();
  sub_10004CA00();
  v52 = v78;
  sub_100003650(&qword_100065FC8, &qword_10004FB08);
  v53 = sub_10004CA90();
  v54 = sub_10004BDB0();
  __chkstk_darwin(v54);
  *(&v68 - 4) = v50;
  *(&v68 - 3) = v51;
  *(&v68 - 2) = v52;
  sub_1000324B0(sub_100035DA0, (&v68 - 6), v54);

  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  *(v55 + 24) = v43;
  sub_100007874();

  v56 = sub_10004CE20();
  type metadata accessor for TodayWidgetCardCollection();
  sub_10004BBB0();

  return v53;
}

uint64_t sub_100034824(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_100003650(&qword_100065FF8, &qword_10004FB28);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for AppStoreWidgetCacheDescriptor();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004CA80();
  if (qword_100064740 != -1)
  {
    swift_once();
  }

  v13 = *a3;
  v14 = a3[1];
  swift_beginAccess();

  sub_100041390(0, v13, v14);
  swift_endAccess();
  byte_100065FB8 = 0;
  if (qword_100064738 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100033930(v7);
  swift_endAccess();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100003EA4(v7, &qword_100065FF8, &qword_10004FB28);
  }

  sub_100035840(v7, v12);
  sub_10003305C(v12);
  return sub_10003568C(v12);
}

uint64_t sub_100034A6C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v24[1] = a2;
  v25 = a3;
  v3 = sub_100003650(&qword_100065FF8, &qword_10004FB28);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v24 - v5;
  v26 = type metadata accessor for AppStoreWidgetCacheDescriptor();
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v26);
  v24[0] = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004C8A0();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  if (qword_1000646A8 != -1)
  {
    swift_once();
  }

  v12 = sub_10004CAD0();
  sub_100004D74(v12, qword_100068DB0);
  sub_100003650(&qword_100064A08, &unk_10004EAB0);
  v13 = *(sub_10004C8D0() - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  *(swift_allocObject() + 16) = xmmword_10004DC70;
  sub_10004C890();
  v30._object = 0x800000010005AC70;
  v30._countAndFlagsBits = 0xD000000000000016;
  sub_10004C880(v30);
  swift_getErrorValue();
  v17 = v27;
  v16 = v28;
  v29[3] = v28;
  v18 = sub_100007BCC(v29);
  (*(*(v16 - 8) + 16))(v18, v17, v16);
  sub_10004C870();
  sub_100003EA4(v29, &qword_100064A10, &qword_10004FB00);
  v31._countAndFlagsBits = 46;
  v31._object = 0xE100000000000000;
  sub_10004C880(v31);
  sub_10004C8B0();
  sub_10004C9E0();

  sub_10004CA60();
  if (qword_100064740 != -1)
  {
    swift_once();
  }

  v19 = *v25;
  v20 = v25[1];
  swift_beginAccess();

  sub_100041390(0, v19, v20);
  swift_endAccess();
  byte_100065FB8 = 0;
  if (qword_100064738 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100033930(v6);
  swift_endAccess();
  if ((*(v7 + 48))(v6, 1, v26) == 1)
  {
    return sub_100003EA4(v6, &qword_100065FF8, &qword_10004FB28);
  }

  v22 = v6;
  v23 = v24[0];
  sub_100035840(v22, v24[0]);
  sub_10003305C(v23);
  return sub_10003568C(v23);
}

unint64_t sub_100034EB8(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_100035418(isUniquelyReferenced_nonNull_native, v15, 1, v5, &qword_100065FF0, &qword_10004FB20, type metadata accessor for AppStoreWidgetCacheDescriptor);
    *v3 = v5;
  }

  result = sub_100035024(v7, a2, 1, a3, type metadata accessor for AppStoreWidgetCacheDescriptor, type metadata accessor for AppStoreWidgetCacheDescriptor, &qword_100065FD0, &qword_10004FB10);
  *v3 = v5;
  return result;
}

unint64_t sub_100035024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t *a7, uint64_t *a8)
{
  v15 = *v8;
  result = a5(0);
  v18 = *(*(result - 8) + 72);
  v19 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v31 = a7;
  v32 = a8;
  v17 = *(*(result - 8) + 80);
  v20 = v15 + ((v17 + 32) & ~v17);
  v21 = v20 + v18 * a1;
  result = swift_arrayDestroy();
  v22 = a3 - v19;
  if (__OFSUB__(a3, v19))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23 = v18 * a3;
  if (v22)
  {
    v24 = *(v15 + 16);
    if (!__OFSUB__(v24, a2))
    {
      result = v21 + v23;
      v25 = v20 + v18 * a2;
      if (v21 + v23 < v25 || result >= v25 + (v24 - a2) * v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v25)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v27 = *(v15 + 16);
      v28 = __OFADD__(v27, v22);
      v29 = v27 + v22;
      if (!v28)
      {
        *(v15 + 16) = v29;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_100003EA4(a4, v31, v32);
  }

  if (v23 < 1)
  {
    return sub_100003EA4(a4, v31, v32);
  }

  result = sub_10003644C(a4, v21, a6);
  if (v18 >= v23)
  {
    return sub_100003EA4(a4, v31, v32);
  }

LABEL_23:
  __break(1u);
  return result;
}

size_t sub_1000351D8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003650(&qword_100066008, qword_10004FB40);
  v10 = *(sub_100003650(&qword_100064A30, &qword_10004DCA8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100003650(&qword_100064A30, &qword_10004DCA8) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_100035418(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100003650(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_10003568C(uint64_t a1)
{
  v2 = type metadata accessor for AppStoreWidgetCacheDescriptor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000356E8()
{
  v1 = (type metadata accessor for AppStoreWidgetCacheDescriptor() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = v1[7];
  v9 = sub_10004CCA0();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = v1[9];
  v11 = sub_10004BBA0();
  (*(*(v11 - 8) + 8))(v6 + v10, v11);
  v12 = *(v0 + v4 + 8);

  v13 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v2 | 7);
}

uint64_t sub_100035840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppStoreWidgetCacheDescriptor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000358A4(uint64_t *a1)
{
  v3 = *(type metadata accessor for AppStoreWidgetCacheDescriptor() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v1 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);

  return sub_100033A84(a1, v1 + v4, v8, v9, v10, v11);
}

uint64_t sub_100035954()
{
  v1 = (type metadata accessor for AppStoreWidgetCacheDescriptor() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 24);

  v6 = *(v0 + 40);

  v7 = *(v0 + v3 + 8);

  v8 = v1[7];
  v9 = sub_10004CCA0();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = v1[9];
  v11 = sub_10004BBA0();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100035A90(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppStoreWidgetCacheDescriptor() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_100033F14(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_100035B18()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100035B50(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_100035B80(uint64_t a1)
{
  v3 = *(type metadata accessor for AppStoreWidgetCacheDescriptor() - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));

  return sub_100034824(a1, v4, v5);
}

uint64_t sub_100035BF8()
{
  v1 = (type metadata accessor for AppStoreWidgetCacheDescriptor() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + v3 + 8);

  v7 = v1[7];
  v8 = sub_10004CCA0();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = v1[9];
  v10 = sub_10004BBA0();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100035D2C(uint64_t a1)
{
  v3 = *(type metadata accessor for AppStoreWidgetCacheDescriptor() - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));

  return sub_100034A6C(a1, v4, v5);
}

uint64_t sub_100035DC4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100035E0C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100035E54(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003698(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100035EA8()
{
  result = qword_100066020;
  if (!qword_100066020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100066020);
  }

  return result;
}

unint64_t sub_100035EFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003650(&unk_100066B10, &unk_1000507A0);
    v3 = sub_10004CFD0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10004286C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100036014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10004CCA0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_10004BBA0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10003614C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_10004CCA0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10004BBA0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100036270()
{
  result = sub_10004CCA0();
  if (v1 <= 0x3F)
  {
    result = sub_10004BBA0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TodayWidgetPresenterUpdateError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TodayWidgetPresenterUpdateError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000363F8()
{
  result = qword_1000660C0;
  if (!qword_1000660C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000660C0);
  }

  return result;
}

uint64_t sub_10003644C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003653C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetTodayCard();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000365BC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for WidgetTodayCard();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10003663C()
{
  v0 = type metadata accessor for WidgetTodayCard();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_1000366C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D1>)
{
  *a2 = sub_10004C280();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = sub_100003650(&qword_100066228, &qword_10004FD98);
  sub_100036870(a1, a2 + *(v6 + 44), a3);
  LOBYTE(a1) = sub_10004C3A0();
  sub_10004BEE0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a2 + *(sub_100003650(&qword_100066230, &qword_10004FDA0) + 36);
  *v15 = a1;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  sub_10004C720();
  sub_10004BF90();
  v16 = (a2 + *(sub_100003650(&qword_100066238, &qword_10004FDA8) + 36));
  *v16 = v23;
  v16[1] = v24;
  v16[2] = v25;
  v17 = sub_10004C720();
  v19 = v18;
  v20 = (a2 + *(sub_100003650(&qword_100066240, &qword_10004FDB0) + 36));
  *v20 = swift_getKeyPath();
  sub_100003650(&qword_100064958, &qword_10004FA30);
  swift_storeEnumTagMultiPayload();
  *(v20 + *(type metadata accessor for PlatterView() + 20)) = 0;
  result = sub_100003650(&qword_100066248, &qword_10004FDF0);
  v22 = (v20 + *(result + 36));
  *v22 = v17;
  v22[1] = v19;
  return result;
}

uint64_t sub_100036870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D1>)
{
  v68 = sub_100003650(&qword_100066250, &qword_10004FDF8);
  v6 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v64 = &v58 - v7;
  v8 = sub_100003650(&qword_100066258, &qword_10004FE00);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v58 - v10;
  v65 = sub_100003650(&qword_100066260, &qword_10004FE08);
  v12 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v66 = &v58 - v13;
  v70 = sub_100003650(&qword_100066268, &qword_10004FE10);
  v14 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70);
  v67 = &v58 - v15;
  v69 = sub_100003650(&qword_100066270, &qword_10004FE18);
  v16 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  __chkstk_darwin(v22);
  v24 = &v58 - v23;
  __chkstk_darwin(v25);
  v27 = &v58 - v26;
  v28 = sub_100003650(&qword_100066278, &qword_10004FE20);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v58 - v33;
  v35 = *(a1 + 16);
  if (v35 == 2)
  {
    v40 = type metadata accessor for TodayCardListViewItem(0);
    v61 = v8;
    v60 = v11;
    v41 = *(v40 - 8);
    v42 = a1 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v62 = v31;
    sub_100039E24(v42, v27, type metadata accessor for TodayCardListViewItem);
    v63 = a2;
    sub_10004C720();
    sub_10004BF90();
    v43 = v24;
    v44 = v34;
    v45 = v69;
    v46 = &v27[*(v69 + 36)];
    v59 = v27;
    v47 = v72;
    *v46 = v71;
    *(v46 + 1) = v47;
    *(v46 + 2) = v73;
    v48 = v43;
    v31 = v62;
    sub_100039E24(v42 + *(v41 + 72), v43, type metadata accessor for TodayCardListViewItem);
    sub_10004C720();
    sub_10004BF90();
    v49 = *(v45 + 36);
    v34 = v44;
    v50 = (v48 + v49);
    v51 = v75;
    *v50 = v74;
    v50[1] = v51;
    v50[2] = v76;
    sub_100003E3C(v27, v21, &qword_100066270, &qword_10004FE18);
    sub_100003E3C(v48, v18, &qword_100066270, &qword_10004FE18);
    v52 = v64;
    sub_100003E3C(v21, v64, &qword_100066270, &qword_10004FE18);
    v53 = sub_100003650(&qword_1000662A8, &unk_10004FE30);
    v54 = v52 + *(v53 + 48);
    *v54 = a3;
    *(v54 + 8) = 0;
    sub_100003E3C(v18, v52 + *(v53 + 64), &qword_100066270, &qword_10004FE18);
    sub_100003EA4(v18, &qword_100066270, &qword_10004FE18);
    sub_100003EA4(v21, &qword_100066270, &qword_10004FE18);
    sub_100003E3C(v52, v66, &qword_100066250, &qword_10004FDF8);
    swift_storeEnumTagMultiPayload();
    sub_100039FAC();
    sub_100003D30(&qword_100066298, &qword_100066250, &qword_10004FDF8);
    v55 = v67;
    sub_10004C320();
    sub_100003E3C(v55, v60, &qword_100066268, &qword_10004FE10);
    swift_storeEnumTagMultiPayload();
    sub_100039EF4();
    sub_10004C320();
    a2 = v63;
    sub_100003EA4(v55, &qword_100066268, &qword_10004FE10);
    sub_100003EA4(v52, &qword_100066250, &qword_10004FDF8);
    sub_100003EA4(v48, &qword_100066270, &qword_10004FE18);
    sub_100003EA4(v59, &qword_100066270, &qword_10004FE18);
  }

  else if (v35 == 1)
  {
    v36 = *(type metadata accessor for TodayCardListViewItem(0) - 8);
    sub_100039E24(a1 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v27, type metadata accessor for TodayCardListViewItem);
    sub_10004C720();
    sub_10004BF90();
    v37 = &v27[*(v69 + 36)];
    v38 = v75;
    *v37 = v74;
    *(v37 + 1) = v38;
    *(v37 + 2) = v76;
    sub_100003E3C(v27, v66, &qword_100066270, &qword_10004FE18);
    swift_storeEnumTagMultiPayload();
    sub_100039FAC();
    sub_100003D30(&qword_100066298, &qword_100066250, &qword_10004FDF8);
    v39 = v67;
    sub_10004C320();
    sub_100003E3C(v39, v11, &qword_100066268, &qword_10004FE10);
    swift_storeEnumTagMultiPayload();
    sub_100039EF4();
    sub_10004C320();
    sub_100003EA4(v39, &qword_100066268, &qword_10004FE10);
    sub_100003EA4(v27, &qword_100066270, &qword_10004FE18);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_100039EF4();
    sub_10004C320();
  }

  sub_100003E3C(v34, v31, &qword_100066278, &qword_10004FE20);
  sub_100003E3C(v31, a2, &qword_100066278, &qword_10004FE20);
  v56 = a2 + *(sub_100003650(&qword_1000662A0, &qword_10004FE28) + 48);
  *v56 = 0;
  *(v56 + 8) = 0;
  sub_100003EA4(v34, &qword_100066278, &qword_10004FE20);
  return sub_100003EA4(v31, &qword_100066278, &qword_10004FE20);
}

__n128 sub_10003717C@<Q0>(_OWORD *a1@<X8>)
{
  v36 = a1;
  v2 = sub_10004CB10();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = type metadata accessor for WidgetTodayCard();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TodayCardListViewItem.Content(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039E24(v1, v18, type metadata accessor for TodayCardListViewItem.Content);
  if ((*(v11 + 48))(v18, 1, v10) != 1)
  {
    sub_10003ACD4(v18, v14, type metadata accessor for WidgetTodayCard);
    if (*(*(v14 + 8) + 16) <= 1uLL)
    {
      v23 = *(v14 + 9);
      if (v23)
      {
        v24 = *(v14 + 9);
      }

      else
      {
        v26 = [objc_opt_self() whiteColor];
        v23 = 0;
      }

      v27 = v23;
      v28 = sub_10004C5B0();
      if (qword_1000646F8 != -1)
      {
        swift_once();
      }

      v29 = xmmword_100068E90;

      v35 = *(&xmmword_100068E90 + 8);
      v34 = unk_100068EA8;
      v30 = sub_10004C3A0();
      v37 = 0;
      *&v46 = v28;
      *(&v46 + 1) = v29;
      v47 = v35;
      *v48 = v34;
      v48[16] = v30;
      v48[17] = 0;

      sub_100003650(&qword_100065D20, &unk_10004F6B0);
      sub_1000267DC();
      sub_10004C320();
      v42 = v39;
      v43 = v40;
      v44 = *v41;
      LOWORD(v45) = *&v41[16];
      v38 = 0;
      BYTE2(v45) = 0;
      sub_100003650(&qword_100066608, &unk_100050120);
      sub_10003B19C();
      sub_10004C320();
    }

    else
    {
      v20 = v1 + *(type metadata accessor for ThumbnailBackgroundColor(0) + 20);
      sub_1000048A4(v9);
      sub_10004CB00();
      LOBYTE(v20) = sub_10004CAE0();
      v21 = *(v3 + 8);
      v21(v6, v2);
      v21(v9, v2);
      if ((v20 & 1) == 0)
      {
        v25 = sub_10004C5E0();
        LOBYTE(v42) = 1;
        *&v46 = v25;
        v48[18] = 1;
        sub_100003650(&qword_100066608, &unk_100050120);
        sub_10003B19C();
        sub_10004C320();
LABEL_14:
        v46 = v39;
        v47 = v40;
        *v48 = *v41;
        *&v48[15] = *&v41[15];
        v38 = 0;
        v48[19] = 0;
        sub_100003650(&qword_1000665F0, &qword_100050118);
        sub_10003B110();
        sub_10004C320();
        sub_100039E8C(v14, type metadata accessor for WidgetTodayCard);
        v46 = v42;
        v47 = v43;
        *v48 = v44;
        *&v48[16] = v45;
        goto LABEL_15;
      }

      v22 = sub_10004C5D0();
      v37 = 1;
      *&v46 = v22;
      v48[17] = 1;

      sub_100003650(&qword_100065D20, &unk_10004F6B0);
      sub_1000267DC();
      sub_10004C320();
      v42 = v39;
      v43 = v40;
      v44 = *v41;
      LOWORD(v45) = *&v41[16];
      v38 = 0;
      BYTE2(v45) = 0;
      sub_100003650(&qword_100066608, &unk_100050120);
      sub_10003B19C();
      sub_10004C320();
    }

    v39 = v46;
    v40 = v47;
    *v41 = *v48;
    *&v41[15] = *&v48[15];
    goto LABEL_14;
  }

  v19 = sub_10004C5E0();
  LOBYTE(v39) = 1;
  *&v42 = v19;
  HIBYTE(v45) = 1;
  sub_100003650(&qword_1000665F0, &qword_100050118);
  sub_10003B110();
  sub_10004C320();
LABEL_15:
  v31 = v47;
  v32 = v36;
  *v36 = v46;
  v32[1] = v31;
  result = *v48;
  v32[2] = *v48;
  *(v32 + 12) = *&v48[16];
  return result;
}

uint64_t sub_100037814@<X0>(uint64_t a1@<X8>)
{
  v147 = a1;
  v145 = sub_100003650(&qword_100066448, &qword_100050000);
  v1 = *(*(v145 - 8) + 64);
  __chkstk_darwin(v145);
  v146 = &v127 - v2;
  v153 = sub_10004CB50();
  v138 = *(v153 - 8);
  v3 = *(v138 + 64);
  __chkstk_darwin(v153);
  v152 = &v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for AppIconConfiguration(0);
  v128 = *(v151 - 8);
  v5 = *(v128 + 64);
  __chkstk_darwin(v151);
  v150 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppIcon(0);
  v149 = *(v7 - 8);
  v8 = *(v149 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_100003650(&qword_100066450, &qword_100050008);
  v11 = *(*(v129 - 8) + 64);
  __chkstk_darwin(v129);
  v131 = &v127 - v12;
  v130 = sub_100003650(&qword_100066458, &qword_100050010);
  v13 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130);
  v132 = &v127 - v14;
  v143 = sub_100003650(&qword_100066460, &qword_100050018);
  v15 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v143);
  v133 = &v127 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v134 = &v127 - v18;
  v140 = sub_100003650(&qword_100066468, &unk_100050020);
  v19 = *(*(v140 - 8) + 64);
  __chkstk_darwin(v140);
  v142 = &v127 - v20;
  v21 = sub_100003650(&qword_100064D90, &unk_10004DFE0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v127 - v23;
  v25 = sub_10004C630();
  v135 = *(v25 - 8);
  v136 = v25;
  v26 = *(v135 + 64);
  __chkstk_darwin(v25);
  v28 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_100003650(&qword_100066470, &qword_100050030);
  v29 = *(*(v139 - 8) + 64);
  __chkstk_darwin(v139);
  v137 = &v127 - v30;
  v144 = sub_100003650(&qword_100066478, &qword_100050038);
  v31 = *(*(v144 - 8) + 64);
  __chkstk_darwin(v144);
  v141 = &v127 - v32;
  v33 = type metadata accessor for WidgetTodayCard();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TodayCardListViewItem.Content(0);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v41 = &v127 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100039E24(v148, v41, type metadata accessor for TodayCardListViewItem.Content);
  if ((*(v34 + 48))(v41, 1, v33) == 1)
  {
    sub_1000129C0();
    sub_10004CE80(1.0, 1.0, 1.0, 0.1);
    v153 = sub_10004C5B0();
    sub_10004C720();
    sub_10004BF90();
    LODWORD(v143) = BYTE8(v186);
    v151 = v187;
    v152 = v186;
    v42 = v146;
    LODWORD(v148) = BYTE8(v187);
    v149 = *(&v188 + 1);
    v150 = v188;
    v159 = BYTE8(v186);
    v158 = BYTE8(v187);
    sub_10004C5C0();
    v43 = sub_10004C5F0();

    sub_10004BF40();
    v44 = v189;
    v45 = v190;
    v46 = v191;
    v47 = v192;
    v48 = v193;
    v49 = v194;
    v50 = sub_10004C720();
    v52 = v51;
    v157 = 0;
    v53 = sub_10004C720();
    *&v163 = v44;
    *(&v163 + 1) = __PAIR64__(v46, v45);
    *&v164 = v47;
    *(&v164 + 1) = v48;
    *&v165 = v49;
    *(&v165 + 1) = v43;
    LOWORD(v166) = 256;
    *(&v166 + 2) = v161;
    WORD3(v166) = v162;
    *(&v166 + 1) = v50;
    *&v167 = v52;
    *(&v167 + 1) = 0x3FE999999999999ALL;
    LOWORD(v168) = 0;
    *(&v168 + 1) = v53;
    v169 = v54;
    *&v160[70] = v167;
    *&v160[86] = v168;
    *&v160[102] = v54;
    *&v160[6] = v163;
    *&v160[22] = v164;
    *&v160[38] = v165;
    *&v160[54] = v166;
    v170 = v44;
    v171 = v45;
    v172 = v46;
    v173 = v47;
    v174 = v48;
    v175 = v49;
    v176 = v43;
    v177 = 256;
    v179 = v162;
    v178 = v161;
    v180 = v50;
    v181 = v52;
    v182 = 0x3FE999999999999ALL;
    v183 = 0;
    v184 = v53;
    v185 = v54;
    sub_100003E3C(&v163, v156, &qword_100066480, &qword_100050040);
    sub_100003EA4(&v170, &qword_100066480, &qword_100050040);
    v55 = *&v160[32];
    *(v42 + 106) = *&v160[48];
    v56 = *&v160[80];
    *(v42 + 122) = *&v160[64];
    *(v42 + 138) = v56;
    *(v42 + 152) = *&v160[94];
    v57 = *&v160[16];
    *(v42 + 58) = *v160;
    *(v42 + 74) = v57;
    v58 = v152;
    *v42 = v153;
    *(v42 + 8) = v58;
    *(v42 + 16) = v143;
    *(v42 + 24) = v151;
    *(v42 + 32) = v148;
    v59 = v149;
    *(v42 + 40) = v150;
    *(v42 + 48) = v59;
    *(v42 + 56) = 256;
    *(v42 + 90) = v55;
    swift_storeEnumTagMultiPayload();
    sub_100003650(&qword_100066488, &qword_100050048);
    sub_10003A58C();
    sub_10003AAE0();
    return sub_10004C320();
  }

  else
  {
    sub_10003ACD4(v41, v37, type metadata accessor for WidgetTodayCard);
    v61 = *(v37 + 7);
    v127 = v37;
    if (v61)
    {
      v152 = v61;
      sub_10004C620();
      v63 = v135;
      v62 = v136;
      (*(v135 + 104))(v28, enum case for Image.ResizingMode.stretch(_:), v136);
      sub_10004C680();

      (*(v63 + 8))(v28, v62);
      sub_10004CB20();
      (*(v138 + 56))(v24, 0, 1, v153);
      v64 = v137;
      sub_10004C670();

      sub_100003EA4(v24, &qword_100064D90, &unk_10004DFE0);
      v65 = v64 + *(sub_100003650(&qword_100064D98, &qword_100050060) + 36);
      *v65 = 0;
      *(v65 + 8) = 257;
      sub_10004C720();
      sub_10004BF90();
      v66 = (v64 + *(sub_100003650(&qword_1000664B8, &qword_100050A40) + 36));
      v67 = v187;
      *v66 = v186;
      v66[1] = v67;
      v66[2] = v188;
      *(v64 + *(sub_100003650(&qword_1000664A8, &unk_100050050) + 36)) = 256;
      sub_10004C5C0();
      v68 = sub_10004C5F0();

      sub_10004BF40();
      v69 = v189;
      v70 = v190;
      LODWORD(v62) = v191;
      v71 = v192;
      v72 = v193;
      v73 = v194;
      v74 = sub_10004C720();
      v76 = v75;
      v159 = 0;
      v77 = sub_10004C720();
      *&v163 = v69;
      *(&v163 + 1) = __PAIR64__(v62, v70);
      *&v164 = v71;
      *(&v164 + 1) = v72;
      *&v165 = v73;
      *(&v165 + 1) = v68;
      LOWORD(v166) = 256;
      v78 = v154;
      *(&v166 + 2) = v154;
      WORD3(v166) = v155;
      *(&v166 + 1) = v74;
      *&v167 = v76;
      *(&v167 + 1) = 0x3FE999999999999ALL;
      LOWORD(v168) = 0;
      *(&v168 + 1) = v77;
      v169 = v79;
      v80 = v64 + *(v139 + 36);
      v81 = v166;
      v82 = v168;
      *(v80 + 64) = v167;
      *(v80 + 80) = v82;
      *(v80 + 96) = v79;
      v83 = v164;
      *v80 = v163;
      *(v80 + 16) = v83;
      *(v80 + 32) = v165;
      *(v80 + 48) = v81;
      v170 = v69;
      v171 = v70;
      v172 = v62;
      v173 = v71;
      v174 = v72;
      v175 = v73;
      v176 = v68;
      v177 = 256;
      v179 = v155;
      v178 = v78;
      v180 = v74;
      v181 = v76;
      v182 = 0x3FE999999999999ALL;
      v183 = 0;
      v184 = v77;
      v185 = v79;
      sub_100003E3C(&v163, v156, &qword_100066480, &qword_100050040);
      sub_100003EA4(&v170, &qword_100066480, &qword_100050040);
      sub_100003E3C(v64, v142, &qword_100066470, &qword_100050030);
      swift_storeEnumTagMultiPayload();
      sub_10003A618();
      sub_10003A7B4();
      v84 = v141;
      sub_10004C320();

      sub_100003EA4(v64, &qword_100066470, &qword_100050030);
    }

    else
    {
      v85 = *(v37 + 8);
      v86 = *(v85 + 2);
      if (v86 >= 6)
      {
        v87 = 6;
      }

      else
      {
        v87 = *(v85 + 2);
      }

      v88 = _swiftEmptyArrayStorage;
      if (v86)
      {
        v170 = _swiftEmptyArrayStorage;
        v89 = v128;
        v90 = &v85[(*(v128 + 80) + 32) & ~*(v128 + 80)];
        v137 = v85;

        sub_100026A38(0, v87, 0);
        v88 = v170;
        v91 = *(v89 + 72);
        v92 = (v138 + 40);
        do
        {
          v93 = v150;
          sub_100039E24(v90, v150, type metadata accessor for AppIconConfiguration);
          sub_100039E24(v93, v10, type metadata accessor for AppIconConfiguration);
          v94 = v152;
          sub_10004CB20();
          sub_100039E8C(v93, type metadata accessor for AppIconConfiguration);
          (*v92)(&v10[*(v151 + 36)], v94, v153);
          v170 = v88;
          v96 = v88[2];
          v95 = v88[3];
          if (v96 >= v95 >> 1)
          {
            sub_100026A38(v95 > 1, v96 + 1, 1);
            v88 = v170;
          }

          v88[2] = v96 + 1;
          sub_10003ACD4(v10, v88 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v96, type metadata accessor for AppIcon);
          v90 += v91;
          --v87;
        }

        while (v87);
      }

      sub_10004C720();
      sub_10004BF90();
      v97 = v186;
      v98 = v187;
      v99 = *(&v188 + 1);
      v153 = v188;
      v159 = BYTE8(v186);
      v158 = BYTE8(v187);
      v100 = v131;
      v101 = &v131[*(v129 + 36)];
      sub_100039E24(v148, v101, type metadata accessor for TodayCardListViewItem.Content);
      v102 = *(type metadata accessor for ThumbnailBackgroundColor(0) + 20);
      *(v101 + v102) = swift_getKeyPath();
      sub_100003650(&qword_100064960, &qword_10004DC30);
      swift_storeEnumTagMultiPayload();
      v103 = sub_10004C720();
      v105 = v104;
      v106 = (v101 + *(sub_100003650(&qword_100066510, &qword_100050078) + 36));
      *v106 = v103;
      v106[1] = v105;
      *v100 = v88;
      *(v100 + 8) = 0x4018000000000000;
      *(v100 + 16) = v97;
      *(v100 + 24) = v159;
      *(v100 + 32) = v98;
      *(v100 + 40) = v158;
      *(v100 + 48) = v153;
      *(v100 + 56) = v99;
      v107 = v132;
      sub_100007C30(v100, v132, &qword_100066450, &qword_100050008);
      *(v107 + *(v130 + 36)) = 256;
      sub_10004C5C0();
      v108 = sub_10004C5F0();
      v153 = v108;

      sub_10004BF40();
      v109 = v189;
      LODWORD(v98) = v190;
      v110 = v191;
      v111 = v192;
      v112 = v193;
      v113 = v194;
      v114 = sub_10004C720();
      v116 = v115;
      v157 = 0;
      v117 = sub_10004C720();
      v152 = v118;
      *&v163 = v109;
      *(&v163 + 1) = __PAIR64__(v110, v98);
      *&v164 = v111;
      *(&v164 + 1) = v112;
      *&v165 = v113;
      *(&v165 + 1) = v108;
      LOWORD(v166) = 256;
      *(&v166 + 1) = v114;
      *&v167 = v116;
      *(&v167 + 1) = 0x3FE999999999999ALL;
      LOWORD(v168) = 0;
      *(&v168 + 1) = v117;
      v119 = v117;
      v169 = v118;
      v120 = v107;
      v121 = v133;
      sub_100007C30(v120, v133, &qword_100066458, &qword_100050010);
      v122 = v121 + *(v143 + 36);
      v123 = v166;
      v124 = v168;
      *(v122 + 64) = v167;
      *(v122 + 80) = v124;
      *(v122 + 96) = v169;
      v125 = v164;
      *v122 = v163;
      *(v122 + 16) = v125;
      *(v122 + 32) = v165;
      *(v122 + 48) = v123;
      v170 = v109;
      v171 = v98;
      v172 = v110;
      v173 = v111;
      v174 = v112;
      v175 = v113;
      v176 = v153;
      v177 = 256;
      v180 = v114;
      v181 = v116;
      v182 = 0x3FE999999999999ALL;
      v183 = 0;
      v184 = v119;
      v185 = v152;
      sub_100003E3C(&v163, v156, &qword_100066480, &qword_100050040);
      sub_100003EA4(&v170, &qword_100066480, &qword_100050040);
      v126 = v134;
      sub_100007C30(v121, v134, &qword_100066460, &qword_100050018);
      sub_100003E3C(v126, v142, &qword_100066460, &qword_100050018);
      swift_storeEnumTagMultiPayload();
      sub_10003A618();
      sub_10003A7B4();
      v84 = v141;
      sub_10004C320();
      sub_100003EA4(v126, &qword_100066460, &qword_100050018);
    }

    sub_100003E3C(v84, v146, &qword_100066478, &qword_100050038);
    swift_storeEnumTagMultiPayload();
    sub_100003650(&qword_100066488, &qword_100050048);
    sub_10003A58C();
    sub_10003AAE0();
    sub_10004C320();
    sub_100003EA4(v84, &qword_100066478, &qword_100050038);
    return sub_100039E8C(v127, type metadata accessor for WidgetTodayCard);
  }
}