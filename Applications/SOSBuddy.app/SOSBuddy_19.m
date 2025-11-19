uint64_t sub_1001AD2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_100363F48);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&qword_1003558E0);
  sub_100009274(&qword_100363F50, &qword_1003558E0);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_100363F58, &qword_100363F48);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001AD5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v6 = sub_1000040A8(&unk_10035CF50);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000040A8(&qword_1003560A0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - v11;
  v23 = a1;
  sub_10000F574();
  v13 = static OS_dispatch_queue.main.getter();
  v22 = v13;
  v14 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_1000040A8(&unk_100365610);
  sub_100009274(&qword_10035CF60, &unk_100365610);
  sub_10002683C();
  Publisher.receive<A>(on:options:)();
  sub_100008FA0(v8, &unk_10035CF50);

  Strong = swift_weakLoadStrong();
  v16 = swift_allocObject();
  v17 = v20;
  v18 = v21;
  v16[2] = Strong;
  v16[3] = v17;
  v16[4] = v18;
  sub_100009274(&qword_10035CF70, &qword_1003560A0);

  Publisher<>.sink(receiveValue:)();

  (*(v10 + 8))(v12, v9);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v4;
}

uint64_t sub_1001AD8B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1001ADA6C()
{
  v1 = OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1001ADB30()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_1001ADBCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

Swift::Int sub_1001ADC48()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001AE854(&qword_100364468, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001ADCE8()
{
  type metadata accessor for UUID();
  sub_1001AE854(&qword_100364468, &type metadata accessor for UUID);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1001ADD70()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1001AE854(&qword_100364468, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001ADE70(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1953391987;
  if (v2 != 1)
  {
    v3 = 1701736302;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x676E69646E6573;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1953391987;
  if (*a2 != 1)
  {
    v6 = 1701736302;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x676E69646E6573;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1001ADF54()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001ADFE8()
{
  String.hash(into:)();
}

Swift::Int sub_1001AE068()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001AE0F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001AE89C(*a1);
  *a2 = result;
  return result;
}

void sub_1001AE128(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 1953391987;
  if (v2 != 1)
  {
    v4 = 1701736302;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x676E69646E6573;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1001AE178()
{
  v10 = UUID.uuidString.getter();

  v1._countAndFlagsBits = 95;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);

  v2 = 1953391987;
  if (*(v0 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status) != 1)
  {
    v2 = 1701736302;
  }

  if (*(v0 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0x676E69646E6573;
  }

  if (*(v0 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_status))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  v5._countAndFlagsBits = v3;
  v5._object = v4;
  String.append(_:)(v5);

  v6._countAndFlagsBits = 95;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);

  if (*(v0 + OBJC_IVAR____TtC8SOSBuddy27TryOutTranscriptMessageItem_lastConsecutiveMessage))
  {
    v7 = 76;
  }

  else
  {
    v7 = 67;
  }

  v8._countAndFlagsBits = v7;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);

  return v10;
}

uint64_t sub_1001AE2D8()
{
}

uint64_t sub_1001AE320()
{
  v1 = OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1001AE4CC()
{
  v1 = OBJC_IVAR____TtC8SOSBuddy20TryOutTranscriptItem_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1001AE610(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1001AE658(uint64_t result, int a2, int a3)
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

unint64_t sub_1001AE6C0()
{
  result = qword_100364448;
  if (!qword_100364448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364448);
  }

  return result;
}

unint64_t sub_1001AE718()
{
  result = qword_100364450;
  if (!qword_100364450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364450);
  }

  return result;
}

unint64_t sub_1001AE770()
{
  result = qword_100364458;
  if (!qword_100364458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364458);
  }

  return result;
}

uint64_t sub_1001AE854(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001AE89C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003238F8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001AE918@<X0>(Swift::String *a1@<X8>)
{
  v3 = *(v1 + 16);
  v5 = *(v3 + 72);
  v4 = *(v3 + 80);
  v6 = objc_opt_self();

  v7 = [v6 mainBundle];
  v14._object = 0x80000001002A2880;
  v8._object = 0x80000001002A2820;
  v9.value._object = 0x800000010029B460;
  v14._countAndFlagsBits = 0xD00000000000003BLL;
  v8._countAndFlagsBits = 0x1000000000000058;
  v9.value._countAndFlagsBits = 0xD000000000000017;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v14);

  type metadata accessor for UIMetrics();
  sub_10003BDC8();
  result = EnvironmentObject.init()();
  a1->_countAndFlagsBits = result;
  a1->_object = v13;
  a1[1]._countAndFlagsBits = v5;
  a1[1]._object = v4;
  a1[2] = v11;
  return result;
}

uint64_t sub_1001AEA28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1001AEA70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001AEAF0@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v48 = type metadata accessor for KeyboardShortcut();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for GlassProminentButtonStyle();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1000040A8(&qword_100364470);
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v6 = &v40 - v5;
  v44 = sub_1000040A8(&qword_100364478);
  __chkstk_darwin(v44);
  v8 = &v40 - v7;
  v50 = sub_1000040A8(&qword_100364480);
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v45 = &v40 - v9;
  v51 = sub_1000040A8(&qword_100364488);
  __chkstk_darwin(v51);
  v52 = &v40 - v10;
  v11 = *v1;
  if (*v1)
  {
    v12 = v11[9];
    v13 = v11[10];
    sub_1000088DC(v11 + 6, v12);
    v14 = (*(v13 + 32))(v55, v12, v13);
    __chkstk_darwin(v14);
    v53 = v1;

    sub_1000040A8(&qword_100364490);
    sub_1001B0588(&qword_100364498, &qword_100364490, &unk_10028C2B0, sub_1001AF488);
    Button.init(action:label:)();
    GlassProminentButtonStyle.init()();
    sub_100009274(&qword_1003644A8, &qword_100364470);
    sub_1001B06E0(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle);
    v15 = v43;
    v16 = v42;
    View.buttonStyle<A>(_:)();
    (*(v40 + 8))(v4, v16);
    v17 = &v8[*(sub_1000040A8(&qword_1003644B0) + 36)];
    sub_1000040A8(&qword_100357740);
    static ButtonBorderShape.capsule.getter();
    (*(v41 + 8))(v6, v15);
    *v17 = swift_getKeyPath();
    v18 = [objc_opt_self() darkGrayColor];
    v19 = Color.init(_:)();
    KeyPath = swift_getKeyPath();
    *&v57 = v19;
    v21 = AnyShapeStyle.init<A>(_:)();
    v22 = &v8[*(v44 + 36)];
    *v22 = KeyPath;
    v22[1] = v21;
    v23 = v46;
    static KeyboardShortcut.defaultAction.getter();
    sub_1001B023C();
    v24 = v45;
    View.keyboardShortcut(_:)();
    (*(v47 + 8))(v23, v48);
    sub_100008FA0(v8, &qword_100364478);
    v25 = *(*sub_1000088DC(v55, v56) + 216);
    v26 = *(*sub_1000088DC(v55, v56) + 216);
    static Alignment.center.getter();
    if (v25 > v26)
    {
      static os_log_type_t.fault.getter();
      v27 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();
    }

    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v28 = v52;
    v29 = (*(v49 + 32))(v52, v24, v50);
    v30 = (v28 + *(v51 + 36));
    v31 = v62;
    v30[4] = v61;
    v30[5] = v31;
    v30[6] = v63;
    v32 = v58;
    *v30 = v57;
    v30[1] = v32;
    v33 = v60;
    v30[2] = v59;
    v30[3] = v33;
    v34 = (v53[6])(v29);
    v36 = v35;
    v38 = v37;
    sub_1001B046C();
    View.accessibilityLabel(_:)();
    sub_1000317C4(v34, v36, v38 & 1);

    sub_100008FA0(v28, &qword_100364488);
    return sub_100008964(v55);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001B06E0(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001AF334()
{
  type metadata accessor for UIMetrics();
  sub_1001B06E0(&qword_100354D40, type metadata accessor for UIMetrics);

  EnvironmentObject.init()();
  sub_1001AF488();
  View.accessibility(hidden:)();
}

unint64_t sub_1001AF488()
{
  result = qword_1003644A0;
  if (!qword_1003644A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003644A0);
  }

  return result;
}

uint64_t sub_1001AF4DC@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for Font.Leading();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_1003644E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_1000040A8(&qword_1003644E8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  v12 = *v1;
  if (*v1)
  {
    v13 = v12[9];
    v14 = v12[10];
    sub_1000088DC(v12 + 6, v13);
    (*(v14 + 32))(v28, v13, v14);
    *v8 = static VerticalAlignment.center.getter();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v15 = sub_1000040A8(&qword_1003644F0);
    sub_1001AF8B0(v1, &v8[*(v15 + 44)]);
    static Font.title3.getter();
    static Font.Weight.semibold.getter();
    Font.weight(_:)();

    (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
    v16 = Font.leading(_:)();

    (*(v3 + 8))(v5, v2);
    KeyPath = swift_getKeyPath();
    sub_100006C20(v8, v11, &qword_1003644E0);
    v18 = &v11[*(sub_1000040A8(&qword_1003644F8) + 36)];
    *v18 = KeyPath;
    v18[1] = v16;
    v19 = static Color.green.getter();
    sub_100008FA0(v8, &qword_1003644E0);
    *&v11[*(v9 + 36)] = v19;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_100008964(v28);
    v20 = v27;
    sub_10000CF4C(v11, v27, &qword_1003644E8);
    result = sub_1000040A8(&qword_100364500);
    v22 = (v20 + *(result + 36));
    v23 = v34;
    v22[4] = v33;
    v22[5] = v23;
    v22[6] = v35;
    v24 = v30;
    *v22 = v29;
    v22[1] = v24;
    v25 = v32;
    v22[2] = v31;
    v22[3] = v25;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001B06E0(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001AF8B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v73 = a2;
  v75 = sub_1000040A8(&qword_100354D60);
  __chkstk_darwin(v75);
  v86 = v71 - v3;
  v4 = sub_1000040A8(&qword_100364508);
  v78 = *(v4 - 8);
  v79 = v4;
  __chkstk_darwin(v4);
  v74 = v71 - v5;
  v72 = sub_1000040A8(&qword_100364510);
  __chkstk_darwin(v72);
  v77 = v71 - v6;
  v76 = sub_1000040A8(&qword_100364518);
  __chkstk_darwin(v76);
  v83 = v71 - v7;
  v81 = sub_1000040A8(&qword_100364520);
  __chkstk_darwin(v81);
  v9 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v80 = v71 - v11;
  __chkstk_darwin(v12);
  v14 = v71 - v13;
  v15 = sub_1000040A8(&qword_1003584F8);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = (v71 - v17);
  v19 = sub_1000040A8(&qword_100364528);
  __chkstk_darwin(v19 - 8);
  v82 = v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v87 = v71 - v22;
  v23 = *a1;
  if (!*a1)
  {
    goto LABEL_11;
  }

  v24 = *(v23 + 112);

  v25 = v24;
  v26 = static UIContentSizeCategory.>= infix(_:_:)();

  v84 = v14;
  v85 = v9;
  if (v26)
  {
    v27 = (*(v16 + 56))(v87, 1, 1, v15);
  }

  else
  {
    v28 = *(v23 + 72);
    v29 = *(v23 + 80);
    sub_1000088DC((v23 + 48), v28);
    (*(v29 + 24))(&v88, v28, v29);
    v30 = sub_100008964(&v88);
    v31 = (a1[2])(v30);
    v32 = (v18 + *(v15 + 36));
    v33 = *(sub_1000040A8(&qword_100358500) + 28);
    v34 = enum case for Image.Scale.medium(_:);
    v35 = type metadata accessor for Image.Scale();
    (*(*(v35 - 8) + 104))(v32 + v33, v34, v35);
    *v32 = swift_getKeyPath();
    *v18 = v31;
    v36 = v87;
    sub_1001B0668(v18, v87);
    v27 = (*(v16 + 56))(v36, 0, 1, v15);
  }

  v37 = (a1[4])(v27);
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = *(v23 + 112);
  v45 = static UIContentSizeCategory.>= infix(_:_:)();

  KeyPath = swift_getKeyPath();
  *&v88 = v37;
  *(&v88 + 1) = v39;
  LOBYTE(v89) = v41 & 1;
  *(&v89 + 1) = v43;
  *&v90 = KeyPath;
  *(&v90 + 1) = (v45 & 1) == 0;
  v91 = v45 & 1;
  v47 = enum case for DynamicTypeSize.accessibility2(_:);
  v48 = type metadata accessor for DynamicTypeSize();
  v49 = v86;
  (*(*(v48 - 8) + 104))(v86, v47, v48);
  sub_1001B06E0(&qword_100354D68, &type metadata accessor for DynamicTypeSize);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
LABEL_11:
    type metadata accessor for UIMetrics();
    sub_1001B06E0(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  sub_1000040A8(&qword_100356CF8);
  sub_10003F7B0();
  v71[1] = UIContentSizeCategoryAccessibilityExtraLarge;
  v71[0] = v23;
  sub_100009274(&qword_100354D78, &qword_100354D60);
  v50 = v74;
  View.dynamicTypeSize<A>(_:)();
  sub_100008FA0(v49, &qword_100354D60);
  sub_1000317C4(v37, v39, v41 & 1);

  v51 = swift_getKeyPath();
  v52 = v77;
  (*(v78 + 32))(v77, v50, v79);
  v53 = v52 + *(v72 + 36);
  *v53 = v51;
  *(v53 + 8) = 1;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v54 = v83;
  sub_10000CF4C(v52, v83, &qword_100364510);
  v55 = (v54 + *(v76 + 36));
  v56 = v89;
  *v55 = v88;
  v55[1] = v56;
  v55[2] = v90;
  v57 = *(v71[0] + 112);

  LOBYTE(v52) = static UIContentSizeCategory.>= infix(_:_:)();

  if (v52)
  {
    v58 = 1.0;
  }

  else
  {
    v58 = 0.5;
  }

  v59 = swift_getKeyPath();
  v60 = v80;
  sub_10000CF4C(v54, v80, &qword_100364518);
  v61 = v60 + *(v81 + 36);
  *v61 = v59;
  *(v61 + 8) = v58;
  v62 = v84;
  sub_10000CF4C(v60, v84, &qword_100364520);
  v63 = v87;
  v64 = v82;
  sub_1001B0738(v87, v82);
  v65 = v85;
  sub_100006C20(v62, v85, &qword_100364520);
  v66 = v73;
  *v73 = 0;
  *(v66 + 8) = 1;
  v67 = v66;
  v68 = sub_1000040A8(&qword_100364530);
  sub_1001B0738(v64, v67 + v68[12]);
  sub_100006C20(v65, v67 + v68[16], &qword_100364520);
  v69 = v67 + v68[20];
  *v69 = 0;
  *(v69 + 8) = 1;
  sub_100008FA0(v62, &qword_100364520);
  sub_100008FA0(v63, &qword_100364528);
  sub_100008FA0(v65, &qword_100364520);
  return sub_100008FA0(v64, &qword_100364528);
}

unint64_t sub_1001B023C()
{
  result = qword_1003644B8;
  if (!qword_1003644B8)
  {
    sub_100008CF0(&qword_100364478);
    sub_1001B02F4();
    sub_100009274(&qword_100357770, &qword_100357778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003644B8);
  }

  return result;
}

unint64_t sub_1001B02F4()
{
  result = qword_1003644C0;
  if (!qword_1003644C0)
  {
    sub_100008CF0(&qword_1003644B0);
    sub_100008CF0(&qword_100364470);
    type metadata accessor for GlassProminentButtonStyle();
    sub_100009274(&qword_1003644A8, &qword_100364470);
    sub_1001B06E0(&qword_100357730, &type metadata accessor for GlassProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003644C0);
  }

  return result;
}

unint64_t sub_1001B046C()
{
  result = qword_1003644C8;
  if (!qword_1003644C8)
  {
    sub_100008CF0(&qword_100364488);
    sub_100008CF0(&qword_100364478);
    sub_1001B023C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003644C8);
  }

  return result;
}

uint64_t sub_1001B0588(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2);
    a4();
    sub_1001B06E0(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001B0668(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_1003584F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B06E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001B0738(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100364528);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001B07AC()
{
  result = qword_100364538;
  if (!qword_100364538)
  {
    sub_100008CF0(&qword_100364500);
    sub_1001B0838();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364538);
  }

  return result;
}

unint64_t sub_1001B0838()
{
  result = qword_100364540;
  if (!qword_100364540)
  {
    sub_100008CF0(&qword_1003644E8);
    sub_1001B08F0();
    sub_100009274(&qword_100357798, &qword_1003577A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364540);
  }

  return result;
}

unint64_t sub_1001B08F0()
{
  result = qword_100364548;
  if (!qword_100364548)
  {
    sub_100008CF0(&qword_1003644F8);
    sub_100009274(&qword_100364550, &qword_1003644E0);
    sub_100009274(&qword_100355058, &qword_100355060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364548);
  }

  return result;
}

uint64_t sub_1001B09D4()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1001B0B9C()
{
  result = qword_100364608;
  if (!qword_100364608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364608);
  }

  return result;
}

unint64_t sub_1001B0C40(uint64_t a1)
{
  result = sub_1001B0C68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001B0C68()
{
  result = qword_100364610;
  if (!qword_100364610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364610);
  }

  return result;
}

uint64_t sub_1001B0CBC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1001B0D18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1001B0DA4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v36 = *(v3 - 8);
  v37 = v3;
  __chkstk_darwin(v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_100364620);
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v35 = &v34 - v7;
  v43 = sub_1000040A8(&qword_100364628);
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v34 - v10;
  v34 = static HorizontalAlignment.center.getter();
  v51 = 0;
  v42 = a1;
  sub_1001B1420(a1, v49);
  v64 = *&v49[192];
  v65 = *&v49[208];
  v66[0] = *&v49[224];
  *(v66 + 9) = *&v49[233];
  v60 = *&v49[128];
  v61 = *&v49[144];
  v62 = *&v49[160];
  v63 = *&v49[176];
  v56 = *&v49[64];
  v57 = *&v49[80];
  v58 = *&v49[96];
  v59 = *&v49[112];
  v52 = *v49;
  v53 = *&v49[16];
  v54 = *&v49[32];
  v55 = *&v49[48];
  v67[12] = *&v49[192];
  v67[13] = *&v49[208];
  v68[0] = *&v49[224];
  *(v68 + 9) = *&v49[233];
  v67[8] = *&v49[128];
  v67[9] = *&v49[144];
  v67[10] = *&v49[160];
  v67[11] = *&v49[176];
  v67[4] = *&v49[64];
  v67[5] = *&v49[80];
  v67[6] = *&v49[96];
  v67[7] = *&v49[112];
  v67[0] = *v49;
  v67[1] = *&v49[16];
  v67[2] = *&v49[32];
  v67[3] = *&v49[48];
  sub_100006C20(&v52, v48, &qword_100364630);
  sub_100008FA0(v67, &qword_100364630);
  *(&v50[12] + 7) = v64;
  *(&v50[13] + 7) = v65;
  *(&v50[14] + 7) = v66[0];
  v50[15] = *(v66 + 9);
  *(&v50[8] + 7) = v60;
  *(&v50[9] + 7) = v61;
  *(&v50[10] + 7) = v62;
  *(&v50[11] + 7) = v63;
  *(&v50[4] + 7) = v56;
  *(&v50[5] + 7) = v57;
  *(&v50[6] + 7) = v58;
  *(&v50[7] + 7) = v59;
  *(v50 + 7) = v52;
  *(&v50[1] + 7) = v53;
  *(&v50[2] + 7) = v54;
  *(&v50[3] + 7) = v55;
  v11 = v51;
  v12 = static SafeAreaRegions.all.getter();
  v13 = static SafeAreaRegions.keyboard.getter();
  static Edge.Set.horizontal.getter();
  v14 = static Edge.Set.top.getter();
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v14)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  v15 = Edge.Set.init(rawValue:)();
  *(&v48[32] + 1) = v50[15];
  *(&v48[26] + 1) = v50[12];
  *(&v48[28] + 1) = v50[13];
  *(&v48[30] + 1) = v50[14];
  *(&v48[18] + 1) = v50[8];
  *(&v48[20] + 1) = v50[9];
  *(&v48[22] + 1) = v50[10];
  *(&v48[24] + 1) = v50[11];
  *(&v48[10] + 1) = v50[4];
  *(&v48[12] + 1) = v50[5];
  *(&v48[14] + 1) = v50[6];
  *(&v48[16] + 1) = v50[7];
  *(&v48[2] + 1) = v50[0];
  *(&v48[4] + 1) = v50[1];
  *(&v48[6] + 1) = v50[2];
  v48[0] = v34;
  v48[1] = 0;
  LOBYTE(v48[2]) = v11;
  *(&v48[8] + 1) = v50[3];
  v48[35] = v12 & ~v13;
  LOBYTE(v48[36]) = v15;
  v17 = v36;
  v16 = v37;
  (*(v36 + 104))(v5, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v37);
  v18 = sub_1000040A8(&qword_100364638);
  v19 = sub_1001B1A60();
  v20 = v35;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v17 + 8))(v5, v16);
  memcpy(v49, v48, sizeof(v49));
  sub_100008FA0(v49, &qword_100364638);
  v48[0] = v18;
  v48[1] = v19;
  swift_getOpaqueTypeConformance2();
  v21 = v45;
  v22 = v39;
  View.navigationBarBackButtonHidden(_:)();
  (*(v38 + 8))(v20, v22);
  v46 = *(v42 + 32);
  v47 = *(v42 + 48);
  sub_1000040A8(&qword_100363A18);
  State.projectedValue.getter();
  v23 = v48[0];
  v24 = v48[1];
  v25 = v48[2];
  LODWORD(v42) = LOBYTE(v48[3]);
  v27 = v40;
  v26 = v41;
  v28 = *(v41 + 16);
  v29 = v43;
  v28(v40, v21, v43);
  v30 = v44;
  v28(v44, v27, v29);
  v31 = &v30[*(sub_1000040A8(&qword_100364658) + 48)];
  *v31 = v23;
  *(v31 + 1) = v24;
  *(v31 + 2) = v25;
  v31[24] = v42;
  v32 = *(v26 + 8);

  v32(v45, v29);

  return (v32)(v27, v29);
}

uint64_t sub_1001B1420@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v76._object = 0x800000010029FB70;
  v6._object = 0x800000010029C8E0;
  v76._countAndFlagsBits = 0xD00000000000004ELL;
  v6._countAndFlagsBits = 0xD000000000000012;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v76);

  v9 = [v4 mainBundle];
  v77._object = 0x80000001002A2420;
  v10._countAndFlagsBits = 0xD000000000000028;
  v10._object = 0x80000001002A23F0;
  v77._countAndFlagsBits = 0xD00000000000003FLL;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v77);

  v66 = *(a1 + 32);
  *&v67 = *(a1 + 48);
  sub_1000040A8(&qword_100363A18);
  State.wrappedValue.getter();
  v13 = *&v64[0];
  type metadata accessor for UIMetrics();
  sub_1001B1CCC(&qword_100354D40, type metadata accessor for UIMetrics);
  v14 = EnvironmentObject.init()();
  v16 = v15;
  v49 = BYTE8(v64[0]);
  v17 = static Alignment.center.getter();
  v28 = v18;
  v29 = v17;
  sub_1001B187C(&v66);
  v58 = v74;
  v59[0] = *v75;
  *(v59 + 9) = *&v75[9];
  v54 = v70;
  v55 = v71;
  v56 = v72;
  v57 = v73;
  v50 = v66;
  v51 = v67;
  v52 = v68;
  v53 = v69;
  v60[8] = v74;
  v61[0] = *v75;
  *(v61 + 9) = *&v75[9];
  v60[4] = v70;
  v60[5] = v71;
  v60[6] = v72;
  v60[7] = v73;
  v60[0] = v66;
  v60[1] = v67;
  v60[2] = v68;
  v60[3] = v69;
  sub_100006C20(&v50, v64, &qword_100364660);
  sub_100008FA0(v60, &qword_100364660);
  v19 = v58;
  *v75 = v58;
  *&v75[16] = v59[0];
  *&v75[25] = *(v59 + 9);
  v71 = v54;
  v72 = v55;
  v74 = v57;
  v73 = v56;
  v67 = v50;
  v68 = v51;
  v70 = v53;
  v69 = v52;
  v20 = v49;
  *&v62[0] = v14;
  *(&v62[0] + 1) = v16;
  v62[1] = v8;
  *v63 = v12;
  *&v63[16] = v13;
  v63[24] = v49;
  v35 = v62[0];
  v36 = v8;
  *&v64[0] = v29;
  *(&v64[0] + 1) = v28;
  v64[1] = v50;
  v64[2] = v51;
  *v37 = v12;
  *&v37[9] = *&v63[9];
  v64[6] = v55;
  v64[4] = v53;
  v64[5] = v54;
  v64[3] = v52;
  *(v65 + 9) = *(v59 + 9);
  v65[0] = v59[0];
  v64[9] = v58;
  v64[7] = v56;
  v64[8] = v57;
  v47 = v58;
  v48[0] = v59[0];
  *(v48 + 9) = *(v65 + 9);
  v43 = v54;
  v44 = v55;
  v45 = v56;
  v46 = v57;
  v38 = v64[0];
  v39 = v50;
  v40 = v51;
  v41 = v52;
  v42 = v53;
  a2[12] = v57;
  a2[13] = v19;
  a2[14] = v48[0];
  *(a2 + 233) = *(v48 + 9);
  v21 = v43;
  a2[8] = v42;
  a2[9] = v21;
  v22 = v45;
  a2[10] = v44;
  a2[11] = v22;
  v23 = v39;
  a2[4] = v38;
  a2[5] = v23;
  v24 = v41;
  a2[6] = v40;
  a2[7] = v24;
  v25 = v36;
  *a2 = v35;
  a2[1] = v25;
  v26 = *&v37[16];
  a2[2] = *v37;
  a2[3] = v26;
  *&v66 = v29;
  *(&v66 + 1) = v28;
  sub_1001A147C(v62, v30);
  sub_100006C20(v64, v30, &qword_100364668);
  sub_100008FA0(&v66, &qword_100364668);
  v30[0] = v14;
  v30[1] = v16;
  v31 = v8;
  v32 = v12;
  v33 = v13;
  v34 = v20;
  return sub_1001A14D8(v30);
}

uint64_t sub_1001B187C@<X0>(uint64_t a1@<X8>)
{
  sub_10021E0C8(&v11);
  v2 = static HorizontalAlignment.center.getter();
  type metadata accessor for BannerAppearanceModel();
  sub_1001B1CCC(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
  v3 = EnvironmentObject.init()();
  v4 = v15;
  v19[4] = v15;
  v19[5] = v16;
  v19[6] = v17;
  v19[0] = v11;
  v19[1] = v12;
  v19[2] = v13;
  v19[3] = v14;
  v25 = v15;
  v26 = v16;
  v27 = v17;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v5 = v14;
  *(a1 + 32) = v13;
  *(a1 + 48) = v5;
  v6 = v22;
  *a1 = v21;
  *(a1 + 16) = v6;
  v7 = v27;
  *(a1 + 80) = v26;
  *(a1 + 96) = v7;
  v20 = v18;
  LOBYTE(v28) = v18;
  v8 = v28;
  *(a1 + 64) = v4;
  *(a1 + 112) = v8;
  *(a1 + 120) = v2;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = v3;
  *(a1 + 152) = v9;
  *(a1 + 160) = 0;
  *(a1 + 168) = 1;
  sub_1001B1D20(v19, v29);
  v29[4] = v15;
  v29[5] = v16;
  v29[6] = v17;
  v30 = v18;
  v29[0] = v11;
  v29[1] = v12;
  v29[2] = v13;
  v29[3] = v14;
  return sub_1001B1D7C(v29);
}

uint64_t sub_1001B19F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v3;
  v7[2] = *(v1 + 32);
  v8 = *(v1 + 48);
  *a1 = static Alignment.center.getter();
  a1[1] = v4;
  v5 = sub_1000040A8(&qword_100364618);
  return sub_1001B0DA4(v7, a1 + *(v5 + 44));
}

unint64_t sub_1001B1A60()
{
  result = qword_100364640;
  if (!qword_100364640)
  {
    sub_100008CF0(&qword_100364638);
    sub_100009274(&qword_100364648, &qword_100364650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364640);
  }

  return result;
}

uint64_t sub_1001B1B18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Alignment.center.getter();
  if (a1)
  {
    v6 = v4;
    v7 = v5;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    result = static Edge.Set.all.getter();
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = 0x4038000000000000;
    *(a2 + 24) = 9;
    *(a2 + 32) = xmmword_10028C6D0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0x4038000000000000;
    *(a2 + 64) = 9;
    *(a2 + 72) = 0x3FF0000000000000;
    *(a2 + 144) = v13;
    *(a2 + 160) = v14;
    *(a2 + 176) = v15;
    *(a2 + 80) = v9;
    *(a2 + 96) = v10;
    *(a2 + 112) = v11;
    *(a2 + 128) = v12;
    *(a2 + 192) = result;
    *(a2 + 200) = 0u;
    *(a2 + 216) = 0u;
    *(a2 + 232) = 1;
  }

  else
  {
    type metadata accessor for BannerAppearanceModel();
    sub_1001B1CCC(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B1CCC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001B1E44()
{
  result = qword_100364680;
  if (!qword_100364680)
  {
    sub_100008CF0(&qword_100364688);
    sub_1001B1ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364680);
  }

  return result;
}

unint64_t sub_1001B1ED0()
{
  result = qword_100364690;
  if (!qword_100364690)
  {
    sub_100008CF0(&qword_100364698);
    sub_100009274(&qword_1003646A0, &qword_1003646A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364690);
  }

  return result;
}

uint64_t sub_1001B1F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 114))
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

uint64_t sub_1001B1FD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 114) = 1;
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

    *(result + 114) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001B205C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000040A8(&qword_1003646D0);
  __chkstk_darwin(v4);
  v6 = &v52 - v5;
  v7 = sub_1000040A8(&qword_1003646D8);
  __chkstk_darwin(v7);
  v10 = &v52 - v9;
  v11 = *v2;
  if (*v2)
  {
    v53 = v8;
    v54 = a1;
    v12 = v11[9];
    v13 = v11[10];
    sub_1000088DC(v11 + 6, v12);
    (*(v13 + 48))(v91, v12, v13);
    *v6 = static VerticalAlignment.center.getter();
    *(v6 + 1) = 0x4030000000000000;
    v6[16] = 0;
    v14 = sub_1000040A8(&qword_1003646E0);
    sub_1001B2648(v2, &v6[*(v14 + 44)]);
    v15 = objc_opt_self();
    v16 = [v15 labelColor];
    v17 = Color.init(uiColor:)();
    KeyPath = swift_getKeyPath();
    v64 = v17;
    v19 = AnyShapeStyle.init<A>(_:)();
    v20 = &v6[*(sub_1000040A8(&qword_1003646E8) + 36)];
    *v20 = KeyPath;
    v20[1] = v19;
    LOBYTE(v19) = static Edge.Set.horizontal.getter();
    v21 = &v6[*(sub_1000040A8(&qword_1003646F0) + 36)];
    *v21 = v19;
    *(v21 + 8) = 0u;
    *(v21 + 24) = 0u;
    v21[40] = 1;
    LOBYTE(v19) = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v22 = &v6[*(v4 + 36)];
    *v22 = v19;
    *(v22 + 1) = v23;
    *(v22 + 2) = v24;
    *(v22 + 3) = v25;
    *(v22 + 4) = v26;
    v22[40] = 0;
    v27 = &selRef_clearColor;
    if ((*(v2 + 113) & 1) == 0 && (*(v2 + 112) & 1) == 0)
    {
      v27 = &selRef_separatorColor;
    }

    v28 = [v15 *v27];
    v29 = Color.init(uiColor:)();
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    v30 = static Edge.Set.leading.getter();
    v88 = 1;
    v31 = static Edge.Set.leading.getter();
    v52 = v2;
    v32 = v31;
    EdgeInsets.init(_all:)();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v89 = 0;
    v41 = static Edge.Set.trailing.getter();
    v90 = 1;
    v42 = static Alignment.bottom.getter();
    v44 = v43;
    *&v63[7] = v59;
    *&v63[9] = v60;
    *&v63[11] = v61;
    *&v63[13] = v62;
    *&v63[1] = v56;
    *&v63[3] = v57;
    v63[0] = v29;
    *&v63[5] = v58;
    LOBYTE(v63[15]) = v30;
    memset(&v63[16], 0, 32);
    LOBYTE(v63[20]) = 1;
    LOBYTE(v63[21]) = v32;
    v63[22] = v34;
    v63[23] = v36;
    v63[24] = v38;
    v63[25] = v40;
    LOBYTE(v63[26]) = 0;
    LOBYTE(v63[27]) = v41;
    memset(&v63[28], 0, 32);
    LOBYTE(v63[32]) = 1;
    v63[33] = v42;
    v63[34] = v43;
    sub_10000CF4C(v6, v10, &qword_1003646D0);
    memcpy(&v10[*(v53 + 36)], v63, 0x118uLL);
    v68 = v59;
    v69 = v60;
    v70 = v61;
    v71 = v62;
    v65 = v56;
    v66 = v57;
    v64 = v29;
    v67 = v58;
    v72 = v30;
    v73 = 0u;
    v74 = 0u;
    v75 = 1;
    v76 = v32;
    v77 = v34;
    v78 = v36;
    v79 = v38;
    v80 = v40;
    v81 = 0;
    v82 = v41;
    v83 = 0u;
    v84 = 0u;
    v85 = 1;
    v86 = v42;
    v87 = v44;
    sub_100006C20(v63, v55, &qword_1003646F8);
    sub_100008FA0(&v64, &qword_1003646F8);
    v45 = *(v52 + 32);
    v55[0] = *(v52 + 24);
    v55[1] = v45;
    sub_100031770();

    v46 = Text.init<A>(_:)();
    v48 = v47;
    v50 = v49;
    sub_1001B3798();
    View.accessibility(label:)();
    sub_1000317C4(v46, v48, v50 & 1);

    sub_100008FA0(v10, &qword_1003646D8);
    return sub_100008964(v91);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001B3B34(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B2648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_1000040A8(&qword_100364738);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v42[-v5];
  v45 = sub_1000040A8(&qword_100364740);
  __chkstk_darwin(v45);
  v8 = &v42[-v7];
  v9 = sub_1000040A8(&qword_100364748);
  __chkstk_darwin(v9);
  v11 = &v42[-v10];
  v12 = sub_1000040A8(&qword_100364750);
  __chkstk_darwin(v12 - 8);
  v46 = &v42[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v48 = &v42[-v15];
  v16 = *(a1 + 104);
  if (v16)
  {
    v17 = objc_allocWithZone(ISImageDescriptor);
    v18 = v16;
    v19 = [v17 initWithSize:36.0 scale:{36.0, 4.0}];
    v44 = a1;
    v20 = v19;
    v21 = v18;
    v22 = v20;
    AsyncIconImage.init<>(icon:descriptor:)();
    sub_100009274(&qword_100364760, &qword_100364738);
    View.accessibilityHidden(_:)();
    (*(v4 + 8))(v6, v3);
    sub_100006C20(v8, v11, &qword_100364740);
    swift_storeEnumTagMultiPayload();
    sub_1001B3A4C();
    sub_1001B3B7C();
    _ConditionalContent<>.init(storage:)();

    sub_100008FA0(v8, &qword_100364740);
  }

  else
  {
    v23 = *(a1 + 16);
    type metadata accessor for UIMetrics();
    sub_1001B3B34(&qword_100354D40, type metadata accessor for UIMetrics);
    *v11 = EnvironmentObject.init()();
    *(v11 + 1) = v24;
    v11[16] = v23;
    swift_storeEnumTagMultiPayload();
    sub_1001B3A4C();
    sub_1001B3B7C();
    _ConditionalContent<>.init(storage:)();
  }

  v25 = static HorizontalAlignment.leading.getter();
  v44 = v25;
  LOBYTE(v53[0]) = 1;
  sub_1001B2C44(v50);
  *&v49[7] = v50[0];
  *&v49[23] = v50[1];
  *&v49[39] = v50[2];
  *&v49[55] = v50[3];
  v26 = v53[0];
  v45 = Image.init(_internalSystemName:)();
  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  v27 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v43 = static HierarchicalShapeStyle.secondary.getter();
  v29 = v48;
  v30 = v46;
  sub_100006C20(v48, v46, &qword_100364750);
  v31 = v47;
  sub_100006C20(v30, v47, &qword_100364750);
  v32 = sub_1000040A8(&qword_100364770);
  v33 = v31 + v32[12];
  v51[0] = v25;
  v51[1] = 0;
  v52[0] = v26;
  *&v52[1] = *v49;
  *&v52[17] = *&v49[16];
  *&v52[33] = *&v49[32];
  *&v52[49] = *&v49[48];
  v34 = *&v49[63];
  *&v52[64] = *&v49[63];
  v35 = *v52;
  *v33 = v25;
  *(v33 + 16) = v35;
  v36 = *&v52[16];
  v37 = *&v52[32];
  v38 = *&v52[48];
  *(v33 + 80) = v34;
  *(v33 + 48) = v37;
  *(v33 + 64) = v38;
  *(v33 + 32) = v36;
  v39 = v31 + v32[16];
  *v39 = 0;
  *(v39 + 8) = 1;
  v40 = v31 + v32[20];
  *v40 = v45;
  *(v40 + 8) = KeyPath;
  *(v40 + 16) = v27;
  *(v40 + 24) = v43;
  sub_100006C20(v51, v53, &qword_100364778);

  sub_100008FA0(v29, &qword_100364750);

  v53[0] = v44;
  v53[1] = 0;
  v54 = v26;
  v56 = *&v49[16];
  v57 = *&v49[32];
  *v58 = *&v49[48];
  *&v58[15] = *&v49[63];
  v55 = *v49;
  sub_100008FA0(v53, &qword_100364778);
  return sub_100008FA0(v30, &qword_100364750);
}

uint64_t sub_1001B2C44@<X0>(uint64_t a1@<X8>)
{
  sub_100031770();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  static Font.callout.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_1000317C4(v2, v4, v6 & 1);

  static HierarchicalShapeStyle.primary.getter();
  v12 = Text.foregroundStyle<A>(_:)();
  v33 = v13;
  v34 = v12;
  v32 = v14;
  v35 = v15;
  sub_1000317C4(v7, v9, v11 & 1);

  v16 = Text.init<A>(_:)();
  v18 = v17;
  LOBYTE(v7) = v19;
  static Font.footnote.getter();
  v20 = Text.font(_:)();
  v22 = v21;
  LOBYTE(v4) = v23;

  sub_1000317C4(v16, v18, v7 & 1);

  static HierarchicalShapeStyle.secondary.getter();
  v24 = Text.foregroundStyle<A>(_:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1000317C4(v20, v22, v4 & 1);

  *a1 = v34;
  *(a1 + 8) = v33;
  *(a1 + 16) = v32 & 1;
  *(a1 + 24) = v35;
  *(a1 + 32) = v24;
  *(a1 + 40) = v26;
  *(a1 + 48) = v28 & 1;
  *(a1 + 56) = v30;
  sub_1001B3BD8(v34, v33, v32 & 1);

  sub_1001B3BD8(v24, v26, v28 & 1);

  sub_1000317C4(v24, v26, v28 & 1);

  sub_1000317C4(v34, v33, v32 & 1);
}

uint64_t sub_1001B2F30@<X0>(void *a1@<X0>, int a2@<W2>, uint64_t a3@<X8>)
{
  v30 = a2;
  v35 = a3;
  v34 = sub_1000040A8(&qword_100364790);
  __chkstk_darwin(v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v29 = &v29 - v7;
  v31 = sub_1000040A8(&qword_100364798);
  __chkstk_darwin(v31);
  v33 = &v29 - v8;
  v9 = type metadata accessor for Image.ResizingMode();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000040A8(&qword_1003647A0);
  __chkstk_darwin(v32);
  v14 = &v29 - v13;
  if (a1)
  {
    v16 = a1[9];
    v15 = a1[10];
    sub_1000088DC(a1 + 6, v16);
    (*(v15 + 48))(v46, v16, v15);
    v17 = sub_1001B3FB0(v30);
    if (v17)
    {
      v18 = v17;
      [objc_allocWithZone(UIImage) initWithCGImage:v17];
      Image.init(uiImage:)();
      (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
      v19 = Image.resizable(capInsets:resizingMode:)();

      (*(v10 + 8))(v12, v9);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      *&v38[38] = v49;
      *&v38[22] = v48;
      *&v38[6] = v47;
      *&v37[2] = *v38;
      v39 = 1;
      v36 = v19;
      *v37 = 1;
      *&v37[18] = *&v38[16];
      *&v37[34] = *&v38[32];
      *&v37[48] = *(&v49 + 1);
      sub_1000040A8(&qword_1003647B8);
      sub_1001B430C();
      View.accessibilityHidden(_:)();
      v42 = *&v37[16];
      v43 = *&v37[32];
      v44 = *&v37[48];
      v40 = v36;
      v41 = *v37;
      sub_100008FA0(&v40, &qword_1003647B8);
      v20 = &qword_1003647A0;
      sub_100006C20(v14, v33, &qword_1003647A0);
      swift_storeEnumTagMultiPayload();
      sub_1001B3C3C(&qword_1003647A8, &qword_1003647A0, &unk_10028CAA8, sub_1001B430C);
      sub_1001B4398();
      _ConditionalContent<>.init(storage:)();

      v21 = v14;
    }

    else
    {
      Image.init(decorative:bundle:)();
      (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
      v22 = Image.resizable(capInsets:resizingMode:)();

      (*(v10 + 8))(v12, v9);
      static Alignment.center.getter();
      _FrameLayout.init(width:height:alignment:)();
      LOBYTE(v36) = 1;
      *&v45[6] = v40;
      *&v45[22] = v41;
      *&v45[38] = v42;
      v23 = &v5[*(v34 + 36)];
      v24 = *(type metadata accessor for RoundedRectangle() + 20);
      v25 = enum case for RoundedCornerStyle.continuous(_:);
      v26 = type metadata accessor for RoundedCornerStyle();
      (*(*(v26 - 8) + 104))(&v23->i8[v24], v25, v26);
      *v23 = vdupq_n_s64(0x401F333333333333uLL);
      *(v23->i16 + *(sub_1000040A8(&qword_10035FFF0) + 36)) = 256;
      *v5 = v22;
      *(v5 + 1) = 0;
      *(v5 + 8) = 1;
      *(v5 + 18) = *v45;
      *(v5 + 34) = *&v45[16];
      *(v5 + 50) = *&v45[32];
      *(v5 + 8) = *&v45[46];
      v20 = &qword_100364790;
      v27 = v29;
      sub_10000CF4C(v5, v29, &qword_100364790);
      sub_100006C20(v27, v33, &qword_100364790);
      swift_storeEnumTagMultiPayload();
      sub_1001B3C3C(&qword_1003647A8, &qword_1003647A0, &unk_10028CAA8, sub_1001B430C);
      sub_1001B4398();
      _ConditionalContent<>.init(storage:)();
      v21 = v27;
    }

    sub_100008FA0(v21, v20);
    return sub_100008964(v46);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001B3B34(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

id sub_1001B36A4()
{
  result = [objc_allocWithZone(IFColor) initWithSystemColor:12];
  qword_1003646B0 = result;
  return result;
}

id sub_1001B36DC()
{
  result = [objc_allocWithZone(IFColor) initWithSystemColor:13];
  qword_1003646B8 = result;
  return result;
}

id sub_1001B3714()
{
  result = [objc_allocWithZone(IFColor) initWithSystemColor:0];
  qword_1003646C0 = result;
  return result;
}

id sub_1001B374C()
{
  result = [objc_allocWithZone(IFColor) initWithSystemColor:11];
  qword_1003646C8 = result;
  return result;
}

unint64_t sub_1001B3798()
{
  result = qword_100364700;
  if (!qword_100364700)
  {
    sub_100008CF0(&qword_1003646D8);
    sub_1001B3850();
    sub_100009274(&qword_100364730, &qword_1003646F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364700);
  }

  return result;
}

unint64_t sub_1001B3850()
{
  result = qword_100364708;
  if (!qword_100364708)
  {
    sub_100008CF0(&qword_1003646D0);
    sub_1001B38DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364708);
  }

  return result;
}

unint64_t sub_1001B38DC()
{
  result = qword_100364710;
  if (!qword_100364710)
  {
    sub_100008CF0(&qword_1003646F0);
    sub_1001B3968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364710);
  }

  return result;
}

unint64_t sub_1001B3968()
{
  result = qword_100364718;
  if (!qword_100364718)
  {
    sub_100008CF0(&qword_1003646E8);
    sub_100009274(&qword_100364720, &qword_100364728);
    sub_100009274(&qword_100357770, &qword_100357778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364718);
  }

  return result;
}

unint64_t sub_1001B3A4C()
{
  result = qword_100364758;
  if (!qword_100364758)
  {
    sub_100008CF0(&qword_100364740);
    sub_100009274(&qword_100364760, &qword_100364738);
    sub_1001B3B34(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364758);
  }

  return result;
}

uint64_t sub_1001B3B34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001B3B7C()
{
  result = qword_100364768;
  if (!qword_100364768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364768);
  }

  return result;
}

uint64_t sub_1001B3BD8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1001B3C3C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2);
    a4();
    sub_1001B3B34(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1001B3D0C(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = sub_1000040A8(&qword_100357468);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v8, 1, 1, v9);
  v11 = String._bridgeToObjectiveC()();
  v13 = 0;
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    URL._bridgeToObjectiveC()(v12);
    v13 = v14;
    (*(v10 + 8))(v8, v9);
  }

  v15 = [objc_allocWithZone(IFSymbol) initWithSymbolName:v11 bundleURL:v13];

  v16 = [objc_allocWithZone(IFGraphicSymbolDescriptor) init];
  [v16 setSize:{32.0, 32.0}];
  sub_1000ECBCC(a3);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 setSymbolColors:isa];

  sub_1000ECBCC(a4);
  v18 = Array._bridgeToObjectiveC()().super.isa;

  [v16 setEnclosureColors:v18];

  [v16 setRenderingMode:1];
  [v16 setShape:1];
  [v16 setAppearance:0];
  v19 = [v15 imageForGraphicSymbolDescriptor:v16];
  v20 = [v19 CGImage];

  return v20;
}

id sub_1001B3FB0(unsigned __int8 a1)
{
  result = 0;
  if (a1 > 2u)
  {
    if (a1 - 4 < 2)
    {
      return result;
    }

    sub_1000040A8(&qword_1003681A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100281610;
    if (qword_100353B50 != -1)
    {
      swift_once();
    }

    v12 = qword_1003646C8;
    *(inited + 32) = qword_1003646C8;
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_100281610;
    v13 = qword_100353B38;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = qword_1003646B0;
    *(v5 + 32) = qword_1003646B0;
    v16 = v15;
    v11 = 0x80000001002968F0;
    v10 = 0xD000000000000015;
  }

  else if (a1)
  {
    if (a1 != 1)
    {
      return result;
    }

    sub_1000040A8(&qword_1003681A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100281610;
    if (qword_100353B50 != -1)
    {
      swift_once();
    }

    v4 = qword_1003646C8;
    *(inited + 32) = qword_1003646C8;
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_100281610;
    v6 = qword_100353B40;
    v7 = v4;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = qword_1003646B8;
    *(v5 + 32) = qword_1003646B8;
    v9 = v8;
    v10 = 0xD000000000000019;
    v11 = 0x80000001002A2A60;
  }

  else
  {
    sub_1000040A8(&qword_1003681A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100281610;
    if (qword_100353B50 != -1)
    {
      swift_once();
    }

    v17 = qword_1003646C8;
    *(inited + 32) = qword_1003646C8;
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_100281610;
    v18 = qword_100353B48;
    v19 = v17;
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = qword_1003646C0;
    *(v5 + 32) = qword_1003646C0;
    v21 = v20;
    v10 = 7565171;
    v11 = 0xE300000000000000;
  }

  v22 = sub_1001B3D0C(v10, v11, inited, v5);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v22;
}

unint64_t sub_1001B430C()
{
  result = qword_1003647B0;
  if (!qword_1003647B0)
  {
    sub_100008CF0(&qword_1003647B8);
    sub_10005D204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003647B0);
  }

  return result;
}

unint64_t sub_1001B4398()
{
  result = qword_1003647C0;
  if (!qword_1003647C0)
  {
    sub_100008CF0(&qword_100364790);
    sub_1001B430C();
    sub_100009274(&qword_100360008, &qword_10035FFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003647C0);
  }

  return result;
}

unint64_t sub_1001B4454()
{
  result = qword_1003647C8;
  if (!qword_1003647C8)
  {
    sub_100008CF0(&qword_1003647D0);
    sub_1001B3C3C(&qword_1003647A8, &qword_1003647A0, &unk_10028CAA8, sub_1001B430C);
    sub_1001B4398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003647C8);
  }

  return result;
}

id sub_1001B4520(double a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_opt_self() effectWithStyle:a4];
  v7 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v6];
  [v7 setAlpha:a2];
  if (a1 <= 0.0)
  {
    v10 = v6;
    v6 = v7;
  }

  else
  {
    v8 = [v7 layer];
    [v8 setCornerRadius:a1];

    v9 = [v7 layer];
    [v9 setCornerCurve:kCACornerCurveContinuous];

    v10 = [v7 layer];
    [v10 setMasksToBounds:1];
  }

  return v7;
}

uint64_t sub_1001B467C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001B476C();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1001B46E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001B476C();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1001B4744()
{
  sub_1001B476C();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1001B476C()
{
  result = qword_1003647D8;
  if (!qword_1003647D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003647D8);
  }

  return result;
}

uint64_t type metadata accessor for ConnectionAssistantBanner.Mode()
{
  result = qword_100364850;
  if (!qword_100364850)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001B486C()
{
  sub_1001B4908();
  if (v0 <= 0x3F)
  {
    sub_1001B4938();
    if (v1 <= 0x3F)
    {
      sub_1001B4980();
      if (v2 <= 0x3F)
      {
        sub_1001B49B0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

ValueMetadata *sub_1001B4908()
{
  result = qword_100364860;
  if (!qword_100364860)
  {
    result = &type metadata for QuestionnairePolicy.QuestionnaireScope;
    atomic_store(&type metadata for QuestionnairePolicy.QuestionnaireScope, &qword_100364860);
  }

  return result;
}

void sub_1001B4938()
{
  if (!qword_100364868)
  {
    v0 = type metadata accessor for ConnectionClosed(0);
    if (!v1)
    {
      atomic_store(v0, &qword_100364868);
    }
  }
}

ValueMetadata *sub_1001B4980()
{
  result = qword_100364870;
  if (!qword_100364870)
  {
    result = &type metadata for StewieState.OffReason;
    atomic_store(&type metadata for StewieState.OffReason, &qword_100364870);
  }

  return result;
}

void *sub_1001B49B0()
{
  result = qword_100364878;
  if (!qword_100364878)
  {
    result = &type metadata for Bool;
    atomic_store(&type metadata for Bool, &qword_100364878);
  }

  return result;
}

uint64_t sub_1001B49E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionClosed(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConnectionAssistantBanner.Mode();
  v8 = __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v29 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v29 - v15;
  __chkstk_darwin(v14);
  v18 = &v29 - v17;
  v19 = sub_1000040A8(&qword_1003648A8);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v29 - v21;
  v23 = *(v20 + 56);
  sub_10010BB20(a1, &v29 - v21);
  sub_10010BB20(a2, &v22[v23]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          goto LABEL_21;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_21;
      }

      sub_1001B4DC8(v22, type metadata accessor for ConnectionAssistantBanner.Mode);
      v25 = 1;
      return v25 & 1;
    }

    sub_10010BB20(v22, v10);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
LABEL_21:
      sub_1001B4D60(v22);
      v25 = 0;
      return v25 & 1;
    }

    v26 = *v10;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_10010BB20(v22, v16);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_10002B3E0(&v22[v23], v6);
          v25 = sub_1000ED23C(v16, v6);
          sub_1001B4DC8(v6, type metadata accessor for ConnectionClosed);
          sub_1001B4DC8(v16, type metadata accessor for ConnectionClosed);
LABEL_17:
          sub_1001B4DC8(v22, type metadata accessor for ConnectionAssistantBanner.Mode);
          return v25 & 1;
        }

        sub_1001B4DC8(v16, type metadata accessor for ConnectionClosed);
      }

      else
      {
        sub_10010BB20(v22, v13);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v25 = *v13 == v22[v23];
          goto LABEL_17;
        }
      }

      goto LABEL_21;
    }

    sub_10010BB20(v22, v18);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_21;
    }

    v26 = *v18;
  }

  v27 = v26 ^ v22[v23];
  sub_1001B4DC8(v22, type metadata accessor for ConnectionAssistantBanner.Mode);
  v25 = v27 ^ 1;
  return v25 & 1;
}

