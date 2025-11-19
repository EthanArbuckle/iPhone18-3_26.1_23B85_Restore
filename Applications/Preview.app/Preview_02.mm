uint64_t sub_10003D17C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_100208140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003D1EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ExportSheetView() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(sub_100005804(&qword_100208140) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100013194;

  return sub_10003C104(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_10003D360()
{
  v1 = type metadata accessor for ExportSheetView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_100005804(&qword_100208138);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for DismissAction();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 20);
  v5 = sub_100005804(&qword_100208038);
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_10003D4D4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ExportSheetView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10003D5B4@<X0>(void *a1@<X8>)
{
  Notification.object.getter();
  if (!v6)
  {
    result = sub_100029B88(v5);
    goto LABEL_5;
  }

  sub_10003D638();
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = v4;
LABEL_6:
  *a1 = v3;
  return result;
}

unint64_t sub_10003D638()
{
  result = qword_100208168;
  if (!qword_100208168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100208168);
  }

  return result;
}

uint64_t sub_10003D690()
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10003D748();
}

void sub_10003D748()
{
  if ([v0 targetForAction:"rename:" withSender:0])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1000085D8(0, &qword_100208170);
    if (swift_dynamicCast())
    {
      if ([v2 canPerformAction:"rename:" withSender:0])
      {
        [v2 performSelector:"rename:" withObject:0];
        v1 = v2;
      }

      else
      {
      }
    }
  }

  else
  {
    sub_100029B88(v5);
  }
}

uint64_t sub_10003D858(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v24 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v27 = *(v5 - 8);
  v28 = v5;
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchTime();
  v23 = v8;
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v23 - v13;
  sub_1000085D8(0, &qword_100206DB0);
  v15 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v16 = *(v9 + 8);
  v16(v12, v8);
  v17 = swift_allocObject();
  v18 = v25;
  v17[2] = v24;
  v17[3] = v18;
  v19 = v26;
  v17[4] = v26;
  aBlock[4] = sub_10003DC10;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000834C4;
  aBlock[3] = &unk_1001F0780;
  v20 = j___Block_copy(aBlock);
  v21 = v19;
  static DispatchQoS.unspecified.getter();
  v30 = &_swiftEmptyArrayStorage;
  sub_10003A0FC();
  sub_100005804(&unk_100206DC0);
  sub_100012F08();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  j___Block_release(v20);

  (*(v29 + 8))(v4, v2);
  (*(v27 + 8))(v7, v28);
  v16(v14, v23);
}

uint64_t sub_10003DBD8()
{

  return swift_deallocObject();
}

uint64_t sub_10003DC1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10003DC38()
{
  result = qword_100208178;
  if (!qword_100208178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208178);
  }

  return result;
}

unint64_t sub_10003DC90()
{
  result = qword_100208180;
  if (!qword_100208180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208180);
  }

  return result;
}

uint64_t sub_10003DD34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v3[18] = *(type metadata accessor for DocumentEntity() - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[21] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003DE34, v5, v4);
}

uint64_t sub_10003DE34()
{

  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 96);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 160);
    v4 = *(*(v0 + 144) + 80);
    sub_100042818(v1 + ((v4 + 32) & ~v4), v2);

    sub_10004287C(v2, v3);
    if (qword_100206040 != -1)
    {
      swift_once();
    }

    sub_10004E01C(*(v0 + 160), v0 + 56);
    v5 = *(v0 + 160);
    if (*(v0 + 80))
    {
      sub_1000429A4((v0 + 56), v0 + 16);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      sub_100008638((v0 + 16), v6);
      IntentParameter.wrappedValue.getter();
      (*(v7 + 8))(*(v0 + 176), v6, v7);
      sub_1000428E0(v5);
      sub_10000867C(v0 + 16);
    }

    else
    {
      sub_1000428E0(*(v0 + 160));
      sub_10004293C(v0 + 56);
    }
  }

  else
  {
  }

  IntentParameter.wrappedValue.getter();
  *(v0 + 112) = *(v0 + 104);
  sub_100005804(&qword_1002082F8);
  sub_100042A84();
  static IntentResult.result<A>(value:)();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10003E02C()
{
  v0 = sub_100005804(&qword_1002083A8);
  __chkstk_darwin(v0 - 8);
  v1 = sub_100005804(&qword_1002083B0);
  __chkstk_darwin(v1);
  sub_100040A88();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x20657461746F52;
  v2._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_100005804(&qword_1002083B8);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_100005804(&qword_1002083C0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10003E214(uint64_t a1)
{
  v2 = sub_100042D94();

  return static AssistantSchemaIntent.title.getter(a1, v2);
}

uint64_t sub_10003E264(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002DD0C;

  return sub_10003DD34(a1, v5, v4);
}

uint64_t sub_10003E310@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100040F64();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10003E338(uint64_t a1)
{
  v2 = sub_100040A88();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10003E378()
{
  result = qword_100208188;
  if (!qword_100208188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208188);
  }

  return result;
}

unint64_t sub_10003E3D0()
{
  result = qword_100208190;
  if (!qword_100208190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208190);
  }

  return result;
}

uint64_t sub_10003E550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v3[18] = *(type metadata accessor for DocumentEntity() - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[21] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003E650, v5, v4);
}

uint64_t sub_10003E650()
{

  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 96);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 160);
    v4 = *(*(v0 + 144) + 80);
    sub_100042818(v1 + ((v4 + 32) & ~v4), v2);

    sub_10004287C(v2, v3);
    if (qword_100206040 != -1)
    {
      swift_once();
    }

    sub_10004E01C(*(v0 + 160), v0 + 56);
    v5 = *(v0 + 160);
    if (*(v0 + 80))
    {
      sub_1000429A4((v0 + 56), v0 + 16);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      sub_100008638((v0 + 16), v6);
      IntentParameter.wrappedValue.getter();
      (*(v7 + 16))(*(v0 + 176), v6, v7);
      sub_1000428E0(v5);
      sub_10000867C(v0 + 16);
    }

    else
    {
      sub_1000428E0(*(v0 + 160));
      sub_10004293C(v0 + 56);
    }
  }

  else
  {
  }

  IntentParameter.wrappedValue.getter();
  *(v0 + 112) = *(v0 + 104);
  sub_100005804(&qword_1002082F8);
  sub_100042A84();
  static IntentResult.result<A>(value:)();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10003E848()
{
  v0 = sub_100005804(&qword_100208388);
  __chkstk_darwin(v0 - 8);
  v1 = sub_100005804(&qword_100208390);
  __chkstk_darwin(v1);
  sub_100042D40();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x2070696C46;
  v2._object = 0xE500000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_100005804(&qword_100208398);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 32;
  v3._object = 0xE100000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_100005804(&qword_1002083A0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10003EAFC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100013194;

  return sub_10003E550(a1, v5, v4);
}

uint64_t sub_10003EBA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004133C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10003EBD0(uint64_t a1)
{
  v2 = sub_100042D40();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10003EC10()
{
  result = qword_100208198;
  if (!qword_100208198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208198);
  }

  return result;
}

unint64_t sub_10003EC68()
{
  result = qword_1002081A0;
  if (!qword_1002081A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002081A0);
  }

  return result;
}

uint64_t sub_10003ED0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  v4[23] = *(type metadata accessor for DocumentEntity() - 8);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[26] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003EE0C, v6, v5);
}

void *sub_10003EE0C()
{

  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 128);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 192);
    v3 = *(v0 + 200);
    v4 = *(*(v0 + 184) + 80);
    sub_100042818(v1 + ((v4 + 32) & ~v4), v2);

    sub_10004287C(v2, v3);
    if (qword_100206040 != -1)
    {
      swift_once();
    }

    sub_10004E01C(*(v0 + 200), v0 + 56);
    if (*(v0 + 80))
    {
      sub_1000429A4((v0 + 56), v0 + 16);
      IntentParameter.wrappedValue.getter();
      if (*(v0 + 104) & 1) != 0 || (v5 = *(v0 + 96), IntentParameter.wrappedValue.getter(), (*(v0 + 120)))
      {
        v6 = *(v0 + 200);
LABEL_17:
        sub_1000428E0(v6);
        sub_10000867C(v0 + 16);
        goto LABEL_18;
      }

      v7 = *(v0 + 112);
      v8 = *(v0 + 40);
      v9 = *(v0 + 48);
      result = sub_100008638((v0 + 16), v8);
      if (v5 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v5 < 9.22337204e18)
      {
        if ((*&v5 & 0x7FF0000000000000) != 0x7FF0000000000000 && (*&v7 & 0x7FF0000000000000) != 0x7FF0000000000000)
        {
          if (v7 > -9.22337204e18)
          {
            if (v7 < 9.22337204e18)
            {
              v11 = v5;
              v12 = *(v0 + 200);
              (*(v9 + 40))(v11, v7, v8, v9);
              v6 = v12;
              goto LABEL_17;
            }

LABEL_25:
            __break(1u);
            return result;
          }

LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      __break(1u);
      goto LABEL_23;
    }

    sub_1000428E0(*(v0 + 200));
    sub_10004293C(v0 + 56);
  }

  else
  {
  }

LABEL_18:
  IntentParameter.wrappedValue.getter();
  *(v0 + 144) = *(v0 + 136);
  sub_100005804(&qword_1002082F8);
  sub_100042A84();
  static IntentResult.result<A>(value:)();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10003F0B8()
{
  v0 = sub_100005804(&qword_100208358);
  __chkstk_darwin(v0 - 8);
  v1 = sub_100005804(&qword_100208360);
  __chkstk_darwin(v1);
  sub_100040B3C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x20657A69736552;
  v2._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_100005804(&qword_100208368);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544175136;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_100005804(&qword_100208370);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 2127904;
  v4._object = 0xE300000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10003F2E0(uint64_t a1)
{
  v2 = sub_100042CEC();

  return static AssistantSchemaIntent.title.getter(a1, v2);
}

uint64_t sub_10003F330(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002DD0C;

  return sub_10003ED0C(a1, v4, v5, v6);
}

uint64_t sub_10003F3E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000418AC();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t sub_10003F410(uint64_t a1)
{
  v2 = sub_100040B3C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10003F450()
{
  result = qword_1002081A8;
  if (!qword_1002081A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002081A8);
  }

  return result;
}

unint64_t sub_10003F4A8()
{
  result = qword_1002081B0;
  if (!qword_1002081B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002081B0);
  }

  return result;
}

uint64_t sub_10003F54C()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100042A20(v0, qword_100222440);
  sub_1000429E8(v0, qword_100222440);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_10003F5B0(uint64_t a1, uint64_t a2)
{
  v2[15] = a1;
  v2[16] = a2;
  v2[17] = *(type metadata accessor for DocumentEntity() - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[20] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003F6AC, v4, v3);
}

uint64_t sub_10003F6AC()
{

  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 96);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    v4 = *(*(v0 + 136) + 80);
    sub_100042818(v1 + ((v4 + 32) & ~v4), v2);

    sub_10004287C(v2, v3);
    if (qword_100206040 != -1)
    {
      swift_once();
    }

    sub_10004E01C(*(v0 + 152), v0 + 56);
    v5 = *(v0 + 152);
    if (*(v0 + 80))
    {
      sub_1000429A4((v0 + 56), v0 + 16);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      sub_100008638((v0 + 16), v6);
      (*(v7 + 24))(v6, v7);
      sub_1000428E0(v5);
      sub_10000867C(v0 + 16);
    }

    else
    {
      sub_1000428E0(*(v0 + 152));
      sub_10004293C(v0 + 56);
    }
  }

  else
  {
  }

  IntentParameter.wrappedValue.getter();
  *(v0 + 112) = *(v0 + 104);
  sub_100005804(&qword_1002082F8);
  sub_100042A84();
  static IntentResult.result<A>(value:)();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10003F8E8()
{
  v0 = sub_100005804(&qword_100208340);
  __chkstk_darwin(v0 - 8);
  v1 = sub_100005804(&qword_100208348);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x80000001001B10E0;
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_100005804(&qword_100208350);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_10003FA80(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002DD0C;

  return sub_10003F5B0(a1, v4);
}

uint64_t sub_10003FB20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100041D84();
  *a1 = result;
  return result;
}

uint64_t sub_10003FB48(uint64_t a1)
{
  v2 = sub_100042C14();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10003FB88()
{
  result = qword_1002081B8;
  if (!qword_1002081B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002081B8);
  }

  return result;
}

unint64_t sub_10003FBE0()
{
  result = qword_1002081C0;
  if (!qword_1002081C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002081C0);
  }

  return result;
}

uint64_t sub_10003FC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  v3[20] = *(type metadata accessor for DocumentEntity() - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[23] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10003FD84, v5, v4);
}

uint64_t sub_10003FD84()
{

  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 112);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v4 = *(*(v0 + 160) + 80);
    sub_100042818(v1 + ((v4 + 32) & ~v4), v2);

    sub_10004287C(v2, v3);
    if (qword_100206040 != -1)
    {
      swift_once();
    }

    sub_10004E01C(*(v0 + 176), v0 + 56);
    v5 = *(v0 + 176);
    if (*(v0 + 80))
    {
      sub_1000429A4((v0 + 56), v0 + 16);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      sub_100008638((v0 + 16), v6);
      IntentParameter.wrappedValue.getter();
      (*(v7 + 48))(*(v0 + 96), *(v0 + 104), v6, v7);

      sub_1000428E0(v5);
      sub_10000867C(v0 + 16);
    }

    else
    {
      sub_1000428E0(*(v0 + 176));
      sub_10004293C(v0 + 56);
    }
  }

  else
  {
  }

  IntentParameter.wrappedValue.getter();
  *(v0 + 128) = *(v0 + 120);
  sub_100005804(&qword_1002082F8);
  sub_100042A84();
  static IntentResult.result<A>(value:)();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10003FF88()
{
  v0 = sub_100005804(&qword_100208310);
  __chkstk_darwin(v0 - 8);
  v1 = sub_100005804(&qword_100208318);
  __chkstk_darwin(v1);
  sub_100040BEC();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x20686372616553;
  v2._object = 0xE700000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_100005804(&qword_100208320);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544106784;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_100005804(&qword_100208328);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100040174(uint64_t a1)
{
  v2 = sub_100042BC0();

  return static AssistantSchemaIntent.title.getter(a1, v2);
}

uint64_t sub_1000401C4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002DD0C;

  return sub_10003FC84(a1, v5, v4);
}

uint64_t sub_100040270@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000420B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100040298(uint64_t a1)
{
  v2 = sub_100040BEC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1000402D8()
{
  result = qword_1002081C8;
  if (!qword_1002081C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002081C8);
  }

  return result;
}

unint64_t sub_100040330()
{
  result = qword_1002081D0;
  if (!qword_1002081D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002081D0);
  }

  return result;
}

uint64_t sub_1000403E8(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for LocalizedStringResource();
  sub_100042A20(v3, a2);
  sub_1000429E8(v3, a2);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_100040448(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v2[15] = *(type metadata accessor for DocumentEntity() - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[18] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100040544, v4, v3);
}

uint64_t sub_100040544()
{

  IntentParameter.wrappedValue.getter();
  v1 = *(v0 + 96);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 128);
    v3 = *(v0 + 136);
    v4 = *(*(v0 + 120) + 80);
    sub_100042818(v1 + ((v4 + 32) & ~v4), v2);

    sub_10004287C(v2, v3);
    if (qword_100206040 != -1)
    {
      swift_once();
    }

    sub_10004E01C(*(v0 + 136), v0 + 56);
    v5 = *(v0 + 136);
    if (*(v0 + 80))
    {
      sub_1000429A4((v0 + 56), v0 + 16);
      v6 = *(v0 + 40);
      v7 = *(v0 + 48);
      sub_100008638((v0 + 16), v6);
      (*(v7 + 32))(v6, v7);
      sub_1000428E0(v5);
      sub_10000867C(v0 + 16);
    }

    else
    {
      sub_1000428E0(*(v0 + 136));
      sub_10004293C(v0 + 56);
    }
  }

  else
  {
  }

  static IntentResult.result<>()();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1000406FC@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for LocalizedStringResource();
  v6 = sub_1000429E8(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_100040798()
{
  v0 = sub_100005804(&qword_1002082E0);
  __chkstk_darwin(v0 - 8);
  v1 = sub_100005804(&qword_1002082E8);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x2065736F6C43;
  v2._object = 0xE600000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_100005804(&qword_1002082F0);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_100040928(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002DD0C;

  return sub_100040448(a1, v4);
}

uint64_t sub_1000409C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100042490();
  *a1 = result;
  return result;
}

uint64_t sub_1000409F0(uint64_t a1)
{
  v2 = sub_1000427C4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100040A30()
{
  result = qword_1002081D8;
  if (!qword_1002081D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002081D8);
  }

  return result;
}

unint64_t sub_100040A88()
{
  result = qword_1002081E0;
  if (!qword_1002081E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002081E0);
  }

  return result;
}

unint64_t sub_100040AE0()
{
  result = qword_1002081E8;
  if (!qword_1002081E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002081E8);
  }

  return result;
}

unint64_t sub_100040B3C()
{
  result = qword_1002081F0;
  if (!qword_1002081F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002081F0);
  }

  return result;
}

unint64_t sub_100040B94()
{
  result = qword_1002081F8;
  if (!qword_1002081F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002081F8);
  }

  return result;
}

unint64_t sub_100040BEC()
{
  result = qword_100208200;
  if (!qword_100208200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208200);
  }

  return result;
}

__n128 sub_100040C70(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100040C84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100040CCC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100040F64()
{
  v0 = sub_100005804(&qword_1002082C0);
  __chkstk_darwin(v0 - 8);
  v29 = &v23 - v1;
  v30 = type metadata accessor for InputConnectionBehavior();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005804(&qword_100208288);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = sub_100005804(&qword_100208290);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v28 = sub_100005804(&qword_100208298);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  v26 = *(v15 + 56);
  v27 = v15 + 56;
  v26(v13, 1, 1, v14);
  v32 = 0;
  v16 = type metadata accessor for IntentDialog();
  v17 = *(*(v16 - 8) + 56);
  v17(v10, 1, 1, v16);
  v17(v7, 1, 1, v16);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v18 = *(v2 + 104);
  v23 = v2 + 104;
  v24 = v18;
  v18(v4);
  sub_100042B24(&qword_100207218);
  v19 = v4;
  v20 = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100005804(&qword_1002082C8);
  v26(v13, 1, 1, v14);
  v31 = 0;
  v21 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v21 - 8) + 56))(v29, 1, 1, v21);
  v17(v10, 1, 1, v16);
  v24(v19, v25, v30);
  IntentParameter<>.init(description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  return v20;
}

