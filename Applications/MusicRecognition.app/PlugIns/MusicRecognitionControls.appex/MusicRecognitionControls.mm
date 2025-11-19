uint64_t sub_100001570()
{
  v0 = sub_100004344();
  sub_1000018D8(v0, qword_10000C380);
  sub_10000193C(v0, qword_10000C380);
  return sub_100004334();
}

uint64_t sub_1000015E4()
{
  v0 = sub_100001790(&qword_10000C118, &unk_1000048C0);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v6 - v3;
  sub_1000017D8();
  sub_1000043F4();
  sub_10000182C();
  sub_1000043C4();
  return (*(v1 + 8))(v4, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001710();
  sub_100004354();
  return 0;
}

unint64_t sub_100001710()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

uint64_t sub_100001790(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000017D8()
{
  result = qword_10000C120;
  if (!qword_10000C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C120);
  }

  return result;
}

unint64_t sub_10000182C()
{
  result = qword_10000C128;
  if (!qword_10000C128)
  {
    sub_100001890(&qword_10000C118, &unk_1000048C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C128);
  }

  return result;
}

uint64_t sub_100001890(uint64_t *a1, uint64_t *a2)
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

uint64_t *sub_1000018D8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000193C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100001974()
{
  sub_100001890(&qword_10000C118, &unk_1000048C0);
  sub_10000182C();
  return swift_getOpaqueTypeConformance2();
}

void sub_1000019D8()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_100004584();
  v2 = [v0 initWithSuiteName:v1];

  qword_10000C130 = v2;
}

unint64_t sub_100001A4C()
{
  result = qword_10000C1E0;
  if (!qword_10000C1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E0);
  }

  return result;
}

unint64_t sub_100001AA4()
{
  result = qword_10000C1E8;
  if (!qword_10000C1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1E8);
  }

  return result;
}

uint64_t sub_100001AF8()
{
  result = sub_1000043A4();
  qword_10000C138 = result;
  unk_10000C140 = v1;
  byte_10000C148 = v2 & 1;
  qword_10000C150 = v3;
  return result;
}

uint64_t sub_100001B40()
{
  result = sub_1000043A4();
  qword_10000C158 = result;
  unk_10000C160 = v1;
  byte_10000C168 = v2 & 1;
  qword_10000C170 = v3;
  return result;
}

uint64_t sub_100001B88()
{
  result = sub_1000043A4();
  qword_10000C178 = result;
  unk_10000C180 = v1;
  byte_10000C188 = v2 & 1;
  qword_10000C190 = v3;
  return result;
}

uint64_t sub_100001BD0()
{
  result = sub_1000043A4();
  qword_10000C198 = result;
  unk_10000C1A0 = v1;
  byte_10000C1A8 = v2 & 1;
  qword_10000C1B0 = v3;
  return result;
}

uint64_t sub_100001C18()
{
  result = sub_1000043A4();
  qword_10000C1B8 = result;
  unk_10000C1C0 = v1;
  byte_10000C1C8 = v2 & 1;
  qword_10000C1D0 = v3;
  return result;
}

UIColor sub_100001C60()
{
  sub_100003F20(0, &qword_10000C2D8, UIColor_ptr);
  result.super.isa = sub_1000045B4(0.0, 0.53333, 1.0, 1.0).super.isa;
  qword_10000C1D8 = result.super.isa;
  return result;
}