uint64_t sub_1001B4D60(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_1003648A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001B4DC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1001B4E28@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1001B4E90(a2, *a1, v7);
  v4 = v7[3];
  *(a3 + 32) = v7[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7[4];
  *(a3 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  *(a3 + 16) = v6;
  return result;
}

uint64_t sub_1001B4E90@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *result;
  v6 = *(*result + 16);
  if (!v6)
  {
LABEL_33:
    v22 = 0;
    v13 = 0;
    v15 = 0;
    v14 = 0;
    v16 = 0;
    v12 = 0;
    v18 = 0;
    v19 = 0;
    v21 = 0;
    v20 = 0;
    goto LABEL_67;
  }

  v7 = a2;
  v8 = result;
  result = sub_1001921F0(a2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_63;
  }

  v10 = (*(v5 + 56) + 16 * result);
  v11 = *v10;
  if (v11 < 3)
  {
    v12 = *(v10 + 1);
    if (*(v7 + 32) <= 1u)
    {
      if (!*(v7 + 32))
      {
        if (v12)
        {
          v13 = *(v7 + 24);
          v73 = *(v7 + 16);
          v15 = *(v7 + 72);
          v14 = *(v7 + 80);
          v16 = *(v12 + 16);
          v12 = *(v12 + 24);
          v17 = *(*(v10 + 1) + 32);
          v18 = v17[2];
          v19 = v17[3];
          v21 = v17[6];
          v20 = v17[7];

          v22 = v73;
LABEL_66:
          v6 = 0;
          goto LABEL_67;
        }

        v22 = 0;
        v13 = 0;
        v15 = 0;
        v14 = 0;
        v16 = 0;
        goto LABEL_64;
      }

      v42 = v8[1];
      v6 = *(v42 + 16);
      if (v6)
      {

        v43 = sub_1001921F0(v7);
        if (v44)
        {
          v3 = *(*(v42 + 56) + 8 * v43);
          v24 = *(v7 + 144);
          if (!(v24 >> 62))
          {
            v45 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v45)
            {
              goto LABEL_74;
            }

            goto LABEL_32;
          }

          goto LABEL_73;
        }

LABEL_63:
        v22 = 0;
        v13 = 0;
        v15 = 0;
        v14 = 0;
        v16 = 0;
        v12 = 0;
LABEL_64:
        v18 = 0;
        v19 = 0;
LABEL_65:
        v21 = 0;
        v20 = 0;
        goto LABEL_66;
      }

      goto LABEL_33;
    }

    if (*(v7 + 32) != 2)
    {
      goto LABEL_63;
    }

    v24 = *(v7 + 144);
    if (v24 >> 62)
    {
      goto LABEL_71;
    }

    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_13:
    v70 = v7;
    if (!v25)
    {

LABEL_61:
      v65 = v70[2];
      v13 = v70[3];
      v15 = v70[9];
      v14 = v70[10];
      goto LABEL_75;
    }

    if (v25 < 1)
    {
      __break(1u);
LABEL_73:
      v45 = _CocoaArrayWrapper.endIndex.getter();
      if (v45)
      {
LABEL_32:
        v46 = v45;
        v72 = v24 & 0xC000000000000001;
        v67 = v24 + 32;
        v68 = v24 & 0xFFFFFFFFFFFFFF8;
        v75 = v3 + 56;

        v47 = 0;
        v48 = &_swiftEmptyArrayStorage;
        v69 = v46;
        while (1)
        {
          while (1)
          {
            if (v72)
            {
              v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v49 = __OFADD__(v47++, 1);
              if (v49)
              {
                goto LABEL_69;
              }
            }

            else
            {
              if (v47 >= *(v68 + 16))
              {
                goto LABEL_70;
              }

              v8 = *(v67 + 8 * v47);

              v49 = __OFADD__(v47++, 1);
              if (v49)
              {
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                v25 = _CocoaArrayWrapper.endIndex.getter();
                goto LABEL_13;
              }
            }

            if ((v3 & 0xC000000000000001) != 0)
            {
              break;
            }

            if (*(v3 + 16))
            {
              Hasher.init(_seed:)();
              String.hash(into:)();
              v59 = Hasher._finalize()();
              v60 = -1 << *(v3 + 32);
              v61 = v59 & ~v60;
              if ((*(v75 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61))
              {
                v62 = ~v60;
                do
                {
                  v63 = *(*(v3 + 48) + 8 * v61);
                  v64 = *(v63 + 16) == v8[2] && *(v63 + 24) == v8[3];
                  if (v64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {
                    goto LABEL_43;
                  }

                  v61 = (v61 + 1) & v62;
                }

                while (((*(v75 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) != 0);
              }
            }

LABEL_34:

            if (v47 == v46)
            {
              goto LABEL_68;
            }
          }

          if ((__CocoaSet.contains(_:)() & 1) == 0)
          {
            goto LABEL_34;
          }

LABEL_43:
          v50 = v24;
          v51 = v8[4];
          v53 = *(v51 + 16);
          v52 = *(v51 + 24);

          v54 = v7;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_10017B338(0, *(v48 + 2) + 1, 1, v48);
          }

          v56 = *(v48 + 2);
          v55 = *(v48 + 3);
          v57 = v48;
          if (v56 >= v55 >> 1)
          {
            v57 = sub_10017B338((v55 > 1), v56 + 1, 1, v48);
          }

          *(v57 + 2) = v56 + 1;
          v48 = v57;
          v58 = &v57[16 * v56];
          *(v58 + 4) = v53;
          *(v58 + 5) = v52;

          v7 = v54;
          v24 = v50;
          v46 = v69;
          if (v47 == v69)
          {
LABEL_68:

            break;
          }
        }
      }

LABEL_74:
      v65 = *(v7 + 16);
      v13 = *(v7 + 24);
      v15 = *(v7 + 72);
      v14 = *(v7 + 80);
LABEL_75:

      sub_1000040A8(&qword_100355E30);
      sub_1001B54F8();
      v18 = BidirectionalCollection<>.joined(separator:)();
      v19 = v66;

      v22 = v65;
      v16 = 0;
      v12 = 0;
      goto LABEL_65;
    }

    v26 = v8[3];
    v27 = v24 & 0xC000000000000001;

    v28 = 0;
    v29 = &_swiftEmptyArrayStorage;
    v71 = v24 & 0xC000000000000001;
    v74 = v24;
    while (1)
    {
      if (v27)
      {
        v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        if (!*(v26 + 16))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v30 = *(v24 + 8 * v28 + 32);

        if (!*(v26 + 16))
        {
          goto LABEL_16;
        }
      }

      v31 = sub_1001921F0(v30);
      if (v32)
      {
        v33 = (*(v26 + 56) + 16 * v31);
        v35 = *v33;
        v34 = v33[1];
        v36 = *(v30 + 32);
        v76 = *(v36 + 16);
        v77 = *(v36 + 24);

        v37._countAndFlagsBits = 8250;
        v37._object = 0xE200000000000000;
        String.append(_:)(v37);
        v38._countAndFlagsBits = v35;
        v38._object = v34;
        String.append(_:)(v38);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_10017B338(0, *(v29 + 2) + 1, 1, v29);
        }

        v40 = *(v29 + 2);
        v39 = *(v29 + 3);
        if (v40 >= v39 >> 1)
        {
          v29 = sub_10017B338((v39 > 1), v40 + 1, 1, v29);
        }

        *(v29 + 2) = v40 + 1;
        v41 = &v29[16 * v40];
        *(v41 + 4) = v76;
        *(v41 + 5) = v77;
        v27 = v71;
        v24 = v74;
        goto LABEL_17;
      }

LABEL_16:

LABEL_17:
      if (v25 == ++v28)
      {
        goto LABEL_61;
      }
    }
  }

  if (v11 != 3)
  {
    goto LABEL_63;
  }

  v23 = *(v7 + 16);
  v13 = *(v7 + 24);
  v15 = *(v7 + 72);
  v14 = *(v7 + 80);

  v22 = v23;
  v16 = 0;
  v12 = 0;
  v18 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0xE000000000000000;
  v6 = 1;
LABEL_67:
  *a3 = v22;
  a3[1] = v13;
  a3[2] = v15;
  a3[3] = v14;
  a3[4] = v16;
  a3[5] = v12;
  a3[6] = v18;
  a3[7] = v19;
  a3[8] = v6;
  a3[9] = v21;
  a3[10] = v20;
  return result;
}

unint64_t sub_1001B54F8()
{
  result = qword_100356B78;
  if (!qword_100356B78)
  {
    sub_100008CF0(&qword_100355E30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100356B78);
  }

  return result;
}

uint64_t sub_1001B556C()
{
  sub_1000040A8(&qword_10035DBF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100279160;
  v1 = [objc_opt_self() mainBundle];
  v6._object = 0x800000010029C8A0;
  v2._object = 0x800000010029C880;
  v6._countAndFlagsBits = 0xD00000000000003ALL;
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v6);

  *(v0 + 32) = v4;
  *(v0 + 48) = 512;
  return v0;
}

uint64_t sub_1001B577C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v9._object = 0x800000010029C8A0;
  v3._object = 0x800000010029C880;
  v9._countAndFlagsBits = 0xD00000000000003ALL;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v9);

  v5 = type metadata accessor for WelcomeAction();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 1, 1, v5);
}

