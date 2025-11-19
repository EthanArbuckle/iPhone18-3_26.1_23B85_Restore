uint64_t sub_10014CE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = type metadata accessor for HStack();
  v48 = *(v6 - 8);
  v7 = *(v48 + 64);
  v8 = __chkstk_darwin(v6);
  v47 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v45 = &v45 - v11;
  __chkstk_darwin(v10);
  v46 = &v45 - v12;
  v13 = type metadata accessor for VStack();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v45 - v20;
  __chkstk_darwin(v19);
  v23 = &v45 - v22;
  v24 = type metadata accessor for _ConditionalContent();
  v50 = *(v24 - 8);
  v51 = v24;
  v25 = *(v50 + 64);
  __chkstk_darwin(v24);
  v49 = &v45 - v26;
  if (sub_10014D3D4(a1))
  {
    v27 = *(v2 + 32);
    if (!*(v2 + 40))
    {
      v28 = *(v2 + 32);
    }

    __chkstk_darwin(*(v2 + 8));
    *(&v45 - 4) = v4;
    *(&v45 - 3) = v5;
    *(&v45 - 2) = v2;
    VStack.init(alignment:spacing:content:)();
    swift_getWitnessTable();
    v29 = v14[2];
    v29(v23, v21, v13);
    v30 = v14[1];
    v30(v21, v13);
    v29(v18, v23, v13);
    swift_getWitnessTable();
    v31 = v49;
    sub_10014C998(v18, v13);
    v30(v18, v13);
    v30(v23, v13);
  }

  else
  {
    v32 = *(v2 + 24);
    if (!*(v2 + 40))
    {
      v33 = *(v2 + 24);
    }

    __chkstk_darwin(*(v2 + 16));
    *(&v45 - 4) = v4;
    *(&v45 - 3) = v5;
    *(&v45 - 2) = v2;
    v34 = v45;
    HStack.init(alignment:spacing:content:)();
    swift_getWitnessTable();
    v35 = v48;
    v36 = *(v48 + 16);
    v37 = v46;
    v36(v46, v34, v6);
    v38 = *(v35 + 8);
    v38(v34, v6);
    v39 = v47;
    v36(v47, v37, v6);
    swift_getWitnessTable();
    v31 = v49;
    sub_10014CA90(v39, v13, v6);
    v38(v39, v6);
    v38(v37, v6);
  }

  WitnessTable = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v53 = WitnessTable;
  v54 = v41;
  v42 = v51;
  swift_getWitnessTable();
  v43 = v50;
  (*(v50 + 16))(v52, v31, v42);
  return (*(v43 + 8))(v31, v42);
}

BOOL sub_10014D3D4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &v2[*(a1 + 48)];
  sub_10011F024(v8);
  DynamicTypeSize.isAccessibilitySize.getter();
  (*(v5 + 8))(v8, v4);
  v10 = *v2;
  LODWORD(v2) = Axis.rawValue.getter();
  return v2 == Axis.rawValue.getter();
}

uint64_t sub_10014D4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DynamicTypeAdjustingStack();
  v11 = *(v6 + 16);
  v11(v9, a1 + *(v10 + 44), a2);
  v11(a3, v9, a2);
  return (*(v6 + 8))(v9, a2);
}

void *sub_10014D5F8(uint64_t a1, void *(*a2)(double *__return_ptr))
{
  result = a2(&v5);
  if ((v6 & 1) == 0)
  {
    if (*(a1 + 8))
    {
      v4 = v5;
    }

    else
    {
      v4 = *a1;
      if (*a1 <= v5)
      {
        v4 = v5;
      }
    }

    *a1 = v4;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_10014D66C@<X0>(uint64_t a1@<X8>)
{
  v2 = static Color.clear.getter();
  result = GeometryProxy.size.getter();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = 0;
  return result;
}

double sub_10014D6B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = *v2;
  v5 = *(v2 + 2);
  v6 = *(v2 + 24);
  v7 = static Alignment.center.getter();
  v9 = v8;
  v10 = sub_10000341C(&qword_100264710, &qword_1001DD028);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(sub_10000341C(&qword_100264718, &qword_1001DD030) + 36));
  *v11 = sub_10014D66C;
  v11[1] = 0;
  v11[2] = v7;
  v11[3] = v9;
  *&v15 = v5;
  BYTE8(v15) = v6;
  sub_10000341C(&unk_10025D798, &unk_1001DCF40);
  Binding.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v12 = (a2 + *(sub_10000341C(&qword_100264720, &qword_1001DD038) + 36));
  *v12 = v14;
  v12[1] = v15;
  result = *&v16;
  v12[2] = v16;
  return result;
}

uint64_t sub_10014D80C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_10000341C(&unk_10025D798, &unk_1001DCF40);
  return Binding.wrappedValue.setter();
}

uint64_t sub_10014D874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = v2[2];
  v8 = *(v2 + 24);
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v6;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  v10 = sub_10000341C(&qword_1002646E0, &qword_1001DCF30);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = (a2 + *(sub_10000341C(&qword_1002646E8, &qword_1001DCF38) + 36));
  *v11 = sub_10014DA18;
  v11[1] = v9;
}

uint64_t sub_10014D9D8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_10014DA18(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_10014D80C(a1);
}

uint64_t sub_10014DA38(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for VStack();
  type metadata accessor for HStack();
  type metadata accessor for _ConditionalContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_10014DB08()
{
  result = qword_1002646F0;
  if (!qword_1002646F0)
  {
    sub_100003E34(&qword_1002646E8, &qword_1001DCF38);
    sub_100007120(&qword_1002646F8, &qword_1002646E0, &qword_1001DCF30);
    sub_100007120(&qword_100264700, &qword_100264708, qword_1001DCF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002646F0);
  }

  return result;
}

unint64_t sub_10014DBEC()
{
  result = qword_100260DE0;
  if (!qword_100260DE0)
  {
    type metadata accessor for DynamicTypeSize();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100260DE0);
  }

  return result;
}

uint64_t sub_10014DC48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_10014DC94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10014DD08()
{
  result = qword_100264728;
  if (!qword_100264728)
  {
    sub_100003E34(&qword_100264720, &qword_1001DD038);
    sub_10014DD94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264728);
  }

  return result;
}

unint64_t sub_10014DD94()
{
  result = qword_100264730;
  if (!qword_100264730)
  {
    sub_100003E34(&qword_100264718, &qword_1001DD030);
    sub_100007120(&qword_100264738, &qword_100264710, &qword_1001DD028);
    sub_100007120(&qword_100264740, &qword_100264748, &unk_1001DD040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264730);
  }

  return result;
}

void sub_10014DE88()
{
  v0 = String._bridgeToObjectiveC()();
  v1 = MGGetBoolAnswer();

  byte_100264750 = v1;
}

uint64_t static FeedbackConfigurationHelper.useReportConcernUI()()
{
  if (qword_10025A818 != -1)
  {
    swift_once();
  }

  if (byte_100264750 == 1)
  {
    v2[3] = &type metadata for WritingTools;
    v2[4] = sub_10002AC88();
    LOBYTE(v2[0]) = 14;
    v0 = isFeatureEnabled(_:)();
    sub_10000F4B4(v2);
  }

  else
  {
    v0 = 1;
  }

  return v0 & 1;
}

id FeedbackConfigurationHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeedbackConfigurationHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedbackConfigurationHelper();
  return objc_msgSendSuper2(&v2, "init");
}

id FeedbackConfigurationHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedbackConfigurationHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

NSString sub_10014E120()
{
  result = String._bridgeToObjectiveC()();
  qword_1002771E8 = result;
  return result;
}

NSString sub_10014E160()
{
  result = String._bridgeToObjectiveC()();
  qword_1002771F0 = result;
  return result;
}

NSString sub_10014E1A0()
{
  result = String._bridgeToObjectiveC()();
  qword_1002771F8 = result;
  return result;
}

uint64_t sub_10014E1D8()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_10014E288@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_10014E334(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 16) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 24);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_10014E4A4()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_10014E554@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_10014E600(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 32) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 40);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

id sub_10014E770()
{
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 48);

  return v1;
}

id sub_10014E820@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

void sub_10014E8D8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 48);
  sub_1000081B0(0, &qword_100264A18, NSMutableOrderedSet_ptr);
  v5 = v4;
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {
    v7 = *(v2 + 48);
    *(v2 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10014EA44()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 56);
  v1 = *(v4 + 64);

  return v2;
}

uint64_t sub_10014EAF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_10014EBA0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 56) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 64);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

void *sub_10014ED10()
{
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

id sub_10014EDB8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_10014EE70(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
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
    sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &qword_100264A00, NSMutableArray_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 72);
LABEL_8:
  *(v2 + 72) = a1;
}

uint64_t sub_10014F000()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 80);
  v1 = *(v4 + 88);

  return v2;
}

uint64_t sub_10014F0B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 88);
  *a2 = *(v3 + 80);
  a2[1] = v4;
}

uint64_t sub_10014F15C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 80) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 88);
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
}

uint64_t sub_10014F2CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0;
  ObservationRegistrar.init()();
  v6 = *(v3 + 40);

  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = [objc_allocWithZone(NSMutableOrderedSet) initWithCapacity:5];
  if (qword_10025A6F0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000F34C(v7, qword_100276F38);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "SmartReplyAnalytics init", v10, 2u);
  }

  return v3;
}

void sub_10014F404(void *a1)
{
  v2 = v1;
  if (qword_10025A6F0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000F34C(v4, qword_100276F38);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136380675;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = sub_10002510C(v10, v11, &v17);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v6, v7, "reportResponseRequested: %{private}s", v8, 0xCu);
    sub_10000F4B4(v9);
  }

  v13 = IAChannelSmartReplies;
  swift_getKeyPath();
  v17 = v2;
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 40))
  {
    v14 = *(v2 + 32);
    v15 = *(v2 + 40);

    v16 = String._bridgeToObjectiveC()();
  }

  else
  {
    v16 = 0;
  }

  [objc_opt_self() sendSignal:v5 toChannel:v13 withNullableUniqueStringID:v16 withPayload:0];
}

void sub_10014F638(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (qword_10025A6F0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F34C(v9, qword_100276F38);
  v10 = a1;

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  v62 = a3;
  v61 = v10;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v13 = 136380931;
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = sub_10002510C(v14, v15, &v66);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2085;
    v17 = Dictionary.description.getter();
    v19 = sub_10002510C(v17, v18, &v66);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "reportResponseCompleted: %{private}s resultOptions: %{sensitive}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009D1E0(a2);
  v20 = sub_10009D68C(a2);
  v22 = v21;
  sub_10009D508(a2);
  v24 = v23;
  v64 = sub_10009D5C4(a2);
  v63 = sub_10009D5D0(a2);

  sub_10014E334(v20, v22);
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9F0;
  v26 = IAPayloadKeySmartRepliesFeatureModel;
  *(inited + 32) = IAPayloadKeySmartRepliesFeatureModel;
  v27 = v26;
  v28 = String._bridgeToObjectiveC()();
  v29 = IAPayloadKeyFeedbackServiceOriginalContent;
  *(inited + 40) = v28;
  *(inited + 48) = v29;
  v30 = v29;
  v31 = String._bridgeToObjectiveC()();

  v32 = IAPayloadKeyFeedbackServiceGeneratedContent;
  *(inited + 56) = v31;
  *(inited + 64) = v32;
  v33 = v32;

  v34 = String._bridgeToObjectiveC()();

  *(inited + 72) = v34;
  v35 = sub_100005794(inited);
  swift_setDeallocating();
  sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
  swift_arrayDestroy();
  if (v24)
  {
    if (qword_10025A820 != -1)
    {
      swift_once();
    }

    v36 = qword_1002771E8;
    v37 = String._bridgeToObjectiveC()();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v35;
    sub_1001A9924(v37, v36, isUniquelyReferenced_nonNull_native);

    v35 = v66;
  }

  if (v64)
  {
    v39 = qword_10025A828;
    v40 = v64;
    if (v39 != -1)
    {
      swift_once();
    }

    v41 = qword_1002771F0;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v35;
    sub_1001A9924(v40, v41, v42);

    v35 = v66;
  }

  if (v63)
  {
    v43 = qword_10025A830;
    v44 = v63;
    if (v43 != -1)
    {
      swift_once();
    }

    v45 = qword_1002771F8;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v66 = v35;
    sub_1001A9924(v44, v45, v46);
  }

  v47 = IAChannelSmartReplies;
  swift_getKeyPath();
  v66 = v5;
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v5 + 40))
  {
    v48 = *(v5 + 32);
    v49 = *(v5 + 40);

    v50 = String._bridgeToObjectiveC()();
  }

  else
  {
    v50 = 0;
  }

  v51 = objc_opt_self();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_100152214(&qword_10025AF18, type metadata accessor for IAPayloadKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v51 sendSignal:v61 toChannel:v47 withNullableUniqueStringID:v50 withPayload:isa];

  swift_getKeyPath();
  v66 = v5;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v53 = *(v5 + 48);
  v54 = String._bridgeToObjectiveC()();

  [v53 addObject:v54];

  swift_getKeyPath();
  v66 = v5;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v5 + 64))
  {

    sub_10014EBA0(v62, a4);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&_mh_execute_header, v55, v56, "reportResponseCompleted: cached base response", v57, 2u);
    }
  }

  sub_10014F15C(v62, a4);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&_mh_execute_header, v58, v59, "reportResponseCompleted: cached generated content", v60, 2u);
  }
}

void sub_10014FE30(void *a1, uint64_t a2)
{
  v3 = v2;
  if (qword_10025A6F0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F34C(v6, qword_100276F38);
  v7 = a1;

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  v49 = v7;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v10 = 136380931;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = sub_10002510C(v11, v12, &v50);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2085;
    v14 = Dictionary.description.getter();
    v16 = sub_10002510C(v14, v15, &v50);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "reportResponseFailed: %{private}s resultOptions: %{sensitive}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  sub_10009D1E0(a2);
  v17 = sub_10009D68C(a2);
  v19 = v18;
  v20 = sub_10009D5C4(a2);
  v21 = sub_10009D5D0(a2);

  sub_10014E334(v17, v19);
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9F0;
  v23 = IAPayloadKeySmartRepliesFeatureModel;
  *(inited + 32) = IAPayloadKeySmartRepliesFeatureModel;
  v24 = v23;
  v25 = String._bridgeToObjectiveC()();
  v26 = IAPayloadKeyFeedbackServiceOriginalContent;
  *(inited + 40) = v25;
  *(inited + 48) = v26;
  v27 = v26;
  v28 = String._bridgeToObjectiveC()();

  v29 = IAPayloadKeySmartRepliesReasonForFailure;
  *(inited + 56) = v28;
  *(inited + 64) = v29;
  v30 = v29;
  *(inited + 72) = String._bridgeToObjectiveC()();
  v31 = sub_100005794(inited);
  swift_setDeallocating();
  sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
  swift_arrayDestroy();
  if (v20)
  {
    v32 = qword_10025A828;
    v33 = v20;
    if (v32 != -1)
    {
      swift_once();
    }

    v34 = qword_1002771F0;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v31;
    sub_1001A9924(v33, v34, isUniquelyReferenced_nonNull_native);

    v31 = v50;
  }

  if (v21)
  {
    v36 = qword_10025A830;
    v37 = v21;
    if (v36 != -1)
    {
      swift_once();
    }

    v38 = qword_1002771F8;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v31;
    sub_1001A9924(v37, v38, v39);
  }

  v40 = IAChannelSmartReplies;
  swift_getKeyPath();
  v50 = v3;
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = v20;
  if (*(v3 + 40))
  {
    v42 = *(v3 + 32);
    v43 = *(v3 + 40);

    v44 = String._bridgeToObjectiveC()();
  }

  else
  {
    v44 = 0;
  }

  v45 = objc_opt_self();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_100152214(&qword_10025AF18, type metadata accessor for IAPayloadKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v45 sendSignal:v49 toChannel:v40 withNullableUniqueStringID:v44 withPayload:isa];

  swift_getKeyPath();
  v50 = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = *(v3 + 48);
  v48 = String._bridgeToObjectiveC()();

  [v47 addObject:v48];
}

void sub_100150408(unint64_t a1)
{
  v109 = type metadata accessor for NSFastEnumerationIterator();
  v108 = *(v109 - 8);
  v2 = *(v108 + 64);
  __chkstk_darwin(v109);
  v4 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10025A6F0 != -1)
  {
    goto LABEL_82;
  }

  while (1)
  {
    v5 = type metadata accessor for Logger();
    v6 = sub_10000F34C(v5, qword_100276F38);

    v114 = v6;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v126 = v10;
      *v9 = 136642819;
      type metadata accessor for QuestionnaireEntry();
      v11 = Array.description.getter();
      v13 = sub_10002510C(v11, v12, &v126);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "reportQuestionnaireAnswers: userFilledEntries: %{sensitive}s", v9, 0xCu);
      sub_10000F4B4(v10);
    }

    v14 = sub_10000635C(_swiftEmptyArrayStorage);
    v16 = a1 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v110 = v4;
    if (!v16)
    {
      break;
    }

    v4 = 0;
    v117 = a1 & 0xC000000000000001;
    v113 = (a1 & 0xFFFFFFFFFFFFFF8);
    *&v15 = 136642819;
    v112 = v15;
    v116 = a1;
    v115 = v16;
    while (1)
    {
      if (v117)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v20 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          break;
        }

        goto LABEL_17;
      }

      if (v4 >= v113[2])
      {
        goto LABEL_80;
      }

      v19 = *(a1 + 8 * v4 + 32);

      v20 = (v4 + 1);
      if (__OFADD__(v4, 1))
      {
        break;
      }

