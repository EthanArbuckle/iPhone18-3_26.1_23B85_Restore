void *sub_10003939C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 76);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100039504@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100039538(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_100039680(uint64_t *a1)
{
  v1 = *a1;
  sub_10003AECC(&qword_100159A40, &unk_100114DF8);
  type metadata accessor for Optional();
  type metadata accessor for ModifiedContent();
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  sub_10003AECC(&qword_100159A48, &qword_100114E08);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for HStack();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1000398AC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100039968(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100039A18()
{
  v1 = (type metadata accessor for UnitConversionCategoryButton(0) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = *(v3 + 8);

  v5 = *(v3 + 32);

  v6 = v1[9];
  v7 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  v8 = *(*(v7 - 8) + 8);
  v8(v3 + v6, v7);
  v8(v3 + v1[10], v7);

  return swift_deallocObject();
}

uint64_t sub_100039B40(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100159D30, &qword_1001153E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100039BA8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_100039C64(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100039DA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_100039DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100159FA8, &unk_1001157E0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100039E54(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100159FA8, &unk_1001157E0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100039ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003AE84(&qword_10015A050, &qword_100115848);
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
    v11 = sub_10003AE84(&qword_10015A058, &unk_100115850);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10003A00C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10003AE84(&qword_10015A050, &qword_100115848);
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
    v11 = sub_10003AE84(&qword_10015A058, &unk_100115850);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10003A170()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_10003A200(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_10015A238, &qword_100115A90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003A270()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10003A2F8()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_10003A330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10003AE84(&qword_1001552A0, qword_10010D190);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10003A3F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10003AE84(&qword_1001552A0, qword_10010D190);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = -a2;
  }

  return result;
}

uint64_t sub_10003A4FC()
{
  static Alignment.center.getter();
  v9 = *(v0 + 2);
  v4 = *(v0 + 2);
  sub_10003AE84(&qword_100154808, &unk_10010BB10);
  State.projectedValue.getter();
  v4 = v9;
  State.wrappedValue.getter();
  v7 = *v0;
  v8 = *(v0 + 8);
  v5 = v0[2];
  v6 = *(v0 + 24);
  v1 = swift_allocObject();
  v2 = *(v0 + 1);
  v1[1] = *v0;
  v1[2] = v2;
  v1[3] = *(v0 + 2);
  sub_100008E68(&v7, &v4, &qword_100154810, &qword_10010DF90);
  sub_100008E68(&v5, &v4, &qword_100154818, &qword_10010BB20);
  sub_100008E68(&v9, &v4, &qword_100154808, &unk_10010BB10);
  sub_10003AE84(&qword_100154820, &qword_10010BB28);
  sub_100004880(&qword_100154828, &qword_100154820, &qword_10010BB28);
  sub_10000482C();
  View.onChange<A>(of:initial:_:)();
}

void sub_10003A6F8(_BYTE *a1, unsigned __int8 *a2, unsigned __int8 **a3)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = 0xE500000000000000;
  v14 = 0xE900000000000072;
  v15 = 0x6D6D6172676F7270;
  if (*a1 == 2)
  {
    v15 = 0x657061506874616DLL;
  }

  else
  {
    v14 = 0xEA00000000007265;
  }

  v16 = 0x6669746E65696373;
  if (*a1)
  {
    v13 = 0xEA00000000006369;
  }

  else
  {
    v16 = 0x6369736162;
  }

  if (*a1 <= 1u)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  if (*a1 <= 1u)
  {
    v18 = v13;
  }

  else
  {
    v18 = v14;
  }

  v19 = 0xE500000000000000;
  v20 = 0x657061506874616DLL;
  v21 = 0xEA00000000007265;
  if (v12 == 2)
  {
    v21 = 0xE900000000000072;
  }

  else
  {
    v20 = 0x6D6D6172676F7270;
  }

  v22 = 0x6669746E65696373;
  if (v12)
  {
    v19 = 0xEA00000000006369;
  }

  else
  {
    v22 = 0x6369736162;
  }

  if (v12 <= 1)
  {
    v23 = v22;
  }

  else
  {
    v23 = v20;
  }

  if (v12 <= 1)
  {
    v24 = v19;
  }

  else
  {
    v24 = v21;
  }

  if (v17 == v23 && v18 == v24)
  {

    return;
  }

  v25 = v9;
  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26)
  {
    return;
  }

  if (v12 != 1)
  {
    v39 = *(a3 + 8);
    v38 = *a3;
    v29 = v39;

    if ((v29 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v30 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v38, &qword_100154810, &qword_10010DF90);
      (*(v7 + 8))(v11, v25);
    }

    sub_1000560A8(v12);
    goto LABEL_42;
  }

  v39 = *(a3 + 24);
  v27 = a3[2];
  v38 = v27;
  if (v39 == 1)
  {
    v28 = v27;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000035CC(&v38, &qword_100154818, &qword_10010BB20);
    (*(v7 + 8))(v11, v25);
    v28 = v36;
  }

  swift_getKeyPath();
  v36 = v28;
  sub_10003AF14(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v32 = v28[OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorModeScientificAllowed];

  if (v32 == 1)
  {
    v37 = *(a3 + 8);
    v36 = *a3;
    v33 = v37;

    if ((v33 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v34 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000035CC(&v36, &qword_100154810, &qword_10010DF90);
      (*(v7 + 8))(v11, v25);
    }

    sub_1000560A8(1);
LABEL_42:
  }
}

id variable initialization expression of CalculatorHistoryRecordManager.inputCache()
{
  v0 = objc_allocWithZone(NSCache);

  return [v0 init];
}

uint64_t sub_10003AC4C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Anchor.Source<A>.bounds.getter();
  v2 = enum case for PopoverAttachmentAnchor.rect(_:);
  v3 = type metadata accessor for PopoverAttachmentAnchor();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10003ACC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 4)
  {
    Edge.Set.init(_:)();
  }

  sub_10003AE84(&qword_100154758, &qword_10010B5A8);
  type metadata accessor for UnitConversionPopoverView();
  sub_10003AECC(&qword_100154760, &unk_10010B5B0);
  type metadata accessor for PlainButtonStyle();
  sub_100004880(&qword_100154768, &qword_100154760, &unk_10010B5B0);
  sub_10003AF14(&qword_100154770, &type metadata accessor for PlainButtonStyle);
  swift_getOpaqueTypeConformance2();
  sub_10003AF14(&qword_100154778, type metadata accessor for UnitConversionPopoverView);
  return View.popoverCore<A>(isPresented:attachmentAnchor:arrowEdges:isDetachable:content:)();
}

uint64_t sub_10003AE84(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10003AECC(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_10003AF14(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10003AF60()
{
  result = qword_100154780;
  if (!qword_100154780)
  {
    type metadata accessor for _TaskModifier2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154780);
  }

  return result;
}

uint64_t sub_10003AFAC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  if (sub_1000FFD88(2, 26, 4, 0))
  {
    v35 = a6;
    v36 = a7;
    v37 = v8;
    v34 = type metadata accessor for _TaskModifier2();
    v17 = *(v34 - 8);
    v18 = *(v17 + 64);
    __chkstk_darwin(v34);
    v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a1)
    {
      v39[0] = 0;
      v39[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(17);

      strcpy(v39, "View.task @ ");
      BYTE5(v39[1]) = 0;
      HIWORD(v39[1]) = -5120;
      v25._countAndFlagsBits = a3;
      v25._object = a4;
      String.append(_:)(v25);
      v26._countAndFlagsBits = 58;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      v38 = a5;
      v27._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v27);
    }

    v28 = type metadata accessor for TaskPriority();
    v29 = *(*(v28 - 8) + 64);
    __chkstk_darwin(v28);
    (*(v31 + 16))(&v33 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), a2);

    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    sub_100032228(v37, a8);
    v32 = sub_10003AE84(&qword_100154798, &qword_10010B5C0);
    return (*(v17 + 32))(a8 + *(v32 + 36), v20, v34);
  }

  else
  {
    v21 = (a8 + *(sub_10003AE84(&qword_1001547A0, &qword_10010B5C8) + 36));
    v22 = *(type metadata accessor for _TaskModifier() + 20);
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 16))(&v21[v22], a2, v23);
    *v21 = a6;
    *(v21 + 1) = a7;

    return sub_100032228(v8, a8);
  }
}

uint64_t variable initialization expression of CalculatorNetworkManager.networkMonitor()
{
  v0 = type metadata accessor for NWPathMonitor();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return NWPathMonitor.init()();
}

uint64_t getEnumTagSinglePayload for EdgeOutset(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EdgeOutset(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10003B388(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10003B400(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10003B480@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_10003B4C4()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String.hashValue.getter();

  return v2;
}

uint64_t sub_10003B500()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10003B554()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

void *sub_10003B5C8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10003B5D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_10003B660(uint64_t a1)
{
  v2 = sub_10003AF14(&qword_1001547D8, type metadata accessor for CalculateKey);
  v3 = sub_10003AF14(&qword_1001547E0, type metadata accessor for CalculateKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10003B7F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = String._bridgeToObjectiveC()();

  *a2 = v5;
  return result;
}

__n128 sub_10003B850(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10003B864(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10003B8C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_10003B920(uint64_t a1)
{
  v2 = sub_10003AF14(&qword_100154840, type metadata accessor for OpenExternalURLOptionsKey);
  v3 = sub_10003AF14(&qword_100154848, type metadata accessor for OpenExternalURLOptionsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

void *sub_10003BB28(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v4);
  if (v4 != 94)
  {
    *a1 = v4;
  }

  return result;
}

void sub_10003BB78(double a1, double a2)
{
  if (*(v2 + 48) == a1 && *(v2 + 56) == a2)
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10003BC98(double a1, double a2, double a3, double a4)
{
  v9 = *(v4 + 8);
  v10 = *(v4 + 9);
  v11 = *(v4 + 10);
  v12 = *(v4 + 11);
  result = static EdgeInsets.== infix(_:_:)();
  if (result)
  {
    v4[8] = a1;
    v4[9] = a2;
    v4[10] = a3;
    v4[11] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_10003BDE0(double a1, double a2)
{
  if (*(v2 + 96) == a1 && *(v2 + 104) == a2)
  {
    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10003BF00(double a1, double a2, double a3, double a4)
{
  v9 = *(v4 + 14);
  v10 = *(v4 + 15);
  v11 = *(v4 + 16);
  v12 = *(v4 + 17);
  result = static EdgeInsets.== infix(_:_:)();
  if (result)
  {
    v4[14] = a1;
    v4[15] = a2;
    v4[16] = a3;
    v4[17] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10003C048(uint64_t result)
{
  if (*(v1 + 144) == (result & 1))
  {
    *(v1 + 144) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_10003C158()
{
  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

BOOL sub_10003C1F8()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 mainScreen];
  [v3 bounds];
  v5 = v4;

  if (v5 != sub_10003C664())
  {
    return 0;
  }

  v6 = [v2 mainScreen];
  [v6 bounds];
  v8 = v7;

  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = v1[12];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = v9 + v1[15];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v8 == v10 + v1[17])
  {
    return 1;
  }

  v12 = [v2 mainScreen];
  [v12 bounds];
  v14 = v13;

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return v14 == v1[12];
}

__n128 sub_10003C41C@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = v3[3];
  *a2 = result;
  return result;
}

double sub_10003C4EC()
{
  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  return result;
}

__n128 sub_10003C590@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 64);
  v5 = *(v3 + 80);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

double sub_10003C664()
{
  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = v0[6];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = v1 + v0[9];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return v2 + v0[11];
}

double sub_10003C788()
{
  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

double sub_10003C828()
{
  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  return result;
}

__n128 sub_10003C8CC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 112);
  v5 = *(v3 + 128);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_10003C9A0(uint64_t a1)
{
  v3 = objc_opt_self();
  v4 = [v3 currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    swift_getKeyPath();
    sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v1 + 96);
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    return v6 / *(v1 + 104) < 0.98;
  }

  else
  {
    v8 = [v3 currentDevice];
    v9 = [v8 userInterfaceIdiom];

    if (v9)
    {
      return 0;
    }

    else
    {

      return sub_10003CC9C(a1);
    }
  }
}

uint64_t sub_10003CB50()
{
  swift_getKeyPath();
  sub_10000D064(&qword_100154958, type metadata accessor for CalculatorLayout);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 144);
}

uint64_t sub_10003CBF8()
{
  v1 = OBJC_IVAR____TtC10Calculator16CalculatorLayout___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10003CC9C(uint64_t a1)
{
  v54 = a1;
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v2 = *(v1 - 8);
  v3 = v2[8];
  __chkstk_darwin(v1);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10003AE84(&qword_100154940, &unk_10010BCB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v43 - v11;
  v13 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v52 = &v43 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v43 - v20;
  __chkstk_darwin(v19);
  v23 = &v43 - v22;
  v24 = [objc_opt_self() currentDevice];
  v25 = [v24 orientation];

  if (!sub_100018674(v25))
  {
    v47 = v5;
    v50 = v10;
    v49 = v2[13];
    v49(v23, enum case for UserInterfaceSizeClass.compact(_:), v1);
    v48 = v2[7];
    v48(v23, 0, 1, v1);
    v27 = *(v6 + 48);
    sub_10002F074(v54, v12);
    sub_10002F074(v23, &v12[v27]);
    v51 = v2;
    v28 = v2[6];
    if (v28(v12, 1, v1) == 1)
    {
      sub_1000035CC(v23, &qword_100154948, qword_1001130B0);
      if (v28(&v12[v27], 1, v1) == 1)
      {
        v45 = v2 + 13;
        v46 = v6;
        sub_1000035CC(v12, &qword_100154948, qword_1001130B0);
LABEL_10:
        v34 = *(type metadata accessor for CalculatorSizeClass(0) + 20);
        v35 = v52;
        v49(v52, enum case for UserInterfaceSizeClass.regular(_:), v1);
        v48(v35, 0, 1, v1);
        v36 = *(v46 + 48);
        v37 = v50;
        sub_10002F074(v54 + v34, v50);
        sub_10002F074(v35, v37 + v36);
        if (v28(v37, 1, v1) == 1)
        {
          sub_1000035CC(v35, &qword_100154948, qword_1001130B0);
          if (v28(v37 + v36, 1, v1) == 1)
          {
            sub_1000035CC(v37, &qword_100154948, qword_1001130B0);
            v26 = 1;
            return v26 & 1;
          }
        }

        else
        {
          sub_10002F074(v37, v53);
          if (v28(v37 + v36, 1, v1) != 1)
          {
            v39 = v51;
            v40 = v47;
            (v51[4])(v47, v37 + v36, v1);
            sub_10000D064(&qword_100154950, &type metadata accessor for UserInterfaceSizeClass);
            v41 = v53;
            v26 = dispatch thunk of static Equatable.== infix(_:_:)();
            v42 = v39[1];
            v42(v40, v1);
            sub_1000035CC(v35, &qword_100154948, qword_1001130B0);
            v42(v41, v1);
            sub_1000035CC(v37, &qword_100154948, qword_1001130B0);
            return v26 & 1;
          }

          sub_1000035CC(v35, &qword_100154948, qword_1001130B0);
          (v51[1])(v53, v1);
        }

        v29 = v37;
        goto LABEL_16;
      }
    }

    else
    {
      sub_10002F074(v12, v21);
      v44 = v28;
      if (v28(&v12[v27], 1, v1) != 1)
      {
        v45 = v2 + 13;
        v46 = v6;
        v30 = v51;
        v31 = v47;
        (v51[4])(v47, &v12[v27], v1);
        sub_10000D064(&qword_100154950, &type metadata accessor for UserInterfaceSizeClass);
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = v30[1];
        v33(v31, v1);
        sub_1000035CC(v23, &qword_100154948, qword_1001130B0);
        v33(v21, v1);
        sub_1000035CC(v12, &qword_100154948, qword_1001130B0);
        v28 = v44;
        if ((v32 & 1) == 0)
        {
LABEL_17:
          v26 = 0;
          return v26 & 1;
        }

        goto LABEL_10;
      }

      sub_1000035CC(v23, &qword_100154948, qword_1001130B0);
      (v51[1])(v21, v1);
    }

    v29 = v12;
LABEL_16:
    sub_1000035CC(v29, &qword_100154940, &unk_10010BCB0);
    goto LABEL_17;
  }

  v26 = 1;
  return v26 & 1;
}

uint64_t sub_10003D380(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v2 currentDevice];
    v7 = [v6 orientation];

    if (sub_100018664(v7))
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_10003CC9C(a1) ^ 1;
    }
  }

  return v5 & 1;
}

uint64_t sub_10003D448(uint64_t a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v44 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10003AE84(&qword_100154940, &unk_10010BCB0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v51 = &v40[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v11 = &v40[-v10];
  v12 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v50 = &v40[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v49 = &v40[-v17];
  v18 = __chkstk_darwin(v16);
  v20 = &v40[-v19];
  __chkstk_darwin(v18);
  v22 = &v40[-v21];
  v46 = *(v3 + 104);
  v46(&v40[-v21], enum case for UserInterfaceSizeClass.compact(_:), v2);
  v45 = *(v3 + 56);
  v45(v22, 0, 1, v2);
  v47 = v6;
  v48 = a1;
  v23 = *(v6 + 48);
  sub_10002F074(a1, v11);
  sub_10002F074(v22, &v11[v23]);
  v24 = *(v3 + 48);
  if (v24(v11, 1, v2) == 1)
  {
    sub_1000035CC(v22, &qword_100154948, qword_1001130B0);
    if (v24(&v11[v23], 1, v2) == 1)
    {
      v42 = v3;
      sub_1000035CC(v11, &qword_100154948, qword_1001130B0);
      goto LABEL_8;
    }

LABEL_6:
    v25 = v11;
LABEL_14:
    sub_1000035CC(v25, &qword_100154940, &unk_10010BCB0);
    goto LABEL_15;
  }

  sub_10002F074(v11, v20);
  v43 = v24;
  if (v24(&v11[v23], 1, v2) == 1)
  {
    sub_1000035CC(v22, &qword_100154948, qword_1001130B0);
    (*(v3 + 8))(v20, v2);
    goto LABEL_6;
  }

  v26 = &v11[v23];
  v27 = v44;
  (*(v3 + 32))(v44, v26, v2);
  sub_10000D064(&qword_100154950, &type metadata accessor for UserInterfaceSizeClass);
  v41 = dispatch thunk of static Equatable.== infix(_:_:)();
  v42 = v3;
  v28 = *(v3 + 8);
  v28(v27, v2);
  sub_1000035CC(v22, &qword_100154948, qword_1001130B0);
  v28(v20, v2);
  sub_1000035CC(v11, &qword_100154948, qword_1001130B0);
  v24 = v43;
  if ((v41 & 1) == 0)
  {
LABEL_15:
    v34 = 0;
    return v34 & 1;
  }

LABEL_8:
  v29 = *(type metadata accessor for CalculatorSizeClass(0) + 20);
  v30 = v49;
  v46(v49, enum case for UserInterfaceSizeClass.regular(_:), v2);
  v45(v30, 0, 1, v2);
  v31 = *(v47 + 48);
  v32 = v48 + v29;
  v33 = v51;
  sub_10002F074(v32, v51);
  sub_10002F074(v30, &v33[v31]);
  if (v24(v33, 1, v2) != 1)
  {
    sub_10002F074(v33, v50);
    if (v24(&v33[v31], 1, v2) != 1)
    {
      v36 = v42;
      v37 = v44;
      (*(v42 + 32))(v44, &v33[v31], v2);
      sub_10000D064(&qword_100154950, &type metadata accessor for UserInterfaceSizeClass);
      v38 = v50;
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v36 + 8);
      v39(v37, v2);
      sub_1000035CC(v30, &qword_100154948, qword_1001130B0);
      v39(v38, v2);
      sub_1000035CC(v33, &qword_100154948, qword_1001130B0);
      return v34 & 1;
    }

    sub_1000035CC(v30, &qword_100154948, qword_1001130B0);
    (*(v42 + 8))(v50, v2);
    goto LABEL_13;
  }

  sub_1000035CC(v30, &qword_100154948, qword_1001130B0);
  if (v24(&v33[v31], 1, v2) != 1)
  {
LABEL_13:
    v25 = v33;
    goto LABEL_14;
  }

  sub_1000035CC(v33, &qword_100154948, qword_1001130B0);
  v34 = 1;
  return v34 & 1;
}

void sub_10003DAD4()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1)
  {
    v2 = objc_opt_self();
    v3 = [v2 mainScreen];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v22.origin.x = v5;
    v22.origin.y = v7;
    v22.size.width = v9;
    v22.size.height = v11;
    CGRectGetWidth(v22);
    v12 = [v2 mainScreen];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v23.origin.x = v14;
    v23.origin.y = v16;
    v23.size.width = v18;
    v23.size.height = v20;
    CGRectGetHeight(v23);
    v21 = [v2 mainScreen];
    [v21 bounds];
  }
}

uint64_t sub_10003DC4C(uint64_t a1)
{
  v2 = type metadata accessor for UserInterfaceSizeClass();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10003AE84(&qword_100154940, &unk_10010BCB0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v25 - v9;
  v11 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v25 - v16;
  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 userInterfaceIdiom];

  if (!v19)
  {
    goto LABEL_5;
  }

  (*(v3 + 104))(v17, enum case for UserInterfaceSizeClass.compact(_:), v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  v20 = *(v7 + 48);
  sub_10002F074(a1, v10);
  sub_10002F074(v17, &v10[v20]);
  v21 = *(v3 + 48);
  if (v21(v10, 1, v2) != 1)
  {
    sub_10002F074(v10, v15);
    if (v21(&v10[v20], 1, v2) != 1)
    {
      (*(v3 + 32))(v6, &v10[v20], v2);
      sub_10000D064(&qword_100154950, &type metadata accessor for UserInterfaceSizeClass);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *(v3 + 8);
      v23(v6, v2);
      sub_1000035CC(v17, &qword_100154948, qword_1001130B0);
      v23(v15, v2);
      sub_1000035CC(v10, &qword_100154948, qword_1001130B0);
      return v22 & 1;
    }

    sub_1000035CC(v17, &qword_100154948, qword_1001130B0);
    (*(v3 + 8))(v15, v2);
    goto LABEL_8;
  }

  sub_1000035CC(v17, &qword_100154948, qword_1001130B0);
  if (v21(&v10[v20], 1, v2) != 1)
  {
LABEL_8:
    sub_1000035CC(v10, &qword_100154940, &unk_10010BCB0);
    v22 = 0;
    return v22 & 1;
  }

  sub_1000035CC(v10, &qword_100154948, qword_1001130B0);
LABEL_5:
  v22 = 1;
  return v22 & 1;
}

void sub_10003E0B0()
{
  sub_10003E11C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10003E11C()
{
  if (!qword_1001549C8)
  {
    type metadata accessor for UserInterfaceSizeClass();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1001549C8);
    }
  }
}

void *sub_10003E1CC()
{
  v0 = type metadata accessor for CalculatorHistoryRecordManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_10003FBC8();
  qword_100160878 = result;
  return result;
}

uint64_t sub_10003E20C()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t sub_10003E2C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_10003E384(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);

  v5 = sub_1000ABD3C(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 32);
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10003E4CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);
  *(a1 + 32) = a2;
}

uint64_t sub_10003E534()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

uint64_t sub_10003E5D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_10003E67C(uint64_t result)
{
  if (*(v1 + 40) == (result & 1))
  {
    *(v1 + 40) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10003E78C()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 56);
}

uint64_t sub_10003E82C(uint64_t result)
{
  if (*(v1 + 56) == (result & 1))
  {
    *(v1 + 56) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10003E93C(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v2 + 48);
  *(v2 + 48) = a1;

  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v2 + 56) & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10003EAA0()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t sub_10003EB58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_10003EC38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 56);
  return result;
}

id sub_10003ED08()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 64);

  return v1;
}

id sub_10003EDB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 64);
  *a2 = v4;

  return v4;
}

void sub_10003EE70(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 64);
  sub_10003AE84(&qword_100154C10, &qword_10010C0F0);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 64);
    *(v2 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

id sub_10003EFD8()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 72);

  return v1;
}

id sub_10003F088@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_10003F140(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
  sub_10003AE84(&qword_100154C10, &qword_10010C0F0);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 72);
    *(v2 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10003F2A8()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 80);
}

