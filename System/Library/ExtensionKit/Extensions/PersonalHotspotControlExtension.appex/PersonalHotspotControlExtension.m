id sub_100001688@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for PersonalHotspotStateProvider()) init];
  *a1 = result;
  return result;
}

uint64_t sub_1000016C4()
{
  v1 = sub_100001890(&qword_100010318, &unk_100008280);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v9 - v4;
  v10 = *v0;
  v6 = v10;
  sub_1000018D8();
  v7 = v6;
  sub_100007B60();
  sub_10000192C();
  sub_100007B30();
  return (*(v2 + 8))(v5, v1);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001810();
  sub_100007B20();
  return 0;
}

unint64_t sub_100001810()
{
  result = qword_100010310;
  if (!qword_100010310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010310);
  }

  return result;
}

uint64_t sub_100001890(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000018D8()
{
  result = qword_100010320;
  if (!qword_100010320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010320);
  }

  return result;
}

unint64_t sub_10000192C()
{
  result = qword_100010328;
  if (!qword_100010328)
  {
    sub_100001990(&qword_100010318, &unk_100008280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010328);
  }

  return result;
}

uint64_t sub_100001990(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000019EC()
{
  sub_100001990(&qword_100010318, &unk_100008280);
  sub_10000192C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100001A54()
{
  result = qword_100010340;
  if (!qword_100010340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010340);
  }

  return result;
}

unint64_t sub_100001AAC()
{
  result = qword_100010348;
  if (!qword_100010348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010348);
  }

  return result;
}

void sub_100001B00()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100009280;
  v6._object = 0x8000000100009260;
  v6._countAndFlagsBits = 0xD000000000000010;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_100007A80(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100010990 = v2;
  *algn_100010998 = v4;
}

uint64_t sub_100001BB8()
{
  v0 = sub_100007AA0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_100007AE0() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(sub_100007C30() - 8) + 64);
  __chkstk_darwin();
  v7 = sub_100007AB0();
  sub_100006DFC(v7, qword_1000109A0);
  sub_100006D18(v7, qword_1000109A0);
  sub_100007C20();
  sub_100007AD0();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100007AC0();
}

void sub_100001D98()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100009390;
  v6._countAndFlagsBits = 0x6C62616C69617641;
  v6._object = 0xE900000000000065;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_100007A80(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000109B8 = v2;
  unk_1000109C0 = v4;
}

void sub_100001E4C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000093E0;
  v6._countAndFlagsBits = 6710863;
  v6._object = 0xE300000000000000;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_100007A80(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000109C8 = v2;
  unk_1000109D0 = v4;
}

void sub_100001EF4()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x80000001000092D0;
  v6._object = 0x80000001000092B0;
  v6._countAndFlagsBits = 0xD000000000000018;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_100007A80(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000109D8 = v2;
  unk_1000109E0 = v4;
}

void sub_100001FAC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100009320;
  v6._object = 0x8000000100009300;
  v6._countAndFlagsBits = 0xD000000000000019;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_100007A80(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_1000109E8 = v2;
  unk_1000109F0 = v4;
}

Swift::Int sub_100002078()
{
  v1 = *v0;
  sub_100007D10();
  sub_100007D20(v1);
  return sub_100007D30();
}

Swift::Int sub_1000020EC()
{
  v1 = *v0;
  sub_100007D10();
  sub_100007D20(v1);
  return sub_100007D30();
}

uint64_t sub_100002130@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = sub_100007AB0();
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  __chkstk_darwin();
  v29 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100001890(&qword_100010408, &qword_100008630);
  v26 = *(v5 - 8);
  v6 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = v25 - v7;
  v9 = sub_100001890(&qword_100010410, &qword_100008638);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v25 - v11;
  v25[1] = qword_100010330;
  v35 = a1;
  *(swift_allocObject() + 16) = a1;
  v13 = a1;

  v25[0] = sub_100001890(&qword_100010418, &qword_100008640);
  type metadata accessor for PersonalHotspotStateProvider();
  v14 = sub_100001990(&qword_100010420, &qword_100008648);
  v15 = sub_100001990(&qword_100010428, &qword_100008650);
  v16 = sub_100007724(&qword_100010430, &qword_100010428, &qword_100008650);
  v33 = v15;
  v34 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v14;
  v34 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1000076C8();
  sub_100007C00();
  v18 = sub_100007724(&qword_100010440, &qword_100010408, &qword_100008630);
  sub_100007B80();
  (*(v26 + 8))(v8, v5);
  if (qword_1000102D8 != -1)
  {
    swift_once();
  }

  v19 = v32;
  v20 = sub_100006D18(v32, qword_1000109A0);
  v22 = v29;
  v21 = v30;
  (*(v30 + 16))(v29, v20, v19);
  v33 = v5;
  v34 = v18;
  swift_getOpaqueTypeConformance2();
  v23 = v28;
  sub_100007B70();
  (*(v21 + 8))(v22, v19);
  return (*(v27 + 8))(v12, v23);
}