uint64_t sub_100001CBC@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_100004314();
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = *(v33 + 64);
  __chkstk_darwin(v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001790(&qword_10000C238, &qword_100004AE8);
  v29 = *(v5 - 8);
  v6 = *(v29 + 64);
  __chkstk_darwin(v5);
  v8 = v28 - v7;
  v9 = sub_100001790(&qword_10000C240, &qword_100004AF0);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v12 = v28 - v11;
  v13 = sub_100001790(&qword_10000C248, &qword_100004AF8);
  v14 = *(v13 - 8);
  v31 = v13;
  v32 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v28 - v16;
  v28[2] = "N_CONTROLS_TITLE";
  v28[1] = sub_100001790(&qword_10000C250, &qword_100004B00);
  v18 = sub_100001890(&qword_10000C258, &qword_100004B08);
  v19 = sub_100001890(&qword_10000C260, &qword_100004B10);
  v20 = sub_100003E84(&qword_10000C268, &qword_10000C260, &qword_100004B10);
  v36 = v19;
  v37 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v18;
  v37 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100004574();
  sub_100004304();
  v22 = sub_100003E84(&qword_10000C270, &qword_10000C238, &qword_100004AE8);
  sub_100004414();
  v23 = v34;
  v24 = *(v33 + 8);
  v24(v4, v34);
  (*(v29 + 8))(v8, v5);
  sub_100004304();
  v36 = v5;
  v37 = v22;
  v25 = swift_getOpaqueTypeConformance2();
  sub_100004404();
  v24(v4, v23);
  (*(v30 + 8))(v12, v9);
  v36 = v9;
  v37 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v31;
  sub_100004424();
  return (*(v32 + 8))(v17, v26);
}

uint64_t sub_10000218C@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = sub_100001790(&qword_10000C260, &qword_100004B10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v24 - v4;
  v6 = sub_100001790(&qword_10000C258, &qword_100004B08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v24 - v9;
  v11 = sub_1000043B4();
  v26 = v12;
  v27 = v11;
  v24[1] = v13;
  v25 = v14;
  if (qword_10000C0B8 != -1)
  {
    swift_once();
  }

  v15 = qword_10000C130;
  if (qword_10000C130)
  {
    v16 = sub_100004584();
    [v15 BOOLForKey:v16];
  }

  v31 = sub_100003930();
  sub_100001790(&qword_10000C278, &qword_100004B18);
  v17 = sub_100001890(&qword_10000C280, &qword_100004B20);
  v18 = sub_100001890(&qword_10000C288, &qword_100004B28);
  v19 = sub_100003CE4();
  v29 = v18;
  v30 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v17;
  v30 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100003ECC();
  sub_100004564();
  if (qword_10000C0E8 != -1)
  {
    swift_once();
  }

  v21 = qword_10000C1D8;
  sub_100004474();
  v22 = sub_100003E84(&qword_10000C268, &qword_10000C260, &qword_100004B10);
  sub_1000043E4();

  (*(v2 + 8))(v5, v1);
  v29 = v1;
  v30 = v22;
  swift_getOpaqueTypeConformance2();
  sub_1000043D4();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10000258C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v51 = a1;
  v57 = a2;
  v53 = sub_100004504();
  v3 = *(v53 - 8);
  v4 = *(v3 + 64);
  (__chkstk_darwin)();
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000044E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = (__chkstk_darwin)();
  v50 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v50 - v13;
  __chkstk_darwin(v12);
  v16 = &v50 - v15;
  v52 = sub_100001790(&qword_10000C288, &qword_100004B28);
  v17 = (*(*(v52 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v52);
  v19 = &v50 - v18;
  v20 = sub_100001790(&qword_10000C280, &qword_100004B20);
  v55 = *(v20 - 8);
  v56 = v20;
  v21 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v20);
  v54 = &v50 - v22;
  v58 = v2;
  sub_100004494();
  sub_1000044D4();
  sub_1000044C4();
  v23 = *(v8 + 8);
  v23(v16, v7);
  sub_1000044B4();
  v23(v14, v7);
  v24 = v6;
  sub_1000044F4();
  v25 = &v19[*(sub_100001790(&qword_10000C2A0, &qword_100004B30) + 36)];
  v26 = sub_100004434();
  v27 = v6;
  v28 = v53;
  (*(v3 + 16))(&v25[*(v26 + 20)], v27, v53);
  sub_100003F70(&qword_10000C2E0, &type metadata accessor for BreatheSymbolEffect);
  v29 = v50;
  sub_1000044A4();
  v30 = v24;
  v31 = v19;
  (*(v3 + 8))(v30, v28);
  v32 = v51;
  v23(v29, v7);
  v33 = v52;
  v25[*(v26 + 24)] = 1;
  v34 = &v19[*(v33 + 36)];
  v35 = v34 + *(sub_100001790(&qword_10000C2C8, &qword_100004B40) + 28);
  sub_100004364();
  *v34 = swift_getKeyPath();
  if (v32)
  {
    if (qword_10000C0C8 != -1)
    {
      swift_once();
    }

    v36 = &qword_10000C158;
  }

  else
  {
    if (qword_10000C0D0 != -1)
    {
      swift_once();
    }

    v36 = &qword_10000C178;
  }

  v37 = v54;
  v38 = *v36;
  v39 = v36[1];
  v40 = *(v36 + 16);
  v41 = v36[3];

  v42 = sub_100003CE4();
  sub_100004464();

  sub_100003FE0(v31);
  if (v32)
  {
    if (qword_10000C0D8 != -1)
    {
      swift_once();
    }

    v43 = &qword_10000C198;
  }

  else
  {
    if (qword_10000C0E0 != -1)
    {
      swift_once();
    }

    v43 = &qword_10000C1B8;
  }

  v44 = *v43;
  v45 = v43[1];
  v46 = *(v43 + 16);
  v47 = v43[3];

  v59 = v33;
  v60 = v42;
  swift_getOpaqueTypeConformance2();
  v48 = v56;
  sub_100004454();

  return (*(v55 + 8))(v37, v48);
}

uint64_t sub_100002B98@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (qword_10000C0C0 != -1)
    {
      swift_once();
    }

    result = sub_100004444();
  }

  else
  {
    result = 0;
    v5 = 0;
    v6 = &_swiftEmptyArrayStorage;
    v4 = 0xE000000000000000;
  }

  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_100002C80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004484();
  *a1 = result;
  return result;
}

