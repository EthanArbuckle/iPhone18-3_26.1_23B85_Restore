uint64_t sub_1004C5540(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1004C55A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6680);

  return sub_100024D10(a1, a2, v4);
}

uint64_t sub_1004C55F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10022C350(&qword_100CA6680);

  return sub_10001B350(a1, a2, a3, v6);
}

uint64_t sub_1004C5658(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CBF0C8);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = &v15 + *(v5 + 56) - v6;
  sub_1004C5794(a1, &v15 - v6);
  sub_1004C5794(a2, v8);
  v9 = *(sub_10022C350(&qword_100CA6680) + 48);
  v10 = v7[v9];
  v11 = v8[v9];
  LODWORD(a2) = static URL.== infix(_:_:)();
  v12 = type metadata accessor for URL();
  v13 = *(*(v12 - 8) + 8);
  v13(v8, v12);
  v13(v7, v12);
  return a2 & ~(v10 ^ v11) & 1;
}

uint64_t sub_1004C5794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetailComponentAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004C57F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = ObjectIdentifier.hashValue.getter();
  (*(a3 + 8))(a2, a3);
  return v5;
}

uint64_t sub_1004C5860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t sub_1004C589C(int a1, Swift::UInt a2)
{
  Hasher._combine(_:)(a2);

  return String.hash(into:)();
}

Swift::Int sub_1004C58F0(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004C5958()
{
  v1 = *(v0 + 8);

  return v1;
}

Swift::Int sub_1004C59BC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1004C5A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 8))(a3, a4);
  v7 = v6;
  if (sub_100355844(1, a2))
  {
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);
    v11 = (v8 + 63) >> 6;

    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    while (v10)
    {
LABEL_10:
      v16 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v17 = v16 | (v13 << 6);
      if (*(*(a2 + 56) + v17) == 1)
      {
        v18 = *(a2 + 48) + 24 * v17;
        v32 = *(v18 + 8);
        v19 = *(v18 + 16);
        swift_bridgeObjectRetain_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100109810();
          v14 = v22;
        }

        v20 = v14[2];
        if (v20 >= v14[3] >> 1)
        {
          sub_100109810();
          v14 = v23;
        }

        v14[2] = v20 + 1;
        v21 = &v14[2 * v20];
        v21[4] = v32;
        v21[5] = v19;
      }
    }

    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v11)
      {

        v33 = 0;
        _StringGuts.grow(_:)(55);
        v25._countAndFlagsBits = 0xD000000000000029;
        v25._object = 0x8000000100ACFBF0;
        String.append(_:)(v25);
        v26._countAndFlagsBits = v5;
        v26._object = v7;
        String.append(_:)(v26);

        v27._countAndFlagsBits = 0x6E6F73616552202CLL;
        v27._object = 0xEA00000000003D73;
        String.append(_:)(v27);
        sub_10022C350(&qword_100CCC930);
        sub_100006F64(&qword_100CB2D00, &qword_100CCC930);
        v28 = BidirectionalCollection<>.joined(separator:)();
        v30 = v29;

        v31._countAndFlagsBits = v28;
        v31._object = v30;
        String.append(_:)(v31);
        goto LABEL_18;
      }

      v10 = *(a2 + 64 + 8 * v15);
      ++v13;
      if (v10)
      {
        v13 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    _StringGuts.grow(_:)(42);

    v33 = 0xD000000000000028;
    v24._countAndFlagsBits = v5;
    v24._object = v7;
    String.append(_:)(v24);
LABEL_18:

    return v33;
  }

  return result;
}

uint64_t sub_1004C5D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1004C57F8(a3, a3, a4);
  swift_isUniquelyReferenced_nonNull_native();
  v6 = *v4;
  sub_100239720();

  *v4 = v6;
  return result;
}

uint64_t sub_1004C5DC8()
{
  swift_getKeyPath();
  sub_1004C70C8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_1004C5E7C(uint64_t a1)
{
  swift_beginAccess();

  sub_1002DBBC4();
  v4 = v3;

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1004C5FCC();
  }
}

uint64_t sub_1004C5F64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t sub_1004C6054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1004C5DC8();
  v6 = sub_1004C5A1C(v5, v5, a2, a3);

  return v6;
}

uint64_t sub_1004C60B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  sub_1004C70C8();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  sub_1004C5D24(a1, v7, a3, a4);
  swift_endAccess();
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1004C61D0()
{

  v1 = OBJC_IVAR____TtC7WeatherP33_D30B6F20D6421CC160B6EFF5F6170CEE44EnvironmentAnimatedBackgroundDisabledReasons___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EnvironmentAnimatedBackgroundDisabledReasons()
{
  result = qword_100CBF100;
  if (!qword_100CBF100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004C62C8()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1004C6378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a4;
  v24 = a5;
  v25 = a2;
  v26 = a1;
  v27 = a6;
  type metadata accessor for RecordAnimatedBackgroundDisabledModifier();
  swift_getWitnessTable();
  v7 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  v28 = v7;
  v29 = &type metadata for Bool;
  v30 = WitnessTable;
  v31 = &protocol witness table for Bool;
  v22 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  LOBYTE(v28) = HIBYTE(a3) & 1;
  v16 = swift_allocObject();
  v17 = v24;
  *(v16 + 16) = v23;
  *(v16 + 24) = v17;
  *(v16 + 32) = v25;
  *(v16 + 40) = a3 & 1;
  *(v16 + 41) = HIBYTE(a3) & 1;

  v18 = swift_checkMetadataState();
  View.onChange<A>(of:initial:_:)();

  v28 = v18;
  v29 = &type metadata for Bool;
  v30 = WitnessTable;
  v31 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1000833D8(v12, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v20 = *(v10 + 8);
  v20(v12, OpaqueTypeMetadata2);
  sub_1000833D8(v15, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v20)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_1004C6614(uint64_t a1, unsigned __int8 *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;

  if ((a4 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
  }

  sub_1004C60B0(v14, a5, a5, a6);
}

uint64_t sub_1004C6790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 9))
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return sub_1004C6378(a1, *v3, v4 | *(v3 + 8), *(a2 + 16), *(a2 + 24), a3);
}

uint64_t sub_1004C67C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a5;
  v49 = a4;
  v40 = a3;
  v53 = a1;
  v54 = a6;
  type metadata accessor for DisableAnimatedBackgroundsStateModifier();
  swift_getWitnessTable();
  v7 = type metadata accessor for _ViewModifier_Content();
  WitnessTable = swift_getWitnessTable();
  v57 = v7;
  v58 = &type metadata for Bool;
  v59 = WitnessTable;
  v60 = &protocol witness table for Bool;
  v36[1] = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v52 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v41 = v36 - v9;
  sub_10022E824(&qword_100CE1580);
  v10 = type metadata accessor for ModifiedContent();
  v51 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = v36 - v11;
  v12 = type metadata accessor for EnvironmentAnimatedBackgroundDisabledReasons();
  v44 = v12;
  v57 = v7;
  v58 = &type metadata for Bool;
  v59 = WitnessTable;
  v60 = &protocol witness table for Bool;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = OpaqueTypeConformance2;
  v14 = sub_100006F64(&qword_100CB0558, &qword_100CE1580);
  v55 = OpaqueTypeConformance2;
  v56 = v14;
  v15 = swift_getWitnessTable();
  v43 = v15;
  v42 = sub_1004C70C8();
  v57 = v10;
  v58 = v12;
  v59 = v15;
  v60 = v42;
  v45 = &opaque type descriptor for <<opaque return type of View.environment<A>(_:)>>;
  v16 = swift_getOpaqueTypeMetadata2();
  v46 = *(v16 - 8);
  __chkstk_darwin(v16);
  v37 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v38 = v36 - v19;
  v20 = v40;
  v57 = a2;
  v58 = v40;
  sub_10022C350(qword_100CBF220);
  State.wrappedValue.getter();
  v21 = sub_1004C5DC8();
  LOBYTE(WitnessTable) = sub_100355844(1, v21);

  LOBYTE(v57) = WitnessTable & 1;
  v22 = swift_allocObject();
  v23 = v48;
  v22[2] = v49;
  v22[3] = v23;
  v22[4] = a2;
  v22[5] = v20;

  swift_checkMetadataState();
  v24 = v41;
  View.onChange<A>(of:initial:_:)();

  swift_getKeyPath();
  v57 = a2;
  v58 = v20;
  State.wrappedValue.getter();
  v25 = sub_1004C5DC8();
  LOBYTE(v7) = sub_100355844(1, v25);

  LOBYTE(v57) = v7 & 1;
  v26 = v47;
  v27 = OpaqueTypeMetadata2;
  View.environment<A>(_:_:)();

  (*(v52 + 8))(v24, v27);
  v57 = a2;
  v58 = v20;
  State.wrappedValue.getter();
  v28 = v37;
  v30 = v43;
  v29 = v44;
  v31 = v42;
  View.environment<A>(_:)();

  (*(v51 + 8))(v26, v10);
  v57 = v10;
  v58 = v29;
  v59 = v30;
  v60 = v31;
  v32 = swift_getOpaqueTypeConformance2();
  v33 = v38;
  sub_1000833D8(v28, v16, v32);
  v34 = *(v46 + 8);
  v34(v28, v16);
  sub_1000833D8(v33, v16, v32);
  return (v34)(v33, v16);
}

void sub_1004C6DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_100CA26A8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000703C(v8, qword_100D90A60);

  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315138;
    sub_10022C350(qword_100CBF220);
    State.wrappedValue.getter();
    v12 = sub_1004C6054(a5, a5, a6);
    v14 = v13;

    v15 = sub_100078694(v12, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, oslog, v9, "%s", v10, 0xCu);
    sub_100006F14(v11);
  }

  else
  {
  }
}

unint64_t sub_1004C6FDC()
{
  result = qword_100CBF190[0];
  if (!qword_100CBF190[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100CBF190);
  }

  return result;
}

uint64_t sub_1004C7030()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1004C70C8()
{
  result = qword_100CBF218;
  if (!qword_100CBF218)
  {
    type metadata accessor for EnvironmentAnimatedBackgroundDisabledReasons();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF218);
  }

  return result;
}

uint64_t sub_1004C7148()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1004C7190(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 10))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004C71D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004C72B0(uint64_t a1)
{
  v2 = type metadata accessor for AutomationInfoViewModifier();
  __chkstk_darwin(v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AutomationInfoProperty();
  sub_1003AFC6C(a1, &v4[*(v5 + 24)]);
  *v4 = 0;
  *(v4 + 1) = 0xE000000000000000;
  *(v4 + 2) = swift_getKeyPath();
  v4[24] = 0;
  View.modifier<A>(_:)();
  return sub_1004C740C(v4);
}

uint64_t sub_1004C7398()
{
  sub_10022C350(&qword_100CBF338);
  sub_10014ADE4();
  return View.accessibilityIdentifier(_:)();
}

uint64_t sub_1004C740C(uint64_t a1)
{
  v2 = type metadata accessor for AutomationInfoViewModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004C7468()
{

  SettingProperty.wrappedValue.getter();
}

uint64_t sub_1004C74B0(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v4);

  SettingProperty.wrappedValue.setter();

  return (*(v3 + 8))(a1, v2);
}

uint64_t sub_1004C75B0(uint64_t a1)
{
  if (qword_100CA2688 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000703C(v2, qword_100D90A00);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "We received a request to show the app store review prompt", v5, 2u);
  }

  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = a1;

  asyncMain(block:)();
}

void sub_1004C7718(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (sub_1004C7A44(a2))
    {
      sub_1004C8B1C();
      v6 = static UIWindowScene.activeScene.getter();
      if (v6)
      {
        v7 = v6;
        if (qword_100CA2688 != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        sub_10000703C(v8, qword_100D90A00);
        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&_mh_execute_header, v9, v10, "Requesting review prompt", v11, 2u);
        }

        [objc_opt_self() requestReviewInScene:v7];
        static WeatherClock.date.getter();
        sub_1004C74B0(v5);
      }

      else
      {
        if (qword_100CA2688 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_10000703C(v16, qword_100D90A00);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&_mh_execute_header, v17, v18, "No active window scene! Skipping app store review prompt", v19, 2u);
        }
      }
    }
  }

  else
  {
    if (qword_100CA2688 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000703C(v12, qword_100D90A00);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "We were deallocated! Skipping app store review prompt", v15, 2u);
    }
  }
}

uint64_t sub_1004C7A44(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AppStoreReviewConfiguration();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppConfiguration();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_1004C7F40())
  {
    v35 = a1;
    v36 = v9;
    if (qword_100CA2688 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000703C(v13, qword_100D90A00);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Checking if the review prompt feature is enabled", v16, 2u);
    }

    sub_1000161C0(v2 + 2, v2[5]);
    dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
    AppConfiguration.appStoreReview.getter();
    AppStoreReviewConfiguration.appReviewEnabled.getter();
    (*(v5 + 8))(v7, v4);
    type metadata accessor for SettingReader();
    static SettingReader.shared.getter();
    if (qword_100CA2978 != -1)
    {
      swift_once();
    }

    v17 = SettingReader.isEnabled(_:with:)();

    if (v17)
    {
      sub_1000161C0(v2 + 7, v2[10]);
      v18 = sub_100342C88();
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      v21 = os_log_type_enabled(v19, v20);
      if (v18)
      {
        if (v21)
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v19, v20, "The review prompt featured is enabled and this user is in the chosen random sample", v22, 2u);
        }

        v23 = v35;
        v24 = sub_1004C83AC(v11, v35);
        v19 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        v26 = os_log_type_enabled(v19, v25);
        if (v24 >= v23)
        {
          v27 = v36;
          if (!v26)
          {
            v12 = 0;
            goto LABEL_23;
          }

          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&_mh_execute_header, v19, v25, "We are not past the location count threshold. Showing the review prompt is disallowed", v34, 2u);
          v12 = 0;
        }

        else
        {
          v27 = v36;
          if (!v26)
          {
            v12 = 1;
            goto LABEL_23;
          }

          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v19, v25, "We are past the location count threshold. Showing the review prompt is allowed", v28, 2u);
          v12 = 1;
        }

        goto LABEL_21;
      }

      if (v21)
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "The review prompt featured is enabled but this user is not in the chosen random sample";
        v32 = v20;
        goto LABEL_20;
      }
    }

    else
    {
      v19 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        v31 = "The review prompt featured is disabled";
        v32 = v29;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v19, v32, v31, v30, 2u);
        v12 = 0;
        v27 = v36;
LABEL_21:

LABEL_23:

        (*(v27 + 8))(v11, v8);
        return v12;
      }
    }

    v12 = 0;
    v27 = v36;
    goto LABEL_23;
  }

  return 0;
}

BOOL sub_1004C7F40()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  if (qword_100CA2688 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000703C(v9, qword_100D90A00);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Checking if the prompt was shown recently ...", v12, 2u);
  }

  sub_1004C7468();
  static Date.distantPast.getter();
  sub_1004C8B60(&qword_100CA39D0, 255, &type metadata accessor for Date);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v3 + 8);
  v14(v5, v2);
  v14(v8, v2);
  if (v13)
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "promptLastShownDate == .distantPast .. concluding that the prompt was NOT shown recently", v17, 2u);
    }

    return 0;
  }

  else
  {
    v19 = sub_1004C86F4(v1);
    static WeatherClock.date.getter();
    sub_1004C7468();
    Date.timeIntervalSince(_:)();
    v21 = v20;
    v14(v5, v2);
    v14(v8, v2);
    v18 = v21 < v19;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v24 = 67109378;
      *(v24 + 4) = v21 < v19;
      *(v24 + 8) = 2080;
      sub_1004C7468();
      sub_1004C8B60(&qword_100CA5720, 255, &type metadata accessor for Date);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v27 = v26;
      v14(v8, v2);
      v28 = sub_100078694(v25, v27, &v31);

      *(v24 + 10) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Just finished checking if the prompt was shown recently. promptWasRecentlyShown=%{BOOL}d, promptLastShownDate=%s", v24, 0x12u);
      sub_100006F14(v30);
    }
  }

  return v18;
}

uint64_t sub_1004C83AC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AppStoreReviewConfiguration();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppConfiguration.appStoreReview.getter();
  v7 = AppStoreReviewConfiguration.savedLocationsCountThreshold.getter();
  (*(v4 + 8))(v6, v3);
  if (qword_100CA2688 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000703C(v8, qword_100D90A00);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134218240;
    *(v11 + 4) = a2;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v7;
    _os_log_impl(&_mh_execute_header, v9, v10, " ... now checking if we pass our location count threshold. locationCount=%ld, (app config)locationCountThreshold=%ld", v11, 0x16u);
  }

  if (qword_100CA2990 != -1)
  {
    swift_once();
  }

  sub_1004C8B60(&qword_100CBF410, v12, type metadata accessor for AppStoreReviewManager);
  Configurable.setting<A>(_:)();
  if (v18 == 1)
  {
    if (qword_100CA2998 != -1)
    {
      swift_once();
    }

    Configurable.setting<A>(_:)();
    v7 = v17;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v7;
      _os_log_impl(&_mh_execute_header, v13, v14, "We have a local setting override. locationCountThresholdOverrideEnabled=true. (local override)locationsCountThreshold=%ld", v15, 0xCu);
    }
  }

  return v7;
}

double sub_1004C86F4(uint64_t *a1)
{
  v26 = *a1;
  v2 = type metadata accessor for AppStoreReviewConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AppConfiguration();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000161C0(a1 + 2, a1[5]);
  dispatch thunk of AppConfigurationManagerType.appConfiguration.getter();
  AppConfiguration.appStoreReview.getter();
  (*(v7 + 8))(v9, v6);
  AppStoreReviewConfiguration.timeIntervalBetweenPrompts.getter();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  if (qword_100CA2988 != -1)
  {
    swift_once();
  }

  sub_1004C8B60(&qword_100CBF410, v12, type metadata accessor for AppStoreReviewManager);
  Configurable.setting<A>(_:)();
  if (v27)
  {
    if (qword_100CA2688 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000703C(v13, qword_100D90A00);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v11 = 0.0;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      v17 = "We have a local setting override. ignoreRepromptTimeInterval=true ... returning zero for timeIntervalBetweenPrompts";
      v18 = v15;
      v19 = v14;
      v20 = v16;
      v21 = 2;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v19, v18, v17, v20, v21);
    }
  }

  else
  {
    if (qword_100CA2688 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000703C(v22, qword_100D90A00);
    v14 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v11;
      v17 = "Returning the app config timeIntervalBetweenPrompts. value=%f";
      v18 = v23;
      v19 = v14;
      v20 = v24;
      v21 = 12;
      goto LABEL_12;
    }
  }

  return v11;
}

uint64_t sub_1004C8AB0()
{
  sub_100006F14(v0 + 16);
  sub_100006F14(v0 + 56);

  return v0;
}

uint64_t sub_1004C8AE0()
{
  sub_1004C8AB0();

  return swift_deallocClassInstance();
}

unint64_t sub_1004C8B1C()
{
  result = qword_100CBF408;
  if (!qword_100CBF408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CBF408);
  }

  return result;
}

uint64_t sub_1004C8B60(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004C8BBC()
{
  result = qword_100CBF418;
  if (!qword_100CBF418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF418);
  }

  return result;
}

uint64_t sub_1004C8C10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64657375636F66 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x657375636F666E75 && a2 == 0xE900000000000064;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1004C8D28(char a1)
{
  if (!a1)
  {
    return 0x64657375636F66;
  }

  if (a1 == 1)
  {
    return 0x657375636F666E75;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_1004C8D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004C8C10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004C8DB4(uint64_t a1)
{
  v2 = sub_1004C9B48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C8DF0(uint64_t a1)
{
  v2 = sub_1004C9B48();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004C8E2C(uint64_t a1)
{
  v2 = sub_1004C9C44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C8E68(uint64_t a1)
{
  v2 = sub_1004C9C44();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004C8EA4(uint64_t a1)
{
  v2 = sub_1004C9BF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C8EE0(uint64_t a1)
{
  v2 = sub_1004C9BF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004C8F1C(uint64_t a1)
{
  v2 = sub_1004C9B9C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004C8F58(uint64_t a1)
{
  v2 = sub_1004C9B9C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004C8F94@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CBF428);
  sub_1000037C4();
  v4 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  Dictionary.init(dictionaryLiteral:)();
  ShortDescription.init(name:_:)();
  a1[3] = v2;
  a1[4] = sub_1004C9A90();
  v8 = sub_100042FB0(a1);
  return (*(v4 + 32))(v8, v7, v2);
}

uint64_t sub_1004C90FC(void *a1, int a2)
{
  v33 = a2;
  sub_10022C350(&qword_100CBF480);
  sub_1000037C4();
  v31 = v4;
  v32 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v30 = &v26 - v6;
  sub_10022C350(&qword_100CBF488);
  sub_1000037C4();
  v28 = v8;
  v29 = v7;
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = sub_10022C350(&qword_100CBF490);
  sub_1000037C4();
  v27 = v13;
  sub_100003828();
  __chkstk_darwin(v14);
  v16 = &v26 - v15;
  v17 = sub_10022C350(&qword_100CBF498);
  sub_1000037C4();
  v19 = v18;
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v26 - v21;
  sub_1000161C0(a1, a1[3]);
  sub_1004C9B48();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = (v19 + 8);
  if (v33)
  {
    if (v33 == 1)
    {
      v35 = 1;
      sub_1004C9BF0();
      sub_10000C88C();
      (*(v28 + 8))(v11, v29);
    }

    else
    {
      v36 = 2;
      sub_1004C9B9C();
      v24 = v30;
      sub_10000C88C();
      (*(v31 + 8))(v24, v32);
    }
  }

  else
  {
    v34 = 0;
    sub_1004C9C44();
    sub_10000C88C();
    (*(v27 + 8))(v16, v12);
  }

  return (*v23)(v22, v17);
}

uint64_t sub_1004C9418(void *a1)
{
  v63 = sub_10022C350(&qword_100CBF440);
  sub_1000037C4();
  v61 = v2;
  sub_100003828();
  __chkstk_darwin(v3);
  v59 = &v53 - v4;
  v60 = sub_10022C350(&qword_100CBF448);
  sub_1000037C4();
  v58 = v5;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v53 - v7;
  v9 = sub_10022C350(&qword_100CBF450);
  sub_1000037C4();
  v57 = v10;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v53 - v12;
  v14 = sub_10022C350(&qword_100CBF458);
  sub_1000037C4();
  v62 = v15;
  sub_100003828();
  __chkstk_darwin(v16);
  v17 = a1[3];
  sub_1000161C0(a1, v17);
  sub_1004C9B48();
  v18 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    goto LABEL_12;
  }

  v53 = v9;
  v54 = v13;
  v55 = v8;
  v56 = 0;
  v19 = v63;
  v64 = a1;
  v20 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80(v20, 0);
  v17 = v14;
  if (v23 == v24 >> 1)
  {
    goto LABEL_10;
  }

  if (v23 < (v24 >> 1))
  {
    v25 = v14;
    v26 = *(v22 + v23);
    v27 = sub_100618E7C(v23 + 1);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    v32 = v60;
    v33 = v61;
    if (v29 == v31 >> 1)
    {
      v17 = v26;
      if (v26)
      {
        v57 = v27;
        v34 = v56;
        if (v26 == 1)
        {
          v66 = 1;
          sub_1004C9BF0();
          v35 = v55;
          sub_10000803C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v58 + 8))(v35, v32);
            v36 = sub_100003C88();
            v37(v36);
LABEL_21:
            sub_100006F14(v64);
            return v17;
          }
        }

        else
        {
          LODWORD(v60) = v26;
          v67 = 2;
          sub_1004C9B9C();
          v17 = v59;
          sub_10000803C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v34)
          {
            swift_unknownObjectRelease();
            (*(v33 + 8))(v17, v19);
            v51 = sub_100003C88();
            v52(v51);
            v17 = v60;
            goto LABEL_21;
          }
        }

        v47 = sub_100003C88();
        v48(v47);
      }

      else
      {
        v65 = 0;
        sub_1004C9C44();
        v43 = v54;
        sub_10000803C();
        v44 = v56;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v44)
        {
          swift_unknownObjectRelease();
          (*(v57 + 8))(v43, v53);
          v49 = sub_100003C78();
          v50(v49, v25);
          goto LABEL_21;
        }

        v45 = sub_100003C78();
        v46(v45, v25);
      }

      swift_unknownObjectRelease();
      goto LABEL_11;
    }

    v17 = v25;
LABEL_10:
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    sub_10022C350(&qword_100CA7610);
    *v40 = &type metadata for WindowFocusState;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, enum case for DecodingError.typeMismatch(_:), v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    v41 = sub_100003C78();
    v42(v41, v17);
LABEL_11:
    a1 = v64;
LABEL_12:
    sub_100006F14(a1);
    return v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004C99B4()
{
  sub_1004C9AF4();

  return ShortDescribable.description.getter();
}

uint64_t sub_1004C99F0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1004C9418(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1004C9A3C()
{
  result = qword_100CBF420;
  if (!qword_100CBF420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF420);
  }

  return result;
}

unint64_t sub_1004C9A90()
{
  result = qword_100CBF430;
  if (!qword_100CBF430)
  {
    sub_10022E824(&qword_100CBF428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF430);
  }

  return result;
}

unint64_t sub_1004C9AF4()
{
  result = qword_100CBF438;
  if (!qword_100CBF438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF438);
  }

  return result;
}

unint64_t sub_1004C9B48()
{
  result = qword_100CBF460;
  if (!qword_100CBF460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF460);
  }

  return result;
}

unint64_t sub_1004C9B9C()
{
  result = qword_100CBF468;
  if (!qword_100CBF468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF468);
  }

  return result;
}

unint64_t sub_1004C9BF0()
{
  result = qword_100CBF470;
  if (!qword_100CBF470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF470);
  }

  return result;
}

unint64_t sub_1004C9C44()
{
  result = qword_100CBF478;
  if (!qword_100CBF478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF478);
  }

  return result;
}

_BYTE *sub_1004C9C98(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1004C9DA8()
{
  result = qword_100CBF4A0;
  if (!qword_100CBF4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF4A0);
  }

  return result;
}

unint64_t sub_1004C9E00()
{
  result = qword_100CBF4A8;
  if (!qword_100CBF4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF4A8);
  }

  return result;
}

unint64_t sub_1004C9E58()
{
  result = qword_100CBF4B0;
  if (!qword_100CBF4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF4B0);
  }

  return result;
}

unint64_t sub_1004C9EB0()
{
  result = qword_100CBF4B8;
  if (!qword_100CBF4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF4B8);
  }

  return result;
}

unint64_t sub_1004C9F08()
{
  result = qword_100CBF4C0;
  if (!qword_100CBF4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF4C0);
  }

  return result;
}

unint64_t sub_1004C9F60()
{
  result = qword_100CBF4C8;
  if (!qword_100CBF4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF4C8);
  }

  return result;
}

