uint64_t sub_A5970()
{
  sub_C9EC();
  v2 = *v1;
  sub_38388();
  *v4 = v3;
  v5 = v2[75];
  v6 = *v1;
  sub_38440();
  *v7 = v6;
  *(v9 + 608) = v8;

  v10 = v2[63];
  v11 = v2[62];
  v12 = v2[54];
  v13 = v2[53];
  if (v0)
  {
  }

  else
  {
    v14 = v2[63];
  }

  sub_A776C();
  sub_A7788();
  sub_8ACC();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_A5B2C()
{
  v160 = v0;
  if (!*(v0 + 608))
  {
    v23 = *(v0 + 240);
    v24 = *(v0 + 216);
    v25 = *(v0 + 224);
    sub_16DBBC();
    sub_A7598();
    v26 = sub_3BD68();
    v27(v26);
    v28 = sub_16DBDC();
    v29 = sub_16E37C();
    os_log_type_enabled(v28, v29);
    sub_A7474();
    if (v30)
    {
      v143 = v2;
      v31 = *(v0 + 624);
      sub_8BD8();
      v159 = sub_A75B8();
      *v1 = 136315138;
      v32 = sub_208C0(v31);
      v136 = v23;
      v34 = sub_3AB7C(v32, v33, &v159);

      *(v1 + 4) = v34;
      sub_A794C(&def_259DC, v35, v36, "Couldn't create dialog for %s");
      sub_A7540();
      sub_8A2C();
      sub_A76C0();

      v45 = sub_A7870(v37, v38, v39, v40, v41, v42, v43, v44, v129, v130, v131, v132, v133, v134, v136, v3, v1, v143, v145, v146);
      v46(v45);
      sub_A7218();
      sub_A7130(v152, v47);
      sub_A71D0();
      sub_A7130(v154, v48);
      v49 = sub_A78B4();
      v50(v49);
      (*(v24 + 8))(v144, v139);
      sub_8748(v141, &qword_1C5800, &unk_16F510);
      v51 = v137;
    }

    else
    {

      v121 = sub_A7870(v113, v114, v115, v116, v117, v118, v119, v120, v129, v130, v131, v132, v133, v134, v135, v138, v140, v142, v145, v146);
      v122(v121);
      sub_A7218();
      sub_A7130(v152, v123);
      sub_A71D0();
      sub_A7130(v154, v124);
      v125 = sub_A78B4();
      v126(v125);
      (*(v24 + 8))(v2, v3);
      sub_8748(v1, &qword_1C5800, &unk_16F510);
      v51 = v23;
    }

    sub_8748(v51, &qword_1C57F8, &unk_172510);
    sub_A77D4(*(v0 + 192));
    sub_A72B4();
    sub_A74E8();

    sub_C9BC();
    sub_A78CC();

    __asm { BRAA            X1, X16 }
  }

  v156 = *(v0 + 608);
  v4 = *(v0 + 328);
  v5 = *(v0 + 312);
  v6 = *(v0 + 264);
  v7 = *(v0 + 216);
  v8 = *(v0 + 224);
  sub_16DBBC();
  sub_8B48();
  v9 = *(v8 + 16);
  v10 = sub_A77C4();
  v9(v10);
  sub_A7278();
  sub_C9C8();
  sub_A70D8();
  v11 = sub_16DBDC();
  v12 = sub_16E36C();
  v13 = sub_4B3A8(v12);
  v14 = *(v0 + 312);
  v153 = v9;
  if (v13)
  {
    v15 = *(v0 + 304);
    v16 = *(v0 + 288);
    v157 = *(v0 + 264);
    v148 = *(v0 + 224);
    v150 = *(v0 + 216);
    v17 = sub_8BD8();
    v159 = sub_CA30();
    *v17 = 136315138;
    sub_A7278();
    sub_A70D8();
    v18 = sub_16E1EC();
    v20 = v19;
    sub_A7218();
    sub_A7130(v14, v21);
    sub_3AB7C(v18, v20, &v159);
    sub_A7888();
    v9 = v153;

    *(v17 + 4) = v14;
    _os_log_impl(&def_259DC, v11, v12, "Query snippet model is: %s", v17, 0xCu);
    sub_A7540();
    sub_8A2C();
    sub_8A2C();

    v22 = v157;
    v158 = *(v148 + 8);
    v158(v22, v150);
  }

  else
  {
    v52 = *(v0 + 264);
    v53 = *(v0 + 216);
    v54 = *(v0 + 224);

    sub_A7218();
    sub_A7130(v14, v55);
    v56 = sub_A77A4();
    v158 = v57;
    (v57)(v56);
  }

  v58 = *(v0 + 328);
  v59 = *(v0 + 296);
  v60 = *(v0 + 256);
  v61 = *(v0 + 216);
  sub_8B48();
  v62 = sub_A77C4();
  v9(v62);
  sub_A7278();
  sub_C9C8();
  sub_A70D8();
  v63 = sub_16DBDC();
  v64 = sub_16E36C();
  v65 = os_log_type_enabled(v63, v64);
  v66 = *(v0 + 296);
  if (v65)
  {
    v67 = *(v0 + 288);
    v147 = *(v0 + 224);
    v149 = *(v0 + 216);
    v151 = *(v0 + 256);
    v68 = sub_8BD8();
    v69 = sub_CA30();
    v159 = v69;
    *v68 = 136315138;
    v70 = (v66 + *(v67 + 60));
    v71 = v70[1];
    *(v0 + 176) = *v70;
    *(v0 + 184) = v71;

    sub_2440(&qword_1C69C8, &qword_174150);
    v72 = sub_16E3DC();
    v74 = v73;
    sub_A7218();
    sub_A7130(v66, v75);

    v76 = sub_3AB7C(v72, v74, &v159);

    *(v68 + 4) = v76;
    _os_log_impl(&def_259DC, v63, v64, "Basal temp is: %s", v68, 0xCu);
    sub_2D64(v69);
    v9 = v153;
    sub_8A2C();
    sub_8A2C();

    v77 = v149;
    v78 = v151;
  }

  else
  {
    v79 = *(v0 + 256);
    v80 = *(v0 + 216);
    v74 = *(v0 + 224);

    sub_A7218();
    sub_A7130(v66, v81);
    v78 = v79;
    v77 = v80;
  }

  v158(v78, v77);
  v82 = *(v0 + 352);
  v83 = *(v0 + 360);
  v84 = *(v0 + 248);
  v85 = *(v0 + 216);
  sub_8B48();
  v86 = sub_A77C4();
  v9(v86);
  sub_A71E8();
  sub_C9C8();
  sub_A70D8();
  v87 = sub_16DBDC();
  v88 = sub_16E36C();
  v89 = sub_4B3A8(v88);
  v90 = *(v0 + 352);
  if (v89)
  {
    v92 = *(v0 + 336);
    v91 = *(v0 + 344);
    v155 = *(v0 + 248);
    v94 = *(v0 + 216);
    v93 = *(v0 + 224);
    sub_8BD8();
    v159 = sub_A75B8();
    *v74 = 136315138;
    sub_A71E8();
    sub_A70D8();
    sub_A76B4();
    sub_16E1EC();
    sub_A7800();
    sub_A71D0();
    sub_A7130(v90, v95);
    v96 = sub_A76B4();
    sub_3AB7C(v96, v97, v98);
    sub_A7888();

    *(v74 + 4) = v90;
    sub_A7720(&def_259DC, v99, v100, "Query snippet header model is: %s");
    sub_A74B4();
    sub_A76C0();

    v101 = v155;
  }

  else
  {
    v102 = *(v0 + 248);
    v94 = *(v0 + 216);
    v103 = *(v0 + 224);

    sub_A71D0();
    sub_A7130(v90, v104);
    v101 = v102;
  }

  v158(v101, v94);
  v105 = *(v0 + 328);
  v106 = type metadata accessor for WellnessSnippets();
  v107 = sub_A79AC(v106);
  sub_A784C(v107);
  sub_A7278();
  sub_38B40();
  sub_A70D8();
  sub_8427C();
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 616) = v108;
  *v108 = v109;
  v108[1] = sub_A6328;
  v110 = *(v0 + 192);
  sub_A7824();
  sub_A78CC();

  return sub_672C0();
}

uint64_t sub_A6328()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 616);
  v6 = *v0;
  sub_C990();
  *v7 = v6;

  sub_2D64((v2 + 16));
  v8 = sub_17960();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_A640C()
{
  v1 = v0[76];
  v3 = v0[62];
  v2 = v0[63];
  v29 = v0[58];
  v31 = v0[61];
  v4 = v0[50];
  v27 = v0[51];
  v6 = v0[48];
  v5 = v0[49];
  v8 = v0[46];
  v7 = v0[47];
  v9 = v0[45];
  v10 = v0[41];

  sub_A7218();
  sub_A7130(v10, v11);
  sub_A71D0();
  sub_A7130(v9, v12);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v27, v5);
  sub_8748(v29, &qword_1C5800, &unk_16F510);
  sub_8748(v31, &qword_1C57F8, &unk_172510);
  sub_A72B4();
  v15 = v0[45];
  v16 = v0[44];
  v17 = v0[43];
  v18 = v0[41];
  v19 = v0[40];
  v20 = v0[39];
  v21 = v0[38];
  v22 = v0[37];
  v23 = v0[35];
  v24 = v0[34];
  v25 = v0[33];
  v26 = v0[32];
  v28 = v0[31];
  v30 = v0[30];
  v32 = v0[29];

  sub_C9BC();

  return v13();
}

void sub_A6654()
{
  v4 = *(v0 + 240);
  v5 = *(v0 + 216);
  v6 = *(v0 + 224);
  sub_16DBBC();
  sub_A7598();
  v7 = sub_3BD68();
  v8(v7);
  v9 = sub_16DBDC();
  v10 = sub_16E37C();
  os_log_type_enabled(v9, v10);
  sub_A7474();
  if (v11)
  {
    v63 = v2;
    v12 = *(v0 + 624);
    sub_8BD8();
    v69 = sub_A75B8();
    *v1 = 136315138;
    v13 = sub_208C0(v12);
    v56 = v4;
    v15 = sub_3AB7C(v13, v14, &v69);

    *(v1 + 4) = v15;
    sub_A794C(&def_259DC, v16, v17, "Couldn't create dialog for %s");
    sub_A7540();
    sub_8A2C();
    sub_A76C0();

    v26 = sub_A7870(v18, v19, v20, v21, v22, v23, v24, v25, v49, v50, v51, v52, v53, v54, v56, v3, v1, v63, v65, v66);
    v27(v26);
    sub_A7218();
    sub_A7130(v67, v28);
    sub_A71D0();
    sub_A7130(v68, v29);
    v30 = sub_A78B4();
    v31(v30);
    (*(v5 + 8))(v64, v59);
    sub_8748(v61, &qword_1C5800, &unk_16F510);
    v32 = v57;
  }

  else
  {

    v41 = sub_A7870(v33, v34, v35, v36, v37, v38, v39, v40, v49, v50, v51, v52, v53, v54, v55, v58, v60, v62, v65, v66);
    v42(v41);
    sub_A7218();
    sub_A7130(v67, v43);
    sub_A71D0();
    sub_A7130(v68, v44);
    v45 = sub_A78B4();
    v46(v45);
    (*(v5 + 8))(v2, v3);
    sub_8748(v1, &qword_1C5800, &unk_16F510);
    v32 = v4;
  }

  sub_8748(v32, &qword_1C57F8, &unk_172510);
  sub_A77D4(*(v0 + 192));
  sub_A72B4();
  sub_A74E8();

  sub_C9BC();
  sub_A78CC();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_A697C(char a1, void *a2)
{
  if (sub_208C0(a1) == 0xD000000000000027 && 0x800000000017C350 == v4)
  {
  }

  else
  {
    v6 = sub_16E6BC();

    if ((v6 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  [a2 minimum];
  v8 = v7;
  [a2 maximum];
  if (v8 != v9)
  {
LABEL_14:
    [a2 average];
    v14 = v13;
    v15 = sub_A6F70(a2);
    v17 = sub_99F0C(v15, v16, a1, v14);

    return *&v17;
  }

LABEL_9:
  if (sub_208C0(a1) == 0xD000000000000027 && 0x800000000017C350 == v10)
  {
  }

  else
  {
    v12 = sub_16E6BC();

    if ((v12 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  return 0;
}

double sub_A6AD8(char a1, uint64_t a2, void *a3)
{
  if (sub_208C0(a1) == 0xD00000000000002CLL && 0x800000000017C130 == v4)
  {
  }

  else
  {
    v6 = sub_16E6BC();

    if ((v6 & 1) == 0)
    {
      return result;
    }
  }

  if (sub_15EE1C() >= 3u)
  {
    v8 = &selRef_average;
    if ((sub_15C380() & 1) == 0)
    {
      [a3 average];
      if (v9 <= 0.0)
      {
        v8 = &selRef_mostRecent;
      }
    }
  }

  else
  {
    v8 = &selRef_average;
  }

  [a3 *v8];
  return result;
}

uint64_t sub_A6BC4(uint64_t a1, char a2)
{
  v29 = a1;
  v3 = sub_16DBEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v15 = sub_16D5CC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {
    sub_A7028();
    if (sub_369C(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v19, v14, v15);
      v25 = sub_16D2DC();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      sub_16D2CC();
      sub_16D40C();

      (*(v16 + 16))(v12, v19, v15);
      sub_214C(v12, 0, 1, v15);
      sub_16D3FC();

      sub_8748(v12, &qword_1C5800, &unk_16F510);
      v24 = sub_16D3EC();

      (*(v16 + 8))(v19, v15);
      return v24;
    }

    sub_8748(v14, &qword_1C5800, &unk_16F510);
  }

  v20 = sub_16DBBC();
  swift_beginAccess();
  (*(v4 + 16))(v7, v20, v3);
  v21 = sub_16DBDC();
  v22 = sub_16E36C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&def_259DC, v21, v22, "GenerateQueryResponseOutput: In getDialogPersonHeight value or unit is nil", v23, 2u);
  }

  (*(v4 + 8))(v7, v3);
  return 0;
}

uint64_t sub_A6F70(void *a1)
{
  v1 = [a1 unit];
  if (v1)
  {
    v2 = v1;
    sub_16E1BC();
  }

  return sub_8B9C();
}

uint64_t sub_A6FD0()
{
  sub_A78A8();
  v3 = sub_2440(v1, v2);
  sub_8B38(v3);
  v5 = *(v4 + 24);
  v6 = sub_8B9C();
  v7(v6);
  return v0;
}

uint64_t sub_A7028()
{
  sub_A78A8();
  v3 = sub_2440(v1, v2);
  sub_8B38(v3);
  v5 = *(v4 + 16);
  v6 = sub_8B9C();
  v7(v6);
  return v0;
}

uint64_t sub_A7080()
{
  sub_A78A8();
  v2 = v1(0);
  sub_8B38(v2);
  v4 = *(v3 + 32);
  v5 = sub_8B9C();
  v6(v5);
  return v0;
}

uint64_t sub_A70D8()
{
  sub_A78A8();
  v2 = v1(0);
  sub_8B38(v2);
  v4 = *(v3 + 16);
  v5 = sub_8B9C();
  v6(v5);
  return v0;
}

uint64_t sub_A7130(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_8B38(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_A7188()
{
  result = qword_1C6C70;
  if (!qword_1C6C70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C6C70);
  }

  return result;
}

uint64_t sub_A72B4()
{
  v2 = v0[60];
  result = v0[61];
  v3 = v0[58];
  v4 = v0[59];
  v6 = v0[56];
  v5 = v0[57];
  v8 = v0[54];
  v7 = v0[55];
  v10 = v0[52];
  v9 = v0[53];
  v11 = v0[51];
  v12 = v0[48];
  return result;
}

uint64_t sub_A72D4()
{
  v2 = v0[52];
  result = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[49];
  v7 = v0[45];
  v6 = v0[46];
  v8 = v0[44];
  v9 = v0[41];
  v10 = v0[42];
  v11 = v0[39];
  v12 = v0[40];
  return result;
}

uint64_t sub_A72F4()
{
  v2 = v0[49];
  result = v0[50];
  v3 = v0[47];
  v4 = v0[48];
  v5 = v0[46];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];
  v10 = v0[38];
  v9 = v0[39];
  v11 = v0[36];
  v12 = v0[37];
  return result;
}

uint64_t sub_A7314()
{
  v2 = v0[51];
  result = v0[52];
  v4 = v0[49];
  v3 = v0[50];
  v5 = v0[48];
  v7 = v0[44];
  v6 = v0[45];
  v8 = v0[43];
  v9 = v0[40];
  v10 = v0[41];
  v11 = v0[38];
  v12 = v0[39];
  return result;
}

void sub_A7364(uint64_t a1@<X8>)
{
  v4 = v3 + a1;
  *v4 = v2;
  *(v4 + 8) = v1;
}

uint64_t sub_A7374()
{
  v4 = v0[36];
  v5 = v0[35];
  v6 = v0[34];
  v7 = v0[33];
  v8 = v0[32];
  v9 = v0[31];
  v10 = v0[30];
  v11 = v0[29];
  v12 = v0[28];
  *(v1 - 80) = v0[27];
}

uint64_t sub_A73B4()
{

  return swift_once();
}

uint64_t sub_A73E4()
{
  v2 = v0[53];
  result = v0[54];
  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[50];
  v6 = v0[46];
  v7 = v0[47];
  v9 = v0[44];
  v8 = v0[45];
  v10 = v0[43];
  v11 = v0[39];
  v12 = v0[40];
  return result;
}

uint64_t sub_A7404()
{
  v3 = v0[34];
  v4 = v0[33];
  v5 = v0[32];
  v6 = v0[31];
  v7 = v0[30];
  v8 = v0[29];
  v9 = v0[28];
  v10 = v0[27];
}

void sub_A7438(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void sub_A7474()
{
  v11 = v0[63];
  v12 = v0[62];
  v2 = v0[61];
  v3 = v0[58];
  v4 = v0[50];
  v5 = v0[51];
  v6 = v0[48];
  v7 = v0[49];
  v8 = v0[47];
  *(v1 - 96) = v0[46];
  *(v1 - 88) = v6;
  *(v1 - 104) = v0[45];
  v13 = v0[41];
  v9 = v0[27];
  v10 = v0[30];
}

uint64_t sub_A74B4()
{
  sub_2D64(v0);
}

uint64_t sub_A74E8()
{
  v5 = v0[45];
  v6 = v0[44];
  v7 = v0[43];
  v8 = v0[41];
  v9 = v0[40];
  v10 = v0[39];
  v11 = v0[38];
  v12 = v0[37];
  v13 = v0[35];
  v14 = v0[34];
  v15 = v0[33];
  v16 = v0[32];
  v3 = v0[30];
  *(v1 - 104) = v0[31];
  *(v1 - 96) = v3;
  *(v1 - 88) = v0[29];
}

uint64_t sub_A7578()
{

  return swift_beginAccess();
}

uint64_t sub_A7598()
{

  return swift_beginAccess();
}

uint64_t sub_A75B8()
{

  return swift_slowAlloc();
}

uint64_t sub_A75D4()
{
  v3 = v0[37];
  v4 = v0[36];
  v5 = v0[35];
  v6 = v0[34];
  v7 = v0[33];
  v8 = v0[32];
  v9 = v0[31];
  v10 = v0[30];
  v11 = v0[29];
  v12 = v0[28];
}

uint64_t sub_A7620()
{

  return swift_slowAlloc();
}

BOOL sub_A763C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

double sub_A7658()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0;
  return result;
}

double sub_A7668()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0;
  return result;
}

uint64_t sub_A7678(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  return v2 + 16;
}

void sub_A768C()
{
  v1 = v0[73];
  v2 = v0[58];
  v3 = v0[53];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[47];
  v9 = v0[54];
  v10 = v0[46];
  v7 = v0[26];
  v8 = v0[29];
}

uint64_t sub_A76C0()
{
}

uint64_t sub_A7704()
{

  return swift_beginAccess();
}

void sub_A7720(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_A7740(uint64_t a1)
{

  return sub_214C(v2, v1, 1, a1);
}

uint64_t sub_A776C()
{

  return sub_8748(v1, v0, v2);
}

uint64_t sub_A7788()
{

  return sub_8748(v1, v0, v2);
}

double sub_A77D4@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_A780C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  v5 = *(v2 + 208);
  return v2 + 16;
}

uint64_t sub_A7830()
{

  return sub_16E23C();
}

uint64_t *sub_A784C(uint64_t a1)
{
  *(v1 + 48) = a1;

  return sub_9910((v1 + 16));
}

uint64_t sub_A78B4()
{
  v2 = *(v0 + 8);
  v4 = *(v1 - 96);
  return *(v1 - 88);
}

uint64_t sub_A792C()
{
  v4 = *(v2 + 80);

  return sub_8748(v2 + 56, v1, v0);
}

void sub_A794C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t sub_A796C()
{

  return sub_A7028();
}

void sub_A798C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 0xCu);
}

unint64_t sub_A79AC(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_17548();
}

void sub_A79E8(void *a1)
{
  v3 = v1;
  v5 = sub_2440(&qword_1C57E0, &unk_171C60);
  v6 = sub_4348(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  sub_887C();
  v11 = v9 - v10;
  v13 = __chkstk_darwin(v12);
  v15 = &v33 - v14;
  __chkstk_darwin(v13);
  sub_A9074();
  __chkstk_darwin(v16);
  v18 = &v33 - v17;
  v19 = [v3 start];
  if (v19)
  {
    v20 = v19;
    sub_16BF3C();

    v21 = sub_16BF5C();
    v22 = 0;
  }

  else
  {
    v21 = sub_16BF5C();
    v22 = 1;
  }

  v23 = 1;
  sub_214C(v18, v22, 1, v21);
  v24 = [v3 end];
  if (v24)
  {
    v25 = v24;
    sub_16BF3C();

    v23 = 0;
  }

  v26 = sub_16BF5C();
  v27 = 1;
  sub_214C(v2, v23, 1, v26);
  v28 = [a1 sampleStartDate];
  if (v28)
  {
    v29 = v28;
    sub_16BF3C();

    v27 = 0;
  }

  v30 = 1;
  sub_214C(v15, v27, 1, v26);
  v31 = [a1 sampleEndDate];
  if (v31)
  {
    v32 = v31;
    sub_16BF3C();

    v30 = 0;
  }

  sub_214C(v11, v30, 1, v26);
  type metadata accessor for WellnessTime(0);
  sub_15BF80();
}

uint64_t sub_A7C24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a1;
  v7 = sub_2440(&qword_1C57E0, &unk_171C60);
  v8 = sub_4348(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v68 = &v64 - v11;
  v12 = sub_16BF5C();
  v13 = sub_42F0(v12);
  v72 = v14;
  v73 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_887C();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  sub_A90BC();
  __chkstk_darwin(v21);
  sub_76B1C();
  __chkstk_darwin(v22);
  sub_8AC0();
  v71 = v23;
  sub_89B4();
  v25 = __chkstk_darwin(v24);
  v27 = &v64 - v26;
  __chkstk_darwin(v25);
  v29 = &v64 - v28;
  v30 = sub_2440(&qword_1C57F8, &unk_172510);
  v31 = sub_4348(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v70 = &v64 - v34;
  v35 = sub_2440(&qword_1C5690, &dword_16F320);
  v36 = sub_4348(v35);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  sub_887C();
  sub_A9074();
  __chkstk_darwin(v39);
  v41 = &v64 - v40;
  v42 = sub_16BD9C();
  sub_214C(v41, 1, 1, v42);
  v43 = sub_A8F94(v2);
  if (!v44 || (v45 = sub_21AE8(v43, v44), v45 == 205))
  {
    sub_C878(v41, &qword_1C5690, &dword_16F320);
    v46 = sub_16BE9C();
    return sub_214C(a2, 1, 1, v46);
  }

  v66 = v45;
  v67 = a2;
  v48 = [v2 start];
  if (v48)
  {
    v49 = v48;
    sub_16BF3C();

    v65 = *(v72 + 32);
    v65(v29, v27, v73);
    v50 = [v2 end];
    if (v50)
    {
      v51 = v50;
      sub_16BF3C();

      v65(v71, v4, v73);
      v52 = v72;
      v53 = v73;
      v54 = *(v72 + 16);
      v54(v5, v29, v73);
      v54(v19, v71, v53);
      sub_16BD5C();
      sub_C878(v41, &qword_1C5690, &dword_16F320);
      sub_214C(v3, 0, 1, v42);
      sub_A8FF8(v3, v41, &qword_1C5690, &dword_16F320);
      v55 = v70;
      sub_12093C(v66, v41, v70);
      v56 = *(v52 + 8);
      v56(v71, v53);
      v56(v29, v53);
      sub_C878(v41, &qword_1C5690, &dword_16F320);
      goto LABEL_12;
    }

    (*(v72 + 8))(v29, v73);
  }

  if (v69)
  {
    v57 = [v69 sampleEndDate];
    v58 = v67;
    v55 = v70;
    if (v57)
    {
      v59 = v57;
      v60 = v68;
      sub_16BF3C();

      v61 = 0;
      v62 = v73;
    }

    else
    {
      v61 = 1;
      v62 = v73;
      v60 = v68;
    }

    sub_214C(v60, v61, 1, v62);
    sub_1218BC(v66, v60, v55);
    sub_C878(v60, &qword_1C57E0, &unk_171C60);
    sub_C878(v41, &qword_1C5690, &dword_16F320);
    return sub_A8FF8(v55, v58, &qword_1C57F8, &unk_172510);
  }

  sub_C878(v41, &qword_1C5690, &dword_16F320);
  v63 = sub_16BE9C();
  v55 = v70;
  sub_214C(v70, 1, 1, v63);
LABEL_12:
  v58 = v67;
  return sub_A8FF8(v55, v58, &qword_1C57F8, &unk_172510);
}

uint64_t sub_A8154(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 56) = a1;
  v3 = sub_16D5CC();
  *(v2 + 24) = v3;
  v4 = *(v3 - 8);
  *(v2 + 32) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 40) = swift_task_alloc();

  return _swift_task_switch(sub_A8218, 0, 0);
}

uint64_t sub_A8218()
{
  v1 = sub_A6F70(*(v0 + 16));
  if (v2)
  {
    v3 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v3 = v1 & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v5 = *(v0 + 32);
      v4 = *(v0 + 40);
      v6 = *(v0 + 24);
      sub_16E23C();

      v7 = sub_16D5BC();
      v9 = v8;
      (*(v5 + 8))(v4, v6);
      v10 = *(v0 + 40);

      v11 = *(v0 + 8);

      return v11(v7, v9);
    }
  }

  v13 = swift_task_alloc();
  *(v0 + 48) = v13;
  *v13 = v0;
  v13[1] = sub_A8378;
  v14 = *(v0 + 16);
  v15 = *(v0 + 56);

  return sub_A8D40(v15);
}

uint64_t sub_A8378(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 48);
  v10 = *v2;

  v7 = *(v5 + 40);

  v8 = *(v10 + 8);

  return v8(a1, a2);
}