uint64_t sub_100002580@<X0>(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a3;
  v5 = sub_100001890(&qword_100010428, &qword_100008650);
  v23 = *(v5 - 8);
  v6 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = v21 - v7;
  v9 = sub_100001890(&qword_100010420, &qword_100008648);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v21 - v11;
  v13 = *a1;
  if (qword_1000102D0 != -1)
  {
    swift_once();
  }

  v33 = qword_100010990;
  v34 = *algn_100010998;
  v21[1] = (v13 & 0xFE) == 2;

  v31 = sub_100006FE8();
  v32 = v14;
  *(swift_allocObject() + 16) = a2;
  v22 = a2;
  sub_100001890(&qword_100010448, &qword_100008658);
  v15 = sub_100001990(&qword_100010450, &qword_100008660);
  v16 = sub_100007724(&qword_100010458, &qword_100010450, &qword_100008660);
  v17 = sub_10000776C();
  v27 = v15;
  v28 = &type metadata for String;
  v29 = v16;
  v30 = v17;
  swift_getOpaqueTypeConformance2();
  sub_1000077C0();
  sub_100007BF0();
  if (v13 == 3)
  {
    sub_100007BB0();
  }

  else
  {
    sub_100007BC0();
  }

  v18 = sub_100007724(&qword_100010430, &qword_100010428, &qword_100008650);
  sub_100007B40();

  (*(v23 + 8))(v8, v5);
  sub_100005DF4();
  v27 = v5;
  v28 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v25;
  sub_100007B50();
  return (*(v24 + 8))(v12, v19);
}

uint64_t sub_100002928(char a1, uint64_t a2)
{
  v4 = sub_100001890(&qword_100010450, &qword_100008660);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v13[-v7];
  v14 = a2;
  v13[16] = a1;
  sub_100007BE0();
  if (a1)
  {
    if (qword_1000102F0 != -1)
    {
      swift_once();
    }

    v9 = &qword_1000109D8;
  }

  else
  {
    if (qword_1000102F8 != -1)
    {
      swift_once();
    }

    v9 = &qword_1000109E8;
  }

  v11 = *v9;
  v10 = v9[1];

  v15 = v11;
  v16 = v10;
  sub_100007724(&qword_100010458, &qword_100010450, &qword_100008660);
  sub_10000776C();
  sub_100007BA0();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100002B4C@<X0>(uint64_t a1@<X8>)
{
  sub_100002BA4();
  sub_10000776C();
  result = sub_100007B90();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100002BA4()
{
  v0 = sub_1000046B8();
  v1 = sub_1000040E8();
  v2 = sub_100003B68();
  if (sub_100005DF4())
  {
    if (qword_100010308 != -1)
    {
      swift_once();
    }

    v3 = sub_100007B10();
    sub_100006D18(v3, qword_100010A10);
    v4 = sub_100007AF0();
    v5 = sub_100007CB0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v20._object = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_100006770(0x656C746974627573, 0xEC00000074786554, &v20._object);
      _os_log_impl(&_mh_execute_header, v4, v5, "%s: Setting subtitle to OFF due to widgetDisabled'", v6, 0xCu);
      sub_100006D50(v7);
    }

    goto LABEL_7;
  }

  if (!v1)
  {
    if (v2)
    {
      if (qword_1000102E0 != -1)
      {
        swift_once();
      }

      v8 = &qword_1000109B8;
      goto LABEL_10;
    }

LABEL_7:
    if (qword_1000102E8 != -1)
    {
      swift_once();
    }

    v8 = &qword_1000109C8;
LABEL_10:
    v9 = *v8;
    v10 = v8[1];

    goto LABEL_13;
  }

  v11 = [objc_opt_self() mainBundle];
  v20._countAndFlagsBits = 0xE000000000000000;
  v21._object = 0x8000000100009370;
  v21._countAndFlagsBits = 0xD000000000000013;
  v22.value._countAndFlagsBits = 0;
  v22.value._object = 0;
  v12.super.isa = v11;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  sub_100007A80(v21, v22, v12, v23, v20);

  sub_100001890(&qword_100010470, qword_100008668);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100008290;
  *(v13 + 56) = &type metadata for Int;
  *(v13 + 64) = &protocol witness table for Int;
  *(v13 + 32) = v1;
  v9 = sub_100007C50();
  v10 = v14;

LABEL_13:
  if (qword_100010308 != -1)
  {
    swift_once();
  }

  v15 = sub_100007B10();
  sub_100006D18(v15, qword_100010A10);

  v16 = sub_100007AF0();
  v17 = sub_100007CB0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v20._object = swift_slowAlloc();
    *v18 = 136316162;
    *(v18 + 4) = sub_100006770(0x656C746974627573, 0xEC00000074786554, &v20._object);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_100006770(v9, v10, &v20._object);
    *(v18 + 22) = 1024;
    *(v18 + 24) = v0;
    *(v18 + 28) = 1024;
    *(v18 + 30) = v2;
    *(v18 + 34) = 2048;
    *(v18 + 36) = v1;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s: getting subtitle='%s' global service state=%u, getting discoverable state=%{BOOL}d, connectionCount=%ld", v18, 0x2Cu);
    swift_arrayDestroy();
  }

  return v9;
}