unint64_t sub_1004C9FB8()
{
  result = qword_100CBF4D0;
  if (!qword_100CBF4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF4D0);
  }

  return result;
}

unint64_t sub_1004CA010()
{
  result = qword_100CBF4D8;
  if (!qword_100CBF4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF4D8);
  }

  return result;
}

unint64_t sub_1004CA068()
{
  result = qword_100CBF4E0;
  if (!qword_100CBF4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF4E0);
  }

  return result;
}

uint64_t sub_1004CA0C4()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x1D)
  {
    return 29;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1004CA118(char a1)
{
  result = 0x776569567473694CLL;
  switch(a1)
  {
    case 1:
    case 14:
      sub_10001EED0();
      result = v4 | 1;
      break;
    case 2:
      sub_10001EED0();
      result = v7 - 5;
      break;
    case 3:
      result = 0x7463616544707041;
      break;
    case 4:
    case 5:
      sub_10001EED0();
      result = v11 + 7;
      break;
    case 6:
    case 7:
    case 19:
      sub_10001EED0();
      result = v16 + 6;
      break;
    case 8:
      sub_10001EED0();
      result = v14 - 4;
      break;
    case 9:
    case 18:
    case 27:
      sub_10001EED0();
      result = v13 + 5;
      break;
    case 10:
    case 26:
      sub_10001EED0();
      result = v19 | 8;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      sub_10001EED0();
      result = v5 - 1;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 15:
      sub_10001EED0();
      result = v8 + 13;
      break;
    case 16:
      sub_10001EED0();
      result = v3 + 15;
      break;
    case 17:
      sub_10001EED0();
      result = v9 + 20;
      break;
    case 20:
      sub_10001EED0();
      result = v10 + 19;
      break;
    case 21:
      sub_10001EED0();
      result = v12 + 21;
      break;
    case 22:
      sub_10001EED0();
      result = v15 + 11;
      break;
    case 23:
      sub_10001EED0();
      result = v17 + 12;
      break;
    case 24:
      sub_10001EED0();
      result = v6 + 4;
      break;
    case 25:
      result = 0xD000000000000016;
      break;
    case 28:
      sub_10001EED0();
      result = v18 + 22;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PerformanceTest.Name(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE4)
  {
    if (a2 + 28 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 28) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 29;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v5 = v6 - 29;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PerformanceTest.Name(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE3)
  {
    v6 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 28;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1004CA608@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004CA0C4();
  *a1 = result;
  return result;
}

uint64_t sub_1004CA638@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004CA118(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1004CA668()
{
  result = qword_100CBF4E8;
  if (!qword_100CBF4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF4E8);
  }

  return result;
}

uint64_t sub_1004CA77C()
{
  v0 = sub_10022C350(&qword_100CA35A0);
  sub_100007074(v0, qword_100D90328);
  sub_10000703C(v0, qword_100D90328);
  sub_10022C350(&qword_100CA55A8);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_1004CA8DC()
{
  sub_10022C350(&qword_100CA5570);
  sub_1000037C4();
  v49 = v0;
  v50 = v1;
  sub_100003828();
  __chkstk_darwin(v2);
  v47 = &v41 - v3;
  v46 = sub_10022C350(&qword_100CA5578);
  sub_1000037C4();
  v48 = v4;
  sub_100003828();
  __chkstk_darwin(v5);
  v44 = &v41 - v6;
  v7 = type metadata accessor for Tips.IgnoresDisplayFrequency();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v43 = sub_10022C350(&qword_100CA5580);
  sub_1000037C4();
  v45 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = &v41 - v16;
  v18 = type metadata accessor for Tips.MaxDisplayCount();
  sub_1000037C4();
  v20 = v19;
  __chkstk_darwin(v21);
  sub_1000037D8();
  v24 = v23 - v22;
  v25 = sub_10022C350(&qword_100CA5588);
  sub_1000037C4();
  v42 = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v41 - v28;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v20 + 8))(v24, v18);
  Tips.IgnoresDisplayFrequency.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v9 + 8))(v13, v7);
  v51 = v18;
  v52 = &protocol witness table for Tips.MaxDisplayCount;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v44;
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v51 = v25;
  v52 = OpaqueTypeConformance2;
  v32 = swift_getOpaqueTypeConformance2();
  v51 = v7;
  v52 = &protocol witness table for Tips.IgnoresDisplayFrequency;
  v33 = swift_getOpaqueTypeConformance2();
  v35 = v46;
  v34 = v47;
  v36 = v43;
  static Tips.OptionsBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v51 = v35;
  v52 = v36;
  v53 = v32;
  v54 = v33;
  swift_getOpaqueTypeConformance2();
  v37 = v34;
  v38 = v49;
  v39 = static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  (*(v50 + 8))(v37, v38);
  (*(v48 + 8))(v31, v35);
  (*(v45 + 8))(v17, v36);
  (*(v42 + 8))(v29, v25);
  return v39;
}

uint64_t sub_1004CAD90()
{
  v0 = sub_10022C350(&qword_100CA35A0);
  sub_1000037C4();
  v2 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v16 - v4;
  v6 = type metadata accessor for Tips.Rule();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_1000037D8();
  v12 = v11 - v10;
  if (qword_100CA21B0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000703C(v0, qword_100D90328);
  swift_beginAccess();
  (*(v2 + 16))(v5, v13, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v8 + 8))(v12, v6);
  v14 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v14;
}

uint64_t sub_1004CAFBC@<X0>(uint64_t *a1@<X8>)
{
  sub_1004CB054();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1004CB000()
{
  result = qword_100CBF4F0;
  if (!qword_100CBF4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF4F0);
  }

  return result;
}

unint64_t sub_1004CB054()
{
  result = qword_100CBF4F8;
  if (!qword_100CBF4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF4F8);
  }

  return result;
}

void sub_1004CB0A8(void *a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v2 - 8);
  v4 = v44 - v3;
  v5 = type metadata accessor for ActivityAction();
  __chkstk_darwin(v5);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1003C12B4();
  if (v8 == 2)
  {
    v9 = 0;
LABEL_3:
    sub_1004CB5C4();
    v10 = swift_allocError();
    v12 = v11;
    v13 = sub_100166104(a1);
    *v12 = v9;
    *(v12 + 8) = v13;
    *(v12 + 40) = 0;
    swift_willThrow();
    if (qword_100CA2760 != -1)
    {
      sub_10000FAB4();
    }

    v14 = type metadata accessor for Logger();
    sub_10000703C(v14, qword_100D90C78);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v44[1] = v10;
      v45 = v18;
      *v17 = 136446210;
      swift_errorRetain();
      sub_10022C350(&qword_100CD8220);
      v19 = String.init<A>(describing:)();
      v21 = sub_100078694(v19, v20, &v45);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "WeatherUserActivityHandler failed to handle user activity; error=%{public}s", v17, 0xCu);
      sub_100006F14(v18);
    }

    else
    {
    }

    return;
  }

  if (v8 & 1) == 0 || (v22 = sub_1003C137C(), v23) && (v24 = v22, v25 = v23, type metadata accessor for WeatherLocation(), LOBYTE(v24) = sub_100673BE8(v24, v25), , (v24))
  {
    sub_10001C408();
    swift_storeEnumTagMultiPayload();
    v26 = static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
    v27 = static VerticalSizingBehaviorKey.defaultValue.getter();
    sub_100366814(v7, v26 & 1, v27 & 1);
    sub_1002AC218(v7);
    return;
  }

  v28 = sub_1003C1484();
  if (v29)
  {
    v9 = 3;
    goto LABEL_3;
  }

  v30 = *&v28;
  v31 = sub_1003C1494();
  if (v32)
  {
    v9 = 4;
    goto LABEL_3;
  }

  v33 = v31;
  v34 = *&v31;
  v35 = sub_1003C1398();
  v37 = v36;
  if (qword_100CA2760 != -1)
  {
    sub_10000FAB4();
  }

  v38 = type metadata accessor for Logger();
  sub_10000703C(v38, qword_100D90C78);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 141558787;
    *(v41 + 4) = 1752392040;
    *(v41 + 12) = 2049;
    *(v41 + 14) = v30;
    *(v41 + 22) = 2160;
    *(v41 + 24) = 1752392040;
    *(v41 + 32) = 2049;
    *(v41 + 34) = v33;
    _os_log_impl(&_mh_execute_header, v39, v40, "WeatherUserActivityHandler got user activity with latitude and longitude; latitude=%{private,mask.hash}f, longitude=%{private,mask.hash}f", v41, 0x2Au);
  }

  v42 = type metadata accessor for Date();
  sub_10001B350(v4, 1, 1, v42);
  sub_100066E08();
  v43 = Dictionary.init(dictionaryLiteral:)();
  sub_1002A2C08(v35, v37, 18, v4, v43, 0, 0, v30, v34);

  sub_1001AEDF4(v4);
}

unint64_t sub_1004CB5C4()
{
  result = qword_100CBF5A8;
  if (!qword_100CBF5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF5A8);
  }

  return result;
}

uint64_t sub_1004CB624(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004CB660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1004CB6AC(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_1004CB6E4()
{
  v1 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  if (*(v0 + 32))
  {
    v8 = *(v0 + 32);
  }

  else
  {
    (*(v3 + 104))(v7, enum case for Font.TextStyle.largeTitle(_:), v1);
    static Font.Weight.medium.getter();
    v8 = static Font.system(_:weight:)();
    (*(v3 + 8))(v7, v1);
    *(v0 + 32) = v8;
  }

  return v8;
}

uint64_t sub_1004CB7FC()
{
  v1 = type metadata accessor for Font.Leading();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  if (*(v0 + 48))
  {
    v15 = *(v0 + 48);
  }

  else
  {
    (*(v10 + 104))(v14, enum case for Font.TextStyle.largeTitle(_:), v8);
    static Font.Weight.medium.getter();
    static Font.system(_:weight:)();
    (*(v10 + 8))(v14, v8);
    (*(v3 + 104))(v7, enum case for Font.Leading.tight(_:), v1);
    v15 = Font.leading(_:)();

    (*(v3 + 8))(v7, v1);
    *(v0 + 48) = v15;
  }

  return v15;
}

double sub_1004CB9D8()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  result = 1.0;
  if (*(v0 + 154))
  {
    result = 4.0;
  }

  *(v0 + 64) = result;
  *(v0 + 72) = 0;
  return result;
}

uint64_t sub_1004CBA08()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v1 = sub_1004CB6E4();
    *(v0 + 80) = v1;
  }

  return v1;
}

uint64_t sub_1004CBA64(char a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 72) = 1;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 104) = 1;
  *(v1 + 112) = 0;
  *(v1 + 120) = 1;
  *(v1 + 128) = 0;
  *(v1 + 136) = 1;
  *(v1 + 144) = 0;
  *(v1 + 152) = 257;
  *(v1 + 154) = a1;
  return v1;
}

uint64_t sub_1004CBAB4()
{
  sub_100466914();

  return swift_deallocClassInstance();
}

uint64_t sub_1004CBB9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  sub_1000037C4();
  v6 = v5;
  __chkstk_darwin(v7);
  sub_1000037D8();
  v10 = v9 - v8;
  v11 = sub_10022C350(&unk_100CB2CF0);
  sub_100003810(v11);
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v15 = sub_10022C350(qword_100CA4F80);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_12;
  }

  v19 = type metadata accessor for DayPickerInput();
  sub_1001D374C();
  if ((v20 & 1) == 0)
  {
    goto LABEL_12;
  }

  v21 = *(v19 + 24);
  v22 = *(v15 + 48);
  sub_1000D47CC(a1 + v21, v18);
  sub_1000D47CC(a2 + v21, &v18[v22]);
  sub_100003A40(v18);
  if (v23)
  {
    sub_100003A40(&v18[v22]);
    if (v23)
    {
      sub_1000180EC(v18, &unk_100CB2CF0);
LABEL_15:
      v24 = static TimeZone.== infix(_:_:)();
      return v24 & 1;
    }

    goto LABEL_11;
  }

  sub_1000D47CC(v18, v14);
  sub_100003A40(&v18[v22]);
  if (v23)
  {
    (*(v6 + 8))(v14, v4);
LABEL_11:
    sub_1000180EC(v18, qword_100CA4F80);
    goto LABEL_12;
  }

  (*(v6 + 32))(v10, &v18[v22], v4);
  sub_1000E1670(&qword_100CA39D0, &type metadata accessor for Date);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = *(v6 + 8);
  v27(v10, v4);
  v27(v14, v4);
  sub_1000180EC(v18, &unk_100CB2CF0);
  if (v26)
  {
    goto LABEL_15;
  }

LABEL_12:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1004CBE74@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v178 = a1;
  v181 = a2;
  v167 = type metadata accessor for DayWeather();
  sub_1000037C4();
  v165 = v2;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v163 = v5 - v4;
  v6 = type metadata accessor for Date();
  sub_1000037C4();
  v166 = v7;
  __chkstk_darwin(v8);
  sub_1000037D8();
  v164 = v10 - v9;
  type metadata accessor for TimeZone();
  sub_1000037C4();
  v172 = v12;
  v173 = v11;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v170 = v14 - v13;
  v15 = type metadata accessor for WeatherData(0);
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_1000037D8();
  v175 = v18 - v17;
  v19 = sub_10022C350(&qword_100CA37B0);
  sub_100003810(v19);
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v160 - v21;
  v23 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v24);
  v26 = &v160 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v177 = &v160 - v28;
  v29 = sub_10022C350(&qword_100CB0D50);
  sub_100003810(v29);
  sub_100003828();
  __chkstk_darwin(v30);
  v32 = &v160 - v31;
  v33 = type metadata accessor for ConditionDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v34);
  v176 = &v160 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000386C();
  __chkstk_darwin(v36);
  v38 = &v160 - v37;
  __chkstk_darwin(v39);
  sub_100003878();
  v171 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  sub_100003878();
  v169 = v42;
  sub_10000386C();
  __chkstk_darwin(v43);
  sub_100003878();
  v162 = v44;
  sub_10000386C();
  __chkstk_darwin(v45);
  sub_100003878();
  v161 = v46;
  sub_10000386C();
  __chkstk_darwin(v47);
  v49 = &v160 - v48;
  v50 = type metadata accessor for DayPickerInput();
  sub_1000037E8();
  __chkstk_darwin(v51);
  sub_1000037D8();
  v54 = v53 - v52;
  static WeatherClock.date.getter();
  v55 = v54 + *(v50 + 24);
  v168 = v6;
  v56 = v6;
  v57 = v178;
  sub_10001B350(v55, 1, 1, v56);
  static TimeZone.current.getter();
  v180 = v50;
  v58 = *(v50 + 20);
  v179 = v54;
  *(v54 + v58) = _swiftEmptyArrayStorage;
  sub_10037E2D0(v32);
  if (sub_100024D10(v32, 1, v33) == 1)
  {
    sub_1000180EC(v32, &qword_100CB0D50);
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0();
    }

    v59 = type metadata accessor for Logger();
    sub_10000703C(v59, qword_100D90B68);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    v62 = sub_1000207B0(v61);
    v63 = v180;
    if (v62)
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Failed to create DayPickerInput due to missing conditionDetailViewState.", v64, 2u);
      sub_100003884();
    }

    goto LABEL_29;
  }

  sub_1004CD044(v32, v49);
  v65 = *&v57[OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16];

  v66 = Location.id.getter();
  sub_1000864C0(v66, v67, v65);

  v68 = v49;
  if (sub_100024D10(v22, 1, v23) == 1)
  {
    sub_1000180EC(v22, &qword_100CA37B0);
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0();
    }

    v69 = type metadata accessor for Logger();
    sub_10000703C(v69, qword_100D90B68);
    sub_1000101EC();
    sub_1004CCFE8(v49, v38);
    v70 = v176;
    sub_1004CCFE8(v49, v176);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    if (sub_1000207B0(v72))
    {
      v73 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      *v73 = 136315651;
      type metadata accessor for DetailCondition();
      sub_1000147E8();
      sub_1000E1670(v74, v75);
      dispatch thunk of CustomStringConvertible.description.getter();
      v178 = v49;
      v77 = v76;
      sub_1004CD0A0(v38, type metadata accessor for ConditionDetailViewState);
      v78 = sub_10002C778();
      v80 = sub_100078694(v78, v77, v79);

      *(v73 + 4) = v80;
      *(v73 + 12) = 2160;
      *(v73 + 14) = 1752392040;
      *(v73 + 22) = 2081;
      type metadata accessor for Location();
      sub_100004388();
      sub_1000E1670(v81, v82);
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v84;
      sub_1004CD0A0(v70, type metadata accessor for ConditionDetailViewState);
      v86 = sub_10002C778();
      sub_100078694(v86, v85, v87);
      sub_10001389C();

      *(v73 + 24) = v83;
      _os_log_impl(&_mh_execute_header, v71, v72, "Failed to create DayPickerInput due to missing weather data for location; condition=%s, location=%{private,mask.hash}s", v73, 0x20u);
      swift_arrayDestroy();
      sub_100003884();
      sub_100003884();

      v88 = v178;
      v89 = type metadata accessor for ConditionDetailViewState;
LABEL_28:
      sub_1004CD0A0(v88, v89);
      v63 = v180;
LABEL_29:
      v152 = v181;
      sub_1004CD044(v179, v181);
      return sub_10001B350(v152, 0, 1, v63);
    }

    sub_100005F7C();
    sub_1004CD0A0(v70, v122);
    v123 = v38;
    v124 = v71;
LABEL_27:
    sub_1004CD0A0(v123, v124);
    v88 = v68;
    v89 = v71;
    goto LABEL_28;
  }

  v90 = v22;
  v91 = v177;
  sub_1004CD044(v90, v177);
  sub_1004CCFE8(v91, v26);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v178 = v33;
    sub_10001EEE4();
    sub_1004CD0A0(v26, v125);
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0();
    }

    v126 = type metadata accessor for Logger();
    sub_10000703C(v126, qword_100D90B68);
    sub_1000101EC();
    v127 = v169;
    sub_1004CCFE8(v49, v169);
    v128 = v171;
    sub_1004CCFE8(v49, v171);
    v71 = Logger.logObject.getter();
    v129 = static os_log_type_t.error.getter();
    if (!sub_1000207B0(v129))
    {

      sub_100005F7C();
      sub_1004CD0A0(v128, v156);
      sub_1004CD0A0(v127, v71);
      sub_10001EEE4();
      v123 = v91;
      goto LABEL_27;
    }

    v130 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    *v130 = 136315651;
    v131 = v127;
    v104 = type metadata accessor for DetailCondition();
    sub_1000147E8();
    sub_1000E1670(v132, v133);
    v134 = dispatch thunk of CustomStringConvertible.description.getter();
    v136 = v135;
    sub_100074AD0();
    sub_1004CD0A0(v131, v137);
    v138 = sub_100078694(v134, v136, &v182);

    *(v130 + 4) = v138;
    *(v130 + 12) = 2160;
    *(v130 + 14) = 1752392040;
    *(v130 + 22) = 2081;
    type metadata accessor for Location();
    sub_100004388();
    sub_1000E1670(v139, v140);
    dispatch thunk of CustomStringConvertible.description.getter();
    v142 = v141;
    sub_1004CD0A0(v128, v104);
    v143 = sub_10002C778();
    v145 = sub_100078694(v143, v142, v144);

    *(v130 + 24) = v145;
    _os_log_impl(&_mh_execute_header, v71, v129, "Failed to create DayPickerInput due to missing weather data; condition=%s, location=%{private,mask.hash}s", v130, 0x20u);
    swift_arrayDestroy();
    sub_100003884();
    sub_100003884();

LABEL_23:
    sub_10001EEE4();
    sub_1004CD0A0(v177, v146);
    v88 = v68;
    v89 = v104;
    goto LABEL_28;
  }

  v92 = sub_10022C350(&qword_100CA75D8);
  v93 = *(v92 + 48);
  v94 = *(v92 + 64);
  v95 = v175;
  sub_1004CD044(v26, v175);
  sub_1004CD0A0(&v26[v94], type metadata accessor for NewsDataModel);
  sub_1004CD0A0(&v26[v93], type metadata accessor for PreprocessedWeatherData);
  sub_1000161C0((v174 + 16), *(v174 + 40));
  v96 = v170;
  Location.timeZone.getter();
  v97 = sub_1000FD610(v95, v96, 1, 11, 0);
  (*(v172 + 8))(v96, v173);
  if (v97[2] < 7uLL)
  {
    v178 = v33;
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0();
    }

    v98 = type metadata accessor for Logger();
    sub_10000703C(v98, qword_100D90B68);
    sub_1000101EC();
    v99 = v161;
    sub_1004CCFE8(v68, v161);
    v100 = v162;
    sub_1004CCFE8(v68, v162);

    v71 = Logger.logObject.getter();
    v101 = static os_log_type_t.error.getter();
    if (!sub_1000207B0(v101))
    {

      swift_bridgeObjectRelease_n();
      sub_100005F7C();
      sub_1004CD0A0(v100, v157);
      sub_1004CD0A0(v99, v71);
      sub_10000877C();
      sub_1004CD0A0(v95, v158);
      sub_10001EEE4();
      v123 = v177;
      goto LABEL_27;
    }

    v102 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    *v102 = 134218755;
    v103 = v97[2];

    *(v102 + 4) = v103;

    *(v102 + 12) = 2080;
    v104 = type metadata accessor for DetailCondition();
    sub_1000147E8();
    sub_1000E1670(v105, v106);
    v107 = v99;
    dispatch thunk of CustomStringConvertible.description.getter();
    sub_10001389C();
    v109 = v108;
    sub_100074AD0();
    sub_1004CD0A0(v110, v111);
    v112 = sub_10002C778();
    sub_100078694(v112, v109, v113);
    sub_10001389C();

    *(v102 + 14) = v107;
    *(v102 + 22) = 2160;
    *(v102 + 24) = 1752392040;
    *(v102 + 32) = 2081;
    type metadata accessor for Location();
    sub_100004388();
    sub_1000E1670(v114, v115);
    v116 = dispatch thunk of CustomStringConvertible.description.getter();
    v118 = v117;
    sub_1004CD0A0(v100, v104);
    v119 = sub_10002C778();
    sub_100078694(v119, v118, v120);
    sub_10001389C();

    *(v102 + 34) = v116;
    _os_log_impl(&_mh_execute_header, v71, v101, "Failed to create DayPickerInput due to invalid daily data; dayCount=%ld, condition=%s, location=%{private,mask.hash}s", v102, 0x2Au);
    swift_arrayDestroy();
    sub_100003884();
    sub_100003884();

    sub_10000877C();
    sub_1004CD0A0(v95, v121);
    goto LABEL_23;
  }

  v147 = v165;
  v148 = v163;
  v149 = v167;
  (*(v165 + 16))(v163, v97 + ((*(v147 + 80) + 32) & ~*(v147 + 80)) + *(v147 + 72), v167);
  v150 = v164;
  DayWeather.date.getter();
  (*(v147 + 8))(v148, v149);
  v151 = v166;
  v152 = v181;
  v153 = v168;
  (*(v166 + 16))(v181, v150, v168);
  v63 = v180;
  sub_1000D47CC(v68 + *(v33 + 24), v152 + *(v180 + 24));
  Location.timeZone.getter();
  (*(v151 + 8))(v150, v153);
  sub_10000877C();
  sub_1004CD0A0(v95, v154);
  sub_10001EEE4();
  sub_1004CD0A0(v177, v155);
  sub_1004CD0A0(v68, type metadata accessor for ConditionDetailViewState);
  sub_1004CD0A0(v179, type metadata accessor for DayPickerInput);
  *(v152 + *(v63 + 20)) = v97;
  return sub_10001B350(v152, 0, 1, v63);
}