uint64_t sub_10004133C()
{
  v0 = sub_100005804(&qword_1002082C0);
  __chkstk_darwin(v0 - 8);
  v36 = &v27 - v1;
  v2 = type metadata accessor for InputConnectionBehavior();
  v3 = *(v2 - 8);
  v37 = v2;
  v38 = v3;
  __chkstk_darwin(v2);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005804(&qword_100208288);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v27 - v9;
  v11 = sub_100005804(&qword_100208290);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  v14 = type metadata accessor for LocalizedStringResource();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v35 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v33 = &v27 - v18;
  __chkstk_darwin(v19);
  v30 = sub_100005804(&qword_100208298);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v28 = *(v15 + 56);
  v28(v13, 0, 1, v14);
  v40 = 0;
  v20 = type metadata accessor for IntentDialog();
  v21 = *(*(v20 - 8) + 56);
  v32 = v21;
  v27 = v10;
  v21(v10, 1, 1, v20);
  v21(v7, 1, 1, v20);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v22 = *(v38 + 104);
  v38 += 104;
  v23 = v34;
  v22(v34);
  sub_100042B24(&qword_100207218);
  v30 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100005804(&qword_1002082C8);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v28(v13, 0, 1, v29);
  v39 = 1;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  v24 = v36;
  Bool.IntentDisplayName.init(true:false:)();
  v25 = type metadata accessor for Bool.IntentDisplayName();
  (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  v32(v27, 1, 1, v20);
  (v22)(v23, v31, v37);
  IntentParameter<>.init(title:description:default:displayName:requestValueDialog:inputConnectionBehavior:)();
  return v30;
}

uint64_t sub_1000418AC()
{
  v44 = sub_100005804(&qword_1002082B0);
  v39 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v26 - v0;
  v43 = type metadata accessor for InputConnectionBehavior();
  v1 = *(v43 - 8);
  __chkstk_darwin(v43);
  v38 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005804(&qword_100208288);
  __chkstk_darwin(v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_100005804(&qword_100208290);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v37 = sub_100005804(&qword_100208298);
  v42 = type metadata accessor for LocalizedStringResource();
  v12 = *(v42 - 8);
  v13 = *(v12 + 56);
  v41 = v12 + 56;
  v13(v11, 1, 1, v42);
  v33 = v13;
  v45 = 0;
  v14 = type metadata accessor for IntentDialog();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v17 = v15 + 56;
  v16(v8, 1, 1, v14);
  v30 = v14;
  v16(v5, 1, 1, v14);
  v31 = v17;
  v32 = v16;
  v36 = enum case for InputConnectionBehavior.default(_:);
  v18 = *(v1 + 104);
  v34 = v1 + 104;
  v35 = v18;
  v19 = v38;
  (v18)(v38);
  sub_100042B24(&qword_100207218);
  v37 = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v29 = sub_100005804(&qword_1002082B8);
  v13(v11, 1, 1, v42);
  v45 = 0;
  v46 = 1;
  v20 = v8;
  v16(v8, 1, 1, v14);
  v28 = enum case for IntentParameter.DoubleControlStyle.stepper<A>(_:);
  v21 = v40;
  v27 = *(v39 + 104);
  v27(v40);
  v22 = v36;
  v23 = v43;
  v24 = v35;
  v35(v19, v36, v43);
  v39 = IntentParameter<>.init(description:default:controlStyle:inclusiveRange:requestValueDialog:inputConnectionBehavior:)();
  v33(v11, 1, 1, v42);
  v45 = 0;
  v46 = 1;
  v32(v20, 1, 1, v30);
  (v27)(v21, v28, v44);
  v24(v19, v22, v23);
  IntentParameter<>.init(description:default:controlStyle:inclusiveRange:requestValueDialog:inputConnectionBehavior:)();
  return v37;
}

uint64_t sub_100041D84()
{
  v17[0] = type metadata accessor for InputConnectionBehavior();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005804(&qword_100208288);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v17 - v7;
  v9 = sub_100005804(&qword_100208290);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100005804(&qword_100208298);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 0, 1, v12);
  v17[1] = 0;
  v14 = type metadata accessor for IntentDialog();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_100042B24(&qword_100207218);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t sub_1000420B8()
{
  v0 = sub_100005804(&qword_1002082A0);
  __chkstk_darwin(v0 - 8);
  v29 = &v23 - v1;
  v30 = type metadata accessor for InputConnectionBehavior();
  v2 = *(v30 - 8);
  __chkstk_darwin(v30);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005804(&qword_100208288);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  v11 = sub_100005804(&qword_100208290);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v28 = sub_100005804(&qword_100208298);
  v14 = type metadata accessor for LocalizedStringResource();
  v15 = *(v14 - 8);
  v26 = *(v15 + 56);
  v27 = v15 + 56;
  v26(v13, 1, 1, v14);
  v31 = 0;
  v16 = type metadata accessor for IntentDialog();
  v17 = *(*(v16 - 8) + 56);
  v17(v10, 1, 1, v16);
  v17(v7, 1, 1, v16);
  v25 = enum case for InputConnectionBehavior.default(_:);
  v18 = *(v2 + 104);
  v23 = v2 + 104;
  v24 = v18;
  v18(v4);
  sub_100042B24(&qword_100207218);
  v19 = v4;
  v20 = IntentParameter<>.init(description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_100005804(&qword_1002082A8);
  v26(v13, 1, 1, v14);
  v21 = type metadata accessor for String.IntentInputOptions();
  v31 = 0;
  v32 = 0;
  (*(*(v21 - 8) + 56))(v29, 1, 1, v21);
  v17(v10, 1, 1, v16);
  v24(v19, v25, v30);
  IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  return v20;
}

uint64_t sub_100042490()
{
  v17[0] = type metadata accessor for InputConnectionBehavior();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100005804(&qword_100208288);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v17 - v7;
  v9 = sub_100005804(&qword_100208290);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100005804(&qword_100208298);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 0, 1, v12);
  v17[1] = 0;
  v14 = type metadata accessor for IntentDialog();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_100042B24(&qword_100207218);
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

unint64_t sub_1000427C4()
{
  result = qword_1002082D0;
  if (!qword_1002082D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002082D0);
  }

  return result;
}

uint64_t sub_100042818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004287C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocumentEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000428E0(uint64_t a1)
{
  v2 = type metadata accessor for DocumentEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004293C(uint64_t a1)
{
  v2 = sub_100005804(&qword_1002082D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000429A4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000429BC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000429E8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100042A20(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_100042A84()
{
  result = qword_100208300;
  if (!qword_100208300)
  {
    sub_1000059D4(&qword_1002082F8);
    sub_100042B24(&qword_100208308);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208300);
  }

  return result;
}

uint64_t sub_100042B24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DocumentEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100042B68@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100042B94@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100042BC0()
{
  result = qword_100208330;
  if (!qword_100208330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208330);
  }

  return result;
}

unint64_t sub_100042C14()
{
  result = qword_100208338;
  if (!qword_100208338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208338);
  }

  return result;
}

uint64_t sub_100042C68@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100042C94@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100042CC0@<X0>(uint64_t *a1@<X8>)
{
  result = IntentParameter.projectedValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100042CEC()
{
  result = qword_100208378;
  if (!qword_100208378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208378);
  }

  return result;
}

unint64_t sub_100042D40()
{
  result = qword_100208380;
  if (!qword_100208380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208380);
  }

  return result;
}

unint64_t sub_100042D94()
{
  result = qword_1002083C8;
  if (!qword_1002083C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002083C8);
  }

  return result;
}

uint64_t sub_100042E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005804(&qword_100208038);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
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
}

uint64_t sub_100042F28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005804(&qword_100208038);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for ExportSettingsView()
{
  result = qword_100208428;
  if (!qword_100208428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100043038()
{
  sub_1000430C4();
  if (v0 <= 0x3F)
  {
    sub_100006DF4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000430C4()
{
  if (!qword_1002080B0)
  {
    type metadata accessor for ExportSheetViewModel(255);
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &qword_1002080B0);
    }
  }
}

BOOL sub_100043138(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    type metadata accessor for ExportSheetViewModel.ExportOptions();
    ++v2;
    sub_100048EE8(&qword_100208570, type metadata accessor for ExportSheetViewModel.ExportOptions);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_100043268(uint64_t a1)
{
  v2 = j___s7SwiftUI15DynamicTypeSizeOMa();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return j___s7SwiftUI17EnvironmentValuesV15dynamicTypeSizeAA07DynamicfG0Ovs();
}

uint64_t sub_100043330@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = type metadata accessor for ExportSettingsView();
  v32 = *(v2 - 8);
  v31 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v30 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InsetGroupedListStyle();
  v5 = *(v4 - 8);
  v28 = v4;
  v29 = v5;
  __chkstk_darwin(v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005804(&qword_100208468);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v27 - v10;
  v12 = sub_100005804(&qword_100208470);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = v27 - v14;
  v34 = v1;
  sub_100005804(&qword_100208478);
  sub_100007888(&qword_100208480, &qword_100208478);
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  sub_100007888(&qword_100208488, &qword_100208468);
  v16 = v28;
  View.listStyle<A>(_:)();
  (*(v29 + 8))(v7, v16);
  (*(v9 + 8))(v11, v8);
  v17 = static Animation.default.getter();
  sub_100005804(&qword_100208038);
  v18 = v27[1];
  Bindable.wrappedValue.getter();
  v19 = &v15[*(v13 + 44)];
  v20 = sub_100005804(&qword_100208490);
  sub_100105724(v19 + *(v20 + 36));

  *v19 = v17;
  v21 = v30;
  sub_100048398(v18, v30);
  v22 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v23 = swift_allocObject();
  sub_100048400(v21, v23 + v22);
  v24 = v33;
  sub_100006600(v15, v33, &qword_100208470);
  v25 = (v24 + *(sub_100005804(&qword_100208498) + 36));
  *v25 = sub_100048464;
  v25[1] = v23;
  v25[2] = 0;
  v25[3] = 0;
  return sub_100007710(v15, &qword_100208470);
}

uint64_t sub_100043758@<X0>(char *a1@<X8>)
{
  v75 = a1;
  v73 = sub_100005804(&qword_1002084A0);
  v71 = *(v73 - 8);
  __chkstk_darwin(v73);
  v63 = &v56 - v1;
  v2 = sub_100005804(&qword_1002084A8);
  __chkstk_darwin(v2 - 8);
  v74 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v72 = &v56 - v5;
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v66 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v62 = type metadata accessor for LocalizedStringResource();
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v60 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v56 - v15;
  v70 = sub_100005804(&qword_1002084B0);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v76 = &v56 - v19;
  type metadata accessor for MainActor();
  v67 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  v65 = &v56;
  __chkstk_darwin(isCurrentExecutor);
  v64 = &v56 - 4;
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  String.LocalizationValue.init(stringLiteral:)();
  v21 = *(v66 + 104);
  LODWORD(v66) = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v59 = v21;
  v21(v11);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v22 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v56 = v9;
  v24 = v23;
  v58 = v8;
  v26 = v25;
  v57 = v11;
  v28 = v27;

  v84 = v22;
  v85 = v24;
  v86 = v26 & 1;
  v87 = v28;
  sub_100045044(&v81);
  sub_100005804(&qword_1002084B8);
  sub_100005804(&qword_1002084C0);
  v29 = sub_1000059D4(&qword_1002084C8);
  v30 = type metadata accessor for InlinePickerStyle();
  v31 = sub_100007888(&qword_1002084D0, &qword_1002084C8);
  v77 = v29;
  v78 = v30;
  v79 = v31;
  v80 = &protocol witness table for InlinePickerStyle;
  v32 = 1;
  swift_getOpaqueTypeConformance2();
  sub_100048818();
  Section<>.init(header:footer:content:)();
  sub_100005804(&qword_100208038);
  Bindable.wrappedValue.getter();
  v33 = sub_1001057E8();

  v34 = v33[2];

  if (v34)
  {
    String.LocalizationValue.init(stringLiteral:)();
    v59(v57, v66, v56);
    static Locale.current.getter();
    v35 = LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v36 = __chkstk_darwin(v35);
    v37 = v61;
    v38 = v62;
    (*(v61 + 16))(v60, v16, v62, v36);
    *&v81 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
    *(&v81 + 1) = v39;
    v82 = v40;
    v83 = v41;
    sub_100005804(&qword_1002084F0);
    sub_100007888(&qword_1002084F8, &qword_1002084F0);
    v42 = v63;
    Section<>.init(header:content:)();
    (*(v37 + 8))(v16, v38);
    v43 = v71;
    v44 = v72;
    v45 = v73;
    (*(v71 + 32))(v72, v42, v73);
    v32 = 0;
  }

  else
  {
    v44 = v72;
    v45 = v73;
    v43 = v71;
  }

  (*(v43 + 56))(v44, v32, 1, v45);
  v46 = v69;
  v47 = *(v69 + 16);
  v48 = v68;
  v49 = v76;
  v50 = v70;
  v47(v68, v76, v70);
  v51 = v74;
  sub_100006600(v44, v74, &qword_1002084A8);
  v52 = v75;
  v47(v75, v48, v50);
  v53 = sub_100005804(&qword_100208500);
  sub_100006600(v51, &v52[*(v53 + 48)], &qword_1002084A8);
  sub_100007710(v44, &qword_1002084A8);
  v54 = *(v46 + 8);
  v54(v49, v50);
  sub_100007710(v51, &qword_1002084A8);
  v54(v48, v50);
}

uint64_t sub_10004411C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a1;
  v27 = a2;
  v2 = type metadata accessor for InlinePickerStyle();
  v28 = *(v2 - 8);
  v29 = v2;
  __chkstk_darwin(v2);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005804(&qword_100208578);
  __chkstk_darwin(v5 - 8);
  v22 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_100005804(&qword_100208038);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - v12;
  v14 = sub_100005804(&qword_1002084C8);
  v25 = *(v14 - 8);
  v26 = v14;
  __chkstk_darwin(v14);
  v16 = v21 - v15;
  type metadata accessor for MainActor();
  v24 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v17 = (*(v11 + 8))(v13, v10);
  v21[1] = v21;
  __chkstk_darwin(v17);
  sub_100006600(v9, v22, &qword_100208578);
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100005804(&qword_1002060A0);
  sub_100005804(&qword_100208580);
  sub_100048E34();
  sub_100007888(&qword_100208598, &qword_100208580);
  Picker.init(selection:label:content:)();
  sub_100007710(v9, &qword_100208578);
  InlinePickerStyle.init()();
  sub_100007888(&qword_1002084D0, &qword_1002084C8);
  v18 = v26;
  v19 = v29;
  View.pickerStyle<A>(_:)();
  (*(v28 + 8))(v4, v19);
  (*(v25 + 8))(v16, v18);
}

uint64_t sub_100044608(uint64_t a1)
{
  v2 = sub_100005804(&qword_1002060A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_100006600(a1, &v6 - v3, &qword_1002060A0);
  return sub_100104C7C(v4);
}

uint64_t sub_1000446B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v55 = a2;
  v2 = sub_100005804(&qword_1002085A0);
  v56 = *(v2 - 8);
  v57 = v2;
  __chkstk_darwin(v2);
  v54 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v53 = &v47 - v5;
  v6 = sub_100005804(&qword_1002060A0);
  __chkstk_darwin(v6 - 8);
  v49 = &v47 - v7;
  v8 = type metadata accessor for Locale();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v47 = *(v9 - 8);
  v48 = v9;
  __chkstk_darwin(v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v13 - 8);
  v14 = sub_100005804(&qword_1002085A8);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v47 - v16;
  v18 = sub_100005804(&qword_1002085B0);
  __chkstk_darwin(v18 - 8);
  v51 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v47 - v21;
  type metadata accessor for MainActor();
  v52 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(v58 + *(type metadata accessor for ExportSettingsView() + 20)) == 1)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v47 + 104))(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v48);
    static Locale.current.getter();
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v23 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v30 = type metadata accessor for ExportSheetViewModel.ImageFormat();
    v31 = v49;
    (*(v30[-1].Description + 7))(v49, 1, 1, v30);
    v32 = &v17[*(sub_100005804(&qword_100206098) + 36)];
    sub_100023CD8(v31, v32, &qword_1002060A0);
    *(v32 + *(sub_100005804(&qword_1002060A8) + 36)) = 1;
    *v17 = v23;
    *(v17 + 1) = v25;
    v17[16] = v27 & 1;
    *(v17 + 3) = v29;
    (*(v15 + 32))(v22, v17, v14);
    (*(v15 + 56))(v22, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(v22, 1, 1, v14);
  }

  v50 = v22;
  sub_100005804(&qword_100208038);
  Bindable.wrappedValue.getter();
  v33 = sub_1001053D4();

  v63 = v33;
  sub_100005804(&qword_1002085B8);
  sub_100005804(&qword_1002085C0);
  sub_100007888(&qword_1002085C8, &qword_1002085B8);
  v34 = type metadata accessor for ExportSheetViewModel.ImageFormat();
  v35 = sub_100048EE8(&qword_100208590, type metadata accessor for ExportSheetViewModel.ImageFormat);
  v59 = &type metadata for Text;
  v60 = v34;
  v61 = &protocol witness table for Text;
  v62 = v35;
  swift_getOpaqueTypeConformance2();
  sub_100048EE8(&qword_1002085D0, type metadata accessor for ExportSheetViewModel.ImageFormat);
  v36 = v53;
  ForEach<>.init(_:content:)();
  v37 = v22;
  v38 = v51;
  sub_100006600(v37, v51, &qword_1002085B0);
  v40 = v56;
  v39 = v57;
  v41 = *(v56 + 16);
  v42 = v54;
  v41(v54, v36, v57);
  v43 = v55;
  sub_100006600(v38, v55, &qword_1002085B0);
  v44 = sub_100005804(&qword_1002085D8);
  v41((v43 + *(v44 + 48)), v42, v39);
  v45 = *(v40 + 8);
  v45(v36, v39);
  sub_100007710(v50, &qword_1002085B0);
  v45(v42, v39);
  sub_100007710(v38, &qword_1002085B0);
}

uint64_t sub_100044EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v4 - 8);
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10010445C();
  v5 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a2 + *(sub_100005804(&qword_1002060B0) + 36);
  v13 = type metadata accessor for ExportSheetViewModel.ImageFormat();
  (*(v13[-1].Description + 2))(v12, a1, v13);
  *(v12 + *(sub_100005804(&qword_1002060B8) + 36)) = 1;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v11;
}

uint64_t sub_100045044@<X0>(_OWORD *a1@<X8>)
{
  v37 = a1;
  v1 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v7 - 8);
  v8 = sub_100005804(&qword_1002060A0);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - v9;
  type metadata accessor for MainActor();
  v36 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100005804(&qword_100208038);
  Bindable.wrappedValue.getter();
  sub_100105724(v10);

  v11 = type metadata accessor for ExportSheetViewModel.ImageFormat();
  v12 = (*(v11[-1].Description + 6))(v10, 1, v11);
  sub_100007710(v10, &qword_1002060A0);
  if (v12 == 1)
  {

    v14 = 0uLL;
    v15 = -1;
    v16 = 0uLL;
  }

  else
  {
    Bindable.wrappedValue.getter();
    v17 = sub_10010720C();
    v19 = v18;

    if (v19)
    {
      String.LocalizationValue.init(stringLiteral:)();
      (*(v35 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
      static Locale.current.getter();
      LocalizedStringResource.init(_:table:locale:bundle:comment:)();
      v38 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
      v39 = v21;
      v40 = v20 & 1;
      v41 = v22;
      v42 = 1;
    }

    else
    {
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v23._object = 0x80000001001B11F0;
      v23._countAndFlagsBits = 0xD000000000000015;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v23);
      v24 = [objc_opt_self() stringFromByteCount:v17 countStyle:0];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28._countAndFlagsBits = v25;
      v28._object = v27;
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v28);

      v29._countAndFlagsBits = 0;
      v29._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v29);
      LocalizedStringKey.init(stringInterpolation:)();
      v38 = Text.init(_:tableName:bundle:comment:)();
      v39 = v30;
      v40 = v31 & 1;
      v41 = v32;
      v42 = 0;
    }

    j___s7SwiftUI19_ConditionalContentVA2A4ViewRzAaDR_rlE7storageACyxq_GAC7StorageOyxq__G_tcfC();

    v14 = v43;
    v16 = v44;
    v15 = v45;
  }

  v33 = v37;
  *v37 = v14;
  v33[1] = v16;
  *(v33 + 32) = v15;
  return result;
}

