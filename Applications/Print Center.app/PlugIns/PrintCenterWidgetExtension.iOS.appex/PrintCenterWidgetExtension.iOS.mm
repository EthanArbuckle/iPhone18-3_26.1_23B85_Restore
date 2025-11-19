uint64_t sub_10000147C()
{
  v0 = sub_10000C590();
  sub_1000031BC(v0, qword_100018500);
  v1 = sub_100003184(v0, qword_100018500);
  v2 = enum case for IntentAuthenticationPolicy.alwaysAllowed(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

void (*sub_10000154C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_10000C4F0();
  return sub_1000015C0;
}

void sub_1000015C0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100001644(uint64_t a1)
{
  v2 = sub_1000024E8();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_1000016C8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to OpenIntent.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_1000024E8();
  *v6 = v2;
  v6[1] = sub_10000177C;

  return OpenIntent.perform()(a1, a2, v7);
}

uint64_t sub_10000177C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100001870@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002B60();
  *a1 = result;
  return result;
}

uint64_t sub_100001898(uint64_t a1)
{
  v2 = sub_1000023B8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100001908(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  v6 = a2(0);
  sub_1000031BC(v6, a3);
  sub_100003184(v6, a3);
  return a4(0xD000000000000011, 0x800000010000DF50);
}

uint64_t sub_10000197C()
{
  sub_1000022C0(&qword_100018120, &qword_10000D410);
  v0 = *(sub_1000022C0(&qword_100018128, &qword_10000D418) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10000CF60;
  sub_10000C540();
  v4 = sub_100002EF4(v3);
  swift_setDeallocating();
  sub_1000030AC(v3 + v2);
  result = swift_deallocClassInstance();
  qword_100018530 = v4;
  return result;
}

Swift::Int sub_100001A8C()
{
  sub_10000CC80();
  sub_10000CB90();
  return sub_10000CCB0();
}

Swift::Int sub_100001AF0()
{
  sub_10000CC80();
  sub_10000CB90();
  return sub_10000CCB0();
}

uint64_t sub_100001B3C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100014E40;
  v7._object = v3;
  v5 = sub_10000CBE0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100001BE4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100003184(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100001C8C(uint64_t a1)
{
  v2 = sub_100002854();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100001CD8()
{
  if (qword_100018038 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100001D34(uint64_t a1)
{
  v2 = sub_10000278C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t variable initialization expression of CancelPrintJob._jobContextIdentifier()
{
  v0 = sub_10000C560();
  v36 = *(v0 - 8);
  v37 = v0;
  v1 = *(v36 + 64);
  __chkstk_darwin(v0);
  v35 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000022C0(&qword_100018068, &qword_10000CF70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v34 = &v29 - v5;
  v6 = sub_1000022C0(&qword_100018070, &qword_10000CF78);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v33 = &v29 - v8;
  v9 = sub_1000022C0(&qword_100018078, &qword_10000CF80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v32 = &v29 - v11;
  v12 = sub_10000C5C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C640();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_10000CB60();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v30 = sub_10000C5D0();
  v21 = *(v30 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v30);
  v31 = sub_1000022C0(&qword_100018080, &qword_10000CF88);
  sub_10000CB50();
  sub_10000C630();
  v23 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v24 = *(v13 + 104);
  v24(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  sub_10000C5E0();
  sub_10000CB50();
  sub_10000C630();
  v24(v16, v23, v12);
  v25 = v32;
  sub_10000C5E0();
  (*(v21 + 56))(v25, 0, 1, v30);
  v26 = sub_10000CB40();
  v38 = 0;
  v39 = 0;
  (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
  v27 = sub_10000C4D0();
  (*(*(v27 - 8) + 56))(v34, 1, 1, v27);
  (*(v36 + 104))(v35, enum case for InputConnectionBehavior.default(_:), v37);
  return sub_10000C530();
}

uint64_t sub_1000022C0(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000230C()
{
  result = qword_100018088;
  if (!qword_100018088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018088);
  }

  return result;
}

unint64_t sub_100002360()
{
  result = qword_100018090;
  if (!qword_100018090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018090);
  }

  return result;
}

unint64_t sub_1000023B8()
{
  result = qword_100018098;
  if (!qword_100018098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018098);
  }

  return result;
}

unint64_t sub_100002410()
{
  result = qword_1000180A0;
  if (!qword_1000180A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000180A0);
  }

  return result;
}

unint64_t sub_100002468()
{
  result = qword_1000180A8;
  if (!qword_1000180A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000180A8);
  }

  return result;
}

unint64_t sub_1000024E8()
{
  result = qword_1000180B0;
  if (!qword_1000180B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000180B0);
  }

  return result;
}

unint64_t sub_10000256C()
{
  result = qword_1000180B8;
  if (!qword_1000180B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000180B8);
  }

  return result;
}

unint64_t sub_1000025C8()
{
  result = qword_1000180C0;
  if (!qword_1000180C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000180C0);
  }

  return result;
}

unint64_t sub_100002620()
{
  result = qword_1000180C8;
  if (!qword_1000180C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000180C8);
  }

  return result;
}

unint64_t sub_100002684()
{
  result = qword_1000180D0;
  if (!qword_1000180D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000180D0);
  }

  return result;
}

unint64_t sub_1000026DC()
{
  result = qword_1000180D8;
  if (!qword_1000180D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000180D8);
  }

  return result;
}

unint64_t sub_100002734()
{
  result = qword_1000180E0;
  if (!qword_1000180E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000180E0);
  }

  return result;
}

unint64_t sub_10000278C()
{
  result = qword_1000180E8;
  if (!qword_1000180E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000180E8);
  }

  return result;
}

unint64_t sub_100002854()
{
  result = qword_1000180F0;
  if (!qword_1000180F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000180F0);
  }

  return result;
}

unint64_t sub_1000028AC()
{
  result = qword_1000180F8;
  if (!qword_1000180F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000180F8);
  }

  return result;
}

unint64_t sub_100002904()
{
  result = qword_100018100;
  if (!qword_100018100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018100);
  }

  return result;
}

unint64_t sub_10000295C()
{
  result = qword_100018108;
  if (!qword_100018108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018108);
  }

  return result;
}

unint64_t sub_1000029B4()
{
  result = qword_100018110;
  if (!qword_100018110)
  {
    sub_100002A18(&qword_100018118, &qword_10000D348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018110);
  }

  return result;
}

