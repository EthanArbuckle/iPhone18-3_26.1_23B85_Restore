uint64_t sub_23849D6BC(uint64_t a1)
{
  v2 = sub_23875C6D0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v40[-v9];
  v11 = sub_23875B940();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23875ED50();
  v46 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = type metadata accessor for RelatedEmailContents(0);
  sub_23843981C(a1 + v16[7], v10, &qword_27DF0D040, &qword_2387676A0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_238439884(v10, &qword_27DF0D040, &qword_2387676A0);
  }

  else
  {
    v43 = v6;
    v44 = v3;
    v45 = v2;
    (*(v12 + 32))(v15, v10, v11);
    v41 = *(a1 + v16[13]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2387632F0;
    *(inited + 32) = sub_23875EA50();
    v18 = 1818845549;
    if (*(a1 + v16[12]))
    {
      v18 = 0x63697373616C63;
    }

    v19 = 0xE400000000000000;
    if (*(a1 + v16[12]))
    {
      v19 = 0xE700000000000000;
    }

    *(inited + 40) = v18;
    *(inited + 48) = v19;
    v20 = sub_23854B138(inited);
    v42 = a1;
    v21 = v20;
    swift_setDeallocating();
    sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_238763300;
    v23 = *MEMORY[0x277D383D8];
    *(v22 + 32) = *MEMORY[0x277D383D8];
    v24 = *MEMORY[0x277D38428];
    *(v22 + 40) = sub_23875EA80();
    *(v22 + 48) = v25;
    v26 = *MEMORY[0x277D38390];
    *(v22 + 56) = *MEMORY[0x277D38390];
    *(v22 + 64) = 0x616D456B63696C63;
    v27 = *MEMORY[0x277D384B8];
    *(v22 + 72) = 0xEA00000000006C69;
    *(v22 + 80) = v27;
    *(v22 + 88) = sub_238449A8C(v41);
    *(v22 + 96) = v28;
    v29 = v23;
    v30 = v26;
    v31 = v27;
    v32 = sub_23854B138(v22);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
    swift_arrayDestroy();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v32;
    sub_2385C33E4(v21, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v47);

    v34 = *MEMORY[0x277D38548];
    v35 = objc_opt_self();
    type metadata accessor for PKAnalyticsKey(0);
    sub_23849CDC8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
    v36 = sub_23875E910();

    [v35 subject:v34 sendEvent:v36];

    v37 = v42 + v16[14];
    v38 = v43;
    sub_2384D51B0(v43);
    sub_23875C6A0();
    (*(v44 + 8))(v38, v45);
    (*(v12 + 8))(v15, v11);
  }
}

void *sub_23849DC4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875CE60();
  v10 = 0;
  sub_23849DD84(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_23843981C(__dst, v7, &qword_27DF0B1C0, &qword_238767B88);
  sub_238439884(v12, &qword_27DF0B1C0, &qword_238767B88);

  memcpy(&v9[7], __dst, 0x1E8uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x1EFuLL);
}

uint64_t sub_23849DD84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for RelatedEmailContents(0);
  v5 = v4[10];
  v6 = (a1 + v4[9]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(a1 + v5);
  v10 = *(a1 + v5 + 8);
  v11 = (a1 + v4[11]);
  v12 = *v11;
  v13 = v11[1];

  sub_2384A4C58(v7, v8, v9, v10, v12, v13, &v27);
  v14 = sub_23875D030();
  LOBYTE(v25[0]) = 1;
  sub_23849E080(a1, __src);
  memcpy(__dst, __src, 0x139uLL);
  memcpy(v35, __src, 0x139uLL);
  sub_23843981C(__dst, v37, &qword_27DF0B1C8, &qword_238767B90);
  sub_238439884(v35, &qword_27DF0B1C8, &qword_238767B90);
  memcpy(&v33[7], __dst, 0x139uLL);
  v15 = sub_23875D7B0();
  sub_23875C3D0();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  LOBYTE(__src[0]) = 0;
  LODWORD(v8) = sub_23875D420();
  v36[2] = v29;
  v36[3] = v30;
  v36[4] = v31;
  v36[5] = v32;
  v36[0] = v27;
  v36[1] = v28;
  v26[0] = v27;
  v26[1] = v28;
  v26[2] = v29;
  v26[3] = v30;
  v26[4] = v31;
  v26[5] = v32;
  v37[0] = v14;
  v37[1] = 0;
  LOBYTE(v37[2]) = 1;
  memcpy(&v37[2] + 1, v33, 0x140uLL);
  LOBYTE(v37[43]) = v15;
  v37[44] = v17;
  v37[45] = v19;
  v37[46] = v21;
  v37[47] = v23;
  LOBYTE(v37[48]) = 0;
  HIDWORD(v37[48]) = v8;
  memcpy(&v26[6], v37, 0x188uLL);
  memcpy(a2, v26, 0x1E8uLL);
  __src[0] = v14;
  __src[1] = 0;
  LOBYTE(__src[2]) = 1;
  memcpy(&__src[2] + 1, v33, 0x140uLL);
  v39 = v15;
  v40 = v17;
  v41 = v19;
  v42 = v21;
  v43 = v23;
  v44 = 0;
  v45 = v8;
  sub_2384A61B4(v36, v25);
  sub_23843981C(v37, v25, &qword_27DF0B1D0, &qword_238767B98);
  sub_238439884(__src, &qword_27DF0B1D0, &qword_238767B98);
  v25[2] = v29;
  v25[3] = v30;
  v25[4] = v31;
  v25[5] = v32;
  v25[0] = v27;
  v25[1] = v28;
  sub_2384A61EC(v25);
}

uint64_t sub_23849E080@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_23875CE60();
  LOBYTE(v71[0]) = 1;
  sub_23849E7D8(a1, v70);
  v81 = *&v70[128];
  v82 = *&v70[144];
  v83 = *&v70[160];
  v77 = *&v70[64];
  v78 = *&v70[80];
  v79 = *&v70[96];
  v80 = *&v70[112];
  v73 = *v70;
  v74 = *&v70[16];
  v75 = *&v70[32];
  v76 = *&v70[48];
  v85[8] = *&v70[128];
  v85[9] = *&v70[144];
  v85[10] = *&v70[160];
  v85[4] = *&v70[64];
  v85[5] = *&v70[80];
  v85[6] = *&v70[96];
  v85[7] = *&v70[112];
  v85[0] = *v70;
  v85[1] = *&v70[16];
  v84 = *&v70[176];
  v86 = *&v70[176];
  v85[2] = *&v70[32];
  v85[3] = *&v70[48];
  sub_23843981C(&v73, &v87, &qword_27DF0B1D8, &qword_238767BA0);
  sub_238439884(v85, &qword_27DF0B1D8, &qword_238767BA0);
  *&v70[135] = v81;
  *&v70[151] = v82;
  *&v70[167] = v83;
  *&v70[183] = v84;
  *&v70[71] = v77;
  *&v70[87] = v78;
  *&v70[103] = v79;
  *&v70[119] = v80;
  *&v70[7] = v73;
  *&v70[23] = v74;
  *&v70[39] = v75;
  *&v70[55] = v76;
  *(&v88[8] + 1) = *&v70[128];
  *(&v88[9] + 1) = *&v70[144];
  *(&v88[10] + 1) = *&v70[160];
  *(&v88[10] + 12) = *&v70[171];
  *(&v88[4] + 1) = *&v70[64];
  *(&v88[5] + 1) = *&v70[80];
  *(&v88[6] + 1) = *&v70[96];
  *(&v88[7] + 1) = *&v70[112];
  *(v88 + 1) = *v70;
  *(&v88[1] + 1) = *&v70[16];
  *(&v88[2] + 1) = *&v70[32];
  v87 = v3;
  LOBYTE(v88[0]) = v71[0];
  *(&v88[3] + 1) = *&v70[48];
  v4 = a1[3];
  if (!v4)
  {
    v54 = 0;
    v55 = 0;
    v48 = 0;
    v52 = 0;
    v53 = 0;
    v50 = 0;
    v18 = a1[5];
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_7:
    v36 = 0;
    v51 = 0;
    v45 = 0;
    v46 = 0;
    v44 = 0;
    v49 = 0;
    goto LABEL_8;
  }

  *v70 = a1[2];
  *&v70[8] = v4;
  sub_2384397A8();

  v5 = sub_23875DAA0();
  v7 = v6;
  v9 = v8;
  sub_23875D970();
  v10 = sub_23875DA60();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  sub_2384397FC(v5, v7, v9 & 1);

  KeyPath = swift_getKeyPath();
  v55 = v10;
  v48 = v12;
  v53 = v14 & 1;
  sub_23843980C(v10, v12, v14 & 1);
  v54 = v16;

  v50 = KeyPath;

  v52 = 1;
  v18 = a1[5];
  if (!v18)
  {
    goto LABEL_7;
  }

LABEL_5:
  *v70 = a1[4];
  *&v70[8] = v18;
  sub_2384397A8();

  v19 = sub_23875DAA0();
  v21 = v20;
  v23 = v22;
  sub_23875D970();
  v24 = sub_23875DA60();
  v26 = v25;
  v28 = v27;

  sub_2384397FC(v19, v21, v23 & 1);

  *v70 = sub_23875D440();
  v29 = sub_23875DA20();
  v31 = v30;
  LOBYTE(v21) = v32;
  v34 = v33;
  sub_2384397FC(v24, v26, v28 & 1);

  v35 = swift_getKeyPath();
  v36 = v29;
  v51 = v31;
  v46 = v21 & 1;
  sub_23843980C(v29, v31, v21 & 1);
  v44 = v34;

  v45 = v35;

  v49 = 1;
LABEL_8:
  v65 = v88[8];
  v66 = v88[9];
  *v67 = v88[10];
  *&v67[12] = *(&v88[10] + 12);
  v62 = v88[5];
  v63 = v88[6];
  v64 = v88[7];
  v58 = v88[1];
  v59 = v88[2];
  v60 = v88[3];
  v61 = v88[4];
  v56 = v87;
  v57 = v88[0];
  v68[9] = v88[8];
  v68[10] = v88[9];
  v69[0] = v88[10];
  *(v69 + 12) = *(&v88[10] + 12);
  v68[6] = v88[5];
  v68[7] = v88[6];
  v68[8] = v88[7];
  v68[2] = v88[1];
  v68[3] = v88[2];
  v68[4] = v88[3];
  v68[5] = v88[4];
  v68[0] = v87;
  v68[1] = v88[0];
  *&v70[160] = v88[9];
  *&v70[176] = v88[10];
  *&v70[188] = *(&v88[10] + 12);
  *&v70[96] = v88[5];
  *&v70[112] = v88[6];
  *&v70[128] = v88[7];
  *&v70[144] = v88[8];
  *&v70[32] = v88[1];
  *&v70[48] = v88[2];
  *&v70[64] = v88[3];
  *&v70[80] = v88[4];
  *v70 = v87;
  *&v70[16] = v88[0];
  sub_23843981C(&v87, v71, &qword_27DF0B1E0, &qword_238767BA8);
  sub_23843981C(v68, v71, &qword_27DF0B1E0, &qword_238767BA8);
  sub_2384A621C(v55, v48, v53, v54);
  sub_2384A621C(v36, v51, v46, v44);
  sub_2384A626C(v55, v48, v53, v54);
  sub_2384A626C(v36, v51, v46, v44);
  sub_238439884(&v87, &qword_27DF0B1E0, &qword_238767BA8);
  v37 = *&v70[176];
  *(a2 + 160) = *&v70[160];
  *(a2 + 176) = v37;
  *(a2 + 192) = *&v70[192];
  v38 = *&v70[112];
  *(a2 + 96) = *&v70[96];
  *(a2 + 112) = v38;
  v39 = *&v70[144];
  *(a2 + 128) = *&v70[128];
  *(a2 + 144) = v39;
  v40 = *&v70[48];
  *(a2 + 32) = *&v70[32];
  *(a2 + 48) = v40;
  v41 = *&v70[80];
  *(a2 + 64) = *&v70[64];
  *(a2 + 80) = v41;
  v42 = *&v70[16];
  *a2 = *v70;
  *(a2 + 16) = v42;
  *(a2 + 208) = v55;
  *(a2 + 216) = v48;
  *(a2 + 224) = v53;
  *(a2 + 232) = v54;
  *(a2 + 240) = v50;
  *(a2 + 248) = v52;
  *(a2 + 256) = 0;
  *(a2 + 264) = v36;
  *(a2 + 272) = v51;
  *(a2 + 280) = v46;
  *(a2 + 288) = v44;
  *(a2 + 296) = v45;
  *(a2 + 304) = v49;
  *(a2 + 312) = 0;
  sub_2384A626C(v36, v51, v46, v44);
  sub_2384A626C(v55, v48, v53, v54);
  v71[9] = v65;
  v71[10] = v66;
  v72[0] = *v67;
  *(v72 + 12) = *&v67[12];
  v71[6] = v62;
  v71[7] = v63;
  v71[8] = v64;
  v71[2] = v58;
  v71[3] = v59;
  v71[4] = v60;
  v71[5] = v61;
  v71[0] = v56;
  v71[1] = v57;
  sub_238439884(v71, &qword_27DF0B1E0, &qword_238767BA8);
}

uint64_t sub_23849E7D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v70 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = &v69 - v5;
  v82 = sub_23875BA10();
  v77 = *(v82 - 8);
  v6 = *(v77 + 64);
  MEMORY[0x28223BE20](v82);
  v76 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_23875BA40();
  v74 = *(v75 - 8);
  v8 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v73 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23875ED50();
  v80 = sub_23875ED40();
  v69 = v10;
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = a1[1];
  v92 = *a1;
  v93 = v11;
  v71 = sub_2384397A8();

  v12 = sub_23875DAA0();
  v14 = v13;
  v81 = a1;
  v16 = v15;
  sub_23875D820();
  v17 = sub_23875DA60();
  v19 = v18;
  v21 = v20;

  sub_2384397FC(v12, v14, v16 & 1);

  v22 = sub_23875DA50();
  v84 = v23;
  v85 = v22;
  v78 = v24;
  v86 = v25;
  sub_2384397FC(v17, v19, v21 & 1);

  KeyPath = swift_getKeyPath();
  v72 = type metadata accessor for RelatedEmailContents(0);
  v26 = *(v72 + 32);
  v27 = v73;
  sub_23875BA30();
  v28 = v76;
  sub_23875BA00();
  v29 = sub_23875BC00();
  v31 = v30;
  (*(v77 + 8))(v28, v82);
  (*(v74 + 8))(v27, v75);
  v92 = v29;
  v93 = v31;
  v32 = sub_23875DAA0();
  v34 = v33;
  LOBYTE(v28) = v35;
  sub_23875D970();
  v36 = sub_23875DA60();
  v38 = v37;
  v40 = v39;

  sub_2384397FC(v32, v34, v28 & 1);

  LODWORD(v92) = sub_23875D440();
  v77 = sub_23875DA20();
  v76 = v41;
  LODWORD(v74) = v42;
  v82 = v43;
  sub_2384397FC(v36, v38, v40 & 1);

  v75 = swift_getKeyPath();
  v44 = v79;
  sub_23843981C(v81 + *(v72 + 28), v79, &qword_27DF0D040, &qword_2387676A0);
  v45 = sub_23875B940();
  LODWORD(v28) = (*(*(v45 - 8) + 48))(v44, 1, v45);
  sub_238439884(v44, &qword_27DF0D040, &qword_2387676A0);
  if (v28 == 1)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v81 = 0;
    LODWORD(v79) = 0;
  }

  else
  {
    v50 = sub_23875D020();
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v51 = sub_23875E0D0();
    v52 = sub_23875D970();
    v49 = swift_getKeyPath();
    LODWORD(v79) = sub_23875D430();

    v48 = v51;

    v81 = v52;

    v47 = 1;
    v46 = v50;
  }

  LOBYTE(v92) = v78 & 1;
  v91 = v78 & 1;
  v90 = 0;
  v89 = 1;
  v53 = v74 & 1;
  v88 = v74 & 1;
  v78 = v74 & 1;
  v87 = 0;
  sub_23843980C(v85, v84, v92);

  v54 = KeyPath;

  v55 = v77;
  v56 = v76;
  sub_23843980C(v77, v76, v53);

  v57 = v75;

  v58 = v81;
  v59 = v49;
  v60 = v79;
  sub_2384A62BC(v46, 0, v47, v48);
  sub_2384A630C(v46, 0, v47, v48);
  v61 = v91;
  v62 = v90;
  v63 = v89;
  v64 = v88;
  v65 = v87;
  v66 = v84;
  v67 = v70;
  *v70 = v85;
  v67[1] = v66;
  *(v67 + 16) = v61;
  v67[3] = v86;
  v67[4] = v54;
  v67[5] = 1;
  *(v67 + 48) = v62;
  v67[7] = 0;
  *(v67 + 64) = v63;
  v67[9] = v55;
  v67[10] = v56;
  *(v67 + 88) = v64;
  v67[12] = v82;
  v67[13] = v57;
  v67[14] = 1;
  *(v67 + 120) = v65;
  v67[16] = v46;
  v67[17] = 0;
  v67[18] = v47;
  v67[19] = v48;
  v67[20] = v59;
  v67[21] = v58;
  *(v67 + 44) = v60;
  sub_2384A630C(v46, 0, v47, v48);
  sub_2384397FC(v55, v56, v78);

  sub_2384397FC(v85, v84, v92);
}

uint64_t sub_23849EF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v25 = a2;
  v5 = sub_23875C950();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B198, &qword_238767B70);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  sub_2384A59C4(v4, &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RelatedEmailContents);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  sub_2384A5960(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v26 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B1A0, &qword_238767B78);
  sub_23843A3E8(&qword_27DF0B1A8, &qword_27DF0B1A0, &qword_238767B78);
  sub_23875E200();
  sub_23875C940();
  sub_23843A3E8(&qword_27DF0B1B0, &qword_27DF0B198, &qword_238767B70);
  sub_23849CDC8(&qword_27DF0A778, MEMORY[0x277CDDB18]);
  v20 = v25;
  sub_23875DB30();
  (*(v6 + 8))(v10, v5);
  (*(v14 + 8))(v17, v13);
  v21 = sub_23875D000();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B1B8, &qword_238767B80);
  v23 = (v20 + *(result + 36));
  *v23 = v21;
  v23[1] = sub_23849EF60;
  v23[2] = 0;
  return result;
}

uint64_t sub_23849F2F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A890, &qword_238766090);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v37 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B200, &qword_238767DA8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B208, &qword_238767DB0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = (v37 - v14);
  v38 = *(v1 + 16);
  *&v39 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B210, &qword_238767DB8);
  sub_23875E1B0();
  v16 = v42;
  if (v42 == 255)
  {
    v37[0] = sub_23875E020();
    KeyPath = swift_getKeyPath();
    v24 = swift_allocObject();
    v25 = *(v2 + 48);
    v24[3] = *(v2 + 32);
    v24[4] = v25;
    v26 = *(v2 + 80);
    v24[5] = *(v2 + 64);
    v24[6] = v26;
    v27 = *(v2 + 16);
    v24[1] = *v2;
    v24[2] = v27;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A880, &qword_238766080) + 36);
    v37[1] = a1;
    v29 = (v7 + v28);
    v30 = *(sub_23875C6E0() + 20);
    sub_2384A61B4(v2, &v38);
    sub_23875ED60();
    *v29 = &unk_238767DF8;
    v29[1] = v24;
    v31 = v37[0];
    *v7 = KeyPath;
    v7[1] = v31;
    v32 = *v2;
    v33 = *(v2 + 8);
    sub_23875E4A0();
    sub_23875C5C0();
    v34 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A888, &qword_238766088) + 36));
    v35 = v39;
    *v34 = v38;
    v34[1] = v35;
    v34[2] = v40;
    *(v7 + *(v4 + 36)) = 257;
    sub_23843981C(v7, v11, &qword_27DF0A890, &qword_238766090);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF0B218, &qword_27DF0B208, &qword_238767DB0);
    sub_2384A6738(&qword_27DF0A8E0, &qword_27DF0A890, &qword_238766090, sub_23847E248);
    sub_23875D1B0();
    v20 = v7;
    v21 = &qword_27DF0A890;
    v22 = &qword_238766090;
  }

  else
  {
    v17 = v41;
    *v15 = sub_23875E490();
    v15[1] = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B220, &qword_238767E00);
    sub_23849F734(v2, v17, v16 & 1, v15 + *(v19 + 44));
    sub_23843981C(v15, v11, &qword_27DF0B208, &qword_238767DB0);
    swift_storeEnumTagMultiPayload();
    sub_23843A3E8(&qword_27DF0B218, &qword_27DF0B208, &qword_238767DB0);
    sub_2384A6738(&qword_27DF0A8E0, &qword_27DF0A890, &qword_238766090, sub_23847E248);
    sub_23875D1B0();
    sub_23845B254(v17, v16);
    v20 = v15;
    v21 = &qword_27DF0B208;
    v22 = &qword_238767DB0;
  }

  return sub_238439884(v20, v21, v22);
}

uint64_t sub_23849F734@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v43.i64[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B228, &qword_238767E08);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B230, &qword_238767E10);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v42 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v42 - v19;
  sub_23875ED50();
  v42[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23849FB44(a2, a3 & 1, v10);
  v53[0] = *(a1 + 88);
  if (v53[0])
  {
    v21 = 0.9;
  }

  else
  {
    v21 = 1.0;
  }

  sub_23843981C(v53, v48, &qword_27DF0B238, &qword_238767E18);
  sub_23875E560();
  v23 = v22;
  v25 = v24;
  sub_2384396E4(v10, v18, &qword_27DF0B228, &qword_238767E08);
  v26 = &v18[*(v11 + 36)];
  *v26 = v21;
  *(v26 + 1) = v21;
  *(v26 + 2) = v23;
  *(v26 + 3) = v25;
  v27 = v20;
  sub_2384396E4(v18, v20, &qword_27DF0B230, &qword_238767E10);
  if (v53[0])
  {
    sub_23868852C(v53[0], v52, *a1, *(a1 + 8));
    v28 = v52[0];
    v29 = v52[1];
    v30 = v52[2];
    v31 = v52[3];
    v32 = v52[4];
    sub_238439884(v53, &qword_27DF0B238, &qword_238767E18);
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
  }

  sub_23875E580();
  v34 = v33;
  v36 = v35;
  sub_23843981C(v27, v15, &qword_27DF0B230, &qword_238767E10);
  v37 = v43.i64[0];
  sub_23843981C(v15, v43.i64[0], &qword_27DF0B230, &qword_238767E10);
  v38 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B240, &qword_238767E20) + 48);
  *&v44 = v28;
  *(&v44 + 1) = v29;
  *&v45 = v30;
  *(&v45 + 1) = v31;
  *v46 = v32;
  v43 = vdupq_n_s64(0x3FDD70A3D70A3D71uLL);
  *&v46[8] = v43;
  *&v46[24] = v34;
  v47 = v36;
  v39 = v45;
  *v38 = v44;
  *(v38 + 16) = v39;
  v40 = *&v46[16];
  *(v38 + 32) = *v46;
  *(v38 + 48) = v40;
  *(v38 + 64) = v47;
  sub_23843981C(&v44, v48, &qword_27DF0B248, &qword_238767E28);
  sub_238439884(v27, &qword_27DF0B230, &qword_238767E10);
  v48[0] = v28;
  v48[1] = v29;
  v48[2] = v30;
  v48[3] = v31;
  v48[4] = v32;
  v49 = v43;
  v50 = v34;
  v51 = v36;
  sub_238439884(v48, &qword_27DF0B248, &qword_238767E28);
  sub_238439884(v15, &qword_27DF0B230, &qword_238767E10);
}