uint64_t sub_10003F360@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t sub_10003F420(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);

  v5 = sub_10004AA70(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 80);
    *(v1 + 80) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10003F568(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 80);
  *(a1 + 80) = a2;
}

uint64_t sub_10003F5D0()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 88);
  return swift_unknownObjectRetain();
}

uint64_t sub_10003F674@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 88);
  return swift_unknownObjectRetain();
}

uint64_t sub_10003F720(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

id sub_10003F89C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalculatorHistoryRecordManager.NSCacheObserver();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10003F8E8()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

id sub_10003F990@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 96);
  *a2 = v4;

  return v4;
}

void sub_10003FA48(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 96);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for CalculatorHistoryRecordManager.NSCacheObserver();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 96);
LABEL_8:
  *(v2 + 96) = a1;
}

void *sub_10003FBC8()
{
  v1 = v0;
  v2 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = aBlock - v4;
  *(v0 + 32) = &_swiftEmptyArrayStorage;
  *(v0 + 40) = 0;
  *(v0 + 48) = &_swiftEmptyArrayStorage;
  *(v0 + 56) = 0;
  *(v0 + 64) = [objc_allocWithZone(NSCache) init];
  *(v0 + 72) = [objc_allocWithZone(NSCache) init];
  *(v0 + 80) = &_swiftEmptySetSingleton;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  ObservationRegistrar.init()();
  v6 = sub_1000403E4(0);
  *(v0 + 16) = v6;
  type metadata accessor for StoreContext();
  v7 = swift_allocObject();
  v8 = type metadata accessor for ModelContext();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  swift_retain_n();
  ModelContext.init(_:)();
  v11 = type metadata accessor for DefaultSerialModelExecutor();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = DefaultSerialModelExecutor.init(modelContext:)();
  v15 = sub_100026874(&qword_100154BF0, &type metadata accessor for DefaultSerialModelExecutor);
  v7[2] = v14;
  v7[3] = v15;
  v7[4] = v6;
  v1[3] = v7;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v17;
  swift_retain_n();
  sub_1000502A0(0, 0, v5, &unk_10010C020, v18);

  sub_1000035CC(v5, &qword_100154BB0, &qword_10010FAE0);
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_1000048C8(v19, qword_100160D38);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Successfully initialized record manager.", v22, 2u);
  }

  v23 = swift_allocObject();
  swift_weakInit();

  v24 = type metadata accessor for CalculatorHistoryRecordManager.NSCacheObserver();
  v25 = objc_allocWithZone(v24);
  v26 = &v25[OBJC_IVAR____TtCC10Calculator30CalculatorHistoryRecordManagerP33_4DA60216990E372C1AC9732F1D785D1D15NSCacheObserver_callback];
  *v26 = sub_10004B118;
  v26[1] = v23;
  v40.receiver = v25;
  v40.super_class = v24;
  v27 = objc_msgSendSuper2(&v40, "init");
  sub_10003FA48(v27);
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v28 = v1[8];
  swift_getKeyPath();
  aBlock[0] = v1;
  v29 = v28;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [v29 setDelegate:v1[12]];

  swift_getKeyPath();
  aBlock[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = v1[9];
  swift_getKeyPath();
  aBlock[0] = v1;
  v31 = v30;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [v31 setDelegate:v1[12]];

  v32 = [objc_opt_self() defaultCenter];
  if (qword_1001544F8 != -1)
  {
    swift_once();
  }

  v33 = qword_100160B20;
  v34 = [objc_opt_self() mainQueue];
  v35 = swift_allocObject();
  swift_weakInit();

  aBlock[4] = sub_10004B120;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10005628C;
  aBlock[3] = &unk_100149CE0;
  v36 = _Block_copy(aBlock);

  v37 = [v32 addObserverForName:v33 object:0 queue:v34 usingBlock:v36];
  _Block_release(v36);
  swift_unknownObjectRelease();

  return v1;
}