LABEL_17:
      v21 = [*(v19 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry) question];
      if (!v21)
      {

        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v31 = swift_slowAlloc();
          *&v126 = v31;
          *v30 = v112;
          type metadata accessor for QuestionnaireEntry();
          v32 = Array.description.getter();
          v34 = v14;
          v35 = sub_10002510C(v32, v33, &v126);
          a1 = v116;

          *(v30 + 4) = v35;
          v14 = v34;
          _os_log_impl(&_mh_execute_header, v28, v29, "reportQuestionnaireAnswers: Received nil question for filled entries: %{sensitive}s", v30, 0xCu);
          sub_10000F4B4(v31);

          v16 = v115;
        }

        goto LABEL_10;
      }

      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      swift_getKeyPath();
      *&v126 = v19;
      sub_100152214(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v26 = *(v19 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer + 8);
      if (v26)
      {
        v118 = *(v19 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry__selectedAnswer);
        v27 = v26;
      }

      else
      {
        v27 = 0xE400000000000000;
        v118 = 1701736270;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v126 = v14;
      a1 = sub_10000511C(v23, v25);
      v38 = v14;
      v39 = v14[2];
      v40 = (v37 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        goto LABEL_79;
      }

      v42 = v37;
      if (v38[3] >= v41)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v37 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          sub_1000F2B4C();
          if ((v42 & 1) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      else
      {
        sub_1000F0938(v41, isUniquelyReferenced_nonNull_native);
        v43 = sub_10000511C(v23, v25);
        if ((v42 & 1) != (v44 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        a1 = v43;
        if ((v42 & 1) == 0)
        {
LABEL_31:
          v14 = v126;
          *(v126 + 8 * (a1 >> 6) + 64) |= 1 << a1;
          v45 = (v14[6] + 16 * a1);
          *v45 = v23;
          v45[1] = v25;
          v46 = (v14[7] + 16 * a1);
          *v46 = v118;
          v46[1] = v27;

          v47 = v14[2];
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            goto LABEL_81;
          }

          v14[2] = v49;
          goto LABEL_9;
        }
      }

      v14 = v126;
      v17 = (*(v126 + 56) + 16 * a1);
      v18 = v17[1];
      *v17 = v118;
      v17[1] = v27;

LABEL_9:
      a1 = v116;
      v16 = v115;
LABEL_10:
      ++v4;
      if (v20 == v16)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    swift_once();
  }

LABEL_35:
  v118 = v14;
  v50 = IASignalSmartRepliesQuestionnaireAnswerModified;
  v51 = IAChannelSmartReplies;
  swift_getKeyPath();
  v52 = v111;
  *&v126 = v111;
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v52[5])
  {
    v53 = v52[4];
    v54 = v52[5];

    v55 = String._bridgeToObjectiveC()();
  }

  else
  {
    v55 = 0;
  }

  v56 = objc_opt_self();
  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9D0;
  *(inited + 32) = String._bridgeToObjectiveC()();
  *(inited + 40) = Dictionary._bridgeToObjectiveC()();
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000F500(inited + 32, &qword_10025B1A0, &unk_1001D45A0);
  type metadata accessor for IAPayloadKey(0);
  v59 = v58;
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_100152214(&qword_10025AF18, type metadata accessor for IAPayloadKey);
  v117 = v59;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v56 sendSignal:v50 toChannel:v51 withNullableUniqueStringID:v55 withPayload:isa];

  swift_getKeyPath();
  *&v126 = v52;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v61 = v52[9];
  if (v61)
  {
    v62 = v61;
    v63 = v110;
    v116 = v62;
    NSArray.makeIterator()();
    NSFastEnumerationIterator.next()();
    if (!v127)
    {
LABEL_74:
      (*(v108 + 8))(v63, v109);

      return;
    }

    *&v64 = 136643331;
    v112 = v64;
    while (2)
    {
      sub_100008150(&v126, &v124);
      sub_1000081B0(0, &qword_100264A08, NSMutableDictionary_ptr);
      if (swift_dynamicCast())
      {
        v65 = v122;
        v66 = String._bridgeToObjectiveC()();
        v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v69 = v68;

        *&v122 = v67;
        *(&v122 + 1) = v69;
        v70 = [v65 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v70)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v122 = 0u;
          v123 = 0u;
        }

        v124 = v122;
        v125 = v123;
        if (!*(&v123 + 1))
        {

          sub_10000F500(&v124, &qword_10025F510, &unk_1001D49B0);
          goto LABEL_42;
        }

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_54;
        }

        v71 = v118;
        if (!*(v118 + 16))
        {

          goto LABEL_42;
        }

        v72 = sub_10000511C(v120, v121);
        v74 = v73;

        if ((v74 & 1) == 0)
        {
LABEL_54:

          goto LABEL_42;
        }

        v75 = (*(v71 + 56) + 16 * v72);
        v76 = v75[1];
        v115 = *v75;

        v77 = v65;
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v78, v79))
        {
          v107 = v79;
          v80 = v77;
          v81 = v78;
          v111 = v76;
          v82 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v83 = v82;
          *v82 = v112;
          v84 = String._bridgeToObjectiveC()();
          v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v87 = v86;

          *&v122 = v85;
          *(&v122 + 1) = v87;
          v88 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
          v113 = v80;
          v89 = [v80 __swift_objectForKeyedSubscript:v88];
          swift_unknownObjectRelease();
          if (v89)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v122 = 0u;
            v123 = 0u;
          }

          v124 = v122;
          v125 = v123;
          if (*(&v123 + 1))
          {
            if (swift_dynamicCast())
            {
              v90 = v120;
              v91 = v121;
              goto LABEL_64;
            }
          }

          else
          {
            sub_10000F500(&v124, &qword_10025F510, &unk_1001D49B0);
          }

          v90 = 0;
          v91 = 0xE000000000000000;
LABEL_64:
          v92 = sub_10002510C(v90, v91, &v119);

          *(v83 + 1) = v92;
          *(v83 + 6) = 2085;
          v93 = String._bridgeToObjectiveC()();
          v94 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v96 = v95;

          *&v122 = v94;
          *(&v122 + 1) = v96;
          v97 = [v113 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
          swift_unknownObjectRelease();
          if (v97)
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v122 = 0u;
            v123 = 0u;
          }

          v63 = v110;
          v124 = v122;
          v125 = v123;
          if (*(&v123 + 1))
          {
            if (swift_dynamicCast())
            {
              v98 = v120;
              v99 = v121;
              goto LABEL_72;
            }
          }

          else
          {
            sub_10000F500(&v124, &qword_10025F510, &unk_1001D49B0);
          }

          v98 = 0;
          v99 = 0xE000000000000000;
LABEL_72:
          v100 = sub_10002510C(v98, v99, &v119);

          *(v83 + 14) = v100;
          *(v83 + 11) = 2085;
          *(v83 + 3) = sub_10002510C(v115, v111, &v119);
          _os_log_impl(&_mh_execute_header, v81, v107, "reportQuestionnaireAnswers: Updating answer for question %{sensitive}s: '%{sensitive}s' -> '%{sensitive}s'", v83, 0x20u);
          swift_arrayDestroy();

          v77 = v113;
        }

        else
        {
        }

        v101 = String._bridgeToObjectiveC()();
        v102 = String._bridgeToObjectiveC()();

        *&v124 = v101;
        [v77 __swift_setObject:v102 forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

        swift_unknownObjectRelease();
      }

LABEL_42:
      NSFastEnumerationIterator.next()();
      if (!v127)
      {
        goto LABEL_74;
      }

      continue;
    }
  }

  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    *v105 = 0;
    _os_log_impl(&_mh_execute_header, v103, v104, "reportQuestionnaireAnswers: nil cachedQuestionsOptionsAnswers - cannot update", v105, 2u);
  }
}

void sub_100151344(unint64_t a1, _UNKNOWN **a2)
{
  v81 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v81 - 8);
  v5 = *(v4 + 8);
  __chkstk_darwin(v81);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10025A6F0 != -1)
  {
LABEL_30:
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F34C(v8, qword_100276F38);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = a2;
    v13 = swift_slowAlloc();
    *&v85 = v13;
    *v11 = 136642819;
    v14 = Dictionary.description.getter();
    v16 = sub_10002510C(v14, v15, &v85);

    *(v11 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "reportGeneratedQuestions: resultOptions: %{sensitive}s", v11, 0xCu);
    sub_10000F4B4(v13);
    a2 = v12;
  }

  v17 = sub_10009D1E0(a1);
  v71 = v18;
  v19 = [a2 entries];
  if (!v19)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    return;
  }

  v20 = v19;
  v73 = sub_1000081B0(0, &unk_10025D5B0, TCSmartReplyUserQuestionnaireEntry_ptr);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v70 = v17;
  if (v21 >> 62)
  {
    v22 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = &IASignalSmartRepliesQuestionnaireNotShown;
  if (v22 > 0)
  {
    v23 = &IASignalSmartRepliesQuestionnaireShown;
  }

  v24 = *v23;
  sub_1000081B0(0, &qword_100264A00, NSMutableArray_ptr);
  v25 = v24;
  v26 = _swiftEmptyArrayStorage;
  v82 = NSArray.init(arrayLiteral:)();
  v27 = [a2 entries];
  if (!v27)
  {
    goto LABEL_44;
  }

  v28 = v27;
  v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = v29;
  if (v29 >> 62)
  {
    v31 = _CocoaArrayWrapper.endIndex.getter();
    if (v31)
    {
LABEL_12:
      v68 = v25;
      v69 = a2;
      v79 = sub_1000081B0(0, &qword_100264A08, NSMutableDictionary_ptr);
      v32 = v30;
      a1 = 0;
      v80 = v32 & 0xC000000000000001;
      v75 = v32 & 0xFFFFFFFFFFFFFF8;
      v76 = v32;
      v74 = v32 + 32;
      v77 = (v4 + 8);
      a2 = NSString_ptr;
      v78 = v31;
      while (1)
      {
        if (v80)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (a1 >= *(v75 + 16))
          {
            goto LABEL_29;
          }

          v35 = *(v74 + 8 * a1);
        }

        v36 = v35;
        if (__OFADD__(a1++, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v38 = v26;
        v39 = NSDictionary.init(dictionaryLiteral:)();
        v40 = String._bridgeToObjectiveC()();
        v83 = v36;
        v41 = [v36 question];
        if (v41)
        {
          v42 = v41;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v43 = String._bridgeToObjectiveC()();

        [v39 setObject:v43 forKeyedSubscript:v40];

        v26 = v38;
        v87 = v38;
        v44 = [v83 answerOptions];
        if (!v44)
        {
          break;
        }

        v45 = v44;
        NSOrderedSet.makeIterator()();

        NSFastEnumerationIterator.next()();
        v4 = &type metadata for Any;
        while (v86)
        {
          sub_100008150(&v85, &v84);
          sub_1000081B0(0, &qword_100264A10, NSString_ptr);
          swift_dynamicCast();
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          NSFastEnumerationIterator.next()();
        }

        (*v77)(v7, v81);
        v33 = String._bridgeToObjectiveC()();
        sub_1000081B0(0, &qword_100264A10, NSString_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;

        [v39 setObject:isa forKeyedSubscript:v33];

        [v82 addObject:v39];
        if (a1 == v78)
        {

          a2 = v69;
          v25 = v68;
          goto LABEL_34;
        }
      }

      __break(1u);
      goto LABEL_43;
    }
  }

  else
  {
    v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_12;
    }
  }

LABEL_34:
  swift_getKeyPath();
  v46 = v72;
  *&v85 = v72;
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v46 + 40))
  {
    v47 = *(v46 + 32);
    v48 = *(v46 + 40);

    v49 = String._bridgeToObjectiveC()();
  }

  else
  {
    v49 = 0;
  }

  sub_10000341C(&unk_10025F490, &unk_1001CFA50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001CF9F0;
  v51 = IAPayloadKeySmartRepliesFeatureModel;
  *(inited + 32) = IAPayloadKeySmartRepliesFeatureModel;
  v52 = v51;
  v53 = String._bridgeToObjectiveC()();
  v54 = IAPayloadKeySmartRepliesNumOfQuestionsProvided;
  *(inited + 40) = v53;
  *(inited + 48) = v54;
  v55 = v54;
  v56 = [a2 entries];
  if (!v56)
  {
    goto LABEL_45;
  }

  v57 = v56;
  v58 = IAChannelSmartReplies;

  v59 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v59 >> 62)
  {
    v60 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v60 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = objc_opt_self();
  *(inited + 56) = [objc_allocWithZone(NSNumber) initWithInteger:v60];
  v62 = String._bridgeToObjectiveC()();
  v63 = v82;
  *(inited + 64) = v62;
  *(inited + 72) = v63;
  v64 = v63;
  sub_100005794(inited);
  swift_setDeallocating();
  sub_10000341C(&qword_10025B1A0, &unk_1001D45A0);
  swift_arrayDestroy();
  type metadata accessor for IAPayloadKey(0);
  sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
  sub_100152214(&qword_10025AF18, type metadata accessor for IAPayloadKey);
  v65 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v61 sendSignal:v25 toChannel:v58 withNullableUniqueStringID:v49 withPayload:v65];

  v66 = v64;
  sub_10014EE70(v64);
}

void sub_100151D20(void *a1, Class isa)
{
  v3 = v2;
  if (qword_10025A6F0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F34C(v6, qword_100276F38);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136380675;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = sub_10002510C(v12, v13, &v19);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "sendFeedbackServiceSignal: %{private}s", v10, 0xCu);
    sub_10000F4B4(v11);
  }

  v15 = IAChannelFeedbackService;
  swift_getKeyPath();
  v19 = v3;
  sub_100152214(&qword_1002649F8, type metadata accessor for SmartReplyAnalytics);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v3 + 40))
  {
    v18 = 0;
    if (!isa)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v16 = *(v3 + 32);
  v17 = *(v3 + 40);

  v18 = String._bridgeToObjectiveC()();

  if (isa)
  {
LABEL_7:
    type metadata accessor for IAPayloadKey(0);
    sub_1000081B0(0, &qword_10025F4A0, NSObject_ptr);
    sub_100152214(&qword_10025AF18, type metadata accessor for IAPayloadKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_8:
  [objc_opt_self() sendSignal:v7 toChannel:v15 withNullableUniqueStringID:v18 withPayload:isa];
}

uint64_t sub_100151FE4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 88);

  v5 = OBJC_IVAR____TtC21WritingToolsUIService19SmartReplyAnalytics___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SmartReplyAnalytics()
{
  result = qword_1002647B0;
  if (!qword_1002647B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100152104()
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

void sub_1001521DC(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10014EE70(v2);
}

uint64_t sub_100152214(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001522C4()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 88);
  *(v1 + 80) = v0[3];
  *(v1 + 88) = v2;
}

void sub_100152304()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 72);
  *(v1 + 72) = v2;
  v4 = v2;
}

uint64_t sub_10015233C()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 64);
  *(v1 + 56) = v0[3];
  *(v1 + 64) = v2;
}

void sub_10015237C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
  v4 = v2;
}

uint64_t sub_1001523D0(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_100152418()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 24);
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_100152458()
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_1001524CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 24);
  *a2 = *(v3 + 16);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_100152580(uint64_t result, char a2)
{
  if ((*(v2 + 24) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 16) != result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 16) = result;
    *(v2 + 24) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100156BD4();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100152684(uint64_t result, uint64_t a2, char a3)
{
  *(result + 16) = a2;
  *(result + 24) = a3 & 1;
  return result;
}

uint64_t sub_100152694()
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 25);
}

uint64_t sub_100152704@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_10015277C(uint64_t result)
{
  v2 = *(v1 + 25);
  if (v2 == 3)
  {
    if (result != 3)
    {
LABEL_3:
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100156BD4();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  else if (v2 != result)
  {
    goto LABEL_3;
  }

  *(v1 + 25) = result;
  return result;
}

uint64_t sub_10015286C()
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1001528E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_10015295C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100156BD4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_1000081B0(0, &unk_100264E38, UIWindow_ptr);
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_100152AD4()
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_100152B48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_100152BC4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100156BD4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_1000081B0(0, &qword_100264E30, UIView_ptr);
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_100152D3C()
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_100152DB0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_100152E2C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100156BD4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_1000081B0(0, &qword_100264E28, UITextView_ptr);
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

uint64_t sub_100152FA4()
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_100153018@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_100153094(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1001530C4(v2);
}

void sub_1001530C4(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100156BD4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  type metadata accessor for SceneDelegateContainerViewController();
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

void *sub_10015322C()
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

id sub_1001532A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 64);
  *a2 = v4;

  return v4;
}

void sub_10015332C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 64);
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
    sub_100156BD4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &qword_100264E20, UIVisualEffectView_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 64);
LABEL_8:
  *(v2 + 64) = a1;
}

void *sub_10015348C()
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

id sub_100153504@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 72);
  *a2 = v4;

  return v4;
}

void sub_10015358C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 72);
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
    sub_100156BD4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000081B0(0, &qword_100264E20, UIVisualEffectView_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 72);
LABEL_8:
  *(v2 + 72) = a1;
}

uint64_t sub_1001536EC()
{
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 81);
}

uint64_t sub_10015375C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 81);
  return result;
}

uint64_t sub_1001537FC(char a1)
{
  if (*(v1 + 81) == (a1 & 1))
  {
    *(v1 + 81) = a1 & 1;
    swift_getKeyPath();
    sub_100156BD4();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    *(v1 + 82) = *(v1 + 81);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100156BD4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100153924(uint64_t a1, char a2)
{
  *(a1 + 81) = a2;
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(a1 + 82) = *(a1 + 81);
  return result;
}

uint64_t sub_1001539A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6572676F72506E69;
  v4 = 0xEA00000000007373;
  v5 = 0xE800000000000000;
  if (v2 == 1)
  {
    v5 = 0xEA00000000007373;
  }

  else
  {
    v3 = 0x64656873696E6966;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x7472617453746F6ELL;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000006465;
  }

  v8 = 0x6572676F72506E69;
  if (*a2 != 1)
  {
    v8 = 0x64656873696E6966;
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7472617453746F6ELL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000006465;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100153AA4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100153B4C()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100153BE0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100153C84@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100156B5C(*a1);
  *a2 = result;
  return result;
}

void sub_100153CB4(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006465;
  v3 = *v1;
  v4 = 0xEA00000000007373;
  v5 = 0x6572676F72506E69;
  if (v3 != 1)
  {
    v5 = 0x64656873696E6966;
    v4 = 0xE800000000000000;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7472617453746F6ELL;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

void sub_100153D18()
{
  sub_1001537FC(0);
  *(v0 + 82) = 0;
  *(v0 + 84) = 0;
  swift_beginAccess();
  v1 = *(v0 + 88);
  *(v0 + 88) = _swiftEmptyArrayStorage;

  v2 = *(v0 + 96);
  *(v0 + 96) = 0;
}

void sub_100153D78()
{
  v1 = v0;
  swift_getKeyPath();
  aBlock[0] = v0;
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setText:0];
  }

  if (*(v1 + 96))
  {
    swift_getKeyPath();
    aBlock[0] = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      v6 = *(v1 + 96);
      *(v1 + 96) = 0;

      *(v1 + 84) = 1;
      *(v1 + 82) = 0;
      swift_beginAccess();
      v7 = *(v1 + 88);
      *(v1 + 88) = _swiftEmptyArrayStorage;

      v8 = swift_allocObject();
      swift_weakInit();

      v9 = [v5 endOfDocument];
      aBlock[4] = sub_100156F50;
      aBlock[5] = v8;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001256BC;
      aBlock[3] = &unk_100250C20;
      v10 = _Block_copy(aBlock);

      [v5 insertAnimatedTextPlaceholderAtLocation:v9 numLines:v10 completion:0.0];
      _Block_release(v10);
    }

    else
    {
      if (qword_10025A6D8 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000F34C(v11, qword_100276EF0);
      v9 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v9, v12, "ponderableTextView is nil", v13, 2u);
      }
    }
  }
}

void sub_100154048()
{
  v1 = v0;
  swift_getKeyPath();
  v26 = v0;
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 25);
  if (v2 != 3)
  {
    swift_getKeyPath();
    v26 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if ((*(v0 + 24) & 1) == 0)
    {
      v3 = *(v0 + 16);
      swift_getKeyPath();
      v26 = v0;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        if (v2 == 2)
        {
          if (*(v0 + 80))
          {
            v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v6 & 1) == 0)
            {
              if (qword_10025A6E0 != -1)
              {
                swift_once();
              }

              v7 = type metadata accessor for Logger();
              sub_10000F34C(v7, qword_100276F08);

              v8 = Logger.logObject.getter();
              v9 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v8, v9))
              {
                v10 = swift_slowAlloc();
                v26 = swift_slowAlloc();
                *v10 = 136315394;
                *(v10 + 4) = sub_10002510C(0xD000000000000017, 0x80000001001E7F10, &v26);
                *(v10 + 12) = 2080;
                v11 = 0xEA00000000007373;
                v12 = 0x64656873696E6966;
                if (*(v1 + 80) == 1)
                {
                  v12 = 0x6572676F72506E69;
                }

                else
                {
                  v11 = 0xE800000000000000;
                }

                if (*(v1 + 80))
                {
                  v13 = v12;
                }

                else
                {
                  v13 = 0x7472617453746F6ELL;
                }

                if (*(v1 + 80))
                {
                  v14 = v11;
                }

                else
                {
                  v14 = 0xEA00000000006465;
                }

                v15 = sub_10002510C(v13, v14, &v26);

                *(v10 + 14) = v15;
                _os_log_impl(&_mh_execute_header, v8, v9, "Ignoring call to %s since invocationAnimationState is %s", v10, 0x16u);
                swift_arrayDestroy();
              }

              goto LABEL_37;
            }
          }

          else
          {
          }

          swift_getKeyPath();
          v26 = v0;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v16 = *(v0 + 64);
          p_name = &stru_100256FF8.name;
          if (v16)
          {
            v18 = v16;
            [v18 removeFromSuperview];
            if (*(v0 + 64))
            {
              KeyPath = swift_getKeyPath();
              __chkstk_darwin(KeyPath);
              v26 = v0;
              ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

              p_name = (&stru_100256FF8 + 8);
            }

            else
            {
            }
          }

          swift_getKeyPath();
          v26 = v0;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v20 = *(v0 + 72);
          if (v20)
          {
            v21 = v20;
            [v21 p_name[399]];
            if (*(v0 + 72))
            {
              v22 = swift_getKeyPath();
              __chkstk_darwin(v22);
              v26 = v0;
              ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
            }

            else
            {
            }
          }

          v23 = [v5 rootViewController];
          if (v23)
          {
            v24 = v23;
            v25 = [v23 view];

            if (!v25)
            {
              __break(1u);
              return;
            }

            [v25 layoutSubviews];
          }

          if (v3 == 7)
          {
            sub_100156014();
          }

          else if (v3 == 2)
          {
            sub_100154F70();
          }
        }