id sub_23849FB44@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B250, &qword_238767E30);
  v6 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v56 - v7;
  v8 = sub_23875E0E0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B258, &unk_238767E38);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v56 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;
  if ((a2 & 1) == 0)
  {
    v42 = a1;
    sub_23875E0C0();
    (*(v9 + 104))(v12, *MEMORY[0x277CE0FE0], v8);
    v58 = sub_23875E150();

    (*(v9 + 8))(v12, v8);
    v44 = *v3;
    v43 = v3[1];
    sub_23875E4A0();
    sub_23875C5C0();
    v57 = v64;
    v45 = v65;
    v46 = v66;
    v47 = v67;
    v48 = v68;
    v49 = v69;
    v63 = v65;
    v62 = v67;
    v50 = &v22[*(v13 + 36)];
    v51 = *(sub_23875C980() + 20);
    v52 = *MEMORY[0x277CE0118];
    v53 = sub_23875CF50();
    (*(*(v53 - 8) + 104))(&v50[v51], v52, v53);
    __asm { FMOV            V0.2D, #8.0 }

    *v50 = _Q0;
    *&v50[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)] = 256;
    v55 = v57;
    *v22 = v58;
    *(v22 + 1) = v55;
    v22[16] = v45;
    *(v22 + 3) = v46;
    v22[32] = v47;
    *(v22 + 5) = v48;
    *(v22 + 6) = v49;
    *(v22 + 28) = 257;
    sub_23843981C(v22, v59, &qword_27DF0B258, &unk_238767E38);
    swift_storeEnumTagMultiPayload();
    sub_2384A6654();
    sub_23875D1B0();
    v41 = v22;
    return sub_238439884(v41, &qword_27DF0B258, &unk_238767E38);
  }

  v23 = *v3;
  v24 = v3[1];
  sub_2387588A0();
  result = PKMapsIconForMerchantCategory();
  if (result)
  {
    sub_23875E0C0();
    (*(v9 + 104))(v12, *MEMORY[0x277CE0FE0], v8);
    v58 = sub_23875E150();

    (*(v9 + 8))(v12, v8);
    sub_23875E4A0();
    sub_23875C5C0();
    v26 = v65;
    v27 = v66;
    v28 = v67;
    v29 = v68;
    v56 = v69;
    v57 = v64;
    v63 = v65;
    v62 = v67;
    v30 = &v17[*(v13 + 36)];
    v31 = *(sub_23875C980() + 20);
    v32 = *MEMORY[0x277CE0118];
    v33 = sub_23875CF50();
    (*(*(v33 - 8) + 104))(&v30[v31], v32, v33);
    __asm { FMOV            V0.2D, #8.0 }

    *v30 = _Q0;
    *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)] = 256;
    v39 = v57;
    *v17 = v58;
    *(v17 + 1) = v39;
    v17[16] = v26;
    *(v17 + 3) = v27;
    v17[32] = v28;
    v40 = v56;
    *(v17 + 5) = v29;
    *(v17 + 6) = v40;
    *(v17 + 28) = 257;
    sub_2384396E4(v17, v20, &qword_27DF0B258, &unk_238767E38);
    sub_23843981C(v20, v59, &qword_27DF0B258, &unk_238767E38);
    swift_storeEnumTagMultiPayload();
    sub_2384A6654();
    sub_23875D1B0();
    v41 = v20;
    return sub_238439884(v41, &qword_27DF0B258, &unk_238767E38);
  }

  __break(1u);
  return result;
}

uint64_t sub_2384A00DC(uint64_t a1)
{
  v1[7] = a1;
  v1[8] = sub_23875ED50();
  v1[9] = sub_23875ED40();
  v1[10] = sub_23875ED40();
  v2 = swift_task_alloc();
  v1[11] = v2;
  *v2 = v1;
  v2[1] = sub_2384A0194;

  return sub_2384A0644();
}

uint64_t sub_2384A0194(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 64);
  v9 = *v1;
  v2[12] = a1;

  v7 = sub_23875ECE0();
  v2[13] = v7;
  v2[14] = v6;

  return MEMORY[0x2822009F8](sub_2384A02E0, v7, v6);
}

uint64_t sub_2384A02E0()
{
  if (v0[12])
  {
    v1 = v0[10];

    v0[17] = v0[12];
    v2 = v0[8];
    v3 = v0[9];
    v5 = sub_23875ECE0();

    return MEMORY[0x2822009F8](sub_2384A0588, v5, v4);
  }

  else
  {
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_2384A03D8;
    v7 = v0[7];

    return sub_2384A0B94();
  }
}

uint64_t sub_2384A03D8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = a1;

  v4 = *(v2 + 112);
  v5 = *(v2 + 104);

  return MEMORY[0x2822009F8](sub_2384A0500, v5, v4);
}

uint64_t sub_2384A0500()
{
  v1 = v0[10];

  v0[17] = v0[16];
  v2 = v0[8];
  v3 = v0[9];
  v5 = sub_23875ECE0();

  return MEMORY[0x2822009F8](sub_2384A0588, v5, v4);
}

uint64_t sub_2384A0588()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);

  v5 = *(v4 + 16);
  *(v0 + 32) = *(v4 + 32);
  *(v0 + 16) = v5;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2 == 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B210, &qword_238767DB8);
  sub_23875E1C0();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2384A0644()
{
  v1[2] = v0;
  v2 = sub_23875C1E0();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_23875ED50();
  v1[6] = sub_23875ED40();
  v6 = sub_23875ECE0();
  v1[7] = v6;
  v1[8] = v5;

  return MEMORY[0x2822009F8](sub_2384A0738, v6, v5);
}

uint64_t sub_2384A0738()
{
  v1 = v0[2];
  sub_2387579D0();
  v0[9] = sub_2387579A0();
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(MEMORY[0x277CC6718] + 4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_2384A07FC;

  return MEMORY[0x282116E08](v2, v3, 1);
}

uint64_t sub_2384A07FC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 80);
  v11 = *v3;
  v4[11] = a1;
  v4[12] = a2;
  v4[13] = v2;

  if (v2)
  {
    v6 = v4[7];
    v7 = v4[8];
    v8 = sub_2384A09F4;
  }

  else
  {
    v9 = v4[9];

    v6 = v4[7];
    v7 = v4[8];
    v8 = sub_2384A091C;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2384A091C()
{
  v1 = v0[12];
  v2 = v0[6];

  if (v1 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v5 = v0[11];
    v4 = v0[12];
    v6 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v7 = sub_23875B980();
    v3 = [v6 initWithData_];

    sub_23844C940(v5, v4);
  }

  v8 = v0[5];

  v9 = v0[1];

  return v9(v3);
}

uint64_t sub_2384A09F4()
{
  v1 = v0[13];
  v2 = v0[9];
  v4 = v0[5];
  v3 = v0[6];

  sub_23875C150();
  v5 = v1;
  v6 = sub_23875C1B0();
  v7 = sub_23875EFE0();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[13];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_2383F8000, v6, v7, "Could not generate icon for mail item: %@", v10, 0xCu);
    sub_238439884(v11, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v11, -1, -1);
    MEMORY[0x23EE64DF0](v10, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v14 = v0[5];

  v15 = v0[1];

  return v15(0);
}

uint64_t sub_2384A0B94()
{
  v1[3] = v0;
  v2 = sub_23875C1E0();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = sub_23875ED50();
  v1[8] = sub_23875ED40();
  v6 = sub_23875ECE0();
  v1[9] = v6;
  v1[10] = v5;

  return MEMORY[0x2822009F8](sub_2384A0C8C, v6, v5);
}

uint64_t sub_2384A0C8C()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = [objc_allocWithZone(MEMORY[0x277D81650]) init];
  v0[11] = v3;
  v4 = sub_23875ED40();
  v0[12] = v4;
  v5 = swift_task_alloc();
  v0[13] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[14] = v7;
  type metadata accessor for PKMerchantCategory(0);
  *v7 = v0;
  v7[1] = sub_2384A0DC4;
  v9 = MEMORY[0x277D85700];

  return MEMORY[0x2822008A0](v0 + 2, v4, v9, 0xD000000000000010, 0x8000000238787F10, sub_2384A67BC, v5, v8);
}

uint64_t sub_2384A0DC4()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v10 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_2384A0F64;
  }

  else
  {
    v7 = v2[12];
    v8 = v2[13];

    v4 = v2[9];
    v5 = v2[10];
    v6 = sub_2384A0EE8;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_2384A0EE8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 16);
  v3 = *(v0 + 48);

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_2384A0F64()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[6];

  sub_23875C150();
  v7 = v1;
  v8 = sub_23875C1B0();
  v9 = sub_23875EFE0();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[15];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_2383F8000, v8, v9, "Could not generate category for mail item: %@", v12, 0xCu);
    sub_238439884(v13, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v13, -1, -1);
    MEMORY[0x23EE64DF0](v12, -1, -1);
  }

  else
  {
  }

  (*(v0[5] + 8))(v0[6], v0[4]);
  v16 = v0[6];

  v17 = v0[1];

  return v17(0);
}

void sub_2384A1118(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09BC8, &unk_2387645D0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(a3 + 72);
  v12 = *(a3 + 80);
  v13 = sub_23875EA50();
  (*(v7 + 16))(v10, a1, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v14, v10, v6);
  aBlock[4] = sub_23845B2A4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23848C708;
  aBlock[3] = &block_descriptor_4;
  v16 = _Block_copy(aBlock);

  [a2 getPKCategoryForDomain:v13 completion:v16];
  _Block_release(v16);
}

uint64_t sub_2384A1348@<X0>(uint64_t a1@<X8>)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_23849F2F0(a1);
}

uint64_t sub_2384A138C@<X0>(void *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v91) = a3;
  LODWORD(v90) = a2;
  v6 = sub_2387583E0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v93 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_238758450();
  v95 = *(v92 - 8);
  v9 = *(v95 + 64);
  MEMORY[0x28223BE20](v92);
  v94 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v78 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v78 - v16;
  v18 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v19 = *(v18 - 1);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 + 32);
  v25 = sub_23875B940();
  (*(*(v25 - 8) + 56))(&v22[v24], 1, 1, v25);
  v26 = sub_23875EA50();
  v27 = [a1 valueForKey_];

  if (v27)
  {
    sub_23875F2E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v97 = 0u;
    v98 = 0u;
  }

  v99[0] = v97;
  v99[1] = v98;
  if (!*(&v98 + 1))
  {

    sub_238439884(v99, &qword_27DF0A4A8, &qword_238767840);
LABEL_10:
    sub_238439884(&v22[v24], &qword_27DF0D040, &qword_2387676A0);
    return (*(v19 + 56))(a4, 1, 1, v18);
  }

  sub_238759690();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_10;
  }

  v88 = v19;
  v89 = a4;
  v28 = v96;
  v29 = [v96 messageID];
  v30 = sub_23875EA80();
  v32 = v31;

  *(v22 + 8) = v30;
  *(v22 + 9) = v32;
  v84 = v32;
  v33 = [v28 fromEmailAddress];
  v34 = sub_23875EA80();
  v36 = v35;

  *(v22 + 10) = v34;
  *(v22 + 11) = v36;
  v82 = v36;
  v37 = [v28 dateSent];
  v83 = v18[7];
  sub_23875BBE0();

  sub_238759670();
  sub_2384A475C(v17, &v22[v24]);
  v38 = [v28 senderDomain];
  v39 = sub_23875EA80();
  v41 = v40;

  v42 = &v22[v18[9]];
  *v42 = v39;
  v42[1] = v41;
  v43 = sub_238759680();
  v44 = sub_23851EAE0(sub_2384A68C0, 0, v43);

  v45 = sub_2384A2EE0(v44);

  *&v22[v18[10]] = v45;
  v22[v18[11]] = v90 & 1;
  v22[v18[12]] = v91;
  v46 = [a1 merchantDisplayName];
  if (v46)
  {
    v47 = v46;
    v81 = sub_23875EA80();
    v91 = v48;
  }

  else
  {
    v81 = 0;
    v91 = 0;
  }

  v50 = [a1 orderNumber];
  v19 = v88;
  v51 = v89;
  if (v50)
  {
    v52 = v50;
    v80 = sub_23875EA80();
    v87 = v53;
  }

  else
  {
    v80 = 0;
    v87 = 0;
  }

  v54 = [a1 shippingDetailsTrackingNumber];
  if (v54)
  {
    v55 = v54;
    v85 = sub_23875EA80();
    v90 = v56;
  }

  else
  {
    v85 = 0;
    v90 = 0;
  }

  v86 = v24;
  v57 = [a1 shippingDetailsCarrierName];
  if (v57)
  {
    v58 = v57;
    v79 = sub_23875EA80();
    v60 = v59;
  }

  else
  {
    v79 = 0;
    v60 = 0;
  }

  sub_23875AB10();
  v61 = v93;
  sub_23875AB00();
  v62 = sub_2384A307C(v13, v61);
  v63 = v94;
  sub_23875AB10();
  v64 = v92;
  if ((*(v95 + 88))(v63, v92) == *MEMORY[0x277CC6F40])
  {
    a4 = v51;
    v66 = v90;
    v65 = v91;
    if (v60)
    {
      if (v90)
      {

        v67 = v66;
        v68 = v93;
        sub_23875AB00();
        v69 = sub_2384A3D28(v68);

        *v22 = v79;
        *(v22 + 1) = v60;
        *(v22 + 2) = v85;
        *(v22 + 3) = v67;
        v22[32] = v69;
        v22[56] = 1;
LABEL_35:
        sub_2384A59C4(v22, a4, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
        (*(v19 + 56))(a4, 0, 1, v18);
        return sub_2384A5AE0(v22, type metadata accessor for OrderDetailsRelatedEmailView.ViewModel);
      }
    }

    if (v65)
    {
      v72 = v86;
      v74 = v87;
      if (v87)
      {
        *v22 = v62;
        *(v22 + 1) = v81;
        *(v22 + 2) = v65;
        *(v22 + 3) = v80;
        *(v22 + 4) = v74;
        *(v22 + 5) = v85;
        *(v22 + 6) = v66;
        v22[56] = 0;
        goto LABEL_35;
      }
    }

    else
    {

      v72 = v86;
    }
  }

  else
  {

    a4 = v51;
    v70 = v91;
    if (v91)
    {
      v72 = v86;
      v71 = v87;
      v73 = v90;
      if (v87)
      {
        *v22 = v62;
        *(v22 + 1) = v81;
        *(v22 + 2) = v70;
        *(v22 + 3) = v80;
        *(v22 + 4) = v71;
        *(v22 + 5) = v85;
        *(v22 + 6) = v73;
        v22[56] = 0;
        (*(v95 + 8))(v94, v64);
        goto LABEL_35;
      }
    }

    else
    {

      v72 = v86;
    }

    (*(v95 + 8))(v94, v64);
  }

  v75 = sub_23875BC40();
  (*(*(v75 - 8) + 8))(&v22[v83], v75);
  sub_238439884(&v22[v72], &qword_27DF0D040, &qword_2387676A0);
  v76 = *&v22[v18[9] + 8];

  v77 = *&v22[v18[10]];

  return (*(v19 + 56))(a4, 1, 1, v18);
}