void *sub_1000403E4(int a1)
{
  v83 = a1;
  v1 = type metadata accessor for ModelConfiguration.GroupContainer();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v81[1] = v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ModelConfiguration.CloudKitDatabase();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v86 = type metadata accessor for ModelConfiguration();
  v89 = *(v86 - 8);
  v6 = v89[8];
  v7 = __chkstk_darwin(v86);
  v81[0] = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = v81 - v10;
  __chkstk_darwin(v9);
  v88 = v81 - v12;
  v13 = type metadata accessor for Schema.Version();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  sub_10003AE84(&qword_100154C20, &qword_10010C110);
  v15 = swift_allocObject();
  v82 = xmmword_10010BDE0;
  *(v15 + 16) = xmmword_10010BDE0;
  v16 = type metadata accessor for SchemaV1.HistoryRecord();
  v17 = sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  Schema.Version.init(_:_:_:)();
  v18 = type metadata accessor for Schema();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = Schema.init(_:version:)();
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_1000048C8(v22, qword_100160D38);

  v87 = v23;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  v26 = os_log_type_enabled(v24, v25);
  v85 = v21;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v91 = v28;
    *v27 = 136315138;
    v90 = v21;

    v29 = String.init<A>(describing:)();
    v31 = sub_100006E5C(v29, v30, &v91);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v25, "setup - schema: %s", v27, 0xCu);
    sub_100003F80(v28);
  }

  v32 = objc_opt_self();
  v33 = [v32 processInfo];
  v34 = [v33 environment];

  v35 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v35 + 16))
  {
    sub_10007519C(0xD00000000000001BLL, 0x8000000100105920);
    v37 = v36;

    if (v37)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v38 = [v32 processInfo];
  v39 = [v38 environment];

  v40 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v40 + 16))
  {
    v41 = sub_10007519C(0xD00000000000001ALL, 0x8000000100105940);
    if (v42)
    {
      v43 = (*(v40 + 56) + 16 * v41);
      v45 = *v43;
      v44 = v43[1];

      if (v45 != 49 || v44 != 0xE100000000000000)
      {
        _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }
  }

LABEL_14:
  static ModelConfiguration.CloudKitDatabase.none.getter();
  static ModelConfiguration.GroupContainer.automatic.getter();
  v46 = v88;
  ModelConfiguration.init(_:schema:isStoredInMemoryOnly:allowsSave:groupContainer:cloudKitDatabase:)();
  v47 = v89;
  v48 = v89[2];
  v49 = v86;
  v48(v11, v46, v86);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v91 = v53;
    *v52 = 136315138;
    v48(v81[0], v11, v49);
    v54 = String.init<A>(describing:)();
    v56 = v55;
    v57 = v11;
    v58 = v89[1];
    v58(v57, v86);
    v59 = sub_100006E5C(v54, v56, &v91);
    v49 = v86;

    *(v52 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v50, v51, "setup - configuration: %s", v52, 0xCu);
    sub_100003F80(v53);

    v47 = v89;

    if ((v83 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {

    v60 = v11;
    v58 = v47[1];
    v58(v60, v49);
    if ((v83 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "setup - performing migration", v63, 2u);
  }

LABEL_21:
  type metadata accessor for ModelContainer();
  sub_10003AE84(&qword_100154C28, &qword_10010C118);
  v64 = v47[9];
  v65 = (*(v47 + 80) + 32) & ~*(v47 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = v82;
  v48((v66 + v65), v88, v49);

  v67 = v84;
  v68 = ModelContainer.__allocating_init(for:migrationPlan:configurations:)();
  if (v67)
  {
    v58(v88, v49);

    sub_10004B2F0();
    swift_allocError();
    *v69 = v67;
    swift_willThrow();
  }

  else
  {
    v47 = v68;
    swift_retain_n();
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v91 = v84;
      *v72 = 136315138;
      v90 = v47;
      type metadata accessor for ModelContainer();
      v73 = String.init<A>(describing:)();
      v75 = v58;
      v76 = sub_100006E5C(v73, v74, &v91);
      v49 = v86;

      *(v72 + 4) = v76;
      v58 = v75;
      _os_log_impl(&_mh_execute_header, v70, v71, "setup - container: %s", v72, 0xCu);
      sub_100003F80(v84);
    }

    else
    {
    }

    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "Successfully initialized data store", v79, 2u);
    }

    else
    {
    }

    v58(v88, v49);
  }

  return v47;
}

uint64_t sub_100040DE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    sub_100007314(a2, v5);
    type metadata accessor for CalculateExpression();
    if (swift_dynamicCast())
    {
      swift_getKeyPath();
      v5[0] = v4;
      sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5[0] = v4;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      swift_beginAccess();
      sub_100048F9C();
      swift_endAccess();

      v5[0] = v4;
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }
  }

  return result;
}

uint64_t sub_100040FA4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v2 = *(v1 + 80);
    if ((v2 & 0xC000000000000001) != 0)
    {
      if (v2 < 0)
      {
        v3 = *(v1 + 80);
      }

      v4 = *(v1 + 80);

      __CocoaSet.makeIterator()();
      type metadata accessor for CalculateExpression();
      sub_100026874(&qword_100154BF8, &type metadata accessor for CalculateExpression);
      result = Set.Iterator.init(_cocoa:)();
      v2 = v1;
      v5 = v21;
      v6 = v22;
      v7 = v23;
      v8 = v24;
    }

    else
    {
      v9 = -1 << *(v2 + 32);
      v5 = v2 + 56;
      v6 = ~v9;
      v10 = -v9;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      else
      {
        v11 = -1;
      }

      v8 = v11 & *(v2 + 56);
      v12 = *(v1 + 80);

      v7 = 0;
    }

    if (v2 < 0)
    {
      goto LABEL_17;
    }

    while (1)
    {
      v13 = v7;
      v14 = v8;
      v15 = v7;
      if (!v8)
      {
        break;
      }

LABEL_15:
      v16 = (v14 - 1) & v14;
      v17 = *(*(v2 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

      if (!v17)
      {
LABEL_23:
        sub_10004B164();
      }

      while (1)
      {
        if (qword_100154728 != -1)
        {
          swift_once();
        }

        v18 = qword_100160D98;
        swift_getKeyPath();
        v20 = v18;
        sub_100026874(&qword_100154C00, type metadata accessor for AppSettings);
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v19 = *(v18 + 17);
        CalculateExpression.allowsArabicMath.setter();

        v7 = v15;
        v8 = v16;
        if ((v2 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_17:
        if (__CocoaSet.Iterator.next()())
        {
          type metadata accessor for CalculateExpression();
          swift_dynamicCast();
          v15 = v7;
          v16 = v8;
          if (v20)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v6 + 64) >> 6))
      {
        goto LABEL_23;
      }

      v14 = *(v5 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000412FC()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*(v0 + 64) removeAllObjects];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*(v0 + 72) removeAllObjects];
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 80);
  *(v0 + 80) = &_swiftEmptySetSingleton;

  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

void sub_1000414A4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtCO10Calculator8SchemaV113HistoryRecord___observationRegistrar;
  v45 = a1;
  swift_getKeyPath();
  v10 = sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
  v41[3] = v9;
  v41[1] = v10;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  v11 = sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  sub_100026874(&qword_100154BD0, &type metadata accessor for Date);
  v41[2] = v11;
  PersistentModel.getValue<A>(forKey:)();

  v12 = sub_10006C894();
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  swift_getKeyPath();
  v45 = v2;
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v15 = *(v2 + 48);
  v16 = *(v15 + 16);
  if (!v16)
  {
LABEL_34:
    sub_10003AE84(&qword_100154BD8, &qword_10010BFB0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_10010BDF0;
    *(v32 + 32) = a1;
    swift_getKeyPath();
    v43 = v2;

    sub_100048EE4(v12, v14);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v43 = v2;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    sub_1000AC814(0, 0, v12, v14, v32);
    swift_endAccess();
    swift_getKeyPath();
    v43 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(v2 + 56) & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v41[-2] = v2;
      LOBYTE(v41[-1]) = 1;
      v43 = v2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v43 = v2;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000048C8(v34, qword_100160D38);

    sub_100048EE4(v12, v14);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    sub_10004AA5C(v12, v14);
    if (!os_log_type_enabled(v27, v28))
    {

      v37 = v12;
LABEL_48:
      sub_10004AA5C(v37, v14);
      return;
    }

    v29 = swift_slowAlloc();
    v42[0] = swift_slowAlloc();
    *v29 = 136315394;
    v43 = a1;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v35 = sub_100006E5C(v43, v44, v42);

    *(v29 + 4) = v35;
    *(v29 + 12) = 2080;
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v36 = 0x73756F6976657250;
        v14 = 0xEF73796144203720;
        goto LABEL_55;
      }

      if (v14 == 3)
      {
        v36 = 0xD000000000000010;
        v14 = 0x8000000100105860;
        goto LABEL_55;
      }
    }

    else
    {
      if (!v14)
      {
        v36 = 0x7961646F54;
        v14 = 0xE500000000000000;
        goto LABEL_55;
      }

      if (v14 == 1)
      {
        v36 = 0x6164726574736559;
        v14 = 0xE900000000000079;
LABEL_55:
        v38 = sub_100006E5C(v36, v14, v42);

        *(v29 + 14) = v38;
        v39 = "Added record: %s to history in new section for: %s";
        goto LABEL_60;
      }
    }

    v36 = v12;
    goto LABEL_55;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = *(v15 + v17 + 40);
    if (v19 > 1)
    {
      break;
    }

    if (v19)
    {
      if (v19 != 1)
      {
        goto LABEL_14;
      }

      if (v14 == 1)
      {
        goto LABEL_22;
      }
    }

    else if (!v14)
    {
      goto LABEL_22;
    }

LABEL_4:
    ++v18;
    v17 += 24;
    if (v16 == v18)
    {
      goto LABEL_34;
    }
  }

  if (v19 == 2)
  {
    if (v14 == 2)
    {
      goto LABEL_22;
    }

    goto LABEL_4;
  }

  if (v19 == 3)
  {
    if (v14 == 3)
    {
      goto LABEL_22;
    }

    goto LABEL_4;
  }

LABEL_14:
  if (v14 < 4)
  {
    goto LABEL_4;
  }

  v20 = *(v15 + v17 + 32) == v12 && v19 == v14;
  if (!v20 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_22:
  v41[0] = v12;
  swift_getKeyPath();
  v43 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v43 = v2;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  v21 = *(v2 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 48) = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_1000ACA4C(v21);
    *(v2 + 48) = v21;
  }

  v23 = v18 >= *(v21 + 2);
  v24 = v41[0];
  if (v23)
  {
    __break(1u);
  }

  else if (!(*&v21[v17 + 48] >> 62))
  {
    goto LABEL_26;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
    goto LABEL_64;
  }

LABEL_26:

  sub_1000AE180(0, 0, a1);
  *(v2 + 48) = v21;
  swift_endAccess();

  swift_getKeyPath();
  v43 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v2 + 56) & 1) == 0)
  {
    v25 = swift_getKeyPath();
    __chkstk_darwin(v25);
    v41[-2] = v2;
    LOBYTE(v41[-1]) = 1;
    v43 = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    v24 = v41[0];
  }

  v43 = v2;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (qword_1001546E8 != -1)
  {
LABEL_64:
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000048C8(v26, qword_100160D38);

  sub_100048EE4(v24, v14);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();

  sub_10004AA5C(v24, v14);
  if (!os_log_type_enabled(v27, v28))
  {

    v37 = v24;
    goto LABEL_48;
  }

  v29 = swift_slowAlloc();
  v42[0] = swift_slowAlloc();
  *v29 = 136315394;
  v43 = a1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  PersistentModel.getValue<A>(forKey:)();

  v30 = sub_100006E5C(v43, v44, v42);

  *(v29 + 4) = v30;
  *(v29 + 12) = 2080;
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v31 = 0x73756F6976657250;
      v14 = 0xEF73796144203720;
    }

    else
    {
      if (v14 != 3)
      {
        goto LABEL_56;
      }

      v31 = 0xD000000000000010;
      v14 = 0x8000000100105860;
    }
  }

  else if (v14)
  {
    if (v14 == 1)
    {
      v31 = 0x6164726574736559;
      v14 = 0xE900000000000079;
      goto LABEL_59;
    }

LABEL_56:
    v31 = v41[0];
  }

  else
  {
    v31 = 0x7961646F54;
    v14 = 0xE500000000000000;
  }

LABEL_59:
  v40 = sub_100006E5C(v31, v14, v42);

  *(v29 + 14) = v40;
  v39 = "Added record: %s to history in existing section: %s";
LABEL_60:
  _os_log_impl(&_mh_execute_header, v27, v28, v39, v29, 0x16u);
  swift_arrayDestroy();
}

uint64_t sub_100042024(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for GenericRecord();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  __chkstk_darwin(v8 - 8);
  sub_100045810(a1, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for SchemaV1.HistoryRecord();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = sub_10007A434(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v23 = v1;
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 40))
  {
    sub_1000414A4(v13);
    v14 = [objc_opt_self() defaultCenter];
    if (qword_1001544C8 != -1)
    {
      swift_once();
    }

    [v14 postNotificationName:qword_100160AF0 object:0];
  }

  else
  {
    v21 = a1;
    swift_getKeyPath();
    v23 = v1;

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = v1;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v19 = *((*(v1 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    v23 = v1;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    a1 = v21;
  }

  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  sub_100045810(a1, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v22 + 80) + 40) & ~*(v22 + 80);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v2;
  sub_100048D28(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);

  sub_1000502A0(0, 0, v7, &unk_10010BF58, v17);

  return sub_1000035CC(v7, &qword_100154BB0, &qword_10010FAE0);
}

uint64_t sub_100042448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100042468, 0, 0);
}

uint64_t sub_100042468()
{
  v1 = *(v0[2] + 24);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_10004C394;
  v3 = v0[3];

  return sub_100095308(v3);
}

