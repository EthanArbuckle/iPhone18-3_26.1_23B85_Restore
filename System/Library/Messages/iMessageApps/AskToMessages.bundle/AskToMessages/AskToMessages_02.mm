uint64_t sub_31824()
{
  swift_getKeyPath();
  sub_32A94();
  sub_561FC();

  return *(v0 + 24);
}

uint64_t sub_31894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2AFC(&qword_71820, &qword_59550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_32AEC(a3, v27 - v11);
  v13 = sub_578CC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_32B5C(v12);
  }

  else
  {
    sub_578BC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_5788C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_577BC() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_32B5C(a3);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_32B5C(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_31B54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_32A94();
  sub_561FC();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_31BF4(uint64_t result)
{
  if (*(v1 + 24) == (result & 1))
  {
    *(v1 + 24) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_32A94();
    sub_561EC();
  }

  return result;
}

uint64_t sub_31CD4()
{
  swift_getKeyPath();
  sub_32A94();
  sub_561FC();

  v1 = *(v0 + 40);
}

uint64_t sub_31D48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_32A94();
  sub_561FC();

  *a2 = *(v3 + 40);
}

uint64_t sub_31DC4(uint64_t a1)
{
  if (!*(v1 + 40))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_32A94();
    sub_561EC();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 40);

  v4 = sub_578DC();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(v1 + 40);
LABEL_7:
  *(v1 + 40) = a1;
}

uint64_t sub_31F1C()
{
  swift_getKeyPath();
  sub_32A94();
  sub_561FC();

  return *(v0 + 48);
}

uint64_t sub_31F8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_32A94();
  sub_561FC();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_32004(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_32A94();
    sub_561EC();
  }

  return result;
}

uint64_t sub_320E4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_2AFC(&qword_71820, &qword_59550);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  *(v2 + 24) = 0;
  v10 = sub_5752C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *(v2 + 32) = sub_5751C();
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  sub_5620C();
  if (a2)
  {
    *(v2 + 16) = -1;
  }

  else
  {
    *(v2 + 16) = a1;
    v13 = sub_578CC();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v3;
    v14[5] = a1;

    v15 = sub_31894(0, 0, v9, &unk_5A4F8, v14);
    sub_31DC4(v15);
  }

  return v3;
}