uint64_t sub_2384A1C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_238759D30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_23849CDC8(&qword_27DF0B0C8, MEMORY[0x277CC7C98]);
      v28 = sub_23875E950();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_23849CDC8(&qword_27DF0B0E8, MEMORY[0x277CC7C98]);
        v33 = sub_23875E9E0();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2384A2000(uint64_t a1, uint64_t a2)
{
  v4 = sub_238758680();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v11;
  result = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = *(a1 + 56);
  v35 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v16;
  v20 = (v17 + 63) >> 6;
  v42 = v5 + 32;
  v44 = a2 + 56;
  v45 = v5 + 16;
  v21 = (v5 + 8);
  v36 = v20;
  v37 = &v35 - v13;
  v38 = v5;
  v39 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v41 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(a1 + 48);
      v43 = *(v5 + 72);
      v26 = *(v5 + 16);
      v26(v14, v25 + v43 * (v22 | (v15 << 6)), v4);
      (*(v5 + 32))(v46, v14, v4);
      v27 = *(a2 + 40);
      sub_23849CDC8(&qword_27DF0B0F0, MEMORY[0x277CC6F70]);
      v28 = sub_23875E950();
      v29 = -1 << *(a2 + 32);
      v30 = v28 & ~v29;
      if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
      {
        break;
      }

      v40 = v21 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v31 = a2;
      v32 = ~v29;
      while (1)
      {
        v26(v9, *(v31 + 48) + v30 * v43, v4);
        sub_23849CDC8(&qword_27DF09538, MEMORY[0x277CC6F70]);
        v33 = sub_23875E9E0();
        v34 = *v21;
        (*v21)(v9, v4);
        if (v33)
        {
          break;
        }

        v30 = (v30 + 1) & v32;
        if (((*(v44 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          v34(v46, v4);
          return 0;
        }
      }

      result = (v34)(v46, v4);
      a2 = v31;
      v5 = v38;
      a1 = v39;
      v20 = v36;
      v14 = v37;
      v19 = v41;
      if (!v41)
      {
        goto LABEL_8;
      }
    }

    (*v21)(v46, v4);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v35 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v41 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2384A23B0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = a2[5];
  if (v8)
  {
    if (v9 && (a1[4] == a2[4] && v8 == v9 || (sub_23875F630() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v9)
  {
    return 1;
  }

  return 0;
}

BOOL sub_2384A2474(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 > 0xCu)
  {
    if (a1 > 0xEu)
    {
      if (a1 == 15)
      {
        return a2 == 15;
      }

      if (a1 == 16)
      {
        return a2 == 16;
      }
    }

    else
    {
      if (a1 == 13)
      {
        return a2 == 13;
      }

      if (a1 == 14)
      {
        return a2 == 14;
      }
    }

LABEL_18:
    if (a2 - 10 >= 7)
    {
      return a1 == a2;
    }

    return 0;
  }

  if (a1 == 10)
  {
    return a2 == 10;
  }

  if (a1 != 11)
  {
    if (a1 == 12)
    {
      return a2 == 12;
    }

    goto LABEL_18;
  }

  return a2 == 11;
}

BOOL sub_2384A2554(void *a1, void *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 <= 0xC)
  {
    switch(v4)
    {
      case 0xAu:
        if (v5 != 10)
        {
          return 0;
        }

        goto LABEL_26;
      case 0xBu:
        if (v5 != 11)
        {
          return 0;
        }

        goto LABEL_26;
      case 0xCu:
        if (v5 != 12)
        {
          return 0;
        }

        goto LABEL_26;
    }
  }

  else if (*a1 > 0xEu)
  {
    if (v4 == 15)
    {
      if (v5 != 15)
      {
        return 0;
      }

      goto LABEL_26;
    }

    if (v4 == 16)
    {
      if (v5 != 16)
      {
        return 0;
      }

      goto LABEL_26;
    }
  }

  else
  {
    if (v4 == 13)
    {
      if (v5 != 13)
      {
        return 0;
      }

      goto LABEL_26;
    }

    if (v4 == 14)
    {
      if (v5 != 14)
      {
        return 0;
      }

      goto LABEL_26;
    }
  }

  result = 0;
  if (v4 == v5 && (v5 - 17) < 0xFFFFFFF9)
  {
LABEL_26:
    v7 = a1[1] == a2[1] && a1[2] == a2[2];
    if (!v7 && (sub_23875F630() & 1) == 0 || (a1[3] != a2[3] || a1[4] != a2[4]) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }

    v8 = a1[6];
    v9 = a2[6];
    if (v8)
    {
      return v9 && (a1[5] == a2[5] && v8 == v9 || (sub_23875F630() & 1) != 0);
    }

    return !v9;
  }

  return result;
}

uint64_t sub_2384A26BC(uint64_t *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 32);
  v9 = *(a1 + 33) | ((*(a1 + 37) | (*(a1 + 39) << 16)) << 32);
  v10 = a1[5];
  if (!*(a1 + 56))
  {
    if (a2[56])
    {
      return 0;
    }

    v15 = a1[6];
    v16 = *a2;
    v17 = *(a2 + 3);
    v18 = *(a2 + 4);
    v20 = *(a2 + 5);
    v19 = *(a2 + 6);
    if (v4 <= 0xCu)
    {
      switch(v4)
      {
        case 0xAu:
          if (v16 != 10)
          {
            return 0;
          }

          goto LABEL_58;
        case 0xBu:
          if (v16 != 11)
          {
            return 0;
          }

LABEL_58:
          if ((*(a2 + 1) != v5 || v6 != *(a2 + 2)) && (sub_23875F630() & 1) == 0 || (v7 != v17 || (v8 | (v9 << 8)) != v18) && (sub_23875F630() & 1) == 0)
          {
            return 0;
          }

          if (v15)
          {
            if (!v19)
            {
              return 0;
            }

            if (v10 != v20 || v15 != v19)
            {
LABEL_68:
              if ((sub_23875F630() & 1) == 0)
              {
                return 0;
              }
            }
          }

          else if (v19)
          {
            return 0;
          }

          return 1;
        case 0xCu:
          if (v16 != 12)
          {
            return 0;
          }

          goto LABEL_58;
      }
    }

    else if (v4 > 0xEu)
    {
      if (v4 == 15)
      {
        if (v16 != 15)
        {
          return 0;
        }

        goto LABEL_58;
      }

      if (v4 == 16)
      {
        if (v16 != 16)
        {
          return 0;
        }

        goto LABEL_58;
      }
    }

    else
    {
      if (v4 == 13)
      {
        if (v16 != 13)
        {
          return 0;
        }

        goto LABEL_58;
      }

      if (v4 == 14)
      {
        if (v16 != 14)
        {
          return 0;
        }

        goto LABEL_58;
      }
    }

    if (v16 != v4 || (v16 - 17) >= 0xFFFFFFF9)
    {
      return 0;
    }

    goto LABEL_58;
  }

  if (*(a1 + 56) != 1)
  {
    if (a2[56] != 2)
    {
      return 0;
    }

    v22 = *(a2 + 2);
    v21 = *(a2 + 3);
    v24 = *(a2 + 4);
    v23 = *(a2 + 5);
    if ((v4 != *a2 || v5 != *(a2 + 1)) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }

    if (v7)
    {
      if (!v21 || (v6 != v22 || v7 != v21) && (sub_23875F630() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v21)
    {
      return 0;
    }

    if (v10)
    {
      if (!v23)
      {
        return 0;
      }

      if ((v8 | (v9 << 8)) != v24 || v10 != v23)
      {
        goto LABEL_68;
      }
    }

    else if (v23)
    {
      return 0;
    }

    return 1;
  }

  if (a2[56] == 1)
  {
    if (v11 = *(a2 + 2), v12 = *(a2 + 3), v13 = a2[32], v4 == *a2) && v5 == *(a2 + 1) || (sub_23875F630())
    {
      if (v6 == v11 && v7 == v12 || (sub_23875F630()) && v8 == v13)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2384A29A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_23875B940();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v49 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B0D8, &qword_238772730);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - v15;
  v17 = *(a1 + 16);
  v51[0] = *a1;
  v51[1] = v17;
  v52[0] = *(a1 + 32);
  *(v52 + 9) = *(a1 + 41);
  v18 = *(a2 + 16);
  v53[0] = *a2;
  v53[1] = v18;
  v54[0] = *(a2 + 32);
  *(v54 + 9) = *(a2 + 41);
  if ((sub_2384A26BC(v51, v53) & 1) == 0 || (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_39;
  }

  if ((*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_39;
  }

  v19 = type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0);
  v20 = *(v19 + 28);
  if ((sub_23875BBD0() & 1) == 0)
  {
    goto LABEL_39;
  }

  v49 = v19;
  v50 = v5;
  v21 = *(v19 + 32);
  v22 = *(v13 + 48);
  sub_23843981C(a1 + v21, v16, &qword_27DF0D040, &qword_2387676A0);
  v23 = a2 + v21;
  v24 = v50;
  sub_23843981C(v23, &v16[v22], &qword_27DF0D040, &qword_2387676A0);
  v25 = *(v24 + 48);
  if (v25(v16, 1, v4) == 1)
  {
    if (v25(&v16[v22], 1, v4) == 1)
    {
      sub_238439884(v16, &qword_27DF0D040, &qword_2387676A0);
      goto LABEL_16;
    }

LABEL_14:
    sub_238439884(v16, &qword_27DF0B0D8, &qword_238772730);
    goto LABEL_39;
  }

  sub_23843981C(v16, v12, &qword_27DF0D040, &qword_2387676A0);
  if (v25(&v16[v22], 1, v4) == 1)
  {
    (*(v24 + 8))(v12, v4);
    goto LABEL_14;
  }

  (*(v24 + 32))(v8, &v16[v22], v4);
  sub_23849CDC8(&qword_27DF0B0E0, MEMORY[0x277CC9260]);
  v26 = sub_23875E9E0();
  v27 = *(v24 + 8);
  v27(v8, v4);
  v27(v12, v4);
  sub_238439884(v16, &qword_27DF0D040, &qword_2387676A0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_16:
  v28 = v49;
  v29 = v49[9];
  v30 = *(a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  if ((v30 != *v32 || v31 != v32[1]) && (sub_23875F630() & 1) == 0 || (sub_2384A1C50(*(a1 + v28[10]), *(a2 + v28[10])) & 1) == 0)
  {
    goto LABEL_39;
  }

  v33 = v28[11];
  v34 = *(a1 + v33);
  v35 = *(a2 + v33);
  if (v34)
  {
    v36 = 0x63697373616C63;
  }

  else
  {
    v36 = 1818845549;
  }

  if (v34)
  {
    v37 = 0xE700000000000000;
  }

  else
  {
    v37 = 0xE400000000000000;
  }

  if (v35)
  {
    v38 = 0x63697373616C63;
  }

  else
  {
    v38 = 1818845549;
  }

  if (v35)
  {
    v39 = 0xE700000000000000;
  }

  else
  {
    v39 = 0xE400000000000000;
  }

  if (v36 != v38 || v37 != v39)
  {
    v40 = sub_23875F630();

    if (v40)
    {
      goto LABEL_36;
    }

LABEL_39:
    v47 = 0;
    return v47 & 1;
  }

LABEL_36:
  v41 = v28[12];
  v42 = *(a2 + v41);
  v43 = sub_238449A8C(*(a1 + v41));
  v45 = v44;
  if (v43 == sub_238449A8C(v42) && v45 == v46)
  {

    v47 = 1;
  }

  else
  {
    v47 = sub_23875F630();
  }

  return v47 & 1;
}

uint64_t sub_2384A2EE0(uint64_t a1)
{
  v2 = sub_238759D30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_23849CDC8(&qword_27DF0B0C8, MEMORY[0x277CC7C98]);
  result = MEMORY[0x23EE63960](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_238709120(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_2384A307C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2387583E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v53 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v53 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  v17 = sub_238758450();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v22, a1, v17, v20);
  v23 = (*(v18 + 88))(v22, v17);
  if (v23 == *MEMORY[0x277CC6F50])
  {
    (*(v5 + 8))(a2, v4);
    (*(v18 + 8))(a1, v17);
    return 10;
  }

  v55 = a1;
  v25 = a2;
  if (v23 == *MEMORY[0x277CC6F38])
  {
    (*(v5 + 8))(a2, v4);
    (*(v18 + 8))(v55, v17);
    return 11;
  }

  v26 = v4;
  if (v23 == *MEMORY[0x277CC6F18])
  {
    (*(v5 + 8))(v25, v4);
    (*(v18 + 8))(v55, v17);
    return 12;
  }

  if (v23 == *MEMORY[0x277CC6F48])
  {
    v27 = *(v5 + 16);
    v27(v16, v25, v4);
    v27(v13, v16, v4);
    v28 = (*(v5 + 88))(v13, v4);
    if (v28 == *MEMORY[0x277CC6EE8])
    {
      v29 = *(v5 + 8);
      v29(v25, v4);
      (*(v18 + 8))(v55, v17);
      v29(v16, v4);
      return 0;
    }

    if (v28 == *MEMORY[0x277CC6EE0])
    {
      v34 = *(v5 + 8);
      v34(v25, v4);
      (*(v18 + 8))(v55, v17);
      v34(v16, v4);
      return 1;
    }

    if (v28 == *MEMORY[0x277CC6EF0])
    {
      v36 = *(v5 + 8);
      v36(v25, v4);
      (*(v18 + 8))(v55, v17);
      v36(v16, v4);
      return 2;
    }

    if (v28 == *MEMORY[0x277CC6EC8])
    {
      v39 = *(v5 + 8);
      v39(v25, v4);
      (*(v18 + 8))(v55, v17);
      v39(v16, v4);
      return 3;
    }

    if (v28 == *MEMORY[0x277CC6F08])
    {
      v41 = *(v5 + 8);
      v41(v25, v4);
      (*(v18 + 8))(v55, v17);
      v41(v16, v4);
      return 4;
    }

    if (v28 == *MEMORY[0x277CC6F00])
    {
      v43 = *(v5 + 8);
      v43(v25, v4);
      (*(v18 + 8))(v55, v17);
      v43(v16, v4);
      return 7;
    }

    if (v28 == *MEMORY[0x277CC6ED8])
    {
      v45 = *(v5 + 8);
      v45(v25, v4);
      (*(v18 + 8))(v55, v17);
      v45(v16, v4);
      return 8;
    }

    if (v28 == *MEMORY[0x277CC6ED0])
    {
      v47 = *(v5 + 8);
      v47(v25, v4);
      (*(v18 + 8))(v55, v17);
      v47(v16, v4);
      return 5;
    }

    if (v28 == *MEMORY[0x277CC6EF8])
    {
      v49 = *(v5 + 8);
      v49(v25, v4);
      (*(v18 + 8))(v55, v17);
      v49(v16, v4);
      return 6;
    }

    if (v28 == *MEMORY[0x277CC6EC0])
    {
      v51 = *(v5 + 8);
      v51(v25, v4);
      (*(v18 + 8))(v55, v17);
      v51(v16, v4);
      return 9;
    }

    goto LABEL_57;
  }

  v54 = v25;
  if (v23 != *MEMORY[0x277CC6F40])
  {
    if (v23 == *MEMORY[0x277CC6F30])
    {
      (*(v5 + 8))(v54, v4);
      (*(v18 + 8))(v55, v17);
      return 13;
    }

    v37 = v55;
    if (v23 == *MEMORY[0x277CC6F10])
    {
      (*(v5 + 8))(v54, v26);
      (*(v18 + 8))(v37, v17);
      return 14;
    }

    if (v23 == *MEMORY[0x277CC6F28])
    {
      (*(v5 + 8))(v54, v26);
      (*(v18 + 8))(v37, v17);
      return 15;
    }

    if (v23 == *MEMORY[0x277CC6F20])
    {
      (*(v5 + 8))(v54, v26);
      (*(v18 + 8))(v37, v17);
      return 16;
    }

    goto LABEL_57;
  }

  v30 = *(v5 + 16);
  v31 = v56;
  v30(v56, v54, v4);
  v30(v8, v31, v4);
  v32 = (*(v5 + 88))(v8, v4);
  if (v32 == *MEMORY[0x277CC6EE8])
  {
    v33 = *(v5 + 8);
    v33(v54, v4);
    (*(v18 + 8))(v55, v17);
    v33(v31, v4);
    return 0;
  }

  if (v32 == *MEMORY[0x277CC6EE0])
  {
    v35 = *(v5 + 8);
    v35(v54, v4);
    (*(v18 + 8))(v55, v17);
    v35(v31, v4);
    return 1;
  }

  if (v32 == *MEMORY[0x277CC6EF0])
  {
    v38 = *(v5 + 8);
    v38(v54, v4);
    (*(v18 + 8))(v55, v17);
    v38(v31, v4);
    return 2;
  }

  if (v32 == *MEMORY[0x277CC6EC8])
  {
    v40 = *(v5 + 8);
    v40(v54, v4);
    (*(v18 + 8))(v55, v17);
    v40(v31, v4);
    return 3;
  }

  if (v32 == *MEMORY[0x277CC6F08])
  {
    v42 = *(v5 + 8);
    v42(v54, v4);
    (*(v18 + 8))(v55, v17);
    v42(v31, v4);
    return 4;
  }

  if (v32 == *MEMORY[0x277CC6F00])
  {
    v44 = *(v5 + 8);
    v44(v54, v4);
    (*(v18 + 8))(v55, v17);
    v44(v31, v4);
    return 7;
  }

  if (v32 == *MEMORY[0x277CC6ED8])
  {
    v46 = *(v5 + 8);
    v46(v54, v4);
    (*(v18 + 8))(v55, v17);
    v46(v31, v4);
    return 8;
  }

  if (v32 == *MEMORY[0x277CC6ED0])
  {
    v48 = *(v5 + 8);
    v48(v54, v4);
    (*(v18 + 8))(v55, v17);
    v48(v31, v4);
    return 5;
  }

  if (v32 == *MEMORY[0x277CC6EF8])
  {
    v50 = *(v5 + 8);
    v50(v54, v4);
    (*(v18 + 8))(v55, v17);
    v50(v31, v4);
    return 6;
  }

  if (v32 != *MEMORY[0x277CC6EC0])
  {
    while (1)
    {
LABEL_57:
      sub_23875F520();
      __break(1u);
    }
  }

  v52 = *(v5 + 8);
  v52(v25, v4);
  (*(v18 + 8))(v55, v17);
  v52(v56, v4);
  return 9;
}

uint64_t sub_2384A3D28(uint64_t a1)
{
  v2 = sub_2387583E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v7, a1, v2, v5);
  v8 = (*(v3 + 88))(v7, v2);
  if (v8 == *MEMORY[0x277CC6EE8])
  {
    v9 = 0;
LABEL_21:
    (*(v3 + 8))(a1, v2);
    return v9;
  }

  if (v8 == *MEMORY[0x277CC6EE0])
  {
    v9 = 1;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CC6EF0])
  {
    v9 = 2;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CC6EC8])
  {
    v9 = 3;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CC6F08])
  {
    v9 = 4;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CC6F00])
  {
    v9 = 7;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CC6ED8])
  {
    v9 = 8;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CC6ED0])
  {
    v9 = 5;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CC6EF8])
  {
    v9 = 6;
    goto LABEL_21;
  }

  if (v8 == *MEMORY[0x277CC6EC0])
  {
    v9 = 9;
    goto LABEL_21;
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

uint64_t sub_2384A3F7C(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(0) + 28);
  if (sub_23875BBD0())
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v13 = *a2;
    v14 = *(a2 + 8);
    v15 = *(a2 + 16);
    v16 = *(a2 + 24);
    v17 = *(a2 + 40);
    v18 = *(a2 + 48);
    v19 = *(a2 + 56);
    if (v12)
    {
      if (v12 != 1 || !*(a2 + 56))
      {
        return 1;
      }

      if (v19 == 1)
      {
        if (v8 != v15 || v7 != v16)
        {
          v20 = *(a2 + 24);
LABEL_66:

          return sub_23875F630();
        }

        return 0;
      }

      v56 = *a2;
      v57 = *(a2 + 8);
      v58 = *(a2 + 24);
      v59 = *(a2 + 32);
      v60 = *(a2 + 40);
      v61 = v11;
      sub_2384A463C(v56, v57, v15, v58, v59, v17, v18, 2);
      sub_2384A463C(v5, v6, v8, v7, v9, v10, v61, 1);

      v28 = v5;
      v29 = v6;
      v30 = v8;
      v31 = v7;
      v32 = v9;
      v33 = v10;
      v34 = v61;
      v35 = 1;
    }

    else
    {
      if (!*(a2 + 56))
      {
        v36 = *(a2 + 40);
        if (v7 == v16 && v9 == *(a2 + 32) || (v37 = *(a2 + 24), v38 = *(a2 + 32), v39 = *(a2 + 48), v40 = v11, v41 = sub_23875F630(), v11 = v40, v18 = v39, (v41 & 1) != 0))
        {
          v42 = 1;
          v43 = 2;
          v44 = 0;
          v45 = 0;
          v46 = 0;
          v47 = 0;
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v52 = 0;
          v53 = 0;
          v54 = 0;
          v55 = 0;
          switch(v5)
          {
            case 1:
              v44 = 0;
              v45 = 0;
              v42 = 0;
              v46 = 0;
              v47 = 0;
              v48 = 0;
              v49 = 0;
              v50 = 0;
              v51 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v52 = 1;
              v43 = 4;
              break;
            case 2:
              v44 = 0;
              v45 = 0;
              v42 = 0;
              v46 = 0;
              v47 = 0;
              v48 = 0;
              v49 = 0;
              v50 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v51 = 1;
              v43 = 5;
              break;
            case 3:
              v44 = 0;
              v45 = 0;
              v42 = 0;
              v46 = 0;
              v47 = 0;
              v48 = 0;
              v49 = 0;
              v51 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v50 = 1;
              v43 = 6;
              break;
            case 4:
              v44 = 0;
              v45 = 0;
              v42 = 0;
              v46 = 0;
              v47 = 0;
              v48 = 0;
              v50 = 0;
              v51 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v49 = 1;
              v43 = 7;
              break;
            case 5:
              v44 = 0;
              v45 = 0;
              v42 = 0;
              v46 = 0;
              v47 = 0;
              v48 = 0;
              v49 = 0;
              v50 = 0;
              v51 = 0;
              v52 = 0;
              v54 = 0;
              v55 = 0;
              v53 = 1;
              v43 = 3;
              break;
            case 6:
              v44 = 0;
              v45 = 0;
              v42 = 0;
              v46 = 0;
              v47 = 0;
              v49 = 0;
              v50 = 0;
              v51 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v48 = 1;
              v43 = 8;
              break;
            case 7:
            case 13:
              v44 = 0;
              v45 = 0;
              v42 = 0;
              v46 = 0;
              v48 = 0;
              v49 = 0;
              v50 = 0;
              v51 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v47 = 1;
              v43 = 9;
              break;
            case 8:
            case 14:
              v44 = 0;
              v45 = 0;
              v42 = 0;
              v47 = 0;
              v48 = 0;
              v49 = 0;
              v50 = 0;
              v51 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v46 = 1;
              v43 = 10;
              break;
            case 9:
            case 12:
              v44 = 0;
              v45 = 0;
              v42 = 0;
              v46 = 0;
              v47 = 0;
              v48 = 0;
              v49 = 0;
              v50 = 0;
              v51 = 0;
              v52 = 0;
              v53 = 0;
              v55 = 0;
              v54 = 1;
              v43 = 1;
              break;
            case 11:
              break;
            case 15:
              v44 = 0;
              v42 = 0;
              v46 = 0;
              v47 = 0;
              v48 = 0;
              v49 = 0;
              v50 = 0;
              v51 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v45 = 1;
              v43 = 11;
              break;
            case 16:
              v45 = 0;
              v42 = 0;
              v46 = 0;
              v47 = 0;
              v48 = 0;
              v49 = 0;
              v50 = 0;
              v51 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v55 = 0;
              v44 = 1;
              v43 = 12;
              break;
            default:
              v44 = 0;
              v45 = 0;
              v42 = 0;
              v46 = 0;
              v47 = 0;
              v48 = 0;
              v49 = 0;
              v50 = 0;
              v51 = 0;
              v52 = 0;
              v53 = 0;
              v54 = 0;
              v43 = 0;
              v55 = 1;
              break;
          }

          switch(v13)
          {
            case 1:
              if (v52)
              {
                goto LABEL_62;
              }

              v62 = 4;
              return v43 < v62;
            case 2:
              if (v51)
              {
                goto LABEL_62;
              }

              v62 = 5;
              return v43 < v62;
            case 3:
              if (v50)
              {
                goto LABEL_62;
              }

              v62 = 6;
              return v43 < v62;
            case 4:
              if (v49)
              {
                goto LABEL_62;
              }

              v62 = 7;
              return v43 < v62;
            case 5:
              if (v53)
              {
                goto LABEL_62;
              }

              v62 = 3;
              return v43 < v62;
            case 6:
              if (v48)
              {
                goto LABEL_62;
              }

              v62 = 8;
              return v43 < v62;
            case 7:
            case 13:
              if (v47)
              {
                goto LABEL_62;
              }

              v62 = 9;
              return v43 < v62;
            case 8:
            case 14:
              if (v46)
              {
                goto LABEL_62;
              }

              v62 = 10;
              return v43 < v62;
            case 9:
            case 12:
              if (v54)
              {
                goto LABEL_62;
              }

              v62 = 1;
              return v43 < v62;
            case 11:
              if (v42)
              {
                goto LABEL_62;
              }

              v62 = 2;
              return v43 < v62;
            case 15:
              if (v45)
              {
                goto LABEL_62;
              }

              v62 = 11;
              return v43 < v62;
            case 16:
              if (v44)
              {
                goto LABEL_62;
              }

              v62 = 12;
              return v43 < v62;
            default:
              if ((v55 & 1) == 0)
              {
                v62 = 0;
                return v43 < v62;
              }

LABEL_62:
              if (!v11 || !v18 || v10 == v36 && v11 == v18)
              {
                return 0;
              }

              break;
          }
        }

        goto LABEL_66;
      }

      if (v19 == 1)
      {
        return 0;
      }

      v22 = *a2;
      v23 = *(a2 + 8);
      v24 = *(a2 + 24);
      v25 = *(a2 + 32);
      v26 = *(a2 + 40);
      v27 = v11;
      sub_2384A463C(v22, v23, v15, v24, v25, v17, v18, 2);
      sub_2384A463C(v5, v6, v8, v7, v9, v10, v27, 0);

      v28 = v5;
      v29 = v6;
      v30 = v8;
      v31 = v7;
      v32 = v9;
      v33 = v10;
      v34 = v27;
      v35 = 0;
    }

    sub_2384A46CC(v28, v29, v30, v31, v32, v33, v34, v35);
    return 0;
  }

  return sub_23875BB50();
}

uint64_t sub_2384A463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a8)
  {
LABEL_4:

    goto LABEL_5;
  }

  if (a8 != 1)
  {
    if (a8 != 2)
    {
      return result;
    }

    goto LABEL_4;
  }

LABEL_5:
}

uint64_t sub_2384A46CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (!a8)
  {
LABEL_4:

    goto LABEL_5;
  }

  if (a8 != 1)
  {
    if (a8 != 2)
    {
      return result;
    }

    goto LABEL_4;
  }

LABEL_5:
}

uint64_t sub_2384A475C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_2384A47CC(unint64_t result)
{
  if (result >= 0xA)
  {
    return 10;
  }

  return result;
}

uint64_t sub_2384A47DC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2387632F0;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_238448C58();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  v5 = qword_2814F0880;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_2814F1B90;
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  sub_23875EA80();
  v11 = sub_23875EAA0();

  return v11;
}

uint64_t sub_2384A4964(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 != 5)
      {
LABEL_27:
        if (qword_2814F0880 != -1)
        {
          swift_once();
        }

        v1 = qword_2814F1B90;
        goto LABEL_30;
      }

      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
    }

    else
    {
      if (a1 == 7)
      {
LABEL_18:
        if (qword_2814F0880 != -1)
        {
          swift_once();
        }

        v1 = qword_2814F1B90;
        goto LABEL_30;
      }

      if (a1 != 8)
      {
        goto LABEL_21;
      }

      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
    }
  }

  else
  {
    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        if (a1 == 3)
        {
          goto LABEL_27;
        }

        goto LABEL_18;
      }

LABEL_21:
      if (qword_2814F0880 != -1)
      {
        swift_once();
      }

      v1 = qword_2814F1B90;
      goto LABEL_30;
    }

    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v1 = qword_2814F1B90;
  }

LABEL_30:
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_23875EA80();
  return v6;
}