id sub_100002FF8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for PersonalHotspotStateProvider()) init];
  *a1 = result;
  return result;
}

uint64_t sub_100003038()
{
  v0 = sub_100007AB0();
  sub_100006DFC(v0, qword_1000109F8);
  sub_100006D18(v0, qword_1000109F8);
  return sub_100007A90();
}

uint64_t sub_10000309C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_1000030C0, 0, 0);
}

uint64_t sub_1000030C0()
{
  v18 = v0;
  v1 = *(v0 + 32);
  if (sub_100005DF4())
  {
    if (qword_100010308 != -1)
    {
      swift_once();
    }

    v2 = sub_100007B10();
    sub_100006D18(v2, qword_100010A10);
    v3 = sub_100007AF0();
    v4 = sub_100007CB0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v17 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_100006770(0x286D726F66726570, 0xE900000000000029, &v17);
      _os_log_impl(&_mh_execute_header, v3, v4, "%s: Suppressing PH toggle because widget is disabled", v5, 0xCu);
      sub_100006D50(v6);
    }
  }

  else
  {
    if (qword_100010308 != -1)
    {
      swift_once();
    }

    v7 = sub_100007B10();
    sub_100006D18(v7, qword_100010A10);
    v8 = sub_100007AF0();
    v9 = sub_100007CB0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100006770(0x286D726F66726570, 0xE900000000000029, &v17);
      _os_log_impl(&_mh_execute_header, v8, v9, "%s: Toggled PH mode", v10, 0xCu);
      sub_100006D50(v11);
    }

    v13 = *(v0 + 24);
    v12 = *(v0 + 32);
    sub_100007A40();
    sub_100004CD8(*(v0 + 40));
  }

  v14 = *(v0 + 16);
  sub_100007A20();
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100003368@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100007A40();
  *a1 = v5;
  return result;
}

uint64_t sub_1000033A4(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100007A50();
}

void (*sub_1000033DC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100007A30();
  return sub_100003450;
}

void sub_100003450(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000034A0()
{
  result = qword_100010350;
  if (!qword_100010350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010350);
  }

  return result;
}

unint64_t sub_1000034F8()
{
  result = qword_100010358;
  if (!qword_100010358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010358);
  }

  return result;
}

