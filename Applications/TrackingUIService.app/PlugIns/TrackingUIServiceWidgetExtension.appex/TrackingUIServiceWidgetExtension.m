uint64_t sub_1000015E8()
{
  v0 = type metadata accessor for SecureTrackingManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = [objc_allocWithZone(sub_1000043E4()) init];
  sub_100004454();
  v4 = OBJC_IVAR____TtC32TrackingUIServiceWidgetExtension21SecureTrackingManager_secureTrackingControlEnabledNotification;
  v5 = sub_100004444();
  sub_100004404();
  v6 = objc_allocWithZone(v5);
  *(v3 + v4) = sub_100004414();
  v7 = OBJC_IVAR____TtC32TrackingUIServiceWidgetExtension21SecureTrackingManager_secureTrackingControlOnNotification;
  sub_1000043F4();
  v8 = objc_allocWithZone(v5);
  result = sub_100004414();
  *(v3 + v7) = result;
  qword_10000C4F8 = v3;
  return result;
}

uint64_t sub_100001710()
{
  v1 = OBJC_IVAR____TtC32TrackingUIServiceWidgetExtension21SecureTrackingManager_logger;
  v2 = sub_100004464();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for SecureTrackingManager()
{
  result = qword_10000C248;
  if (!qword_10000C248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100001828()
{
  result = sub_100004464();
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

unint64_t sub_1000018D0()
{
  result = qword_10000C370;
  if (!qword_10000C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C370);
  }

  return result;
}

unint64_t sub_100001928()
{
  result = qword_10000C378;
  if (!qword_10000C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C378);
  }

  return result;
}

uint64_t sub_10000197C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v31 = sub_1000043C4();
  v28 = *(v31 - 8);
  v1 = *(v28 + 64);
  __chkstk_darwin();
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003AA0(&qword_10000C3C8, &qword_100004A60);
  v26 = *(v4 - 8);
  v5 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v25 - v6;
  v33 = sub_100003AA0(&qword_10000C3D0, &qword_100004A68);
  v29 = *(v33 - 8);
  v8 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v25 - v9;
  v32 = sub_100003AA0(&qword_10000C3D8, &qword_100004A70);
  v30 = *(v32 - 8);
  v11 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v27 = &v25 - v12;
  sub_100003AA0(&qword_10000C3E0, &qword_100004A78);
  v13 = sub_1000031B4(&qword_10000C3E8, &qword_100004A80);
  v14 = sub_1000031B4(&qword_10000C3F0, &qword_100004A88);
  v15 = sub_100003C50(&qword_10000C3F8, &qword_10000C3F0, &qword_100004A88);
  v35 = v14;
  v36 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v13;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_100003BFC();
  sub_100004574();
  if (qword_10000C200 != -1)
  {
    swift_once();
  }

  sub_1000043B4();
  v17 = sub_100003C50(&qword_10000C408, &qword_10000C3C8, &qword_100004A60);
  sub_1000044E4();
  v18 = *(v28 + 8);
  v19 = v31;
  v18(v3, v31);
  (*(v26 + 8))(v7, v4);
  if (qword_10000C208 != -1)
  {
    swift_once();
  }

  sub_1000043B4();
  v35 = v4;
  v36 = v17;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = v27;
  v22 = v33;
  sub_1000044D4();
  v18(v3, v19);
  (*(v29 + 8))(v10, v22);
  v35 = v22;
  v36 = v20;
  swift_getOpaqueTypeConformance2();
  v23 = v32;
  sub_1000044F4();
  return (*(v30 + 8))(v21, v23);
}

uint64_t sub_100001ED4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_100003AA0(&qword_10000C3F0, &qword_100004A88);
  v23 = *(v3 - 8);
  v4 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = v22 - v5;
  v7 = sub_100003AA0(&qword_10000C3E8, &qword_100004A80);
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v22 - v9;
  v22[1] = *a1;
  v11 = a1[1];
  if (qword_10000C1D8 != -1)
  {
    swift_once();
  }

  v32 = qword_10000C520;
  v33 = *algn_10000C528;

  v31 = sub_100003764();
  sub_100003AA0(&qword_10000C410, &qword_100004A90);
  v12 = sub_1000031B4(&qword_10000C418, &qword_100004A98);
  v13 = sub_1000031B4(&qword_10000C420, &qword_100004AA0);
  v14 = sub_100003C50(&qword_10000C428, &qword_10000C420, &qword_100004AA0);
  v15 = sub_100003C98();
  v27 = v13;
  v28 = &type metadata for String;
  v29 = v14;
  v30 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v12;
  v28 = &type metadata for String;
  v29 = OpaqueTypeConformance2;
  v30 = v15;
  swift_getOpaqueTypeConformance2();
  sub_100003CEC();
  sub_100004564();
  v17 = [objc_opt_self() systemGreenColor];
  sub_100004534();
  v18 = sub_100003C50(&qword_10000C3F8, &qword_10000C3F0, &qword_100004A88);
  sub_1000044A4();

  (*(v23 + 8))(v6, v3);
  if (qword_10000C1C8 != -1)
  {
    swift_once();
  }

  v19 = *(qword_10000C4F8 + OBJC_IVAR____TtC32TrackingUIServiceWidgetExtension21SecureTrackingManager_secureTrackingControlEnabledNotification);
  sub_100004424();

  v27 = v3;
  v28 = v18;
  swift_getOpaqueTypeConformance2();
  v20 = v25;
  sub_1000044B4();
  return (*(v24 + 8))(v10, v20);
}

