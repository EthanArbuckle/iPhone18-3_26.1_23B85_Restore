unint64_t sub_10005F560()
{
  result = qword_100120180;
  if (!qword_100120180)
  {
    sub_1000195A0(&qword_100120148);
    sub_10005F618();
    sub_10001B1BC(&qword_10011F7F0, &qword_10011F7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120180);
  }

  return result;
}

unint64_t sub_10005F618()
{
  result = qword_100120188;
  if (!qword_100120188)
  {
    sub_1000195A0(qword_100120190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120188);
  }

  return result;
}

uint64_t sub_10005F6CC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10005F714(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10005F75C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005F7F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1000C97E0();
  __chkstk_darwin(v12 - 8);
  type metadata accessor for NewsTimelineProvider();
  sub_1000C9960();
  swift_bridgeObjectRetain_n();
  sub_1000C97D0();
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a3;
  v13[5] = a4;
  v13[6] = a1;
  v13[7] = a2;

  v14 = sub_1000C9950();
  WitnessTable = swift_getWitnessTable();
  TodayIntentResponseCode.rawValue.getter(v14, WitnessTable);
  type metadata accessor for ContentView();
  type metadata accessor for LazyIntentTimelineProvider();
  sub_10005FB50();
  swift_getWitnessTable();
  return sub_1000CAAE0();
}

uint64_t sub_10005F9E4@<X0>(void (*a1)(void *__return_ptr)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  a1(v12);
  sub_10001E2E4(v12, v12[3]);
  sub_100019558(&qword_10011EFF0);
  result = sub_1000C9820();
  if (v11)
  {
    type metadata accessor for NewsTimelineProvider();
    sub_10002DE48(v12, v9);

    v8 = sub_10009A96C(a2, a3, v10, v9);

    *a4 = v8;
    return sub_10001E37C(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10005FB00()
{

  return _swift_deallocObject(v0, 64, 7);
}

unint64_t sub_10005FB50()
{
  result = qword_100120218;
  if (!qword_100120218)
  {
    type metadata accessor for ContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120218);
  }

  return result;
}

uint64_t sub_10005FBA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsTimelineEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005FC3C()
{
  type metadata accessor for ContentView();
  sub_10005FB50();
  sub_1000CAAF0();

  return swift_getWitnessTable();
}

unint64_t sub_10005FCAC()
{
  result = qword_100120230;
  if (!qword_100120230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120230);
  }

  return result;
}

uint64_t sub_10005FD78()
{
  v0 = sub_100019558(&qword_1001202E0);
  sub_10001A5EC(v0, qword_100134410);
  sub_10001A5B4(v0, qword_100134410);
  sub_1000611D4();
  return sub_1000C9170();
}

uint64_t sub_10005FDFC()
{
  v0 = sub_100019558(&qword_100120278);
  sub_10001A5EC(v0, qword_100134428);
  sub_10001A5B4(v0, qword_100134428);
  sub_1000617A0();
  return sub_1000C90B0();
}

uint64_t sub_10005FE80(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000C9360();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1000C9610();
  v1[6] = swift_task_alloc();
  sub_1000CACC0();
  v1[7] = swift_task_alloc();
  sub_1000C9370();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10005FFC4, 0, 0);
}

uint64_t sub_10005FFC4()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_100019558(&qword_100120240);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000C9380();
  sub_10001B1BC(&qword_1001202E8, &qword_1001202F0);
  *v4 = sub_1000C91C0();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100060178()
{
  v0 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000C9360();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C9610();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000CACC0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C9370();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000C9190();
  sub_10001A5EC(v10, qword_100134440);
  sub_10001A5B4(v10, qword_100134440);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000C9380();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000C9180();
}

uint64_t sub_100060454()
{
  v0 = sub_1000C9370();
  sub_10001A5EC(v0, qword_100134458);
  sub_10001A5B4(v0, qword_100134458);
  return sub_1000C9350();
}

uint64_t sub_1000604B8()
{
  v0 = sub_100019558(&qword_10011D820);
  sub_10001A5EC(v0, qword_100134470);
  v1 = sub_10001A5B4(v0, qword_100134470);
  sub_1000C9040();
  v2 = sub_1000C9050();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100060578()
{
  result = swift_getKeyPath();
  qword_100134488 = result;
  return result;
}

uint64_t sub_1000605A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_1000605C4, 0, 0);
}

uint64_t sub_1000605C4()
{
  sub_1000C8EC0();
  v1 = *(v0 + 16);
  *(v0 + 24) = v1;
  *(v0 + 72) = v1;
  sub_1000C8EC0();
  *(v0 + 145) = *(v0 + 144);
  if (qword_10011CE60 != -1)
  {
    swift_once();
  }

  v2 = qword_100134488;
  *(v0 + 80) = qword_100134488;

  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = sub_10001B1BC(&qword_1001202E8, &qword_1001202F0);
  *(v0 + 96) = v4;
  *v3 = v0;
  v3[1] = sub_100060728;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 145, v2, &type metadata for Bool, v4);
}

uint64_t sub_100060728()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100017FB0;
  }

  else
  {
    v2 = sub_10006087C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10006087C()
{
  sub_1000C8EC0();
  v1 = v0[4];
  v0[5] = v1;
  v2 = qword_100134488;
  v0[14] = v1;
  v0[15] = v2;

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100017DD4;
  v4 = v0[12];

  return AppEntity._value<A, B>(for:)(v0 + 146, v2, v4);
}

uint64_t (*sub_100060954(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000C8EB0();
  return sub_1000180D8;
}

uint64_t (*sub_1000609C8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000C8EB0();
  return sub_10001B354;
}

uint64_t sub_100060A3C()
{
  if (qword_10011CE60 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100060A9C()
{
  result = qword_100120248;
  if (!qword_100120248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120248);
  }

  return result;
}

unint64_t sub_100060AF4()
{
  result = qword_100120250;
  if (!qword_100120250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120250);
  }

  return result;
}

uint64_t sub_100060C04@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CE58 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_10011D820);
  v3 = sub_10001A5B4(v2, qword_100134470);

  return sub_10001AC74(v3, a1);
}

uint64_t sub_100060C88(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001840C;

  return sub_1000605A0(a1, v5, v4);
}

uint64_t sub_100060D34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100061EC4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100060D7C()
{
  result = qword_100120258;
  if (!qword_100120258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120258);
  }

  return result;
}

unint64_t sub_100060DD4()
{
  result = qword_100120260;
  if (!qword_100120260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120260);
  }

  return result;
}

unint64_t sub_100060E2C()
{
  result = qword_100120268;
  if (!qword_100120268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120268);
  }

  return result;
}

uint64_t sub_100060EE4()
{
  if (qword_10011CD58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);

  sub_1000C9680();

  *v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100060FDC()
{
  v1 = NewsCoreUserDefaults();
  v2 = [v1 BOOLForKey:FCNewsURLResolutionSubscriptionStatusSharedPreferenceKey];

  if (v2)
  {
    if (qword_10011CD58 != -1)
    {
      swift_once();
    }

    *(v0 + 16) = *(v0 + 17);

    sub_1000C9690();

    v3 = *(v0 + 8);
  }

  else
  {
    sub_1000617F4();
    swift_allocError();
    *v4 = 1;
    swift_willThrow();
    v3 = *(v0 + 8);
  }

  return v3();
}

uint64_t sub_100061120@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CE40 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_100120278);
  v3 = sub_10001A5B4(v2, qword_100134428);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000611D4()
{
  result = qword_100120280;
  if (!qword_100120280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120280);
  }

  return result;
}

uint64_t sub_100061270()
{
  v0 = qword_100120220;

  return v0;
}

unint64_t sub_1000612AC()
{
  result = qword_100120290;
  if (!qword_100120290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120290);
  }

  return result;
}

uint64_t sub_100061300@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CE38 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_1001202E0);
  v3 = sub_10001A5B4(v2, qword_100134410);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000613B8()
{
  result = qword_100120298;
  if (!qword_100120298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120298);
  }

  return result;
}

unint64_t sub_100061410()
{
  result = qword_1001202A0;
  if (!qword_1001202A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001202A0);
  }

  return result;
}

unint64_t sub_100061468()
{
  result = qword_1001202A8;
  if (!qword_1001202A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001202A8);
  }

  return result;
}

unint64_t sub_1000614C0()
{
  result = qword_1001202B0;
  if (!qword_1001202B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001202B0);
  }

  return result;
}

uint64_t sub_100061514@<X0>(uint64_t *a1@<X8>)
{
  sub_1000617A0();
  result = sub_1000C8EA0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100061554()
{
  sub_10006174C();
  v1 = sub_1000C9150();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10006163C(uint64_t a1)
{
  v2 = sub_1000611D4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10006168C()
{
  result = qword_1001202C8;
  if (!qword_1001202C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001202C8);
  }

  return result;
}

uint64_t sub_1000616E0(uint64_t a1)
{
  v2 = sub_1000614C0();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10006174C()
{
  result = qword_1001202D0;
  if (!qword_1001202D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001202D0);
  }

  return result;
}

unint64_t sub_1000617A0()
{
  result = qword_1001202D8;
  if (!qword_1001202D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001202D8);
  }

  return result;
}

unint64_t sub_1000617F4()
{
  result = qword_1001202F8;
  if (!qword_1001202F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001202F8);
  }

  return result;
}

uint64_t sub_100061848@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_100019558(&qword_10011D8F8);
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v21 - v2;
  v4 = sub_100019558(&qword_10011D900);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  __chkstk_darwin(v4);
  v7 = v21 - v6;
  v8 = sub_100019558(&qword_10011D908);
  v9 = *(v8 - 8);
  v25 = v8;
  v26 = v9;
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v21[1] = "Requires subscription.";
  v21[0] = swift_getKeyPath();
  sub_100019558(&qword_10011D910);
  sub_1000617A0();
  v12 = sub_1000195A0(&qword_10011D918);
  v13 = sub_1000CA100();
  v14 = sub_10001B1BC(&qword_10011D920, &qword_10011D918);
  v15 = sub_10003B248();
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1000CAAC0();
  sub_1000CA040();
  v16 = sub_10001B1BC(&unk_10011D930, &qword_10011D8F8);
  sub_1000CA140();

  (*(v22 + 8))(v3, v1);
  v28 = v1;
  v29 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v23;
  sub_1000CA170();
  (*(v24 + 8))(v7, v18);
  v28 = v18;
  v29 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v19 = v25;
  sub_1000CA130();
  return (*(v26 + 8))(v11, v19);
}

uint64_t sub_100061CB4()
{
  v0 = sub_1000CA100();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100019558(&qword_10011D918);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_1000CA040();
  sub_1000CA6B0();
  sub_1000CA0F0();
  sub_10001B1BC(&qword_10011D920, &qword_10011D918);
  sub_10003B248();
  sub_1000CA460();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100061EC4()
{
  v0 = sub_100019558(&qword_10011D7F8);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000C9140();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100019558(&qword_10011D800);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000C9370();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100019558(&qword_100120300);
  sub_1000C9350();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_1000C8E70();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_1000611D4();
  v23 = sub_1000C8EE0();
  sub_100019558(&qword_10011D810);
  sub_1000C9350();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_1000CAF90();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_1000C8F00();
  return v23;
}

unint64_t sub_100062374()
{
  result = qword_100120308[0];
  if (!qword_100120308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100120308);
  }

  return result;
}

uint64_t sub_1000623C8()
{
  sub_1000195A0(&qword_10011D908);
  sub_1000195A0(&qword_10011D900);
  sub_1000195A0(&qword_10011D8F8);
  sub_10001B1BC(&unk_10011D930, &qword_10011D8F8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000624F0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100062560(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  __chkstk_darwin(a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9940();
  sub_1000CAB20();
  return (*(v4 + 8))(v6, a3);
}

uint64_t sub_100062650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = *(a6 - 8);
  __chkstk_darwin(a1);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9940();
  a8(a1, a2, a3, a4, a6, a7);
  return (*(v15 + 8))(v17, a6);
}

uint64_t sub_100062760(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  __chkstk_darwin(a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9940();
  v6 = sub_1000CAB30();
  (*(v3 + 8))(v5, a2);
  return v6;
}

uint64_t sub_1000628D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10001840C;

  return IntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100062984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100053060;

  return IntentTimelineProvider.relevance()(a1, a2, a3);
}

unint64_t sub_100062A3C()
{
  result = qword_1001203A0;
  if (!qword_1001203A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001203A0);
  }

  return result;
}

uint64_t sub_100062AD4()
{
  v0 = sub_100019558(&qword_1001203E8);
  sub_10001A5EC(v0, qword_100134490);
  sub_10001A5B4(v0, qword_100134490);
  sub_100064500();
  return sub_1000C90B0();
}

uint64_t sub_100062B58(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000C9360();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1000C9610();
  v1[6] = swift_task_alloc();
  sub_1000CACC0();
  v1[7] = swift_task_alloc();
  sub_1000C9370();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100062C9C, 0, 0);
}

uint64_t sub_100062C9C()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_100019558(&qword_1001203B0);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000C9380();
  sub_10001B1BC(&qword_100120458, &qword_100120460);
  *v4 = sub_1000C91C0();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100062E50()
{
  v0 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000C9360();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C9610();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000CACC0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C9370();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000C9190();
  sub_10001A5EC(v10, qword_1001344A8);
  sub_10001A5B4(v10, qword_1001344A8);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000C9380();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000C9180();
}

uint64_t sub_10006312C()
{
  v0 = sub_100019558(&qword_100120450);
  sub_10001A5EC(v0, qword_1001344C0);
  sub_10001A5B4(v0, qword_1001344C0);
  sub_100063F2C();
  return sub_1000C9170();
}

uint64_t sub_1000631B0()
{
  v0 = sub_1000C9370();
  sub_10001A5EC(v0, qword_1001344D8);
  sub_10001A5B4(v0, qword_1001344D8);
  return sub_1000C9350();
}

uint64_t sub_100063214()
{
  v0 = sub_100019558(&qword_10011D820);
  sub_10001A5EC(v0, qword_1001344F0);
  v1 = sub_10001A5B4(v0, qword_1001344F0);
  sub_1000C9040();
  v2 = sub_1000C9050();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000632D4()
{
  result = swift_getKeyPath();
  qword_100134508 = result;
  return result;
}

uint64_t sub_1000632FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_100063320, 0, 0);
}

uint64_t sub_100063320()
{
  sub_1000C8EC0();
  v1 = *(v0 + 16);
  *(v0 + 24) = v1;
  *(v0 + 72) = v1;
  sub_1000C8EC0();
  *(v0 + 145) = *(v0 + 144);
  if (qword_10011CE90 != -1)
  {
    swift_once();
  }

  v2 = qword_100134508;
  *(v0 + 80) = qword_100134508;

  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = sub_10001B1BC(&qword_100120458, &qword_100120460);
  *(v0 + 96) = v4;
  *v3 = v0;
  v3[1] = sub_100063484;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 145, v2, &type metadata for Bool, v4);
}

uint64_t sub_100063484()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100017FB0;
  }

  else
  {
    v2 = sub_1000635D8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000635D8()
{
  sub_1000C8EC0();
  v1 = v0[4];
  v0[5] = v1;
  v2 = qword_100134508;
  v0[14] = v1;
  v0[15] = v2;

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100017DD4;
  v4 = v0[12];

  return AppEntity._value<A, B>(for:)(v0 + 146, v2, v4);
}

uint64_t (*sub_1000636B0(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000C8EB0();
  return sub_1000180D8;
}

uint64_t (*sub_100063724(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000C8EB0();
  return sub_10001B354;
}

uint64_t sub_100063798()
{
  if (qword_10011CE90 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000637F8()
{
  result = qword_1001203B8;
  if (!qword_1001203B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001203B8);
  }

  return result;
}

unint64_t sub_100063850()
{
  result = qword_1001203C0;
  if (!qword_1001203C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001203C0);
  }

  return result;
}

uint64_t sub_100063960@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CE88 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_10011D820);
  v3 = sub_10001A5B4(v2, qword_1001344F0);

  return sub_10001AC74(v3, a1);
}

uint64_t sub_1000639E4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001840C;

  return sub_1000632FC(a1, v5, v4);
}

uint64_t sub_100063A90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100064BD0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100063AD8()
{
  result = qword_1001203C8;
  if (!qword_1001203C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001203C8);
  }

  return result;
}

unint64_t sub_100063B30()
{
  result = qword_1001203D0;
  if (!qword_1001203D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001203D0);
  }

  return result;
}

unint64_t sub_100063B88()
{
  result = qword_1001203D8;
  if (!qword_1001203D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001203D8);
  }

  return result;
}

uint64_t sub_100063C40()
{
  if (qword_10011CD58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);

  sub_1000C9680();

  *v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100063D38()
{
  if (qword_10011CD58 != -1)
  {
    swift_once();
  }

  sub_1000C9680();

  if (*(v0 + 16) == 1)
  {
    *(v0 + 16) = *(v0 + 17);

    sub_1000C9690();
  }

  else
  {
    sub_10001A6F8();
    swift_allocError();
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100063E78@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CE68 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_1001203E8);
  v3 = sub_10001A5B4(v2, qword_100134490);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100063F2C()
{
  result = qword_1001203F0;
  if (!qword_1001203F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001203F0);
  }

  return result;
}

uint64_t sub_100063FC8()
{
  v0 = qword_100120390;

  return v0;
}

unint64_t sub_100064004()
{
  result = qword_100120400;
  if (!qword_100120400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120400);
  }

  return result;
}

uint64_t sub_100064058@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CE78 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_100120450);
  v3 = sub_10001A5B4(v2, qword_1001344C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100064110()
{
  result = qword_100120408;
  if (!qword_100120408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120408);
  }

  return result;
}

unint64_t sub_100064168()
{
  result = qword_100120410;
  if (!qword_100120410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120410);
  }

  return result;
}

unint64_t sub_1000641C0()
{
  result = qword_100120418;
  if (!qword_100120418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120418);
  }

  return result;
}

unint64_t sub_100064218()
{
  result = qword_100120420;
  if (!qword_100120420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120420);
  }

  return result;
}

uint64_t sub_10006426C@<X0>(uint64_t *a1@<X8>)
{
  sub_100064500();
  result = sub_1000C8EA0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000642AC()
{
  sub_1000644AC();
  v1 = sub_1000C9150();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100064394(uint64_t a1)
{
  v2 = sub_100063F2C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000643E4()
{
  result = qword_100120438;
  if (!qword_100120438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120438);
  }

  return result;
}

uint64_t sub_100064440(uint64_t a1)
{
  v2 = sub_100064218();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000644AC()
{
  result = qword_100120440;
  if (!qword_100120440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120440);
  }

  return result;
}

unint64_t sub_100064500()
{
  result = qword_100120448;
  if (!qword_100120448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120448);
  }

  return result;
}

uint64_t sub_100064554@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_100019558(&qword_10011D8F8);
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v21 - v2;
  v4 = sub_100019558(&qword_10011D900);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  __chkstk_darwin(v4);
  v7 = v21 - v6;
  v8 = sub_100019558(&qword_10011D908);
  v9 = *(v8 - 8);
  v25 = v8;
  v26 = v9;
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v21[1] = "ally Download Magazine Issues";
  v21[0] = swift_getKeyPath();
  sub_100019558(&qword_10011D910);
  sub_100064500();
  v12 = sub_1000195A0(&qword_10011D918);
  v13 = sub_1000CA100();
  v14 = sub_10001B1BC(&qword_10011D920, &qword_10011D918);
  v15 = sub_10003B248();
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1000CAAC0();
  sub_1000CA040();
  v16 = sub_10001B1BC(&unk_10011D930, &qword_10011D8F8);
  sub_1000CA140();

  (*(v22 + 8))(v3, v1);
  v28 = v1;
  v29 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v23;
  sub_1000CA170();
  (*(v24 + 8))(v7, v18);
  v28 = v18;
  v29 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v19 = v25;
  sub_1000CA130();
  return (*(v26 + 8))(v11, v19);
}

