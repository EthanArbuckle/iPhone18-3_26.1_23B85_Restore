uint64_t sub_100001998()
{
  v0 = sub_100008FC0();
  sub_100002DA0(v0, qword_100010C08);
  sub_100002D68(v0, qword_100010C08);
  return sub_100008FB0();
}

uint64_t sub_100001A14@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  v2 = *(type metadata accessor for TVAppExtensionView() + 20);
  v3 = type metadata accessor for TVAppExtensionDocumentView(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_100001AA0()
{
  v0 = sub_100002CD8(&qword_100010890, &qword_1000099E0);
  v1 = sub_100003214(&qword_100010898, &qword_100010890, &qword_1000099E0);

  return AppExtensionSceneConfiguration.init<A>(_:)(sub_100002CD4, 0, v0, v1);
}

uint64_t sub_100001B48@<X0>(char *a1@<X8>)
{
  v3 = sub_100002CD8(&qword_100010970, &qword_100009AF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  v7 = sub_100002CD8(&qword_100010978, &qword_100009AF8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  sub_100002A2C(*v1, *(v1 + 8));
  type metadata accessor for TVAppExtensionService();
  sub_100003390(&qword_100010980, type metadata accessor for TVAppExtensionService);
  sub_100009140();
  sub_100009130();
  v12 = v17;
  sub_100009130();
  v13 = v17;
  swift_getKeyPath();
  v17 = v13;
  sub_100008F00();

  v14 = OBJC_IVAR____TtC14TVAppExtension21TVAppExtensionService__url;
  swift_beginAccess();
  sub_100003280(v13 + v14, v6);

  sub_100005B24(v12, v6, a1);
  return (*(v8 + 8))(v11, v7);
}

void *sub_100001D9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[2] = 0x746C7561666564;
  v2[3] = 0xE700000000000000;
  if (qword_1000107C0 != -1)
  {
    swift_once();
  }

  v6 = sub_100008FC0();
  sub_100002D68(v6, qword_100010C08);
  v7 = sub_100008FA0();
  v8 = sub_100009240();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Initializing TV extension", v9, 2u);
  }

  v3[4] = [objc_allocWithZone(type metadata accessor for TVAppExtensionService()) init];
  v3[5] = a1;
  v3[6] = a2;
  return v3;
}

uint64_t sub_100001EC4()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(*v0 + 80);
  swift_retain_n();

  sub_100002D20(&qword_1000108A8, &unk_100009A10);
  sub_100008FE0();
  sub_100008FE0();
  v6 = *(v1 + 88);
  sub_100003214(&qword_1000108B0, &qword_1000108A8, &unk_100009A10);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_100008F30();
}

uint64_t sub_10000204C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = *a1;
  v4 = *(*a1 + 80);
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(a1);
  v7 = &v30 - v6;
  sub_100002D20(&qword_1000108A8, &unk_100009A10);
  v8 = sub_100008FE0();
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v12 = sub_100008FE0();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v32 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v34 = &v30 - v18;
  v19 = a1[6];
  (a1[5])(v17);
  swift_getKeyPath();
  v41 = a1[4];
  v20 = *(v3 + 88);
  v21 = v41;
  v33 = v11;
  sub_100009100();

  (*(v31 + 8))(v7, v4);
  LOBYTE(v4) = sub_1000090C0();
  sub_1000090D0();
  sub_1000090D0();
  if (sub_1000090D0() != v4)
  {
    sub_1000090D0();
  }

  v22 = sub_100003214(&qword_1000108B0, &qword_1000108A8, &unk_100009A10);
  v39 = v20;
  v40 = v22;
  WitnessTable = swift_getWitnessTable();
  v24 = v32;
  v25 = v33;
  sub_100009120();
  (*(v35 + 8))(v25, v8);
  v37 = WitnessTable;
  v38 = &protocol witness table for _SafeAreaIgnoringLayout;
  swift_getWitnessTable();
  v26 = v13[2];
  v27 = v34;
  v26(v34, v24, v12);
  v28 = v13[1];
  v28(v24, v12);
  v26(v36, v27, v12);
  return (v28)(v27, v12);
}

uint64_t sub_100002430()
{
  sub_100002E50();
  sub_100009010();
  return v1;
}

uint64_t sub_10000246C@<X0>(void *a1@<X8>)
{
  sub_100002E50();
  result = sub_100009010();
  *a1 = v3;
  return result;
}