uint64_t sub_100045548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v208 = a1;
  v177 = a2;
  v190 = sub_100005804(&qword_100208508);
  __chkstk_darwin(v190);
  v189 = &v165 - v2;
  v174 = sub_100005804(&qword_100208510);
  v206 = *(v174 - 8);
  __chkstk_darwin(v174);
  v191 = &v165 - v3;
  v4 = sub_100005804(&qword_100208518);
  __chkstk_darwin(v4 - 8);
  v176 = &v165 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v175 = &v165 - v7;
  __chkstk_darwin(v8);
  v185 = &v165 - v9;
  __chkstk_darwin(v10);
  v184 = &v165 - v11;
  __chkstk_darwin(v12);
  v183 = &v165 - v13;
  __chkstk_darwin(v14);
  v182 = &v165 - v15;
  __chkstk_darwin(v16);
  v178 = &v165 - v17;
  __chkstk_darwin(v18);
  v20 = &v165 - v19;
  __chkstk_darwin(v21);
  v200 = &v165 - v22;
  __chkstk_darwin(v23);
  v199 = &v165 - v24;
  __chkstk_darwin(v25);
  v198 = &v165 - v26;
  __chkstk_darwin(v27);
  v197 = &v165 - v28;
  v213 = sub_100005804(&qword_100208038);
  v195 = *(v213 - 8);
  __chkstk_darwin(v213);
  v168 = &v165 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v194 = &v165 - v31;
  v207 = sub_100005804(&qword_100208520);
  v172 = *(v207 - 1);
  __chkstk_darwin(v207);
  v169 = &v165 - v32;
  v33 = sub_100005804(&qword_100208528);
  __chkstk_darwin(v33 - 8);
  v180 = &v165 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v196 = &v165 - v36;
  v37 = type metadata accessor for AccessibilityChildBehavior();
  v167 = *(v37 - 8);
  __chkstk_darwin(v37);
  v166 = &v165 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Locale();
  __chkstk_darwin(v39 - 8);
  v205 = &v165 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v201 = *(v204 - 8);
  __chkstk_darwin(v204);
  v203 = &v165 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v42 - 8);
  v202 = &v165 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for LocalizedStringResource();
  v186 = *(v187 - 8);
  __chkstk_darwin(v187);
  v193 = &v165 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100005804(&qword_100208530);
  __chkstk_darwin(v45);
  v47 = (&v165 - v46);
  v171 = sub_100005804(&qword_100208538);
  v170 = *(v171 - 8);
  __chkstk_darwin(v171);
  v165 = &v165 - v48;
  v212 = type metadata accessor for ExportSheetViewModel.ExportOptions();
  Description = v212[-1].Description;
  __chkstk_darwin(v212);
  v51 = &v165 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100005804(&qword_100208540);
  __chkstk_darwin(v52 - 8);
  v179 = &v165 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v188 = &v165 - v55;
  type metadata accessor for MainActor();
  v173 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  Bindable.wrappedValue.getter();
  v56 = sub_1001057E8();

  v57 = Description;
  v58 = (Description + 13);
  v59 = Description[13];
  v60 = v212;
  v210 = v59;
  v211 = v58;
  v59(v51, 0, v212);
  v61 = sub_100043138(v51, v56);

  v62 = v57[1];
  v192 = v57 + 1;
  v209 = v62;
  v62(v51, v60);
  v181 = v20;
  if (v61)
  {
    v63 = static VerticalAlignment.center.getter();
    *v47 = swift_getKeyPath();
    sub_100005804(&unk_10020A100);
    swift_storeEnumTagMultiPayload();
    v64 = v47 + v45[13];
    *v64 = 0x4049000000000000;
    v64[8] = 0;
    *(v47 + v45[14]) = v63;
    v65 = v47 + v45[15];
    String.LocalizationValue.init(stringLiteral:)();
    v66 = v37;
    (*(v201 + 104))(v203, enum case for LocalizedStringResource.BundleDescription.main(_:), v204);
    static Locale.current.getter();
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    *v65 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
    *(v65 + 1) = v67;
    v65[16] = v68 & 1;
    *(v65 + 3) = v69;
    sub_1000477CC(v47 + v45[16]);
    v70 = v166;
    static AccessibilityChildBehavior.combine.getter();
    sub_100007888(&qword_100208550, &qword_100208530);
    v71 = v165;
    View.accessibilityElement(children:)();
    (*(v167 + 8))(v70, v66);
    sub_100007710(v47, &qword_100208530);
    v72 = v170;
    v73 = v188;
    v74 = v171;
    (*(v170 + 32))(v188, v71, v171);
    v75 = 0;
  }

  else
  {
    v75 = 1;
    v73 = v188;
    v74 = v171;
    v72 = v170;
  }

  v76 = 1;
  (*(v72 + 56))(v73, v75, 1, v74);
  Bindable.wrappedValue.getter();
  v77 = sub_1001057E8();

  v78 = v212;
  v210(v51, 1, v212);
  v79 = sub_100043138(v51, v77);

  v209(v51, v78);
  if (v79)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v201 + 104))(v203, enum case for LocalizedStringResource.BundleDescription.main(_:), v204);
    static Locale.current.getter();
    v80 = v169;
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v81 = v194;
    v82 = v213;
    Bindable.projectedValue.getter();
    swift_getKeyPath();
    Bindable<A>.subscript.getter();

    v83 = *(v195 + 8);
    v83(v81, v82);
    v171 = v215;
    v170 = v216;
    v84 = v217;
    v85 = v168;
    Bindable.projectedValue.getter();
    swift_getKeyPath();
    v86 = v207;
    Bindable<A>.subscript.getter();

    v83(v85, v82);
    Bindable.wrappedValue.getter();
    v87 = sub_10010557C();

    v214 = 0x4054000000000000;
    sub_100028174();
    ScaledMetric.init(wrappedValue:)();
    v88 = v86[13];
    *(v80 + v88) = swift_getKeyPath();
    sub_100005804(&unk_10020A100);
    swift_storeEnumTagMultiPayload();
    v89 = v86[14];
    *(v80 + v89) = swift_getKeyPath();
    sub_100005804(&qword_100207808);
    swift_storeEnumTagMultiPayload();
    v90 = (v80 + v86[10]);
    v91 = v170;
    *v90 = v171;
    v90[1] = v91;
    v90[2] = v84;
    *(v80 + v86[9]) = v87;
    sub_100023CD8(v80, v196, &qword_100208520);
    v76 = 0;
  }

  v92 = 1;
  (*(v172 + 56))(v196, v76, 1, v207);
  Bindable.wrappedValue.getter();
  v93 = sub_1001057E8();

  v94 = v212;
  v210(v51, 2, v212);
  v95 = sub_100043138(v51, v93);

  v209(v51, v94);
  v96 = v174;
  if (v95)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v201 + 104))(v203, enum case for LocalizedStringResource.BundleDescription.main(_:), v204);
    static Locale.current.getter();
    v97 = v193;
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v98 = v194;
    v99 = v213;
    Bindable.projectedValue.getter();
    swift_getKeyPath();
    v100 = v189;
    Bindable<A>.subscript.getter();

    (*(v195 + 8))(v98, v99);
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_100007710(v100, &qword_100208508);
    __chkstk_darwin(v215);
    *(&v165 - 2) = v97;
    v101 = v191;
    Toggle.init(isOn:label:)();
    (*(v186 + 8))(v97, v187);
    (*(v206 + 32))(v197, v101, v96);
    v92 = 0;
  }

  v102 = 1;
  v207 = *(v206 + 56);
  v208 = v206 + 56;
  (v207)(v197, v92, 1, v96);
  Bindable.wrappedValue.getter();
  v103 = sub_1001057E8();

  v104 = v212;
  v210(v51, 3, v212);
  v105 = sub_100043138(v51, v103);

  v209(v51, v104);
  if (v105)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v201 + 104))(v203, enum case for LocalizedStringResource.BundleDescription.main(_:), v204);
    static Locale.current.getter();
    v106 = v193;
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v107 = v194;
    v108 = v213;
    Bindable.projectedValue.getter();
    swift_getKeyPath();
    v109 = v189;
    Bindable<A>.subscript.getter();

    (*(v195 + 8))(v107, v108);
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_100007710(v109, &qword_100208508);
    __chkstk_darwin(v215);
    *(&v165 - 2) = v106;
    v110 = v191;
    Toggle.init(isOn:label:)();
    (*(v186 + 8))(v106, v187);
    (*(v206 + 32))(v198, v110, v96);
    v102 = 0;
  }

  v111 = 1;
  (v207)(v198, v102, 1, v96);
  Bindable.wrappedValue.getter();
  v112 = sub_1001057E8();

  v113 = v212;
  v210(v51, 4, v212);
  v114 = sub_100043138(v51, v112);

  v209(v51, v113);
  if (v114)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v201 + 104))(v203, enum case for LocalizedStringResource.BundleDescription.main(_:), v204);
    static Locale.current.getter();
    v115 = v193;
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v116 = v194;
    v117 = v213;
    Bindable.projectedValue.getter();
    swift_getKeyPath();
    v118 = v189;
    Bindable<A>.subscript.getter();

    (*(v195 + 8))(v116, v117);
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_100007710(v118, &qword_100208508);
    __chkstk_darwin(v215);
    *(&v165 - 2) = v115;
    v119 = v191;
    Toggle.init(isOn:label:)();
    (*(v186 + 8))(v115, v187);
    (*(v206 + 32))(v199, v119, v96);
    v111 = 0;
  }

  v120 = v96;
  v121 = 1;
  (v207)(v199, v111, 1, v120);
  Bindable.wrappedValue.getter();
  v122 = sub_1001057E8();

  v123 = v212;
  v210(v51, 5, v212);
  v124 = sub_100043138(v51, v122);

  v209(v51, v123);
  if (v124)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v201 + 104))(v203, enum case for LocalizedStringResource.BundleDescription.main(_:), v204);
    static Locale.current.getter();
    v125 = v193;
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v126 = v194;
    v127 = v213;
    Bindable.projectedValue.getter();
    swift_getKeyPath();
    v128 = v189;
    Bindable<A>.subscript.getter();

    (*(v195 + 8))(v126, v127);
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_100007710(v128, &qword_100208508);
    __chkstk_darwin(v215);
    *(&v165 - 2) = v125;
    v129 = v191;
    Toggle.init(isOn:label:)();
    (*(v186 + 8))(v125, v187);
    (*(v206 + 32))(v200, v129, v120);
    v121 = 0;
  }

  v130 = 1;
  (v207)(v200, v121, 1, v120);
  Bindable.wrappedValue.getter();
  v131 = sub_1001057E8();

  v132 = v212;
  v210(v51, 6, v212);
  v133 = sub_100043138(v51, v131);

  v209(v51, v132);
  v134 = v181;
  v135 = v120;
  if (v133)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v201 + 104))(v203, enum case for LocalizedStringResource.BundleDescription.main(_:), v204);
    static Locale.current.getter();
    v136 = v193;
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v137 = v194;
    v138 = v213;
    Bindable.projectedValue.getter();
    swift_getKeyPath();
    v139 = v189;
    Bindable<A>.subscript.getter();

    (*(v195 + 8))(v137, v138);
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_100007710(v139, &qword_100208508);
    __chkstk_darwin(v215);
    *(&v165 - 2) = v136;
    v140 = v191;
    Toggle.init(isOn:label:)();
    (*(v186 + 8))(v136, v187);
    (*(v206 + 32))(v134, v140, v135);
    v130 = 0;
  }

  v141 = 1;
  (v207)(v134, v130, 1, v135);
  Bindable.wrappedValue.getter();
  v142 = sub_1001057E8();

  v143 = v212;
  v210(v51, 7, v212);
  v144 = sub_100043138(v51, v142);

  v209(v51, v143);
  if (v144)
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v201 + 104))(v203, enum case for LocalizedStringResource.BundleDescription.main(_:), v204);
    static Locale.current.getter();
    v145 = v134;
    v146 = v193;
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    v147 = v194;
    v148 = v213;
    Bindable.projectedValue.getter();
    swift_getKeyPath();
    v149 = v189;
    Bindable<A>.subscript.getter();

    (*(v195 + 8))(v147, v148);
    swift_getKeyPath();
    Binding.subscript.getter();

    sub_100007710(v149, &qword_100208508);
    __chkstk_darwin(v215);
    *(&v165 - 2) = v146;
    v150 = v191;
    Toggle.init(isOn:label:)();
    v151 = v146;
    v134 = v145;
    (*(v186 + 8))(v151, v187);
    (*(v206 + 32))(v178, v150, v135);
    v141 = 0;
  }

  v152 = v135;
  v153 = v178;
  (v207)(v178, v141, 1, v152);
  v154 = v179;
  sub_100006600(v188, v179, &qword_100208540);
  v155 = v180;
  sub_100006600(v196, v180, &qword_100208528);
  sub_100006600(v197, v182, &qword_100208518);
  v156 = v183;
  sub_100006600(v198, v183, &qword_100208518);
  sub_100006600(v199, v184, &qword_100208518);
  v157 = v185;
  sub_100006600(v200, v185, &qword_100208518);
  v158 = v175;
  sub_100006600(v134, v175, &qword_100208518);
  v159 = v176;
  sub_100006600(v153, v176, &qword_100208518);
  v160 = v177;
  sub_100006600(v154, v177, &qword_100208540);
  v161 = sub_100005804(&qword_100208548);
  sub_100006600(v155, v160 + v161[12], &qword_100208528);
  v162 = v182;
  sub_100006600(v182, v160 + v161[16], &qword_100208518);
  sub_100006600(v156, v160 + v161[20], &qword_100208518);
  v163 = v184;
  sub_100006600(v184, v160 + v161[24], &qword_100208518);
  sub_100006600(v157, v160 + v161[28], &qword_100208518);
  sub_100006600(v158, v160 + v161[32], &qword_100208518);
  sub_100006600(v159, v160 + v161[36], &qword_100208518);
  sub_100007710(v153, &qword_100208518);
  sub_100007710(v181, &qword_100208518);
  sub_100007710(v200, &qword_100208518);
  sub_100007710(v199, &qword_100208518);
  sub_100007710(v198, &qword_100208518);
  sub_100007710(v197, &qword_100208518);
  sub_100007710(v196, &qword_100208528);
  sub_100007710(v188, &qword_100208540);
  sub_100007710(v159, &qword_100208518);
  sub_100007710(v158, &qword_100208518);
  sub_100007710(v185, &qword_100208518);
  sub_100007710(v163, &qword_100208518);
  sub_100007710(v183, &qword_100208518);
  sub_100007710(v162, &qword_100208518);
  sub_100007710(v180, &qword_100208528);
  sub_100007710(v179, &qword_100208540);
}

__n128 sub_1000477CC@<Q0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = sub_100005804(&qword_100208508);
  __chkstk_darwin(v1);
  v3 = &v17 - v2;
  v4 = sub_100005804(&qword_100208038);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = sub_100005804(&qword_100208558);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - v10;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  (*(v5 + 8))(v7, v4);
  swift_getKeyPath();
  Binding.subscript.getter();

  sub_100007710(v3, &qword_100208508);
  v21 = v23;
  v22 = v24;
  v20 = 0x3F80000000000000;
  v19 = 1036831949;
  sub_100048DB0();
  Slider<>.init<A>(value:in:step:onEditingChanged:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v12 = v18;
  (*(v9 + 32))(v18, v11, v8);
  v13 = v12 + *(sub_100005804(&qword_100208568) + 36);
  v14 = v28;
  *(v13 + 64) = v27;
  *(v13 + 80) = v14;
  *(v13 + 96) = v29;
  v15 = v24;
  *v13 = v23;
  *(v13 + 16) = v15;
  result = v26;
  *(v13 + 32) = v25;
  *(v13 + 48) = result;
  return result;
}

uint64_t sub_100047B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_100047BE8(uint64_t a1)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for ExportSettingsView();
  if (*(a1 + *(v2 + 24)))
  {
    __chkstk_darwin(v2);
    __chkstk_darwin(v3);
    withObservationTracking<A>(_:onChange:)();
  }

  else
  {
  }
}

