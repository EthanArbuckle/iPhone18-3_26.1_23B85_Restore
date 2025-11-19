uint64_t sub_32A50()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_32AC4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  if (v4 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_3C894();

    if (v3)
    {
      v0 = 0x8000000000042300;
    }

    else
    {
      v0 = 0xE400000000000000;
    }

    if (v3 == 1 && 0x8000000000042300 == v0)
    {
      v1 = 1;
    }

    else
    {
      v1 = sub_3D804();
    }
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_32C4C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_32D60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 1684099177;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0x8000000000042300;
  }

  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 1684099177;
  }

  if (*a2)
  {
    v7 = 0x8000000000042300;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_3D804();
  }

  return v9 & 1;
}

Swift::Int sub_32E04()
{
  v1 = *v0;
  sub_3D844();
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_32E84()
{
  *v0;
  sub_3D524();
}

Swift::Int sub_32EF0()
{
  v1 = *v0;
  sub_3D844();
  sub_3D524();

  return sub_3D864();
}

uint64_t sub_32F6C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_52210;
  v8._object = v3;
  v5 = sub_3D784(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_32FCC(unint64_t *a1@<X8>)
{
  v2 = 0x8000000000042300;
  v3 = 1684099177;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_33018@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v5;
  return result;
}

uint64_t sub_33098(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_3C8A4();
}

uint64_t sub_33108()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

uint64_t sub_3317C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  return v1;
}

id sub_331F0()
{
  ObjectType = swift_getObjectType();
  v1 = sub_4FF4(&qword_55AC8, &qword_3E440);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v80 = &v70 - v4;
  v5 = sub_4FF4(&qword_56FE8, &unk_41CE0);
  v78 = *(v5 - 8);
  v79 = v5;
  v6 = *(v78 + 64);
  __chkstk_darwin(v5, v7);
  v77 = &v70 - v8;
  v9 = sub_4FF4(&qword_55D40, &qword_3EB10);
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = *(v75 + 64);
  __chkstk_darwin(v9, v11);
  v74 = &v70 - v12;
  v13 = sub_4FF4(&qword_55D48, &unk_41CF0);
  v72 = *(v13 - 8);
  v73 = v13;
  v14 = *(v72 + 64);
  __chkstk_darwin(v13, v15);
  v71 = &v70 - v16;
  v70 = sub_4FF4(&qword_55AD8, &unk_3E450);
  v17 = *(v70 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v70, v19);
  v21 = &v70 - v20;
  v22 = sub_4FF4(&qword_56FF0, &qword_41D00);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22, v25);
  v27 = &v70 - v26;
  v28 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideRecentAppsOnEmbeddedDisplay;
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v81 = qword_572E8;
  *&v0[v28] = sub_3C8D4();
  v29 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideRecentAppsOnExternalDisplay;
  *&v0[v29] = sub_3C8D4();
  v30 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideDockOnEmbeddedDisplay;
  *&v0[v30] = sub_3C8D4();
  v31 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideDockOnExternalDisplay;
  *&v0[v31] = sub_3C8D4();
  v32 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__multitaskingWindowType;
  LOBYTE(v84) = sub_371D4();
  sub_3C874();
  (*(v23 + 32))(&v0[v32], v27, v22);
  v33 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__shouldShowRecentAppsInStageManager;
  LOBYTE(v84) = sub_A6E8() & 1;
  sub_3C874();
  v34 = *(v17 + 32);
  v35 = v70;
  v34(&v0[v33], v21, v70);
  v36 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__shouldShowDockInStageManager;
  LOBYTE(v84) = sub_A800() & 1;
  sub_3C874();
  v34(&v0[v36], v21, v35);
  v37 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__orientation;
  v38 = [objc_opt_self() currentDevice];
  v39 = [v38 orientation];

  v84 = v39;
  type metadata accessor for UIDeviceOrientation(0);
  v40 = v71;
  sub_3C874();
  (*(v72 + 32))(&v0[v37], v40, v73);
  v41 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__displayManager;
  if (qword_55988 != -1)
  {
    swift_once();
  }

  v42 = qword_572C0;
  v84 = qword_572C0;
  type metadata accessor for MultiTaskingDisplayManager();
  v43 = v42;
  v44 = v74;
  sub_3C874();
  (*(v75 + 32))(&v0[v41], v44, v76);
  v45 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__selectedDisplaySection;
  LOBYTE(v84) = 0;
  v46 = v77;
  sub_3C874();
  (*(v78 + 32))(&v0[v45], v46, v79);
  v47 = ObjectType;
  v83.receiver = v0;
  v83.super_class = ObjectType;
  v48 = objc_msgSendSuper2(&v83, "init");
  v49 = sub_3D5B4();
  v50 = *(*(v49 - 8) + 56);
  v51 = v80;
  v50(v80, 1, 1, v49);
  sub_3D594();
  v52 = v48;
  v53 = sub_3D584();
  v54 = swift_allocObject();
  v54[2] = v53;
  v54[3] = &protocol witness table for MainActor;
  v54[4] = v52;
  sub_1E9E0(0, 0, v51, &unk_41D10, v54);

  v50(v51, 1, 1, v49);
  v55 = v52;
  v56 = sub_3D584();
  v57 = swift_allocObject();
  v57[2] = v56;
  v57[3] = &protocol witness table for MainActor;
  v57[4] = v55;
  v57[5] = v47;
  sub_1E9E0(0, 0, v51, &unk_41D20, v57);

  v50(v51, 1, 1, v49);
  v58 = v55;
  v59 = sub_3D584();
  v60 = swift_allocObject();
  v60[2] = v59;
  v60[3] = &protocol witness table for MainActor;
  v60[4] = v58;
  v60[5] = v47;
  sub_1E9E0(0, 0, v51, &unk_41D30, v60);

  v50(v51, 1, 1, v49);
  v61 = v58;
  v62 = sub_3D584();
  v63 = swift_allocObject();
  v63[2] = v62;
  v63[3] = &protocol witness table for MainActor;
  v63[4] = v61;
  sub_1E9E0(0, 0, v51, &unk_41D40, v63);

  v50(v51, 1, 1, v49);
  v64 = sub_3D584();
  v65 = swift_allocObject();
  v65[2] = v64;
  v65[3] = &protocol witness table for MainActor;
  v65[4] = v61;
  sub_1E9E0(0, 0, v51, &unk_41D50, v65);

  v66 = sub_3D4C4();
  v67 = v81;
  [v81 addObserver:v61 forKeyPath:v66 options:3 context:0];

  v68 = sub_3D4C4();
  [v67 addObserver:v61 forKeyPath:v68 options:3 context:0];

  return v61;
}

uint64_t sub_33B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = *(*(sub_4FF4(&qword_56888, &qword_407C8) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v6 = sub_4FF4(&qword_57020, &qword_41E10);
  v4[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_4FF4(&qword_57028, &qword_41E18);
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v11 = sub_4FF4(&qword_57030, &unk_41E20);
  v4[13] = v11;
  v12 = *(v11 - 8);
  v4[14] = v12;
  v13 = *(v12 + 64) + 15;
  v4[15] = swift_task_alloc();
  v14 = sub_4FF4(&qword_56880, &qword_407C0);
  v4[16] = v14;
  v15 = *(v14 - 8);
  v4[17] = v15;
  v16 = *(v15 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = sub_3D594();
  v4[20] = sub_3D584();
  v18 = sub_3D564();
  v4[21] = v18;
  v4[22] = v17;

  return _swift_task_switch(sub_33D9C, v18, v17);
}

uint64_t sub_33D9C()
{
  v1 = v0[15];
  v15 = v0[14];
  v16 = v0[18];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[6];
  v14 = v0[7];
  swift_beginAccess();
  sub_4FF4(&qword_56FF0, &qword_41D00);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_57038, &qword_57028, &qword_41E18);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_57040, &qword_57020, &qword_41E10);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v15 + 8))(v1, v2);
  sub_3D7E4();
  v9 = v0[19];
  v10 = sub_3D584();
  v0[23] = v10;
  v11 = swift_task_alloc();
  v0[24] = v11;
  *v11 = v0;
  v11[1] = sub_33FF4;
  v12 = v0[18];

  return sub_1DDD0(v10, &protocol witness table for MainActor);
}