uint64_t sub_32254()
{
  swift_getKeyPath();
  v1 = OBJC_IVAR____TtC13AskToMessages21ManageContactsSetting___observationRegistrar;
  sub_32A94();
  sub_561FC();

  if (*(v0 + 5))
  {
    v2 = *(v0 + 5);

    sub_578EC();
  }

  v3 = *(v0 + 4);

  v4 = *(v0 + 5);

  v5 = sub_5621C();
  (*(*(v5 - 8) + 8))(&v0[v1], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ManageContactsSetting()
{
  result = qword_72B40;
  if (!qword_72B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_323C8()
{
  result = sub_5621C();
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

uint64_t sub_3248C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_324AC, 0, 0);
}

uint64_t sub_324AC()
{
  v1 = *(v0[5] + 32);
  v2 = async function pointer to ATDaemonConnectionManager.canManageContacts(for:)[1];
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_3254C;
  v4 = v0[6];

  return ATDaemonConnectionManager.canManageContacts(for:)(v4);
}

uint64_t sub_3254C(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = sub_3280C;
  }

  else
  {
    v5 = sub_32664;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_32664()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  if (v1 == *(v2 + 24))
  {
    *(v2 + 24) = v1;
    v5 = *(v0 + 64);
  }

  else
  {
    v3 = *(v0 + 64);
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    *(v4 + 24) = v1;
    *(v0 + 24) = v2;
    sub_32A94();
    sub_561EC();
  }

  v6 = *(v0 + 40);
  if (*(v6 + 48) == 1)
  {
    *(v6 + 48) = 1;
  }

  else
  {
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 1;
    *(v0 + 32) = v6;
    sub_32A94();
    sub_561EC();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_3280C()
{
  v1 = v0[5];
  if (*(v1 + 24))
  {
    v2 = v0[8];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v1;
    *(v3 + 24) = 0;
    v0[2] = v1;
    sub_32A94();
    sub_561EC();
  }

  else
  {
    v4 = v0[8];

    *(v1 + 24) = 0;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_32928()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_32968(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_BBC4;

  return sub_3248C(a1, v4, v5, v7, v6);
}

uint64_t sub_32A2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_31DC4(v4);
}

uint64_t sub_32A58()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
}

unint64_t sub_32A94()
{
  result = qword_71A58;
  if (!qword_71A58)
  {
    type metadata accessor for ManageContactsSetting();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71A58);
  }

  return result;
}

uint64_t sub_32AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2AFC(&qword_71820, &qword_59550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_32B5C(uint64_t a1)
{
  v2 = sub_2AFC(&qword_71820, &qword_59550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_32BC4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_32CBC;

  return v7(a1);
}

uint64_t sub_32CBC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_32DB4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_32DEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22334;

  return sub_32BC4(a1, v5);
}

uint64_t sub_32EA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_BBC4;

  return sub_32BC4(a1, v5);
}

uint64_t sub_33008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v87 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = (&v78 - v8);
  __chkstk_darwin(v9);
  v79 = &v78 - v10;
  v11 = type metadata accessor for MessagesContext();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  v15 = type metadata accessor for BalloonView();
  v16 = v15[5];
  *(a2 + v16) = swift_getKeyPath();
  sub_2AFC(&qword_71D78, &qword_593B0);
  swift_storeEnumTagMultiPayload();
  v17 = a2 + v15[17];
  v89 = 0;
  sub_5707C();
  v18 = v91;
  *v17 = v90;
  *(v17 + 8) = v18;
  v19 = a2 + v15[18];
  v89 = 0;
  sub_5707C();
  v20 = v91;
  *v19 = v90;
  *(v19 + 8) = v20;
  v21 = a2 + v15[19];
  v89 = 0;
  sub_5707C();
  v22 = v91;
  *v21 = v90;
  *(v21 + 8) = v22;
  v23 = *(a1 + 24);
  v24 = sub_5763C();
  *(a2 + v15[6]) = v24;
  v78 = v24;
  *(a2 + v15[7]) = sub_5764C();
  v25 = type metadata accessor for PayloadViewModel();
  sub_2E28(a1 + v25[7], a2 + v15[8], &qword_71B00, &unk_593C0);
  sub_2E28(a1 + v25[8], a2 + v15[9], &qword_71B00, &unk_593C0);
  v26 = a1 + v25[9];
  sub_43188(v26, a2 + v15[12], type metadata accessor for MessagesContext);
  v27 = sub_5762C();
  v28 = (a2 + v15[13]);
  *v28 = v27;
  v28[1] = v29;
  v30 = (a2 + v15[20]);
  *v30 = *(a1 + v25[10]);
  v30[1] = 0;
  v32 = *a1;
  v31 = *(a1 + 8);
  *(a2 + v15[10]) = *a1;
  v88 = a1;
  v33 = *(a1 + 16);
  v34 = (a2 + v15[11]);
  v84 = v31;
  *v34 = v31;
  v34[1] = v33;
  v81 = v26;
  v35 = v79;
  sub_43188(v26, v14, type metadata accessor for MessagesContext);
  v36 = type metadata accessor for ResponseTransmitter();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = v32;
  v83 = v33;
  swift_bridgeObjectRetain_n();
  v40 = v23;

  v41 = sub_14F68(v14, v40);
  v42 = (a2 + v15[15]);
  sub_431F0(&qword_71D88, type metadata accessor for ResponseTransmitter);

  v80 = v41;
  v43 = v78;
  *v42 = sub_5672C();
  v42[1] = v44;
  v85 = v15;
  v86 = a2;
  *(a2 + v15[14]) = v40;
  v45 = sub_5763C();
  sub_5630C();

  v46 = sub_5643C();
  v47 = sub_5640C();
  v49 = v48;

  if (v47 == 0xD00000000000002DLL && 0x800000000005BFB0 == v49)
  {
    v50 = v82;
LABEL_4:

    goto LABEL_6;
  }

  v51 = sub_57B8C();

  v50 = v82;
  if ((v51 & 1) == 0)
  {
    v55 = sub_5643C();
    v56 = sub_5640C();
    v58 = v57;

    if (v56 == 0xD00000000000001DLL && 0x800000000005C700 == v58)
    {
      goto LABEL_4;
    }

    v59 = sub_57B8C();

    if ((v59 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_6:
  v52 = sub_5762C();
  if (!v53)
  {
LABEL_15:
    v54 = 0;
    goto LABEL_16;
  }

  if (v52 == 0xD000000000000013 && v53 == 0x800000000005BFE0)
  {
    v54 = 1;
  }

  else
  {
    v54 = sub_57B8C();
  }

LABEL_16:
  sub_2E28(v35, v50, &qword_71A10, &qword_5A5A0);
  v60 = sub_5636C();
  v61 = *(v60 - 8);
  if ((*(v61 + 48))(v50, 1, v60) == 1)
  {
    sub_2E90(v50, &qword_71A10, &qword_5A5A0);
  }

  else
  {
    v62 = (*(v61 + 88))(v50, v60);
    if (v62 == enum case for ATQuestion.TopicMetadata.communication(_:))
    {
      v63 = v62;
      (*(v61 + 96))(v50, v60);
      if (v54)
      {
        v78 = *v50;
        sub_2AFC(&qword_72BF0, &qword_5A608);
        v64 = sub_574CC();
        v65 = v35;
        v66 = *(v64 - 8);
        v67 = *(v66 + 72);
        v68 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_58B00;
        v70 = v69 + v68;
        LODWORD(v82) = v63;
        v71 = *(v66 + 104);
        v71(v70, enum case for ATCommunicationMetadata.Action.message(_:), v64);
        v71(v70 + v67, enum case for ATCommunicationMetadata.Action.call(_:), v64);
        v35 = v65;
        v72 = v78;
        sub_B438(v69);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_574EC();

        sub_2E90(v65, &qword_71A10, &qword_5A5A0);
        *v65 = v72;
        (*(v61 + 104))(v65, v82, v60);
        (*(v61 + 56))(v65, 0, 1, v60);
      }

      else
      {
      }
    }

    else
    {
      (*(v61 + 8))(v50, v60);
    }
  }

  v73 = *(v81 + 32);
  sub_575FC();
  sub_2E28(v35, v87, &qword_71A10, &qword_5A5A0);
  v74 = sub_5763C();
  sub_5642C();

  v75 = sub_5763C();
  sub_5644C();

  v76 = v85[16];
  sub_5739C();

  sub_2E90(v35, &qword_71A10, &qword_5A5A0);
  return sub_43238(v88, type metadata accessor for PayloadViewModel);
}

uint64_t sub_338DC()
{
  v0 = sub_2AFC(&qword_72F28, &qword_5A8E0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v7 - v2;
  sub_56D0C();
  v4 = sub_56CFC();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = sub_56D1C();
  result = sub_2E90(v3, &qword_72F28, &qword_5A8E0);
  qword_75810 = v5;
  return result;
}

uint64_t sub_339D0()
{
  result = sub_56CDC();
  qword_75818 = result;
  return result;
}

uint64_t sub_339F0()
{
  sub_56CDC();
  v0 = sub_56CEC();

  qword_75820 = v0;
  return result;
}

double sub_33A2C()
{
  v1 = sub_5695C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  if (v0[8] == 1)
  {
    return *v0;
  }

  v8 = *v0;

  sub_5793C();
  v9 = sub_56C8C();
  sub_562CC();

  sub_5694C();
  swift_getAtKeyPath();
  sub_1FAB8(v6, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

BOOL sub_33B78()
{
  v1 = sub_5613C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2AFC(&qword_71B18, &qword_59008);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v21 - v11;
  v13 = *(v0 + *(type metadata accessor for BalloonView() + 24));
  sub_5639C();
  v14 = *(v2 + 48);
  v15 = v14(v12, 1, v1);
  sub_2E90(v12, &qword_71B18, &qword_59008);
  if (v15 == 1)
  {
    return 0;
  }

  sub_5639C();
  if (v14(v9, 1, v1))
  {
    sub_2E90(v9, &qword_71B18, &qword_59008);
    v17 = 0.0;
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    sub_2E90(v9, &qword_71B18, &qword_59008);
    sub_5611C();
    v17 = v18;
    (*(v2 + 8))(v5, v1);
  }

  sub_5612C();
  sub_5611C();
  v20 = v19;
  (*(v2 + 8))(v5, v1);
  return v17 < v20;
}

uint64_t sub_33DE4()
{
  v1 = type metadata accessor for MessagesContext();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BalloonView();
  v7 = v0 + v6[12];
  sub_43188(v7, v5, type metadata accessor for MessagesContext);
  v8 = *(v2 + 44);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_43238(v5, type metadata accessor for MessagesContext);
  if (Strong)
  {
    v10 = [Strong activeConversation];

    if (v10)
    {
      v11 = [v10 selectedMessage];

      if (v11)
      {
        v12 = [v11 isPending];

        if (v12)
        {
          return 0;
        }
      }
    }
  }

  if (sub_33B78())
  {
    return 1;
  }

  if (*(v0 + v6[7]))
  {
    goto LABEL_9;
  }

  v16 = *(v0 + v6[15] + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  v17 = v19;
  if (v19 == 255 || (sub_BCE4(v18, v19), (v17 & 1) != 0))
  {
    v14 = *(v7 + 32) == 0;
    v15 = 2;
  }

  else
  {
LABEL_9:
    v14 = *(v7 + 32) == 0;
    v15 = 4;
  }

  if (v14)
  {
    return v15 + 1;
  }

  else
  {
    return v15;
  }
}

void sub_33FD8(uint64_t a1@<X8>)
{
  v2 = v1;
  v159 = a1;
  v156 = sub_5605C();
  v154 = *(v156 - 8);
  v3 = *(v154 + 64);
  __chkstk_darwin(v156);
  v152 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_561CC();
  v153 = *(v155 - 8);
  v5 = *(v153 + 64);
  __chkstk_darwin(v155);
  v149 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v151 = &v135 - v8;
  v168 = sub_5773C();
  v150 = *(v168 - 8);
  v9 = *(v150 + 64);
  __chkstk_darwin(v168);
  v148 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v166 = &v135 - v12;
  v170 = sub_5606C();
  v158 = *(v170 - 8);
  v13 = *(v158 + 64);
  __chkstk_darwin(v170);
  v157 = &v135 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v169 = &v135 - v16;
  v17 = type metadata accessor for BalloonView();
  v145 = *(v17 - 8);
  v18 = *(v145 + 64);
  __chkstk_darwin(v17);
  v171 = v19;
  v172 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_2AFC(&qword_71EA0, &qword_59438);
  v20 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v141);
  v138 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v139 = &v135 - v23;
  v24 = sub_5674C();
  v162 = *(v24 - 8);
  v25 = *(v162 + 8);
  __chkstk_darwin(v24);
  v161 = &v135 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v160 = &v135 - v28;
  v143 = sub_2AFC(&qword_71EA8, &qword_59440);
  v29 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v143);
  v137 = &v135 - v30;
  v31 = sub_561AC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2AFC(&qword_72CD0, &qword_5A688);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v39 = &v135 - v38;
  v140 = sub_2AFC(&qword_72CD8, &qword_5A690);
  v40 = *(*(v140 - 8) + 64);
  __chkstk_darwin(v140);
  v42 = &v135 - v41;
  v144 = sub_2AFC(&qword_72CE0, &qword_5A698);
  v142 = *(v144 - 8);
  v43 = *(v142 + 64);
  __chkstk_darwin(v144);
  v163 = &v135 - v44;
  v147 = sub_2AFC(&qword_72CE8, &qword_5A6A0);
  v146 = *(v147 - 8);
  v45 = *(v146 + 64);
  __chkstk_darwin(v147);
  v164 = &v135 - v46;
  v165 = sub_2AFC(&qword_72CF0, &qword_5A6A8);
  v47 = *(*(v165 - 8) + 64);
  __chkstk_darwin(v165);
  v167 = &v135 - v48;
  *v39 = sub_56A2C();
  *(v39 + 1) = 0x4028000000000000;
  v39[16] = 0;
  v49 = sub_2AFC(&qword_72CF8, &qword_5A6B0);
  sub_35414(v1, &v39[*(v49 + 44)]);
  v50 = sub_56CCC();
  sub_5668C();
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = &v39[*(sub_2AFC(&qword_72D00, &qword_5A6B8) + 36)];
  *v59 = v50;
  *(v59 + 1) = v52;
  *(v59 + 2) = v54;
  *(v59 + 3) = v56;
  *(v59 + 4) = v58;
  v59[40] = 0;
  v60 = sub_5678C();
  v61 = sub_56CAC();
  v62 = &v39[*(v36 + 36)];
  *v62 = v60;
  v62[8] = v61;
  v175 = 0x65757165526B7341;
  v176 = 0xEB000000003A7473;
  v173 = v17;
  v174 = v2;
  v63 = *(v2 + *(v17 + 24));
  sub_5645C();
  sub_431F0(&qword_71ED8, &type metadata accessor for UUID);
  v181._countAndFlagsBits = sub_57B7C();
  sub_577DC(v181);

  (*(v32 + 8))(v35, v31);
  sub_41284();
  v136 = v42;
  v64 = v160;
  sub_56ECC();

  v65 = v39;
  v66 = v161;
  sub_2E90(v65, &qword_72CD0, &qword_5A688);
  v67 = v162;
  v68 = *(v162 + 13);
  v68(v64, enum case for DynamicTypeSize.small(_:), v24);
  v68(v66, enum case for DynamicTypeSize.accessibility3(_:), v24);
  sub_431F0(&qword_71EF8, &type metadata accessor for DynamicTypeSize);
  if (sub_576BC())
  {
    v69 = *(v67 + 4);
    v70 = v139;
    v71 = v24;
    v69(v139, v64, v24);
    v72 = v141;
    v69((v70 + *(v141 + 48)), v66, v24);
    v73 = v138;
    sub_2E28(v70, v138, &qword_71EA0, &qword_59438);
    v74 = *(v72 + 48);
    v75 = v137;
    v69(v137, v73, v71);
    v76 = *(v67 + 1);
    v76(v73 + v74, v71);
    sub_B0DC(v70, v73, &qword_71EA0, &qword_59438);
    v77 = v143;
    v69((v75 + *(v143 + 36)), (v73 + *(v72 + 48)), v71);
    v76(v73, v71);
    v141 = sub_413C8();
    v78 = sub_3260(&qword_71F30, &qword_71EA8, &qword_59440);
    v79 = v140;
    v80 = v136;
    sub_56E8C();
    sub_2E90(v75, &qword_71EA8, &qword_59440);
    sub_2E90(v80, &qword_72CD8, &qword_5A690);
    v81 = v174;
    v82 = v174 + v173[17];
    v83 = *v82;
    v84 = *(v82 + 8);
    v179 = v83;
    v180 = v84;
    v85 = sub_2AFC(&qword_71F40, &unk_59520);
    sub_570AC();
    LODWORD(v139) = v177;
    v162 = type metadata accessor for BalloonView;
    v86 = v172;
    sub_43188(v81, v172, type metadata accessor for BalloonView);
    v161 = *(v145 + 80);
    v87 = (v161 + 16) & ~v161;
    v88 = swift_allocObject();
    sub_41488(v86, v88 + v87);
    v145 = sub_2AFC(&qword_72D30, &qword_5A6D0);
    v175 = v79;
    v176 = v77;
    v177 = v141;
    v178 = v78;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v134 = sub_4155C();
    v89 = v144;
    v90 = v163;
    sub_56F1C();

    (*(v142 + 8))(v90, v89);
    v91 = v174;
    v92 = v174 + v173[18];
    v93 = *v92;
    v94 = *(v92 + 8);
    v179 = v93;
    v180 = v94;
    v163 = v85;
    sub_570AC();
    v95 = v172;
    sub_43188(v91, v172, v162);
    v160 = v87;
    v96 = swift_allocObject();
    sub_41488(v95, v96 + v87);
    sub_2AFC(&qword_72D48, &qword_5A6D8);
    v175 = v89;
    v176 = v145;
    v177 = OpaqueTypeConformance2;
    v178 = v134;
    swift_getOpaqueTypeConformance2();
    sub_41D74(&qword_72D50, &qword_72D48, &qword_5A6D8, sub_416A4);
    v97 = v167;
    v98 = v147;
    v99 = v164;
    sub_56F1C();

    (*(v146 + 8))(v99, v98);
    v100 = v174;
    v101 = *(v174 + v173[15] + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    v164 = v101;
    sub_5662C();

    v102 = v175;
    LOBYTE(v91) = v176;
    v103 = v165;
    v104 = *(v165 + 52);
    sub_2AFC(&unk_71C70, "jV");
    sub_5799C();
    sub_BCE4(v102, v91);
    v105 = v172;
    sub_43188(v100, v172, v162);
    v106 = v160;
    v107 = swift_allocObject();
    sub_41488(v105, &v106[v107]);
    v108 = &v97[*(v103 + 56)];
    *v108 = sub_41700;
    v108[1] = v107;
    v109 = v166;
    sub_576DC();
    sub_D820(0, &qword_717B0, NSBundle_ptr);
    v110 = sub_5796C();
    if (!v110)
    {
      v110 = [objc_opt_self() mainBundle];
    }

    v111 = v110;
    v112 = v151;
    sub_561BC();
    v113 = v150;
    (*(v150 + 16))(v148, v109, v168);
    v114 = v153;
    v115 = v155;
    (*(v153 + 16))(v149, v112, v155);
    v116 = [v111 bundleURL];
    v117 = v152;
    sub_560AC();

    (*(v154 + 104))(v117, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v156);
    v118 = v169;
    sub_5607C();

    (*(v114 + 8))(v112, v115);
    (*(v113 + 8))(v166, v168);
    v119 = v174 + v173[19];
    v120 = *v119;
    v121 = *(v119 + 8);
    v179 = v120;
    v180 = v121;
    sub_570AC();
    v171 = v175;
    v168 = v176;
    LODWORD(v172) = v177;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_5662C();

    v173 = &v135;
    v164 = v175;
    LODWORD(v166) = v176;
    v123 = __chkstk_darwin(v122);
    v175 = v124;
    LOBYTE(v176) = v125;
    v126 = v158;
    (*(v158 + 16))(v157, v118, v170, v123);
    v127 = sub_56DFC();
    v129 = v128;
    LOBYTE(v117) = v130;
    v174 = v131;
    sub_2AFC(&qword_71F48, &unk_5A730);
    sub_2AFC(&qword_71F50, &unk_59530);
    sub_3260(&qword_72D60, &qword_72CF0, &qword_5A6A8);
    sub_3260(&qword_71F60, &qword_71F48, &unk_5A730);
    v132 = v167;
    sub_56EFC();
    sub_21FDC(v127, v129, v117 & 1);

    (*(v126 + 8))(v169, v170);
    sub_2E90(v132, &qword_72CF0, &qword_5A6A8);
    sub_BCE4(v164, v166);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_35414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for BalloonView();
  v4 = v3 - 8;
  v56 = *(v3 - 8);
  v55 = *(v56 + 64);
  __chkstk_darwin(v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2AFC(&qword_72D78, &qword_5A788);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v52 - v9;
  v11 = sub_2AFC(&qword_72D80, &qword_5A790);
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = *(v58 + 64);
  __chkstk_darwin(v11);
  v57 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v52 - v15;
  v17 = sub_2AFC(&qword_72D88, &qword_5A798);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v54 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v52 - v22;
  *v23 = sub_5696C();
  *(v23 + 1) = 0x4020000000000000;
  v23[16] = 0;
  v24 = sub_2AFC(&qword_72D90, &qword_5A7A0);
  sub_3593C(a1, &v23[*(v24 + 44)]);
  v25 = sub_56C9C();
  sub_5668C();
  v26 = &v23[*(v18 + 44)];
  v53 = v23;
  *v26 = v25;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_36BC0(v10);
  LOBYTE(v18) = sub_56C9C();
  sub_5668C();
  v31 = &v10[*(v7 + 36)];
  *v31 = v18;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  v36 = (a1 + *(v4 + 88));
  v38 = *v36;
  v37 = v36[1];
  v62 = v38;
  v63 = v37;
  sub_2AFC(&qword_72D68, &qword_5A748);
  sub_5708C();
  v39 = v61;
  swift_getKeyPath();
  v62 = v39;
  sub_431F0(&qword_71A58, type metadata accessor for ManageContactsSetting);
  sub_561FC();

  LOBYTE(v18) = *(v39 + 24);

  LOBYTE(v62) = v18;
  sub_43188(a1, v6, type metadata accessor for BalloonView);
  v40 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v41 = swift_allocObject();
  sub_41488(v6, v41 + v40);
  sub_41898();
  sub_56F3C();

  sub_2E90(v10, &qword_72D78, &qword_5A788);
  v42 = v23;
  v43 = v54;
  sub_2E28(v42, v54, &qword_72D88, &qword_5A798);
  v45 = v57;
  v44 = v58;
  v46 = *(v58 + 16);
  v47 = v59;
  v46(v57, v16, v59);
  v48 = v60;
  sub_2E28(v43, v60, &qword_72D88, &qword_5A798);
  v49 = sub_2AFC(&qword_72E58, &qword_5A800);
  v46((v48 + *(v49 + 48)), v45, v47);
  v50 = *(v44 + 8);
  v50(v16, v47);
  sub_2E90(v53, &qword_72D88, &qword_5A798);
  v50(v45, v47);
  return sub_2E90(v43, &qword_72D88, &qword_5A798);
}

uint64_t sub_3593C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_2AFC(&qword_72FA0, &qword_5AA20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v33 - v5;
  v7 = sub_2AFC(&qword_72FA8, &qword_5AA28);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v33 - v13;
  __chkstk_darwin(v15);
  v17 = &v33 - v16;
  v18 = sub_2AFC(&qword_72FB0, &qword_5AA30);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v33 - v23;
  sub_35C7C(&v33 - v23);
  *v6 = sub_56A2C();
  *(v6 + 1) = 0x4000000000000000;
  v6[16] = 0;
  v25 = sub_2AFC(&qword_72FB8, &qword_5AA38);
  sub_36334(a1, &v6[*(v25 + 44)]);
  sub_571DC();
  sub_567CC();
  sub_B0DC(v6, v14, &qword_72FA0, &qword_5AA20);
  v26 = &v14[*(v8 + 44)];
  v27 = v40;
  *(v26 + 4) = v39;
  *(v26 + 5) = v27;
  *(v26 + 6) = v41;
  v28 = v36;
  *v26 = v35;
  *(v26 + 1) = v28;
  v29 = v38;
  *(v26 + 2) = v37;
  *(v26 + 3) = v29;
  sub_B0DC(v14, v17, &qword_72FA8, &qword_5AA28);
  sub_2E28(v24, v21, &qword_72FB0, &qword_5AA30);
  sub_2E28(v17, v11, &qword_72FA8, &qword_5AA28);
  v30 = v34;
  sub_2E28(v21, v34, &qword_72FB0, &qword_5AA30);
  v31 = sub_2AFC(&qword_72FC0, &qword_5AA40);
  sub_2E28(v11, v30 + *(v31 + 48), &qword_72FA8, &qword_5AA28);
  sub_2E90(v17, &qword_72FA8, &qword_5AA28);
  sub_2E90(v24, &qword_72FB0, &qword_5AA30);
  sub_2E90(v11, &qword_72FA8, &qword_5AA28);
  return sub_2E90(v21, &qword_72FB0, &qword_5AA30);
}

uint64_t sub_35C7C@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_572EC();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  __chkstk_darwin(v2);
  v37 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2AFC(&qword_71B00, &unk_593C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v37 - v7;
  v9 = sub_5756C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v40 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v41 = &v37 - v14;
  v42 = sub_2AFC(&qword_73000, &unk_5AAE0);
  v15 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v43 = &v37 - v16;
  v17 = type metadata accessor for IconView(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = (&v37 - v23);
  v25 = type metadata accessor for BalloonView();
  v26 = v1;
  v27 = *(v1 + v25[6]);
  sub_5630C();
  v28 = sub_5636C();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v24, 1, v28) == 1)
  {
    sub_2E90(v24, &qword_71A10, &qword_5A5A0);
  }

  else
  {
    if ((*(v29 + 88))(v24, v28) == enum case for ATQuestion.TopicMetadata.communication(_:))
    {
      (*(v29 + 96))(v24, v28);
      v30 = *v24;
      *&v20[*(v17 + 20)] = sub_39F3C();
      type metadata accessor for IconView.Kind(0);
      swift_storeEnumTagMultiPayload();
      sub_2E28(v26 + v25[9], &v20[*(v17 + 24)], &qword_71B00, &unk_593C0);
      *v20 = swift_getKeyPath();
      v20[8] = 0;
      sub_43188(v20, v43, type metadata accessor for IconView);
      swift_storeEnumTagMultiPayload();
      sub_431F0(&qword_73008, type metadata accessor for IconView);
      sub_56ABC();

      return sub_43238(v20, type metadata accessor for IconView);
    }

    (*(v29 + 8))(v24, v28);
  }

  v32 = v26;
  sub_2E28(v26 + v25[8], v8, &qword_71B00, &unk_593C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2E90(v8, &qword_71B00, &unk_593C0);
    sub_33A2C();
    v33 = v37;
    sub_572CC();
    v34 = v40;
    sub_5727C();
    (*(v38 + 8))(v33, v39);
    v35 = *(v10 + 32);
  }

  else
  {
    v35 = *(v10 + 32);
    v34 = v40;
    v35(v40, v8, v9);
  }

  v36 = v41;
  v35(v41, v34, v9);
  (*(v10 + 16))(&v20[*(v17 + 20)], v36, v9);
  type metadata accessor for IconView.Kind(0);
  swift_storeEnumTagMultiPayload();
  sub_2E28(v32 + v25[9], &v20[*(v17 + 24)], &qword_71B00, &unk_593C0);
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  sub_43188(v20, v43, type metadata accessor for IconView);
  swift_storeEnumTagMultiPayload();
  sub_431F0(&qword_73008, type metadata accessor for IconView);
  sub_56ABC();
  sub_43238(v20, type metadata accessor for IconView);
  return (*(v10 + 8))(v36, v9);
}

uint64_t sub_36334@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v62 = sub_2AFC(&qword_72FC8, &qword_5AA48);
  v4 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v6 = &v60 - v5;
  v63 = sub_2AFC(&qword_72FD0, &qword_5AA50);
  v7 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v70 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v64 = &v60 - v10;
  __chkstk_darwin(v11);
  v69 = &v60 - v12;
  v13 = a1 + *(type metadata accessor for BalloonView() + 64);
  v89 = sub_573AC();
  v90 = v14;
  sub_2B4C();
  v15 = sub_56E0C();
  v66 = v16;
  v67 = v15;
  LOBYTE(v13) = v17;
  v68 = v18;
  KeyPath = swift_getKeyPath();
  v65 = swift_getKeyPath();
  v74 = v13 & 1;
  LOBYTE(v89) = v13 & 1;
  LOBYTE(v76) = 1;
  if (qword_715F8 != -1)
  {
    swift_once();
  }

  v19 = qword_75810;
  v72 = swift_getKeyPath();
  v20 = objc_opt_self();
  v73 = v19;

  v61 = v20;
  v21 = [v20 labelColor];
  v71 = sub_56F5C();
  sub_571EC();
  sub_567CC();
  v89 = sub_36A0C(a1);
  v90 = v22;
  v23 = sub_56E0C();
  v25 = v24;
  v27 = v26;
  v60 = v28;
  v29 = swift_getKeyPath();
  v30 = &v6[*(sub_2AFC(&qword_72FD8, &qword_5AA88) + 36)];
  v31 = *(sub_2AFC(&qword_72FE0, &qword_5AA90) + 28);
  v32 = enum case for Text.TruncationMode.tail(_:);
  v33 = sub_56D9C();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = swift_getKeyPath();
  *v6 = v23;
  *(v6 + 1) = v25;
  v6[16] = v27 & 1;
  *(v6 + 3) = v60;
  *(v6 + 4) = v29;
  *(v6 + 5) = 1;
  v6[48] = 0;
  if (qword_71600 != -1)
  {
    swift_once();
  }

  v34 = qword_75818;
  v35 = swift_getKeyPath();
  v36 = &v6[*(sub_2AFC(&qword_72FE8, &qword_5AAC8) + 36)];
  *v36 = v35;
  v36[1] = v34;

  v37 = [v61 secondaryLabelColor];
  *&v6[*(v62 + 36)] = sub_56F5C();
  sub_571EC();
  sub_567CC();
  v38 = v64;
  sub_B0DC(v6, v64, &qword_72FC8, &qword_5AA48);
  v39 = (v38 + *(v63 + 36));
  v40 = v124;
  v41 = v126;
  v39[4] = v125;
  v39[5] = v41;
  v39[6] = v127;
  v42 = v122;
  *v39 = v121;
  v39[1] = v42;
  v39[2] = v123;
  v39[3] = v40;
  v43 = v69;
  sub_B0DC(v38, v69, &qword_72FD0, &qword_5AA50);
  v44 = v70;
  sub_2E28(v43, v70, &qword_72FD0, &qword_5AA50);
  v46 = v66;
  v45 = v67;
  *&v76 = v67;
  *(&v76 + 1) = v66;
  LOBYTE(v77) = v74;
  *(&v77 + 1) = *v120;
  DWORD1(v77) = *&v120[3];
  v47 = v68;
  *(&v77 + 1) = v68;
  v78 = KeyPath;
  LOBYTE(v79) = 1;
  *(&v79 + 1) = *v119;
  DWORD1(v79) = *&v119[3];
  v48 = v65;
  *(&v79 + 1) = v65;
  LOBYTE(v80) = 0;
  DWORD1(v80) = *&v118[3];
  *(&v80 + 1) = *v118;
  *(&v80 + 1) = v72;
  *&v81 = v73;
  *(&v81 + 1) = v71;
  v86 = v115;
  v87 = v116;
  v88 = v117;
  v49 = v111;
  v82 = v111;
  v83 = v112;
  v50 = v114;
  v84 = v113;
  v85 = v114;
  v51 = v81;
  a2[4] = v80;
  a2[5] = v51;
  v52 = v83;
  v53 = v84;
  a2[6] = v49;
  a2[7] = v52;
  v54 = v79;
  a2[2] = v78;
  a2[3] = v54;
  v55 = v77;
  *a2 = v76;
  a2[1] = v55;
  v56 = v88;
  a2[11] = v87;
  a2[12] = v56;
  v57 = v86;
  a2[9] = v50;
  a2[10] = v57;
  a2[8] = v53;
  v58 = a2 + *(sub_2AFC(&qword_72FF0, &qword_5AAD0) + 48);
  sub_2E28(v44, v58, &qword_72FD0, &qword_5AA50);
  sub_2E28(&v76, &v89, &qword_72FF8, &qword_5AAD8);
  sub_2E90(v43, &qword_72FD0, &qword_5AA50);
  sub_2E90(v44, &qword_72FD0, &qword_5AA50);
  v89 = v45;
  v90 = v46;
  v91 = v74;
  *v92 = *v120;
  *&v92[3] = *&v120[3];
  v93 = v47;
  v94 = KeyPath;
  v95 = 0;
  v96 = 1;
  *v97 = *v119;
  *&v97[3] = *&v119[3];
  v98 = v48;
  v99 = 0;
  *&v100[3] = *&v118[3];
  *v100 = *v118;
  v101 = v72;
  v102 = v73;
  v103 = v71;
  v108 = v115;
  v109 = v116;
  v110 = v117;
  v104 = v111;
  v105 = v112;
  v106 = v113;
  v107 = v114;
  return sub_2E90(&v89, &qword_72FF8, &qword_5AAD8);
}

uint64_t sub_36A0C(uint64_t a1)
{
  v2 = type metadata accessor for BalloonView();
  v3 = v2;
  v4 = *(a1 + *(v2 + 28));
  if (v4)
  {
    v5 = sub_5722C();
    v7 = v6;
    v8 = a1 + *(v3 + 48);
    v9 = (v8 + *(type metadata accessor for MessagesContext() + 32));
    if (v5 == *v9 && v7 == v9[1])
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_57B8C();
    }

    v14 = v4;
    v13 = sub_13744(v11 & 1, 0);
  }

  else
  {
    v12 = *(a1 + *(v2 + 60) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_5662C();

    if (v18 != 255)
    {
      if ((v18 & 1) == 0)
      {
        v13 = sub_13744(0, 0);
        sub_BCE4(v17, v18);
        return v13;
      }

      sub_BCE4(v17, v18);
    }

    if (sub_33B78())
    {
      return 0x2074736575716552;
    }

    else
    {
      v16 = a1 + *(v3 + 64);
      return sub_573BC();
    }
  }

  return v13;
}

uint64_t sub_36BC0@<X0>(uint64_t a1@<X8>)
{
  v156 = a1;
  v143 = sub_2AFC(&qword_72E60, &qword_5A808);
  v2 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v143);
  v145 = &v120 - v3;
  v155 = sub_2AFC(&qword_72E18, &qword_5A7E0);
  v4 = *(*(v155 - 8) + 64);
  __chkstk_darwin(v155);
  v146 = &v120 - v5;
  v122 = sub_2AFC(&qword_72E68, &qword_5A810);
  v6 = *(*(v122 - 8) + 64);
  __chkstk_darwin(v122);
  v123 = &v120 - v7;
  v129 = type metadata accessor for BalloonView();
  v130 = *(v129 - 8);
  v8 = *(v130 + 64);
  __chkstk_darwin(v129);
  v131 = v9;
  v132 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_2AFC(&qword_72E40, &qword_5A7F8);
  v134 = *(v142 - 8);
  v10 = *(v134 + 64);
  __chkstk_darwin(v142);
  v133 = &v120 - v11;
  v144 = sub_2AFC(&qword_72E70, &qword_5A818);
  v135 = *(v144 - 8);
  v12 = *(v135 + 64);
  __chkstk_darwin(v144);
  v140 = &v120 - v13;
  v127 = sub_2AFC(&qword_72E38, &qword_5A7F0);
  v126 = *(v127 - 8);
  v14 = *(v126 + 64);
  __chkstk_darwin(v127);
  v121 = &v120 - v15;
  v141 = sub_2AFC(&qword_72E28, &qword_5A7E8);
  v16 = *(*(v141 - 8) + 64);
  __chkstk_darwin(v141);
  v128 = &v120 - v17;
  v138 = sub_2AFC(&qword_72E08, &qword_5A7D8);
  v18 = *(*(v138 - 8) + 64);
  __chkstk_darwin(v138);
  v125 = (&v120 - v19);
  v136 = sub_2AFC(&qword_72E78, &qword_5A820);
  v20 = *(*(v136 - 8) + 64);
  __chkstk_darwin(v136);
  v22 = &v120 - v21;
  v150 = sub_2AFC(&qword_72DF8, &qword_5A7D0);
  v23 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v150);
  v25 = &v120 - v24;
  v152 = sub_2AFC(&qword_72E80, &qword_5A828);
  v26 = *(*(v152 - 8) + 64);
  __chkstk_darwin(v152);
  v154 = &v120 - v27;
  v147 = sub_2AFC(&qword_72E88, &qword_5A830);
  v28 = *(*(v147 - 8) + 64);
  __chkstk_darwin(v147);
  v149 = &v120 - v29;
  v137 = sub_2AFC(&qword_72E90, &qword_5A838);
  v30 = *(*(v137 - 8) + 64);
  __chkstk_darwin(v137);
  v32 = &v120 - v31;
  v148 = sub_2AFC(&qword_72DC8, &qword_5A7B8);
  v33 = *(*(v148 - 8) + 64);
  __chkstk_darwin(v148);
  v139 = &v120 - v34;
  v153 = sub_2AFC(&qword_72DB8, &qword_5A7B0);
  v35 = *(*(v153 - 8) + 64);
  __chkstk_darwin(v153);
  v151 = &v120 - v36;
  v37 = sub_2AFC(&qword_72DE8, &qword_5A7C8);
  v124 = *(v37 - 8);
  v38 = *(v124 + 64);
  __chkstk_darwin(v37);
  v40 = &v120 - v39;
  v41 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v44 = (&v120 - v43);
  v45 = sub_2AFC(&qword_72DD8, &qword_5A7C0);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v48 = &v120 - v47;
  v49 = v1;
  v50 = sub_33DE4();
  if (v50 > 2)
  {
    if (v50 == 3)
    {
      v67 = sub_5697C();
      v68 = v125;
      *v125 = v67;
      *(v68 + 8) = 0x4024000000000000;
      *(v68 + 16) = 0;
      v69 = sub_2AFC(&qword_72EA8, &qword_5A848);
      sub_3AFE0(v1, (v68 + *(v69 + 44)));
      v70 = &qword_72E08;
      v71 = &qword_5A7D8;
      sub_2E28(v68, v22, &qword_72E08, &qword_5A7D8);
      swift_storeEnumTagMultiPayload();
      sub_3260(&qword_72E00, &qword_72E08, &qword_5A7D8);
      sub_56ABC();
      sub_2E28(v25, v149, &qword_72DF8, &qword_5A7D0);
      swift_storeEnumTagMultiPayload();
      sub_41A3C();
      sub_41B78();
      v72 = v151;
      sub_56ABC();
      sub_2E90(v25, &qword_72DF8, &qword_5A7D0);
      sub_2E28(v72, v154, &qword_72DB8, &qword_5A7B0);
      swift_storeEnumTagMultiPayload();
      sub_419B0();
      sub_41C30();
      sub_56ABC();
      sub_2E90(v72, &qword_72DB8, &qword_5A7B0);
      v73 = v68;
LABEL_34:
      v101 = v70;
      v102 = v71;
      return sub_2E90(v73, v101, v102);
    }

    if (v50 != 4)
    {
      v74 = v132;
      sub_43188(v1, v132, type metadata accessor for BalloonView);
      v75 = (*(v130 + 80) + 16) & ~*(v130 + 80);
      v76 = swift_allocObject();
      sub_41488(v74, v76 + v75);
      sub_2AFC(&qword_72E98, &qword_5A840);
      sub_3260(&qword_72EA0, &qword_72E98, &qword_5A840);
      v77 = v133;
      sub_570DC();
      v78 = sub_3260(&qword_72E48, &qword_72E40, &qword_5A7F8);
      v79 = sub_41EF8();
      v80 = v140;
      v81 = v142;
      sub_56E4C();
      (*(v134 + 8))(v77, v81);
      v82 = v135;
      v83 = v144;
      (*(v135 + 16))(v145, v80, v144);
      swift_storeEnumTagMultiPayload();
      sub_41D74(&qword_72E20, &qword_72E28, &qword_5A7E8, sub_41DF0);
      v157 = v81;
      v158 = &type metadata for BalloonButtonStyle;
      v159 = v78;
      v160 = v79;
      swift_getOpaqueTypeConformance2();
      v84 = v146;
      sub_56ABC();
      sub_2E28(v84, v154, &qword_72E18, &qword_5A7E0);
      swift_storeEnumTagMultiPayload();
      sub_419B0();
      sub_41C30();
      sub_56ABC();
      sub_2E90(v84, &qword_72E18, &qword_5A7E0);
      return (*(v82 + 8))(v80, v83);
    }

    v56 = v1;
    v57 = sub_3C68C(v1);
    v58 = v144;
    v59 = v142;
    v60 = v140;
    if (v57)
    {
      v61 = sub_5721C();
      sub_564CC();

      v62 = sub_564BC();
      if (v62 == sub_564BC())
      {
        v63 = v128;
        (*(v126 + 56))(v128, 1, 1, v127);
LABEL_33:
        v70 = &qword_72E28;
        v71 = &qword_5A7E8;
        sub_2E28(v63, v145, &qword_72E28, &qword_5A7E8);
        swift_storeEnumTagMultiPayload();
        sub_41D74(&qword_72E20, &qword_72E28, &qword_5A7E8, sub_41DF0);
        v117 = sub_3260(&qword_72E48, &qword_72E40, &qword_5A7F8);
        v118 = sub_41EF8();
        v157 = v59;
        v158 = &type metadata for BalloonButtonStyle;
        v159 = v117;
        v160 = v118;
        swift_getOpaqueTypeConformance2();
        v119 = v146;
        sub_56ABC();
        sub_2E28(v119, v154, &qword_72E18, &qword_5A7E0);
        swift_storeEnumTagMultiPayload();
        sub_419B0();
        sub_41C30();
        sub_56ABC();

        sub_2E90(v119, &qword_72E18, &qword_5A7E0);
        v73 = v63;
        goto LABEL_34;
      }
    }

    v86 = v129;
    v87 = *(v56 + *(v129 + 24));
    v88 = sub_5643C();
    v89 = sub_5640C();
    v91 = v90;

    if (v89 == 0xD00000000000002DLL && 0x800000000005BFB0 == v91)
    {
    }

    else
    {
      v95 = sub_57B8C();

      if ((v95 & 1) == 0)
      {
LABEL_30:
        v104 = v132;
        sub_43188(v56, v132, type metadata accessor for BalloonView);
        v105 = (*(v130 + 80) + 16) & ~*(v130 + 80);
        v106 = swift_allocObject();
        sub_41488(v104, v106 + v105);
        sub_2AFC(&qword_72E98, &qword_5A840);
        sub_3260(&qword_72EA0, &qword_72E98, &qword_5A840);
        v107 = v133;
        sub_570DC();
        v108 = sub_3260(&qword_72E48, &qword_72E40, &qword_5A7F8);
        v109 = sub_41EF8();
        sub_56E4C();
        (*(v134 + 8))(v107, v59);
        v110 = v135;
        (*(v135 + 16))(v123, v60, v58);
        swift_storeEnumTagMultiPayload();
        v157 = v59;
LABEL_32:
        v158 = &type metadata for BalloonButtonStyle;
        v159 = v108;
        v160 = v109;
        swift_getOpaqueTypeConformance2();
        v116 = v121;
        sub_56ABC();
        (*(v110 + 8))(v60, v58);
        v63 = v128;
        sub_B0DC(v116, v128, &qword_72E38, &qword_5A7F0);
        (*(v126 + 56))(v63, 0, 1, v127);
        goto LABEL_33;
      }
    }

    v96 = *(v56 + *(v86 + 56));
    v97 = sub_5762C();
    if (v98)
    {
      if (v97 == 0xD000000000000013 && v98 == 0x800000000005BFE0)
      {

        goto LABEL_30;
      }

      v103 = sub_57B8C();

      if (v103)
      {
        goto LABEL_30;
      }
    }

    v111 = v132;
    sub_43188(v56, v132, type metadata accessor for BalloonView);
    v112 = (*(v130 + 80) + 16) & ~*(v130 + 80);
    v113 = swift_allocObject();
    v114 = sub_41488(v111, v113 + v112);
    v151 = &v120;
    __chkstk_darwin(v114);
    *(&v120 - 2) = v56;
    sub_2AFC(&qword_72E98, &qword_5A840);
    sub_3260(&qword_72EA0, &qword_72E98, &qword_5A840);
    v115 = v133;
    sub_570DC();
    v108 = sub_3260(&qword_72E48, &qword_72E40, &qword_5A7F8);
    v109 = sub_41EF8();
    sub_56E4C();
    (*(v134 + 8))(v115, v59);
    v110 = v135;
    (*(v135 + 16))(v123, v60, v58);
    swift_storeEnumTagMultiPayload();
    v157 = v59;
    goto LABEL_32;
  }

  if (v50)
  {
    if (v50 == 1)
    {
      swift_storeEnumTagMultiPayload();
      sub_41AC8();
      v51 = v139;
      sub_56ABC();
      v52 = &qword_72DC8;
      v53 = &qword_5A7B8;
      sub_2E28(v51, v149, &qword_72DC8, &qword_5A7B8);
      swift_storeEnumTagMultiPayload();
      sub_41A3C();
      sub_41B78();
      v54 = v151;
      sub_56ABC();
      v55 = v51;
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_3260(&qword_72E00, &qword_72E08, &qword_5A7D8);
      sub_56ABC();
      v52 = &qword_72DF8;
      v53 = &qword_5A7D0;
      sub_2E28(v25, v149, &qword_72DF8, &qword_5A7D0);
      swift_storeEnumTagMultiPayload();
      sub_41A3C();
      sub_41B78();
      v54 = v151;
      sub_56ABC();
      v55 = v25;
    }

    sub_2E90(v55, v52, v53);
    v70 = &qword_72DB8;
    v71 = &qword_5A7B0;
    sub_2E28(v54, v154, &qword_72DB8, &qword_5A7B0);
    swift_storeEnumTagMultiPayload();
    sub_419B0();
    sub_41C30();
    sub_56ABC();
    v73 = v54;
    goto LABEL_34;
  }

  v64 = *(v1 + *(v129 + 24));
  sub_5630C();
  v65 = sub_5636C();
  v66 = *(v65 - 8);
  if ((*(v66 + 48))(v44, 1, v65) == 1)
  {
    sub_2E90(v44, &qword_71A10, &qword_5A5A0);
LABEL_27:
    v94 = 1;
    goto LABEL_28;
  }

  if ((*(v66 + 88))(v44, v65) != enum case for ATQuestion.TopicMetadata.communication(_:))
  {
    (*(v66 + 8))(v44, v65);
    goto LABEL_27;
  }

  (*(v66 + 96))(v44, v65);
  v92 = *v44;
  *v40 = sub_5697C();
  *(v40 + 1) = 0;
  v40[16] = 1;
  v93 = sub_2AFC(&qword_72EB0, &qword_5A850);
  sub_3A0F0(v49, v92, &v40[*(v93 + 44)]);

  sub_B0DC(v40, v48, &qword_72DE8, &qword_5A7C8);
  v94 = 0;
LABEL_28:
  (*(v124 + 56))(v48, v94, 1, v37);
  sub_2E28(v48, v32, &qword_72DD8, &qword_5A7C0);
  swift_storeEnumTagMultiPayload();
  sub_41AC8();
  v99 = v139;
  sub_56ABC();
  sub_2E28(v99, v149, &qword_72DC8, &qword_5A7B8);
  swift_storeEnumTagMultiPayload();
  sub_41A3C();
  sub_41B78();
  v100 = v151;
  sub_56ABC();
  sub_2E90(v99, &qword_72DC8, &qword_5A7B8);
  sub_2E28(v100, v154, &qword_72DB8, &qword_5A7B0);
  swift_storeEnumTagMultiPayload();
  sub_419B0();
  sub_41C30();
  sub_56ABC();
  sub_2E90(v100, &qword_72DB8, &qword_5A7B0);
  v73 = v48;
  v101 = &qword_72DD8;
  v102 = &qword_5A7C0;
  return sub_2E90(v73, v101, v102);
}

void sub_38420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for MessagesContext();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for BalloonView();
  sub_43188(a3 + *(v9 + 48), v8, type metadata accessor for MessagesContext);
  v10 = *(v5 + 44);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_43238(v8, type metadata accessor for MessagesContext);
  if (Strong)
  {
    [Strong requestResize];
  }
}

double sub_38504@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for BalloonView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v33 - v10);
  v12 = *(a1 + *(v4 + 24));
  sub_5630C();
  v13 = sub_5636C();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_2E90(v11, &qword_71A10, &qword_5A5A0);
LABEL_6:
    v23 = *(a1 + *(v4 + 56));
    v24 = sub_575FC();
    v26 = v25;
    sub_43188(a1, &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BalloonView);
    v27 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v28 = swift_allocObject();
    sub_41488(v7, v28 + v27);
    v34 = &_swiftEmptyArrayStorage;
    sub_2AFC(&qword_72D70, &qword_5AF60);
    sub_5707C();
    v34 = v24;
    v35 = v26;
    v36 = v40;
    v37 = sub_417B0;
    v38 = v28;
    v39 = 1;
    sub_415E0();
    sub_56ABC();
    goto LABEL_7;
  }

  if ((*(v14 + 88))(v11, v13) != enum case for ATQuestion.TopicMetadata.communication(_:))
  {
    (*(v14 + 8))(v11, v13);
    goto LABEL_6;
  }

  (*(v14 + 96))(v11, v13);
  v15 = *v11;
  v16 = *(a1 + *(v4 + 56));
  v17 = sub_575FC();
  v19 = v18;
  v20 = sub_574AC();
  sub_43188(a1, &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BalloonView);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = swift_allocObject();
  sub_41488(&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v34 = v20;
  sub_2AFC(&qword_72D70, &qword_5AF60);
  sub_5707C();
  v34 = v17;
  v35 = v19;
  v36 = v40;
  v37 = sub_43708;
  v38 = v22;
  v39 = 0;
  sub_415E0();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  sub_56ABC();

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

LABEL_7:
  result = *&v40;
  v30 = v41;
  v31 = v42;
  v32 = v43;
  *a2 = v40;
  *(a2 + 16) = v30;
  *(a2 + 32) = v31;
  *(a2 + 48) = v32;
  return result;
}

uint64_t sub_38944(void *a1)
{
  v2 = type metadata accessor for BalloonView();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v6 = sub_562FC();
    sub_B144(v6, qword_75758);
    sub_43188(v28, v5, type metadata accessor for BalloonView);

    v7 = sub_562DC();
    v8 = sub_5794C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30[0] = swift_slowAlloc();
      *v9 = 138412802;
      v10 = &v5[*(v2 + 48)];
      v11 = *(v10 + 1);
      if (v11)
      {
        HIDWORD(v26) = v8;
        v12 = *v10;
        sub_B8D8();
        swift_allocError();
        *v13 = v12;
        v13[1] = v11;
        LOBYTE(v8) = BYTE4(v26);

        v11 = _swift_stdlib_bridgeErrorToNSError();
      }

      sub_43238(v5, type metadata accessor for BalloonView);
      *(v9 + 4) = v11;
      v14 = v27;
      *v27 = v11;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_293C0(0xD000000000000025, 0x800000000005CC10, v30);
      *(v9 + 22) = 2080;
      sub_5748C();
      v15 = sub_5785C();
      v17 = sub_293C0(v15, v16, v30);

      *(v9 + 24) = v17;
      _os_log_impl(&dword_0, v7, v8, "%@: %s called. contacts: %s", v9, 0x20u);
      sub_2E90(v14, &qword_71828, &qword_598B0);

      swift_arrayDestroy();
    }

    else
    {

      sub_43238(v5, type metadata accessor for BalloonView);
    }

    sub_3F9E8(a1);
  }

  else
  {
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v18 = sub_562FC();
    sub_B144(v18, qword_75758);
    v19 = sub_562DC();
    v20 = sub_5794C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "BalloonView.updatePayload. User Cancelled. Skipping", v21, 2u);
    }
  }

  v22 = (v28 + *(v2 + 68));
  v23 = *v22;
  v24 = *(v22 + 1);
  LOBYTE(v30[0]) = v23;
  v30[1] = v24;
  v29 = 0;
  sub_2AFC(&qword_71F40, &unk_59520);
  return sub_5709C();
}