uint64_t sub_100002A18(uint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for LaunchPrintCenterEnum(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for LaunchPrintCenterEnum(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_100002B60()
{
  v20 = sub_10000C560();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_1000022C0(&qword_100018068, &qword_10000CF70) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_1000022C0(&qword_100018078, &qword_10000CF80);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_10000C5D0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_1000022C0(&qword_100018138, qword_10000D428);
  sub_10000C5B0();
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = 1;
  v17 = sub_10000C4D0();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v20);
  sub_100002854();
  return sub_10000C520();
}

unint64_t sub_100002E64(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_100002E90()
{
  v1 = *(v0 + 40);
  sub_10000CC80();
  sub_10000CB90();
  v2 = sub_10000CCB0();

  return sub_100002E64(v2);
}

unint64_t sub_100002EF4(uint64_t a1)
{
  v2 = sub_1000022C0(&qword_100018128, &qword_10000D418);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000022C0(&qword_100018130, &qword_10000D420);
    v8 = sub_10000CBD0();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100003114(v9, v6);
      result = sub_100002E90();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      v15 = sub_10000C550();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v6, v15);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_1000030AC(uint64_t a1)
{
  v2 = sub_1000022C0(&qword_100018128, &qword_10000D418);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003114(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000022C0(&qword_100018128, &qword_10000D418);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003184(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_1000031BC(uint64_t a1, uint64_t *a2)
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

uint64_t CancelPrintJob.init(jobContextIdentifier:)(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v42 = a2;
  v2 = sub_10000C560();
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  __chkstk_darwin(v2);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000022C0(&qword_100018068, &qword_10000CF70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v37 = &v32 - v7;
  v8 = sub_1000022C0(&qword_100018070, &qword_10000CF78);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v36 = &v32 - v10;
  v11 = sub_1000022C0(&qword_100018078, &qword_10000CF80);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v35 = &v32 - v13;
  v14 = sub_10000C5C0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10000C640();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_10000CB60();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v33 = sub_10000C5D0();
  v23 = *(v33 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v33);
  v34 = sub_1000022C0(&qword_100018080, &qword_10000CF88);
  sub_10000CB50();
  sub_10000C630();
  v25 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v26 = *(v15 + 104);
  v26(v18, enum case for LocalizedStringResource.BundleDescription.main(_:), v14);
  sub_10000C5E0();
  sub_10000CB50();
  sub_10000C630();
  v26(v18, v25, v14);
  v27 = v35;
  sub_10000C5E0();
  (*(v23 + 56))(v27, 0, 1, v33);
  v28 = sub_10000CB40();
  v43 = 0;
  v44 = 0;
  (*(*(v28 - 8) + 56))(v36, 1, 1, v28);
  v29 = sub_10000C4D0();
  (*(*(v29 - 8) + 56))(v37, 1, 1, v29);
  (*(v39 + 104))(v38, enum case for InputConnectionBehavior.default(_:), v40);
  v30 = sub_10000C530();
  v43 = v41;
  v44 = v42;

  sub_10000C510();

  return v30;
}

uint64_t sub_100003860(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  v6 = a2(0);
  sub_1000031BC(v6, a3);
  sub_100003184(v6, a3);
  return a4(0xD000000000000010, 0x800000010000DF70);
}

uint64_t sub_10000390C(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return sub_100003184(v4, a3);
}

uint64_t sub_1000039A4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
  v8 = sub_100003184(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t CancelPrintJob.perform()(uint64_t a1)
{
  *(v1 + 16) = a1;
  sub_10000CBC0();
  *(v1 + 24) = sub_10000CBB0();
  v3 = sub_10000CBA0();

  return _swift_task_switch(sub_100003AE0, v3, v2);
}

uint64_t sub_100003AE0()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_10000C4E0();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100003B4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100018040 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C5D0();
  v3 = sub_100003184(v2, static CancelPrintJob.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100003BF8@<X0>(uint64_t *a1@<X8>)
{
  result = _s30PrintCenterWidgetExtension_iOS06CancelA3JobVACycfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_100003C20(uint64_t a1)
{
  v2 = sub_1000042C8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t _s30PrintCenterWidgetExtension_iOS06CancelA3JobVACycfC_0()
{
  v0 = sub_10000C560();
  v37 = *(v0 - 8);
  v38 = v0;
  v1 = *(v37 + 64);
  __chkstk_darwin(v0);
  v36 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000022C0(&qword_100018068, &qword_10000CF70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v35 = &v30 - v5;
  v6 = sub_1000022C0(&qword_100018070, &qword_10000CF78);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v34 = &v30 - v8;
  v9 = sub_1000022C0(&qword_100018078, &qword_10000CF80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v33 = &v30 - v11;
  v12 = sub_10000C5C0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C640();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_10000CB60();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v31 = sub_10000C5D0();
  v21 = *(v31 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v31);
  v32 = sub_1000022C0(&qword_100018080, &qword_10000CF88);
  sub_10000CB50();
  sub_10000C630();
  v23 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v24 = *(v13 + 104);
  v24(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  sub_10000C5E0();
  sub_10000CB50();
  sub_10000C630();
  v24(v16, v23, v12);
  v25 = v33;
  sub_10000C5E0();
  (*(v21 + 56))(v25, 0, 1, v31);
  v26 = sub_10000CB40();
  v39 = 0;
  v40 = 0;
  (*(*(v26 - 8) + 56))(v34, 1, 1, v26);
  v27 = sub_10000C4D0();
  (*(*(v27 - 8) + 56))(v35, 1, 1, v27);
  (*(v37 + 104))(v36, enum case for InputConnectionBehavior.default(_:), v38);
  v28 = sub_10000C530();
  v39 = 0;
  v40 = 0;

  sub_10000C510();

  return v28;
}

unint64_t sub_1000041B0()
{
  result = qword_100018140;
  if (!qword_100018140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018140);
  }

  return result;
}

unint64_t sub_100004208()
{
  result = qword_100018148;
  if (!qword_100018148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018148);
  }

  return result;
}

unint64_t sub_1000042C8()
{
  result = qword_100018150;
  if (!qword_100018150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018150);
  }

  return result;
}

unint64_t sub_100004330()
{
  result = qword_100018158;
  if (!qword_100018158)
  {
    sub_100002A18(&qword_100018160, "T\r");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018158);
  }

  return result;
}

uint64_t sub_1000043C0@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_10000C5D0();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  __chkstk_darwin(v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000022C0(&qword_100018178, &qword_10000D5E0);
  v6 = *(v5 - 8);
  v31 = v5;
  v32 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v10 = sub_1000022C0(&qword_100018180, &qword_10000D5E8);
  v11 = *(v10 - 8);
  v33 = v10;
  v34 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v15 = sub_1000022C0(&qword_100018188, &qword_10000D5F0);
  v16 = *(v15 - 8);
  v35 = v15;
  v36 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v30 - v18;

  sub_1000022C0(&qword_100018190, &qword_10000D5F8);
  v20 = sub_100002A18(&qword_100018198, &qword_10000D600);
  v21 = sub_100004B24(&qword_1000181A0, &qword_100018198, &qword_10000D600);
  v40 = v20;
  v41 = v21;
  swift_getOpaqueTypeConformance2();
  sub_10000CAA0();
  sub_10000C5B0();
  v22 = sub_100004B24(&qword_1000181A8, &qword_100018178, &qword_10000D5E0);
  v23 = v31;
  sub_10000C7E0();
  v24 = v38;
  v25 = *(v37 + 8);
  v25(v4, v38);
  (*(v32 + 8))(v9, v23);
  sub_10000C5B0();
  v40 = v23;
  v41 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v33;
  sub_10000C7D0();
  v25(v4, v24);
  (*(v34 + 8))(v14, v27);
  v40 = v27;
  v41 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v28 = v35;
  sub_10000C7F0();
  return (*(v36 + 8))(v19, v28);
}

uint64_t sub_10000484C()
{
  v0 = sub_1000022C0(&qword_100018198, &qword_10000D600);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v6 - v3;
  v6[1] = sub_100002B60();
  sub_1000022C0(&qword_1000181B0, &qword_10000D608);
  sub_100004B24(&qword_1000181B8, &qword_1000181B0, &qword_10000D608);
  sub_1000024E8();
  sub_10000CA50();
  sub_10000C960();
  sub_100004B24(&qword_1000181A0, &qword_100018198, &qword_10000D600);
  sub_10000C7B0();

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_100004A68@<X0>(uint64_t a1@<X8>)
{
  sub_10000C740();
  result = sub_10000C8F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100004AE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000C9C0();
  *a1 = result;
  return result;
}

uint64_t sub_100004B24(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002A18(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004B6C()
{
  sub_100002A18(&qword_100018188, &qword_10000D5F0);
  sub_100002A18(&qword_100018180, &qword_10000D5E8);
  sub_100002A18(&qword_100018178, &qword_10000D5E0);
  sub_100004B24(&qword_1000181A8, &qword_100018178, &qword_10000D5E0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_100004C84(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100004C98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100004CE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100004D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v3 = sub_1000022C0(&qword_1000182A8, &qword_10000D928);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v39 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v34 - v7;
  v9 = sub_1000022C0(&qword_100018280, &qword_10000D780);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v34 - v11;
  v13 = sub_10000C9D0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C9C0();
  (*(v14 + 104))(v17, enum case for Image.ResizingMode.stretch(_:), v13);
  sub_10000CA00();

  (*(v14 + 8))(v17, v13);
  v18 = enum case for Image.TemplateRenderingMode.template(_:);
  v19 = sub_10000C9F0();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v12, v18, v19);
  (*(v20 + 56))(v12, 0, 1, v19);
  v38 = sub_10000C9E0();

  sub_1000099C8(v12, &qword_100018280, &qword_10000D780);
  sub_10000CA40();
  sub_10000C680();
  LOBYTE(v53[0]) = 1;
  *&v41[3] = *&v41[27];
  *&v41[11] = *&v41[35];
  *&v41[19] = *&v41[43];
  sub_10000CA40();
  sub_10000C680();
  v36 = v44;
  v37 = v42;
  v34 = v47;
  v35 = v46;
  v50 = 0;
  v49 = v43;
  v48 = v45;
  v21 = v8;
  *v8 = sub_10000C750();
  *(v8 + 1) = 0x3FE0000000000000;
  v8[16] = 0;
  v22 = sub_1000022C0(&qword_1000182B0, &qword_10000D930);
  sub_100005250(v40, &v8[*(v22 + 44)]);
  LOBYTE(v20) = v50;
  LOBYTE(v13) = v49;
  LOBYTE(v18) = v48;
  v23 = v39;
  sub_100009960(v8, v39, &qword_1000182A8, &qword_10000D928);
  v24 = v38;
  v51[0] = v38;
  v51[1] = 0;
  *v52 = 1;
  *&v52[2] = *v41;
  *&v52[18] = *&v41[8];
  *&v52[34] = *&v41[16];
  v25 = *&v41[23];
  *&v52[48] = *&v41[23];
  v26 = v38;
  v27 = *v52;
  v28 = *&v52[32];
  *(a2 + 32) = *&v52[16];
  *(a2 + 48) = v28;
  *a2 = v26;
  *(a2 + 16) = v27;
  *(a2 + 64) = v25;
  *(a2 + 72) = 0x4028000000000000;
  *(a2 + 80) = v20;
  v29 = v36;
  *(a2 + 88) = v37;
  *(a2 + 96) = v13;
  *(a2 + 104) = v29;
  *(a2 + 112) = v18;
  v30 = v34;
  *(a2 + 120) = v35;
  *(a2 + 128) = v30;
  v31 = sub_1000022C0(&qword_1000182B8, &qword_10000D938);
  sub_100009960(v23, a2 + *(v31 + 64), &qword_1000182A8, &qword_10000D928);
  v32 = a2 + *(v31 + 80);
  *v32 = 0;
  *(v32 + 8) = 1;
  sub_100009960(v51, v53, &qword_1000182C0, &qword_10000D940);
  sub_1000099C8(v21, &qword_1000182A8, &qword_10000D928);
  sub_1000099C8(v23, &qword_1000182A8, &qword_10000D928);
  v53[0] = v24;
  v53[1] = 0;
  v54 = 1;
  v55 = *v41;
  v56 = *&v41[8];
  *v57 = *&v41[16];
  *&v57[14] = *&v41[23];
  return sub_1000099C8(v53, &qword_1000182C0, &qword_10000D940);
}

uint64_t sub_100005250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000022C0(&qword_1000182C8, &qword_10000D948);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_1000022C0(&qword_1000182D0, &qword_10000D950);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  *v17 = sub_10000C750();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = sub_1000022C0(&qword_1000182D8, &qword_10000D958);
  sub_100005498(a1, &v17[*(v18 + 44)]);
  *v10 = sub_10000C730();
  *(v10 + 1) = 0x4010000000000000;
  v10[16] = 0;
  v19 = sub_1000022C0(&qword_1000182E0, &qword_10000D960);
  sub_100005EAC(a1, &v10[*(v19 + 44)]);
  sub_100009960(v17, v15, &qword_1000182D0, &qword_10000D950);
  sub_100009960(v10, v8, &qword_1000182C8, &qword_10000D948);
  sub_100009960(v15, a2, &qword_1000182D0, &qword_10000D950);
  v20 = sub_1000022C0(&qword_1000182E8, &qword_10000D968);
  sub_100009960(v8, a2 + *(v20 + 48), &qword_1000182C8, &qword_10000D948);
  sub_1000099C8(v10, &qword_1000182C8, &qword_10000D948);
  sub_1000099C8(v17, &qword_1000182D0, &qword_10000D950);
  sub_1000099C8(v8, &qword_1000182C8, &qword_10000D948);
  return sub_1000099C8(v15, &qword_1000182D0, &qword_10000D950);
}

uint64_t sub_100005498@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v116 = a2;
  v113 = sub_1000022C0(&qword_1000182F8, &qword_10000D978);
  v3 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v112 = &v94 - v4;
  v5 = sub_1000022C0(&qword_100018300, &qword_10000D980);
  v114 = *(v5 - 8);
  v115 = v5;
  v6 = *(v114 + 64);
  v7 = __chkstk_darwin(v5);
  v119 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v118 = &v94 - v9;
  v10 = sub_1000022C0(&qword_1000182F0, &qword_10000D970);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v94 - v12;
  v117 = sub_1000022C0(&qword_100018338, &qword_10000D9B8);
  v14 = *(*(v117 - 8) + 64);
  v15 = __chkstk_darwin(v117);
  v108 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v94 - v17;
  v19 = sub_1000022C0(&qword_1000183F0, &qword_10000DAA0);
  v110 = *(v19 - 8);
  v111 = v19;
  v20 = *(v110 + 64);
  v21 = __chkstk_darwin(v19);
  v109 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v120 = &v94 - v23;
  v24 = *(a1 + 88);
  v156 = *(a1 + 72);
  v157 = v24;
  v25 = *(a1 + 120);
  v158 = *(a1 + 104);
  v159 = v25;
  v26 = *(a1 + 24);
  v152 = *(a1 + 8);
  v153 = v26;
  v27 = *(a1 + 56);
  v154 = *(a1 + 40);
  v155 = v27;
  v28 = *(a1 + 88);
  v148 = *(a1 + 72);
  v149 = v28;
  v29 = *(a1 + 120);
  v150 = *(a1 + 104);
  v151 = v29;
  v30 = *(a1 + 24);
  v144 = *(a1 + 8);
  v145 = v30;
  v31 = *(a1 + 56);
  v146 = *(a1 + 40);
  v147 = v31;
  v97 = sub_1000022C0(&qword_100018328, &qword_10000D9A8);
  sub_10000CA30();
  v32 = v160[3];
  v33 = v160[4];

  sub_100008C34(v160);
  *&v144 = v32;
  *(&v144 + 1) = v33;
  v106 = sub_1000094F0();
  v34 = sub_10000C900();
  v36 = v35;
  v38 = v37;
  sub_10000C860();
  v39 = sub_10000C830();
  v40 = *(v39 - 8);
  v104 = *(v40 + 56);
  v105 = v39;
  v103 = v40 + 56;
  v104(v13, 1, 1);
  sub_10000C870();
  v107 = v13;
  sub_1000099C8(v13, &qword_1000182F0, &qword_10000D970);
  v41 = sub_10000C8E0();
  v95 = v42;
  v96 = v43;
  LOBYTE(v13) = v44;

  sub_100009544(v34, v36, v38 & 1);

  KeyPath = swift_getKeyPath();
  v46 = &v18[*(v117 + 36)];
  v102 = sub_1000022C0(&qword_100018340, &qword_10000D9C0);
  v47 = *(v102 + 28);
  v48 = enum case for Text.TruncationMode.tail(_:);
  v49 = sub_10000C8B0();
  v50 = *(v49 - 8);
  v51 = *(v50 + 104);
  v101 = v48;
  v99 = v51;
  v100 = v49;
  v98 = v50 + 104;
  (v51)(v46 + v47, v48);
  *v46 = swift_getKeyPath();
  *v18 = v41;
  *(v18 + 1) = v95;
  v18[16] = v13 & 1;
  *(v18 + 3) = v96;
  *(v18 + 4) = KeyPath;
  *(v18 + 5) = 1;
  v18[48] = 0;
  sub_100009B60();
  sub_10000C950();
  sub_1000099C8(v18, &qword_100018338, &qword_10000D9B8);
  v148 = v156;
  v149 = v157;
  v150 = v158;
  v151 = v159;
  v144 = v152;
  v145 = v153;
  v146 = v154;
  v147 = v155;
  sub_10000CA30();
  v53 = v162;
  v52 = v163;

  sub_100008C34(v161);

  v54 = HIBYTE(v52) & 0xF;
  if ((v52 & 0x2000000000000000) == 0)
  {
    v54 = v53 & 0xFFFFFFFFFFFFLL;
  }

  if (v54)
  {
    v148 = v156;
    v149 = v157;
    v150 = v158;
    v151 = v159;
    v144 = v152;
    v145 = v153;
    v146 = v154;
    v147 = v155;
    sub_10000CA30();
    v55 = *(&v141 + 1);
    v56 = v142;

    sub_100008C34(&v136);
    if (v56)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v148 = v156;
    v149 = v157;
    v150 = v158;
    v151 = v159;
    v144 = v152;
    v145 = v153;
    v146 = v154;
    v147 = v155;
    sub_10000CA30();
    v133 = v141;
    v134 = v142;
    v129[0] = v136;
    v129[1] = v137;
    v130 = v138;
    v135 = v143;
    v131 = v139;
    v132 = v140;
    sub_100008C34(v129);
    v57 = *(&v130 + 1);
    v148 = v156;
    v149 = v157;
    v150 = v158;
    v151 = v159;
    v144 = v152;
    v145 = v153;
    v146 = v154;
    v147 = v155;
    sub_10000CA30();
    v140 = v125;
    v141 = v126;
    v142 = v127;
    v143 = v128;
    v136 = v121;
    v137 = v122;
    v138 = v123;
    v139 = v124;
    sub_100008C34(&v136);
    v55 = sub_1000092E8(v57, v140, &qword_100018050, &qword_100018568, &qword_100018570);
    v56 = v58;
    if (v58)
    {
      goto LABEL_10;
    }
  }

  if (qword_100018060 != -1)
  {
    swift_once();
  }

  v55 = qword_100018588;
  v56 = *algn_100018590;

LABEL_10:
  *&v144 = v55;
  *(&v144 + 1) = v56;
  v59 = sub_10000C900();
  v61 = v60;
  v63 = v62;
  sub_10000C850();
  v64 = v107;
  (v104)(v107, 1, 1, v105);
  sub_10000C870();
  sub_1000099C8(v64, &qword_1000182F0, &qword_10000D970);
  v65 = sub_10000C8E0();
  v67 = v66;
  v69 = v68;
  v71 = v70;

  sub_100009544(v59, v61, v63 & 1);

  v72 = swift_getKeyPath();
  v73 = v108;
  v74 = &v108[*(v117 + 36)];
  v99(v74 + *(v102 + 28), v101, v100);
  *v74 = swift_getKeyPath();
  *v73 = v65;
  *(v73 + 1) = v67;
  v73[16] = v69 & 1;
  *(v73 + 3) = v71;
  *(v73 + 4) = v72;
  *(v73 + 5) = 1;
  v73[48] = 0;
  v75 = sub_10000C9A0();
  v76 = swift_getKeyPath();
  v77 = v73;
  v78 = v112;
  sub_100009EEC(v77, v112);
  v79 = (v78 + *(v113 + 36));
  *v79 = v76;
  v79[1] = v75;
  sub_100009AA8();
  v80 = v118;
  sub_10000C950();
  sub_1000099C8(v78, &qword_1000182F8, &qword_10000D978);
  v82 = v109;
  v81 = v110;
  v83 = *(v110 + 16);
  v84 = v111;
  v83(v109, v120, v111);
  v85 = v114;
  v117 = *(v114 + 16);
  v86 = v80;
  v87 = v115;
  (v117)(v119, v86, v115);
  v88 = v116;
  v83(v116, v82, v84);
  v89 = &v88[*(sub_1000022C0(&qword_1000183F8, &qword_10000DAA8) + 48)];
  v90 = v119;
  (v117)(v89, v119, v87);
  v91 = *(v85 + 8);
  v91(v118, v87);
  v92 = *(v81 + 8);
  v92(v120, v84);
  v91(v90, v87);
  return (v92)(v82, v84);
}

uint64_t sub_100005EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v3 = sub_1000022C0(&qword_1000182F0, &qword_10000D970);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v112 = &v108 - v5;
  v115 = sub_1000022C0(&qword_1000182F8, &qword_10000D978);
  v6 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v114 = &v108 - v7;
  v8 = sub_1000022C0(&qword_100018300, &qword_10000D980);
  v118 = *(v8 - 8);
  v119 = v8;
  v9 = *(v118 + 64);
  v10 = __chkstk_darwin(v8);
  v117 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v116 = &v108 - v12;
  v111 = sub_1000022C0(&qword_100018308, &qword_10000D988);
  v13 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v15 = &v108 - v14;
  v108 = sub_1000022C0(&qword_100018310, &qword_10000D990);
  v16 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v110 = &v108 - v17;
  v18 = sub_10000C9D0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v108 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_1000022C0(&qword_100018318, &qword_10000D998);
  v23 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v25 = &v108 - v24;
  v26 = sub_1000022C0(&qword_100018320, &qword_10000D9A0);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v113 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v121 = &v108 - v30;
  v31 = *(a1 + 88);
  v150 = *(a1 + 72);
  v151 = v31;
  v32 = *(a1 + 120);
  v152 = *(a1 + 104);
  v153 = v32;
  v33 = *(a1 + 24);
  v146 = *(a1 + 8);
  v147 = v33;
  v34 = *(a1 + 56);
  v148 = *(a1 + 40);
  v149 = v34;
  v35 = *(a1 + 88);
  v142 = *(a1 + 72);
  v143 = v35;
  v36 = *(a1 + 120);
  v144 = *(a1 + 104);
  v145 = v36;
  v37 = *(a1 + 24);
  v138 = *(a1 + 8);
  v139 = v37;
  v38 = *(a1 + 56);
  v140 = *(a1 + 40);
  v141 = v38;
  sub_1000022C0(&qword_100018328, &qword_10000D9A8);
  sub_10000CA30();
  v40 = v155;
  v39 = v156;

  sub_100008C34(v154);

  v41 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v41 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v41)
  {
    goto LABEL_6;
  }

  v42 = *(a1 + 88);
  v142 = *(a1 + 72);
  v143 = v42;
  v43 = *(a1 + 120);
  v144 = *(a1 + 104);
  v145 = v43;
  v44 = *(a1 + 24);
  v138 = *(a1 + 8);
  v139 = v44;
  v45 = *(a1 + 56);
  v140 = *(a1 + 40);
  v141 = v45;
  sub_10000CA30();
  v134 = v126;
  v135 = v127;
  v136 = v128;
  v137 = v129;
  v130 = v122;
  v131 = v123;
  v132 = v124;
  v133 = v125;
  sub_100008C34(&v130);
  if (v135 == 2)
  {
    sub_10000C9C0();
    (*(v19 + 104))(v22, enum case for Image.ResizingMode.stretch(_:), v18);
    v46 = sub_10000CA00();

    (*(v19 + 8))(v22, v18);
    v47 = &v25[*(sub_1000022C0(&qword_100018398, &qword_10000DA48) + 36)];
    v48 = *(sub_1000022C0(&qword_1000183A0, &qword_10000DA50) + 28);
    sub_10000C770();
    v49 = sub_10000C790();
    (*(*(v49 - 8) + 56))(v47 + v48, 0, 1, v49);
    *v47 = swift_getKeyPath();
    *v25 = v46;
    *(v25 + 1) = 0;
    *(v25 + 8) = 1;
    sub_10000CA40();
    sub_10000C680();
    v50 = v110;
    v51 = &v25[*(v109 + 36)];
    v52 = v123;
    *v51 = v122;
    *(v51 + 1) = v52;
    *(v51 + 2) = v124;
    v53 = &qword_100018318;
    v54 = &qword_10000D998;
    sub_100009960(v25, v50, &qword_100018318, &qword_10000D998);
    swift_storeEnumTagMultiPayload();
    sub_100009CF8(&qword_1000183B0, &qword_100018318, &qword_10000D998, sub_100009D7C);
    sub_100009CF8(&qword_1000183C8, &qword_100018308, &qword_10000D988, sub_100009E34);
    v55 = v121;
    sub_10000C7A0();
    v56 = v25;
  }

  else
  {
LABEL_6:
    v57 = *(a1 + 88);
    v142 = *(a1 + 72);
    v143 = v57;
    v58 = *(a1 + 120);
    v144 = *(a1 + 104);
    v145 = v58;
    v59 = *(a1 + 24);
    v138 = *(a1 + 8);
    v139 = v59;
    v60 = *(a1 + 56);
    v140 = *(a1 + 40);
    v141 = v60;
    sub_10000CA30();
    v134 = v126;
    v135 = v127;
    v136 = v128;
    v137 = v129;
    v130 = v122;
    v131 = v123;
    v132 = v124;
    v133 = v125;
    sub_100008C34(&v130);
    if (v135 != 1)
    {
      v72 = sub_1000022C0(&qword_100018330, &qword_10000D9B0);
      (*(*(v72 - 8) + 56))(v121, 1, 1, v72);
      goto LABEL_10;
    }

    sub_10000C9C0();
    (*(v19 + 104))(v22, enum case for Image.ResizingMode.stretch(_:), v18);
    v61 = sub_10000CA00();

    (*(v19 + 8))(v22, v18);
    v62 = &v15[*(sub_1000022C0(&qword_100018398, &qword_10000DA48) + 36)];
    v63 = *(sub_1000022C0(&qword_1000183A0, &qword_10000DA50) + 28);
    sub_10000C780();
    v64 = sub_10000C790();
    (*(*(v64 - 8) + 56))(v62 + v63, 0, 1, v64);
    *v62 = swift_getKeyPath();
    *v15 = v61;
    *(v15 + 1) = 0;
    *(v15 + 8) = 1;
    v65 = sub_10000C970();
    v66 = sub_10000C980();
    v67 = &v15[*(sub_1000022C0(&qword_1000183A8, &qword_10000DA88) + 36)];
    *v67 = v65;
    v67[1] = v66;
    sub_10000CA40();
    sub_10000C680();
    v68 = v110;
    v69 = &v15[*(v111 + 36)];
    v70 = v123;
    *v69 = v122;
    *(v69 + 1) = v70;
    *(v69 + 2) = v124;
    v53 = &qword_100018308;
    v54 = &qword_10000D988;
    sub_100009960(v15, v68, &qword_100018308, &qword_10000D988);
    swift_storeEnumTagMultiPayload();
    sub_100009CF8(&qword_1000183B0, &qword_100018318, &qword_10000D998, sub_100009D7C);
    sub_100009CF8(&qword_1000183C8, &qword_100018308, &qword_10000D988, sub_100009E34);
    v55 = v121;
    sub_10000C7A0();
    v56 = v15;
  }

  sub_1000099C8(v56, v53, v54);
  v71 = sub_1000022C0(&qword_100018330, &qword_10000D9B0);
  (*(*(v71 - 8) + 56))(v55, 0, 1, v71);
LABEL_10:
  v142 = v150;
  v143 = v151;
  v144 = v152;
  v145 = v153;
  v138 = v146;
  v139 = v147;
  v140 = v148;
  v141 = v149;
  sub_10000CA30();
  v73 = v133;

  sub_100008C34(&v130);
  v138 = v73;
  sub_1000094F0();
  v74 = sub_10000C900();
  v76 = v75;
  v78 = v77;
  sub_10000C850();
  v79 = sub_10000C830();
  v80 = v112;
  (*(*(v79 - 8) + 56))(v112, 1, 1, v79);
  sub_10000C870();
  sub_1000099C8(v80, &qword_1000182F0, &qword_10000D970);
  v81 = sub_10000C8E0();
  v83 = v82;
  v85 = v84;
  v112 = v86;

  sub_100009544(v74, v76, v78 & 1);

  KeyPath = swift_getKeyPath();
  v88 = sub_1000022C0(&qword_100018338, &qword_10000D9B8);
  v89 = v114;
  v90 = &v114[*(v88 + 36)];
  v91 = *(sub_1000022C0(&qword_100018340, &qword_10000D9C0) + 28);
  v92 = enum case for Text.TruncationMode.tail(_:);
  v93 = sub_10000C8B0();
  (*(*(v93 - 8) + 104))(v90 + v91, v92, v93);
  *v90 = swift_getKeyPath();
  *v89 = v81;
  *(v89 + 8) = v83;
  *(v89 + 16) = v85 & 1;
  *(v89 + 24) = v112;
  *(v89 + 32) = KeyPath;
  *(v89 + 40) = 1;
  *(v89 + 48) = 0;
  v94 = sub_10000C9A0();
  v95 = swift_getKeyPath();
  v96 = (v89 + *(v115 + 36));
  *v96 = v95;
  v96[1] = v94;
  sub_100009AA8();
  v97 = v116;
  sub_10000C950();
  sub_1000099C8(v89, &qword_1000182F8, &qword_10000D978);
  v98 = v121;
  v99 = v113;
  sub_100009960(v121, v113, &qword_100018320, &qword_10000D9A0);
  v101 = v117;
  v100 = v118;
  v102 = *(v118 + 16);
  v103 = v119;
  v102(v117, v97, v119);
  v104 = v120;
  sub_100009960(v99, v120, &qword_100018320, &qword_10000D9A0);
  v105 = sub_1000022C0(&qword_100018390, &qword_10000DA40);
  v102((v104 + *(v105 + 48)), v101, v103);
  v106 = *(v100 + 8);
  v106(v97, v103);
  sub_1000099C8(v98, &qword_100018320, &qword_10000D9A0);
  v106(v101, v103);
  return sub_1000099C8(v99, &qword_100018320, &qword_10000D9A0);
}

uint64_t sub_100006C64@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 112);
  v19[6] = *(v1 + 96);
  v19[7] = v3;
  v20 = *(v1 + 128);
  v4 = *(v1 + 48);
  v19[2] = *(v1 + 32);
  v19[3] = v4;
  v5 = *(v1 + 80);
  v19[4] = *(v1 + 64);
  v19[5] = v5;
  v6 = *(v1 + 16);
  v19[0] = *v1;
  v19[1] = v6;
  *a1 = sub_10000C730();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = sub_1000022C0(&qword_100018298, &qword_10000D918);
  sub_100004D4C(v19, a1 + *(v7 + 44));
  v8 = sub_10000C800();
  sub_10000C650();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  result = sub_1000022C0(&qword_1000182A0, &qword_10000D920);
  v18 = a1 + *(result + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  return result;
}

uint64_t sub_100006D40@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000C9D0();
  v34 = *(v4 - 8);
  v5 = *(v34 + 64);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C600();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[5];
  v39 = a1[4];
  v40 = v13;
  v14 = a1[7];
  v41 = a1[6];
  v42 = v14;
  v15 = a1[1];
  v35 = *a1;
  v36 = v15;
  v16 = a1[3];
  v37 = a1[2];
  v38 = v16;
  sub_1000022C0(&qword_100018328, &qword_10000D9A8);
  sub_10000CA30();
  sub_10000C5F0();
  v17 = sub_10000C610();
  v19 = v18;
  v33 = v4;
  v20 = objc_allocWithZone(UIImage);
  sub_100009F5C(v17, v19);
  isa = sub_10000C620().super.isa;
  v22 = [v20 initWithData:isa];

  sub_100009FB0(v17, v19);
  if (v22)
  {
    sub_10000C9B0();
    sub_100008C34(v43);
    sub_100009FB0(v17, v19);
    (*(v9 + 8))(v12, v8);
    v23 = v33;
  }

  else
  {
    (*(v9 + 8))(v12, v8);
    sub_100009FB0(v17, v19);
    v23 = v33;
    sub_10000C9C0();
    sub_100008C34(v43);
  }

  v24 = v34;
  (*(v34 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v23);
  v25 = sub_10000CA00();

  (*(v24 + 8))(v7, v23);
  v26 = sub_10000C810();
  result = sub_10000C650();
  LOBYTE(v35) = 0;
  *a2 = v25;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = v28;
  *(a2 + 40) = v29;
  *(a2 + 48) = v30;
  *(a2 + 56) = v31;
  *(a2 + 64) = 0;
  return result;
}

__n128 sub_10000711C@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v18[4] = v1[4];
  v18[5] = v3;
  v4 = v1[7];
  v18[6] = v1[6];
  v18[7] = v4;
  v5 = v1[1];
  v18[0] = *v1;
  v18[1] = v5;
  v6 = v1[3];
  v18[2] = v1[2];
  v18[3] = v6;
  v7 = sub_10000CA40();
  v9 = v8;
  sub_100006D40(v18, &v13);
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v19 = v13;
  v20 = v14;
  v24[2] = v15;
  v24[3] = v16;
  v25 = v17;
  v24[0] = v13;
  v24[1] = v14;
  sub_100009960(&v19, &v12, &qword_100018400, &qword_10000DAB0);
  sub_1000099C8(v24, &qword_100018400, &qword_10000DAB0);
  *a1 = v7;
  *(a1 + 8) = v9;
  v10 = v22;
  *(a1 + 48) = v21;
  *(a1 + 64) = v10;
  *(a1 + 80) = v23;
  result = v20;
  *(a1 + 16) = v19;
  *(a1 + 32) = result;
  return result;
}

double sub_100007208@<D0>(uint64_t a1@<X8>)
{
  sub_1000022C0(&qword_1000181D0, &qword_10000D6A8);
  sub_10000CA70();
  sub_10000CA80();
  sub_10000CA20();
  sub_10000CA20();
  *(a1 + 72) = v7;
  *(a1 + 88) = v8;
  *(a1 + 104) = v9;
  *(a1 + 120) = v10;
  *(a1 + 8) = v3;
  *(a1 + 24) = v4;
  result = *&v5;
  *(a1 + 40) = v5;
  *a1 = v3;
  *(a1 + 56) = v6;
  return result;
}

uint64_t sub_10000731C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a3;
  v26 = a4;
  v22 = a2;
  v24 = a1;
  v29 = a5;
  v7 = sub_1000022C0(&qword_1000181D0, &qword_10000D6A8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v22 - v12;
  v23 = *(v8 + 16);
  v23(&v22 - v12, a1, v7);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v28 = swift_allocObject();
  v15 = *(v8 + 32);
  v15(v28 + v14, v13, v7);
  v16 = swift_allocObject();
  v27 = v16;
  v16[2] = a2;
  v17 = v25;
  v18 = v26;
  v16[3] = v25;
  v16[4] = v18;
  v23(v11, v24, v7);
  v19 = swift_allocObject();
  v15(v19 + v14, v11, v7);
  v20 = swift_allocObject();
  v20[2] = v22;
  v20[3] = v17;
  v20[4] = v18;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_1000022C0(&qword_1000181D8, &qword_10000D6B0);
  sub_1000022C0(&qword_1000181E0, &qword_10000D6B8);
  sub_100004B24(&qword_1000181E8, &qword_1000181D8, &qword_10000D6B0);
  sub_100008BB0();
  return sub_10000CA60();
}

uint64_t sub_10000761C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = sub_1000022C0(&qword_100018210, &qword_10000D6C8);
  v24 = *(v26 - 8);
  v3 = *(v24 + 64);
  __chkstk_darwin(v26);
  v5 = &v19 - v4;
  v23 = sub_1000022C0(&qword_100018218, &qword_10000D6D0);
  v22 = *(v23 - 8);
  v6 = *(v22 + 64);
  __chkstk_darwin(v23);
  v8 = &v19 - v7;
  v9 = sub_10000CB10();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v21 = sub_1000022C0(&qword_100018220, &qword_10000D6D8);
  v20 = *(v21 - 8);
  v11 = *(v20 + 64);
  __chkstk_darwin(v21);
  v13 = &v19 - v12;
  sub_10000CAF0();
  v31 = a1;
  v14 = sub_1000022C0(&qword_100018228, &qword_10000D6E0);
  v15 = sub_100009CF8(&qword_100018230, &qword_100018228, &qword_10000D6E0, sub_1000095B0);
  sub_10000CAC0();
  sub_10000CB00();
  v30 = a1;
  sub_1000022C0(&qword_100018240, &qword_10000D6E8);
  v16 = sub_100002A18(&qword_100018248, &qword_10000D6F0);
  v17 = sub_100004B24(&qword_100018250, &qword_100018248, &qword_10000D6F0);
  v32 = v16;
  v33 = v17;
  swift_getOpaqueTypeConformance2();
  sub_10000CAC0();
  v29 = v13;
  sub_1000022C0(&qword_100018258, &qword_10000D6F8);
  v32 = v14;
  v33 = v15;
  swift_getOpaqueTypeConformance2();
  sub_10000CAD0();
  v27 = v5;
  v28 = v8;
  sub_1000022C0(&qword_1000181D8, &qword_10000D6B0);
  sub_100004B24(&qword_1000181E8, &qword_1000181D8, &qword_10000D6B0);
  sub_10000CAD0();
  (*(v24 + 8))(v5, v26);
  (*(v22 + 8))(v8, v23);
  return (*(v20 + 8))(v13, v21);
}

__n128 sub_100007ABC@<Q0>(_OWORD *a1@<X8>)
{
  sub_1000022C0(&qword_1000181D0, &qword_10000D6A8);
  sub_10000CA80();
  sub_10000CA20();
  sub_10000CA40();
  sub_10000C680();
  a1[8] = v3;
  a1[9] = v4;
  a1[10] = v5;
  a1[4] = v10;
  a1[5] = v11;
  a1[6] = v12;
  a1[7] = v13;
  *a1 = v6;
  a1[1] = v7;
  result = v9;
  a1[2] = v8;
  a1[3] = v9;
  return result;
}

uint64_t sub_100007BC4()
{
  v0 = sub_10000CB30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C730();
  v13 = 1;
  v6 = sub_10000C760();
  v12 = 1;
  sub_100007E58(&v23);
  v18 = v27;
  v19 = v28;
  v20 = v29;
  v14 = v23;
  v15 = v24;
  v16 = v25;
  v17 = v26;
  v21[0] = v23;
  v21[1] = v24;
  v21[2] = v25;
  v21[3] = v26;
  v21[4] = v27;
  v21[5] = v28;
  v22 = v29;
  sub_100009960(&v14, &v8, &qword_100018270, &qword_10000D710);
  sub_1000099C8(v21, &qword_100018270, &qword_10000D710);
  *&v11[55] = v17;
  *&v11[71] = v18;
  *&v11[87] = v19;
  *&v11[7] = v14;
  *&v11[23] = v15;
  v11[103] = v20;
  *&v11[39] = v16;
  v8 = v5;
  LOBYTE(v9) = v13;
  *(&v9 + 1) = v6;
  *v10 = 0;
  v10[8] = v12;
  *&v10[57] = *&v11[48];
  *&v10[73] = *&v11[64];
  *&v10[89] = *&v11[80];
  *&v10[105] = *&v11[96];
  *&v10[9] = *v11;
  *&v10[25] = *&v11[16];
  *&v10[41] = *&v11[32];
  sub_10000CB20();
  sub_1000022C0(&qword_100018248, &qword_10000D6F0);
  sub_100004B24(&qword_100018250, &qword_100018248, &qword_10000D6F0);
  sub_10000C910();
  (*(v1 + 8))(v4, v0);
  v29 = *&v10[64];
  v30 = *&v10[80];
  v31 = *&v10[96];
  v32 = v10[112];
  v25 = *v10;
  v26 = *&v10[16];
  v27 = *&v10[32];
  v28 = *&v10[48];
  v23 = v8;
  v24 = v9;
  return sub_1000099C8(&v23, &qword_100018248, &qword_10000D6F0);
}

uint64_t sub_100007E58@<X0>(uint64_t a1@<X8>)
{
  sub_1000022C0(&qword_1000181D0, &qword_10000D6A8);
  sub_10000CA80();
  v80 = v73;
  v81 = v74;
  v82 = v75;
  v83 = v76;
  v77[0] = v69;
  v77[1] = v70;
  v78 = v71;
  v79 = v72;
  sub_100008C34(v77);
  v1 = *(&v78 + 1);
  sub_10000CA80();
  v85 = v65;
  v86 = v66;
  v87 = v67;
  v88 = v68;
  v84[0] = v61;
  v84[1] = v62;
  v84[2] = v63;
  v84[3] = v64;
  sub_100008C34(v84);
  sub_1000092E8(v1, v85, &qword_100018050, &qword_100018568, &qword_100018570);
  if (!v2)
  {
    if (qword_100018060 != -1)
    {
      swift_once();
    }
  }

  sub_1000094F0();
  v3 = sub_10000C900();
  v5 = v4;
  v7 = v6;
  sub_10000C890();
  v8 = sub_10000C8E0();
  v10 = v9;
  v12 = v11;

  sub_100009544(v3, v5, v7 & 1);

  sub_10000C840();
  v13 = sub_10000C8A0();
  v15 = v14;
  LOBYTE(v3) = v16;
  sub_100009544(v8, v10, v12 & 1);

  sub_10000C9A0();
  v17 = sub_10000C8C0();
  v50 = v18;
  v51 = v17;
  v48 = v19;
  v49 = v20;

  sub_100009544(v13, v15, v3 & 1);

  sub_10000CA80();
  v73 = v65;
  v74 = v66;
  v75 = v67;
  v76 = v68;
  v69 = v61;
  v70 = v62;
  v71 = v63;
  v72 = v64;

  sub_100008C34(&v69);
  v21 = sub_10000C900();
  v23 = v22;
  LOBYTE(v5) = v24;
  sub_10000C820();
  v25 = sub_10000C8E0();
  v27 = v26;
  LOBYTE(v13) = v28;

  sub_100009544(v21, v23, v5 & 1);

  sub_10000C840();
  v29 = sub_10000C8A0();
  v31 = v30;
  LOBYTE(v5) = v32;
  sub_100009544(v25, v27, v13 & 1);

  sub_10000C990();
  v33 = sub_10000C8C0();
  v35 = v34;
  v37 = v36;
  v39 = v38;

  sub_100009544(v29, v31, v5 & 1);

  KeyPath = swift_getKeyPath();
  v41 = swift_getKeyPath();
  v53[72] = v48 & 1;
  *&v56 = v33;
  *(&v56 + 1) = v35;
  LOBYTE(v57) = v37 & 1;
  v42 = v55[0];
  *(&v57 + 1) = v55[0];
  DWORD1(v57) = *(v55 + 3);
  *(&v57 + 1) = v39;
  *&v58 = KeyPath;
  *(&v58 + 1) = 1;
  LOBYTE(v59) = 0;
  DWORD1(v59) = *&v54[3];
  v43 = *v54;
  *(&v59 + 1) = *v54;
  *(&v59 + 1) = v41;
  *(a1 + 16) = v48 & 1;
  *a1 = v51;
  *(a1 + 8) = v50;
  *(a1 + 24) = v49;
  v44 = v58;
  v45 = v59;
  *(a1 + 96) = 2;
  *(a1 + 64) = v44;
  *(a1 + 80) = v45;
  v46 = v57;
  *(a1 + 32) = v56;
  *(a1 + 48) = v46;
  v60 = 2;
  *&v61 = v33;
  *(&v61 + 1) = v35;
  LOBYTE(v62) = v37 & 1;
  DWORD1(v62) = *(v55 + 3);
  *(&v62 + 1) = v42;
  *(&v62 + 1) = v39;
  *&v63 = KeyPath;
  *(&v63 + 1) = 1;
  LOBYTE(v64) = 0;
  DWORD1(v64) = *&v54[3];
  *(&v64 + 1) = v43;
  *(&v64 + 1) = v41;
  LOBYTE(v65) = 2;
  sub_10000970C(v51, v50, v48 & 1);

  sub_100009960(&v56, v53, &qword_100018278, &qword_10000D778);
  sub_1000099C8(&v61, &qword_100018278, &qword_10000D778);
  sub_100009544(v51, v50, v48 & 1);
}

uint64_t sub_1000083C0@<X0>(uint64_t a1@<X8>)
{
  sub_1000022C0(&qword_1000181D0, &qword_10000D6A8);
  sub_10000CA80();
  v41 = v34;
  v42 = v35;
  v43 = v36;
  v44 = v37;
  v38[0] = v30;
  v38[1] = v31;
  v39 = v32;
  v40 = v33;
  sub_100008C34(v38);
  v2 = *(&v39 + 1);
  sub_10000CA80();
  v46 = v26;
  v47 = v27;
  v48 = v28;
  v49 = v29;
  v45[0] = v22;
  v45[1] = v23;
  v45[2] = v24;
  v45[3] = v25;
  sub_100008C34(v45);
  sub_1000092E8(v2, v46, &qword_100018058, &qword_100018578, &qword_100018580);
  if (!v3)
  {
    if (qword_100018060 != -1)
    {
      swift_once();
    }
  }

  sub_1000094F0();
  v4 = sub_10000C900();
  v6 = v5;
  v8 = v7;
  v9 = sub_10000C8D0();
  v11 = v10;
  v13 = v12;
  sub_100009544(v4, v6, v8 & 1);

  sub_10000C880();
  v14 = sub_10000C8E0();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_100009544(v9, v11, v13 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  return result;
}

uint64_t sub_1000085D8@<X0>(void *a1@<X8>)
{
  v2 = sub_1000022C0(&qword_100018280, &qword_10000D780);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  v6 = sub_10000C9D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C9C0();
  (*(v7 + 104))(v10, enum case for Image.ResizingMode.stretch(_:), v6);
  sub_10000CA00();

  (*(v7 + 8))(v10, v6);
  v11 = enum case for Image.TemplateRenderingMode.template(_:);
  v12 = sub_10000C9F0();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v5, v11, v12);
  (*(v13 + 56))(v5, 0, 1, v12);
  v14 = sub_10000C9E0();

  result = sub_1000099C8(v5, &qword_100018280, &qword_10000D780);
  *a1 = 0xD000000000000011;
  a1[1] = 0x800000010000D630;
  a1[2] = v14;
  return result;
}

uint64_t sub_10000883C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  sub_100008920();
  sub_100008974();

  return sub_10000CA90();
}

unint64_t sub_100008920()
{
  result = qword_1000181C0;
  if (!qword_1000181C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000181C0);
  }

  return result;
}

unint64_t sub_100008974()
{
  result = qword_1000181C8;
  if (!qword_1000181C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000181C8);
  }

  return result;
}

uint64_t sub_1000089CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_1000022C0(&qword_1000181D0, &qword_10000D6A8) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_10000761C(v4, a1);
}

uint64_t sub_100008A4C()
{
  v1 = sub_1000022C0(&qword_1000181D0, &qword_10000D6A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100008AE0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(sub_1000022C0(&qword_1000181D0, &qword_10000D6A8) - 8) + 80);

  return sub_1000083C0(a1);
}

uint64_t sub_100008B5C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008B9C@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 32);
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

unint64_t sub_100008BB0()
{
  result = qword_1000181F0;
  if (!qword_1000181F0)
  {
    sub_100002A18(&qword_1000181E0, &qword_10000D6B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000181F0);
  }

  return result;
}

void sub_100008C88()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010000DFF0;
  v6._object = 0x800000010000E030;
  v6._countAndFlagsBits = 0xD000000000000015;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_10000C5A0(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100018568 = v2;
  unk_100018570 = v4;
}

void sub_100008D40()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010000DFF0;
  v6._countAndFlagsBits = 0x20666F2040243125;
  v6._object = 0xEC00000040243225;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_10000C5A0(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100018578 = v2;
  unk_100018580 = v4;
}

void sub_100008DF8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._countAndFlagsBits = 0x800000010000DFC0;
  v6._countAndFlagsBits = 0x676E69746E697250;
  v6._object = 0xE800000000000000;
  v7.value._countAndFlagsBits = 0;
  v7.value._object = 0;
  v1.super.isa = v0;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v2 = sub_10000C5A0(v6, v7, v1, v8, v5);
  v4 = v3;

  qword_100018588 = v2;
  *algn_100018590 = v4;
}

uint64_t sub_100008EA8@<X0>(char *a1@<X8>)
{
  v29 = a1;
  v1 = sub_1000022C0(&qword_100018260, &qword_10000D700);
  v27 = *(v1 - 8);
  v2 = v27;
  v3 = *(v27 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_1000022C0(&qword_100018258, &qword_10000D6F8);
  v28 = *(v9 - 8);
  v10 = v28;
  v11 = *(v28 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  sub_1000022C0(&qword_100018210, &qword_10000D6C8);
  sub_10000CAE0();
  sub_1000022C0(&qword_100018218, &qword_10000D6D0);
  v26 = v8;
  sub_10000CAB0();
  v17 = *(v10 + 16);
  v17(v14, v16, v9);
  v18 = *(v2 + 16);
  v19 = v8;
  v20 = v1;
  v18(v6, v19, v1);
  v21 = v29;
  v17(v29, v14, v9);
  v22 = &v21[*(sub_1000022C0(&qword_100018268, &qword_10000D708) + 48)];
  v18(v22, v6, v20);
  v23 = *(v27 + 8);
  v23(v26, v20);
  v24 = *(v28 + 8);
  v24(v16, v9);
  v23(v6, v20);
  return (v24)(v14, v9);
}

uint64_t sub_100009178(uint64_t a1)
{
  v2 = sub_10000C8B0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10000C6A0();
}

uint64_t sub_100009240(uint64_t a1)
{
  v2 = sub_1000022C0(&qword_1000183E8, &qword_10000DA98);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100009960(a1, &v6 - v4, &qword_1000183E8, &qword_10000DA98);
  return sub_10000C6E0();
}

uint64_t sub_1000092E8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (a1 && a2)
  {
    if (*a3 != -1)
    {
      v22 = a5;
      v23 = a4;
      swift_once();
      a4 = v23;
      a5 = v22;
    }

    v24 = *a5;
    v25 = *a4;
    sub_1000022C0(&qword_100018200, &qword_10000D6C0);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_10000D610;
    v8 = objc_opt_self();
    v9 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
    v10 = [v8 localizedStringFromNumber:v9 numberStyle:0];

    v11 = sub_10000CB80();
    v13 = v12;

    *(v7 + 56) = &type metadata for String;
    v14 = sub_100009554();
    *(v7 + 64) = v14;
    *(v7 + 32) = v11;
    *(v7 + 40) = v13;
    v15 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
    v16 = [v8 localizedStringFromNumber:v15 numberStyle:0];

    v17 = sub_10000CB80();
    v19 = v18;

    *(v7 + 96) = &type metadata for String;
    *(v7 + 104) = v14;
    *(v7 + 72) = v17;
    *(v7 + 80) = v19;
    v20 = sub_10000CB70();
  }

  else
  {
    if (qword_100018060 != -1)
    {
      swift_once();
    }

    v20 = qword_100018588;
  }

  return v20;
}

unint64_t sub_1000094F0()
{
  result = qword_1000181F8;
  if (!qword_1000181F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000181F8);
  }

  return result;
}

uint64_t sub_100009544(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100009554()
{
  result = qword_100018208;
  if (!qword_100018208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018208);
  }

  return result;
}

double sub_1000095A8@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 16);
  *&result = sub_100007ABC(a1).n128_u64[0];
  return result;
}