uint64_t sub_33FF4(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 192);
  v9 = *v2;
  *(*v2 + 200) = a1;

  if (!v1)
  {
    v6 = v3[23];

    v7 = v3[21];
    v8 = v3[22];

    return _swift_task_switch(sub_3410C, v7, v8);
  }

  return result;
}

uint64_t sub_3410C()
{
  if (*(v0 + 200) == 4)
  {
    v1 = *(v0 + 160);
    v2 = *(v0 + 120);
    v3 = *(v0 + 96);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    v6 = *(v0 + 8);

    return v6();
  }

  v8 = *(v0 + 48);
  if (sub_32AC4())
  {
    v9 = *(v0 + 200);
    v10 = *(v0 + 48);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_3C894();

    v11 = *(v0 + 40);
    if (v9 <= 1 && v9)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_3D804();
    }

    sub_120A0(v12 & 1);
    goto LABEL_23;
  }

  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v21 = qword_572E8;
  if (*(v0 + 200) > 1u && *(v0 + 200) != 2)
  {

    v11 = sub_3D4C4();
    [v21 setBool:1 forKey:v11];

LABEL_23:

    goto LABEL_24;
  }

  v13 = sub_3D804();

  v14 = sub_3D4C4();
  [v21 setBool:v13 & 1 forKey:v14];

  v15 = sub_3D804();

  if ((v15 & 1) == 0)
  {
    if (*(v0 + 200) && *(v0 + 200) != 1)
    {
      v16 = 1;
    }

    else
    {
      v16 = sub_3D804();
    }

    v11 = sub_3D4C4();
    [v21 setBool:v16 & 1 forKey:v11];
    goto LABEL_23;
  }

LABEL_24:
  v17 = *(v0 + 152);
  v18 = sub_3D584();
  *(v0 + 184) = v18;
  v19 = swift_task_alloc();
  *(v0 + 192) = v19;
  *v19 = v0;
  v19[1] = sub_33FF4;
  v20 = *(v0 + 144);

  return sub_1DDD0(v18, &protocol witness table for MainActor);
}

uint64_t sub_34634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = *(*(sub_4FF4(&qword_55B28, &unk_3EB60) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v11 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[13] = v11;
  v12 = *(v11 - 8);
  v4[14] = v12;
  v13 = *(v12 + 64) + 15;
  v4[15] = swift_task_alloc();
  v14 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[16] = v14;
  v15 = *(v14 - 8);
  v4[17] = v15;
  v16 = *(v15 + 64) + 15;
  v4[18] = swift_task_alloc();
  v4[19] = sub_3D594();
  v4[20] = sub_3D584();
  v18 = sub_3D564();
  v4[21] = v18;
  v4[22] = v17;

  return _swift_task_switch(sub_3487C, v18, v17);
}

uint64_t sub_3487C()
{
  v1 = v0[15];
  v17 = v0[14];
  v18 = v0[18];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  v7 = v0[6];
  v15 = v0[8];
  v16 = v0[7];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  v8 = v0[5];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();

  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v17 + 8))(v1, v2);
  sub_3D7E4();
  v9 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideRecentAppsOnEmbeddedDisplay;
  v0[23] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideDockOnEmbeddedDisplay;
  v0[24] = v9;
  v10 = v0[19];
  v11 = sub_3D584();
  v0[25] = v11;
  v12 = swift_task_alloc();
  v0[26] = v12;
  *v12 = v0;
  v12[1] = sub_34B38;
  v13 = v0[18];

  return sub_1C864(v11, &protocol witness table for MainActor);
}

uint64_t sub_34B38(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;

  if (!v1)
  {
    v8 = *(v4 + 200);

    *(v4 + 222) = a1;
    v9 = *(v4 + 168);
    v10 = *(v4 + 176);

    return _swift_task_switch(sub_34C64, v9, v10);
  }

  return result;
}

uint64_t sub_34C64()
{
  if (*(v0 + 222) == 2)
  {
    v1 = *(v0 + 160);
    v2 = *(v0 + 120);
    v3 = *(v0 + 96);
    v4 = *(v0 + 72);
    v5 = *(v0 + 56);
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v9 = *(v0 + 184);
    v8 = *(v0 + 192);
    v10 = *(v0 + 48);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 216) = 0;
    v11 = v10;
    sub_3C8A4();
    v12 = sub_371D4();
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 217) = v12;
    v13 = v11;
    sub_3C8A4();
    v14 = *&v10[v9];

    sub_3C8E4();

    v15 = *(v0 + 218);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 219) = (v15 & 1) == 0;
    v16 = v13;
    sub_3C8A4();
    v17 = *&v10[v8];

    sub_3C8E4();

    LOBYTE(v11) = *(v0 + 220);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 221) = (v11 & 1) == 0;
    v18 = v16;
    sub_3C8A4();
    v19 = *(v0 + 152);
    v20 = sub_3D584();
    *(v0 + 200) = v20;
    v21 = swift_task_alloc();
    *(v0 + 208) = v21;
    *v21 = v0;
    v21[1] = sub_34B38;
    v22 = *(v0 + 144);

    return sub_1C864(v20, &protocol witness table for MainActor);
  }
}

uint64_t sub_34F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(sub_4FF4(&qword_56870, &qword_407B0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_4FF4(&qword_56FF8, &qword_41D58);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_4FF4(&qword_57000, &qword_41D60);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_4FF4(&qword_57008, &qword_41D68);
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_4FF4(&qword_56868, &qword_41D70);
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v18 = sub_3D564();
  v4[20] = v18;
  v4[21] = v17;

  return _swift_task_switch(sub_351A8, v18, v17);
}

uint64_t sub_351A8()
{
  v1 = v0[14];
  v17 = v0[13];
  v18 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v16 = v0[6];
  swift_beginAccess();
  sub_4FF4(&qword_56FE8, &unk_41CE0);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_57010, &qword_57000, &qword_41D60);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_57018, &qword_56FF8, &qword_41D58);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v17 + 8))(v1, v2);
  sub_3D7E4();
  v9 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideRecentAppsOnEmbeddedDisplay;
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideDockOnEmbeddedDisplay;
  v0[23] = v9;
  v10 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideRecentAppsOnExternalDisplay;
  v0[24] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideDockOnExternalDisplay;
  v0[25] = v10;
  v11 = v0[18];
  v12 = sub_3D584();
  v0[26] = v12;
  v13 = swift_task_alloc();
  v0[27] = v13;
  *v13 = v0;
  v13[1] = sub_35428;
  v14 = v0[17];

  return sub_1E3D8(v12, &protocol witness table for MainActor);
}

uint64_t sub_35428(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 216);
  v9 = *v2;
  *(*v2 + 234) = a1;

  if (!v1)
  {
    v6 = v3[26];

    v7 = v3[20];
    v8 = v3[21];

    return _swift_task_switch(sub_35540, v7, v8);
  }

  return result;
}