uint64_t sub_100002CC8()
{
  v0 = sub_100004314();
  sub_1000018D8(v0, qword_10000C398);
  sub_10000193C(v0, qword_10000C398);
  return sub_100004304();
}

uint64_t sub_100002D2C()
{
  v0 = sub_1000042F4();
  sub_1000018D8(v0, qword_10000C3B0);
  v1 = sub_10000193C(v0, qword_10000C3B0);
  v2 = enum case for IntentAuthenticationPolicy.alwaysAllowed(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100002DB4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100002DD4, 0, 0);
}

uint64_t sub_100002DD4()
{
  v1 = *(v0 + 24);
  sub_1000042B4();
  if (*(v0 + 40) == 1)
  {
    if (qword_10000C0B0 != -1)
    {
      swift_once();
    }

    v2 = sub_100004344();
    sub_10000193C(v2, qword_10000C380);
    v3 = sub_100004324();
    v4 = sub_1000045A4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Start matching", v5, 2u);
    }

    if (qword_10000C108 != -1)
    {
      swift_once();
    }

    v6 = async function pointer to SHManagedSession.result()[1];
    v7 = swift_task_alloc();
    *(v0 + 32) = v7;
    *v7 = v0;
    v7[1] = sub_10000311C;

    return SHManagedSession.result()();
  }

  else
  {
    if (qword_10000C0B0 != -1)
    {
      swift_once();
    }

    v8 = sub_100004344();
    sub_10000193C(v8, qword_10000C380);
    v9 = sub_100004324();
    v10 = sub_1000045A4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Stop matching", v11, 2u);
    }

    if (qword_10000C108 != -1)
    {
      swift_once();
    }

    sub_100004524();
    sub_100003F20(0, &qword_10000C230, NSDistributedNotificationCenter_ptr);
    v12 = [swift_getObjCClassFromMetadata() defaultCenter];
    if (qword_10000C100 != -1)
    {
      swift_once();
    }

    [v12 postNotificationName:qword_10000C3C8 object:0];

    v13 = *(v0 + 16);
    sub_100004294();
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_10000311C(void *a1, void *a2, unsigned __int8 a3)
{
  v7 = *(*v3 + 32);
  v9 = *v3;

  sub_100003C6C(a1, a2, a3);

  return _swift_task_switch(sub_10000323C, 0, 0);
}