uint64_t sub_A84A0(void *a1)
{
  v5 = v1;
  v103 = sub_16BF5C();
  v7 = sub_42F0(v103);
  v105 = v8;
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v104 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2440(&qword_1C57E0, &unk_171C60);
  v13 = sub_4348(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_887C();
  v18 = v16 - v17;
  v20 = __chkstk_darwin(v19);
  v22 = &v98 - v21;
  __chkstk_darwin(v20);
  sub_76B1C();
  v24 = __chkstk_darwin(v23);
  v26 = &v98 - v25;
  __chkstk_darwin(v24);
  sub_8AC0();
  v99 = v27;
  sub_89B4();
  __chkstk_darwin(v28);
  sub_8AC0();
  v100 = v29;
  sub_89B4();
  __chkstk_darwin(v30);
  sub_8AC0();
  v101 = v31;
  sub_89B4();
  __chkstk_darwin(v32);
  sub_8AC0();
  v102 = v33;
  sub_89B4();
  __chkstk_darwin(v34);
  sub_A9074();
  v36 = __chkstk_darwin(v35);
  v38 = &v98 - v37;
  __chkstk_darwin(v36);
  sub_A90BC();
  __chkstk_darwin(v39);
  v41 = &v98 - v40;
  if (!a1)
  {
    v50 = sub_16D38C();
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    sub_16D37C();
    v53 = v5;
    v54 = [v5 start];
    if (v54)
    {
      v55 = v54;
      sub_16BF3C();

      v56 = 0;
    }

    else
    {
      v56 = 1;
    }

    v83 = v103;
    sub_214C(v3, v56, 1, v103);
    sub_A8FF8(v3, v26, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v26, 1, v83))
    {
      sub_C878(v26, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      v84 = sub_A90D0();
      v85(v84, v26, v83);
      sub_C878(v26, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      v86 = *(v3 + 8);
      v87 = sub_C9C8();
      v88(v87);
    }

    sub_16D35C();

    v89 = [v53 end];
    if (v89)
    {
      v90 = v89;
      sub_16BF3C();

      v91 = 0;
    }

    else
    {
      v91 = 1;
    }

    sub_214C(v18, v91, 1, v83);
    sub_A8FF8(v18, v22, &qword_1C57E0, &unk_171C60);
    if (sub_369C(v22, 1, v83))
    {
      sub_C878(v22, &qword_1C57E0, &unk_171C60);
    }

    else
    {
      v92 = sub_A90D0();
      v93(v92, v22, v83);
      sub_C878(v22, &qword_1C57E0, &unk_171C60);
      sub_16BF2C();
      v94 = *(v3 + 8);
      v95 = sub_C9C8();
      v96(v95);
    }

    sub_16D34C();

    v82 = sub_16D36C();
    goto LABEL_38;
  }

  v42 = sub_16D38C();
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();
  v45 = a1;
  sub_16D37C();
  v46 = [v5 start];
  v47 = v5;
  if (v46)
  {
    v48 = v46;
    sub_16BF3C();

    v49 = 0;
  }

  else
  {
    v49 = 1;
  }

  v57 = v103;
  sub_214C(v4, v49, 1, v103);
  sub_A8FF8(v4, v41, &qword_1C57E0, &unk_171C60);
  if (!sub_369C(v41, 1, v57))
  {
    v61 = sub_A9060();
    v62(v61, v41, v57);
    v63 = v41;
LABEL_15:
    sub_C878(v63, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v66 = *(v2 + 8);
    v67 = sub_C9C8();
    v68(v67);
    goto LABEL_16;
  }

  sub_C878(v41, &qword_1C57E0, &unk_171C60);
  v58 = [v45 sampleEndDate];
  if (v58)
  {
    v59 = v58;
    sub_16BF3C();

    v60 = 0;
  }

  else
  {
    v60 = 1;
  }

  sub_A9084(v58, v60);
  sub_A8FF8(v2, v38, &qword_1C57E0, &unk_171C60);
  if (!sub_A90A0())
  {
    v64 = sub_A9060();
    v65(v64, v38, v57);
    v63 = v38;
    goto LABEL_15;
  }

  sub_C878(v38, &qword_1C57E0, &unk_171C60);
LABEL_16:
  sub_16D35C();

  v69 = [v47 end];
  v70 = v101;
  v71 = v102;
  if (v69)
  {
    v72 = v69;
    sub_16BF3C();

    v73 = 0;
  }

  else
  {
    v73 = 1;
  }

  sub_A9084(v69, v73);
  sub_A8FF8(v70, v71, &qword_1C57E0, &unk_171C60);
  if (!sub_A90A0())
  {
    goto LABEL_25;
  }

  sub_C878(v71, &qword_1C57E0, &unk_171C60);
  v74 = [v45 sampleEndDate];
  if (v74)
  {
    v75 = v74;
    v70 = v99;
    sub_16BF3C();

    v76 = 0;
  }

  else
  {
    v76 = 1;
    v70 = v99;
  }

  v71 = v100;
  sub_A9084(v74, v76);
  sub_A8FF8(v70, v71, &qword_1C57E0, &unk_171C60);
  if (sub_A90A0())
  {
    sub_C878(v71, &qword_1C57E0, &unk_171C60);
  }

  else
  {
LABEL_25:
    v77 = sub_A9060();
    v78(v77, v71, v57);
    sub_C878(v71, &qword_1C57E0, &unk_171C60);
    sub_16BF2C();
    v79 = *(v70 + 8);
    v80 = sub_C9C8();
    v81(v80);
  }

  sub_16D34C();

  v82 = sub_16D36C();

LABEL_38:

  return v82;
}

uint64_t sub_A8C8C(unsigned __int8 a1)
{
  if (a1 == 193 || a1 == 159)
  {
    [v1 minimum];
    v4 = v3;
    [v1 maximum];
    if (v4 == v5)
    {
      return 0;
    }
  }

  [v1 average];
  v8 = v7;
  v9 = sub_A6F70(v1);
  v11 = sub_99F0C(v9, v10, a1, v8);

  return *&v11;
}

uint64_t sub_A8D40(unsigned __int8 a1)
{
  v2 = a1;
  if (a1 == 147 || a1 == 150)
  {
    v4 = 0xE200000000000000;
    v3 = 26989;
    goto LABEL_11;
  }

  v3 = 5066818;
  v4 = 0xE300000000000000;
  if (v2 == 159)
  {
LABEL_11:
    v7 = *(v1 + 8);

    return v7(v3, v4);
  }

  if (v2 != 174)
  {
    v5 = 0xE000000000000000;
    v6 = 0x7370657473;
    if (v2 == 184)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v6 = 0;
    }

    if (v2 != 193)
    {
      v3 = v6;
      v4 = v5;
    }

    goto LABEL_11;
  }

  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_A8E88;

  return sub_67BD8();
}

uint64_t sub_A8E88(uint64_t a1, unint64_t a2)
{
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (a2)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  if (a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  v9 = *(v6 + 8);

  return v9(v7, v8);
}

uint64_t sub_A8F94(void *a1)
{
  v1 = [a1 quantityIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16E1BC();

  return v3;
}

uint64_t sub_A8FF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2440(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_A9084(uint64_t a1, uint64_t a2)
{

  return sub_214C(v3, a2, 1, v2);
}

uint64_t sub_A90A0()
{

  return sub_369C(v1, 1, v0);
}

uint64_t sub_A90E4(uint64_t a1, void *a2, uint64_t a3)
{
  v94 = a3;
  v95 = a1;
  v96 = a2;
  v3 = sub_16D63C();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v91 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_16BF5C();
  v6 = sub_42F0(v93);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_16DBEC();
  v14 = sub_42F0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v14);
  v92 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v89 = &v89 - v22;
  __chkstk_darwin(v21);
  v24 = &v89 - v23;
  v25 = sub_16DBBC();
  swift_beginAccess();
  v26 = *(v16 + 16);
  v97 = v13;
  v90 = v26;
  v26(v24, v25, v13);
  v27 = sub_16DBDC();
  v28 = sub_16E36C();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&def_259DC, v27, v28, "Getting Med Logging Flow", v29, 2u);
  }

  v30 = *(v16 + 8);
  v30(v24, v97);
  sub_16BF4C();
  v31 = v95;
  if (isLoggingTimeframeToday(from:todayDate:)(v95, v12))
  {
    (*(v8 + 8))(v12, v93);
    v32 = v31;
  }

  else
  {
    v33 = isLoggingTimeframeNone(from:)();
    (*(v8 + 8))(v12, v93);
    v32 = v31;
    if ((v33 & 1) == 0)
    {
      sub_8284(v94, &v110[1]);
      sub_8388(v96, v111);
      v67 = sub_16C58C();
      v68 = *(v67 + 48);
      v69 = *(v67 + 52);
      swift_allocObject();
      v70 = sub_16C57C();
      v115 = &protocol witness table for ResponseFactory;
      v114 = v67;
      v113 = v70;
      type metadata accessor for WellnessLoggingCATsSimple();
      sub_16D62C();
      sub_93198();
      v71 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_16D62C();
      sub_93198();
      v72 = sub_16D58C();
      v73 = sub_16D8AC();
      sub_A9DC8(v73);
      v74 = sub_16D89C();
      v120 = &protocol witness table for MedStorageHelper;
      v119 = v73;
      v118 = v74;
      v110[0] = v32;
      v112 = 1;
      v116 = v71;
      v117 = v72;
      v75 = qword_1C55F0;
      goto LABEL_20;
    }
  }

  v34 = v96[3];
  v35 = v96[4];
  sub_2D20(v96, v34);
  (*(v35 + 8))(v110, v34, v35);
  isSpecificMedRequest(from:deviceState:)();
  v37 = v36;
  sub_2D64(v110);
  if (v37)
  {
    hasDateEdit(from:)();
    v39 = v38;
    v40 = hasTimeEdit(from:)();
    v41 = v40;
    if ((v39 & 1) == 0 && !v40)
    {
      swift_beginAccess();
      v42 = v89;
      v90(v89, v25, v97);
      v43 = sub_16DBDC();
      v44 = sub_16E36C();
      if (os_log_type_enabled(v43, v44))
      {
        *swift_slowAlloc() = 0;
        sub_456DC(&def_259DC, v45, v46, "Got specific med request without edits, returning SpecificMedLoggingFlow.");
      }

      v30(v42, v97);
      sub_8388(v96, v121);
      sub_8284(v94, v110);
      v47 = sub_16C58C();
      v107 = 0u;
      v108 = 0u;
      v109 = 0;
      v48 = *(v47 + 48);
      v49 = *(v47 + 52);
      swift_allocObject();
      v50 = sub_16C57C();
      type metadata accessor for WellnessLoggingCATsSimple();
      sub_16D62C();
      sub_93198();
      v51 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_16D62C();
      sub_93198();
      v52 = sub_16D58C();
      v53 = sub_16DB6C();
      v104 = 0u;
      v105 = 0u;
      v106 = 0;
      v54 = objc_allocWithZone(v53);
      v55 = sub_16DB5C();
      v56 = sub_16D8AC();
      v104 = 0u;
      v105 = 0u;
      v106 = 0;
      v57 = objc_allocWithZone(v56);
      v58 = sub_16D89C();
      type metadata accessor for SpecificMedLoggingFlow();
      v59 = swift_allocObject();
      *(&v105 + 1) = v47;
      v106 = &protocol witness table for ResponseFactory;
      *&v104 = v50;
      v102 = v56;
      v103 = &protocol witness table for MedStorageHelper;
      *&v101 = v58;
      *(v59 + 16) = v95;
      sub_8388(v121, v59 + 24);
      sub_8284(v110, v59 + 64);
      *(v59 + 224) = 0u;
      *(v59 + 240) = 0u;
      *(v59 + 256) = 0u;
      *(v59 + 272) = 0u;
      *(v59 + 288) = -64;
      sub_17464(&v104, v59 + 296);
      *(v59 + 336) = v51;
      *(v59 + 344) = v52;
      *(v59 + 352) = v55;
      sub_17464(&v101, v59 + 400);
      if (*(&v108 + 1))
      {

        sub_C938(v110);
        sub_2D64(v121);
        sub_17464(&v107, &v98);
      }

      else
      {
        v99 = &type metadata for MedsCorrectionsFlowProvider;
        v100 = &off_1BB2F8;
        v86 = swift_allocObject();
        *&v98 = v86;
        sub_17464(v121, v86 + 16);
        memcpy((v86 + 56), v110, 0xA0uLL);
        v87 = *(&v108 + 1);

        if (v87)
        {
          sub_A9CF8(&v107);
        }
      }

      sub_17464(&v98, v59 + 360);
      v110[0] = v59;
      if (qword_1C55F0 != -1)
      {
        sub_A9DA8();
      }

      *&v121[0] = sub_16C1AC();
      sub_16C29C();
      sub_A9D60(&qword_1C67C8, type metadata accessor for SpecificMedLoggingFlow);
      v85 = sub_16C35C();

LABEL_28:
      v110[0] = v85;
      sub_2440(&qword_1C8AF0, &qword_1744A8);
      sub_92508();
      v66 = sub_16C32C();
      goto LABEL_29;
    }

    sub_8284(v94, &v110[1]);
    sub_8388(v96, v111);
    v76 = v32;
    v77 = sub_16C58C();
    v78 = *(v77 + 48);
    v79 = *(v77 + 52);
    swift_allocObject();
    v80 = sub_16C57C();
    v115 = &protocol witness table for ResponseFactory;
    v114 = v77;
    v113 = v80;
    type metadata accessor for WellnessLoggingCATsSimple();
    sub_16D62C();
    v81 = sub_16D5FC();
    type metadata accessor for WellnessCATs();
    sub_16D62C();
    v82 = sub_16D58C();
    v83 = sub_16D8AC();
    sub_A9DC8(v83);
    v84 = sub_16D89C();
    v120 = &protocol witness table for MedStorageHelper;
    v119 = v83;
    v118 = v84;
    v110[0] = v76;
    LOBYTE(v112) = v39 & 1;
    HIBYTE(v112) = v41;
    v116 = v81;
    v117 = v82;
    v75 = qword_1C55F0;
LABEL_20:

    if (v75 != -1)
    {
      sub_A9DA8();
    }

    *&v121[0] = sub_16C1AC();
    sub_16C29C();
    sub_87F90();
    v85 = sub_16C35C();

    sub_A9C4C(v110);
    goto LABEL_28;
  }

  swift_beginAccess();
  v90(v92, v25, v97);
  v60 = sub_16DBDC();
  v61 = sub_16E36C();
  if (os_log_type_enabled(v60, v61))
  {
    *swift_slowAlloc() = 0;
    sub_456DC(&def_259DC, v62, v63, "Got generic med request, returning GenericMedLoggingFlow.");
  }

  v30(v92, v97);
  sub_8388(v96, &v107);
  sub_8284(v94, v110);
  v106 = 0;
  v104 = 0u;
  v105 = 0u;
  memset(v121, 0, sizeof(v121));
  v122 = -64;
  type metadata accessor for GenericMedLoggingFlow();
  swift_allocObject();

  v110[0] = sub_25AE8(v64, &v107, v110, v121, &v104);
  if (qword_1C55F0 != -1)
  {
    sub_A9DA8();
  }

  *&v107 = sub_16C1AC();
  sub_16C29C();
  sub_A9D60(&qword_1C67D0, type metadata accessor for GenericMedLoggingFlow);
  v65 = sub_16C35C();

  v110[0] = v65;
  sub_2440(&qword_1C8AF0, &qword_1744A8);
  sub_92508();
  v66 = sub_16C32C();
LABEL_29:

  return v66;
}

uint64_t sub_A9CA0()
{
  sub_2D64(v0 + 2);
  sub_2D64(v0 + 7);
  sub_2D64(v0 + 12);
  sub_2D64(v0 + 17);
  sub_2D64(v0 + 22);

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_A9CF8(uint64_t a1)
{
  v2 = sub_2440(&qword_1C67D8, &unk_176890);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A9D60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_A9DA8()
{

  return swift_once();
}

id sub_A9DC8(Class a1)
{
  *(v1 + 608) = 0u;
  *(v1 + 624) = 0u;
  *(v2 - 144) = 0;

  return objc_allocWithZone(a1);
}

uint64_t sub_A9DF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 280))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_A9E30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_A9EC8()
{
  sub_9218C();

  return sub_16C33C();
}

uint64_t sub_A9F1C(uint64_t a1)
{
  v2[94] = v1;
  v2[93] = a1;
  v3 = sub_16D7AC();
  v2[95] = v3;
  sub_4348(v3);
  v5 = *(v4 + 64);
  v2[96] = sub_8BC0();
  v6 = sub_16D6BC();
  v2[97] = v6;
  sub_4348(v6);
  v8 = *(v7 + 64);
  v2[98] = sub_8BC0();
  v9 = sub_2440(&qword_1C8E38, &qword_174C48);
  sub_4348(v9);
  v11 = *(v10 + 64);
  v2[99] = sub_8BC0();
  v12 = sub_2440(&qword_1C8E40, &unk_174C50);
  sub_4348(v12);
  v14 = *(v13 + 64);
  v2[100] = sub_8BC0();
  v15 = sub_16BE9C();
  v2[101] = v15;
  v16 = *(v15 - 8);
  v2[102] = v16;
  v17 = *(v16 + 64) + 15;
  v2[103] = swift_task_alloc();
  v2[104] = swift_task_alloc();
  v18 = sub_16DBEC();
  v2[105] = v18;
  v19 = *(v18 - 8);
  v2[106] = v19;
  v20 = *(v19 + 64) + 15;
  v2[107] = swift_task_alloc();
  v2[108] = swift_task_alloc();
  v21 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v21);
  v23 = *(v22 + 64);
  v2[109] = sub_8BC0();
  v24 = sub_16D63C();
  sub_4348(v24);
  v26 = *(v25 + 64);
  v2[110] = sub_8BC0();
  v27 = sub_2440(&qword_1C6850, &unk_172440);
  sub_4348(v27);
  v29 = *(v28 + 64) + 15;
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();

  return _swift_task_switch(sub_AA180, 0, 0);
}

uint64_t sub_AA180()
{
  v108 = v0;
  v1 = *(v0 + 752);
  sub_AAC04();
  v3 = *(v2 + 8);
  v4 = sub_17970();
  v5(v4);
  v6 = *(v0 + 560);
  sub_2D20((v0 + 528), *(v0 + 552));
  sub_17970();
  if (sub_16C40C())
  {
    sub_2D64((v0 + 528));
    goto LABEL_4;
  }

  sub_AAC04();
  v8 = *(v7 + 8);
  v9 = sub_17970();
  v10(v9);
  v11 = *(v0 + 600);
  sub_2D20((v0 + 568), *(v0 + 592));
  sub_17970();
  v12 = sub_16C3FC();
  sub_2D64((v0 + 568));
  sub_2D64((v0 + 528));
  if (v12)
  {
LABEL_4:
    if ((sub_16D67C() & 1) == 0)
    {
      v54 = *(v0 + 880);
      v55 = *(v0 + 744);
      sub_8388((v1 + 30), v0 + 432);
      v56 = sub_16C58C();
      v57 = *(v56 + 48);
      v58 = *(v56 + 52);
      swift_allocObject();
      v59 = sub_16C57C();
      *(v0 + 496) = v56;
      *(v0 + 504) = &protocol witness table for ResponseFactory;
      *(v0 + 472) = v59;
      type metadata accessor for WellnessCATsSimple();
      sub_16D62C();
      v60 = sub_16D5FC();
      type metadata accessor for WellnessCATs();
      sub_16D62C();
      v61 = sub_16D58C();
      *(v0 + 512) = v60;
      *(v0 + 520) = v61;
      sub_89600();
      sub_16C4EC();
      sub_9256C(v0 + 432);
      goto LABEL_17;
    }

LABEL_5:
    v13 = *(v0 + 896);
    v14 = *(v0 + 872);
    v15 = *(v0 + 848);
    v101 = *(v0 + 856);
    v104 = *(v0 + 840);
    v99 = *(v0 + 832);
    v16 = *(v0 + 800);
    v17 = *(v0 + 792);
    v18 = *(v0 + 752);
    v19 = sub_2D20(v18 + 5, v18[8]);
    v20 = v19[1];
    v21 = v19[2];
    v22 = v19[3];
    sub_15081C(*v19);
    sub_16E23C();
    v23 = sub_16D5CC();
    sub_214C(v14, 0, 1, v23);
    v24 = sub_16D66C();
    sub_1913C(v14, v24);

    sub_8748(v14, &qword_1C5800, &unk_16F510);
    v25 = v18[3];
    v26 = v18[4];
    sub_2D20(v18, v25);
    v27 = (*(v26 + 16))(v25, v26);
    v28 = &enum case for Route.logStateOfMind(_:);
    if (v27 != 1)
    {
      v28 = &enum case for Route.categoryRoom(_:);
    }

    v29 = *v28;
    v30 = sub_16D28C();
    sub_8B38(v30);
    (*(v31 + 104))(v16, v29, v30);
    sub_214C(v16, 0, 1, v30);
    v32 = sub_16D27C();
    sub_214C(v17, 1, 1, v32);
    sub_16BE4C();
    sub_8748(v17, &qword_1C8E38, &qword_174C48);
    sub_8748(v16, &qword_1C8E40, &unk_174C50);
    v33 = sub_16DBBC();
    swift_beginAccess();
    (*(v15 + 16))(v101, v33, v104);
    v34 = sub_16DBDC();
    v35 = sub_16E36C();
    if (os_log_type_enabled(v34, v35))
    {
      *swift_slowAlloc() = 0;
      sub_1B9D0(&def_259DC, v36, v37, "Preparing SequenceFlow for Output and AppPunchOut.");
    }

    v38 = *(v0 + 896);
    v39 = *(v0 + 888);
    v40 = *(v0 + 856);
    v41 = *(v0 + 848);
    v42 = *(v0 + 840);
    v96 = *(v0 + 816);
    v97 = *(v0 + 824);
    v98 = *(v0 + 808);
    v100 = *(v0 + 832);
    v43 = *(v0 + 784);
    v95 = *(v0 + 776);
    v44 = *(v0 + 768);
    v102 = *(v0 + 760);
    v105 = *(v0 + 744);

    (*(v41 + 8))(v40, v42);
    v45 = v1[33];
    v46 = v1[34];
    sub_2D20(v1 + 30, v45);
    (*(v46 + 16))(v107, v45, v46);
    sub_2440(&qword_1C5ED8, &unk_173090);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_172320;
    sub_3DE54(v38, v39);
    sub_8388((v1 + 30), v0 + 648);
    sub_16D6AC();
    sub_AABBC(&qword_1C6860, &type metadata accessor for OutputFlow);
    v48 = sub_16C32C();
    sub_AAB64(v43, &type metadata accessor for OutputFlow);
    *(v47 + 32) = v48;
    sub_AAC04();
    v50 = *(v49 + 16);
    v51 = sub_17970();
    v52(v51);
    (*(v96 + 16))(v97, v100, v98);
    sub_16D79C();
    sub_AABBC(&qword_1C6858, &type metadata accessor for AppPunchOutFlow);
    v53 = sub_16C32C();
    sub_AAB64(v44, &type metadata accessor for AppPunchOutFlow);
    *(v47 + 40) = v53;
    sub_16D6DC();
    swift_allocObject();
    *(v0 + 736) = sub_16D6CC();
    sub_AABBC(&qword_1C6868, &type metadata accessor for SequenceFlow);
    sub_16C4EC();
    (*(v96 + 8))(v100, v98);
    sub_8748(v38, &qword_1C6850, &unk_172440);

    goto LABEL_17;
  }

  sub_AAC04();
  v63 = *(v62 + 8);
  v64 = sub_17970();
  v65(v64);
  v66 = *(v0 + 640);
  sub_2D20((v0 + 608), *(v0 + 632));
  sub_17970();
  v67 = sub_16C41C();
  sub_2D64((v0 + 608));
  if (v67)
  {
    if ((sub_16D67C() & 1) == 0)
    {
      v68 = *(v0 + 752);
      v69 = *(v0 + 744);
      sub_8388((v1 + 30), v0 + 24);
      sub_8388(v68 + 40, v0 + 64);
      sub_8284(v68 + 80, v0 + 104);
      *(v0 + 16) = 132;
      *(v0 + 264) = 0;
      sub_3DF60();
      sub_16C4EC();
      sub_92798(v0 + 16);
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  v70 = *(v0 + 864);
  v71 = *(v0 + 848);
  v72 = *(v0 + 840);
  v73 = sub_16DBBC();
  swift_beginAccess();
  (*(v71 + 16))(v70, v73, v72);
  v74 = sub_16DBDC();
  v75 = sub_16E37C();
  if (os_log_type_enabled(v74, v75))
  {
    *swift_slowAlloc() = 0;
    sub_1B9D0(&def_259DC, v76, v77, "Could not create dialog on supported device, returning UnsupportedDeviceFlow");
  }

  v78 = *(v0 + 864);
  v79 = *(v0 + 848);
  v80 = *(v0 + 840);
  v81 = *(v0 + 752);
  v82 = *(v0 + 744);

  (*(v79 + 8))(v78, v80);
  sub_8284(v81 + 80, v0 + 272);
  sub_92614();
  sub_16C4EC();
  sub_92668(v0 + 272);
LABEL_17:
  v83 = *(v0 + 896);
  v84 = *(v0 + 888);
  v85 = *(v0 + 880);
  v86 = *(v0 + 872);
  v87 = *(v0 + 864);
  v88 = *(v0 + 856);
  v89 = *(v0 + 832);
  v90 = *(v0 + 824);
  v91 = *(v0 + 800);
  v92 = *(v0 + 792);
  v103 = *(v0 + 784);
  v106 = *(v0 + 768);

  v93 = *(v0 + 8);

  return v93();
}

uint64_t sub_AAACC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_3BB78;

  return sub_A9F1C(a1);
}

uint64_t sub_AAB64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_8B38(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_AABBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_AAC28(void *a1, __int128 *a2, __int128 *a3)
{
  v6 = swift_allocObject();
  sub_AAC80(a1, a2, a3);
  return v6;
}

uint64_t sub_AAC80(void *__src, __int128 *a2, __int128 *a3)
{
  memcpy((v3 + 16), __src, 0xA0uLL);
  sub_17464(a2, v3 + 176);
  sub_17464(a3, v3 + 216);
  return v3;
}

uint64_t sub_AACD8()
{
  v0 = sub_16DBEC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_16DBBC();
  sub_8B48();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_16DBDC();
  v7 = sub_16E36C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_1BA38();
    *v8 = 0;
    _os_log_impl(&def_259DC, v6, v7, "In MedNameDisambiguationStrategy's actionForInput().", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  return sub_16C47C();
}

uint64_t sub_AAE44()
{
  sub_8A88();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v4 = type metadata accessor for WellnessDisambiguateMedScheduleParameters(0);
  v1[13] = v4;
  v5 = *(*(v4 - 8) + 64);
  v1[14] = sub_8BC0();
  v6 = sub_16C46C();
  v1[15] = v6;
  sub_888C(v6);
  v1[16] = v7;
  v9 = *(v8 + 64) + 15;
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v10 = sub_16C7BC();
  v1[19] = v10;
  sub_888C(v10);
  v1[20] = v11;
  v13 = *(v12 + 64);
  v1[21] = sub_8BC0();
  v14 = sub_16DBEC();
  v1[22] = v14;
  sub_888C(v14);
  v1[23] = v15;
  v17 = *(v16 + 64);
  v1[24] = sub_8BC0();
  sub_8ACC();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_AAFC4()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = sub_16DBBC();
  sub_8B48();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_16DBDC();
  v6 = sub_16E36C();
  if (sub_1BA1C(v6))
  {
    *sub_1BA38() = 0;
    sub_1B9D0(&def_259DC, v7, v8, "MedScheduleDisambiguationStrategy: makePromptForDisambiguation");
    sub_1BA00();
  }

  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  v13 = v0[17];
  v12 = v0[18];
  v15 = v0[15];
  v14 = v0[16];
  v16 = v0[14];
  v30 = v0[12];
  v31 = v0[13];
  v28 = v0[21];
  v29 = v0[11];

  (*(v10 + 8))(v9, v11);
  sub_16C44C();
  (*(v14 + 16))(v13, v12, v15);
  sub_16C75C();
  (*(v14 + 8))(v12, v15);
  sub_16C79C();
  sub_2440(&qword_1C8F68, qword_174DA0);
  v17 = sub_16C74C();
  v0[25] = v17;
  v18 = sub_ABE94(v17);
  v0[26] = v18;
  v19 = *sub_2D20((v30 + 56), *(v30 + 80));
  v20 = v31[12];
  v21 = sub_16D5CC();

  sub_214C(v16 + v20, 1, 1, v21);
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v16 + 9) = 65792;
  *(v16 + 16) = v18;
  *(v16 + 24) = 0;
  *(v16 + 32) = 1;
  *(v16 + 40) = 0;
  *(v16 + 48) = 1;
  v22 = v16 + v31[13];
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = v16 + v31[14];
  *v23 = 0;
  *(v23 + 8) = 1;
  *(v16 + 40) = *(v17 + 16);
  *(v16 + 48) = 0;

  v24 = sub_7A35C();
  v0[27] = v24;
  v25 = *(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + 1);
  v32 = (&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:) + async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v26 = swift_task_alloc();
  v0[28] = v26;
  *v26 = v0;
  v26[1] = sub_AB2A0;

  return v32(0xD000000000000020, 0x800000000017E760, v24);
}

uint64_t sub_AB2A0()
{
  sub_8A88();
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 216);
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *(v7 + 232) = v6;
  *(v7 + 240) = v0;

  sub_8ACC();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_AB3C4()
{
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[21];
  v5 = v0[12];
  sub_ACB78(v0[14]);
  swift_bridgeObjectRelease_n();

  v6 = [v1 patternId];
  sub_16E1BC();

  sub_C9E0();
  sub_16C76C();
  sub_8388(v5 + 176, (v0 + 2));
  v7 = v0[5];
  v8 = v0[6];
  sub_2D20(v0 + 2, v7);
  v9 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v10 = swift_task_alloc();
  v0[31] = v10;
  *v10 = v0;
  v10[1] = sub_AB4FC;
  v11 = v0[29];
  v12 = v0[21];
  v13 = v0[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v13, v11, v12, v7, v8);
}

uint64_t sub_AB4FC()
{
  sub_8A88();
  v2 = *(*v1 + 248);
  v3 = *v1;
  sub_C990();
  *v4 = v3;
  *(v5 + 256) = v0;

  sub_8ACC();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_AB600()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[20];
  v3 = v0[21];
  v5 = v0[19];
  sub_ACB78(v0[14]);
  swift_bridgeObjectRelease_n();

  v6 = *(v4 + 8);
  v7 = sub_C9E0();
  v8(v7);
  v9 = v0[30];
  sub_ACBEC();

  sub_C9BC();

  return v10();
}

uint64_t sub_AB6C8()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);

  (*(v3 + 8))(v2, v4);
  sub_2D64((v0 + 16));

  sub_C9BC();

  return v8();
}

uint64_t sub_AB79C()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);

  (*(v2 + 8))(v1, v3);
  sub_2D64((v0 + 16));
  v4 = *(v0 + 256);
  sub_ACBEC();

  sub_C9BC();

  return v5();
}