LABEL_37:
      }
    }
  }
}

void sub_1001545B0(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v4 = OBJC_IVAR____TtC21WritingToolsUIService15CommonUIManager___observationRegistrar;
  aBlock = v1;
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (!a1)
    {
      goto LABEL_17;
    }

    v43 = v4;
    v7 = a1;
    v8 = [v7 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v9;

    v10 = v2[12];
    if (v10)
    {
      v11 = [v10 string];
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0xE000000000000000;
    }

    v18._countAndFlagsBits = v12;
    v18._object = v14;
    if (!String.hasPrefix(_:)(v18) || (v19 = String.count.getter(), String.count.getter() >= v19))
    {

      goto LABEL_16;
    }

    v20 = String.UTF16View.count.getter();

    v21 = String.UTF16View.count.getter();

    if (__OFSUB__(v21, v20))
    {
      goto LABEL_43;
    }

    v22 = [v7 attributedSubstringFromRange:{v20, v21 - v20}];
    swift_beginAccess();
    v4 = v22;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v2[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_44;
    }

    while (1)
    {
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      v23 = v2[12];
      v2[12] = a1;

LABEL_16:
      v4 = v43;
LABEL_17:
      if (*(v2 + 84))
      {
        break;
      }

      swift_beginAccess();
      v24 = v2[11];
      if (v24 >> 62)
      {
        if (v24 < 0)
        {
          v31 = v2[11];
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
LABEL_31:
          swift_getKeyPath();
          aBlock = v2;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          if (*(v2 + 81) == 1 && *(v2 + 82) == 1)
          {
            [v6 frame];
            if (!CGRectIsEmpty(v50))
            {
              *(v2 + 84) = 1;
              *(v2 + 82) = 0;
              v32 = swift_allocObject();
              swift_weakInit();

              v33 = [v6 endOfDocument];
              v48 = sub_1001570B0;
              v49 = v32;
              aBlock = _NSConcreteStackBlock;
              v45 = 1107296256;
              v46 = sub_1001256BC;
              v47 = &unk_100250BF8;
              v34 = _Block_copy(&aBlock);

              [v6 insertAnimatedTextPlaceholderAtLocation:v33 numLines:v34 completion:0.0];
              _Block_release(v34);

              v6 = v33;
            }
          }

          break;
        }
      }

      else if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v25 = v2[11];
      v26 = objc_allocWithZone(NSMutableAttributedString);

      v27 = [v26 init];
      if (v25 >> 62)
      {
        a1 = _CocoaArrayWrapper.endIndex.getter();
        if (!a1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        a1 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!a1)
        {
          goto LABEL_36;
        }
      }

      if (a1 >= 1)
      {
        v28 = 0;
        do
        {
          if ((v25 & 0xC000000000000001) != 0)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v29 = *(v25 + 8 * v28 + 32);
          }

          v30 = v29;
          ++v28;
          [v27 appendAttributedString:{v29, v43, aBlock}];
        }

        while (a1 != v28);
LABEL_36:

        v35 = v2[11];
        v2[11] = _swiftEmptyArrayStorage;

        *(v2 + 84) = 1;
        if (*(v2 + 83))
        {
          *(v2 + 83) = 0;
          v36 = swift_allocObject();
          swift_weakInit();
          v48 = sub_1001570AC;
          v49 = v36;
          aBlock = _NSConcreteStackBlock;
          v45 = 1107296256;
          v46 = sub_1001256BC;
          v47 = &unk_100250BD0;
          v37 = _Block_copy(&aBlock);

          LOBYTE(v36) = [v6 replaceAnimatedTextPlaceholderWith:v27 completion:v37];
          _Block_release(v37);
          if ((v36 & 1) == 0)
          {
            v27 = v27;
            [v6 setAttributedText:v27];
          }
        }

        else
        {
          v38 = swift_allocObject();
          swift_weakInit();

          v39 = [v6 endOfDocument];
          v40 = [v6 endOfDocument];
          v41 = [v6 textRangeFromPosition:v39 toPosition:v40];

          [v6 setSelectedTextRange:v41];
          v48 = sub_100156E30;
          v49 = v38;
          aBlock = _NSConcreteStackBlock;
          v45 = 1107296256;
          v46 = sub_1001256BC;
          v47 = &unk_100250BA8;
          v42 = _Block_copy(&aBlock);

          [v6 insertAttributedText:v27 withAnimationStyle:1 completion:v42];
          _Block_release(v42);
        }

        break;
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }
  }

  else
  {
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000F34C(v15, qword_100276EF0);
    v6 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v6, v16, "ponderableTextView is nil", v17, 2u);
    }
  }
}

id Array<A>.joinAttributedStrings()(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSMutableAttributedString) init];
  if (!Array.endIndex.getter())
  {
    return v2;
  }

  for (i = 4; ; ++i)
  {
    IsNativeType = Array._hoistableIsNativeTypeChecked()();
    Array._checkSubscript(_:wasNativeTypeChecked:)();
    result = IsNativeType ? *(a1 + 8 * i) : _ArrayBuffer._getElementSlowPath(_:)();
    v6 = result;
    v7 = i - 3;
    if (__OFADD__(i - 4, 1))
    {
      break;
    }

    [v2 appendAttributedString:result];

    if (v7 == Array.endIndex.getter())
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100154E70()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100156514();
  }

  return result;
}

uint64_t sub_100154EC8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    *(result + 83) = 1;
    swift_beginAccess();
    v2 = *(v1 + 88);
    if (v2 >> 62)
    {
      if (v2 < 0)
      {
        v3 = *(v1 + 88);
      }

      if (!_CocoaArrayWrapper.endIndex.getter())
      {
      }
    }

    else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
    }

    sub_1001545B0(0);
  }

  return result;
}

void sub_100154F70()
{
  v1 = v0;
  v2 = *v0;
  swift_getKeyPath();
  aBlock = v0;
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v8 = [objc_allocWithZone(UIVisualEffectView) initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setUserInteractionEnabled:0];
    v9 = v8;
    sub_10015332C(v8);
    v10 = [objc_allocWithZone(UIVisualEffectView) initWithFrame:{CGRectZero.origin.x, y, width, height}];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setUserInteractionEnabled:0];
    v11 = v10;
    sub_10015358C(v10);
    [v4 addSubview:v11];
    [v4 addSubview:v9];
    v56 = objc_opt_self();
    sub_10000341C(&qword_10025F470, &qword_1001D1020);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1001DD250;
    v13 = [v9 widthAnchor];
    v14 = [v4 widthAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];

    *(v12 + 32) = v15;
    v16 = [v9 heightAnchor];
    v17 = [v4 heightAnchor];
    v18 = [v16 constraintEqualToAnchor:v17 constant:200.0];

    *(v12 + 40) = v18;
    v19 = [v9 centerXAnchor];
    v20 = [v4 centerXAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];

    *(v12 + 48) = v21;
    v22 = [v9 topAnchor];

    v23 = [v4 topAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];

    *(v12 + 56) = v24;
    v25 = [v11 widthAnchor];
    v26 = [v4 widthAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    *(v12 + 64) = v27;
    v28 = [v11 heightAnchor];
    v29 = [v4 heightAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:200.0];

    *(v12 + 72) = v30;
    v31 = [v11 centerXAnchor];
    v32 = [v4 centerXAnchor];
    v33 = [v31 constraintEqualToAnchor:v32];

    *(v12 + 80) = v33;
    v34 = [v11 topAnchor];

    v35 = [v4 topAnchor];
    v36 = [v34 constraintEqualToAnchor:v35];

    *(v12 + 88) = v36;
    sub_1000081B0(0, &qword_10025AD00, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v56 activateConstraints:isa];

    *(v1 + 80) = 1;
    v38 = objc_opt_self();
    v39 = swift_allocObject();
    v40 = v2;
    *(v39 + 16) = v9;
    *(v39 + 24) = v2;
    v62 = sub_1001570E4;
    v63 = v39;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_1001256BC;
    v61 = &unk_100250978;
    v41 = _Block_copy(&aBlock);
    v42 = v9;

    v43 = swift_allocObject();
    v43[2] = v1;
    v43[3] = v42;
    v43[4] = v2;
    v62 = sub_100156CC0;
    v63 = v43;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_100155E64;
    v61 = &unk_1002509C8;
    v44 = _Block_copy(&aBlock);
    v57 = v42;

    [v38 animateWithDuration:v41 animations:v44 completion:0.0];
    _Block_release(v44);
    _Block_release(v41);
    aBlock = _swiftEmptyArrayStorage;
    sub_1000081B0(0, &qword_100264E18, UIVisualEffect_ptr);
    v45 = [objc_opt_self() sharedLight];
    v46 = static UIVisualEffect.intelligenceContentLight(source:activationDirection:deactivationDirection:)();

    v47 = v46;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v55 = *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v48 = Array._bridgeToObjectiveC()().super.isa;

    [v11 setBackgroundEffects:v48];

    v49 = swift_allocObject();
    *(v49 + 16) = v11;
    *(v49 + 24) = v40;
    v62 = sub_100156CCC;
    v63 = v49;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_1001256BC;
    v61 = &unk_100250A18;
    v50 = _Block_copy(&aBlock);
    v51 = v11;

    v52 = swift_allocObject();
    *(v52 + 16) = v51;
    *(v52 + 24) = v1;
    v62 = sub_100156D14;
    v63 = v52;
    aBlock = _NSConcreteStackBlock;
    v59 = 1107296256;
    v60 = sub_100155E64;
    v61 = &unk_100250A68;
    v53 = _Block_copy(&aBlock);
    v54 = v51;

    [v38 animateWithDuration:v50 animations:v53 completion:1.0];
    _Block_release(v53);
    _Block_release(v50);
  }
}

void sub_100155890(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    v22 = sub_100156D50;
    v23 = v8;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_1001256BC;
    v21 = &unk_100250AB8;
    v9 = _Block_copy(&v18);
    v10 = a3;

    v11 = swift_allocObject();
    v11[2] = a2;
    v11[3] = v10;
    v11[4] = a4;
    v22 = sub_100156D9C;
    v23 = v11;
    v18 = _NSConcreteStackBlock;
    v19 = 1107296256;
    v20 = sub_100155E64;
    v21 = &unk_100250B08;
    v12 = _Block_copy(&v18);
    v13 = v10;

    [v7 animateWithDuration:v9 animations:v12 completion:0.7];
    _Block_release(v12);
    _Block_release(v9);
  }

  else
  {
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000F34C(v14, qword_100276EF0);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Invocation animation for popover was interrupted, setting invocationAnimationState to .finished.", v17, 2u);
    }

    *(a2 + 80) = 2;
  }
}

void sub_100155B00(void *a1)
{
  sub_1001569D8(1, 2, 1);
  sub_1000081B0(0, &qword_100264E18, UIVisualEffect_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setBackgroundEffects:isa];
}

void sub_100155B94(char a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    *(a2 + 80) = 2;
    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    v15[4] = sub_100156DA8;
    v15[5] = v8;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1107296256;
    v15[2] = sub_1001256BC;
    v15[3] = &unk_100250B58;
    v9 = _Block_copy(v15);
    v10 = a3;

    [v7 animateWithDuration:v9 animations:3.0];
    _Block_release(v9);
  }

  else
  {
    if (qword_10025A6D8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000F34C(v11, qword_100276EF0);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Invocation animation for popover was interrupted, setting invocationAnimationState to .finished.", v14, 2u);
    }

    *(a2 + 80) = 2;
  }
}

void sub_100155D54(void *a1)
{
  v2 = [objc_opt_self() effectWithStyle:10];
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v3 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_1000081B0(0, &qword_100264E18, UIVisualEffect_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setBackgroundEffects:isa];
}

uint64_t sub_100155E64(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

void sub_100155EB8(void *a1)
{
  sub_1000081B0(0, &qword_100264E18, UIVisualEffect_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a1 setBackgroundEffects:isa];
}

id sub_100155F34(int a1, id a2, uint64_t a3)
{
  result = [a2 removeFromSuperview];
  if (*(a3 + 72))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100156BD4();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_100156014()
{
  v1 = v0;
  v2 = *v0;
  swift_getKeyPath();
  v28 = v0;
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [objc_allocWithZone(UIVisualEffectView) initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height, v28}];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = v5;
    sub_10015332C(v5);
    [v4 addSubview:v6];
    v7 = objc_opt_self();
    sub_10000341C(&qword_10025F470, &qword_1001D1020);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1001CE090;
    v9 = [v6 leftAnchor];
    v10 = [v4 leftAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:-15.0];

    *(v8 + 32) = v11;
    v12 = [v6 rightAnchor];
    v13 = [v4 rightAnchor];
    v14 = [v12 constraintEqualToAnchor:v13 constant:15.0];

    *(v8 + 40) = v14;
    v15 = [v6 topAnchor];
    v16 = [v4 topAnchor];
    v17 = [v15 constraintEqualToAnchor:v16 constant:-15.0];

    *(v8 + 48) = v17;
    v18 = [v6 bottomAnchor];

    v19 = [v4 bottomAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:15.0];

    *(v8 + 56) = v20;
    sub_1000081B0(0, &qword_10025AD00, NSLayoutConstraint_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 activateConstraints:isa];

    *(v1 + 80) = 1;
    sub_1001569D8(1, 0, 1);
    sub_1000081B0(0, &qword_100264E18, UIVisualEffect_ptr);
    v22 = Array._bridgeToObjectiveC()().super.isa;

    [v6 setBackgroundEffects:v22];

    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = v6;
    *(v24 + 24) = v2;
    v32 = sub_1001570E4;
    v33 = v24;
    v28 = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_1001256BC;
    v31 = &unk_100250900;
    v25 = _Block_copy(&v28);
    v26 = v6;

    v32 = sub_100156CB0;
    v33 = v1;
    v28 = _NSConcreteStackBlock;
    v29 = 1107296256;
    v30 = sub_100155E64;
    v31 = &unk_100250928;
    v27 = _Block_copy(&v28);

    [v23 animateWithDuration:v25 animations:v27 completion:3.0];
    _Block_release(v27);
    _Block_release(v25);
  }
}

uint64_t sub_100156514()
{
  *(v0 + 84) = 0;
  swift_getKeyPath();
  sub_100156BD4();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 82) = *(v0 + 81);
  swift_beginAccess();
  v1 = *(v0 + 88);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v3 = *(v0 + 88);
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v0 + 81) != 1)
      {
        return result;
      }
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  return sub_1001545B0(0);
}

uint64_t sub_100156624()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();

  v1 = *(v0 + 88);

  v2 = OBJC_IVAR____TtC21WritingToolsUIService15CommonUIManager___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_1001566C4()
{
  sub_100156624();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10015671C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 769;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 77) = 0;
  *(v0 + 88) = _swiftEmptyArrayStorage;
  *(v0 + 96) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t type metadata accessor for CommonUIManager()
{
  result = qword_100264A50;
  if (!qword_100264A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100156818()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_10015692C()
{
  result = qword_100264E08;
  if (!qword_100264E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264E08);
  }

  return result;
}

unint64_t sub_100156984()
{
  result = qword_100264E10;
  if (!qword_100264E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264E10);
  }

  return result;
}

void *sub_1001569D8(char a1, uint64_t a2, char a3)
{
  result = _swiftEmptyArrayStorage;
  if (a1)
  {
    sub_1000081B0(0, &qword_100264E18, UIVisualEffect_ptr);
    v6 = [objc_opt_self() sharedLight];
    v7 = static UIVisualEffect.intelligenceContentLight(source:activationDirection:deactivationDirection:)();

    v8 = v7;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v10 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    result = _swiftEmptyArrayStorage;
  }

  if (a3)
  {
    v9 = [objc_opt_self() effectWithStyle:10];
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v11 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    return _swiftEmptyArrayStorage;
  }

  return result;
}

unint64_t sub_100156B5C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10024AC28, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100156BD4()
{
  result = qword_10025B1E0;
  if (!qword_10025B1E0)
  {
    type metadata accessor for CommonUIManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10025B1E0);
  }

  return result;
}

void sub_100156C30(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100152BC4(v2);
}

uint64_t sub_100156C60()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100156C98(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100156CB0(uint64_t result)
{
  if (result)
  {
    *(v1 + 80) = 2;
  }

  return result;
}

uint64_t sub_100156CD4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100156D20(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10015358C(v2);
}

uint64_t sub_100156D5C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100156DC8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_100152E2C(v2);
}

uint64_t sub_100156DF8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100156EB4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10015295C(v2);
}

void sub_100156EE8(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10015332C(v2);
}

void sub_100156F18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 64);
  *(v1 + 64) = v2;
  v4 = v2;
}

void sub_100156F90(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_1001530C4(v2);
}

uint64_t sub_100156FC0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_100156FE0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_100157000()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_100157020()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

void sub_100157050()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 24) = v2;
}