unint64_t sub_1000095B0()
{
  result = qword_100018238;
  if (!qword_100018238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018238);
  }

  return result;
}

uint64_t sub_10000960C()
{
  v1 = *(v0 + 16);
  sub_1000022C0(&qword_100018220, &qword_10000D6D8);
  return sub_10000CAB0();
}

uint64_t sub_10000964C@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_100008EA8(a1);
}

uint64_t sub_100009654@<X0>(uint64_t a1@<X8>)
{
  result = sub_10000C710();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100009688(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10000C720();
}

uint64_t sub_1000096B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000C6F0();
  *a1 = result;
  return result;
}

uint64_t sub_10000970C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 sub_10000971C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_100009740(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_100009788(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000097F8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10000982C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100009874(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100009960(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000022C0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000099C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000022C0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100009A50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000C6B0();
  *a1 = result;
  return result;
}

uint64_t sub_100009A7C(uint64_t *a1)
{
  v1 = *a1;

  return sub_10000C6C0();
}

unint64_t sub_100009AA8()
{
  result = qword_100018348;
  if (!qword_100018348)
  {
    sub_100002A18(&qword_1000182F8, &qword_10000D978);
    sub_100009B60();
    sub_100004B24(&qword_100018380, &qword_100018388, &qword_10000DA38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018348);
  }

  return result;
}

unint64_t sub_100009B60()
{
  result = qword_100018350;
  if (!qword_100018350)
  {
    sub_100002A18(&qword_100018338, &qword_10000D9B8);
    sub_100009C18();
    sub_100004B24(&qword_100018378, &qword_100018340, &qword_10000D9C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018350);
  }

  return result;
}

unint64_t sub_100009C18()
{
  result = qword_100018358;
  if (!qword_100018358)
  {
    sub_100002A18(&qword_100018360, &qword_10000DA28);
    sub_100004B24(&qword_100018368, &qword_100018370, &qword_10000DA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018358);
  }

  return result;
}

uint64_t sub_100009CF8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100002A18(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100009D7C()
{
  result = qword_1000183B8;
  if (!qword_1000183B8)
  {
    sub_100002A18(&qword_100018398, &qword_10000DA48);
    sub_100008BB0();
    sub_100004B24(&qword_1000183C0, &qword_1000183A0, &qword_10000DA50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000183B8);
  }

  return result;
}

unint64_t sub_100009E34()
{
  result = qword_1000183D0;
  if (!qword_1000183D0)
  {
    sub_100002A18(&qword_1000183A8, &qword_10000DA88);
    sub_100009D7C();
    sub_100004B24(&qword_1000183D8, &qword_1000183E0, &qword_10000DA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000183D0);
  }

  return result;
}

uint64_t sub_100009EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000022C0(&qword_100018338, &qword_10000D9B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009F5C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100009FB0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_10000A008()
{
  result = qword_100018410;
  if (!qword_100018410)
  {
    sub_100002A18(&qword_1000182A0, &qword_10000D920);
    sub_100004B24(&qword_100018418, &qword_100018420, &qword_10000DAC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018410);
  }

  return result;
}

uint64_t sub_10000A120@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v31 = sub_1000022C0(&qword_100018440, &qword_10000DB28);
  v1 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v3 = &v29 - v2;
  v4 = sub_1000022C0(&qword_100018448, &unk_10000DB30);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = __chkstk_darwin(v4);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v11 = sub_1000022C0(&qword_100018280, &qword_10000D780);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v29 - v13;
  v15 = sub_10000C9D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0x800000010000E070;
  sub_10000C9C0();
  (*(v16 + 104))(v19, enum case for Image.ResizingMode.stretch(_:), v15);
  sub_10000CA00();

  (*(v16 + 8))(v19, v15);
  v20 = enum case for Image.TemplateRenderingMode.template(_:);
  v21 = sub_10000C9F0();
  v22 = *(v21 - 8);
  (*(v22 + 104))(v14, v20, v21);
  (*(v22 + 56))(v14, 0, 1, v21);
  v23 = sub_10000C9E0();

  sub_10000A5F0(v14);
  sub_10000A658();
  sub_10000C7C0();
  v24 = v5[2];
  v25 = v30;
  v24(v30, v10, v4);
  v26 = v29;
  *v3 = 0xD000000000000011;
  *(v3 + 1) = v26;
  *(v3 + 2) = v23;
  v24(&v3[*(v31 + 48)], v25, v4);

  sub_10000C660();
  v27 = v5[1];
  v27(v10, v4);
  v27(v25, v4);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000A570();
  sub_10000C670();
  return 0;
}

unint64_t sub_10000A570()
{
  result = qword_100018438;
  if (!qword_100018438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018438);
  }

  return result;
}

uint64_t sub_10000A5F0(uint64_t a1)
{
  v2 = sub_1000022C0(&qword_100018280, &qword_10000D780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000A658()
{
  result = qword_100018450;
  if (!qword_100018450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018450);
  }

  return result;
}

unint64_t sub_10000A6B0()
{
  result = qword_100018458;
  if (!qword_100018458)
  {
    sub_100002A18(&qword_100018460, &unk_10000DB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018458);
  }

  return result;
}

__n128 sub_10000A714(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10000A740(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_10000A788(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000A810@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10000A858(uint64_t a1)
{
  v2 = sub_10000C0B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000A894(uint64_t a1)
{
  v2 = sub_10000C0B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10000A8D0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x537265746E697270;
    v6 = 0x617453726F727265;
    if (a1 != 8)
    {
      v6 = 0x6567616D49626F6ALL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x50746E6572727563;
    if (a1 != 5)
    {
      v7 = 0x72676F7250626F6ALL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x4449626F6ALL;
    v2 = 0x656C746954626F6ALL;
    v3 = 0x73656761506D756ELL;
    if (a1 != 3)
    {
      v3 = 0x4E7265746E697270;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10000AA6C(void *a1)
{
  v2 = sub_1000022C0(&qword_1000184B0, &qword_10000DD38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000BF9C(a1, a1[3]);
  sub_10000C0B8();
  sub_10000CCD0();
  return (*(v3 + 8))(v6, v2);
}

Swift::Int sub_10000AB94()
{
  v1 = *v0;
  sub_10000CC80();
  sub_10000CC90(v1);
  return sub_10000CCB0();
}

Swift::Int sub_10000AC08()
{
  v1 = *v0;
  sub_10000CC80();
  sub_10000CC90(v1);
  return sub_10000CCB0();
}

uint64_t sub_10000AC4C(void *a1)
{
  v3 = v1;
  v5 = sub_1000022C0(&qword_1000184A8, &qword_10000DD30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27[-v8];
  v10 = a1[4];
  sub_10000BF9C(a1, a1[3]);
  sub_10000BFE0();
  sub_10000CCD0();
  v11 = *v3;
  v27[15] = 0;
  sub_10000CC40();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v13 = v3[2];
  v27[14] = 1;
  sub_10000CC20();
  v14 = v3[3];
  v15 = v3[4];
  v27[13] = 2;
  sub_10000CC20();
  v16 = v3[5];
  v27[12] = 3;
  sub_10000CC40();
  v17 = v3[6];
  v18 = v3[7];
  v27[11] = 4;
  sub_10000CC20();
  v19 = v3[8];
  v27[10] = 5;
  sub_10000CC40();
  v20 = v3[9];
  v27[9] = 6;
  sub_10000CC30();
  v21 = v3[10];
  v27[8] = 7;
  sub_10000CC40();
  v22 = v3[11];
  v23 = v3[12];
  v27[7] = 8;
  sub_10000CC20();
  v25 = v3[13];
  v26 = v3[14];
  v27[6] = 9;
  sub_10000CC20();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10000AECC()
{
  sub_10000CC90(*v0);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_10000CB90();
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  sub_10000CB90();
  sub_10000CC90(*(v0 + 40));
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_10000CB90();
  sub_10000CC90(*(v0 + 64));
  v7 = *(v0 + 72);
  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  sub_10000CCA0(*&v7);
  sub_10000CC90(*(v0 + 80));
  v8 = *(v0 + 88);
  v9 = *(v0 + 96);
  sub_10000CB90();
  v10 = *(v0 + 104);
  v11 = *(v0 + 112);

  return sub_10000CB90();
}

Swift::Int sub_10000AF70()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v17 = *(v0 + 64);
  v9 = *(v0 + 72);
  sub_10000CC80();
  sub_10000CC90(v1);
  sub_10000CB90();
  sub_10000CB90();
  sub_10000CC90(v6);
  sub_10000CB90();
  sub_10000CC90(v17);
  v10 = 0.0;
  if (v9 != 0.0)
  {
    v10 = v9;
  }

  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);
  v14 = *(v0 + 104);
  v15 = *(v0 + 112);
  sub_10000CCA0(*&v10);
  sub_10000CC90(v11);
  sub_10000CB90();
  sub_10000CB90();
  return sub_10000CCB0();
}

uint64_t sub_10000B09C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000B580(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10000B0D0(uint64_t a1)
{
  v2 = sub_10000BFE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000B10C(uint64_t a1)
{
  v2 = sub_10000BFE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10000B148@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000BA0C(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

Swift::Int sub_10000B1D0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  v13 = *(v0 + 80);
  v14 = *(v0 + 96);
  v17 = *(v0 + 104);
  v15 = *(v0 + 88);
  v16 = *(v0 + 112);
  sub_10000CC80();
  sub_10000CC90(v1);
  sub_10000CB90();
  sub_10000CB90();
  sub_10000CC90(v6);
  sub_10000CB90();
  sub_10000CC90(v9);
  v11 = 0.0;
  if (v10 != 0.0)
  {
    v11 = v10;
  }

  sub_10000CCA0(*&v11);
  sub_10000CC90(v13);
  sub_10000CB90();
  sub_10000CB90();
  return sub_10000CCB0();
}

uint64_t sub_10000B2EC(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return sub_10000B8C8(v12, v14) & 1;
}

unint64_t sub_10000B374()
{
  result = qword_100018468;
  if (!qword_100018468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018468);
  }

  return result;
}

unint64_t sub_10000B3CC()
{
  result = qword_100018470;
  if (!qword_100018470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018470);
  }

  return result;
}

unint64_t sub_10000B424()
{
  result = qword_100018478;
  if (!qword_100018478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018478);
  }

  return result;
}

unint64_t sub_10000B47C()
{
  result = qword_100018480;
  if (!qword_100018480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018480);
  }

  return result;
}

unint64_t sub_10000B4D4()
{
  result = qword_100018488;
  if (!qword_100018488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018488);
  }

  return result;
}

unint64_t sub_10000B52C()
{
  result = qword_100018490;
  if (!qword_100018490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018490);
  }

  return result;
}

uint64_t sub_10000B580(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449626F6ALL && a2 == 0xE500000000000000;
  if (v4 || (sub_10000CC50() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010000E090 == a2 || (sub_10000CC50() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746954626F6ALL && a2 == 0xE800000000000000 || (sub_10000CC50() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656761506D756ELL && a2 == 0xE800000000000000 || (sub_10000CC50() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4E7265746E697270 && a2 == 0xEB00000000656D61 || (sub_10000CC50() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x50746E6572727563 && a2 == 0xEB00000000656761 || (sub_10000CC50() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72676F7250626F6ALL && a2 == 0xEB00000000737365 || (sub_10000CC50() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x537265746E697270 && a2 == 0xEC00000065746174 || (sub_10000CC50() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x617453726F727265 && a2 == 0xEB00000000737574 || (sub_10000CC50() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6567616D49626F6ALL && a2 == 0xEC00000068746150)
  {

    return 9;
  }

  else
  {
    v6 = sub_10000CC50();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_10000B8C8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (sub_10000CC50() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (!v5 && (sub_10000CC50() & 1) == 0 || *(a1 + 40) != *(a2 + 40) || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_10000CC50() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80) || (*(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96)) && (sub_10000CC50() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 104) == *(a2 + 104) && *(a1 + 112) == *(a2 + 112))
  {
    return 1;
  }

  return sub_10000CC50();
}

uint64_t sub_10000BA0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000022C0(&qword_100018498, &qword_10000DD28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_10000BF9C(a1, a1[3]);
  sub_10000BFE0();
  sub_10000CCC0();
  if (v2)
  {
    return sub_10000C034(a1);
  }

  LOBYTE(v49[0]) = 0;
  v11 = sub_10000CC10();
  LOBYTE(v49[0]) = 1;
  v38 = sub_10000CBF0();
  v40 = v12;
  LOBYTE(v49[0]) = 2;
  v13 = sub_10000CBF0();
  v39 = v14;
  v36 = v13;
  LOBYTE(v49[0]) = 3;
  v35 = sub_10000CC10();
  LOBYTE(v49[0]) = 4;
  v34 = sub_10000CBF0();
  v37 = v15;
  LOBYTE(v49[0]) = 5;
  v33 = sub_10000CC10();
  LOBYTE(v49[0]) = 6;
  sub_10000CC00();
  v17 = v16;
  LOBYTE(v49[0]) = 7;
  v31 = sub_10000CC10();
  LOBYTE(v49[0]) = 8;
  v30 = sub_10000CBF0();
  v32 = v18;
  v50 = 9;
  v19 = sub_10000CBF0();
  v21 = v20;
  (*(v6 + 8))(v9, v5);
  *&v41 = v11;
  *(&v41 + 1) = v38;
  v22 = v40;
  *&v42 = v40;
  *(&v42 + 1) = v36;
  v23 = v39;
  *&v43 = v39;
  *(&v43 + 1) = v35;
  *&v44 = v34;
  v24 = v37;
  *(&v44 + 1) = v37;
  *&v45 = v33;
  *(&v45 + 1) = v17;
  *&v46 = v31;
  *(&v46 + 1) = v30;
  *&v47 = v32;
  *(&v47 + 1) = v19;
  v48 = v21;
  sub_10000C080(&v41, v49);
  sub_10000C034(a1);
  v49[0] = v11;
  v49[1] = v38;
  v49[2] = v22;
  v49[3] = v36;
  v49[4] = v23;
  v49[5] = v35;
  v49[6] = v34;
  v49[7] = v24;
  v49[8] = v33;
  v49[9] = v17;
  v49[10] = v31;
  v49[11] = v30;
  v49[12] = v32;
  v49[13] = v19;
  v49[14] = v21;
  result = sub_100008C34(v49);
  v26 = v46;
  *(a2 + 64) = v45;
  *(a2 + 80) = v26;
  *(a2 + 96) = v47;
  *(a2 + 112) = v48;
  v27 = v42;
  *a2 = v41;
  *(a2 + 16) = v27;
  v28 = v44;
  *(a2 + 32) = v43;
  *(a2 + 48) = v28;
  return result;
}

void *sub_10000BF9C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10000BFE0()
{
  result = qword_1000184A0;
  if (!qword_1000184A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000184A0);
  }

  return result;
}

uint64_t sub_10000C034(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_10000C0B8()
{
  result = qword_1000184B8;
  if (!qword_1000184B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000184B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrintJobState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrintJobState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000C28C()
{
  result = qword_1000184C0;
  if (!qword_1000184C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000184C0);
  }

  return result;
}

unint64_t sub_10000C2E4()
{
  result = qword_1000184C8;
  if (!qword_1000184C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000184C8);
  }

  return result;
}

unint64_t sub_10000C33C()
{
  result = qword_1000184D0;
  if (!qword_1000184D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000184D0);
  }

  return result;
}

unint64_t sub_10000C394()
{
  result = qword_1000184D8;
  if (!qword_1000184D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000184D8);
  }

  return result;
}

unint64_t sub_10000C3EC()
{
  result = qword_1000184E0;
  if (!qword_1000184E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000184E0);
  }

  return result;
}