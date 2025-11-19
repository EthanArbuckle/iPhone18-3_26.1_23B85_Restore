void sub_1000BAE60(uint64_t a1)
{
  sub_1000BBEBC(a1, v10, &unk_10018A520, &unk_100124310);
  v2 = v11;
  if (v11)
  {
    v3 = sub_100025734(v10, v11);
    v4 = *(v2 - 8);
    v5 = *(v4 + 64);
    __chkstk_darwin(v3);
    v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v4 + 8))(v7, v2);
    sub_1000086BC(v10);
  }

  else
  {
    v8 = 0;
  }

  v9 = String._bridgeToObjectiveC()();
  [v1 setObject:v8 forKey:v9];
  swift_unknownObjectRelease();
}

id sub_1000BAFD0()
{
  v0 = objc_allocWithZone(NSUserDefaults);
  result = sub_1000BB5B8(0xD00000000000001ELL, 0x8000000100138610);
  if (result)
  {
    qword_10018FBE0 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TimeZonePayload.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return sub_10000AFAC();
}

uint64_t TimeZonePayload.name.setter()
{
  sub_100096B04();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t TimeZonePayload.timeZone.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return sub_10000AFAC();
}

uint64_t TimeZonePayload.timeZone.setter()
{
  sub_100096B04();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t TimeZonePayload.classicIdentifier.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return sub_10000AFAC();
}

uint64_t TimeZonePayload.classicIdentifier.setter()
{
  sub_100096B04();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t static TimeZonePayload.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[4] == a2[4] && a1[5] == a2[5])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t TimeZonePayload.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  v5 = v0[4];
  v6 = v0[5];

  return String.hash(into:)();
}

Swift::Int TimeZonePayload.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000BB2C0()
{
  Hasher.init(_seed:)();
  TimeZonePayload.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1000BB300()
{
  result = qword_10018FBE8;
  if (!qword_10018FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FBE8);
  }

  return result;
}

uint64_t type metadata accessor for TimezoneViewModel()
{
  result = qword_10018FC60;
  if (!qword_10018FC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000BB3AC()
{
  v0 = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1000BB550(319, &qword_10018FC70, &type metadata accessor for AsyncStream);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1000BB550(319, &unk_10018FC78, &type metadata accessor for AsyncStream.Continuation);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = type metadata accessor for ObservationRegistrar();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1000BB550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, char *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ()[8]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_1000BB5B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

uint64_t sub_1000BB61C()
{
  v1 = sub_100003768(&qword_10018A898, &qword_10012D140);
  sub_100008780(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 48) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 40);

  (*(v3 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v7, v4 | 7);
}

uint64_t sub_1000BB6E8()
{
  v2 = *(sub_100003768(&qword_10018A898, &qword_10012D140) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  swift_task_alloc();
  sub_10004F4B0();
  *(v1 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_10003DBE0;
  v10 = sub_1000BBFFC();

  return sub_1000B8F08(v10, v11, v5, v6, v7, v12);
}

uint64_t sub_1000BB7EC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BB824()
{
  swift_weakDestroy();
  sub_1000BC054();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1000BB858()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000BB898()
{
  sub_10003DCD8();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  swift_task_alloc();
  sub_10004F4B0();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_10003D760;
  v7 = sub_1000BBFFC();

  return sub_1000B98CC(v7, v8, v3, v4);
}

uint64_t sub_1000BB93C()
{
  v1 = sub_100003768(&qword_10018A890, &unk_100124D30);
  sub_100008780(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7);

  return _swift_deallocObject(v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_1000BBA24(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100003768(&qword_10018A890, &unk_100124D30) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_10003DBE0;

  return sub_1000BA20C(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_1000BBB6C(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000B7438();
  *v1 = result;
  v1[1] = v3;
  return result;
}

unint64_t sub_1000BBBF8()
{
  result = qword_10018FD38;
  if (!qword_10018FD38)
  {
    type metadata accessor for TimezoneViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FD38);
  }

  return result;
}

uint64_t sub_1000BBC50(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000B7424();
  *v1 = result;
  v1[1] = v3;
  return result;
}

id sub_1000BBCDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000BA784();
}

uint64_t sub_1000BBCF8(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000B7630();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1000BBD6C(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000B77F4();
  *v1 = result & 1;
  return result;
}

BOOL sub_1000BBDD8(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000B9F0C();
  *v1 = result;
  return result;
}

uint64_t sub_1000BBE04(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1000BA8E0();
}

uint64_t sub_1000BBE4C(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000BAA98();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1000BBEBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(sub_100003768(a3, a4) - 8) + 16);
  v6 = sub_10000AFAC();
  v7(v6);
  return a2;
}

_OWORD *sub_1000BBF20(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1000BBF30()
{

  return swift_once();
}

uint64_t sub_1000BBF50(uint64_t a1)
{
  *(a1 + 8) = sub_1000B9B10;
  v2 = v1[9];
  v3 = v1[10];
  return v1[6];
}

uint64_t sub_1000BBF7C(uint64_t result)
{
  *(result + 8) = sub_1000B955C;
  v2 = *(v1 + 128);
  v3 = *(v1 + 112);
  return result;
}

uint64_t sub_1000BBFA4(uint64_t result)
{
  *(result + 8) = sub_1000BA3E8;
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  return result;
}

uint64_t sub_1000BC00C(uint64_t a1)
{

  return sub_100003CE8(a1, 1, 1, v1);
}

uint64_t sub_1000BC060()
{
  v1 = v0[12];
  result = v0[10];
  v3 = v0[8];
  v4 = *(v0[9] + 8);
  return result;
}

uint64_t sub_1000BC074()
{
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[7];
}

uint64_t sub_1000BC094(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v4 = a1;

  return sub_10009CACC(v3, v2, va);
}

uint64_t sub_1000BC0B4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000BC0F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000BC164()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);

  v3 = sub_1000BC2B4();
  v4 = *(v0 + 32);
  v9 = &type metadata for TrustedPhoneNumberStepProvider;
  v8 = v4;
  v7[0] = v2;
  v7[1] = v1;
  v10 = sub_1000BC544();
  v11 = 0;
  v12 = 0;
  v13 = v3;
  v14 = 0;
  v15 = 0;
  v6 = *v0;
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.projectedValue.getter();
  sub_100003768(&unk_1001893B0, &unk_100121480);
  type metadata accessor for AppleAccountSignInView(0);
  sub_100004CE4();
  sub_1000BC598();
  View.sheet<A>(isPresented:onDismiss:content:)();

  return sub_10001D724(v7, &unk_1001893B0, &unk_100121480);
}

uint64_t sub_1000BC2B4()
{
  v1 = type metadata accessor for ActionInfoType(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ActionInfo(0);
  *v4 = 0;
  swift_storeEnumTagMultiPayload();
  v5 = *v0;
  v10 = v0[1];
  v11 = v5;
  v6 = swift_allocObject();
  v7 = v0[1];
  *(v6 + 16) = *v0;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v0 + 32);
  sub_100006578(&v11, v9, &qword_100189B68, &qword_1001239F0);
  sub_10004010C(&v10, v9);
  return sub_1000ED69C(v4, 1, sub_1000BC678, v6);
}

uint64_t sub_1000BC3CC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_100003768(&qword_10018B310, &qword_10012A550);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for AppleAccountSignInView(0);
  v3 = (a1 + *(result + 20));
  *v3 = nullsub_1;
  v3[1] = 0;
  return result;
}

uint64_t sub_1000BC444(__int128 *a1)
{
  v3 = *a1;
  v2[1] = *a1;
  v4 = *(&v3 + 1);
  sub_100006578(&v4, v2, qword_10018FD68, &unk_10012F2F0);
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.getter();
  v2[0] = v3;
  State.wrappedValue.setter();
  return sub_10001D724(&v3, &qword_100189B68, &qword_1001239F0);
}

uint64_t sub_1000BC508()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 32);
  return sub_1000BC164();
}

unint64_t sub_1000BC544()
{
  result = qword_10018FD60;
  if (!qword_10018FD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FD60);
  }

  return result;
}

unint64_t sub_1000BC598()
{
  result = qword_10018B2C8;
  if (!qword_10018B2C8)
  {
    type metadata accessor for AppleAccountSignInView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018B2C8);
  }

  return result;
}

uint64_t sub_1000BC638()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1000BC680()
{
  sub_100004D48(&unk_1001893B0, &unk_100121480);
  type metadata accessor for AppleAccountSignInView(255);
  sub_100004CE4();
  sub_1000BC598();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000BC704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for FlowViewDataProvider(0);
  sub_1000C0BE8();
  sub_1000BFFDC(v4, v5);
  result = Environment.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v7 & 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = a1;
  return result;
}

uint64_t sub_1000BC784()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000BC7C0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000BC7F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000BC844()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = sub_100008780(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 8);
  v9 = *v0;
  v14 = *v0;
  v10 = v15;

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001D724(&v14, &qword_100189B30, &unk_100123800);
    (*(v4 + 8))(v8, v1);
    return v13[1];
  }

  return v9;
}

uint64_t sub_1000BC994@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v184 = a2;
  sub_100004D48(&qword_10018FDF0, &qword_10012D490);
  v183 = a1[5];
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional();
  type metadata accessor for ContentMessageView();
  type metadata accessor for _ConditionalContent();
  v176 = type metadata accessor for _ConditionalContent();
  v3 = type metadata accessor for Group();
  sub_10003DBE4();
  v182 = v4;
  v6 = *(v5 + 64);
  sub_10000ED78();
  __chkstk_darwin(v7);
  sub_10003DC84();
  v181 = v8;
  v208 = a1;
  v9 = a1[2];
  v10 = sub_1000BFE78();
  v180 = a1[8];
  v247 = &protocol witness table for AnyView;
  v248 = v180;
  WitnessTable = swift_getWitnessTable();
  sub_1000C0CA0();
  v11 = swift_getWitnessTable();
  sub_1000C0C88();
  v244 = v11;
  v245 = sub_1000BFFDC(v12, v13);
  v242 = v10;
  v243 = swift_getWitnessTable();
  v175 = swift_getWitnessTable();
  v241 = v175;
  sub_1000C0C58();
  swift_getWitnessTable();
  sub_1000C0C3C();
  v14 = v9;
  v15 = swift_getWitnessTable();
  v227 = v3;
  v156 = v3;
  v157 = v11;
  v228 = v14;
  v16 = v14;
  v201 = v14;
  v229 = v11;
  v230 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_10003DBE4();
  v173 = v17;
  v19 = *(v18 + 64);
  sub_10000ED78();
  __chkstk_darwin(v20);
  sub_10003DC84();
  v170 = v21;
  v22 = type metadata accessor for ModifiedContent();
  sub_100008780(v22);
  v172 = v23;
  v25 = *(v24 + 64);
  sub_10000ED78();
  __chkstk_darwin(v26);
  sub_10003DC84();
  v167 = v27;
  v210 = v208[4];
  v160 = v22;
  v28 = type metadata accessor for ModifiedContent();
  sub_100008780(v28);
  v178 = v29;
  v31 = *(v30 + 64);
  sub_10000ED78();
  __chkstk_darwin(v32);
  sub_10003DC84();
  v166 = v33;
  v227 = v3;
  v228 = v16;
  v229 = v11;
  v230 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v212 = sub_1000BFF34();
  v239 = OpaqueTypeConformance2;
  v240 = v212;
  v202 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v159 = swift_getWitnessTable();
  v209 = v208[7];
  *&v211 = *(v209 + 8);
  v237 = v159;
  v238 = v211;
  v227 = v28;
  v161 = v28;
  v162 = swift_getWitnessTable();
  v228 = v162;
  v34 = swift_getOpaqueTypeMetadata2();
  sub_10003DBE4();
  v174 = v35;
  v37 = *(v36 + 64);
  sub_10000ED78();
  __chkstk_darwin(v38);
  sub_10003DC84();
  v198 = v39;
  v227 = v34;
  v164 = v34;
  v165 = swift_getOpaqueTypeConformance2();
  v228 = v165;
  v40 = swift_getOpaqueTypeMetadata2();
  sub_100008780(v40);
  v177 = v41;
  v43 = *(v42 + 64);
  sub_10000ED78();
  __chkstk_darwin(v44);
  sub_10003DC84();
  v199 = v45;
  v227 = v40;
  v153 = v40;
  v154 = swift_getOpaqueTypeConformance2();
  v228 = v154;
  v206 = &opaque type descriptor for <<opaque return type of View.onLoadAndForeground(perform:)>>;
  sub_1000C0D50();
  v207 = swift_getOpaqueTypeMetadata2();
  sub_100008780(v207);
  v179 = v46;
  v48 = *(v47 + 64);
  sub_10000ED78();
  __chkstk_darwin(v49);
  sub_10003DC84();
  v169 = v50;
  v187 = type metadata accessor for OptionInfoItem();
  sub_100004D48(&qword_10018FE10, &qword_10012D498);
  v186 = type metadata accessor for FlowViewDataProvider(255);
  sub_1000BFF88();
  sub_1000C0BE8();
  v185 = sub_1000BFFDC(v51, v52);
  swift_getOpaqueTypeConformance2();
  v200 = v15;
  sub_1000C0D44();
  swift_getOpaqueTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for ModifiedContent();
  sub_1000C0D34();
  v53 = type metadata accessor for ModifiedContent();
  v54 = swift_getOpaqueTypeConformance2();
  sub_1000C0CB8();
  v197 = sub_1000BFFDC(v55, v56);
  v235 = swift_getOpaqueTypeConformance2();
  v236 = v212;
  v233 = swift_getWitnessTable();
  v234 = v211;
  v195 = v53;
  v196 = swift_getWitnessTable();
  v227 = v207;
  v228 = v187;
  v229 = v53;
  v230 = v54;
  v152 = v54;
  v231 = v197;
  v232 = v196;
  sub_1000C0C70();
  v205 = v57;
  sub_1000C0D50();
  v204 = swift_getOpaqueTypeMetadata2();
  sub_100008780(v204);
  v168 = v58;
  v60 = *(v59 + 64);
  sub_10000ED78();
  __chkstk_darwin(v61);
  sub_10003DC84();
  v194 = v62;
  v63 = v208[3];
  v208 = v208[6];
  v193 = v208[1];
  v64 = *(v193 + 16);
  v203 = v63;
  sub_1000C0D44();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1000C0D44();
  swift_getOpaqueTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for ModifiedContent();
  v206 = type metadata accessor for ModifiedContent();
  v227 = v207;
  v228 = v187;
  v229 = v53;
  v230 = v54;
  v231 = v197;
  v232 = v196;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = *(v193 + 8);
  v191 = v65;
  v192 = v66;
  v225 = swift_getOpaqueTypeConformance2();
  v226 = v212;
  v223 = swift_getWitnessTable();
  v224 = v211;
  v190 = swift_getWitnessTable();
  v227 = v204;
  v228 = v203;
  v229 = v206;
  v230 = v65;
  v231 = v66;
  v232 = v190;
  sub_1000C0D50();
  v193 = swift_getOpaqueTypeMetadata2();
  sub_100008780(v193);
  v155 = v67;
  v69 = *(v68 + 64);
  sub_10000ED78();
  __chkstk_darwin(v70);
  sub_10003DC84();
  v189 = v71;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = *(swift_getAssociatedConformanceWitness() + 8);
  v74 = *(v73 + 16);
  v188 = AssociatedTypeWitness;
  sub_1000C0D44();
  v151 = swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  v75 = v201;
  sub_1000C0D44();
  swift_getOpaqueTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for ModifiedContent();
  v186 = type metadata accessor for ModifiedContent();
  v76 = v203;
  v227 = v204;
  v228 = v203;
  v229 = v206;
  v230 = v65;
  v231 = v66;
  v232 = v190;
  v77 = swift_getOpaqueTypeConformance2();
  v149 = *(v73 + 8);
  v150 = v77;
  v221 = swift_getOpaqueTypeConformance2();
  v222 = v212;
  v219 = swift_getWitnessTable();
  v220 = v211;
  v147 = swift_getWitnessTable();
  v227 = v193;
  v228 = v188;
  v229 = v186;
  v230 = v77;
  v231 = v149;
  v232 = v147;
  sub_1000C0D50();
  v151 = swift_getOpaqueTypeMetadata2();
  v78 = sub_100008780(v151);
  v185 = v79;
  v81 = *(v80 + 64);
  v82 = __chkstk_darwin(v78);
  v146 = &v145 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v82);
  v148 = &v145 - v84;
  *&v85 = v75;
  *(&v85 + 1) = v76;
  *&v86 = v210;
  *(&v86 + 1) = v183;
  v211 = v86;
  v212 = v85;
  v213 = v85;
  v214 = v86;
  v87 = v208;
  v215 = v208;
  v216 = v209;
  v217 = v180;
  v88 = v163;
  v218 = v163;
  Group<A>.init(content:)();
  v89 = v88[2];
  v90 = v170;
  View.environment<A>(_:)();
  v91 = sub_1000C0CE4();
  v92(v91);
  v93 = v167;
  v94 = OpaqueTypeMetadata2;
  sub_10007DF6C(0);
  (*(v173 + 8))(v90, v94);
  v201 = *(*v89 + 128);
  v95 = v166;
  v96 = v160;
  View.modifier<A>(_:)();
  (*(v172 + 8))(v93, v96);
  v249 = *v88;
  v250 = *(v88 + 8);
  v98 = v88[4];
  v202 = v88[3];
  v97 = v202;
  sub_1000C0D1C();
  v99 = swift_allocObject();
  sub_1000C0C2C(v99);
  v100 = v209;
  *(v101 + 48) = v87;
  *(v101 + 56) = v100;
  sub_1000C0BB8(v101);
  v102 = v89;

  v103 = v98;
  sub_100006568(v97);
  v104 = v161;
  View.onLoad(perform:)();

  (*(v178 + 8))(v95, v104);
  sub_1000C0D1C();
  v105 = swift_allocObject();
  sub_1000C0C2C(v105);
  v106 = v208;
  *(v107 + 48) = v208;
  *(v107 + 56) = v100;
  sub_1000C0BB8(v107);
  v183 = v102;

  v200 = v103;
  sub_100006568(v202);
  View.onForeground(perform:)();

  v108 = sub_1000C0CE4();
  v109(v108);
  sub_1000C0D1C();
  v110 = swift_allocObject();
  sub_1000C0C2C(v110);
  *(v111 + 48) = v106;
  *(v111 + 56) = v100;
  sub_1000C0BB8(v111);

  v112 = v202;
  sub_100006568(v202);
  v113 = v169;
  v114 = v153;
  v115 = v199;
  View.onLoadAndForeground(perform:)();

  (*(v177 + 8))(v115, v114);
  swift_checkMetadataState();
  sub_1000C0D1C();
  v116 = swift_allocObject();
  sub_1000C0C2C(v116);
  v118 = v208;
  v117 = v209;
  *(v119 + 48) = v208;
  *(v119 + 56) = v117;
  sub_1000C0BB8(v119);
  v120 = v183;

  sub_100006568(v112);
  swift_checkMetadataState();
  v121 = v207;
  View.navigationDestination<A, B>(for:destination:)();

  (*(v179 + 8))(v113, v121);
  v122 = *(v120 + qword_1001A57E8);
  sub_1000C0D1C();
  v123 = swift_allocObject();
  sub_1000C0C2C(v123);
  v124 = v209;
  *(v125 + 48) = v118;
  *(v125 + 56) = v124;
  sub_1000C0BB8(v125);

  v126 = v202;
  sub_100006568(v202);
  swift_checkMetadataState();
  View.navigationDestination<A, B>(for:destination:)();

  v127 = sub_1000C0CE4();
  v128(v127);
  (*(v124 + 32))(v210, v124);
  sub_1000C0D1C();
  v129 = swift_allocObject();
  sub_1000C0C2C(v129);
  *(v130 + 48) = v208;
  *(v130 + 56) = v124;
  sub_1000C0BB8(v130);

  sub_100006568(v126);
  v131 = swift_checkMetadataState();
  v132 = swift_checkMetadataState();
  v133 = v147;
  v134 = v146;
  v135 = v193;
  v137 = v149;
  v136 = v150;
  View.navigationDestination<A, B>(for:destination:)();

  v138 = sub_1000C0CE4();
  v139(v138);
  v227 = v135;
  v228 = v131;
  v229 = v132;
  v230 = v136;
  v231 = v137;
  v232 = v133;
  v140 = swift_getOpaqueTypeConformance2();
  v141 = v148;
  v142 = v151;
  sub_1000C6A00(v134, v151, v140);
  v143 = *(v185 + 8);
  v143(v134, v142);
  sub_1000C6A00(v141, v142, v140);
  return (v143)(v141, v142);
}