uint64_t sub_1000035B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_100010300 != -1)
  {
    swift_once();
  }

  v2 = sub_100007AB0();
  v3 = sub_100006D18(v2, qword_1000109F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100003678(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100003724;

  return sub_10000309C(a1, v5, v4);
}

uint64_t sub_100003724()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003818@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100006FE8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003840(uint64_t a1)
{
  v2 = sub_100001A54();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000387C()
{
  v1 = (v0 + OBJC_IVAR____TtC31PersonalHotspotControlExtension28PersonalHotspotStateProvider____lazy_storage___misClient);
  if (*(v0 + OBJC_IVAR____TtC31PersonalHotspotControlExtension28PersonalHotspotStateProvider____lazy_storage___misClient + 8) != 1)
  {
    return *v1;
  }

  sub_100007448(0, &qword_1000103D8, OS_dispatch_queue_ptr);
  v2 = sub_100007CC0();
  v6[4] = sub_10000397C;
  v6[5] = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100003984;
  v6[3] = &unk_10000C940;
  v3 = _Block_copy(v6);
  v4 = _NETRBClientCreate();
  _Block_release(v3);

  result = v4;
  *v1 = v4;
  v1[8] = 0;
  return result;
}

uint64_t sub_100003984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  swift_unknownObjectRetain();
  v7 = v6(a2, a3);

  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1000039F0()
{
  v1 = (v0 + OBJC_IVAR____TtC31PersonalHotspotControlExtension28PersonalHotspotStateProvider____lazy_storage___wifiClient);
  if (*(v0 + OBJC_IVAR____TtC31PersonalHotspotControlExtension28PersonalHotspotStateProvider____lazy_storage___wifiClient + 8) != 1)
  {
    return *v1;
  }

  result = WiFiManagerClientCreate();
  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t sub_100003A40()
{
  v1 = (v0 + OBJC_IVAR____TtC31PersonalHotspotControlExtension28PersonalHotspotStateProvider____lazy_storage___cellularClient);
  if (*(v0 + OBJC_IVAR____TtC31PersonalHotspotControlExtension28PersonalHotspotStateProvider____lazy_storage___cellularClient + 8) != 1)
  {
    return *v1;
  }

  v2 = sub_100007C40();
  v3 = _CTServerConnectionCreateWithIdentifier();

  result = v3;
  *v1 = v3;
  v1[8] = 0;
  return result;
}

id sub_100003ACC()
{
  if (sub_10000387C())
  {
    _NETRBClientDestroy();
    v1 = &v0[OBJC_IVAR____TtC31PersonalHotspotControlExtension28PersonalHotspotStateProvider____lazy_storage___misClient];
    *v1 = 0;
    v1[8] = 0;
  }

  if (sub_1000039F0())
  {
    swift_unknownObjectRelease();
    v2 = &v0[OBJC_IVAR____TtC31PersonalHotspotControlExtension28PersonalHotspotStateProvider____lazy_storage___wifiClient];
    *v2 = 0;
    v2[8] = 0;
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for PersonalHotspotStateProvider();
  return objc_msgSendSuper2(&v4, "dealloc");
}

BOOL sub_100003B68()
{
  if (qword_100010308 != -1)
  {
    swift_once();
  }

  v0 = sub_100007B10();
  sub_100006D18(v0, qword_100010A10);
  v1 = sub_100007AF0();
  v2 = sub_100007CB0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100006770(0x745353494D746567, 0xED00002928657461, &v15);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: start querying MIS state", v3, 0xCu);
    sub_100006D50(v4);
  }

  if (sub_1000039F0())
  {
    v5 = WiFiManagerClientGetMISDiscoveryState() != 0;
  }

  else
  {
    v6 = sub_100007AF0();
    v7 = sub_100007CA0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100006770(0x745353494D746567, 0xED00002928657461, &v15);
      _os_log_impl(&_mh_execute_header, v6, v7, "%s: failed to get wifiClient", v8, 0xCu);
      sub_100006D50(v9);
    }

    v5 = 0;
  }

  v10 = sub_100007AF0();
  v11 = sub_100007CB0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_100006770(0x745353494D746567, 0xED00002928657461, &v15);
    *(v12 + 12) = 1024;
    *(v12 + 14) = v5;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: MIS state=%{BOOL}d", v12, 0x12u);
    sub_100006D50(v13);
  }

  return v5;
}

void sub_100003E68(char a1)
{
  if (qword_100010308 != -1)
  {
    swift_once();
  }

  v2 = sub_100007B10();
  sub_100006D18(v2, qword_100010A10);
  v3 = sub_100007AF0();
  v4 = sub_100007CB0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_100006770(0xD000000000000027, 0x80000001000091A0, &v11);
    *(v5 + 12) = 1024;
    *(v5 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: setting MIS state to='%{BOOL}d'", v5, 0x12u);
    sub_100006D50(v6);
  }

  if (sub_1000039F0())
  {

    _WiFiManagerClientSetMISDiscoveryState();
  }

  else
  {
    oslog = sub_100007AF0();
    v7 = sub_100007CA0();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100006770(0xD000000000000027, 0x80000001000091A0, &v11);
      _os_log_impl(&_mh_execute_header, oslog, v7, "%s: failed to get wifiClient", v8, 0xCu);
      sub_100006D50(v9);
    }
  }
}

uint64_t sub_1000040E8()
{
  if (qword_100010308 != -1)
  {
    swift_once();
  }

  v0 = sub_100007B10();
  sub_100006D18(v0, qword_100010A10);
  v1 = sub_100007AF0();
  v2 = sub_100007CB0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v14[0] = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100006770(0xD000000000000014, 0x8000000100009180, v14);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: start querying connection count", v3, 0xCu);
    sub_100006D50(v4);
  }

  if (sub_10000387C())
  {
    LODWORD(v14[0]) = 0;
    _NETRBClientGetHostCount();
  }

  else
  {
    v5 = sub_100007AF0();
    v6 = sub_100007CA0();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_100006770(0xD000000000000014, 0x8000000100009180, v14);
      _os_log_impl(&_mh_execute_header, v5, v6, "%s: fail to create NETRBClient", v7, 0xCu);
      sub_100006D50(v8);
    }
  }

  v9 = sub_100007AF0();
  v10 = sub_100007CB0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14[0] = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_100006770(0xD000000000000014, 0x8000000100009180, v14);
    *(v11 + 12) = 1024;
    swift_beginAccess();
    *(v11 + 14) = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s: updating connections count=%u", v11, 0x12u);
    sub_100006D50(v12);
  }

  swift_beginAccess();
  return 0;
}

