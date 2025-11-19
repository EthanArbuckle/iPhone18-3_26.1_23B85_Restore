uint64_t sub_1000AD9F8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000AEBFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000ADA40()
{
  result = qword_100121FC0;
  if (!qword_100121FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121FC0);
  }

  return result;
}

unint64_t sub_1000ADA98()
{
  result = qword_100121FC8;
  if (!qword_100121FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121FC8);
  }

  return result;
}

unint64_t sub_1000ADAF0()
{
  result = qword_100121FD0;
  if (!qword_100121FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121FD0);
  }

  return result;
}

uint64_t sub_1000ADBA8()
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

uint64_t sub_1000ADCA0()
{
  if (qword_10011CD58 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = *(v0 + 17);

  sub_1000C9690();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000ADD74@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CF68 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_100121FE0);
  v3 = sub_10001A5B4(v2, qword_100134758);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000ADE28()
{
  result = qword_100121FE8;
  if (!qword_100121FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121FE8);
  }

  return result;
}

uint64_t sub_1000ADEC4()
{
  v0 = qword_100121F88;

  return v0;
}

unint64_t sub_1000ADF00()
{
  result = qword_100121FF8;
  if (!qword_100121FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121FF8);
  }

  return result;
}

uint64_t sub_1000ADF54@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CF78 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_100122048);
  v3 = sub_10001A5B4(v2, qword_100134788);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000AE00C()
{
  result = qword_100122000;
  if (!qword_100122000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122000);
  }

  return result;
}

unint64_t sub_1000AE064()
{
  result = qword_100122008;
  if (!qword_100122008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122008);
  }

  return result;
}

unint64_t sub_1000AE0BC()
{
  result = qword_100122010;
  if (!qword_100122010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122010);
  }

  return result;
}

unint64_t sub_1000AE114()
{
  result = qword_100122018;
  if (!qword_100122018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122018);
  }

  return result;
}

uint64_t sub_1000AE168@<X0>(uint64_t *a1@<X8>)
{
  sub_1000AE3FC();
  result = sub_1000C8EA0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000AE1A8()
{
  sub_1000AE3A8();
  v1 = sub_1000C9150();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000AE290(uint64_t a1)
{
  v2 = sub_1000ADE28();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000AE2E0()
{
  result = qword_100122030;
  if (!qword_100122030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122030);
  }

  return result;
}

uint64_t sub_1000AE33C(uint64_t a1)
{
  v2 = sub_1000AE114();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000AE3A8()
{
  result = qword_100122038;
  if (!qword_100122038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122038);
  }

  return result;
}

unint64_t sub_1000AE3FC()
{
  result = qword_100122040;
  if (!qword_100122040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122040);
  }

  return result;
}

uint64_t sub_1000AE450@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_100019558(&qword_10011D8F8);
  v2 = *(v1 - 8);
  v31 = v1;
  v32 = v2;
  __chkstk_darwin(v1);
  v4 = v29 - v3;
  v5 = sub_100019558(&qword_10011D900);
  v6 = *(v5 - 8);
  v33 = v5;
  v34 = v6;
  __chkstk_darwin(v5);
  v8 = v29 - v7;
  v9 = sub_100019558(&qword_100120B38);
  v10 = *(v9 - 8);
  v35 = v9;
  v36 = v10;
  __chkstk_darwin(v9);
  v12 = v29 - v11;
  v13 = sub_100019558(&qword_100120B40);
  v14 = *(v13 - 8);
  v37 = v13;
  v38 = v14;
  __chkstk_darwin(v13);
  v30 = v29 - v15;
  v29[1] = "Stories in Today";
  swift_getKeyPath();
  sub_100019558(&qword_10011D910);
  sub_1000AE3FC();
  v16 = sub_1000195A0(&qword_10011D918);
  v17 = sub_1000CA100();
  v18 = sub_10001B1BC(&qword_10011D920, &qword_10011D918);
  v19 = sub_10003B248();
  v40 = v16;
  v41 = v17;
  v42 = v18;
  v43 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1000CAAC0();
  sub_1000CA040();
  v20 = sub_10001B1BC(&unk_10011D930, &qword_10011D8F8);
  v21 = v31;
  sub_1000CA140();

  (*(v32 + 8))(v4, v21);
  sub_1000CA040();
  v40 = v21;
  v41 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v33;
  sub_1000CA110();

  (*(v34 + 8))(v8, v23);
  v40 = v23;
  v41 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v30;
  v26 = v35;
  sub_1000CA170();
  (*(v36 + 8))(v12, v26);
  v40 = v26;
  v41 = v24;
  swift_getOpaqueTypeConformance2();
  v27 = v37;
  sub_1000CA130();
  return (*(v38 + 8))(v25, v27);
}

uint64_t sub_1000AE9EC()
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

uint64_t sub_1000AEBFC()
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
  v23 = sub_100019558(&unk_100122060);
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
  sub_1000ADE28();
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

uint64_t sub_1000AF098()
{
  sub_1000195A0(&qword_100120B40);
  sub_1000195A0(&qword_100120B38);
  sub_1000195A0(&qword_10011D900);
  sub_1000195A0(&qword_10011D8F8);
  sub_10001B1BC(&unk_10011D930, &qword_10011D8F8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_1000AF1FC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for WidgetPersonalizationConfigurationManager();
  v5 = objc_allocWithZone(v4);
  v6 = sub_1000C9AB0();
  objc_allocWithZone(v6);
  swift_unknownObjectRetain();
  v7 = sub_1000C9AA0();
  v8 = &v5[OBJC_IVAR____TtC10NewsToday241WidgetPersonalizationConfigurationManager_configurationManager];
  v8[3] = v6;
  v8[4] = &protocol witness table for NewsAppConfigurationManager;
  *v8 = v7;
  v17.receiver = v5;
  v17.super_class = v4;
  v9 = objc_msgSendSuper2(&v17, "init");
  sub_1000C9B70();
  sub_1000AF454();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v10 = a1;
  v11 = v9;
  v12 = sub_1000C9B30();
  v13 = *(v2 + OBJC_IVAR____TtC10NewsToday223FeedPersonalizerFactory_configurationSet);
  v14 = objc_allocWithZone(type metadata accessor for WidgetPersonalizationService());
  v15 = sub_100049D08(v12, v13);

  return v15;
}

unint64_t sub_1000AF454()
{
  result = qword_1001220A8;
  if (!qword_1001220A8)
  {
    type metadata accessor for WidgetPersonalizationConfigurationManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001220A8);
  }

  return result;
}

uint64_t sub_1000AF4AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = sub_1000705A0;
  v9[3] = v8;
  v9[4] = a3;
  v9[5] = a4;

  sub_1000CAA80();
}

uint64_t sub_1000AF578(uint64_t a1, char a2, void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v35 = sub_1000CAA50();
  v10 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return a5(a1);
  }

  v13 = *(a1 + 16);
  v14 = &_swiftEmptyArrayStorage;
  if (v13)
  {
    v27 = a4;
    v28 = a3;
    v36 = &_swiftEmptyArrayStorage;
    sub_100050204(0, v13, 0);
    v14 = v36;
    v16 = *(v10 + 16);
    v15 = v10 + 16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v30 = *(v15 + 56);
    v31 = v16;
    v32 = v15;
    v29 = (v15 - 8);
    do
    {
      v31(v34, v17, v35);
      v18 = sub_1000CAA30();
      if (v18)
      {
        swift_getObjectType();
        v19 = swift_conformsToProtocol2();
        if (!v19)
        {

          v18 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      v20 = v34;
      v33 = sub_1000CAA20();
      v21 = sub_1000CAA40();
      v23 = v22;
      (*v29)(v20, v35);
      v36 = v14;
      v25 = v14[2];
      v24 = v14[3];
      if (v25 >= v24 >> 1)
      {
        sub_100050204((v24 > 1), v25 + 1, 1);
        v14 = v36;
      }

      v14[2] = v25 + 1;
      v26 = &v14[5 * v25];
      v26[4] = v18;
      v26[5] = v19;
      v26[6] = v33;
      v26[7] = v21;
      v26[8] = v23;
      v17 += v30;
      --v13;
    }

    while (v13);
    a3 = v28;
  }

  a3(v14);
}

uint64_t sub_1000AF7D0()
{
  sub_100019558(&qword_1001220B0);
  swift_allocObject();
  return sub_1000C9A00();
}

uint64_t sub_1000AF838()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AF870()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000AF8C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000AF908(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000AF960()
{
  result = type metadata accessor for TaskContext();
  if (v1 <= 0x3F)
  {
    result = sub_1000CB170();
    if (v2 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1000AFA7C(uint64_t a1, uint64_t a2, double a3)
{
  v6 = swift_allocObject();
  sub_1000AFADC(a1, a2, a3);
  return v6;
}

double *sub_1000AFADC(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1000C9790();
  __chkstk_darwin(v9 - 8);
  v10 = sub_1000C95D0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C95C0();
  v14 = sub_1000C95B0();
  v16 = v15;
  (*(v11 + 8))(v13, v10);
  *(v4 + 2) = v14;
  *(v4 + 3) = v16;
  v17 = qword_1001220C0;
  *(v4 + v17) = dispatch_group_create();
  v18 = qword_1001220C8;
  *(v4 + v18) = dispatch_group_create();
  v19 = qword_1001220D0;
  sub_1000C9780();
  sub_1000C97B0();
  swift_allocObject();
  *(v4 + v19) = sub_1000C97A0();
  *(v4 + qword_1001220D8) = &_swiftEmptyArrayStorage;
  (*(*(*(v8 + 80) - 8) + 56))(v4 + *(*v4 + 168), 1, 1);
  v4[4] = a3 + -1.0;
  *(v4 + 5) = a1;
  sub_1000B1E18(a2, v4 + qword_1001220B8);
  return v4;
}

uint64_t sub_1000AFD10(uint64_t a1, NSObject *a2)
{
  v3 = v2;
  v6 = sub_1000CA7E0();
  v44 = *(v6 - 8);
  v45 = v6;
  __chkstk_darwin(v6);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000CA810();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CA7D0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = sub_1000CA840();
  v39 = *(v47 - 8);
  v13 = __chkstk_darwin(v47);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v46 = &v38 - v16;
  sub_10001F934(0, &qword_10011F5F0);

  v17 = sub_1000CB160();
  v18 = sub_1000CB060();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v38 = a2;
    v20 = v19;
    v21 = a1;
    v22 = swift_slowAlloc();
    aBlock = v22;
    *v20 = 136446210;
    *(v20 + 4) = sub_10009A0C0(*(v3 + 16), *(v3 + 24), &aBlock);
    _os_log_impl(&_mh_execute_header, v17, v18, "task manager %{public}s will start task", v20, 0xCu);
    sub_10001E37C(v22);
    a1 = v21;

    a2 = v38;
  }

  dispatch_group_enter(*(v3 + qword_1001220C0));
  v23 = *(v3 + qword_1001220C8);
  dispatch_group_enter(v23);
  result = sub_1000CA820();
  v25 = *(v3 + 32);
  if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v25 < 9.22337204e18)
  {
    *v12 = v25;
    (*(v10 + 104))(v12, enum case for DispatchTimeInterval.seconds(_:), v9);
    sub_1000CA870();
    (*(v10 + 8))(v12, v9);
    v39 = *(v39 + 8);
    (v39)(v15, v47);
    sub_10001F934(0, &qword_100120570);
    v38 = v23;
    v26 = sub_1000CB0C0();
    v27 = swift_allocObject();
    v27[2] = v3;
    v27[3] = a1;
    v27[4] = a2;

    sub_1000CA830();
    v28 = swift_allocObject();
    v28[2] = v3;
    v28[3] = v26;
    v28[4] = sub_1000B1B68;
    v28[5] = v27;
    v53 = sub_1000B1BBC;
    v54 = v28;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_10003D408;
    v52 = &unk_10010FB88;
    v29 = _Block_copy(&aBlock);

    v30 = v26;

    v31 = FCHandleOperationTimeout();
    _Block_release(v29);
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    v33 = swift_allocObject();
    v33[2] = v3;
    v33[3] = sub_1000B1C18;
    v33[4] = v32;
    v33[5] = sub_1000B1B68;
    v33[6] = v27;
    v53 = sub_1000B1C84;
    v54 = v33;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_10003D408;
    v52 = &unk_10010FC00;
    v34 = _Block_copy(&aBlock);

    v35 = v40;
    sub_1000CA7F0();
    v48 = &_swiftEmptyArrayStorage;
    sub_1000B1C94();
    sub_100019558(&qword_100121808);
    sub_1000B1CEC();
    v36 = v42;
    v37 = v45;
    sub_1000CB200();
    sub_1000CB080();
    _Block_release(v34);

    (*(v44 + 8))(v36, v37);
    (*(v41 + 8))(v35, v43);
    (v39)(v46, v47);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1000B0430(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v22 = a3;
  v5 = *(*a1 + 80);
  v6 = sub_1000CB170();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  sub_10001F934(0, &qword_10011F5F0);

  v13 = sub_1000CB160();
  v14 = sub_1000CB060();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v23 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_10009A0C0(*(a1 + 16), *(a1 + 24), &v23);
    _os_log_impl(&_mh_execute_header, v13, v14, "task manager %{public}s invoking result handler", v16, 0xCu);
    sub_10001E37C(v17);

    a2 = v21;
  }

  v23 = *(a1 + qword_1001220D0);
  sub_1000C97B0();

  sub_1000C9970();

  (*(v7 + 16))(v10, v12, v6);
  v18 = *(v5 - 8);
  result = (*(v18 + 48))(v10, 1, v5);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    a2(v10);
    (*(v7 + 8))(v12, v6);
    return (*(v18 + 8))(v10, v5);
  }

  return result;
}

uint64_t sub_1000B0728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(*a1 + 168);
  swift_beginAccess();
  v5 = sub_1000CB170();
  return (*(*(v5 - 8) + 16))(a2, a1 + v4, v5);
}

uint64_t sub_1000B07D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1000CA7E0();
  __chkstk_darwin(v7);
  sub_10001F934(0, &qword_10011F5F0);

  v8 = sub_1000CB160();
  v9 = sub_1000CB060();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_10009A0C0(*(a1 + 16), *(a1 + 24), aBlock);
    _os_log_impl(&_mh_execute_header, v8, v9, "task manager %{public}s invoking cancellation handler", v10, 0xCu);
    sub_10001E37C(v11);
  }

  v16 = *(a1 + qword_1001220D0);
  sub_1000C97B0();

  sub_100019558(&qword_1001221F8);
  sub_1000C9970();

  v12 = *(aBlock[0] + 16);
  if (v12)
  {
    v13 = aBlock[0] + 32;
    do
    {
      sub_10002DE48(v13, aBlock);
      sub_1000B1DA8(aBlock);
      v13 += 40;
      --v12;
    }

    while (v12);
  }

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003D408;
  aBlock[3] = &unk_10010FC28;
  _Block_copy(aBlock);
  v16 = &_swiftEmptyArrayStorage;
  sub_1000B1C94();

  sub_100019558(&qword_100121808);
  sub_1000B1CEC();
  sub_1000CB200();
  sub_1000CA860();
  swift_allocObject();
  sub_1000CA850();

  sub_1000CB090();
}

uint64_t sub_1000B0B00(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(void))
{
  sub_10001F934(0, &qword_10011F5F0);

  v7 = sub_1000CB160();
  v8 = sub_1000CB060();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_10009A0C0(*(a1 + 16), *(a1 + 24), &v12);
    _os_log_impl(&_mh_execute_header, v7, v8, "task manager %{public}s completed all tasks", v9, 0xCu);
    sub_10001E37C(v10);
  }

  result = a2();
  if ((result & 1) == 0)
  {
    return a4();
  }

  return result;
}

