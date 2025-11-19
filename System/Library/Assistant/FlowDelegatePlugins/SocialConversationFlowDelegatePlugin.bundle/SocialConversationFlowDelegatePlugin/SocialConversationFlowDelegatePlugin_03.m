uint64_t sub_6644C(uint64_t a1)
{
  v18 = *v2;
  v13 = (*v2 + 16);
  v14 = (*v2 + 280);
  v15 = (*v2 + 128);
  v16 = (*v2 + 168);
  v17 = (*v2 + 208);
  v4 = *(*v2 + 512);
  v18[35] = *v2;
  v18[65] = a1;
  v18[66] = v1;

  if (v1)
  {
    v8 = *v14;
    v7 = sub_66C8C;
  }

  else
  {
    v5 = v13[61];
    v10 = v13[60];
    v11 = v13[59];
    v12 = v13[58];

    sub_2560(v17);
    sub_2560(v16);

    sub_2560(v15);

    v6 = *v14;
    v7 = sub_66634;
  }

  return _swift_task_switch(v7, 0);
}

uint64_t sub_66634()
{
  v1 = v0[65];
  v31 = v0[51];
  v0[35] = v0;
  v0[40] = v1;

  v0[41] = v31;
  v32 = v0[15];

  v33 = sub_C33B4();

  if ((v33 & 1) == 0)
  {
    *(v30 + 288) = *(v30 + 120);
    sub_6B310((v30 + 288), (v30 + 368));
    sub_6B348((v30 + 288), (v30 + 328));
  }

  v2 = *(v30 + 472);
  v26 = *(v30 + 456);
  v25 = *(v30 + 464);
  v3 = sub_BF704();
  (*(v25 + 16))(v2, v3, v26);
  v28 = sub_C3224();
  v27 = sub_C3874();
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  v29 = sub_C3C64();
  if (os_log_type_enabled(v28, v27))
  {
    v4 = *(v30 + 528);
    buf = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v22 = sub_5DD4(0);
    v23 = sub_5DD4(0);
    *(v30 + 336) = buf;
    *(v30 + 344) = v22;
    *(v30 + 352) = v23;
    sub_5E28(0, (v30 + 336));
    sub_5E28(0, (v30 + 336));
    *(v30 + 360) = v29;
    v24 = swift_task_alloc();
    v24[2] = v30 + 336;
    v24[3] = v30 + 344;
    v24[4] = v30 + 352;
    sub_21E8(&unk_EEFB0, qword_C5110);
    sub_8128();
    sub_C3654();
    if (v4)
    {
    }

    _os_log_impl(&dword_0, v28, v27, "Creating RF snippet using visualParameters", buf, 2u);
    sub_5E88(v22);
    sub_5E88(v23);
    sub_C3934();
  }

  else
  {
  }

  v18 = *(v30 + 520);
  v19 = *(v30 + 472);
  v11 = *(v30 + 456);
  v20 = *(v30 + 448);
  v17 = *(v30 + 432);
  v6 = *(v30 + 416);
  v15 = *(v30 + 376);
  v10 = *(v30 + 464);
  v16 = *(v30 + 440);
  _objc_release(v28);
  (*(v10 + 8))(v19, v11);
  sub_418E8();
  v13 = sub_C3C64();
  v12 = v7;
  _objc_retain(v18);
  *v12 = v18;
  sub_4E48();
  v14 = *(v30 + 328);

  sub_62104(v13);

  sub_C2244();
  (*(v16 + 8))(v20, v17);
  sub_1D7C8((v30 + 328));
  _objc_release(v18);
  sub_1CFBC((v30 + 16));
  sub_6B2C0((v30 + 80));

  v8 = *(*(v30 + 280) + 8);
  v9 = *(v30 + 280);

  return v8();
}

uint64_t sub_66C8C()
{
  v1 = v0[63];
  v7 = v0[62];
  v8 = v0[61];
  v9 = v0[60];
  v0[35] = v0;

  sub_2560(v0 + 26);
  sub_2560(v0 + 21);
  _objc_release(v7);
  sub_2560(v0 + 16);

  sub_1CFBC(v0 + 2);
  sub_6B2C0(v0 + 10);
  v2 = v0[66];
  v3 = v0[59];
  v10 = v0[56];

  v4 = *(v0[35] + 8);
  v5 = v0[35];

  return v4();
}

void *sub_66DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v9 = 0;
  v10 = a1;
  v11 = a2;

  sub_68AA8(a1, a2, v12);
  memcpy(__dst, v12, sizeof(__dst));
  if (__dst[1])
  {
    memcpy(v8, __dst, sizeof(v8));
    return memcpy(a3, v8, 0x40uLL);
  }

  else
  {

    sub_6B37C();
    swift_allocError();
    *v4 = a1;
    v4[1] = a2;
    return swift_willThrow();
  }
}

uint64_t sub_66F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[15] = v6;
  v7[14] = a6;
  v7[13] = a5;
  v7[12] = a4;
  v7[11] = a3;
  v7[10] = a2;
  v7[9] = a1;
  v7[16] = *v6;
  v7[6] = v7;
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = 0;
  v7[5] = 0;
  v7[7] = 0;
  v7[8] = 0;
  v8 = sub_C3234();
  v7[17] = v8;
  v12 = *(v8 - 8);
  v7[18] = v12;
  v9 = *(v12 + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  v7[5] = a5;
  v7[7] = a6;
  v7[8] = v6;
  v10 = v7[6];

  return _swift_task_switch(sub_670B8, 0);
}

uint64_t sub_670B8()
{
  v42 = v0;
  v1 = v0[19];
  v21 = v0[18];
  v22 = v0[17];
  v23 = v0[16];
  v0[6] = v0;
  v2 = sub_BF704();
  (*(v21 + 16))(v1, v2, v22);
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  v35 = sub_C3224();
  v36 = sub_C3874();
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1F060;
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1F278;
  *(v26 + 24) = v25;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_7BBC;
  *(v30 + 24) = v26;
  v31 = swift_allocObject();
  *(v31 + 16) = 32;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_67D10;
  *(v27 + 24) = 0;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_7BBC;
  *(v33 + 24) = v27;
  sub_21E8(&unk_EEFA0, &unk_C50F0);
  sub_C3C64();
  v34 = v3;

  *v34 = sub_7B48;
  v34[1] = v28;

  v34[2] = sub_7B48;
  v34[3] = v29;

  v34[4] = sub_7C08;
  v34[5] = v30;

  v34[6] = sub_7B48;
  v34[7] = v31;

  v34[8] = sub_7B48;
  v34[9] = v32;

  v34[10] = sub_7C08;
  v34[11] = v33;
  sub_4E48();

  if (os_log_type_enabled(v35, v36))
  {
    buf = sub_C3954();
    sub_21E8(&qword_EE828, &qword_C5100);
    v18 = sub_5DD4(0);
    v19 = sub_5DD4(2);
    v37 = buf;
    v38 = v18;
    v39 = v19;
    sub_5E28(2, &v37);
    sub_5E28(2, &v37);
    v40 = sub_7B48;
    v41 = v28;
    sub_5E3C(&v40, &v37, &v38, &v39);
    v40 = sub_7B48;
    v41 = v29;
    sub_5E3C(&v40, &v37, &v38, &v39);
    v40 = sub_7C08;
    v41 = v30;
    sub_5E3C(&v40, &v37, &v38, &v39);
    v40 = sub_7B48;
    v41 = v31;
    sub_5E3C(&v40, &v37, &v38, &v39);
    v40 = sub_7B48;
    v41 = v32;
    sub_5E3C(&v40, &v37, &v38, &v39);
    v40 = sub_7C08;
    v41 = v33;
    sub_5E3C(&v40, &v37, &v38, &v39);
    _os_log_impl(&dword_0, v35, v36, "%s.%s", buf, 0x16u);
    sub_5E88(v18);
    sub_5E88(v19);
    sub_C3934();
  }

  else
  {
  }

  v14 = v20[19];
  v15 = v20[17];
  v13 = v20[18];
  _objc_release(v35);
  (*(v13 + 8))(v14, v15);
  sub_21E8(&qword_EF000, &qword_C5E10);
  sub_C3C64();
  v16 = sub_C3374();
  v20[20] = v16;
  v4 = swift_task_alloc();
  v20[21] = v4;
  *v4 = v20[6];
  v4[1] = sub_67A88;
  v5 = v20[15];
  v6 = v20[14];
  v7 = v20[13];
  v8 = v20[12];
  v9 = v20[11];
  v10 = v20[10];
  v11 = v20[9];

  return sub_65E8C(v11, v10, v9, v8, v7, v6, v16);
}

uint64_t sub_67A88()
{
  v8 = *v1;
  v2 = *(*v1 + 168);
  v8[6] = *v1;
  v9 = v8 + 6;
  v8[22] = v0;

  if (v0)
  {
    v6 = *v9;

    return _swift_task_switch(sub_67C58, 0);
  }

  else
  {
    v3 = v8[20];
    v7 = v8[19];

    v4 = *(*v9 + 8);

    return v4();
  }
}

uint64_t sub_67C58()
{
  v1 = v0[20];
  v7 = v0[19];
  v0[6] = v0;

  v2 = v0;
  v3 = *(v0[6] + 8);
  v4 = v0[6];
  v5 = v2[22];

  return v3();
}

uint64_t sub_67D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v77 = a4;
  v110 = a1;
  v111 = a2;
  v91 = a3;
  v78 = sub_49870;
  v79 = sub_49A40;
  v80 = sub_49A8C;
  v81 = sub_7B48;
  v82 = sub_7B48;
  v83 = sub_4A09C;
  v84 = sub_68A5C;
  v136 = 0;
  v137 = 0;
  v135 = 0;
  v134 = 0;
  memset(v119, 0, sizeof(v119));
  v118 = 0;
  v85 = 0;
  v86 = sub_C3234();
  v87 = *(v86 - 8);
  v88 = v86 - 8;
  v89 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v90 = v22 - v89;
  v92 = sub_C1C64();
  v93 = *(v92 - 8);
  v94 = v92 - 8;
  v95 = (*(v93 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v110);
  v113 = v22 - v95;
  v136 = v5;
  v137 = v6;
  v135 = v7;
  v134 = v4;
  v109 = *(v4 + 72);

  v96 = v130;
  sub_24F4(v4 + 16, v130);

  v98 = v131;
  v97 = v132;
  sub_808C(v96, v131);
  v8 = (*(v97 + 32))(v98);
  v9 = v105;
  v112 = v8;

  v99 = v127;
  sub_24F4(v9 + 16, v127);

  v101 = v128;
  v100 = v129;
  sub_808C(v99, v128);
  v10 = *(v100 + 8);
  v102 = v124;
  v10(v101);
  v104 = v125;
  v103 = v126;
  sub_808C(v102, v125);
  sub_C1F34();
  v11 = v105;

  v106 = v121;
  sub_24F4(v11 + 16, v121);

  v108 = v122;
  v107 = v123;
  sub_808C(v106, v122);
  v12 = *(v107 + 40);
  v114 = v120;
  v12(v108);
  sub_56FBC(v110, v111, v112, v113, v114, v138, v22[0]);
  v115 = 0;
  v116 = 0;
  v63 = v138;
  v64 = v138[0];
  v65 = v138[1];
  v66 = v138[2];
  v67 = v138[3];
  v68 = v138[4];
  v69 = v138[5];
  sub_2560(v120);
  sub_2560(v121);
  (*(v93 + 8))(v113, v92);
  sub_2560(v124);
  sub_2560(v127);
  _objc_release(v112);
  sub_2560(v130);

  sub_6B7D0(v63, v117);
  memcpy(__dst, v63, sizeof(__dst));
  v70 = v64;
  v71 = v65;
  v72 = v66;
  v73 = v67;
  v74 = v68;
  v75 = v69;
  v76 = v115;
  v56 = v115;
  v57 = v69;
  v58 = v68;
  v59 = v67;
  v60 = v66;
  v61 = v65;
  v62 = v64;
  if (!v65)
  {

    sub_21E8(&qword_EF000, &qword_C5E10);
    v23 = 0;
    sub_C3C64();
    v15 = sub_C3374();
    sub_3E1A0(v110, v111, v91, v23, v23, v15, v140);
    v24 = v140[0];
    v25 = v140[1];
    v26 = v140[2];
    v27 = v140[3];
    v28 = v140[4];
    v29 = v140[5];
    result = sub_6B76C(__dst);
    v37 = v24;
    v38 = v25;
    v39 = v26;
    v40 = v27;
    v41 = v28;
    v42 = v29;
    goto LABEL_5;
  }

  v50 = v62;
  v51 = v61;
  v52 = v60;
  v53 = v59;
  v54 = v58;
  v55 = v57;
  v13 = v56;
  v43 = v57;
  v44 = v58;
  v45 = v59;
  v48 = v60;
  v46 = v61;
  v47 = v62;
  v119[0] = v62;
  v119[1] = v61;
  v119[2] = v60;
  v119[3] = v59;
  v119[4] = v58;
  v119[5] = v57;

  result = sub_C33C4();
  v49 = result;
  if (!v13)
  {
    v30 = v49;
    v118 = v49;

    sub_3E1A0(v47, v46, v30, v45, v44, v43, v139);
    v31 = v139[0];
    v32 = v139[1];
    v33 = v139[2];
    v34 = v139[3];
    v35 = v139[4];
    v36 = v139[5];

    result = sub_6B76C(__dst);
    v37 = v31;
    v38 = v32;
    v39 = v33;
    v40 = v34;
    v41 = v35;
    v42 = v36;
LABEL_5:
    v16 = v77;
    v17 = v38;
    v18 = v39;
    v19 = v40;
    v20 = v41;
    v21 = v42;
    *v77 = v37;
    v16[1] = v17;
    v16[2] = v18;
    v16[3] = v19;
    v16[4] = v20;
    v16[5] = v21;
    return result;
  }

  __break(1u);
  return result;
}

void *sub_68AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v52 = a3;
  v61 = a1;
  v60 = a2;
  v58 = 0;
  v53 = sub_1D834;
  v54 = sub_7BBC;
  v55 = sub_7B48;
  v56 = sub_7B48;
  v57 = sub_7C08;
  memset(__b, 0, sizeof(__b));
  v81 = 0;
  v82 = 0;
  v79 = 0;
  v59 = 0;
  v62 = sub_C3234();
  v63 = *(v62 - 8);
  v64 = v62 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v66 = v23 - v65;
  v81 = __chkstk_darwin(v61);
  v82 = v3;
  v80[2] = v81;
  v80[3] = v3;
  v4 = sub_C3564("#", 1uLL, 1);
  v67 = v80;
  v80[0] = v4;
  v80[1] = v5;
  sub_B2E8();
  v68 = &type metadata for String;
  v69 = sub_C39A4();
  sub_8224(v67);
  v79 = v69;
  if (sub_C3714() == 2)
  {
    v44 = &type metadata for String;
    sub_C3744();
    v45 = v70[10];
    v46 = v70[11];
    sub_C3744();
    v47 = v84;
    sub_2E6E0(v45, v46, v70[8], v70[9], v84);
    v49 = __b;
    v51 = 64;
    memcpy(__b, v47, sizeof(__b));

    v48 = v71;
    memcpy(v71, v49, v51);
    sub_1D2DC(v48, v70);
    v50 = v72;
    memcpy(v72, v48, v51);

    sub_1CFBC(v49);
    memcpy(__dst, v50, v51);
  }

  else
  {
    v6 = v66;
    v7 = sub_BF704();
    (*(v63 + 16))(v6, v7, v62);

    v32 = 32;
    v33 = 7;
    v8 = swift_allocObject();
    v9 = v60;
    v34 = v8;
    *(v8 + 16) = v61;
    *(v8 + 24) = v9;
    v42 = sub_C3224();
    v43 = sub_C3884();
    v31 = 17;
    v36 = swift_allocObject();
    *(v36 + 16) = 32;
    v37 = swift_allocObject();
    *(v37 + 16) = 8;
    v10 = swift_allocObject();
    v11 = v34;
    v35 = v10;
    *(v10 + 16) = v53;
    *(v10 + 24) = v11;
    v12 = swift_allocObject();
    v13 = v35;
    v39 = v12;
    *(v12 + 16) = v54;
    *(v12 + 24) = v13;
    v41 = sub_21E8(&unk_EEFA0, &unk_C50F0);
    v38 = sub_C3C64();
    v40 = v14;

    v15 = v36;
    v16 = v40;
    *v40 = v55;
    v16[1] = v15;

    v17 = v37;
    v18 = v40;
    v40[2] = v56;
    v18[3] = v17;

    v19 = v39;
    v20 = v40;
    v40[4] = v57;
    v20[5] = v19;
    sub_4E48();

    if (os_log_type_enabled(v42, v43))
    {
      v21 = v59;
      v24 = sub_C3954();
      v23[3] = sub_21E8(&qword_EE828, &qword_C5100);
      v25 = sub_5DD4(0);
      v26 = sub_5DD4(1);
      v27 = &v77;
      v77 = v24;
      v28 = &v76;
      v76 = v25;
      v29 = &v75;
      v75 = v26;
      sub_5E28(2, &v77);
      sub_5E28(1, v27);
      v73 = v55;
      v74 = v36;
      sub_5E3C(&v73, v27, v28, v29);
      v30 = v21;
      if (v21)
      {

        __break(1u);
      }

      else
      {
        v73 = v56;
        v74 = v37;
        sub_5E3C(&v73, &v77, &v76, &v75);
        v23[1] = 0;
        v73 = v57;
        v74 = v39;
        sub_5E3C(&v73, &v77, &v76, &v75);
        _os_log_impl(&dword_0, v42, v43, "Provided identifier '%s' is not separated by the '#' character", v24, 0xCu);
        sub_5E88(v25);
        sub_5E88(v26);
        sub_C3934();
      }
    }

    else
    {
    }

    _objc_release(v42);
    (*(v63 + 8))(v66, v62);

    memset(v78, 0, sizeof(v78));
    memcpy(__dst, v78, sizeof(__dst));
  }

  return memcpy(v52, __dst, 0x40uLL);
}

uint64_t sub_691F0(uint64_t a1, uint64_t a2)
{
  v7[4] = a1;
  v7[5] = a2;

  v7[2] = a1;
  v7[3] = a2;
  v7[0] = sub_C3C44();
  v7[1] = v2;
  v8._countAndFlagsBits = sub_C3564("Invalid identifier: '", 0x15uLL, 1);
  sub_C3C34(v8);

  sub_C3C24();
  v9._countAndFlagsBits = sub_C3564("'", 1uLL, 1);
  sub_C3C34(v9);

  sub_8224(v7);
  v6 = sub_C3544();

  return v6;
}

uint64_t sub_6947C()
{
  v2 = sub_BF340();
  v0 = *(v2 + 72);

  return v2;
}

uint64_t sub_694F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = v8;
  *(v8 + 16) = v8;
  v9 = *v7;
  v10 = swift_task_alloc();
  *(v12 + 24) = v10;
  *v10 = *(v12 + 16);
  v10[1] = sub_695E4;

  return sub_65E8C(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_695E4()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(v2 + 16) = *v1;
  v6 = v2 + 16;

  if (v0)
  {
    v4 = *(*v6 + 8);
  }

  else
  {
    v4 = *(*v6 + 8);
  }

  return v4();
}

uint64_t sub_69770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v7;
  *(v7 + 16) = v7;
  v8 = *v6;
  v9 = swift_task_alloc();
  *(v11 + 24) = v9;
  *v9 = *(v11 + 16);
  v9[1] = sub_695E4;

  return sub_66F10(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_69888(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v6 = (a3 + 1);
  }

  else
  {
    v8 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v6 = (v8 | (a3 >> 6)) + 33217;
    }

    else
    {
      v7 = (v8 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v6 = (v7 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v6 = ((a3 >> 18) | ((v7 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v5 = 4 - (__clz(v6) >> 3);
  v3.value._rawValue = &v10;
  v10 = (v6 - 0x101010101010101) & ((1 << ((8 * v5) & 0x3F)) - 1);
  sub_C37A4(v3);
  if ((v5 & 0x8000000000000000) == 0)
  {
    return a1(&v10, v5);
  }

  sub_C3BA4();
  __break(1u);
LABEL_12:
  result = sub_C3B84();
  __break(1u);
  return result;
}

uint64_t sub_69BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        __chkstk_darwin(v17);
        v15 = sub_6B9FC;
        v16 = &v37;
        sub_69888(sub_6BA18, v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      v13[0] = 2;
      sub_C3B84();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    v13[0] = 2;
    sub_C3B84();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        v13[0] = 2;
        sub_C3B84();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            v13[0] = 2;
            sub_C3B84();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    v13[0] = 2;
                    sub_C3B84();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  v13[0] = 2;
                  sub_C3B84();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                v13[0] = 2;
                sub_C3B84();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              v13[0] = 2;
              sub_C3B84();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            v13[0] = 2;
            sub_C3B84();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          v13[0] = 2;
          sub_C3B84();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        v13[0] = 2;
        sub_C3B84();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      v13[0] = 2;
      sub_C3B84();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    v13[0] = 2;
    sub_C3BA4();
    __break(1u);
  }

  result = sub_C3B84();
  __break(1u);
  return result;
}

uint64_t sub_6A3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_C3B84();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_C3B84();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_C3B84();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_C3B84();
                __break(1u);
              }

              sub_C3B84();
              __break(1u);
            }

            sub_C3B84();
            __break(1u);
          }

          sub_C3B84();
          __break(1u);
        }

        sub_C3B84();
        __break(1u);
      }

      sub_C3B84();
      __break(1u);
    }

    sub_C3B84();
    __break(1u);
  }

  result = sub_C3B84();
  __break(1u);
  return result;
}