uint64_t sub_100047D38()
{
  v0 = type metadata accessor for DocumentConversionOptions();
  Description = v0[-1].Description;
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100005804(&qword_1002060A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v8 - v5;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100005804(&qword_100208038);
  Bindable.wrappedValue.getter();
  sub_100105724(v6);

  sub_100007710(v6, &qword_1002060A0);
  Bindable.wrappedValue.getter();
  sub_100106194(v3);

  Description[1](v3, v0);
  Bindable.wrappedValue.getter();
  sub_100105E8C();
}

uint64_t (*sub_100047F4C(uint64_t a1))()
{
  v2 = type metadata accessor for ExportSettingsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_100048398(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_100048400(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_10004858C;
}

uint64_t sub_10004803C(uint64_t a1)
{
  v2 = type metadata accessor for ExportSettingsView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005804(&unk_100206DF0);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100048398(a1, v5);
  type metadata accessor for MainActor();
  v10 = static MainActor.shared.getter();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = &protocol witness table for MainActor;
  sub_100048400(v5, v12 + v11);
  sub_10005DB88(0, 0, v8, &unk_10019C8A8, v12);
}

uint64_t sub_1000481F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004828C, v6, v5);
}

uint64_t sub_10004828C()
{
  v1 = *(v0 + 16);

  v2 = *(v1 + *(type metadata accessor for ExportSettingsView() + 24));
  if (v2)
  {
    v2();
  }

  v3 = *(v0 + 16);
  *(swift_task_alloc() + 16) = v3;
  *(swift_task_alloc() + 16) = v3;
  withObservationTracking<A>(_:onChange:)();

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100048398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExportSettingsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100048400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExportSettingsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004848C()
{
  v1 = (type metadata accessor for ExportSettingsView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_100005804(&qword_100208038);
  (*(*(v3 - 8) + 8))(v2, v3);
  if (*(v2 + v1[8]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000485A4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for ExportSettingsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_100048618()
{
  v1 = (type metadata accessor for ExportSettingsView() - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = sub_100005804(&qword_100208038);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  if (*(v0 + v2 + v1[8]))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100048720(uint64_t a1)
{
  v4 = *(type metadata accessor for ExportSettingsView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100013194;

  return sub_1000481F4(a1, v6, v7, v1 + v5);
}

unint64_t sub_100048818()
{
  result = qword_1002084D8;
  if (!qword_1002084D8)
  {
    sub_1000059D4(&qword_1002084C0);
    sub_10004889C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002084D8);
  }

  return result;
}

unint64_t sub_10004889C()
{
  result = qword_1002084E0;
  if (!qword_1002084E0)
  {
    sub_1000059D4(&qword_1002084E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002084E0);
  }

  return result;
}

uint64_t sub_100048984@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10018B4E0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000489DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocalizedStringResource();
  v5 = __chkstk_darwin(v4);
  (*(v7 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  result = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  *a2 = result;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_100048ABC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10018B4B0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100048B14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10018B480();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100048B6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10018B450();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100048BC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10018B420();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100048C1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10018B3F0();
  *a1 = result & 1;
  return result;
}

unint64_t sub_100048DB0()
{
  result = qword_100208560;
  if (!qword_100208560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208560);
  }

  return result;
}

unint64_t sub_100048E34()
{
  result = qword_100208588;
  if (!qword_100208588)
  {
    sub_1000059D4(&qword_1002060A0);
    sub_100048EE8(&qword_100208590, type metadata accessor for ExportSheetViewModel.ImageFormat);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208588);
  }

  return result;
}

uint64_t sub_100048EE8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100048F34()
{
  result = qword_1002085E0;
  if (!qword_1002085E0)
  {
    sub_1000059D4(&qword_100208498);
    sub_100048FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002085E0);
  }

  return result;
}

unint64_t sub_100048FC0()
{
  result = qword_1002085E8;
  if (!qword_1002085E8)
  {
    sub_1000059D4(&qword_100208470);
    sub_1000059D4(&qword_100208468);
    type metadata accessor for InsetGroupedListStyle();
    sub_100007888(&qword_100208488, &qword_100208468);
    swift_getOpaqueTypeConformance2();
    sub_100007888(&qword_1002085F0, &qword_100208490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002085E8);
  }

  return result;
}

uint64_t sub_100049118()
{
  type metadata accessor for Device();
  result = swift_initStaticObject();
  qword_100222470 = result;
  return result;
}

uint64_t type metadata accessor for Device()
{
  return objc_opt_self();
}

{
  return objc_opt_self();
}

__n128 _s13LoupePositionOwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t _s13LoupePositionOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s13LoupePositionOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1000491CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000491E8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

__n128 sub_100049218(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100049234(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100049254(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

void sub_10004929C(uint64_t a1@<X8>)
{
  if (*(v1 + 16) == 1)
  {
    v3 = *v1;
    v2 = v1[1];
    *(a1 + 24) = &type metadata for String;
    if (v3 | v2)
    {
      *a1 = 0x676E696C69617274;
      *(a1 + 8) = 0xE800000000000000;
    }

    else
    {
      *a1 = 0x676E696461656CLL;
      *(a1 + 8) = 0xE700000000000000;
    }
  }

  else
  {
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

BOOL sub_100049304@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100049338(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 17) = v6 & 1;
  return result;
}

BOOL sub_100049338(uint64_t a1)
{
  sub_10004946C(a1, v6);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v1 = v4 == 0x676E696461656CLL && v5 == 0xE700000000000000;
  if (v1 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (v4 == 0x676E696C69617274 && v5 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return (v3 & 1) != 0;
  }
}

uint64_t sub_10004946C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

__n128 sub_1000494C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000494DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000494FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

uint64_t *sub_100049544()
{
  if (qword_100206040 != -1)
  {
    swift_once();
  }

  return &qword_1002224B0;
}

uint64_t sub_100049594()
{
  sub_100005804(&qword_100208B40);
  type metadata accessor for UTType();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10019B3A0;
  static UTType.image.getter();
  result = static UTType.pdf.getter();
  qword_100222478 = v0;
  return result;
}

uint64_t *sub_100049660()
{
  if (qword_100206028 != -1)
  {
    swift_once();
  }

  return &qword_100222478;
}

uint64_t sub_1000496B0()
{
  if (qword_100206028 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10004970C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_100005804(&qword_100208690);
  __chkstk_darwin(v1 - 8);
  v23 = &v21 - v2;
  v3 = sub_100005804(&qword_100208290);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for LocalizedStringResource();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  type metadata accessor for DocumentEntity();
  EntityProperty.wrappedValue.getter();
  if (v25._countAndFlagsBits)
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  EntityProperty.wrappedValue.getter();
  if ((v25._object & 1) == 0)
  {
    countAndFlagsBits = v25._countAndFlagsBits;
    EntityProperty.wrappedValue.getter();
    if ((v25._object & 1) == 0)
    {
      v17 = v25._countAndFlagsBits;
      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v18._countAndFlagsBits = 0x202D206567616D49;
      v18._object = 0xE800000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v18);
      v25._countAndFlagsBits = countAndFlagsBits;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v19._countAndFlagsBits = 2127904;
      v19._object = 0xE300000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v19);
      v25._countAndFlagsBits = v17;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v20);
      LocalizedStringResource.init(stringInterpolation:)();
      goto LABEL_8;
    }
  }

LABEL_7:
  LocalizedStringResource.init(stringLiteral:)();
LABEL_8:
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v13);
  EntityProperty.wrappedValue.getter();
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v25);

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v14);
  LocalizedStringResource.init(stringInterpolation:)();
  (*(v8 + 16))(v5, v11, v7);
  (*(v8 + 56))(v5, 0, 1, v7);
  v15 = type metadata accessor for DisplayRepresentation.Image();
  (*(*(v15 - 8) + 56))(v23, 1, 1, v15);
  DisplayRepresentation.init(title:subtitle:image:)();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100049B54()
{
  type metadata accessor for DocumentEntity();
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t sub_100049B94()
{
  type metadata accessor for DocumentEntity();
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t sub_100049BD4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FileEntityIdentifier();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100049C9C(char a1)
{
  if (a1)
  {
    return 6710384;
  }

  else
  {
    return 0x6567616D69;
  }
}

uint64_t sub_100049CC8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6710384;
  }

  else
  {
    v3 = 0x6567616D69;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 6710384;
  }

  else
  {
    v5 = 0x6567616D69;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100049D64()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100049DDC()
{
  String.hash(into:)();
}

Swift::Int sub_100049E40()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100049EB4@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1001EE7D0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100049F14(uint64_t *a1@<X8>)
{
  v2 = 6710384;
  if (!*v1)
  {
    v2 = 0x6567616D69;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100049FFC(uint64_t a1)
{
  v2 = sub_100051FC4();

  return static AssistantSchemaEnum.typeDisplayRepresentation.getter(a1, v2);
}

uint64_t sub_10004A048(uint64_t a1)
{
  v2 = sub_10000585C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10004A098(uint64_t a1)
{
  v2 = sub_1000512B0();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10004A0FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000527E0;

  return sub_10004FA6C(a1);
}

uint64_t sub_10004A1C0()
{
  *(v0 + 16) = type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004A258, v2, v1);
}

uint64_t sub_10004A258()
{

  if (qword_100206040 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_10004A2F0, 0, 0);
}

uint64_t sub_10004A2F0()
{
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004A37C, v2, v1);
}

uint64_t sub_10004A37C()
{

  *(v0 + 40) = qword_1002224B0;

  return _swift_task_switch(sub_10004A3F0, 0, 0);
}

uint64_t sub_10004A3F0()
{
  *(v0 + 48) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004A47C, v2, v1);
}

uint64_t sub_10004A47C()
{

  v1 = sub_10004D640();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10004A504()
{
  *(v0 + 24) = type metadata accessor for MainActor();
  *(v0 + 32) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004A59C, v2, v1);
}

uint64_t sub_10004A59C()
{

  if (qword_100206040 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_10004A634, 0, 0);
}

uint64_t sub_10004A634()
{
  *(v0 + 40) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004A6C0, v2, v1);
}

uint64_t sub_10004A6C0()
{

  *(v0 + 48) = qword_1002224B0;

  return _swift_task_switch(sub_10004A734, 0, 0);
}

uint64_t sub_10004A734()
{
  *(v0 + 56) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004A7C0, v2, v1);
}

uint64_t sub_10004A7C0()
{
  v1 = *(v0 + 16);

  *v1 = sub_10004D640();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10004A830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_10004A8F0;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_10004A8F0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_10004A9F0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000516AC();
  *v5 = v2;
  v5[1] = sub_100013194;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_10004AAA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10002DD0C;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_10004AB5C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000527E0;

  return (sub_10004FEC4)(a1, a2);
}

uint64_t sub_10004AC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10004ACC8;

  return (sub_10004FEC4)(a2, a3);
}

uint64_t sub_10004ACC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_10004ADD8()
{
  v0 = sub_100005804(&qword_100208698);
  sub_100042A20(v0, qword_100222480);
  sub_1000429E8(v0, qword_100222480);
  type metadata accessor for DocumentEntity();
  sub_10005276C(&qword_100207218, type metadata accessor for DocumentEntity);
  return EntityQuerySortingOptions.init(content:)();
}

uint64_t sub_10004AE94()
{
  v0 = sub_100005804(&qword_100208B10);
  v1 = *(v0 - 8);
  v27 = v0;
  v28 = v1;
  v2 = v1;
  v25[0] = v1;
  __chkstk_darwin(v0);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v25 - v6;
  __chkstk_darwin(v8);
  v26 = v25 - v9;
  swift_getKeyPath();
  v10 = sub_10005276C(&qword_100207218, type metadata accessor for DocumentEntity);
  sub_100007888(&qword_100208B18, &qword_1002060C0);
  EntityQuerySortableByProperty.init<A>(_:)();
  v25[2] = type metadata accessor for DocumentEntity();
  static EntityQuerySortingOptionsBuilder.buildExpression(_:)();
  v11 = *(v2 + 8);
  v12 = v27;
  v11(v7, v27);
  swift_getKeyPath();
  sub_100007888(&qword_100208B20, &qword_1002060C8);
  v25[1] = v10;
  EntityQuerySortableByProperty.init<A>(_:)();
  static EntityQuerySortingOptionsBuilder.buildExpression(_:)();
  v13 = v12;
  v11(v4, v12);
  sub_100005804(&qword_100208B28);
  v14 = *(v28 + 72);
  v15 = v25[0];
  v16 = (*(v25[0] + 80) + 32) & ~*(v25[0] + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10019B3A0;
  v18 = v17 + v16;
  v19 = *(v15 + 16);
  v20 = v26;
  v19(v18, v26, v13);
  v21 = v18 + v14;
  v22 = v13;
  v19(v21, v7, v13);
  v23 = static EntityQuerySortingOptionsBuilder.buildBlock(_:)();

  v11(v7, v22);
  v11(v20, v22);
  return v23;
}

uint64_t sub_10004B1C0()
{
  if (qword_100206030 != -1)
  {
    swift_once();
  }

  v0 = sub_100005804(&qword_100208698);

  return sub_1000429E8(v0, qword_100222480);
}

uint64_t sub_10004B230@<X0>(uint64_t a1@<X8>)
{
  if (qword_100206030 != -1)
  {
    swift_once();
  }

  v2 = sub_100005804(&qword_100208698);
  v3 = sub_1000429E8(v2, qword_100222480);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10004B2E4()
{
  v0 = sub_100005804(&qword_1002086A0);
  sub_100042A20(v0, qword_100222498);
  sub_1000429E8(v0, qword_100222498);
  type metadata accessor for DocumentEntity();
  sub_100005804(&qword_100208988);
  sub_10005276C(&qword_100207218, type metadata accessor for DocumentEntity);
  return EntityQueryProperties.init(properties:)();
}

uint64_t sub_10004B3C4()
{
  sub_100005804(&qword_1002089C8);
  swift_getKeyPath();
  EntityQueryProperty.__allocating_init<>(_:comparators:)();
  sub_10005276C(&qword_100207218, type metadata accessor for DocumentEntity);
  v0 = static EntityQueryPropertiesBuilder.buildExpression(_:)();

  sub_100005804(&qword_1002089D0);
  swift_getKeyPath();

  EntityQueryProperty.__allocating_init<>(_:comparators:)();
  v1 = static EntityQueryPropertiesBuilder.buildExpression(_:)();

  sub_100005804(&qword_1002064F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10019A6B0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  type metadata accessor for DocumentEntity();

  sub_100005804(&qword_100208988);
  v3 = static EntityQueryPropertiesBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_10004B57C()
{
  v0 = sub_100005804(&qword_100208A58);
  v1 = *(v0 - 8);
  v2 = v1;
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v18 = &v17 - v6;
  sub_100005804(&qword_100208A60);
  swift_allocObject();
  ContainsComparator.init<>(mappingTransform:)();
  type metadata accessor for DocumentEntity();
  sub_10005276C(&qword_100207218, type metadata accessor for DocumentEntity);
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  sub_100005804(&qword_100208A68);
  swift_allocObject();
  EqualToComparator.init(mappingTransform:)();
  v7 = v4;
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  sub_100005804(&qword_100208A70);
  v8 = *(v1 + 72);
  v17 = v1;
  v9 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10019B3A0;
  v11 = v10 + v9;
  v12 = *(v2 + 16);
  v13 = v18;
  v12(v11, v18, v0);
  v12(v11 + v8, v7, v0);
  sub_100005804(&qword_1002060C0);
  sub_100005804(&qword_100208988);
  sub_100051D14();
  v14 = static EntityQueryComparatorsBuilder.buildBlock(_:)();

  v15 = *(v17 + 8);
  v15(v7, v0);
  v15(v13, v0);
  return v14;
}

uint64_t sub_10004B918@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v18 = a1;
  v19 = a2;
  v4 = sub_100005804(&qword_100208A80);
  v5 = *(v4 - 8);
  v20 = v4;
  v21 = v5;
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_100005804(&qword_1002089F8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = sub_100005804(&qword_100208A88);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  sub_100007888(&qword_100208A08, &qword_1002089F8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v9 + 8))(v11, v8);
  v22 = v18;
  v23 = v19;
  static PredicateExpressions.build_Arg<A>(_:)();
  a3[3] = sub_100005804(&qword_100208B00);
  a3[4] = sub_100052578(&qword_100208B08, &qword_100208B00);
  sub_10001CF38(a3);
  sub_100007888(&qword_100208A98, &qword_100208A88);
  sub_100007888(&qword_100208AA0, &qword_100208A80);
  sub_100022D38();
  v16 = v20;
  static PredicateExpressions.build_localizedStandardContains<A, B>(_:_:)();
  (*(v21 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_10004BCB8()
{
  type metadata accessor for DocumentEntity();

  return EntityProperty.wrappedValue.setter();
}

uint64_t sub_10004BD74@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v29 = a1;
  v30 = a2;
  v36 = a3;
  v3 = sub_100005804(&qword_100208A78);
  v4 = *(v3 - 8);
  v37 = v3;
  v38 = v4;
  __chkstk_darwin(v3);
  v35 = &v29 - v5;
  v6 = sub_100005804(&qword_100208A80);
  v7 = *(v6 - 8);
  v31 = v6;
  v32 = v7;
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  v10 = sub_100005804(&qword_1002089F8);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  v14 = sub_100005804(&qword_100208A88);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v29 - v16;
  v18 = sub_100005804(&qword_100208A90);
  v19 = *(v18 - 8);
  v33 = v18;
  v34 = v19;
  __chkstk_darwin(v18);
  v21 = &v29 - v20;
  sub_100007888(&qword_100208A08, &qword_1002089F8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v11 + 8))(v13, v10);
  v39 = v29;
  v40 = v30;
  static PredicateExpressions.build_Arg<A>(_:)();
  sub_100007888(&qword_100208A98, &qword_100208A88);
  sub_100007888(&qword_100208AA0, &qword_100208A80);
  sub_100022D38();
  v22 = v31;
  static PredicateExpressions.build_caseInsensitiveCompare<A, B>(_:_:)();
  (*(v32 + 8))(v9, v22);
  (*(v15 + 8))(v17, v14);
  v39 = 0;
  type metadata accessor for ComparisonResult(0);
  v23 = v35;
  static PredicateExpressions.build_Arg<A>(_:)();
  v24 = sub_100005804(&qword_100208AA8);
  v25 = v36;
  v36[3] = v24;
  v25[4] = sub_1000524C0();
  sub_10001CF38(v25);
  sub_100007888(&qword_100208AE8, &qword_100208A90);
  sub_100007888(&qword_100208AF0, &qword_100208A78);
  sub_10005276C(&qword_100208AF8, type metadata accessor for ComparisonResult);
  v26 = v33;
  v27 = v37;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v38 + 8))(v23, v27);
  return (*(v34 + 8))(v21, v26);
}

uint64_t sub_10004C2FC()
{
  v0 = sub_100005804(&qword_1002089D8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_100005804(&qword_1002089E0);
  swift_allocObject();
  EqualToComparator.init(mappingTransform:)();
  type metadata accessor for DocumentEntity();
  sub_10005276C(&qword_100207218, type metadata accessor for DocumentEntity);
  static EntityQueryComparatorsBuilder.buildExpression(_:)();

  sub_100005804(&qword_1002089E8);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10019A9F0;
  (*(v1 + 16))(v5 + v4, v3, v0);
  sub_100005804(&qword_1002060C8);
  sub_100005804(&qword_100208988);
  sub_100051258();
  v6 = static EntityQueryComparatorsBuilder.buildBlock(_:)();

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_10004C5C0@<X0>(int a1@<W1>, uint64_t *a2@<X8>)
{
  v18 = a1;
  v3 = sub_100005804(&qword_1002089F0);
  v4 = *(v3 - 8);
  v19 = v3;
  v20 = v4;
  __chkstk_darwin(v3);
  v6 = &v17[-v5];
  v7 = sub_100005804(&qword_1002089F8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17[-v9];
  v11 = sub_100005804(&qword_100208A00);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17[-v13];
  sub_100007888(&qword_100208A08, &qword_1002089F8);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v8 + 8))(v10, v7);
  v21 = v18 & 1;
  static PredicateExpressions.build_Arg<A>(_:)();
  a2[3] = sub_100005804(&qword_100208A10);
  a2[4] = sub_100052248();
  sub_10001CF38(a2);
  sub_100007888(&qword_100208A48, &qword_100208A00);
  sub_100007888(&qword_100208A50, &qword_1002089F0);
  sub_10005103C();
  v15 = v19;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v20 + 8))(v6, v15);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_10004C934@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for DocumentEntity();
  result = EntityProperty.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10004C9D8()
{
  if (qword_100206038 != -1)
  {
    swift_once();
  }

  v0 = sub_100005804(&qword_1002086A0);

  return sub_1000429E8(v0, qword_100222498);
}

uint64_t sub_10004CA48@<X0>(uint64_t a1@<X8>)
{
  if (qword_100206038 != -1)
  {
    swift_once();
  }

  v2 = sub_100005804(&qword_1002086A0);
  v3 = sub_1000429E8(v2, qword_100222498);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10004CAFC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1000527E0;

  return sub_1000504B8(a1, a2 & 1, a3, a4, a5 & 1);
}

uint64_t sub_10004CBD4@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = type metadata accessor for String.StandardComparator();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  sub_100005804(&qword_100208990);
  EntityQuerySort.order.getter();
  type metadata accessor for DocumentEntity();
  sub_10005276C(&qword_100207218, type metadata accessor for DocumentEntity);
  static EntityQuerySort.Ordering.== infix(_:_:)();
  v8 = EntityQuerySort.by.getter();
  KeyPath = swift_getKeyPath();
  v13 = v8;
  sub_100005804(&qword_1002089C0);

  v9 = dispatch thunk of static Equatable.== infix(_:_:)();

  if (v9 & 1) != 0 || (KeyPath = swift_getKeyPath(), v13 = v8, , v10 = dispatch thunk of static Equatable.== infix(_:_:)(), , , (v10))
  {

    swift_getKeyPath();
    static String.StandardComparator.localizedStandard.getter();
    (*(v2 + 16))(v4, v7, v1);
    SortDescriptor.init(_:comparator:order:)();
    return (*(v2 + 8))(v7, v1);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10004CEBC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for DocumentEntity();
    return a2;
  }

  return result;
}

uint64_t sub_10004CF54(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_1000527C0;

  return sub_1000504B8(a2, a3 & 1, a4, a5, a6 & 1);
}

unint64_t sub_10004D030()
{
  type metadata accessor for DocumentEntityResolver();
  v0 = swift_allocObject();
  result = sub_100005600(&_swiftEmptyArrayStorage);
  *(v0 + 16) = result;
  qword_1002224B0 = v0;
  return result;
}

uint64_t sub_10004D078()
{
  if (qword_100206040 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10004D0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a3;
  v7 = type metadata accessor for FileEntityIdentifier();
  v18 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v19 = a2;
  v15 = sub_1001429C4(ObjectType, a2);
  sub_1001830A4();

  v16 = v22[6];
  static FileEntityIdentifier.file(url:)();
  if (v16)
  {
    return (*(v11 + 8))(v13, v10);
  }

  (*(v11 + 8))(v13, v10);
  (*(v18 + 16))(v9, a4, v7);
  v21[0] = a1;
  v21[1] = v19;
  sub_100012F6C(v20, v22);
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_10004D300(v21, v9);
  return swift_endAccess();
}

uint64_t sub_10004D300(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = *(a1 + 16);
    v10[0] = *a1;
    v10[1] = v4;
    v10[2] = *(a1 + 32);
    v11 = *(a1 + 48);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_10004F18C(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = type metadata accessor for FileEntityIdentifier();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_100007710(a1, &qword_1002086A8);
    sub_10004E964(a2, v10);
    v8 = type metadata accessor for FileEntityIdentifier();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_100007710(v10, &qword_1002086A8);
  }

  return result;
}

uint64_t sub_10004D42C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for FileEntityIdentifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ObjectType = swift_getObjectType();
  v13 = sub_1001429C4(ObjectType, a2);
  sub_1001830A4();

  static FileEntityIdentifier.file(url:)();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  sub_10004E964(v11, v16);
  sub_100007710(v16, &qword_1002086A8);
  swift_endAccess();
  return (*(v9 + 8))(v11, v8);
}

void *sub_10004D640()
{
  v1 = sub_100005804(&qword_100208B30);
  __chkstk_darwin(v1 - 8);
  v3 = &v26 - v2;
  v34 = type metadata accessor for DocumentEntity();
  v4 = *(v34 - 8);
  __chkstk_darwin(v34);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v26 = &v26 - v7;
  v8 = type metadata accessor for FileEntityIdentifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v0 + 16);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v32 = v9 + 16;
  v33 = v9;
  v27 = v4;
  v30 = (v4 + 48);
  v31 = (v9 + 8);
  v35 = v12;
  swift_bridgeObjectRetain_n();
  v36 = v0;
  result = swift_retain_n();
  v19 = 0;
  v29 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v20 = v19;
    if (!v16)
    {
      break;
    }

LABEL_8:
    (*(v33 + 16))(v11, *(v35 + 48) + *(v33 + 72) * (__clz(__rbit64(v16)) | (v19 << 6)), v8);
    type metadata accessor for MainActor();
    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v16 &= v16 - 1;
    sub_10004DA90(v11, v3);

    (*v31)(v11, v8);
    if ((*v30)(v3, 1, v34) == 1)
    {
      result = sub_100007710(v3, &qword_100208B30);
    }

    else
    {
      v21 = v26;
      sub_10004287C(v3, v26);
      sub_10004287C(v21, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_10004E78C(0, v29[2] + 1, 1, v29);
      }

      v23 = v29[2];
      v22 = v29[3];
      if (v23 >= v22 >> 1)
      {
        v29 = sub_10004E78C(v22 > 1, v23 + 1, 1, v29);
      }

      v24 = v28;
      v25 = v29;
      v29[2] = v23 + 1;
      result = sub_10004287C(v24, v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23);
    }
  }

  while (1)
  {
    v19 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      return v29;
    }

    v16 = *(v13 + 8 * v19);
    ++v20;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004DA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v46 - v10;
  v12 = type metadata accessor for DocumentEntity();
  v13 = *(v12 - 1);
  __chkstk_darwin(v12);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v16 = *(v2 + 16);
  if (!*(v16 + 16))
  {
    goto LABEL_8;
  }

  v17 = sub_10008BD28(a1);
  if ((v18 & 1) == 0)
  {

LABEL_8:
    v59 = 0;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    goto LABEL_9;
  }

  sub_100051F54(*(v16 + 56) + 56 * v17, &v56);

  if (!v56)
  {
LABEL_9:
    sub_100007710(&v56, &qword_1002086A8);
    v43 = 1;
    return (*(v13 + 56))(a2, v43, 1, v12);
  }

  v47 = a2;
  v50 = *(&v56 + 1);
  v51 = v6;
  v53 = v56;
  swift_unknownObjectRetain();
  sub_100007710(&v56, &qword_1002086A8);
  v19 = type metadata accessor for FileEntityIdentifier();
  (*(*(v19 - 8) + 16))(v15, a1, v19);
  sub_100005804(&qword_1002060C0);
  v20 = EntityProperty<>.init()();
  v49 = v20;
  sub_100005804(&qword_1002060C8);
  sub_10000585C();
  v21 = EntityProperty<>.init()();
  v48 = v21;
  sub_100005804(&qword_1002060D8);
  v22 = EntityProperty<>.init()();
  v23 = EntityProperty<>.init()();
  *&v15[v12[5]] = v20;
  *&v15[v12[6]] = v21;
  v24 = v12[7];
  v46[2] = v22;
  *&v15[v24] = v22;
  v25 = v12[8];
  v46[1] = v23;
  v52 = v15;
  *&v15[v25] = v23;
  ObjectType = swift_getObjectType();
  v27 = v50;
  sub_1001429D8(ObjectType, v50);
  static UTType.pdf.getter();
  v28 = UTType.conforms(to:)();
  v29 = *(v51 + 8);
  v29(v8, v5);
  v29(v11, v5);
  v30 = v53;
  LOBYTE(v56) = v28 & 1;
  EntityProperty.wrappedValue.setter();
  v31 = sub_1001429C4(ObjectType, v27);
  v32 = [v31 localizedName];

  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  *&v56 = v33;
  *(&v56 + 1) = v35;
  EntityProperty.wrappedValue.setter();
  v54 = v30;
  v55 = v27;
  swift_unknownObjectRetain();
  sub_100005804(&unk_1002074D0);
  sub_100005804(&qword_100208958);
  if (!swift_dynamicCast())
  {
    swift_unknownObjectRelease();
    *&v58 = 0;
    v56 = 0u;
    v57 = 0u;
    sub_100007710(&v56, &qword_100208960);
    goto LABEL_12;
  }

  v36 = *(&v57 + 1);
  v37 = v58;
  sub_100008638(&v56, *(&v57 + 1));
  v38 = COERCE_DOUBLE(sub_1001760EC(v36, v37));
  v40 = v39;
  LOBYTE(v37) = v41;
  result = sub_10000867C(&v56);
  if (v37)
  {
    swift_unknownObjectRelease();
LABEL_12:
    a2 = v47;
    v44 = v52;
LABEL_20:
    sub_10004287C(v44, a2);
    v43 = 0;
    return (*(v13 + 56))(a2, v43, 1, v12);
  }

  v45 = v52;
  if ((~*&v38 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v38 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *&v56 = v38;
  BYTE8(v56) = 0;
  result = EntityProperty.wrappedValue.setter();
  a2 = v47;
  if ((~*&v40 & 0x7FF0000000000000) == 0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v40 < 9.22337204e18)
  {
    *&v56 = v40;
    BYTE8(v56) = 0;
    EntityProperty.wrappedValue.setter();
    swift_unknownObjectRelease();
    v44 = v45;
    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
  return result;
}

double sub_10004E01C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (!*(v5 + 16))
  {
    goto LABEL_6;
  }

  v6 = sub_10008BD28(a1);
  if ((v7 & 1) == 0)
  {

LABEL_6:
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    v9 = 0u;
    goto LABEL_7;
  }

  sub_100051F54(*(v5 + 56) + 56 * v6, &v9);

  if (v9)
  {
    sub_100012F6C(v10, a2);
    sub_100007710(&v9, &qword_1002086A8);
    return result;
  }

LABEL_7:
  sub_100007710(&v9, &qword_1002086A8);
  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_10004E130()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10004E168()
{
  v0 = type metadata accessor for AssistantSchema.EntitySchema();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  __chkstk_darwin(v2);
  v4 = &v7 - v3;
  v5 = type metadata accessor for AssistantSchema();
  sub_100042A20(v5, qword_1002224B8);
  sub_1000429E8(v5, qword_1002224B8);
  AssistantSchema.EntitySchema.init(_:)();
  AssistantSchema.EntitySchema.init(_:)();
  (*(v1 + 8))(v4, v0);
  return AssistantSchema.init<A>(_:)();
}

uint64_t sub_10004E2BC()
{
  if (qword_100206048 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for AssistantSchema();

  return sub_1000429E8(v0, qword_1002224B8);
}

uint64_t sub_10004E320@<X0>(uint64_t a1@<X8>)
{
  if (qword_100206048 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for AssistantSchema();
  v3 = sub_1000429E8(v2, qword_1002224B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10004E3CC(uint64_t a1)
{
  v2 = sub_10005276C(&qword_100208968, type metadata accessor for DocumentEntity);

  return static AssistantSchemaEntity.typeDisplayRepresentation.getter(a1, v2);
}

uint64_t sub_10004E448(uint64_t a1)
{
  v2 = sub_10005276C(&qword_100207218, type metadata accessor for DocumentEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10004E4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100013194;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10004E58C(uint64_t a1)
{
  v2 = sub_10005276C(&qword_100208770, type metadata accessor for DocumentEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t type metadata accessor for DocumentEntity()
{
  result = qword_1002087F8;
  if (!qword_1002087F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_10004E658(void *result, int64_t a2, char a3, void *a4)
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
    sub_100005804(&qword_100208B48);
    v10 = swift_allocObject();
    v11 = j_j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      j__memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100005804(&unk_100206368);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_10004E78C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100005804(&qword_100208B38);
  v10 = *(type metadata accessor for DocumentEntity() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j_j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for DocumentEntity() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

double sub_10004E964@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_10008BD28(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10004F430();
      v9 = v15;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for FileEntityIdentifier();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56) + 56 * v7;
    v13 = *(v12 + 16);
    *a2 = *v12;
    *(a2 + 16) = v13;
    *(a2 + 32) = *(v12 + 32);
    *(a2 + 48) = *(v12 + 48);
    sub_10004EE60(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_10004EA5C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for FileEntityIdentifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_100005804(&qword_1002061F0);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v50 = v8;
    v51 = v5;
    v43 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v44 = (v6 + 16);
    v45 = v6;
    v48 = (v6 + 32);
    v18 = result + 64;
    v46 = v9;
    while (v16)
    {
      v24 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v27 = v24 | (v12 << 6);
      v28 = *(v9 + 48);
      v49 = *(v6 + 72);
      v29 = v28 + v49 * v27;
      if (v47)
      {
        (*v48)(v50, v29, v51);
        v30 = *(v9 + 56) + 56 * v27;
        v32 = *(v30 + 16);
        v31 = *(v30 + 32);
        v33 = *v30;
        v55 = *(v30 + 48);
        v53 = v32;
        v54 = v31;
        v52 = v33;
      }

      else
      {
        (*v44)(v50, v29, v51);
        sub_100051F54(*(v9 + 56) + 56 * v27, &v52);
      }

      sub_10005276C(&qword_100208778, &type metadata accessor for FileEntityIdentifier);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v11 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v18 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        v6 = v45;
        v9 = v46;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v18 + 8 * v36);
          if (v40 != -1)
          {
            v19 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v35) & ~*(v18 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
      v6 = v45;
      v9 = v46;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v48)(*(v11 + 48) + v49 * v19, v50, v51);
      v20 = *(v11 + 56) + 56 * v19;
      v21 = v55;
      v23 = v53;
      v22 = v54;
      *v20 = v52;
      *(v20 + 16) = v23;
      *(v20 + 32) = v22;
      *(v20 + 48) = v21;
      ++*(v11 + 16);
    }

    v25 = v12;
    while (1)
    {
      v12 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v26 = v13[v12];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v16 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v9 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      j__bzero(v13, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v41;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_10004EE60(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for FileEntityIdentifier();
  v4 = *(v43 - 8);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v44 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v43;
    v6 = v44;
    v14 = v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v40 = (v12 + 1) & v11;
    v41 = v16;
    v17 = *(v15 + 56);
    v38 = (v15 - 8);
    v39 = a2 + 64;
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v42;
      v21 = v14;
      v22 = v15;
      v41(v42, *(v6 + 48) + v17 * v10, v13);
      sub_10005276C(&qword_100208778, &type metadata accessor for FileEntityIdentifier);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v6 = v44;
          v27 = *(v44 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v44;
            v17 = v18;
            v14 = v21;
            v8 = v39;
          }

          else
          {
            v8 = v39;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v44;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = v28 + 56 * a1;
          v30 = (v28 + 56 * v10);
          if (a1 != v10 || v29 >= v30 + 56)
          {
            v31 = *v30;
            v32 = v30[1];
            v33 = v30[2];
            *(v29 + 48) = *(v30 + 6);
            *(v29 + 16) = v32;
            *(v29 + 32) = v33;
            *v29 = v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v39;
      v17 = v18;
      v6 = v44;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v6 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v36;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_10004F18C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for FileEntityIdentifier();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10008BD28(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10004F430();
      goto LABEL_7;
    }

    sub_10004EA5C(v17, a3 & 1);
    v23 = sub_10008BD28(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10004F35C(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 56 * v14;

  return sub_100052018(a1, v21);
}

uint64_t sub_10004F35C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for FileEntityIdentifier();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 56 * a1;
  *(v11 + 48) = *(a3 + 48);
  v12 = *(a3 + 32);
  *(v11 + 16) = *(a3 + 16);
  *(v11 + 32) = v12;
  *v11 = *a3;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *sub_10004F430()
{
  v1 = v0;
  v33 = type metadata accessor for FileEntityIdentifier();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005804(&qword_1002061F0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v29 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = j__memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v21 = v32;
        v22 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v18 *= 56;
        sub_100051F54(*(v3 + 56) + v18, v37);
        v23 = v34;
        result = (*(v19 + 32))(*(v34 + 48) + v20, v21, v22);
        v24 = *(v23 + 56) + v18;
        v25 = v38;
        v26 = v37[2];
        v27 = v37[1];
        *v24 = v37[0];
        *(v24 + 16) = v27;
        *(v24 + 32) = v26;
        *(v24 + 48) = v25;
        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

unint64_t sub_10004F6CC()
{
  v0 = sub_100005804(&qword_100208690);
  __chkstk_darwin(v0 - 8);
  v2 = v18 - v1;
  v3 = sub_100005804(&qword_100208290);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = type metadata accessor for LocalizedStringResource();
  v19 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_100005804(&qword_100208970);
  v8 = sub_100005804(&qword_1002061D8);
  v9 = *(v8 - 8);
  v21 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10019B3A0;
  v18[1] = *(v8 + 48);
  *(v11 + v10) = 0;
  LocalizedStringResource.init(stringLiteral:)();
  v12 = *(v7 + 56);
  v18[2] = v7 + 56;
  v20 = v12;
  v12(v5, 1, 1, v6);
  DisplayRepresentation.Image.init(systemName:isTemplate:)();
  v13 = type metadata accessor for DisplayRepresentation.Image();
  v14 = *(*(v13 - 8) + 56);
  v14(v2, 0, 1, v13);
  DisplayRepresentation.init(title:subtitle:image:)();
  v15 = (v11 + v10 + v21);
  v21 = *(v8 + 48);
  *v15 = 1;
  LocalizedStringResource.init(stringLiteral:)();
  v20(v5, 1, 1, v19);
  DisplayRepresentation.Image.init(systemName:isTemplate:)();
  v14(v2, 0, 1, v13);
  DisplayRepresentation.init(title:subtitle:image:)();
  v16 = sub_100005E98(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v16;
}

uint64_t sub_10004FA6C(uint64_t a1)
{
  v1[2] = a1;
  sub_100005804(&qword_100208B30);
  v1[3] = swift_task_alloc();
  v2 = type metadata accessor for DocumentEntity();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for FileEntityIdentifier();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = type metadata accessor for MainActor();
  v1[11] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004FBF8, v5, v4);
}

uint64_t sub_10004FBF8()
{
  v1 = v0[2];

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v4 = *(v3 + 16);
    v3 += 16;
    v20 = v4;
    v5 = v0[2] + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v19 = (v3 - 8);
    v6 = &_swiftEmptyArrayStorage;
    v18 = (v0[5] + 48);
    v16 = v0[5];
    v17 = *(v3 + 56);
    do
    {
      v20(v0[9], v5, v0[7]);
      static MainActor.shared.getter();
      dispatch thunk of Actor.unownedExecutor.getter();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (qword_100206040 != -1)
      {
        swift_once();
      }

      v7 = v0[9];
      v8 = v0[7];
      v10 = v0[3];
      v9 = v0[4];
      sub_10004DA90(v7, v10);
      (*v19)(v7, v8);

      if ((*v18)(v10, 1, v9) == 1)
      {
        sub_100007710(v0[3], &qword_100208B30);
      }

      else
      {
        sub_10004287C(v0[3], v0[6]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_10004E78C(0, v6[2] + 1, 1, v6);
        }

        v12 = v6[2];
        v11 = v6[3];
        if (v12 >= v11 >> 1)
        {
          v6 = sub_10004E78C(v11 > 1, v12 + 1, 1, v6);
        }

        v13 = v0[6];
        v6[2] = v12 + 1;
        sub_10004287C(v13, v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v12);
      }

      v5 += v17;
      --v2;
    }

    while (v2);
  }

  else
  {
    v6 = &_swiftEmptyArrayStorage;
  }

  v14 = v0[1];

  return v14(v6);
}

uint64_t sub_10004FEC4(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = type metadata accessor for DocumentEntity();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10004FF90, 0, 0);
}

uint64_t sub_10004FF90()
{
  *(v0 + 112) = type metadata accessor for MainActor();
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100050028, v2, v1);
}

uint64_t sub_100050028()
{

  if (qword_100206040 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_1000500C0, 0, 0);
}

uint64_t sub_1000500C0()
{
  *(v0 + 128) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005014C, v2, v1);
}

uint64_t sub_10005014C()
{

  *(v0 + 136) = qword_1002224B0;

  return _swift_task_switch(sub_1000501C0, 0, 0);
}

uint64_t sub_1000501C0()
{
  *(v0 + 144) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10005024C, v2, v1);
}

uint64_t sub_10005024C()
{

  *(v0 + 152) = sub_10004D640();

  return _swift_task_switch(sub_1000502BC, 0, 0);
}

void sub_1000502BC()
{
  v1 = v0[19];
  v15 = *(v1 + 16);
  if (v15)
  {
    v2 = 0;
    v14 = v0[11];
    while (v2 < *(v1 + 16))
    {
      v4 = v0[8];
      v3 = v0[9];
      v5 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v6 = *(v14 + 72);
      sub_100042818(v0[19] + v5 + v6 * v2, v0[13]);
      EntityProperty.wrappedValue.getter();
      v7 = v0[3];
      v0[4] = v0[2];
      v0[5] = v7;
      v0[6] = v4;
      v0[7] = v3;
      sub_100022D38();
      v8 = StringProtocol.localizedStandardContains<A>(_:)();

      v9 = v0[13];
      if (v8)
      {
        sub_10004287C(v9, v0[12]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000B62DC(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_1000B62DC(v10 > 1, v11 + 1, 1);
        }

        v12 = v0[12];
        _swiftEmptyArrayStorage[2] = v11 + 1;
        sub_10004287C(v12, _swiftEmptyArrayStorage + v5 + v11 * v6);
      }

      else
      {
        sub_1000428E0(v9);
      }

      if (v15 == ++v2)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v13 = v0[1];

    v13(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000504B8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 201) = a5;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  *(v5 + 200) = a2;
  *(v5 + 40) = a1;
  v6 = sub_100005804(&qword_100208980);
  *(v5 + 64) = v6;
  *(v5 + 72) = *(v6 - 8);
  *(v5 + 80) = swift_task_alloc();
  v7 = type metadata accessor for String.StandardComparator();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = *(type metadata accessor for DocumentEntity() - 8);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_100050668, 0, 0);
}

uint64_t sub_100050668()
{
  *(v0 + 152) = type metadata accessor for MainActor();
  *(v0 + 160) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100050700, v2, v1);
}

uint64_t sub_100050700()
{

  if (qword_100206040 != -1)
  {
    swift_once();
  }

  return _swift_task_switch(sub_100050798, 0, 0);
}

uint64_t sub_100050798()
{
  *(v0 + 168) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100050824, v2, v1);
}

uint64_t sub_100050824()
{

  *(v0 + 176) = qword_1002224B0;

  return _swift_task_switch(sub_100050898, 0, 0);
}

uint64_t sub_100050898()
{
  *(v0 + 184) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100050924, v2, v1);
}

uint64_t sub_100050924()
{

  *(v0 + 192) = sub_10004D640();

  return _swift_task_switch(sub_100050994, 0, 0);
}

uint64_t sub_100050994()
{
  v50 = v1;
  v2 = *(v1 + 192);
  v3 = &_swiftEmptyArrayStorage;
  v44 = *(v2 + 16);
  if (v44)
  {
    v4 = 0;
    v41 = *(v1 + 40);
    v42 = *(v1 + 120);
    v5 = &_swiftEmptyArrayStorage;
    v43 = *(v1 + 192);
    while (v4 < *(v2 + 16))
    {
      v45 = *(v42 + 72);
      v47 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      sub_100042818(*(v1 + 192) + v47 + v45 * v4, *(v1 + 144));
      v6 = *(v41 + 16);
      if (v6)
      {
        v7 = *(v1 + 40);
        v8 = *(sub_100005804(&qword_100208988) - 8);
        v0 = (v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)));
        v9 = *(v8 + 72);
        do
        {
          v10 = *(v1 + 136);
          sub_100042818(*(v1 + 144), v10);
          *(v1 + 16) = v10;
          v11 = Predicate.evaluate(_:)();
          v3 = *(v1 + 136);
          sub_1000428E0(v3);
          if (v11)
          {
            if (static EntityQueryComparatorMode.== infix(_:_:)())
            {
              goto LABEL_14;
            }
          }

          else if (static EntityQueryComparatorMode.== infix(_:_:)())
          {
            goto LABEL_3;
          }

          v0 = (v0 + v9);
          --v6;
        }

        while (v6);
      }

      if (static EntityQueryComparatorMode.== infix(_:_:)())
      {
LABEL_14:
        sub_10004287C(*(v1 + 144), *(v1 + 128));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49[0] = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v0 = v49;
          sub_1000B62DC(0, v5[2] + 1, 1);
          v5 = v49[0];
        }

        v14 = v5[2];
        v13 = v5[3];
        v3 = (v14 + 1);
        if (v14 >= v13 >> 1)
        {
          v0 = v49;
          sub_1000B62DC(v13 > 1, v14 + 1, 1);
          v5 = v49[0];
        }

        v15 = *(v1 + 128);
        v5[2] = v3;
        sub_10004287C(v15, v5 + v47 + v14 * v45);
      }

      else
      {
LABEL_3:
        sub_1000428E0(*(v1 + 144));
      }

      ++v4;
      v2 = v43;
      if (v4 == v44)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  v5 = &_swiftEmptyArrayStorage;
LABEL_21:
  v48 = v5;
  v16 = *(v1 + 48);

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = *(v1 + 72);
    v19 = *(v1 + 48);
    v49[0] = &_swiftEmptyArrayStorage;
    sub_1000B62FC(0, v17, 0);
    v20 = v49[0];
    v21 = *(sub_100005804(&qword_100208990) - 8);
    v22 = v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v23 = *(v21 + 72);
    do
    {
      sub_10004CBD4(*(v1 + 80));
      v49[0] = v20;
      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1000B62FC(v24 > 1, v25 + 1, 1);
        v20 = v49[0];
      }

      v26 = *(v1 + 80);
      v27 = *(v1 + 64);
      *(v20 + 16) = v25 + 1;
      (*(v18 + 32))(v20 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v25, v26, v27);
      v22 += v23;
      --v17;
    }

    while (v17);
  }

  else
  {
    v29 = *(v1 + 104);
    v28 = *(v1 + 112);
    v31 = *(v1 + 88);
    v30 = *(v1 + 96);
    sub_100005804(&qword_1002089B8);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10019A9F0;
    swift_getKeyPath();
    static String.StandardComparator.localizedStandard.getter();
    (*(v30 + 16))(v29, v28, v31);
    SortDescriptor.init(_:comparator:order:)();
    (*(v30 + 8))(v28, v31);
  }

  v46 = *(v1 + 201);
  *(v1 + 24) = v48;
  *(v1 + 32) = v20;
  sub_100005804(&qword_1002082F8);
  sub_100005804(&qword_100208998);
  sub_100007888(&qword_1002089A0, &qword_1002082F8);
  sub_100007888(&qword_1002089A8, &qword_100208998);
  sub_100007888(&qword_1002089B0, &qword_100208980);
  v32 = Sequence.sorted<A, B>(using:)();

  if ((v46 & 1) == 0)
  {
    v0 = sub_10004CEBC(*(v1 + 56), v32);
    if ((v35 & 1) == 0)
    {
LABEL_30:
      sub_1000B6048(v0, v33, v34, v35);
      v32 = v36;
LABEL_37:
      swift_unknownObjectRelease();
      goto LABEL_38;
    }

    v4 = v35;
    v5 = v34;
    v3 = v33;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v37 = swift_dynamicCastClass();
    if (!v37)
    {
      swift_unknownObjectRelease();
      v37 = &_swiftEmptyArrayStorage;
    }

    v38 = v37[2];

    if (!__OFSUB__(v4 >> 1, v5))
    {
      if (v38 == (v4 >> 1) - v5)
      {
        v32 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v32)
        {
          goto LABEL_38;
        }

        v32 = &_swiftEmptyArrayStorage;
        goto LABEL_37;
      }

      goto LABEL_43;
    }

LABEL_42:
    __break(1u);
LABEL_43:
    swift_unknownObjectRelease();
    v35 = v4;
    v34 = v5;
    v33 = v3;
    goto LABEL_30;
  }

LABEL_38:

  v39 = *(v1 + 8);

  return v39(v32);
}

unint64_t sub_10005103C()
{
  result = qword_1002086B0;
  if (!qword_1002086B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002086B0);
  }

  return result;
}

unint64_t sub_100051094()
{
  result = qword_1002086B8;
  if (!qword_1002086B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002086B8);
  }

  return result;
}

unint64_t sub_1000510EC()
{
  result = qword_1002086C0;
  if (!qword_1002086C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002086C0);
  }

  return result;
}

unint64_t sub_100051144()
{
  result = qword_1002086C8;
  if (!qword_1002086C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002086C8);
  }

  return result;
}

unint64_t sub_1000511A8()
{
  result = qword_1002086D0;
  if (!qword_1002086D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002086D0);
  }

  return result;
}

unint64_t sub_100051200()
{
  result = qword_1002086D8;
  if (!qword_1002086D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002086D8);
  }

  return result;
}

unint64_t sub_100051258()
{
  result = qword_1002086E0;
  if (!qword_1002086E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002086E0);
  }

  return result;
}

unint64_t sub_1000512B0()
{
  result = qword_1002086E8;
  if (!qword_1002086E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002086E8);
  }

  return result;
}

unint64_t sub_100051358()
{
  result = qword_1002086F0;
  if (!qword_1002086F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002086F0);
  }

  return result;
}

unint64_t sub_1000513B0()
{
  result = qword_1002086F8;
  if (!qword_1002086F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002086F8);
  }

  return result;
}

unint64_t sub_100051408()
{
  result = qword_100208700;
  if (!qword_100208700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208700);
  }

  return result;
}

unint64_t sub_1000514EC()
{
  result = qword_100208718;
  if (!qword_100208718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208718);
  }

  return result;
}

unint64_t sub_100051544()
{
  result = qword_100208720;
  if (!qword_100208720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208720);
  }

  return result;
}

unint64_t sub_10005159C()
{
  result = qword_100208728;
  if (!qword_100208728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208728);
  }

  return result;
}

unint64_t sub_1000515F4()
{
  result = qword_100208730;
  if (!qword_100208730)
  {
    sub_1000059D4(&qword_1002082F8);
    sub_10005276C(&qword_100208308, type metadata accessor for DocumentEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208730);
  }

  return result;
}

unint64_t sub_1000516AC()
{
  result = qword_100208738;
  if (!qword_100208738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208738);
  }

  return result;
}

unint64_t sub_100051A24()
{
  result = qword_100208798;
  if (!qword_100208798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208798);
  }

  return result;
}

uint64_t sub_100051A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FileEntityIdentifier();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100051B60(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FileEntityIdentifier();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_100051C18()
{
  type metadata accessor for FileEntityIdentifier();
  if (v0 <= 0x3F)
  {
    sub_100051D68(319, &qword_100208808, sub_100051D14);
    if (v1 <= 0x3F)
    {
      sub_100051D68(319, &qword_100208818, sub_100051258);
      if (v2 <= 0x3F)
      {
        sub_100051DC8();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_100051D14()
{
  result = qword_100208810;
  if (!qword_100208810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208810);
  }

  return result;
}

void sub_100051D68(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for EntityProperty();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100051DC8()
{
  if (!qword_100208820)
  {
    sub_1000059D4(&qword_1002071A8);
    sub_100051E38();
    v0 = type metadata accessor for EntityProperty();
    if (!v1)
    {
      atomic_store(v0, &qword_100208820);
    }
  }
}

unint64_t sub_100051E38()
{
  result = qword_100208828;
  if (!qword_100208828)
  {
    sub_1000059D4(&qword_1002071A8);
    sub_100051EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208828);
  }

  return result;
}

unint64_t sub_100051EBC()
{
  result = qword_100208830;
  if (!qword_100208830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208830);
  }

  return result;
}

uint64_t sub_100051F54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_100208950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100051FC4()
{
  result = qword_100208978;
  if (!qword_100208978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208978);
  }

  return result;
}

uint64_t sub_100052018(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&qword_100208950);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100052088@<X0>(void *a1@<X8>)
{
  type metadata accessor for DocumentEntity();
  result = EntityProperty.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000520E0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DocumentEntity();
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100052124@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DocumentEntity();
  result = EntityProperty.projectedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100052168@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for DocumentEntity();
  result = EntityProperty.wrappedValue.getter();
  *a1 = v3;
  return result;
}

_BYTE *sub_10005220C@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X8>)
{
  v2 = 6710384;
  if (!*result)
  {
    v2 = 0x6567616D69;
  }

  v3 = 0xE500000000000000;
  if (*result)
  {
    v3 = 0xE300000000000000;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

unint64_t sub_100052248()
{
  result = qword_100208A18;
  if (!qword_100208A18)
  {
    sub_1000059D4(&qword_100208A10);
    sub_1000522EC(&qword_100208A20, &qword_100208A00);
    sub_100052384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208A18);
  }

  return result;
}

uint64_t sub_1000522EC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000059D4(a2);
    sub_100007888(&qword_100208A28, &qword_1002089F8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100052384()
{
  result = qword_100208A30;
  if (!qword_100208A30)
  {
    sub_1000059D4(&qword_1002089F0);
    sub_100052410();
    sub_100052464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208A30);
  }

  return result;
}

unint64_t sub_100052410()
{
  result = qword_100208A38;
  if (!qword_100208A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208A38);
  }

  return result;
}

unint64_t sub_100052464()
{
  result = qword_100208A40;
  if (!qword_100208A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208A40);
  }

  return result;
}

unint64_t sub_1000524C0()
{
  result = qword_100208AB0;
  if (!qword_100208AB0)
  {
    sub_1000059D4(&qword_100208AA8);
    sub_100052578(&qword_100208AB8, &qword_100208A90);
    sub_100052684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208AB0);
  }

  return result;
}