uint64_t sub_1000BDBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, void *a3@<X7>, uint64_t a4@<X8>)
{
  v114 = a3;
  v115 = a4;
  v6 = type metadata accessor for ContentMessageView();
  v101 = *(v6 - 8);
  v7 = *(v101 + 64);
  v8 = __chkstk_darwin(v6);
  v100 = &v93[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = *(a2 - 8);
  v10 = *(v98 + 64);
  v11 = __chkstk_darwin(v8);
  v97 = &v93[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v96 = &v93[-v13];
  v116 = type metadata accessor for _ConditionalContent();
  v14 = type metadata accessor for Optional();
  v103 = *(v14 - 8);
  v15 = *(v103 + 64);
  v16 = __chkstk_darwin(v14);
  v99 = &v93[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v102 = &v93[-v18];
  v113 = v19;
  v106 = v6;
  v20 = type metadata accessor for _ConditionalContent();
  v107 = *(v20 - 8);
  v21 = *(v107 + 64);
  v22 = __chkstk_darwin(v20);
  v105 = &v93[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v104 = &v93[-v24];
  v25 = sub_100003768(&qword_10018FE28, &unk_10012D4D0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v93[-v27];
  v29 = type metadata accessor for FlowProgressView();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v32 = &v93[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v33 = sub_100003768(&qword_10018FDF0, &qword_10012D490);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = &v93[-v35];
  v108 = v20;
  v109 = v37;
  v38 = type metadata accessor for _ConditionalContent();
  v111 = *(v38 - 8);
  v112 = v38;
  v39 = *(v111 + 64);
  v40 = __chkstk_darwin(v38);
  v110 = &v93[-v41];
  v42 = a1;
  v43 = *(a1 + 16);
  v44 = (*(*v43 + 448))(v40);
  if (v45 <= 0xFDu)
  {
    v95 = v44;
    v94 = v45;
    if (v45)
    {
      v47 = v114;
      v48 = v104;
      if (qword_100188230 != -1)
      {
        swift_once();
      }

      v49 = qword_1001A57A8;
      v50 = v100;
      ContentMessageView.init(with:maxWidth:)();
      v127[15] = &protocol witness table for AnyView;
      v127[16] = v47;
      v127[14] = swift_getWitnessTable();
      swift_getWitnessTable();
      sub_1000BFFDC(&qword_10018FE00, &type metadata accessor for ContentMessageView);
      v51 = v106;
      sub_1000C2B40();
      (*(v101 + 8))(v50, v51);
      v52 = v47;
      v53 = v48;
    }

    else
    {
      v54 = (*(*v43 + 528))();
      v55 = v114;
      if (v54)
      {
        v123 = v54;
        v56 = v99;
        sub_1000C2A90();

        sub_100003CE8(v56, 0, 1, v116);
        v125 = &protocol witness table for AnyView;
        v57 = &v125;
      }

      else
      {
        v70 = *(a1 + 24);
        v56 = v99;
        if (v70)
        {
          v71 = *(v42 + 32);

          v73 = v97;
          v70(v72);
          v74 = v96;
          sub_1000C6A00(v73, a2, v55);
          v75 = *(v98 + 8);
          v75(v73, a2);
          sub_1000C6A00(v74, a2, v55);
          sub_1000C2B40();
          sub_1000068F8(v70);
          v75(v73, a2);
          v75(v74, a2);
          sub_100003CE8(v56, 0, 1, v116);
          v126[0] = &protocol witness table for AnyView;
          v57 = v126;
        }

        else
        {
          sub_100003CE8(v99, 1, 1, v116);
          v127[0] = &protocol witness table for AnyView;
          v57 = v127;
        }
      }

      v57[1] = v55;
      swift_getWitnessTable();
      v76 = v102;
      sub_10000625C(v56, v102);
      v77 = *(v103 + 8);
      v78 = v113;
      v77(v56, v113);
      v126[3] = &protocol witness table for AnyView;
      v126[4] = v55;
      v126[2] = swift_getWitnessTable();
      WitnessTable = swift_getWitnessTable();
      sub_1000C6A00(v76, v78, WitnessTable);
      sub_1000BFFDC(&qword_10018FE00, &type metadata accessor for ContentMessageView);
      v52 = v55;
      v53 = v104;
      sub_1000C2A90();
      v77(v56, v78);
      v77(v76, v78);
    }

    v80 = v108;
    v127[12] = &protocol witness table for AnyView;
    v127[13] = v52;
    v127[11] = swift_getWitnessTable();
    v81 = swift_getWitnessTable();
    v82 = sub_1000BFFDC(&qword_10018FE00, &type metadata accessor for ContentMessageView);
    v127[9] = v81;
    v127[10] = v82;
    v83 = swift_getWitnessTable();
    v84 = v105;
    sub_1000C6A00(v53, v80, v83);
    sub_1000BFE78();
    v69 = v110;
    sub_1000C2B40();
    sub_1000955BC(v95, v94);
    v85 = *(v107 + 8);
    v85(v84, v80);
    v85(v53, v80);
    v66 = v52;
  }

  else
  {
    v46 = (*(*v43 + 424))(v44);
    if (v46)
    {
      *v28 = v46;
      swift_storeEnumTagMultiPayload();
      sub_1000BFFDC(&qword_100189260, type metadata accessor for FlowProgressView);
      _ConditionalContent<>.init(storage:)();
    }

    else
    {
      v58 = (*(*v43 + 328))();
      v60 = v59;
      v61 = (*(*v43 + 376))();
      v63 = v62;
      v122 = 0;
      State.init(wrappedValue:)();
      v64 = v124;
      v32[4] = v123;
      v32[5] = v64;
      v65 = v32 + *(v29 + 28);
      AccessibilityFocusState.init<>()();
      *v32 = v58;
      v32[1] = v60;
      v32[2] = v61;
      v32[3] = v63;
      sub_10002F15C(v32, v28);
      swift_storeEnumTagMultiPayload();
      sub_1000BFFDC(&qword_100189260, type metadata accessor for FlowProgressView);
      _ConditionalContent<>.init(storage:)();
      sub_10002F1C0(v32);
    }

    sub_1000BFE78();
    v66 = v114;
    v120 = &protocol witness table for AnyView;
    v121 = v114;
    v119 = swift_getWitnessTable();
    v67 = swift_getWitnessTable();
    v68 = sub_1000BFFDC(&qword_10018FE00, &type metadata accessor for ContentMessageView);
    v117 = v67;
    v118 = v68;
    swift_getWitnessTable();
    v69 = v110;
    sub_1000C2A90();
    sub_10001D724(v36, &qword_10018FDF0, &qword_10012D490);
  }

  v86 = sub_1000BFE78();
  v127[7] = &protocol witness table for AnyView;
  v127[8] = v66;
  v127[6] = swift_getWitnessTable();
  v87 = swift_getWitnessTable();
  v88 = sub_1000BFFDC(&qword_10018FE00, &type metadata accessor for ContentMessageView);
  v127[4] = v87;
  v127[5] = v88;
  v89 = swift_getWitnessTable();
  v127[2] = v86;
  v127[3] = v89;
  v90 = v112;
  v91 = swift_getWitnessTable();
  sub_1000C6A00(v69, v90, v91);
  return (*(v111 + 8))(v69, v90);
}

uint64_t sub_1000BE958(uint64_t a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v6 = (**(a1 + 16) + 568);
  v7 = (*v6 + **v6);
  v3 = (*v6)[1];
  v4 = swift_task_alloc();
  v1[4] = v4;
  *v4 = v1;
  v4[1] = sub_1000BEAA4;

  return v7();
}

uint64_t sub_1000BEAA4()
{
  sub_100025A94();
  sub_10004622C();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_10000870C();
  *v6 = v5;

  dispatch thunk of Actor.unownedExecutor.getter();
  v7 = sub_100062F00();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000BEBC8()
{
  sub_100025A94();
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000BEC24(uint64_t a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v6 = (**(a1 + 16) + 576);
  v7 = (*v6 + **v6);
  v3 = (*v6)[1];
  v4 = swift_task_alloc();
  v1[4] = v4;
  *v4 = v1;
  v4[1] = sub_1000BED70;

  return v7();
}

uint64_t sub_1000BED70()
{
  sub_100025A94();
  sub_10004622C();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  sub_10000870C();
  *v6 = v5;

  dispatch thunk of Actor.unownedExecutor.getter();
  v7 = sub_100062F00();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000BEE94(uint64_t a1)
{
  v1[2] = type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v6 = (**(a1 + 16) + 584);
  v7 = (*v6 + **v6);
  v3 = (*v6)[1];
  v4 = swift_task_alloc();
  v1[4] = v4;
  *v4 = v1;
  v4[1] = sub_1000BED70;

  return v7();
}

uint64_t sub_1000BEFE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v41 = a8;
  v40 = a7;
  v39 = a6;
  v38 = a4;
  v42 = a2;
  v43 = a9;
  v37 = a10;
  v34 = sub_100004D48(&qword_10018FE10, &qword_10012D498);
  type metadata accessor for FlowViewDataProvider(255);
  v36 = sub_1000BFF88();
  sub_1000BFFDC(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v56 = v34;
  v57 = a3;
  v58 = OpaqueTypeConformance2;
  v59 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v35 = type metadata accessor for ModifiedContent();
  v13 = type metadata accessor for ModifiedContent();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &WitnessTable - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &WitnessTable - v19;
  v21 = *a1;
  swift_checkMetadataState();
  v56 = Environment.init<A>(_:)();
  LOBYTE(v57) = v22 & 1;
  sub_10004FC38(v21 + OBJC_IVAR____TtC11SupportFlow14OptionInfoItem_nextStep, &v58);
  v55 = v21;
  type metadata accessor for OptionInfoItem();

  State.init(wrappedValue:)();
  v60 = v48;
  v61 = v49;
  v48 = a3;
  v49 = v38;
  v50 = a5;
  v51 = v39;
  v23 = v41;
  v52 = v40;
  v53 = v41;
  v54 = v37;
  v24 = type metadata accessor for FlowStackView();
  sub_1000BF3DC(&v56, v24, &type metadata for OptionInfoItemView, v36, v18);
  sub_1000C03F4(&v56);
  v56 = v34;
  v57 = a3;
  v58 = OpaqueTypeConformance2;
  v59 = WitnessTable;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_1000BFF34();
  v46 = v25;
  v47 = v26;
  v27 = swift_getWitnessTable();
  v28 = *(v23 + 8);
  v44 = v27;
  v45 = v28;
  v29 = swift_getWitnessTable();
  sub_1000C6A00(v18, v13, v29);
  v30 = *(v14 + 8);
  v30(v18, v13);
  sub_1000C6A00(v20, v13, v29);
  return (v30)(v20, v13);
}

uint64_t sub_1000BF3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a2;
  v42 = a1;
  v43 = a5;
  v46 = a3;
  v47 = type metadata accessor for FlowViewDataProvider(255);
  v34 = sub_1000BFFDC(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
  v35 = v46;
  v33 = v47;
  v48 = a4;
  v49 = v34;
  v8 = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v40 = *(OpaqueTypeMetadata2 - 8);
  v10 = *(v40 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v12 = &WitnessTable - v11;
  v13 = *(a2 + 16);
  v48 = v8;
  v49 = v34;
  v36 = &opaque type descriptor for <<opaque return type of View.environment<A>(_:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = OpaqueTypeConformance2;
  WitnessTable = swift_getWitnessTable();
  v46 = OpaqueTypeMetadata2;
  v47 = v13;
  v48 = OpaqueTypeConformance2;
  v49 = WitnessTable;
  v15 = swift_getOpaqueTypeMetadata2();
  v38 = *(v15 - 8);
  v16 = *(v38 + 64);
  __chkstk_darwin(v15);
  v18 = &WitnessTable - v17;
  v37 = type metadata accessor for ModifiedContent();
  v39 = *(v37 - 8);
  v19 = *(v39 + 64);
  __chkstk_darwin(v37);
  v21 = &WitnessTable - v20;
  sub_1000BC844();
  swift_checkMetadataState();
  View.environment<A>(_:)();

  v22 = *(v5 + 16);
  v24 = WitnessTable;
  v23 = v32;
  View.environment<A>(_:)();
  (*(v40 + 8))(v12, OpaqueTypeMetadata2);
  v46 = OpaqueTypeMetadata2;
  v47 = v13;
  v48 = v23;
  v49 = v24;
  v25 = swift_getOpaqueTypeConformance2();
  sub_10007DF6C(0);
  (*(v38 + 8))(v18, v15);
  v26 = *(*v22 + 128);
  v27 = *(v41 + 32);
  v28 = sub_1000BFF34();
  v44 = v25;
  v45 = v28;
  v29 = v37;
  swift_getWitnessTable();
  View.modifier<A>(_:)();
  return (*(v39 + 8))(v21, v29);
}

uint64_t sub_1000BF7D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v37 = a6;
  v38 = a8;
  v39 = a1;
  v40 = a2;
  v41 = a9;
  v36 = a10;
  type metadata accessor for FlowViewDataProvider(255);
  v14 = *(*(a7 + 8) + 16);
  sub_1000BFFDC(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = swift_getWitnessTable();
  v46 = OpaqueTypeMetadata2;
  v47 = a3;
  v48 = OpaqueTypeConformance2;
  v49 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v35 = type metadata accessor for ModifiedContent();
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &WitnessTable - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &WitnessTable - v21;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  v49 = v37;
  v50 = a7;
  v23 = v38;
  v51 = v38;
  v52 = v36;
  v24 = type metadata accessor for FlowStackView();
  sub_1000BF3DC(v39, v24, a4, v14, v20);
  v46 = OpaqueTypeMetadata2;
  v47 = a3;
  v48 = OpaqueTypeConformance2;
  v49 = WitnessTable;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_1000BFF34();
  v44 = v25;
  v45 = v26;
  v27 = swift_getWitnessTable();
  v28 = *(v23 + 8);
  v42 = v27;
  v43 = v28;
  v29 = swift_getWitnessTable();
  sub_1000C6A00(v20, v15, v29);
  v30 = *(v16 + 8);
  v30(v20, v15);
  sub_1000C6A00(v22, v15, v29);
  return (v30)(v22, v15);
}

uint64_t sub_1000BFACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v39 = a6;
  v40 = a7;
  v41 = a1;
  v42 = a2;
  v43 = a9;
  v37 = a10;
  v38 = a4;
  v36 = a8;
  swift_getAssociatedTypeWitness();
  type metadata accessor for FlowViewDataProvider(255);
  v12 = *(*(swift_getAssociatedConformanceWitness() + 8) + 16);
  sub_1000BFFDC(&qword_1001886D0, type metadata accessor for FlowViewDataProvider);
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = a3;
  WitnessTable = swift_getWitnessTable();
  v48 = OpaqueTypeMetadata2;
  v49 = a3;
  v50 = OpaqueTypeConformance2;
  v51 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  v35 = type metadata accessor for ModifiedContent();
  v14 = type metadata accessor for ModifiedContent();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &WitnessTable - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &WitnessTable - v20;
  v48 = v13;
  v49 = v38;
  v50 = a5;
  v51 = v39;
  v22 = v36;
  v52 = v40;
  v53 = v36;
  v54 = v37;
  v23 = type metadata accessor for FlowStackView();
  v24 = swift_checkMetadataState();
  sub_1000BF3DC(v41, v23, v24, v12, v19);
  v48 = OpaqueTypeMetadata2;
  v49 = v13;
  v50 = OpaqueTypeConformance2;
  v51 = WitnessTable;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_1000BFF34();
  v46 = v25;
  v47 = v26;
  v27 = swift_getWitnessTable();
  v28 = *(v22 + 8);
  v44 = v27;
  v45 = v28;
  v29 = swift_getWitnessTable();
  sub_1000C6A00(v19, v14, v29);
  v30 = *(v15 + 8);
  v30(v19, v14);
  sub_1000C6A00(v21, v14, v29);
  return (v30)(v21, v14);
}

uint64_t sub_1000BFE3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 4);
  return sub_1000BC994(a1, a2);
}

unint64_t sub_1000BFE78()
{
  result = qword_10018FDF8;
  if (!qword_10018FDF8)
  {
    sub_100004D48(&qword_10018FDF0, &qword_10012D490);
    sub_1000BFFDC(&qword_100189260, type metadata accessor for FlowProgressView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FDF8);
  }

  return result;
}

unint64_t sub_1000BFF34()
{
  result = qword_10018FE08;
  if (!qword_10018FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FE08);
  }

  return result;
}

unint64_t sub_1000BFF88()
{
  result = qword_10018FE18;
  if (!qword_10018FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FE18);
  }

  return result;
}

uint64_t sub_1000BFFDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C0024@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  return sub_1000BDBF0(*(v1 + 72), *(v1 + 40), *(v1 + 64), a1);
}

uint64_t sub_1000C003C()
{
  sub_1000C0CD0();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v3 = sub_1000C0C00(v1);

  return sub_1000BE958(v3);
}

uint64_t sub_1000C00DC()
{
  sub_100025A94();
  sub_10004622C();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10000870C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1000C01C0()
{
  sub_1000C0CD0();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v3 = sub_1000C0C00(v1);

  return sub_1000BEC24(v3);
}

uint64_t sub_1000C0260()
{
  sub_1000C0CD0();
  v0 = swift_task_alloc();
  v1 = sub_100096790(v0);
  *v1 = v2;
  v3 = sub_1000C0C00(v1);

  return sub_1000BEE94(v3);
}

uint64_t sub_1000C0350()
{
  v1 = v0[9];

  v2 = v0[11];

  if (v0[12])
  {
    v3 = v0[13];
  }

  sub_1000C0D1C();

  return _swift_deallocObject(v4, v5, v6);
}

uint64_t sub_1000C0448(uint64_t *a1)
{
  v1 = *a1;
  v20 = a1[1];
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[5];
  v19 = a1[4];
  v5 = a1[6];
  sub_100004D48(&qword_10018FDF0, &qword_10012D490);
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Optional();
  type metadata accessor for ContentMessageView();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for _ConditionalContent();
  type metadata accessor for Group();
  sub_1000BFE78();
  swift_getWitnessTable();
  sub_1000C0CA0();
  swift_getWitnessTable();
  sub_1000C0C88();
  sub_1000BFFDC(v6, v7);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1000C0C58();
  swift_getWitnessTable();
  sub_1000C0C3C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_1000BFF34();
  swift_getWitnessTable();
  v21 = *(v4 + 8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1000C0CF4();
  swift_getOpaqueTypeMetadata2();
  sub_1000C0CF4();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for OptionInfoItem();
  sub_100004D48(&qword_10018FE10, &qword_10012D498);
  type metadata accessor for FlowViewDataProvider(255);
  sub_1000BFF88();
  sub_1000C0BE8();
  sub_1000BFFDC(v8, v9);
  swift_getOpaqueTypeConformance2();
  sub_1000C0D10();
  swift_getOpaqueTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for ModifiedContent();
  sub_1000C0D34();
  type metadata accessor for ModifiedContent();
  sub_1000C0CF4();
  sub_1000C0CB8();
  sub_1000BFFDC(v10, v11);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1000C0C70();
  sub_1000C0D10();
  swift_getOpaqueTypeMetadata2();
  v12 = *(v19 + 8);
  v13 = *(v12 + 16);
  sub_1000C0D10();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1000C0D10();
  swift_getOpaqueTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  v18 = *(v12 + 8);
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1000C0D10();
  swift_getOpaqueTypeMetadata2();
  swift_getAssociatedTypeWitness();
  v14 = *(swift_getAssociatedConformanceWitness() + 8);
  v15 = *(v14 + 16);
  sub_1000C0D10();
  swift_getOpaqueTypeMetadata2();
  sub_1000C0CF4();
  sub_1000C0D10();
  swift_getOpaqueTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for ModifiedContent();
  sub_1000C0D34();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  v16 = *(v14 + 8);
  sub_1000C0CF4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000C0BB8(uint64_t a1)
{
  *(a1 + 64) = v3;
  v6 = *(v2 + 16);
  *(a1 + 72) = *v2;
  *(a1 + 88) = v6;
  *(a1 + 104) = *(v2 + 32);

  return sub_100033974(v4 - 104, v1 + 712);
}

__n128 sub_1000C0C2C(uint64_t a1)
{
  v3 = *(v1 + 528);
  result = *(v1 + 544);
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

void sub_1000C0CD0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
}

uint64_t sub_1000C0CF4()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000C0D5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000C0D9C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1000C0E08()
{

  sub_100003768(&qword_10018FE30, &qword_10012D5C8);
  type metadata accessor for OptionInfoItem();
  sub_1000C1A84();
  sub_1000C1C60(&qword_10018FE20, type metadata accessor for OptionInfoItem);
  return NavigationLink<>.init<A>(value:label:)();
}

uint64_t sub_1000C0EE4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v26 = a2;
  v29 = a4;
  v30 = type metadata accessor for AccessibilityTraits();
  v28 = *(v30 - 8);
  v5 = *(v28 + 64);
  __chkstk_darwin(v30);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for AccessibilityChildBehavior();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_100003768(&qword_10018FE40, &qword_10012D5D0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v25[-v15];
  v17 = sub_100003768(&qword_10018FE60, &qword_10012D5E8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v25[-v20];
  *v16 = static VerticalAlignment.center.getter();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v22 = sub_100003768(&qword_10018FE68, &qword_10012D5F0);
  sub_1000C120C(a1, v26 & 1, v27, &v16[*(v22 + 44)]);
  v16[*(v13 + 36)] = 0;
  static AccessibilityChildBehavior.combine.getter();
  v23 = sub_1000C1B7C();
  View.accessibilityElement(children:)();
  (*(v9 + 8))(v12, v8);
  sub_10001D724(v16, &qword_10018FE40, &qword_10012D5D0);
  static AccessibilityTraits.isButton.getter();
  v31 = v13;
  v32 = v23;
  swift_getOpaqueTypeConformance2();
  View.accessibilityAddTraits(_:)();
  (*(v28 + 8))(v7, v30);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_1000C120C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  v28 = a1;
  v6 = sub_100003768(&qword_10018FE70, &qword_10012D5F8);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v26[-v11];
  v13 = sub_100003768(&qword_1001889E0, &qword_100121D10);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v26[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v20 = &v26[-v19];
  sub_100006578(a3 + OBJC_IVAR____TtC11SupportFlow8InfoItem_image, &v26[-v19], &qword_1001889F0, &qword_100121D20);
  v21 = static Edge.Set.trailing.getter();
  v22 = &v20[*(v14 + 44)];
  *v22 = v21;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 1;
  *v12 = static HorizontalAlignment.leading.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v23 = sub_100003768(&qword_10018FE78, &qword_10012D600);
  sub_1000C1488(v28, v27 & 1, a3, &v12[*(v23 + 44)]);
  sub_100006578(v20, v18, &qword_1001889E0, &qword_100121D10);
  sub_100006578(v12, v10, &qword_10018FE70, &qword_10012D5F8);
  sub_100006578(v18, a4, &qword_1001889E0, &qword_100121D10);
  v24 = sub_100003768(&qword_10018FE80, &qword_10012D608);
  sub_100006578(v10, a4 + *(v24 + 48), &qword_10018FE70, &qword_10012D5F8);
  sub_10001D724(v12, &qword_10018FE70, &qword_10012D5F8);
  sub_10001D724(v20, &qword_1001889E0, &qword_100121D10);
  sub_10001D724(v10, &qword_10018FE70, &qword_10012D5F8);
  return sub_10001D724(v18, &qword_1001889E0, &qword_100121D10);
}

uint64_t sub_1000C1488@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a4;
  v7 = sub_100003768(&qword_100189588, &qword_100122B80);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v62 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v59 = &v55 - v11;
  v58 = sub_100003768(&qword_100189580, &qword_100123A50);
  v12 = *(*(v58 - 8) + 64);
  v13 = __chkstk_darwin(v58);
  v57 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v55 - v15;
  v56 = a3;
  v17 = *(a3 + OBJC_IVAR____TtC11SupportFlow8InfoItem_title + 8);
  v63 = *(a3 + OBJC_IVAR____TtC11SupportFlow8InfoItem_title);
  v64 = v17;
  v18 = sub_10000AC24();

  v55 = v18;
  v19 = Text.init<A>(_:)();
  v21 = v20;
  LOBYTE(v18) = v22;
  sub_1000C1918(a1, a2 & 1, a3);
  v23 = Text.font(_:)();
  v25 = v24;
  v27 = v26;
  v29 = v28;

  sub_10000AC78(v19, v21, v18 & 1);

  v63 = v23;
  v64 = v25;
  v65 = v27 & 1;
  v66 = v29;
  static String.stepSectionOptionTitle.getter();
  v60 = v16;
  View.accessibilityIdentifier(_:)();

  sub_10000AC78(v23, v25, v27 & 1);

  v30 = *(v56 + OBJC_IVAR____TtC11SupportFlow8InfoItem_description + 8);
  if (v30)
  {
    v63 = *(v56 + OBJC_IVAR____TtC11SupportFlow8InfoItem_description);
    v64 = v30;

    v31 = Text.init<A>(_:)();
    v33 = v32;
    v35 = v34;
    static Font.subheadline.getter();
    v36 = Text.font(_:)();
    v38 = v37;
    v40 = v39;

    sub_10000AC78(v31, v33, v35 & 1);

    static Color.secondary.getter();
    v41 = Text.foregroundColor(_:)();
    v43 = v42;
    LOBYTE(v33) = v44;
    v46 = v45;

    sub_10000AC78(v36, v38, v40 & 1);

    v63 = v41;
    v64 = v43;
    v65 = v33 & 1;
    v66 = v46;
    static String.stepSectionOptionDescription.getter();
    v47 = v57;
    View.accessibilityIdentifier(_:)();

    sub_10000AC78(v41, v43, v33 & 1);

    v48 = v59;
    sub_1000177F8(v47, v59);
    v49 = 0;
  }

  else
  {
    v49 = 1;
    v48 = v59;
    v47 = v57;
  }

  sub_100003CE8(v48, v49, 1, v58);
  v50 = v60;
  sub_100006578(v60, v47, &qword_100189580, &qword_100123A50);
  v51 = v62;
  sub_100006578(v48, v62, &qword_100189588, &qword_100122B80);
  v52 = v61;
  sub_100006578(v47, v61, &qword_100189580, &qword_100123A50);
  v53 = sub_100003768(&qword_10018FE88, &qword_10012D610);
  sub_100006578(v51, v52 + *(v53 + 48), &qword_100189588, &qword_100122B80);
  sub_10001D724(v48, &qword_100189588, &qword_100122B80);
  sub_10001D724(v50, &qword_100189580, &qword_100123A50);
  sub_10001D724(v51, &qword_100189588, &qword_100122B80);
  return sub_10001D724(v47, &qword_100189580, &qword_100123A50);
}

uint64_t sub_1000C1918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for Font.Leading();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + OBJC_IVAR____TtC11SupportFlow8InfoItem_description + 8);
  v10 = static Font.body.getter();
  if (v9)
  {
    (*(v5 + 104))(v8, enum case for Font.Leading.tight(_:), v4);
    Font.leading(_:)();

    (*(v5 + 8))(v8, v4);
    v10 = Font.bold()();
  }

  return v10;
}

uint64_t sub_1000C1A54()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  return sub_1000C0E08();
}

unint64_t sub_1000C1A84()
{
  result = qword_10018FE38;
  if (!qword_10018FE38)
  {
    sub_100004D48(&qword_10018FE30, &qword_10012D5C8);
    sub_100004D48(&qword_10018FE40, &qword_10012D5D0);
    sub_1000C1B7C();
    swift_getOpaqueTypeConformance2();
    sub_1000C1C60(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FE38);
  }

  return result;
}

unint64_t sub_1000C1B7C()
{
  result = qword_10018FE48;
  if (!qword_10018FE48)
  {
    sub_100004D48(&qword_10018FE40, &qword_10012D5D0);
    sub_10000AAEC(&qword_10018FE50, &qword_10018FE58, &qword_10012D5D8);
    sub_10000AAEC(&qword_1001894F0, &qword_1001894F8, &qword_10012D5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FE48);
  }

  return result;
}

uint64_t sub_1000C1C60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C1D18()
{
  v0 = sub_100003768(&qword_10018A8B8, &qword_100124F50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  sub_1000C2344();
  sub_100003768(&qword_10018FEA0, &qword_10012D6B0);
  sub_1000350A8();
  sub_1000C25F4();
  return Section<>.init(header:content:)();
}

uint64_t sub_1000C1E10(uint64_t a1, uint64_t a2)
{

  sub_100039DAC(a2, a1);
  sub_10002C8FC();
  swift_unknownObjectRelease();
  swift_getKeyPath();
  sub_100003768(&qword_10018FEC8, &unk_10012D6F0);
  sub_100003768(&qword_10018FEB8, &qword_10012D6B8);
  sub_1000C27AC();
  sub_1000C2678();
  return ForEach<>.init(_:id:content:)();
}

uint64_t sub_1000C1F04@<X0>(void *a1@<X8>)
{
  type metadata accessor for HMTSolution.Article();
  sub_1000C2810(&qword_10018FEE0, &type metadata accessor for HMTSolution.Article);
  result = dispatch thunk of Identifiable.id.getter();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000C1F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[1] = a3;
  v5 = type metadata accessor for HMTSolution.Article();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LearnMoreArticleView();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003768(&qword_10018FED8, &qword_10012D700);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v25 - v17;
  (*(v6 + 16))(v9, a2, v5);
  sub_100013ED4(v9, v13);
  sub_1000C2810(&qword_10018FEE0, &type metadata accessor for HMTSolution.Article);
  dispatch thunk of Identifiable.id.getter();
  v19 = v26;
  v20 = v27;
  sub_100015DF4(v13, v18);
  v21 = &v18[*(sub_100003768(&qword_100188458, &qword_100120AA8) + 36)];
  *v21 = v19;
  *(v21 + 1) = v20;
  v21[16] = 1;
  static String.stepSectionLearnMoreArticleFormat.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100121620;
  *(v22 + 56) = &type metadata for Int;
  *(v22 + 64) = &protocol witness table for Int;
  *(v22 + 32) = a1;
  String.init(format:_:)();

  v23 = sub_1000C2810(&qword_10018FEC0, type metadata accessor for LearnMoreArticleView);
  v26 = v10;
  v27 = &type metadata for String;
  v28 = v23;
  v29 = &protocol witness table for String;
  swift_getOpaqueTypeConformance2();
  View.accessibilityIdentifier(_:)();

  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1000C22E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1 + *(sub_100003768(&qword_10018A5D8, &qword_1001244F8) + 48);

  return sub_1000C1F90(v3, v4, a2);
}

uint64_t sub_1000C2344()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for FlowStepSectionHeaderView();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100188440 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for ImageResource();
  v9 = sub_10000C2D4(v8, qword_1001A5B18);
  (*(*(v8 - 8) + 16))(v7, v9, v8);
  v10 = type metadata accessor for FlowAsset();
  __asm { FMOV            V0.2D, #20.0 }

  *&v7[*(v10 + 20)] = _Q0;
  *&v7[*(v10 + 24)] = 0x4018000000000000;
  v16 = type metadata accessor for FlowImage();
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v7, 0, 1, v16);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v17 = String.init(localized:table:bundle:locale:comment:)();
  v18 = &v7[*(v4 + 20)];
  *v18 = v17;
  v18[1] = v19;
  static String.stepSectionLearnMore.getter();
  sub_1000C2810(&qword_10018A8D0, type metadata accessor for FlowStepSectionHeaderView);
  View.accessibilityIdentifier(_:)();

  return sub_1000B4A14(v7);
}

uint64_t sub_1000C25E4()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1000C1D18();
}

unint64_t sub_1000C25F4()
{
  result = qword_10018FEA8;
  if (!qword_10018FEA8)
  {
    sub_100004D48(&qword_10018FEA0, &qword_10012D6B0);
    sub_1000C2678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FEA8);
  }

  return result;
}

unint64_t sub_1000C2678()
{
  result = qword_10018FEB0;
  if (!qword_10018FEB0)
  {
    sub_100004D48(&qword_10018FEB8, &qword_10012D6B8);
    type metadata accessor for LearnMoreArticleView();
    sub_1000C2810(&qword_10018FEC0, type metadata accessor for LearnMoreArticleView);
    swift_getOpaqueTypeConformance2();
    sub_1000C2810(&qword_1001887F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FEB0);
  }

  return result;
}

unint64_t sub_1000C27AC()
{
  result = qword_10018FED0;
  if (!qword_10018FED0)
  {
    sub_100004D48(&qword_10018FEC8, &unk_10012D6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FED0);
  }

  return result;
}

uint64_t sub_1000C2810(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000C285C()
{
  result = qword_10018FEE8;
  if (!qword_10018FEE8)
  {
    sub_100004D48(qword_10018FEF0, &qword_10012D708);
    sub_1000350A8();
    sub_1000C25F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FEE8);
  }

  return result;
}

uint64_t sub_1000C2904()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000C2940(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000C2958(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000C2998(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1000C2A90()
{
  v3 = sub_1000C6AC4();
  sub_10000AF7C(v3);
  v5 = *(v4 + 64);
  sub_10000ED78();
  __chkstk_darwin(v6);
  sub_1000C6AF0();
  (*(*(v0 - 8) + 16))(v2, v1, v0);
  swift_storeEnumTagMultiPayload();
  return sub_1000C6B00();
}

uint64_t sub_1000C2B40()
{
  v3 = sub_1000C6AC4();
  sub_10000AF7C(v3);
  v5 = *(v4 + 64);
  sub_10000ED78();
  __chkstk_darwin(v6);
  sub_1000C6AF0();
  (*(*(v0 - 8) + 16))(v2, v1, v0);
  swift_storeEnumTagMultiPayload();
  return sub_1000C6B00();
}

uint64_t sub_1000C2BF0(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    sub_10000C30C();
    v9 = v8 - v7;
    for (i = 0; a2 != i; ++i)
    {
      *(v9 + 8 * i) = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v11 = *(*(v6 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata);
  sub_10000C30C();
  v14 = v13 - v12;
  if (a2)
  {
    v15 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v16 = (v6 + 32);
    v17 = a2;
    do
    {
      if (a2 == 1)
      {
        v18 = 0;
      }

      else
      {
        v18 = *v16;
      }

      v20 = *v15++;
      v19 = v20;
      v21 = *v5++;
      (*(*(v19 - 8) + 16))(v14 + v18, v21);
      v16 += 4;
      --v17;
    }

    while (v17);
  }

  return TupleView.init(_:)();
}

uint64_t sub_1000C2D64(uint64_t a1)
{
  v3 = sub_100008780(a1);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000C30C();
  (*(v8 + 16))(v7 - v6, v1, a1);
  return AnyView.init<A>(_:)();
}

uint64_t sub_1000C2E28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100006568(v1);
  return v1;
}

uint64_t sub_1000C2E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000C2F08(a1, a2, WitnessTable, a3);
}

uint64_t sub_1000C2ECC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000C2F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a1;
  v75 = a4;
  v6 = *(a3 + 8);
  v7 = type metadata accessor for _ViewModifier_Content();
  v76 = a2;
  v77 = a3;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for Array();
  sub_100004D48(&qword_100190028, &qword_10012D9E0);
  sub_1000C6AA0();
  swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v87 = *(*(AssociatedConformanceWitness + 8) + 8);
  type metadata accessor for ForEach();
  sub_100004D48(&qword_100190030, &qword_10012D9E8);
  sub_1000048D4();
  swift_getTupleTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for TupleView();
  sub_100006A70();
  swift_getWitnessTable();
  type metadata accessor for Menu();
  type metadata accessor for InlinePickerStyle();
  sub_1000C6A3C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  sub_1000048D4();
  type metadata accessor for ModifiedContent();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = sub_1000233C4();
  sub_1000C6A88();
  swift_getWitnessTable();
  type metadata accessor for ToolbarItem();
  sub_1000C6A70();
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_1000C6A58();
  v83 = v7;
  v84 = OpaqueTypeMetadata2;
  v72 = OpaqueTypeMetadata2;
  WitnessTable = swift_getWitnessTable();
  v85 = WitnessTable;
  v86 = swift_getOpaqueTypeConformance2();
  v71 = v86;
  v10 = swift_getOpaqueTypeMetadata2();
  v11 = sub_100008780(v10);
  v66 = v12;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v11);
  v65 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v64 = &v63 - v17;
  v18 = swift_checkMetadataState();
  v19 = sub_100008780(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v19);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v63 - v27;
  v29 = *(AssociatedConformanceWitness + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100008780(AssociatedTypeWitness);
  v32 = v31;
  v34 = *(v33 + 64);
  sub_10000ED78();
  __chkstk_darwin(v35);
  sub_1000C6AF0();
  v70 = v10;
  v36 = type metadata accessor for _ConditionalContent();
  v37 = sub_100008780(v36);
  v68 = v38;
  v69 = v37;
  v40 = *(v39 + 64);
  sub_10000ED78();
  __chkstk_darwin(v41);
  v67 = &v63 - v42;
  (*(v77 + 32))(v76);
  swift_checkMetadataState();
  dispatch thunk of static CaseIterable.allCases.getter();
  swift_getAssociatedConformanceWitness();
  v43 = dispatch thunk of Collection.isEmpty.getter();
  (*(v32 + 8))(AssociatedConformanceWitness, AssociatedTypeWitness);
  if ((v43 & 1) != 0 || (v44 = static Bool.allowOverrides.getter(), (v44 & 1) == 0))
  {
    v57 = *(v21 + 16);
    v57(v28, v74, v18);
    v57(v26, v28, v18);
    v46 = v72;
    v49 = WitnessTable;
    v83 = v18;
    v84 = v72;
    sub_1000C6A0C();
    v56 = v67;
    sub_1000C2A90();
    v58 = *(v21 + 8);
    v58(v26, v18);
    v58(v28, v18);
  }

  else
  {
    __chkstk_darwin(v44);
    v45 = v77;
    *(&v63 - 4) = v76;
    *(&v63 - 3) = v45;
    *(&v63 - 2) = v78;
    v46 = v72;
    v47 = swift_checkMetadataState();
    v48 = v65;
    v49 = WitnessTable;
    View.toolbar<A>(content:)();
    v83 = v18;
    v84 = v47;
    v78 = sub_1000C6A0C();
    v50 = v66;
    v77 = *(v66 + 16);
    v51 = v64;
    v52 = v70;
    (v77)(v64, v48, v70);
    v53 = *(v50 + 8);
    v53(v48, v52);
    (v77)(v48, v51, v52);
    v54 = v67;
    sub_1000C2B40();
    v53(v48, v52);
    v55 = v52;
    v56 = v54;
    v53(v51, v55);
  }

  v83 = v18;
  v84 = v46;
  v59 = sub_1000C6A0C();
  v79 = v49;
  v80 = v59;
  sub_10009988C();
  v60 = v69;
  swift_getWitnessTable();
  v61 = v68;
  (*(v68 + 16))(v75, v56, v60);
  return (*(v61 + 8))(v56, v60);
}

unint64_t sub_1000C374C()
{
  result = qword_10018FFB0;
  if (!qword_10018FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FFB0);
  }

  return result;
}

unint64_t sub_1000C37E8()
{
  result = qword_10018FFB8;
  if (!qword_10018FFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FFB8);
  }

  return result;
}

unint64_t sub_1000C383C()
{
  result = qword_10018FFC0;
  if (!qword_10018FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018FFC0);
  }

  return result;
}

uint64_t sub_1000C3944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000C3980()
{
  result = qword_100190018;
  if (!qword_100190018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190018);
  }

  return result;
}

unint64_t sub_1000C39D4()
{
  result = qword_100190020;
  if (!qword_100190020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190020);
  }

  return result;
}

uint64_t sub_1000C3A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[1] = a4;
  v7 = type metadata accessor for ToolbarItemPlacement();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  type metadata accessor for Array();
  sub_100004D48(&qword_100190028, &qword_10012D9E0);
  swift_getWitnessTable();
  v22[13] = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  type metadata accessor for ForEach();
  sub_100004D48(&qword_100190030, &qword_10012D9E8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v9 = type metadata accessor for Menu();
  v10 = type metadata accessor for InlinePickerStyle();
  WitnessTable = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  v22[9] = v9;
  v22[10] = v10;
  v22[11] = WitnessTable;
  v22[12] = &protocol witness table for InlinePickerStyle;
  v22[7] = swift_getOpaqueTypeConformance2();
  v22[8] = sub_1000233C4();
  swift_getWitnessTable();
  v12 = type metadata accessor for ToolbarItem();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v22 - v18;
  static ToolbarItemPlacement.topBarTrailing.getter();
  v22[4] = a2;
  v22[5] = a3;
  v22[6] = a1;
  ToolbarItem<>.init(placement:content:)();
  swift_getWitnessTable();
  (*(v13 + 16))(v19, v17, v12);
  v20 = *(v13 + 8);
  v20(v17, v12);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (v20)(v19, v12);
}

uint64_t sub_1000C3E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v22[1] = a1;
  v23 = a4;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  type metadata accessor for Array();
  sub_100004D48(&qword_100190028, &qword_10012D9E0);
  swift_getWitnessTable();
  v30 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  type metadata accessor for ForEach();
  sub_100004D48(&qword_100190030, &qword_10012D9E8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for Menu();
  v7 = type metadata accessor for InlinePickerStyle();
  WitnessTable = swift_getWitnessTable();
  v26 = v6;
  v27 = v7;
  v28 = WitnessTable;
  v29 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v22 - v15;
  sub_1000C41BC(a2, a3, v14);
  v26 = v6;
  v27 = v7;
  v28 = WitnessTable;
  v29 = &protocol witness table for InlinePickerStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_1000233C4();
  v24 = OpaqueTypeConformance2;
  v25 = v18;
  swift_getWitnessTable();
  v19 = v10[2];
  v19(v16, v14, v9);
  v20 = v10[1];
  v20(v14, v9);
  v19(v23, v16, v9);
  return (v20)(v16, v9);
}

uint64_t sub_1000C41BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v48 = a3;
  v49 = type metadata accessor for InlinePickerStyle();
  v47 = *(v49 - 8);
  v5 = *(v47 + 64);
  __chkstk_darwin(v49);
  v44 = a2;
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for Array();
  v9 = sub_100004D48(&qword_100190028, &qword_10012D9E0);
  WitnessTable = swift_getWitnessTable();
  v11 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  v55 = v8;
  v56 = AssociatedTypeWitness;
  v57 = v9;
  v58 = WitnessTable;
  v59 = v11;
  type metadata accessor for ForEach();
  sub_100004D48(&qword_100190030, &qword_10012D9E8);
  swift_getTupleTypeMetadata2();
  v12 = type metadata accessor for TupleView();
  v13 = swift_getWitnessTable();
  v55 = &type metadata for Image;
  v56 = v12;
  v57 = &protocol witness table for Image;
  v58 = v13;
  v14 = type metadata accessor for Menu();
  v42 = *(v14 - 8);
  v15 = *(v42 + 64);
  __chkstk_darwin(v14);
  v17 = &v38 - v16;
  v18 = swift_getWitnessTable();
  v55 = v14;
  v56 = v49;
  v57 = v18;
  v58 = &protocol witness table for InlinePickerStyle;
  v40 = &opaque type descriptor for <<opaque return type of View.pickerStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v41 = *(OpaqueTypeMetadata2 - 8);
  v19 = *(v41 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v21 = &v38 - v20;
  type metadata accessor for AccessibilityAttachmentModifier();
  v22 = type metadata accessor for ModifiedContent();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = __chkstk_darwin(v22);
  v27 = &v38 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v38 - v28;
  v50 = v43;
  v51 = v44;
  v52 = v46;
  Menu.init(content:label:)();
  v30 = v45;
  InlinePickerStyle.init()();
  v31 = v49;
  View.pickerStyle<A>(_:)();
  (*(v47 + 8))(v30, v31);
  (*(v42 + 8))(v17, v14);
  static String.overrideMenu.getter();
  v55 = v14;
  v56 = v31;
  v57 = v18;
  v58 = &protocol witness table for InlinePickerStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = OpaqueTypeMetadata2;
  View.accessibilityIdentifier(_:)();

  (*(v41 + 8))(v21, v33);
  v34 = sub_1000233C4();
  v53 = OpaqueTypeConformance2;
  v54 = v34;
  swift_getWitnessTable();
  v35 = v23[2];
  v35(v29, v27, v22);
  v36 = v23[1];
  v36(v27, v22);
  v35(v48, v29, v22);
  return (v36)(v29, v22);
}

uint64_t sub_1000C47A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a2;
  v75 = a4;
  v76 = a1;
  v73 = sub_100003768(&qword_100190038, &qword_10012D9F0);
  v6 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v52 = &v51 - v7;
  v72 = sub_100003768(&qword_100190030, &qword_10012D9E8);
  v8 = *(*(v72 - 8) + 64);
  v9 = __chkstk_darwin(v72);
  v74 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v71 = &v51 - v12;
  v69 = *(a2 - 8);
  v70 = *(v69 + 64);
  __chkstk_darwin(v11);
  v68 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = *(AssociatedConformanceWitness + 16);
  v17 = AssociatedConformanceWitness;
  v67 = AssociatedConformanceWitness;
  v56 = v16;
  v18 = swift_getAssociatedTypeWitness();
  v58 = *(v18 - 8);
  v19 = *(v58 + 64);
  __chkstk_darwin(v18);
  v21 = &v51 - v20;
  v55 = *(swift_getAssociatedConformanceWitness() + 8);
  v57 = type metadata accessor for EnumeratedSequence();
  v22 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v53 = &v51 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = type metadata accessor for Array();
  v66 = v24;
  v25 = sub_100004D48(&qword_100190028, &qword_10012D9E0);
  v64 = v25;
  WitnessTable = swift_getWitnessTable();
  v62 = *(*(v17 + 8) + 8);
  v84 = v24;
  v85 = AssociatedTypeWitness;
  v65 = AssociatedTypeWitness;
  v86 = v25;
  v87 = WitnessTable;
  v88 = v62;
  v26 = type metadata accessor for ForEach();
  v78 = *(v26 - 8);
  v27 = *(v78 + 64);
  v28 = __chkstk_darwin(v26);
  v30 = &v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v77 = &v51 - v31;
  v60 = *(a3 + 32);
  v61 = a3 + 32;
  v32 = v76;
  v33 = v59;
  v60(v59, a3);
  dispatch thunk of static CaseIterable.allCases.getter();
  Sequence.enumerated()();
  (*(v58 + 8))(v21, v18);
  swift_getWitnessTable();
  v84 = Array.init<A>(_:)();
  v79 = v33;
  v80 = a3;
  swift_getKeyPath();
  v34 = v69;
  v35 = v68;
  (*(v69 + 16))(v68, v32, v33);
  v36 = v34;
  v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = v33;
  *(v38 + 24) = a3;
  (*(v36 + 32))(v38 + v37, v35, v33);
  v39 = swift_allocObject();
  v39[2] = v33;
  v39[3] = a3;
  v39[4] = sub_1000C5FA4;
  v39[5] = v38;
  v50 = sub_1000C6024();
  ForEach<>.init(_:id:content:)();
  v83[2] = v50;
  v70 = swift_getWitnessTable();
  v40 = v78;
  v41 = *(v78 + 16);
  v41(v77, v30, v26);
  v42 = *(v40 + 8);
  v78 = v40 + 8;
  v42(v30, v26);
  v43 = v33;
  v60(v33, a3);
  if ((*(v67 + 32))(v65))
  {
    v44 = v52;
    sub_1000C5BA0(v43, a3, v52);
    v45 = v71;
    sub_1000C6388(v44, v71);
    v46 = 0;
  }

  else
  {
    v46 = 1;
    v45 = v71;
  }

  sub_100003CE8(v45, v46, 1, v73);
  v47 = v77;
  v41(v30, v77, v26);
  v84 = v30;
  v48 = v74;
  sub_10000EC9C(v45, v74, &qword_100190030, &qword_10012D9E8);
  v85 = v48;
  v83[0] = v26;
  v83[1] = v72;
  v81 = v70;
  v82 = sub_1000C6304();
  sub_1000C2BF0(&v84, 2, v83);
  sub_10000ABCC(v45, &qword_100190030, &qword_10012D9E8);
  v42(v47, v26);
  sub_10000ABCC(v48, &qword_100190030, &qword_10012D9E8);
  return (v42)(v30, v26);
}