id sub_35540()
{
  v1 = *(v0 + 234);
  if (v1 == 2)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 112);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v7 = *(v0 + 8);

    return v7();
  }

  if (v1)
  {
    v9 = 0x8000000000042300;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (0x8000000000042300 == v9 && (v1 & 1) != 0)
  {
  }

  else
  {
    v10 = sub_3D804();

    if ((v10 & 1) == 0)
    {
      v17 = (v0 + 225);
      v18 = (v0 + 226);
      v19 = (v0 + 227);
      v20 = (v0 + 228);
      v24 = *(v0 + 40);
      v36 = &v24[*(v0 + 184)];
      v22 = &v24[*(v0 + 176)];
      v25 = sub_371D4();
      swift_getKeyPath();
      swift_getKeyPath();
      *(v0 + 224) = v25;
      v23 = v24;
      goto LABEL_24;
    }
  }

  if (qword_55988 != -1)
  {
    swift_once();
  }

  v11 = *(qword_572C0 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo);
  if (v11 && ([v11 isMirrored] & 1) != 0)
  {
    goto LABEL_21;
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_28;
  }

  v12 = result;
  deviceSupportsEnhancedMultitasking = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

  if ((deviceSupportsEnhancedMultitasking & 1) == 0)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v14 = result;
      deviceSupportsSingleDisplayEnhancedMultitasking = MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();

      if (deviceSupportsSingleDisplayEnhancedMultitasking)
      {
        goto LABEL_20;
      }

LABEL_21:
      v16 = 1;
      goto LABEL_22;
    }

LABEL_28:
    __break(1u);
    return result;
  }

LABEL_20:
  v16 = 3;
LABEL_22:
  v17 = (v0 + 230);
  v18 = (v0 + 231);
  v19 = (v0 + 232);
  v20 = (v0 + 233);
  v21 = *(v0 + 40);
  v36 = &v21[*(v0 + 200)];
  v22 = &v21[*(v0 + 192)];
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 229) = v16;
  v23 = v21;
LABEL_24:
  sub_3C8A4();
  v26 = *v22;

  sub_3C8E4();

  v27 = *v17;
  swift_getKeyPath();
  swift_getKeyPath();
  *v18 = (v27 & 1) == 0;
  v28 = v23;
  sub_3C8A4();
  v29 = *v36;

  sub_3C8E4();

  v30 = *v19;
  swift_getKeyPath();
  swift_getKeyPath();
  *v20 = (v30 & 1) == 0;
  v31 = v28;
  sub_3C8A4();
  v32 = *(v0 + 144);
  v33 = sub_3D584();
  *(v0 + 208) = v33;
  v34 = swift_task_alloc();
  *(v0 + 216) = v34;
  *v34 = v0;
  v34[1] = sub_35428;
  v35 = *(v0 + 136);

  return sub_1E3D8(v33, &protocol witness table for MainActor);
}

uint64_t sub_3598C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(sub_4FF4(&qword_55B28, &unk_3EB60) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v18 = sub_3D564();
  v4[20] = v18;
  v4[21] = v17;

  return _swift_task_switch(sub_35BD4, v18, v17);
}

uint64_t sub_35BD4()
{
  v1 = v0[14];
  v16 = v0[13];
  v17 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v15 = v0[6];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v16 + 8))(v1, v2);
  sub_3D7E4();
  v9 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideDockOnExternalDisplay;
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideDockOnEmbeddedDisplay;
  v0[23] = v9;
  v10 = v0[18];
  v11 = sub_3D584();
  v0[24] = v11;
  v12 = swift_task_alloc();
  v0[25] = v12;
  *v12 = v0;
  v12[1] = sub_35E40;
  v13 = v0[17];

  return sub_1C864(v11, &protocol witness table for MainActor);
}

uint64_t sub_35E40(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v9 = *v2;
  *(*v2 + 210) = a1;

  if (!v1)
  {
    v6 = v3[24];

    v7 = v3[20];
    v8 = v3[21];

    return _swift_task_switch(sub_35F58, v7, v8);
  }

  return result;
}

uint64_t sub_35F58()
{
  v1 = *(v0 + 210);
  if (v1 == 2)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 112);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 40);
    v10 = sub_32AC4();
    v11 = (v1 & 1) == 0;
    v12 = 176;
    if (v10)
    {
      v12 = 184;
    }

    v13 = *(v0 + v12);
    if (v10)
    {
      v14 = 209;
    }

    else
    {
      v14 = 208;
    }

    v15 = *(*(v0 + 40) + v13);
    *(v0 + v14) = v11;

    sub_3C8F4();

    v16 = *(v0 + 144);
    v17 = sub_3D584();
    *(v0 + 192) = v17;
    v18 = swift_task_alloc();
    *(v0 + 200) = v18;
    *v18 = v0;
    v18[1] = sub_35E40;
    v19 = *(v0 + 136);

    return sub_1C864(v17, &protocol witness table for MainActor);
  }
}

uint64_t sub_3612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = *(*(sub_4FF4(&qword_55B28, &unk_3EB60) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = sub_4FF4(&qword_55B30, &unk_3E4C0);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_4FF4(&qword_55B38, &unk_3EB70);
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_4FF4(&qword_55B40, &unk_3E4D0);
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();
  v14 = sub_4FF4(&qword_55B48, &unk_3EB80);
  v4[15] = v14;
  v15 = *(v14 - 8);
  v4[16] = v15;
  v16 = *(v15 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = sub_3D594();
  v4[19] = sub_3D584();
  v18 = sub_3D564();
  v4[20] = v18;
  v4[21] = v17;

  return _swift_task_switch(sub_36374, v18, v17);
}

uint64_t sub_36374()
{
  v1 = v0[14];
  v16 = v0[13];
  v17 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v15 = v0[6];
  swift_beginAccess();
  sub_4FF4(&qword_55AD8, &unk_3E450);
  sub_3C884();
  swift_endAccess();
  sub_56BC(&qword_55B50, &qword_55B38, &unk_3EB70);
  sub_3C8C4();
  (*(v4 + 8))(v3, v5);
  sub_56BC(&qword_55B58, &qword_55B30, &unk_3E4C0);
  sub_3D7F4();
  sub_3D794();
  sub_3D5E4();
  sub_3D7A4();
  (*(v16 + 8))(v1, v2);
  sub_3D7E4();
  v9 = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideRecentAppsOnExternalDisplay;
  v0[22] = OBJC_IVAR____TtC31MultitaskingAndGesturesSettings28MultiTaskingSectionViewModel__hideRecentAppsOnEmbeddedDisplay;
  v0[23] = v9;
  v10 = v0[18];
  v11 = sub_3D584();
  v0[24] = v11;
  v12 = swift_task_alloc();
  v0[25] = v12;
  *v12 = v0;
  v12[1] = sub_365E0;
  v13 = v0[17];

  return sub_1C864(v11, &protocol witness table for MainActor);
}

uint64_t sub_365E0(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 200);
  v9 = *v2;
  *(*v2 + 210) = a1;

  if (!v1)
  {
    v6 = v3[24];

    v7 = v3[20];
    v8 = v3[21];

    return _swift_task_switch(sub_366F8, v7, v8);
  }

  return result;
}

uint64_t sub_366F8()
{
  v1 = *(v0 + 210);
  if (v1 == 2)
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 112);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 48);
    (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 40);
    v10 = sub_32AC4();
    v11 = (v1 & 1) == 0;
    v12 = 176;
    if (v10)
    {
      v12 = 184;
    }

    v13 = *(v0 + v12);
    if (v10)
    {
      v14 = 209;
    }

    else
    {
      v14 = 208;
    }

    v15 = *(*(v0 + 40) + v13);
    *(v0 + v14) = v11;

    sub_3C8F4();

    v16 = *(v0 + 144);
    v17 = sub_3D584();
    *(v0 + 192) = v17;
    v18 = swift_task_alloc();
    *(v0 + 200) = v18;
    *v18 = v0;
    v18[1] = sub_365E0;
    v19 = *(v0 + 136);

    return sub_1C864(v17, &protocol witness table for MainActor);
  }
}