double sub_2384A4C58@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int64x2_t *a7@<X8>)
{
  v23.i64[1] = a5;
  v24 = a6;
  v22.i64[1] = a3;
  v23.i64[0] = a4;
  v21.i64[1] = a1;
  v22.i64[0] = a2;
  v8 = sub_238758850();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26.i64[0] = 0;
  v26.i8[8] = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B1E8, &qword_238767C10);
  sub_23875E1A0();
  v13 = v32.i64[0];
  v14 = v32.i8[8];
  v21.i64[0] = v33;
  sub_238449184(0, &qword_27DF0B1F0, 0x277CC1E90);
  sub_238758810();
  sub_238758840();
  (*(v9 + 8))(v12, v8);
  v15 = sub_23860E554();
  v26 = vdupq_n_s64(0x4046800000000000uLL);
  v27.i64[0] = v13;
  v27.i8[8] = v14;
  *(&v27.i32[2] + 1) = v41[0];
  v27.i32[3] = *(v41 + 3);
  v28 = v21;
  v29 = v22;
  v30 = v23;
  v31.i64[0] = v24;
  v31.i64[1] = v15;
  v32 = v26;
  v33 = v13;
  v34 = v14;
  *v35 = v41[0];
  *&v35[3] = *(v41 + 3);
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v39 = v24;
  v40 = v15;
  sub_2384A61B4(&v26, &v25);
  sub_2384A61EC(&v32);
  v16 = v29;
  a7[2] = v28;
  a7[3] = v16;
  v17 = v31;
  a7[4] = v30;
  a7[5] = v17;
  result = *v26.i64;
  v19 = v27;
  *a7 = v26;
  a7[1] = v19;
  return result;
}

uint64_t sub_2384A4E78(uint64_t a1)
{
  v2 = sub_238758680();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_23849CDC8(&qword_27DF0B0F0, MEMORY[0x277CC6F70]);
  result = MEMORY[0x23EE63960](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_238709400(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_2384A5014(uint64_t a1)
{
  v2 = sub_23875BCB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_23849CDC8(&qword_27DF0A200, MEMORY[0x277CC95F0]);
  result = MEMORY[0x23EE63960](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_2387096E0(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_2384A51B0(uint64_t a1)
{
  v2 = sub_238757AD0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_23849CDC8(&qword_27DF0B168, MEMORY[0x277CC6B60]);
  result = MEMORY[0x23EE63960](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v6, v16, v2);
      sub_238709CA0(v9, v6);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_2384A537C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_238449184(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2384A53FC(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23875F3A0())
  {
    v12 = sub_238449184(0, a2, a3);
    v13 = sub_2384A537C(a4, a2, a3);
    result = MEMORY[0x23EE63960](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x23EE63F70](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      ++a2;
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_23875F3A0();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2384A5568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2384A55B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2384A5620(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2384A5668(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2384A56D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2384A5720(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2384A57C4()
{
  type metadata accessor for OrderDetailsRelatedEmailView.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2384A58C0(319, &qword_2814F09B0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2384A58C0(319, &qword_27DF0B130, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2384A58C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2384A5960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RelatedEmailContents(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384A59C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2384A5A2C()
{
  result = qword_27DF0B158;
  if (!qword_27DF0B158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B148, &qword_2387679D8);
    sub_23849CDC8(&qword_27DF0B160, type metadata accessor for RelatedEmailContents);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B158);
  }

  return result;
}

uint64_t sub_2384A5AE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2384A5B40(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x23EE63960](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_23870A23C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_2384A5C00()
{
  sub_2384561E8();
  if (v0 <= 0x3F)
  {
    sub_2384A58C0(319, &qword_2814F1160, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_23875BC40();
      if (v2 <= 0x3F)
      {
        sub_2384A58C0(319, &qword_27DF0B130, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for OrderDetailsRelatedEmailView.ViewModel.ShippingStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OrderDetailsRelatedEmailView.ViewModel.ShippingStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrderDetailsRelatedEmailView.ViewModel.MerchantEmail.EmailType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF0)
  {
    goto LABEL_20;
  }

  v2 = a2 + 16;
  if (a2 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 16;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 16;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0xA)
  {
    v8 = v7 - 9;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 8)
  {
    return v8 - 7;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OrderDetailsRelatedEmailView.ViewModel.MerchantEmail.EmailType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 16;
  if (a3 + 16 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF0)
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 16;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_2384A5FE8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0xA)
  {
    return v1 - 9;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2384A5FFC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 9;
  }

  return result;
}

unint64_t sub_2384A601C()
{
  result = qword_27DF0B180;
  if (!qword_27DF0B180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B188, qword_238767A50);
    sub_2384A5A2C();
    sub_23849CDC8(&qword_27DF0B160, type metadata accessor for RelatedEmailContents);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B180);
  }

  return result;
}

unint64_t sub_2384A60DC()
{
  result = qword_27DF0B190;
  if (!qword_27DF0B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B190);
  }

  return result;
}

uint64_t sub_2384A614C()
{
  v1 = *(type metadata accessor for RelatedEmailContents(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23849D6BC(v2);
}

uint64_t sub_2384A621C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_23843980C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2384A626C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2384397FC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2384A62BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_2384A630C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12FinanceKitUI11MessageIcon33_A3EDBECB49885BD10E3889C340818FDALLV0E4TypeOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_2384A63A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2384A63F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2384A6458()
{
  result = qword_27DF0B1F8;
  if (!qword_27DF0B1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B1B8, &qword_238767B80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B198, &qword_238767B70);
    sub_23875C950();
    sub_23843A3E8(&qword_27DF0B1B0, &qword_27DF0B198, &qword_238767B70);
    sub_23849CDC8(&qword_27DF0A778, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B1F8);
  }

  return result;
}

uint64_t sub_2384A65C0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2384494A4;

  return sub_2384A00DC(v0 + 16);
}

unint64_t sub_2384A6654()
{
  result = qword_27DF0B260;
  if (!qword_27DF0B260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B258, &unk_238767E38);
    sub_2384A6738(&qword_27DF0B268, &qword_27DF0B270, &unk_238767E48, sub_238449688);
    sub_23843A3E8(&qword_27DF09AD0, &qword_27DF09A88, &qword_238764220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B260);
  }

  return result;
}

uint64_t sub_2384A6738(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2384A67DC()
{
  result = qword_27DF0B278;
  if (!qword_27DF0B278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B280, &qword_238767E68);
    sub_23843A3E8(&qword_27DF0B218, &qword_27DF0B208, &qword_238767DB0);
    sub_2384A6738(&qword_27DF0A8E0, &qword_27DF0A890, &qword_238766090, sub_23847E248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B278);
  }

  return result;
}

uint64_t sub_2384A68D8()
{
  swift_getKeyPath();
  sub_2384AA9E0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel);
  sub_23875BE90();

  v1 = *(v0 + 16);
}

uint64_t sub_2384A697C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2384AA9E0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel);
  sub_23875BE90();

  *a2 = *(v3 + 16);
}

uint64_t sub_2384A6A28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_2384A6A54(v4);
}

uint64_t sub_2384A6A54(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_2384AA9E0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel);
    sub_23875BE80();
  }
}

uint64_t sub_2384A6B88()
{
  v1 = v0;
  started = type metadata accessor for SharingStartDate(0);
  v3 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v21 = v0;
  sub_2384AA9E0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel);
  sub_23875BE90();

  v6 = *(v0 + 16);
  swift_getKeyPath();
  v21 = v6;
  sub_2384AA9E0(&qword_27DF0B2D8, type metadata accessor for SharingStartDateModel);

  sub_23875BE90();

  v7 = *(v6 + OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__sinceOpeningSelected);

  if (v7 == 1)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v8 = qword_2814F1B90;
    v9 = sub_23875EA50();
  }

  else
  {
    swift_getKeyPath();
    v21 = v1;
    sub_23875BE90();

    v10 = *(v1 + 16);
    swift_getKeyPath();
    v21 = v10;

    sub_23875BE90();

    v11 = OBJC_IVAR____TtC12FinanceKitUI21SharingStartDateModel__selectedDate;
    swift_beginAccess();
    sub_2384AA36C(v10 + v11, v5);

    v12 = &v5[*(started + 20)];
    v14 = *v12;
    v13 = *(v12 + 1);

    sub_2384AA698(v5, type metadata accessor for SharingStartDate);
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v8 = qword_2814F1B90;
    v9 = sub_23875EA50();
  }

  v15 = sub_23875EA50();
  v16 = sub_23875EA50();
  v17 = [v8 localizedStringForKey:v9 value:v15 table:v16];

  v18 = sub_23875EA80();
  return v18;
}

uint64_t sub_2384A6F20()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC12FinanceKitUI21AccountStartDateModel_account;
  v3 = sub_238758680();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC12FinanceKitUI21AccountStartDateModel___observationRegistrar;
  v5 = sub_23875BED0();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2384A7004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = sub_23875D030();
  LOBYTE(v33) = 1;
  sub_2384A72D8(a1, v30);
  *&v29[7] = v30[0];
  *&v29[23] = v30[1];
  *&v29[39] = v30[2];
  *&v29[55] = v30[3];
  v27 = v33;
  v33 = sub_2384A6B88();
  v34 = v4;
  sub_2384397A8();
  v5 = sub_23875DAA0();
  v7 = v6;
  v9 = v8;
  LODWORD(v33) = sub_23875D440();
  v10 = sub_23875DA20();
  v12 = v11;
  v14 = v13;
  sub_2384397FC(v5, v7, v9 & 1);

  sub_23875D820();
  v15 = sub_23875DA60();
  v17 = v16;
  v26 = v18;
  v20 = v19;

  sub_2384397FC(v10, v12, v14 & 1);

  v31[0] = v28;
  v31[1] = 0;
  v32[0] = v27;
  *&v32[1] = *v29;
  *&v32[33] = *&v29[32];
  *&v32[17] = *&v29[16];
  *&v32[49] = *&v29[48];
  *&v32[64] = *&v29[63];
  v21 = *v32;
  *a2 = v28;
  *(a2 + 16) = v21;
  v22 = *&v32[16];
  v23 = *&v32[48];
  v24 = *&v32[64];
  *(a2 + 48) = *&v32[32];
  *(a2 + 64) = v23;
  *(a2 + 32) = v22;
  *(a2 + 80) = v24;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 104) = v15;
  *(a2 + 112) = v17;
  *(a2 + 120) = v26 & 1;
  *(a2 + 128) = v20;
  sub_23843981C(v31, &v33, &qword_27DF0B3F8, &unk_238768110);
  sub_23843980C(v15, v17, v26 & 1);

  sub_2384397FC(v15, v17, v26 & 1);

  v33 = v28;
  v34 = 0;
  v35 = v27;
  v37 = *&v29[16];
  v38 = *&v29[32];
  *v39 = *&v29[48];
  *&v39[15] = *&v29[63];
  v36 = *v29;
  sub_238439884(&v33, &qword_27DF0B3F8, &unk_238768110);
}

uint64_t sub_2384A72D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v68 = a2;
  v3 = sub_238757FC0();
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = *(v60 + 64);
  MEMORY[0x28223BE20](v3);
  v59 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238758A00();
  v65 = *(v6 - 8);
  v7 = *(v65 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v64 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = v58 - v10;
  sub_23875ED50();
  v67 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = OBJC_IVAR____TtC12FinanceKitUI21AccountStartDateModel_account;
  v70 = sub_2387585B0();
  v71 = v12;
  v58[1] = sub_2384397A8();
  v13 = sub_23875DAA0();
  v15 = v14;
  v17 = v16;
  LODWORD(v70) = sub_23875D420();
  v18 = sub_23875DA20();
  v20 = v19;
  v22 = v21;
  v62 = a1;
  sub_2384397FC(v13, v15, v17 & 1);

  sub_23875D820();
  v23 = sub_23875DA60();
  v25 = v24;
  v66 = v26;
  v28 = v27;

  sub_2384397FC(v18, v20, v22 & 1);

  v58[0] = v11;
  v29 = v63;
  sub_238758580();
  v31 = v64;
  v30 = v65;
  (*(v65 + 104))(v64, *MEMORY[0x277CC7158], v6);
  sub_2384AA9E0(&unk_27DF0B400, MEMORY[0x277CC7180]);
  sub_23875EC40();
  sub_23875EC40();
  v32 = *(v30 + 8);
  v32(v31, v6);
  v32(v29, v6);
  if (v70 == v69)
  {
    v33 = v59;
    sub_2387585C0();
    v34 = sub_238757FB0();
    v36 = v35;
    (*(v60 + 8))(v33, v61);
    v70 = v34;
    v71 = v36;
    v37 = sub_23875DAA0();
    v39 = v38;
    LOBYTE(v33) = v40;
    LODWORD(v70) = sub_23875D440();
    v41 = sub_23875DA20();
    v43 = v42;
    v45 = v44;
    v65 = v28;
    sub_2384397FC(v37, v39, v33 & 1);

    sub_23875D970();
    v46 = sub_23875DA60();
    v48 = v47;
    v64 = v25;
    v49 = v23;
    v51 = v50;
    v53 = v52;

    sub_2384397FC(v41, v43, v45 & 1);
    v28 = v65;

    v54 = v51 & 1;
    v23 = v49;
    v25 = v64;
    sub_23843980C(v46, v48, v54);
  }

  else
  {
    v46 = 0;
    v48 = 0;
    v54 = 0;
    v53 = 0;
  }

  v55 = v66 & 1;
  sub_23843980C(v23, v25, v66 & 1);

  sub_238476F5C(v46, v48, v54, v53);
  sub_238476FA0(v46, v48, v54, v53);
  LOBYTE(v70) = v55;
  v56 = v68;
  *v68 = v23;
  v56[1] = v25;
  *(v56 + 16) = v55;
  v56[3] = v28;
  v56[4] = v46;
  v56[5] = v48;
  v56[6] = v54;
  v56[7] = v53;
  sub_238476FA0(v46, v48, v54, v53);
  sub_2384397FC(v23, v25, v55);
}

uint64_t sub_2384A7848()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2387632F0;
  v3 = [v1 localizedName];
  v4 = sub_23875EA80();
  v6 = v5;

  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_238448C58();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  sub_23875EA80();
  v12 = sub_23875EAA0();

  return v12;
}

uint64_t CustomizeAccountListView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v13 = v1[2];
  v14 = v3;
  v15 = *(v1 + 8);
  v4 = v1[1];
  v11 = *v1;
  v12 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B288, &qword_238767E70);
  sub_23843A3E8(&qword_27DF0B290, &qword_27DF0B288, &qword_238767E70);
  sub_23875C8F0();
  v5 = swift_allocObject();
  v6 = v14;
  *(v5 + 48) = v13;
  *(v5 + 64) = v6;
  *(v5 + 80) = v15;
  v7 = v12;
  *(v5 + 16) = v11;
  *(v5 + 32) = v7;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B298, &qword_238767E78) + 36));
  *v8 = sub_2384A9648;
  v8[1] = v5;
  v8[2] = 0;
  v8[3] = 0;
  return sub_2384A9650(&v11, v10);
}

uint64_t sub_2384A7B20@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B2E0, &unk_238768010);
  sub_2384A7BFC(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_2384A7BFC@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B2E8, &unk_238784130);
  v3 = *(*(v34 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v34);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B2F0, &qword_238768020);
  v8 = *(v33 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v33);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  sub_23875ED50();
  v35 = sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  *(&v32 - 2) = a1;
  sub_23875D760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B2F8, &qword_238768028);
  sub_2384AA578();
  v16 = sub_23875C410();
  v32 = v14;
  MEMORY[0x28223BE20](v16);
  *(&v32 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  sub_23843A3E8(&qword_27DF0AAE0, &qword_27DF0AAD8, &qword_23876B8C0);
  sub_23875D1D0();
  v17 = sub_23875D770();
  sub_23875C3D0();
  v18 = &v7[*(v34 + 36)];
  *v18 = v17;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v23 = v8[2];
  v24 = v12;
  v25 = v12;
  v26 = v33;
  v23(v25, v14, v33);
  v27 = v37;
  sub_23843981C(v7, v37, &qword_27DF0B2E8, &unk_238784130);
  v28 = v36;
  v23(v36, v24, v26);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B318, &qword_238768040);
  sub_23843981C(v27, &v28[*(v29 + 48)], &qword_27DF0B2E8, &unk_238784130);
  sub_238439884(v7, &qword_27DF0B2E8, &unk_238784130);
  v30 = v8[1];
  v30(v32, v26);
  sub_238439884(v27, &qword_27DF0B2E8, &unk_238784130);
  v30(v24, v26);
}

uint64_t sub_2384A8010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B310, &unk_238768030);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B2F8, &qword_238768028);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - v10;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v7 = sub_23875D020();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B330, &qword_238768058);
  sub_2384A8230(a1, &v7[*(v12 + 44)]);
  sub_23875E4A0();
  sub_23875C9C0();
  sub_2384396E4(v7, v11, &qword_27DF0B310, &unk_238768030);
  v13 = &v11[*(v8 + 36)];
  v14 = v18[5];
  *(v13 + 4) = v18[4];
  *(v13 + 5) = v14;
  *(v13 + 6) = v18[6];
  v15 = v18[1];
  *v13 = v18[0];
  *(v13 + 1) = v15;
  v16 = v18[3];
  *(v13 + 2) = v18[2];
  *(v13 + 3) = v16;
  sub_2384396E4(v11, a2, &qword_27DF0B2F8, &qword_238768028);
}

uint64_t sub_2384A8230@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v85 = a2;
  v3 = sub_23875D310();
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = *(v80 + 64);
  MEMORY[0x28223BE20](v3);
  v76 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B338, &qword_238768060);
  v71 = *(v75 - 8);
  v6 = *(v71 + 64);
  MEMORY[0x28223BE20](v75);
  v66 = &v63 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B340, &qword_238768068);
  v72 = *(v78 - 8);
  v8 = *(v72 + 64);
  MEMORY[0x28223BE20](v78);
  v67 = &v63 - v9;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B348, &qword_238768070);
  v74 = *(v79 - 8);
  v10 = *(v74 + 64);
  MEMORY[0x28223BE20](v79);
  v69 = &v63 - v11;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B350, &qword_238768078);
  v73 = *(v77 - 8);
  v12 = *(v73 + 64);
  MEMORY[0x28223BE20](v77);
  v68 = &v63 - v13;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B358, &unk_238768080);
  v14 = *(*(v70 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v70);
  v83 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v82 = &v63 - v17;
  sub_23875ED50();
  v84 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v87 = sub_23875D030();
  v117 = 0;
  sub_2384A8CB0(a1, &v99);
  v120 = v99;
  v121 = *v100;
  v122 = *&v100[16];
  v123 = *&v100[32];
  v124[0] = v99;
  v124[1] = *v100;
  v124[2] = *&v100[16];
  v124[3] = *&v100[32];
  sub_23843981C(&v120, v98, &qword_27DF0B360, &qword_23877AE40);
  sub_238439884(v124, &qword_27DF0B360, &qword_23877AE40);
  *&v116[7] = v120;
  *&v116[23] = v121;
  *&v116[39] = v122;
  *&v116[55] = v123;
  v86 = v117;
  sub_23875E4B0();
  sub_23875C9C0();
  v65 = sub_23875D770();
  sub_23875C3D0();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v118 = 0;
  v64 = sub_23875D7A0();
  sub_23875C3D0();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v119 = 0;
  v99 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B320, &qword_238768048);
  sub_23875E1B0();
  v34 = v98[0];
  swift_getKeyPath();
  v35 = swift_allocObject();
  v36 = *(a1 + 48);
  *(v35 + 48) = *(a1 + 32);
  *(v35 + 64) = v36;
  *(v35 + 80) = *(a1 + 64);
  v37 = *(a1 + 16);
  *(v35 + 16) = *a1;
  *(v35 + 32) = v37;
  v98[0] = v34;
  MEMORY[0x28223BE20](v35);
  sub_2384A9650(a1, &v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B368, &qword_2387680D0);
  sub_2384AA77C();
  v38 = v66;
  sub_23875D9C0();

  v39 = v76;
  sub_23875D300();
  v40 = sub_23843A3E8(&qword_27DF0B3A8, &qword_27DF0B338, &qword_238768060);
  v41 = MEMORY[0x277CDE0D0];
  v42 = v67;
  v43 = v75;
  v44 = v81;
  sub_23875DF50();
  (*(v80 + 8))(v39, v44);
  (*(v71 + 8))(v38, v43);
  *&v99 = v43;
  *(&v99 + 1) = v44;
  *v100 = v40;
  *&v100[8] = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v69;
  v47 = v78;
  sub_23875DD80();
  (*(v72 + 8))(v42, v47);
  *&v99 = v47;
  *(&v99 + 1) = OpaqueTypeConformance2;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v68;
  v50 = v79;
  sub_23875DB70();
  (*(v74 + 8))(v46, v50);
  *&v99 = v50;
  *(&v99 + 1) = v48;
  swift_getOpaqueTypeConformance2();
  v51 = v82;
  v52 = v77;
  sub_23875DE10();
  (*(v73 + 8))(v49, v52);
  LOBYTE(v38) = sub_23875D770();
  sub_23875C3D0();
  v53 = v51 + *(v70 + 36);
  *v53 = v38;
  *(v53 + 8) = v54;
  *(v53 + 16) = v55;
  *(v53 + 24) = v56;
  *(v53 + 32) = v57;
  *(v53 + 40) = 0;
  v58 = v83;
  sub_238401BE4(v51, v83);
  v98[0] = v87;
  v98[1] = 0;
  LOBYTE(v98[2]) = v86;
  *(&v98[4] + 1) = *&v116[16];
  *(&v98[6] + 1) = *&v116[32];
  *(&v98[8] + 1) = *&v116[48];
  v98[10] = *&v116[63];
  *(&v98[2] + 1) = *v116;
  *&v98[11] = v91;
  *&v98[13] = v92;
  *&v98[15] = v93;
  *&v98[23] = v97;
  *&v98[21] = v96;
  *&v98[19] = v95;
  *&v98[17] = v94;
  LOBYTE(v43) = v64;
  LOBYTE(v42) = v65;
  LOBYTE(v98[25]) = v65;
  HIDWORD(v98[25]) = *&v90[3];
  *(&v98[25] + 1) = *v90;
  v98[26] = v19;
  v98[27] = v21;
  v98[28] = v23;
  v98[29] = v25;
  LOBYTE(v98[30]) = 0;
  HIDWORD(v98[30]) = *&v89[3];
  *(&v98[30] + 1) = *v89;
  LOBYTE(v98[31]) = v64;
  HIDWORD(v98[31]) = *&v88[3];
  *(&v98[31] + 1) = *v88;
  v98[32] = v27;
  v98[33] = v29;
  v98[34] = v31;
  v98[35] = v33;
  LOBYTE(v98[36]) = 0;
  v59 = v85;
  memcpy(v85, v98, 0x121uLL);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B3B0, &qword_2387680F0);
  sub_238401BE4(v58, &v59[*(v60 + 48)]);
  v61 = &v59[*(v60 + 64)];
  *v61 = 0;
  v61[8] = 1;
  sub_23843981C(v98, &v99, &qword_27DF0B3B8, &qword_23877F7B0);
  sub_238401C54(v51);
  sub_238401C54(v58);
  *&v100[17] = *&v116[16];
  *&v100[33] = *&v116[32];
  *v101 = *&v116[48];
  *&v100[1] = *v116;
  *&v101[71] = v94;
  *&v101[87] = v95;
  *&v101[103] = v96;
  *&v101[119] = v97;
  *&v101[23] = v91;
  *&v101[39] = v92;
  v99 = v87;
  v100[0] = v86;
  *&v101[15] = *&v116[63];
  *&v101[55] = v93;
  v101[135] = v42;
  *&v102[3] = *&v90[3];
  *v102 = *v90;
  v103 = v19;
  v104 = v21;
  v105 = v23;
  v106 = v25;
  v107 = 0;
  *v108 = *v89;
  *&v108[3] = *&v89[3];
  v109 = v43;
  *&v110[3] = *&v88[3];
  *v110 = *v88;
  v111 = v27;
  v112 = v29;
  v113 = v31;
  v114 = v33;
  v115 = 0;
  sub_238439884(&v99, &qword_27DF0B3B8, &qword_23877F7B0);
}