uint64_t sub_1000649C0()
{
  v0 = sub_1000CA100();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100019558(&qword_10011D918);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_1000CA040();
  sub_1000CA6B0();
  sub_1000CA0F0();
  sub_10001B1BC(&qword_10011D920, &qword_10011D918);
  sub_10003B248();
  sub_1000CA460();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100064BD0()
{
  v0 = sub_100019558(&qword_10011D7F8);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000C9140();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100019558(&qword_10011D800);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000C9370();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100019558(&qword_100120468);
  sub_1000C9350();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_1000C8E70();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_100063F2C();
  v23 = sub_1000C8EE0();
  sub_100019558(&qword_10011D810);
  sub_1000C9350();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_1000CAF90();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_1000C8F00();
  return v23;
}

uint64_t sub_10006506C()
{
  sub_1000195A0(&qword_10011D908);
  sub_1000195A0(&qword_10011D900);
  sub_1000195A0(&qword_10011D8F8);
  sub_10001B1BC(&unk_10011D930, &qword_10011D8F8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100065194(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100050CF0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_1000A4378(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_1000CB360();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_100031844(a1, &qword_100120A50);
    sub_10006E5E4(a2, v9);
    v7 = sub_1000CB360();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_100031844(v9, &qword_100120A50);
  }

  return result;
}

uint64_t sub_1000652B0(uint64_t a1, uint64_t a2)
{
  v5 = sub_100019558(&qword_1001205E8);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for ImageStore.Image(0);
  __chkstk_darwin(v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_100031844(a1, &qword_1001205E8);
    sub_10006E6C0(a2, v7);
    sub_1000703B8(a2, type metadata accessor for ImageStore.Key);
    return sub_100031844(v7, &qword_1001205E8);
  }

  else
  {
    sub_100070450(a1, v10, type metadata accessor for ImageStore.Image);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    sub_1000A46C4(v10, a2, isUniquelyReferenced_nonNull_native);
    result = sub_1000703B8(a2, type metadata accessor for ImageStore.Key);
    *v2 = v15;
  }

  return result;
}

void *sub_100065498(void (*a1)(_OWORD *), uint64_t a2)
{
  v29 = a1;
  v4 = sub_100019558(&qword_1001205B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v25 = type metadata accessor for Item(0);
  v7 = *(v25 - 8);
  v8 = __chkstk_darwin(v25);
  v24 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v23 = &v20 - v10;
  v11 = sub_1000C9390();
  v20 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB020();
  sub_100070520(&qword_1001205C0, &type metadata accessor for NSFastEnumerationIterator);
  sub_1000CB190();
  if (v28)
  {
    v21 = v7;
    v14 = (v7 + 48);
    v15 = &_swiftEmptyArrayStorage;
    v22 = a2;
    while (1)
    {
      sub_100050CF0(&v27, v26);
      v29(v26);
      if (v2)
      {
        break;
      }

      sub_10001E37C(v26);
      if ((*v14)(v6, 1, v25) == 1)
      {
        sub_100031844(v6, &qword_1001205B8);
      }

      else
      {
        v16 = v23;
        sub_100070450(v6, v23, type metadata accessor for Item);
        sub_100070450(v16, v24, type metadata accessor for Item);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_10006E094(0, v15[2] + 1, 1, v15, &unk_1001205C8, &unk_1000D7D78, type metadata accessor for Item);
        }

        v18 = v15[2];
        v17 = v15[3];
        if (v18 >= v17 >> 1)
        {
          v15 = sub_10006E094(v17 > 1, v18 + 1, 1, v15, &unk_1001205C8, &unk_1000D7D78, type metadata accessor for Item);
        }

        v15[2] = v18 + 1;
        sub_100070450(v24, v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, type metadata accessor for Item);
      }

      sub_1000CB190();
      if (!v28)
      {
        goto LABEL_13;
      }
    }

    sub_10001E37C(v26);
    (*(v20 + 8))(v13, v11);
  }

  else
  {
    v15 = &_swiftEmptyArrayStorage;
LABEL_13:
    (*(v20 + 8))(v13, v11);
  }

  return v15;
}

uint64_t sub_1000658C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v33 = a4;
  v35 = a3;
  v36 = a1;
  v37 = a2;
  v8 = type metadata accessor for ContentServiceRequest();
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C95D0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C95C0();
  v15 = sub_1000C95B0();
  v32 = v15;
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  sub_100019558(&unk_10011E820);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000D3D20;
  *(v18 + 56) = &type metadata for String;
  v19 = sub_100024C50();
  *(v18 + 64) = v19;
  *(v18 + 32) = v15;
  *(v18 + 40) = v17;
  v38 = 0;
  v39 = 0xE000000000000000;

  sub_1000CB340();
  v20 = v38;
  v21 = v39;
  *(v18 + 96) = &type metadata for String;
  *(v18 + 104) = v19;
  *(v18 + 72) = v20;
  *(v18 + 80) = v21;
  sub_10001F934(0, &qword_10011F5F0);
  v22 = sub_1000CB160();
  sub_1000CB060();
  sub_1000C9BE0();

  sub_10001E2E4((a6 + 32), *(a6 + 56));
  v23 = *a5;
  sub_1000704B8(a5, v10, type metadata accessor for ContentServiceRequest);
  v24 = (*(v34 + 80) + 40) & ~*(v34 + 80);
  v25 = (v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  v27 = v33;
  v26[2] = v35;
  v26[3] = v27;
  v26[4] = a6;
  sub_100070450(v10, v26 + v24, type metadata accessor for ContentServiceRequest);
  v28 = (v26 + v25);
  v29 = v37;
  *v28 = v36;
  v28[1] = v29;
  v30 = (v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v30 = v32;
  v30[1] = v17;

  sub_100033D74(v23, sub_10006DA40, v26);
}

void sub_100065C20(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void), unint64_t a6, uint64_t a7, id *a8, void (*a9)(void *), uint64_t a10, uint64_t a11, uint64_t a12)
{
  v93 = a7;
  v94 = a5;
  v91 = a11;
  v92 = a12;
  v90 = a10;
  v88 = a8;
  v89 = a9;
  v17 = sub_1000C9610();
  __chkstk_darwin(v17 - 8);
  v18 = sub_1000CACC0();
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for TodayContent();
  v20 = __chkstk_darwin(v19 - 8);
  v22 = (&v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v24 = (&v77 - v23);
  v25 = type metadata accessor for ContentServiceRequest();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  if (a1 && a2 && a3)
  {
    v83 = v27;
    v84 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = a1;

    v87 = a3;
    v29 = [v28 sections];
    v30 = [v29 count];

    if (v30 < 1)
    {

      sub_1000CACB0();
      sub_1000C95E0();
      v43 = sub_1000CAD40();
      v45 = v44;
      sub_100069D80(v88, 1, v22);
      sub_10008C7B8(v43, v45, v24);

      sub_1000703B8(v22, type metadata accessor for TodayContent);
      v89(v24);

      sub_1000703B8(v24, type metadata accessor for TodayContent);
    }

    else
    {
      v31 = v87;
      v81 = a2;
      sub_100019558(&unk_10011E820);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1000D3410;
      *(v32 + 56) = &type metadata for String;
      *(v32 + 64) = sub_100024C50();
      v33 = v92;
      *(v32 + 32) = v91;
      *(v32 + 40) = v33;
      sub_10001F934(0, &qword_10011F5F0);

      v34 = sub_1000CB160();
      sub_1000CB060();
      sub_1000C9BE0();

      v86 = v28;
      v35 = NTTodayResults.allItems.getter();
      v36 = v35;
      v96 = &_swiftEmptyArrayStorage;
      v37 = v35 & 0xFFFFFFFFFFFFFF8;
      if (v35 >> 62)
      {
LABEL_34:
        v38 = sub_1000CB3A0();
      }

      else
      {
        v38 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v39 = v31;
      v82 = a6;
      if (v38)
      {
        a6 = 0;
        v85 = &_swiftEmptyArrayStorage;
        do
        {
          v40 = a6;
          while (1)
          {
            if ((v36 & 0xC000000000000001) != 0)
            {
              sub_1000CB2A0();
              a6 = v40 + 1;
              if (__OFADD__(v40, 1))
              {
                goto LABEL_32;
              }
            }

            else
            {
              if (v40 >= *(v37 + 16))
              {
                goto LABEL_33;
              }

              swift_unknownObjectRetain();
              a6 = v40 + 1;
              if (__OFADD__(v40, 1))
              {
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
                goto LABEL_34;
              }
            }

            v95 = &OBJC_PROTOCOL___NTHeadlineProviding;
            if (swift_dynamicCastObjCProtocolConditional())
            {
              break;
            }

            swift_unknownObjectRelease();
            ++v40;
            if (a6 == v38)
            {
              v39 = v31;
              goto LABEL_31;
            }
          }

          sub_1000CAEB0();
          if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v85 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_1000CAF10();
          }

          sub_1000CAF40();
          v85 = v96;
          v39 = v31;
        }

        while (a6 != v38);
      }

      else
      {
        v85 = &_swiftEmptyArrayStorage;
      }

LABEL_31:

      __chkstk_darwin(v46);
      v47 = v88;
      *(&v77 - 4) = v39;
      *(&v77 - 3) = v47;
      v48 = v93;
      v49 = v85;
      *(&v77 - 2) = v93;
      *(&v77 - 1) = v49;
      sub_100019558(&qword_100120558);
      swift_allocObject();
      v50 = sub_1000C9A00();
      v80 = v50;

      __chkstk_darwin(v51);
      *(&v77 - 4) = v86;
      *(&v77 - 3) = v48;
      *(&v77 - 2) = v47;
      sub_100019558(&qword_100120560);
      swift_allocObject();
      v85 = sub_1000C9A00();
      v52 = __chkstk_darwin(v85);
      *(&v77 - 2) = v50;
      *(&v77 - 1) = v52;
      sub_100019558(&qword_100120568);
      v79 = sub_1000C9A20();
      sub_10001F934(0, &qword_100120570);
      v78 = sub_1000CB0C0();
      v53 = v84;
      sub_1000704B8(v47, v84, type metadata accessor for ContentServiceRequest);
      v54 = (*(v83 + 80) + 16) & ~*(v83 + 80);
      v55 = (v26 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
      v56 = (v55 + 15) & 0xFFFFFFFFFFFFFFF8;
      v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
      v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
      v59 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
      v60 = (v59 + 23) & 0xFFFFFFFFFFFFFFF8;
      v61 = swift_allocObject();
      sub_100070450(v53, v61 + v54, type metadata accessor for ContentServiceRequest);
      v62 = v86;
      *(v61 + v55) = v86;
      v63 = v87;
      *(v61 + v56) = v87;
      *(v61 + v57) = v81;
      v64 = v93;
      *(v61 + v58) = v93;
      v65 = (v61 + v59);
      v66 = v92;
      *v65 = v91;
      v65[1] = v66;
      v67 = (v61 + v60);
      v68 = v90;
      *v67 = v89;
      v67[1] = v68;
      v69 = (v61 + ((v60 + 23) & 0xFFFFFFFFFFFFFFF8));
      v70 = v94;
      v71 = v82;
      *v69 = v94;
      v69[1] = v71;
      v72 = v62;
      v73 = v63;

      v74 = v78;
      sub_1000C99B0();

      v75 = swift_allocObject();
      v75[2] = v64;
      v75[3] = v70;
      v75[4] = v71;

      v76 = sub_1000C9990();
      sub_1000C99C0();
    }
  }

  else
  {
    if (a4)
    {
      v41 = a4;
    }

    else
    {
      sub_10006F148();
      v41 = swift_allocError();
      *v42 = 0;
    }

    swift_errorRetain();
    v94(v41);
  }
}

void sub_100066550(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, id *a6, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = [a5 widgetConfig];
  if (v13)
  {
    v14 = v13;
    if (([v13 contentPrefetchEnabled] & 1) != 0 && (v15 = a6 + *(type metadata accessor for ContentServiceRequest() + 20), (v15[*(type metadata accessor for LayoutContext() + 48)] & 1) == 0))
    {
      v16 = *(a7 + 88);
      sub_100019558(&qword_100120618);
      isa = sub_1000CAEC0().super.isa;
      v18 = [*a6 qualityOfService];
      v19 = swift_allocObject();
      *(v19 + 16) = sub_1000705A0;
      *(v19 + 24) = v12;
      v21[4] = sub_100070618;
      v21[5] = v19;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 1107296256;
      v21[2] = sub_10006678C;
      v21[3] = &unk_10010E8F8;
      v20 = _Block_copy(v21);

      [v16 prefetchContentForHeadlines:isa withQualityOfService:v18 completionHandler:v20];
      _Block_release(v20);
    }

    else
    {

      v21[0] = sub_100050D00(&_swiftEmptyArrayStorage);
      a1(v21);
    }
  }

  else
  {

    v21[0] = sub_100050D00(&_swiftEmptyArrayStorage);
    a1(v21);
  }
}

uint64_t sub_10006678C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000C9480();
  sub_10001F934(0, &qword_100120620);
  sub_100070520(&qword_1001205F0, &type metadata accessor for URL);
  v2 = sub_1000CAC10();

  v1(v2);
}

void sub_100066864(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, id *a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;

  v13 = [a5 banner];
  if (v13)
  {
    v14 = v13;
    v15 = *(a6 + 88);
    v16 = [*a7 qualityOfService];
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1000705A0;
    *(v17 + 24) = v12;
    v19[4] = sub_1000705D8;
    v19[5] = v17;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 1107296256;
    v19[2] = sub_1000669E0;
    v19[3] = &unk_10010E880;
    v18 = _Block_copy(v19);

    [v15 prefetchContentForBanner:v14 withQualityOfService:v16 completionHandler:v18];
    _Block_release(v18);
  }

  else
  {

    v19[0] = 0;
    a1(v19);
  }
}

void sub_1000669E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_100066A48(unsigned int (***a1)(char *, uint64_t, uint64_t), id *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t), uint64_t a10, void (*a11)(unint64_t))
{
  v205 = a8;
  v204 = a7;
  v215 = a6;
  v226 = a5;
  v225 = a4;
  v234 = a3;
  v13 = sub_100019558(&qword_100120578);
  __chkstk_darwin(v13 - 8);
  v199 = &v194 - v14;
  v15 = sub_100019558(&unk_100120580);
  __chkstk_darwin(v15 - 8);
  v17 = &v194 - v16;
  v231 = type metadata accessor for Section();
  v219 = *(v231 - 8);
  v18 = __chkstk_darwin(v231);
  v230 = &v194 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v217 = &v194 - v20;
  v21 = sub_100019558(&qword_10011E850);
  v22 = __chkstk_darwin(v21 - 8);
  v235 = &v194 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v221 = &v194 - v24;
  v25 = sub_100019558(&unk_100120590);
  __chkstk_darwin(v25 - 8);
  v210 = (&v194 - v26);
  v233 = type metadata accessor for TodayContent();
  v198 = *(v233 - 8);
  __chkstk_darwin(v233);
  v203 = (&v194 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_100019558(&unk_10011E590);
  v29 = __chkstk_darwin(v28 - 8);
  v201 = &v194 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v200 = &v194 - v32;
  v33 = __chkstk_darwin(v31);
  v209 = &v194 - v34;
  v35 = __chkstk_darwin(v33);
  v207 = &v194 - v36;
  __chkstk_darwin(v35);
  v213 = &v194 - v37;
  v38 = sub_100019558(&qword_1001205A0);
  v39 = __chkstk_darwin(v38 - 8);
  v208 = (&v194 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __chkstk_darwin(v39);
  v206 = &v194 - v42;
  v43 = __chkstk_darwin(v41);
  v214 = (&v194 - v44);
  __chkstk_darwin(v43);
  v216 = (&v194 - v45);
  v218 = sub_1000C95A0();
  v220 = *(v218 - 8);
  __chkstk_darwin(v218);
  v223 = &v194 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_1000C95D0();
  v229 = *(v232 - 1);
  __chkstk_darwin(v232);
  v48 = &v194 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for LayoutContext();
  v50 = (v49 - 8);
  v51 = __chkstk_darwin(v49);
  v53 = &v194 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v51);
  v55 = &v194 - v54;
  v57 = *a1;
  v56 = a1[1];
  v58 = a2 + *(type metadata accessor for ContentServiceRequest() + 20);
  v224 = v56;
  v211 = v56;
  v222 = v57;

  [v234 headlineScale];
  v60 = v59;
  v61 = *v58;
  v62 = *(v58 + 1);
  v63 = *(v58 + 2);
  v64 = *(v58 + 3);
  v65 = *(v58 + 4);
  v66 = v50[10];
  v67 = sub_1000CA0B0();
  (*(*(v67 - 8) + 16))(&v55[v66], &v58[v66], v67);
  v68 = *&v58[v50[11]];
  v69 = v58[v50[14]];
  *v55 = v61;
  *(v55 + 1) = v62;
  *(v55 + 2) = v63;
  *(v55 + 3) = v64;
  *(v55 + 4) = v65;
  *&v55[v50[11]] = v68;
  *&v55[v50[12]] = v60;
  v55[v50[13]] = 0;
  v55[v50[14]] = v69;
  sub_1000C95C0();
  v70 = sub_1000C95B0();
  v72 = v71;
  (*(v229 + 8))(v48, v232);
  v212 = v55;
  v232 = v53;
  sub_1000704B8(v55, v53, type metadata accessor for LayoutContext);
  v228 = a2;
  result = [*a2 request];
  if (result)
  {
    v74 = result;
    v75 = [result tagID];

    if (v75)
    {
      v76 = sub_1000CAD00();
      v78 = v77;
    }

    else
    {
      v76 = 0;
      v78 = 0;
    }

    v79 = v215;
    v80 = v226;
    v81 = v223;
    sub_1000C9590();
    type metadata accessor for TrackableWidgetState();
    v82 = swift_allocObject();
    v220[4](v82 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_contentFetchDate, v81, v218);
    v83 = (v82 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_entryID);
    *v83 = v70;
    v83[1] = v72;
    v84 = v234;
    *(v82 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_results) = v234;
    v85 = v225;
    *(v82 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_fetchInfo) = v225;
    sub_100070450(v232, v82 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_layoutContext, type metadata accessor for LayoutContext);
    v86 = (v82 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_contentID);
    *v86 = v76;
    v86[1] = v78;
    *(v82 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_appearanceType) = 0;
    v87 = v82 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_visibleRect;
    *v87 = 0u;
    *(v87 + 16) = 0u;
    *(v87 + 32) = 1;
    *(v82 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_stackKind) = 0;
    *(v82 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_stackLocation) = 0;
    v88 = v84;
    v89 = v85;
    v90 = sub_100068478(v88, v224, v80);
    v91 = v216;
    v92 = v228;
    v93 = v227;
    sub_100068A10(v228, v79, v216);
    if (v93)
    {

      a11(v93);

      return sub_1000703B8(v212, type metadata accessor for LayoutContext);
    }

    v224 = v89;
    v202 = v82;
    v94 = v214;
    sub_10002DFB4(v91, v214, &qword_1001205A0);
    v95 = sub_100019558(&qword_1001205A8);
    v226 = *(*(v95 - 8) + 48);
    v96 = (v226)(v94, 1, v95);
    v227 = v95;
    v234 = 0;
    if (v96 == 1)
    {
      sub_100031844(v94, &qword_1001205A0);
      v97 = sub_1000C9480();
      v98 = v213;
      (*(*(v97 - 8) + 56))(v213, 1, 1, v97);
    }

    else
    {

      v99 = v88;
      v100 = *(v95 + 48);
      v101 = sub_1000C9480();
      v102 = v94;
      v103 = v101;
      v104 = *(v101 - 8);
      v105 = &v102[v100];
      v88 = v99;
      v92 = v228;
      v98 = v213;
      (*(v104 + 32))(v213, v105, v101);
      (*(v104 + 56))(v98, 0, 1, v103);
    }

    v213 = v88;
    v232 = sub_10006FBB0(v92, v88, v90, v98);
    sub_100031844(v98, &unk_10011E590);
    v106 = *(v90 + 16);
    if (v106)
    {
      v107 = sub_10006E460(*(v90 + 16), 0);
      v108 = *(sub_1000C9480() - 8);
      v109 = sub_10006F648(&v238, &v107[(*(v108 + 80) + 32) & ~*(v108 + 80)], v106, v90);
      sub_100031714();
      if (v109 == v106)
      {
LABEL_14:
        v110 = sub_1000C9480();
        isa = sub_1000CAEC0().super.isa;

        NTDeleteOnDiskAssets();

        sub_100068C38(v92, v213, v232);
        v229 = v112;
        v113 = *(v79 + 72);
        v114 = *(v79 + 136);
        v115 = v206;
        sub_10002DFB4(v216, v206, &qword_1001205A0);
        v116 = v227;
        if ((v226)(v115, 1, v227) == 1)
        {
          v117 = v113;
          v118 = v114;
          sub_100031844(v115, &qword_1001205A0);
          v119 = *(v110 - 8);
          v120 = v119;
          v121 = 1;
          v122 = v207;
        }

        else
        {
          v123 = v113;
          v124 = v114;

          v125 = *(v116 + 48);
          v119 = *(v110 - 8);
          v120 = v119;
          v126 = v115 + v125;
          v122 = v207;
          (*(v119 + 32))(v207, v126, v110);
          v121 = 0;
        }

        (*(v120 + 56))(v122, v121, 1, v110);
        v225 = type metadata accessor for EngagementURLProvider();
        v127 = swift_allocObject();
        v128 = v122;
        v129 = v127;
        *(v127 + 2) = v113;
        *(v127 + 3) = v114;
        v130 = v202;
        v131 = v222;
        *(v127 + 4) = v202;
        *(v127 + 5) = v131;
        sub_10002DB04(v128, &v127[OBJC_IVAR____TtC10NewsToday221EngagementURLProvider_sharedDirectoryFileUrl], &unk_10011E590);

        v132 = [v213 debugInspection];
        v133 = v208;
        if (v132)
        {
          if (qword_10011CD50 != -1)
          {
            v193 = v132;
            swift_once();
            v132 = v193;
          }

          v134 = v132;
          sub_10002800C(v132);

          v130 = v202;
        }

        v239 = v225;
        v240 = &off_10010FD08;
        v238 = v129;
        v135 = *(v130 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_appearanceType);
        v207 = v129;

        v136 = v224;
        sub_1000695E4(v224, v228, v135, v209);
        sub_10002DFB4(v216, v133, &qword_1001205A0);
        v137 = v227;
        if ((v226)(v133, 1, v227) == 1)
        {
          sub_100031844(v133, &qword_1001205A0);
          v206 = 0;
          v197 = 0;
        }

        else
        {
          v138 = v133[1];
          v206 = *v133;
          v197 = v138;
          (*(v119 + 8))(v133 + *(v137 + 48), v110);
        }

        v139 = v233;
        v140 = v210;
        v208 = sub_10006F8EC();
        v196 = v141;
        v195 = v136;
        v142 = [v213 banner];
        if (v142)
        {
          v143 = v200;
          v144 = v142;
          sub_10007B7F4(v142, &v238, v200);
          v145 = sub_10007BAC0(v144, v232);
          v146 = v201;
          sub_10002DFB4(v143, v201, &unk_10011E590);
          sub_10001B89C(v144, v146, v145, v140);
          sub_100031844(v143, &unk_10011E590);
          v147 = 0;
        }

        else
        {
          v147 = 1;
        }

        v148 = type metadata accessor for Banner();
        v149 = 1;
        (*(*(v148 - 8) + 56))(v140, v147, 1, v148);
        LODWORD(v228) = sub_10008CE04(v213);
        v150 = NewsCoreUserDefaults();
        v151 = sub_1000CACD0();
        v152 = [v150 BOOLForKey:v151];

        if (v152)
        {
          sub_1000C9590();
          v149 = 0;
        }

        v153 = v220 + 7;
        v214 = v220[7];
        (v214)(v221, v149, 1, v218);
        v154 = *sub_10001E2E4(&v238, v239);
        v237[3] = v225;
        v237[4] = &off_10010FD08;
        v237[0] = v154;

        v155 = [v213 sections];
        v156 = [v155 array];

        v157 = sub_1000CAED0();
        v158 = sub_10007B71C(v157);

        if (v158 >> 62)
        {
          goto LABEL_56;
        }

        v159 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v159)
        {
LABEL_57:
          v161 = &_swiftEmptyArrayStorage;
LABEL_58:

          sub_10001E37C(v237);
          sub_100031844(v221, &qword_10011E850);
          v177 = v203;
          v178 = v209;
          sub_10008CEF0(v209, &v238, v203 + v139[9]);
          sub_100031844(v178, &unk_10011E590);
          sub_10001E37C(&v238);
          v179 = v213;
          *v177 = v213;
          sub_10002DB04(v210, v177 + v139[5], &unk_100120590);
          *(v177 + v139[6]) = v161;
          v180 = v177;
          *(v177 + v139[7]) = v195;
          *(v177 + v139[8]) = 0;
          *(v177 + v139[10]) = v202;
          v181 = (v177 + v139[11]);
          v182 = v197;
          *v181 = v206;
          v181[1] = v182;
          v183 = (v177 + v139[12]);
          v184 = v196;
          *v183 = v208;
          v183[1] = v184;
          v185 = v215;
          sub_10001E2E4((v215 + 96), *(v215 + 120));
          v186 = v179;
          v187 = sub_10002E87C();
          [v187 tickle];

          sub_100019558(&unk_10011E820);
          v188 = swift_allocObject();
          *(v188 + 16) = xmmword_1000D3410;
          *(v188 + 56) = &type metadata for String;
          *(v188 + 64) = sub_100024C50();
          v189 = v205;
          *(v188 + 32) = v204;
          *(v188 + 40) = v189;
          sub_10001F934(0, &qword_10011F5F0);

          v190 = sub_1000CB160();
          sub_1000CB060();
          sub_1000C9BE0();

          v191 = *(v185 + 16);
          if (v191)
          {
            v192 = v199;
            sub_1000704B8(v180, v199, type metadata accessor for TodayContent);
            (*(v198 + 56))(v192, 0, 1, v139);

            v191(v192, 0);
            sub_100034478(v191);
            sub_100031844(v192, &qword_100120578);
          }

          a9(v180);

          sub_1000703B8(v180, type metadata accessor for TodayContent);
          sub_100031844(v216, &qword_1001205A0);
          return sub_1000703B8(v212, type metadata accessor for LayoutContext);
        }

LABEL_31:
        v220 = v153;
        v160 = 0;
        v227 = v158 & 0xC000000000000001;
        v226 = v158 & 0xFFFFFFFFFFFFFF8;
        v223 = (v219 + 56);
        v161 = &_swiftEmptyArrayStorage;
        v222 = (v219 + 48);
        v225 = v158;
        v224 = v159;
        while (1)
        {
          if (v227)
          {
            v162 = sub_1000CB2A0();
          }

          else
          {
            if (v160 >= *(v226 + 16))
            {
              goto LABEL_55;
            }

            v162 = *(v158 + 8 * v160 + 32);
          }

          v153 = v162;
          v163 = (v160 + 1);
          if (__OFADD__(v160, 1))
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            v159 = sub_1000CB3A0();
            if (!v159)
            {
              goto LABEL_57;
            }

            goto LABEL_31;
          }

          sub_10002DE48(v237, &v236);
          if (!((v160 != 0) | v228 & 1))
          {
            break;
          }

          if (!v160)
          {
            v164 = 1;
            goto LABEL_43;
          }

          (v214)(v235, 1, 1, v218);
          v164 = 0;
LABEL_44:
          v165 = [v153 items];
          __chkstk_darwin(v165);
          *(&v194 - 4) = v232;
          *(&v194 - 3) = &v236;
          *(&v194 - 2) = v229;
          v166 = v234;
          v167 = sub_100065498(sub_100070398, (&v194 - 6));
          v234 = v166;

          v168 = [v153 backingTagID];
          if (v168)
          {
            v169 = v168;
            v170 = [objc_opt_self() nu_safeColorForIdentifier:v168];
          }

          else
          {
            v170 = 0;
          }

          v171 = v231;
          sub_10002C400(v153, &v236, &v17[*(v231 + 32)]);
          *v17 = v170;
          *(v17 + 1) = v153;
          *(v17 + 2) = v167;
          v17[24] = v164;
          sub_10002DB04(v235, &v17[*(v171 + 36)], &qword_10011E850);
          v172 = v153;
          sub_10001E37C(&v236);
          (*v223)(v17, 0, 1, v171);

          if ((*v222)(v17, 1, v171) == 1)
          {
            sub_100031844(v17, &unk_100120580);
            v139 = v233;
            v153 = v224;
          }

          else
          {
            v173 = v217;
            sub_100070450(v17, v217, type metadata accessor for Section);
            sub_100070450(v173, v230, type metadata accessor for Section);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v139 = v233;
            v153 = v224;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v161 = sub_10006E094(0, *(v161 + 2) + 1, 1, v161, &qword_1001205B0, &unk_1000D7D68, type metadata accessor for Section);
            }

            v176 = *(v161 + 2);
            v175 = *(v161 + 3);
            if (v176 >= v175 >> 1)
            {
              v161 = sub_10006E094(v175 > 1, v176 + 1, 1, v161, &qword_1001205B0, &unk_1000D7D68, type metadata accessor for Section);
            }

            *(v161 + 2) = v176 + 1;
            sub_100070450(v230, &v161[((*(v219 + 80) + 32) & ~*(v219 + 80)) + *(v219 + 72) * v176], type metadata accessor for Section);
          }

          ++v160;
          v158 = v225;
          if (v163 == v153)
          {
            goto LABEL_58;
          }
        }

        v164 = FCIsWidgetDebugInspectionEnabled();
LABEL_43:
        sub_10002DFB4(v221, v235, &qword_10011E850);
        goto LABEL_44;
      }

      __break(1u);
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100068478(void *a1, void *a2, uint64_t a3)
{
  v49 = a2;
  v5 = sub_100019558(&unk_10011E590);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v46 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v46 - v13;
  __chkstk_darwin(v12);
  v16 = &v46 - v15;
  v17 = sub_1000C9480();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v46 - v22;
  v24 = [a1 banner];
  if (v24)
  {
    v48 = v21;
    v25 = v24;
    v26 = [v24 imageURL];

    v27 = v23;
    if (v26)
    {
      sub_1000C9440();

      v28 = v18[7];
      v28(v14, 0, 1, v17);
    }

    else
    {
      v28 = v18[7];
      v28(v14, 1, 1, v17);
    }

    sub_10002DB04(v14, v16, &unk_10011E590);
    v29 = v18[6];
    if (v29(v16, 1, v17) != 1)
    {
      v47 = a3;
      v30 = v16;
      v31 = v18[4];
      v31(v27, v30, v17);
      if (v49)
      {
        v46 = v27;
        v32 = [v49 fileURL];
        if (v32)
        {
          v33 = v32;
          sub_1000C9440();

          v34 = 0;
        }

        else
        {
          v34 = 1;
        }

        v35 = v48;
        v28(v8, v34, 1, v17);
        sub_10002DB04(v8, v11, &unk_10011E590);
        if (v29(v11, 1, v17) != 1)
        {
          v31(v35, v11, v17);
          sub_100019558(&unk_100120608);
          v37 = v35;
          v38 = (sub_100019558(&qword_10011F9C0) - 8);
          v39 = (*(*v38 + 80) + 32) & ~*(*v38 + 80);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1000D3410;
          v41 = v40 + v39;
          v42 = v38[14];
          v43 = v18[2];
          v44 = v46;
          v43(v41, v46, v17);
          v43(v41 + v42, v37, v17);
          sub_100051000(v40);
          swift_setDeallocating();
          sub_100031844(v41, &qword_10011F9C0);
          swift_deallocClassInstance();
          sub_100070520(&qword_1001205F0, &type metadata accessor for URL);
          a3 = sub_1000C98E0();

          v45 = v18[1];
          v45(v37, v17);
          v45(v44, v17);
          return a3;
        }

        (v18[1])(v46, v17);
      }

      else
      {
        (v18[1])(v27, v17);
        v28(v11, 1, 1, v17);
      }

      v16 = v11;
      a3 = v47;
    }
  }

  else
  {
    (v18[7])(v16, 1, 1, v17);
  }

  sub_100031844(v16, &unk_10011E590);

  return a3;
}

uint64_t sub_100068A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1000C95D0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContentServiceRequest();
  v12 = a1 + *(v11 + 20);
  if (*(v12 + *(type metadata accessor for LayoutContext() + 48)))
  {
    v13 = sub_100019558(&qword_1001205A8);
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    sub_1000C95C0();
    v15 = sub_1000C95B0();
    v26 = v3;
    v16 = v15;
    v18 = v17;
    (*(v8 + 8))(v10, v7);
    v19 = sub_100019558(&qword_1001205A8);
    v20 = *(v19 + 48);
    *a3 = v16;
    a3[1] = v18;
    sub_10001E2E4((a2 + 96), *(a2 + 120));
    v21 = a1 + *(v11 + 24);
    v25 = *(v21 + 32);
    v22 = *(v21 + 16);
    v24[0] = *v21;
    v24[1] = v22;

    v23 = v26;
    sub_10002EC80(v16, v18, a3 + v20);
    if (v23)
    {
      return swift_bridgeObjectRelease_n();
    }

    else
    {

      return (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
    }
  }
}

void sub_100068C38(uint64_t a1, void *a2, unint64_t a3)
{
  v7 = type metadata accessor for ImageStore.Key(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C9480();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C9390();
  v59 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for ContentServiceRequest() + 20) + 16) != 1)
  {

    goto LABEL_37;
  }

  v58 = v9;
  v51 = v13;
  v52 = v10;
  v17 = [a2 sections];
  v18 = [v17 array];

  v19 = sub_1000CAED0();
  v20 = sub_10007B71C(v19);

  if (v20 >> 62)
  {
    if (sub_1000CB3A0())
    {
      goto LABEL_4;
    }

    goto LABEL_43;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_43:

LABEL_37:
    sub_100050EE8(&_swiftEmptyArrayStorage);
    return;
  }

LABEL_4:
  v56 = v3;
  v55 = a3;
  if ((v20 & 0xC000000000000001) != 0)
  {
    goto LABEL_46;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_48;
  }

  for (i = *(v20 + 4); ; i = sub_1000CB2A0())
  {
    v18 = i;

    v20 = [v18 items];
    v22 = [v20 count];
    v65 = &_swiftEmptyArrayStorage;
    sub_1000CB310();
    sub_1000CB020();
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_48:
      __break(1u);
    }

    else
    {
      v53 = v20;
      v54 = v18;
      v57 = v11;
      if (v22)
      {
        sub_100070520(&qword_1001205C0, &type metadata accessor for NSFastEnumerationIterator);
        do
        {
          sub_1000CB190();
          if (!v64)
          {
            goto LABEL_65;
          }

          sub_100027BB8(&v63, &v61);
          sub_100019558(&unk_10011E710);
          swift_dynamicCast();
          sub_10001E37C(&v63);
          sub_1000CB2F0();
          sub_1000CB320();
          sub_1000CB330();
          sub_1000CB300();
        }

        while (--v22);
      }

      sub_100070520(&qword_1001205C0, &type metadata accessor for NSFastEnumerationIterator);
      sub_1000CB190();
      while (v62)
      {
        sub_100050CF0(&v61, &v63);
        sub_100027BB8(&v63, &v61);
        sub_100019558(&unk_10011E710);
        swift_dynamicCast();
        sub_10001E37C(&v63);
        sub_1000CB2F0();
        sub_1000CB320();
        sub_1000CB330();
        sub_1000CB300();
        sub_1000CB190();
      }

      (*(v59 + 8))(v16, v14);
      sub_100031844(&v61, &qword_100120A50);

      v20 = v65;
      v18 = v57;
      if ((v65 & 0x8000000000000000) == 0 && (v65 & 0x4000000000000000) == 0)
      {
        v23 = *(v65 + 2);
        goto LABEL_17;
      }
    }

    v23 = sub_1000CB3A0();
LABEL_17:
    v24 = v56;
    v11 = v55;
    v25 = v58;
    if (!v23)
    {

      goto LABEL_37;
    }

    if ((v20 & 0xC000000000000001) == 0)
    {
      break;
    }

    v26 = sub_1000CB2A0();
LABEL_21:

    v60 = &OBJC_PROTOCOL___NTHeadlineProviding;
    v27 = swift_dynamicCastObjCProtocolConditional();
    if (!v27)
    {
      swift_unknownObjectRelease();
      goto LABEL_37;
    }

    v58 = v27;
    v28 = [v27 thumbnailRemoteURL];
    if (!v28)
    {
      goto LABEL_41;
    }

    v29 = v51;
    v30 = v28;
    sub_1000C9440();

    v31 = v52;
    (*(v18 + 2))(v25, v29, v52);
    (*(v18 + 7))(v25, 0, 1, v31);
    v32 = sub_1000BE124(v25, v11);
    sub_1000703B8(v25, type metadata accessor for ImageStore.Key);
    if (!v32)
    {
      (*(v18 + 1))(v29, v31);
LABEL_41:
      sub_100050EE8(&_swiftEmptyArrayStorage);
      swift_unknownObjectRelease();
      return;
    }

    v33 = v24[10];
    v56 = v32;
    v34 = [v33 colorsForImage:v32];
    v59 = sub_10001F934(0, &unk_10011E610);
    v11 = sub_1000CAED0();

    v54 = v26;
    if (v11 >> 62)
    {
      goto LABEL_52;
    }

    v35 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v35)
    {
      goto LABEL_53;
    }

LABEL_26:
    v16 = 0;
    v14 = v11 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v36 = sub_1000CB2A0();
      }

      else
      {
        if (v16 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v36 = *(v11 + 8 * v16 + 32);
      }

      v37 = v36;
      v38 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v39 = sub_1000CB110();
      v40 = [objc_opt_self() whiteColor];
      v41 = sub_1000CB150();

      if (v41)
      {
        goto LABEL_56;
      }

      ++v16;
      if (v38 == v35)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

  if (*(v20 + 2))
  {
    v26 = *(v20 + 4);
    swift_unknownObjectRetain();
    goto LABEL_21;
  }

  __break(1u);
LABEL_52:
  v35 = sub_1000CB3A0();
  if (v35)
  {
    goto LABEL_26;
  }

LABEL_53:
  if (qword_10011CF98 != -1)
  {
    swift_once();
  }

  v37 = qword_1001347D8;
LABEL_56:
  if (!v35)
  {

    v43 = 0;
    goto LABEL_62;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    v42 = sub_1000CB2A0();
LABEL_60:
    v43 = v42;

LABEL_62:
    sub_100019558(&qword_1001205D8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000D3410;
    v45 = v37;
    v46 = [v58 identifier];
    v47 = sub_1000CAD00();
    v49 = v48;

    *(inited + 32) = v47;
    *(inited + 40) = v49;
    *(inited + 48) = v43;
    *(inited + 56) = v45;
    sub_100050EE8(inited);
    swift_setDeallocating();
    sub_100031844(inited + 32, &qword_1001205E0);
    swift_unknownObjectRelease();

    (v57)[1](v51, v52);
    return;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v42 = *(v11 + 32);
    goto LABEL_60;
  }

  __break(1u);
LABEL_65:
  __break(1u);
}

uint64_t sub_1000695E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v8 - 8);
  v10 = &v51 - v9;
  v11 = sub_1000C9480();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 widgetConfig];
  if ((a3 - 1) < 4)
  {

    goto LABEL_3;
  }

  if (a3)
  {

LABEL_25:
    sub_100019558(&unk_10011E820);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1000D3410;
    v55 = 0;
    v56 = 0xE000000000000000;
    type metadata accessor for ContentServiceRequest();
    sub_1000CB340();
    v46 = v55;
    v47 = v56;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 64) = sub_100024C50();
    *(v45 + 32) = v46;
    *(v45 + 40) = v47;
    sub_10001F934(0, &qword_10011F5F0);
    v48 = sub_1000CB160();
    sub_1000CB060();
    sub_1000C9BE0();

    if (qword_10011CE98 != -1)
    {
      swift_once();
    }

    v49 = sub_10001A5B4(v11, qword_100134510);
    (*(v12 + 16))(a4, v49, v11);
    goto LABEL_28;
  }

  if (v15)
  {
    v38 = v15;
    v39 = [v15 widgetBackgroundInteractionEnabled];

    if ((v39 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

LABEL_3:
  v16 = (a2 + *(type metadata accessor for ContentServiceRequest() + 24));
  if (*v16)
  {
    v54 = a4;
    v17 = v16[1];
    ObjectType = swift_getObjectType();
    v19 = *(v17 + 32);
    v20 = v17;
    a4 = v54;
    v19(ObjectType, v20);
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      v52 = *(v12 + 32);
      v53 = v12 + 32;
      v52(v14, v10, v11);
      sub_100019558(&unk_10011E820);
      v21 = swift_allocObject();
      v22 = 0xE700000000000000;
      *(v21 + 16) = xmmword_1000D45E0;
      v23 = 0x736569726F7473;
      v55 = 0;
      v56 = 0xE000000000000000;
      v24 = 0xE500000000000000;
      v25 = 0x726F727265;
      v26 = 0xE700000000000000;
      v27 = 0x656E696C66666FLL;
      if (a3 != 3)
      {
        v27 = 0x6C6F686563616C70;
        v26 = 0xEB00000000726564;
      }

      if (a3 != 2)
      {
        v25 = v27;
        v24 = v26;
      }

      if (a3)
      {
        v23 = 0x69726F7473206F6ELL;
        v22 = 0xEA00000000007365;
      }

      if (a3 <= 1)
      {
        v28._countAndFlagsBits = v23;
      }

      else
      {
        v28._countAndFlagsBits = v25;
      }

      if (a3 <= 1)
      {
        v29 = v22;
      }

      else
      {
        v29 = v24;
      }

      v28._object = v29;
      sub_1000CADD0(v28);

      v31 = v55;
      v30 = v56;
      *(v21 + 56) = &type metadata for String;
      v32 = sub_100024C50();
      *(v21 + 64) = v32;
      *(v21 + 32) = v31;
      *(v21 + 40) = v30;
      sub_100070520(&qword_10011F080, &type metadata accessor for URL);
      v33 = sub_1000CB520();
      *(v21 + 96) = &type metadata for String;
      *(v21 + 104) = v32;
      *(v21 + 72) = v33;
      *(v21 + 80) = v34;
      v55 = 0;
      v56 = 0xE000000000000000;
      sub_1000CB340();
      v35 = v55;
      v36 = v56;
      *(v21 + 136) = &type metadata for String;
      *(v21 + 144) = v32;
      *(v21 + 112) = v35;
      *(v21 + 120) = v36;
      sub_10001F934(0, &qword_10011F5F0);
      v37 = sub_1000CB160();
      sub_1000CB060();
      sub_1000C9BE0();

      a4 = v54;
      v52(v54, v14, v11);
LABEL_28:
      v44 = 0;
      return (*(v12 + 56))(a4, v44, 1, v11);
    }
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
  }

  sub_100031844(v10, &unk_10011E590);
  sub_100019558(&unk_10011E820);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1000D3410;
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_1000CB340();
  v41 = v55;
  v42 = v56;
  *(v40 + 56) = &type metadata for String;
  *(v40 + 64) = sub_100024C50();
  *(v40 + 32) = v41;
  *(v40 + 40) = v42;
  sub_10001F934(0, &qword_10011F5F0);
  v43 = sub_1000CB160();
  sub_1000CB060();
  sub_1000C9BE0();

  v44 = 1;
  return (*(v12 + 56))(a4, v44, 1, v11);
}

uint64_t sub_100069C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_100019558(&qword_100120578);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = type metadata accessor for TodayContent();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);

    v9(v8, a1);
    sub_100034478(v9);
    sub_100031844(v8, &qword_100120578);
  }

  return a3(a1);
}