uint64_t sub_38D4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for BalloonView();
  v29 = *(v4 - 1);
  v5 = *(v29 + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for MessagesContext();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = (&v27 - v12);
  v14 = *(a1 + v4[14]);
  v15 = sub_5763C();
  sub_5630C();

  v16 = sub_5636C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v13, 1, v16) == 1)
  {
    sub_2E90(v13, &qword_71A10, &qword_5A5A0);
LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  if ((*(v17 + 88))(v13, v16) != enum case for ATQuestion.TopicMetadata.communication(_:))
  {
    (*(v17 + 8))(v13, v16);
    goto LABEL_6;
  }

  (*(v17 + 96))(v13, v16);
  v28 = *v13;
  sub_43188(a1 + v4[12], v9, type metadata accessor for MessagesContext);
  v18 = (a1 + v4[20]);
  v20 = *v18;
  v19 = v18[1];
  v31 = v20;
  v32 = v19;
  v21 = v14;
  sub_2AFC(&qword_72D68, &qword_5A748);
  sub_5708C();
  v22 = v30;
  swift_getKeyPath();
  v31 = v22;
  sub_431F0(&qword_71A58, type metadata accessor for ManageContactsSetting);
  sub_561FC();

  v23 = *(v22 + 24);

  sub_43188(a1, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BalloonView);
  v24 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v25 = swift_allocObject();
  sub_41488(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24);
  result = sub_9D34(v28, v9, v21, v23, sub_41798, v25);
LABEL_7:
  *a2 = result;
  a2[1] = 0;
  return result;
}

uint64_t sub_39104(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for BalloonView() + 72));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_2AFC(&qword_71F40, &unk_59520);
  return sub_5709C();
}

void sub_39174(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesContext();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  v9 = type metadata accessor for BalloonView();
  v10 = (a2 + *(v9 + 48));
  v12 = *v10;
  v11 = v10[1];
  if (a1)
  {
    v13 = v9;
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v14 = sub_562FC();
    sub_B144(v14, qword_75758);
    swift_bridgeObjectRetain_n();
    sub_BCD8(v8, 1);
    v15 = sub_562DC();
    v16 = sub_5792C();

    sub_BCFC(v8, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412546;
      if (v11)
      {
        sub_B8D8();
        swift_allocError();
        *v19 = v12;
        v19[1] = v11;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        v21 = v20;
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      *(v17 + 4) = v20;
      *v18 = v21;
      *(v17 + 12) = 2112;
      swift_errorRetain();
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v30;
      v18[1] = v30;
      _os_log_impl(&dword_0, v15, v16, "%@: Error sending response: %@", v17, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();
    }

    else
    {
    }

    v31 = (a2 + *(v13 + 76));
    v32 = *v31;
    v33 = *(v31 + 1);
    v37[16] = v32;
    v38 = v33;
    v37[15] = 1;
    sub_2AFC(&qword_71F40, &unk_59520);
    sub_5709C();
  }

  else
  {
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v22 = sub_562FC();
    sub_B144(v22, qword_75758);
    swift_bridgeObjectRetain_n();
    sub_BCD8(v8, 0);
    v23 = sub_562DC();
    v24 = sub_5794C();

    sub_BCFC(v8, 0);
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412546;
      if (v11)
      {
        sub_B8D8();
        swift_allocError();
        *v27 = v12;
        v27[1] = v11;
        v28 = _swift_stdlib_bridgeErrorToNSError();
        v29 = v28;
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      *(v25 + 4) = v28;
      *(v25 + 12) = 2112;
      *(v25 + 14) = v8;
      *v26 = v29;
      v26[1] = v8;
      v34 = v8;
      _os_log_impl(&dword_0, v23, v24, "%@: Successfully sent response: %@", v25, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_43188(v10, v7, type metadata accessor for MessagesContext);
    v35 = *(v4 + 36);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_43238(v7, type metadata accessor for MessagesContext);
    if (Strong)
    {
      [Strong requestResize];
    }
  }
}

uint64_t sub_395F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v54 = a1;
  v57 = a2;
  v2 = type metadata accessor for BalloonView();
  v51 = *(v2 - 8);
  v3 = *(v51 + 64);
  __chkstk_darwin(v2 - 8);
  v52 = v4;
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2AFC(&qword_71F68, &unk_59540);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v55 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v56 = &v46 - v9;
  v10 = sub_5605C();
  v47 = *(v10 - 8);
  v48 = v10;
  v11 = *(v47 + 64);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_561CC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v46 - v20;
  v22 = sub_5773C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v46 - v28;
  v30 = sub_5606C();
  v49 = *(v30 - 8);
  v50 = v30;
  v31 = *(v49 + 64);
  __chkstk_darwin(v30);
  v58 = &v46 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_576DC();
  sub_D820(0, &qword_717B0, NSBundle_ptr);
  v33 = sub_5796C();
  if (!v33)
  {
    v33 = [objc_opt_self() mainBundle];
  }

  v34 = v33;
  sub_561BC();
  (*(v23 + 16))(v26, v29, v22);
  (*(v15 + 16))(v18, v21, v14);
  v35 = [v34 bundleURL];
  v46 = v22;
  v36 = v14;
  v37 = v35;
  sub_560AC();

  (*(v47 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v48);
  sub_5607C();

  (*(v15 + 8))(v21, v36);
  (*(v23 + 8))(v29, v46);
  v38 = v56;
  sub_5666C();
  v39 = sub_5667C();
  (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
  v40 = v53;
  sub_43188(v54, v53, type metadata accessor for BalloonView);
  v41 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v42 = swift_allocObject();
  sub_41488(v40, v42 + v41);
  v43 = sub_2E28(v38, v55, &qword_71F68, &unk_59540);
  __chkstk_darwin(v43);
  v44 = v58;
  *(&v46 - 2) = v58;
  sub_570CC();
  sub_2E90(v38, &qword_71F68, &unk_59540);
  return (*(v49 + 8))(v44, v50);
}

uint64_t sub_39C10(uint64_t a1)
{
  v2 = type metadata accessor for BalloonView();
  v3 = (a1 + *(v2 + 76));
  v6 = *v3;
  v7 = *(v3 + 1);
  sub_2AFC(&qword_71F40, &unk_59520);
  sub_5709C();
  v4 = *(a1 + *(v2 + 60) + 8);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_5663C();
}

uint64_t sub_39CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_569DC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  if (os_variant_has_internal_ui() && (v7 & 1) != 0)
  {
    swift_errorRetain();
    sub_2AFC(&qword_71D30, &qword_5A740);
    swift_willThrowTypedImpl();
    swift_getErrorValue();
    v8 = sub_57BDC();
    v10 = v9;
    sub_BCFC(v6, 1);
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  sub_569CC();
  v19._object = 0x800000000005C540;
  v19._countAndFlagsBits = 0xD000000000000038;
  sub_569BC(v19);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v20._countAndFlagsBits = v8;
    v20._object = v10;
    sub_577DC(v20);

    v12._countAndFlagsBits = 32;
    v13 = 0xE100000000000000;
  }

  else
  {

    v12._countAndFlagsBits = 0;
    v13 = 0xE000000000000000;
  }

  v12._object = v13;
  sub_569AC(v12);

  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  sub_569BC(v21);
  sub_569FC();
  sub_D820(0, &qword_717B0, NSBundle_ptr);
  if (!sub_5796C())
  {
    v14 = [objc_opt_self() mainBundle];
  }

  result = sub_56DEC();
  *a2 = result;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v18;
  return result;
}

void *sub_39F3C()
{
  v0 = sub_5748C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &_swiftEmptyArrayStorage;
  v5 = sub_574AC();
  v6 = *(v5 + 16);
  if (v6)
  {
    v9 = *(v1 + 16);
    v7 = v1 + 16;
    v8 = v9;
    v10 = (*(v7 + 64) + 32) & ~*(v7 + 64);
    v17[2] = v5;
    v11 = v5 + v10;
    v12 = *(v7 + 56);
    do
    {
      v8(v4, v11, v0);
      v13 = sub_311D8();
      (*(v7 - 8))(v4, v0);
      v14 = v13;
      sub_5782C();
      if (*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v18 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v17[1] = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
        sub_5786C();
      }

      sub_5787C();

      v11 += v12;
      --v6;
    }

    while (v6);
    v15 = v18;
  }

  else
  {

    return &_swiftEmptyArrayStorage;
  }

  return v15;
}

uint64_t sub_3A0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v42 = a1;
  v43 = a2;
  v45 = a3;
  v3 = sub_56B0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BalloonView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = sub_2AFC(&qword_72EB8, &qword_5A858);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v42 - v13;
  v44 = sub_2AFC(&qword_72EC0, &qword_5A860);
  v15 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v42 - v19;
  sub_43188(v42, &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BalloonView);
  v21 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v22 = swift_allocObject();
  sub_41488(&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v46 = v43;
  sub_2AFC(&qword_72EC8, &qword_5A868);
  sub_41FBC();
  sub_570DC();
  if (qword_715F8 != -1)
  {
    swift_once();
  }

  v23 = qword_75810;
  KeyPath = swift_getKeyPath();
  v25 = &v14[*(v11 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;

  sub_56AFC();
  sub_42150();
  sub_431F0(&qword_72F00, &type metadata accessor for BorderlessButtonStyle);
  sub_56E4C();
  (*(v4 + 8))(v7, v3);
  sub_2E90(v14, &qword_72EB8, &qword_5A858);
  v26 = &v20[*(sub_2AFC(&qword_72F08, &qword_5A8C0) + 36)];
  v27 = enum case for RoundedCornerStyle.continuous(_:);
  v28 = sub_56A0C();
  (*(*(v28 - 8) + 104))(v26, v27, v28);
  v29 = objc_opt_self();
  v30 = [v29 quaternarySystemFillColor];
  v31 = sub_56F5C();
  v32 = sub_2AFC(&qword_72F10, &qword_5A8C8);
  *&v26[*(v32 + 52)] = v31;
  *&v26[*(v32 + 56)] = 256;
  v33 = sub_571DC();
  v35 = v34;
  v36 = &v26[*(sub_2AFC(&qword_72F18, &qword_5A8D0) + 36)];
  *v36 = v33;
  v36[1] = v35;
  v37 = [v29 systemBlueColor];
  *&v20[*(v44 + 36)] = sub_56F5C();
  sub_2E28(v20, v17, &qword_72EC0, &qword_5A860);
  v38 = v45;
  *v45 = 0;
  *(v38 + 8) = 0;
  v39 = sub_2AFC(&qword_72F20, &qword_5A8D8);
  sub_2E28(v17, v38 + *(v39 + 48), &qword_72EC0, &qword_5A860);
  v40 = v38 + *(v39 + 64);
  *v40 = 0;
  v40[8] = 0;
  sub_2E90(v20, &qword_72EC0, &qword_5A860);
  return sub_2E90(v17, &qword_72EC0, &qword_5A860);
}

uint64_t sub_3A628(uint64_t a1)
{
  if (qword_715B8 != -1)
  {
    swift_once();
  }

  v2 = sub_562FC();
  sub_B144(v2, qword_75758);
  v3 = sub_562DC();
  v4 = sub_5794C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Add/Edit Name button tapped", v5, 2u);
  }

  v6 = (a1 + *(type metadata accessor for BalloonView() + 68));
  v8 = *v6;
  v9 = *(v6 + 1);
  sub_2AFC(&qword_71F40, &unk_59520);
  return sub_5709C();
}

uint64_t sub_3A758@<X0>(uint64_t *a1@<X8>)
{
  v44 = a1;
  v1 = sub_5606C();
  v42 = *(v1 - 8);
  v43 = v1;
  v2 = *(v42 + 64);
  __chkstk_darwin(v1);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v41 = &v41 - v5;
  v6 = sub_5748C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_574AC();
  v12 = result;
  v13 = 0;
  v14 = *(result + 16);
  v15 = (v7 + 8);
  while (1)
  {
    v16 = v13;
    if (v14 == v13)
    {
      goto LABEL_7;
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    (*(v7 + 16))(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v6);
    sub_5745C();
    if (v17)
    {

      (*v15)(v10, v6);
      goto LABEL_9;
    }

    ++v13;
    sub_5743C();
    v19 = v18;
    result = (*v15)(v10, v6);
    if (v19)
    {

LABEL_7:

LABEL_9:
      v20 = v45;
      v21 = v41;
      sub_3AB2C(v14 != v16, v41);
      v23 = v42;
      v22 = v43;
      (*(v42 + 16))(v20, v21, v43);
      v24 = sub_56DFC();
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v31 = sub_56CAC();
      sub_5668C();
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;
      (*(v23 + 8))(v21, v22);
      v47 = v28 & 1;
      v46 = 0;
      result = swift_getKeyPath();
      v48 = 1;
      v40 = v44;
      *v44 = v24;
      v40[1] = v26;
      *(v40 + 16) = v28 & 1;
      v40[3] = v30;
      *(v40 + 32) = v31;
      v40[5] = v33;
      v40[6] = v35;
      v40[7] = v37;
      v40[8] = v39;
      *(v40 + 72) = 0;
      v40[10] = result;
      v40[11] = 0;
      *(v40 + 96) = 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_3AA80(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_3AB2C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = sub_5605C();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  __chkstk_darwin(v3);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_561CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v36 - v12;
  v14 = sub_5773C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v36 - v20;
  __chkstk_darwin(v22);
  v24 = &v36 - v23;
  v36 = v25;
  if (a1)
  {
    sub_576DC();
    sub_D820(0, &qword_717B0, NSBundle_ptr);
    v26 = sub_5796C();
    if (!v26)
    {
      v26 = [objc_opt_self() mainBundle];
    }

    v27 = v26;
    sub_561BC();
    (*(v15 + 16))(v21, v24, v14);
    (*(v7 + 16))(v10, v13, v6);
    v28 = v13;
    v29 = v7;
    v30 = [v27 bundleURL];
    v31 = v37;
    sub_560AC();

    (*(v38 + 104))(v31, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v39);
  }

  else
  {
    sub_576DC();
    sub_D820(0, &qword_717B0, NSBundle_ptr);
    v32 = sub_5796C();
    if (!v32)
    {
      v32 = [objc_opt_self() mainBundle];
    }

    v27 = v32;
    sub_561BC();
    (*(v15 + 16))(v21, v18, v14);
    (*(v7 + 16))(v10, v13, v6);
    v33 = [v27 bundleURL];
    v28 = v13;
    v29 = v7;
    v34 = v37;
    sub_560AC();

    (*(v38 + 104))(v34, enum case for LocalizedStringResource.BundleDescription.atURL(_:), v39);
    v24 = v18;
  }

  sub_5607C();

  (*(v29 + 8))(v28, v6);
  return (*(v15 + 8))(v24, v36);
}

uint64_t sub_3AFE0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for BalloonView();
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v46 = v7;
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_2AFC(&qword_72F30, &qword_5A918);
  v9 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v11 = v44 - v10;
  v12 = sub_2AFC(&qword_72F38, &qword_5A920);
  v48 = *(v12 - 8);
  v13 = *(v48 + 64);
  __chkstk_darwin(v12);
  v51 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v50 = v44 - v16;
  __chkstk_darwin(v17);
  v49 = v44 - v18;
  __chkstk_darwin(v19);
  v54 = v44 - v20;
  v47 = type metadata accessor for BalloonView;
  v45 = v8;
  sub_43188(a1, v8, type metadata accessor for BalloonView);
  v21 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v22 = swift_allocObject();
  sub_41488(v8, v22 + v21);
  v44[2] = sub_2AFC(&qword_72F40, &qword_5A928);
  v44[1] = sub_3260(&qword_72F48, &qword_72F40, &qword_5A928);
  sub_570DC();
  v23 = a1;
  v24 = *(a1 + *(v4 + 68) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  v25 = v56;
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  v28 = &v11[*(v53 + 36)];
  *v28 = KeyPath;
  v28[1] = sub_42274;
  v28[2] = v27;
  sub_4227C();
  sub_41EF8();
  sub_56E4C();
  sub_2E90(v11, &qword_72F30, &qword_5A918);
  v29 = v45;
  sub_43188(v23, v45, v47);
  v30 = swift_allocObject();
  sub_41488(v29, v30 + v21);
  sub_570DC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_5662C();

  LOBYTE(v24) = v55;
  v31 = swift_getKeyPath();
  v32 = swift_allocObject();
  *(v32 + 16) = v24;
  v33 = &v11[*(v53 + 36)];
  *v33 = v31;
  v33[1] = sub_4370C;
  v33[2] = v32;
  v34 = v49;
  sub_56E4C();
  sub_2E90(v11, &qword_72F30, &qword_5A918);
  v35 = v48;
  v36 = *(v48 + 16);
  v37 = v50;
  v38 = v54;
  v36(v50, v54, v12);
  v39 = v51;
  v36(v51, v34, v12);
  v40 = v52;
  v36(v52, v37, v12);
  v41 = sub_2AFC(&qword_72F68, &qword_5A9B8);
  v36(&v40[*(v41 + 48)], v39, v12);
  v42 = *(v35 + 8);
  v42(v34, v12);
  v42(v38, v12);
  v42(v39, v12);
  return (v42)(v37, v12);
}

void sub_3B5EC(uint64_t a1)
{
  if (qword_715B8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v2 = sub_562FC();
  sub_B144(v2, qword_75758);
  v3 = sub_562DC();
  v4 = sub_5794C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Decline button tapped", v5, 2u);
  }

  v6 = *(a1 + *(type metadata accessor for BalloonView() + 24));
  v7 = sub_5637C();
  v8 = v7;
  if (v7 >> 62)
  {
    v9 = sub_57B1C();
    if (v9)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = *(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8));
    if (v9)
    {
LABEL_6:
      v10 = 0;
      do
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = sub_57AEC();
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            sub_3B858(v16);
            goto LABEL_22;
          }
        }

        else
        {
          if (v10 >= *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_18;
          }

          v11 = *(v8 + 8 * v10 + 32);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_15;
          }
        }

        v16 = v11;
        sub_564CC();
        v13 = sub_564BC();
        if (v13 == sub_564BC())
        {
          goto LABEL_16;
        }

        ++v10;
      }

      while (v12 != v9);
    }
  }

  v16 = sub_562DC();
  v14 = sub_5792C();
  if (os_log_type_enabled(v16, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_0, v16, v14, "The question did not contain a decline answer choice!", v15, 2u);
  }

LABEL_22:
}

void sub_3B858(void *a1)
{
  v77 = a1;
  v2 = sub_2AFC(&qword_71820, &qword_59550);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v71 = &v66 - v4;
  v76 = type metadata accessor for MessagesContext();
  v5 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v75 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BalloonView();
  v68 = *(v7 - 1);
  v8 = *(v68 + 64);
  __chkstk_darwin(v7);
  v69 = v9;
  v70 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v74 = &v66 - v11;
  v12 = sub_5733C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5734C();
  v17 = (v1 + v7[13]);
  v18 = *v17;
  v19 = v17[1];
  v67 = *(v1 + v7[6]);
  v20 = sub_5643C();
  (*(v13 + 104))(v16, enum case for ResponseJourney.Checkpoint.userDidInitiateMessagesTranscript(_:), v12);
  sub_431F0(&qword_720E0, &type metadata accessor for ResponseJourney);
  sub_575BC();

  (*(v13 + 8))(v16, v12);
  v21 = v1;
  v22 = (v1 + v7[12]);
  v23 = *v22;
  v24 = v22[1];
  v72 = v7;
  v73 = v23;
  if (qword_715B8 != -1)
  {
    swift_once();
  }

  v25 = sub_562FC();
  sub_B144(v25, qword_75758);
  v26 = v74;
  sub_43188(v1, v74, type metadata accessor for BalloonView);

  v27 = v77;
  v28 = sub_562DC();
  v29 = sub_5794C();
  v77 = v27;

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412802;
    if (v24)
    {
      sub_B8D8();
      swift_allocError();
      *v32 = v73;
      v32[1] = v24;

      v33 = _swift_stdlib_bridgeErrorToNSError();
      v34 = v33;
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    *(v30 + 4) = v33;
    *(v30 + 12) = 2112;
    v35 = v77;
    *(v30 + 14) = v77;
    *v31 = v34;
    v31[1] = v35;
    *(v30 + 22) = 2112;
    v36 = v26;
    v37 = *(v26 + v72[6]);
    v38 = v35;
    v39 = v37;
    sub_43238(v36, type metadata accessor for BalloonView);
    *(v30 + 24) = v39;
    v31[2] = v39;
    _os_log_impl(&dword_0, v28, v29, "%@: User selected answer choice. answerChoice: %@, question: %@", v30, 0x20u);
    sub_2AFC(&qword_71828, &qword_598B0);
    swift_arrayDestroy();
  }

  else
  {

    sub_43238(v26, type metadata accessor for BalloonView);
  }

  v40 = v75;
  sub_43188(v22, v75, type metadata accessor for MessagesContext);
  v41 = *(v76 + 36);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_43238(v40, type metadata accessor for MessagesContext);
  if (Strong && (v43 = [Strong activeConversation], Strong, v43))
  {
    v44 = v67;
    v45 = [v43 senderAddress];
    sub_5778C();

    v46 = objc_allocWithZone(sub_5725C());
    v47 = v77;
    v48 = sub_5723C();
    v49 = sub_578CC();
    v50 = v71;
    (*(*(v49 - 8) + 56))(v71, 1, 1, v49);
    v51 = v70;
    sub_43188(v21, v70, type metadata accessor for BalloonView);
    sub_578AC();
    v52 = v48;
    v53 = v43;
    v54 = sub_5789C();
    v55 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v56 = (v69 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    *(v57 + 16) = v54;
    *(v57 + 24) = &protocol witness table for MainActor;
    sub_41488(v51, v57 + v55);
    *(v57 + v56) = v52;
    *(v57 + ((v56 + 15) & 0xFFFFFFFFFFFFFFF8)) = v53;
    sub_31894(0, 0, v50, &unk_5A9E0, v57);
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v58 = v77;
    v52 = sub_562DC();
    v59 = sub_5792C();

    if (os_log_type_enabled(v52, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v60 = 138412546;
      if (v24)
      {
        sub_B8D8();
        swift_allocError();
        *v62 = v73;
        v62[1] = v24;
        v63 = _swift_stdlib_bridgeErrorToNSError();
        v64 = v63;
      }

      else
      {
        v63 = 0;
        v64 = 0;
      }

      *(v60 + 4) = v63;
      *(v60 + 12) = 2112;
      *(v60 + 14) = v58;
      *v61 = v64;
      v61[1] = v58;
      v65 = v58;
      _os_log_impl(&dword_0, v52, v59, "%@: Could not send response because activeConversation was nil. answerChoice: %@", v60, 0x16u);
      sub_2AFC(&qword_71828, &qword_598B0);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

uint64_t sub_3C0A8(uint64_t a1)
{
  v2 = type metadata accessor for BalloonView();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_715B8 != -1)
  {
    swift_once();
  }

  v6 = sub_562FC();
  sub_B144(v6, qword_75758);
  sub_43188(a1, v5, type metadata accessor for BalloonView);
  v7 = sub_562DC();
  v8 = sub_5794C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = &v5[*(v2 + 48)];
    v12 = v11[1];
    if (v12)
    {
      v13 = *v11;
      sub_B8D8();
      swift_allocError();
      *v14 = v13;
      v14[1] = v12;

      v12 = _swift_stdlib_bridgeErrorToNSError();
    }

    sub_43238(v5, type metadata accessor for BalloonView);
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_0, v7, v8, "%@: Review button tapped", v9, 0xCu);
    sub_2E90(v10, &qword_71828, &qword_598B0);
  }

  else
  {

    sub_43238(v5, type metadata accessor for BalloonView);
  }

  v15 = a1 + *(v2 + 72);
  v16 = *v15;
  v17 = *(v15 + 8);
  v19[16] = v16;
  v20 = v17;
  v19[15] = 1;
  sub_2AFC(&qword_71F40, &unk_59520);
  return sub_5709C();
}

double sub_3C33C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_5697C();
  v16 = 1;
  sub_3C4A4(&v9);
  v21 = v13;
  v22[0] = v14[0];
  *(v22 + 9) = *(v14 + 9);
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v23[0] = v9;
  v23[1] = v10;
  v23[2] = v11;
  v23[3] = v12;
  v23[4] = v13;
  v24[0] = v14[0];
  *(v24 + 9) = *(v14 + 9);
  sub_2E28(&v17, &v8, &qword_72F70, &qword_5A9C0);
  sub_2E90(v23, &qword_72F70, &qword_5A9C0);
  *&v15[55] = v20;
  *&v15[71] = v21;
  *&v15[87] = v22[0];
  *&v15[96] = *(v22 + 9);
  *&v15[7] = v17;
  *&v15[23] = v18;
  *&v15[39] = v19;
  v3 = *&v15[32];
  *(a1 + 65) = *&v15[48];
  v4 = *&v15[80];
  *(a1 + 81) = *&v15[64];
  *(a1 + 97) = v4;
  *(a1 + 113) = *&v15[96];
  result = *v15;
  v6 = *&v15[16];
  *(a1 + 17) = *v15;
  *(a1 + 33) = v6;
  v7 = v16;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  *(a1 + 49) = v3;
  return result;
}

uint64_t sub_3C4A4@<X0>(uint64_t a1@<X8>)
{
  sub_569EC();
  sub_D820(0, &qword_717B0, NSBundle_ptr);
  if (!sub_5796C())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = sub_56DEC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_571DC();
  sub_566EC();
  *&v22 = v3;
  *(&v22 + 1) = v5;
  LOBYTE(v23) = v7 & 1;
  *(&v23 + 1) = v9;
  v10 = v19;
  v11 = v20;
  v24 = v19;
  v25 = v20;
  *&v17[39] = v19;
  v26 = v21;
  *&v17[71] = v21;
  *&v17[55] = v20;
  *&v17[23] = v23;
  *&v17[7] = v22;
  v12 = *v17;
  *(a1 + 25) = *&v17[16];
  *(a1 + 9) = v12;
  v13 = *&v17[48];
  v14 = *&v17[64];
  *(a1 + 88) = *&v17[79];
  *(a1 + 96) = 0;
  *(a1 + 73) = v14;
  v33 = v7 & 1;
  v18 = 1;
  v16[80] = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 57) = v13;
  *(a1 + 41) = *&v17[32];
  *(a1 + 104) = 1;
  v27[0] = v3;
  v27[1] = v5;
  v28 = v7 & 1;
  v29 = v9;
  v32 = v21;
  v31 = v11;
  v30 = v10;
  sub_2E28(&v22, v16, &qword_72F78, &unk_5A9C8);
  return sub_2E90(v27, &qword_72F78, &unk_5A9C8);
}

void *sub_3C68C(uint64_t a1)
{
  v2 = type metadata accessor for BalloonView();
  v3 = *(a1 + *(v2 + 28));
  v4 = v3;
  if (!v3)
  {
    v5 = *(a1 + *(v2 + 60) + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_5662C();

    if (v9 == 255)
    {
LABEL_5:
      v4 = 0;
      goto LABEL_6;
    }

    v4 = v8;
    if (v9)
    {
      sub_BCE4(v8, v9);
      goto LABEL_5;
    }
  }

LABEL_6:
  v6 = v3;
  return v4;
}

void sub_3C74C(uint64_t a1)
{
  if (qword_715B8 != -1)
  {
    swift_once();
  }

  v2 = sub_562FC();
  sub_B144(v2, qword_75758);
  v3 = sub_562DC();
  v4 = sub_5794C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Open in X button tapped", v5, 2u);
  }

  v6 = (a1 + *(type metadata accessor for BalloonView() + 52));
  v7 = v6[1];
  if (v7)
  {
    sub_3C84C(*v6, v7);
  }
}

void sub_3C84C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    v6 = sub_5774C();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v9[4] = sub_42C30;
    v9[5] = v7;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_40370;
    v9[3] = &unk_6F568;
    v8 = _Block_copy(v9);

    [v5 openApplicationWithBundleIdentifier:v6 configuration:0 completionHandler:v8];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

double sub_3C980@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5697C();
  v22 = 1;
  sub_3CAE0(a1, &v12);
  v29 = v18;
  v30 = v19;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v23 = v12;
  v24 = v13;
  v32[6] = v18;
  v32[7] = v19;
  v32[2] = v14;
  v32[3] = v15;
  v32[4] = v16;
  v32[5] = v17;
  v31 = v20;
  v33 = v20;
  v32[0] = v12;
  v32[1] = v13;
  sub_2E28(&v23, &v11, &qword_72F80, &unk_5A9E8);
  sub_2E90(v32, &qword_72F80, &unk_5A9E8);
  *&v21[103] = v29;
  *&v21[87] = v28;
  *&v21[39] = v25;
  *&v21[23] = v24;
  *&v21[119] = v30;
  *&v21[55] = v26;
  *&v21[71] = v27;
  *&v21[7] = v23;
  v5 = *&v21[64];
  *(a2 + 97) = *&v21[80];
  v6 = *&v21[112];
  *(a2 + 113) = *&v21[96];
  *(a2 + 129) = v6;
  v7 = *v21;
  *(a2 + 33) = *&v21[16];
  result = *&v21[32];
  v9 = *&v21[48];
  *(a2 + 49) = *&v21[32];
  *(a2 + 65) = v9;
  *(a2 + 81) = v5;
  v21[135] = v31;
  v10 = v22;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 145) = *&v21[128];
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_3CAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_569DC();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = (a1 + *(type metadata accessor for BalloonView() + 52));
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = sub_3CE9C(v7, v8);
  v11 = v10;

  sub_569CC();
  v69._countAndFlagsBits = 0x206E69206E65704FLL;
  v69._object = 0xE800000000000000;
  sub_569BC(v69);
  if (v11)
  {
    v12._countAndFlagsBits = v9;
  }

  else
  {
    v12._countAndFlagsBits = 7368769;
  }

  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  v12._object = v13;
  sub_569AC(v12);

  v70._countAndFlagsBits = 0;
  v70._object = 0xE000000000000000;
  sub_569BC(v70);
  sub_569FC();
  sub_D820(0, &qword_717B0, NSBundle_ptr);
  if (!sub_5796C())
  {
    v14 = [objc_opt_self() mainBundle];
  }

  v15 = sub_56DEC();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = sub_56CAC();
  sub_5668C();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v19 &= 1u;
  v66 = v19;
  v63 = 0;
  KeyPath = swift_getKeyPath();
  v67 = 1;
  v39 = 1;
  *&v40 = v15;
  *(&v40 + 1) = v17;
  LOBYTE(v41) = v19;
  *(&v41 + 1) = *v65;
  DWORD1(v41) = *&v65[3];
  *(&v41 + 1) = v21;
  LOBYTE(v42) = v22;
  *(&v42 + 1) = *v64;
  DWORD1(v42) = *&v64[3];
  *(&v42 + 1) = v24;
  *&v43 = v26;
  *(&v43 + 1) = v28;
  *&v44 = v30;
  BYTE8(v44) = 0;
  HIDWORD(v44) = *(v68 + 3);
  *(&v44 + 9) = v68[0];
  v45 = KeyPath;
  v46 = 0;
  v47 = 1;
  v38[103] = 1;
  *&v38[87] = KeyPath;
  *&v38[71] = v44;
  *&v38[55] = v43;
  *&v38[39] = v42;
  *&v38[23] = v41;
  *&v38[7] = v40;
  v37[104] = 1;
  *a2 = 0;
  *(a2 + 8) = 1;
  v32 = *&v38[48];
  *(a2 + 41) = *&v38[32];
  v33 = *v38;
  *(a2 + 25) = *&v38[16];
  *(a2 + 9) = v33;
  v34 = *&v38[64];
  v35 = *&v38[80];
  *(a2 + 105) = *&v38[96];
  *(a2 + 89) = v35;
  *(a2 + 73) = v34;
  *(a2 + 57) = v32;
  *(a2 + 120) = 0;
  *(a2 + 128) = 1;
  v48[0] = v15;
  v48[1] = v17;
  v49 = v19;
  *&v50[3] = *&v65[3];
  *v50 = *v65;
  v51 = v21;
  v52 = v22;
  *&v53[3] = *&v64[3];
  *v53 = *v64;
  v54 = v24;
  v55 = v26;
  v56 = v28;
  v57 = v30;
  v58 = 0;
  *&v59[3] = *(v68 + 3);
  *v59 = v68[0];
  v60 = KeyPath;
  v61 = 0;
  v62 = 1;
  sub_2E28(&v40, v37, &qword_72EC8, &qword_5A868);
  return sub_2E90(v48, &qword_72EC8, &qword_5A868);
}

id sub_3CE9C(uint64_t a1, uint64_t a2)
{
  result = [objc_opt_self() defaultWorkspace];
  if (!result)
  {
    return result;
  }

  v4 = result;
  result = [result allApplications];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v5 = result;
  sub_D820(0, &qword_72F88, LSApplicationProxy_ptr);
  v6 = sub_5784C();

  v23 = v4;
  if (v6 >> 62)
  {
LABEL_25:
    v7 = sub_57B1C();
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_26:

    return 0;
  }

  v7 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
  if (!v7)
  {
    goto LABEL_26;
  }

LABEL_5:
  v8 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = sub_57AEC();
    }

    else
    {
      if (v8 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_24;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    v10 = v9;
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v12 = [v9 bundleIdentifier];
    if (!v12)
    {
      goto LABEL_6;
    }

    v13 = v12;
    v14 = a2;
    v15 = sub_5778C();
    v17 = v16;

    if (v15 == a1 && v17 == v14)
    {
      break;
    }

    a2 = v14;
    v19 = sub_57B8C();

    if (v19)
    {
      goto LABEL_20;
    }

LABEL_6:

    ++v8;
    if (v11 == v7)
    {
      goto LABEL_26;
    }
  }

LABEL_20:

  v20 = [v10 localizedName];
  if (v20)
  {
    v21 = v20;
    v22 = sub_5778C();

    return v22;
  }

  return 0;
}

uint64_t sub_3D0EC(uint64_t a1)
{
  v2 = sub_2AFC(&qword_720F8, &unk_59710);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v94 = v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v93 = v88 - v6;
  __chkstk_darwin(v7);
  v100 = v88 - v8;
  __chkstk_darwin(v9);
  v11 = v88 - v10;
  v12 = sub_55DFC();
  v97 = *(v12 - 8);
  v98 = v12;
  v13 = *(v97 + 64);
  __chkstk_darwin(v12);
  v96 = v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_55E9C();
  v95 = *(v15 - 8);
  v16 = *(v95 + 64);
  __chkstk_darwin(v15);
  v18 = v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_5748C();
  v20 = *(v19 - 8);
  v103 = v19;
  v104 = v20;
  v21 = v20[8];
  __chkstk_darwin(v19);
  v23 = v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = (v88 - v26);
  if (qword_715B8 != -1)
  {
    swift_once();
  }

  v28 = sub_562FC();
  v29 = sub_B144(v28, qword_75758);
  v30 = sub_562DC();
  v31 = sub_5794C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_0, v30, v31, "Open in Messages button tapped", v32, 2u);
  }

  v33 = *(a1 + *(type metadata accessor for BalloonView() + 24));
  sub_5630C();
  v34 = sub_5636C();
  v35 = *(v34 - 8);
  v36 = (*(v35 + 48))(v27, 1, v34);
  v99 = v29;
  if (v36 == 1)
  {
    sub_2E90(v27, &qword_71A10, &qword_5A5A0);
LABEL_15:
    v53 = sub_562DC();
    v54 = sub_5792C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_0, v53, v54, "Open in Messages button tapped, but there was no communication metadata", v55, 2u);
    }

    goto LABEL_18;
  }

  if ((*(v35 + 88))(v27, v34) != enum case for ATQuestion.TopicMetadata.communication(_:))
  {
    (*(v35 + 8))(v27, v34);
    goto LABEL_15;
  }

  (*(v35 + 96))(v27, v34);
  v37 = *v27;
  v38 = sub_574AC();
  v39 = *(v38 + 16);
  if (!v39)
  {

LABEL_18:
    v40 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  v89 = v37;
  v90 = v11;
  v91 = v18;
  v92 = v15;
  v105 = &_swiftEmptyArrayStorage;
  sub_409E0(0, v39, 0);
  v40 = v105;
  v41 = v104[2];
  v42 = *(v104 + 80);
  v88[1] = v38;
  v43 = v38 + ((v42 + 32) & ~v42);
  v101 = v104[9];
  v102 = v41;
  v104 += 2;
  v44 = (v104 - 1);
  do
  {
    v45 = v103;
    v102(v23, v43, v103);
    v46 = sub_5747C();
    v47 = sub_573FC();
    v49 = v48;

    (*v44)(v23, v45);
    v105 = v40;
    v51 = v40[2];
    v50 = v40[3];
    if (v51 >= v50 >> 1)
    {
      sub_409E0((v50 > 1), v51 + 1, 1);
      v40 = v105;
    }

    v40[2] = v51 + 1;
    v52 = &v40[2 * v51];
    v52[4] = v47;
    v52[5] = v49;
    v43 += v101;
    --v39;
  }

  while (v39);

  v11 = v90;
  v18 = v91;
  v15 = v92;
LABEL_19:
  sub_55E8C();
  sub_55E7C();
  sub_55E6C();
  v105 = v40;
  sub_2AFC(&qword_72F90, &qword_5A9F8);
  sub_3260(&qword_72F98, &qword_72F90, &qword_5A9F8);
  sub_576AC();

  v56 = v96;
  sub_55DCC();

  v57 = sub_6BE0(0, 1, 1, &_swiftEmptyArrayStorage);
  v59 = v57[2];
  v58 = v57[3];
  if (v59 >= v58 >> 1)
  {
    v57 = sub_6BE0(v58 > 1, v59 + 1, 1, v57);
  }

  v57[2] = v59 + 1;
  (*(v97 + 32))(v57 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v59, v56, v98);

  sub_55E3C();
  sub_55E5C();
  v60 = v100;
  sub_2E28(v11, v100, &qword_720F8, &unk_59710);
  v61 = sub_562DC();
  v62 = sub_5794C();
  if (os_log_type_enabled(v61, v62))
  {
    v91 = v18;
    v92 = v15;
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    *v63 = 138412290;
    v65 = v93;
    sub_2E28(v60, v93, &qword_720F8, &unk_59710);
    v66 = sub_560CC();
    v67 = *(v66 - 8);
    if ((*(v67 + 48))(v65, 1, v66) == 1)
    {
      sub_2E90(v65, &qword_720F8, &unk_59710);
      sub_2E90(v100, &qword_720F8, &unk_59710);
      v68 = 0;
    }

    else
    {
      v69 = sub_5608C();
      v102 = v70;
      v103 = v69;
      sub_B8D8();
      swift_allocError();
      v104 = v64;
      v71 = v102;
      *v72 = v103;
      v72[1] = v71;
      (*(v67 + 8))(v65, v66);
      v64 = v104;
      v68 = _swift_stdlib_bridgeErrorToNSError();
      sub_2E90(v100, &qword_720F8, &unk_59710);
    }

    v15 = v92;
    *(v63 + 4) = v68;
    *v64 = v68;
    _os_log_impl(&dword_0, v61, v62, "Attempting to open url to launch Messages %@", v63, 0xCu);
    sub_2E90(v64, &qword_71828, &qword_598B0);

    v18 = v91;
  }

  else
  {

    sub_2E90(v60, &qword_720F8, &unk_59710);
  }

  v73 = [objc_opt_self() defaultWorkspace];
  if (!v73)
  {
    __break(1u);
  }

  v74 = v73;

  v75 = v94;
  sub_2E28(v11, v94, &qword_720F8, &unk_59710);
  v76 = sub_560CC();
  v77 = *(v76 - 8);
  v79 = 0;
  if ((*(v77 + 48))(v75, 1, v76) != 1)
  {
    sub_5609C(v78);
    v79 = v80;
    (*(v77 + 8))(v75, v76);
  }

  v105 = 0;
  v81 = [v74 openURL:v79 configuration:0 error:&v105];

  if (v81)
  {
    v82 = v105;
  }

  else
  {
    v83 = v105;
    sub_5603C();

    swift_willThrow();
  }

  v84 = sub_562DC();
  v85 = sub_5794C();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 67109120;
    *(v86 + 4) = v81 != 0;
    _os_log_impl(&dword_0, v84, v85, "Open in Messages button didLaunchApp %{BOOL}d", v86, 8u);
  }

  sub_2E90(v11, &qword_720F8, &unk_59710);
  return (*(v95 + 8))(v18, v15);
}