uint64_t sub_100052578(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000059D4(a2);
    sub_1000522EC(&qword_100208AC0, &qword_100208A88);
    sub_100052600();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100052600()
{
  result = qword_100208AC8;
  if (!qword_100208AC8)
  {
    sub_1000059D4(&qword_100208A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208AC8);
  }

  return result;
}

unint64_t sub_100052684()
{
  result = qword_100208AD0;
  if (!qword_100208AD0)
  {
    sub_1000059D4(&qword_100208A78);
    sub_10005276C(&qword_100208AD8, type metadata accessor for ComparisonResult);
    sub_10005276C(&qword_100208AE0, type metadata accessor for ComparisonResult);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208AD0);
  }

  return result;
}

uint64_t sub_10005276C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000527E4()
{
  v0 = sub_100005804(&qword_100208C00);
  v1 = *(v0 - 8);
  v34 = v0;
  v35 = v1;
  __chkstk_darwin(v0);
  v3 = &v24 - v2;
  v33 = type metadata accessor for _AssistantIntent.PhraseToken();
  v4 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005804(&qword_100208C08);
  __chkstk_darwin(v7);
  sub_100040A88();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x20657461746F52;
  v8._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v31 = sub_100042A84();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v30 = sub_100055E08();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 544106784;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v29 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v28 = *(v4 + 104);
  v11 = v33;
  v28(v6);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v12 = *(v4 + 8);
  v26 = v4 + 8;
  v27 = v12;
  v12(v6, v11);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = *(v35 + 8);
  v35 += 8;
  v25 = v14;
  v14(v3, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x6920657461746F52;
  v15._object = 0xED0000206567616DLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 32;
  v16._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 544106784;
  v17._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  v18 = v33;
  (v28)(v6, v29, v33);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v27(v6, v18);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25(v3, v34);
  sub_100005804(qword_100208C10);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10019B3A0;
  *(v21 + 32) = v32;
  *(v21 + 40) = v20;
  v22 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v22;
}

uint64_t sub_100052D10()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100042A84();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100040A88();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_100055E08();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100005804(&qword_100208B58);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10019B3A0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100052F00()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100005804(&qword_100208B60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10019D780;
  *(v4 + 32) = v0;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  *(v4 + 56) = v3;
  v5 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_100052FE4()
{
  v0 = sub_100005804(&qword_100208BE8);
  v1 = *(v0 - 8);
  v34 = v0;
  v35 = v1;
  __chkstk_darwin(v0);
  v3 = &v24 - v2;
  v33 = type metadata accessor for _AssistantIntent.PhraseToken();
  v4 = *(v33 - 8);
  __chkstk_darwin(v33);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005804(&qword_100208BF0);
  __chkstk_darwin(v7);
  sub_100042D40();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x2070696C46;
  v8._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v31 = sub_100042A84();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 32;
  v9._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v30 = sub_100055E08();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 544106784;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v29 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v28 = *(v4 + 104);
  v11 = v33;
  v28(v6);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v12 = *(v4 + 8);
  v26 = v4 + 8;
  v27 = v12;
  v12(v6, v11);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v32 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = *(v35 + 8);
  v35 += 8;
  v25 = v14;
  v14(v3, v34);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x616D692070696C46;
  v15._object = 0xEB00000000206567;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 32;
  v16._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 544106784;
  v17._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  v18 = v33;
  (v28)(v6, v29, v33);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v27(v6, v18);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25(v3, v34);
  sub_100005804(&qword_100208BF8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10019B3A0;
  *(v21 + 32) = v32;
  *(v21 + 40) = v20;
  v22 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v22;
}

uint64_t sub_100053508()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100042A84();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100042D40();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_100055E08();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100005804(&qword_100208B58);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10019B3A0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100053754(uint64_t a1)
{
  v50 = sub_100005804(&qword_100208BC8);
  v56 = *(v50 - 8);
  __chkstk_darwin(v50);
  v3 = &v41 - v2;
  v55 = type metadata accessor for _AssistantIntent.PhraseToken();
  v4 = *(v55 - 8);
  __chkstk_darwin(v55);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005804(&qword_100208BD0);
  __chkstk_darwin(v7);
  sub_100040B3C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x20657A69736552;
  v8._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  v46 = sub_100042A84();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 0x74646977206F7420;
  v9._object = 0xEA00000000002068;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  v48 = sub_100055CA0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 544106784;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v49 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v47 = *(v4 + 104);
  v54 = v4 + 104;
  v11 = v55;
  v47(v6);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v12 = *(v4 + 8);
  v52 = v4 + 8;
  v53 = v12;
  v12(v6, v11);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  v45 = v3;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v44 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = *(v56 + 8);
  v56 += 8;
  v51 = v14;
  v15 = v50;
  v14(v3, v50);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x20657A69736552;
  v16._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  v41 = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 0x67696568206F7420;
  v17._object = 0xEB00000000207468;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v18._countAndFlagsBits = 544106784;
  v18._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  v19 = v55;
  v20 = v47;
  (v47)(v6, v49, v55);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v53(v6, v19);
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  v22 = v45;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v43 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v51(v22, v15);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0x20657A69736552;
  v23._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v24._countAndFlagsBits = 0x74646977206F7420;
  v24._object = 0xEA00000000002068;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v25._countAndFlagsBits = 0x69656820646E6120;
  v25._object = 0xEC00000020746867;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v25);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v26._countAndFlagsBits = 544106784;
  v26._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  v27 = v55;
  (v20)(v6, v49, v55);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v53(v6, v27);
  v28._countAndFlagsBits = 0;
  v28._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  v29 = v45;
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v42 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v51(v29, v50);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._countAndFlagsBits = 0x20657A69736552;
  v30._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 544175136;
  v31._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v32._countAndFlagsBits = 0x2072657020;
  v32._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33._countAndFlagsBits = 544106784;
  v33._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  v34 = v55;
  (v47)(v6, v49, v55);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v53(v6, v34);
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v36 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v51(v29, v50);
  sub_100005804(&qword_100208BD8);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_10019D780;
  v38 = v43;
  *(v37 + 32) = v44;
  *(v37 + 40) = v38;
  *(v37 + 48) = v42;
  *(v37 + 56) = v36;
  v39 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v39;
}

uint64_t sub_100054084()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100042A84();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100040B3C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_100055CA0();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v7 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100005804(&qword_100208B58);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10019D790;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v9;
}

uint64_t sub_100054318(uint64_t a1)
{
  v26 = a1;
  v1 = sub_100005804(&qword_100208B98);
  v2 = *(v1 - 8);
  v29 = v1;
  v30 = v2;
  __chkstk_darwin(v1);
  v4 = v22 - v3;
  v27 = type metadata accessor for _AssistantIntent.PhraseToken();
  v5 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005804(&qword_100208BA0);
  __chkstk_darwin(v8);
  sub_100042C14();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  v9._object = 0x80000001001B10E0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  sub_100042A84();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 544106784;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v25 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v24 = *(v5 + 104);
  v11 = v27;
  v24(v7);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v12 = *(v5 + 8);
  v22[1] = v5 + 8;
  v23 = v12;
  v12(v7, v11);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = *(v30 + 8);
  v30 += 8;
  v22[0] = v14;
  v14(v4, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._object = 0x80000001001B12A0;
  v15._countAndFlagsBits = 0xD000000000000015;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 544106784;
  v16._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  (v24)(v7, v25, v11);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v23(v7, v11);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  (v22[0])(v4, v29);
  sub_100005804(&qword_100208BA8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10019B3A0;
  *(v19 + 32) = v28;
  *(v19 + 40) = v18;
  v20 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v20;
}

uint64_t sub_1000547C8(uint64_t a1)
{
  v32 = sub_100005804(&qword_100208B80);
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v3 = v24 - v2;
  v31 = type metadata accessor for _AssistantIntent.PhraseToken();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100005804(&qword_100208B88);
  __chkstk_darwin(v6);
  sub_100040BEC();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v7._countAndFlagsBits = 0x20686372616553;
  v7._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v7);
  swift_getKeyPath();
  v30 = sub_100042A84();
  v24[1] = a1;
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v8._countAndFlagsBits = 0x20726F6620;
  v8._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  swift_getKeyPath();
  sub_100051D14();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v9._countAndFlagsBits = 544106784;
  v9._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  v28 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v10 = v33;
  v27 = *(v33 + 104);
  v11 = v31;
  v27(v5);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v12 = *(v10 + 8);
  v33 = v10 + 8;
  v26 = v12;
  v12(v5, v11);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = *(v34 + 8);
  v34 += 8;
  v25 = v14;
  v14(v3, v32);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x20686372616553;
  v15._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 544106784;
  v16._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v17._countAndFlagsBits = 544106784;
  v17._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  v18 = v31;
  (v27)(v5, v28, v31);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v26(v5, v18);
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v20 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25(v3, v32);
  sub_100005804(&qword_100208B90);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10019B3A0;
  *(v21 + 32) = v29;
  *(v21 + 40) = v20;
  v22 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v22;
}

uint64_t sub_100054D10()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100042A84();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_100040BEC();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_100051D14();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_100005804(&qword_100208B58);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10019B3A0;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100054F34()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100005804(&qword_100208B60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10019A9F0;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_100054FA0(uint64_t a1)
{
  v26 = a1;
  v1 = sub_100005804(&qword_100208B68);
  v2 = *(v1 - 8);
  v29 = v1;
  v30 = v2;
  __chkstk_darwin(v1);
  v4 = v22 - v3;
  v27 = type metadata accessor for _AssistantIntent.PhraseToken();
  v5 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100005804(&qword_100208B70);
  __chkstk_darwin(v8);
  sub_1000427C4();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v9._countAndFlagsBits = 0x2065736F6C43;
  v9._object = 0xE600000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v9);
  swift_getKeyPath();
  sub_100042A84();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v10._countAndFlagsBits = 544106784;
  v10._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v25 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v24 = *(v5 + 104);
  v11 = v27;
  v24(v7);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v12 = *(v5 + 8);
  v22[1] = v5 + 8;
  v23 = v12;
  v12(v7, v11);
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v14 = *(v30 + 8);
  v30 += 8;
  v22[0] = v14;
  v14(v4, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v15._countAndFlagsBits = 0x6D692065736F6C43;
  v15._object = 0xEC00000020656761;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v15);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v16._countAndFlagsBits = 544106784;
  v16._object = 0xE400000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  (v24)(v7, v25, v11);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v23(v7, v11);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v18 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  (v22[0])(v4, v29);
  sub_100005804(&qword_100208B78);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10019B3A0;
  *(v19 + 32) = v28;
  *(v19 + 40) = v18;
  v20 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v20;
}

uint64_t sub_100055448(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = type metadata accessor for _AssistantIntent.Value();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100042A84();
  _AssistantIntent.IntentProjection.subscript.getter();

  a3(v8);
  _AssistantIntent.Value.init<A>(for:builder:)();
  v9 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v5 + 8))(v7, v4);
  sub_100005804(&qword_100208B58);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_10019A9F0;
  *(v10 + 32) = v9;
  v11 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v11;
}