id sub_368F0()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v2 = Strong, v3 = sub_32AC4(), v2, (v3 & 1) != 0))
    {
      if (qword_55988 != -1)
      {
        swift_once();
      }

      v4 = *(qword_572C0 + OBJC_IVAR____TtC31MultitaskingAndGesturesSettings26MultiTaskingDisplayManager_externalDisplayInfo);
      if (v4 && ([v4 isMirrored] & 1) != 0)
      {
        goto LABEL_14;
      }

      result = MobileGestalt_get_current_device();
      if (!result)
      {
        __break(1u);
        goto LABEL_18;
      }

      v5 = result;
      deviceSupportsEnhancedMultitasking = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

      if ((deviceSupportsEnhancedMultitasking & 1) == 0)
      {
        result = MobileGestalt_get_current_device();
        if (result)
        {
          v7 = result;
          MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();

          goto LABEL_14;
        }

LABEL_18:
        __break(1u);
        return result;
      }
    }

    else
    {
      sub_371D4();
    }

LABEL_14:
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_3C8A4();
  }

  return result;
}

uint64_t type metadata accessor for MultiTaskingSectionViewModel()
{
  result = qword_56FB8;
  if (!qword_56FB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_36E10()
{
  sub_A260(319, &qword_56FC8);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_A260(319, &qword_55A10);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_A2AC(319, &qword_55D10, type metadata accessor for UIDeviceOrientation);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_A2AC(319, &qword_55D18, type metadata accessor for MultiTaskingDisplayManager);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_A260(319, &qword_56FD0);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

unint64_t sub_37060()
{
  result = qword_56FE0;
  if (!qword_56FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_56FE0);
  }

  return result;
}

uint64_t sub_370DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_3C894();

  *a2 = v5;
  return result;
}

uint64_t sub_3715C(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  v5 = v2;
  return sub_3C8A4();
}

id sub_371D4()
{
  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v1 = result;
  deviceSupportsEnhancedMultitasking = MobileGestalt_get_deviceSupportsEnhancedMultitasking();

  if ((deviceSupportsEnhancedMultitasking & 1) == 0)
  {
    result = MobileGestalt_get_current_device();
    if (result)
    {
      v3 = result;
      deviceSupportsSingleDisplayEnhancedMultitasking = MobileGestalt_get_deviceSupportsSingleDisplayEnhancedMultitasking();

      if (!deviceSupportsSingleDisplayEnhancedMultitasking)
      {
        goto LABEL_9;
      }

      goto LABEL_5;
    }

LABEL_22:
    __break(1u);
    return result;
  }

LABEL_5:
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v5 = qword_572E8;
  v6 = sub_3D4C4();
  LOBYTE(v5) = [v5 BOOLForKey:v6];

  if (v5)
  {
    return &dword_0 + 3;
  }

LABEL_9:
  if (qword_559A8 != -1)
  {
    swift_once();
  }

  v7 = qword_572E8;
  v8 = sub_3D4C4();
  v9 = [v7 objectForKey:v8];

  if (v9)
  {
    sub_3D674();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13[0] = v11;
  v13[1] = v12;
  if (!*(&v12 + 1))
  {
    sub_526C(v13);
    return &dword_0 + 2;
  }

  if (!swift_dynamicCast())
  {
    return &dword_0 + 2;
  }

  if (v10)
  {
    return &dword_0 + 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_373CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_3D3B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_3D3D4();
  v25 = *(v13 - 8);
  v14 = *(v25 + 64);
  result = __chkstk_darwin(v13, v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 24) && a2)
  {
    if (a1 == 0xD00000000000001BLL && 0x8000000000042A30 == a2 || (sub_3D804() & 1) != 0 || a1 == 0xD000000000000019 && 0x8000000000042A60 == a2 || (result = sub_3D804(), (result & 1) != 0))
    {
      sub_ACD0();
      v24 = sub_3D624();
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = ObjectType;
      aBlock[4] = sub_377F8;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_BFC0;
      aBlock[3] = &unk_53828;
      v21 = _Block_copy(aBlock);

      sub_3D3C4();
      v26 = _swiftEmptyArrayStorage;
      sub_ADAC(&qword_55D28, &type metadata accessor for DispatchWorkItemFlags);
      v23 = v13;
      sub_4FF4(&qword_55D30, &qword_3EF70);
      sub_56BC(&qword_55D38, &qword_55D30, &qword_3EF70);
      sub_3D694();
      v22 = v24;
      sub_3D634();
      _Block_release(v21);

      (*(v8 + 8))(v12, v7);
      (*(v25 + 8))(v18, v23);
    }
  }

  return result;
}

uint64_t sub_37788()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_377C0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_377F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_368F0();
}

uint64_t sub_37800(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_378D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_587C;

  return sub_33B54(a1, v4, v5, v6);
}

uint64_t sub_3798C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_5440;

  return sub_34634(a1, v4, v5, v7);
}

uint64_t sub_37A4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_587C;

  return sub_34F60(a1, v4, v5, v7);
}

uint64_t sub_37B0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_587C;

  return sub_3598C(a1, v4, v5, v6);
}

uint64_t sub_37BC0(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_37C0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_587C;

  return sub_3612C(a1, v4, v5, v6);
}

__n128 sub_37D74(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_37D88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_37DD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_37E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a4;
  v31 = a5;
  v9 = a4 >> 8;
  v10 = sub_4FF4(&qword_57048, &qword_41F28);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v30 - v14;
  v16 = sub_4FF4(&qword_559B0, &unk_41F30);
  (*(*(v16 - 8) + 16))(v15, a1, v16);
  v17 = &v15[*(sub_4FF4(&qword_559B8, &unk_3E360) + 36)];
  *v17 = v9;
  v17[1] = 1;
  v34 = a2;
  v35 = a3;
  v36 = v5;
  sub_4FF4(&qword_57050, &qword_41F40);
  sub_3D264();
  if (v32 == 10)
  {
    goto LABEL_2;
  }

  v20 = sub_C0B4(v32);
  v22 = v21;
  if (v20 == sub_C0B4(HIBYTE(v5)) && v22 == v23)
  {

LABEL_7:
    v19 = sub_3D0A4();
    goto LABEL_8;
  }

  v24 = sub_3D804();

  if (v24)
  {
    goto LABEL_7;
  }

LABEL_2:
  v18 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v19 = sub_3D114();
LABEL_8:
  v25 = v19;
  v26 = sub_3D354();
  v34 = a2;
  v35 = a3;
  v36 = v5;
  sub_3D264();
  v32 = v25;
  v33 = v26;
  sub_4FF4(&qword_57058, &qword_41F48);
  sub_38128();
  v27 = sub_3D254();
  v28 = v31;
  (*(v11 + 32))(v31, v15, v10);
  result = sub_4FF4(&qword_57078, &qword_41F58);
  *(v28 + *(result + 36)) = v27;
  return result;
}

unint64_t sub_38128()
{
  result = qword_57060;
  if (!qword_57060)
  {
    sub_5674(&qword_57058, &qword_41F48);
    sub_56BC(&qword_57068, &qword_57070, &qword_41F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_57060);
  }

  return result;
}

unint64_t sub_381E4()
{
  result = qword_57080;
  if (!qword_57080)
  {
    sub_5674(&qword_57078, &qword_41F58);
    sub_5674(&qword_559B0, &unk_41F30);
    sub_56BC(&qword_57088, &qword_559B0, &unk_41F30);
    sub_D2A4();
    swift_getOpaqueTypeConformance2();
    sub_56BC(&qword_57090, &qword_57098, &unk_41F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_57080);
  }

  return result;
}