uint64_t sub_3DD08@<X0>(uint64_t a1@<X8>)
{
  sub_569EC();
  sub_D820(0, &qword_717B0, NSBundle_ptr);
  if (!sub_5796C())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = sub_56DEC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_56CAC();
  sub_5668C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v7 &= 1u;
  v49 = v7;
  v48 = 0;
  KeyPath = swift_getKeyPath();
  v50 = 1;
  v27 = 1;
  *&v28 = v3;
  *(&v28 + 1) = v5;
  LOBYTE(v29) = v7;
  *(&v29 + 1) = v9;
  LOBYTE(v30) = v10;
  *(&v30 + 1) = v12;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  *&v32 = v18;
  BYTE8(v32) = 0;
  v33 = KeyPath;
  v34 = 0;
  v35 = 1;
  *&v26[39] = v30;
  *&v26[23] = v29;
  *&v26[7] = v28;
  v26[103] = 1;
  *&v26[87] = KeyPath;
  *&v26[71] = v32;
  *&v26[55] = v31;
  v25[104] = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v20 = *&v26[48];
  *(a1 + 41) = *&v26[32];
  v21 = *v26;
  *(a1 + 25) = *&v26[16];
  *(a1 + 9) = v21;
  v22 = *&v26[64];
  v23 = *&v26[80];
  *(a1 + 105) = *&v26[96];
  *(a1 + 89) = v23;
  *(a1 + 73) = v22;
  *(a1 + 57) = v20;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  v36[0] = v3;
  v36[1] = v5;
  v37 = v7;
  v38 = v9;
  v39 = v10;
  v40 = v12;
  v41 = v14;
  v42 = v16;
  v43 = v18;
  v44 = 0;
  v45 = KeyPath;
  v46 = 0;
  v47 = 1;
  sub_2E28(&v28, v25, &qword_72EC8, &qword_5A868);
  return sub_2E90(v36, &qword_72EC8, &qword_5A868);
}

uint64_t sub_3DF70(uint64_t a1)
{
  v2 = type metadata accessor for BalloonView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2AFC(&qword_71820, &qword_59550);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - v8;
  if (qword_715B8 != -1)
  {
    swift_once();
  }

  v10 = sub_562FC();
  sub_B144(v10, qword_75758);
  v11 = sub_562DC();
  v12 = sub_5794C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, "Manage Contacts button tapped", v13, 2u);
  }

  v14 = sub_578CC();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  sub_43188(a1, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BalloonView);
  sub_578AC();
  v15 = sub_5789C();
  v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v17 + 24) = &protocol witness table for MainActor;
  sub_41488(v5, v17 + v16);
  sub_31894(0, 0, v9, &unk_5AA10, v17);
}

uint64_t sub_3E1F8()
{
  v0[2] = sub_578AC();
  v0[3] = sub_5789C();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_3E2A4;

  return sub_3E440();
}

uint64_t sub_3E2A4()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = sub_5788C();

  return _swift_task_switch(sub_3E3E0, v5, v4);
}

uint64_t sub_3E3E0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_3E440()
{
  v1[22] = v0;
  v2 = *(*(sub_2AFC(&qword_720F8, &unk_59710) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v3 = sub_560CC();
  v1[24] = v3;
  v4 = *(v3 - 8);
  v1[25] = v4;
  v5 = *(v4 + 64) + 15;
  v1[26] = swift_task_alloc();
  v6 = type metadata accessor for BalloonView();
  v1[27] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[28] = swift_task_alloc();
  sub_578AC();
  v1[29] = sub_5789C();
  v9 = sub_5788C();
  v1[30] = v9;
  v1[31] = v8;

  return _swift_task_switch(sub_3E59C, v9, v8);
}

uint64_t sub_3E59C()
{
  v50 = v0;
  v1 = *(v0[22] + *(v0[27] + 56));
  v2 = sub_575DC();
  if (v3)
  {
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v4 = v0[28];
    v5 = v0[22];
    v6 = sub_562FC();
    v0[32] = sub_B144(v6, qword_75758);
    sub_43188(v5, v4, type metadata accessor for BalloonView);
    v7 = sub_562DC();
    v8 = sub_5794C();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[28];
    if (v9)
    {
      v11 = v0[27];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v10 + *(v11 + 48);
      v15 = *(v14 + 24);
      v16 = v0[28];
      if (v15)
      {
        v17 = *(v14 + 16);
        sub_B8D8();
        swift_allocError();
        *v18 = v17;
        v18[1] = v15;

        v15 = _swift_stdlib_bridgeErrorToNSError();
      }

      sub_43238(v16, type metadata accessor for BalloonView);
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_0, v7, v8, "messagesContext.senderHandle %@", v12, 0xCu);
      sub_2E90(v13, &qword_71828, &qword_598B0);
    }

    else
    {

      sub_43238(v10, type metadata accessor for BalloonView);
    }

    v25 = v0[22] + *(v0[27] + 48);
    v0[33] = *(v25 + 16);
    v26 = *(v25 + 24);
    v0[34] = v26;
    if (v26)
    {
      v27 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
      v0[35] = v27;
      v0[2] = v0;
      v0[7] = v0 + 20;
      v0[3] = sub_3EBFC;
      v28 = swift_continuation_init();
      v0[17] = sub_2AFC(&qword_71D20, &unk_591E0);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_16E90;
      v0[13] = &unk_6F5B8;
      v0[14] = v28;
      [v27 startRequestWithCompletionHandler:v0 + 10];
      v29 = v0 + 2;

      return _swift_continuation_await(v29);
    }

    v39 = v0[29];

    v40 = sub_562DC();
    v41 = sub_5792C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v49[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_293C0(0xD00000000000001FLL, 0x800000000005CC80, v49);
      _os_log_impl(&dword_0, v40, v41, "%s: no sender handle", v42, 0xCu);
      sub_13040(v43);
    }
  }

  else
  {
    v19 = v2;
    v20 = v0[24];
    v21 = v0[25];
    v22 = v0[23];
    v49[0] = 0;
    v49[1] = 0xE000000000000000;
    sub_57ACC(81);
    v52._countAndFlagsBits = 0xD00000000000003ALL;
    v52._object = 0x800000000005CCA0;
    sub_577DC(v52);
    v0[21] = v19;
    v53._countAndFlagsBits = sub_57B7C();
    sub_577DC(v53);

    v54._object = 0x800000000005CCE0;
    v54._countAndFlagsBits = 0xD000000000000015;
    sub_577DC(v54);
    sub_560BC();
    if ((*(v21 + 48))(v22, 1, v20) == 1)
    {
      v23 = v0[29];
      v24 = v0[23];

      sub_2E90(v24, &qword_720F8, &unk_59710);
    }

    else
    {
      (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
      v29 = [objc_opt_self() defaultWorkspace];
      if (!v29)
      {
        __break(1u);
        return _swift_continuation_await(v29);
      }

      v30 = v29;
      v31 = v0[29];
      v33 = v0[25];
      v32 = v0[26];
      v34 = v0[24];

      sub_5609C(v35);
      v37 = v36;
      sub_B1E0(&_swiftEmptyArrayStorage);
      isa = sub_5766C().super.isa;

      [v30 openSensitiveURL:v37 withOptions:isa];

      (*(v33 + 8))(v32, v34);
    }
  }

  v44 = v0[28];
  v45 = v0[26];
  v46 = v0[23];

  v47 = v0[1];

  return v47();
}

uint64_t sub_3EBFC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 288) = v3;
  v4 = *(v1 + 248);
  v5 = *(v1 + 240);
  if (v3)
  {
    v6 = sub_3F428;
  }

  else
  {
    v6 = sub_3ED2C;
  }

  return _swift_task_switch(v6, v5, v4);
}