void sub_100004444(int a1)
{
  if (qword_100010308 != -1)
  {
    swift_once();
  }

  v2 = sub_100007B10();
  sub_100006D18(v2, qword_100010A10);
  v3 = sub_100007AF0();
  v4 = sub_100007CB0();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_100006770(0xD000000000000020, 0x8000000100009150, &v11);
    *(v5 + 12) = 1024;
    *(v5 + 14) = a1;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: setting global service state to='%u'", v5, 0x12u);
    sub_100006D50(v6);
  }

  if (sub_10000387C())
  {

    __NETRBClientSetGlobalServiceState();
  }

  else
  {
    oslog = sub_100007AF0();
    v7 = sub_100007CA0();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_100006770(0xD000000000000020, 0x8000000100009150, &v11);
      _os_log_impl(&_mh_execute_header, oslog, v7, "%s: fail to create NETRBClient", v8, 0xCu);
      sub_100006D50(v9);
    }
  }
}

uint64_t sub_1000046B8()
{
  if (sub_10000387C())
  {
    _NETRBClientGetGlobalServiceState();
  }

  else
  {
    if (qword_100010308 != -1)
    {
      swift_once();
    }

    v0 = sub_100007B10();
    sub_100006D18(v0, qword_100010A10);
    v1 = sub_100007AF0();
    v2 = sub_100007CA0();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v11[0] = v4;
      *v3 = 136315138;
      *(v3 + 4) = sub_100006770(0xD000000000000017, 0x8000000100009130, v11);
      _os_log_impl(&_mh_execute_header, v1, v2, "%s: fail to create NETRBClient", v3, 0xCu);
      sub_100006D50(v4);
    }
  }

  if (qword_100010308 != -1)
  {
    swift_once();
  }

  v5 = sub_100007B10();
  sub_100006D18(v5, qword_100010A10);
  v6 = sub_100007AF0();
  v7 = sub_100007CB0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_100006770(0xD000000000000017, 0x8000000100009130, v11);
    *(v8 + 12) = 1024;
    swift_beginAccess();
    *(v8 + 14) = 1022;
    *(v8 + 18) = 1024;
    swift_beginAccess();
    *(v8 + 20) = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: current global service state=%u, reason=%u", v8, 0x18u);
    sub_100006D50(v9);
  }

  swift_beginAccess();
  return 1022;
}

uint64_t sub_1000049C8()
{
  v21 = v0;
  v1 = *(v0 + 16);
  if (sub_100005DF4())
  {
    if (qword_100010308 != -1)
    {
      swift_once();
    }

    v2 = sub_100007B10();
    sub_100006D18(v2, qword_100010A10);
    v3 = sub_100007AF0();
    v4 = sub_100007CB0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v20 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_100006770(0x56746E6572727563, 0xEE00292865756C61, &v20);
      _os_log_impl(&_mh_execute_header, v3, v4, "%s: returning false due to widgetDisabled", v5, 0xCu);
      sub_100006D50(v6);
    }

    v7 = 0;
  }

  else
  {
    v8 = *(v0 + 16);
    v9 = sub_100003B68();
    v10 = sub_1000046B8();
    v11 = sub_1000040E8();
    if (qword_100010308 != -1)
    {
      swift_once();
    }

    v12 = sub_100007B10();
    sub_100006D18(v12, qword_100010A10);
    v13 = sub_100007AF0();
    v14 = sub_100007CB0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v20 = v16;
      *v15 = 136315906;
      *(v15 + 4) = sub_100006770(0x56746E6572727563, 0xEE00292865756C61, &v20);
      *(v15 + 12) = 1024;
      *(v15 + 14) = v10;
      *(v15 + 18) = 1024;
      *(v15 + 20) = v9;
      *(v15 + 24) = 2048;
      *(v15 + 26) = v11;
      _os_log_impl(&_mh_execute_header, v13, v14, "%s: getting global service state=%u, MIS discovery state=%{BOOL}d, connectionCount=%ld", v15, 0x22u);
      sub_100006D50(v16);
    }

    if (v9)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    if (v11)
    {
      v17 = 3;
    }

    if (v10 >= 0x3FE)
    {
      v7 = v17;
    }

    else
    {
      v7 = 0;
    }
  }

  v18 = *(v0 + 8);

  return v18(v7);
}