uint64_t sub_100157138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100157218(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100157300()
{
  sub_10015B7CC(319, &qword_100264EB0, &type metadata accessor for NavigationPath, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_10015B7CC(319, qword_100264EB8, type metadata accessor for PresentationModel, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_1000596F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100157428@<X0>(void *(*a1)()@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a3;
  v30 = a4;
  v8 = type metadata accessor for NavigationPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  LOBYTE(v31) = 0;
  State.init(wrappedValue:)();
  v16 = v33;
  *(a5 + 40) = v32;
  *(a5 + 48) = v16;
  LOBYTE(v31) = 0;
  State.init(wrappedValue:)();
  v17 = v33;
  *(a5 + 56) = v32;
  *(a5 + 64) = v17;
  v18 = type metadata accessor for CompositionInputDashboardView(0);
  v19 = v18[8];
  NavigationPath.init()();
  (*(v9 + 16))(v13, v15, v8);
  State.init(wrappedValue:)();
  (*(v9 + 8))(v15, v8);
  v20 = a5 + v18[9];
  LOBYTE(v31) = 1;
  State.init(wrappedValue:)();
  v21 = v33;
  *v20 = v32;
  *(v20 + 8) = v21;
  v31 = a1;
  type metadata accessor for CompositionModel(0);

  State.init(wrappedValue:)();
  v22 = v33;
  *a5 = v32;
  *(a5 + 8) = v22;
  v24 = v29;
  v23 = v30;
  *(a5 + 16) = a2;
  *(a5 + 24) = v24;
  *(a5 + 32) = v23;
  v25 = (a5 + v18[10]);
  *v25 = sub_10015B448;
  v25[1] = a1;
  v26 = (a5 + v18[11]);
  *v26 = sub_10015B468;
  v26[1] = a1;
}

void *sub_100157670(uint64_t a1, char a2)
{
  sub_10007CE14(a2, 0, 0, 0);
  swift_getKeyPath();
  sub_10015B490(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result endWritingTools];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100157750@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v117 = a2;
  v3 = sub_10000341C(&qword_1002650B8, &unk_1001DD920);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v116 = v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v127 = v102 - v7;
  v109 = type metadata accessor for PopoverAttachmentAnchor();
  v108 = *(v109 - 8);
  v8 = *(v108 + 64);
  __chkstk_darwin(v109);
  v107 = (v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for CompositionInputDashboardView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v14 = v13;
  v15 = v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10000341C(&qword_1002650C0, &qword_1001CE1E8);
  v104 = v16;
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = v102 - v18;
  v121 = sub_10000341C(&qword_1002650C8, &qword_1001DD930);
  v110 = *(v121 - 8);
  v20 = *(v110 + 8);
  __chkstk_darwin(v121);
  v120 = v102 - v21;
  v123 = sub_10000341C(&qword_1002650D0, &qword_1001DD938);
  v111 = *(v123 - 8);
  v22 = *(v111 + 64);
  __chkstk_darwin(v123);
  v122 = v102 - v23;
  v112 = sub_10000341C(&qword_1002650D8, &qword_1001DD940);
  v113 = *(v112 - 8);
  v24 = *(v113 + 64);
  __chkstk_darwin(v112);
  v125 = v102 - v25;
  v115 = sub_10000341C(&qword_1002650E0, &qword_1001DD948);
  v114 = *(v115 - 8);
  v26 = *(v114 + 64);
  v27 = __chkstk_darwin(v115);
  v126 = v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v124 = v102 - v29;
  sub_10015BA94(a1, v15, type metadata accessor for CompositionInputDashboardView);
  v30 = *(v11 + 80);
  v31 = (v30 + 16) & ~v30;
  v130 = v14;
  v119 = v30;
  v32 = swift_allocObject();
  sub_10015BB00(v15, v32 + v31, type metadata accessor for CompositionInputDashboardView);
  sub_10000341C(&qword_1002650E8, &unk_1001DD950);
  sub_10015BD80();
  v106 = v19;
  Button.init(action:label:)();
  v33 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v34 = &v19[*(v16 + 36)];
  *v34 = v33;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  LOBYTE(v34) = *(a1 + 56);
  v39 = *(a1 + 64);
  v131 = a1;
  LOBYTE(v133) = v34;
  v134 = v39;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.projectedValue.getter();
  v102[1] = BYTE8(v136);
  v128 = v15;
  v118 = type metadata accessor for CompositionInputDashboardView;
  sub_10015BA94(a1, v15, type metadata accessor for CompositionInputDashboardView);
  v129 = v31;
  v40 = swift_allocObject();
  sub_10015BB00(v15, v40 + v31, type metadata accessor for CompositionInputDashboardView);
  v41 = static Anchor.Source<A>.bounds.getter();
  v42 = v107;
  *v107 = v41;
  v43 = v108;
  v44 = v109;
  (*(v108 + 104))(v42, enum case for PopoverAttachmentAnchor.rect(_:), v109);
  *&v103 = sub_10000341C(&unk_10025AA00, &unk_1001CE1F0);
  *(&v103 + 1) = sub_10015AFB0(&unk_100265100, &qword_1002650C0, &qword_1001CE1E8, sub_100006CD4);
  v45 = sub_100003E34(&unk_100265130, &unk_1001DD970);
  v46 = sub_100003E34(&unk_10025AA40, &unk_1001CE210);
  v47 = sub_100006DE0();
  v135 = v46;
  *&v136 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v135 = v45;
  *&v136 = OpaqueTypeConformance2;
  v105 = swift_getOpaqueTypeConformance2();
  v49 = v104;
  v50 = v106;
  View.popoverCore<A>(isPresented:attachmentAnchor:arrowEdges:isDetachable:content:)();

  (*(v43 + 8))(v42, v44);
  sub_10000F500(v50, &qword_1002650C0, &qword_1001CE1E8);
  v51 = v131;
  v135 = *(v131 + 16);
  v136 = *(v131 + 24);
  sub_10000341C(&unk_100264F20, &qword_1001DD7B8);
  Binding.wrappedValue.getter();
  v52 = v133;
  swift_getKeyPath();
  v135 = v52;
  sub_10015B490(&qword_10025A910, type metadata accessor for PresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v53 = *(v52 + 4);
  LOBYTE(a1) = v52[40];

  v133 = v53;
  LOBYTE(v134) = a1;
  v54 = v128;
  v55 = v118;
  sub_10015BA94(v51, v128, v118);
  v56 = v129;
  v57 = swift_allocObject();
  sub_10015BB00(v54, v57 + v56, v55);
  v109 = sub_10000341C(&qword_100265178, &qword_1001DD990);
  v135 = v49;
  v136 = v103;
  v137 = v105;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = sub_10015BEEC();
  v60 = v121;
  v61 = v120;
  View.onChange<A>(of:initial:_:)();

  (*(v110 + 1))(v61, v60);
  v62 = v51[1];
  v120 = *v51;
  v110 = v62;
  v135 = v120;
  *&v136 = v62;
  sub_10000341C(&qword_100265190, &qword_1001DD998);
  State.wrappedValue.getter();
  v63 = v133;
  swift_getKeyPath();
  v135 = v63;
  sub_10015B490(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v61) = v63[OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__state];

  LOBYTE(v133) = v61;
  v64 = v128;
  v65 = v118;
  sub_10015BA94(v51, v128, v118);
  v66 = v129;
  v67 = swift_allocObject() + v66;
  v68 = v64;
  v69 = v65;
  sub_10015BB00(v68, v67, v65);
  v135 = v121;
  *&v136 = v109;
  *(&v136 + 1) = v58;
  v137 = v59;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = sub_100095B60();
  v72 = v122;
  v73 = v123;
  View.onChange<A>(of:initial:_:)();

  (*(v111 + 8))(v72, v73);
  v135 = v120;
  *&v136 = v110;
  State.wrappedValue.getter();
  v74 = v133;
  swift_getKeyPath();
  v135 = v74;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v75 = OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__slots;
  swift_beginAccess();
  v76 = *&v74[v75];

  v132 = v76;
  v77 = v128;
  v78 = v69;
  sub_10015BA94(v131, v128, v69);
  v79 = v129;
  v80 = swift_allocObject();
  sub_10015BB00(v77, v80 + v79, v78);
  sub_10000341C(&qword_10025E2C0, &unk_1001DC4C0);
  v135 = v123;
  *&v136 = &type metadata for CompositionModel.State;
  *(&v136 + 1) = v70;
  v137 = v71;
  swift_getOpaqueTypeConformance2();
  sub_10015C048();
  v81 = v124;
  v82 = v112;
  v83 = v125;
  View.onChange<A>(of:initial:_:)();

  (*(v113 + 8))(v83, v82);
  LocalizedStringKey.init(stringLiteral:)();
  v84 = Text.init(_:tableName:bundle:comment:)();
  v86 = v85;
  LODWORD(v123) = v87;
  v125 = v88;
  sub_10015BA94(v131, v77, v78);
  v89 = swift_allocObject();
  sub_10015BB00(v77, v89 + v79, v78);
  v90 = v127;
  Button.init(action:label:)();
  v91 = v114;
  v92 = *(v114 + 16);
  v93 = v126;
  v94 = v81;
  v95 = v115;
  v92(v126, v94, v115);
  v96 = v116;
  sub_1000081F8(v90, v116, &qword_1002650B8, &unk_1001DD920);
  v97 = v117;
  v92(v117, v93, v95);
  v98 = sub_10000341C(&unk_1002651A8, &unk_1001DD9F8);
  v99 = &v97[*(v98 + 48)];
  *v99 = v84;
  *(v99 + 8) = v86;
  LOBYTE(v77) = v123 & 1;
  *(v99 + 16) = v123 & 1;
  *(v99 + 24) = v125;
  sub_1000081F8(v96, &v97[*(v98 + 64)], &qword_1002650B8, &unk_1001DD920);
  sub_100007D98(v84, v86, v77);

  sub_10000F500(v127, &qword_1002650B8, &unk_1001DD920);
  v100 = *(v91 + 8);
  v100(v124, v95);
  sub_10000F500(v96, &qword_1002650B8, &unk_1001DD920);
  sub_10002A984(v84, v86, v77);

  return (v100)(v126, v95);
}

uint64_t sub_100158698(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 64);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.wrappedValue.getter();
  return State.wrappedValue.setter();
}

uint64_t sub_100158720@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GenerativePartnerServiceProvider();
  static GenerativePartnerServiceProvider.shared.getter();
  dispatch thunk of GenerativePartnerServiceProvider.intendedDefaultLLM.getter();

  if (!v6)
  {
    sub_10000F500(v5, &qword_1002651D0, &unk_1001DDA20);
    goto LABEL_5;
  }

  sub_100027874(v5, v6);
  dispatch thunk of LLMProvider.iconSymbolName.getter();
  v3 = v2;
  sub_10000F4B4(v5);
  if (!v3)
  {
LABEL_5:
    result = 0;
    goto LABEL_6;
  }

  result = Image.init(_internalSystemName:)();
LABEL_6:
  *a1 = result;
  return result;
}

uint64_t sub_1001587E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v67 = type metadata accessor for PresentationKind();
  v65 = *(v67 - 8);
  v3 = *(v65 + 64);
  __chkstk_darwin(v67);
  v62 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PresentationBackgroundInteraction();
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  __chkstk_darwin(v5);
  v61 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for NavigationPath();
  v8 = *(v58 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v58);
  v57 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v52 - v12;
  v55 = sub_10000341C(&unk_10025AA40, &unk_1001CE210);
  v14 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v16 = &v52 - v15;
  v17 = sub_10000341C(&unk_100265130, &unk_1001DD970);
  v18 = *(v17 - 8);
  v59 = v17;
  v60 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v56 = &v52 - v20;
  v68 = a1;
  static Axis.Set.vertical.getter();
  sub_10000341C(&qword_1002651B8, &qword_1001DDA18);
  v21 = type metadata accessor for CompositionView(255);
  v22 = type metadata accessor for CompositionModel(255);
  v23 = sub_10015B490(&unk_1002651C0, type metadata accessor for CompositionView);
  v24 = sub_10015B490(&qword_10025B210, type metadata accessor for CompositionModel);
  v71 = v21;
  v72 = v22;
  v73 = v23;
  v74 = v24;
  swift_getOpaqueTypeConformance2();
  ScrollView.init(_:showsIndicators:content:)();
  v26 = a1[3];
  v27 = a1[4];
  v71 = a1[2];
  v25 = v71;
  v72 = v26;
  v73 = v27;
  sub_10000341C(&unk_100264F20, &qword_1001DD7B8);
  Binding.projectedValue.getter();
  v28 = v69;
  v53 = v70;
  v29 = &v16[*(sub_10000341C(&unk_100265150, &unk_1001DD980) + 36)];
  v54 = v16;
  *v29 = v28;
  *(v29 + 8) = v53;
  *(v29 + 3) = 0x4077200000000000;
  v30 = type metadata accessor for CompositionInputDashboardView(0);
  v31 = v30[8];
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  State.wrappedValue.getter();
  v71 = v25;
  v72 = v26;
  v73 = v27;
  Binding.projectedValue.getter();
  *&v53 = v69;
  v52 = v70;
  v32 = (a1 + v30[11]);
  v34 = *v32;
  v33 = v32[1];
  v35 = (a1 + v30[10]);
  v36 = *v35;
  v37 = v35[1];
  v38 = v55;
  v39 = &v16[*(v55 + 36)];
  v40 = v58;
  (*(v8 + 16))(v57, v13, v58);

  State.init(wrappedValue:)();
  (*(v8 + 8))(v13, v40);
  v41 = type metadata accessor for InputDashboardNavigationModifier(0);
  v42 = &v39[v41[5]];
  *v42 = v53;
  *(v42 + 8) = v52;
  v43 = &v39[v41[6]];
  *v43 = v34;
  *(v43 + 1) = v33;
  v44 = &v39[v41[7]];
  *v44 = v36;
  *(v44 + 1) = v37;
  v45 = sub_100006DE0();
  v46 = v56;
  v47 = v54;
  View.interactiveDismissDisabled(_:)();
  sub_10000F500(v47, &unk_10025AA40, &unk_1001CE210);
  v48 = v61;
  static PresentationBackgroundInteraction.enabled.getter();
  v49 = v62;
  static PresentationKind.popover.getter();
  v71 = v38;
  v72 = v45;
  swift_getOpaqueTypeConformance2();
  v50 = v59;
  View.presentationBackgroundInteraction(_:for:)();
  (*(v65 + 8))(v49, v67);
  (*(v63 + 8))(v48, v64);
  return (*(v60 + 8))(v46, v50);
}

uint64_t sub_100158E40(uint64_t *a1)
{
  v2 = type metadata accessor for CompositionView(0);
  v3 = *(*(v2 - 1) + 64);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CompositionInputDashboardView(0);
  v7 = *(v6 + 32);
  v8 = v2[7];
  sub_10000341C(&qword_10025B260, &qword_1001CFC10);
  State.projectedValue.getter();
  v9 = a1 + *(v6 + 36);
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v27) = v10;
  v28 = v11;
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  State.projectedValue.getter();
  v12 = v24;
  v13 = v25;
  v14 = v26;
  type metadata accessor for CompositionModel(0);
  sub_10015B490(&qword_10025B210, type metadata accessor for CompositionModel);
  *(v5 + 3) = Environment.init<A>(_:)();
  v5[32] = v15 & 1;
  type metadata accessor for CommonUIManager();
  sub_10015B490(&qword_10025B1E0, type metadata accessor for CommonUIManager);
  *(v5 + 5) = Environment.init<A>(_:)();
  v5[48] = v16 & 1;
  v17 = &v5[v2[9]];
  *v17 = FocusState.init<>()() & 1;
  *(v17 + 1) = v18;
  v17[16] = v19 & 1;
  *v5 = xmmword_1001D31C0;
  v5[16] = 0;
  v20 = &v5[v2[8]];
  *v20 = v12;
  *(v20 + 1) = v13;
  v20[16] = v14;
  v21 = a1[1];
  v24 = *a1;
  v25 = v21;
  sub_10000341C(&qword_100265190, &qword_1001DD998);
  State.wrappedValue.getter();
  sub_10015B490(&unk_1002651C0, type metadata accessor for CompositionView);
  View.environment<A>(_:)();

  return sub_10015C3AC(v5);
}

uint64_t sub_1001590D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(result + 8) & 1) == 0 && *result == 2 && (*(a2 + 8) & 1) == 0 && *a2 == 1)
  {
    v3 = *(a3 + 56);
    v4 = *(a3 + 64);
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    result = State.wrappedValue.getter();
    if ((v5 & 1) == 0)
    {
      return State.wrappedValue.setter();
    }
  }

  return result;
}

uint64_t sub_10015918C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = *(a3 + 56);
    v5 = *(a3 + 64);
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    result = State.wrappedValue.getter();
    if ((v9 & 1) == 0)
    {
      v10 = *(a3 + 16);
      v11 = *(a3 + 24);
      sub_10000341C(&unk_100264F20, &qword_1001DD7B8);
      Binding.wrappedValue.getter();
      swift_getKeyPath();
      sub_10015B490(&qword_10025A910, type metadata accessor for PresentationModel);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v7 = *(v9 + 32);
      v8 = *(v9 + 40);

      if ((v8 & 1) == 0 && v7 == 2)
      {
        return State.wrappedValue.setter();
      }
    }
  }

  return result;
}

uint64_t sub_1001592EC(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 64);
  sub_10000341C(&unk_1002640F0, &qword_1001D3490);
  result = State.wrappedValue.getter();
  if ((v4 & 1) == 0)
  {
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_100159374(uint64_t a1)
{
  v2 = type metadata accessor for CompositionInputDashboardView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_10015BA94(a1, v5, type metadata accessor for CompositionInputDashboardView);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_10015BB00(v5, v13 + v12, type metadata accessor for CompositionInputDashboardView);
  sub_10015C9C8(0, 0, v9, &unk_1001DDA10, v13);
}

uint64_t sub_100159548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_1001595E0, v6, v5);
}

uint64_t sub_1001595E0()
{
  v1 = v0[5];
  v3 = *v1;
  v2 = v1[1];
  v0[2] = v3;
  v0[3] = v2;
  sub_10000341C(&qword_100265190, &qword_1001DD998);
  State.wrappedValue.getter();
  v0[9] = v0[4];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_100011F4C;

  return sub_10007C998();
}

uint64_t sub_1001596A4@<X0>(uint64_t *a1@<X8>)
{
  sub_100125454(8);
  result = Image.init(_internalSystemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_1001596D4(uint64_t a1)
{
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_10000341C(&unk_100264F20, &qword_1001DD7B8);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  sub_10015B490(&qword_10025A910, type metadata accessor for PresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v5 + 32);
  v3 = *(v5 + 40);

  if ((v3 & 1) == 0)
  {
    v7 = *(a1 + 56);
    v9 = *(a1 + 64);
    sub_10000341C(&unk_1002640F0, &qword_1001D3490);
    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1001597F8@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(a1 - 8);
  v8 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + *(v7 + 52));
  v16[0] = *(v3 + *(v7 + 48));
  v16[1] = v9;
  *a2 = v16[0];
  a2[1] = v9;
  v10 = a2 + *(sub_10000341C(&qword_100265098, &qword_1001DD900) + 40);
  *v10 = 0x4010000000000000;
  v11 = *(sub_10000341C(&qword_1002650A0, &qword_1001DD908) + 44);

  sub_100157750(v3, &v10[v11]);
  sub_10015BA94(v3, v8, type metadata accessor for CompositionInputDashboardView);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_10015BB00(v8, v13 + v12, type metadata accessor for CompositionInputDashboardView);
  result = sub_10000341C(&unk_1002650A8, &unk_1001DD910);
  v15 = (a2 + *(result + 36));
  *v15 = sub_10015BB68;
  v15[1] = v13;
  v15[2] = 0;
  v15[3] = 0;
  return result;
}

uint64_t sub_1001599A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v35 = a1;
  v39 = a2;
  v4 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v37 = sub_10000341C(&qword_100264F68, &qword_1001DD818);
  v34 = *(v37 - 8);
  v6 = *(v34 + 64);
  __chkstk_darwin(v37);
  v8 = v32 - v7;
  v38 = sub_10000341C(&qword_100264F70, &qword_1001DD820);
  v33 = *(v38 - 8);
  v9 = *(v33 + 64);
  __chkstk_darwin(v38);
  v11 = v32 - v10;
  v36 = sub_10000341C(&qword_100264F78, &qword_1001DD828);
  v12 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v14 = v32 - v13;
  v15 = v2 + *(type metadata accessor for InputDashboardNavigationModifier(0) + 20);
  v40 = *v15;
  v41 = *(v15 + 8);
  sub_10000341C(&unk_100264F20, &qword_1001DD7B8);
  Binding.wrappedValue.getter();
  v16 = v43;
  swift_getKeyPath();
  v40 = v16;
  sub_10015B490(&qword_10025A910, type metadata accessor for PresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = *(v16 + 32);
  v18 = *(v16 + 40);

  if ((v18 & 1) != 0 || v17 == 2)
  {
    v28 = sub_10000341C(&qword_100264F80, &unk_1001DD830);
    (*(*(v28 - 8) + 16))(v14, v35, v28);
    swift_storeEnumTagMultiPayload();
    sub_100007120(&qword_100264F88, &qword_100264F80, &unk_1001DD830);
    v29 = sub_100003E34(&qword_100264F90, &unk_1001E1BD0);
    v30 = sub_100007120(&qword_100264F98, &qword_100264F68, &qword_1001DD818);
    v31 = sub_100007120(&qword_100264FA0, &qword_100264F90, &unk_1001E1BD0);
    v40 = v37;
    *&v41 = v29;
    *(&v41 + 1) = v30;
    v42 = v31;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    v19 = State.projectedValue.getter();
    __chkstk_darwin(v19);
    v32[-2] = v35;
    v32[1] = sub_10000341C(&qword_100264F80, &unk_1001DD830);
    v35 = sub_100007120(&qword_100264F88, &qword_100264F80, &unk_1001DD830);
    v20 = NavigationStack.init<>(path:root:)();
    v21 = v33;
    __chkstk_darwin(v20);
    v32[-2] = v3;
    v22 = sub_10000341C(&qword_100264F90, &unk_1001E1BD0);
    v23 = sub_100007120(&qword_100264F98, &qword_100264F68, &qword_1001DD818);
    v24 = sub_100007120(&qword_100264FA0, &qword_100264F90, &unk_1001E1BD0);
    v25 = v37;
    View.toolbar<A>(content:)();
    (*(v34 + 8))(v8, v25);
    v26 = v38;
    (*(v21 + 16))(v14, v11, v38);
    swift_storeEnumTagMultiPayload();
    v40 = v25;
    *&v41 = v22;
    *(&v41 + 1) = v23;
    v42 = v24;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v21 + 8))(v11, v26);
  }
}