__n128 sub_3832C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_38350(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_38398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_38420()
{
  v1 = sub_3CC54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v0 + 80);
  v7 = *(v0 + 72);
  v11 = v7;
  if (v12 != 1)
  {

    sub_3D604();
    v8 = sub_3CE74();
    sub_3C844();

    sub_3CC44();
    swift_getAtKeyPath();
    sub_11A14(&v11, &qword_57200, &unk_422E0);
    (*(v2 + 8))(v6, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_38580()
{
  v1 = *(v0 + 7);
  if (v1)
  {
    v2 = 0xEE00737070416E65;
    v3 = 0x657263536C6C7566;
    v4 = *v0;
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v1;
    sub_3C894();

    v6 = 0x6465776F646E6977;
    v7 = 0xEC00000073707041;
    if (v4 != 1)
    {
      v6 = 0x6E614D6567617473;
      v7 = 0xEC00000072656761;
    }

    if (v4)
    {
      v8 = v6;
    }

    else
    {
      v8 = 0x657263536C6C7566;
    }

    if (v4)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0xEE00737070416E65;
    }

    if (v13)
    {
      if (v13 != 1)
      {
        v2 = 0xEC00000072656761;
        if (v8 != 0x6E614D6567617473)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      v3 = 0x6465776F646E6977;
      v2 = 0xEC00000073707041;
    }

    if (v8 != v3)
    {
      goto LABEL_18;
    }

LABEL_16:
    if (v9 == v2)
    {
      v10 = 1;
LABEL_19:

      return v10 & 1;
    }

LABEL_18:
    v10 = sub_3D804();
    goto LABEL_19;
  }

  v12 = *(v0 + 8);
  type metadata accessor for MultitaskingWindowManagementViewModel();
  sub_3C044(&qword_56BC0, type metadata accessor for MultitaskingWindowManagementViewModel);
  result = sub_3CB34();
  __break(1u);
  return result;
}

uint64_t sub_38770@<X0>(uint64_t a1@<X8>)
{
  v23[1] = a1;
  v2 = sub_3CAE4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_4FF4(&qword_570A0, &qword_42080);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = v23 - v12;
  v23[0] = sub_4FF4(&qword_570A8, &qword_42088);
  v14 = *(*(v23[0] - 8) + 64);
  __chkstk_darwin(v23[0], v15);
  v17 = v23 - v16;
  v18 = swift_allocObject();
  v19 = *(v1 + 80);
  v18[5] = *(v1 + 64);
  v18[6] = v19;
  v18[7] = *(v1 + 96);
  v20 = *(v1 + 16);
  v18[1] = *v1;
  v18[2] = v20;
  v21 = *(v1 + 48);
  v18[3] = *(v1 + 32);
  v18[4] = v21;
  v24 = v1;
  sub_2C1C0(v1, &v25);
  sub_4FF4(&qword_570B0, &qword_42090);
  sub_3B870();
  sub_3D1D4();
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_3D6E4(45);

  v25 = 0xD00000000000002BLL;
  v26 = 0x8000000000043430;
  sub_3D534(*(v1 + 40));
  sub_56BC(&qword_570F0, &qword_570A0, &qword_42080);
  sub_3D074();

  (*(v9 + 8))(v13, v8);
  sub_3CAD4();
  sub_3B9D8();
  sub_3C044(&qword_56440, &type metadata accessor for PlainButtonStyle);
  sub_3D014();
  (*(v3 + 8))(v7, v2);
  return sub_11A14(v17, &qword_570A8, &qword_42088);
}

uint64_t sub_38AEC(char *a1)
{
  v1 = *(a1 + 7);
  if (v1)
  {
    v2 = *a1;
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    return sub_3C8A4();
  }

  else
  {
    v5 = *(a1 + 8);
    type metadata accessor for MultitaskingWindowManagementViewModel();
    sub_3C044(&qword_56BC0, type metadata accessor for MultitaskingWindowManagementViewModel);
    result = sub_3CB34();
    __break(1u);
  }

  return result;
}

uint64_t sub_38BBC(char *a1)
{
  v2 = sub_4FF4(&qword_570E8, &qword_420A8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2, v4);
  v6 = &v23 - v5;
  v7 = sub_4FF4(&qword_57100, &qword_420B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7, v9);
  v11 = &v23 - v10;
  v12 = sub_4FF4(&qword_570D8, &qword_420A0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v23 - v15;
  if (sub_38420())
  {
    *v6 = sub_3CC84();
    *(v6 + 1) = 0x4024000000000000;
    v6[16] = 0;
    v17 = sub_4FF4(&qword_57108, &qword_420B8);
    sub_3A51C(a1, &v6[*(v17 + 44)]);
    sub_E1E8(v6, v11, &qword_570E8, &qword_420A8);
    swift_storeEnumTagMultiPayload();
    sub_56BC(&qword_570D0, &qword_570D8, &qword_420A0);
    sub_56BC(&qword_570E0, &qword_570E8, &qword_420A8);
    sub_3CDB4();
    v18 = v6;
    v19 = &qword_570E8;
    v20 = &qword_420A8;
  }

  else
  {
    *v16 = sub_3CCE4();
    *(v16 + 1) = 0x4024000000000000;
    v16[16] = 0;
    v21 = sub_4FF4(&qword_57110, &qword_420C0);
    sub_38EE4(a1, &v16[*(v21 + 44)]);
    sub_E1E8(v16, v11, &qword_570D8, &qword_420A0);
    swift_storeEnumTagMultiPayload();
    sub_56BC(&qword_570D0, &qword_570D8, &qword_420A0);
    sub_56BC(&qword_570E0, &qword_570E8, &qword_420A8);
    sub_3CDB4();
    v18 = v16;
    v19 = &qword_570D8;
    v20 = &qword_420A0;
  }

  return sub_11A14(v18, v19, v20);
}

uint64_t sub_38EE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v67 = sub_4FF4(&qword_57118, &qword_420C8);
  v66 = *(v67 - 8);
  v3 = *(v66 + 64);
  __chkstk_darwin(v67, v4);
  v63 = &v63 - v5;
  v64 = sub_4FF4(&qword_57120, &qword_420D0);
  v6 = *(*(v64 - 8) + 64);
  v8 = __chkstk_darwin(v64, v7);
  v71 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8, v10);
  v65 = &v63 - v12;
  __chkstk_darwin(v11, v13);
  v70 = &v63 - v14;
  v15 = sub_4FF4(&qword_57128, &qword_420D8);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15 - 8, v17);
  v69 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v22 = &v63 - v21;
  v23 = type metadata accessor for MultitaskingWindowManagementChoicePackage();
  v24 = (v23 - 8);
  v25 = *(*(v23 - 8) + 64);
  v27 = __chkstk_darwin(v23, v26);
  v68 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v29);
  v31 = &v63 - v30;
  v32 = *a1;
  v33 = sub_38580();
  v81 = *(a1 + 88);
  v82 = *(a1 + 104);
  v83 = *(a1 + 88);
  *&v84 = *(a1 + 104);
  sub_4FF4(&qword_57130, &qword_420E0);
  sub_3D1B4();
  v34 = v74;
  v35 = v75;
  v36 = v24[8];
  *&v31[v36] = swift_getKeyPath();
  sub_4FF4(&qword_569D0, &qword_409C8);
  swift_storeEnumTagMultiPayload();
  v37 = v24[9];
  *&v31[v37] = swift_getKeyPath();
  sub_4FF4(&qword_569D8, &qword_409D0);
  v38 = v22;
  swift_storeEnumTagMultiPayload();
  *v31 = v32;
  v31[1] = v33 & 1;
  v39 = &v31[v24[11]];
  *v39 = v34;
  *(v39 + 1) = v35;
  v40 = swift_allocObject();
  *(v40 + 16) = v32;
  v41 = &v31[v24[10]];
  *v41 = sub_3BB88;
  *(v41 + 1) = v40;
  v41[16] = 0;
  *v22 = sub_3CCA4();
  *(v22 + 1) = 0;
  v22[16] = 1;
  v42 = sub_4FF4(&qword_57138, &qword_42158);
  sub_39680(a1, &v22[*(v42 + 44)]);
  sub_3B538(a1, &v74);
  v43 = v74;
  v44 = v75;
  v45 = *(&v75 + 1);
  KeyPath = swift_getKeyPath();
  v47 = sub_3CEF4();
  v48 = swift_getKeyPath();
  v73 = v44;
  v74 = v43;
  LOBYTE(v75) = v44;
  *(&v75 + 1) = v45;
  v49 = v63;
  *&v76 = KeyPath;
  BYTE8(v76) = 0;
  *&v77 = v48;
  *(&v77 + 1) = v47;
  sub_3CED4();
  sub_4FF4(&qword_57140, &qword_421C0);
  sub_3BC70();
  sub_3D004();
  v83 = v74;
  v84 = v75;
  v85 = v76;
  v86 = v77;
  sub_11A14(&v83, &qword_57140, &qword_421C0);
  v74 = v81;
  *&v75 = v82;
  sub_3D194();
  sub_3D334();
  sub_3CB14();
  v50 = v65;
  (*(v66 + 32))(v65, v49, v67);
  v51 = (v50 + *(v64 + 36));
  v52 = v79;
  v51[4] = v78;
  v51[5] = v52;
  v51[6] = v80;
  v53 = v75;
  *v51 = v74;
  v51[1] = v53;
  v54 = v77;
  v51[2] = v76;
  v51[3] = v54;
  v55 = v70;
  sub_3BE5C(v50, v70);
  v56 = v68;
  sub_3BECC(v31, v68);
  v57 = v69;
  sub_E1E8(v38, v69, &qword_57128, &qword_420D8);
  v58 = v38;
  v59 = v71;
  sub_E1E8(v55, v71, &qword_57120, &qword_420D0);
  v60 = v72;
  sub_3BECC(v56, v72);
  v61 = sub_4FF4(&qword_57170, &qword_421D8);
  sub_E1E8(v57, v60 + *(v61 + 48), &qword_57128, &qword_420D8);
  sub_E1E8(v59, v60 + *(v61 + 64), &qword_57120, &qword_420D0);
  sub_11A14(v55, &qword_57120, &qword_420D0);
  sub_11A14(v58, &qword_57128, &qword_420D8);
  sub_3BF30(v31);
  sub_11A14(v59, &qword_57120, &qword_420D0);
  sub_11A14(v57, &qword_57128, &qword_420D8);
  return sub_3BF30(v56);
}