uint64_t sub_AB858()
{
  sub_8A88();
  v0[23] = v1;
  v0[24] = v2;
  v3 = sub_16C7FC();
  v0[25] = v3;
  sub_888C(v3);
  v0[26] = v4;
  v6 = *(v5 + 64);
  v0[27] = sub_8BC0();
  v7 = sub_16C80C();
  v0[28] = v7;
  sub_888C(v7);
  v0[29] = v8;
  v10 = *(v9 + 64) + 15;
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v11 = sub_16DBEC();
  v0[32] = v11;
  sub_888C(v11);
  v0[33] = v12;
  v14 = *(v13 + 64) + 15;
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();
  sub_8ACC();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_AB9CC()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = sub_16DBBC();
  sub_8B48();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_16DBDC();
  v6 = sub_16E36C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_1BA38();
    *v7 = 0;
    _os_log_impl(&def_259DC, v5, v6, "MedScheduleDisambiguationStrategy: parseDisambiguationResponse", v7, 2u);
  }

  v8 = *(v0 + 288);
  v9 = *(v0 + 256);
  v10 = *(v0 + 264);
  v12 = *(v0 + 240);
  v11 = *(v0 + 248);
  v14 = *(v0 + 224);
  v13 = *(v0 + 232);
  v15 = *(v0 + 192);

  v16 = *(v10 + 8);
  v17 = sub_C9E0();
  v16(v17);
  sub_16C7CC();
  (*(v13 + 16))(v12, v11, v14);
  v77 = v16;
  if ((*(v13 + 88))(v12, v14) == enum case for Parse.directInvocation(_:))
  {
    v18 = *(v0 + 240);
    v19 = *(v0 + 216);
    v21 = *(v0 + 200);
    v20 = *(v0 + 208);
    (*(*(v0 + 232) + 96))(v18, *(v0 + 224));
    (*(v20 + 32))(v19, v18, v21);
    v22 = sub_16C7EC();
    if (v22)
    {
      sub_17400(0x656C756465686373, 0xEA00000000004449, v22, (v0 + 16));

      if (*(v0 + 40))
      {
        if (swift_dynamicCast())
        {
          v23 = *(v0 + 248);
          v24 = *(v0 + 224);
          v25 = *(v0 + 232);
          v27 = *(v0 + 208);
          v26 = *(v0 + 216);
          v28 = *(v0 + 200);
          v29 = *(v0 + 184);
          v30 = *(v0 + 160);
          *(v0 + 168) = *(v0 + 152);
          *(v0 + 176) = v30;
          sub_16C72C();
          v31 = *(v27 + 8);
          v32 = sub_C9E0();
          v33(v32);
          (*(v25 + 8))(v23, v24);

          goto LABEL_16;
        }

        goto LABEL_13;
      }
    }

    else
    {
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    sub_C878(v0 + 16, &qword_1C63E0, &unk_1717D0);
LABEL_13:
    v51 = *(v0 + 280);
    v52 = *(v0 + 256);
    sub_8B48();
    v53 = sub_ACBD4();
    v54(v53);
    v55 = sub_16DBDC();
    v56 = sub_16E36C();
    if (sub_1BA1C(v56))
    {
      *sub_1BA38() = 0;
      sub_1B9D0(&def_259DC, v57, v58, "error in parseDisambiguationResponse for medication schedule; could not unpack directInvocation.");
      sub_1BA00();
    }

    v59 = *(v0 + 280);
    v60 = *(v0 + 256);
    v61 = *(v0 + 264);
    v62 = *(v0 + 232);
    v75 = *(v0 + 224);
    v76 = *(v0 + 248);
    v63 = *(v0 + 208);
    v64 = *(v0 + 216);
    v65 = *(v0 + 200);
    v66 = *(v0 + 184);

    (v77)(v59, v60);
    *(v0 + 136) = 0;
    *(v0 + 144) = 0xE000000000000000;
    sub_16C72C();
    (*(v63 + 8))(v64, v65);
    (*(v62 + 8))(v76, v75);
    goto LABEL_16;
  }

  v34 = *(v0 + 272);
  v35 = *(v0 + 256);
  sub_8B48();
  v36 = sub_ACBD4();
  v37(v36);
  v38 = sub_16DBDC();
  v39 = sub_16E36C();
  if (sub_1BA1C(v39))
  {
    *sub_1BA38() = 0;
    sub_1B9D0(&def_259DC, v40, v41, "error in parsing disambiguation response for medication name.");
    sub_1BA00();
  }

  v43 = *(v0 + 264);
  v42 = *(v0 + 272);
  v45 = *(v0 + 248);
  v44 = *(v0 + 256);
  v47 = *(v0 + 232);
  v46 = *(v0 + 240);
  v48 = *(v0 + 224);
  v49 = *(v0 + 184);

  (v77)(v42, v44);
  *(v0 + 120) = 0;
  *(v0 + 128) = 0xE000000000000000;
  sub_16C72C();
  v50 = *(v47 + 8);
  v50(v45, v48);
  v50(v46, v48);
LABEL_16:
  v68 = *(v0 + 280);
  v67 = *(v0 + 288);
  v69 = *(v0 + 272);
  v71 = *(v0 + 240);
  v70 = *(v0 + 248);
  v72 = *(v0 + 216);

  sub_C9BC();

  return v73();
}

void *sub_ABE94(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_16E4FC();
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = v4[1];
      v9 = v4[2];
      v10 = v4[3];
      v11 = v4[4];
      v12 = v4[5];

      sub_ABFC4(v5, v6, v7, v8, v9, v10, v11, v12, v14);

      sub_16E4DC();
      v13 = _swiftEmptyArrayStorage[2];
      sub_16E50C();
      sub_16E51C();
      sub_16E4EC();
      v4 += 8;
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_ABFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v68[2] = a6;
  v68[1] = a5;
  v70 = a9;
  v73 = sub_16DBEC();
  v72 = *(v73 - 8);
  v11 = *(v72 + 64);
  __chkstk_darwin(v73);
  v71 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2440(&qword_1C5800, &unk_16F510);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v77 = v68 - v18;
  v19 = sub_16D5CC();
  v74 = *(v19 - 8);
  v20 = *(v74 + 64);
  v21 = __chkstk_darwin(v19);
  v76 = v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = v68 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = v68 - v27;
  __chkstk_darwin(v26);
  v75 = v68 - v29;
  sub_16E23C();
  v30 = v28;
  sub_16E23C();
  v31 = v25;
  sub_16E23C();
  v32 = a7 == 48 && a8 == 0xE100000000000000;
  if (!v32 && (sub_16E6BC() & 1) == 0)
  {
    v87 = 0x20646E6128;
    v88 = 0xE500000000000000;
    v93._countAndFlagsBits = a7;
    v93._object = a8;
    sub_16E26C(v93);
    v94._countAndFlagsBits = 0x2965726F6D20;
    v94._object = 0xE600000000000000;
    sub_16E26C(v94);
  }

  v33 = v77;
  v34 = v72;
  v35 = v71;
  sub_16E23C();

  v36 = sub_16D5BC();
  LOBYTE(v78[0]) = 0;
  v87 = v36;
  v88 = v37;
  v89 = xmmword_174C60;
  v90 = 0xBFF0000000000000;
  v91 = 0;
  v92 = xmmword_174C70;
  v82[0] = v36;
  v82[1] = v37;
  v83 = xmmword_174C60;
  v84 = 0xBFF0000000000000;
  v85 = 0;
  v86 = xmmword_174C70;
  sub_ACAC8(&v87, v79);
  sub_ACB24(v82);
  sub_8388(v70 + 216, v79);
  v38 = v80;
  v39 = v81;
  sub_2D20(v79, v80);
  (*(v39 + 8))(v78, v38, v39);
  sub_7BBDC(v78);
  v41 = v40;
  sub_ACB24(&v87);
  sub_2D64(v78);
  sub_2D64(v79);
  if (v41)
  {
    sub_16E23C();

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  sub_214C(v33, v42, 1, v19);
  v43 = sub_16DBBC();
  swift_beginAccess();
  v44 = v73;
  (*(v34 + 16))(v35, v43, v73);
  v45 = sub_16DBDC();
  v46 = sub_16E36C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&def_259DC, v45, v46, "Converted to string quartets.", v47, 2u);
  }

  (*(v34 + 8))(v35, v44);
  v48 = type metadata accessor for WellnessDialogStringQuartet.Builder(0);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  v51 = sub_BCA50();
  v52 = v74;
  v53 = *(v74 + 16);
  v69 = v30;
  v53(v17, v30, v19);
  sub_214C(v17, 0, 1, v19);
  v54 = OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_first;
  swift_beginAccess();
  sub_7DA2C(v17, v51 + v54);
  swift_endAccess();
  sub_C878(v17, &qword_1C5800, &unk_16F510);
  v55 = v31;
  v53(v17, v31, v19);
  sub_214C(v17, 0, 1, v19);
  v56 = OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_second;
  swift_beginAccess();
  sub_7DA2C(v17, v51 + v56);
  swift_endAccess();
  sub_C878(v17, &qword_1C5800, &unk_16F510);
  v57 = v76;
  v53(v17, v76, v19);
  sub_214C(v17, 0, 1, v19);
  v58 = OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_third;
  swift_beginAccess();
  sub_7DA2C(v17, v51 + v58);
  swift_endAccess();
  sub_C878(v17, &qword_1C5800, &unk_16F510);
  v59 = OBJC_IVAR____TtCC18WellnessFlowPlugin27WellnessDialogStringQuartet7Builder_fourth;
  swift_beginAccess();
  v60 = v51 + v59;
  v61 = v77;
  sub_7DA2C(v77, v60);
  swift_endAccess();
  v62 = type metadata accessor for WellnessDialogStringQuartet(0);
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  v65 = sub_BCB50(v51);
  sub_C878(v61, &qword_1C5800, &unk_16F510);
  v66 = *(v52 + 8);
  v66(v57, v19);
  v66(v55, v19);
  v66(v69, v19);
  v66(v75, v19);
  return v65;
}

uint64_t sub_AC758()
{
  sub_C938(v0 + 16);
  sub_2D64((v0 + 176));
  sub_2D64((v0 + 216));
  return v0;
}

uint64_t sub_AC788()
{
  sub_AC758();

  return _swift_deallocClassInstance(v0, 256, 7);
}

uint64_t sub_AC7F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E1A4;

  return sub_AB858();
}

uint64_t sub_AC898()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E1A4;

  return sub_AAE44();
}

uint64_t sub_AC940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for MedScheduleDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_1E1A4;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnEmptyParse(paginatedItems:)(a1, a2, v10, a4);
}

uint64_t sub_ACA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for MedScheduleDisambiguationStrategy();
  *v9 = v4;
  v9[1] = sub_1E1A4;

  return PromptForDisambiguationFlowStrategyAsync.makeRepromptOnLowConfidence(paginatedItems:)(a1, a2, v10, a4);
}

uint64_t sub_ACB78(uint64_t a1)
{
  v2 = type metadata accessor for WellnessDisambiguateMedScheduleParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_ACBEC()
{
  v2 = v0[24];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[14];
}

void sub_ACC0C()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_16E1AC();
  v3 = [v1 integerForKey:v2];

  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = [v0 standardUserDefaults];
    v6 = sub_16E1AC();
    [v5 setInteger:v4 forKey:v6];

    v7 = [v0 standardUserDefaults];
    [v7 synchronize];
  }
}

BOOL sub_ACD38()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_16E1AC();
  v2 = [v0 integerForKey:v1];

  return v2 < 2;
}

uint64_t type metadata accessor for WellnessQueryingCATsSimple()
{
  result = qword_1C8F70;
  if (!qword_1C8F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_ACE54()
{
  sub_8A88();
  sub_B25EC(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  v10 = *(v9 + 64);
  *(v0 + 64) = sub_8BC0();
  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_ACED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v13 = *(v11 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v14 = sub_B28A8();
  v15 = sub_B27A0(v14);
  sub_B24FC(v15, xmmword_172970);
  v16 = 0;
  if (v13)
  {
    v16 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  v17 = *(v11 + 96);
  sub_B24D0(v16);
  if (v18)
  {
    sub_B2614();
  }

  else
  {
    v20 = *(v11 + 24);
    v19 = &type metadata for Double;
  }

  v21 = *(v11 + 97);
  sub_B24A8(v19);
  if (v22)
  {
    sub_B2604();
  }

  else
  {
    v24 = *(v11 + 32);
    v23 = &type metadata for Double;
  }

  v25 = *(v11 + 64);
  v26 = sub_B2514(v23);
  sub_1955C(v26, v25, &qword_1C5800, &unk_16F510);
  v27 = sub_16D5CC();
  sub_B25A8(v27);
  if (v28)
  {

    sub_C878(v25, &qword_1C5800, &unk_16F510);
    sub_B27F8();
  }

  else
  {
    sub_B2878();
    sub_400B8();
    v30 = *(v29 + 32);
    sub_40154();
    v31();
  }

  sub_B2724();
  v32 = sub_B267C("queriedCalendarRange");
  if (v10)
  {
    v32 = sub_16D39C();
  }

  else
  {
    v12[31] = 0;
    v12[32] = 0;
  }

  sub_B2834(v32);
  sub_B2624(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v33 = swift_task_alloc();
  v34 = sub_B2690(v33);
  *v34 = v35;
  sub_B27EC(v34);
  sub_B25D8();
  sub_774AC();

  return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_AD0A8()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];

    v14 = sub_400A4();

    return v15(v14);
  }
}

uint64_t sub_AD1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_680E8();
}

uint64_t sub_AD1F0()
{
  sub_38664();
  v1 = v0[2];
  sub_2440(&qword_1C6078, &unk_172520);
  v2 = swift_allocObject();
  v0[6] = v2;
  sub_B24FC(v2, xmmword_16F2F0);
  if (v1)
  {
    v3 = type metadata accessor for WellnessTime(0);
    v4 = v1;
  }

  else
  {
    v3 = sub_76C6C();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v5 = v0[3];
  v2[3].n128_u64[0] = v4;
  v2[4].n128_u64[1] = v3;
  v2[5].n128_u64[0] = 0x74617265706D6574;
  v2[5].n128_u64[1] = 0xEB00000000657275;
  if (v5)
  {
    sub_16D2BC();
    v6 = v5;
  }

  else
  {
    sub_76C6C();
    v2[6].n128_u64[1] = 0;
    v2[7].n128_u64[0] = 0;
  }

  v7 = v0[4];
  v2[6].n128_u64[0] = v6;
  sub_B28C0();
  v2[7].n128_u64[1] = v8;
  v2[8].n128_u64[0] = 0xD000000000000014;
  v2[8].n128_u64[1] = v9;
  v10 = 0;
  if (v7)
  {
    v10 = sub_16D39C();
  }

  else
  {
    v2[9].n128_u64[1] = 0;
    v2[10].n128_u64[0] = 0;
  }

  v2[9].n128_u64[0] = v7;
  v2[10].n128_u64[1] = v10;
  v11 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v16 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  sub_179E8();
  v0[7] = v12;
  *v12 = v13;
  v12[1] = sub_AD3BC;
  v14 = v0[5];

  return v16(0xD00000000000002CLL, 0x800000000017F2E0, v2);
}

uint64_t sub_AD3BC()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_76ABC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 48);

    v13 = sub_626BC();

    return v14(v13);
  }
}

uint64_t sub_AD4E4()
{
  sub_8A88();
  v1 = *(v0 + 48);

  sub_C9BC();
  v3 = *(v0 + 64);

  return v2();
}

uint64_t sub_AD540()
{
  sub_8A88();
  sub_B26C4(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v9);
  v11 = *(v10 + 64);
  *(v0 + 80) = sub_8BC0();
  v12 = sub_17960();
  return sub_B2840(v12, v13, v14);
}

uint64_t sub_AD5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v15 = *(v12 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v16 = sub_B2930();
  v17 = sub_B28EC(v16);
  sub_B24FC(v17, xmmword_1731B0);
  v18 = 0;
  if (v15)
  {
    v18 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
  }

  v19 = *(v12 + 112);
  sub_B265C(v18);
  if (v20)
  {
    sub_B2614();
  }

  else
  {
    v22 = *(v12 + 24);
    v21 = &type metadata for Double;
  }

  v23 = *(v12 + 113);
  sub_B2558(v21);
  if (v24)
  {
    sub_B2604();
  }

  else
  {
    v26 = *(v12 + 32);
    v25 = &type metadata for Double;
  }

  v27 = *(v12 + 114);
  sub_B2534(v25);
  if (v28)
  {
    sub_B2734();
    *(v14 + 200) = 0;
    *(v14 + 208) = 0;
  }

  else
  {
    v30 = *(v12 + 40);
    v29 = &type metadata for Double;
  }

  v31 = *(v12 + 115);
  sub_B257C(v29);
  if (v32)
  {
    sub_B2734();
    *(v14 + 248) = 0;
    *(v14 + 256) = 0;
  }

  else
  {
    v34 = *(v12 + 48);
    v33 = &type metadata for Double;
  }

  v35 = sub_B26F0(v33);
  sub_1955C(v35, v11, &qword_1C5800, &unk_16F510);
  v36 = sub_16D5CC();
  sub_40124(v36);
  v37 = *(v12 + 80);
  sub_B2788();
  if (v38)
  {

    sub_C878(v37, &qword_1C5800, &unk_16F510);
    *(v14 + 288) = 0u;
    *(v14 + 304) = 0u;
  }

  else
  {
    *(v14 + 312) = v10;
    sub_9910((v14 + 288));
    sub_400B8();
    v40 = *(v39 + 32);
    sub_40154();
    v41();
  }

  sub_B2794();
  v42 = *(v12 + 64);
  sub_38B4C();
  *(v14 + 320) = v13;
  *(v14 + 328) = v43;
  v44 = 0;
  if (v42)
  {
    v44 = sub_16D39C();
  }

  else
  {
    *(v14 + 344) = 0;
    *(v14 + 352) = 0;
  }

  sub_B28E0(v44);
  sub_B2624(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_179E8();
  *(v12 + 96) = v45;
  *v45 = v46;
  v45[1] = sub_AD7F4;
  v47 = *(v12 + 72);
  sub_B25D8();
  sub_774AC();

  return v51(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10);
}

uint64_t sub_AD7F4()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[10];
    v12 = v3[11];

    v14 = sub_400A4();

    return v15(v14);
  }
}