uint64_t sub_10015A014@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v20[0] = sub_10000341C(&qword_100264FA8, &unk_1001DD840);
  v3 = *(*(v20[0] - 8) + 64);
  __chkstk_darwin(v20[0]);
  v5 = v20 - v4;
  v6 = type metadata accessor for ToolbarItemPlacement();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10000341C(&unk_100264FB0, &unk_1001E1BE0);
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v20 - v14;
  static ToolbarItemPlacement.cancellationAction.getter();
  v20[8] = a1;
  sub_10000341C(&unk_10025DF60, &unk_1001D7CD0);
  sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.confirmationAction.getter();
  v20[4] = a1;
  ToolbarItem<>.init(placement:content:)();
  v16 = *(v20[0] + 48);
  v17 = v9[2];
  v17(v5, v15, v8);
  v17(&v5[v16], v13, v8);
  TupleToolbarContent.init(_:)();
  v18 = v9[1];
  v18(v13, v8);
  return (v18)(v15, v8);
}

uint64_t sub_10015A2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v10[0] = a3;
  v10[1] = a2;
  v4 = type metadata accessor for InputDashboardNavigationModifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  LocalizedStringKey.init(stringLiteral:)();
  sub_10015BA94(a1, v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InputDashboardNavigationModifier);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_10015BB00(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for InputDashboardNavigationModifier);
  return Button<>.init(_:action:)();
}

uint64_t sub_10015A448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v78 = a1;
  v84 = a5;
  v8 = sub_10000341C(&qword_100264EF8, &qword_1001DD790);
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = *(v75 + 64);
  __chkstk_darwin(v8);
  v74 = &v71 - v10;
  v83 = sub_10000341C(&qword_100264F00, &qword_1001DD798);
  v11 = *(*(v83 - 8) + 64);
  v12 = __chkstk_darwin(v83);
  v73 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v77 = &v71 - v14;
  v81 = sub_10000341C(&qword_100264F08, &qword_1001DD7A0);
  v15 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v82 = &v71 - v16;
  v79 = sub_10000341C(&qword_100264F10, &qword_1001DD7A8);
  v17 = *(*(v79 - 8) + 64);
  v18 = __chkstk_darwin(v79);
  v72 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v71 - v20;
  v80 = sub_10000341C(&qword_100264F18, &qword_1001DD7B0);
  v22 = *(*(v80 - 8) + 64);
  v23 = __chkstk_darwin(v80);
  v25 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v71 = &v71 - v26;
  *&v86 = a2;
  *(&v86 + 1) = a3;
  v27 = a3;
  *&v87 = a4;
  sub_10000341C(&unk_100264F20, &qword_1001DD7B8);
  Binding.wrappedValue.getter();
  v28 = v85;
  swift_getKeyPath();
  *&v86 = v28;
  sub_10015B490(&qword_10025A910, type metadata accessor for PresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v29 = *(v28 + 32);
  v30 = *(v28 + 40);

  if ((v30 & 1) != 0 || v29 == 2)
  {
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v56 = sub_10000341C(&unk_100264F30, &qword_1001DD810);
    (*(*(v56 - 8) + 16))(v21, v78, v56);
    v57 = &v21[*(v79 + 36)];
    v58 = v87;
    *v57 = v86;
    *(v57 + 1) = v58;
    *(v57 + 2) = v88;
    v59 = static Edge.Set.top.getter();
    v60 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v59)
    {
      v60 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    sub_10002A894(v21, v25, &qword_100264F10, &qword_1001DD7A8);
    v69 = &v25[*(v80 + 36)];
    *v69 = v60;
    *(v69 + 1) = v62;
    *(v69 + 2) = v64;
    *(v69 + 3) = v66;
    *(v69 + 4) = v68;
    v69[40] = 0;
    v70 = v71;
    sub_10002A894(v25, v71, &qword_100264F18, &qword_1001DD7B0);
    sub_1000081F8(v70, v82, &qword_100264F18, &qword_1001DD7B0);
    swift_storeEnumTagMultiPayload();
    sub_10015AFB0(&qword_100264F50, &qword_100264F18, &qword_1001DD7B0, sub_10015AE18);
    sub_10015B034();
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v70, &qword_100264F18, &qword_1001DD7B0);
  }

  else
  {
    *&v86 = a2;
    *(&v86 + 1) = v27;
    *&v87 = a4;
    Binding.wrappedValue.getter();
    v31 = v85;
    swift_getKeyPath();
    *&v86 = v31;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v32 = *(v31 + 72);

    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v33 = sub_10000341C(&unk_100264F30, &qword_1001DD810);
    v34 = v72;
    (*(*(v33 - 8) + 16))(v72, v78, v33);
    v35 = (v34 + *(v79 + 36));
    v36 = v87;
    *v35 = v86;
    v35[1] = v36;
    v35[2] = v88;
    sub_10000341C(&qword_10025E0A0, &qword_1001D3670);
    v37 = type metadata accessor for PresentationDetent();
    v38 = *(v37 - 8);
    v39 = *(v38 + 72);
    v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_1001CF9D0;
    static PresentationDetent.height(_:)();
    sub_10000771C(v41);
    swift_setDeallocating();
    (*(v38 + 8))(v41 + v40, v37);
    swift_deallocClassInstance();
    sub_10015AE18();
    v42 = v74;
    View.presentationDetents(_:)();

    sub_10000F500(v34, &qword_100264F10, &qword_1001DD7A8);
    LOBYTE(v37) = static Edge.Set.top.getter();
    v43 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v37)
    {
      v43 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v45 = v44;
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v52 = v73;
    (*(v75 + 32))(v73, v42, v76);
    v53 = v52 + *(v83 + 36);
    *v53 = v43;
    *(v53 + 8) = v45;
    *(v53 + 16) = v47;
    *(v53 + 24) = v49;
    *(v53 + 32) = v51;
    *(v53 + 40) = 0;
    v54 = v77;
    sub_10015AED0(v52, v77);
    sub_10015AF40(v54, v82);
    swift_storeEnumTagMultiPayload();
    sub_10015AFB0(&qword_100264F50, &qword_100264F18, &qword_1001DD7B0, sub_10015AE18);
    sub_10015B034();
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v54, &qword_100264F00, &qword_1001DD798);
  }
}

uint64_t sub_10015ACF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10015B490(&qword_10025A910, type metadata accessor for PresentationModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 40);
  *a2 = *(v3 + 32);
  *(a2 + 8) = v5;
  return result;
}

unint64_t sub_10015AE18()
{
  result = qword_100264F40;
  if (!qword_100264F40)
  {
    sub_100003E34(&qword_100264F10, &qword_1001DD7A8);
    sub_100007120(&qword_100264F48, &unk_100264F30, &qword_1001DD810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264F40);
  }

  return result;
}

uint64_t sub_10015AED0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100264F00, &qword_1001DD798);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015AF40(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000341C(&qword_100264F00, &qword_1001DD798);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015AFB0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003E34(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10015B034()
{
  result = qword_100264F58;
  if (!qword_100264F58)
  {
    sub_100003E34(&qword_100264F00, &qword_1001DD798);
    sub_100003E34(&qword_100264F10, &qword_1001DD7A8);
    sub_10015AE18();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100264F58);
  }

  return result;
}

uint64_t sub_10015B0FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = sub_10000341C(&qword_100264F80, &unk_1001DD830);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_10015B20C()
{
  v1 = type metadata accessor for InputDashboardNavigationModifier(0);
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_10015B278()
{
  v1 = (type metadata accessor for InputDashboardNavigationModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for NavigationPath();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + *(sub_10000341C(&qword_10025B260, &qword_1001CFC10) + 28));

  v7 = (v0 + v3 + v1[7]);
  v8 = *v7;

  v9 = v7[1];

  v10 = v7[2];

  v11 = *(v0 + v3 + v1[8] + 8);

  v12 = *(v0 + v3 + v1[9] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10015B3BC()
{
  v1 = type metadata accessor for InputDashboardNavigationModifier(0);
  v2 = v0 + *(v1 + 28) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_10015B490(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10015B4EC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_10015B5BC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10000341C(&qword_10025B260, &qword_1001CFC10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10015B66C()
{
  sub_10015B7CC(319, qword_100265028, type metadata accessor for CompositionModel, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_10015B7CC(319, qword_100264EB8, type metadata accessor for PresentationModel, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_10006A8F0();
      if (v2 <= 0x3F)
      {
        sub_10015B7CC(319, &qword_100264EB0, &type metadata accessor for NavigationPath, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_1000596F4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10015B7CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_10015B834()
{
  result = qword_100265078;
  if (!qword_100265078)
  {
    sub_100003E34(&qword_100265080, &qword_1001DD8A0);
    sub_10015AFB0(&qword_100264F50, &qword_100264F18, &qword_1001DD7B0, sub_10015AE18);
    sub_10015B034();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265078);
  }

  return result;
}

unint64_t sub_10015B8F0()
{
  result = qword_100265088;
  if (!qword_100265088)
  {
    sub_100003E34(&qword_100265090, &qword_1001DD8A8);
    sub_100007120(&qword_100264F88, &qword_100264F80, &unk_1001DD830);
    sub_100003E34(&qword_100264F68, &qword_1001DD818);
    sub_100003E34(&qword_100264F90, &unk_1001E1BD0);
    sub_100007120(&qword_100264F98, &qword_100264F68, &qword_1001DD818);
    sub_100007120(&qword_100264FA0, &qword_100264F90, &unk_1001E1BD0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265088);
  }

  return result;
}

uint64_t sub_10015BA94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015BB00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10015BB80()
{
  v1 = (type metadata accessor for CompositionInputDashboardView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 24);

  v9 = *(v0 + v3 + 32);

  v10 = *(v0 + v3 + 48);

  v11 = *(v0 + v3 + 64);

  v12 = v0 + v3 + v1[10];
  v13 = type metadata accessor for NavigationPath();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = *(v12 + *(sub_10000341C(&qword_10025B260, &qword_1001CFC10) + 28));

  v15 = *(v0 + v3 + v1[11] + 8);

  v16 = *(v0 + v3 + v1[12] + 8);

  v17 = *(v0 + v3 + v1[13] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10015BD0C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CompositionInputDashboardView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10015BD80()
{
  result = qword_1002650F0;
  if (!qword_1002650F0)
  {
    sub_100003E34(&qword_1002650E8, &unk_1001DD950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002650F0);
  }

  return result;
}

uint64_t sub_10015BDFC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CompositionInputDashboardView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1001587E0(v4, a1);
}

uint64_t sub_10015BE6C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for CompositionInputDashboardView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1001590D8(a1, a2, v6);
}

unint64_t sub_10015BEEC()
{
  result = qword_100265180;
  if (!qword_100265180)
  {
    sub_100003E34(&qword_100265178, &qword_1001DD990);
    sub_10015B490(&qword_100265188, type metadata accessor for UIUserInterfaceSizeClass);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265180);
  }

  return result;
}

uint64_t sub_10015BFA8(uint64_t a1, _BYTE *a2)
{
  v5 = *(type metadata accessor for CompositionInputDashboardView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10015918C(a1, a2, v6);
}

unint64_t sub_10015C048()
{
  result = qword_100265198;
  if (!qword_100265198)
  {
    sub_100003E34(&qword_10025E2C0, &unk_1001DC4C0);
    sub_10015C0CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265198);
  }

  return result;
}

unint64_t sub_10015C0CC()
{
  result = qword_1002651A0;
  if (!qword_1002651A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002651A0);
  }

  return result;
}

uint64_t sub_10015C138()
{
  v1 = (type metadata accessor for CompositionInputDashboardView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  v8 = *(v0 + v3 + 16);

  v9 = *(v0 + v3 + 24);

  v10 = *(v0 + v3 + 32);

  v11 = *(v0 + v3 + 48);

  v12 = *(v0 + v3 + 64);

  v13 = v0 + v3 + v1[10];
  v14 = type metadata accessor for NavigationPath();
  (*(*(v14 - 8) + 8))(v13, v14);
  v15 = *(v13 + *(sub_10000341C(&qword_10025B260, &qword_1001CFC10) + 28));

  v16 = *(v0 + v3 + v1[11] + 8);

  v17 = *(v0 + v3 + v1[12] + 8);

  v18 = *(v0 + v3 + v1[13] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10015C2B4(uint64_t a1)
{
  v4 = *(type metadata accessor for CompositionInputDashboardView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100028688;

  return sub_100159548(a1, v6, v7, v1 + v5);
}

uint64_t sub_10015C3AC(uint64_t a1)
{
  v2 = type metadata accessor for CompositionView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10015C40C()
{
  result = qword_1002651D8;
  if (!qword_1002651D8)
  {
    sub_100003E34(&unk_1002650A8, &unk_1001DD910);
    sub_100007120(&unk_1002651E0, &qword_100265098, &qword_1001DD900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002651D8);
  }

  return result;
}

uint64_t sub_10015C4F4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10000341C(&qword_1002615E8, &unk_1001D7840);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[8];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[10];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[11]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_10015C628(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10000341C(&qword_1002615E8, &unk_1001D7840);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
  }

  else
  {
    result = sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[11]) = (a2 - 1);
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[10];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

void sub_10015C764()
{
  sub_1001652C8(319, &qword_10025B498, sub_10015C960, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1001652C8(319, &qword_100261658, &type metadata accessor for DismissAction, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_1001652C8(319, &unk_10025DE20, type metadata accessor for CommonUIManager, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1001652C8(319, &unk_10025DE30, &type metadata accessor for NavigationPath, &type metadata accessor for Binding);
        if (v3 <= 0x3F)
        {
          sub_1001652C8(319, &unk_100265258, type metadata accessor for QuestionnaireModel, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_10006A8F0();
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

unint64_t sub_10015C960()
{
  result = qword_10025B4A0;
  if (!qword_10025B4A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10025B4A0);
  }

  return result;
}

uint64_t sub_10015C9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000081F8(a3, v27 - v11, &unk_10025B5D0, &qword_1001D05A0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000F500(v12, &unk_10025B5D0, &qword_1001D05A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10015CCC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000081F8(a3, v27 - v11, &unk_10025B5D0, &qword_1001D05A0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000F500(v12, &unk_10025B5D0, &qword_1001D05A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_10000341C(&qword_1002654B0, &qword_1001DDEE0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_10000341C(&qword_1002654B0, &qword_1001DDEE0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10015CFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000081F8(a3, v27 - v11, &unk_10025B5D0, &qword_1001D05A0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000F500(v12, &unk_10025B5D0, &qword_1001D05A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10015D2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000081F8(a3, v27 - v11, &unk_10025B5D0, &qword_1001D05A0);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_10000F500(v12, &unk_10025B5D0, &qword_1001D05A0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = dispatch thunk of Actor.unownedExecutor.getter();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = String.utf8CString.getter() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_10000341C(&qword_10025F848, &qword_1001D50C0);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000F500(a3, &unk_10025B5D0, &qword_1001D05A0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_10000341C(&qword_10025F848, &qword_1001D50C0);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10015D5E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001659B0(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_10015D6AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001659B0(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_10015D770@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001659B0(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 136);
  return result;
}

uint64_t sub_10015D840@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);
}

uint64_t sub_10015D914@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__hasEntries);
  return result;
}

uint64_t sub_10015D9EC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage);
  a2[1] = v4;
}

uint64_t sub_10015DABC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

id sub_10015DB58@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v5 + *a2);
  *a3 = v6;

  return v6;
}

uint64_t sub_10015DC48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning);
}

uint64_t sub_10015DD1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10015DDD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0x4024000000000000;
  *(a3 + 16) = 5;
  *(a3 + 24) = xmmword_1001CFA80;
  __asm { FMOV            V0.2D, #24.0 }

  *(a3 + 40) = _Q0;
  v11 = type metadata accessor for QuestionnaireView(0);
  v12 = v11[8];
  *(a3 + v12) = swift_getKeyPath();
  sub_10000341C(&qword_10025B640, &qword_1001CE1E0);
  swift_storeEnumTagMultiPayload();
  v13 = a3 + v11[9];
  type metadata accessor for CommonUIManager();
  sub_1001659B0(&qword_10025B1E0, type metadata accessor for CommonUIManager);
  *v13 = Environment.init<A>(_:)();
  *(v13 + 8) = v14 & 1;
  v15 = a3 + v11[12];
  State.init(wrappedValue:)();
  *v15 = v24;
  *(v15 + 8) = v25;
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000F34C(v16, qword_100276F20);
  v17 = static os_log_type_t.debug.getter();
  v18 = Logger.logObject.getter();
  if (os_log_type_enabled(v18, v17))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v18, v17, "Initialize QuestionnaireOnlyView", v19, 2u);
  }

  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(a1 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__smartReplyConfiguration);
  *(a3 + 8) = v20;
  v21 = (a3 + v11[11]);
  type metadata accessor for QuestionnaireModel();
  v22 = v20;
  State.init(wrappedValue:)();
  *v21 = a1;
  v21[1] = v25;
  return sub_10002A894(a2, a3 + v11[10], &qword_1002632E0, &qword_1001D11A0);
}

uint64_t sub_10015E0C0(uint64_t a1)
{
  v2 = type metadata accessor for AccessibilityTechnologies();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.accessibilityEnabledTechnologies.setter();
}

uint64_t sub_10015E188()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100277200 = result;
  *algn_100277208 = v1;
  byte_100277210 = v2 & 1;
  qword_100277218 = v3;
  return result;
}

uint64_t sub_10015E1D4()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100277220 = result;
  *algn_100277228 = v1;
  byte_100277230 = v2 & 1;
  qword_100277238 = v3;
  return result;
}

uint64_t sub_10015E220()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100277240 = result;
  *algn_100277248 = v1;
  byte_100277250 = v2 & 1;
  qword_100277258 = v3;
  return result;
}

uint64_t sub_10015E25C()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100277260 = result;
  *algn_100277268 = v1;
  byte_100277270 = v2 & 1;
  qword_100277278 = v3;
  return result;
}

uint64_t sub_10015E29C()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_100277280 = result;
  *algn_100277288 = v1;
  byte_100277290 = v2 & 1;
  qword_100277298 = v3;
  return result;
}

uint64_t sub_10015E2DC@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v34 = type metadata accessor for CustomRow(0);
  v1 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for PickerRow(0);
  v4 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_10000341C(&qword_1002655A8, &qword_1001DE060);
  v6 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v32 = &v26 - v7;
  v8 = sub_10000341C(&qword_1002655B0, &qword_1001DE068);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v26 - v10;
  v31 = sub_10000341C(&qword_1002655B8, &unk_1001DE070);
  v12 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31);
  v14 = &v26 - v13;
  v28 = type metadata accessor for MultichoiceRow(0);
  v15 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for QuestionRow(0) + 28);
  sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  Bindable.wrappedValue.getter();
  v19 = sub_10019C870();

  if (v19)
  {
    Bindable.wrappedValue.getter();
    type metadata accessor for QuestionnaireEntry();
    sub_1001659B0(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
    if (v19 == 1)
    {
      v20 = v27;
      Bindable<A>.init(wrappedValue:)();
      sub_100164294(v20, v11, type metadata accessor for PickerRow);
      swift_storeEnumTagMultiPayload();
      sub_1001659B0(&qword_1002655C8, type metadata accessor for MultichoiceRow);
      sub_1001659B0(&qword_1002655D0, type metadata accessor for PickerRow);
      _ConditionalContent<>.init(storage:)();
      sub_1000081F8(v14, v32, &qword_1002655B8, &unk_1001DE070);
      swift_storeEnumTagMultiPayload();
      sub_1001658C4();
      sub_1001659B0(&qword_1002655D8, type metadata accessor for CustomRow);
      _ConditionalContent<>.init(storage:)();
      sub_10000F500(v14, &qword_1002655B8, &unk_1001DE070);
      v21 = type metadata accessor for PickerRow;
      v22 = v20;
    }

    else
    {
      Bindable<A>.init(wrappedValue:)();
      v23 = &v3[*(v34 + 20)];
      v35 = 0;
      State.init(wrappedValue:)();
      v24 = v37;
      *v23 = v36;
      *(v23 + 1) = v24;
      sub_100164294(v3, v32, type metadata accessor for CustomRow);
      swift_storeEnumTagMultiPayload();
      sub_1001658C4();
      sub_1001659B0(&qword_1002655D8, type metadata accessor for CustomRow);
      _ConditionalContent<>.init(storage:)();
      v21 = type metadata accessor for CustomRow;
      v22 = v3;
    }
  }

  else
  {
    Bindable.wrappedValue.getter();
    sub_1001AE5CC(v36, v17);
    sub_100164294(v17, v11, type metadata accessor for MultichoiceRow);
    swift_storeEnumTagMultiPayload();
    sub_1001659B0(&qword_1002655C8, type metadata accessor for MultichoiceRow);
    sub_1001659B0(&qword_1002655D0, type metadata accessor for PickerRow);
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v14, v32, &qword_1002655B8, &unk_1001DE070);
    swift_storeEnumTagMultiPayload();
    sub_1001658C4();
    sub_1001659B0(&qword_1002655D8, type metadata accessor for CustomRow);
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v14, &qword_1002655B8, &unk_1001DE070);
    v21 = type metadata accessor for MultichoiceRow;
    v22 = v17;
  }

  return sub_1001659F8(v22, v21);
}

uint64_t sub_10015EA08@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v2 = sub_10000341C(&qword_1002655A0, &qword_1001DE058);
  return sub_10015E2DC(a1 + *(v2 + 44));
}

uint64_t sub_10015EA5C@<X0>(uint64_t a1@<X2>, char *a2@<X8>)
{
  result = sub_10015EC20();
  if (result)
  {
    goto LABEL_5;
  }

  v5 = (a1 + *(type metadata accessor for QuestionnaireView(0) + 44));
  v6 = *v5;
  v7 = v5[1];
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1001659B0(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v11 + 112);

  if (v8)
  {
    goto LABEL_5;
  }

  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v11 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);

  if (!v9)
  {
LABEL_5:
    v10 = 0;
  }

  else
  {

    v10 = 1;
  }

  *a2 = v10;
  return result;
}

BOOL sub_10015EC20()
{
  v1 = (v0 + *(type metadata accessor for QuestionnaireView(0) + 44));
  v2 = *v1;
  v3 = v1[1];
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v7 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__generationPendingContentWarning);

  if (!v4)
  {
    return 0;
  }

  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1001659B0(&qword_10025C140, type metadata accessor for ToolModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v7 + 136);

  return v5 == 1;
}

uint64_t sub_10015EDC8()
{
  v1 = v0;
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F34C(v2, qword_100276F20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Questionnaire done", v5, 2u);
  }

  v6 = (v1 + *(type metadata accessor for QuestionnaireView(0) + 44));
  v8 = *v6;
  v9 = v6[1];
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  sub_100051DE8(1, 0, 0, 0);
}

uint64_t sub_10015EF04()
{
  v1 = v0;
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F34C(v2, qword_100276F20);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Questionnaire cancelled, requesting revert and dismissal...", v5, 2u);
  }

  v6 = (v1 + *(type metadata accessor for QuestionnaireView(0) + 44));
  v7 = *v6;
  v8 = v6[1];
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  sub_100051C4C();

  State.wrappedValue.getter();
  sub_100051DE8(0, 0, 0, 0);
}

void sub_10015F068()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 currentTraitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 1)
  {
    v5 = [v2 currentTraitCollection];
    v6 = [v5 userInterfaceIdiom];

    if (v6 != 6)
    {
      goto LABEL_37;
    }
  }

  v7 = (v1 + *(type metadata accessor for QuestionnaireView(0) + 44));
  v39 = *v7;
  v40 = v7[1];
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v38 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);

  if (!v8)
  {
    goto LABEL_37;
  }

  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_36:

LABEL_37:
    if (qword_10025A6E8 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_10000F34C(v33, qword_100276F20);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Skipping height for entry pickers due to no entries or not a pad idiom", v36, 2u);
    }

    return;
  }

  while (1)
  {
    sub_100163C40(0, v9 & ~(v9 >> 63), 0);
    if (v9 < 0)
    {
      break;
    }

    v37 = v1;
    v10 = 0;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v12 = *(v8 + 8 * v10 + 32);
      }

      v13 = [*(v12 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireEntry_entry) answerOptions];
      if (!v13)
      {
        goto LABEL_43;
      }

      v14 = v13;
      v15 = [v13 count];

      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      v1 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        sub_100163C40((v16 > 1), v17 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v1;
      _swiftEmptyArrayStorage[v17 + 4] = v15;
      ++v10;
      if (v11 == v9)
      {

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_36;
    }

    v9 = _CocoaArrayWrapper.endIndex.getter();
    if (!v9)
    {
      v37 = v1;

LABEL_18:
      v18 = *(v37 + 16);
      v19 = _swiftEmptyArrayStorage[2];
      if (v19)
      {
        v20 = _swiftEmptyArrayStorage[4];
        v21 = v19 - 1;
        if (v19 != 1)
        {
          if (v19 >= 5)
          {
            v22 = v21 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v23 = vdupq_n_s64(v20);
            v24 = &_swiftEmptyArrayStorage[7];
            v25 = v21 & 0xFFFFFFFFFFFFFFFCLL;
            v26 = v23;
            do
            {
              v23 = vbslq_s8(vcgtq_s64(v23, v24[-1]), v23, v24[-1]);
              v26 = vbslq_s8(vcgtq_s64(v26, *v24), v26, *v24);
              v24 += 2;
              v25 -= 4;
            }

            while (v25);
            v27 = vbslq_s8(vcgtq_s64(v23, v26), v23, v26);
            v28 = vextq_s8(v27, v27, 8uLL).u64[0];
            v20 = vbsl_s8(vcgtd_s64(v27.i64[0], v28), *v27.i8, v28);
            if (v21 != (v21 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_26;
            }
          }

          else
          {
            v22 = 1;
LABEL_26:
            v29 = v19 - v22;
            v30 = &_swiftEmptyArrayStorage[v22 + 4];
            do
            {
              v32 = *v30++;
              v31 = v32;
              if (v20 <= v32)
              {
                v20 = v31;
              }

              --v29;
            }

            while (v29);
          }
        }
      }

      return;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_10015F504()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = *(v0 + 8);
  if (v5 && (v6 = [v5 entryPoint]) != 0)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v8;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    return String.init(localized:table:bundle:locale:comment:)();
  }
}

uint64_t sub_10015F644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = sub_10000341C(&qword_100265578, &qword_1001DE018);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = sub_10000341C(&qword_100265580, &qword_1001DE020);
  v10 = (a2 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = sub_10002AAC0;
  v10[2] = v7;
  return result;
}

uint64_t sub_10015F724@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v56 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v3 = *(v56 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v56);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for QuestionnaireView(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v7);
  v59 = v10;
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000341C(&qword_1002652A8, &qword_1001DDAB8);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = (&v55 - v14);
  *v15 = static Alignment.center.getter();
  v15[1] = v16;
  v17 = sub_10000341C(&qword_1002652B0, &unk_1001DDAC0);
  sub_10015FD34(v2, v15 + *(v17 + 44));
  v57 = type metadata accessor for QuestionnaireView;
  sub_100164294(v2, v11, type metadata accessor for QuestionnaireView);
  v18 = *(v9 + 80);
  v19 = swift_allocObject();
  v58 = type metadata accessor for QuestionnaireView;
  sub_10016397C(v11, v19 + ((v18 + 16) & ~v18), type metadata accessor for QuestionnaireView);
  v20 = (v15 + *(v12 + 36));
  *v20 = sub_100162E3C;
  v20[1] = v19;
  v20[2] = 0;
  v20[3] = 0;
  v21 = v56;
  (*(v3 + 104))(v6, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v56);
  sub_100162E54();
  v22 = v60;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v3 + 8))(v6, v21);
  sub_10000F500(v15, &qword_1002652A8, &qword_1001DDAB8);
  v23 = (v2 + *(v8 + 52));
  v25 = *v23;
  v24 = v23[1];
  *&v63 = v25;
  *(&v63 + 1) = v24;
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  swift_unknownObjectWeakLoadStrong();

  v26 = *(v8 + 48);
  v27 = v22 + *(sub_10000341C(&qword_1002652D0, &unk_1001DDAE0) + 36);
  v28 = type metadata accessor for PreferredContentSizeModifier(0);
  v29 = v28[7];
  sub_10000341C(&qword_1002632E0, &qword_1001D11A0);
  Binding.projectedValue.getter();
  sub_100164294(v2, v11, v57);
  type metadata accessor for MainActor();
  v30 = static MainActor.shared.getter();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = &protocol witness table for MainActor;
  sub_10016397C(v11, v31 + ((v18 + 32) & ~v18), v58);
  v32 = static MainActor.shared.getter();
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = &protocol witness table for MainActor;
  Binding.init(get:set:)();
  v34 = v63;
  LOBYTE(v11) = v64;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  *(v27 + 8) = 1;
  v35 = v27 + v28[8];
  *v35 = v34;
  *(v35 + 16) = v11;
  v36 = (v27 + v28[9]);
  *v36 = 0xD000000000000010;
  v36[1] = 0x80000001001E7F30;
  v37 = v27 + v28[10];
  type metadata accessor for CGSize(0);
  v61 = 0;
  v62 = 0;
  State.init(wrappedValue:)();
  v38 = v64;
  *v37 = v63;
  *(v37 + 16) = v38;
  v39 = v27 + v28[11];
  LOBYTE(v61) = 0;
  State.init(wrappedValue:)();
  v40 = *(&v63 + 1);
  *v39 = v63;
  *(v39 + 8) = v40;
  v41 = v27 + v28[12];
  v61 = 0;
  LOBYTE(v62) = 1;
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  State.init(wrappedValue:)();
  v42 = BYTE8(v63);
  v43 = v64;
  *v41 = v63;
  *(v41 + 8) = v42;
  *(v41 + 16) = v43;
  v44 = v27 + v28[13];
  LOBYTE(v61) = 0;
  State.init(wrappedValue:)();
  v45 = *(&v63 + 1);
  *v44 = v63;
  *(v44 + 8) = v45;
  v46 = v27 + v28[14];
  type metadata accessor for PresentationModel();
  sub_1001659B0(&qword_10025A910, type metadata accessor for PresentationModel);
  *v46 = Environment.init<A>(_:)();
  *(v46 + 8) = v47 & 1;
  v48 = Environment.init<A>(_:)();
  LOBYTE(v29) = v49;
  v50 = static Alignment.center.getter();
  v52 = v51;
  result = sub_10000341C(&qword_1002652D8, &qword_1001DDAF0);
  v54 = v60 + *(result + 36);
  *v54 = v48;
  *(v54 + 8) = v29 & 1;
  *(v54 + 9) = 1;
  *(v54 + 16) = v50;
  *(v54 + 24) = v52;
  return result;
}