uint64_t sub_10000323C()
{
  v1 = *(v0 + 16);
  sub_100004294();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000032A0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_1000042B4();
  *a1 = v5;
  return result;
}

uint64_t sub_1000032DC(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_1000042C4();
}

void (*sub_100003314(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1000042A4();
  return sub_100003388;
}

void sub_100003388(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000033D8()
{
  result = qword_10000C1F0;
  if (!qword_10000C1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F0);
  }

  return result;
}

unint64_t sub_100003430()
{
  result = qword_10000C1F8;
  if (!qword_10000C1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C1F8);
  }

  return result;
}

uint64_t sub_100003568@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_10000193C(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_10000361C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000036BC;

  return sub_100002DB4(a1, v4);
}

uint64_t sub_1000036BC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000037B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003930();
  *a1 = result;
  return result;
}

uint64_t sub_1000037D8(uint64_t a1)
{
  v2 = sub_100001A4C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100003868(uint64_t a1)
{
  v2 = sub_100004374();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100004394();
}

uint64_t sub_100003930()
{
  v0 = sub_1000042E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v23[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100001790(&qword_10000C210, &qword_100004A60);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v23[-v7];
  v9 = sub_100001790(&qword_10000C218, &qword_100004A68);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23[-v11];
  v13 = sub_100001790(&qword_10000C220, &qword_100004A70);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v23[-v15];
  v17 = sub_100004314();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_100001790(&qword_10000C228, &qword_100004A78);
  sub_100004304();
  (*(v18 + 56))(v16, 1, 1, v17);
  v23[15] = 2;
  v20 = sub_100004594();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = sub_100004284();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  (*(v1 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v0);
  return sub_1000042D4();
}

void sub_100003C6C(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 >= 2u)
  {
    if (a3 != 2)
    {
      return;
    }

    a1 = a2;
  }
}

unint64_t sub_100003CE4()
{
  result = qword_10000C290;
  if (!qword_10000C290)
  {
    sub_100001890(&qword_10000C288, &qword_100004B28);
    sub_100003D9C();
    sub_100003E84(&qword_10000C2C0, &qword_10000C2C8, &qword_100004B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C290);
  }

  return result;
}

unint64_t sub_100003D9C()
{
  result = qword_10000C298;
  if (!qword_10000C298)
  {
    sub_100001890(&qword_10000C2A0, &qword_100004B30);
    sub_100003E84(&qword_10000C2A8, &qword_10000C2B0, &qword_100004B38);
    sub_100003F70(&qword_10000C2B8, &type metadata accessor for _IndefiniteSymbolEffectModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C298);
  }

  return result;
}

uint64_t sub_100003E84(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100001890(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003ECC()
{
  result = qword_10000C2D0;
  if (!qword_10000C2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C2D0);
  }

  return result;
}

uint64_t sub_100003F20(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100003F70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003FE0(uint64_t a1)
{
  v2 = sub_100001790(&qword_10000C288, &qword_100004B28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004048()
{
  sub_100001890(&qword_10000C248, &qword_100004AF8);
  sub_100001890(&qword_10000C240, &qword_100004AF0);
  sub_100001890(&qword_10000C238, &qword_100004AE8);
  sub_100003E84(&qword_10000C270, &qword_10000C238, &qword_100004AE8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

NSString sub_100004160()
{
  result = sub_100004584();
  qword_10000C3C8 = result;
  return result;
}

uint64_t sub_100004198()
{
  v0 = sub_100004554();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  v3 = sub_100004544();

  sub_100004514();

  qword_10000C3D0 = v3;
  return result;
}