uint64_t sub_1000024BC(void **a1)
{
  v1 = *a1;
  sub_100002E50();
  v2 = v1;
  return sub_100009020();
}

uint64_t sub_100002518(void *a1, uint64_t a2)
{
  if (qword_1000107C0 != -1)
  {
    swift_once();
  }

  v4 = sub_100008FC0();
  sub_100002D68(v4, qword_100010C08);
  v5 = sub_100008FA0();
  v6 = sub_100009240();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "calling service.shouldAccept", v7, 2u);
  }

  v8 = *(a2 + 32);
  v9 = sub_1000078B4(a1);

  return v9 & 1;
}

uint64_t sub_100002620()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return v0;
}

uint64_t sub_100002650()
{
  sub_100002620();

  return _swift_deallocClassInstance(v0, 56, 7);
}

id sub_1000026AC()
{
  result = [objc_allocWithZone(type metadata accessor for TVAppExtensionService()) init];
  qword_100010C20 = result;
  return result;
}

id sub_1000026E0@<X0>(void *a1@<X8>)
{
  if (qword_1000107C8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_100010C20;
  *a1 = qword_100010C20;

  return v2;
}

uint64_t sub_100002750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100003390(&qword_100010968, type metadata accessor for TVAppExtensionService);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100002840();
  sub_100008F60();
  return 0;
}

unint64_t sub_100002840()
{
  result = qword_1000107D8[0];
  if (!qword_1000107D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1000107D8);
  }

  return result;
}

unint64_t sub_10000293C(uint64_t a1)
{
  result = sub_100002840();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000029A8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t *sub_100002A2C(void *a1, char a2)
{
  v14 = a1;
  v3 = sub_100009000();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = v14;

    return v8;
  }

  else
  {

    v10 = sub_100009260();
    v11 = sub_1000090B0();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_100006A0C(0xD000000000000015, 0x800000010000A680, &v15);
      _os_log_impl(&_mh_execute_header, v11, v10, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v12, 0xCu);
      sub_1000032FC(v13);
    }

    sub_100008FF0();
    swift_getAtKeyPath();
    sub_1000032F0(v14, 0);
    (*(v4 + 8))(v7, v3);
    return v15;
  }
}