unint64_t sub_1001B58A0()
{
  result = qword_1003648B0;
  if (!qword_1003648B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003648B0);
  }

  return result;
}

unint64_t sub_1001B5944(uint64_t a1)
{
  result = sub_1001B596C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001B596C()
{
  result = qword_1003648B8;
  if (!qword_1003648B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003648B8);
  }

  return result;
}

void ConnectionAssistantSatellite.init(radius:angle:pointHeight:color:)(void *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>)
{
  v14 = 0.0;
  v15 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  [a1 getRed:&v15 green:&v14 blue:&v13 alpha:&v12];

  v10.f64[0] = v15;
  v11.f64[0] = v13;
  v10.f64[1] = v14;
  v11.f64[1] = v12;
  *a2 = a3;
  *(a2 + 4) = a4;
  *(a2 + 8) = a5;
  *(a2 + 16) = vcvt_hight_f32_f64(vcvt_f32_f64(v10), v11);
  *(a2 + 32) = 1065353216;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 256;
}

void ConnectionAssistantSatellite.cone(camera:earth:)(float32x4_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(v3 + 145))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 1;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
  }

  else
  {
    v7 = *(v3 + 144);
    v41 = *(v3 + 112);
    v42 = *(v3 + 128);
    v6 = *(v3 + 96);
    v16 = *(v3 + 56);
    v15 = *(v3 + 64);
    v5 = *(v3 + 48);
    v39 = a1[5];
    v40 = *(v3 + 80);
    v18 = __sincosf_stret(*(v3 + 4) * -0.5);
    v19 = vmulq_n_f32(v39, v18.__sinval);
    v20 = v19;
    v20.i32[3] = LODWORD(v18.__cosval);
    v21 = a1[7];
    v22 = vmulq_f32(v20, xmmword_100278430);
    v23 = vnegq_f32(v22);
    v24 = vtrn2q_s32(v22, vtrn1q_s32(v22, v23));
    v25 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v22, v23, 8uLL), *v21.f32, 1), vextq_s8(v24, v24, 8uLL), v21.f32[0]);
    v26 = vrev64q_s32(v22);
    v26.i32[0] = v23.i32[1];
    v26.i32[3] = v23.i32[2];
    v27 = vmlaq_laneq_f32(v25, v26, v21, 2);
    v28 = vnegq_f32(v27);
    v29 = vtrn2q_s32(v27, vtrn1q_s32(v27, v28));
    v30 = vrev64q_s32(v27);
    v30.i32[0] = v28.i32[1];
    v30.i32[3] = v28.i32[2];
    v31 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v27, v20, 3), v30, v19, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v27, v28, 8uLL), *v19.f32, 1), vextq_s8(v29, v29, 8uLL), v19.f32[0]));
    v37 = *v3;
    v38 = *v31.f32;
    v39.i32[0] = vmuls_lane_f32(*v3, v31, 2);
    v32 = ConnectionAssistantEarth.direction(for:)(v16, v15);
    v8 = 0;
    v33 = *(a2 + 68);
    v35 = v33 * (0.0 - v34);
    v36 = vmul_n_f32(v38, v37);
    *&v10 = vsub_f32(vmul_n_f32(vsub_f32(0, *&v32), v33), v36);
    *&v9 = v36;
    v11 = v40;
    v12 = v41;
    *(&v9 + 1) = v39.u32[0];
    *(&v10 + 2) = v35 - v39.f32[0];
    v13 = v42;
    HIDWORD(v10) = 0;
  }

  *a3 = v9;
  *(a3 + 16) = v10;
  *(a3 + 32) = v5;
  *(a3 + 36) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = v11;
  *(a3 + 64) = v6;
  *(a3 + 68) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = v12;
  *(a3 + 96) = v13;
  *(a3 + 112) = v7;
  *(a3 + 113) = v8;
}

double ConnectionAssistantSatellite.center(camera:earthCenter:)(float32x4_t *a1, float32x4_t a2)
{
  v19 = a1[5];
  v4 = __sincosf_stret(v2[1] * -0.5);
  v5 = vmulq_n_f32(v19, v4.__sinval);
  v6 = v5;
  v6.i32[3] = LODWORD(v4.__cosval);
  v7 = a1[7];
  v8 = vmulq_f32(v6, xmmword_100278430);
  v9 = vnegq_f32(v8);
  v10 = vtrn2q_s32(v8, vtrn1q_s32(v8, v9));
  v11 = vmulq_lane_f32(vextq_s8(v8, v9, 8uLL), *v7.f32, 1);
  v12 = vrev64q_s32(v8);
  v12.i32[0] = v9.i32[1];
  v12.i32[3] = v9.i32[2];
  v13 = vmlaq_laneq_f32(vmlaq_n_f32(v11, vextq_s8(v10, v10, 8uLL), v7.f32[0]), v12, v7, 2);
  v14 = vnegq_f32(v13);
  v15 = vtrn2q_s32(v13, vtrn1q_s32(v13, v14));
  v16 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v13, v14, 8uLL), *v5.f32, 1), vextq_s8(v15, v15, 8uLL), v5.f32[0]);
  v17 = vrev64q_s32(v13);
  v17.i32[0] = v14.i32[1];
  v17.i32[3] = v14.i32[2];
  *&result = vaddq_f32(vmulq_n_f32(vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v13, v6, 3), v17, v5, 2), v16), *v2), a2).u64[0];
  return result;
}

double ConnectionAssistantSatellite.model(projectedCenter:textureSize:camera:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = *(v4 + 8);
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = ConnectionAssistantCamera.Viewport.normalizedPointSize.getter(*a3, v9, *(a3 + 16));
  __sincosf_stret(*(v4 + 4) * 0.5);
  simd_float4x4.init(_:)();
  if (v8)
  {
    v15 = v9 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = 1.0;
  v17 = 1.0;
  if (!v15)
  {
    v18 = v8 / v9;
    v16 = fminf(v18, 1.0);
    v17 = fmaxf(v18, 1.0);
  }

  *&v19 = 1.0 / v17;
  LODWORD(v20) = 0;
  *(&v20 + 1) = 1.0 / (1.0 / v16);
  v21 = vmulq_n_f32(v19, *&a4);
  v22 = vaddq_f32(vmlaq_f32(v19, 0, v20), 0);
  *&v23 = *&v19 * 0.0;
  v24 = vaddq_f32(vaddq_f32(v20, COERCE_UNSIGNED_INT(*&v19 * 0.0)), 0);
  v25 = vaddq_f32(vmlaq_f32(v23, 0, v20), xmmword_100278490);
  v26 = vaddq_f32(vaddq_f32(vmlaq_lane_f32(v21, v20, *&a4, 1), 0), xmmword_1002784A0);
  *&result = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v11.f32[0]), v24, *v11.f32, 1), v25, v11, 2), v26, v11, 3), (((v7 / (a2 / a1)) * 3.0) * 0.5) * v10), 0, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v12.f32[0]), v24, *v12.f32, 1), v25, v12, 2), v26, v12, 3)), 0, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v13.f32[0]), v24, *v13.f32, 1), v25, v13, 2), v26, v13, 3)), 0, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, v14.f32[0]), v24, *v14.f32, 1), v25, v14, 2), v26, v14, 3)).u64[0];
  return result;
}

uint64_t sub_1001B5F40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_1001B6104(v11, v13) & 1;
}

double ConnectionAssistantSatellite.direction(camera:)(float32x4_t *a1)
{
  v18 = a1[5];
  v3 = __sincosf_stret(*(v1 + 4) * -0.5);
  v4 = vmulq_n_f32(v18, v3.__sinval);
  v5 = v4;
  v5.i32[3] = LODWORD(v3.__cosval);
  v6 = a1[7];
  v7 = vmulq_f32(v5, xmmword_100278430);
  v8 = vnegq_f32(v7);
  v9 = vtrn2q_s32(v7, vtrn1q_s32(v7, v8));
  v10 = vmulq_lane_f32(vextq_s8(v7, v8, 8uLL), *v6.f32, 1);
  v11 = vrev64q_s32(v7);
  v11.i32[0] = v8.i32[1];
  v11.i32[3] = v8.i32[2];
  v12 = vmlaq_laneq_f32(vmlaq_n_f32(v10, vextq_s8(v9, v9, 8uLL), v6.f32[0]), v11, v6, 2);
  v13 = vnegq_f32(v12);
  v14 = vtrn2q_s32(v12, vtrn1q_s32(v12, v13));
  v15 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v12, v13, 8uLL), *v4.f32, 1), vextq_s8(v14, v14, 8uLL), v4.f32[0]);
  v16 = vrev64q_s32(v12);
  v16.i32[0] = v13.i32[1];
  v16.i32[3] = v13.i32[2];
  *&result = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v12, v5, 3), v16, v4, 2), v15).u64[0];
  return result;
}

uint64_t sub_1001B6070(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v11[8] = *(a1 + 128);
  v12 = *(a1 + 144);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v13[8] = *(a2 + 128);
  v14 = *(a2 + 144);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return _s8SOSBuddy28ConnectionAssistantSatelliteV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13) & 1;
}

uint64_t sub_1001B6104(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = vmovn_s32(vceqq_f32(*(a1 + 32), *(a2 + 32)));
  if ((v2.i16[0] & v2.i16[1] & 1) == 0 || (v2.i16[2] & v2.i16[3] & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v3 = *(a1 + 96);
  v4 = *(a2 + 96);
  if (v3 & 1) != 0 || (v4)
  {
    return v3 & v4;
  }

  else
  {
    return _s8SOSBuddy23ConnectionAssistantConeV5PulseV23__derived_struct_equalsySbAE_AEtFZ_0(*(a1 + 64), *(a1 + 80), *(a2 + 64), *(a2 + 80));
  }
}

uint64_t _s8SOSBuddy28ConnectionAssistantSatelliteV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = vmovn_s32(vceqq_f32(*(a1 + 16), *(a2 + 16)));
  if ((v4.i16[0] & v4.i16[1] & 1) == 0 || (v4.i16[2] & v4.i16[3] & 1) == 0 || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v5 = *(a1 + 145) & *(a2 + 145);
  if ((*(a1 + 145) & 1) == 0 && (*(a2 + 145) & 1) == 0)
  {
    v19 = v2;
    v20 = v3;
    v6 = *(a2 + 128);
    v17[4] = *(a2 + 112);
    v17[5] = v6;
    v18 = *(a2 + 144);
    v7 = *(a2 + 64);
    v17[0] = *(a2 + 48);
    v17[1] = v7;
    v8 = *(a2 + 96);
    v17[2] = *(a2 + 80);
    v17[3] = v8;
    v9 = *(a1 + 64);
    v15[0] = *(a1 + 48);
    v15[1] = v9;
    v10 = *(a1 + 80);
    v11 = *(a1 + 96);
    v12 = *(a1 + 112);
    v13 = *(a1 + 128);
    v16 = *(a1 + 144);
    v15[4] = v12;
    v15[5] = v13;
    v15[2] = v10;
    v15[3] = v11;
    v5 = sub_1001B6104(v15, v17);
  }

  return v5 & 1;
}

__n128 sub_1001B62BC(uint64_t a1, uint64_t a2)
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
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1001B62F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 146))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001B6310(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
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

  *(result + 146) = v3;
  return result;
}

__n128 sub_1001B6374(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1001B63A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 97))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001B63C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
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

  *(result + 97) = v3;
  return result;
}

id sub_1001B6418@<X0>(void *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, double a4@<D1>, double a5@<D2>)
{
  v14 = 0.0;
  v15 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  result = [a1 getRed:&v15 green:&v14 blue:&v13 alpha:&v12];
  v10.f64[0] = v15;
  v11.f64[0] = v13;
  v10.f64[1] = v14;
  v11.f64[1] = v12;
  *a2 = a3;
  *(a2 + 8) = a4;
  *(a2 + 16) = a5;
  *(a2 + 32) = vcvt_hight_f32_f64(vcvt_f32_f64(v10), v11);
  *(a2 + 48) = 1065353216;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 1;
  return result;
}

double sub_1001B6514@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Image.init(_:bundle:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  LOBYTE(v2) = static Edge.Set.all.getter();
  v11[8] = 1;
  v11[0] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v7 = v14;
  *(a1 + 120) = v15;
  v8 = v17;
  *(a1 + 136) = v16;
  *(a1 + 152) = v8;
  *(a1 + 168) = v18;
  result = *&v12;
  v10 = v13;
  *(a1 + 72) = v12;
  *(a1 + 88) = v10;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v2;
  *(a1 + 64) = 1;
  *(a1 + 104) = v7;
  return result;
}

double sub_1001B66F8@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Image.init(_:bundle:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  LOBYTE(v2) = static Edge.Set.all.getter();
  v11[8] = 1;
  v11[0] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v7 = v14;
  *(a1 + 120) = v15;
  v8 = v17;
  *(a1 + 136) = v16;
  *(a1 + 152) = v8;
  *(a1 + 168) = v18;
  result = *&v12;
  v10 = v13;
  *(a1 + 72) = v12;
  *(a1 + 88) = v10;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v2;
  *(a1 + 64) = 1;
  *(a1 + 104) = v7;
  return result;
}

double sub_1001B68DC@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Image.init(_:bundle:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  LOBYTE(v2) = static Edge.Set.all.getter();
  v11[8] = 1;
  v11[0] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v7 = v14;
  *(a1 + 120) = v15;
  v8 = v17;
  *(a1 + 136) = v16;
  *(a1 + 152) = v8;
  *(a1 + 168) = v18;
  result = *&v12;
  v10 = v13;
  *(a1 + 72) = v12;
  *(a1 + 88) = v10;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v2;
  *(a1 + 64) = 1;
  *(a1 + 104) = v7;
  return result;
}

double sub_1001B6AC0@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Image.init(_:bundle:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  LOBYTE(v2) = static Edge.Set.all.getter();
  v11[8] = 1;
  v11[0] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v7 = v14;
  *(a1 + 120) = v15;
  v8 = v17;
  *(a1 + 136) = v16;
  *(a1 + 152) = v8;
  *(a1 + 168) = v18;
  result = *&v12;
  v10 = v13;
  *(a1 + 72) = v12;
  *(a1 + 88) = v10;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v2;
  *(a1 + 64) = 1;
  *(a1 + 104) = v7;
  return result;
}

double sub_1001B6CA4@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Image.init(_:bundle:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  LOBYTE(v2) = static Edge.Set.all.getter();
  v11[8] = 1;
  v11[0] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v7 = v14;
  *(a1 + 120) = v15;
  v8 = v17;
  *(a1 + 136) = v16;
  *(a1 + 152) = v8;
  *(a1 + 168) = v18;
  result = *&v12;
  v10 = v13;
  *(a1 + 72) = v12;
  *(a1 + 88) = v10;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v2;
  *(a1 + 64) = 1;
  *(a1 + 104) = v7;
  return result;
}

double sub_1001B6E88@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Image.init(_:bundle:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  LOBYTE(v2) = static Edge.Set.all.getter();
  v11[8] = 1;
  v11[0] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v7 = v14;
  *(a1 + 120) = v15;
  v8 = v17;
  *(a1 + 136) = v16;
  *(a1 + 152) = v8;
  *(a1 + 168) = v18;
  result = *&v12;
  v10 = v13;
  *(a1 + 72) = v12;
  *(a1 + 88) = v10;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v2;
  *(a1 + 64) = 1;
  *(a1 + 104) = v7;
  return result;
}

double sub_1001B706C@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.ResizingMode();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Image.init(_:bundle:)();
  (*(v3 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v2);
  v6 = Image.resizable(capInsets:resizingMode:)();

  (*(v3 + 8))(v5, v2);
  LOBYTE(v2) = static Edge.Set.all.getter();
  v11[8] = 1;
  v11[0] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  v7 = v14;
  *(a1 + 120) = v15;
  v8 = v17;
  *(a1 + 136) = v16;
  *(a1 + 152) = v8;
  *(a1 + 168) = v18;
  result = *&v12;
  v10 = v13;
  *(a1 + 72) = v12;
  *(a1 + 88) = v10;
  *a1 = v6;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = v2;
  *(a1 + 64) = 1;
  *(a1 + 104) = v7;
  return result;
}

uint64_t sub_1001B7250@<X0>(uint64_t a1@<X8>)
{
  v2 = *(sub_1000EA1BC() + 16);

  if (v2)
  {
    result = sub_1000EA1BC();
    if (!*(result + 16))
    {
      __break(1u);
      return result;
    }

    static WelcomeAction.secondary(title:)();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = type metadata accessor for WelcomeAction();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t sub_1001B7320@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v13._object = 0x800000010029CA60;
  v4._object = 0x800000010029CA40;
  v13._countAndFlagsBits = 0xD00000000000003CLL;
  v4._countAndFlagsBits = 0xD000000000000019;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v13);

  v6 = [v2 mainBundle];
  v14._object = 0x800000010029CA60;
  v7._object = 0x800000010029CA40;
  v14._countAndFlagsBits = 0xD00000000000003CLL;
  v7._countAndFlagsBits = 0xD000000000000019;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v14);

  static WelcomeAction.secondary(title:)();

  v9 = type metadata accessor for WelcomeAction();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, 0, 1, v9);
}

uint64_t sub_1001B74A0@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v13._object = 0x800000010029C8A0;
  v4._object = 0x800000010029C880;
  v13._countAndFlagsBits = 0xD00000000000003ALL;
  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v13);

  v6 = [v2 mainBundle];
  v14._object = 0x800000010029C8A0;
  v7._object = 0x800000010029C880;
  v14._countAndFlagsBits = 0xD00000000000003ALL;
  v7._countAndFlagsBits = 0xD00000000000001BLL;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v14);

  static WelcomeAction.secondary(title:)();

  v9 = type metadata accessor for WelcomeAction();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, 0, 1, v9);
}

uint64_t sub_1001B7620@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v13._object = 0x80000001002A2C60;
  v4._countAndFlagsBits = 1954047310;
  v4._object = 0xE400000000000000;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD000000000000050;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v13);

  v6 = [v2 mainBundle];
  v14._object = 0x80000001002A2C60;
  v7._countAndFlagsBits = 1954047310;
  v7._object = 0xE400000000000000;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000050;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v14);

  static WelcomeAction.secondary(title:)();

  v9 = type metadata accessor for WelcomeAction();
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, 0, 1, v9);
}

unint64_t sub_1001B77F8()
{
  result = qword_1003648C0;
  if (!qword_1003648C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003648C0);
  }

  return result;
}

unint64_t sub_1001B789C(uint64_t a1)
{
  result = sub_1001B78C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1001B78C4()
{
  result = qword_1003648C8;
  if (!qword_1003648C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003648C8);
  }

  return result;
}

uint64_t sub_1001B791C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1001B7964(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001B79E0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v27 = *(a1 + 17);
  v28 = *(a1 + 16);
  v71 = *(a1 + 3);
  *&v72 = a1[5];
  sub_1000040A8(&qword_1003648D8);
  Binding.wrappedValue.getter();
  v4 = v62;
  *&v62 = 0;
  BYTE8(v62) = 1;
  sub_1000040A8(&qword_10035B6A8);
  State.init(wrappedValue:)();
  v5 = v71;
  v6 = BYTE8(v71);
  v26 = v72;
  v7 = static SafeAreaRegions.all.getter();
  v8 = static Edge.Set.all.getter();
  LOBYTE(v71) = BYTE8(v71);
  v9 = *a1;
  if (*a1)
  {
    v25 = v8;
    v29 = v5;
    if (*(v9 + 64) && (sub_100071A54(3, *(v9 + 88)) & 1) != 0)
    {
      v10 = static HorizontalAlignment.center.getter();
      LOBYTE(v52) = 1;
      sub_1001B7FA0(&v71);
      v34[0] = v74[0];
      *(v34 + 9) = *(v74 + 9);
      v32 = v72;
      v33 = v73;
      v31 = v71;
      v35[2] = v73;
      v36[0] = v74[0];
      *(v36 + 9) = *(v74 + 9);
      v35[0] = v71;
      v35[1] = v72;
      sub_100006C20(&v31, &v62, &qword_1003648F0);
      sub_100008FA0(v35, &qword_1003648F0);
      *&v30[23] = v32;
      *&v30[39] = v33;
      *&v30[55] = v34[0];
      *&v30[64] = *(v34 + 9);
      *&v30[7] = v31;
      v11 = v52;
      v21 = v52;
      v20 = static SafeAreaRegions.all.getter();
      v12 = static Edge.Set.all.getter();
      v62 = *(a1 + 3);
      *&v63 = a1[8];
      sub_1000040A8(&qword_100363A18);
      State.projectedValue.getter();
      v23 = v71;
      v24 = v72;
      v22 = BYTE8(v72);
      v37 = v10;
      v38[0] = v11;
      *&v38[1] = *v30;
      *&v38[17] = *&v30[16];
      *&v38[33] = *&v30[32];
      *&v38[49] = *&v30[48];
      *&v38[65] = *&v30[64];
      *&v38[88] = v20;
      v39 = v12;
      v54 = *&v38[16];
      v55 = *&v38[32];
      v52 = v10;
      v53 = *v38;
      LOBYTE(v59) = v12;
      v57 = *&v38[64];
      v58 = *&v38[80];
      v56 = *&v38[48];
      sub_100006C20(&v37, &v71, &qword_1003648F8);
      *&v42[17] = *&v30[16];
      v43 = *&v30[32];
      v44 = *&v30[48];
      v45 = *&v30[64];
      v40 = v10;
      v41 = 0;
      v42[0] = v21;
      *&v42[1] = *v30;
      v46 = v20;
      v47 = v12;
      v5 = v29;
      sub_100008FA0(&v40, &qword_1003648F8);
      v66 = v56;
      v67 = v57;
      v68 = v58;
      v62 = v52;
      v63 = v53;
      v64 = v54;
      v65 = v55;
      *&v69[8] = v23;
      *v69 = v59;
      *&v69[24] = v24;
      v70 = v22;
      ConnectionAssistantRendererEarthOutline.Buffers.shapesCount.getter(&v62);
      v76 = v68;
      v77 = *v69;
      v78 = *&v69[16];
      v79 = v70;
      v73 = v64;
      v74[0] = v65;
      v74[1] = v66;
      v75 = v67;
      v71 = v62;
      v72 = v63;
    }

    else
    {
      sub_1001B8338(&v71);
    }

    v68 = v76;
    *v69 = v77;
    *&v69[16] = v78;
    v64 = v73;
    v65 = v74[0];
    v66 = v74[1];
    v67 = v75;
    v62 = v71;
    v63 = v72;
    *&v37 = v5;
    BYTE8(v37) = v6;
    *(&v37 + 9) = v82[0];
    HIDWORD(v37) = *(v82 + 3);
    *v38 = v26;
    v38[8] = v28;
    v38[9] = v27;
    *&v38[10] = v80;
    *&v38[14] = v81;
    *&v38[16] = v4;
    *&v38[24] = v7;
    v50 = *&v38[16];
    v49 = *v38;
    v48 = v37;
    v52 = v71;
    v53 = v72;
    v56 = v74[1];
    v57 = v75;
    v54 = v73;
    v55 = v74[0];
    v60 = v78;
    v58 = v76;
    v59 = v77;
    *&v51[120] = v77;
    *&v51[104] = v76;
    *&v51[56] = v74[0];
    *&v51[40] = v73;
    *&v51[136] = v78;
    v70 = v79;
    v38[32] = v25;
    v51[0] = v25;
    v61 = v79;
    v51[152] = v79;
    *&v51[72] = v74[1];
    *&v51[88] = v75;
    *&v51[8] = v71;
    *&v51[24] = v72;
    v13 = *&v51[128];
    a2[10] = *&v51[112];
    a2[11] = v13;
    *(a2 + 185) = *&v51[137];
    v14 = *&v51[64];
    a2[6] = *&v51[48];
    a2[7] = v14;
    v15 = *&v51[96];
    a2[8] = *&v51[80];
    a2[9] = v15;
    v16 = *v51;
    a2[2] = v50;
    a2[3] = v16;
    v17 = *&v51[32];
    a2[4] = *&v51[16];
    a2[5] = v17;
    v18 = v49;
    *a2 = v48;
    a2[1] = v18;
    sub_100006C20(&v37, &v40, &qword_1003648E0);
    sub_100006C20(&v52, &v40, &qword_1003648E8);
    sub_100008FA0(&v62, &qword_1003648E8);
    v40 = v29;
    LOBYTE(v41) = v6;
    *(&v41 + 1) = v82[0];
    HIDWORD(v41) = *(v82 + 3);
    *v42 = v26;
    v42[8] = v28;
    v42[9] = v27;
    *&v42[10] = v80;
    *&v42[14] = v81;
    *&v42[16] = v4;
    *&v42[24] = v7;
    v42[32] = v25;
    return sub_100008FA0(&v40, &qword_1003648E0);
  }

  else
  {
    type metadata accessor for StewieModel(0);
    sub_1001B8358(&qword_1003561B8, type metadata accessor for StewieModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B7FA0@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v31._object = 0x800000010029EED0;
  v4._object = 0x8000000100297040;
  v31._countAndFlagsBits = 0xD00000000000004DLL;
  v4._countAndFlagsBits = 0xD000000000000019;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v31);

  v7 = [v2 mainBundle];
  v32._object = 0x80000001002A2DA0;
  v8.value._countAndFlagsBits = 0x5072656972726143;
  v8.value._object = 0xED00006E6F656769;
  v9._countAndFlagsBits = 0xD00000000000001DLL;
  v9._object = 0x80000001002A2D80;
  v32._countAndFlagsBits = 0xD00000000000003FLL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v8, v7, v10, v32);

  sub_1000040A8(&qword_100363A18);
  State.wrappedValue.getter();
  v12 = v25;
  v13 = v26;
  type metadata accessor for UIMetrics();
  sub_1001B8358(&qword_100354D40, type metadata accessor for UIMetrics);
  v14 = EnvironmentObject.init()();
  v19[72] = v26;
  *&v20[0] = v14;
  *(&v20[0] + 1) = v15;
  v20[1] = v6;
  *v21 = v11;
  *&v21[16] = v25;
  v21[24] = v26;
  v22 = v20[0];
  v23 = v6;
  *v24 = v11;
  *&v24[9] = *&v21[9];
  v19[64] = 1;
  v16 = v20[0];
  v17 = *&v24[16];
  *(a1 + 32) = *v24;
  *(a1 + 48) = v17;
  *a1 = v16;
  *(a1 + 16) = v6;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  v25 = v14;
  v26 = v15;
  v27 = v6;
  v28 = v11;
  v29 = v12;
  v30 = v13;
  sub_1001A147C(v20, v19);
  return sub_1001A14D8(&v25);
}