uint64_t sub_2384A8CB0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v4 = qword_2814F1B90;
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

  sub_23875EA80();
  sub_2384397A8();
  v9 = sub_23875DAA0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v25 = a1[2];
  v26 = a1[3];
  v27 = *(a1 + 8);
  v23 = *a1;
  v24 = a1[1];
  sub_2384A7848();
  v16 = sub_23875DAA0();
  v18 = v17;
  v20 = v19 & 1;
  *a2 = v9;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v19 & 1;
  *(a2 + 56) = v21;
  sub_23843980C(v9, v11, v13 & 1);

  sub_23843980C(v16, v18, v20);

  sub_2384397FC(v16, v18, v20);

  sub_2384397FC(v9, v11, v13 & 1);
}

uint64_t sub_2384A8F38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  started = type metadata accessor for SingleAccountStartDateSelectionView(0);
  v7 = *(*(started - 8) + 64);
  MEMORY[0x28223BE20](started);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = *(a2 + 48);

  v12 = sub_238652958(v10, v11, v9);
  MEMORY[0x28223BE20](v12);
  v15[-2] = a2;
  v15[-1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B3C8, &qword_2387680F8);
  sub_2384AA928();
  sub_2384AA9E0(&qword_27DF0B3E8, type metadata accessor for SingleAccountStartDateSelectionView);
  sub_23875C750();
  if (qword_27DF08D80 != -1)
  {
    swift_once();
  }

  v15[1] = qword_27DF2F920;

  v13 = sub_23875E2D0();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B380, &qword_2387680D8);
  *(a3 + *(result + 36)) = v13;
  return result;
}

double sub_2384A917C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23875CE60();
  v31 = 1;
  sub_2384A7004(a1, &v21);
  v38 = v27;
  v39 = v28;
  v34 = v23;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v32 = v21;
  v33 = v22;
  v41[6] = v27;
  v41[7] = v28;
  v41[2] = v23;
  v41[3] = v24;
  v41[4] = v25;
  v41[5] = v26;
  v40 = v29;
  v42 = v29;
  v41[0] = v21;
  v41[1] = v22;
  sub_23843981C(&v32, &v20, &qword_27DF0B3F0, &qword_238768108);
  sub_238439884(v41, &qword_27DF0B3F0, &qword_238768108);
  *&v30[87] = v37;
  *&v30[103] = v38;
  *&v30[119] = v39;
  *&v30[23] = v33;
  *&v30[39] = v34;
  *&v30[55] = v35;
  *&v30[71] = v36;
  *&v30[135] = v40;
  *&v30[7] = v32;
  v5 = v31;
  v6 = sub_23875D7D0();
  sub_23875C3D0();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = *&v30[64];
  *(a2 + 97) = *&v30[80];
  v16 = *&v30[112];
  *(a2 + 113) = *&v30[96];
  *(a2 + 129) = v16;
  *(a2 + 144) = *&v30[127];
  v17 = *v30;
  *(a2 + 33) = *&v30[16];
  result = *&v30[32];
  v19 = *&v30[48];
  *(a2 + 49) = *&v30[32];
  *(a2 + 65) = v19;
  *(a2 + 81) = v15;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 17) = v17;
  *(a2 + 160) = v6;
  *(a2 + 168) = v8;
  *(a2 + 176) = v10;
  *(a2 + 184) = v12;
  *(a2 + 192) = v14;
  *(a2 + 200) = 0;
  return result;
}

uint64_t sub_2384A9388@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v4 = qword_2814F1B90;
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

  v9 = sub_23875EA80();
  v11 = v10;

  v12 = swift_allocObject();
  v13 = *(a1 + 48);
  *(v12 + 48) = *(a1 + 32);
  *(v12 + 64) = v13;
  *(v12 + 80) = *(a1 + 64);
  v14 = *(a1 + 16);
  *(v12 + 16) = *a1;
  *(v12 + 32) = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  v16 = v15[9];
  sub_2384A9650(a1, v19);
  sub_23875D610();

  *a2 = v9;
  a2[1] = v11;
  *(a2 + v15[10]) = 0;
  v18 = (a2 + v15[11]);
  *v18 = sub_2384AA638;
  v18[1] = v12;
  return result;
}

uint64_t sub_2384A9588(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + 48);
  v3 = sub_23854B138(MEMORY[0x277D84F90]);
  sub_23844C218(v2, 24, v3);
}

uint64_t sub_2384A96A4()
{
  v1 = type metadata accessor for SelectAccountsResult(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_238759510();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v44);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875BC40();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v0[1];
  v38 = *v0;
  v37 = v13;
  v39 = v0[2];
  v14 = v0[5];
  v41 = v0[4];
  v40 = v14;
  v36 = v0[6];
  v15 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v17 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v18 = *MEMORY[0x277D38428];
  v19 = sub_23875EA80();
  v20 = MEMORY[0x277D38390];
  *(inited + 40) = v19;
  *(inited + 48) = v21;
  v22 = *v20;
  *(inited + 56) = *v20;
  *(inited + 64) = 0x6572616873;
  v23 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = v23;
  *(inited + 88) = 0xD000000000000016;
  *(inited + 96) = 0x8000000238785020;
  v24 = v17;
  v25 = v22;
  v26 = v23;
  v27 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46[0] = v27;
  sub_2385C33E4(v15, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v46);

  v29 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384AA9E0(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v30 = sub_23875E910();

  [v29 subject:v36 sendEvent:v30];

  sub_23875BBF0();
  v46[0] = v38;
  v46[1] = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B320, &qword_238768048);
  v31 = sub_23875E1B0();
  v32 = v45;
  MEMORY[0x28223BE20](v31);
  *(&v35 - 2) = v12;
  sub_2384C8BB8(MEMORY[0x277D84F98], sub_2384AA67C, (&v35 - 4), v32);

  sub_238759500();
  v33 = v44;
  (*(v5 + 16))(v4, v8, v44);
  (*(v5 + 56))(v4, 0, 1, v33);
  v41(v4);
  sub_2384AA698(v4, type metadata accessor for SelectAccountsResult);
  (*(v5 + 8))(v8, v33);
  return (*(v42 + 8))(v12, v43);
}

uint64_t sub_2384A9B98(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v34 = a3;
  v31 = a1;
  v4 = sub_23875BCB0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_23875BC40();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v33);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v29 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  v17 = sub_2387587E0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a2;
  sub_23875ED50();
  v32 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  v35 = v22;
  sub_2384AA9E0(&qword_27DF0B2D0, type metadata accessor for AccountStartDateModel);
  sub_23875BE90();

  v23 = *(v22 + 16);
  (*(v7 + 16))(v10, v34, v33);

  sub_2384C8518(v24, v10, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_238439884(v16, &qword_27DF0B328, &qword_238768050);
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v25 = v30;
    sub_238758640();
    v26 = v29;
    (*(v18 + 16))(v29, v21, v17);
    (*(v18 + 56))(v26, 0, 1, v17);
    sub_2386C3EA4(v26, v25);
    (*(v18 + 8))(v21, v17);
  }
}

uint64_t sub_2384A9F88@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v13 = v1[2];
  v14 = v3;
  v15 = *(v1 + 8);
  v4 = v1[1];
  v11 = *v1;
  v12 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B288, &qword_238767E70);
  sub_23843A3E8(&qword_27DF0B290, &qword_27DF0B288, &qword_238767E70);
  sub_23875C8F0();
  v5 = swift_allocObject();
  v6 = v14;
  *(v5 + 48) = v13;
  *(v5 + 64) = v6;
  *(v5 + 80) = v15;
  v7 = v12;
  *(v5 + 16) = v11;
  *(v5 + 32) = v7;
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B298, &qword_238767E78) + 36));
  *v8 = sub_2384AAA28;
  v8[1] = v5;
  v8[2] = 0;
  v8[3] = 0;
  return sub_2384A9650(&v11, v10);
}

uint64_t type metadata accessor for AccountStartDateModel()
{
  result = qword_27DF0B2A8;
  if (!qword_27DF0B2A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2384AA10C()
{
  result = sub_238758680();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_23875BED0();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2384AA20C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2384AA254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2384AA2B4()
{
  result = qword_27DF0B2B8;
  if (!qword_27DF0B2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B298, &qword_238767E78);
    sub_23843A3E8(&qword_27DF0B2C0, &qword_27DF0B2C8, &qword_238767F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B2B8);
  }

  return result;
}

uint64_t sub_2384AA36C(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for SharingStartDate(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_2384AA3D0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);
}

uint64_t sub_2384AA40C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE50, &qword_2387672C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B380, &qword_2387680D8);
  sub_23843A3E8(&qword_27DF0B3C0, &qword_27DF0AE50, &qword_2387672C0);
  sub_2384AA9E0(&qword_27DF09508, MEMORY[0x277CC8058]);
  sub_2384AA800();
  return sub_23875E370();
}

unint64_t sub_2384AA578()
{
  result = qword_27DF0B300;
  if (!qword_27DF0B300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B2F8, &qword_238768028);
    sub_23843A3E8(&qword_27DF0B308, &qword_27DF0B310, &unk_238768030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B300);
  }

  return result;
}

uint64_t sub_2384AA638()
{
  v4 = *(v0 + 48);
  v5 = *(v0 + 64);
  v6 = *(v0 + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  return sub_2384A96A4();
}

uint64_t sub_2384AA698(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 56);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

unint64_t sub_2384AA77C()
{
  result = qword_27DF0B370;
  if (!qword_27DF0B370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B368, &qword_2387680D0);
    sub_2384AA800();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B370);
  }

  return result;
}

unint64_t sub_2384AA800()
{
  result = qword_27DF0B378;
  if (!qword_27DF0B378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B380, &qword_2387680D8);
    sub_23843A3E8(&qword_27DF0B388, &qword_27DF0B390, &unk_2387680E0);
    sub_23843A3E8(&qword_27DF0B398, &qword_27DF0B3A0, &qword_23876A9E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B378);
  }

  return result;
}

uint64_t sub_2384AA8E4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  return v2(&v5);
}

unint64_t sub_2384AA928()
{
  result = qword_27DF0B3D0;
  if (!qword_27DF0B3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B3C8, &qword_2387680F8);
    sub_23843A3E8(&qword_27DF0B3D8, &qword_27DF0B3E0, &qword_238768100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B3D0);
  }

  return result;
}

uint64_t sub_2384AA9E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2384AAA48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v8 = (v7 - 8);
  v9 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  sub_23875EFB0();
  v15 = v8[8];
  v16 = sub_23875A9A0();
  (*(*(v16 - 8) + 56))(&v14[v15], 1, 1, v16);
  v17 = v8[9];
  v18 = *MEMORY[0x277CC8260];
  v19 = sub_23875AB40();
  (*(*(v19 - 8) + 104))(&v14[v17], v18, v19);
  *&v14[v8[7]] = a1;
  v14[v8[10]] = 0;
  sub_2384AD678(v14, v12, type metadata accessor for BankConnectAuthorizationFlowConfig);
  v20 = objc_allocWithZone(type metadata accessor for BankConnectAuthorizationViewController(0));
  v21 = a1;

  v22 = sub_2384AC768(v12, a3, a4);

  sub_2384AD6E0(v14, type metadata accessor for BankConnectAuthorizationFlowConfig);
  return v22;
}

uint64_t sub_2384AB158@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B520, &qword_2387681F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = sub_23875BCB0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  v19 = sub_23875A910();
  if (v19 == 2)
  {
    sub_23875A920();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      v23 = sub_23875A9A0();
      (*(*(v23 - 8) + 8))(a1, v23);
      v24 = *(v12 + 32);
      v24(v18, v10, v11);
      v24(a2, v18, v11);
      v22 = MEMORY[0x277CC8258];
      goto LABEL_7;
    }

    sub_238439884(v10, &unk_27DF0B520, &qword_2387681F0);
    goto LABEL_14;
  }

  if (v19 == 1)
  {
    sub_23875A920();
    if ((*(v12 + 48))(v8, 1, v11) != 1)
    {
      v20 = sub_23875A9A0();
      (*(*(v20 - 8) + 8))(a1, v20);
      v21 = *(v12 + 32);
      v21(v16, v8, v11);
      v21(a2, v16, v11);
      v22 = MEMORY[0x277CC8268];
LABEL_7:
      v25 = *v22;
      v26 = sub_23875AB40();
      return (*(*(v26 - 8) + 104))(a2, v25, v26);
    }

    sub_238439884(v8, &unk_27DF0B520, &qword_2387681F0);
    goto LABEL_14;
  }

  if (v19)
  {
LABEL_14:
    result = sub_23875F520();
    __break(1u);
    return result;
  }

  v28 = sub_23875A9A0();
  (*(*(v28 - 8) + 8))(a1, v28);
  v29 = *MEMORY[0x277CC8260];
  v30 = sub_23875AB40();
  v31 = *(*(v30 - 8) + 104);

  return v31(a2, v29, v30);
}

id BankConnectAuthorizationViewControllerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BankConnectAuthorizationViewControllerProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BankConnectAuthorizationViewControllerProvider();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_2384AB80C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = type metadata accessor for BankConnectAuthorizationFlowResult(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2384AD678(a1, v7, type metadata accessor for BankConnectAuthorizationFlowResult);
  v8 = type metadata accessor for BankConnectAuthorizationError();
  if ((*(*(v8 - 8) + 48))(v7, 2, v8) == 1)
  {
    return a2();
  }

  (a2)(0);
  return sub_2384AD6E0(v7, type metadata accessor for BankConnectAuthorizationFlowResult);
}

uint64_t sub_2384AB91C()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = sub_23875F520();
  __break(1u);
  return result;
}

id sub_2384ABA68(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2384ABAB0(char *a1)
{
  v2 = sub_23875B940();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875B8B0();
  v7 = *&a1[qword_27DF0B448];
  v8 = a1;
  sub_23850A5BC(v6);
  (*(v3 + 8))(v6, v2);
}

uint64_t sub_2384ABC18()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return 1;
}

uint64_t *sub_2384ABCA4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v90 = a7;
  v89 = a6;
  v88 = a5;
  v92 = a4;
  v77 = a3;
  v86 = a2;
  v85 = a1;
  v91 = *a8;
  v95 = sub_23875AB40();
  v94 = *(v95 - 8);
  v9 = *(v94 + 64);
  MEMORY[0x28223BE20](v95);
  v93 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v84 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3D0, &qword_2387681F8);
  v82 = *(v83 - 1);
  v14 = *(v82 + 64);
  MEMORY[0x28223BE20](v83);
  v81 = &v75 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B540, &qword_238765900);
  v16 = *(*(v80 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v80);
  v79 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v75 - v19;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12F30, &qword_23876D080);
  v21 = *(v78 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v78);
  v24 = &v75 - v23;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v25 = *(*(v76 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v76);
  v28 = &v75 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v75 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B550, &qword_238768200);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v75 - v34;
  v36 = sub_23875A820();
  v109[3] = v36;
  v109[4] = MEMORY[0x277CC7F70];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v109);
  v87 = v36;
  (*(*(v36 - 8) + 32))(boxed_opaque_existential_1, v77, v36);
  *(a8 + 72) = 0;
  v37 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_connectedConsent;
  v38 = sub_238758BB0();
  (*(*(v38 - 8) + 56))(a8 + v37, 1, 1, v38);
  v39 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_contextProvider;
  *(a8 + v39) = [objc_allocWithZone(type metadata accessor for WebAuthenticationPresentationContextProvider()) init];
  *(a8 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_authenticationSession) = 0;
  *(a8 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_didStartWebAuthorization) = 0;
  v40 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel__navigationPath;
  *&v106 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D030, &qword_238768208);
  sub_23875C290();
  (*(v32 + 32))(a8 + v40, v35, v31);
  v41 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel__redirectURL;
  v42 = sub_23875B940();
  (*(*(v42 - 8) + 56))(v30, 1, 1, v42);
  sub_23843981C(v30, v28, &qword_27DF0D040, &qword_2387676A0);
  sub_23875C290();
  sub_238439884(v30, &qword_27DF0D040, &qword_2387676A0);
  (*(v21 + 32))(a8 + v41, v24, v78);
  v43 = OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel__error;
  v44 = type metadata accessor for BankConnectAuthorizationError();
  (*(*(v44 - 8) + 56))(v20, 1, 1, v44);
  sub_23843981C(v20, v79, &unk_27DF0B540, &qword_238765900);
  v45 = v81;
  sub_23875C290();
  sub_238439884(v20, &unk_27DF0B540, &qword_238765900);
  (*(v82 + 32))(a8 + v43, v45, v83);
  swift_unknownObjectWeakInit();
  v83 = type metadata accessor for BankConnectAuthorizationFlowConfig;
  v46 = v85;
  sub_2384AD678(v85, a8 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowConfiguration, type metadata accessor for BankConnectAuthorizationFlowConfig);
  *(a8 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowType) = v86 & 1;
  a8[2] = v88;
  sub_23845C998(v109, (a8 + 3));
  v47 = (a8 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_completionHandler);
  v48 = v90;
  *v47 = v89;
  v47[1] = v48;

  v49 = v84;
  sub_238505694(v46, v84);
  sub_2384AD614(v49, a8 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_rootDestination);
  a8[8] = v92;

  v50 = sub_238758010();
  LOBYTE(v43) = sub_23851764C(v46, v50);

  *(a8 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_isExistingConnection) = v43 & 1;
  v51 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v52 = v94;
  v53 = v93;
  v54 = v95;
  (*(v94 + 16))(v93, v46 + *(v51 + 28), v95);
  sub_238758CC0();
  v55 = sub_238758CB0();
  v56 = sub_238758380();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  v59 = sub_238758370();
  v107 = v56;
  v108 = MEMORY[0x277CC6EB0];
  *&v106 = v59;
  v60 = sub_2387593B0();
  v61 = sub_2387593A0();
  v104 = v60;
  v105 = MEMORY[0x277CC78C0];
  *&v103 = v61;
  v62 = type metadata accessor for BankConnectAppAuthorizationHandler();
  v63 = swift_allocObject();
  v102[3] = v62;
  v102[4] = &off_284B2FCB8;
  v102[0] = v63;
  v64 = type metadata accessor for BankConnectAuthorizationFlowManager(0);
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  v67 = swift_allocObject();
  v68 = __swift_mutable_project_boxed_opaque_existential_1(v102, v62);
  v69 = *(*(v62 - 8) + 64);
  MEMORY[0x28223BE20](v68);
  v71 = (&v75 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71);
  v73 = *v71;
  v101 = &off_284B2FCB8;
  v100 = v62;
  *&v99 = v73;
  v98 = 0;
  sub_238757A30();
  v97[3] = v87;
  v97[4] = MEMORY[0x277CC7F68];
  __swift_allocate_boxed_opaque_existential_1(v97);
  sub_23875A7E0();
  sub_238757A00();
  *(v67 + 16) = v55;
  sub_2384347C0(&v106, v67 + 24);
  sub_2384347C0(&v103, v67 + 64);
  sub_2384347C0(&v99, v67 + 104);
  (*(v52 + 32))(v67 + OBJC_IVAR____TtC12FinanceKitUI35BankConnectAuthorizationFlowManager_authorizationConfiguration, v53, v54);
  __swift_destroy_boxed_opaque_existential_1(v102);
  *(a8 + OBJC_IVAR____TtC12FinanceKitUI37BankConnectAuthorizationFlowViewModel_flowManager) = v67;
  sub_23867B910(boxed_opaque_existential_1);

  sub_2384AD6E0(v46, v83);
  __swift_destroy_boxed_opaque_existential_1(v109);
  return a8;
}