uint64_t sub_10015FD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v47 = sub_10000341C(&qword_1002652E0, &qword_1001DDBC8);
  v46 = *(v47 - 8);
  v3 = *(v46 + 64);
  __chkstk_darwin(v47);
  v5 = v43 - v4;
  v48 = sub_10000341C(&qword_1002652E8, &qword_1001DDBD0);
  v6 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v8 = (v43 - v7);
  v9 = sub_10000341C(&qword_1002652F0, &qword_1001DDBD8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v43 - v11;
  v13 = sub_10000341C(&qword_1002652F8, &qword_1001DDBE0);
  v50 = *(v13 - 8);
  v14 = *(v50 + 64);
  __chkstk_darwin(v13);
  v49 = v43 - v15;
  v16 = sub_10000341C(&qword_100265300, &qword_1001DDBE8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = v43 - v18;
  v20 = sub_10000341C(&qword_100265308, &qword_1001DDBF0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = v43 - v22;
  v52 = a1;
  if (sub_10015EC20())
  {
    *v23 = static HorizontalAlignment.center.getter();
    *(v23 + 1) = 0;
    v23[16] = 1;
    v24 = sub_10000341C(&qword_100265388, &qword_1001DDC30);
    sub_1001604D8(v52, &v23[*(v24 + 44)]);
    sub_1000081F8(v23, v19, &qword_100265308, &qword_1001DDBF0);
    swift_storeEnumTagMultiPayload();
    sub_10016365C();
    v25 = sub_100003E34(&qword_100265358, &qword_1001DDC20);
    v26 = sub_100163560();
    v27 = sub_100007120(&qword_100265368, &qword_100265358, &qword_1001DDC20);
    *&v57 = v9;
    *(&v57 + 1) = v25;
    *&v58 = v26;
    *(&v58 + 1) = v27;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return sub_10000F500(v23, &qword_100265308, &qword_1001DDBF0);
  }

  else
  {
    v43[0] = v16;
    v43[1] = v20;
    v44 = v19;
    v45 = v13;
    v29 = static Alignment.center.getter();
    *v8 = v29;
    v8[1] = v30;
    __chkstk_darwin(v29);
    static Axis.Set.vertical.getter();
    sub_10000341C(&qword_100265310, &qword_1001DDBF8);
    sub_100163414();
    ScrollView.init(_:showsIndicators:content:)();
    static Alignment.center.getter();
    v31 = v8 + *(sub_10000341C(&qword_100265340, &qword_1001DDC10) + 44);
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v46 + 32))(v31, v5, v47);
    v32 = &v31[*(sub_10000341C(&qword_100265348, &qword_1001DDC18) + 36)];
    v33 = v62;
    *(v32 + 4) = v61;
    *(v32 + 5) = v33;
    *(v32 + 6) = v63;
    v34 = v58;
    *v32 = v57;
    *(v32 + 1) = v34;
    v35 = v60;
    *(v32 + 2) = v59;
    *(v32 + 3) = v35;
    if (qword_10025A838 != -1)
    {
      swift_once();
    }

    sub_100007120(&qword_100265350, &qword_1002652E8, &qword_1001DDBD0);
    View.navigationTitle(_:)();
    v36 = sub_10000F500(v8, &qword_1002652E8, &qword_1001DDBD0);
    __chkstk_darwin(v36);
    v37 = sub_10000341C(&qword_100265358, &qword_1001DDC20);
    v38 = sub_100163560();
    v39 = sub_100007120(&qword_100265368, &qword_100265358, &qword_1001DDC20);
    v40 = v49;
    View.toolbar<A>(content:)();
    sub_10000F500(v12, &qword_1002652F0, &qword_1001DDBD8);
    v41 = v50;
    v42 = v45;
    (*(v50 + 16))(v44, v40, v45);
    swift_storeEnumTagMultiPayload();
    sub_10016365C();
    v53 = v9;
    v54 = v37;
    v55 = v38;
    v56 = v39;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v41 + 8))(v40, v42);
  }
}

uint64_t sub_1001604D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = type metadata accessor for QuestionnaireView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v40 = type metadata accessor for QuestionnaireSafetyUI(0);
  v9 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_10000341C(&qword_100265390, &qword_1001DDC38);
  v12 = *(*(v42 - 8) + 64);
  v13 = __chkstk_darwin(v42);
  v44 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v39 - v16;
  __chkstk_darwin(v15);
  v43 = &v39 - v18;
  if (qword_10025A8C8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for LocalizedStringResource();
  v20 = sub_10000F34C(v19, qword_1002773D8);
  (*(*(v19 - 8) + 16))(v11, v20, v19);
  sub_100164294(a1, v8, type metadata accessor for QuestionnaireView);
  v21 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v22 = swift_allocObject();
  sub_10016397C(v8, v22 + v21, type metadata accessor for QuestionnaireView);
  v23 = a1;
  v24 = v41;
  sub_100164294(v23, v41, type metadata accessor for QuestionnaireView);
  v25 = swift_allocObject();
  sub_10016397C(v24, v25 + v21, type metadata accessor for QuestionnaireView);
  v26 = v40;
  v27 = &v11[*(v40 + 20)];
  *v27 = sub_1001638D8;
  v27[1] = v22;
  v28 = &v11[*(v26 + 24)];
  *v28 = sub_100163964;
  v28[1] = v25;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10016397C(v11, v17, type metadata accessor for QuestionnaireSafetyUI);
  v29 = &v17[*(v42 + 36)];
  v30 = v51;
  *(v29 + 4) = v50;
  *(v29 + 5) = v30;
  *(v29 + 6) = v52;
  v31 = v47;
  *v29 = v46;
  *(v29 + 1) = v31;
  v32 = v49;
  *(v29 + 2) = v48;
  *(v29 + 3) = v32;
  v33 = v17;
  v34 = v43;
  sub_10002A894(v33, v43, &qword_100265390, &qword_1001DDC38);
  v35 = v44;
  sub_1000081F8(v34, v44, &qword_100265390, &qword_1001DDC38);
  v36 = v45;
  sub_1000081F8(v35, v45, &qword_100265390, &qword_1001DDC38);
  v37 = v36 + *(sub_10000341C(&qword_100265398, &qword_1001DDC40) + 48);
  *v37 = 0;
  *(v37 + 8) = 1;
  sub_10000F500(v34, &qword_100265390, &qword_1001DDC38);
  return sub_10000F500(v35, &qword_100265390, &qword_1001DDC38);
}

uint64_t sub_100160944(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for QuestionnaireView(0) + 44));
  v3 = *v1;
  v4 = v1[1];
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  sub_100037A50(0);
}

uint64_t sub_1001609B8(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for QuestionnaireView(0) + 44));
  v3 = *v1;
  v4 = v1[1];
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  sub_100057790();
}

__n128 sub_100160A28@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100265328, &qword_1001DDC00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  *v7 = static HorizontalAlignment.center.getter();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_10000341C(&qword_1002653E0, &qword_1001DDC78);
  sub_100160BE4(a1, &v7[*(v8 + 44)]);
  sub_10015F068();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002A894(v7, a2, &qword_100265328, &qword_1001DDC00);
  v9 = a2 + *(sub_10000341C(&qword_100265310, &qword_1001DDBF8) + 36);
  v10 = v19;
  *(v9 + 64) = v18;
  *(v9 + 80) = v10;
  *(v9 + 96) = v20;
  v11 = v15;
  *v9 = v14;
  *(v9 + 16) = v11;
  result = v17;
  *(v9 + 32) = v16;
  *(v9 + 48) = result;
  return result;
}