void sub_100042504(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v79 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC10Calculator30CalculatorHistoryRecordManager___observationRegistrar;
  v99 = v1;
  v85 = sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(*(v1 + 48) + 16))
  {
    v91 = v8;
    v83 = v13;
    if (qword_1001546E8 != -1)
    {
LABEL_88:
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    v15 = sub_1000048C8(v14, qword_100160D38);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.debug.getter();

    v18 = os_log_type_enabled(v16, v17);
    v95 = a1;
    v84 = v2;
    v82 = v7;
    v81 = v15;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v98 = v20;
      *v19 = 136315138;
      v96 = v95;
      swift_getKeyPath();
      sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
      ObservationRegistrar.access<A, B>(_:keyPath:)();
      v2 = v84;

      swift_getKeyPath();
      sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
      PersistentModel.getValue<A>(forKey:)();

      v21 = sub_100006E5C(v96, v97, &v98);

      *(v19 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "Deleting record: %s", v19, 0xCu);
      sub_100003F80(v20);

      a1 = v95;
    }

    v22 = OBJC_IVAR____TtCO10Calculator8SchemaV113HistoryRecord___observationRegistrar;
    v96 = a1;
    swift_getKeyPath();
    v93 = sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
    v94 = v22;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    v23 = sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
    sub_100026874(&qword_100154BD0, &type metadata accessor for Date);
    v92 = v23;
    PersistentModel.getValue<A>(forKey:)();

    v7 = sub_10006C894();
    v25 = v24;
    (*(v9 + 8))(v12, v91);
    swift_getKeyPath();
    v96 = v2;
    v26 = v83;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v27 = *(v2 + 48);
    v28 = *(v27 + 16);
    if (v28)
    {
      v2 = 0;
      for (i = 0; v28 != i; ++i)
      {
        v30 = *(v27 + v2 + 40);
        if (v30 > 1)
        {
          if (v30 == 2)
          {
            if (v25 == 2)
            {
              goto LABEL_26;
            }

            goto LABEL_8;
          }

          if (v30 == 3)
          {
            if (v25 == 3)
            {
              goto LABEL_26;
            }

            goto LABEL_8;
          }
        }

        else
        {
          if (!v30)
          {
            if (!v25)
            {
              goto LABEL_26;
            }

            goto LABEL_8;
          }

          if (v30 == 1)
          {
            if (v25 == 1)
            {
              goto LABEL_26;
            }

            goto LABEL_8;
          }
        }

        if (v25 >= 4)
        {
          v31 = *(v27 + v2 + 32) == v7 && v30 == v25;
          if (v31 || (v32 = i, v33 = _stringCompareWithSmolCheck(_:_:expecting:)(), i = v32, (v33 & 1) != 0))
          {
LABEL_26:
            v80 = i;
            swift_getKeyPath();
            v34 = v26;
            v35 = v84;
            v96 = v84;
            v36 = v84 + v34;
            ObservationRegistrar.access<A, B>(_:keyPath:)();

            v37 = *(v35 + 48);
            if (v80 >= *(v37 + 16))
            {
              __break(1u);
            }

            else
            {
              v36 = *(v37 + v2 + 48);
              if (!(v36 >> 62))
              {
                v86 = v36 & 0xFFFFFFFFFFFFFF8;
                v91 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:
                v90 = v36 & 0xC000000000000001;

                v12 = 0;
                v88 = v25;
                v89 = v7;
                v87 = v36;
                v9 = v92;
                while (v91 != v12)
                {
                  if (v90)
                  {
                    v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    v38 = &qword_100156000;
                  }

                  else
                  {
                    v38 = &qword_100156000;
                    if (v12 >= *(v86 + 16))
                    {
                      __break(1u);
LABEL_87:
                      __break(1u);
                      goto LABEL_88;
                    }

                    v39 = *(v36 + 8 * v12 + 32);
                  }

                  v40 = v38[28];
                  v96 = v39;
                  swift_getKeyPath();
                  a1 = v93;
                  ObservationRegistrar.access<A, B>(_:keyPath:)();

                  swift_getKeyPath();
                  PersistentModel.getValue<A>(forKey:)();

                  v42 = v96;
                  v41 = v97;
                  v96 = v95;
                  swift_getKeyPath();
                  ObservationRegistrar.access<A, B>(_:keyPath:)();

                  swift_getKeyPath();
                  PersistentModel.getValue<A>(forKey:)();

                  if (v42 == v96 && v41 == v97)
                  {

                    v25 = v88;
                    v55 = v89;
                    goto LABEL_62;
                  }

                  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  v25 = v88;
                  if (v43)
                  {
                    v55 = v89;
LABEL_62:

                    sub_10004AA5C(v55, v25);
                    swift_getKeyPath();
                    v56 = v84;
                    v96 = v84;
                    ObservationRegistrar.access<A, B>(_:keyPath:)();

                    v96 = v56;
                    swift_getKeyPath();
                    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

                    swift_beginAccess();
                    v57 = *(v56 + 48);
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    *(v56 + 48) = v57;
                    a1 = v95;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v57 = sub_1000ACA4C(v57);
                      *(v84 + 48) = v57;
                    }

                    if (v80 >= *(v57 + 2))
                    {
                      __break(1u);
                    }

                    else
                    {
                      sub_1000A86AC(v12);
                      v59 = v84;
                      *(v84 + 48) = v57;
                      swift_endAccess();

                      swift_getKeyPath();
                      v96 = v59;
                      ObservationRegistrar.access<A, B>(_:keyPath:)();

                      if ((*(v59 + 56) & 1) == 0)
                      {
                        KeyPath = swift_getKeyPath();
                        __chkstk_darwin(KeyPath);
                        *(&v79 - 2) = v59;
                        *(&v79 - 8) = 1;
                        v96 = v59;
                        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                      }

                      v96 = v59;
                      swift_getKeyPath();
                      ObservationRegistrar.didSet<A, B>(_:keyPath:)();

                      swift_getKeyPath();
                      v96 = v59;
                      ObservationRegistrar.access<A, B>(_:keyPath:)();

                      v61 = *(v59 + 48);
                      v62 = v80;
                      if (v80 < *(v61 + 16))
                      {
                        v63 = *(v61 + v2 + 48);
                        if (!(v63 >> 62))
                        {
                          v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
                          goto LABEL_70;
                        }

LABEL_93:
                        v64 = _CocoaArrayWrapper.endIndex.getter();
                        v62 = v80;
LABEL_70:
                        v65 = v82;
                        v66 = v84;
                        if (!v64)
                        {
                          swift_getKeyPath();
                          v96 = v66;
                          ObservationRegistrar.access<A, B>(_:keyPath:)();

                          v96 = v66;
                          swift_getKeyPath();
                          ObservationRegistrar.willSet<A, B>(_:keyPath:)();

                          swift_beginAccess();
                          v67 = sub_1000A86B0(v62);
                          v69 = v68;
                          swift_endAccess();
                          sub_10004AA5C(v67, v69);

                          swift_getKeyPath();
                          v96 = v66;
                          ObservationRegistrar.access<A, B>(_:keyPath:)();

                          if ((*(v66 + 56) & 1) == 0)
                          {
                            v70 = swift_getKeyPath();
                            __chkstk_darwin(v70);
                            *(&v79 - 2) = v66;
                            *(&v79 - 8) = 1;
                            v96 = v66;
                            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
                          }

                          v96 = v66;
                          swift_getKeyPath();
                          ObservationRegistrar.didSet<A, B>(_:keyPath:)();
                        }

                        goto LABEL_79;
                      }
                    }

                    __break(1u);
                    goto LABEL_93;
                  }

                  v44 = __OFADD__(v12++, 1);
                  v7 = v89;
                  v36 = v87;
                  if (v44)
                  {
                    goto LABEL_87;
                  }
                }

                a1 = v95;

                sub_100048EE4(v7, v25);
                v45 = Logger.logObject.getter();
                v46 = static os_log_type_t.error.getter();

                sub_10004AA5C(v7, v25);
                if (!os_log_type_enabled(v45, v46))
                {
                  goto LABEL_59;
                }

                v47 = swift_slowAlloc();
                v98 = swift_slowAlloc();
                *v47 = 136315394;
                v96 = a1;
                swift_getKeyPath();
                ObservationRegistrar.access<A, B>(_:keyPath:)();

                swift_getKeyPath();
                PersistentModel.getValue<A>(forKey:)();

                v54 = sub_100006E5C(v96, v97, &v98);

                *(v47 + 4) = v54;
                *(v47 + 12) = 2080;
                if (v25 > 1)
                {
                  if (v25 == 2)
                  {
                    v7 = 0x73756F6976657250;
                    v25 = 0xEF73796144203720;
                  }

                  else if (v25 == 3)
                  {
                    v7 = 0xD000000000000010;
                    v25 = 0x8000000100105860;
                  }
                }

                else if (v25)
                {
                  if (v25 == 1)
                  {
                    v7 = 0x6164726574736559;
                    v25 = 0xE900000000000079;
                  }
                }

                else
                {
                  v7 = 0x7961646F54;
                  v25 = 0xE500000000000000;
                }

                v78 = sub_100006E5C(v7, v25, &v98);

                *(v47 + 14) = v78;
                v73 = "Failed to find and delete record: %s from section: %s list.";
LABEL_77:
                _os_log_impl(&_mh_execute_header, v45, v46, v73, v47, 0x16u);
                swift_arrayDestroy();

                goto LABEL_78;
              }
            }

            v86 = v36 & 0xFFFFFFFFFFFFFF8;
            v91 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_29;
          }
        }

LABEL_8:
        v2 += 24;
      }
    }

    sub_100048EE4(v7, v25);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    sub_10004AA5C(v7, v25);

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v47 = 136315394;
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          v7 = 0x73756F6976657250;
          v25 = 0xEF73796144203720;
        }

        else if (v25 == 3)
        {
          v7 = 0xD000000000000010;
          v25 = 0x8000000100105860;
        }
      }

      else if (v25)
      {
        if (v25 == 1)
        {
          v7 = 0x6164726574736559;
          v25 = 0xE900000000000079;
        }
      }

      else
      {
        v7 = 0x7961646F54;
        v25 = 0xE500000000000000;
      }

      v71 = sub_100006E5C(v7, v25, &v98);

      *(v47 + 4) = v71;
      *(v47 + 12) = 2080;
      v96 = a1;
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      PersistentModel.getValue<A>(forKey:)();

      v72 = sub_100006E5C(v96, v97, &v98);

      *(v47 + 14) = v72;
      v73 = "Failed to find section: %s and delete record: %s";
      goto LABEL_77;
    }

LABEL_59:

    sub_10004AA5C(v7, v25);
LABEL_78:
    v65 = v82;
    v66 = v84;
LABEL_79:
    v96 = a1;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v74 = v96;
    v75 = v97;
    v76 = type metadata accessor for TaskPriority();
    (*(*(v76 - 8) + 56))(v65, 1, 1, v76);
    v77 = swift_allocObject();
    v77[2] = 0;
    v77[3] = 0;
    v77[4] = v66;
    v77[5] = v74;
    v77[6] = v75;

    sub_100043A2C(0, 0, v65, &unk_10010C3B8, v77);

    sub_1000035CC(v65, &qword_100154BB0, &qword_10010FAE0);
  }

  else
  {
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    sub_1000048C8(v48, qword_100160D38);

    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v98 = v52;
      *v51 = 136315138;
      v96 = a1;
      swift_getKeyPath();
      sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
      PersistentModel.getValue<A>(forKey:)();

      v53 = sub_100006E5C(v96, v97, &v98);

      *(v51 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v49, v50, "Failed to delete record: %s from empty list.", v51, 0xCu);
      sub_100003F80(v52);
    }
  }
}

uint64_t sub_100043874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_100043898, 0, 0);
}

uint64_t sub_100043898()
{
  v1 = *(v0[2] + 24);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_100043938;
  v4 = v0[3];
  v3 = v0[4];

  return sub_10009597C(v4, v3, 0);
}

uint64_t sub_100043938()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100043A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_10004BD1C(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000035CC(v11, &qword_100154BB0, &qword_10010FAE0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

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

  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_100043C88(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = __CocoaSet.count.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(a1 + 16);
    if (!result)
    {
      return result;
    }
  }

  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000048C8(v9, qword_100160D38);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Deleting multiple records.", v12, 2u);
  }

  swift_getKeyPath();

  v13 = sub_10004B914(a1, sub_10004B6CC);

  v14 = type metadata accessor for TaskPriority();
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v2;
  v16[5] = v13;

  sub_1000502A0(0, 0, v7, &unk_10010C378, v16);

  sub_1000035CC(v7, &qword_100154BB0, &qword_10010FAE0);
  v15(v7, 1, 1, v14);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v2;
  v17[5] = v13;

  sub_100043A2C(0, 0, v7, &unk_10010C388, v17);

  return sub_1000035CC(v7, &qword_100154BB0, &qword_10010FAE0);
}

uint64_t sub_100043F7C()
{

  swift_getAtKeyPath();

  return v1;
}

uint64_t sub_100043FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = *(*(sub_10003AE84(&qword_100154BB0, &qword_10010FAE0) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_100044068, 0, 0);
}