void sub_100004CD8(char a1)
{
  v2 = sub_1000046B8();
  if (qword_100010308 != -1)
  {
    swift_once();
  }

  v3 = sub_100007B10();
  sub_100006D18(v3, qword_100010A10);
  v4 = sub_100007AF0();
  v5 = sub_100007CB0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v34[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_100006770(0xD000000000000018, 0x80000001000090F0, v34);
    *(v6 + 12) = 1024;
    *(v6 + 14) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: global service state=%u", v6, 0x12u);
    sub_100006D50(v7);
  }

  if (v2 != 1023)
  {
    v8 = sub_100007AF0();
    v9 = sub_100007CB0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v34[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_100006770(0xD000000000000018, 0x80000001000090F0, v34);
      _os_log_impl(&_mh_execute_header, v8, v9, "%s: setting GlobalServiceState to ON", v10, 0xCu);
      sub_100006D50(v11);
    }

    sub_100004444(1023);
  }

  v12 = sub_1000040E8();
  v13 = sub_100007AF0();
  v14 = sub_100007CB0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34[0] = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_100006770(0xD000000000000018, 0x80000001000090F0, v34);
    *(v15 + 12) = 2048;
    *(v15 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: connections count: %ld when user toggles widget", v15, 0x16u);
    sub_100006D50(v16);
  }

  if (v12)
  {
    v17 = sub_100007AF0();
    v18 = sub_100007CB0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_100006770(0xD000000000000018, 0x80000001000090F0, v34);
      _os_log_impl(&_mh_execute_header, v17, v18, "%s: Stopping hotspot service", v19, 0xCu);
      sub_100006D50(v20);
    }

    sub_100004444(1022);
  }

  v21 = sub_100003B68();
  v22 = sub_100007AF0();
  v23 = sub_100007CB0();
  v24 = os_log_type_enabled(v22, v23);
  if (v21)
  {
    if (v24)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v34[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_100006770(0xD000000000000018, 0x80000001000090F0, v34);
      _os_log_impl(&_mh_execute_header, v22, v23, "%s: Shutting down hotspot discoverability immediately", v25, 0xCu);
      sub_100006D50(v26);
    }

    sub_100003E68(a1 & 1);
    v27 = 0xE300000000000000;
    v28 = 6710895;
    if (v12)
    {
LABEL_19:
    }
  }

  else
  {
    if (v24)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_100006770(0xD000000000000018, 0x80000001000090F0, v34);
      _os_log_impl(&_mh_execute_header, v22, v23, "%s: Starting hotspot discoverability", v32, 0xCu);
      sub_100006D50(v33);
    }

    sub_100003E68(a1 & 1);
    v27 = 0xE200000000000000;
    v28 = 28271;
    if (v12)
    {
      goto LABEL_19;
    }
  }

  v29 = sub_100007C40();
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v30 + 24) = v27;
  v34[4] = sub_100006E98;
  v34[5] = v30;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 1107296256;
  v34[2] = sub_100006654;
  v34[3] = &unk_10000C918;
  v31 = _Block_copy(v34);

  AnalyticsSendEventLazy();
  _Block_release(v31);
}

uint64_t sub_100005360()
{
  if (sub_10000387C())
  {
    _NETRBClientGetGlobalServiceState();
  }

  else
  {
    if (qword_100010308 != -1)
    {
      swift_once();
    }

    v0 = sub_100007B10();
    sub_100006D18(v0, qword_100010A10);
    v1 = sub_100007AF0();
    v2 = sub_100007CA0();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v11[0] = v4;
      *v3 = 136315138;
      *(v3 + 4) = sub_100006770(0xD000000000000011, 0x8000000100009090, v11);
      _os_log_impl(&_mh_execute_header, v1, v2, "%s: fail to create NETRBClient", v3, 0xCu);
      sub_100006D50(v4);
    }
  }

  if (qword_100010308 != -1)
  {
    swift_once();
  }

  v5 = sub_100007B10();
  sub_100006D18(v5, qword_100010A10);
  v6 = sub_100007AF0();
  v7 = sub_100007CB0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_100006770(0xD000000000000011, 0x8000000100009090, v11);
    *(v8 + 12) = 1024;
    swift_beginAccess();
    *(v8 + 14) = 1022;
    *(v8 + 18) = 1024;
    swift_beginAccess();
    *(v8 + 20) = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: current global service state=%u, reason=%u", v8, 0x18u);
    sub_100006D50(v9);
  }

  swift_beginAccess();
  swift_beginAccess();
  return 0;
}

uint64_t sub_10000576C()
{
  if (qword_100010308 != -1)
  {
    swift_once();
  }

  v0 = sub_100007B10();
  sub_100006D18(v0, qword_100010A10);
  v1 = sub_100007AF0();
  v2 = sub_100007CB0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v17 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100006770(0xD000000000000018, 0x8000000100009070, &v17);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s: start querying PH allow modification capability.", v3, 0xCu);
    sub_100006D50(v4);
  }

  if (sub_1000039F0())
  {
    IsPersonalHotspotModificationDisabled = WiFiManagerClientIsPersonalHotspotModificationDisabled();
    v6 = IsPersonalHotspotModificationDisabled != 0;
    v7 = sub_100007AF0();
    v8 = sub_100007CB0();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = IsPersonalHotspotModificationDisabled != 0;
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_100006770(0xD000000000000018, 0x8000000100009070, &v17);
      *(v10 + 12) = 1024;
      *(v10 + 14) = v9;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s: getting PH allow modification capability: %{BOOL}d", v10, 0x12u);
      sub_100006D50(v11);
    }
  }

  else
  {
    v12 = sub_100007AF0();
    v13 = sub_100007CA0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_100006770(0xD000000000000018, 0x8000000100009070, &v17);
      _os_log_impl(&_mh_execute_header, v12, v13, "%s: failed to get wifiClient", v14, 0xCu);
      sub_100006D50(v15);
    }

    return 1;
  }

  return v6;
}