uint64_t sub_2384AC768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a1;
  v6 = sub_23875BCB0();
  v61 = *(v6 - 8);
  v62 = v6;
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v6);
  v60 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v9 = *(*(v56 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v56);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v51 - v12;
  v13 = type metadata accessor for BankConnectAuthorizationFlowView(0);
  v14 = *(v13 - 8);
  v53 = v13 - 8;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_23875A820();
  v18 = *(v52 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v52);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v51 - v23;
  v25 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for BankConnectAuthorizationFlowConfig;
  sub_2384AD678(a1, v28, type metadata accessor for BankConnectAuthorizationFlowConfig);
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  *(v29 + 24) = a3;

  sub_23875A7E0();
  sub_238758CC0();
  v30 = sub_238758CB0();
  sub_238758890();
  sub_238758880();
  v31 = sub_238758870();

  v32 = type metadata accessor for BankConnectAuthorizationFlowViewModel(0);
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  v35 = swift_allocObject();
  v36 = v52;
  (*(v18 + 16))(v22, v24, v52);
  v37 = sub_2384ABCA4(v28, 1, v22, v30, v31, sub_2384AD604, v29, v35);

  (*(v18 + 8))(v24, v36);
  *(v57 + qword_27DF0B448) = v37;
  v38 = v53;
  v39 = *(v53 + 28);
  v40 = sub_23875B940();
  v41 = v54;
  (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
  sub_23843981C(v41, v55, &qword_27DF0D040, &qword_2387676A0);

  sub_23875E1A0();
  sub_238439884(v41, &qword_27DF0D040, &qword_2387676A0);
  v42 = *(v38 + 32);
  type metadata accessor for AnalyticsSession();
  v43 = swift_allocObject();
  v44 = v60;
  sub_23875BCA0();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0B530, &qword_2387637F0);
  v46 = *(v45 + 52);
  v47 = (*(v45 + 48) + 3) & 0x1FFFFFFFCLL;
  v48 = swift_allocObject();
  *(v48 + ((*(*v48 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  (*(v61 + 32))(v48 + *(*v48 + *MEMORY[0x277D841D0] + 16), v44, v62);
  *&v17[v42] = v43;
  *(v43 + 16) = v48;
  *v17 = sub_2384AD60C;
  *(v17 + 1) = v37;
  v17[16] = 0;
  v49 = sub_23875D080();
  sub_2384AD6E0(v59, v58);
  return v49;
}

uint64_t sub_2384ACCD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  sub_23875EFB0();
  v16 = v9[8];
  v17 = sub_23875A9A0();
  (*(*(v17 - 8) + 56))(&v15[v16], 1, 1, v17);
  v18 = v9[9];
  sub_23875BC90();
  v19 = *MEMORY[0x277CC8268];
  v20 = sub_23875AB40();
  (*(*(v20 - 8) + 104))(&v15[v18], v19, v20);
  *&v15[v9[7]] = a1;
  v15[v9[10]] = 0;
  sub_2384AD678(v15, v13, type metadata accessor for BankConnectAuthorizationFlowConfig);
  v21 = objc_allocWithZone(type metadata accessor for BankConnectAuthorizationViewController(0));
  v22 = a1;

  v23 = sub_2384AC768(v13, a4, a5);

  sub_2384AD6E0(v15, type metadata accessor for BankConnectAuthorizationFlowConfig);
  return v23;
}

uint64_t sub_2384ACEAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  sub_23875EFB0();
  v16 = v9[8];
  v17 = sub_23875A9A0();
  (*(*(v17 - 8) + 56))(&v15[v16], 1, 1, v17);
  v18 = v9[9];
  sub_23875BC90();
  v19 = *MEMORY[0x277CC8258];
  v20 = sub_23875AB40();
  (*(*(v20 - 8) + 104))(&v15[v18], v19, v20);
  *&v15[v9[7]] = a1;
  v15[v9[10]] = 0;
  sub_2384AD678(v15, v13, type metadata accessor for BankConnectAuthorizationFlowConfig);
  v21 = objc_allocWithZone(type metadata accessor for BankConnectAuthorizationViewController(0));
  v22 = a1;

  v23 = sub_2384AC768(v13, a4, a5);

  sub_2384AD6E0(v15, type metadata accessor for BankConnectAuthorizationFlowConfig);
  return v23;
}

uint64_t sub_2384AD088(void *a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v4 = type metadata accessor for BankConnectAuthorizationFlowConfig(0);
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23875A9A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  sub_23875F100();
  sub_23875A940();
  if (v16)
  {
    v17 = [objc_allocWithZone(MEMORY[0x277D37FC0]) init];
    v18 = sub_23875EA50();
    v31 = a1;
    v19 = v18;

    v20 = [v17 passWithFPANIdentifier_];

    a1 = v31;
  }

  else
  {
    v20 = 0;
  }

  v21 = [a1 institution];
  sub_23875EFB0();

  v22 = v4[6];
  v23 = *(v9 + 16);
  v23(&v7[v22], v15, v8);
  (*(v9 + 56))(&v7[v22], 0, 1, v8);
  v23(v13, v15, v8);
  v24 = v4[7];
  v25 = v20;
  sub_2384AB158(v13, &v7[v24]);
  *&v7[v4[5]] = v20;
  v7[v4[8]] = 0;
  v26 = objc_allocWithZone(type metadata accessor for BankConnectAuthorizationViewController(0));
  v27 = v33;

  v28 = sub_2384AC768(v7, v32, v27);

  (*(v9 + 8))(v15, v8);
  return v28;
}

void sub_2384AD398()
{
  sub_238757B60();
  if (v0 <= 0x3F)
  {
    sub_2384AD4D8(319, &qword_27DF0B430, sub_2384AD48C);
    if (v1 <= 0x3F)
    {
      sub_2384AD4D8(319, &qword_27DF0B440, MEMORY[0x277CC8048]);
      if (v2 <= 0x3F)
      {
        sub_23875AB40();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2384AD48C()
{
  result = qword_27DF096A8;
  if (!qword_27DF096A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF096A8);
  }

  return result;
}

void sub_2384AD4D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875F1F0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2384AD614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectAuthorizationNavigationDestination(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384AD678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384AD6E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_2384AD744()
{
  v0 = sub_238759710();
  v1 = sub_238759770();
  [v0 setPredicate_];

  [v0 setReturnsObjectsAsFaults_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09DE0, &unk_2387638D0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_238763E70;
  v3 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v4 = sub_23875EA50();
  v5 = [v3 initWithKey:v4 ascending:0];

  *(v2 + 32) = v5;
  sub_238449184(0, &qword_27DF09960, 0x277CCAC98);
  v6 = sub_23875EC60();

  [v0 setSortDescriptors_];

  return v0;
}

uint64_t sub_2384AD87C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_23875CDB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v41 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v46 = *(a1 + 96);
  v47 = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  sub_23875E310();
  v40 = v43;
  v37 = v45;
  v38 = v44;
  v46 = *(a1 + 72);
  v47 = *(a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
  sub_23875E310();
  v9 = v43;
  v10 = v44;
  v39 = v45;
  v11 = *(a1 + 32);
  v43 = v11;
  LOBYTE(v44) = *(a1 + 40);
  if (v44 == 1)
  {
    v35 = v11;
  }

  else
  {

    sub_23875EFF0();
    v12 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_238439884(&v43, &qword_27DF0B760, &qword_2387688A0);
    (*(v5 + 8))(v8, v4);
    v35 = v46;
  }

  v46 = *(a1 + 48);
  v47 = *(a1 + 64);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B768, &qword_2387688A8);
  MEMORY[0x23EE62DC0](&v42, v13);
  v36 = v42;
  v14 = a2 + *(type metadata accessor for GroupedTransactionsView() + 32);
  sub_23875BDB0();
  v15 = v39;
  v17 = v37;
  v16 = v38;
  a2[6] = v40;
  a2[7] = v16;
  a2[8] = v17;
  a2[2] = v9;
  a2[3] = v10;
  a2[4] = v15;
  v18 = type metadata accessor for GroupedTransactionsViewDataProvider();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D84F90];
  v21[4] = MEMORY[0x277D84F90];
  v21[5] = v22;
  v21[6] = v22;
  v21[7] = 20;

  sub_23875BEC0();
  v34 = a1;
  v23 = v35;
  v21[2] = v35;
  v24 = sub_23875A2D0();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  v27 = v23;
  v21[3] = sub_23875A2B0();

  *a2 = v21;
  a2[1] = 0;
  a2[5] = v36;
  v28 = sub_23875E4A0();
  v30 = v29;
  v31 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B770, &qword_2387688B0) + 36);
  sub_2384ADC6C(v34, v31);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B778, &qword_2387688B8);
  v33 = (v31 + *(result + 36));
  *v33 = v28;
  v33[1] = v30;
  return result;
}

uint64_t sub_2384ADC6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B780, &qword_2387688C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B788, &qword_2387688C8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18[-v11];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if (v18[15] == 1)
  {
    *v8 = sub_23875E4A0();
    v8[1] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B790, qword_238768918);
    sub_2384ADEC4(a1, (v8 + *(v15 + 44)));
    sub_2384396E4(v8, v12, &qword_27DF0B780, &qword_2387688C0);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  (*(v5 + 56))(v12, v16, 1, v4);
  sub_2384396E4(v12, a2, &qword_27DF0B788, &qword_2387688C8);
}

uint64_t sub_2384ADEC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  v3 = type metadata accessor for TransactionSearchList();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  sub_23875ED50();
  v27 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = [objc_opt_self() systemBackgroundColor];
  v11 = sub_23875DFB0();
  v26 = sub_23875D780();
  v31 = *(a1 + 96);
  v32 = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  sub_23875E310();
  v12 = v29;
  v25 = v30;
  v31 = *(a1 + 72);
  v32 = *(a1 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B758, &qword_238768898);
  sub_23875E310();
  v13 = v29;
  v24 = v30;
  v14 = *(a1 + 8);
  v31 = *(a1 + 48);
  v32 = *(a1 + 64);

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B768, &qword_2387688A8);
  MEMORY[0x23EE62DC0](&v29, v15);
  v16 = v29;
  *v9 = v12;
  v17 = v24;
  *(v9 + 8) = v25;
  *(v9 + 3) = v13;
  *(v9 + 2) = v17;
  sub_23875A230();
  KeyPath = swift_getKeyPath();
  MEMORY[0x23EE5ECA0](0, KeyPath);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v19 = &v9[*(v3 + 28)];
  sub_23875C510();
  *&v9[*(v3 + 32)] = v16;
  type metadata accessor for TransactionSearchModel();
  sub_2384B6248(&qword_27DF0B598, type metadata accessor for TransactionSearchModel);
  *(v9 + 6) = sub_23875C7A0();
  *(v9 + 7) = v20;
  sub_2384B5E6C(v9, v7, type metadata accessor for TransactionSearchList);
  v21 = v28;
  *v28 = v11;
  *(v21 + 8) = v26;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B798, &qword_2387689C8);
  sub_2384B5E6C(v7, v21 + *(v22 + 48), type metadata accessor for TransactionSearchList);

  sub_2384B5ED4(v9);
  sub_2384B5ED4(v7);
}

uint64_t sub_2384AE240@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 80);
  v6[4] = *(v1 + 64);
  v6[5] = v2;
  v6[6] = *(v1 + 96);
  v7 = *(v1 + 112);
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v4 = *(v1 + 48);
  v6[2] = *(v1 + 32);
  v6[3] = v4;
  return sub_2384AD87C(v6, a1);
}

uint64_t sub_2384AE28C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v134 = a1;
  if (sub_2384AF488())
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B600, &qword_2387685E0);
    v126 = *(v3 - 8);
    v127 = v3;
    v4 = (*(v126 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v3);
    v125 = v106 - v5;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B608, &qword_2387685E8);
    v124 = v106;
    v133 = v6;
    v7 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v6);
    v123 = v106 - v8;
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B620, &qword_2387685F0);
    v122 = v106;
    v120 = *(v121 - 8);
    v9 = (*(v120 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v121);
    v132 = v106 - v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B628, &qword_2387685F8);
    v113 = v106;
    v118 = v11;
    v117 = *(v11 - 8);
    v12 = (*(v117 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v11);
    v129 = v106 - v13;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E00, &qword_238768600);
    v116 = v106;
    v128 = v14;
    v115 = *(v14 - 8);
    v15 = (*(v115 + 8) + 15) & 0xFFFFFFFFFFFFFFF0;
    v16 = MEMORY[0x28223BE20](v14);
    v18 = v106 - v17;
    MEMORY[0x28223BE20](v16);
    v106[-2] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B630, &qword_238768608);
    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B638, &qword_238768610);
    v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B5E8, &qword_2387685D0);
    v21 = sub_2384B4B74();
    v22 = sub_23843A3E8(&qword_27DF0B5F0, &qword_27DF0B5E8, &qword_2387685D0);
    v136 = v19;
    v137 = v20;
    v138 = v21;
    v139 = v22;
    swift_getOpaqueTypeConformance2();
    v114 = v18;
    sub_23875C8F0();
    v131 = type metadata accessor for TransactionListSearchContainer();
    v23 = *(v131 - 8);
    v24 = *(v23 + 64);
    MEMORY[0x28223BE20](v131);
    sub_2384B5E6C(v1, v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransactionListSearchContainer);
    sub_23875ED50();
    v25 = sub_23875ED40();
    v26 = *(v23 + 80);
    v112 = ~v26;
    v27 = (v26 + 32) & ~v26;
    v119 = v24;
    v130 = v26;
    v28 = swift_allocObject();
    v29 = MEMORY[0x277D85700];
    *(v28 + 16) = v25;
    *(v28 + 24) = v29;
    sub_2384B4EA4(v106 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
    v30 = sub_23875ED80();
    v111 = v106;
    v110 = v30;
    v31 = *(v30 - 8);
    v32 = *(v31 + 64);
    MEMORY[0x28223BE20](v30);
    v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
    v34 = v106 - v33;
    sub_23875ED60();
    if (__isPlatformVersionAtLeast(2, 26, 4, 0))
    {
      v108 = sub_23875C830();
      v109 = v106;
      v107 = *(v108 - 8);
      v35 = *(v107 + 64);
      MEMORY[0x28223BE20](v108);
      v37 = v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      v136 = 0;
      v137 = 0xE000000000000000;
      sub_23875F470();

      v136 = 0xD000000000000035;
      v137 = 0x8000000238788230;
      v135 = 141;
      v38 = sub_23875F600();
      MEMORY[0x23EE63650](v38);

      v106[1] = v106;
      MEMORY[0x28223BE20](v39);
      v40 = v106 - v33;
      v41 = v106 - v33;
      v42 = v110;
      (*(v31 + 16))(v40, v41, v110);
      sub_23875C820();
      (*(v31 + 8))(v34, v42);
      v44 = v128;
      v43 = v129;
      (*(v115 + 4))(v129, v114, v128);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E08, &unk_238761C90);
      (*(v107 + 32))(&v43[*(v45 + 36)], v37, v108);
    }

    else
    {
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF08E10, &unk_2387686B0);
      v63 = v129;
      v64 = &v129[*(v62 + 36)];
      v65 = sub_23875C6E0();
      (*(v31 + 32))(&v64[*(v65 + 20)], v106 - v33, v110);
      *v64 = &unk_238768648;
      *(v64 + 1) = v28;
      v44 = v128;
      (*(v115 + 4))(v63, v114, v128);
    }

    v66 = *(v2 + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23875C2D0();

    v135 = v136;
    v68 = v119;
    MEMORY[0x28223BE20](v67);
    v128 = (v68 + 15) & 0xFFFFFFFFFFFFFFF0;
    v69 = v106 - v128;
    v115 = type metadata accessor for TransactionListSearchContainer;
    sub_2384B5E6C(v2, v106 - v128, type metadata accessor for TransactionListSearchContainer);
    v70 = (v130 + 16) & v112;
    v114 = v70;
    v71 = swift_allocObject();
    sub_2384B4EA4(v69, v71 + v70);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B660, &unk_238768630);
    v116 = MEMORY[0x277CDDA18];
    v72 = sub_23843A3E8(&qword_27DF0B688, &qword_27DF08E00, &qword_238768600);
    v136 = v44;
    v137 = v72;
    swift_getOpaqueTypeConformance2();
    sub_2384B4FFC();
    v73 = v118;
    v74 = v129;
    sub_23875DF20();

    (*(v117 + 8))(v74, v73);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
    v129 = v106;
    v76 = v2;
    v77 = *(v75 - 8);
    v78 = *(v77 + 64);
    MEMORY[0x28223BE20](v75);
    v80 = v106 - v79;
    v81 = *(v131 + 52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
    sub_23875C500();
    v82 = v133;
    v83 = *(v133 + 52);
    sub_23843A3E8(&qword_27DF0B6A0, &qword_27DF09E80, &unk_2387686A0);
    v84 = v123;
    sub_23875EC30();
    v85 = (*(v77 + 8))(v80, v75);
    MEMORY[0x28223BE20](v85);
    v86 = v106 - v128;
    v87 = v76;
    v88 = v115;
    sub_2384B5E6C(v76, v106 - v128, v115);
    v89 = v114;
    v90 = swift_allocObject();
    sub_2384B4EA4(v86, &v89[v90]);
    (*(v120 + 32))(v84, v132, v121);
    v91 = (v84 + *(v82 + 56));
    *v91 = sub_2384B50D4;
    v91[1] = v90;
    v92 = v87 + *(v131 + 44);
    v93 = *v92;
    v94 = *(v92 + 8);
    LOBYTE(v136) = v93;
    v137 = v94;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
    v95 = sub_23875E1B0();
    LOBYTE(v136) = v135;
    MEMORY[0x28223BE20](v95);
    v96 = v106 - v128;
    sub_2384B5E6C(v87, v106 - v128, v88);
    v97 = swift_allocObject();
    sub_2384B4EA4(v96, &v89[v97]);
    v98 = sub_23843A3E8(&qword_27DF0B610, &qword_27DF0B608, &qword_2387685E8);
    v99 = v125;
    v100 = v133;
    sub_23875DF10();

    sub_238439884(v84, &qword_27DF0B608, &qword_2387685E8);
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B5F8, &qword_2387685D8);
    v102 = (*(*(v101 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v101);
    v104 = v126;
    v103 = v127;
    (*(v126 + 16))(v106 - v105, v99, v127);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B5D8, &qword_2387685B8);
    v136 = v100;
    v137 = MEMORY[0x277D839B0];
    v138 = v98;
    v139 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0B618, &qword_27DF0B5D8, &qword_2387685B8);
    sub_23875D1B0();
    return (*(v104 + 8))(v99, v103);
  }

  else
  {
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B5D8, &qword_2387685B8);
    v46 = *(v133 - 8);
    v47 = *(v46 + 64);
    v48 = MEMORY[0x28223BE20](v133);
    v50 = v106 - v49;
    v132 = v106;
    MEMORY[0x28223BE20](v48);
    v106[-2] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B5E0, &unk_2387685C0);
    v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A270, &qword_238765368);
    v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B5E8, &qword_2387685D0);
    v53 = sub_23843A3E8(&qword_27DF0A280, &qword_27DF0A270, &qword_238765368);
    v54 = sub_23843A3E8(&qword_27DF0B5F0, &qword_27DF0B5E8, &qword_2387685D0);
    v136 = v51;
    v137 = v52;
    v138 = v53;
    v139 = v54;
    swift_getOpaqueTypeConformance2();
    sub_23875C8F0();
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B5F8, &qword_2387685D8);
    v56 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
    MEMORY[0x28223BE20](v55);
    v58 = v133;
    (*(v46 + 16))(v106 - v57, v50, v133);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B600, &qword_2387685E0);
    v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B608, &qword_2387685E8);
    v60 = sub_23843A3E8(&qword_27DF0B610, &qword_27DF0B608, &qword_2387685E8);
    v136 = v59;
    v137 = MEMORY[0x277D839B0];
    v138 = v60;
    v139 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0B618, &qword_27DF0B5D8, &qword_2387685B8);
    sub_23875D1B0();
    return (*(v46 + 8))(v50, v58);
  }
}

BOOL sub_2384AF488()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B748, &qword_238768890);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v16[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v16[-1] - v6;
  v8 = *(type metadata accessor for TransactionListSearchContainer() + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B578, &unk_2387683B0);
  sub_23875C500();
  sub_23843A3E8(&qword_27DF0B750, &qword_27DF0B748, &qword_238768890);
  sub_23875EED0();
  sub_23875EF00();
  v9 = *(v1 + 8);
  v9(v7, v0);
  if (v16[0] == v17)
  {
    return 1;
  }

  sub_23875C500();
  sub_23875EED0();
  sub_23875EF00();
  if (v17 != v16[0])
  {
    v10 = sub_23875EF20();
    v12 = *v11;
    v10(v16, 0);
    v9(v5, v0);
    v13 = [v12 integerValue];

    return v13 > 0;
  }

  v9(v5, v0);
  return 0;
}