void sub_1000B0C50()
{
  v1 = v0;
  sub_10001F934(0, &qword_10011F5F0);

  v2 = sub_1000CB160();
  v3 = sub_1000CB060();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10009A0C0(*(v1 + 16), *(v1 + 24), &v7);
    _os_log_impl(&_mh_execute_header, v2, v3, "task manager %{public}s did finish task", v4, 0xCu);
    sub_10001E37C(v5);
  }

  v7 = *(v1 + qword_1001220D0);
  __chkstk_darwin(v6);
  sub_1000C97B0();

  sub_1000C9970();

  dispatch_group_leave(*(v1 + qword_1001220C8));
  dispatch_group_leave(*(v1 + qword_1001220C0));
}

uint64_t sub_1000B0E18(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 80);
  v5 = sub_1000CB170();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  v9 = *(v4 - 8);
  (*(v9 + 16))(&v12 - v7, a2, v4);
  (*(v9 + 56))(v8, 0, 1, v4);
  v10 = *(*a1 + 168);
  swift_beginAccess();
  (*(v6 + 40))(a1 + v10, v8, v5);
  return swift_endAccess();
}

uint64_t sub_1000B0FA0(void *a1)
{
  v2 = v1;
  dispatch_group_enter(*(v1 + qword_1001220C8));
  *&v18[0] = *(v1 + qword_1001220D0);
  sub_1000C97B0();

  sub_1000C9970();

  sub_10002DE48(a1, v18);
  sub_10001F934(0, &qword_10011F5F0);

  v4 = sub_1000CB160();
  v5 = sub_1000CB060();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_10009A0C0(*(v2 + 16), *(v2 + 24), &v17);
    *(v6 + 12) = 2082;
    sub_10002DE48(v18, v16);
    sub_100019558(&unk_100120658);
    v7 = sub_1000CAD50();
    v9 = v8;
    sub_10001E37C(v18);
    v10 = sub_10009A0C0(v7, v9, &v17);

    *(v6 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "task manager %{public}s running sidecar task %{public}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10001E37C(v18);
  }

  v11 = sub_10001E2E4(a1, a1[3]);
  sub_100036674(v2 + qword_1001220B8, *v11);
  sub_10002DE48(a1, v18);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  sub_1000855E8(v18, v12 + 24);

  v13 = sub_1000C9990();
  v14 = sub_1000C99E0();

  return v14;
}

uint64_t sub_1000B129C(uint64_t a1, uint64_t a2)
{
  sub_10002DE48(a2, v18);
  v3 = qword_1001220D8;
  swift_beginAccess();
  v4 = *(a1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v3) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_10006E270(0, v4[2] + 1, 1, v4);
    *(a1 + v3) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_10006E270((v6 > 1), v7 + 1, 1, v4);
    *(a1 + v3) = v4;
  }

  v8 = sub_10003BFE4(v18, v19);
  __chkstk_darwin(v8);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v16 = type metadata accessor for EventProcessingSidecarTask();
  v17 = &off_10010D810;
  *&v15 = v12;
  v4[2] = v7 + 1;
  sub_1000855E8(&v15, &v4[5 * v7 + 4]);
  sub_10001E37C(v18);
  *(a1 + v3) = v4;
  return swift_endAccess();
}

void sub_1000B145C(uint64_t a1, uint64_t a2)
{
  sub_10002DE48(a2, v12);
  sub_10001F934(0, &qword_10011F5F0);

  v3 = sub_1000CB160();
  v4 = sub_1000CB060();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v5 = 136446466;
    *(v5 + 4) = sub_10009A0C0(*(a1 + 16), *(a1 + 24), &v11);
    *(v5 + 12) = 2082;
    sub_10002DE48(v12, v10);
    sub_100019558(&unk_100120658);
    v6 = sub_1000CAD50();
    v8 = v7;
    sub_10001E37C(v12);
    v9 = sub_10009A0C0(v6, v8, &v11);

    *(v5 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "task manager %{public}s finished running sidecar task %{public}s", v5, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10001E37C(v12);
  }

  dispatch_group_leave(*(a1 + qword_1001220C8));
}