__n128 sub_1001B81DC@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 48);
  v27[2] = *(v1 + 32);
  v27[3] = v3;
  v28 = *(v1 + 64);
  v4 = *(v1 + 16);
  v27[0] = *v1;
  v27[1] = v4;
  v5 = static Alignment.center.getter();
  v7 = v6;
  sub_1001B79E0(v27, &v15);
  v39 = v25;
  v40[0] = v26[0];
  *(v40 + 9) = *(v26 + 9);
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v29 = v15;
  v30 = v16;
  v41[10] = v25;
  v42[0] = v26[0];
  *(v42 + 9) = *(v26 + 9);
  v41[6] = v21;
  v41[7] = v22;
  v41[8] = v23;
  v41[9] = v24;
  v41[2] = v17;
  v41[3] = v18;
  v41[4] = v19;
  v41[5] = v20;
  v41[0] = v15;
  v41[1] = v16;
  sub_100006C20(&v29, &v14, &qword_1003648D0);
  sub_100008FA0(v41, &qword_1003648D0);
  *a1 = v5;
  *(a1 + 8) = v7;
  v8 = v40[0];
  *(a1 + 176) = v39;
  *(a1 + 192) = v8;
  *(a1 + 201) = *(v40 + 9);
  v9 = v36;
  *(a1 + 112) = v35;
  *(a1 + 128) = v9;
  v10 = v38;
  *(a1 + 144) = v37;
  *(a1 + 160) = v10;
  v11 = v32;
  *(a1 + 48) = v31;
  *(a1 + 64) = v11;
  v12 = v34;
  *(a1 + 80) = v33;
  *(a1 + 96) = v12;
  result = v30;
  *(a1 + 16) = v29;
  *(a1 + 32) = result;
  return result;
}

double sub_1001B8338(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1001B8358(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001B83B0()
{
  result = qword_100364900;
  if (!qword_100364900)
  {
    sub_100008CF0(&qword_100364908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364900);
  }

  return result;
}

uint64_t sub_1001B8440@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v21 = v1[1];
  v22 = v4;
  v20 = v1[2];
  v5 = swift_allocObject();
  v6 = v2[1];
  v5[1] = *v2;
  v5[2] = v6;
  v5[3] = v2[2];
  sub_100006C20(&v22, &v23, &qword_100357580);
  sub_100006C20(&v21, &v23, &qword_100364910);
  sub_100006C20(&v20, &v23, &qword_100360028);
  type metadata accessor for UIMetrics();
  sub_1001B8FC0(&qword_100354D40, type metadata accessor for UIMetrics);
  v7 = EnvironmentObject.init()();
  v9 = v8;
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  *&v14 = v7;
  *(&v14 + 1) = v9;
  v15 = sub_1001B86E8;
  v16 = 0;
  *&v17 = sub_1001B8F4C;
  *(&v17 + 1) = v5;
  v18 = v23;
  v19 = v24;
  sub_1000040A8(&qword_100364918);
  sub_1001B8F54();
  View.navigationBarBackButtonHidden(_:)();
  v24 = sub_1001B86E8;
  v25 = v17;
  v26 = v18;
  v27 = v19;
  v23 = v14;
  sub_100008FA0(&v23, &qword_100364918);
  v10 = swift_allocObject();
  v11 = v2[1];
  *(v10 + 1) = *v2;
  *(v10 + 2) = v11;
  *(v10 + 3) = v2[2];
  v12 = (a1 + *(sub_1000040A8(&qword_100364928) + 36));
  *v12 = sub_1001B8FB8;
  v12[1] = v10;
  v12[2] = 0;
  v12[3] = 0;
  sub_100006C20(&v22, &v14, &qword_100357580);
  sub_100006C20(&v21, &v14, &qword_100364910);
  return sub_100006C20(&v20, &v14, &qword_100360028);
}

double sub_1001B86E8@<D0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  v25 = 0;
  sub_1001B8870(&v12);
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v38[8] = v20;
  v38[9] = v21;
  v38[10] = v22;
  v38[11] = v23;
  v38[4] = v16;
  v38[5] = v17;
  v38[6] = v18;
  v38[7] = v19;
  v38[0] = v12;
  v38[1] = v13;
  v38[2] = v14;
  v38[3] = v15;
  sub_100006C20(&v26, &v11, &qword_100363A30);
  sub_100008FA0(v38, &qword_100363A30);
  *&v24[135] = v34;
  *&v24[151] = v35;
  *&v24[167] = v36;
  *&v24[183] = v37;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[103] = v32;
  *&v24[119] = v33;
  *&v24[7] = v26;
  *&v24[23] = v27;
  *&v24[39] = v28;
  *&v24[55] = v29;
  v3 = *&v24[128];
  *(a1 + 161) = *&v24[144];
  v4 = *&v24[176];
  *(a1 + 177) = *&v24[160];
  *(a1 + 193) = v4;
  v5 = *&v24[64];
  *(a1 + 97) = *&v24[80];
  v6 = *&v24[112];
  *(a1 + 113) = *&v24[96];
  *(a1 + 129) = v6;
  *(a1 + 145) = v3;
  v7 = *v24;
  *(a1 + 33) = *&v24[16];
  result = *&v24[32];
  v9 = *&v24[48];
  *(a1 + 49) = *&v24[32];
  *(a1 + 65) = v9;
  *(a1 + 81) = v5;
  v10 = v25;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 208) = *&v24[191];
  *(a1 + 17) = v7;
  return result;
}

uint64_t sub_1001B8870@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConnectionClosedModel(0);
  sub_1001B8FC0(&qword_10035B1A8, type metadata accessor for ConnectionClosedModel);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for ConnectivityModel();
  sub_1001B8FC0(&qword_100354F78, type metadata accessor for ConnectivityModel);
  v5 = EnvironmentObject.init()();
  v7 = v6;
  type metadata accessor for GuidanceModel(0);
  sub_1001B8FC0(&qword_100354F80, type metadata accessor for GuidanceModel);
  v8 = EnvironmentObject.init()();
  v38 = v9;
  v39 = v8;
  type metadata accessor for OrientationModel();
  sub_1001B8FC0(&qword_10035B1B0, type metadata accessor for OrientationModel);
  v10 = EnvironmentObject.init()();
  v36 = v11;
  v37 = v10;
  type metadata accessor for StewieModel(0);
  sub_1001B8FC0(&qword_1003561B8, type metadata accessor for StewieModel);
  v35 = EnvironmentObject.init()();
  v42 = v12;
  type metadata accessor for UIMetrics();
  sub_1001B8FC0(&qword_100354D40, type metadata accessor for UIMetrics);
  v13 = EnvironmentObject.init()();
  v40 = v14;
  v41 = v13;
  v15 = EnvironmentObject.init()();
  v33 = v16;
  v34 = v15;
  v17 = EnvironmentObject.init()();
  v31 = v18;
  v32 = v17;
  type metadata accessor for GuidanceMessagesModel();
  sub_1001B8FC0(&qword_100357820, type metadata accessor for GuidanceMessagesModel);
  v19 = EnvironmentObject.init()();
  v29 = v20;
  v30 = v19;
  v21 = EnvironmentObject.init()();
  *&v43 = v2;
  *(&v43 + 1) = v4;
  *&v44 = v5;
  *(&v44 + 1) = v7;
  *&v45 = v39;
  *(&v45 + 1) = v38;
  *&v46 = v37;
  *(&v46 + 1) = v36;
  *&v47 = v35;
  *(&v47 + 1) = v42;
  *&v48 = v41;
  *(&v48 + 1) = v40;
  LOBYTE(v49) = 0;
  *(&v49 + 1) = 0;
  v22 = v44;
  *a1 = v43;
  *(a1 + 16) = v22;
  v23 = v45;
  v24 = v46;
  v25 = v49;
  v26 = v47;
  *(a1 + 80) = v48;
  *(a1 + 96) = v25;
  *(a1 + 48) = v24;
  *(a1 + 64) = v26;
  *(a1 + 32) = v23;
  *(a1 + 112) = v34;
  *(a1 + 120) = v33;
  *(a1 + 128) = v32;
  *(a1 + 136) = v31;
  *(a1 + 144) = 32;
  *(a1 + 152) = 0xE100000000000000;
  *(a1 + 160) = v30;
  *(a1 + 168) = v29;
  *(a1 + 176) = v21;
  *(a1 + 184) = v27;
  sub_1000E091C(&v43, v50);
  v50[0] = v2;
  v50[1] = v4;
  v50[2] = v5;
  v50[3] = v7;
  v50[4] = v39;
  v50[5] = v38;
  v50[6] = v37;
  v50[7] = v36;
  v50[8] = v35;
  v50[9] = v42;
  v50[10] = v41;
  v50[11] = v40;
  v51 = 0;
  v52 = 0;
  return sub_1000E0978(v50);
}

double sub_1001B8BA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static HorizontalAlignment.center.getter();
  sub_1001B8C28(a1, v9);
  v7 = v9[1];
  v8 = v9[0];
  v5 = static Edge.Set.top.getter();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = v7;
  *(a2 + 24) = v8;
  *(a2 + 56) = v5;
  result = 0.0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 1;
  return result;
}

uint64_t sub_1001B8C28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    swift_beginAccess();
    sub_10003F3D8(v2 + 48, v11);
    if (v12[1])
    {
      sub_1000C6118(v12, v9);

      sub_10003F434(v11);
      v4 = v10 == 1 && *(v9[4] + 16) == 0;
      v7 = v9[0];
      v8 = v9[1];

      sub_1000C60E8(v9);

      if (v4)
      {
        type metadata accessor for AppEvents();
        sub_1001B8FC0(&qword_100354D48, type metadata accessor for AppEvents);
        result = EnvironmentObject.init()();
      }

      else
      {

        result = 0;
        v6 = 0;
        v7 = 0;
        v8 = 0;
      }
    }

    else
    {
      sub_10003F434(v11);
      result = 0;
      v6 = 0;
      v7 = 0;
      v8 = 1;
    }

    *a2 = result;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  else
  {
    type metadata accessor for QuestionnaireState();
    sub_1001B8FC0(&qword_100354D50, type metadata accessor for QuestionnaireState);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B8DDC(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    type metadata accessor for ConnectionModel(0);
    v5 = &qword_100354F88;
    v6 = type metadata accessor for ConnectionModel;
LABEL_11:
    v7 = v6;
    goto LABEL_12;
  }

  v3 = *(*(v2 + 56) + 122);
  if (v3 != 2 && (v3 & 1) != 0)
  {
    goto LABEL_6;
  }

  if (!a1[4])
  {
    type metadata accessor for QuestionnaireState();
    v5 = &qword_100354D50;
    v6 = type metadata accessor for QuestionnaireState;
    goto LABEL_11;
  }

  sub_1000BA248();

LABEL_6:
  if (*a1)
  {

    PassthroughSubject.send(_:)();
  }

  type metadata accessor for AppEvents();
  v5 = &qword_100354D48;
  v7 = type metadata accessor for AppEvents;
LABEL_12:
  sub_1001B8FC0(v5, v7);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

unint64_t sub_1001B8F54()
{
  result = qword_100364920;
  if (!qword_100364920)
  {
    sub_100008CF0(&qword_100364918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364920);
  }

  return result;
}

uint64_t sub_1001B8FC0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001B901C()
{
  result = qword_100364930;
  if (!qword_100364930)
  {
    sub_100008CF0(&qword_100364928);
    sub_100008CF0(&qword_100364918);
    sub_1001B8F54();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364930);
  }

  return result;
}

uint64_t sub_1001B91D0(uint64_t a1)
{
  if (a1)
  {

    PassthroughSubject.send(_:)();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1001B8FC0(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B9284@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v6;
  v7[5] = v5;
  type metadata accessor for UIMetrics();
  sub_1001B8FC0(&qword_100354D40, type metadata accessor for UIMetrics);

  result = EnvironmentObject.init()();
  *a1 = result;
  a1[1] = v9;
  a1[2] = sub_100114250;
  a1[3] = 0;
  a1[4] = sub_1001B9100;
  a1[5] = 0;
  a1[6] = sub_1001B9168;
  a1[7] = 0;
  a1[8] = sub_1001B93D0;
  a1[9] = v7;
  return result;
}

uint64_t sub_1001B9390()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001B93E4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v37 - v8;
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions;
  *(v1 + 73) = sub_100071A54(0, *(a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel__suggestedActions)) & 1;
  result = sub_100071A54(4, *(a1 + v13));
  *(v1 + 74) = result & 1;
  if (result)
  {
    if (!*(v1 + 24))
    {
      static DispatchTime.now()();
      v15 = *(v1 + 73);
      v41 = *(v1 + 64);
      v16 = *(v1 + 72);
      v39 = v15;
      LODWORD(v40) = v16;
      _s8SOSBuddy4DataCMa_0();
      v17 = swift_allocObject();
      v18 = v17 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_firstBetterTargetInSeconds;
      *v18 = 0;
      *(v18 + 8) = 1;
      *(v17 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endIsOriented) = 2;
      v19 = v17 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endTarget;
      *(v19 + 32) = 0;
      *v19 = 0u;
      *(v19 + 16) = 0u;
      *(v19 + 40) = 1;
      *(v17 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endInOutage) = 2;
      v20 = *(v4 + 16);
      v21 = *(v1 + 32);
      v37 = *(v1 + 48);
      v38 = v21;
      v42 = v1;
      v20(v17 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_startTimestamp, v12, v3);
      *(v17 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_startIsOriented) = v39;
      v22 = v17 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_startTarget;
      v23 = v37;
      *v22 = v38;
      *(v22 + 16) = v23;
      *(v22 + 32) = v41;
      *(v22 + 40) = v40;
      *(v17 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_skimmerDetectedDuringObstruction) = 0;
      v24 = v17 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_firstBetterTargetInSeconds;
      *v24 = 0;
      *(v24 + 8) = 1;
      if (qword_100353A08 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000F53C(v25, qword_100381C68);
      v20(v9, v12, v3);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        LODWORD(v41) = v27;
        v29 = v28;
        v40 = swift_slowAlloc();
        v43 = v40;
        *v29 = 136315138;
        v20(v6, v9, v3);
        v30 = String.init<A>(describing:)();
        v32 = v31;
        v33 = *(v4 + 8);
        v33(v9, v3);
        v34 = sub_10017C9E8(v30, v32, &v43);

        *(v29 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v26, v41, "SatelliteObstruction: started tracking at %s", v29, 0xCu);
        sub_100008964(v40);

        v33(v12, v3);
      }

      else
      {

        v36 = *(v4 + 8);
        v36(v9, v3);
        v36(v12, v3);
      }

      *(v42 + 24) = v17;
    }
  }

  else
  {
    if (*(v1 + 72) == 1)
    {
      v35 = *(a1 + OBJC_IVAR____TtC8SOSBuddy13GuidanceModel___cachedInServiceOutageNow);
    }

    else
    {
      v35 = 0;
    }

    return sub_1001B9E64(v35 & 1);
  }

  return result;
}

uint64_t sub_1001B9848(uint64_t a1)
{
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v47 - v8;
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  v13 = *(a1 + 48);
  if (!v13)
  {
    if ((*(v1 + 74) & 1) == 0)
    {
LABEL_23:
      v23 = 0;
      goto LABEL_24;
    }

LABEL_5:
    v54 = v4;
    v4 = (v1 + 24);
    if (*(v1 + 24))
    {
      goto LABEL_14;
    }

    LODWORD(v52) = 0;
    v53 = 0;
    v16 = 1;
LABEL_29:

    static DispatchTime.now()();
    v24 = *(v1 + 73);
    v51 = *(v1 + 64);
    v25 = *(v1 + 72);
    v49 = v24;
    v50 = v25;
    _s8SOSBuddy4DataCMa_0();
    v14 = swift_allocObject();
    v26 = v14 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_firstBetterTargetInSeconds;
    *v26 = 0;
    *(v26 + 8) = 1;
    *(v14 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endIsOriented) = 2;
    v27 = v14 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endTarget;
    *(v27 + 32) = 0;
    *v27 = 0u;
    *(v27 + 16) = 0u;
    *(v27 + 40) = 1;
    *(v14 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endInOutage) = 2;
    v18 = v54[2];
    v28 = *(v1 + 32);
    v47 = *(v1 + 48);
    v48 = v28;
    (v18)(v14 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_startTimestamp, v12, v3);
    *(v14 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_startIsOriented) = v49;
    v29 = v14 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_startTarget;
    v30 = v47;
    *v29 = v48;
    *(v29 + 16) = v30;
    *(v29 + 32) = v51;
    *(v29 + 40) = v50;
    *(v14 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_skimmerDetectedDuringObstruction) = v52 & 1;
    v31 = v14 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_firstBetterTargetInSeconds;
    *v31 = v53;
    *(v31 + 8) = v16;
    if (qword_100353A08 == -1)
    {
LABEL_30:
      v32 = type metadata accessor for Logger();
      sub_10000F53C(v32, qword_100381C68);
      (v18)(v9, v12, v3);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v52 = v33;
        v36 = v35;
        v53 = swift_slowAlloc();
        v55 = v53;
        *v36 = 136315138;
        (v18)(v6, v9, v3);
        v37 = String.init<A>(describing:)();
        LODWORD(v51) = v34;
        v39 = v38;
        v40 = v54[1];
        v40(v9, v3);
        v41 = sub_10017C9E8(v37, v39, &v55);

        v42 = v36;
        *(v36 + 4) = v41;
        v43 = v52;
        _os_log_impl(&_mh_execute_header, v52, v51, "SatelliteObstruction: started tracking at %s", v42, 0xCu);
        sub_100008964(v53);

        v40(v12, v3);
      }

      else
      {

        v44 = v54[1];
        v44(v9, v3);
        v44(v12, v3);
      }

      *v4 = v14;
    }

LABEL_40:
    swift_once();
    goto LABEL_30;
  }

  v14 = *(v13 + 48);
  v15 = *(v13 + 56);
  v16 = *(v13 + 64);
  if (sub_100071A54(2, v14))
  {
    swift_bridgeObjectRetain_n();
    v17 = 1;
    goto LABEL_9;
  }

  v17 = *(v1 + 74);

  if (!v14)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_5;
  }

LABEL_9:
  v18 = sub_100071A54(5, v14);

  if (v16)
  {
    v19 = 0;
    if (v17)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  v22 = round(v15);
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v19 = v22;
  if ((v17 & 1) == 0)
  {
LABEL_21:
    v23 = sub_100071A54(4, v14);

LABEL_24:

    return sub_1001B9E64(v23 & 1);
  }

LABEL_11:
  v54 = v4;
  v4 = (v1 + 24);
  v20 = *(v1 + 24);
  if (!v20)
  {
    v53 = v19;
    LODWORD(v52) = v18;
    goto LABEL_29;
  }

  if (v18 & 1) == 0 || (*(v20 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_skimmerDetectedDuringObstruction))
  {
LABEL_14:
  }

  *(v20 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_skimmerDetectedDuringObstruction) = 1;
  v45 = v19;

  v46 = v20 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_firstBetterTargetInSeconds;
  *v46 = v45;
  *(v46 + 8) = v16;
}

uint64_t sub_1001B9E64(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 48);
    v5 = *(v1 + 64);
    v6 = *(v1 + 72);
    if ((v6 & 1) == 0)
    {
      *(v2 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endIsOriented) = *(v1 + 73);
    }

    v7 = v2 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endTarget;
    *v7 = v3;
    *(v7 + 16) = v4;
    *(v7 + 32) = v5;
    *(v7 + 40) = v6;
    *(v2 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endInOutage) = result & 1;

    v8 = sub_1001BA00C();

    sub_10017EEA8(2, v8);

    *(v1 + 24) = 0;
  }

  return result;
}

uint64_t sub_1001B9F48()
{

  return swift_deallocClassInstance();
}

__n128 sub_1001B9FAC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  *(v2 + 32) = *a1;
  *(v2 + 48) = v3;
  result = *(a1 + 25);
  *(v2 + 57) = result;
  return result;
}

uint64_t sub_1001BA00C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040A8(&qword_100358320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10027A620;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xE800000000000000;
  static DispatchTime.now()();
  v7 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() < v7)
  {
    v8 = DispatchTime.uptimeNanoseconds.getter();
    v9 = DispatchTime.uptimeNanoseconds.getter();
    v10 = *(v3 + 8);
    v3 += 8;
    v10(v5, v2);
    if (v8 >= v9)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  (*(v3 + 8))(v5, v2);
LABEL_5:
  *(inited + 48) = UInt64._bridgeToObjectiveC()();
  *(inited + 56) = 1701869940;
  *(inited + 64) = 0xE400000000000000;
  sub_100096C9C();
  *(inited + 72) = NSString.init(stringLiteral:)();
  strcpy((inited + 80), "prev_isOrient");
  *(inited + 94) = -4864;
  *(inited + 96) = Bool._bridgeToObjectiveC()();
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = 0x80000001002A2FE0;
  *(inited + 120) = Bool._bridgeToObjectiveC()();
  v11 = sub_10025663C(inited);
  swift_setDeallocating();
  sub_1000040A8(&qword_100358328);
  swift_arrayDestroy();
  if ((*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_startTarget + 40) & 1) == 0)
  {
    v12 = *(v1 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_startTarget + 16);
    isa = Int64._bridgeToObjectiveC()().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v11;
    result = sub_1001894D4(isa, 0x7461735F76657270, 0xEA00000000004449, isUniquelyReferenced_nonNull_native);
    v16 = round(v12 * 57.2957795);
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v16 > -9.22337204e18)
    {
      if (v16 < 9.22337204e18)
      {
        v17 = v31;
        v18 = Int64._bridgeToObjectiveC()().super.super.isa;
        v19 = swift_isUniquelyReferenced_nonNull_native();
        v31 = v17;
        sub_1001894D4(v18, 0x656C655F76657270, 0xEE006E6F69746176, v19);
        v11 = v31;
        goto LABEL_10;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_10:
  v20 = v1 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endTarget;
  if (*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endTarget + 40))
  {
    goto LABEL_16;
  }

  v21 = Int64._bridgeToObjectiveC()().super.super.isa;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v11;
  result = sub_1001894D4(v21, 0x7461735F74736F70, 0xEA00000000004449, v22);
  v11 = v31;
  if (*(v20 + 40))
  {
    goto LABEL_16;
  }

  v23 = round(*(v20 + 16) * 57.2957795);
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_24;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v24 = Int64._bridgeToObjectiveC()().super.super.isa;
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v31 = v11;
  sub_1001894D4(v24, 0x656C655F74736F70, 0xEE006E6F69746176, v25);
  v11 = v31;
LABEL_16:
  if (*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_endIsOriented) != 2)
  {
    v26 = Bool._bridgeToObjectiveC()().super.super.isa;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v11;
    sub_1001894D4(v26, 0x4F73695F74736F70, 0xED0000746E656972, v27);
    v11 = v31;
  }

  if ((*(v1 + OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_firstBetterTargetInSeconds + 8) & 1) == 0)
  {
    v28 = Int64._bridgeToObjectiveC()().super.super.isa;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v31 = v11;
    sub_1001894D4(v28, 0xD000000000000019, 0x80000001002A3000, v29);
    return v31;
  }

  return v11;
}