uint64_t sub_AD948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  v12 = *(v10 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v13 = sub_B2890();
  v14 = sub_B27A0(v13);
  sub_B24FC(v14, xmmword_1731E0);
  if (v12)
  {
    v15 = type metadata accessor for WellnessTime(0);
    v16 = v12;
  }

  else
  {
    v15 = sub_B275C();
  }

  sub_B2804(v15, v16);
  if (v17)
  {
    sub_B2614();
  }

  else
  {
    v19 = *(v10 + 24);
    v18 = &type metadata for Double;
  }

  v20 = *(v10 + 97);
  sub_B2558(v18);
  if (v21)
  {
    sub_B2604();
  }

  else
  {
    v23 = *(v10 + 32);
    v22 = &type metadata for Double;
  }

  v24 = *(v10 + 98);
  sub_B2534(v22);
  if (v25)
  {
    sub_B2734();
    v11[25] = 0;
    v11[26] = 0;
  }

  else
  {
    v27 = *(v10 + 40);
    v26 = &type metadata for Double;
  }

  v28 = *(v10 + 99);
  sub_B257C(v26);
  if (v29)
  {
    sub_B2734();
    v11[31] = 0;
    v11[32] = 0;
  }

  else
  {
    v30 = *(v10 + 48);
  }

  sub_B2854();
  v31 = *(v10 + 56);
  v33 = sub_B276C(v32);
  if (v31)
  {
    v33 = sub_16D39C();
  }

  else
  {
    v11[37] = 0;
    v11[38] = 0;
  }

  v11[36] = v31;
  v11[39] = v33;
  v34 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  sub_B26B4(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v35 = swift_task_alloc();
  v36 = sub_B2690(v35);
  *v36 = v37;
  sub_B2828(v36);
  sub_B2648();
  sub_3E254();

  return v41(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
}

uint64_t sub_ADAF4()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    sub_76ABC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 72);

    v13 = sub_626BC();

    return v14(v13);
  }
}

uint64_t sub_ADC40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  v12 = *(v10 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v13 = sub_B2890();
  v14 = sub_B27A0(v13);
  sub_B24FC(v14, xmmword_1731E0);
  if (v12)
  {
    type metadata accessor for WellnessTime(0);
  }

  else
  {
    *(v11 + 56) = 0;
    *(v11 + 64) = 0;
  }

  sub_B28CC();
  v16 = *(v10 + 96);
  *(v11 + 48) = v17;
  *(v11 + 72) = v18;
  *(v11 + 80) = v15;
  *(v11 + 88) = 0xEB000000006E694DLL;
  if (v16)
  {
    v19 = 0;
    v20 = 0;
    *(v11 + 104) = 0;
    *(v11 + 112) = 0;
  }

  else
  {
    v19 = *(v10 + 24);
    v20 = &type metadata for Double;
  }

  v21 = *(v10 + 97);
  *(v11 + 96) = v19;
  *(v11 + 120) = v20;
  *(v11 + 128) = v15;
  *(v11 + 136) = 0xEB0000000078614DLL;
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    *(v11 + 152) = 0;
    *(v11 + 160) = 0;
  }

  else
  {
    v22 = *(v10 + 32);
    v23 = &type metadata for Double;
  }

  v24 = *(v10 + 98);
  *(v11 + 144) = v22;
  *(v11 + 168) = v23;
  strcpy((v11 + 176), "diastolicMin");
  *(v11 + 189) = 0;
  *(v11 + 190) = -5120;
  if (v24)
  {
    v25 = 0;
    v26 = 0;
    *(v11 + 200) = 0;
    *(v11 + 208) = 0;
  }

  else
  {
    v25 = *(v10 + 40);
    v26 = &type metadata for Double;
  }

  v27 = *(v10 + 99);
  *(v11 + 192) = v25;
  *(v11 + 216) = v26;
  strcpy((v11 + 224), "diastolicMax");
  *(v11 + 237) = 0;
  *(v11 + 238) = -5120;
  if (v27)
  {
    sub_B2734();
    *(v11 + 248) = 0;
    *(v11 + 256) = 0;
  }

  else
  {
    v28 = *(v10 + 48);
  }

  sub_B2854();
  v29 = *(v10 + 56);
  v31 = sub_B276C(v30);
  if (v29)
  {
    v31 = sub_16D39C();
  }

  else
  {
    *(v11 + 296) = 0;
    *(v11 + 304) = 0;
  }

  *(v11 + 288) = v29;
  *(v11 + 312) = v31;
  v32 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  sub_B26B4(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v33 = swift_task_alloc();
  v34 = sub_B2690(v33);
  *v34 = v35;
  sub_B2828(v34);
  sub_B2648();
  sub_3E254();

  return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_ADE70(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 81) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;
  *(v7 + 80) = a3;
  *(v7 + 16) = a1;
  return sub_680E8();
}

uint64_t sub_ADE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  v11 = *(v10 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v12 = sub_B2918();
  *(v10 + 56) = v12;
  sub_B24FC(v12, xmmword_172980);
  if (v11)
  {
    type metadata accessor for WellnessTime(0);
    v13 = v11;
  }

  else
  {
    sub_B275C();
  }

  v14 = *(v10 + 80);
  v12[3].n128_u64[0] = v13;
  sub_B28CC();
  v12[4].n128_u64[1] = v15;
  v12[5].n128_u64[0] = v16;
  v12[5].n128_u64[1] = 0xE800000000000000;
  if (v17)
  {
    sub_B2614();
  }

  else
  {
    v19 = *(v10 + 24);
    v18 = &type metadata for Double;
  }

  v20 = *(v10 + 81);
  v12[6].n128_u64[0] = v19;
  v12[7].n128_u64[1] = v18;
  v12[8].n128_u64[0] = 0x696C6F7473616964;
  v12[8].n128_u64[1] = 0xE900000000000063;
  if (v20)
  {
    sub_B2604();
  }

  else
  {
    v21 = *(v10 + 32);
  }

  sub_B2854();
  v22 = *(v10 + 40);
  v24 = sub_B2740(v23);
  if (v22)
  {
    v24 = sub_16D39C();
  }

  else
  {
    v12[12].n128_u64[1] = 0;
    v12[13].n128_u64[0] = 0;
  }

  v12[12].n128_u64[0] = v22;
  v12[13].n128_u64[1] = v24;
  v25 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  sub_B26B4(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  sub_179E8();
  *(v10 + 64) = v26;
  *v26 = v27;
  sub_B28F8(v26);
  sub_B2648();
  sub_3E254();

  return v31(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
}

uint64_t sub_AE034()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_76ABC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);

    v13 = sub_626BC();

    return v14(v13);
  }
}

uint64_t sub_AE15C()
{
  sub_8A88();
  v1 = *(v0 + 56);

  sub_C9BC();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_AE1B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return sub_680E8();
}