uint64_t type metadata accessor for DayPickerInput()
{
  result = qword_100CBF7B0;
  if (!qword_100CBF7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004CCE70()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1004CCF84(319, &unk_100CBF7C0, &type metadata accessor for DayWeather, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1004CCF84(319, &qword_100CA3940, &type metadata accessor for Date, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        type metadata accessor for TimeZone();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1004CCF84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1004CCFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_1004CD044(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1004CD0A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1004CD10C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x8000000100AC76D0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1004CD1A8(void *a1, uint64_t a2)
{
  sub_10022C350(&qword_100CBF820);
  sub_10000FB48();
  v6 = v5;
  __chkstk_darwin(v7);
  v9 = v11 - v8;
  sub_1000161C0(a1, a1[3]);
  sub_1004CD7B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_10022C350(&qword_100CBF810);
  sub_1004CD80C(&qword_100CBF828);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v9, v2);
}

void *sub_1004CD318(void *a1)
{
  sub_10022C350(&qword_100CBF800);
  sub_10000FB48();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = v11 - v7;
  v9 = sub_1000161C0(a1, a1[3]);
  sub_1004CD7B8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100006F14(a1);
  }

  else
  {
    sub_10022C350(&qword_100CBF810);
    sub_1004CD80C(&qword_100CBF818);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v2);
    v9 = v11[1];
    sub_100006F14(a1);
  }

  return v9;
}

uint64_t sub_1004CD4B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004CD10C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1004CD4E0(uint64_t a1)
{
  v2 = sub_1004CD7B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004CD51C(uint64_t a1)
{
  v2 = sub_1004CD7B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1004CD564@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1004CD318(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1004CD5AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x8000000100AC76D0;
  *(inited + 72) = sub_10022C350(&qword_100CBF810);
  *(inited + 48) = a1;

  Dictionary.init(dictionaryLiteral:)();
  a2[3] = sub_10022C350(&qword_100CBF830);
  a2[4] = sub_1004CD878();
  sub_100042FB0(a2);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1004CD6DC()
{
  sub_1004CD8DC();

  return ShortDescribable.description.getter();
}

uint64_t sub_1004CD718@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100758080();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1004CD764()
{
  result = qword_100CBF7F8;
  if (!qword_100CBF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF7F8);
  }

  return result;
}

unint64_t sub_1004CD7B8()
{
  result = qword_100CBF808;
  if (!qword_100CBF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF808);
  }

  return result;
}

uint64_t sub_1004CD80C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CBF810);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1004CD878()
{
  result = qword_100CBF838;
  if (!qword_100CBF838)
  {
    sub_10022E824(&qword_100CBF830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF838);
  }

  return result;
}

unint64_t sub_1004CD8DC()
{
  result = qword_100CBF840;
  if (!qword_100CBF840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF840);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AutomationState.CodingKeys(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1004CD9E0()
{
  result = qword_100CBF848;
  if (!qword_100CBF848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF848);
  }

  return result;
}

unint64_t sub_1004CDA38()
{
  result = qword_100CBF850;
  if (!qword_100CBF850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF850);
  }

  return result;
}

unint64_t sub_1004CDA90()
{
  result = qword_100CBF858;
  if (!qword_100CBF858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF858);
  }

  return result;
}

uint64_t sub_1004CDAE4()
{
  result = static Solarium.isEnabled.getter();
  v1 = 6.0;
  if (result)
  {
    v1 = 12.0;
  }

  qword_100D90340 = *&v1;
  return result;
}

uint64_t sub_1004CDB14()
{
  result = static Solarium.isEnabled.getter();
  v1 = 6.0;
  if (result)
  {
    v1 = 26.0;
  }

  qword_100D90348 = *&v1;
  return result;
}

uint64_t sub_1004CDB44()
{
  v0 = type metadata accessor for UUID();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  sub_1000037C4();
  v8 = v7;
  v10 = __chkstk_darwin(v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v45 - v14;
  __chkstk_darwin(v13);
  v17 = &v45 - v16;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1000E7AC4(&xmmword_100D8FB90, v52);
  if (v53)
  {
    v48 = v2;
    v49 = v0;
    v50 = v8;
    v51 = v6;
    sub_1000161C0(v52, v53);
    sub_10022C350(&qword_100CBF860);
    v18 = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v18)
    {
      v19 = v18;
      sub_100006F14(v52);
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      v47 = v19;
      v20 = sub_1000668DC();
      v21 = *(v20 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v22 = *(v20 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v24 = *(v20 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v23 = *(v20 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);

      v52[0] = v21;
      v52[1] = v22;
      v52[2] = v24;
      v53 = v23;
      sub_1002DD624();
      v25 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v45 = v26;
      v46 = v25;

      v27 = [objc_opt_self() defaultManager];
      v28 = [v27 temporaryDirectory];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(21);

      v52[0] = 0xD000000000000013;
      v52[1] = 0x8000000100ACFE60;
      UUID.init()();
      v29 = UUID.uuidString.getter();
      v31 = v30;
      (*(v48 + 8))(v5, v49);
      v32._countAndFlagsBits = v29;
      v32._object = v31;
      String.append(_:)(v32);

      URL.appendingPathComponent(_:)();

      v33 = v51;
      v34 = *(v50 + 8);
      v34(v12, v51);
      URL.appendingPathExtension(_:)();
      v34(v15, v33);
      v36 = v45;
      v35 = v46;
      Data.write(to:options:)();
      v37 = [objc_opt_self() generalPasteboard];
      v38 = URL.path.getter();
      sub_1004CE134(v38, v39, v37);

      sub_10022C350(&qword_100CB97B8);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_100A2C3F0;
      v52[0] = 0;
      v52[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      strcpy(v52, "File saved to ");
      HIBYTE(v52[1]) = -18;
      v41 = URL.path(percentEncoded:)(1);
      String.append(_:)(v41);

      v42 = v52[0];
      v43 = v52[1];
      *(v40 + 56) = &type metadata for String;
      *(v40 + 32) = v42;
      *(v40 + 40) = v43;
      print(_:separator:terminator:)();

      sub_10030F778(v35, v36);

      return (v34)(v17, v33);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1004CE0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = type metadata accessor for SettingCellStyle();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void sub_1004CE134(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 setString:v4];
}

uint64_t type metadata accessor for DemoPresetSaveWeatherMainStateButton()
{
  result = qword_100CBF8C0;
  if (!qword_100CBF8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004CE20C()
{
  result = type metadata accessor for SettingCellStyle();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004CE2A8(SEL *a1)
{
  if ([v1 respondsToSelector:*a1])
  {
    return sub_1004CE2F8(v1, a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004CE2F8(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t type metadata accessor for SuggestedSearchResultRowView()
{
  result = qword_100CBF958;
  if (!qword_100CBF958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1004CE3CC()
{
  result = sub_100284708();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LocationOfInterest();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004CE474@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v62 = type metadata accessor for AutomationInfo(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000037D8();
  v61 = (v4 - v3);
  v59 = type metadata accessor for LocationOfInterestType();
  sub_1000037C4();
  v57 = v5;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v55 = v8 - v7;
  v9 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v9 - 8);
  sub_1000037D8();
  v64 = type metadata accessor for SearchResultButtonStyle();
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = (v12 - v11);
  v14 = type metadata accessor for SuggestedSearchResultRowView();
  v15 = v14 - 8;
  v16 = *(v14 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  v63 = sub_10022C350(&qword_100CBF998);
  sub_1000037C4();
  v19 = v18;
  __chkstk_darwin(v20);
  v22 = &v54 - v21;
  v56 = sub_10022C350(&qword_100CBF9A0);
  sub_1000037C4();
  v58 = v23;
  __chkstk_darwin(v24);
  v65 = &v54 - v25;
  sub_1004CF238(v1, &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SuggestedSearchResultRowView);
  v26 = (*(v16 + 80) + 16) & ~*(v16 + 80);
  v27 = swift_allocObject();
  sub_1004CF16C(&v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  v66 = v1;
  sub_10022C350(&qword_100CBF9A8);
  sub_100006F64(&qword_100CBF9B0, &qword_100CBF9A8);
  Button.init(action:label:)();
  LOBYTE(v16) = *(v1 + *(v15 + 32));
  *v13 = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  *(v13 + *(v64 + 20)) = v16;
  v28 = sub_100006F64(&qword_100CBF9B8, &qword_100CBF998);
  v29 = sub_10033CFA0(&qword_100CADEB8, type metadata accessor for SearchResultButtonStyle);
  v30 = v63;
  View.buttonStyle<A>(_:)();
  sub_10033CCBC(v13, type metadata accessor for SearchResultButtonStyle);
  (*(v19 + 8))(v22, v30);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v31);
  v32 = v55;
  LocationOfInterest.type.getter();
  v33 = LocationOfInterestType.title.getter();
  v35 = v34;
  (*(v57 + 8))(v32, v59);
  v36._countAndFlagsBits = v33;
  v36._object = v35;
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v36);

  v37._countAndFlagsBits = 8236;
  v37._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v37);
  v38._countAndFlagsBits = LocationOfInterest.searchDisplayAddress.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v38);

  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v39);
  LocalizedStringKey.init(stringInterpolation:)();
  v40 = Text.init(_:tableName:bundle:comment:)();
  v42 = v41;
  v44 = v43;
  v67 = v63;
  v68 = v64;
  v69 = v28;
  v70 = v29;
  swift_getOpaqueTypeConformance2();
  v45 = v60;
  v46 = v56;
  v47 = v65;
  View.accessibilityLabel(_:)();
  sub_10010CD64(v40, v42, v44 & 1);

  (*(v58 + 8))(v47, v46);
  v48 = LocationOfInterest.searchDisplayAddress.getter();
  v49 = v61;
  *v61 = v48;
  *(v49 + 8) = v50;
  type metadata accessor for AutomationCellInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v51 = v45 + *(sub_10022C350(&qword_100CBF9C0) + 36);
  v52 = type metadata accessor for AutomationInfoProperty();
  sub_1004CF238(v49, v51 + *(v52 + 24), type metadata accessor for AutomationInfo);
  sub_10033CCBC(v49, type metadata accessor for AutomationInfo);
  *v51 = 0;
  *(v51 + 8) = 0xE000000000000000;
  result = swift_getKeyPath();
  *(v51 + 16) = result;
  *(v51 + 24) = 0;
  return result;
}

uint64_t sub_1004CEB5C(char *a1)
{
  v2 = *(a1 + 3);
  v3 = *(a1 + 4);
  sub_1000161C0(a1, v2);
  v4 = type metadata accessor for SuggestedSearchResultRowView();
  return (*(v3 + 16))(&a1[*(v4 + 20)], v2, v3);
}

uint64_t sub_1004CEBC0@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0x4008000000000000;
  *(a1 + 16) = 0;
  v2 = sub_10022C350(&qword_100CBF9C8);
  return sub_1004CEC18(a1 + *(v2 + 44));
}

uint64_t sub_1004CEC18@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_10022C350(&qword_100CBF9D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v23 - v5;
  *v6 = static VerticalAlignment.center.getter();
  *(v6 + 1) = 0x4008000000000000;
  v6[16] = 0;
  v7 = sub_10022C350(&qword_100CBF9D8);
  sub_1004CEE80(&v6[*(v7 + 44)]);
  type metadata accessor for SuggestedSearchResultRowView();
  v27 = LocationOfInterest.searchDisplayAddress.getter();
  v28 = v8;
  sub_10002D5A4();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  v23 = v14;
  KeyPath = swift_getKeyPath();
  v16 = static Color.secondary.getter();
  v17 = swift_getKeyPath();
  LOBYTE(v27) = v13 & 1;
  LOBYTE(__src[0]) = 0;
  v24 = v3;
  sub_100035AD0(v6, v3, &qword_100CBF9D0);
  v18 = v3;
  v19 = v25;
  sub_100035AD0(v18, v25, &qword_100CBF9D0);
  v20 = *(sub_10022C350(&qword_100CBF9E0) + 48);
  __src[0] = v9;
  __src[1] = v11;
  LOBYTE(__src[2]) = v13 & 1;
  v21 = v23;
  __src[3] = v23;
  __src[4] = KeyPath;
  __src[5] = 1;
  LOBYTE(__src[6]) = 0;
  __src[7] = v17;
  __src[8] = v16;
  memcpy((v19 + v20), __src, 0x48uLL);
  sub_100035AD0(__src, &v27, &qword_100CBF9E8);
  sub_1000180EC(v6, &qword_100CBF9D0);
  v27 = v9;
  v28 = v11;
  v29 = v13 & 1;
  v30 = v21;
  v31 = KeyPath;
  v32 = 1;
  v33 = 0;
  v34 = v17;
  v35 = v16;
  sub_1000180EC(&v27, &qword_100CBF9E8);
  return sub_1000180EC(v24, &qword_100CBF9D0);
}

uint64_t sub_1004CEE80@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = type metadata accessor for LocationOfInterestType();
  v1 = *(v28 - 8);
  __chkstk_darwin(v28);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CB5170);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (&v28 - v9);
  type metadata accessor for SuggestedSearchResultRowView();
  LocationOfInterest.imageName.getter();
  v11 = Image.init(systemName:)();
  v12 = (v10 + *(v5 + 44));
  v13 = *(sub_10022C350(&qword_100CAF750) + 28);
  v14 = enum case for Image.Scale.small(_:);
  v15 = type metadata accessor for Image.Scale();
  (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
  *v12 = swift_getKeyPath();
  *v10 = v11;
  LocationOfInterest.type.getter();
  v16 = LocationOfInterestType.title.getter();
  v18 = v17;
  (*(v1 + 8))(v3, v28);
  v30 = v16;
  v31 = v18;
  sub_10002D5A4();
  v19 = Text.init<A>(_:)();
  v21 = v20;
  LOBYTE(v18) = v22;
  v24 = v23;
  sub_100035AD0(v10, v7, &qword_100CB5170);
  v25 = v29;
  sub_100035AD0(v7, v29, &qword_100CB5170);
  v26 = v25 + *(sub_10022C350(&qword_100CBF9F0) + 48);
  *v26 = v19;
  *(v26 + 8) = v21;
  *(v26 + 16) = v18 & 1;
  *(v26 + 24) = v24;
  sub_10010CD54(v19, v21, v18 & 1);

  sub_1000180EC(v10, &qword_100CB5170);
  sub_10010CD64(v19, v21, v18 & 1);

  return sub_1000180EC(v7, &qword_100CB5170);
}

uint64_t sub_1004CF16C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuggestedSearchResultRowView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004CF1D0()
{
  v1 = *(type metadata accessor for SuggestedSearchResultRowView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1004CEB5C(v2);
}

uint64_t sub_1004CF238(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1004CF298()
{
  result = qword_100CBF9F8;
  if (!qword_100CBF9F8)
  {
    sub_10022E824(&qword_100CBF9C0);
    sub_1004CF354();
    sub_10033CFA0(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBF9F8);
  }

  return result;
}

unint64_t sub_1004CF354()
{
  result = qword_100CBFA00;
  if (!qword_100CBFA00)
  {
    sub_10022E824(&qword_100CBFA08);
    sub_10022E824(&qword_100CBF998);
    type metadata accessor for SearchResultButtonStyle();
    sub_100006F64(&qword_100CBF9B8, &qword_100CBF998);
    sub_10033CFA0(&qword_100CADEB8, type metadata accessor for SearchResultButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10033CFA0(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFA00);
  }

  return result;
}

unint64_t sub_1004CF4F4()
{
  result = qword_100CBFA10;
  if (!qword_100CBFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFA10);
  }

  return result;
}

uint64_t sub_1004CF548(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  sub_1004CF8E0();
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1004CF5F8()
{
  String.hash(into:)();
  NSObject.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1004CF650()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1004CF6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 == a4 && a2 == a5;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    sub_1009EA9FC();
  }
}

void sub_1004CF71C()
{
  String.hash(into:)();

  sub_1005FF8C8();
}

Swift::Int sub_1004CF75C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_1005FF8C8();
  return Hasher._finalize()();
}

Swift::Int sub_1004CF7D0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  NSObject.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1004CF880()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_1005FF8C8();
  return Hasher._finalize()();
}

unint64_t sub_1004CF8E0()
{
  result = qword_100CA52E0;
  if (!qword_100CA52E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100CA52E0);
  }

  return result;
}

unint64_t sub_1004CF938()
{
  result = qword_100CBFA18;
  if (!qword_100CBFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFA18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PickerDetailCondition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1004CFAB0()
{
  result = type metadata accessor for DetailCondition();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1004CFB38@<X0>(uint64_t a1@<X8>)
{
  sub_100988DA0();
  sub_1004DCC70(v1, v14);
  v3 = swift_allocObject();
  v4 = v14[1];
  *(v3 + 1) = v14[0];
  *(v3 + 2) = v4;
  v5 = v14[3];
  *(v3 + 3) = v14[2];
  *(v3 + 4) = v5;
  v6 = sub_10022C350(&qword_100CBFB18);
  v7 = (a1 + *(v6 + 56));
  sub_10022C350(&qword_100CBFB20);
  v8 = swift_allocObject();
  v9 = *(*v8 + 96);
  v10 = type metadata accessor for ConditionDetailViewModel(0);
  sub_10001B350(v8 + v9, 1, 1, v10);
  ObservationRegistrar.init()();
  result = State.init(wrappedValue:)();
  v12 = *(&v14[0] + 1);
  *v7 = *&v14[0];
  v7[1] = v12;
  v13 = (a1 + *(v6 + 52));
  *v13 = sub_1004DCCA8;
  v13[1] = v3;
  return result;
}

uint64_t sub_1004CFC84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a2;
  v32 = a3;
  v31 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v31);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for ConditionDetailInnerView(0);
  __chkstk_darwin(v9);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for ConditionDetailViewModel.Model(0);
  __chkstk_darwin(v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10022C350(&qword_100CBFB28);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  v18 = type metadata accessor for ConditionDetailViewModel(0);
  __chkstk_darwin(v18 - 8);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DCCD0(a1, v20, type metadata accessor for ConditionDetailViewModel);
  if (sub_100024D10(v20, 1, v12) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_1004DCC0C(&qword_100CBFB30, type metadata accessor for ConditionDetailInnerView);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_1004DCF48(v20, v14, type metadata accessor for ConditionDetailViewModel.Model);
    sub_1004DCCD0(v14, v11 + v9[7], type metadata accessor for ConditionDetailViewModel.Model);
    v22 = v30;
    sub_10042F370(v30 + 16, v11);
    v23 = qword_100CA20B8;
    v30 = *(v22 + 56);

    if (v23 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = sub_100472730();
    swift_endAccess();
    v11[5] = v24;
    v25 = type metadata accessor for Date();
    sub_10001B350(v8, 1, 1, v25);
    sub_1000302D8(v8, v5, &unk_100CB2CF0);
    State.init(wrappedValue:)();
    sub_100018144(v8, &unk_100CB2CF0);
    v26 = v11 + v9[9];
    v33 = 0;
    State.init(wrappedValue:)();
    v27 = v35;
    *v26 = v34;
    *(v26 + 1) = v27;
    v28 = v9[10];
    sub_100046E64();
    *(v11 + v28) = OS_os_log.init(subsystem:category:)();
    *(v11 + 6) = v30;
    sub_1004DCCD0(v11, v17, type metadata accessor for ConditionDetailInnerView);
    swift_storeEnumTagMultiPayload();
    sub_1004DCC0C(&qword_100CBFB30, type metadata accessor for ConditionDetailInnerView);
    _ConditionalContent<>.init(storage:)();
    sub_1004DCD2C(v11, type metadata accessor for ConditionDetailInnerView);
    return sub_1004DCD2C(v14, type metadata accessor for ConditionDetailViewModel.Model);
  }
}

uint64_t sub_1004D0194@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ConditionDetailViewModel.Model(0);

  return sub_10001B350(a1, 1, 1, v2);
}

uint64_t sub_1004D01E0@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v2 = type metadata accessor for ConditionDetailInnerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1004DCCD0(v1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConditionDetailInnerView);
  type metadata accessor for MainActor();
  v5 = static MainActor.shared.getter();
  v6 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = &protocol witness table for MainActor;
  sub_1004DCF48(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for ConditionDetailInnerView);
  sub_1004DCCD0(v1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConditionDetailInnerView);
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  sub_1004DCF48(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v6, type metadata accessor for ConditionDetailInnerView);
  type metadata accessor for DetailCondition();
  return Binding.init(get:set:)();
}

uint64_t sub_1004D03B0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for ConditionDetailInnerView(0) + 28);
  v4 = *(type metadata accessor for ConditionDetailViewModel.Model(0) + 36);
  v5 = type metadata accessor for DetailCondition();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3 + v4, v5);
}

uint64_t sub_1004D0440(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static Solarium.isEnabled.getter();
  if (v6)
  {
    sub_1000161C0(a4, a4[3]);
    return sub_1003175A0(a1);
  }

  else
  {
    __chkstk_darwin(v6);
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }
}

uint64_t sub_1004D0544@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v74 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v74);
  v72 = v66 - v2;
  v3 = type metadata accessor for ConditionDetailInnerView(0);
  v76 = *(v3 - 8);
  v80 = *(v76 + 8);
  v4 = v3 - 8;
  v70 = v3 - 8;
  __chkstk_darwin(v3 - 8);
  v69 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DetailCondition();
  v6 = *(v78 - 8);
  __chkstk_darwin(v78);
  v8 = v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ConditionDetailViewModel.Model(0) - 8;
  __chkstk_darwin(v9);
  v11 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DetailViewVisibilityTrackerModel();
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CBFBF0);
  __chkstk_darwin(v16);
  v18 = (v66 - v17);
  v81 = sub_10022C350(&qword_100CBFBF8);
  __chkstk_darwin(v81);
  v67 = v66 - v19;
  v71 = sub_10022C350(&qword_100CBFC00);
  v73 = *(v71 - 8);
  __chkstk_darwin(v71);
  v82 = v66 - v20;
  v21 = (v1 + *(v4 + 36));
  sub_1004DCCD0(v21, v11, type metadata accessor for ConditionDetailViewModel.Model);
  (*(v6 + 16))(v8, &v11[*(v9 + 44)], v78);
  sub_100863584(v8, v15);
  v22 = *(v9 + 56);
  v68 = v9;
  v23 = *(v13 + 28);
  v24 = type metadata accessor for Location();
  (*(*(v24 - 8) + 16))(&v15[v23], &v11[v22], v24);
  sub_1004DCD2C(v11, type metadata accessor for ConditionDetailViewModel.Model);
  v25 = *(v13 + 32);
  v26 = enum case for DetailViewOrigin.component(_:);
  v27 = type metadata accessor for DetailViewOrigin();
  (*(*(v27 - 8) + 104))(&v15[v25], v26, v27);
  v83 = v1;
  v28 = v1[3];
  v29 = v1[4];
  v30 = sub_1000161C0(v1, v28);
  v85 = v28;
  v86 = *(v29 + 8);
  v31 = sub_100042FB0(v84);
  (*(*(v28 - 8) + 16))(v31, v30, v28);
  v32 = v21;
  v79 = v21;
  v33 = *v21;
  v34 = v32[1];
  v66[2] = *(v9 + 44);

  v35 = DetailCondition.filledSymbolName.getter();
  v37 = v36;
  LOBYTE(v30) = DetailCondition.usesCustomSymbol.getter();
  *v18 = swift_getKeyPath();
  sub_10022C350(&qword_100CA54B0);
  swift_storeEnumTagMultiPayload();
  sub_1004DCCD0(v15, v18 + v16[9], type metadata accessor for DetailViewVisibilityTrackerModel);
  sub_10042F370(v84, v18 + v16[10]);
  v38 = (v18 + v16[11]);
  *v38 = v33;
  v38[1] = v34;
  v39 = (v18 + v16[12]);
  *v39 = v35;
  v39[1] = v37;
  *(v18 + v16[13]) = v30 & 1;
  v40 = (v18 + v16[14]);
  *v40 = 0;
  v40[1] = 0;
  *(v18 + v16[15]) = 1;
  v41 = v83;
  sub_1004D0F8C(v83, v18 + v16[16]);
  sub_1004DCD2C(v15, type metadata accessor for DetailViewVisibilityTrackerModel);
  sub_100006F14(v84);
  v77 = type metadata accessor for ConditionDetailInnerView;
  v42 = v69;
  sub_1004DCCD0(v41, v69, type metadata accessor for ConditionDetailInnerView);
  v43 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v66[1] = *(v76 + 80);
  v44 = swift_allocObject();
  v76 = type metadata accessor for ConditionDetailInnerView;
  sub_1004DCF48(v42, v44 + v43, type metadata accessor for ConditionDetailInnerView);
  sub_100006F64(&qword_100CBFC08, &qword_100CBFBF0);
  sub_1004DCC0C(&qword_100CAECC0, &type metadata accessor for DetailCondition);
  v45 = v67;
  View.onChange<A>(of:initial:_:)();

  sub_100018144(v18, &qword_100CBFBF0);
  v46 = v83;
  v47 = v42;
  v48 = v77;
  sub_1004DCCD0(v83, v42, v77);
  v49 = swift_allocObject();
  v50 = v42;
  v51 = v76;
  sub_1004DCF48(v50, v49 + v43, v76);
  v52 = (v45 + *(sub_10022C350(&qword_100CBFC10) + 36));
  *v52 = sub_1004D27D0;
  v52[1] = 0;
  v52[2] = sub_1004DD220;
  v52[3] = v49;
  sub_1004DCCD0(v46, v47, v48);
  v66[0] = v43;
  v53 = swift_allocObject();
  sub_1004DCF48(v47, v53 + v43, v51);
  v54 = (v45 + *(v81 + 36));
  *v54 = sub_1004DD27C;
  v54[1] = v53;
  v54[2] = 0;
  v54[3] = 0;
  sub_10022C350(&qword_100CBB758);
  v55 = v83;
  v56 = v72;
  State.wrappedValue.getter();
  sub_1004DCCD0(v55, v47, v48);
  v57 = v66[0];
  v58 = swift_allocObject();
  sub_1004DCF48(v47, v58 + v57, v51);
  v59 = sub_1004DD314();
  v60 = sub_1004DD518();
  v61 = v74;
  View.onChange<A>(of:initial:_:)();

  sub_100018144(v56, &unk_100CB2CF0);
  sub_100018144(v45, &qword_100CBFBF8);
  sub_1004DCCD0(v83, v47, v77);
  v62 = swift_allocObject();
  sub_1004DCF48(v47, v62 + v57, v76);
  type metadata accessor for Date();
  v84[0] = v81;
  v84[1] = v61;
  v84[2] = v59;
  v85 = v60;
  swift_getOpaqueTypeConformance2();
  sub_1004DCC0C(&qword_100CA39D0, &type metadata accessor for Date);
  v63 = v71;
  v64 = v82;
  View.onChange<A>(of:initial:_:)();

  return (*(v73 + 8))(v64, v63);
}

uint64_t sub_1004D0F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_10022C350(&qword_100CBFC40);
  __chkstk_darwin(v3);
  v5 = (&v39 - v4);
  v54 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v54);
  v7 = (&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for ScrollIndicatorVisibility();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin(v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CBFC48);
  v48 = *(v11 - 8);
  v49 = v11;
  __chkstk_darwin(v11);
  v13 = &v39 - v12;
  v14 = sub_10022C350(&qword_100CBFC50);
  v46 = *(v14 - 8);
  v47 = v14;
  __chkstk_darwin(v14);
  v16 = &v39 - v15;
  v45 = sub_10022C350(&qword_100CBFC58);
  __chkstk_darwin(v45);
  v52 = &v39 - v17;
  v18 = sub_10022C350(&qword_100CBFC60);
  __chkstk_darwin(v18);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v53 = &v39 - v22;
  v44 = type metadata accessor for ConditionDetailInnerView(0);
  v23 = (a1 + *(v44 + 36));
  v24 = *v23;
  v25 = v23[1];
  v57 = v24;
  v58 = v25;
  sub_10022C350(&qword_100CAD708);
  State.wrappedValue.getter();
  if (v56 <= 0.0)
  {
    *v5 = static Color.clear.getter();
    swift_storeEnumTagMultiPayload();
    sub_1004DD788();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v40 = v18;
    v42 = v3;
    v43 = v5;
    v26 = static Axis.Set.vertical.getter();
    __chkstk_darwin(v26);
    v41 = a1;
    *(&v39 - 2) = a1;
    sub_10022C350(&qword_100CBFC80);
    sub_1004DD948();
    ScrollView.init(_:showsIndicators:content:)();
    static ScrollIndicatorVisibility.never.getter();
    sub_10022C350(&qword_100CB59A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v28 = static Axis.Set.vertical.getter();
    *(inited + 32) = v28;
    v29 = static Axis.Set.horizontal.getter();
    *(inited + 33) = v29;
    Axis.Set.init(rawValue:)();
    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v28)
    {
      Axis.Set.init(rawValue:)();
    }

    Axis.Set.init(rawValue:)();
    if (Axis.Set.init(rawValue:)() != v29)
    {
      Axis.Set.init(rawValue:)();
    }

    v30 = v40;
    sub_100006F64(&qword_100CBFC78, &qword_100CBFC48);
    v31 = v49;
    View.scrollIndicators(_:axes:)();
    (*(v50 + 8))(v10, v51);
    (*(v48 + 8))(v13, v31);
    v32 = v52;
    (*(v46 + 32))(v52, v16, v47);
    v33 = (v32 + *(v45 + 36));
    *v33 = sub_1004D2764;
    v33[1] = 0;
    type metadata accessor for ConditionDetailViewModel.Model(0);
    *v7 = DetailCondition.rawValue.getter();
    v7[1] = v34;
    type metadata accessor for AutomationViewInfo(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v35 = &v20[*(v30 + 36)];
    v36 = type metadata accessor for AutomationInfoProperty();
    sub_1004DCCD0(v7, &v35[*(v36 + 24)], type metadata accessor for AutomationInfo);
    sub_1004DCD2C(v7, type metadata accessor for AutomationInfo);
    *v35 = 0;
    *(v35 + 1) = 0xE000000000000000;
    *(v35 + 2) = swift_getKeyPath();
    v35[24] = 0;
    sub_10011C0F0(v32, v20, &qword_100CBFC58);
    v37 = v53;
    sub_10011C0F0(v20, v53, &qword_100CBFC60);
    sub_1000302D8(v37, v43, &qword_100CBFC60);
    swift_storeEnumTagMultiPayload();
    sub_1004DD788();
    _ConditionalContent<>.init(storage:)();
    return sub_100018144(v37, &qword_100CBFC60);
  }
}

uint64_t sub_1004D16CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_10022C350(&qword_100CBFCA0);
  sub_1004D17E8(a1, a2 + *(v4 + 44));
  v5 = static Edge.Set.bottom.getter();
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_1004BA570();
  swift_endAccess();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = sub_10022C350(&qword_100CBFC80);
  v15 = a2 + *(result + 36);
  *v15 = v5;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_1004D17E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v3 = sub_10022C350(&qword_100CBFCA8);
  v99 = *(v3 - 8);
  v100 = v3;
  __chkstk_darwin(v3);
  v108 = &v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v107 = &v89 - v6;
  v96 = sub_10022C350(&qword_100CBAB80);
  __chkstk_darwin(v96);
  v90 = &v89 - v7;
  v8 = sub_10022C350(&qword_100CBFCB0);
  __chkstk_darwin(v8 - 8);
  v106 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v105 = &v89 - v11;
  v12 = sub_10022C350(&unk_100CE0EB0);
  v109 = *(v12 - 8);
  __chkstk_darwin(v12);
  v101 = &v89 - v13;
  v95 = sub_10022C350(&qword_100CBFCB8);
  __chkstk_darwin(v95);
  v15 = (&v89 - v14);
  v104 = sub_10022C350(&qword_100CBFCC0);
  v97 = *(v104 - 8);
  __chkstk_darwin(v104);
  v103 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v110 = &v89 - v18;
  v19 = type metadata accessor for ConditionDetailInnerView(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_1004DCCD0(a1, &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConditionDetailInnerView);
  v22 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v23 = swift_allocObject();
  sub_1004DCF48(&v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for ConditionDetailInnerView);
  v24 = sub_10022C350(&qword_100CB22C8);
  v111[10] = sub_10071E95C;
  v111[11] = 0;
  LOBYTE(v111[12]) = 0;
  v111[0] = v24;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  v102 = v12;
  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, v112, &unk_100CAF270);
  if (*&v112[24])
  {
    sub_100013188(v112, &v111[3]);
    v111[1] = sub_1004DDA00;
    v111[2] = v23;
    v26 = Dictionary.init(dictionaryLiteral:)();
    v111[8] = _swiftEmptyArrayStorage;
    v111[9] = v26;
    memcpy(v112, v111, sizeof(v112));
    v27 = a1 + *(v19 + 28);
    v93 = type metadata accessor for ConditionDetailViewModel.Model(0);
    v28 = v93[7];
    v29 = *(v27 + v93[8]);
    v30 = *(v27 + 16);
    v91 = v27;
    v31 = type metadata accessor for PagingChartsView(0);
    sub_1000302D8(v27 + v28, v15 + v31[6], &qword_100CB0BA8);
    sub_10042F370(a1, v15 + v31[7]);
    v32 = *(a1 + 40);
    v33 = (a1 + *(v19 + 36));
    v35 = v33[1];
    v111[0] = *v33;
    v34 = v111[0];
    v111[1] = v35;

    sub_10022C350(&qword_100CAD708);
    State.wrappedValue.getter();
    v36 = v113;
    sub_1004D01E0(v15 + v31[10]);
    sub_10022C350(&qword_100CBB758);
    State.projectedValue.getter();
    *v15 = v29;
    v15[1] = v30;
    *(v15 + v31[8]) = v32;
    *(v15 + v31[9]) = v36;
    v37 = v15 + v31[12];
    LOBYTE(v113) = 0;
    State.init(wrappedValue:)();
    v38 = v111[1];
    *v37 = v111[0];
    *(v37 + 1) = v38;
    v39 = v15 + v31[13];
    LOBYTE(v113) = 0;
    State.init(wrappedValue:)();
    v40 = v111[1];
    *v39 = v111[0];
    *(v39 + 1) = v40;
    v111[0] = v34;
    v111[1] = v35;
    State.wrappedValue.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v41 = (v15 + *(v95 + 36));
    v42 = v114;
    *v41 = v113;
    v41[1] = v42;
    v41[2] = v115;
    Solarium.init()();
    v43 = v101;
    v44 = static ViewInputPredicate.! prefix(_:)();
    v92 = &v89;
    __chkstk_darwin(v44);
    v94 = a1;
    sub_10022C350(&qword_100CBFCC8);
    sub_1004DDA90();
    v111[0] = &type metadata for Solarium;
    v111[1] = &protocol witness table for Solarium;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_100006F64(&qword_100CBFCE0, &qword_100CBFCC8);
    v46 = v91;
    v47 = v102;
    v95 = OpaqueTypeConformance2;
    View.staticIf<A, B>(_:then:)();
    v48 = *(v109 + 8);
    v109 += 8;
    v92 = v48;
    (v48)(v43, v47);
    sub_100018144(v15, &qword_100CBFCB8);
    v49 = v93;
    v50 = (v46 + v93[11]);
    v51 = *v50;
    if (*(*v50 + 16))
    {
      v53 = v50[1];
      v52 = v50[2];
      v54 = *(v50 + 24);
      type metadata accessor for ConditionDetailLegendView(0);

      v55 = v90;
      Text.Measurements.init()();
      *v55 = v51;
      *(v55 + 8) = v53;
      *(v55 + 16) = v52;
      *(v55 + 24) = v54;
      if (qword_100CA2198 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_1004B5FD8();
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      swift_endAccess();
      v64 = static Edge.Set.all.getter();
      v65 = v96;
      v66 = v55 + *(v96 + 36);
      *v66 = v64;
      *(v66 + 8) = v57;
      *(v66 + 16) = v59;
      *(v66 + 24) = v61;
      *(v66 + 32) = v63;
      *(v66 + 40) = 0;
      v67 = v105;
      sub_10011C0F0(v55, v105, &qword_100CBAB80);
      v68 = 0;
      v69 = v94;
    }

    else
    {
      v67 = v105;
      v69 = v94;
      v65 = v96;
      v68 = 1;
    }

    sub_10001B350(v67, v68, 1, v65);
    v70 = *(v46 + v49[10]);
    sub_10042F370(v69, &v111[1]);
    v71 = *(v69 + 48);
    v111[0] = v70;
    v111[6] = v71;

    Solarium.init()();
    v72 = v101;
    v73 = static ViewInputPredicate.! prefix(_:)();
    __chkstk_darwin(v73);
    sub_10022C350(&qword_100CBFCE8);
    sub_1004DDB54();
    sub_100006F64(&qword_100CBFCF8, &qword_100CBFCE8);
    v74 = v107;
    v75 = v102;
    View.staticIf<A, B>(_:then:)();
    (v92)(v72, v75);
    sub_1004DDBA8(v111);
    sub_1000302D8(v112, v111, &qword_100CBFD00);
    v76 = v97;
    v109 = *(v97 + 16);
    v77 = v103;
    (v109)(v103, v110, v104);
    v78 = v67;
    v79 = v106;
    sub_1000302D8(v78, v106, &qword_100CBFCB0);
    v81 = v99;
    v80 = v100;
    v102 = *(v99 + 16);
    v102(v108, v74, v100);
    v82 = v98;
    sub_1000302D8(v111, v98, &qword_100CBFD00);
    v83 = sub_10022C350(&qword_100CBFD08);
    v84 = v77;
    v85 = v104;
    (v109)(v82 + v83[12], v84, v104);
    sub_1000302D8(v79, v82 + v83[16], &qword_100CBFCB0);
    v86 = v108;
    v102(v82 + v83[20], v108, v80);
    v87 = *(v81 + 8);
    v87(v107, v80);
    sub_100018144(v105, &qword_100CBFCB0);
    v88 = *(v76 + 8);
    v88(v110, v85);
    sub_100018144(v112, &qword_100CBFD00);
    v87(v86, v80);
    sub_100018144(v106, &qword_100CBFCB0);
    v88(v103, v85);
    return sub_100018144(v111, &qword_100CBFD00);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D24AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for ConditionDetailInnerView(0);
  sub_10022C350(&qword_100CAD708);
  State.wrappedValue.getter();
  return sub_100504230(a2, v4);
}

uint64_t sub_1004D253C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _StringGuts.grow(_:)(26);

  type metadata accessor for ConditionDetailInnerView(0);
  type metadata accessor for ConditionDetailViewModel.Model(0);
  v4._countAndFlagsBits = DetailCondition.title.getter();
  String.append(_:)(v4);

  sub_1000302D8(a1, a2, &qword_100CBFCB8);
  result = sub_10022C350(&qword_100CBFCC8);
  v6 = (a2 + *(result + 52));
  *v6 = 0xD000000000000018;
  v6[1] = 0x8000000100ACFEC0;
  return result;
}

uint64_t sub_1004D2624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _StringGuts.grow(_:)(31);

  type metadata accessor for ConditionDetailInnerView(0);
  type metadata accessor for ConditionDetailViewModel.Model(0);
  v4._countAndFlagsBits = DetailCondition.title.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 45;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  type metadata accessor for Date();
  sub_1004DCC0C(&qword_100CA5720, &type metadata accessor for Date);
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  result = sub_1004DDBD8(a1, a2);
  *(a2 + 56) = 0xD00000000000001ALL;
  *(a2 + 64) = 0x8000000100ACFEA0;
  return result;
}

uint64_t sub_1004D278C(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  v2 = type metadata accessor for ConditionDetailInnerView(0);
  return sub_1003177A4(a1 + *(v2 + 28));
}

uint64_t sub_1004D27D0@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for LocalCoordinateSpace();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static CoordinateSpaceProtocol<>.local.getter();
  GeometryProxy.frame<A>(in:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

uint64_t sub_1004D28DC(CGFloat *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v8.origin.x = 0.0;
  v8.origin.y = 0.0;
  v8.size.width = 0.0;
  v8.size.height = 0.0;
  v6.origin.x = *a1;
  v6.origin.y = v2;
  v6.size.width = v3;
  v6.size.height = v4;
  result = CGRectEqualToRect(v6, v8);
  if ((result & 1) == 0)
  {
    v7.origin.x = v1;
    v7.origin.y = v2;
    v7.size.width = v3;
    v7.size.height = v4;
    CGRectGetWidth(v7);
    type metadata accessor for ConditionDetailInnerView(0);
    sub_10022C350(&qword_100CAD708);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1004D29A0(uint64_t a1)
{
  v2 = type metadata accessor for ConditionDetailInnerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_10022C350(&qword_100CA3538);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  sub_1004D2B60();
  v8 = type metadata accessor for TaskPriority();
  sub_10001B350(v7, 1, 1, v8);
  sub_1004DCCD0(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConditionDetailInnerView);
  type metadata accessor for MainActor();
  v9 = static MainActor.shared.getter();
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = &protocol witness table for MainActor;
  sub_1004DCF48(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ConditionDetailInnerView);
  sub_1006C0138();
}

uint64_t sub_1004D2B60()
{
  Transaction.animation.setter();
  Transaction.disablesAnimations.setter();
  withTransaction<A>(_:_:)();
}

uint64_t sub_1004D2BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for OSSignpostID();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004D2CE0, v7, v6);
}

uint64_t sub_1004D2CE0()
{
  v1 = *(v0 + 16);

  static os_signpost_type_t.event.getter();
  v2 = *(v1 + *(type metadata accessor for ConditionDetailInnerView(0) + 40));
  OSSignpostID.init(log:)();
  os_signpost(_:dso:log:name:signpostID:)();
  v3 = sub_100003940();
  v4(v3);
  sub_1000161C0(v1, v1[3]);
  sub_1003179D4();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1004D2DD8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000302D8(a2, v7, &unk_100CB2CF0);
  if (sub_100024D10(v7, 1, v8) == 1)
  {
    return sub_100018144(v7, &unk_100CB2CF0);
  }

  (*(v9 + 32))(v11, v7, v8);
  type metadata accessor for ConditionDetailInnerView(0);
  type metadata accessor for ConditionDetailViewModel.Model(0);
  sub_1004DCC0C(&qword_100CA39D0, &type metadata accessor for Date);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    sub_1000161C0(a3, a3[3]);
    sub_100317584(v11);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1004D2FE8(uint64_t a1, char *a2, char *a3)
{
  v5 = type metadata accessor for Date();
  v32 = *(v5 - 8);
  __chkstk_darwin(v5);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(qword_100CA4F80);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v11 - 8);
  v29 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v28 - v14;
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  type metadata accessor for ConditionDetailInnerView(0);
  sub_10022C350(&qword_100CBB758);
  v30 = a3;
  v19 = v32;
  State.wrappedValue.getter();
  v20 = *(v19 + 16);
  v31 = a2;
  v20(v15, a2, v5);
  sub_10001B350(v15, 0, 1, v5);
  v21 = *(v8 + 56);
  sub_1000302D8(v18, v10, &unk_100CB2CF0);
  sub_1000302D8(v15, &v10[v21], &unk_100CB2CF0);
  if (sub_100024D10(v10, 1, v5) == 1)
  {
    sub_100018144(v15, &unk_100CB2CF0);
    sub_100018144(v18, &unk_100CB2CF0);
    if (sub_100024D10(&v10[v21], 1, v5) == 1)
    {
      return sub_100018144(v10, &unk_100CB2CF0);
    }

    goto LABEL_6;
  }

  v23 = v29;
  sub_1000302D8(v10, v29, &unk_100CB2CF0);
  if (sub_100024D10(&v10[v21], 1, v5) == 1)
  {
    sub_100018144(v15, &unk_100CB2CF0);
    sub_100018144(v18, &unk_100CB2CF0);
    (*(v19 + 8))(v23, v5);
LABEL_6:
    result = sub_100018144(v10, qword_100CA4F80);
LABEL_7:
    __chkstk_darwin(result);
    v24 = v31;
    *(&v28 - 2) = v30;
    *(&v28 - 1) = v24;
    static Animation.default.getter();
    withAnimation<A>(_:_:)();
  }

  v25 = v28;
  (*(v19 + 32))(v28, &v10[v21], v5);
  sub_1004DCC0C(&qword_100CA39D0, &type metadata accessor for Date);
  v26 = dispatch thunk of static Equatable.== infix(_:_:)();
  v27 = *(v19 + 8);
  v27(v25, v5);
  sub_100018144(v15, &unk_100CB2CF0);
  sub_100018144(v18, &unk_100CB2CF0);
  v27(v23, v5);
  result = sub_100018144(v10, &unk_100CB2CF0);
  if ((v26 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1004D348C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 16))(v8, a2, v9);
  sub_10001B350(v8, 0, 1, v9);
  type metadata accessor for ConditionDetailInnerView(0);
  sub_1000302D8(v8, v5, &unk_100CB2CF0);
  sub_10022C350(&qword_100CBB758);
  State.wrappedValue.setter();
  return sub_100018144(v8, &unk_100CB2CF0);
}

uint64_t sub_1004D35F4(uint64_t a1)
{
  v2 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  v8 = a1 + *(type metadata accessor for ConditionDetailInnerView(0) + 28);
  v9 = *(type metadata accessor for ConditionDetailViewModel.Model(0) + 24);
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 16))(v7, v8 + v9, v10);
  sub_10001B350(v7, 0, 1, v10);
  sub_1000302D8(v7, v4, &unk_100CB2CF0);
  sub_10022C350(&qword_100CBB758);
  State.wrappedValue.setter();
  return sub_100018144(v7, &unk_100CB2CF0);
}

uint64_t sub_1004D377C()
{
  v6 = *v0;
  sub_1004DDBD8(v0, v4);
  v1 = swift_allocObject();
  v2 = v4[1];
  *(v1 + 16) = v4[0];
  *(v1 + 32) = v2;
  *(v1 + 48) = v4[2];
  *(v1 + 64) = v5;

  sub_10022C350(&qword_100CBFEC0);
  sub_10022C350(&qword_100CBFEC8);
  sub_100006F64(&qword_100CBFED0, &qword_100CBFEC0);
  sub_100006F64(&qword_100CBFED8, &qword_100CBFEC8);
  sub_1004DCC0C(&qword_100CBFEE0, type metadata accessor for ConditionDetailPlatterViewModel);
  return ForEach<>.init(_:content:)();
}

uint64_t sub_1004D3914@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + *(type metadata accessor for ConditionDetailPlatterViewModel(0) + 40));
  sub_1004DCCD0(a1, a3, type metadata accessor for ConditionDetailPlatterViewModel);
  v7 = a2[4];
  v8 = a2[5];
  v9 = sub_1000161C0(a2 + 1, v7);
  v10 = sub_10022C350(&qword_100CBFEC8);
  v11 = (a3 + v10[10]);
  v11[3] = v7;
  v11[4] = *(v8 + 8);
  v12 = sub_100042FB0(v11);
  (*(*(v7 - 8) + 16))(v12, v9, v7);
  sub_1004DDBD8(a2, v18);
  v13 = swift_allocObject();
  v14 = v18[1];
  *(v13 + 16) = v18[0];
  *(v13 + 32) = v14;
  *(v13 + 48) = v18[2];
  *(v13 + 64) = v19;
  *(a3 + v10[9]) = v6;
  v15 = (a3 + v10[11]);
  *v15 = sub_1004DE930;
  v15[1] = v13;
  v16 = v10[12];
  if (qword_100CA21A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(a3 + v16) = sub_1004BA278();
  return swift_endAccess();
}

uint64_t sub_1004D3AE8@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v74 = sub_10022C350(&unk_100CE0EB0);
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v66 - v2;
  v70 = sub_10022C350(&unk_100CE1680);
  __chkstk_darwin(v70);
  v95 = &v66 - v3;
  v4 = sub_10022C350(&qword_100CB0BA8);
  __chkstk_darwin(v4 - 8);
  v99 = (&v66 - v5);
  v6 = type metadata accessor for ScrollIndicatorVisibility();
  v97 = *(v6 - 8);
  v98 = v6;
  __chkstk_darwin(v6);
  v96 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_10022C350(&qword_100CBFD18);
  __chkstk_darwin(v89);
  v85 = &v66 - v8;
  v81 = type metadata accessor for PagingScrollTargetBehavior();
  v82 = *(v81 - 8);
  __chkstk_darwin(v81);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_10022C350(&qword_100CBFDF0);
  v79 = *(v77 - 8);
  __chkstk_darwin(v77);
  v12 = &v66 - v11;
  v83 = sub_10022C350(&qword_100CBFDF8);
  v84 = *(v83 - 8);
  __chkstk_darwin(v83);
  v76 = &v66 - v13;
  v87 = sub_10022C350(&qword_100CBFE00);
  v90 = *(v87 - 8);
  __chkstk_darwin(v87);
  v78 = &v66 - v14;
  v15 = sub_10022C350(&qword_100CBFE08);
  v16 = *(v15 - 8);
  v91 = v15;
  v92 = v16;
  __chkstk_darwin(v15);
  v80 = &v66 - v17;
  v18 = sub_10022C350(&qword_100CBFE10);
  v93 = *(v18 - 8);
  v94 = v18;
  __chkstk_darwin(v18);
  v86 = &v66 - v19;
  v88 = sub_10022C350(&qword_100CBFE18);
  __chkstk_darwin(v88);
  v75 = &v66 - v20;
  v69 = sub_10022C350(&qword_100CBFE20);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v67 = &v66 - v21;
  static Axis.Set.horizontal.getter();
  v100 = v1;
  sub_10022C350(&qword_100CBFE28);
  v22 = type metadata accessor for PagingChartsView.HorizontalChartPages(255);
  v23 = sub_10022E824(&qword_100CBFE30);
  v24 = sub_1004DCC0C(&qword_100CBFE38, type metadata accessor for PagingChartsView.HorizontalChartPages);
  v25 = sub_1004DE1E8();
  v101 = v22;
  v102 = &type metadata for Solarium;
  v103 = v23;
  v104 = v24;
  v105 = &protocol witness table for Solarium;
  v106 = v25;
  swift_getOpaqueTypeConformance2();
  ScrollView.init(_:showsIndicators:content:)();
  PagingScrollTargetBehavior.init()();
  v26 = sub_100006F64(&qword_100CBFE58, &qword_100CBFDF0);
  v27 = v76;
  v28 = v77;
  v29 = v81;
  View.scrollTargetBehavior<A>(_:)();
  v30 = v29;
  (*(v82 + 8))(v10, v29);
  (*(v79 + 8))(v12, v28);
  v82 = type metadata accessor for PagingChartsView(0);
  v31 = v85;
  Binding.projectedValue.getter();
  v32 = type metadata accessor for Date();
  v101 = v28;
  v102 = v30;
  v103 = v26;
  v104 = &protocol witness table for PagingScrollTargetBehavior;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = sub_1004DCC0C(&qword_100CA39C8, &type metadata accessor for Date);
  v35 = v78;
  v36 = v83;
  View.scrollPosition<A>(id:anchor:)();
  sub_100018144(v31, &qword_100CBFD18);
  (*(v84 + 8))(v27, v36);
  v37 = v96;
  static ScrollIndicatorVisibility.never.getter();
  static Axis.Set.horizontal.getter();
  v101 = v36;
  v102 = v32;
  v103 = OpaqueTypeConformance2;
  v104 = v34;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v80;
  v40 = v87;
  View.scrollIndicators(_:axes:)();
  (*(v97 + 8))(v37, v98);
  (*(v90 + 8))(v35, v40);
  v41 = v1;
  v42 = v99;
  sub_1000302D8(v1 + *(v82 + 24), v99, &qword_100CB0BA8);
  v43 = type metadata accessor for DetailChartSelection();
  sub_100024D10(v42, 1, v43);
  sub_100018144(v42, &qword_100CB0BA8);
  v101 = v40;
  v102 = v38;
  swift_getOpaqueTypeConformance2();
  v44 = v86;
  v45 = v91;
  View.scrollDisabled(_:)();
  (*(v92 + 8))(v39, v45);
  v46 = static Alignment.topLeading.getter();
  v48 = v47;
  v49 = v88;
  v50 = v75;
  v51 = &v75[*(v88 + 36)];
  v99 = v41;
  sub_1004D4AAC(v41, v51);
  v52 = (v51 + *(sub_10022C350(&qword_100CBFE60) + 36));
  *v52 = v46;
  v52[1] = v48;
  v53 = v50;
  (*(v93 + 32))(v50, v44, v94);
  v54 = enum case for DynamicTypeSize.accessibility1(_:);
  v55 = type metadata accessor for DynamicTypeSize();
  v56 = v95;
  (*(*(v55 - 8) + 104))(v95, v54, v55);
  sub_1004DCC0C(&qword_100CA5390, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v58 = sub_1004DE2D0();
    v59 = sub_100006F64(&qword_100CA53C8, &unk_100CE1680);
    v60 = v67;
    v61 = v70;
    View.dynamicTypeSize<A>(_:)();
    sub_100018144(v56, &unk_100CE1680);
    sub_100018144(v53, &qword_100CBFE18);
    Solarium.init()();
    v62 = v71;
    v63 = static ViewInputPredicate.! prefix(_:)();
    __chkstk_darwin(v63);
    sub_10022C350(&qword_100CBFE78);
    v101 = v49;
    v102 = v61;
    v103 = v58;
    v104 = v59;
    swift_getOpaqueTypeConformance2();
    v101 = &type metadata for Solarium;
    v102 = &protocol witness table for Solarium;
    swift_getOpaqueTypeConformance2();
    sub_1004DE52C();
    v64 = v69;
    v65 = v74;
    View.staticIf<A, B>(_:then:)();
    (*(v73 + 8))(v62, v65);
    return (*(v68 + 8))(v60, v64);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D48B8(uint64_t a1)
{
  v2 = type metadata accessor for PagingChartsView.HorizontalChartPages(0);
  __chkstk_darwin(v2);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(a1 + 8);
  v6 = type metadata accessor for PagingChartsView(0);
  sub_10042F370(a1 + v6[7], (v4 + 8));
  v7 = (a1 + v6[13]);
  v8 = *v7;
  v9 = *(v7 + 1);
  v16 = v8;
  v17 = v9;

  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  v10 = v15;
  v11 = *(a1 + v6[9]);
  sub_10022C350(&qword_100CBFD10);
  Binding.wrappedValue.getter();
  *v4 = v5;
  v4[48] = v10;
  *(v4 + 7) = v11;
  Solarium.init()();
  v14 = a1;
  sub_10022C350(&qword_100CBFE30);
  sub_1004DCC0C(&qword_100CBFE38, type metadata accessor for PagingChartsView.HorizontalChartPages);
  sub_1004DE1E8();
  View.staticIf<A, B>(_:then:)();
  return sub_1004DCD2C(v4, type metadata accessor for PagingChartsView.HorizontalChartPages);
}

uint64_t sub_1004D4AAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49[2] = a2;
  v3 = sub_10022C350(&qword_100CBFE98);
  __chkstk_darwin(v3 - 8);
  v5 = v49 - v4;
  v58 = type metadata accessor for DetailChartViewModel();
  v6 = *(v58 - 8);
  __chkstk_darwin(v58);
  v8 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CBFEA0);
  __chkstk_darwin(v9 - 8);
  v56 = v49 - v10;
  v50 = type metadata accessor for Font.TextStyle();
  v55 = *(v50 - 8);
  __chkstk_darwin(v50);
  v12 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CBFD10);
  __chkstk_darwin(v13 - 8);
  v15 = v49 - v14;
  v16 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v16 - 8);
  v57 = v49 - v17;
  v52 = type metadata accessor for StickyChartHeadersView(0);
  __chkstk_darwin(v52);
  v19 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v49[0] = v49 - v21;
  v22 = a1[1];
  v53 = *a1;
  v54 = v22;
  v23 = type metadata accessor for PagingChartsView(0);
  sub_10042F370(a1 + v23[7], v63);
  v24 = a1 + v23[13];
  v25 = *v24;
  v26 = *(v24 + 1);
  LOBYTE(v61) = v25;
  v62 = v26;

  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  v51 = v60;
  v27 = *(a1 + v23[8]);
  sub_10022C350(&qword_100CBFD18);
  Binding.wrappedValue.getter();
  v28 = v23[10];
  v49[1] = a1;
  sub_1000302D8(a1 + v28, v15, &qword_100CBFD10);
  v61 = 0x3FF0000000000000;
  v29 = *(v55 + 104);
  v30 = v50;
  v29(v12, enum case for Font.TextStyle.caption(_:), v50);
  sub_10014AB54();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v61 = 0x4050000000000000;
  v31 = v30;
  v32 = v15;
  v33 = v52;
  v29(v12, enum case for Font.TextStyle.body(_:), v31);
  v34 = v57;
  sub_1001BB6FC();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v35 = v33[14];
  *&v19[v35] = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  swift_storeEnumTagMultiPayload();
  v36 = v54;
  *&v19[v33[5]] = v53;
  *&v19[v33[6]] = v36;
  sub_10042F370(v63, &v19[v33[7]]);
  v19[v33[8]] = v51;
  *&v19[v33[9]] = v27;
  sub_1000302D8(v34, &v19[v33[10]], &unk_100CB2CF0);
  sub_1000302D8(v32, &v19[v33[12]], &qword_100CBFD10);
  v59 = v34;

  v37 = v56;
  sub_1008DC184();
  v38 = v37;
  v39 = type metadata accessor for DetailChartsViewModel();
  if (sub_100024D10(v38, 1, v39) == 1)
  {
    sub_100018144(v32, &qword_100CBFD10);
    sub_100006F14(v63);
    sub_100018144(v38, &qword_100CBFEA0);
    v40 = 0;
LABEL_11:
    v19[v33[11]] = v40;
    v46 = v19;
    v47 = v49[0];
    sub_1004DCF48(v46, v49[0], type metadata accessor for StickyChartHeadersView);
    sub_100018144(v34, &unk_100CB2CF0);
    v48 = Solarium.init()();
    __chkstk_darwin(v48);
    sub_10022C350(&qword_100CBFEA8);
    sub_1004DCC0C(&qword_100CBFEB0, type metadata accessor for StickyChartHeadersView);
    sub_1004DE7B8();
    View.staticIf<A, B>(_:then:)();
    return sub_1004DCD2C(v47, type metadata accessor for StickyChartHeadersView);
  }

  else
  {
    v55 = v32;
    v41 = *(v38 + *(v39 + 20));

    result = sub_1004DCD2C(v38, type metadata accessor for DetailChartsViewModel);
    v43 = 0;
    v44 = *(v41 + 16);
    while (1)
    {
      if (v44 == v43)
      {

        sub_100018144(v55, &qword_100CBFD10);
        sub_100006F14(v63);
        v40 = 0;
LABEL_10:
        v34 = v57;
        goto LABEL_11;
      }

      if (v43 >= *(v41 + 16))
      {
        break;
      }

      sub_1004DCCD0(v41 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v43, v8, type metadata accessor for DetailChartViewModel);
      sub_1000302D8(&v8[*(v58 + 24)], v5, &qword_100CBFE98);
      sub_1004DCD2C(v8, type metadata accessor for DetailChartViewModel);
      v45 = type metadata accessor for LollipopViewModel();
      if (sub_100024D10(v5, 1, v45) != 1)
      {

        sub_100018144(v55, &qword_100CBFD10);
        sub_100006F14(v63);
        sub_100018144(v5, &qword_100CBFE98);
        v40 = 1;
        goto LABEL_10;
      }

      ++v43;
      result = sub_100018144(v5, &qword_100CBFE98);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1004D5340@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, void (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v8 = static Animation.easeInOut.getter();
  type metadata accessor for PagingChartsView(0);
  v9 = (a4 + *(sub_10022C350(a2) + 36));
  sub_10022C350(&qword_100CBFE50);
  sub_10022C350(&qword_100CBFD10);
  Binding.wrappedValue.getter();
  *v9 = v8;
  return sub_1004DCCD0(a1, a4, a3);
}

uint64_t sub_1004D5400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OpacityTransition();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  OpacityTransition.init()();
  (*(v5 + 16))(v7, v10, v4);
  sub_1004DCC0C(&qword_100CA3DB8, &type metadata accessor for OpacityTransition);
  v11 = AnyTransition.init<A>(_:)();
  (*(v5 + 8))(v10, v4);
  v12 = sub_10022C350(&qword_100CBFE20);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  *(a2 + *(sub_10022C350(&qword_100CBFE90) + 36)) = v11;
  v13 = static Animation.easeInOut.getter();
  type metadata accessor for PagingChartsView(0);
  v14 = (a2 + *(sub_10022C350(&qword_100CBFE78) + 36));
  sub_10022C350(&qword_100CBFE50);
  sub_10022C350(&qword_100CBFD10);
  result = Binding.wrappedValue.getter();
  *v14 = v13;
  return result;
}

uint64_t sub_1004D5634()
{
  v1 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v1);
  v2 = sub_10022C350(&qword_100CC0050);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7[-v4];
  v8 = v0;
  static VerticalAlignment.center.getter();
  v9 = 0;
  sub_1004DCC0C(&qword_100CC0058, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_10022C350(&qword_100CC0060);
  sub_1004DEEE4();
  LazyHStack.init(alignment:spacing:pinnedViews:content:)();
  sub_100006F64(&qword_100CC0078, &qword_100CC0050);
  View.scrollTargetLayout(isEnabled:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1004D5858(void *a1)
{
  v2 = type metadata accessor for PagingChartsView.HorizontalChartPages(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v8[1] = *a1;
  swift_getKeyPath();
  sub_1004DCCD0(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PagingChartsView.HorizontalChartPages);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1004DCF48(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PagingChartsView.HorizontalChartPages);

  sub_10022C350(&qword_100CC0080);
  type metadata accessor for PagingChartsView.ChartPage(0);
  sub_100006F64(&qword_100CC0088, &qword_100CC0080);
  sub_1004DCC0C(&qword_100CA39C8, &type metadata accessor for Date);
  sub_1004DCC0C(&qword_100CC0070, type metadata accessor for PagingChartsView.ChartPage);
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1004D5A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1004DCCD0(a1, a3, type metadata accessor for DetailChartsViewModel);
  v5 = *(a2 + 48);
  v6 = type metadata accessor for PagingChartsView.ChartPage(0);
  sub_10042F370(a2 + 8, a3 + v6[6]);
  v7 = *(a2 + 56);
  *(a3 + v6[5]) = v5;
  *(a3 + v6[7]) = v7;
  v8 = a3 + v6[8];
  result = State.init(wrappedValue:)();
  *v8 = v10;
  *(v8 + 8) = v11;
  return result;
}

uint64_t sub_1004D5B4C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = type metadata accessor for AccessibilityChildBehavior();
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v50 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for PagingChartsView.ChartPage(0);
  v5 = *(v51 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v51);
  v40 = sub_10022C350(&qword_100CC03D8);
  __chkstk_darwin(v40);
  v8 = &v39 - v7;
  v45 = sub_10022C350(&qword_100CC03E0);
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v10 = &v39 - v9;
  v49 = sub_10022C350(&qword_100CC03E8);
  v44 = *(v49 - 8);
  __chkstk_darwin(v49);
  v42 = &v39 - v11;
  v12 = sub_10022C350(&qword_100CC03F0);
  v47 = *(v12 - 8);
  v48 = v12;
  __chkstk_darwin(v12);
  v46 = &v39 - v13;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  sub_10022C350(&qword_100CC03F8);
  v58 = *(v2 + *(type metadata accessor for DetailChartsViewModel() + 20));
  v54 = v2;
  sub_1004DCCD0(v2, &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PagingChartsView.ChartPage);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v41 = v6;
  v15 = swift_allocObject();
  v39 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004DCF48(v39, v15 + v14, type metadata accessor for PagingChartsView.ChartPage);

  sub_10022C350(&qword_100CC0400);
  type metadata accessor for PagingChartsView.ChartWrapperView(0);
  sub_100006F64(&qword_100CC0408, &qword_100CC0400);
  sub_1004DCC0C(&qword_100CC0410, type metadata accessor for PagingChartsView.ChartWrapperView);
  sub_1004DCC0C(&qword_100CC0418, type metadata accessor for DetailChartViewModel);
  ForEach<>.init(_:content:)();
  v16 = static Edge.Set.horizontal.getter();
  if (qword_100CA20B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100472710();
  EdgeInsets.init(_all:)();
  v17 = v40;
  v18 = &v8[*(v40 + 36)];
  *v18 = v16;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  static Axis.Set.horizontal.getter();
  static Alignment.center.getter();
  v23 = sub_1004DFEB8();
  View.containerRelativeFrame(_:alignment:)();
  sub_100018144(v8, &qword_100CC03D8);
  v24 = v54;
  v25 = v39;
  sub_1004DCCD0(v54, v39, type metadata accessor for PagingChartsView.ChartPage);
  v26 = swift_allocObject();
  sub_1004DCF48(v25, v26 + v14, type metadata accessor for PagingChartsView.ChartPage);
  v56 = v17;
  v57 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v42;
  v29 = v45;
  View.onScrollVisibilityChange(threshold:_:)();

  (*(v43 + 8))(v10, v29);
  v30 = v50;
  static AccessibilityChildBehavior.contain.getter();
  v56 = v29;
  v57 = OpaqueTypeConformance2;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = v46;
  v33 = v49;
  View.accessibilityElement(children:)();
  (*(v52 + 8))(v30, v53);
  (*(v44 + 8))(v28, v33);
  v34 = v24 + *(v51 + 32);
  v35 = *v34;
  v36 = *(v34 + 8);
  LOBYTE(v56) = v35;
  v57 = v36;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  v56 = v33;
  v57 = v31;
  swift_getOpaqueTypeConformance2();
  v37 = v48;
  View.accessibility(hidden:)();
  return (*(v47 + 8))(v32, v37);
}

uint64_t sub_1004D630C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Font.TextStyle();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_10022C350(&qword_100CBFE98);
  __chkstk_darwin(v10 - 8);
  v12 = &v28[-v11];
  v13 = type metadata accessor for DetailChartViewModel();
  sub_1000302D8(a1 + *(v13 + 24), v12, &qword_100CBFE98);
  v14 = type metadata accessor for LollipopViewModel();
  v15 = sub_100024D10(v12, 1, v14);
  sub_100018144(v12, &qword_100CBFE98);
  v16 = type metadata accessor for PagingChartsView.ChartPage(0);
  v17 = *(a2 + v16[5]);
  v18 = type metadata accessor for PagingChartsView.ChartWrapperView(0);
  sub_1004DCCD0(a1, a3 + v18[5], type metadata accessor for DetailChartViewModel);
  sub_10042F370(a2 + v16[6], a3 + v18[6]);
  v19 = *(a2 + v16[7]);
  if (qword_100CA20B8 != -1)
  {
    swift_once();
  }

  if (v15 == 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v17;
  }

  swift_beginAccess();
  v21 = sub_100472710();
  v22 = v19 - (v21 + v21);
  v23 = (a2 + v16[8]);
  v24 = *v23;
  v25 = *(v23 + 1);
  LOBYTE(v29) = v24;
  v30 = v25;
  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  v26 = v28[7];
  v29 = 0x3FF0000000000000;
  (*(v7 + 104))(v9, enum case for Font.TextStyle.caption(_:), v6);
  sub_10014AB54();
  result = ScaledMetric.init(wrappedValue:relativeTo:)();
  *(a3 + v18[7]) = v20;
  *(a3 + v18[8]) = v22;
  *(a3 + v18[9]) = v26;
  return result;
}

uint64_t sub_1004D65DC()
{
  type metadata accessor for PagingChartsView.ChartPage(0);
  sub_10022C350(&qword_100CA5A80);
  return State.wrappedValue.setter();
}

uint64_t sub_1004D6654@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_10022C350(&qword_100CC0548);
  return sub_1004D66A4(v1, (a1 + *(v3 + 44)));
}

uint64_t sub_1004D66A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v85 = a2;
  v75 = sub_10022C350(&qword_100CC0550);
  __chkstk_darwin(v75);
  v74 = &v65[-v3];
  v4 = sub_10022C350(&qword_100CC01C0);
  __chkstk_darwin(v4 - 8);
  v82 = &v65[-v5];
  v81 = type metadata accessor for ConditionDetailChartFooterViewModel();
  __chkstk_darwin(v81);
  v73 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_10022C350(&qword_100CC0558);
  __chkstk_darwin(v7 - 8);
  v86 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v84 = &v65[-v10];
  v11 = sub_10022C350(&qword_100CC0560);
  __chkstk_darwin(v11);
  v13 = &v65[-v12];
  v70 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v70);
  v69 = &v65[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v68 = &v65[-v16];
  v76 = sub_10022C350(&qword_100CC0568);
  __chkstk_darwin(v76);
  v18 = &v65[-v17];
  v19 = sub_10022C350(&qword_100CC0570);
  __chkstk_darwin(v19 - 8);
  v83 = &v65[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v87 = &v65[-v22];
  v23 = type metadata accessor for PagingChartsView.ChartWrapperView(0);
  v24 = a1 + v23[5];
  v25 = *(type metadata accessor for ConditionDetailChartHeaderViewModel() + 20);
  v88 = v24;
  sub_100926274(*(v24 + v25), v93);
  sub_1000161C0(v93, v93[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.preferredHeight.getter();
  sub_10022C350(&qword_100CA3BF0);
  ScaledMetric.wrappedValue.getter();
  sub_100006F14(v93);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v79 = v95;
  v80 = v93[5];
  v77 = v98;
  v78 = v97;
  v92 = 1;
  v91 = v94;
  v90 = v96;
  v26 = *(a1 + v23[9]);
  v71 = v23;
  v72 = a1;
  if (v26 == 1)
  {
    v27 = type metadata accessor for DetailChart(0);
    sub_1004DCCD0(v88, v18 + v27[7], type metadata accessor for DetailChartViewModel);
    v28 = v23[6];
    v66 = *(a1 + v23[7]);
    sub_10042F370(a1 + v28, v18 + v27[10]);
    v29 = *(a1 + v23[8]);
    *v18 = swift_getKeyPath();
    sub_10022C350(&qword_100CA2D60);
    swift_storeEnumTagMultiPayload();
    v30 = v27[5];
    *(v18 + v30) = swift_getKeyPath();
    sub_10022C350(&qword_100CA71B0);
    swift_storeEnumTagMultiPayload();
    v31 = v18 + v27[6];
    *v31 = swift_getKeyPath();
    v31[8] = 0;
    v67 = v11;
    v32 = type metadata accessor for Date();
    v33 = v68;
    sub_10001B350(v68, 1, 1, v32);
    sub_1000302D8(v33, v69, &unk_100CB2CF0);
    State.init(wrappedValue:)();
    sub_100018144(v33, &unk_100CB2CF0);
    *(v18 + v27[8]) = v66;
    *(v18 + v27[11]) = v29;
    Hasher.init()();
    v34 = type metadata accessor for DetailChartViewModel();
    String.hash(into:)();
    type metadata accessor for ChartViewModel(0);
    sub_1004DCC0C(&qword_100CA39C8, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    *(v18 + *(v76 + 52)) = Hasher.finalize()();
    sub_1000302D8(v18, v13, &qword_100CC0568);
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CBB278);
    sub_100006F64(&qword_100CC0578, &qword_100CC0568);
    sub_10045AF30();
    v35 = v87;
    _ConditionalContent<>.init(storage:)();
    sub_100018144(v18, &qword_100CC0568);
  }

  else
  {
    v36 = static Color.clear.getter();
    v34 = type metadata accessor for DetailChartViewModel();
    type metadata accessor for ChartViewModel(0);
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v89[6] = v99;
    *&v89[22] = v100;
    *&v89[38] = v101;
    v37 = *&v89[16];
    *(v13 + 10) = *v89;
    *v13 = v36;
    *(v13 + 4) = 256;
    *(v13 + 26) = v37;
    *(v13 + 42) = *&v89[32];
    *(v13 + 7) = *&v89[46];
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CBB278);
    sub_100006F64(&qword_100CC0578, &qword_100CC0568);
    sub_10045AF30();
    v35 = v87;
    _ConditionalContent<>.init(storage:)();
  }

  type metadata accessor for DetailChartViewModel();
  v38 = v82;
  sub_1000302D8(v88 + *(v34 + 28), v82, &qword_100CC01C0);
  if (sub_100024D10(v38, 1, v81) == 1)
  {
    sub_100018144(v38, &qword_100CC01C0);
    v39 = 1;
    v40 = v84;
  }

  else
  {
    v41 = v73;
    sub_1004DCF48(v38, v73, type metadata accessor for ConditionDetailChartFooterViewModel);
    v42 = v74;
    sub_1004DCCD0(v41, v74, type metadata accessor for ConditionDetailChartFooterViewModel);
    v43 = v71[6];
    v44 = type metadata accessor for ConditionDetailChartFooterView();
    sub_10042F370(v72 + v43, &v42[*(v44 + 20)]);
    v45 = static Edge.Set.horizontal.getter();
    if (qword_100CA20B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100472804();
    swift_endAccess();
    EdgeInsets.init(_all:)();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    sub_1004DCD2C(v41, type metadata accessor for ConditionDetailChartFooterViewModel);
    v54 = &v42[*(sub_10022C350(&qword_100CC01B8) + 36)];
    *v54 = v45;
    *(v54 + 1) = v47;
    *(v54 + 2) = v49;
    *(v54 + 3) = v51;
    *(v54 + 4) = v53;
    v54[40] = 0;
    v40 = v84;
    sub_10011C0F0(v42, v84, &qword_100CC0550);
    v39 = 0;
  }

  sub_10001B350(v40, v39, 1, v75);
  v55 = v92;
  v56 = v91;
  v57 = v90;
  v58 = v83;
  sub_1000302D8(v35, v83, &qword_100CC0570);
  v59 = v86;
  sub_1000302D8(v40, v86, &qword_100CC0558);
  v60 = v85;
  *v85 = 0;
  *(v60 + 8) = v55;
  v61 = v79;
  v60[2] = v80;
  *(v60 + 24) = v56;
  v60[4] = v61;
  *(v60 + 40) = v57;
  v62 = v77;
  v60[6] = v78;
  v60[7] = v62;
  v63 = sub_10022C350(&qword_100CC0580);
  sub_1000302D8(v58, v60 + *(v63 + 48), &qword_100CC0570);
  sub_1000302D8(v59, v60 + *(v63 + 64), &qword_100CC0558);
  sub_100018144(v40, &qword_100CC0558);
  sub_100018144(v87, &qword_100CC0570);
  sub_100018144(v59, &qword_100CC0558);
  return sub_100018144(v58, &qword_100CC0570);
}

uint64_t sub_1004D71D0(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(qword_100CA4F80);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v23 - v8;
  v10 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v23 - v15;
  v25 = v4;
  (*(v4 + 16))(&v23 - v15, a1, v3, v14);
  sub_10001B350(v16, 0, 1, v3);
  v17 = *(v7 + 56);
  sub_1000302D8(v16, v9, &unk_100CB2CF0);
  sub_1000302D8(v26, &v9[v17], &unk_100CB2CF0);
  if (sub_100024D10(v9, 1, v3) != 1)
  {
    sub_1000302D8(v9, v12, &unk_100CB2CF0);
    if (sub_100024D10(&v9[v17], 1, v3) != 1)
    {
      v19 = v24;
      v20 = v25;
      (*(v25 + 32))(v24, &v9[v17], v3);
      sub_1004DCC0C(&qword_100CA39D0, &type metadata accessor for Date);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      v21 = *(v20 + 8);
      v21(v19, v3);
      sub_100018144(v16, &unk_100CB2CF0);
      v21(v12, v3);
      sub_100018144(v9, &unk_100CB2CF0);
      return v18 & 1;
    }

    sub_100018144(v16, &unk_100CB2CF0);
    (*(v25 + 8))(v12, v3);
    goto LABEL_6;
  }

  sub_100018144(v16, &unk_100CB2CF0);
  if (sub_100024D10(&v9[v17], 1, v3) != 1)
  {
LABEL_6:
    sub_100018144(v9, qword_100CA4F80);
    v18 = 0;
    return v18 & 1;
  }

  sub_100018144(v9, &unk_100CB2CF0);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1004D7580()
{
  v1 = type metadata accessor for StickyChartHeadersView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_1004DCCD0(v0, v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StickyChartHeadersView);
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = &protocol witness table for MainActor;
  sub_1004DCF48(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for StickyChartHeadersView);
  sub_1004DCCD0(v0, v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StickyChartHeadersView);
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  sub_1004DCF48(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v5, type metadata accessor for StickyChartHeadersView);
  Binding.init(get:set:)();
  return v10[1];
}

uint64_t sub_1004D7750@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for DetailCondition();
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StickyChartHeadersView(0);
  sub_10022C350(&qword_100CBFD10);
  Binding.wrappedValue.getter();
  result = sub_1004D77FC(v4);
  *a1 = result;
  return result;
}

uint64_t sub_1004D77FC(uint64_t a1)
{
  v2 = type metadata accessor for DetailCondition();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DetailCondition.conditions(_:))
  {
    goto LABEL_2;
  }

  if (v7 == enum case for DetailCondition.humidity(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0;
  }

  else if (v7 == enum case for DetailCondition.pressure(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 1;
  }

  else if (v7 == enum case for DetailCondition.precipitationTotal(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 2;
  }

  else if (v7 == enum case for DetailCondition.uvIndex(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 4;
  }

  else if (v7 == enum case for DetailCondition.visibility(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 5;
  }

  else
  {
    if (v7 != enum case for DetailCondition.wind(_:))
    {
      sub_10022C350(&qword_100CA40C8);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100A2C3F0;
      v11 = DetailCondition.description.getter();
      v13 = v12;
      *(v10 + 56) = &type metadata for String;
      *(v10 + 64) = sub_100035744();
      *(v10 + 32) = v11;
      *(v10 + 40) = v13;
      simulateCrash(_:_:)();

LABEL_2:
      v8 = *(v3 + 8);
      v8(a1, v2);
      v8(v6, v2);
      return 3;
    }

    (*(v3 + 8))(a1, v2);
    return 6;
  }
}

uint64_t sub_1004D7AE0(_BYTE *a1)
{
  v2 = type metadata accessor for DetailCondition();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v14 - v8;
  switch(*a1)
  {
    case 1:
      v10 = &enum case for DetailCondition.pressure(_:);
      break;
    case 2:
      v10 = &enum case for DetailCondition.precipitationTotal(_:);
      break;
    case 3:
      v11 = enum case for TemperatureChartKind.actual(_:);
      v12 = type metadata accessor for TemperatureChartKind();
      (*(*(v12 - 8) + 104))(v9, v11, v12);
      v10 = &enum case for DetailCondition.conditions(_:);
      break;
    case 4:
      v10 = &enum case for DetailCondition.uvIndex(_:);
      break;
    case 5:
      v10 = &enum case for DetailCondition.visibility(_:);
      break;
    case 6:
      v10 = &enum case for DetailCondition.wind(_:);
      break;
    default:
      v10 = &enum case for DetailCondition.humidity(_:);
      break;
  }

  (*(v3 + 104))(v9, *v10, v2, v7);
  type metadata accessor for StickyChartHeadersView(0);
  (*(v3 + 16))(v5, v9, v2);
  sub_10022C350(&qword_100CBFD10);
  Binding.wrappedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

double sub_1004D7CF4()
{
  v0 = type metadata accessor for UserInterfaceSizeClass();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10022C350(&qword_100CA64E8);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v22 - v11;
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  type metadata accessor for StickyChartHeadersView(0);
  sub_10009D114();
  (*(v1 + 104))(v12, enum case for UserInterfaceSizeClass.compact(_:), v0);
  sub_10001B350(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_1000302D8(v15, v6, &qword_100CA6028);
  sub_1000302D8(v12, &v6[v16], &qword_100CA6028);
  if (sub_100024D10(v6, 1, v0) == 1)
  {
    sub_100018144(v12, &qword_100CA6028);
    sub_100018144(v15, &qword_100CA6028);
    if (sub_100024D10(&v6[v16], 1, v0) == 1)
    {
      sub_100018144(v6, &qword_100CA6028);
LABEL_11:
      if (qword_100CA20B8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      return sub_100472710();
    }

    goto LABEL_6;
  }

  sub_1000302D8(v6, v9, &qword_100CA6028);
  if (sub_100024D10(&v6[v16], 1, v0) == 1)
  {
    sub_100018144(v12, &qword_100CA6028);
    sub_100018144(v15, &qword_100CA6028);
    (*(v1 + 8))(v9, v0);
LABEL_6:
    sub_100018144(v6, &qword_100CA64E8);
    goto LABEL_7;
  }

  v18 = &v6[v16];
  v19 = v22;
  (*(v1 + 32))(v22, v18, v0);
  sub_1004DCC0C(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
  v20 = dispatch thunk of static Equatable.== infix(_:_:)();
  v21 = *(v1 + 8);
  v21(v19, v0);
  sub_100018144(v12, &qword_100CA6028);
  sub_100018144(v15, &qword_100CA6028);
  v21(v9, v0);
  sub_100018144(v6, &qword_100CA6028);
  if (v20)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (qword_100CA20B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_100472710() + 4.0;
}

uint64_t sub_1004D81B4(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10022C350(qword_100CA4F80);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v24 - v8;
  v10 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v13);
  v16 = &v24 - v15;
  v26 = v4;
  (*(v4 + 16))(&v24 - v15, a1, v3, v14);
  sub_10001B350(v16, 0, 1, v3);
  v17 = *(type metadata accessor for StickyChartHeadersView(0) + 40);
  v18 = *(v7 + 56);
  sub_1000302D8(v16, v9, &unk_100CB2CF0);
  sub_1000302D8(v27 + v17, &v9[v18], &unk_100CB2CF0);
  if (sub_100024D10(v9, 1, v3) != 1)
  {
    sub_1000302D8(v9, v12, &unk_100CB2CF0);
    if (sub_100024D10(&v9[v18], 1, v3) != 1)
    {
      v20 = v25;
      v21 = v26;
      (*(v26 + 32))(v25, &v9[v18], v3);
      sub_1004DCC0C(&qword_100CA39D0, &type metadata accessor for Date);
      v19 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *(v21 + 8);
      v22(v20, v3);
      sub_100018144(v16, &unk_100CB2CF0);
      v22(v12, v3);
      sub_100018144(v9, &unk_100CB2CF0);
      return v19 & 1;
    }

    sub_100018144(v16, &unk_100CB2CF0);
    (*(v26 + 8))(v12, v3);
    goto LABEL_6;
  }

  sub_100018144(v16, &unk_100CB2CF0);
  if (sub_100024D10(&v9[v18], 1, v3) != 1)
  {
LABEL_6:
    sub_100018144(v9, qword_100CA4F80);
    v19 = 0;
    return v19 & 1;
  }

  sub_100018144(v9, &unk_100CB2CF0);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_1004D8580()
{
  v1 = sub_10022C350(&qword_100CC0090);
  __chkstk_darwin(v1);
  v3 = &v6[-v2];
  *v3 = static HorizontalAlignment.leading.getter();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v4 = sub_10022C350(&qword_100CC0098);
  sub_1004D86F8(v0, &v3[*(v4 + 44)]);
  Solarium.init()();
  v7 = v0;
  sub_10022C350(&qword_100CC00A0);
  sub_100006F64(&qword_100CC00A8, &qword_100CC0090);
  sub_1004DEFEC();
  View.staticIf<A, B>(_:then:)();
  return sub_100018144(v3, &qword_100CC0090);
}

uint64_t sub_1004D86F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for StickyChartHeadersView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = sub_10022C350(&qword_100CC0190);
  v24 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v23 - v7;
  v9 = sub_10022C350(&qword_100CBFEA0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  v12 = type metadata accessor for DetailChartsViewModel();
  __chkstk_darwin(v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_1008DC184();
  if (sub_100024D10(v11, 1, v12) == 1)
  {
    sub_100018144(v11, &qword_100CBFEA0);
    v15 = 1;
    v16 = v25;
  }

  else
  {
    sub_1004DCF48(v11, v14, type metadata accessor for DetailChartsViewModel);
    sub_1002EE2B8();
    v27 = v17;
    v23[1] = swift_getKeyPath();
    sub_1004DCCD0(a1, v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StickyChartHeadersView);
    v18 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v19 = swift_allocObject();
    sub_1004DCF48(v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for StickyChartHeadersView);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1004DF934;
    *(v20 + 24) = v19;
    sub_10022C350(&qword_100CC0198);
    sub_10022C350(&qword_100CC01A0);
    sub_100006F64(&qword_100CC01A8, &qword_100CC0198);
    sub_100006F64(&qword_100CC01B0, &qword_100CC01A0);
    ForEach<>.init(_:id:content:)();
    sub_1004DCD2C(v14, type metadata accessor for DetailChartsViewModel);
    v21 = v25;
    (*(v24 + 32))(v25, v8, v6);
    v15 = 0;
    v16 = v21;
  }

  return sub_10001B350(v16, v15, 1, v6);
}

Swift::Int sub_1004D8B34@<X0>(void *a1@<X8>)
{
  result = sub_1009196E0(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1004D8B70@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a1;
  v88 = a4;
  v87 = sub_10022C350(&qword_100CC01B8);
  __chkstk_darwin(v87);
  v77 = &v75 - v6;
  v7 = sub_10022C350(&qword_100CC01C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v75 - v8;
  v82 = type metadata accessor for ConditionDetailChartFooterViewModel();
  __chkstk_darwin(v82);
  v76 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10022C350(&qword_100CC01C8);
  __chkstk_darwin(v11 - 8);
  v86 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v85 = &v75 - v14;
  v15 = sub_10022C350(&qword_100CC01D0);
  __chkstk_darwin(v15 - 8);
  v17 = (&v75 - v16);
  v18 = sub_10022C350(&qword_100CC01D8);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v75 - v20;
  v22 = sub_10022C350(&qword_100CC01E0);
  __chkstk_darwin(v22);
  v84 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v75 - v25;
  __chkstk_darwin(v27);
  v89 = &v75 - v28;
  *v17 = static Alignment.topLeading.getter();
  v17[1] = v29;
  v30 = sub_10022C350(&qword_100CC01E8);
  sub_1004DAAC0(a3, a2, v17 + *(v30 + 44));
  v31 = *(type metadata accessor for ConditionDetailChartHeaderViewModel() + 20);
  v83 = a2;
  sub_100926274(*(a2 + v31), &v96);
  sub_1000161C0(&v96, v99);
  v32 = a3;
  dispatch thunk of ConditionDetailChartHeaderStyleType.preferredHeight.getter();
  sub_10022C350(&qword_100CA3BF0);
  ScaledMetric.wrappedValue.getter();
  sub_100006F14(&v96);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_10011C0F0(v17, v21, &qword_100CC01D0);
  v33 = &v21[*(v19 + 44)];
  v34 = v94;
  *v33 = v93;
  *(v33 + 1) = v34;
  *(v33 + 2) = v95;
  v35 = static Edge.Set.trailing.getter();
  if (!v81 && (*(a3 + *(type metadata accessor for StickyChartHeadersView(0) + 44)) & 1) == 0)
  {
    sub_10022C350(&qword_100CB2AC8);
    ScaledMetric.wrappedValue.getter();
  }

  EdgeInsets.init(_all:)();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_10011C0F0(v21, v26, &qword_100CC01D8);
  v44 = &v26[*(v22 + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  sub_10011C0F0(v26, v89, &qword_100CC01E0);
  v45 = type metadata accessor for DetailChartViewModel();
  v46 = v83;
  type metadata accessor for ChartViewModel(0);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v81 = v96;
  v80 = v98;
  v79 = v100;
  v78 = v101;
  v92 = 1;
  v91 = v97;
  v90 = v99;
  sub_1000302D8(v46 + *(v45 + 28), v9, &qword_100CC01C0);
  if (sub_100024D10(v9, 1, v82) == 1)
  {
    sub_100018144(v9, &qword_100CC01C0);
    v47 = 1;
    v48 = v87;
    v49 = v85;
  }

  else
  {
    v50 = v76;
    sub_1004DCF48(v9, v76, type metadata accessor for ConditionDetailChartFooterViewModel);
    v51 = v77;
    sub_1004DCCD0(v50, v77, type metadata accessor for ConditionDetailChartFooterViewModel);
    v52 = *(type metadata accessor for StickyChartHeadersView(0) + 28);
    v53 = type metadata accessor for ConditionDetailChartFooterView();
    sub_10042F370(v32 + v52, v51 + *(v53 + 20));
    v54 = static Edge.Set.horizontal.getter();
    if (qword_100CA20B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100472804();
    swift_endAccess();
    EdgeInsets.init(_all:)();
    v56 = v55;
    v58 = v57;
    v60 = v59;
    v62 = v61;
    sub_1004DCD2C(v50, type metadata accessor for ConditionDetailChartFooterViewModel);
    v48 = v87;
    v63 = v51 + *(v87 + 36);
    *v63 = v54;
    *(v63 + 8) = v56;
    *(v63 + 16) = v58;
    *(v63 + 24) = v60;
    *(v63 + 32) = v62;
    *(v63 + 40) = 0;
    v49 = v85;
    sub_10011C0F0(v51, v85, &qword_100CC01B8);
    v47 = 0;
  }

  sub_10001B350(v49, v47, 1, v48);
  v64 = v89;
  v65 = v84;
  sub_1000302D8(v89, v84, &qword_100CC01E0);
  v66 = v92;
  v67 = v91;
  v68 = v90;
  v69 = v86;
  sub_1000302D8(v49, v86, &qword_100CC01C8);
  v70 = v88;
  sub_1000302D8(v65, v88, &qword_100CC01E0);
  v71 = sub_10022C350(&qword_100CC01F0);
  v72 = v70 + *(v71 + 48);
  *v72 = 0;
  *(v72 + 8) = v66;
  *(v72 + 16) = v81;
  *(v72 + 24) = v67;
  *(v72 + 32) = v80;
  *(v72 + 40) = v68;
  v73 = v78;
  *(v72 + 48) = v79;
  *(v72 + 56) = v73;
  sub_1000302D8(v69, v70 + *(v71 + 64), &qword_100CC01C8);
  sub_100018144(v49, &qword_100CC01C8);
  sub_100018144(v64, &qword_100CC01E0);
  sub_100018144(v69, &qword_100CC01C8);
  return sub_100018144(v65, &qword_100CC01E0);
}

uint64_t sub_1004D941C(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = sub_10022C350(&qword_100CABAB8);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_1004D9488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for StickyChartHeadersView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = static Alignment.topTrailing.getter();
  v11 = v10;
  sub_1004DCCD0(a2, &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StickyChartHeadersView);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  sub_1004DCF48(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for StickyChartHeadersView);
  sub_1000302D8(a1, a3, &qword_100CC0090);
  result = sub_10022C350(&qword_100CC00A0);
  v15 = (a3 + *(result + 36));
  *v15 = sub_1004DF0D0;
  v15[1] = v13;
  v15[2] = v9;
  v15[3] = v11;
  return result;
}

uint64_t sub_1004D95FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v6 = type metadata accessor for StickyChartHeadersView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *a1;
  sub_1004DCCD0(a2, &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StickyChartHeadersView);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_1004DCF48(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for StickyChartHeadersView);
  *(v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
  *a3 = sub_1004DF138;
  a3[1] = v11;
}

uint64_t sub_1004D973C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CC00C8);
  __chkstk_darwin(v6);
  v8 = &v11 - v7;
  if (*(a1 + *(type metadata accessor for StickyChartHeadersView(0) + 44)))
  {

    return sub_10001B350(a3, 1, 1, v6);
  }

  else
  {
    *v8 = static VerticalAlignment.center.getter();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v10 = sub_10022C350(&qword_100CC00D0);
    sub_1004D9888(a2, a1, &v8[*(v10 + 44)]);
    sub_10011C0F0(v8, a3, &qword_100CC00C8);
    return sub_10001B350(a3, 0, 1, v6);
  }
}

uint64_t sub_1004D9888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_10022C350(&qword_100CC00D8);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v32 = sub_10022C350(&qword_100CC00E0);
  __chkstk_darwin(v32);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  if (a1)
  {
    type metadata accessor for CGRect(0);

    GeometryProxy.subscript.getter();
    CGRectGetHeight(v33);
  }

  sub_1004D9BF0(v8);
  v17 = &v8[*(sub_10022C350(&qword_100CC00E8) + 52)];
  *v17 = 0xD000000000000017;
  *(v17 + 1) = 0x8000000100ACFEE0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = &v8[*(sub_10022C350(&qword_100CC00F0) + 36)];
  size = v33.size;
  *v18 = v33.origin;
  *(v18 + 1) = size;
  *(v18 + 2) = v34;
  v20 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  v22 = &v8[*(sub_10022C350(&qword_100CC00F8) + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  LOBYTE(KeyPath) = static Edge.Set.trailing.getter();
  sub_1004D7CF4();
  EdgeInsets.init(_all:)();
  v23 = &v8[*(v6 + 36)];
  *v23 = KeyPath;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  if (*(a2 + *(type metadata accessor for StickyChartHeadersView(0) + 44)))
  {
    v28 = 0.0;
  }

  else
  {
    v28 = 1.0;
  }

  sub_10011C0F0(v8, v13, &qword_100CC00D8);
  *&v13[*(v32 + 36)] = v28;
  sub_10011C0F0(v13, v16, &qword_100CC00E0);
  sub_1000302D8(v16, v10, &qword_100CC00E0);
  *a3 = 0;
  *(a3 + 8) = 1;
  v29 = sub_10022C350(&qword_100CC0100);
  sub_1000302D8(v10, a3 + *(v29 + 48), &qword_100CC00E0);
  sub_100018144(v16, &qword_100CC00E0);
  return sub_100018144(v10, &qword_100CC00E0);
}

uint64_t sub_1004D9BF0@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = type metadata accessor for DetailCondition();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v45 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for BorderlessButtonMenuStyle();
  v41 = *(v40 - 8);
  __chkstk_darwin(v40);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_10022C350(&qword_100CC0108);
  __chkstk_darwin(v37);
  v7 = v36 - v6;
  v8 = sub_10022C350(&qword_100CC0110);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin(v8);
  v38 = v36 - v10;
  v44 = sub_10022C350(&qword_100CC0118);
  __chkstk_darwin(v44);
  v39 = v36 - v11;
  v50 = v1;
  v49 = v1;
  v36[0] = v1;
  type metadata accessor for ChartHeaderMenuLabel(0);
  sub_10022C350(&qword_100CC0120);
  sub_1004DCC0C(&qword_100CC0128, type metadata accessor for ChartHeaderMenuLabel);
  v12 = sub_10022E824(&qword_100CC0130);
  v13 = type metadata accessor for InlinePickerStyle();
  v14 = sub_100006F64(&qword_100CC0138, &qword_100CC0130);
  v51 = v12;
  v52 = v13;
  v53 = v14;
  v54 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  Menu.init(content:label:)();
  v15 = static Animation.default.getter();
  v36[1] = *(type metadata accessor for StickyChartHeadersView(0) + 48);
  v16 = v37;
  v17 = (v7 + *(v37 + 36));
  sub_10022C350(&qword_100CBFE50);
  sub_10022C350(&qword_100CBFD10);
  Binding.wrappedValue.getter();
  *v17 = v15;
  BorderlessButtonMenuStyle.init()();
  v18 = sub_1004DF208();
  v19 = sub_1004DCC0C(&qword_100CC0158, &type metadata accessor for BorderlessButtonMenuStyle);
  v20 = v38;
  v21 = v16;
  v22 = v40;
  View.menuStyle<A>(_:)();
  v23 = v22;
  (*(v41 + 8))(v5, v22);
  sub_100018144(v7, &qword_100CC0108);
  LocalizedStringKey.init(stringLiteral:)();
  v24 = Text.init(_:tableName:bundle:comment:)();
  v26 = v25;
  LOBYTE(v7) = v27;
  v51 = v21;
  v52 = v23;
  v53 = v18;
  v54 = v19;
  swift_getOpaqueTypeConformance2();
  v28 = v39;
  v29 = v42;
  View.accessibilityLabel(_:)();
  sub_10010CD64(v24, v26, v7 & 1);

  (*(v43 + 8))(v20, v29);
  v30 = v45;
  Binding.wrappedValue.getter();
  v31 = v30;
  v32 = DetailCondition.title.getter();
  v34 = v33;
  (*(v46 + 8))(v31, v47);
  v51 = v32;
  v52 = v34;
  sub_10002D5A4();
  ModifiedContent<>.accessibilityValue<A>(_:)();

  return sub_100018144(v28, &qword_100CC0118);
}

uint64_t sub_1004DA24C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[1] = a2;
  v3 = type metadata accessor for InlinePickerStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CC0130);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v21 - v9;
  v25 = sub_1004D7580();
  v26 = v11;
  v27 = v12;
  v13 = [objc_opt_self() mainBundle];
  v28._object = 0x8000000100ACFF80;
  v14._countAndFlagsBits = 0x6F697469646E6F43;
  v15._object = 0x8000000100ACFF60;
  v28._countAndFlagsBits = 0xD000000000000033;
  v15._countAndFlagsBits = 0xD00000000000001CLL;
  v14._object = 0xE90000000000006ELL;
  v16 = NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v13, v14, v28);

  v22 = v16;
  sub_10002D5A4();
  v22._countAndFlagsBits = Text.init<A>(_:)();
  v22._object = v17;
  v23 = v18 & 1;
  v24 = v19;
  v21[4] = a1;
  sub_10022C350(&qword_100CC0160);
  sub_1004DC960();
  sub_1004DF2F4();
  Picker.init(selection:label:content:)();
  InlinePickerStyle.init()();
  sub_100006F64(&qword_100CC0138, &qword_100CC0130);
  View.pickerStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1004DA55C()
{
  type metadata accessor for StickyChartHeadersView(0);
  swift_getKeyPath();

  sub_10022C350(&qword_100CC0178);
  sub_10022C350(&qword_100CC0180);
  sub_100006F64(&qword_100CC0188, &qword_100CC0178);
  sub_1004DC960();
  type metadata accessor for ConditionPickerLabel(255);
  sub_1004DCC0C(&qword_100CC0170, type metadata accessor for ConditionPickerLabel);
  swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1004DA6E4()
{
  v1 = type metadata accessor for DetailCondition();
  v2 = __chkstk_darwin(v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, v0, v2);
  return sub_1004D77FC(v4);
}

uint64_t sub_1004DA79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DetailCondition();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ConditionPickerLabel(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for DetailChartConditionInfo() + 20);
  v12 = *(v5 + 16);
  v12(v10, a1 + v11, v4);
  v12(v7, a1 + v11, v4);
  LOBYTE(a1) = sub_1004D77FC(v7);
  sub_1004DCF48(v10, a2, type metadata accessor for ConditionPickerLabel);
  result = sub_10022C350(&qword_100CA2CF8);
  v14 = (a2 + *(result + 36));
  *v14 = a1;
  v14[1] = 1;
  return result;
}

uint64_t sub_1004DA92C()
{
  v0 = type metadata accessor for Font.TextStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StickyChartHeadersView(0);
  type metadata accessor for ChartHeaderMenuLabel(0);
  sub_10022C350(&qword_100CBFD10);
  Binding.wrappedValue.getter();
  v8 = 0x4050000000000000;
  v4 = enum case for Font.TextStyle.body(_:);
  v5 = *(v1 + 104);
  v5(v3, enum case for Font.TextStyle.body(_:), v0);
  sub_1001BB6FC();
  ScaledMetric.init(wrappedValue:relativeTo:)();
  v8 = 0x4041000000000000;
  v5(v3, v4, v0);
  return ScaledMetric.init(wrappedValue:relativeTo:)();
}

uint64_t sub_1004DAAC0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v55 = a3;
  v4 = sub_10022C350(&qword_100CC01F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v46 - v6;
  v8 = sub_10022C350(&qword_100CC0200);
  __chkstk_darwin(v8);
  v10 = v46 - v9;
  v49 = type metadata accessor for LollipopDetailView(0);
  __chkstk_darwin(v49);
  v48 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10022C350(&qword_100CC0208);
  __chkstk_darwin(v50);
  v52 = v46 - v12;
  v54 = sub_10022C350(&qword_100CC0210);
  __chkstk_darwin(v54);
  v51 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v53 = v46 - v15;
  v16 = sub_10022C350(&qword_100CBFE98);
  __chkstk_darwin(v16 - 8);
  v18 = v46 - v17;
  v19 = type metadata accessor for LollipopViewModel();
  __chkstk_darwin(v19);
  v21 = v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for StickyChartHeadersView(0) + 32)))
  {
    goto LABEL_4;
  }

  v46[1] = a1;
  v46[2] = v8;
  v47 = v4;
  v22 = type metadata accessor for DetailChartViewModel();
  v23 = v56;
  sub_1000302D8(v56 + *(v22 + 24), v18, &qword_100CBFE98);
  if (sub_100024D10(v18, 1, v19) == 1)
  {
    sub_100018144(v18, &qword_100CBFE98);
    v4 = v47;
LABEL_4:
    sub_1004DB398(v56);
    (*(v5 + 16))(v10, v7, v4);
    swift_storeEnumTagMultiPayload();
    v56 = sub_1004DF9C0();
    v24 = sub_10022E824(&qword_100CC0228);
    v25 = sub_10022E824(&unk_100CE1680);
    v26 = sub_100006F64(&qword_100CC0230, &qword_100CC0228);
    v27 = sub_100006F64(&qword_100CA53C8, &unk_100CE1680);
    __src[0] = v24;
    __src[1] = v25;
    __src[2] = v26;
    __src[3] = v27;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v5 + 8))(v7, v4);
  }

  v29 = v23;
  sub_1004DCF48(v18, v21, type metadata accessor for LollipopViewModel);
  v30 = v48;
  sub_1004DCCD0(&v21[*(v19 + 28)], v48, type metadata accessor for LollipopDetailViewModel);
  v46[0] = v21;
  sub_1004DCC0C(&qword_100CBBA60, type metadata accessor for LollipopDetailView);
  v31 = v52;
  View.offsetXWithinBounds(_:)();
  sub_1004DCD2C(v30, type metadata accessor for LollipopDetailView);
  v32 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v33 = v31 + *(v50 + 36);
  *v33 = v32;
  *(v33 + 8) = v34;
  *(v33 + 16) = v35;
  *(v33 + 24) = v36;
  *(v33 + 32) = v37;
  *(v33 + 40) = 0;
  v38 = type metadata accessor for ConditionDetailChartHeaderViewModel();
  sub_100926274(*(v29 + *(v38 + 20)), __src);
  sub_1000161C0(__src, __src[3]);
  dispatch thunk of ConditionDetailChartHeaderStyleType.preferredHeight.getter();
  sub_10022C350(&qword_100CA3BF0);
  ScaledMetric.wrappedValue.getter();
  sub_100006F14(__src);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v39 = v51;
  sub_10011C0F0(v31, v51, &qword_100CC0208);
  memcpy((v39 + *(v54 + 36)), __src, 0x70uLL);
  v40 = v39;
  v41 = v53;
  sub_10011C0F0(v40, v53, &qword_100CC0210);
  sub_1000302D8(v41, v10, &qword_100CC0210);
  swift_storeEnumTagMultiPayload();
  sub_1004DF9C0();
  v42 = sub_10022E824(&qword_100CC0228);
  v43 = sub_10022E824(&unk_100CE1680);
  v44 = sub_100006F64(&qword_100CC0230, &qword_100CC0228);
  v45 = sub_100006F64(&qword_100CA53C8, &unk_100CE1680);
  v57 = v42;
  v58 = v43;
  v59 = v44;
  v60 = v45;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  sub_100018144(v41, &qword_100CC0210);
  return sub_1004DCD2C(v46[0], type metadata accessor for LollipopViewModel);
}

uint64_t sub_1004DB398(uint64_t a1)
{
  v3 = sub_10022C350(&unk_100CE1680);
  __chkstk_darwin(v3);
  v5 = &v32 - v4;
  v6 = sub_10022C350(&qword_100CC0228);
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  *v8 = static HorizontalAlignment.center.getter();
  *(v8 + 1) = 0;
  v8[16] = 0;
  v9 = &v8[*(sub_10022C350(&qword_100CC0238) + 44)];
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = sub_10022C350(&qword_100CC0240);
  sub_1004DB6F0(a1, v1, &v9[*(v10 + 44)]);
  LOBYTE(a1) = static Edge.Set.leading.getter();
  type metadata accessor for StickyChartHeadersView(0);
  EdgeInsets.init(_all:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = &v9[*(sub_10022C350(&qword_100CC0248) + 36)];
  *v19 = a1;
  *(v19 + 1) = v12;
  *(v19 + 2) = v14;
  *(v19 + 3) = v16;
  *(v19 + 4) = v18;
  v19[40] = 0;
  LOBYTE(a1) = static Edge.Set.trailing.getter();
  sub_1004D7CF4();
  EdgeInsets.init(_all:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = &v9[*(sub_10022C350(&qword_100CC0250) + 36)];
  *v28 = a1;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  v29 = enum case for DynamicTypeSize.accessibility1(_:);
  v30 = type metadata accessor for DynamicTypeSize();
  (*(*(v30 - 8) + 104))(v5, v29, v30);
  sub_1004DCC0C(&qword_100CA5390, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100006F64(&qword_100CC0230, &qword_100CC0228);
    sub_100006F64(&qword_100CA53C8, &unk_100CE1680);
    View.dynamicTypeSize<A>(_:)();
    sub_100018144(v5, &unk_100CE1680);
    return sub_100018144(v8, &qword_100CC0228);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004DB6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v51 = a3;
  v5 = sub_10022C350(&qword_100CC0258);
  v49 = *(v5 - 8);
  v50 = v5;
  __chkstk_darwin(v5);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v47 = &v44 - v8;
  v9 = type metadata accessor for ConditionDetailChartHeaderViewModel();
  __chkstk_darwin(v9 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ConditionDetailChartHeaderView();
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10022C350(&qword_100CC0260);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v19 = &v44 - v18;
  v20 = sub_10022C350(&qword_100CC0268);
  v21 = v20 - 8;
  __chkstk_darwin(v20);
  v46 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v44 - v24;
  __chkstk_darwin(v26);
  v28 = &v44 - v27;
  sub_1004DCCD0(a1, v11, type metadata accessor for ConditionDetailChartHeaderViewModel);
  sub_10022C350(&qword_100CA3BF0);
  v29 = a2;
  ScaledMetric.wrappedValue.getter();
  v30 = fmax(v54, 1.0);
  v31 = static HorizontalAlignment.leading.getter();
  sub_1004DCF48(v11, v15, type metadata accessor for ConditionDetailChartHeaderViewModel);
  *&v15[*(v13 + 32)] = v30;
  *&v15[*(v13 + 28)] = v31;
  v32 = static Anchor.Source<A>.bounds.getter();
  sub_1004DCF48(v15, v19, type metadata accessor for ConditionDetailChartHeaderView);
  v33 = &v19[*(v17 + 44)];
  *v33 = v32;
  v33[1] = sub_1004DBBFC;
  v33[2] = 0;
  sub_10011C0F0(v19, v25, &qword_100CC0260);
  v25[*(v21 + 44)] = 0;
  v44 = v28;
  sub_10011C0F0(v25, v28, &qword_100CC0268);
  Solarium.init()();
  v52 = v45;
  v53 = v29;
  sub_10022C350(&qword_100CC0270);
  sub_1004DFB40();
  v34 = v47;
  StaticIf<>.init(_:then:else:)();
  v35 = v46;
  sub_1000302D8(v28, v46, &qword_100CC0268);
  v37 = v48;
  v36 = v49;
  v38 = *(v49 + 16);
  v39 = v50;
  v38(v48, v34, v50);
  v40 = v51;
  sub_1000302D8(v35, v51, &qword_100CC0268);
  v41 = sub_10022C350(&qword_100CC0290);
  v38((v40 + *(v41 + 48)), v37, v39);
  v42 = *(v36 + 8);
  v42(v34, v39);
  sub_100018144(v44, &qword_100CC0268);
  v42(v37, v39);
  return sub_100018144(v35, &qword_100CC0268);
}

uint64_t sub_1004DBC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10022C350(&qword_100CC0288);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = sub_10022C350(&qword_100CC0118);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v15 - v11;
  if (*(a1 + *(type metadata accessor for ConditionDetailChartHeaderViewModel() + 24)) == 1)
  {
    sub_1004D9BF0(v12);
    sub_1000302D8(v12, v9, &qword_100CC0118);
    *v6 = 0x4024000000000000;
    v6[8] = 0;
    v13 = sub_10022C350(&qword_100CC0298);
    sub_1000302D8(v9, &v6[*(v13 + 48)], &qword_100CC0118);
    sub_100018144(v12, &qword_100CC0118);
    sub_100018144(v9, &qword_100CC0118);
    sub_10011C0F0(v6, a2, &qword_100CC0288);
    return sub_10001B350(a2, 0, 1, v4);
  }

  else
  {

    return sub_10001B350(a2, 1, 1, v4);
  }
}

void *sub_1004DBE18(void *a1, void *(*a2)(uint64_t *__return_ptr, uint64_t))
{

  result = a2(&v6, v4);
  *a1 = v6;
  return result;
}

uint64_t sub_1004DBE70@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = 0;
  v2 = sub_10022C350(&qword_100CC0438);
  sub_1004DC080(a1 + *(v2 + 44));
  sub_10022C350(&qword_100CB2AC8);
  ScaledMetric.wrappedValue.getter();
  type metadata accessor for ChartHeaderMenuLabel(0);
  ScaledMetric.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v3 = (a1 + *(sub_10022C350(&qword_100CC0440) + 36));
  *v3 = v14;
  v3[1] = v15;
  v3[2] = v16;
  v4 = [objc_opt_self() secondarySystemFillColor];
  v5 = Color.init(_:)();
  v6 = static Edge.Set.all.getter();
  v7 = a1 + *(sub_10022C350(&qword_100CC0448) + 36);
  *v7 = v5;
  *(v7 + 8) = v6;
  ScaledMetric.wrappedValue.getter();
  v8 = (a1 + *(sub_10022C350(&qword_100CC0450) + 36));
  v9 = *(type metadata accessor for RoundedRectangle() + 20);
  v10 = enum case for RoundedCornerStyle.continuous(_:);
  v11 = type metadata accessor for RoundedCornerStyle();
  (*(*(v11 - 8) + 104))(v8 + v9, v10, v11);
  *v8 = v13 * 0.5;
  v8[1] = v13 * 0.5;
  result = sub_10022C350(&qword_100CB34E0);
  *(v8 + *(result + 36)) = 256;
  return result;
}

uint64_t sub_1004DC080@<X0>(uint64_t a1@<X8>)
{
  v38 = type metadata accessor for Font.TextStyle();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v3 = &v33[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = sub_10022C350(&qword_100CB5160);
  __chkstk_darwin(v35);
  v37 = &v33[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v33[-v6];
  type metadata accessor for ChartHeaderMenuLabel(0);
  v8 = DetailCondition.usesCustomSymbol.getter();
  DetailCondition.filledSymbolName.getter();
  if (v8)
  {
    v9 = Image.init(_:bundle:)();
    v10 = static Font.body.getter();
    KeyPath = swift_getKeyPath();
    v39 = v9;
    v40 = KeyPath;
    v41 = v10;
    v42 = 0;
  }

  else
  {
    v12 = Image.init(systemName:)();
    v13 = static Font.body.getter();
    v14 = swift_getKeyPath();
    v39 = v12;
    v40 = v14;
    v41 = v13;
    v42 = 1;
  }

  sub_10022C350(&qword_100CA53B0);
  sub_100270C80();
  _ConditionalContent<>.init(storage:)();
  v15 = v43;
  v16 = v44;
  v17 = v45;
  v34 = v46;
  sub_1004E00C8();
  v18 = Image.init(systemName:)();
  v19 = v7;
  v20 = (v7 + *(sub_10022C350(&qword_100CB5170) + 36));
  v21 = *(sub_10022C350(&qword_100CAF750) + 28);
  v22 = enum case for Image.Scale.small(_:);
  v23 = type metadata accessor for Image.Scale();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  *v19 = v18;
  v24 = v36;
  v25 = v38;
  (*(v36 + 104))(v3, enum case for Font.TextStyle.body(_:), v38);
  static Font.Weight.bold.getter();
  v26 = static Font.system(_:weight:)();
  (*(v24 + 8))(v3, v25);
  v27 = swift_getKeyPath();
  v28 = (v19 + *(v35 + 36));
  *v28 = v27;
  v28[1] = v26;
  v29 = v37;
  sub_1000302D8(v19, v37, &qword_100CB5160);
  *a1 = 0x4028000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = v15;
  *(a1 + 24) = v16;
  *(a1 + 32) = v17;
  *(a1 + 40) = v34;
  v30 = sub_10022C350(&qword_100CC0458);
  sub_1000302D8(v29, a1 + *(v30 + 64), &qword_100CB5160);
  v31 = a1 + *(v30 + 80);
  sub_1004E00C8();
  sub_1004E0110();
  *v31 = 0x4028000000000000;
  *(v31 + 8) = 0;
  sub_100018144(v19, &qword_100CB5160);
  sub_100018144(v29, &qword_100CB5160);
  return sub_1004E0110();
}

uint64_t sub_1004DC4B4()
{
  v1 = sub_10022C350(&qword_100CBFAC8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-v3];
  v9 = v0;
  v8 = v0;
  sub_10022C350(&qword_100CBFAD0);
  sub_10022C350(&qword_100CBFAD8);
  sub_100006F64(&qword_100CBFAE0, &qword_100CBFAD0);
  sub_1004DCAA0();
  Label.init(title:icon:)();
  v10 = DetailCondition.accessibilityLabel.getter();
  v11 = v5;
  sub_100006F64(&qword_100CBFAF0, &qword_100CBFAC8);
  sub_10002D5A4();
  View.accessibilityLabel<A>(_:)();

  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1004DC6BC()
{
  sub_10022C350(&qword_100CBFAF8);
  sub_100006F64(&qword_100CBFB00, &qword_100CBFAF8);
  return LabelGroup.init(content:)();
}

uint64_t sub_1004DC760@<X0>(uint64_t a1@<X8>)
{
  DetailCondition.title.getter();
  sub_10002D5A4();
  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  DetailCondition.subtitle.getter();
  if (v9)
  {
    v10 = Text.init<A>(_:)();
    v12 = v11;
    v14 = v13;
    v16 = v15 & 1;
    sub_10010CD54(v10, v11, v15 & 1);
  }

  else
  {
    v10 = 0;
    v12 = 0;
    v16 = 0;
    v14 = 0;
  }

  sub_10010CD54(v2, v4, v6 & 1);

  sub_100148118(v10, v12, v16, v14);
  sub_10014A53C(v10, v12, v16, v14);
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v10;
  *(a1 + 40) = v12;
  *(a1 + 48) = v16;
  *(a1 + 56) = v14;
  sub_10014A53C(v10, v12, v16, v14);
  sub_10010CD64(v2, v4, v6 & 1);
}

uint64_t sub_1004DC8BC@<X0>(uint64_t a1@<X8>)
{
  v2 = DetailCondition.usesCustomSymbol.getter();
  DetailCondition.symbolName.getter();
  if (v2)
  {
    Image.init(_:bundle:)();
  }

  else
  {
    Image.init(systemName:)();
  }

  result = _ConditionalContent<>.init(storage:)();
  *a1 = v4;
  *(a1 + 8) = v5;
  return result;
}

unint64_t sub_1004DC960()
{
  result = qword_100CBFAB0;
  if (!qword_100CBFAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFAB0);
  }

  return result;
}

unint64_t sub_1004DC9E4()
{
  result = qword_100CBFAB8;
  if (!qword_100CBFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFAB8);
  }

  return result;
}

uint64_t sub_1004DCA38(uint64_t a1)
{
  result = sub_1004DCC0C(&qword_100CBFAC0, type metadata accessor for ConditionDetailViewModel);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004DCAA0()
{
  result = qword_100CBFAE8;
  if (!qword_100CBFAE8)
  {
    sub_10022E824(&qword_100CBFAD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFAE8);
  }

  return result;
}

unint64_t sub_1004DCB24()
{
  result = qword_100CBFB08;
  if (!qword_100CBFB08)
  {
    sub_10022E824(&qword_100CBFB10);
    sub_100006F64(&qword_100CBFAF0, &qword_100CBFAC8);
    sub_1004DCC0C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFB08);
  }

  return result;
}

uint64_t sub_1004DCC0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004DCCD0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1004DCD2C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100003D98();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1004DCDA8()
{
  sub_1004DCED0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ConditionDetailDynamicContentViewBuilder();
    if (v1 <= 0x3F)
    {
      type metadata accessor for ConditionDetailViewModel.Model(319);
      if (v2 <= 0x3F)
      {
        sub_1004DEC84(319, &qword_100CBB7E8, &unk_100CB2CF0, &unk_100A2D7F0, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_100329AF4(319, &qword_100CAD690);
          if (v4 <= 0x3F)
          {
            sub_100046E64();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1004DCED0()
{
  result = qword_100CBFBA0;
  if (!qword_100CBFBA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100CBFBA0);
  }

  return result;
}

uint64_t sub_1004DCF48(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1004DCFBC()
{
  v2 = type metadata accessor for ConditionDetailInnerView(0);
  sub_100003DDC();
  v30 = *(v4 + 64);
  v31 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v32 = v0;
  v5 = v0 + v31;
  sub_100006F14(v0 + v31);

  v6 = v0 + v31 + *(v2 + 28);

  v7 = type metadata accessor for ConditionDetailViewModel.Model(0);
  v8 = v7[6];
  v9 = type metadata accessor for Date();
  sub_1000037E8();
  v11 = *(v10 + 8);
  v11(v6 + v8, v9);
  v12 = type metadata accessor for DetailChartSelection();
  if (!sub_1000057B4(v12))
  {

    v13 = sub_1000207C8(v1[5]);
    (v11)(v13);
    v14 = sub_1000207C8(v1[6]);
    (v11)(v14);
    v15 = sub_1000207C8(v1[7]);
    (v11)(v15);
  }

  v16 = v7[9];
  type metadata accessor for DetailCondition();
  sub_100003D98();
  (*(v17 + 8))(v6 + v16);

  v18 = v7[12];
  type metadata accessor for Location();
  sub_100003D98();
  (*(v19 + 8))(v6 + v18);
  if (!sub_1000115B4())
  {
    v11(v18, v9);
  }

  sub_10022C350(&qword_100CBB758);

  sub_10002FEFC(v20, v21, v22, v23, v24, v25, v26, v27, v29, v30, v31, v32);

  return swift_deallocObject();
}

uint64_t sub_1004DD220(CGFloat *a1)
{
  sub_100008794();
  sub_100008550();

  return sub_1004D28DC(a1);
}

uint64_t sub_1004DD294(uint64_t (*a1)(uint64_t))
{
  sub_100008794();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1004DD314()
{
  result = qword_100CBFC18;
  if (!qword_100CBFC18)
  {
    sub_10022E824(&qword_100CBFBF8);
    sub_1004DD3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFC18);
  }

  return result;
}

unint64_t sub_1004DD3A0()
{
  result = qword_100CBFC20;
  if (!qword_100CBFC20)
  {
    sub_10022E824(&qword_100CBFC10);
    sub_10022E824(&qword_100CBFBF0);
    type metadata accessor for DetailCondition();
    sub_100006F64(&qword_100CBFC08, &qword_100CBFBF0);
    sub_1004DCC0C(&qword_100CAECC0, &type metadata accessor for DetailCondition);
    swift_getOpaqueTypeConformance2();
    sub_100006F64(&qword_100CBFC28, &qword_100CBFC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFC20);
  }

  return result;
}

unint64_t sub_1004DD518()
{
  result = qword_100CBFC38;
  if (!qword_100CBFC38)
  {
    sub_10022E824(&unk_100CB2CF0);
    sub_1004DCC0C(&qword_100CA39D0, &type metadata accessor for Date);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFC38);
  }

  return result;
}

uint64_t sub_1004DD5E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_100008794();
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_1004DD688(uint64_t a1)
{
  sub_100008794();
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000926F8;

  return sub_1004D2BEC(a1, v6, v7, v1 + v5);
}

unint64_t sub_1004DD788()
{
  result = qword_100CBFC68;
  if (!qword_100CBFC68)
  {
    sub_10022E824(&qword_100CBFC60);
    sub_1004DD844();
    sub_1004DCC0C(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFC68);
  }

  return result;
}

unint64_t sub_1004DD844()
{
  result = qword_100CBFC70;
  if (!qword_100CBFC70)
  {
    sub_10022E824(&qword_100CBFC58);
    sub_10022E824(&qword_100CBFC48);
    sub_100006F64(&qword_100CBFC78, &qword_100CBFC48);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFC70);
  }

  return result;
}

unint64_t sub_1004DD948()
{
  result = qword_100CBFC88;
  if (!qword_100CBFC88)
  {
    sub_10022E824(&qword_100CBFC80);
    sub_100006F64(&qword_100CBFC90, &qword_100CBFC98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFC88);
  }

  return result;
}

uint64_t sub_1004DDA00()
{
  sub_100008794();
  sub_100008550();
  v0 = sub_1000138D0();

  return sub_1004D24AC(v0, v1);
}

unint64_t sub_1004DDA90()
{
  result = qword_100CBFCD0;
  if (!qword_100CBFCD0)
  {
    sub_10022E824(&qword_100CBFCB8);
    sub_1004DCC0C(&qword_100CBFCD8, type metadata accessor for PagingChartsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFCD0);
  }

  return result;
}

unint64_t sub_1004DDB54()
{
  result = qword_100CBFCF0;
  if (!qword_100CBFCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFCF0);
  }

  return result;
}

uint64_t sub_1004DDC10()
{
  v2 = type metadata accessor for ConditionDetailInnerView(0);
  sub_100003DDC();
  v4 = *(v3 + 80);
  v31 = *(v5 + 64);
  swift_unknownObjectRelease();
  v6 = v0 + ((v4 + 32) & ~v4);
  sub_100006F14(v6);

  v7 = v6 + *(v2 + 28);

  v8 = type metadata accessor for ConditionDetailViewModel.Model(0);
  v9 = v8[6];
  v10 = type metadata accessor for Date();
  sub_1000037E8();
  v12 = *(v11 + 8);
  v12(v7 + v9, v10);
  v13 = type metadata accessor for DetailChartSelection();
  if (!sub_1000057B4(v13))
  {

    v14 = sub_1000207C8(v1[5]);
    (v12)(v14);
    v15 = sub_1000207C8(v1[6]);
    (v12)(v15);
    v16 = sub_1000207C8(v1[7]);
    (v12)(v16);
  }

  v17 = v8[9];
  type metadata accessor for DetailCondition();
  sub_100003D98();
  (*(v18 + 8))(v7 + v17);

  v19 = v8[12];
  type metadata accessor for Location();
  sub_100003D98();
  (*(v20 + 8))(v7 + v19);
  if (!sub_1000115B4())
  {
    v12(v19, v10);
  }

  sub_10022C350(&qword_100CBB758);

  sub_10002FEFC(v21, v22, v23, v24, v25, v26, v27, v28, v30, v31, (v4 + 32) & ~v4, v0);

  return swift_deallocObject();
}

uint64_t sub_1004DDE7C()
{
  sub_100008794();
  sub_1000138B8();

  return sub_1004D03B0(v0, v1);
}

uint64_t sub_1004DDED4()
{
  sub_100008794();
  v0 = sub_100037B1C();

  return sub_1004D0440(v0, v1, v2, v3);
}

void sub_1004DDF80()
{
  sub_1004DEBC0(319, &qword_100CBFD88, type metadata accessor for DetailChartConditionInfo, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1004DEBC0(319, &qword_100CBFD90, type metadata accessor for DetailChartsViewModel, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1004DEBC0(319, &qword_100CB0C68, type metadata accessor for DetailChartSelection, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1004DCED0();
        if (v3 <= 0x3F)
        {
          sub_1004DEBC0(319, &qword_100CBFD98, &type metadata accessor for DetailCondition, &type metadata accessor for Binding);
          if (v4 <= 0x3F)
          {
            sub_1004DEC84(319, &unk_100CBFDA0, &unk_100CB2CF0, &unk_100A2D7F0, &type metadata accessor for Binding);
            if (v5 <= 0x3F)
            {
              sub_100329AF4(319, &qword_100CA6D40);
              if (v6 <= 0x3F)
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

unint64_t sub_1004DE1E8()
{
  result = qword_100CBFE40;
  if (!qword_100CBFE40)
  {
    sub_10022E824(&qword_100CBFE30);
    sub_1004DCC0C(&qword_100CBFE38, type metadata accessor for PagingChartsView.HorizontalChartPages);
    sub_100006F64(&qword_100CBFE48, &qword_100CBFE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFE40);
  }

  return result;
}

unint64_t sub_1004DE2D0()
{
  result = qword_100CBFE68;
  if (!qword_100CBFE68)
  {
    sub_10022E824(&qword_100CBFE18);
    sub_10022E824(&qword_100CBFE08);
    sub_10022E824(&qword_100CBFE00);
    sub_10022E824(&qword_100CBFDF8);
    type metadata accessor for Date();
    sub_10022E824(&qword_100CBFDF0);
    type metadata accessor for PagingScrollTargetBehavior();
    sub_100006F64(&qword_100CBFE58, &qword_100CBFDF0);
    swift_getOpaqueTypeConformance2();
    sub_1004DCC0C(&qword_100CA39C8, &type metadata accessor for Date);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100006F64(&qword_100CBFE70, &qword_100CBFE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFE68);
  }

  return result;
}

unint64_t sub_1004DE52C()
{
  result = qword_100CBFE80;
  if (!qword_100CBFE80)
  {
    sub_10022E824(&qword_100CBFE78);
    sub_1004DE5E4();
    sub_100006F64(&qword_100CBFE48, &qword_100CBFE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFE80);
  }

  return result;
}

unint64_t sub_1004DE5E4()
{
  result = qword_100CBFE88;
  if (!qword_100CBFE88)
  {
    sub_10022E824(&qword_100CBFE90);
    sub_10022E824(&qword_100CBFE18);
    sub_10022E824(&unk_100CE1680);
    sub_1004DE2D0();
    sub_100006F64(&qword_100CA53C8, &unk_100CE1680);
    swift_getOpaqueTypeConformance2();
    sub_100006F64(&qword_100CA4620, &qword_100CA4628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFE88);
  }

  return result;
}

unint64_t sub_1004DE7B8()
{
  result = qword_100CBFEB8;
  if (!qword_100CBFEB8)
  {
    sub_10022E824(&qword_100CBFEA8);
    sub_1004DCC0C(&qword_100CBFEB0, type metadata accessor for StickyChartHeadersView);
    sub_100006F64(&qword_100CBFE48, &qword_100CBFE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBFEB8);
  }

  return result;
}

uint64_t sub_1004DE8E8()
{

  sub_100006F14(v0 + 24);

  return swift_deallocObject();
}

void sub_1004DE960()
{
  sub_1004DEC24(319, &qword_100CA3C98, sub_10014AB54);
  if (v0 <= 0x3F)
  {
    sub_1004DEBC0(319, &qword_100CBFD88, type metadata accessor for DetailChartConditionInfo, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_1004DEBC0(319, &qword_100CBFD90, type metadata accessor for DetailChartsViewModel, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_1004DCED0();
        if (v3 <= 0x3F)
        {
          sub_1004DEBC0(319, &qword_100CA3940, &type metadata accessor for Date, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1004DEBC0(319, &qword_100CBFD98, &type metadata accessor for DetailCondition, &type metadata accessor for Binding);
            if (v5 <= 0x3F)
            {
              sub_1004DEC24(319, &qword_100CB2B38, sub_1001BB6FC);
              if (v6 <= 0x3F)
              {
                sub_1004DEC84(319, &qword_100CE0E10, &qword_100CA6028, &unk_100A40610, &type metadata accessor for Environment);
                if (v7 <= 0x3F)
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

void sub_1004DEBC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1004DEC24(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for ScaledMetric();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1004DEC84(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10022E824(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1004DED10()
{
  sub_1004DEBC0(319, &qword_100CBFD90, type metadata accessor for DetailChartsViewModel, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_1004DCED0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DetailCondition();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1004DEDF4()
{
  result = qword_100CC0040;
  if (!qword_100CC0040)
  {
    sub_10022E824(&qword_100CC0048);
    sub_100006F64(&qword_100CBFED8, &qword_100CBFEC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0040);
  }

  return result;
}

unint64_t sub_1004DEEE4()
{
  result = qword_100CC0068;
  if (!qword_100CC0068)
  {
    sub_10022E824(&qword_100CC0060);
    sub_1004DCC0C(&qword_100CC0070, type metadata accessor for PagingChartsView.ChartPage);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0068);
  }

  return result;
}

unint64_t sub_1004DEFEC()
{
  result = qword_100CC00B0;
  if (!qword_100CC00B0)
  {
    sub_10022E824(&qword_100CC00A0);
    sub_100006F64(&qword_100CC00A8, &qword_100CC0090);
    sub_100006F64(&qword_100CC00B8, &qword_100CC00C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC00B0);
  }

  return result;
}

uint64_t sub_1004DF0D0()
{
  v0 = sub_1000138A8();
  v1 = type metadata accessor for StickyChartHeadersView(v0);
  sub_100003810(v1);
  sub_100008550();
  v2 = sub_1000138D0();

  return sub_1004D95FC(v2, v3, v4);
}

uint64_t sub_1004DF138()
{
  v0 = sub_1000138A8();
  type metadata accessor for StickyChartHeadersView(v0);
  sub_1000138D0();

  return sub_1004D973C(v1, v2, v3);
}

unint64_t sub_1004DF208()
{
  result = qword_100CC0140;
  if (!qword_100CC0140)
  {
    sub_10022E824(&qword_100CC0108);
    sub_100006F64(&qword_100CC0148, &qword_100CC0150);
    sub_100006F64(&qword_100CBFE48, &qword_100CBFE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0140);
  }

  return result;
}

unint64_t sub_1004DF2F4()
{
  result = qword_100CC0168;
  if (!qword_100CC0168)
  {
    sub_10022E824(&qword_100CC0160);
    type metadata accessor for ConditionPickerLabel(255);
    sub_1004DCC0C(&qword_100CC0170, type metadata accessor for ConditionPickerLabel);
    sub_1004DC960();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0168);
  }

  return result;
}

uint64_t sub_1004DF3F4()
{
  v0 = type metadata accessor for StickyChartHeadersView(0);
  sub_100003810(v0);
  sub_1000138B8();

  return sub_1004D7750(v1);
}

uint64_t sub_1004DF454()
{
  v3 = type metadata accessor for StickyChartHeadersView(0);
  sub_100003DDC();
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  swift_unknownObjectRelease();
  v6 = v0 + v5;
  sub_10022C350(&qword_100CA3BF0);
  sub_100003D98();
  (*(v7 + 8))(v0 + v5);

  v8 = sub_10002C784();
  if (!sub_10002473C(v8))
  {
    sub_100003B20();
    (*(v9 + 8))(v6 + v2, v1);
  }

  sub_10001845C();

  v10 = *(sub_10022C350(&qword_100CBFD10) + 32);
  type metadata accessor for DetailCondition();
  sub_100003D98();
  (*(v11 + 8))(v1 + v10);
  v12 = *(v3 + 52);
  sub_10022C350(&qword_100CB2AC8);
  sub_100003D98();
  (*(v13 + 8))(v6 + v12);
  v14 = *(v3 + 56);
  sub_10022C350(&qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_10000CB9C(v15))
    {
      sub_100003B20();
      (*(v16 + 8))(v6 + v14, v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1004DF688()
{
  v0 = type metadata accessor for StickyChartHeadersView(0);
  sub_100003810(v0);
  v1 = sub_100037B1C();

  return sub_1004D7AE0(v1);
}

uint64_t sub_1004DF708()
{
  v3 = type metadata accessor for StickyChartHeadersView(0);
  sub_100003DDC();
  v5 = v0 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  sub_10022C350(&qword_100CA3BF0);
  sub_100003D98();
  (*(v6 + 8))(v5);

  v7 = sub_10002C784();
  if (!sub_10002473C(v7))
  {
    sub_100003B20();
    (*(v8 + 8))(v5 + v2, v1);
  }

  sub_10001845C();

  v9 = *(sub_10022C350(&qword_100CBFD10) + 32);
  type metadata accessor for DetailCondition();
  sub_100003D98();
  (*(v10 + 8))(v1 + v9);
  v11 = *(v3 + 52);
  sub_10022C350(&qword_100CB2AC8);
  sub_100003D98();
  (*(v12 + 8))(v5 + v11);
  v13 = *(v3 + 56);
  sub_10022C350(&qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_10000CB9C(v14))
    {
      sub_100003B20();
      (*(v15 + 8))(v5 + v13, v3);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1004DF934@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for StickyChartHeadersView(0);
  sub_100003810(v7);
  v9 = v3 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return sub_1004D8B70(a1, a2, v9, a3);
}

unint64_t sub_1004DF9C0()
{
  result = qword_100CC0218;
  if (!qword_100CC0218)
  {
    sub_10022E824(&qword_100CC0210);
    sub_1004DFA4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0218);
  }

  return result;
}

unint64_t sub_1004DFA4C()
{
  result = qword_100CC0220;
  if (!qword_100CC0220)
  {
    sub_10022E824(&qword_100CC0208);
    type metadata accessor for LollipopDetailView(255);
    sub_1004DCC0C(&qword_100CBBA60, type metadata accessor for LollipopDetailView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0220);
  }

  return result;
}

unint64_t sub_1004DFB40()
{
  result = qword_100CC0278;
  if (!qword_100CC0278)
  {
    sub_10022E824(&qword_100CC0270);
    sub_100006F64(&qword_100CC0280, &qword_100CC0288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0278);
  }

  return result;
}

void sub_1004DFC18()
{
  type metadata accessor for DetailChartsViewModel();
  if (v0 <= 0x3F)
  {
    sub_1004DCED0();
    if (v1 <= 0x3F)
    {
      sub_100329AF4(319, &qword_100CA6D40);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1004DFCFC()
{
  sub_1004DEC24(319, &qword_100CB2B38, sub_1001BB6FC);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DetailCondition();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1004DFE18(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = sub_1000138A8();
  v5 = v4(v3);
  sub_100003810(v5);
  sub_100008550();
  v6 = sub_1000138D0();

  return a3(v6);
}

unint64_t sub_1004DFEB8()
{
  result = qword_100CC0420;
  if (!qword_100CC0420)
  {
    sub_10022E824(&qword_100CC03D8);
    sub_100006F64(&qword_100CC0428, &qword_100CC0430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0420);
  }

  return result;
}

uint64_t sub_1004DFF70()
{
  type metadata accessor for PagingChartsView.ChartPage(0);
  sub_100008560();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  type metadata accessor for Date();
  sub_100003D98();
  (*(v4 + 8))(v3);
  type metadata accessor for DetailChartsViewModel();

  sub_100006F14(v3 + *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1004E0064()
{
  v0 = type metadata accessor for PagingChartsView.ChartPage(0);
  sub_100003810(v0);
  sub_100008550();

  return sub_1004D65DC();
}

uint64_t sub_1004E00C8()
{
}

uint64_t sub_1004E0110()
{
}

void sub_1004E017C()
{
  sub_1004DEC24(319, &qword_100CA3C98, sub_10014AB54);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DetailChartViewModel();
    if (v1 <= 0x3F)
    {
      sub_1004DCED0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1004E0250()
{
  result = qword_100CC0500;
  if (!qword_100CC0500)
  {
    sub_10022E824(&qword_100CC0508);
    sub_10022E824(&qword_100CC03E8);
    sub_10022E824(&qword_100CC03E0);
    sub_10022E824(&qword_100CC03D8);
    sub_1004DFEB8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1004DCC0C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0500);
  }

  return result;
}

unint64_t sub_1004E03C8()
{
  result = qword_100CC0510;
  if (!qword_100CC0510)
  {
    sub_10022E824(&qword_100CC0450);
    sub_1004E0480();
    sub_100006F64(&qword_100CB80A0, &qword_100CB34E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0510);
  }

  return result;
}

unint64_t sub_1004E0480()
{
  result = qword_100CC0518;
  if (!qword_100CC0518)
  {
    sub_10022E824(&qword_100CC0448);
    sub_1004E0538();
    sub_100006F64(&qword_100CC0538, &qword_100CC0540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0518);
  }

  return result;
}

unint64_t sub_1004E0538()
{
  result = qword_100CC0520;
  if (!qword_100CC0520)
  {
    sub_10022E824(&qword_100CC0440);
    sub_100006F64(&qword_100CC0528, &qword_100CC0530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC0520);
  }

  return result;
}

uint64_t sub_1004E060C()
{
  v0 = type metadata accessor for Domain();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Access();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CC0598);
  v17 = 1;
  (*(v8 + 104))(v11, enum case for Access.protected(_:), v6);
  sub_10022C350(&qword_100CC05A0);
  sub_10022C350(&qword_100CC05A8);
  *(swift_allocObject() + 16) = xmmword_100A3BBA0;
  v16 = 0;
  Option.init(label:value:description:)();
  v15 = 1;
  Option.init(label:value:description:)();
  v14 = 2;
  Option.init(label:value:description:)();
  (*(v2 + 104))(v5, enum case for Domain.standard(_:), v0);
  sub_1004E0910();
  result = Setting<>.init(_:defaultValue:domain:access:options:)();
  qword_100D90350 = result;
  return result;
}

unint64_t sub_1004E0910()
{
  result = qword_100CC05B0;
  if (!qword_100CC05B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CC05B0);
  }

  return result;
}

uint64_t sub_1004E0964()
{
  v1 = type metadata accessor for MainAction();
  __chkstk_darwin(v1);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 16);
  type metadata accessor for EnvironmentAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  sub_10004F034(v3, v6, v4);
  sub_1000E17D8(v6);
  return sub_1000547B8(v3);
}

uint64_t sub_1004E0B0C()
{
  v0 = sub_100017580();
  v1 = type metadata accessor for LocationComponentCornerRadiusConfiguration(v0);
  v2 = sub_100003810(v1);
  __chkstk_darwin(v2);
  sub_1000037D8();
  sub_100019530();
  sub_1001993DC();
  sub_1001A2B9C();
  EnvironmentValues.subscript.setter();
  return sub_100192034();
}

uint64_t sub_1004E0BE4(char a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v6 == (a1 & 1))
    {
    }

    else
    {
      __chkstk_darwin(v4);
      v5 = swift_getKeyPath();
      __chkstk_darwin(v5);
      swift_getKeyPath();
      return static Published.subscript.setter();
    }
  }

  return result;
}

uint64_t sub_1004E0DA0()
{
  v1 = type metadata accessor for ContentSizeCategory();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v45 - v9;
  v11 = *(v3 + 16);
  v11(&v45 - v9, v0, v1, v8);
  v46 = v3;
  v12 = *(v3 + 88);
  v13 = v12(v10, v1);
  v14 = enum case for ContentSizeCategory.extraSmall(_:);
  v15 = enum case for ContentSizeCategory.small(_:);
  v16 = enum case for ContentSizeCategory.medium(_:);
  v17 = enum case for ContentSizeCategory.large(_:);
  v20 = v13 == enum case for ContentSizeCategory.extraSmall(_:) || v13 == enum case for ContentSizeCategory.small(_:) || v13 == enum case for ContentSizeCategory.medium(_:) || v13 == enum case for ContentSizeCategory.large(_:);
  v48 = enum case for ContentSizeCategory.extraExtraLarge(_:);
  v49 = enum case for ContentSizeCategory.extraLarge(_:);
  v22 = v20 || v13 == enum case for ContentSizeCategory.extraLarge(_:) || v13 == enum case for ContentSizeCategory.extraExtraLarge(_:);
  v47 = enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  if (!v22 && v13 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    v45 = v12;
    if (v13 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v13 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v13 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v13 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v13 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      return 0;
    }

    v28 = v10;
    v29 = enum case for ContentSizeCategory.extraSmall(_:);
    v30 = enum case for ContentSizeCategory.small(_:);
    (*(v46 + 8))(v28, v1);
    v15 = v30;
    v14 = v29;
    v12 = v45;
  }

  v31 = v0;
  v32 = v14;
  v33 = v15;
  (v11)(v6, v31, v1);
  v34 = v12(v6, v1);
  if (v34 != v32 && v34 != v33 && v34 != v16 && v34 != v17)
  {
    if (v34 == v49 || v34 == v48 || v34 == v47)
    {
      return 1;
    }

    if (v34 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v34 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v34 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v34 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v34 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      (*(v46 + 8))(v6, v1);
    }
  }

  return 0;
}

uint64_t sub_1004E1090()
{
  sub_10000FE4C();
  result = sub_100199A40();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_1004E10C0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = sub_100003B38();
  v6 = *(type metadata accessor for LocationComponentCornerRadiusConfiguration(v5) + 20);

  return static RoundedCornerStyle.== infix(_:_:)(v3 + v6, v2 + v6);
}

uint64_t sub_1004E111C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100061A3C(&qword_100CC0FE0, type metadata accessor for LocationComponentCornerRadiusConfiguration);

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_1004E11B0(char a1)
{
  v2 = type metadata accessor for LocationComponentContainerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = sub_10022C350(&qword_100CA3538);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = sub_10022C350(&unk_100CB2CF0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v23 - v13;
  v15 = type metadata accessor for Date();
  sub_10001B350(v14, 1, 1, v15);
  if ((a1 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_100CA24F0 != -1)
  {
    swift_once();
  }

  if (byte_100D907A8 == 1)
  {
    v16 = type metadata accessor for TaskPriority();
    sub_10001B350(v7, 1, 1, v16);
    sub_1001993DC();
    sub_1000302D8(v14, v11, &unk_100CB2CF0);
    type metadata accessor for MainActor();
    v17 = static MainActor.shared.getter();
    v18 = (v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = (*(v9 + 80) + v18 + 32) & ~*(v9 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = &protocol witness table for MainActor;
    sub_1001AD070();
    v21 = (v20 + v18);
    *v21 = 0u;
    v21[1] = 0u;
    sub_10011C0F0(v11, v20 + v19, &unk_100CB2CF0);
    sub_1005B037C(0, 0, v7, &unk_100A59650, v20);
  }

  else
  {
LABEL_6:
    sub_1004E1C1C();
  }

  return sub_100018198(v14, &unk_100CB2CF0);
}

uint64_t sub_1004E1514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 + *(type metadata accessor for LocationComponentBackgroundConfiguration(0) + 20));
  v11 = *v10;
  v33 = v10[1];
  v34 = v11;
  v32 = *(v10 + 32);
  type metadata accessor for LocationComponentContainerViewModel();
  v12 = type metadata accessor for LocationComponentContainerBackgroundView(0);
  sub_1001993DC();
  v13 = type metadata accessor for LocationComponentContainerView(0);
  v14 = v13[8];
  v15 = *(a2 + v13[7]);
  v16 = v12[11];
  v17 = type metadata accessor for Location.Identifier();
  (*(*(v17 - 8) + 16))(a3 + v16, a2 + v14, v17);
  v18 = *(a2 + v13[9]);
  v19 = a2 + v13[27];
  v20 = *v19;
  LODWORD(v13) = *(v19 + 8);

  if (v13 == 1)
  {
    v21 = v20;
  }

  else
  {
    sub_10022BF9C(v20, 0);
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v20, 0);
    (*(v7 + 8))(v9, v6);
    v21 = v35;
  }

  *a3 = swift_getKeyPath();
  *(a3 + 8) = 0;
  *(a3 + 16) = swift_getKeyPath();
  *(a3 + 24) = 0;
  v23 = v12[6];
  *(a3 + v23) = swift_getKeyPath();
  sub_10022C350(&qword_100CABDD0);
  swift_storeEnumTagMultiPayload();
  v24 = a3 + v12[8];
  *v24 = swift_getKeyPath();
  *(v24 + 8) = 0;
  v25 = v12[9];
  *(a3 + v25) = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  *(a3 + v12[10]) = v15;
  *(a3 + v12[12]) = v18;
  *(a3 + v12[13]) = v21;
  v26 = a3 + v12[14];
  v27 = v33;
  *v26 = v34;
  *(v26 + 16) = v27;
  *(v26 + 32) = v32;
  KeyPath = swift_getKeyPath();
  result = sub_10022C350(&qword_100CC0A68);
  v30 = a3 + *(result + 36);
  *v30 = KeyPath;
  *(v30 + 8) = 0;
  return result;
}

uint64_t sub_1004E1868@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CA5730);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = type metadata accessor for AttributedString();
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = type metadata accessor for LocationComponentViewModel();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for LocationComponentContainerAccessibilityModifier(0);
  v13 = *(v12 + 28);
  *&a1[v13] = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  sub_1001993DC();
  type metadata accessor for LocationComponentContainerViewModel();
  sub_1001993DC();
  v14 = 1 << swift_getEnumCaseMultiPayload();
  if ((v14 & 0x7CC55) != 0)
  {
    sub_100192034();
    *a1 = 0;
    sub_100868930(v4);
    if (sub_100024D10(v4, 1, v5) != 1)
    {
      v20 = v27;
      (*(v27 + 32))(v10, v4, v5);
      (*(v20 + 16))(v7, v10, v5);
      v16 = Text.init(_:)();
      v17 = v21;
      v23 = v22;
      v19 = v24;
      sub_100192034();
      result = (*(v20 + 8))(v10, v5);
      v18 = v23 & 1;
      goto LABEL_9;
    }

    sub_100192034();
    result = sub_100018198(v4, &qword_100CA5730);
  }

  else
  {
    if ((v14 & 0x23AA) != 0)
    {
      sub_100192034();
    }

    *a1 = 1;
    result = sub_100192034();
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
LABEL_9:
  v25 = &a1[*(v12 + 24)];
  *v25 = v16;
  v25[1] = v17;
  v25[2] = v18;
  v25[3] = v19;
  return result;
}

void sub_1004E1C1C()
{
  sub_100040DC8();
  v6 = v0;
  v25 = v7;
  sub_1000B7B8C();
  v8 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v10 = v9;
  __chkstk_darwin(v11);
  sub_1000037D8();
  sub_1000426CC();
  v12 = sub_10022C350(&qword_100CC0A50);
  sub_100003810(v12);
  sub_100003828();
  __chkstk_darwin(v13);
  sub_10001365C();
  v14 = type metadata accessor for LocationComponentAction(0);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  v19 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1005026A8();
  sub_1000302D8(v20, v21, v22);
  if (sub_100024D10(v0, 1, v14) == 1)
  {
    sub_100018198(v0, &qword_100CC0A50);
  }

  else
  {
    sub_1001AD070();
    [objc_opt_self() setFrameStallSkipRequest:1];
    static os_signpost_type_t.event.getter();
    sub_10000C70C(0, &qword_100CA2E40);
    v23 = OS_os_log.init(subsystem:category:)();
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:)();

    (*(v10 + 8))(v1, v8);
    type metadata accessor for LocationComponentContainerView(0);
    v24 = *(v19 + 20);
    v26[0] = v5;
    v26[1] = v4;
    v26[2] = v3;
    v26[3] = v2;
    v27 = 0;
    sub_10078CE20(v6 + v24, v18, v26, v25);
    sub_100192034();
  }

  sub_100040CB4();
}

void sub_1004E1EC8(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v3 = type metadata accessor for DateInterval();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationComponentContainerView(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v11 = sub_10022C350(&qword_100CA3538);
  __chkstk_darwin(v11 - 8);
  v13 = &v17 - v12;
  if (*(a2 + *(v8 + 48)) == 1)
  {
    static TaskPriority.utility.getter();
    v14 = type metadata accessor for TaskPriority();
    sub_10001B350(v13, 0, 1, v14);
    sub_1001993DC();
    (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v3);
    v15 = (v10 + *(v4 + 80) + ((*(v9 + 80) + 32) & ~*(v9 + 80))) & ~*(v4 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    sub_1001AD070();
    (*(v4 + 32))(v16 + v15, v6, v3);
    sub_10074A18C(0, 0, v13, &unk_100A594D8, v16);

    sub_100018198(v13, &qword_100CA3538);
  }
}

uint64_t sub_1004E217C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for Date();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_1004E2248, 0, 0);
}

uint64_t sub_1004E2248()
{
  sub_100003B08();
  v1 = type metadata accessor for LocationComponentContainerView(0);
  *(v0 + 64) = v1;
  *(v0 + 112) = *(v1 + 20);
  *(v0 + 72) = type metadata accessor for MainActor();
  *(v0 + 80) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  v2 = sub_1000E59D4();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1004E22E8()
{
  sub_100003B08();
  v1 = *(v0 + 112);
  v2 = *(v0 + 16);

  *(v0 + 88) = *(v2 + v1);
  v3 = sub_100013484();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1004E2354()
{
  sub_100003B08();
  *(v0 + 96) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  v1 = sub_1000E59D4();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1004E23D4()
{
  sub_100003B08();

  v0 = sub_100013484();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1004E2430()
{
  sub_100003B08();
  *(v0 + 116) = *(*(v0 + 64) + 32);
  *(v0 + 104) = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  v1 = sub_1000E59D4();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1004E24B8()
{
  sub_100003B08();

  v0 = sub_100013484();

  return _swift_task_switch(v0, v1, v2);
}

uint64_t sub_1004E2514()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  DateInterval.start.getter();
  DateInterval.end.getter();
  sub_1005026A8();
  sub_10078DBD8(v5, v6, v7, v8, v1, v3);
  v9 = *(v2 + 8);
  v10 = sub_10002C598();
  v9(v10);
  (v9)(v1, v4);

  sub_100003B14();

  return v11();
}

void sub_1004E2614(char a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = sub_10022C350(&unk_100CB2CF0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v15 = &v28 - v14;
  v16 = type metadata accessor for LocationComponentContainerView(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v19 = sub_10022C350(&qword_100CA3538);
  __chkstk_darwin(v19 - 8);
  v21 = &v28 - v20;
  if ((a1 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (qword_100CA24F0 != -1)
  {
    swift_once();
  }

  if (byte_100D907A8 == 1)
  {
    v22 = type metadata accessor for TaskPriority();
    sub_10001B350(v21, 1, 1, v22);
    sub_1001993DC();
    sub_1000302D8(a2, v15, &unk_100CB2CF0);
    type metadata accessor for MainActor();
    v23 = static MainActor.shared.getter();
    v24 = (v18 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = (*(v13 + 80) + v24 + 32) & ~*(v13 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    *(v26 + 24) = &protocol witness table for MainActor;
    sub_1001AD070();
    v27 = (v26 + v24);
    *v27 = a3;
    v27[1] = a4;
    v27[2] = a5;
    v27[3] = a6;
    sub_10011C0F0(v15, v26 + v25, &unk_100CB2CF0);
    sub_1005B037C(0, 0, v21, &unk_100A59648, v26);
  }

  else
  {
LABEL_6:
    sub_1004E1C1C();
  }
}

uint64_t sub_1004E294C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 56) = a9;
  *(v9 + 40) = a3;
  *(v9 + 48) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  *(v9 + 16) = a8;
  v10 = type metadata accessor for ContinuousClock();
  *(v9 + 64) = v10;
  *(v9 + 72) = *(v10 - 8);
  *(v9 + 80) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v9 + 88) = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v9 + 96) = v12;
  *(v9 + 104) = v11;

  return _swift_task_switch(sub_1004E2A4C, v12, v11);
}

uint64_t sub_1004E2A4C()
{
  static Duration.seconds(_:)();
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1004E2B2C;

  return sub_10074D6D0();
}

uint64_t sub_1004E2B2C()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = sub_10002C598();
  v4(v3);
  v5 = *(v2 + 104);
  v6 = *(v2 + 96);
  if (v0)
  {
    v7 = sub_1004E2D5C;
  }

  else
  {
    v7 = sub_1004E2CC0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1004E2CC0()
{

  sub_10001E728();
  sub_1004E1C1C();

  sub_100003B14();

  return v0();
}

uint64_t sub_1004E2D5C()
{
  sub_100003B08();

  sub_100003B14();

  return v0();
}

uint64_t sub_1004E2DC0()
{
  v1 = type metadata accessor for LocationComponentHeaderMetrics(0);
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for LocationComponentHeaderViewModel(0);
  __chkstk_darwin(v2);
  v3 = type metadata accessor for LocationComponentHeaderViewModel.Description(0);
  __chkstk_darwin(v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  type metadata accessor for LocationComponentContainerAccessibilityModifier(0);
  if (v6 != 1)
  {
    goto LABEL_6;
  }

  sub_1001993DC();
  if (swift_getEnumCaseMultiPayload() != 3 || (sub_1001AD070(), v5[*(v3 + 24)] != 1))
  {
    sub_100192034();
LABEL_6:
    sub_10019200C();
    v10 = sub_100426A40();
    v12 = v11;
    sub_100192034();
    v15 = v10;
    v16 = v12;
    sub_10002D5A4();
    return Text.init<A>(_:)();
  }

  v7 = &v5[*(v3 + 20)];
  v8 = *(v7 + 1);
  v15 = *v7;
  v16 = v8;
  sub_10002D5A4();

  v9 = Text.init<A>(_:)();
  sub_100192034();
  return v9;
}

uint64_t sub_1004E306C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v43 = a2;
  v44 = type metadata accessor for AccessibilityTraits();
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v41 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for AccessibilityChildBehavior();
  v4 = *(v37 - 8);
  __chkstk_darwin(v37);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10022C350(&qword_100CC1BA8);
  v7 = *(v36 - 8);
  __chkstk_darwin(v36);
  v9 = &v34 - v8;
  v35 = sub_10022C350(&qword_100CC1BB0);
  __chkstk_darwin(v35);
  v11 = &v34 - v10;
  v39 = sub_10022C350(&qword_100CC1BB8);
  __chkstk_darwin(v39);
  v40 = &v34 - v12;
  v13 = *v2;
  if (v13 == 1)
  {
    static AccessibilityChildBehavior.contain.getter();
  }

  else
  {
    static AccessibilityChildBehavior.ignore.getter();
  }

  sub_10022C350(&qword_100CC1BC0);
  sub_10023FBF4(&qword_100CC1BC8, &qword_100CC1BC0);
  View.accessibilityElement(children:)();
  (*(v4 + 8))(v6, v37);
  v14 = sub_1004E2DC0();
  v16 = v15;
  v18 = v17;
  v20 = v19 & 1;
  (*(v7 + 32))(v11, v9, v36);
  v21 = &v11[*(v35 + 36)];
  *v21 = v14;
  v21[1] = v16;
  v21[2] = v20;
  v21[3] = v18;
  v22 = &v2[*(type metadata accessor for LocationComponentContainerAccessibilityModifier(0) + 24)];
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v26 = v22[3];
  v27 = v40;
  sub_10011C0F0(v11, v40, &qword_100CC1BB0);
  v28 = (v27 + *(v39 + 36));
  *v28 = v23;
  v28[1] = v24;
  v28[2] = v25;
  v28[3] = v26;
  if (v13)
  {
    v45 = _swiftEmptyArrayStorage;
    sub_100148118(v23, v24, v25, v26);
    sub_100061A3C(&qword_100CB3368, &type metadata accessor for AccessibilityTraits);
    sub_10022C350(&unk_100CE17F0);
    sub_10023FBF4(&qword_100CB3370, &unk_100CE17F0);
    v29 = v41;
    v30 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v31 = v42;
  }

  else
  {
    sub_10022C350(&unk_100CE17E0);
    v31 = v42;
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100A2D320;
    sub_100148118(v23, v24, v25, v26);
    static AccessibilityTraits.isHeader.getter();
    static AccessibilityTraits.isButton.getter();
    v45 = v32;
    sub_100061A3C(&qword_100CB3368, &type metadata accessor for AccessibilityTraits);
    sub_10022C350(&unk_100CE17F0);
    sub_10023FBF4(&qword_100CB3370, &unk_100CE17F0);
    v29 = v41;
    v30 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  sub_1005001F0();
  View.accessibilityAddTraits(_:)();
  (*(v31 + 8))(v29, v30);
  return sub_100018198(v27, &qword_100CC1BB8);
}

uint64_t sub_1004E3640(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a4 & 0x100) != 0)
  {
    if (a4)
    {
      return a3;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100427C44(a3, a4, 0);
    (*(v9 + 8))(v11, v8);
    a3 = v17;
    if (v18)
    {
      return a3;
    }
  }

  if ((a2 & 1) == 0)
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(a1, 0);
    (*(v9 + 8))(v11, v8);
    LOBYTE(a1) = v16[15];
  }

  v14 = 32.0;
  if (a1)
  {
    v14 = 24.0;
  }

  *&a3 = *&a3 - v14;
  return a3;
}

double sub_1004E389C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 0x100) == 0)
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100427C44(a2, a3, 0);
    (*(v9 + 8))(v11, v8);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v13 = sub_10022C350(&qword_100CC1C00);
  (*(*(v13 - 8) + 16))(a4, a1, v13);
  v14 = (a4 + *(sub_10022C350(&qword_100CC1C08) + 36));
  v15 = v17[1];
  *v14 = v17[0];
  v14[1] = v15;
  result = *&v18;
  v14[2] = v18;
  return result;
}

double sub_1004E3AB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1004E3B84();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = sub_10022C350(&qword_100CC1D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(sub_10022C350(&qword_100CC1D68) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

double sub_1004E3B84()
{
  v24 = type metadata accessor for LocationComponentHeaderViewModel(0);
  __chkstk_darwin(v24);
  v23 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for EnvironmentValues();
  v2 = *(v22 - 8);
  __chkstk_darwin(v22);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CC0970);
  __chkstk_darwin(v5);
  v7 = &v20 - v6;
  v8 = type metadata accessor for LocationComponentHeaderMetrics(0);
  __chkstk_darwin(v8);
  v21 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  __chkstk_darwin(v11);
  v13 = &v20 - v12;
  v25 = v0;
  sub_1000302D8(v0, v7, &qword_100CC0970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001AD070();
  }

  else
  {
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v22);
  }

  v15 = v13[*(v8 + 32)];
  sub_100192034();
  v16 = 11.0;
  if ((v15 & 1) == 0)
  {
    sub_10019200C();
    sub_1001993DC();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100192034();
    sub_100192034();
    v16 = 0.0;
    if (EnumCaseMultiPayload != 4)
    {
      v18 = v21;
      sub_10019200C();
      v16 = *&v18[*(v8 + 20)];
      sub_100192034();
    }
  }

  return v16;
}

uint64_t sub_1004E3F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LocationComponentHeaderViewModel(0);
  __chkstk_darwin(v5);
  v6 = type metadata accessor for LocationComponentHeaderMetrics(0);
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for EnvironmentValues();
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = static Edge.Set.top.getter();
  v10 = *(type metadata accessor for AirQualityTopPaddingModifier(0) + 24);
  v30 = v2;
  v11 = v2 + v10;
  v12 = *v11;
  if (*(v11 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    v27 = v7;
    v14 = v13;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v12, 0);
    (*(v28 + 8))(v9, v27);
  }

  sub_10019200C();
  sub_1001993DC();
  swift_getEnumCaseMultiPayload();
  sub_100192034();
  sub_100192034();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = sub_10022C350(&qword_100CC2348);
  (*(*(v23 - 8) + 16))(a2, a1, v23);
  result = sub_10022C350(&qword_100CC2350);
  v25 = a2 + *(result + 36);
  *v25 = v29;
  *(v25 + 8) = v16;
  *(v25 + 16) = v18;
  *(v25 + 24) = v20;
  *(v25 + 32) = v22;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_1004E429C()
{
  v0 = type metadata accessor for LocationComponentHeaderMetrics(0);
  __chkstk_darwin(v0 - 8);
  sub_10022C350(&qword_100CA7300);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100A2C3F0;
  sub_10019200C();
  v2 = sub_100426A40();
  v4 = v3;
  sub_100192034();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  sub_10022C350(&qword_100CC2358);
  sub_10023FBF4(&qword_100CC2360, &qword_100CC2358);
  sub_10002D5A4();
  View.accessibilityInputLabels<A>(_:)();
}

uint64_t sub_1004E4400@<X0>(uint64_t a1@<X8>)
{
  sub_1001993DC();
  v2 = type metadata accessor for AirQualityComponentView();
  v3 = a1 + v2[5];
  *v3 = swift_getKeyPath();
  *(v3 + 8) = 0;
  v4 = a1 + v2[6];
  *v4 = swift_getKeyPath();
  *(v4 + 8) = 0;
  v5 = a1 + v2[7];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  v6 = v2[8];
  *(a1 + v6) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  v7 = a1 + v2[9];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  sub_10014AB54();
  ScaledValue.init(wrappedValue:step:)();
  v8 = *(sub_10022C350(&qword_100CC1958) + 36);
  *(a1 + v8) = swift_getKeyPath();
  sub_10022C350(&qword_100CC0970);
  swift_storeEnumTagMultiPayload();
  v9 = a1 + *(sub_10022C350(&qword_100CC1960) + 36);
  sub_1001993DC();
  v10 = type metadata accessor for AirQualityTopPaddingModifier(0);
  v11 = *(v10 + 20);
  *(v9 + v11) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v12 = v9 + *(v10 + 24);
  result = swift_getKeyPath();
  *v12 = result;
  *(v12 + 8) = 0;
  return result;
}

uint64_t sub_1004E4610@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v40 = a4;
  v9 = type metadata accessor for EnvironmentValues();
  v38 = *(v9 - 8);
  v39 = v9;
  __chkstk_darwin(v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CC1378);
  __chkstk_darwin(v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_10022C350(&qword_100CC1368);
  __chkstk_darwin(v15);
  v17 = &v38 - v16;
  sub_1004F0E70(v4, a1 & 1, a2, a3, v14);
  v18 = v4 + *(type metadata accessor for LocationComponentContainerContentView(0) + 24);
  v19 = (v18 + *(type metadata accessor for LocationComponentContainerViewModel() + 24));
  if (v19[1] != 1)
  {
    sub_10022C350(&qword_100CA4060);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100A2D320;
    v21 = static Edge.Set.top.getter();
    *(inited + 32) = v21;
    v22 = static Edge.Set.bottom.getter();
    *(inited + 33) = v22;
    Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v21)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v22)
    {
      Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    goto LABEL_9;
  }

  if ((*v19 - 1) < 2u || (v37 = static Edge.Set.bottom.getter(), v23 = Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)(), Edge.Set.init(rawValue:)() != v37))
  {
LABEL_9:
    v23 = Edge.Set.init(rawValue:)();
  }

  v24 = *(v5 + 16);
  if (*(v5 + 24) != 1)
  {

    static os_log_type_t.fault.getter();
    v25 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v24, 0);
    (*(v38 + 8))(v11, v39);
  }

  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_10011C0F0(v14, v17, &qword_100CC1378);
  v34 = &v17[*(v15 + 36)];
  *v34 = v23;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  v35 = v40;
  sub_10011C0F0(v17, v40, &qword_100CC1368);
  result = sub_10022C350(&qword_100CC11C0);
  *(v35 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}