void sub_100160BE4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v122 = sub_10000341C(&qword_1002653F0, &qword_1001DDC88);
  v3 = *(*(v122 - 8) + 64);
  __chkstk_darwin(v122);
  v117 = &v97 - v4;
  v5 = sub_10000341C(&qword_1002653F8, &qword_1001DDC90);
  v113 = *(v5 - 8);
  v114 = v5;
  v6 = *(v113 + 64);
  __chkstk_darwin(v5);
  v110 = (&v97 - v7);
  v106 = type metadata accessor for FeedbackView();
  v8 = *(*(v106 - 8) + 64);
  v9 = __chkstk_darwin(v106);
  v109 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v107 = &v97 - v12;
  __chkstk_darwin(v11);
  v108 = &v97 - v13;
  v14 = sub_10000341C(&qword_100265400, &qword_1001DDC98);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v112 = &v97 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v119 = &v97 - v18;
  v19 = sub_10000341C(&qword_100265408, &qword_1001DDCA0);
  v115 = *(v19 - 8);
  v116 = v19;
  v20 = *(v115 + 64);
  v21 = __chkstk_darwin(v19);
  v111 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v123 = &v97 - v23;
  v125 = sub_10000341C(&qword_100265410, &qword_1001DDCA8);
  v24 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v126 = &v97 - v25;
  v120 = sub_10000341C(&qword_100265418, &qword_1001DDCB0);
  v26 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v28 = &v97 - v27;
  v124 = sub_10000341C(&qword_100265420, &qword_1001DDCB8);
  v29 = *(*(v124 - 8) + 64);
  __chkstk_darwin(v124);
  v121 = &v97 - v30;
  v31 = *(type metadata accessor for QuestionnaireView(0) + 44);
  v118 = a1;
  v32 = (a1 + v31);
  v33 = v32[1];
  v34 = *v32;
  *&v153 = *v32;
  *(&v153 + 1) = v33;
  v35 = sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  v36 = v142;
  swift_getKeyPath();
  *&v153 = v36;
  v37 = sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(a1) = *(v36 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__hasEntries);

  if ((a1 & 1) == 0)
  {
    v51 = static HorizontalAlignment.center.getter();
    v141 = 1;
    sub_100161C94(v118, &v129);
    v150 = v137;
    v151 = v138;
    v146 = v133;
    v147 = v134;
    v148 = v135;
    v149 = v136;
    v142 = v129;
    v143 = v130;
    v144 = v131;
    v145 = v132;
    v161 = v137;
    v162 = v138;
    v157 = v133;
    v158 = v134;
    v159 = v135;
    v160 = v136;
    v153 = v129;
    v154 = v130;
    v152 = v139;
    v163 = v139;
    v155 = v131;
    v156 = v132;
    sub_1000081F8(&v142, &v128, &qword_100265428, &qword_1001DDCE8);
    sub_10000F500(&v153, &qword_100265428, &qword_1001DDCE8);
    *(&v140[7] + 7) = v149;
    *(&v140[8] + 7) = v150;
    *(&v140[9] + 7) = v151;
    *(&v140[10] + 7) = v152;
    *(&v140[3] + 7) = v145;
    *(&v140[4] + 7) = v146;
    *(&v140[5] + 7) = v147;
    *(&v140[6] + 7) = v148;
    *(v140 + 7) = v142;
    *(&v140[1] + 7) = v143;
    *(&v140[2] + 7) = v144;
    v52 = v140[6];
    *(v28 + 129) = v140[7];
    v53 = v140[9];
    *(v28 + 145) = v140[8];
    *(v28 + 161) = v53;
    *(v28 + 11) = *(&v140[9] + 15);
    v54 = v140[2];
    *(v28 + 65) = v140[3];
    v55 = v140[5];
    *(v28 + 81) = v140[4];
    *(v28 + 97) = v55;
    *(v28 + 113) = v52;
    v56 = v140[1];
    *(v28 + 17) = v140[0];
    *(v28 + 33) = v56;
    v57 = v141;
    *v28 = v51;
    *(v28 + 1) = 0;
    v28[16] = v57;
    *(v28 + 49) = v54;
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_100265430, &unk_1001DDCF0);
    sub_100007120(&qword_100265438, &qword_100265430, &unk_1001DDCF0);
    sub_100007120(&qword_100265440, &qword_1002653F0, &qword_1001DDC88);
    v58 = v121;
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v58, v126, &qword_100265420, &qword_1001DDCB8);
    swift_storeEnumTagMultiPayload();
    sub_100163FE8();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v58, &qword_100265420, &qword_1001DDCB8);
    return;
  }

  v118 = v28;
  v38 = v34;
  *&v153 = v34;
  *(&v153 + 1) = v33;
  State.wrappedValue.getter();
  v39 = v142;
  swift_getKeyPath();
  *&v153 = v39;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v40 = *(v39 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);

  if (!v40)
  {
    v37 = v126;
    if (qword_10025A840 == -1)
    {
LABEL_11:

      *v37 = Text.init(_:tableName:bundle:comment:)();
      *(v37 + 8) = v59;
      *(v37 + 16) = v60 & 1;
      *(v37 + 24) = v61;
      swift_storeEnumTagMultiPayload();
      sub_100163FE8();
      _ConditionalContent<>.init(storage:)();
      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_11;
  }

  v102 = v38;
  v103 = v37;
  v104 = v35;
  v105 = v33;
  if (!(v40 >> 62))
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

  v41 = _CocoaArrayWrapper.endIndex.getter();
  if (v41 < 0)
  {
    __break(1u);
    goto LABEL_18;
  }

LABEL_5:
  *&v153 = 0;
  *(&v153 + 1) = v41;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v40;

  sub_10000341C(&qword_10025E290, &qword_1001D3B28);
  sub_10000341C(&qword_100265450, &qword_1001DDD20);
  sub_10006FFA8();
  sub_10016410C();
  ForEach<>.init(_:id:content:)();
  v42 = type metadata accessor for FeedbackFeatureFlags();
  *(&v154 + 1) = v42;
  *&v155 = sub_1001659B0(&qword_10025E060, &type metadata accessor for FeedbackFeatureFlags);
  v43 = sub_10002DB6C(&v153);
  (*(*(v42 - 8) + 104))(v43, enum case for FeedbackFeatureFlags.CentralizedFeedback(_:), v42);
  LOBYTE(v42) = isFeatureEnabled(_:)();
  sub_10000F4B4(&v153);
  if ((v42 & 1) == 0)
  {

    v62 = 1;
    v63 = v119;
LABEL_15:
    (*(v113 + 56))(v63, v62, 1, v114);
    v90 = v115;
    v89 = v116;
    v91 = *(v115 + 16);
    v92 = v111;
    v91(v111, v123, v116);
    v93 = v112;
    sub_1000081F8(v63, v112, &qword_100265400, &qword_1001DDC98);
    v94 = v117;
    v91(v117, v92, v89);
    v95 = sub_10000341C(&qword_100265470, &qword_1001DDD30);
    sub_1000081F8(v93, v94 + *(v95 + 48), &qword_100265400, &qword_1001DDC98);
    sub_10000F500(v93, &qword_100265400, &qword_1001DDC98);
    v115 = *(v90 + 8);
    (v115)(v92, v89);
    sub_1000081F8(v94, v118, &qword_1002653F0, &qword_1001DDC88);
    swift_storeEnumTagMultiPayload();
    sub_10000341C(&qword_100265430, &unk_1001DDCF0);
    sub_100007120(&qword_100265438, &qword_100265430, &unk_1001DDCF0);
    sub_100007120(&qword_100265440, &qword_1002653F0, &qword_1001DDC88);
    v96 = v121;
    _ConditionalContent<>.init(storage:)();
    sub_1000081F8(v96, v126, &qword_100265420, &qword_1001DDCB8);
    swift_storeEnumTagMultiPayload();
    sub_100163FE8();
    _ConditionalContent<>.init(storage:)();
    sub_10000F500(v96, &qword_100265420, &qword_1001DDCB8);
    sub_10000F500(v94, &qword_1002653F0, &qword_1001DDC88);
    sub_10000F500(v119, &qword_100265400, &qword_1001DDC98);
    (v115)(v123, v89);
    return;
  }

  v44 = v102;
  *&v153 = v102;
  *(&v153 + 1) = v105;
  State.wrappedValue.getter();
  v45 = v142;
  swift_getKeyPath();
  *&v153 = v45;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v46 = *(v45 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__inputContextHistory);

  v47 = [v46 tiInputContextHistory];

  if (v47)
  {

    v48 = [v47 threadIdentifier];

    if (v48)
    {
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = v50;
      v101 = v49;
    }

    else
    {
      v100 = 0;
      v101 = 0;
    }

    v64 = v105;
    *&v153 = v44;
    *(&v153 + 1) = v105;
    State.wrappedValue.getter();
    v65 = v142;
    swift_getKeyPath();
    *&v153 = v65;
    sub_1001659B0(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v98 = *(v65 + 40);
    *&v66 = *(v65 + 32);
    v99 = v66;

    *&v153 = v44;
    *(&v153 + 1) = v64;
    State.wrappedValue.getter();
    v67 = v142;
    swift_getKeyPath();
    *&v153 = v67;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v68 = *(v67 + 56);
    *&v69 = *(v67 + 48);
    v97 = v69;

    *&v153 = v44;
    *(&v153 + 1) = v64;
    State.wrappedValue.getter();
    v70 = v142;
    swift_getKeyPath();
    *&v153 = v70;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v72 = *(v70 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage);
    v71 = *(v70 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__detectedModelLanguage + 8);

    v73 = v106;
    v74 = v107;
    *(v107 + 25) = 0;
    v75 = *(v73 + 92);
    *&v74[v75] = swift_getKeyPath();
    sub_10000341C(&qword_10025BB98, &qword_1001D1AE0);
    swift_storeEnumTagMultiPayload();
    *(v74 + 16) = 0;
    *(v74 + 17) = 0;
    *(v74 + 18) = 0;
    v74[152] = -1;
    *&v76 = v99;
    *(&v76 + 1) = v98;
    *&v77 = v97;
    *(&v77 + 1) = v68;
    *(v74 + 24) = v77;
    *(v74 + 8) = v76;
    *v74 = 0;
    *(v74 + 40) = 0u;
    *(v74 + 56) = 0u;
    *(v74 + 72) = 0u;
    *(v74 + 88) = 0u;
    *(v74 + 153) = 256;
    *&v142 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v78 = *(&v153 + 1);
    *(v74 + 26) = v153;
    *(v74 + 27) = v78;
    v79 = type metadata accessor for SmartReplyAnalytics();
    v80 = *(v79 + 48);
    v81 = *(v79 + 52);
    swift_allocObject();
    v82 = sub_10014F2CC(v101, v100);
    *(v74 + 23) = v79;
    *(v74 + 24) = &off_100250760;
    *(v74 + 20) = v82;
    *(v74 + 13) = _swiftEmptyArrayStorage;
    *(v74 + 14) = _swiftEmptyArrayStorage;
    *(v74 + 15) = _swiftEmptyArrayStorage;
    *(v74 + 28) = v72;
    *(v74 + 29) = v71;
    v83 = v74;
    v84 = v108;
    sub_10016397C(v83, v108, type metadata accessor for FeedbackView);
    v85 = v109;
    sub_100164294(v84, v109, type metadata accessor for FeedbackView);
    v86 = v110;
    *v110 = 0;
    *(v86 + 8) = 1;
    v87 = sub_10000341C(&qword_100265478, &qword_1001DDE10);
    sub_100164294(v85, v86 + *(v87 + 48), type metadata accessor for FeedbackView);
    sub_1001659F8(v84, type metadata accessor for FeedbackView);
    sub_1001659F8(v85, type metadata accessor for FeedbackView);
    v88 = v86;
    v63 = v119;
    sub_10002A894(v88, v119, &qword_1002653F8, &qword_1001DDC90);
    v62 = 0;
    goto LABEL_15;
  }

  __break(1u);
}

double sub_100161C94@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v4 = sub_10015F504();
  v6 = v5;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v12;
  *(a2 + 56) = v13;
  *(a2 + 64) = xmmword_1001DDA30;
  *(a2 + 80) = 0x4024000000000000;
  *(a2 + 88) = v4;
  *(a2 + 96) = v6;
  *(a2 + 104) = 0;
  *(a2 + 112) = 1;
  *(a2 + 120) = v14;
  *(a2 + 128) = v15;
  *(a2 + 136) = v16;
  *(a2 + 144) = v17;
  result = *&v18;
  *(a2 + 152) = v18;
  return result;
}

uint64_t sub_100161DD4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  result = static HorizontalAlignment.center.getter();
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  if ((a2 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(a2 + 8 * v5 + 32);

LABEL_5:
    v8 = a3 + *(sub_10000341C(&qword_100265480, &qword_1001DDE18) + 44);
    *v8 = xmmword_1001DDA40;
    *(v8 + 16) = 0x403E000000000000;
    v9 = *(type metadata accessor for QuestionRow(0) + 28);
    type metadata accessor for QuestionnaireEntry();
    sub_1001659B0(&qword_10025D5A8, type metadata accessor for QuestionnaireEntry);
    Bindable<A>.init(wrappedValue:)();
    v10 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    result = sub_10000341C(&qword_100265450, &qword_1001DDD20);
    v19 = a3 + *(result + 36);
    *v19 = v10;
    *(v19 + 8) = v12;
    *(v19 + 16) = v14;
    *(v19 + 24) = v16;
    *(v19 + 32) = v18;
    *(v19 + 40) = 0;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_100161F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v20[0] = sub_10000341C(&qword_1002653A0, &qword_1001DDC48);
  v3 = *(*(v20[0] - 8) + 64);
  __chkstk_darwin(v20[0]);
  v5 = v20 - v4;
  v6 = sub_10000341C(&qword_1002653A8, &qword_1001DDC50);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v20 - v9;
  v11 = type metadata accessor for ToolbarItemPlacement();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_10000341C(&qword_1002653B0, &qword_1001DDC58);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v20 - v16;
  static ToolbarItemPlacement.confirmationAction.getter();
  v20[8] = a1;
  sub_10000341C(&qword_1002653B8, &qword_1001DDC60);
  sub_1001639EC();
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.cancellationAction.getter();
  v20[4] = a1;
  sub_10000341C(&qword_1002653D0, &unk_1001DDC68);
  sub_100163A70();
  ToolbarItem<>.init(placement:content:)();
  v18 = *(v20[0] + 48);
  (*(v14 + 16))(v5, v17, v13);
  (*(v7 + 16))(&v5[v18], v10, v6);
  TupleToolbarContent.init(_:)();
  (*(v7 + 8))(v10, v6);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_100162264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for QuestionnaireView(0);
  v4 = v3 - 8;
  v26 = *(v3 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v3);
  v6 = sub_10000341C(&qword_1002653D0, &unk_1001DDC68);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25 - v9;
  v11 = (a1 + *(v4 + 52));
  v12 = *v11;
  v13 = v11[1];
  v31 = *v11;
  v32 = v13;
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  v14 = v30;
  swift_getKeyPath();
  v31 = v14;
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v14 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);

  if (v15)
  {

    sub_100164294(a1, &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for QuestionnaireView);
    v16 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v17 = swift_allocObject();
    sub_10016397C(&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for QuestionnaireView);
    Button.init(action:label:)();
    v31 = v12;
    v32 = v13;
    State.wrappedValue.getter();
    v18 = v30;
    swift_getKeyPath();
    v31 = v18;
    sub_1001659B0(&qword_10025C140, type metadata accessor for ToolModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v16) = *(v18 + 112);

    v19 = v27;
    v10[*(v27 + 36)] = v16;
    v20 = v29;
    sub_10002A894(v10, v29, &qword_1002653D0, &unk_1001DDC68);
    v21 = 0;
    v22 = v20;
    v23 = v19;
  }

  else
  {
    v21 = 1;
    v22 = v29;
    v23 = v27;
  }

  return (*(v28 + 56))(v22, v21, 1, v23);
}

uint64_t sub_10016260C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10025A848 != -1)
  {
    swift_once();
  }

  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1001626D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for QuestionnaireView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_100164294(a1, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for QuestionnaireView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_10016397C(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for QuestionnaireView);
  v11 = a1;
  Button.init(action:label:)();
  result = sub_10000341C(&qword_1002653D0, &unk_1001DDC68);
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_100162850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for QuestionnaireView(0) + 44));
  v15 = *v3;
  v16 = v3[1];
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1001659B0(&qword_10025D578, type metadata accessor for QuestionnaireModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v14 + OBJC_IVAR____TtC21WritingToolsUIService18QuestionnaireModel__entries);

  if (v4)
  {

    if (qword_10025A850 != -1)
    {
      swift_once();
    }

    v5 = &qword_100277260;
  }

  else
  {
    if (qword_10025A858 != -1)
    {
      swift_once();
    }

    v5 = &qword_100277280;
  }

  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];

  result = Text.init(_:tableName:bundle:comment:)();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

uint64_t sub_100162A2C(uint64_t a1)
{
  v2 = type metadata accessor for QuestionnaireView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000341C(&unk_10025B5D0, &qword_1001D05A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_100164294(a1, v5, type metadata accessor for QuestionnaireView);
  type metadata accessor for MainActor();
  v11 = static MainActor.shared.getter();
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = &protocol witness table for MainActor;
  sub_10016397C(v5, v13 + v12, type metadata accessor for QuestionnaireView);
  sub_10015C9C8(0, 0, v9, &unk_1001DDBA8, v13);
}

uint64_t sub_100162C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return _swift_task_switch(sub_100162CA4, v6, v5);
}

uint64_t sub_100162CA4()
{
  if (qword_10025A6E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F34C(v1, qword_100276F20);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Questionnaire presented!", v4, 2u);
  }

  v5 = v0[5];

  v6 = (v5 + *(type metadata accessor for QuestionnaireView(0) + 44));
  v8 = *v6;
  v7 = v6[1];
  v0[2] = v8;
  v0[3] = v7;
  sub_10000341C(&qword_10025B648, &qword_1001D0050);
  State.wrappedValue.getter();
  v0[9] = v0[4];
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_100011F4C;

  return sub_1000501F4();
}

unint64_t sub_100162E54()
{
  result = qword_1002652B8;
  if (!qword_1002652B8)
  {
    sub_100003E34(&qword_1002652A8, &qword_1001DDAB8);
    sub_100007120(&qword_1002652C0, &qword_1002652C8, &unk_1001DDAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002652B8);
  }

  return result;
}

uint64_t sub_100162F0C@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for QuestionnaireView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10015EA5C(v6, a1);
}

uint64_t sub_100162F80()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100163098()
{
  v1 = type metadata accessor for QuestionnaireView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;

  v7 = v1[8];
  sub_10000341C(&qword_10025B640, &qword_1001CE1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for DismissAction();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
    v9 = *(v6 + v7);
  }

  v10 = *(v6 + v1[9]);

  v11 = (v6 + v1[10]);
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v15 = type metadata accessor for NavigationPath();
  (*(*(v15 - 8) + 8))(&v11[v14], v15);
  v16 = (v6 + v1[11]);
  v17 = *v16;

  v18 = v16[1];

  v19 = *(v6 + v1[12] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100163264(uint64_t a1)
{
  v4 = *(type metadata accessor for QuestionnaireView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100028688;

  return sub_100162C0C(a1, v6, v7, v1 + v5);
}

uint64_t sub_100163354(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B2A0;

  return sub_10011F29C(a1, v5);
}

unint64_t sub_100163414()
{
  result = qword_100265318;
  if (!qword_100265318)
  {
    sub_100003E34(&qword_100265310, &qword_1001DDBF8);
    sub_1001634A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265318);
  }

  return result;
}

unint64_t sub_1001634A0()
{
  result = qword_100265320;
  if (!qword_100265320)
  {
    sub_100003E34(&qword_100265328, &qword_1001DDC00);
    sub_100007120(&qword_100265330, &qword_100265338, &qword_1001DDC08);
    sub_1000DE924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265320);
  }

  return result;
}

unint64_t sub_100163560()
{
  result = qword_100265360;
  if (!qword_100265360)
  {
    sub_100003E34(&qword_1002652F0, &qword_1001DDBD8);
    sub_100003E34(&qword_1002652E8, &qword_1001DDBD0);
    sub_100007120(&qword_100265350, &qword_1002652E8, &qword_1001DDBD0);
    swift_getOpaqueTypeConformance2();
    sub_1000489E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265360);
  }

  return result;
}

unint64_t sub_10016365C()
{
  result = qword_100265370;
  if (!qword_100265370)
  {
    sub_100003E34(&qword_100265308, &qword_1001DDBF0);
    sub_100007120(&qword_100265378, &qword_100265380, &qword_1001DDC28);
    sub_1000DE924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265370);
  }

  return result;
}