uint64_t sub_AE1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = v12[2];
  sub_2440(&qword_1C6078, &unk_172520);
  v14 = sub_B2890();
  v12[9] = v14;
  sub_B24FC(v14, xmmword_1731E0);
  if (v13)
  {
    v15 = type metadata accessor for WellnessTime(0);
    v16 = v13;
  }

  else
  {
    v15 = sub_76C6C();
    v14[3].n128_u64[1] = 0;
    v14[4].n128_u64[0] = 0;
  }

  v17 = v12[3];
  v14[3].n128_u64[0] = v16;
  v14[4].n128_u64[1] = v15;
  v14[5].n128_u64[0] = 0x65756C6176;
  v14[5].n128_u64[1] = 0xE500000000000000;
  if (v17)
  {
    v18 = sub_16D2BC();
    v19 = v17;
  }

  else
  {
    v18 = sub_76C6C();
    v14[6].n128_u64[1] = 0;
    v14[7].n128_u64[0] = 0;
  }

  v20 = v12[4];
  v14[6].n128_u64[0] = v19;
  v14[7].n128_u64[1] = v18;
  v14[8].n128_u64[0] = 0x65756C61566E696DLL;
  v14[8].n128_u64[1] = 0xE800000000000000;
  if (v20)
  {
    v21 = sub_16D2BC();
    v22 = v20;
  }

  else
  {
    v21 = sub_76C6C();
    v14[9].n128_u64[1] = 0;
    v14[10].n128_u64[0] = 0;
  }

  v23 = v12[5];
  v14[9].n128_u64[0] = v22;
  v14[10].n128_u64[1] = v21;
  v14[11].n128_u64[0] = 0x65756C615678616DLL;
  v14[11].n128_u64[1] = 0xE800000000000000;
  if (v23)
  {
    sub_16D2BC();
    v24 = v23;
  }

  else
  {
    sub_76C6C();
    v14[12].n128_u64[1] = 0;
    v14[13].n128_u64[0] = 0;
  }

  v25 = v12[6];
  v14[12].n128_u64[0] = v24;
  sub_B27AC();
  v14[13].n128_u64[1] = v26;
  v14[14].n128_u64[0] = v27;
  sub_B2714();
  v14[14].n128_u64[1] = v28;
  if (v25)
  {
    sub_16D2BC();
    v29 = v25;
  }

  else
  {
    sub_76C6C();
    v14[15].n128_u64[1] = 0;
    v14[16].n128_u64[0] = 0;
  }

  v30 = v12[7];
  v14[15].n128_u64[0] = v29;
  sub_B28C0();
  v14[16].n128_u64[1] = v31;
  v14[17].n128_u64[0] = v32;
  v14[17].n128_u64[1] = v33;
  v34 = 0;
  if (v30)
  {
    v34 = sub_16D39C();
  }

  else
  {
    v14[18].n128_u64[1] = 0;
    v14[19].n128_u64[0] = 0;
  }

  v14[18].n128_u64[0] = v30;
  v14[19].n128_u64[1] = v34;
  v35 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  sub_B26B4(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v36 = swift_task_alloc();
  v37 = sub_B2690(v36);
  *v37 = v38;
  sub_B2828(v37);
  sub_8CC0();

  return v42(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_AE440()
{
  sub_8A88();
  sub_B25EC(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  v10 = *(v9 + 64);
  *(v0 + 64) = sub_8BC0();
  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_AE4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v13 = *(v11 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v14 = sub_B28A8();
  v15 = sub_B27A0(v14);
  sub_B24FC(v15, xmmword_172970);
  v16 = 0;
  if (v13)
  {
    v16 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  v17 = *(v11 + 96);
  sub_B24D0(v16);
  if (v18)
  {
    sub_B2614();
  }

  else
  {
    v20 = *(v11 + 24);
    v19 = &type metadata for Double;
  }

  v21 = *(v11 + 97);
  sub_B24A8(v19);
  if (v22)
  {
    sub_B2604();
  }

  else
  {
    v24 = *(v11 + 32);
    v23 = &type metadata for Double;
  }

  v25 = *(v11 + 64);
  v26 = sub_B2514(v23);
  sub_1955C(v26, v25, &qword_1C5800, &unk_16F510);
  v27 = sub_16D5CC();
  sub_B25A8(v27);
  if (v28)
  {

    sub_C878(v25, &qword_1C5800, &unk_16F510);
    sub_B27F8();
  }

  else
  {
    sub_B2878();
    sub_400B8();
    v30 = *(v29 + 32);
    sub_40154();
    v31();
  }

  sub_B2724();
  v32 = sub_B267C("queriedCalendarRange");
  if (v10)
  {
    v32 = sub_16D39C();
  }

  else
  {
    v12[31] = 0;
    v12[32] = 0;
  }

  sub_B2834(v32);
  sub_B2624(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v33 = swift_task_alloc();
  v34 = sub_B2690(v33);
  *v34 = v35;
  sub_B27EC(v34);
  sub_B25D8();
  sub_774AC();

  return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_AE694(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 64) = a2;
  *(v4 + 16) = a1;
  return sub_680E8();
}

uint64_t sub_AE6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  v11 = *(v10 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v12 = swift_allocObject();
  *(v10 + 40) = v12;
  *(v12 + 16) = xmmword_16F2F0;
  sub_38B4C();
  *(v13 + 32) = 0xD000000000000014;
  *(v13 + 40) = v14;
  if (v11)
  {
    sub_16D39C();
    v15 = v11;
  }

  else
  {
    sub_B275C();
  }

  v16 = *(v10 + 24);
  v17 = *(v10 + 64);
  *(v12 + 48) = v15;
  sub_38B4C();
  *(v12 + 72) = v18;
  *(v12 + 80) = 0xD000000000000010;
  *(v12 + 88) = v19;
  *(v12 + 96) = v20;
  *(v12 + 120) = &type metadata for Bool;
  *(v12 + 128) = 1701669236;
  *(v12 + 136) = 0xE400000000000000;
  v21 = 0;
  if (v16)
  {
    v21 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    *(v12 + 152) = 0;
    *(v12 + 160) = 0;
  }

  *(v12 + 144) = v16;
  *(v12 + 168) = v21;
  v22 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  sub_B26B4(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  sub_179E8();
  *(v10 + 48) = v23;
  *v23 = v24;
  v23[1] = sub_AE838;
  v25 = *(v10 + 32);
  sub_B2648();
  sub_3E254();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10);
}

uint64_t sub_AE838()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (v0)
  {
    sub_76ABC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    v13 = sub_626BC();

    return v14(v13);
  }
}

uint64_t sub_AE960()
{
  sub_8A88();
  v1 = *(v0 + 40);

  sub_C9BC();
  v3 = *(v0 + 56);

  return v2();
}

uint64_t sub_AE9BC()
{
  sub_8A88();
  sub_B25EC(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  v10 = *(v9 + 64);
  *(v0 + 64) = sub_8BC0();
  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_AEA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v13 = *(v11 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v14 = sub_B28A8();
  v15 = sub_B27A0(v14);
  sub_B24FC(v15, xmmword_172970);
  v16 = 0;
  if (v13)
  {
    v16 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  v17 = *(v11 + 96);
  sub_B24D0(v16);
  if (v18)
  {
    sub_B2614();
  }

  else
  {
    v20 = *(v11 + 24);
    v19 = &type metadata for Double;
  }

  v21 = *(v11 + 97);
  sub_B24A8(v19);
  if (v22)
  {
    sub_B2604();
  }

  else
  {
    v24 = *(v11 + 32);
    v23 = &type metadata for Double;
  }

  v25 = *(v11 + 64);
  v26 = sub_B2514(v23);
  sub_1955C(v26, v25, &qword_1C5800, &unk_16F510);
  v27 = sub_16D5CC();
  sub_B25A8(v27);
  if (v28)
  {

    sub_C878(v25, &qword_1C5800, &unk_16F510);
    sub_B27F8();
  }

  else
  {
    sub_B2878();
    sub_400B8();
    v30 = *(v29 + 32);
    sub_40154();
    v31();
  }

  sub_B2724();
  v32 = sub_B267C("queriedCalendarRange");
  if (v10)
  {
    v32 = sub_16D39C();
  }

  else
  {
    v12[31] = 0;
    v12[32] = 0;
  }

  sub_B2834(v32);
  sub_B2624(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v33 = swift_task_alloc();
  v34 = sub_B2690(v33);
  *v34 = v35;
  sub_B27EC(v34);
  sub_B25D8();
  sub_774AC();

  return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_AEC10()
{
  sub_8A88();
  sub_B25EC(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  v10 = *(v9 + 64);
  *(v0 + 64) = sub_8BC0();
  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_AEC94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v13 = *(v11 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v14 = sub_B28A8();
  v15 = sub_B27A0(v14);
  sub_B24FC(v15, xmmword_172970);
  v16 = 0;
  if (v13)
  {
    v16 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  v17 = *(v11 + 96);
  sub_B24D0(v16);
  if (v18)
  {
    sub_B2614();
  }

  else
  {
    v20 = *(v11 + 24);
    v19 = &type metadata for Double;
  }

  v21 = *(v11 + 97);
  sub_B24A8(v19);
  if (v22)
  {
    sub_B2604();
  }

  else
  {
    v24 = *(v11 + 32);
    v23 = &type metadata for Double;
  }

  v25 = *(v11 + 64);
  v26 = sub_B2514(v23);
  sub_1955C(v26, v25, &qword_1C5800, &unk_16F510);
  v27 = sub_16D5CC();
  sub_B25A8(v27);
  if (v28)
  {

    sub_C878(v25, &qword_1C5800, &unk_16F510);
    sub_B27F8();
  }

  else
  {
    sub_B2878();
    sub_400B8();
    v30 = *(v29 + 32);
    sub_40154();
    v31();
  }

  sub_B2724();
  v32 = sub_B267C("queriedCalendarRange");
  if (v10)
  {
    v32 = sub_16D39C();
  }

  else
  {
    v12[31] = 0;
    v12[32] = 0;
  }

  sub_B2834(v32);
  sub_B2624(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v33 = swift_task_alloc();
  v34 = sub_B2690(v33);
  *v34 = v35;
  sub_B27EC(v34);
  sub_B25D8();
  sub_774AC();

  return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_AEE64()
{
  sub_8A88();
  sub_B25EC(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  v10 = *(v9 + 64);
  *(v0 + 64) = sub_8BC0();
  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_AEEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v13 = *(v11 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v14 = sub_B28A8();
  v15 = sub_B27A0(v14);
  sub_B24FC(v15, xmmword_172970);
  v16 = 0;
  if (v13)
  {
    v16 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  v17 = *(v11 + 96);
  sub_B24D0(v16);
  if (v18)
  {
    sub_B2614();
  }

  else
  {
    v20 = *(v11 + 24);
    v19 = &type metadata for Double;
  }

  v21 = *(v11 + 97);
  sub_B24A8(v19);
  if (v22)
  {
    sub_B2604();
  }

  else
  {
    v24 = *(v11 + 32);
    v23 = &type metadata for Double;
  }

  v25 = *(v11 + 64);
  v26 = sub_B2514(v23);
  sub_1955C(v26, v25, &qword_1C5800, &unk_16F510);
  v27 = sub_16D5CC();
  sub_B25A8(v27);
  if (v28)
  {

    sub_C878(v25, &qword_1C5800, &unk_16F510);
    sub_B27F8();
  }

  else
  {
    sub_B2878();
    sub_400B8();
    v30 = *(v29 + 32);
    sub_40154();
    v31();
  }

  sub_B2724();
  v32 = sub_B267C("queriedCalendarRange");
  if (v10)
  {
    v32 = sub_16D39C();
  }

  else
  {
    v12[31] = 0;
    v12[32] = 0;
  }

  sub_B2834(v32);
  sub_B2624(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v33 = swift_task_alloc();
  v34 = sub_B2690(v33);
  *v34 = v35;
  sub_B27EC(v34);
  sub_B25D8();
  sub_774AC();

  return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_AF0B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 81) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;
  *(v7 + 80) = a3;
  *(v7 + 16) = a1;
  return sub_680E8();
}

uint64_t sub_AF0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  v11 = *(v10 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v12 = sub_B2918();
  *(v10 + 56) = v12;
  sub_B24FC(v12, xmmword_172980);
  if (v11)
  {
    type metadata accessor for WellnessTime(0);
    v13 = v11;
  }

  else
  {
    sub_B275C();
  }

  v14 = *(v10 + 80);
  v12[3].n128_u64[0] = v13;
  sub_B27AC();
  v12[4].n128_u64[1] = v15;
  v12[5].n128_u64[0] = v16;
  sub_B2714();
  v12[5].n128_u64[1] = v17;
  if (v18)
  {
    sub_B2614();
  }

  else
  {
    v20 = *(v10 + 24);
    v19 = &type metadata for Double;
  }

  v21 = *(v10 + 81);
  sub_B24A8(v19);
  if (v22)
  {
    sub_B2604();
  }

  else
  {
    v23 = *(v10 + 32);
  }

  sub_B2854();
  v24 = *(v10 + 40);
  v26 = sub_B2740(v25);
  if (v24)
  {
    v26 = sub_16D39C();
  }

  else
  {
    v12[12].n128_u64[1] = 0;
    v12[13].n128_u64[0] = 0;
  }

  v12[12].n128_u64[0] = v24;
  v12[13].n128_u64[1] = v26;
  v27 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  sub_B26B4(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  sub_179E8();
  *(v10 + 64) = v28;
  *v28 = v29;
  sub_B28F8(v28);
  sub_B2648();
  sub_3E254();

  return v33(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

uint64_t sub_AF25C()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_76ABC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 56);

    v13 = sub_626BC();

    return v14(v13);
  }
}

uint64_t sub_AF384()
{
  sub_8A88();
  sub_B26C4(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v9);
  v11 = *(v10 + 64);
  *(v0 + 80) = sub_8BC0();
  v12 = sub_17960();
  return sub_B2840(v12, v13, v14);
}

uint64_t sub_AF3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v15 = *(v12 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v16 = sub_B2930();
  v17 = sub_B28EC(v16);
  sub_B24FC(v17, xmmword_1731B0);
  v18 = 0;
  if (v15)
  {
    v18 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
  }

  v19 = *(v12 + 112);
  sub_B265C(v18);
  if (v20)
  {
    sub_B2614();
  }

  else
  {
    v22 = *(v12 + 24);
    v21 = &type metadata for Double;
  }

  v23 = *(v12 + 113);
  sub_B2558(v21);
  if (v24)
  {
    sub_B2604();
  }

  else
  {
    v26 = *(v12 + 32);
    v25 = &type metadata for Double;
  }

  v27 = *(v12 + 114);
  sub_B2534(v25);
  if (v28)
  {
    sub_B2734();
    *(v14 + 200) = 0;
    *(v14 + 208) = 0;
  }

  else
  {
    v30 = *(v12 + 40);
    v29 = &type metadata for Double;
  }

  v31 = *(v12 + 115);
  sub_B257C(v29);
  if (v32)
  {
    sub_B2734();
    *(v14 + 248) = 0;
    *(v14 + 256) = 0;
  }

  else
  {
    v34 = *(v12 + 48);
    v33 = &type metadata for Double;
  }

  v35 = sub_B26F0(v33);
  sub_1955C(v35, v11, &qword_1C5800, &unk_16F510);
  v36 = sub_16D5CC();
  sub_40124(v36);
  v37 = *(v12 + 80);
  sub_B2788();
  if (v38)
  {

    sub_C878(v37, &qword_1C5800, &unk_16F510);
    *(v14 + 288) = 0u;
    *(v14 + 304) = 0u;
  }

  else
  {
    *(v14 + 312) = v10;
    sub_9910((v14 + 288));
    sub_400B8();
    v40 = *(v39 + 32);
    sub_40154();
    v41();
  }

  sub_B2794();
  v42 = *(v12 + 64);
  sub_38B4C();
  *(v14 + 320) = v13;
  *(v14 + 328) = v43;
  v44 = 0;
  if (v42)
  {
    v44 = sub_16D39C();
  }

  else
  {
    *(v14 + 344) = 0;
    *(v14 + 352) = 0;
  }

  sub_B28E0(v44);
  sub_B2624(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_179E8();
  *(v12 + 96) = v45;
  *v45 = v46;
  v45[1] = sub_AF638;
  v47 = *(v12 + 72);
  sub_B25D8();
  sub_774AC();

  return v51(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10);
}

uint64_t sub_AF638()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[10];
    v12 = v3[11];

    v14 = sub_400A4();

    return v15(v14);
  }
}

uint64_t sub_AF768()
{
  sub_8A88();
  v2 = v0[10];
  v1 = v0[11];

  sub_C9BC();
  v4 = v0[13];

  return v3();
}

uint64_t sub_AF7CC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 88) = a2;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  return sub_680E8();
}

uint64_t sub_AF7EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = *(v12 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v14 = sub_B2890();
  *(v12 + 64) = v14;
  sub_B24FC(v14, xmmword_1731E0);
  if (v13)
  {
    type metadata accessor for WellnessTime(0);
    v15 = v13;
  }

  else
  {
    sub_76C6C();
    v14[3].n128_u64[1] = 0;
    v14[4].n128_u64[0] = 0;
  }

  v16 = *(v12 + 24);
  v17 = *(v12 + 88);
  v14[3].n128_u64[0] = v15;
  sub_38B4C();
  v14[4].n128_u64[1] = v19;
  v14[5].n128_u64[0] = v18 | 2;
  v14[5].n128_u64[1] = v20;
  v14[6].n128_u8[0] = v21;
  v14[7].n128_u64[1] = &type metadata for Bool;
  v14[8].n128_u64[0] = v18;
  v14[8].n128_u64[1] = 0x800000000017DAD0;
  if (v16)
  {
    v22 = sub_16D39C();
    v23 = v16;
  }

  else
  {
    v22 = sub_76C6C();
    v14[9].n128_u64[1] = 0;
    v14[10].n128_u64[0] = 0;
  }

  v24 = *(v12 + 32);
  v14[9].n128_u64[0] = v23;
  v14[10].n128_u64[1] = v22;
  v14[11].n128_u64[0] = 0x746867696568;
  v14[11].n128_u64[1] = 0xE600000000000000;
  if (v24)
  {
    v25 = sub_16D2FC();
    v26 = v24;
  }

  else
  {
    v25 = sub_76C6C();
    v14[12].n128_u64[1] = 0;
    v14[13].n128_u64[0] = 0;
  }

  v27 = *(v12 + 40);
  v14[12].n128_u64[0] = v26;
  v14[13].n128_u64[1] = v25;
  v14[14].n128_u64[0] = 0x68676965486E696DLL;
  v14[14].n128_u64[1] = 0xE900000000000074;
  if (v27)
  {
    v28 = sub_16D2FC();
    v29 = v27;
  }

  else
  {
    v28 = sub_76C6C();
    v14[15].n128_u64[1] = 0;
    v14[16].n128_u64[0] = 0;
  }

  v30 = *(v12 + 48);
  v14[15].n128_u64[0] = v29;
  v14[16].n128_u64[1] = v28;
  v14[17].n128_u64[0] = 0x686769654878616DLL;
  v14[17].n128_u64[1] = 0xE900000000000074;
  v31 = 0;
  if (v30)
  {
    v31 = sub_16D2FC();
  }

  else
  {
    v14[18].n128_u64[1] = 0;
    v14[19].n128_u64[0] = 0;
  }

  v14[18].n128_u64[0] = v30;
  v14[19].n128_u64[1] = v31;
  v32 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  sub_B26B4(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  sub_179E8();
  *(v12 + 72) = v33;
  *v33 = v34;
  sub_B27EC(v33);
  sub_8CC0();

  return v38(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_AFA48()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    sub_76ABC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 64);

    v13 = sub_626BC();

    return v14(v13);
  }
}

uint64_t sub_AFB70()
{
  sub_8A88();
  v1 = *(v0 + 64);

  sub_C9BC();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_AFBCC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = v6;
  *(v7 + 81) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;
  *(v7 + 80) = a3;
  *(v7 + 16) = a1;
  return sub_680E8();
}

uint64_t sub_AFBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  v11 = *(v10 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v12 = sub_B2918();
  *(v10 + 56) = v12;
  sub_B24FC(v12, xmmword_172980);
  if (v11)
  {
    type metadata accessor for WellnessTime(0);
    v13 = v11;
  }

  else
  {
    sub_B275C();
  }

  v14 = *(v10 + 80);
  v12[3].n128_u64[0] = v13;
  sub_B27AC();
  v12[4].n128_u64[1] = v15;
  v12[5].n128_u64[0] = v16;
  sub_B2714();
  v12[5].n128_u64[1] = v17;
  if (v18)
  {
    sub_B2614();
  }

  else
  {
    v20 = *(v10 + 24);
    v19 = &type metadata for Double;
  }

  v21 = *(v10 + 81);
  sub_B24A8(v19);
  if (v22)
  {
    sub_B2604();
  }

  else
  {
    v23 = *(v10 + 32);
  }

  sub_B2854();
  v24 = *(v10 + 40);
  v26 = sub_B2740(v25);
  if (v24)
  {
    v26 = sub_16D39C();
  }

  else
  {
    v12[12].n128_u64[1] = 0;
    v12[13].n128_u64[0] = 0;
  }

  v12[12].n128_u64[0] = v24;
  v12[13].n128_u64[1] = v26;
  v27 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  sub_B26B4(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  sub_179E8();
  *(v10 + 64) = v28;
  *v28 = v29;
  sub_B28F8(v28);
  sub_B2648();
  sub_3E254();

  return v33(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

uint64_t sub_AFD94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  v12 = *(v10 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v13 = sub_B2890();
  v14 = sub_B27A0(v13);
  sub_B24FC(v14, xmmword_1731E0);
  if (v12)
  {
    v15 = type metadata accessor for WellnessTime(0);
    v16 = v12;
  }

  else
  {
    v15 = sub_B275C();
  }

  sub_B2804(v15, v16);
  if (v17)
  {
    sub_B2614();
  }

  else
  {
    v19 = *(v10 + 24);
    v18 = &type metadata for Double;
  }

  v20 = *(v10 + 97);
  sub_B2558(v18);
  if (v21)
  {
    sub_B2604();
  }

  else
  {
    v23 = *(v10 + 32);
    v22 = &type metadata for Double;
  }

  v24 = *(v10 + 98);
  sub_B2534(v22);
  if (v25)
  {
    sub_B2734();
    v11[25] = 0;
    v11[26] = 0;
  }

  else
  {
    v27 = *(v10 + 40);
    v26 = &type metadata for Double;
  }

  v28 = *(v10 + 99);
  sub_B257C(v26);
  if (v29)
  {
    sub_B2734();
    v11[31] = 0;
    v11[32] = 0;
  }

  else
  {
    v30 = *(v10 + 48);
  }

  sub_B2854();
  v31 = *(v10 + 56);
  v33 = sub_B276C(v32);
  if (v31)
  {
    v33 = sub_16D39C();
  }

  else
  {
    v11[37] = 0;
    v11[38] = 0;
  }

  v11[36] = v31;
  v11[39] = v33;
  v34 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  sub_B26B4(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v35 = swift_task_alloc();
  v36 = sub_B2690(v35);
  *v36 = v37;
  sub_B2828(v36);
  sub_B2648();
  sub_3E254();

  return v41(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10);
}

uint64_t sub_AFF40()
{
  sub_8A88();
  sub_B25EC(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  v10 = *(v9 + 64);
  *(v0 + 64) = sub_8BC0();
  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_AFFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v13 = *(v11 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v14 = sub_B28A8();
  v15 = sub_B27A0(v14);
  sub_B24FC(v15, xmmword_172970);
  v16 = 0;
  if (v13)
  {
    v16 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  v17 = *(v11 + 96);
  sub_B24D0(v16);
  if (v18)
  {
    sub_B2614();
  }

  else
  {
    v20 = *(v11 + 24);
    v19 = &type metadata for Double;
  }

  v21 = *(v11 + 97);
  sub_B24A8(v19);
  if (v22)
  {
    sub_B2604();
  }

  else
  {
    v24 = *(v11 + 32);
    v23 = &type metadata for Double;
  }

  v25 = *(v11 + 64);
  v26 = sub_B2514(v23);
  sub_1955C(v26, v25, &qword_1C5800, &unk_16F510);
  v27 = sub_16D5CC();
  sub_B25A8(v27);
  if (v28)
  {

    sub_C878(v25, &qword_1C5800, &unk_16F510);
    sub_B27F8();
  }

  else
  {
    sub_B2878();
    sub_400B8();
    v30 = *(v29 + 32);
    sub_40154();
    v31();
  }

  sub_B2724();
  v32 = sub_B267C("queriedCalendarRange");
  if (v10)
  {
    v32 = sub_16D39C();
  }

  else
  {
    v12[31] = 0;
    v12[32] = 0;
  }

  sub_B2834(v32);
  sub_B2624(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v33 = swift_task_alloc();
  v34 = sub_B2690(v33);
  *v34 = v35;
  sub_B27EC(v34);
  sub_B25D8();
  sub_774AC();

  return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_B0194(char a1, char a2, char a3, char a4)
{
  *(v5 + 16) = v4;
  *(v5 + 51) = a4;
  *(v5 + 50) = a3;
  *(v5 + 49) = a2;
  *(v5 + 48) = a1;
  return sub_680E8();
}

uint64_t sub_B01B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  v11 = *(v10 + 51);
  v12 = *(v10 + 50);
  v13 = *(v10 + 49);
  v14 = *(v10 + 48);
  sub_2440(&qword_1C6078, &unk_172520);
  v15 = sub_B2918();
  *(v10 + 24) = v15;
  *(v15 + 16) = xmmword_172980;
  sub_38B4C();
  *(v16 + 32) = 0xD000000000000010;
  *(v16 + 40) = v17;
  *(v16 + 48) = v14;
  sub_775F0();
  *(v18 + 72) = v19;
  *(v18 + 80) = 0xD000000000000014;
  *(v18 + 88) = v20;
  *(v18 + 96) = v13;
  sub_775F0();
  *(v21 + 120) = v22;
  *(v21 + 128) = 0xD000000000000011;
  *(v21 + 136) = v23;
  *(v21 + 144) = v12;
  sub_775F0();
  v24[21] = v25;
  v24[22] = 0xD000000000000010;
  v24[23] = v26;
  v24[27] = v25;
  sub_B2904(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  *(v15 + 192) = v11;
  swift_task_alloc();
  sub_179E8();
  *(v10 + 32) = v27;
  *v27 = v28;
  v27[1] = sub_B0320;
  v29 = *(v10 + 16);
  sub_3E254();

  return v33(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10);
}

uint64_t sub_B0320()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v3 + 40) = v0;

  if (v0)
  {
    sub_76ABC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 24);

    v13 = sub_626BC();

    return v14(v13);
  }
}

uint64_t sub_B0448()
{
  sub_8A88();
  v1 = *(v0 + 24);

  sub_C9BC();
  v3 = *(v0 + 40);

  return v2();
}

uint64_t sub_B04A4()
{
  sub_8A88();
  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  *(v1 + 99) = v3;
  *(v1 + 98) = v4;
  *(v1 + 97) = v5;
  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  *(v1 + 96) = v8;
  *(v1 + 16) = v9;
  v10 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v10);
  v12 = *(v11 + 64) + 15;
  *(v1 + 56) = swift_task_alloc();
  *(v1 + 64) = swift_task_alloc();
  v13 = sub_17960();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_B0554()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v3 = sub_B2890();
  *(v0 + 72) = v3;
  *(v3 + 16) = xmmword_1731E0;
  *(v3 + 32) = 0x6570797461746164;
  *(v3 + 40) = 0xE800000000000000;
  sub_1955C(v2, v1, &qword_1C5800, &unk_16F510);
  v4 = sub_16D5CC();
  if (sub_40124(v4) == 1)
  {
    sub_C878(*(v0 + 64), &qword_1C5800, &unk_16F510);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    sub_9910((v3 + 48));
    sub_400B8();
    v6 = *(v5 + 32);
    sub_40154();
    v7();
  }

  v8 = *(v0 + 96);
  *(v3 + 80) = 0x6C61566C61746F74;
  *(v3 + 88) = 0xEA00000000006575;
  if (v8)
  {
    sub_B2734();
    *(v3 + 104) = 0;
    *(v3 + 112) = 0;
  }

  else
  {
    v10 = *(v0 + 24);
    v9 = &type metadata for Double;
  }

  v11 = *(v0 + 97);
  *(v3 + 96) = v10;
  *(v3 + 120) = v9;
  *(v3 + 128) = 0x756C61566C616F67;
  *(v3 + 136) = 0xE900000000000065;
  if (v11)
  {
    sub_B2734();
    *(v3 + 152) = 0;
    *(v3 + 160) = 0;
  }

  else
  {
    v13 = *(v0 + 32);
    v12 = &type metadata for Double;
  }

  v14 = *(v0 + 56);
  v15 = *(v0 + 40);
  v16 = *(v0 + 99);
  v17 = *(v0 + 98);
  *(v3 + 144) = v13;
  *(v3 + 168) = v12;
  strcpy((v3 + 176), "isRingClosed");
  *(v3 + 189) = 0;
  *(v3 + 190) = -5120;
  *(v3 + 192) = v17;
  sub_775F0();
  *(v3 + 216) = v18;
  *(v3 + 224) = 0xD000000000000010;
  *(v3 + 232) = v19;
  *(v3 + 240) = v20;
  *(v3 + 264) = v18;
  *(v3 + 272) = 1953066613;
  *(v3 + 280) = 0xE400000000000000;
  sub_1955C(v21, v14, &qword_1C5800, &unk_16F510);
  if (sub_369C(v14, 1, v2) == 1)
  {
    sub_C878(*(v0 + 56), &qword_1C5800, &unk_16F510);
    *(v3 + 288) = 0u;
    *(v3 + 304) = 0u;
  }

  else
  {
    *(v3 + 312) = v2;
    sub_9910((v3 + 288));
    sub_400B8();
    v23 = *(v22 + 32);
    sub_40154();
    v24();
  }

  sub_B2904(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v25 = swift_task_alloc();
  v26 = sub_B2690(v25);
  *v26 = v27;
  sub_B28F8(v26);

  return v29(0xD00000000000001DLL, 0x800000000017EF20, v3);
}

uint64_t sub_B0860()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];
    v14 = v3[7];

    v15 = sub_400A4();

    return v16(v15);
  }
}

uint64_t sub_B099C()
{
  sub_8A88();
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  sub_C9BC();
  v5 = v0[11];

  return v4();
}

uint64_t sub_B0A0C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 88) = a3;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  return sub_680E8();
}

uint64_t sub_B0A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_3868C();
  sub_38664();
  v13 = *(v12 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v14 = sub_B28A8();
  *(v12 + 64) = v14;
  sub_B24FC(v14, xmmword_172970);
  if (v13)
  {
    type metadata accessor for WellnessTime(0);
    v15 = v13;
  }

  else
  {
    sub_76C6C();
    v14[3].n128_u64[1] = 0;
    v14[4].n128_u64[0] = 0;
  }

  v16 = *(v12 + 88);
  v14[3].n128_u64[0] = v15;
  sub_38B4C();
  v14[4].n128_u64[1] = v17;
  v14[5].n128_u64[0] = 0xD000000000000018;
  v14[5].n128_u64[1] = v18;
  if (v19)
  {
    sub_B2734();
    v14[6].n128_u64[1] = 0;
    v14[7].n128_u64[0] = 0;
  }

  else
  {
    v21 = *(v12 + 24);
    v20 = &type metadata for Double;
  }

  v22 = *(v12 + 32);
  v14[6].n128_u64[0] = v21;
  v14[7].n128_u64[1] = v20;
  v14[8].n128_u64[0] = 0xD000000000000014;
  v14[8].n128_u64[1] = 0x800000000017E100;
  if (v22)
  {
    sub_16D54C();
    v23 = v22;
  }

  else
  {
    sub_76C6C();
    v14[9].n128_u64[1] = 0;
    v14[10].n128_u64[0] = 0;
  }

  v24 = *(v12 + 40);
  v14[9].n128_u64[0] = v23;
  sub_38B4C();
  v14[10].n128_u64[1] = v25;
  v14[11].n128_u64[0] = 0xD000000000000015;
  v14[11].n128_u64[1] = v26;
  if (v24)
  {
    sub_16D54C();
    v27 = v24;
  }

  else
  {
    sub_76C6C();
    v14[12].n128_u64[1] = 0;
    v14[13].n128_u64[0] = 0;
  }

  v28 = *(v12 + 48);
  v14[12].n128_u64[0] = v27;
  sub_B28C0();
  v14[13].n128_u64[1] = v29;
  v14[14].n128_u64[0] = 0xD000000000000014;
  v14[14].n128_u64[1] = v30;
  v31 = 0;
  if (v28)
  {
    v31 = sub_16D39C();
  }

  else
  {
    v14[15].n128_u64[1] = 0;
    v14[16].n128_u64[0] = 0;
  }

  v14[15].n128_u64[0] = v28;
  v14[16].n128_u64[1] = v31;
  v32 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  sub_B26B4(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  swift_task_alloc();
  sub_179E8();
  *(v12 + 72) = v33;
  *v33 = v34;
  sub_B27EC(v33);
  sub_8CC0();

  return v38(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_B0C44()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    sub_76ABC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 64);

    v13 = sub_626BC();

    return v14(v13);
  }
}

uint64_t sub_B0D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return sub_680E8();
}

uint64_t sub_B0D8C()
{
  v1 = v0[2];
  sub_2440(&qword_1C6078, &unk_172520);
  v2 = sub_B2890();
  v0[9] = v2;
  sub_B24FC(v2, xmmword_1731E0);
  if (v1)
  {
    type metadata accessor for WellnessTime(0);
    v3 = v1;
  }

  else
  {
    sub_76C6C();
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v4 = v0[3];
  v2[3].n128_u64[0] = v3;
  sub_38B4C();
  v2[4].n128_u64[1] = v5;
  v2[5].n128_u64[0] = 0xD000000000000012;
  v2[5].n128_u64[1] = v6;
  if (v4)
  {
    sub_16D54C();
    v7 = v4;
  }

  else
  {
    sub_76C6C();
    v2[6].n128_u64[1] = 0;
    v2[7].n128_u64[0] = 0;
  }

  v8 = v0[4];
  v2[6].n128_u64[0] = v7;
  sub_38B4C();
  v2[7].n128_u64[1] = v9;
  v2[8].n128_u64[0] = 0xD000000000000013;
  v2[8].n128_u64[1] = v10;
  if (v8)
  {
    sub_16D54C();
    v11 = v8;
  }

  else
  {
    sub_76C6C();
    v2[9].n128_u64[1] = 0;
    v2[10].n128_u64[0] = 0;
  }

  v12 = v0[5];
  v2[9].n128_u64[0] = v11;
  sub_B28C0();
  v2[10].n128_u64[1] = v13;
  v2[11].n128_u64[0] = 0xD000000000000014;
  v2[11].n128_u64[1] = v14;
  if (v12)
  {
    sub_16D54C();
    v15 = v12;
  }

  else
  {
    sub_76C6C();
    v2[12].n128_u64[1] = 0;
    v2[13].n128_u64[0] = 0;
  }

  v16 = v0[6];
  v2[12].n128_u64[0] = v15;
  sub_38B4C();
  v2[13].n128_u64[1] = v17;
  v2[14].n128_u64[0] = 0xD000000000000015;
  v2[14].n128_u64[1] = v18;
  if (v16)
  {
    sub_16D54C();
    v19 = v16;
  }

  else
  {
    sub_76C6C();
    v2[15].n128_u64[1] = 0;
    v2[16].n128_u64[0] = 0;
  }

  v20 = v0[7];
  v2[15].n128_u64[0] = v19;
  sub_B28C0();
  v2[16].n128_u64[1] = v21;
  v2[17].n128_u64[0] = 0xD000000000000014;
  v2[17].n128_u64[1] = v22;
  v23 = 0;
  if (v20)
  {
    v23 = sub_16D39C();
  }

  else
  {
    v2[18].n128_u64[1] = 0;
    v2[19].n128_u64[0] = 0;
  }

  v2[18].n128_u64[0] = v20;
  v2[19].n128_u64[1] = v23;
  v24 = *(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + 1);
  v29 = (&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:) + async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));

  v25 = swift_task_alloc();
  v26 = sub_B2690(v25);
  *v26 = v27;
  sub_B2828(v26);

  return v29(0xD00000000000002ALL, 0x800000000017EEC0, v2);
}

uint64_t sub_B1018()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v3 + 88) = v0;

  if (v0)
  {
    sub_76ABC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 72);

    v13 = sub_626BC();

    return v14(v13);
  }
}

uint64_t sub_B1140()
{
  sub_8A88();
  v1 = *(v0 + 72);

  sub_C9BC();
  v3 = *(v0 + 88);

  return v2();
}

uint64_t sub_B119C()
{
  sub_8A88();
  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 113) = v5;
  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  *(v1 + 112) = v8;
  *(v1 + 16) = v9;
  v10 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v10);
  v12 = *(v11 + 64) + 15;
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  v13 = sub_17960();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_B1248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v14 = *(v11 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v15 = sub_B2890();
  v16 = sub_B28EC(v15);
  sub_B24FC(v16, xmmword_1731E0);
  v17 = 0;
  if (v14)
  {
    v17 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    *(v13 + 56) = 0;
    *(v13 + 64) = 0;
  }

  v18 = *(v11 + 112);
  sub_B24D0(v17);
  if (v19)
  {
    sub_B2614();
  }

  else
  {
    v21 = *(v11 + 24);
    v20 = &type metadata for Double;
  }

  v22 = *(v11 + 113);
  sub_B24A8(v20);
  if (v23)
  {
    sub_B2604();
  }

  else
  {
    v25 = *(v11 + 32);
    v24 = &type metadata for Double;
  }

  v26 = *(v11 + 80);
  v27 = sub_B2514(v24);
  sub_1955C(v27, v26, &qword_1C5800, &unk_16F510);
  v28 = sub_16D5CC();
  sub_40124(v28);
  v29 = *(v11 + 80);
  sub_B2788();
  if (v30)
  {

    sub_C878(v29, &qword_1C5800, &unk_16F510);
    sub_B27F8();
  }

  else
  {
    sub_B2878();
    sub_400B8();
    v32 = *(v31 + 32);
    sub_40154();
    v33();
  }

  v34 = *(v11 + 72);
  v35 = *(v11 + 48);
  *(v13 + 224) = 0x6570795461746164;
  *(v13 + 232) = 0xE800000000000000;
  sub_1955C(v35, v34, &qword_1C5800, &unk_16F510);
  v36 = sub_369C(v34, 1, v10);
  v37 = *(v11 + 72);
  if (v36 == 1)
  {
    sub_C878(*(v11 + 72), &qword_1C5800, &unk_16F510);
    *(v13 + 240) = 0u;
    *(v13 + 256) = 0u;
  }

  else
  {
    *(v13 + 264) = v10;
    sub_9910((v13 + 240));
    sub_400B8();
    v39 = *(v38 + 32);
    sub_40154();
    v40();
  }

  sub_B2794();
  v41 = *(v11 + 56);
  sub_38B4C();
  *(v13 + 272) = v12;
  *(v13 + 280) = v42;
  v43 = 0;
  if (v41)
  {
    v43 = sub_16D39C();
  }

  else
  {
    *(v13 + 296) = 0;
    *(v13 + 304) = 0;
  }

  *(v13 + 288) = v41;
  *(v13 + 312) = v43;
  sub_B2624(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_179E8();
  *(v11 + 96) = v44;
  *v44 = v45;
  sub_B2828(v44);
  sub_B25D8();
  sub_774AC();

  return v49(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10);
}

uint64_t sub_B14DC()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[10];
    v12 = v3[11];
    v14 = v3[9];

    v15 = sub_400A4();

    return v16(v15);
  }
}

uint64_t sub_B1618()
{
  sub_8A88();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  sub_C9BC();
  v5 = v0[13];

  return v4();
}

uint64_t sub_B1688()
{
  sub_8A88();
  sub_B25EC(v1, v2, v3, v4, v5, v6, v7);
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  v10 = *(v9 + 64);
  *(v0 + 64) = sub_8BC0();
  v11 = sub_17960();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_B170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v13 = *(v11 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v14 = sub_B28A8();
  v15 = sub_B27A0(v14);
  sub_B24FC(v15, xmmword_172970);
  v16 = 0;
  if (v13)
  {
    v16 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    v12[7] = 0;
    v12[8] = 0;
  }

  v17 = *(v11 + 96);
  sub_B24D0(v16);
  if (v18)
  {
    sub_B2614();
  }

  else
  {
    v20 = *(v11 + 24);
    v19 = &type metadata for Double;
  }

  v21 = *(v11 + 97);
  sub_B24A8(v19);
  if (v22)
  {
    sub_B2604();
  }

  else
  {
    v24 = *(v11 + 32);
    v23 = &type metadata for Double;
  }

  v25 = *(v11 + 64);
  v26 = sub_B2514(v23);
  sub_1955C(v26, v25, &qword_1C5800, &unk_16F510);
  v27 = sub_16D5CC();
  sub_B25A8(v27);
  if (v28)
  {

    sub_C878(v25, &qword_1C5800, &unk_16F510);
    sub_B27F8();
  }

  else
  {
    sub_B2878();
    sub_400B8();
    v30 = *(v29 + 32);
    sub_40154();
    v31();
  }

  sub_B2724();
  v32 = sub_B267C("queriedCalendarRange");
  if (v10)
  {
    v32 = sub_16D39C();
  }

  else
  {
    v12[31] = 0;
    v12[32] = 0;
  }

  sub_B2834(v32);
  sub_B2624(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  v33 = swift_task_alloc();
  v34 = sub_B2690(v33);
  *v34 = v35;
  sub_B27EC(v34);
  sub_B25D8();
  sub_774AC();

  return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

uint64_t sub_B18DC()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[11] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[8];
    v12 = v3[9];

    v14 = sub_400A4();

    return v15(v14);
  }
}

uint64_t sub_B1A0C()
{
  sub_8A88();
  v2 = v0[8];
  v1 = v0[9];

  sub_C9BC();
  v4 = v0[11];

  return v3();
}

uint64_t sub_B1A70()
{
  sub_8A88();
  sub_B26C4(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v9);
  v11 = *(v10 + 64);
  *(v0 + 80) = sub_8BC0();
  v12 = sub_17960();
  return sub_B2840(v12, v13, v14);
}

uint64_t sub_B1AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v15 = *(v12 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v16 = sub_B2930();
  v17 = sub_B28EC(v16);
  sub_B24FC(v17, xmmword_1731B0);
  v18 = 0;
  if (v15)
  {
    v18 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
  }

  v19 = *(v12 + 112);
  sub_B265C(v18);
  if (v20)
  {
    sub_B2614();
  }

  else
  {
    v22 = *(v12 + 24);
    v21 = &type metadata for Double;
  }

  v23 = *(v12 + 113);
  sub_B2558(v21);
  if (v24)
  {
    sub_B2604();
  }

  else
  {
    v26 = *(v12 + 32);
    v25 = &type metadata for Double;
  }

  v27 = *(v12 + 114);
  sub_B2534(v25);
  if (v28)
  {
    sub_B2734();
    *(v14 + 200) = 0;
    *(v14 + 208) = 0;
  }

  else
  {
    v30 = *(v12 + 40);
    v29 = &type metadata for Double;
  }

  v31 = *(v12 + 115);
  sub_B257C(v29);
  if (v32)
  {
    sub_B2734();
    *(v14 + 248) = 0;
    *(v14 + 256) = 0;
  }

  else
  {
    v34 = *(v12 + 48);
    v33 = &type metadata for Double;
  }

  v35 = sub_B26F0(v33);
  sub_1955C(v35, v11, &qword_1C5800, &unk_16F510);
  v36 = sub_16D5CC();
  sub_40124(v36);
  v37 = *(v12 + 80);
  sub_B2788();
  if (v38)
  {

    sub_C878(v37, &qword_1C5800, &unk_16F510);
    *(v14 + 288) = 0u;
    *(v14 + 304) = 0u;
  }

  else
  {
    *(v14 + 312) = v10;
    sub_9910((v14 + 288));
    sub_400B8();
    v40 = *(v39 + 32);
    sub_40154();
    v41();
  }

  sub_B2794();
  v42 = *(v12 + 64);
  sub_38B4C();
  *(v14 + 320) = v13;
  *(v14 + 328) = v43;
  v44 = 0;
  if (v42)
  {
    v44 = sub_16D39C();
  }

  else
  {
    *(v14 + 344) = 0;
    *(v14 + 352) = 0;
  }

  sub_B28E0(v44);
  sub_B2624(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_179E8();
  *(v12 + 96) = v45;
  *v45 = v46;
  v45[1] = sub_AD7F4;
  v47 = *(v12 + 72);
  sub_B25D8();
  sub_774AC();

  return v51(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10);
}

uint64_t sub_B1D24()
{
  sub_8A88();
  *(v1 + 56) = v19;
  *(v1 + 64) = v0;
  *(v1 + 107) = v18;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  *(v1 + 106) = v4;
  *(v1 + 105) = v5;
  *(v1 + 24) = v6;
  *(v1 + 32) = v7;
  *(v1 + 104) = v8;
  *(v1 + 16) = v9;
  v10 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v10);
  v12 = *(v11 + 64);
  *(v1 + 72) = sub_8BC0();
  v13 = sub_17960();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_B1DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_7734C();
  sub_76D68();
  v13 = *(v11 + 16);
  sub_2440(&qword_1C6078, &unk_172520);
  v14 = sub_B2930();
  *(v11 + 80) = v14;
  sub_B24FC(v14, xmmword_1731B0);
  v15 = 0;
  if (v13)
  {
    v15 = type metadata accessor for WellnessTime(0);
  }

  else
  {
    *(v14 + 56) = 0;
    *(v14 + 64) = 0;
  }

  v16 = *(v11 + 104);
  sub_B265C(v15);
  if (v17)
  {
    sub_B2614();
  }

  else
  {
    v19 = *(v11 + 24);
    v18 = &type metadata for Double;
  }

  v20 = *(v11 + 105);
  sub_B2558(v18);
  if (v21)
  {
    sub_B2604();
  }

  else
  {
    v23 = *(v11 + 32);
    v22 = &type metadata for Double;
  }

  v24 = *(v11 + 106);
  sub_B2534(v22);
  if (v25)
  {
    sub_B2734();
    *(v14 + 200) = 0;
    *(v14 + 208) = 0;
  }

  else
  {
    v27 = *(v11 + 40);
    v26 = &type metadata for Double;
  }

  v28 = *(v11 + 72);
  v29 = *(v11 + 48);
  *(v14 + 192) = v27;
  *(v14 + 216) = v26;
  *(v14 + 224) = 1953066613;
  *(v14 + 232) = 0xE400000000000000;
  sub_1955C(v29, v28, &qword_1C5800, &unk_16F510);
  v30 = sub_16D5CC();
  sub_40124(v30);
  v31 = *(v11 + 72);
  sub_B2788();
  if (v32)
  {

    sub_C878(v31, &qword_1C5800, &unk_16F510);
    *(v14 + 240) = 0u;
    *(v14 + 256) = 0u;
  }

  else
  {
    *(v14 + 264) = v10;
    sub_9910((v14 + 240));
    sub_400B8();
    v34 = *(v33 + 32);
    sub_40154();
    v35();
  }

  sub_B2794();
  v36 = *(v11 + 56);
  v37 = *(v11 + 107);
  sub_775F0();
  *(v14 + 272) = v12 | 2;
  *(v14 + 280) = v38;
  *(v14 + 288) = v39;
  *(v14 + 312) = &type metadata for Bool;
  *(v14 + 320) = v12;
  *(v14 + 328) = 0x800000000017DAD0;
  v40 = 0;
  if (v36)
  {
    v40 = sub_16D39C();
  }

  else
  {
    *(v14 + 344) = 0;
    *(v14 + 352) = 0;
  }

  sub_B28E0(v40);
  sub_B2624(&async function pointer to dispatch thunk of CATWrapperSimple.execute(catId:parameters:));
  swift_task_alloc();
  sub_179E8();
  *(v11 + 88) = v41;
  *v41 = v42;
  sub_B2828(v41);
  sub_B25D8();
  sub_774AC();

  return v46(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10);
}

uint64_t sub_B2030()
{
  sub_386A8();
  sub_400E8();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  v3[12] = v0;

  if (v0)
  {
    sub_8ACC();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v13 = v3[9];
    v12 = v3[10];

    v14 = sub_400A4();

    return v15(v14);
  }
}

uint64_t sub_B2160()
{
  sub_8A88();
  v2 = v0[9];
  v1 = v0[10];

  sub_C9BC();
  v4 = v0[12];

  return v3();
}

uint64_t sub_B21C4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_40154();
  return sub_B2214(v3, v4);
}

uint64_t sub_B2214(uint64_t a1, uint64_t a2)
{
  v5 = sub_16D63C();
  v6 = sub_401A4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2440(&qword_1C57F8, &unk_172510);
  v14 = sub_4348(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_1955C(a1, &v20 - v17, &qword_1C57F8, &unk_172510);
  (*(v8 + 16))(v12, a2, v2);
  v18 = sub_16D5DC();
  (*(v8 + 8))(a2, v2);
  sub_C878(a1, &qword_1C57F8, &unk_172510);
  return v18;
}

uint64_t sub_B238C(uint64_t a1, uint64_t a2)
{
  v5 = sub_16D63C();
  v6 = sub_401A4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_16D5EC();
  (*(v8 + 8))(a2, v3);
  return v15;
}

void sub_B24A8(uint64_t a1@<X8>)
{
  v2[12] = v1;
  v2[15] = a1;
  v2[16] = 0x6C61566C61746F74;
  v2[17] = 0xEA00000000006575;
}

uint64_t sub_B24D0(uint64_t result)
{
  *(v2 + 48) = v1;
  *(v2 + 72) = result;
  strcpy((v2 + 80), "averageValue");
  *(v2 + 93) = 0;
  *(v2 + 94) = -5120;
  return result;
}

__n128 *sub_B24FC(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1701669236;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_B2514@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + 40);
  v3[18] = v1;
  v3[21] = a1;
  v3[22] = 1953066613;
  v3[23] = 0xE400000000000000;
  return result;
}

void sub_B2534(uint64_t a1@<X8>)
{
  v2[18] = v1;
  v2[21] = a1;
  v2[22] = 0x65756C615678616DLL;
  v2[23] = 0xE800000000000000;
}

void sub_B2558(uint64_t a1@<X8>)
{
  v2[12] = v1;
  v2[15] = a1;
  v2[16] = 0x65756C61566E696DLL;
  v2[17] = 0xE800000000000000;
}

void sub_B257C(uint64_t a1@<X8>)
{
  *(v2 + 192) = v1;
  *(v2 + 216) = a1;
  strcpy((v2 + 224), "averageValue");
  *(v2 + 237) = 0;
  *(v2 + 238) = -5120;
}

uint64_t sub_B25A8(uint64_t a1)
{
  result = sub_369C(v1, 1, a1);
  v4 = *(v2 + 64);
  v5 = *(v2 + 16);
  return result;
}

uint64_t sub_B25EC(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 48) = a7;
  *(v8 + 56) = v7;
  *(v8 + 97) = a5;
  *(v8 + 32) = a4;
  *(v8 + 40) = a6;
  *(v8 + 96) = a3;
  *(v8 + 16) = result;
  *(v8 + 24) = a2;
  return result;
}

uint64_t sub_B2624@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t sub_B265C(uint64_t result)
{
  v2[6] = v1;
  v2[9] = result;
  v2[10] = 0x65756C6176;
  v2[11] = 0xE500000000000000;
  return result;
}

uint64_t sub_B267C@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 224) = v1;
  *(v2 + 232) = (a1 - 32) | 0x8000000000000000;
  return 0;
}

uint64_t sub_B26C4(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8)
{
  v11 = *(v10 + 16);
  v12 = *(v10 + 24);
  *(v9 + 64) = *(v10 + 32);
  *(v9 + 72) = v8;
  *(v9 + 115) = v11;
  *(v9 + 48) = a8;
  *(v9 + 56) = v12;
  *(v9 + 114) = a7;
  *(v9 + 113) = a5;
  *(v9 + 32) = a4;
  *(v9 + 40) = a6;
  *(v9 + 112) = a3;
  *(v9 + 16) = result;
  *(v9 + 24) = a2;
  return result;
}

uint64_t sub_B26F0@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + 80);
  result = *(v2 + 56);
  v3[30] = v1;
  v3[33] = a1;
  v3[34] = 1953066613;
  v3[35] = 0xE400000000000000;
  return result;
}

uint64_t sub_B2740@<X0>(uint64_t a1@<X8>)
{
  v3[18] = v1;
  v3[21] = a1;
  v3[22] = v4;
  v3[23] = (v2 - 32) | 0x8000000000000000;
  return 0;
}

uint64_t sub_B275C()
{
  result = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  return result;
}

uint64_t sub_B276C@<X0>(uint64_t a1@<X8>)
{
  v3[30] = v1;
  v3[33] = a1;
  v3[34] = v4;
  v3[35] = (v2 - 32) | 0x8000000000000000;
  return 0;
}

uint64_t sub_B27C0(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t a8, char a9, uint64_t a10)
{
  *(v11 + 56) = a10;
  *(v11 + 64) = v10;
  *(v11 + 99) = a9;
  *(v11 + 40) = a6;
  *(v11 + 48) = a8;
  *(v11 + 98) = a7;
  *(v11 + 97) = a5;
  *(v11 + 24) = a2;
  *(v11 + 32) = a4;
  *(v11 + 96) = a3;
  *(v11 + 16) = result;
  return result;
}

uint64_t sub_B27EC(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 56);
  return result;
}

double sub_B27F8()
{
  result = 0.0;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  return result;
}

uint64_t sub_B2804@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 96);
  v3[6] = a2;
  v3[9] = result;
  v3[10] = 0x65756C6176;
  v3[11] = 0xE500000000000000;
  return result;
}

uint64_t sub_B2828(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 64);
  return result;
}