uint64_t sub_39680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v86 = sub_4FF4(&qword_57180, &qword_421E0);
  v3 = *(*(v86 - 8) + 64);
  v5 = __chkstk_darwin(v86, v4);
  v89 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7);
  v87 = &v76 - v8;
  v82 = sub_3D3A4();
  v80 = *(v82 - 8);
  v9 = *(v80 + 64);
  __chkstk_darwin(v82, v10);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_3D384();
  v79 = *(v78 - 8);
  v13 = *(v79 + 64);
  __chkstk_darwin(v78, v14);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_4FF4(&qword_57188, &qword_421E8);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17, v20);
  v22 = (&v76 - v21);
  v23 = sub_4FF4(&qword_57190, &qword_421F0);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23, v26);
  v77 = &v76 - v27;
  v83 = sub_4FF4(&qword_57198, &qword_421F8);
  v28 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83, v29);
  v31 = &v76 - v30;
  v81 = sub_4FF4(&qword_571A0, &qword_42200);
  v32 = *(*(v81 - 8) + 64);
  v34 = __chkstk_darwin(v81, v33);
  v85 = &v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v34, v36);
  v39 = &v76 - v38;
  __chkstk_darwin(v37, v40);
  v84 = &v76 - v41;
  sub_38580();
  v42 = sub_3D144();
  sub_3D374();
  sub_3D394();
  v43 = (v22 + *(v18 + 44));
  v44 = *(sub_4FF4(&qword_571A8, &qword_42208) + 28);
  sub_3C044(&qword_571B0, &type metadata accessor for ReplaceSymbolEffect);
  v45 = v78;
  sub_3CB24();
  (*(v80 + 8))(v12, v82);
  (*(v79 + 8))(v16, v45);
  *v43 = swift_getKeyPath();
  v46 = v77;
  *v22 = v42;
  v47 = sub_3CF04();
  KeyPath = swift_getKeyPath();
  sub_17214(v22, v46, &qword_57188, &qword_421E8);
  v49 = (v46 + *(v24 + 44));
  *v49 = KeyPath;
  v49[1] = v47;
  if (sub_38580())
  {
    v50 = sub_3D0B4();
  }

  else
  {
    v51 = [objc_opt_self() tertiaryLabelColor];
    v50 = sub_3D114();
  }

  v52 = v50;
  sub_17214(v46, v31, &qword_57190, &qword_421F0);
  *&v31[*(v83 + 36)] = v52;
  sub_17214(v31, v39, &qword_57198, &qword_421F8);
  *&v39[*(v81 + 36)] = 256;
  v53 = v84;
  sub_17214(v39, v84, &qword_571A0, &qword_42200);
  v54 = *(a1 + 8);
  v55 = *(a1 + 16);
  v56 = *(a1 + 24);
  v57 = *(a1 + 32);
  v58 = qword_55980;

  if (v58 != -1)
  {
    swift_once();
  }

  v59 = qword_572B8;
  v60 = sub_3CF84();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = swift_getKeyPath();
  v68 = sub_3CF04();
  v69 = swift_getKeyPath();
  v94 = v64 & 1;
  *&v90 = v60;
  *(&v90 + 1) = v62;
  LOBYTE(v91) = v64 & 1;
  *(&v91 + 1) = v66;
  *&v92 = v67;
  BYTE8(v92) = 0;
  *&v93 = v69;
  *(&v93 + 1) = v68;
  sub_3CED4();
  sub_4FF4(&qword_564C8, &unk_42240);
  sub_16F8C();
  v70 = v87;
  sub_3D004();
  v95[0] = v90;
  v95[1] = v91;
  v95[2] = v92;
  v95[3] = v93;
  sub_11A14(v95, &qword_564C8, &unk_42240);
  *(v70 + *(v86 + 36)) = sub_3CE04();
  v71 = v85;
  sub_E1E8(v53, v85, &qword_571A0, &qword_42200);
  v72 = v89;
  sub_E1E8(v70, v89, &qword_57180, &qword_421E0);
  v73 = v88;
  sub_E1E8(v71, v88, &qword_571A0, &qword_42200);
  v74 = sub_4FF4(&qword_571B8, &qword_42250);
  sub_E1E8(v72, v73 + *(v74 + 48), &qword_57180, &qword_421E0);
  sub_11A14(v70, &qword_57180, &qword_421E0);
  sub_11A14(v53, &qword_571A0, &qword_42200);
  sub_11A14(v72, &qword_57180, &qword_421E0);
  return sub_11A14(v71, &qword_571A0, &qword_42200);
}

uint64_t sub_39E54()
{
  v1 = sub_3C6F4();
  v63 = *(v1 - 8);
  v64 = v1;
  v2 = *(v63 + 64);
  __chkstk_darwin(v1, v3);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_3C704();
  v6 = *(v62 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v62, v8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3C724();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v14 = sub_4FF4(&qword_56188, &qword_3F650);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8, v16);
  v18 = &v59 - v17;
  v19 = sub_4FF4(&qword_56AD0, &qword_40BE8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8, v21);
  v23 = &v59 - v22;
  v24 = sub_3C744();
  v65 = *(v24 - 8);
  v66 = v24;
  v25 = *(v65 + 64);
  v27 = __chkstk_darwin(v24, v26);
  v60 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v29);
  v61 = &v59 - v30;
  v31 = sub_3C7E4();
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8, v33);
  v34 = sub_3D4B4();
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8, v36);
  v37 = *v0;
  sub_3D4A4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v38 = qword_572B8;
  sub_3C7D4();
  v39._countAndFlagsBits = sub_3D504();
  if (v37 == 2)
  {
    v67 = 23328;
    v68 = 0xE200000000000000;
    sub_3D534(v39);

    v69._countAndFlagsBits = 10333;
    v69._object = 0xE200000000000000;
    sub_3D534(v69);
    v70._object = 0x8000000000043B50;
    v70._countAndFlagsBits = 0xD000000000000059;
    sub_3D534(v70);
    v71._countAndFlagsBits = 41;
    v71._object = 0xE100000000000000;
    sub_3D534(v71);
    v40 = sub_3C7C4();
    (*(*(v40 - 8) + 56))(v18, 1, 1, v40);
    (*(v6 + 104))(v10, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v62);
    (*(v63 + 104))(v5, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v64);
    sub_3C714();
    sub_3C734();
    v42 = v65;
    v41 = v66;
    (*(v65 + 56))(v23, 0, 1, v66);
    v43 = v61;
    (*(v42 + 32))(v61, v23, v41);
    sub_3CCB4();
    v44 = sub_3CF84();
    v46 = v45;
    v48 = v47;
    (*(v42 + 16))(v60, v43, v41);
    v49 = sub_3CF94();
    v51 = v50;
    v53 = v52;
    v54 = sub_3CF44();
    v63 = v55;
    v64 = v54;
    LODWORD(v62) = v56;
    v60 = v57;
    sub_BAF8(v49, v51, v53 & 1);

    sub_BAF8(v44, v46, v48 & 1);

    (*(v42 + 8))(v61, v41);
    return v64;
  }

  else
  {

    sub_3CCB4();
    return sub_3CF84();
  }
}