id *sub_1000B161C()
{

  sub_1000B1E7C(v0 + qword_1001220B8);

  v1 = *(*v0 + 21);
  v2 = sub_1000CB170();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000B1708()
{
  sub_1000B161C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TaskContext()
{
  result = qword_1001221B8;
  if (!qword_1001221B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B17D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000CABD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100019558(&qword_1001217F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1000B18E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000CABD0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100019558(&qword_1001217F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_1000B19F0()
{
  sub_1000CABD0();
  if (v0 <= 0x3F)
  {
    sub_1000B1A74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000B1A74()
{
  if (!qword_1001221C8)
  {
    type metadata accessor for NewsTimelineEntry();
    v0 = sub_1000CB170();
    if (!v1)
    {
      atomic_store(v0, &qword_1001221C8);
    }
  }
}

uint64_t sub_1000B1AD4()
{

  sub_10001E37C(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000B1B28()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B1B74()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000B1BC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B1BE0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B1C3C()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_1000B1C94()
{
  result = qword_100121800;
  if (!qword_100121800)
  {
    sub_1000CA7E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121800);
  }

  return result;
}

unint64_t sub_1000B1CEC()
{
  result = qword_100121810;
  if (!qword_100121810)
  {
    sub_1000195A0(&qword_100121808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121810);
  }

  return result;
}

uint64_t sub_1000B1D50@<X0>(void *a1@<X8>)
{
  v3 = qword_1001220D8;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t sub_1000B1DA8(uint64_t a1)
{
  v2 = sub_100019558(&qword_100122200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B1E18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B1E7C(uint64_t a1)
{
  v2 = type metadata accessor for TaskContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1000B1EE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_10001E2E4(a1, a1[3]);
  sub_1000B25E0();
  result = sub_1000C9810();
  if (result)
  {
    v4 = result;
    v5 = sub_1000CAD00();
    v7 = v6;
    v8 = type metadata accessor for ProactiveSuggestionManager();
    result = swift_allocObject();
    result[2] = v4;
    result[3] = v5;
    result[4] = v7;
    a2[3] = v8;
    a2[4] = &off_10010D0C8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000B1F94()
{
  v0 = objc_allocWithZone(ATXProactiveCardSuggestionClient);
  v1 = sub_1000CACD0();
  v2 = [v0 initWithSourceId:v1];

  return v2;
}

uint64_t sub_1000B2008(void *a1, void *a2)
{
  sub_10001E2E4(a2, a2[3]);
  sub_100019558(&qword_1001222A0);
  result = sub_1000C9820();
  if (v9)
  {
    sub_1000855E8(&v8, v10);
    v4 = sub_10001E2E4(a1, a1[3]);
    sub_1000855E8(v10, &v8);
    v5 = swift_allocObject();
    sub_1000855E8(&v8, v5 + 16);
    v6 = *v4;
    v7 = *(*v4 + 16);
    *(v6 + 16) = sub_1000B2664;
    *(v6 + 24) = v5;

    sub_100034478(v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000B2104(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100019558(&qword_100120578);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TodayContent();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000B266C(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000B26DC(v7);
    return [*(*sub_10001E2E4(a3 a3[3]) + 16)];
  }

  else
  {
    sub_10009EE68(v7, v11);
    sub_10001E2E4(a3, a3[3]);
    sub_10002042C(v11);
    return sub_1000B2744(v11);
  }
}

uint64_t sub_1000B22B0()
{
  v0 = sub_1000C9840();
  v14 = *(v0 - 8);
  v15 = v0;
  __chkstk_darwin(v0);
  v13 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1000C9980();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9870();
  sub_100019558(&qword_1001222A0);
  sub_1000C9910();

  v6 = enum case for Scope.singleton(_:);
  v7 = *(v3 + 104);
  v7(v5, enum case for Scope.singleton(_:), v2);
  sub_1000C9770();

  v8 = *(v3 + 8);
  v8(v5, v2);
  sub_1000C9880();
  sub_1000B25E0();
  sub_1000C9900();

  v7(v5, v6, v2);
  sub_1000C9770();

  v8(v5, v2);
  sub_1000C9890();
  sub_10001E2E4(v16, v16[3]);
  sub_100019558(&qword_10011EFE8);
  v9 = v13;
  v10 = v14;
  v11 = v15;
  (*(v14 + 104))(v13, enum case for CallbackScope.any(_:), v15);
  sub_1000C9930();
  (*(v10 + 8))(v9, v11);
  return sub_10001E37C(v16);
}

unint64_t sub_1000B25E0()
{
  result = qword_1001222A8;
  if (!qword_1001222A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001222A8);
  }

  return result;
}

uint64_t sub_1000B262C()
{
  sub_10001E37C(v0 + 16);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B266C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100019558(&qword_100120578);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B26DC(uint64_t a1)
{
  v2 = sub_100019558(&qword_100120578);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B2744(uint64_t a1)
{
  v2 = type metadata accessor for TodayContent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall TelemetryManager.flush()()
{
  v1 = v0;
  v2 = sub_1000C95A0();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v54 - v7;
  sub_10001E2E4((v0 + 16), *(v0 + 40));
  v9 = sub_1000B7A78();
  v59 = FCAnalyticsLog;
  sub_1000CB060();
  if (v9)
  {
    sub_1000C9BE0();

    sub_1000C9590();
    v10 = [objc_allocWithZone(NTPBTelemetry) init];
    if (!v10)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v11 = v10;
    v12 = *(v1 + 56);
    v13 = OBJC_IVAR____TtC10NewsToday216TelemetryManager_lastFlushDate;
    swift_beginAccess();
    v14 = *(v3 + 16);
    v59 = v13;
    v14(v6, &v13[v1], v2);
    isa = sub_1000C94F0().super.isa;
    v16 = v6;
    v17 = *(v3 + 8);
    v17(v16, v2);
    v18 = sub_1000C94F0().super.isa;
    [v12 populateTelemetry:v11 withNetworkEventsFromDate:isa toDate:v18];

    v19 = [v11 networkEventGroups];
    if (v19)
    {
      v20 = v19;
      if ([v20 count])
      {
        v57 = v17;
        [*(v1 + 64) annotateTelemetry:v11 withOptions:4095];
        v21 = [objc_opt_self() nss_envelopeWithIdentifier];
        if (!v21)
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v22 = v21;
        [v21 setContentType:2];
        v23 = v11;
        v24 = [v23 data];
        if (!v24)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          return;
        }

        v25 = v24;
        v58 = v3 + 8;
        v56 = v3;

        v26 = [v25 fc_zlibDeflate];
        v55 = v23;
        if (v26)
        {
          v27 = sub_1000C94B0();
          v29 = v28;

          v30.super.isa = sub_1000C94A0().super.isa;
          sub_10001F774(v27, v29);
        }

        else
        {
          v30.super.isa = 0;
        }

        [v22 setContent:v30.super.isa];

        v34 = FCAnalyticsLog;
        sub_100019558(&unk_10011E820);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1000D3D20;
        v36 = v34;
        v37 = [v20 count];

        *(v35 + 56) = &type metadata for Int;
        *(v35 + 64) = &protocol witness table for Int;
        *(v35 + 32) = v37;
        v38 = [v22 content];
        if (!v38)
        {
          goto LABEL_34;
        }

        v39 = v38;
        v40 = sub_1000C94B0();
        v42 = v41;

        v43 = v42;
        v44 = v42 >> 62;
        if ((v42 >> 62) <= 1)
        {
          if (!v44)
          {
            sub_10001F774(v40, v42);
            v45 = BYTE6(v42);
LABEL_25:
            v48 = v56;
LABEL_28:
            *(v35 + 96) = &type metadata for Int;
            *(v35 + 104) = &protocol witness table for Int;
            *(v35 + 72) = v45;
            sub_1000CB060();
            sub_1000C9BE0();

            v49 = [objc_allocWithZone(NSSNewsAnalyticsSubmitEnvelopesOperation) init];
            sub_100019558(&unk_10011F0B0);
            v50 = swift_allocObject();
            *(v50 + 16) = xmmword_1000D3390;
            *(v50 + 32) = v22;
            sub_1000B2FA4();
            v51 = v22;
            v52 = sub_1000CAEC0().super.isa;

            [v49 setEnvelopes:v52];

            [v49 start];
            v53 = v59;
            swift_beginAccess();
            (*(v48 + 24))(&v53[v1], v8, v2);
            swift_endAccess();
            v57(v8, v2);
            return;
          }

          goto LABEL_23;
        }

        if (v44 == 2)
        {
          v47 = *(v40 + 16);
          v46 = *(v40 + 24);
          sub_10001F774(v40, v43);
          v45 = v46 - v47;
          if (__OFSUB__(v46, v47))
          {
            __break(1u);
LABEL_23:
            sub_10001F774(v40, v43);
            LODWORD(v45) = HIDWORD(v40) - v40;
            if (!__OFSUB__(HIDWORD(v40), v40))
            {
              v45 = v45;
              goto LABEL_25;
            }

            __break(1u);
            goto LABEL_31;
          }
        }

        else
        {
          sub_10001F774(v40, v42);
          v45 = 0;
        }

        v48 = v56;
        goto LABEL_28;
      }
    }

    v32 = FCAnalyticsLog;
    sub_1000CB060();
    sub_1000C9BE0();

    v33 = v59;
    swift_beginAccess();
    (*(v3 + 24))(&v33[v1], v8, v2);
    swift_endAccess();
    v17(v8, v2);
    return;
  }

  sub_1000C9BE0();
  v31 = v59;
}

uint64_t TelemetryManager.deinit()
{
  sub_10001E37C(v0 + 16);

  v1 = OBJC_IVAR____TtC10NewsToday216TelemetryManager_lastFlushDate;
  v2 = sub_1000C95A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TelemetryManager.__deallocating_deinit()
{
  sub_10001E37C(v0 + 16);

  v1 = OBJC_IVAR____TtC10NewsToday216TelemetryManager_lastFlushDate;
  v2 = sub_1000C95A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1000B2FA4()
{
  result = qword_1001222B8;
  if (!qword_1001222B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001222B8);
  }

  return result;
}

uint64_t type metadata accessor for TelemetryManager()
{
  result = qword_1001222E8;
  if (!qword_1001222E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B3044()
{
  result = sub_1000C95A0();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1000B3104()
{
  result = qword_100122388;
  if (!qword_100122388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122388);
  }

  return result;
}

uint64_t sub_1000B3180@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = v2[4];
  v8 = [a1 userEngagementWithWidgetEventTracker:v2[3] trackableWidgetState:v7];
  v9 = v2[2];
  v10 = sub_1000C9480();
  sub_1000B3530();
  sub_100034420();
  v11 = v8;
  v12.super.isa = sub_1000CAC00().super.isa;
  sub_10001F8C4(v2 + OBJC_IVAR____TtC10NewsToday221EngagementURLProvider_sharedDirectoryFileUrl, v6);
  v13 = *(v10 - 8);
  v15 = 0;
  if ((*(v13 + 48))(v6, 1, v10) != 1)
  {
    sub_1000C93F0(v14);
    v15 = v16;
    (*(v13 + 8))(v6, v10);
  }

  v17 = [v9 URLForEngagement:a1 event:v11 trackableWidgetState:v7 prefetchAssetsByRemoteURL:v12.super.isa sharedDirectoryFileURL:v15];

  if (v17)
  {
    v18 = v22;
    sub_1000C9440();

    v19 = 0;
  }

  else
  {
    v19 = 1;
    v18 = v22;
  }

  return (*(v13 + 56))(v18, v19, 1, v10);
}

uint64_t sub_1000B339C()
{

  sub_10001E3D8(v0 + OBJC_IVAR____TtC10NewsToday221EngagementURLProvider_sharedDirectoryFileUrl);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EngagementURLProvider()
{
  result = qword_1001223C0;
  if (!qword_1001223C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000B3474()
{
  sub_10001B638();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1000B3530()
{
  result = qword_100120620;
  if (!qword_100120620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100120620);
  }

  return result;
}

unint64_t sub_1000B357C()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1000B35B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001000E66A0 == a2 || (sub_1000CB530() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001000E66C0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1000CB530();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1000B369C(uint64_t a1)
{
  v2 = sub_1000B3FA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B36D8(uint64_t a1)
{
  v2 = sub_1000B3FA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3714(void *a1, void *a2, uint64_t a3)
{
  v29 = a3;
  v6 = sub_100019558(&qword_100122518);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - v8;
  sub_10001E2E4(a1, a1[3]);
  sub_1000B3FA8();
  sub_1000CB630();
  if (a2)
  {
    v10 = objc_opt_self();
    v31 = 0;
    v11 = a2;
    v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v31];
    v13 = v31;
    if (!v12)
    {
      v19 = v13;
      sub_1000C9340();

      swift_willThrow();
      return (*(v7 + 8))(v9, v6);
    }

    v14 = sub_1000C94B0();
    v16 = v15;

    v31 = v14;
    v32 = v16;
    v30 = 0;
    sub_10001F870();
    sub_1000CB4F0();
    if (v3)
    {
      (*(v7 + 8))(v9, v6);

      v17 = v14;
      v18 = v16;
      return sub_10001F774(v17, v18);
    }

    sub_10001F774(v14, v16);
  }

  v20 = objc_opt_self();
  v31 = 0;
  v21 = [v20 archivedDataWithRootObject:v29 requiringSecureCoding:1 error:&v31];
  v22 = v31;
  if (v21)
  {
    v23 = sub_1000C94B0();
    v25 = v24;

    v31 = v23;
    v32 = v25;
    v30 = 1;
    sub_10001F870();
    sub_1000CB4F0();
    (*(v7 + 8))(v9, v6);
    v17 = v23;
    v18 = v25;
    return sub_10001F774(v17, v18);
  }

  v27 = v22;
  sub_1000C9340();

  swift_willThrow();
  return (*(v7 + 8))(v9, v6);
}

void *sub_1000B3A28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000B3BA0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1000B3B0C(uint64_t a1, int a2)
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

uint64_t sub_1000B3B54(uint64_t result, int a2, int a3)
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

void *sub_1000B3BA0(void *a1)
{
  v3 = sub_100019558(&qword_100122500);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v16 - v5;
  v7 = a1[4];
  sub_10001E2E4(a1, a1[3]);
  sub_1000B3FA8();
  sub_1000CB610();
  if (v1)
  {
    goto LABEL_3;
  }

  v21 = 0;
  sub_10001F720();
  sub_1000CB440();
  v10 = v19;
  v9 = v20;
  v18 = v20;
  if (v20 >> 60 == 15)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v16[1] = sub_10001F934(0, &unk_100121BB0);
  sub_10001F934(0, &unk_10011E610);
  sub_1000B4050(v10, v9);
  v7 = sub_1000CB070();
  v13 = v18;
  sub_10002DBD0(v10, v18);
  if (!v7)
  {
    sub_1000B3FFC();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    sub_10002DBD0(v10, v13);
    (*(v4 + 8))(v6, v3);
LABEL_3:
    sub_10001E37C(a1);
    return v7;
  }

LABEL_7:
  v17 = v10;
  v21 = 1;
  sub_1000CB480();
  v12 = v19;
  v11 = v20;
  sub_10001F934(0, &unk_100121BB0);
  sub_10001F934(0, &unk_10011E610);
  if (sub_1000CB070())
  {
    (*(v4 + 8))(v6, v3);
    sub_10002DBD0(v17, v18);
    sub_10001F774(v12, v11);
    sub_10001E37C(a1);
  }

  else
  {
    sub_1000B3FFC();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    sub_10001F774(v12, v11);
    sub_10002DBD0(v17, v18);
    (*(v4 + 8))(v6, v3);
    sub_10001E37C(a1);
  }

  return v7;
}

unint64_t sub_1000B3FA8()
{
  result = qword_100122508;
  if (!qword_100122508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122508);
  }

  return result;
}

unint64_t sub_1000B3FFC()
{
  result = qword_100122510;
  if (!qword_100122510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122510);
  }

  return result;
}

uint64_t sub_1000B4050(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1000B40C8()
{
  result = qword_100122520;
  if (!qword_100122520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122520);
  }

  return result;
}

unint64_t sub_1000B4120()
{
  result = qword_100122528;
  if (!qword_100122528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122528);
  }

  return result;
}

unint64_t sub_1000B4178()
{
  result = qword_100122530;
  if (!qword_100122530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122530);
  }

  return result;
}

unint64_t sub_1000B41D0()
{
  result = qword_100122538;
  if (!qword_100122538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122538);
  }

  return result;
}

UIImage *sub_1000B422C(CGFloat a1, CGFloat a2)
{
  result = 0;
  if (a1 != 0.0)
  {
    v4 = (*&a1 & 0xFFFFFFFFFFFFFLL) != 0 && (~*&a1 & 0x7FF0000000000000) == 0;
    if (!v4 && a2 != 0.0)
    {
      if ((~*&a2 & 0x7FF0000000000000) != 0 || (*&a2 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        UIGraphicsBeginImageContextWithOptions(*&a1, 0, 0.0);
        [v2 set];
        v7 = [objc_opt_self() ts_bezierPathWithPillRect:0.0 cornerRadius:{0.0, a1, a2, 2.0}];
        [v7 addClip];

        v9.origin.x = 0.0;
        v9.origin.y = 0.0;
        v9.size.width = a1;
        v9.size.height = a2;
        UIRectFill(v9);
        v8 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return v8;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

id sub_1000B4338(void *a1, void *a2, void *a3)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  return v5;
}

void sub_1000B4380()
{
  v0 = [objc_opt_self() secondarySystemBackgroundColor];
  v1 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v2 = [v0 resolvedColorWithTraitCollection:v1];

  qword_1001347D8 = v2;
}

uint64_t *NSBundle.newsToday2.unsafeMutableAddressor()
{
  if (qword_10011CFA0 != -1)
  {
    swift_once();
  }

  return &static NSBundle.newsToday2;
}

id sub_1000B4470()
{
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static NSBundle.newsToday2 = result;
  return result;
}

id static NSBundle.newsToday2.getter()
{
  if (qword_10011CFA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static NSBundle.newsToday2;

  return v0;
}

void static NSBundle.newsToday2.setter(uint64_t a1)
{
  if (qword_10011CFA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static NSBundle.newsToday2;
  static NSBundle.newsToday2 = a1;
}

uint64_t (*static NSBundle.newsToday2.modify())()
{
  if (qword_10011CFA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_1000B46B4()
{
  result = qword_1001225D8;
  if (!qword_1001225D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001225D8);
  }

  return result;
}

uint64_t sub_1000B4708(void *a1, void *a2)
{
  v5 = sub_1000C95A0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v66[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v66[-1] - v10;
  if (![a2 hasIdentifier])
  {
    if (qword_10011CFD8 != -1)
    {
      swift_once();
    }

    v37 = sub_1000C9C20();
    sub_10001A5B4(v37, static Logger.todayWidgetBanner);
    v13 = sub_1000C9C00();
    v38 = sub_1000CB040();
    if (!os_log_type_enabled(v13, v38))
    {
      goto LABEL_30;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "TodayBannerValidator will not validate banner with no identifier";
LABEL_28:
    v41 = v38;
    v42 = v13;
    v43 = v39;
    v44 = 2;
    goto LABEL_29;
  }

  if ([a2 hasIsEnabled] && (objc_msgSend(a2, "isEnabled") & 1) == 0)
  {
    if (qword_10011CFD8 != -1)
    {
      swift_once();
    }

    v46 = sub_1000C9C20();
    sub_10001A5B4(v46, static Logger.todayWidgetBanner);
    v13 = sub_1000C9C00();
    v38 = sub_1000CB060();
    if (!os_log_type_enabled(v13, v38))
    {
      goto LABEL_30;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "TodayBannerValidator will suppress banner due to isEnabled=false";
    goto LABEL_28;
  }

  if (![a2 hasDaysVisibleToNewSubscribers] || !objc_msgSend(a2, "daysVisibleToNewSubscribers"))
  {
    goto LABEL_18;
  }

  v12 = [a1 bundleSubscription];
  if (!v12)
  {
    if (qword_10011CFD8 != -1)
    {
      swift_once();
    }

    v47 = sub_1000C9C20();
    sub_10001A5B4(v47, static Logger.todayWidgetBanner);
    v13 = sub_1000C9C00();
    v38 = sub_1000CB040();
    if (!os_log_type_enabled(v13, v38))
    {
      goto LABEL_30;
    }

    v39 = swift_slowAlloc();
    *v39 = 0;
    goto LABEL_28;
  }

  v13 = v12;
  if (![v12 isSubscribed])
  {
    if (qword_10011CFD8 != -1)
    {
      swift_once();
    }

    v48 = sub_1000C9C20();
    sub_10001A5B4(v48, static Logger.todayWidgetBanner);
    v49 = sub_1000C9C00();
    v50 = sub_1000CB060();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_68;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    goto LABEL_67;
  }

  v14 = [v13 initialPurchaseTimestamp];
  if (!v14)
  {
    if (qword_10011CFD8 != -1)
    {
      swift_once();
    }

    v60 = sub_1000C9C20();
    sub_10001A5B4(v60, static Logger.todayWidgetBanner);
    v49 = sub_1000C9C00();
    v50 = sub_1000CB040();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_68;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
LABEL_67:
    _os_log_impl(&_mh_execute_header, v49, v50, v52, v51, 2u);

LABEL_68:

    goto LABEL_30;
  }

  v15 = v14;
  [v14 doubleValue];
  sub_1000C9550();
  sub_1000C9590();
  sub_1000C94E0();
  v17 = v16;
  v18 = v9;
  v19 = *(v6 + 8);
  v19(v18, v5);
  v20 = v17 / 86400.0;
  if (COERCE__INT64(fabs(v17 / 86400.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_75;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v21 = v20;
  v22 = [a2 daysVisibleToNewSubscribers];
  if (v21 >= 1 && v22 < v21)
  {
    if (qword_10011CFD8 != -1)
    {
      swift_once();
    }

    v61 = sub_1000C9C20();
    sub_10001A5B4(v61, static Logger.todayWidgetBanner);
    v62 = sub_1000C9C00();
    v63 = sub_1000CB060();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 134217984;
      *(v64 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v62, v63, "TodayBannerValidator will suppress banner due to daysVisibleToNewSubscribers limit reached. daysSubscribed=%lld", v64, 0xCu);
    }

    v19(v11, v5);
    return 0;
  }

  v19(v11, v5);

LABEL_18:
  sub_10002DE48(v2 + 16, v66);
  sub_10001E2E4(v66, v66[3]);
  result = [a2 identifier];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v25 = result;
  v26 = sub_1000CAD00();
  v28 = v27;

  v5 = sub_10002B624(v26, v28);
  v30 = v29;
  LOBYTE(v25) = v31;

  sub_10001E37C(v66);
  if (v25)
  {
    if (qword_10011CFD8 != -1)
    {
      swift_once();
    }

    v32 = sub_1000C9C20();
    sub_10001A5B4(v32, static Logger.todayWidgetBanner);
    v33 = sub_1000C9C00();
    v34 = sub_1000CB060();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_42;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "TodayBannerValidator validating banner due to no state";
LABEL_41:
    _os_log_impl(&_mh_execute_header, v33, v34, v36, v35, 2u);

LABEL_42:

    return 1;
  }

  if ([a2 hasNumberOfAppearancesToHide] && objc_msgSend(a2, "numberOfAppearancesToHide") && v5 >= objc_msgSend(a2, "numberOfAppearancesToHide"))
  {
    if (qword_10011CFD8 == -1)
    {
LABEL_56:
      v53 = sub_1000C9C20();
      sub_10001A5B4(v53, static Logger.todayWidgetBanner);
      v13 = sub_1000C9C00();
      v54 = sub_1000CB060();
      if (!os_log_type_enabled(v13, v54))
      {
        goto LABEL_30;
      }

      v55 = swift_slowAlloc();
      *v55 = 134217984;
      *(v55 + 4) = v5;
      v40 = "TodayBannerValidator will suppress banner due to numberOfAppearancesToHide reached. numberOfAppearances=%lu";
      v41 = v54;
      v42 = v13;
      v43 = v55;
      v44 = 12;
LABEL_29:
      _os_log_impl(&_mh_execute_header, v42, v41, v40, v43, v44);

LABEL_30:

      return 0;
    }

LABEL_77:
    swift_once();
    goto LABEL_56;
  }

  if (![a2 hasNumberOfTapsToHide] || !objc_msgSend(a2, "numberOfTapsToHide") || v30 < objc_msgSend(a2, "numberOfTapsToHide"))
  {
    if (qword_10011CFD8 != -1)
    {
      swift_once();
    }

    v45 = sub_1000C9C20();
    sub_10001A5B4(v45, static Logger.todayWidgetBanner);
    v33 = sub_1000C9C00();
    v34 = sub_1000CB060();
    if (!os_log_type_enabled(v33, v34))
    {
      goto LABEL_42;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "TodayBannerValidator validated bannerConfig";
    goto LABEL_41;
  }

  if (qword_10011CFD8 != -1)
  {
    swift_once();
  }

  v56 = sub_1000C9C20();
  sub_10001A5B4(v56, static Logger.todayWidgetBanner);
  v57 = sub_1000C9C00();
  v58 = sub_1000CB060();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 134217984;
    *(v59 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v57, v58, "TodayBannerValidator will suppress banner due to numberOfTapsToHide reached. numberOfTaps=%lu", v59, 0xCu);
  }

  return 0;
}

unint64_t sub_1000B51F0()
{
  result = qword_100122690;
  if (!qword_100122690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122690);
  }

  return result;
}

uint64_t sub_1000B5288()
{
  v0 = sub_100019558(&qword_1001226D8);
  sub_10001A5EC(v0, qword_1001347E8);
  sub_10001A5B4(v0, qword_1001347E8);
  sub_1000B6C50();
  return sub_1000C90B0();
}

uint64_t sub_1000B530C(uint64_t a1)
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

  return _swift_task_switch(sub_1000B5450, 0, 0);
}

uint64_t sub_1000B5450()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_100019558(&qword_1001226A0);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000C9380();
  sub_10001B1BC(&qword_100122748, &qword_100122750);
  *v4 = sub_1000C91C0();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000B5608()
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
  sub_10001A5EC(v10, qword_100134800);
  sub_10001A5B4(v10, qword_100134800);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000C9380();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000C9180();
}

uint64_t sub_1000B58E8()
{
  v0 = sub_100019558(&qword_100122740);
  sub_10001A5EC(v0, qword_100134818);
  sub_10001A5B4(v0, qword_100134818);
  sub_1000B667C();
  return sub_1000C9170();
}

uint64_t sub_1000B596C()
{
  v0 = sub_1000C9370();
  sub_10001A5EC(v0, qword_100134830);
  sub_10001A5B4(v0, qword_100134830);
  return sub_1000C9350();
}

uint64_t sub_1000B59D0()
{
  v0 = sub_100019558(&qword_10011D820);
  sub_10001A5EC(v0, qword_100134848);
  v1 = sub_10001A5B4(v0, qword_100134848);
  sub_1000C9040();
  v2 = sub_1000C9050();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000B5A90()
{
  result = swift_getKeyPath();
  qword_100134860 = result;
  return result;
}

uint64_t sub_1000B5AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_1000B5ADC, 0, 0);
}

uint64_t sub_1000B5ADC()
{
  sub_1000C8EC0();
  v1 = *(v0 + 16);
  *(v0 + 24) = v1;
  *(v0 + 72) = v1;
  sub_1000C8EC0();
  *(v0 + 145) = *(v0 + 144);
  if (qword_10011CFD0 != -1)
  {
    swift_once();
  }

  v2 = qword_100134860;
  *(v0 + 80) = qword_100134860;

  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = sub_10001B1BC(&qword_100122748, &qword_100122750);
  *(v0 + 96) = v4;
  *v3 = v0;
  v3[1] = sub_1000B5C40;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 145, v2, &type metadata for Bool, v4);
}

uint64_t sub_1000B5C40()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100017FB0;
  }

  else
  {
    v2 = sub_1000B5D94;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000B5D94()
{
  sub_1000C8EC0();
  v1 = v0[4];
  v0[5] = v1;
  v2 = qword_100134860;
  v0[14] = v1;
  v0[15] = v2;

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100017DD4;
  v4 = v0[12];

  return AppEntity._value<A, B>(for:)(v0 + 146, v2, v4);
}

uint64_t (*sub_1000B5E6C(uint64_t *a1))()
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

uint64_t (*sub_1000B5EE0(uint64_t *a1))()
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

uint64_t sub_1000B5F54()
{
  if (qword_10011CFD0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000B5FB4()
{
  result = qword_1001226A8;
  if (!qword_1001226A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001226A8);
  }

  return result;
}

unint64_t sub_1000B600C()
{
  result = qword_1001226B0;
  if (!qword_1001226B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001226B0);
  }

  return result;
}

uint64_t sub_1000B611C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CFC8 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_10011D820);
  v3 = sub_10001A5B4(v2, qword_100134848);

  return sub_10001AC74(v3, a1);
}

uint64_t sub_1000B61A0(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001840C;

  return sub_1000B5AB8(a1, v5, v4);
}

uint64_t sub_1000B624C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B7324();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000B6294()
{
  result = qword_1001226B8;
  if (!qword_1001226B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001226B8);
  }

  return result;
}

unint64_t sub_1000B62EC()
{
  result = qword_1001226C0;
  if (!qword_1001226C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001226C0);
  }

  return result;
}

unint64_t sub_1000B6344()
{
  result = qword_1001226C8;
  if (!qword_1001226C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001226C8);
  }

  return result;
}

uint64_t sub_1000B63FC()
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

uint64_t sub_1000B64F4()
{
  if (qword_10011CD58 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = *(v0 + 17);

  sub_1000C9690();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B65C8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CFA8 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_1001226D8);
  v3 = sub_10001A5B4(v2, qword_1001347E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000B667C()
{
  result = qword_1001226E0;
  if (!qword_1001226E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001226E0);
  }

  return result;
}

uint64_t sub_1000B6718()
{
  v0 = qword_100122680;

  return v0;
}

unint64_t sub_1000B6754()
{
  result = qword_1001226F0;
  if (!qword_1001226F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001226F0);
  }

  return result;
}

uint64_t sub_1000B67A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CFB8 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_100122740);
  v3 = sub_10001A5B4(v2, qword_100134818);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000B6860()
{
  result = qword_1001226F8;
  if (!qword_1001226F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001226F8);
  }

  return result;
}

unint64_t sub_1000B68B8()
{
  result = qword_100122700;
  if (!qword_100122700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122700);
  }

  return result;
}

unint64_t sub_1000B6910()
{
  result = qword_100122708;
  if (!qword_100122708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122708);
  }

  return result;
}

unint64_t sub_1000B6968()
{
  result = qword_100122710;
  if (!qword_100122710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122710);
  }

  return result;
}

uint64_t sub_1000B69BC@<X0>(uint64_t *a1@<X8>)
{
  sub_1000B6C50();
  result = sub_1000C8EA0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000B69FC()
{
  sub_1000B6BFC();
  v1 = sub_1000C9150();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1000B6AE4(uint64_t a1)
{
  v2 = sub_1000B667C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000B6B34()
{
  result = qword_100122728;
  if (!qword_100122728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122728);
  }

  return result;
}

uint64_t sub_1000B6B90(uint64_t a1)
{
  v2 = sub_1000B6968();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000B6BFC()
{
  result = qword_100122730;
  if (!qword_100122730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122730);
  }

  return result;
}

unint64_t sub_1000B6C50()
{
  result = qword_100122738;
  if (!qword_100122738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122738);
  }

  return result;
}

uint64_t sub_1000B6CA4@<X0>(uint64_t a1@<X8>)
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
  v21[1] = "Update Game Center";
  v21[0] = swift_getKeyPath();
  sub_100019558(&qword_10011D910);
  sub_1000AE3FC();
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

uint64_t sub_1000B7110()
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

uint64_t sub_1000B7324()
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
  v23 = sub_100019558(&qword_100122758);
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
  sub_1000B667C();
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

uint64_t sub_1000B77C4()
{
  sub_1000195A0(&qword_10011D908);
  sub_1000195A0(&qword_10011D900);
  sub_1000195A0(&qword_10011D8F8);
  sub_10001B1BC(&unk_10011D930, &qword_10011D8F8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t Logger.todayWidgetBanner.unsafeMutableAddressor()
{
  if (qword_10011CFD8 != -1)
  {
    swift_once();
  }

  v0 = sub_1000C9C20();

  return sub_10001A5B4(v0, static Logger.todayWidgetBanner);
}

uint64_t sub_1000B7950()
{
  v0 = sub_1000C9C20();
  sub_10001A5EC(v0, static Logger.todayWidgetBanner);
  sub_10001A5B4(v0, static Logger.todayWidgetBanner);
  return sub_1000C9C10();
}

uint64_t static Logger.todayWidgetBanner.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CFD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000C9C20();
  v3 = sub_10001A5B4(v2, static Logger.todayWidgetBanner);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000B7A78()
{
  v1 = [*(v0 + 24) userID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1000CAD00();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = [*(v0 + 16) possiblyUnfetchedAppConfiguration];
  if ([v6 respondsToSelector:"widgetTelemetrySamplingRate"])
  {
    [v6 widgetTelemetrySamplingRate];
    v8 = v7;
    swift_unknownObjectRelease();
    v9 = v8;
  }

  else
  {
    swift_unknownObjectRelease();
    v9 = 0.0;
  }

  v10 = sub_1000B7DF0(v9, v3, v5);

  return v10 & 1;
}

uint64_t sub_1000B7B5C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1000B7BC0(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_1000CA9B0();
      sub_1000B83D4();
      return sub_1000CA960();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000B7D40(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1000B7D40(v4, v5);
  }

  sub_1000CA9B0();
  sub_1000B83D4();
  return sub_1000CA960();
}

uint64_t sub_1000B7D40(uint64_t a1, uint64_t a2)
{
  result = sub_1000C92D0();
  if (!result || (result = sub_1000C92F0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1000C92E0();
      sub_1000CA9B0();
      sub_1000B83D4();
      return sub_1000CA960();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B7DF0(float a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000CA9B0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000CA9A0();
  v35 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000CAD30();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3 || (v34 = v9, sub_1000CAD20(), v16 = sub_1000CAD10(), v18 = v17, (*(v13 + 8))(v15, v12), v18 >> 60 == 15))
  {
    v19 = FCAnalyticsLog;
    sub_1000CB060();
    sub_1000C9BE0();

    return 0;
  }

  v36 = 0;
  sub_1000B83D4();
  sub_1000CA980();
  sub_1000B4050(v16, v18);
  v33 = v16;
  sub_1000B7BC0(v16, v18);
  v21 = v33;
  sub_10002DBD0(v33, v18);
  sub_1000CA970();
  (*(v6 + 8))(v8, v5);
  sub_1000CA990();
  if (!CCBigNumFromData())
  {
    v30 = FCAnalyticsLog;
    sub_1000CB060();
    sub_1000C9BE0();
    sub_10002DBD0(v21, v18);

    (*(v35 + 8))(v11, v34);
    return 0;
  }

  CCBigNumFromHexString();
  v22 = a1 * 100.0;
  if (COERCE_INT(fabs(a1 * 100.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v22 <= -1.0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  if (v22 >= 4295000000.0)
  {
    goto LABEL_17;
  }

  v31 = CCBigNumFromDecimalString();
  CCCreateBigNum();
  v36 = CCBigNumMulI();
  CCCreateBigNum();
  CCCreateBigNum();
  v36 = CCBigNumDiv();
  v23 = CCBigNumCompare();
  v32 = v23 >> 31;
  v24 = FCAnalyticsLog;
  sub_100019558(&unk_10011E820);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000D3D20;
  v26 = sub_100024C50();
  v27 = 0x64656C6261736964;
  if (v23 < 0)
  {
    v27 = 0x64656C62616E65;
  }

  v28 = 0xE800000000000000;
  if (v23 < 0)
  {
    v28 = 0xE700000000000000;
  }

  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = v26;
  *(v25 + 32) = v27;
  *(v25 + 40) = v28;
  *(v25 + 96) = &type metadata for Float;
  *(v25 + 104) = &protocol witness table for Float;
  *(v25 + 72) = a1;
  v29 = v24;
  sub_1000CB060();
  sub_1000C9BE0();

  CCBigNumFree();
  CCBigNumFree();
  CCBigNumFree();
  CCBigNumFree();
  CCBigNumFree();
  CCBigNumFree();
  sub_10002DBD0(v33, v18);
  (*(v35 + 8))(v11, v34);
  return v32;
}

unint64_t sub_1000B83D4()
{
  result = qword_100122808;
  if (!qword_100122808)
  {
    sub_1000CA9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122808);
  }

  return result;
}

uint64_t sub_1000B842C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1000B8474(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B84E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X8>)
{
  v52 = a3;
  v61 = a1;
  v50 = a4;
  v60 = sub_1000C9D40();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_100019558(&qword_10011E9D8);
  v7 = __chkstk_darwin(v53);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v46 - v10;
  v12 = sub_1000C95A0();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v46 - v17;
  v51 = sub_100019558(&qword_10011E9E0);
  __chkstk_darwin(v51);
  v20 = &v46 - v19;
  v58 = sub_1000C9D50();
  v57 = *(v58 - 8);
  v21 = __chkstk_darwin(v58);
  v56 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v55 = &v46 - v23;
  sub_1000CA580();
  v54 = sub_1000CA5D0();

  KeyPath = swift_getKeyPath();
  sub_1000CA7A0();
  sub_1000C9CC0();

  v25 = sub_100073408(v61, a2);
  v61 = v26;
  sub_1000C9540();
  sub_1000C9540();
  sub_1000B8BFC();
  result = sub_1000CAC80();
  if (result)
  {
    v49 = KeyPath;
    v47 = v6;
    v48 = v25;
    v28 = *(v13 + 32);
    v28(v11, v18, v12);
    v29 = v53;
    v28(&v11[*(v53 + 48)], v16, v12);
    sub_10002DFB4(v11, v9, &qword_10011E9D8);
    v30 = *(v29 + 48);
    v28(v20, v9, v12);
    v31 = *(v13 + 8);
    v31(&v9[v30], v12);
    sub_100037204(v11, v9);
    v28(&v20[*(v51 + 36)], &v9[*(v29 + 48)], v12);
    v31(v9, v12);
    v32 = &enum case for PlaybackButton.State.playing(_:);
    if ((v52 & 1) == 0)
    {
      v32 = &enum case for PlaybackButton.State.unplayed(_:);
    }

    (*(v59 + 104))(v47, *v32, v60);
    v66 = v48;
    v67 = v61;
    sub_1000729B0();
    v33 = v55;
    sub_1000C9D30();
    v62 = v71;
    v63 = v72;
    v64 = v73;
    v34 = v57;
    v35 = *(v57 + 16);
    v36 = v56;
    v37 = v58;
    v35(v56, v33, v58);
    v38 = v49;
    *&v65[0] = v49;
    v39 = v54;
    *(&v65[0] + 1) = v54;
    v40 = v62;
    v65[1] = v62;
    v65[2] = v63;
    v41 = v64;
    v65[3] = v64;
    v42 = v50;
    *(v50 + 2) = v63;
    *(v42 + 3) = v41;
    *v42 = v65[0];
    *(v42 + 1) = v40;
    v43 = v42;
    v44 = sub_100019558(&qword_100122818);
    v35(&v43[*(v44 + 48)], v36, v37);
    sub_10002DFB4(v65, &v66, &qword_100122820);
    v45 = *(v34 + 8);
    v45(v33, v37);
    v45(v36, v37);
    v66 = v38;
    v67 = v39;
    v68 = v62;
    v69 = v63;
    v70 = v64;
    return sub_1000B8C54(&v66);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B8B90@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *a1 = sub_1000CA7A0();
  a1[1] = v6;
  v7 = sub_100019558(&qword_100122810);
  return sub_1000B84E0(v3, v4, v5, a1 + *(v7 + 44));
}

unint64_t sub_1000B8BFC()
{
  result = qword_10011E9E8;
  if (!qword_10011E9E8)
  {
    sub_1000C95A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011E9E8);
  }

  return result;
}

uint64_t sub_1000B8C54(uint64_t a1)
{
  v2 = sub_100019558(&qword_100122820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000B8CC0()
{
  result = qword_100122828;
  if (!qword_100122828)
  {
    sub_1000195A0(&qword_100122830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122828);
  }

  return result;
}

void sub_1000B8D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a7;
  v31 = a8;
  v32 = a5;
  v13 = type metadata accessor for TaskContext();
  v29 = *(v13 - 8);
  v14 = *(v29 + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_100019558(&qword_10011E9E0);
  v28 = *(v15 - 8);
  v16 = *(v28 + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v27 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = sub_1000705A0;
  v20[4] = v19;
  v20[5] = a3;
  v20[6] = a4;
  v37 = sub_1000BA314;
  v38 = v20;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_1000BA99C;
  v36 = &unk_100110128;
  v21 = _Block_copy(&aBlock);

  sub_1000BA1E0(v30, v18);
  sub_1000BA33C(v31, &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v23 = (v16 + *(v29 + 80) + v22) & ~*(v29 + 80);
  v24 = swift_allocObject();
  sub_10002DB04(v18, v24 + v22, &qword_10011E9E0);
  sub_1000B1E18(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  *(v24 + ((v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = a6;
  v37 = sub_1000BA7CC;
  v38 = v24;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = sub_1000BA99C;
  v36 = &unk_100110178;
  v25 = _Block_copy(&aBlock);

  v26 = [v32 sinkWithCompletion:v21 receiveInput:v25];
  _Block_release(v25);
  _Block_release(v21);
}

uint64_t sub_1000B90A4(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(id))
{
  v9 = [a1 state];
  if (v9 == 1)
  {
    v10 = [a1 error];
    if (!v10)
    {
      sub_1000BA8D8();
      v10 = swift_allocError();
    }

    sub_1000CB040();
    sub_100019558(&unk_10011E820);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1000D3410;
    sub_100019558(&unk_10011F8D0);
    sub_1000CB340();
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_100024C50();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    sub_100024CA4();
    v12 = sub_1000CB160();
    sub_1000C9BE0();

    a5(v10);
  }

  else if (v9)
  {
    result = sub_1000CB380();
    __break(1u);
  }

  else
  {
    sub_100019558(&unk_10011E820);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1000D3410;
    swift_beginAccess();
    v15 = *(*(a2 + 16) + 16);
    *(v14 + 56) = &type metadata for Int;
    *(v14 + 64) = &protocol witness table for Int;
    *(v14 + 32) = v15;
    sub_100024CA4();
    v16 = sub_1000CB160();
    sub_1000CB060();
    sub_1000C9BE0();

    swift_beginAccess();

    a3(v17);
  }

  return result;
}

void sub_1000B9380(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1000C95A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 eventBody];
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v12 = [v10 homeScreenEvent];

  if (!v12)
  {
    return;
  }

  v13 = [v12 date];
  sub_1000C9580();

  sub_1000B8BFC();
  if ((sub_1000CAC70() & 1) == 0)
  {

    (*(v7 + 8))(v9, v6);
    return;
  }

  sub_100019558(&qword_10011E9E0);
  v14 = sub_1000CAC80();
  (*(v7 + 8))(v9, v6);
  if ((v14 & 1) == 0)
  {
    goto LABEL_28;
  }

  v15 = [v12 widgetSize];
  if (v15 >= 4)
  {
    goto LABEL_28;
  }

  v16 = qword_1000DCB18[v15];
  if (v16 != sub_1000CAB70())
  {
    goto LABEL_28;
  }

  v17 = [v12 widgetBundleId];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1000CAD00();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = [objc_opt_self() mainBundle];
  v23 = [v22 bundleIdentifier];

  if (!v23)
  {
    if (!v21)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v24 = sub_1000CAD00();
  v26 = v25;

  if (!v21)
  {
    if (!v26)
    {
      goto LABEL_22;
    }

LABEL_28:

    return;
  }

  if (!v26)
  {
LABEL_18:

    return;
  }

  if (v19 == v24 && v21 == v26)
  {

    goto LABEL_22;
  }

  v27 = sub_1000CB530();

  if ((v27 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_22:
  sub_1000B9780(&v33);
  if (v34)
  {
    sub_1000855E8(&v33, v35);
    sub_10002DE48(v35, &v33);
    swift_beginAccess();
    v28 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_10006DF14(0, v28[2] + 1, 1, v28);
      *(a4 + 16) = v28;
    }

    v31 = v28[2];
    v30 = v28[3];
    if (v31 >= v30 >> 1)
    {
      v28 = sub_10006DF14((v30 > 1), v31 + 1, 1, v28);
    }

    v28[2] = v31 + 1;
    sub_1000855E8(&v33, &v28[5 * v31 + 4]);
    *(a4 + 16) = v28;
    swift_endAccess();

    sub_10001E37C(v35);
  }

  else
  {

    sub_100031844(&v33, &qword_1001228D8);
  }
}

void sub_1000B9780(uint64_t a1@<X8>)
{
  v3 = sub_100019558(&unk_10011E590);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v51 - v7;
  v9 = sub_1000C95A0();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 eventTypeString];
  if (!v13)
  {
    sub_1000CAD00();
    v14 = sub_1000CACD0();

    v13 = v14;
  }

  v15 = v13;
  if ([v15 isEqualToString:@"Unknown"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"HomeScreenPageShown") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"HomeScreenDisappeared") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"StackChanged"))
  {
    goto LABEL_7;
  }

  if ([v15 isEqualToString:@"WidgetTapped"])
  {

    v16 = [v1 metadata];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 engagedUrl];

      if (v18)
      {
        sub_1000C9440();

        v19 = sub_1000C9480();
        (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
      }

      else
      {
        v28 = sub_1000C9480();
        (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
      }

      sub_10002DB04(v6, v8, &unk_10011E590);
    }

    else
    {
      v27 = sub_1000C9480();
      (*(*(v27 - 8) + 56))(v8, 1, 1, v27);
    }

    v29 = [v1 date];
    v30 = type metadata accessor for EngagementEvent(0);
    *(a1 + 24) = v30;
    *(a1 + 32) = &off_10010E040;
    v31 = sub_100027370(a1);
    sub_1000C9580();

    sub_10002DB04(v8, v31 + *(v30 + 20), &unk_10011E590);
    return;
  }

  if ([v15 isEqualToString:@"WidgetLongLook"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"WidgetUserFeedback") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"UserStackConfigChanged") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"DeviceLocked") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"DeviceUnlocked") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"PinnedWidgetAdded") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"PinnedWidgetDeleted") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"SpecialPageAppeared") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"SpecialPageDisappeared"))
  {
    goto LABEL_7;
  }

  if ([v15 isEqualToString:@"StackShown"])
  {

    v20 = [v1 date];
    sub_1000C9580();

    v21 = [v1 stackKind];
    if (v21 >= 4)
    {
      v22 = 0;
    }

    else
    {
      v22 = v21;
    }

    v23 = [v1 stackLocation];
    if (v23 >= 6)
    {
      v24 = 0;
    }

    else
    {
      v24 = v23;
    }

    v25 = type metadata accessor for AppearanceEvent(0);
    *(a1 + 24) = v25;
    *(a1 + 32) = &off_10010E010;
    v26 = sub_100027370(a1);
    (*(v10 + 32))(v26, v12, v9);
    *(v26 + v25[5]) = v22;
    *(v26 + v25[6]) = v24;
    *(v26 + v25[7]) = 0;
    return;
  }

  if ([v15 isEqualToString:@"StackDisappeared"])
  {

    v32 = [v1 date];
    v33 = type metadata accessor for DisappearanceEvent(0);
    *(a1 + 24) = v33;
    *(a1 + 32) = &off_10010E028;
    v34 = sub_100027370(a1);
    sub_1000C9580();

    *(v34 + *(v33 + 20)) = 2;
    return;
  }

  if ([v15 isEqualToString:@"StackCreated"] & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"StackDeleted") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"WidgetAddedToStack") & 1) != 0 || (objc_msgSend(v15, "isEqualToString:", @"WidgetRemovedFromStack"))
  {
LABEL_7:

LABEL_8:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  if (([v15 isEqualToString:@"StackVisibilityChanged"] & 1) == 0)
  {
    if (([v15 isEqualToString:@"AppAdded"] & 1) == 0)
    {
      [v15 isEqualToString:@"AppRemoved"];
    }

    goto LABEL_7;
  }

  v35 = [v1 metadata];
  if (!v35 || (v36 = v35, v37 = [v35 visibleRect], v36, !v37))
  {
    sub_1000CB040();
    sub_100024CA4();
    v50 = sub_1000CB160();
    sub_1000C9BE0();

    goto LABEL_8;
  }

  [v37 rect];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v46 = [v1 date];
  v47 = type metadata accessor for VisibleRectChangedEvent(0);
  *(a1 + 24) = v47;
  *(a1 + 32) = &off_10010E058;
  v48 = sub_100027370(a1);
  sub_1000C9580();

  v49 = (v48 + *(v47 + 20));
  *v49 = v39;
  v49[1] = v41;
  v49[2] = v43;
  v49[3] = v45;
}

uint64_t sub_1000B9EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100019558(&qword_10011E9E0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  sub_1000BA1E0(a1, &v21 - v5);
  sub_100024CA4();
  v7 = sub_1000CB160();
  v8 = sub_1000CB060();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = a2;
    v22 = 0;
    v11 = v10;
    *v9 = 136315138;
    v23 = 0xE000000000000000;
    v24 = v10;
    sub_1000C95A0();
    sub_1000CB340();
    v25._countAndFlagsBits = 3026478;
    v25._object = 0xE300000000000000;
    sub_1000CADD0(v25);
    sub_1000CB340();
    v12 = v22;
    v13 = v23;
    sub_100031844(v6, &qword_10011E9E0);
    v14 = sub_10009A0C0(v12, v13, &v24);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "event store querying for events in range %s", v9, 0xCu);
    sub_10001E37C(v11);
    a2 = v21;
  }

  else
  {

    sub_100031844(v6, &qword_10011E9E0);
  }

  v15 = [objc_allocWithZone(ATXBiomeUIStream) init];
  isa = sub_1000C94F0().super.isa;
  v17 = swift_allocObject();
  *(v17 + 16) = &_swiftEmptyArrayStorage;
  v18 = [v15 publisherFromStartTime:CFDateGetAbsoluteTime(isa)];
  *(&v21 - 4) = __chkstk_darwin(v18);
  *(&v21 - 3) = v17;
  *(&v21 - 2) = a1;
  *(&v21 - 1) = a2;
  sub_100019558(&qword_1001228D0);
  swift_allocObject();
  v19 = sub_1000C9A00();

  return v19;
}

uint64_t sub_1000BA1E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100019558(&qword_10011E9E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BA250()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000BA294()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BA2CC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000BA324(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BA33C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BA3A0()
{
  v1 = v0;
  v2 = (sub_100019558(&qword_10011E9E0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = (type metadata accessor for TaskContext() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v33 = *(*v6 + 64);
  v9 = v1 + v4;
  v10 = sub_1000C95A0();
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  v12 = v9 + v2[11];
  v13 = v8;
  v11(v12, v10);
  v14 = sub_1000CABD0();
  (*(*(v14 - 8) + 8))(v1 + v8, v14);
  v15 = v1 + v8 + v6[7];
  v16 = type metadata accessor for NewsTimelineEntry();
  v17 = (*(*(v16 - 8) + 48))(v15, 1, v16);
  v18 = v33;
  if (!v17)
  {
    v32 = v7;
    v11(v15, v10);
    v19 = (v15 + *(v16 + 20));

    v20 = type metadata accessor for TodayContent();
    v21 = v19 + *(v20 + 20);
    v22 = type metadata accessor for Banner();
    if (!(*(*(v22 - 1) + 48))(v21, 1, v22))
    {

      v23 = v22[7];
      v24 = sub_1000C9480();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(&v21[v23], 1, v24))
      {
        (*(v25 + 8))(&v21[v23], v24);
      }

      v26 = *&v21[v22[9]];
      if (v26 != 1)
      {
      }

      sub_1000375D8(*&v21[v22[10]], *&v21[v22[10] + 8]);
    }

    swift_unknownObjectRelease();
    v27 = *(v20 + 36);
    v28 = sub_1000C9480();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v19 + v27, 1, v28))
    {
      (*(v29 + 8))(v19 + v27, v28);
    }

    v13 = v8;
    v18 = v33;
    v7 = v32;
  }

  v30 = (v18 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v1, v30 + 8, v3 | v7 | 7);
}

void sub_1000BA7CC(void *a1)
{
  v3 = *(sub_100019558(&qword_10011E9E0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TaskContext() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000B9380(a1, v1 + v4, v1 + v7, v8);
}

unint64_t sub_1000BA8D8()
{
  result = qword_1001228E0;
  if (!qword_1001228E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001228E0);
  }

  return result;
}

unint64_t sub_1000BA940()
{
  result = qword_1001228E8;
  if (!qword_1001228E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001228E8);
  }

  return result;
}

uint64_t sub_1000BAA10()
{
  result = type metadata accessor for Item.Headline(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000BAAAC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100019558(&unk_10011E590);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1000BAB7C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100019558(&unk_10011E590);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000BAC2C()
{
  sub_1000BACD0();
  if (v0 <= 0x3F)
  {
    sub_10001B638();
    if (v1 <= 0x3F)
    {
      sub_1000BAD34();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1000BACD0()
{
  result = qword_100122A08;
  if (!qword_100122A08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100122A08);
  }

  return result;
}

void sub_1000BAD34()
{
  if (!qword_100122A78)
  {
    v0 = sub_1000CB170();
    if (!v1)
    {
      atomic_store(v0, &qword_100122A78);
    }
  }
}

void *sub_1000BAD84()
{
  v1 = v0;
  v2 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Item(0);
  __chkstk_darwin(v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BD8A8(v1, v7, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000BD54C(v7, type metadata accessor for Item);
    return 0;
  }

  else
  {
    sub_1000BD654(v7, v4, type metadata accessor for Item.Headline);
    v9 = &v4[*(v2 + 28)];
    v10 = *v9;
    v8 = *(v9 + 1);
    sub_100058BA0(*v9, v8);
    sub_1000BD54C(v4, type metadata accessor for Item.Headline);
    if (v8)
    {
    }
  }

  return v8;
}

id sub_1000BAF08()
{
  v1 = v0;
  v2 = sub_100019558(&qword_100120168);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for ImageStore.Key(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Item(0);
  __chkstk_darwin(v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BD8A8(v1, v14, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000BD54C(v14, type metadata accessor for Item);
    return 0;
  }

  else
  {
    sub_1000BD654(v14, v11, type metadata accessor for Item.Headline);
    sub_1000BBC3C(v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_100031844(v4, &qword_100120168);
      v15 = 0;
    }

    else
    {
      sub_1000BD654(v4, v8, type metadata accessor for ImageStore.Key);
      v15 = sub_1000BE124(v8, *(v11 + 1));
      sub_1000BD54C(v8, type metadata accessor for ImageStore.Key);
    }

    sub_1000BD54C(v11, type metadata accessor for Item.Headline);
  }

  return v15;
}

id sub_1000BB1C8()
{
  v1 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_1000C9480();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Item.Headline(0);
  sub_10001F8C4(v0 + *(v8 + 24), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100031844(v3, &unk_10011E590);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1000C93F0(v10);
    v12 = v11;
    v13 = [v11 nss_isAudioURL];

    (*(v5 + 8))(v7, v4);
    return v13;
  }
}

id sub_1000BB378()
{
  v1 = sub_100019558(&qword_100120168);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for ImageStore.Key(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BBA40(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100031844(v3, &qword_100120168);
    return 0;
  }

  else
  {
    sub_1000BD654(v3, v7, type metadata accessor for ImageStore.Key);
    v9 = sub_1000BE124(v7, *(v0 + 8));
    if (v9)
    {
      v10 = v9;
      v8 = [v9 imageWithRenderingMode:2];
    }

    else
    {
      v8 = 0;
    }

    sub_1000BD54C(v7, type metadata accessor for ImageStore.Key);
  }

  return v8;
}

id sub_1000BB534()
{
  v1 = sub_100019558(&qword_100122BA0);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = *v0;
  v5 = [*v0 compactSourceName];
  if (v5)
  {
    v6 = v5;
    sub_1000CAD00();
  }

  sub_1000C9270();
  v7 = sub_1000C9280();
  (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  v8 = sub_1000C9830();

  sub_100031844(v3, &qword_100122BA0);
  if (v8)
  {
    result = [v4 sourceName];
    if (result)
    {
LABEL_7:
      v10 = result;
      v11 = sub_1000CAD00();

      return v11;
    }

    __break(1u);
  }

  result = [v4 compactSourceName];
  if (result)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BB6C8()
{
  v1 = *v0;
  v2 = [*v0 storyTypeColorLight];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1000CAD00();
    v6 = v5;

    v7 = [v1 storyTypeColorDark];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1000CAD00();
      v11 = v10;

      sub_10001F934(0, &unk_10011E610);
      v12._countAndFlagsBits = v4;
      v12._object = v6;
      isa = UIColor.init(hex:)(v12).super.isa;
      v14._countAndFlagsBits = v9;
      v14._object = v11;
      v15 = UIColor.init(hex:)(v14).super.isa;
      v16 = swift_allocObject();
      *(v16 + 16) = isa;
      *(v16 + 24) = v15;
      v17 = objc_allocWithZone(UIColor);
      v23[4] = sub_10002E530;
      v23[5] = v16;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 1107296256;
      v23[2] = sub_1000712A8;
      v23[3] = &unk_100110498;
      v18 = _Block_copy(v23);
      v19 = isa;
      v20 = v15;
      [v17 initWithDynamicProvider:v18];
      _Block_release(v18);

      v21 = sub_1000CA610();

      return v21;
    }
  }

  return sub_1000CA5F0();
}

uint64_t sub_1000BB8AC()
{
  v1 = v0;
  v2 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Item(0);
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BD8A8(v1, v7, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000BD54C(v7, type metadata accessor for Item);
    return 0x6567617373656DLL;
  }

  else
  {
    sub_1000BD654(v7, v4, type metadata accessor for Item.Headline);
    v9 = [*v4 identifier];
    v10 = sub_1000CAD00();

    sub_1000BD54C(v4, type metadata accessor for Item.Headline);
    return v10;
  }
}

uint64_t sub_1000BBA40@<X0>(char *a1@<X8>)
{
  v3 = sub_1000C9480();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = [*v1 sourceNameImageRemoteURL];
  if (v10)
  {
    v11 = v10;
    sub_1000C9440();

    v12 = *(v4 + 32);
    v12(v9, v7, v3);
    v12(a1, v9, v3);
    (*(v4 + 56))(a1, 0, 1, v3);
    v13 = type metadata accessor for ImageStore.Key(0);
    return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
  }

  else
  {
    v15 = type metadata accessor for ImageStore.Key(0);
    v16 = *(*(v15 - 8) + 56);

    return v16(a1, 1, 1, v15);
  }
}

uint64_t sub_1000BBC3C@<X0>(char *a1@<X8>)
{
  v3 = sub_1000C9480();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = *v1;
  if ([*v1 needsPlaceholderThumbnail])
  {
    (*(v4 + 56))(a1, 1, 1, v3);
    v11 = type metadata accessor for ImageStore.Key(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = v11;
    v14 = a1;
    v15 = 0;
  }

  else
  {
    v16 = [v10 thumbnailRemoteURL];
    if (v16)
    {
      v17 = v16;
      sub_1000C9440();

      v18 = *(v4 + 32);
      v18(v9, v7, v3);
      v18(a1, v9, v3);
      (*(v4 + 56))(a1, 0, 1, v3);
      v19 = type metadata accessor for ImageStore.Key(0);
      return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
    }

    v21 = type metadata accessor for ImageStore.Key(0);
    v12 = *(*(v21 - 8) + 56);
    v13 = v21;
    v14 = a1;
    v15 = 1;
  }

  return v12(v14, v15, 1, v13);
}

uint64_t sub_1000BBEA4()
{
  v1 = [*v0 identifier];
  v2 = sub_1000CAD00();

  return v2;
}

uint64_t sub_1000BBF00()
{
  v1 = 0x656E696C64616568;
  if (*v0 != 1)
  {
    v1 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1000BBF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000BDDCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000BBF7C(uint64_t a1)
{
  v2 = sub_1000BD5AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BBFB8(uint64_t a1)
{
  v2 = sub_1000BD5AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BBFF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6567617373656DLL;
  }

  else
  {
    v3 = 0x656E696C64616568;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6567617373656DLL;
  }

  else
  {
    v5 = 0x656E696C64616568;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000CB530();
  }

  return v8 & 1;
}

Swift::Int sub_1000BC09C()
{
  sub_1000CB5C0();
  sub_1000CAD90();

  return sub_1000CB5F0();
}

uint64_t sub_1000BC120()
{
  sub_1000CAD90();
}

Swift::Int sub_1000BC190()
{
  sub_1000CB5C0();
  sub_1000CAD90();

  return sub_1000CB5F0();
}

uint64_t sub_1000BC210@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10010C710;
  v8._object = v3;
  v5 = sub_1000CB3F0(v4, v8);

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

void sub_1000BC270(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C64616568;
  if (*v1)
  {
    v2 = 0x6567617373656DLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000BC360@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v24);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100019558(&qword_100122AB0);
  v23 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v22 - v7;
  v9 = type metadata accessor for Item(0);
  __chkstk_darwin(v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v26 = a1;
  sub_10001E2E4(a1, v12);
  sub_1000BD5AC();
  sub_1000CB610();
  if (!v2)
  {
    v13 = v23;
    v22[0] = v11;
    v22[1] = v9;
    v14 = v25;
    v29 = 0;
    sub_1000BD600();
    sub_1000CB480();
    v15 = v6;
    if (v30)
    {
      v28 = 2;
      v17 = sub_1000CB450();
      v19 = v18;
      (*(v13 + 8))(v8, v15);
      v20 = v22[0];
      *v22[0] = v17;
      *(v20 + 8) = v19;
      v21 = v20;
    }

    else
    {
      v27 = 1;
      sub_1000BD710(&qword_100122AC8, type metadata accessor for Item.Headline);
      sub_1000CB480();
      (*(v13 + 8))(v8, v6);
      v21 = v22[0];
      sub_1000BD654(v5, v22[0], type metadata accessor for Item.Headline);
    }

    swift_storeEnumTagMultiPayload();
    sub_1000BD654(v21, v14, type metadata accessor for Item);
  }

  return sub_10001E37C(v26);
}

uint64_t sub_1000BC6BC(void *a1)
{
  v2 = v1;
  v17 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v17);
  v18 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Item(0);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100019558(&qword_100122AD0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  sub_10001E2E4(a1, a1[3]);
  sub_1000BD5AC();
  sub_1000CB630();
  sub_1000BD8A8(v2, v7, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = 1;
    v23 = 0;
    sub_1000BD6BC();
    v12 = v19;
    sub_1000CB4F0();
    if (!v12)
    {
      v22 = 2;
      sub_1000CB4B0();
    }

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v14 = v18;
    sub_1000BD654(v7, v18, type metadata accessor for Item.Headline);
    v21 = 0;
    sub_1000BD6BC();
    v15 = v19;
    sub_1000CB4F0();
    if (!v15)
    {
      v20 = 1;
      sub_1000BD710(&qword_100122AE0, type metadata accessor for Item.Headline);
      sub_1000CB4F0();
    }

    sub_1000BD54C(v14, type metadata accessor for Item.Headline);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1000BCAA0()
{
  v1 = 0x696C64616548746ELL;
  v2 = 0x72556E6F69746361;
  if (*v0 != 2)
  {
    v2 = 0x64657A796C616E61;
  }

  if (*v0)
  {
    v1 = 0x6F74536567616D69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000BCB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000BDF38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000BCB70(uint64_t a1)
{
  v2 = sub_1000BD758();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BCBAC(uint64_t a1)
{
  v2 = sub_1000BD758();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000BCBE8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v3);
  v5 = &v20 - v4;
  v6 = sub_100019558(&qword_100122AE8);
  v25 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v27 = a1;
  sub_10001E2E4(a1, v12);
  sub_1000BD758();
  v13 = v26;
  sub_1000CB610();
  if (v13)
  {
    goto LABEL_3;
  }

  v23 = v3;
  v26 = v5;
  v14 = v11;
  v15 = v25;
  v29 = 0;
  sub_10001F720();
  sub_1000CB480();
  v16 = v28;
  sub_10001F934(0, &unk_100121BB0);
  sub_10001F934(0, &qword_100122AF8);
  v17 = sub_1000CB070();
  v22 = v16;
  if (!v17)
  {
    sub_1000BD7AC();
    swift_allocError();
    swift_willThrow();
    sub_10001F774(v22, *(&v16 + 1));
    (*(v15 + 8))(v8, v6);
LABEL_3:
    sub_10001E37C(v27);
    return;
  }

  v21 = *(&v16 + 1);
  *v11 = v17;
  v29 = 1;
  v18 = v17;
  sub_1000BD800();
  sub_1000CB480();
  v20 = v18;
  *(v14 + 8) = v28;
  LOBYTE(v28) = 2;
  sub_1000BD964(&qword_10011E6B0, &qword_10011DCA0);
  v19 = v26;
  sub_1000CB480();
  sub_10001E440(v19, v14 + *(v9 + 24));
  sub_100019558(&qword_100122B10);
  v29 = 3;
  sub_1000BDA00(&qword_100122B18, sub_1000BD854);
  sub_1000CB480();
  (*(v15 + 8))(v8, v6);
  sub_10001F774(v22, v21);
  *(v14 + *(v9 + 28)) = v28;
  sub_1000BD8A8(v14, v24, type metadata accessor for Item.Headline);
  sub_10001E37C(v27);
  sub_1000BD54C(v14, type metadata accessor for Item.Headline);
}

uint64_t sub_1000BD14C(void *a1)
{
  v3 = v1;
  v5 = sub_100019558(&unk_100122B28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_10001E2E4(a1, a1[3]);
  sub_1000BD758();
  sub_1000CB630();
  v9 = objc_opt_self();
  v10 = *v3;
  v24 = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v24];
  v12 = v24;
  if (v11)
  {
    v13 = sub_1000C94B0();
    v15 = v14;

    v24 = v13;
    v25 = v15;
    v23 = 0;
    sub_10001F870();
    sub_1000CB4F0();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
      return sub_10001F774(v13, v15);
    }

    v24 = v3[1];
    v23 = 1;
    sub_1000BD910();

    sub_1000CB4F0();

    v22 = type metadata accessor for Item.Headline(0);
    LOBYTE(v24) = 2;
    sub_100019558(&unk_10011E590);
    sub_1000BD964(&qword_10011E6F0, &qword_100121390);
    sub_1000CB4F0();
    v18 = v3 + *(v22 + 28);
    v20 = *(v18 + 1);
    v24 = *v18;
    v19 = v24;
    v25 = v20;
    v23 = 3;
    sub_100058BA0(v24, v20);
    sub_100019558(&qword_100122B10);
    sub_1000BDA00(&qword_100122B40, sub_1000BDA78);
    sub_1000CB4F0();
    sub_10001F774(v13, v15);
    sub_10002DEAC(v19, v20);
  }

  else
  {
    v17 = v12;
    sub_1000C9340();

    swift_willThrow();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000BD54C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000BD5AC()
{
  result = qword_100122AB8;
  if (!qword_100122AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122AB8);
  }

  return result;
}

unint64_t sub_1000BD600()
{
  result = qword_100122AC0;
  if (!qword_100122AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122AC0);
  }

  return result;
}

uint64_t sub_1000BD654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000BD6BC()
{
  result = qword_100122AD8;
  if (!qword_100122AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122AD8);
  }

  return result;
}

uint64_t sub_1000BD710(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000BD758()
{
  result = qword_100122AF0;
  if (!qword_100122AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122AF0);
  }

  return result;
}

unint64_t sub_1000BD7AC()
{
  result = qword_100122B00;
  if (!qword_100122B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B00);
  }

  return result;
}

unint64_t sub_1000BD800()
{
  result = qword_100122B08;
  if (!qword_100122B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B08);
  }

  return result;
}

unint64_t sub_1000BD854()
{
  result = qword_100122B20;
  if (!qword_100122B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B20);
  }

  return result;
}

uint64_t sub_1000BD8A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000BD910()
{
  result = qword_100122B38;
  if (!qword_100122B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B38);
  }

  return result;
}

uint64_t sub_1000BD964(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000195A0(&unk_10011E590);
    sub_1000BD710(a2, &type metadata accessor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000BDA00(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000195A0(&qword_100122B10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000BDA78()
{
  result = qword_100122B48;
  if (!qword_100122B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B48);
  }

  return result;
}

unint64_t sub_1000BDB10()
{
  result = qword_100122B50;
  if (!qword_100122B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B50);
  }

  return result;
}

unint64_t sub_1000BDB68()
{
  result = qword_100122B58;
  if (!qword_100122B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B58);
  }

  return result;
}

unint64_t sub_1000BDBC0()
{
  result = qword_100122B60;
  if (!qword_100122B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B60);
  }

  return result;
}

unint64_t sub_1000BDC18()
{
  result = qword_100122B68;
  if (!qword_100122B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B68);
  }

  return result;
}

unint64_t sub_1000BDC70()
{
  result = qword_100122B70;
  if (!qword_100122B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B70);
  }

  return result;
}

unint64_t sub_1000BDCC8()
{
  result = qword_100122B78;
  if (!qword_100122B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B78);
  }

  return result;
}

unint64_t sub_1000BDD20()
{
  result = qword_100122B80;
  if (!qword_100122B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B80);
  }

  return result;
}

unint64_t sub_1000BDD78()
{
  result = qword_100122B88;
  if (!qword_100122B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B88);
  }

  return result;
}

uint64_t sub_1000BDDCC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000CB530() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E696C64616568 && a2 == 0xE800000000000000 || (sub_1000CB530() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000CB530();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1000BDEE4()
{
  result = qword_100122B90;
  if (!qword_100122B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B90);
  }

  return result;
}

uint64_t sub_1000BDF38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696C64616548746ELL && a2 == 0xEE0061746144656ELL;
  if (v4 || (sub_1000CB530() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F74536567616D69 && a2 == 0xEA00000000006572 || (sub_1000CB530() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72556E6F69746361 && a2 == 0xE90000000000006CLL || (sub_1000CB530() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64657A796C616E61 && a2 == 0xEE0073726F6C6F43)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000CB530();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000BE0BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BE0FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000BE124(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C9480();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImageStore.Image(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v29 - v14;
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  if (*(a2 + 16))
  {
    v18 = sub_10003D9C8(a1);
    if (v19)
    {
      sub_1000C0BA4(*(a2 + 56) + *(v9 + 72) * v18, v15, type metadata accessor for ImageStore.Image);
      sub_1000C1B94(v15, v17, type metadata accessor for ImageStore.Image);
      sub_1000C0BA4(v17, v12, type metadata accessor for ImageStore.Image);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1000C0F4C(v17, type metadata accessor for ImageStore.Image);
        return *v12;
      }

      (*(v5 + 32))(v7, v12, v4);
      sub_1000C9450();
      v20 = objc_allocWithZone(UIImage);
      v21 = sub_1000CACD0();

      v22 = [v20 initWithContentsOfFile:v21];

      if (v22)
      {
        (*(v5 + 8))(v7, v4);
        sub_1000C0F4C(v17, type metadata accessor for ImageStore.Image);
        return v22;
      }

      sub_1000CB040();
      sub_100019558(&unk_10011E820);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1000D3410;
      v25 = sub_1000C9450();
      v27 = v26;
      *(v24 + 56) = &type metadata for String;
      *(v24 + 64) = sub_100024C50();
      *(v24 + 32) = v25;
      *(v24 + 40) = v27;
      sub_10001F934(0, &qword_10011F5F0);
      v28 = sub_1000CB160();
      sub_1000C9BE0();

      (*(v5 + 8))(v7, v4);
      sub_1000C0F4C(v17, type metadata accessor for ImageStore.Image);
    }
  }

  return 0;
}

uint64_t sub_1000BE4D8(void *a1)
{
  v2 = sub_100019558(&qword_100122DE8);
  v22 = *(v2 - 8);
  v23 = v2;
  __chkstk_darwin(v2);
  v21 = &v20 - v3;
  v4 = sub_100019558(&qword_100122DF0);
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4);
  v24 = &v20 - v5;
  v6 = sub_1000C9480();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v28 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ImageStore.Key(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100019558(&qword_100122DF8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v20 - v14;
  sub_10001E2E4(a1, a1[3]);
  sub_1000C1AEC();
  sub_1000CB630();
  sub_1000C0BA4(v27, v11, type metadata accessor for ImageStore.Key);
  if ((*(v7 + 48))(v11, 1, v6) == 1)
  {
    v30 = 1;
    sub_1000C1B40();
    v16 = v21;
    sub_1000CB4A0();
    (*(v22 + 8))(v16, v23);
  }

  else
  {
    (*(v7 + 32))(v28, v11, v6);
    v29 = 0;
    sub_1000C1BFC();
    v18 = v24;
    sub_1000CB4A0();
    sub_1000C136C(&qword_100121390, &type metadata accessor for URL);
    v19 = v26;
    sub_1000CB4F0();
    (*(v25 + 8))(v18, v19);
    (*(v7 + 8))(v28, v6);
  }

  return (*(v13 + 8))(v15, v12);
}

Swift::Int sub_1000BE950()
{
  v1 = v0;
  v2 = sub_1000C9480();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageStore.Key(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB5C0();
  sub_1000C0BA4(v1, v8, type metadata accessor for ImageStore.Key);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1000CB5D0(1uLL);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1000CB5D0(0);
    sub_1000C136C(&qword_1001205F0, &type metadata accessor for URL);
    sub_1000CAC30();
    (*(v3 + 8))(v5, v2);
  }

  return sub_1000CB5F0();
}

uint64_t sub_1000BEB3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_100019558(&qword_100122DB0);
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  __chkstk_darwin(v3);
  v44 = &v36 - v5;
  v39 = sub_100019558(&qword_100122DB8);
  v42 = *(v39 - 8);
  __chkstk_darwin(v39);
  v7 = &v36 - v6;
  v8 = sub_100019558(&qword_100122DC0);
  v45 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v36 - v9;
  v11 = type metadata accessor for ImageStore.Key(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v36 - v15;
  v17 = a1[3];
  v47 = a1;
  sub_10001E2E4(a1, v17);
  sub_1000C1AEC();
  v18 = v46;
  sub_1000CB610();
  if (!v18)
  {
    v46 = v11;
    v37 = v14;
    v38 = v16;
    v19 = v44;
    v20 = sub_1000CB490();
    if (*(v20 + 16) == 1)
    {
      v21 = v45;
      if (*(v20 + 32))
      {
        v49 = 1;
        sub_1000C1B40();
        sub_1000CB400();
        v22 = v43;
        (*(v41 + 8))(v19, v40);
        (*(v21 + 8))(v10, v8);
        swift_unknownObjectRelease();
        v23 = sub_1000C9480();
        v24 = v38;
        (*(*(v23 - 8) + 56))(v38, 1, 1, v23);
      }

      else
      {
        v48 = 0;
        sub_1000C1BFC();
        v28 = v7;
        sub_1000CB400();
        v30 = v10;
        v31 = v28;
        v32 = v8;
        v33 = sub_1000C9480();
        sub_1000C136C(&qword_10011DCA0, &type metadata accessor for URL);
        v34 = v37;
        v35 = v39;
        sub_1000CB480();
        (*(v42 + 8))(v31, v35);
        (*(v21 + 8))(v30, v32);
        swift_unknownObjectRelease();
        (*(*(v33 - 8) + 56))(v34, 0, 1, v33);
        v24 = v38;
        sub_1000C1B94(v34, v38, type metadata accessor for ImageStore.Key);
        v22 = v43;
      }

      sub_1000C1B94(v24, v22, type metadata accessor for ImageStore.Key);
    }

    else
    {
      v25 = sub_1000CB2D0();
      swift_allocError();
      v27 = v26;
      sub_100019558(&qword_100122DD0);
      *v27 = v46;
      sub_1000CB410();
      sub_1000CB2C0();
      (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
      swift_willThrow();
      (*(v45 + 8))(v10, v8);
      swift_unknownObjectRelease();
    }
  }

  return sub_10001E37C(v47);
}

uint64_t sub_1000BF13C(void *a1, uint64_t a2)
{
  v4 = sub_100019558(&qword_100122C00);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10001E2E4(a1, a1[3]);
  sub_1000C122C();
  sub_1000CB630();
  v9[1] = a2;
  sub_100019558(&qword_100122BE0);
  sub_1000C13B4();
  sub_1000CB4F0();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000BF298()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x725565746F6D6572;
  }
}

uint64_t sub_1000BF2DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x725565746F6D6572 && a2 == 0xE90000000000006CLL;
  if (v6 || (sub_1000CB530() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000E6E70 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000CB530();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000BF3C8(uint64_t a1)
{
  v2 = sub_1000C1AEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BF404(uint64_t a1)
{
  v2 = sub_1000C1AEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BF44C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000CB530();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000BF4CC(uint64_t a1)
{
  v2 = sub_1000C1BFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BF508(uint64_t a1)
{
  v2 = sub_1000C1BFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BF544@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1000BF574(uint64_t a1)
{
  v2 = sub_1000C1B40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BF5B0(uint64_t a1)
{
  v2 = sub_1000C1B40();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000BF620()
{
  v1 = sub_1000C9480();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C0BA4(v0, v7, type metadata accessor for ImageStore.Key);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1000CB5D0(1uLL);
  }

  else
  {
    (*(v2 + 32))(v5, v7, v1);
    sub_1000CB5D0(0);
    sub_1000C136C(&qword_1001205F0, &type metadata accessor for URL);
    sub_1000CAC30();
    (*(v2 + 8))(v5, v1);
  }
}

Swift::Int sub_1000BF7EC()
{
  v1 = v0;
  v2 = sub_1000C9480();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000CB5C0();
  sub_1000C0BA4(v1, v8, type metadata accessor for ImageStore.Key);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1000CB5D0(1uLL);
  }

  else
  {
    (*(v3 + 32))(v6, v8, v2);
    sub_1000CB5D0(0);
    sub_1000C136C(&qword_1001205F0, &type metadata accessor for URL);
    sub_1000CAC30();
    (*(v3 + 8))(v6, v2);
  }

  return sub_1000CB5F0();
}

uint64_t sub_1000BFA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7942736567616D69 && a2 == 0xEB0000000079654BLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000CB530();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000BFA94(uint64_t a1)
{
  v2 = sub_1000C122C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BFAD0(uint64_t a1)
{
  v2 = sub_1000C122C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000BFB0C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000C10A8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1000BFB58()
{
  v1 = 0x6172576567616D69;
  if (*v0 != 1)
  {
    v1 = 0x6B72616D6B6F6F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1000BFBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000C1978(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000BFBE4(uint64_t a1)
{
  v2 = sub_1000C0FAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BFC20(uint64_t a1)
{
  v2 = sub_1000C0FAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000BFC5C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x4C5255656C6966;
  }

  else
  {
    v2 = 0x6567616D496975;
  }

  if (*a2)
  {
    v3 = 0x4C5255656C6966;
  }

  else
  {
    v3 = 0x6567616D496975;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1000CB530();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_1000BFCE4()
{
  sub_1000CB5C0();
  sub_1000CAD90();

  return sub_1000CB5F0();
}

uint64_t sub_1000BFD5C()
{
  sub_1000CAD90();
}

Swift::Int sub_1000BFDB8()
{
  sub_1000CB5C0();
  sub_1000CAD90();

  return sub_1000CB5F0();
}

uint64_t sub_1000BFE2C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10010C760;
  v8._object = v3;
  v5 = sub_1000CB3F0(v4, v8);

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

void sub_1000BFE8C(uint64_t *a1@<X8>)
{
  v2 = 0x6567616D496975;
  if (*v1)
  {
    v2 = 0x4C5255656C6966;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

uint64_t sub_1000BFF74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a1;
  v31 = a2;
  v3 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v3 - 8);
  v29 = &v26 - v4;
  v5 = sub_1000C9480();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100019558(&qword_100122BA8);
  v30 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for ImageStore.Image(0);
  __chkstk_darwin(v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001E2E4(a1, a1[3]);
  sub_1000C0FAC();
  v14 = v33;
  sub_1000CB610();
  if (!v14)
  {
    v27 = v7;
    v28 = v5;
    v33 = v13;
    v15 = v31;
    v16 = v32;
    v17 = v30;
    LOBYTE(v37) = 0;
    sub_1000C1000();
    sub_1000CB480();
    v18 = v10;
    if (v35)
    {
      LOBYTE(v37) = 2;
      sub_10001F720();
      sub_1000CB480();
      v26 = v11;
      v19 = v35;
      v20 = v36;
      LOBYTE(v35) = 0;
      v21 = v29;
      (*(v16 + 56))(v29, 1, 1, v28);
      sub_1000C9400();
      sub_10001F774(v19, v20);
      sub_100031844(v21, &unk_10011E590);
      (*(v17 + 8))(v18, v8);
      v25 = v33;
      (*(v32 + 32))(v33, v27, v28);
    }

    else
    {
      LOBYTE(v37) = 1;
      sub_10001EF1C();
      sub_1000CB480();
      (*(v17 + 8))(v10, v8);
      v23 = v35;

      v24 = v33;
      *v33 = v23;
      v25 = v24;
    }

    swift_storeEnumTagMultiPayload();
    sub_1000C1B94(v25, v15, type metadata accessor for ImageStore.Image);
  }

  return sub_10001E37C(v34);
}

void sub_1000C05B4(void *a1)
{
  v2 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v2 - 8);
  v35 = &v30 - v3;
  v4 = sub_1000C9480();
  v37 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C95D0();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ImageStore.Image(0);
  __chkstk_darwin(v9);
  v11 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100019558(&qword_100122BC0);
  v38 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v30 - v13;
  sub_10001E2E4(a1, a1[3]);
  sub_1000C0FAC();
  sub_1000CB630();
  sub_1000C0BA4(v34, v11, type metadata accessor for ImageStore.Image);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = v37;
    (*(v37 + 32))(v6, v11, v4);
    (*(v15 + 56))(v35, 1, 1, v4);
    v16 = v36;
    v17 = sub_1000C93A0();
    if (!v16)
    {
      v21 = v17;
      v22 = v18;
      sub_100031844(v35, &unk_10011E590);
      LOBYTE(v39) = 1;
      v42 = 0;
      sub_1000C1054();
      sub_1000CB4F0();
      v39 = v21;
      v40 = v22;
      v42 = 2;
      sub_10001F870();
      sub_1000CB4F0();
      (*(v37 + 8))(v6, v4);
      (*(v38 + 8))(v14, v12);
      sub_10001F774(v21, v22);
      return;
    }

    sub_100031844(v35, &unk_10011E590);
    (*(v37 + 8))(v6, v4);
  }

  else
  {
    v19 = *v11;
    LOBYTE(v39) = 0;
    v42 = 0;
    sub_1000C1054();
    v20 = v36;
    sub_1000CB4F0();
    if (v20)
    {
      (*(v38 + 8))(v14, v12);

      return;
    }

    v23 = v19;
    v24 = v31;
    sub_1000C95C0();
    v25 = sub_1000C95B0();
    v27 = v26;
    (*(v32 + 8))(v24, v33);
    v39 = v25;
    v40 = v27;
    v43._countAndFlagsBits = 1735290926;
    v43._object = 0xE400000000000000;
    sub_1000CADD0(v43);
    v28 = v39;
    v29 = v40;
    v39 = v23;
    v40 = v28;
    v41 = v29;
    v42 = 1;
    sub_10001EFC4();
    sub_1000CB4F0();
  }

  (*(v38 + 8))(v14, v12);
}

uint64_t sub_1000C0BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C0C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C9480();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ImageStore.Key(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100019558(&qword_10011ED60);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1000C0BA4(a1, &v24 - v16, type metadata accessor for ImageStore.Key);
  sub_1000C0BA4(a2, &v17[v18], type metadata accessor for ImageStore.Key);
  v19 = v5[6];
  if (v19(v17, 1, v4) != 1)
  {
    sub_1000C0BA4(v17, v13, type metadata accessor for ImageStore.Key);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      v21 = v5[4];
      v21(v10, v13, v4);
      v21(v8, &v17[v18], v4);
      v20 = sub_1000C9430();
      v22 = v5[1];
      v22(v8, v4);
      v22(v10, v4);
      sub_1000C0F4C(v17, type metadata accessor for ImageStore.Key);
      return v20 & 1;
    }

    (v5[1])(v13, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_100031844(v17, &qword_10011ED60);
    v20 = 0;
    return v20 & 1;
  }

  sub_1000C0F4C(v17, type metadata accessor for ImageStore.Key);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1000C0F4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000C0FAC()
{
  result = qword_100122BB0;
  if (!qword_100122BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122BB0);
  }

  return result;
}

unint64_t sub_1000C1000()
{
  result = qword_100122BB8;
  if (!qword_100122BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122BB8);
  }

  return result;
}

unint64_t sub_1000C1054()
{
  result = qword_100122BC8;
  if (!qword_100122BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122BC8);
  }

  return result;
}

void *sub_1000C10A8(void *a1)
{
  v3 = sub_100019558(&qword_100122BD0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10001E2E4(a1, a1[3]);
  sub_1000C122C();
  sub_1000CB610();
  if (v1)
  {
    sub_10001E37C(a1);
  }

  else
  {
    sub_100019558(&qword_100122BE0);
    sub_1000C1280();
    sub_1000CB480();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_10001E37C(a1);
  }

  return v7;
}

unint64_t sub_1000C122C()
{
  result = qword_100122BD8;
  if (!qword_100122BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122BD8);
  }

  return result;
}

unint64_t sub_1000C1280()
{
  result = qword_100122BE8;
  if (!qword_100122BE8)
  {
    sub_1000195A0(&qword_100122BE0);
    sub_1000C136C(&qword_100122BF0, type metadata accessor for ImageStore.Key);
    sub_1000C136C(&qword_100122BF8, type metadata accessor for ImageStore.Image);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122BE8);
  }

  return result;
}

uint64_t sub_1000C136C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000C13B4()
{
  result = qword_100122C08;
  if (!qword_100122C08)
  {
    sub_1000195A0(&qword_100122BE0);
    sub_1000C136C(&qword_100122C10, type metadata accessor for ImageStore.Key);
    sub_1000C136C(&qword_100122C18, type metadata accessor for ImageStore.Image);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122C08);
  }

  return result;
}

uint64_t sub_1000C14D8()
{
  result = sub_10001F934(319, &qword_10011F6F8);
  if (v1 <= 0x3F)
  {
    result = sub_1000C9480();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C1570(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C9480();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C15F0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000C9480();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1000C1670()
{
  v0 = sub_1000C9480();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_1000C1714()
{
  result = qword_100122D70;
  if (!qword_100122D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122D70);
  }

  return result;
}

unint64_t sub_1000C176C()
{
  result = qword_100122D78;
  if (!qword_100122D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122D78);
  }

  return result;
}

unint64_t sub_1000C17C4()
{
  result = qword_100122D80;
  if (!qword_100122D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122D80);
  }

  return result;
}

unint64_t sub_1000C181C()
{
  result = qword_100122D88;
  if (!qword_100122D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122D88);
  }

  return result;
}

unint64_t sub_1000C1874()
{
  result = qword_100122D90;
  if (!qword_100122D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122D90);
  }

  return result;
}

unint64_t sub_1000C18CC()
{
  result = qword_100122D98;
  if (!qword_100122D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122D98);
  }

  return result;
}

unint64_t sub_1000C1924()
{
  result = qword_100122DA0;
  if (!qword_100122DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122DA0);
  }

  return result;
}

uint64_t sub_1000C1978(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000CB530() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6172576567616D69 && a2 == 0xEC00000072657070 || (sub_1000CB530() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xEC00000061746144)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000CB530();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1000C1A98()
{
  result = qword_100122DA8;
  if (!qword_100122DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122DA8);
  }

  return result;
}

unint64_t sub_1000C1AEC()
{
  result = qword_100122DC8;
  if (!qword_100122DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122DC8);
  }

  return result;
}

unint64_t sub_1000C1B40()
{
  result = qword_100122DD8;
  if (!qword_100122DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122DD8);
  }

  return result;
}

uint64_t sub_1000C1B94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000C1BFC()
{
  result = qword_100122DE0;
  if (!qword_100122DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122DE0);
  }

  return result;
}

unint64_t sub_1000C1C84()
{
  result = qword_100122E00;
  if (!qword_100122E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122E00);
  }

  return result;
}

unint64_t sub_1000C1CDC()
{
  result = qword_100122E08;
  if (!qword_100122E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122E08);
  }

  return result;
}

unint64_t sub_1000C1D34()
{
  result = qword_100122E10;
  if (!qword_100122E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122E10);
  }

  return result;
}

unint64_t sub_1000C1D8C()
{
  result = qword_100122E18;
  if (!qword_100122E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122E18);
  }

  return result;
}

unint64_t sub_1000C1DE4()
{
  result = qword_100122E20;
  if (!qword_100122E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122E20);
  }

  return result;
}

unint64_t sub_1000C1E3C()
{
  result = qword_100122E28;
  if (!qword_100122E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122E28);
  }

  return result;
}

unint64_t sub_1000C1E94()
{
  result = qword_100122E30;
  if (!qword_100122E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122E30);
  }

  return result;
}

unint64_t sub_1000C1EEC()
{
  result = qword_100122E38;
  if (!qword_100122E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122E38);
  }

  return result;
}

uint64_t NTPBTodaySectionConfigWebEmbed.conforms(to:)(__objc2_prot *a1)
{
  v3.super_class = NTPBTodaySectionConfigWebEmbed;
  LODWORD(result) = [(__objc2_prot *)&v3 conformsToProtocol:a1];
  if (&OBJC_PROTOCOL___NTTodayItem == a1)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

id TagIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TagIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id TagIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TagIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id TagIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1000CACD0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id TagIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1000CACD0();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for TagIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id TagIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000CACD0();

  v8 = sub_1000CACD0();

  if (a5)
  {
    v9.super.isa = sub_1000CAC00().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9.super.isa];

  return v10;
}

id TagIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000CACD0();

  v8 = sub_1000CACD0();

  if (a5)
  {
    v9.super.isa = sub_1000CAC00().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for TagIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

Swift::Int sub_1000C2604()
{
  v1 = *v0;
  sub_1000CB5C0();
  sub_1000CB5D0(v1);
  return sub_1000CB5F0();
}

Swift::Int sub_1000C2678()
{
  v1 = *v0;
  sub_1000CB5C0();
  sub_1000CB5D0(v1);
  return sub_1000CB5F0();
}

unint64_t sub_1000C26BC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000C2DE8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t TagIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___TagIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *TagIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___TagIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

char *TagIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___TagIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id TagIntentResponse.init()()
{
  *&v0[OBJC_IVAR___TagIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TagIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id Tag.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id TagIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___TagIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TagIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id TodayIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id TagIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___TagIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TagIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1000C2B94(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___TagIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for TagIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id TodayIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_1000CAC00().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id TagIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___TagIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_1000CAC00().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for TagIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_1000C2DB0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1000C2DE8(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1000C2E20()
{
  result = qword_100122E48;
  if (!qword_100122E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122E48);
  }

  return result;
}

uint64_t sub_1000C2E74@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___TagIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000C2ECC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___TagIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id TodayIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id TodayIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TodayIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id TodayIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1000CACD0();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for TodayIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id TodayIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000CACD0();

  v8 = sub_1000CACD0();

  if (a5)
  {
    v9.super.isa = sub_1000CAC00().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for TodayIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

uint64_t TodayIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___TodayIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *TodayIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___TodayIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

char *TodayIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___TodayIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id TodayIntentResponse.init()()
{
  *&v0[OBJC_IVAR___TodayIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id TodayIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___TodayIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TodayIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id TodayIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___TodayIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TodayIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1000C37C8(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___TodayIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for TodayIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id TodayIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___TodayIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_1000CAC00().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for TodayIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_1000C3960(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1000C39C0()
{
  result = qword_100122EA8;
  if (!qword_100122EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122EA8);
  }

  return result;
}

uint64_t sub_1000C3A14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___TodayIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1000C3A6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___TodayIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id Tag.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_1000CACD0();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1000CACD0();

  if (a6)
  {
    v10 = sub_1000CACD0();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id Tag.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_1000CACD0();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1000CACD0();

  if (a6)
  {
    v10 = sub_1000CACD0();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for Tag();
  v11 = objc_msgSendSuper2(&v13, "initWithIdentifier:displayString:pronunciationHint:", v8, v9, v10);

  return v11;
}

id Tag.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Tag();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id static TagResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___TagResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static TagResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1000C3FF0();

    sub_1000CB390();
  }

  else
  {

    sub_1000CB540();
    sub_1000C3FF0();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1000C3FF0();
  isa = sub_1000CAEC0().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___TagResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

unint64_t sub_1000C3FF0()
{
  result = qword_100122F28;
  if (!qword_100122F28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100122F28);
  }

  return result;
}

id static TagResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___TagResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id TagResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_1000CAC00().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id TagResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_1000CAC00().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for TagResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_1000C457C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1000C45E0(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1001341B8 == -1)
  {
    if (qword_1001341C0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000C8D10();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1001341C0)
    {
      return _availability_version_check();
    }
  }

  if (qword_1001341B0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000C8D28();
    a3 = v10;
    a4 = v9;
    v8 = dword_1001341A0 < v11;
    if (dword_1001341A0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1001341A4 > a3)
      {
        return 1;
      }

      if (dword_1001341A4 >= a3)
      {
        return dword_1001341A8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1001341A0 < a2;
  if (dword_1001341A0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1000C4774(uint64_t result)
{
  v1 = qword_1001341C0;
  if (qword_1001341C0)
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
      qword_1001341C0 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_1001341A0, &dword_1001341A4, &dword_1001341A8);
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

void sub_1000C4AA8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "headline", v6, 2u);
}

void sub_1000C4B6C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "widgetEventTracker", v6, 2u);
}

void sub_1000C4C30()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_1000C4CF4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_1000C4DB8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "assetHandlesByRemoteURL", v6, 2u);
}

void sub_1000C4E7C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "JSONArray", v6, 2u);
}

void sub_1000C4F40()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "flintDocumentURLAssetHandlesByRemoteURL", v6, 2u);
}

void sub_1000C5004()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "assetManager", v6, 2u);
}

void sub_1000C50C8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "encodableElement", v6, 2u);
}

void sub_1000C518C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "assetHandlesByRemoteURL", v6, 2u);
}

void sub_1000C5250()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "JSONArray", v6, 2u);
}

void sub_1000C5314()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "URL", v6, 2u);
}

void sub_1000C53D8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "reporter", v6, 2u);
}

void sub_1000C549C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "widgetEventTracker", v6, 2u);
}

void sub_1000C5560()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_1000C5624()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_1000C56E8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "todaySourceIdentifier", v6, 2u);
}

void sub_1000C57AC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "a", v6, 2u);
}

void sub_1000C5870()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "b", v6, 2u);
}

void sub_1000C5934()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "date", v6, 2u);
}

void sub_1000C59F8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "todaySourceIdentifier", v6, 2u);
}

void sub_1000C5ABC()
{
  v0 = [[NSString alloc] initWithFormat:@"start and end events must be balanced!"];
  v1 = 136315906;
  v2 = "[FTWidgetLingerEventTracker trackWidgetLingerEventExtremity:atDate:withTodaySource:appConfigTreatmentID:widgetDisplayMode:appearanceType:]";
  v3 = 2080;
  v4 = "FTWidgetLingerEventTracker.m";
  v5 = 1024;
  sub_10000B3F4();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_1000C5B90()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "startState", v6, 2u);
}

void sub_1000C5C54()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "startDate", v6, 2u);
}