void sub_100044068()
{
  v105 = v0;
  v1 = v0[6];
  swift_getKeyPath();
  v98 = v0;
  v0[5] = v1;
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = *(v2 + 2);

  v96 = v3;
  if (!v3)
  {
    goto LABEL_135;
  }

  v4 = 0;
  v5 = 0;
  v6 = 48;
  do
  {
    if (v5 >= *(v2 + 2))
    {
      goto LABEL_141;
    }

    v7 = v98[7];
    v104[0] = *&v2[v6];

    v8 = sub_10004BD8C(v104, v7);
    v9 = v4;

    v10 = v104[0];
    v11 = v104[0] >> 62;
    if (v104[0] >> 62)
    {
      v12 = _CocoaArrayWrapper.endIndex.getter();
      v13 = v12 - v8;
      if (v12 < v8)
      {
        goto LABEL_142;
      }
    }

    else
    {
      v12 = *((v104[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 - v8;
      if (v12 < v8)
      {
        goto LABEL_142;
      }
    }

    if (v8 < 0)
    {
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

    if (v11)
    {
      v15 = v12;
      v14 = _CocoaArrayWrapper.endIndex.getter();
      v12 = v15;
    }

    else
    {
      v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14 < v12)
    {
      goto LABEL_144;
    }

    v16 = -v13;
    if (__OFSUB__(0, v13))
    {
      goto LABEL_145;
    }

    v17 = v8;
    v99 = v12;
    if (v11)
    {
      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = v18 - v13;
    if (__OFADD__(v18, v16))
    {
      goto LABEL_146;
    }

    v102 = v2;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v11)
      {
        goto LABEL_25;
      }

      v20 = v10 & 0xFFFFFFFFFFFFFF8;
      if (v19 <= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v11)
      {
LABEL_25:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_26;
      }

      v20 = v10 & 0xFFFFFFFFFFFFFF8;
    }

    v21 = *(v20 + 16);
LABEL_26:
    v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v20 = v10 & 0xFFFFFFFFFFFFFF8;
LABEL_27:
    type metadata accessor for SchemaV1.HistoryRecord();
    swift_arrayDestroy();
    if (!v13)
    {
      goto LABEL_39;
    }

    v22 = v10 >> 62;
    if (v10 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *(v20 + 16);
    }

    v24 = v23 - v99;
    if (__OFSUB__(v23, v99))
    {
      goto LABEL_148;
    }

    v25 = (v20 + 32 + 8 * v99);
    if (v99 == v17 && v20 + 32 + 8 * v17 < v25 + 8 * v24)
    {
      if (v22)
      {
        goto LABEL_36;
      }
    }

    else
    {
      memmove((v20 + 32 + 8 * v17), v25, 8 * v24);
      if (v22)
      {
LABEL_36:
        v26 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_37;
      }
    }

    v26 = *(v20 + 16);
LABEL_37:
    if (__OFADD__(v26, v16))
    {
      goto LABEL_149;
    }

    *(v20 + 16) = v26 - v13;
LABEL_39:
    v2 = v102;
    if (v5 >= *(v102 + 16))
    {
      goto LABEL_147;
    }

    v27 = *(v102 + v6);

    v29 = sub_1000ABD3C(v28, v10);

    if (v29)
    {
      v4 = v9;
    }

    else
    {
      v4 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1000ACA4C(v102);
      }

      if (v5 >= *(v2 + 2))
      {
        goto LABEL_150;
      }

      v30 = *&v2[v6];
      *&v2[v6] = v10;
    }

    ++v5;

    v6 += 24;
  }

  while (v96 != v5);
  v31 = *(v2 + 2);
  if (!v31)
  {
LABEL_135:
    v34 = v2;
LABEL_137:
    v87 = v98[8];
    v88 = v98[6];
    v89 = type metadata accessor for TaskPriority();
    (*(*(v89 - 8) + 56))(v87, 1, 1, v89);
    type metadata accessor for MainActor();

    v90 = static MainActor.shared.getter();
    v91 = swift_allocObject();
    v91[2] = v90;
    v91[3] = &protocol witness table for MainActor;
    v91[4] = v88;
    v91[5] = v34;
    sub_100050560(0, 0, v87, &unk_10010C398, v91);

    v92 = v98[1];

    v92();
    return;
  }

  v32 = v2 + 32;

  v33 = 0;
  v34 = v2;
  v93 = v2 + 32;
  v94 = v31;
  while (1)
  {
    v35 = &v32[24 * v33];
    v37 = *v35;
    v36 = v35[1];
    v38 = v35[2];
    v101 = v36;
    if (v38 >> 62)
    {
      break;
    }

    if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_54;
    }

LABEL_51:
    if (++v33 == v31)
    {

      goto LABEL_137;
    }
  }

  v86 = _CocoaArrayWrapper.endIndex.getter();
  v36 = v101;
  if (v86)
  {
    goto LABEL_51;
  }

LABEL_54:
  v39 = v36;
  sub_100048EE4(v37, v36);
  v40 = qword_1001546E8;

  if (v40 != -1)
  {
    swift_once();
  }

  v95 = v33;
  v41 = type metadata accessor for Logger();
  sub_1000048C8(v41, qword_100160D38);
  sub_100048EE4(v37, v39);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.info.getter();
  sub_10004AA5C(v37, v39);

  v100 = v37;
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v104[0] = v45;
    *v44 = 136315138;
    v46 = v39;
    if (v39 > 1)
    {
      if (v39 == 2)
      {
        v47 = v45;
        v37 = 0x73756F6976657250;
        v48 = 0xEF73796144203720;
      }

      else
      {
        if (v39 != 3)
        {
          goto LABEL_64;
        }

        v47 = v45;
        v37 = 0xD000000000000010;
        v48 = 0x8000000100105860;
      }
    }

    else if (v39)
    {
      if (v39 == 1)
      {
        v47 = v45;
        v48 = 0xE900000000000079;
        v37 = 0x6164726574736559;
        goto LABEL_67;
      }

LABEL_64:
      v47 = v45;
      v48 = v46;
    }

    else
    {
      v47 = v45;
      v48 = 0xE500000000000000;
      v37 = 0x7961646F54;
    }

LABEL_67:
    sub_100048EE4(v100, v46);
    v49 = sub_100006E5C(v37, v48, v104);

    *(v44 + 4) = v49;
    v37 = v100;
    _os_log_impl(&_mh_execute_header, v42, v43, "Empty section found for %s deleting multiple records, removing section from list", v44, 0xCu);
    sub_100003F80(v47);
  }

  v103 = v2;
  v50 = *(v34 + 2);
  if (!v50)
  {
    v52 = 0;
    goto LABEL_95;
  }

  v51 = 0;
  v52 = 0;
  v53 = (v34 + 40);
  v54 = v101;
  while (2)
  {
    v55 = *v53;
    if (*v53 > 1)
    {
      if (v55 == 2)
      {
        if (v54 == 2)
        {
          break;
        }

        goto LABEL_71;
      }

      if (v55 == 3)
      {
        if (v54 == 3)
        {
          break;
        }

        goto LABEL_71;
      }

      goto LABEL_81;
    }

    if (!v55)
    {
      if (!v54)
      {
        break;
      }

      goto LABEL_71;
    }

    if (v55 == 1)
    {
      if (v54 == 1)
      {
        break;
      }

      goto LABEL_71;
    }

LABEL_81:
    if (v54 < 4 || (*(v53 - 1) != v37 || v55 != v54) && (v56 = _stringCompareWithSmolCheck(_:_:expecting:)(), v54 = v101, (v56 & 1) == 0))
    {
LABEL_71:
      v53 += 3;
      ++v52;
      v51 += 24;
      if (v50 == v52)
      {
        v52 = v50;
        goto LABEL_93;
      }

      continue;
    }

    break;
  }

  v57 = v52 + 1;
  if (__OFADD__(v52, 1))
  {
    goto LABEL_157;
  }

  sub_100048EE4(v37, v54);
  v58 = *(v34 + 2);

  if (v57 != v58)
  {
    v59 = v101;
    while (1)
    {
      if (v57 >= v58)
      {
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
        goto LABEL_143;
      }

      v72 = *&v34[v51 + 56];
      v73 = *&v34[v51 + 64];
      if (v73 > 1)
      {
        if (v73 == 2)
        {
          if (v59 == 2)
          {
            goto LABEL_108;
          }

          goto LABEL_127;
        }

        if (v73 == 3)
        {
          if (v59 == 3)
          {
            goto LABEL_108;
          }

          goto LABEL_127;
        }
      }

      else
      {
        if (!v73)
        {
          if (!v59)
          {
            goto LABEL_108;
          }

          goto LABEL_127;
        }

        if (v73 == 1)
        {
          if (v59 == 1)
          {
            goto LABEL_108;
          }

          goto LABEL_127;
        }
      }

      if (v59 >= 4)
      {
        if (v72 == v37 && v73 == v59)
        {
          goto LABEL_108;
        }

        v74 = *&v34[v51 + 56];
        v75 = *&v34[v51 + 64];
        v76 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v59 = v101;
        if (v76)
        {
          goto LABEL_108;
        }
      }

LABEL_127:
      if (v57 != v52)
      {
        if (v52 >= v58)
        {
          goto LABEL_151;
        }

        v77 = &v34[24 * v52 + 32];
        v78 = v77[1];
        v79 = v77[2];
        v80 = *&v34[v51 + 72];
        v97 = *v77;
        sub_100048EE4(*v77, v78);

        sub_100048EE4(v72, v73);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_1000ACA4C(v34);
        }

        v81 = &v34[24 * v52];
        v82 = *(v81 + 4);
        v83 = *(v81 + 5);
        v84 = v34;
        v85 = *(v81 + 6);
        *(v81 + 4) = v72;
        *(v81 + 5) = v73;
        *(v81 + 6) = v80;
        sub_10004AA5C(v82, v83);
        v34 = v84;

        if (v57 >= *(v84 + 2))
        {
          goto LABEL_152;
        }

        v68 = &v84[v51];
        v69 = *&v84[v51 + 56];
        v70 = *&v84[v51 + 64];
        v71 = *&v84[v51 + 72];
        *(v68 + 7) = v97;
        *(v68 + 8) = v78;
        *(v68 + 9) = v79;
        sub_10004AA5C(v69, v70);

        v37 = v100;
        v59 = v101;
      }

      ++v52;
LABEL_108:
      ++v57;
      v58 = *(v34 + 2);
      v51 += 24;
      if (v57 == v58)
      {
        goto LABEL_90;
      }
    }
  }

  v59 = v101;
LABEL_90:
  sub_10004AA5C(v37, v59);

LABEL_93:
  v50 = *(v34 + 2);
  if (v50 < v52)
  {
    goto LABEL_153;
  }

  if (v52 < 0)
  {
    goto LABEL_154;
  }

LABEL_95:
  v60 = v52 - v50;
  if (__OFADD__(v50, v52 - v50))
  {
    goto LABEL_155;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v52 > *(v34 + 3) >> 1)
  {
    if (v50 <= v52)
    {
      v62 = v52;
    }

    else
    {
      v62 = v50;
    }

    v34 = sub_1000ABF50(isUniquelyReferenced_nonNull_native, v62, 1, v34);
  }

  v63 = &v34[24 * v52 + 32];
  swift_arrayDestroy();
  v64 = v50 == v52;
  v2 = v103;
  if (v64)
  {
LABEL_50:
    sub_10004AA5C(v37, v101);

    v32 = v93;
    v31 = v94;
    v33 = v95;
    goto LABEL_51;
  }

  memmove(v63, &v34[24 * v50 + 32], 24 * (*(v34 + 2) - v50));
  v65 = *(v34 + 2);
  v66 = __OFADD__(v65, v60);
  v67 = v65 + v60;
  if (!v66)
  {
    *(v34 + 2) = v67;
    goto LABEL_50;
  }

LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
}

uint64_t sub_100044B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  type metadata accessor for MainActor();
  v5[5] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100044BC4, v7, v6);
}

uint64_t sub_100044BC4()
{
  v1 = *(v0 + 40);
  v4 = *(v0 + 24);

  swift_getKeyPath();
  *(swift_task_alloc() + 16) = v4;
  *(v0 + 16) = v4;
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100044CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100044D14, 0, 0);
}

uint64_t sub_100044D14()
{
  v1 = *(v0[2] + 24);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_100044DB0;
  v3 = v0[3];

  return sub_1000964C4(v3);
}

uint64_t sub_100044DB0()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100044EA4()
{
  v1 = v0;
  v2 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15[-v4];
  swift_getKeyPath();
  v17 = v0;
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  if (*(*(v0 + 48) + 16))
  {
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000048C8(v7, qword_100160D38);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Deleting all records from memory.", v10, 2u);
    }

    swift_getKeyPath();
    v16 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v16 = v1;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v11 = *(v1 + 48);
    *(v1 + 48) = &_swiftEmptyArrayStorage;

    swift_getKeyPath();
    v16 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(v1 + 56) & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v15[-16] = v1;
      v15[-8] = 1;
      v16 = v1;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v16 = v1;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v1;

    sub_1000502A0(0, 0, v5, &unk_10010C368, v14);

    return sub_1000035CC(v5, &qword_100154BB0, &qword_10010FAE0);
  }

  return result;
}

uint64_t sub_1000452A4()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = type metadata accessor for SchemaV1.HistoryRecord();
  v3 = sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_10004538C;

  return sub_1000971B8(v2, v3);
}

uint64_t sub_10004538C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100045480()
{
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 48);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(v1 + 48);
  if (!(v2 >> 62))
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    return 0;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (!result)
  {
    return 0;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {

    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();

    return v4;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);

    return v4;
  }

  __break(1u);
  return result;
}

uint64_t CalculatorHistoryRecordManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 48);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);
  swift_unknownObjectRelease();

  v7 = OBJC_IVAR____TtC10Calculator30CalculatorHistoryRecordManager___observationRegistrar;
  v8 = type metadata accessor for ObservationRegistrar();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t CalculatorHistoryRecordManager.__deallocating_deinit()
{
  CalculatorHistoryRecordManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CalculatorHistoryRecordManager()
{
  result = qword_100154A40;
  if (!qword_100154A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100045710()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100045810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100045874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = type metadata accessor for Date();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = *(*(sub_10003AE84(&qword_100154BB0, &qword_10010FAE0) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_10004596C, 0, 0);
}

uint64_t sub_10004596C()
{
  v1 = v0[6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v0[12] = *(Strong + 24);

    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_100045A74;

    return sub_1000945D8();
  }

  else
  {
    v6 = v0[9];
    v5 = v0[10];

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_100045A74(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_100045B94, 0, 0);
}

uint64_t sub_100045B94()
{
  result = v0[14];
  v36 = *(result + 16);
  if (!v36)
  {

    v3 = &_swiftEmptyArrayStorage;
    goto LABEL_41;
  }

  v2 = 0;
  v34 = (v0[8] + 8);
  v35 = result + 32;
  v3 = &_swiftEmptyArrayStorage;
  v33 = v0[14];
  while (1)
  {
    if (v2 >= *(result + 16))
    {
      __break(1u);
      goto LABEL_45;
    }

    v5 = v0[9];
    v6 = v0[7];
    v7 = *(v35 + 8 * v2);
    v8 = type metadata accessor for SchemaV1.HistoryRecord();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();

    v12 = sub_100079954(v11);
    v0[5] = v12;
    swift_getKeyPath();
    sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
    sub_100026874(&qword_100154BD0, &type metadata accessor for Date);
    PersistentModel.getValue<A>(forKey:)();

    v13 = sub_10006C894();
    v15 = v14;
    (*v34)(v5, v6);
    v16 = *(v3 + 2);
    if (v16)
    {
      break;
    }

LABEL_28:
    sub_10003AE84(&qword_100154BD8, &qword_10010BFB0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10010BDF0;
    *(v20 + 32) = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_1000ABF50(0, *(v3 + 2) + 1, 1, v3);
    }

    v22 = *(v3 + 2);
    v21 = *(v3 + 3);
    if (v22 >= v21 >> 1)
    {
      v3 = sub_1000ABF50((v21 > 1), v22 + 1, 1, v3);
    }

    *(v3 + 2) = v22 + 1;
    v4 = &v3[24 * v22];
    *(v4 + 4) = v13;
    *(v4 + 5) = v15;
    *(v4 + 6) = v20;
LABEL_4:
    ++v2;
    result = v33;
    if (v2 == v36)
    {
      v24 = v0[14];

LABEL_41:
      v26 = v0[10];
      v25 = v0[11];
      v27 = type metadata accessor for TaskPriority();
      (*(*(v27 - 8) + 56))(v26, 1, 1, v27);
      type metadata accessor for MainActor();

      v28 = static MainActor.shared.getter();
      v29 = swift_allocObject();
      v29[2] = v28;
      v29[3] = &protocol witness table for MainActor;
      v29[4] = v25;
      v29[5] = v3;
      sub_100050560(0, 0, v26, &unk_10010C108, v29);

      v31 = v0[9];
      v30 = v0[10];

      v32 = v0[1];

      return v32();
    }
  }

  v17 = 24 * v16 + 24;
  while (1)
  {
    v18 = *&v3[v17 - 8];
    if (v18 > 1)
    {
      break;
    }

    if (v18)
    {
      if (v18 != 1)
      {
        goto LABEL_19;
      }

      if (v15 == 1)
      {
        goto LABEL_33;
      }
    }

    else if (!v15)
    {
      goto LABEL_33;
    }

LABEL_9:
    v17 -= 24;
    if (!--v16)
    {
      goto LABEL_28;
    }
  }

  if (v18 == 2)
  {
    if (v15 == 2)
    {
      goto LABEL_33;
    }

    goto LABEL_9;
  }

  if (v18 == 3)
  {
    if (v15 == 3)
    {
      goto LABEL_33;
    }

    goto LABEL_9;
  }

LABEL_19:
  if (v15 < 4)
  {
    goto LABEL_9;
  }

  v19 = *&v3[v17 - 16] == v13 && v18 == v15;
  if (!v19 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_10004AA5C(v13, v15);
LABEL_33:

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000ACA4C(v3);
    v3 = result;
  }

  if (v16 <= *(v3 + 2))
  {
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*&v3[v17] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v17] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v23 = *((*&v3[v17] & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    goto LABEL_4;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1000460A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  type metadata accessor for MainActor();
  v5[11] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004613C, v7, v6);
}

uint64_t sub_10004613C()
{
  v25 = *(v0 + 72);
  swift_getKeyPath();
  *(swift_task_alloc() + 16) = v25;
  v1 = v25;
  *(v0 + 16) = v25;
  v2 = OBJC_IVAR____TtC10Calculator30CalculatorHistoryRecordManager___observationRegistrar;
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  *(v0 + 16) = v25;
  v26 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v3 = *(v1 + 32);
  if (!(v3 >> 62))
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_3;
  }

  if (v3 < 0)
  {
    v24 = *(v1 + 32);
  }

  if (_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_3:
    v4 = *(v0 + 72);
    sub_10004667C();
    v5 = [objc_opt_self() defaultCenter];
    if (qword_1001544C8 != -1)
    {
      swift_once();
    }

    [v5 postNotificationName:qword_100160AF0 object:{0, v2}];
  }

LABEL_6:
  v6 = *(v0 + 72);
  v7 = *(v0 + 88);
  if (*(v6 + 40) == 1)
  {
    v8 = *(v0 + 88);

    *(v6 + 40) = 1;
  }

  else
  {
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v6;
    *(v9 + 24) = 1;
    *(v0 + 40) = v6;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v10 = qword_100160D68;
  v11 = String._bridgeToObjectiveC()();
  LODWORD(v10) = [v10 BOOLForKey:v11];

  if (v10)
  {
    v12 = *(v0 + 72);
    swift_getKeyPath();
    *(v0 + 40) = v12;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (*(*(v12 + 48) + 16))
    {
      if (qword_1001546E8 != -1)
      {
        swift_once();
      }

      v13 = *(v0 + 72);
      v14 = type metadata accessor for Logger();
      sub_1000048C8(v14, qword_100160D38);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.debug.getter();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 72);
      if (v17)
      {
        v19 = swift_slowAlloc();
        *v19 = 134217984;
        swift_getKeyPath();
        *(v0 + 64) = v18;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        *(v19 + 4) = *(*(v12 + 48) + 16);

        _os_log_impl(&_mh_execute_header, v15, v16, "loadRecords - filteredRecords: %ld", v19, 0xCu);
      }

      else
      {
        v20 = *(v0 + 72);
      }

      v21 = [objc_opt_self() defaultCenter];
      if (qword_1001544D0 != -1)
      {
        swift_once();
      }

      [v21 postNotificationName:qword_100160AF8 object:{0, v26}];
    }
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10004667C()
{
  v1 = v0;
  if (qword_1001546E8 != -1)
  {
    goto LABEL_33;
  }

LABEL_2:
  v2 = type metadata accessor for Logger();
  sub_1000048C8(v2, qword_100160D38);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v32 = v4;
    log = v3;
    v5 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v37 = v30;
    buf = v5;
    *v5 = 136315138;
    swift_getKeyPath();
    v38 = v1;
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v6 = v1[4];
    if (!(v6 >> 62))
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_39;
  }

  while (1)
  {
    swift_getKeyPath();
    v21 = OBJC_IVAR____TtC10Calculator30CalculatorHistoryRecordManager___observationRegistrar;
    v38 = v1;
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
    v6 = v1 + v21;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v22 = v1[4];
    if (v22 >> 62)
    {
      if (v22 < 0)
      {
        v28 = v1[4];
      }

      v23 = _CocoaArrayWrapper.endIndex.getter();
      if (!v23)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v23)
      {
        goto LABEL_30;
      }
    }

    if (v23 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_39:
    v7 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    v29 = v1;

    if (v7)
    {
      v8 = 0;
      v35 = v6 & 0xFFFFFFFFFFFFFF8;
      v36 = v6 & 0xC000000000000001;
      v9 = &_swiftEmptyArrayStorage;
      v34 = v6;
      do
      {
        if (v36)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_31;
          }
        }

        else
        {
          if (v8 >= *(v35 + 16))
          {
            goto LABEL_32;
          }

          v10 = *(v6 + 8 * v8 + 32);

          v11 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            swift_once();
            goto LABEL_2;
          }
        }

        v38 = v10;
        v1 = &unk_10010BFE0;
        swift_getKeyPath();
        sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);

        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_getKeyPath();
        sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
        PersistentModel.getValue<A>(forKey:)();

        v12 = v38;
        v13 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000AC070(0, *(v9 + 2) + 1, 1, v9);
        }

        v15 = *(v9 + 2);
        v14 = *(v9 + 3);
        if (v15 >= v14 >> 1)
        {
          v9 = sub_1000AC070((v14 > 1), v15 + 1, 1, v9);
        }

        *(v9 + 2) = v15 + 1;
        v16 = &v9[16 * v15];
        *(v16 + 4) = v12;
        *(v16 + 5) = v13;
        ++v8;
        v6 = v34;
      }

      while (v11 != v7);
    }

    v17 = Array.description.getter();
    v19 = v18;

    v20 = sub_100006E5C(v17, v19, &v37);

    *(buf + 4) = v20;
    _os_log_impl(&_mh_execute_header, log, v32, "Adding pending records performed before record manager initialization: %s", buf, 0xCu);
    sub_100003F80(v30);

    v1 = v29;
  }

  for (i = 0; i != v23; ++i)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v25 = *(v22 + 8 * i + 32);
    }

    sub_1000414A4(v25);
  }