uint64_t sub_100002C24(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void *sub_100002C70@<X0>(void *a1@<X8>)
{
  sub_100002CD8(&qword_100010890, &qword_1000099E0);
  swift_allocObject();
  result = sub_100001D9C(sub_100001A14, 0);
  *a1 = result;
  return result;
}

uint64_t sub_100002CD8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002D20(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002D68(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100002DA0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t type metadata accessor for TVAppExtensionView()
{
  result = qword_100010918;
  if (!qword_100010918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100002E50()
{
  result = qword_1000108A0;
  if (!qword_1000108A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000108A0);
  }

  return result;
}

uint64_t sub_100002F08(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002CD8(&qword_1000108B8, &unk_100009A40);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100002FD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_100002CD8(&qword_1000108B8, &unk_100009A40);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10000307C()
{
  sub_100003160(319, &qword_100010928, type metadata accessor for TVAppExtensionService, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100003160(319, &unk_100010930, type metadata accessor for TVAppExtensionDocumentView, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100003160(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100003214(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002D20(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003280(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002CD8(&qword_100010970, &qword_100009AF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000032F0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1000032FC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003390(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1000033D8(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100002CD8(&qword_100010A00, &unk_100009BC8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - v8;
  v10 = sub_100008F90();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v3[OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_lookupRequest];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v3[OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_tvExtensionControllerTask] = 0;
  v16 = OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_url;
  v17 = sub_100008EC0();
  (*(*(v17 - 8) + 56))(&v3[v16], 1, 1, v17);
  *&v3[OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_child] = 0;
  *&v3[OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_service] = a1;
  swift_beginAccess();
  v18 = a1;
  sub_100005540(a2, &v3[v16]);
  swift_endAccess();
  sub_100009170();
  sub_100009160();
  sub_100009270();
  v19 = VUISignpostLogObject();
  sub_100008F80();
  sub_100008F70();

  (*(v11 + 8))(v14, v10);
  v20 = type metadata accessor for TVAppExtensionDocumentViewController();
  v30.receiver = v3;
  v30.super_class = v20;
  v21 = objc_msgSendSuper2(&v30, "initWithNibName:bundle:", 0, 0);
  v22 = sub_100009220();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  sub_100009200();
  v23 = v21;
  v24 = sub_1000091F0();
  v25 = swift_allocObject();
  v25[2] = v24;
  v25[3] = &protocol witness table for MainActor;
  v25[4] = v23;
  v26 = sub_100003B38(0, 0, v9, &unk_100009BE0, v25);

  sub_1000056A4(a2, &qword_100010970, &qword_100009AF0);
  v27 = *&v23[OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_tvExtensionControllerTask];
  *&v23[OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_tvExtensionControllerTask] = v26;

  return v23;
}

uint64_t sub_100003720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v5 = *(*(sub_100002CD8(&qword_100010970, &qword_100009AF0) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  sub_100009200();
  v4[8] = sub_1000091F0();
  v7 = sub_1000091E0();
  v4[9] = v7;
  v4[10] = v6;

  return _swift_task_switch(sub_1000037F0, v7, v6);
}

uint64_t sub_1000037F0()
{
  v1 = v0[6];
  v2 = v0[7];
  sub_100009170();
  v3 = OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_url;
  swift_beginAccess();
  sub_100005704(v1 + v3, v2, &qword_100010970, &qword_100009AF0);
  v4 = async function pointer to static TVExtensionController.createTVExtensionController(delegate:url:)[1];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_1000038E4;
  v6 = v0[7];

  return static TVExtensionController.createTVExtensionController(delegate:url:)(v1, &off_10000C9A8, v6);
}

uint64_t sub_1000038E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  v4[12] = v1;

  v7 = v4[7];
  if (v1)
  {
    sub_1000056A4(v7, &qword_100010970, &qword_100009AF0);
    v8 = v4[9];
    v9 = v4[10];
    v10 = sub_100003ACC;
  }

  else
  {
    v4[13] = a1;
    sub_1000056A4(v7, &qword_100010970, &qword_100009AF0);
    v8 = v4[9];
    v9 = v4[10];
    v10 = sub_100003A4C;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_100003A4C()
{
  v1 = v0[13];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];

  *v4 = v1;

  v5 = v0[1];

  return v5();
}

uint64_t sub_100003ACC()
{
  v2 = v0[7];
  v1 = v0[8];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_100003B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100002CD8(&qword_100010A00, &unk_100009BC8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100005704(a3, v24 - v10, &qword_100010A00, &unk_100009BC8);
  v12 = sub_100009220();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000056A4(v11, &qword_100010A00, &unk_100009BC8);
  }

  else
  {
    sub_100009210();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1000091E0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_1000091C0() + 32;
      sub_100009170();

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000056A4(a3, &qword_100010A00, &unk_100009BC8);

      return v22;
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

  sub_1000056A4(a3, &qword_100010A00, &unk_100009BC8);
  sub_100009170();
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100003DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100002CD8(&qword_100010A00, &unk_100009BC8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100005704(a3, v24 - v10, &qword_100010A00, &unk_100009BC8);
  v12 = sub_100009220();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000056A4(v11, &qword_100010A00, &unk_100009BC8);
  }

  else
  {
    sub_100009210();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1000091E0();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1000091C0() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1000056A4(a3, &qword_100010A00, &unk_100009BC8);

      return v22;
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

  sub_1000056A4(a3, &qword_100010A00, &unk_100009BC8);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void sub_100004170()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for TVAppExtensionDocumentViewController();
  objc_msgSendSuper2(&v14, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_child];
  if (v1)
  {
    v2 = [v1 view];
    if (v2)
    {
      v3 = v2;
      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        [v3 setFrame:{v7, v9, v11, v13}];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1000042A4(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_child;
  v5 = *&v1[OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_child];
  if (v5)
  {
    if (!a1)
    {
      goto LABEL_8;
    }

    sub_100005A94();
    v6 = v5;
    v3 = v3;
    v7 = sub_100009280();

    if (v7)
    {
      return;
    }
  }

  else if (!a1)
  {
    return;
  }

  v8 = v3;
  [v8 willMoveToParentViewController:0];
  v9 = [v8 view];
  if (!v9)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 removeFromSuperview];

  [v8 removeFromParentViewController];
  [v8 didMoveToParentViewController:0];

  v5 = *&v2[v4];
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_8:
  v11 = v5;
  [v11 willMoveToParentViewController:v2];
  [v2 addChildViewController:v11];
  v12 = [v2 view];
  if (!v12)
  {
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [v11 view];
  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14;
  [v13 addSubview:v14];

  [v11 didMoveToParentViewController:v2];
LABEL_11:
  v16 = [objc_opt_self() sharedInstance];
  v17 = *&v2[v4];
  if (v17 && (objc_opt_self(), (v18 = swift_dynamicCastObjCClass()) != 0))
  {
    v21 = v18;
    v19 = v17;
    v20 = v21;
  }

  else
  {
    v20 = 0;
  }

  v22 = v20;
  [v16 setCurrentNavigationController:?];
}

uint64_t sub_1000044F0(uint64_t a1)
{
  v29 = a1;
  v2 = sub_100008EC0();
  v3 = *(v2 - 8);
  v31 = *(v3 + 64);
  __chkstk_darwin(v2);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002CD8(&qword_100010A00, &unk_100009BC8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v29 - v7;
  v9 = sub_100002CD8(&qword_100010970, &qword_100009AF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v29 - v11;
  v13 = sub_100008F90();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009270();
  v18 = VUISignpostLogObject();
  sub_100008F80();
  sub_100008F70();

  (*(v14 + 8))(v17, v13);
  v19 = *(v3 + 16);
  v20 = v29;
  v19(v12, v29, v2);
  (*(v3 + 56))(v12, 0, 1, v2);
  v21 = OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_url;
  swift_beginAccess();
  sub_10000576C(v12, v1 + v21);
  swift_endAccess();
  v22 = sub_100009220();
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  v23 = v30;
  v19(v30, v20, v2);
  sub_100009200();
  v24 = v1;
  v25 = sub_1000091F0();
  v26 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = v25;
  *(v27 + 3) = &protocol witness table for MainActor;
  *(v27 + 4) = v24;
  (*(v3 + 32))(&v27[v26], v23, v2);
  sub_100003DF0(0, 0, v8, &unk_100009BF0, v27);
}

uint64_t sub_1000048A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = sub_100009200();
  v5[6] = sub_1000091F0();
  v7 = sub_1000091E0();
  v5[7] = v7;
  v5[8] = v6;

  return _swift_task_switch(sub_10000493C, v7, v6);
}

uint64_t sub_10000493C()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_tvExtensionControllerTask);
  v0[9] = v1;
  if (v1)
  {
    v2 = async function pointer to Task.value.getter[1];

    v3 = swift_task_alloc();
    v0[10] = v3;
    v4 = sub_100009170();
    v5 = sub_100002CD8(&qword_100010A08, qword_100009BF8);
    *v3 = v0;
    v3[1] = sub_100004B28;

    return Task.value.getter(v0 + 2, v1, v4, v5, &protocol self-conformance witness table for Error);
  }

  else
  {
    v6 = v0[6];

    if (qword_1000107C0 != -1)
    {
      swift_once();
    }

    v7 = sub_100008FC0();
    sub_100002D68(v7, qword_100010C08);
    v8 = sub_100008FA0();
    v9 = sub_100009250();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "No extension controller", v10, 2u);
    }

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_100004B28()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 88) = v0;

  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_100005048;
  }

  else
  {
    v8 = sub_100004C80;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100004C80()
{
  v1 = v0[2];
  v0[12] = v1;
  v2 = *(*v1 + 256);
  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_100004DA8;
  v5 = v0[4];

  return v7(v5);
}

uint64_t sub_100004DA8(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_100004EA8, 0, 0);
}

uint64_t sub_100004EA8()
{
  v1 = *(v0 + 40);
  *(v0 + 120) = sub_1000091F0();
  v3 = sub_1000091E0();

  return _swift_task_switch(sub_100004F34, v3, v2);
}

uint64_t sub_100004F34()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[3];

  v4 = *(v3 + OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_child);
  *(v3 + OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_child) = v2;
  v5 = v2;
  sub_1000042A4(v4);

  v6 = v0[7];
  v7 = v0[8];

  return _swift_task_switch(sub_100004FD0, v6, v7);
}

uint64_t sub_100004FD0()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100005048()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

id sub_1000050DC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVAppExtensionDocumentViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TVAppExtensionDocumentViewController()
{
  result = qword_1000109E0;
  if (!qword_1000109E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000051F8()
{
  sub_1000052AC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000052AC()
{
  if (!qword_1000109F0)
  {
    sub_100008EC0();
    v0 = sub_100009290();
    if (!v1)
    {
      atomic_store(v0, &qword_1000109F0);
    }
  }
}

void sub_100005304()
{
  v1 = *(v0 + OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_service);
  v2 = *&v1[OBJC_IVAR____TtC14TVAppExtension21TVAppExtensionService_xpcConnection];
  if (v2)
  {
    v3 = v1;
    v4 = [v2 remoteObjectProxy];
    sub_1000092A0();
    swift_unknownObjectRelease();
    sub_100002CD8(&qword_1000109F8, &qword_100009BC0);
    if (swift_dynamicCast())
    {
      v5 = sub_100008E90();
      [v6 reportWithError:v5];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1000053F0()
{
  v0 = sub_100008E80();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultCenter];
  memset(v8, 0, sizeof(v8));
  v6 = VUITVAppExtensionDidFinishLoadingNotification;
  sub_100008E60();
  isa = sub_100008E40().super.isa;
  (*(v1 + 8))(v4, v0);
  [v5 postNotification:isa];
}

double sub_100005524@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_100009B30;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t sub_100005540(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002CD8(&qword_100010970, &qword_100009AF0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000055B0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000055F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005B20;

  return sub_100003720(a1, v4, v5, v6);
}

uint64_t sub_1000056A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002CD8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100005704(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002CD8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000576C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002CD8(&qword_100010970, &qword_100009AF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000057DC()
{
  v1 = sub_100008EC0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000058A8(uint64_t a1)
{
  v4 = *(sub_100008EC0() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000059A0;

  return sub_1000048A0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1000059A0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_100005A94()
{
  result = qword_100010A10;
  if (!qword_100010A10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100010A10);
  }

  return result;
}

void *sub_100005AE0(void *result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100005B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(*(sub_100002CD8(&qword_100010970, &qword_100009AF0) - 8) + 64);
  v7 = (__chkstk_darwin)();
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = *(type metadata accessor for TVAppExtensionDocumentView(0) + 20);
  v13 = sub_100008EC0();
  (*(*(v13 - 8) + 56))(&a3[v12], 1, 1, v13);
  if (qword_1000107C0 != -1)
  {
    swift_once();
  }

  v14 = sub_100008FC0();
  sub_100002D68(v14, qword_100010C08);
  sub_100003280(a2, v11);
  v15 = sub_100008FA0();
  v16 = sub_100009240();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    sub_100003280(v11, v9);
    v20 = sub_1000091B0();
    v22 = v21;
    sub_100006920(v11);
    v23 = sub_100006A0C(v20, v22, &v26);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Initializing TVAppExtensionDocumentView with url: %s", v18, 0xCu);
    sub_1000032FC(v19);

    a1 = v25;
  }

  else
  {

    sub_100006920(v11);
  }

  *a3 = a1;
  return sub_10000576C(a2, &a3[v12]);
}

void sub_100005D9C(uint64_t a1)
{
  v33 = a1;
  v2 = sub_100002CD8(&qword_100010970, &qword_100009AF0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v31 - v4;
  v6 = sub_100008EC0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  if (qword_1000107C0 != -1)
  {
    swift_once();
  }

  v14 = sub_100008FC0();
  sub_100002D68(v14, qword_100010C08);
  v15 = sub_100008FA0();
  v16 = sub_100009240();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "Begin TVAppExtensionDocumentView updateUIViewController", v17, 2u);
  }

  v18 = type metadata accessor for TVAppExtensionDocumentView(0);
  sub_100003280(v1 + *(v18 + 20), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_100006920(v5);
    v19 = sub_100008FA0();
    v20 = sub_100009240();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "No URL to load", v21, 2u);
    }
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 16))(v11, v13, v6);
    v22 = sub_100008FA0();
    v23 = sub_100009240();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v31 = v24;
      v32 = swift_slowAlloc();
      v34 = v32;
      *v24 = 136315138;
      v25 = sub_100008EA0();
      v27 = v26;
      v28 = *(v7 + 8);
      v28(v11, v6);
      v29 = sub_100006A0C(v25, v27, &v34);

      v30 = v31;
      *(v31 + 1) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Loading URL: %s", v30, 0xCu);
      sub_1000032FC(v32);
    }

    else
    {

      v28 = *(v7 + 8);
      v28(v11, v6);
    }

    sub_1000044F0(v13);
    v28(v13, v6);
  }
}

uint64_t sub_1000061B4()
{
  sub_100007068(v0 + OBJC_IVAR____TtCV14TVAppExtension26TVAppExtensionDocumentView11Coordinator_parent);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t sub_100006240()
{
  result = type metadata accessor for TVAppExtensionDocumentView(319);
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

uint64_t sub_1000062F0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000633C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002CD8(&qword_100010970, &qword_100009AF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10000640C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100002CD8(&qword_100010970, &qword_100009AF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000064BC()
{
  type metadata accessor for TVAppExtensionService();
  if (v0 <= 0x3F)
  {
    sub_1000052AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

char *sub_10000654C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002CD8(&qword_100010970, &qword_100009AF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v11 - v6;
  v8 = *v2;
  sub_100003280(v2 + *(a2 + 20), &v11 - v6);
  v9 = objc_allocWithZone(type metadata accessor for TVAppExtensionDocumentViewController());
  return sub_1000033D8(v8, v7);
}

uint64_t sub_100006600@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(*(a1 - 8) + 64);
  __chkstk_darwin(a1 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006858(v2, v6);
  v7 = type metadata accessor for TVAppExtensionDocumentView.Coordinator(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  result = sub_1000068BC(v6, v10 + OBJC_IVAR____TtCV14TVAppExtension26TVAppExtensionDocumentView11Coordinator_parent);
  *a2 = v10;
  return result;
}

uint64_t sub_1000066E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007024(&qword_100010B78);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100006760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007024(&qword_100010B78);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000067E0()
{
  sub_100007024(&qword_100010B78);
  sub_100009090();
  __break(1u);
}

uint64_t sub_100006858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVAppExtensionDocumentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000068BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVAppExtensionDocumentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006920(uint64_t a1)
{
  v2 = sub_100002CD8(&qword_100010970, &qword_100009AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000069B0(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_100006A0C(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_100006A0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100006AD8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100006FC4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000032FC(v11);
  return v7;
}

unint64_t sub_100006AD8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_100006BE4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_100009300();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_100006BE4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100006C30(a1, a2);
  sub_100006D60(&off_10000C878);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100006C30(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100006E4C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100009300();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000091D0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100006E4C(v10, 0);
        result = sub_1000092E0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100006D60(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100006EC0(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100006E4C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100002CD8(&qword_100010B70, qword_100009D28);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100006EC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002CD8(&qword_100010B70, qword_100009D28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_100006FB4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_100006FC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007024(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TVAppExtensionDocumentView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007068(uint64_t a1)
{
  v2 = type metadata accessor for TVAppExtensionDocumentView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000070C4()
{
  v0 = sub_100008FC0();
  sub_100002DA0(v0, qword_100010B80);
  sub_100002D68(v0, qword_100010B80);
  return sub_100008FB0();
}

uint64_t sub_100007140@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_100008DF8(&qword_100010980, type metadata accessor for TVAppExtensionService);
  sub_100008F00();

  v3 = OBJC_IVAR____TtC14TVAppExtension21TVAppExtensionService__url;
  swift_beginAccess();
  return sub_100003280(v5 + v3, a1);
}

uint64_t sub_100007208@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100008DF8(&qword_100010980, type metadata accessor for TVAppExtensionService);
  sub_100008F00();

  v4 = OBJC_IVAR____TtC14TVAppExtension21TVAppExtensionService__url;
  swift_beginAccess();
  return sub_100003280(v3 + v4, a2);
}

uint64_t sub_1000072D0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100002CD8(&qword_100010970, &qword_100009AF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_100003280(a1, &v10 - v6);
  v8 = *a2;
  return sub_100007364(v7);
}

uint64_t sub_100007364(uint64_t a1)
{
  v3 = sub_100002CD8(&qword_100010970, &qword_100009AF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v11 - v5;
  v7 = OBJC_IVAR____TtC14TVAppExtension21TVAppExtensionService__url;
  swift_beginAccess();
  sub_100003280(v1 + v7, v6);
  v8 = sub_100008AE4(v6, a1);
  sub_1000056A4(v6, &qword_100010970, &qword_100009AF0);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v11[-2] = v1;
    v11[-1] = a1;
    v11[2] = v1;
    sub_100008DF8(&qword_100010980, type metadata accessor for TVAppExtensionService);
    sub_100008EF0();
  }

  else
  {
    sub_100003280(a1, v6);
    swift_beginAccess();
    sub_10000576C(v6, v1 + v7);
    swift_endAccess();
  }

  return sub_1000056A4(a1, &qword_100010970, &qword_100009AF0);
}

uint64_t sub_100007554(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002CD8(&qword_100010970, &qword_100009AF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_100003280(a2, &v10 - v6);
  v8 = OBJC_IVAR____TtC14TVAppExtension21TVAppExtensionService__url;
  swift_beginAccess();
  sub_10000576C(v7, a1 + v8);
  return swift_endAccess();
}

id sub_100007618()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC14TVAppExtension21TVAppExtensionService_xpcConnection] = 0;
  v2 = OBJC_IVAR____TtC14TVAppExtension21TVAppExtensionService__url;
  v3 = sub_100008EC0();
  v4 = *(*(v3 - 8) + 56);
  v4(&v1[v2], 1, 1, v3);
  v4(&v1[v2], 1, 1, v3);
  sub_100008F10();
  if (qword_1000107D0 != -1)
  {
    swift_once();
  }

  v5 = sub_100008FC0();
  sub_100002D68(v5, qword_100010B80);
  v6 = sub_100008FA0();
  v7 = sub_100009240();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Initializing TVAppExtensionService", v8, 2u);
  }

  v16.receiver = v1;
  v16.super_class = type metadata accessor for TVAppExtensionService();
  v9 = objc_msgSendSuper2(&v16, "init");
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 defaultCenter];
  [v12 addObserver:v11 selector:"dismiss" name:VUITVAppExtensionDidDismissNotification object:0];

  v13 = [v10 defaultCenter];
  [v13 addObserver:v11 selector:"finishLoading" name:VUITVAppExtensionDidFinishLoadingNotification object:0];

  v14 = [v10 defaultCenter];
  [v14 addObserver:v11 selector:"playTrailer:" name:VUITVAppExtensionDidPlayTrailerNotification object:0];

  return v11;
}

uint64_t sub_1000078B4(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_1000107D0 != -1)
  {
    swift_once();
  }

  v4 = sub_100008FC0();
  sub_100002D68(v4, qword_100010B80);
  v5 = sub_100008FA0();
  v6 = sub_100009240();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Entering service.shouldAccept", v7, 2u);
  }

  [a1 setExportedObject:v2];
  v8 = sub_100009180();
  [a1 setExportedInterface:v8];

  v9 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP8VideosUI29TVAppExtensionHostXPCProtocol_];
  [a1 setRemoteObjectInterface:v9];

  [a1 resume];
  v10 = *(v2 + OBJC_IVAR____TtC14TVAppExtension21TVAppExtensionService_xpcConnection);
  *(v2 + OBJC_IVAR____TtC14TVAppExtension21TVAppExtensionService_xpcConnection) = a1;
  v11 = a1;

  v12 = sub_100008FA0();
  v13 = sub_100009240();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Exiting service.shouldAccept", v14, 2u);
  }

  return 1;
}

void sub_100007AD4(void *a1)
{
  v2 = v1;
  v4 = sub_100002CD8(&qword_100010970, &qword_100009AF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31 - v6;
  v8 = sub_100008EC0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000107D0 != -1)
  {
    swift_once();
  }

  v13 = sub_100008FC0();
  v14 = sub_100002D68(v13, qword_100010B80);
  v15 = a1;
  v16 = sub_100008FA0();
  v17 = sub_100009240();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = v14;
    v19 = v18;
    v20 = swift_slowAlloc();
    v33 = v2;
    v34 = v20;
    v21 = v20;
    *v19 = 136315138;
    sub_100008EB0();
    v22 = sub_100008EA0();
    v32 = v7;
    v23 = v9;
    v24 = v8;
    v26 = v25;
    (*(v23 + 8))(v12, v24);
    v27 = sub_100006A0C(v22, v26, &v34);
    v8 = v24;
    v9 = v23;
    v7 = v32;

    *(v19 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v16, v17, "Entering service.open with url = %s", v19, 0xCu);
    sub_1000032FC(v21);
  }

  sub_100008EB0();
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_100007364(v7);
  v28 = sub_100008FA0();
  v29 = sub_100009240();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Exiting service.open", v30, 2u);
  }
}

void sub_100007ED8(const char *a1, SEL *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC14TVAppExtension21TVAppExtensionService_xpcConnection);
  if (v4 && (v6 = [v4 remoteObjectProxy], sub_1000092A0(), swift_unknownObjectRelease(), sub_100002CD8(&qword_1000109F8, &qword_100009BC0), (swift_dynamicCast() & 1) != 0))
  {
    if (qword_1000107D0 != -1)
    {
      swift_once();
    }

    v7 = sub_100008FC0();
    sub_100002D68(v7, qword_100010B80);
    v8 = sub_100008FA0();
    v9 = sub_100009240();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, a1, v10, 2u);
    }

    [v15 *a2];
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1000107D0 != -1)
    {
      swift_once();
    }

    v11 = sub_100008FC0();
    sub_100002D68(v11, qword_100010B80);
    v12 = sub_100008FA0();
    v13 = sub_100009240();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "xpcConnection is nil or proxy doesn't conform to TVAppExtensionHostXPCProtocol", v14, 2u);
    }
  }
}

void sub_10000814C()
{
  v2 = v1;
  v3 = sub_100008E70();
  if (!v3)
  {
    goto LABEL_20;
  }

  v4 = v3;
  sub_1000091A0();
  sub_1000092D0();
  if (!*(v4 + 16) || (v5 = sub_1000088D4(v29), (v6 & 1) == 0))
  {

    sub_100008918(v29);
LABEL_20:
    v30 = 0u;
    v31 = 0u;
    goto LABEL_21;
  }

  sub_100006FC4(*(v4 + 56) + 32 * v5, &v30);
  sub_100008918(v29);

  if (!*(&v31 + 1))
  {
LABEL_21:
    sub_1000056A4(&v30, &qword_100010BE8, &qword_100009D90);
    goto LABEL_22;
  }

  sub_100002CD8(&qword_100010BF0, &unk_100009D98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    if (qword_1000107D0 != -1)
    {
      swift_once();
    }

    v22 = sub_100008FC0();
    sub_100002D68(v22, qword_100010B80);
    v0 = sub_100008FA0();
    v23 = sub_100009250();
    if (os_log_type_enabled(v0, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v0, v23, "Notification did not contain playables", v24, 2u);
    }

    goto LABEL_26;
  }

  v7 = v29[0];
  if (!(v29[0] >> 62))
  {
    if (*((v29[0] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_33;
  }

  if (!sub_100009320())
  {
LABEL_33:

    goto LABEL_22;
  }

LABEL_8:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = sub_1000092F0();
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_36;
    }

    v8 = *(v7 + 32);
  }

  v0 = v8;

  v9 = *(v2 + OBJC_IVAR____TtC14TVAppExtension21TVAppExtensionService_xpcConnection);
  if (!v9 || (v10 = [v9 remoteObjectProxy], sub_1000092A0(), swift_unknownObjectRelease(), sub_100002CD8(&qword_1000109F8, &qword_100009BC0), (swift_dynamicCast() & 1) == 0))
  {
LABEL_28:
    if (qword_1000107D0 == -1)
    {
LABEL_29:
      v25 = sub_100008FC0();
      sub_100002D68(v25, qword_100010B80);
      v26 = sub_100008FA0();
      v27 = sub_100009240();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "xpcConnection is nil or proxy doesn't conform to TVAppExtensionHostXPCProtocol", v28, 2u);
      }

LABEL_26:
      return;
    }

LABEL_36:
    swift_once();
    goto LABEL_29;
  }

  v11 = v30;
  v12 = [v0 serializedData];
  if (!v12)
  {
    swift_unknownObjectRelease();
    goto LABEL_28;
  }

  v13 = v12;
  v14 = sub_100008EE0();
  v16 = v15;

  if (qword_1000107D0 != -1)
  {
    swift_once();
  }

  v17 = sub_100008FC0();
  sub_100002D68(v17, qword_100010B80);
  v18 = sub_100008FA0();
  v19 = sub_100009240();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Proxy did play trailer", v20, 2u);
  }

  isa = sub_100008ED0().super.isa;
  [v11 playTrailerWithPlayableData:isa];

  sub_10000896C(v14, v16);
  swift_unknownObjectRelease();
}

id sub_1000086D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVAppExtensionService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TVAppExtensionService()
{
  result = qword_100010BD8;
  if (!qword_100010BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000087FC()
{
  sub_1000052AC();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_100008F20();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1000088D4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000092B0(*(v2 + 40));

  return sub_1000089C0(a1, v4);
}

uint64_t sub_10000896C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1000089C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100008A88(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000092C0();
      sub_100008918(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_100008AE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008EC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002CD8(&qword_100010970, &qword_100009AF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  v13 = sub_100002CD8(&qword_100010BF8, &qword_100009DD0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_100003280(a1, &v24 - v16);
  sub_100003280(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_100003280(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_100008DF8(&qword_100010C00, &type metadata accessor for URL);
      v21 = sub_100009190();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1000056A4(v17, &qword_100010970, &qword_100009AF0);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1000056A4(v17, &qword_100010BF8, &qword_100009DD0);
    v20 = 1;
    return v20 & 1;
  }

  sub_1000056A4(v17, &qword_100010970, &qword_100009AF0);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_100008DF8(unint64_t *a1, void (*a2)(uint64_t))
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