BOOL sub_4C760(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_4C77C()
{
  result = v0 - 200;
  v2 = *(v0 - 288);
  v3 = *(v0 - 280);
  return result;
}

uint64_t sub_4C794()
{

  return swift_slowAlloc();
}

void sub_4C7D0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_4C850(uint64_t a1)
{
  v49 = type metadata accessor for HealthNLIntent(0);
  v2 = sub_1168C(v49);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_C2A4();
  v7 = v6 - v5;
  v8 = sub_731D0();
  v9 = sub_5394(v8);
  v51 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_C2A4();
  v15 = v14 - v13;
  v16 = sub_72830();
  v17 = sub_5394(v16);
  v53 = v18;
  v54 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_C2A4();
  v52 = v22 - v21;
  v23 = sub_727F0();
  v24 = sub_5394(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  sub_C2A4();
  v31 = v30 - v29;
  v32 = sub_73970();
  v50 = sub_734D0();
  v33 = *v50;
  (*(v26 + 16))(v31, a1, v23);
  v34 = v32;
  if (os_log_type_enabled(v33, v32))
  {
    v46 = v33;
    v35 = swift_slowAlloc();
    v47 = v8;
    v36 = swift_slowAlloc();
    v55 = v36;
    *v35 = 136315138;
    sub_4F5B4(&unk_A6D40, &type metadata accessor for Input);
    v37 = sub_73DA0();
    v38 = v15;
    v39 = v7;
    v41 = v40;
    (*(v26 + 8))(v31, v23);
    v42 = sub_19144(v37, v41, &v55);
    v7 = v39;
    v15 = v38;

    *(v35 + 4) = v42;
    _os_log_impl(&dword_0, v46, v34, "HealthTCC# received input: %s", v35, 0xCu);
    sub_AE38(v36);
    v8 = v47;
  }

  else
  {
    (*(v26 + 8))(v31, v23);
  }

  sub_727E0();
  if ((*(v53 + 88))(v52, v54) == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v53 + 96))(v52, v54);
    (*(v51 + 32))(v15, v52, v8);
    (*(v51 + 16))(v7, v15, v8);
    if (qword_A3930 != -1)
    {
      swift_once();
    }

    sub_4F5B4(&qword_A42E8, type metadata accessor for HealthNLIntent);
    sub_72E30();
    switch(v56)
    {
      case 1:
        *(v48 + 72) = 0;
        goto LABEL_13;
      case 2:
        sub_72050();
        break;
      case 3:
        sub_73970();
        v45 = *v50;
        sub_73620();

        sub_72070();
        break;
      default:
        *(v48 + 72) = 1;
LABEL_13:
        sub_72060();
        break;
    }

    sub_BFD8(v7);
    return (*(v51 + 8))(v15, v8);
  }

  else
  {
    sub_73970();
    v43 = *v50;
    sub_73620();

    sub_72070();
    return (*(v53 + 8))(v52, v54);
  }
}

uint64_t sub_4CDF8(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_506C(&qword_A54E8, &qword_76BB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_506C(&unk_A6D30, &unk_79350);
  v9 = sub_1168C(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - v12;
  v14 = *(v2 + 72);
  v15 = sub_72340();
  sub_1168C(v15);
  v17 = &enum case for ConfirmationResponse.confirmed(_:);
  if (!v14)
  {
    v17 = &enum case for ConfirmationResponse.rejected(_:);
  }

  (*(v16 + 104))(v7, *v17, v15);
  sub_72340();
  sub_7CC4(v7, 0, 1, v15);
  sub_727D0();
  swift_storeEnumTagMultiPayload();
  a2(v13);
  return sub_10364(v13, &unk_A6D30, &unk_79350);
}

uint64_t sub_4CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_721F0();
  v8 = sub_5394(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_C2A4();
  v15 = v14 - v13;
  sub_379A4();
  sub_4D4B8(a1, v15, a3, a4);
  return (*(v10 + 8))(v15, v7);
}

uint64_t sub_4D078(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = v2;

  sub_72290();
}

uint64_t sub_4D104(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, void *a4)
{
  v30 = a4;
  v33 = a3;
  v34 = a2;
  v5 = sub_506C(&qword_A4050, &unk_75290);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v29 - v7;
  v9 = sub_72890();
  v32 = *(v9 - 8);
  v10 = *(v32 + 64);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_72270();
  v13 = *(v31 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v31);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_506C(&unk_A6CD0, &unk_75B80);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v29 - v19);
  sub_4F008(a1, &v29 - v19, &unk_A6CD0, &unk_75B80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *&v35 = *v20;
    v38 = 1;
    swift_errorRetain();
    v34(&v35);
  }

  else
  {
    v21 = v13;
    v22 = *(v13 + 32);
    v23 = v31;
    v22(v16, v20, v31);
    v24 = v30[6];
    sub_7C78(v30 + 2, v30[5]);
    sub_71ED0();
    v25 = sub_721F0();
    sub_7CC4(v8, 1, 1, v25);
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    sub_720E0();
    sub_10364(&v35, &unk_A6D20, &qword_76D80);
    sub_10364(v8, &qword_A4050, &unk_75290);
    *(&v36 + 1) = v9;
    v37 = &protocol witness table for AceOutput;
    v26 = sub_5BAC(&v35);
    v27 = v32;
    (*(v32 + 16))(v26, v12, v9);
    v38 = 0;
    v34(&v35);
    (*(v27 + 8))(v12, v9);
    (*(v21 + 8))(v16, v23);
  }

  return sub_10364(&v35, &qword_A4810, &unk_760A0);
}

uint64_t sub_4D4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v58 = a3;
  v59 = a4;
  v54 = a2;
  v56 = *v4;
  v55 = sub_721F0();
  v7 = sub_5394(v55);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v52 = v12;
  v53 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_506C(&unk_A6CC0, &qword_78F60);
  v14 = sub_1168C(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v51 = &v49 - v17;
  v50 = sub_71560();
  v18 = sub_5394(v50);
  v20 = v19;
  v22 = *(v21 + 64);
  __chkstk_darwin(v18);
  sub_C2A4();
  v25 = v24 - v23;
  v57 = swift_allocBox();
  v27 = v26;
  v49 = sub_733F0();
  sub_7CC4(v27, 1, 1, v49);
  v28 = sub_723E0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();

  v31 = a1;
  sub_723D0();
  v32 = v4[6];
  sub_7C78(v5 + 2, v5[5]);
  sub_71E90();
  sub_723C0();
  v34 = v33;
  v35 = v27;

  v36 = v25;
  v37 = v31;
  v38 = v51;
  (*(v20 + 8))(v36, v50);
  if (v34)
  {
    sub_733C0();
    sub_733E0();
    sub_7CC4(v38, 0, 1, v49);
    sub_4EF98(v38, v27);
  }

  v39 = v53;
  v40 = v55;
  (*(v9 + 16))(v53, v54, v55);
  v41 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v42 = (v52 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = *(v56 + 80);
  *(v43 + 24) = v5;
  (*(v9 + 32))(v43 + v41, v39, v40);
  v44 = (v43 + v42);
  v46 = v58;
  v45 = v59;
  *v44 = v58;
  v44[1] = v45;
  sub_4F008(v35, v38, &unk_A6CC0, &qword_78F60);
  sub_21FC0((v5 + 2), v60);
  v47 = swift_allocObject();
  v47[2] = v46;
  v47[3] = v45;
  v47[4] = v37;
  v47[5] = v5;
  v47[6] = sub_4EE78;
  v47[7] = v43;
  v47[8] = v57;
  swift_retain_n();
  swift_retain_n();

  sub_72000();

  sub_10364(v60, &qword_A6AD0, &qword_78F68);
  sub_10364(v38, &unk_A6CC0, &qword_78F60);
}

uint64_t sub_4D8E0(uint64_t a1, void *a2, void *a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6)
{
  v28 = a6;
  v29 = a5;
  v25[1] = a1;
  v26 = a4;
  v8 = sub_506C(&qword_A4050, &unk_75290);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v25 - v10;
  v27 = sub_72890();
  v12 = *(v27 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v27);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a3[6];
  sub_7C78(a3 + 2, a3[5]);
  sub_71ED0();
  sub_506C(&unk_A63F0, &unk_760C0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_752C0;
  *(v17 + 32) = a2;
  v18 = a3[6];
  sub_7C78(a3 + 2, a3[5]);
  v19 = a2;
  v20 = sub_71F00();
  sub_72260((v20 & 1) == 0);
  v21 = sub_721F0();
  (*(*(v21 - 8) + 16))(v11, v26, v21);
  sub_7CC4(v11, 0, 1, v21);
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_720F0();

  sub_10364(&v30, &unk_A6D20, &qword_76D80);
  sub_10364(v11, &qword_A4050, &unk_75290);
  v22 = v27;
  *(&v31 + 1) = v27;
  v32 = &protocol witness table for AceOutput;
  v23 = sub_5BAC(&v30);
  (*(v12 + 16))(v23, v15, v22);
  v33 = 0;
  v29(&v30);
  (*(v12 + 8))(v15, v22);
  return sub_10364(&v30, &qword_A4810, &unk_760A0);
}

uint64_t sub_4DBD4(uint64_t a1, void (*a2)(void *), uint64_t a3, void *a4, void *a5, void (*a6)(char *, id), uint64_t a7, uint64_t a8)
{
  v102 = a7;
  v101 = a6;
  v100 = a5;
  v106 = a4;
  v105 = a3;
  v104 = a2;
  v10 = sub_506C(&unk_A6CC0, &qword_78F60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v103 = &v84 - v12;
  v13 = sub_73390();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_72270();
  v107 = *(v108 - 8);
  v18 = *(v107 + 64);
  v19 = __chkstk_darwin(v108);
  v95 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v20;
  __chkstk_darwin(v19);
  v109 = &v84 - v21;
  v22 = sub_506C(&unk_A6CD0, &unk_75B80);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22);
  v97 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v84 - v27;
  __chkstk_darwin(v26);
  v30 = &v84 - v29;
  v96 = a8;
  v31 = swift_projectBox();
  sub_4F008(a1, v30, &unk_A6CD0, &unk_75B80);
  v98 = v22;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v110[0] = *v30;
    v111 = 1;
    swift_errorRetain();
    v104(v110);

    return sub_10364(v110, &qword_A4810, &unk_760A0);
  }

  else
  {
    v85 = v31;
    v33 = *(v107 + 32);
    v87 = v107 + 32;
    v86 = v33;
    v33(v109, v30, v108);
    sub_73280();
    v34 = sub_73270();
    sub_506C(&qword_A4818, &unk_75B90);
    v35 = *(v14 + 72);
    v36 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_74B40;
    sub_73380();
    v110[0] = v37;
    sub_4F5B4(&unk_A6CE0, &type metadata accessor for CATOption);
    sub_506C(&qword_A4820, qword_77FF0);
    sub_14D40();
    sub_73B10();
    v38 = type metadata accessor for HealthCATWrapper();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v99 = sub_4F648(v34, v17);
    v92 = sub_506C(&qword_A6CF8, &qword_79338);
    inited = swift_initStackObject();
    v91 = xmmword_74F60;
    *(inited + 16) = xmmword_74F60;
    v90 = 0x800000000007E0D0;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000000007E0D0;
    v89 = xmmword_79170;
    *(inited + 48) = xmmword_79160;
    *(inited + 64) = xmmword_79170;
    *(inited + 80) = sub_733B0();
    *(inited + 88) = v42;
    sub_506C(&qword_A6D00, &unk_75D30);
    sub_4F068();
    v43 = sub_73750();
    v44 = sub_3B410(v43);
    v46 = v45;

    v47 = sub_3B254(v44, v46);

    sub_4F87C();
    v48 = sub_73E70();
    v50 = v49;
    sub_10364(v28, &unk_A6CD0, &unk_75B80);
    if (v50)
    {
      v51 = v48;
    }

    else
    {
      v51 = 0;
    }

    if (!v50)
    {
      v50 = 0xE000000000000000;
    }

    sub_506C(&unk_A63F0, &unk_760C0);
    v52 = swift_allocObject();
    v88 = xmmword_752C0;
    *(v52 + 16) = xmmword_752C0;
    *(v52 + 32) = v47;
    v53 = objc_allocWithZone(SAUIConfirmationOption);
    v93 = v47;
    v54 = [v53 init];
    sub_4F0E4(v51, v50, v54);

    sub_4F13C(v52, v54);
    v55 = swift_initStackObject();
    *(v55 + 16) = v91;
    *(v55 + 32) = 0xD000000000000012;
    *(v55 + 40) = v90;
    v56 = v89;
    *(v55 + 48) = xmmword_79180;
    *(v55 + 64) = v56;
    *(v55 + 80) = sub_733B0();
    *(v55 + 88) = v57;
    v58 = sub_73750();
    v59 = sub_3B410(v58);
    v61 = v60;

    v62 = sub_3B254(v59, v61);

    v63 = v97;
    sub_4F8F8();
    v64 = sub_73E70();
    v66 = v65;
    sub_10364(v63, &unk_A6CD0, &unk_75B80);
    if (!v66)
    {
      v64 = 0;
      v66 = 0xE000000000000000;
    }

    v67 = swift_allocObject();
    *(v67 + 16) = v88;
    *(v67 + 32) = v62;
    v68 = objc_allocWithZone(SAUIConfirmationOption);
    v69 = v62;
    v70 = [v68 init];
    sub_4F0E4(v64, v66, v70);

    sub_4F13C(v67, v70);
    v106 = v54;
    v71 = sub_3B574(v54, v70, 0);
    v72 = v100[6];
    sub_7C78(v100 + 2, v100[5]);
    if (sub_71F00())
    {
      v73 = v85;
      swift_beginAccess();
      sub_4F008(v73, v103, &unk_A6CC0, &qword_78F60);
      v74 = v107;
      v75 = v95;
      v76 = v108;
      (*(v107 + 16))(v95, v109, v108);
      v77 = (*(v74 + 80) + 64) & ~*(v74 + 80);
      v78 = swift_allocObject();
      v79 = v105;
      *(v78 + 2) = v104;
      *(v78 + 3) = v79;
      v104 = v69;
      *(v78 + 4) = v96;
      *(v78 + 5) = v71;
      v80 = v102;
      *(v78 + 6) = v101;
      *(v78 + 7) = v80;
      v86(&v78[v77], v75, v76);

      v81 = v71;

      v82 = v103;
      sub_72020();

      sub_10364(v82, &unk_A6CC0, &qword_78F60);
      return (*(v74 + 8))(v109, v76);
    }

    else
    {
      v83 = v109;
      v101(v109, v71);

      return (*(v107 + 8))(v83, v108);
    }
  }
}

uint64_t sub_4E634(uint64_t a1, uint64_t a2, char a3, void (*a4)(void *), void (*a5)(void *), uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v36 = a8;
  v37 = a2;
  v38 = a4;
  v14 = sub_72270();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_506C(&unk_A6CC0, &qword_78F60);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v35 - v20;
  if (a3)
  {
    v39[0] = a1;
    v40 = 1;
    swift_errorRetain();
    v38(v39);
    v22 = &qword_A4810;
    v23 = &unk_760A0;
    v24 = v39;
  }

  else
  {
    v25 = a7;
    v35 = a9;
    v26 = swift_projectBox();
    swift_beginAccess();
    sub_4F008(v26, v21, &unk_A6CC0, &qword_78F60);
    (*(v15 + 16))(&v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a10, v14);
    v27 = (*(v15 + 80) + 72) & ~*(v15 + 80);
    v28 = swift_allocObject();
    v29 = v37;
    *(v28 + 2) = v38;
    *(v28 + 3) = a5;
    v38 = a5;
    v30 = v25;
    *(v28 + 4) = v25;
    *(v28 + 5) = a1;
    v32 = v35;
    v31 = v36;
    *(v28 + 6) = v29;
    *(v28 + 7) = v31;
    *(v28 + 8) = v32;
    (*(v15 + 32))(&v28[v27], v17, v14);
    sub_4F444(a1, v29, 0);

    v33 = v30;

    sub_72010();

    v24 = v21;
    v22 = &unk_A6CC0;
    v23 = &qword_78F60;
  }

  return sub_10364(v24, v22, v23);
}

uint64_t sub_4E8C0(uint64_t a1, uint64_t a2, char a3, void (*a4)(void *), uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, void *), uint64_t a10, uint64_t a11)
{
  if (a3)
  {
    v20[0] = a1;
    v21 = 1;
    swift_errorRetain();
    a4(v20);
    return sub_10364(v20, &qword_A4810, &unk_760A0);
  }

  else
  {
    v18 = sub_73790();
    sub_4F454(v18, v19, a6);
    sub_4F4B8(a1, a2, a6);
    sub_4F510(a7, a8, a6);
    return a9(a11, a6);
  }
}

uint64_t sub_4E9AC()
{
  sub_AE38((v0 + 16));
  v1 = *(v0 + 64);

  return v0;
}

uint64_t sub_4E9D4()
{
  sub_4E9AC();

  return _swift_deallocClassInstance(v0, 73, 7);
}

uint64_t sub_4EAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 + 80);
  v12 = type metadata accessor for HealthTCCAcceptanceFlowStrategy();

  return RequestTCCAcceptanceFlowStrategy.makeRepromptOnEmptyParse(app:intent:_:)(a1, a2, a3, a4, v12, a6);
}

uint64_t sub_4EB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 + 80);
  v12 = type metadata accessor for HealthTCCAcceptanceFlowStrategy();

  return RequestTCCAcceptanceFlowStrategy.makeRepromptOnLowConfidence(app:intent:_:)(a1, a2, a3, a4, v12, a6);
}

uint64_t sub_4EB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 + 80);
  v12 = type metadata accessor for HealthTCCAcceptanceFlowStrategy();

  return RequestTCCAcceptanceFlowStrategy.makePromptForDeviceUnlock(app:intent:_:)(a1, a2, a3, a4, v12, a6);
}

uint64_t sub_4EC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 + 80);
  v12 = type metadata accessor for HealthTCCAcceptanceFlowStrategy();

  return RequestTCCAcceptanceFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:_:)(a1, a2, a3, a4, v12, a6);
}

uint64_t sub_4EC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 + 80);
  v12 = type metadata accessor for HealthTCCAcceptanceFlowStrategy();

  return RequestTCCAcceptanceFlowStrategy.makeHandoffResponseForAuthenticationResponse(app:intent:_:)(a1, a2, a3, a4, v12, a6);
}

uint64_t sub_4ECF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 + 80);
  v14 = type metadata accessor for HealthTCCAcceptanceFlowStrategy();

  return IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(a1, a2, a3, a4, a5, v14, a7);
}