void sub_1000C5D18()
{
  v0 = [[NSString alloc] initWithFormat:@"start and end events must be balanced!"];
  v1 = 136315906;
  v2 = "[FTWidgetLingerEventTracker trackWidgetLingerEventExtremity:atDate:withTodaySource:appConfigTreatmentID:widgetDisplayMode:appearanceType:]";
  v3 = 2080;
  v4 = "FTWidgetLingerEventTracker.m";
  v5 = 1024;
  sub_10000B3F4();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_1000C5DEC()
{
  v0 = [[NSString alloc] initWithFormat:@"expected nil value for '%s'"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "self.startState", v6, 2u);
}

void sub_1000C5EB0()
{
  v0 = [[NSString alloc] initWithFormat:@"expected nil value for '%s'"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "self.startDate", v6, 2u);
}

void sub_1000C5F74()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "endTodaySourceIdentifier", v6, 2u);
}

void sub_1000C6038()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sessionManager", v6, 2u);
}

void sub_1000C60FC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "userIDProvider", v6, 2u);
}

void sub_1000C61C0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "changeDate", v6, 2u);
}

void sub_1000C6284()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_1000C6348()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "lastVisibleItemsChangeDate", v6, 2u);
}

void sub_1000C640C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "date", v6, 2u);
}