uint64_t sub_100055600()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_100005804(&qword_100208B60);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10019B3A0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v3;
}

uint64_t sub_1000556A8()
{
  v0 = type metadata accessor for _AssistantIntent();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100040F64();
  v21 = v4;
  sub_100040A88();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v5 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6 = *(v1 + 8);
  v6(v3, v0);
  v20 = sub_10004133C();
  v21 = v7;
  sub_100042D40();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v8 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6(v3, v0);
  v20 = sub_1000418AC();
  v21 = v9;
  v22 = v10;
  sub_100040B3C();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v11 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6(v3, v0);
  v20 = sub_100041D84();
  sub_100042C14();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v12 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6(v3, v0);
  v20 = sub_1000420B8();
  v21 = v13;
  sub_100040BEC();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v14 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6(v3, v0);
  v20 = sub_100042490();
  sub_1000427C4();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v15 = static _AssistantIntent.Builder.buildExpression(_:)();
  v6(v3, v0);
  sub_100005804(&qword_100208B50);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10019D7A0;
  *(v16 + 32) = v5;
  *(v16 + 40) = v8;
  *(v16 + 48) = v11;
  *(v16 + 56) = v12;
  *(v16 + 64) = v14;
  *(v16 + 72) = v15;
  v17 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v17;
}