uint64_t sub_B2834(uint64_t result)
{
  *(v2 + 240) = v1;
  *(v2 + 264) = result;
  return result;
}

uint64_t sub_B2840(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _swift_task_switch(a1, a2, a3);
}

uint64_t *sub_B2878()
{
  *(v1 + 216) = v0;

  return sub_9910((v1 + 192));
}

uint64_t sub_B2890()
{

  return swift_allocObject();
}

uint64_t sub_B28A8()
{

  return swift_allocObject();
}

uint64_t sub_B28E0(uint64_t result)
{
  *(v2 + 336) = v1;
  *(v2 + 360) = result;
  return result;
}

uint64_t sub_B28F8(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 48);
  return result;
}

uint64_t sub_B2904@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t sub_B2918()
{

  return swift_allocObject();
}

uint64_t sub_B2930()
{

  return swift_allocObject();
}

uint64_t sub_B2948()
{
  sub_B2EA4();
  if (v0 != 270)
  {
    sub_140650(v0);
    if (v6 == 0x61757274736E656DLL && v5 == 0xEC0000006E6F6974)
    {
LABEL_20:

LABEL_21:
      if (sub_16D65C())
      {
        sub_16CBCC();
        sub_4578C();
      }

      sub_B5210();
      v14 = v13;

      return *&v14;
    }

    v8 = sub_16E6BC();

    if (v8)
    {
      goto LABEL_21;
    }
  }

  sub_B2EA4();
  if (v1 == 270)
  {
    goto LABEL_3;
  }

  sub_140650(v1);
  if (v10 == 0x676E6974746F7073 && v9 == 0xE800000000000000)
  {
    goto LABEL_20;
  }

  sub_B6274();
  v12 = sub_16E6BC();

  if (v12)
  {
    goto LABEL_21;
  }

LABEL_3:
  v2 = sub_B337C();
  if (sub_3B35C(v2))
  {
    sub_3B360(0, (v2 & 0xC000000000000001) == 0, v2);
    if ((v2 & 0xC000000000000001) != 0)
    {
      sub_16E48C();
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = sub_16CDFC();

    if (v4)
    {
      sub_16C99C();
      sub_4578C();
    }
  }

  else
  {
  }

  sub_B598C();
  v14 = v15;
  v17 = v16;

  if ((v17 & 1) == 0 && v14 > 0.0)
  {
    v18 = sub_B2BD0();
    if (v18 != 61)
    {
      if (sub_39008(v18) == 0x6C696B5F666C6168 && v20 == 0xED00006D6172676FLL)
      {
      }

      else
      {
        v22 = sub_16E6BC();

        if ((v22 & 1) == 0)
        {
          return *&v14;
        }
      }

      v14 = v14 * 0.5;
    }
  }

  return *&v14;
}

uint64_t sub_B2BD0()
{
  sub_16CB3C();
  sub_74678(v26, v24, &qword_1C63E0, &unk_1717D0);
  if (v25)
  {
    sub_16CC9C();
    if (sub_B628C())
    {

      v2 = sub_B337C();
      if (sub_3B35C(v2))
      {
        sub_3B360(0, (v2 & 0xC000000000000001) == 0, v2);
        if ((v2 & 0xC000000000000001) != 0)
        {
LABEL_27:
          sub_16E48C();
        }

        else
        {
          v3 = *(v2 + 32);
        }
      }

      v4 = sub_16D7EC();

      sub_B6314();
      while (v0 + v1 != -1)
      {
        if (++v1 >= *(v4 + 16))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        v6 = v5 + 2;
        v8 = *(v5 - 1);
        v7 = *v5;

        v9 = sub_38FA8();
        v5 = v6;
        if (v9 != 61)
        {
          v10 = v9;
          sub_8748(v26, &qword_1C63E0, &unk_1717D0);

          return v10;
        }
      }
    }
  }

  else
  {
    sub_8748(v24, &qword_1C63E0, &unk_1717D0);
  }

  sub_74678(v26, v24, &qword_1C63E0, &unk_1717D0);
  if (v25)
  {
    sub_16C98C();
    if (sub_B628C())
    {

      sub_16CF0C();
      sub_4578C();
      v11 = sub_16D7FC();

      sub_B6314();
      while (v0 + v1 != -1)
      {
        if (++v1 >= *(v11 + 16))
        {
          goto LABEL_26;
        }

        v13 = v12 + 2;
        v15 = *(v12 - 1);
        v14 = *v12;

        v16 = sub_38FA8();
        v12 = v13;
        if (v16 != 61)
        {
          v10 = v16;
          sub_8748(v26, &qword_1C63E0, &unk_1717D0);

          return v10;
        }
      }
    }

    v21 = &qword_1C63E0;
    v22 = &unk_1717D0;
    v20 = v26;
  }

  else
  {
    sub_45624();
    sub_8748(v17, v18, v19);
    sub_45624();
  }

  sub_8748(v20, v21, v22);
  return 61;
}

void sub_B2EA4()
{
  sub_4597C();
  v2 = sub_2440(&qword_1C8FC8, &qword_174EF0);
  sub_4348(v2);
  v4 = *(v3 + 64);
  sub_433C();
  __chkstk_darwin(v5);
  v7 = v51 - v6;
  v8 = sub_2440(&qword_1C8FD0, &qword_174EF8);
  sub_4348(v8);
  v10 = *(v9 + 64);
  sub_433C();
  __chkstk_darwin(v11);
  sub_B62D4();
  v12 = sub_16CDDC();
  v13 = sub_42F0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  sub_887C();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  sub_B6264();
  v22 = sub_16D65C();
  v23 = sub_B2BD0();
  v24 = sub_B4F14(v22, v23);

  if (v24 == 270)
  {
    sub_16CB3C();
    sub_74678(v53, v51, &qword_1C63E0, &unk_1717D0);
    if (v52)
    {
      sub_16C98C();
      if ((sub_B62B0() & 1) == 0)
      {
        goto LABEL_13;
      }

      v25 = sub_16CF0C();

      if (v25 && (v26 = sub_16CCCC(), , v26))
      {
        sub_16CDCC();

        sub_8B20(v0, 1, v12);
        if (!v27)
        {
          v42 = *(v15 + 32);
          sub_B6280();
          v43();
          (*(v15 + 104))(v20, enum case for UsoEntity_common_MeasurementUnitType.DefinedValues.common_MeasurementUnitType_WeightUnit(_:), v12);
          v44 = sub_12170C(v1, v20);

          v45 = *(v15 + 8);
          v45(v20, v12);
          v46 = sub_B6308();
          (v45)(v46);
          if (v44)
          {
            sub_8748(v53, &qword_1C63E0, &unk_1717D0);
            goto LABEL_24;
          }

LABEL_13:
          sub_74678(v53, v51, &qword_1C63E0, &unk_1717D0);
          if (v52)
          {
            sub_16CCAC();
            if (sub_B62B0())
            {

              sub_16CD2C();

              if (!v51[0] || (v34 = sub_16CA0C(), , !v34))
              {
                sub_8748(v53, &qword_1C63E0, &unk_1717D0);

                goto LABEL_24;
              }

              sub_9AD84(v34, v7);

              v35 = sub_16C9CC();
              sub_8B20(v7, 1, v35);
              if (!v27)
              {
                v47 = sub_16C9AC();
                v49 = v48;
                (*(*(v35 - 8) + 8))(v7, v35);
                sub_142388(v47, v49);

                sub_8748(v53, &qword_1C63E0, &unk_1717D0);
                goto LABEL_24;
              }

              sub_8748(v53, &qword_1C63E0, &unk_1717D0);

              v36 = &qword_1C8FC8;
              v37 = &qword_174EF0;
              v38 = v7;
            }

            else
            {
              v36 = &qword_1C63E0;
              v37 = &unk_1717D0;
              v38 = v53;
            }
          }

          else
          {
            sub_45624();
            sub_8748(v39, v40, v41);
            sub_45624();
          }

          sub_8748(v38, v36, v37);
          goto LABEL_24;
        }
      }

      else
      {

        sub_8AB4();
        sub_214C(v31, v32, v33, v12);
      }

      v28 = &qword_1C8FD0;
      v29 = &qword_174EF8;
      v30 = v0;
    }

    else
    {
      v28 = &qword_1C63E0;
      v29 = &unk_1717D0;
      v30 = v51;
    }

    sub_8748(v30, v28, v29);
    goto LABEL_13;
  }

LABEL_24:
  sub_45924();
}

void *sub_B337C()
{
  if (!sub_16D65C())
  {
    return &_swiftEmptyArrayStorage;
  }

  if (!sub_16CBEC() || (sub_16CC3C(), sub_4578C(), !v0))
  {

    return &_swiftEmptyArrayStorage;
  }

  result = sub_3B35C(v0);
  v2 = result;
  v3 = 0;
  while (1)
  {
    if (v2 == v3)
    {

      return &_swiftEmptyArrayStorage;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      sub_B6308();
      result = sub_16E48C();
    }

    else
    {
      if (v3 >= *(&dword_10 + (v0 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_19;
      }

      v4 = *(v0 + 8 * v3 + 32);
    }

    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    sub_16C9EC();

    ++v3;
    if (v6)
    {
      sub_16E2AC();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_16E2EC();
      }

      result = sub_16E30C();
      v3 = v5;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_B34E4()
{
  v0 = sub_16CF4C();
  v2 = sub_158C3C(v0, v1);
  if (v2 > 9u)
  {
    return 0;
  }

  else
  {
    return byte_174FA6[v2];
  }
}

void sub_B3530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v20;
  a20 = v21;
  v22 = sub_16BF5C();
  v23 = sub_42F0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  sub_887C();
  __chkstk_darwin(v28);
  v30 = &a9 - v29;
  v31 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v31);
  v33 = *(v32 + 64);
  sub_433C();
  __chkstk_darwin(v34);
  v36 = &a9 - v35;
  v37 = sub_16BD9C();
  v38 = sub_42F0(v37);
  v40 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v38);
  sub_4304();
  v45 = v44 - v43;
  sub_B379C();
  sub_8B20(v36, 1, v37);
  if (v46)
  {
    sub_8748(v36, &qword_1C5690, &dword_16F320);
  }

  else
  {
    (*(v40 + 32))(v45, v36, v37);
    sub_16BF4C();
    v47 = sub_16BD8C();
    if (v47)
    {
      (*(v25 + 8))(v30, v22);
    }

    else
    {
      sub_16BD4C();
      sub_16BF0C();
      v48 = *(v25 + 8);
      v49 = sub_B62FC();
      v48(v49);
      (v48)(v30, v22);
    }

    (*(v40 + 8))(v45, v37);
  }

  sub_45924();
}

void sub_B379C()
{
  sub_4597C();
  v2 = v1;
  v3 = sub_16CFBC();
  v4 = sub_42F0(v3);
  v157 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_4304();
  v156 = v9 - v8;
  v10 = sub_16DBEC();
  v11 = sub_42F0(v10);
  v152 = v12;
  v153 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_4304();
  v151 = v16 - v15;
  v17 = sub_16CC6C();
  v18 = sub_42F0(v17);
  v159 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_4304();
  v24 = v23 - v22;
  v158 = sub_2440(&qword_1C6C28, &qword_174F10);
  v25 = sub_8B38(v158);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_887C();
  v30 = v28 - v29;
  __chkstk_darwin(v31);
  v33 = &v141 - v32;
  v34 = sub_2440(&qword_1C5680, &unk_16F310);
  v35 = sub_4348(v34);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  sub_887C();
  v150 = v38 - v39;
  v41 = __chkstk_darwin(v40);
  v154 = &v141 - v42;
  v43 = __chkstk_darwin(v41);
  v155 = &v141 - v44;
  __chkstk_darwin(v43);
  sub_B62E8();
  v46 = __chkstk_darwin(v45);
  v48 = &v141 - v47;
  __chkstk_darwin(v46);
  v50 = &v141 - v49;
  v51 = sub_16D65C();
  if (v51)
  {
    v147 = v24;
    v52 = v51;
    if (sub_16CBFC())
    {
      v148 = v2;
      sub_13BE60();
      v145 = v53;

      v149 = v52;
      v54 = sub_16CBFC();
      v146 = v3;
      v144 = v30;
      if (v54 && (v55 = sub_16CB9C(), , v55) && (v56 = sub_16CA6C(), , v56) && (v57 = sub_16C9FC(), , v57))
      {
        sub_16CC5C();
      }

      else
      {
        sub_8AB4();
        sub_214C(v58, v59, v60, v17);
      }

      v61 = v158;
      v62 = *(v159 + 104);
      HIDWORD(v143) = enum case for UsoEntity_common_ListPosition.DefinedValues.common_ListPosition_Previous(_:);
      v142 = v62;
      v62(v48);
      sub_214C(v48, 0, 1, v17);
      v63 = *(v61 + 48);
      sub_74678(v50, v33, &qword_1C5680, &unk_16F310);
      sub_74678(v48, &v33[v63], &qword_1C5680, &unk_16F310);
      sub_B622C(v33);
      if (v75)
      {
        sub_B6274();
        sub_8748(v64, v65, v66);
        sub_B6274();
        sub_8748(v67, v68, v69);
        sub_B622C(&v33[v63]);
        if (v75)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_74678(v33, v0, &qword_1C5680, &unk_16F310);
        sub_B622C(&v33[v63]);
        if (!v75)
        {
          v101 = v159;
          v102 = v147;
          (*(v159 + 32))(v147, &v33[v63], v17);
          sub_B624C();
          sub_B6158(v103, v104);
          HIDWORD(v141) = sub_16E19C();
          v105 = *(v101 + 8);
          v106 = v102;
          v61 = v158;
          v105(v106, v17);
          sub_8748(v48, &qword_1C5680, &unk_16F310);
          sub_8748(v50, &qword_1C5680, &unk_16F310);
          v105(v0, v17);
          sub_8748(v33, &qword_1C5680, &unk_16F310);
          if ((v141 & 0x100000000) != 0)
          {
LABEL_42:
            v124 = sub_16DBBC();
            swift_beginAccess();
            v126 = v151;
            v125 = v152;
            v127 = v153;
            (*(v152 + 16))(v151, v124, v153);
            v128 = sub_16DBDC();
            v129 = sub_16E36C();
            if (os_log_type_enabled(v128, v129))
            {
              v130 = swift_slowAlloc();
              *v130 = 0;
              _os_log_impl(&def_259DC, v128, v129, "We are forcing DateTime convergence strategy to be .future because user said previous dayOfWeek or monthOfYear", v130, 2u);
              sub_8A2C();
            }

            (*(v125 + 8))(v126, v127);
            sub_16C81C();
            v100 = &enum case for DateTimeResolutionSpec.DateTimeConvergenceStrategy.future(_:);
            goto LABEL_45;
          }

          goto LABEL_22;
        }

        sub_8748(v48, &qword_1C5680, &unk_16F310);
        sub_8748(v50, &qword_1C5680, &unk_16F310);
        (*(v159 + 8))(v0, v17);
      }

      sub_8748(v33, &qword_1C6C28, &qword_174F10);
LABEL_22:
      if (sub_16CBFC() && (v76 = sub_16CB9C(), , v76) && (v77 = sub_16CA2C(), , v77) && (v78 = sub_16C9FC(), , v78))
      {
        v79 = v155;
        sub_16CC5C();
      }

      else
      {
        v79 = v155;
        sub_8AB4();
        sub_214C(v80, v81, v82, v17);
      }

      v83 = v154;
      v142(v154, HIDWORD(v143), v17);
      sub_214C(v83, 0, 1, v17);
      v84 = *(v61 + 48);
      v85 = v144;
      sub_74678(v79, v144, &qword_1C5680, &unk_16F310);
      sub_74678(v83, v85 + v84, &qword_1C5680, &unk_16F310);
      sub_B622C(v85);
      if (!v75)
      {
        v92 = v150;
        sub_74678(v85, v150, &qword_1C5680, &unk_16F310);
        sub_B622C(v85 + v84);
        if (!v93)
        {
          v107 = v85;
          v108 = v159;
          v109 = v107 + v84;
          v110 = v147;
          (*(v159 + 32))(v147, v109, v17);
          sub_B624C();
          sub_B6158(v111, v112);
          v113 = sub_16E19C();
          v114 = *(v108 + 8);
          v114(v110, v17);
          sub_B6274();
          sub_8748(v115, v116, v117);
          sub_B6274();
          sub_8748(v118, v119, v120);
          v114(v92, v17);
          sub_B6274();
          sub_8748(v121, v122, v123);
          if (v113)
          {
            goto LABEL_42;
          }

LABEL_38:
          sub_16C81C();
          v100 = &enum case for DateTimeResolutionSpec.DateTimeConvergenceStrategy.past(_:);
LABEL_45:
          v132 = v156;
          v131 = v157;
          (*(v157 + 104))(v156, *v100, v146);
          sub_13C33C(v145, 1, v132, v133, v134, v135, v136, v137, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152);

          v138 = *(v131 + 8);
          v139 = sub_B62FC();
          v140(v139);
          sub_453DC(&v160);
          sub_45924();
          return;
        }

        sub_45624();
        sub_8748(v94, v95, v96);
        sub_45624();
        sub_8748(v97, v98, v99);
        (*(v159 + 8))(v92, v17);
LABEL_37:
        sub_8748(v85, &qword_1C6C28, &qword_174F10);
        goto LABEL_38;
      }

      sub_45624();
      sub_8748(v86, v87, v88);
      sub_45624();
      sub_8748(v89, v90, v91);
      sub_B622C(v85 + v84);
      if (!v75)
      {
        goto LABEL_37;
      }

      v33 = v85;
LABEL_33:
      sub_8748(v33, &qword_1C5680, &unk_16F310);
      goto LABEL_42;
    }
  }

  sub_16BD9C();
  sub_8AB4();
  sub_45924();

  sub_214C(v70, v71, v72, v73);
}

uint64_t sub_B4198()
{
  v0 = sub_16CF4C();
  LODWORD(result) = sub_158C3C(v0, v1);
  if (result == 9)
  {
    return 3;
  }

  else
  {
    return result;
  }
}

void sub_B41D0()
{
  sub_4597C();
  v1 = v0;
  v70 = sub_2440(&qword_1C5680, &unk_16F310);
  sub_8B38(v70);
  v3 = *(v2 + 64);
  sub_433C();
  __chkstk_darwin(v4);
  v69 = &v67 - v5;
  v68 = sub_2440(&qword_1C5688, &unk_16F500);
  sub_8B38(v68);
  v7 = *(v6 + 64);
  sub_433C();
  __chkstk_darwin(v8);
  v67 = &v67 - v9;
  v10 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v10);
  v12 = *(v11 + 64);
  sub_433C();
  __chkstk_darwin(v13);
  v15 = &v67 - v14;
  v16 = sub_16BD9C();
  v17 = sub_42F0(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_4304();
  v24 = v23 - v22;
  v25 = sub_16C0EC();
  v26 = sub_42F0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v26);
  sub_4304();
  v33 = v32 - v31;
  v34 = [objc_allocWithZone(NSDateIntervalFormatter) init];
  [v34 setDateStyle:1];
  sub_16C0DC();
  isa = sub_16C0CC().super.isa;
  (*(v28 + 8))(v33, v25);
  [v34 setTimeZone:isa];

  sub_B379C();
  sub_B622C(v15);
  if (v47)
  {
    sub_8748(v15, &qword_1C5690, &dword_16F320);
    v36 = 0xE300000000000000;
    v37 = 7104878;
  }

  else
  {
    (*(v19 + 32))(v24, v15, v16);
    v38 = sub_16BD2C().super.isa;
    v39 = [v34 stringFromDateInterval:v38];

    if (v39)
    {
      v37 = sub_16E1BC();
      v36 = v40;
    }

    else
    {
      v36 = 0xE300000000000000;
      v37 = 7104878;
    }

    (*(v19 + 8))(v24, v16);
  }

  v73 = 0;
  v74 = 0xE000000000000000;
  sub_16E47C(186);
  v75._countAndFlagsBits = 0xD000000000000015;
  v75._object = 0x800000000017F360;
  sub_16E26C(v75);
  v41 = sub_16CF4C();
  v43 = sub_158C3C(v41, v42);
  if (v43 == 9)
  {
    v44 = 3;
  }

  else
  {
    v44 = v43;
  }

  LOBYTE(v71) = v44;
  sub_16E52C();
  v76._countAndFlagsBits = 0x707954617461640ALL;
  v76._object = 0xEB00000000203A65;
  sub_16E26C(v76);
  sub_B2EA4();
  LOWORD(v71) = v45;
  sub_2440(&qword_1C5790, &unk_16F3B0);
  v77._countAndFlagsBits = sub_16E3DC();
  sub_16E26C(v77);

  v78._countAndFlagsBits = 0x6E6152657461640ALL;
  v78._object = 0xEC000000203A6567;
  sub_16E26C(v78);
  v79._countAndFlagsBits = v37;
  v79._object = v36;
  sub_16E26C(v79);

  sub_B6348("\nisRequestForUser: ");
  sub_B4900();
  v47 = (v46 & 1) == 0;
  if (v46)
  {
    v48._countAndFlagsBits = 1702195828;
  }

  else
  {
    v48._countAndFlagsBits = 0x65736C6166;
  }

  if (v47)
  {
    v49 = 0xE500000000000000;
  }

  else
  {
    v49 = 0xE400000000000000;
  }

  v48._object = v49;
  sub_16E26C(v48);

  v80._countAndFlagsBits = 0xD000000000000012;
  v80._object = 0x800000000017A8C0;
  sub_16E26C(v80);
  LOBYTE(v71) = sub_B2BD0();
  sub_2440(&qword_1C5798, &qword_1728A0);
  v81._countAndFlagsBits = sub_16E3DC();
  sub_16E26C(v81);

  sub_B6348("\nmeasurementValue: ");
  v71 = sub_B2948();
  v72 = v50 & 1;
  sub_2440(&qword_1C57A0, &qword_16F3C0);
  v82._countAndFlagsBits = sub_16E3DC();
  sub_16E26C(v82);

  v83._countAndFlagsBits = 0xD000000000000017;
  v83._object = 0x800000000017A900;
  sub_16E26C(v83);
  v51 = v67;
  sub_B4D9C(v1, &dispatch thunk of UsoEntity_common_HealthLog.valueQualifier.getter, &dispatch thunk of UsoEntity_common_MeasurementQualifier.definedValue.getter, &type metadata accessor for UsoEntity_common_MeasurementQualifier.DefinedValues);
  v52 = sub_16E3DC();
  v54 = v53;
  sub_8748(v51, &qword_1C5688, &unk_16F500);
  v84._countAndFlagsBits = v52;
  v84._object = v54;
  sub_16E26C(v84);

  v85._countAndFlagsBits = 0x736F507473696C0ALL;
  v85._object = 0xEF203A6E6F697469;
  sub_16E26C(v85);
  v55 = v69;
  sub_B4D9C(v1, &dispatch thunk of CodeGenGlobalArgs.usoListPosition.getter, &dispatch thunk of UsoEntity_common_ListPosition.definedValue.getter, &type metadata accessor for UsoEntity_common_ListPosition.DefinedValues);
  v56 = sub_16E3DC();
  v58 = v57;
  sub_8748(v55, &qword_1C5680, &unk_16F310);
  v86._countAndFlagsBits = v56;
  v86._object = v58;
  sub_16E26C(v86);

  v87._countAndFlagsBits = 0x726174537361680ALL;
  v87._object = 0xEF203A6574614474;
  sub_16E26C(v87);
  v59 = sub_B4E8C(v1, &dispatch thunk of UsoEntity_common_DateTimeRange.start.getter);
  v60 = (v59 & 1) == 0;
  if (v59)
  {
    v61._countAndFlagsBits = 1702195828;
  }

  else
  {
    v61._countAndFlagsBits = 0x65736C6166;
  }

  if (v60)
  {
    v62 = 0xE500000000000000;
  }

  else
  {
    v62 = 0xE400000000000000;
  }

  v61._object = v62;
  sub_16E26C(v61);

  v88._countAndFlagsBits = 0x44646E457361680ALL;
  v88._object = 0xED0000203A657461;
  sub_16E26C(v88);
  v63 = sub_B4E8C(v1, &dispatch thunk of UsoEntity_common_DateTimeRange.end.getter);
  v64 = (v63 & 1) == 0;
  if (v63)
  {
    v65._countAndFlagsBits = 1702195828;
  }

  else
  {
    v65._countAndFlagsBits = 0x65736C6166;
  }

  if (v64)
  {
    v66 = 0xE500000000000000;
  }

  else
  {
    v66 = 0xE400000000000000;
  }

  v65._object = v66;
  sub_16E26C(v65);

  sub_45924();
}

void sub_B4900()
{
  sub_4597C();
  v2 = sub_16CABC();
  v3 = sub_42F0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_4304();
  v10 = v9 - v8;
  v11 = sub_2440(&qword_1C8FD8, &qword_174F00);
  sub_8B38(v11);
  v13 = *(v12 + 64);
  sub_433C();
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  v17 = sub_2440(&qword_1C8FE0, &qword_174F08);
  v18 = sub_4348(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_887C();
  v23 = v21 - v22;
  __chkstk_darwin(v24);
  sub_5E160();
  __chkstk_darwin(v25);
  sub_B6264();
  if (sub_16D65C())
  {
    v39 = v10;
    if (!sub_16CBDC())
    {

      goto LABEL_14;
    }

    sub_16CAAC();
    v38 = v5;
    (*(v5 + 104))(v1, enum case for UsoEntity_common_Person.DefinedValues.common_Person_User(_:), v2);
    sub_214C(v1, 0, 1, v2);
    v26 = *(v11 + 48);
    v27 = sub_B6308();
    sub_74678(v27, v28, &qword_1C8FE0, &qword_174F08);
    sub_74678(v1, &v16[v26], &qword_1C8FE0, &qword_174F08);
    sub_8B20(v16, 1, v2);
    if (!v29)
    {
      sub_74678(v16, v23, &qword_1C8FE0, &qword_174F08);
      sub_8B20(&v16[v26], 1, v2);
      if (!v29)
      {
        v33 = v38;
        v34 = &v16[v26];
        v35 = v39;
        (*(v38 + 32))(v39, v34, v2);
        sub_B6158(&qword_1C8FE8, &type metadata accessor for UsoEntity_common_Person.DefinedValues);
        sub_16E19C();

        v36 = *(v33 + 8);
        v36(v35, v2);
        sub_8748(v1, &qword_1C8FE0, &qword_174F08);
        sub_8748(v0, &qword_1C8FE0, &qword_174F08);
        v37 = sub_B62FC();
        (v36)(v37);
        sub_8748(v16, &qword_1C8FE0, &qword_174F08);
        goto LABEL_14;
      }

      sub_8748(v1, &qword_1C8FE0, &qword_174F08);
      sub_8748(v0, &qword_1C8FE0, &qword_174F08);
      v30 = *(v38 + 8);
      v31 = sub_B62FC();
      v32(v31);
LABEL_13:
      sub_8748(v16, &qword_1C8FD8, &qword_174F00);
      goto LABEL_14;
    }

    sub_8748(v1, &qword_1C8FE0, &qword_174F08);
    sub_8748(v0, &qword_1C8FE0, &qword_174F08);
    sub_8B20(&v16[v26], 1, v2);
    if (!v29)
    {
      goto LABEL_13;
    }

    sub_8748(v16, &qword_1C8FE0, &qword_174F08);
  }

LABEL_14:
  sub_45924();
}

uint64_t sub_B4D9C(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t), void (*a4)(void))
{
  if (sub_16D65C() && (v7 = a2(), v8 = , v7))
  {
    a3(v8);
  }

  else
  {
    a4(0);
    sub_8AB4();

    return sub_214C(v10, v11, v12, v13);
  }
}

uint64_t sub_B4E8C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = sub_16D65C();
  if (result)
  {
    v4 = sub_16CBFC();

    if (v4 && (sub_16CB6C(), v5 = sub_4578C(), v6 = a2(v5), , v6))
    {

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_B4F14(uint64_t a1, char a2)
{
  if (sub_16D7CC())
  {
    return 239;
  }

  v5 = sub_16D64C();
  if (!v6)
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = sub_142388(v5, v6);
  if (v7 != 270)
  {
    v3 = v7;
    sub_140650(v7);
    if (v9 == 0x6168636C65656877 && v8 == 0xEE006573755F7269)
    {
    }

    else
    {
      sub_B6280();
      v11 = sub_16E6BC();

      if ((v11 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v3 = 268;
LABEL_18:
    if (!sub_C1AF4(v3, &off_1B7D48) || a2 == 61)
    {
      goto LABEL_25;
    }

    if (sub_39008(a2) == 1885697139 && v12 == 0xE400000000000000)
    {
    }

    else
    {
      v14 = sub_16E6BC();

      if ((v14 & 1) == 0)
      {
LABEL_25:
        sub_140650(v3);
        if (v16 == 0x6168636C65656877 && v15 == 0xEA00000000007269)
        {
        }

        else
        {
          sub_B6280();
          v18 = sub_16E6BC();

          if ((v18 & 1) == 0)
          {
LABEL_38:
            sub_140650(v3);
            if (v23 == 0x646E617473 && v22 == 0xE500000000000000)
            {

              if (a2 == 61)
              {
                return v3;
              }
            }

            else
            {
              v25 = sub_16E6BC();

              if ((v25 & 1) == 0 || a2 == 61)
              {
                return v3;
              }
            }

            if (sub_39008(a2) == 1920298856 && v26 == 0xE400000000000000)
            {
            }

            else
            {
              v28 = sub_16E6BC();

              if ((v28 & 1) == 0)
              {
                return v3;
              }
            }

            return 256;
          }
        }

        if (a2 != 61)
        {
          if (sub_39008(a2) == 0x6168636C65656877 && v19 == 0xEF687375705F7269)
          {
          }

          else
          {
            sub_B6280();
            v21 = sub_16E6BC();

            if ((v21 & 1) == 0)
            {
              goto LABEL_38;
            }
          }
        }

        return 247;
      }
    }

    return 269;
  }

  return sub_B5EC0(a2);
}

void sub_B5210()
{
  sub_4597C();
  v4 = v3;
  v5 = sub_16DBEC();
  v6 = sub_42F0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_887C();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  sub_5E160();
  __chkstk_darwin(v15);
  sub_B62E8();
  __chkstk_darwin(v16);
  v18 = &v74 - v17;
  v82 = sub_16C9CC();
  v19 = sub_42F0(v82);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_887C();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  sub_B6264();
  if (!v4)
  {
    sub_16DBBC();
    sub_3E174();
    (*(v8 + 16))(v13, v18, v5);
    v47 = sub_16DBDC();
    v48 = sub_16E36C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&def_259DC, v47, v48, "Failed to parse flowDistinction: no measurementCategory entity", v49, 2u);
      sub_8A2C();
    }

    v50 = *(v8 + 8);
    v51 = v13;
    goto LABEL_23;
  }

  v28 = sub_16CA0C();
  if (!v28)
  {
    sub_16DBBC();
    sub_3E174();
    (*(v8 + 16))(v2, v18, v5);

    v52 = sub_16DBDC();
    v53 = sub_16E36C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = v5;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v83 = v4;
      v84[0] = v56;
      *v55 = 136315138;
      sub_16CDBC();

      v57 = sub_16E1EC();
      v59 = sub_3AB7C(v57, v58, v84);

      *(v55 + 4) = v59;
      _os_log_impl(&def_259DC, v52, v53, "Failed to parse flowDistinction: no 'name' UsoIdentifier found in measurementCategory: %s", v55, 0xCu);
      sub_2D64(v56);
      sub_8A2C();
      sub_8A2C();

      (*(v8 + 8))(v2, v54);
      goto LABEL_32;
    }

    v50 = *(v8 + 8);
    v51 = v2;
LABEL_23:
    v50(v51, v5);
    goto LABEL_32;
  }

  v29 = v28;
  v76 = v1;
  v77 = v0;
  v75 = v18;
  v78 = v5;
  v79 = v4;
  v30 = *(v28 + 16);
  v80 = v8;
  v81 = v30;
  if (!v30)
  {
LABEL_13:
    sub_16DBBC();
    sub_3E174();
    v36 = v80;
    v38 = v77;
    v37 = v78;
    (*(v80 + 16))(v77, v18, v78);

    v39 = sub_16DBDC();
    v40 = sub_16E36C();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v84[0] = v42;
      *v41 = 136315138;
      v43 = sub_16E2DC();
      v45 = v44;

      v46 = sub_3AB7C(v43, v45, v84);

      *(v41 + 4) = v46;
      _os_log_impl(&def_259DC, v39, v40, "Failed to parse flowDistinction: no identifier found with namespace 'healthLogValueCategory' in identifiers: %s", v41, 0xCu);
      sub_2D64(v42);
      sub_8A2C();
      sub_8A2C();
    }

    else
    {
    }

    (*(v36 + 8))(v38, v37);
    goto LABEL_32;
  }

  v31 = 0;
  v32 = v28 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  while (1)
  {
    if (v31 >= *(v29 + 16))
    {
      __break(1u);
      return;
    }

    (*(v21 + 16))(v26, v32 + *(v21 + 72) * v31, v82);
    v33 = sub_16C9BC();
    if (!v34)
    {
      goto LABEL_12;
    }

    if (v33 == 0xD000000000000016 && 0x800000000017F340 == v34)
    {
      break;
    }

    v18 = sub_16E6BC();

    if (v18)
    {
      goto LABEL_26;
    }

LABEL_12:
    ++v31;
    (*(v21 + 8))(v26, v82);
    if (v81 == v31)
    {
      goto LABEL_13;
    }
  }

LABEL_26:

  v60 = v76;
  v61 = v82;
  (*(v21 + 32))(v76, v26, v82);
  v62 = sub_16C9AC();
  v64 = v63;
  (*(v21 + 8))(v60, v61);

  sub_16D84C();
  v65 = v80;
  if (v66)
  {
    sub_16DBBC();
    sub_3E174();
    v67 = v75;
    v68 = v78;
    (*(v65 + 16))(v75, v61, v78);

    v69 = sub_16DBDC();
    v70 = sub_16E36C();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v84[0] = v72;
      *v71 = 136315138;
      v73 = sub_3AB7C(v62, v64, v84);

      *(v71 + 4) = v73;
      _os_log_impl(&def_259DC, v69, v70, "Failed to parse flowDistinction: unexpected healthLogValueCategory value: %s", v71, 0xCu);
      sub_2D64(v72);
      sub_8A2C();
      sub_8A2C();
    }

    else
    {
    }

    (*(v65 + 8))(v67, v68);
  }

  else
  {
  }

LABEL_32:
  sub_45924();
}

void sub_B598C()
{
  sub_4597C();
  v3 = v2;
  v4 = sub_2440(&qword_1C8FC0, &unk_174EE0);
  sub_4348(v4);
  v6 = *(v5 + 64);
  sub_433C();
  __chkstk_darwin(v7);
  sub_B62D4();
  v8 = sub_16CAEC();
  v9 = sub_42F0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_887C();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  sub_B6264();
  if (v3)
  {
    sub_16CD6C();
    swift_retain_n();
    sub_16CBBC();
    if (!v30)
    {
      goto LABEL_7;
    }

    if (sub_16CD5C())
    {
      sub_16C99C();
      sub_16CB2C();
      sub_16CBBC();

      sub_16CB1C();
      v19 = v18;

      if ((v19 & 1) == 0)
      {
LABEL_13:

        goto LABEL_20;
      }

LABEL_7:
      sub_16CB2C();
      sub_B6328();
      if (!v30 || (sub_16CB1C(), v21 = v20, , (v21 & 1) != 0))
      {
        sub_16CB0C();
        sub_B6328();

        if (v30)
        {
          sub_16CADC();
          sub_8B20(v0, 1, v8);
          if (v22)
          {
            sub_8748(v0, &qword_1C8FC0, &unk_174EE0);
          }

          else
          {
            v23 = *(v11 + 32);
            sub_B6280();
            v24();
            (*(v11 + 104))(v16, enum case for UsoEntity_common_Decimal.DefinedValues.common_Decimal_Percent(_:), v8);
            v25 = sub_121874(v1, v16);
            v26 = *(v11 + 8);
            v26(v16, v8);
            v27 = sub_B6308();
            (v26)(v27);
            if (v25)
            {

              goto LABEL_20;
            }
          }

          v28 = sub_16CAFC();
          if (v29)
          {
            sub_B5E60(v28, v29);

            goto LABEL_20;
          }
        }

        goto LABEL_20;
      }

      goto LABEL_13;
    }
  }

LABEL_20:
  sub_45924();
}

uint64_t sub_B5E60(uint64_t a1, uint64_t a2)
{
  sub_B6044(a1, a2);

  return 0;
}

uint64_t sub_B5EC0(char a1)
{
  if (a1 != 61)
  {
    switch(a1)
    {
      case 16:
        return 76;
      case 38:
        return 241;
      case 37:
        return 248;
      case 36:
        return 230;
    }

    sub_38F88(a1);
  }

  v2 = sub_16D8EC();

  result = 261;
  switch(v2)
  {
    case 1:
      result = 267;
      break;
    case 2:
      return 230;
    case 3:
      v4 = 0xF7004C010DuLL >> (16 * ((a1 - 53) & 0xFu));
      if ((a1 - 53) > 2u)
      {
        LODWORD(v4) = 270;
      }

      if (a1 == 61)
      {
        result = 270;
      }

      else
      {
        result = v4;
      }

      break;
    default:
      return result;
  }

  return result;
}

_BYTE *sub_B5FD8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_B6044(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *(&stru_20.cmd + (a2 & 0xFFFFFFFFFFFFFFFLL));
      if (v3 < 0x21 && ((0x100003E01uLL >> v3) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    sub_16E46C();
    if (!v2)
    {
      return v7;
    }

    return v5;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t sub_B6158(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_B61B0(uint64_t a1)
{
  result = sub_B61D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_B61D8()
{
  result = qword_1C8FF0;
  if (!qword_1C8FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8FF0);
  }

  return result;
}

uint64_t sub_B628C()
{

  return swift_dynamicCast();
}

uint64_t sub_B62B0()
{

  return swift_dynamicCast();
}

uint64_t sub_B6328()
{

  return sub_16CBBC();
}

void sub_B6348(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000013;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_16E26C(v2);
}

uint64_t sub_B6370(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 161))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_B63B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_B642C()
{
  sub_17358();

  return sub_16C33C();
}

uint64_t sub_B6480()
{
  sub_8A88();
  v1[5] = v2;
  v1[6] = v0;
  v3 = sub_16DBEC();
  v1[7] = v3;
  sub_888C(v3);
  v1[8] = v4;
  v6 = *(v5 + 64) + 15;
  v1[9] = swift_task_alloc();
  v7 = sub_16C46C();
  v1[10] = v7;
  sub_888C(v7);
  v1[11] = v8;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v11 = sub_16C7BC();
  v1[14] = v11;
  sub_888C(v11);
  v1[15] = v12;
  v14 = *(v13 + 64) + 15;
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_B65E8, 0, 0);
}

uint64_t sub_B65E8()
{
  sub_8A88();
  v1 = *sub_2D20((*(v0 + 48) + 40), *(*(v0 + 48) + 64));
  v2 = swift_task_alloc();
  *(v0 + 136) = v2;
  *v2 = v0;
  v2[1] = sub_B6684;

  return sub_7ABE4();
}

uint64_t sub_B6684(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  sub_C990();
  *v7 = v6;

  if (v1)
  {

    v8 = sub_B6968;
  }

  else
  {
    *(v4 + 144) = a1;
    v8 = sub_B67A8;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_B67A8()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v19 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = v0[10];
  v8 = v0[5];
  v9 = v0[6];
  sub_16C45C();
  (*(v5 + 16))(v6, v4, v7);
  sub_16C75C();
  (*(v5 + 8))(v4, v7);
  v10 = [v1 patternId];
  sub_16E1BC();

  sub_16C76C();
  v11 = *(v9 + 32);
  sub_2D20(v9, *(v9 + 24));
  sub_16C2FC();
  v12 = *(v9 + 160);
  sub_16D70C();
  sub_16C4FC();

  (*(v3 + 8))(v2, v19);
  v13 = v0[16];
  v14 = v0[12];
  v15 = v0[13];
  v16 = v0[9];

  v17 = v0[1];

  return v17();
}

uint64_t sub_B6968()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = sub_16DBBC();
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_16DBDC();
  v6 = sub_16E37C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&def_259DC, v5, v6, "Failed to get wellness pattern for error message", v7, 2u);
  }

  v9 = v0[8];
  v8 = v0[9];
  v11 = v0[6];
  v10 = v0[7];
  v12 = v0[5];

  (*(v9 + 8))(v8, v10);
  v13 = *(v11 + 160);
  sub_16D6FC();
  sub_16C50C();
  v14 = v0[16];
  v15 = v0[12];
  v16 = v0[13];
  v17 = v0[9];

  v18 = v0[1];

  return v18();
}

uint64_t sub_B6AD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C374;

  return sub_B6480();
}