void sub_1000C64D0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "engagement", v6, 2u);
}

void sub_1000C6594()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_1000C6658()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "event", v6, 2u);
}

void sub_1000C671C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_1000C67E0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "todaySource"];
  *buf = 136315906;
  v2 = "[NTHeadlineEngagementEventTracker trackEngagementWithTodaySource:appConfigTreatmentID:section:otherVisibleSections:headlineOrder:widgetDisplayMode:]";
  v3 = 2080;
  v4 = "FTHeadlineEngagementEventTracker.m";
  v5 = 1024;
  sub_100003060();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000C68C0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "section"];
  *buf = 136315906;
  v2 = "[NTHeadlineEngagementEventTracker trackEngagementWithTodaySource:appConfigTreatmentID:section:otherVisibleSections:headlineOrder:widgetDisplayMode:]";
  v3 = 2080;
  v4 = "FTHeadlineEngagementEventTracker.m";
  v5 = 1024;
  sub_100003060();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000C69A0()
{
  v0 = [[NSString alloc] initWithFormat:@"Case not implemented"];
  v1 = 136315906;
  v2 = "NSString *FTCampaignIdentifierForSourceIdentifier(NSString *__strong)";
  v3 = 2080;
  v4 = "FTConstants.m";
  v5 = 1024;
  v6 = 30;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_1000C6A80()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "appearanceDate"];
  *buf = 136315906;
  v2 = "[FTWidgetAppearanceEventTracker trackAppearanceAtDate:withHeadlineSource:appConfigTreatmentID:appearanceType:allItemsCount:]";
  v3 = 2080;
  v4 = "FTWidgetAppearanceEventTracker.m";
  v5 = 1024;
  sub_100003060();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000C6B60()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "todaySource"];
  *buf = 136315906;
  v2 = "[FTWidgetAppearanceEventTracker trackAppearanceAtDate:withHeadlineSource:appConfigTreatmentID:appearanceType:allItemsCount:]";
  v3 = 2080;
  v4 = "FTWidgetAppearanceEventTracker.m";
  v5 = 1024;
  sub_100003060();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000C6C40()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "headlines", v6, 2u);
}