uint64_t sub_1000C4FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100003768(&qword_100190050, &qword_10012DA18);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  sub_1000C515C(a2, a3, a4, a5, &v16 - v12);
  static String.overrideMenuItem.getter();
  sub_100003768(&qword_100188810, &unk_100121780);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100121620;
  *(v14 + 56) = &type metadata for Int;
  *(v14 + 64) = &protocol witness table for Int;
  *(v14 + 32) = a1;
  String.init(format:_:)();

  sub_1000C60B0();
  View.accessibilityIdentifier(_:)();

  return sub_10000ABCC(v13, &qword_100190050, &qword_10012DA18);
}

uint64_t sub_1000C515C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v44 = a2;
  v56 = a5;
  v55 = sub_100003768(&qword_100190070, &qword_10012DA28);
  v8 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v50 = &v42 - v9;
  v53 = sub_100003768(&qword_1001900A8, &qword_10012DA48);
  v10 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v54 = &v42 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  v13 = *(v43 + 64);
  v14 = __chkstk_darwin(AssociatedTypeWitness);
  v51 = &v42 - v15;
  v16 = *(a3 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100003768(&qword_100190088, &qword_10012DA30);
  v46 = *(v48 - 8);
  v19 = *(v46 + 64);
  __chkstk_darwin(v48);
  v45 = &v42 - v20;
  v52 = sub_100003768(&qword_100190038, &qword_10012D9F0);
  v21 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v47 = &v42 - v22;
  v49 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v24)
  {
    v25 = v24;
    v24(v58);
    v26 = v59;
    sub_100025734(v58, v59);
    v57 = sub_1000C2D64(v26);
    static String.overrideMenuSubContent.getter();
    v27 = v50;
    View.accessibilityIdentifier(_:)();

    sub_1000086BC(v58);
    v28 = &qword_100190070;
    v29 = &qword_10012DA28;
    sub_10000EC9C(v27, v54, &qword_100190070, &qword_10012DA28);
    swift_storeEnumTagMultiPayload();
    sub_1000C61C0();
    sub_1000C624C();
    _ConditionalContent<>.init(storage:)();
    sub_1000068F8(v25);
    v30 = v27;
  }

  else
  {
    (*(v16 + 16))(&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v44, a3);
    v31 = v43;
    v32 = *(v43 + 16);
    v42 = a1;
    v32(v51, a1, AssociatedTypeWitness);
    v33 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v34 = (v17 + v33 + *(v31 + 80)) & ~*(v31 + 80);
    v35 = swift_allocObject();
    v36 = v49;
    *(v35 + 16) = a3;
    *(v35 + 24) = v36;
    (*(v16 + 32))(v35 + v33, v18, a3);
    v37 = (*(v31 + 32))(v35 + v34, v51, AssociatedTypeWitness);
    __chkstk_darwin(v37);
    *(&v42 - 4) = a3;
    *(&v42 - 3) = v36;
    *(&v42 - 2) = v42;
    sub_100003768(&qword_100190098, &unk_10012DA38);
    sub_10000AAEC(&qword_1001900A0, &qword_100190098, &unk_10012DA38);
    v38 = v45;
    Button.init(action:label:)();
    static String.overrideMenuItemButton.getter();
    sub_10000AAEC(&qword_100190080, &qword_100190088, &qword_10012DA30);
    v39 = v47;
    v40 = v48;
    View.accessibilityIdentifier(_:)();

    (*(v46 + 8))(v38, v40);
    v28 = &qword_100190038;
    v29 = &qword_10012D9F0;
    sub_10000EC9C(v39, v54, &qword_100190038, &qword_10012D9F0);
    swift_storeEnumTagMultiPayload();
    sub_1000C61C0();
    sub_1000C624C();
    _ConditionalContent<>.init(storage:)();
    v30 = v39;
  }

  return sub_10000ABCC(v30, v28, v29);
}