uint64_t sub_2384AF700@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v3 = sub_23875D700();
  v120 = *(v3 - 8);
  v121 = v3;
  v4 = *(v120 + 64);
  MEMORY[0x28223BE20](v3);
  v119 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875C7F0();
  v117 = *(v6 - 8);
  v118 = v6;
  v7 = *(v117 + 64);
  MEMORY[0x28223BE20](v6);
  v116 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TransactionListSearchContainer();
  v98 = *(v9 - 1);
  v10 = *(v98 + 64);
  MEMORY[0x28223BE20](v9);
  v124 = v11;
  v125 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23875D230();
  v99 = *(v12 - 8);
  v100 = v12;
  v13 = *(v99 + 64);
  MEMORY[0x28223BE20](v12);
  v123 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B658, &qword_238768628);
  v102 = *(v104 - 8);
  v15 = *(v102 + 64);
  MEMORY[0x28223BE20](v104);
  v101 = &v78 - v16;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B650, &qword_238768620);
  v105 = *(v107 - 8);
  v17 = *(v105 + 64);
  MEMORY[0x28223BE20](v107);
  v103 = &v78 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B648, &qword_238768618);
  v109 = *(v19 - 8);
  v110 = v19;
  v20 = *(v109 + 64);
  MEMORY[0x28223BE20](v19);
  v106 = &v78 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6B8, &qword_238768740);
  v111 = *(v22 - 8);
  v112 = v22;
  v23 = *(v111 + 64);
  MEMORY[0x28223BE20](v22);
  v108 = &v78 - v24;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B638, &qword_238768610);
  v25 = *(*(v115 - 8) + 64);
  MEMORY[0x28223BE20](v115);
  v114 = &v78 - v26;
  sub_23875ED50();
  v113 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = a1[1];
  v28 = (a1 + v9[14]);
  v30 = *v28;
  v29 = v28[1];
  *&v138[0] = v30;
  *(&v138[0] + 1) = v29;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6B0, &qword_2387686E0);
  sub_23875E1D0();
  v97 = *v147;
  v96 = *&v147[8];
  v31 = (a1 + v9[15]);
  v33 = *v31;
  v32 = v31[1];
  *&v138[0] = v33;
  *(&v138[0] + 1) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C0, &qword_238768748);
  sub_23875E1D0();
  v95 = *v147;
  v94 = *&v147[8];
  v34 = a1 + v9[8];
  *v147 = *v34;
  *&v147[8] = *(v34 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  sub_23875E310();
  v35 = *&v138[0];
  type metadata accessor for TransactionSearchModel();
  v91 = v9;
  sub_2384B6248(&qword_27DF0B598, type metadata accessor for TransactionSearchModel);
  v93 = *(v138 + 8);
  v36 = sub_23875C7A0();
  v38 = v37;
  KeyPath = swift_getKeyPath();
  v40 = swift_getKeyPath();
  v146 = 0;
  v144 = 0;
  *&v138[0] = v36;
  *(&v138[0] + 1) = v38;
  *&v138[1] = KeyPath;
  BYTE8(v138[1]) = 0;
  *(&v138[1] + 9) = *v145;
  HIDWORD(v138[1]) = *&v145[3];
  *&v139 = v40;
  BYTE8(v139) = 0;
  *(&v139 + 9) = *v143;
  HIDWORD(v139) = *&v143[3];
  *(v140 + 8) = v96;
  *&v140[0] = v97;
  *(&v140[1] + 1) = v95;
  v141 = v94;
  *v142 = v35;
  *&v142[8] = v93;
  v41 = *a1;
  sub_23875C7B0();
  swift_getKeyPath();
  sub_23875C7C0();

  v85 = v134;
  v97 = v135;
  v92 = v136;
  *&v94 = v137;
  sub_23875C7B0();
  swift_getKeyPath();
  sub_23875C7C0();

  v95 = v132;
  *&v96 = v131;
  v128 = v131;
  v129 = v132;
  *&v93 = v133;
  v130 = v133;
  v42 = a1 + v91[11];
  v43 = *v42;
  v44 = *(v42 + 1);
  LOBYTE(v126) = v43;
  v127 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v89 = *&v147[8];
  v91 = *v147;
  v86 = v147[16];
  sub_23875D210();
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v45 = qword_2814F1B90;
  v46 = sub_23875EA50();
  v47 = sub_23875EA50();
  v48 = sub_23875EA50();
  v49 = [v45 localizedStringForKey:v46 value:v47 table:v48];

  v50 = sub_23875EA80();
  v52 = v51;
  v84 = v51;

  v126 = v50;
  v127 = v52;
  v90 = type metadata accessor for TransactionListSearchContainer;
  v53 = v125;
  sub_2384B5E6C(a1, v125, type metadata accessor for TransactionListSearchContainer);
  v98 = *(v98 + 80);
  v54 = (v98 + 16) & ~v98;
  v88 = v54;
  v55 = swift_allocObject();
  v87 = a1;
  sub_2384B4EA4(v53, v55 + v54);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B660, &unk_238768630);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  *&v81 = sub_2384B4DF0();
  *(&v81 + 1) = sub_23843A3E8(&qword_27DF0B670, &qword_27DF0B660, &unk_238768630);
  *&v82 = sub_23843A3E8(&qword_27DF0B678, &qword_27DF0B660, &unk_238768630);
  *(&v82 + 1) = sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  *&v83 = sub_2384397A8();
  *(&v83 + 1) = sub_2384B4E44();
  v56 = v123;
  v57 = v101;
  sub_23875DB10();

  (*(v99 + 8))(v56, v100);

  v150 = v140[1];
  v151 = v141;
  v152 = *v142;
  v153 = *&v142[16];
  *v147 = v138[0];
  *&v147[16] = v138[1];
  v148 = v139;
  v149 = v140[0];
  sub_2384B5768(v147);
  *&v138[0] = &type metadata for TransactionsView;
  *(&v138[0] + 1) = v79;
  *&v138[1] = v80;
  *(&v138[1] + 1) = MEMORY[0x277D837D0];
  v139 = v81;
  v140[0] = v82;
  v140[1] = v83;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v103;
  v59 = v104;
  MEMORY[0x23EE62890](1, v104, OpaqueTypeConformance2);
  (*(v102 + 8))(v57, v59);
  v61 = v116;
  sub_23875C7E0();
  v62 = v125;
  sub_2384B5E6C(v87, v125, v90);
  v63 = v88;
  v64 = swift_allocObject();
  sub_2384B4EA4(v62, v64 + v63);
  *&v138[0] = v59;
  *(&v138[0] + 1) = OpaqueTypeConformance2;
  v65 = swift_getOpaqueTypeConformance2();
  v67 = v106;
  v66 = v107;
  sub_23875DF30();

  (*(v117 + 8))(v61, v118);
  (*(v105 + 8))(v60, v66);
  v68 = v119;
  sub_23875D6F0();
  *&v138[0] = v66;
  *(&v138[0] + 1) = v65;
  swift_getOpaqueTypeConformance2();
  v69 = v108;
  v70 = v110;
  sub_23875DE80();
  (*(v120 + 8))(v68, v121);
  (*(v109 + 8))(v67, v70);
  sub_23875E4A0();
  sub_23875C9C0();
  v71 = v114;
  v72 = (*(v111 + 32))(v114, v69, v112);
  v73 = (v71 + *(v115 + 36));
  v74 = v141;
  v73[4] = v140[1];
  v73[5] = v74;
  v73[6] = *v142;
  v75 = v138[1];
  *v73 = v138[0];
  v73[1] = v75;
  v76 = v140[0];
  v73[2] = v139;
  v73[3] = v76;
  MEMORY[0x28223BE20](v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B5E8, &qword_2387685D0);
  sub_2384B4B74();
  sub_23843A3E8(&qword_27DF0B5F0, &qword_27DF0B5E8, &qword_2387685D0);
  sub_23875DEF0();
  sub_238439884(v71, &qword_27DF0B638, &qword_238768610);
}

uint64_t sub_2384B05D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_2384B0650(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_2387374A0(v2, v3);
}

uint64_t sub_2384B0690@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  return result;
}

uint64_t sub_2384B0710(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23875C2E0();
}

uint64_t sub_2384B078C()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385BA5E8(v1);
  sub_2384397A8();

  sub_23875E190();
  sub_2384B5DE4(v1);
}

uint64_t sub_2384B0884(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23875C2E0();
}

uint64_t sub_2384B095C@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v19[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B710, &qword_2387687E8);
  v2 = *(*(v19[0] - 8) + 64);
  MEMORY[0x28223BE20](v19[0]);
  v4 = v19 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12DD0, &qword_2387687F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - v8;
  v10 = sub_23875D2A0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B718, &qword_2387687F8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - v15;
  sub_23875D260();
  v21 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B720, &unk_238768800);
  sub_2384B58A4();
  sub_23875C4D0();
  sub_23875D250();
  v20 = v1;
  sub_2384B5A24();
  sub_23875C4D0();
  v17 = *(v19[0] + 48);
  (*(v13 + 16))(v4, v16, v12);
  (*(v6 + 16))(&v4[v17], v9, v5);
  sub_23875D070();
  (*(v6 + 8))(v9, v5);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_2384B0C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a3;
  sub_23875ED50();
  v3[3] = sub_23875ED40();
  v5 = sub_23875ECE0();
  v3[4] = v5;
  v3[5] = v4;

  return MEMORY[0x2822009F8](sub_2384B0CF0, v5, v4);
}

uint64_t sub_2384B0CF0()
{
  v1 = *(*(v0 + 16) + 8);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_2384B0D84;

  return sub_238737658();
}

uint64_t sub_2384B0D84()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_2384473D0, v4, v3);
}

uint64_t sub_2384B0EA4(uint64_t a1)
{
  v2 = type metadata accessor for TransactionListSearchContainer();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  sub_23875ED50();
  sub_23875ED40();
  v10 = MEMORY[0x277D85700];
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_23875ED80();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_2384B5E6C(a1, &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransactionListSearchContainer);
  v12 = sub_23875ED40();
  v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v10;
  sub_2384B4EA4(v5, v14 + v13);
  sub_2386C3BA4(0, 0, v9, &unk_2387686F0, v14);
}

uint64_t sub_2384B10E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  sub_23875ED50();
  v4[5] = sub_23875ED40();
  v6 = sub_23875ECE0();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_2384B1178, v6, v5);
}

uint64_t sub_2384B1178()
{
  v1 = *(v0[4] + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v2 = v0[2];
  v3 = v0[3];
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_2384B1268;

  return sub_238738554(v2, v3);
}

uint64_t sub_2384B1268()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v7 = *v0;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_2384B13AC, v5, v4);
}

uint64_t sub_2384B13AC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2384B140C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TransactionListSearchContainer();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  sub_23875ED50();
  sub_23875ED40();
  v11 = MEMORY[0x277D85700];
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = sub_23875ED80();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_2384B5E6C(a2, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransactionListSearchContainer);
  v13 = sub_23875ED40();
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v11;
  sub_2384B4EA4(v6, v15 + v14);
  sub_2386C3BA4(0, 0, v10, &unk_2387686C8, v15);
}

uint64_t sub_2384B1648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09520, &unk_2387637E0) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v6 = sub_238758680();
  v4[15] = v6;
  v7 = *(v6 - 8);
  v4[16] = v7;
  v8 = *(v7 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6A8, &qword_2387686D8);
  v4[19] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09E80, &unk_2387686A0);
  v4[21] = v11;
  v12 = *(v11 - 8);
  v4[22] = v12;
  v13 = *(v12 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = sub_23875ED50();
  v4[26] = sub_23875ED40();
  v15 = sub_23875ECE0();
  v4[27] = v15;
  v4[28] = v14;

  return MEMORY[0x2822009F8](sub_2384B1834, v15, v14);
}

uint64_t sub_2384B1834()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[13];
  v45 = type metadata accessor for TransactionListSearchContainer();
  v8 = *(v45 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  sub_23875C500();
  (*(v4 + 16))(v2, v1, v3);
  sub_23843A3E8(&qword_27DF0B6A0, &qword_27DF09E80, &unk_2387686A0);
  sub_23875EC20();
  v9 = *(v5 + 36);
  v10 = sub_23843A3E8(&qword_27DF09E88, &qword_27DF09E80, &unk_2387686A0);
  sub_23875EF00();
  if (*(v6 + v9) == v0[10])
  {
    v50 = MEMORY[0x277D84F90];
  }

  else
  {
    v22 = v0[16];
    v49 = (v22 + 56);
    v46 = v22;
    v47 = (v22 + 32);
    v48 = (v22 + 48);
    v50 = MEMORY[0x277D84F90];
    do
    {
      v25 = v0[20];
      v26 = v0[21];
      v27 = v0[14];
      v51 = v0[15];
      v28 = v10;
      v29 = v9;
      v30 = v6;
      v31 = sub_23875EF20();
      v33 = *v32;
      v31(v0 + 2, 0);
      v6 = v30;
      v9 = v29;
      v10 = v28;
      sub_23875EF10();
      v34 = v33;
      sub_238758690();
      (*v49)(v27, 0, 1, v51);

      if ((*v48)(v27, 1, v51) == 1)
      {
        sub_238439884(v0[14], &qword_27DF09520, &unk_2387637E0);
      }

      else
      {
        v35 = v0[17];
        v36 = v0[18];
        v37 = v0[15];
        v38 = *v47;
        (*v47)(v36, v0[14], v37);
        v38(v35, v36, v37);
        v39 = v50;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_238497F74(0, v50[2] + 1, 1, v50);
        }

        v41 = v39[2];
        v40 = v39[3];
        if (v41 >= v40 >> 1)
        {
          v39 = sub_238497F74(v40 > 1, v41 + 1, 1, v39);
        }

        v42 = v0[17];
        v43 = v0[15];
        v39[2] = v41 + 1;
        v50 = v39;
        v38(v39 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v41, v42, v43);
      }

      v24 = v0[20];
      v23 = v0[21];
      sub_23875EF00();
    }

    while (*(v6 + v9) != v0[10]);
  }

  v11 = v0[24];
  v12 = v0[25];
  v13 = v0[21];
  v14 = v0[22];
  v15 = v0[13];
  sub_238439884(v0[20], &qword_27DF0B6A8, &qword_2387686D8);
  (*(v14 + 8))(v11, v13);
  v16 = sub_2384A4E78(v50);

  v17 = (v15 + *(v45 + 56));
  v18 = *v17;
  v19 = v17[1];
  v0[6] = *v17;
  v0[7] = v19;
  v0[11] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6B0, &qword_2387686E0);
  sub_23875E1C0();
  v0[29] = *(v15 + 8);
  v0[8] = v18;
  v0[9] = v19;
  sub_23875E1B0();
  v0[30] = v0[12];
  v0[31] = sub_23875ED40();
  v21 = sub_23875ECE0();
  v0[32] = v21;
  v0[33] = v20;

  return MEMORY[0x2822009F8](sub_2384B1CC0, v21, v20);
}

uint64_t sub_2384B1CC0()
{
  v1 = *(*(v0 + 232) + OBJC_IVAR____TtC12FinanceKitUI22TransactionSearchModel_tokenManager);
  *(v0 + 272) = v1;

  return MEMORY[0x2822009F8](sub_2384B1D44, v1, 0);
}

uint64_t sub_2384B1D44()
{
  v1 = v0[34];
  sub_23873C4FC(v0[30]);

  v2 = v0[32];
  v3 = v0[33];

  return MEMORY[0x2822009F8](sub_2384B1DC0, v2, v3);
}

uint64_t sub_2384B1DC0()
{
  v1 = v0[31];

  v2 = v0[27];
  v3 = v0[28];

  return MEMORY[0x2822009F8](sub_2384B1E24, v2, v3);
}

uint64_t sub_2384B1E24()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2384B1ED4(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v2)
  {
    sub_2384B1F70();
  }
}

void sub_2384B1F70()
{
  v0 = sub_23875EA50();
  v1 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v3 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v4 = *MEMORY[0x277D38428];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v5;
  v6 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = 0x686372616573;
  v7 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = v7;
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x8000000238785080;
  v8 = v3;
  v9 = v6;
  v10 = v7;
  v11 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = v11;
  sub_2385C33E4(v1, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v15);

  v13 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384B6248(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v14 = sub_23875E910();

  [v13 subject:v0 sendEvent:v14];
}

uint64_t sub_2384B21A8@<X0>(uint64_t a1@<X8>)
{
  v8[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A270, &qword_238765368);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - v4;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_23875D400();
  MEMORY[0x28223BE20](v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B5E8, &qword_2387685D0);
  sub_23843A3E8(&qword_27DF0A280, &qword_27DF0A270, &qword_238765368);
  sub_23843A3E8(&qword_27DF0B5F0, &qword_27DF0B5E8, &qword_2387685D0);
  sub_23875DEF0();
  (*(v2 + 8))(v5, v1);
}

uint64_t sub_2384B244C@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  v12 = v11;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_2384B25F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v35 = a2;
  v38 = a3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6D0, &qword_2387687B8);
  v4 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v29 - v5;
  v6 = sub_23875D2A0();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6D8, &qword_2387687C0);
  v32 = *(v8 - 8);
  v33 = v8;
  v9 = *(v32 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - v10;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6E0, &qword_2387687C8);
  v30 = *(v34 - 8);
  v12 = *(v30 + 64);
  MEMORY[0x28223BE20](v34);
  v14 = &v29 - v13;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6E8, &qword_2387687D0);
  v15 = *(v31 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v31);
  v18 = &v29 - v17;
  sub_23875ED50();
  v29 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2384B095C(v18);
  v19 = sub_23875D280();
  MEMORY[0x28223BE20](v19);
  *(&v29 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6F0, &qword_2387687D8);
  sub_23843A3E8(&qword_27DF0B6F8, &qword_27DF0B6F0, &qword_2387687D8);
  sub_23875C990();
  v20 = sub_23843A3E8(&qword_27DF0B700, &qword_27DF0B6D8, &qword_2387687C0);
  v21 = v33;
  MEMORY[0x23EE61E80](v11, v33, v20);
  (*(v32 + 8))(v11, v21);
  v22 = v36;
  v23 = *(v37 + 48);
  v24 = v31;
  (*(v15 + 16))(v36, v18, v31);
  v25 = v30;
  v26 = &v22[v23];
  v27 = v34;
  (*(v30 + 16))(v26, v14, v34);
  sub_23875D070();
  (*(v25 + 8))(v14, v27);
  (*(v15 + 8))(v18, v24);
}

__n128 sub_2384B2A60@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TransactionListSearchContainer();
  v4 = (v1 + v3[8]);
  v16 = *v4;
  v18 = *(v4 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  sub_23875E310();
  v5 = v12;
  v11 = v14;
  v6 = (v1 + v3[15]);
  v13 = *v6;
  v15 = v6[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C0, &qword_238768748);
  sub_23875E1D0();
  v7 = v16;
  v10 = v18;
  v8 = (v1 + v3[14]);
  v17 = *v8;
  v18.n128_u64[0] = v8[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6B0, &qword_2387686E0);
  sub_23875E1B0();
  sub_23875E1A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B558, &qword_238768210);
  sub_23875E1A0();
  *a1 = v5;
  result = v10;
  *(a1 + 8) = v11;
  *(a1 + 24) = v7;
  *(a1 + 32) = v10;
  *(a1 + 48) = v17;
  *(a1 + 56) = v18.n128_u64[0];
  *(a1 + 64) = v17;
  *(a1 + 72) = v18.n128_u64[0];
  *(a1 + 80) = v13;
  return result;
}

uint64_t sub_2384B2BD0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23875CF70();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23875CF60();
  v10 = sub_2384B2A60(&v24);
  v11 = v3[2];
  (v11)(v7, v9, v2, v10);
  v23[0] = 1;
  v11(a1, v7, v2);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B708, &qword_2387687E0);
  v13 = a1 + *(v12 + 48);
  v14 = v23[0];
  *v13 = 0;
  *(v13 + 8) = v14;
  v15 = *(v12 + 64);
  v16 = v26;
  v17 = v27;
  v30[2] = v26;
  v30[3] = v27;
  v18 = v25;
  v30[0] = v24;
  v30[1] = v25;
  v19 = v28;
  v30[4] = v28;
  v20 = a1 + v15;
  *v20 = v24;
  *(v20 + 16) = v18;
  v31 = v29;
  *(v20 + 80) = v29;
  *(v20 + 48) = v17;
  *(v20 + 64) = v19;
  *(v20 + 32) = v16;
  sub_2384B57EC(v30, v32);
  v21 = v3[1];
  v21(v9, v2);
  v32[2] = v26;
  v32[3] = v27;
  v32[4] = v28;
  v33 = v29;
  v32[0] = v24;
  v32[1] = v25;
  sub_2384B5848(v32);
  v21(v7, v2);
}

uint64_t sub_2384B2E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v42 = a2;
  v2 = sub_23875CE80();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TransactionListSearchContainer();
  v34 = *(v38 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v38);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B730, &unk_23876B800);
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  sub_23875ED50();
  v37 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v11 = qword_2814F1B90;
  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = sub_23875EA50();
  v15 = [v11 localizedStringForKey:v12 value:v13 table:v14];

  v16 = sub_23875EA80();
  v18 = v17;

  v19 = v41;
  sub_2384B5E6C(v41, &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransactionListSearchContainer);
  v20 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v21 = swift_allocObject();
  v22 = sub_2384B4EA4(&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v44 = v16;
  *&v45 = v18;
  MEMORY[0x28223BE20](v22);
  *(&v33 - 4) = &v44;
  *(&v33 - 3) = 0x70752E776F727261;
  *(&v33 - 2) = 0xE800000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A2F0, &unk_23876BB30);
  sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
  sub_23875E200();

  sub_23875CE70();
  sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
  sub_2384B6248(&qword_27DF0B740, MEMORY[0x277CDDE78]);
  v23 = v42;
  v24 = v36;
  v25 = v40;
  sub_23875DB00();
  (*(v39 + 8))(v5, v25);
  (*(v35 + 8))(v10, v24);
  v26 = v19 + *(v38 + 32);
  v44 = *v26;
  v45 = *(v26 + 8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](&v43, v27);
  v28 = *(v43 + 16);

  LOBYTE(v25) = v28 == 0;
  KeyPath = swift_getKeyPath();
  v30 = swift_allocObject();
  *(v30 + 16) = v25;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B720, &unk_238768800);
  v32 = (v23 + *(result + 36));
  *v32 = KeyPath;
  v32[1] = sub_238477BAC;
  v32[2] = v30;
  return result;
}

uint64_t sub_2384B33FC(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875EA50();
  v3 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v5 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v6 = *MEMORY[0x277D38428];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v7;
  v8 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = 0x6572616873;
  v9 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = v9;
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x8000000238785080;
  v10 = v5;
  v11 = v8;
  v12 = v9;
  v13 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = v13;
  sub_2385C33E4(v3, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v25);

  v15 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384B6248(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v16 = sub_23875E910();

  [v15 subject:v2 sendEvent:v16];

  sub_2384B3710();
  v17 = type metadata accessor for TransactionListSearchContainer();
  v18 = a1 + *(v17 + 36);
  v20 = *v18;
  v19 = *(v18 + 8);
  v21 = a1 + *(v17 + 32);
  v25 = *v21;
  v26 = *(v21 + 8);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](&v24, v22);
  v20(v24);
}

uint64_t sub_2384B3710()
{
  v1 = v0 + *(type metadata accessor for TransactionListSearchContainer() + 32);
  v11 = *v1;
  v12 = *(v1 + 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B6C8, &qword_238768750);
  MEMORY[0x23EE62DC0](&v10, v2);
  v3 = *(v10 + 16);

  v4 = sub_23875EA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  if (v3 <= 2)
  {
    v11 = v3;
    v7 = sub_23875F600();
  }

  else
  {
    v6 = 0xE800000000000000;
    v7 = 0x656C7069746C756DLL;
  }

  *(inited + 40) = v7;
  *(inited + 48) = v6;
  v8 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  sub_23844CA94(v4, 27, v8);
}

uint64_t sub_2384B3884@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for TransactionListSearchContainer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v7 = qword_2814F1B90;
  v8 = sub_23875EA50();
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = [v7 localizedStringForKey:v8 value:v9 table:v10];

  v12 = sub_23875EA80();
  v14 = v13;

  sub_2384B5E6C(a1, &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TransactionListSearchContainer);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_2384B4EA4(&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);

  *a2 = v12;
  a2[1] = v14;
  a2[2] = sub_2384B5A78;
  a2[3] = v16;
  return result;
}