void sub_1000C6D04()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sectionsByHeadline", v6, 2u);
}

void sub_1000C6DC8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "assetHandlesByRemoteURL", v6, 2u);
}

void sub_1000C6E8C()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "NewsArticleID", v6, 2u);
}

void sub_1000C6F50()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "unvalidatedValue"];
  *buf = 136315906;
  v2 = "NSString *FTValidatedFreeValuedPropertyValue(NSString *__strong)";
  v3 = 2080;
  v4 = "FTEventTrackingConstants.m";
  v5 = 1024;
  sub_100003060();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000C7030()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "name"];
  *buf = 136315906;
  v2 = "+[PETEventProperty(FTAdditions) ft_BOOLeanPropertyWithName:]";
  v3 = 2080;
  v4 = "FTEventTrackingConstants.m";
  v5 = 1024;
  sub_100003060();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000C7110()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "userIDProvider"];
  *buf = 136315906;
  v2 = "[FTNewsAnalyticsWidgetEventTracker initWithUserIDProvider:]";
  v3 = 2080;
  v4 = "FTNewsAnalyticsWidgetEventTracker.m";
  v5 = 1024;
  v6 = 41;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000C71FC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "referralItem", v6, 2u);
}

void sub_1000C72C0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sharedDirectoryFileURL", v6, 2u);
}