uint64_t sub_1000C57EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 48))(a3, a4);
  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14[3] = AssociatedTypeWitness;
  v14[4] = swift_getAssociatedConformanceWitness();
  v10 = sub_10003EE2C(v14);
  (*(*(AssociatedTypeWitness - 8) + 16))(v10, a2, AssociatedTypeWitness);
  v11 = v8(v14);
  sub_1000068F8(v8);
  result = sub_1000086BC(v14);
  if ((v11 & 1) == 0)
  {
LABEL_3:
    (*(a4 + 40))(a3, a4);
    swift_getAssociatedTypeWitness();
    v13 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
    sub_10008D638();
  }

  return result;
}

__n128 sub_1000C5994@<Q0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  sub_1000C5A18(&v6);
  v3 = v7;
  v4 = v8;
  result = v6;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1000C5A18@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 40);
  v4 = swift_checkMetadataState();
  v3(v4, AssociatedConformanceWitness);
  sub_10000AC24();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_1000C5B00(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v4, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_1000C5BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v17[1] = a3;
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v9 = sub_100003768(&qword_100190088, &qword_10012DA30);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v17 - v12;
  (*(v7 + 16))(v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a1);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  (*(v7 + 32))(v15 + v14, v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_100003768(&qword_100190098, &unk_10012DA38);
  sub_10000AAEC(&qword_1001900A0, &qword_100190098, &unk_10012DA38);
  Button.init(action:label:)();
  static String.overrideMenuExitFlow.getter();
  sub_10000AAEC(&qword_100190080, &qword_100190088, &qword_10012DA30);
  View.accessibilityIdentifier(_:)();

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000C5E44@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1000C5E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for NavigationPath();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  (*(a3 + 40))(a2, a3);
  NavigationPath.init()();
  sub_100089B88();
}

double sub_1000C5F30@<D0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  result = 5.35837306e228;
  *(a1 + 24) = xmmword_10012D710;
  *(a1 + 40) = 0;
  *(a1 + 48) = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1000C5FE0()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000C6018(char *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1000C5B00(a1, *(v1 + 32));
}

unint64_t sub_1000C6024()
{
  result = qword_100190040;
  if (!qword_100190040)
  {
    sub_100004D48(&qword_100190028, &qword_10012D9E0);
    sub_1000C60B0();
    sub_1000233C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190040);
  }

  return result;
}

unint64_t sub_1000C60B0()
{
  result = qword_100190048;
  if (!qword_100190048)
  {
    sub_100004D48(&qword_100190050, &qword_10012DA18);
    sub_1000C6134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190048);
  }

  return result;
}

unint64_t sub_1000C6134()
{
  result = qword_100190058;
  if (!qword_100190058)
  {
    sub_100004D48(&qword_100190060, &qword_10012DA20);
    sub_1000C61C0();
    sub_1000C624C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190058);
  }

  return result;
}

unint64_t sub_1000C61C0()
{
  result = qword_100190068;
  if (!qword_100190068)
  {
    sub_100004D48(&qword_100190070, &qword_10012DA28);
    sub_1000233C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190068);
  }

  return result;
}

unint64_t sub_1000C624C()
{
  result = qword_100190078;
  if (!qword_100190078)
  {
    sub_100004D48(&qword_100190038, &qword_10012D9F0);
    sub_10000AAEC(&qword_100190080, &qword_100190088, &qword_10012DA30);
    sub_1000233C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190078);
  }

  return result;
}

unint64_t sub_1000C6304()
{
  result = qword_100190090;
  if (!qword_100190090)
  {
    sub_100004D48(&qword_100190030, &qword_10012D9E8);
    sub_1000C624C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190090);
  }

  return result;
}

uint64_t sub_1000C6388(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100190038, &qword_10012D9F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C63F8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000C64B4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  sub_1000C6AB8();
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 32) & ~v5;
  sub_1000C6AB8();
  v8 = *(v7 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_100008780(AssociatedTypeWitness);
  v11 = v10;
  v13 = v12;
  v14 = *(v11 + 80);
  v15 = (v6 + v8 + v14) & ~v14;
  v16 = *(v13 + 64);
  v17 = v5 | v14;
  (*(v4 + 8))(v0 + v6, v1);
  (*(v11 + 8))(v0 + v15, AssociatedTypeWitness);

  return _swift_deallocObject(v0, v15 + v16, v17 | 7);
}

uint64_t sub_1000C65F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 - 8);
  sub_1000C6AB8();
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  sub_1000C6AB8();
  v7 = *(v6 + 64);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = v0 + ((v5 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1000C57EC(v0 + v5, v9, v1, v2);
}

double sub_1000C66DC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *&result = sub_1000C5994(a1).n128_u64[0];
  return result;
}

uint64_t sub_1000C66F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 8);
  type metadata accessor for _ViewModifier_Content();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for Array();
  sub_100004D48(&qword_100190028, &qword_10012D9E0);
  sub_1000C6AA0();
  swift_getWitnessTable();
  v4 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  type metadata accessor for ForEach();
  sub_100004D48(&qword_100190030, &qword_10012D9E8);
  sub_1000048D4();
  swift_getTupleTypeMetadata2();
  sub_1000C0D28();
  type metadata accessor for TupleView();
  sub_100006A70();
  swift_getWitnessTable();
  type metadata accessor for Menu();
  type metadata accessor for InlinePickerStyle();
  sub_1000C6A3C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  sub_1000048D4();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  sub_1000233C4();
  sub_1000C6A88();
  swift_getWitnessTable();
  type metadata accessor for ToolbarItem();
  sub_1000C6A70();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1000C6A58();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1000048D4();
  type metadata accessor for _ConditionalContent();
  swift_getOpaqueTypeConformance2();
  sub_10009988C();
  return swift_getWitnessTable();
}