uint64_t sub_1000022F8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v3 = sub_100003AA0(&qword_10000C420, &qword_100004AA0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = v23 - v6;
  v23[0] = sub_100003AA0(&qword_10000C418, &qword_100004A98);
  v8 = *(v23[0] - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v23 - v10;
  sub_100004554();
  v12 = a1;
  if (a1)
  {
    if (qword_10000C1E0 != -1)
    {
      swift_once();
    }

    v13 = &qword_10000C530;
  }

  else
  {
    if (qword_10000C1E8 != -1)
    {
      swift_once();
    }

    v13 = &qword_10000C540;
  }

  v14 = *v13;
  v15 = v13[1];

  v24 = v14;
  v25 = v15;
  v16 = sub_100003C50(&qword_10000C428, &qword_10000C420, &qword_100004AA0);
  v17 = sub_100003C98();
  sub_100004524();

  (*(v4 + 8))(v7, v3);
  if (v12)
  {
    if (qword_10000C1F0 != -1)
    {
      swift_once();
    }

    v18 = &qword_10000C550;
  }

  else
  {
    if (qword_10000C1F8 != -1)
    {
      swift_once();
    }

    v18 = &qword_10000C560;
  }

  v19 = *v18;
  v20 = v18[1];

  v28 = v19;
  v29 = v20;
  v24 = v3;
  v25 = &type metadata for String;
  v26 = v16;
  v27 = v17;
  swift_getOpaqueTypeConformance2();
  v21 = v23[0];
  sub_100004514();

  return (*(v8 + 8))(v11, v21);
}

uint64_t sub_100002698@<X0>(uint64_t a1@<X8>)
{
  sub_100004484();
  result = sub_100004504();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100002700@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100004544();
  *a1 = result;
  return result;
}

uint64_t sub_100002748@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100003E68();
  *a1 = result & 1;
  a1[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_10000277C(_BYTE *a1)
{
  v3 = sub_100003E68();
  *a1 = v3 & 1;
  a1[1] = HIBYTE(v3) & 1;
  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1000027F0()
{
  v0 = sub_1000043C4();
  sub_100003B6C(v0, qword_10000C508);
  sub_100003B34(v0, qword_10000C508);
  return sub_1000043B4();
}

uint64_t sub_100002860(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_100002880, 0, 0);
}

uint64_t sub_100002880()
{
  if (qword_10000C1C8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = qword_10000C4F8;
  sub_100004364();
  v3 = *(v0 + 56);
  v4 = *(v2 + OBJC_IVAR____TtC32TrackingUIServiceWidgetExtension21SecureTrackingManager_secureTrackingControlOnNotification);
  sub_100004434();

  sub_100004364();
  v5 = *(v0 + 57);
  v6 = *(v2 + 16);
  *(v0 + 32) = v6;
  v7 = async function pointer to DockCoreManager.setTrackingActivity(enabled:)[1];
  v6;
  v8 = swift_task_alloc();
  *(v0 + 40) = v8;
  *v8 = v0;
  v8[1] = sub_1000029B4;

  return DockCoreManager.setTrackingActivity(enabled:)(v5);
}

uint64_t sub_1000029B4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v6 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_100002BF4;
  }

  else
  {

    v4 = sub_100002AD0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100002AD0()
{
  v1 = *(v0 + 24);
  sub_100003AE8();

  v2 = sub_1000045A4();
  v3 = sub_100004594();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    sub_100004364();
    *(v5 + 4) = *(v0 + 58);

    _os_log_impl(&_mh_execute_header, v2, v3, "performing StartTrackingIntent %{BOOL}d", v5, 8u);
  }

  else
  {
    v6 = *(v0 + 24);
  }

  v7 = *(v0 + 16);
  sub_100004344();
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100002BF4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_100002C58@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100004364();
  *a1 = v5;
  return result;
}

uint64_t sub_100002C94(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100004374();
}

void (*sub_100002CCC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100004354();
  return sub_100002D40;
}

void sub_100002D40(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100002D90()
{
  result = qword_10000C380;
  if (!qword_10000C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C380);
  }

  return result;
}

unint64_t sub_100002DE8()
{
  result = qword_10000C388;
  if (!qword_10000C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C388);
  }

  return result;
}

uint64_t sub_100002EA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C1D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000043C4();
  v3 = sub_100003B34(v2, qword_10000C508);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100002F68(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003008;

  return sub_100002860(a1, v4);
}

uint64_t sub_100003008()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000030FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003764();
  *a1 = result;
  return result;
}