void sub_1000C7384()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sourceFilePath", v6, 2u);
}

void sub_1000C7448()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "assetManager", v6, 2u);
}

void sub_1000C750C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "itemClass", v6, 2u);
}

void sub_1000C75D0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "queryValue", v6, 2u);
}

void sub_1000C7694()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "eventTrackers"];
  *buf = 136315906;
  v2 = "[FTAggregateWidgetEventTracker initWithEventTrackers:]";
  v3 = 2080;
  v4 = "FTAggregateWidgetEventTracker.m";
  v5 = 1024;
  sub_100003060();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000C7774()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "trackableWidgetState"];
  *buf = 136315906;
  v2 = "[FTAggregateWidgetEventTracker widgetDidAppearAtDate:withTrackableWidgetState:]";
  v3 = 2080;
  v4 = "FTAggregateWidgetEventTracker.m";
  v5 = 1024;
  sub_100003060();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000C7868(uint64_t a1, id *a2)
{
  v3 = [*(a1 + 40) identifier];
  v4 = [*a2 downloadError];
  sub_10001219C();
  sub_1000121B4(&_mh_execute_header, v5, v6, "failed to download JSON for banner %{public}@ with error %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000C7910(uint64_t a1, id *a2)
{
  v3 = [*(a1 + 40) identifier];
  v4 = [*a2 downloadError];
  sub_10001219C();
  sub_1000121B4(&_mh_execute_header, v5, v6, "failed to download JSON for headline %{public}@ with error %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000C79B8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "availabilityMonitor"];
  *buf = 136315906;
  v2 = "[FTEngagementURLProvider initWithAvailabilityMonitor:]";
  v3 = 2080;
  v4 = "FTEngagementURLProvider.m";
  v5 = 1024;
  sub_100003060();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000C7A98()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "engagementDescriptor"];
  *buf = 136315906;
  v2 = "[FTEngagementURLProvider URLForEngagement:event:trackableWidgetState:prefetchAssetsByRemoteURL:sharedDirectoryFileURL:]";
  v3 = 2080;
  v4 = "FTEngagementURLProvider.m";
  v5 = 1024;
  sub_100003060();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000C7B8C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "todaySourceIdentifier"];
  *buf = 136315906;
  v2 = "[FTWidgetUpdateEventTracker trackUpdateWithTodaySource:appConfigTreatmentID:error:updateFetchDuration:wifiReachable:cellularRadioAccessTechnology:]";
  v3 = 2080;
  v4 = "FTWidgetUpdateEventTracker.m";
  v5 = 1024;
  sub_100003060();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000C7C6C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "updateFetchDuration >= 0"];
  *buf = 136315906;
  v2 = "[FTWidgetUpdateEventTracker trackUpdateWithTodaySource:appConfigTreatmentID:error:updateFetchDuration:wifiReachable:cellularRadioAccessTechnology:]";
  v3 = 2080;
  v4 = "FTWidgetUpdateEventTracker.m";
  v5 = 1024;
  sub_100003060();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000C7D4C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "widgetEventTracker", v6, 2u);
}