uint64_t sub_100055A74@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100055AB4@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100055AF0@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_100055BA4@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_100055C1C@<X0>(uint64_t a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

unint64_t sub_100055CA0()
{
  result = qword_100208BB0;
  if (!qword_100208BB0)
  {
    sub_1000059D4(&qword_100208BB8);
    sub_100055D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208BB0);
  }

  return result;
}

unint64_t sub_100055D24()
{
  result = qword_100208BC0;
  if (!qword_100208BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208BC0);
  }

  return result;
}

uint64_t sub_100055D78@<X0>(uint64_t a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

unint64_t sub_100055E08()
{
  result = qword_100208BE0;
  if (!qword_100208BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208BE0);
  }

  return result;
}

uint64_t sub_100055E5C@<X0>(_BYTE *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

void sub_100055EFC()
{
  sub_1000281C8();
  if (v0 <= 0x3F)
  {
    sub_100056650();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100055FC0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(j___s7SwiftUI15DynamicTypeSizeOMa() - 8) + 64);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(a3 + 24);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v8 - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 80);
  v14 = *(v9 + 64);
  v15 = *(v11 + 80);
  if (v10 <= v12)
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = *(v9 + 84);
  }

  if (v16 <= 0xFE)
  {
    v17 = 254;
  }

  else
  {
    v17 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v17)
  {
    goto LABEL_34;
  }

  v18 = ((v14 + v15 + (((v7 & 0xFFFFFFFFFFFFFFF8) + v13 + 32) & ~v13)) & ~v15) + *(*(v8 - 8) + 64);
  v19 = 8 * v18;
  if (v18 <= 3)
  {
    v22 = ((a2 - v17 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v22))
    {
      v20 = *(a1 + v18);
      if (!v20)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 > 0xFF)
    {
      v20 = *(a1 + v18);
      if (!*(a1 + v18))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 < 2)
    {
LABEL_34:
      if (v16 > 0xFE)
      {
        v27 = (((a1 + v7 + 24) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
        if (v10 == v17)
        {
          v28 = *(v9 + 48);

          return v28(v27);
        }

        else
        {
          v29 = *(v11 + 48);
          v30 = (v27 + v14 + v15) & ~v15;

          return v29(v30, v12, v8);
        }
      }

      else
      {
        v26 = *(a1 + v7);
        if (v26 >= 2)
        {
          return (v26 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v20 = *(a1 + v18);
  if (!*(a1 + v18))
  {
    goto LABEL_34;
  }

LABEL_21:
  v23 = (v20 - 1) << v19;
  if (v18 > 3)
  {
    v23 = 0;
  }

  if (v18)
  {
    if (v18 <= 3)
    {
      v24 = v18;
    }

    else
    {
      v24 = 4;
    }

    if (v24 > 2)
    {
      if (v24 == 3)
      {
        v25 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v25 = *a1;
      }
    }

    else if (v24 == 1)
    {
      v25 = *a1;
    }

    else
    {
      v25 = *a1;
    }
  }

  else
  {
    v25 = 0;
  }

  return v17 + (v25 | v23) + 1;
}

void sub_100056278(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(j___s7SwiftUI15DynamicTypeSizeOMa() - 8) + 64);
  if (v8 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(a4 + 24);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v10 - 8);
  v14 = *(v13 + 84);
  v15 = *(v11 + 80);
  v16 = *(v11 + 64);
  v17 = *(v13 + 80);
  if (v12 <= v14)
  {
    v18 = *(v13 + 84);
  }

  else
  {
    v18 = *(v11 + 84);
  }

  if (v18 <= 0xFE)
  {
    v19 = 254;
  }

  else
  {
    v19 = v18;
  }

  v20 = ((v16 + v17 + (((v9 & 0xFFFFFFFFFFFFFFF8) + v15 + 32) & ~v15)) & ~v17) + *(*(v10 - 8) + 64);
  if (a3 <= v19)
  {
    v21 = 0;
  }

  else if (v20 <= 3)
  {
    v24 = ((a3 - v19 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
    if (HIWORD(v24))
    {
      v21 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v21 = v25;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  if (v19 < a2)
  {
    v22 = ~v19 + a2;
    if (v20 < 4)
    {
      v23 = (v22 >> (8 * v20)) + 1;
      if (v20)
      {
        v26 = v22 & ~(-1 << (8 * v20));
        j__bzero(a1, v20);
        if (v20 != 3)
        {
          if (v20 == 2)
          {
            *a1 = v26;
            if (v21 > 1)
            {
LABEL_65:
              if (v21 == 2)
              {
                *&a1[v20] = v23;
              }

              else
              {
                *&a1[v20] = v23;
              }

              return;
            }
          }

          else
          {
            *a1 = v22;
            if (v21 > 1)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        *a1 = v26;
        a1[2] = BYTE2(v26);
      }

      if (v21 > 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      j__bzero(a1, v20);
      *a1 = v22;
      v23 = 1;
      if (v21 > 1)
      {
        goto LABEL_65;
      }
    }

LABEL_62:
    if (v21)
    {
      a1[v20] = v23;
    }

    return;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v20] = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v21)
  {
    goto LABEL_36;
  }

  a1[v20] = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  v27 = v9 + 1;
  if (v18 > 0xFE)
  {
    v28 = ((&a1[v27 + 23] & 0xFFFFFFFFFFFFFFF8) + v15 + 8) & ~v15;
    if (v12 == v19)
    {
      v29 = *(v11 + 56);

      v29(v28, a2);
    }

    else
    {
      v33 = *(v13 + 56);
      v34 = (v28 + v16 + v17) & ~v17;

      v33(v34, a2, v14, v10);
    }
  }

  else if (a2 > 0xFE)
  {
    if (v27 <= 3)
    {
      v30 = ~(-1 << (8 * v27));
    }

    else
    {
      v30 = -1;
    }

    if (v9 != -1)
    {
      v31 = v30 & (a2 - 255);
      if (v27 <= 3)
      {
        v32 = v9 + 1;
      }

      else
      {
        v32 = 4;
      }

      j__bzero(a1, v27);
      if (v32 > 2)
      {
        if (v32 == 3)
        {
          *a1 = v31;
          a1[2] = BYTE2(v31);
        }

        else
        {
          *a1 = v31;
        }
      }

      else if (v32 == 1)
      {
        *a1 = v31;
      }

      else
      {
        *a1 = v31;
      }
    }
  }

  else
  {
    a1[v9] = -a2;
  }
}

void sub_100056650()
{
  if (!qword_100208C98)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100208C98);
    }
  }
}

uint64_t sub_1000566E4(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_1000568B4@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for DynamicTypeSize.accessibility1(_:);
  v3 = j___s7SwiftUI15DynamicTypeSizeOMa();
  v8 = *(*(v3 - 8) + 104);
  (v8)((v3 - 8), a1, v2, v3);
  v4 = type metadata accessor for AdaptiveHStackLimits();
  v5 = enum case for DynamicTypeSize.accessibility3(_:);
  v6 = a1 + *(v4 + 20);

  return v8(v6, v5, v3);
}

uint64_t sub_100056974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, double a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>, double a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a9 = swift_getKeyPath();
  sub_100005804(&unk_10020A100);
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for AdaptiveHStack();
  v21 = v20[9];
  *(a9 + v21) = swift_getKeyPath();
  sub_100005804(&qword_100207808);
  swift_storeEnumTagMultiPayload();
  result = sub_100057874(a1, a9 + v20[10]);
  v23 = (a9 + v20[11]);
  *v23 = a13;
  v23[1] = a14;
  v24 = a9 + v20[12];
  *v24 = a2;
  v24[8] = a3 & 1;
  v25 = a4;
  if (a5)
  {
    v25 = 0.0;
  }

  *(a9 + v20[13]) = v25;
  *(a9 + v20[14]) = a6;
  v26 = a9 + v20[15];
  *v26 = a7;
  v26[8] = a8 & 1;
  if (a11)
  {
    a10 = 0.0;
  }

  *(a9 + v20[16]) = a10;
  *(a9 + v20[17]) = a12;
  return result;
}

uint64_t sub_100056B08@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(uint64_t)@<X5>, uint64_t *a6@<X8>)
{
  *a6 = swift_getKeyPath();
  sub_100005804(&unk_10020A100);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for LabeledRowContent();
  v13 = a6 + *(v12 + 52);
  *v13 = a1;
  v13[8] = a2 & 1;
  *(a6 + *(v12 + 56)) = a3;
  v14 = a4();
  a5(v14);
}

uint64_t sub_100056C24(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v3 = j___s7SwiftUI15DynamicTypeSizeOMa();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005804(&unk_10020A0D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v24 - v6;
  v8 = j___s7SwiftUI22UserInterfaceSizeClassOMa();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  sub_100058480(a2, v7);
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    v16 = *(v9 + 104);
    v16(v14, enum case for UserInterfaceSizeClass.regular(_:), v8);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000584F0(v7);
    }
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v16 = *(v9 + 104);
  }

  v16(v11, enum case for UserInterfaceSizeClass.compact(_:), v8);
  v17 = static UserInterfaceSizeClass.== infix(_:_:)();
  v18 = *(v9 + 8);
  v18(v11, v8);
  if (v17)
  {
    v19 = v25;
  }

  else
  {
    v19 = v25 + *(type metadata accessor for AdaptiveHStackLimits() + 20);
  }

  v20 = v27;
  v21 = v24;
  (*(v27 + 16))(v24, v19, v3);
  sub_100058558();
  v22 = dispatch thunk of static Comparable.>= infix(_:_:)();
  (*(v20 + 8))(v21, v3);
  v18(v14, v8);
  return v22 & 1;
}

uint64_t sub_100056F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = type metadata accessor for AdaptiveHStackLimits();
  __chkstk_darwin(v4 - 8);
  v37 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v8);
  v9 = *(a1 + 16);
  v34 = *(a1 + 24);
  v35 = v9;
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for AdaptiveHStack();
  v36 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v13);
  v16 = &v29[-v15];
  v17 = *(a1 + 56);
  v18 = v2 + *(a1 + 52);
  v19 = *v18;
  v30 = *(v18 + 8);
  v20 = *(v2 + v17);
  v31 = v19;
  v32 = v20;
  (*(v6 + 16))(&v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, a1, v14);
  v21 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v22 = swift_allocObject();
  v23 = v34;
  *(v22 + 16) = v35;
  *(v22 + 24) = v23;
  *(v22 + 32) = *(a1 + 32);
  (*(v6 + 32))(v22 + v21, &v29[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], a1);
  v24 = v37;
  sub_1000568B4(v37);
  v25 = j___s7SwiftUI19HorizontalAlignmentV7leadingACvgZ();
  sub_100056974(v24, v31, v30, 0.0, 1, v32, 0, 0, v12, 4.0, 0, v25, sub_1000577A8, v22);
  v26 = swift_getWitnessTable();
  sub_1000A2A58(v12, v10, v26);
  v27 = *(v36 + 8);
  v27(v12, v10);
  sub_1000A2A58(v16, v10, v26);
  return (v27)(v16, v10);
}

uint64_t sub_1000572BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v38 = a6;
  v40 = a1;
  v43 = a7;
  v41 = *(a4 - 8);
  __chkstk_darwin(a1);
  v42 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v38 - v13;
  v16 = *(v15 - 8);
  __chkstk_darwin(v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v38 - v21;
  v50 = v23;
  v51 = v24;
  v39 = v25;
  v52 = v25;
  v53 = v26;
  v27 = type metadata accessor for LabeledRowContent();
  sub_1000A2A58(a2 + *(v27 + 60), a3, a5);
  v28 = j___s7SwiftUI4AxisO8rawValues4Int8Vvg();
  v29 = v28 == j___s7SwiftUI4AxisO8rawValues4Int8Vvg();
  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = 0x4020000000000000;
  }

  v31 = a2 + *(v27 + 64);
  v32 = v38;
  sub_1000A2A58(v31, a4, v38);
  (*(v16 + 16))(v19, v22, a3);
  v48 = v30;
  v49 = v29;
  v50 = v19;
  v51 = &v48;
  v33 = v41;
  v34 = v42;
  (*(v41 + 16))(v42, v14, a4);
  v52 = v34;
  v47[0] = a3;
  v47[1] = &type metadata for Spacer;
  v47[2] = a4;
  v44 = v39;
  v45 = &protocol witness table for Spacer;
  v46 = v32;
  sub_1000566E4(&v50, 3uLL, v47);
  v35 = *(v33 + 8);
  v35(v14, a4);
  v36 = *(v16 + 8);
  v36(v22, a3);
  v35(v34, a4);
  return (v36)(v19, a3);
}

uint64_t type metadata accessor for AdaptiveHStackLimits()
{
  result = qword_100208D00;
  if (!qword_100208D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100057604()
{
  v1 = *(v0 + 16);
  v7 = *(v0 + 24);
  v2 = type metadata accessor for LabeledRowContent();
  v3 = (*(*(v2 - 8) + 80) + 48) & ~*(*(v2 - 8) + 80);
  v4 = v0 + v3;
  sub_100005804(&unk_10020A100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = j___s7SwiftUI15DynamicTypeSizeOMa();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v4 + *(v2 + 60), v1);
  (*(*(v7 - 8) + 8))(v4 + *(v2 + 64));
  return swift_deallocObject();
}

uint64_t sub_1000577A8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = *(type metadata accessor for LabeledRowContent() - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1000572BC(a1 & 1, v10, v5, v6, v7, v8, a2);
}

uint64_t sub_100057874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdaptiveHStackLimits();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000578D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  sub_1000059D4(&qword_100208DC8);
  v4 = *(a1 + 16);
  sub_100058C00(&qword_100208DD0);
  v36 = v4;
  v5 = type metadata accessor for _VariadicView.Tree();
  v37 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = v35 - v6;
  v8 = j___s7SwiftUI15ModifiedContentVMa();
  v41 = *(v8 - 8);
  __chkstk_darwin(v8);
  v38 = v35 - v9;
  v10 = j___s7SwiftUI15ModifiedContentVMa();
  v42 = *(v10 - 8);
  __chkstk_darwin(v10);
  v39 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v40 = v35 - v13;
  sub_100057E50();
  v14 = j___s7SwiftUI4AxisO8rawValues4Int8Vvg();
  v15 = j___s7SwiftUI4AxisO8rawValues4Int8Vvg();
  v16 = 0;
  if (v14 == v15)
  {
    v16 = *(v2 + *(a1 + 52));
  }

  v35[1] = v16;
  sub_100057E50();
  v17 = j___s7SwiftUI4AxisO8rawValues4Int8Vvg();
  if (v17 == j___s7SwiftUI4AxisO8rawValues4Int8Vvg())
  {
    v35[0] = *(v2 + *(a1 + 64));
  }

  else
  {
    v35[0] = 0;
  }

  sub_1000581EC(0, 1, a1, v50);
  v18 = sub_100008638(v50, v50[3]);
  v19 = __chkstk_darwin(v18);
  (*(v21 + 16))(v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
  v22 = j___s7SwiftUI9AnyLayoutVyACxcAA0D0RzlufC();
  v23 = *(a1 + 24);
  v24 = swift_allocObject();
  v25 = v36;
  v24[2] = v36;
  v24[3] = v23;
  v24[4] = v22;
  v26 = sub_10000867C(v50);
  __chkstk_darwin(v26);
  v35[-4] = v25;
  v35[-3] = v23;
  v35[-2] = v2;
  sub_100058C88(sub_100058BF4, &v35[-6], v7);

  j___s7SwiftUI4EdgeO3SetV10horizontalAEvgZ();
  v48 = sub_100058C00(&qword_100208DD8);
  v49 = v23;
  WitnessTable = swift_getWitnessTable();
  v28 = v38;
  View.padding(_:_:)();
  (*(v37 + 8))(v7, v5);
  j___s7SwiftUI4EdgeO3SetV8verticalAEvgZ();
  v46 = WitnessTable;
  v47 = &protocol witness table for _PaddingLayout;
  v29 = swift_getWitnessTable();
  v30 = v39;
  View.padding(_:_:)();
  (*(v41 + 8))(v28, v8);
  v44 = v29;
  v45 = &protocol witness table for _PaddingLayout;
  v31 = swift_getWitnessTable();
  v32 = v40;
  sub_1000A2A58(v30, v10, v31);
  v33 = *(v42 + 8);
  v33(v30, v10);
  sub_1000A2A58(v32, v10, v31);
  return (v33)(v32, v10);
}

uint64_t sub_100057E50()
{
  v0 = sub_100005804(&unk_10020A0D0);
  __chkstk_darwin(v0 - 8);
  v2 = &v15 - v1;
  v3 = j___s7SwiftUI15DynamicTypeSizeOMa();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AdaptiveHStackLimits();
  v8 = v7 - 8;
  v9 = __chkstk_darwin(v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + 104);
  v12(v11, enum case for DynamicTypeSize.accessibility1(_:), v3, v9);
  (v12)(&v11[*(v8 + 28)], enum case for DynamicTypeSize.accessibility3(_:), v3);
  sub_100089E24(v6);
  sub_100089E4C(v2);
  v13 = sub_100056C24(v6, v2);
  sub_1000584F0(v2);
  (*(v4 + 8))(v6, v3);
  sub_100028E08(v11);
  return v13 & 1;
}

uint64_t sub_100058044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  __chkstk_darwin(a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _LayoutRoot();
  v17 = __chkstk_darwin(v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  _LayoutRoot.init(_:)();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return _VariadicView.Tree.init(_:content:)();
}

unint64_t sub_1000581EC@<X0>(uint64_t a1@<X0>, char a2@<W1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  if (sub_100057E50())
  {
    v9 = *(v4 + a3[17]);
    if (a2)
    {
      v10 = (v4 + a3[15]);
      a1 = *v10;
      v11 = *(v10 + 8);
    }

    else
    {
      v11 = 0;
    }

    *(a4 + 24) = &type metadata for VStackLayout;
    result = sub_100058E98();
  }

  else
  {
    v9 = *(v4 + a3[14]);
    if (a2)
    {
      v12 = (v4 + a3[12]);
      a1 = *v12;
      v11 = *(v12 + 8);
    }

    else
    {
      v11 = 0;
    }

    *(a4 + 24) = &type metadata for HStackLayout;
    result = sub_100058EEC();
  }

  *(a4 + 32) = result;
  *a4 = v9;
  *(a4 + 8) = a1;
  *(a4 + 16) = v11;
  return result;
}

uint64_t sub_1000582AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[1] = a4;
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v17 - v11;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = *(a1 + *(type metadata accessor for AdaptiveHStack() + 44));
  v14 = sub_100057E50();
  v13(v14 & 1);
  sub_1000A2A58(v9, a2, a3);
  v15 = *(v7 + 8);
  v15(v9, a2);
  sub_1000A2A58(v12, a2, a3);
  v15(v12, a2);
}

uint64_t sub_100058480(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005804(&unk_10020A0D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000584F0(uint64_t a1)
{
  v2 = sub_100005804(&unk_10020A0D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100058558()
{
  result = qword_100208CA0;
  if (!qword_100208CA0)
  {
    j___s7SwiftUI15DynamicTypeSizeOMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208CA0);
  }

  return result;
}

uint64_t sub_1000585C4(uint64_t a1, uint64_t a2)
{
  v4 = j___s7SwiftUI15DynamicTypeSizeOMa();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100058644(uint64_t a1, uint64_t a2)
{
  v4 = j___s7SwiftUI15DynamicTypeSizeOMa();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000586B4()
{
  result = j___s7SwiftUI15DynamicTypeSizeOMa();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_100058728()
{
  sub_1000281C8();
  if (v0 <= 0x3F)
  {
    sub_100028220();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AdaptiveHStackLimits();
      if (v2 <= 0x3F)
      {
        sub_100031F48();
        if (v3 <= 0x3F)
        {
          sub_100056650();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10005882C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100005804(&qword_100208D38);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100005804(qword_100208D40);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[9];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for AdaptiveHStackLimits();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[10];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[11]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1000589AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100005804(&qword_100208D38);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_100005804(qword_100208D40);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[9];
    }

    else
    {
      result = type metadata accessor for AdaptiveHStackLimits();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[11]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[10];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_100058B14()
{
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for AdaptiveHStack();

  return swift_getWitnessTable();
}

uint64_t sub_100058C00(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000059D4(&qword_100208DC8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100058C50()
{

  return swift_deallocObject();
}

uint64_t sub_100058C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = sub_100058D00();
  return sub_100058044(a1, a2, &type metadata for AnyLayout, v7, v9, v8, a3);
}

unint64_t sub_100058D00()
{
  result = qword_100208DE0;
  if (!qword_100208DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208DE0);
  }

  return result;
}

uint64_t sub_100058D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = (__chkstk_darwin)();
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v17 - v13;
  v12();
  sub_1000A2A58(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  sub_1000A2A58(v14, a4, a6);
  return (v15)(v14, a4);
}

unint64_t sub_100058E98()
{
  result = qword_100208DE8;
  if (!qword_100208DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208DE8);
  }

  return result;
}

unint64_t sub_100058EEC()
{
  result = qword_100208DF0;
  if (!qword_100208DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100208DF0);
  }

  return result;
}

uint64_t sub_100058F40()
{
  sub_1000059D4(&qword_100208DC8);
  sub_100058C00(&qword_100208DD0);
  type metadata accessor for _VariadicView.Tree();
  j___s7SwiftUI15ModifiedContentVMa();
  j___s7SwiftUI15ModifiedContentVMa();
  sub_100058C00(&qword_100208DD8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_100059090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005804(&qword_100208DF8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_100005804(&qword_100208030);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1000591E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100005804(&qword_100208DF8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = sub_100005804(&qword_100208030);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ResizeSheetView()
{
  result = qword_100208E58;
  if (!qword_100208E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100059368()
{
  sub_1000594AC(319, &qword_100208E68, type metadata accessor for ResizeViewModel.SizeUnit, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_1000594AC(319, &unk_100208E70, type metadata accessor for ResizeViewModel, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_1000594AC(319, &qword_1002080A8, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100031F48();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000594AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10005952C@<X0>(uint64_t a1@<X8>)
{
  v3 = j___s7SwiftUI17EnvironmentValuesVMa();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100005804(&qword_100208138);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ResizeSheetView();
  sub_100006600(v1 + *(v10 + 24), v9, &qword_100208138);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for DismissAction();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = j___s7SwiftUI3LogO013runtimeIssuesC0So9OS_os_logCvgZ();
    os_log(_:dso:log:_:_:)();

    j___s7SwiftUI17EnvironmentValuesVACycfC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100059734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v73 = *(v3 - 8);
  v74 = v3;
  __chkstk_darwin(v3);
  v72 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v69 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v64 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocalizedStringResource();
  v70 = *(v10 - 8);
  v71 = v10;
  __chkstk_darwin(v10);
  v61 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v68 = &v50 - v13;
  v14 = type metadata accessor for InsetGroupedListStyle();
  OpaqueTypeConformance2 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100005804(&qword_100208ED0);
  v50 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v50 - v18;
  v54 = sub_100005804(&qword_100208EC8);
  v51 = *(v54 - 8);
  __chkstk_darwin(v54);
  v21 = &v50 - v20;
  v57 = sub_100005804(&qword_100208EC0);
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v76 = &v50 - v22;
  v60 = sub_100005804(&qword_100208EB8);
  v56 = *(v60 - 8);
  __chkstk_darwin(v60);
  v77 = &v50 - v23;
  v24 = sub_100005804(&qword_100208EB0);
  v62 = *(v24 - 8);
  v63 = v24;
  __chkstk_darwin(v24);
  v59 = &v50 - v25;
  type metadata accessor for MainActor();
  v58 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  *(&v50 - 2) = a1;
  v52 = a1;
  sub_100005804(&qword_100208EE0);
  sub_100007888(&qword_100208EE8, &qword_100208EE0);
  List<>.init(content:)();
  InsetGroupedListStyle.init()();
  v27 = sub_100007888(&qword_100208ED8, &qword_100208ED0);
  View.listStyle<A>(_:)();
  (*(OpaqueTypeConformance2 + 8))(v16, v14);
  (*(v50 + 8))(v19, v17);
  v78 = v17;
  v79 = v14;
  v80 = v27;
  v81 = &protocol witness table for InsetGroupedListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v54;
  View.navigationBarBackButtonHidden(_:)();
  (*(v51 + 8))(v21, v28);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v65 + 104))(v66, enum case for LocalizedStringResource.BundleDescription.main(_:), v67);
  static Locale.current.getter();
  v29 = v68;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v31 = v70;
  v30 = v71;
  (*(v70 + 16))(v61, v29, v71);
  v32 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v34 = v33;
  v36 = v35;
  v78 = v28;
  v79 = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v76;
  v39 = v57;
  View.navigationTitle(_:)();
  sub_100028DF8(v32, v34, v36 & 1);

  (*(v31 + 8))(v29, v30);
  (*(v55 + 8))(v38, v39);
  v41 = v72;
  v40 = v73;
  v42 = v74;
  (*(v73 + 104))(v72, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v74);
  v78 = v39;
  v79 = v37;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v59;
  v45 = v60;
  v46 = v77;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v40 + 8))(v41, v42);
  v47 = (*(v56 + 8))(v46, v45);
  __chkstk_darwin(v47);
  *(&v50 - 2) = v52;
  sub_100005804(&qword_1002080F8);
  v78 = v45;
  v79 = v43;
  swift_getOpaqueTypeConformance2();
  sub_100007888(&qword_100208118, &qword_1002080F8);
  v48 = v63;
  View.toolbar<A>(content:)();
  (*(v62 + 8))(v44, v48);
}

uint64_t sub_10005A210@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v96 = a1;
  v92 = a2;
  v2 = sub_100005804(&qword_100208EF8);
  v93 = *(v2 - 8);
  v94 = v2;
  __chkstk_darwin(v2);
  v91 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v99 = &v69 - v5;
  v97 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v97 - 1);
  __chkstk_darwin(v97);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_100005804(&qword_100208F00);
  v86 = *(v80 - 8);
  __chkstk_darwin(v80);
  v82 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v85 = &v69 - v11;
  v12 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v12 - 8);
  v79 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v81 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v16 = *(v78 - 8);
  __chkstk_darwin(v78);
  v77 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v18 - 8);
  v84 = type metadata accessor for LocalizedStringResource();
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v95 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_100005804(&qword_100208F08);
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v88 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v98 = &v69 - v22;
  v23 = type metadata accessor for ResizeViewModel.SizeUnit();
  Description = v23[-1].Description;
  __chkstk_darwin(v23);
  v26 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MainActor();
  v87 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = (v96 + *(type metadata accessor for ResizeSheetView() + 20));
  v29 = *v27;
  v28 = v27[1];
  v104 = v29;
  v105 = v28;
  sub_100005804(&qword_100208EF0);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v76 = sub_100005804(&qword_100208DF8);
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v72 = v26;
  v30 = sub_100175544(v26);
  v32 = v31;

  v33 = Description[1];
  v74 = (Description + 1);
  v75 = v33;
  v73 = v23;
  v33(v26, v23);
  String.LocalizationValue.init(stringLiteral:)();
  (*(v16 + 104))(v77, enum case for LocalizedStringResource.BundleDescription.main(_:), v78);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v104 = j___s7SwiftUI4TextVyAC10Foundation23LocalizedStringResourceVcfC();
  v105 = v34;
  v106 = v35 & 1;
  v107 = v36;
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v37._object = 0x80000001001B1340;
  v37._countAndFlagsBits = 0xD000000000000010;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v37);
  v100 = *&v30;
  static Locale.autoupdatingCurrent.getter();
  v78 = sub_10005D124();
  v38 = v82;
  FloatingPointFormatStyle.init(locale:)();
  LODWORD(v77) = enum case for FloatingPointRoundingRule.toNearestOrEven(_:);
  v71 = *(v6 + 104);
  v39 = v97;
  v71(v8);
  v40 = v85;
  v41 = v80;
  FloatingPointFormatStyle.rounded(rule:increment:)();
  v42 = *(v6 + 8);
  v69 = v6 + 8;
  v70 = v42;
  v42(v8, v39);
  v43 = *(v86 + 8);
  v43(v38, v41);
  v86 = sub_100007888(&qword_100208F18, &qword_100208F00);
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:format:)();
  v43(v40, v41);
  v44._countAndFlagsBits = 546816800;
  v44._object = 0xA400000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v44);
  v100 = v32;
  static Locale.autoupdatingCurrent.getter();
  FloatingPointFormatStyle.init(locale:)();
  v45 = v97;
  (v71)(v8, v77, v97);
  FloatingPointFormatStyle.rounded(rule:increment:)();
  v70(v8, v45);
  v43(v38, v41);
  LocalizedStringKey.StringInterpolation.appendInterpolation<A>(_:format:)();
  v43(v40, v41);
  v46._countAndFlagsBits = 32;
  v46._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v46);
  v47 = v72;
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v48 = v95;
  sub_100170994();
  v75(v47, v73);
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();
  (*(v83 + 8))(v48, v84);
  v49._countAndFlagsBits = 0;
  v49._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v49);
  LocalizedStringKey.init(stringInterpolation:)();
  v100 = Text.init(_:tableName:bundle:comment:)();
  v101 = v50;
  v102 = v51 & 1;
  v103 = v52;
  __chkstk_darwin(v100);
  sub_100005804(&qword_100208F20);
  sub_100007888(&qword_100208F28, &qword_100208F20);
  v53 = v98;
  v54 = Section<>.init(header:footer:content:)();
  __chkstk_darwin(v54);
  sub_100005804(&qword_100208F30);
  sub_100007888(&qword_100208F38, &qword_100208F30);
  v55 = v99;
  Section<>.init(content:)();
  v56 = v89;
  v57 = *(v89 + 16);
  v58 = v88;
  v59 = v90;
  v57(v88, v53, v90);
  v60 = v93;
  v97 = *(v93 + 16);
  v61 = v91;
  v62 = v55;
  v63 = v94;
  (v97)(v91, v62, v94);
  v64 = v92;
  v57(v92, v58, v59);
  v65 = sub_100005804(&qword_100208F40);
  (v97)(&v64[*(v65 + 48)], v61, v63);
  v66 = *(v60 + 8);
  v66(v99, v63);
  v67 = *(v56 + 8);
  v67(v98, v59);
  v66(v61, v63);
  v67(v58, v59);
}

uint64_t sub_10005AEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v96 = type metadata accessor for LocalizedStringResource();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v91 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100005804(&qword_100208F58);
  __chkstk_darwin(v97);
  v99 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v98 = &v83 - v6;
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v14 - 8);
  v16 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_100005804(&qword_100208F60);
  __chkstk_darwin(v84);
  v94 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v92 = &v83 - v19;
  __chkstk_darwin(v20);
  v110 = &v83 - v21;
  __chkstk_darwin(v22);
  v24 = &v83 - v23;
  type metadata accessor for MainActor();
  v93 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  String.LocalizationValue.init(stringLiteral:)();
  v109 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v25 = *(v11 + 104);
  v107 = v11 + 104;
  v108 = v25;
  v25(v13);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v26 = (a1 + *(type metadata accessor for ResizeSheetView() + 20));
  v28 = *v26;
  v27 = v26[1];
  v117 = v28;
  v118 = v27;
  v105 = v16;
  v111 = v28;
  v29 = v27;
  v30 = sub_100005804(&qword_100208EF0);
  v104 = v13;
  v31 = v30;
  j___s7SwiftUI5StateV14projectedValueAA7BindingVyxGvg();
  v32 = v120;
  v33 = v121;
  v103 = v9;
  v106 = v10;
  v34 = v24;
  v35 = v122;
  swift_getKeyPath();
  v120 = v32;
  v121 = v33;
  v122 = v35;
  v102 = sub_100005804(&qword_100208F48);
  Binding.subscript.getter();

  v86 = v117;
  v85 = v118;
  v36 = v119;

  v115 = v28;
  v116 = v29;
  j___s7SwiftUI5StateV14projectedValueAA7BindingVyxGvg();
  v37 = v112;
  v38 = v113;
  v39 = v114;
  swift_getKeyPath();
  v112 = v37;
  v113 = v38;
  v114 = v39;
  v40 = v84;
  Binding.subscript.getter();

  v115 = v111;
  v116 = v29;
  v41 = v29;
  v101 = v31;
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v42 = sub_100172FCC();

  v115 = 0x4054000000000000;
  v89 = sub_100028174();
  ScaledMetric.init(wrappedValue:)();
  v43 = v40[13];
  *(v34 + v43) = swift_getKeyPath();
  v88 = sub_100005804(&unk_10020A100);
  swift_storeEnumTagMultiPayload();
  v44 = v40[14];
  *(v34 + v44) = swift_getKeyPath();
  v87 = sub_100005804(&qword_100207808);
  swift_storeEnumTagMultiPayload();
  v45 = v40[10];
  v90 = v34;
  v46 = (v34 + v45);
  v47 = v85;
  *v46 = v86;
  v46[1] = v47;
  v46[2] = v36;
  *(v34 + v40[9]) = v42;
  String.LocalizationValue.init(stringLiteral:)();
  v108(v104, v109, v106);
  static Locale.current.getter();
  v48 = v110;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v49 = v111;
  v117 = v111;
  v118 = v41;
  v50 = v41;
  j___s7SwiftUI5StateV14projectedValueAA7BindingVyxGvg();
  v51 = v120;
  v52 = v121;
  v53 = v122;
  swift_getKeyPath();
  v120 = v51;
  v121 = v52;
  v122 = v53;
  Binding.subscript.getter();

  v86 = v117;
  v85 = v118;
  v54 = v119;

  v115 = v49;
  v116 = v50;
  j___s7SwiftUI5StateV14projectedValueAA7BindingVyxGvg();
  v55 = v112;
  v56 = v113;
  v57 = v114;
  swift_getKeyPath();
  v112 = v55;
  v113 = v56;
  v114 = v57;
  Binding.subscript.getter();

  v58 = v111;
  v115 = v111;
  v116 = v50;
  v59 = v50;
  j___s7SwiftUI5StateV12wrappedValuexvg();
  v60 = sub_100172FCC();

  v115 = 0x4054000000000000;
  ScaledMetric.init(wrappedValue:)();
  v61 = v40[13];
  *(v48 + v61) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v62 = v40[14];
  *(v48 + v62) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v63 = (v48 + v40[10]);
  v64 = v85;
  *v63 = v86;
  v63[1] = v64;
  v63[2] = v54;
  *(v48 + v40[9]) = v60;
  String.LocalizationValue.init(stringLiteral:)();
  v108(v104, v109, v106);
  static Locale.current.getter();
  v65 = v91;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v117 = v58;
  v118 = v59;
  v66 = v58;
  j___s7SwiftUI5StateV14projectedValueAA7BindingVyxGvg();
  v67 = v120;
  v68 = v121;
  v69 = v122;
  swift_getKeyPath();
  v120 = v67;
  v121 = v68;
  v122 = v69;
  Binding.subscript.getter();

  __chkstk_darwin(v70);
  *(&v83 - 2) = v65;
  v71 = v98;
  Toggle.init(isOn:label:)();
  (*(v95 + 8))(v65, v96);
  v120 = v66;
  v121 = v59;
  j___s7SwiftUI5StateV12wrappedValuexvg();
  LOBYTE(v67) = sub_100173098();

  KeyPath = swift_getKeyPath();
  v73 = swift_allocObject();
  *(v73 + 16) = (v67 & 1) == 0;
  v74 = (v71 + *(v97 + 36));
  *v74 = KeyPath;
  v74[1] = sub_1000072E4;
  v74[2] = v73;
  v75 = v90;
  v76 = v92;
  sub_100006600(v90, v92, &qword_100208F60);
  v77 = v110;
  v78 = v94;
  sub_100006600(v110, v94, &qword_100208F60);
  v79 = v99;
  sub_100006600(v71, v99, &qword_100208F58);
  v80 = v100;
  sub_100006600(v76, v100, &qword_100208F60);
  v81 = sub_100005804(&qword_100208F68);
  sub_100006600(v78, v80 + *(v81 + 48), &qword_100208F60);
  sub_100006600(v79, v80 + *(v81 + 64), &qword_100208F58);
  sub_100007710(v71, &qword_100208F58);
  sub_100007710(v77, &qword_100208F60);
  sub_100007710(v75, &qword_100208F60);
  sub_100007710(v79, &qword_100208F58);
  sub_100007710(v78, &qword_100208F60);
  sub_100007710(v76, &qword_100208F60);
}

uint64_t sub_10005BB3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v3 = type metadata accessor for LocalizedStringResource();
  v74 = *(v3 - 8);
  v75 = v3;
  __chkstk_darwin(v3);
  v72 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100005804(&qword_100208510);
  v77 = *(v5 - 8);
  v78 = v5;
  __chkstk_darwin(v5);
  v76 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v73 = &v58 - v8;
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100005804(&qword_100208520);
  __chkstk_darwin(v67);
  v70 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v58 - v21;
  type metadata accessor for MainActor();
  v71 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  String.LocalizationValue.init(stringLiteral:)();
  v69 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v23 = *(v13 + 104);
  v62 = v13 + 104;
  v68 = v23;
  v23(v15);
  static Locale.current.getter();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v24 = (a1 + *(type metadata accessor for ResizeSheetView() + 20));
  v26 = *v24;
  v25 = v24[1];
  v85 = v26;
  v86 = v25;
  v66 = v18;
  v27 = v25;
  v61 = sub_100005804(&qword_100208EF0);
  j___s7SwiftUI5StateV14projectedValueAA7BindingVyxGvg();
  v65 = v11;
  v64 = v12;
  v63 = v15;
  v28 = v88;
  v29 = v89;
  v30 = v22;
  v31 = v90;
  swift_getKeyPath();
  v88 = v28;
  v89 = v29;
  v90 = v31;
  sub_100005804(&qword_100208F48);
  Binding.subscript.getter();

  v60 = v85;
  v59 = v86;
  v32 = v87;

  v83 = v26;
  v84 = v27;
  j___s7SwiftUI5StateV14projectedValueAA7BindingVyxGvg();
  v33 = v80;
  v34 = v81;
  v35 = v82;
  swift_getKeyPath();
  v80 = v33;
  v81 = v34;
  v82 = v35;
  v36 = v67;
  Binding.subscript.getter();

  v37 = sub_10017C0D4();
  v83 = 0x4054000000000000;
  sub_100028174();
  ScaledMetric.init(wrappedValue:)();
  v38 = v36[13];
  *(v30 + v38) = swift_getKeyPath();
  sub_100005804(&unk_10020A100);
  swift_storeEnumTagMultiPayload();
  v39 = v36[14];
  *(v30 + v39) = swift_getKeyPath();
  sub_100005804(&qword_100207808);
  swift_storeEnumTagMultiPayload();
  v40 = (v30 + v36[10]);
  v41 = v59;
  *v40 = v60;
  v40[1] = v41;
  v40[2] = v32;
  *(v30 + v36[9]) = v37;
  v58 = v30;
  String.LocalizationValue.init(stringLiteral:)();
  v68(v63, v69, v64);
  static Locale.current.getter();
  v42 = v72;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v85 = v26;
  v86 = v27;
  j___s7SwiftUI5StateV14projectedValueAA7BindingVyxGvg();
  v43 = v88;
  v44 = v89;
  v45 = v90;
  swift_getKeyPath();
  v88 = v43;
  v89 = v44;
  v90 = v45;
  Binding.subscript.getter();

  __chkstk_darwin(v46);
  *(&v58 - 2) = v42;
  v47 = v73;
  Toggle.init(isOn:label:)();
  (*(v74 + 8))(v42, v75);
  v48 = v30;
  v49 = v70;
  sub_100006600(v48, v70, &qword_100208520);
  v51 = v76;
  v50 = v77;
  v52 = *(v77 + 16);
  v53 = v78;
  v52(v76, v47, v78);
  v54 = v79;
  sub_100006600(v49, v79, &qword_100208520);
  v55 = sub_100005804(&qword_100208F50);
  v52((v54 + *(v55 + 48)), v51, v53);
  v56 = *(v50 + 8);
  v56(v47, v53);
  sub_100007710(v58, &qword_100208520);
  v56(v51, v53);
  sub_100007710(v49, &qword_100208520);
}