LABEL_30:
  swift_getKeyPath();
  v37 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v37 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v26 = v1[4];
  v1[4] = &_swiftEmptyArrayStorage;

  v37 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

id sub_100046CA8(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v1 + 64);
  swift_getKeyPath();
  sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
  v5 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  PersistentModel.getValue<A>(forKey:)();

  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v8 = sub_100008E44(&_swiftEmptyArrayStorage);
    v7 = sub_100080868(a1, v15, v8);

    if (qword_100154728 != -1)
    {
      swift_once();
    }

    v9 = qword_100160D98;
    swift_getKeyPath();
    sub_100026874(&qword_100154C00, type metadata accessor for AppSettings);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = *(v9 + 17);
    CalculateExpression.allowsArabicMath.setter();
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = *(v2 + 64);
    swift_getKeyPath();
    v12 = v11;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v13 = String._bridgeToObjectiveC()();

    [v12 setObject:v7 forKey:v13];

    swift_getKeyPath();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    sub_10004F4C4(&v16, v7);
    swift_endAccess();

    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return v7;
}

id sub_100047188(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v1 + 72);
  swift_getKeyPath();
  sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
  v5 = v4;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  PersistentModel.getValue<A>(forKey:)();

  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 objectForKey:v6];

  if (!v7)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v8 = sub_100008E44(&_swiftEmptyArrayStorage);
    v7 = sub_100080868(a1, v15, v8);

    if (qword_100154728 != -1)
    {
      swift_once();
    }

    v9 = qword_100160D98;
    sub_1000F5FFC();
    CalculateExpression.numberFormatter.setter();
    swift_getKeyPath();
    sub_100026874(&qword_100154C00, type metadata accessor for AppSettings);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v10 = *(v9 + 17);
    CalculateExpression.allowsArabicMath.setter();
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v11 = *(v2 + 72);
    swift_getKeyPath();
    v12 = v11;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    PersistentModel.getValue<A>(forKey:)();

    v13 = String._bridgeToObjectiveC()();

    [v12 setObject:v7 forKey:v13];

    swift_getKeyPath();

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    sub_10004F4C4(&v16, v7);
    swift_endAccess();

    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return v7;
}

uint64_t sub_100047678(uint64_t a1, char a2)
{
  v4 = 0;
  v5 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v97 = &v86 - v7;
  v96 = type metadata accessor for GenericRecord();
  v95 = *(v96 - 8);
  v8 = *(v95 + 64);
  v9 = __chkstk_darwin(v96);
  v93 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v10;
  __chkstk_darwin(v9);
  v92 = &v86 - v11;
  v12 = (a1 >> 62);
  if ((a2 & 1) == 0)
  {
    goto LABEL_5;
  }

  j = swift_allocObject();
  *(j + 16) = 0;
  if (v12)
  {
    goto LABEL_170;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v15 = [objc_opt_self() defaultCenter];
    type metadata accessor for ModelContext();
    v16 = static ModelContext.didSave.getter();
    v17 = [objc_opt_self() mainQueue];
    v18 = swift_allocObject();
    v19 = v98;
    swift_weakInit();
    v20 = swift_allocObject();
    v20[2] = v18;
    v20[3] = j;
    v20[4] = i;
    v118 = sub_10004B5B8;
    v119 = v20;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v116 = sub_10005628C;
    v117 = &unk_100149E38;
    v21 = _Block_copy(&aBlock);

    v22 = [v15 addObserverForName:v16 object:0 queue:v17 usingBlock:v21];
    _Block_release(v21);

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v86 - 2) = v19;
    *(&v86 - 1) = v22;
    *&aBlock = v19;
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    swift_unknownObjectRelease();
LABEL_5:
    if (v12)
    {
      goto LABEL_14;
    }

    for (j = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); j >= 1; j = _CocoaArrayWrapper.endIndex.getter())
    {
      v24 = 0;
      v25 = 0;
      while (1)
      {
        v26 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        v27 = __OFADD__(v25, 1000);
        v25 += 1000;
        if (v27)
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v24;
        if (v25 >= j)
        {
          v87 = v4;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_14:
      ;
    }

    v87 = v4;
    v26 = 0;
LABEL_16:
    *&aBlock = &_swiftEmptyArrayStorage;
    result = sub_1000ACC50(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      goto LABEL_169;
    }

    v29 = aBlock;
    v114 = v12;
    v112 = j;
    if (!v26)
    {
      v4 = 0;
LABEL_21:
      v31 = v112;
      if (v4 < v112)
      {
        if (a1 < 0)
        {
          v32 = a1;
        }

        else
        {
          v32 = a1 & 0xFFFFFFFFFFFFFF8;
        }

        v110 = v4;
        v111 = a1 & 0xC000000000000001;
        v113 = a1 & 0xFFFFFFFFFFFFFF8;
        v108 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
        v109 = v32;
        v33 = v4;
        while (1)
        {
          v34 = v33 + 1000;
          if (__OFADD__(v33, 1000))
          {
            __break(1u);
            goto LABEL_172;
          }

          v91 = v29;
          if (v12)
          {
            v37 = _CocoaArrayWrapper.endIndex.getter();
            if (v37 >= v34)
            {
              v36 = v33 + 1000;
            }

            else
            {
              v36 = v37;
            }

            if (v36 < v33)
            {
              goto LABEL_158;
            }

            v35 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v35 = *(v113 + 16);
            if (v35 >= v34)
            {
              v36 = v33 + 1000;
            }

            else
            {
              v36 = *(v113 + 16);
            }

            if (v36 < v33)
            {
              goto LABEL_158;
            }
          }

          if (v35 < v33)
          {
            goto LABEL_159;
          }

          if (v4 < 0)
          {
            goto LABEL_160;
          }

          if (v12)
          {
            v38 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v38 = *(v113 + 16);
          }

          if (v38 < v36)
          {
            goto LABEL_161;
          }

          if (v36 < 0)
          {
            goto LABEL_162;
          }

          if (!v111 || v33 == v36)
          {

            if (!v12)
            {
              goto LABEL_51;
            }
          }

          else
          {
            if (v33 >= v36)
            {
              goto LABEL_167;
            }

            v4 = type metadata accessor for SchemaV1.HistoryRecord();

            v39 = v33;
            do
            {
              v40 = v39 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v39);
              v39 = v40;
            }

            while (v36 != v40);
            if (!v12)
            {
LABEL_51:
              v41 = (2 * v36) | 1;
              j = v108;
              goto LABEL_52;
            }
          }

          result = _CocoaArrayWrapper.subscript.getter();
          j = v48;
          v33 = v46;
          v41 = v47;
          if ((v47 & 1) == 0)
          {
            v12 = (v47 >> 1);
            v44 = (v47 >> 1) - v46;
            if (__OFSUB__(v47 >> 1, v46))
            {
              goto LABEL_166;
            }

            if (v44)
            {
              goto LABEL_62;
            }

LABEL_70:
            v45 = &_swiftEmptyArrayStorage;
LABEL_71:
            v12 = v114;
LABEL_72:
            result = swift_unknownObjectRelease();
            goto LABEL_73;
          }

LABEL_52:
          v4 = type metadata accessor for __ContiguousArrayStorageBase();
          swift_unknownObjectRetain_n();
          v42 = swift_dynamicCastClass();
          if (!v42)
          {
            swift_unknownObjectRelease();
            v42 = &_swiftEmptyArrayStorage;
          }

          v43 = v42[2];

          v12 = (v41 >> 1);
          v44 = (v41 >> 1) - v33;
          if (__OFSUB__(v41 >> 1, v33))
          {
            goto LABEL_168;
          }

          if (v43 != v44)
          {
            result = swift_unknownObjectRelease();
            v31 = v112;
            if (!v44)
            {
              goto LABEL_70;
            }

LABEL_62:
            if (v44 < 1)
            {
              v45 = &_swiftEmptyArrayStorage;
              if (v33 == v12)
              {
                goto LABEL_173;
              }
            }

            else
            {
              sub_10003AE84(&qword_100154BD8, &qword_10010BFB0);
              v45 = swift_allocObject();
              result = j__malloc_size(v45);
              v49 = result - 32;
              if (result < 32)
              {
                v49 = result - 25;
              }

              v45[2] = v44;
              v45[3] = (2 * (v49 >> 3)) | 1;
              if (v33 == v12)
              {
                goto LABEL_173;
              }
            }

            type metadata accessor for SchemaV1.HistoryRecord();
            swift_arrayInitWithCopy();
            goto LABEL_71;
          }

          v45 = swift_dynamicCastClass();
          result = swift_unknownObjectRelease();
          v12 = v114;
          v31 = v112;
          if (!v45)
          {
            v45 = &_swiftEmptyArrayStorage;
            goto LABEL_72;
          }

LABEL_73:
          v29 = v91;
          *&aBlock = v91;
          v51 = *(v91 + 16);
          v50 = *(v91 + 24);
          j = v51 + 1;
          if (v51 >= v50 >> 1)
          {
            result = sub_1000ACC50((v50 > 1), v51 + 1, 1);
            v29 = aBlock;
          }

          *(v29 + 16) = j;
          *(v29 + 8 * v51 + 32) = v45;
          v33 = v34;
          v4 = v110;
          if (v34 >= v31)
          {
            goto LABEL_78;
          }
        }
      }

      j = *(v29 + 16);
      if (!j)
      {
      }

LABEL_78:
      v52 = 0;
      v89 = v29 + 32;
      v91 = v29;
      v88 = j;
      while (1)
      {
        if (v52 >= *(v29 + 16))
        {
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        v53 = *(v89 + 8 * v52);
        if (v53 >> 62)
        {
          if (v53 < 0)
          {
            v66 = *(v89 + 8 * v52);
          }

          v67 = _CocoaArrayWrapper.endIndex.getter();
          v29 = v91;
          v54 = v67;
          if (!v67)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v54 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v54)
          {
            goto LABEL_80;
          }
        }

        if (v54 < 1)
        {
          goto LABEL_157;
        }

        v90 = v52;
        v99 = v53 & 0xC000000000000001;

        v4 = 0;
        v101 = v53;
        v100 = v54;
        do
        {
          if (v99)
          {
            v55 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v55 = *(v53 + 8 * v4 + 32);
          }

          ++v4;
          *&aBlock = v55;
          swift_getKeyPath();
          sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
          PersistentModel.getValue<A>(forKey:)();

          v113 = *(&aBlock + 1);
          v114 = aBlock;
          *&aBlock = v55;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          PersistentModel.getValue<A>(forKey:)();

          v111 = *(&aBlock + 1);
          v112 = aBlock;
          *&aBlock = v55;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          PersistentModel.getValue<A>(forKey:)();

          LODWORD(v110) = aBlock;
          *&aBlock = v55;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          PersistentModel.getValue<A>(forKey:)();

          LODWORD(v109) = aBlock;
          *&aBlock = v55;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          PersistentModel.getValue<A>(forKey:)();

          LODWORD(v108) = aBlock;
          *&aBlock = v55;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          PersistentModel.getValue<A>(forKey:)();

          v106 = *(&aBlock + 1);
          v107 = aBlock;
          *&aBlock = v55;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          PersistentModel.getValue<A>(forKey:)();

          v104 = *(&aBlock + 1);
          v105 = aBlock;
          *&aBlock = v55;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          sub_10004B3E8();
          PersistentModel.getValue<A>(forKey:)();

          v103 = aBlock;
          *&aBlock = v55;
          v12 = &unk_10010C300;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          PersistentModel.getValue<A>(forKey:)();

          v102 = aBlock;
          *&aBlock = v55;
          swift_getKeyPath();
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          v56 = *(v96 + 52);
          sub_100026874(&qword_100154BD0, &type metadata accessor for Date);
          a1 = v92;
          PersistentModel.getValue<A>(forKey:)();

          v57 = v113;
          *a1 = v114;
          *(a1 + 8) = v57;
          v58 = v111;
          *(a1 + 16) = v112;
          *(a1 + 24) = v58;
          *(a1 + 32) = v110;
          *(a1 + 33) = v109;
          *(a1 + 34) = v108;
          v59 = v106;
          *(a1 + 40) = v107;
          *(a1 + 48) = v59;
          v60 = v104;
          *(a1 + 56) = v105;
          *(a1 + 64) = v60;
          *(a1 + 88) = v102;
          *(a1 + 72) = v103;
          v61 = type metadata accessor for TaskPriority();
          v62 = v97;
          (*(*(v61 - 8) + 56))(v97, 1, 1, v61);
          v63 = v93;
          sub_100045810(a1, v93);
          v64 = (*(v95 + 80) + 40) & ~*(v95 + 80);
          v65 = swift_allocObject();
          v65[2] = 0;
          v65[3] = 0;
          v65[4] = v98;
          sub_100048D28(v63, v65 + v64);

          sub_1000502A0(0, 0, v62, &unk_10010C328, v65);

          sub_1000035CC(v62, &qword_100154BB0, &qword_10010FAE0);
          sub_10004B55C(a1);
          v53 = v101;
        }

        while (v100 != v4);

        v29 = v91;
        j = v88;
        v52 = v90;
LABEL_80:
        if (++v52 == j)
        {
        }
      }
    }

    v30 = a1 & 0xFFFFFFFFFFFFFF8;
    if (v12)
    {
      j = aBlock;
      v68 = _CocoaArrayWrapper.endIndex.getter();
      v29 = j;
      v111 = v68;
    }

    else
    {
      v111 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v69 = 0;
    v70 = 0;
    v109 = a1 & 0xFFFFFFFFFFFFFF8;
    v110 = a1 & 0xC000000000000001;
    v71 = a1 < 0 ? a1 : a1 & 0xFFFFFFFFFFFFFF8;
    v113 = v71;
    v108 = v30 + 32;
LABEL_100:
    if (v70 >= v112)
    {
      goto LABEL_151;
    }

    v4 = __OFADD__(v70, 1000) ? 0x7FFFFFFFFFFFFFFFLL : v70 + 1000;
    if (!__OFADD__(v70, 1000))
    {
      break;
    }

LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    ;
  }

  if (v111 >= v70 + 1000)
  {
    v72 = v70 + 1000;
  }

  else
  {
    v72 = v111;
  }

  if (v72 < v70)
  {
    goto LABEL_153;
  }

  v91 = v29;
  if (v12)
  {
    v73 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v73 = *(v30 + 16);
  }

  if (v73 < v70)
  {
    goto LABEL_154;
  }

  if (v70 < 0)
  {
    goto LABEL_155;
  }

  if (v12)
  {
    v74 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v74 = *(v30 + 16);
  }

  if (v74 < v72)
  {
    goto LABEL_156;
  }

  if (!v110 || v70 == v72)
  {

    if (!v12)
    {
      goto LABEL_124;
    }
  }

  else
  {
    if (v70 >= v72)
    {
      goto LABEL_164;
    }

    type metadata accessor for SchemaV1.HistoryRecord();

    v75 = v70;
    do
    {
      v76 = v75 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v75);
      v75 = v76;
    }

    while (v72 != v76);
    if (!v12)
    {
LABEL_124:
      j = v108;
      v12 = (((2 * v72) | 1uLL) >> 1);
      goto LABEL_125;
    }
  }

  result = _CocoaArrayWrapper.subscript.getter();
  j = v81;
  v70 = v80;
  v12 = (v82 >> 1);
  if ((v82 & 1) == 0)
  {
    v78 = v12 - v80;
    if (__OFSUB__(v12, v80))
    {
      goto LABEL_163;
    }

    if (v78)
    {
      goto LABEL_135;
    }

LABEL_143:
    v79 = &_swiftEmptyArrayStorage;
    goto LABEL_144;
  }