id sub_100069D80@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v255 = a2;
  v251 = a3;
  v5 = sub_100019558(&unk_100120580);
  v6 = __chkstk_darwin(v5 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v242 - v8;
  __chkstk_darwin(v7);
  v11 = &v242 - v10;
  v284 = type metadata accessor for Section();
  v280 = *(v284 - 8);
  v12 = __chkstk_darwin(v284);
  v276 = &v242 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v266 = &v242 - v15;
  v16 = __chkstk_darwin(v14);
  v279 = &v242 - v17;
  v18 = __chkstk_darwin(v16);
  v267 = (&v242 - v19);
  v20 = __chkstk_darwin(v18);
  v274 = &v242 - v21;
  __chkstk_darwin(v20);
  v263 = &v242 - v22;
  v23 = sub_100019558(&qword_10011E850);
  v24 = __chkstk_darwin(v23 - 8);
  v281 = &v242 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v268 = (&v242 - v27);
  v28 = __chkstk_darwin(v26);
  v283 = &v242 - v29;
  v30 = __chkstk_darwin(v28);
  v269 = &v242 - v31;
  v32 = __chkstk_darwin(v30);
  v278 = &v242 - v33;
  __chkstk_darwin(v32);
  v273 = &v242 - v34;
  v35 = sub_100019558(&unk_100120590);
  v36 = __chkstk_darwin(v35 - 8);
  v253 = (&v242 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = __chkstk_darwin(v36);
  v243 = (&v242 - v39);
  __chkstk_darwin(v38);
  v248 = &v242 - v40;
  v41 = sub_100019558(&unk_10011E590);
  v42 = __chkstk_darwin(v41 - 8);
  v252 = &v242 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v249 = &v242 - v45;
  v46 = __chkstk_darwin(v44);
  v242 = &v242 - v47;
  v48 = __chkstk_darwin(v46);
  v247 = &v242 - v49;
  __chkstk_darwin(v48);
  v256 = &v242 - v50;
  v275 = sub_1000C9480();
  v262 = *(v275 - 8);
  __chkstk_darwin(v275);
  v250 = &v242 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_1000C95A0();
  v277 = *(v270 - 8);
  __chkstk_darwin(v270);
  v254 = &v242 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_1000C95D0();
  v272 = *(v261 - 1);
  v53 = __chkstk_darwin(v261);
  v246 = &v242 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v258 = &v242 - v55;
  v56 = type metadata accessor for LayoutContext();
  v57 = __chkstk_darwin(v56);
  v265 = &v242 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v264 = (&v242 - v59);
  v285 = type metadata accessor for ImageStore.Image(0);
  v60 = __chkstk_darwin(v285);
  v62 = &v242 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v60);
  v64 = (&v242 - v63);
  v65 = type metadata accessor for ImageStore.Key(0);
  __chkstk_darwin(v65 - 8);
  v67 = &v242 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v3[7];
  v259 = v3;
  v69 = *(*sub_10001E2E4(v3 + 4, v68) + 32);
  v257 = *a1;
  v70 = [v69 placeholderResultsWithOperationInfo:?];
  v245 = type metadata accessor for ContentServiceRequest();
  v71 = *(v245 + 20);
  v260 = a1;
  v72 = a1 + v71;
  v271 = v70;
  [v70 headlineScale];
  sub_100077730();
  v74 = v73;
  v282 = objc_opt_self();
  v75 = [v282 blackColor];
  v76 = sub_1000B422C(v74, v74);

  v77 = &_swiftEmptyDictionarySingleton;
  if (v76)
  {
    (*(v262 + 56))(v67, 1, 1, v275);
    *v64 = v76;
    swift_storeEnumTagMultiPayload();
    sub_100070450(v64, v62, type metadata accessor for ImageStore.Image);
    v78 = v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v293 = &_swiftEmptyDictionarySingleton;
    sub_1000A46C4(v62, v67, isUniquelyReferenced_nonNull_native);

    sub_1000703B8(v67, type metadata accessor for ImageStore.Key);
    v77 = v293;
  }

  v285 = v77;
  result = [objc_allocWithZone(NTPBTodayResultOperationFetchInfo) init];
  v81 = v271;
  if (result)
  {
    v82 = result;
    v83 = [v271 sourceIdentifier];
    if (!v83)
    {
      sub_1000CAD00();
      v83 = sub_1000CACD0();
      v81 = v271;
    }

    [v82 setTodaySourceIdentifier:v83];

    [v81 headlineScale];
    v85 = v84;
    v86 = *v72;
    v87 = *(v72 + 1);
    v88 = *(v72 + 2);
    v89 = *(v72 + 3);
    v90 = *(v72 + 4);
    v91 = v56[8];
    v92 = sub_1000CA0B0();
    v93 = v264;
    (*(*(v92 - 8) + 16))(v264 + v91, &v72[v91], v92);
    v94 = *&v72[v56[9]];
    v95 = v72[v56[12]];
    *v93 = v86;
    v93[1] = v87;
    v93[2] = v88;
    v93[3] = v89;
    v93[4] = v90;
    *(v93 + v56[9]) = v94;
    *(v93 + v56[10]) = v85;
    *(v93 + v56[11]) = 1;
    *(v93 + v56[12]) = v95;
    v96 = v258;
    sub_1000C95C0();
    v97 = sub_1000C95B0();
    v99 = v98;
    v100 = *(v272 + 8);
    v272 += 8;
    v100(v96, v261);
    sub_1000704B8(v93, v265, type metadata accessor for LayoutContext);
    result = [v257 request];
    if (result)
    {
      v101 = result;
      v102 = v82;
      v103 = [result tagID];

      v244 = v100;
      if (v103)
      {
        v104 = sub_1000CAD00();
        v106 = v105;
      }

      else
      {
        v104 = 0;
        v106 = 0;
      }

      v107 = v254;
      sub_1000C9590();
      type metadata accessor for TrackableWidgetState();
      v108 = swift_allocObject();
      (*(v277 + 32))(v108 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_contentFetchDate, v107, v270);
      v109 = (v108 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_entryID);
      *v109 = v97;
      v109[1] = v99;
      v110 = v271;
      *(v108 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_results) = v271;
      *(v108 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_fetchInfo) = v102;
      sub_100070450(v265, v108 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_layoutContext, type metadata accessor for LayoutContext);
      v111 = (v108 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_contentID);
      *v111 = v104;
      v111[1] = v106;
      v112 = v255;
      *(v108 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_appearanceType) = v255;
      v113 = v108 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_visibleRect;
      *v113 = 0u;
      *(v113 + 16) = 0u;
      *(v113 + 32) = 1;
      *(v108 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_stackKind) = 0;
      *(v108 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_stackLocation) = 0;
      v265 = v108;
      if (v112 == 4)
      {
        v114 = v259[9];
        v115 = v259[17];
        v116 = v102;
        v266 = v110;
        v117 = v114;
        v118 = v115;
        v119 = sub_100050D00(&_swiftEmptyArrayStorage);
        v120 = v256;
        (*(v262 + 56))(v256, 1, 1, v275);
        v121 = type metadata accessor for EngagementURLProvider();
        v122 = swift_allocObject();
        v122[2] = v117;
        v122[3] = v118;
        v122[4] = v108;
        v122[5] = v119;
        sub_10002DB04(v120, v122 + OBJC_IVAR____TtC10NewsToday221EngagementURLProvider_sharedDirectoryFileUrl, &unk_10011E590);
        *(&v294 + 1) = v121;
        v295 = &off_10010FD08;
        v123 = v121;
        *&v293 = v122;
        v124 = v266;

        v281 = sub_100050EE8(&_swiftEmptyArrayStorage);
        sub_1000695E4(v116, v260, 4, v252);
        v263 = sub_10006F8EC();
        v262 = v125;
        v261 = v116;
        v126 = [v124 banner];
        if (v126)
        {
          v127 = v126;
          sub_10007B7F4(v126, &v293, v120);
          v128 = sub_10007BAC0(v127, v285);
          v129 = v249;
          sub_10002DFB4(v120, v249, &unk_10011E590);
          v130 = v253;
          sub_10001B89C(v127, v129, v128, v253);
          sub_100031844(v120, &unk_10011E590);
          v131 = 0;
        }

        else
        {
          v130 = v253;
          v131 = 1;
        }

        v142 = type metadata accessor for Banner();
        v143 = 1;
        (*(*(v142 - 8) + 56))(v130, v131, 1, v142);
        LODWORD(v278) = sub_10008CE04(v124);
        v144 = NewsCoreUserDefaults();
        v145 = sub_1000CACD0();
        v146 = [v144 BOOLForKey:v145];

        if (v146)
        {
          sub_1000C9590();
          v143 = 0;
        }

        v147 = *(v277 + 56);
        v277 += 56;
        v268 = v147;
        v147(v269, v143, 1, v270);
        v148 = *sub_10001E2E4(&v293, *(&v294 + 1));
        v291 = v123;
        v292 = &off_10010FD08;
        v290 = v148;

        v149 = [v124 sections];
        v150 = [v149 array];

        v151 = sub_1000CAED0();
        v11 = sub_10007B71C(v151);

        if (v11 >> 62)
        {
          goto LABEL_76;
        }

        for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000CB3A0())
        {
          v153 = 0;
          v276 = (v11 & 0xC000000000000001);
          v275 = v11 & 0xFFFFFFFFFFFFFF8;
          v272 = v280 + 56;
          v271 = (v280 + 48);
          v154 = &_swiftEmptyArrayStorage;
          v274 = v11;
          v273 = i;
          while (1)
          {
            if (v276)
            {
              v156 = sub_1000CB2A0();
            }

            else
            {
              if (v153 >= *(v275 + 16))
              {
                goto LABEL_73;
              }

              v156 = *(v11 + 8 * v153 + 32);
            }

            v157 = v156;
            v158 = v153 + 1;
            if (__OFADD__(v153, 1))
            {
              break;
            }

            sub_10002DE48(&v290, &v288);
            if (!((v153 != 0) | v278 & 1))
            {
              v159 = FCIsWidgetDebugInspectionEnabled();
LABEL_31:
              sub_10002DFB4(v269, v283, &qword_10011E850);
              goto LABEL_32;
            }

            if (!v153)
            {
              v159 = 1;
              goto LABEL_31;
            }

            v268(v283, 1, 1, v270);
            v159 = 0;
LABEL_32:
            v160 = [v157 items];
            __chkstk_darwin(v160);
            *(&v242 - 4) = v285;
            *(&v242 - 3) = &v288;
            *(&v242 - 2) = v281;
            v161 = sub_100065498(sub_1000708CC, (&v242 - 6));

            v162 = [v157 backingTagID];
            if (v162)
            {
              v163 = v162;
              v164 = [v282 nu_safeColorForIdentifier:v162];
            }

            else
            {
              v164 = 0;
            }

            v165 = v284;
            sub_10002C400(v157, &v288, &v9[*(v284 + 32)]);
            *v9 = v164;
            *(v9 + 1) = v157;
            *(v9 + 2) = v161;
            v9[24] = v159;
            sub_10002DB04(v283, &v9[*(v165 + 36)], &qword_10011E850);
            v166 = v157;
            sub_10001E37C(&v288);
            (*v272)(v9, 0, 1, v165);

            if ((*v271)(v9, 1, v165) == 1)
            {
              sub_100031844(v9, &unk_100120580);
              v11 = v274;
              v155 = v273;
            }

            else
            {
              v167 = v267;
              sub_100070450(v9, v267, type metadata accessor for Section);
              sub_100070450(v167, v279, type metadata accessor for Section);
              v168 = swift_isUniquelyReferenced_nonNull_native();
              v11 = v274;
              v155 = v273;
              if ((v168 & 1) == 0)
              {
                v154 = sub_10006E094(0, v154[2] + 1, 1, v154, &qword_1001205B0, &unk_1000D7D68, type metadata accessor for Section);
              }

              v170 = v154[2];
              v169 = v154[3];
              if (v170 >= v169 >> 1)
              {
                v154 = sub_10006E094(v169 > 1, v170 + 1, 1, v154, &qword_1001205B0, &unk_1000D7D68, type metadata accessor for Section);
              }

              v154[2] = v170 + 1;
              sub_100070450(v279, v154 + ((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v170, type metadata accessor for Section);
            }

            ++v153;
            if (v158 == v155)
            {
              goto LABEL_78;
            }
          }

          __break(1u);
LABEL_73:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          ;
        }

        v154 = &_swiftEmptyArrayStorage;
LABEL_78:

        sub_10001E37C(&v290);
        sub_100031844(v269, &qword_10011E850);
        v229 = type metadata accessor for TodayContent();
        v230 = v251;
        v231 = v252;
        sub_10008CEF0(v252, &v293, v251 + v229[9]);
        v232 = v261;

        sub_100031844(v231, &unk_10011E590);
        sub_1000703B8(v264, type metadata accessor for LayoutContext);

        sub_10001E37C(&v293);
        *v230 = v266;
        result = sub_10002DB04(v253, v230 + v229[5], &unk_100120590);
        *(v230 + v229[6]) = v154;
        *(v230 + v229[7]) = v232;
        *(v230 + v229[8]) = 1;
        *(v230 + v229[10]) = v265;
        v233 = (v230 + v229[11]);
        *v233 = 0;
        v233[1] = 0;
        v234 = (v230 + v229[12]);
        *v234 = v263;
        v235 = v289;
        goto LABEL_79;
      }

      v269 = v102;
      v132 = v110;
      v133 = v246;
      sub_1000C95C0();
      v134 = sub_1000C95B0();
      v136 = v135;
      v244(v133, v261);
      v137 = v259;
      sub_10001E2E4(v259 + 12, v259[15]);
      v138 = v260 + *(v245 + 24);
      v295 = *(v138 + 4);
      v139 = *(v138 + 1);
      v293 = *v138;
      v294 = v139;
      v140 = v250;
      sub_10002EC80(v134, v136, v250);
      v258 = v132;
      v141 = v262;
      v283 = 0;
      v257 = v134;
      v261 = v136;
      v171 = v137[9];
      v172 = v137[17];
      v173 = v265;

      v174 = v171;
      v175 = v140;
      v176 = v174;
      v177 = v141;
      v178 = v172;
      v179 = sub_100050D00(&_swiftEmptyArrayStorage);
      v180 = v256;
      v181 = v175;
      v182 = v275;
      (*(v177 + 16))(v256, v181, v275);
      v183 = *(v177 + 56);
      v184 = 1;
      v183(v180, 0, 1, v182);
      v185 = type metadata accessor for EngagementURLProvider();
      v186 = swift_allocObject();
      v186[2] = v176;
      v186[3] = v178;
      v186[4] = v173;
      v186[5] = v179;
      v187 = v180;
      sub_10002DB04(v180, v186 + OBJC_IVAR____TtC10NewsToday221EngagementURLProvider_sharedDirectoryFileUrl, &unk_10011E590);
      v291 = v185;
      v292 = &off_10010FD08;
      v290 = v186;
      v188 = v269;
      v281 = sub_100050EE8(&_swiftEmptyArrayStorage);
      v189 = *(v173 + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_appearanceType);
      v9 = v258;
      v190 = v188;
      sub_1000695E4(v190, v260, v189, v242);
      v260 = v190;

      v259 = sub_10006F8EC();
      v255 = v191;
      v192 = [v9 banner];
      if (v192)
      {
        v193 = v192;
        sub_10007B7F4(v192, &v290, v187);
        v194 = sub_10007BAC0(v193, v285);
        v195 = v249;
        sub_10002DFB4(v187, v249, &unk_10011E590);
        v196 = v187;
        v197 = v243;
        sub_10001B89C(v193, v195, v194, v243);
        sub_100031844(v196, &unk_10011E590);
        v184 = 0;
      }

      else
      {
        v197 = v243;
      }

      v198 = type metadata accessor for Banner();
      v199 = 1;
      (*(*(v198 - 8) + 56))(v197, v184, 1, v198);
      LODWORD(v279) = sub_10008CE04(v9);
      v200 = NewsCoreUserDefaults();
      v201 = sub_1000CACD0();
      v202 = [v200 BOOLForKey:v201];

      if (v202)
      {
        sub_1000C9590();
        v199 = 0;
      }

      v203 = *(v277 + 56);
      v277 += 56;
      v266 = v203;
      (v203)(v273, v199, 1, v270);
      v204 = *sub_10001E2E4(&v290, v291);
      v289[0] = v185;
      v289[1] = &off_10010FD08;
      v288 = v204;

      v205 = [v9 sections];
      v206 = [v205 array];

      v207 = sub_1000CAED0();
      v208 = sub_10007B71C(v207);

      v209 = v275;
      if (v208 >> 62)
      {
        v210 = sub_1000CB3A0();
        if (v210)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v210 = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v210)
        {
LABEL_49:
          v211 = 0;
          v276 = (v208 & 0xC000000000000001);
          v272 = v208 & 0xFFFFFFFFFFFFFF8;
          v268 = (v280 + 56);
          v267 = (v280 + 48);
          v212 = &_swiftEmptyArrayStorage;
          v271 = v208;
          v269 = v210;
          while (1)
          {
            if (v276)
            {
              v214 = sub_1000CB2A0();
            }

            else
            {
              if (v211 >= *(v272 + 16))
              {
                goto LABEL_75;
              }

              v214 = *(v208 + 8 * v211 + 32);
            }

            v215 = v214;
            v9 = (v211 + 1);
            if (__OFADD__(v211, 1))
            {
              goto LABEL_74;
            }

            sub_10002DE48(&v288, &v286);
            if (!((v211 != 0) | v279 & 1))
            {
              break;
            }

            if (!v211)
            {
              v216 = 1;
              goto LABEL_61;
            }

            (v266)(v278, 1, 1, v270);
            v216 = 0;
LABEL_62:
            v217 = [v215 items];
            __chkstk_darwin(v217);
            *(&v242 - 4) = v285;
            *(&v242 - 3) = &v286;
            *(&v242 - 2) = v281;
            v218 = v283;
            v219 = sub_100065498(sub_1000708CC, (&v242 - 6));
            v283 = v218;

            v220 = [v215 backingTagID];
            if (v220)
            {
              v221 = v220;
              v222 = [v282 nu_safeColorForIdentifier:v220];
            }

            else
            {
              v222 = 0;
            }

            v209 = v275;
            v223 = v284;
            sub_10002C400(v215, &v286, v11 + *(v284 + 32));
            *v11 = v222;
            *(v11 + 8) = v215;
            *(v11 + 16) = v219;
            *(v11 + 24) = v216;
            sub_10002DB04(v278, v11 + *(v223 + 36), &qword_10011E850);
            v224 = v215;
            sub_10001E37C(&v286);
            (*v268)(v11, 0, 1, v223);

            if ((*v267)(v11, 1, v223) == 1)
            {
              sub_100031844(v11, &unk_100120580);
              v208 = v271;
              v213 = v269;
            }

            else
            {
              v225 = v263;
              sub_100070450(v11, v263, type metadata accessor for Section);
              sub_100070450(v225, v274, type metadata accessor for Section);
              v226 = swift_isUniquelyReferenced_nonNull_native();
              v208 = v271;
              v213 = v269;
              if ((v226 & 1) == 0)
              {
                v212 = sub_10006E094(0, *(v212 + 2) + 1, 1, v212, &qword_1001205B0, &unk_1000D7D68, type metadata accessor for Section);
              }

              v228 = *(v212 + 2);
              v227 = *(v212 + 3);
              if (v228 >= v227 >> 1)
              {
                v212 = sub_10006E094(v227 > 1, v228 + 1, 1, v212, &qword_1001205B0, &unk_1000D7D68, type metadata accessor for Section);
              }

              *(v212 + 2) = v228 + 1;
              sub_100070450(v274, &v212[((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v228], type metadata accessor for Section);
            }

            ++v211;
            if (v9 == v213)
            {
              goto LABEL_82;
            }
          }

          v216 = FCIsWidgetDebugInspectionEnabled();
LABEL_61:
          sub_10002DFB4(v273, v278, &qword_10011E850);
          goto LABEL_62;
        }
      }

      v212 = &_swiftEmptyArrayStorage;
LABEL_82:

      sub_10001E37C(&v288);
      sub_100031844(v273, &qword_10011E850);
      v236 = type metadata accessor for TodayContent();
      v237 = v251;
      v238 = v242;
      sub_10008CEF0(v242, &v290, v251 + v236[9]);
      v239 = v260;

      sub_100031844(v238, &unk_10011E590);
      (*(v262 + 8))(v250, v209);
      sub_1000703B8(v264, type metadata accessor for LayoutContext);

      sub_10001E37C(&v290);
      *v237 = v258;
      result = sub_10002DB04(v243, v237 + v236[5], &unk_100120590);
      *(v237 + v236[6]) = v212;
      *(v237 + v236[7]) = v239;
      *(v237 + v236[8]) = 1;
      *(v237 + v236[10]) = v265;
      v240 = (v237 + v236[11]);
      v241 = v261;
      *v240 = v257;
      v240[1] = v241;
      v234 = (v237 + v236[12]);
      *v234 = v259;
      v235 = &v287;
LABEL_79:
      v234[1] = *(v235 - 32);
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10006C6EC(void *a1)
{
  v2 = sub_1000C9610();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1000CACC0();
  __chkstk_darwin(v3 - 8);
  [a1 fc_isOfflineError];
  sub_1000CACB0();
  sub_1000C95E0();
  return sub_1000CAD40();
}

unint64_t sub_10006C868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = a4;
  v75 = a3;
  v6 = sub_100019558(&qword_1001205E8);
  __chkstk_darwin(v6 - 8);
  v8 = &v69 - v7;
  v9 = type metadata accessor for ImageStore.Key(0);
  __chkstk_darwin(v9 - 8);
  v73 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100019558(&unk_10011E590);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v69 - v15;
  v17 = sub_1000C9480();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v69 - v23;
  result = __chkstk_darwin(v22);
  v27 = &v69 - v26;
  if (*(a2 + 16))
  {
    result = sub_10003DBCC(a1);
    if (v28)
    {
      v69 = v21;
      v70 = v8;
      v72 = a1;
      v29 = v18;
      v30 = v18[2];
      v30(v24, *(a2 + 56) + v18[9] * result, v17);
      v31 = v18[4];
      v31(v27, v24, v17);
      v71 = v27;
      sub_10006D0F8(v75, v16);
      v75 = v16;
      v32 = v16;
      v33 = v29;
      sub_10002DFB4(v32, v14, &unk_10011E590);
      if ((v29[6])(v14, 1, v17) == 1)
      {
        v34 = v30;
        sub_100031844(v14, &unk_10011E590);
        v35 = v71;
        sub_1000C9450();
        v36 = objc_allocWithZone(UIImage);
        v37 = sub_1000CACD0();

        v38 = [v36 initWithContentsOfFile:v37];

        v39 = v35;
        if (v38)
        {
          v40 = v73;
          v34(v73, v72, v17);
          (v33[7])(v40, 0, 1, v17);
          v41 = v70;
          *v70 = v38;
          v42 = type metadata accessor for ImageStore.Image(0);
          swift_storeEnumTagMultiPayload();
          (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
          swift_beginAccess();
          v43 = v38;
          sub_1000652B0(v41, v40);
          swift_endAccess();
          sub_100019558(&unk_10011E820);
          v44 = swift_allocObject();
          *(v44 + 16) = xmmword_1000D3D20;
          sub_100070520(&qword_10011F080, &type metadata accessor for URL);
          v45 = sub_1000CB520();
          v47 = v46;
          *(v44 + 56) = &type metadata for String;
          v48 = sub_100024C50();
          *(v44 + 64) = v48;
          *(v44 + 32) = v45;
          *(v44 + 40) = v47;
          v49 = sub_1000C9450();
          *(v44 + 96) = &type metadata for String;
          *(v44 + 104) = v48;
          *(v44 + 72) = v49;
          *(v44 + 80) = v50;
          sub_10001F934(0, &qword_10011F5F0);
          v51 = sub_1000CB160();
          sub_1000CB060();
          sub_1000C9BE0();
        }

        else
        {
          sub_1000CB040();
          sub_100019558(&unk_10011E820);
          v65 = swift_allocObject();
          *(v65 + 16) = xmmword_1000D3410;
          sub_100070520(&qword_10011F080, &type metadata accessor for URL);
          v66 = sub_1000CB520();
          v68 = v67;
          *(v65 + 56) = &type metadata for String;
          *(v65 + 64) = sub_100024C50();
          *(v65 + 32) = v66;
          *(v65 + 40) = v68;
          sub_10001F934(0, &qword_10011F5F0);
          v51 = sub_1000CB160();
          sub_1000C9BE0();
        }

        sub_100031844(v75, &unk_10011E590);
        return (v33[1])(v39, v17);
      }

      else
      {
        v52 = v69;
        v31(v69, v14, v17);
        v53 = v73;
        v30(v73, v72, v17);
        (v33[7])(v53, 0, 1, v17);
        v54 = v70;
        v30(v70, v52, v17);
        v55 = type metadata accessor for ImageStore.Image(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v55 - 8) + 56))(v54, 0, 1, v55);
        swift_beginAccess();
        sub_1000652B0(v54, v53);
        swift_endAccess();
        sub_100019558(&unk_10011E820);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_1000D3D20;
        sub_100070520(&qword_10011F080, &type metadata accessor for URL);
        v57 = sub_1000CB520();
        v59 = v58;
        *(v56 + 56) = &type metadata for String;
        v60 = sub_100024C50();
        *(v56 + 64) = v60;
        *(v56 + 32) = v57;
        *(v56 + 40) = v59;
        v61 = sub_1000C9450();
        *(v56 + 96) = &type metadata for String;
        *(v56 + 104) = v60;
        *(v56 + 72) = v61;
        *(v56 + 80) = v62;
        sub_10001F934(0, &qword_10011F5F0);
        v63 = sub_1000CB160();
        sub_1000CB060();
        sub_1000C9BE0();

        v64 = v33[1];
        v64(v52, v17);
        sub_100031844(v75, &unk_10011E590);
        return (v64)(v71, v17);
      }
    }
  }

  return result;
}

uint64_t sub_10006D0F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v3 = sub_1000C91E0();
  v39 = *(v3 - 8);
  v40 = v3;
  __chkstk_darwin(v3);
  v5 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v6 - 8);
  v8 = v38 - v7;
  v9 = sub_1000C9480();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v38 - v14;
  sub_10002DFB4(a1, v8, &unk_10011E590);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_1000C93E0();
    sub_1000C9420();

    v38[0] = *(v10 + 8);
    v38[1] = v10 + 8;
    (v38[0])(v8, v9);
    v18 = v13;
    v19 = *(v10 + 32);
    v19(v15, v18, v9);
    v20 = [objc_opt_self() defaultManager];
    sub_1000C93F0(v21);
    v23 = v22;
    sub_1000C93F0(v24);
    v26 = v25;
    v43 = 0;
    v27 = [v20 copyItemAtURL:v23 toURL:v25 error:&v43];

    if (v27)
    {
      v28 = v43;
    }

    else
    {
      v29 = v43;
      v30 = sub_1000C9340();

      swift_willThrow();
      swift_errorRetain();
      sub_1000C91D0();
      sub_100070520(&unk_1001205F8, &type metadata accessor for CocoaError.Code);
      v31 = v40;
      LOBYTE(v29) = sub_1000C9320();

      (*(v39 + 8))(v5, v31);
      if ((v29 & 1) == 0)
      {
        sub_1000CB040();
        sub_100019558(&unk_10011E820);
        v33 = v15;
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1000D3410;
        v43 = 0;
        v44 = 0xE000000000000000;
        v42 = v30;
        sub_100019558(&unk_10011F8D0);
        sub_1000CB340();
        v35 = v43;
        v36 = v44;
        *(v34 + 56) = &type metadata for String;
        *(v34 + 64) = sub_100024C50();
        *(v34 + 32) = v35;
        *(v34 + 40) = v36;
        sub_10001F934(0, &qword_10011F5F0);
        v37 = sub_1000CB160();
        sub_1000C9BE0();

        (v38[0])(v33, v9);
        goto LABEL_3;
      }
    }

    v17 = v41;
    v19(v41, v15, v9);
    v16 = 0;
    return (*(v10 + 56))(v17, v16, 1, v9);
  }

  sub_100031844(v8, &unk_10011E590);
LABEL_3:
  v16 = 1;
  v17 = v41;
  return (*(v10 + 56))(v17, v16, 1, v9);
}