uint64_t sub_100003124(uint64_t a1)
{
  v2 = sub_1000018D0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000031B4(uint64_t *a1, uint64_t *a2)
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

void sub_1000031FC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100005050;
  v6._countAndFlagsBits = 0xD000000000000025;
  v6._object = 0x8000000100005000;
  v8._object = 0x8000000100005030;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001ALL;
  v2 = sub_1000043A4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_10000C520 = v2;
  *algn_10000C528 = v4;
}

void sub_1000032C0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100004DA0;
  v6._countAndFlagsBits = 0xD000000000000029;
  v6._object = 0x8000000100004D50;
  v8._object = 0x8000000100004D80;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v2 = sub_1000043A4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_10000C530 = v2;
  *algn_10000C538 = v4;
}

void sub_100003384()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100004F80;
  v6._countAndFlagsBits = 0xD00000000000002ALL;
  v6._object = 0x8000000100004F30;
  v8._object = 0x8000000100004F60;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001FLL;
  v2 = sub_1000043A4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_10000C540 = v2;
  *algn_10000C548 = v4;
}

void sub_100003448()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100004E40;
  v6._countAndFlagsBits = 0xD000000000000027;
  v6._object = 0x8000000100004DF0;
  v8._object = 0x8000000100004E20;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001DLL;
  v2 = sub_1000043A4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_10000C550 = v2;
  *algn_10000C558 = v4;
}

void sub_10000350C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100004EE0;
  v6._countAndFlagsBits = 0xD000000000000028;
  v6._object = 0x8000000100004E90;
  v8._object = 0x8000000100004EC0;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0xD00000000000001CLL;
  v2 = sub_1000043A4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_10000C560 = v2;
  *algn_10000C568 = v4;
}

void sub_1000035D0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100004CF0;
  v8._countAndFlagsBits = 0x756F72676B636142;
  v8._object = 0xEF65646F4D20646ELL;
  v6._object = 0x8000000100004D30;
  v6._countAndFlagsBits = 0xD00000000000001FLL;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_1000043A4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_10000C570 = v2;
  *algn_10000C578 = v4;
}