uint64_t sub_6A950()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6A990()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6A9D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6AA68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6AAA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_6AAE8()
{
  v2 = qword_EFB58;
  if (!qword_EFB58)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_6ABF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6AC30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6ACC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6AD08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6AD48()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6AD88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_6ADC8()
{
  v2 = qword_EFB60;
  if (!qword_EFB60)
  {
    sub_C3034();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_6AE48()
{
  v2 = qword_EFB68;
  if (!qword_EFB68)
  {
    sub_81B0(&qword_EFA20, qword_C65A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_6AED0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6AF18()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6AFB0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6AFF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6B088()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6B0C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6B160()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6B1A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6B240()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6B280()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *sub_6B2C0(void *a1)
{
  v1 = a1[1];

  v2 = a1[2];

  v3 = a1[4];

  v4 = a1[5];

  return a1;
}

void *sub_6B310(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t *sub_6B348(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = v2;

  return a2;
}

unint64_t sub_6B37C()
{
  v2 = qword_EFB88;
  if (!qword_EFB88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFB88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_6B47C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6B4BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6B4FC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6B594()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6B5D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6B614()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_6B6AC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6B6EC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6B72C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *sub_6B76C(void *a1)
{
  if (a1[1])
  {
    v1 = a1[1];

    v2 = a1[2];

    v3 = a1[4];

    v4 = a1[5];
  }

  return a1;
}

void *sub_6B7D0(void *a1, void *a2)
{
  if (a1[1])
  {
    *a2 = *a1;
    v3 = a1[1];

    a2[1] = v3;
    v4 = a1[2];

    a2[2] = v4;
    a2[3] = a1[3];
    v5 = a1[4];

    a2[4] = v5;
    v6 = a1[5];

    a2[5] = v6;
  }

  else
  {
    memcpy(a2, a1, 0x30uLL);
  }

  return a2;
}

uint64_t sub_6B8A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6B93C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6B97C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6BA44()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_6BADC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6BB1C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_6BB5C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 1)
  {

    return a1;
  }

  else
  {
    swift_errorRetain();
    swift_getErrorValue();
    v4 = sub_C3C94();

    return v4;
  }
}

uint64_t sub_6BD04(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v4 = *a1 + 253;
    }

    else
    {
      v2 = *(a1 + 16) ^ 0xFF;
      if (v2 >= 0xFD)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_6BDFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = (result + 17);
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    *(result + 16) = 0;
    if (a3 >= 0xFE)
    {
      *v3 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *v3 = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_6BFE8()
{
  result = sub_C3564("ContentTopic", 0xCuLL, 1);
  qword_F12A0 = result;
  qword_F12A8 = v1;
  return result;
}

uint64_t *sub_6C02C()
{
  if (qword_EE640 != -1)
  {
    swift_once();
  }

  return &qword_F12A0;
}

uint64_t sub_6C08C()
{
  v0 = sub_6C02C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6C0C8()
{
  result = sub_C3564("holidayPhrase", 0xDuLL, 1);
  qword_F12B0 = result;
  qword_F12B8 = v1;
  return result;
}

uint64_t *sub_6C10C()
{
  if (qword_EE648 != -1)
  {
    swift_once();
  }

  return &qword_F12B0;
}

uint64_t sub_6C16C()
{
  v0 = sub_6C10C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6C1A8()
{
  result = sub_C3564("salutationPhrase", 0x10uLL, 1);
  qword_F12C0 = result;
  qword_F12C8 = v1;
  return result;
}

uint64_t *sub_6C1EC()
{
  if (qword_EE650 != -1)
  {
    swift_once();
  }

  return &qword_F12C0;
}

uint64_t sub_6C24C()
{
  v0 = sub_6C1EC();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6C288()
{
  result = sub_C3564("siriContentType", 0xFuLL, 1);
  qword_F12D0 = result;
  qword_F12D8 = v1;
  return result;
}

uint64_t *sub_6C2CC()
{
  if (qword_EE658 != -1)
  {
    swift_once();
  }

  return &qword_F12D0;
}

uint64_t sub_6C32C()
{
  v0 = sub_6C2CC();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6C368()
{
  result = sub_C3564("siriSocialAction", 0x10uLL, 1);
  qword_F12E0 = result;
  qword_F12E8 = v1;
  return result;
}

uint64_t *sub_6C3AC()
{
  if (qword_EE660 != -1)
  {
    swift_once();
  }

  return &qword_F12E0;
}

uint64_t sub_6C40C()
{
  v0 = sub_6C3AC();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6C448()
{
  result = sub_C3564("socialInterjectionPhrase", 0x18uLL, 1);
  qword_F12F0 = result;
  qword_F12F8 = v1;
  return result;
}

uint64_t *sub_6C48C()
{
  if (qword_EE668 != -1)
  {
    swift_once();
  }

  return &qword_F12F0;
}

uint64_t sub_6C4EC()
{
  v0 = sub_6C48C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6C528()
{
  result = sub_C3564("tell", 4uLL, 1);
  qword_F1300 = result;
  qword_F1308 = v1;
  return result;
}

uint64_t *sub_6C56C()
{
  if (qword_EE670 != -1)
  {
    swift_once();
  }

  return &qword_F1300;
}

uint64_t sub_6C5CC()
{
  v0 = sub_6C56C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6C608()
{
  result = sub_C3564("hear", 4uLL, 1);
  qword_F1310 = result;
  qword_F1318 = v1;
  return result;
}

uint64_t *sub_6C64C()
{
  if (qword_EE678 != -1)
  {
    swift_once();
  }

  return &qword_F1310;
}

uint64_t sub_6C6AC()
{
  v0 = sub_6C64C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6C6E8()
{
  result = sub_C3564("userSocialAction", 0x10uLL, 1);
  qword_F1320 = result;
  qword_F1328 = v1;
  return result;
}

uint64_t *sub_6C72C()
{
  if (qword_EE680 != -1)
  {
    swift_once();
  }

  return &qword_F1320;
}

uint64_t sub_6C78C()
{
  v0 = sub_6C72C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6C7C8()
{
  result = sub_C3564("favoriteInstance", 0x10uLL, 1);
  qword_F1330 = result;
  qword_F1338 = v1;
  return result;
}

uint64_t *sub_6C80C()
{
  if (qword_EE688 != -1)
  {
    swift_once();
  }

  return &qword_F1330;
}

uint64_t sub_6C86C()
{
  v0 = sub_6C80C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6C8A8()
{
  result = sub_C3564("favoriteCategory", 0x10uLL, 1);
  qword_F1340 = result;
  qword_F1348 = v1;
  return result;
}

uint64_t *sub_6C8EC()
{
  if (qword_EE690 != -1)
  {
    swift_once();
  }

  return &qword_F1340;
}

uint64_t sub_6C94C()
{
  v0 = sub_6C8EC();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6C988()
{
  result = sub_C3564("opinionTopic", 0xCuLL, 1);
  qword_F1350 = result;
  qword_F1358 = v1;
  return result;
}

uint64_t *sub_6C9CC()
{
  if (qword_EE698 != -1)
  {
    swift_once();
  }

  return &qword_F1350;
}

uint64_t sub_6CA2C()
{
  v0 = sub_6C9CC();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6CA68()
{
  result = sub_C3564("opinionJudgment", 0xFuLL, 1);
  qword_F1360 = result;
  qword_F1368 = v1;
  return result;
}

uint64_t *sub_6CAAC()
{
  if (qword_EE6A0 != -1)
  {
    swift_once();
  }

  return &qword_F1360;
}

uint64_t sub_6CB0C()
{
  v0 = sub_6CAAC();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6CB48()
{
  result = sub_C3564("siriProperty", 0xCuLL, 1);
  qword_F1370 = result;
  qword_F1378 = v1;
  return result;
}

uint64_t *sub_6CB8C()
{
  if (qword_EE6A8 != -1)
  {
    swift_once();
  }

  return &qword_F1370;
}

uint64_t sub_6CBEC()
{
  v0 = sub_6CB8C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6CC28()
{
  result = sub_C3564("siriPossession", 0xEuLL, 1);
  qword_F1380 = result;
  qword_F1388 = v1;
  return result;
}

uint64_t *sub_6CC6C()
{
  if (qword_EE6B0 != -1)
  {
    swift_once();
  }

  return &qword_F1380;
}

uint64_t sub_6CCCC()
{
  v0 = sub_6CC6C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6CD08()
{
  result = sub_C3564("userPossession", 0xEuLL, 1);
  qword_F1390 = result;
  qword_F1398 = v1;
  return result;
}

uint64_t *sub_6CD4C()
{
  if (qword_EE6B8 != -1)
  {
    swift_once();
  }

  return &qword_F1390;
}

uint64_t sub_6CDAC()
{
  v0 = sub_6CD4C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6CDE8()
{
  result = sub_C3564("userProperty", 0xCuLL, 1);
  qword_F13A0 = result;
  qword_F13A8 = v1;
  return result;
}

uint64_t *sub_6CE2C()
{
  if (qword_EE6C0 != -1)
  {
    swift_once();
  }

  return &qword_F13A0;
}

uint64_t sub_6CE8C()
{
  v0 = sub_6CE2C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6CEC8()
{
  result = sub_C3564("personSocialAction", 0x12uLL, 1);
  qword_F13B0 = result;
  qword_F13B8 = v1;
  return result;
}

uint64_t *sub_6CF0C()
{
  if (qword_EE6C8 != -1)
  {
    swift_once();
  }

  return &qword_F13B0;
}

uint64_t sub_6CF6C()
{
  v0 = sub_6CF0C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6CFA8()
{
  result = sub_C3564("personProperty", 0xEuLL, 1);
  qword_F13C0 = result;
  qword_F13C8 = v1;
  return result;
}

uint64_t *sub_6CFEC()
{
  if (qword_EE6D0 != -1)
  {
    swift_once();
  }

  return &qword_F13C0;
}

uint64_t sub_6D04C()
{
  v0 = sub_6CFEC();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6D088()
{
  result = sub_C3564("like", 4uLL, 1);
  qword_F13D0 = result;
  qword_F13D8 = v1;
  return result;
}

uint64_t *sub_6D0CC()
{
  if (qword_EE6D8 != -1)
  {
    swift_once();
  }

  return &qword_F13D0;
}

uint64_t sub_6D12C()
{
  v0 = sub_6D0CC();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6D168()
{
  result = sub_C3564("checkLike", 9uLL, 1);
  qword_F13E0 = result;
  qword_F13E8 = v1;
  return result;
}

uint64_t *sub_6D1AC()
{
  if (qword_EE6E0 != -1)
  {
    swift_once();
  }

  return &qword_F13E0;
}

uint64_t sub_6D20C()
{
  v0 = sub_6D1AC();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6D248()
{
  result = sub_C3564("summarise", 9uLL, 1);
  qword_F13F0 = result;
  qword_F13F8 = v1;
  return result;
}

uint64_t *sub_6D28C()
{
  if (qword_EE6E8 != -1)
  {
    swift_once();
  }

  return &qword_F13F0;
}

uint64_t sub_6D2EC()
{
  v0 = sub_6D28C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6D328()
{
  result = sub_C3564("justify", 7uLL, 1);
  qword_F1400 = result;
  qword_F1408 = v1;
  return result;
}

uint64_t *sub_6D36C()
{
  if (qword_EE6F0 != -1)
  {
    swift_once();
  }

  return &qword_F1400;
}

uint64_t sub_6D3CC()
{
  v0 = sub_6D36C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6D408()
{
  result = sub_C3564("Siri", 4uLL, 1);
  qword_F1410 = result;
  qword_F1418 = v1;
  return result;
}

uint64_t *sub_6D44C()
{
  if (qword_EE6F8 != -1)
  {
    swift_once();
  }

  return &qword_F1410;
}

uint64_t sub_6D4AC()
{
  v0 = sub_6D44C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6D4E8()
{
  result = sub_C3564("User", 4uLL, 1);
  qword_F1420 = result;
  qword_F1428 = v1;
  return result;
}

uint64_t *sub_6D52C()
{
  if (qword_EE700 != -1)
  {
    swift_once();
  }

  return &qword_F1420;
}

uint64_t sub_6D58C()
{
  v0 = sub_6D52C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6D5C8()
{
  result = sub_C3564("Person", 6uLL, 1);
  qword_F1430 = result;
  qword_F1438 = v1;
  return result;
}

uint64_t *sub_6D60C()
{
  if (qword_EE708 != -1)
  {
    swift_once();
  }

  return &qword_F1430;
}

uint64_t sub_6D66C()
{
  v0 = sub_6D60C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6D6A8()
{
  result = sub_C3564("checkExistence", 0xEuLL, 1);
  qword_F1440 = result;
  qword_F1448 = v1;
  return result;
}

uint64_t *sub_6D6EC()
{
  if (qword_EE710 != -1)
  {
    swift_once();
  }

  return &qword_F1440;
}

uint64_t sub_6D74C()
{
  v0 = sub_6D6EC();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6D788()
{
  result = sub_C3564("noVerb", 6uLL, 1);
  qword_F1450 = result;
  qword_F1458 = v1;
  return result;
}

uint64_t *sub_6D7CC()
{
  if (qword_EE718 != -1)
  {
    swift_once();
  }

  return &qword_F1450;
}

uint64_t sub_6D82C()
{
  v0 = sub_6D7CC();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6D868()
{
  result = sub_C3564("state", 5uLL, 1);
  qword_F1460 = result;
  qword_F1468 = v1;
  return result;
}

uint64_t *sub_6D8AC()
{
  if (qword_EE720 != -1)
  {
    swift_once();
  }

  return &qword_F1460;
}

uint64_t sub_6D90C()
{
  v0 = sub_6D8AC();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6D948()
{
  result = sub_C3564("Favorite", 8uLL, 1);
  qword_F1470 = result;
  qword_F1478 = v1;
  return result;
}

uint64_t *sub_6D98C()
{
  if (qword_EE728 != -1)
  {
    swift_once();
  }

  return &qword_F1470;
}

uint64_t sub_6D9EC()
{
  v0 = sub_6D98C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6DA28()
{
  result = sub_C3564("SiriOpinion", 0xBuLL, 1);
  qword_F1480 = result;
  qword_F1488 = v1;
  return result;
}

uint64_t *sub_6DA6C()
{
  if (qword_EE730 != -1)
  {
    swift_once();
  }

  return &qword_F1480;
}

uint64_t sub_6DACC()
{
  v0 = sub_6DA6C();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6DB1C(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_6EBC0(a1, a2);
}

uint64_t sub_6DB70(uint64_t *a1)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_6F52C(a1);
}

uint64_t *sub_6DBBC()
{
  if (qword_EE758 != -1)
  {
    swift_once();
  }

  return &qword_F14E8;
}

uint64_t *sub_6DC1C()
{
  if (qword_EE760 != -1)
  {
    swift_once();
  }

  return &qword_F14F0;
}

uint64_t sub_6DC7C()
{
  result = sub_C3564("SocialConversation", 0x12uLL, 1);
  qword_F1490 = result;
  qword_F1498 = v1;
  return result;
}

uint64_t *sub_6DCC0()
{
  if (qword_EE738 != -1)
  {
    swift_once();
  }

  return &qword_F1490;
}

uint64_t sub_6DD20()
{
  v0 = sub_6DCC0();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6DD5C()
{
  v2 = sub_C30A4();
  sub_6F618(v2, qword_F14A0);
  sub_6F6B4(v2, qword_F14A0);
  v0 = sub_6DCC0();
  v3 = *v0;
  v4 = v0[1];

  sub_C3564("dalGeneralJoke", 0xEuLL, 1);
  return sub_C30B4();
}

uint64_t sub_6DDF0()
{
  if (qword_EE740 != -1)
  {
    swift_once();
  }

  v0 = sub_C30A4();
  return sub_6F6B4(v0, qword_F14A0);
}

uint64_t sub_6DE5C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_6DDF0();
  v1 = sub_C30A4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_6DEC0()
{
  v2 = sub_C30A4();
  sub_6F618(v2, qword_F14B8);
  sub_6F6B4(v2, qword_F14B8);
  v0 = sub_6DCC0();
  v3 = *v0;
  v4 = v0[1];

  sub_C3564("dalSpecificJoke", 0xFuLL, 1);
  return sub_C30B4();
}

uint64_t sub_6DF54()
{
  if (qword_EE748 != -1)
  {
    swift_once();
  }

  v0 = sub_C30A4();
  return sub_6F6B4(v0, qword_F14B8);
}

uint64_t sub_6DFC0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_6DF54();
  v1 = sub_C30A4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_6E024()
{
  v2 = sub_C30A4();
  sub_6F618(v2, qword_F14D0);
  sub_6F6B4(v2, qword_F14D0);
  v0 = sub_6DCC0();
  v3 = *v0;
  v4 = v0[1];

  sub_C3564("dalAnotherSpecificJoke", 0x16uLL, 1);
  return sub_C30B4();
}

uint64_t sub_6E0B8()
{
  if (qword_EE750 != -1)
  {
    swift_once();
  }

  v0 = sub_C30A4();
  return sub_6F6B4(v0, qword_F14D0);
}

uint64_t sub_6E124@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_6E0B8();
  v1 = sub_C30A4();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_6E188()
{
  v11 = sub_C30A4();
  sub_C3C64();
  v7 = v0;
  v1 = sub_6DDF0();
  (*(*(v11 - 8) + 16))(v7, v1);
  sub_4E48();
  v9 = sub_C3C64();
  v8 = v2;
  *v2 = sub_C3564("dalRandomJoke", 0xDuLL, 1);
  v8[1] = v3;
  sub_4E48();
  v13 = v9;
  v10 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
  v4 = sub_1E160();
  sub_28D90(sub_6E340, 0, v10, v11, &type metadata for Never, v4, &protocol witness table for Never, v12);
  sub_1D7C8(&v13);
  v6 = sub_C36E4();

  result = v6;
  qword_F14E8 = v6;
  return result;
}

uint64_t sub_6E340(uint64_t *a1)
{
  v5 = *a1;
  v6 = a1[1];
  v1 = sub_6DCC0();
  v3 = *v1;
  v4 = v1[1];

  return sub_C30B4();
}

uint64_t sub_6E3C0()
{
  v1 = *sub_6DBBC();

  return v1;
}

uint64_t sub_6E3F0()
{
  v23 = sub_C30A4();
  sub_C3C64();
  v18 = v0;
  v1 = sub_6DF54();
  v16 = *(v23 - 8);
  v19 = *(v16 + 16);
  v19(v18, v1);
  v17 = *(v16 + 72);
  v2 = sub_6E0B8();
  (v19)(v18 + v17, v2, v23);
  sub_4E48();
  v21 = sub_C3C64();
  v20 = v3;
  *v3 = sub_C3564("dalAnimalJoke", 0xDuLL, 1);
  v20[1] = v4;
  v20[2] = sub_C3564("dalDadJoke", 0xAuLL, 1);
  v20[3] = v5;
  v20[4] = sub_C3564("dalKidJoke", 0xAuLL, 1);
  v20[5] = v6;
  v20[6] = sub_C3564("dalMathJoke", 0xBuLL, 1);
  v20[7] = v7;
  v20[8] = sub_C3564("dalMusicJoke", 0xCuLL, 1);
  v20[9] = v8;
  v20[10] = sub_C3564("dalPun", 6uLL, 1);
  v20[11] = v9;
  v20[12] = sub_C3564("dalScienceJoke", 0xEuLL, 1);
  v20[13] = v10;
  v20[14] = sub_C3564("dalValentinesDayJoke", 0x14uLL, 1);
  v20[15] = v11;
  v20[16] = sub_C3564("dalWinterHolidayJoke", 0x14uLL, 1);
  v20[17] = v12;
  sub_4E48();
  v25 = v21;
  v22 = sub_21E8(&qword_EEFE0, &qword_C5AB0);
  v13 = sub_1E160();
  sub_28D90(sub_6E340, 0, v22, v23, &type metadata for Never, v13, &protocol witness table for Never, v24);
  sub_1D7C8(&v25);
  v15 = sub_C36E4();

  result = v15;
  qword_F14F0 = v15;
  return result;
}

uint64_t sub_6E750()
{
  v1 = *sub_6DC1C();

  return v1;
}

uint64_t sub_6E780()
{
  result = sub_C3564("buttonAnotherJoke", 0x11uLL, 1);
  qword_F14F8 = result;
  qword_F1500 = v1;
  return result;
}

uint64_t *sub_6E7C4()
{
  if (qword_EE768 != -1)
  {
    swift_once();
  }

  return &qword_F14F8;
}

uint64_t sub_6E824()
{
  v0 = sub_6E7C4();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6E860()
{
  result = sub_C3564("buttonAnotherOne", 0x10uLL, 1);
  qword_F1508 = result;
  qword_F1510 = v1;
  return result;
}

uint64_t *sub_6E8A4()
{
  if (qword_EE770 != -1)
  {
    swift_once();
  }

  return &qword_F1508;
}

uint64_t sub_6E904()
{
  v0 = sub_6E8A4();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_6E940@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20GeneralJokeRetriever_flowIdentifier;
  swift_beginAccess();
  v2 = sub_C30A4();
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_6E9CC(uint64_t a1)
{
  v10 = a1;
  v11 = sub_C30A4();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v6 = &v3 - v4;
  (*(v8 + 16))();
  v5 = v1 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20GeneralJokeRetriever_flowIdentifier;
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_6EBC0(uint64_t *a1, uint64_t *a2)
{
  v12 = 0;
  v14 = a1;
  v13 = a2;
  sub_C3564("SocialConversation", 0x12uLL, 1);
  sub_C3564("dalGeneralJoke", 0xEuLL, 1);
  sub_C30B4();
  sub_2E2DC(a1, v7);
  if (v8)
  {
    sub_BD6C(v7, __dst);
  }

  else
  {
    sub_C3C54();
    v10 = &type metadata for SystemRandomNumberGenerator;
    v11 = &protocol witness table for SystemRandomNumberGenerator;
    if (v8)
    {
      sub_1FA80(v7);
    }
  }

  sub_BD6C(__dst, (v4 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20GeneralJokeRetriever_randomNumberGenerator));
  sub_2E2DC(a2, v6);
  memcpy((v4 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20GeneralJokeRetriever_dialogRecorder), v6, 0x28uLL);
  sub_1FA80(a2);
  sub_1FA80(a1);
  return v4;
}

uint64_t sub_6ED28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v24 = 0;
  v23 = 0;
  v21 = 0;
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v12 = sub_C30A4();
  v13 = sub_C3C64();
  v11 = v4;
  v5 = sub_6DDF0();
  (*(*(v12 - 8) + 16))(v11, v5);
  sub_4E48();
  v23 = v13;
  sub_C3154();
  sub_C3144();
  sub_C3134();

  sub_808C(v22, v22[3]);
  v15 = sub_C3114();
  if (v14)
  {
    sub_2560(v22);
  }

  else
  {
    v21 = v15;
    sub_24F4(v10 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20GeneralJokeRetriever_randomNumberGenerator, v19);
    sub_2E2DC((v10 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20GeneralJokeRetriever_dialogRecorder), v18);
    sub_C3164();
    sub_1FA80(v18);
    sub_2560(v19);
    sub_808C(v20, v20[3]);
    sub_C3124();
    sub_24F4(v17, v16);
    v8 = sub_C3564("buttonAnotherOne", 0x10uLL, 1);
    sub_538A4(v16, v8, v6, a4);
    sub_2560(v17);
    sub_2560(v20);

    sub_2560(v22);
  }
}

uint64_t sub_6F010()
{
  v3 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20GeneralJokeRetriever_flowIdentifier;
  v1 = sub_C30A4();
  (*(*(v1 - 8) + 8))(v0 + v3);
  sub_2560((v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20GeneralJokeRetriever_randomNumberGenerator));
  sub_1FA80((v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20GeneralJokeRetriever_dialogRecorder));
  return v4;
}

uint64_t sub_6F0A4()
{
  v0 = *sub_6F010();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_6F184@<X0>(uint64_t a1@<X8>)
{
  v4 = v1 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin21SpecificJokeRetriever_flowIdentifier;
  swift_beginAccess();
  v2 = sub_C30A4();
  (*(*(v2 - 8) + 16))(a1, v4);
  return swift_endAccess();
}

uint64_t sub_6F210(uint64_t a1)
{
  v10 = a1;
  v11 = sub_C30A4();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v6 = &v3 - v4;
  (*(v8 + 16))();
  v5 = v1 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin21SpecificJokeRetriever_flowIdentifier;
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_6F3B4()
{
  v2 = (v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin21SpecificJokeRetriever_lastSpecificUtterance);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];

  swift_endAccess();
  return v3;
}

uint64_t sub_6F420(uint64_t a1, uint64_t a2)
{

  v6 = (v2 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin21SpecificJokeRetriever_lastSpecificUtterance);
  swift_beginAccess();
  v3 = v6[1];
  *v6 = a1;
  v6[1] = a2;

  swift_endAccess();
}

uint64_t sub_6F52C(uint64_t *a1)
{
  v6[5] = 0;
  v6[6] = a1;
  sub_C3564("SocialConversation", 0x12uLL, 1);
  sub_C3564("dalSpecificJoke", 0xFuLL, 1);
  sub_C30B4();
  v2 = (v1 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin21SpecificJokeRetriever_lastSpecificUtterance);
  *v2 = 0;
  v2[1] = 0;
  sub_2E2DC(a1, v6);
  memcpy((v1 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin21SpecificJokeRetriever_dialogRecorder), v6, 0x28uLL);
  sub_1FA80(a1);
  return v5;
}

uint64_t sub_6F618(uint64_t a1, uint64_t *a2)
{
  v6 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = *(*(a1 - 8) + 64);
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return v6;
}

uint64_t sub_6F6B4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

uint64_t sub_6F70C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v223 = a3;
  v202 = a2;
  v227 = a1;
  v190 = a4;
  v218 = 0;
  v277 = 0;
  v276 = 0;
  v275 = 0;
  v274 = 0;
  v273 = 0;
  v269 = 0;
  v259 = 0;
  v258 = 0;
  v257 = 0;
  v250 = 0;
  v249 = 0;
  v239 = 0.0;
  v191 = sub_C3234();
  v192 = *(v191 - 8);
  v193 = v192;
  v194 = *(v192 + 64);
  v5 = __chkstk_darwin(0);
  v196 = (v194 + 15) & 0xFFFFFFFFFFFFFFF0;
  v195 = &v54 - v196;
  __chkstk_darwin(v5);
  v197 = &v54 - v196;
  v198 = sub_C1C64();
  v199 = *(v198 - 8);
  v200 = v199;
  v6 = *(v199 + 64);
  __chkstk_darwin(v218);
  v201 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_C30A4();
  v203 = v216;
  v210 = *(v216 - 8);
  v212 = v216 - 8;
  v207 = v210;
  v204 = v210;
  v205 = *(v210 + 64);
  v8 = __chkstk_darwin(v227);
  v206 = &v54 - ((v205 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = v8;
  v276 = v9;
  v275 = v10;
  v274 = v4;
  v217 = sub_C3C64();
  v211 = v11;
  v12 = sub_6DDF0();
  v214 = *(v207 + 16);
  v213 = v207 + 16;
  v208 = v214;
  v209 = (v207 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v214(v211, v12, v216);
  v215 = &v211[*(v210 + 72)];
  v13 = sub_6DF54();
  v214(v215, v13, v216);
  v14 = v217;
  sub_4E48();
  v222 = v14;
  v219 = v14;
  v273 = v14;
  sub_C3154();
  v220 = sub_C3144();
  v221 = v270;
  sub_C3134();

  v225 = v271;
  v226 = v272;
  sub_808C(v221, v271);
  v15 = v224;
  v16 = sub_C3114();
  v228 = v15;
  v229 = v16;
  v230 = v15;
  if (v15)
  {
    v57 = v230;
    sub_2560(v270);

    result = v57;
    v58 = v57;
  }

  else
  {
    v187 = v229;
    v269 = v229;
    v17 = sub_6E0B8();
    v208(v206, v17, v203);
    v188 = sub_C3094();
    (*(v204 + 8))(v206, v203);
    if (v188)
    {
      v179 = (v189 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin21SpecificJokeRetriever_lastSpecificUtterance);
      v180 = &v231;
      swift_beginAccess();
      v182 = *v179;
      v181 = v182;
      v183 = v179[1];
      v184 = v183;

      swift_endAccess();

      v267 = v182;
      v268 = v183;
      v185 = v181;
      v186 = v184;
    }

    else
    {
      v173 = sub_C3184();
      v175 = v18;
      v177 = v173;
      v178 = v18;

      v267 = v173;
      v268 = v175;

      v174 = (v189 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin21SpecificJokeRetriever_lastSpecificUtterance);
      v176 = &v266;
      swift_beginAccess();
      v19 = v174;
      v20 = v175;
      v21 = v174[1];
      *v174 = v173;
      v19[1] = v20;

      swift_endAccess();
      v185 = v177;
      v186 = v178;
    }

    v171 = v186;
    v172 = v185;
    if (v186)
    {
      v169 = v172;
      v170 = v171;
      v157 = v171;
      v156 = v172;
      v164 = v228;
      v258 = v172;
      v259 = v171;
      v159 = type metadata accessor for RelevantDialogScorer();
      (*(v200 + 16))(v201, v223, v198);

      v160 = sub_70A70(v201, v156, v157);
      v158 = v160;
      v257 = v160;

      v253[3] = v159;
      v253[4] = sub_7150C();
      v253[0] = v160;
      v161 = v252;
      sub_2E2DC((v189 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin21SpecificJokeRetriever_dialogRecorder), v252);
      v163 = v254;
      v162 = v253;
      sub_C3174();
      sub_1FA80(v161);
      sub_2560(v162);
      v165 = v255;
      v166 = v256;
      sub_808C(v163, v255);
      v22 = v164;
      sub_C3124();
      v167 = v22;
      v168 = v22;
      if (v22)
      {
        v55 = v168;
        sub_2560(v254);

        sub_8224(&v267);

        sub_2560(v270);

        return v55;
      }

      else
      {
        v148 = v243;
        sub_24F4(v158 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20RelevantDialogScorer_keywordScorer, v243);
        v151 = v244;
        v152 = v245;
        sub_808C(v148, v244);
        v149 = sub_21E8(&qword_EFCC0, &qword_C6C20);
        v150 = sub_C3C64();
        sub_24F4(v251, v23);
        v24 = v150;
        sub_4E48();
        v153 = v24;
        v155 = sub_C3054();

        v242 = v155;
        v154 = sub_21E8(&qword_EFCC8, &qword_C6C28);
        sub_7158C();
        sub_C37F4();

        if (v247)
        {
          v144 = v247;
          v143 = v248;
          v145 = v246;
          sub_808C(v246, v247);
          sub_C3074();
          v146 = v25;
          sub_2560(v145);
          sub_2560(v243);
          v147 = v146;
        }

        else
        {
          sub_2560(v243);
          sub_1FA80(v246);
          v147 = 0x100000000;
        }

        v240 = *&v147;
        v241 = BYTE4(v147) & 1;
        if ((v147 & 0x100000000) != 0)
        {
          v142 = 0.0;
        }

        else
        {
          v142 = v240;
        }

        v26 = v197;
        v122 = v142;
        v239 = v142;
        v27 = sub_BF704();
        (*(v193 + 16))(v26, v27, v191);
        v130 = 7;
        v128 = swift_allocObject();
        *(v128 + 16) = v122;
        v141 = sub_C3224();
        v123 = v141;
        v140 = sub_C3874();
        v124 = v140;
        v125 = 17;
        v134 = swift_allocObject();
        v126 = v134;
        *(v134 + 16) = 0;
        v135 = swift_allocObject();
        v127 = v135;
        *(v135 + 16) = 8;
        v129 = 32;
        v28 = swift_allocObject();
        v29 = v128;
        v131 = v28;
        *(v28 + 16) = sub_71640;
        *(v28 + 24) = v29;
        v30 = swift_allocObject();
        v31 = v131;
        v132 = v30;
        *(v30 + 16) = sub_717B4;
        *(v30 + 24) = v31;
        v32 = swift_allocObject();
        v33 = v132;
        v138 = v32;
        v133 = v32;
        *(v32 + 16) = sub_71828;
        *(v32 + 24) = v33;
        v139 = sub_21E8(&unk_EEFA0, &unk_C50F0);
        v136 = sub_C3C64();
        v137 = v34;

        v35 = v134;
        v36 = v137;
        *v137 = sub_7B48;
        v36[1] = v35;

        v37 = v135;
        v38 = v137;
        v137[2] = sub_7B48;
        v38[3] = v37;

        v39 = v137;
        v40 = v138;
        v137[4] = sub_718E0;
        v39[5] = v40;
        sub_4E48();

        if (os_log_type_enabled(v141, v140))
        {
          v119 = v167;
          v115 = sub_C3954();
          v111 = v115;
          v112 = sub_21E8(&qword_EE828, &qword_C5100);
          v113 = 0;
          v116 = sub_5DD4(0);
          v114 = v116;
          v117 = sub_5DD4(v113);
          v236 = v115;
          v235 = v116;
          v234 = v117;
          v118 = &v236;
          sub_5E28(0, &v236);
          sub_5E28(1, v118);
          v41 = v119;
          v232 = sub_7B48;
          v233 = v126;
          sub_5E3C(&v232, v118, &v235, &v234);
          v120 = v41;
          v121 = v41;
          if (v41)
          {
            v109 = 0;

            __break(1u);
          }

          else
          {
            v232 = sub_7B48;
            v233 = v127;
            sub_5E3C(&v232, &v236, &v235, &v234);
            v107 = 0;
            v108 = 0;
            v232 = sub_718E0;
            v233 = v133;
            sub_5E3C(&v232, &v236, &v235, &v234);
            v105 = 0;
            v106 = 0;
            _os_log_impl(&dword_0, v123, v124, "Selected dialog keyword score: %f", v111, 0xCu);
            v104 = 0;
            sub_5E88(v114);
            sub_5E88(v117);
            sub_C3934();

            v110 = v105;
          }
        }

        else
        {

          v110 = v167;
        }

        v103 = v110;

        (*(v193 + 8))(v197, v191);
        if (v122 <= 0.0)
        {
          v43 = sub_6E7C4();
          v90 = *v43;
          v95 = v90;
          v91 = v43[1];
          v96 = v91;

          v249 = v90;
          v250 = v91;
          v92 = (v189 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin21SpecificJokeRetriever_lastSpecificUtterance);
          v94 = &v238;
          v93 = 0;
          swift_beginAccess();
          v44 = v92;
          v45 = v93;
          v46 = v92[1];
          *v92 = v93;
          v44[1] = v45;

          swift_endAccess();
          v101 = v95;
          v102 = v96;
        }

        else
        {
          v42 = sub_6E8A4();
          v98 = *v42;
          v100 = v98;
          v99 = v42[1];
          v97 = v99;

          v249 = v98;
          v250 = v99;
          v101 = v100;
          v102 = v97;
        }

        v86 = v102;
        v85 = v101;
        v88 = v251;
        v87 = v237;
        sub_24F4(v251, v237);
        sub_538A4(v87, v85, v86, v190);
        sub_8224(&v249);
        sub_2560(v88);
        sub_2560(v254);

        sub_8224(&v267);

        sub_2560(v270);

        v89 = v103;
      }
    }

    else
    {
      v48 = v195;
      v49 = sub_BF704();
      (*(v193 + 16))(v48, v49, v191);
      v83 = sub_C3224();
      v80 = v83;
      v82 = sub_C3884();
      v81 = v82;
      sub_21E8(&unk_EEFA0, &unk_C50F0);
      v84 = sub_C3C64();
      if (os_log_type_enabled(v83, v82))
      {
        v78 = v228;
        v70 = sub_C3954();
        v66 = v70;
        v67 = sub_21E8(&qword_EE828, &qword_C5100);
        v68 = 0;
        v71 = sub_5DD4(0);
        v69 = v71;
        v72 = sub_5DD4(v68);
        v263 = v70;
        v262 = v71;
        v261 = v72;
        v73 = 0;
        v74 = &v263;
        sub_5E28(0, &v263);
        sub_5E28(v73, v74);
        v260 = v84;
        v75 = &v54;
        __chkstk_darwin(&v54);
        v76 = &v54 - 6;
        *(&v54 - 4) = v50;
        *(&v54 - 3) = &v262;
        *(&v54 - 2) = &v261;
        v77 = sub_21E8(&unk_EEFB0, qword_C5110);
        sub_8128();
        v51 = v78;
        sub_C3654();
        v79 = v51;
        if (v51)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_0, v80, v81, "No utterance, retrieving general joke", v66, 2u);
          v64 = 0;
          sub_5E88(v69);
          sub_5E88(v72);
          sub_C3934();

          v65 = v79;
        }
      }

      else
      {

        v65 = v228;
      }

      v60 = v65;

      (*(v193 + 8))(v195, v191);
      v59 = 0;
      type metadata accessor for GeneralJokeRetriever();
      v265[0] = v59;
      v265[1] = v59;
      v265[2] = v59;
      v265[3] = v59;
      v265[4] = v59;
      v264[0] = v59;
      v264[1] = v59;
      v264[2] = v59;
      v264[3] = v59;
      v264[4] = v59;
      v52 = sub_6DB1C(v265, v264);
      v53 = v60;
      v61 = v52;
      sub_6ED28(v227, v202, v223, v190);
      v62 = v53;
      v63 = v53;
      if (v53)
      {
        v56 = v63;

        sub_8224(&v267);

        sub_2560(v270);

        result = v56;
        v58 = v56;
      }

      else
      {

        sub_8224(&v267);

        sub_2560(v270);

        result = v62;
        v89 = v62;
      }
    }
  }

  return result;
}

uint64_t type metadata accessor for GeneralJokeRetriever()
{
  v1 = qword_EFD08;
  if (!qword_EFD08)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_70A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_70D68(a1, a2, a3);
}

uint64_t sub_70ACC()
{
  v3 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin21SpecificJokeRetriever_flowIdentifier;
  v1 = sub_C30A4();
  (*(*(v1 - 8) + 8))(v0 + v3);
  sub_8224(v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin21SpecificJokeRetriever_lastSpecificUtterance);
  sub_1FA80((v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin21SpecificJokeRetriever_dialogRecorder));
  return v4;
}

uint64_t sub_70B60()
{
  v0 = *sub_70ACC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t sub_70C40@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20RelevantDialogScorer_siriLocale;
  v2 = sub_C1C64();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_70CAC()
{
  v2 = *(v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20RelevantDialogScorer_utterance);
  v3 = *(v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20RelevantDialogScorer_utterance + 8);

  return v2;
}

uint64_t sub_70D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v28 = a2;
  v39 = a3;
  v4 = v3;
  v44 = v4;
  v26 = 0;
  v22[2] = sub_71170;
  v25 = sub_7122C;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v48 = 0;
  v43 = sub_C1C64();
  v40 = *(v43 - 8);
  v41 = v43 - 8;
  v6 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v43);
  v22[0] = v22 - v7;
  v51 = a1;
  v49 = v8;
  v50 = v39;
  v48 = v44;
  (*(v40 + 16))();
  (*(v40 + 32))(v44 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20RelevantDialogScorer_siriLocale, v22[0], v43);

  v9 = v39;
  v10 = (v44 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20RelevantDialogScorer_utterance);
  *v10 = v28;
  v10[1] = v9;
  v22[1] = sub_C1BA4();
  v22[4] = v11;
  v22[3] = sub_71210();
  v23 = &v47;
  v27 = 1;
  sub_C30F4();

  v32 = &unk_F1000;
  sub_BD6C(v23, (v44 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20RelevantDialogScorer_textScorer));
  v12 = sub_C1BA4();
  v13 = v44;
  v24 = v12;
  v30 = v14;
  v29 = sub_71210();
  v31 = &v46;
  sub_C30F4();

  v33 = &unk_F1000;
  sub_BD6C(v31, (v13 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20RelevantDialogScorer_keywordScorer));
  v36 = sub_21E8(&qword_EFCD8, qword_C6C30);
  v35 = sub_C3C64();
  v34 = v15;
  sub_24F4(v13 + v32[169], v15);
  v16 = sub_C3794(0.333333333);
  v17 = v33;
  v18 = v34;
  *(v34 + 40) = v16;
  sub_24F4(v13 + v17[166], v18 + 48);
  v19 = sub_C3794(0.666666667);
  v20 = v35;
  *(v34 + 88) = v19;
  sub_4E48();
  v37 = v20;
  v38 = &v45;
  sub_C3104();

  sub_BD6C(v38, (v13 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20RelevantDialogScorer_weightedScorer));

  (*(v40 + 8))(v42, v43);
  return v44;
}

uint64_t sub_71170(void *a1)
{
  v4[5] = a1;
  v2 = a1[4];
  sub_808C(a1, a1[3]);
  sub_C31C4();
  sub_808C(v4, v4[3]);
  v3 = sub_C30D4();
  sub_2560(v4);
  return v3;
}

uint64_t sub_7122C(void *a1)
{
  v4[5] = a1;
  v2 = a1[4];
  sub_808C(a1, a1[3]);
  sub_C31C4();
  sub_808C(v4, v4[3]);
  v3 = sub_C30E4();
  sub_2560(v4);
  return v3;
}

uint64_t sub_712CC(uint64_t a1)
{
  v4[5] = 0;
  v4[6] = a1;
  sub_24F4(v1 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20RelevantDialogScorer_weightedScorer, v4);
  sub_808C(v4, v4[3]);
  v3 = sub_C3054();
  sub_2560(v4);
  return v3;
}

uint64_t sub_7135C()
{
  v3 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20RelevantDialogScorer_siriLocale;
  v1 = sub_C1C64();
  (*(*(v1 - 8) + 8))(v0 + v3);
  sub_8224(v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20RelevantDialogScorer_utterance);
  sub_2560((v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20RelevantDialogScorer_textScorer));
  sub_2560((v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20RelevantDialogScorer_keywordScorer));
  sub_2560((v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin20RelevantDialogScorer_weightedScorer));
  return v4;
}

uint64_t sub_71410()
{
  v0 = *sub_7135C();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RelevantDialogScorer()
{
  v1 = qword_EFEE0;
  if (!qword_EFEE0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_7150C()
{
  v2 = qword_EFCB8;
  if (!qword_EFCB8)
  {
    type metadata accessor for RelevantDialogScorer();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFCB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_7158C()
{
  v2 = qword_EFCD0;
  if (!qword_EFCD0)
  {
    sub_81B0(&qword_EFCC8, &qword_C6C28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFCD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_71648(unint64_t result)
{
  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return &_swiftEmptyArrayStorage;
    }

    v1 = sub_C3704();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_71774()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_717E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *sub_71834(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4();
  v5 = *a1;
  sub_C3984();
  result = a1;
  *a1 = v5 + 8;
  return result;
}

uint64_t sub_718A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_71930()
{
  v2 = sub_C30A4();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t type metadata accessor for SpecificJokeRetriever()
{
  v1 = qword_EFDE8;
  if (!qword_EFDE8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_71AAC()
{
  v2 = sub_C30A4();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_71BB4()
{
  v2 = sub_C1C64();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_71CB0()
{
  if (qword_EE778 != -1)
  {
    swift_once();
  }

  return v1;
}

uint64_t SocialConversationFeatureFlagManager.isMultiturnEnabled.getter()
{
  v2[3] = &unk_E7850;
  v2[4] = sub_71DA0();
  LOBYTE(v2[0]) = 0;
  v1 = sub_71E1C(v2);
  sub_2560(v2);
  return v1 & 1;
}

unint64_t sub_71DA0()
{
  v2 = qword_EFF90;
  if (!qword_EFF90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFF90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_71E1C(uint64_t a1)
{
  v71 = a1;
  v76 = sub_735BC;
  v77 = sub_1F278;
  v79 = sub_7BBC;
  v81 = sub_735CC;
  v82 = sub_7BBC;
  v84 = sub_736AC;
  v86 = sub_7BBC;
  v88 = sub_73764;
  v90 = sub_7BBC;
  v95 = sub_73814;
  v99 = sub_7BBC;
  v101 = sub_7B48;
  v103 = sub_7B48;
  v105 = sub_7C08;
  v107 = sub_7B48;
  v109 = sub_7B48;
  v111 = sub_7C08;
  v113 = sub_7B48;
  v115 = sub_7B48;
  v117 = sub_7C08;
  v119 = sub_7B48;
  v121 = sub_7B48;
  v123 = sub_7C08;
  v125 = sub_7B48;
  v127 = sub_7B48;
  v130 = sub_7C08;
  v144 = 0;
  v143 = 0;
  v64 = 0;
  v69 = sub_C3234();
  v67 = *(v69 - 8);
  v68 = v69 - 8;
  v65 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = v56 - v65;
  v66 = v56 - v65;
  v144 = __chkstk_darwin(v71);
  v75 = sub_C2424();
  v74 = 1;
  v143 = v75 & 1;
  v2 = sub_BF704();
  (*(v67 + 16))(v1, v2, v69);
  v70 = v142;
  sub_24F4(v71, v142);
  v72 = 56;
  v97 = 7;
  v85 = swift_allocObject();
  sub_BD6C(v70, (v85 + 16));
  v73 = v141;
  sub_24F4(v71, v141);
  v89 = swift_allocObject();
  sub_BD6C(v73, (v89 + 16));
  v93 = 17;
  v98 = swift_allocObject();
  *(v98 + 16) = v75 & v74;
  v134 = sub_C3224();
  v135 = sub_C3874();
  v102 = swift_allocObject();
  v92 = 32;
  *(v102 + 16) = 32;
  v104 = swift_allocObject();
  v94 = 8;
  *(v104 + 16) = 8;
  v96 = 32;
  v3 = swift_allocObject();
  v78 = v3;
  *(v3 + 16) = v76;
  *(v3 + 24) = 0;
  v4 = swift_allocObject();
  v5 = v78;
  v80 = v4;
  *(v4 + 16) = v77;
  *(v4 + 24) = v5;
  v6 = swift_allocObject();
  v7 = v80;
  v106 = v6;
  *(v6 + 16) = v79;
  *(v6 + 24) = v7;
  v108 = swift_allocObject();
  *(v108 + 16) = v92;
  v110 = swift_allocObject();
  *(v110 + 16) = v94;
  v8 = swift_allocObject();
  v83 = v8;
  *(v8 + 16) = v81;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v83;
  v112 = v9;
  *(v9 + 16) = v82;
  *(v9 + 24) = v10;
  v114 = swift_allocObject();
  *(v114 + 16) = v92;
  v116 = swift_allocObject();
  *(v116 + 16) = v94;
  v11 = swift_allocObject();
  v12 = v85;
  v87 = v11;
  *(v11 + 16) = v84;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v87;
  v118 = v13;
  *(v13 + 16) = v86;
  *(v13 + 24) = v14;
  v120 = swift_allocObject();
  *(v120 + 16) = v92;
  v122 = swift_allocObject();
  *(v122 + 16) = v94;
  v15 = swift_allocObject();
  v16 = v89;
  v91 = v15;
  *(v15 + 16) = v88;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v91;
  v124 = v17;
  *(v17 + 16) = v90;
  *(v17 + 24) = v18;
  v126 = swift_allocObject();
  *(v126 + 16) = v92;
  v128 = swift_allocObject();
  *(v128 + 16) = v94;
  v19 = swift_allocObject();
  v20 = v98;
  v100 = v19;
  *(v19 + 16) = v95;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v100;
  v131 = v21;
  *(v21 + 16) = v99;
  *(v21 + 24) = v22;
  v133 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v129 = sub_C3C64();
  v132 = v23;

  v24 = v102;
  v25 = v132;
  *v132 = v101;
  v25[1] = v24;

  v26 = v104;
  v27 = v132;
  v132[2] = v103;
  v27[3] = v26;

  v28 = v106;
  v29 = v132;
  v132[4] = v105;
  v29[5] = v28;

  v30 = v108;
  v31 = v132;
  v132[6] = v107;
  v31[7] = v30;

  v32 = v110;
  v33 = v132;
  v132[8] = v109;
  v33[9] = v32;

  v34 = v112;
  v35 = v132;
  v132[10] = v111;
  v35[11] = v34;

  v36 = v114;
  v37 = v132;
  v132[12] = v113;
  v37[13] = v36;

  v38 = v116;
  v39 = v132;
  v132[14] = v115;
  v39[15] = v38;

  v40 = v118;
  v41 = v132;
  v132[16] = v117;
  v41[17] = v40;

  v42 = v120;
  v43 = v132;
  v132[18] = v119;
  v43[19] = v42;

  v44 = v122;
  v45 = v132;
  v132[20] = v121;
  v45[21] = v44;

  v46 = v124;
  v47 = v132;
  v132[22] = v123;
  v47[23] = v46;

  v48 = v126;
  v49 = v132;
  v132[24] = v125;
  v49[25] = v48;

  v50 = v128;
  v51 = v132;
  v132[26] = v127;
  v51[27] = v50;

  v52 = v131;
  v53 = v132;
  v132[28] = v130;
  v53[29] = v52;
  sub_4E48();

  if (os_log_type_enabled(v134, v135))
  {
    v54 = v64;
    v57 = sub_C3954();
    v56[14] = sub_21E8(&qword_EE828, &qword_C5100);
    v58 = sub_5DD4(0);
    v59 = sub_5DD4(5);
    v60 = &v140;
    v140 = v57;
    v61 = &v139;
    v139 = v58;
    v62 = &v138;
    v138 = v59;
    sub_5E28(2, &v140);
    sub_5E28(5, v60);
    v136 = v101;
    v137 = v102;
    sub_5E3C(&v136, v60, v61, v62);
    v63 = v54;
    if (v54)
    {

      __break(1u);
    }

    else
    {
      v136 = v103;
      v137 = v104;
      sub_5E3C(&v136, &v140, &v139, &v138);
      v56[12] = 0;
      v136 = v105;
      v137 = v106;
      sub_5E3C(&v136, &v140, &v139, &v138);
      v56[11] = 0;
      v136 = v107;
      v137 = v108;
      sub_5E3C(&v136, &v140, &v139, &v138);
      v56[10] = 0;
      v136 = v109;
      v137 = v110;
      sub_5E3C(&v136, &v140, &v139, &v138);
      v56[9] = 0;
      v136 = v111;
      v137 = v112;
      sub_5E3C(&v136, &v140, &v139, &v138);
      v56[8] = 0;
      v136 = v113;
      v137 = v114;
      sub_5E3C(&v136, &v140, &v139, &v138);
      v56[7] = 0;
      v136 = v115;
      v137 = v116;
      sub_5E3C(&v136, &v140, &v139, &v138);
      v56[6] = 0;
      v136 = v117;
      v137 = v118;
      sub_5E3C(&v136, &v140, &v139, &v138);
      v56[5] = 0;
      v136 = v119;
      v137 = v120;
      sub_5E3C(&v136, &v140, &v139, &v138);
      v56[4] = 0;
      v136 = v121;
      v137 = v122;
      sub_5E3C(&v136, &v140, &v139, &v138);
      v56[3] = 0;
      v136 = v123;
      v137 = v124;
      sub_5E3C(&v136, &v140, &v139, &v138);
      v56[2] = 0;
      v136 = v125;
      v137 = v126;
      sub_5E3C(&v136, &v140, &v139, &v138);
      v56[1] = 0;
      v136 = v127;
      v137 = v128;
      sub_5E3C(&v136, &v140, &v139, &v138);
      v56[0] = 0;
      v136 = v130;
      v137 = v131;
      sub_5E3C(&v136, &v140, &v139, &v138);
      _os_log_impl(&dword_0, v134, v135, "%s.%s %s/%s=%s", v57, 0x34u);
      sub_5E88(v58);
      sub_5E88(v59);
      sub_C3934();
    }
  }

  else
  {
  }

  _objc_release(v134);
  (*(v67 + 8))(v66, v69);
  return v75 & 1;
}

uint64_t SocialConversationFeatureFlagManager.isResponseFrameworkEnabled.getter()
{
  v2[3] = &unk_E7850;
  v2[4] = sub_71DA0();
  LOBYTE(v2[0]) = 1;
  v1 = sub_71E1C(v2);
  sub_2560(v2);
  return v1 & 1;
}

uint64_t SocialConversationFeatureFlagManager.isGreetingRefreshEnabled.getter()
{
  v2[3] = &unk_E7850;
  v2[4] = sub_71DA0();
  LOBYTE(v2[0]) = 2;
  v1 = sub_71E1C(v2);
  sub_2560(v2);
  return v1 & 1;
}

uint64_t SocialConversationFeatureFlagManager.isSiriRemembersEnabled.getter()
{
  v2[3] = &unk_E7850;
  v2[4] = sub_71DA0();
  LOBYTE(v2[0]) = 3;
  v1 = sub_71E1C(v2);
  sub_2560(v2);
  return v1 & 1;
}

uint64_t SocialConversationFeatureFlagManager.isBobcatJokesEnabled.getter()
{
  v2[3] = &unk_E7850;
  v2[4] = sub_71DA0();
  LOBYTE(v2[0]) = 4;
  v1 = sub_71E1C(v2);
  sub_2560(v2);
  return v1 & 1;
}

uint64_t SocialConversationFeatureFlagManager.isNewMultiturnEnabled.getter()
{
  v2[3] = &unk_E7850;
  v2[4] = sub_71DA0();
  LOBYTE(v2[0]) = 5;
  v1 = sub_71E1C(v2);
  sub_2560(v2);
  return v1 & 1;
}

uint64_t SocialConversationFeatureFlagManager.isBobcatJokesLocaleExpansionEnabled.getter()
{
  v2[3] = &unk_E7850;
  v2[4] = sub_71DA0();
  LOBYTE(v2[0]) = 6;
  v1 = sub_71E1C(v2);
  sub_2560(v2);
  return v1 & 1;
}

uint64_t SocialConversationFeatureFlagManager.isJokesUserFeedbackEnabled.getter()
{
  v2[3] = &unk_E7850;
  v2[4] = sub_71DA0();
  LOBYTE(v2[0]) = 7;
  v1 = sub_71E1C(v2);
  sub_2560(v2);
  return v1 & 1;
}

uint64_t SocialConversationFeatureFlagManager.isSocialHintsEnabled.getter()
{
  v2[3] = &unk_E7850;
  v2[4] = sub_71DA0();
  LOBYTE(v2[0]) = 8;
  v1 = sub_71E1C(v2);
  sub_2560(v2);
  return v1 & 1;
}

uint64_t sub_735FC(void *a1)
{
  v2 = a1[4];
  sub_808C(a1, a1[3]);
  sub_C2434();
  return sub_C3504();
}

uint64_t sub_736B4(void *a1)
{
  v2 = a1[4];
  sub_808C(a1, a1[3]);
  sub_C2444();
  return sub_C3504();
}

uint64_t sub_7376C(char a1)
{
  if (a1)
  {
    return sub_C3564("on", 2uLL, 1);
  }

  else
  {
    return sub_C3564("off", 3uLL, 1);
  }
}

const char *sub_7394C(char a1)
{
  switch(a1)
  {
    case 0:
      return "Multiturn";
    case 1:
      return "ResponseFramework";
    case 2:
      return "GreetingRefresh";
    case 3:
      return "SiriRemembers";
    case 4:
      return "BobcatJokes";
    case 5:
      return "NewMultiturn";
    case 6:
      return "BobcatJokesLocaleExpansion";
    case 7:
      return "JokesUserFeedback";
  }

  return "SocialHints";
}

BOOL sub_73BBC(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      case 4:
        v4 = 4;
        break;
      case 5:
        v4 = 5;
        break;
      case 6:
        v4 = 6;
        break;
      case 7:
        v4 = 7;
        break;
      default:
        v4 = 8;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      case 4:
        v3 = 4;
        break;
      case 5:
        v3 = 5;
        break;
      case 6:
        v3 = 6;
        break;
      case 7:
        v3 = 7;
        break;
      default:
        v3 = 8;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_74118()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_74158()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_74198()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_74230()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_74270()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_74308()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_74348()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_743E0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_74420()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_744B8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_744F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_74538()
{
  v2 = qword_EFF98;
  if (!qword_EFF98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFF98);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_745D4(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xF7)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 8) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 247;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 9;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_7473C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xF7)
  {
    v5 = ((a3 + 8) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xF7)
  {
    v4 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 8;
    }
  }

  return result;
}

unint64_t sub_74974()
{
  v2 = qword_EFFA0;
  if (!qword_EFFA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_EFFA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_749F0(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  return sub_75020(a1, a2, a3, a4);
}

uint64_t sub_74A54()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t sub_74AA4(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;

  swift_endAccess();
}

void *sub_74B04@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  memcpy(__dst, (v1 + 24), sizeof(__dst));
  sub_1D2DC(__dst, v4);
  swift_endAccess();
  return memcpy(a1, __dst, 0x40uLL);
}

void *sub_74B84(void *a1)
{
  sub_1D2DC(a1, v4);
  swift_beginAccess();
  sub_75160(a1, (v1 + 24));
  swift_endAccess();
  return sub_1CFBC(a1);
}

void *sub_74C44()
{
  swift_beginAccess();
  v2 = *(v0 + 88);
  _objc_retain(v2);
  swift_endAccess();
  return v2;
}

void sub_74C9C(void *a1)
{
  _objc_retain(a1);
  swift_beginAccess();
  v2 = *(v1 + 88);
  *(v1 + 88) = a1;
  _objc_release(v2);
  swift_endAccess();
  _objc_release(a1);
}

uint64_t sub_74D70@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_24F4(v1 + 96, a1);
  return swift_endAccess();
}

uint64_t sub_74DC4(uint64_t *a1)
{
  sub_24F4(a1, v4);
  swift_beginAccess();
  sub_2560((v1 + 96));
  sub_BD6C(v4, (v1 + 96));
  swift_endAccess();
  return sub_2560(a1);
}

uint64_t sub_74E90@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16ParameterService_button);
  swift_beginAccess();
  sub_75200(v3, a1);
  return swift_endAccess();
}

uint64_t sub_74EEC(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(sub_21E8(&qword_EFFB0, &qword_C6EE8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(v8);
  v5 = (&v4 - v4);
  sub_75200(v2, (&v4 - v4));
  v6 = (v1 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16ParameterService_button);
  v7 = &v9;
  swift_beginAccess();
  sub_7547C(v5, v6);
  swift_endAccess();
  return sub_759CC(v8);
}

uint64_t sub_75020(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = v4;
  v7 = OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16ParameterService_button;
  v5 = type metadata accessor for DialogServiceButton();
  (*(*(v5 - 8) + 56))(v4 + v7, 1);

  v4[2] = a1;
  sub_1D2DC(a2, v14);
  memcpy(v4 + 3, a2, 0x40uLL);
  _objc_retain(a3);
  v4[11] = a3;
  sub_24F4(a4, v13);
  sub_BD6C(v13, v4 + 12);
  sub_2560(a4);
  _objc_release(a3);
  sub_1CFBC(a2);

  return v12;
}

void *sub_75160(void *a1, void *a2)
{
  *a2 = *a1;
  v2 = a1[1];
  v3 = a2[1];
  a2[1] = v2;

  a2[2] = a1[2];
  v4 = a2[3];
  a2[3] = a1[3];

  a2[4] = a1[4];
  v5 = a2[5];
  a2[5] = a1[5];

  a2[6] = a1[6];
  v6 = a2[7];
  a2[7] = a1[7];

  return a2;
}

void *sub_75200(void *a1, void *a2)
{
  v15 = type metadata accessor for DialogServiceButton();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(a1, 1))
  {
    v4 = sub_21E8(&qword_EFFB0, &qword_C6EE8);
    memcpy(a2, a1, *(*(v4 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v8 = a1[1];

    a2[1] = v8;
    __dst = a2 + *(v15 + 20);
    __src = a1 + *(v15 + 20);
    v11 = sub_C1AC4();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(__src, 1))
    {
      v2 = sub_21E8(&qword_EF008, &unk_C5AD0);
      memcpy(__dst, __src, *(*(v2 - 8) + 64));
    }

    else
    {
      (*(v12 + 16))(__dst, __src, v11);
      (*(v12 + 56))(__dst, 0, 1, v11);
    }

    v3 = *(v15 + 24);
    v6 = a2 + v3;
    *(a2 + v3) = *(a1 + v3);
    v7 = *(a1 + v3 + 8);

    *(v6 + 1) = v7;
    (*(v16 + 56))(a2, 0, 1, v15);
  }

  return a2;
}

void *sub_7547C(void *a1, void *a2)
{
  v23 = type metadata accessor for DialogServiceButton();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if ((v25)(a2, 1))
  {
    if (v25(a1, 1, v23))
    {
      v10 = sub_21E8(&qword_EFFB0, &qword_C6EE8);
      memcpy(a2, a1, *(*(v10 - 8) + 64));
    }

    else
    {
      *a2 = *a1;
      v12 = a2 + *(v23 + 20);
      v13 = a1 + *(v23 + 20);
      v14 = sub_C1AC4();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v13, 1))
      {
        v9 = sub_21E8(&qword_EF008, &unk_C5AD0);
        memcpy(v12, v13, *(*(v9 - 8) + 64));
      }

      else
      {
        (*(v15 + 32))(v12, v13, v14);
        (*(v15 + 56))(v12, 0, 1, v14);
      }

      *(a2 + *(v23 + 24)) = *(a1 + *(v23 + 24));
      (*(v24 + 56))();
    }
  }

  else if (v25(a1, 1, v23))
  {
    sub_1A104(a2);
    v8 = sub_21E8(&qword_EFFB0, &qword_C6EE8);
    memcpy(a2, a1, *(*(v8 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v2 = a2[1];
    a2[1] = a1[1];

    __dst = a2 + *(v23 + 20);
    __src = a1 + *(v23 + 20);
    v18 = sub_C1AC4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 48);
    if ((v20)(__dst, 1))
    {
      if (v20(__src, 1, v18))
      {
        v4 = sub_21E8(&qword_EF008, &unk_C5AD0);
        memcpy(__dst, __src, *(*(v4 - 8) + 64));
      }

      else
      {
        (*(v19 + 32))(__dst, __src, v18);
        (*(v19 + 56))(__dst, 0, 1, v18);
      }
    }

    else if (v20(__src, 1, v18))
    {
      (*(v19 + 8))(__dst, v18);
      v3 = sub_21E8(&qword_EF008, &unk_C5AD0);
      memcpy(__dst, __src, *(*(v3 - 8) + 64));
    }

    else
    {
      (*(v19 + 40))(__dst, __src, v18);
    }

    v5 = *(v23 + 24);
    v6 = (a2 + v5);
    *v6 = *(a1 + v5);
    v7 = *(a2 + v5 + 8);
    v6[1] = *(a1 + v5 + 8);
  }

  return a2;
}

uint64_t sub_759CC(uint64_t a1)
{
  v8 = type metadata accessor for DialogServiceButton();
  if (!(*(*(v8 - 8) + 48))(a1, 1))
  {
    v1 = *(a1 + 8);

    v4 = a1 + *(v8 + 20);
    v5 = sub_C1AC4();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v4, 1))
    {
      (*(v6 + 8))(v4, v5);
    }

    v2 = *(a1 + *(v8 + 24) + 8);
  }

  return a1;
}

uint64_t sub_75AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v280 = a8;
  v303 = a1;
  v304 = a2;
  v305 = a3;
  v306 = a4;
  v307 = a5;
  v308 = a6;
  v309 = a7;
  v310 = sub_1D834;
  v312 = sub_7BBC;
  v314 = sub_1D834;
  v316 = sub_7BBC;
  v319 = sub_1D834;
  v321 = sub_7BBC;
  v325 = sub_77E90;
  v329 = sub_49A8C;
  v331 = sub_7B48;
  v333 = sub_7B48;
  v335 = sub_7C08;
  v337 = sub_7B48;
  v339 = sub_7B48;
  v341 = sub_7C08;
  v343 = sub_7B48;
  v345 = sub_7B48;
  v347 = sub_7C08;
  v349 = sub_7B48;
  v351 = sub_7B48;
  v354 = sub_4A09C;
  v395 = 0;
  v394 = 0;
  v393 = 0;
  v391 = 0;
  v392 = 0;
  v389 = 0;
  v390 = 0;
  v387 = 0;
  v388 = 0;
  v386 = 0;
  v385 = 0;
  v383 = 0;
  v384 = 0;
  v382 = 0;
  v377 = 0;
  v378 = 0;
  v376 = 0;
  v372 = 0;
  v371 = 0;
  v281 = 0;
  v369 = 0;
  v398 = 0;
  v399 = 0;
  v367 = 0;
  v368 = 0;
  v8 = sub_21E8(&qword_EF008, &unk_C5AD0);
  v282 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v283 = &v143 - v282;
  v284 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v143 - v282);
  v285 = &v143 - v284;
  v291 = 0;
  v286 = sub_C1AC4();
  v287 = *(v286 - 8);
  v288 = v286 - 8;
  v289 = (*(v287 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v291);
  v290 = &v143 - v289;
  v395 = &v143 - v289;
  v292 = type metadata accessor for DialogServiceButton();
  v293 = (*(*(v292 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = __chkstk_darwin(v291);
  v294 = &v143 - v293;
  v394 = &v143 - v293;
  v295 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10);
  v296 = &v143 - v295;
  v393 = &v143 - v295;
  v302 = sub_C3234();
  v300 = *(v302 - 8);
  v301 = v302 - 8;
  v298 = (*(v300 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = __chkstk_darwin(v303);
  v13 = &v143 - v298;
  v299 = &v143 - v298;
  v391 = v12;
  v392 = v14;
  v389 = v15;
  v390 = v16;
  v387 = v17;
  v388 = v18;
  v386 = v19;
  v385 = v20;
  v21 = sub_BF704();
  (*(v300 + 16))(v13, v21, v302);

  v326 = 32;
  v327 = 7;
  v22 = swift_allocObject();
  v23 = v304;
  v311 = v22;
  *(v22 + 16) = v303;
  *(v22 + 24) = v23;

  v24 = swift_allocObject();
  v25 = v306;
  v315 = v24;
  *(v24 + 16) = v305;
  *(v24 + 24) = v25;

  v26 = swift_allocObject();
  v27 = v308;
  v28 = v26;
  v29 = v309;
  v320 = v28;
  *(v28 + 16) = v307;
  *(v28 + 24) = v27;
  _objc_retain(v29);
  v328 = swift_allocObject();
  *(v328 + 16) = v309;
  v358 = sub_C3224();
  v359 = sub_C3874();
  v323 = 17;
  v332 = swift_allocObject();
  v318 = 32;
  *(v332 + 16) = 32;
  v334 = swift_allocObject();
  v324 = 8;
  *(v334 + 16) = 8;
  v30 = swift_allocObject();
  v31 = v311;
  v313 = v30;
  *(v30 + 16) = v310;
  *(v30 + 24) = v31;
  v32 = swift_allocObject();
  v33 = v313;
  v336 = v32;
  *(v32 + 16) = v312;
  *(v32 + 24) = v33;
  v338 = swift_allocObject();
  *(v338 + 16) = v318;
  v340 = swift_allocObject();
  *(v340 + 16) = v324;
  v34 = swift_allocObject();
  v35 = v315;
  v317 = v34;
  *(v34 + 16) = v314;
  *(v34 + 24) = v35;
  v36 = swift_allocObject();
  v37 = v317;
  v342 = v36;
  *(v36 + 16) = v316;
  *(v36 + 24) = v37;
  v344 = swift_allocObject();
  *(v344 + 16) = v318;
  v346 = swift_allocObject();
  *(v346 + 16) = v324;
  v38 = swift_allocObject();
  v39 = v320;
  v322 = v38;
  *(v38 + 16) = v319;
  *(v38 + 24) = v39;
  v40 = swift_allocObject();
  v41 = v322;
  v348 = v40;
  *(v40 + 16) = v321;
  *(v40 + 24) = v41;
  v350 = swift_allocObject();
  *(v350 + 16) = 64;
  v352 = swift_allocObject();
  *(v352 + 16) = v324;
  v42 = swift_allocObject();
  v43 = v328;
  v330 = v42;
  *(v42 + 16) = v325;
  *(v42 + 24) = v43;
  v44 = swift_allocObject();
  v45 = v330;
  v355 = v44;
  *(v44 + 16) = v329;
  *(v44 + 24) = v45;
  v357 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v353 = sub_C3C64();
  v356 = v46;

  v47 = v332;
  v48 = v356;
  *v356 = v331;
  v48[1] = v47;

  v49 = v334;
  v50 = v356;
  v356[2] = v333;
  v50[3] = v49;

  v51 = v336;
  v52 = v356;
  v356[4] = v335;
  v52[5] = v51;

  v53 = v338;
  v54 = v356;
  v356[6] = v337;
  v54[7] = v53;

  v55 = v340;
  v56 = v356;
  v356[8] = v339;
  v56[9] = v55;

  v57 = v342;
  v58 = v356;
  v356[10] = v341;
  v58[11] = v57;

  v59 = v344;
  v60 = v356;
  v356[12] = v343;
  v60[13] = v59;

  v61 = v346;
  v62 = v356;
  v356[14] = v345;
  v62[15] = v61;

  v63 = v348;
  v64 = v356;
  v356[16] = v347;
  v64[17] = v63;

  v65 = v350;
  v66 = v356;
  v356[18] = v349;
  v66[19] = v65;

  v67 = v352;
  v68 = v356;
  v356[20] = v351;
  v68[21] = v67;

  v69 = v355;
  v70 = v356;
  v356[22] = v354;
  v70[23] = v69;
  sub_4E48();

  if (os_log_type_enabled(v358, v359))
  {
    v71 = v281;
    v273 = sub_C3954();
    v272 = sub_21E8(&qword_EE828, &qword_C5100);
    v274 = sub_5DD4(1);
    v275 = sub_5DD4(3);
    v276 = &v366;
    v366 = v273;
    v277 = &v397;
    v397 = v274;
    v278 = &v396;
    v396 = v275;
    sub_5E28(2, &v366);
    sub_5E28(4, v276);
    v364 = v331;
    v365 = v332;
    sub_5E3C(&v364, v276, v277, v278);
    v279 = v71;
    if (v71)
    {

      __break(1u);
    }

    else
    {
      v364 = v333;
      v365 = v334;
      sub_5E3C(&v364, &v366, &v397, &v396);
      v271 = 0;
      v364 = v335;
      v365 = v336;
      sub_5E3C(&v364, &v366, &v397, &v396);
      v270 = 0;
      v364 = v337;
      v365 = v338;
      sub_5E3C(&v364, &v366, &v397, &v396);
      v269 = 0;
      v364 = v339;
      v365 = v340;
      sub_5E3C(&v364, &v366, &v397, &v396);
      v268 = 0;
      v364 = v341;
      v365 = v342;
      sub_5E3C(&v364, &v366, &v397, &v396);
      v267 = 0;
      v364 = v343;
      v365 = v344;
      sub_5E3C(&v364, &v366, &v397, &v396);
      v266 = 0;
      v364 = v345;
      v365 = v346;
      sub_5E3C(&v364, &v366, &v397, &v396);
      v265 = 0;
      v364 = v347;
      v365 = v348;
      sub_5E3C(&v364, &v366, &v397, &v396);
      v264 = 0;
      v364 = v349;
      v365 = v350;
      sub_5E3C(&v364, &v366, &v397, &v396);
      v263 = 0;
      v364 = v351;
      v365 = v352;
      sub_5E3C(&v364, &v366, &v397, &v396);
      v262 = 0;
      v364 = v354;
      v365 = v355;
      sub_5E3C(&v364, &v366, &v397, &v396);
      _os_log_impl(&dword_0, v358, v359, "Computing value: %s %s prop: %s params: %@", v273, 0x2Au);
      sub_5E88(v274);
      sub_5E88(v275);
      sub_C3934();
    }
  }

  else
  {
  }

  _objc_release(v358);
  (*(v300 + 8))(v299, v302);
  sub_C3564("canPlayAppleMusic", 0x11uLL, 1);
  v260 = v72;
  v261 = sub_C3574();

  if (v261)
  {
    v258 = *sub_4BBE4();

    v259 = sub_4BC74();

    result = v259;
    v74 = v280;
    v280[3] = &type metadata for Bool;
    *v74 = result & 1;
  }

  else
  {
    sub_C3564("buttonLabel", 0xBuLL, 1);
    v256 = v75;
    v257 = sub_C3574();

    if (v257)
    {
      sub_77EC8(v296);
      v254 = *v296;
      v255 = *(v296 + 1);

      if (v255)
      {
        v252 = v254;
        v253 = v255;
        v76 = v280;
        v77 = v254;
        v78 = v255;
        v280[3] = &type metadata for String;
        *v76 = v77;
        v76[1] = v78;
      }

      else
      {
        v79 = v280;
        *v280 = 0;
        v79[1] = 0;
        v79[2] = 0;
        v79[3] = 0;
      }

      return sub_1A104(v296);
    }

    else
    {
      sub_C3564("buttonAction", 0xCuLL, 1);
      v250 = v80;
      v251 = sub_C3574();

      if (v251)
      {
        sub_77EC8(v294);
        sub_1D97C(&v294[*(v292 + 20)], v285);
        if ((*(v287 + 48))(v285, 1, v286) == 1)
        {
          sub_1DAA4(v285);
          v246 = *v294;
          v247 = *(v294 + 1);

          v404[0] = v246;
          v404[1] = v247;
          v245 = v247 != 0;
          v244 = v245;
          sub_8224(v404);
          if (v244)
          {
            v231 = &v403;
            v232 = 32;
            v233 = 0;
            swift_beginAccess();
            v238 = v297[4];
            v236 = v297[5];
            v239 = v297[6];
            v240 = v297[8];
            v241 = v297[10];

            swift_endAccess();

            v234 = v297 + 12;
            v235 = &v401;
            swift_beginAccess();
            v237 = v402;
            sub_24F4(v234, v402);
            swift_endAccess();
            v242 = sub_52CC4(v236, v239, v237);
            sub_2560(v237);

            v372 = v242;
            v243 = [v242 dictionary];
            if (v243)
            {
              v230 = v243;
              v228 = v243;
              v371 = v243;
              v225 = 0;
              v400 = 0;
              v226 = objc_opt_self();
              _objc_retain(v228);
              v370 = v400;
              v229 = [v226 dataWithPropertyList:v228 format:200 options:v225 error:&v370];
              v227 = v370;
              _objc_retain(v370);
              v85 = v400;
              v400 = v227;
              _objc_release(v85);
              swift_unknownObjectRelease();
              if (v229)
              {
                v224 = v229;
                v221 = v229;
                v222 = sub_C1AF4();
                v223 = v86;
                v398 = v222;
                v399 = v86;
                _objc_release(v221);
                v87 = sub_77E98();
                v88 = sub_C1AE4(v87);
                v89 = v280;
                v90 = v88;
                v91 = v222;
                v93 = v92;
                v94 = v223;
                v280[3] = &type metadata for String;
                *v89 = v90;
                v89[1] = v93;
                sub_4AD20(v91, v94);
              }

              else
              {
                v143 = v400;
                v144 = sub_C1A44();
                _objc_release(v143);
                swift_willThrow();
                swift_errorRetain();
                v369 = v144;
                v140 = sub_C3564("", 0, 1);
                v141 = v280;
                v280[3] = &type metadata for String;
                *v141 = v140;
                v141[1] = v142;
              }

              _objc_release(v228);
              _objc_release(v242);
              return sub_1A104(v294);
            }

            else
            {
              v95 = sub_C3564("", 0, 1);
              v96 = v280;
              v97 = v95;
              v98 = v242;
              v280[3] = &type metadata for String;
              *v96 = v97;
              v96[1] = v99;
              _objc_release(v98);
              return sub_1A104(v294);
            }
          }

          else
          {
            v100 = sub_C3564("", 0, 1);
            v101 = v280;
            v102 = v100;
            v103 = v294;
            v280[3] = &type metadata for String;
            *v101 = v102;
            v101[1] = v104;
            return sub_1A104(v103);
          }
        }

        else
        {
          (*(v287 + 32))(v290, v285, v286);
          (*(v287 + 16))(v283, v290, v286);
          (*(v287 + 56))(v283, 0, 1, v286);
          v249 = sub_786A0(v283);
          v248 = v81;
          sub_1DAA4(v283);
          v367 = v249;
          v368 = v248;

          v82 = v248;
          v83 = v249;
          v84 = v280;
          v280[3] = &type metadata for String;
          *v84 = v83;
          v84[1] = v82;

          (*(v287 + 8))(v290, v286);
          return sub_1A104(v294);
        }
      }

      else
      {
        sub_C3564("rockImage", 9uLL, 1);
        v219 = v105;
        v220 = sub_C3574();

        if (v220)
        {
          type metadata accessor for ImageLoader();
          v216 = sub_4BBA8();
          v106 = sub_C3564("rock", 4uLL, 1);
          v215 = v107;
          v217 = sub_C1424(v106, v107);
          v218 = v108;

          result = v217;
          v109 = v218;
          v110 = v280;
          v280[3] = &type metadata for String;
          *v110 = result;
          v110[1] = v109;
        }

        else
        {
          sub_C3564("paperImage", 0xAuLL, 1);
          v213 = v111;
          v214 = sub_C3574();

          if (v214)
          {
            type metadata accessor for ImageLoader();
            v210 = sub_4BBA8();
            v112 = sub_C3564("paper", 5uLL, 1);
            v209 = v113;
            v211 = sub_C1424(v112, v113);
            v212 = v114;

            result = v211;
            v115 = v212;
            v116 = v280;
            v280[3] = &type metadata for String;
            *v116 = result;
            v116[1] = v115;
          }

          else
          {
            sub_C3564("scissorsImage", 0xDuLL, 1);
            v207 = v117;
            v208 = sub_C3574();

            if (v208)
            {
              type metadata accessor for ImageLoader();
              v204 = sub_4BBA8();
              v118 = sub_C3564("scissors", 8uLL, 1);
              v203 = v119;
              v205 = sub_C1424(v118, v119);
              v206 = v120;

              result = v205;
              v121 = v206;
              v122 = v280;
              v280[3] = &type metadata for String;
              *v122 = result;
              v122[1] = v121;
            }

            else
            {
              sub_C3564("userChoiceImage", 0xFuLL, 1);
              v201 = v123;
              v202 = sub_C3574();

              if (v202)
              {
                sub_C3564("userChoice", 0xAuLL, 1);
                v198 = v124;
                v199 = sub_C3484();

                v200 = [v309 valueForKey:v199];
                _objc_release(v199);
                if (v200)
                {
                  v197 = v200;
                  v196 = v200;
                  v195 = &v405;
                  sub_C3A14();
                  sub_49814(v195, &v414);
                  swift_unknownObjectRelease();
                }

                else
                {
                  v414 = 0uLL;
                  v415 = 0uLL;
                }

                v416[0] = v414;
                v416[1] = v415;
                if (*(&v415 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    v193 = v373;
                    v194 = v374;
                  }

                  else
                  {
                    v193 = 0;
                    v194 = 0;
                  }

                  v191 = v193;
                  v192 = v194;
                }

                else
                {
                  sub_1FA80(v416);
                  v191 = 0;
                  v192 = 0;
                }

                v412 = v191;
                v413 = v192;
                if (v192)
                {
                  v360 = v412;
                  v361 = v413;
                }

                else
                {
                  v360 = sub_C3564("", 0, 1);
                  v361 = v125;
                  if (v413)
                  {
                    sub_8224(&v412);
                  }
                }

                v186 = v360;
                v187 = v361;
                v377 = v360;
                v378 = v361;
                sub_C3564("userWinsInARow", 0xEuLL, 1);
                v188 = v126;
                v189 = sub_C3484();

                v190 = [v309 valueForKey:v189];
                _objc_release(v189);
                if (v190)
                {
                  v185 = v190;
                  v184 = v190;
                  v183 = &v406;
                  sub_C3A14();
                  sub_49814(v183, &v409);
                  swift_unknownObjectRelease();
                }

                else
                {
                  v409 = 0uLL;
                  v410 = 0uLL;
                }

                v411[0] = v409;
                v411[1] = v410;
                if (*(&v410 + 1))
                {
                  if (swift_dynamicCast())
                  {
                    v181 = v375;
                    v182 = 0;
                  }

                  else
                  {
                    v181 = 0;
                    v182 = 1;
                  }

                  v179 = v181;
                  v180 = v182;
                }

                else
                {
                  sub_1FA80(v411);
                  v179 = 0;
                  v180 = 1;
                }

                v407 = v179;
                v408 = v180 & 1;
                if (v180)
                {
                  v178 = 0;
                }

                else
                {
                  v178 = v407;
                }

                v174 = v178 > 0;
                v376 = v178 > 0;
                type metadata accessor for ImageLoader();
                v175 = sub_4BBA8();
                v176 = sub_C1550(v186, v187, v174);
                v177 = v127;

                v128 = v176;
                v129 = v177;
                v130 = v280;
                v280[3] = &type metadata for String;
                *v130 = v128;
                v130[1] = v129;
              }

              else
              {
                sub_C3564("siriChoiceImage", 0xFuLL, 1);
                v172 = v131;
                v173 = sub_C3574();

                result = v173;
                if (v173)
                {
                  sub_C3564("siriChoice", 0xAuLL, 1);
                  v169 = v132;
                  v170 = sub_C3484();

                  v171 = [v309 valueForKey:v170];
                  _objc_release(v170);
                  if (v171)
                  {
                    v168 = v171;
                    v167 = v171;
                    v166 = &v417;
                    sub_C3A14();
                    sub_49814(v166, &v426);
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v426 = 0uLL;
                    v427 = 0uLL;
                  }

                  v428[0] = v426;
                  v428[1] = v427;
                  if (*(&v427 + 1))
                  {
                    if (swift_dynamicCast())
                    {
                      v164 = v379;
                      v165 = v380;
                    }

                    else
                    {
                      v164 = 0;
                      v165 = 0;
                    }

                    v162 = v164;
                    v163 = v165;
                  }

                  else
                  {
                    sub_1FA80(v428);
                    v162 = 0;
                    v163 = 0;
                  }

                  v424 = v162;
                  v425 = v163;
                  if (v163)
                  {
                    v362 = v424;
                    v363 = v425;
                  }

                  else
                  {
                    v362 = sub_C3564("", 0, 1);
                    v363 = v133;
                    if (v425)
                    {
                      sub_8224(&v424);
                    }
                  }

                  v157 = v362;
                  v158 = v363;
                  v383 = v362;
                  v384 = v363;
                  sub_C3564("siriWinsInARow", 0xEuLL, 1);
                  v159 = v134;
                  v160 = sub_C3484();

                  v161 = [v309 valueForKey:v160];
                  _objc_release(v160);
                  if (v161)
                  {
                    v156 = v161;
                    v155 = v161;
                    v154 = &v418;
                    sub_C3A14();
                    sub_49814(v154, &v421);
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v421 = 0uLL;
                    v422 = 0uLL;
                  }

                  v423[0] = v421;
                  v423[1] = v422;
                  if (*(&v422 + 1))
                  {
                    if (swift_dynamicCast())
                    {
                      v152 = v381;
                      v153 = 0;
                    }

                    else
                    {
                      v152 = 0;
                      v153 = 1;
                    }

                    v150 = v152;
                    v151 = v153;
                  }

                  else
                  {
                    sub_1FA80(v423);
                    v150 = 0;
                    v151 = 1;
                  }

                  v419 = v150;
                  v420 = v151 & 1;
                  if (v151)
                  {
                    v149 = 0;
                  }

                  else
                  {
                    v149 = v419;
                  }

                  v145 = v149 > 0;
                  v382 = v149 > 0;
                  type metadata accessor for ImageLoader();
                  v146 = sub_4BBA8();
                  v147 = sub_C1550(v157, v158, v145);
                  v148 = v135;

                  v136 = v147;
                  v137 = v148;
                  v138 = v280;
                  v280[3] = &type metadata for String;
                  *v138 = v136;
                  v138[1] = v137;
                }

                else
                {
                  v139 = v280;
                  *v280 = 0;
                  v139[1] = 0;
                  v139[2] = 0;
                  v139[3] = 0;
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

uint64_t sub_77D88()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_77DC8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_77E08()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_77E98()
{
  sub_78DF0(0);

  return 0;
}

uint64_t sub_77EC8@<X0>(char *a1@<X8>)
{
  v59 = a1;
  v61 = "Fatal error";
  v62 = "Range requires lowerBound <= upperBound";
  v63 = "Swift/Range.swift";
  v108 = 0;
  v107 = 0;
  v106 = 0;
  v98 = 0;
  v92 = 0;
  v93 = 0;
  v84 = 0;
  v85 = 0;
  v2 = sub_21E8(&qword_EFFB0, &qword_C6EE8);
  v64 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v65 = (&v13 - v64);
  v66 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v64);
  v67 = &v13 - v66;
  v68 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(&v13 - v66);
  v77 = &v13 - v68;
  v78 = type metadata accessor for DialogServiceButton();
  v75 = *(v78 - 8);
  v76 = v78 - 8;
  v69 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = __chkstk_darwin(v78);
  v70 = &v13 - v69;
  v108 = &v13 - v69;
  v71 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v72 = &v13 - v71;
  v107 = &v13 - v71;
  v106 = v1;
  v73 = (v1 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16ParameterService_button);
  v74 = &v105;
  swift_beginAccess();
  sub_75200(v73, v77);
  swift_endAccess();
  if ((*(v75 + 48))(v77, 1, v78) == 1)
  {
    sub_759CC(v77);
    v44 = v60 + 3;
    v45 = &v100;
    v49 = 32;
    v50 = 0;
    swift_beginAccess();
    v48 = v101;
    v52 = 64;
    memcpy(v101, v44, sizeof(v101));
    sub_1D2DC(v101, v99);
    swift_endAccess();
    v46 = v101[2];
    v47 = v101[3];

    v58 = sub_C3524();
    v98 = v58;

    sub_1CFBC(v48);
    v51 = v60 + 3;
    v53 = &v97;
    swift_beginAccess();
    v56 = __dst;
    memcpy(__dst, v51, v52);
    sub_1D2DC(v56, v96);
    swift_endAccess();
    v54 = v103;
    v55 = v104;

    v57 = sub_C35A4();

    sub_1CFBC(v56);
    if (v57 >> 14 < v58 >> 14)
    {
      sub_C3B84();
      __break(1u);
    }

    v92 = v58;
    v93 = v57;
    v14 = v60 + 3;
    v15 = &v91;
    v33 = 32;
    v39 = 0;
    swift_beginAccess();
    v24 = v94;
    v26 = 64;
    memcpy(v94, v14, sizeof(v94));
    sub_1D2DC(v94, v90);
    swift_endAccess();
    v16 = v94[2];
    v17 = v94[3];

    v23 = v89;
    v89[0] = v16;
    v89[1] = v17;
    v38 = 1;
    v8 = sub_C3564("dal", 3uLL, 1);
    v22 = v88;
    v88[0] = v8;
    v88[1] = v9;
    v10 = sub_C3564("button", 6uLL, v38 & 1);
    v21 = v87;
    v87[0] = v10;
    v87[1] = v11;
    v18 = 0;
    type metadata accessor for CompareOptions();
    v19 = sub_C3C64();
    sub_8980();
    sub_C3A24();
    v20 = v86;
    sub_B2E8();
    v37 = 0;
    v30 = sub_C39C4();
    v43 = v12;
    sub_8224(v21);
    sub_8224(v22);
    sub_8224(v23);
    sub_1CFBC(v24);
    v84 = v30;
    v85 = v43;
    v25 = v60 + 3;
    v27 = &v83;
    swift_beginAccess();
    v31 = v95;
    memcpy(v95, v25, v26);
    sub_1D2DC(v31, v82);
    swift_endAccess();
    v28 = v95[0];
    v29 = v95[1];

    v42 = v109;
    sub_2E6E0(v28, v29, v30, v43, v109);
    sub_1CFBC(v31);
    v32 = &v81;
    swift_beginAccess();
    v36 = v60[2];

    swift_endAccess();
    v34 = &v80;
    swift_beginAccess();
    v35 = v60[11];
    _objc_retain(v35);
    swift_endAccess();
    sub_34638(v42, v35, v70);
    _objc_release(v35);

    sub_791FC(v70, v67);
    (*(v75 + 56))(v67, v37, v38, v78);
    sub_75200(v67, v65);
    v40 = (v60 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16ParameterService_button);
    v41 = &v79;
    swift_beginAccess();
    sub_7547C(v65, v40);
    swift_endAccess();
    sub_759CC(v67);
    sub_791FC(v70, v59);
    sub_1A104(v70);
    sub_1CFBC(v42);
  }

  else
  {
    sub_3F708(v77, v72);
    sub_791FC(v72, v59);
    return sub_1A104(v72);
  }
}

uint64_t sub_786A0(const void *a1)
{
  v47 = a1;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  v54 = 0;
  v60 = 0;
  v61 = 0;
  v49 = 0;
  v41 = sub_C1B94();
  v42 = *(v41 - 8);
  v43 = v41 - 8;
  v44 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v41);
  v45 = &v13 - v44;
  v46 = (*(*(sub_21E8(&qword_EF008, &unk_C5AD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v49);
  v50 = &v13 - v46;
  v59 = v2;
  v58 = v1;
  sub_1E084();
  v48 = sub_EE34();
  v57 = v48;
  sub_1D97C(v47, v50);
  v51 = sub_C1AC4();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v3 = (*(v52 + 48))(v50, 1);
  if (v3 == 1)
  {
    v40 = 0;
  }

  else
  {
    sub_C1A74((v3 - 1));
    v39 = v4;
    (*(v52 + 8))(v50, v51);
    v40 = v39;
  }

  v35 = v40;
  [v48 setPunchOutUri:?];
  _objc_release(v35);
  _objc_retain(v48);
  sub_C1B84();
  sub_C1B74();
  v36 = v5;
  v37 = sub_C3484();
  (*(v42 + 8))(v45, v41);

  [v48 setAceId:v37];
  _objc_release(v37);
  _objc_release(v48);
  v38 = [v48 dictionary];
  if (v38)
  {
    v34 = v38;
    v32 = v38;
    v56 = v38;
    v29 = 0;
    v62 = 0;
    v30 = objc_opt_self();
    _objc_retain(v32);
    v55 = v62;
    v33 = [v30 dataWithPropertyList:v32 format:200 options:v29 error:&v55];
    v31 = v55;
    _objc_retain(v55);
    v6 = v62;
    v62 = v31;
    _objc_release(v6);
    swift_unknownObjectRelease();
    if (v33)
    {
      v28 = v33;
      v21 = v33;
      v22 = sub_C1AF4();
      v23 = v7;
      v60 = v22;
      v61 = v7;
      _objc_release(v21);
      v8 = sub_77E98();
      v24 = sub_C1AE4(v8);
      v25 = v9;
      sub_4AD20(v22, v23);
      _objc_release(v32);
      _objc_release(v48);
      v26 = v24;
      v27 = v25;
    }

    else
    {
      v14 = v62;
      v15 = sub_C1A44();
      _objc_release(v14);
      swift_willThrow();
      swift_errorRetain();
      v54 = v15;
      v16 = sub_C3564("", 0, 1);
      v17 = v12;

      _objc_release(v32);
      _objc_release(v48);
      v26 = v16;
      v27 = v17;
    }
  }

  else
  {
    v19 = sub_C3564("", 0, 1);
    v20 = v10;
    _objc_release(v48);
    v26 = v19;
    v27 = v20;
  }

  v18 = v27;
  return v26;
}

uint64_t sub_78D00()
{
  v1 = *(v0 + 16);

  sub_1CFBC((v0 + 24));
  _objc_release(*(v0 + 88));
  sub_2560((v0 + 96));
  sub_759CC(v0 + OBJC_IVAR____TtC36SocialConversationFlowDelegatePlugin16ParameterService_button);
  return v3;
}

uint64_t sub_78D68()
{
  v0 = *sub_78D00();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return swift_deallocClassInstance();
}

unint64_t sub_78DF0(unint64_t result)
{
  v3 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return &_swiftEmptyArrayStorage;
    }

    type metadata accessor for Base64EncodingOptions();
    v1 = sub_C3704();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t sub_78EF4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_78F34()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_78FCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7900C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_790A4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_790E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7917C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_791BC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

char *sub_791FC(char *a1, char *a2)
{
  *a2 = *a1;
  v8 = *(a1 + 1);

  *(a2 + 1) = v8;
  v9 = type metadata accessor for DialogServiceButton();
  v10 = *(v9 + 20);
  v12 = sub_C1AC4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(&a1[v10], 1))
  {
    v2 = sub_21E8(&qword_EF008, &unk_C5AD0);
    memcpy(&a2[v10], &a1[v10], *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v13 + 16))();
    (*(v13 + 56))(&a2[v10], 0, 1, v12);
  }

  v5 = &a2[*(v9 + 24)];
  v3 = &a1[*(v9 + 24)];
  *v5 = *v3;
  v6 = *(v3 + 1);

  result = a2;
  *(v5 + 1) = v6;
  return result;
}

uint64_t type metadata accessor for ParameterService()
{
  v1 = qword_EFFE0;
  if (!qword_EFFE0)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_79460()
{
  v2 = sub_7956C();
  updated = v2;
  if (v0 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

uint64_t sub_7956C()
{
  v4 = qword_EFFF0;
  if (!qword_EFFF0)
  {
    type metadata accessor for DialogServiceButton();
    v3 = sub_C3964();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_EFFF0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_79680()
{
  result = sub_C3564("buttons", 7uLL, 1);
  qword_F1558 = result;
  qword_F1560 = v1;
  return result;
}

uint64_t *sub_796C4()
{
  if (qword_EE780 != -1)
  {
    swift_once();
  }

  return &qword_F1558;
}

uint64_t sub_79724()
{
  v0 = sub_796C4();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_79760()
{
  result = sub_C3564("condition", 9uLL, 1);
  qword_F1568 = result;
  qword_F1570 = v1;
  return result;
}

uint64_t *sub_797A4()
{
  if (qword_EE788 != -1)
  {
    swift_once();
  }

  return &qword_F1568;
}

uint64_t sub_79804()
{
  v0 = sub_797A4();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_79840()
{
  result = sub_C3564("label", 5uLL, 1);
  qword_F1578 = result;
  qword_F1580 = v1;
  return result;
}

uint64_t *sub_79884()
{
  if (qword_EE790 != -1)
  {
    swift_once();
  }

  return &qword_F1578;
}

uint64_t sub_798E4()
{
  v0 = sub_79884();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_79920()
{
  result = sub_C3564("intentName", 0xAuLL, 1);
  qword_F1588 = result;
  qword_F1590 = v1;
  return result;
}

uint64_t *sub_79964()
{
  if (qword_EE798 != -1)
  {
    swift_once();
  }

  return &qword_F1588;
}

uint64_t sub_799C4()
{
  v0 = sub_79964();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_79A00()
{
  result = sub_C3564("dialog", 6uLL, 1);
  qword_F1598 = result;
  qword_F15A0 = v1;
  return result;
}

uint64_t *sub_79A44()
{
  if (qword_EE7A0 != -1)
  {
    swift_once();
  }

  return &qword_F1598;
}

uint64_t sub_79AA4()
{
  v0 = sub_79A44();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_79AE0()
{
  result = sub_C3564("com.apple.siri.directInvocation.socialConversation", 0x32uLL, 1);
  qword_F15A8 = result;
  qword_F15B0 = v1;
  return result;
}

uint64_t *sub_79B24()
{
  if (qword_EE7A8 != -1)
  {
    swift_once();
  }

  return &qword_F15A8;
}

uint64_t sub_79B84()
{
  v0 = sub_79B24();
  v2 = *v0;
  v3 = v0[1];

  return v2;
}

uint64_t sub_79BC0()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t sub_79C10(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;

  swift_endAccess();
}

uint64_t sub_79C70()
{
  swift_beginAccess();
  v2 = *(v0 + 24);

  swift_endAccess();
  return v2;
}

uint64_t sub_79CC0(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;

  swift_endAccess();
}

uint64_t sub_79D20()
{
  swift_beginAccess();
  v2 = *(v0 + 32);

  swift_endAccess();
  return v2;
}

uint64_t sub_79D70(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 32);
  *(v1 + 32) = a1;

  swift_endAccess();
}

uint64_t sub_79E2C()
{
  swift_beginAccess();
  v2 = *(v0 + 40);

  swift_endAccess();
  return v2;
}

uint64_t sub_79E7C(uint64_t a1)
{

  swift_beginAccess();
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;

  swift_endAccess();
}

uint64_t sub_79F38()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  swift_endAccess();
  return v2;
}

uint64_t sub_79F84(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
  return swift_endAccess();
}

uint64_t sub_7A02C()
{
  swift_beginAccess();
  v2 = *(v0 + 56);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_7A07C(char a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
  return swift_endAccess();
}

uint64_t sub_7A124(uint64_t a1)
{
  v92 = a1;
  v91 = 0;
  v143 = 0;
  v142 = 0;
  v90 = 0;
  v137[1] = 0;
  v137[0] = 0;
  v130 = 0;
  v123 = 0;
  v122 = 0;
  v115 = 0;
  v114 = 0;
  v107 = 0;
  v106 = 0;
  v93 = sub_C3234();
  v94 = *(v93 - 8);
  v95 = v94;
  v2 = *(v94 + 64);
  v3 = __chkstk_darwin(v92);
  v96 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = v3;
  v142 = v1;
  v97 = &v141;
  swift_beginAccess();
  v98 = *(v1 + 56);
  swift_endAccess();
  if (v98)
  {
    v17 = v96;
    v18 = sub_BF704();
    (*(v95 + 16))(v17, v18, v93);
    v42 = sub_C3224();
    v39 = v42;
    v41 = sub_C3874();
    v40 = v41;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v43 = sub_C3C64();
    if (os_log_type_enabled(v42, v41))
    {
      v19 = v90;
      v30 = sub_C3954();
      v26 = v30;
      v27 = sub_21E8(&qword_EE828, &qword_C5100);
      v28 = 0;
      v31 = sub_5DD4(0);
      v29 = v31;
      v32 = sub_5DD4(v28);
      v140 = v30;
      v139 = v31;
      v138 = v32;
      v33 = 0;
      v34 = &v140;
      sub_5E28(0, &v140);
      sub_5E28(v33, v34);
      v137[3] = v43;
      v35 = &v22;
      __chkstk_darwin(&v22);
      v36 = &v22 - 6;
      *(&v22 - 4) = v20;
      *(&v22 - 3) = &v139;
      *(&v22 - 2) = &v138;
      v37 = sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();
      v38 = v19;
      if (v19)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v39, v40, "Attempting to reinitialize PlayWithMeData!", v26, 2u);
        v24 = 0;
        sub_5E88(v29);
        sub_5E88(v32);
        sub_C3934();

        v25 = v38;
      }
    }

    else
    {

      v25 = v90;
    }

    v23 = v25;

    (*(v95 + 8))(v96, v93);
    return v23;
  }

  else
  {

    v136 = v92;
    v87 = sub_21E8(&qword_EFA20, qword_C65A0);
    sub_6AE48();
    sub_C3824();
    for (i = v90; ; i = v54)
    {
      v85 = i;
      sub_21E8(&qword_EFB70, &qword_C6FE0);
      sub_C3B44();
      v86 = v135;
      if (!v135)
      {
        break;
      }

      v84 = v86;
      v82 = v86;
      v130 = v86;
      v5 = sub_797A4();
      v80 = *v5;
      v81 = v5[1];

      v126[0] = v80;
      v126[1] = v81;
      v83 = v126;
      sub_C33E4();
      sub_8224(v83);
      if (v127[3])
      {
        if (swift_dynamicCast())
        {
          v78 = v99;
          v79 = v100;
        }

        else
        {
          v78 = 0;
          v79 = 0;
        }

        v76 = v78;
        v77 = v79;
      }

      else
      {
        sub_1FA80(v127);
        v76 = 0;
        v77 = 0;
      }

      v124 = v76;
      v125 = v77;
      if (v77)
      {
        v128 = v124;
        v129 = v125;
      }

      else
      {
        v128 = sub_C3564("", 0, 1);
        v129 = v6;
        if (v125)
        {
          sub_8224(&v124);
        }
      }

      v71 = v128;
      v72 = v129;
      v122 = v128;
      v123 = v129;
      v7 = sub_79884();
      v73 = *v7;
      v74 = v7[1];

      v118[0] = v73;
      v118[1] = v74;
      v75 = v118;
      sub_C33E4();
      sub_8224(v75);
      if (v119[3])
      {
        if (swift_dynamicCast())
        {
          v69 = v101;
          v70 = v102;
        }

        else
        {
          v69 = 0;
          v70 = 0;
        }

        v67 = v69;
        v68 = v70;
      }

      else
      {
        sub_1FA80(v119);
        v67 = 0;
        v68 = 0;
      }

      v116 = v67;
      v117 = v68;
      if (v68)
      {
        v120 = v116;
        v121 = v117;
      }

      else
      {
        v120 = sub_C3564("", 0, 1);
        v121 = v9;
        if (v117)
        {
          sub_8224(&v116);
        }
      }

      v62 = v120;
      v63 = v121;
      v114 = v120;
      v115 = v121;
      v10 = sub_79964();
      v64 = *v10;
      v65 = v10[1];

      v110[0] = v64;
      v110[1] = v65;
      v66 = v110;
      sub_C33E4();
      sub_8224(v66);
      if (v111[3])
      {
        if (swift_dynamicCast())
        {
          v60 = v103;
          v61 = v104;
        }

        else
        {
          v60 = 0;
          v61 = 0;
        }

        v58 = v60;
        v59 = v61;
      }

      else
      {
        sub_1FA80(v111);
        v58 = 0;
        v59 = 0;
      }

      v108 = v58;
      v109 = v59;
      if (v59)
      {
        v112 = v108;
        v113 = v109;
      }

      else
      {
        v112 = sub_C3564("", 0, 1);
        v113 = v12;
        if (v109)
        {
          sub_8224(&v108);
        }
      }

      v56 = v112;
      v57 = v113;
      v106 = v112;
      v107 = v113;
      if (sub_7BB28(v71, v72))
      {

        v105[3] = nullsub_1(v62);
        v105[4] = v13;
        v105[5] = v14;
        v105[6] = v15;
        v55 = v105;
        swift_beginAccess();
        sub_21E8(&qword_F0120, &qword_C6FE8);
        sub_C3724();
        swift_endAccess();
      }

      v54 = v85;
    }

    sub_1D7C8(v137);
    v44 = &v134;
    v51 = 0;
    swift_beginAccess();
    v45 = *(v89 + 16);

    swift_endAccess();
    v133 = v45;
    v46 = sub_21E8(&qword_F0120, &qword_C6FE8);
    sub_7E570();
    v47 = &v133;
    v49 = sub_C3674();
    sub_1D7C8(v47);

    v50 = 33;
    v48 = &v132;
    swift_beginAccess();
    v16 = *(v89 + 24);
    *(v89 + 24) = v49;

    swift_endAccess();

    v52 = &v131;
    swift_beginAccess();
    *(v89 + 56) = 1;
    swift_endAccess();
    return v85;
  }
}

uint64_t sub_7AC08(uint64_t a1)
{
  v110 = a1;
  v109 = 0;
  v182 = 0;
  v181 = 0;
  v108 = 0;
  v176[1] = 0;
  v176[0] = 0;
  v173 = 0;
  v166 = 0;
  v165 = 0;
  v154 = 0;
  v153 = 0;
  v148 = 0;
  v147 = 0;
  v146[1] = 0;
  v146[0] = 0;
  v142 = 0;
  v135 = 0;
  v134 = 0;
  v127 = 0;
  v126 = 0;
  v111 = sub_C3234();
  v112 = *(v111 - 8);
  v113 = v112;
  v2 = *(v112 + 64);
  v3 = __chkstk_darwin(v110);
  v114 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = v3;
  v181 = v1;
  v115 = &v180;
  swift_beginAccess();
  v116 = *(v1 + 56);
  swift_endAccess();
  if (v116)
  {
    v21 = v114;
    v22 = sub_BF704();
    (*(v113 + 16))(v21, v22, v111);
    v44 = sub_C3224();
    v41 = v44;
    v43 = sub_C3874();
    v42 = v43;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v45 = sub_C3C64();
    if (os_log_type_enabled(v44, v43))
    {
      v23 = v108;
      v32 = sub_C3954();
      v28 = v32;
      v29 = sub_21E8(&qword_EE828, &qword_C5100);
      v30 = 0;
      v33 = sub_5DD4(0);
      v31 = v33;
      v34 = sub_5DD4(v30);
      v179 = v32;
      v178 = v33;
      v177 = v34;
      v35 = 0;
      v36 = &v179;
      sub_5E28(0, &v179);
      sub_5E28(v35, v36);
      v176[3] = v45;
      v37 = v26;
      __chkstk_darwin(v26);
      v38 = &v26[-6];
      v26[-4] = v24;
      v26[-3] = &v178;
      v26[-2] = &v177;
      v39 = sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();
      v40 = v23;
      if (v23)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v41, v42, "Attempting to reinitialize PlayWithMeData!", v28, 2u);
        v26[1] = 0;
        sub_5E88(v31);
        sub_5E88(v34);
        sub_C3934();

        v27 = v40;
      }
    }

    else
    {

      v27 = v108;
    }

    v26[0] = v27;

    (*(v113 + 8))(v114, v111);
    return v26[0];
  }

  else
  {

    v175 = v110;
    v105 = sub_21E8(&qword_EFA20, qword_C65A0);
    sub_6AE48();
    sub_C3824();
    for (i = v108; ; i = v56)
    {
      v103 = i;
      sub_21E8(&qword_EFB70, &qword_C6FE0);
      sub_C3B44();
      v104 = v174;
      if (!v174)
      {
        break;
      }

      v102 = v104;
      v100 = v104;
      v173 = v104;
      v5 = sub_797A4();
      v98 = *v5;
      v99 = v5[1];

      v169[0] = v98;
      v169[1] = v99;
      v101 = v169;
      sub_C33E4();
      sub_8224(v101);
      if (v170[3])
      {
        if (swift_dynamicCast())
        {
          v96 = v117;
          v97 = v118;
        }

        else
        {
          v96 = 0;
          v97 = 0;
        }

        v94 = v96;
        v95 = v97;
      }

      else
      {
        sub_1FA80(v170);
        v94 = 0;
        v95 = 0;
      }

      v167 = v94;
      v168 = v95;
      if (v95)
      {
        v171 = v167;
        v172 = v168;
      }

      else
      {
        v171 = sub_C3564("", 0, 1);
        v172 = v6;
        if (v168)
        {
          sub_8224(&v167);
        }
      }

      v93 = v172;
      v165 = v171;
      v166 = v172;
      if (sub_7BB28(v171, v172))
      {
        v7 = sub_79A44();
        v90 = *v7;
        v91 = v7[1];

        v157[0] = v90;
        v157[1] = v91;
        v92 = v157;
        sub_C33E4();
        sub_8224(v92);
        if (v158[3])
        {
          if (swift_dynamicCast())
          {
            v88 = v119;
            v89 = v120;
          }

          else
          {
            v88 = 0;
            v89 = 0;
          }

          v86 = v88;
          v87 = v89;
        }

        else
        {
          sub_1FA80(v158);
          v86 = 0;
          v87 = 0;
        }

        v155 = v86;
        v156 = v87;
        if (v87)
        {
          v159 = v155;
          v160 = v156;
        }

        else
        {
          v159 = sub_C3564("", 0, 1);
          v160 = v8;
          if (v156)
          {
            sub_8224(&v155);
          }
        }

        v81 = v159;
        v82 = v160;
        v153 = v159;
        v154 = v160;
        v9 = sub_796C4();
        v83 = *v9;
        v84 = v9[1];

        v150[0] = v83;
        v150[1] = v84;
        v85 = v150;
        sub_C33E4();
        sub_8224(v85);
        if (v151[3])
        {
          sub_21E8(&qword_F0140, &qword_C7000);
          if (swift_dynamicCast())
          {
            v80 = v121;
          }

          else
          {
            v80 = 0;
          }

          v79 = v80;
        }

        else
        {
          sub_1FA80(v151);
          v79 = 0;
        }

        v149 = v79;
        if (v79)
        {
          v152 = v149;
        }

        else
        {
          sub_21E8(&qword_EFB80, &qword_C6840);
          v152 = sub_C3C64();
          if (v149)
          {
            sub_1D7C8(&v149);
          }
        }

        v76 = v152;
        v75 = v152;
        v148 = v152;
        v147 = sub_C3C64();

        v145 = v76;
        v77 = sub_21E8(&qword_F0140, &qword_C7000);
        sub_7E680();
        sub_C3824();
        for (j = v103; ; j = v62)
        {
          v73 = j;
          sub_21E8(&qword_F0150, &unk_C7008);
          sub_C3B44();
          v74 = v144;
          if (!v144)
          {
            break;
          }

          v72 = v74;
          v70 = v74;
          v142 = v74;
          v11 = sub_79884();
          v68 = *v11;
          v69 = v11[1];

          v138[0] = v68;
          v138[1] = v69;
          v71 = v138;
          sub_C33E4();
          sub_8224(v71);
          v136 = v138[2];
          v137 = v139;
          if (v139)
          {
            v140 = v136;
            v141 = v137;
          }

          else
          {
            v140 = sub_C3564("", 0, 1);
            v141 = v12;
            if (v137)
            {
              sub_8224(&v136);
            }
          }

          v63 = v140;
          v64 = v141;
          v134 = v140;
          v135 = v141;
          v13 = sub_79964();
          v65 = *v13;
          v66 = v13[1];

          v130[0] = v65;
          v130[1] = v66;
          v67 = v130;
          sub_C33E4();
          sub_8224(v67);
          v128 = v130[2];
          v129 = v131;
          if (v131)
          {
            v132 = v128;
            v133 = v129;
          }

          else
          {
            v132 = sub_C3564("", 0, 1);
            v133 = v14;
            if (v129)
            {
              sub_8224(&v128);
            }
          }

          v62 = v73;
          v60 = v132;
          v61 = v133;
          v126 = v132;
          v127 = v133;

          v122 = nullsub_1(v63);
          v123 = v15;
          v124 = v16;
          v125 = v17;
          sub_21E8(&qword_F0120, &qword_C6FE8);
          sub_C3724();
        }

        sub_1D7C8(v146);

        v57 = v147;

        v143[3] = nullsub_1(v81);
        v143[4] = v18;
        v143[5] = v19;
        v58 = v143;
        swift_beginAccess();
        sub_21E8(&qword_F0130, &unk_C6FF0);
        sub_C3724();
        swift_endAccess();
        sub_1D7C8(&v147);

        v59 = v73;
      }

      else
      {
        v59 = v103;
      }

      v56 = v59;
      v47 = &v164;
      v54 = 0;
      swift_beginAccess();
      v48 = *(v107 + 32);

      swift_endAccess();
      v163 = v48;
      v49 = sub_21E8(&qword_F0130, &unk_C6FF0);
      sub_7E5F8();
      v50 = &v163;
      v52 = sub_C3674();
      sub_1D7C8(v50);

      v53 = 33;
      v51 = &v162;
      swift_beginAccess();
      v20 = *(v107 + 40);
      *(v107 + 40) = v52;

      swift_endAccess();

      v55 = &v161;
      swift_beginAccess();
      *(v107 + 56) = 1;
      swift_endAccess();
    }

    sub_1D7C8(v176);
    return v103;
  }
}

BOOL sub_7B9E4()
{
  swift_beginAccess();
  v5 = *(v0 + 24);

  swift_endAccess();
  v6 = sub_C3714();

  result = v6;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v3 = *(v4 + 48);
    swift_endAccess();
    return v6 - 1 == v3;
  }

  return result;
}

BOOL sub_7BAC4()
{
  swift_beginAccess();
  v2 = *(v0 + 48);
  swift_endAccess();
  return v2 <= 3;
}

uint64_t sub_7BB28(uint64_t a1, uint64_t a2)
{
  v257 = a1;
  v258 = a2;
  v211 = sub_7E7C0;
  v212 = sub_7E814;
  v213 = sub_7BBC;
  v214 = sub_7B48;
  v215 = sub_7B48;
  v216 = sub_7C08;
  v217 = sub_7E7C0;
  v218 = sub_7E814;
  v219 = sub_7BBC;
  v220 = sub_7B48;
  v221 = sub_7B48;
  v222 = sub_7C08;
  v335 = 0;
  v336 = 0;
  v334 = 0;
  v333 = 0;
  v332 = 0;
  v331 = 0;
  v265 = v330;
  v330[0] = 0;
  v330[1] = 0;
  v323 = 0u;
  v324 = 0u;
  v320 = 0;
  v268 = 0;
  v310 = 0u;
  v311 = 0u;
  v305 = 0u;
  v306 = 0u;
  v231 = 0;
  v223 = sub_C3234();
  v224 = *(v223 - 8);
  v225 = v223 - 8;
  v226 = (*(v224 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = __chkstk_darwin(0);
  v227 = v62 - v226;
  v228 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v229 = v62 - v228;
  v244 = sub_C1B54();
  v234 = *(v244 - 8);
  v235 = v244 - 8;
  v230 = (*(v234 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v231);
  v247 = v62 - v230;
  v249 = sub_C1CA4();
  v236 = *(v249 - 8);
  v237 = v249 - 8;
  v232 = (v236[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v231);
  v248 = v62 - v232;
  v253 = sub_C1CC4();
  v238 = *(v253 - 8);
  v239 = v253 - 8;
  v233 = (*(v238 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = __chkstk_darwin(v257);
  v252 = v62 - v233;
  v335 = v4;
  v336 = v5;
  v334 = v6;
  sub_C1C94();
  v243 = v236[13];
  v242 = v236 + 13;
  v243(v248, enum case for Calendar.Component.month(_:), v249);
  sub_C1B24();
  v7 = sub_C1CB4();
  v8 = v252;
  v240 = v7;
  v246 = *(v234 + 8);
  v245 = v234 + 8;
  v246(v247, v244);
  v251 = v236[1];
  v250 = v236 + 1;
  v251(v248, v249);
  v255 = *(v238 + 8);
  v254 = v238 + 8;
  v255(v8, v253);
  v333 = v240;
  sub_C1C94();
  v243(v248, enum case for Calendar.Component.day(_:), v249);
  sub_C1B24();
  v9 = sub_C1CB4();
  v10 = v252;
  v241 = v9;
  v246(v247, v244);
  v251(v248, v249);
  v255(v10, v253);
  v332 = v241;
  sub_C1C94();
  v243(v248, enum case for Calendar.Component.year(_:), v249);
  sub_C1B24();
  v256 = sub_C1CB4();
  v246(v247, v244);
  v251(v248, v249);
  v255(v252, v253);
  v331 = v256;
  v328 = v257;
  v329 = v258;
  v262 = sub_C3564(",", 1uLL, 1);
  v263 = v11;
  v261 = sub_B2E8();
  v260 = &type metadata for String;
  v259 = sub_37054();
  sub_37068();
  v264 = sub_C39F4();

  v327 = v264;
  v266 = sub_21E8(&qword_EF2B8, &qword_C5C20);
  v267 = sub_2DDA0();
  sub_C3824();
  for (i = v268; ; i = v208)
  {
    v208 = i;
    sub_21E8(&qword_F0158, &qword_C7018);
    sub_C3B44();
    v209 = v325;
    v210 = v326;
    if (!*(&v326 + 1))
    {
      sub_1D7C8(v330);
      v153 = 1;
      return v153 & 1;
    }

    v206 = v209;
    v207 = v210;
    v199 = v210;
    v198 = v209;
    v323 = v209;
    v324 = v210;
    v321 = v209;
    v322 = v210;
    v196 = sub_C3564("==", 2uLL, 1);
    v197 = v12;
    v195 = sub_7E708();
    v194 = &type metadata for Substring;
    v193 = sub_37054();
    sub_37068();
    v200 = sub_C39F4();

    v320 = v200;
    v319 = v200;
    sub_C37F4();
    v201 = v317;
    v202 = v318;
    v203 = v198;
    v204 = v199;
    v205 = v200;
    if (!*(&v318 + 1))
    {
      v188 = v203;
      v189 = v204;
      v190 = v205;
      goto LABEL_36;
    }

    v191 = v201;
    v192 = v202;
    v181 = *(&v202 + 1);
    v178 = v202;
    v179 = *(&v201 + 1);
    v180 = v201;
    v310 = v201;
    v311 = v202;
    v309 = v200;
    sub_7E908();
    sub_C3444();
    v182 = v307;
    v183 = v308;
    v184 = v181;
    v185 = v198;
    v186 = v199;
    v187 = v200;
    if (!*(&v308 + 1))
    {
      v175 = v187;
      v174 = v186;
      v173 = v185;

      v188 = v173;
      v189 = v174;
      v190 = v175;
      goto LABEL_36;
    }

    v176 = v182;
    v177 = v183;
    v167 = *(&v183 + 1);
    v164 = v183;
    v165 = *(&v182 + 1);
    v166 = v182;
    v305 = v182;
    v306 = v183;
    v13 = sub_C3714();
    v168 = v167;
    v169 = v181;
    v170 = v198;
    v171 = v199;
    v172 = v200;
    if (v13 != 2)
    {
      break;
    }

    v161 = v304;
    v304[0] = v180;
    v304[1] = v179;
    v304[2] = v178;
    v304[3] = v181;
    v14 = sub_C3564("M", 1uLL, 1);
    v162 = v303;
    v303[0] = v14;
    v303[1] = v15;
    v163 = sub_C3A04();
    sub_8224(v162);
    if (v163)
    {
      v160 = sub_C3634();
      v159 = v16;
      sub_4A604();
      sub_C3B74();
      v272 = v240;
      v273 = 0;
      v274 = v276;
      v275 = v277 & 1;
      v270 = v240;
      v271 = 0;
      v158 = (v277 & 1) == 0 && v270 == v274;
      v154 = v167;
      v155 = v181;
      v156 = *(&v199 + 1);
      v157 = v200;
      if (!v158)
      {
        v151 = v157;
        v152 = v156;
        v150 = v155;

        sub_1D7C8(v330);
        v153 = 0;
        return v153 & 1;
      }
    }

    else
    {
      v147 = v302;
      v302[0] = v180;
      v302[1] = v179;
      v302[2] = v178;
      v302[3] = v181;
      v17 = sub_C3564("D", 1uLL, 1);
      v148 = v301;
      v301[0] = v17;
      v301[1] = v18;
      v149 = sub_C3A04();
      sub_8224(v148);
      if (v149)
      {
        v146 = sub_C3634();
        v145 = v19;
        sub_4A604();
        sub_C3B74();
        v280 = v241;
        v281 = 0;
        v282 = v284;
        v283 = v285 & 1;
        v278 = v241;
        v279 = 0;
        v144 = (v285 & 1) == 0 && v278 == v282;
        v140 = v167;
        v141 = v181;
        v142 = *(&v199 + 1);
        v143 = v200;
        if (!v144)
        {
          v138 = v143;
          v139 = v142;
          v137 = v141;

          sub_1D7C8(v330);
          v153 = 0;
          return v153 & 1;
        }
      }

      else
      {
        v129 = v300;
        v300[0] = v180;
        v300[1] = v179;
        v300[2] = v178;
        v300[3] = v181;
        v20 = sub_C3564("Y", 1uLL, 1);
        v130 = v299;
        v299[0] = v20;
        v299[1] = v21;
        v131 = sub_C3A04();
        sub_8224(v130);
        v132 = v167;
        v133 = v181;
        v134 = v198;
        v135 = v199;
        v136 = v200;
        if ((v131 & 1) == 0)
        {
          v23 = v229;
          v100 = v136;
          v104 = v135;
          v103 = v134;
          v101 = v133;
          v102 = v132;
          v24 = sub_BF704();
          (*(v224 + 16))(v23, v24, v223);

          v108 = 7;
          v25 = swift_allocObject();
          v26 = *(&v103 + 1);
          v27 = v104;
          v105 = v25;
          *(v25 + 16) = v103;
          *(v25 + 24) = v26;
          *(v25 + 32) = v27;

          v107 = 32;
          v28 = swift_allocObject();
          v29 = v105;
          v109 = v28;
          *(v28 + 16) = v211;
          *(v28 + 24) = v29;

          v117 = sub_C3224();
          v118 = sub_C3874();
          v106 = 17;
          v111 = swift_allocObject();
          *(v111 + 16) = 32;
          v112 = swift_allocObject();
          *(v112 + 16) = 8;
          v30 = swift_allocObject();
          v31 = v109;
          v110 = v30;
          *(v30 + 16) = v212;
          *(v30 + 24) = v31;
          v32 = swift_allocObject();
          v33 = v110;
          v114 = v32;
          *(v32 + 16) = v213;
          *(v32 + 24) = v33;
          v116 = sub_21E8(&unk_EEFA0, &unk_C50F0);
          v113 = sub_C3C64();
          v115 = v34;

          v35 = v111;
          v36 = v115;
          *v115 = v214;
          v36[1] = v35;

          v37 = v112;
          v38 = v115;
          v115[2] = v215;
          v38[3] = v37;

          v39 = v114;
          v40 = v115;
          v115[4] = v216;
          v40[5] = v39;
          sub_4E48();

          if (os_log_type_enabled(v117, v118))
          {
            v41 = v208;
            v93 = sub_C3954();
            v92 = sub_21E8(&qword_EE828, &qword_C5100);
            v94 = sub_5DD4(0);
            v95 = sub_5DD4(1);
            v96 = &v298;
            v298 = v93;
            v97 = &v297;
            v297 = v94;
            v98 = &v296;
            v296 = v95;
            sub_5E28(2, &v298);
            sub_5E28(1, v96);
            v294 = v214;
            v295 = v111;
            sub_5E3C(&v294, v96, v97, v98);
            v99 = v41;
            if (v41)
            {

              __break(1u);
            }

            else
            {
              v294 = v215;
              v295 = v112;
              sub_5E3C(&v294, &v298, &v297, &v296);
              v91 = 0;
              v294 = v216;
              v295 = v114;
              sub_5E3C(&v294, &v298, &v297, &v296);
              _os_log_impl(&dword_0, v117, v118, "Unrecognized condition: %s", v93, 0xCu);
              sub_5E88(v94);
              sub_5E88(v95);
              sub_C3934();
            }
          }

          else
          {
          }

          _objc_release(v117);
          (*(v224 + 8))(v229, v223);

          sub_1D7C8(v330);
          v153 = 0;
          return v153 & 1;
        }

        v128 = sub_C3634();
        v127 = v22;
        sub_4A604();
        sub_C3B74();
        v288 = v256;
        v289 = 0;
        v290 = v292;
        v291 = v293 & 1;
        v286 = v256;
        v287 = 0;
        v126 = (v293 & 1) == 0 && v286 == v290;
        v122 = v167;
        v123 = v181;
        v124 = *(&v199 + 1);
        v125 = v200;
        if (!v126)
        {
          v120 = v125;
          v121 = v124;
          v119 = v123;

          sub_1D7C8(v330);
          v153 = 0;
          return v153 & 1;
        }
      }
    }
  }

  v90 = v172;
  v89 = v171;
  v88 = v170;
  v87 = v169;

  v188 = v88;
  v189 = v89;
  v190 = v90;
LABEL_36:
  v42 = v227;
  v70 = v190;
  v72 = v189;
  v71 = v188;
  v43 = sub_BF704();
  (*(v224 + 16))(v42, v43, v223);

  v76 = 7;
  v44 = swift_allocObject();
  v45 = *(&v71 + 1);
  v46 = v72;
  v73 = v44;
  *(v44 + 16) = v71;
  *(v44 + 24) = v45;
  *(v44 + 32) = v46;

  v75 = 32;
  v47 = swift_allocObject();
  v48 = v73;
  v77 = v47;
  *(v47 + 16) = v217;
  *(v47 + 24) = v48;

  v85 = sub_C3224();
  v86 = sub_C3874();
  v74 = 17;
  v79 = swift_allocObject();
  *(v79 + 16) = 32;
  v80 = swift_allocObject();
  *(v80 + 16) = 8;
  v49 = swift_allocObject();
  v50 = v77;
  v78 = v49;
  *(v49 + 16) = v218;
  *(v49 + 24) = v50;
  v51 = swift_allocObject();
  v52 = v78;
  v82 = v51;
  *(v51 + 16) = v219;
  *(v51 + 24) = v52;
  v84 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v81 = sub_C3C64();
  v83 = v53;

  v54 = v79;
  v55 = v83;
  *v83 = v220;
  v55[1] = v54;

  v56 = v80;
  v57 = v83;
  v83[2] = v221;
  v57[3] = v56;

  v58 = v82;
  v59 = v83;
  v83[4] = v222;
  v59[5] = v58;
  sub_4E48();

  if (os_log_type_enabled(v85, v86))
  {
    v60 = v208;
    v63 = sub_C3954();
    v62[1] = sub_21E8(&qword_EE828, &qword_C5100);
    v64 = sub_5DD4(0);
    v65 = sub_5DD4(1);
    v66 = &v316;
    v316 = v63;
    v67 = &v315;
    v315 = v64;
    v68 = &v314;
    v314 = v65;
    sub_5E28(2, &v316);
    sub_5E28(1, v66);
    v312 = v220;
    v313 = v79;
    sub_5E3C(&v312, v66, v67, v68);
    v69 = v60;
    if (v60)
    {

      __break(1u);
    }

    else
    {
      v312 = v221;
      v313 = v80;
      sub_5E3C(&v312, &v316, &v315, &v314);
      v62[0] = 0;
      v312 = v222;
      v313 = v82;
      sub_5E3C(&v312, &v316, &v315, &v314);
      _os_log_impl(&dword_0, v85, v86, "Unrecognized condition: %s", v63, 0xCu);
      sub_5E88(v64);
      sub_5E88(v65);
      sub_C3934();
    }
  }

  else
  {
  }

  _objc_release(v85);
  (*(v224 + 8))(v227, v223);

  sub_1D7C8(v330);
  v153 = 0;
  return v153 & 1;
}

uint64_t sub_7D64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{

  result = a1;
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_7D6A8(uint64_t a1)
{
  v27 = 0;
  v26 = 0;
  memset(__b, 0, sizeof(__b));
  v32 = a1;
  v31 = v1;
  swift_beginAccess();
  v23 = *(v1 + 56);
  swift_endAccess();
  if ((v23 & 1) == 0)
  {
    sub_7A124(a1);
  }

  swift_beginAccess();
  v20 = *(v21 + 48);
  result = swift_endAccess();
  if (__OFADD__(v20, 3))
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v29 = v20 + 3;
  swift_beginAccess();
  v18 = *(v21 + 24);

  swift_endAccess();
  v19 = sub_C3714();

  result = v19;
  if (__OFSUB__(v19, 1))
  {
    goto LABEL_26;
  }

  v28 = v19 - 1;
  sub_C3C84();
  v17 = v30;
  v27 = v30;
  v26 = sub_C3C64();
  swift_beginAccess();
  v16 = *(v21 + 48);
  swift_endAccess();
  sub_C3CF4();
  sub_21E8(&qword_F0170, &qword_C7020);
  sub_C3D24();
  while (1)
  {
    sub_21E8(&qword_F0178, &qword_C7028);
    sub_C3B54();
    if (v24)
    {
      break;
    }

    swift_beginAccess();
    v15 = *(v21 + 24);

    swift_endAccess();
    sub_C3744();
    sub_21E8(&qword_F0120, &qword_C6FE8);
    sub_C3724();
  }

  swift_beginAccess();
  v12 = *(v21 + 48);
  swift_endAccess();
  swift_beginAccess();
  v13 = *(v21 + 24);

  swift_endAccess();
  v14 = sub_C3714();

  result = v14;
  if (__OFSUB__(v14, 2))
  {
    goto LABEL_27;
  }

  if (v12 != v14 - 2)
  {
LABEL_24:
    swift_beginAccess();
    *(v21 + 48) = v17;
    swift_endAccess();
    v8 = v26;

    sub_1D7C8(&v26);
    return v8;
  }

  result = swift_beginAccess();
  v6 = *(v21 + 48);
  v11 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    *(v21 + 48) = v11;
    swift_endAccess();
    swift_beginAccess();
    v9 = *(v21 + 48);
    swift_endAccess();
    swift_beginAccess();
    v10 = *(v21 + 24);

    swift_endAccess();
    sub_C3744();
    sub_21E8(&qword_F0120, &qword_C6FE8);
    sub_C3724();

    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_7DC68(uint64_t a1)
{
  swift_beginAccess();
  v15 = *(v1 + 56);
  swift_endAccess();
  if ((v15 & 1) == 0)
  {
    sub_7AC08(a1);
  }

  swift_beginAccess();
  v12 = v14[6];
  swift_endAccess();
  swift_beginAccess();
  v10 = v14[3];

  swift_endAccess();
  v11 = sub_C3714();

  if (v12 >= v11)
  {
    v5 = sub_C3564("", 0, 1);
    sub_C3C64();
    return nullsub_1(v5);
  }

  swift_beginAccess();
  v7 = v14[6];
  swift_endAccess();
  swift_beginAccess();
  v8 = v14[5];

  swift_endAccess();
  sub_C3744();

  result = swift_beginAccess();
  v3 = v14[6];
  v9 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    v14[6] = v9;
    swift_endAccess();
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_7DF34()
{
  v36 = 0;
  v49 = 0;
  v35 = 0;
  v37 = sub_C3234();
  v38 = *(v37 - 8);
  v39 = v38;
  v1 = *(v38 + 64);
  __chkstk_darwin(v37 - 8);
  v40 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v0;
  v41 = &v48;
  swift_beginAccess();
  v42 = *(v0 + 56);
  swift_endAccess();
  if (v42 == 1)
  {
    v30 = &v43;
    swift_beginAccess();
    v31 = *(v34 + 16);

    swift_endAccess();
    v32 = v31;
    v33 = v35;
  }

  else
  {
    v3 = v40;
    v4 = sub_BF704();
    (*(v39 + 16))(v3, v4, v37);
    v28 = sub_C3224();
    v25 = v28;
    v27 = sub_C3884();
    v26 = v27;
    sub_21E8(&unk_EEFA0, &unk_C50F0);
    v29 = sub_C3C64();
    if (os_log_type_enabled(v28, v27))
    {
      v5 = v35;
      v16 = sub_C3954();
      v12 = v16;
      v13 = sub_21E8(&qword_EE828, &qword_C5100);
      v14 = 0;
      v17 = sub_5DD4(0);
      v15 = v17;
      v18 = sub_5DD4(v14);
      v47 = v16;
      v46 = v17;
      v45 = v18;
      v19 = 0;
      v20 = &v47;
      sub_5E28(0, &v47);
      sub_5E28(v19, v20);
      v44 = v29;
      v21 = &v8;
      __chkstk_darwin(&v8);
      v22 = &v8 - 6;
      *(&v8 - 4) = v6;
      *(&v8 - 3) = &v46;
      *(&v8 - 2) = &v45;
      v23 = sub_21E8(&unk_EEFB0, qword_C5110);
      sub_8128();
      sub_C3654();
      v24 = v5;
      if (v5)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_0, v25, v26, "Attempting to access allGames before initialzing PlayWithMe", v12, 2u);
        v10 = 0;
        sub_5E88(v15);
        sub_5E88(v18);
        sub_C3934();

        v11 = v24;
      }
    }

    else
    {

      v11 = v35;
    }

    v8 = v11;

    (*(v39 + 8))(v40, v37);
    v9 = sub_C3C64();
    v32 = v9;
    v33 = v8;
  }

  return v32;
}

uint64_t PlayWithMeData.deinit()
{
  sub_1D7C8(v0 + 2);
  sub_1D7C8(v0 + 3);
  sub_1D7C8(v0 + 4);
  sub_1D7C8(v0 + 5);
  return v2;
}

uint64_t sub_7E4CC()
{
  v0[2] = sub_C3C64();
  v0[3] = sub_C3C64();
  v0[4] = sub_C3C64();
  v1 = sub_C3C64();
  result = v3;
  *(v3 + 40) = v1;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  return result;
}

unint64_t sub_7E570()
{
  v2 = qword_F0128;
  if (!qword_F0128)
  {
    sub_81B0(&qword_F0120, &qword_C6FE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_F0128);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_7E5F8()
{
  v2 = qword_F0138;
  if (!qword_F0138)
  {
    sub_81B0(&qword_F0130, &unk_C6FF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_F0138);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_7E680()
{
  v2 = qword_F0148;
  if (!qword_F0148)
  {
    sub_81B0(&qword_F0140, &qword_C7000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_F0148);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_7E708()
{
  v2 = qword_F0160;
  if (!qword_F0160)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_F0160);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_7E780()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_7E7D4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7E888()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7E8C8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

unint64_t sub_7E908()
{
  v2 = qword_F0168;
  if (!qword_F0168)
  {
    sub_81B0(&qword_EF2B8, &qword_C5C20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_F0168);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_7E990()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_7E9D0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7EA68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_7EAA8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

__n128 sub_7EB10(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_7EB24(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_7EC64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

__n128 sub_7EE48(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_7EE5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (!HIDWORD(*(a1 + 8)))
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_7EF74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t type metadata accessor for INSiriSocialConversation()
{
  v1 = qword_F04D8;
  if (!qword_F04D8)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

uint64_t sub_7F228()
{
  v15 = v0;
  v1 = sub_41A2C();
  v5 = *v1;
  v6 = v1[1];

  sub_C3564(":", 1uLL, 1);
  sub_C3554();

  v7 = *v0;
  v8 = v0[1];

  sub_C3554();

  sub_C3564(":", 1uLL, 1);
  sub_C3554();

  v9 = v0[2];
  v10 = v0[3];

  v11 = v9;
  v12 = v10;
  if (v10)
  {
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = sub_C3564("0", 1uLL, 1);
    v14 = v2;
  }

  v4 = sub_C3554();

  return v4;
}

uint64_t sub_7F410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v26 = a6;
  v22 = a1;
  v29 = a2;
  v23 = a3;
  v28 = a4;
  v27 = a5;
  v36 = 0;
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v31 = 0;
  v6 = sub_21E8(&qword_EE820, &qword_C5A60);
  v20 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v25 = &v19 - v20;
  v24 = type metadata accessor for INSiriSocialConversation();
  v21 = (*(*(v24 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = __chkstk_darwin(v29);
  v30 = &v19 - v21;
  v36 = &v19 - v21;
  v34 = v8;
  v35 = v7;
  v32 = v9;
  v33 = v10;
  v31 = v11;

  v12 = v29;
  v13 = v30;
  *v30 = v22;
  *(v13 + 1) = v12;

  v14 = v27;
  v15 = v25;
  v16 = v28;
  v17 = v30;
  *(v30 + 2) = v23;
  *(v17 + 3) = v16;
  sub_B5E4(v14, v15);
  sub_7F5CC(v25, &v30[*(v24 + 24)]);
  sub_2C670(v30, v26);
  sub_BA04(v27);

  return sub_7EB4(v30);
}

void *sub_7F5CC(const void *a1, void *a2)
{
  v6 = sub_C1B54();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = sub_21E8(&qword_EE820, &qword_C5A60);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_7F70C()
{
  sub_21E8(&qword_F03D8, &qword_C7108);
  sub_C3564("cannedMisc", 0xAuLL, 1);
  sub_7F79C();
  result = sub_C2854();
  qword_F03B0 = result;
  return result;
}

uint64_t *sub_7F7B4()
{
  if (qword_EE7B0 != -1)
  {
    swift_once();
  }

  return &qword_F03B0;
}

uint64_t sub_7F814()
{
  v1 = *sub_7F7B4();

  return v1;
}

uint64_t sub_7F844()
{
  sub_21E8(&qword_F03D8, &qword_C7108);
  sub_C3564("cannedUtterance", 0xFuLL, 1);
  sub_7F79C();
  result = sub_C2854();
  qword_F03B8 = result;
  return result;
}

uint64_t *sub_7F8D4()
{
  if (qword_EE7B8 != -1)
  {
    swift_once();
  }

  return &qword_F03B8;
}

uint64_t sub_7F934()
{
  v1 = *sub_7F8D4();

  return v1;
}

uint64_t sub_7F964()
{
  sub_21E8(&qword_F03D8, &qword_C7108);
  sub_C3564("cannedVerb", 0xAuLL, 1);
  sub_7F79C();
  result = sub_C2854();
  qword_F03C0 = result;
  return result;
}

uint64_t *sub_7F9F4()
{
  if (qword_EE7C0 != -1)
  {
    swift_once();
  }

  return &qword_F03C0;
}

uint64_t sub_7FA54()
{
  v1 = *sub_7F9F4();

  return v1;
}

uint64_t sub_7FA84()
{
  sub_C2844();
  sub_C3564("cannedDialog", 0xCuLL, 1);
  sub_21E8(&qword_F03E0, &qword_C7110);
  sub_C3C64();
  v6 = v0;
  v2 = *sub_7F7B4();

  v4 = sub_21E8(&qword_F03D8, &qword_C7108);
  v6[3] = v4;
  v5 = sub_7FBD4();
  v6[4] = v5;
  *v6 = v2;
  v3 = *sub_7F8D4();

  v6[8] = v4;
  v6[9] = v5;
  v6[5] = v3;
  v7 = *sub_7F9F4();

  v6[13] = v4;
  v6[14] = v5;
  v6[10] = v7;
  sub_4E48();
  result = sub_C2834();
  qword_F03C8 = result;
  return result;
}

unint64_t sub_7FBD4()
{
  v2 = qword_F03E8;
  if (!qword_F03E8)
  {
    sub_81B0(&qword_F03D8, &qword_C7108);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_F03E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_7FC5C()
{
  if (qword_EE7C8 != -1)
  {
    swift_once();
  }

  return &qword_F03C8;
}

uint64_t sub_7FCBC()
{
  v1 = *sub_7FC5C();

  return v1;
}

uint64_t sub_7FD4C(uint64_t a1)
{
  v9 = a1;
  v8 = sub_C2B94();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, v8);
  return (*(v6 + 8))(v9, v8);
}

uint64_t sub_7FE60()
{
  v1 = *sub_7FC5C();

  return v1;
}

uint64_t sub_7FE98()
{
  v1 = *sub_7F7B4();

  type metadata accessor for CannedDialogNLv3Intent();
  sub_7FF78();
  sub_C2924();

  return v2;
}

uint64_t type metadata accessor for CannedDialogNLv3Intent()
{
  v1 = qword_F0570;
  if (!qword_F0570)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

unint64_t sub_7FF78()
{
  v2 = qword_F03F0;
  if (!qword_F03F0)
  {
    type metadata accessor for CannedDialogNLv3Intent();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_F03F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_7FFF8()
{
  v1 = *sub_7F8D4();

  type metadata accessor for CannedDialogNLv3Intent();
  sub_7FF78();
  sub_C2924();

  return v2;
}

uint64_t sub_80064()
{
  v1 = *sub_7F9F4();

  type metadata accessor for CannedDialogNLv3Intent();
  sub_7FF78();
  sub_C2924();

  return v2;
}

unint64_t sub_801C4()
{
  v2 = qword_F03F8;
  if (!qword_F03F8)
  {
    type metadata accessor for CannedDialogNLv3Intent();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_F03F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_802CC(uint64_t a1)
{
  swift_unknownObjectRetain();
  v2 = *v1;
  *v1 = a1;
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_80308(uint64_t a1)
{
  v3 = 0;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v3 = a1;
  swift_unknownObjectRelease();
  sub_80368(&v3);
  return a1;
}

uint64_t *sub_80368(uint64_t *a1)
{
  v1 = *a1;
  swift_unknownObjectRelease();
  return a1;
}

uint64_t sub_80394()
{
  swift_unknownObjectRetain();
  sub_C2914();
  swift_unknownObjectRelease();
  sub_21E8(&qword_F0400, &qword_C7118);
  sub_80480();
  sub_C37F4();

  return v1;
}

unint64_t sub_80480()
{
  v2 = qword_F0408;
  if (!qword_F0408)
  {
    sub_81B0(&qword_F0400, &qword_C7118);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_F0408);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_80508(uint64_t a1)
{
  v7[3] = a1;
  if (!sub_80394())
  {
    return 0;
  }

  sub_C2B84();

  v7[0] = sub_C3564("target", 6uLL, 1);
  v7[1] = v1;
  sub_21E8(&qword_F0410, &unk_C7120);
  sub_C33E4();
  sub_8224(v7);
  v5 = v7[2];

  if (!v5)
  {
    return 0;
  }

  sub_80698();
  sub_C37F4();

  if (!v6)
  {
    return 0;
  }

  v3 = sub_C2BC4();

  return v3;
}

unint64_t sub_80698()
{
  v2 = qword_F0418;
  if (!qword_F0418)
  {
    sub_81B0(&qword_F0410, &unk_C7120);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_F0418);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_80720(uint64_t a1)
{
  v50 = a1;
  v52 = sub_810B4;
  v56 = sub_7BBC;
  v58 = sub_7B48;
  v60 = sub_7B48;
  v63 = sub_7C08;
  v75 = 0;
  v44 = 0;
  v49 = sub_C3234();
  v47 = *(v49 - 8);
  v48 = v49 - 8;
  v45 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = &v19 - v45;
  v46 = &v19 - v45;
  v75 = __chkstk_darwin(v50);
  v2 = sub_BF704();
  (*(v47 + 16))(v1, v2, v49);
  swift_unknownObjectRetain();
  v54 = 7;
  v55 = swift_allocObject();
  *(v55 + 16) = v50;
  v67 = sub_C3224();
  v68 = sub_C3874();
  v51 = 17;
  v59 = swift_allocObject();
  *(v59 + 16) = 32;
  v61 = swift_allocObject();
  *(v61 + 16) = 8;
  v53 = 32;
  v3 = swift_allocObject();
  v4 = v55;
  v57 = v3;
  *(v3 + 16) = v52;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v57;
  v64 = v5;
  *(v5 + 16) = v56;
  *(v5 + 24) = v6;
  v66 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v62 = sub_C3C64();
  v65 = v7;

  v8 = v59;
  v9 = v65;
  *v65 = v58;
  v9[1] = v8;

  v10 = v61;
  v11 = v65;
  v65[2] = v60;
  v11[3] = v10;

  v12 = v64;
  v13 = v65;
  v65[4] = v63;
  v13[5] = v12;
  sub_4E48();

  if (os_log_type_enabled(v67, v68))
  {
    v14 = v44;
    v37 = sub_C3954();
    v36 = sub_21E8(&qword_EE828, &qword_C5100);
    v38 = sub_5DD4(0);
    v39 = sub_5DD4(1);
    v40 = v73;
    v73[0] = v37;
    v41 = &v72;
    v72 = v38;
    v42 = &v71;
    v71 = v39;
    sub_5E28(2, v73);
    sub_5E28(1, v40);
    v69 = v58;
    v70 = v59;
    sub_5E3C(&v69, v40, v41, v42);
    v43 = v14;
    if (v14)
    {

      __break(1u);
    }

    else
    {
      v69 = v60;
      v70 = v61;
      sub_5E3C(&v69, v73, &v72, &v71);
      v35 = 0;
      v69 = v63;
      v70 = v64;
      sub_5E3C(&v69, v73, &v72, &v71);
      _os_log_impl(&dword_0, v67, v68, "USO debug info %s", v37, 0xCu);
      sub_5E88(v38);
      sub_5E88(v39);
      sub_C3934();
    }
  }

  else
  {
  }

  _objc_release(v67);
  (*(v47 + 8))(v46, v49);
  v34 = sub_80508(v50);
  if (!v34)
  {
    goto LABEL_16;
  }

  v33 = v34;
  v28 = v34;
  v31 = sub_C2BD4();

  v15 = sub_C3564("dialogId", 8uLL, 1);
  v30 = v74;
  v74[0] = v15;
  v74[1] = v16;
  v29 = sub_21E8(&qword_F0410, &unk_C7120);
  sub_C33E4();
  sub_8224(v30);
  v32 = v74[2];

  if (v32 && (v27 = v32, v25 = v32, v73[2] = v32, sub_80698(), sub_C37F4(), v26 = v73[1], , v26))
  {
    v24 = v26;
    v19 = v26;
    v20 = sub_C2BA4();
    v21 = v17;

    v22 = v20;
    v23 = v21;
  }

  else
  {
LABEL_16:
    v22 = 0;
    v23 = 0;
  }

  return v22;
}

uint64_t sub_80F34(uint64_t a1)
{
  if (sub_80508(a1))
  {
    sub_C2BD4();

    sub_21E8(&qword_F0410, &unk_C7120);
    v4 = sub_C3364();
    v5 = v1;

    v6 = v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = v6;
  v9 = v7;
  if (v7)
  {
    v10 = v8;
    v11 = v9;
  }

  else
  {
    v10 = sub_C3564("<nil>", 5uLL, 1);
    v11 = v2;
  }

  return v10;
}

uint64_t sub_81074()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return swift_deallocObject();
}

uint64_t sub_8111C(uint64_t a1)
{
  v9 = a1;
  v8 = sub_C24C4();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, v8);
  return (*(v6 + 8))(v9, v8);
}

uint64_t sub_81230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v37 = a1;
  v50 = sub_8CE04;
  v54 = sub_7BBC;
  v56 = sub_7B48;
  v58 = sub_7B48;
  v61 = sub_7C08;
  v73 = 0;
  v72 = 0;
  v27 = 0;
  v29 = 0;
  v46 = sub_C24C4();
  v42 = *(v46 - 8);
  v43 = v46 - 8;
  v40 = v42;
  v41 = *(v42 + 64);
  v28 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v45 = v18 - v28;
  v36 = sub_C3234();
  v34 = *(v36 - 8);
  v35 = v36 - 8;
  v30 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v29);
  v2 = v18 - v30;
  v31 = v18 - v30;
  v32 = (*(*(type metadata accessor for CannedDialogActUso() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = __chkstk_darwin(v37);
  v33 = v18 - v32;
  v73 = v18 - v32;
  v72 = v3;
  v4 = sub_BF704();
  (*(v34 + 16))(v2, v4, v36);
  v38 = *(v42 + 16);
  v39 = v42 + 16;
  v38(v45, v37, v46);
  v44 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v52 = 7;
  v53 = swift_allocObject();
  v47 = *(v42 + 32);
  v48 = v42 + 32;
  v47(v53 + v44, v45, v46);
  v65 = sub_C3224();
  v66 = sub_C3874();
  v49 = 17;
  v57 = swift_allocObject();
  *(v57 + 16) = 32;
  v59 = swift_allocObject();
  *(v59 + 16) = 8;
  v51 = 32;
  v5 = swift_allocObject();
  v6 = v53;
  v55 = v5;
  *(v5 + 16) = v50;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v55;
  v62 = v7;
  *(v7 + 16) = v54;
  *(v7 + 24) = v8;
  v64 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v60 = sub_C3C64();
  v63 = v9;

  v10 = v57;
  v11 = v63;
  *v63 = v56;
  v11[1] = v10;

  v12 = v59;
  v13 = v63;
  v63[2] = v58;
  v13[3] = v12;

  v14 = v62;
  v15 = v63;
  v63[4] = v61;
  v15[5] = v14;
  sub_4E48();

  if (os_log_type_enabled(v65, v66))
  {
    v16 = v27;
    v19 = sub_C3954();
    v18[2] = sub_21E8(&qword_EE828, &qword_C5100);
    v20 = sub_5DD4(0);
    v21 = sub_5DD4(1);
    v22 = &v71;
    v71 = v19;
    v23 = &v70;
    v70 = v20;
    v24 = &v69;
    v69 = v21;
    sub_5E28(2, &v71);
    sub_5E28(1, v22);
    v67 = v56;
    v68 = v57;
    sub_5E3C(&v67, v22, v23, v24);
    v25 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v67 = v58;
      v68 = v59;
      sub_5E3C(&v67, &v71, &v70, &v69);
      v18[0] = 0;
      v67 = v61;
      v68 = v62;
      sub_5E3C(&v67, &v71, &v70, &v69);
      _os_log_impl(&dword_0, v65, v66, "dialogAct: %s", v19, 0xCu);
      sub_5E88(v20);
      sub_5E88(v21);
      sub_C3934();
    }
  }

  else
  {
  }

  _objc_release(v65);
  (*(v34 + 8))(v31, v36);
  v38(v45, v37, v46);
  v47(v33, v45, v46);
  sub_8CF40(v33, v26);
  (*(v42 + 8))(v37, v46);
  return sub_8CFA4(v33);
}

uint64_t sub_81ABC()
{
  sub_C24C4();
  sub_8EB00();
  return sub_C2FE4();
}

uint64_t sub_81B00()
{
  v14 = 0;
  v5 = sub_C24C4();
  v8 = *(v5 - 8);
  v6 = v5 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v5);
  v9 = v2 - v7;
  v14 = v0;
  (*(v8 + 16))();
  v10 = sub_C25E4();
  v11 = 0;
  v3 = v10;
  (*(v8 + 8))(v9, v5);
  v13 = v3;
  v2[1] = sub_21E8(&qword_F0400, &qword_C7118);
  sub_80480();
  sub_C37F4();
  v4 = v12;

  return v4;
}

uint64_t sub_81CC4()
{
  v8 = v0;
  if (!sub_81B00())
  {
    return 0;
  }

  sub_C2B84();

  v7[0] = sub_C3564("target", 6uLL, 1);
  v7[1] = v1;
  sub_21E8(&qword_F0410, &unk_C7120);
  sub_C33E4();
  sub_8224(v7);
  v5 = v7[2];

  if (!v5)
  {
    return 0;
  }

  sub_80698();
  sub_C37F4();

  if (!v6)
  {
    return 0;
  }

  v3 = sub_C2BC4();

  return v3;
}

uint64_t sub_81E54()
{
  v24 = v0;
  if (sub_81CC4())
  {
    v15 = sub_C2BE4();
    v16 = v1;

    v17 = v15;
    v18 = v16;
  }

  else
  {
    v17 = 0;
    v18 = 0;
  }

  v2 = sub_41E34();
  v13 = *v2;
  v14 = v2[1];

  v23[0] = v17;
  v23[1] = v18;
  v21[0] = v13;
  v21[1] = v14;
  sub_146A0(v23, &v22);
  if (v14)
  {
    sub_146A0(v21, &v20);
    if (*(&v22 + 1))
    {
      v19 = v22;
      v11 = sub_C3574();
      sub_8224(&v19);
      sub_8224(&v20);
      sub_8224(v21);
      v12 = v11;
      goto LABEL_9;
    }

    sub_8224(&v20);
    goto LABEL_11;
  }

  if (*(&v22 + 1))
  {
LABEL_11:
    sub_146E0(v21);
    v12 = 0;
    goto LABEL_9;
  }

  sub_8224(v21);
  v12 = 1;
LABEL_9:

  if (v12)
  {
    v3 = sub_41FF4();
    v8 = *v3;
    v9 = v3[1];

    return v8;
  }

  else
  {
    v4 = sub_420D4();
    v6 = *v4;
    v7 = v4[1];

    return v6;
  }
}

uint64_t sub_820A8()
{
  v1 = IdentifierNamespaceIntentName;
  _objc_retain(IdentifierNamespaceIntentName);
  v2 = sub_C3494();
  _objc_release(v1);
  return v2;
}

uint64_t sub_82114()
{
  v25 = v0;
  v16 = sub_81E54();
  v17 = v1;
  v2 = sub_820A8();
  v18 = sub_823B8(v16, v17, v2, v3);
  v19 = v4;

  v23 = v18;
  v24 = v19;
  v22[0] = v18;
  v22[1] = v19;
  sub_8224(v22);
  if (!v19)
  {
    if (!sub_81CC4())
    {
      goto LABEL_12;
    }

    sub_C2BD4();

    v5 = sub_420D4();
    v13 = *v5;
    v14 = v5[1];

    v21[0] = v13;
    v21[1] = v14;
    sub_21E8(&qword_F0410, &unk_C7120);
    sub_C33E4();
    sub_8224(v21);
    v15 = v21[2];

    if (v15 && (sub_80698(), sub_C37F4(), , v20))
    {
      v9 = sub_C2BA4();
      v10 = v6;

      v11 = v9;
      v12 = v10;
    }

    else
    {
LABEL_12:
      v11 = 0;
      v12 = 0;
    }

    v23 = v11;
    v24 = v12;
  }

  v8 = v23;

  sub_8224(&v23);
  return v8;
}

uint64_t sub_823B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v118 = a4;
  v117 = a3;
  v116 = a2;
  v115 = a1;
  v105 = 0;
  v162 = 0;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v157 = 0;
  v104 = 0;
  v106 = (*(*(sub_21E8(&qword_F0420, &qword_C7900) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(0);
  v107 = &v45 - v106;
  v114 = sub_C3234();
  v108 = v114;
  v109 = *(v114 - 8);
  v113 = v109;
  v110 = v109;
  v111 = *(v109 + 64);
  v4 = __chkstk_darwin(v115);
  v5 = &v45 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v5;
  v161 = v4;
  v162 = v6;
  v159 = v7;
  v160 = v8;
  v158 = v9;
  v10 = sub_BF704();
  (*(v113 + 16))(v5, v10, v114);

  v126 = 32;
  v131 = 32;
  v132 = 7;
  v11 = swift_allocObject();
  v12 = v116;
  v123 = v11;
  *(v11 + 16) = v115;
  *(v11 + 24) = v12;

  v13 = swift_allocObject();
  v14 = v118;
  v133 = v13;
  *(v13 + 16) = v117;
  *(v13 + 24) = v14;
  v146 = sub_C3224();
  v119 = v146;
  v145 = sub_C3874();
  v120 = v145;
  v127 = 17;
  v136 = swift_allocObject();
  v121 = v136;
  *(v136 + 16) = v126;
  v137 = swift_allocObject();
  v122 = v137;
  v129 = 8;
  *(v137 + 16) = 8;
  v15 = swift_allocObject();
  v16 = v123;
  v124 = v15;
  *(v15 + 16) = sub_1D834;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v124;
  v138 = v17;
  v125 = v17;
  *(v17 + 16) = sub_7BBC;
  *(v17 + 24) = v18;
  v139 = swift_allocObject();
  v128 = v139;
  *(v139 + 16) = v126;
  v140 = swift_allocObject();
  v130 = v140;
  *(v140 + 16) = v129;
  v19 = swift_allocObject();
  v20 = v133;
  v134 = v19;
  *(v19 + 16) = sub_1D834;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v134;
  v143 = v21;
  v135 = v21;
  *(v21 + 16) = sub_7BBC;
  *(v21 + 24) = v22;
  v144 = sub_21E8(&unk_EEFA0, &unk_C50F0);
  v141 = sub_C3C64();
  v142 = v23;

  v24 = v136;
  v25 = v142;
  *v142 = sub_7B48;
  v25[1] = v24;

  v26 = v137;
  v27 = v142;
  v142[2] = sub_7B48;
  v27[3] = v26;

  v28 = v138;
  v29 = v142;
  v142[4] = sub_7C08;
  v29[5] = v28;

  v30 = v139;
  v31 = v142;
  v142[6] = sub_7B48;
  v31[7] = v30;

  v32 = v140;
  v33 = v142;
  v142[8] = sub_7B48;
  v33[9] = v32;

  v34 = v142;
  v35 = v143;
  v142[10] = sub_7C08;
  v34[11] = v35;
  sub_4E48();

  if (os_log_type_enabled(v146, v145))
  {
    v36 = v104;
    v97 = sub_C3954();
    v94 = v97;
    v95 = sub_21E8(&qword_EE828, &qword_C5100);
    v98 = sub_5DD4(0);
    v96 = v98;
    v100 = 2;
    v99 = sub_5DD4(2);
    v151[0] = v97;
    v150 = v98;
    v149 = v99;
    v101 = v151;
    sub_5E28(v100, v151);
    sub_5E28(v100, v101);
    v147 = sub_7B48;
    v148 = v121;
    sub_5E3C(&v147, v101, &v150, &v149);
    v102 = v36;
    v103 = v36;
    if (v36)
    {
      v92 = 0;

      __break(1u);
    }

    else
    {
      v147 = sub_7B48;
      v148 = v122;
      sub_5E3C(&v147, v151, &v150, &v149);
      v90 = 0;
      v91 = 0;
      v147 = sub_7C08;
      v148 = v125;
      sub_5E3C(&v147, v151, &v150, &v149);
      v88 = 0;
      v89 = 0;
      v147 = sub_7B48;
      v148 = v128;
      sub_5E3C(&v147, v151, &v150, &v149);
      v86 = 0;
      v87 = 0;
      v147 = sub_7B48;
      v148 = v130;
      sub_5E3C(&v147, v151, &v150, &v149);
      v84 = 0;
      v85 = 0;
      v147 = sub_7C08;
      v148 = v135;
      sub_5E3C(&v147, v151, &v150, &v149);
      v82 = 0;
      v83 = 0;
      _os_log_impl(&dword_0, v119, v120, "Getting identifier for %s and namespace %s", v94, 0x16u);
      sub_5E88(v96);
      sub_5E88(v99);
      sub_C3934();

      v93 = v82;
    }
  }

  else
  {
    v37 = v104;

    v93 = v37;
  }

  v80 = v93;

  (*(v110 + 8))(v112, v108);
  v81 = sub_81CC4();
  if (!v81)
  {
    goto LABEL_25;
  }

  v79 = v81;
  v73 = v81;
  v76 = sub_C2BD4();

  v154[0] = v115;
  v154[1] = v116;
  v74 = sub_21E8(&qword_F0410, &unk_C7120);
  v75 = v154;
  sub_C33E4();
  sub_8224(v75);
  v78 = v155;
  v77 = v155;

  if (!v78)
  {
    goto LABEL_25;
  }

  v72 = v77;
  v69 = v77;
  v153 = v77;
  sub_80698();
  sub_C37F4();
  v71 = v152;
  v70 = v152;

  if (!v71)
  {
LABEL_25:
    v59 = 0;
    v60 = v80;
LABEL_17:
    v57 = v59;
    v157 = v59;

    if (v57)
    {
      v56 = v57;
      v53 = v57;
      v156 = v57;
      v52 = sub_21E8(&qword_F0428, &qword_C7130);
      sub_8D230();
      sub_C37F4();

      v54 = sub_C28A4();
      v55 = *(v54 - 8);
      v41 = (*(v55 + 48))(v107, 1);
      if (v41 != 1)
      {
        v42 = sub_C2884();
        v48 = v43;
        v49 = v42;
        (*(v55 + 8))(v107, v54);
        v50 = v49;
        v51 = v48;
LABEL_23:
        v47 = v51;
        v46 = v50;

        return v46;
      }

      sub_8D2B8(v107);
    }

    v50 = 0;
    v51 = 0;
    goto LABEL_23;
  }

  v68 = v70;
  v38 = v80;
  v61 = v70;
  v62 = sub_C2BB4();

  v151[2] = v62;

  v63 = &v45;
  __chkstk_darwin(&v45);
  v64 = &v45 - 4;
  *(&v45 - 2) = v117;
  *(&v45 - 1) = v39;
  v65 = sub_21E8(&qword_F0428, &qword_C7130);
  sub_8D390();
  v40 = sub_C3AE4();
  v66 = v38;
  v67 = v40;
  if (!v38)
  {
    v58 = v67;

    v59 = v58;
    v60 = v66;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_83484()
{
  v25 = 0;
  v26 = 0;
  v29 = v0;
  if (sub_81CC4())
  {
    v18 = sub_C2BE4();
    v19 = v1;

    v20 = v18;
    v21 = v19;
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  v17 = *sub_41E34();

  v27[0] = v20;
  v27[1] = v21;
  v28 = v17;
  if (v21)
  {
    sub_146A0(v27, &v24);
    if (*(&v28 + 1))
    {
      v23 = v24;
      v22 = v28;
      v15 = sub_C3574();
      sub_8224(&v22);
      sub_8224(&v23);
      sub_8224(v27);
      v16 = v15;
      goto LABEL_9;
    }

    sub_8224(&v24);
    goto LABEL_11;
  }

  if (*(&v28 + 1))
  {
LABEL_11:
    sub_146E0(v27);
    v16 = 0;
    goto LABEL_9;
  }

  sub_8224(v27);
  v16 = 1;
LABEL_9:

  if (v16)
  {
    v2 = sub_41FF4();
    v11 = *v2;
    v12 = v2[1];

    v13 = v11;
    v14 = v12;
  }

  else
  {
    v3 = sub_420D4();
    v9 = *v3;
    v10 = v3[1];

    v13 = v9;
    v14 = v10;
  }

  v25 = v13;
  v26 = v14;
  v7 = IdentifierNamespaceGuid;
  _objc_retain(IdentifierNamespaceGuid);
  v4 = sub_C3494();
  v8 = sub_823B8(v13, v14, v4, v5);

  _objc_release(v7);

  return v8;
}