uint64_t FTEventTrackingWidgetAppearanceType.debugDescription.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x736569726F7473;
    }

    if (a1 == 1)
    {
      return 0x69726F7473206F6ELL;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x726F727265;
      case 3:
        return 0x656E696C66666FLL;
      case 4:
        return 0x6C6F686563616C70;
    }
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_10006D6D8()
{
  sub_100034478(*(v0 + 16));
  sub_10001E37C(v0 + 32);

  swift_unknownObjectRelease();
  sub_10001E37C(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_10006D740()
{
  sub_100019558(&unk_100120540);
  swift_allocObject();
  return sub_1000C9A00();
}

uint64_t sub_10006D7AC()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 0x736569726F7473;
    }

    if (v1 == 1)
    {
      return 0x69726F7473206F6ELL;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x726F727265;
      case 3:
        return 0x656E696C66666FLL;
      case 4:
        return 0x6C6F686563616C70;
    }
  }

  return 0x6E776F6E6B6E75;
}

uint64_t type metadata accessor for ContentServiceRequest()
{
  result = qword_1001206C0;
  if (!qword_1001206C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006D8EC()
{
  v1 = (type metadata accessor for ContentServiceRequest() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v5 = (v0 + v3);

  v6 = v1[7];
  v7 = v6 + *(type metadata accessor for LayoutContext() + 32);
  v8 = sub_1000CA0B0();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

void sub_10006DA40(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(type metadata accessor for ContentServiceRequest() - 8);
  v10 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_100065C20(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), *(v4 + 32), (v4 + v10), *(v4 + v11), *(v4 + v11 + 8), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_10006DB24()
{
  v0 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1000C9480();
  sub_10001A5EC(v3, qword_100134510);
  v4 = sub_10001A5B4(v3, qword_100134510);
  sub_1000C9460();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

char *sub_10006DCAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100019558(&qword_10011E830);
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

char *sub_10006DDB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100019558(&unk_100120710);
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

void *sub_10006DF38(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100019558(&unk_100120630);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100019558(&qword_10011E9F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10006E094(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100019558(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_10006E294(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_100019558(a5);
    v14 = swift_allocObject();
    v15 = j__malloc_size(v14);
    v14[2] = v12;
    v14[3] = 2 * ((v15 - 32) / 40);
  }

  else
  {
    v14 = &_swiftEmptyArrayStorage;
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[5 * v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 40 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100019558(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_10006E3DC(uint64_t a1, uint64_t a2)
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

  sub_100019558(&qword_10011E830);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

char *sub_10006E460(uint64_t a1, uint64_t a2)
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

  sub_100019558(&qword_10011F9B0);
  v4 = *(sub_1000C9480() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (&result[-v6] != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * (&result[-v6] / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10006E55C(uint64_t a1, uint64_t a2)
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

  sub_100019558(&unk_10011F0B0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

double sub_10006E5E4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_10003D858(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000A4BAC();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_1000CB360();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_100050CF0((*(v9 + 56) + 32 * v7), a2);
    sub_10006E858(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10006E6C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10003D9C8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000A5104();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for ImageStore.Key(0);
    sub_1000703B8(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for ImageStore.Key);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for ImageStore.Image(0);
    v20 = *(v13 - 8);
    sub_100070450(v12 + *(v20 + 72) * v7, a2, type metadata accessor for ImageStore.Image);
    sub_10006ECBC(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for ImageStore.Image(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

unint64_t sub_10006E858(int64_t a1, uint64_t a2)
{
  v4 = sub_1000CB360();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1000CB210();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = sub_1000CAC20();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10006EB0C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1000CB210() + 1) & ~v5;
    do
    {
      sub_1000CB5C0();

      sub_1000CAD90();
      v9 = sub_1000CB5F0();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10006ECBC(int64_t a1, uint64_t a2)
{
  v4 = sub_1000C9480();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for ImageStore.Key(0);
  v7 = __chkstk_darwin(v42);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v13 = &v42 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v49 = v4;
    v17 = ~v15;
    v18 = v11;
    v19 = sub_1000CB210();
    v20 = *(v18 + 72);
    v47 = (v5 + 48);
    v48 = (v19 + 1) & v17;
    v43 = (v5 + 8);
    v44 = (v5 + 32);
    v21 = v20;
    v50 = v20;
    do
    {
      v22 = v21 * v16;
      sub_1000704B8(*(a2 + 48) + v21 * v16, v13, type metadata accessor for ImageStore.Key);
      sub_1000CB5C0();
      sub_1000704B8(v13, v9, type metadata accessor for ImageStore.Key);
      v23 = v49;
      if ((*v47)(v9, 1, v49) == 1)
      {
        sub_1000CB5D0(1uLL);
      }

      else
      {
        v24 = *v44;
        v46 = a1;
        v25 = v13;
        v26 = a2;
        v27 = v17;
        v28 = v14;
        v29 = v45;
        v24(v45, v9, v23);
        sub_1000CB5D0(0);
        sub_100070520(&qword_1001205F0, &type metadata accessor for URL);
        sub_1000CAC30();
        v30 = v29;
        v14 = v28;
        v17 = v27;
        a2 = v26;
        v13 = v25;
        a1 = v46;
        (*v43)(v30, v23);
      }

      v31 = sub_1000CB5F0();
      result = sub_1000703B8(v13, type metadata accessor for ImageStore.Key);
      v32 = v31 & v17;
      if (a1 >= v48)
      {
        v21 = v50;
        if (v32 < v48)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v21 = v50;
        if (v32 >= v48)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v32)
      {
LABEL_13:
        if (v21 * a1 < v22 || *(a2 + 48) + v21 * a1 >= (*(a2 + 48) + v22 + v21))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v21 * a1 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v33 = *(a2 + 56);
        v34 = *(*(type metadata accessor for ImageStore.Image(0) - 8) + 72);
        v35 = v34 * a1;
        result = v33 + v34 * a1;
        v36 = v34 * v16;
        v37 = v33 + v34 * v16 + v34;
        if (v35 < v36 || result >= v37)
        {
          result = swift_arrayInitWithTakeFrontToBack();
          a1 = v16;
          v21 = v50;
        }

        else
        {
          a1 = v16;
          v21 = v50;
          if (v35 != v36)
          {
            result = swift_arrayInitWithTakeBackToFront();
            a1 = v16;
          }
        }
      }

LABEL_4:
      v16 = (v16 + 1) & v17;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v39 = *(a2 + 16);
  v40 = __OFSUB__(v39, 1);
  v41 = v39 - 1;
  if (v40)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v41;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_10006F148()
{
  result = qword_100120550;
  if (!qword_100120550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120550);
  }

  return result;
}

uint64_t sub_10006F1E0()
{
  v1 = (type metadata accessor for ContentServiceRequest() - 8);
  v10 = *(*v1 + 80);
  v2 = (v10 + 16) & ~v10;
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v2;

  v6 = v1[7];
  v7 = v6 + *(type metadata accessor for LayoutContext() + 32);
  v8 = sub_1000CA0B0();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return _swift_deallocObject(v0, ((((((((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v10 | 7);
}

id sub_10006F398(unsigned int (***a1)(char *, uint64_t, uint64_t))
{
  v3 = *(type metadata accessor for ContentServiceRequest() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_100066A48(a1, (v1 + v4), *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + v8), *(v1 + v9), *(v1 + v9 + 8), *(v1 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10006F4A4()
{

  return _swift_deallocObject(v0, 40, 7);
}

void *sub_10006F4F0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10006F648(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1000C9480();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 56);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10006F8EC()
{
  v0 = NewsCoreUserDefaults();
  v1 = [v0 stringForKey:FCAudioPlaybackArticleIDSharedPreferenceKey];

  if (v1)
  {
    v2 = sub_1000CAD00();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v5 = NewsCoreUserDefaults();
  v6 = [v5 integerForKey:FCAudioPlaybackStateSharedPreferenceKey];

  sub_100019558(&unk_10011E820);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000D3D20;
  *(v7 + 56) = &type metadata for String;
  v8 = sub_100024C50();
  *(v7 + 64) = v8;
  v9 = 0x3E6C696E3CLL;
  if (v4)
  {
    v9 = v2;
  }

  v10 = 0xE500000000000000;
  if (v4)
  {
    v10 = v4;
  }

  *(v7 + 32) = v9;
  *(v7 + 40) = v10;

  v11 = sub_1000CB520();
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v8;
  *(v7 + 72) = v11;
  *(v7 + 80) = v12;
  sub_10001F934(0, &qword_10011F5F0);
  v13 = sub_1000CB160();
  sub_1000CB060();
  sub_1000C9BE0();

  if (!v4)
  {
    v15 = sub_1000CB160();
    sub_1000CB060();
LABEL_13:
    sub_1000C9BE0();
    v2 = 0;
    goto LABEL_14;
  }

  if (v6 != 1)
  {

    v15 = sub_1000CB160();
    sub_1000CB060();
    goto LABEL_13;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1000D3410;
  *(v14 + 56) = &type metadata for String;
  *(v14 + 64) = v8;
  *(v14 + 32) = v2;
  *(v14 + 40) = v4;

  v15 = sub_1000CB160();
  sub_1000CB060();
  sub_1000C9BE0();

LABEL_14:

  return v2;
}

uint64_t sub_10006FBB0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v63 = a3;
  v64 = a4;
  v55 = sub_1000C9390();
  v5 = *(v55 - 8);
  __chkstk_darwin(v55);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1000C9480();
  v8 = *(v62 - 8);
  v9 = __chkstk_darwin(v62);
  v59 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v58 = &v48 - v12;
  __chkstk_darwin(v11);
  v14 = &v48 - v13;
  v15 = swift_allocObject();
  v65 = v15;
  *(v15 + 16) = &_swiftEmptyDictionarySingleton;
  v16 = [a2 banner];
  if (v16)
  {
    v17 = v16;
    if ([v16 imageMethod] == 2 && (v18 = objc_msgSend(v17, "imageURL")) != 0)
    {
      v19 = v18;
      sub_1000C9440();

      sub_10006C868(v14, v63, v64, v65);
      (*(v8 + 8))(v14, v62);
    }

    else
    {
    }
  }

  v20 = [a2 sections];
  v21 = [v20 array];

  v22 = &type metadata for Any;
  v23 = sub_1000CAED0();

  v24 = sub_10007B71C(v23);

  if (v24 >> 62)
  {
LABEL_44:
    v25 = sub_1000CB3A0();
    if (v25)
    {
      goto LABEL_8;
    }

LABEL_45:

    swift_beginAccess();
    v47 = *(v65 + 16);

    return v47;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_45;
  }

LABEL_8:
  v54 = v24 & 0xC000000000000001;
  v50 = v24 & 0xFFFFFFFFFFFFFF8;
  v49 = v24 + 32;
  v53 = (v5 + 8);
  v61 = (v8 + 8);
  v8 = 0;
  p_info = &@"LTE".info;
  v52 = v24;
  v51 = v25;
  while (1)
  {
    if (v54)
    {
      v27 = sub_1000CB2A0();
    }

    else
    {
      if (v8 >= *(v50 + 16))
      {
        goto LABEL_43;
      }

      v27 = *(v49 + 8 * v8);
    }

    v57 = v27;
    v28 = __OFADD__(v8++, 1);
    v5 = v55;
    if (v28)
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v56 = v8;
    v29 = [v57 items];
    v24 = [v29 count];
    v71 = &_swiftEmptyArrayStorage;
    sub_1000CB310();
    v8 = v29;
    sub_1000CB020();
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_41;
    }

    if (v24)
    {
      break;
    }

LABEL_20:
    v60 = v29;
    v24 = sub_100070520(&qword_1001205C0, &type metadata accessor for NSFastEnumerationIterator);
    sub_1000CB190();
    while (v68)
    {
      sub_100050CF0(&v67, &v69);
      sub_100050CF0(&v69, &v67);
      sub_100019558(&unk_10011E710);
      swift_dynamicCast();
      sub_1000CB2F0();
      sub_1000CB320();
      sub_1000CB330();
      sub_1000CB300();
      sub_1000CB190();
    }

    (*v53)(v7, v5);
    sub_100031844(&v67, &qword_100120A50);
    v8 = v71;
    if ((v71 & 0x8000000000000000) != 0 || (v71 & 0x4000000000000000) != 0)
    {
      v31 = sub_1000CB3A0();
      if (!v31)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v31 = *(v71 + 16);
      if (!v31)
      {
        goto LABEL_9;
      }
    }

    if (v31 < 1)
    {
      goto LABEL_42;
    }

    v32 = 0;
    v5 = v8 & 0xC000000000000001;
    v60 = v8;
    do
    {
      if (v5)
      {
        sub_1000CB2A0();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v66 = p_info[255];
      v33 = swift_dynamicCastObjCProtocolConditional();
      if (!v33)
      {
        goto LABEL_27;
      }

      v34 = v33;
      v35 = [v33 thumbnailRemoteURL];
      if (v35)
      {
        v36 = v35;
        v37 = v31;
        v38 = v5;
        v39 = p_info;
        v40 = v7;
        v41 = v22;
        v42 = v58;
        sub_1000C9440();

        sub_10006C868(v42, v63, v64, v65);
        v43 = v42;
        v22 = v41;
        v7 = v40;
        p_info = v39;
        v5 = v38;
        v31 = v37;
        (*v61)(v43, v62);
      }

      v44 = [v34 sourceNameImageRemoteURL];
      if (v44)
      {
        v45 = v59;
        v46 = v44;
        sub_1000C9440();

        sub_10006C868(v45, v63, v64, v65);
        swift_unknownObjectRelease();
        (*v61)(v45, v62);
      }

      else
      {
LABEL_27:
        swift_unknownObjectRelease();
      }

      ++v32;
    }

    while (v31 != v32);
LABEL_9:

    v8 = v56;
    v24 = v52;
    if (v56 == v51)
    {
      goto LABEL_45;
    }
  }

  sub_100070520(&qword_1001205C0, &type metadata accessor for NSFastEnumerationIterator);
  while (1)
  {
    result = sub_1000CB190();
    if (!v70)
    {
      break;
    }

    sub_100027BB8(&v69, &v67);
    sub_100019558(&unk_10011E710);
    swift_dynamicCast();
    sub_10001E37C(&v69);
    sub_1000CB2F0();
    sub_1000CB320();
    sub_1000CB330();
    sub_1000CB300();
    if (!--v24)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000703B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100070418()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000704B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100070520(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100070568()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000705A0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_100070600(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100070664(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for LayoutContext();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100070724(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LayoutContext();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000707C8()
{
  result = sub_10001F934(319, &unk_1001206D0);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LayoutContext();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100070868()
{
  result = qword_100120708;
  if (!qword_100120708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120708);
  }

  return result;
}

UIColor __swiftcall UIColor.init(hex:)(Swift::String hex)
{
  v1 = sub_100070E40(hex._countAndFlagsBits, hex._object);
  v3 = v2;

  v5 = HIBYTE(v3) & 0xF;
  v6 = v1 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v7 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    goto LABEL_90;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    LODWORD(v1) = sub_100071310(v1, v3, 16);
    v27 = v31;
    goto LABEL_89;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    aBlock = v1;
    v33 = v3 & 0xFFFFFFFFFFFFFFLL;
    if (v1 == 43)
    {
      if (v5)
      {
        if (--v5)
        {
          v1 = 0;
          v19 = &aBlock + 1;
          while (1)
          {
            v20 = *v19;
            v21 = v20 - 48;
            if ((v20 - 48) >= 0xA)
            {
              if ((v20 - 65) < 6)
              {
                v21 = v20 - 55;
              }

              else
              {
                if ((v20 - 97) > 5)
                {
                  goto LABEL_87;
                }

                v21 = v20 - 87;
              }
            }

            if ((v1 - 0x800000000000000) >> 60 != 15)
            {
              break;
            }

            v12 = __OFADD__(16 * v1, v21);
            v1 = 16 * v1 + v21;
            if (v12)
            {
              break;
            }

            ++v19;
            if (!--v5)
            {
              goto LABEL_88;
            }
          }
        }

        goto LABEL_87;
      }

LABEL_98:
      __break(1u);
      return result;
    }

    if (v1 != 45)
    {
      if (v5)
      {
        v1 = 0;
        p_aBlock = &aBlock;
        while (1)
        {
          v25 = *p_aBlock;
          v26 = v25 - 48;
          if ((v25 - 48) >= 0xA)
          {
            if ((v25 - 65) < 6)
            {
              v26 = v25 - 55;
            }

            else
            {
              if ((v25 - 97) > 5)
              {
                goto LABEL_87;
              }

              v26 = v25 - 87;
            }
          }

          if ((v1 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v12 = __OFADD__(16 * v1, v26);
          v1 = 16 * v1 + v26;
          if (v12)
          {
            break;
          }

          p_aBlock = (p_aBlock + 1);
          if (!--v5)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    if (v5)
    {
      if (--v5)
      {
        v1 = 0;
        v13 = &aBlock + 1;
        while (1)
        {
          v14 = *v13;
          v15 = v14 - 48;
          if ((v14 - 48) >= 0xA)
          {
            if ((v14 - 65) < 6)
            {
              v15 = v14 - 55;
            }

            else
            {
              if ((v14 - 97) > 5)
              {
                goto LABEL_87;
              }

              v15 = v14 - 87;
            }
          }

          if ((v1 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v12 = __OFSUB__(16 * v1, v15);
          v1 = 16 * v1 - v15;
          if (v12)
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    goto LABEL_96;
  }

  if ((v1 & 0x1000000000000000) != 0)
  {
    result.super.isa = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result.super.isa = sub_1000CB2E0();
  }

  v8 = *result.super.isa;
  if (v8 == 43)
  {
    if (v6 < 1)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v5 = v6 - 1;
    if (v6 != 1)
    {
      if (result.super.isa)
      {
        v1 = 0;
        v16 = result.super.isa + 1;
        while (1)
        {
          v17 = *v16;
          v18 = v17 - 48;
          if ((v17 - 48) >= 0xA)
          {
            if ((v17 - 65) < 6)
            {
              v18 = v17 - 55;
            }

            else
            {
              if ((v17 - 97) > 5)
              {
                goto LABEL_87;
              }

              v18 = v17 - 87;
            }
          }

          if ((v1 - 0x800000000000000) >> 60 != 15)
          {
            goto LABEL_87;
          }

          v12 = __OFADD__(16 * v1, v18);
          v1 = 16 * v1 + v18;
          if (v12)
          {
            goto LABEL_87;
          }

          ++v16;
          if (!--v5)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_75;
    }

LABEL_87:
    LODWORD(v1) = 0;
    LOBYTE(v5) = 1;
    goto LABEL_88;
  }

  if (v8 != 45)
  {
    if (v6)
    {
      if (result.super.isa)
      {
        v1 = 0;
        while (1)
        {
          v22 = *result.super.isa;
          v23 = v22 - 48;
          if ((v22 - 48) >= 0xA)
          {
            if ((v22 - 65) < 6)
            {
              v23 = v22 - 55;
            }

            else
            {
              if ((v22 - 97) > 5)
              {
                goto LABEL_87;
              }

              v23 = v22 - 87;
            }
          }

          if ((v1 - 0x800000000000000) >> 60 != 15)
          {
            goto LABEL_87;
          }

          v12 = __OFADD__(16 * v1, v23);
          v1 = 16 * v1 + v23;
          if (v12)
          {
            goto LABEL_87;
          }

          ++result.super.isa;
          if (!--v6)
          {
            LOBYTE(v5) = 0;
            goto LABEL_88;
          }
        }
      }

      goto LABEL_75;
    }

    goto LABEL_87;
  }

  if (v6 < 1)
  {
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v5 = v6 - 1;
  if (v6 == 1)
  {
    goto LABEL_87;
  }

  if (result.super.isa)
  {
    v1 = 0;
    v9 = result.super.isa + 1;
    while (1)
    {
      v10 = *v9;
      v11 = v10 - 48;
      if ((v10 - 48) >= 0xA)
      {
        if ((v10 - 65) < 6)
        {
          v11 = v10 - 55;
        }

        else
        {
          if ((v10 - 97) > 5)
          {
            goto LABEL_87;
          }

          v11 = v10 - 87;
        }
      }

      if ((v1 - 0x800000000000000) >> 60 != 15)
      {
        goto LABEL_87;
      }

      v12 = __OFSUB__(16 * v1, v11);
      v1 = 16 * v1 - v11;
      if (v12)
      {
        goto LABEL_87;
      }

      ++v9;
      if (!--v5)
      {
        goto LABEL_88;
      }
    }
  }

LABEL_75:
  LODWORD(v1) = 0;
  LOBYTE(v5) = 0;
LABEL_88:
  v38 = v5;
  v27 = v5;
LABEL_89:

  if (v27)
  {
LABEL_90:
    v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v36 = sub_100071268;
    v37 = 0;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_1000712A8;
    v35 = &unk_10010E9B0;
    v29 = _Block_copy(&aBlock);
    v30 = [v28 initWithDynamicProvider:v29];
    _Block_release(v29);
    return v30;
  }

  return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:BYTE3(v1) / 255.0 green:BYTE2(v1) / 255.0 blue:BYTE1(v1) / 255.0 alpha:v1 / 255.0];
}

UIColor __swiftcall UIColor.init(hex:)(Swift::Int hex)
{
  v1 = hex;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithRed:HIBYTE(v1) / 255.0 green:BYTE2(v1) / 255.0 blue:BYTE1(v1) / 255.0 alpha:v1 / 255.0];
}

uint64_t sub_100070E40(uint64_t a1, unint64_t a2)
{
  v7._countAndFlagsBits = 35;
  v7._object = 0xE100000000000000;
  v4 = sub_1000CAE30(v7);

  if (v4)
  {
    sub_100071D28(1uLL, a1, a2);

    a1 = sub_1000CAD70();
  }

  if (sub_1000CADA0() != 8)
  {
    if (sub_1000CADA0() == 6)
    {
      v6 = a1;
    }

    else
    {
      if (sub_1000CADA0() == 4)
      {
        sub_1000CADC0();
        sub_1000CAE50();
        sub_1000CADC0();
        sub_1000CAE50();
        sub_1000CADC0();
        sub_1000CAE50();
        sub_1000CADC0();
        sub_1000CAE50();

        v6 = 0;
        sub_1000CB280(16);
        sub_1000CAC40();
        sub_1000CAC40();

        sub_1000CAC40();
        sub_1000CAC40();

        sub_1000CAC40();
        sub_1000CAC40();

        sub_1000CAC40();
        sub_1000CAC40();

        return v6;
      }

      if (sub_1000CADA0() != 3)
      {
        return a1;
      }

      sub_1000CADC0();
      sub_1000CAE50();
      sub_1000CADC0();
      sub_1000CAE50();
      sub_1000CADC0();
      sub_1000CAE50();

      v6 = 0;
      sub_1000CAC40();
      sub_1000CAC40();

      sub_1000CAC40();
      sub_1000CAC40();

      sub_1000CAC40();
      sub_1000CAC40();
    }

    v8._countAndFlagsBits = 17990;
    v8._object = 0xE200000000000000;
    sub_1000CADD0(v8);
    return v6;
  }

  return a1;
}

id sub_100071268()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

id sub_1000712A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

unsigned __int8 *sub_100071310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1000CAE60();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000718B4();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1000CB2E0();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_10007189C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000718B4()
{
  v0 = sub_1000CAE70();
  v4 = sub_100071934(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100071934(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1000CB180();
    if (!v9 || (v10 = v9, v11 = sub_10009A500(v9, 0), v12 = sub_100071A8C(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1000CAD80();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1000CAD80();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1000CB2E0();
LABEL_4:

  return sub_1000CAD80();
}

unint64_t sub_100071A8C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_100071CAC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1000CAE10();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1000CB2E0();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_100071CAC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1000CADF0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_100071CAC(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1000CAE20();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_1000CAE00();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_100071D28(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1000CADB0();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1000CAE70();
}

NSString *sub_100071DD8()
{
  v1 = v0;
  v2 = sub_1000CA0B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for ContentSizeCategory.extraSmall(_:))
  {
    v7 = &UIContentSizeCategoryExtraSmall;
  }

  else if (v6 == enum case for ContentSizeCategory.small(_:))
  {
    v7 = &UIContentSizeCategorySmall;
  }

  else if (v6 == enum case for ContentSizeCategory.medium(_:))
  {
    v7 = &UIContentSizeCategoryMedium;
  }

  else if (v6 == enum case for ContentSizeCategory.large(_:))
  {
    v7 = &UIContentSizeCategoryLarge;
  }

  else if (v6 == enum case for ContentSizeCategory.extraLarge(_:))
  {
    v7 = &UIContentSizeCategoryExtraLarge;
  }

  else if (v6 == enum case for ContentSizeCategory.extraExtraLarge(_:))
  {
    v7 = &UIContentSizeCategoryExtraExtraLarge;
  }

  else if (v6 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    v7 = &UIContentSizeCategoryExtraExtraExtraLarge;
  }

  else if (v6 == enum case for ContentSizeCategory.accessibilityMedium(_:))
  {
    v7 = &UIContentSizeCategoryAccessibilityMedium;
  }

  else if (v6 == enum case for ContentSizeCategory.accessibilityLarge(_:))
  {
    v7 = &UIContentSizeCategoryAccessibilityLarge;
  }

  else if (v6 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
  {
    v7 = &UIContentSizeCategoryAccessibilityExtraLarge;
  }

  else if (v6 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
  {
    v7 = &UIContentSizeCategoryAccessibilityExtraExtraLarge;
  }

  else
  {
    if (v6 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      v10 = *(v3 + 8);
      v11 = UIContentSizeCategoryUnspecified;
      v10(v5, v2);
      return v11;
    }

    v7 = &UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  }

  v8 = *v7;

  return v8;
}

uint64_t sub_100072098@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a2;
  v43 = a1;
  v44 = a3;
  v4 = sub_1000CA0B0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v45 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  v10 = *(v5 + 16);
  v40 = v3;
  v46 = v10;
  v10(&v29 - v8, v3, v4);
  v33 = v5;
  v42 = *(v5 + 88);
  v11 = v42(v9, v4);
  v12 = v11;
  v41 = enum case for ContentSizeCategory.extraSmall(_:);
  v38 = enum case for ContentSizeCategory.small(_:);
  v14 = v11 == enum case for ContentSizeCategory.extraSmall(_:) || v11 == enum case for ContentSizeCategory.small(_:);
  v36 = v14;
  v37 = enum case for ContentSizeCategory.medium(_:);
  if (v11 == enum case for ContentSizeCategory.medium(_:))
  {
    v14 = 1;
  }

  v15 = 1;
  v34 = v14;
  v35 = enum case for ContentSizeCategory.large(_:);
  if (v14)
  {
    v16 = 1;
    v17 = 1;
    v18 = 1;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
  }

  else
  {
    v16 = 1;
    v17 = 1;
    v18 = 1;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
    if (v11 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_28;
    }

    if (v11 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      goto LABEL_26;
    }

    if (v11 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
LABEL_25:
      v21 = 0;
LABEL_26:
      v22 = 0;
      goto LABEL_28;
    }

    if (v11 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
LABEL_24:
      v20 = 0;
      goto LABEL_25;
    }

    if (v11 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
LABEL_23:
      v19 = 0;
      goto LABEL_24;
    }

    if (v11 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
LABEL_22:
      v18 = 0;
      goto LABEL_23;
    }

    if (v11 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
LABEL_21:
      v17 = 0;
      goto LABEL_22;
    }

    if (v11 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
LABEL_20:
      v16 = 0;
      goto LABEL_21;
    }

    if (v11 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      v15 = 0;
      goto LABEL_20;
    }

    (*(v33 + 8))(v9, v4);
    v15 = 1;
    v16 = 1;
    v17 = 1;
    v18 = 1;
  }

LABEL_28:
  v31 = v17;
  v32 = v18;
  v29 = v15;
  v30 = v16;
  v23 = v45;
  v24 = v43;
  v46(v45, v43, v4);
  v25 = v42(v23, v4);
  if (v25 != v41)
  {
    if (v25 == v38)
    {
      if (v12 == v41)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == v37)
    {
      if (v36)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == v35)
    {
      if (v34)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      if (v22)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      if (v21)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      if (v20)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      if (v19)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      if (v32)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      if (v31)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      if (v30)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else if (v25 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      if (v29)
      {
        return (v46)(v44, v24, v4);
      }
    }

    else
    {
      (*(v33 + 8))(v45, v4);
      if (v34)
      {
        return (v46)(v44, v24, v4);
      }
    }
  }

  v27 = v39;
  v26 = v40;
  if (sub_10007253C(v40, v39))
  {
    v24 = v27;
  }

  else
  {
    v24 = v26;
  }

  return (v46)(v44, v24, v4);
}

BOOL sub_10007253C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v3 = sub_1000CA0B0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a2, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v12 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v12 == enum case for ContentSizeCategory.small(_:))
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.medium(_:))
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v12 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v13 = 4;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v13 = 5;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v13 = 6;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v13 = 7;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v13 = 8;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v13 = 9;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v13 = 10;
    }

    else
    {
      if (v12 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == enum case for ContentSizeCategory.small(_:))
  {
    v16 = 1;
  }

  else if (v15 == enum case for ContentSizeCategory.medium(_:))
  {
    v16 = 2;
  }

  else
  {
    if (v15 != enum case for ContentSizeCategory.large(_:))
    {
      if (v15 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v16 = 4;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v16 = 5;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v16 = 6;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v16 = 7;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v16 = 8;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v16 = 9;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v16 = 10;
        return v13 < v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v16 = 11;
        return v13 < v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 < v16;
}

unint64_t sub_100072958()
{
  result = qword_100120720;
  if (!qword_100120720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120720);
  }

  return result;
}

unint64_t sub_1000729B0()
{
  result = qword_100120728;
  if (!qword_100120728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120728);
  }

  return result;
}

unint64_t sub_100072A08()
{
  result = qword_100120730;
  if (!qword_100120730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120730);
  }

  return result;
}

unint64_t sub_100072A60()
{
  result = qword_100120738;
  if (!qword_100120738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120738);
  }

  return result;
}

uint64_t sub_100072B20()
{
  v0 = sub_1000C9360();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000C9610();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000CACC0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000C9370();
  sub_10001A5EC(v6, qword_100134528);
  sub_10001A5B4(v6, qword_100134528);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000C9380();
}

uint64_t sub_100072D00@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CEA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000C9370();
  v3 = sub_10001A5B4(v2, qword_100134528);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100072DC8()
{
  sub_1000C8E90();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100072E2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100072EA0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100072E54(uint64_t a1)
{
  v2 = sub_1000729B0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100072EA0()
{
  v0 = sub_1000C9140();
  v28 = *(v0 - 8);
  v29 = v0;
  __chkstk_darwin(v0);
  v27 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100019558(&qword_10011D800);
  __chkstk_darwin(v2 - 8);
  v26 = v23 - v3;
  v4 = sub_100019558(&qword_100120740);
  __chkstk_darwin(v4 - 8);
  v25 = v23 - v5;
  v6 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v6 - 8);
  v24 = v23 - v7;
  v8 = sub_1000C9360();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C9610();
  __chkstk_darwin(v12 - 8);
  v13 = sub_1000CACC0();
  __chkstk_darwin(v13 - 8);
  v14 = sub_1000C9370();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23[1] = sub_100019558(&qword_100120748);
  sub_1000CACB0();
  sub_1000C95E0();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v17 = *(v9 + 104);
  v17(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  sub_1000C9380();
  sub_1000CACB0();
  sub_1000C95E0();
  v17(v11, v16, v8);
  v18 = v24;
  sub_1000C9380();
  (*(v15 + 56))(v18, 0, 1, v14);
  v19 = sub_1000CACA0();
  v30 = 0uLL;
  (*(*(v19 - 8) + 56))(v25, 1, 1, v19);
  v20 = sub_1000C8E70();
  (*(*(v20 - 8) + 56))(v26, 1, 1, v20);
  (*(v28 + 104))(v27, enum case for InputConnectionBehavior.default(_:), v29);
  v21 = sub_1000C8EF0();
  sub_100019558(&qword_100120750);
  sub_1000C8DA0();
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  sub_1000C8D90();
  sub_1000C8D50();
  return v21;
}

uint64_t sub_100073408(uint64_t a1, uint64_t a2)
{
  *&v32 = a1;
  *(&v32 + 1) = a2;
  v2 = sub_1000C9140();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v29 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100019558(&qword_10011D800);
  __chkstk_darwin(v4 - 8);
  v28 = v25 - v5;
  v6 = sub_100019558(&qword_100120740);
  __chkstk_darwin(v6 - 8);
  v27 = v25 - v7;
  v8 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v8 - 8);
  v26 = v25 - v9;
  v10 = sub_1000C9360();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C9610();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1000CACC0();
  __chkstk_darwin(v15 - 8);
  v16 = sub_1000C9370();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v25[1] = sub_100019558(&qword_100120748);
  sub_1000CACB0();
  sub_1000C95E0();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_1000C9380();
  sub_1000CACB0();
  sub_1000C95E0();
  v19(v13, v18, v10);
  v20 = v26;
  sub_1000C9380();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = sub_1000CACA0();
  v33 = 0uLL;
  (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
  v22 = sub_1000C8E70();
  (*(*(v22 - 8) + 56))(v28, 1, 1, v22);
  (*(v30 + 104))(v29, enum case for InputConnectionBehavior.default(_:), v31);
  v23 = sub_1000C8EF0();
  sub_100019558(&qword_100120750);
  sub_1000C8DA0();
  v33 = 0u;
  v34 = 0u;
  v35 = 0;

  sub_1000C8D90();
  sub_1000C8D50();
  v33 = v32;

  sub_1000C8ED0();

  return v23;
}

uint64_t sub_1000739BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100019558(&qword_100120758);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5] + 32);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = type metadata accessor for TodayContent();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = type metadata accessor for LayoutContext();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_100073B4C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100019558(&qword_100120758);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5] + 32) = -a2;
    return result;
  }

  v13 = type metadata accessor for TodayContent();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = type metadata accessor for LayoutContext();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for RegularContentView()
{
  result = qword_1001207B8;
  if (!qword_1001207B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100073D18()
{
  sub_100073DCC();
  if (v0 <= 0x3F)
  {
    sub_100073E24();
    if (v1 <= 0x3F)
    {
      type metadata accessor for TodayContent();
      if (v2 <= 0x3F)
      {
        type metadata accessor for LayoutContext();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100073DCC()
{
  if (!qword_1001207C8)
  {
    sub_1000C9C50();
    v0 = sub_1000C9C60();
    if (!v1)
    {
      atomic_store(v0, &qword_1001207C8);
    }
  }
}

void sub_100073E24()
{
  if (!qword_10011FB68)
  {
    v0 = sub_1000C9C60();
    if (!v1)
    {
      atomic_store(v0, &qword_10011FB68);
    }
  }
}

uint64_t sub_100073E90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000C9FA0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100019558(&qword_100120838);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_10002DFB4(v2, &v14 - v9, &qword_100120838);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000C9C50();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1000CB050();
    v13 = sub_1000CA220();
    sub_1000C9BF0();

    sub_1000C9F90();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_100074090()
{
  v1 = sub_1000C9FA0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for RegularContentView() + 20);
  v7 = *v5;
  v6 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  if (*(v5 + 32) == 1)
  {
    return *v5;
  }

  sub_1000CB050();
  v11 = sub_1000CA220();
  sub_1000C9BF0();

  sub_1000C9F90();
  swift_getAtKeyPath();
  sub_100076684(v7, v6, v9, v8, 0);
  (*(v2 + 8))(v4, v1);
  return v12;
}

uint64_t sub_10007421C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_100019558(&qword_100120860);
  v4 = __chkstk_darwin(v3 - 8);
  v52 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = (&v45 - v6);
  v47 = sub_1000CA2E0();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100019558(&qword_100120868);
  v10 = *(v9 - 8);
  v48 = v9;
  v49 = v10;
  __chkstk_darwin(v9);
  v12 = (&v45 - v11);
  v13 = sub_100019558(&unk_100120590);
  __chkstk_darwin(v13 - 8);
  v15 = &v45 - v14;
  v16 = type metadata accessor for Banner();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100019558(&qword_100120870);
  v21 = __chkstk_darwin(v20 - 8);
  v50 = &v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v45 - v23;
  v25 = a1;
  v26 = a1 + *(type metadata accessor for RegularContentView() + 24);
  v27 = type metadata accessor for TodayContent();
  sub_10002DFB4(v26 + *(v27 + 20), v15, &unk_100120590);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100031844(v15, &unk_100120590);
    v28 = 1;
    v29 = v48;
  }

  else
  {
    sub_100076C24(v15, v19, type metadata accessor for Banner);
    v30 = sub_100074810();
    v32 = v31;
    v33 = type metadata accessor for BannerView();
    sub_100076D54(v19, v12 + *(v33 + 20), type metadata accessor for Banner);
    *v12 = v30;
    v12[1] = v32;
    *&v53 = 0x4028000000000000;
    (*(v45 + 104))(v46, enum case for Font.TextStyle.caption(_:), v47);
    sub_10004676C();
    sub_1000C9C80();
    sub_100077948();
    sub_1000CA7A0();
    sub_1000C9CC0();
    sub_100076DBC(v19, type metadata accessor for Banner);
    v34 = v48;
    v35 = (v12 + *(v48 + 36));
    v36 = v54;
    *v35 = v53;
    v35[1] = v36;
    v35[2] = v55;
    sub_10007682C(v12, v24);
    v28 = 0;
    v29 = v34;
  }

  (*(v49 + 56))(v24, v28, 1, v29);
  *v7 = sub_1000CA780();
  v7[1] = v37;
  v38 = v7 + *(sub_100019558(&qword_100120878) + 44);
  *v38 = sub_1000CA0E0();
  *(v38 + 1) = 0;
  v38[16] = 0;
  v39 = sub_100019558(&qword_100120880);
  sub_1000749DC(v25, &v38[*(v39 + 44)]);
  v40 = v50;
  sub_10002DFB4(v24, v50, &qword_100120870);
  v41 = v52;
  sub_10002DFB4(v7, v52, &qword_100120860);
  v42 = v51;
  sub_10002DFB4(v40, v51, &qword_100120870);
  v43 = sub_100019558(&qword_100120888);
  sub_10002DFB4(v41, v42 + *(v43 + 48), &qword_100120860);
  sub_100031844(v7, &qword_100120860);
  sub_100031844(v24, &qword_100120870);
  sub_100031844(v41, &qword_100120860);
  return sub_100031844(v40, &qword_100120870);
}

uint64_t sub_100074810()
{
  v0 = sub_1000C9C50();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v15 - v5;
  sub_100073E90(&v15 - v5);
  v7 = enum case for ColorScheme.dark(_:);
  v8 = *(v1 + 104);
  v8(v4, enum case for ColorScheme.dark(_:), v0);
  v9 = sub_1000C9C40();
  v10 = *(v1 + 8);
  v10(v4, v0);
  v10(v6, v0);
  if (v9)
  {
    v11 = sub_1000CA580();
  }

  else
  {
    v11 = sub_1000CA5B0();
  }

  v12 = v11;
  sub_100073E90(v6);
  v8(v4, v7, v0);
  v13 = sub_1000C9C40();
  v10(v4, v0);
  v10(v6, v0);
  if (v13)
  {
    sub_1000CA5B0();
  }

  else
  {
    sub_1000CA580();
  }

  return v12;
}

uint64_t sub_1000749DC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for RegularContentView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100019558(&qword_100120890);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v9);
  v13 = &v24[-v12 - 8];
  type metadata accessor for TodayContent();
  sub_100076D54(a1, &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for RegularContentView);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_100076C24(&v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v15 + v14, type metadata accessor for RegularContentView);
  type metadata accessor for SectionView();
  sub_100076D0C(&qword_100120898, type metadata accessor for SectionView);
  sub_1000CA720();
  sub_1000CA7A0();
  sub_1000C9DC0();
  *&v24[55] = v29;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[103] = v32;
  *&v24[7] = v26;
  *&v24[23] = v27;
  v25 = 1;
  *&v24[39] = v28;
  v16 = *(v8 + 16);
  v16(v11, v13, v7);
  v16(a2, v11, v7);
  v17 = &a2[*(sub_100019558(&qword_1001208A0) + 48)];
  v18 = *&v24[80];
  *(v17 + 73) = *&v24[64];
  *(v17 + 89) = v18;
  *(v17 + 105) = *&v24[96];
  v19 = *&v24[16];
  *(v17 + 9) = *v24;
  *(v17 + 25) = v19;
  v20 = *&v24[48];
  *(v17 + 41) = *&v24[32];
  *v17 = 0;
  v17[8] = 1;
  *(v17 + 15) = *&v24[111];
  *(v17 + 57) = v20;
  v21 = *(v8 + 8);
  v21(v13, v7);
  return (v21)(v11, v7);
}

uint64_t sub_100074DA8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Section();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for RegularContentView() + 24);
  result = type metadata accessor for TodayContent();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = a2 + v10;
    v13 = *(v12 + *(result + 24));
    if (*(v13 + 16) > a1)
    {
      v14 = v13 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a1;
      sub_100076D54(v14, a3, type metadata accessor for Section);
      v15 = type metadata accessor for SectionView();
      sub_100076D54(v12, a3 + v15[5], type metadata accessor for TodayContent);
      sub_100076D54(v14, v9, type metadata accessor for Section);
      sub_100074FE0(a1, v24);
      sub_100076DBC(v9, type metadata accessor for Section);
      KeyPath = swift_getKeyPath();
      *(a3 + v15[8]) = swift_getKeyPath();
      sub_100019558(&qword_100120838);
      result = swift_storeEnumTagMultiPayload();
      v17 = a3 + v15[6];
      v18 = v24[7];
      *(v17 + 96) = v24[6];
      *(v17 + 112) = v18;
      *(v17 + 128) = v24[8];
      *(v17 + 144) = v25;
      v19 = v24[3];
      *(v17 + 32) = v24[2];
      *(v17 + 48) = v19;
      v20 = v24[5];
      *(v17 + 64) = v24[4];
      *(v17 + 80) = v20;
      v21 = v24[1];
      *v17 = v24[0];
      *(v17 + 16) = v21;
      v22 = a3 + v15[7];
      *v22 = KeyPath;
      *(v22 + 8) = 0;
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_100074FE0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v5 = type metadata accessor for RegularContentView();
    v6 = v2 + *(v5 + 24);
    v7 = v3 != *(*(v6 + *(type metadata accessor for TodayContent() + 24)) + 16);
    v8 = (v2 + *(v5 + 28));
    sub_100079038();
    v10 = v9;
    sub_100079BA0();
    v12 = v11;
    v13 = *(v8 + *(type metadata accessor for LayoutContext() + 40));
    sub_100079BA0();
    v15 = v13 * v14;
    sub_100079038();
    v17 = v15 - (v16 + v16);
    sub_100079038();
    v19 = v17 + (v13 + v13) * v18;
    sub_100079BA0();
    v21 = v10 + v12 * (sub_100079848() * (v19 / v20));
    sub_100079038();
    v23 = v22 + v21;
    v24 = sub_100078C80();
    [v24 nt_scaledValueForValue:1.0];
    v26 = v25;

    v27 = v26 * 12.0 + *v8 + 6.0;
    v28 = sub_100078C80();
    sub_100077A2C(v34);
    v29 = v8[1];
    sub_100079038();
    *a2 = v7;
    *(a2 + 8) = v23;
    *(a2 + 16) = 0x402E000000000000;
    *(a2 + 24) = v27;
    *(a2 + 32) = v28;
    v31 = v34[2];
    *(a2 + 88) = v34[3];
    v32 = v34[5];
    *(a2 + 104) = v34[4];
    *(a2 + 120) = v32;
    *(a2 + 136) = v35;
    v33 = v34[1];
    *(a2 + 40) = v34[0];
    *(a2 + 56) = v33;
    *(a2 + 72) = v31;
    *(a2 + 144) = v29 - v30;
  }
}

__n128 sub_100075178@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000CA0D0();
  sub_10007520C(a1, v7);
  *&v6[55] = v7[3];
  *&v6[39] = v7[2];
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *(a2 + 65) = *&v6[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 80) = *&v6[63];
  *(a2 + 17) = *v6;
  return result;
}

uint64_t sub_10007520C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100019558(&unk_100120590);
  __chkstk_darwin(v4 - 8);
  v6 = v23 - v5;
  v7 = a1 + *(type metadata accessor for RegularContentView() + 24);
  v8 = type metadata accessor for TodayContent();
  sub_10002DFB4(v7 + *(v8 + 20), v6, &unk_100120590);
  v9 = type metadata accessor for Banner();
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    sub_100031844(v6, &unk_100120590);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v17 = &v6[*(v9 + 40)];
    v18 = *v17;
    v19 = *(v17 + 1);
    v20 = v17[16];
    v24 = v19;
    v25 = v18;
    v23[1] = v20;
    sub_10007664C(v18, v19);
    sub_100076DBC(v6, type metadata accessor for Banner);
    sub_10007545C(v18, v19, v20, v26);
    v10 = v26[0];
    sub_100077948();
    sub_100074090();
    sub_1000CA7A0();
    sub_1000C9CC0();
    v11 = v26[1];
    v12 = v27;
    v13 = v28;
    v14 = v29;
    v15 = v30;
    v16 = v31;
    sub_1000375D8(v25, v24);
  }

  sub_100075C4C(v26);
  v21 = v26[0];
  *a2 = v10;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v13;
  a2[4] = v14;
  a2[5] = v15;
  a2[6] = v16;
  a2[7] = v21;
}

uint64_t sub_10007545C@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v49 = a2;
  v55 = a1;
  v56 = a4;
  v5 = sub_100019558(&qword_100120828);
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v51 = &v47 - v6;
  v52 = sub_100019558(&qword_100120830);
  __chkstk_darwin(v52);
  v50 = &v47 - v7;
  v8 = sub_1000CA550();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000C9C50();
  v13 = __chkstk_darwin(v12);
  v47 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v47 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v47 - v19;
  __chkstk_darwin(v18);
  v22 = &v47 - v21;
  v48 = v23;
  v24 = (v23 + 88);
  if (a3)
  {
    sub_100073E90(v20);
    v25 = *v24;
    v26 = (*v24)(v20, v12);
    v27 = enum case for ColorScheme.light(_:);
    if (v26 == enum case for ColorScheme.light(_:))
    {
      v28 = v55;
      v29 = v55;
    }

    else
    {
      v28 = v55;
      if (v26 != enum case for ColorScheme.dark(_:))
      {
        v35 = v55;
        sub_1000336E0(v35);

        (*(v48 + 8))(v20, v12);
        goto LABEL_13;
      }

      v29 = v49;
    }

    v32 = v29;
    sub_1000336E0(v29);

LABEL_13:
    sub_100073E90(v17);
    v36 = v25(v17, v12);
    if (v36 == v27)
    {
      [v28 startPoint];
      [v28 startPoint];
    }

    else if (v36 == enum case for ColorScheme.dark(_:))
    {
      v37 = v49;
      [v49 startPoint];
      [v37 startPoint];
    }

    else
    {
      [v28 startPoint];
      [v28 startPoint];
      (*(v48 + 8))(v17, v12);
    }

    v40 = v47;
    sub_100073E90(v47);
    v41 = v25(v40, v12);
    if (v41 == v27)
    {
      [v28 endPoint];
      [v28 endPoint];
    }

    else if (v41 == enum case for ColorScheme.dark(_:))
    {
      v42 = v49;
      [v49 endPoint];
      [v42 endPoint];
    }

    else
    {
      [v28 endPoint];
      [v28 endPoint];
      (*(v48 + 8))(v40, v12);
    }

    sub_1000C9D20();
    v57 = v60[0];
    v58 = v60[1];
    v59 = v61;
    v43 = sub_100048A60();
    v44 = v51;
    sub_1000CA470();
    sub_100076690(v60);
    *&v57 = &type metadata for LinearGradient;
    *(&v57 + 1) = v43;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = v54;
    sub_1000CA420();
    (*(v53 + 8))(v44, v46);
    *&v57 = v46;
    *(&v57 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    goto LABEL_25;
  }

  sub_100073E90(&v47 - v21);
  v30 = (*v24)(v22, v12);
  if (v30 == enum case for ColorScheme.light(_:))
  {
    v31 = v55;
    [v55 red];
    [v31 green];
    [v31 blue];
    (*(v9 + 104))(v11, enum case for Color.RGBColorSpace.sRGB(_:), v8);
  }

  else
  {
    v33 = (v9 + 104);
    if (v30 != enum case for ColorScheme.dark(_:))
    {
      v38 = v55;
      [v55 red];
      [v38 green];
      [v38 blue];
      (*v33)(v11, enum case for Color.RGBColorSpace.sRGB(_:), v8);
      *&v60[0] = sub_1000CA600();
      *v56 = sub_1000CA700();
      return (*(v48 + 8))(v22, v12);
    }

    v34 = v49;
    [v49 red];
    [v34 green];
    [v34 blue];
    (*v33)(v11, enum case for Color.RGBColorSpace.sRGB(_:), v8);
  }

  *&v60[0] = sub_1000CA600();
LABEL_25:
  result = sub_1000CA700();
  *v56 = result;
  return result;
}

uint64_t sub_100075C4C@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v2 = sub_100019558(&qword_100120840);
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v4 = v31 - v3;
  v32 = sub_100019558(&qword_100120848);
  __chkstk_darwin(v32);
  v31[1] = v31 - v5;
  v6 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v6 - 8);
  v8 = v31 - v7;
  v9 = sub_1000C9480();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v31 - v14;
  v16 = v1 + *(type metadata accessor for RegularContentView() + 24);
  v17 = type metadata accessor for TodayContent();
  sub_10002DFB4(v16 + *(v17 + 36), v8, &unk_10011E590);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100031844(v8, &unk_10011E590);
    v18 = [*(v16 + *(v17 + 28)) widgetConfig];
    v19 = sub_1000762D0(v18, &selRef_backgroundColorLight);
    v20 = sub_1000762D0(v18, &selRef_backgroundColorDark);
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;
    v22 = objc_allocWithZone(UIColor);
    aBlock[4] = sub_10002E530;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000712A8;
    aBlock[3] = &unk_10010EA80;
    v23 = _Block_copy(aBlock);
    v24 = v19;
    v25 = v20;
    [v22 initWithDynamicProvider:v23];
    _Block_release(v23);

    v26 = sub_1000CA610();

    aBlock[0] = v26;
    result = sub_1000CA700();
    v28 = result;
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    v29 = (*(v10 + 16))(v13, v15, v9);
    __chkstk_darwin(v29);
    v31[-2] = v1;
    sub_1000CA300();
    sub_10001B1BC(&qword_100120850, &qword_100120840);
    v30 = v34;
    sub_1000CA4C0();
    (*(v33 + 8))(v4, v30);
    sub_100076744();
    v28 = sub_1000CA700();
    result = (*(v10 + 8))(v15, v9);
  }

  *v35 = v28;
  return result;
}

void sub_100076154(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for RegularContentView() + 24);
  v4 = [*(v3 + *(type metadata accessor for TodayContent() + 28)) widgetConfig];
  v5 = sub_1000762D0(v4, &selRef_backgroundColorLight);
  v6 = sub_1000762D0(v4, &selRef_backgroundColorDark);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = objc_allocWithZone(UIColor);
  v13[4] = sub_100076F48;
  v13[5] = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_1000712A8;
  v13[3] = &unk_10010EAD0;
  v9 = _Block_copy(v13);
  v10 = v5;
  v11 = v6;
  [v8 initWithDynamicProvider:v9];
  _Block_release(v9);

  v12 = sub_1000CA610();

  *a2 = v12;
}

id sub_1000762D0(void *a1, SEL *a2)
{
  if (a1 && (v2 = [a1 *a2]) != 0)
  {
    v3 = v2;
    v4 = [objc_opt_self() colorWithHexString:v2];

    [v4 red];
    v6 = v5;
    [v4 green];
    v8 = v7;
    [v4 blue];
    v10 = v9;
    [v4 alpha];
    v12 = [objc_allocWithZone(UIColor) initWithRed:v6 green:v8 blue:v10 alpha:v11];

    return v12;
  }

  else
  {
    v14 = [objc_opt_self() systemBackgroundColor];

    return v14;
  }
}

uint64_t sub_100076408@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v12 = sub_1000CA200();
  v2 = *(v12 - 8);
  __chkstk_darwin(v12);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100019558(&qword_100120800);
  __chkstk_darwin(v10);
  v6 = &v9 - v5;
  *v6 = sub_1000CA0E0();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v7 = sub_100019558(&qword_100120808);
  sub_10007421C(v1, &v6[*(v7 + 44)]);
  sub_1000CA1F0();
  v13 = v1;
  sub_1000CA7A0();
  sub_100019558(&qword_100120810);
  sub_10001B1BC(&qword_100120818, &qword_100120800);
  sub_10001B1BC(&qword_100120820, &qword_100120810);
  sub_1000CA4D0();
  (*(v2 + 8))(v4, v12);
  return sub_100031844(v6, &qword_100120800);
}

id sub_10007664C(void *a1, void *a2)
{
  v2 = a1;

  return a2;
}

uint64_t sub_100076684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1000766E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100076724(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100076744()
{
  result = qword_100120858;
  if (!qword_100120858)
  {
    sub_1000195A0(&qword_100120848);
    sub_10001B1BC(&qword_100120850, &qword_100120840);
    sub_100076D0C(&qword_10011FCB8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120858);
  }

  return result;
}

uint64_t sub_10007682C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100019558(&qword_100120868);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007689C()
{
  v1 = v0;
  v2 = type metadata accessor for RegularContentView();
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v24 = *(*(v2 - 1) + 64);
  v5 = v0 + v4;
  sub_100019558(&qword_100120838);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000C9C50();
    (*(*(v6 - 8) + 8))(v0 + v4, v6);
  }

  else
  {
  }

  v7 = v5 + v2[5];
  sub_100076684(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));
  v8 = (v5 + v2[6]);

  v9 = type metadata accessor for TodayContent();
  v10 = v8 + *(v9 + 20);
  v11 = type metadata accessor for Banner();
  if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
  {
    v23 = v0;

    v12 = v11[7];
    v13 = sub_1000C9480();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(&v10[v12], 1, v13))
    {
      (*(v14 + 8))(&v10[v12], v13);
    }

    v15 = *&v10[v11[9]];
    if (v15 != 1)
    {
    }

    sub_1000375D8(*&v10[v11[10]], *&v10[v11[10] + 8]);
    v4 = (v3 + 16) & ~v3;
    v1 = v23;
  }

  swift_unknownObjectRelease();
  v16 = *(v9 + 36);
  v17 = sub_1000C9480();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v8 + v16, 1, v17))
  {
    (*(v18 + 8))(v8 + v16, v17);
  }

  v19 = v2[7];
  v20 = v19 + *(type metadata accessor for LayoutContext() + 32);
  v21 = sub_1000CA0B0();
  (*(*(v21 - 8) + 8))(v5 + v20, v21);

  return _swift_deallocObject(v1, v4 + v24, v3 | 7);
}

uint64_t sub_100076C24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100076C8C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RegularContentView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100074DA8(a1, v6, a2);
}

uint64_t sub_100076D0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100076D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100076DBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100076E1C@<X0>(void *a1@<X8>)
{
  result = sub_1000C9DF0();
  *a1 = v3;
  return result;
}

uint64_t sub_100076E50()
{
  sub_1000195A0(&qword_100120800);
  sub_1000195A0(&qword_100120810);
  sub_10001B1BC(&qword_100120818, &qword_100120800);
  sub_10001B1BC(&qword_100120820, &qword_100120810);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100076F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000CA0B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44));
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100077044(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000CA0B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44)) = a2 + 1;
  }

  return result;
}

uint64_t type metadata accessor for LayoutContext()
{
  result = qword_100120900;
  if (!qword_100120900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10007714C()
{
  type metadata accessor for CHSWidgetFamily(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_1000CA0B0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10007720C()
{
  sub_1000CAD90();
}

id sub_10007739C()
{
  v0 = sub_1000CA0B0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v20 - v6;
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = objc_opt_self();
  v21 = v10;
  type metadata accessor for LayoutContext();
  sub_100078A00(v7);
  sub_100078B40(v4);
  sub_100072098(v7, v4, v9);
  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v7, v0);
  v12 = sub_100071DD8();
  v11(v9, v0);
  v13 = [v10 nt_preferredFontForCondensedTextStyle:2 contentSizeCategory:v12];

  [v13 nt_scaledValueForValue:1.0];
  v15 = v14;

  sub_100078A00(v7);
  sub_100078B40(v4);
  sub_100072098(v7, v4, v9);
  v11(v4, v0);
  v11(v7, v0);
  v16 = sub_100071DD8();
  v11(v9, v0);
  v17 = [v21 nt_preferredFontForCondensedTextStyle:2 contentSizeCategory:v16];

  v18 = [v17 fontWithSize:v15 * 15.0];
  return v18;
}

uint64_t sub_100077640()
{
  v1 = *(v0 + 16) - 1;
  if (v1 >= 0xB || ((0x427u >> v1) & 1) == 0)
  {
    sub_1000CB280(38);
    v3._object = 0x80000001000E49E0;
    v3._countAndFlagsBits = 0xD000000000000024;
    sub_1000CADD0(v3);
    type metadata accessor for CHSWidgetFamily(0);
    sub_1000CB340();
    result = sub_1000CB380();
    __break(1u);
  }

  return result;
}

uint64_t sub_100077730()
{
  v1 = *(v0 + 16);
  if (v1 > 0xB)
  {
    goto LABEL_13;
  }

  if (((1 << v1) & 0x4C) == 0)
  {
    if (((1 << v1) & 0x802) != 0)
    {
      return result;
    }

LABEL_13:
    sub_1000CB280(20);
    v4._countAndFlagsBits = 0x2064696C61766E49;
    v4._object = 0xE800000000000000;
    sub_1000CADD0(v4);
    v5._object = 0x80000001000E4930;
    v5._countAndFlagsBits = 0xD000000000000015;
    sub_1000CADD0(v5);
    v6._countAndFlagsBits = 0x203A65756C617620;
    v6._object = 0xE800000000000000;
    sub_1000CADD0(v6);
    type metadata accessor for CHSWidgetFamily(0);
    sub_1000CB340();
    goto LABEL_14;
  }

  sub_100079038();
  v2 = v1 == 6 || v1 == 3;
  if (!v2 && v1 != 2)
  {
    while (1)
    {
      sub_1000CB280(43);
      v7._countAndFlagsBits = 0xD000000000000029;
      v7._object = 0x80000001000E48D0;
      sub_1000CADD0(v7);
      type metadata accessor for CHSWidgetFamily(0);
      sub_1000CB340();
LABEL_14:
      sub_1000CB380();
      __break(1u);
    }
  }

  sub_100079848();
  return sub_100079038();
}

double sub_100077948()
{
  v1 = sub_100078C80();
  [v1 nt_scaledValueForValue:1.0];
  v3 = v2;

  v4 = v3 * 12.0 + *v0 + 6.0;
  sub_100079038();
  v6 = v5;
  sub_100079BA0();
  v8 = v7;
  v9 = *(v0 + *(type metadata accessor for LayoutContext() + 40));
  sub_100079BA0();
  v11 = v9 * v10;
  sub_100079038();
  v13 = v11 - (v12 + v12);
  sub_100079038();
  v15 = v13 + (v9 + v9) * v14;
  sub_100079BA0();
  v17 = v6 + v8 * (sub_100079848() * (v15 / v16));
  sub_100079038();
  v19 = v4 + v18 + v17;
  v20 = v0[1];
  sub_100079038();
  return v20 - v21 + v19;
}

uint64_t sub_100077A2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10007739C();
  sub_100079BA0();
  v5 = v4;
  v6 = *(v1 + *(type metadata accessor for LayoutContext() + 40));
  sub_100079BA0();
  v8 = v6 * v7;
  sub_100079038();
  v10 = v8 - (v9 + v9);
  sub_100079038();
  v12 = v10 + (v6 + v6) * v11;
  sub_100079BA0();
  v14 = v5 * (sub_100079848() * (v12 / v13));
  v15 = sub_1000797B0();
  v17 = v16;
  v19 = v18;
  sub_1000791C4();
  v21 = v20;
  sub_100077640();
  v23 = v22;
  sub_1000793A0();
  v25 = v24;
  v26 = sub_10007957C();
  v27 = [objc_opt_self() nt_preferredFontForCondensedTextStyle:2 contentSizeCategory:UIContentSizeCategoryLarge];
  sub_1000791C4();
  v29 = v28;
  sub_1000791C4();
  v31 = v30 + 3.0;
  result = sub_100079038();
  *a1 = v3;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15;
  *(a1 + 24) = v17;
  *(a1 + 32) = v19 & 1;
  *(a1 + 40) = v21;
  *(a1 + 48) = v23;
  *(a1 + 56) = v25;
  *(a1 + 64) = v26;
  *(a1 + 72) = v27;
  *(a1 + 80) = v29;
  *(a1 + 88) = v31;
  *(a1 + 96) = v33;
  return result;
}

unint64_t sub_100077B84(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696772614D706F74;
    v6 = 0x6C696D6146736863;
    if (a1 != 2)
    {
      v6 = 0x5379616C70736964;
    }

    if (a1)
    {
      v5 = 0x614D6D6F74746F62;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696C64616548746ELL;
    v2 = 0x686563616C507369;
    if (a1 != 7)
    {
      v2 = 0x6569766572507369;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001BLL;
    if (a1 != 4)
    {
      v3 = 0x5379616C70736964;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_100077CEC()
{
  sub_1000CB5C0();
  sub_10007720C();
  return sub_1000CB5F0();
}

Swift::Int sub_100077D3C()
{
  sub_1000CB5C0();
  sub_10007720C();
  return sub_1000CB5F0();
}

uint64_t sub_100077D80@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10007A1F0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_100077DB0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100077B84(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100077DF8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10007A1F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100077E2C(uint64_t a1)
{
  v2 = sub_100079E18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100077E68(uint64_t a1)
{
  v2 = sub_100079E18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100077EA4(void *a1)
{
  v3 = v1;
  v5 = sub_100019558(&qword_100120988);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10001E2E4(a1, a1[3]);
  sub_100079E18();
  sub_1000CB630();
  *&v14 = *v3;
  v15 = 0;
  sub_100079FD4();
  sub_1000CB4F0();
  if (!v2)
  {
    *&v14 = *(v3 + 8);
    v15 = 1;
    sub_1000CB4F0();
    LOBYTE(v14) = 2;
    sub_1000CB4D0();
    v14 = *(v3 + 24);
    v15 = 3;
    type metadata accessor for CGSize(0);
    sub_10007A028(&qword_100120998, type metadata accessor for CGSize);
    sub_1000CB4F0();
    v13 = type metadata accessor for LayoutContext();
    v9 = sub_100071DD8();
    sub_1000CAD00();

    LOBYTE(v14) = 4;
    sub_1000CB4B0();

    v10 = v13;
    *&v14 = *(v3 + *(v13 + 36));
    v15 = 5;
    sub_1000CB4F0();
    *&v14 = *(v3 + *(v10 + 40));
    v15 = 6;
    sub_1000CB4F0();
    LOBYTE(v14) = 7;
    sub_1000CB4C0();
    LOBYTE(v14) = 8;
    sub_1000CB4C0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100078280@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_100019558(&qword_100120958);
  __chkstk_darwin(v3 - 8);
  v36 = &v29 - v4;
  v5 = sub_1000CA0B0();
  v34 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100019558(&qword_100120960);
  v35 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for LayoutContext();
  __chkstk_darwin(v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v38 = a1;
  sub_10001E2E4(a1, v14);
  sub_100079E18();
  v15 = v37;
  sub_1000CB610();
  if (v15)
  {
    return sub_10001E37C(v38);
  }

  v31 = v7;
  v32 = v5;
  v37 = v11;
  v16 = v35;
  v17 = v36;
  v40 = 0;
  sub_100079E6C();
  sub_1000CB480();
  *v13 = v39;
  v40 = 1;
  sub_1000CB480();
  *(v13 + 1) = v39;
  LOBYTE(v39) = 2;
  v18 = sub_1000CB430();
  if (v19)
  {
    sub_100079EC0();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    (*(v16 + 8))(v10, v8);
    return sub_10001E37C(v38);
  }

  *(v13 + 2) = v18;
  type metadata accessor for CGSize(0);
  v40 = 3;
  sub_10007A028(&qword_100120980, type metadata accessor for CGSize);
  sub_1000CB480();
  *(v13 + 24) = v39;
  LOBYTE(v39) = 4;
  sub_1000CB450();
  v30 = v8;
  v22 = sub_1000CACD0();

  v23 = v17;
  v24 = v22;
  sub_1000CA0C0();
  if ((*(v34 + 48))(v23, 1, v32) == 1)
  {
    sub_100031844(v23, &qword_100120958);
    sub_100079EC0();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();

    (*(v16 + 8))(v10, v30);
    return sub_10001E37C(v38);
  }

  v29 = v24;
  v26 = v34;
  v27 = v31;
  (*(v34 + 32))(v31, v23, v32);
  (*(v26 + 16))(&v13[v37[8]], v27, v32);
  v40 = 5;
  sub_1000CB480();
  *&v13[v37[9]] = v39;
  v40 = 6;
  sub_1000CB480();
  *&v13[v37[10]] = v39;
  LOBYTE(v39) = 7;
  v13[v37[11]] = sub_1000CB460() & 1;
  LOBYTE(v39) = 8;
  v28 = sub_1000CB460();

  (*(v34 + 8))(v31, v32);
  (*(v16 + 8))(v10, v30);
  v13[v37[12]] = v28 & 1;
  sub_100079F14(v13, v33);
  sub_10001E37C(v38);
  return sub_100079F78(v13);
}