uint64_t sub_B6B70()
{
  sub_8A88();
  v1[15] = v2;
  v1[16] = v0;
  v1[17] = *v0;
  v3 = sub_16C7FC();
  v1[18] = v3;
  sub_888C(v3);
  v1[19] = v4;
  v6 = *(v5 + 64);
  v1[20] = sub_8BC0();
  v7 = *(*(sub_2440(&qword_1C6FF0, &unk_1730A0) - 8) + 64);
  v1[21] = sub_8BC0();
  v8 = sub_16C89C();
  v1[22] = v8;
  sub_888C(v8);
  v1[23] = v9;
  v11 = *(v10 + 64);
  v1[24] = sub_8BC0();
  v12 = sub_16C8FC();
  v1[25] = v12;
  sub_888C(v12);
  v1[26] = v13;
  v15 = *(v14 + 64);
  v1[27] = sub_8BC0();
  v16 = sub_16C80C();
  v1[28] = v16;
  sub_888C(v16);
  v1[29] = v17;
  v19 = *(v18 + 64) + 15;
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v20 = sub_16C83C();
  v1[32] = v20;
  sub_888C(v20);
  v1[33] = v21;
  v23 = *(v22 + 64);
  v1[34] = sub_8BC0();
  v24 = sub_16C7DC();
  v1[35] = v24;
  sub_888C(v24);
  v1[36] = v25;
  v27 = *(v26 + 64);
  v1[37] = sub_8BC0();
  v28 = sub_16DBEC();
  v1[38] = v28;
  sub_888C(v28);
  v1[39] = v29;
  v31 = *(v30 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v32 = sub_17960();

  return _swift_task_switch(v32, v33, v34);
}

uint64_t sub_B6E68()
{
  v136 = v0;
  v1 = *(v0 + 336);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v4 = *(v0 + 288);
  v5 = *(v0 + 296);
  v6 = *(v0 + 280);
  v7 = *(v0 + 120);
  v8 = sub_16DBBC();
  sub_8B48();
  v128 = v8;
  v127 = *(v3 + 16);
  v127(v1, v8, v2);
  (*(v4 + 16))(v5, v7, v6);
  v9 = sub_16DBDC();
  v10 = sub_16E36C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 336);
  v14 = *(v0 + 304);
  v13 = *(v0 + 312);
  v16 = *(v0 + 288);
  v15 = *(v0 + 296);
  v17 = *(v0 + 280);
  if (v11)
  {
    v133 = *(v0 + 336);
    v18 = *(v0 + 136);
    v131 = *(v0 + 304);
    v19 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    *v19 = 136315394;
    v20 = sub_16E7AC();
    v22 = sub_3AB7C(v20, v21, &v135);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    sub_6B580();
    sub_6B40C(v23, v24);
    sub_16E68C();
    (*(v16 + 8))(v15, v17);
    v25 = sub_C9F8();
    v28 = sub_3AB7C(v25, v26, v27);

    *(v19 + 14) = v28;
    _os_log_impl(&def_259DC, v9, v10, "%s Parsing Input: %s", v19, 0x16u);
    swift_arrayDestroy();
    sub_8A2C();
    sub_8A2C();

    v29 = *(v13 + 8);
    v29(v133, v131);
  }

  else
  {

    (*(v16 + 8))(v15, v17);
    v29 = *(v13 + 8);
    v29(v12, v14);
  }

  v30 = *(v0 + 248);
  v32 = *(v0 + 224);
  v31 = *(v0 + 232);
  v34 = *(v0 + 120);
  v33 = *(v0 + 128);
  v129 = sub_6AB10();
  v36 = v35;
  sub_16C7CC();
  v37 = *(v31 + 88);
  if (v37(v30, v32) != enum case for Parse.uso(_:))
  {
    (*(*(v0 + 232) + 8))(*(v0 + 248), *(v0 + 224));
LABEL_8:
    v47 = *(v0 + 240);
    v48 = *(v0 + 224);
    v49 = *(v0 + 120);
    sub_16C7CC();
    if (v37(v47, v48) != enum case for Parse.directInvocation(_:))
    {
      v59 = *(v0 + 320);
      v60 = *(v0 + 304);
      v61 = *(v0 + 232);
      v62 = *(v0 + 240);
      v63 = *(v0 + 224);

      (*(v61 + 8))(v62, v63);
      sub_8B48();
      v64 = sub_C9C8();
      (v127)(v64);
      v65 = sub_16DBDC();
      v66 = sub_16E37C();
      v67 = os_log_type_enabled(v65, v66);
      v69 = *(v0 + 312);
      v68 = *(v0 + 320);
      v70 = *(v0 + 304);
      if (v67)
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&def_259DC, v65, v66, "Received unsupported type of input", v71, 2u);
        sub_8A2C();
      }

      v72 = sub_C9F8();
      (v29)(v72);
      goto LABEL_30;
    }

    v50 = *(v0 + 240);
    v51 = *(v0 + 152);
    v52 = *(v0 + 160);
    v53 = *(v0 + 144);
    (*(*(v0 + 232) + 96))(v50, *(v0 + 224));
    (*(v51 + 32))(v52, v50, v53);
    v54 = sub_16C7EC();
    if (v54)
    {
      sub_17400(0xD000000000000012, 0x800000000017A960, v54, (v0 + 16));

      if (*(v0 + 40))
      {
        if (swift_dynamicCast())
        {
          if (*(v0 + 344) != 1)
          {
            (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

            v132 = 0;
            v134 = v36;
            goto LABEL_31;
          }

          v55 = *(v0 + 152);
          v56 = *(v0 + 160);
          v57 = *(v0 + 144);
          if (*(*(v0 + 128) + 16) == 1)
          {
            v135 = v36;

            sub_B96EC(v58);
          }

          else
          {
            v135 = v36;

            sub_B96EC(v129);
          }

          goto LABEL_42;
        }

        v126 = v29;

        goto LABEL_27;
      }
    }

    else
    {

      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    v126 = v29;
    sub_C878(v0 + 16, &qword_1C63E0, &unk_1717D0);
LABEL_27:
    v90 = *(v0 + 328);
    v91 = *(v0 + 304);
    sub_8B48();
    v127(v90, v128, v91);
    v92 = sub_16DBDC();
    v93 = sub_16E37C();
    v94 = os_log_type_enabled(v92, v93);
    v95 = *(v0 + 328);
    v96 = *(v0 + 304);
    v97 = *(v0 + 312);
    v99 = *(v0 + 152);
    v98 = *(v0 + 160);
    v100 = *(v0 + 144);
    if (v94)
    {
      v101 = swift_slowAlloc();
      *v101 = 0;
      _os_log_impl(&def_259DC, v92, v93, "LogMedAsNeededConfirmationStrategy failed to unpack directInvocation, returning nil", v101, 2u);
      sub_8A2C();
    }

    v126(v95, v96);
    v102 = *(v99 + 8);
    v103 = sub_C9C8();
    v104(v103);
LABEL_30:
    v132 = 0;
    v134 = 1;
    goto LABEL_31;
  }

  v134 = v36;
  v39 = *(v0 + 264);
  v38 = *(v0 + 272);
  v41 = *(v0 + 248);
  v40 = *(v0 + 256);
  v42 = *(v0 + 192);
  v124 = *(v0 + 200);
  v125 = v29;
  v43 = *(v0 + 184);
  v123 = *(v0 + 176);
  v44 = *(v0 + 168);
  (*(*(v0 + 232) + 96))(v41, *(v0 + 224));
  (*(v39 + 32))(v38, v41, v40);
  sub_16C82C();
  v45 = sub_16C88C();
  (*(v43 + 8))(v42, v123);
  sub_9AD9C(v45, v44);

  if (sub_369C(v44, 1, v124) == 1)
  {
    v46 = *(v0 + 168);
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    sub_C878(v46, &qword_1C6FF0, &unk_1730A0);
    v36 = v134;
    v29 = v125;
    goto LABEL_8;
  }

  (*(*(v0 + 208) + 32))(*(v0 + 216), *(v0 + 168), *(v0 + 200));
  if ((sub_16C8CC() & 1) == 0)
  {
    v80 = *(v0 + 216);
    v81 = sub_16C8DC();
    v82 = *(v0 + 264);
    v83 = *(v0 + 272);
    v84 = *(v0 + 256);
    v86 = *(v0 + 208);
    v85 = *(v0 + 216);
    v87 = *(v0 + 200);
    if (v81)
    {
      (*(v86 + 8))(*(v0 + 216), *(v0 + 200));
      v88 = sub_B9BE4();
      v89(v88);
    }

    else
    {
      v117 = sub_16C8EC();
      (*(v86 + 8))(v85, v87);
      v118 = sub_B9BE4();
      v119(v118);
      if ((v117 & 1) == 0)
      {
        v120 = *(v0 + 128);

        v134 = *(v120 + 24);

        v132 = 2;
        goto LABEL_31;
      }
    }

    v132 = 0;
    goto LABEL_31;
  }

  v73 = *(v0 + 264);
  v74 = *(v0 + 272);
  v75 = *(v0 + 256);
  v76 = *(v0 + 208);
  v77 = *(v0 + 216);
  v78 = *(v0 + 200);
  if (*(*(v0 + 128) + 16) == 1)
  {
    v135 = v134;

    sub_B96EC(v79);
  }

  else
  {
    v135 = v134;

    sub_B96EC(v129);
  }

  (*(v76 + 8))(v77, v78);
LABEL_42:
  v121 = sub_B9BE4();
  v122(v121);
  v132 = 1;
  v134 = v135;
LABEL_31:
  v106 = *(v0 + 328);
  v105 = *(v0 + 336);
  v107 = *(v0 + 320);
  v108 = *(v0 + 296);
  v109 = *(v0 + 272);
  v111 = *(v0 + 240);
  v110 = *(v0 + 248);
  v112 = *(v0 + 216);
  v113 = *(v0 + 192);
  v114 = *(v0 + 168);
  v130 = *(v0 + 160);

  v115 = *(v0 + 8);

  return v115(v132, v134);
}