uint64_t sub_100005A80()
{
  if (sub_100003A40())
  {
    _CTServerConnectionGetCellularDataSettings();
  }

  else
  {
    if (qword_100010308 != -1)
    {
      swift_once();
    }

    v0 = sub_100007B10();
    sub_100006D18(v0, qword_100010A10);
    v1 = sub_100007AF0();
    v2 = sub_100007CA0();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v11[0] = v4;
      *v3 = 136315138;
      *(v3 + 4) = sub_100006770(0xD000000000000015, 0x8000000100009050, v11);
      _os_log_impl(&_mh_execute_header, v1, v2, "%s: failed to get cellular connection", v3, 0xCu);
      sub_100006D50(v4);
    }
  }

  if (qword_100010308 != -1)
  {
    swift_once();
  }

  v5 = sub_100007B10();
  sub_100006D18(v5, qword_100010A10);
  v6 = sub_100007AF0();
  v7 = sub_100007CA0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11[0] = v9;
    *v8 = 136315906;
    *(v8 + 4) = sub_100006770(0xD000000000000015, 0x8000000100009050, v11);
    *(v8 + 12) = 1024;
    swift_beginAccess();
    *(v8 + 14) = 0;
    *(v8 + 18) = 1024;
    swift_beginAccess();
    *(v8 + 20) = 0;
    *(v8 + 24) = 1024;
    swift_beginAccess();
    *(v8 + 26) = 1;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: cellular states: capable:%{BOOL}d, enabled: %{BOOL}d, airplaneMode: %{BOOL}d", v8, 0x1Eu);
    sub_100006D50(v9);
  }

  swift_beginAccess();
  return 0;
}

uint64_t sub_100005DF4()
{
  if (sub_1000039F0())
  {
    v0 = sub_10000576C();
    v1 = sub_100005360();
    v2 = v0 | v1;
    if (qword_100010308 != -1)
    {
      swift_once();
    }

    v3 = sub_100007B10();
    sub_100006D18(v3, qword_100010A10);
    v4 = sub_100007AF0();
    v5 = sub_100007CB0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v14 = v7;
      *v6 = 136315906;
      *(v6 + 4) = sub_100006770(0xD000000000000010, 0x8000000100009010, &v14);
      *(v6 + 12) = 1024;
      *(v6 + 14) = v2 & 1;
      *(v6 + 18) = 1024;
      *(v6 + 20) = v0 & 1;
      *(v6 + 24) = 1024;
      *(v6 + 26) = v1 & 1;
      _os_log_impl(&_mh_execute_header, v4, v5, "%s: widget disabled=%{BOOL}d, phModificationDisabled=%{BOOL}d, phIsInoperative=%{BOOL}d", v6, 0x1Eu);
      sub_100006D50(v7);
    }
  }

  else
  {
    if (qword_100010308 != -1)
    {
      swift_once();
    }

    v8 = sub_100007B10();
    sub_100006D18(v8, qword_100010A10);
    v9 = sub_100007AF0();
    v10 = sub_100007CA0();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_100006770(0xD000000000000010, 0x8000000100009010, &v14);
      _os_log_impl(&_mh_execute_header, v9, v10, "%s: failed to get wifiClient, defaulting to widget disabled", v11, 0xCu);
      sub_100006D50(v12);
    }

    v2 = 1;
  }

  return v2 & 1;
}