id sub_3ED2C()
{
  v71 = v0;
  v65 = v0[20];
  v1 = [v65 members];
  sub_D820(0, &qword_71D28, FAFamilyMember_ptr);
  v2 = sub_5784C();

  if (v2 >> 62)
  {
LABEL_29:
    v3 = sub_57B1C();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_30:
    v51 = v0[29];

    v52 = v0[34];
    v53 = v0[32];

    v37 = sub_562DC();
    v54 = sub_5792C();
    v55 = os_log_type_enabled(v37, v54);
    v56 = v0[34];
    v57 = v0[35];
    if (!v55)
    {

      goto LABEL_34;
    }

    v58 = v0[33];
    v59 = swift_slowAlloc();
    v70[0] = swift_slowAlloc();
    *v59 = 136315394;
    *(v59 + 4) = sub_293C0(0xD00000000000001FLL, 0x800000000005CC80, v70);
    *(v59 + 12) = 2080;
    v60 = sub_293C0(v58, v56, v70);

    *(v59 + 14) = v60;
    _os_log_impl(&dword_0, v37, v54, "%s: no member found with sender handle %s", v59, 0x16u);
    swift_arrayDestroy();

LABEL_32:
LABEL_34:
    v61 = v0[28];
    v62 = v0[26];
    v63 = v0[23];

    v64 = v0[1];

    return v64();
  }

  v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
  if (!v3)
  {
    goto LABEL_30;
  }

LABEL_3:
  v4 = 0;
  v66 = v3;
  v68 = v2 & 0xFFFFFFFFFFFFFF8;
  v69 = v2 & 0xC000000000000001;
  v67 = v2;
  while (1)
  {
    if (v69)
    {
      v5 = sub_57AEC();
    }

    else
    {
      if (v4 >= *(v68 + 16))
      {
        goto LABEL_28;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v8 = [v5 appleID];
    if (!v8)
    {
      goto LABEL_15;
    }

    v9 = v0[33];
    v10 = v0[34];
    v11 = v8;
    v12 = sub_5778C();
    v14 = v13;

    if (v12 == v9 && v10 == v14)
    {
      break;
    }

    v16 = v0[33];
    v17 = v0[34];
    v18 = sub_57B8C();

    if (v18)
    {
      goto LABEL_20;
    }

LABEL_15:
    v19 = [v6 appleIDAliases];
    if (v19)
    {
      v21 = v0[33];
      v20 = v0[34];
      v22 = v19;
      v23 = sub_5784C();

      v0[18] = v21;
      v0[19] = v20;
      v24 = swift_task_alloc();
      *(v24 + 16) = v0 + 18;
      v25 = sub_3AA80(sub_430B4, v24, v23);

      if (v25)
      {
        goto LABEL_20;
      }
    }

    ++v4;
    v2 = v67;
    if (v7 == v66)
    {
      goto LABEL_30;
    }
  }

LABEL_20:

  v26 = [v6 dsid];
  v27 = v0[35];
  if (!v26)
  {
    v35 = v0[32];
    v36 = v0[29];

    v37 = sub_562DC();
    v38 = sub_5792C();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v70[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_293C0(0xD00000000000001FLL, 0x800000000005CC80, v70);
      _os_log_impl(&dword_0, v37, v38, "%s: missing dsid", v39, 0xCu);
      sub_13040(v40);
    }

    goto LABEL_32;
  }

  v28 = v26;
  v29 = [v26 integerValue];

  v30 = v0[24];
  v31 = v0[25];
  v32 = v0[23];
  v70[0] = 0;
  v70[1] = 0xE000000000000000;
  sub_57ACC(81);
  v73._countAndFlagsBits = 0xD00000000000003ALL;
  v73._object = 0x800000000005CCA0;
  sub_577DC(v73);
  v0[21] = v29;
  v74._countAndFlagsBits = sub_57B7C();
  sub_577DC(v74);

  v75._countAndFlagsBits = 0xD000000000000015;
  v75._object = 0x800000000005CCE0;
  sub_577DC(v75);
  sub_560BC();
  if ((*(v31 + 48))(v32, 1, v30) == 1)
  {
    v33 = v0[29];
    v34 = v0[23];

    sub_2E90(v34, &qword_720F8, &unk_59710);
    goto LABEL_34;
  }

  (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v42 = result;
    v43 = v0[29];
    v45 = v0[25];
    v44 = v0[26];
    v46 = v0[24];

    sub_5609C(v47);
    v49 = v48;
    sub_B1E0(&_swiftEmptyArrayStorage);
    isa = sub_5766C().super.isa;

    [v42 openSensitiveURL:v49 withOptions:isa];

    (*(v45 + 8))(v44, v46);
    goto LABEL_34;
  }

  __break(1u);
  return result;
}

uint64_t sub_3F428()
{
  v19 = v0;
  v1 = v0[36];
  v2 = v0[29];
  swift_willThrow();

  v3 = v0[34];
  v4 = v0[32];

  v5 = sub_562DC();
  v6 = sub_5792C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[34];
  v9 = v0[35];
  if (v7)
  {
    v10 = v0[33];
    v11 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v11 = 136315394;
    *(v11 + 4) = sub_293C0(0xD00000000000001FLL, 0x800000000005CC80, v18);
    *(v11 + 12) = 2080;
    v12 = sub_293C0(v10, v8, v18);

    *(v11 + 14) = v12;
    _os_log_impl(&dword_0, v5, v6, "%s: no member found with sender handle %s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v13 = v0[28];
  v14 = v0[26];
  v15 = v0[23];

  v16 = v0[1];

  return v16();
}

double sub_3F618@<D0>(void (*a1)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5697C();
  v22 = 1;
  a1(&v12);
  v29 = v18;
  v30 = v19;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v28 = v17;
  v23 = v12;
  v24 = v13;
  v32[6] = v18;
  v32[7] = v19;
  v32[2] = v14;
  v32[3] = v15;
  v32[4] = v16;
  v32[5] = v17;
  v31 = v20;
  v33 = v20;
  v32[0] = v12;
  v32[1] = v13;
  sub_2E28(&v23, &v11, &qword_72F80, &unk_5A9E8);
  sub_2E90(v32, &qword_72F80, &unk_5A9E8);
  *&v21[103] = v29;
  *&v21[87] = v28;
  *&v21[39] = v25;
  *&v21[23] = v24;
  *&v21[119] = v30;
  *&v21[55] = v26;
  *&v21[71] = v27;
  *&v21[7] = v23;
  v5 = *&v21[64];
  *(a2 + 97) = *&v21[80];
  v6 = *&v21[112];
  *(a2 + 113) = *&v21[96];
  *(a2 + 129) = v6;
  v7 = *v21;
  *(a2 + 33) = *&v21[16];
  result = *&v21[32];
  v9 = *&v21[48];
  *(a2 + 49) = *&v21[32];
  *(a2 + 65) = v9;
  *(a2 + 81) = v5;
  v21[135] = v31;
  v10 = v22;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v10;
  *(a2 + 145) = *&v21[128];
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_3F778@<X0>(uint64_t a1@<X8>)
{
  sub_569EC();
  sub_D820(0, &qword_717B0, NSBundle_ptr);
  if (!sub_5796C())
  {
    v2 = [objc_opt_self() mainBundle];
  }

  v3 = sub_56DEC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_56CAC();
  sub_5668C();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v7 &= 1u;
  v49 = v7;
  v48 = 0;
  KeyPath = swift_getKeyPath();
  v50 = 1;
  v27 = 1;
  *&v28 = v3;
  *(&v28 + 1) = v5;
  LOBYTE(v29) = v7;
  *(&v29 + 1) = v9;
  LOBYTE(v30) = v10;
  *(&v30 + 1) = v12;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  *&v32 = v18;
  BYTE8(v32) = 0;
  v33 = KeyPath;
  v34 = 0;
  v35 = 1;
  *&v26[39] = v30;
  *&v26[23] = v29;
  *&v26[7] = v28;
  v26[103] = 1;
  *&v26[87] = KeyPath;
  *&v26[71] = v32;
  *&v26[55] = v31;
  v25[104] = 1;
  *a1 = 0;
  *(a1 + 8) = 1;
  v20 = *&v26[48];
  *(a1 + 41) = *&v26[32];
  v21 = *v26;
  *(a1 + 25) = *&v26[16];
  *(a1 + 9) = v21;
  v22 = *&v26[64];
  v23 = *&v26[80];
  *(a1 + 105) = *&v26[96];
  *(a1 + 89) = v23;
  *(a1 + 73) = v22;
  *(a1 + 57) = v20;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  v36[0] = v3;
  v36[1] = v5;
  v37 = v7;
  v38 = v9;
  v39 = v10;
  v40 = v12;
  v41 = v14;
  v42 = v16;
  v43 = v18;
  v44 = 0;
  v45 = KeyPath;
  v46 = 0;
  v47 = 1;
  sub_2E28(&v28, v25, &qword_72EC8, &qword_5A868);
  return sub_2E90(v36, &qword_72EC8, &qword_5A868);
}

void sub_3F9E8(void *a1)
{
  v2 = v1;
  v44 = a1;
  v3 = type metadata accessor for MessagesContext();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2AFC(&qword_71B48, &qword_5A780);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v42 - v8;
  v10 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v16 = (&v42 - v15);
  v17 = type metadata accessor for BalloonView();
  v18 = *(v1 + *(v17 + 56));
  v19 = sub_5763C();
  sub_5630C();

  v20 = sub_5636C();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v16, 1, v20) == 1)
  {
    sub_2E90(v16, &qword_71A10, &qword_5A5A0);
  }

  else
  {
    v42 = v3;
    v22 = (*(v21 + 88))(v16, v20);
    if (v22 == enum case for ATQuestion.TopicMetadata.communication(_:))
    {
      v23 = v22;
      (*(v21 + 96))(v16, v20);
      v24 = v44;
      v44 = *v16;
      v25 = sub_437A0(v24);
      v26 = sub_5763C();
      *v13 = v25;
      (*(v21 + 104))(v13, v23, v20);
      (*(v21 + 56))(v13, 0, 1, v20);
      v27 = v25;
      sub_5631C();

      v28 = v2 + *(v17 + 48);
      v29 = v42;
      v30 = *(v42 + 28);
      v31 = sub_561AC();
      v32 = *(v31 - 8);
      (*(v32 + 16))(v9, v28 + v30, v31);
      (*(v32 + 56))(v9, 0, 1, v31);
      ATPayload.newMessage(sessionId:)(v9);
      v38 = v37;
      sub_2E90(v9, &qword_71B48, &qword_5A780);
      v39 = v43;
      sub_43188(v28, v43, type metadata accessor for MessagesContext);
      v40 = *(v29 + 36);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_43238(v39, type metadata accessor for MessagesContext);
      if (Strong)
      {
        sub_49BDC(v38);
      }

      else
      {
      }

      return;
    }

    (*(v21 + 8))(v16, v20);
  }

  if (qword_715B8 != -1)
  {
    swift_once();
  }

  v33 = sub_562FC();
  sub_B144(v33, qword_75758);
  v34 = sub_562DC();
  v35 = sub_5794C();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_0, v34, v35, "BalloonView.updatePayload not a communication topic. Skipping", v36, 2u);
  }
}

uint64_t sub_4001C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_578AC();
  v6[5] = sub_5789C();
  v8 = sub_5788C();
  v6[6] = v8;
  v6[7] = v7;

  return _swift_task_switch(sub_400B8, v8, v7);
}

uint64_t sub_400B8()
{
  v1 = v0[2];
  v2 = type metadata accessor for BalloonView();
  v3 = *(v1 + *(v2 + 60) + 8);
  v4 = *(v2 + 48);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1ECB0;
  v7 = v0[3];
  v6 = v0[4];

  return sub_14234(v7, v6, v1 + v4);
}

void sub_40174(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_715B8 != -1)
    {
      swift_once();
    }

    v6 = sub_562FC();
    sub_B144(v6, qword_75758);
    swift_errorRetain();

    v7 = sub_562DC();
    v8 = sub_5792C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_293C0(a3, a4, &v13);
      *(v9 + 12) = 2112;
      v12 = sub_5602C();
      *(v9 + 14) = v12;
      *v10 = v12;
      _os_log_impl(&dword_0, v7, v8, "Failed to open app. bundleIdentifier: %s, error: %@", v9, 0x16u);
      sub_2E90(v10, &qword_71828, &qword_598B0);

      sub_13040(v11);
    }

    else
    {
    }
  }
}

void sub_40370(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_403EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_56B0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_56C5C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2AFC(&qword_73010, &qword_5AB40);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v33 - v17;
  (*(v10 + 16))(v13, a1, v9, v16);
  sub_570EC();
  if (qword_71608 != -1)
  {
    swift_once();
  }

  v19 = qword_75820;
  KeyPath = swift_getKeyPath();
  v21 = &v18[*(v14 + 36)];
  *v21 = KeyPath;
  v21[1] = v19;

  sub_56AFC();
  sub_433EC();
  sub_431F0(&qword_72F00, &type metadata accessor for BorderlessButtonStyle);
  sub_56E4C();
  (*(v5 + 8))(v8, v4);
  sub_2E90(v18, &qword_73010, &qword_5AB40);
  v22 = a2 + *(sub_2AFC(&qword_73030, &qword_5AB50) + 36);
  v23 = enum case for RoundedCornerStyle.continuous(_:);
  v24 = sub_56A0C();
  (*(*(v24 - 8) + 104))(v22, v23, v24);
  v25 = sub_2AFC(&qword_73038, &qword_5AB58);
  *(v22 + *(v25 + 52)) = 3;
  *(v22 + *(v25 + 56)) = 256;
  v26 = sub_571DC();
  v28 = v27;
  v29 = (v22 + *(sub_2AFC(&qword_73040, &qword_5AB60) + 36));
  *v29 = v26;
  v29[1] = v28;
  v30 = [objc_opt_self() systemBlueColor];
  v31 = sub_56F5C();
  result = sub_2AFC(&qword_73048, &qword_5AB68);
  *(a2 + *(result + 36)) = v31;
  return result;
}