uint64_t sub_3A51C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_4FF4(&qword_571C0, &qword_422A0);
  v5 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4 - 8, v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v26 - v11;
  v13 = sub_4FF4(&qword_571C8, &qword_422A8);
  v14 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13 - 8, v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v21 = &v26 - v20;
  *v21 = sub_3CCA4();
  *(v21 + 1) = 0x4024000000000000;
  v21[16] = 0;
  v22 = sub_4FF4(&qword_571D0, &qword_422B0);
  sub_3A764(a1, &v21[*(v22 + 44)]);
  *v12 = sub_3CCE4();
  *(v12 + 1) = 0x4014000000000000;
  v12[16] = 0;
  v23 = sub_4FF4(&qword_571D8, &qword_422B8);
  sub_3B030(a1, &v12[*(v23 + 44)]);
  sub_E1E8(v21, v18, &qword_571C8, &qword_422A8);
  sub_E1E8(v12, v9, &qword_571C0, &qword_422A0);
  sub_E1E8(v18, a2, &qword_571C8, &qword_422A8);
  v24 = sub_4FF4(&qword_571E0, &qword_422C0);
  sub_E1E8(v9, a2 + *(v24 + 48), &qword_571C0, &qword_422A0);
  sub_11A14(v12, &qword_571C0, &qword_422A0);
  sub_11A14(v21, &qword_571C8, &qword_422A8);
  sub_11A14(v9, &qword_571C0, &qword_422A0);
  return sub_11A14(v18, &qword_571C8, &qword_422A8);
}

uint64_t sub_3A764@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v94 = type metadata accessor for MultitaskingWindowManagementChoicePackage();
  v3 = *(*(v94 - 8) + 64);
  __chkstk_darwin(v94, v4);
  v97 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_4FF4(&qword_571F0, &qword_422D0);
  v6 = *(*(v95 - 8) + 64);
  v8 = __chkstk_darwin(v95, v7);
  v99 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8, v10);
  v96 = &v85 - v12;
  __chkstk_darwin(v11, v13);
  v98 = &v85 - v14;
  v90 = sub_3D3A4();
  v89 = *(v90 - 8);
  v15 = *(v89 + 64);
  __chkstk_darwin(v90, v16);
  v18 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_3D384();
  v86 = *(v85 - 8);
  v19 = *(v86 + 64);
  __chkstk_darwin(v85, v20);
  v22 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_4FF4(&qword_57188, &qword_421E8);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23, v26);
  v28 = (&v85 - v27);
  v29 = sub_4FF4(&qword_57190, &qword_421F0);
  v30 = v29 - 8;
  v31 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29, v32);
  v34 = &v85 - v33;
  v91 = sub_4FF4(&qword_57198, &qword_421F8);
  v35 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91, v36);
  v87 = &v85 - v37;
  v88 = sub_4FF4(&qword_571A0, &qword_42200);
  v38 = *(*(v88 - 8) + 64);
  v40 = __chkstk_darwin(v88, v39);
  v93 = &v85 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v40, v42);
  v45 = &v85 - v44;
  __chkstk_darwin(v43, v46);
  v92 = &v85 - v47;
  sub_38580();
  v48 = sub_3D144();
  sub_3D374();
  sub_3D394();
  v49 = (v28 + *(v24 + 44));
  v50 = *(sub_4FF4(&qword_571A8, &qword_42208) + 28);
  sub_3C044(&qword_571B0, &type metadata accessor for ReplaceSymbolEffect);
  v51 = v34;
  v52 = v85;
  sub_3CB24();
  (*(v89 + 8))(v18, v90);
  (*(v86 + 8))(v22, v52);
  *v49 = swift_getKeyPath();
  *v28 = v48;
  v53 = sub_3CF04();
  KeyPath = swift_getKeyPath();
  sub_17214(v28, v51, &qword_57188, &qword_421E8);
  v55 = (v51 + *(v30 + 44));
  *v55 = KeyPath;
  v55[1] = v53;
  if (sub_38580())
  {
    v56 = sub_3D0B4();
  }

  else
  {
    v57 = [objc_opt_self() tertiaryLabelColor];
    v56 = sub_3D114();
  }

  v58 = v56;
  v59 = v51;
  v60 = v87;
  sub_17214(v59, v87, &qword_57190, &qword_421F0);
  *(v60 + *(v91 + 36)) = v58;
  sub_17214(v60, v45, &qword_57198, &qword_421F8);
  *&v45[*(v88 + 36)] = 256;
  v61 = v45;
  v62 = v92;
  sub_17214(v61, v92, &qword_571A0, &qword_42200);
  v63 = *a1;
  LOBYTE(v58) = sub_38580();
  v101 = *(a1 + 88);
  v102 = *(a1 + 13);
  sub_4FF4(&qword_57130, &qword_420E0);
  sub_3D1B4();
  v64 = v103;
  v65 = v104;
  v66 = v94;
  v67 = *(v94 + 24);
  v68 = swift_getKeyPath();
  v69 = v97;
  *&v97[v67] = v68;
  sub_4FF4(&qword_569D0, &qword_409C8);
  swift_storeEnumTagMultiPayload();
  v70 = v66[7];
  *&v69[v70] = swift_getKeyPath();
  sub_4FF4(&qword_569D8, &qword_409D0);
  swift_storeEnumTagMultiPayload();
  *v69 = v63;
  v69[1] = v58 & 1;
  v71 = &v69[v66[9]];
  *v71 = v64;
  v71[1] = v65;
  v72 = swift_allocObject();
  *(v72 + 16) = v63;
  v73 = &v69[v66[8]];
  *v73 = sub_3C15C;
  *(v73 + 1) = v72;
  v73[16] = 0;
  sub_3D324();
  sub_3CB14();
  v74 = v96;
  sub_22FC4(v69, v96);
  v75 = (v74 + *(v95 + 36));
  v76 = v108;
  v75[4] = v107;
  v75[5] = v76;
  v75[6] = v109;
  v77 = v104;
  *v75 = v103;
  v75[1] = v77;
  v78 = v106;
  v75[2] = v105;
  v75[3] = v78;
  v79 = v98;
  sub_17214(v74, v98, &qword_571F0, &qword_422D0);
  v80 = v93;
  sub_E1E8(v62, v93, &qword_571A0, &qword_42200);
  v81 = v99;
  sub_E1E8(v79, v99, &qword_571F0, &qword_422D0);
  v82 = v100;
  sub_E1E8(v80, v100, &qword_571A0, &qword_42200);
  v83 = sub_4FF4(&qword_571F8, &qword_422D8);
  sub_E1E8(v81, v82 + *(v83 + 48), &qword_571F0, &qword_422D0);
  sub_11A14(v79, &qword_571F0, &qword_422D0);
  sub_11A14(v62, &qword_571A0, &qword_42200);
  sub_11A14(v81, &qword_571F0, &qword_422D0);
  return sub_11A14(v80, &qword_571A0, &qword_42200);
}