uint64_t sub_100163714()
{
  v1 = type metadata accessor for QuestionnaireView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[8];
  sub_10000341C(&qword_10025B640, &qword_1001CE1E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for DismissAction();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  v9 = *(v5 + v1[9]);

  v10 = (v5 + v1[10]);
  v11 = *v10;

  v12 = *(v10 + 1);

  v13 = *(sub_10000341C(&qword_1002632E0, &qword_1001D11A0) + 32);
  v14 = type metadata accessor for NavigationPath();
  (*(*(v14 - 8) + 8))(&v10[v13], v14);
  v15 = (v5 + v1[11]);
  v16 = *v15;

  v17 = v15[1];

  v18 = *(v5 + v1[12] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001638F0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for QuestionnaireView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_10016397C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1001639EC()
{
  result = qword_1002653C0;
  if (!qword_1002653C0)
  {
    sub_100003E34(&qword_1002653B8, &qword_1001DDC60);
    sub_100163A70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002653C0);
  }

  return result;
}

unint64_t sub_100163A70()
{
  result = qword_1002653C8;
  if (!qword_1002653C8)
  {
    sub_100003E34(&qword_1002653D0, &unk_1001DDC68);
    sub_100007120(&qword_100264210, &unk_10025DF60, &unk_1001D7CD0);
    sub_100163B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002653C8);
  }

  return result;
}

unint64_t sub_100163B28()
{
  result = qword_1002653D8;
  if (!qword_1002653D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002653D8);
  }

  return result;
}

char *sub_100163C20(char *a1, int64_t a2, char a3)
{
  result = sub_100163DAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100163C40(char *a1, int64_t a2, char a3)
{
  result = sub_100163EB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100163C60(char *a1, int64_t a2, char a3)
{
  result = sub_10016431C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100163C80(char *a1, int64_t a2, char a3)
{
  result = sub_100164428(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100163CA0(void *a1, int64_t a2, char a3)
{
  result = sub_100164534(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100163CC0(char *a1, int64_t a2, char a3)
{
  result = sub_100164668(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100163CE0(size_t a1, int64_t a2, char a3)
{
  result = sub_100164AEC(a1, a2, a3, *v3, &qword_10025F898, &qword_1001DDE20, type metadata accessor for Attachment);
  *v3 = result;
  return result;
}

size_t sub_100163D24(size_t a1, int64_t a2, char a3)
{
  result = sub_100164AEC(a1, a2, a3, *v3, &qword_100265598, &qword_1001DE050, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

size_t sub_100163D68(size_t a1, int64_t a2, char a3)
{
  result = sub_100164AEC(a1, a2, a3, *v3, &qword_100265590, &qword_1001DE028, &type metadata accessor for PhotosPickerItem);
  *v3 = result;
  return result;
}

char *sub_100163DAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_10025F4D8, &qword_1001D4650);
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

char *sub_100163EB8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_1002653E8, &qword_1001DDC80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_100163FE8()
{
  result = qword_100265448;
  if (!qword_100265448)
  {
    sub_100003E34(&qword_100265420, &qword_1001DDCB8);
    sub_100007120(&qword_100265438, &qword_100265430, &unk_1001DDCF0);
    sub_100007120(&qword_100265440, &qword_1002653F0, &qword_1001DDC88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265448);
  }

  return result;
}

uint64_t sub_1001640CC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10016410C()
{
  result = qword_100265458;
  if (!qword_100265458)
  {
    sub_100003E34(&qword_100265450, &qword_1001DDD20);
    sub_100007120(&qword_100265460, &qword_100265468, &qword_1001DDD28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265458);
  }

  return result;
}

uint64_t sub_100164294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_10016431C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_100265488, &unk_1001DDEA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100164428(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_1002654B8, &qword_1001DDEF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100164534(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000341C(&qword_1002654A0, &qword_1001DDEC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000341C(&qword_1002654A8, &qword_1001DDEC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100164668(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000341C(&qword_100265490, &qword_1001DF230);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_100164774(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000341C(&qword_100265498, &unk_1001DDEB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000341C(&qword_10025F3D8, &qword_1001D4330);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100164904(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000341C(a5, a6);
  v16 = *(sub_10000341C(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_10000341C(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t sub_100164AEC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000341C(a5, a6);
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

uint64_t sub_100164CC8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100164DBC;

  return v6(v2 + 32);
}

uint64_t sub_100164DBC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100164ED0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B2A0;

  return sub_100164CC8(a1, v5);
}

uint64_t sub_100164FE0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B2A0;

  return sub_100164CC8(a1, v5);
}

uint64_t sub_100165098()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001650F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10016518C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_10000341C(&qword_1002654C0, &qword_1001E1BF0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_100165214()
{
  sub_1001652C8(319, &qword_100265530, type metadata accessor for QuestionnaireEntry, &type metadata accessor for Bindable);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1001652C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_100165330()
{
  result = qword_100265568;
  if (!qword_100265568)
  {
    sub_100003E34(&qword_1002652D8, &qword_1001DDAF0);
    sub_1001653E8();
    sub_100007120(&qword_10025B310, &qword_10025B318, &qword_1001CFC60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265568);
  }

  return result;
}

unint64_t sub_1001653E8()
{
  result = qword_100265570;
  if (!qword_100265570)
  {
    sub_100003E34(&qword_1002652D0, &unk_1001DDAE0);
    sub_100003E34(&qword_1002652A8, &qword_1001DDAB8);
    sub_100162E54();
    swift_getOpaqueTypeConformance2();
    sub_1001659B0(&qword_10025B710, type metadata accessor for PreferredContentSizeModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100265570);
  }

  return result;
}

uint64_t sub_100165530(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 32) = v4;
  *v4 = v2;
  v4[1] = sub_100165624;

  return v6(v2 + 16);
}

uint64_t sub_100165624()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100165754(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002B2A0;

  return sub_100165530(a1, v5);
}

uint64_t sub_10016580C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100028688;

  return sub_100165530(a1, v5);
}

unint64_t sub_1001658C4()
{
  result = qword_1002655C0;
  if (!qword_1002655C0)
  {
    sub_100003E34(&qword_1002655B8, &unk_1001DE070);
    sub_1001659B0(&qword_1002655C8, type metadata accessor for MultichoiceRow);
    sub_1001659B0(&qword_1002655D0, type metadata accessor for PickerRow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002655C0);
  }

  return result;
}

uint64_t sub_1001659B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001659F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100165A5C()
{
  result = qword_1002655E0;
  if (!qword_1002655E0)
  {
    sub_100003E34(&qword_100265580, &qword_1001DE020);
    sub_100007120(&qword_1002655E8, &qword_100265578, &qword_1001DE018);
    sub_100007120(&unk_10025AAC0, &qword_1002628D0, &qword_1001D18D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002655E0);
  }

  return result;
}

__n128 sub_100165BB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_100165BE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_100165C28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100165CBC()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 8);
  v6 = *v0;
  v11 = *v0;
  v7 = v12;

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10000F500(&v11, &unk_10025E1A0, &qword_1001D1FA0);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_100165E18@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000341C(&qword_100265608, &qword_1001DE1C0);
  v76 = *(v4 - 8);
  v5 = *(v76 + 64);
  __chkstk_darwin(v4);
  v71 = &v63 - v6;
  v7 = sub_10000341C(&qword_100265610, &qword_1001DE1C8);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v70 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v67 = (&v63 - v11);
  v69 = type metadata accessor for Divider();
  v68 = *(v69 - 8);
  v12 = *(v68 + 64);
  v13 = __chkstk_darwin(v69);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v66 = &v63 - v16;
  v17 = type metadata accessor for Attachment(0);
  v78 = *(v17 - 8);
  v18 = *(v78 + 64);
  __chkstk_darwin(v17);
  v20 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10000341C(&qword_100265618, &qword_1001DE1D0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v75 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v74 = &v63 - v25;
  v26 = sub_10000341C(&qword_100265620, &qword_1001DE1D8);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v73 = &v63 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v63 - v30;
  *v31 = static VerticalAlignment.center.getter();
  *(v31 + 1) = 0;
  v31[16] = 1;
  v32 = *(sub_10000341C(&qword_100265628, &qword_1001DE1E0) + 44);
  v72 = v31;
  sub_10016671C(a1, &v31[v32]);
  v33 = sub_100165CBC();
  swift_getKeyPath();
  *&v83 = v33;
  sub_100167AB0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v34 = *(v33 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  swift_getKeyPath();
  *&v83 = v34;
  sub_100167AB0(&qword_10025F460, type metadata accessor for AttachmentManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v35 = *(v34 + 16);

  v36 = *(v35 + 16);
  if (!v36)
  {
LABEL_12:

LABEL_14:
    v44 = v75;
    v45 = v73;
    v46 = v74;
    (*(v76 + 56))(v74, 1, 1, v4);
    goto LABEL_16;
  }

  v63 = v15;
  v64 = v4;
  v65 = a2;
  v4 = 0;
  v37 = &v20[*(v17 + 44)];
  v38 = v35 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
  v77 = *(v78 + 72);
  v78 = v36 - 1;
  while (1)
  {
    sub_1000A6690(v38, v20);
    a2 = *v37;
    v39 = v37[1];
    v40 = a1[4];
    v85 = a1[3];
    v86 = v40;
    v87 = a1[5];
    v41 = a1[2];
    v83 = a1[1];
    v84 = v41;
    sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
    Binding.wrappedValue.getter();
    v88[0] = v79;
    v88[1] = v80;
    v88[2] = v81;
    v88[3] = v82;
    v42 = v79;

    sub_10004C65C(v88);
    if (!v39)
    {
      sub_10003D7E8(v20);

      goto LABEL_9;
    }

    if (__PAIR128__(v39, a2) == v42)
    {
      break;
    }

    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    sub_10003D7E8(v20);
    if (v43)
    {
      goto LABEL_15;
    }

LABEL_9:
    if (v78 == v4)
    {

      a2 = v65;
      v4 = v64;
      goto LABEL_14;
    }

    ++v4;
    v38 += v77;
    if (v4 >= *(v35 + 16))
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  sub_10003D7E8(v20);
LABEL_15:

  v47 = v66;
  Divider.init()();
  v48 = static HorizontalAlignment.center.getter();
  v49 = v67;
  *v67 = v48;
  *(v49 + 8) = 0;
  *(v49 + 16) = 1;
  v50 = sub_10000341C(&qword_100265638, &qword_1001DE248);
  sub_1001670D0(a1, v49 + *(v50 + 44));
  v51 = v68;
  v52 = *(v68 + 16);
  v53 = v63;
  v54 = v69;
  v52(v63, v47, v69);
  v55 = v70;
  sub_1000081F8(v49, v70, &qword_100265610, &qword_1001DE1C8);
  v56 = v71;
  v52(v71, v53, v54);
  v57 = sub_10000341C(&qword_100265640, &unk_1001DE250);
  sub_1000081F8(v55, &v56[*(v57 + 48)], &qword_100265610, &qword_1001DE1C8);
  sub_10000F500(v49, &qword_100265610, &qword_1001DE1C8);
  v58 = *(v51 + 8);
  v58(v47, v54);
  sub_10000F500(v55, &qword_100265610, &qword_1001DE1C8);
  v58(v53, v54);
  v59 = v56;
  v46 = v74;
  sub_100167864(v59, v74);
  (*(v76 + 56))(v46, 0, 1, v64);
  a2 = v65;
  v44 = v75;
  v45 = v73;
LABEL_16:
  v60 = v72;
  sub_10016778C(v72, v45);
  sub_1000081F8(v46, v44, &qword_100265618, &qword_1001DE1D0);
  sub_10016778C(v45, a2);
  v61 = sub_10000341C(&qword_100265630, &qword_1001DE240);
  sub_1000081F8(v44, a2 + *(v61 + 48), &qword_100265618, &qword_1001DE1D0);
  sub_10000F500(v46, &qword_100265618, &qword_1001DE1D0);
  sub_1001677FC(v60);
  sub_10000F500(v44, &qword_100265618, &qword_1001DE1D0);
  return sub_1001677FC(v45);
}

uint64_t sub_10016671C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v60 = a2;
  v59 = sub_10000341C(&qword_100261F90, &unk_1001DE270);
  v64 = *(v59 - 8);
  v3 = v64[8];
  v4 = __chkstk_darwin(v59);
  v58 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v63 = &v53 - v6;
  v7 = sub_10000341C(&qword_10025CB20, &qword_1001D1E40);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v53 - v10;
  v12 = sub_10000341C(&qword_100265670, &qword_1001DE280);
  v13 = *(v12 - 8);
  v54 = v12;
  v55 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v53 - v15;
  v57 = sub_10000341C(&qword_100265678, &qword_1001DE288);
  v62 = *(v57 - 8);
  v17 = v62[8];
  v18 = __chkstk_darwin(v57);
  v56 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v61 = &v53 - v20;
  v21 = *(a1 + 32);
  v22 = *(a1 + 64);
  v76 = *(a1 + 48);
  v77 = v22;
  v23 = *(a1 + 64);
  v78 = *(a1 + 80);
  v24 = *(a1 + 32);
  v74 = *(a1 + 16);
  v75 = v24;
  v66 = v76;
  v67 = v23;
  v68 = *(a1 + 80);
  v65[0] = v74;
  v65[1] = v21;
  sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
  Binding.wrappedValue.getter();
  v26 = v79[0];
  v25 = v79[1];

  sub_10004C65C(v79);
  v72 = v26;
  v73 = v25;
  v66 = v76;
  v67 = v77;
  v68 = v78;
  v65[0] = v74;
  v65[1] = v75;
  Binding.projectedValue.getter();
  swift_getKeyPath();
  v66 = v80[2];
  v67 = v80[3];
  v68 = v80[4];
  v65[0] = v80[0];
  v65[1] = v80[1];
  Binding.subscript.getter();

  sub_10000F500(v80, &qword_10025CB40, &qword_1001D1E60);
  sub_10002AC34();
  TextField<>.init<A>(_:text:axis:)();
  v27 = sub_100007120(&qword_10025CB50, &qword_10025CB20, &qword_1001D1E40);
  View.lineLimit(_:)();
  (*(v8 + 8))(v11, v7);
  v65[0] = *(a1 + 120);
  *(v65 + 9) = *(a1 + 129);
  sub_10000341C(&qword_10025CB48, &unk_1001DE2B0);
  FocusState.Binding.projectedValue.getter();
  v65[0] = v69;
  *&v65[1] = v70;
  BYTE8(v65[1]) = v71;
  v72 = *(a1 + 152);
  LOBYTE(v73) = 0;
  sub_10000341C(&qword_100262BB0, &unk_1001D0280);
  *&v69 = v7;
  *(&v69 + 1) = v27;
  swift_getOpaqueTypeConformance2();
  sub_10004C6B0();
  v28 = v61;
  v29 = v54;
  View.focused<A>(_:equals:)();

  (*(v55 + 8))(v16, v29);
  v30 = swift_allocObject();
  v31 = *(a1 + 112);
  v30[7] = *(a1 + 96);
  v30[8] = v31;
  v32 = *(a1 + 144);
  v30[9] = *(a1 + 128);
  v30[10] = v32;
  v33 = *(a1 + 48);
  v30[3] = *(a1 + 32);
  v30[4] = v33;
  v34 = *(a1 + 80);
  v30[5] = *(a1 + 64);
  v30[6] = v34;
  v35 = *(a1 + 16);
  v30[1] = *a1;
  v30[2] = v35;
  sub_100167A78(a1, v65);
  sub_10000341C(&qword_10025BB78, &unk_1001DE2C0);
  v36 = sub_100003E34(&unk_10025D7B0, &qword_1001D0A20);
  v37 = type metadata accessor for IconOnlyLabelStyle();
  v38 = sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  v39 = sub_100167AB0(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
  *&v65[0] = v36;
  *(&v65[0] + 1) = v37;
  *&v65[1] = v38;
  *(&v65[1] + 1) = v39;
  swift_getOpaqueTypeConformance2();
  v40 = v63;
  Button.init(action:label:)();
  v41 = v62[2];
  v42 = v56;
  v43 = v57;
  v41(v56, v28, v57);
  v44 = v64[2];
  v45 = v58;
  v46 = v40;
  v47 = v59;
  v44(v58, v46, v59);
  v48 = v60;
  v41(v60, v42, v43);
  v49 = sub_10000341C(&qword_100265680, &unk_1001DE2D0);
  v44(&v48[*(v49 + 48)], v45, v47);
  v50 = v64[1];
  v50(v63, v47);
  v51 = v62[1];
  v51(v61, v43);
  v50(v45, v47);
  return (v51)(v42, v43);
}

uint64_t sub_100166E94()
{
  v0 = type metadata accessor for IconOnlyLabelStyle();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000341C(&unk_10025D7B0, &qword_1001D0A20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - v8;
  LocalizedStringKey.init(stringLiteral:)();
  Label<>.init(_:systemImage:)();
  IconOnlyLabelStyle.init()();
  sub_100007120(&unk_10025B970, &unk_10025D7B0, &qword_1001D0A20);
  sub_100167AB0(&qword_10025DC20, &type metadata accessor for IconOnlyLabelStyle);
  View.labelStyle<A>(_:)();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1001670D0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = type metadata accessor for Attachment(0);
  v30 = *(v31 - 8);
  v3 = *(v30 + 64);
  v4 = __chkstk_darwin(v31);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v32 = &v27 - v6;
  v7 = sub_100165CBC();
  swift_getKeyPath();
  *&v37 = v7;
  sub_100167AB0(&qword_10025B210, type metadata accessor for CompositionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v7 + OBJC_IVAR____TtC21WritingToolsUIService16CompositionModel__attachmentManager);

  swift_getKeyPath();
  *&v37 = v8;
  sub_100167AB0(&qword_10025F460, type metadata accessor for AttachmentManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v9 = *(v8 + 16);

  v29 = *(v9 + 16);
  if (v29)
  {
    v11 = 0;
    v12 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v11 >= *(v9 + 16))
      {
        __break(1u);
        return result;
      }

      v13 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v14 = *(v30 + 72);
      v15 = v9;
      v16 = v32;
      sub_1000A6690(v9 + v13 + v14 * v11, v32);
      v17 = (v16 + *(v31 + 44));
      v18 = *v17;
      v19 = v17[1];
      v20 = a1[4];
      v39 = a1[3];
      v40 = v20;
      v41 = a1[5];
      v21 = a1[1];
      v38 = a1[2];
      v37 = v21;
      sub_10000341C(&qword_10025CB40, &qword_1001D1E60);
      Binding.wrappedValue.getter();
      v42[0] = v33;
      v42[1] = v34;
      v42[2] = v35;
      v42[3] = v36;
      v22 = v33;

      sub_10004C65C(v42);
      if (v19)
      {
        if (__PAIR128__(v19, v18) == v22)
        {

          v9 = v15;
LABEL_11:
          sub_10003D784(v32, v28);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v43 = v12;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100163CE0(0, v12[2] + 1, 1);
            v12 = v43;
          }

          v26 = v12[2];
          v25 = v12[3];
          if (v26 >= v25 >> 1)
          {
            sub_100163CE0(v25 > 1, v26 + 1, 1);
            v12 = v43;
          }

          v12[2] = v26 + 1;
          result = sub_10003D784(v28, v12 + v13 + v26 * v14);
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v9 = v15;
        if (v23)
        {
          goto LABEL_11;
        }
      }

      else
      {

        v9 = v15;
      }

      result = sub_10003D7E8(v32);
LABEL_5:
      if (v29 == ++v11)
      {
        goto LABEL_17;
      }
    }
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_17:

  *&v37 = v12;
  sub_10000341C(&qword_10025F848, &qword_1001D50C0);
  type metadata accessor for URL();
  sub_10000341C(&qword_100265648, &unk_1001DE260);
  sub_100007120(&qword_100265650, &qword_10025F848, &qword_1001D50C0);
  sub_1001678D4();
  sub_100167AB0(&qword_100265668, type metadata accessor for Attachment);
  return ForEach<>.init(_:content:)();
}