uint64_t sub_1001BA570()
{
  v1 = OBJC_IVAR____TtC8SOSBuddyP33_39CE8DA68D44C068915A9101E6ACAAB94Data_startTimestamp;
  v2 = type metadata accessor for DispatchTime();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s8SOSBuddy4DataCMa_0()
{
  result = qword_100364B48;
  if (!qword_100364B48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001BA660()
{
  result = type metadata accessor for DispatchTime();
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

double sub_1001BA748@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + 64);
  if (v3 > 4)
  {
    if (v3 - 5 < 2)
    {
      type metadata accessor for RoadsideAssistanceModel();
      sub_1001BB35C(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);
      EnvironmentObject.init()();
      type metadata accessor for UIMetrics();
      sub_1001BB35C(&qword_100354D40, type metadata accessor for UIMetrics);
      EnvironmentObject.init()();
      sub_1001BB228();
      sub_1001BB27C();

      _ConditionalContent<>.init(storage:)();
      v5 = v8;
      v6 = v9;
      v7[0] = v10[0];
      v7[1] = 1;
LABEL_10:
      sub_1000040A8(&qword_100364CB0);
      sub_1000040A8(&qword_100364CD0);
      sub_1001BB068();
      sub_1001BB19C();
      _ConditionalContent<>.init(storage:)();
      sub_1000040A8(&qword_100364C90);
      sub_1000040A8(&qword_100364C98);
      sub_1001BAFDC();
      sub_1001BB2D0();
      _ConditionalContent<>.init(storage:)();

LABEL_15:

      v8 = v5;
      v9 = v6;
      *v10 = *v7;
      *&v10[10] = *&v7[10];
      goto LABEL_16;
    }

    if (v3 != 7)
    {
      v10[24] = 1;
      sub_1001BAF88();
      _ConditionalContent<>.init(storage:)();
      goto LABEL_12;
    }

    type metadata accessor for RoadsideAssistanceModel();
    sub_1001BB35C(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);

    EnvironmentObject.init()();
    type metadata accessor for UIMetrics();
    sub_1001BB35C(&qword_100354D40, type metadata accessor for UIMetrics);
    EnvironmentObject.init()();
    type metadata accessor for QuestionnaireState();
    sub_1001BB35C(&qword_100354D50, type metadata accessor for QuestionnaireState);
    EnvironmentObject.init()();
    sub_1001BAF88();

    _ConditionalContent<>.init(storage:)();
    sub_1000040A8(&qword_100364C90);
    sub_1000040A8(&qword_100364C98);
    sub_1001BAFDC();
    sub_1001BB2D0();
    _ConditionalContent<>.init(storage:)();

LABEL_14:

    goto LABEL_15;
  }

  if (v3 - 1 >= 3)
  {
    if (!*(a1 + 64))
    {
      type metadata accessor for UIMetrics();
      sub_1001BB35C(&qword_100354D40, type metadata accessor for UIMetrics);
      EnvironmentObject.init()();
      State.init(wrappedValue:)();
      sub_1001BB0F4();
      sub_1001BB148();

      _ConditionalContent<>.init(storage:)();
      v5 = v8;
      v6 = v9;
      *v7 = v10[0];
      goto LABEL_10;
    }

    type metadata accessor for RoadsideAssistanceModel();
    sub_1001BB35C(&qword_100356B48, type metadata accessor for RoadsideAssistanceModel);

    EnvironmentObject.init()();
    sub_1001BB228();
    sub_1001BB27C();

    _ConditionalContent<>.init(storage:)();
    v5 = v8;
    v6 = v9;
    v7[0] = v10[0];
    v7[1] = 1;
    sub_1000040A8(&qword_100364CB0);
    sub_1000040A8(&qword_100364CD0);
    sub_1001BB068();
    sub_1001BB19C();
    _ConditionalContent<>.init(storage:)();
    sub_1000040A8(&qword_100364C90);
    sub_1000040A8(&qword_100364C98);
    sub_1001BAFDC();
    sub_1001BB2D0();
    _ConditionalContent<>.init(storage:)();
    goto LABEL_14;
  }

  sub_1001BB0F4();
  sub_1001BB148();

  _ConditionalContent<>.init(storage:)();
  sub_1000040A8(&qword_100364CB0);
  sub_1000040A8(&qword_100364CD0);
  sub_1001BB068();
  sub_1001BB19C();
  _ConditionalContent<>.init(storage:)();
LABEL_12:
  sub_1000040A8(&qword_100364C90);
  sub_1000040A8(&qword_100364C98);
  sub_1001BAFDC();
  sub_1001BB2D0();
  _ConditionalContent<>.init(storage:)();
LABEL_16:
  *a2 = v8;
  a2[1] = v9;
  a2[2] = *v10;
  result = *&v10[10];
  *(a2 + 42) = *&v10[10];
  return result;
}

unint64_t sub_1001BAF88()
{
  result = qword_100364C88;
  if (!qword_100364C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364C88);
  }

  return result;
}

unint64_t sub_1001BAFDC()
{
  result = qword_100364CA0;
  if (!qword_100364CA0)
  {
    sub_100008CF0(&qword_100364C90);
    sub_1001BB068();
    sub_1001BB19C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364CA0);
  }

  return result;
}

unint64_t sub_1001BB068()
{
  result = qword_100364CA8;
  if (!qword_100364CA8)
  {
    sub_100008CF0(&qword_100364CB0);
    sub_1001BB0F4();
    sub_1001BB148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364CA8);
  }

  return result;
}

unint64_t sub_1001BB0F4()
{
  result = qword_100364CB8;
  if (!qword_100364CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364CB8);
  }

  return result;
}

unint64_t sub_1001BB148()
{
  result = qword_100364CC0;
  if (!qword_100364CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364CC0);
  }

  return result;
}

unint64_t sub_1001BB19C()
{
  result = qword_100364CC8;
  if (!qword_100364CC8)
  {
    sub_100008CF0(&qword_100364CD0);
    sub_1001BB228();
    sub_1001BB27C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364CC8);
  }

  return result;
}

unint64_t sub_1001BB228()
{
  result = qword_100364CD8;
  if (!qword_100364CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364CD8);
  }

  return result;
}

unint64_t sub_1001BB27C()
{
  result = qword_100364CE0;
  if (!qword_100364CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364CE0);
  }

  return result;
}

unint64_t sub_1001BB2D0()
{
  result = qword_100364CE8;
  if (!qword_100364CE8)
  {
    sub_100008CF0(&qword_100364C98);
    sub_1001BAF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364CE8);
  }

  return result;
}

uint64_t sub_1001BB35C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001BB3B4()
{
  result = qword_100364CF0;
  if (!qword_100364CF0)
  {
    sub_100008CF0(&qword_100364CF8);
    sub_1001BAFDC();
    sub_1001BB2D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364CF0);
  }

  return result;
}

uint64_t sub_1001BB46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v5 = type metadata accessor for ConnectionAssistantSessionBannerContentView(0);
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000040A8(&qword_100354F50);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ConnectionAssistantBanner.Mode();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000040A8(&qword_100364D00);
  v30 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v28 - v16;
  if (a1)
  {
    if (sub_100071A54(2, *(a1 + 200)))
    {
      v28 = a3;
      v18 = OBJC_IVAR____TtC8SOSBuddy21BannerAppearanceModel_bannerMode;
      swift_beginAccess();
      sub_100006C20(a1 + v18, v10, &qword_100354F50);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_100008FA0(v10, &qword_100354F50);
        v19 = 1;
      }

      else
      {
        sub_1001BB9F8(v10, v14, type metadata accessor for ConnectionAssistantBanner.Mode);
        sub_1001BD838(v14, v7 + *(v5 + 28), type metadata accessor for ConnectionAssistantBanner.Mode);
        type metadata accessor for AppEvents();
        sub_1001BB9B0(&qword_100354D48, type metadata accessor for AppEvents);
        *v7 = EnvironmentObject.init()();
        v7[1] = v22;
        type metadata accessor for BannerAppearanceModel();
        sub_1001BB9B0(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
        v7[2] = EnvironmentObject.init()();
        v7[3] = v23;
        type metadata accessor for UIMetrics();
        sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
        v24 = EnvironmentObject.init()();
        v26 = v25;
        sub_1001C49F0(v14, type metadata accessor for ConnectionAssistantBanner.Mode);
        v7[4] = v24;
        v7[5] = v26;
        sub_1001BB9F8(v7, v17, type metadata accessor for ConnectionAssistantSessionBannerContentView);
        v19 = 0;
      }

      v27 = v28;
      (*(v29 + 56))(v17, v19, 1, v5);
      sub_10000CF4C(v17, v27, &qword_100364D00);
      return (*(v30 + 56))(v27, 0, 1, v15);
    }

    else
    {
      v20 = *(v30 + 56);

      return v20(a3, 1, 1, v15);
    }
  }

  else
  {
    type metadata accessor for BannerAppearanceModel();
    sub_1001BB9B0(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001BB9B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001BB9F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BBA74(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for ConnectionAssistantBanner.Mode();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_1001BBB40(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for ConnectionAssistantBanner.Mode();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1001BBBE4()
{
  sub_10007B2FC();
  if (v0 <= 0x3F)
  {
    sub_1001BBD08(319, &unk_100364D70, type metadata accessor for BannerAppearanceModel, &qword_100354F20, type metadata accessor for BannerAppearanceModel);
    if (v1 <= 0x3F)
    {
      sub_1001BBD08(319, &qword_100359948, type metadata accessor for UIMetrics, &qword_100354D40, type metadata accessor for UIMetrics);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ConnectionAssistantBanner.Mode();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1001BBD08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1001BB9B0(a4, a5);
    v8 = type metadata accessor for EnvironmentObject();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1001BBDE0()
{
  result = qword_100364DB8;
  if (!qword_100364DB8)
  {
    sub_100008CF0(&qword_100364D00);
    sub_1001BB9B0(&qword_100364DC0, type metadata accessor for ConnectionAssistantSessionBannerContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364DB8);
  }

  return result;
}

uint64_t sub_1001BBEB0()
{
  v1 = sub_1000040A8(&qword_100364DC8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v10 - v3;
  v5 = *(v0 + 32);
  if (v5)
  {
    sub_1000089B0(v5 + 48, v10);
    v6 = v11;
    v7 = v12;
    sub_1000088DC(v10, v11);
    (*(v7 + 16))(v13, v6, v7);
    sub_100008964(v10);
    v8 = static Axis.Set.vertical.getter();
    __chkstk_darwin(v8);
    v10[-2] = v0;
    v10[-1] = v13;
    sub_1000040A8(&qword_100364DD0);
    sub_1001BD754();
    ScrollView.init(_:showsIndicators:content:)();
    sub_100009274(&qword_100364DF0, &qword_100364DC8);
    View.scrollDisabled(_:)();
    (*(v2 + 8))(v4, v1);
    return sub_100008964(v13);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001BC114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ConnectionAssistantSessionBannerContentView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  *a3 = static HorizontalAlignment.center.getter();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v9 = sub_1000040A8(&qword_100364DF8);
  sub_1001BC29C(a1, a2, a3 + *(v9 + 44));
  sub_1001BD838(a1, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConnectionAssistantSessionBannerContentView);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_1001BB9F8(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ConnectionAssistantSessionBannerContentView);
  v12 = static Alignment.center.getter();
  v14 = v13;
  result = sub_1000040A8(&qword_100364DD0);
  v16 = (a3 + *(result + 36));
  *v16 = 0;
  v16[1] = 0;
  v16[2] = sub_1001BDA1C;
  v16[3] = v11;
  v16[4] = v12;
  v16[5] = v14;
  return result;
}

uint64_t sub_1001BC29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v76 = a2;
  v80 = a3;
  v79 = sub_1000040A8(&qword_100364E00);
  __chkstk_darwin(v79);
  v77 = &v67 - v4;
  v5 = type metadata accessor for CASessionBannerPossibleButtonView(0);
  __chkstk_darwin(v5);
  v7 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v67 - v9;
  v11 = sub_1000040A8(&qword_100364E08);
  __chkstk_darwin(v11 - 8);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v67 - v15;
  v78 = sub_1000040A8(&qword_100364E10);
  __chkstk_darwin(v78);
  v18 = (&v67 - v17);
  v19 = type metadata accessor for ConnectionAssistantBanner.Mode();
  __chkstk_darwin(v19);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a1 + 16);
  if (v22)
  {
    v24 = v22[20];
    v23 = v22[21];
    v26 = v22[22];
    v25 = v22[23];
    v27 = *(type metadata accessor for ConnectionAssistantSessionBannerContentView(0) + 28);
    swift_storeEnumTagMultiPayload();
    v28 = sub_1001B49E4(a1 + v27, v21);
    sub_1001C49F0(v21, type metadata accessor for ConnectionAssistantBanner.Mode);
    if (v28)
    {
      type metadata accessor for ConnectivityModel();
      sub_1001BB9B0(&qword_100354F78, type metadata accessor for ConnectivityModel);
      v29 = EnvironmentObject.init()();
      v76 = v30;
      v77 = v29;
      type metadata accessor for ConnectionModel(0);
      sub_1001BB9B0(&qword_100354F88, type metadata accessor for ConnectionModel);
      v31 = EnvironmentObject.init()();
      v74 = v32;
      v75 = v31;
      type metadata accessor for GeoLocationModel();
      sub_1001BB9B0(&qword_10035F1D0, type metadata accessor for GeoLocationModel);
      v33 = EnvironmentObject.init()();
      v72 = v34;
      v73 = v33;
      type metadata accessor for GuidanceMessagesModel();
      sub_1001BB9B0(&qword_100357820, type metadata accessor for GuidanceMessagesModel);
      v35 = EnvironmentObject.init()();
      v70 = v36;
      v71 = v35;
      type metadata accessor for GuidanceModel(0);
      sub_1001BB9B0(&qword_100354F80, type metadata accessor for GuidanceModel);
      v37 = EnvironmentObject.init()();
      v68 = v38;
      v69 = v37;
      type metadata accessor for PartnerModel();
      sub_1001BB9B0(&qword_1003561A8, type metadata accessor for PartnerModel);
      v67 = EnvironmentObject.init()();
      v40 = v39;
      type metadata accessor for StewieModel(0);
      sub_1001BB9B0(&qword_1003561B8, type metadata accessor for StewieModel);
      v41 = EnvironmentObject.init()();
      v43 = v42;
      type metadata accessor for TimeZoneModel();
      sub_1001BB9B0(&qword_10035F220, type metadata accessor for TimeZoneModel);
      v44 = EnvironmentObject.init()();
      v46 = v45;
      type metadata accessor for TryOutModel();
      sub_1001BB9B0(&qword_100357990, type metadata accessor for TryOutModel);
      v47 = EnvironmentObject.init()();
      v49 = v48;
      type metadata accessor for UIMetrics();
      sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
      v50 = EnvironmentObject.init()();
      v51 = v76;
      *v18 = v77;
      *(v18 + 1) = v51;
      v52 = v74;
      *(v18 + 2) = v75;
      *(v18 + 3) = v52;
      v53 = v72;
      *(v18 + 4) = v73;
      *(v18 + 5) = v53;
      v54 = v70;
      *(v18 + 6) = v71;
      *(v18 + 7) = v54;
      v55 = v68;
      *(v18 + 8) = v69;
      *(v18 + 9) = v55;
      *(v18 + 10) = v67;
      *(v18 + 11) = v40;
      *(v18 + 12) = v41;
      *(v18 + 13) = v43;
      *(v18 + 14) = v44;
      *(v18 + 15) = v46;
      *(v18 + 16) = v47;
      *(v18 + 17) = v49;
      *(v18 + 18) = v50;
      *(v18 + 19) = v56;
      v18[20] = v24;
      v18[21] = v23;
      v18[22] = v26;
      v18[23] = v25;
      swift_storeEnumTagMultiPayload();
      sub_100158BDC();
      sub_100009274(&qword_100364E28, &qword_100364E00);
      return _ConditionalContent<>.init(storage:)();
    }

    else
    {
      *v16 = static VerticalAlignment.top.getter();
      *(v16 + 1) = 0;
      v16[16] = 0;
      v58 = sub_1000040A8(&qword_100364E18);
      sub_1001BCB9C(a1, &v16[*(v58 + 44)], v24, v23, v26, v25);
      sub_1001BD838(a1 + v27, v10, type metadata accessor for ConnectionAssistantBanner.Mode);
      v59 = &v10[v5[5]];
      type metadata accessor for AppEvents();
      sub_1001BB9B0(&qword_100354D48, type metadata accessor for AppEvents);
      *v59 = EnvironmentObject.init()();
      v59[1] = v60;
      v61 = &v10[v5[6]];
      type metadata accessor for StewieModel(0);
      sub_1001BB9B0(&qword_1003561B8, type metadata accessor for StewieModel);
      *v61 = EnvironmentObject.init()();
      v61[1] = v62;
      v63 = &v10[v5[7]];
      type metadata accessor for UIMetrics();
      sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
      *v63 = EnvironmentObject.init()();
      v63[1] = v64;
      sub_100006C20(v16, v13, &qword_100364E08);
      sub_1001BD838(v10, v7, type metadata accessor for CASessionBannerPossibleButtonView);
      v65 = v77;
      sub_100006C20(v13, v77, &qword_100364E08);
      v66 = sub_1000040A8(&qword_100364E20);
      sub_1001BD838(v7, v65 + *(v66 + 48), type metadata accessor for CASessionBannerPossibleButtonView);
      sub_1001C49F0(v7, type metadata accessor for CASessionBannerPossibleButtonView);
      sub_100008FA0(v13, &qword_100364E08);
      sub_100006C20(v65, v18, &qword_100364E00);
      swift_storeEnumTagMultiPayload();
      sub_100158BDC();
      sub_100009274(&qword_100364E28, &qword_100364E00);
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v65, &qword_100364E00);
      sub_1001C49F0(v10, type metadata accessor for CASessionBannerPossibleButtonView);
      return sub_100008FA0(v16, &qword_100364E08);
    }
  }

  else
  {
    type metadata accessor for BannerAppearanceModel();
    sub_1001BB9B0(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001BCB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v67 = a2;
  v65 = type metadata accessor for CASessionBannerStaticContentTrailingView(0) - 8;
  __chkstk_darwin(v65);
  v66 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v64 = (&v60 - v13);
  v14 = sub_1000040A8(&qword_100364E30);
  __chkstk_darwin(v14 - 8);
  v16 = &v60 - v15;
  v17 = sub_1000040A8(&qword_100364E38);
  v18 = v17 - 8;
  __chkstk_darwin(v17);
  v20 = &v60 - v19;
  v21 = sub_1000040A8(&qword_100364E40);
  v22 = v21 - 8;
  __chkstk_darwin(v21);
  v63 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v60 - v25;
  __chkstk_darwin(v27);
  v68 = &v60 - v28;
  v29 = sub_1000040A8(&qword_100364E48);
  __chkstk_darwin(v29 - 8);
  v62 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v60 - v32;
  *v33 = static HorizontalAlignment.center.getter();
  *(v33 + 1) = 0;
  v33[16] = 1;
  v34 = &v33[*(sub_1000040A8(&qword_100364E50) + 44)];
  v60 = v33;
  v61 = a1;
  sub_1001BD200(a1, v34);
  *v16 = static VerticalAlignment.top.getter();
  *(v16 + 1) = 0;
  v16[16] = 0;
  v35 = &v16[*(sub_1000040A8(&qword_100364E58) + 44)];
  v36 = *(type metadata accessor for ConnectionAssistantSessionBannerContentView(0) + 28);
  sub_1001BD838(a1 + v36, v35, type metadata accessor for ConnectionAssistantBanner.Mode);
  LOBYTE(a1) = static Edge.Set.top.getter();
  v76.origin.x = a3;
  v76.origin.y = a4;
  v76.size.width = a5;
  v76.size.height = a6;
  CGRectGetHeight(v76);
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = v35 + *(sub_1000040A8(&qword_100364E60) + 36);
  *v45 = a1;
  *(v45 + 8) = v38;
  *(v45 + 16) = v40;
  *(v45 + 24) = v42;
  *(v45 + 32) = v44;
  *(v45 + 40) = 0;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10000CF4C(v16, v20, &qword_100364E30);
  v46 = &v20[*(v18 + 44)];
  v47 = v74;
  *(v46 + 4) = v73;
  *(v46 + 5) = v47;
  *(v46 + 6) = v75;
  v48 = v70;
  *v46 = v69;
  *(v46 + 1) = v48;
  v49 = v72;
  *(v46 + 2) = v71;
  *(v46 + 3) = v49;
  LOBYTE(v16) = static Edge.Set.all.getter();
  sub_10000CF4C(v20, v26, &qword_100364E38);
  v50 = &v26[*(v22 + 44)];
  *v50 = v16;
  *(v50 + 1) = 0;
  *(v50 + 2) = 0;
  *(v50 + 24) = xmmword_10028D380;
  v50[40] = 0;
  v51 = v68;
  sub_10000CF4C(v26, v68, &qword_100364E40);
  v52 = v64;
  sub_1001BD838(v61 + v36, v64 + *(v65 + 28), type metadata accessor for ConnectionAssistantBanner.Mode);
  type metadata accessor for UIMetrics();
  sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
  *v52 = EnvironmentObject.init()();
  v52[1] = v53;
  v54 = v62;
  sub_100006C20(v33, v62, &qword_100364E48);
  v55 = v63;
  sub_100006C20(v51, v63, &qword_100364E40);
  v56 = v66;
  sub_1001BD838(v52, v66, type metadata accessor for CASessionBannerStaticContentTrailingView);
  v57 = v67;
  sub_100006C20(v54, v67, &qword_100364E48);
  v58 = sub_1000040A8(&qword_100364E68);
  sub_100006C20(v55, v57 + *(v58 + 48), &qword_100364E40);
  sub_1001BD838(v56, v57 + *(v58 + 64), type metadata accessor for CASessionBannerStaticContentTrailingView);
  sub_1001C49F0(v52, type metadata accessor for CASessionBannerStaticContentTrailingView);
  sub_100008FA0(v68, &qword_100364E40);
  sub_100008FA0(v60, &qword_100364E48);
  sub_1001C49F0(v56, type metadata accessor for CASessionBannerStaticContentTrailingView);
  sub_100008FA0(v55, &qword_100364E40);
  return sub_100008FA0(v54, &qword_100364E48);
}

uint64_t sub_1001BD200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CASessionBannerStaticContentLeadingView(0);
  __chkstk_darwin(v4);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v24[-v8];
  v10 = type metadata accessor for ConnectionAssistantBanner.Mode();
  __chkstk_darwin(v10);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v24[-v14];
  v16 = *(type metadata accessor for ConnectionAssistantSessionBannerContentView(0) + 28);
  sub_1001BD838(a1 + v16, v15, type metadata accessor for ConnectionAssistantBanner.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    sub_1001C49F0(v15, type metadata accessor for ConnectionAssistantBanner.Mode);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  sub_1001BD838(a1 + v16, v9 + *(v4 + 20), type metadata accessor for ConnectionAssistantBanner.Mode);
  type metadata accessor for UIMetrics();
  sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
  *v9 = EnvironmentObject.init()();
  v9[1] = v18;
  sub_1001BD838(a1 + v16, v12, type metadata accessor for ConnectionAssistantBanner.Mode);
  v19 = swift_getEnumCaseMultiPayload();
  if (v19)
  {
    sub_1001C49F0(v12, type metadata accessor for ConnectionAssistantBanner.Mode);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  sub_1001BD838(v9, v6, type metadata accessor for CASessionBannerStaticContentLeadingView);
  *a2 = 0;
  *(a2 + 8) = v25;
  *(a2 + 9) = EnumCaseMultiPayload != 0;
  v21 = sub_1000040A8(&qword_100364E70);
  sub_1001BD838(v6, a2 + *(v21 + 48), type metadata accessor for CASessionBannerStaticContentLeadingView);
  v22 = a2 + *(v21 + 64);
  *v22 = 0;
  *(v22 + 8) = v20;
  *(v22 + 9) = v19 != 0;
  sub_1001C49F0(v9, type metadata accessor for CASessionBannerStaticContentLeadingView);
  return sub_1001C49F0(v6, type metadata accessor for CASessionBannerStaticContentLeadingView);
}

uint64_t sub_1001BD504(void *a1, double a2, double a3)
{
  if (qword_100353A28 != -1)
  {
    swift_once();
  }

  v6 = ceil(a3);
  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381CC8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v10 = 136446466;
    v19 = a2;
    v20 = a3;
    type metadata accessor for CGSize(0);
    v11 = String.init<A>(describing:)();
    v13 = sub_10017C9E8(v11, v12, &v18);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    v19 = a2;
    v20 = v6;
    v14 = String.init<A>(describing:)();
    v16 = sub_10017C9E8(v14, v15, &v18);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Banner content changed, size: %{public}s, reporting rounded: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  if (*a1)
  {
    v19 = a2;
    v20 = v6;

    PassthroughSubject.send(_:)();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1001BB9B0(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_1001BD754()
{
  result = qword_100364DD8;
  if (!qword_100364DD8)
  {
    sub_100008CF0(&qword_100364DD0);
    sub_100009274(&qword_100364DE0, &qword_100364DE8);
    sub_100009274(&qword_100360B30, &qword_100360B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100364DD8);
  }

  return result;
}

uint64_t sub_1001BD838(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001BD8A0()
{
  v1 = (type metadata accessor for ConnectionAssistantSessionBannerContentView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[9];
  type metadata accessor for ConnectionAssistantBanner.Mode();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(type metadata accessor for ConnectionClosed(0) + 20);
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001BDA1C(double a1, double a2)
{
  v5 = *(type metadata accessor for ConnectionAssistantSessionBannerContentView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1001BD504(v6, a1, a2);
}

uint64_t sub_1001BDA94@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v80 = type metadata accessor for SymbolVariants();
  v78 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1000040A8(&qword_10035B5E0);
  __chkstk_darwin(v81);
  v79 = &v76 - v3;
  v86 = sub_1000040A8(&qword_1003651A8);
  __chkstk_darwin(v86);
  v82 = (&v76 - v4);
  v88 = sub_1000040A8(&qword_1003651B0);
  __chkstk_darwin(v88);
  v6 = (&v76 - v5);
  v84 = sub_1000040A8(&qword_1003651B8);
  __chkstk_darwin(v84);
  v85 = &v76 - v7;
  v90 = sub_1000040A8(&qword_1003651C0);
  __chkstk_darwin(v90);
  v87 = &v76 - v8;
  v83 = sub_1000040A8(&qword_1003651C8);
  __chkstk_darwin(v83);
  v10 = &v76 - v9;
  v11 = type metadata accessor for ConnectionAssistantBanner.Mode();
  __chkstk_darwin(v11);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000040A8(&qword_1003651D0);
  __chkstk_darwin(v14 - 8);
  v89 = &v76 - v15;
  v16 = *v1;
  if (*v1)
  {
    sub_1000089B0(v16 + 48, &v119);
    v17 = *(&v120 + 1);
    v18 = v121;
    sub_1000088DC(&v119, *(&v120 + 1));
    (*(v18 + 16))(v128, v17, v18);
    sub_100008964(&v119);
    v19 = type metadata accessor for CASessionBannerStaticContentLeadingView(0);
    sub_1001BD838(v1 + *(v19 + 20), v13, type metadata accessor for ConnectionAssistantBanner.Mode);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 4)
        {
          sub_100159414(&v119);
          v107 = v125;
          v108 = v126;
          v109[0] = v127[0];
          *(v109 + 10) = *(v127 + 10);
          v103 = v121;
          v104 = v122;
          v105 = v123;
          v106 = v124;
          v101 = v119;
          v102 = v120;
          sub_1000040A8(&qword_100360E30);
          sub_100159420();
          _ConditionalContent<>.init(storage:)();
          v71 = v117;
          v6[6] = v116;
          v6[7] = v71;
          v6[8] = v118[0];
          *(v6 + 138) = *(v118 + 10);
          v72 = v113;
          v6[2] = v112;
          v6[3] = v72;
          v73 = v115;
          v6[4] = v114;
          v6[5] = v73;
          v74 = v111;
          *v6 = v110;
          v6[1] = v74;
          swift_storeEnumTagMultiPayload();
          sub_1000040A8(&qword_100360E40);
          sub_1001C5988();
          sub_1001597C0();
          v42 = v89;
          _ConditionalContent<>.init(storage:)();
          goto LABEL_13;
        }

        goto LABEL_8;
      }

      v53 = static HorizontalAlignment.leading.getter();
      v54 = v82;
      *v82 = v53;
      v54[1] = 0;
      *(v54 + 16) = 0;
      sub_1000089B0(v16 + 48, &v119);
      v55 = *(&v120 + 1);
      v56 = v121;
      sub_1000088DC(&v119, *(&v120 + 1));
      (*(v56 + 40))(v55, v56);
      v57 = static Font.largeTitle.getter();
      sub_1000040A8(&qword_100360EB0);
      v58 = Image.init(systemName:)();
      KeyPath = swift_getKeyPath();
      *&v110 = v58;
      *(&v110 + 1) = KeyPath;
      *&v111 = v57;

      v60 = v77;
      static SymbolVariants.fill.getter();
      sub_1000040A8(&qword_100355050);
      sub_10000C700();
      v61 = v79;
      View.symbolVariant(_:)();
      (*(v78 + 8))(v60, v80);

      *(v61 + *(v81 + 36)) = static Color.green.getter();
      sub_1000A4A68();
      v62 = v82;
      View.accessibility(hidden:)();
      sub_100008FA0(v61, &qword_10035B5E0);

      sub_100008964(&v119);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v63 = (v62 + *(sub_1000040A8(&qword_100365208) + 36));
      v64 = v124;
      v63[4] = v123;
      v63[5] = v64;
      v63[6] = v125;
      v65 = v120;
      *v63 = v119;
      v63[1] = v65;
      v66 = v122;
      v63[2] = v121;
      v63[3] = v66;
      v67 = static Edge.Set.all.getter();
      v68 = v85;
      v69 = v62 + *(v86 + 36);
      *v69 = v67;
      *(v69 + 8) = xmmword_10028D390;
      *(v69 + 24) = xmmword_10028D3A0;
      *(v69 + 40) = 0;
      sub_100006C20(v62, v68, &qword_1003651A8);
      swift_storeEnumTagMultiPayload();
      sub_1001C5A14();
      sub_1001C5B58();
      v70 = v87;
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v70, v6, &qword_1003651C0);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100360E40);
      sub_1001C5988();
      sub_1001597C0();
      v42 = v89;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v70, &qword_1003651C0);
      v51 = v62;
      v52 = &qword_1003651A8;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_1001C49F0(v13, type metadata accessor for ConnectionClosed);
        }

LABEL_8:
        type metadata accessor for ConnectionClosedModel(0);
        sub_1001BB9B0(&qword_10035B1A8, type metadata accessor for ConnectionClosedModel);
        v21 = EnvironmentObject.init()();
        v86 = v22;
        v87 = v21;
        type metadata accessor for ConnectivityModel();
        sub_1001BB9B0(&qword_100354F78, type metadata accessor for ConnectivityModel);
        v23 = EnvironmentObject.init()();
        v84 = v24;
        v85 = v23;
        type metadata accessor for GuidanceModel(0);
        sub_1001BB9B0(&qword_100354F80, type metadata accessor for GuidanceModel);
        v25 = EnvironmentObject.init()();
        v27 = v26;
        type metadata accessor for OrientationModel();
        sub_1001BB9B0(&qword_10035B1B0, type metadata accessor for OrientationModel);
        v28 = EnvironmentObject.init()();
        v30 = v29;
        type metadata accessor for StewieModel(0);
        sub_1001BB9B0(&qword_1003561B8, type metadata accessor for StewieModel);
        v31 = EnvironmentObject.init()();
        v33 = v32;
        type metadata accessor for UIMetrics();
        sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
        v34 = EnvironmentObject.init()();
        v36 = v35;
        v37 = static Edge.Set.all.getter();
        LOBYTE(v110) = 0;
        *&v92 = v87;
        *(&v92 + 1) = v86;
        *&v93 = v85;
        *(&v93 + 1) = v84;
        *&v94 = v25;
        *(&v94 + 1) = v27;
        *&v95 = v28;
        *(&v95 + 1) = v30;
        *&v96 = v31;
        *(&v96 + 1) = v33;
        *&v97 = v34;
        *(&v97 + 1) = v36;
        LOBYTE(v98) = 2;
        v99 = 0;
        LOBYTE(v100[0]) = v37;
        DWORD1(v100[0]) = *(&v119 + 3);
        *(v100 + 1) = v119;
        *(v100 + 8) = xmmword_10028D390;
        *(&v100[1] + 8) = xmmword_10028D3A0;
        BYTE8(v100[2]) = 0;
        *(v127 + 9) = *(&v100[1] + 9);
        v126 = v100[0];
        v127[0] = v100[1];
        v119 = v92;
        v120 = v93;
        v124 = v97;
        v125 = v98;
        v122 = v95;
        v123 = v96;
        v121 = v94;
        sub_1001598D8(&v119);
        v107 = v125;
        v108 = v126;
        v109[0] = v127[0];
        *(v109 + 10) = *(v127 + 10);
        v103 = v121;
        v104 = v122;
        v105 = v123;
        v106 = v124;
        v101 = v119;
        v102 = v120;
        sub_100006C20(&v92, &v110, &qword_100360E30);
        sub_1000040A8(&qword_100360E30);
        sub_100159420();
        _ConditionalContent<>.init(storage:)();
        v38 = v117;
        v6[6] = v116;
        v6[7] = v38;
        v6[8] = v118[0];
        *(v6 + 138) = *(v118 + 10);
        v39 = v113;
        v6[2] = v112;
        v6[3] = v39;
        v40 = v115;
        v6[4] = v114;
        v6[5] = v40;
        v41 = v111;
        *v6 = v110;
        v6[1] = v41;
        swift_storeEnumTagMultiPayload();
        sub_1000040A8(&qword_100360E40);
        sub_1001C5988();
        sub_1001597C0();
        v42 = v89;
        _ConditionalContent<>.init(storage:)();
        sub_100008FA0(&v92, &qword_100360E30);
LABEL_13:
        sub_10000CF4C(v42, v91, &qword_1003651D0);
        return sub_100008964(v128);
      }

      *v10 = static HorizontalAlignment.leading.getter();
      *(v10 + 1) = 0;
      v10[16] = 0;
      v43 = sub_1000040A8(&qword_100360EB8);
      sub_1001BE910(&v10[*(v43 + 44)]);
      static Alignment.center.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      v44 = &v10[*(sub_1000040A8(&qword_1003651F0) + 36)];
      v45 = v124;
      *(v44 + 4) = v123;
      *(v44 + 5) = v45;
      *(v44 + 6) = v125;
      v46 = v120;
      *v44 = v119;
      *(v44 + 1) = v46;
      v47 = v122;
      *(v44 + 2) = v121;
      *(v44 + 3) = v47;
      v48 = static Edge.Set.all.getter();
      v49 = &v10[*(v83 + 36)];
      *v49 = v48;
      *(v49 + 8) = xmmword_10028D390;
      *(v49 + 24) = xmmword_10028D3A0;
      v49[40] = 0;
      sub_100006C20(v10, v85, &qword_1003651C8);
      swift_storeEnumTagMultiPayload();
      sub_1001C5A14();
      sub_1001C5B58();
      v50 = v87;
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v50, v6, &qword_1003651C0);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100360E40);
      sub_1001C5988();
      sub_1001597C0();
      v42 = v89;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v50, &qword_1003651C0);
      v51 = v10;
      v52 = &qword_1003651C8;
    }

    sub_100008FA0(v51, v52);
    goto LABEL_13;
  }

  type metadata accessor for UIMetrics();
  sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001BE910@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = type metadata accessor for SymbolVariants();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000040A8(&qword_10035D250);
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v28 = &v28 - v5;
  v36 = sub_1000040A8(&qword_100360EC0);
  v34 = *(v36 - 8);
  __chkstk_darwin(v36);
  v30 = &v28 - v6;
  v33 = sub_1000040A8(&qword_10035D258) - 8;
  __chkstk_darwin(v33);
  v32 = &v28 - v7;
  v31 = sub_1000040A8(&qword_100360EC8);
  __chkstk_darwin(v31);
  v29 = &v28 - v8;
  v9 = Image.init(_internalSystemName:)();
  v10 = static Font.largeTitle.getter();
  KeyPath = swift_getKeyPath();
  v39 = v9;
  v40 = KeyPath;
  v41 = v10;
  static SymbolVariants.circle.getter();
  v12 = sub_1000040A8(&qword_100355050);
  v13 = sub_10000C700();
  View.symbolVariant(_:)();
  v14 = *(v2 + 8);
  v14(v4, v1);

  static SymbolVariants.fill.getter();
  v39 = v12;
  v40 = v13;
  swift_getOpaqueTypeConformance2();
  v15 = v30;
  v16 = v35;
  v17 = v28;
  View.symbolVariant(_:)();
  v14(v4, v1);
  (*(v37 + 8))(v17, v16);
  v18 = static Color.white.getter();
  v19 = static Color.red.getter();
  v20 = v32;
  (*(v34 + 32))(v32, v15, v36);
  v21 = (v20 + *(v33 + 44));
  *v21 = v18;
  v21[1] = v19;
  v22 = v29;
  v23 = &v29[*(v31 + 36)];
  v24 = *(sub_1000040A8(&qword_100358500) + 28);
  v25 = enum case for Image.Scale.large(_:);
  v26 = type metadata accessor for Image.Scale();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  *v23 = swift_getKeyPath();
  sub_10000CF4C(v20, v22, &qword_10035D258);
  sub_100159910();
  View.accessibility(hidden:)();
  return sub_100008FA0(v22, &qword_100360EC8);
}

uint64_t sub_1001BEDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for CASessionBannerConnectionClosedView(0);
  __chkstk_darwin(v3);
  v5 = (&v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for ConnectionClosed(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1000040A8(&qword_100365118);
  __chkstk_darwin(v56);
  v59 = (&v52 - v9);
  v53 = sub_1000040A8(&qword_100365120);
  __chkstk_darwin(v53);
  v11 = &v52 - v10;
  v12 = sub_1000040A8(&qword_100365128);
  __chkstk_darwin(v12);
  v14 = (&v52 - v13);
  v54 = sub_1000040A8(&qword_100365130);
  __chkstk_darwin(v54);
  v16 = &v52 - v15;
  v57 = sub_1000040A8(&qword_100365138);
  __chkstk_darwin(v57);
  v55 = &v52 - v17;
  v18 = type metadata accessor for ConnectionAssistantBanner.Mode();
  __chkstk_darwin(v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000040A8(&qword_100365140);
  __chkstk_darwin(v21 - 8);
  v60 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v58 = &v52 - v24;
  sub_1001BD838(a1, v20, type metadata accessor for ConnectionAssistantBanner.Mode);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      type metadata accessor for UIMetrics();
      sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
      *v14 = EnvironmentObject.init()();
      v14[1] = v37;
      swift_storeEnumTagMultiPayload();
      sub_1001C5774();
      sub_1001BB9B0(&qword_100365170, type metadata accessor for CASessionBannerConnectionClosedView);

      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v16, v11, &qword_100365130);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100365180);
      sub_1001C56B8();
      sub_1001C57C8();
      v38 = v55;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v16, &qword_100365130);
LABEL_12:
      sub_100006C20(v38, v59, &qword_100365138);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100365150);
      sub_1001C562C();
      sub_1001C58FC();
      v28 = v58;
      _ConditionalContent<>.init(storage:)();

      sub_100008FA0(v38, &qword_100365138);
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1001BB9F8(v20, v8, type metadata accessor for ConnectionClosed);
      sub_1001BD838(v8, v5 + *(v3 + 20), type metadata accessor for ConnectionClosed);
      type metadata accessor for UIMetrics();
      sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
      *v5 = EnvironmentObject.init()();
      v5[1] = v26;
      sub_1001BD838(v5, v14, type metadata accessor for CASessionBannerConnectionClosedView);
      swift_storeEnumTagMultiPayload();
      sub_1001C5774();
      sub_1001BB9B0(&qword_100365170, type metadata accessor for CASessionBannerConnectionClosedView);
      _ConditionalContent<>.init(storage:)();
      sub_100006C20(v16, v11, &qword_100365130);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100365180);
      sub_1001C56B8();
      sub_1001C57C8();
      v27 = v55;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v16, &qword_100365130);
      sub_100006C20(v27, v59, &qword_100365138);
      swift_storeEnumTagMultiPayload();
      sub_1000040A8(&qword_100365150);
      sub_1001C562C();
      sub_1001C58FC();
      v28 = v58;
      _ConditionalContent<>.init(storage:)();
      sub_100008FA0(v27, &qword_100365138);
      sub_1001C49F0(v5, type metadata accessor for CASessionBannerConnectionClosedView);
      sub_1001C49F0(v8, type metadata accessor for ConnectionClosed);
      goto LABEL_14;
    }

    v41 = *v20;
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
    *&v62 = EnvironmentObject.init()();
    *(&v62 + 1) = v42;
    LOWORD(v63) = v41;