void sub_1000C7E10()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "predicate", v6, 2u);
}

void sub_1000C7ED4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "date", v6, 2u);
}

void sub_1000C7F98()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_1000C805C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_1000C8120()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "fetchInfo", v6, 2u);
}

void sub_1000C81E4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "sourceIdentifier"];
  *buf = 136315906;
  v2 = "[NSURL(FTReferralAdditions) ft_referralURLWithSourceIdentifier:appConfigTreatmentID:widgetEngagement:otherQueryItems:sharedDirectoryFileURL:]";
  v3 = 2080;
  v4 = "NSURL+FTReferralAdditions.m";
  v5 = 1024;
  sub_100003060();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000C82C4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "otherQueryItems"];
  *buf = 136315906;
  v2 = "[NSURL(FTReferralAdditions) ft_referralURLWithSourceIdentifier:appConfigTreatmentID:widgetEngagement:otherQueryItems:sharedDirectoryFileURL:]";
  v3 = 2080;
  v4 = "NSURL+FTReferralAdditions.m";
  v5 = 1024;
  sub_100003060();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000C83A4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "date", v6, 2u);
}

void sub_1000C8468()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "headline", v6, 2u);
}

void sub_1000C852C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "section", v6, 2u);
}

void sub_1000C85F0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_1000C86B4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "trackableWidgetState"];
  *buf = 136315906;
  v2 = "[FTProactiveWidgetEventTracker widgetDidAppearAtDate:withTrackableWidgetState:]";
  v3 = 2080;
  v4 = "FTProactiveWidgetEventTracker.m";
  v5 = 1024;
  v6 = 59;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000C87A0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "todayEventTracker", v6, 2u);
}

void sub_1000C8864()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "documentsDirectoryFileURL", v6, 2u);
}

void sub_1000C8928()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "visibleHeadlines", v6, 2u);
}

void sub_1000C89EC()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "visibleHeadlinesAppearanceDate", v6, 2u);
}

void sub_1000C8AB0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "date", v6, 2u);
}

void sub_1000C8B74()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "visibleHeadlines", v6, 2u);
}

void sub_1000C8C4C()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_100003084();
  sub_100003074();
  sub_100003060();
  sub_100003094(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "contentContext", v6, 2u);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}