uint64_t type metadata accessor for BalloonView()
{
  result = qword_72C50;
  if (!qword_72C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_407E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5606C();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  (*(v8 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  result = sub_56DFC();
  *a2 = result;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11 & 1;
  *(a2 + 24) = v12;
  return result;
}

uint64_t sub_408C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_568DC();
  *a1 = result;
  return result;
}

uint64_t sub_408EC(uint64_t *a1)
{
  v1 = *a1;

  return sub_568EC();
}

uint64_t sub_40918(uint64_t a1)
{
  v2 = sub_56D9C();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_5684C();
}

char *sub_409E0(char *a1, int64_t a2, char a3)
{
  result = sub_40A00(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_40A00(char *result, int64_t a2, char a3, char *a4)
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
    sub_2AFC(&qword_71838, &qword_5AA00);
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

uint64_t sub_40B20(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2AFC(&qword_71D90, &unk_5A610);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_2AFC(&qword_71B00, &unk_593C0);
    if (*(*(v13 - 8) + 84) == a2)
    {
      v7 = v13;
      v8 = *(v13 - 8);
      v9 = a3[8];
      goto LABEL_3;
    }

    v14 = type metadata accessor for MessagesContext();
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[12];
      goto LABEL_3;
    }

    v15 = sub_573CC();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[16];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_40D04(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_2AFC(&qword_71D90, &unk_5A610);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = sub_2AFC(&qword_71B00, &unk_593C0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_3;
  }

  v14 = type metadata accessor for MessagesContext();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[12];
    goto LABEL_3;
  }

  v15 = sub_573CC();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[16];

  return v16(v17, a2, a2, v15);
}

void sub_40ED4()
{
  sub_1F7BC(319, &qword_71E00, &type metadata for CGFloat, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_4119C(319, &qword_71E08, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_5647C();
      if (v2 <= 0x3F)
      {
        sub_4119C(319, &qword_71E10, &type metadata accessor for ATResponse, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_4119C(319, &qword_71E18, &type metadata accessor for Icon, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_41200();
            if (v5 <= 0x3F)
            {
              sub_1F7BC(319, &qword_71E20, &type metadata for String, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                type metadata accessor for MessagesContext();
                if (v7 <= 0x3F)
                {
                  sub_5765C();
                  if (v8 <= 0x3F)
                  {
                    sub_1F694();
                    if (v9 <= 0x3F)
                    {
                      sub_573CC();
                      if (v10 <= 0x3F)
                      {
                        sub_1F7BC(319, &unk_71E48, &type metadata for Bool, &type metadata accessor for State);
                        if (v11 <= 0x3F)
                        {
                          sub_4119C(319, &unk_72C60, type metadata accessor for ManageContactsSetting, &type metadata accessor for State);
                          if (v12 <= 0x3F)
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
  }
}

void sub_4119C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_41200()
{
  if (!qword_721C8)
  {
    sub_D820(255, &qword_721D0, CNContact_ptr);
    v0 = sub_579AC();
    if (!v1)
    {
      atomic_store(v0, &qword_721C8);
    }
  }
}

unint64_t sub_41284()
{
  result = qword_72D08;
  if (!qword_72D08)
  {
    sub_2C70(&qword_72CD0, &qword_5A688);
    sub_41310();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72D08);
  }

  return result;
}

unint64_t sub_41310()
{
  result = qword_72D10;
  if (!qword_72D10)
  {
    sub_2C70(&qword_72D00, &qword_5A6B8);
    sub_3260(&qword_72D18, &qword_72D20, &unk_5A6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72D10);
  }

  return result;
}

unint64_t sub_413C8()
{
  result = qword_72D28;
  if (!qword_72D28)
  {
    sub_2C70(&qword_72CD8, &qword_5A690);
    sub_41284();
    sub_431F0(&qword_71F28, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72D28);
  }

  return result;
}

uint64_t sub_41488(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BalloonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_414EC@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BalloonView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_38504(v4, a1);
}

unint64_t sub_4155C()
{
  result = qword_72D38;
  if (!qword_72D38)
  {
    sub_2C70(&qword_72D30, &qword_5A6D0);
    sub_415E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72D38);
  }

  return result;
}

unint64_t sub_415E0()
{
  result = qword_72D40;
  if (!qword_72D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72D40);
  }

  return result;
}

uint64_t sub_41634@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for BalloonView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_38D4C(v4, a1);
}

unint64_t sub_416A4()
{
  result = qword_72D58;
  if (!qword_72D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72D58);
  }

  return result;
}

void sub_41700(uint64_t a1)
{
  v3 = *(type metadata accessor for BalloonView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_39174(a1, v4);
}

uint64_t sub_417B4(void *a1)
{
  v3 = *(type metadata accessor for BalloonView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_38944(a1);
}

void sub_41818(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for BalloonView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_38420(a1, a2, v6);
}

unint64_t sub_41898()
{
  result = qword_72D98;
  if (!qword_72D98)
  {
    sub_2C70(&qword_72D78, &qword_5A788);
    sub_41924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72D98);
  }

  return result;
}

unint64_t sub_41924()
{
  result = qword_72DA0;
  if (!qword_72DA0)
  {
    sub_2C70(&qword_72DA8, &qword_5A7A8);
    sub_419B0();
    sub_41C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72DA0);
  }

  return result;
}

unint64_t sub_419B0()
{
  result = qword_72DB0;
  if (!qword_72DB0)
  {
    sub_2C70(&qword_72DB8, &qword_5A7B0);
    sub_41A3C();
    sub_41B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72DB0);
  }

  return result;
}

unint64_t sub_41A3C()
{
  result = qword_72DC0;
  if (!qword_72DC0)
  {
    sub_2C70(&qword_72DC8, &qword_5A7B8);
    sub_41AC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72DC0);
  }

  return result;
}

unint64_t sub_41AC8()
{
  result = qword_72DD0;
  if (!qword_72DD0)
  {
    sub_2C70(&qword_72DD8, &qword_5A7C0);
    sub_3260(&qword_72DE0, &qword_72DE8, &qword_5A7C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72DD0);
  }

  return result;
}

unint64_t sub_41B78()
{
  result = qword_72DF0;
  if (!qword_72DF0)
  {
    sub_2C70(&qword_72DF8, &qword_5A7D0);
    sub_3260(&qword_72E00, &qword_72E08, &qword_5A7D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72DF0);
  }

  return result;
}

unint64_t sub_41C30()
{
  result = qword_72E10;
  if (!qword_72E10)
  {
    sub_2C70(&qword_72E18, &qword_5A7E0);
    sub_41D74(&qword_72E20, &qword_72E28, &qword_5A7E8, sub_41DF0);
    sub_2C70(&qword_72E40, &qword_5A7F8);
    sub_3260(&qword_72E48, &qword_72E40, &qword_5A7F8);
    sub_41EF8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72E10);
  }

  return result;
}

uint64_t sub_41D74(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2C70(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_41DF0()
{
  result = qword_72E30;
  if (!qword_72E30)
  {
    sub_2C70(&qword_72E38, &qword_5A7F0);
    sub_2C70(&qword_72E40, &qword_5A7F8);
    sub_3260(&qword_72E48, &qword_72E40, &qword_5A7F8);
    sub_41EF8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72E30);
  }

  return result;
}

unint64_t sub_41EF8()
{
  result = qword_72E50;
  if (!qword_72E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72E50);
  }

  return result;
}

unint64_t sub_41FBC()
{
  result = qword_72ED0;
  if (!qword_72ED0)
  {
    sub_2C70(&qword_72EC8, &qword_5A868);
    sub_42074();
    sub_3260(&qword_716C0, &qword_716C8, &qword_58A58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72ED0);
  }

  return result;
}

unint64_t sub_42074()
{
  result = qword_72ED8;
  if (!qword_72ED8)
  {
    sub_2C70(&qword_72EE0, &unk_5A870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72ED8);
  }

  return result;
}

uint64_t sub_420F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_568DC();
  *a1 = result;
  return result;
}

uint64_t sub_42124(uint64_t *a1)
{
  v1 = *a1;

  return sub_568EC();
}

unint64_t sub_42150()
{
  result = qword_72EE8;
  if (!qword_72EE8)
  {
    sub_2C70(&qword_72EB8, &qword_5A858);
    sub_3260(&qword_72EF0, &qword_72EF8, &unk_5A8B0);
    sub_3260(&qword_716D0, &qword_716D8, &unk_58A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72EE8);
  }

  return result;
}

unint64_t sub_4227C()
{
  result = qword_72F50;
  if (!qword_72F50)
  {
    sub_2C70(&qword_72F30, &qword_5A918);
    sub_3260(&qword_72F58, &qword_72F60, &qword_5A9A8);
    sub_3260(&qword_720B8, &qword_720C0, &qword_5A9B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72F50);
  }

  return result;
}

uint64_t sub_42360()
{
  v1 = type metadata accessor for BalloonView();
  v2 = *(*(v1 - 1) + 80);
  v33 = *(*(v1 - 1) + 64);
  v3 = (v2 + 16) & ~v2;
  v4 = v0 + v3;
  sub_1FAB8(*(v0 + v3), *(v0 + v3 + 8));
  v5 = v1[5];
  sub_2AFC(&qword_71D78, &qword_593B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_5675C();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
    v7 = *(v4 + v5);
  }

  v8 = v1[8];
  v9 = sub_5756C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (!v11(v4 + v8, 1, v9))
  {
    (*(v10 + 8))(v4 + v8, v9);
  }

  v12 = v1[9];
  if (!v11(v4 + v12, 1, v9))
  {
    (*(v10 + 8))(v4 + v12, v9);
  }

  v13 = *(v4 + v1[11] + 8);

  v14 = v4 + v1[12];
  v15 = *(v14 + 8);

  v16 = *(v14 + 24);

  v17 = type metadata accessor for MessagesContext();
  v18 = v17[7];
  v19 = sub_561AC();
  (*(*(v19 - 8) + 8))(v14 + v18, v19);
  v20 = *(v14 + v17[8] + 8);

  v21 = v17[9];
  swift_unknownObjectWeakDestroy();
  v22 = *(v4 + v1[13] + 8);

  v23 = *(v4 + v1[15] + 8);

  v24 = v1[16];
  v25 = sub_573CC();
  (*(*(v25 - 8) + 8))(v4 + v24, v25);
  v26 = *(v4 + v1[17] + 8);

  v27 = *(v4 + v1[18] + 8);

  v28 = *(v4 + v1[19] + 8);

  v29 = (v4 + v1[20]);
  v30 = *v29;

  v31 = v29[1];

  return _swift_deallocObject(v0, v3 + v33, v2 | 7);
}

uint64_t sub_426CC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for BalloonView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_42740()
{
  v1 = type metadata accessor for BalloonView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v36 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  sub_1FAB8(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[5];
  sub_2AFC(&qword_71D78, &qword_593B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_5675C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = v1[8];
  v10 = sub_5756C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v13 = v1[9];
  if (!v12(v5 + v13, 1, v10))
  {
    (*(v11 + 8))(v5 + v13, v10);
  }

  v14 = (v36 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;

  v16 = *(v5 + v1[11] + 8);

  v17 = v5 + v1[12];
  v18 = *(v17 + 8);

  v19 = *(v17 + 24);

  v20 = type metadata accessor for MessagesContext();
  v21 = v20[7];
  v22 = sub_561AC();
  (*(*(v22 - 8) + 8))(v17 + v21, v22);
  v23 = *(v17 + v20[8] + 8);

  v24 = v20[9];
  swift_unknownObjectWeakDestroy();
  v25 = *(v5 + v1[13] + 8);

  v26 = *(v5 + v1[15] + 8);

  v27 = v1[16];
  v28 = sub_573CC();
  (*(*(v28 - 8) + 8))(v5 + v27, v28);
  v29 = *(v5 + v1[17] + 8);

  v30 = *(v5 + v1[18] + 8);

  v31 = *(v5 + v1[19] + 8);

  v32 = (v5 + v1[20]);
  v33 = *v32;

  v34 = v32[1];

  return _swift_deallocObject(v0, v15 + 8, v2 | 7);
}

uint64_t sub_42AC0(uint64_t a1)
{
  v4 = *(type metadata accessor for BalloonView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22334;

  return sub_4001C(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_42BF8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_42C38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_42C50()
{
  v1 = type metadata accessor for BalloonView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v34 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  sub_1FAB8(*(v0 + v3), *(v0 + v3 + 8));
  v6 = v1[5];
  sub_2AFC(&qword_71D78, &qword_593B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_5675C();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = v1[8];
  v10 = sub_5756C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v13 = v1[9];
  if (!v12(v5 + v13, 1, v10))
  {
    (*(v11 + 8))(v5 + v13, v10);
  }

  v14 = *(v5 + v1[11] + 8);

  v15 = v5 + v1[12];
  v16 = *(v15 + 8);

  v17 = *(v15 + 24);

  v18 = type metadata accessor for MessagesContext();
  v19 = v18[7];
  v20 = sub_561AC();
  (*(*(v20 - 8) + 8))(v15 + v19, v20);
  v21 = *(v15 + v18[8] + 8);

  v22 = v18[9];
  swift_unknownObjectWeakDestroy();
  v23 = *(v5 + v1[13] + 8);

  v24 = *(v5 + v1[15] + 8);

  v25 = v1[16];
  v26 = sub_573CC();
  (*(*(v26 - 8) + 8))(v5 + v25, v26);
  v27 = *(v5 + v1[17] + 8);

  v28 = *(v5 + v1[18] + 8);

  v29 = *(v5 + v1[19] + 8);

  v30 = (v5 + v1[20]);
  v31 = *v30;

  v32 = v30[1];

  return _swift_deallocObject(v0, v3 + v34, v2 | 7);
}

uint64_t sub_42FAC()
{
  v2 = *(type metadata accessor for BalloonView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_BBC4;

  return sub_3E1F8();
}

uint64_t sub_430B4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_57B8C() & 1;
  }
}

uint64_t sub_4310C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_568BC();
  *a1 = result;
  return result;
}

uint64_t sub_43188(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_431F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_43238(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_432A8()
{
  sub_2C70(&qword_72CF0, &qword_5A6A8);
  sub_2C70(&qword_71F48, &unk_5A730);
  sub_2C70(&qword_71F50, &unk_59530);
  sub_3260(&qword_72D60, &qword_72CF0, &qword_5A6A8);
  sub_3260(&qword_71F60, &qword_71F48, &unk_5A730);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_433EC()
{
  result = qword_73018;
  if (!qword_73018)
  {
    sub_2C70(&qword_73010, &qword_5AB40);
    sub_3260(&qword_73020, &qword_73028, &qword_5AB48);
    sub_3260(&qword_716D0, &qword_716D8, &unk_58A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73018);
  }

  return result;
}

unint64_t sub_434D4()
{
  result = qword_73050;
  if (!qword_73050)
  {
    sub_2C70(&qword_73048, &qword_5AB68);
    sub_4358C();
    sub_3260(&qword_73068, &qword_73070, &qword_5AB70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73050);
  }

  return result;
}

unint64_t sub_4358C()
{
  result = qword_73058;
  if (!qword_73058)
  {
    sub_2C70(&qword_73030, &qword_5AB50);
    sub_2C70(&qword_73010, &qword_5AB40);
    sub_56B0C();
    sub_433EC();
    sub_431F0(&qword_72F00, &type metadata accessor for BorderlessButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_3260(&qword_73060, &qword_73040, &qword_5AB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73058);
  }

  return result;
}

unint64_t sub_43724()
{
  result = qword_73078;
  if (!qword_73078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73078);
  }

  return result;
}

uint64_t sub_437A0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_2AFC(&qword_73080, &qword_5AC20);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v77 = v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v57 - v8;
  v10 = sub_5748C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v72 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v57 - v15;
  __chkstk_darwin(v17);
  v75 = v57 - v18;
  __chkstk_darwin(v19);
  v21 = v57 - v20;
  __chkstk_darwin(v22);
  v80 = v57 - v23;
  v24 = sub_574AC();
  v71 = *(v24 + 16);
  if (v71)
  {
    v64 = v16;
    v58 = ObjectType;
    v59 = v1;
    v26 = 0;
    v29 = *(v11 + 16);
    v28 = v11 + 16;
    v27 = v29;
    v30 = (*(v28 + 64) + 32) & ~*(v28 + 64);
    v57[1] = v24;
    v63 = v30;
    v65 = a1 + v30;
    v69 = *(a1 + 16);
    v70 = v24 + v30;
    v31 = (v28 - 8);
    v74 = (v28 + 16);
    v81 = *(v28 + 56);
    v68 = (v28 + 40);
    v76 = &_swiftEmptyArrayStorage;
    v67 = (v28 + 32);
    *&v25 = 138412290;
    v60 = v25;
    v32 = v77;
    v73 = v9;
    v79 = v28;
    v29(v80, v24 + v30, v10);
    while (1)
    {
      v78 = v26;
      if (v69)
      {
        v35 = v65;
        v36 = v69;
        while (1)
        {
          v27(v21, v35, v10);
          sub_43EB8();
          v37 = sub_5747C();
          v38 = sub_5747C();
          v39 = sub_5798C();

          if (v39)
          {
            break;
          }

          (*v31)(v21, v10);
          v35 += v81;
          if (!--v36)
          {
            v40 = 1;
            v32 = v77;
            v9 = v73;
            goto LABEL_13;
          }
        }

        v9 = v73;
        (*v74)(v73, v21, v10);
        v40 = 0;
        v32 = v77;
LABEL_13:
        v26 = v78;
      }

      else
      {
        v40 = 1;
      }

      (*v68)(v9, v40, 1, v10);
      sub_43F04(v9, v32);
      if ((*v67)(v32, 1, v10) == 1)
      {
        sub_2E90(v9, &qword_73080, &qword_5AC20);
        v33 = v80;
        sub_2E90(v32, &qword_73080, &qword_5AC20);
        v34 = *v31;
      }

      else
      {
        v41 = v75;
        v66 = *v74;
        v66(v75, v32, v10);
        if (qword_715E0 != -1)
        {
          swift_once();
        }

        v42 = sub_562FC();
        sub_B144(v42, qword_757D0);
        v43 = v64;
        v27(v64, v41, v10);
        v44 = sub_562DC();
        v45 = sub_5792C();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v62 = v31 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v47 = v46;
          v61 = swift_slowAlloc();
          *v47 = v60;
          v48 = sub_5747C();
          v34 = *v31;
          (*v31)(v43, v10);
          *(v47 + 4) = v48;
          v49 = v61;
          *v61 = v48;
          _os_log_impl(&dword_0, v44, v45, "ATCommunicationMetadata.updated(with:) - Found and updating contact with handle %@", v47, 0xCu);
          sub_2E90(v49, &qword_71828, &qword_598B0);
        }

        else
        {

          v34 = *v31;
          (*v31)(v43, v10);
        }

        v50 = v76;
        v27(v72, v75, v10);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v9 = v73;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = sub_6BB8(0, v50[2] + 1, 1, v50);
        }

        v53 = v50[2];
        v52 = v50[3];
        v76 = v50;
        if (v53 >= v52 >> 1)
        {
          v76 = sub_6BB8(v52 > 1, v53 + 1, 1, v76);
        }

        v34(v75, v10);
        sub_2E90(v9, &qword_73080, &qword_5AC20);
        v54 = v76;
        v76[2] = v53 + 1;
        v66(&v54[v63 + v53 * v81], v72, v10);
        v33 = v80;
        v26 = v78;
      }

      ++v26;
      v34(v33, v10);
      v32 = v77;
      if (v26 == v71)
      {
        break;
      }

      v27(v33, v70 + v81 * v26, v10);
    }

    ObjectType = v58;
  }

  else
  {
  }

  sub_574DC();
  v55 = objc_allocWithZone(ObjectType);
  return sub_5749C();
}

unint64_t sub_43EB8()
{
  result = qword_720F0;
  if (!qword_720F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_720F0);
  }

  return result;
}

uint64_t sub_43F04(uint64_t a1, uint64_t a2)
{
  v4 = sub_2AFC(&qword_73080, &qword_5AC20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_43F94()
{
  sub_44008();
  if (v0 <= 0x3F)
  {
    sub_5756C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_44008()
{
  if (!qword_73108)
  {
    sub_44438(0, &unk_73110, sub_22730, &type metadata accessor for Array);
    if (!v1)
    {
      atomic_store(v0, &qword_73108);
    }
  }
}

uint64_t sub_44094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for IconView.Kind(0);
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
      v13 = sub_2AFC(&qword_71B00, &unk_593C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_441D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v8 = type metadata accessor for IconView.Kind(0);
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
      v13 = sub_2AFC(&qword_71B00, &unk_593C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_4431C()
{
  sub_443E8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for IconView.Kind(319);
    if (v1 <= 0x3F)
    {
      sub_44438(319, &qword_71E18, &type metadata accessor for Icon, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_443E8()
{
  if (!qword_71E00)
  {
    v0 = sub_5669C();
    if (!v1)
    {
      atomic_store(v0, &qword_71E00);
    }
  }
}

void sub_44438(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_444B8()
{
  sub_56F8C();
  v0 = sub_56FBC();

  qword_75828 = v0;
  return result;
}

uint64_t sub_444F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v88 = sub_2AFC(&qword_731E8, &qword_5ACA0);
  v3 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v88);
  v91 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v89 = &v88 - v6;
  v7 = sub_2AFC(&qword_731F0, &qword_5ACA8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v92 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v90 = (&v88 - v11);
  v12 = sub_2AFC(&qword_731F8, &qword_5ACB0);
  v102 = *(v12 - 8);
  v103 = v12;
  v13 = *(v102 + 64);
  __chkstk_darwin(v12);
  v106 = &v88 - v14;
  v15 = sub_2AFC(&qword_71B00, &unk_593C0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v98 = &v88 - v17;
  v18 = sub_2AFC(&qword_73200, &qword_5ACB8);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v104 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v101 = &v88 - v22;
  v97 = sub_2AFC(&qword_73208, &qword_5ACC0);
  v23 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v25 = &v88 - v24;
  v26 = sub_5756C();
  v96 = *(v26 - 8);
  v27 = *(v96 + 64);
  __chkstk_darwin(v26);
  v93 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v88 - v30;
  v32 = sub_2AFC(&qword_73210, &qword_5ACC8);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = &v88 - v34;
  v95 = sub_2AFC(&qword_73218, &qword_5ACD0);
  v36 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v38 = &v88 - v37;
  v39 = type metadata accessor for IconView.Kind(0);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v42 = (&v88 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = sub_2AFC(&qword_73220, &qword_5ACD8);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8);
  v100 = &v88 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v48 = &v88 - v47;
  v94 = type metadata accessor for IconView(0);
  v49 = *(v94 + 20);
  v99 = a1;
  sub_45190(a1 + v49, v42);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v50 = v26;
    v51 = v96;
    (*(v96 + 32))(v31, v42, v50);
    (*(v51 + 16))(v25, v31, v50);
    sub_571DC();
    sub_566EC();
    v52 = v97;
    v53 = &v25[*(v97 + 36)];
    v54 = v108;
    *v53 = v107;
    *(v53 + 1) = v54;
    *(v53 + 2) = v109;
    sub_2E28(v25, v35, &qword_73208, &qword_5ACC0);
    swift_storeEnumTagMultiPayload();
    sub_451F4();
    sub_45368();
    sub_56ABC();
    sub_2E90(v25, &qword_73208, &qword_5ACC0);
    (*(v51 + 8))(v31, v50);
    v55 = v48;
    v56 = v52;
  }

  else
  {
    v57 = *v42;
    sub_55D8C();
    KeyPath = swift_getKeyPath();
    v59 = [objc_opt_self() tertiarySystemFillColor];
    *&v110 = sub_56F5C();
    v60 = sub_566FC();
    v61 = &v38[*(sub_2AFC(&qword_73238, &qword_5ACE0) + 36)];
    *v61 = KeyPath;
    v61[1] = v60;
    sub_571DC();
    sub_566EC();
    v62 = &v38[*(v95 + 36)];
    v63 = v108;
    *v62 = v107;
    *(v62 + 1) = v63;
    *(v62 + 2) = v109;
    sub_2E28(v38, v35, &qword_73218, &qword_5ACD0);
    swift_storeEnumTagMultiPayload();
    sub_451F4();
    sub_45368();
    v64 = v97;
    sub_56ABC();
    sub_2E90(v38, &qword_73218, &qword_5ACD0);
    v50 = v26;
    v51 = v96;
    v55 = v48;
    v56 = v64;
  }

  v65 = v98;
  sub_2E28(v99 + *(v94 + 24), v98, &qword_71B00, &unk_593C0);
  v66 = (*(v51 + 48))(v65, 1, v50);
  v67 = v101;
  v68 = v106;
  if (v66 == 1)
  {
    sub_2E90(v65, &qword_71B00, &unk_593C0);
LABEL_8:
    (*(v102 + 56))(v67, 1, 1, v103);
    goto LABEL_12;
  }

  v69 = v93;
  (*(v51 + 32))(v93, v65, v50);
  if (sub_5755C())
  {
    (*(v51 + 8))(v69, v50);
    goto LABEL_8;
  }

  v99 = v55;
  *v68 = sub_56A1C();
  *(v68 + 8) = 0;
  *(v68 + 16) = 1;
  v70 = v68 + *(sub_2AFC(&qword_73268, &qword_5ACF8) + 44);
  v71 = sub_5697C();
  v72 = v90;
  *v90 = v71;
  *(v72 + 8) = 0;
  *(v72 + 16) = 1;
  v73 = v72 + *(sub_2AFC(&qword_73270, &qword_5AD00) + 44);
  v74 = v89;
  (*(v51 + 16))(v89, v69, v50);
  sub_571DC();
  sub_566EC();
  v75 = (v74 + *(v56 + 36));
  v76 = v111;
  *v75 = v110;
  v75[1] = v76;
  v75[2] = v112;
  v98 = v50;
  v77 = v51;
  if (qword_71610 != -1)
  {
    swift_once();
  }

  v78 = (v74 + *(v88 + 36));
  *v78 = qword_75828;
  v78[1] = 0x4018000000000000;
  v78[2] = 0;
  v78[3] = 0;
  v79 = v91;
  sub_2E28(v74, v91, &qword_731E8, &qword_5ACA0);
  *v73 = 0;
  *(v73 + 8) = 1;
  v80 = sub_2AFC(&qword_73278, &qword_5AD08);
  sub_2E28(v79, v73 + *(v80 + 48), &qword_731E8, &qword_5ACA0);

  sub_2E90(v74, &qword_731E8, &qword_5ACA0);
  sub_2E90(v79, &qword_731E8, &qword_5ACA0);
  v81 = v92;
  sub_2E28(v72, v92, &qword_731F0, &qword_5ACA8);
  *v70 = 0;
  *(v70 + 8) = 1;
  v82 = sub_2AFC(&qword_73280, &qword_5AD10);
  sub_2E28(v81, v70 + *(v82 + 48), &qword_731F0, &qword_5ACA8);
  sub_2E90(v72, &qword_731F0, &qword_5ACA8);
  sub_2E90(v81, &qword_731F0, &qword_5ACA8);
  sub_454C4(v106, v67);
  (*(v102 + 56))(v67, 0, 1, v103);
  (*(v77 + 8))(v93, v98);
  v55 = v99;
LABEL_12:
  v83 = v100;
  sub_2E28(v55, v100, &qword_73220, &qword_5ACD8);
  v84 = v104;
  sub_2E28(v67, v104, &qword_73200, &qword_5ACB8);
  v85 = v105;
  sub_2E28(v83, v105, &qword_73220, &qword_5ACD8);
  v86 = sub_2AFC(&qword_73260, &qword_5ACF0);
  sub_2E28(v84, v85 + *(v86 + 48), &qword_73200, &qword_5ACB8);
  sub_2E90(v67, &qword_73200, &qword_5ACB8);
  sub_2E90(v55, &qword_73220, &qword_5ACD8);
  sub_2E90(v84, &qword_73200, &qword_5ACB8);
  return sub_2E90(v83, &qword_73220, &qword_5ACD8);
}

double sub_450EC@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_571CC();
  a1[1] = v3;
  v4 = sub_2AFC(&qword_731D8, &qword_5AC90);
  sub_444F8(v1, a1 + *(v4 + 44));
  sub_571DC();
  sub_566EC();
  v5 = (a1 + *(sub_2AFC(&qword_731E0, &qword_5AC98) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_45190(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconView.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_451F4()
{
  result = qword_73228;
  if (!qword_73228)
  {
    sub_2C70(&qword_73218, &qword_5ACD0);
    sub_45280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73228);
  }

  return result;
}

unint64_t sub_45280()
{
  result = qword_73230;
  if (!qword_73230)
  {
    sub_2C70(&qword_73238, &qword_5ACE0);
    sub_45424(&qword_72A30, &type metadata accessor for AvatarView);
    sub_3260(&qword_73240, &qword_73248, &qword_5ACE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73230);
  }

  return result;
}

unint64_t sub_45368()
{
  result = qword_73250;
  if (!qword_73250)
  {
    sub_2C70(&qword_73208, &qword_5ACC0);
    sub_45424(&qword_73258, type metadata accessor for SingleIconView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73250);
  }

  return result;
}

uint64_t sub_45424(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4548C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_454C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2AFC(&qword_731F8, &qword_5ACB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_45534@<X0>(uint64_t *a1@<X8>)
{
  result = sub_567DC();
  *a1 = result;
  return result;
}

uint64_t sub_45560(uint64_t *a1)
{
  v1 = *a1;

  return sub_567EC();
}

uint64_t sub_455A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_5756C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_45620(uint64_t a1, uint64_t a2)
{
  v4 = sub_5756C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_45690()
{
  result = sub_5756C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_45700()
{
  result = qword_73318;
  if (!qword_73318)
  {
    sub_2C70(&qword_731E0, &qword_5AC98);
    sub_3260(&qword_73320, &qword_73328, &qword_5AD58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73318);
  }

  return result;
}

void sub_457D4(uint64_t a1@<X8>)
{
  v2 = sub_5703C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_5753C();
  sub_5754C();
  v9 = [objc_allocWithZone(UIImage) initWithCGImage:v7 scale:0 orientation:v8];

  v10 = v9;
  sub_5701C();
  (*(v3 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v2);
  v11 = sub_5705C();

  (*(v3 + 8))(v6, v2);
  v12 = sub_56F9C();
  LOBYTE(v6) = sub_56CAC();

  *a1 = v11;
  *(a1 + 8) = v12;
  *(a1 + 16) = v6;
}

unint64_t sub_45968()
{
  result = qword_73330;
  if (!qword_73330)
  {
    sub_2C70(&qword_73338, &qword_5ADB0);
    sub_3260(&qword_71748, &qword_71750, &qword_58A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_73330);
  }

  return result;
}

void sub_45A20(void *a1)
{
  v2 = [a1 selectedMessage];
  if (v2 && (v3 = v2, v4 = [v2 isPending], v3, v4))
  {
    if (qword_71618 != -1)
    {
      swift_once();
    }

    v5 = [a1 selectedMessage];
    v6 = [v5 session];

    v8 = sub_45B3C(v6);
    v7 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = v7;
  sub_465A8(a1, v7);
}

uint64_t sub_45B3C(void *a1)
{
  v3 = sub_2AFC(&qword_73450, &qword_5AE20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v68[-v5];
  v75 = sub_2AFC(&unk_733D0, &qword_5ADF8);
  v7 = *(v75 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v75);
  v73 = &v68[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v74 = &v68[-v11];
  v12 = sub_2AFC(&qword_71B48, &qword_5A780);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v68[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v68[-v17];
  v19 = sub_561AC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v68[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v28 = __chkstk_darwin(v25);
  if (!a1)
  {
    (*(v20 + 56))(v18, 1, 1, v19, v28);
LABEL_7:
    sub_2E90(v18, &qword_71B48, &qword_5A780);
    if (qword_715A8 != -1)
    {
      swift_once();
    }

    v33 = sub_562FC();
    sub_B144(v33, qword_75728);
    v34 = sub_562DC();
    v35 = sub_5792C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v77[0] = swift_slowAlloc();
      *v36 = 136315394;
      *(v36 + 4) = sub_293C0(0xD000000000000056, 0x800000000005CEB0, v77);
      *(v36 + 12) = 2080;
      *(v36 + 14) = sub_293C0(0xD000000000000014, 0x800000000005CF60, v77);
      _os_log_impl(&dword_0, v34, v35, "%s: %s invalid session identifier", v36, 0x16u);
      swift_arrayDestroy();
    }

    return 0;
  }

  v29 = &v68[-v26];
  v72 = v27;
  v30 = [a1 identifier];
  if (v30)
  {
    v31 = v30;
    sub_5618C();

    (*(v20 + 56))(v15, 0, 1, v19);
  }

  else
  {
    (*(v20 + 56))(v15, 1, 1, v19);
  }

  v32 = v29;
  sub_B0DC(v15, v18, &qword_71B48, &qword_5A780);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    goto LABEL_7;
  }

  (*(v20 + 32))(v29, v18, v19);
  v38 = OBJC_IVAR____TtC13AskToMessagesP33_482FAE6FE60391365B8BEE861B6F00F718StagedMessageStore_cached;
  swift_beginAccess();
  sub_2E28(v1 + v38, v6, &qword_73450, &qword_5AE20);
  if ((*(v7 + 48))(v6, 1, v75) == 1)
  {
    v39 = &qword_73450;
    v40 = &qword_5AE20;
    v41 = v6;
LABEL_21:
    sub_2E90(v41, v39, v40);
    if (qword_715A8 != -1)
    {
      swift_once();
    }

    v55 = sub_562FC();
    sub_B144(v55, qword_75728);
    (*(v20 + 16))(v23, v32, v19);
    v56 = sub_562DC();
    v57 = sub_5794C();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v71 = v32;
      v59 = v58;
      v76 = swift_slowAlloc();
      *v59 = 136315650;
      *(v59 + 4) = sub_293C0(0xD000000000000056, 0x800000000005CEB0, &v76);
      *(v59 + 12) = 2080;
      *(v59 + 14) = sub_293C0(0xD000000000000014, 0x800000000005CF60, &v76);
      *(v59 + 22) = 2080;
      sub_4D9C0(&qword_71ED8, &type metadata accessor for UUID);
      v60 = sub_57B7C();
      v62 = v61;
      v63 = *(v20 + 8);
      v63(v23, v19);
      v64 = sub_293C0(v60, v62, &v76);

      *(v59 + 24) = v64;
      _os_log_impl(&dword_0, v56, v57, "%s: %s no staged message found for %s", v59, 0x20u);
      swift_arrayDestroy();

      v63(v71, v19);
    }

    else
    {

      v65 = *(v20 + 8);
      v65(v23, v19);
      v65(v32, v19);
    }

    return 0;
  }

  v42 = v74;
  sub_B0DC(v6, v74, &unk_733D0, &qword_5ADF8);
  if ((sub_5617C() & 1) == 0)
  {
    v39 = &unk_733D0;
    v40 = &qword_5ADF8;
    v41 = v42;
    goto LABEL_21;
  }

  if (qword_715A8 != -1)
  {
    swift_once();
  }

  v43 = sub_562FC();
  sub_B144(v43, qword_75728);
  v44 = v72;
  (*(v20 + 16))(v72, v32, v19);
  v45 = sub_562DC();
  v46 = sub_5794C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v71 = v32;
    v48 = v47;
    v70 = swift_slowAlloc();
    v76 = v70;
    *v48 = 136315650;
    *(v48 + 4) = sub_293C0(0xD000000000000056, 0x800000000005CEB0, &v76);
    v69 = v46;
    *(v48 + 12) = 2080;
    *(v48 + 14) = sub_293C0(0xD000000000000014, 0x800000000005CF60, &v76);
    *(v48 + 22) = 2080;
    sub_4D9C0(&qword_71ED8, &type metadata accessor for UUID);
    v49 = sub_57B7C();
    v51 = v50;
    v52 = *(v20 + 8);
    v52(v44, v19);
    v53 = sub_293C0(v49, v51, &v76);
    v42 = v74;

    *(v48 + 24) = v53;
    _os_log_impl(&dword_0, v45, v69, "%s: %s found staged message for %s", v48, 0x20u);
    swift_arrayDestroy();

    v54 = v71;
  }

  else
  {

    v52 = *(v20 + 8);
    v52(v44, v19);
    v54 = v32;
  }

  v52(v54, v19);
  v66 = v73;
  sub_B0DC(v42, v73, &unk_733D0, &qword_5ADF8);
  v67 = *&v66[*(v75 + 48)];
  v52(v66, v19);
  return v67;
}

void sub_465A8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_2AFC(&qword_725F0, &qword_59B18);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v249 = &v222 - v8;
  v9 = type metadata accessor for ContentModel();
  v246 = *(v9 - 8);
  v247 = v9;
  v10 = *(v246 + 64);
  __chkstk_darwin(v9);
  v12 = (&v222 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v234 = type metadata accessor for PayloadViewModel();
  v13 = *(*(v234 - 8) + 64);
  __chkstk_darwin(v234);
  v235 = &v222 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_5732C();
  v232 = *(v233 - 8);
  v15 = *(v232 + 64);
  __chkstk_darwin(v233);
  v231 = &v222 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_2AFC(&qword_73468, &unk_5AE30);
  v17 = *(*(v237 - 8) + 64);
  __chkstk_darwin(v237);
  v238 = &v222 - v18;
  v236 = type metadata accessor for MessagesContext();
  v19 = *(*(v236 - 8) + 64);
  __chkstk_darwin(v236);
  v239 = &v222 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2AFC(&qword_71B48, &qword_5A780);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v222 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v222 - v26;
  v28 = sub_561AC();
  v29 = *(v28 - 8);
  v241 = v28;
  v242 = v29;
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v230 = &v222 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v229 = &v222 - v33;
  __chkstk_darwin(v34);
  v240 = &v222 - v35;
  v36 = sub_560CC();
  v243 = *(v36 - 8);
  v244 = v36;
  v37 = *(v243 + 64);
  __chkstk_darwin(v36);
  v39 = &v222 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v245 = (&v222 - v41);
  v42 = *&v3[OBJC_IVAR____TtC13AskToMessages22MessagesViewController_conversation];
  *&v3[OBJC_IVAR____TtC13AskToMessages22MessagesViewController_conversation] = a1;
  v250 = a1;

  v43 = *&v3[OBJC_IVAR____TtC13AskToMessages22MessagesViewController_contentContainer];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v45 = Strong, sub_43EB8(), v46 = v45, LOBYTE(v45) = sub_5798C(), v46, v46, (v45 & 1) == 0))
  {
    sub_4CCB4(v3, v43);
  }

  v248 = v43;
  v47 = [v250 selectedMessage];
  if (!v47)
  {
    if (qword_715A8 != -1)
    {
      swift_once();
    }

    v57 = sub_562FC();
    sub_B144(v57, qword_75728);
    v58 = v3;
    v59 = sub_562DC();
    v60 = sub_5792C();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = 0xE90000000000003ELL;
      v62 = 0x6E776F6E6B6E753CLL;
      v63 = swift_slowAlloc();
      v251[0] = swift_slowAlloc();
      *v63 = 136315394;
      v64 = [v58 activeConversation];
      if (v64)
      {
        v65 = v64;
        v66 = [v64 selectedMessage];

        if (v66)
        {
          v67 = [v66 guid];

          if (v67)
          {
            v62 = sub_5778C();
            v61 = v68;
          }
        }
      }

      v69 = sub_293C0(v62, v61, v251);

      *(v63 + 4) = v69;
      *(v63 + 12) = 2080;
      *(v63 + 14) = sub_293C0(0xD00000000000002CLL, 0x800000000005CF10, v251);
      _os_log_impl(&dword_0, v59, v60, "%s: %s called with conversation that had no selected message", v63, 0x16u);
      swift_arrayDestroy();
    }

    sub_E638();
    v70 = swift_allocError();
    *v71 = 0;
    v72 = [v58 presentationStyle];
    *v12 = v70;
    v73 = v247;
    swift_storeEnumTagMultiPayload();
    v74 = v249;
    sub_4CF18(v12, v249, type metadata accessor for ContentModel);
    (*(v246 + 56))(v74, 0, 1, v73);
    v75 = OBJC_IVAR____TtC13AskToMessages16ContentContainer_currentContentModel;
    v76 = v248;
    swift_beginAccess();
    swift_errorRetain();
    swift_errorRetain();
    sub_4CEB0(v74, v76 + v75, &qword_725F0, &qword_59B18);
    swift_endAccess();
    v77 = sub_D94C(v12, v72);
    sub_26354(v77);

    sub_4CF80(v12, type metadata accessor for ContentModel);
    goto LABEL_51;
  }

  v48 = v47;
  v49 = a2;
  if (!a2)
  {
    v49 = v47;
  }

  v50 = a2;
  v51 = [v49 URL];

  if (!v51)
  {
    if (qword_715A8 != -1)
    {
      swift_once();
    }

    v78 = sub_562FC();
    sub_B144(v78, qword_75728);
    v79 = v3;
    v80 = sub_562DC();
    v81 = sub_5792C();

    if (os_log_type_enabled(v80, v81))
    {
      v82 = 0xE90000000000003ELL;
      v83 = 0x6E776F6E6B6E753CLL;
      v84 = swift_slowAlloc();
      v251[0] = swift_slowAlloc();
      *v84 = 136315394;
      v85 = [v79 activeConversation];
      if (v85)
      {
        v86 = v85;
        v87 = [v85 selectedMessage];

        if (v87 && (v88 = [v87 guid], v87, v88))
        {
          v83 = sub_5778C();
          v82 = v89;
        }

        else
        {
          v83 = 0x6E776F6E6B6E753CLL;
        }
      }

      v154 = sub_293C0(v83, v82, v251);

      *(v84 + 4) = v154;
      *(v84 + 12) = 2080;
      *(v84 + 14) = sub_293C0(0xD00000000000002CLL, 0x800000000005CF10, v251);
      _os_log_impl(&dword_0, v80, v81, "%s: %s called with message that had no URL", v84, 0x16u);
      swift_arrayDestroy();
    }

    sub_E638();
    v155 = swift_allocError();
    *v156 = 0;
    v157 = [v79 presentationStyle];
    *v12 = v155;
    v158 = v247;
    swift_storeEnumTagMultiPayload();
    v159 = v249;
    sub_4CF18(v12, v249, type metadata accessor for ContentModel);
    (*(v246 + 56))(v159, 0, 1, v158);
    v160 = OBJC_IVAR____TtC13AskToMessages16ContentContainer_currentContentModel;
    v161 = v248;
    swift_beginAccess();
    swift_errorRetain();
    swift_errorRetain();
    sub_4CEB0(v159, v161 + v160, &qword_725F0, &qword_59B18);
    swift_endAccess();
    v162 = sub_D94C(v12, v157);
    sub_26354(v162);

    sub_4CF80(v12, type metadata accessor for ContentModel);

    return;
  }

  sub_560AC();

  (*(v243 + 32))(v245, v39, v244);
  v52 = [v48 session];
  if (!v52)
  {
    (*(v242 + 56))(v27, 1, 1, v241);
LABEL_30:
    sub_2E90(v27, &qword_71B48, &qword_5A780);
    if (qword_715A8 != -1)
    {
      swift_once();
    }

    v91 = sub_562FC();
    sub_B144(v91, qword_75728);
    v92 = v3;
    v93 = sub_562DC();
    v94 = sub_5792C();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = 0xE90000000000003ELL;
      v96 = 0x6E776F6E6B6E753CLL;
      v97 = swift_slowAlloc();
      v251[0] = swift_slowAlloc();
      *v97 = 136315394;
      v98 = [v92 activeConversation];
      if (v98)
      {
        v99 = v98;
        v100 = [v98 selectedMessage];

        if (v100 && (v101 = [v100 guid], v100, v101))
        {
          v96 = sub_5778C();
          v95 = v102;
        }

        else
        {
          v96 = 0x6E776F6E6B6E753CLL;
        }
      }

      v117 = sub_293C0(v96, v95, v251);

      *(v97 + 4) = v117;
      *(v97 + 12) = 2080;
      *(v97 + 14) = sub_293C0(0xD00000000000002CLL, 0x800000000005CF10, v251);
      _os_log_impl(&dword_0, v93, v94, "%s: %s called with nil message.session", v97, 0x16u);
      swift_arrayDestroy();
    }

    sub_E638();
    v118 = swift_allocError();
    *v119 = 0;
    v120 = [v92 presentationStyle];
    *v12 = v118;
    v121 = v247;
    swift_storeEnumTagMultiPayload();
    v122 = v249;
    sub_4CF18(v12, v249, type metadata accessor for ContentModel);
    (*(v246 + 56))(v122, 0, 1, v121);
    v123 = OBJC_IVAR____TtC13AskToMessages16ContentContainer_currentContentModel;
    v124 = v248;
    swift_beginAccess();
    swift_errorRetain();
    swift_errorRetain();
    sub_4CEB0(v122, v124 + v123, &qword_725F0, &qword_59B18);
    swift_endAccess();
    v125 = sub_D94C(v12, v120);
    sub_26354(v125);

    sub_4CF80(v12, type metadata accessor for ContentModel);

    (*(v243 + 8))(v245, v244);
LABEL_51:

    return;
  }

  v53 = v52;
  v54 = [v52 identifier];

  v55 = v242;
  if (v54)
  {
    sub_5618C();

    v56 = 0;
  }

  else
  {
    v56 = 1;
  }

  v90 = v241;
  (*(v55 + 56))(v24, v56, 1, v241);
  sub_B0DC(v24, v27, &qword_71B48, &qword_5A780);
  if ((*(v55 + 48))(v27, 1, v90) == 1)
  {
    goto LABEL_30;
  }

  (*(v55 + 32))(v240, v27, v90);
  if (qword_715A8 != -1)
  {
    swift_once();
  }

  v227 = 0xE90000000000003ELL;
  v226 = 0x6E776F6E6B6E753CLL;
  v103 = sub_562FC();
  v104 = sub_B144(v103, qword_75728);
  v105 = v48;
  v106 = v3;
  v107 = sub_562DC();
  v108 = sub_5794C();

  if (os_log_type_enabled(v107, v108))
  {
    v224 = v104;
    v109 = swift_slowAlloc();
    v222 = swift_slowAlloc();
    v223 = swift_slowAlloc();
    v251[0] = v223;
    *v109 = 136315650;
    v110 = [v106 activeConversation];
    v225 = v103;
    if (v110 && (v111 = v110, v112 = [v110 selectedMessage], v111, v112) && (v113 = objc_msgSend(v112, "guid"), v112, v113))
    {
      v114 = sub_5778C();
      v116 = v115;
    }

    else
    {
      v114 = 0x6E776F6E6B6E753CLL;
      v116 = 0xE90000000000003ELL;
    }

    v126 = sub_293C0(v114, v116, v251);

    *(v109 + 4) = v126;
    *(v109 + 12) = 2080;
    *(v109 + 14) = sub_293C0(0xD00000000000002CLL, 0x800000000005CF10, v251);
    *(v109 + 22) = 2112;
    *(v109 + 24) = v105;
    v127 = v222;
    *v222 = v48;
    v128 = v105;
    _os_log_impl(&dword_0, v107, v108, "%s: %s called with message %@", v109, 0x20u);
    sub_2E90(v127, &qword_71828, &qword_598B0);

    swift_arrayDestroy();

    v103 = v225;
  }

  else
  {
  }

  v129 = *&v106[OBJC_IVAR____TtC13AskToMessages22MessagesViewController_messageParser];
  v130 = sub_EB20(v245);
  v228 = v105;
  v224 = v129;
  v131 = qword_715B0;
  v132 = v130;
  v133 = v132;
  if (v131 != -1)
  {
    swift_once();
  }

  sub_B144(v103, qword_75740);
  v134 = v106;
  v135 = sub_562DC();
  v136 = sub_5794C();

  v137 = os_log_type_enabled(v135, v136);
  v225 = v133;
  if (v137)
  {
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v251[0] = v140;
    *v138 = 136315394;
    v141 = [v134 activeConversation];
    if (v141)
    {
      v142 = v141;
      v143 = [v141 selectedMessage];

      if (v143)
      {
        v144 = [v143 guid];

        if (v144)
        {
          v226 = sub_5778C();
          v227 = v145;
        }
      }
    }

    v146 = sub_293C0(v226, v227, v251);

    *(v138 + 4) = v146;
    *(v138 + 12) = 2112;
    v147 = v225;
    *(v138 + 14) = v225;
    *v139 = v147;
    v148 = v147;
    _os_log_impl(&dword_0, v135, v136, "%s: Parsed payload from MSMessage: %@", v138, 0x16u);
    sub_2E90(v139, &qword_71828, &qword_598B0);

    sub_13040(v140);
  }

  if ([v105 isFromMe])
  {
    goto LABEL_73;
  }

  v149 = [v105 senderAddress];
  if (v149)
  {
    v150 = v149;
    v151 = sub_5778C();
    v153 = v152;
  }

  else
  {
    v151 = 0;
    v153 = 0;
  }

  v163 = [v250 senderAddress];
  v164 = sub_5778C();
  v166 = v165;

  if (v153)
  {
    if (v151 == v164 && v153 == v166)
    {

LABEL_73:
      LODWORD(v227) = 1;
      goto LABEL_75;
    }

    v167 = sub_57B8C();

    if (v167)
    {
      goto LABEL_73;
    }
  }

  else
  {
  }

  v168 = [v105 senderParticipantIdentifier];
  v169 = v229;
  sub_5618C();

  v170 = [v250 localParticipantIdentifier];
  v171 = v230;
  sub_5618C();

  LODWORD(v227) = sub_5617C();
  v172 = *(v242 + 8);
  v173 = v171;
  v174 = v241;
  v172(v173, v241);
  v172(v169, v174);
LABEL_75:
  v175 = [v105 guid];
  if (v175)
  {
    v176 = v175;
    v177 = sub_5778C();
    v179 = v178;
  }

  else
  {
    v177 = 0;
    v179 = 0;
  }

  v180 = [v105 senderAddress];
  v230 = v134;
  if (v180)
  {
    v181 = v180;
    v182 = sub_5778C();
    v184 = v183;
  }

  else
  {
    v182 = 0;
    v184 = 0;
  }

  v185 = v236;
  v186 = v239;
  (*(v242 + 16))(v239 + *(v236 + 28), v240, v241);
  v187 = [v250 senderAddress];
  v188 = sub_5778C();
  v190 = v189;

  *v186 = v177;
  *(v186 + 8) = v179;
  *(v186 + 16) = v182;
  *(v186 + 24) = v184;
  *(v186 + 32) = v227 & 1;
  v191 = (v186 + *(v185 + 32));
  *v191 = v188;
  v191[1] = v190;
  *(v186 + *(v185 + 36) + 8) = &off_6F6A0;
  v192 = v230;
  swift_unknownObjectWeakInit();
  v193 = *(v237 + 48);
  sub_104E4(v238, (v238 + v193), v245, v225);
  v250 = [v192 presentationStyle];
  if (!v184)
  {
    v202 = 0;
LABEL_98:
    v197 = 0;
LABEL_99:
    v205 = v234;
    v206 = v235;
    v207 = v238;
    sub_2E28(v238, &v235[*(v234 + 28)], &qword_71B00, &unk_593C0);
    sub_2E28(v207 + v193, v206 + v205[8], &qword_71B00, &unk_593C0);
    sub_4CF18(v239, v206 + v205[9], type metadata accessor for MessagesContext);
    v208 = v225;
    v209 = sub_575DC();
    v211 = v210;
    v212 = type metadata accessor for ManageContactsSetting();
    v213 = *(v212 + 48);
    v214 = *(v212 + 52);
    swift_allocObject();
    v215 = sub_320E4(v209, v211 & 1);
    *v206 = v197;
    v206[1] = v202;
    v206[2] = v184;
    v206[3] = v208;
    *(v206 + v205[10]) = v215;
    sub_4CF18(v206, v12, type metadata accessor for PayloadViewModel);
    v216 = v247;
    swift_storeEnumTagMultiPayload();
    v217 = v249;
    sub_4CF18(v12, v249, type metadata accessor for ContentModel);
    (*(v246 + 56))(v217, 0, 1, v216);
    v218 = OBJC_IVAR____TtC13AskToMessages16ContentContainer_currentContentModel;
    v219 = v248;
    swift_beginAccess();
    v220 = v208;
    sub_4CEB0(v217, v219 + v218, &qword_725F0, &qword_59B18);
    swift_endAccess();
    v221 = sub_D94C(v12, v250);
    sub_26354(v221);

    sub_4CF80(v12, type metadata accessor for ContentModel);
    sub_4CF80(v206, type metadata accessor for PayloadViewModel);
    [v230 requestResize];

    sub_2E90(v207, &qword_73468, &unk_5AE30);
    (*(v242 + 8))(v240, v241);
    (*(v243 + 8))(v245, v244);
    sub_4CF80(v239, type metadata accessor for MessagesContext);
    return;
  }

  v194 = v231;
  sub_572FC();
  v252._countAndFlagsBits = v182;
  v252._object = v184;
  v195 = sub_5730C(v252);
  (*(v232 + 8))(v194, v233);
  if (!v195)
  {
LABEL_97:
    v202 = 0;
    v184 = 0;
    goto LABEL_98;
  }

  if (v195 >> 62)
  {
    if (sub_57B1C())
    {
      goto LABEL_85;
    }

    goto LABEL_96;
  }

  if (!*(&dword_10 + (v195 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_96:

    goto LABEL_97;
  }

LABEL_85:
  if ((v195 & 0xC000000000000001) != 0)
  {
    v196 = sub_57AEC();
    goto LABEL_88;
  }

  if (*(&dword_10 + (v195 & 0xFFFFFFFFFFFFFF8)))
  {
    v196 = *(v195 + 32);
LABEL_88:
    v197 = v196;

    v198 = qword_715F0;
    v199 = v197;
    if (v198 != -1)
    {
      swift_once();
    }

    v200 = sub_5738C();
    sub_B144(v200, qword_72500);
    v201.super.isa = v199;
    v253._countAndFlagsBits = 0;
    v253._object = 0xE000000000000000;
    v202 = sub_5735C(v201, 1, v253);
    v184 = v203;

    v204 = HIBYTE(v184) & 0xF;
    if ((v184 & 0x2000000000000000) == 0)
    {
      v204 = v202 & 0xFFFFFFFFFFFFLL;
    }

    if (!v204)
    {

      v202 = 0;
      v184 = 0;
    }

    goto LABEL_99;
  }

  __break(1u);
}

void sub_48414(void *a1)
{
  if (qword_715A8 != -1)
  {
    swift_once();
  }

  v3 = sub_562FC();
  sub_B144(v3, qword_75728);
  v4 = v1;
  v5 = sub_562DC();
  v6 = sub_5791C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = 0xE90000000000003ELL;
    v8 = 0x6E776F6E6B6E753CLL;
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = [v4 activeConversation];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 selectedMessage];

      if (v12)
      {
        v13 = [v12 guid];

        if (v13)
        {
          v8 = sub_5778C();
          v7 = v14;
        }
      }
    }

    v15 = sub_293C0(v8, v7, &v16);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_293C0(0xD000000000000017, 0x800000000005D060, &v16);
    _os_log_impl(&dword_0, v5, v6, "%s: %s called", v9, 0x16u);
    swift_arrayDestroy();
  }

  [v4 setNeedsSizeMatchBeforeSnapshotSwap];
  sub_45A20(a1);
}

uint64_t sub_487A4(void *a1, uint64_t a2, unint64_t a3)
{
  v120 = a2;
  v121 = a3;
  v4 = sub_2AFC(&qword_71A10, &qword_5A5A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v109 = (&v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v9 = (&v102 - v8);
  v10 = sub_2AFC(&qword_71B48, &qword_5A780);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v111 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v102 - v14;
  __chkstk_darwin(v16);
  v115 = &v102 - v17;
  v18 = sub_5759C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v118 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2AFC(&qword_720F8, &unk_59710);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v116 = &v102 - v24;
  v25 = sub_560CC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v117 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_715A8 != -1)
  {
    swift_once();
  }

  v29 = sub_562FC();
  v30 = sub_B144(v29, qword_75728);

  v31 = sub_562DC();
  v32 = sub_5794C();

  v33 = os_log_type_enabled(v31, v32);
  v113 = v15;
  v112 = v9;
  v119 = a1;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v114 = v18;
    v35 = v34;
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v35 = 136315138;
    v37 = sub_5768C();
    v39 = v26;
    v40 = sub_293C0(v37, v38, aBlock);

    *(v35 + 4) = v40;
    v26 = v39;
    _os_log_impl(&dword_0, v31, v32, "Received text input payload: %s", v35, 0xCu);
    sub_13040(v36);

    v18 = v114;
  }

  v42 = v120;
  v41 = v121;
  if ((v120 != 0xD00000000000002CLL || 0x800000000005CFC0 != v121) && (sub_57B8C() & 1) == 0)
  {

    v47 = sub_562DC();
    v53 = sub_5792C();

    if (os_log_type_enabled(v47, v53))
    {
      v54 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v54 = 136315394;
      *(v54 + 4) = sub_293C0(0xD000000000000029, 0x800000000005CFF0, aBlock);
      *(v54 + 12) = 2080;
      *(v54 + 14) = sub_293C0(v42, v41, aBlock);
      _os_log_impl(&dword_0, v47, v53, "%s Invalid payload ID: %s", v54, 0x16u);
      goto LABEL_18;
    }

LABEL_19:

    return 0;
  }

  aBlock[7] = 0x4C52556F746B7361;
  aBlock[8] = 0xE800000000000000;
  sub_57A5C();
  v43 = v119;
  if (!v119[2] || (v44 = sub_6EF0(aBlock), (v45 & 1) == 0))
  {
    sub_B7FC(aBlock);
LABEL_14:

    v47 = sub_562DC();
    v48 = sub_5792C();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v49 = 136315394;
      *(v49 + 4) = sub_293C0(0xD000000000000029, 0x800000000005CFF0, aBlock);
      *(v49 + 12) = 2080;
      v50 = sub_5768C();
      v52 = sub_293C0(v50, v51, aBlock);

      *(v49 + 14) = v52;
      _os_log_impl(&dword_0, v47, v48, "%s No url in payload %s", v49, 0x16u);
LABEL_18:
      swift_arrayDestroy();

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  sub_17458(v43[7] + 32 * v44, v123);
  sub_B7FC(aBlock);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v46 = v116;
  sub_560BC();

  if ((*(v26 + 48))(v46, 1, v25) == 1)
  {
    sub_2E90(v46, &qword_720F8, &unk_59710);
    goto LABEL_14;
  }

  v121 = v30;
  (*(v26 + 32))(v117, v46, v25);
  sub_5758C();
  v56 = sub_5765C();
  sub_4D9C0(&qword_71B20, &type metadata accessor for ATPayload);
  sub_4D9C0(&qword_71B28, &type metadata accessor for ATPayload);
  sub_5757C();
  v107 = v56;
  v57 = aBlock[0];
  v58 = sub_561AC();
  v59 = (*(v58 - 8) + 56);
  v60 = v115;
  v108 = *v59;
  v108(v115, 1, 1, v58);
  v61 = v57;
  ATPayload.newMessage(sessionId:)(v60);
  v119 = v61;
  v120 = 0;
  v116 = v62;
  v63 = v62;
  v106 = v59;
  v102 = v58;
  v104 = v25;
  v114 = v18;

  sub_2E90(v60, &qword_71B48, &qword_5A780);
  v115 = v63;
  v64 = sub_5763C();
  v65 = v112;
  v66 = v64;
  sub_5630C();
  v67 = sub_5636C();
  v68 = *(v67 - 8);
  v69 = (*(v68 + 48))(v65, 1, v67);
  v105 = v19;
  v103 = v26;
  if (v69 == 1)
  {
    sub_2E90(v65, &qword_71A10, &qword_5A5A0);
  }

  else
  {
    v70 = (*(v68 + 88))(v65, v67);
    if (v70 == enum case for ATQuestion.TopicMetadata.communication(_:))
    {
      v71 = v70;
      (*(v68 + 96))(v65, v67);
      v72 = *v65;
      v73 = sub_574BC();
      v74 = v109;
      *v109 = v73;
      (*(v68 + 104))(v74, v71, v67);
      (*(v68 + 56))(v74, 0, 1, v67);
      v75 = v73;
      sub_5631C();
    }

    else
    {
      (*(v68 + 8))(v65, v67);
    }
  }

  v109 = sub_575DC();
  sub_5762C();
  sub_5761C();
  sub_575FC();
  sub_5760C();
  v112 = v66;
  v76 = sub_575CC();
  v77 = v115;
  v78 = [v115 session];

  if (v78)
  {
    v79 = [v78 identifier];

    v80 = v114;
    v81 = v105;
    v82 = v104;
    v83 = v103;
    v84 = v113;
    v85 = v102;
    if (v79)
    {
      v86 = v111;
      sub_5618C();

      v87 = 0;
    }

    else
    {
      v87 = 1;
      v86 = v111;
    }

    v108(v86, v87, 1, v85);
    sub_B0DC(v86, v84, &qword_71B48, &qword_5A780);
  }

  else
  {
    v84 = v113;
    v108(v113, 1, 1, v102);
    v80 = v114;
    v81 = v105;
    v82 = v104;
    v83 = v103;
  }

  v88 = v120;
  ATPayload.newMessage(sessionId:)(v84);
  if (v88)
  {
    sub_2E90(v84, &qword_71B48, &qword_5A780);

    swift_errorRetain();
    v90 = sub_562DC();
    v91 = sub_5792C();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v94 = v83;
      v95 = swift_slowAlloc();
      aBlock[0] = v95;
      *v92 = 136315394;
      *(v92 + 4) = sub_293C0(0xD000000000000029, 0x800000000005CFF0, aBlock);
      *(v92 + 12) = 2112;
      swift_errorRetain();
      v96 = _swift_stdlib_bridgeErrorToNSError();
      *(v92 + 14) = v96;
      *v93 = v96;
      _os_log_impl(&dword_0, v90, v91, "%s Error creating message from ATPayload: %@", v92, 0x16u);
      sub_2E90(v93, &qword_71828, &qword_598B0);

      sub_13040(v95);

      (*(v81 + 8))(v118, v80);
      (*(v94 + 8))(v117, v82);
    }

    else
    {

      (*(v81 + 8))(v118, v80);
      (*(v83 + 8))(v117, v82);
    }

    if (!v120)
    {
    }

    return 0;
  }

  v97 = v89;
  sub_2E90(v84, &qword_71B48, &qword_5A780);

  v98 = [v110 activeConversation];
  if (v98)
  {
    v99 = v98;
    aBlock[4] = sub_49924;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_49AD4;
    aBlock[3] = &unk_6F788;
    v100 = _Block_copy(aBlock);
    [v99 insertMessage:v97 completionHandler:v100];
    _Block_release(v100);
  }

  v101 = v115;
  sub_49BDC(v115);

  (*(v81 + 8))(v118, v80);
  (*(v83 + 8))(v117, v82);

  return 1;
}

void sub_49924(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_715A8 != -1)
    {
      swift_once();
    }

    v1 = sub_562FC();
    sub_B144(v1, qword_75728);
    swift_errorRetain();
    oslog = sub_562DC();
    v2 = sub_5792C();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&dword_0, oslog, v2, "Error staging payload: %@", v3, 0xCu);
      sub_2E90(v4, &qword_71828, &qword_598B0);
    }

    else
    {
    }
  }
}

void sub_49AD4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_49BDC(void *a1)
{
  v3 = sub_561AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v60 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2AFC(&qword_73458, &qword_5AE28);
  v7 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v9 = &v58 - v8;
  v10 = sub_2AFC(&qword_71B48, &qword_5A780);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v62 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v58 - v14;
  __chkstk_darwin(v16);
  v18 = &v58 - v17;
  __chkstk_darwin(v19);
  v21 = &v58 - v20;
  __chkstk_darwin(v22);
  v24 = &v58 - v23;
  if (qword_71618 != -1)
  {
    swift_once();
  }

  sub_4A3E8(a1);
  v25 = *&v1[OBJC_IVAR____TtC13AskToMessages22MessagesViewController_conversation];
  if (v25)
  {
    v59 = v1;
    v63 = a1;
    v61 = v25;
    v26 = [v61 selectedMessage];
    if (v26 && (v27 = v26, v28 = [v26 session], v27, v28))
    {
      v29 = [v28 identifier];

      if (v29)
      {
        sub_5618C();

        v30 = *(v4 + 56);
        v30(v21, 0, 1, v3);
      }

      else
      {
        v30 = *(v4 + 56);
        v30(v21, 1, 1, v3);
      }

      sub_B0DC(v21, v24, &qword_71B48, &qword_5A780);
    }

    else
    {
      v30 = *(v4 + 56);
      v30(v24, 1, 1, v3);
    }

    v31 = [v63 session];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 identifier];

      if (v33)
      {
        sub_5618C();

        v34 = 0;
      }

      else
      {
        v34 = 1;
      }

      v30(v15, v34, 1, v3);
      sub_B0DC(v15, v18, &qword_71B48, &qword_5A780);
    }

    else
    {
      v30(v18, 1, 1, v3);
    }

    v35 = *(v64 + 48);
    sub_2E28(v24, v9, &qword_71B48, &qword_5A780);
    sub_2E28(v18, &v9[v35], &qword_71B48, &qword_5A780);
    v36 = *(v4 + 48);
    if (v36(v9, 1, v3) == 1)
    {
      sub_2E90(v18, &qword_71B48, &qword_5A780);
      sub_2E90(v24, &qword_71B48, &qword_5A780);
      if (v36(&v9[v35], 1, v3) == 1)
      {
        sub_2E90(v9, &qword_71B48, &qword_5A780);
        v37 = v61;
LABEL_24:
        if (qword_715A8 != -1)
        {
          swift_once();
        }

        v44 = sub_562FC();
        sub_B144(v44, qword_75728);
        v45 = v59;
        v46 = sub_562DC();
        v47 = sub_5794C();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = 0xE90000000000003ELL;
          v49 = 0x6E776F6E6B6E753CLL;
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v65 = v51;
          *v50 = 136315138;
          v52 = [v45 activeConversation];
          if (v52)
          {
            v53 = v52;
            v54 = [v52 selectedMessage];

            if (v54)
            {
              v55 = [v54 guid];

              if (v55)
              {
                v49 = sub_5778C();
                v48 = v56;
              }
            }
          }

          v57 = sub_293C0(v49, v48, &v65);

          *(v50 + 4) = v57;
          _os_log_impl(&dword_0, v46, v47, "%s: updateStaged called", v50, 0xCu);
          sub_13040(v51);
        }

        [v45 _didUpdateMessage:v63 conversation:v37];
        goto LABEL_33;
      }
    }

    else
    {
      v38 = v62;
      sub_2E28(v9, v62, &qword_71B48, &qword_5A780);
      if (v36(&v9[v35], 1, v3) != 1)
      {
        v39 = &v9[v35];
        v40 = v60;
        (*(v4 + 32))(v60, v39, v3);
        sub_4D9C0(&qword_73460, &type metadata accessor for UUID);
        v41 = v38;
        v42 = sub_576CC();
        v43 = *(v4 + 8);
        v43(v40, v3);
        sub_2E90(v18, &qword_71B48, &qword_5A780);
        sub_2E90(v24, &qword_71B48, &qword_5A780);
        v43(v41, v3);
        sub_2E90(v9, &qword_71B48, &qword_5A780);
        v37 = v61;
        if (v42)
        {
          goto LABEL_24;
        }

LABEL_33:

        return;
      }

      sub_2E90(v18, &qword_71B48, &qword_5A780);
      sub_2E90(v24, &qword_71B48, &qword_5A780);
      (*(v4 + 8))(v38, v3);
    }

    sub_2E90(v9, &qword_73458, &qword_5AE28);
    v37 = v61;
    goto LABEL_33;
  }
}

void sub_4A3E8(void *a1)
{
  v3 = sub_2AFC(&qword_73450, &qword_5AE20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v33[-1] - v5;
  v7 = sub_2AFC(&qword_71B48, &qword_5A780);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v33[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v33[-1] - v12;
  v14 = sub_561AC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  *&v17 = __chkstk_darwin(v14).n128_u64[0];
  v19 = &v33[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 session];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 identifier];

    if (v22)
    {
      sub_5618C();

      (*(v15 + 56))(v10, 0, 1, v14);
    }

    else
    {
      (*(v15 + 56))(v10, 1, 1, v14);
    }

    sub_B0DC(v10, v13, &qword_71B48, &qword_5A780);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      v27 = *(v15 + 32);
      v27(v19, v13, v14);
      v28 = sub_2AFC(&unk_733D0, &qword_5ADF8);
      v29 = *(v28 + 48);
      v27(v6, v19, v14);
      *&v6[v29] = a1;
      (*(*(v28 - 8) + 56))(v6, 0, 1, v28);
      v30 = OBJC_IVAR____TtC13AskToMessagesP33_482FAE6FE60391365B8BEE861B6F00F718StagedMessageStore_cached;
      swift_beginAccess();
      v31 = a1;
      sub_4CEB0(v6, v1 + v30, &qword_73450, &qword_5AE20);
      swift_endAccess();
      return;
    }
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  sub_2E90(v13, &qword_71B48, &qword_5A780);
  if (qword_715A8 != -1)
  {
    swift_once();
  }

  v23 = sub_562FC();
  sub_B144(v23, qword_75728);
  v24 = sub_562DC();
  v25 = sub_5792C();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v33[0] = swift_slowAlloc();
    *v26 = 136315394;
    *(v26 + 4) = sub_293C0(0xD000000000000056, 0x800000000005CEB0, v33);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_293C0(0x617373654D646461, 0xEE00293A5F286567, v33);
    _os_log_impl(&dword_0, v24, v25, "%s: %s invalid session identifier", v26, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_4A890(void *a1)
{
  v3 = sub_2AFC(&qword_73450, &qword_5AE20);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v109 = &v95 - v5;
  v111 = sub_2AFC(&qword_73458, &qword_5AE28);
  v6 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v8 = &v95 - v7;
  v9 = sub_2AFC(&qword_71B48, &qword_5A780);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v95 - v14;
  __chkstk_darwin(v16);
  v112 = &v95 - v17;
  __chkstk_darwin(v18);
  v20 = &v95 - v19;
  __chkstk_darwin(v21);
  v23 = &v95 - v22;
  v24 = sub_561AC();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v110 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v108 = &v95 - v29;
  __chkstk_darwin(v30);
  v107 = &v95 - v31;
  *&v33 = __chkstk_darwin(v32).n128_u64[0];
  v35 = &v95 - v34;
  v36 = [a1 session];
  if (!v36)
  {
    (*(v25 + 56))(v23, 1, 1, v24);
LABEL_7:
    sub_2E90(v23, &qword_71B48, &qword_5A780);
    if (qword_715A8 != -1)
    {
      swift_once();
    }

    v41 = sub_562FC();
    sub_B144(v41, qword_75728);
    v42 = sub_562DC();
    v43 = sub_5792C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v115[0] = swift_slowAlloc();
      *v44 = 136315394;
      *(v44 + 4) = sub_293C0(0xD000000000000056, 0x800000000005CEB0, v115);
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_293C0(0xD000000000000011, 0x800000000005CFA0, v115);
      _os_log_impl(&dword_0, v42, v43, "%s: %s invalid session identifier", v44, 0x16u);
      swift_arrayDestroy();
    }

    return;
  }

  v113 = v35;
  v37 = v36;
  v38 = [v36 identifier];

  if (v38)
  {
    sub_5618C();

    v39 = *(v25 + 56);
    v39(v20, 0, 1, v24);
  }

  else
  {
    v39 = *(v25 + 56);
    v39(v20, 1, 1, v24);
  }

  sub_B0DC(v20, v23, &qword_71B48, &qword_5A780);
  v40 = *(v25 + 48);
  if (v40(v23, 1, v24) == 1)
  {
    goto LABEL_7;
  }

  v102 = v8;
  v105 = v12;
  v45 = *(v25 + 32);
  v97 = v25 + 32;
  v96 = v45;
  v45(v113, v23, v24);
  v46 = v1;
  v47 = OBJC_IVAR____TtC13AskToMessagesP33_482FAE6FE60391365B8BEE861B6F00F718StagedMessageStore_cached;
  swift_beginAccess();
  v48 = sub_2AFC(&unk_733D0, &qword_5ADF8);
  v98 = *(v48 - 8);
  v49 = *(v98 + 48);
  v99 = v48;
  v50 = v49(v46 + v47, 1);
  v100 = v47;
  v101 = v46;
  v106 = v25;
  if (v50)
  {
    v51 = v112;
    v39(v112, 1, 1, v24);
    v53 = v25 + 16;
    v52 = *(v25 + 16);
    v54 = v53 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  else
  {
    v55 = v25 + 16;
    v52 = *(v25 + 16);
    v54 = v55 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v56 = v46 + v47;
    v51 = v112;
    v52(v112, v56, v24);
    v39(v51, 0, 1, v24);
  }

  v103 = v54;
  v52(v15, v113, v24);
  v39(v15, 0, 1, v24);
  v57 = *(v111 + 48);
  v58 = v102;
  sub_2E28(v51, v102, &qword_71B48, &qword_5A780);
  sub_2E28(v15, v58 + v57, &qword_71B48, &qword_5A780);
  v59 = v40(v58, 1, v24);
  v60 = v51;
  v61 = v105;
  v104 = v52;
  if (v59 == 1)
  {
    sub_2E90(v15, &qword_71B48, &qword_5A780);
    sub_2E90(v60, &qword_71B48, &qword_5A780);
    v62 = v40((v58 + v57), 1, v24);
    v63 = v113;
    if (v62 == 1)
    {
      sub_2E90(v58, &qword_71B48, &qword_5A780);
      v64 = v104;
LABEL_27:
      if (qword_715A8 != -1)
      {
        swift_once();
      }

      v80 = sub_562FC();
      sub_B144(v80, qword_75728);
      v81 = v108;
      v64(v108, v63, v24);
      v82 = sub_562DC();
      v83 = sub_5794C();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v114[0] = swift_slowAlloc();
        *v84 = 136315650;
        *(v84 + 4) = sub_293C0(0xD000000000000056, 0x800000000005CEB0, v114);
        *(v84 + 12) = 2080;
        *(v84 + 14) = sub_293C0(0xD000000000000011, 0x800000000005CFA0, v114);
        *(v84 + 22) = 2080;
        sub_4D9C0(&qword_71ED8, &type metadata accessor for UUID);
        v85 = sub_57B7C();
        v87 = v86;
        v88 = v81;
        v89 = *(v106 + 8);
        v89(v88, v24);
        v90 = sub_293C0(v85, v87, v114);

        *(v84 + 24) = v90;
        _os_log_impl(&dword_0, v82, v83, "%s: %s removed staged message %s", v84, 0x20u);
        swift_arrayDestroy();

        v89(v63, v24);
      }

      else
      {

        v91 = *(v106 + 8);
        v91(v81, v24);
        v91(v63, v24);
      }

      v93 = v100;
      v92 = v101;
      v94 = v109;
      (*(v98 + 56))(v109, 1, 1, v99);
      swift_beginAccess();
      sub_4CEB0(v94, v92 + v93, &qword_73450, &qword_5AE20);
      swift_endAccess();
      return;
    }

    goto LABEL_20;
  }

  sub_2E28(v58, v105, &qword_71B48, &qword_5A780);
  if (v40((v58 + v57), 1, v24) == 1)
  {
    sub_2E90(v15, &qword_71B48, &qword_5A780);
    sub_2E90(v112, &qword_71B48, &qword_5A780);
    (*(v106 + 8))(v61, v24);
    v63 = v113;
LABEL_20:
    sub_2E90(v58, &qword_73458, &qword_5AE28);
    v64 = v104;
    goto LABEL_21;
  }

  v77 = v107;
  v96(v107, v58 + v57, v24);
  sub_4D9C0(&qword_73460, &type metadata accessor for UUID);
  v78 = sub_576CC();
  v79 = *(v106 + 8);
  v79(v77, v24);
  sub_2E90(v15, &qword_71B48, &qword_5A780);
  sub_2E90(v112, &qword_71B48, &qword_5A780);
  v79(v61, v24);
  sub_2E90(v58, &qword_71B48, &qword_5A780);
  v63 = v113;
  v64 = v104;
  if (v78)
  {
    goto LABEL_27;
  }

LABEL_21:
  if (qword_715A8 != -1)
  {
    swift_once();
  }

  v65 = sub_562FC();
  sub_B144(v65, qword_75728);
  v66 = v110;
  v64(v110, v63, v24);
  v67 = sub_562DC();
  v68 = sub_5794C();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v114[0] = swift_slowAlloc();
    *v69 = 136315650;
    *(v69 + 4) = sub_293C0(0xD000000000000056, 0x800000000005CEB0, v114);
    *(v69 + 12) = 2080;
    *(v69 + 14) = sub_293C0(0xD000000000000011, 0x800000000005CFA0, v114);
    *(v69 + 22) = 2080;
    sub_4D9C0(&qword_71ED8, &type metadata accessor for UUID);
    v70 = sub_57B7C();
    v71 = v66;
    v73 = v72;
    v74 = *(v106 + 8);
    v74(v71, v24);
    v75 = sub_293C0(v70, v73, v114);

    *(v69 + 24) = v75;
    _os_log_impl(&dword_0, v67, v68, "%s: %s no staged message for %s", v69, 0x20u);
    swift_arrayDestroy();

    v74(v63, v24);
  }

  else
  {

    v76 = *(v106 + 8);
    v76(v66, v24);
    v76(v63, v24);
  }
}

uint64_t sub_4B80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_578AC();
  v5[7] = sub_5789C();
  v7 = sub_5788C();

  return _swift_task_switch(sub_4B8AC, v7, v6);
}

uint64_t sub_4B8AC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  *(v0 + 64) = _Block_copy(v3);
  if (v2)
  {
    v4 = *(v0 + 32);
    sub_5778C();
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 72) = v5;
  v6 = *(v0 + 48);
  v7 = *(v0 + 24);
  v8 = *(v0 + 16);
  v9 = v7;
  v10 = v6;
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_4B9A4;
  v12 = *(v0 + 16);

  return sub_4D700(v12);
}

uint64_t sub_4B9A4(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = *(*v3 + 72);
  v9 = *(*v3 + 48);
  v10 = *(*v3 + 24);
  v11 = *(*v3 + 16);
  v12 = *v3;

  if (a3)
  {

    v13 = sub_5774C();
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v6 + 64);
  (v14)[2](v14, a1 & 1, v13);

  _Block_release(v14);

  v15 = *(v12 + 8);

  return v15();
}

double sub_4BBC8(double a1, double a2)
{
  if (qword_715A8 != -1)
  {
    swift_once();
  }

  v5 = 0xE90000000000003ELL;
  v6 = 0x6E776F6E6B6E753CLL;
  v7 = sub_562FC();
  sub_B144(v7, qword_75728);
  v8 = v2;
  v9 = sub_562DC();
  v10 = sub_5794C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v11 = 136315394;
    v12 = [v8 activeConversation];
    if (v12 && (v13 = v12, v14 = [v12 selectedMessage], v13, v14) && (v15 = objc_msgSend(v14, "guid"), v14, v15))
    {
      v16 = sub_5778C();
      v18 = v17;

      v19 = v16;
      v6 = 0x6E776F6E6B6E753CLL;
    }

    else
    {
      v19 = 0x6E776F6E6B6E753CLL;
      v18 = 0xE90000000000003ELL;
    }

    v20 = sub_293C0(v19, v18, &v38);

    *(v11 + 4) = v20;
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_293C0(0xD000000000000017, 0x800000000005CF80, &v38);
    _os_log_impl(&dword_0, v9, v10, "%s: %s called", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v21 = *&v8[OBJC_IVAR____TtC13AskToMessages22MessagesViewController_contentContainer];
  sub_26CC0(a1, a2);
  v23 = v22;
  v25 = v24;
  v26 = v8;
  v27 = sub_562DC();
  v28 = sub_5794C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38 = v30;
    *v29 = 136316162;
    v31 = [v26 activeConversation];
    if (v31)
    {
      v32 = v31;
      v33 = [v31 selectedMessage];

      if (v33 && (v34 = [v33 guid], v33, v34))
      {
        v6 = sub_5778C();
        v5 = v35;
      }

      else
      {
        v6 = 0x6E776F6E6B6E753CLL;
      }
    }

    v36 = sub_293C0(v6, v5, &v38);

    *(v29 + 4) = v36;
    *(v29 + 12) = 2048;
    *(v29 + 14) = v23;
    *(v29 + 22) = 2048;
    *(v29 + 24) = v25;
    *(v29 + 32) = 2048;
    *(v29 + 34) = a1;
    *(v29 + 42) = 2048;
    *(v29 + 44) = a2;
    _os_log_impl(&dword_0, v27, v28, "%s: contentSizeThatFits returning %f x %f in fitting size %f x %f", v29, 0x34u);
    sub_13040(v30);
  }

  return v23;
}

id sub_4C024(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC13AskToMessages22MessagesViewController_messageParser;
  type metadata accessor for MessageParser();
  *&v3[v6] = swift_allocObject();
  *&v3[OBJC_IVAR____TtC13AskToMessages22MessagesViewController_conversation] = 0;
  v7 = OBJC_IVAR____TtC13AskToMessages22MessagesViewController_contentContainer;
  v21[3] = &type metadata for ContentControllerProvider;
  v21[4] = &off_6E880;
  v8 = type metadata accessor for ContentContainer();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  sub_4CFE0(v21, &type metadata for ContentControllerProvider);
  v19 = &type metadata for ContentControllerProvider;
  v20 = &off_6E880;
  *(v11 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 72) = 0;
  v12 = OBJC_IVAR____TtC13AskToMessages16ContentContainer_currentContentModel;
  v13 = type metadata accessor for ContentModel();
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  sub_2A3C8(&v18, v11 + 16);
  sub_13040(v21);
  *&v3[v7] = v11;
  if (a2)
  {
    v14 = sub_5774C();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v3;
  v17.super_class = type metadata accessor for MessagesViewController();
  v15 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", v14, a3);

  return v15;
}

id sub_4C204(void *a1)
{
  v3 = OBJC_IVAR____TtC13AskToMessages22MessagesViewController_messageParser;
  type metadata accessor for MessageParser();
  *&v1[v3] = swift_allocObject();
  *&v1[OBJC_IVAR____TtC13AskToMessages22MessagesViewController_conversation] = 0;
  v4 = OBJC_IVAR____TtC13AskToMessages22MessagesViewController_contentContainer;
  v17[3] = &type metadata for ContentControllerProvider;
  v17[4] = &off_6E880;
  v5 = type metadata accessor for ContentContainer();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  sub_4CFE0(v17, &type metadata for ContentControllerProvider);
  v15 = &type metadata for ContentControllerProvider;
  v16 = &off_6E880;
  *(v8 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 72) = 0;
  v9 = OBJC_IVAR____TtC13AskToMessages16ContentContainer_currentContentModel;
  v10 = type metadata accessor for ContentModel();
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  sub_2A3C8(&v14, v8 + 16);
  sub_13040(v17);
  *&v1[v4] = v8;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for MessagesViewController();
  v11 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);

  if (v11)
  {
  }

  return v11;
}

id sub_4C40C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagesViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_4C4C0()
{
  v0 = type metadata accessor for StagedMessageStore();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC13AskToMessagesP33_482FAE6FE60391365B8BEE861B6F00F718StagedMessageStore_cached;
  v5 = sub_2AFC(&unk_733D0, &qword_5ADF8);
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  qword_73340 = v3;
  return result;
}

uint64_t sub_4C550()
{
  sub_2E90(v0 + OBJC_IVAR____TtC13AskToMessagesP33_482FAE6FE60391365B8BEE861B6F00F718StagedMessageStore_cached, &qword_73450, &qword_5AE20);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StagedMessageStore()
{
  result = qword_733B8;
  if (!qword_733B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4C618()
{
  sub_4C6A8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_4C6A8()
{
  if (!qword_733C8)
  {
    sub_2C70(&unk_733D0, &qword_5ADF8);
    v0 = sub_579AC();
    if (!v1)
    {
      atomic_store(v0, &qword_733C8);
    }
  }
}

uint64_t sub_4C70C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_22334;

  return v7();
}

uint64_t sub_4C7F4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_BBC4;

  return v8();
}

uint64_t sub_4C8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2AFC(&qword_71820, &qword_59550);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_2E28(a3, v25 - v11, &qword_71820, &qword_59550);
  v13 = sub_578CC();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2E90(v12, &qword_71820, &qword_59550);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_578BC();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_5788C();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_577BC() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_2E90(a3, &qword_71820, &qword_59550);

    return v23;
  }

LABEL_8:
  sub_2E90(a3, &qword_71820, &qword_59550);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_4CBD8()
{
  v10[3] = &type metadata for ContentControllerProvider;
  v10[4] = &off_6E880;
  v0 = type metadata accessor for ContentContainer();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_4CFE0(v10, &type metadata for ContentControllerProvider);
  v8 = &type metadata for ContentControllerProvider;
  v9 = &off_6E880;
  *(v3 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 72) = 0;
  v4 = OBJC_IVAR____TtC13AskToMessages16ContentContainer_currentContentModel;
  v5 = type metadata accessor for ContentModel();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  sub_2A3C8(&v7, v3 + 16);
  sub_13040(v10);
  return v3;
}

void sub_4CCB4(uint64_t a1, uint64_t a2)
{
  if (qword_715D0 != -1)
  {
    swift_once();
  }

  v3 = sub_562FC();
  sub_B144(v3, qword_757A0);

  v4 = sub_562DC();
  v5 = sub_5794C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = sub_26278();
    v9 = sub_293C0(v7, v8, &v12);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_293C0(0xD00000000000001ELL, 0x800000000005CF40, &v12);
    _os_log_impl(&dword_0, v4, v5, "%s: %s called", v6, 0x16u);
    swift_arrayDestroy();
  }

  *(a2 + 64) = &off_6F6A0;
  swift_unknownObjectWeakAssign();
  v10 = *(a2 + 72);
  if (v10)
  {
    v11 = v10;
    sub_26354(v11);
  }
}

uint64_t sub_4CEB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_2AFC(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_4CF18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_4CF80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_4CFE0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_4D030()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_4D088()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_BBC4;

  return sub_4B80C(v2, v3, v4, v5, v6);
}

uint64_t sub_4D154()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22334;

  return sub_4C70C(v2, v3, v5);
}

uint64_t sub_4D214()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_4D254(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22334;

  return sub_4C7F4(a1, v4, v5, v7);
}

uint64_t sub_4D320()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_4D358(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_22334;

  return sub_32BC4(a1, v5);
}

uint64_t sub_4D410(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_BBC4;

  return sub_32BC4(a1, v5);
}

void sub_4D4C8(void *a1)
{
  if (qword_715A8 != -1)
  {
    swift_once();
  }

  v3 = sub_562FC();
  sub_B144(v3, qword_75728);
  v4 = v1;
  v5 = sub_562DC();
  v6 = sub_5791C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = 0xE90000000000003ELL;
    v8 = 0x6E776F6E6B6E753CLL;
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = [v4 activeConversation];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 selectedMessage];

      if (v12)
      {
        v13 = [v12 guid];

        if (v13)
        {
          v8 = sub_5778C();
          v7 = v14;
        }
      }
    }

    v15 = sub_293C0(v8, v7, &v16);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_293C0(0xD00000000000001BLL, 0x800000000005D040, &v16);
    _os_log_impl(&dword_0, v5, v6, "%s: %s called", v9, 0x16u);
    swift_arrayDestroy();
  }

  sub_45A20(a1);
}

uint64_t sub_4D700(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_560CC();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_578AC();
  v1[6] = sub_5789C();
  v6 = sub_5788C();

  return _swift_task_switch(sub_4D7F4, v6, v5);
}

uint64_t sub_4D7F4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);

  v3 = [v2 session];
  if (v3)
  {
    if (qword_71618 != -1)
    {
      v18 = v3;
      swift_once();
      v3 = v18;
    }

    v4 = v3;
    v5 = v3;
    v6 = sub_45B3C(v4);

    if (v6)
    {
      v7 = [v6 URL];
      if (v7)
      {
        v9 = *(v0 + 32);
        v8 = *(v0 + 40);
        v10 = *(v0 + 24);
        v11 = v7;
        sub_560AC();

        sub_5609C(v12);
        v14 = v13;
        (*(v9 + 8))(v8, v10);
      }

      else
      {
        v14 = 0;
      }

      [*(v0 + 16) setURL:v14];
    }
  }

  if (qword_71618 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 40);
  sub_4A890(*(v0 + 16));

  v16 = *(v0 + 8);

  return v16(1, 0, 0);
}

uint64_t sub_4D9C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4DA08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_4DA28(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_4DA3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_4DA84(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_4DAFC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = sub_2AFC(qword_71950, qword_58E10);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v76 = &v60 - v5;
  v86 = sub_5605C();
  v88 = *(v86 - 8);
  v6 = v88[8];
  __chkstk_darwin(v86);
  v84 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_561CC();
  v8 = *(v85 - 8);
  v9 = v8[8];
  __chkstk_darwin(v85);
  v82 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v83 = &v60 - v12;
  v87 = sub_5773C();
  v13 = *(v87 - 8);
  v14 = v13[8];
  __chkstk_darwin(v87);
  v80 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v79 = &v60 - v17;
  __chkstk_darwin(v18);
  v20 = &v60 - v19;
  v72 = sub_5606C();
  v71 = *(v72 - 8);
  v21 = *(v71 + 64);
  __chkstk_darwin(v72);
  v81 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_2AFC(&qword_73478, &qword_5AF48);
  v23 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v74 = &v60 - v24;
  v77 = a1;
  v69 = sub_4E43C(a1);
  sub_576DC();
  v68 = sub_B038();
  v25 = sub_5796C();
  if (!v25)
  {
    v25 = [objc_opt_self() mainBundle];
  }

  v26 = v25;
  v27 = v83;
  sub_561BC();
  v28 = v13[2];
  v67 = v13 + 2;
  v66 = v28;
  v28(v79, v20, v87);
  v29 = v8[2];
  v70 = v20;
  v30 = v85;
  v65 = v29;
  v29(v82, v27, v85);
  v31 = [v26 bundleURL];
  v32 = v84;
  sub_560AC();

  v33 = v88[13];
  v64 = enum case for LocalizedStringResource.BundleDescription.atURL(_:);
  v88 += 13;
  v63 = v33;
  v33(v32);
  sub_5607C();

  v34 = v8[1];
  v73 = v8 + 1;
  v62 = v34;
  v34(v27, v30);
  v35 = v13[1];
  v36 = v70;
  v70 = v13 + 1;
  v61 = v35;
  v35(v36, v87);
  sub_576DC();
  v37 = sub_5796C();
  if (!v37)
  {
    v37 = [objc_opt_self() mainBundle];
  }

  v38 = v37;
  v39 = v83;
  sub_561BC();
  v40 = v80;
  v41 = v87;
  v66(v79, v80, v87);
  v42 = v85;
  v65(v82, v39, v85);
  v43 = [v38 bundleURL];
  v44 = v84;
  sub_560AC();

  v63(v44, v64, v86);
  v45 = v76;
  sub_5607C();

  v62(v39, v42);
  v61(v40, v41);
  v46 = v71;
  v47 = v72;
  (*(v71 + 56))(v45, 0, 1, v72);
  v48 = v77;
  v92 = *v77;
  v49 = *(v77 + 2);
  v90 = *(v77 + 3);
  v91 = v49;
  v50 = *(v77 + 5);
  v51 = swift_allocObject();
  v52 = v48[1];
  *(v51 + 1) = *v48;
  *(v51 + 2) = v52;
  *(v51 + 3) = v48[2];
  v53 = v74;
  (*(v46 + 32))(v74, v81, v47);
  v54 = v75;
  v55 = sub_B0DC(v45, v53 + *(v75 + 36), qword_71950, qword_58E10);
  v88 = &v60;
  *(v53 + v54[10]) = 0;
  *(v53 + v54[11]) = v69;
  v56 = (v53 + v54[12]);
  *v56 = sub_4F568;
  v56[1] = v51;
  __chkstk_darwin(v55);
  *(&v60 - 2) = v48;
  sub_2E28(&v92, v89, &qword_72A08, &qword_5A398);
  sub_2E28(&v91, v89, &qword_72D70, &qword_5AF60);
  sub_2E28(&v90, v89, &qword_734A0, &qword_5AF68);

  sub_2AFC(&qword_73480, &qword_5AF50);
  sub_3260(&qword_73488, &qword_73478, &qword_5AF48);
  v57 = sub_2C70(&qword_73490, &qword_5AF58);
  v58 = sub_3260(&qword_73498, &qword_73490, &qword_5AF58);
  v89[0] = v57;
  v89[1] = v58;
  swift_getOpaqueTypeConformance2();
  sub_56F2C();
  return sub_2E90(v53, &qword_73478, &qword_5AF48);
}