LABEL_11:
    sub_1001C5854();
    sub_1001C58A8();

    _ConditionalContent<>.init(storage:)();
    v43 = v66;
    v44 = BYTE1(v66);
    *v11 = v65;
    v11[16] = v43;
    v11[17] = v44;
    swift_storeEnumTagMultiPayload();
    sub_1000040A8(&qword_100365180);
    sub_1001C56B8();
    sub_1001C57C8();
    v38 = v55;
    _ConditionalContent<>.init(storage:)();
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v39 = *v20;
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
    *&v62 = EnvironmentObject.init()();
    *(&v62 + 1) = v40;
    LOBYTE(v63) = v39;
    BYTE1(v63) = 1;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 4)
  {
    type metadata accessor for ConnectivityModel();
    sub_1001BB9B0(&qword_100354F78, type metadata accessor for ConnectivityModel);
    v29 = EnvironmentObject.init()();
    v31 = v30;
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
    v32 = EnvironmentObject.init()();
    *&v62 = v29;
    *(&v62 + 1) = v31;
    *&v63 = v32;
    *(&v63 + 1) = v33;
    v64 = 0;
    sub_1001C55D8();

    _ConditionalContent<>.init(storage:)();
    v34 = v67;
    v35 = v66;
    v36 = v59;
    *v59 = v65;
    v36[1] = v35;
    *(v36 + 32) = v34;
    swift_storeEnumTagMultiPayload();
    sub_1000040A8(&qword_100365150);
    sub_1001C562C();
    sub_1001C58FC();
    v28 = v58;
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v62 = 0u;
    v63 = 0u;
    v64 = 1;
    sub_1001C55D8();
    _ConditionalContent<>.init(storage:)();
    v45 = v67;
    v46 = v66;
    v47 = v59;
    *v59 = v65;
    v47[1] = v46;
    *(v47 + 32) = v45;
    swift_storeEnumTagMultiPayload();
    sub_1000040A8(&qword_100365150);
    sub_1001C562C();
    sub_1001C58FC();
    v28 = v58;
    _ConditionalContent<>.init(storage:)();
  }

LABEL_14:
  v48 = v60;
  sub_100006C20(v28, v60, &qword_100365140);
  v49 = v61;
  sub_100006C20(v48, v61, &qword_100365140);
  v50 = v49 + *(sub_1000040A8(&qword_1003651A0) + 48);
  *v50 = 0;
  *(v50 + 8) = 0;
  sub_100008FA0(v28, &qword_100365140);
  return sub_100008FA0(v48, &qword_100365140);
}

uint64_t sub_1001BF9B4@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_1000040A8(&qword_100365110);
  return sub_1001BEDDC(v1, a1 + *(v3 + 44));
}