LABEL_125:
  v107 = j;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v77 = swift_dynamicCastClass();
  if (!v77)
  {
    swift_unknownObjectRelease();
    v77 = &_swiftEmptyArrayStorage;
  }

  j = v77[2];

  v78 = v12 - v70;
  if (__OFSUB__(v12, v70))
  {
    goto LABEL_165;
  }

  if (j == v78)
  {
    v79 = swift_dynamicCastClass();
    result = swift_unknownObjectRelease();
    v12 = v114;
    if (!v79)
    {
      v79 = &_swiftEmptyArrayStorage;
      goto LABEL_145;
    }

LABEL_146:
    v29 = v91;
    *&aBlock = v91;
    v85 = *(v91 + 16);
    v84 = *(v91 + 24);
    if (v85 >= v84 >> 1)
    {
      result = sub_1000ACC50((v84 > 1), v85 + 1, 1);
      v29 = aBlock;
    }

    ++v69;
    *(v29 + 16) = v85 + 1;
    *(v29 + 8 * v85 + 32) = v79;
    v70 = v4;
    v30 = v109;
    if (v69 == v26)
    {
      goto LABEL_21;
    }

    goto LABEL_100;
  }

  result = swift_unknownObjectRelease();
  j = v107;
  if (!v78)
  {
    goto LABEL_143;
  }

LABEL_135:
  if (v78 >= 1)
  {
    sub_10003AE84(&qword_100154BD8, &qword_10010BFB0);
    v79 = swift_allocObject();
    result = j__malloc_size(v79);
    v83 = result - 32;
    if (result < 32)
    {
      v83 = result - 25;
    }

    v79[2] = v78;
    v79[3] = (2 * (v83 >> 3)) | 1;
    if (v70 == v12)
    {
      goto LABEL_172;
    }

LABEL_141:
    type metadata accessor for SchemaV1.HistoryRecord();
    swift_arrayInitWithCopy();
LABEL_144:
    v12 = v114;
LABEL_145:
    result = swift_unknownObjectRelease();
    goto LABEL_146;
  }

  v79 = &_swiftEmptyArrayStorage;
  if (v70 != v12)
  {
    goto LABEL_141;
  }

LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
  return result;
}

uint64_t sub_100048890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v26[-v8];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v11 = result;
  swift_beginAccess();
  v12 = *(a3 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  *(a3 + 16) = v14;
  if (qword_1001546E8 != -1)
  {
LABEL_13:
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000048C8(v15, qword_100160D38);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134218240;
    swift_beginAccess();
    *(v18 + 4) = *(a3 + 16);

    *(v18 + 12) = 2048;
    *(v18 + 14) = a4;
    _os_log_impl(&_mh_execute_header, v16, v17, "Saved %ld of %ld records", v18, 0x16u);
  }

  else
  {
  }

  swift_beginAccess();
  if (*(a3 + 16) == a4)
  {
    swift_beginAccess();
    *(a3 + 16) = 0;
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v20;
    sub_1000502A0(0, 0, v9, &unk_10010C358, v21);

    sub_1000035CC(v9, &qword_100154BB0, &qword_10010FAE0);
    swift_getKeyPath();
    v27 = v11;
    sub_100026874(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v22 = *(v11 + 88);
    if (v22)
    {
      v23 = objc_opt_self();
      swift_unknownObjectRetain();
      v24 = [v23 defaultCenter];
      type metadata accessor for ModelContext();
      swift_unknownObjectRetain();
      v25 = static ModelContext.didSave.getter();
      [v24 removeObserver:v22 name:v25 object:0];

      swift_unknownObjectRelease_n();
    }
  }
}

uint64_t sub_100048C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100048C8C, 0, 0);
}

uint64_t sub_100048C8C()
{
  v1 = *(v0[2] + 24);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_100044DB0;
  v3 = v0[3];

  return sub_100095308(v3);
}