uint64_t sub_2384B3AD8(uint64_t a1)
{
  v2 = sub_23875EA50();
  v3 = sub_23854B138(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763300;
  v5 = *MEMORY[0x277D383D8];
  *(inited + 32) = *MEMORY[0x277D383D8];
  v6 = *MEMORY[0x277D38428];
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v7;
  v8 = *MEMORY[0x277D38390];
  *(inited + 56) = *MEMORY[0x277D38390];
  *(inited + 64) = 0x6C65636E6163;
  v9 = *MEMORY[0x277D384B8];
  *(inited + 72) = 0xE600000000000000;
  *(inited + 80) = v9;
  *(inited + 88) = 0xD000000000000011;
  *(inited + 96) = 0x8000000238785080;
  v10 = v5;
  v11 = v8;
  v12 = v9;
  v13 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v13;
  sub_2385C33E4(v3, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v20);

  v15 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2384B6248(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v16 = sub_23875E910();

  [v15 subject:v2 sendEvent:v16];

  sub_2384B3710();
  v17 = a1 + *(type metadata accessor for TransactionListSearchContainer() + 40);
  v18 = *(v17 + 8);
  return (*v17)();
}

uint64_t sub_2384B3D40()
{
  v0 = type metadata accessor for TransactionSearchModel();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_23873AECC();
}

uint64_t sub_2384B3D78@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2384B5F30(v1 + 40, v10);
  if (v11 == 1)
  {
    return sub_2384347C0(v10, a1);
  }

  sub_23875EFF0();
  v9 = sub_23875D730();
  sub_23875C110();

  sub_23875CDA0();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t TransactionPickerView.init(confirmAction:cancelAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_2384B3D40;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B558, &qword_238768210);
  sub_23875E1A0();
  *(a5 + 24) = v11;
  *(a5 + 32) = v12;
  result = swift_getKeyPath();
  *(a5 + 40) = result;
  *(a5 + 80) = 0;
  *(a5 + 88) = a1;
  *(a5 + 96) = a2;
  *(a5 + 104) = a3;
  *(a5 + 112) = a4;
  return result;
}

uint64_t TransactionPickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23875D020();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B560, &qword_238768240);
  return sub_2384B3FD8(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_2384B3FD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  type metadata accessor for TransactionSearchModel();
  sub_2384B6248(&qword_27DF0B598, type metadata accessor for TransactionSearchModel);
  sub_23875C490();
  v7 = a1[4];
  v38 = a1[3];
  v39 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B7A0, &qword_2387689D0);
  sub_23875E1D0();
  v31 = v36;
  v8 = a1[12];
  v32 = v35;
  v33 = a1[11];
  v9 = a1[14];
  v34 = a1[13];
  KeyPath = swift_getKeyPath();
  v11 = type metadata accessor for TransactionListSearchContainer();
  *(a2 + v11[6]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v12 = sub_23854B370(MEMORY[0x277D84F90]);

  *a2 = sub_23875C7A0();
  a2[1] = v13;
  v14 = v11[5];
  *(a2 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  v15 = a2 + v11[7];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = a2 + v11[8];
  *v16 = v32;
  *(v16 + 8) = v31;
  v17 = (a2 + v11[9]);
  *v17 = v33;
  v17[1] = v8;
  v18 = (a2 + v11[10]);
  *v18 = v34;
  v18[1] = v9;
  v19 = a2 + v11[11];
  LOBYTE(v38) = 0;
  sub_23875E1A0();
  v20 = v36;
  *v19 = v35;
  *(v19 + 1) = v20;
  v21 = v11[12];
  sub_23875A230();
  sub_23875A200();
  sub_23875E500();
  sub_238449184(0, &qword_27DF0B0A0, 0x277CCABB0);
  sub_23875C4F0();
  v22 = v11[13];
  sub_238759780();
  sub_2384AD744();
  sub_23875E500();
  sub_23875C4F0();
  v23 = (a2 + v11[14]);
  v38 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B5C0, &unk_2387683E0);
  sub_23875E1A0();
  v24 = v36;
  *v23 = v35;
  v23[1] = v24;
  v25 = (a2 + v11[15]);
  v38 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B5D0, &qword_23877B640);
  sub_23875E1A0();
  v26 = v36;
  *v25 = v35;
  v25[1] = v26;
  v27 = swift_getKeyPath();
  sub_2384B3D78(&v35);
  __swift_project_boxed_opaque_existential_1(&v35, v37);
  v28 = sub_238758A10();
  v29 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B7A8, &qword_238768A38) + 36));
  *v29 = v27;
  v29[1] = v28;
  __swift_destroy_boxed_opaque_existential_1(&v35);
}

uint64_t sub_2384B43E0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23875D020();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B560, &qword_238768240);
  return sub_2384B3FD8(v1, (a1 + *(v3 + 44)));
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2384B4474(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2384B44BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for TransactionListSearchContainer()
{
  result = qword_27DF0B580;
  if (!qword_27DF0B580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384B459C()
{
  sub_2384B4864();
  if (v0 <= 0x3F)
  {
    sub_2384B48F8(319, &qword_2814F09A8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_2384B48F8(319, &qword_2814F09B0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_2384B495C(319, &qword_27DF0B5A0, &qword_2814F0888, 0x277CBE440, MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_2384B4A14(319, &qword_27DF0B5A8, &qword_27DF0B558, &qword_238768210, MEMORY[0x277CE11F8]);
          if (v4 <= 0x3F)
          {
            sub_23846D0DC();
            if (v5 <= 0x3F)
            {
              sub_2384B49C4();
              if (v6 <= 0x3F)
              {
                sub_2384B495C(319, &qword_27DF0B5B0, &qword_27DF0B0A0, 0x277CCABB0, MEMORY[0x277CDD7C8]);
                if (v7 <= 0x3F)
                {
                  sub_2384B48F8(319, &qword_27DF09E18, MEMORY[0x277CC7A70], MEMORY[0x277CDD7C8]);
                  if (v8 <= 0x3F)
                  {
                    sub_2384B4A14(319, &qword_27DF0B5B8, &qword_27DF0B5C0, &unk_2387683E0, MEMORY[0x277CE10B8]);
                    if (v9 <= 0x3F)
                    {
                      sub_2384B4A14(319, &qword_27DF0B5C8, &qword_27DF0B5D0, &qword_23877B640, MEMORY[0x277CE10B8]);
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
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

void sub_2384B4864()
{
  if (!qword_27DF0B590)
  {
    type metadata accessor for TransactionSearchModel();
    sub_2384B6248(&qword_27DF0B598, type metadata accessor for TransactionSearchModel);
    v0 = sub_23875C7D0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0B590);
    }
  }
}

void sub_2384B48F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2384B495C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_238449184(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2384B49C4()
{
  if (!qword_27DF0A0B0)
  {
    v0 = sub_23875E1E0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF0A0B0);
    }
  }
}

void sub_2384B4A14(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2384B4A78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2384B4AC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2384B4B74()
{
  result = qword_27DF0B640;
  if (!qword_27DF0B640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B638, &qword_238768610);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B648, &qword_238768618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B650, &qword_238768620);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B658, &qword_238768628);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B660, &unk_238768630);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0A2F0, &unk_23876BB30);
    sub_2384B4DF0();
    sub_23843A3E8(&qword_27DF0B670, &qword_27DF0B660, &unk_238768630);
    sub_23843A3E8(&qword_27DF0B678, &qword_27DF0B660, &unk_238768630);
    sub_23843A3E8(&qword_27DF0A2F8, &qword_27DF0A2F0, &unk_23876BB30);
    sub_2384397A8();
    sub_2384B4E44();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B640);
  }

  return result;
}

unint64_t sub_2384B4DF0()
{
  result = qword_27DF0B668;
  if (!qword_27DF0B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B668);
  }

  return result;
}

unint64_t sub_2384B4E44()
{
  result = qword_27DF0B680;
  if (!qword_27DF0B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B680);
  }

  return result;
}

void sub_2384B4E98(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2384B4EA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionListSearchContainer();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2384B4F08()
{
  v2 = *(type metadata accessor for TransactionListSearchContainer() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_238449A7C;

  return sub_2384B0C58(v4, v5, v0 + v3);
}

unint64_t sub_2384B4FFC()
{
  result = qword_27DF0B690;
  if (!qword_27DF0B690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B660, &unk_238768630);
    sub_2384B5080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B690);
  }

  return result;
}

unint64_t sub_2384B5080()
{
  result = qword_27DF0B698;
  if (!qword_27DF0B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B698);
  }

  return result;
}

uint64_t sub_2384B50D4(uint64_t a1)
{
  v3 = *(type metadata accessor for TransactionListSearchContainer() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2384B140C(a1, v4);
}

uint64_t sub_2384B5144(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(*(type metadata accessor for TransactionListSearchContainer() - 8) + 80);

  return sub_2384B1ED4(a1, a2);
}

uint64_t sub_2384B51C4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_2384397A8();

  return sub_23875E190();
}

uint64_t sub_2384B5244(uint64_t a1)
{
  v4 = *(type metadata accessor for TransactionListSearchContainer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2384494A4;

  return sub_2384B1648(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for TransactionListSearchContainer();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_23875C880();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  else
  {
    v10 = *(v6 + v8);
  }

  v11 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_23875C450();
    (*(*(v12 - 8) + 8))(v6 + v11, v12);
  }

  else
  {
    v13 = *(v6 + v11);
  }

  sub_2384B4E98(*(v6 + v1[7]), *(v6 + v1[7] + 8));
  v14 = (v6 + v1[8]);
  v15 = *v14;

  v16 = v14[1];

  v17 = v14[2];

  v18 = *(v6 + v1[9] + 8);

  v19 = *(v6 + v1[10] + 8);

  v20 = *(v6 + v1[11] + 8);

  v21 = v1[12];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B578, &unk_2387683B0);
  (*(*(v22 - 8) + 8))(v6 + v21, v22);
  v23 = v1[13];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v24 - 8) + 8))(v6 + v23, v24);
  v25 = (v6 + v1[14]);
  v26 = *v25;

  v27 = v25[1];

  v28 = (v6 + v1[15]);
  v29 = *v28;

  v30 = v28[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2384B55F8(uint64_t a1)
{
  v4 = *(type metadata accessor for TransactionListSearchContainer() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_238449A7C;

  return sub_2384B10E0(a1, v6, v7, v1 + v5);
}

uint64_t sub_2384B56E8()
{
  v0 = *(*(type metadata accessor for TransactionListSearchContainer() - 8) + 80);

  return sub_2384B078C();
}

unint64_t sub_2384B58A4()
{
  result = qword_27DF0B728;
  if (!qword_27DF0B728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B720, &unk_238768800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B730, &unk_23876B800);
    sub_23875CE80();
    sub_23843A3E8(&qword_27DF0B738, &qword_27DF0B730, &unk_23876B800);
    sub_2384B6248(&qword_27DF0B740, MEMORY[0x277CDDE78]);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0A858, &qword_27DF0A860, &qword_238768810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B728);
  }

  return result;
}

unint64_t sub_2384B5A24()
{
  result = qword_27DF0D350;
  if (!qword_27DF0D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0D350);
  }

  return result;
}

uint64_t objectdestroy_28Tm()
{
  v1 = type metadata accessor for TransactionListSearchContainer();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_23875C880();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
    v9 = *(v5 + v7);
  }

  v10 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23875C450();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  sub_2384B4E98(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  v13 = (v5 + v1[8]);
  v14 = *v13;

  v15 = v13[1];

  v16 = v13[2];

  v17 = *(v5 + v1[9] + 8);

  v18 = *(v5 + v1[10] + 8);

  v19 = *(v5 + v1[11] + 8);

  v20 = v1[12];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B578, &unk_2387683B0);
  (*(*(v21 - 8) + 8))(v5 + v20, v21);
  v22 = v1[13];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09DF0, &unk_238764BD0);
  (*(*(v23 - 8) + 8))(v5 + v22, v23);
  v24 = (v5 + v1[14]);
  v25 = *v24;

  v26 = v24[1];

  v27 = (v5 + v1[15]);
  v28 = *v27;

  v29 = v27[1];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2384B5D64(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for TransactionListSearchContainer() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_2384B5DD8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_2384B51C4(*(v0 + 16));
}

uint64_t sub_2384B5E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2384B5ED4(uint64_t a1)
{
  v2 = type metadata accessor for TransactionSearchList();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2384B5F30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B7B0, &unk_238768A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2384B5FA0()
{
  result = qword_27DF0B7B8;
  if (!qword_27DF0B7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B7C0, &qword_238768A50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B608, &qword_2387685E8);
    sub_23843A3E8(&qword_27DF0B610, &qword_27DF0B608, &qword_2387685E8);
    swift_getOpaqueTypeConformance2();
    sub_23843A3E8(&qword_27DF0B618, &qword_27DF0B5D8, &qword_2387685B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B7B8);
  }

  return result;
}

unint64_t sub_2384B60DC()
{
  result = qword_27DF0B7C8;
  if (!qword_27DF0B7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B7D0, &qword_238768A58);
    sub_2384B6160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B7C8);
  }

  return result;
}

unint64_t sub_2384B6160()
{
  result = qword_27DF0B7D8;
  if (!qword_27DF0B7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0B770, &qword_2387688B0);
    sub_2384B6248(&qword_27DF0B7E0, type metadata accessor for GroupedTransactionsView);
    sub_23843A3E8(&qword_27DF0B7E8, &qword_27DF0B778, &qword_2387688B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B7D8);
  }

  return result;
}

uint64_t sub_2384B6248(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2384B62A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v12 = v1[1];
  v13 = v3;
  sub_238477AFC(&v13, v11);
  sub_238477AFC(&v12, v11);
  v4 = sub_23875E030();
  v5 = *(v1 + 4);
  sub_2384B6AB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2387632F0;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B810, &qword_238768AC8);
  *(v6 + 64) = sub_23843A3E8(&qword_27DF0B818, &qword_27DF0B810, &qword_238768AC8);
  *(v6 + 32) = v5;

  v7 = sub_23875EF80();
  *(a1 + 56) = 0xD000000000000010;
  *(a1 + 64) = 0x8000000238788370;
  v8 = v12;
  v9 = v13;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0xD000000000000010;
  *(a1 + 48) = 0x8000000238788350;
  *a1 = v9;
  *(a1 + 16) = v8;
  result = swift_allocObject();
  *(result + 16) = v7;
  *(a1 + 72) = &unk_2387654B0;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_2384B6440(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2384B649C(a1, a2, a3);
  v5 = *(v3 + 8);

  return v5(v4);
}

uint64_t sub_2384B649C(void *a1, uint64_t a2, uint64_t a3)
{
  v62 = a2;
  v63 = a1;
  v60 = sub_23875BF90();
  v4 = *(v60 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v60);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v7 = sub_2384521E4(a3);
    if (v7)
    {
      v8 = v7;
      v9 = v62;
      result = sub_23875EB40();
      if (result >= 2)
      {
        v11 = *(v8 + 16);
        v12 = MEMORY[0x277D84F90];
        if (v11)
        {
          v13 = 0;
          v57 = (v4 + 8);
          v58 = v8;
          v14 = v8 + 48;
          v55 = v11;
          v52 = v11 - 1;
          v53 = v8 + 48;
          do
          {
            v54 = v12;
            v15 = (v14 + 24 * v13);
            v16 = v13;
            while (1)
            {
              if (v16 >= *(v8 + 16))
              {
                __break(1u);
                return result;
              }

              v17 = *(v15 - 2);
              v18 = *(v15 - 1);
              v19 = *v15;
              v61 = v16 + 1;
              v56 = v17;
              v66 = v17;
              v67 = v18;

              v20 = v59;
              sub_23875C080();
              v64 = &unk_284B24E68;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B7F0, &unk_238771D20);
              sub_2384B6A0C();
              sub_23843A3E8(&qword_27DF0B800, &qword_27DF0B7F0, &unk_238771D20);
              sub_2384B6A60();
              v21 = v60;
              sub_23875EF30();
              (*v57)(v20, v21);
              v22 = sub_23875EAE0();
              v24 = v23;

              *&v68 = v22;
              *(&v68 + 1) = v24;
              v66 = v63;
              v67 = v62;
              sub_2384397A8();
              v64 = sub_23875F240();
              v65 = v25;
              v26 = sub_23875F280();

              if (v26)
              {
                break;
              }

              v15 += 3;
              v9 = v62;
              v16 = v61;
              v8 = v58;
              if (v55 == v61)
              {
                v12 = v54;
                goto LABEL_16;
              }
            }

            v27 = v56;
            v13 = v61;
            v12 = v54;
            result = swift_isUniquelyReferenced_nonNull_native();
            v69 = v12;
            if ((result & 1) == 0)
            {
              result = sub_2385FE9A0(0, v12[2] + 1, 1);
              v12 = v69;
            }

            v29 = v12[2];
            v28 = v12[3];
            if (v29 >= v28 >> 1)
            {
              result = sub_2385FE9A0((v28 > 1), v29 + 1, 1);
              v12 = v69;
            }

            v12[2] = v29 + 1;
            v30 = &v12[3 * v29];
            v30[4] = v27;
            v30[5] = v18;
            v30[6] = v19;
            v14 = v53;
            v9 = v62;
            v8 = v58;
          }

          while (v52 != v16);
        }

LABEL_16:

        v31 = v12[2];
        if (v31)
        {
          *&v68 = MEMORY[0x277D84F90];
          sub_2385FE980(0, v31, 0);
          v32 = v68;
          v54 = v12;
          v33 = v12 + 6;
          do
          {
            v35 = *(v33 - 2);
            v34 = *(v33 - 1);
            v36 = *v33;
            *&v68 = v32;
            v38 = v32[2];
            v37 = v32[3];

            if (v38 >= v37 >> 1)
            {
              sub_2385FE980((v37 > 1), v38 + 1, 1);
              v32 = v68;
            }

            v32[2] = v38 + 1;
            v39 = &v32[5 * v38];
            v39[4] = v63;
            v39[5] = v9;
            v39[6] = v35;
            v39[7] = v34;
            v39[8] = v36;
            v33 += 3;
            --v31;
          }

          while (v31);

          v40 = v32[2];
          if (v40)
          {
            goto LABEL_22;
          }
        }

        else
        {

          v32 = MEMORY[0x277D84F90];
          v40 = *(MEMORY[0x277D84F90] + 16);
          if (v40)
          {
LABEL_22:
            v66 = MEMORY[0x277D84F90];
            sub_2385FE78C(0, v40, 0);
            v63 = v32;
            v41 = v32 + 8;
            v42 = v66;
            do
            {
              v43 = *(v41 - 4);
              v44 = *(v41 - 3);
              v45 = *(v41 - 2);
              v46 = *(v41 - 1);
              v47 = *v41;
              v48 = swift_allocObject();
              v48[2] = v43;
              v48[3] = v44;
              v48[4] = v45;
              v48[5] = v46;
              v48[6] = v47;
              v66 = v42;
              v49 = v42[2];
              v50 = v42[3];

              if (v49 >= v50 >> 1)
              {
                sub_2385FE78C((v50 > 1), v49 + 1, 1);
                v42 = v66;
              }

              v42[2] = v49 + 1;
              v51 = &v42[6 * v49];
              v51[4] = v48;
              *(v51 + 5) = v68;
              v51[7] = &type metadata for InstitutionNameTokenProvider;
              v51[8] = &off_284B279D8;
              *(v51 + 72) = 2;
              v41 += 5;
              --v40;
            }

            while (v40);

            return v42;
          }
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2384B6A0C()
{
  result = qword_27DF0B7F8;
  if (!qword_27DF0B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B7F8);
  }

  return result;
}

unint64_t sub_2384B6A60()
{
  result = qword_27DF0B808;
  if (!qword_27DF0B808)
  {
    sub_23875BF90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0B808);
  }

  return result;
}

unint64_t sub_2384B6AB8()
{
  result = qword_27DF130B0;
  if (!qword_27DF130B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DF130B0);
  }

  return result;
}

uint64_t type metadata accessor for TransactionView()
{
  result = qword_27DF0B838;
  if (!qword_27DF0B838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2384B6B78()
{
  sub_2384B6CE8(319, &qword_27DF0B5A0, sub_2384B6C9C);
  if (v0 <= 0x3F)
  {
    sub_2384B6CE8(319, &qword_2814F09A8, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      sub_238758F50();
      if (v2 <= 0x3F)
      {
        sub_238758680();
        if (v3 <= 0x3F)
        {
          sub_23846D0DC();
          if (v4 <= 0x3F)
          {
            sub_23875C880();
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

unint64_t sub_2384B6C9C()
{
  result = qword_2814F0888;
  if (!qword_2814F0888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814F0888);
  }

  return result;
}

void sub_2384B6CE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23875C470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2384B6D58@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for TransactionView();
  v4 = v3 - 8;
  v33 = *(v3 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v34 = v6;
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_23875D590();
  v30 = *(v32 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v32);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B848, &qword_238768B38);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v30 - v12);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B850, &qword_238768B40);
  v14 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31);
  v16 = &v30 - v15;
  v17 = sub_23875C880();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v1 + *(v4 + 28);
  sub_2384D5138(v21);
  v23 = *(v4 + 48);
  sub_2384B9D08(&qword_27DF0AAC0, MEMORY[0x277CDFA28]);
  LOBYTE(v23) = sub_23875E9C0();
  (*(v18 + 8))(v21, v17);
  if (v23)
  {
    v37 = sub_23875CE60();
    v38 = 0;
    v39 = 1;
    sub_2384B9CB4();
  }

  else
  {
    v37 = sub_23875D030();
    v38 = 0;
    v39 = 1;
    sub_2384B9960();
  }

  *v13 = sub_23875E520();
  v24 = *(v10 + 44);

  sub_2384B7194(v2, v13 + v24);
  sub_23875D580();
  sub_2384B99B4();
  sub_23875DD60();
  (*(v30 + 8))(v9, v32);
  sub_238439884(v13, &qword_27DF0B848, &qword_238768B38);
  v16[*(v31 + 36)] = 0;
  v25 = v2;
  v26 = v35;
  sub_2384B9A98(v25, v35);
  v27 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v28 = swift_allocObject();
  sub_2384B9AFC(v26, v28 + v27);
  sub_2384B9BC0();
  sub_23875DBC0();

  return sub_238402B74(v16);
}

uint64_t sub_2384B7194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B898, &qword_238768B58);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8A0, &qword_238768B60);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v17 = sub_23875CE60();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8A8, &qword_238768B68);
  sub_2384B7448(a1, &v17[*(v18 + 44)]);
  *v10 = sub_23875D030();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8B0, &qword_238768B70);
  sub_2384B8148(a1, &v10[*(v19 + 44)]);
  sub_23843981C(v17, v15, &qword_27DF0B8A0, &qword_238768B60);
  sub_23843981C(v10, v8, &qword_27DF0B898, &qword_238768B58);
  sub_23843981C(v15, a2, &qword_27DF0B8A0, &qword_238768B60);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B8B8, &qword_238768B78);
  sub_23843981C(v8, a2 + *(v20 + 48), &qword_27DF0B898, &qword_238768B58);
  sub_238439884(v10, &qword_27DF0B898, &qword_238768B58);
  sub_238439884(v17, &qword_27DF0B8A0, &qword_238768B60);
  sub_238439884(v8, &qword_27DF0B898, &qword_238768B58);
  sub_238439884(v15, &qword_27DF0B8A0, &qword_238768B60);
}