uint64_t sub_1001BFA04@<X0>(void *a1@<X8>)
{
  v78 = a1;
  v2 = type metadata accessor for Font.Leading();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v1;
  v6 = *v1;
  if (*v1)
  {
    v79 = *v1;
    sub_1000089B0(v6 + 48, &v107);
    v7 = v110;
    v8 = v111;
    sub_1000088DC(&v107, v110);
    (*(v8 + 16))(v152, v7, v8);
    sub_100008964(&v107);
    v9 = [objc_opt_self() mainBundle];
    v153._object = 0x80000001002A0100;
    v10._object = 0x80000001002A00E0;
    v153._countAndFlagsBits = 0xD00000000000003DLL;
    v10._countAndFlagsBits = 0xD000000000000010;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v153);

    v107 = v12;
    v75 = sub_100031770();
    v13 = Text.init<A>(_:)();
    v15 = v14;
    v17 = v16;
    v86 = v18;
    static Font.footnote.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    LODWORD(v73) = enum case for Font.Leading.tight(_:);
    v19 = *(v3 + 104);
    v74 = v3 + 104;
    v76 = v19;
    v19(v5);
    Font.leading(_:)();
    v70 = v2;

    v20 = *(v3 + 8);
    v71 = v3 + 8;
    v72 = v20;
    v20(v5, v2);
    v21 = Text.font(_:)();
    v69 = v5;
    v23 = v22;
    LOBYTE(v8) = v24;

    sub_1000317C4(v13, v15, v17 & 1);

    v25 = v79;
    sub_1000089B0(v79 + 48, &v107);
    v26 = v110;
    v27 = v111;
    sub_1000088DC(&v107, v110);
    (*(v27 + 96))(v26, v27);
    v28 = Text.foregroundColor(_:)();
    v84 = v29;
    v85 = v28;
    LOBYTE(v26) = v30;
    v86 = v31;
    sub_1000317C4(v21, v23, v8 & 1);

    sub_100008964(&v107);
    KeyPath = swift_getKeyPath();
    v83 = swift_getKeyPath();
    v80 = v26 & 1;
    LOBYTE(v107._countAndFlagsBits) = v26 & 1;
    LOBYTE(v101) = 0;
    v81 = swift_getKeyPath();
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    sub_1000089B0(v25 + 48, &v107);
    v32 = v110;
    v33 = v111;
    sub_1000088DC(&v107, v110);
    v34 = type metadata accessor for CASessionBannerConnectionClosedView(0);
    *&v101 = (*(v33 + 152))(&v77[*(v34 + 20)], v32, v33);
    *(&v101 + 1) = v35;
    v36 = Text.init<A>(_:)();
    v38 = v37;
    LOBYTE(v25) = v39;
    sub_100008964(&v107);
    static Font.body.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v41 = v69;
    v40 = v70;
    v76(v69, v73, v70);
    Font.leading(_:)();

    v72(v41, v40);
    v42 = Text.font(_:)();
    v44 = v43;
    LOBYTE(v23) = v45;

    sub_1000317C4(v36, v38, v25 & 1);

    sub_1000089B0(v79 + 48, &v107);
    v46 = v110;
    v47 = v111;
    sub_1000088DC(&v107, v110);
    (*(v47 + 80))(v46, v47);
    v74 = Text.foregroundColor(_:)();
    v79 = v48;
    LOBYTE(v46) = v49;
    v51 = v50;
    v69 = v50;
    sub_1000317C4(v42, v44, v23 & 1);

    sub_100008964(&v107);
    v70 = swift_getKeyPath();
    v73 = swift_getKeyPath();
    LOBYTE(v107._countAndFlagsBits) = v46 & 1;
    LOBYTE(v23) = v46 & 1;
    v68 = v46 & 1;
    LOBYTE(v101) = 0;
    v52 = swift_getKeyPath();
    v67 = v52;
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    type metadata accessor for ConnectionModel(0);
    sub_1001BB9B0(&qword_100354F88, type metadata accessor for ConnectionModel);
    v76 = EnvironmentObject.init()();
    v77 = v53;
    type metadata accessor for ConnectivityModel();
    sub_1001BB9B0(&qword_100354F78, type metadata accessor for ConnectivityModel);
    v72 = EnvironmentObject.init()();
    v75 = v54;
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
    v55 = EnvironmentObject.init()();
    v71 = v56;
    *&v95 = v85;
    *(&v95 + 1) = v84;
    LOBYTE(v96) = v80;
    *(&v96 + 1) = *v147;
    DWORD1(v96) = *&v147[3];
    *(&v96 + 1) = v86;
    *&v97 = KeyPath;
    *(&v97 + 1) = 2;
    LOBYTE(v98) = 0;
    *(&v98 + 1) = *v146;
    DWORD1(v98) = *&v146[3];
    *(&v98 + 1) = v83;
    LOBYTE(v99) = 0;
    *(&v99 + 1) = *v148;
    DWORD1(v99) = *&v148[3];
    *(&v99 + 1) = v81;
    *v100 = 0x3FE0000000000000;
    *&v100[8] = v149;
    *&v100[40] = v151;
    *&v100[24] = v150;
    v87[2] = v97;
    v87[3] = v98;
    v87[0] = v95;
    v87[1] = v96;
    v87[6] = *&v100[16];
    v87[7] = *&v100[32];
    v87[4] = v99;
    v87[5] = *v100;
    v57 = v74;
    *&v101 = v74;
    *(&v101 + 1) = v79;
    LOBYTE(v102) = v23;
    *(&v102 + 1) = *v144;
    DWORD1(v102) = *&v144[3];
    *(&v102 + 1) = v51;
    v58 = v70;
    *&v103 = v70;
    *(&v103 + 1) = 3;
    LOBYTE(v104) = 0;
    *(&v104 + 1) = *v143;
    DWORD1(v104) = *&v143[3];
    v59 = v73;
    *(&v104 + 1) = v73;
    LOBYTE(v105) = 0;
    DWORD1(v105) = *(v145 + 3);
    *(&v105 + 1) = v145[0];
    *(&v105 + 1) = v52;
    *v106 = 0x3FE0000000000000;
    *&v106[8] = v88;
    *&v106[24] = v89;
    *&v106[40] = v90;
    *&v106[56] = v91;
    *&v106[72] = v92;
    *&v106[88] = v93;
    *&v106[104] = v94;
    *(&v87[18] + 8) = *&v106[80];
    *(&v87[19] + 8) = *&v106[96];
    *(&v87[16] + 8) = *&v106[48];
    *(&v87[17] + 8) = *&v106[64];
    *(&v87[8] + 8) = v101;
    *(&v87[12] + 8) = v105;
    *(&v87[11] + 8) = v104;
    *(&v87[10] + 8) = v103;
    *(&v87[9] + 8) = v102;
    *(&v87[15] + 8) = *&v106[32];
    *(&v87[14] + 8) = *&v106[16];
    *(&v87[13] + 8) = *v106;
    *&v87[8] = *(&v151 + 1);
    *(&v87[20] + 1) = *(&v94 + 1);
    sub_100006C20(&v95, &v107, &qword_1003610D0);
    sub_100006C20(&v101, &v107, &qword_100360FC8);

    v60 = v76;

    v61 = v72;

    sub_100008964(v152);
    v62 = v78;
    memcpy(v78, v87, 0x150uLL);
    v63 = v77;
    v62[42] = v60;
    v62[43] = v63;
    v64 = v75;
    v62[44] = v61;
    v62[45] = v64;
    v65 = v71;
    v62[46] = v55;
    v62[47] = v65;

    v123 = v91;
    v124 = v92;
    v125 = v93;
    v126 = v94;
    v120 = v88;
    v121 = v89;
    v107._countAndFlagsBits = v57;
    v107._object = v79;
    v108 = v68;
    *v109 = *v144;
    *&v109[3] = *&v144[3];
    v110 = v69;
    v111 = v58;
    v112 = 3;
    v113 = 0;
    *v114 = *v143;
    *&v114[3] = *&v143[3];
    v115 = v59;
    v116 = 0;
    *&v117[3] = *(v145 + 3);
    *v117 = v145[0];
    v118 = v67;
    v119 = 0x3FE0000000000000;
    v122 = v90;
    sub_100008FA0(&v107, &qword_100360FC8);
    v127[0] = v85;
    v127[1] = v84;
    v128 = v80;
    *v129 = *v147;
    *&v129[3] = *&v147[3];
    v130 = v86;
    v131 = KeyPath;
    v132 = 2;
    v133 = 0;
    *v134 = *v146;
    *&v134[3] = *&v146[3];
    v135 = v83;
    v136 = 0;
    *&v137[3] = *&v148[3];
    *v137 = *v148;
    v138 = v81;
    v139 = 0x3FE0000000000000;
    v140 = v149;
    v141 = v150;
    v142 = v151;
    return sub_100008FA0(v127, &qword_1003610D0);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C0550@<X0>(void *a1@<X0>, int a2@<W2>, void *a3@<X8>)
{
  LODWORD(v68) = a2;
  v69 = a3;
  v4 = type metadata accessor for Font.Leading();
  v78 = *(v4 - 8);
  __chkstk_darwin(v4);
  v73 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1[9];
    v7 = a1[10];
    sub_1000088DC(a1 + 6, v6);
    v8 = *(v7 + 16);
    swift_retain_n();
    v8(v144, v6, v7);
    v9 = [objc_opt_self() mainBundle];
    v145._object = 0x80000001002A0100;
    v10._object = 0x80000001002A00E0;
    v145._countAndFlagsBits = 0xD00000000000003DLL;
    v10._countAndFlagsBits = 0xD000000000000010;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v145);

    v99 = v12;
    v67 = sub_100031770();
    v77 = Text.init<A>(_:)();
    v14 = v13;
    v16 = v15;
    static Font.footnote.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v64 = enum case for Font.Leading.tight(_:);
    v17 = v78;
    v18 = *(v78 + 104);
    v65 = v78 + 104;
    v66 = v18;
    v19 = v73;
    v18(v73);
    Font.leading(_:)();

    v20 = *(v17 + 8);
    v78 = v17 + 8;
    v63 = v20;
    v20(v19, v4);
    LOBYTE(v19) = v16;
    v21 = v77;
    v22 = Text.font(_:)();
    v62 = v4;
    v23 = v22;
    v25 = v24;
    LOBYTE(v7) = v26;
    KeyPath = v27;

    sub_1000317C4(v21, v14, v19 & 1);

    v28 = a1[9];
    v29 = a1[10];
    sub_1000088DC(a1 + 6, v28);
    (*(v29 + 96))(v28, v29);
    v30 = Text.foregroundColor(_:)();
    v70 = v31;
    v71 = v30;
    LOBYTE(v28) = v32;
    v72 = v33;
    sub_1000317C4(v23, v25, v7 & 1);

    KeyPath = swift_getKeyPath();
    v77 = swift_getKeyPath();
    v74 = v28 & 1;
    LOBYTE(v99._countAndFlagsBits) = v28 & 1;
    LOBYTE(v93) = 0;
    v75 = swift_getKeyPath();
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();

    v34 = a1[9];
    v35 = a1[10];
    sub_1000088DC(a1 + 6, v34);
    v99._countAndFlagsBits = (*(v35 + 168))(v68, v34, v35);
    v99._object = v36;
    v37 = Text.init<A>(_:)();
    v39 = v38;
    LOBYTE(v28) = v40;
    static Font.body.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v41 = v73;
    v42 = v62;
    v66(v73, v64, v62);
    Font.leading(_:)();

    v63(v41, v42);
    v43 = Text.font(_:)();
    v45 = v44;
    LOBYTE(v35) = v46;
    v78 = v47;

    sub_1000317C4(v37, v39, v28 & 1);

    v48 = a1[9];
    v49 = a1[10];
    sub_1000088DC(a1 + 6, v48);
    (*(v49 + 80))(v48, v49);
    v50 = Text.foregroundColor(_:)();
    v52 = v51;
    LOBYTE(v49) = v53;
    v55 = v54;
    v68 = v54;
    sub_1000317C4(v43, v45, v35 & 1);

    v56 = swift_getKeyPath();
    v73 = v56;
    v57 = swift_getKeyPath();
    LOBYTE(v45) = v49 & 1;
    LOBYTE(v99._countAndFlagsBits) = v49 & 1;
    LOBYTE(v93) = 0;
    v78 = swift_getKeyPath();
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v87 = v71;
    *(&v87 + 1) = v70;
    LOBYTE(v88) = v74;
    *(&v88 + 1) = *v139;
    DWORD1(v88) = *&v139[3];
    *(&v88 + 1) = v72;
    *&v89 = KeyPath;
    *(&v89 + 1) = 2;
    LOBYTE(v90) = 0;
    *(&v90 + 1) = *v138;
    DWORD1(v90) = *&v138[3];
    *(&v90 + 1) = v77;
    LOBYTE(v91) = 0;
    DWORD1(v91) = *&v140[3];
    *(&v91 + 1) = *v140;
    *(&v91 + 1) = v75;
    *v92 = 0x3FE0000000000000;
    *&v92[40] = v143;
    *&v92[24] = v142;
    *&v92[8] = v141;
    v79[2] = v89;
    v79[3] = v90;
    v79[0] = v87;
    v79[1] = v88;
    v79[6] = *&v92[16];
    v79[7] = *&v92[32];
    v79[4] = v91;
    v79[5] = *v92;
    *&v93 = v50;
    v58 = v50;
    *(&v93 + 1) = v52;
    LOBYTE(v94) = v45;
    *(&v94 + 1) = *v136;
    DWORD1(v94) = *&v136[3];
    *(&v94 + 1) = v55;
    *&v95 = v56;
    *(&v95 + 1) = 3;
    LOBYTE(v96) = 0;
    *(&v96 + 1) = *v135;
    DWORD1(v96) = *&v135[3];
    *(&v96 + 1) = v57;
    LOBYTE(v97) = 0;
    DWORD1(v97) = *(v137 + 3);
    *(&v97 + 1) = v137[0];
    v59 = v78;
    *(&v97 + 1) = v78;
    *v98 = 0x3FE0000000000000;
    *&v98[8] = v80;
    *&v98[24] = v81;
    *&v98[40] = v82;
    *&v98[56] = v83;
    *&v98[72] = v84;
    *&v98[88] = v85;
    *&v98[104] = v86;
    *(&v79[18] + 8) = *&v98[80];
    *(&v79[19] + 8) = *&v98[96];
    *(&v79[16] + 8) = *&v98[48];
    *(&v79[17] + 8) = *&v98[64];
    *(&v79[8] + 8) = v93;
    *(&v79[12] + 8) = v97;
    *(&v79[11] + 8) = v96;
    *(&v79[10] + 8) = v95;
    *(&v79[9] + 8) = v94;
    *(&v79[15] + 8) = *&v98[32];
    *(&v79[14] + 8) = *&v98[16];
    *(&v79[13] + 8) = *v98;
    *&v79[8] = *(&v143 + 1);
    *(&v79[20] + 1) = *(&v86 + 1);
    sub_100006C20(&v87, &v99, &qword_1003610D0);
    sub_100006C20(&v93, &v99, &qword_100360FC8);
    sub_100008964(v144);
    memcpy(v69, v79, 0x150uLL);
    v115 = v83;
    v116 = v84;
    v117 = v85;
    v118 = v86;
    v112 = v80;
    v113 = v81;
    v99._countAndFlagsBits = v58;
    v99._object = v52;
    v100 = v45;
    *v101 = *v136;
    *&v101[3] = *&v136[3];
    v102 = v68;
    v103 = v73;
    v104 = 3;
    v105 = 0;
    *v106 = *v135;
    *&v106[3] = *&v135[3];
    v107 = v57;
    v108 = 0;
    *&v109[3] = *(v137 + 3);
    *v109 = v137[0];
    v110 = v59;
    v111 = 0x3FE0000000000000;
    v114 = v82;
    sub_100008FA0(&v99, &qword_100360FC8);
    v119[0] = v71;
    v119[1] = v70;
    v120 = v74;
    *v121 = *v139;
    *&v121[3] = *&v139[3];
    v122 = v72;
    v123 = KeyPath;
    v124 = 2;
    v125 = 0;
    *v126 = *v138;
    *&v126[3] = *&v138[3];
    v127 = v77;
    v128 = 0;
    *&v129[3] = *&v140[3];
    *v129 = *v140;
    v130 = v75;
    v131 = 0x3FE0000000000000;
    v132 = v141;
    v133 = v142;
    v134 = v143;
    return sub_100008FA0(v119, &qword_1003610D0);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C0F18@<X0>(void *a1@<X0>, char a2@<W2>, uint64_t a3@<X8>)
{
  v44 = type metadata accessor for Font.Leading();
  v6 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1[9];
    v10 = a1[10];
    sub_1000088DC(a1 + 6, v9);
    v11 = *(v10 + 16);

    v11(v53, v9, v10);
    v12 = a1[9];
    v13 = a1[10];
    sub_1000088DC(a1 + 6, v12);
    *&v45 = (*(v13 + 216))(a2 & 1, v12, v13);
    *(&v45 + 1) = v14;
    sub_100031770();
    v43 = Text.init<A>(_:)();
    v16 = v15;
    LOBYTE(v12) = v17;
    static Font.body.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v18 = v44;
    (*(v6 + 104))(v8, enum case for Font.Leading.tight(_:), v44);
    Font.leading(_:)();

    (*(v6 + 8))(v8, v18);
    v19 = v12;
    v20 = v43;
    v21 = Text.font(_:)();
    v23 = v22;
    v25 = v24;
    v44 = v26;

    sub_1000317C4(v20, v16, v19 & 1);

    v27 = a1[9];
    v28 = a1[10];
    sub_1000088DC(a1 + 6, v27);
    (*(v28 + 80))(v27, v28);
    v29 = Text.foregroundColor(_:)();
    v31 = v30;
    LOBYTE(v16) = v32;
    v34 = v33;
    sub_1000317C4(v21, v23, v25 & 1);

    KeyPath = swift_getKeyPath();
    v36 = swift_getKeyPath();
    LOBYTE(v16) = v16 & 1;
    LOBYTE(v45) = v16;
    v52 = 0;
    v37 = swift_getKeyPath();
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    result = sub_100008964(v53);
    v39 = v47;
    *(a3 + 136) = v48;
    v40 = v50;
    *(a3 + 152) = v49;
    *(a3 + 168) = v40;
    *(a3 + 184) = v51;
    v41 = v46;
    *(a3 + 88) = v45;
    *(a3 + 104) = v41;
    *a3 = v29;
    *(a3 + 8) = v31;
    *(a3 + 16) = v16;
    *(a3 + 24) = v34;
    *(a3 + 32) = KeyPath;
    *(a3 + 40) = 3;
    *(a3 + 48) = 0;
    *(a3 + 56) = v36;
    *(a3 + 64) = 0;
    *(a3 + 72) = v37;
    *(a3 + 80) = 0x3FE0000000000000;
    *(a3 + 120) = v39;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C1350@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = type metadata accessor for Font.Leading();
  v41 = *(v42 - 8);
  __chkstk_darwin(v42);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1[9];
    v7 = a1[10];
    sub_1000088DC(a1 + 6, v6);
    v8 = *(v7 + 16);

    v8(v51, v6, v7);
    v9 = [objc_opt_self() mainBundle];
    v52._object = 0x8000000100296DF0;
    v10._object = 0x8000000100296DC0;
    v52._countAndFlagsBits = 0xD000000000000067;
    v10._countAndFlagsBits = 0xD00000000000002FLL;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v52);

    v43 = v12;
    sub_100031770();
    v40 = Text.init<A>(_:)();
    v14 = v13;
    LOBYTE(v7) = v15;
    static Font.body.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v16 = v41;
    v17 = v42;
    (*(v41 + 104))(v5, enum case for Font.Leading.tight(_:), v42);
    Font.leading(_:)();

    (*(v16 + 8))(v5, v17);
    v18 = v7;
    v19 = v40;
    v20 = Text.font(_:)();
    v22 = v21;
    LOBYTE(v17) = v23;
    v42 = v24;

    sub_1000317C4(v19, v14, v18 & 1);

    v25 = a1[9];
    v26 = a1[10];
    sub_1000088DC(a1 + 6, v25);
    (*(v26 + 80))(v25, v26);
    v27 = Text.foregroundColor(_:)();
    v29 = v28;
    LOBYTE(v14) = v30;
    v32 = v31;
    sub_1000317C4(v20, v22, v17 & 1);

    KeyPath = swift_getKeyPath();
    v34 = swift_getKeyPath();
    LOBYTE(v14) = v14 & 1;
    LOBYTE(v43._countAndFlagsBits) = v14;
    v50 = 0;
    v35 = swift_getKeyPath();
    static Alignment.leading.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    result = sub_100008964(v51);
    v37 = v45;
    *(a2 + 136) = v46;
    v38 = v48;
    *(a2 + 152) = v47;
    *(a2 + 168) = v38;
    *(a2 + 184) = v49;
    v39 = v44;
    *(a2 + 88) = v43;
    *(a2 + 104) = v39;
    *a2 = v27;
    *(a2 + 8) = v29;
    *(a2 + 16) = v14;
    *(a2 + 24) = v32;
    *(a2 + 32) = KeyPath;
    *(a2 + 40) = 3;
    *(a2 + 48) = 0;
    *(a2 + 56) = v34;
    *(a2 + 64) = 0;
    *(a2 + 72) = v35;
    *(a2 + 80) = 0x3FE0000000000000;
    *(a2 + 120) = v37;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C17DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a2;
  v7 = type metadata accessor for Font.Leading();
  v69 = *(v7 - 8);
  v70 = v7;
  __chkstk_darwin(v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v10 = a3[9];
    v11 = a3[10];
    sub_1000088DC(a3 + 6, v10);
    v12 = *(v11 + 16);

    v12(v123, v10, v11);
    if (a1)
    {
      v68 = a1;

      v13 = sub_1001DE5B8();
      v15 = v14;

      v97 = v13;
      v98 = v15;
      sub_100031770();
      v16 = Text.init<A>(_:)();
      v66 = v17;
      v67 = v16;
      v19 = v18;
      static Font.footnote.getter();
      static Font.Weight.medium.getter();
      Font.weight(_:)();

      v21 = v69;
      v20 = v70;
      (*(v69 + 104))(v9, enum case for Font.Leading.tight(_:), v70);
      Font.leading(_:)();

      (*(v21 + 8))(v9, v20);
      LOBYTE(v20) = v19;
      v23 = v66;
      v22 = v67;
      v24 = Text.font(_:)();
      v64 = v26;
      v65 = v25;
      v28 = v27;

      sub_1000317C4(v22, v23, v20 & 1);

      v29 = a3[9];
      v30 = a3[10];
      sub_1000088DC(a3 + 6, v29);
      (*(v30 + 128))(v68, v29, v30);

      v31 = v65;
      v60 = Text.foregroundColor(_:)();
      v69 = v32;
      v70 = v33;
      v35 = v34;
      sub_1000317C4(v24, v31, v28 & 1);

      KeyPath = swift_getKeyPath();
      v66 = KeyPath;
      v68 = swift_getKeyPath();
      LOBYTE(v29) = v35 & 1;
      v121 = v35 & 1;
      LODWORD(v65) = v35 & 1;
      v119 = 0;
      v58 = swift_getKeyPath();
      static Alignment.leading.getter();
      _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
      type metadata accessor for GuidanceMessagesModel();
      sub_1001BB9B0(&qword_100357820, type metadata accessor for GuidanceMessagesModel);
      v62 = EnvironmentObject.init()();
      v67 = v37;
      type metadata accessor for UIMetrics();
      sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
      v38 = EnvironmentObject.init()();
      v64 = v39;
      type metadata accessor for ConnectionModel(0);
      sub_1001BB9B0(&qword_100354F88, type metadata accessor for ConnectionModel);
      v40 = EnvironmentObject.init()();
      v63 = v41;
      type metadata accessor for ConnectivityModel();
      sub_1001BB9B0(&qword_100354F78, type metadata accessor for ConnectivityModel);
      v42 = EnvironmentObject.init()();
      v61 = v43;
      v44 = EnvironmentObject.init()();
      v59 = v45;
      v46 = v60;
      *&v78 = v60;
      *(&v78 + 1) = v69;
      LOBYTE(v79) = v29;
      *(&v79 + 1) = *v120;
      DWORD1(v79) = *&v120[3];
      *(&v79 + 1) = v70;
      *&v80 = KeyPath;
      *(&v80 + 1) = 2;
      LOBYTE(v81) = 0;
      *(&v81 + 1) = *v118;
      DWORD1(v81) = *&v118[3];
      *(&v81 + 1) = v68;
      LOBYTE(v82) = 0;
      *(&v82 + 1) = *v122;
      DWORD1(v82) = *&v122[3];
      v47 = v58;
      *(&v82 + 1) = v58;
      *v83 = 0x3FE0000000000000;
      *&v83[72] = v75;
      *&v83[56] = v74;
      *&v83[88] = v76;
      *&v83[104] = v77;
      *&v83[8] = v71;
      *&v83[24] = v72;
      *&v83[40] = v73;
      v84 = v78;
      v87 = v81;
      v88 = v82;
      v85 = v79;
      v86 = v80;
      v91 = *&v83[32];
      v92 = *&v83[48];
      v89 = *v83;
      v90 = *&v83[16];
      v96 = *(&v77 + 1);
      v94 = *&v83[80];
      v95 = *&v83[96];
      v93 = *&v83[64];
      sub_100006C20(&v78, &v97, &qword_100360FC8);

      v48 = v62;

      sub_100008964(v123);
      v49 = v95;
      *(a4 + 160) = v94;
      *(a4 + 176) = v49;
      v50 = v96;
      v51 = v91;
      *(a4 + 96) = v90;
      *(a4 + 112) = v51;
      v52 = v93;
      *(a4 + 128) = v92;
      *(a4 + 144) = v52;
      v53 = v87;
      *(a4 + 32) = v86;
      *(a4 + 48) = v53;
      v54 = v89;
      *(a4 + 64) = v88;
      *(a4 + 80) = v54;
      v55 = v85;
      *a4 = v84;
      *(a4 + 16) = v55;
      *(a4 + 192) = v50;
      *(a4 + 200) = v48;
      *(a4 + 208) = v67;
      *(a4 + 216) = v38;
      v56 = v63;
      *(a4 + 224) = v64;
      *(a4 + 232) = v40;
      *(a4 + 240) = v56;
      *(a4 + 248) = v42;
      *(a4 + 256) = v61;
      *(a4 + 264) = v44;
      *(a4 + 272) = v59;

      v114 = v74;
      v115 = v75;
      v116 = v76;
      v117 = v77;
      v111 = v71;
      v112 = v72;
      v97 = v46;
      v98 = v69;
      v99 = v65;
      *v100 = *v120;
      *&v100[3] = *&v120[3];
      v101 = v70;
      v102 = v66;
      v103 = 2;
      v104 = 0;
      *v105 = *v118;
      *&v105[3] = *&v118[3];
      v106 = v68;
      v107 = 0;
      *&v108[3] = *&v122[3];
      *v108 = *v122;
      v109 = v47;
      v110 = 0x3FE0000000000000;
      v113 = v73;
      return sub_100008FA0(&v97, &qword_100360FC8);
    }
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
    EnvironmentObject.error()();
    __break(1u);
  }

  type metadata accessor for ConnectivityModel();
  sub_1001BB9B0(&qword_100354F78, type metadata accessor for ConnectivityModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001C2004@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = sub_1000040A8(&qword_100361058);
  v50 = *(v3 - 8);
  v51 = v3;
  __chkstk_darwin(v3);
  v47 = (&v47 - v4);
  v5 = sub_1000040A8(&qword_100361060);
  v53 = *(v5 - 8);
  v54 = v5;
  __chkstk_darwin(v5);
  v49 = &v47 - v6;
  v7 = sub_1000040A8(&qword_100354FD8);
  __chkstk_darwin(v7 - 8);
  v9 = &v47 - v8;
  v10 = type metadata accessor for TransmissionProgress(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v48 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000040A8(&qword_100361068);
  __chkstk_darwin(v13 - 8);
  v52 = &v47 - v14;
  v15 = v1[4];
  if (v15)
  {
    v16 = v15[9];
    v17 = v15[10];
    sub_1000088DC(v15 + 6, v16);
    v18 = *(v17 + 16);

    v18(v59, v16, v17);
    if (*v1)
    {

      sub_1001DDADC(v9);

      if ((*(v11 + 48))(v9, 1, v10) == 1)
      {

        sub_100008FA0(v9, &qword_100354FD8);
        v19 = v52;
        (*(v53 + 56))(v52, 1, 1, v54);
LABEL_12:
        sub_10000CF4C(v19, v55, &qword_100361068);
        return sub_100008964(v59);
      }

      v20 = v48;
      sub_1001BB9F8(v9, v48, type metadata accessor for TransmissionProgress);
      sub_1000089B0((v15 + 6), v56);

      v21 = v57;
      v22 = v58;
      sub_1000088DC(v56, v57);
      v23 = v1[2];
      if (v23)
      {
        v24 = (*(v22 + 144))(v20, *(*(v23 + 48) + 136), v21, v22);
        v26 = v25;
        sub_100008964(v56);
        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = v24 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          v28 = static HorizontalAlignment.leading.getter();
          v29 = v47;
          *v47 = v28;
          *(v29 + 8) = 0;
          *(v29 + 16) = 0;
          v30 = sub_1000040A8(&qword_100361070);
          sub_1001C2630(v2, v20, v59, v24, v26, v29 + *(v30 + 44));

          v31 = static Edge.Set.top.getter();
          EdgeInsets.init(_all:)();
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v39 = v38;
          v40 = v29 + *(sub_1000040A8(&qword_100361078) + 36);
          *v40 = v31;
          *(v40 + 8) = v33;
          *(v40 + 16) = v35;
          *(v40 + 24) = v37;
          *(v40 + 32) = v39;
          *(v40 + 40) = 0;
          v41 = v51;
          *(v29 + *(v51 + 36)) = 256;
          v42 = v49;
          sub_10000CF4C(v29, v49, &qword_100361058);
          v43 = 0;
        }

        else
        {

          v43 = 1;
          v41 = v51;
          v42 = v49;
        }

        (*(v50 + 56))(v42, v43, 1, v41);
        v19 = v52;
        sub_10000CF4C(v42, v52, &qword_100361060);
        (*(v53 + 56))(v19, 0, 1, v54);
        sub_1001C49F0(v20, type metadata accessor for TransmissionProgress);
        goto LABEL_12;
      }

      type metadata accessor for ConnectivityModel();
      v45 = &qword_100354F78;
      v46 = type metadata accessor for ConnectivityModel;
    }

    else
    {
      type metadata accessor for ConnectionModel(0);
      v45 = &qword_100354F88;
      v46 = type metadata accessor for ConnectionModel;
    }
  }

  else
  {
    type metadata accessor for UIMetrics();
    v45 = &qword_100354D40;
    v46 = type metadata accessor for UIMetrics;
  }

  sub_1001BB9B0(v45, v46);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1001C2630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v174 = a4;
  *(&v174 + 1) = a5;
  v162 = a2;
  v178 = a6;
  v172 = sub_1000040A8(&qword_100361080);
  __chkstk_darwin(v172);
  v168 = &v160 - v8;
  v9 = sub_1000040A8(&qword_100354FA0);
  v163 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v160 - v10;
  v12 = sub_1000040A8(&qword_10035E908);
  v166 = *(v12 - 8);
  __chkstk_darwin(v12);
  v165 = &v160 - v13;
  v164 = sub_1000040A8(&qword_10035E910);
  __chkstk_darwin(v164);
  v167 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v160 - v16;
  __chkstk_darwin(v18);
  v173 = &v160 - v19;
  v175 = sub_1000040A8(&qword_100361088);
  __chkstk_darwin(v175);
  v21 = &v160 - v20;
  v169 = sub_1000040A8(&qword_100361090);
  __chkstk_darwin(v169);
  v170 = (&v160 - v22);
  v176 = sub_1000040A8(&qword_100361098);
  __chkstk_darwin(v176);
  v171 = &v160 - v23;
  v24 = type metadata accessor for Font.Leading();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v28 = &v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v30 = *(a1 + 16);
  if (!v30)
  {
    type metadata accessor for ConnectivityModel();
    v158 = &qword_100354F78;
    v159 = type metadata accessor for ConnectivityModel;
    goto LABEL_10;
  }

  v31 = 1 << *(*(v30 + 48) + 136);
  v177 = v21;
  if ((v31 & 0x1D8) != 0)
  {
    v203 = v174;
    v32 = v26;
    v33 = v28;
    sub_100031770();

    v34 = Text.init<A>(_:)();
    v36 = v35;
    v38 = v37;
    *(&v174 + 1) = v39;
    static Font.subheadline.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    (*(v25 + 104))(v33, enum case for Font.Leading.tight(_:), v32);
    Font.leading(_:)();

    (*(v25 + 8))(v33, v32);
    v40 = Text.font(_:)();
    v42 = v41;
    v44 = v43;

    sub_1000317C4(v34, v36, v38 & 1);

    v45 = [objc_opt_self() secondaryLabelColor];
    Color.init(_:)();
    v46 = Text.foregroundColor(_:)();
    v48 = v47;
    v50 = v49;
    v52 = v51;

    sub_1000317C4(v40, v42, v44 & 1);

    KeyPath = swift_getKeyPath();
    v54 = swift_getKeyPath();
    LOBYTE(v203) = v50 & 1;
    LOBYTE(v201[0]) = 0;
    v55 = swift_getKeyPath();
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v203 = v46;
    *(&v203 + 1) = v48;
    LOBYTE(v204) = v50 & 1;
    *(&v204 + 1) = v52;
    *&v205 = KeyPath;
    *(&v205 + 1) = 1;
    LOBYTE(v206) = 0;
    *(&v206 + 1) = v54;
    LOBYTE(v207) = 0;
    *(&v207 + 1) = v55;
    *&v208 = 0x3FE0000000000000;
    WORD4(v210[1]) = 256;
    v56 = v210[0];
    v57 = v170;
    v170[6] = v209;
    v57[7] = v56;
    *(v57 + 122) = *(v210 + 10);
    v58 = v206;
    v57[2] = v205;
    v57[3] = v58;
    v59 = v208;
    v57[4] = v207;
    v57[5] = v59;
    v60 = v204;
    *v57 = v203;
    v57[1] = v60;
    swift_storeEnumTagMultiPayload();
    sub_100006C20(&v203, v201, &qword_1003610B0);
    sub_1000040A8(&qword_1003610B0);
    sub_100009274(&qword_1003610B8, &qword_100361080);
    sub_10015A674();
    v61 = v171;
    _ConditionalContent<>.init(storage:)();
    sub_100006C20(v61, v177, &qword_100361098);
    swift_storeEnumTagMultiPayload();
    sub_10015A78C();
    _ConditionalContent<>.init(storage:)();
    sub_100008FA0(&v203, &qword_1003610B0);
    v62 = v61;
    v63 = &qword_100361098;
    return sub_100008FA0(v62, v63);
  }

  if ((v31 & 0x203) != 0)
  {
    v160 = v28;
    v161 = v26;
    *&v203 = *(v162 + *(type metadata accessor for TransmissionProgress(0) + 28));
    BYTE8(v203) = 0;
    *&v201[0] = 0x4059000000000000;
    sub_100108848();
    ProgressView.init<A>(value:total:)();
    v64 = a3[3];
    v65 = a3[4];
    v66 = sub_1000088DC(a3, v64);
    *(&v204 + 1) = v64;
    *&v205 = *(v65 + 8);
    v67 = sub_10007E56C(&v203);
    (*(*(v64 - 8) + 16))(v67, v66, v64);
    sub_100009274(&qword_100355088, &qword_100354FA0);
    sub_10010889C();
    v68 = v165;
    View.progressViewStyle<A>(_:)();
    sub_1001088F0(&v203);
    (*(v163 + 8))(v11, v9);
    v70 = a3[3];
    v69 = a3[4];
    sub_1000088DC(a3, v70);
    (*(*(v69 + 8) + 8))(v70);
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    (*(v166 + 32))(v17, v68, v12);
    v71 = &v17[*(v164 + 36)];
    v72 = v211[7];
    *(v71 + 4) = v211[6];
    *(v71 + 5) = v72;
    *(v71 + 6) = v211[8];
    v73 = v211[3];
    *v71 = v211[2];
    *(v71 + 1) = v73;
    v74 = v211[5];
    *(v71 + 2) = v211[4];
    *(v71 + 3) = v74;
    sub_10000CF4C(v17, v173, &qword_10035E910);
    v203 = v174;
    sub_100031770();

    v75 = Text.init<A>(_:)();
    v77 = v76;
    LOBYTE(v65) = v78;
    static Font.subheadline.getter();
    static Font.Weight.medium.getter();
    Font.weight(_:)();

    v80 = v160;
    v79 = v161;
    (*(v25 + 104))(v160, enum case for Font.Leading.tight(_:), v161);
    Font.leading(_:)();

    (*(v25 + 8))(v80, v79);
    v81 = Text.font(_:)();
    v83 = v82;
    LOBYTE(v80) = v84;

    sub_1000317C4(v75, v77, v65 & 1);

    v85 = [objc_opt_self() secondaryLabelColor];
    Color.init(_:)();
    v86 = Text.foregroundColor(_:)();
    v88 = v87;
    LOBYTE(v65) = v89;
    v91 = v90;

    sub_1000317C4(v81, v83, v80 & 1);

    v92 = swift_getKeyPath();
    v93 = swift_getKeyPath();
    LOBYTE(v203) = v65 & 1;
    LOBYTE(v201[0]) = 0;
    v94 = swift_getKeyPath();
    v95 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;
    LOBYTE(v203) = 0;
    static Alignment.leading.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v191[7] = v211[9];
    *&v191[23] = v211[10];
    *&v191[39] = v212;
    *&v192 = v86;
    *(&v192 + 1) = v88;
    LOBYTE(v193) = v65 & 1;
    *(&v193 + 1) = v91;
    *&v194 = v92;
    *(&v194 + 1) = 1;
    LOBYTE(v195) = 0;
    *(&v195 + 1) = v93;
    LOBYTE(v196) = 0;
    *(&v196 + 1) = v94;
    *&v197 = 0x3FE0000000000000;
    BYTE8(v197) = v95;
    *&v198 = v97;
    *(&v198 + 1) = v99;
    *&v199 = v101;
    *(&v199 + 1) = v103;
    LOBYTE(v200[0]) = 0;
    *(v200 + 1) = *v191;
    *(&v200[1] + 1) = *&v191[16];
    *(&v200[2] + 1) = *&v191[32];
    *&v200[3] = *(&v212 + 1);
    WORD4(v200[3]) = 256;
    v104 = v167;
    sub_100006C20(v173, v167, &qword_10035E910);
    v188 = v200[0];
    v189 = v200[1];
    v190[0] = v200[2];
    *(v190 + 10) = *(&v200[2] + 10);
    v184 = v196;
    v185 = v197;
    v186 = v198;
    v187 = v199;
    v180 = v192;
    v181 = v193;
    v182 = v194;
    v183 = v195;
    v105 = v168;
    sub_100006C20(v104, v168, &qword_10035E910);
    v106 = (v105 + *(sub_1000040A8(&qword_1003610A0) + 48));
    v107 = v188;
    v201[8] = v188;
    v201[9] = v189;
    v108 = v190[0];
    v202[0] = v190[0];
    *(v202 + 10) = *(v190 + 10);
    v109 = v184;
    v110 = v184;
    v201[4] = v184;
    v201[5] = v185;
    v111 = v186;
    v112 = v186;
    v201[6] = v186;
    v201[7] = v187;
    v113 = v180;
    v114 = v180;
    v201[0] = v180;
    v201[1] = v181;
    v201[2] = v182;
    v201[3] = v183;
    v115 = v189;
    v116 = v189;
    v106[8] = v188;
    v106[9] = v115;
    v106[10] = v108;
    *(v106 + 170) = *(v190 + 10);
    v117 = v185;
    v118 = v185;
    v106[4] = v109;
    v106[5] = v117;
    v119 = v187;
    v120 = v187;
    v106[6] = v111;
    v106[7] = v119;
    v121 = v181;
    v122 = v182;
    v123 = v181;
    v124 = v182;
    *v106 = v113;
    v106[1] = v121;
    v125 = v183;
    v126 = v183;
    v106[2] = v122;
    v106[3] = v125;
    v210[1] = v107;
    v210[2] = v116;
    v211[0] = v190[0];
    *(v211 + 10) = *(v190 + 10);
    v207 = v110;
    v208 = v118;
    v209 = v112;
    v210[0] = v120;
    v203 = v114;
    v204 = v123;
    v205 = v124;
    v206 = v126;
    sub_100006C20(&v192, v179, &qword_1003610A8);
    sub_100006C20(v201, v179, &qword_1003610A8);
    sub_100008FA0(&v203, &qword_1003610A8);
    sub_100008FA0(v104, &qword_10035E910);
    sub_100006C20(v105, v170, &qword_100361080);
    swift_storeEnumTagMultiPayload();
    sub_1000040A8(&qword_1003610B0);
    sub_100009274(&qword_1003610B8, &qword_100361080);
    sub_10015A674();
    v127 = v171;
    _ConditionalContent<>.init(storage:)();
    sub_100006C20(v127, v177, &qword_100361098);
    swift_storeEnumTagMultiPayload();
    sub_10015A78C();
    _ConditionalContent<>.init(storage:)();
    sub_100008FA0(&v192, &qword_1003610A8);
    sub_100008FA0(v127, &qword_100361098);
    sub_100008FA0(v105, &qword_100361080);
    v62 = v173;
    v63 = &qword_10035E910;
    return sub_100008FA0(v62, v63);
  }

  v203 = v174;
  sub_100031770();

  v129 = Text.init<A>(_:)();
  v131 = v130;
  v133 = v132;
  v135 = a3[3];
  v134 = a3[4];
  sub_1000088DC(a3, v135);
  (*(*(v134 + 8) + 32))(v135);
  *&v174 = Text.font(_:)();
  *(&v174 + 1) = v136;
  v138 = v137;
  v140 = v139;

  sub_1000317C4(v129, v131, v133 & 1);

  v141 = *(v29 + 32);
  if (!v141)
  {
    while (1)
    {
      type metadata accessor for UIMetrics();
      v158 = &qword_100354D40;
      v159 = type metadata accessor for UIMetrics;
LABEL_10:
      sub_1001BB9B0(v158, v159);
      EnvironmentObject.error()();
      __break(1u);
    }
  }

  v142 = v141[9];
  v143 = v141[10];
  sub_1000088DC(v141 + 6, v142);
  (*(v143 + 128))(v30, v142, v143);

  v144 = v174;
  v145 = Text.foregroundColor(_:)();
  v147 = v146;
  v149 = v148;
  v151 = v150;
  sub_1000317C4(v144, v138, v140 & 1);

  v152 = swift_getKeyPath();
  v153 = swift_getKeyPath();
  v154 = v149 & 1;
  LOBYTE(v201[0]) = v149 & 1;
  LOBYTE(v192) = 0;
  v155 = swift_getKeyPath();
  static Alignment.leading.getter();
  _FrameLayout.init(width:height:alignment:)();
  v156 = v204;
  v157 = v177;
  *(v177 + 88) = v203;
  *v157 = v145;
  *(v157 + 8) = v147;
  *(v157 + 16) = v154;
  *(v157 + 24) = v151;
  *(v157 + 32) = v152;
  *(v157 + 40) = 1;
  *(v157 + 48) = 0;
  *(v157 + 56) = v153;
  *(v157 + 64) = 0;
  *(v157 + 72) = v155;
  *(v157 + 80) = 0x3FE0000000000000;
  *(v157 + 104) = v156;
  *(v157 + 120) = v205;
  *(v157 + 136) = 256;
  swift_storeEnumTagMultiPayload();
  sub_1000040A8(&qword_1003610B0);
  sub_10015A78C();
  sub_10015A674();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1001C38DC@<X0>(uint64_t a1@<X8>)
{
  if (*v1)
  {
    sub_1000089B0(*v1 + 48, v7);
    v3 = v8;
    v4 = v9;
    sub_1000088DC(v7, v8);
    (*(v4 + 16))(v10, v3, v4);
    sub_100008964(v7);
    v5 = static HorizontalAlignment.center.getter();
    LOBYTE(v3) = static Edge.Set.all.getter();
    result = sub_100008964(v10);
    LOBYTE(v7[0]) = 1;
    *a1 = v5;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
    *(a1 + 24) = v3;
    *(a1 + 32) = xmmword_10028D3A0;
    *(a1 + 48) = xmmword_10028D390;
    *(a1 + 64) = 0;
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1001BB9B0(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C3A04@<X0>(uint64_t a1@<X8>)
{
  v65 = a1;
  v2 = type metadata accessor for KeyboardShortcut();
  v62 = *(v2 - 8);
  v63 = v2;
  __chkstk_darwin(v2);
  v61 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BorderedButtonStyle();
  v56 = *(v4 - 8);
  v57 = v4;
  __chkstk_darwin(v4);
  v55 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CASessionBannerPossibleButtonView(0);
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  __chkstk_darwin(v6);
  v53 = sub_1000040A8(&qword_1003650C0);
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v51 = &v50 - v8;
  v54 = sub_1000040A8(&qword_1003650C8);
  __chkstk_darwin(v54);
  v10 = &v50 - v9;
  v58 = sub_1000040A8(&qword_1003650D0);
  __chkstk_darwin(v58);
  v60 = &v50 - v11;
  v12 = sub_1000040A8(&qword_1003650D8);
  v64 = *(v12 - 8);
  __chkstk_darwin(v12);
  v59 = &v50 - v13;
  v14 = sub_1000040A8(&qword_1003650E0);
  __chkstk_darwin(v14 - 8);
  v16 = &v50 - v15;
  v17 = *(v1 + *(v6 + 28));
  if (!v17)
  {
    type metadata accessor for UIMetrics();
    v48 = &qword_100354D40;
    v49 = type metadata accessor for UIMetrics;
LABEL_11:
    sub_1001BB9B0(v48, v49);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  sub_1000089B0(v17 + 48, v66);
  v19 = v67;
  v18 = v68;
  sub_1000088DC(v66, v67);
  (*(v18 + 16))(v69, v19, v18);
  sub_100008964(v66);
  v20 = *(v1 + *(v6 + 24));
  if (!v20)
  {
    type metadata accessor for StewieModel(0);
    v48 = &qword_1003561B8;
    v49 = type metadata accessor for StewieModel;
    goto LABEL_11;
  }

  v21 = v12;
  if (*(v20 + 64))
  {
    v22 = *(v20 + 121);
    v23 = sub_100071A54(0, *(v20 + 88));
    v24 = 1;
    if (v23 & 1) != 0 && (v22)
    {
      sub_1001BD838(v1, &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CASessionBannerPossibleButtonView);
      v25 = (*(v50 + 80) + 16) & ~*(v50 + 80);
      v26 = swift_allocObject();
      v27 = sub_1001BB9F8(&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for CASessionBannerPossibleButtonView);
      __chkstk_darwin(v27);
      sub_1001C52C8();
      v28 = v51;
      Button.init(action:label:)();
      v29 = v55;
      BorderedButtonStyle.init()();
      sub_100009274(&qword_1003650F0, &qword_1003650C0);
      sub_1001BB9B0(&qword_1003650F8, &type metadata accessor for BorderedButtonStyle);
      v30 = v53;
      v31 = v57;
      View.buttonStyle<A>(_:)();
      (*(v56 + 8))(v29, v31);
      (*(v52 + 8))(v28, v30);
      v32 = &v10[*(v54 + 36)];
      sub_1000040A8(&qword_100357740);
      static ButtonBorderShape.capsule.getter();
      *v32 = swift_getKeyPath();
      v33 = v61;
      static KeyboardShortcut.defaultAction.getter();
      sub_1001C5344();
      v34 = v60;
      View.keyboardShortcut(_:)();
      (*(v62 + 8))(v33, v63);
      sub_100008FA0(v10, &qword_1003650C8);
      v35 = static Color.green.getter();
      KeyPath = swift_getKeyPath();
      v66[0] = v35;
      v37 = AnyShapeStyle.init<A>(_:)();
      v38 = (v34 + *(v58 + 36));
      *v38 = KeyPath;
      v38[1] = v37;
      LocalizedStringKey.init(stringLiteral:)();
      v39 = Text.init(_:tableName:bundle:comment:)();
      v41 = v40;
      v43 = v42;
      sub_1001C54C4();
      v44 = v59;
      View.accessibility(label:)();
      sub_1000317C4(v39, v41, v43 & 1);

      sub_100008FA0(v34, &qword_1003650D0);
      v45 = static Edge.Set.all.getter();
      v46 = v44 + *(v21 + 36);
      *v46 = v45;
      *(v46 + 8) = xmmword_10028D3B0;
      *(v46 + 24) = xmmword_10028D3C0;
      *(v46 + 40) = 0;
      sub_10000CF4C(v44, v16, &qword_1003650D8);
      v24 = 0;
    }
  }

  else
  {
    v24 = 1;
  }

  (*(v64 + 56))(v16, v24, 1, v21);
  sub_10000CF4C(v16, v65, &qword_1003650E0);
  return sub_100008964(v69);
}

uint64_t sub_1001C42E8(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for CASessionBannerPossibleButtonView(0) + 20)))
  {

    PassthroughSubject.send(_:)();

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1001BB9B0(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1001C4418()
{
  v0 = static VerticalAlignment.center.getter();
  v27 = 1;
  sub_1001C4604(&v12);
  v30 = v14;
  v31 = v15;
  v32 = v16;
  v33 = v17;
  v28 = v12;
  v29 = v13;
  v35 = v17;
  v34[2] = v14;
  v34[3] = v15;
  v34[4] = v16;
  v34[0] = v12;
  v34[1] = v13;
  sub_100006C20(&v28, &v3, &qword_100361018);
  sub_100008FA0(v34, &qword_100361018);
  *(&v26[2] + 7) = v30;
  *(&v26[3] + 7) = v31;
  *(&v26[4] + 7) = v32;
  *(&v26[5] + 7) = v33;
  *(v26 + 7) = v28;
  *(&v26[1] + 7) = v29;
  v1 = v27;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v4[33] = v26[2];
  *&v4[49] = v26[3];
  *&v4[65] = v26[4];
  *&v4[80] = *(&v26[4] + 15);
  *&v4[1] = v26[0];
  v3 = v0;
  v4[0] = v1;
  *&v4[17] = v26[1];
  sub_1000040A8(&qword_1003652D8);
  sub_1001C61DC();
  View.accessibility(hidden:)();
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v25 = v11;
  v18 = *&v4[80];
  v19 = v5;
  v20 = v6;
  v21 = v7;
  v14 = *&v4[16];
  v15 = *&v4[32];
  v16 = *&v4[48];
  v17 = *&v4[64];
  v12 = v3;
  v13 = *v4;
  return sub_100008FA0(&v12, &qword_1003652D8);
}

uint64_t sub_1001C4604@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Font.Leading();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() mainBundle];
  v32._object = 0x80000001002A3030;
  v7._object = 0x80000001002A0080;
  v32._countAndFlagsBits = 0xD00000000000002CLL;
  v7._countAndFlagsBits = 0xD000000000000017;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v32);

  v30 = v9;
  sub_100031770();
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  static Font.title3.getter();
  (*(v3 + 104))(v5, enum case for Font.Leading.tight(_:), v2);
  Font.leading(_:)();

  (*(v3 + 8))(v5, v2);
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;

  sub_1000317C4(v10, v12, v14 & 1);

  static Color.green.getter();
  v20 = Text.foregroundColor(_:)();
  v22 = v21;
  LOBYTE(v12) = v23;
  v25 = v24;

  sub_1000317C4(v15, v17, v19 & 1);

  KeyPath = swift_getKeyPath();
  v27 = swift_getKeyPath();
  LOBYTE(v12) = v12 & 1;
  LOBYTE(v30._countAndFlagsBits) = v12;
  v31 = 0;
  result = swift_getKeyPath();
  *a1 = v20;
  *(a1 + 8) = v22;
  *(a1 + 16) = v12;
  *(a1 + 24) = v25;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = v27;
  *(a1 + 64) = 1;
  *(a1 + 72) = result;
  *(a1 + 80) = 0x3FE0000000000000;
  return result;
}

uint64_t sub_1001C4928(uint64_t a1)
{
  v2 = type metadata accessor for ButtonBorderShape();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues._buttonBorderShape.setter();
}

uint64_t sub_1001C49F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001C4AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConnectionAssistantBanner.Mode();
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

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1001C4B80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ConnectionAssistantBanner.Mode();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_1001C4C38()
{
  type metadata accessor for ConnectionAssistantBanner.Mode();
  if (v0 <= 0x3F)
  {
    sub_10007B2FC();
    if (v1 <= 0x3F)
    {
      sub_1001BBD08(319, &qword_100359818, type metadata accessor for StewieModel, &qword_1003561B8, type metadata accessor for StewieModel);
      if (v2 <= 0x3F)
      {
        sub_1001BBD08(319, &qword_100359948, type metadata accessor for UIMetrics, &qword_100354D40, type metadata accessor for UIMetrics);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1001C4DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionAssistantBanner.Mode();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1001C4E48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConnectionAssistantBanner.Mode();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1001C4F18(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1001BBD08(319, &qword_100359948, type metadata accessor for UIMetrics, &qword_100354D40, type metadata accessor for UIMetrics);
  if (v5 <= 0x3F)
  {
    a4(319);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001C4FDC()
{
  sub_100008CF0(&qword_100364DC8);
  sub_100009274(&qword_100364DF0, &qword_100364DC8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1001C50E4()
{
  v1 = *(type metadata accessor for CASessionBannerPossibleButtonView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  type metadata accessor for ConnectionAssistantBanner.Mode();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = *(type metadata accessor for ConnectionClosed(0) + 20);
    v7 = type metadata accessor for Date();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1001C5268()
{
  v1 = *(type metadata accessor for CASessionBannerPossibleButtonView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1001C42E8(v2);
}

unint64_t sub_1001C52C8()
{
  result = qword_1003650E8;
  if (!qword_1003650E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003650E8);
  }

  return result;
}

unint64_t sub_1001C5344()
{
  result = qword_100365100;
  if (!qword_100365100)
  {
    sub_100008CF0(&qword_1003650C8);
    sub_100008CF0(&qword_1003650C0);
    type metadata accessor for BorderedButtonStyle();
    sub_100009274(&qword_1003650F0, &qword_1003650C0);
    sub_1001BB9B0(&qword_1003650F8, &type metadata accessor for BorderedButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357768, &qword_100357740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365100);
  }

  return result;
}

unint64_t sub_1001C54C4()
{
  result = qword_100365108;
  if (!qword_100365108)
  {
    sub_100008CF0(&qword_1003650D0);
    sub_100008CF0(&qword_1003650C8);
    sub_1001C5344();
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357770, &qword_100357778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365108);
  }

  return result;
}

unint64_t sub_1001C55D8()
{
  result = qword_100365148;
  if (!qword_100365148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365148);
  }

  return result;
}

unint64_t sub_1001C562C()
{
  result = qword_100365158;
  if (!qword_100365158)
  {
    sub_100008CF0(&qword_100365138);
    sub_1001C56B8();
    sub_1001C57C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365158);
  }

  return result;
}

unint64_t sub_1001C56B8()
{
  result = qword_100365160;
  if (!qword_100365160)
  {
    sub_100008CF0(&qword_100365130);
    sub_1001C5774();
    sub_1001BB9B0(&qword_100365170, type metadata accessor for CASessionBannerConnectionClosedView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365160);
  }

  return result;
}

unint64_t sub_1001C5774()
{
  result = qword_100365168;
  if (!qword_100365168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365168);
  }

  return result;
}

unint64_t sub_1001C57C8()
{
  result = qword_100365178;
  if (!qword_100365178)
  {
    sub_100008CF0(&qword_100365180);
    sub_1001C5854();
    sub_1001C58A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365178);
  }

  return result;
}

unint64_t sub_1001C5854()
{
  result = qword_100365188;
  if (!qword_100365188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365188);
  }

  return result;
}

unint64_t sub_1001C58A8()
{
  result = qword_100365190;
  if (!qword_100365190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365190);
  }

  return result;
}

unint64_t sub_1001C58FC()
{
  result = qword_100365198;
  if (!qword_100365198)
  {
    sub_100008CF0(&qword_100365150);
    sub_1001C55D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365198);
  }

  return result;
}

unint64_t sub_1001C5988()
{
  result = qword_1003651D8;
  if (!qword_1003651D8)
  {
    sub_100008CF0(&qword_1003651C0);
    sub_1001C5A14();
    sub_1001C5B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003651D8);
  }

  return result;
}

unint64_t sub_1001C5A14()
{
  result = qword_1003651E0;
  if (!qword_1003651E0)
  {
    sub_100008CF0(&qword_1003651C8);
    sub_1001C5AA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003651E0);
  }

  return result;
}

unint64_t sub_1001C5AA0()
{
  result = qword_1003651E8;
  if (!qword_1003651E8)
  {
    sub_100008CF0(&qword_1003651F0);
    sub_100009274(&qword_100360E68, &qword_100360E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003651E8);
  }

  return result;
}

unint64_t sub_1001C5B58()
{
  result = qword_1003651F8;
  if (!qword_1003651F8)
  {
    sub_100008CF0(&qword_1003651A8);
    sub_1001C5BE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003651F8);
  }

  return result;
}

unint64_t sub_1001C5BE4()
{
  result = qword_100365200;
  if (!qword_100365200)
  {
    sub_100008CF0(&qword_100365208);
    sub_100009274(&qword_100360E90, &qword_100360E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365200);
  }

  return result;
}

uint64_t sub_1001C5D18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 2147483646)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    v6 = v5 - 1;
    if (v6 < 0)
    {
      v6 = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = a4(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

void *sub_1001C5E00(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

unint64_t sub_1001C5F14()
{
  result = qword_1003652A8;
  if (!qword_1003652A8)
  {
    sub_100008CF0(&qword_1003650D8);
    sub_1001C5FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003652A8);
  }

  return result;
}

unint64_t sub_1001C5FA0()
{
  result = qword_1003652B0;
  if (!qword_1003652B0)
  {
    sub_100008CF0(&qword_1003652B8);
    sub_1001C54C4();
    sub_1001BB9B0(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003652B0);
  }

  return result;
}

unint64_t sub_1001C60A8()
{
  result = qword_1003652D0;
  if (!qword_1003652D0)
  {
    sub_100008CF0(&qword_1003651D0);
    sub_1001C5988();
    sub_1001597C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003652D0);
  }

  return result;
}

unint64_t sub_1001C61DC()
{
  result = qword_1003652E0;
  if (!qword_1003652E0)
  {
    sub_100008CF0(&qword_1003652D8);
    sub_100009274(&qword_1003652E8, &qword_1003652F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003652E0);
  }

  return result;
}

unint64_t sub_1001C62C0()
{
  result = qword_1003652F8;
  if (!qword_1003652F8)
  {
    sub_100008CF0(&qword_100365300);
    sub_1001C61DC();
    sub_1001BB9B0(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003652F8);
  }

  return result;
}

unint64_t sub_1001C63C4()
{
  result = qword_100365318;
  if (!qword_100365318)
  {
    sub_100008CF0(&qword_100360FC8);
    sub_10015A4E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100365318);
  }

  return result;
}

uint64_t sub_1001C6538(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_1001C65F0@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a5;
  v9 = sub_1000040A8(&qword_100365340);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  v13 = sub_10013B7D8(a1, a2);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  *v12 = static HorizontalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v20 = sub_1000040A8(&qword_100365348);
  sub_1001C67D0(v13, v15, v17, v19, a1, a2, a3, a4, &v12[*(v20 + 44)]);

  v21 = static Edge.Set.all.getter();
  v22 = &v12[*(v10 + 44)];
  *v22 = v21;
  *(v22 + 8) = 0u;
  *(v22 + 24) = 0u;
  v22[40] = 1;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v23 = v29;
  sub_1001C78CC(v12, v29);
  v24 = v23 + *(sub_1000040A8(&qword_100365350) + 36);
  v25 = v35;
  *(v24 + 64) = v34;
  *(v24 + 80) = v25;
  *(v24 + 96) = v36;
  v26 = v31;
  *v24 = v30;
  *(v24 + 16) = v26;
  result = v33;
  *(v24 + 32) = v32;
  *(v24 + 48) = result;
  return result;
}

uint64_t sub_1001C67D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  v67 = a8;
  v65 = a7;
  v66 = a6;
  v64 = a5;
  v70 = a4;
  v76 = a3;
  v75 = a9;
  v74 = sub_1000040A8(&qword_100365358);
  __chkstk_darwin(v74);
  v69 = &v63[-v11];
  v12 = sub_1000040A8(&qword_100365360);
  __chkstk_darwin(v12 - 8);
  v68 = &v63[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v63[-v15];
  v71 = sub_1000040A8(&qword_100365368);
  __chkstk_darwin(v71);
  v72 = &v63[-v17];
  v18 = sub_1000040A8(&qword_100365370);
  __chkstk_darwin(v18 - 8);
  v77 = &v63[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v83 = &v63[-v21];
  v22 = sub_1000040A8(&qword_100365378);
  __chkstk_darwin(v22 - 8);
  v24 = &v63[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v27 = &v63[-v26];
  v89 = a1;
  v90 = a2;
  sub_100031770();

  v28 = Text.init<A>(_:)();
  v30 = v29;
  v32 = v31;
  static Font.headline.getter();
  v81 = Text.font(_:)();
  v80 = v33;
  v35 = v34;
  v82 = v36;

  sub_1000317C4(v28, v30, v32 & 1);

  KeyPath = swift_getKeyPath();
  v73 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v78 = v35 & 1;
  LOBYTE(v89) = v35 & 1;
  LOBYTE(v84) = 0;
  *v27 = static HorizontalAlignment.center.getter();
  *(v27 + 1) = 0x4028000000000000;
  v27[16] = 0;
  sub_1000040A8(&qword_100365380);
  v89 = v76;
  swift_getKeyPath();

  sub_1000040A8(&qword_100355E30);
  sub_1000040A8(&qword_100356748);
  sub_100009274(&qword_100357870, &qword_100355E30);
  sub_100031AB8();
  v76 = v27;
  v45 = v70;
  ForEach<>.init(_:id:content:)();
  if (*(v45 + 16))
  {
    *v16 = static HorizontalAlignment.center.getter();
    *(v16 + 1) = 0x4028000000000000;
    v16[16] = 0;
    sub_1000040A8(&qword_100365388);
    v89 = v45;
    swift_getKeyPath();
    v46 = swift_allocObject();
    *(v46 + 16) = v64;
    v47 = v65;
    *(v46 + 24) = v66;
    *(v46 + 32) = v47;
    *(v46 + 40) = v67;

    sub_1000040A8(&qword_100365390);
    sub_1000040A8(&qword_100365398);
    sub_100009274(&qword_1003653A0, &qword_100365390);
    sub_1001C7994();
    sub_1001C79E8();
    ForEach<>.init(_:id:content:)();
    v48 = v68;
    sub_100006C20(v16, v68, &qword_100365360);
    v49 = v69;
    *v69 = 0x4032000000000000;
    *(v49 + 8) = 0;
    v50 = sub_1000040A8(&qword_1003653D8);
    sub_100006C20(v48, v49 + *(v50 + 48), &qword_100365360);
    sub_100008FA0(v48, &qword_100365360);
    sub_100006C20(v49, v72, &qword_100365358);
    swift_storeEnumTagMultiPayload();
    sub_100009274(&qword_1003653E0, &qword_100365358);
    _ConditionalContent<>.init(storage:)();
    sub_100008FA0(v49, &qword_100365358);
    sub_100008FA0(v16, &qword_100365360);
  }

  else
  {
    v51 = v72;
    *v72 = 0x4014000000000000;
    *(v51 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    sub_100009274(&qword_1003653E0, &qword_100365358);
    _ConditionalContent<>.init(storage:)();
  }

  v52 = v76;
  sub_100006C20(v76, v24, &qword_100365378);
  v53 = v83;
  v54 = v77;
  sub_100006C20(v83, v77, &qword_100365370);
  *&v84 = v81;
  *(&v84 + 1) = v80;
  LOBYTE(v85) = v78;
  *(&v85 + 1) = *v106;
  DWORD1(v85) = *&v106[3];
  *(&v85 + 1) = v82;
  *&v86 = KeyPath;
  BYTE8(v86) = 1;
  HIDWORD(v86) = *&v105[3];
  *(&v86 + 9) = *v105;
  v55 = v73;
  LOBYTE(v87) = v73;
  DWORD1(v87) = *&v104[3];
  *(&v87 + 1) = *v104;
  *(&v87 + 1) = v38;
  *v88 = v40;
  *&v88[8] = v42;
  *&v88[16] = v44;
  v88[24] = 0;
  v56 = v85;
  v57 = v75;
  *v75 = v84;
  v57[1] = v56;
  v58 = v86;
  v59 = v87;
  v60 = *v88;
  *(v57 + 73) = *&v88[9];
  v57[3] = v59;
  v57[4] = v60;
  v57[2] = v58;
  *(v57 + 12) = 0x4018000000000000;
  *(v57 + 104) = 0;
  v61 = sub_1000040A8(&qword_1003653E8);
  sub_100006C20(v24, v57 + *(v61 + 64), &qword_100365378);
  sub_100006C20(v54, v57 + *(v61 + 80), &qword_100365370);
  sub_100006C20(&v84, &v89, &qword_10035B600);
  sub_100008FA0(v53, &qword_100365370);
  sub_100008FA0(v52, &qword_100365378);
  sub_100008FA0(v54, &qword_100365370);
  sub_100008FA0(v24, &qword_100365378);
  v89 = v81;
  v90 = v80;
  v91 = v78;
  *v92 = *v106;
  *&v92[3] = *&v106[3];
  v93 = v82;
  v94 = KeyPath;
  v95 = 1;
  *v96 = *v105;
  *&v96[3] = *&v105[3];
  v97 = v55;
  *v98 = *v104;
  *&v98[3] = *&v104[3];
  v99 = v38;
  v100 = v40;
  v101 = v42;
  v102 = v44;
  v103 = 0;
  return sub_100008FA0(&v89, &qword_10035B600);
}

uint64_t sub_1001C7250@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Font.Leading();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v28 = v8;
  v29 = v9;
  sub_100031770();

  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  static Font.subheadline.getter();
  (*(v5 + 104))(v7, enum case for Font.Leading.tight(_:), v4);
  Font.leading(_:)();

  (*(v5 + 8))(v7, v4);
  v15 = Text.font(_:)();
  v17 = v16;
  v19 = v18;

  sub_1000317C4(v10, v12, v14 & 1);

  LODWORD(v28) = static HierarchicalShapeStyle.secondary.getter();
  v20 = Text.foregroundStyle<A>(_:)();
  v22 = v21;
  LOBYTE(v12) = v23;
  v25 = v24;
  sub_1000317C4(v15, v17, v19 & 1);

  result = swift_getKeyPath();
  *a2 = v20;
  *(a2 + 8) = v22;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v25;
  *(a2 + 32) = result;
  *(a2 + 40) = 1;
  return result;
}

uint64_t sub_1001C7474@<X0>(char *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a4;
  v34 = a6;
  v10 = type metadata accessor for BorderedButtonStyle();
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  __chkstk_darwin(v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000040A8(&qword_1003653B8);
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v17 = *a1;
  v19 = *(a1 + 1);
  v18 = *(a1 + 2);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  v21 = v31;
  *(v20 + 24) = a3;
  *(v20 + 32) = v21;
  *(v20 + 40) = a5;
  *(v20 + 48) = v17;
  *(v20 + 56) = v19;
  *(v20 + 64) = v18;
  v35 = v17;
  v36 = v19;
  v37 = v18;

  sub_1000040A8(&qword_1003653F0);
  sub_1001C7CBC();
  Button.init(action:label:)();
  v22 = &v16[*(v14 + 36)];
  sub_1000040A8(&qword_100357740);
  static ButtonBorderShape.roundedRectangle.getter();
  *v22 = swift_getKeyPath();
  BorderedButtonStyle.init()();
  sub_1001C7AFC();
  sub_1001C7BE0();
  v23 = v34;
  v24 = v32;
  View.buttonStyle<A>(_:)();
  (*(v33 + 8))(v13, v24);
  sub_100008FA0(v16, &qword_1003653B8);
  v25 = [objc_opt_self() labelColor];
  v26 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v38 = v26;
  v28 = AnyShapeStyle.init<A>(_:)();
  result = sub_1000040A8(&qword_100365398);
  v30 = (v23 + *(result + 36));
  *v30 = KeyPath;
  v30[1] = v28;
  return result;
}

uint64_t sub_1001C7768@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  *&v20 = a1;
  *(&v20 + 1) = a2;
  sub_100031770();

  v4 = Text.init<A>(_:)();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v11 = v8 & 1;
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  v12 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v14 = static Edge.Set.vertical.getter();
  result = EdgeInsets.init(_all:)();
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v11;
  *(a3 + 24) = v10;
  *(a3 + 96) = v24;
  *(a3 + 112) = v25;
  *(a3 + 128) = v26;
  *(a3 + 32) = v20;
  *(a3 + 48) = v21;
  *(a3 + 64) = v22;
  *(a3 + 80) = v23;
  *(a3 + 144) = KeyPath;
  *(a3 + 152) = v12;
  *(a3 + 160) = v14;
  *(a3 + 168) = v16;
  *(a3 + 176) = v17;
  *(a3 + 184) = v18;
  *(a3 + 192) = v19;
  *(a3 + 200) = 0;
  return result;
}

uint64_t sub_1001C78CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100365340);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001C7944()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1001C7994()
{
  result = qword_1003653A8;
  if (!qword_1003653A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003653A8);
  }

  return result;
}

unint64_t sub_1001C79E8()
{
  result = qword_1003653B0;
  if (!qword_1003653B0)
  {
    sub_100008CF0(&qword_100365398);
    sub_100008CF0(&qword_1003653B8);
    type metadata accessor for BorderedButtonStyle();
    sub_1001C7AFC();
    sub_1001C7BE0();
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_100357770, &qword_100357778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003653B0);
  }

  return result;
}

unint64_t sub_1001C7AFC()
{
  result = qword_1003653C0;
  if (!qword_1003653C0)
  {
    sub_100008CF0(&qword_1003653B8);
    sub_100009274(&qword_1003653C8, &qword_1003653D0);
    sub_100009274(&qword_100357768, &qword_100357740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003653C0);
  }

  return result;
}