uint64_t sub_100048D28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100048D8C(uint64_t a1)
{
  v4 = *(type metadata accessor for GenericRecord() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100030DE0;

  return sub_100042448(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100048E84(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_100048EE4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

void sub_100048EF8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t sub_100048F6C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_100048F9C()
{
  v1 = *v0;
  if ((*v0 & 0xC000000000000001) != 0)
  {
    if (v1 < 0)
    {
      v2 = *v0;
    }

    v3 = *v0;

    v4 = __CocoaSet.contains(_:)();

    if (v4)
    {
      v5 = sub_1000492E8();

      return v5;
    }

    return 0;
  }

  type metadata accessor for CalculateExpression();
  v7 = *(v1 + 40);
  sub_100026874(&qword_100154BF8, &type metadata accessor for CalculateExpression);
  v8 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v1 + 32);
  v10 = v8 & ~v9;
  if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  sub_100026874(&qword_100154C08, &type metadata accessor for CalculateExpression);
  while (1)
  {
    v16 = *(*(v1 + 48) + 8 * v10);
    if (dispatch thunk of static Equatable.== infix(_:_:)())
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v1 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v12 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v0;
  v17 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100049648(&qword_100154C18, &qword_10010C0F8);
    v14 = v17;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_10004A04C(v10);
  result = v15;
  *v0 = v17;
  return result;
}

uint64_t sub_1000491AC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000494D8();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_10004A238(v9);
  *v2 = v20;
  return v13;
}

uint64_t sub_1000492E8()
{
  v1 = *v0;

  v2 = __CocoaSet.count.getter();
  v3 = swift_unknownObjectRetain();
  v4 = sub_10004A3FC(v3, v2);
  v12 = v4;
  v5 = *(v4 + 40);
  type metadata accessor for CalculateExpression();
  sub_100026874(&qword_100154BF8, &type metadata accessor for CalculateExpression);

  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_100026874(&qword_100154C08, &type metadata accessor for CalculateExpression);
    while (1)
    {
      v13 = *(*(v4 + 48) + 8 * v8);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v10 = *(*(v4 + 48) + 8 * v8);
  sub_10004A04C(v8);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *v0 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1000494D8()
{
  v1 = v0;
  sub_10003AE84(&qword_100154C58, &qword_100113970);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100049648(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10003AE84(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_100049788()
{
  v1 = v0;
  sub_10003AE84(&qword_100154C60, &unk_10010C3C0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000498C8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10003AE84(&qword_100154C18, &qword_10010C0F8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v29 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      type metadata accessor for CalculateExpression();
      sub_100026874(&qword_100154BF8, &type metadata accessor for CalculateExpression);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100049B5C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10003AE84(&qword_100154C50, &unk_10010C3A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for SchemaV1.HistoryRecord();
      sub_100026874(&qword_100154C48, type metadata accessor for SchemaV1.HistoryRecord);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100049DFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10003AE84(&qword_100154C60, &unk_10010C3C0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v18);
      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_10004A04C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      type metadata accessor for CalculateExpression();
      sub_100026874(&qword_100154BF8, &type metadata accessor for CalculateExpression);
      do
      {
        v11 = *(v3 + 40);
        v21 = *(*(v3 + 48) + 8 * v6);
        v12 = dispatch thunk of Hashable._rawHashValue(seed:)() & v7;
        if (v2 >= v10)
        {
          if (v12 >= v10 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v10 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_10004A238(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_10004A3FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10003AE84(&qword_100154C18, &qword_10010C0F8);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for CalculateExpression();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_1000498C8(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        sub_100026874(&qword_100154BF8, &type metadata accessor for CalculateExpression);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_10004A630(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10003AE84(&qword_100154C50, &unk_10010C3A0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for SchemaV1.HistoryRecord();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_100049B5C(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        Hasher.init(_seed:)();
        sub_100026874(&qword_100154C48, type metadata accessor for SchemaV1.HistoryRecord);
        dispatch thunk of Hashable.hash(into:)();
        result = Hasher._finalize()();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_10004A874(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  type metadata accessor for CalculateExpression();
  sub_100026874(&qword_100154BF8, &type metadata accessor for CalculateExpression);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_10004A95C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for SchemaV1.HistoryRecord();
  sub_100026874(&qword_100154C48, type metadata accessor for SchemaV1.HistoryRecord);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_10004AA5C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_10004AA70(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return __CocoaSet.isEqual(to:)(v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        type metadata accessor for CalculateExpression();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_100154BF8;
        v17 = a1;
        if (!v13)
        {
LABEL_27:
          v19 = v14;
          while (1)
          {
            v14 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v20 = *(v10 + 8 * v14);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v26 = (v20 - 1) & v20;
              goto LABEL_32;
            }
          }

          __break(1u);
          return __CocoaSet.isEqual(to:)(v5, v4);
        }

        while (1)
        {
          v18 = __clz(__rbit64(v13));
          v26 = (v13 - 1) & v13;
LABEL_32:
          v29 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
          v21 = *(a2 + 40);
          sub_100026874(&qword_100154BF8, &type metadata accessor for CalculateExpression);

          v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v23 = -1 << *(a2 + 32);
          v24 = v22 & ~v23;
          if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            break;
          }

          v25 = ~v23;
          sub_100026874(&qword_100154C08, &type metadata accessor for CalculateExpression);
          while (1)
          {
            v28 = *(*(a2 + 48) + 8 * v24);
            if (dispatch thunk of static Equatable.== infix(_:_:)())
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v26;
          v5 = &qword_100154BF8;
          v17 = a1;
          if (!v26)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_10004AF1C(v8, v7);
}

uint64_t sub_10004AD64(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v23 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a2 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = -1 << *(a2 + 32);
    v19 = v17 & ~v18;
    if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = (*(a2 + 48) + 16 * v19);
      v22 = *v21 == v15 && v21[1] == v14;
      if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v9 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v23;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004AF1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = __CocoaSet.count.getter();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 48) + 8 * (v10 | (v5 << 6)));

    v14 = __CocoaSet.contains(_:)();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004B064(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100030DE0;

  return sub_100045874(a1, v4, v5, v6);
}

uint64_t sub_10004B130(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

void sub_10004B188()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
  v4 = v2;
}

void sub_10004B1C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 64);
  *(v1 + 64) = v2;
  v4 = v2;
}

void sub_10004B1F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 96);
  *(v1 + 96) = v2;
  v4 = v2;
}

uint64_t sub_10004B230(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100030DE0;

  return sub_1000460A4(a1, v4, v5, v7, v6);
}

unint64_t sub_10004B2F0()
{
  result = qword_100154C30;
  if (!qword_100154C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154C30);
  }

  return result;
}

uint64_t sub_10004B350(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_10004B398(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004B3E8()
{
  result = qword_100154C38;
  if (!qword_100154C38)
  {
    sub_10003AECC(&qword_100154C40, &qword_10010CFA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100154C38);
  }

  return result;
}

uint64_t sub_10004B464(uint64_t a1)
{
  v4 = *(type metadata accessor for GenericRecord() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100030CEC;

  return sub_100048C6C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10004B55C(uint64_t a1)
{
  v2 = type metadata accessor for GenericRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004B5DC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 88);
  *(v1 + 88) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_10004B618(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100030DE0;

  return sub_100045284(a1, v4, v5, v6);
}

unint64_t sub_10004B6D4(unint64_t a1, uint64_t a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
LABEL_17:
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v13 == v3)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v3 >= *(v10 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v12 = v4;
    swift_getKeyPath();
    sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
    PersistentModel.getValue<A>(forKey:)();

    __chkstk_darwin(v5);
    v9[2] = &v12;
    v6 = sub_1000ACAD8(sub_10004C3FC, v9, v11);

    if (v6)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_10004B914(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for SchemaV1.HistoryRecord();
    sub_100026874(&qword_100154C48, type metadata accessor for SchemaV1.HistoryRecord);
    Set.Iterator.init(_cocoa:)();
    result = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
    v6 = v28;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = &_swiftEmptyArrayStorage;
  v23 = result;
  if (result < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(result + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_22:
      sub_10004B164();
      return v10;
    }

    while (1)
    {
      v16 = a2(v15);
      v18 = v17;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1000AC070(0, *(v10 + 2) + 1, 1, v10);
      }

      v20 = *(v10 + 2);
      v19 = *(v10 + 3);
      if (v20 >= v19 >> 1)
      {
        v10 = sub_1000AC070((v19 > 1), v20 + 1, 1, v10);
      }

      *(v10 + 2) = v20 + 1;
      v21 = &v10[16 * v20];
      *(v21 + 4) = v16;
      *(v21 + 5) = v18;
      v5 = v13;
      v6 = v14;
      result = v23;
      if ((v23 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for SchemaV1.HistoryRecord();
        swift_dynamicCast();
        v15 = v29;
        v13 = v5;
        v14 = v6;
        if (v29)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004BB9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100030DE0;

  return sub_100043FCC(a1, v4, v5, v7, v6);
}

uint64_t sub_10004BC5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100030CEC;

  return sub_100044CF4(a1, v4, v5, v7, v6);
}

uint64_t sub_10004BD1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100154BB0, &qword_10010FAE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004BD8C(unint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  v7 = sub_10004B6D4(*a1, a2);
  v9 = v2;
  if (v2)
  {
    return v3;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v7;
  v26 = a1;
  v27 = a2;
  v11 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v3;
      }
    }

    else if (v11 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v3;
    }

    v29 = v6 & 0xC000000000000001;
    if ((v6 & 0xC000000000000001) != 0)
    {
      v13 = v9;
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v11 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v13 = v9;
      v14 = *(v6 + 8 * v11 + 32);
    }

    v28 = v14;
    swift_getKeyPath();
    sub_100026874(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    sub_100026874(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
    PersistentModel.getValue<A>(forKey:)();

    __chkstk_darwin(v15);
    v25[2] = &v28;
    v16 = sub_1000ACAD8(sub_10004C254, v25, v27);
    v9 = v13;

    if ((v16 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v12 = __OFADD__(v11++, 1);
    if (v12)
    {
      goto LABEL_42;
    }
  }

  if (v3 == v11)
  {
LABEL_9:
    v12 = __OFADD__(v3++, 1);
    if (v12)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if (v29)
  {
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v19 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3 >= v19)
    {
      goto LABEL_46;
    }

    if (v11 >= v19)
    {
      goto LABEL_47;
    }

    v17 = *(v6 + 32 + 8 * v3);
    v18 = *(v6 + 32 + 8 * v11);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1000AE630(v6);
    v20 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v20) = 0;
  }

  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  v22 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v18;

  if ((v6 & 0x8000000000000000) == 0 && !v20)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_1000AE630(v6);
  v21 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v11 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v11 >= *(v21 + 16))
    {
      goto LABEL_44;
    }

    v23 = v21 + 8 * v11;
    v24 = *(v23 + 32);
    *(v23 + 32) = v17;

    *v26 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_10004C118()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_10004C160(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100030DE0;

  return sub_100044B2C(a1, v4, v5, v7, v6);
}

uint64_t sub_10004C220()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return sub_10003E93C(v3);
}

uint64_t sub_10004C270(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10004C2C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100030DE0;

  return sub_100043874(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10004C418()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for CalculatorHistoryViewModel(0);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    v1 = swift_allocObject();
    sub_10004D670();
    v6 = *(v2 + 16);
    *(v2 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10004C48C()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC10Calculator33CalculatorHistoryViewModelWrapper___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10004C538()
{
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(*(v0 + 24) + 16))
  {
    if (sub_10004C930())
    {

      sub_10004C788(v1);
    }
  }

  else
  {
    sub_10004C788(0);
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  *(v0 + 32) = (*(v0 + 32) & 1) == 0;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_10004C6D0()
{
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_10004C788(uint64_t a1)
{
  v2 = v1;
  if (!*(v1 + 40))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for SchemaV1.HistoryRecord();
  sub_10004EC38(&qword_100154E20, type metadata accessor for SchemaV1.HistoryRecord);

  v4 = dispatch thunk of static Equatable.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(v2 + 40);
LABEL_7:
  *(v2 + 40) = a1;
}

uint64_t sub_10004C930()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_getKeyPath();
  sub_10004EC38(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v3 = *(v2 + 48);

  v5 = sub_10004D3B4(v4);

  if (v5 >> 62)
  {
LABEL_26:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = __OFADD__(v7++, 1);
        if (v9)
        {
LABEL_21:
          __break(1u);
LABEL_22:

          return v8;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_26;
        }

        v8 = *(v5 + 32 + 8 * v7);

        v9 = __OFADD__(v7++, 1);
        if (v9)
        {
          goto LABEL_21;
        }
      }

      swift_getKeyPath();
      sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v10 = *(v1 + 24);
      swift_getKeyPath();
      sub_10004EC38(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      sub_10004EC38(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
      PersistentModel.getValue<A>(forKey:)();

      if (*(v10 + 16))
      {
        v11 = *(v10 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v12 = Hasher._finalize()();
        v13 = -1 << *(v10 + 32);
        v14 = v12 & ~v13;
        if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
        {
          v15 = ~v13;
          do
          {
            v16 = (*(v10 + 48) + 16 * v14);
            v17 = *v16 == v8 && v16[1] == v19;
            if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              goto LABEL_22;
            }

            v14 = (v14 + 1) & v15;
          }

          while (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
        }
      }
    }

    while (v7 != v6);
  }

  return 0;
}

uint64_t sub_10004CD10@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_10004CDD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10004CDFC(v4);
}

uint64_t sub_10004CDFC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);

  v5 = sub_10004AD64(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 24);
    *(v1 + 24) = a1;

    return sub_10004C538();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10004CF48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  *(a1 + 24) = a2;

  return sub_10004C538();
}

uint64_t sub_10004CFB8()
{
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

uint64_t sub_10004D058@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_10004D128(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10004D238()
{
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);
}

uint64_t sub_10004D2DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
}

uint64_t sub_10004D388(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10004C788(v4);
}

uint64_t sub_10004D3B4(uint64_t a1)
{
  v29 = *(a1 + 16);
  if (!v29)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = 0;
  v28 = a1 + 32;
  v2 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v4 = *(v28 + 24 * v1 + 16);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v25 = *(v28 + 24 * v1 + 16);
      }

      v6 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
      v9 = v26 + v6;
      if (__OFADD__(v26, v6))
      {
LABEL_36:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v7)
      {
        goto LABEL_16;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = v6;
        goto LABEL_18;
      }
    }

    else
    {
      if (v7)
      {
LABEL_16:
        _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_17;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v10 + 16);
LABEL_17:
    v11 = v6;
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v14 >> 1) - v13) < v11)
    {
      goto LABEL_40;
    }

    v31 = v11;
    v17 = v10 + 8 * v13 + 32;
    v27 = v10;
    if (v5)
    {
      if (v15 < 1)
      {
        goto LABEL_42;
      }

      sub_100050040();
      for (i = 0; i != v15; ++i)
      {
        sub_10003AE84(&qword_100154E28, &unk_10010C590);
        v19 = sub_1000ADEB4(v30, i, v4);
        v21 = *v20;

        (v19)(v30, 0);
        *(v17 + 8 * i) = v21;
      }
    }

    else
    {
      type metadata accessor for SchemaV1.HistoryRecord();
      swift_arrayInitWithCopy();
    }

    if (v31 >= 1)
    {
      v22 = *(v27 + 16);
      v23 = __OFADD__(v22, v31);
      v24 = v22 + v31;
      if (v23)
      {
        goto LABEL_41;
      }

      *(v27 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v29)
    {
      return v2;
    }
  }

  v16 = v10;
  result = _CocoaArrayWrapper.endIndex.getter();
  v10 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v11 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_10004D670()
{
  if (qword_100154370 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = qword_100160878;
  *(v0 + 24) = &_swiftEmptySetSingleton;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v1 = OBJC_IVAR____TtC10Calculator26CalculatorHistoryViewModel_historyViewOpenedAt;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);

  ObservationRegistrar.init()();
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  if (qword_1001544C8 != -1)
  {
    swift_once();
  }

  v5 = qword_100160AF0;
  v6 = objc_opt_self();
  v7 = [v6 mainQueue];
  v8 = swift_allocObject();
  swift_weakInit();
  v22 = sub_1000500C0;
  v23 = v8;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10005628C;
  v21 = &unk_100149F78;
  v9 = _Block_copy(&v18);

  v10 = [v4 addObserverForName:v5 object:0 queue:v7 usingBlock:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  v11 = [v3 defaultCenter];
  if (qword_1001544C0 != -1)
  {
    swift_once();
  }

  v12 = qword_100160AE8;
  v13 = [v6 mainQueue];
  v14 = swift_allocObject();
  swift_weakInit();

  v22 = sub_1000500D0;
  v23 = v14;
  v18 = _NSConcreteStackBlock;
  v19 = 1107296256;
  v20 = sub_10005628C;
  v21 = &unk_100149FA0;
  v15 = _Block_copy(&v18);

  v16 = [v11 addObserverForName:v12 object:0 queue:v13 usingBlock:v15];
  _Block_release(v15);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_10004DA0C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    swift_getKeyPath();
    sub_10004EC38(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    v3 = *(v2 + 48);
    if (*(v3 + 16))
    {
      v4 = *(v3 + 48);
      if (v4 >> 62)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
        if (result)
        {
          goto LABEL_5;
        }
      }

      else
      {
        result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (result)
        {
LABEL_5:
          if ((v4 & 0xC000000000000001) != 0)
          {

            v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return result;
            }

            v5 = *(v4 + 32);
          }

          swift_getKeyPath();
          sub_10004EC38(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          swift_getKeyPath();
          sub_10004EC38(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
          PersistentModel.getValue<A>(forKey:)();

          sub_10003AE84(&qword_100154E38, &qword_100112400);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10010BDE0;
          *(inited + 32) = v5;
          v7 = inited + 32;
          *(inited + 40) = v10;
          v8 = sub_1000CF204(inited);
          swift_setDeallocating();
          sub_1000500D8(v7);
          sub_10004CDFC(v8);
        }
      }
    }

    swift_getKeyPath();
    sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    swift_beginAccess();
    v9 = *(v1 + 24);
    *(v1 + 24) = &_swiftEmptySetSingleton;

    sub_10004C538();
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();
  }

  return result;
}

uint64_t sub_10004DDA8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    swift_beginAccess();
    if (*(*(v1 + 24) + 16))
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v2 = *(v1 + 24);
      *(v1 + 24) = &_swiftEmptySetSingleton;

      sub_10004C538();
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }
  }

  return result;
}

uint64_t sub_10004DF4C()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  v2 = *(v0 + 2);

  v3 = *(v0 + 3);

  v4 = *(v0 + 5);

  sub_10004E1C0(&v0[OBJC_IVAR____TtC10Calculator26CalculatorHistoryViewModel_historyViewOpenedAt]);
  v5 = OBJC_IVAR____TtC10Calculator26CalculatorHistoryViewModel___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_10004E070()
{
  sub_10004E168();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10004E168()
{
  if (!qword_100154D68)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100154D68);
    }
  }
}

uint64_t sub_10004E1C0(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100154E10, &qword_10010C4C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004E228()
{
  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(*(v0 + 24) + 16) == 1)
  {
    return 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 16);
  v3 = *(*(v0 + 24) + 16);
  swift_getKeyPath();
  sub_10004EC38(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  v4 = 0;
  v5 = *(v2 + 48);
  v6 = (v5 + 48);
  v7 = -*(v5 + 16);
  v8 = -1;
  while (1)
  {
    if (v7 + v8 == -1)
    {
      return v3 == v4;
    }

    if (++v8 >= *(v5 + 16))
    {
      break;
    }

    v9 = *v6;
    if (*v6 >> 62)
    {
      if (v9 < 0)
      {
        v11 = *v6;
      }

      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 += 3;
    v10 = __OFADD__(v4, result);
    v4 += result;
    if (v10)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10004E430(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_100042504(a1);
  swift_getKeyPath();
  sub_10004EC38(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  sub_10004EC38(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
  PersistentModel.getValue<A>(forKey:)();

  swift_getKeyPath();
  sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1000491AC(a1, v5);
  swift_endAccess();

  sub_10004C538();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_10004E65C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  swift_getKeyPath();
  sub_10004EC38(&qword_100154BB8, type metadata accessor for CalculatorHistoryRecordManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v3 = *(v2 + 48);

  KeyPath = sub_10004D3B4(v4);

  if (KeyPath >> 62)
  {
LABEL_26:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (v6)
  {
    v7 = 0;
    v21 = KeyPath & 0xFFFFFFFFFFFFFF8;
    v22 = KeyPath & 0xC000000000000001;
    v20 = KeyPath + 32;
    do
    {
      if (v22)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v9 = __OFADD__(v7++, 1);
        if (v9)
        {
LABEL_23:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *(v21 + 16))
        {
          __break(1u);
          goto LABEL_26;
        }

        v8 = *(v20 + 8 * v7);

        v9 = __OFADD__(v7++, 1);
        if (v9)
        {
          goto LABEL_23;
        }
      }

      swift_getKeyPath();
      sub_10004EC38(&qword_100154E18, type metadata accessor for CalculatorHistoryViewModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v10 = *(v1 + 24);
      swift_getKeyPath();
      sub_10004EC38(&qword_100154BC0, type metadata accessor for SchemaV1.HistoryRecord);

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      KeyPath = swift_getKeyPath();
      sub_10004EC38(&qword_100154BC8, type metadata accessor for SchemaV1.HistoryRecord);
      PersistentModel.getValue<A>(forKey:)();

      if (*(v10 + 16))
      {
        v11 = v6;
        v12 = *(v10 + 40);
        Hasher.init(_seed:)();
        String.hash(into:)();
        v13 = Hasher._finalize()();
        v14 = -1 << *(v10 + 32);
        KeyPath = v13 & ~v14;
        if ((*(v10 + 56 + ((KeyPath >> 3) & 0xFFFFFFFFFFFFFF8)) >> KeyPath))
        {
          v15 = ~v14;
          while (1)
          {
            v16 = (*(v10 + 48) + 16 * KeyPath);
            v17 = *v16 == v8 && v16[1] == v23;
            if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            KeyPath = (KeyPath + 1) & v15;
            if (((*(v10 + 56 + ((KeyPath >> 3) & 0xFFFFFFFFFFFFFF8)) >> KeyPath) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          KeyPath = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v6 = v11;
        }

        else
        {
LABEL_19:

          v6 = v11;
        }
      }

      else
      {
      }
    }

    while (v7 != v6);
  }

  v18 = sub_10005012C(_swiftEmptyArrayStorage);

  sub_100043C88(v18);

  return sub_10004EAC8();
}