__n128 sub_10000613C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100006148(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100006190(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_10000622C(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000062C0;

  return sub_1000049A8();
}

uint64_t sub_1000062C0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_1000063D0()
{
  sub_100001890(&qword_1000103C0, &qword_100008510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000082A0;
  v1 = objc_allocWithZone(NSString);
  v2 = sub_100007C40();
  v3 = [v1 initWithString:v2];

  v4 = sub_100007C60();
  v6 = v5;

  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = objc_allocWithZone(NSString);
  v8 = sub_100007C40();
  v9 = [v7 initWithString:v8];

  *(inited + 48) = v9;
  v10 = objc_allocWithZone(NSString);
  v11 = sub_100007C40();
  v12 = [v10 initWithString:v11];

  v13 = sub_100007C60();
  v15 = v14;

  *(inited + 56) = v13;
  *(inited + 64) = v15;
  v16 = objc_allocWithZone(NSString);
  v17 = sub_100007C40();
  v18 = [v16 initWithString:v17];

  *(inited + 72) = v18;
  v19 = objc_allocWithZone(NSString);
  v20 = sub_100007C40();
  v21 = [v19 initWithString:v20];

  v22 = sub_100007C60();
  v24 = v23;

  *(inited + 80) = v22;
  *(inited + 88) = v24;
  v25 = objc_allocWithZone(NSString);
  v26 = sub_100007C40();
  v27 = [v25 initWithString:v26];

  *(inited + 96) = v27;
  v28 = sub_100007344(inited);
  swift_setDeallocating();
  sub_100001890(&qword_1000103C8, &qword_100008518);
  swift_arrayDestroy();
  return v28;
}

Class sub_100006654(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_100007448(0, &qword_1000103B8, NSObject_ptr);
    v5.super.isa = sub_100007C10().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

uint64_t sub_1000066F0()
{
  v0 = sub_100007B10();
  sub_100006DFC(v0, qword_100010A10);
  sub_100006D18(v0, qword_100010A10);
  return sub_100007B00();
}

uint64_t sub_100006770(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10000683C(v11, 0, 0, 1, a1, a2);
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
    sub_100006D9C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006D50(v11);
  return v7;
}

unint64_t sub_10000683C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100006948(a5, a6);
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
    result = sub_100007CE0();
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

char *sub_100006948(uint64_t a1, unint64_t a2)
{
  v4 = sub_100006994(a1, a2);
  sub_100006AC4(&off_10000C820);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100006994(uint64_t a1, unint64_t a2)
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

  v6 = sub_100006BB0(v5, 0);
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

  result = sub_100007CE0();
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
        v10 = sub_100007C80();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100006BB0(v10, 0);
        result = sub_100007CD0();
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

uint64_t sub_100006AC4(uint64_t result)
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

  result = sub_100006C24(result, v12, 1, v3);
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

void *sub_100006BB0(uint64_t a1, uint64_t a2)
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

  sub_100001890(&qword_1000103B0, &qword_100008508);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100006C24(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001890(&qword_1000103B0, &qword_100008508);
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

uint64_t sub_100006D18(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100006D50(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100006D9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *sub_100006DFC(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100006E60()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100006E98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000063D0();
}

uint64_t sub_100006EA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100006EB8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100007D10();
  sub_100007C70();
  v6 = sub_100007D30();

  return sub_100006F30(a1, a2, v6);
}

unint64_t sub_100006F30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_100007D00())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_100006FE8()
{
  v0 = sub_100007A70();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (*(*(sub_100001890(&qword_1000103E0, &qword_100008528) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v21[-v6];
  v8 = (*(*(sub_100001890(&qword_1000103E8, &qword_100008530) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v21[-v9];
  v11 = (*(*(sub_100001890(&qword_1000103F0, &qword_100008538) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v21[-v12];
  v14 = sub_100007AB0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  sub_100001890(&qword_1000103F8, &qword_100008540);
  sub_100007A90();
  (*(v15 + 56))(v13, 1, 1, v14);
  v21[15] = 2;
  v17 = sub_100007C90();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = sub_100007A10();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  (*(v1 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v0);
  v19 = sub_100007A60();
  [objc_allocWithZone(type metadata accessor for PersonalHotspotStateProvider()) init];
  return v19;
}

unint64_t sub_100007344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001890(&qword_1000103D0, &qword_100008520);
    v3 = sub_100007CF0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100006EB8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_100007448(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for PersonalHotspotState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalHotspotState(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100007618()
{
  result = qword_100010400;
  if (!qword_100010400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010400);
  }

  return result;
}

uint64_t sub_100007688()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_1000076C8()
{
  result = qword_100010438;
  if (!qword_100010438)
  {
    type metadata accessor for PersonalHotspotStateProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010438);
  }

  return result;
}

uint64_t sub_100007724(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100001990(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000776C()
{
  result = qword_100010460;
  if (!qword_100010460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010460);
  }

  return result;
}

unint64_t sub_1000077C0()
{
  result = qword_100010468;
  if (!qword_100010468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100010468);
  }

  return result;
}

uint64_t sub_10000781C@<X0>(uint64_t *a1@<X8>)
{
  *(v1 + 16);
  *(v1 + 16);
  result = sub_100007BD0();
  *a1 = result;
  return result;
}

uint64_t sub_10000788C()
{
  sub_100001990(&qword_100010410, &qword_100008638);
  sub_100001990(&qword_100010408, &qword_100008630);
  sub_100007724(&qword_100010440, &qword_100010408, &qword_100008630);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}