uint64_t sub_3B030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v53 = sub_4FF4(&qword_57118, &qword_420C8);
  v52 = *(v53 - 8);
  v3 = *(v52 + 64);
  v5 = __chkstk_darwin(v53, v4);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7);
  v50 = &v49 - v8;
  v9 = sub_4FF4(&qword_57180, &qword_421E0);
  v10 = *(*(v9 - 8) + 64);
  v12 = __chkstk_darwin(v9, v11);
  v51 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v14);
  v16 = &v49 - v15;
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  v20 = *(a1 + 32);
  v21 = qword_55980;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_572B8;
  v23 = sub_3CF84();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  KeyPath = swift_getKeyPath();
  v31 = sub_3CF04();
  v32 = swift_getKeyPath();
  LOBYTE(v56) = v27 & 1;
  *&v62 = v23;
  *(&v62 + 1) = v25;
  LOBYTE(v63) = v27 & 1;
  *(&v63 + 1) = v29;
  *&v64 = KeyPath;
  BYTE8(v64) = 0;
  *&v65 = v32;
  *(&v65 + 1) = v31;
  sub_3CED4();
  sub_4FF4(&qword_564C8, &unk_42240);
  sub_16F8C();
  sub_3D004();
  v61[0] = v62;
  v61[1] = v63;
  v61[2] = v64;
  v61[3] = v65;
  sub_11A14(v61, &qword_564C8, &unk_42240);
  *&v16[*(v9 + 36)] = sub_3CE04();
  v49 = v16;
  sub_3B538(a1, &v62);
  v33 = v62;
  LOBYTE(v31) = v63;
  v34 = *(&v63 + 1);
  v35 = swift_getKeyPath();
  v36 = sub_3CEF4();
  v37 = swift_getKeyPath();
  v60 = v31;
  v56 = v33;
  LOBYTE(v57) = v31;
  *(&v57 + 1) = v34;
  *&v58 = v35;
  BYTE8(v58) = 0;
  *&v59 = v37;
  *(&v59 + 1) = v36;
  sub_3CED4();
  sub_4FF4(&qword_57140, &qword_421C0);
  sub_3BC70();
  v38 = v50;
  sub_3D004();
  v62 = v56;
  v63 = v57;
  v64 = v58;
  v65 = v59;
  sub_11A14(&v62, &qword_57140, &qword_421C0);
  v39 = v51;
  sub_E1E8(v16, v51, &qword_57180, &qword_421E0);
  v40 = v52;
  v41 = *(v52 + 16);
  v42 = v54;
  v43 = v53;
  v41(v54, v38, v53);
  v44 = v55;
  sub_E1E8(v39, v55, &qword_57180, &qword_421E0);
  v45 = sub_4FF4(&qword_571E8, &qword_422C8);
  v41((v44 + *(v45 + 48)), v42, v43);
  v46 = v44 + *(v45 + 64);
  *v46 = 0;
  *(v46 + 8) = 1;
  v47 = *(v40 + 8);
  v47(v38, v43);
  sub_11A14(v49, &qword_57180, &qword_421E0);
  v47(v42, v43);
  return sub_11A14(v39, &qword_57180, &qword_421E0);
}

uint64_t sub_3B538@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a1;
  sub_3CCB4();
  if (qword_55980 != -1)
  {
    swift_once();
  }

  v2 = qword_572B8;
  v3 = sub_3CF84();
  v5 = v4;
  v7 = v6;
  sub_3CE14();
  v8 = sub_3CF34();
  v28 = v9;
  v27 = v10;
  sub_BAF8(v3, v5, v7 & 1);

  v11 = sub_39E54();
  v13 = v12;
  LOBYTE(v5) = v14;
  sub_3CA64();
  sub_3BF8C();
  v15 = sub_3CF34();
  v17 = v16;
  v19 = v18;
  sub_BAF8(v11, v13, v5 & 1);

  v20 = sub_3CF44();
  v22 = v21;
  LOBYTE(v5) = v23;
  v26 = v24;
  sub_BAF8(v15, v17, v19 & 1);

  sub_BAF8(v8, v28, v27 & 1);

  *a2 = v20;
  *(a2 + 8) = v22;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v26;
  return result;
}

uint64_t sub_3B7A4@<X0>(uint64_t a1@<X8>)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_38770(a1);
}

uint64_t sub_3B7F0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  sub_3B854(*(v0 + 88), *(v0 + 96));
  v4 = *(v0 + 120);

  return _swift_deallocObject(v0, 128, 7);
}

uint64_t sub_3B854(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_3B870()
{
  result = qword_570B8;
  if (!qword_570B8)
  {
    sub_5674(&qword_570B0, &qword_42090);
    sub_3B8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_570B8);
  }

  return result;
}

unint64_t sub_3B8F4()
{
  result = qword_570C0;
  if (!qword_570C0)
  {
    sub_5674(&qword_570C8, &qword_42098);
    sub_56BC(&qword_570D0, &qword_570D8, &qword_420A0);
    sub_56BC(&qword_570E0, &qword_570E8, &qword_420A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_570C0);
  }

  return result;
}

unint64_t sub_3B9D8()
{
  result = qword_570F8;
  if (!qword_570F8)
  {
    sub_5674(&qword_570A8, &qword_42088);
    sub_56BC(&qword_570F0, &qword_570A0, &qword_42080);
    sub_3C044(&qword_55DE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_570F8);
  }

  return result;
}

uint64_t sub_3BB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8, v10);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1);
  return a6(v12);
}

unint64_t sub_3BC70()
{
  result = qword_57148;
  if (!qword_57148)
  {
    sub_5674(&qword_57140, &qword_421C0);
    sub_3BD28();
    sub_56BC(&qword_564F8, &qword_56500, &qword_3FE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_57148);
  }

  return result;
}

unint64_t sub_3BD28()
{
  result = qword_57150;
  if (!qword_57150)
  {
    sub_5674(&qword_57158, &qword_421C8);
    sub_3BDE0();
    sub_56BC(&qword_564E8, &qword_564F0, &qword_3FE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_57150);
  }

  return result;
}

unint64_t sub_3BDE0()
{
  result = qword_57160;
  if (!qword_57160)
  {
    sub_5674(&qword_57168, &qword_421D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_57160);
  }

  return result;
}

uint64_t sub_3BE5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4FF4(&qword_57120, &qword_420D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_3BECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultitaskingWindowManagementChoicePackage();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3BF30(uint64_t a1)
{
  v2 = type metadata accessor for MultitaskingWindowManagementChoicePackage();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_3BF8C()
{
  result = qword_57178;
  if (!qword_57178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_57178);
  }

  return result;
}

uint64_t sub_3C044(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3C0A4()
{
  sub_5674(&qword_570A8, &qword_42088);
  sub_3CAE4();
  sub_3B9D8();
  sub_3C044(&qword_56440, &type metadata accessor for PlainButtonStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_3C18C(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_59D60 == -1)
  {
    if (qword_59D68)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_3C654();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_59D68)
    {
      return _availability_version_check();
    }
  }

  if (qword_59D58 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_3C66C();
    a3 = v10;
    a4 = v9;
    v8 = dword_59D48 < v11;
    if (dword_59D48 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_59D4C > a3)
      {
        return 1;
      }

      if (dword_59D4C >= a3)
      {
        return dword_59D50 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_59D48 < a2;
  if (dword_59D48 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_3C320(uint64_t result)
{
  v1 = qword_59D68;
  if (qword_59D68)
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
      qword_59D68 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_59D48, &dword_59D4C, &dword_59D50);
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