uint64_t sub_1E1B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v68 = a4;
  v65 = a3;
  v71 = a2;
  v66 = a1;
  v5 = sub_D5340();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = __chkstk_darwin(v5);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v57 - v11;
  v13 = sub_D5030();
  v69 = *(v13 - 8);
  v70 = v13;
  v14 = *(v69 + 64);
  v15 = __chkstk_darwin(v13);
  v63 = v16;
  v64 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v67 = &v57 - v17;
  sub_D5020();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v18 = sub_6610(v5, qword_137988);
  v61 = v6[2];
  v62 = v18;
  v61(v12);
  v19 = v4;
  v20 = sub_D5320();
  v21 = sub_D68A0();

  if (os_log_type_enabled(v20, v21))
  {
    v59 = v10;
    v22 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    aBlock[0] = v58;
    *v22 = 136315394;
    v23 = (*(&stru_B8.flags + (swift_isaMask & *v19)))();
    v60 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_558F0(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_D65F0();
    v32 = v31;

    v33 = sub_558F0(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_0, v20, v21, "%s %s", v22, 0x16u);
    swift_arrayDestroy();

    v6 = v24;
    v27 = v24[1];
    v5 = v60;
    v27(v12, v60);
    v10 = v59;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v61)(v10, v62, v5);
  v34 = v19;
  v35 = sub_D5320();
  v36 = v10;
  v37 = sub_D68A0();

  if (os_log_type_enabled(v35, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    aBlock[0] = v39;
    *v38 = 136315138;
    v61 = v6;
    v40 = *(v34 + qword_126760);
    v41 = *(v34 + qword_126760 + 8);

    v42 = sub_558F0(v40, v41, aBlock);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_0, v35, v37, "X-Apple-Request-UUID: %s", v38, 0xCu);
    sub_67D4(v39);
  }

  v27(v36, v5);
  v62 = v34;
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = v69;
  v44 = v70;
  v46 = v64;
  v47 = v67;
  (*(v69 + 16))(v64, v67, v70);
  v48 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v49 = v48 + v63;
  v50 = (((v48 + v63) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v43;
  (*(v45 + 32))(v51 + v48, v46, v44);
  *(v51 + v49) = v65 & 1;
  v52 = v51 + (v49 & 0xFFFFFFFFFFFFFFF8);
  v53 = v71;
  *(v52 + 8) = v66;
  *(v52 + 16) = v53;
  *(v51 + v50) = v68;
  aBlock[4] = sub_26B64;
  aBlock[5] = v51;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24540;
  aBlock[3] = &unk_1156D8;
  v54 = _Block_copy(aBlock);

  v55 = sub_66D4(&qword_122510, &qword_DA628);
  v72.receiver = v62;
  v72.super_class = v55;
  objc_msgSendSuper2(&v72, "performRequestWithHandler:", v54);
  _Block_release(v54);
  return (*(v45 + 8))(v47, v44);
}

uint64_t sub_1E894()
{
  v1 = sub_66D4(&qword_122398, &qword_DA4C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v18 - v3;
  v5 = sub_66D4(&qword_1225A0, &qword_DA690);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  *(swift_allocObject() + 16) = v0;
  v10 = sub_66D4(&qword_1225A8, &qword_DA698);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v0;
  v18[1] = sub_D5520();
  sub_26338();
  v14 = sub_D6900();
  v18[0] = v14;
  v15 = sub_D68F0();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_109A8(&qword_1225B0, &qword_1225A8, &qword_DA698);
  sub_26458(&qword_1223C0, sub_26338);
  sub_D55E0();
  sub_FC3C(v4, &qword_122398, &qword_DA4C0);

  sub_109A8(&qword_1225B8, &qword_1225A0, &qword_DA690);
  v16 = sub_D55A0();
  (*(v6 + 8))(v9, v5);
  return v16;
}

uint64_t sub_1EB80()
{
  v1 = sub_66D4(&qword_122398, &qword_DA4C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v18 - v3;
  v5 = sub_66D4(&qword_122480, &qword_DA5C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  *(swift_allocObject() + 16) = v0;
  v10 = sub_66D4(&qword_122488, &qword_DA5D0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v0;
  v18[1] = sub_D5520();
  sub_26338();
  v14 = sub_D6900();
  v18[0] = v14;
  v15 = sub_D68F0();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_109A8(&qword_122490, &qword_122488, &qword_DA5D0);
  sub_26458(&qword_1223C0, sub_26338);
  sub_D55E0();
  sub_FC3C(v4, &qword_122398, &qword_DA4C0);

  sub_109A8(&qword_122498, &qword_122480, &qword_DA5C8);
  v16 = sub_D55A0();
  (*(v6 + 8))(v9, v5);
  return v16;
}

uint64_t sub_1EE6C()
{
  v1 = sub_66D4(&qword_122398, &qword_DA4C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v18 - v3;
  v5 = sub_66D4(&qword_1223A0, &qword_DA4C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  *(swift_allocObject() + 16) = v0;
  v10 = sub_66D4(&qword_1223A8, &qword_DA4D0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v0;
  v18[1] = sub_D5520();
  sub_26338();
  v14 = sub_D6900();
  v18[0] = v14;
  v15 = sub_D68F0();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_109A8(&qword_1223B8, &qword_1223A8, &qword_DA4D0);
  sub_26458(&qword_1223C0, sub_26338);
  sub_D55E0();
  sub_FC3C(v4, &qword_122398, &qword_DA4C0);

  sub_109A8(&qword_1223C8, &qword_1223A0, &qword_DA4C8);
  v16 = sub_D55A0();
  (*(v6 + 8))(v9, v5);
  return v16;
}

uint64_t sub_1F158()
{
  v1 = sub_66D4(&qword_122398, &qword_DA4C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v18 - v3;
  v5 = sub_66D4(&qword_122568, &qword_DA668);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  *(swift_allocObject() + 16) = v0;
  v10 = sub_66D4(&qword_122570, &qword_DA670);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v0;
  v18[1] = sub_D5520();
  sub_26338();
  v14 = sub_D6900();
  v18[0] = v14;
  v15 = sub_D68F0();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_109A8(&qword_122578, &qword_122570, &qword_DA670);
  sub_26458(&qword_1223C0, sub_26338);
  sub_D55E0();
  sub_FC3C(v4, &qword_122398, &qword_DA4C0);

  sub_109A8(&qword_122580, &qword_122568, &qword_DA668);
  v16 = sub_D55A0();
  (*(v6 + 8))(v9, v5);
  return v16;
}

uint64_t sub_1F444()
{
  v1 = sub_66D4(&qword_122398, &qword_DA4C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v18 - v3;
  v5 = sub_66D4(&qword_122420, &qword_DA590);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  *(swift_allocObject() + 16) = v0;
  v10 = sub_66D4(&qword_122428, &qword_DA598);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v0;
  v18[1] = sub_D5520();
  sub_26338();
  v14 = sub_D6900();
  v18[0] = v14;
  v15 = sub_D68F0();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_109A8(&qword_122430, &qword_122428, &qword_DA598);
  sub_26458(&qword_1223C0, sub_26338);
  sub_D55E0();
  sub_FC3C(v4, &qword_122398, &qword_DA4C0);

  sub_109A8(&qword_122438, &qword_122420, &qword_DA590);
  v16 = sub_D55A0();
  (*(v6 + 8))(v9, v5);
  return v16;
}

uint64_t sub_1F730()
{
  v1 = sub_66D4(&qword_122398, &qword_DA4C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v18 - v3;
  v5 = sub_66D4(&qword_122450, &qword_DA5A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  *(swift_allocObject() + 16) = v0;
  v10 = sub_66D4(&qword_122458, &qword_DA5B0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v0;
  v18[1] = sub_D5520();
  sub_26338();
  v14 = sub_D6900();
  v18[0] = v14;
  v15 = sub_D68F0();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_109A8(&qword_122460, &qword_122458, &qword_DA5B0);
  sub_26458(&qword_1223C0, sub_26338);
  sub_D55E0();
  sub_FC3C(v4, &qword_122398, &qword_DA4C0);

  sub_109A8(&qword_122468, &qword_122450, &qword_DA5A8);
  v16 = sub_D55A0();
  (*(v6 + 8))(v9, v5);
  return v16;
}

uint64_t sub_1FA1C()
{
  v1 = sub_66D4(&qword_122398, &qword_DA4C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v18 - v3;
  v5 = sub_66D4(&qword_1225D0, &qword_DA6A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  *(swift_allocObject() + 16) = v0;
  v10 = sub_66D4(&qword_1225D8, &qword_DA6B0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v0;
  v18[1] = sub_D5520();
  sub_26338();
  v14 = sub_D6900();
  v18[0] = v14;
  v15 = sub_D68F0();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_109A8(&qword_1225E0, &qword_1225D8, &qword_DA6B0);
  sub_26458(&qword_1223C0, sub_26338);
  sub_D55E0();
  sub_FC3C(v4, &qword_122398, &qword_DA4C0);

  sub_109A8(&qword_1225E8, &qword_1225D0, &qword_DA6A8);
  v16 = sub_D55A0();
  (*(v6 + 8))(v9, v5);
  return v16;
}

uint64_t sub_1FD08()
{
  v1 = sub_66D4(&qword_122398, &qword_DA4C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v18 - v3;
  v5 = sub_66D4(&qword_122528, &qword_DA640);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  *(swift_allocObject() + 16) = v0;
  v10 = sub_66D4(&qword_122530, &qword_DA648);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v0;
  v18[1] = sub_D5520();
  sub_26338();
  v14 = sub_D6900();
  v18[0] = v14;
  v15 = sub_D68F0();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_109A8(&qword_122538, &qword_122530, &qword_DA648);
  sub_26458(&qword_1223C0, sub_26338);
  sub_D55E0();
  sub_FC3C(v4, &qword_122398, &qword_DA4C0);

  sub_109A8(&qword_122540, &qword_122528, &qword_DA640);
  v16 = sub_D55A0();
  (*(v6 + 8))(v9, v5);
  return v16;
}

uint64_t sub_1FFF4()
{
  v1 = sub_66D4(&qword_122398, &qword_DA4C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v18 - v3;
  v5 = sub_66D4(&qword_1224B0, &qword_DA5E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  *(swift_allocObject() + 16) = v0;
  v10 = sub_66D4(&qword_1224B8, &qword_DA5F0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v0;
  v18[1] = sub_D5520();
  sub_26338();
  v14 = sub_D6900();
  v18[0] = v14;
  v15 = sub_D68F0();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_109A8(&qword_1224C0, &qword_1224B8, &qword_DA5F0);
  sub_26458(&qword_1223C0, sub_26338);
  sub_D55E0();
  sub_FC3C(v4, &qword_122398, &qword_DA4C0);

  sub_109A8(&qword_1224C8, &qword_1224B0, &qword_DA5E8);
  v16 = sub_D55A0();
  (*(v6 + 8))(v9, v5);
  return v16;
}

uint64_t sub_202E0()
{
  v1 = sub_66D4(&qword_122398, &qword_DA4C0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v18 - v3;
  v5 = sub_66D4(&qword_1224F0, &qword_DA618);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  *(swift_allocObject() + 16) = v0;
  v10 = sub_66D4(&qword_1224F8, &qword_DA620);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v0;
  v18[1] = sub_D5520();
  sub_26338();
  v14 = sub_D6900();
  v18[0] = v14;
  v15 = sub_D68F0();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_109A8(&qword_122500, &qword_1224F8, &qword_DA620);
  sub_26458(&qword_1223C0, sub_26338);
  sub_D55E0();
  sub_FC3C(v4, &qword_122398, &qword_DA4C0);

  sub_109A8(&qword_122508, &qword_1224F0, &qword_DA618);
  v16 = sub_D55A0();
  (*(v6 + 8))(v9, v5);
  return v16;
}

uint64_t sub_20658()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  return v1;
}

double sub_206C4@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_20750(char a1)
{
  v2 = v1;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v9 = sub_6610(v4, qword_137988);
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_D5320();
  v11 = sub_D68A0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = a1 & 1;
    _os_log_impl(&dword_0, v10, v11, "[Mail Import List] fetch list started, isFromPullToRefresh: %{BOOL}d", v12, 8u);
  }

  (*(v5 + 8))(v8, v4);
  if ((a1 & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = 1;

    sub_D5580();
  }

  v13 = sub_6648((v2 + 16), *(v2 + 40));
  v14 = *(*v13 + 16);
  v15 = *(*v13 + 24);
  v16 = objc_allocWithZone(type metadata accessor for MSMailImportListAPIRequest());
  v17 = v14;
  v18 = v15;
  v19 = sub_3222C(v14, v18, 0, 0xF000000000000000);

  v20 = sub_1EE6C();
  v24 = v20;
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_66D4(&qword_122388, &qword_DA3E0);
  sub_109A8(&qword_122390, &qword_122388, &qword_DA3E0);
  v21 = sub_D55D0();

  v23 = *(v2 + OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel_refreshPublisher);
  *(v2 + OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel_refreshPublisher) = v21;
  if (v23)
  {

    sub_D54C0();
  }

  return result;
}

uint64_t sub_20ACC(uint64_t *a1)
{
  v2 = sub_D5340();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v37 = *a1;
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = *(a1 + 40);
  if (v7)
  {
    v12 = v4;
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v13 = sub_6610(v2, qword_137988);
    v36 = v12;
    (*(v12 + 16))(v6, v13, v2);

    v14 = sub_D5320();
    v15 = sub_D68A0();

    v35 = v15;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v32 = v16;
      v34 = swift_slowAlloc();
      v45 = v34;
      *v16 = 136315138;
      v39 = v37;
      v40 = v7;
      v41 = v8;
      LOBYTE(v42) = v9 & 1;
      v43 = v10;
      v44 = v11 & 1;
      sub_6780();
      v31 = v14;
      v17 = sub_D6C60();
      v19 = sub_558F0(v17, v18, &v45);
      v33 = v2;
      v20 = v19;

      v21 = v32;
      *(v32 + 1) = v20;
      v22 = v31;
      _os_log_impl(&dword_0, v31, v35, "[Mail Import List] fetch list failed: %s", v21, 0xCu);
      sub_67D4(v34);

      (*(v36 + 8))(v6, v33);
    }

    else
    {

      (*(v36 + 8))(v6, v2);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v23 = v11 & 1;
    v24 = v10;
    if (v7)
    {
      v25 = v37;
    }

    else
    {
      v25 = 0;
    }

    if (v7)
    {
      v26 = v9 & 1;
    }

    else
    {
      v8 = 0;
      v26 = 0;
    }

    if (v7)
    {
      v27 = v24;
    }

    else
    {
      v27 = 0;
    }

    if (v7)
    {
      v28 = v23;
    }

    else
    {
      v28 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v39 = v25;
    v40 = v7;
    v41 = v8;
    v42 = v26;
    v43 = v27;
    v44 = v28;

    sub_D5580();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v38 = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_20E6C(uint64_t *a1)
{
  v2 = sub_D5340();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v7 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v10 = sub_6610(v2, qword_137988);
    (*(v3 + 16))(v6, v10, v2);

    v11 = sub_D5320();
    v12 = sub_D68A0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134218240;
      *(v13 + 4) = *(v8 + 16);
      *(v13 + 12) = 2048;
      *(v13 + 14) = *(v7 + 16);

      _os_log_impl(&dword_0, v11, v12, "[Mail Import List] fetch list successful, import list count: %ld, history count: %ld", v13, 0x16u);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = v8;

    sub_D5580();
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = v7;

    return sub_D5580();
  }

  return result;
}

uint64_t sub_2111C(uint64_t a1, unint64_t a2)
{
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20750(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v26 = 0;

  sub_D5580();
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = 0;

  sub_D5580();
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v9 = sub_6610(v4, qword_137988);
  (*(v5 + 16))(v8, v9, v4);

  v10 = sub_D5320();
  v11 = sub_D68A0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v21 = v5;
    v13 = v12;
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136315138;
    if (a2)
    {
      v15 = a1;
    }

    else
    {
      v15 = 7104878;
    }

    v20 = v4;
    v16 = a1;
    if (a2)
    {
      v17 = a2;
    }

    else
    {
      v17 = 0xE300000000000000;
    }

    v18 = sub_558F0(v15, v17, &v22);
    a1 = v16;

    *(v13 + 4) = v18;
    _os_log_impl(&dword_0, v10, v11, "[Mail Import List] handle Mail import universal link, state: %s", v13, 0xCu);
    sub_67D4(v14);

    (*(v21 + 8))(v8, v20);
    if (!a2)
    {
      goto LABEL_17;
    }
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    if (!a2)
    {
LABEL_17:
      swift_getKeyPath();
      swift_getKeyPath();
      v24 = 1;

      return sub_D5580();
    }
  }

  if ((a1 != 0x73736563637573 || a2 != 0xE700000000000000) && (sub_D6C20() & 1) == 0)
  {
    goto LABEL_17;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v23 = 1;

  return sub_D5580();
}

uint64_t sub_214C8()
{
  sub_67D4((v0 + 16));
  v1 = *(v0 + 56);

  v2 = OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__isMailImportStartPresented;
  v3 = sub_66D4(&qword_121068, &qword_DBEE0);
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v2, v3);
  v4(v0 + OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__isMailImportStartPresentedDetail, v3);
  v4(v0 + OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__isMailImportSuccessPresented, v3);
  v4(v0 + OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__isMailImportListActive, v3);
  v4(v0 + OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__isLoading, v3);
  v5 = OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__importList;
  v6 = sub_66D4(&qword_122598, &qword_DA688);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__importHistory, v6);
  v8 = OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel__error;
  v9 = sub_66D4(&qword_121070, &qword_DAFE0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings16MSMailImportView9ViewModel_refreshPublisher);

  return v0;
}

uint64_t sub_21690()
{
  sub_214C8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t _s11descr1123A1O9ViewModelCMa()
{
  result = qword_1222A8;
  if (!qword_1222A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2173C()
{
  sub_21898();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_6158(319, &unk_1222B8, &qword_122178, &qword_DA110);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_6158(319, &qword_120EE0, &qword_120EE8, &qword_D8DD0);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_21898()
{
  if (!qword_120ED8)
  {
    v0 = sub_D5590();
    if (!v1)
    {
      atomic_store(v0, &qword_120ED8);
    }
  }
}

uint64_t sub_218E8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_D54D0();
  *a1 = result;
  return result;
}

void sub_21938(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (__OFADD__(a5, 1))
    {
      __break(1u);
    }

    else
    {
      v12 = Strong;
      a6(a2, a3, a4 & 1, a5 + 1);
    }
  }
}

uint64_t sub_219D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_21A14(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_66D4(&qword_1223F0, &qword_DA4E8);
    v2 = sub_D6AE0();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_263D4(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_26430(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_26430(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_26430(v31, v32);
    result = sub_D69B0(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_26430(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_21CDC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void (*)(uint64_t, uint64_t, uint64_t), uint64_t, void, uint64_t))
{
  v47 = a6;
  v48 = a7;
  v49 = a5;
  v50 = a4;
  v13 = sub_D5340();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v46 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v46 - v23;
  __chkstk_darwin(v22);
  v26 = &v46 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    if (a1)
    {
      if (a1 == 1)
      {
        if (qword_120E38 != -1)
        {
          swift_once();
        }

        v33 = sub_6610(v13, qword_137988);
        (*(v14 + 16))(v24, v33, v13);
        v34 = sub_D5320();
        v35 = sub_D6890();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_0, v34, v35, "auth token renew failed. User rejected.", v36, 2u);
        }

        (*(v14 + 8))(v24, v13);
      }

      else if (a1 == 2)
      {
        if (qword_120E38 != -1)
        {
          swift_once();
        }

        v29 = sub_6610(v13, qword_137988);
        (*(v14 + 16))(v26, v29, v13);
        v30 = sub_D5320();
        v31 = sub_D6890();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_0, v30, v31, "auth token renew failed.", v32, 2u);
        }

        (*(v14 + 8))(v26, v13);
      }

      else
      {
        if (qword_120E38 != -1)
        {
          swift_once();
        }

        v41 = sub_6610(v13, qword_137988);
        (*(v14 + 16))(v18, v41, v13);
        v42 = sub_D5320();
        v43 = sub_D6890();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_0, v42, v43, "auth token renew failed. @unknown result", v44, 2u);
        }

        (*(v14 + 8))(v18, v13);
      }

      if (a2)
      {
        v45 = a2;
      }

      else
      {
        v45 = a8;
      }

      v50(v47, v48, v45);
    }

    else
    {
      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v37 = sub_6610(v13, qword_137988);
      (*(v14 + 16))(v21, v37, v13);
      v38 = sub_D5320();
      v39 = sub_D6890();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_0, v38, v39, "auth token renewed. Retrying request with server.", v40, 2u);
      }

      (*(v14 + 8))(v21, v13);
      a10(v50, v49, 0, a9);
    }
  }
}

void sub_221F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

void sub_22268(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v41 = a6;
  v14 = sub_D5340();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v39 = a1;
    v40 = a2;
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v38 = a9;
    v22 = sub_6610(v14, qword_137988);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_D5320();
    v25 = sub_D68A0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v36 = a8;
      v29 = v28;
      v42 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v34 = v15;
      v35 = a3;
      v30 = a7;
      v31 = *&v37[qword_126760];
      v32 = *&v37[qword_126760 + 8];

      v33 = sub_558F0(v31, v32, &v42);
      a7 = v30;
      a3 = v35;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_0, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      sub_67D4(v29);
      a8 = v36;

      v23 = v37;

      (*(v34 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == &stru_1A8.sectname[5])
    {
      if (v38 <= 4)
      {
        sub_1679C(a7, a8, v41 & 1, v38, &unk_115AD0, &unk_115B98, sub_27038, &unk_115BB0);
        goto LABEL_17;
      }
    }

    else if (v21 == &stru_158.reloff + 1 && (v41 & 1) != 0)
    {
      sub_16EDC(v39, v40, a3, a7, a8, v38);
LABEL_17:

      return;
    }

    a7(v39, v40, a3);
    goto LABEL_17;
  }
}

void sub_225E4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v41 = a6;
  v14 = sub_D5340();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v39 = a1;
    v40 = a2;
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v38 = a9;
    v22 = sub_6610(v14, qword_137988);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_D5320();
    v25 = sub_D68A0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v36 = a8;
      v29 = v28;
      v42 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v34 = v15;
      v35 = a3;
      v30 = a7;
      v31 = *&v37[qword_126760];
      v32 = *&v37[qword_126760 + 8];

      v33 = sub_558F0(v31, v32, &v42);
      a7 = v30;
      a3 = v35;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_0, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      sub_67D4(v29);
      a8 = v36;

      v23 = v37;

      (*(v34 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == &stru_1A8.sectname[5])
    {
      if (v38 <= 4)
      {
        sub_1679C(a7, a8, v41 & 1, v38, &unk_1153C8, &unk_115490, sub_269A4, &unk_1154A8);
        goto LABEL_17;
      }
    }

    else if (v21 == &stru_158.reloff + 1 && (v41 & 1) != 0)
    {
      sub_17428(v39, v40, a3, a7, a8, v38);
LABEL_17:

      return;
    }

    a7(v39, v40, a3);
    goto LABEL_17;
  }
}

void sub_22960(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v41 = a6;
  v14 = sub_D5340();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v39 = a1;
    v40 = a2;
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v38 = a9;
    v22 = sub_6610(v14, qword_137988);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_D5320();
    v25 = sub_D68A0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v36 = a8;
      v29 = v28;
      v42 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v34 = v15;
      v35 = a3;
      v30 = a7;
      v31 = *&v37[qword_126760];
      v32 = *&v37[qword_126760 + 8];

      v33 = sub_558F0(v31, v32, &v42);
      a7 = v30;
      a3 = v35;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_0, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      sub_67D4(v29);
      a8 = v36;

      v23 = v37;

      (*(v34 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == &stru_1A8.sectname[5])
    {
      if (v38 <= 4)
      {
        sub_1679C(a7, a8, v41 & 1, v38, &unk_114F90, &unk_115058, sub_26440, &unk_115070);
        goto LABEL_17;
      }
    }

    else if (v21 == &stru_158.reloff + 1 && (v41 & 1) != 0)
    {
      sub_17974(v39, v40, a3, a7, a8, v38);
LABEL_17:

      return;
    }

    a7(v39, v40, a3);
    goto LABEL_17;
  }
}

void sub_22CDC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v41 = a6;
  v14 = sub_D5340();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v39 = a1;
    v40 = a2;
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v38 = a9;
    v22 = sub_6610(v14, qword_137988);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_D5320();
    v25 = sub_D68A0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v36 = a8;
      v29 = v28;
      v42 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v34 = v15;
      v35 = a3;
      v30 = a7;
      v31 = *&v37[qword_126760];
      v32 = *&v37[qword_126760 + 8];

      v33 = sub_558F0(v31, v32, &v42);
      a7 = v30;
      a3 = v35;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_0, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      sub_67D4(v29);
      a8 = v36;

      v23 = v37;

      (*(v34 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == &stru_1A8.sectname[5])
    {
      if (v38 <= 4)
      {
        sub_1679C(a7, a8, v41 & 1, v38, &unk_115968, &unk_115A30, sub_26E94, &unk_115A48);
        goto LABEL_17;
      }
    }

    else if (v21 == &stru_158.reloff + 1 && (v41 & 1) != 0)
    {
      sub_17EC0(v39, v40, a3, a7, a8, v38);
LABEL_17:

      return;
    }

    a7(v39, v40, a3);
    goto LABEL_17;
  }
}

void sub_23058(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v41 = a6;
  v14 = sub_D5340();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v39 = a1;
    v40 = a2;
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v38 = a9;
    v22 = sub_6610(v14, qword_137988);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_D5320();
    v25 = sub_D68A0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v36 = a8;
      v29 = v28;
      v42 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v34 = v15;
      v35 = a3;
      v30 = a7;
      v31 = *&v37[qword_126760];
      v32 = *&v37[qword_126760 + 8];

      v33 = sub_558F0(v31, v32, &v42);
      a7 = v30;
      a3 = v35;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_0, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      sub_67D4(v29);
      a8 = v36;

      v23 = v37;

      (*(v34 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == &stru_1A8.sectname[5])
    {
      if (v38 <= 4)
      {
        sub_1679C(a7, a8, v41 & 1, v38, &unk_1150F8, &unk_1151C0, sub_26748, &unk_1151D8);
        goto LABEL_17;
      }
    }

    else if (v21 == &stru_158.reloff + 1 && (v41 & 1) != 0)
    {
      sub_1840C(v39, v40, a3, a7, a8, v38);
LABEL_17:

      return;
    }

    a7(v39, v40, a3);
    goto LABEL_17;
  }
}

void sub_233D4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v41 = a6;
  v14 = sub_D5340();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v39 = a1;
    v40 = a2;
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v38 = a9;
    v22 = sub_6610(v14, qword_137988);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_D5320();
    v25 = sub_D68A0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v36 = a8;
      v29 = v28;
      v42 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v34 = v15;
      v35 = a3;
      v30 = a7;
      v31 = *&v37[qword_126760];
      v32 = *&v37[qword_126760 + 8];

      v33 = sub_558F0(v31, v32, &v42);
      a7 = v30;
      a3 = v35;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_0, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      sub_67D4(v29);
      a8 = v36;

      v23 = v37;

      (*(v34 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == &stru_1A8.sectname[5])
    {
      if (v38 <= 4)
      {
        sub_1679C(a7, a8, v41 & 1, v38, &unk_115260, &unk_115328, sub_26908, &unk_115340);
        goto LABEL_17;
      }
    }

    else if (v21 == &stru_158.reloff + 1 && (v41 & 1) != 0)
    {
      sub_18958(v39, v40, a3, a7, a8, v38);
LABEL_17:

      return;
    }

    a7(v39, v40, a3);
    goto LABEL_17;
  }
}

void sub_23750(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v41 = a6;
  v14 = sub_D5340();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v39 = a1;
    v40 = a2;
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v38 = a9;
    v22 = sub_6610(v14, qword_137988);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_D5320();
    v25 = sub_D68A0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v36 = a8;
      v29 = v28;
      v42 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v34 = v15;
      v35 = a3;
      v30 = a7;
      v31 = *&v37[qword_126760];
      v32 = *&v37[qword_126760 + 8];

      v33 = sub_558F0(v31, v32, &v42);
      a7 = v30;
      a3 = v35;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_0, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      sub_67D4(v29);
      a8 = v36;

      v23 = v37;

      (*(v34 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == &stru_1A8.sectname[5])
    {
      if (v38 <= 4)
      {
        sub_1679C(a7, a8, v41 & 1, v38, &unk_115C38, &unk_115D00, sub_2739C, &unk_115D18);
        goto LABEL_17;
      }
    }

    else if (v21 == &stru_158.reloff + 1 && (v41 & 1) != 0)
    {
      sub_18EA4(v39, v40, a3, a7, a8, v38);
LABEL_17:

      return;
    }

    a7(v39, v40, a3);
    goto LABEL_17;
  }
}

void sub_23ACC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v41 = a6;
  v14 = sub_D5340();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v39 = a1;
    v40 = a2;
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v38 = a9;
    v22 = sub_6610(v14, qword_137988);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_D5320();
    v25 = sub_D68A0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v36 = a8;
      v29 = v28;
      v42 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v34 = v15;
      v35 = a3;
      v30 = a7;
      v31 = *&v37[qword_126760];
      v32 = *&v37[qword_126760 + 8];

      v33 = sub_558F0(v31, v32, &v42);
      a7 = v30;
      a3 = v35;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_0, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      sub_67D4(v29);
      a8 = v36;

      v23 = v37;

      (*(v34 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == &stru_1A8.sectname[5])
    {
      if (v38 <= 4)
      {
        sub_1679C(a7, a8, v41 & 1, v38, &unk_115800, &unk_1158C8, sub_26D2C, &unk_1158E0);
        goto LABEL_17;
      }
    }

    else if (v21 == &stru_158.reloff + 1 && (v41 & 1) != 0)
    {
      sub_193F0(v39, v40, a3, a7, a8, v38);
LABEL_17:

      return;
    }

    a7(v39, v40, a3);
    goto LABEL_17;
  }
}

void sub_23E48(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v41 = a6;
  v14 = sub_D5340();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v39 = a1;
    v40 = a2;
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v38 = a9;
    v22 = sub_6610(v14, qword_137988);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_D5320();
    v25 = sub_D68A0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v36 = a8;
      v29 = v28;
      v42 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v34 = v15;
      v35 = a3;
      v30 = a7;
      v31 = *&v37[qword_126760];
      v32 = *&v37[qword_126760 + 8];

      v33 = sub_558F0(v31, v32, &v42);
      a7 = v30;
      a3 = v35;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_0, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      sub_67D4(v29);
      a8 = v36;

      v23 = v37;

      (*(v34 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == &stru_1A8.sectname[5])
    {
      if (v38 <= 4)
      {
        sub_1679C(a7, a8, v41 & 1, v38, &unk_115530, &unk_1155F8, sub_26A40, &unk_115610);
        goto LABEL_17;
      }
    }

    else if (v21 == &stru_158.reloff + 1 && (v41 & 1) != 0)
    {
      sub_1993C(v39, v40, a3, a7, a8, v38);
LABEL_17:

      return;
    }

    a7(v39, v40, a3);
    goto LABEL_17;
  }
}

void sub_241C4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v41 = a6;
  v14 = sub_D5340();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    if (a2)
    {
      v21 = [a2 statusCode];
    }

    else
    {
      v21 = 0;
    }

    v39 = a1;
    v40 = a2;
    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v38 = a9;
    v22 = sub_6610(v14, qword_137988);
    (*(v15 + 16))(v18, v22, v14);
    v23 = v20;
    v24 = sub_D5320();
    v25 = sub_D68A0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v37 = v23;
      v27 = v26;
      v28 = swift_slowAlloc();
      v36 = a8;
      v29 = v28;
      v42 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v21;
      *(v27 + 12) = 2080;
      v34 = v15;
      v35 = a3;
      v30 = a7;
      v31 = *&v37[qword_126760];
      v32 = *&v37[qword_126760 + 8];

      v33 = sub_558F0(v31, v32, &v42);
      a7 = v30;
      a3 = v35;

      *(v27 + 14) = v33;
      _os_log_impl(&dword_0, v24, v25, "[%ld] Response: X-Apple-Request-UUID: %s", v27, 0x16u);
      sub_67D4(v29);
      a8 = v36;

      v23 = v37;

      (*(v34 + 8))(v18, v14);
    }

    else
    {

      (*(v15 + 8))(v18, v14);
    }

    if (v21 == &stru_1A8.sectname[5])
    {
      if (v38 <= 4)
      {
        sub_1679C(a7, a8, v41 & 1, v38, &unk_115698, &unk_115760, sub_26B94, &unk_115778);
        goto LABEL_17;
      }
    }

    else if (v21 == &stru_158.reloff + 1 && (v41 & 1) != 0)
    {
      sub_19E88(v39, v40, a3, a7, a8, v38);
LABEL_17:

      return;
    }

    a7(v39, v40, a3);
    goto LABEL_17;
  }
}

void sub_24540(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(a2, a3, a4);
}

uint64_t sub_245E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, void))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  a6(a5, v10, 1, 0);
}

uint64_t sub_24678(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  if (a2 && (sub_66D4(&qword_1224A8, &qword_DA5E0), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = v5 + *(&stru_20.nsects + (swift_isaMask & *v5));
    v8 = *v6;
    v7 = *(v6 + 1);
    v10 = *(v6 + 2);
    v9 = *(v6 + 3);
    v11 = *(v6 + 4);
    v12 = v6[40];
    if (v6[41])
    {
      v14 = *v6;
      v15 = v7;
      v16 = v10;
      v17 = v9 & 1;
      v18 = v11;
      LOBYTE(v19) = v12 & 1;
      HIBYTE(v19) = 1;
      sub_26EB4(v8, v7, v10, v9, v11, v12, 1);
      sub_26EB4(v8, v7, v10, v9, v11, v12, 1);
      a4(&v14);
      sub_26F18(v8, v7, v10, v9, v11, v12, 1);
      return sub_26F18(v8, v7, v10, v9, v11, v12, 1);
    }

    else
    {
      sub_26EB4(v8, v7, v10, v9, v11, v12, 0);
      sub_26EB4(v8, v7, v10, v9, v11, v12, 0);
      sub_26628(v10, v9);
      v14 = v8;
      v15 = v7;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v19 = 0;

      a4(&v14);

      sub_26F18(v8, v7, v10, v9, v11, v12, 0);
    }
  }

  else
  {
    if (qword_120E70 != -1)
    {
      swift_once();
    }

    v14 = qword_137A18;
    v15 = unk_137A20;
    v16 = qword_137A28;
    LOBYTE(v17) = byte_137A30;
    v18 = qword_137A38;
    LOBYTE(v19) = byte_137A40;
    HIBYTE(v19) = 1;

    a4(&v14);
    return sub_26EAC();
  }
}

uint64_t sub_2490C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *))
{
  if (a2 && (sub_66D4(&qword_122418, &qword_DA4F8), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = v5 + *(&stru_20.nsects + (swift_isaMask & *v5));
    v7 = *v6;
    v8 = *(v6 + 1);
    v10 = *(v6 + 2);
    v9 = *(v6 + 3);
    v11 = *(v6 + 4);
    v12 = v6[40];
    if (v6[41])
    {
      *&v14 = *v6;
      *(&v14 + 1) = v8;
      v15 = v10;
      v16 = v9 & 1;
      v17 = v11;
      LOBYTE(v18) = v12 & 1;
      HIBYTE(v18) = 1;
      sub_264DC(v7, v8, v10, v9, v11, v12, 1);
      sub_264DC(v7, v8, v10, v9, v11, v12, 1);
      a4(&v14);
      sub_265AC(v7, v8, v10, v9, v11, v12, 1);
      return sub_265AC(v7, v8, v10, v9, v11, v12, 1);
    }

    else
    {
      sub_264DC(v7, v8, v10, v9, v11, v12, 0);
      sub_264DC(v7, v8, v10, v9, v11, v12, 0);
      sub_26628(v10, v9);
      *&v14 = v7;
      *(&v14 + 1) = v8;
      v16 = 0;
      v17 = 0;
      v15 = 0;
      v18 = 0;

      a4(&v14);

      sub_265AC(v7, v8, v10, v9, v11, v12, 0);
    }
  }

  else
  {
    if (qword_120E70 != -1)
    {
      swift_once();
    }

    v14 = xmmword_137A18;
    v15 = qword_137A28;
    LOBYTE(v16) = byte_137A30;
    v17 = qword_137A38;
    LOBYTE(v18) = byte_137A40;
    HIBYTE(v18) = 1;

    a4(&v14);
    return sub_264A0(v14, *(&v14 + 1), v15, v16, v17, v18, SHIBYTE(v18));
  }
}

uint64_t sub_24BB8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  if (a2 && (sub_66D4(&qword_122590, &qword_DA680), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = v5 + *(&stru_20.nsects + (swift_isaMask & *v5));
    v8 = *v6;
    v7 = *(v6 + 1);
    v10 = *(v6 + 2);
    v9 = *(v6 + 3);
    v11 = *(v6 + 4);
    v12 = v6[40];
    if (v6[41])
    {
      v14 = *v6;
      v15 = v7;
      v16 = v10;
      v17 = v9 & 1;
      v18 = v11;
      LOBYTE(v19) = v12 & 1;
      HIBYTE(v19) = 1;
      sub_26EB4(v8, v7, v10, v9, v11, v12, 1);
      sub_26EB4(v8, v7, v10, v9, v11, v12, 1);
      a4(&v14);
      sub_26F18(v8, v7, v10, v9, v11, v12, 1);
      return sub_26F18(v8, v7, v10, v9, v11, v12, 1);
    }

    else
    {
      sub_26EB4(v8, v7, v10, v9, v11, v12, 0);
      sub_26EB4(v8, v7, v10, v9, v11, v12, 0);
      sub_26628(v10, v9);
      v14 = v8;
      v15 = v7;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v19 = 0;

      a4(&v14);

      sub_26F18(v8, v7, v10, v9, v11, v12, 0);
    }
  }

  else
  {
    if (qword_120E70 != -1)
    {
      swift_once();
    }

    v14 = qword_137A18;
    v15 = unk_137A20;
    v16 = qword_137A28;
    LOBYTE(v17) = byte_137A30;
    v18 = qword_137A38;
    LOBYTE(v19) = byte_137A40;
    HIBYTE(v19) = 1;

    a4(&v14);
    return sub_26EAC();
  }
}

uint64_t sub_24E4C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *), uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void, void, void, void, void, void, void))
{
  if (a2 && (sub_66D4(a6, a7), (v10 = swift_dynamicCastClass()) != 0))
  {
    v11 = v10 + *(&stru_20.nsects + (swift_isaMask & *v10));
    v12 = *v11;
    v13 = *(v11 + 1);
    v15 = *(v11 + 2);
    v14 = *(v11 + 3);
    v16 = *(v11 + 4);
    v17 = v11[40];
    if (v11[41])
    {
      *v19 = *v11;
      *&v19[8] = v13;
      *&v19[16] = v15;
      *&v20 = v14 & 1;
      *(&v20 + 1) = v16;
      LOBYTE(v21) = v17 & 1;
      HIBYTE(v21) = 1;
      sub_273B4(v12, v13, v15, v14, v16, v17, 1);
      sub_273B4(v12, v13, v15, v14, v16, v17, 1);
      a4(v19);
      sub_27418(v12, v13, v15, v14, v16, v17, 1);
      return sub_27418(v12, v13, v15, v14, v16, v17, 1);
    }

    else
    {
      sub_273B4(v12, v13, v15, v14, v16, v17, 0);
      sub_273B4(v12, v13, v15, v14, v16, v17, 0);
      sub_26628(v13, v15);
      *v19 = v12;
      *&v19[8] = 0u;
      v20 = 0u;
      v21 = 0;

      a4(v19);

      sub_27418(v12, v13, v15, v14, v16, v17, 0);
    }
  }

  else
  {
    if (qword_120E70 != -1)
    {
      swift_once();
    }

    *v19 = xmmword_137A18;
    *&v19[16] = qword_137A28;
    LOBYTE(v20) = byte_137A30;
    *(&v20 + 1) = qword_137A38;
    LOBYTE(v21) = byte_137A40;
    HIBYTE(v21) = 1;

    a4(v19);
    return a8(*v19, *&v19[8], *&v19[16], v20, *(&v20 + 1), v21, HIBYTE(v21));
  }
}

uint64_t sub_250E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *))
{
  if (a2 && (sub_66D4(&qword_122558, &qword_DA658), (v5 = swift_dynamicCastClass()) != 0))
  {
    memcpy(__dst, v5 + *(&stru_20.nsects + (swift_isaMask & *v5)), 0x109uLL);
    memcpy(__src, __dst, 0x109uLL);
    memcpy(v80, __dst, 0x109uLL);
    if (sub_26D50(v80) == 1)
    {
      nullsub_1(v80);
      memcpy(v61, __src, 0x109uLL);
      v6 = nullsub_1(v61);
      v7 = *(v6 + 8);
      v8 = *(v6 + 16);
      v9 = *(v6 + 24);
      v10 = *(v6 + 32);
      v11 = *(v6 + 40);
      *&v62 = *v6;
      *(&v62 + 1) = v7;
      *&v63 = v8;
      BYTE8(v63) = v9;
      *&v64 = v10;
      BYTE8(v64) = v11;
      sub_26D44(&v62);
      v57 = v74;
      v58 = v75;
      v59 = v76;
      v60 = v77;
      v53 = v70;
      v54 = v71;
      v55 = v72;
      v56 = v73;
      v49 = v66;
      v50 = v67;
      v51 = v68;
      v52 = v69;
      v45 = v62;
      v46 = v63;
      v47 = v64;
      v48 = v65;
      sub_FBD4(__dst, &v29, &qword_122560, &qword_DA660);
      sub_FBD4(__dst, &v29, &qword_122560, &qword_DA660);
      a4(&v45);
      sub_FC3C(__dst, &qword_122560, &qword_DA660);
      v41 = v57;
      v42 = v58;
      v43 = v59;
      v44 = v60;
      v37 = v53;
      v38 = v54;
      v39 = v55;
      v40 = v56;
      v33 = v49;
      v34 = v50;
      v35 = v51;
      v36 = v52;
      v29 = v45;
      v30 = v46;
      v31 = v47;
      v32 = v48;
      v12 = &v29;
    }

    else
    {
      nullsub_1(v80);
      v13 = nullsub_1(__src);
      v14 = v13[31];
      v15 = v13[32];
      sub_FBD4(__dst, v61, &qword_122560, &qword_DA660);
      sub_FBD4(__dst, v61, &qword_122560, &qword_DA660);
      sub_26628(v14, v15);
      v16 = *v13;
      v17 = *(v13 + 1);
      v18 = *(v13 + 3);
      v47 = *(v13 + 2);
      v48 = v18;
      v45 = v16;
      v46 = v17;
      v19 = *(v13 + 4);
      v20 = *(v13 + 5);
      v21 = *(v13 + 7);
      v51 = *(v13 + 6);
      v52 = v21;
      v49 = v19;
      v50 = v20;
      v22 = *(v13 + 8);
      v23 = *(v13 + 9);
      v24 = *(v13 + 11);
      v55 = *(v13 + 10);
      v56 = v24;
      v53 = v22;
      v54 = v23;
      v25 = *(v13 + 12);
      v26 = *(v13 + 13);
      v27 = *(v13 + 14);
      LOBYTE(v60) = *(v13 + 240);
      v58 = v26;
      v59 = v27;
      v57 = v25;
      memmove(&v29, v13, 0xF1uLL);
      sub_26D58(&v29);
      v74 = v41;
      v75 = v42;
      v76 = v43;
      v77 = v44;
      v70 = v37;
      v71 = v38;
      v72 = v39;
      v73 = v40;
      v66 = v33;
      v67 = v34;
      v68 = v35;
      v69 = v36;
      v62 = v29;
      v63 = v30;
      v64 = v31;
      v65 = v32;
      sub_26D60(&v45, v61);
      a4(&v62);
      sub_26DBC(&v45);
      sub_FC3C(__dst, &qword_122560, &qword_DA660);
      v61[12] = v74;
      v61[13] = v75;
      v61[14] = v76;
      LOWORD(v61[15]) = v77;
      v61[8] = v70;
      v61[9] = v71;
      v61[10] = v72;
      v61[11] = v73;
      v61[4] = v66;
      v61[5] = v67;
      v61[6] = v68;
      v61[7] = v69;
      v61[0] = v62;
      v61[1] = v63;
      v61[2] = v64;
      v61[3] = v65;
      v12 = v61;
    }
  }

  else
  {
    if (qword_120E70 != -1)
    {
      swift_once();
    }

    __dst[0] = xmmword_137A18;
    *&__dst[1] = qword_137A28;
    BYTE8(__dst[1]) = byte_137A30;
    *&__dst[2] = qword_137A38;
    BYTE8(__dst[2]) = byte_137A40;
    sub_26D44(__dst);

    a4(__dst);
    v80[12] = __dst[12];
    v80[13] = __dst[13];
    v80[14] = __dst[14];
    LOWORD(v80[15]) = __dst[15];
    v80[8] = __dst[8];
    v80[9] = __dst[9];
    v80[10] = __dst[10];
    v80[11] = __dst[11];
    v80[4] = __dst[4];
    v80[5] = __dst[5];
    v80[6] = __dst[6];
    v80[7] = __dst[7];
    v80[0] = __dst[0];
    v80[1] = __dst[1];
    v80[2] = __dst[2];
    v80[3] = __dst[3];
    v12 = v80;
  }

  return sub_FC3C(v12, &qword_122550, &qword_DA650);
}

uint64_t sub_255B8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *))
{
  if (a2 && (sub_66D4(&qword_1224E0, &qword_DA608), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = (v5 + *(&stru_20.nsects + (swift_isaMask & *v5)));
    v7 = v6[3];
    v9 = *v6;
    v8 = v6[1];
    v58 = v6[2];
    v59 = v7;
    v56 = v9;
    v57 = v8;
    v11 = v6[5];
    v10 = v6[6];
    v12 = v6[4];
    *&v61[25] = *(v6 + 105);
    *v61 = v11;
    *&v61[16] = v10;
    v60 = v12;
    v53 = v12;
    v54 = v11;
    v55[0] = v10;
    *(v55 + 9) = *&v61[25];
    v49 = v56;
    v50 = v57;
    v51 = v58;
    v52 = v7;
    v64 = v58;
    v65 = v7;
    v62 = v56;
    v63 = v57;
    *&v67[25] = *&v61[25];
    *v67 = v11;
    *&v67[16] = v10;
    v66 = v12;
    if (sub_26A58(&v62) == 1)
    {
      nullsub_1(&v62);
      v44 = v53;
      *v45 = v54;
      *&v45[16] = v55[0];
      *&v45[25] = *(v55 + 9);
      v40 = v49;
      v41 = v50;
      v42 = v51;
      v43 = v52;
      v13 = nullsub_1(&v40);
      v14 = *v13;
      v15 = *(v13 + 16);
      v16 = *(v13 + 32);
      v17 = *(v13 + 40);
      v48 = *(v13 + 24);
      v47 = v17;
      v46 = 1;
      v34 = v14;
      *&v35 = v15;
      BYTE8(v35) = v48;
      *&v36 = v16;
      BYTE8(v36) = v17;
      v39[24] = 1;
      sub_FBD4(&v56, &v28, &qword_1224E8, &qword_DA610);
      a4(&v34);
      v32 = v38;
      *v33 = *v39;
      *&v33[9] = *&v39[9];
      v28 = v34;
      v29 = v35;
      v30 = v36;
      v31 = v37;
      v18 = &v28;
    }

    else
    {
      nullsub_1(&v62);
      v19 = nullsub_1(&v49);
      v20 = *(v19 + 104);
      v21 = *(v19 + 112);
      sub_FBD4(&v56, &v40, &qword_1224E8, &qword_DA610);
      sub_26628(v20, v21);
      v22 = *v19;
      v23 = *(v19 + 32);
      v35 = *(v19 + 16);
      v36 = v23;
      v34 = v22;
      v24 = *(v19 + 48);
      v25 = *(v19 + 64);
      v26 = *(v19 + 80);
      *&v39[16] = *(v19 + 96);
      v38 = v25;
      *v39 = v26;
      v37 = v24;
      v31 = *(v19 + 48);
      v32 = *(v19 + 64);
      *v33 = *(v19 + 80);
      *&v33[16] = *(v19 + 96);
      v28 = *v19;
      v29 = *(v19 + 16);
      v30 = *(v19 + 32);
      v48 = 0;
      v33[24] = 0;
      sub_26A60(&v34, &v40);
      a4(&v28);
      sub_26ABC(&v34);
      v44 = v32;
      *v45 = *v33;
      *&v45[9] = *&v33[9];
      v40 = v28;
      v41 = v29;
      v42 = v30;
      v43 = v31;
      v18 = &v40;
    }
  }

  else
  {
    if (qword_120E70 != -1)
    {
      swift_once();
    }

    v56 = xmmword_137A18;
    *&v57 = qword_137A28;
    BYTE8(v57) = byte_137A30;
    *&v58 = qword_137A38;
    BYTE8(v58) = byte_137A40;
    v61[24] = 1;

    a4(&v56);
    v66 = v60;
    *v67 = *v61;
    *&v67[9] = *&v61[9];
    v62 = v56;
    v63 = v57;
    v64 = v58;
    v65 = v59;
    v18 = &v62;
  }

  return sub_FC3C(v18, &qword_1224D8, &qword_DA600);
}

uint64_t sub_2596C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  if (a2 && (sub_66D4(&qword_122518, &qword_DA630), (v5 = swift_dynamicCastClass()) != 0))
  {
    v6 = v5 + *(&stru_20.nsects + (swift_isaMask & *v5));
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = *(v6 + 2);
    v10 = *(v6 + 3);
    v11 = *(v6 + 4);
    v12 = v6[40];
    if (v6[41])
    {
      *v14 = *v6;
      *&v14[8] = v8;
      *&v14[16] = v9;
      *&v15 = v10 & 1;
      *(&v15 + 1) = v11;
      LOBYTE(v16) = v12 & 1;
      HIBYTE(v16) = 1;
      sub_273B4(v7, v8, v9, v10, v11, v12, 1);
      a4(v14);
      return sub_27418(v7, v8, v9, v10, v11, v12, 1);
    }

    else
    {
      sub_273B4(v7, v8, v9, v10, v11, v12, 0);
      sub_26628(v8, v9);
      *v14 = v7;
      *&v14[8] = 0u;
      v15 = 0u;
      v16 = 0;

      a4(v14);
      return swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    if (qword_120E70 != -1)
    {
      swift_once();
    }

    *v14 = xmmword_137A18;
    *&v14[16] = qword_137A28;
    LOBYTE(v15) = byte_137A30;
    *(&v15 + 1) = qword_137A38;
    LOBYTE(v16) = byte_137A40;
    HIBYTE(v16) = 1;

    a4(v14);
    return sub_2678C();
  }
}

double sub_25B90@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_25C20(__int128 *a1, uint64_t *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 40);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = *a1;
  v8 = a1[1];

  return sub_D5580();
}

uint64_t sub_25CB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v5;
  return result;
}

uint64_t sub_25D38(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

uint64_t sub_25DE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  *a2 = v5;
  return result;
}

uint64_t sub_25E78(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_D5580();
}

void *sub_25EF0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_25F10@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_25F40(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_26008@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_26040(unint64_t result)
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

unint64_t sub_260CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_66D4(&qword_1223F8, &qword_DA4F0);
    v3 = sub_D6AE0();
    v4 = a1 + 32;

    while (1)
    {
      sub_FBD4(v4, &v13, &qword_1223E0, &unk_E3890);
      v5 = v13;
      v6 = v14;
      result = sub_4BAD4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26430(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_261FC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_26338()
{
  result = qword_1223B0;
  if (!qword_1223B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1223B0);
  }

  return result;
}

uint64_t sub_263A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_263D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_26430(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26458(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_264A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if ((a7 & 1) == 0)
  {
  }
}

uint64_t sub_264DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    return sub_26558(a3, a4);
  }
}

uint64_t sub_26558(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_265AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    return sub_26628(a3, a4);
  }
}

uint64_t sub_26628(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_26798()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2681C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_26894()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_26BAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_66D4(&qword_122520, &qword_DA638);
    v3 = sub_D6AE0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_4BAD4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

uint64_t sub_26EB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if ((a7 & 1) == 0)
  {

    return sub_26558(a3, a4);
  }

  return result;
}

uint64_t sub_26F18(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  if ((a7 & 1) == 0)
  {

    return sub_26628(a3, a4);
  }

  return result;
}

uint64_t sub_270DC()
{
  v1 = sub_D5030();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 16);

  return _swift_deallocObject(v0, ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_271DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void, unint64_t, void, void, void, void))
{
  v9 = *(sub_D5030() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = v10 + *(v9 + 64);
  return a4(a1, a2, a3, *(v4 + 16), v4 + v10, *(v4 + v11), *(v4 + (v11 & 0xFFFFFFFFFFFFFFF8) + 8), *(v4 + (v11 & 0xFFFFFFFFFFFFFFF8) + 16), *(v4 + (((v11 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_272B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_2735C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_273B4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    return sub_26558(a2, a3);
  }
}

uint64_t sub_27418(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {

    return sub_26628(a2, a3);
  }
}

uint64_t sub_27660(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_D5EE0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_27720(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_D5EE0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for iCloudMailTextField()
{
  result = qword_122658;
  if (!qword_122658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27810()
{
  sub_279E4(319, &qword_122668, &type metadata for String, &type metadata accessor for Binding);
  if (v0 <= 0x3F)
  {
    sub_27934();
    if (v1 <= 0x3F)
    {
      sub_2798C();
      if (v2 <= 0x3F)
      {
        sub_279E4(319, &qword_121118, &type metadata for Bool, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_D5EE0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_27934()
{
  if (!qword_122670)
  {
    v0 = sub_D56E0();
    if (!v1)
    {
      atomic_store(v0, &qword_122670);
    }
  }
}

void sub_2798C()
{
  if (!qword_122678)
  {
    type metadata accessor for CGRect(255);
    v0 = sub_D6240();
    if (!v1)
    {
      atomic_store(v0, &qword_122678);
    }
  }
}

void sub_279E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_27A50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = type metadata accessor for iCloudMailTextField();
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v54 = v6;
  v55 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_66D4(&qword_1226C0, &qword_DA748);
  v7 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v9 = &v48 - v8;
  v10 = sub_66D4(&qword_1226C8, &qword_DA750);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v51 = &v48 - v12;
  v13 = sub_66D4(&qword_1226D0, &qword_DA758);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v48 = &v48 - v15;
  v16 = sub_D5EC0();
  v49 = *(v16 - 8);
  v50 = v16;
  v17 = *(v49 + 64);
  __chkstk_darwin(v16);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v1;
  v21 = v1[1];
  v23 = v1[2];
  v22 = v1[3];
  v60 = *v1;
  v61 = v21;
  v62 = v23;
  v63 = v22;
  sub_66D4(&qword_1226D8, &qword_DA760);
  sub_D62E0();
  v25 = v58;
  v24 = v59;

  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v60 = v20;
    v61 = v21;
    v62 = v23;
    v63 = v22;
    sub_D62E0();
    v28 = v58;
    v27 = v59;
  }

  else
  {
    v28 = *(v2 + 80);
    v29 = *(v2 + 88);
  }

  v60 = v28;
  v61 = v27;
  sub_DFAC();
  v30 = sub_D5F50();
  v32 = v31;
  v34 = v33;
  v35 = *(v52 + 44);
  v36 = sub_D5E90();
  (*(*(v36 - 8) + 56))(v48, 1, 1, v36);
  v37 = sub_D5F30();
  (*(*(v37 - 8) + 56))(v51, 1, 1, v37);
  sub_D5EB0();
  sub_D5EA0();
  v39 = v38;
  v41 = v40;
  (*(v49 + 8))(v19, v50);
  *v9 = sub_D5B40();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v42 = sub_66D4(&qword_1226E0, &qword_DA768);
  sub_27F28(v2, &v9[*(v42 + 44)], v39, v41);
  v43 = v2;
  v44 = v55;
  sub_29890(v43, v55);
  v45 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v46 = swift_allocObject();
  sub_29A14(v44, v46 + v45);
  sub_109A8(&qword_1226E8, &qword_1226C0, &qword_DA748);
  sub_D6010();

  sub_F16C(v30, v32, v34 & 1);

  return sub_FC3C(v9, &qword_1226C0, &qword_DA748);
}

uint64_t sub_27F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v74 = a2;
  v7 = sub_66D4(&qword_1226F8, &qword_DA778);
  v72 = *(v7 - 8);
  v73 = v7;
  v8 = *(v72 + 64);
  __chkstk_darwin(v7);
  v66 = (&v61 - v9);
  v10 = sub_66D4(&qword_121238, &unk_D8E20);
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = *(v64 + 64);
  v12 = __chkstk_darwin(v10);
  v63 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v62 = &v61 - v14;
  v15 = sub_66D4(&qword_122700, &qword_DED00);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v71 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v68 = &v61 - v19;
  v20 = sub_66D4(&qword_122708, &qword_DA780);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  v23 = __chkstk_darwin(v20);
  v70 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v61 - v25;
  *v26 = sub_D5B40();
  *(v26 + 1) = 0;
  v26[16] = 0;
  v27 = &v26[*(sub_66D4(&qword_122710, &qword_DA788) + 44)];
  v67 = a1;
  sub_28638(a1, v27);
  v69 = sub_D63F0();
  v29 = v28;
  v30 = sub_D5B40();
  v75[0] = 0;
  sub_28EE0(a1, &v90, a3, a4);
  v83 = *&v91[80];
  v84 = *&v91[96];
  v85 = *&v91[112];
  v79 = *&v91[16];
  v80 = *&v91[32];
  v81 = *&v91[48];
  v82 = *&v91[64];
  v77 = v90;
  v78 = *v91;
  v86[6] = *&v91[80];
  v86[7] = *&v91[96];
  v86[8] = *&v91[112];
  v86[2] = *&v91[16];
  v86[3] = *&v91[32];
  v86[4] = *&v91[48];
  v86[5] = *&v91[64];
  v86[0] = v90;
  v86[1] = *v91;
  sub_FBD4(&v77, &v87, &qword_122718, &qword_DA790);
  sub_FC3C(v86, &qword_122718, &qword_DA790);
  *&v76[103] = v83;
  *&v76[87] = v82;
  *&v76[39] = v79;
  *&v76[23] = v78;
  *&v76[119] = v84;
  *&v76[135] = v85;
  *&v76[55] = v80;
  *&v76[71] = v81;
  *&v76[7] = v77;
  *(&v88[6] + 1) = *&v76[96];
  *(&v88[7] + 1) = *&v76[112];
  *(&v88[8] + 1) = *&v76[128];
  *(&v88[2] + 1) = *&v76[32];
  *(&v88[3] + 1) = *&v76[48];
  *(&v88[4] + 1) = *&v76[64];
  *(&v88[5] + 1) = *&v76[80];
  *(v88 + 1) = *v76;
  LOBYTE(a1) = v75[0];
  v87 = v30;
  LOBYTE(v88[0]) = v75[0];
  *(&v88[1] + 1) = *&v76[16];
  *&v88[9] = *(&v85 + 1);
  v31 = v69;
  *(&v88[9] + 1) = v69;
  v89 = v29;
  v32 = &v26[*(sub_66D4(&qword_122720, &qword_DA798) + 36)];
  v33 = v88[8];
  *(v32 + 8) = v88[7];
  *(v32 + 9) = v33;
  *(v32 + 10) = v88[9];
  v34 = v88[4];
  *(v32 + 4) = v88[3];
  *(v32 + 5) = v34;
  v35 = v88[6];
  *(v32 + 6) = v88[5];
  *(v32 + 7) = v35;
  v36 = v88[0];
  *v32 = v87;
  *(v32 + 1) = v36;
  v37 = v88[2];
  *(v32 + 2) = v88[1];
  *(v32 + 3) = v37;
  *&v91[97] = *&v76[96];
  *&v91[113] = *&v76[112];
  *v92 = *&v76[128];
  *&v91[33] = *&v76[32];
  *&v91[49] = *&v76[48];
  *&v91[65] = *&v76[64];
  *&v91[81] = *&v76[80];
  v38 = *&v76[16];
  *&v91[1] = *v76;
  *(v32 + 22) = v89;
  v90 = v30;
  v39 = v68;
  v91[0] = a1;
  *&v91[17] = v38;
  *&v92[15] = *&v76[143];
  v93 = v31;
  v94 = v29;
  sub_FBD4(&v87, v75, &qword_122728, &qword_DA7A0);
  sub_FC3C(&v90, &qword_122728, &qword_DA7A0);
  KeyPath = swift_getKeyPath();
  v41 = *(v21 + 44);
  v69 = v26;
  v42 = &v26[v41];
  v43 = *(sub_66D4(&qword_122730, &qword_DA7D8) + 28);
  v44 = enum case for LayoutDirection.leftToRight(_:);
  v45 = sub_D58B0();
  (*(*(v45 - 8) + 104))(v42 + v43, v44, v45);
  *v42 = KeyPath;
  v46 = 1;
  if (*(v67 + 72) == 1)
  {
    v47 = v62;
    sub_D5780();
    v49 = v63;
    v48 = v64;
    v50 = *(v64 + 16);
    v51 = v65;
    v50(v63, v47, v65);
    v52 = v66;
    *v66 = 0;
    *(v52 + 8) = 1;
    v53 = sub_66D4(&qword_122740, &qword_DED60);
    v50((v52 + *(v53 + 48)), v49, v51);
    v54 = *(v48 + 8);
    v54(v47, v51);
    v54(v49, v51);
    sub_29B00(v52, v39);
    v46 = 0;
  }

  (*(v72 + 56))(v39, v46, 1, v73);
  v56 = v69;
  v55 = v70;
  sub_FBD4(v69, v70, &qword_122708, &qword_DA780);
  v57 = v71;
  sub_FBD4(v39, v71, &qword_122700, &qword_DED00);
  v58 = v74;
  sub_FBD4(v55, v74, &qword_122708, &qword_DA780);
  v59 = sub_66D4(&qword_122738, &unk_DA7E0);
  sub_FBD4(v57, v58 + *(v59 + 48), &qword_122700, &qword_DED00);
  sub_FC3C(v39, &qword_122700, &qword_DED00);
  sub_FC3C(v56, &qword_122708, &qword_DA780);
  sub_FC3C(v57, &qword_122700, &qword_DED00);
  return sub_FC3C(v55, &qword_122708, &qword_DA780);
}

uint64_t sub_28638@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v80 = a2;
  v3 = sub_66D4(&qword_122758, &unk_E2E50);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v65 - v5;
  v71 = sub_66D4(&qword_121420, &qword_DA840);
  v66 = *(v71 - 8);
  v7 = *(v66 + 64);
  __chkstk_darwin(v71);
  v9 = &v65 - v8;
  v72 = sub_66D4(&qword_122760, &qword_DA848);
  v70 = *(v72 - 8);
  v10 = *(v70 + 64);
  __chkstk_darwin(v72);
  v68 = &v65 - v11;
  v74 = sub_66D4(&qword_122768, &qword_DA850);
  v69 = *(v74 - 8);
  v12 = *(v69 + 64);
  __chkstk_darwin(v74);
  v67 = &v65 - v13;
  v76 = sub_66D4(&qword_122770, &qword_DA858);
  v75 = *(v76 - 8);
  v14 = *(v75 + 64);
  __chkstk_darwin(v76);
  v73 = &v65 - v15;
  v79 = sub_66D4(&qword_122778, &qword_DA860);
  v78 = *(v79 - 8);
  v16 = *(v78 + 64);
  v17 = __chkstk_darwin(v79);
  v77 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v81 = &v65 - v19;
  v20 = *a1;
  v21 = *(a1 + 8);
  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  v93 = *a1;
  v94 = v21;
  v95 = v23;
  v96 = v22;
  sub_66D4(&qword_1226D8, &qword_DA760);
  sub_D62E0();
  v24 = v88;

  v25 = HIBYTE(*(&v24 + 1)) & 0xFLL;
  if ((*(&v24 + 1) & 0x2000000000000000) == 0)
  {
    v25 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v26 = 0;
    v27 = 0xE000000000000000;
  }

  else
  {
    v26 = *(a1 + 80);
    v28 = *(a1 + 88);
  }

  v82 = v26;
  v83 = v27;
  v93 = v20;
  v94 = v21;
  v95 = v23;
  v96 = v22;
  sub_D6310();
  sub_DFAC();
  sub_D6420();
  v29 = sub_109A8(&qword_121460, &qword_121420, &qword_DA840);
  v30 = v68;
  v31 = v71;
  sub_D6080();
  (*(v66 + 8))(v9, v31);
  sub_D5CE0();
  v32 = sub_D5CF0();
  (*(*(v32 - 8) + 56))(v6, 0, 1, v32);
  v93 = v31;
  v94 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v67;
  v35 = v72;
  sub_D60B0();
  sub_FC3C(v6, &qword_122758, &unk_E2E50);
  (*(v70 + 8))(v30, v35);
  v93 = v35;
  v94 = OpaqueTypeConformance2;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = v73;
  v38 = v74;
  sub_D5FF0();
  (*(v69 + 8))(v34, v38);
  v39 = *(a1 + 40);
  v40 = *(a1 + 48);
  LOBYTE(v93) = *(a1 + 32);
  v94 = v39;
  LOBYTE(v95) = v40;
  sub_66D4(&qword_1226F0, &qword_DA770);
  sub_D56C0();
  v93 = v38;
  v94 = v36;
  swift_getOpaqueTypeConformance2();
  v41 = v81;
  v42 = v76;
  sub_D6110();

  (*(v75 + 8))(v37, v42);
  v43 = *(a1 + 64);
  v93 = *(a1 + 56);
  v94 = v43;

  v44 = sub_D5F50();
  v46 = v45;
  LOBYTE(v37) = v47;
  v76 = v48;
  KeyPath = swift_getKeyPath();
  LODWORD(v75) = sub_D5CB0();
  v50 = v37 & 1;
  LOBYTE(v82) = v37 & 1;
  v86 = 0;
  v51 = v78;
  v52 = *(v78 + 16);
  v53 = v77;
  v54 = v79;
  v52(v77, v41, v79);
  v55 = v80;
  v52(v80, v53, v54);
  v56 = &v55[*(sub_66D4(&qword_122780, &qword_DA868) + 48)];
  *&v88 = v44;
  *(&v88 + 1) = v46;
  v57 = v46;
  LOBYTE(v89) = v50;
  *(&v89 + 1) = *v87;
  DWORD1(v89) = *&v87[3];
  v58 = v76;
  *(&v89 + 1) = v76;
  *&v90 = KeyPath;
  v59 = KeyPath;
  *(&v90 + 1) = 1;
  LOBYTE(v91) = 0;
  *(&v91 + 1) = v84;
  BYTE3(v91) = v85;
  LODWORD(KeyPath) = v75;
  HIDWORD(v91) = v75;
  v92 = 0;
  v60 = v88;
  v61 = v89;
  v62 = v91;
  *(v56 + 2) = v90;
  *(v56 + 3) = v62;
  *v56 = v60;
  *(v56 + 1) = v61;
  sub_FBD4(&v88, &v93, &qword_122788, qword_DA870);
  v63 = *(v51 + 8);
  v63(v81, v54);
  v93 = v44;
  v94 = v57;
  LOBYTE(v95) = v50;
  *(&v95 + 1) = *v87;
  HIDWORD(v95) = *&v87[3];
  v96 = v58;
  v97 = v59;
  v98 = 1;
  v99 = 0;
  v100 = v84;
  v101 = v85;
  v102 = KeyPath;
  v103 = 0;
  sub_FC3C(&v93, &qword_122788, qword_DA870);
  return (v63)(v53, v54);
}

uint64_t sub_28EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = type metadata accessor for iCloudMailTextField();
  v48 = *(v8 - 8);
  v9 = *(v48 + 64);
  __chkstk_darwin(v8 - 8);
  v49 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v62 = *a1;
  v63 = v11;
  v64 = v12;
  v65 = v13;
  sub_66D4(&qword_1226D8, &qword_DA760);
  sub_D62E0();
  v14 = v57;

  v15 = HIBYTE(*(&v14 + 1)) & 0xFLL;
  if ((*(&v14 + 1) & 0x2000000000000000) == 0)
  {
    v15 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    v62 = v10;
    v63 = v11;
    v64 = v12;
    v65 = v13;
    sub_D62E0();
    v16 = *(&v57 + 1);
    v17 = v57;
  }

  else
  {
    v17 = *(a1 + 80);
    v18 = *(a1 + 88);
  }

  v62 = v17;
  v63 = v16;
  sub_DFAC();
  v19 = sub_D5F50();
  v46 = v19;
  v47 = v20;
  v22 = v21;
  v50 = v23;
  v52 = sub_D63E0();
  v51 = v24;
  v25 = v49;
  sub_29890(a1, v49);
  v26 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v27 = (v9 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v48 = v28;
  sub_29A14(v25, v28 + v26);
  v29 = (v28 + v27);
  *v29 = a3;
  v29[1] = a4;
  LOBYTE(v28) = v22 & 1;
  v71 = v22 & 1;
  LODWORD(v49) = v22 & 1;
  v30 = *(a1 + 144);
  LOBYTE(v62) = *(a1 + 136);
  v63 = v30;
  sub_66D4(&qword_121378, &qword_DA7F0);
  sub_D6210();
  LOBYTE(v27) = v57;
  v31 = *(a1 + 64);
  v62 = *(a1 + 56);
  v63 = v31;

  v32 = sub_D5F50();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  KeyPath = swift_getKeyPath();
  v40 = sub_D5CB0();
  LOBYTE(v26) = v36 & 1;
  v56 = v36 & 1;
  v55 = 0;
  *&v57 = v19;
  v41 = v47;
  *(&v57 + 1) = v47;
  LOBYTE(v58) = v28;
  *(&v58 + 1) = v50;
  *&v59 = sub_29C9C;
  v42 = v48;
  *(&v59 + 1) = v48;
  *&v60 = v52;
  *(&v60 + 1) = v51;
  v61 = 0;
  v53 = v27 ^ 1;
  v43 = v60;
  *(a2 + 32) = v59;
  *(a2 + 48) = v43;
  v44 = v58;
  *a2 = v57;
  *(a2 + 16) = v44;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = v27;
  *(a2 + 81) = v27 ^ 1;
  *(a2 + 88) = v32;
  *(a2 + 96) = v34;
  *(a2 + 104) = v26;
  *(a2 + 112) = v38;
  *(a2 + 120) = KeyPath;
  *(a2 + 128) = 1;
  *(a2 + 136) = 0;
  *(a2 + 140) = v40;
  sub_FBD4(&v57, &v62, &qword_122748, &qword_DA828);
  sub_166E0(v32, v34, v26);

  sub_F16C(v32, v34, v26);

  v62 = v46;
  v63 = v41;
  LOBYTE(v64) = v49;
  *(&v64 + 1) = *v54;
  HIDWORD(v64) = *&v54[3];
  v65 = v50;
  v66 = sub_29C9C;
  v67 = v42;
  v68 = v52;
  v69 = v51;
  v70 = 0;
  return sub_FC3C(&v62, &qword_122748, &qword_DA828);
}

uint64_t sub_292F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v42 = a1;
  v44 = a3;
  v9 = sub_D5800();
  v10 = *(v9 - 8);
  v45 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for iCloudMailTextField();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_D6190();
  v17 = *a2;
  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  v39 = a2;
  v47 = v17;
  v48 = v18;
  v49 = v19;
  v50 = v43;
  sub_66D4(&qword_1226D8, &qword_DA760);
  sub_D62E0();
  v40 = *(&v46 + 1);
  v47 = v46;
  sub_29890(a2, v16);
  v41 = *(v10 + 16);
  v20 = v12;
  v21 = a1;
  v22 = v9;
  v36 = v9;
  v41(v12, v21, v9);
  v23 = *(v14 + 80);
  v24 = (v23 + 16) & ~v23;
  v25 = (v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = *(v10 + 80);
  v27 = (v26 + v25 + 16) & ~v26;
  v38 = v23 | v26;
  v28 = swift_allocObject();
  sub_29A14(v16, v28 + v24);
  v29 = (v28 + v25);
  *v29 = a4;
  v29[1] = a5;
  v37 = *(v10 + 32);
  v37(v28 + v27, v20, v22);
  v30 = v44;
  sub_D6150();

  sub_29890(v39, v16);
  v31 = v36;
  v41(v20, v42, v36);
  v32 = swift_allocObject();
  sub_29A14(v16, v32 + v24);
  v33 = (v32 + v25);
  *v33 = a4;
  v33[1] = a5;
  v37(v32 + v27, v20, v31);
  result = sub_66D4(&qword_122750, &unk_DA830);
  v35 = (v30 + *(result + 36));
  *v35 = sub_2A000;
  v35[1] = v32;
  v35[2] = 0;
  v35[3] = 0;
  return result;
}

uint64_t sub_29664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_D57F0();
  v5 = *(a3 + 136);
  v6 = *(a3 + 144);
  sub_66D4(&qword_121378, &qword_DA7F0);
  return sub_D6220();
}

uint64_t sub_296E0(uint64_t a1)
{
  sub_D57F0();
  v3 = *(a1 + 136);
  v4 = *(a1 + 144);
  sub_66D4(&qword_121378, &qword_DA7F0);
  return sub_D6220();
}

uint64_t sub_2975C(uint64_t a1)
{
  v2 = sub_D58B0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_D59F0();
}

uint64_t sub_29824(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  sub_66D4(&qword_1226F0, &qword_DA770);
  return sub_D56B0();
}

uint64_t sub_29890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for iCloudMailTextField();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_298F4()
{
  v1 = (type metadata accessor for iCloudMailTextField() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v0 + v3 + 40);

  v9 = *(v0 + v3 + 64);

  v10 = *(v0 + v3 + 88);

  v11 = *(v0 + v3 + 128);

  v12 = *(v0 + v3 + 144);

  v13 = v1[13];
  v14 = sub_D5EE0();
  (*(*(v14 - 8) + 8))(v0 + v3 + v13, v14);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_29A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for iCloudMailTextField();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29A78()
{
  v1 = *(type metadata accessor for iCloudMailTextField() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_29824(v2);
}

uint64_t sub_29B00(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_1226F8, &qword_DA778);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29B70()
{
  v1 = (type metadata accessor for iCloudMailTextField() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v0 + v3);
  v6 = *(v0 + v3);

  v7 = *(v5 + 1);

  v8 = *(v5 + 3);

  v9 = *(v5 + 5);

  v10 = *(v5 + 8);

  v11 = *(v5 + 11);

  v12 = *(v5 + 16);

  v13 = *(v5 + 18);

  v14 = v1[13];
  v15 = sub_D5EE0();
  (*(*(v15 - 8) + 8))(&v5[v14], v15);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_29C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for iCloudMailTextField() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_292F4(a1, v2 + v6, a2, v8, v9);
}

uint64_t sub_29D58(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for iCloudMailTextField() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_D5800() - 8);
  v9 = *(v2 + v7);
  v10 = *(v2 + v7 + 8);
  v11 = v2 + ((v7 + *(v8 + 80) + 16) & ~*(v8 + 80));

  return sub_29664(a1, a2, v2 + v6);
}

uint64_t sub_29E50()
{
  v1 = (type metadata accessor for iCloudMailTextField() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_D5800();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 16) & ~v7;
  v9 = *(v6 + 64);
  v10 = v2 | v7;
  v11 = (v0 + v3);
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = *(v11 + 3);

  v15 = *(v11 + 5);

  v16 = *(v11 + 8);

  v17 = *(v11 + 11);

  v18 = *(v11 + 16);

  v19 = *(v11 + 18);

  v20 = v1[13];
  v21 = sub_D5EE0();
  (*(*(v21 - 8) + 8))(&v11[v20], v21);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_2A000()
{
  v1 = *(type metadata accessor for iCloudMailTextField() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_D5800() - 8);
  v5 = *(v0 + v3);
  v6 = *(v0 + v3 + 8);
  v7 = v0 + ((v3 + *(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_296E0(v0 + v2);
}

uint64_t sub_2A0E0()
{
  sub_6110(&qword_1226C0, &qword_DA748);
  sub_109A8(&qword_1226E8, &qword_1226C0, &qword_DA748);
  return swift_getOpaqueTypeConformance2();
}

id sub_2A17C(uint64_t a1, uint64_t a2)
{
  sub_DFAC();
  if (sub_D6970())
  {
    return 0;
  }

  sub_14FF0();
  sub_66D4(&qword_121390, &qword_D9050);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_D8CB0;
  *(v3 + 56) = &type metadata for String;
  *(v3 + 64) = sub_F7DC();
  strcpy((v3 + 32), "^\\S+@\\S+\\.\\S+$");
  *(v3 + 47) = -18;
  v4 = sub_D6870();
  v5 = sub_D65C0();
  v6 = [v4 evaluateWithObject:{v5, 44, 0xE100000000000000, a1, a2}];

  return v6;
}

uint64_t sub_2A2C8(uint64_t a1)
{
  v2 = sub_D50A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSNumberFormatter) init];
  sub_D5090();
  isa = sub_D5080().super.isa;
  (*(v3 + 8))(v6, v2);
  [v7 setLocale:isa];

  v9 = sub_D6820().super.super.isa;
  v10 = [v7 stringFromNumber:v9];

  if (v10)
  {
    v11 = sub_D65F0();
  }

  else
  {
    v13[1] = a1;
    v11 = sub_D6C10();
  }

  return v11;
}

uint64_t sub_2A454(uint64_t a1)
{
  v2 = type metadata accessor for MSInternalSettingsView();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MAPreferencesView();
  sub_2A5C4(*(a1 + *(v6 + 24) + 8) + OBJC_IVAR____TtCV18icloudMailSettings17MAPreferencesView9ViewModel_repository, v9);
  sub_53378(v9, v5);
  sub_2A628();
  return sub_D5810();
}

uint64_t sub_2A54C@<X0>(uint64_t a1@<X8>)
{
  sub_D5B50();
  result = sub_D5F40();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2A5C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2A628()
{
  result = qword_122790;
  if (!qword_122790)
  {
    type metadata accessor for MSInternalSettingsView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122790);
  }

  return result;
}

uint64_t sub_2A680()
{
  v1 = ACAccountDataclassMail;
  v2 = v0 + qword_122798;
  v3 = *(v0 + qword_122798);
  v4 = *(v2 + 8);
  v5 = ACAccountDataclassMail;

  return v1;
}

id sub_2A6EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EndToEndEncryptionUIRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for EndToEndEncryptionUIRequest()
{
  result = qword_1227C8;
  if (!qword_1227C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2A7D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2A818(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2A874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_D6C20();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2A8FC(uint64_t a1)
{
  v2 = sub_2AAF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_2A938(uint64_t a1)
{
  v2 = sub_2AAF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_2A974@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_66D4(&qword_1229A0, &qword_DA948);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_6648(a1, a1[3]);
  sub_2AAF0();
  sub_D6CF0();
  if (v2)
  {
    return sub_67D4(a1);
  }

  v11 = sub_D6B40();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_67D4(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

unint64_t sub_2AAF0()
{
  result = qword_1229A8;
  if (!qword_1229A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1229A8);
  }

  return result;
}

unint64_t sub_2AB58()
{
  result = qword_1229B0;
  if (!qword_1229B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1229B0);
  }

  return result;
}

unint64_t sub_2ABB0()
{
  result = qword_1229B8;
  if (!qword_1229B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1229B8);
  }

  return result;
}

unint64_t sub_2AC08()
{
  result = qword_1229C0;
  if (!qword_1229C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1229C0);
  }

  return result;
}

uint64_t sub_2AC5C()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_2ACA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSSharedPreferencesAPIRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSSharedPreferencesAPIRequest()
{
  result = qword_1229F0;
  if (!qword_1229F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2AD94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();
}

double sub_2AE2C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_2AEE0(uint64_t a1, unint64_t a2, char a3, char a4)
{
  v8 = sub_D5030();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    return 0;
  }

  v14 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    return 1;
  }

  if (a4 & 1) != 0 && (v15 = v11, sub_D5020(), v16 = sub_D4FE0(), (*(v9 + 8))(v13, v15), (v16))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2B000()
{
  v0 = sub_66D4(&qword_122F60, &unk_E2B60);
  v50 = *(v0 - 8);
  v51 = v0;
  v1 = *(v50 + 64);
  v2 = __chkstk_darwin(v0);
  v49 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v48 = &v36 - v4;
  v5 = sub_66D4(&qword_122F68, &qword_DAD80);
  v6 = *(v5 - 8);
  v44 = v5;
  v45 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v42 = &v36 - v8;
  v9 = sub_66D4(&qword_122F70, &qword_DAD88);
  v10 = *(v9 - 8);
  v46 = v9;
  v47 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v43 = &v36 - v12;
  v41 = sub_66D4(&qword_122F78, &qword_DAD90);
  v13 = *(*(v41 - 8) + 64);
  v14 = __chkstk_darwin(v41);
  __chkstk_darwin(v14);
  v38 = sub_66D4(&qword_122F80, &qword_DFB50);
  v15 = *(*(v38 - 8) + 64);
  v16 = __chkstk_darwin(v38);
  __chkstk_darwin(v16);
  v39 = sub_66D4(&qword_122F88, &qword_DAD98);
  v17 = *(v39 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v39);
  v20 = &v36 - v19;
  v40 = sub_66D4(&qword_122F90, &qword_DADA0);
  v53 = *(v40 - 8);
  v21 = *(v53 + 64);
  v22 = __chkstk_darwin(v40);
  v37 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v52 = &v36 - v24;
  swift_beginAccess();
  sub_66D4(&qword_121068, &qword_DBEE0);
  sub_D5540();
  swift_endAccess();
  swift_beginAccess();
  sub_66D4(&qword_122F98, &qword_DADA8);
  sub_D5540();
  swift_endAccess();
  swift_beginAccess();
  sub_D5540();
  swift_endAccess();
  swift_beginAccess();
  sub_D5540();
  swift_endAccess();
  sub_109A8(&qword_122FA0, &qword_122F80, &qword_DFB50);
  sub_109A8(&qword_122FA8, &qword_122F78, &qword_DAD90);
  sub_D54A0();
  _s10StatusDateVMa(0);
  sub_109A8(&qword_122FB0, &qword_122F88, &qword_DAD98);
  v25 = v52;
  v26 = v39;
  sub_D55C0();
  (*(v17 + 8))(v20, v26);
  swift_beginAccess();
  sub_D5540();
  swift_endAccess();
  v27 = v40;
  (*(v53 + 16))(v37, v25, v40);
  sub_109A8(&qword_122FB8, &qword_122F90, &qword_DADA0);
  v28 = v42;
  sub_D5490();
  sub_109A8(&qword_122FC0, &qword_122F68, &qword_DAD80);
  v30 = v43;
  v29 = v44;
  sub_D55C0();
  (*(v45 + 8))(v28, v29);
  swift_beginAccess();
  sub_66D4(&qword_121948, &unk_DC5C0);
  v31 = v48;
  sub_D5540();
  swift_endAccess();
  sub_109A8(&qword_122FC8, &qword_122F70, &qword_DAD88);
  v32 = v46;
  sub_D5620();
  (*(v47 + 8))(v30, v32);
  v33 = v50;
  v34 = v51;
  (*(v50 + 16))(v49, v31, v51);
  swift_beginAccess();
  sub_D5550();
  swift_endAccess();
  (*(v33 + 8))(v31, v34);
  return (*(v53 + 8))(v52, v27);
}

uint64_t sub_2B884@<X0>(char a1@<W0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_66D4(&qword_122F48, &unk_E0DE0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = sub_D5030();
  v18 = *(v17 - 8);
  v19 = v18;
  if (a1)
  {
    (*(v18 + 16))(v16, a2, v17);
    (*(v19 + 56))(v16, 0, 1, v17);
  }

  else
  {
    (*(v18 + 56))(v16, 1, 1, v17);
  }

  v20 = sub_D5030();
  v21 = *(v20 - 8);
  if (a3)
  {
    (*(*(v20 - 8) + 16))(v14, a4, v20);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  (*(v21 + 56))(v14, v22, 1, v20);
  sub_314A0(v16, a5);
  v23 = _s10StatusDateVMa(0);
  return sub_314A0(v14, a5 + *(v23 + 20));
}

uint64_t sub_2BA74@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_66D4(&qword_122FD8, &qword_DADB8);
  v6 = a1[v5[16]];
  v7 = &a1[v5[12]];
  v8 = &a1[v5[20]];

  return sub_2B884(v4, v7, v6, v8, a2);
}

uint64_t sub_2BAE8(char a1, uint64_t a2)
{
  v186 = sub_D4F70();
  v184 = *(v186 - 8);
  v4 = *(v184 + 64);
  __chkstk_darwin(v186);
  v182 = &v173 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_D4FB0();
  v185 = *(v187 - 8);
  v6 = *(v185 + 64);
  __chkstk_darwin(v187);
  v183 = &v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_66D4(&qword_122F48, &unk_E0DE0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v173 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v173 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v173 - v17;
  __chkstk_darwin(v16);
  v20 = &v173 - v19;
  v21 = sub_D5030();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  __chkstk_darwin(v24);
  v26 = __chkstk_darwin(&v173 - v25);
  v27 = __chkstk_darwin(v26);
  v28 = __chkstk_darwin(v27);
  if (a1)
  {
    v179 = v31;
    v180 = v28;
    v178 = v32;
    v181 = v30;
    v188 = &v173 - v29;
    sub_D5020();
    sub_FBD4(a2, v20, &qword_122F48, &unk_E0DE0);
    v33 = *(v22 + 48);
    if (v33(v20, 1, v21) == 1)
    {
      v18 = v20;
      goto LABEL_7;
    }

    v38 = v21;
    v39 = v22;
    v40 = *(v22 + 32);
    v41 = v20;
    v42 = v38;
    v40(v181, v41, v38);
    v43 = _s10StatusDateVMa(0);
    sub_FBD4(a2 + *(v43 + 20), v18, &qword_122F48, &unk_E0DE0);
    if (v33(v18, 1, v42) == 1)
    {
      (*(v39 + 8))(v181, v42);
      v22 = v39;
      v21 = v42;
LABEL_7:
      sub_FC3C(v18, &qword_122F48, &unk_E0DE0);
      sub_FBD4(a2, v15, &qword_122F48, &unk_E0DE0);
      if (v33(v15, 1, v21) == 1)
      {
        sub_FC3C(v15, &qword_122F48, &unk_E0DE0);
        v44 = _s10StatusDateVMa(0);
        sub_FBD4(a2 + *(v44 + 20), v12, &qword_122F48, &unk_E0DE0);
        if (v33(v12, 1, v21) == 1)
        {
          sub_FC3C(v12, &qword_122F48, &unk_E0DE0);
          type metadata accessor for MAPreferencesViewProvider();
          ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          v46 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
          v189._countAndFlagsBits = 2777980912;
          v189._object = 0xA400000000000000;
          v193._object = 0x80000000000E7780;
          v193._countAndFlagsBits = 0xD000000000000018;
          sub_D66D0(v193);
          v194._countAndFlagsBits = 2777980912;
          v194._object = 0xA400000000000000;
          sub_D66D0(v194);
          v166._countAndFlagsBits = 0xE000000000000000;
          v195._object = 0x80000000000E7780;
          v195._countAndFlagsBits = 0xD000000000000018;
          v246.value._countAndFlagsBits = 0;
          v246.value._object = 0;
          v47.super.isa = v46;
          v37 = sub_D4E80(v195, v246, v47, v189, v166);

          (*(v22 + 8))(v188, v21);
          return v37;
        }

        (*(v22 + 32))(v178, v12, v21);
        v82 = sub_D4FE0();
        type metadata accessor for MAPreferencesViewProvider();
        v83 = swift_getObjCClassFromMetadata();
        v177 = v21;
        v84 = v83;
        v85 = objc_opt_self();
        v86 = [v85 bundleForClass:v84];
        v189._countAndFlagsBits = 2777980912;
        v189._object = 0xA400000000000000;
        if (v82)
        {
          v207._countAndFlagsBits = 0xD00000000000001ALL;
          v207._object = 0x80000000000E7760;
          sub_D66D0(v207);
          v208._countAndFlagsBits = 2777980912;
          v208._object = 0xA400000000000000;
          sub_D66D0(v208);
          v166._countAndFlagsBits = 0xE000000000000000;
          v209._countAndFlagsBits = 0xD00000000000001ALL;
          v209._object = 0x80000000000E7760;
          v250.value._countAndFlagsBits = 0;
          v250.value._object = 0;
          v87.super.isa = v86;
          v88 = sub_D4E80(v209, v250, v87, v189, v166);
          v90 = v89;

          v189._countAndFlagsBits = v88;
          v189._object = v90;

          v210._countAndFlagsBits = 32;
          v210._object = 0xE100000000000000;
          sub_D66D0(v210);

          countAndFlagsBits = v189._countAndFlagsBits;
          object = v189._object;
          v93 = [v85 bundleForClass:v84];
          v189._countAndFlagsBits = 2777980912;
          v189._object = 0xA400000000000000;
          v211._countAndFlagsBits = 0xD00000000000001FLL;
          v211._object = 0x80000000000E77C0;
          sub_D66D0(v211);
          v212._countAndFlagsBits = 2777980912;
          v212._object = 0xA400000000000000;
          sub_D66D0(v212);
          v168._countAndFlagsBits = 0xE000000000000000;
          v213._countAndFlagsBits = 0xD00000000000001FLL;
          v213._object = 0x80000000000E77C0;
          v251.value._countAndFlagsBits = 0;
          v251.value._object = 0;
          v94.super.isa = v93;
          v95 = sub_D4E80(v213, v251, v94, v189, v168);
          v97 = v96;

          v189._countAndFlagsBits = countAndFlagsBits;
          v189._object = object;

          v98._countAndFlagsBits = v95;
          v98._object = v97;
        }

        else
        {
          v230._object = 0x80000000000E7780;
          v230._countAndFlagsBits = 0xD000000000000018;
          sub_D66D0(v230);
          v231._countAndFlagsBits = 2777980912;
          v231._object = 0xA400000000000000;
          sub_D66D0(v231);
          v166._countAndFlagsBits = 0xE000000000000000;
          v232._object = 0x80000000000E7780;
          v232._countAndFlagsBits = 0xD000000000000018;
          v256.value._countAndFlagsBits = 0;
          v256.value._object = 0;
          v131.super.isa = v86;
          v132 = sub_D4E80(v232, v256, v131, v189, v166);
          v134 = v133;

          v189._countAndFlagsBits = v132;
          v189._object = v134;

          v233._countAndFlagsBits = 32;
          v233._object = 0xE100000000000000;
          sub_D66D0(v233);

          v135 = v189._object;
          v181 = v189._countAndFlagsBits;
          sub_66D4(&qword_121390, &qword_D9050);
          v136 = swift_allocObject();
          *(v136 + 16) = xmmword_D8CB0;
          v137 = v183;
          sub_D4F80();
          v138 = v182;
          sub_D4F60();
          v139 = sub_D5010();
          v141 = v140;
          (*(v184 + 8))(v138, v186);
          (*(v185 + 8))(v137, v187);
          *(v136 + 56) = &type metadata for String;
          *(v136 + 64) = sub_F7DC();
          *(v136 + 32) = v139;
          *(v136 + 40) = v141;
          v142 = [v85 bundleForClass:v84];
          v189._countAndFlagsBits = 2777980912;
          v189._object = 0xA400000000000000;
          v234._countAndFlagsBits = 0xD00000000000001ALL;
          v234._object = 0x80000000000E77A0;
          sub_D66D0(v234);
          v235._countAndFlagsBits = 2777980912;
          v235._object = 0xA400000000000000;
          sub_D66D0(v235);
          v171._countAndFlagsBits = 0xE000000000000000;
          v236._countAndFlagsBits = 0xD00000000000001ALL;
          v236._object = 0x80000000000E77A0;
          v257.value._countAndFlagsBits = 0;
          v257.value._object = 0;
          v143.super.isa = v142;
          sub_D4E80(v236, v257, v143, v189, v171);

          v144 = sub_D6610();
          v146 = v145;

          v189._countAndFlagsBits = v181;
          v189._object = v135;

          v98._countAndFlagsBits = v144;
          v98._object = v146;
        }

        sub_D66D0(v98);

        v37 = v189._countAndFlagsBits;
        v55 = *(v22 + 8);
        v21 = v177;
        v55(v178, v177);
      }

      else
      {
        v48 = v180;
        (*(v22 + 32))(v180, v15, v21);
        v49 = v188;
        v50 = sub_D4FE0();
        type metadata accessor for MAPreferencesViewProvider();
        v51 = swift_getObjCClassFromMetadata();
        v52 = objc_opt_self();
        v53 = [v52 bundleForClass:v51];
        if (v50)
        {
          v189._countAndFlagsBits = 2777980912;
          v189._object = 0xA400000000000000;
          v196._object = 0x80000000000E7780;
          v196._countAndFlagsBits = 0xD000000000000018;
          sub_D66D0(v196);
          v197._countAndFlagsBits = 2777980912;
          v197._object = 0xA400000000000000;
          sub_D66D0(v197);
          v166._countAndFlagsBits = 0xE000000000000000;
          v198._object = 0x80000000000E7780;
          v198._countAndFlagsBits = 0xD000000000000018;
          v247.value._countAndFlagsBits = 0;
          v247.value._object = 0;
          v54.super.isa = v53;
          v37 = sub_D4E80(v198, v247, v54, v189, v166);

          v55 = *(v22 + 8);
          v55(v48, v21);
          v56 = v49;
LABEL_23:
          v55(v56, v21);
          return v37;
        }

        v189._countAndFlagsBits = 2777980912;
        v189._object = 0xA400000000000000;
        v214._countAndFlagsBits = 0xD00000000000001BLL;
        v214._object = 0x80000000000E77E0;
        sub_D66D0(v214);
        v215._countAndFlagsBits = 2777980912;
        v215._object = 0xA400000000000000;
        sub_D66D0(v215);
        v166._countAndFlagsBits = 0xE000000000000000;
        v216._countAndFlagsBits = 0xD00000000000001BLL;
        v216._object = 0x80000000000E77E0;
        v252.value._countAndFlagsBits = 0;
        v252.value._object = 0;
        v99.super.isa = v53;
        v100 = sub_D4E80(v216, v252, v99, v189, v166);
        v102 = v101;

        v189._countAndFlagsBits = v100;
        v189._object = v102;

        v217._countAndFlagsBits = 32;
        v217._object = 0xE100000000000000;
        sub_D66D0(v217);

        v181 = v189._countAndFlagsBits;
        v179 = v189._object;
        sub_66D4(&qword_121390, &qword_D9050);
        v103 = swift_allocObject();
        *(v103 + 16) = xmmword_D8CB0;
        v104 = v183;
        sub_D4F80();
        v105 = v182;
        sub_D4F60();
        v106 = sub_D5010();
        v108 = v107;
        (*(v184 + 8))(v105, v186);
        (*(v185 + 8))(v104, v187);
        *(v103 + 56) = &type metadata for String;
        *(v103 + 64) = sub_F7DC();
        *(v103 + 32) = v106;
        *(v103 + 40) = v108;
        v109 = [v52 bundleForClass:v51];
        v189._countAndFlagsBits = 2777980912;
        v189._object = 0xA400000000000000;
        v218._object = 0x80000000000E7800;
        v218._countAndFlagsBits = 0xD000000000000018;
        sub_D66D0(v218);
        v219._countAndFlagsBits = 2777980912;
        v219._object = 0xA400000000000000;
        sub_D66D0(v219);
        v169._countAndFlagsBits = 0xE000000000000000;
        v220._object = 0x80000000000E7800;
        v220._countAndFlagsBits = 0xD000000000000018;
        v253.value._countAndFlagsBits = 0;
        v253.value._object = 0;
        v110.super.isa = v109;
        sub_D4E80(v220, v253, v110, v189, v169);

        v111 = sub_D6610();
        v113 = v112;

        v189._countAndFlagsBits = v181;
        v189._object = v179;

        v221._countAndFlagsBits = v111;
        v221._object = v113;
        sub_D66D0(v221);

        v37 = v189._countAndFlagsBits;
        v55 = *(v22 + 8);
        v55(v180, v21);
      }

      v56 = v188;
      goto LABEL_23;
    }

    v180 = v39;
    v40(v179, v18, v42);
    v57 = sub_D4FE0();
    v177 = v42;
    if (v57)
    {
      type metadata accessor for MAPreferencesViewProvider();
      v58 = swift_getObjCClassFromMetadata();
      v178 = v58;
      v176 = objc_opt_self();
      v59 = [v176 bundleForClass:v58];
      v189._countAndFlagsBits = 2777980912;
      v189._object = 0xA400000000000000;
      v199._countAndFlagsBits = 0xD00000000000001BLL;
      v199._object = 0x80000000000E77E0;
      sub_D66D0(v199);
      v200._countAndFlagsBits = 2777980912;
      v200._object = 0xA400000000000000;
      sub_D66D0(v200);
      v166._countAndFlagsBits = 0xE000000000000000;
      v201._countAndFlagsBits = 0xD00000000000001BLL;
      v201._object = 0x80000000000E77E0;
      v248.value._countAndFlagsBits = 0;
      v248.value._object = 0;
      v60.super.isa = v59;
      v61 = sub_D4E80(v201, v248, v60, v189, v166);
      v63 = v62;

      v189._countAndFlagsBits = v61;
      v189._object = v63;

      v202._countAndFlagsBits = 32;
      v202._object = 0xE100000000000000;
      sub_D66D0(v202);

      v174 = v189._object;
      v175 = v189._countAndFlagsBits;
      v173 = "AUTO_REPLY_STATUS_FUTURE";
      sub_66D4(&qword_121390, &qword_D9050);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_DA270;
      v65 = v183;
      sub_D4F80();
      v66 = v182;
      sub_D4F60();
      v67 = sub_D5010();
      v69 = v68;
      v184 = *(v184 + 8);
      v70 = v186;
      (v184)(v66, v186);
      v185 = *(v185 + 8);
      v71 = v187;
      (v185)(v65, v187);
      *(v64 + 56) = &type metadata for String;
      v72 = sub_F7DC();
      *(v64 + 64) = v72;
      *(v64 + 32) = v67;
      *(v64 + 40) = v69;
      sub_D4F80();
      sub_D4F60();
      v73 = sub_D5010();
      v75 = v74;
      (v184)(v66, v70);
      (v185)(v65, v71);
      *(v64 + 96) = &type metadata for String;
      *(v64 + 104) = v72;
      *(v64 + 72) = v73;
      *(v64 + 80) = v75;
      v76 = [v176 bundleForClass:v178];
      v189._countAndFlagsBits = 2777980912;
      v189._object = 0xA400000000000000;
      v203._countAndFlagsBits = 0xD000000000000026;
      v77 = v173;
      v203._object = (v173 | 0x8000000000000000);
      sub_D66D0(v203);
      v204._countAndFlagsBits = 2777980912;
      v204._object = 0xA400000000000000;
      sub_D66D0(v204);
      v167._countAndFlagsBits = 0xE000000000000000;
      v205._countAndFlagsBits = 0xD000000000000026;
      v205._object = (v77 | 0x8000000000000000);
      v249.value._countAndFlagsBits = 0;
      v249.value._object = 0;
      v78.super.isa = v76;
      sub_D4E80(v205, v249, v78, v189, v167);

      v79 = sub_D6610();
      v81 = v80;

      v189._countAndFlagsBits = v175;
      v189._object = v174;

      v206._countAndFlagsBits = v79;
      v206._object = v81;
      sub_D66D0(v206);
    }

    else
    {
      v114 = sub_D4FE0();
      type metadata accessor for MAPreferencesViewProvider();
      v115 = swift_getObjCClassFromMetadata();
      v116 = objc_opt_self();
      v117 = [v116 bundleForClass:v115];
      if ((v114 & 1) == 0)
      {
        v189._countAndFlagsBits = 2777980912;
        v189._object = 0xA400000000000000;
        v237._object = 0x80000000000E7780;
        v237._countAndFlagsBits = 0xD000000000000018;
        sub_D66D0(v237);
        v238._countAndFlagsBits = 2777980912;
        v238._object = 0xA400000000000000;
        sub_D66D0(v238);
        v166._countAndFlagsBits = 0xE000000000000000;
        v239._object = 0x80000000000E7780;
        v239._countAndFlagsBits = 0xD000000000000018;
        v258.value._countAndFlagsBits = 0;
        v258.value._object = 0;
        v147.super.isa = v117;
        v148 = sub_D4E80(v239, v258, v147, v189, v166);
        v150 = v149;

        v189._countAndFlagsBits = v148;
        v189._object = v150;

        v240._countAndFlagsBits = 32;
        v240._object = 0xE100000000000000;
        sub_D66D0(v240);

        v151 = v189._object;
        v178 = v189._countAndFlagsBits;
        sub_66D4(&qword_121390, &qword_D9050);
        v152 = swift_allocObject();
        *(v152 + 16) = xmmword_D8CB0;
        v153 = v183;
        sub_D4F80();
        v154 = v182;
        sub_D4F60();
        v155 = v179;
        v156 = sub_D5010();
        v158 = v157;
        (*(v184 + 8))(v154, v186);
        (*(v185 + 8))(v153, v187);
        *(v152 + 56) = &type metadata for String;
        *(v152 + 64) = sub_F7DC();
        *(v152 + 32) = v156;
        *(v152 + 40) = v158;
        v159 = [v116 bundleForClass:v115];
        v189._countAndFlagsBits = 2777980912;
        v189._object = 0xA400000000000000;
        v241._countAndFlagsBits = 0xD00000000000001ALL;
        v241._object = 0x80000000000E77A0;
        sub_D66D0(v241);
        v242._countAndFlagsBits = 2777980912;
        v242._object = 0xA400000000000000;
        sub_D66D0(v242);
        v172._countAndFlagsBits = 0xE000000000000000;
        v243._countAndFlagsBits = 0xD00000000000001ALL;
        v243._object = 0x80000000000E77A0;
        v259.value._countAndFlagsBits = 0;
        v259.value._object = 0;
        v160.super.isa = v159;
        sub_D4E80(v243, v259, v160, v189, v172);

        v161 = sub_D6610();
        v163 = v162;

        v189._countAndFlagsBits = v178;
        v189._object = v151;

        v244._countAndFlagsBits = v161;
        v244._object = v163;
        sub_D66D0(v244);

        v37 = v189._countAndFlagsBits;
        v130 = *(v180 + 8);
        v129 = v155;
        goto LABEL_25;
      }

      v189._countAndFlagsBits = 2777980912;
      v189._object = 0xA400000000000000;
      v222._countAndFlagsBits = 0xD00000000000001ALL;
      v222._object = 0x80000000000E7760;
      sub_D66D0(v222);
      v223._countAndFlagsBits = 2777980912;
      v223._object = 0xA400000000000000;
      sub_D66D0(v223);
      v166._countAndFlagsBits = 0xE000000000000000;
      v224._countAndFlagsBits = 0xD00000000000001ALL;
      v224._object = 0x80000000000E7760;
      v254.value._countAndFlagsBits = 0;
      v254.value._object = 0;
      v118.super.isa = v117;
      v119 = sub_D4E80(v224, v254, v118, v189, v166);
      v121 = v120;

      v189._countAndFlagsBits = v119;
      v189._object = v121;

      v225._countAndFlagsBits = 32;
      v225._object = 0xE100000000000000;
      sub_D66D0(v225);

      v123 = v189._countAndFlagsBits;
      v122 = v189._object;
      v124 = [v116 bundleForClass:v115];
      v189._countAndFlagsBits = 2777980912;
      v189._object = 0xA400000000000000;
      v226._countAndFlagsBits = 0xD00000000000001FLL;
      v226._object = 0x80000000000E77C0;
      sub_D66D0(v226);
      v227._countAndFlagsBits = 2777980912;
      v227._object = 0xA400000000000000;
      sub_D66D0(v227);
      v170._countAndFlagsBits = 0xE000000000000000;
      v228._countAndFlagsBits = 0xD00000000000001FLL;
      v228._object = 0x80000000000E77C0;
      v255.value._countAndFlagsBits = 0;
      v255.value._object = 0;
      v125.super.isa = v124;
      v126 = sub_D4E80(v228, v255, v125, v189, v170);
      v128 = v127;

      v189._countAndFlagsBits = v123;
      v189._object = v122;

      v229._countAndFlagsBits = v126;
      v229._object = v128;
      sub_D66D0(v229);
    }

    v37 = v189._countAndFlagsBits;
    v129 = v179;
    v130 = *(v180 + 8);
LABEL_25:
    v164 = v177;
    v130(v129, v177);
    v130(v181, v164);
    v130(v188, v164);
    return v37;
  }

  type metadata accessor for MAPreferencesViewProvider();
  v34 = swift_getObjCClassFromMetadata();
  v35 = [objc_opt_self() bundleForClass:v34];
  v189._countAndFlagsBits = 2777980912;
  v189._object = 0xA400000000000000;
  v190._countAndFlagsBits = 0xD00000000000001ALL;
  v190._object = 0x80000000000E7760;
  sub_D66D0(v190);
  v191._countAndFlagsBits = 2777980912;
  v191._object = 0xA400000000000000;
  sub_D66D0(v191);
  v166._countAndFlagsBits = 0xE000000000000000;
  v192._countAndFlagsBits = 0xD00000000000001ALL;
  v192._object = 0x80000000000E7760;
  v245.value._countAndFlagsBits = 0;
  v245.value._object = 0;
  v36.super.isa = v35;
  v37 = sub_D4E80(v192, v245, v36, v189, v166);

  return v37;
}

uint64_t sub_2D12C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = sub_66D4(&qword_122FD0, &qword_DADB0);
  result = sub_2BAE8(v4, &a1[*(v5 + 48)]);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_2D184(uint64_t (*a1)(void), uint64_t a2)
{
  v93 = a1;
  v94 = a2;
  v2 = sub_D5030();
  v97 = *(v2 - 8);
  v98 = v2;
  v3 = *(v97 + 64);
  __chkstk_darwin(v2);
  v5 = &v82[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_D5340();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v86 = &v82[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v85 = &v82[-v12];
  __chkstk_darwin(v11);
  v14 = &v82[-v13];
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v15 = sub_6610(v6, qword_137988);
  v16 = v7[2];
  v87 = v15;
  v88 = v16;
  v89 = v7 + 2;
  v16(v14);
  v17 = sub_D5320();
  v18 = sub_D68A0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "[Auto Reply] update started", v19, 2u);
  }

  v20 = v7[1];
  v91 = v7 + 1;
  v92 = v6;
  v90 = v20;
  v20(v14, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = v99;
  sub_D5570();

  v101 = v121;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v121 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v22 = [objc_allocWithZone(NSISO8601DateFormatter) init];
    [v22 setFormatOptions:3955];
    isa = sub_D4FD0().super.isa;
    v24 = [v22 stringFromDate:isa];

    v100 = sub_D65F0();
    v95 = v25;

    v21 = v99;
    (*(v97 + 8))(v5, v98);
  }

  else
  {
    v100 = 0;
    v95 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v121 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v26 = [objc_allocWithZone(NSISO8601DateFormatter) init];
    [v26 setFormatOptions:3955];
    v27 = sub_D4FD0().super.isa;
    v28 = [v26 stringFromDate:v27];

    v29 = sub_D65F0();
    v31 = v30;

    v21 = v99;
    (*(v97 + 8))(v5, v98);
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  v32 = v122;
  LOBYTE(v110) = v101;
  v33 = v95;
  *(&v110 + 1) = v100;
  *&v111 = v95;
  v96 = v121;
  v97 = v29;
  *(&v111 + 1) = v29;
  *&v112 = v31;
  *(&v112 + 1) = v121;
  v113 = v122;
  v34 = *(v21 + OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel_autoReply);
  v98 = v31;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_D54F0();
  v35 = v103;
  v36 = v104;
  v37 = v105;
  if (v33 == 1)
  {
    if (v105 == 1)
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      sub_31650(v101, v100, 1);
LABEL_21:
      v77 = v92;
      v78 = v85;
      v88(v85, v87, v92);
      v79 = sub_D5320();
      v80 = sub_D68A0();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_0, v79, v80, "[Auto Reply] update - no change detected, skipping", v81, 2u);
      }

      v90(v78, v77);
      return v93(0);
    }

    goto LABEL_15;
  }

  if (v105 == 1)
  {
LABEL_15:
    v85 = v109;
    v38 = v33;
    v39 = v32;
    v40 = v98;
    sub_31650(v101, v100, v38);
    v41 = v37;
    v42 = v40;
    v43 = v39;
    sub_31650(v35, v36, v41);
    goto LABEL_16;
  }

  LOBYTE(v121) = v103;
  v122 = v104;
  v123 = v105;
  v124 = v106;
  v125 = v107;
  v126 = v108;
  v127 = v109;
  v114[0] = v101;
  v115 = v100;
  v116 = v33;
  v84 = v32;
  v75 = v98;
  v117 = v97;
  v118 = v98;
  v119 = v96;
  v120 = v84;

  sub_3189C(v35, v36, v37);
  v83 = sub_30884(v114, &v121);
  sub_31650(v35, v36, v37);
  v76 = v37;
  v42 = v75;
  v43 = v84;
  sub_31650(v35, v36, v76);

  sub_31650(v101, v100, v33);
  if (v83)
  {
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    goto LABEL_21;
  }

LABEL_16:
  v44 = v86;
  v45 = v92;
  v88(v86, v87, v92);

  v46 = sub_D5320();
  v47 = sub_D68A0();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v103 = v49;
    *v48 = 136315138;
    v50 = sub_2DE30();
    v52 = sub_558F0(v50, v51, &v103);

    *(v48 + 4) = v52;
    _os_log_impl(&dword_0, v46, v47, "[Auto Reply] update - %s", v48, 0xCu);
    sub_67D4(v49);

    v42 = v98;
  }

  v90(v44, v45);
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v103) = 1;
  v53 = v99;

  sub_D5580();
  v54 = sub_6648((v53 + OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel_repository), *(v53 + OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel_repository + 24));
  v55 = *(*v54 + 16);
  v56 = *(*v54 + 24);
  v106 = &type metadata for ServerPreference;
  v107 = sub_316F4();
  v57 = swift_allocObject();
  v103 = v57;
  *(v57 + 16) = 2;
  *(v57 + 24) = 0;
  *(v57 + 32) = 0;
  *(v57 + 40) = 2;
  v58 = v100;
  *(v57 + 48) = v101;
  *(v57 + 56) = v58;
  v59 = v96;
  v60 = v97;
  *(v57 + 64) = v95;
  *(v57 + 72) = v60;
  *(v57 + 80) = v42;
  *(v57 + 88) = v59;
  *(v57 + 96) = v43;
  v61 = objc_allocWithZone(type metadata accessor for MSUpdateServerPreferenceAPI());
  sub_FBD4(&v103, v102, &qword_121F30, &unk_DC820);
  v62 = v55;
  v63 = v56;
  v64 = sub_45BC4(v55, v63, v102);

  sub_FC3C(&v103, &qword_121F30, &unk_DC820);
  v65 = sub_1EB80();

  v103 = v65;
  v66 = swift_allocObject();
  swift_weakInit();
  v67 = swift_allocObject();
  v68 = v111;
  *(v67 + 16) = v110;
  *(v67 + 32) = v68;
  *(v67 + 48) = v112;
  *(v67 + 64) = v113;
  *(v67 + 72) = v66;
  v69 = swift_allocObject();
  swift_weakInit();
  v70 = swift_allocObject();
  *(v70 + 16) = v69;
  v71 = v111;
  *(v70 + 24) = v110;
  *(v70 + 40) = v71;
  *(v70 + 56) = v112;
  v72 = v93;
  v73 = v94;
  *(v70 + 72) = v113;
  *(v70 + 80) = v72;
  *(v70 + 88) = v73;

  sub_66D4(&qword_121F38, &qword_D9CA0);
  sub_109A8(&qword_121F40, &qword_121F38, &qword_D9CA0);
  sub_D55D0();

  swift_beginAccess();
  sub_D54B0();
  swift_endAccess();
}

uint64_t sub_2DE30()
{
  v178 = sub_D4F70();
  v175 = *(v178 - 8);
  v1 = *(v175 + 64);
  __chkstk_darwin(v178);
  v176 = &v163 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_D4FB0();
  v174 = *(v179 - 8);
  v3 = *(v174 + 64);
  __chkstk_darwin(v179);
  v177 = &v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_D5110();
  v172 = *(v5 - 8);
  v173 = v5;
  v6 = *(v172 + 64);
  __chkstk_darwin(v5);
  v171 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_D5030();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v167 = &v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v181 = &v163 - v14;
  v15 = __chkstk_darwin(v13);
  v170 = &v163 - v16;
  v17 = __chkstk_darwin(v15);
  v180 = &v163 - v18;
  __chkstk_darwin(v17);
  v20 = &v163 - v19;
  v21 = sub_66D4(&qword_122F48, &unk_E0DE0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v24 = __chkstk_darwin(v23);
  v26 = &v163 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v163 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v163 - v31;
  v33 = __chkstk_darwin(v30);
  v35 = &v163 - v34;
  v36 = __chkstk_darwin(v33);
  v37 = __chkstk_darwin(v36);
  v39 = &v163 - v38;
  __chkstk_darwin(v37);
  v43 = *v0;
  if (v43 == 2 || (v43 & 1) == 0)
  {
    type metadata accessor for MAPreferencesViewProvider();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v51 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    v182._countAndFlagsBits = 2777980912;
    v182._object = 0xA400000000000000;
    v183._countAndFlagsBits = 4605519;
    v183._object = 0xE300000000000000;
    sub_D66D0(v183);
    v184._countAndFlagsBits = 2777980912;
    v184._object = 0xA400000000000000;
    sub_D66D0(v184);
    v162._countAndFlagsBits = 0xE000000000000000;
    v185._countAndFlagsBits = 4605519;
    v185._object = 0xE300000000000000;
    v210.value._countAndFlagsBits = 0;
    v210.value._object = 0;
    v52.super.isa = v51;
    v53 = sub_D4E80(v185, v210, v52, v182, v162);

    return v53;
  }

  v164 = v41;
  v165 = v20;
  v163 = v42;
  v168 = v8;
  v169 = &v163 - v40;
  v44 = v0[2];
  v166 = v9;
  if (v44)
  {
    v45 = v0[1];
    v46 = [objc_allocWithZone(NSISO8601DateFormatter) init];
    [v46 setFormatOptions:3955];
    v47 = sub_D65C0();
    v48 = [v46 dateFromString:v47];

    if (v48)
    {
      sub_D5000();

      v9 = v166;
      v49 = *(v166 + 56);
      v49(v39, 0, 1, v168);
    }

    else
    {
      v9 = v166;
      v49 = *(v166 + 56);
      v49(v39, 1, 1, v168);
    }

    v55 = v165;
    sub_314A0(v39, v169);
  }

  else
  {
    v49 = *(v9 + 56);
    v49(v169, 1, 1, v168);
    v55 = v165;
  }

  if (v0[4])
  {
    v56 = v0[3];
    v57 = [objc_allocWithZone(NSISO8601DateFormatter) init];
    [v57 setFormatOptions:3955];
    v58 = sub_D65C0();
    v59 = [v57 dateFromString:v58];

    if (v59)
    {
      sub_D5000();

      v60 = 0;
    }

    else
    {
      v60 = 1;
    }

    v9 = v166;
    v62 = v168;
    v49(v35, v60, 1, v168);
    v63 = v164;
    sub_314A0(v35, v164);
  }

  else
  {
    v61 = v164;
    v62 = v168;
    v49(v164, 1, 1, v168);
    v63 = v61;
  }

  sub_D5020();
  sub_FBD4(v169, v32, &qword_122F48, &unk_E0DE0);
  v64 = *(v9 + 48);
  if (v64(v32, 1, v62) == 1)
  {
    v29 = v32;
LABEL_20:
    sub_FC3C(v29, &qword_122F48, &unk_E0DE0);
    v68 = v169;
    sub_FBD4(v169, v26, &qword_122F48, &unk_E0DE0);
    v69 = v168;
    if (v64(v26, 1, v168) == 1)
    {
      sub_FC3C(v26, &qword_122F48, &unk_E0DE0);
      v70 = v163;
      sub_FBD4(v63, v163, &qword_122F48, &unk_E0DE0);
      if (v64(v70, 1, v69) == 1)
      {
        sub_FC3C(v70, &qword_122F48, &unk_E0DE0);
        type metadata accessor for MAPreferencesViewProvider();
        v71 = swift_getObjCClassFromMetadata();
        v72 = [objc_opt_self() bundleForClass:v71];
        v182._countAndFlagsBits = 2777980912;
        v182._object = 0xA400000000000000;
        v186._countAndFlagsBits = 20047;
        v186._object = 0xE200000000000000;
        sub_D66D0(v186);
        v187._countAndFlagsBits = 2777980912;
        v187._object = 0xA400000000000000;
        sub_D66D0(v187);
        v162._countAndFlagsBits = 0xE000000000000000;
        v188._countAndFlagsBits = 20047;
        v188._object = 0xE200000000000000;
        v211.value._countAndFlagsBits = 0;
        v211.value._object = 0;
        v73.super.isa = v72;
        v74 = sub_D4E80(v188, v211, v73, v182, v162);

        (*(v166 + 8))(v55, v69);
LABEL_38:
        sub_FC3C(v63, &qword_122F48, &unk_E0DE0);
        v129 = v68;
        goto LABEL_47;
      }

      v103 = v166;
      v104 = v167;
      (*(v166 + 32))(v167, v70, v69);
      if ((sub_D4FE0() & 1) == 0)
      {
        v135 = v103;
        type metadata accessor for MAPreferencesViewProvider();
        v136 = swift_getObjCClassFromMetadata();
        v137 = [objc_opt_self() bundleForClass:v136];
        v182._countAndFlagsBits = 2777980912;
        v182._object = 0xA400000000000000;
        v198._object = 0x80000000000E7700;
        v198._countAndFlagsBits = 0xD000000000000018;
        sub_D66D0(v198);
        v199._countAndFlagsBits = 2777980912;
        v199._object = 0xA400000000000000;
        sub_D66D0(v199);
        v162._countAndFlagsBits = 0xE000000000000000;
        v200._object = 0x80000000000E7700;
        v200._countAndFlagsBits = 0xD000000000000018;
        v215.value._countAndFlagsBits = 0;
        v215.value._object = 0;
        v138.super.isa = v137;
        v74 = sub_D4E80(v200, v215, v138, v182, v162);

        v139 = *(v135 + 8);
        v139(v104, v69);
        v139(v55, v69);
        goto LABEL_38;
      }

      v105 = v171;
      sub_D5100();
      v106 = sub_D50B0();
      (*(v172 + 8))(v105, v173);
      sub_66D4(&qword_121390, &qword_D9050);
      v107 = swift_allocObject();
      *(v107 + 16) = xmmword_D8CB0;
      v108 = (v175 + 8);
      v109 = (v174 + 8);
      v110 = v177;
      if (v106)
      {
        sub_D4FA0();
        v111 = v176;
        sub_D4F60();
      }

      else
      {
        sub_D4F80();
        v111 = v176;
        sub_D4F50();
      }

      v112 = sub_D5010();
      v114 = v113;
      (*v108)(v111, v178);
      (*v109)(v110, v179);
      *(v107 + 56) = &type metadata for String;
      *(v107 + 64) = sub_F7DC();
      *(v107 + 32) = v112;
      *(v107 + 40) = v114;
      type metadata accessor for MAPreferencesViewProvider();
      v115 = swift_getObjCClassFromMetadata();
      v156 = [objc_opt_self() bundleForClass:v115];
      v182._countAndFlagsBits = 2777980912;
      v182._object = 0xA400000000000000;
      v204._object = 0x80000000000E7720;
      v204._countAndFlagsBits = 0xD000000000000016;
      sub_D66D0(v204);
      v205._countAndFlagsBits = 2777980912;
      v205._object = 0xA400000000000000;
      sub_D66D0(v205);
      v162._countAndFlagsBits = 0xE000000000000000;
      v206._object = 0x80000000000E7720;
      v206._countAndFlagsBits = 0xD000000000000016;
      v217.value._countAndFlagsBits = 0;
      v217.value._object = 0;
      v157.super.isa = v156;
      sub_D4E80(v206, v217, v157, v182, v162);

      v74 = sub_D6610();

      v132 = *(v166 + 8);
      v133 = v168;
      v132(v167, v168);
      v134 = v165;
    }

    else
    {
      v75 = v166;
      v76 = v181;
      (*(v166 + 32))(v181, v26, v69);
      if ((sub_D4FE0() & 1) == 0)
      {
        type metadata accessor for MAPreferencesViewProvider();
        v116 = swift_getObjCClassFromMetadata();
        v117 = [objc_opt_self() bundleForClass:v116];
        v182._countAndFlagsBits = 2777980912;
        v182._object = 0xA400000000000000;
        v189._countAndFlagsBits = 20047;
        v189._object = 0xE200000000000000;
        sub_D66D0(v189);
        v190._countAndFlagsBits = 2777980912;
        v190._object = 0xA400000000000000;
        sub_D66D0(v190);
        v162._countAndFlagsBits = 0xE000000000000000;
        v191._countAndFlagsBits = 20047;
        v191._object = 0xE200000000000000;
        v212.value._countAndFlagsBits = 0;
        v212.value._object = 0;
        v118.super.isa = v117;
        v74 = sub_D4E80(v191, v212, v118, v182, v162);

        v119 = *(v75 + 8);
        v119(v76, v69);
        v119(v55, v69);
        goto LABEL_38;
      }

      v77 = v171;
      sub_D5100();
      v78 = sub_D50B0();
      (*(v172 + 8))(v77, v173);
      sub_66D4(&qword_121390, &qword_D9050);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_D8CB0;
      v80 = (v175 + 8);
      v81 = (v174 + 8);
      v82 = v177;
      if (v78)
      {
        sub_D4FA0();
        v83 = v176;
        sub_D4F60();
      }

      else
      {
        sub_D4F80();
        v83 = v176;
        sub_D4F50();
      }

      v84 = sub_D5010();
      v86 = v85;
      (*v80)(v83, v178);
      (*v81)(v82, v179);
      *(v79 + 56) = &type metadata for String;
      *(v79 + 64) = sub_F7DC();
      *(v79 + 32) = v84;
      *(v79 + 40) = v86;
      type metadata accessor for MAPreferencesViewProvider();
      v87 = swift_getObjCClassFromMetadata();
      v130 = [objc_opt_self() bundleForClass:v87];
      v182._countAndFlagsBits = 2777980912;
      v182._object = 0xA400000000000000;
      v195._object = 0x80000000000E7740;
      v195._countAndFlagsBits = 0xD000000000000018;
      sub_D66D0(v195);
      v196._countAndFlagsBits = 2777980912;
      v196._object = 0xA400000000000000;
      sub_D66D0(v196);
      v162._countAndFlagsBits = 0xE000000000000000;
      v197._object = 0x80000000000E7740;
      v197._countAndFlagsBits = 0xD000000000000018;
      v214.value._countAndFlagsBits = 0;
      v214.value._object = 0;
      v131.super.isa = v130;
      sub_D4E80(v197, v214, v131, v182, v162);

      v74 = sub_D6610();

      v132 = *(v166 + 8);
      v133 = v168;
      v132(v181, v168);
      v134 = v55;
    }

    v132(v134, v133);
    v144 = v63;
LABEL_46:
    sub_FC3C(v144, &qword_122F48, &unk_E0DE0);
    v129 = v169;
    goto LABEL_47;
  }

  v65 = v180;
  v66 = v32;
  v67 = *(v9 + 32);
  v67(v180, v66, v62);
  sub_FBD4(v63, v29, &qword_122F48, &unk_E0DE0);
  if (v64(v29, 1, v62) == 1)
  {
    (*(v9 + 8))(v65, v62);
    v63 = v164;
    v55 = v165;
    goto LABEL_20;
  }

  v88 = v170;
  v67(v170, v29, v62);
  v89 = v165;
  v90 = v65;
  if (sub_D4FE0())
  {
    v91 = v171;
    sub_D5100();
    v92 = sub_D50B0();
    (*(v172 + 8))(v91, v173);
    sub_66D4(&qword_121390, &qword_D9050);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_D8CB0;
    v94 = (v175 + 8);
    v95 = (v174 + 8);
    v96 = v164;
    v97 = v177;
    if (v92)
    {
      sub_D4FA0();
      v98 = v176;
      sub_D4F60();
    }

    else
    {
      sub_D4F80();
      v98 = v176;
      sub_D4F50();
    }

    v99 = sub_D5010();
    v101 = v100;
    (*v94)(v98, v178);
    (*v95)(v97, v179);
    *(v93 + 56) = &type metadata for String;
    *(v93 + 64) = sub_F7DC();
    *(v93 + 32) = v99;
    *(v93 + 40) = v101;
    type metadata accessor for MAPreferencesViewProvider();
    v102 = swift_getObjCClassFromMetadata();
    v140 = [objc_opt_self() bundleForClass:v102];
    v182._countAndFlagsBits = 2777980912;
    v182._object = 0xA400000000000000;
    v201._object = 0x80000000000E7740;
    v201._countAndFlagsBits = 0xD000000000000018;
    sub_D66D0(v201);
    v202._countAndFlagsBits = 2777980912;
    v202._object = 0xA400000000000000;
    sub_D66D0(v202);
    v162._countAndFlagsBits = 0xE000000000000000;
    v203._object = 0x80000000000E7740;
    v203._countAndFlagsBits = 0xD000000000000018;
    v216.value._countAndFlagsBits = 0;
    v216.value._object = 0;
    v141.super.isa = v140;
    sub_D4E80(v203, v216, v141, v182, v162);

    v74 = sub_D6610();

    v142 = *(v166 + 8);
    v143 = v168;
    v142(v170, v168);
    v142(v90, v143);
    v142(v165, v143);
    v144 = v96;
    goto LABEL_46;
  }

  v120 = sub_D4FE0();
  v121 = v164;
  v122 = v169;
  if ((v120 & 1) == 0)
  {
    v145 = v171;
    sub_D5100();
    v146 = sub_D50B0();
    (*(v172 + 8))(v145, v173);
    sub_66D4(&qword_121390, &qword_D9050);
    v147 = swift_allocObject();
    *(v147 + 16) = xmmword_D8CB0;
    v148 = (v175 + 8);
    v149 = (v174 + 8);
    v150 = v177;
    if (v146)
    {
      sub_D4FA0();
      v151 = v176;
      sub_D4F60();
    }

    else
    {
      sub_D4F80();
      v151 = v176;
      sub_D4F50();
    }

    v152 = sub_D5010();
    v154 = v153;
    (*v148)(v151, v178);
    (*v149)(v150, v179);
    *(v147 + 56) = &type metadata for String;
    *(v147 + 64) = sub_F7DC();
    *(v147 + 32) = v152;
    *(v147 + 40) = v154;
    type metadata accessor for MAPreferencesViewProvider();
    v155 = swift_getObjCClassFromMetadata();
    v158 = [objc_opt_self() bundleForClass:v155];
    v182._countAndFlagsBits = 2777980912;
    v182._object = 0xA400000000000000;
    v207._object = 0x80000000000E7720;
    v207._countAndFlagsBits = 0xD000000000000016;
    sub_D66D0(v207);
    v208._countAndFlagsBits = 2777980912;
    v208._object = 0xA400000000000000;
    sub_D66D0(v208);
    v162._countAndFlagsBits = 0xE000000000000000;
    v209._object = 0x80000000000E7720;
    v209._countAndFlagsBits = 0xD000000000000016;
    v218.value._countAndFlagsBits = 0;
    v218.value._object = 0;
    v159.super.isa = v158;
    sub_D4E80(v209, v218, v159, v182, v162);

    v74 = sub_D6610();

    v160 = *(v166 + 8);
    v161 = v168;
    v160(v170, v168);
    v160(v90, v161);
    v160(v165, v161);
    v144 = v164;
    goto LABEL_46;
  }

  type metadata accessor for MAPreferencesViewProvider();
  v123 = swift_getObjCClassFromMetadata();
  v124 = [objc_opt_self() bundleForClass:v123];
  v182._countAndFlagsBits = 2777980912;
  v182._object = 0xA400000000000000;
  v192._object = 0x80000000000E7700;
  v192._countAndFlagsBits = 0xD000000000000018;
  sub_D66D0(v192);
  v193._countAndFlagsBits = 2777980912;
  v193._object = 0xA400000000000000;
  sub_D66D0(v193);
  v162._countAndFlagsBits = 0xE000000000000000;
  v194._object = 0x80000000000E7700;
  v194._countAndFlagsBits = 0xD000000000000018;
  v213.value._countAndFlagsBits = 0;
  v213.value._object = 0;
  v125.super.isa = v124;
  v74 = sub_D4E80(v194, v213, v125, v182, v162);

  v126 = *(v166 + 8);
  v127 = v88;
  v128 = v168;
  v126(v127, v168);
  v126(v90, v128);
  v126(v89, v128);
  sub_FC3C(v121, &qword_122F48, &unk_E0DE0);
  v129 = v122;
LABEL_47:
  sub_FC3C(v129, &qword_122F48, &unk_E0DE0);
  return v74;
}

uint64_t sub_2F658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  v4 = sub_D5340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v50 - v10;
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = *(a1 + 16);
  v53 = *(a1 + 24);
  v54 = v13;
  v55 = *(a1 + 32);
  v56 = v12;
  LODWORD(v15) = *(a1 + 40);
  if (v12)
  {
    if (sub_3D96C())
    {
      v16 = sub_D6550();
      v18 = v17;

      if (qword_120E38 != -1)
      {
        swift_once();
      }

      v19 = sub_6610(v4, qword_137988);
      (*(v5 + 16))(v11, v19, v4);

      v20 = sub_D5320();
      v21 = v5;
      v22 = sub_D68B0();

      if (os_log_type_enabled(v20, v22))
      {
        v23 = swift_slowAlloc();
        LODWORD(v51) = v15;
        v15 = v23;
        v24 = swift_slowAlloc();
        v52 = v14;
        v25 = v24;
        v59 = v24;
        *v15 = 136642819;
        v26 = sub_558F0(v16, v18, &v59);
        v27 = v21;
        v28 = v20;
        v29 = v26;

        *(v15 + 4) = v29;
        _os_log_impl(&dword_0, v28, v22, "[Auto Reply] params: %{sensitive}s", v15, 0xCu);
        sub_67D4(v25);
        v14 = v52;

        LOBYTE(v15) = v51;

        (*(v27 + 8))(v11, v4);
        v5 = v27;
      }

      else
      {

        (*(v21 + 8))(v11, v4);
        v5 = v21;
      }
    }

    if (qword_120E38 != -1)
    {
      swift_once();
    }

    v30 = sub_6610(v4, qword_137988);
    (*(v5 + 16))(v9, v30, v4);
    v31 = v56;

    v32 = v31;
    v33 = sub_D5320();
    v34 = sub_D68B0();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v52 = v14;
      v36 = v35;
      v37 = v5;
      v38 = swift_slowAlloc();
      v65 = v38;
      *v36 = 136315138;
      v59 = v54;
      v60 = v32;
      v61 = v52;
      LOBYTE(v62) = v53 & 1;
      v63 = v55;
      v64 = v15 & 1;
      sub_6780();
      v39 = sub_D6C60();
      v41 = sub_558F0(v39, v40, &v65);
      v51 = v4;
      v42 = v41;

      *(v36 + 4) = v42;
      _os_log_impl(&dword_0, v33, v34, "[Auto Reply] update failed: %s", v36, 0xCu);
      sub_67D4(v38);

      v14 = v52;

      (*(v37 + 8))(v9, v51);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v43 = v56;
    if (v56)
    {
      v44 = v54;
    }

    else
    {
      v44 = 0;
    }

    if (v56)
    {
      v45 = v14;
    }

    else
    {
      v45 = 0;
    }

    if (v56)
    {
      v46 = v53 & 1;
    }

    else
    {
      v46 = 0;
    }

    if (v56)
    {
      v47 = v55;
    }

    else
    {
      v47 = 0;
    }

    if (v56)
    {
      v48 = v15 & 1;
    }

    else
    {
      v48 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v59 = v44;
    v60 = v43;
    v61 = v45;
    v62 = v46;
    v63 = v47;
    v64 = v48;

    sub_D5580();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v58 = 0;
    return sub_D5580();
  }

  return result;
}

uint64_t sub_2FBF4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t (*a4)(uint64_t))
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v25 = *(a3 + 24);
  v26 = v8;
  v9 = *(a3 + 6);
  v24 = *(a3 + 5);
  v23 = v9;
  v10 = sub_D5340();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v15 = sub_6610(v10, qword_137988);
  (*(v11 + 16))(v14, v15, v10);
  v16 = sub_D5320();
  v17 = sub_D68A0();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v22[1] = a2;
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "[Auto Reply] update succeeded", v18, 2u);
  }

  (*(v11 + 8))(v14, v10);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = *(Strong + OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel_autoReply);

    v28 = v7;
    v29 = v26;
    v30 = v25;
    v31 = v24;
    v32 = v23;
    sub_31990(a3, v27);
    sub_D54E0();

    sub_31650(v28, v29, *(&v29 + 1));
  }

  return a4(1);
}

uint64_t sub_2FE90()
{
  v1 = OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel__isEnabled;
  v2 = sub_66D4(&qword_121068, &qword_DBEE0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel__startDateEnabled, v2);
  v4 = OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel__startDate;
  v5 = sub_66D4(&qword_122F98, &qword_DADA8);
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel__endDateEnabled, v2);
  v6(v0 + OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel__endDate, v5);
  v7 = OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel__message;
  v8 = sub_66D4(&qword_121948, &unk_DC5C0);
  v9 = *(*(v8 - 8) + 8);
  v9(v0 + v7, v8);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel__isUpdating, v2);
  v10 = OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel__error;
  v11 = sub_66D4(&qword_121070, &qword_DAFE0);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v3(v0 + OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel__isDoneDisabled, v2);
  v9(v0 + OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel__statusMessage, v8);
  sub_67D4((v0 + OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel_repository));
  v12 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel_autoReply);

  v13 = *(v0 + OBJC_IVAR____TtCV18icloudMailSettings15MSAutoReplyView9ViewModel_cancellables);

  return v0;
}

uint64_t sub_300DC()
{
  sub_2FE90();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

void sub_3015C()
{
  sub_116AC(319, &qword_120ED8);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_31C90(319, &unk_122C58, &type metadata accessor for Published);
    if (v4 <= 0x3F)
    {
      v10 = *(v3 - 8) + 64;
      sub_116AC(319, &qword_121638);
      if (v6 <= 0x3F)
      {
        v7 = *(v5 - 8) + 64;
        sub_3030C();
        if (v9 <= 0x3F)
        {
          v11 = *(v8 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_3030C()
{
  if (!qword_120EE0)
  {
    sub_6110(&qword_120EE8, &qword_D8DD0);
    v0 = sub_D5590();
    if (!v1)
    {
      atomic_store(v0, &qword_120EE0);
    }
  }
}

uint64_t sub_30370@<X0>(uint64_t *a1@<X8>)
{
  _s9ViewModelCMa_1(0);
  result = sub_D54D0();
  *a1 = result;
  return result;
}

uint64_t sub_303B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_30884(v5, v7) & 1;
}

uint64_t sub_304C0(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();
}

uint64_t sub_3054C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_D5030();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v9, v11, v4);

  sub_D5580();
  return (*(v5 + 8))(v11, v4);
}

double sub_306E4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_30774(__int128 *a1, uint64_t *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 40);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = *a1;
  v8 = a1[1];

  return sub_D5580();
}

uint64_t sub_30884(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_D5030();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v96[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = sub_66D4(&qword_122F40, &qword_DAB38);
  v9 = *(*(v112 - 8) + 64);
  v10 = __chkstk_darwin(v112);
  v12 = &v96[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v96[-v13];
  v15 = *(*(sub_66D4(&qword_122F48, &unk_E0DE0) - 8) + 64);
  v16 = __chkstk_darwin(a1);
  v17 = __chkstk_darwin(v16);
  v18 = __chkstk_darwin(v17);
  v19 = __chkstk_darwin(v18);
  v20 = __chkstk_darwin(v19);
  v21 = __chkstk_darwin(v20);
  v22 = __chkstk_darwin(v21);
  v24 = &v96[-v23];
  v25 = __chkstk_darwin(v22);
  v27 = &v96[-v26];
  v28 = __chkstk_darwin(v25);
  v30 = &v96[-v29];
  v31 = __chkstk_darwin(v28);
  v38 = a2;
  v40 = &v96[-v39];
  v41 = *v31;
  v42 = *a2;
  if (v41 == 2)
  {
    if (v42 != 2)
    {
      goto LABEL_54;
    }

LABEL_6:
    v105 = v37;
    v106 = v36;
    v99 = v35;
    v44 = *(v31 + 6);
    v110 = v4;
    v102 = v8;
    v103 = v12;
    v107 = v31;
    if (v44)
    {
      v45 = *(v31 + 5);
      v46 = v44;
    }

    else
    {
      v45 = 0;
      v46 = 0xE000000000000000;
    }

    v100 = v33;
    if (v38[6])
    {
      v47 = v38[5];
      v48 = v38[6];
    }

    else
    {
      v47 = 0;
      v48 = 0xE000000000000000;
    }

    v104 = v34;
    v108 = v38;
    v109 = v5;
    v101 = v32;
    if (v45 == v47 && v46 == v48)
    {
    }

    else
    {
      v49 = sub_D6C20();

      if ((v49 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    if (v107[2])
    {
      v50 = v107[1];
      v51 = [objc_allocWithZone(NSISO8601DateFormatter) init];
      [v51 setFormatOptions:3955];
      v52 = sub_D65C0();
      v53 = [v51 dateFromString:v52];

      v55 = v109;
      v54 = v110;
      if (v53)
      {
        sub_D5000();

        v56 = *(v55 + 56);
        v57 = v30;
        v58 = 0;
      }

      else
      {
        v56 = *(v109 + 56);
        v57 = v30;
        v58 = 1;
      }

      v111 = v56;
      v56(v57, v58, 1, v54);
      sub_314A0(v30, v40);
    }

    else
    {
      v55 = v109;
      v54 = v110;
      v111 = *(v109 + 56);
      v111(v40, 1, 1, v110);
    }

    if (v108[2])
    {
      v59 = v108[1];
      v60 = [objc_allocWithZone(NSISO8601DateFormatter) init];
      [v60 setFormatOptions:3955];
      v61 = sub_D65C0();
      v62 = [v60 dateFromString:v61];

      if (v62)
      {
        sub_D5000();

        v63 = 0;
      }

      else
      {
        v63 = 1;
      }

      v111(v24, v63, 1, v54);
      sub_314A0(v24, v27);
    }

    else
    {
      v111(v27, 1, 1, v54);
    }

    v64 = *(v112 + 48);
    sub_FBD4(v40, v14, &qword_122F48, &unk_E0DE0);
    sub_FBD4(v27, &v14[v64], &qword_122F48, &unk_E0DE0);
    v65 = *(v55 + 48);
    if (v65(v14, 1, v54) == 1)
    {
      sub_FC3C(v27, &qword_122F48, &unk_E0DE0);
      sub_FC3C(v40, &qword_122F48, &unk_E0DE0);
      if (v65(&v14[v64], 1, v54) == 1)
      {
        sub_FC3C(v14, &qword_122F48, &unk_E0DE0);
LABEL_35:
        if (v107[4])
        {
          v71 = v107[3];
          v72 = [objc_allocWithZone(NSISO8601DateFormatter) init];
          p_type = &stru_11EFF0.type;
          [v72 setFormatOptions:3955];
          v74 = sub_D65C0();
          v75 = &stru_11EFF0.type;
          v76 = [v72 dateFromString:v74];

          v78 = v109;
          v77 = v110;
          v79 = v103;
          if (v76)
          {
            v80 = v100;
            sub_D5000();

            v81 = v80;
            v82 = 0;
          }

          else
          {
            v82 = 1;
            v81 = v100;
          }

          v111(v81, v82, 1, v77);
          sub_314A0(v81, v106);
        }

        else
        {
          v78 = v109;
          v77 = v110;
          v111(v106, 1, 1, v110);
          v79 = v103;
          v75 = (&stru_11EFF0 + 16);
          p_type = (&stru_11EFF0 + 16);
        }

        if (v108[4])
        {
          v83 = v108[3];
          v84 = [objc_allocWithZone(NSISO8601DateFormatter) init];
          [v84 p_type[302]];
          v85 = sub_D65C0();
          v86 = [v84 v75[303]];

          if (v86)
          {
            v87 = v101;
            sub_D5000();

            v88 = 0;
          }

          else
          {
            v88 = 1;
            v87 = v101;
          }

          v111(v87, v88, 1, v77);
          v89 = v105;
          sub_314A0(v87, v105);
        }

        else
        {
          v89 = v105;
          v111(v105, 1, 1, v77);
        }

        v90 = *(v112 + 48);
        v91 = v106;
        sub_FBD4(v106, v79, &qword_122F48, &unk_E0DE0);
        sub_FBD4(v89, v79 + v90, &qword_122F48, &unk_E0DE0);
        if (v65(v79, 1, v77) == 1)
        {
          sub_FC3C(v89, &qword_122F48, &unk_E0DE0);
          sub_FC3C(v91, &qword_122F48, &unk_E0DE0);
          if (v65(v79 + v90, 1, v77) == 1)
          {
            sub_FC3C(v79, &qword_122F48, &unk_E0DE0);
            v43 = 1;
            return v43 & 1;
          }
        }

        else
        {
          v92 = v99;
          sub_FBD4(v79, v99, &qword_122F48, &unk_E0DE0);
          if (v65(v79 + v90, 1, v77) != 1)
          {
            v94 = v102;
            (*(v78 + 32))(v102, v79 + v90, v77);
            sub_31448();
            v43 = sub_D65B0();
            v95 = *(v78 + 8);
            v95(v94, v77);
            sub_FC3C(v105, &qword_122F48, &unk_E0DE0);
            sub_FC3C(v106, &qword_122F48, &unk_E0DE0);
            v95(v92, v77);
            sub_FC3C(v79, &qword_122F48, &unk_E0DE0);
            return v43 & 1;
          }

          sub_FC3C(v105, &qword_122F48, &unk_E0DE0);
          sub_FC3C(v106, &qword_122F48, &unk_E0DE0);
          (*(v78 + 8))(v92, v77);
        }

        v68 = v79;
        goto LABEL_53;
      }

LABEL_33:
      v68 = v14;
LABEL_53:
      sub_FC3C(v68, &qword_122F40, &qword_DAB38);
      goto LABEL_54;
    }

    v66 = v65;
    v67 = v104;
    sub_FBD4(v14, v104, &qword_122F48, &unk_E0DE0);
    v98 = v66;
    if (v66(&v14[v64], 1, v54) == 1)
    {
      sub_FC3C(v27, &qword_122F48, &unk_E0DE0);
      sub_FC3C(v40, &qword_122F48, &unk_E0DE0);
      (*(v55 + 8))(v67, v54);
      goto LABEL_33;
    }

    v69 = v102;
    (*(v55 + 32))(v102, &v14[v64], v54);
    sub_31448();
    v97 = sub_D65B0();
    v70 = *(v55 + 8);
    v70(v69, v54);
    sub_FC3C(v27, &qword_122F48, &unk_E0DE0);
    sub_FC3C(v40, &qword_122F48, &unk_E0DE0);
    v70(v67, v54);
    sub_FC3C(v14, &qword_122F48, &unk_E0DE0);
    v65 = v98;
    if (v97)
    {
      goto LABEL_35;
    }

LABEL_54:
    v43 = 0;
    return v43 & 1;
  }

  v43 = 0;
  if (v42 != 2 && ((v42 ^ v41) & 1) == 0)
  {
    goto LABEL_6;
  }

  return v43 & 1;
}

unint64_t sub_31448()
{
  result = qword_122F50;
  if (!qword_122F50)
  {
    sub_D5030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122F50);
  }

  return result;
}

uint64_t sub_314A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_122F48, &unk_E0DE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_31650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_316F4()
{
  result = qword_122F58;
  if (!qword_122F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_122F58);
  }

  return result;
}

uint64_t sub_31748()
{
  v1 = v0[4];

  if (v0[8] != 1)
  {

    v2 = v0[10];

    v3 = v0[12];
  }

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_317A0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_317D8()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_31834()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_3189C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_31A14(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_31B00(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_122F48, &unk_E0DE0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_31B8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_122F48, &unk_E0DE0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_31C08()
{
  sub_31C90(319, &unk_123048, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_31C90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_D5030();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_31CF0()
{
  v0 = ACAccountDataclassMail;
  v1 = ACAccountDataclassMail;
  return v0;
}

id sub_31D38()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MSRuleAddAPI();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MSRuleAddAPI()
{
  result = qword_1230A0;
  if (!qword_1230A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_31DC4()
{
  v1 = sub_D4ED0();
  v3 = v2;
  v4 = *(v0 + 16);
  v5 = [v4 accountStore];
  if (v5)
  {
    v6 = v5;
    v7 = (objc_allocWithZone(type metadata accessor for EndToEndEncryptionUIRequest()) + qword_122798);
    *v7 = v1;
    v7[1] = v3;
    v8 = v4;
    v9 = sub_32250(v6, v8, 0, 0xF000000000000000, &qword_123310, &qword_DAF18, &qword_123308, &qword_DAF10);

    v10 = [v9 urlRequest];
    sub_D4D30();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_31EDC()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_31F70()
{
  v0[3] = [objc_opt_self() sharedSession];
  v1 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_32034;
  v3 = v0[2];

  return NSURLSession.data(for:delegate:)(v3, 0);
}

uint64_t sub_32034(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *(*v4 + 32);
  v9 = *v4;
  v9[5] = v3;

  if (v3)
  {

    return _swift_task_switch(sub_321A4, 0, 0);
  }

  else
  {
    v10 = v9[3];

    v11 = v9[1];

    return v11(a1, a2);
  }
}

uint64_t sub_321A4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);

  return v1();
}

id sub_32250(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v36 = a7;
  v37 = a8;
  v32 = a5;
  v33 = a6;
  v9 = v8;
  v34 = a2;
  v35 = a4;
  v31 = a3;
  v11 = sub_D5060();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = qword_126728;
  *&v9[qword_126728] = 0;
  v17 = &v9[qword_126738];
  *(v17 + 32) = 0;
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 40) = -1;
  *&v9[qword_126740] = 5;
  *&v9[qword_126748] = 0x3FF0000000000000;
  *&v9[qword_126750] = 0x403E000000000000;
  *&v9[qword_126758] = 0;
  v18 = &v9[qword_126760];
  sub_D5050();
  v19 = sub_D5040();
  v21 = v20;
  (*(v12 + 8))(v15, v11);
  *v18 = v19;
  v18[1] = v21;
  v22 = v34;
  v23 = *&v9[v16];
  *&v9[v16] = a1;
  v24 = a1;

  v25 = v35;
  *&v9[qword_126730] = v22;
  if (v25 >> 60 == 15)
  {
    v26 = v22;
  }

  else
  {
    v27 = v31;
    v38[0] = v31;
    v38[1] = v25;
    v39 = 1;
    swift_beginAccess();
    v28 = v22;
    sub_32468(v27, v25);
    sub_324E8(v38, v17, v32, v33);
    swift_endAccess();
  }

  v29 = sub_66D4(v36, v37);
  v40.receiver = v9;
  v40.super_class = v29;
  return objc_msgSendSuper2(&v40, "init");
}

uint64_t sub_32468(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26558(a1, a2);
  }

  return a1;
}

uint64_t sub_324E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_66D4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_32550@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v33 = a1;
  v32 = sub_D5220();
  v3 = *(v32 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v32);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  v9 = sub_66D4(&qword_123340, qword_DC760);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v31 - v14;
  *a2 = swift_getKeyPath();
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for MSStartMailImportView(0);
  v17 = a2 + v16[5];
  v34 = 0;
  sub_D6200();
  v18 = v36;
  *v17 = v35;
  *(v17 + 1) = v18;
  v19 = v16[6];
  v20 = sub_D4F20();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  sub_FBD4(v15, v13, &qword_123340, qword_DC760);
  sub_D6200();
  v21 = v32;
  sub_FC3C(v15, &qword_123340, qword_DC760);
  v22 = a2 + v16[7];
  v34 = 0;
  sub_D6200();
  v23 = v36;
  *v22 = v35;
  *(v22 + 1) = v23;
  v24 = v3[13];
  v24(v8, enum case for Solarium.main(_:), v21);
  LOBYTE(v22) = sub_D5210();
  v25 = v3[1];
  v25(v8, v21);
  v26 = 0;
  if (v22)
  {
    v27 = v31;
    v24(v31, enum case for Solarium.obk(_:), v21);
    v26 = sub_D5210();
    v25(v27, v21);
  }

  *(a2 + v16[9]) = v26 & 1;
  v28 = swift_allocObject();
  result = sub_38BDC(v33, v28 + 16);
  v30 = a2 + v16[8];
  *v30 = sub_38BF4;
  *(v30 + 1) = v28;
  v30[16] = 0;
  return result;
}

uint64_t sub_328B8(uint64_t a1)
{
  sub_2A5C4(a1, v21);
  v1 = v22;
  v2 = sub_38BFC(v21, v22);
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v8 = type metadata accessor for MSRepositoryDefault();
  v20[3] = v8;
  v20[4] = &off_1188F0;
  v20[0] = v7;
  v9 = _s9ViewModelCMa();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = sub_38BFC(v20, v8);
  v14 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_390F8(*v16, v12);
  sub_67D4(v20);
  sub_67D4(v21);
  return v18;
}

uint64_t sub_32A74@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v52 = sub_66D4(&qword_123408, &qword_DB040);
  v2 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v4 = &v40 - v3;
  v50 = sub_66D4(&qword_123410, &qword_DB048);
  v5 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v7 = &v40 - v6;
  v51 = sub_66D4(&qword_123418, &qword_DB050);
  v8 = *(v51 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v51);
  v11 = &v40 - v10;
  v12 = type metadata accessor for MSStartMailImportView(0);
  v49 = &v40;
  v13 = *(v1 + *(v12 + 36));
  v54 = v1;
  if (v13 == 1)
  {
    v48 = sub_66D4(&qword_123480, &qword_DB088);
    v47 = sub_6110(&qword_123488, &qword_DB090);
    v46 = sub_6110(&qword_123490, &qword_DB098);
    v45 = sub_D5200();
    v44 = sub_6110(&qword_123498, &qword_DB0A0);
    v43 = sub_39A6C(&qword_1234A0, &type metadata accessor for OBKView);
    v42 = sub_6110(&qword_1234A8, &qword_DB0A8);
    v41 = sub_6110(&qword_1234B0, &unk_DB0B0);
    v14 = sub_6110(&qword_1234B8, &unk_E38A0);
    v15 = sub_6110(&qword_121178, &qword_DB0C0);
    v16 = sub_6110(&qword_1234C0, &qword_DB0C8);
    v17 = sub_6110(&qword_1234C8, &qword_DB0D0);
    v18 = sub_39AB4();
    v19 = sub_DFAC();
    v55 = v17;
    v56 = &type metadata for String;
    v57 = v18;
    v58 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v55 = v16;
    v56 = OpaqueTypeConformance2;
    v21 = swift_getOpaqueTypeConformance2();
    v22 = sub_E000();
    v23 = sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
    v55 = v14;
    v56 = &type metadata for MSError;
    v57 = v15;
    v58 = v21;
    v59 = v22;
    v60 = v23;
    v24 = swift_getOpaqueTypeConformance2();
    v25 = sub_39B6C();
    v55 = v42;
    v56 = v41;
    v57 = v24;
    v58 = v25;
    v26 = swift_getOpaqueTypeConformance2();
    v55 = v45;
    v56 = v44;
    v57 = v43;
    v58 = v26;
    v27 = swift_getOpaqueTypeConformance2();
    v28 = sub_6110(&qword_1234F8, &qword_DB0E0);
    v29 = sub_109A8(&qword_123500, &qword_1234F8, &qword_DB0E0);
    v55 = v28;
    v56 = v29;
    v30 = swift_getOpaqueTypeConformance2();
    v55 = v47;
    v56 = v46;
    v57 = v27;
    v58 = v30;
    swift_getOpaqueTypeConformance2();
    sub_D58E0();
    v31 = v51;
    (*(v8 + 16))(v7, v11, v51);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_123460, &qword_123418, &qword_DB050);
    sub_399AC();
    sub_D5BF0();
    return (*(v8 + 8))(v11, v31);
  }

  else
  {
    sub_66D4(&qword_123420, &qword_DB058);
    v33 = sub_6110(&qword_123428, &qword_DB060);
    v34 = sub_6110(&qword_123430, &qword_DB068);
    v35 = sub_398F4();
    v36 = sub_6110(&qword_123450, &qword_DB078);
    v37 = sub_109A8(&qword_123458, &qword_123450, &qword_DB078);
    v55 = v36;
    v56 = v37;
    v38 = swift_getOpaqueTypeConformance2();
    v55 = v33;
    v56 = v34;
    v57 = v35;
    v58 = v38;
    swift_getOpaqueTypeConformance2();
    sub_D5850();
    v39 = &v4[*(v52 + 36)];
    *v39 = sub_362C0;
    v39[1] = 0;
    v39[2] = 0;
    v39[3] = 0;
    sub_FBD4(v4, v7, &qword_123408, &qword_DB040);
    swift_storeEnumTagMultiPayload();
    sub_109A8(&qword_123460, &qword_123418, &qword_DB050);
    sub_399AC();
    sub_D5BF0();
    return sub_FC3C(v4, &qword_123408, &qword_DB040);
  }
}

uint64_t sub_331B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a1;
  v100 = a2;
  v2 = type metadata accessor for MSStartMailImportView(0);
  v3 = *(v2 - 8);
  v83 = v2 - 8;
  v93 = v3;
  v92 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v91 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_66D4(&qword_123508, &qword_DB0E8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v89 = &v82 - v7;
  v8 = sub_66D4(&qword_123510, &qword_DB0F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  countAndFlagsBits = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v90 = &v82 - v12;
  v13 = sub_66D4(&qword_123518, &qword_DB0F8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v88 = &v82 - v15;
  v16 = sub_66D4(&qword_123520, &qword_DB100);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v101 = &v82 - v18;
  v19 = sub_66D4(&qword_123528, &unk_DB108);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v82 - v21;
  v96 = sub_D5200();
  v97 = *(v96 - 8);
  v23 = *(v97 + 64);
  __chkstk_darwin(v96);
  v103 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_66D4(&qword_123488, &qword_DB090);
  v26 = *(v25 - 8);
  v98 = v25;
  v99 = v26;
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v95 = &v82 - v28;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v30 = objc_opt_self();
  v31 = [v30 bundleForClass:ObjCClassFromMetadata];
  v106._countAndFlagsBits = 2777980912;
  v106._object = 0xA400000000000000;
  v113._object = 0x80000000000E78F0;
  v113._countAndFlagsBits = 0xD000000000000018;
  sub_D66D0(v113);
  v114._countAndFlagsBits = 2777980912;
  v114._object = 0xA400000000000000;
  sub_D66D0(v114);
  v78._countAndFlagsBits = 0xE000000000000000;
  v115._object = 0x80000000000E78F0;
  v115._countAndFlagsBits = 0xD000000000000018;
  v122.value._countAndFlagsBits = 0;
  v122.value._object = 0;
  v32.super.isa = v31;
  v87 = sub_D4E80(v115, v122, v32, v106, v78);
  v86 = v33;

  v34 = [v30 bundleForClass:ObjCClassFromMetadata];
  v106._countAndFlagsBits = 2777980912;
  v106._object = 0xA400000000000000;
  v116._countAndFlagsBits = 0xD00000000000001ELL;
  v116._object = 0x80000000000E7910;
  sub_D66D0(v116);
  v117._countAndFlagsBits = 2777980912;
  v117._object = 0xA400000000000000;
  sub_D66D0(v117);
  v79._countAndFlagsBits = 0xE000000000000000;
  v118._countAndFlagsBits = 0xD00000000000001ELL;
  v118._object = 0x80000000000E7910;
  v123.value._countAndFlagsBits = 0;
  v123.value._object = 0;
  v35.super.isa = v34;
  v85 = sub_D4E80(v118, v123, v35, v106, v79);
  v84 = v36;

  strcpy(v22, "envelope.fill");
  *(v22 + 7) = -4864;
  v37 = enum case for OBKHeaderImage.symbol(_:);
  v38 = sub_D51B0();
  v39 = *(v38 - 8);
  (*(v39 + 104))(v22, v37, v38);
  (*(v39 + 56))(v22, 0, 1, v38);
  v40 = sub_D5180();
  (*(*(v40 - 8) + 56))(v101, 1, 1, v40);
  v41 = sub_D5170();
  (*(*(v41 - 8) + 56))(v88, 1, 1, v41);
  v42 = [v30 bundleForClass:ObjCClassFromMetadata];
  v106._countAndFlagsBits = 2777980912;
  v106._object = 0xA400000000000000;
  v119._countAndFlagsBits = 0x45554E49544E4F43;
  v119._object = 0xE800000000000000;
  sub_D66D0(v119);
  v120._countAndFlagsBits = 2777980912;
  v120._object = 0xA400000000000000;
  sub_D66D0(v120);
  v80._countAndFlagsBits = 0xE000000000000000;
  v121._countAndFlagsBits = 0x45554E49544E4F43;
  v121._object = 0xE800000000000000;
  v124.value._countAndFlagsBits = 0;
  v124.value._object = 0;
  v43.super.isa = v42;
  sub_D4E80(v121, v124, v43, v106, v80);

  v44 = sub_D51E0();
  (*(*(v44 - 8) + 56))(v89, 1, 1, v44);
  v45 = v102;
  v46 = v91;
  sub_3A330(v102, v91, type metadata accessor for MSStartMailImportView);
  v47 = (*(v93 + 80) + 16) & ~*(v93 + 80);
  v48 = swift_allocObject();
  sub_3A230(v46, v48 + v47, type metadata accessor for MSStartMailImportView);
  v49 = v90;
  sub_D5230();
  v50 = sub_D5240();
  v51 = *(*(v50 - 8) + 56);
  v51(v49, 0, 1, v50);
  v51(countAndFlagsBits, 1, 1, v50);
  sub_D51F0();
  v52 = v45 + *(v83 + 28);
  v53 = *v52;
  v54 = *(v52 + 8);
  v111 = v53;
  v112 = v54;
  sub_66D4(&qword_121378, &qword_DA7F0);
  sub_D6230();
  countAndFlagsBits = v106._countAndFlagsBits;
  LODWORD(v101) = v107;
  v105 = v45;
  v93 = sub_66D4(&qword_123498, &qword_DB0A0);
  v92 = sub_39A6C(&qword_1234A0, &type metadata accessor for OBKView);
  v55 = sub_6110(&qword_1234A8, &qword_DB0A8);
  v56 = sub_6110(&qword_1234B0, &unk_DB0B0);
  v57 = sub_6110(&qword_1234B8, &unk_E38A0);
  v58 = sub_6110(&qword_121178, &qword_DB0C0);
  v59 = sub_6110(&qword_1234C0, &qword_DB0C8);
  v60 = sub_6110(&qword_1234C8, &qword_DB0D0);
  v61 = sub_39AB4();
  v62 = sub_DFAC();
  v106._countAndFlagsBits = v60;
  v106._object = &type metadata for String;
  v107 = v61;
  v108 = v62;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v106._countAndFlagsBits = v59;
  v106._object = OpaqueTypeConformance2;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = sub_E000();
  v66 = sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  v106._countAndFlagsBits = v57;
  v106._object = &type metadata for MSError;
  v107 = v58;
  v108 = v64;
  v109 = v65;
  v110 = v66;
  v67 = swift_getOpaqueTypeConformance2();
  v68 = sub_39B6C();
  v106._countAndFlagsBits = v55;
  v106._object = v56;
  v107 = v67;
  v108 = v68;
  v81 = swift_getOpaqueTypeConformance2();
  v69 = v95;
  v70 = v96;
  v71 = v93;
  v72 = v92;
  v73 = v103;
  sub_D6090();

  (*(v97 + 8))(v73, v70);
  v104 = v102;
  sub_66D4(&qword_123490, &qword_DB098);
  v106._countAndFlagsBits = v70;
  v106._object = v71;
  v107 = v72;
  v108 = v81;
  swift_getOpaqueTypeConformance2();
  v74 = sub_6110(&qword_1234F8, &qword_DB0E0);
  v75 = sub_109A8(&qword_123500, &qword_1234F8, &qword_DB0E0);
  v106._countAndFlagsBits = v74;
  v106._object = v75;
  swift_getOpaqueTypeConformance2();
  v76 = v98;
  sub_D6120();
  return (*(v99 + 8))(v69, v76);
}

uint64_t sub_33E40(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MSStartMailImportView(0) + 20));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_66D4(&qword_121378, &qword_DA7F0);
  return sub_D6220();
}

uint64_t sub_33EB4@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v2 = type metadata accessor for MSStartMailImportView(0);
  v3 = *(v2 - 8);
  v60 = v2 - 8;
  v66 = v3;
  v65 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v63 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_D5B20();
  v5 = *(v59 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v59);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_66D4(&qword_1234C8, &qword_DB0D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v54 - v11;
  v57 = sub_66D4(&qword_1234C0, &qword_DB0C8);
  v58 = *(v57 - 8);
  v13 = *(v58 + 64);
  __chkstk_darwin(v57);
  v15 = &v54 - v14;
  v62 = sub_66D4(&qword_1234B8, &unk_E38A0);
  v61 = *(v62 - 8);
  v16 = *(v61 + 64);
  __chkstk_darwin(v62);
  v56 = &v54 - v17;
  v64 = sub_66D4(&qword_1234A8, &qword_DB0A8);
  v67 = *(v64 - 8);
  v18 = *(v67 + 64);
  __chkstk_darwin(v64);
  v69 = &v54 - v19;
  v70 = v1;
  sub_66D4(&qword_123530, &qword_DB118);
  sub_39ED4();
  sub_D5E60();
  v20 = &v12[*(v9 + 36)];
  *v20 = sub_37C18;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20[2] = 0;
  v20[3] = 0;
  v20[1] = 0;
  v22 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v76._countAndFlagsBits = 2777980912;
  v76._object = 0xA400000000000000;
  v82._object = 0x80000000000E7930;
  v82._countAndFlagsBits = 0xD00000000000001FLL;
  sub_D66D0(v82);
  v83._countAndFlagsBits = 2777980912;
  v83._object = 0xA400000000000000;
  sub_D66D0(v83);
  v53._countAndFlagsBits = 0xE000000000000000;
  v84._object = 0x80000000000E7930;
  v84._countAndFlagsBits = 0xD00000000000001FLL;
  v85.value._countAndFlagsBits = 0;
  v85.value._object = 0;
  v23.super.isa = v22;
  v24 = sub_D4E80(v84, v85, v23, v76, v53);
  v26 = v25;

  v76._countAndFlagsBits = v24;
  v76._object = v26;
  v27 = sub_39AB4();
  v28 = sub_DFAC();
  sub_D6040();

  sub_FC3C(v12, &qword_1234C8, &qword_DB0D0);
  v29 = v59;
  (*(v5 + 104))(v8, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v59);
  v76._countAndFlagsBits = v9;
  v76._object = &type metadata for String;
  *&v77 = v27;
  *(&v77 + 1) = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v56;
  v31 = v57;
  sub_D60D0();
  (*(v5 + 8))(v8, v29);
  v32 = v31;
  (*(v58 + 8))(v15, v31);
  v33 = v60;
  v34 = v54;
  v35 = v54 + *(v60 + 40);
  v36 = *v35;
  v37 = *(v35 + 8);
  v38 = *(v35 + 16);
  _s9ViewModelCMa();
  sub_39A6C(&unk_1233C8, _s9ViewModelCMa);
  sub_D5750();
  swift_getKeyPath();
  sub_D5880();

  v76 = v73;
  v77 = v74;
  *v78 = v75[0];
  *&v78[9] = *(v75 + 9);
  sub_A0594(&v76._countAndFlagsBits, v69);
  countAndFlagsBits = v76._countAndFlagsBits;
  sub_E158(&countAndFlagsBits);

  v80 = v77;
  *v81 = *v78;
  *&v81[9] = *&v78[9];
  sub_FC3C(&v80, &qword_120EE8, &qword_D8DD0);
  v39 = v62;
  (*(v61 + 8))(v30, v62);
  v40 = v34 + *(v33 + 36);
  v41 = *v40;
  v42 = *(v40 + 8);
  v71 = v41;
  v72 = v42;
  sub_66D4(&qword_121378, &qword_DA7F0);
  sub_D6230();
  LODWORD(v61) = v74;
  v43 = v63;
  sub_3A330(v34, v63, type metadata accessor for MSStartMailImportView);
  v44 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v45 = swift_allocObject();
  sub_3A230(v43, v45 + v44, type metadata accessor for MSStartMailImportView);
  sub_66D4(&qword_1234B0, &unk_DB0B0);
  v46 = sub_6110(&qword_121178, &qword_DB0C0);
  v73._countAndFlagsBits = v32;
  v73._object = OpaqueTypeConformance2;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = sub_E000();
  v49 = sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  v73._countAndFlagsBits = v39;
  v73._object = &type metadata for MSError;
  *&v74 = v46;
  *(&v74 + 1) = v47;
  *&v75[0] = v48;
  *(&v75[0] + 1) = v49;
  swift_getOpaqueTypeConformance2();
  sub_39B6C();
  v50 = v64;
  v51 = v69;
  sub_D60F0();

  return (*(v67 + 8))(v51, v50);
}

uint64_t sub_34830(uint64_t a1)
{
  v2 = sub_D5C80();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_66D4(&qword_1234F8, &qword_DB0E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10[-v7];
  sub_D5C50();
  v11 = a1;
  sub_D51A0();
  sub_39A6C(&qword_121218, &type metadata accessor for CloseButton);
  sub_D5770();
  sub_109A8(&qword_123500, &qword_1234F8, &qword_DB0E0);
  sub_D5C90();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_34A0C(uint64_t a1)
{
  v2 = type metadata accessor for MSStartMailImportView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_3A330(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MSStartMailImportView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_3A230(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for MSStartMailImportView);
  return sub_D5190();
}

uint64_t sub_34B38(uint64_t a1)
{
  v2 = sub_66D4(&qword_123428, &qword_DB060);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v12[-v4];
  *v5 = sub_D5BA0();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = sub_66D4(&qword_1235A8, &qword_DB240);
  sub_34D08(&v5[*(v6 + 44)]);
  v7 = sub_D5DD0();
  v8 = &v5[*(v2 + 36)];
  *v8 = v7;
  *(v8 + 8) = 0u;
  *(v8 + 24) = 0u;
  v8[40] = 1;
  v13 = a1;
  sub_66D4(&qword_123430, &qword_DB068);
  sub_398F4();
  v9 = sub_6110(&qword_123450, &qword_DB078);
  v10 = sub_109A8(&qword_123458, &qword_123450, &qword_DB078);
  v14 = v9;
  v15 = v10;
  swift_getOpaqueTypeConformance2();
  sub_D6120();
  return sub_FC3C(v5, &qword_123428, &qword_DB060);
}

uint64_t sub_34D08@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v1 = sub_D5D10();
  v2 = *(v1 - 8);
  v67 = v1;
  v68 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v61 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_66D4(&qword_123498, &qword_DB0A0);
  v5 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v7 = v58 - v6;
  v58[3] = v58 - v6;
  v8 = sub_66D4(&qword_1235B0, &qword_DB248);
  v9 = *(v8 - 8);
  v62 = v8;
  v63 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v59 = v58 - v11;
  v12 = sub_66D4(&qword_1235B8, &unk_DB250);
  v13 = *(v12 - 8);
  v65 = v12 - 8;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12 - 8);
  v66 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v58 - v17;
  v19 = sub_66D4(&qword_1235C0, &unk_E0C80);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  v22 = __chkstk_darwin(v19);
  v64 = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = v58 - v24;
  sub_D5DC0();
  sub_66D4(&qword_1235C8, &unk_DB260);
  sub_109A8(&qword_1235D0, &qword_1235C8, &unk_DB260);
  sub_D56F0();
  v26 = sub_D5DD0();
  v27 = &v25[*(v20 + 44)];
  *v27 = v26;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  v27[40] = 1;
  sub_33EB4(v7);
  v58[2] = sub_66D4(&qword_1235D8, &unk_E0C90);
  v28 = sub_6110(&qword_121370, &qword_DB270);
  v29 = sub_3A810();
  v70 = v28;
  v71 = v29;
  v58[1] = swift_getOpaqueTypeConformance2();
  v58[0] = sub_6110(&qword_1234A8, &qword_DB0A8);
  v30 = sub_6110(&qword_1234B0, &unk_DB0B0);
  v31 = sub_6110(&qword_1234B8, &unk_E38A0);
  v32 = sub_6110(&qword_121178, &qword_DB0C0);
  v33 = sub_6110(&qword_1234C0, &qword_DB0C8);
  v34 = sub_6110(&qword_1234C8, &qword_DB0D0);
  v35 = sub_39AB4();
  v36 = sub_DFAC();
  v70 = v34;
  v71 = &type metadata for String;
  v72 = v35;
  v73 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = v33;
  v71 = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_E000();
  v40 = sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  v70 = v31;
  v71 = &type metadata for MSError;
  v72 = v32;
  v73 = v38;
  v74 = v39;
  v75 = v40;
  v41 = swift_getOpaqueTypeConformance2();
  v42 = sub_39B6C();
  v70 = v58[0];
  v71 = v30;
  v72 = v41;
  v73 = v42;
  swift_getOpaqueTypeConformance2();
  v43 = v59;
  sub_D5810();
  v44 = v61;
  sub_D5D00();
  sub_109A8(&qword_1235E0, &qword_1235B0, &qword_DB248);
  sub_39A6C(&qword_1235E8, &type metadata accessor for BorderedProminentButtonStyle);
  v45 = v62;
  v46 = v67;
  sub_D5FD0();
  (*(v68 + 8))(v44, v46);
  (*(v63 + 8))(v43, v45);
  v47 = &v18[*(sub_66D4(&qword_1235F0, &qword_DB278) + 36)];
  v48 = *(sub_66D4(&qword_1235F8, &qword_DB280) + 28);
  v49 = enum case for ControlSize.large(_:);
  v50 = sub_D5720();
  (*(*(v50 - 8) + 104))(v47 + v48, v49, v50);
  *v47 = swift_getKeyPath();
  v51 = sub_D5DD0();
  v52 = v64;
  v53 = &v18[*(v65 + 44)];
  *v53 = v51;
  *(v53 + 8) = 0u;
  *(v53 + 24) = 0u;
  v53[40] = 1;
  sub_FBD4(v25, v52, &qword_1235C0, &unk_E0C80);
  v54 = v66;
  sub_FBD4(v18, v66, &qword_1235B8, &unk_DB250);
  v55 = v69;
  sub_FBD4(v52, v69, &qword_1235C0, &unk_E0C80);
  v56 = sub_66D4(&qword_123600, &qword_DB2B8);
  sub_FBD4(v54, v55 + *(v56 + 48), &qword_1235B8, &unk_DB250);
  sub_FC3C(v18, &qword_1235B8, &unk_DB250);
  sub_FC3C(v25, &qword_1235C0, &unk_E0C80);
  sub_FC3C(v54, &qword_1235B8, &unk_DB250);
  return sub_FC3C(v52, &qword_1235C0, &unk_E0C80);
}

uint64_t sub_354B8@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_D5BA0();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v2 = sub_66D4(&qword_123608, &unk_DB2C0);
  return sub_35508((a1 + *(v2 + 44)));
}

uint64_t sub_35508@<X0>(char *a1@<X8>)
{
  v58 = a1;
  v57 = sub_66D4(&qword_123610, &qword_E0CF0);
  v59 = *(v57 - 8);
  v1 = v59[8];
  v2 = __chkstk_darwin(v57);
  v61 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v60 = &v53 - v4;
  v5 = sub_D61D0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D61C0();
  (*(v6 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v5);
  v63 = sub_D61F0();

  (*(v6 + 8))(v9, v5);
  v62 = sub_D6180();
  sub_D63E0();
  sub_D57C0();
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v56 = objc_opt_self();
  v11 = [v56 bundleForClass:ObjCClassFromMetadata];
  v87._countAndFlagsBits = 2777980912;
  v87._object = 0xA400000000000000;
  v92._object = 0x80000000000E78F0;
  v92._countAndFlagsBits = 0xD000000000000018;
  sub_D66D0(v92);
  v93._countAndFlagsBits = 2777980912;
  v93._object = 0xA400000000000000;
  sub_D66D0(v93);
  v51._countAndFlagsBits = 0xE000000000000000;
  v94._object = 0x80000000000E78F0;
  v94._countAndFlagsBits = 0xD000000000000018;
  v98.value._countAndFlagsBits = 0;
  v98.value._object = 0;
  v12.super.isa = v11;
  v13 = sub_D4E80(v94, v98, v12, v87, v51);
  v15 = v14;

  v87._countAndFlagsBits = v13;
  v87._object = v15;
  sub_DFAC();
  v16 = sub_D5F50();
  v18 = v17;
  LOBYTE(v13) = v19;
  v21 = v20;
  KeyPath = swift_getKeyPath();
  v23 = sub_D5DF0();
  v24 = swift_getKeyPath();
  LOBYTE(v73[0]) = v13 & 1;
  v87._countAndFlagsBits = v16;
  v87._object = v18;
  LOBYTE(v88) = v13 & 1;
  *(&v88 + 1) = *v70;
  DWORD1(v88) = *&v70[3];
  *(&v88 + 1) = v21;
  *&v89 = KeyPath;
  BYTE8(v89) = 1;
  *(&v89 + 9) = *v69;
  HIDWORD(v89) = *&v69[3];
  *&v90 = v24;
  *(&v90 + 1) = v23;
  sub_D5E10();
  sub_66D4(&qword_123618, &unk_DB330);
  sub_3A91C();
  v25 = v60;
  sub_D5FC0();
  v71[0] = v87;
  v71[1] = v88;
  v71[2] = v89;
  v71[3] = v90;
  sub_FC3C(v71, &qword_123618, &unk_DB330);
  v26 = [v56 bundleForClass:ObjCClassFromMetadata];
  v87._countAndFlagsBits = 2777980912;
  v87._object = 0xA400000000000000;
  v95._countAndFlagsBits = 0xD00000000000001ELL;
  v95._object = 0x80000000000E7910;
  sub_D66D0(v95);
  v96._countAndFlagsBits = 2777980912;
  v96._object = 0xA400000000000000;
  sub_D66D0(v96);
  v52._countAndFlagsBits = 0xE000000000000000;
  v97._countAndFlagsBits = 0xD00000000000001ELL;
  v97._object = 0x80000000000E7910;
  v99.value._countAndFlagsBits = 0;
  v99.value._object = 0;
  v27.super.isa = v26;
  v28 = sub_D4E80(v97, v99, v27, v87, v52);
  v30 = v29;

  v87._countAndFlagsBits = v28;
  v87._object = v30;
  v31 = sub_D5F50();
  v55 = v32;
  v56 = v33;
  LOBYTE(v26) = v34;
  v54 = swift_getKeyPath();
  LOBYTE(v30) = v26 & 1;
  LOBYTE(v87._countAndFlagsBits) = v26 & 1;
  v35 = v59[2];
  v36 = v61;
  v37 = v57;
  v35(v61, v25, v57);
  v73[0] = v63;
  v73[1] = 0;
  LOWORD(v74) = 1;
  *(&v74 + 2) = v67;
  WORD3(v74) = v68;
  *(&v74 + 1) = v62;
  v38 = v64;
  v75 = v64;
  v76 = v65;
  v39 = v66;
  v77 = v66;
  v40 = v63;
  v41 = v58;
  *(v58 + 3) = v65;
  *(v41 + 4) = v39;
  *(v41 + 1) = v74;
  *(v41 + 2) = v38;
  *v41 = v40;
  v42 = sub_66D4(&qword_123658, &unk_DB350);
  v35(&v41[*(v42 + 48)], v36, v37);
  v43 = &v41[*(v42 + 64)];
  v45 = v55;
  v44 = v56;
  *&v78 = v31;
  *(&v78 + 1) = v55;
  LOBYTE(v79[0]) = v30;
  *(v79 + 1) = *v72;
  DWORD1(v79[0]) = *&v72[3];
  v46 = v54;
  *(&v79[0] + 1) = v56;
  *&v79[1] = v54;
  WORD4(v79[1]) = 1;
  BYTE10(v79[1]) = 1;
  v47 = v78;
  *(v43 + 27) = *(v79 + 11);
  v48 = v79[0];
  *v43 = v47;
  *(v43 + 1) = v48;
  sub_FBD4(v73, &v87, &qword_123660, &unk_E0D80);
  sub_FBD4(&v78, &v87, &qword_123668, &qword_DB360);
  v49 = v59[1];
  v49(v60, v37);
  v80[0] = v31;
  v80[1] = v45;
  v81 = v30;
  *v82 = *v72;
  *&v82[3] = *&v72[3];
  v83 = v44;
  v84 = v46;
  v85 = 1;
  v86 = 1;
  sub_FC3C(v80, &qword_123668, &qword_DB360);
  v49(v61, v37);
  v87 = v63;
  LOWORD(v88) = 1;
  *(&v88 + 2) = v67;
  WORD3(v88) = v68;
  *(&v88 + 1) = v62;
  v89 = v64;
  v90 = v65;
  v91 = v66;
  return sub_FC3C(&v87, &qword_123660, &unk_E0D80);
}

uint64_t sub_35BEC(uint64_t a1)
{
  v2 = sub_D5C80();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_66D4(&qword_123450, &qword_DB078);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10[-v7];
  sub_D5C60();
  v11 = a1;
  sub_66D4(&qword_121178, &qword_DB0C0);
  sub_109A8(&qword_1211D0, &qword_121178, &qword_DB0C0);
  sub_D5920();
  sub_109A8(&qword_123458, &qword_123450, &qword_DB078);
  sub_D5C90();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_35DD8(uint64_t a1)
{
  v2 = type metadata accessor for MSStartMailImportView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_3A330(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MSStartMailImportView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_3A230(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for MSStartMailImportView);
  return sub_D6260();
}

uint64_t sub_35F2C(uint64_t a1)
{
  v19 = sub_D5B10();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_66D4(&qword_1211E8, &qword_D8DA0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v18 - v8);
  v10 = sub_D57E0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_FBD4(a1, v9, &qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v15 = *v9;
    sub_D68C0();
    v16 = sub_D5DB0();
    sub_D5310();

    sub_D5B00();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v19);
  }

  sub_D57D0();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_361A8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._countAndFlagsBits = 1262698818;
  v10._object = 0xE400000000000000;
  sub_D66D0(v10);
  v11._countAndFlagsBits = 2777980912;
  v11._object = 0xA400000000000000;
  sub_D66D0(v11);
  v14._countAndFlagsBits = 2777980912;
  v9._countAndFlagsBits = 0xE000000000000000;
  v12._countAndFlagsBits = 1262698818;
  v12._object = 0xE400000000000000;
  v13.value._countAndFlagsBits = 0;
  v13.value._object = 0;
  v4.super.isa = v3;
  v14._object = 0xA400000000000000;
  sub_D4E80(v12, v13, v4, v14, v9);

  sub_DFAC();
  result = sub_D5F50();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_362C0()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v5 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_D5320();
  v7 = sub_D68A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "[Start Mail Import] page viewed", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  v9 = sub_78BC4(7u);
  v9();
}

uint64_t sub_36468()
{
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v23._countAndFlagsBits = 0x45554E49544E4F43;
  v23._object = 0xE800000000000000;
  sub_D66D0(v23);
  v24._countAndFlagsBits = 2777980912;
  v24._object = 0xA400000000000000;
  sub_D66D0(v24);
  v27._countAndFlagsBits = 2777980912;
  v11._countAndFlagsBits = 0xE000000000000000;
  v25._countAndFlagsBits = 0x45554E49544E4F43;
  v25._object = 0xE800000000000000;
  v26.value._countAndFlagsBits = 0;
  v26.value._object = 0;
  v2.super.isa = v1;
  v27._object = 0xA400000000000000;
  sub_D4E80(v25, v26, v2, v27, v11);

  sub_DFAC();
  v3 = sub_D5F50();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_D63E0();
  sub_D5930();
  v22 = v7 & 1;
  *&v12 = v3;
  *(&v12 + 1) = v5;
  LOBYTE(v13) = v7 & 1;
  *(&v13 + 1) = v9;
  sub_D5E20();
  sub_66D4(&qword_121370, &qword_DB270);
  sub_3A810();
  sub_D5FC0();
  v21[6] = v18;
  v21[7] = v19;
  v21[8] = v20;
  v21[2] = v14;
  v21[3] = v15;
  v21[4] = v16;
  v21[5] = v17;
  v21[0] = v12;
  v21[1] = v13;
  return sub_FC3C(v21, &qword_121370, &qword_DB270);
}

uint64_t sub_3666C()
{
  sub_378DC();
  sub_D5B60();
  sub_D5F40();
  sub_66D4(&qword_123548, &qword_DB120);
  sub_39F6C();
  return sub_D63A0();
}

uint64_t sub_36730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for MSStartMailImportView(0);
  v4 = v3 - 8;
  v40 = *(v3 - 8);
  v5 = *(v40 + 64);
  __chkstk_darwin(v3);
  v41 = v6;
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_66D4(&qword_123558, &qword_DB128);
  v45 = *(v49 - 8);
  v7 = *(v45 + 64);
  __chkstk_darwin(v49);
  v44 = &v36 - v8;
  v47 = sub_66D4(&qword_123580, &qword_DB168);
  v9 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v48 = &v36 - v10;
  v38 = sub_66D4(&qword_121238, &unk_D8E20);
  v37 = *(v38 - 8);
  v11 = *(v37 + 64);
  __chkstk_darwin(v38);
  v13 = &v36 - v12;
  v46 = sub_66D4(&qword_121360, &unk_D8FE0);
  v14 = *(*(v46 - 8) + 64);
  v15 = __chkstk_darwin(v46);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v39 = &v36 - v18;
  v19 = *(v4 + 40);
  v42 = a1;
  v20 = (a1 + v19);
  v22 = *v20;
  v21 = v20[1];
  v23 = *(v20 + 16);
  _s9ViewModelCMa();
  sub_39A6C(&unk_1233C8, _s9ViewModelCMa);
  sub_D5740();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_D5570();

  if (v51 == 1)
  {
    sub_D5780();
    sub_D63E0();
    sub_D5930();
    (*(v37 + 32))(v17, v13, v38);
    v24 = &v17[*(v46 + 36)];
    v25 = v56;
    *(v24 + 4) = v55;
    *(v24 + 5) = v25;
    *(v24 + 6) = v57;
    v26 = v52;
    *v24 = v51;
    *(v24 + 1) = v26;
    v27 = v54;
    *(v24 + 2) = v53;
    *(v24 + 3) = v27;
    v28 = v39;
    sub_FEA4(v17, v39, &qword_121360, &unk_D8FE0);
    sub_FBD4(v28, v48, &qword_121360, &unk_D8FE0);
    swift_storeEnumTagMultiPayload();
    sub_F5B8();
    sub_39FF8();
    sub_D5BF0();
    return sub_FC3C(v28, &qword_121360, &unk_D8FE0);
  }

  else
  {
    sub_D5740();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_D5570();

    v30 = v43;
    sub_3A330(v42, v43, type metadata accessor for MSStartMailImportView);
    v31 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v32 = swift_allocObject();
    sub_3A230(v30, v32 + v31, type metadata accessor for MSStartMailImportView);
    sub_66D4(&unk_120EF8, &qword_D8B18);
    sub_66D4(&qword_123568, &qword_DB130);
    sub_109A8(&qword_123588, &unk_120EF8, &qword_D8B18);
    sub_3A07C();
    sub_39A6C(&qword_123590, type metadata accessor for ImportProvider);
    v33 = v44;
    sub_D6340();
    v34 = v45;
    v35 = v49;
    (*(v45 + 16))(v48, v33, v49);
    swift_storeEnumTagMultiPayload();
    sub_F5B8();
    sub_39FF8();
    sub_D5BF0();
    return (*(v34 + 8))(v33, v35);
  }
}

uint64_t sub_36E48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v5 = sub_D5B80();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  __chkstk_darwin(v5);
  v52 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_D5CD0();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  __chkstk_darwin(v8);
  v48 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MSStartMailImportView(0);
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  __chkstk_darwin(v11 - 8);
  v13 = type metadata accessor for ImportProvider(0);
  v14 = v13 - 8;
  v42 = *(v13 - 8);
  v15 = *(v42 + 64);
  __chkstk_darwin(v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MSStartMailImportView.ImageView(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_66D4(&qword_123598, &qword_DB200);
  v22 = *(v21 - 8);
  v46 = v21;
  v47 = v22;
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v42 - v24;
  v49 = sub_66D4(&qword_123568, &qword_DB130);
  v26 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v44 = &v42 - v27;
  v45 = a1;
  sub_3A330(a1 + *(v14 + 32), v20 + *(v17 + 20), type metadata accessor for ImportProviderImage);
  sub_3A330(a1, v16, type metadata accessor for ImportProvider);
  sub_3A330(a2, &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MSStartMailImportView);
  v28 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v29 = (v15 + *(v43 + 80) + v28) & ~*(v43 + 80);
  v30 = swift_allocObject();
  sub_3A230(v16, v30 + v28, type metadata accessor for ImportProvider);
  sub_3A230(&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for MSStartMailImportView);
  *v20 = swift_getKeyPath();
  sub_66D4(&qword_1235A0, &qword_DB238);
  swift_storeEnumTagMultiPayload();
  v31 = (v20 + *(v17 + 24));
  *v31 = sub_3A678;
  v31[1] = v30;
  v32 = v48;
  sub_D5CC0();
  v33 = sub_39A6C(&qword_123570, type metadata accessor for MSStartMailImportView.ImageView);
  sub_D6070();
  (*(v50 + 8))(v32, v51);
  sub_3A74C(v20, type metadata accessor for MSStartMailImportView.ImageView);
  v34 = v52;
  sub_D5B70();
  v56 = v17;
  v57 = v33;
  v35 = v44;
  swift_getOpaqueTypeConformance2();
  v36 = v46;
  sub_D60A0();
  (*(v53 + 8))(v34, v54);
  (*(v47 + 8))(v25, v36);
  v37 = (v45 + *(v14 + 36));
  v38 = v37[1];
  if (v38)
  {
    v39 = *v37;
    v40 = v38;
  }

  else
  {
    v39 = 0;
    v40 = 0xE000000000000000;
  }

  v56 = v39;
  v57 = v40;
  sub_DFAC();

  sub_D58C0();

  return sub_FC3C(v35, &qword_123568, &qword_DB130);
}

uint64_t sub_37454(uint64_t a1, uint64_t a2)
{
  v4 = sub_66D4(&qword_123340, qword_DC760);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v43 = &v39 - v9;
  v10 = type metadata accessor for ImportProvider(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_D5340();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v19 = sub_6610(v14, qword_137988);
  (*(v15 + 16))(v18, v19, v14);
  sub_3A330(a1, v13, type metadata accessor for ImportProvider);
  v20 = sub_D5320();
  v21 = sub_D68A0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v41 = v8;
    v23 = v22;
    v24 = swift_slowAlloc();
    v40 = a1;
    v25 = v24;
    v45[0] = v24;
    *v23 = 136315138;
    v42 = a2;
    v39 = v10;
    v27 = *v13;
    v26 = v13[1];

    sub_3A74C(v13, type metadata accessor for ImportProvider);
    v28 = sub_558F0(v27, v26, v45);
    v10 = v39;

    *(v23 + 4) = v28;
    a2 = v42;
    _os_log_impl(&dword_0, v20, v21, "[Mail Import Providers] user tapped on provider: %s", v23, 0xCu);
    sub_67D4(v25);
    a1 = v40;

    v8 = v41;
  }

  else
  {

    sub_3A74C(v13, type metadata accessor for ImportProvider);
  }

  (*(v15 + 8))(v18, v14);
  v29 = *(v10 + 20);
  v30 = sub_D4F20();
  v31 = *(v30 - 8);
  v32 = v43;
  (*(v31 + 16))(v43, a1 + v29, v30);
  (*(v31 + 56))(v32, 0, 1, v30);
  v33 = type metadata accessor for MSStartMailImportView(0);
  v34 = *(v33 + 24);
  sub_FBD4(v32, v8, &qword_123340, qword_DC760);
  sub_66D4(&qword_123348, &qword_DAFE8);
  sub_D6220();
  sub_FC3C(v32, &qword_123340, qword_DC760);
  v35 = (a2 + *(v33 + 28));
  v36 = *v35;
  v37 = *(v35 + 1);
  LOBYTE(v45[0]) = v36;
  v45[1] = v37;
  v44 = 1;
  sub_66D4(&qword_121378, &qword_DA7F0);
  return sub_D6220();
}

uint64_t sub_378DC()
{
  sub_66D4(&qword_121390, &qword_D9050);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_DA270;
  type metadata accessor for MAPreferencesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass:ObjCClassFromMetadata];
  v28._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v28._object = 0xEA00000000004552;
  sub_D66D0(v28);
  v29._countAndFlagsBits = 2777980912;
  v29._object = 0xA400000000000000;
  sub_D66D0(v29);
  v40._countAndFlagsBits = 2777980912;
  v24._countAndFlagsBits = 0xE000000000000000;
  v30._countAndFlagsBits = 0x4F4D5F4E5241454CLL;
  v30._object = 0xEA00000000004552;
  v37.value._countAndFlagsBits = 0;
  v37.value._object = 0;
  v4.super.isa = v3;
  v40._object = 0xA400000000000000;
  v5 = sub_D4E80(v30, v37, v4, v40, v24);
  v7 = v6;

  *(v0 + 56) = &type metadata for String;
  v8 = sub_F7DC();
  *(v0 + 64) = v8;
  *(v0 + 32) = v5;
  *(v0 + 40) = v7;
  v9 = [v2 bundleForClass:ObjCClassFromMetadata];
  v31._countAndFlagsBits = 0xD000000000000029;
  v31._object = 0x80000000000E7950;
  sub_D66D0(v31);
  v32._countAndFlagsBits = 2777980912;
  v32._object = 0xA400000000000000;
  sub_D66D0(v32);
  v41._countAndFlagsBits = 2777980912;
  v25._countAndFlagsBits = 0xE000000000000000;
  v33._countAndFlagsBits = 0xD000000000000029;
  v33._object = 0x80000000000E7950;
  v38.value._countAndFlagsBits = 0;
  v38.value._object = 0;
  v10.super.isa = v9;
  v41._object = 0xA400000000000000;
  v11 = sub_D4E80(v33, v38, v10, v41, v25);
  v13 = v12;

  *(v0 + 96) = &type metadata for String;
  *(v0 + 104) = v8;
  *(v0 + 72) = v11;
  *(v0 + 80) = v13;
  v14 = sub_D6610();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_DA270;
  v18 = [v2 bundleForClass:ObjCClassFromMetadata];
  v34._object = 0x80000000000E7980;
  v34._countAndFlagsBits = 0xD000000000000020;
  sub_D66D0(v34);
  v35._countAndFlagsBits = 2777980912;
  v35._object = 0xA400000000000000;
  sub_D66D0(v35);
  v42._countAndFlagsBits = 2777980912;
  v26._countAndFlagsBits = 0xE000000000000000;
  v36._object = 0x80000000000E7980;
  v36._countAndFlagsBits = 0xD000000000000020;
  v39.value._countAndFlagsBits = 0;
  v39.value._object = 0;
  v19.super.isa = v18;
  v42._object = 0xA400000000000000;
  v20 = sub_D4E80(v36, v39, v19, v42, v26);
  v22 = v21;

  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = v8;
  *(v17 + 32) = v20;
  *(v17 + 40) = v22;
  *(v17 + 96) = &type metadata for String;
  *(v17 + 104) = v8;
  *(v17 + 72) = v14;
  *(v17 + 80) = v16;

  return sub_D6610();
}

uint64_t sub_37C18()
{
  v0 = sub_D5340();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_120E38 != -1)
  {
    swift_once();
  }

  v5 = sub_6610(v0, qword_137988);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_D5320();
  v7 = sub_D68A0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "[Mail Import Providers] page viewed", v8, 2u);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_37DA4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SafariView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_66D4(&qword_123340, qword_DC760);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  v11 = sub_D4F20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for MSStartMailImportView(0) + 24);
  sub_66D4(&qword_123348, &qword_DAFE8);
  sub_D6210();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_FC3C(v10, &qword_123340, qword_DC760);
    v17 = 1;
  }

  else
  {
    v18 = *(v12 + 32);
    v18(v15, v10, v11);
    v18(v6, v15, v11);
    sub_3A230(v6, a1, type metadata accessor for SafariView);
    v17 = 0;
  }

  return (*(v3 + 56))(a1, v17, 1, v2);
}

uint64_t sub_38010@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_D5B10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_66D4(&qword_1235A0, &qword_DB238);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_FBD4(v2, &v17 - v11, &qword_1235A0, &qword_DB238);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_D5710();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_D68C0();
    v16 = sub_D5DB0();
    sub_D5310();

    sub_D5B00();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_38210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_D5B40();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_66D4(&qword_1237D0, &qword_DB4B8);
  return sub_38268(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_38268@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v48 = a2;
  v3 = sub_D5710();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v41 - v9;
  v11 = sub_66D4(&qword_123340, qword_DC760);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v45 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v41 - v15;
  v17 = sub_66D4(&qword_1237D8, &qword_DB4C0);
  v46 = *(v17 - 8);
  v47 = v17;
  v18 = *(v46 + 64);
  __chkstk_darwin(v17);
  v44 = &v41 - v19;
  v43 = sub_66D4(&qword_1237E0, &qword_DB4C8);
  v20 = *(*(v43 - 8) + 64);
  v21 = __chkstk_darwin(v43);
  v42 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v41 - v24;
  __chkstk_darwin(v23);
  v27 = &v41 - v26;
  sub_38010(v10);
  (*(v4 + 104))(v8, enum case for ColorScheme.dark(_:), v3);
  v28 = sub_D5700();
  v29 = *(v4 + 8);
  v29(v8, v3);
  v29(v10, v3);
  v30 = a1 + *(type metadata accessor for MSStartMailImportView.ImageView(0) + 20);
  if (v28)
  {
    v30 += *(type metadata accessor for ImportProviderImage(0) + 20);
  }

  v31 = sub_D4F20();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v16, v30, v31);
  (*(v32 + 56))(v16, 0, 1, v31);
  sub_FBD4(v16, v45, &qword_123340, qword_DC760);
  sub_66D4(&qword_1237E8, &qword_DB4D0);
  sub_3B294();
  v33 = v44;
  sub_D5630();
  sub_FC3C(v16, &qword_123340, qword_DC760);
  sub_D63E0();
  sub_D57C0();
  (*(v46 + 32))(v25, v33, v47);
  v34 = &v25[*(v43 + 36)];
  v35 = v50;
  *v34 = v49;
  *(v34 + 1) = v35;
  *(v34 + 2) = v51;
  sub_FEA4(v25, v27, &qword_1237E0, &qword_DB4C8);
  v36 = v42;
  sub_FBD4(v27, v42, &qword_1237E0, &qword_DB4C8);
  v37 = v48;
  *v48 = 0;
  *(v37 + 8) = 1;
  v38 = sub_66D4(&qword_123808, &qword_DB4E0);
  sub_FBD4(v36, v37 + *(v38 + 48), &qword_1237E0, &qword_DB4C8);
  v39 = v37 + *(v38 + 64);
  *v39 = 0;
  v39[8] = 1;
  sub_FC3C(v27, &qword_1237E0, &qword_DB4C8);
  return sub_FC3C(v36, &qword_1237E0, &qword_DB4C8);
}

uint64_t sub_3878C(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_3A330(v1, &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for MSStartMailImportView.ImageView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_3A230(&v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4, type metadata accessor for MSStartMailImportView.ImageView);
  v8 = v1;
  sub_66D4(&qword_1237C0, &qword_DB4B0);
  sub_109A8(&qword_1237C8, &qword_1237C0, &qword_DB4B0);
  return sub_D6260();
}

id sub_38920()
{
  v0 = objc_allocWithZone(SFSafariViewController);
  sub_D4EE0(v1);
  v3 = v2;
  v4 = [v0 initWithURL:v2];

  return v4;
}

uint64_t sub_389BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_39A6C(&qword_1237B8, type metadata accessor for SafariView);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_38A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_39A6C(&qword_1237B8, type metadata accessor for SafariView);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_38AE4()
{
  sub_39A6C(&qword_1237B8, type metadata accessor for SafariView);
  sub_D5D80();
  __break(1u);
}

uint64_t sub_38BA4()
{
  sub_67D4((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_38BDC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_38BFC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_38C4C()
{
  v0 = sub_66D4(&qword_121238, &unk_D8E20);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16 - v3;
  v5 = sub_66D4(&qword_123810, &qword_DB4E8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  v9 = sub_D61D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_D58A0())
  {
    (*(v10 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v9);
    v14 = sub_D61F0();
    (*(v10 + 8))(v13, v9);
    *v8 = v14;
    *(v8 + 1) = 0;
    *(v8 + 8) = 1;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();
    sub_66D4(&qword_123800, &qword_DB4D8);
    sub_3B34C();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    sub_D5BF0();
  }

  else
  {
    sub_D5780();
    (*(v1 + 16))(v8, v4, v0);
    swift_storeEnumTagMultiPayload();
    sub_66D4(&qword_123800, &qword_DB4D8);
    sub_3B34C();
    sub_109A8(&qword_121230, &qword_121238, &unk_D8E20);
    sub_D5BF0();
    return (*(v1 + 8))(v4, v0);
  }
}

uint64_t sub_38FD8(uint64_t a1)
{
  v2 = sub_D5720();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_D5990();
}

uint64_t sub_390A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D5A60();
  *a1 = result;
  return result;
}

uint64_t sub_390CC(uint64_t *a1)
{
  v1 = *a1;

  return sub_D5A70();
}

uint64_t sub_390F8(uint64_t a1, uint64_t a2)
{
  v23 = sub_66D4(&qword_121078, &qword_D8C78);
  v4 = *(v23 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v23);
  v7 = &v22 - v6;
  v8 = sub_66D4(&qword_121070, &qword_DAFE0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = sub_66D4(&qword_121068, &qword_DBEE0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  v26[3] = type metadata accessor for MSRepositoryDefault();
  v26[4] = &off_1188F0;
  v26[0] = a1;
  v18 = OBJC_IVAR____TtCV18icloudMailSettings21MSStartMailImportView9ViewModel__isLoading;
  LOBYTE(v24) = 0;
  sub_D5530();
  (*(v14 + 32))(a2 + v18, v17, v13);
  v19 = OBJC_IVAR____TtCV18icloudMailSettings21MSStartMailImportView9ViewModel__error;
  v24 = 0u;
  memset(v25, 0, sizeof(v25));
  sub_66D4(&qword_120EE8, &qword_D8DD0);
  sub_D5530();
  (*(v9 + 32))(a2 + v19, v12, v8);
  v20 = OBJC_IVAR____TtCV18icloudMailSettings21MSStartMailImportView9ViewModel__providers;
  *&v24 = _swiftEmptyArrayStorage;
  sub_66D4(&unk_120EF8, &qword_D8B18);
  sub_D5530();
  (*(v4 + 32))(a2 + v20, v7, v23);
  *(a2 + OBJC_IVAR____TtCV18icloudMailSettings21MSStartMailImportView9ViewModel_cancellables) = &_swiftEmptySetSingleton;
  sub_2A5C4(v26, a2 + OBJC_IVAR____TtCV18icloudMailSettings21MSStartMailImportView9ViewModel_repository);
  sub_54D0();
  sub_67D4(v26);
  return a2;
}

uint64_t sub_3940C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_66D4(&qword_121090, &unk_D8CC0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_66D4(&qword_123348, &qword_DAFE8);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_3956C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_66D4(&qword_121090, &unk_D8CC0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = sub_66D4(&qword_123348, &qword_DAFE8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_396AC()
{
  sub_3AF08(319, &qword_121100, &type metadata accessor for DismissAction);
  if (v0 <= 0x3F)
  {
    sub_39788();
    if (v1 <= 0x3F)
    {
      sub_397D8();
      if (v2 <= 0x3F)
      {
        sub_3983C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_39788()
{
  if (!qword_121118)
  {
    v0 = sub_D6240();
    if (!v1)
    {
      atomic_store(v0, &qword_121118);
    }
  }
}

void sub_397D8()
{
  if (!qword_1233B8)
  {
    sub_6110(&qword_123340, qword_DC760);
    v0 = sub_D6240();
    if (!v1)
    {
      atomic_store(v0, &qword_1233B8);
    }
  }
}

void sub_3983C()
{
  if (!qword_1233C0)
  {
    _s9ViewModelCMa();
    sub_39A6C(&unk_1233C8, _s9ViewModelCMa);
    v0 = sub_D5760();
    if (!v1)
    {
      atomic_store(v0, &qword_1233C0);
    }
  }
}

unint64_t sub_398F4()
{
  result = qword_123438;
  if (!qword_123438)
  {
    sub_6110(&qword_123428, &qword_DB060);
    sub_109A8(&qword_123440, &qword_123448, &qword_DB070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123438);
  }

  return result;
}

unint64_t sub_399AC()
{
  result = qword_123468;
  if (!qword_123468)
  {
    sub_6110(&qword_123408, &qword_DB040);
    sub_109A8(&qword_123470, &qword_123478, &qword_DB080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123468);
  }

  return result;
}

uint64_t sub_39A6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_39AB4()
{
  result = qword_1234D0;
  if (!qword_1234D0)
  {
    sub_6110(&qword_1234C8, &qword_DB0D0);
    sub_109A8(&qword_1234D8, &qword_1234E0, &qword_DB0D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1234D0);
  }

  return result;
}

unint64_t sub_39B6C()
{
  result = qword_1234E8;
  if (!qword_1234E8)
  {
    sub_6110(&qword_1234B0, &unk_DB0B0);
    sub_39A6C(&qword_1234F0, type metadata accessor for SafariView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1234E8);
  }

  return result;
}

uint64_t sub_39C44()
{
  v1 = *(type metadata accessor for MSStartMailImportView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_33E40(v2);
}

uint64_t sub_39CD8()
{
  v1 = type metadata accessor for MSStartMailImportView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_D57E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + v1[5] + 8);

  v9 = v5 + v1[6];
  v10 = sub_D4F20();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v9, 1, v10))
  {
    (*(v11 + 8))(v9, v10);
  }

  v12 = *&v9[*(sub_66D4(&qword_123348, &qword_DAFE8) + 28)];

  v13 = *(v5 + v1[7] + 8);

  v14 = v5 + v1[8];
  v15 = *v14;
  v16 = *(v14 + 1);
  v17 = v14[16];
  sub_E0C4();

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_39ED4()
{
  result = qword_123538;
  if (!qword_123538)
  {
    sub_6110(&qword_123530, &qword_DB118);
    sub_39F6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123538);
  }

  return result;
}

unint64_t sub_39F6C()
{
  result = qword_123540;
  if (!qword_123540)
  {
    sub_6110(&qword_123548, &qword_DB120);
    sub_F5B8();
    sub_39FF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123540);
  }

  return result;
}

unint64_t sub_39FF8()
{
  result = qword_123550;
  if (!qword_123550)
  {
    sub_6110(&qword_123558, &qword_DB128);
    sub_3A07C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123550);
  }

  return result;
}

unint64_t sub_3A07C()
{
  result = qword_123560;
  if (!qword_123560)
  {
    sub_6110(&qword_123568, &qword_DB130);
    type metadata accessor for MSStartMailImportView.ImageView(255);
    sub_39A6C(&qword_123570, type metadata accessor for MSStartMailImportView.ImageView);
    swift_getOpaqueTypeConformance2();
    sub_39A6C(&qword_123578, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123560);
  }

  return result;
}

uint64_t sub_3A1C0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(type metadata accessor for MSStartMailImportView(0) - 8) + 80);

  return sub_37DA4(a1);
}

uint64_t sub_3A230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_3A2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MSStartMailImportView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_36E48(a1, v6, a2);
}

uint64_t sub_3A330(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3A398()
{
  v1 = v0;
  v2 = (type metadata accessor for ImportProvider(0) - 8);
  v29 = *(*v2 + 80);
  v3 = (v29 + 16) & ~v29;
  v4 = *(*v2 + 64);
  v5 = type metadata accessor for MSStartMailImportView(0);
  v30 = *(*(v5 - 1) + 64);
  v28 = *(*(v5 - 1) + 80);
  v6 = (v3 + v4 + v28) & ~v28;
  v7 = v0 + v3;
  v8 = *(v7 + 8);

  v9 = v2[7];
  v10 = sub_D4F20();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v12(v7 + v9, v10);
  v13 = v7 + v2[8];
  v12(v13, v10);
  v14 = type metadata accessor for ImportProviderImage(0);
  v12(v13 + *(v14 + 20), v10);
  v15 = *(v7 + v2[9] + 8);

  v16 = (v1 + v6);
  sub_66D4(&qword_1211E8, &qword_D8DA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_D57E0();
    (*(*(v17 - 8) + 8))(v1 + v6, v17);
  }

  else
  {
    v18 = *v16;
  }

  v19 = *(v16 + v5[5] + 8);

  v20 = v16 + v5[6];
  if (!(*(v11 + 48))(v20, 1, v10))
  {
    v12(v20, v10);
  }

  v21 = *&v20[*(sub_66D4(&qword_123348, &qword_DAFE8) + 28)];

  v22 = *(v16 + v5[7] + 8);

  v23 = v16 + v5[8];
  v24 = *v23;
  v25 = *(v23 + 1);
  v26 = v23[16];
  sub_E0C4();

  return _swift_deallocObject(v1, v6 + v30, v29 | v28 | 7);
}

uint64_t sub_3A678()
{
  v1 = *(type metadata accessor for ImportProvider(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for MSStartMailImportView(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_37454(v0 + v2, v5);
}

uint64_t sub_3A74C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_3A810()
{
  result = qword_121368;
  if (!qword_121368)
  {
    sub_6110(&qword_121370, &qword_DB270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_121368);
  }

  return result;
}

uint64_t sub_3A8C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D5A60();
  *a1 = result;
  return result;
}

uint64_t sub_3A8F0(uint64_t *a1)
{
  v1 = *a1;

  return sub_D5A70();
}

unint64_t sub_3A91C()
{
  result = qword_123620;
  if (!qword_123620)
  {
    sub_6110(&qword_123618, &unk_DB330);
    sub_3A9D4();
    sub_109A8(&qword_123648, &qword_123650, &unk_E0D70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123620);
  }

  return result;
}

unint64_t sub_3A9D4()
{
  result = qword_123628;
  if (!qword_123628)
  {
    sub_6110(&qword_123630, &unk_E0D60);
    sub_109A8(&qword_123638, &qword_123640, &unk_DB340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_123628);
  }

  return result;
}

uint64_t sub_3AAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_D4F20();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_3AB20(uint64_t a1, uint64_t a2)
{
  v4 = sub_D4F20();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_3AB90()
{
  result = sub_D4F20();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_3AC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_66D4(&qword_123700, qword_DE7D0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for ImportProviderImage(0);
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

uint64_t sub_3AD3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_66D4(&qword_123700, qword_DE7D0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for ImportProviderImage(0);
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

void sub_3AE50()
{
  sub_3AF08(319, &qword_123770, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ImportProviderImage(319);
    if (v1 <= 0x3F)
    {
      sub_6CFC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_3AF08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_D5730();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_3AF60()
{
  result = qword_1237A8;
  if (!qword_1237A8)
  {
    sub_6110(&qword_1237B0, &qword_DB390);
    sub_109A8(&qword_123460, &qword_123418, &qword_DB050);
    sub_399AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1237A8);
  }

  return result;
}

uint64_t sub_3B088()
{
  v1 = type metadata accessor for MSStartMailImportView.ImageView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_66D4(&qword_1235A0, &qword_DB238);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_D5710();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = v5 + *(v1 + 20);
  v9 = sub_D4F20();
  v10 = *(*(v9 - 8) + 8);
  v10(v8, v9);
  v11 = type metadata accessor for ImportProviderImage(0);
  v10(&v8[*(v11 + 20)], v9);
  v12 = *(v5 + *(v1 + 24) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}