uint64_t sub_1000C6A0C()
{
  *(v2 - 112) = v0;
  *(v2 - 104) = v1;

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000C6AC4()
{

  return type metadata accessor for _ConditionalContent.Storage(0);
}

uint64_t sub_1000C6B00()
{

  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000C6B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100003768(&qword_100191740, &qword_10012DA50);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_10000E5F0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1000C6C08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100003768(&qword_100191740, &qword_10012DA50);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_100003CE8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for AMSWebView()
{
  result = qword_100190108;
  if (!qword_100190108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000C6D08()
{
  sub_1000C6DEC(319, qword_1001917B0, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1000C6DEC(319, &unk_100190118, type metadata accessor for AMSWebViewModel, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000C6DEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000C6E6C@<X0>(uint64_t a1@<X8>)
{
  sub_100003768(&qword_100190148, &qword_10012DAB8);
  v3 = swift_allocBox();
  v4 = (v1 + *(type metadata accessor for AMSWebView() + 20));
  v8 = *v4;
  v9 = v4[1];
  sub_100003768(&qword_100190150, &qword_10012DAC0);
  State.wrappedValue.getter();
  type metadata accessor for AMSWebViewModel();
  sub_1000C96B4(&qword_100190158, type metadata accessor for AMSWebViewModel);
  Bindable<A>.init(wrappedValue:)();
  sub_100003768(&qword_100190160, &qword_10012DAC8);
  sub_1000C8CBC();
  NavigationStack.init<>(root:)();
  v5 = (a1 + *(sub_100003768(&qword_1001901B8, &qword_10012DB10) + 36));
  v6 = v5 + *(type metadata accessor for _TaskModifier() + 20);
  result = static TaskPriority.userInitiated.getter();
  *v5 = &unk_10012DB08;
  v5[1] = v3;
  return result;
}

uint64_t sub_1000C6FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v61 = a1;
  v77 = a3;
  v3 = sub_100003768(&qword_100190148, &qword_10012DAB8);
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v3);
  v63 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v55 - v8;
  v64 = type metadata accessor for WebView();
  v62 = *(v64 - 8);
  v10 = v62[8];
  __chkstk_darwin(v64);
  v60 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_100003768(&qword_100190190, &qword_10012DAF0);
  v12 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v78 = &v55 - v13;
  v66 = sub_100003768(&qword_100190188, &qword_10012DAE8);
  v67 = *(v66 - 8);
  v14 = *(v67 + 64);
  __chkstk_darwin(v66);
  v79 = &v55 - v15;
  v69 = sub_100003768(&qword_100190178, &qword_10012DAD8);
  v70 = *(v69 - 8);
  v16 = *(v70 + 64);
  __chkstk_darwin(v69);
  v65 = &v55 - v17;
  v74 = sub_100003768(&qword_100190170, &qword_10012DAD0);
  v76 = *(v74 - 8);
  v18 = *(v76 + 64);
  __chkstk_darwin(v74);
  v68 = &v55 - v19;
  v75 = sub_100003768(&qword_1001901C0, &qword_10012DB18);
  v72 = *(v75 - 8);
  v20 = *(v72 + 64);
  __chkstk_darwin(v75);
  v71 = &v55 - v21;
  v22 = swift_projectBox();
  v23 = v4[2];
  v23(v9, v22, v3);
  Bindable.wrappedValue.getter();
  v24 = v4[1];
  v25 = v9;
  v24(v9, v3);
  sub_1000CB570();

  v26 = v60;
  WebView.init(model:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v27 = v78;
  (v62[4])(v78, v26, v64);
  memcpy(&v27[*(v80 + 36)], __src, 0x70uLL);
  v28 = v63;
  v58 = v22;
  v57 = v23;
  v23(v63, v22, v3);
  v59 = v25;
  Bindable.projectedValue.getter();
  v24(v28, v3);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v24(v25, v3);
  v56 = v24;
  v62 = v84;
  v23(v28, v22, v3);
  Bindable.wrappedValue.getter();
  v24(v28, v3);
  v29 = *(v86 + 64);

  v64 = sub_1000C8EDC();

  v30 = v62;
  v31 = v78;
  View.authenticateSheet(authenticateRequest:bag:didComplete:)();

  sub_1000C9244(v31);
  v57(v28, v58, v3);
  v32 = v59;
  Bindable.projectedValue.getter();
  v33 = v56;
  v56(v28, v3);
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v33(v32, v3);
  v34 = v84;

  v86 = v80;
  v87 = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v65;
  v37 = v66;
  v38 = v79;
  View.alertDialogTask(request:didComplete:)();

  (*(v67 + 8))(v38, v37);
  v81 = v73;
  v39 = sub_100003768(&qword_100190180, &qword_10012DAE0);
  v82 = v37;
  v83 = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = sub_100004D48(&qword_1001901A8, &qword_10012DAF8);
  v42 = sub_10000AAEC(&qword_1001901B0, &qword_1001901A8, &qword_10012DAF8);
  v82 = v41;
  v83 = v42;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v68;
  v45 = v69;
  View.toolbar<A>(content:)();
  (*(v70 + 8))(v36, v45);
  sub_100003768(&qword_1001901C8, &qword_10012DB70);
  v46 = *(type metadata accessor for ToolbarPlacement() - 8);
  v47 = *(v46 + 72);
  v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  *(swift_allocObject() + 16) = xmmword_100121620;
  static ToolbarPlacement.navigationBar.getter();
  v82 = v45;
  v83 = v39;
  v84 = v40;
  v85 = v43;
  swift_getOpaqueTypeConformance2();
  v49 = v71;
  v50 = v74;
  View.toolbarBackground(_:for:)();

  (*(v76 + 8))(v44, v50);
  v51 = static SafeAreaRegions.all.getter();
  LOBYTE(v38) = static Edge.Set.all.getter();
  v52 = v77;
  (*(v72 + 32))(v77, v49, v75);
  result = sub_100003768(&qword_100190160, &qword_10012DAC8);
  v54 = v52 + *(result + 36);
  *v54 = v51;
  *(v54 + 8) = v38;
  return result;
}

uint64_t sub_1000C7AE0(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void, uint64_t))
{
  v9 = sub_100003768(&qword_100190148, &qword_10012DAB8);
  v10 = sub_100008780(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  v16 = &v28 - v15;
  v17 = swift_projectBox();
  (*(v12 + 16))(v16, v17, v9);
  v18 = (v12 + 8);
  if (a2)
  {
    Bindable.wrappedValue.getter();
    v19 = (*v18)(v16, v9);
    v20 = a4(v19);
    v22 = v21;

    if (!v20)
    {
      return result;
    }

    v24 = 0;
    v25 = a1;
  }

  else
  {
    Bindable.wrappedValue.getter();
    v26 = (*v18)(v16, v9);
    v20 = a4(v26);
    v22 = v27;

    if (!v20)
    {
      return result;
    }

    v24 = a1;
    v25 = 0;
  }

  v20(v24, v25);
  return a5(v20, v22);
}

uint64_t sub_1000C7C84(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100003768(&qword_1001901A8, &qword_10012DAF8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10[-v7];
  static ToolbarItemPlacement.topBarTrailing.getter();
  v11 = a1;
  sub_100003768(&qword_1001901D0, &qword_10012DB78);
  sub_10000AAEC(&qword_1001901D8, &qword_1001901D0, &qword_10012DB78);
  ToolbarItem<>.init(placement:content:)();
  sub_10000AAEC(&qword_1001901B0, &qword_1001901A8, &qword_10012DAF8);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000C7E70(uint64_t a1)
{
  v2 = type metadata accessor for AMSWebView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_1000C930C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1000C9494(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_100003768(&qword_1001901E0, &qword_10012DB80);
  sub_10000AAEC(&qword_1001901E8, &qword_1001901E0, &qword_10012DB80);
  return Button.init(action:label:)();
}

uint64_t sub_1000C7FDC(uint64_t a1)
{
  v1[10] = a1;
  v2 = type metadata accessor for URL();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v5 = sub_100003768(&qword_100190148, &qword_10012DAB8);
  v1[15] = v5;
  v6 = *(v5 - 8);
  v1[16] = v6;
  v7 = *(v6 + 64) + 15;
  v1[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[18] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[19] = v9;
  v1[20] = v8;

  return _swift_task_switch(sub_1000C8144, v9, v8);
}

uint64_t sub_1000C8144()
{
  v43 = v0;
  if (qword_100188280 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  v0[21] = sub_10000C2D4(v2, qword_1001A57F0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[16];
    v5 = v0[17];
    v7 = v0[14];
    v8 = v0[15];
    v9 = v0[12];
    v36 = v0[11];
    v10 = v0[10];
    v11 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v42 = v39;
    *v11 = 136315138;
    v12 = swift_projectBox();
    v13 = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v37 = v4;
    v14 = *(v6 + 16);
    v14(v5, v12, v8);
    Bindable.wrappedValue.getter();
    (*(v6 + 8))(v5, v8);
    (*(v9 + 16))(v7, v0[9] + OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel_url, v36);

    v15 = URL.absoluteString.getter();
    v17 = v16;
    (*(v9 + 8))(v7, v36);
    v18 = sub_10009CACC(v15, v17, &v42);

    *(v11 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v3, v37, "Loading url: %s", v11, 0xCu);
    sub_1000086BC(v39);
    sub_100008744();
    sub_100008744();
  }

  else
  {
    v19 = v0[16];

    v14 = *(v19 + 16);
    v13 = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  }

  v20 = v14;
  v0[22] = v14;
  v21 = v0[16];
  v22 = v0[17];
  v23 = v0[15];
  v24 = v0[12];
  v25 = v0[10];
  v38 = v0[11];
  v40 = v0[13];
  v26 = swift_projectBox();
  v0[23] = v26;
  v0[24] = v13;
  v14(v22, v26, v23);
  Bindable.wrappedValue.getter();
  v27 = *(v21 + 8);
  v0[25] = v27;
  v0[26] = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v27(v22, v23);
  v28 = v0[5];
  v0[27] = sub_1000CB570();

  v20(v22, v26, v23);
  Bindable.wrappedValue.getter();
  v27(v22, v23);
  v29 = v0[6];
  v30 = OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel_url;
  v31 = *(v24 + 16);
  v0[28] = v31;
  v0[29] = (v24 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v31(v40, v29 + v30, v38);

  v32 = *(&async function pointer to dispatch thunk of WebModel.loadURL(_:) + 1);
  v41 = (&async function pointer to dispatch thunk of WebModel.loadURL(_:) + async function pointer to dispatch thunk of WebModel.loadURL(_:));
  v33 = swift_task_alloc();
  v0[30] = v33;
  *v33 = v0;
  v33[1] = sub_1000C8500;
  v34 = v0[13];

  return v41(v34);
}

uint64_t sub_1000C8500()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *(*v1 + 216);
  v5 = *(*v1 + 104);
  v6 = *(*v1 + 96);
  v7 = *(*v1 + 88);
  v8 = *v1;
  v2[31] = v0;

  v9 = *(v6 + 8);
  v2[32] = v9;
  v2[33] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v7);

  v10 = v2[20];
  v11 = v2[19];
  if (v0)
  {
    v12 = sub_1000C8744;
  }

  else
  {
    v12 = sub_1000C86C8;
  }

  return _swift_task_switch(v12, v11, v10);
}

uint64_t sub_1000C86C8()
{
  v1 = v0[18];

  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[14];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1000C8744()
{
  v40 = v0;
  v1 = v0[31];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[10];

  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v35 = v0[32];
    v36 = v0[33];
    v37 = v0[31];
    v33 = v0[28];
    v34 = v0[29];
    v31 = v0[25];
    v32 = v0[26];
    v38 = v6;
    v7 = v0[23];
    v8 = v0[24];
    v9 = v0[22];
    v10 = v0[17];
    v12 = v0[14];
    v11 = v0[15];
    v13 = v0[11];
    v14 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v14 = 136315394;
    v9(v10, v7, v11);
    Bindable.wrappedValue.getter();
    v31(v10, v11);
    v33(v12, v0[7] + OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel_url, v13);

    v15 = URL.absoluteString.getter();
    v17 = v16;
    v35(v12, v13);
    v18 = sub_10009CACC(v15, v17, &v39);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    swift_getErrorValue();
    v20 = v0[2];
    v19 = v0[3];
    v21 = v0[4];
    v22 = Error.localizedDescription.getter();
    v24 = sub_10009CACC(v22, v23, &v39);

    *(v14 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v5, v38, "Error loading url %s: %s", v14, 0x16u);
    swift_arrayDestroy();
    sub_100008744();
    sub_100008744();
  }

  else
  {
    v25 = v0[31];
  }

  v26 = v0[17];
  v27 = v0[13];
  v28 = v0[14];

  v29 = v0[1];

  return v29();
}

uint64_t sub_1000C89E8(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003768(&qword_10018B310, &qword_10012A550);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v19 - v9);
  v11 = type metadata accessor for DismissAction();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9558(a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v12 + 32))(v15, v10, v11);
  }

  else
  {
    v16 = *v10;
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
  }

  DismissAction.callAsFunction()();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1000C8C50()
{
  v0 = LocalizedStringKey.init(stringLiteral:)();

  return Label<>.init(_:systemImage:)(v0);
}

unint64_t sub_1000C8CBC()
{
  result = qword_100190168;
  if (!qword_100190168)
  {
    sub_100004D48(&qword_100190160, &qword_10012DAC8);
    sub_100004D48(&qword_100190170, &qword_10012DAD0);
    sub_100004D48(&qword_100190178, &qword_10012DAD8);
    sub_100004D48(&qword_100190180, &qword_10012DAE0);
    sub_100004D48(&qword_100190188, &qword_10012DAE8);
    sub_100004D48(&qword_100190190, &qword_10012DAF0);
    sub_1000C8EDC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100004D48(&qword_1001901A8, &qword_10012DAF8);
    sub_10000AAEC(&qword_1001901B0, &qword_1001901A8, &qword_10012DAF8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190168);
  }

  return result;
}

unint64_t sub_1000C8EDC()
{
  result = qword_100190198;
  if (!qword_100190198)
  {
    sub_100004D48(&qword_100190190, &qword_10012DAF0);
    sub_1000C96B4(&qword_1001901A0, &type metadata accessor for WebView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190198);
  }

  return result;
}

uint64_t sub_1000C8F98()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10000D870;

  return sub_1000C7FDC(v0);
}

uint64_t sub_1000C9028@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = sub_100008780(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003768(&qword_10018B310, &qword_10012A550);
  v13 = sub_10000AF7C(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v23 - v16);
  sub_1000C9558(v2, &v23 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for DismissAction();
    sub_10000AF7C(v18);
    return (*(v19 + 32))(a1, v17);
  }

  else
  {
    v21 = *v17;
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v7 + 8))(v11, v4);
  }
}

uint64_t sub_1000C9244(uint64_t a1)
{
  v2 = sub_100003768(&qword_100190190, &qword_10012DAF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C930C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMSWebView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C9370()
{
  v1 = type metadata accessor for AMSWebView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_100003768(&qword_10018B310, &qword_10012A550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for DismissAction();
    sub_10000AF7C(v6);
    (*(v7 + 8))(v0 + v3);
  }

  else
  {
    v8 = *v5;
  }

  v9 = (v5 + *(v1 + 20));
  v10 = *v9;

  v11 = v9[1];

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000C9494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMSWebView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C94F8()
{
  v1 = *(type metadata accessor for AMSWebView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000C89E8(v2);
}

uint64_t sub_1000C9558(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018B310, &qword_10012A550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000C95CC()
{
  result = qword_1001901F0;
  if (!qword_1001901F0)
  {
    sub_100004D48(&qword_1001901B8, &qword_10012DB10);
    sub_10000AAEC(&qword_1001901F8, &qword_100190200, &qword_10012DB88);
    sub_1000C96B4(&qword_10018E5B8, &type metadata accessor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001901F0);
  }

  return result;
}

uint64_t sub_1000C96B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C9700(uint64_t a1, uint64_t a2)
{
  sub_100003768(&qword_100189398, &unk_100122910);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_1000C9794(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

id sub_1000C97B8()
{
  v0 = String._bridgeToObjectiveC()();

  v1 = String._bridgeToObjectiveC()();

  v2 = [swift_getObjCClassFromMetadata() bagForProfile:v0 profileVersion:v1];

  return v2;
}

id sub_1000C984C()
{
  swift_getKeyPath();
  sub_1000CAB74();
  sub_10006F2DC();

  v1 = *(v0 + qword_100190208);

  return v1;
}

void sub_1000C98F0(void *a1)
{
  v3 = qword_100190208;
  v4 = *(v1 + qword_100190208);
  v5 = sub_1000CA78C();

  if (v5)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000CA704();
  }

  else
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }
}

void sub_1000C99E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + qword_100190208);
  *(a1 + qword_100190208) = a2;
  v3 = a2;
}

uint64_t sub_1000C9A20()
{
  swift_getKeyPath();
  sub_1000CAB74();
  sub_10006F2DC();

  return *(v0 + qword_100190210);
}

uint64_t sub_1000C9A88(uint64_t result)
{
  if (*(v1 + qword_100190210) == (result & 1))
  {
    *(v1 + qword_100190210) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000CA704();
  }

  return result;
}

uint64_t sub_1000C9B38(uint64_t a1)
{
  v3 = type metadata accessor for Locale();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_10000C30C();
  v5 = type metadata accessor for String.LocalizationValue();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  sub_10000C30C();
  v7 = type metadata accessor for SupportFlowIdentifier();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_10000C30C();
  v12 = v11 - v10;
  v13 = qword_1001A5808;
  sub_100025778(0, &qword_1001905E8, AMSBag_ptr);
  *(v1 + v13) = sub_1000C97B8();
  v14 = AMSBagKeyPurchaseHistoryURL;
  *(v1 + qword_100190208) = AMSBagKeyPurchaseHistoryURL;
  *(v1 + qword_100190210) = 0;
  v15 = v14;
  ObservationRegistrar.init()();
  (*(v8 + 104))(v12, enum case for SupportFlowIdentifier.purchases(_:), v7);

  v16 = sub_1001050D4(v12, a1);

  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  sub_100024188();
  sub_1001082E8(1);

  return v16;
}

uint64_t sub_1000C9DAC()
{
  sub_100025A94();
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1000C9E54;

  return sub_1000CA0E0();
}

uint64_t sub_1000C9E54()
{
  sub_100025A94();
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v7 = *v0;

  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006D0B4, v5, v4);
}

uint64_t sub_1000C9F8C()
{
  sub_100025A94();
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000CA020, v3, v2);
}

uint64_t sub_1000CA020()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v3 = *(v2 + *(*v2 + 136));
  v4 = sub_10008ADF0();
  if (v4)
  {
  }

  v5 = *(v0 + 16);
  sub_100085FE4();
  sub_1000C9A20();
  sub_100085FE4();
  sub_10000875C();

  return v6();
}

uint64_t sub_1000CA0E0()
{
  sub_100025A94();
  v1[23] = v0;
  type metadata accessor for MainActor();
  v1[24] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[25] = v3;
  v1[26] = v2;

  return _swift_task_switch(sub_1000CA174, v3, v2);
}

uint64_t sub_1000CA174()
{
  v1 = [objc_allocWithZone(FAFetchFamilyCircleRequest) init];
  v0[27] = v1;
  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_1000CA2AC;
  v2 = swift_continuation_init();
  v0[17] = sub_100003768(&qword_1001905D0, &unk_10012DBF0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1000CA698;
  v0[13] = &unk_10017DFC8;
  v0[14] = v2;
  [v1 startRequestWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000CA2AC()
{
  sub_100025A94();
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 224) = v3;
  v4 = *(v1 + 208);
  v5 = *(v1 + 200);
  if (v3)
  {
    v6 = sub_1000CA4BC;
  }

  else
  {
    v6 = sub_1000CA3D8;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_1000CA3D8()
{
  v1 = v0[27];
  v3 = v0[23];
  v2 = v0[24];

  v4 = v0[21];
  v5 = [v4 members];
  sub_100025778(0, &qword_1001905D8, FAFamilyMember_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = sub_1000C9794(v6);

  sub_1000C9A88(v7 > 1);

  sub_10000875C();

  return v8();
}

uint64_t sub_1000CA4BC()
{
  v21 = v0;
  v1 = v0[28];
  v2 = v0[24];

  swift_willThrow();
  if (qword_100188280 != -1)
  {
    swift_once();
  }

  v3 = v0[28];
  v4 = type metadata accessor for Logger();
  sub_10000C2D4(v4, qword_1001A57F0);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[27];
  v8 = v0[28];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[18];
    v12 = v0[19];
    v14 = v0[20];
    v15 = Error.localizedDescription.getter();
    v17 = sub_10009CACC(v15, v16, &v20);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "Error loading family circle: %s", v10, 0xCu);
    sub_1000086BC(v11);
  }

  else
  {
  }

  sub_10000875C();

  return v18();
}

uint64_t *sub_1000CA698(uint64_t a1, void *a2, void *a3)
{
  result = sub_100025734((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    return sub_1000C9700(v6, a3);
  }

  if (a2)
  {
    return sub_1000C9770(v6, a2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CA78C()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_1000CA824()
{
  v1 = qword_100190218;
  v2 = type metadata accessor for ObservationRegistrar();
  sub_10000C31C(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

uint64_t sub_1000CA8A0()
{
  v0 = sub_10011484C();

  v1 = qword_100190218;
  v2 = type metadata accessor for ObservationRegistrar();
  sub_10000C31C(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1000CA91C()
{
  v0 = sub_1000CA8A0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for PurchasesFlowViewModel()
{
  result = qword_100190248;
  if (!qword_100190248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CA9BC()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000CAA88()
{
  v0 = type metadata accessor for Logger();
  sub_10000C270(v0, qword_1001A57F0);
  sub_10000C2D4(v0, qword_1001A57F0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000CAB04@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000C9A20();
  *a2 = result & 1;
  return result;
}

unint64_t sub_1000CAB74()
{
  result = qword_1001905E0;
  if (!qword_1001905E0)
  {
    type metadata accessor for PurchasesFlowViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001905E0);
  }

  return result;
}

id sub_1000CABCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000C984C();
  *a2 = result;
  return result;
}

uint64_t sub_1000CAC4C@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  sub_10000B4E0((v1 + 2), a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
}

void *sub_1000CACB0(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000CAD60();
  *v1 = result;
  return result;
}

void sub_1000CACD8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000CADC8(v2);
}

void *sub_1000CAD08(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000CB0DC();
  *v1 = result;
  return result;
}

void sub_1000CAD30(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1000CB144(v2);
}

void *sub_1000CAD60()
{
  swift_getKeyPath();
  sub_1000CBCA8();
  sub_10006F2DC();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_1000CADC8(void *a1)
{
  v3 = *(v1 + 16);
  v4 = v3;
  LOBYTE(v3) = sub_1000CB910(v3, a1, &qword_100190800, AMSAuthenticateRequest_ptr);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100096754();
    sub_1000CB888();
  }

  else
  {
    v6 = *(v1 + 16);
    *(v1 + 16) = a1;
  }
}

void sub_1000CAEBC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  v3 = a2;
}

uint64_t sub_1000CAEF0()
{
  swift_getKeyPath();
  v5 = v0;
  sub_1000CBCA8();
  sub_10006F2DC();

  v2 = *(v0 + 24);
  v1 = *(v5 + 32);
  v3 = sub_100077CF4();
  sub_100006568(v3);
  return sub_100077CF4();
}

uint64_t sub_1000CAF5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000CAEF0();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1000CBE6C;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1000CAFCC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1000CBE70;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_100006568(v3);
  return sub_1000CB05C(v6, v5);
}

uint64_t sub_1000CB090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  sub_100006568(a2);
  return sub_1000068F8(v3);
}

void *sub_1000CB0DC()
{
  swift_getKeyPath();
  sub_1000CBCA8();
  sub_10006F2DC();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void sub_1000CB144(void *a1)
{
  v3 = *(v1 + 40);
  v4 = v3;
  LOBYTE(v3) = sub_1000CB910(v3, a1, &qword_1001907F8, AMSDialogRequest_ptr);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100096754();
    sub_1000CB888();
  }

  else
  {
    v6 = *(v1 + 40);
    *(v1 + 40) = a1;
  }
}

void sub_1000CB238(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = a2;
  v3 = a2;
}

uint64_t sub_1000CB26C()
{
  swift_getKeyPath();
  v5 = v0;
  sub_1000CBCA8();
  sub_10006F2DC();

  v2 = *(v0 + 48);
  v1 = *(v5 + 56);
  v3 = sub_100077CF4();
  sub_100006568(v3);
  return sub_100077CF4();
}

uint64_t sub_1000CB2D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000CB26C();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_1000CBD3C;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

uint64_t sub_1000CB348(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1000CBD38;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_100006568(v3);
  return sub_1000CB3D8(v6, v5);
}

uint64_t sub_1000CB40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t))
{
  swift_getKeyPath();
  sub_1000CB888();
  a5(a1, a2);
}

uint64_t sub_1000CB48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  sub_100006568(a2);
  return sub_1000068F8(v3);
}

uint64_t sub_1000CB4D8(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel____lazy_storage___webModel) = 0;
  ObservationRegistrar.init()();
  *(v2 + 64) = a1;
  v5 = OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel_url;
  v6 = type metadata accessor for URL();
  sub_10000AF7C(v6);
  (*(v7 + 32))(v2 + v5, a2);
  return v2;
}

uint64_t sub_1000CB570()
{
  v1 = OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel____lazy_storage___webModel;
  if (*(v0 + OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel____lazy_storage___webModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel____lazy_storage___webModel);
  }

  else
  {
    v2 = sub_1000CB5D8(v0);
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1000CB5D8(uint64_t a1)
{
  v2 = sub_100003768(&qword_1001907F0, &qword_10012DD98);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for WebModelHandlers();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_retain_n();
  WebModelHandlers.init(handleAuthenticateRequest:handleDelegateAction:handleDialogRequest:didResolveWithResult:didEncodeNetworkRequest:)();
  v11 = *(a1 + 64);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 ams_sharedAccountStore];
  v15 = [v14 ams_activeiTunesAccount];

  (*(v7 + 16))(v5, v10, v6);
  sub_100003CE8(v5, 0, 1, v6);
  v16 = type metadata accessor for WebModel();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = WebModel.init(bag:account:clientInfo:appearance:clientOptions:loadUsingWebKit:metricsOverlay:handlers:)();
  (*(v7 + 8))(v10, v6);
  return v19;
}

uint64_t sub_1000CB81C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void *))
{

  a5(a2, a3);
  v11 = a1;
  return a6(a1);
}

BOOL sub_1000CB910(unint64_t a1, unint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v4 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_100025778(0, a3, a4);
    v7 = a1;
    v8 = a2;
    v4 = static NSObject.== infix(_:_:)();
  }

  return (v4 & 1) == 0;
}

uint64_t sub_1000CB994()
{
  v1 = *(v0 + 32);
  sub_1000068F8(*(v0 + 24));

  v2 = *(v0 + 56);
  sub_1000068F8(*(v0 + 48));

  v3 = OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel_url;
  v4 = type metadata accessor for URL();
  sub_10000AF7C(v4);
  (*(v5 + 8))(v0 + v3);
  v6 = *(v0 + OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel____lazy_storage___webModel);

  v7 = OBJC_IVAR____TtC11SupportFlow15AMSWebViewModel___observationRegistrar;
  v8 = type metadata accessor for ObservationRegistrar();
  sub_10000AF7C(v8);
  (*(v9 + 8))(v0 + v7);
  return v0;
}

uint64_t sub_1000CBA5C()
{
  sub_1000CB994();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for AMSWebViewModel()
{
  result = qword_100190628;
  if (!qword_100190628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CBB08()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t sub_1000CBCA8()
{
  result = qword_100190158;
  if (!qword_100190158)
  {
    type metadata accessor for AMSWebViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190158);
  }

  return result;
}

uint64_t sub_1000CBD00()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000CBD3C(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

void *sub_1000CBD6C(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000CB0DC();
  *v1 = result;
  return result;
}

uint64_t sub_1000CBDDC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  v7 = a1;
  return v3(&v7, &v6);
}

void *sub_1000CBE18(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000CAD60();
  *v1 = result;
  return result;
}

uint64_t sub_1000CBE74()
{
  v1 = type metadata accessor for SystemLanguageModel.Availability();
  v2 = sub_10000ED84(v1);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = *(v0 + 40);
  SystemLanguageModel.availability.getter();
  type metadata accessor for SystemLanguageModel.Availability.UnavailableReason();
  v11 = sub_1000D2128();
  sub_100003CE8(v11, v12, 1, v13);
  LOBYTE(v10) = static SystemLanguageModel.Availability.== infix(_:_:)();
  sub_1000D1CB4(v7, &type metadata accessor for SystemLanguageModel.Availability);
  sub_1000D1CB4(v9, &type metadata accessor for SystemLanguageModel.Availability);
  return v10 & 1;
}

uint64_t sub_1000CBF60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100190B40, &qword_10012E1A8);
  v5 = sub_100008780(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = v13 - v10;
  Regex.init(_regexString:version:)();
  v13[2] = a1;
  v13[3] = a2;
  sub_1000D1E54();
  sub_1000D1EA8();
  sub_10000AAEC(&qword_100190B58, &qword_100190B40, &qword_10012E1A8);
  RangeReplaceableCollection<>.replacing<A, B, C>(_:maxReplacements:with:)();
  (*(v7 + 8))(v11, v4);
  return v13[4];
}

uint64_t sub_1000CC0FC()
{
  sub_100025A94();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v5 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  sub_10000ED84(v5);
  v7 = *(v6 + 64);
  v1[7] = sub_1000D2168();
  v1[8] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v1[9] = v8;
  sub_100052F6C(v8);
  v1[10] = v9;
  v11 = *(v10 + 64);
  v1[11] = sub_1000D2168();
  v1[12] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v1[13] = v12;
  sub_100052F6C(v12);
  v1[14] = v13;
  v15 = *(v14 + 64);
  v1[15] = sub_1000D2168();
  v1[16] = swift_task_alloc();
  v16 = type metadata accessor for SystemLanguageModel.Availability();
  sub_10000ED84(v16);
  v18 = *(v17 + 64) + 15;
  v1[17] = swift_task_alloc();
  v19 = type metadata accessor for SystemLanguageModel.Availability.UnavailableReason();
  v1[18] = v19;
  sub_100052F6C(v19);
  v1[19] = v20;
  v22 = *(v21 + 64);
  v1[20] = sub_1000D2168();
  v1[21] = swift_task_alloc();
  v23 = sub_100003768(&qword_10018DA18, &unk_100129750);
  sub_10000ED84(v23);
  v25 = *(v24 + 64);
  v1[22] = sub_1000D2168();
  v1[23] = swift_task_alloc();
  v26 = type metadata accessor for PhoneNumberOption(0);
  v1[24] = v26;
  sub_100052F6C(v26);
  v1[25] = v27;
  v29 = *(v28 + 64);
  v1[26] = sub_1000D2168();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v30 = sub_100003768(&qword_10018D468, &qword_10012E130);
  sub_10000ED84(v30);
  v32 = *(v31 + 64) + 15;
  v1[32] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[33] = static MainActor.shared.getter();
  v34 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[34] = v34;
  v1[35] = v33;

  return _swift_task_switch(sub_1000CC3F0, v34, v33);
}

uint64_t sub_1000CC3F0()
{
  sub_100025A94();
  v1 = v0[6];
  v2 = v0[4];
  v3 = *(v1 + 32);
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;

  v4 = swift_task_alloc();
  v0[36] = v4;
  *v4 = v0;
  v4[1] = sub_1000CC498;
  v5 = sub_1000D21E0();

  return sub_1000CE120(v5, v6);
}

uint64_t sub_1000CC498()
{
  sub_100025A94();
  v1 = *v0;
  sub_1000461C8();
  *v3 = v2;
  v4 = v1[36];
  v5 = *v0;
  sub_1000461C8();
  *v6 = v5;
  *(v8 + 296) = v7;

  v9 = v1[35];
  v10 = v1[34];

  return _swift_task_switch(sub_1000CC5B4, v10, v9);
}

uint64_t sub_1000CC5B4()
{
  v159 = v0;
  v1 = v0[32];
  v2 = v0[5];
  Locale.region.getter();
  v3 = type metadata accessor for Locale.Region();
  v4 = sub_1000D2128();
  v6 = sub_10000E5F0(v4, v5, v3);
  v7 = v0[32];
  if (v6 == 1)
  {
    sub_100044F98(v0[32], &qword_10018D468, &qword_10012E130);
    goto LABEL_3;
  }

  v27 = v0[32];
  v28 = Locale.Region.identifier.getter();
  v30 = v29;
  (*(*(v3 - 8) + 8))(v7, v3);
  v31 = v28 == 16972 && v30 == 0xE200000000000000;
  if (v31 || (sub_10000AFAC(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v32 = v0[33];

LABEL_18:
    v33 = v0[37];
    v35 = v0[23];
    v34 = v0[24];
    v37 = v0[3];
    v36 = v0[4];
    *(v0[6] + 16) = 0;
    v0[2] = v33;
    sub_100003768(&qword_10018A748, &qword_100124960);
    sub_10000AAEC(&qword_10018A750, &qword_10018A748, &qword_100124960);
    v38 = BidirectionalCollection<>.joined(separator:)();
    v40 = v39;

    sub_1000CDD54(v38, v40, v37, v36, v35);

    sub_1000D21A0(v35, 1, v34);
    if (v31)
    {
      sub_100044F98(v0[23], &qword_10018DA18, &unk_100129750);
      v157 = _swiftEmptyArrayStorage;
      goto LABEL_44;
    }

    v41 = v0[31];
    v42 = v0[25];
    sub_1000D1D08(v0[23], v41);
    sub_100003768(&qword_100190AD8, &unk_10012E150);
    v43 = *(v42 + 72);
    v44 = *(v42 + 80);
    v45 = sub_1000D2244();
    *(v45 + 16) = xmmword_100121620;
    v157 = v45;
    v85 = v45 + v42;
    v86 = v41;
    goto LABEL_23;
  }

  if (v28 == 19280 && v30 == 0xE200000000000000)
  {
    v144 = v0[33];

    goto LABEL_48;
  }

  sub_10000AFAC();
  v88 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v88)
  {
    v89 = v0[33];
LABEL_48:

    goto LABEL_18;
  }

LABEL_3:
  v8 = v0[37];
  if (v8[2] == 1)
  {
    v9 = v0[24];
    v10 = v0[22];
    v12 = v0[3];
    v11 = v0[4];
    v13 = v8[4];
    v14 = v8[5];

    sub_1000CDD54(v13, v14, v12, v11, v10);

    v15 = sub_1000D2128();
    sub_1000D21A0(v15, v16, v9);
    if (!v31)
    {
      v76 = v0[37];
      v77 = v0[33];
      v78 = v0[30];
      v79 = v0[25];
      v80 = v0[22];
      v81 = v0[6];

      sub_1000D1D08(v80, v78);
      *(v81 + 16) = 0;
      sub_100003768(&qword_100190AD8, &unk_10012E150);
      v82 = *(v79 + 72);
      v83 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_100121620;
      v157 = v84;
      v85 = v84 + v83;
      v86 = v78;
LABEL_23:
      sub_1000D1D08(v86, v85);
      goto LABEL_44;
    }

    sub_100044F98(v0[22], &qword_10018DA18, &unk_100129750);
  }

  v18 = v0[17];
  v17 = v0[18];
  v19 = *(v0[6] + 40);
  SystemLanguageModel.availability.getter();
  sub_1000D21A0(v18, 1, v17);
  if (!v31)
  {
    v46 = v0[33];
    v47 = v0[20];
    v48 = v0[21];
    v49 = v0[18];
    v50 = v0[19];
    v52 = v0[16];
    v51 = v0[17];
    v53 = v0[6];

    v54 = *(v50 + 32);
    v55 = sub_100096D88();
    v56(v55);
    *(v53 + 16) = 0;
    static Logger.supportFlowApp.getter();
    v57 = *(v50 + 16);
    v58 = sub_10000AFAC();
    v59(v58);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();
    v62 = os_log_type_enabled(v60, v61);
    v64 = v0[19];
    v63 = v0[20];
    v65 = v0[18];
    v66 = v0[16];
    v68 = v0[13];
    v67 = v0[14];
    if (v62)
    {
      v156 = v0[13];
      v69 = swift_slowAlloc();
      v152 = v61;
      v70 = swift_slowAlloc();
      v158[0] = v70;
      *v69 = 136315138;
      v150 = sub_1000CDF60();
      v154 = v66;
      v72 = v71;
      v73 = sub_1000D218C();
      v74(v73);
      v75 = sub_10009CACC(v150, v72, v158);

      *(v69 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v60, v152, "System model is not available: %s", v69, 0xCu);
      sub_1000086BC(v70);
      sub_100008744();
      sub_100008744();

      result = (*(v67 + 8))(v154, v156);
    }

    else
    {

      v90 = sub_1000D218C();
      v91(v90);
      result = (*(v67 + 8))(v66, v68);
    }

    v92 = 0;
    v93 = v0[25];
    v151 = v93;
    v153 = v0[28];
    v149 = v0[24];
    v94 = v8[2];
    v148 = (v0[10] + 32);
    v95 = v0[37] + 40;
    v157 = _swiftEmptyArrayStorage;
    for (i = v95; ; v95 = i)
    {
      for (j = (v95 + 16 * v92); ; j += 2)
      {
        if (v94 == v92)
        {
          v121 = v0[37];
          v122 = v0[21];
          v124 = v0[18];
          v123 = v0[19];

          v155(v122, v124);
LABEL_44:
          v126 = v0[31];
          v125 = v0[32];
          v128 = v0[29];
          v127 = v0[30];
          v129 = v0[27];
          v130 = v0[28];
          v131 = v0[26];
          v133 = v0[22];
          v132 = v0[23];
          sub_1000D1FB0();

          sub_1000D20FC(v134, v135, v136, v137, v138, v139, v140, v141, v145, v146, i, v148, v149, v151, v153, v155, v157);
          sub_1000D2208();

          __asm { BRAA            X2, X16 }
        }

        if (v92 >= v8[2])
        {
          __break(1u);
          return result;
        }

        v98 = v0[8];
        v97 = v0[9];
        v100 = *(j - 1);
        v99 = *j;
        sub_1000D20B8();
        v158[0] = v101;
        v158[1] = 0xE600000000000000;

        v102._countAndFlagsBits = sub_1000D2180();
        String.append(_:)(v102);
        URL.init(string:)();

        sub_1000D21A0(v98, 1, v97);
        if (!v31)
        {
          break;
        }

        v103 = v0[8];

        result = sub_100044F98(v103, &qword_100188EE0, &unk_100122AE0);
        ++v92;
      }

      v104 = v0[28];
      v105 = v0[12];
      v106 = v0[9];
      v145 = v106;
      v146 = v0[29];
      v107 = *v148;
      (*v148)(v105, v0[8]);
      v107(&v104[*(v149 + 20)], v105, v145);
      *v104 = v100;
      *(v153 + 8) = v99;
      sub_1000D1D08(v104, v146);
      v108 = v157;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v108 = sub_1000D0714(0, v157[2] + 1, 1, v157);
      }

      v111 = v108[2];
      v110 = v108[3];
      v157 = v108;
      if (v111 >= v110 >> 1)
      {
        v118 = sub_100077C78(v110);
        v157 = sub_1000D0714(v118, v119, v120, v108);
      }

      ++v92;
      v112 = v0[29];
      v157[2] = (v111 + 1);
      v113 = *(v151 + 80);
      sub_100077EAC();
      result = sub_1000D1D08(v117, v115 + v114 + *(v116 + 72) * v111);
    }
  }

  sub_1000D1CB4(v0[17], &type metadata accessor for SystemLanguageModel.Availability);
  v20 = swift_task_alloc();
  v0[38] = v20;
  *v20 = v0;
  v20[1] = sub_1000CCE30;
  v21 = v0[37];
  sub_1000D21E0();
  sub_1000D2208();

  return sub_1000CEAA8(v22, v23, v24);
}

uint64_t sub_1000CCE30(uint64_t a1)
{
  v4 = *v2;
  sub_1000461C8();
  *v5 = v4;
  v7 = *(v6 + 304);
  v8 = *v2;
  sub_1000461C8();
  *v9 = v8;
  v4[39] = v1;

  if (v1)
  {
    v10 = v4[34];
    v11 = v4[35];
    v12 = sub_1000CD088;
  }

  else
  {
    v13 = v4[37];

    v4[40] = a1;
    v10 = v4[34];
    v11 = v4[35];
    v12 = sub_1000CCF58;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_1000CCF58()
{
  v1 = v0[33];
  v2 = v0[6];

  *(v2 + 16) = 1;
  v31 = v0[40];
  v4 = v0[31];
  v3 = v0[32];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[27];
  v8 = v0[28];
  v9 = v0[26];
  v11 = v0[22];
  v10 = v0[23];
  sub_1000D1FB0();

  v20 = sub_1000D20FC(v12, v13, v14, v15, v16, v17, v18, v19, v23, v24, v25, v26, v27, v28, v29, v30, v31);

  return v21(v20);
}

uint64_t sub_1000CD088()
{
  v1 = v0[39];
  v2 = v0[33];
  v3 = v0[15];
  v4 = v0[6];

  *(v4 + 16) = 0;
  static Logger.supportFlowApp.getter();
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[39];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "System model parsing failed: %@", v8, 0xCu);
    sub_100044F98(v9, &qword_100189390, &qword_1001241D0);
    sub_100008744();
    sub_100008744();
  }

  v11 = v0[37];
  v72 = v0[25];
  v73 = v0[26];
  v71 = v0[24];
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[13];
  v15 = v0[10];

  result = (*(v13 + 8))(v12, v14);
  v17 = 0;
  v18 = *(v11 + 16);
  v70 = (v15 + 32);
  v19 = v11 + 40;
  v74 = _swiftEmptyArrayStorage;
  v69 = v11 + 40;
LABEL_4:
  for (i = (v19 + 16 * v17); ; i += 2)
  {
    if (v18 == v17)
    {
      v45 = v0[39];
      v46 = v0[37];

      v48 = v0[31];
      v47 = v0[32];
      v50 = v0[29];
      v49 = v0[30];
      v51 = v0[27];
      v52 = v0[28];
      v53 = v0[26];
      v55 = v0[22];
      v54 = v0[23];
      sub_1000D1FB0();

      sub_1000D20FC(v56, v57, v58, v59, v60, v61, v62, v63, v66, v67, v68, v69, v70, v71, v72, v73, v74);
      sub_1000D2208();

      __asm { BRAA            X2, X16 }
    }

    if (v17 >= *(v0[37] + 16))
    {
      break;
    }

    v21 = v0[9];
    v22 = v0[7];
    v24 = *(i - 1);
    v23 = *i;
    sub_1000D20B8();

    v25._countAndFlagsBits = sub_1000D2180();
    String.append(_:)(v25);
    URL.init(string:)();

    sub_1000D21A0(v22, 1, v21);
    if (!v26)
    {
      v28 = v0[26];
      v29 = v0[11];
      v67 = v29;
      v68 = v0[27];
      v30 = v0[9];
      v31 = v0[7];
      v32 = *v70;
      (*v70)();
      (v32)(v28 + *(v71 + 20), v67, v30);
      *v28 = v24;
      *(v73 + 8) = v23;
      sub_1000D1D08(v28, v68);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v74 = sub_1000D0714(0, v74[2] + 1, 1, v74);
      }

      v35 = v74[2];
      v34 = v74[3];
      if (v35 >= v34 >> 1)
      {
        v42 = sub_100077C78(v34);
        v74 = sub_1000D0714(v42, v43, v44, v74);
      }

      ++v17;
      v36 = v0[27];
      v74[2] = (v35 + 1);
      v37 = *(v72 + 80);
      sub_100077EAC();
      result = sub_1000D1D08(v41, v39 + v38 + *(v40 + 72) * v35);
      v19 = v11 + 40;
      goto LABEL_4;
    }

    v27 = v0[7];

    result = sub_100044F98(v27, &qword_100188EE0, &unk_100122AE0);
    ++v17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CD47C()
{
  v0 = sub_1000CFD80();
  sub_100003768(&qword_100190980, &qword_10012DFC0);
  sub_1000D2068();
  v1 = type metadata accessor for GenerationSchema.Property();
  sub_100052F6C(v1);
  v3 = *(v2 + 72);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100122C90;
  v7 = sub_1000D20D4();
  sub_1000D2264(v7, 0xE500000000000000, 0xD00000000000003ALL, v8 | 0x8000000000000000);
  v9 = sub_1000D1F90();
  sub_1000D2264(v9, v12, v10 | 0xD00000000000003ALL, v11 | 0x8000000000000000);

  return GenerationSchema.init(type:description:properties:)(&type metadata for GeneratedPhoneNumberOption, v0, 0, 0, v6);
}

uint64_t sub_1000CD5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100003768(&qword_100190970, &qword_10012DFB8);
  v9 = sub_10000ED84(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v24 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = _swiftEmptyArrayStorage;
  v15 = sub_1000D20D4();
  sub_1000CD7A8(v15, 0xE500000000000000, a1, a2, v14);
  v16 = sub_1000D1F90();
  sub_1000CD7A8(v16, v17, a3, a4, v14);
  swift_beginAccess();
  v18 = *(v14 + 16);

  v20 = sub_1000CD888(v19);

  v24[2] = v20;
  v21 = type metadata accessor for GenerationID();
  sub_100003CE8(v13, 1, 1, v21);
  sub_100003768(&qword_100190988, &qword_10012DFC8);
  type metadata accessor for GeneratedContent();
  sub_1000D2074();
  sub_10000AAEC(v22, &qword_100190988, &qword_10012DFC8);
  GeneratedContent.init<A, B>(properties:id:uniquingKeysWith:)();
}

uint64_t sub_1000CD7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v15 = a3;
  v16 = &type metadata for String;
  v17 = &protocol witness table for String;
  *(&v15 + 1) = a4;
  *&v12 = a1;
  *(&v12 + 1) = a2;
  sub_10003C91C(&v15, v13);
  swift_beginAccess();

  sub_1000CFE0C();
  v6 = *(*(a5 + 16) + 16);
  sub_1000CFE58(v6);
  v7 = *(a5 + 16);
  *(v7 + 16) = v6 + 1;
  v8 = v7 + 56 * v6;
  v9 = v13[0];
  v10 = v13[1];
  *(v8 + 80) = v14;
  *(v8 + 48) = v9;
  *(v8 + 64) = v10;
  *(v8 + 32) = v12;
  *(a5 + 16) = v7;
  return swift_endAccess();
}

id *sub_1000CD888(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v17 = _swiftEmptyArrayStorage;
    sub_1000D129C(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_1000D12BC(v4, v12);
      sub_100003768(&qword_100190998, &qword_10012DFD0);
      sub_100003768(&qword_1001909A0, &qword_10012DFD8);
      swift_dynamicCast();
      v17 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000D129C((v5 > 1), v6 + 1, 1);
        v2 = v17;
      }

      v2[2] = (v6 + 1);
      v7 = &v2[7 * v6];
      v8 = v13;
      v9 = v14;
      v10 = v15;
      v7[10] = v16;
      *(v7 + 3) = v9;
      *(v7 + 4) = v10;
      *(v7 + 2) = v8;
      v4 += 56;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1000CDA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100003768(&qword_100190970, &qword_10012DFB8);
  v6 = sub_10000ED84(v5);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v11 = type metadata accessor for GenerationID();
  v12 = sub_100008780(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for GeneratedPhoneNumberOption.PartiallyGenerated(0);
  v20 = (a2 + *(v19 + 20));
  *v20 = 0;
  v20[1] = 0;
  v21 = (a2 + *(v19 + 24));
  *v21 = 0;
  v21[1] = 0;
  GeneratedContent.id.getter();
  if (sub_10000E5F0(v10, 1, v11) == 1)
  {
    GenerationID.init()();
    if (sub_10000E5F0(v10, 1, v11) != 1)
    {
      sub_100044F98(v10, &qword_100190970, &qword_10012DFB8);
    }
  }

  else
  {
    v22 = *(v14 + 32);
    v23 = sub_1000D2180();
    v24(v23);
  }

  (*(v14 + 32))(a2, v18, v11);
  sub_1000D20D4();
  GeneratedContent.value<A>(_:forProperty:)();
  if (v2)
  {
    v25 = type metadata accessor for GeneratedContent();
    sub_10000C31C(v25);
    (*(v26 + 8))(a1);
    return sub_1000D1CB4(a2, type metadata accessor for GeneratedPhoneNumberOption.PartiallyGenerated);
  }

  else
  {
    *v20 = v30;
    sub_1000D1F90();
    GeneratedContent.value<A>(_:forProperty:)();
    v27 = type metadata accessor for GeneratedContent();
    sub_10000C31C(v27);
    result = (*(v28 + 8))(a1);
    *v21 = v30;
  }

  return result;
}

uint64_t sub_1000CDCD4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GenerationID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1000CDD54@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v24 - v12;
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[0] = 0x2F2F3A6C6574;
  v24[1] = 0xE600000000000000;
  v19._countAndFlagsBits = a1;
  v19._object = a2;
  String.append(_:)(v19);
  URL.init(string:)();

  if (sub_10000E5F0(v13, 1, v14) == 1)
  {
    sub_100044F98(v13, &qword_100188EE0, &unk_100122AE0);
    v20 = type metadata accessor for PhoneNumberOption(0);
    return sub_100003CE8(a5, 1, 1, v20);
  }

  else
  {
    v22 = *(v15 + 32);
    v22(v18, v13, v14);
    v23 = type metadata accessor for PhoneNumberOption(0);
    v22(&a5[*(v23 + 20)], v18, v14);
    *a5 = a3;
    *(a5 + 1) = a4;
    sub_100003CE8(a5, 0, 1, v23);
  }
}

uint64_t sub_1000CDF60()
{
  v1 = v0;
  v2 = type metadata accessor for SystemLanguageModel.Availability.UnavailableReason();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for SystemLanguageModel.Availability.UnavailableReason.deviceNotEligible(_:))
  {
    return 0xD000000000000032;
  }

  if (v7 == enum case for SystemLanguageModel.Availability.UnavailableReason.appleIntelligenceNotEnabled(_:))
  {
    return 0xD000000000000022;
  }

  if (v7 == enum case for SystemLanguageModel.Availability.UnavailableReason.modelNotReady(_:))
  {
    return 0xD00000000000001ELL;
  }

  (*(v3 + 8))(v6, v2);
  return 0x206E776F6E6B6E55;
}

uint64_t sub_1000CE120(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = type metadata accessor for DataDetector.Match.SemanticDetails();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = type metadata accessor for DataDetector.Match.SemanticDetails.PhoneNumber();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v9 = type metadata accessor for DataDetector.Match();
  v2[15] = v9;
  v10 = *(v9 - 8);
  v2[16] = v10;
  v11 = *(v10 + 64) + 15;
  v2[17] = swift_task_alloc();
  v12 = *(*(sub_100003768(&qword_100190B08, &qword_10012E180) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v13 = type metadata accessor for DataDetector.Options();
  v2[19] = v13;
  v14 = *(v13 - 8);
  v2[20] = v14;
  v15 = *(v14 + 64) + 15;
  v2[21] = swift_task_alloc();
  matched = type metadata accessor for DataDetector.MatchType();
  v2[22] = matched;
  v17 = *(matched - 8);
  v2[23] = v17;
  v18 = *(v17 + 64) + 15;
  v2[24] = swift_task_alloc();
  v19 = sub_100003768(&qword_100190B10, &qword_10012E188);
  v2[25] = v19;
  v20 = *(*(v19 - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v21 = sub_100003768(&qword_100190B18, &qword_10012E190);
  v2[27] = v21;
  v22 = *(v21 - 8);
  v2[28] = v22;
  v23 = *(v22 + 64) + 15;
  v2[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000CE42C, 0, 0);
}

uint64_t sub_1000CE42C()
{
  v21 = *(v0 + 200);
  v22 = *(v0 + 232);
  v1 = *(v0 + 184);
  v17 = *(v0 + 192);
  v2 = *(v0 + 168);
  v18 = *(v0 + 176);
  v19 = *(v0 + 208);
  v3 = *(v0 + 160);
  v20 = *(v0 + 152);
  v4 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 24) = v4;
  sub_100003768(&qword_100190B20, &qword_10012E198);
  v5 = *(v1 + 72);
  v6 = *(v1 + 80);
  v7 = sub_1000D2244();
  *(v7 + 16) = xmmword_100121620;
  static DataDetector.MatchType.phoneNumber.getter();
  *(v0 + 48) = v7;
  sub_1000D1C6C(&qword_100190B28, &type metadata accessor for DataDetector.MatchType);
  sub_100003768(&qword_100190B30, &qword_10012E1A0);
  sub_1000D2074();
  sub_10000AAEC(v8, &qword_100190B30, &qword_10012E1A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  DataDetector.Options.init()();
  v9 = sub_10000AC24();
  StringProtocol.dataDetectorMatches(_:options:)();
  (*(v3 + 8))(v2, v20);
  (*(v1 + 8))(v17, v18);
  *(v0 + 32) = &type metadata for String;
  *(v0 + 40) = v9;
  *(v0 + 240) = swift_getOpaqueTypeConformance2();
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  *(v0 + 264) = enum case for DataDetector.Match.SemanticDetails.phoneNumber(_:);
  *(v0 + 248) = _swiftEmptyArrayStorage;
  v10 = *(v0 + 240);
  v11 = *(v0 + 216);
  v12 = *(v0 + 200);
  swift_getAssociatedConformanceWitness();
  v13 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v14 = swift_task_alloc();
  *(v0 + 256) = v14;
  *v14 = v0;
  v15 = sub_1000D1FF8(v14);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v15);
}

uint64_t sub_1000CE6B8()
{
  sub_100025A94();
  v2 = *(*v1 + 256);
  v3 = *v1;
  sub_1000461C8();
  *v4 = v3;

  if (!v0)
  {

    return _swift_task_switch(sub_1000CE7C0, 0, 0);
  }

  return result;
}

uint64_t sub_1000CE7C0()
{
  sub_1000D21A0(*(v0 + 144), 1, *(v0 + 120));
  if (v1)
  {
    v2 = *(v0 + 208);
    v3 = *(v0 + 192);
    v4 = *(v0 + 168);
    v5 = *(v0 + 136);
    v6 = *(v0 + 112);
    v7 = *(v0 + 88);
    (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));

    v8 = *(v0 + 8);
    v9 = *(v0 + 248);

    return v8(v9);
  }

  else
  {
    v11 = *(v0 + 264);
    v12 = *(v0 + 136);
    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    v15 = *(v0 + 72);
    v16 = *(*(v0 + 128) + 32);
    v17 = sub_1000D210C();
    v18(v17);
    DataDetector.Match.details.getter();
    v19 = *(v14 + 88);
    v20 = sub_100025A88();
    if (v21(v20) == v11)
    {
      v22 = *(v0 + 248);
      v24 = *(v0 + 104);
      v23 = *(v0 + 112);
      v25 = *(v0 + 96);
      (*(*(v0 + 80) + 96))(*(v0 + 88), *(v0 + 72));
      v26 = *(v24 + 32);
      v27 = sub_100096D88();
      v28(v27);
      v29 = DataDetector.Match.SemanticDetails.PhoneNumber.phoneNumber.getter();
      v31 = v30;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *(v0 + 248);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000D2034();
        sub_1000CFF70();
        v33 = v48;
      }

      v34 = *(v33 + 16);
      if (v34 >= *(v33 + 24) >> 1)
      {
        sub_1000CFF70();
        v33 = v49;
      }

      v36 = *(v0 + 128);
      v35 = *(v0 + 136);
      v37 = *(v0 + 120);
      (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
      (*(v36 + 8))(v35, v37);
      *(v33 + 16) = v34 + 1;
      v38 = v33 + 16 * v34;
      *(v38 + 32) = v29;
      *(v38 + 40) = v31;
    }

    else
    {
      v40 = *(v0 + 80);
      v39 = *(v0 + 88);
      v41 = *(v0 + 72);
      (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
      (*(v40 + 8))(v39, v41);
      v33 = *(v0 + 248);
    }

    *(v0 + 248) = v33;
    v42 = *(v0 + 240);
    v43 = *(v0 + 216);
    v44 = *(v0 + 200);
    swift_getAssociatedConformanceWitness();
    v45 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
    v46 = swift_task_alloc();
    *(v0 + 256) = v46;
    *v46 = v0;
    v47 = sub_1000D1FF8();

    return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v47);
  }
}

uint64_t sub_1000CEAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = *(*(sub_100003768(&qword_100188EE0, &unk_100122AE0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v8 = type metadata accessor for PhoneNumberOption(0);
  v3[12] = v8;
  v9 = *(v8 - 8);
  v3[13] = v9;
  v10 = *(v9 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v11 = *(*(sub_100003768(&qword_100190AE0, &qword_10012E160) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v12 = type metadata accessor for GenerationOptions();
  v3[21] = v12;
  v13 = *(v12 - 8);
  v3[22] = v13;
  v14 = *(v13 + 64) + 15;
  v3[23] = swift_task_alloc();
  v15 = sub_100003768(&qword_100190AE8, &qword_10012E168);
  v3[24] = v15;
  v16 = *(v15 - 8);
  v3[25] = v16;
  v17 = *(v16 + 64) + 15;
  v3[26] = swift_task_alloc();
  v18 = *(*(sub_100003768(&qword_100190AF0, &qword_10012E170) - 8) + 64) + 15;
  v3[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000CED88, 0, 0);
}

uint64_t sub_1000CED88()
{
  v1 = v0[27];
  v2 = v0[23];
  v3 = v0[20];
  v5 = v0[3];
  v4 = v0[4];
  type metadata accessor for LanguageModelSession();
  type metadata accessor for Instructions();
  v6 = sub_1000D2128();
  sub_100003CE8(v6, v7, 1, v8);
  type metadata accessor for SystemLanguageModel();
  static SystemLanguageModel.default.getter();
  v0[28] = LanguageModelSession.__allocating_init(model:tools:instructions:)();
  _StringGuts.grow(_:)(43);

  v9._countAndFlagsBits = sub_1000D2180();
  String.append(_:)(v9);
  v0[29] = 0x8000000100138990;
  v10 = sub_100003768(&qword_100190AF8, &qword_10012E178);
  v11 = type metadata accessor for GenerationOptions.SamplingMode();
  sub_100003CE8(v3, 1, 1, v11);
  GenerationOptions.init(sampling:temperature:maximumResponseTokens:)();
  v12 = async function pointer to LanguageModelSession.respond<A>(to:generating:includeSchemaInPrompt:options:)[1];
  v13 = swift_task_alloc();
  v0[30] = v13;
  sub_1000D1D6C();
  *v13 = v0;
  v13[1] = sub_1000CEF64;
  v14 = v0[23];
  v15 = v0[26];

  return LanguageModelSession.respond<A>(to:generating:includeSchemaInPrompt:options:)(v15, 0, 0, 0xD000000000000029, 0x8000000100138990, v10, 1, v14);
}

uint64_t sub_1000CEF64()
{
  v2 = *v1;
  sub_1000461C8();
  *v4 = v3;
  v6 = v5[30];
  v7 = v5[29];
  v8 = v5[23];
  v9 = v5[22];
  v10 = v5[21];
  v11 = *v1;
  sub_1000461C8();
  *v12 = v11;
  *(v13 + 248) = v0;

  (*(v9 + 8))(v8, v10);

  if (v0)
  {
    v14 = sub_1000CF5E8;
  }

  else
  {
    v14 = sub_1000CF0F0;
  }

  return _swift_task_switch(v14, 0, 0);
}

uint64_t sub_1000CF0F0()
{
  v1 = v0[26];
  v2 = v0[24];
  v124 = v0[15];
  v127 = v0[18];
  v148 = v0[12];
  v149 = v0[13];
  v3 = v0[9];
  v4 = v0[5];
  result = LanguageModelSession.Response.content.getter();
  v6 = 0;
  v7 = v0[2];
  v8 = v7 + 56;
  v164 = v7;
  v162 = *(v7 + 16);
  v145 = (v3 + 32);
  v152 = v0 + 7;
  v154 = v0 + 6;
  v136 = (v0 + 14);
  v139 = (v0 + 16);
  v133 = (v0 + 19);
  v165 = v0;
  v130 = (v0 + 17);
  v151 = _swiftEmptyArrayStorage;
  v160 = v4;
  v9 = v4 + 40;
  v156 = v8;
  v142 = v4 + 40;
LABEL_2:
  v10 = (v9 + 16 * v6);
  v11 = (v8 + 32 * v6);
  while (v162 != v6)
  {
    if (v6 >= *(v164 + 16))
    {
      __break(1u);
      return result;
    }

    v12 = *(v11 - 2);
    v158 = *(v11 - 3);
    v13 = *v11;
    v14 = v165[8];
    v166 = v6;
    if (v6 >= *(v160 + 16))
    {
      v15 = v154;
      v30 = *v154;
      v31 = *(v11 - 1);
      sub_1000D20B8();
      sub_1000D2224(v32);

      v33._countAndFlagsBits = v31;
      v33._object = v13;
      String.append(_:)(v33);
      URL.init(string:)();

      v34 = sub_1000D2128();
      v36 = sub_1000D21A0(v34, v35, v14);
      if (!v29)
      {
        v44 = v8;
        v45 = v165[15];
        v46 = v165[16];
        v47 = v165[14];
        v48 = v165[10];
        v49 = v165[8];
        v50 = sub_1000D21F4(v36, v165[6], v37, v38, v39, v40, v41, v42, v121, v124, v127, v130, v133, v136, v139, v142, v145);
        v51 = v11(v50);
        v59 = sub_1000D2134(v51, v52, v53, v54, v55, v56, v57, v58, v122, v125, v128, v131, v134, v137, v140, v143, v146, v148);
        v11(v59);

        *v45 = v158;
        *(v124 + 8) = v12;
        v60 = sub_10000AFAC();
        sub_1000D1D08(v60, v61);
        v62 = sub_100096D88();
        sub_1000D1DF0(v62, v63);
        v90 = v151;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v97 = sub_1000D2034();
          v90 = sub_1000D0714(v97, v98, v99, v100);
        }

        v66 = v90[2];
        v65 = v90[3];
        v67 = (v66 + 1);
        v8 = v44;
        v68 = v166;
        if (v66 >= v65 >> 1)
        {
          v101 = sub_100077C78(v65);
          v90 = sub_1000D0714(v101, v102, v103, v90);
        }

        v70 = v136;
        v69 = v139;
        goto LABEL_21;
      }
    }

    else
    {
      v15 = v152;
      v16 = *v152;
      v17 = *(v10 - 1);
      v18 = *v10;
      sub_1000D20B8();
      sub_1000D2224(v19);

      v20._countAndFlagsBits = v17;
      v20._object = v18;
      String.append(_:)(v20);

      URL.init(string:)();

      v21 = v16;
      v8 = v156;
      v22 = sub_1000D21A0(v21, 1, v14);
      if (!v29)
      {
        v71 = v165[18];
        v72 = v165[19];
        v73 = v165[17];
        v74 = v165[11];
        v75 = v165[8];
        v76 = sub_1000D21F4(v22, v165[7], v23, v24, v25, v26, v27, v28, v121, v124, v127, v130, v133, v136, v139, v142, v145);
        v77 = v11(v76);
        v85 = sub_1000D2134(v77, v78, v79, v80, v81, v82, v83, v84, v123, v126, v129, v132, v135, v138, v141, v144, v147, v148);
        v11(v85);

        *v71 = v158;
        *(v127 + 8) = v12;
        v86 = sub_10000AFAC();
        sub_1000D1D08(v86, v87);
        v88 = sub_100096D88();
        sub_1000D1DF0(v88, v89);
        v90 = v151;
        v91 = swift_isUniquelyReferenced_nonNull_native();
        if ((v91 & 1) == 0)
        {
          v104 = sub_1000D2034();
          v90 = sub_1000D0714(v104, v105, v106, v107);
        }

        v66 = v90[2];
        v92 = v90[3];
        v67 = (v66 + 1);
        v8 = v156;
        v68 = v166;
        if (v66 >= v92 >> 1)
        {
          v108 = sub_100077C78(v92);
          v90 = sub_1000D0714(v108, v109, v110, v90);
        }

        v70 = v130;
        v69 = v133;
LABEL_21:
        v93 = *v70;
        sub_1000D1CB4(*v69, type metadata accessor for PhoneNumberOption);
        v90[2] = v67;
        v94 = *(v149 + 80);
        sub_100077EAC();
        v151 = v90;
        result = sub_1000D1D08(v93, v90 + v95 + *(v96 + 72) * v66);
        v6 = v68 + 1;
        v9 = v142;
        goto LABEL_2;
      }
    }

    v43 = *v15;

    result = sub_100044F98(v43, &qword_100188EE0, &unk_100122AE0);
    v10 += 2;
    v11 = (v11 + 32);
    v6 = v166 + 1;
  }

  v112 = v165[27];
  v111 = v165[28];
  v113 = v165[25];
  v114 = v165[26];
  v115 = v165[23];
  v116 = v165[24];
  v118 = v165[19];
  v117 = v165[20];
  v119 = v165[18];
  v150 = v165[17];
  v153 = v165[16];
  v155 = v165[15];
  v157 = v165[14];
  v159 = v165[11];
  v161 = v165[10];
  v163 = v165[7];
  v167 = v165[6];

  (*(v113 + 8))(v114, v116);

  v120 = v165[1];

  return v120(v151);
}

uint64_t sub_1000CF5E8()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[23];
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[17];
  v7 = v0[18];
  v10 = v0[15];
  v9 = v0[16];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[10];
  v17 = v0[7];
  v18 = v0[6];

  v11 = v0[1];
  v12 = v0[31];

  return v11();
}

uint64_t sub_1000CF708()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_1000CF730()
{
  sub_1000CF708();

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_1000CF79C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = a1 + *(a3 + 20);

    return sub_10000E5F0(v9, a2, v8);
  }
}

uint64_t sub_1000CF838(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = v5 + *(a4 + 20);

    return sub_100003CE8(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000CF8D8()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000CF954()
{
  *(v0 + 16) = 0;
  type metadata accessor for SystemLanguageModel();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = static SystemLanguageModel.default.getter();
  return v0;
}

uint64_t sub_1000CF994(uint64_t a1)
{
  GeneratedContent.value<A>(_:forProperty:)();
  v3 = type metadata accessor for GeneratedContent();
  sub_10000C31C(v3);
  (*(v4 + 8))(a1);
  return v1;
}

uint64_t sub_1000CFAE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000CF994(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1000CFB20(uint64_t a1)
{
  v2 = sub_1000CFCC4();

  return ConvertibleToGeneratedContent.instructionsRepresentation.getter(a1, v2);
}

uint64_t sub_1000CFB6C(uint64_t a1)
{
  v2 = sub_1000CFCC4();

  return ConvertibleToGeneratedContent.promptRepresentation.getter(a1, v2);
}

unint64_t sub_1000CFBBC()
{
  result = qword_100190948;
  if (!qword_100190948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190948);
  }

  return result;
}

unint64_t sub_1000CFC14()
{
  result = qword_100190950;
  if (!qword_100190950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190950);
  }

  return result;
}

unint64_t sub_1000CFC6C()
{
  result = qword_100190958;
  if (!qword_100190958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190958);
  }

  return result;
}

unint64_t sub_1000CFCC4()
{
  result = qword_100190960;
  if (!qword_100190960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190960);
  }

  return result;
}

unint64_t sub_1000CFD80()
{
  result = qword_100190978;
  if (!qword_100190978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190978);
  }

  return result;
}

uint64_t sub_1000CFDD4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

id *sub_1000CFE0C()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1000D0C94(result, v1[2] + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

id *sub_1000CFE58(id *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_1000D0C94((v2 > 1), result + 1, 1, *v1);
    *v1 = result;
  }

  return result;
}

void sub_1000CFE98()
{
  sub_1000D1F50();
  if (v4)
  {
    sub_1000D1F40();
    if (v6 != v7)
    {
      sub_1000D20AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000D1F30();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1000D20E4(v2, v5, &qword_10018CB50, &unk_100128350);
  sub_1000D2068();
  v9 = type metadata accessor for DefaultFlowOverride();
  sub_100017BA0(v9);
  v11 = *(v10 + 80);
  sub_100077EAC();
  if (v1)
  {
    sub_1000D204C(type metadata accessor for DefaultFlowOverride, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000D1F60();
  }
}

void sub_1000CFF70()
{
  sub_1000D20C8();
  if (v5)
  {
    sub_1000D1F10();
    if (v7 != v8)
    {
      sub_1000D208C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000D1F80(v6);
  if (v3)
  {
    sub_100003768(&qword_10018D470, &unk_100128ED0);
    v9 = sub_10002CF24();
    j__malloc_size(v9);
    sub_1000D21CC();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v11 = sub_1000D211C();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v2] <= v11)
    {
      memmove(v11, v12, 16 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D0040()
{
  sub_1000D20C8();
  if (v5)
  {
    sub_1000D1F10();
    if (v7 != v8)
    {
      sub_1000D208C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000D1F80(v6);
  if (v3)
  {
    sub_100003768(&qword_1001909B8, &qword_10012DFF0);
    v9 = sub_10002CF24();
    j__malloc_size(v9);
    sub_1000D1FE4();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v11 = sub_1000D211C();
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D0110()
{
  sub_1000D20C8();
  if (v5)
  {
    sub_1000D1F10();
    if (v7 != v8)
    {
      sub_1000D208C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000D1F80(v6);
  if (v3)
  {
    sub_100003768(&qword_100190B60, &qword_10012E1B0);
    v9 = sub_1000D214C();
    v10 = j__malloc_size(v9);
    sub_1000D2098(v10);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v9 != v0 || v0 + 32 + 48 * v2 <= (v9 + 4))
    {
      v12 = sub_100025A88();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_100003768(&qword_100190B68, &qword_10012E1B8);
    sub_100025A88();
    swift_arrayInitWithCopy();
  }
}

void sub_1000D0208()
{
  sub_1000D1F50();
  if (v4)
  {
    sub_1000D1F40();
    if (v6 != v7)
    {
      sub_1000D20AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000D1F30();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1000D20E4(v2, v5, &qword_100190B70, &qword_10012E1C0);
  sub_1000D2068();
  v9 = type metadata accessor for WelcomeListItem();
  sub_100017BA0(v9);
  v11 = *(v10 + 80);
  sub_100077EAC();
  if (v1)
  {
    sub_1000D204C(&type metadata accessor for WelcomeListItem, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000D1F60();
  }
}

void sub_1000D02E0()
{
  sub_1000D20C8();
  if (v3)
  {
    sub_1000D1F10();
    if (v5 != v6)
    {
      sub_1000D208C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100003768(&qword_10018D358, &qword_10012E100);
    v9 = sub_10002CF24();
    j__malloc_size(v9);
    sub_1000D21CC();
    v9[2] = v7;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = (v9 + 4);
  v12 = (v0 + 32);
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v7);
  }
}

void sub_1000D03B4()
{
  sub_1000D1F50();
  if (v4)
  {
    sub_1000D1F40();
    if (v6 != v7)
    {
      sub_1000D20AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000D1F30();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1000D20E4(v2, v5, &qword_10018D2F8, &qword_10012E030);
  sub_1000D2068();
  v9 = type metadata accessor for TriageRequest.HMTContext.Setting();
  sub_100017BA0(v9);
  v11 = *(v10 + 80);
  sub_100077EAC();
  if (v1)
  {
    sub_1000D204C(&type metadata accessor for TriageRequest.HMTContext.Setting, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000D1F60();
  }
}

void sub_1000D048C()
{
  sub_1000D1F50();
  if (v4)
  {
    sub_1000D1F40();
    if (v6 != v7)
    {
      sub_1000D20AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000D1F30();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1000D20E4(v2, v5, &qword_1001909E8, &qword_10012E020);
  sub_1000D2068();
  v9 = type metadata accessor for TriageRequest.HMTContext.SettingsGroup();
  sub_100017BA0(v9);
  v11 = *(v10 + 80);
  sub_100077EAC();
  if (v1)
  {
    sub_1000D204C(&type metadata accessor for TriageRequest.HMTContext.SettingsGroup, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000D1F60();
  }
}

void sub_1000D0564()
{
  sub_1000D1F50();
  if (v4)
  {
    sub_1000D1F40();
    if (v6 != v7)
    {
      sub_1000D20AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000D1F30();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1000D20E4(v2, v5, &qword_1001909E0, &qword_10012E018);
  sub_1000D2068();
  v9 = type metadata accessor for TriageRequest.HMTContext.BCSArticle();
  sub_100017BA0(v9);
  v11 = *(v10 + 80);
  sub_100077EAC();
  if (v1)
  {
    sub_1000D204C(&type metadata accessor for TriageRequest.HMTContext.BCSArticle, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000D1F60();
  }
}

void sub_1000D063C()
{
  sub_1000D1F50();
  if (v4)
  {
    sub_1000D1F40();
    if (v6 != v7)
    {
      sub_1000D20AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000D1F30();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1000D20E4(v2, v5, &qword_1001909D8, &qword_10012E010);
  sub_1000D2068();
  v9 = type metadata accessor for TriageRequest.HMTContext.Article();
  sub_100017BA0(v9);
  v11 = *(v10 + 80);
  sub_100077EAC();
  if (v1)
  {
    sub_1000D204C(&type metadata accessor for TriageRequest.HMTContext.Article, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000D1F60();
  }
}

id *sub_1000D0714(id *result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1000D0DCC(v9, a2, &qword_100190AD8, &unk_10012E150, type metadata accessor for PhoneNumberOption);
  v11 = *(type metadata accessor for PhoneNumberOption(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1000D1034(a4 + v12, v9, v10 + v12, type metadata accessor for PhoneNumberOption);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1000D0838()
{
  sub_1000D1F50();
  if (v4)
  {
    sub_1000D1F40();
    if (v6 != v7)
    {
      sub_1000D20AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000D1F30();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1000D20E4(v2, v5, &qword_100190A00, &qword_10012E048);
  sub_1000D2068();
  v9 = type metadata accessor for VPNConfiguration();
  sub_100017BA0(v9);
  v11 = *(v10 + 80);
  sub_100077EAC();
  if (v1)
  {
    sub_1000D204C(type metadata accessor for VPNConfiguration, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000D1F60();
  }
}

void sub_1000D0910()
{
  sub_1000D20C8();
  if (v5)
  {
    sub_1000D1F10();
    if (v7 != v8)
    {
      sub_1000D208C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000D1F80(v6);
  if (v3)
  {
    sub_100003768(&qword_100190AA8, &qword_10012E0E8);
    v9 = sub_10002CF24();
    v10 = j__malloc_size(v9);
    v9[2] = v2;
    v9[3] = (2 * ((v10 - 32) / 8));
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v9 != v0 || v0 + 32 + 8 * v2 <= (v9 + 4))
    {
      v12 = sub_100025A88();
      memmove(v12, v13, v14);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    sub_100003768(&qword_100190AB0, &unk_10012E0F0);
    sub_100025A88();
    swift_arrayInitWithCopy();
  }
}

void sub_1000D0A10()
{
  sub_1000D1F50();
  if (v4)
  {
    sub_1000D1F40();
    if (v6 != v7)
    {
      sub_1000D20AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000D1F30();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1000D20E4(v2, v5, &qword_1001909C8, &qword_10012E000);
  sub_1000D2068();
  v9 = type metadata accessor for BatterySuggestion();
  sub_100017BA0(v9);
  v11 = *(v10 + 80);
  sub_100077EAC();
  if (v1)
  {
    sub_1000D204C(type metadata accessor for BatterySuggestion, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000D1F60();
  }
}

void sub_1000D0AE8()
{
  sub_1000D20C8();
  if (v5)
  {
    sub_1000D1F10();
    if (v7 != v8)
    {
      sub_1000D208C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000D1F80(v6);
  if (v3)
  {
    sub_100003768(&qword_1001909D0, &qword_10012E008);
    v9 = sub_10002CF24();
    j__malloc_size(v9);
    sub_1000D1FE4();
    v9[2] = v2;
    v9[3] = v10;
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_1000D211C();
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v2] <= v11)
    {
      memmove(v11, v12, 32 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D0BBC()
{
  sub_1000D1F50();
  if (v4)
  {
    sub_1000D1F40();
    if (v6 != v7)
    {
      sub_1000D20AC();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_1000D1F30();
    }
  }

  else
  {
    v5 = v3;
  }

  v8 = *(v0 + 16);
  sub_1000D20E4(v2, v5, &qword_1001909C0, &qword_10012DFF8);
  sub_1000D2068();
  v9 = type metadata accessor for AirPodsDeviceInfo();
  sub_100017BA0(v9);
  v11 = *(v10 + 80);
  sub_100077EAC();
  if (v1)
  {
    sub_1000D204C(type metadata accessor for AirPodsDeviceInfo, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000D1F60();
  }
}

id *sub_1000D0C94(id *result, int64_t a2, char a3, id *a4)
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
    sub_100003768(&qword_1001909B0, &qword_10012DFE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 56));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[7 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003768(&qword_100190998, &qword_10012DFD0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_1000D0DCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003768(a3, a4);
  v8 = sub_1000D2068();
  v9 = a5(v8);
  sub_100052F6C(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if ((result - v13) != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * ((result - v13) / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id *sub_1000D0EBC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100003768(&qword_100190AB8, &qword_10012E108);
  v3 = swift_allocObject();
  v4 = j__malloc_size(v3);
  sub_1000D21B8(v4);
  return v3;
}

id *sub_1000D0F5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003768(a3, a4);
  v6 = sub_10002CF24();
  j__malloc_size(v6);
  sub_1000D1FE4();
  v6[2] = a1;
  v6[3] = v7;
  return v6;
}

id *sub_1000D0FBC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100003768(&qword_100190AD0, &qword_10012E120);
  v3 = swift_allocObject();
  v4 = j__malloc_size(v3);
  sub_1000D21B8(v4);
  return v3;
}

uint64_t sub_1000D1034(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    sub_1000D210C();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_1000D210C();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1000D1104(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return sub_1000D1F20(a3, result);
  }

  return result;
}

char *sub_1000D112C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_1000D1F20(a3, result);
  }

  return result;
}

char *sub_1000D114C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return sub_1000D1F20(a3, result);
  }

  return result;
}

id *sub_1000D127C(id *a1, int64_t a2, char a3)
{
  result = sub_1000D17A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

id *sub_1000D129C(id *a1, int64_t a2, char a3)
{
  result = sub_1000D18D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1000D12BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_100190998, &qword_10012DFD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000D132C()
{
  sub_1000D20C8();
  if (v5)
  {
    sub_1000D1F10();
    if (v7 != v8)
    {
      sub_1000D208C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000D1F80(v6);
  if (v3)
  {
    sub_100003768(&qword_100190AB8, &qword_10012E108);
    v9 = sub_1000D214C();
    v10 = j__malloc_size(v9);
    sub_1000D2098(v10);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_1000D211C();
  if (v1)
  {
    if (v9 != v0 || &v12[56 * v2] <= v11)
    {
      memmove(v11, v12, 56 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D1440(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (a3)
  {
    sub_1000D1F10();
    if (v9 != v10)
    {
      sub_1000D208C();
      if (v9)
      {
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  else
  {
    v8 = a2;
  }

  v11 = *(a4 + 16);
  if (v8 <= v11)
  {
    v12 = *(a4 + 16);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    sub_100003768(a5, a6);
    v13 = sub_10002CF24();
    j__malloc_size(v13);
    sub_1000D1FE4();
    v13[2] = v11;
    v13[3] = v14;
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
  }

  v15 = (v13 + 4);
  v16 = (a4 + 32);
  if (a1)
  {
    if (v13 != a4 || &v16[32 * v11] <= v15)
    {
      memmove(v15, v16, 32 * v11);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D1520()
{
  sub_1000D20C8();
  if (v5)
  {
    sub_1000D1F10();
    if (v7 != v8)
    {
      sub_1000D208C();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_1000D1F80(v6);
  if (v3)
  {
    sub_100003768(&qword_100190AD0, &qword_10012E120);
    v9 = sub_1000D214C();
    v10 = j__malloc_size(v9);
    sub_1000D2098(v10);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
  }

  v11 = sub_1000D211C();
  if (v1)
  {
    if (v9 != v0 || &v12[48 * v2] <= v11)
    {
      memmove(v11, v12, 48 * v2);
    }

    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1000D15FC(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    sub_1000D1F10();
    if (v13 != v14)
    {
      sub_1000D208C();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_1000D1F00();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_100003768(a5, a6);
  v17 = a7(0);
  sub_100052F6C(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = j__malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = (2 * ((v23 - v21) / v19));
LABEL_18:
  v25 = a7(0);
  sub_100017BA0(v25);
  v27 = *(v26 + 80);
  sub_100077EAC();
  if (a1)
  {
    sub_1000D1034(a4 + v28, v15, v22 + v28, a8);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

id *sub_1000D17A0(id *result, int64_t a2, char a3, id *a4)
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
    sub_100003768(&qword_100190B78, &qword_10012E1C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 8));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003768(&qword_10018B580, &unk_100128EB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id *sub_1000D18D0(id *result, int64_t a2, char a3, id *a4)
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
    sub_100003768(&qword_1001909A8, &qword_10012DFE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = (2 * ((v11 - 32) / 56));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[7 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003768(&qword_1001909A0, &qword_10012DFD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000D1A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GenerationID();
  v7 = sub_100017BA0(v6);
  if (*(v8 + 84) == a2)
  {

    return sub_10000E5F0(a1, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_1000D1AE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for GenerationID();
  result = sub_100017BA0(v8);
  if (*(v10 + 84) == a3)
  {

    return sub_100003CE8(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_1000D1B90()
{
  type metadata accessor for GenerationID();
  if (v0 <= 0x3F)
  {
    sub_10000E928();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000D1C6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D1CB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000C31C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000D1D08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneNumberOption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D1D6C()
{
  result = qword_100190B00;
  if (!qword_100190B00)
  {
    sub_100004D48(&qword_100190AF8, &qword_10012E178);
    sub_1000CFD80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190B00);
  }

  return result;
}

uint64_t sub_1000D1DF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneNumberOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D1E54()
{
  result = qword_100190B48;
  if (!qword_100190B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190B48);
  }

  return result;
}

unint64_t sub_1000D1EA8()
{
  result = qword_100190B50;
  if (!qword_100190B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190B50);
  }

  return result;
}

uint64_t sub_1000D1F60()
{

  return swift_arrayInitWithCopy();
}

void sub_1000D1F80(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

uint64_t sub_1000D1FB0()
{
  v2 = v0[21];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[16];
  v7 = v0[15];
  v8 = v0[12];
  v9 = v0[11];
  v10 = v0[8];
  v11 = v0[7];
}

uint64_t sub_1000D1FF8(uint64_t a1)
{
  *(a1 + 8) = sub_1000CE6B8;
  v2 = v1[29];
  v3 = v1[27];
  return v1[18];
}

uint64_t sub_1000D204C@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return sub_1000D1034(v2 + a2, v4, v3 + a2, a1);
}

uint64_t sub_1000D2098(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

id *sub_1000D20E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1000D0DCC(v5, a2, a3, a4, v4);
}

uint64_t sub_1000D214C()
{

  return swift_allocObject();
}

uint64_t sub_1000D2168()
{

  return swift_task_alloc();
}

uint64_t sub_1000D21B8(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_1000D21E0()
{
  v1 = v0[6];
  v2 = v0[4];
  return v0[3];
}

uint64_t sub_1000D2224@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 88) = a1;
  *(v1 - 80) = 0xE600000000000000;
}

uint64_t sub_1000D2244()
{

  return swift_allocObject();
}

uint64_t sub_1000D2264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return GenerationSchema.Property.init<A>(name:description:type:guides:)(a1, a2, a3, a4, v5, v4, v5, v6);
}

uint64_t sub_1000D22B0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  *(a3 + 72) = &type metadata for PurchasesStepProvider;
  v6 = sub_1000258DC();
  *(a3 + 80) = v6;
  *(a3 + 48) = 9;
  *(a3 + 112) = &type metadata for PurchasesStepProvider;
  *(a3 + 120) = v6;
  *(a3 + 88) = 5;
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();

  result = Environment.init<A>(_:)();
  *a3 = result;
  *(a3 + 8) = v8 & 1;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  return result;
}

uint64_t sub_1000D2384@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ActionInfoType(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v26 - v13;
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  *(&v26 - v15) = 0;
  swift_storeEnumTagMultiPayload();
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  sub_100003768(&qword_10018C108, &unk_10012AB40);
  v17 = *(v7 + 72);
  v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100121620;
  sub_10003F5BC(v16, v19 + v18);
  sub_10000B4E0(v30, v29);
  sub_10000B4E0(v29, v28);
  v27 = _swiftEmptyArrayStorage;

  specialized ContiguousArray.reserveCapacity(_:)();
  type metadata accessor for ActionInfo(0);
  sub_10003F5BC(v19 + v18, v14);
  swift_setDeallocating();
  sub_10006EB94();
  sub_10003F5BC(v14, v11);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  sub_1000ED69C(v11, 1, sub_10005A438, v20);
  sub_10003F620(v14);
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  v21 = v27[2];
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v22 = v27;
  sub_10000B4E0(v28, a3 + 56);
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v23 = Environment.init<A>(_:)();
  LOBYTE(v21) = v24;
  sub_10001035C(v28);
  sub_10001035C(v29);
  sub_10001035C(v30);
  result = sub_10003F620(v16);
  *a3 = v23;
  *(a3 + 8) = v21 & 1;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 32) = v22;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  return result;
}

uint64_t sub_1000D2660()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t getEnumTagSinglePayload for MessagesStepOverrideProvider(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PurchasesStepProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        JUMPOUT(0x1000D27F4);
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000D2848(char a1)
{
  result = 0x5349445F49464957;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0x6E6769536B616577;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x63657465446E7076;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000D2994(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      return;
    default:
      sub_10009E06C();
      break;
  }
}

unint64_t sub_1000D2AAC(char a1)
{
  result = 0xD000000000000013;
  switch(a1)
  {
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000D2B4C(char a1)
{
  result = 0x4954494E495F5254;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x4C4E574F445F5254;
      break;
    case 3:
      result = 0x48435255505F5254;
      break;
    case 4:
      result = 0x43534255535F5254;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD00000000000001ALL;
      break;
    case 9:
    case 10:
      result = 0xD000000000000021;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1000D2CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a2;
  v3 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v4 = sub_10000AF7C(v3);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v152 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v152 - v10;
  v12 = type metadata accessor for PurchaseHistoryView();
  v13 = sub_10000AF7C(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v152 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003768(&qword_100190BA0, &qword_10012E550);
  sub_10000AF7C(v18);
  v20 = *(v19 + 64);
  sub_10000ED78();
  __chkstk_darwin(v21);
  v23 = v152 - v22;
  v154 = sub_100003768(&qword_100190BA8, &qword_10012E558);
  sub_10000AF7C(v154);
  v25 = *(v24 + 64);
  sub_10000ED78();
  __chkstk_darwin(v26);
  v28 = v152 - v27;
  v153 = sub_100003768(&qword_100190BB0, &qword_10012E560);
  sub_10000AF7C(v153);
  v30 = *(v29 + 64);
  sub_10000ED78();
  __chkstk_darwin(v31);
  v33 = v152 - v32;
  v158 = sub_100003768(&qword_100190BB8, &qword_10012E568);
  sub_10000AF7C(v158);
  v35 = *(v34 + 64);
  sub_10000ED78();
  __chkstk_darwin(v36);
  sub_10003DC84();
  v155 = v37;
  v159 = sub_100003768(&qword_100190BC0, &qword_10012E570);
  sub_10000AF7C(v159);
  v39 = *(v38 + 64);
  sub_10000ED78();
  __chkstk_darwin(v40);
  sub_10003DC84();
  v161 = v41;
  v156 = sub_100003768(&qword_100190BC8, &qword_10012E578);
  sub_10000AF7C(v156);
  v43 = *(v42 + 64);
  sub_10000ED78();
  __chkstk_darwin(v44);
  sub_10003DC84();
  v157 = v45;
  v160 = sub_100003768(&qword_100190BD0, &qword_10012E580);
  sub_10000AF7C(v160);
  v47 = *(v46 + 64);
  sub_10000ED78();
  __chkstk_darwin(v48);
  sub_10003DC84();
  switch(a1)
  {
    case 1:
      sub_1000D4A38();
      sub_1000D48EC();
      sub_1000D4788(v125, v126);
      *&v163 = Environment.init<A>(_:)();
      *(&v163 + 1) = v127 & 1;
      v164 = xmmword_10012E3C0;
      LOWORD(v165) = 0;
      goto LABEL_15;
    case 2:
      sub_1000D4464();
      sub_10001B21C();
      v163 = 0uLL;
      LOBYTE(v164) = 0;
      goto LABEL_7;
    case 3:
      swift_storeEnumTagMultiPayload();
      sub_1000D4734();
      sub_1000D4960();
      sub_1000D4788(v97, v98);
      sub_1000D4A18();
      sub_10000DF20();
      sub_10000EC9C(v99, v100, v101, &qword_10012E558);
      sub_1000D49A4();
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190C50, &qword_10012E5A8);
      sub_1000D4544();
      sub_1000D4678();
      sub_1000D4920();
      _ConditionalContent<>.init(storage:)();
      sub_10000ABCC(v28, &qword_100190BA8, &qword_10012E558);
      sub_1000D4998();
      sub_10000EC9C(v102, v103, v104, v105);
      sub_1000D49D4();
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190C00, &qword_10012E590);
      sub_1000D4218();
      sub_1000D44B8();
      _ConditionalContent<>.init(storage:)();
      sub_10000DF20();
      sub_10000ABCC(v106, v107, v108);
      sub_1000D4998();
      sub_10000EC9C(v109, v110, v111, v112);
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190BE8, &qword_10012E588);
      sub_1000D418C();
      sub_1000D47D0();
      sub_1000D4938();
      goto LABEL_9;
    case 4:
      v163 = xmmword_10012E3B0;
      sub_1000D40E4();
      sub_1000D4138();
      v164 = 0u;
      v165 = 0u;
      v166 = 0;
      sub_1000D498C();
      _ConditionalContent<>.init(storage:)();
      v57 = v170;
      v58 = v168;
      v59 = v169;
      v60 = v161;
      *v161 = v167;
      v60[1] = v58;
      v60[2] = v59;
      *(v60 + 48) = v57;
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190BE8, &qword_10012E588);
      sub_1000D418C();
      sub_1000D47D0();
      sub_1000D4998();
      return _ConditionalContent<>.init(storage:)();
    case 5:
    case 6:
      *&v163 = sub_1000D2B4C(a1);
      *(&v163 + 1) = v50;
      LOBYTE(v164) = 1;
      sub_1000D4464();
      sub_10001B21C();
LABEL_7:
      sub_1000D498C();
      _ConditionalContent<>.init(storage:)();
      v163 = v167;
      v164 = v168;
      LOWORD(v165) = 256;
      sub_100003768(&qword_100190C10, &qword_10012E598);
      sub_100003768(&qword_100190C30, &qword_10012E5A0);
      sub_1000D42A4();
      sub_1000D43D8();
      sub_1000D498C();
      sub_10000DF20();
      _ConditionalContent<>.init(storage:)();
      v88 = sub_1000D49C4();
      v89 = v157;
      *v157 = v88;
      v89[1] = v90;
      v89[2].n128_u8[0] = v91;
      v89[2].n128_u8[1] = v92;
      sub_1000D49D4();
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190C00, &qword_10012E590);
      sub_1000D4218();
      sub_1000D44B8();
      _ConditionalContent<>.init(storage:)();
      sub_1000D4998();
      sub_10000EC9C(v93, v94, v95, v96);
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190BE8, &qword_10012E588);
      sub_1000D418C();
      sub_1000D47D0();
      sub_1000D4938();
LABEL_9:
      sub_10000DF20();
      goto LABEL_17;
    case 7:
      v152[1] = v49;
      type metadata accessor for PurchasesFlowViewModel();
      sub_1000D48EC();
      sub_1000D4788(v62, v63);
      *v17 = Environment.init<A>(_:)();
      v17[8] = v64 & 1;
      LOBYTE(v163) = 0;
      sub_1000D498C();
      State.init(wrappedValue:)();
      v65 = *(&v167 + 1);
      v17[16] = v167;
      *(v17 + 3) = v65;
      v66 = v12[6];
      v67 = type metadata accessor for URL();
      sub_100003CE8(v11, 1, 1, v67);
      sub_10000EC9C(v11, v9, &qword_100188EE0, &unk_100122AE0);
      State.init(wrappedValue:)();
      sub_10000ABCC(v11, &qword_100188EE0, &unk_100122AE0);
      v68 = &v17[v12[7]];
      *v68 = 0xD000000000000013;
      *(v68 + 1) = 0x80000001001334F0;
      v17[v12[8]] = 8;
      sub_100098744(v17, v23);
      swift_storeEnumTagMultiPayload();
      sub_1000D4734();
      sub_1000D4960();
      sub_1000D4788(v69, v70);
      sub_1000D4A18();
      sub_10000DF20();
      sub_10000EC9C(v71, v72, v73, &qword_10012E558);
      sub_1000D49A4();
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190C50, &qword_10012E5A8);
      sub_1000D4544();
      sub_1000D4678();
      sub_1000D4920();
      _ConditionalContent<>.init(storage:)();
      sub_10000ABCC(v28, &qword_100190BA8, &qword_10012E558);
      sub_1000D4998();
      sub_10000EC9C(v74, v75, v76, v77);
      sub_1000D49D4();
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190C00, &qword_10012E590);
      sub_1000D4218();
      sub_1000D44B8();
      _ConditionalContent<>.init(storage:)();
      sub_10000DF20();
      sub_10000ABCC(v78, v79, v80);
      sub_1000D49B4();
      sub_1000D4998();
      sub_10000EC9C(v81, v82, v83, v84);
      sub_1000D49FC();
      sub_100003768(&qword_100190BE8, &qword_10012E588);
      sub_1000D418C();
      sub_1000D47D0();
      sub_1000D4978();
      _ConditionalContent<>.init(storage:)();
      sub_10000DF20();
      sub_10000ABCC(v85, v86, v87);
      return sub_100098C50(v17);
    case 8:
      sub_1000D4A38();
      sub_1000D48EC();
      sub_1000D4788(v141, v142);
      v143 = Environment.init<A>(_:)();
      sub_1000D4904(v143, v144);
      *&v164 = v146 + 7;
      *(&v164 + 1) = v145;
      LOWORD(v165) = 262;
LABEL_15:
      sub_1000D45D0();
      sub_1000D4624();

      sub_1000D498C();
      _ConditionalContent<>.init(storage:)();
      *v33 = sub_1000D49C4();
      *(v33 + 1) = v147;
      v33[32] = v148;
      v33[33] = v149;
      sub_1000D49A4();
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190C50, &qword_10012E5A8);
      sub_1000D4544();
      sub_1000D4678();
      sub_1000D4920();
      _ConditionalContent<>.init(storage:)();
      sub_10000EC9C(v12, v157, &qword_100190BB8, &qword_10012E568);
      sub_1000D49D4();
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190C00, &qword_10012E590);
      sub_1000D4218();
      sub_1000D44B8();
      _ConditionalContent<>.init(storage:)();
      sub_10000ABCC(v12, &qword_100190BB8, &qword_10012E568);
      v150 = sub_1000D49B4();
      sub_10000EC9C(v150, v151, &qword_100190BD0, &qword_10012E580);
      sub_1000D49FC();
      sub_100003768(&qword_100190BE8, &qword_10012E588);
      sub_1000D418C();
      sub_1000D47D0();
      sub_1000D4978();
      _ConditionalContent<>.init(storage:)();

      v113 = a1;
      v114 = &qword_100190BD0;
      goto LABEL_16;
    case 9:
      sub_1000D4A38();
      sub_1000D48EC();
      sub_1000D4788(v51, v52);
      v53 = sub_1000D49E0();
      sub_1000D4904(v53, v54);
      *&v164 = v56 + 14;
      *(&v164 + 1) = v55;
      LOBYTE(v165) = 1;
      goto LABEL_13;
    case 10:
      sub_1000D4A38();
      sub_1000D48EC();
      sub_1000D4788(v128, v129);
      v130 = sub_1000D49E0();
      sub_1000D4904(v130, v131);
      *&v164 = v133 + 14;
      *(&v164 + 1) = v132;
      LOBYTE(v165) = 0;
LABEL_13:
      sub_1000D4330();
      sub_1000D4384();

      sub_1000D498C();
      _ConditionalContent<>.init(storage:)();
      v163 = v167;
      v164 = v168;
      LOWORD(v165) = v169;
      sub_100003768(&qword_100190C10, &qword_10012E598);
      sub_100003768(&qword_100190C30, &qword_10012E5A0);
      sub_1000D42A4();
      sub_1000D43D8();
      sub_1000D498C();
      _ConditionalContent<>.init(storage:)();
      v134 = sub_1000D49C4();
      v135 = v157;
      *v157 = v134;
      v135[1] = v136;
      v135[2].n128_u8[0] = v137;
      v135[2].n128_u8[1] = v138;
      sub_1000D49D4();
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190C00, &qword_10012E590);
      sub_1000D4218();
      sub_1000D44B8();
      _ConditionalContent<>.init(storage:)();
      v139 = sub_1000D49B4();
      sub_10000EC9C(v139, v140, &qword_100190BD0, &qword_10012E580);
      sub_1000D49FC();
      sub_100003768(&qword_100190BE8, &qword_10012E588);
      sub_1000D418C();
      sub_1000D47D0();
      sub_1000D4978();
      _ConditionalContent<>.init(storage:)();

      v113 = a1;
      v114 = &qword_100190BD0;
LABEL_16:
      v115 = &qword_10012E580;
LABEL_17:
      result = sub_10000ABCC(v113, v114, v115);
      break;
    default:
      type metadata accessor for PurchasesFlowViewModel();
      sub_1000D48EC();
      sub_1000D4788(v116, v117);
      v118 = sub_1000D49E0();
      v120 = v119;
      LOBYTE(v163) = 0;
      sub_1000D498C();
      State.init(wrappedValue:)();
      *&v163 = v118;
      *(&v163 + 1) = v120 & 1;
      *&v164 = v167;
      *(&v164 + 1) = *(&v167 + 1);
      *&v165 = 0xD000000000000013;
      *(&v165 + 1) = 0x8000000100133460;
      v166 = 1;
      sub_1000D40E4();
      sub_1000D4138();

      sub_1000D498C();
      _ConditionalContent<>.init(storage:)();
      v121 = v170;
      v122 = v168;
      v123 = v169;
      v124 = v161;
      *v161 = v167;
      v124[1] = v122;
      v124[2] = v123;
      *(v124 + 48) = v121;
      swift_storeEnumTagMultiPayload();
      sub_100003768(&qword_100190BE8, &qword_10012E588);
      sub_1000D418C();
      sub_1000D47D0();
      sub_1000D4938();

      break;
  }

  return result;
}

unint64_t sub_1000D3C74(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176E00, v2);

  if (v3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v3;
  }
}

void sub_1000D3CC0(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 10:
      return;
    default:
      sub_10009E06C();
      break;
  }
}

unint64_t sub_1000D3E6C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D3C74(*a1);
  *a2 = result;
  return result;
}

void sub_1000D3E9C(void *a1@<X8>)
{
  sub_1000D3CC0(*v1);
  *a1 = v3;
  a1[1] = v4;
}

void sub_1000D3EC8(void *a1@<X8>)
{
  sub_1000E7488(*v1);
  *a1 = v3;
  a1[1] = v4;
}

unint64_t sub_1000D3F28()
{
  result = qword_100190B80;
  if (!qword_100190B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190B80);
  }

  return result;
}

uint64_t sub_1000D3FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000D3FE4()
{
  result = qword_100190B88;
  if (!qword_100190B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190B88);
  }

  return result;
}

unint64_t sub_1000D4038()
{
  result = qword_100190B90;
  if (!qword_100190B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190B90);
  }

  return result;
}

unint64_t sub_1000D4090()
{
  result = qword_100190B98;
  if (!qword_100190B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190B98);
  }

  return result;
}

unint64_t sub_1000D40E4()
{
  result = qword_100190BD8;
  if (!qword_100190BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190BD8);
  }

  return result;
}

unint64_t sub_1000D4138()
{
  result = qword_100190BE0;
  if (!qword_100190BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190BE0);
  }

  return result;
}

unint64_t sub_1000D418C()
{
  result = qword_100190BF0;
  if (!qword_100190BF0)
  {
    sub_100004D48(&qword_100190BD0, &qword_10012E580);
    sub_1000D4218();
    sub_1000D44B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190BF0);
  }

  return result;
}

unint64_t sub_1000D4218()
{
  result = qword_100190BF8;
  if (!qword_100190BF8)
  {
    sub_100004D48(&qword_100190C00, &qword_10012E590);
    sub_1000D42A4();
    sub_1000D43D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190BF8);
  }

  return result;
}

unint64_t sub_1000D42A4()
{
  result = qword_100190C08;
  if (!qword_100190C08)
  {
    sub_100004D48(&qword_100190C10, &qword_10012E598);
    sub_1000D4330();
    sub_1000D4384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C08);
  }

  return result;
}

unint64_t sub_1000D4330()
{
  result = qword_100190C18;
  if (!qword_100190C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C18);
  }

  return result;
}

unint64_t sub_1000D4384()
{
  result = qword_100190C20;
  if (!qword_100190C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C20);
  }

  return result;
}

unint64_t sub_1000D43D8()
{
  result = qword_100190C28;
  if (!qword_100190C28)
  {
    sub_100004D48(&qword_100190C30, &qword_10012E5A0);
    sub_1000D4464();
    sub_10001B21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C28);
  }

  return result;
}

unint64_t sub_1000D4464()
{
  result = qword_100190C38;
  if (!qword_100190C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C38);
  }

  return result;
}

unint64_t sub_1000D44B8()
{
  result = qword_100190C40;
  if (!qword_100190C40)
  {
    sub_100004D48(&qword_100190BB8, &qword_10012E568);
    sub_1000D4544();
    sub_1000D4678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C40);
  }

  return result;
}

unint64_t sub_1000D4544()
{
  result = qword_100190C48;
  if (!qword_100190C48)
  {
    sub_100004D48(&qword_100190C50, &qword_10012E5A8);
    sub_1000D45D0();
    sub_1000D4624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C48);
  }

  return result;
}

unint64_t sub_1000D45D0()
{
  result = qword_100190C58;
  if (!qword_100190C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C58);
  }

  return result;
}

unint64_t sub_1000D4624()
{
  result = qword_100190C60;
  if (!qword_100190C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C60);
  }

  return result;
}

unint64_t sub_1000D4678()
{
  result = qword_100190C68;
  if (!qword_100190C68)
  {
    sub_100004D48(&qword_100190BA8, &qword_10012E558);
    sub_1000D4734();
    sub_1000D4788(&qword_100190C78, type metadata accessor for PurchaseHistoryView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100190C68);
  }

  return result;
}