uint64_t sub_B7844(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_16C7DC();
  v5 = sub_42F0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_4304();
  v12 = v11 - v10;
  v13 = sub_16DBEC();
  v14 = sub_42F0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_4304();
  v21 = v20 - v19;
  v22 = sub_16DBAC();
  sub_8B48();
  v36 = v13;
  (*(v16 + 16))(v21, v22, v13);
  (*(v7 + 16))(v12, a1, v4);
  v23 = sub_16DBDC();
  v24 = sub_16E36C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v25 = 136315394;
    v26 = sub_16E7AC();
    v28 = sub_3AB7C(v26, v27, &v37);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2080;
    sub_6B580();
    sub_6B40C(v29, v30);
    v31 = sub_16E68C();
    v33 = v32;
    (*(v7 + 8))(v12, v4);
    v34 = sub_3AB7C(v31, v33, &v37);

    *(v25 + 14) = v34;
    _os_log_impl(&def_259DC, v23, v24, "%s Handling Input: %s", v25, 0x16u);
    swift_arrayDestroy();
    sub_8A2C();
    sub_8A2C();
  }

  else
  {

    (*(v7 + 8))(v12, v4);
  }

  (*(v16 + 8))(v21, v36);
  return sub_16C47C();
}

uint64_t sub_B7B68()
{
  sub_8A88();
  v1[11] = v2;
  v1[12] = v0;
  v1[10] = v3;
  v1[13] = *v0;
  v4 = sub_16C46C();
  v1[14] = v4;
  sub_888C(v4);
  v1[15] = v5;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v8 = sub_16C7BC();
  v1[18] = v8;
  sub_888C(v8);
  v1[19] = v9;
  v11 = *(v10 + 64);
  v1[20] = sub_8BC0();
  v12 = sub_16DBEC();
  v1[21] = v12;
  sub_888C(v12);
  v1[22] = v13;
  v15 = *(v14 + 64);
  v1[23] = sub_8BC0();
  v16 = sub_17960();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_B7CE4()
{
  v27 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[11];
  v5 = sub_16DBBC();
  sub_8B48();
  (*(v2 + 16))(v1, v5, v3);
  swift_errorRetain();
  v6 = sub_16DBDC();
  v7 = sub_16E36C();

  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[22];
  v9 = v0[23];
  v11 = v0[21];
  if (v8)
  {
    v12 = v0[13];
    v13 = v0[11];
    v25 = v0[21];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v26 = v16;
    *v14 = 136315394;
    v17 = sub_16E7AC();
    v24 = v9;
    v19 = sub_3AB7C(v17, v18, &v26);

    *(v14 + 4) = v19;
    *(v14 + 12) = 2112;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v15 = v20;
    _os_log_impl(&def_259DC, v6, v7, "%s makeErrorResponse called with error: %@", v14, 0x16u);
    sub_C878(v15, &qword_1C57B8, &qword_1715A0);
    sub_8A2C();
    sub_2D64(v16);
    sub_8A2C();
    sub_8A2C();

    (*(v10 + 8))(v24, v25);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = *sub_2D20((v0[12] + 72), *(v0[12] + 96));
  v22 = swift_task_alloc();
  v0[24] = v22;
  *v22 = v0;
  v22[1] = sub_B7F34;

  return sub_7AA38();
}

uint64_t sub_B7F34()
{
  sub_386A8();
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  v6 = *(v5 + 192);
  *v4 = *v1;
  v3[25] = v7;

  if (v0)
  {
    v8 = v3[23];
    v9 = v3[20];
    v12 = v3 + 16;
    v10 = v3[16];
    v11 = v12[1];

    sub_C9BC();

    return v13();
  }

  else
  {
    sub_8ACC();

    return _swift_task_switch(v15, v16, v17);
  }
}

uint64_t sub_B8084()
{
  v1 = v0[25];
  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[12];
  sub_16C45C();
  (*(v6 + 16))(v4, v3, v5);
  sub_6B5C8();
  (*(v6 + 8))(v3, v5);
  sub_16C77C();
  v8 = [v1 patternId];
  sub_16E1BC();

  sub_16C76C();
  sub_8388(v7 + 208, (v0 + 2));
  v9 = v0[5];
  v10 = v0[6];
  sub_2D20(v0 + 2, v9);
  v11 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)[1];
  v12 = swift_task_alloc();
  v0[26] = v12;
  *v12 = v0;
  v12[1] = sub_B820C;
  v13 = v0[25];
  v14 = v0[20];
  v15 = v0[10];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(patternExecutionResult:outputGenerationManifest:)(v15, v13, v14, v9, v10);
}

uint64_t sub_B820C()
{
  sub_8A88();
  sub_C9D4();
  v3 = *(v2 + 208);
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *(v6 + 216) = v0;

  sub_8ACC();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_B830C()
{
  sub_386A8();
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);

  v4 = *(v2 + 8);
  v5 = sub_C9C8();
  v6(v5);
  sub_2D64((v0 + 16));
  v7 = *(v0 + 216);
  v8 = *(v0 + 184);
  v9 = *(v0 + 160);
  v11 = *(v0 + 128);
  v10 = *(v0 + 136);

  sub_C9BC();

  return v12();
}

uint64_t sub_B83BC()
{
  sub_8A88();
  v1[20] = v2;
  v1[21] = v0;
  v3 = sub_16DBEC();
  v1[22] = v3;
  sub_888C(v3);
  v1[23] = v4;
  v6 = *(v5 + 64);
  v1[24] = sub_8BC0();
  v7 = *(*(sub_2440(&qword_1C5990, &unk_16F760) - 8) + 64);
  v1[25] = sub_8BC0();
  v8 = *(*(sub_16C46C() - 8) + 64);
  v1[26] = sub_8BC0();
  v9 = sub_16C7BC();
  v1[27] = v9;
  sub_888C(v9);
  v1[28] = v10;
  v12 = *(v11 + 64);
  v1[29] = sub_8BC0();
  v13 = sub_17960();

  return _swift_task_switch(v13, v14, v15);
}

uint64_t sub_B8500()
{
  sub_C9EC();
  v1 = v0[21];
  v2 = sub_6AD78();
  v5 = *(v1 + 16);
  if (v5)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  v8 = v2 < 1 || v3 < 1;
  v9 = v4 > 0;
  v0[30] = *(v1 + 192);
  v10 = v6;

  v11 = swift_task_alloc();
  v0[31] = v11;
  *v11 = v0;
  v11[1] = sub_B85F0;

  return sub_1669B4(v5, *&v10, 0, v8, v9);
}

uint64_t sub_B85F0()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  v7 = *(v4 + 248);
  v8 = *v1;
  *v6 = *v1;

  v9 = *(v4 + 240);
  if (v0)
  {

    sub_8ACC();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {

    *(v5 + 256) = v3;
    v13 = swift_task_alloc();
    *(v5 + 264) = v13;
    *v13 = v8;
    v13[1] = sub_B87A4;

    return sub_66A84(0x6C65636E6163, 0xE600000000000000);
  }
}

uint64_t sub_B87A4()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v5 = *(v4 + 264);
  v6 = *v0;
  *v3 = v6;
  v2[34] = v7;
  v2[35] = v8;

  v9 = swift_task_alloc();
  v2[36] = v9;
  *v9 = v6;
  v9[1] = sub_B88D8;

  return sub_66A84(0x6D7269666E6F63, 0xE700000000000000);
}

uint64_t sub_B88D8()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  v3 = *(v1 + 288);
  v10 = *v0;
  *(v2 + 296) = v4;
  *(v2 + 304) = v5;

  v6 = sub_17960();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_B89C8()
{
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[35];
  v4 = v0[32];
  v5 = v0[29];
  v6 = v0[25];
  v7 = v0[26];
  v8 = v0[21];
  v9 = v3 == 0;
  if (!v3)
  {
    v3 = 0xE600000000000000;
  }

  v27 = v3;
  v10 = 0x6C65636E6143;
  if (!v9)
  {
    v10 = v0[34];
  }

  v26 = v10;
  if (!v1)
  {
    v2 = 0x6D7269666E6F43;
  }

  v25 = v2;
  if (v1)
  {
    v11 = v0[38];
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  v0[5] = &type metadata for WellnessFeatureFlagsKey;
  v0[6] = sub_3736C();
  *(v0 + 16) = 4;
  v12 = sub_16C86C();
  sub_2D64(v0 + 2);
  sub_16C44C();
  sub_6B5C8();
  sub_16C79C();
  sub_B91B8();
  v13 = sub_16C55C();
  sub_214C(v6, 0, 1, v13);
  sub_16C78C();
  sub_16C77C();
  v14 = [v4 catId];
  sub_16E1BC();

  sub_16C76C();
  sub_16C7AC();
  sub_8388(v8 + 208, (v0 + 7));
  v15 = v0[10];
  v16 = v0[11];
  sub_2D20(v0 + 7, v15);
  v0[15] = type metadata accessor for WellnessSnippets();
  v0[16] = sub_6B40C(&qword_1C5EE0, type metadata accessor for WellnessSnippets);
  v17 = sub_9910(v0 + 12);
  *v17 = 0xD000000000000031;
  v17[1] = 0x800000000017DF40;
  v17[2] = v26;
  v17[3] = v27;
  v17[4] = v25;
  v17[5] = v11;
  *(v17 + 48) = v12 & 1;
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v18 = swift_allocObject();
  v0[39] = v18;
  *(v18 + 16) = xmmword_170F70;
  *(v18 + 32) = v4;
  v19 = async function pointer to dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)[1];
  v20 = v4;
  v21 = swift_task_alloc();
  v0[40] = v21;
  *v21 = v0;
  v21[1] = sub_B8CB0;
  v22 = v0[29];
  v23 = v0[20];

  return dispatch thunk of ResponseGenerating.makeResponseOutput(conversationModel:dialog:outputGenerationManifest:)(v23, v0 + 12, v18, v22, v15, v16);
}