void sub_1000036A0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x8000000100004CF0;
  v6._object = 0x8000000100004C80;
  v8._countAndFlagsBits = 0xD000000000000035;
  v8._object = 0x8000000100004CB0;
  v7.value._countAndFlagsBits = 0;
  v6._countAndFlagsBits = 0xD000000000000026;
  v7.value._object = 0;
  v1.super.isa = v0;
  v2 = sub_1000043A4(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_10000C580 = v2;
  *algn_10000C588 = v4;
}

uint64_t sub_100003764()
{
  v0 = sub_100004394();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (*(*(sub_100003AA0(&qword_10000C3A0, &qword_1000049D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v20[-v6];
  v8 = (*(*(sub_100003AA0(&qword_10000C3A8, &qword_1000049D8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v20[-v9];
  v11 = (*(*(sub_100003AA0(&qword_10000C3B0, &qword_1000049E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v20[-v12];
  v14 = sub_1000043C4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  sub_100003AA0(&qword_10000C3B8, &qword_1000049E8);
  sub_1000043B4();
  (*(v15 + 56))(v13, 1, 1, v14);
  v20[15] = 2;
  v17 = sub_100004584();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = sub_100004334();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  (*(v1 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v0);
  return sub_100004384();
}

uint64_t sub_100003AA0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003AE8()
{
  result = qword_10000C3C0;
  if (!qword_10000C3C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10000C3C0);
  }

  return result;
}

uint64_t sub_100003B34(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003B6C(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100003BFC()
{
  result = qword_10000C400;
  if (!qword_10000C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C400);
  }

  return result;
}

uint64_t sub_100003C50(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000031B4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100003C98()
{
  result = qword_10000C430;
  if (!qword_10000C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C430);
  }

  return result;
}

unint64_t sub_100003CEC()
{
  result = qword_10000C438;
  if (!qword_10000C438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C438);
  }

  return result;
}

uint64_t sub_100003D50()
{
  sub_1000031B4(&qword_10000C3D8, &qword_100004A70);
  sub_1000031B4(&qword_10000C3D0, &qword_100004A68);
  sub_1000031B4(&qword_10000C3C8, &qword_100004A60);
  sub_100003C50(&qword_10000C408, &qword_10000C3C8, &qword_100004A60);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100003E68()
{
  if (qword_10000C1C8 != -1)
  {
    swift_once();
  }

  v0 = qword_10000C4F8;
  v1 = *(qword_10000C4F8 + OBJC_IVAR____TtC32TrackingUIServiceWidgetExtension21SecureTrackingManager_secureTrackingControlOnNotification);
  v2 = sub_100004424();

  v3 = *(v0 + OBJC_IVAR____TtC32TrackingUIServiceWidgetExtension21SecureTrackingManager_secureTrackingControlEnabledNotification);
  v4 = sub_100004424();

  sub_100003AE8();
  v5 = sub_1000045A4();
  v6 = sub_100004594();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109376;
    *(v7 + 4) = v4 != 0;
    *(v7 + 8) = 1024;
    *(v7 + 10) = v2 != 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "querying StartTrackingIntent isEnabled %{BOOL}d isOn %{BOOL}d", v7, 0xEu);
  }

  return (v2 != 0) | ((v4 == 0) << 8);
}

uint64_t sub_100003FC8()
{
  v0 = sub_100003AA0(&qword_10000C448, &unk_100004B60);
  v1 = *(v0 - 8);
  v2 = (*(v1 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v6 - v3;
  sub_100004174();
  sub_1000044C4();
  sub_1000041C8();
  sub_100004494();
  return (*(v1 + 8))(v4, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000040F4();
  sub_100004474();
  return 0;
}

unint64_t sub_1000040F4()
{
  result = qword_10000C440;
  if (!qword_10000C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C440);
  }

  return result;
}

unint64_t sub_100004174()
{
  result = qword_10000C450;
  if (!qword_10000C450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C450);
  }

  return result;
}

unint64_t sub_1000041C8()
{
  result = qword_10000C458;
  if (!qword_10000C458)
  {
    sub_1000031B4(&qword_10000C448, &unk_100004B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C458);
  }

  return result;
}

uint64_t sub_10000422C()
{
  sub_1000031B4(&qword_10000C448, &unk_100004B60);
  sub_1000041C8();
  return swift_getOpaqueTypeConformance2();
}