uint64_t sub_4EDB0()
{
  v1 = sub_721F0();
  sub_5394(v1);
  v3 = *(v2 + 80);
  v5 = (*(v4 + 64) + ((v3 + 32) & ~v3) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 24);

  v7 = sub_4F604();
  v8(v7);
  v9 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_4EE78(uint64_t a1, void *a2)
{
  v5 = *(sub_721F0() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return sub_4D8E0(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_4EF2C()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_4EF98(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&unk_A6CC0, &qword_78F60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_4F008(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_506C(a3, a4);
  sub_1168C(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

unint64_t sub_4F068()
{
  result = qword_A6D08;
  if (!qword_A6D08)
  {
    sub_D850(&qword_A6D00, &unk_75D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6D08);
  }

  return result;
}

void sub_4F0E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_73780();
  [a3 setLabel:v4];
}

void sub_4F13C(uint64_t a1, void *a2)
{
  sub_506C(&unk_A6D10, &unk_79340);
  isa = sub_73860().super.isa;

  [a2 setCommands:isa];
}

uint64_t sub_4F1BC()
{
  v1 = sub_72270();
  sub_5394(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  v8 = *(v0 + 56);

  v9 = sub_4F604();
  v10(v9);

  return _swift_deallocObject(v0, ((v3 + 64) & ~v3) + v5, v3 | 7);
}

uint64_t sub_4F284()
{
  v4 = *(*(sub_4F628() - 8) + 80);
  sub_4F614();
  return sub_4E634(v3, v2, v0 & 1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_4F2FC()
{
  v1 = sub_72270();
  sub_5394(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 48);

  v8 = *(v0 + 64);

  v9 = sub_4F604();
  v10(v9);

  return _swift_deallocObject(v0, ((v3 + 72) & ~v3) + v5, v3 | 7);
}

uint64_t sub_4F3C4()
{
  v4 = *(*(sub_4F628() - 8) + 80);
  sub_4F614();
  return sub_4E8C0(v3, v2, v0 & 1, v6, v7, v8, v9, v10, v11, *(v1 + 64), v1 + v5);
}

uint64_t sub_4F444(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

void sub_4F454(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_73780();

  [a3 setStyle:v4];
}

void sub_4F4B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_73780();
  [a3 setTitle:v4];
}

void sub_4F510(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_73780();
  [a3 setSubtitle:v4];
}

uint64_t sub_4F568()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_4F5B4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_4F614()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
}

uint64_t sub_4F628()
{

  return sub_72270();
}

uint64_t sub_4F648(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HealthCATWrapper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v2 + 16) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v2 + 24) = a1;
  v6 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin16HealthCATWrapper_options;
  v7 = sub_73390();
  sub_1168C(v7);
  (*(v8 + 32))(v2 + v6, a2);
  return v2;
}

uint64_t sub_4F6EC()
{
  sub_73300();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_732F0();
  return sub_10364(v4, &qword_A56E0, qword_79400);
}

uint64_t sub_4F78C(char a1, char a2)
{
  sub_506C(&qword_A4A10, &qword_75D28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_74F60;
  *(inited + 32) = 1953459315;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = sub_45428(a1);
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 1651664246;
  *(inited + 88) = 0xE400000000000000;
  v6 = sub_5C64(a2);
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v6;
  *(inited + 104) = v7;
  sub_73750();
  sub_5092C();
  sub_5094C();
}

uint64_t sub_4F87C()
{
  sub_73750();
  sub_5093C();
  sub_5094C();
}

uint64_t sub_4F8F8()
{
  sub_73750();
  sub_5093C();
  sub_5094C();
}

uint64_t sub_4F974()
{
  sub_73750();
  sub_5092C();
  sub_5094C();
}

uint64_t sub_4F9F0()
{
  sub_73750();
  sub_5093C();
  sub_5094C();
}

uint64_t sub_4FA6C(uint64_t a1, char a2, char a3)
{
  sub_506C(&qword_A3FA0, qword_74FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77300;
  sub_50964();
  *(v6 + 32) = v7;
  *(v6 + 40) = 0xE700000000000000;

  v8 = sub_72250();
  if (v8 && (v9 = v8, v10 = [v8 displayAppName], v9, v10))
  {
    v11 = sub_73790();
    v13 = v12;

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v11;
    *(inited + 56) = v13;
  }

  else
  {

    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
  }

  *(inited + 80) = 1953459315;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = sub_45428(a2);
  *(inited + 104) = v14;
  sub_50984();
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = v15;
  *(inited + 136) = 0xEB00000000646564;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = a3 & 1;
  sub_506C(&qword_A42F0, &qword_77260);
  v16 = sub_73750();
  sub_504B4(v16);

  sub_5092C();
  sub_50978(39);
  sub_4F6EC();
}

uint64_t sub_4FC14(char a1, void *a2)
{
  v4 = sub_73A00();
  if (v5)
  {
    goto LABEL_2;
  }

  v7 = v4;
  v8 = *&v4;
  v9 = [a2 workoutGoalUnitType];
  if (v9 == &dword_8)
  {
    sub_506C(&qword_A3FA0, qword_74FD0);
    inited = swift_initStackObject();
    v13 = sub_50914(inited, xmmword_74B40);
    v14 = 3600.0;
    goto LABEL_9;
  }

  if (v9 == (&dword_4 + 3))
  {
    sub_506C(&qword_A3FA0, qword_74FD0);
    v12 = swift_initStackObject();
    v13 = sub_50914(v12, xmmword_74B40);
    v14 = 60.0;
LABEL_9:
    v13[4].n128_u64[1] = &type metadata for Double;
    v13[3].n128_f64[0] = v8 * v14;
    goto LABEL_10;
  }

  if (v9 != (&dword_4 + 2))
  {
LABEL_2:
    v6 = 0;
    goto LABEL_11;
  }

  sub_506C(&qword_A3FA0, qword_74FD0);
  v10 = swift_initStackObject();
  v11 = sub_50914(v10, xmmword_74B40);
  v11[4].n128_u64[1] = &type metadata for Double;
  v11[3].n128_u64[0] = v7;
LABEL_10:
  sub_506C(&qword_A42F0, &qword_77260);
  v6 = sub_73750();
LABEL_11:
  sub_506C(&qword_A3FA0, qword_74FD0);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_79360;
  *(v16 + 32) = 1953459315;
  *(v16 + 40) = 0xE400000000000000;
  *(v16 + 48) = sub_45428(a1);
  *(v16 + 56) = v17;
  *(v16 + 72) = &type metadata for String;
  *(v16 + 80) = 0x6E6F697461727564;
  *(v16 + 88) = 0xE800000000000000;
  if (v6)
  {
    v18 = sub_506C(&qword_A6F78, "\u07B2");
  }

  else
  {
    v18 = 0;
    *(v16 + 104) = 0;
    *(v16 + 112) = 0;
  }

  *(v16 + 96) = v6;
  *(v16 + 120) = v18;
  *(v16 + 128) = 0x4E74756F6B726F77;
  *(v16 + 136) = 0xEB00000000656D61;
  v19 = [a2 workoutName];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 spokenPhrase];

    v20 = sub_73790();
    v23 = v22;

    v24 = &type metadata for String;
  }

  else
  {
    v23 = 0;
    v24 = 0;
    *(v16 + 160) = 0;
  }

  *(v16 + 144) = v20;
  *(v16 + 152) = v23;
  *(v16 + 168) = v24;
  *(v16 + 176) = 0x657079546C616F67;
  *(v16 + 184) = 0xE800000000000000;
  *(v16 + 192) = sub_3BC54([a2 workoutGoalUnitType]);
  *(v16 + 200) = v25;
  *(v16 + 216) = &type metadata for String;
  *(v16 + 224) = 0x756C61566C616F67;
  *(v16 + 232) = 0xE900000000000065;
  v26 = sub_73A00();
  if (v27)
  {
    *(v16 + 264) = &type metadata for Int;
    *(v16 + 240) = 0;
  }

  else
  {
    v37 = &type metadata for Double;
    *&v36 = v26;
    sub_1970C(&v36, (v16 + 240));
  }

  *(v16 + 272) = 0x6E6F697461636F6CLL;
  *(v16 + 280) = 0xE800000000000000;
  v28 = [a2 workoutLocationType];
  if (v28 == &dword_0 + 2)
  {
    v29 = 0xE600000000000000;
    v30 = 0x726F6F646E69;
    goto LABEL_24;
  }

  if (v28 == &dword_0 + 1)
  {
    v29 = 0xE700000000000000;
    v30 = 0x726F6F6474756FLL;
LABEL_24:
    *(v16 + 312) = &type metadata for String;
    *(v16 + 288) = v30;
    *(v16 + 296) = v29;
    goto LABEL_26;
  }

  *(v16 + 288) = 0u;
  *(v16 + 304) = 0u;
LABEL_26:
  sub_50984();
  *(v16 + 320) = v31;
  *(v16 + 328) = 0xEB00000000646564;
  v32 = sub_739E0();
  if (v32 == 2)
  {
    v33 = 0;
    *(v16 + 336) = 0;
    *(v16 + 344) = 0;
    *(v16 + 352) = 0;
  }

  else
  {
    *(v16 + 336) = v32 & 1;
    v33 = &type metadata for Bool;
  }

  *(v16 + 360) = v33;
  sub_506C(&qword_A42F0, &qword_77260);
  v34 = sub_73750();
  sub_504B4(v34);

  sub_50978(35);
  sub_4F6EC();
}

uint64_t sub_50070(uint64_t a1, char a2)
{
  sub_506C(&qword_A3FA0, qword_74FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77300;
  strcpy((inited + 32), "isPunchingOut");
  *(inited + 46) = -4864;
  *(inited + 48) = a2;
  sub_50964();
  v5[9] = &type metadata for Bool;
  v5[10] = v6;
  v5[11] = 0xE700000000000000;
  if (a1)
  {

    v7 = sub_72250();
    if (v7 && (v8 = v7, v9 = [v7 displayAppName], v8, v9))
    {
      v10 = sub_73790();
      v12 = v11;

      *(inited + 120) = &type metadata for String;
      *(inited + 96) = v10;
      *(inited + 104) = v12;
    }

    else
    {

      *(inited + 96) = 0u;
      *(inited + 112) = 0u;
    }

    *(inited + 128) = 0x5074737269467369;
    *(inited + 136) = 0xEF70704179747261;
    v13 = sub_733C0();
  }

  else
  {
    v13 = 0;
    *(inited + 96) = 0u;
    *(inited + 112) = 0u;
    *(inited + 128) = 0x5074737269467369;
    *(inited + 136) = 0xEF70704179747261;
  }

  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = v13;
  sub_506C(&qword_A42F0, &qword_77260);
  v14 = sub_73750();
  sub_504B4(v14);

  sub_50978(41);
  sub_4F6EC();
}

uint64_t sub_50260(uint64_t a1, uint64_t a2, char a3)
{
  sub_506C(&qword_A3FA0, qword_74FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_77300;
  *(inited + 32) = 0x646F43726F727265;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = a2;
  *(inited + 72) = &type metadata for Int;
  *(inited + 80) = 0x656D614E707061;
  *(inited + 88) = 0xE700000000000000;
  if (!a1)
  {
    goto LABEL_6;
  }

  v7 = sub_72250();
  if (!v7 || (v8 = v7, v9 = [v7 displayAppName], v8, !v9))
  {

LABEL_6:
    *(inited + 96) = 0u;
    *(inited + 112) = 0u;
    goto LABEL_7;
  }

  v10 = sub_73790();
  v12 = v11;

  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v10;
  *(inited + 104) = v12;
LABEL_7:
  *(inited + 128) = 0x656369766564;
  *(inited + 136) = 0xE600000000000000;
  sub_506C(&qword_A6F68, "ֲ");
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_74B40;
  *(v13 + 32) = 0x616C507261437369;
  *(v13 + 40) = 0xE900000000000079;
  *(v13 + 48) = a3 & 1;
  v14 = sub_73750();
  *(inited + 168) = sub_506C(&qword_A6F70, "ܲ");
  *(inited + 144) = v14;
  sub_506C(&qword_A42F0, &qword_77260);
  v15 = sub_73750();
  sub_504B4(v15);

  sub_5092C();
  sub_50978(33);
  sub_4F6EC();
}

uint64_t sub_50498(uint64_t a1, uint64_t a2, char a3)
{
  if ((a2 - 3) >= 3)
  {
    return sub_50070(a1, 0);
  }

  else
  {
    return sub_50260(a1, a2, a3 & 1);
  }
}

void *sub_504B4(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v9 = __clz(__rbit64(v5)) | (v7 << 6);
    v10 = (*(a1 + 48) + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    sub_C210(*(a1 + 56) + 32 * v9, v32);
    v27 = v32[0];
    v29 = v32[1];

    if (!v11)
    {
LABEL_19:

      return _swiftEmptyDictionarySingleton;
    }

    v5 &= v5 - 1;
    v31[0] = v27;
    v31[1] = v29;
    if (*(&v29 + 1))
    {
      sub_1970C(v31, v32);
      sub_14E68(v32, v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = sub_6D330(v12, v11);
      v13 = _swiftEmptyDictionarySingleton[2];
      v30 = v14;
      v15 = (v14 & 1) == 0;
      v16 = v13 + v15;
      if (__OFADD__(v13, v15))
      {
        goto LABEL_21;
      }

      sub_506C(&qword_A6F60, "ڲ");
      if (sub_73C50(isUniquelyReferenced_nonNull_native, v16))
      {
        v17 = sub_6D330(v12, v11);
        if ((v30 & 1) != (v18 & 1))
        {
          goto LABEL_23;
        }

        v19 = v17;
        if (v30)
        {
          goto LABEL_18;
        }

LABEL_15:
        _swiftEmptyDictionarySingleton[(v19 >> 6) + 8] |= 1 << v19;
        v20 = (_swiftEmptyDictionarySingleton[6] + 16 * v19);
        *v20 = v12;
        v20[1] = v11;
        sub_1970C(v31, (_swiftEmptyDictionarySingleton[7] + 32 * v19));
        sub_AE38(v32);
        v21 = _swiftEmptyDictionarySingleton[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_22;
        }

        _swiftEmptyDictionarySingleton[2] = v23;
      }

      else
      {
        v19 = v26;
        if ((v30 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_18:

        v24 = (_swiftEmptyDictionarySingleton[7] + 32 * v19);
        sub_AE38(v24);
        sub_1970C(v31, v24);
        sub_AE38(v32);
      }
    }

    else
    {

      sub_10364(v31, &qword_A42F0, &qword_77260);
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v6)
    {
      goto LABEL_19;
    }

    v5 = *(v2 + 8 * v7);
    ++v8;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_73DE0();
  __break(1u);
  return result;
}

uint64_t sub_50760()
{
  v1 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin16HealthCATWrapper_options;
  v2 = sub_73390();
  sub_1168C(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_507C8()
{
  sub_50760();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for HealthCATWrapper()
{
  result = qword_A6D80;
  if (!qword_A6D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_50874()
{
  result = sub_73390();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 *sub_50914(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1935893875;
  result[2].n128_u64[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_5094C()
{

  return sub_4F6EC();
}

_BYTE *storeEnumTagSinglePayload for HealthActivityUserMode(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x50A34);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_50A70()
{
  result = qword_A6F80;
  if (!qword_A6F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6F80);
  }

  return result;
}

BOOL sub_50AC4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_98488;
  v6._object = a2;
  v4 = sub_73CE0(v3, v6);

  return v4 != 0;
}

BOOL sub_50B38@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_50AC4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_50B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_50CA4();
  v5 = sub_50CF8();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5);
}

unint64_t sub_50BF8()
{
  result = qword_A6F88;
  if (!qword_A6F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6F88);
  }

  return result;
}

unint64_t sub_50C50()
{
  result = qword_A6F90;
  if (!qword_A6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6F90);
  }

  return result;
}

unint64_t sub_50CA4()
{
  result = qword_A6F98;
  if (!qword_A6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6F98);
  }

  return result;
}

unint64_t sub_50CF8()
{
  result = qword_A6FA0;
  if (!qword_A6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FA0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HealthActivityLocation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x50E18);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_50E54()
{
  result = qword_A6FA8;
  if (!qword_A6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FA8);
  }

  return result;
}

uint64_t sub_50EA8(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_984C0;
  v6._object = a2;
  v4 = sub_73CE0(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_50EF4(char a1)
{
  result = 0x726F6F646E69;
  switch(a1)
  {
    case 1:
      result = 0x726F6F6474756FLL;
      break;
    case 2:
      result = 1819242352;
      break;
    case 3:
      result = 0x657461776E65706FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_50FA4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_50EA8(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_50FD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_50EF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_51000(uint64_t a1, uint64_t a2)
{
  v4 = sub_51118();
  v5 = sub_5116C();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5);
}

unint64_t sub_5106C()
{
  result = qword_A6FB0;
  if (!qword_A6FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FB0);
  }

  return result;
}

unint64_t sub_510C4()
{
  result = qword_A6FB8;
  if (!qword_A6FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FB8);
  }

  return result;
}

unint64_t sub_51118()
{
  result = qword_A6FC0;
  if (!qword_A6FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FC0);
  }

  return result;
}

unint64_t sub_5116C()
{
  result = qword_A6FC8;
  if (!qword_A6FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FC8);
  }

  return result;
}

uint64_t sub_511C0(unsigned __int8 a1)
{
  if (a1 > 8u)
  {
    return 0;
  }

  else
  {
    return qword_797A0[a1];
  }
}

uint64_t getEnumTagSinglePayload for HealthMagnitudeUnit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for HealthMagnitudeUnit(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x5133CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_51378()
{
  result = qword_A6FD0;
  if (!qword_A6FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FD0);
  }

  return result;
}

uint64_t sub_513CC()
{
  v0 = sub_73DC0();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_51420(char a1)
{
  result = 1751346793;
  switch(a1)
  {
    case 1:
      v3 = 1701603693;
      goto LABEL_16;
    case 2:
      result = 0x6574656D6F6C696BLL;
      break;
    case 3:
      result = 0x73726574656DLL;
      break;
    case 4:
      result = 1952802150;
      break;
    case 5:
      v3 = 1685217657;
LABEL_16:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    case 6:
      result = 0x6E6F68746172616DLL;
      break;
    case 7:
      result = 0x736569726F6C6163;
      break;
    case 8:
      result = 0x656C756F6ALL;
      break;
    case 9:
      result = 0x6C756F6A6F6C696BLL;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x7265702074656566;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x65702073656C696DLL;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0x70206574756E696DLL;
      break;
    case 16:
      result = 0x6D6172676F6C696BLL;
      break;
    case 17:
      result = 1835102823;
      break;
    case 18:
      result = 0x646E756F70;
      break;
    case 19:
      result = 7172194;
      break;
    case 20:
      result = 1885697139;
      break;
    case 21:
      result = 0x726568746FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_516C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_513CC();
  *a2 = result;
  return result;
}

unint64_t sub_516F0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_51420(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_5171C(uint64_t a1, uint64_t a2)
{
  v4 = sub_51834();
  v5 = sub_51888();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5);
}

unint64_t sub_51788()
{
  result = qword_A6FD8;
  if (!qword_A6FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FD8);
  }

  return result;
}

unint64_t sub_517E0()
{
  result = qword_A6FE0;
  if (!qword_A6FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FE0);
  }

  return result;
}

unint64_t sub_51834()
{
  result = qword_A6FE8;
  if (!qword_A6FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FE8);
  }

  return result;
}

unint64_t sub_51888()
{
  result = qword_A6FF0;
  if (!qword_A6FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A6FF0);
  }

  return result;
}

uint64_t sub_518DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_73720();
  v3 = sub_5394(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_C2A4();
  v10 = v9 - v8;
  a1[3] = &type metadata for FlowConfigModel;
  a1[4] = &protocol witness table for FlowConfigModel;
  *a1 = swift_allocObject();
  sub_73490();
  v11 = *(type metadata accessor for FlowRouterX() + 20);
  v12 = sub_736F0();
  swift_beginAccess();
  (*(v5 + 16))(v10, v12, v2);
  return sub_73660();
}

uint64_t sub_51A5C(uint64_t a1)
{
  v2 = v1;
  v71 = a1;
  v69 = sub_73200();
  v3 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  sub_C2A4();
  v68 = v5 - v4;
  v6 = type metadata accessor for FlowRouterX();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  sub_C2A4();
  v70 = (v10 - v9);
  v11 = sub_73720();
  v12 = sub_5394(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_C2A4();
  v72 = v18 - v17;
  v19 = sub_73650();
  v20 = sub_5394(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v20);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v61 - v28;
  v30 = *(v7 + 28);
  sub_73670();
  sub_73630();
  v31 = sub_73670();
  v32 = sub_739C0();
  if (sub_73A60())
  {
    v33 = v29;
    v34 = v22;
    v35 = v2;
    v36 = v14;
    v37 = v11;
    v38 = v19;
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = sub_73640();
    _os_signpost_emit_with_name_impl(&dword_0, v31, v32, v40, "makeFlow", "", v39, 2u);
    v19 = v38;
    v11 = v37;
    v14 = v36;
    v2 = v35;
    v22 = v34;
    v29 = v33;
  }

  (*(v22 + 16))(v27, v29, v19);
  v41 = sub_736C0();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  sub_736B0();
  if (sub_521C4())
  {
    v44 = sub_736F0();
    swift_beginAccess();
    v45 = v72;
    (*(v14 + 16))(v72, v44, v11);
    v46 = v70;
    sub_522CC(v2, v70);
    v47 = sub_73710();
    v67 = sub_73970();
    if (os_log_type_enabled(v47, v67))
    {
      v48 = swift_slowAlloc();
      v63 = v48;
      v64 = swift_slowAlloc();
      v74 = v64;
      *v48 = 136315138;
      v65 = v11;
      v66 = v19;
      v50 = v46[3];
      v49 = v46[4];
      sub_7C78(v46, v50);
      v51 = *(v49 + 8);
      v62 = v47;
      v51(v73, v50, v49);
      sub_7C78(v73, v73[3]);
      v19 = v66;
      sub_71EA0();
      v52 = sub_737A0();
      v54 = v53;
      sub_AE38(v73);
      sub_52330(v46);
      v55 = sub_19144(v52, v54, &v74);

      v57 = v62;
      v56 = v63;
      *(v63 + 1) = v55;
      _os_log_impl(&dword_0, v57, v67, "Input origin is: %s", v56, 0xCu);
      sub_AE38(v64);

      (*(v14 + 8))(v72, v65);
    }

    else
    {

      (*(v14 + 8))(v45, v11);
      sub_52330(v46);
    }

    v58 = sub_2233C(v71);
  }

  else
  {
    v58 = sub_2AF64();
  }

  v59 = v58;
  sub_51F6C(v2);

  (*(v22 + 8))(v29, v19);
  return v59;
}

uint64_t sub_51F6C(uint64_t a1)
{
  v2 = sub_73690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_73650();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1 + *(type metadata accessor for FlowRouterX() + 20);
  v13 = sub_73670();
  sub_736A0();
  v14 = sub_739B0();
  if (sub_73A60())
  {

    sub_736D0();

    if ((*(v3 + 88))(v6, v2) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_73640();
    _os_signpost_emit_with_name_impl(&dword_0, v13, v14, v17, "makeFlow", v15, v16, 2u);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_521C4()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_7C78(v0, v1);
  (*(v2 + 8))(v5, v1, v2);
  sub_7C78(v5, v6);
  if (sub_71F00())
  {
    v3 = 0;
  }

  else
  {
    sub_7C78(v5, v6);
    v3 = sub_71EB0() ^ 1;
  }

  sub_AE38(v5);
  return v3 & 1;
}

uint64_t type metadata accessor for FlowRouterX()
{
  result = qword_A7050;
  if (!qword_A7050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_522CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowRouterX();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_52330(uint64_t a1)
{
  v2 = type metadata accessor for FlowRouterX();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_5238C()
{
  if (v0[5])
  {
    sub_AE38(v0 + 2);
  }

  if (v0[10])
  {
    sub_AE38(v0 + 7);
  }

  if (v0[15])
  {
    sub_AE38(v0 + 12);
  }

  if (v0[20])
  {
    sub_AE38(v0 + 17);
  }

  if (v0[25])
  {
    sub_AE38(v0 + 22);
  }

  if (v0[30])
  {
    sub_AE38(v0 + 27);
  }

  if (v0[35])
  {
    sub_AE38(v0 + 32);
  }

  return _swift_deallocObject(v0, 296, 7);
}

uint64_t sub_52440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_73680();
    v9 = a1 + *(a3 + 20);

    return sub_5124(v9, a2, v8);
  }
}

uint64_t sub_524DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_73680();
    v8 = v5 + *(a4 + 20);

    return sub_7CC4(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_5255C()
{
  result = sub_525E0();
  if (v1 <= 0x3F)
  {
    result = sub_73680();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_525E0()
{
  result = qword_A40F0;
  if (!qword_A40F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_A40F0);
  }

  return result;
}

uint64_t sub_5263C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v10 = sub_506C(&qword_A4A08, &qword_75D10);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v18 - v12;
  sub_738F0();
  v14 = sub_73910();
  sub_7CC4(v13, 0, 1, v14);
  sub_539C0(v5, v19);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = v19[1];
  *(v15 + 32) = v19[0];
  *(v15 + 48) = v16;
  *(v15 + 64) = v20;
  *(v15 + 72) = a1;
  *(v15 + 80) = a2;
  *(v15 + 88) = a4;
  *(v15 + 96) = a3;

  sub_54390(0, 0, v13, &unk_79820, v15);
}

uint64_t sub_52778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  *(v8 + 696) = a7;
  *(v8 + 448) = a6;
  *(v8 + 456) = a8;
  *(v8 + 432) = a4;
  *(v8 + 440) = a5;
  v9 = sub_71550();
  *(v8 + 464) = v9;
  v10 = *(v9 - 8);
  *(v8 + 472) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  v12 = sub_728B0();
  *(v8 + 496) = v12;
  v13 = *(v12 - 8);
  *(v8 + 504) = v13;
  v14 = *(v13 + 64) + 15;
  *(v8 + 512) = swift_task_alloc();
  v15 = sub_72980();
  *(v8 + 520) = v15;
  v16 = *(v15 - 8);
  *(v8 + 528) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 536) = swift_task_alloc();
  v18 = sub_73720();
  *(v8 + 544) = v18;
  v19 = *(v18 - 8);
  *(v8 + 552) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  *(v8 + 584) = swift_task_alloc();
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  *(v8 + 624) = swift_task_alloc();
  *(v8 + 632) = swift_task_alloc();

  return _swift_task_switch(sub_529CC, 0, 0);
}

uint64_t sub_529CC()
{
  v1 = v0[69];
  v2 = v0[54];
  v3 = v2[3];
  v4 = v2[4];
  sub_7C78(v2, v3);
  LOBYTE(v4) = (*(v4 + 8))(0xD00000000000001ALL, 0x800000000007ECD0, v3, v4);
  v5 = sub_736E0();
  v0[80] = v5;
  v6 = v1 + 16;
  v7 = v0[68];
  if (v4)
  {
    v8 = v0[70];
    sub_53CCC();
    v9 = *v6;
    v10 = sub_53C88();
    v11(v10);
    v12 = sub_73710();
    v13 = sub_73970();
    v14 = sub_53D08(v13);
    v15 = v0[70];
    v16 = v0[69];
    v17 = v0[68];
    if (v14)
    {
      v18 = sub_22324();
      sub_53D40(v18);
      sub_53CE8(&dword_0, v19, v20, "[AppSelection] not enabled");
      sub_4C70C();
    }

    v21 = *(v16 + 8);
    v22 = sub_221CC();
    v23(v22);
LABEL_24:
    sub_53C98();
    v96 = v0[61];
    v97 = v0[60];

    v92 = v0[1];
    sub_22210();

    __asm { BRAA            X1, X16 }
  }

  v24 = v0[79];
  sub_53CCC();
  v25 = *v6;
  v0[81] = *v6;
  v0[82] = v6 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v26 = sub_53C88();
  v25(v26);
  v27 = sub_73710();
  v28 = sub_73970();
  if (sub_22238(v28))
  {
    *sub_22324() = 0;
    sub_53D24();
    _os_log_impl(v29, v30, v31, v32, v33, 2u);
    sub_7EBC();
  }

  v34 = v0[79];
  v35 = v0[69];
  v36 = v0[68];

  v37 = *(v35 + 8);
  v0[83] = v37;
  v37(v34, v36);
  v38 = objc_opt_self();
  v39 = [v38 sharedConnection];
  if (!v39)
  {
    __break(1u);
    goto LABEL_28;
  }

  v40 = v39;
  v41 = [v39 isDiagnosticSubmissionAllowed];

  v42 = v0[68];
  if (!v41)
  {
    v71 = v0[71];
    sub_53CCC();
    v72 = sub_53C88();
    v25(v72);
    v73 = sub_73710();
    v74 = sub_73970();
    v75 = sub_53D08(v74);
    v76 = v0[71];
    v77 = v0[69];
    v78 = v0[68];
    if (v75)
    {
      v79 = sub_22324();
      sub_53D40(v79);
      v82 = "[AppSelection] Diagnostics & Usage is not enabled";
LABEL_22:
      sub_53CE8(&dword_0, v80, v81, v82);
      sub_4C70C();
    }

LABEL_23:

    v91 = sub_221CC();
    (v37)(v91);
    goto LABEL_24;
  }

  v43 = v0[78];
  sub_53CCC();
  (v25)(v43, v5, v42);
  v44 = sub_73710();
  v45 = sub_73970();
  if (sub_53D08(v45))
  {
    v46 = sub_22324();
    sub_53D40(v46);
    sub_53CE8(&dword_0, v47, v48, "[AppSelection] Diagnostics & Usage is enabled");
    sub_4C70C();
  }

  v49 = v0[78];
  v50 = v0[69];
  v51 = v0[68];

  v37(v49, v51);
  v52 = [v38 sharedConnection];
  if (!v52)
  {
LABEL_28:
    __break(1u);
    return static AppFinder.listApps(intentID:siriAuthorizationRestriction:)();
  }

  v53 = v52;
  v54 = [v52 isHealthDataSubmissionAllowed];

  v55 = v0[68];
  if (!v54)
  {
    v83 = v0[72];
    sub_53CCC();
    v84 = sub_53C88();
    v25(v84);
    v73 = sub_73710();
    v85 = sub_73970();
    v86 = sub_53D08(v85);
    v87 = v0[72];
    v88 = v0[69];
    v89 = v0[68];
    if (v86)
    {
      v90 = sub_22324();
      sub_53D40(v90);
      v82 = "[AppSelection] Improve Health & Activity is not enabled";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v56 = v0[77];
  sub_53CCC();
  v57 = sub_53C88();
  v25(v57);
  v58 = sub_73710();
  v59 = sub_73970();
  if (sub_22238(v59))
  {
    *sub_22324() = 0;
    sub_222A4(&dword_0, v60, v61, "[AppSelection] Improve Health & Activity is enabled");
    sub_7EBC();
  }

  v62 = v0[77];
  v63 = v0[69];
  v64 = v0[68];

  v65 = sub_221CC();
  (v37)(v65);
  v0[84] = sub_4C4BC(&off_97DB8);
  v66 = async function pointer to static AppFinder.listApps(intentID:siriAuthorizationRestriction:)[1];
  v67 = swift_task_alloc();
  v0[85] = v67;
  *v67 = v0;
  v67[1] = sub_52F38;
  v69 = v0[55];
  v68 = v0[56];
  sub_22210();

  return static AppFinder.listApps(intentID:siriAuthorizationRestriction:)();
}

uint64_t sub_52F38(uint64_t a1)
{
  v2 = *(*v1 + 680);
  v3 = *(*v1 + 672);
  v5 = *v1;
  *(*v1 + 688) = a1;

  return _swift_task_switch(sub_53058, 0, 0);
}

void sub_53058()
{
  v136 = v0;
  v1 = *(v0 + 688);
  v2 = sub_114FC(v1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = v1 + 32;
  v132 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v2 == v3)
    {
      v19 = *(v0 + 688);
      v20 = *(v0 + 656);
      v21 = *(v0 + 648);
      v22 = *(v0 + 640);
      v23 = *(v0 + 608);
      v24 = *(v0 + 544);
      v25 = *(v0 + 448);

      sub_B168();
      v26 = sub_53D34();
      v21(v26);

      v27 = sub_73710();
      v28 = sub_73990();

      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 664);
      v31 = *(v0 + 608);
      v32 = *(v0 + 552);
      v33 = *(v0 + 544);
      if (v29)
      {
        v35 = *(v0 + 440);
        v34 = *(v0 + 448);
        v128 = *(v0 + 664);
        v36 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        *v36 = 136315394;
        *(v36 + 4) = sub_19144(v35, v34, &v135);
        *(v36 + 12) = 2080;
        v37 = sub_73880();
        v39 = sub_19144(v37, v38, &v135);

        *(v36 + 14) = v39;
        _os_log_impl(&dword_0, v27, v28, "[StartWorkout HandleIntentStrategy] Candidate %s apps: %s", v36, 0x16u);
        swift_arrayDestroy();
        sub_7EBC();
        sub_7EBC();

        v128(v31, v33);
      }

      else
      {

        v30(v31, v33);
      }

      v40 = *(v0 + 536);
      v41 = *(v0 + 528);
      v42 = *(v0 + 520);
      v44 = *(v0 + 504);
      v43 = *(v0 + 512);
      v45 = *(v0 + 496);
      v129 = *(v0 + 456);
      v127 = *(v0 + 696);
      v46 = sub_72970();
      v47 = *(v46 + 48);
      v48 = *(v46 + 52);
      swift_allocObject();
      sub_72960();
      sub_72940();

      sub_72950();

      *(v0 + 120) = v42;
      *(v0 + 128) = &protocol witness table for SignalDefinitionParametersProvider;
      v49 = sub_5BAC((v0 + 96));
      (*(v41 + 16))(v49, v40, v42);
      v50 = sub_728E0();
      v51 = *(v50 + 48);
      v52 = *(v50 + 52);
      swift_allocObject();
      sub_728D0();
      sub_728C0();

      v53 = *(v0 + 88);
      sub_7C78((v0 + 56), *(v0 + 80));
      (*(v44 + 104))(v43, enum case for DomainUseCase.startWorkout(_:), v45);
      sub_728F0();
      (*(v44 + 8))(v43, v45);
      v54 = *(v0 + 168);
      sub_7C78((v0 + 136), *(v0 + 160));
      sub_72900();
      sub_AE38((v0 + 136));
      sub_AE38((v0 + 56));
      v55 = *(v0 + 48);
      sub_7C78((v0 + 16), *(v0 + 40));
      type metadata accessor for WorkoutsSignalValuesProcessor();
      v56 = swift_allocObject();
      *(v56 + 16) = v127;
      *(v56 + 24) = v129;
      *(v0 + 424) = v56;
      sub_30DCC();

      sub_72930();

      v57 = *(v0 + 416);
      v58 = *(v0 + 656);
      v59 = *(v0 + 648);
      v60 = *(v0 + 640);
      v61 = *(v0 + 544);
      if (v57)
      {
        v62 = *(v0 + 592);
        sub_B168();
        v63 = sub_53D34();
        v59(v63);
        v64 = v57;
        v65 = sub_73710();
        LOBYTE(v62) = sub_73970();

        if (os_log_type_enabled(v65, v62))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          *v66 = 138412290;
          *(v66 + 4) = v64;
          *v67 = v57;
          v68 = v64;
          sub_53D24();
          _os_log_impl(v69, v70, v71, v72, v73, 0xCu);
          sub_7DF8(v67);
          sub_4C70C();
          sub_7EBC();
        }

        v74 = *(v0 + 664);
        v75 = *(v0 + 592);
        v76 = *(v0 + 552);
        v77 = *(v0 + 544);

        v74(v75, v77);
        v78 = [objc_allocWithZone(INFERENCESchemaINFERENCEClientEvent) init];
        if (v78)
        {
          v79 = v78;
          v80 = [objc_allocWithZone(INFERENCESchemaINFERENCEClientEventMetadata) init];
          if (v80)
          {
            v81 = v80;
            v82 = *(v0 + 528);
            v130 = *(v0 + 520);
            v133 = *(v0 + 536);
            v83 = *(v0 + 480);
            v84 = *(v0 + 488);
            v86 = *(v0 + 464);
            v85 = *(v0 + 472);
            sub_71540();
            sub_53C34();
            (*(v85 + 16))(v83, v84, v86);
            v87 = sub_53B24(v83);
            [v81 setInferenceId:v87];

            [v79 setEventMetadata:v81];
            [v79 setWorkoutsAppSelectionGroundTruthGenerated:v64];
            v88 = [objc_opt_self() sharedAnalytics];
            v89 = [v88 defaultMessageStream];

            isa = sub_71530().super.isa;
            [v89 emitMessage:v79 isolatedStreamUUID:isa];

            (*(v85 + 8))(v84, v86);
            (*(v82 + 8))(v133, v130);
            goto LABEL_31;
          }
        }

        v105 = *(v0 + 656);
        v106 = *(v0 + 648);
        v107 = *(v0 + 640);
        v108 = *(v0 + 584);
        v109 = *(v0 + 544);
        sub_B168();
        v110 = sub_53D34();
        v106(v110);
        v111 = sub_73710();
        v112 = sub_73980();
        if (sub_22238(v112))
        {
          *sub_22324() = 0;
          sub_53D24();
          _os_log_impl(v113, v114, v115, v116, v117, 2u);
          sub_7EBC();
        }

        v118 = *(v0 + 664);
        v119 = *(v0 + 584);
        v120 = *(v0 + 544);
        v121 = *(v0 + 536);
        v122 = *(v0 + 528);
        v123 = *(v0 + 520);

        v118(v119, v120);
        (*(v122 + 8))(v121, v123);
      }

      else
      {
        v91 = *(v0 + 600);
        sub_B168();
        v92 = sub_53D34();
        v59(v92);
        v93 = sub_73710();
        v94 = sub_73990();
        if (sub_22238(v94))
        {
          *sub_22324() = 0;
          sub_222A4(&dword_0, v95, v96, "No SELF message generated");
          sub_7EBC();
        }

        v97 = *(v0 + 664);
        v98 = *(v0 + 600);
        v99 = *(v0 + 552);
        v100 = *(v0 + 544);
        v101 = *(v0 + 536);
        v102 = *(v0 + 528);
        v103 = *(v0 + 520);

        v104 = sub_221CC();
        v97(v104);
        (*(v102 + 8))(v101, v103);
      }

LABEL_31:
      sub_AE38((v0 + 16));
      sub_53C98();
      v131 = *(v0 + 488);
      v134 = *(v0 + 480);

      v124 = *(v0 + 8);
      sub_22210();

      __asm { BRAA            X1, X16 }
    }

    if (v4)
    {
      v15 = *(v0 + 688);
      sub_73B70();
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_35;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v9 = sub_733B0();
    v11 = v10;

    ++v3;
    if (v11)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v12 = v132;
      }

      else
      {
        v16 = v132[2];
        sub_10098();
        v12 = v17;
      }

      v13 = v12[2];
      if (v13 >= v12[3] >> 1)
      {
        sub_10098();
        v12 = v18;
      }

      v12[2] = v13 + 1;
      v132 = v12;
      v14 = &v12[2 * v13];
      v14[4] = v9;
      v14[5] = v11;
      v3 = v8;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_539F8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_AE38(v0 + 4);
  v2 = v0[10];

  v3 = v0[12];

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_53A48(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_14A58;

  return sub_52778(a1, v4, v5, v1 + 32, v6, v7, v8, v9);
}

id sub_53B24(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  isa = sub_71530().super.isa;
  v4 = [v2 initWithNSUUID:isa];

  v5 = sub_71550();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void sub_53BC0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unint64_t sub_53C34()
{
  result = qword_A7088;
  if (!qword_A7088)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A7088);
  }

  return result;
}

uint64_t sub_53C98()
{
  result = v0[79];
  v2 = v0[78];
  v3 = v0[77];
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[73];
  v8 = v0[72];
  v9 = v0[71];
  v10 = v0[70];
  v11 = v0[67];
  v12 = v0[64];
  return result;
}

uint64_t sub_53CCC()
{

  return swift_beginAccess();
}

void sub_53CE8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

BOOL sub_53D08(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_53D4C(uint64_t a1)
{
  if (sub_72800() == 0xD000000000000034 && 0x800000000007ECF0 == v2)
  {

LABEL_8:
    v8 = sub_72810();
    if (v8)
    {
      sub_6CDBC(0xD000000000000014, 0x800000000007ED30, v8, &v20);

      if (*(&v21 + 1))
      {
        if (swift_dynamicCast())
        {
          v7 = sub_5412C(v18, v19);
          v9 = sub_72820();
          sub_2E638(v9);
          (*(v10 + 8))(a1);
          return v7;
        }

        v15 = sub_72820();
        sub_2E638(v15);
        (*(v16 + 8))(a1);
        return 2;
      }

      v13 = sub_72820();
      sub_2E638(v13);
      (*(v14 + 8))(a1);
    }

    else
    {
      v11 = sub_72820();
      sub_2E638(v11);
      (*(v12 + 8))(a1);
      v20 = 0u;
      v21 = 0u;
    }

    sub_2E308(&v20);
    return 2;
  }

  v4 = sub_73DB0();

  if (v4)
  {
    goto LABEL_8;
  }

  v5 = sub_72820();
  sub_2E638(v5);
  (*(v6 + 8))(a1);
  return 3;
}

id sub_53F48(void *a1, unsigned __int8 a2)
{
  v4 = a2;
  sub_2E534();
  v5 = sub_31BB8();
  sub_506C(&qword_A5768, &unk_77268);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_74B40;
  sub_73B30();
  *(inited + 96) = sub_506C(&qword_A6D00, &unk_75D30);
  v7 = 0x656D7269666E6F63;
  if (a2)
  {
    v7 = 0x64657463656A6572;
  }

  v8 = 0xE900000000000064;
  if (a2)
  {
    v8 = 0xE800000000000000;
  }

  if (v4 == 2)
  {
    v7 = 0;
    v8 = 0;
  }

  *(inited + 72) = v7;
  *(inited + 80) = v8;
  v9 = sub_73750();
  sub_31C68(v9, v5);
  v10 = objc_opt_self();
  v11 = a1[4];
  sub_7C78(a1, a1[3]);
  v12 = sub_71F20();
  v13 = [v10 runSiriKitExecutorCommandWithContext:v12 payload:v5];

  v14 = [v10 wrapCommandInStartLocalRequest:v13];
  return v14;
}

uint64_t sub_5412C(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_98438;
  v7._object = a2;
  v4 = sub_73CE0(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_54180(char a1)
{
  if (a1)
  {
    return 0x64657463656A6572;
  }

  else
  {
    return 0x656D7269666E6F63;
  }
}

unint64_t sub_541BC(char a1)
{
  if (a1)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000034;
  }
}

uint64_t sub_541F4@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v4 = sub_72270();
  v5 = sub_5394(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_C2A4();
  v12 = v11 - v10;
  v13 = sub_506C(&unk_A6CD0, &unk_75B80);
  v14 = sub_1168C(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v21 - v17);
  sub_4F008(v2, &v21 - v17, &unk_A6CD0, &unk_75B80);
  result = swift_getEnumCaseMultiPayload();
  v20 = result;
  if (result == 1)
  {
    *a2 = *v18;
  }

  else
  {
    (*(v7 + 32))(v12, v18, v4);
    v22(v12);
    result = (*(v7 + 8))(v12, v4);
  }

  *(a2 + 40) = v20 == 1;
  return result;
}

uint64_t sub_54390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_506C(&qword_A4A08, &qword_75D10);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_4F008(a3, v26 - v11, &qword_A4A08, &qword_75D10);
  v13 = sub_73910();
  v14 = sub_5124(v12, 1, v13);

  if (v14 == 1)
  {
    sub_10364(v12, &qword_A4A08, &qword_75D10);
  }

  else
  {
    sub_73900();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_738E0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_737D0() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_10364(a3, &qword_A4A08, &qword_75D10);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10364(a3, &qword_A4A08, &qword_75D10);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_54674(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v46 = a5;
  v47 = a4;
  v44 = a3;
  v45 = a1;
  v5 = sub_72270();
  v6 = sub_5394(v5);
  v42 = v7;
  v43 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_C2A4();
  v41 = v11 - v10;
  v12 = sub_73390();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_C2A4();
  v17 = v16 - v15;
  v18 = sub_506C(&unk_A6CD0, &unk_75B80);
  v19 = sub_1168C(v18);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = (&v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v22);
  v26 = &v40 - v25;
  sub_73280();
  v27 = sub_73270();
  sub_506C(&qword_A4818, &unk_75B90);
  v28 = *(v13 + 72);
  v29 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_74B40;
  sub_73380();
  v48[0] = v30;
  sub_55824(&unk_A6CE0, 255, &type metadata accessor for CATOption);
  sub_506C(&qword_A4820, qword_77FF0);
  sub_14D40();
  sub_73B10();
  v31 = type metadata accessor for HealthCATWrapper();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  swift_allocObject();
  sub_4F648(v27, v17);
  v34 = [v44 code];
  sub_50498(v45, v34, 0);

  sub_4F008(v26, v24, &unk_A6CD0, &unk_75B80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v48[0] = *v24;
  }

  else
  {
    v37 = v41;
    v36 = v42;
    v38 = v43;
    (*(v42 + 32))(v41, v24, v43);
    sub_54A18(v48);
    (*(v36 + 8))(v37, v38);
  }

  v49 = EnumCaseMultiPayload == 1;
  v47(v48);
  sub_10364(v48, &qword_A4810, &unk_760A0);
  return sub_10364(v26, &unk_A6CD0, &unk_75B80);
}

uint64_t sub_54A18@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_506C(&qword_A4050, &unk_75290);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v9 - v4;
  sub_72840();
  sub_72840();
  sub_7C78(v11, v11[3]);
  sub_71ED0();
  v6 = sub_721F0();
  sub_7CC4(v5, 1, 1, v6);
  v7 = sub_72890();
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  a1[3] = v7;
  a1[4] = &protocol witness table for AceOutput;
  sub_5BAC(a1);
  sub_720E0();
  sub_10364(v9, &unk_A6D20, &qword_76D80);
  sub_10364(v5, &qword_A4050, &unk_75290);
  sub_AE38(v12);
  return sub_AE38(v11);
}

uint64_t sub_54B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_506C(&qword_A4A08, &qword_75D10);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v15 - v10;
  v12 = sub_73910();
  sub_7CC4(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v5;
  v13[5] = a4;
  v13[6] = a5;

  sub_54390(0, 0, v11, &unk_799C0, v13);
}

uint64_t sub_54C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[18] = a5;
  v6[19] = a6;
  v6[17] = a4;
  return _swift_task_switch(sub_54CBC, 0, 0);
}

uint64_t sub_54CBC()
{
  v1 = **(v0 + 136);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = sub_72240();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_72230();
  *(v0 + 64) = v4;
  *(v0 + 72) = &protocol witness table for ResponseFactory;
  *(v0 + 40) = v7;
  v8 = sub_73750();
  *(v0 + 16) = 0xD00000000000001ALL;
  *(v0 + 24) = 0x800000000007EDA0;
  *(v0 + 32) = v3;
  *(v0 + 80) = v8;
  v9 = swift_task_alloc();
  *(v0 + 160) = v9;
  *v9 = v0;
  v9[1] = sub_54E3C;

  return sub_2CCDC(v0 + 88, v0 + 16, _swiftEmptyArrayStorage);
}

uint64_t sub_54E3C()
{
  sub_7F1C();
  sub_B0BC();
  v2 = *(v1 + 160);
  v3 = *v0;
  sub_B044();
  *v4 = v3;

  return _swift_task_switch(sub_54F28, 0, 0);
}

uint64_t sub_54F28()
{
  sub_7F1C();
  v1 = *(v0 + 152);
  (*(v0 + 144))(v0 + 88);
  sub_10364(v0 + 88, &qword_A4810, &unk_760A0);
  sub_160DC(v0 + 16);
  sub_7EA4();

  return v2();
}

uint64_t sub_54FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePromptForDeviceUnlock(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_55048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeHandoffForAuthenticationResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_550C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makePreHandleIntentOutput(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_55158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeContinueInAppResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_551D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for ResumeWorkoutHandleIntentStrategy();

  return HandleIntentFlowStrategy.makeInProgressResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_55274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ResumeWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_552C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for ResumeWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_55324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for ResumeWorkoutHandleIntentStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_553D8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_55420(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = sub_55890(v8);
  *v9 = v10;
  v9[1] = sub_ACC4;

  return sub_54C98(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_554E0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_555D8;

  return v7(a1);
}

uint64_t sub_555D8()
{
  sub_7F1C();
  sub_B0BC();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_B044();
  *v4 = v3;

  sub_7EA4();

  return v5();
}

uint64_t sub_556BC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_556F4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_55890(v3);
  *v4 = v5;
  v6 = sub_55870(v4);

  return v7(v6);
}

uint64_t sub_5578C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_55890(v3);
  *v4 = v5;
  v6 = sub_55870(v4);

  return v7(v6);
}

uint64_t sub_55824(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_55870(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void sub_558A0(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v4 = sub_55B6C(a1);
  if (v4)
  {
    v5 = v4;
    v6 = *sub_734D0();
    sub_73970();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_74B40;
    v8 = v5;
    v9 = [v8 description];
    v10 = sub_73790();
    v12 = v11;

    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_5258();
    *(v7 + 32) = v10;
    *(v7 + 40) = v12;
    sub_73610();

    v22 = v8;
    a3(v5, 0);
  }

  else
  {
    type metadata accessor for HealthFlowError();
    swift_allocObject();
    v13 = sub_B5BC(0);
    sub_73980();
    v14 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_74B40;
    v16 = v14;
    v17 = sub_B4FC();
    v19 = v18;
    *(v15 + 56) = &type metadata for String;
    *(v15 + 64) = sub_5258();
    *(v15 + 32) = v17;
    *(v15 + 40) = v19;
    sub_73620();

    sub_5653C(&qword_A3BB8, 255, type metadata accessor for HealthFlowError);
    v20 = swift_allocError();
    *v21 = v13;

    a3(v20, 1);
  }
}

id sub_55B6C(uint64_t a1)
{
  v51 = a1;
  v1 = sub_506C(&qword_A3B90, &qword_76E00);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v49 = &v48 - v5;
  v6 = type metadata accessor for HealthNLIntent(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_731D0();
  v11 = sub_5394(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_72830();
  v19 = sub_5394(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v19);
  v26 = &v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v48 - v27;
  v29 = v21[2];
  v29(&v48 - v27, v51, v18);
  v30 = v21[11];
  v31 = sub_5388();
  v33 = v32(v31);
  if (v33 == enum case for Parse.NLv3IntentOnly(_:))
  {
    v34 = v21[12];
    v35 = sub_5388();
    v36(v35);
    (*(v13 + 32))(v17, v28, v10);
    (*(v13 + 16))(v9, v17, v10);
    sub_564F8();
    v37 = sub_5CDA4(v9);
    sub_51F8(v9, type metadata accessor for HealthNLIntent);
    (*(v13 + 8))(v17, v10);
  }

  else if (v33 == enum case for Parse.directInvocation(_:))
  {
    v29(v26, v51, v18);
    v38 = v49;
    sub_6AFB0(v26, v49);
    v39 = v50;
    sub_50B4(v38, v50);
    v40 = type metadata accessor for DirectInvocationData();
    if (sub_5124(v39, 1, v40) == 1)
    {
      sub_514C(v38);
      sub_514C(v39);
      v37 = 0;
    }

    else
    {
      sub_6B824(v53);
      sub_514C(v38);
      sub_51F8(v39, type metadata accessor for DirectInvocationData);
      sub_506C(&qword_A3B98, &unk_74E00);
      sub_564F8();
      if (swift_dynamicCast())
      {
        v37 = v52;
      }

      else
      {
        v37 = 0;
      }
    }

    v44 = v21[1];
    v45 = sub_5388();
    v46(v45);
  }

  else
  {
    v41 = v21[1];
    v42 = sub_5388();
    v43(v42);
    return 0;
  }

  return v37;
}

uint64_t sub_55FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseWorkoutStrategy();

  return RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_56034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PauseWorkoutStrategy();

  return RCHFlowStrategy.makeParameterMetadata(intent:)(a1, v5, a3);
}

uint64_t sub_56080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppDoesNotSupportIntentResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_560EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeAppNotFoundOnDeviceResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_56158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseWorkoutStrategy();

  return ResolveConfirmFlowStrategy.makeDeviceIncompatibleResponse(app:intent:_:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_561C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseWorkoutStrategy();

  return RouteConfirmIntentResponseFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, v13, a7);
}

uint64_t sub_56240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PauseWorkoutStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, v5, a3);
}

uint64_t sub_5628C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for PauseWorkoutStrategy();

  return IntentExtensionCommunicating.makeSiriKitIntentHandler(app:intent:)(a1, a2, v7, a4);
}

uint64_t sub_562F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for PauseWorkoutStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, v11, a6);
}

uint64_t sub_5635C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for PauseWorkoutStrategy();

  return IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(a1, a2, a3, a4, a5, v13, a7);
}

unint64_t sub_564F8()
{
  result = qword_A4498;
  if (!qword_A4498)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_A4498);
  }

  return result;
}

uint64_t sub_5653C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_56584(char a1)
{
  result = 0x6F2368746C616568;
  switch(a1)
  {
    case 1:
      sub_569B0();
      result = v6 - 6;
      break;
    case 2:
    case 20:
      sub_569B0();
      result = v7 - 3;
      break;
    case 3:
    case 18:
      sub_569B0();
      result = v9 - 10;
      break;
    case 4:
    case 12:
    case 28:
    case 31:
      sub_569B0();
      result = v16 - 8;
      break;
    case 5:
      return result;
    case 6:
      sub_569B0();
      result = v8 - 20;
      break;
    case 7:
      sub_569B0();
      result = v5 - 22;
      break;
    case 8:
      sub_569B0();
      result = v10 - 19;
      break;
    case 9:
      sub_569B0();
      result = v4 - 18;
      break;
    case 10:
    case 26:
      sub_569B0();
      result = v17 - 5;
      break;
    case 11:
      result = 0xD000000000000028;
      break;
    case 13:
      result = 0xD000000000000028;
      break;
    case 14:
    case 15:
    case 30:
      sub_569B0();
      result = v11 - 1;
      break;
    case 16:
    case 23:
    case 34:
      sub_569B0();
      result = v15 - 7;
      break;
    case 17:
    case 19:
      sub_569B0();
      result = v14 - 2;
      break;
    case 21:
    case 32:
      sub_569B0();
      result = v12 - 4;
      break;
    case 22:
    case 24:
    case 33:
    case 35:
      sub_569B0();
      result = v13 | 1;
      break;
    case 25:
      result = 0xD000000000000028;
      break;
    case 27:
      result = 0xD000000000000028;
      break;
    case 29:
      result = 0xD000000000000028;
      break;
    case 36:
      result = 0xD000000000000028;
      break;
    default:
      sub_569B0();
      result = v3 - 11;
      break;
  }

  return result;
}

uint64_t sub_569C4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_569E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_569F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_56A34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_56A94(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_73DB0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_56B10(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000000007F0E0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_73DB0();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_56BAC(void *a1)
{
  v2 = v1;
  sub_49B84(v2, v32);
  v25 = v32[1];
  v26 = v32[0];
  v24 = v32[2];
  v23 = v33;
  v22 = v34;
  v4 = sub_506C(&qword_A7280, &qword_79D70);
  sub_5394(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_303DC();
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  v12 = sub_506C(&qword_A7288, &qword_79D78);
  sub_5394(v12);
  v14 = v13;
  v16 = *(v15 + 64);
  sub_303DC();
  __chkstk_darwin(v17);
  v19 = &v22 - v18;
  v20 = a1[4];
  sub_7C78(a1, a1[3]);
  sub_57524();
  sub_73EA0();
  sub_5763C();
  sub_73D50();
  v27 = v26;
  v28 = v25;
  v29 = v24;
  v30 = v23;
  v31 = v22;
  sub_576E4();
  sub_73D80();
  (*(v6 + 8))(v11, v4);
  return (*(v14 + 8))(v19, v12);
}

uint64_t sub_56DFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v4 = sub_506C(&qword_A7250, &qword_79D58);
  sub_5394(v4);
  v43 = v5;
  v7 = *(v6 + 64);
  sub_303DC();
  __chkstk_darwin(v8);
  v10 = &v40 - v9;
  v11 = sub_506C(&qword_A7258, &qword_79D60);
  sub_5394(v11);
  v45 = v12;
  v14 = *(v13 + 64);
  sub_303DC();
  __chkstk_darwin(v15);
  v16 = a1[4];
  sub_7C78(a1, a1[3]);
  sub_57524();
  sub_73E90();
  if (v2)
  {
    return sub_AE38(a1);
  }

  v40 = v10;
  v41 = a1;
  v17 = sub_73D40();
  result = sub_57578(v17, 0);
  if (v20 == v21 >> 1)
  {
LABEL_6:
    v28 = v45;
    v29 = sub_73B90();
    swift_allocError();
    v31 = v30;
    v32 = *(sub_506C(&qword_A7268, &qword_79D68) + 48);
    *v31 = &type metadata for HealthUIPluginModel;
    sub_73D00();
    sub_73B80();
    (*(*(v29 - 8) + 104))(v31, enum case for DecodingError.typeMismatch(_:), v29);
    swift_willThrow();
    swift_unknownObjectRelease();
    v33 = *(v28 + 8);
    v34 = sub_57A48();
    v35(v34);
    a1 = v41;
    return sub_AE38(a1);
  }

  if (v20 < (v21 >> 1))
  {
    sub_575C0(v20 + 1, v21 >> 1, result, v19, v20, v21);
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    if (v23 == v25 >> 1)
    {
      sub_5763C();
      v26 = v40;
      sub_73CF0();
      v27 = v45;
      sub_57690();
      sub_73D30();
      v36 = (v43 + 8);
      swift_unknownObjectRelease();
      (*v36)(v26, v4);
      v37 = *(v27 + 8);
      v38 = sub_57A48();
      v39(v38);
      v44[0] = *(&v44[4] + 8);
      v44[1] = *(&v44[5] + 8);
      v44[2] = *(&v44[6] + 8);
      v44[3] = *(&v44[7] + 8);
      sub_AE38(v41);
      return sub_49B84(v44, v42);
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_57204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_56A94(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_5724C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_19A00();
  *a1 = result & 1;
  return result;
}

uint64_t sub_57278(uint64_t a1)
{
  v2 = sub_5763C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_572B4(uint64_t a1)
{
  v2 = sub_5763C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_57310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_56B10(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_5733C(uint64_t a1)
{
  v2 = sub_57524();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_57378(uint64_t a1)
{
  v2 = sub_57524();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_573DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_56DFC(a1, v5);
  if (!v2)
  {
    return sub_49B84(v5, a2);
  }

  return result;
}

unint64_t sub_57478()
{
  result = qword_A7240;
  if (!qword_A7240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7240);
  }

  return result;
}

unint64_t sub_574D0()
{
  result = qword_A7248;
  if (!qword_A7248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7248);
  }

  return result;
}

unint64_t sub_57524()
{
  result = qword_A7260;
  if (!qword_A7260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7260);
  }

  return result;
}

uint64_t sub_57578(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_575C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_5763C()
{
  result = qword_A7270;
  if (!qword_A7270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7270);
  }

  return result;
}

unint64_t sub_57690()
{
  result = qword_A7278;
  if (!qword_A7278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7278);
  }

  return result;
}

unint64_t sub_576E4()
{
  result = qword_A7290;
  if (!qword_A7290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7290);
  }

  return result;
}

_BYTE *sub_57750(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x577ECLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_57828()
{
  result = qword_A7298;
  if (!qword_A7298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7298);
  }

  return result;
}

unint64_t sub_57880()
{
  result = qword_A72A0;
  if (!qword_A72A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72A0);
  }

  return result;
}

unint64_t sub_578D8()
{
  result = qword_A72A8;
  if (!qword_A72A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72A8);
  }

  return result;
}

unint64_t sub_57930()
{
  result = qword_A72B0;
  if (!qword_A72B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72B0);
  }

  return result;
}

unint64_t sub_57988()
{
  result = qword_A72B8;
  if (!qword_A72B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72B8);
  }

  return result;
}

unint64_t sub_579E0()
{
  result = qword_A72C0;
  if (!qword_A72C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72C0);
  }

  return result;
}

uint64_t sub_57A64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001DLL && 0x800000000007F100 == a2;
  if (v4 || (sub_73DB0() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x800000000007F120 == a2;
    if (v6 || (sub_73DB0() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001FLL && 0x800000000007F140 == a2;
      if (v7 || (sub_73DB0() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x800000000007F160 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_73DB0();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_57BC8(char a1)
{
  result = 0xD00000000000001DLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_57C5C(void *a1)
{
  v3 = v1;
  v5 = sub_506C(&qword_A72E0, &qword_7A168);
  v6 = sub_5394(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v16[-v11 - 8];
  v13 = a1[4];
  sub_7C78(a1, a1[3]);
  sub_58248();
  sub_73EA0();
  v20 = *v3;
  v18 = *v3;
  v17 = 0;
  sub_582F0(&v20, v16);
  sub_5834C();
  sub_585D8();
  sub_49A7C(v18, *(&v18 + 1));
  if (!v2)
  {
    sub_58600(*(v3 + 2), *(v3 + 3), 1);
    v18 = v3[2];
    v19 = v18;
    v17 = 2;
    sub_582F0(&v19, v16);
    sub_585D8();
    sub_49A7C(v18, *(&v18 + 1));
    sub_58600(*(v3 + 6), *(v3 + 7), 3);
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_57E10@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_506C(&qword_A72C8, &qword_7A160);
  v6 = sub_5394(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = a1[4];
  sub_7C78(a1, a1[3]);
  sub_58248();
  sub_73E90();
  if (v2)
  {
    return sub_AE38(a1);
  }

  sub_5829C();
  sub_585BC();
  sub_73D30();
  v22 = v27[0];
  LOBYTE(v27[0]) = 1;
  v10 = sub_73D20();
  *(&v21 + 1) = v11;
  *&v21 = v10;
  LOBYTE(v23) = 2;
  sub_585BC();
  sub_73D30();
  v20 = v27[0];
  v30 = 3;
  v12 = sub_73D20();
  v14 = v13;
  v15 = sub_585AC();
  v16(v15);
  v23 = v22;
  v24 = v21;
  v25 = v20;
  *&v26 = v12;
  *(&v26 + 1) = v14;
  sub_49BE0(&v23, v27);
  sub_AE38(a1);
  v27[0] = v22;
  v27[1] = v21;
  v27[2] = v20;
  v28 = v12;
  v29 = v14;
  result = sub_49C3C(v27);
  v18 = v24;
  *a2 = v23;
  a2[1] = v18;
  v19 = v26;
  a2[2] = v25;
  a2[3] = v19;
  return result;
}

uint64_t sub_58104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_57A64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_5814C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_57BC0();
  *a1 = result;
  return result;
}

uint64_t sub_58174(uint64_t a1)
{
  v2 = sub_58248();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_581B0(uint64_t a1)
{
  v2 = sub_58248();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_581EC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_57E10(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

unint64_t sub_58248()
{
  result = qword_A72D0;
  if (!qword_A72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72D0);
  }

  return result;
}

unint64_t sub_5829C()
{
  result = qword_A72D8;
  if (!qword_A72D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72D8);
  }

  return result;
}

unint64_t sub_5834C()
{
  result = qword_A72E8;
  if (!qword_A72E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BinaryConfirmationSnippetModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x5846CLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_584A8()
{
  result = qword_A72F0;
  if (!qword_A72F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72F0);
  }

  return result;
}

unint64_t sub_58500()
{
  result = qword_A72F8;
  if (!qword_A72F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A72F8);
  }

  return result;
}

unint64_t sub_58558()
{
  result = qword_A7300;
  if (!qword_A7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7300);
  }

  return result;
}

uint64_t sub_585D8()
{

  return sub_73D80();
}

uint64_t sub_58600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W8>)
{
  *(v4 - 112) = a3;

  return KeyedEncodingContainer.encode(_:forKey:)(a1, a2, v4 - 112, v3);
}

uint64_t sub_58690(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000656D61;
  v3 = 0x4E74756F6B726F77;
  v4 = a1;
  v5 = 0x4E74756F6B726F77;
  v6 = 0xEB00000000656D61;
  switch(v4)
  {
    case 1:
      v5 = 0xD000000000000013;
      v7 = "n";
      goto LABEL_5;
    case 2:
      v5 = 0xD000000000000013;
      v7 = "workoutGoalUnitType";
LABEL_5:
      v6 = v7 | 0x8000000000000000;
      break;
    case 3:
      v5 = 0x756C61566C616F67;
      v6 = 0xE900000000000065;
      break;
    case 4:
      v5 = 0x6E456E65704F7369;
      v6 = 0xEB00000000646564;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0xD000000000000013;
      v8 = "n";
      goto LABEL_11;
    case 2:
      v3 = 0xD000000000000013;
      v8 = "workoutGoalUnitType";
LABEL_11:
      v2 = v8 | 0x8000000000000000;
      break;
    case 3:
      v3 = 0x756C61566C616F67;
      v2 = 0xE900000000000065;
      break;
    case 4:
      v3 = 0x6E456E65704F7369;
      v2 = 0xEB00000000646564;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_73DB0();
  }

  return v10 & 1;
}

uint64_t sub_5884C(unsigned __int8 a1, char a2)
{
  v2 = 1701998435;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701998435;
  switch(v4)
  {
    case 1:
      v5 = 1936156012;
      break;
    case 2:
      v5 = 1936552545;
      break;
    case 3:
      v7 = 0x626C61746F74;
      goto LABEL_8;
    case 4:
      v6 = 1702326124;
      goto LABEL_7;
    case 5:
      v6 = 1701867637;
LABEL_7:
      v7 = v6 & 0xFFFF0000FFFFFFFFLL | 0x627200000000;
LABEL_8:
      v5 = v7 & 0xFFFFFFFFFFFFLL | 0x646F000000000000;
      v3 = 0xE900000000000079;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = 0x6F6964726163;
      break;
    default:
      break;
  }

  v8 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 1936156012;
      break;
    case 2:
      v2 = 1936552545;
      break;
    case 3:
      v10 = 0x626C61746F74;
      goto LABEL_17;
    case 4:
      v9 = 1702326124;
      goto LABEL_16;
    case 5:
      v9 = 1701867637;
LABEL_16:
      v10 = v9 & 0xFFFF0000FFFFFFFFLL | 0x627200000000;
LABEL_17:
      v2 = v10 & 0xFFFFFFFFFFFFLL | 0x646F000000000000;
      v8 = 0xE900000000000079;
      break;
    case 6:
      v8 = 0xE600000000000000;
      v2 = 0x6F6964726163;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_73DB0();
  }

  return v12 & 1;
}

uint64_t sub_58A04()
{
  sub_5C2E0();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v0 = 0xE300000000000000;
      v3 = 6581861;
      break;
    case 2:
      v3 = 0x6573756170;
      break;
    case 3:
      v3 = sub_5C378();
      break;
    case 4:
      v3 = sub_5C38C();
      break;
    default:
      break;
  }

  v5 = 0xE500000000000000;
  switch(v1)
  {
    case 1:
      v5 = 0xE300000000000000;
      v2 = 6581861;
      break;
    case 2:
      v2 = 0x6573756170;
      break;
    case 3:
      sub_5C350();
      break;
    case 4:
      sub_5C364();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_5C220();
  }

  return v7 & 1;
}

uint64_t sub_58B28(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x616D6D6F43656361;
  }

  else
  {
    v3 = 7368801;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xEA0000000000646ELL;
  }

  if (a2)
  {
    v5 = 0x616D6D6F43656361;
  }

  else
  {
    v5 = 7368801;
  }

  if (a2)
  {
    v6 = 0xEA0000000000646ELL;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5C220();
  }

  return v8 & 1;
}

uint64_t sub_58C0C()
{
  sub_5C2E0();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v3 = 0x6573756170;
      break;
    case 2:
      v0 = 0xE400000000000000;
      v3 = 1886352499;
      break;
    case 3:
      v3 = sub_5C38C();
      break;
    case 4:
      v3 = sub_5C378();
      break;
    case 5:
      v0 = 0xE400000000000000;
      v3 = 2003789939;
      break;
    case 6:
      v3 = 0x74736575516B7361;
      v0 = 0xEB000000006E6F69;
      break;
    case 7:
      v3 = 0x7075746573;
      break;
    case 8:
      v0 = 0xE600000000000000;
      v3 = 0x796669646F6DLL;
      break;
    default:
      break;
  }

  v5 = 0xE500000000000000;
  switch(v1)
  {
    case 1:
      v2 = 0x6573756170;
      break;
    case 2:
      v5 = 0xE400000000000000;
      v2 = 1886352499;
      break;
    case 3:
      sub_5C364();
      break;
    case 4:
      sub_5C350();
      break;
    case 5:
      v5 = 0xE400000000000000;
      v2 = 2003789939;
      break;
    case 6:
      v2 = 0x74736575516B7361;
      v5 = 0xEB000000006E6F69;
      break;
    case 7:
      v2 = 0x7075746573;
      break;
    case 8:
      v5 = 0xE600000000000000;
      v2 = 0x796669646F6DLL;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_5C220();
  }

  return v7 & 1;
}

uint64_t sub_58DF8(unsigned __int8 a1, char a2)
{
  v2 = 0x726F6F646E69;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x726F6F646E69;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x726F6F6474756FLL;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1819242352;
      break;
    case 3:
      v5 = 0x657461776E65706FLL;
      v3 = 0xE900000000000072;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x726F6F6474756FLL;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1819242352;
      break;
    case 3:
      v2 = 0x657461776E65706FLL;
      v6 = 0xE900000000000072;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5C220();
  }

  return v8 & 1;
}

uint64_t sub_58F64(unsigned __int8 a1, char a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7562617;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_5C220();
  }

  return v8 & 1;
}

uint64_t sub_59048(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_5C220();
  }

  return v10 & 1;
}

uint64_t sub_590CC()
{
  if (qword_A3908 != -1)
  {
    swift_once();
  }

  type metadata accessor for HealthNLIntent(0);
  sub_5C1A0();
  sub_5B648(v0, v1);
  sub_72E30();
  if (v11)
  {
    return v10;
  }

  if (qword_A3900 != -1)
  {
    sub_5C2B0();
  }

  sub_5C31C();
  if (v10 == 20)
  {
    goto LABEL_19;
  }

  if (sub_2DA9C(v10) == 0x6573696372657865 && v4 == 0xE800000000000000)
  {
  }

  else
  {
    v6 = sub_73DB0();

    if ((v6 & 1) == 0)
    {
LABEL_19:
      if (qword_A3960 != -1)
      {
        swift_once();
      }

      sub_5C31C();
      return v10;
    }
  }

  if (qword_A3958 != -1)
  {
    sub_5C290();
  }

  sub_5C31C();
  if (v10 == 7)
  {
    goto LABEL_19;
  }

  v2 = 0x6961727465726F63;
  if (sub_59680(v10) == 1701998435 && v7 == 0xE400000000000000)
  {

    return v2;
  }

  v9 = sub_73DB0();

  if ((v9 & 1) == 0)
  {
    goto LABEL_19;
  }

  return v2;
}

BOOL sub_593C4()
{
  v0 = *(*(sub_506C(&qword_A7518, &qword_7A438) - 8) + 64);
  sub_303DC();
  __chkstk_darwin(v1);
  v3 = &v17 - v2;
  v18 = sub_5A5B4();
  if (qword_A3918 != -1)
  {
    sub_5C270();
  }

  type metadata accessor for HealthNLIntent(0);
  sub_5C1A0();
  sub_5B648(v4, v5);
  sub_72E30();
  v6 = sub_72D40();
  v7 = sub_5124(v3, 1, v6);
  sub_10364(v3, &qword_A7518, &qword_7A438);
  v8 = sub_5A7D4();
  v9 = _swiftEmptyArrayStorage;
  if (v18)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_402A0();
    v9 = v17;
    v10 = v17[2];
    if (v10 >= v17[3] >> 1)
    {
      sub_402A0();
      v9 = v17;
    }

    v9[2] = v10 + 1;
    *(v9 + v10 + 32) = 1;
  }

  if (v7 != 1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_5C2F8();
      v9 = v17;
    }

    v12 = v9[2];
    if (v12 >= v9[3] >> 1)
    {
      sub_402A0();
      v9 = v17;
    }

    v9[2] = v12 + 1;
    *(v9 + v12 + 32) = 1;
  }

  if (v8)
  {
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v17 = v9;
    if ((v13 & 1) == 0)
    {
      sub_5C2F8();
      v9 = v17;
    }

    v14 = v9[2];
    v15 = v14 + 1;
    if (v14 >= v9[3] >> 1)
    {
      sub_402A0();
      v9 = v17;
    }

    v9[2] = v15;
    *(v9 + v14 + 32) = v8;
  }

  else
  {
    v15 = v9[2];
  }

  return v15 > 1;
}

uint64_t sub_59634(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_98770;
  v6._object = a2;
  v4 = sub_73CE0(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_59680(char a1)
{
  result = 1701998435;
  switch(a1)
  {
    case 1:
      return 1936156012;
    case 2:
      return 1936552545;
    case 3:
      v4 = 0x626C61746F74;
      goto LABEL_8;
    case 4:
      v3 = 1702326124;
      goto LABEL_7;
    case 5:
      v3 = 1701867637;
LABEL_7:
      v4 = v3 & 0xFFFF0000FFFFFFFFLL | 0x627200000000;
LABEL_8:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x646F000000000000;
      break;
    case 6:
      result = 0x6F6964726163;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_59758@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_59634(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_59788@<X0>(uint64_t *a1@<X8>)
{
  result = sub_59680(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_597B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_5C0F8();
  v5 = sub_5C14C();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5);
}

uint64_t sub_5981C()
{
  if (qword_A38F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_59878()
{
  sub_506C(&qword_A5C68, qword_776C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_7A2C0;
  if (qword_A38F8 != -1)
  {
    swift_once();
  }

  v1 = qword_A7318;
  *(v0 + 56) = sub_506C(&qword_A7470, &qword_7A3D8);
  *(v0 + 64) = sub_5B690(&qword_A7478, &qword_A7470, &qword_7A3D8);
  *(v0 + 32) = v1;
  v2 = qword_A3900;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_A7320;
  *(v0 + 96) = sub_506C(&qword_A7480, &qword_7A3E0);
  *(v0 + 104) = sub_5B690(&qword_A7488, &qword_A7480, &qword_7A3E0);
  *(v0 + 72) = v3;
  v4 = qword_A3958;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_A7378;
  *(v0 + 136) = sub_506C(&qword_A7490, &qword_7A3E8);
  *(v0 + 144) = sub_5B690(&qword_A7498, &qword_A7490, &qword_7A3E8);
  *(v0 + 112) = v5;
  v6 = qword_A3960;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_A7380;
  v8 = sub_506C(&qword_A74A0, &qword_7A3F0);
  *(v0 + 176) = v8;
  v9 = sub_5B690(&qword_A74A8, &qword_A74A0, &qword_7A3F0);
  *(v0 + 184) = v9;
  *(v0 + 152) = v7;
  v10 = qword_A3908;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_A7328;
  *(v0 + 216) = v8;
  *(v0 + 224) = v9;
  *(v0 + 192) = v11;
  v12 = qword_A3910;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = qword_A7330;
  *(v0 + 256) = sub_506C(&qword_A74B0, &qword_7A3F8);
  *(v0 + 264) = sub_5B690(&qword_A74B8, &qword_A74B0, &qword_7A3F8);
  *(v0 + 232) = v13;
  v14 = qword_A3918;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_A7338;
  *(v0 + 296) = sub_506C(&qword_A74C0, &qword_7A400);
  *(v0 + 304) = sub_5B690(&qword_A74C8, &qword_A74C0, &qword_7A400);
  *(v0 + 272) = v15;
  v16 = qword_A3920;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_A7340;
  *(v0 + 336) = sub_506C(&qword_A74D0, &qword_7A408);
  *(v0 + 344) = sub_5B690(&qword_A74D8, &qword_A74D0, &qword_7A408);
  *(v0 + 312) = v17;
  v18 = qword_A3928;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_A7348;
  *(v0 + 376) = sub_506C(&qword_A74E0, &qword_7A410);
  *(v0 + 384) = sub_5B690(&qword_A74E8, &qword_A74E0, &qword_7A410);
  *(v0 + 352) = v19;
  v20 = qword_A3938;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = qword_A7358;
  *(v0 + 416) = type metadata accessor for HealthNLIntent.HealthAppOntologyNode(0);
  *(v0 + 424) = &protocol witness table for NonTerminalOntologyNode;
  *(v0 + 392) = v21;
  v22 = qword_A3930;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = qword_A7350;
  *(v0 + 456) = sub_506C(&qword_A74F0, &qword_7A418);
  *(v0 + 464) = sub_5B690(&qword_A74F8, &qword_A74F0, &qword_7A418);
  *(v0 + 432) = v23;
  v24 = qword_A3940;

  if (v24 != -1)
  {
    swift_once();
  }

  v25 = qword_A7360;
  *(v0 + 496) = sub_506C(&qword_A7500, &unk_7A420);
  *(v0 + 504) = sub_5B690(&qword_A7508, &qword_A7500, &unk_7A420);
  *(v0 + 472) = v25;
  v26 = qword_A3948;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = qword_A7368;
  *(v0 + 536) = v8;
  *(v0 + 544) = v9;
  *(v0 + 512) = v27;
  v28 = qword_A3950;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_A7370;
  *(v0 + 576) = v8;
  *(v0 + 584) = v9;
  *(v0 + 552) = v29;
  qword_A7308 = v0;
}

uint64_t sub_59EF4()
{
  if (qword_A38E8 != -1)
  {
    swift_once();
  }

  v0 = sub_72C80();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();

  result = sub_72C70();
  qword_A7310 = result;
  return result;
}

uint64_t sub_59F8C()
{
  v0 = sub_506C(&qword_A7470, &qword_7A3D8);
  sub_22274(v0);
  sub_5C1B8();
  result = sub_72C90();
  qword_A7318 = result;
  return result;
}

uint64_t sub_59FE0()
{
  v0 = sub_506C(&qword_A7480, &qword_7A3E0);
  sub_22274(v0);
  sub_5C1B8();
  result = sub_72C90();
  qword_A7320 = result;
  return result;
}

uint64_t sub_5A034()
{
  v0 = sub_506C(&qword_A74A0, &qword_7A3F0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_72C90();
  qword_A7328 = result;
  return result;
}

uint64_t sub_5A0A4()
{
  v0 = sub_506C(&qword_A74B0, &qword_7A3F8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_72C90();
  qword_A7330 = result;
  return result;
}

uint64_t sub_5A10C()
{
  v0 = sub_506C(&qword_A74C0, &qword_7A400);
  sub_22274(v0);
  sub_5C3A0();
  result = sub_5C3AC();
  qword_A7338 = result;
  return result;
}

uint64_t sub_5A160()
{
  v0 = sub_506C(&qword_A74D0, &qword_7A408);
  sub_22274(v0);
  sub_5C1B8();
  result = sub_72C90();
  qword_A7340 = result;
  return result;
}

uint64_t sub_5A1BC()
{
  v0 = sub_506C(&qword_A74E0, &qword_7A410);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_72C90();
  qword_A7348 = result;
  return result;
}

uint64_t sub_5A224()
{
  v0 = sub_506C(&qword_A74F0, &qword_7A418);
  sub_22274(v0);
  sub_5C3A0();
  result = sub_5C3AC();
  qword_A7350 = result;
  return result;
}

uint64_t sub_5A278()
{
  v0 = type metadata accessor for HealthNLIntent.HealthAppOntologyNode(0);
  sub_22274(v0);
  result = sub_5B324();
  qword_A7358 = result;
  return result;
}

uint64_t sub_5A2B0()
{
  v0 = sub_506C(&qword_A7500, &unk_7A420);
  sub_22274(v0);
  sub_5C1B8();
  result = sub_72C90();
  qword_A7360 = result;
  return result;
}

uint64_t sub_5A30C()
{
  v0 = sub_506C(&qword_A74A0, &qword_7A3F0);
  sub_22274(v0);
  sub_5C3A0();
  result = sub_5C3AC();
  qword_A7368 = result;
  return result;
}

uint64_t sub_5A360()
{
  v0 = sub_506C(&qword_A74A0, &qword_7A3F0);
  sub_22274(v0);
  sub_5C3A0();
  result = sub_5C3AC();
  qword_A7370 = result;
  return result;
}

uint64_t sub_5A3B4()
{
  v0 = sub_506C(&qword_A7490, &qword_7A3E8);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_72C90();
  qword_A7378 = result;
  return result;
}

uint64_t sub_5A41C()
{
  v0 = sub_506C(&qword_A74A0, &qword_7A3F0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_72C90();
  qword_A7380 = result;
  return result;
}

uint64_t sub_5A484()
{
  if (qword_A3910 != -1)
  {
    sub_5C250();
  }

  type metadata accessor for HealthNLIntent(0);
  sub_5C1A0();
  sub_5B648(v0, v1);
  sub_72E30();
  result = v5;
  if (v5 >= 2u)
  {
    sub_590CC();
    v3 = sub_12460() - 17;
    sub_590CC();
    v4 = sub_12460();
    if (v4 <= 0xB && ((1 << v4) & 0x821) != 0)
    {
      return v3 < 0xFDu;
    }

    if (v4 == 87)
    {
      if (v3 <= 0xFCu)
      {
        return 2;
      }
    }

    else if (v3 < 0xFDu)
    {
      return 2;
    }

    return 0;
  }

  return result;
}

BOOL sub_5A5B4()
{
  v0 = sub_506C(&qword_A7510, &qword_7A430);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v10[-v2];
  v4 = sub_506C(&qword_A7558, &qword_7A7E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10[-v7];
  if (qword_A3920 != -1)
  {
    swift_once();
  }

  type metadata accessor for HealthNLIntent(0);
  sub_5B648(&qword_A42E8, type metadata accessor for HealthNLIntent);
  sub_72E30();
  if (sub_5124(v3, 1, v4) == 1)
  {
    sub_10364(v3, &qword_A7510, &qword_7A430);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    sub_73130();
    (*(v5 + 8))(v8, v4);
    return v10[15] < 7u;
  }
}

BOOL sub_5A7D4()
{
  v0 = sub_506C(&qword_A7510, &qword_7A430);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v10[-v2];
  v4 = sub_506C(&qword_A7558, &qword_7A7E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10[-v7];
  if (qword_A3920 != -1)
  {
    swift_once();
  }

  type metadata accessor for HealthNLIntent(0);
  sub_5B648(&qword_A42E8, type metadata accessor for HealthNLIntent);
  sub_72E30();
  if (sub_5124(v3, 1, v4) == 1)
  {
    sub_10364(v3, &qword_A7510, &qword_7A430);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    sub_73130();
    (*(v5 + 8))(v8, v4);
    return v10[15] - 7 < 2;
  }
}

uint64_t sub_5A9F8()
{
  v26 = sub_506C(&qword_A45F8, &qword_758B8);
  sub_1168C(v26);
  v1 = *(v0 + 64);
  sub_303DC();
  __chkstk_darwin(v2);
  v27 = &v24 - v3;
  v25 = sub_506C(&qword_A7510, &qword_7A430);
  sub_1168C(v25);
  v5 = *(v4 + 64);
  sub_303DC();
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v24 = sub_506C(&qword_A7518, &qword_7A438);
  sub_1168C(v24);
  v10 = *(v9 + 64);
  sub_303DC();
  __chkstk_darwin(v11);
  v13 = &v24 - v12;
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_73B60(150);
  v32._object = 0x800000000007F1D0;
  v32._countAndFlagsBits = 0xD000000000000017;
  sub_73820(v32);
  if (qword_A38F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for HealthNLIntent(0);
  sub_5C1A0();
  sub_5B648(v14, v15);
  sub_5C1EC();
  sub_506C(&qword_A7520, &qword_7A440);
  v33._countAndFlagsBits = sub_73A80();
  sub_73820(v33);

  v34._countAndFlagsBits = 0x3A6E756F4E2D200ALL;
  v34._object = 0xE900000000000020;
  sub_73820(v34);
  if (qword_A3900 != -1)
  {
    sub_5C2B0();
  }

  sub_5C1CC();
  sub_506C(&qword_A7528, &qword_7A448);
  v35._countAndFlagsBits = sub_73A80();
  sub_73820(v35);

  v36._countAndFlagsBits = 0x4679646F422D200ALL;
  v36._object = 0xEE00203A7375636FLL;
  sub_73820(v36);
  if (qword_A3958 != -1)
  {
    sub_5C290();
  }

  sub_5C1CC();
  sub_506C(&qword_A7530, &unk_7A450);
  v37._countAndFlagsBits = sub_73A80();
  sub_73820(v37);

  v38._countAndFlagsBits = 0x76697463412D200ALL;
  v38._object = 0xED0000203A797469;
  sub_73820(v38);
  v28 = sub_590CC();
  v29 = v16;
  sub_506C(&qword_A6D00, &unk_75D30);
  v17 = sub_73A80();
  v19 = v18;

  v39._countAndFlagsBits = v17;
  v39._object = v19;
  sub_73820(v39);

  v40._countAndFlagsBits = 0x7461636F4C2D200ALL;
  v40._object = 0xED0000203A6E6F69;
  sub_73820(v40);
  if (qword_A3910 != -1)
  {
    sub_5C250();
  }

  sub_5C1CC();
  sub_506C(&qword_A7538, &qword_7A460);
  v41._countAndFlagsBits = sub_73A80();
  sub_5C338(v41);

  v42._countAndFlagsBits = 0x74617275442D200ALL;
  v42._object = 0xED0000203A6E6F69;
  sub_73820(v42);
  if (qword_A3918 != -1)
  {
    sub_5C270();
  }

  sub_5C1EC();
  v43._countAndFlagsBits = sub_73A80();
  sub_5C338(v43);

  sub_10364(v13, &qword_A7518, &qword_7A438);
  v44._countAndFlagsBits = 0x696E67614D2D200ALL;
  v44._object = 0xEE00203A65647574;
  sub_73820(v44);
  if (qword_A3920 != -1)
  {
    swift_once();
  }

  sub_5C1EC();
  v45._countAndFlagsBits = sub_73A80();
  sub_5C338(v45);

  sub_10364(v8, &qword_A7510, &qword_7A430);
  v46._countAndFlagsBits = 0x72656665522D200ALL;
  v46._object = 0xEE00203A65636E65;
  sub_73820(v46);
  if (qword_A3940 != -1)
  {
    swift_once();
  }

  sub_5C1CC();
  sub_506C(&qword_A7540, &qword_7A468);
  v47._countAndFlagsBits = sub_73A80();
  sub_5C338(v47);

  v48._countAndFlagsBits = 0x3A65646F4D2D200ALL;
  v48._object = 0xE900000000000020;
  sub_73820(v48);
  if (qword_A3928 != -1)
  {
    swift_once();
  }

  sub_5C1CC();
  sub_506C(&qword_A7548, &unk_7A470);
  v49._countAndFlagsBits = sub_73A80();
  sub_5C338(v49);

  v50._countAndFlagsBits = 0x203A7070412D200ALL;
  v50._object = 0xE800000000000000;
  sub_73820(v50);
  if (qword_A3938 != -1)
  {
    swift_once();
  }

  type metadata accessor for HealthNLIntent.HealthNLApp(0);
  sub_5C208();
  sub_5B648(v20, v21);
  v22 = v27;
  sub_72E20();
  v51._countAndFlagsBits = sub_73A80();
  sub_5C338(v51);

  sub_10364(v22, &qword_A45F8, &qword_758B8);
  return v30;
}

uint64_t sub_5B108(uint64_t a1)
{
  v2 = sub_5B648(&qword_A7550, type metadata accessor for HealthNLIntent);

  return NLIntentWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t sub_5B184(uint64_t a1)
{
  v2 = sub_5B648(&qword_A7550, type metadata accessor for HealthNLIntent);

  return NLIntentWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t sub_5B1F0()
{
  v0 = sub_506C(&qword_A74A0, &qword_7A3F0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_72C90();
  qword_AE778 = result;
  return result;
}

uint64_t sub_5B260()
{
  v0 = sub_506C(&qword_A74A0, &qword_7A3F0);
  sub_22274(v0);
  result = sub_72C90();
  qword_AE780 = result;
  return result;
}

uint64_t sub_5B2BC()
{
  v0 = sub_506C(&qword_A74A0, &qword_7A3F0);
  sub_22274(v0);
  result = sub_72C90();
  qword_AE788 = result;
  return result;
}

uint64_t sub_5B324()
{
  sub_506C(&qword_A5C68, qword_776C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_77300;
  if (qword_A3968 != -1)
  {
    swift_once();
  }

  v1 = qword_AE778;
  v2 = sub_506C(&qword_A74A0, &qword_7A3F0);
  *(v0 + 56) = v2;
  v3 = sub_5B690(&qword_A74A8, &qword_A74A0, &qword_7A3F0);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = qword_A3970;

  if (v4 != -1)
  {
    sub_115F8();
  }

  v5 = qword_AE780;
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v5;
  v6 = qword_A3978;

  if (v6 != -1)
  {
    sub_11618();
  }

  v7 = qword_AE788;
  *(v0 + 136) = v2;
  *(v0 + 144) = v3;
  *(v0 + 112) = v7;

  return NonTerminalOntologyNode.init(name:multicardinal:childNodes:)(7368801, 0xE300000000000000, 0, v0);
}

uint64_t sub_5B4C0()
{
  v0 = sub_72C40();

  return _swift_deallocClassInstance(v0, 16, 7);
}

uint64_t sub_5B50C()
{
  sub_5C2D0();
  v2 = sub_731D0();

  return sub_5124(v1, v0, v2);
}

uint64_t sub_5B560()
{
  sub_5C2D0();
  sub_731D0();
  v0 = sub_30368();

  return sub_7CC4(v0, v1, v2, v3);
}

uint64_t sub_5B648(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5B690(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_D850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_5B704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_72E60();
  sub_1168C(v6);
  (*(v7 + 16))(a3, a1);
  *(a3 + *(type metadata accessor for HealthNLIntent.HealthNLApp(0) + 20)) = a2;
}

uint64_t sub_5B78C()
{
  sub_73B60(29);

  if (qword_A3970 != -1)
  {
    sub_115F8();
  }

  type metadata accessor for HealthNLIntent.HealthNLApp(0);
  sub_5C208();
  sub_5B648(v0, v1);
  sub_11664();
  v2 = v13;
  if (v13)
  {
    v12 = 0x800000000007D2B0;
    sub_10414();
    if (sub_73AE0())
    {
      v12 = 0x800000000007D2B0;
      sub_5C23C();
      sub_73AD0();
      v4 = v3;

      v2 = v4;
    }
  }

  sub_506C(&qword_A6D00, &unk_75D30);
  v5 = sub_73A80();
  v7 = v6;

  v14._countAndFlagsBits = v5;
  v14._object = v7;
  sub_73820(v14);

  v15._countAndFlagsBits = 0xD000000000000011;
  v15._object = 0x800000000007F250;
  sub_73820(v15);
  if (qword_A3978 != -1)
  {
    sub_11618();
  }

  sub_11664();
  if (!v2)
  {
    sub_11664();
    if (v12)
    {
      sub_10414();
      if (sub_73AE0())
      {
        sub_5C23C();
        sub_73AD0();
      }
    }
  }

  v8 = sub_73A80();
  v10 = v9;

  v16._countAndFlagsBits = v8;
  v16._object = v10;
  sub_73820(v16);

  v17._countAndFlagsBits = 93;
  v17._object = 0xE100000000000000;
  sub_73820(v17);
  return 0x203A656D616E5BLL;
}

uint64_t sub_5BAD0@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = sub_1168C(v4);
  v7 = *(v6 + 16);

  return v7(a2, v2, v5);
}

uint64_t sub_5BB48(uint64_t a1)
{
  v2 = sub_5B648(&qword_A4608, type metadata accessor for HealthNLIntent.HealthNLApp);

  return NonTerminalIntentNodeWrapper.traversableIntentNode.getter(a1, v2);
}

uint64_t sub_5BBC4(uint64_t a1)
{
  v2 = sub_5B648(&qword_A4608, type metadata accessor for HealthNLIntent.HealthNLApp);

  return NonTerminalIntentNodeWrapper.traversableOntologyNode.getter(a1, v2);
}

uint64_t sub_5BC44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_72E60();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_5124(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_5BD04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_5C2D0();
  result = sub_72E60();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = sub_30368();

    return sub_7CC4(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_5BD98()
{
  result = sub_72E60();
  if (v1 <= 0x3F)
  {
    result = sub_72C30();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WorkoutBodyFocus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WorkoutBodyFocus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x5BF70);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_5BFAC()
{
  result = qword_A75F0;
  if (!qword_A75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A75F0);
  }

  return result;
}

unint64_t sub_5C004()
{
  result = qword_A75F8;
  if (!qword_A75F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A75F8);
  }

  return result;
}

unint64_t sub_5C05C()
{
  result = qword_A7600;
  if (!qword_A7600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7600);
  }

  return result;
}

unint64_t sub_5C0F8()
{
  result = qword_A7608;
  if (!qword_A7608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7608);
  }

  return result;
}

unint64_t sub_5C14C()
{
  result = qword_A7610;
  if (!qword_A7610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_A7610);
  }

  return result;
}

uint64_t sub_5C1CC()
{

  return sub_72E30();
}

uint64_t sub_5C1EC()
{

  return sub_72E30();
}

uint64_t sub_5C220()
{

  return sub_73DB0();
}

uint64_t sub_5C250()
{

  return swift_once();
}

uint64_t sub_5C270()
{

  return swift_once();
}

uint64_t sub_5C290()
{

  return swift_once();
}

uint64_t sub_5C2B0()
{

  return swift_once();
}

void sub_5C2F8()
{
  v2 = *(v0 + 16) + 1;

  sub_402A0();
}

uint64_t sub_5C31C()
{

  return sub_72E30();
}

void sub_5C338(Swift::String a1)
{

  sub_73820(a1);
}

uint64_t sub_5C3AC()
{

  return sub_72C90();
}

BOOL sub_5C3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_73E40();
  sub_73810();
  v7 = sub_73E60();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_73DB0();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

void *sub_5C4C8()
{
  v0 = sub_506C(&qword_A7758, &unk_7A7C0);
  sub_B1C0(v0);
  v2 = *(v1 + 64);
  sub_303DC();
  __chkstk_darwin(v3);
  v5 = &v93 - v4;
  v99 = sub_72D60();
  v6 = sub_5394(v99);
  v96 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_C2A4();
  v95 = v11 - v10;
  v12 = sub_506C(&qword_A7518, &qword_7A438);
  v13 = sub_B1C0(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_198CC();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = &v93 - v20;
  v22 = sub_506C(&qword_A7760, &unk_7A7D0);
  v23 = sub_B1C0(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_198CC();
  v97 = v26 - v27;
  sub_11658();
  __chkstk_darwin(v28);
  v100 = &v93 - v29;
  v30 = sub_506C(&qword_A7510, &qword_7A430);
  v31 = sub_B1C0(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_198CC();
  v36 = v34 - v35;
  __chkstk_darwin(v37);
  v39 = &v93 - v38;
  v102 = sub_590CC();
  v105 = v40;
  sub_590CC();
  v41 = 0xE000000000000000;
  v42 = sub_12460();
  if (v42 == 87)
  {
    v101 = 0;
  }

  else
  {
    v101 = sub_123E0(v42);
    v41 = v43;
  }

  v98 = v18;
  v104 = v41;
  v106 = sub_5CE88();
  if (qword_A3920 != -1)
  {
    swift_once();
  }

  type metadata accessor for HealthNLIntent(0);
  sub_5EF7C(&qword_A42E8, type metadata accessor for HealthNLIntent);
  sub_5EFC8();
  v44 = sub_506C(&qword_A7558, &qword_7A7E0);
  sub_5F004(v39);
  if (v45)
  {
    sub_5B50(v39, &qword_A7510, &qword_7A430);
LABEL_10:
    v103 = 0;
    goto LABEL_12;
  }

  sub_73130();
  v46 = v107;
  sub_5C0C(v44);
  v48 = *(v47 + 8);
  v49 = sub_5F0F4();
  v50(v49);
  if (v46 == 22)
  {
    goto LABEL_10;
  }

  v103 = sub_511C0(v46);
LABEL_12:
  sub_5EFC8();
  sub_5F004(v36);
  if (v45)
  {
    sub_5B50(v36, &qword_A7510, &qword_7A430);
    v109 = 0;
    v110 = 1;
  }

  else
  {
    sub_73140();
    sub_5C0C(v44);
    (*(v51 + 8))(v36, v44);
  }

  if (qword_A3918 != -1)
  {
    swift_once();
  }

  sub_5EFC8();
  v52 = sub_72D40();
  sub_5F050();
  if (sub_5124(v53, v54, v55) == 1)
  {
    v56 = &qword_A7518;
    v57 = &qword_7A438;
LABEL_22:
    sub_5B50(v21, v56, v57);
    goto LABEL_23;
  }

  v94 = v5;
  v58 = v100;
  sub_72D30();
  sub_5C0C(v52);
  v60 = *(v59 + 8);
  v61 = v21;
  v21 = v58;
  v60(v61, v52);
  v62 = sub_72D90();
  sub_5F004(v21);
  if (v45)
  {
    v56 = &qword_A7760;
    v57 = &unk_7A7D0;
    goto LABEL_22;
  }

  v93 = sub_72D80();
  v78 = v77;
  sub_5C0C(v62);
  v100 = *(v79 + 8);
  (v100)(v21, v62);
  if ((v78 & 1) == 0)
  {
    v80 = v98;
    sub_5EFC8();
    sub_5F050();
    if (sub_5124(v81, v82, v83) == 1)
    {
      v84 = &qword_A7518;
      v85 = &qword_7A438;
      v86 = v80;
LABEL_44:
      sub_5B50(v86, v84, v85);
      v88 = v94;
      sub_7CC4(v94, 1, 1, v99);
LABEL_45:
      sub_5B50(v88, &qword_A7758, &unk_7A7C0);
      goto LABEL_23;
    }

    sub_72D30();
    v60(v80, v52);
    v87 = v97;
    sub_5F004(v97);
    if (v45)
    {
      v84 = &qword_A7760;
      v85 = &unk_7A7D0;
      v86 = v87;
      goto LABEL_44;
    }

    v88 = v94;
    sub_72D70();
    (v100)(v87, v62);
    v89 = v99;
    v90 = sub_5124(v88, 1, v99);
    if (v90 == 1)
    {
      goto LABEL_45;
    }

    v91 = v95;
    v92 = v96;
    (*(v96 + 32))(v95, v88, v89);
    sub_657F0();
    (*(v92 + 8))(v91, v89);
    v109 = v93;
    v110 = 0;
  }

LABEL_23:
  if (qword_A3948 != -1)
  {
    swift_once();
  }

  sub_5EFC8();
  v63 = v107;
  v64 = v108;
  if (qword_A3950 != -1)
  {
    swift_once();
  }

  sub_5EFC8();
  v65 = v107;
  v66 = v108;
  v67 = objc_allocWithZone(INWorkoutCustomization);
  v68 = sub_5EDE8(v63, v64, v65, v66);
  if (qword_A3940 != -1)
  {
    swift_once();
  }

  sub_5EFC8();
  v69 = v107;
  v70 = v105;
  if (v105)
  {
    v71 = objc_allocWithZone(INSpeakableString);
    v70 = sub_5ED24(v101, v104, v102, v70, 0, 0);
  }

  else
  {
  }

  if (qword_A3900 != -1)
  {
    swift_once();
  }

  if (v69 == 27)
  {
    v72 = 2;
  }

  else
  {
    v72 = v69 == 25;
  }

  sub_5EFC8();
  sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
  v73 = v70;
  v74 = sub_739F0();
  [v74 setSequenceLabel:v72];
  v75 = v68;
  [v74 setCustomization:v75];

  return v74;
}

id sub_5CDB0(uint64_t a1, Class *a2)
{
  sub_590CC();
  sub_590CC();
  v3 = sub_12460();
  if (v3 != 87)
  {
    sub_123E0(v3);
  }

  v4 = objc_allocWithZone(INSpeakableString);
  sub_5F040();
  v11 = sub_5ED24(v5, v6, v7, v8, v9, v10);
  v12 = [objc_allocWithZone(*a2) initWithWorkoutName:v11];

  return v12;
}

uint64_t sub_5CE88()
{
  v0 = sub_590CC();
  if (v1)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v4 = sub_5A484();
  if (v4 == 2)
  {
    if (v2 == 1835628403 && v3 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v6 = sub_73DB0();

      if (v6)
      {
        return 2;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v8 = v4;

    if (v8)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

void sub_5CF4C(char a1)
{
  v2 = [objc_allocWithZone(NSNumber) initWithBool:a1 & 1];
  [v1 setIsBuiltInWorkoutType:v2];
}

uint64_t sub_5CFBC(void *a1)
{
  sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
  v2 = a1;
  return sub_739F0();
}

NSObject *sub_5D018(uint64_t a1)
{
  v3 = sub_506C(&qword_A3F90, &unk_74FC0);
  sub_B1C0(v3);
  v5 = *(v4 + 64);
  sub_303DC();
  __chkstk_darwin(v6);
  sub_5F0E8(&v197[-v7]);
  v8 = sub_73720();
  v9 = sub_5394(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_198CC();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v210 = &v197[-v18];
  sub_11658();
  __chkstk_darwin(v19);
  v208 = &v197[-v20];
  sub_11658();
  __chkstk_darwin(v21);
  sub_5F0E8(&v197[-v22]);
  v23 = sub_72FC0();
  v24 = sub_5394(v23);
  v215 = v25;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_C2A4();
  sub_5F0E8(v29 - v28);
  v211 = sub_506C(&qword_A7768, &qword_7A7E8);
  sub_5C0C(v211);
  v31 = *(v30 + 64);
  sub_303DC();
  __chkstk_darwin(v32);
  v34 = &v197[-v33];
  v35 = sub_506C(&qword_A6118, &unk_7A7F0);
  v36 = sub_B1C0(v35);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  sub_198CC();
  v212 = (v39 - v40);
  sub_11658();
  __chkstk_darwin(v41);
  v214 = &v197[-v42];
  sub_11658();
  __chkstk_darwin(v43);
  v213 = &v197[-v44];
  v45 = sub_506C(&qword_A4A38, &qword_75D68);
  sub_B1C0(v45);
  v47 = *(v46 + 64);
  sub_303DC();
  __chkstk_darwin(v48);
  sub_5F0E8(&v197[-v49]);
  v50 = sub_506C(&qword_A4A28, &unk_7A800);
  sub_B1C0(v50);
  v52 = *(v51 + 64);
  sub_303DC();
  __chkstk_darwin(v53);
  v55 = &v197[-v54];
  v56 = sub_506C(&qword_A4A18, &qword_75D58);
  sub_B1C0(v56);
  v58 = *(v57 + 64);
  sub_303DC();
  __chkstk_darwin(v59);
  v61 = &v197[-v60];
  v216 = sub_734A0();
  if (!v216)
  {
LABEL_4:
    v62 = sub_736E0();
    sub_5F0B4();
    (*(v11 + 16))(v16, v62, v8);

    v63 = sub_73710();
    v64 = sub_73980();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = sub_221D8();
      v66 = sub_14F88();
      v218[0] = v66;
      *v65 = 136315138;
      v217 = a1;
      sub_731B0();

      v67 = sub_737A0();
      v69 = v11;
      v70 = sub_19144(v67, v68, v218);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_0, v63, v64, "Failed to convert UsoTask to UsoTask_create_common_Workout: %s", v65, 0xCu);
      sub_AE38(v66);
      sub_7EBC();
      sub_5F024();

      (*(v69 + 8))(v16, v8);
    }

    else
    {

      (*(v11 + 8))(v16, v8);
    }

    sub_345F0();
    swift_allocError();
    *v71 = 1;
    swift_willThrow();
    return v63;
  }

  if (sub_C034(a1, 0))
  {

    goto LABEL_4;
  }

  v200 = v11;
  v201 = v1;
  sub_734A0();
  v73 = sub_73480();
  v75 = v74;

  v204 = v8;
  v202 = v73;
  if (v75)
  {
    swift_bridgeObjectRetain_n();
    sub_73430();
    sub_734C0();
    v76 = objc_allocWithZone(INSpeakableString);
    sub_5F040();
    v203 = sub_5ED24(v77, v78, v79, v80, v81, v82);
  }

  else
  {
    v203 = 0;
  }

  sub_734A0();
  v83 = sub_73450();
  v85 = v84;

  if (!v85)
  {
    goto LABEL_26;
  }

  v86 = v83 == 1819242352 && v85 == 0xE400000000000000;
  if (!v86 && (sub_73DB0() & 1) == 0)
  {
    v88 = v83 == 0x657461776E65706FLL && v85 == 0xE900000000000072;
    if (v88 || (sub_73DB0() & 1) != 0)
    {
      v87 = 1;
      goto LABEL_19;
    }

LABEL_26:
    v89 = sub_2BF5C(v83, v85);
    if ((v90 & 1) == 0)
    {
      v87 = v89;
      if (v89)
      {
        goto LABEL_28;
      }
    }

    if (v75)
    {
      v104 = v202;
      v105 = v202 == 1835628403 && v75 == 0xE400000000000000;
      if (v105 || (sub_5F074() & 1) != 0)
      {

        v87 = 2;
        goto LABEL_29;
      }

      v194 = v104 == 1802264951 && v75 == 0xE400000000000000;
      if (v194 || (sub_5F074() & 1) != 0 || (v104 == 7239026 ? (v195 = v75 == 0xE300000000000000) : (v195 = 0), v195))
      {
      }

      else
      {
        v196 = sub_5F074();

        if ((v196 & 1) == 0)
        {
          goto LABEL_102;
        }
      }

      v87 = 1;
      goto LABEL_29;
    }

LABEL_102:
    v87 = 0;
    goto LABEL_29;
  }

  v87 = 2;
LABEL_19:

LABEL_28:

LABEL_29:
  v91 = sub_72EA0();
  v199 = v87;
  if (v91 && (v92 = sub_72FA0(), , v92))
  {

    v93 = sub_72CB0();
    v202 = v92;

    v94 = 0;
  }

  else
  {
    v202 = 0;
    v93 = 0;
    v94 = 1;
  }

  sub_72ED0();
  sub_72F10();

  if (v219)
  {
    v95 = sub_72EC0();
    if (v95)
    {
      v96 = v95;
      if (!sub_114FC(v95))
      {

        goto LABEL_49;
      }

      v97 = sub_5F100();
      sub_11500(v97, v98, v99);
      if (v93)
      {
        sub_73B70();
      }

      else
      {
        v100 = *(v96 + 32);
      }

      sub_72DB0();

      if (v219)
      {
        sub_730C0();
        sub_5F0D0();
        sub_72EE0();
        v198 = sub_1644C(v61);
        sub_5B50(v61, &qword_A4A18, &qword_75D58);
        v101 = sub_165C8();
        sub_5F090(v101, v102);

        sub_5F05C();
        v103 = v212;
        goto LABEL_57;
      }
    }
  }

LABEL_49:
  v103 = v212;
  if ((v94 & 1) != 0 || (v106 = v202, , sub_72F90(), sub_5F0D0(), !v106))
  {
    sub_5EFE4();
    sub_5F05C();
  }

  else
  {
    sub_114FC(v106);
    sub_5F05C();
    if (v107)
    {
      v108 = sub_5F100();
      sub_11500(v108, v109, v110);
      sub_73B70();

      sub_72DB0();

      if (v219)
      {
        sub_73110();
        sub_5F0D0();
        sub_730A0();
        v198 = sub_1624C(v55);
        v111 = sub_5F068();
        sub_5B50(v111, v112, &unk_7A800);
        sub_730A0();
        v113 = sub_166B0(v202, v55);
        sub_5F090(v113, v114);
        v115 = sub_5F068();
        sub_5B50(v115, v116, &unk_7A800);
        goto LABEL_57;
      }
    }

    else
    {
    }

    sub_5EFE4();
  }

LABEL_57:
  v117 = v216;

  sub_72DC0();
  sub_5F0D0();
  v118 = v213;
  if (v117)
  {
    v119 = v206;
    sub_72FE0();
    v120 = sub_16D30(v119);

    sub_5B50(v119, &qword_A4A38, &qword_75D68);
  }

  else
  {
    v120 = 0;
  }

  v121 = v214;
  (v215)[13](v118, enum case for UsoEntity_common_WorkoutGoal.DefinedValues.common_WorkoutGoal_Open(_:), v23);
  sub_7CC4(v118, 0, 1, v23);
  v122 = sub_72EA0();
  v212 = v120;
  if (v122)
  {
    sub_72FB0();
  }

  else
  {
    sub_7CC4(v121, 1, 1, v23);
  }

  v123 = *(v211 + 48);
  sub_5EE88(v118, v34);
  sub_5EE88(v121, &v34[v123]);
  sub_5F050();
  if (sub_5124(v124, v125, v126) != 1)
  {
    sub_5EE88(v34, v103);
    sub_5F050();
    if (sub_5124(v132, v133, v134) != 1)
    {
      v137 = v103;
      v138 = v215;
      v139 = v205;
      (v215)[4](v205, &v34[v123], v23);
      sub_5EF7C(&qword_A7770, &type metadata accessor for UsoEntity_common_WorkoutGoal.DefinedValues);
      sub_5F068();
      sub_73770();
      v94 = v138[1];
      (v94)(v139, v23);
      sub_5B50(v214, &qword_A6118, &unk_7A7F0);
      sub_5B50(v213, &qword_A6118, &unk_7A7F0);
      (v94)(v137, v23);
      sub_5F05C();
      sub_5B50(v34, &qword_A6118, &unk_7A7F0);
      goto LABEL_70;
    }

    sub_5B50(v214, &qword_A6118, &unk_7A7F0);
    v135 = sub_5F068();
    sub_5B50(v135, v136, &unk_7A7F0);
    (v215[1])(v103, v23);
    goto LABEL_68;
  }

  sub_5B50(v121, &qword_A6118, &unk_7A7F0);
  v127 = sub_5F068();
  sub_5B50(v127, v128, &unk_7A7F0);
  sub_5F050();
  if (sub_5124(v129, v130, v131) != 1)
  {
LABEL_68:
    sub_5B50(v34, &qword_A7768, &qword_7A7E8);
    goto LABEL_70;
  }

  sub_5B50(v34, &qword_A6118, &unk_7A7F0);
LABEL_70:
  v140 = v212;
  sub_ADF8(0, &qword_A4518, INStartWorkoutIntent_ptr);
  v141 = v203;
  sub_5F0F4();
  v63 = sub_739F0();
  [v63 setSequenceLabel:v140];
  sub_734A0();
  v142 = 1;
  v143 = sub_73480();
  v145 = v144;

  if (v145)
  {
    v146 = sub_4C32C(&off_97D78);
    v147 = sub_5C3DC(v143, v145, v146);

    v142 = !v147;
  }

  sub_5CF4C(v142 & 1);
  v148 = sub_5F114();
  if (v149)
  {
    v150 = v149;
    v211 = v148;
    v215 = v141;
    v206 = v63;
    v151 = sub_736E0();
    sub_5F0B4();
    v152 = v200;
    v153 = *(v200 + 16);
    v154 = v209;
    v155 = sub_5F0F4();
    v213 = v157;
    v214 = v156;
    v157(v155);

    v158 = sub_73710();
    v159 = sub_73970();

    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v161 = sub_14F88();
      v218[0] = v161;
      *v160 = 136315394;
      *(v160 + 4) = sub_19144(v211, v150, v218);
      *(v160 + 12) = 2112;
      v162 = v215;
      *(v160 + 14) = v215;
      v163 = v203;
      *v94 = v203;
      v164 = v162;
      _os_log_impl(&dword_0, v158, v159, "Found instructor,  assuming search required: %s with modality: %@", v160, 0x16u);
      sub_5B50(v94, &qword_A4060, &qword_75440);
      sub_5F05C();
      sub_7EBC();
      sub_AE38(v161);
      sub_5F024();
      sub_7EBC();

      v212 = *(v152 + 8);
      (v212)(v209, v94);
      v165 = v207;
    }

    else
    {

      v212 = *(v152 + 8);
      (v212)(v154, v94);
      v165 = v207;
      v163 = v203;
    }

    type metadata accessor for SearchBundleHelper();
    swift_initStackObject();
    sub_17D24();
    v209 = v166;
    sub_17D5C(v165);
    if (v163)
    {
      v167 = [v215 spokenPhrase];
      v168 = sub_73790();
      v170 = v169;
    }

    else
    {
      v168 = 0;
      v170 = 0;
    }

    v171 = search(dataPath:guest:modality:)(v165, v211, v150, v168, v170);

    sub_5B50(v165, &qword_A3F90, &unk_74FC0);
    swift_beginAccess();
    v172 = v208;
    (v213)(v208, v151, v94);

    v173 = sub_73710();
    v174 = sub_73970();
    v175 = os_log_type_enabled(v173, v174);
    v63 = v206;
    if (v175)
    {
      v176 = sub_221D8();
      *v176 = 134217984;
      *(v176 + 4) = v171[2];

      _os_log_impl(&dword_0, v173, v174, "Found %ld workouts, converting and attaching", v176, 0xCu);
      sub_5F024();
    }

    else
    {
    }

    v177 = v210;
    v178 = v212;
    (v212)(v172, v94);
    swift_beginAccess();
    v179 = sub_5F0F4();
    (v213)(v179);

    v180 = sub_73710();
    v181 = sub_73970();

    if (os_log_type_enabled(v180, v181))
    {
      v182 = sub_221D8();
      v212 = v178;
      v183 = v182;
      v184 = sub_14F88();
      v220 = v184;
      *v183 = 136315138;
      v185 = sub_73880();
      v187 = sub_19144(v185, v186, &v220);

      *(v183 + 4) = v187;
      _os_log_impl(&dword_0, v180, v181, "Candidates found:  %s", v183, 0xCu);
      sub_AE38(v184);
      sub_5F024();
      sub_7EBC();

      (v212)(v210, v204);
    }

    else
    {

      (v178)(v177, v94);
    }

    v188 = v171[2];
    if (v188)
    {
      v220 = _swiftEmptyArrayStorage;
      sub_73BE0();
      v189 = v171 + 5;
      do
      {
        v190 = *(v189 - 1);
        v191 = *v189;
        objc_allocWithZone(INWorkoutAssociatedItem);

        sub_6D29C(5, v190, v191, 0, 0);
        sub_73BB0();
        v192 = v220[2];
        sub_73BF0();
        sub_73C00();
        sub_73BC0();
        v189 += 2;
        --v188;
      }

      while (v188);

      v193 = v220;
    }

    else
    {

      v193 = _swiftEmptyArrayStorage;
    }

    sub_5EEF8(v193, v63);
  }

  else
  {
  }

  return v63;
}

id sub_5E3D4(uint64_t a1)
{
  v2 = objc_allocWithZone(INEndWorkoutIntent);

  return [v2 initWithWorkoutName:a1];
}

id sub_5E490()
{
  v1 = [v0 workoutName];

  return v1;
}

id sub_5E560(uint64_t a1)
{
  v2 = objc_allocWithZone(INPauseWorkoutIntent);

  return [v2 initWithWorkoutName:a1];
}

uint64_t sub_5E5F8(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void *__return_ptr, uint64_t), Class *a5, const char *a6)
{
  v10 = sub_73720();
  v11 = sub_5394(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_C2A4();
  v18 = v17 - v16;
  sub_72EB0();
  if (v43[3])
  {
    a3(0);
    if (swift_dynamicCast())
    {

      a4(v43, v19);

      v20 = sub_73480();
      v22 = v21;

      if (v22)
      {
        v18 = v20;
      }

      else
      {
        v18 = 0;
      }

      sub_73430();
      sub_734C0();
      v23 = objc_allocWithZone(INSpeakableString);
      sub_5F040();
      v30 = sub_5ED24(v24, v25, v26, v27, v28, v29);
      [objc_allocWithZone(*a5) initWithWorkoutName:v30];
      sub_5F0D0();

      return v18;
    }
  }

  else
  {
    sub_5B50(v43, &qword_A42F0, &qword_77260);
  }

  v31 = sub_736E0();
  sub_5F0B4();
  (*(v13 + 16))(v18, v31, v10);

  v32 = sub_73710();
  v33 = sub_73980();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = sub_221D8();
    v35 = sub_14F88();
    v44 = v35;
    *v34 = 136315138;
    sub_731B0();

    v36 = sub_737A0();
    v42 = v10;
    v38 = a6;
    v39 = sub_19144(v36, v37, &v44);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_0, v32, v33, v38, v34, 0xCu);
    sub_AE38(v35);
    sub_7EBC();
    sub_7EBC();

    (*(v13 + 8))(v18, v42);
  }

  else
  {

    (*(v13 + 8))(v18, v10);
  }

  sub_345F0();
  swift_allocError();
  *v40 = 1;
  swift_willThrow();
  return v18;
}

id sub_5E9F8(uint64_t a1)
{
  v2 = objc_allocWithZone(INResumeWorkoutIntent);

  return [v2 initWithWorkoutName:a1];
}

id sub_5EB48(uint64_t a1)
{
  v2 = objc_allocWithZone(INCancelWorkoutIntent);

  return [v2 initWithWorkoutName:a1];
}

uint64_t sub_5EC00@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_73390();
  v7 = sub_B1C0(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_C2A4();
  v10 = a1(0);
  sub_73380();
  result = sub_732B0();
  a3[3] = v10;
  a3[4] = a2;
  *a3 = result;
  return result;
}

id sub_5ED24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_73780();

  v9 = sub_73780();

  if (a6)
  {
    v10 = sub_73780();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithVocabularyIdentifier:v8 spokenPhrase:v9 pronunciationHint:v10];

  return v11;
}

id sub_5EDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    v6 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = sub_73780();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = sub_73780();

LABEL_6:
  v8 = [v4 initWithFocus:v6 environment:v7];

  return v8;
}

uint64_t sub_5EE88(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A6118, &unk_7A7F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_5EEF8(uint64_t a1, void *a2)
{
  sub_ADF8(0, &qword_A7778, INWorkoutAssociatedItem_ptr);
  isa = sub_73860().super.isa;

  [a2 setAssociatedItems:isa];
}

uint64_t sub_5EF7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5EFC8()
{

  return sub_72E30();
}

void sub_5EFE4()
{
  *(v0 - 368) = 0;
  *(v0 - 376) = 0;
  *(v0 - 380) = 1;
}

uint64_t sub_5F024()
{
}

uint64_t sub_5F074()
{

  return sub_73DB0();
}

uint64_t sub_5F090(uint64_t a1, int a2)
{
  *(v2 - 376) = a1;
  *(v2 - 380) = a2;
}

uint64_t sub_5F0B4()
{

  return swift_beginAccess();
}

uint64_t sub_5F0D0()
{
}

uint64_t sub_5F114()
{
  if (!sub_734A0())
  {
    return 0;
  }

  v0 = sub_72E90();
  if (!v0)
  {

    return v0;
  }

  v1 = sub_73000();

  if (!v1)
  {

    return 0;
  }

  v0 = sub_730E0();

  return v0;
}

uint64_t sub_5F1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_72AB0();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_7CC4(a2, v7, 1, v6);
}

uint64_t sub_5F258(uint64_t a1)
{
  v2 = sub_610D0(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_61130(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_612FC(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_61330(v7, v9, v11 & 1);
  if (v12)
  {
    sub_61330(v2, v4, v6 & 1);
    return 0;
  }

  else
  {
    sub_61184(v2, v4, v6 & 1, a1);
    v13 = v14;
    sub_61330(v2, v4, v6 & 1);
  }

  return v13;
}

uint64_t sub_5F32C(uint64_t a1)
{
  sub_71E80();
  v3 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_input;
  v4 = sub_727F0();
  sub_7CC4(v1 + v3, 1, 1, v4);
  sub_2BB8C(a1, v1 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_healthIntent);
  return v1;
}

uint64_t sub_5F398(uint64_t a1)
{
  v3 = sub_506C(&qword_A78A8, &qword_7A938);
  sub_B1C0(v3);
  v5 = *(v4 + 64);
  sub_303DC();
  __chkstk_darwin(v6);
  v8 = &v12 - v7;
  v9 = sub_727F0();
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  sub_7CC4(v8, 0, 1, v9);
  v10 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_input;
  swift_beginAccess();
  sub_6133C(v8, v1 + v10);
  swift_endAccess();
  return 1;
}

void sub_5F494()
{
  sub_11784();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_73390();
  v7 = sub_B1C0(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_C2A4();
  v10 = sub_72140();
  v11 = sub_5394(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_C2A4();
  v18 = v17 - v16;
  sub_73970();
  v19 = *sub_734D0();
  sub_73620();

  if (qword_A38F8 != -1)
  {
    sub_61490();
  }

  type metadata accessor for HealthNLIntent(0);
  sub_C1B8();
  sub_72E30();
  if (v25 == 9 || !sub_5F7B8(v25, &off_98838))
  {
    type metadata accessor for DialogCATWrapper();
    sub_73380();
    sub_732B0();
    sub_72840();
    sub_71E80();
    sub_73440();
    sub_2BC60();
    sub_72120();
    sub_2BCB4(&v25);
    v5(v18);
    (*(v13 + 8))(v18, v10);
  }

  else
  {
    sub_73600();
    v20 = sub_735F0();
    sub_735E0();
    v21 = sub_735C0();
    sub_506C(&unk_A63F0, &unk_760C0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_752C0;
    *(v22 + 32) = v20;
    v23 = swift_allocObject();
    v23[2] = v5;
    v23[3] = v3;
    v23[4] = v1;
    v24 = v20;

    sub_735D0();
  }

  sub_11754();
}

BOOL sub_5F7B8(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xE500000000000000;
    v8 = 0x7472617473;
    switch(*v4)
    {
      case 1:
        v8 = 0x6573756170;
        break;
      case 2:
        v7 = 0xE400000000000000;
        v8 = 1886352499;
        break;
      case 3:
        v7 = 0xE600000000000000;
        v8 = 0x656D75736572;
        break;
      case 4:
        v7 = 0xE600000000000000;
        v8 = 0x6C65636E6163;
        break;
      case 5:
        v7 = 0xE400000000000000;
        v8 = 2003789939;
        break;
      case 6:
        v8 = 0x74736575516B7361;
        v7 = 0xEB000000006E6F69;
        break;
      case 7:
        v8 = 0x7075746573;
        break;
      case 8:
        v7 = 0xE600000000000000;
        v8 = 0x796669646F6DLL;
        break;
      default:
        break;
    }

    v9 = 0xE500000000000000;
    v10 = 0x7472617473;
    switch(a1)
    {
      case 1:
        v10 = 0x6573756170;
        break;
      case 2:
        v9 = 0xE400000000000000;
        v10 = 1886352499;
        break;
      case 3:
        v9 = 0xE600000000000000;
        v10 = 0x656D75736572;
        break;
      case 4:
        v9 = 0xE600000000000000;
        v10 = 0x6C65636E6163;
        break;
      case 5:
        v9 = 0xE400000000000000;
        v10 = 2003789939;
        break;
      case 6:
        v10 = 0x74736575516B7361;
        v9 = 0xEB000000006E6F69;
        break;
      case 7:
        v10 = 0x7075746573;
        break;
      case 8:
        v9 = 0xE600000000000000;
        v10 = 0x796669646F6DLL;
        break;
      default:
        break;
    }

    if (v8 == v10 && v7 == v9)
    {

      return v5 != 0;
    }

    v12 = sub_73DB0();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_5FA34(uint64_t a1, void (*a2)(char *))
{
  v4 = sub_73390();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_72140();
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_5F258(a1);
  if (v10)
  {
    v11 = v10;
    sub_73970();
    v12 = *sub_734D0();
    sub_506C(&qword_A3BA8, &unk_76BA0);
    v13 = swift_allocObject();
    v24 = a2;
    v14 = v13;
    *(v13 + 16) = xmmword_74B40;
    v15 = v12;
    v25 = v6;
    v16 = v15;
    v27[0] = sub_735A0();
    v27[1] = v17;
    sub_506C(&qword_A6D00, &unk_75D30);
    v18 = sub_73A80();
    v20 = v19;

    v14[7] = &type metadata for String;
    v14[8] = sub_5258();
    v14[4] = v18;
    v14[5] = v20;
    sub_73620();

    sub_5FE3C();
    sub_72130();

    v6 = v25;
    v24(v9);
  }

  else
  {
    sub_506C(&qword_A3FA0, qword_74FD0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_74B40;
    *(v21 + 32) = 1651664246;
    *(v21 + 40) = 0xE400000000000000;
    if (qword_A38F8 != -1)
    {
      swift_once();
    }

    type metadata accessor for HealthNLIntent(0);
    sub_C1B8();
    sub_72E30();
    if (LOBYTE(v27[0]) != 9)
    {
      sub_5C64(v27[0]);
    }

    *(v21 + 72) = sub_73350();
    sub_5BAC((v21 + 48));
    sub_73330();
    type metadata accessor for DialogCATWrapper();
    sub_73380();
    sub_732B0();
    sub_72840();
    sub_71E80();
    sub_73440();
    sub_2BC60();
    sub_72120();
    sub_2BCB4(v27);
    a2(v9);
  }

  return (*(v26 + 8))(v9, v6);
}

uint64_t sub_5FE3C()
{
  v0 = sub_73390();
  v1 = sub_B1C0(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_C2A4();
  if (qword_A38F8 != -1)
  {
    sub_61490();
  }

  type metadata accessor for HealthNLIntent(0);
  sub_C1B8();
  sub_72E30();
  switch(v7[0])
  {
    case 1:
      sub_5FFEC();
      break;
    case 3:
      sub_606DC();
      break;
    case 2:
      sub_60364();
      break;
    default:
      sub_615FC();
      sub_73380();
      sub_732B0();
      sub_72840();
      sub_71E80();
      sub_73440();
      sub_2BC60();
      v5 = sub_71CF0();
      sub_2BCB4(v7);
      return v5;
  }

  return v4;
}

void sub_5FFEC()
{
  sub_11784();
  v3 = sub_614C4(v2);
  v4 = sub_B1C0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_C2A4();
  v39 = sub_506C(&qword_A44B0, &qword_75830);
  v7 = sub_5394(v39);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_198CC();
  sub_61574();
  __chkstk_darwin(v10);
  sub_61554();
  v11 = sub_506C(&qword_A78A8, &qword_7A938);
  sub_B1C0(v11);
  v13 = *(v12 + 64);
  sub_303DC();
  __chkstk_darwin(v14);
  v15 = sub_614E4();
  v16 = sub_5394(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_198CC();
  sub_61544();
  __chkstk_darwin(v19);
  sub_61564();
  v20 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_input;
  sub_61504();
  sub_60F58(v0 + v20, v1);
  sub_61584();
  if (v21)
  {
    sub_60FC8(v1);
    sub_73970();
    v22 = *sub_734D0();
    sub_6146C();

    sub_615FC();
    sub_73380();
    sub_615C4();
    sub_72840();
    sub_71E80();
    sub_613D8();
    sub_2BC60();
    sub_71CF0();
    sub_2BCB4(&v40);
  }

  else
  {
    v23 = sub_61454();
    v24(v23);
    type metadata accessor for HealthProducers();
    sub_615A8();
    sub_CBE0(v20);
    v25 = sub_506C(&qword_A56B0, &unk_76E50);
    sub_61524(v25);
    type metadata accessor for PauseWorkoutStrategy();
    v26 = swift_allocObject();
    v27 = sub_613AC(v26);
    v28(v27);
    v29 = sub_506C(&qword_A5128, &qword_766C0);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_71C50();
    v32 = sub_6140C();
    v33(v32);
    sub_ADF8(0, &qword_A4498, INPauseWorkoutIntent_ptr);
    v34 = sub_5CDA4(v0 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_healthIntent);
    v40 = sub_61428(v34);
    sub_61030(&qword_A56B8, &qword_A56B0, &unk_76E50);
    sub_615E0();

    v35 = sub_614B0();
    v36(v35);
    v37 = sub_61534();
    v38(v37);
  }

  sub_11754();
}

void sub_60364()
{
  sub_11784();
  v3 = sub_614C4(v2);
  v4 = sub_B1C0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_C2A4();
  v39 = sub_506C(&qword_A4430, &qword_76E30);
  v7 = sub_5394(v39);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_198CC();
  sub_61574();
  __chkstk_darwin(v10);
  sub_61554();
  v11 = sub_506C(&qword_A78A8, &qword_7A938);
  sub_B1C0(v11);
  v13 = *(v12 + 64);
  sub_303DC();
  __chkstk_darwin(v14);
  v15 = sub_614E4();
  v16 = sub_5394(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_198CC();
  sub_61544();
  __chkstk_darwin(v19);
  sub_61564();
  v20 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_input;
  sub_61504();
  sub_60F58(v20 + v0, v1);
  sub_61584();
  if (v21)
  {
    sub_60FC8(v1);
    sub_73970();
    v22 = *sub_734D0();
    sub_6146C();

    sub_615FC();
    sub_73380();
    sub_615C4();
    sub_72840();
    sub_71E80();
    sub_613D8();
    sub_2BC60();
    sub_71CF0();
    sub_2BCB4(&v40);
  }

  else
  {
    v23 = sub_61454();
    v24(v23);
    type metadata accessor for HealthProducers();
    sub_615A8();
    sub_C680(v20);
    v25 = sub_506C(&qword_A56A0, &qword_76E38);
    sub_61524(v25);
    type metadata accessor for EndWorkoutStrategy();
    v26 = swift_allocObject();
    v27 = sub_613AC(v26);
    v28(v27);
    v29 = sub_506C(&qword_A5090, &unk_76E40);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_71C50();
    v32 = sub_6140C();
    v33(v32);
    sub_ADF8(0, &qword_A4418, INEndWorkoutIntent_ptr);
    v34 = sub_5CD98(v0 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_healthIntent);
    v40 = sub_61428(v34);
    sub_61030(&qword_A56A8, &qword_A56A0, &qword_76E38);
    sub_615E0();

    v35 = sub_614B0();
    v36(v35);
    v37 = sub_61534();
    v38(v37);
  }

  sub_11754();
}

void sub_606DC()
{
  sub_11784();
  v3 = sub_614C4(v2);
  v4 = sub_B1C0(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_C2A4();
  v39 = sub_506C(&qword_A43A8, &unk_76E60);
  v7 = sub_5394(v39);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_198CC();
  sub_61574();
  __chkstk_darwin(v10);
  sub_61554();
  v11 = sub_506C(&qword_A78A8, &qword_7A938);
  sub_B1C0(v11);
  v13 = *(v12 + 64);
  sub_303DC();
  __chkstk_darwin(v14);
  v15 = sub_614E4();
  v16 = sub_5394(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_198CC();
  sub_61544();
  __chkstk_darwin(v19);
  sub_61564();
  v20 = OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_input;
  sub_61504();
  sub_60F58(v0 + v20, v1);
  sub_61584();
  if (v21)
  {
    sub_60FC8(v1);
    sub_73970();
    v22 = *sub_734D0();
    sub_6146C();

    sub_615FC();
    sub_73380();
    sub_615C4();
    sub_72840();
    sub_71E80();
    sub_613D8();
    sub_2BC60();
    sub_71CF0();
    sub_2BCB4(&v40);
  }

  else
  {
    v23 = sub_61454();
    v24(v23);
    type metadata accessor for HealthProducers();
    sub_615A8();
    sub_CFD4(v20);
    v25 = sub_506C(&qword_A56C0, qword_7A940);
    sub_61524(v25);
    type metadata accessor for ResumeWorkoutStrategy();
    v26 = swift_allocObject();
    v27 = sub_613AC(v26);
    v28(v27);
    v29 = sub_506C(&qword_A5258, &unk_76E70);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    sub_71C50();
    v32 = sub_6140C();
    v33(v32);
    sub_ADF8(0, &qword_A3BA0, INResumeWorkoutIntent_ptr);
    v34 = sub_5C3D0(v0 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_healthIntent);
    v40 = sub_61428(v34);
    sub_61030(&qword_A56C8, &qword_A56C0, qword_7A940);
    sub_615E0();

    v35 = sub_614B0();
    v36(v35);
    v37 = sub_61534();
    v38(v37);
  }

  sub_11754();
}

uint64_t sub_60A54()
{
  sub_AE38((v0 + 16));
  sub_BFD8(v0 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_healthIntent);
  sub_60FC8(v0 + OBJC_IVAR____TtC24HealthFlowDelegatePlugin26SearchForRemoteDevicesFlow_input);
  return v0;
}

uint64_t sub_60A94()
{
  sub_60A54();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for SearchForRemoteDevicesFlow()
{
  result = qword_A77A8;
  if (!qword_A77A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_60B40()
{
  v0 = sub_731D0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_60C18();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_60C18()
{
  if (!qword_A77B8)
  {
    sub_727F0();
    v0 = sub_73A90();
    if (!v1)
    {
      atomic_store(v0, &qword_A77B8);
    }
  }
}

uint64_t sub_60C70(uint64_t a1)
{
  v2 = *v1;
  sub_5F398(a1);
  return 1;
}

uint64_t sub_60C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_60D48;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t sub_60D48(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_60E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.execute()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_14A58;

  return Flow.execute()(a1, a2, a3);
}

uint64_t sub_60F1C()
{
  type metadata accessor for SearchForRemoteDevicesFlow();

  return sub_71D50();
}

uint64_t sub_60F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A78A8, &qword_7A938);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_60FC8(uint64_t a1)
{
  v2 = sub_506C(&qword_A78A8, &qword_7A938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_61030(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_D850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_61084()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_610C4(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_5FA34(a1, *(v1 + 16));
}

uint64_t sub_610D0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_73C60();
  }

  v3 = -1 << *(a1 + 32);
  result = sub_73B20();
  v4 = *(a1 + 36);
  return result;
}

uint64_t sub_61130(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_73CB0();
  }

  result = 1 << *(a1 + 32);
  v3 = *(a1 + 36);
  return result;
}

void sub_61184(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_73C70();
      sub_735B0();
      swift_dynamicCast();
      return;
    }

    goto LABEL_19;
  }

  if ((a3 & 1) == 0)
  {
LABEL_8:
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        return;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (sub_73C90() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_73CA0();
  sub_735B0();
  swift_dynamicCast();
  a2 = v11;
  a1 = sub_6D3A8(v11);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v9 = *(*(a4 + 48) + 8 * a1);

  v10 = v9;
}

uint64_t sub_612FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      if (a2 == a5)
      {
        return a1 == a4;
      }

      __break(1u);
    }

    goto LABEL_8;
  }

  if ((a6 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return static __CocoaDictionary.Index.== infix(_:_:)(a1, a2, a3, a4);
  }

  a3 = a4;
  a4 = a5;
  return static __CocoaDictionary.Index.== infix(_:_:)(a1, a2, a3, a4);
}

uint64_t sub_61330(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_6133C(uint64_t a1, uint64_t a2)
{
  v4 = sub_506C(&qword_A78A8, &qword_7A938);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_613AC(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(v3 - 232) = a1;
  v4 = *(*(v3 - 328) + 16);
  result = v2;
  v6 = *(v3 - 320);
  return result;
}

uint64_t sub_613D8()
{

  return sub_73440();
}

uint64_t sub_61428(uint64_t a1)
{
  v5 = v1;
  v6 = *(v3 - 344);

  return RCHFlow.__allocating_init(strategy:childFlowFactory:input:intent:)(v3 - 232, v5, v2, a1);
}

uint64_t sub_6146C()
{

  return sub_73620();
}

uint64_t sub_61490()
{

  return swift_once();
}

uint64_t sub_614B0()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 320);
  return result;
}

uint64_t sub_614C4(uint64_t a1)
{
  *(v1 - 336) = a1;

  return sub_73390();
}

uint64_t sub_614E4()
{

  return sub_727F0();
}

uint64_t sub_61504()
{

  return swift_beginAccess();
}

id sub_615A8()
{
  v2 = *(v0 - 336);

  return v2;
}

uint64_t sub_615C4()
{

  return sub_732B0();
}

uint64_t sub_615E0()
{

  return sub_71CF0();
}

uint64_t sub_615FC()
{

  return type metadata accessor for DialogCATWrapper();
}

void *sub_61674()
{
  sub_506C(&qword_A3FA0, qword_74FD0);
  v1 = swift_allocObject();
  v2 = v1;
  *(v1 + 16) = xmmword_772F0;
  *(v1 + 32) = 0x6E69577473726966;
  *(v1 + 40) = 0xEF657A6953776F64;
  if (*(v0 + 8))
  {
    v3 = 0;
    v4 = 0;
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  else
  {
    v3 = *v0;
    v4 = &type metadata for Double;
  }

  *(v1 + 48) = v3;
  *(v1 + 72) = v4;
  strcpy((v1 + 80), "isConclusion");
  *(v1 + 93) = 0;
  *(v1 + 94) = -5120;
  *(v1 + 96) = *(v0 + 9);
  *(v1 + 120) = &type metadata for Bool;
  strcpy((v1 + 128), "isFirstWindow");
  *(v1 + 142) = -4864;
  *(v1 + 144) = *(v0 + 10);
  *(v1 + 168) = &type metadata for Bool;
  strcpy((v1 + 176), "isLastWindow");
  *(v1 + 189) = 0;
  *(v1 + 190) = -5120;
  *(v1 + 192) = *(v0 + 11);
  *(v1 + 216) = &type metadata for Bool;
  *(v1 + 224) = 0xD000000000000016;
  *(v1 + 232) = 0x800000000007DDB0;
  *(v1 + 240) = *(v0 + 12);
  *(v1 + 264) = &type metadata for Bool;
  *(v1 + 272) = 0x736D657469;
  *(v1 + 280) = 0xE500000000000000;
  v5 = *(v0 + 16);
  v6 = sub_506C(&qword_A5998, &qword_77460);
  v2[36] = v5;
  v2[39] = v6;
  v2[40] = 0xD000000000000013;
  v2[41] = 0x800000000007DDD0;
  if (*(v0 + 32))
  {
    v7 = 0;
    v8 = 0;
    v2[43] = 0;
    v2[44] = 0;
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = &type metadata for Double;
  }

  v2[42] = v7;
  v2[45] = v8;
  v2[46] = 0x6574496C61746F74;
  v2[47] = 0xEA0000000000736DLL;
  if (*(v0 + 48))
  {
    v9 = 0;
    v10 = 0;
    v2[49] = 0;
    v2[50] = 0;
  }

  else
  {
    v9 = *(v0 + 40);
    v10 = &type metadata for Double;
  }

  v2[48] = v9;
  v2[51] = v10;
  v2[52] = 0x6953776F646E6977;
  v2[53] = 0xEA0000000000657ALL;
  if (*(v0 + 64))
  {
    v11 = 0;
    v12 = 0;
    v2[55] = 0;
    v2[56] = 0;
  }

  else
  {
    v11 = *(v0 + 56);
    v12 = &type metadata for Double;
  }

  v2[54] = v11;
  v2[57] = v12;
  sub_62EC4(v0, v14);
  return v2;
}

uint64_t sub_618EC()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v1);
  v3 = *(v2 + 64);
  sub_303DC();
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v7 = swift_allocObject();
  sub_302B0(v7, xmmword_77300);
  sub_3039C();
  sub_5AEC(v8, v9, v10, qword_75450);
  v11 = sub_73350();
  if (sub_5124(v6, 1, v11) == 1)
  {
    sub_5B50(v6, &qword_A3F98, qword_75450);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v11;
    sub_5BAC((v7 + 48));
    sub_5C0C(v11);
    v13 = *(v12 + 32);
    sub_3039C();
    v14();
  }

  *(v7 + 80) = 0x656369766564;
  *(v7 + 88) = 0xE600000000000000;
  v15 = type metadata accessor for WorkoutEndErrorWithCodeParameters(0);
  v16 = *(v0 + *(v15 + 20));
  if (v16)
  {
    v17 = sub_73360();
    v18 = v16;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
  }

  *(v7 + 96) = v18;
  *(v7 + 120) = v17;
  *(v7 + 128) = 0x646F43726F727265;
  *(v7 + 136) = 0xE900000000000065;
  v19 = (v0 + *(v15 + 24));
  if (v19[1])
  {
    v20 = 0;
    *(v7 + 152) = 0;
    *(v7 + 160) = 0;
    v21 = 0;
  }

  else
  {
    v21 = *v19;
    v20 = &type metadata for Double;
  }

  *(v7 + 144) = v21;
  *(v7 + 168) = v20;

  return v7;
}

uint64_t sub_61AD0()
{
  v1 = v0;
  v2 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v2);
  v4 = *(v3 + 64);
  sub_303DC();
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v8 = swift_allocObject();
  sub_302B0(v8, xmmword_74B40);
  sub_5AEC(v1, v7, &qword_A3F98, qword_75450);
  v9 = sub_73350();
  if (sub_5124(v7, 1, v9) == 1)
  {
    sub_5B50(v7, &qword_A3F98, qword_75450);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    sub_5BAC((v8 + 48));
    sub_5C0C(v9);
    (*(v10 + 32))();
  }

  return v8;
}

uint64_t sub_61C18()
{
  v1 = sub_506C(&qword_A3F98, qword_75450);
  sub_B1C0(v1);
  v3 = *(v2 + 64);
  sub_303DC();
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  sub_506C(&qword_A3FA0, qword_74FD0);
  v7 = swift_allocObject();
  sub_302B0(v7, xmmword_77300);
  sub_3039C();
  sub_5AEC(v8, v9, v10, qword_75450);
  v11 = sub_73350();
  if (sub_5124(v6, 1, v11) == 1)
  {
    sub_5B50(v6, &qword_A3F98, qword_75450);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v11;
    sub_5BAC((v7 + 48));
    sub_5C0C(v11);
    v13 = *(v12 + 32);
    sub_3039C();
    v14();
  }

  *(v7 + 80) = 0x5074737269467369;
  *(v7 + 88) = 0xEF70704179747261;
  v15 = type metadata accessor for WorkoutEndIntentHandledResponseParameters(0);
  *(v7 + 96) = *(v0 + *(v15 + 20));
  *(v7 + 120) = &type metadata for Bool;
  strcpy((v7 + 128), "isPunchingOut");
  *(v7 + 142) = -4864;
  v16 = *(v0 + *(v15 + 24));
  *(v7 + 168) = &type metadata for Bool;
  *(v7 + 144) = v16;
  return v7;
}

uint64_t sub_61DCC()
{
  sub_7F1C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for WorkoutEndErrorWithCodeParameters(0);
  v1[5] = v4;
  sub_B1C0(v4);
  v6 = *(v5 + 64) + 15;
  v1[6] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_61E58()
{
  sub_303D0();
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = sub_73350();
  sub_303A8(v5, v6, v7, v5);
  *(v1 + *(v2 + 20)) = 0;
  v8 = v1 + *(v2 + 24);
  *v8 = 0;
  *(v8 + 8) = 1;
  v4(v1);
  v0[7] = sub_618EC();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v12 = v9;
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  sub_30354(v10);

  return v12(0xD000000000000018);
}

uint64_t sub_61F60()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *(v6 + 56);
  v9 = *v2;
  sub_7F04();
  *v10 = v9;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_62094()
{
  sub_7F1C();
  sub_62F38();

  v0 = sub_303E8();

  return v1(v0);
}

uint64_t sub_620F0()
{
  sub_7F1C();
  sub_62F38();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_62154()
{
  sub_7F1C();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = type metadata accessor for WorkoutEndUnsupportedSlotValueParameters(0);
  sub_B1C0(v4);
  v6 = *(v5 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_7F10();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_621DC()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_73350();
  sub_303A8(v4, v5, v6, v4);
  v3(v1);
  v0[6] = sub_61AD0();
  sub_3037C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v10 = v7;
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  sub_30354(v8);

  return v10(0xD00000000000001FLL);
}

uint64_t sub_622C4()
{
  sub_303D0();
  sub_3038C();
  v4 = v3;
  sub_7F04();
  *v5 = v4;
  v7 = *(v6 + 56);
  v8 = *(v6 + 48);
  v9 = *v2;
  sub_7F04();
  *v10 = v9;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  sub_7F10();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_623F8()
{
  sub_7F1C();
  sub_62F0C();

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}