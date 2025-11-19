uint64_t sub_100151FD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100152038(uint64_t *a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 8);
  v10 = *a1;
  v6 = v11;

  if ((v6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v10, &qword_1003B35C8);
    (*(v3 + 8))(v5, v2);
  }

  sub_10015DE24();
}

uint64_t sub_1001521A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v66 = type metadata accessor for Locale();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for EnvironmentValues();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_100005AD4(&qword_1003B3688);
  __chkstk_darwin(v67);
  v6 = &v58 - v5;
  v68 = sub_100005AD4(&qword_1003B3690);
  v7 = __chkstk_darwin(v68);
  v71 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v69 = &v58 - v10;
  __chkstk_darwin(v9);
  v70 = &v58 - v11;
  v76 = *(a1 + 48);
  sub_100005AD4(&qword_1003AC8F8);
  State.projectedValue.getter();
  v61 = *(&v77 + 1);
  v62 = v77;
  v60 = v78;
  v12 = swift_allocObject();
  v13 = *(a1 + 16);
  v12[1] = *a1;
  v12[2] = v13;
  v14 = *(a1 + 48);
  v12[3] = *(a1 + 32);
  v12[4] = v14;
  sub_100153420(a1, &v77);
  v59 = sub_10014DA10(sub_100158128);
  v58 = v15;
  v16 = sub_10014E33C();
  v18 = v17;
  v85 = *(a1 + 8);
  v19 = *a1;
  v84 = *a1;
  v20 = v85;

  v21 = v20;
  if ((v20 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v23 = v73;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v84, &qword_1003B35C8);
    (*(v74 + 8))(v23, v75);
  }

  v24 = type metadata accessor for LabeledExpandingTextView();
  sub_100158128(&v6[*(v24 + 36)]);

  v25 = sub_10014EECC();
  type metadata accessor for LiveActivityViewModel();
  v63 = sub_100153694(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  *v6 = Environment.init<A>(_:)();
  v6[8] = v26 & 1;
  v27 = v61;
  *(v6 + 2) = v62;
  *(v6 + 3) = v27;
  v6[32] = v60;
  *(v6 + 5) = sub_1001537C4;
  *(v6 + 6) = v12;
  v28 = v58;
  *(v6 + 7) = v59;
  *(v6 + 8) = v28;
  *(v6 + 9) = v16;
  *(v6 + 10) = v18;
  v6[*(v24 + 40)] = v25 & 1;
  KeyPath = swift_getKeyPath();

  if ((v21 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v30 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v31 = v73;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v84, &qword_1003B35C8);
    (*(v74 + 8))(v31, v75);
  }

  v32 = v64;
  sub_100158128(v64);

  v33 = &v6[*(sub_100005AD4(&qword_1003B3698) + 36)];
  sub_100005AD4(&qword_1003B3630);
  Locale.language.getter();
  (*(v65 + 8))(v32, v66);
  *v33 = KeyPath;
  v34 = swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v35 = v77;
  v36 = &v6[*(sub_100005AD4(&qword_1003B36A0) + 36)];
  *v36 = v34;
  v36[1] = v35;
  v37 = swift_getKeyPath();
  v38 = sub_10014E67C();
  v39 = &v6[*(sub_100005AD4(&qword_1003B36A8) + 36)];
  *v39 = v37;
  v39[1] = v38;
  *&v6[*(v67 + 36)] = static Color.translateAccentColor.getter();
  static Alignment.leading.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v40 = v69;
  sub_100023BD4(v6, v69, &qword_1003B3688);
  v41 = (v40 + *(v68 + 36));
  v42 = v82;
  v41[4] = v81;
  v41[5] = v42;
  v41[6] = v83;
  v43 = v78;
  *v41 = v77;
  v41[1] = v43;
  v44 = v80;
  v41[2] = v79;
  v41[3] = v44;
  v45 = v70;
  sub_100023BD4(v40, v70, &qword_1003B3690);

  if ((v21 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v46 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v47 = v73;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v84, &qword_1003B35C8);
    (*(v74 + 8))(v47, v75);
    v19 = v76;
  }

  swift_getKeyPath();
  *&v76 = v19;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v48 = *(v19 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation);
  swift_unknownObjectRetain();

  if (v48)
  {
    swift_unknownObjectRelease();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v49 = *(&v76 + 1);
    if (*(&v76 + 1))
    {
    }

    v50 = v49 != 0;
    v48 = swift_allocObject();
    v51 = *(a1 + 16);
    v48[1] = *a1;
    v48[2] = v51;
    v52 = *(a1 + 48);
    v48[3] = *(a1 + 32);
    v48[4] = v52;
    sub_100153420(a1, &v76);

    v53 = sub_10015396C;
  }

  else
  {
    v50 = 0;
    v53 = 0;
  }

  v54 = v71;
  sub_10001F620(v45, v71, &qword_1003B3690);
  v55 = v72;
  sub_10001F620(v54, v72, &qword_1003B3690);
  v56 = (v55 + *(sub_100005AD4(&qword_1003B36B0) + 48));
  sub_1001538F4(v50, v53);
  sub_100153904(v50, v53);
  *v56 = v50;
  v56[1] = v53;
  v56[2] = v48;
  sub_100009EBC(v45, &qword_1003B3690);
  sub_100153904(v50, v53);
  return sub_100009EBC(v54, &qword_1003B3690);
}

uint64_t sub_100152BF0(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v5 - 8);
  v7 = &v14[-v6];
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for MainActor();
  sub_100153420(a1, v14);
  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  v11 = a1[1];
  *(v10 + 32) = *a1;
  *(v10 + 48) = v11;
  v12 = a1[3];
  *(v10 + 64) = a1[2];
  *(v10 + 80) = v12;
  sub_10005E36C(0, 0, v7, a3, v10);
}

uint64_t sub_100152D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for EnvironmentValues();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v7;
  v4[11] = v6;

  return _swift_task_switch(sub_100152E18, v7, v6);
}

uint64_t sub_100152E18()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 8);
  *(v0 + 16) = *v1;
  *(v0 + 24) = v2;
  v3 = v2;

  if ((v3 & 1) == 0)
  {
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);
    v6 = *(v0 + 48);
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(v0 + 16, &qword_1003B35C8);
    (*(v5 + 8))(v4, v6);
  }

  v8 = sub_100157B1C();
  v9 = [v8 isPassthrough];

  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_100152FA4;

  return sub_10015114C(v9);
}

uint64_t sub_100152FA4()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_10008B7C8, v3, v2);
}

double sub_1001530C4@<D0>(double *a1@<X8>)
{
  sub_10012CEF0();
  EnvironmentValues.subscript.getter();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_100153160@<X0>(void *a1@<X8>)
{
  sub_10012CE9C();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1001531B0()
{
  sub_10012CE9C();

  return EnvironmentValues.subscript.setter();
}

uint64_t sub_100153210(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 8);
  v11 = *a2;
  v7 = v12;

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100009EBC(&v11, &qword_1003B35C8);
    (*(v4 + 8))(v6, v3);
  }

  sub_100162C10(0);
}

uint64_t sub_100153458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LabeledTextView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001534F4()
{
  result = qword_1003B3638;
  if (!qword_1003B3638)
  {
    sub_100005EA8(&qword_1003B3618);
    sub_1001535AC();
    sub_10001BAEC(&qword_1003B3660, &qword_1003B3630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3638);
  }

  return result;
}

unint64_t sub_1001535AC()
{
  result = qword_1003B3640;
  if (!qword_1003B3640)
  {
    sub_100005EA8(&qword_1003B3610);
    sub_100153694(&qword_1003B3648, type metadata accessor for LabeledTextView);
    sub_10001BAEC(&qword_1003B3650, &qword_1003B3658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3640);
  }

  return result;
}

uint64_t sub_100153694(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001536E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B3628);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100153754(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B3628);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1001537FC@<D0>(double *a1@<X8>)
{
  sub_10012CEF0();
  EnvironmentValues.subscript.getter();
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1001538A0@<X0>(void *a1@<X8>)
{
  sub_10012CE9C();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_1001538F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100153904(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10015391C()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100153980(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001B16C;

  return sub_100152D24(a1, v4, v5, v1 + 32);
}

uint64_t sub_100153A30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001B558;

  return sub_100151DEC();
}

uint64_t sub_100153AE0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100153B38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001B558;

  return sub_100150F60();
}

unint64_t sub_100153BF4()
{
  result = qword_1003B36D8;
  if (!qword_1003B36D8)
  {
    sub_100005EA8(&qword_1003B35D8);
    sub_100153CAC();
    sub_10001BAEC(&qword_1003B3700, &qword_1003B3708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B36D8);
  }

  return result;
}

unint64_t sub_100153CAC()
{
  result = qword_1003B36E0;
  if (!qword_1003B36E0)
  {
    sub_100005EA8(&qword_1003B35B8);
    sub_100153D64();
    sub_10001BAEC(&qword_1003B3700, &qword_1003B3708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B36E0);
  }

  return result;
}

unint64_t sub_100153D64()
{
  result = qword_1003B36E8;
  if (!qword_1003B36E8)
  {
    sub_100005EA8(&qword_1003B35B0);
    sub_100153E1C();
    sub_10001BAEC(&qword_1003AE9B0, &qword_1003AE9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B36E8);
  }

  return result;
}

unint64_t sub_100153E1C()
{
  result = qword_1003B36F0;
  if (!qword_1003B36F0)
  {
    sub_100005EA8(&qword_1003B35A8);
    sub_10001BAEC(&qword_1003B36F8, &qword_1003B35A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B36F0);
  }

  return result;
}

uint64_t sub_100153F1C@<X0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100005AD4(&qword_1003B3710);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19[-v10];
  v12 = sub_100005AD4(&qword_1003B3718);
  __chkstk_darwin(v12);
  v14 = &v19[-v13];
  v15 = swift_allocObject();
  *(v15 + 16) = a1 & 1;
  *(v15 + 17) = HIBYTE(a1) & 1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  v20 = a1 & 0x101;
  v21 = a2;
  v22 = a3;

  sub_100005AD4(&qword_1003B3720);
  sub_100154788();
  Button.init(action:label:)();
  sub_10001BAEC(&qword_1003B3760, &qword_1003B3710);
  View.accessibilityIdentifier(_:)();
  (*(v9 + 8))(v11, v8);
  sub_1001548F8();
  sub_1001549E0();
  View.buttonStyle<A>(_:)();
  sub_100009EBC(v14, &qword_1003B3718);
  v16 = static AnyTransition.blur(radius:)();
  *(a4 + *(sub_100005AD4(&qword_1003B3778) + 36)) = v16;
  v17 = static Color.translateAccentColor.getter();
  result = sub_100005AD4(&qword_1003B3780);
  *(a4 + *(result + 36)) = v17;
  return result;
}

uint64_t sub_1001541E4@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = sub_100005AD4(&qword_1003B3788);
  sub_1001542D8(a1 & 1, a2 + *(v5 + 44));
  v6 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a2 + *(sub_100005AD4(&qword_1003B3738) + 36);
  *v15 = v6;
  *(v15 + 1) = v8;
  *(v15 + 2) = v10;
  *(v15 + 3) = v12;
  *(v15 + 4) = v14;
  v15[40] = 0;
  result = sub_100005AD4(&qword_1003B3720);
  v17 = a2 + *(result + 36);
  *v17 = 1056964608;
  *(v17 + 2) = 256;
  return result;
}

uint64_t sub_1001542D8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v37 = type metadata accessor for SymbolEffectOptions();
  v3 = *(v37 - 8);
  __chkstk_darwin(v37);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AutomaticSymbolEffect();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005AD4(&qword_1003B3790);
  v11 = v10 - 8;
  v12 = __chkstk_darwin(v10);
  v36 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = (&v31 - v15);
  __chkstk_darwin(v14);
  v18 = &v31 - v17;
  v19 = 0x6C69662E79616C70;
  if ((a1 & 1) == 0)
  {
    v19 = 0x69662E6573756170;
  }

  v35 = v19;
  if (a1)
  {
    v20 = 0xE90000000000006CLL;
  }

  else
  {
    v20 = 0xEA00000000006C6CLL;
  }

  v34 = v20;
  v33 = Image.init(systemName:)();
  static Font.body.getter();
  static Font.Weight.bold.getter();
  v32 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  AutomaticSymbolEffect.init()();
  static SymbolEffectOptions.default.getter();
  v22 = (v16 + *(v11 + 44));
  sub_100005AD4(&qword_1003B3798);
  sub_100154B04(&qword_1003B37A0, &type metadata accessor for AutomaticSymbolEffect);
  static ContentTransition.symbolEffect<A>(_:options:)();
  (*(v3 + 8))(v5, v37);
  (*(v7 + 8))(v9, v6);
  *v22 = swift_getKeyPath();
  v23 = v32;
  *v16 = v33;
  v16[1] = KeyPath;
  v16[2] = v23;
  sub_100154B74(v16, v18);
  v24 = Image.init(systemName:)();
  static Font.body.getter();
  static Font.Weight.bold.getter();
  v25 = Font.weight(_:)();

  v26 = swift_getKeyPath();
  v27 = v36;
  sub_100154BE4(v18, v36);
  v28 = v38;
  sub_100154BE4(v27, v38);
  v29 = (v28 + *(sub_100005AD4(&qword_1003B37A8) + 48));
  *v29 = v24;
  v29[1] = v26;
  v29[2] = v25;

  sub_100009EBC(v18, &qword_1003B3790);

  return sub_100009EBC(v27, &qword_1003B3790);
}

uint64_t sub_1001546E4@<X0>(uint64_t a1@<X8>)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_100153F1C(v2 | *v1, *(v1 + 1), *(v1 + 2), a1);
}

uint64_t sub_100154704()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_100154788()
{
  result = qword_1003B3728;
  if (!qword_1003B3728)
  {
    sub_100005EA8(&qword_1003B3720);
    sub_100154840();
    sub_10001BAEC(&qword_1003B3750, &qword_1003B3758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3728);
  }

  return result;
}

unint64_t sub_100154840()
{
  result = qword_1003B3730;
  if (!qword_1003B3730)
  {
    sub_100005EA8(&qword_1003B3738);
    sub_10001BAEC(&qword_1003B3740, &qword_1003B3748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3730);
  }

  return result;
}

unint64_t sub_1001548F8()
{
  result = qword_1003B3768;
  if (!qword_1003B3768)
  {
    sub_100005EA8(&qword_1003B3718);
    sub_10001BAEC(&qword_1003B3760, &qword_1003B3710);
    sub_100154B04(&qword_1003AA3E8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3768);
  }

  return result;
}

unint64_t sub_1001549E0()
{
  result = qword_1003B3770;
  if (!qword_1003B3770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3770);
  }

  return result;
}

uint64_t sub_100154A34(uint64_t a1)
{
  v2 = type metadata accessor for ContentTransition();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.contentTransition.setter();
}

uint64_t sub_100154B04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100154B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B3790);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100154BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B3790);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100154C58()
{
  result = qword_1003B37B0;
  if (!qword_1003B37B0)
  {
    sub_100005EA8(&qword_1003B3780);
    sub_100154D10();
    sub_10001BAEC(&qword_1003B3650, &qword_1003B3658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B37B0);
  }

  return result;
}

unint64_t sub_100154D10()
{
  result = qword_1003B37B8;
  if (!qword_1003B37B8)
  {
    sub_100005EA8(&qword_1003B3778);
    sub_100005EA8(&qword_1003B3718);
    sub_1001548F8();
    sub_1001549E0();
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003AE9B0, &qword_1003AE9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B37B8);
  }

  return result;
}

uint64_t sub_100154E34(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100005AD4(&qword_1003AE478);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100154F04(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100005AD4(&qword_1003AE478);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LiveActivityView()
{
  result = qword_1003B3818;
  if (!qword_1003B3818)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100155000()
{
  sub_1001550E4(319, &unk_1003B3828, type metadata accessor for LiveActivityViewModel, &type metadata accessor for State);
  if (v0 <= 0x3F)
  {
    sub_1001550E4(319, &qword_1003AE530, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001550E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100155164()
{
  v1 = sub_100005AD4(&qword_1003B36C8);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = *v0;
  v5 = v0[1];
  v18 = *v0;
  v19 = v5;
  sub_100005AD4(&qword_1003B3878);
  State.wrappedValue.getter();
  v6 = v16;
  swift_getKeyPath();
  v18 = v6;
  sub_1001571A4(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation);
  swift_unknownObjectRetain();

  if (v7)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = v4;
    v19 = v5;
    State.wrappedValue.getter();
    v8 = v16;
    swift_getKeyPath();
    v18 = v8;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__partialSpeechResult;
    swift_beginAccess();
    sub_10001F620(v8 + v9, v3, &qword_1003B36C8);

    v10 = sub_100005AD4(&qword_1003B36D0);
    LODWORD(v8) = (*(*(v10 - 8) + 48))(v3, 1, v10);
    sub_100009EBC(v3, &qword_1003B36C8);
    if (v8 == 1)
    {
      v16 = v4;
      v17 = v5;
      State.wrappedValue.getter();
      v11 = sub_100159F68();

      if (v11 == 7)
      {
        v16 = v4;
        v17 = v5;
        State.wrappedValue.getter();
        v12 = v15;
        swift_getKeyPath();
        v16 = v12;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v13 = *(v12 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__languageIDAvailable);

        return v13;
      }
    }
  }

  return 0;
}

BOOL sub_100155454()
{
  v1 = sub_100005AD4(&qword_1003B36C8);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = *v0;
  v5 = v0[1];
  v13 = *v0;
  v14 = v5;
  sub_100005AD4(&qword_1003B3878);
  State.wrappedValue.getter();
  v6 = v15;
  swift_getKeyPath();
  v13 = v6;
  sub_1001571A4(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v6 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__languageIDAvailable);

  if (v7 != 1)
  {
    return 0;
  }

  v13 = v4;
  v14 = v5;
  State.wrappedValue.getter();
  v8 = v15;
  swift_getKeyPath();
  v13 = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__partialSpeechResult;
  swift_beginAccess();
  sub_10001F620(v8 + v9, v3, &qword_1003B36C8);

  v10 = sub_100005AD4(&qword_1003B36D0);
  v11 = (*(*(v10 - 8) + 48))(v3, 1, v10) == 1;
  sub_100009EBC(v3, &qword_1003B36C8);
  return v11;
}

uint64_t sub_1001556A0@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_100005AD4(&qword_1003B3858);
  __chkstk_darwin(v2);
  v4 = v40 - v3;
  v5 = sub_100005AD4(&qword_1003B3860);
  v6 = *(v5 - 8);
  v42 = v5;
  v43 = v6;
  __chkstk_darwin(v5);
  v8 = v40 - v7;
  v44 = sub_100005AD4(&qword_1003B3868);
  __chkstk_darwin(v44);
  v10 = (v40 - v9);
  *v10 = static Alignment.center.getter();
  v10[1] = v11;
  v40[1] = *(sub_100005AD4(&qword_1003B3870) + 44);
  sub_100155B88(v1, v4);
  v41 = v1;
  v12 = *v1;
  v46 = v1[1];
  v47 = v12;
  *&v59 = v12;
  *(&v59 + 1) = v46;
  v45 = sub_100005AD4(&qword_1003B3878);
  State.wrappedValue.getter();
  v13 = type metadata accessor for LiveActivityViewModel();
  v14 = sub_1001569C4(&qword_1003B3880, &qword_1003B3858, &unk_1002E1158, sub_100156744);
  v15 = sub_1001571A4(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  View.environment<A>(_:)();

  sub_100009EBC(v4, &qword_1003B3858);
  static Edge.Set.all.getter();
  *&v59 = v2;
  *(&v59 + 1) = v13;
  *&v60 = v14;
  *(&v60 + 1) = v15;
  swift_getOpaqueTypeConformance2();
  v16 = v42;
  View.scenePadding(_:)();
  (*(v43 + 8))(v8, v16);
  v17 = static Alignment.top.getter();
  v19 = v18;
  sub_10015632C(v41, &v50);
  v20 = v53;
  v21 = v52;
  v22 = v53;
  v23 = v52;
  v56[3] = v53;
  v56[4] = v54;
  v56[2] = v52;
  v24 = v55;
  *&v57 = v55;
  *(&v57 + 1) = v17;
  v58 = v19;
  v25 = v10 + *(v44 + 36);
  v26 = v57;
  *(v25 + 4) = v54;
  *(v25 + 5) = v26;
  *(v25 + 2) = v21;
  *(v25 + 3) = v22;
  v27 = v50;
  v28 = v50;
  v29 = v51;
  v30 = v51;
  *v25 = v50;
  *(v25 + 1) = v29;
  *(v25 + 12) = v19;
  v56[0] = v27;
  v56[1] = v29;
  v61 = v23;
  v62 = v20;
  v63 = v54;
  v59 = v28;
  v60 = v30;
  v64 = v24;
  v65 = v17;
  v66 = v19;
  sub_10001F620(v56, v49, &qword_1003B3900);
  sub_100009EBC(&v59, &qword_1003B3900);
  sub_100156B74();
  v31 = v48;
  View.allowsSecureDrawing()();
  sub_100156C58(v10);
  v32 = static Animation.spring(response:dampingFraction:blendDuration:)();
  LOBYTE(v17) = sub_100155164();
  v33 = v31 + *(sub_100005AD4(&qword_1003B3928) + 36);
  v34 = v31;
  *v33 = v32;
  *(v33 + 8) = v17 & 1;
  v35 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v49[0] = v47;
  v49[1] = v46;
  State.wrappedValue.getter();
  LODWORD(v31) = sub_100159F68();

  v36 = v34 + *(sub_100005AD4(&qword_1003B3930) + 36);
  *v36 = v35;
  *(v36 + 8) = v31 != 7;
  v37 = static Animation.spring(response:dampingFraction:blendDuration:)();
  LOBYTE(v17) = sub_100155454();
  result = sub_100005AD4(&qword_1003B3938);
  v39 = v34 + *(result + 36);
  *v39 = v37;
  *(v39 + 8) = v17 & 1;
  return result;
}

uint64_t sub_100155B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for OpacityTransition();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v38 - v8;
  v10 = sub_100005AD4(&qword_1003B3948);
  __chkstk_darwin(v10);
  v12 = &v38 - v11;
  v39 = type metadata accessor for LiveActivityErrorView();
  __chkstk_darwin(v39);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 8);
  *&v44 = *a1;
  *(&v44 + 1) = v15;
  sub_100005AD4(&qword_1003B3878);
  State.wrappedValue.getter();
  v16 = sub_100159F68();

  if (v16 == 7)
  {
    sub_1001560BC(a1, v42);
    OpacityTransition.init()();
    (*(v4 + 16))(v7, v9, v3);
    sub_1001571A4(qword_1003AF5D8, &type metadata accessor for OpacityTransition);
    v17 = AnyTransition.init<A>(_:)();
    (*(v4 + 8))(v9, v3);
    v47 = v42[3];
    LOBYTE(v48) = v43;
    v45 = v42[1];
    v46 = v42[2];
    v44 = v42[0];
    v18 = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v41 = 0;
    v27 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v28 = v45;
    v29 = v47;
    *(v12 + 2) = v46;
    *(v12 + 3) = v29;
    v30 = v48;
    *v12 = v44;
    *(v12 + 1) = v28;
    *(v12 + 8) = v30;
    *(v12 + 9) = v17;
    v12[80] = v18;
    *(v12 + 11) = v20;
    *(v12 + 12) = v22;
    *(v12 + 13) = v24;
    *(v12 + 14) = v26;
    v12[120] = 0;
    v12[128] = v27;
    *(v12 + 17) = v31;
    *(v12 + 18) = v32;
    *(v12 + 19) = v33;
    *(v12 + 20) = v34;
    v12[168] = 0;
    swift_storeEnumTagMultiPayload();
    sub_100005AD4(&qword_1003B38A8);
    sub_1001571A4(&qword_1003B3898, type metadata accessor for LiveActivityErrorView);
    sub_10015685C(&qword_1003B38A0, &qword_1003B38A8, &unk_1002E1188, sub_10015682C);
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    type metadata accessor for LiveActivityViewModel();
    sub_1001571A4(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
    *v14 = Environment.init<A>(_:)();
    v14[8] = v36 & 1;
    v37 = *(v39 + 20);
    *&v14[v37] = swift_getKeyPath();
    sub_100005AD4(&qword_1003B3580);
    swift_storeEnumTagMultiPayload();
    sub_10014D618(v14, v12);
    swift_storeEnumTagMultiPayload();
    sub_100005AD4(&qword_1003B38A8);
    sub_1001571A4(&qword_1003B3898, type metadata accessor for LiveActivityErrorView);
    sub_10015685C(&qword_1003B38A0, &qword_1003B38A8, &unk_1002E1188, sub_10015682C);
    _ConditionalContent<>.init(storage:)();
    return sub_100157148(v14);
  }
}

__n128 sub_1001560BC@<Q0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  if (sub_100155454())
  {
    type metadata accessor for LiveActivityViewModel();
    sub_1001571A4(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
    Environment.init<A>(_:)();
  }

  else
  {
    v5 = *a1;
    sub_100005AD4(&qword_1003B3878);
    State.wrappedValue.getter();

    type metadata accessor for LiveActivityViewModel();
    sub_1001571A4(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
    Environment.init<A>(_:)();
    type metadata accessor for TTSManager();
    sub_1001571A4(&qword_1003AE508, type metadata accessor for TTSManager);
    ObservedObject.init(wrappedValue:)();
    State.init(wrappedValue:)();
    State.init(wrappedValue:)();
  }

  sub_100156ACC();
  sub_100156B20();
  _ConditionalContent<>.init(storage:)();
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v9;
  result = v6;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_10015632C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ScaleTransition();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v33 - v8;
  v10 = type metadata accessor for LayoutDirection();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v33 - v15;
  result = sub_100155164();
  if (result)
  {
    v18 = a1[1];
    v40 = *a1;
    v41 = v18;
    sub_100005AD4(&qword_1003B3878);
    State.wrappedValue.getter();
    v37 = v5;
    v19 = v39;
    swift_getKeyPath();
    v36 = v4;
    v40 = v19;
    sub_1001571A4(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v35 = *(v19 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__speechAudioLevel);

    KeyPath = swift_getKeyPath();
    type metadata accessor for LiveActivityView();
    sub_100156E04(&qword_1003BA370, &type metadata accessor for LayoutDirection, v16);
    (*(v11 + 104))(v14, enum case for LayoutDirection.leftToRight(_:), v10);
    v21 = static LayoutDirection.== infix(_:_:)();
    v22 = *(v11 + 8);
    v22(v14, v10);
    v22(v16, v10);
    static UnitPoint.center.getter();
    v33 = v23;
    v34 = v24;
    LOBYTE(v40) = 0;
    static UnitPoint.center.getter();
    ScaleTransition.init(_:anchor:)();
    v25 = v37;
    v26 = v36;
    (*(v37 + 16))(v38, v9, v36);
    sub_1001571A4(&qword_1003B3940, &type metadata accessor for ScaleTransition);
    v27 = v26;
    v28 = AnyTransition.init<A>(_:)();
    result = (*(v25 + 8))(v9, v27);
    *&v29 = v33;
    v30 = v35;
    v31 = 0x400921FB54442D18;
    if (v21)
    {
      v31 = 0;
    }

    *(&v29 + 1) = v34;
    v32 = 0x3FF0000000000000;
  }

  else
  {
    KeyPath = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v28 = 0;
    v29 = 0uLL;
  }

  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 12) = v30;
  *(a2 + 16) = v31;
  *(a2 + 24) = 0;
  *(a2 + 32) = v32;
  *(a2 + 40) = 0;
  *(a2 + 48) = v29;
  *(a2 + 64) = 0;
  *(a2 + 72) = v32;
  *(a2 + 80) = v28;
  return result;
}

unint64_t sub_100156744()
{
  result = qword_1003B3888;
  if (!qword_1003B3888)
  {
    sub_100005EA8(&qword_1003B3890);
    sub_1001571A4(&qword_1003B3898, type metadata accessor for LiveActivityErrorView);
    sub_10015685C(&qword_1003B38A0, &qword_1003B38A8, &unk_1002E1188, sub_10015682C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3888);
  }

  return result;
}

uint64_t sub_10015685C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001568E0()
{
  result = qword_1003B38C0;
  if (!qword_1003B38C0)
  {
    sub_100005EA8(&qword_1003B38C8);
    sub_1001569C4(&qword_1003B38D0, &qword_1003B38D8, &unk_1002E11A0, sub_100156A40);
    sub_10001BAEC(&qword_1003AE9B0, &qword_1003AE9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B38C0);
  }

  return result;
}

uint64_t sub_1001569C4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100156A40()
{
  result = qword_1003B38E0;
  if (!qword_1003B38E0)
  {
    sub_100005EA8(&qword_1003B38E8);
    sub_100156ACC();
    sub_100156B20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B38E0);
  }

  return result;
}

unint64_t sub_100156ACC()
{
  result = qword_1003B38F0;
  if (!qword_1003B38F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B38F0);
  }

  return result;
}

unint64_t sub_100156B20()
{
  result = qword_1003B38F8;
  if (!qword_1003B38F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B38F8);
  }

  return result;
}

unint64_t sub_100156B74()
{
  result = qword_1003B3908;
  if (!qword_1003B3908)
  {
    sub_100005EA8(&qword_1003B3868);
    sub_10001BAEC(&qword_1003B3910, &qword_1003B3918);
    sub_10001BAEC(&qword_1003B3920, &qword_1003B3900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3908);
  }

  return result;
}

uint64_t sub_100156C58(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B3868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100156CC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1001571A4(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__languageIDAvailable);
  return result;
}

uint64_t sub_100156E04@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = type metadata accessor for EnvironmentValues();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100005AD4(a1);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_10001F620(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_100157004@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.displayScale.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10015707C(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.unlockAndOpenURL.setter();
}

uint64_t sub_100157148(uint64_t a1)
{
  v2 = type metadata accessor for LiveActivityErrorView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001571A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100157230(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100005EA8(a2);
    a4();
    sub_10001BAEC(&qword_1003B3700, &qword_1003B3708);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100157310()
{
  result = qword_1003B3960;
  if (!qword_1003B3960)
  {
    sub_100005EA8(&qword_1003B3928);
    sub_100005EA8(&qword_1003B3868);
    sub_100156B74();
    swift_getOpaqueTypeConformance2();
    sub_10001BAEC(&qword_1003B3700, &qword_1003B3708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3960);
  }

  return result;
}

char *sub_100157404()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[6];
  }

  else
  {
    v3 = v0[2];
    v4 = v0[3];
    v5 = objc_allocWithZone(type metadata accessor for SpeechManager());
    v6 = v3;
    v7 = v4;
    v8 = v6;
    v9 = v0;
    v10 = sub_10023B92C(v8, v7);
    *&v10[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate + 8] = &off_100385FA0;
    swift_unknownObjectWeakAssign();
    v11 = v0[6];
    v9[6] = v10;
    v2 = v10;

    v1 = 0;
  }

  v12 = v1;
  return v2;
}

uint64_t sub_100157504@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  v8 = v2;
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *a1;
  swift_beginAccess();
  v6 = type metadata accessor for Locale();
  return (*(*(v6 - 8) + 16))(a2, v8 + v5, v6);
}

uint64_t sub_1001575FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *a2;
  swift_beginAccess();
  v7 = type metadata accessor for Locale();
  return (*(*(v7 - 8) + 16))(a3, v5 + v6, v7);
}

uint64_t sub_1001576F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9, a1);
  return a5(v9);
}

uint64_t sub_1001577F4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v18[0] = a3;
  v18[1] = a4;
  v6 = v4;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  swift_beginAccess();
  v13 = *(v9 + 16);
  v13(v11, v6 + v12, v8);
  sub_100162424(&unk_1003B06F0, &type metadata accessor for Locale);
  v19 = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = *(v9 + 8);
  v14(v11, v8);
  if (a1)
  {
    v13(v11, v19, v8);
    swift_beginAccess();
    (*(v9 + 40))(v6 + v12, v11, v8);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v16 = v19;
    v18[-2] = v6;
    v18[-1] = v16;
    v20 = v6;
    sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v14)(v19, v8);
}

uint64_t sub_100157A84(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_beginAccess();
  v6 = type metadata accessor for Locale();
  (*(*(v6 - 8) + 24))(a1 + v5, a2, v6);
  return swift_endAccess();
}

id sub_100157B1C()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v19 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  swift_getKeyPath();
  v21 = v0;
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__selectedSourceLocale;
  swift_beginAccess();
  v9 = *(v3 + 16);
  v9(v7, v1 + v8, v2);
  swift_getKeyPath();
  v20 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__selectedTargetLocale;
  swift_beginAccess();
  v11 = v19;
  v9(v19, v1 + v10, v2);
  v12 = objc_allocWithZone(_LTLocalePair);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v14 = Locale._bridgeToObjectiveC()().super.isa;
  v15 = [v12 initWithSourceLocale:isa targetLocale:v14];

  v16 = *(v3 + 8);
  v16(v11, v2);
  v16(v7, v2);
  return v15;
}

uint64_t sub_100157D90@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22 = a1;
  v3 = sub_100005AD4(&qword_1003B36C8);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_100005AD4(&qword_1003B36D0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v21 - v11;
  swift_getKeyPath();
  v24 = v1;
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation))
  {
    v13 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation + 8);
    ObjectType = swift_getObjectType();
    v15 = *(v13 + 32);
    swift_unknownObjectRetain();
    v15(ObjectType, v13);
    return swift_unknownObjectRelease();
  }

  else
  {
    swift_getKeyPath();
    v24 = v1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__partialSpeechResult;
    swift_beginAccess();
    sub_10001F620(v2 + v17, v5, &qword_1003B36C8);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_100009EBC(v5, &qword_1003B36C8);
      swift_getKeyPath();
      v23 = v2;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v18 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__selectedSourceLocale;
      swift_beginAccess();
      v19 = type metadata accessor for Locale();
      return (*(*(v19 - 8) + 16))(v22, v2 + v18, v19);
    }

    else
    {
      sub_100164014(v5, v12);
      sub_100164014(v12, v10);

      v20 = type metadata accessor for Locale();
      return (*(*(v20 - 8) + 32))(v22, v10, v20);
    }
  }
}

void sub_100158128(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100157B1C();
  sub_100157D90(v7);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  v10 = [v8 oppositeToLocale:isa];

  if (v10)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000078E8(v11, qword_1003D2818);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Cannot resolve target locale", v14, 2u);
    }

    swift_getKeyPath();
    v16[1] = v2;
    sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__selectedTargetLocale;
    swift_beginAccess();
    (*(v5 + 16))(a1, v2 + v15, v4);
  }
}

uint64_t sub_1001583B4()
{
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectRetain();
}

uint64_t sub_100158468@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation);
  return swift_unknownObjectRetain();
}

uint64_t sub_100158520()
{
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10015868C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  swift_getKeyPath();
  v9 = v3;
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *a1;
  swift_beginAccess();
  return sub_10001F620(v9 + v7, a3, a2);
}

uint64_t sub_100158790@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *a2;
  swift_beginAccess();
  return sub_10001F620(v7 + v8, a4, a3);
}

uint64_t sub_1001588A4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_100005AD4(a5);
  __chkstk_darwin(v8 - 8);
  v10 = &v13[-v9];
  sub_10001F620(a1, &v13[-v9], a5);
  v11 = *a2;
  swift_getKeyPath();
  v14 = v11;
  v15 = v10;
  v16 = v11;
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100009EBC(v10, a5);
}

uint64_t sub_1001589E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = *a3;
  swift_beginAccess();
  sub_100163610(a2, a1 + v7, a4);
  return swift_endAccess();
}

uint64_t sub_100158AB8(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_100158B58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isListening);
  return result;
}

uint64_t sub_100158C30(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_100158D34()
{
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100158DE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isListeningLock);
}

uint64_t sub_100158E94()
{
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_100158F60(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isListeningLock;
  v6 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isListeningLock);

  os_unfair_lock_lock((v6 + 20));
  v7 = *(v6 + 16);
  os_unfair_lock_unlock((v6 + 20));

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v8 = *(v2 + v5);

  os_unfair_lock_lock((v8 + 20));
  *(v8 + 16) = a1;
  os_unfair_lock_unlock((v8 + 20));

  if (v7 != v4)
  {
    sub_10022A744(v4);
  }
}

float sub_1001590B8()
{
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__speechAudioLevel);
}

float sub_100159160@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__speechAudioLevel);
  *a2 = result;
  return result;
}

void sub_100159238(float a1)
{
  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__speechAudioLevel) == a1)
  {
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__speechAudioLevel) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100159358()
{
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t sub_100159418@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__subscriptions;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1001594E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__subscriptions;
  swift_beginAccess();

  v5 = sub_100162494(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100159630(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__subscriptions;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_1001596A0()
{
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__stateError);
}

uint64_t sub_100159748@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__stateError);
  return result;
}

uint64_t sub_1001597F8(uint64_t result)
{
  v2 = result;
  v3 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__stateError;
  v4 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__stateError);
  if (v4 == 3)
  {
    if (result == 3)
    {
      goto LABEL_24;
    }

LABEL_5:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (result == 3)
  {
    goto LABEL_5;
  }

  if (!*(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__stateError))
  {
    v7 = 0x80000001002EF700;
    v6 = 0xD000000000000013;
    v8 = v2;
    if (!v2)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (v4 != 1)
  {
    v7 = 0x80000001002EF720;
    v6 = 0xD000000000000014;
    v8 = v2;
    if (!v2)
    {
      goto LABEL_20;
    }

LABEL_11:
    if (v8 == 1)
    {
      v9 = 0x726F7774654E6F6ELL;
    }

    else
    {
      v9 = 0xD000000000000014;
    }

    if (v8 == 1)
    {
      v10 = 0xE90000000000006BLL;
    }

    else
    {
      v10 = 0x80000001002EF720;
    }

    if (v6 != v9)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v6 = 0x726F7774654E6F6ELL;
  v7 = 0xE90000000000006BLL;
  v8 = v2;
  if (v2)
  {
    goto LABEL_11;
  }

LABEL_20:
  v10 = 0x80000001002EF700;
  if (v6 != 0xD000000000000013)
  {
    goto LABEL_23;
  }

LABEL_21:
  if (v7 == v10)
  {

    goto LABEL_24;
  }

LABEL_23:
  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_24:
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_100159A2C()
{
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isASRSupported + 1))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return v1 | *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isASRSupported);
}

uint64_t sub_100159AEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isASRSupported + 1);
  *a2 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isASRSupported);
  a2[1] = v5;
  return result;
}

uint64_t sub_100159BA8()
{
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_100159C80()
{
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_100159D2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__currentRecordingStopTonePlaybackTask);
}

uint64_t sub_100159DE0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__currentRecordingStopTonePlaybackTask;
  if (!*(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__currentRecordingStopTonePlaybackTask))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = static Task.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_100159F68()
{
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel_appRunForTheFirstTime) != 1)
  {
    return 0;
  }

  v1 = v0;
  swift_getKeyPath();
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__stateError);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      return 6;
    }

    v4 = sub_100157B1C();
    v5 = [v4 isPassthrough];

    if (v5)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isASRSupported) != 1)
      {
        return 1;
      }
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = (v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isASRSupported);
    if ((*(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isASRSupported) & 1) == 0)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (v6[1] != 1)
      {
        return 3;
      }
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*v6 != 1)
    {
      return 1;
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v6[1])
    {
      return 7;
    }

    else
    {
      return 2;
    }
  }

  else if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__stateError))
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

char *sub_10015A1D8()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AD840);
  v84 = *(v2 - 8);
  v85 = v2;
  __chkstk_darwin(v2);
  v83 = &v73 - v3;
  v4 = sub_100005AD4(&qword_1003AD848);
  v87 = *(v4 - 8);
  v88 = v4;
  __chkstk_darwin(v4);
  v86 = &v73 - v5;
  v6 = sub_100005AD4(&qword_1003B23F0);
  __chkstk_darwin(v6 - 8);
  v82 = &v73 - v7;
  v78 = sub_100005AD4(&qword_1003AD850);
  v77 = *(v78 - 8);
  __chkstk_darwin(v78);
  v76 = (&v73 - v8);
  v9 = sub_100005AD4(&qword_1003AD860);
  v80 = *(v9 - 8);
  v81 = v9;
  __chkstk_darwin(v9);
  v79 = &v73 - v10;
  v11 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v11 - 8);
  v89 = &v73 - v12;
  v13 = type metadata accessor for Locale();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v75 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v73 - v18;
  __chkstk_darwin(v17);
  v74 = &v73 - v20;
  v21 = type metadata accessor for TranslationTaskHint();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 2) = [objc_allocWithZone(_LTTranslator) init];
  type metadata accessor for DeviceHelper();
  swift_allocObject();
  v25 = sub_1000CFCFC();
  v26 = objc_allocWithZone(type metadata accessor for RecordingHelper());
  *(v1 + 3) = sub_100203D4C(v25);
  type metadata accessor for ErrorStateContext();
  swift_allocObject();
  *(v1 + 4) = sub_1000E9048();
  (*(v22 + 104))(v24, enum case for TranslationTaskHint.speech(_:), v21);
  type metadata accessor for LanguagesService();
  swift_allocObject();
  *(v1 + 5) = LanguagesService.init(task:)();
  *(v1 + 6) = 0;
  v27 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel_ringer;
  *&v1[v27] = [objc_allocWithZone(type metadata accessor for RingerSwitchObserver()) init];
  v28 = &v1[OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalLIDResult;
  v30 = sub_100005AD4(&qword_1003B3680);
  (*(*(v30 - 8) + 56))(&v1[v29], 1, 1, v30);
  v31 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__partialSpeechResult;
  v32 = sub_100005AD4(&qword_1003B36D0);
  (*(*(v32 - 8) + 56))(&v1[v31], 1, 1, v32);
  v1[OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__languageIDAvailable] = 1;
  v1[OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isListening] = 0;
  sub_100005AD4(&qword_1003B3EB0);
  v33 = swift_allocObject();
  *(v33 + 20) = 0;
  *(v33 + 16) = 0;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isListeningLock] = v33;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__speechAudioLevel] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v34 = sub_10011ED3C(_swiftEmptyArrayStorage);
  }

  else
  {
    v34 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__subscriptions] = v34;
  v1[OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__stateError] = 3;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isASRSupported] = 257;
  *&v1[OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__currentRecordingStopTonePlaybackTask] = 0;
  ObservationRegistrar.init()();
  v35 = objc_opt_self();
  v36 = [v35 standardUserDefaults];
  v37 = String._bridgeToObjectiveC()();
  v38 = [v36 BOOLForKey:v37];

  v1[OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel_appRunForTheFirstTime] = v38;
  v39 = [v35 standardUserDefaults];
  v40 = String._bridgeToObjectiveC()();
  v41 = [v39 stringForKey:v40];

  if (v41)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v42 = v74;
  Locale.init(identifier:)();
  v43 = v14[4];
  v43(&v1[OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__selectedSourceLocale], v42, v13);
  sub_100228CB4();
  v43(&v1[OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__selectedTargetLocale], v19, v13);
  v44 = *(v1 + 2);
  v45 = *(v1 + 3);
  type metadata accessor for TTSManager();
  swift_allocObject();
  v46 = v44;
  v47 = v45;
  v48 = sub_1002BCBDC(v46, v47);

  *(v1 + 7) = v48;
  v49 = type metadata accessor for TaskPriority();
  v50 = v89;
  (*(*(v49 - 8) + 56))(v89, 1, 1, v49);
  type metadata accessor for MainActor();

  v51 = static MainActor.shared.getter();
  v52 = swift_allocObject();
  v52[2] = v51;
  v52[3] = &protocol witness table for MainActor;
  v52[4] = v1;
  sub_10005E36C(0, 0, v50, &unk_1002E1588, v52);

  v73 = *(v1 + 4);
  swift_getKeyPath();
  v53 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel___observationRegistrar;
  v93 = v1;
  v54 = sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  v74 = v53;
  v89 = v54;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v55 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__selectedSourceLocale;
  swift_beginAccess();
  v56 = v14[2];
  v56(v19, &v1[v55], v13);
  swift_getKeyPath();
  v92 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v57 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__selectedTargetLocale;
  swift_beginAccess();
  v58 = v75;
  v56(v75, &v1[v57], v13);
  v59 = v76;
  LanguagesService.$models.getter();
  v60 = sub_1000EAD04(v19, v58, v59);
  (*(v77 + 8))(v59, v78);
  v61 = v14[1];
  v61(v58, v13);
  v61(v19, v13);
  v90 = v60;
  sub_10000A2CC(0, &qword_1003A9C40);
  v62 = static OS_dispatch_queue.main.getter();
  v91 = v62;
  v77 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v63 = *(v77 - 8);
  v76 = *(v63 + 56);
  v78 = v63 + 56;
  v64 = v82;
  v76(v82, 1, 1, v77);
  sub_100005AD4(&qword_1003AD960);
  sub_10001BAEC(&qword_1003AD968, &qword_1003AD960);
  v75 = sub_100051450();
  v65 = v79;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v64, &qword_1003B23F0);

  swift_allocObject();
  swift_weakInit();
  v73 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10001BAEC(&qword_1003AD970, &qword_1003AD860);

  v66 = v81;
  Publisher<>.sink(receiveValue:)();

  (*(v80 + 8))(v65, v66);
  swift_getKeyPath();
  v90 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v90 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v90 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  v67 = v83;
  LanguagesService.$localeModalities.getter();
  v68 = static OS_dispatch_queue.main.getter();
  v90 = v68;
  v76(v64, 1, 1, v77);
  sub_10001BAEC(&qword_1003AD978, &qword_1003AD840);
  v69 = v85;
  v70 = v86;
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v64, &qword_1003B23F0);

  (*(v84 + 8))(v67, v69);
  swift_allocObject();
  swift_weakInit();

  sub_10001BAEC(&qword_1003AD980, &qword_1003AD848);
  v71 = v88;
  Publisher<>.sink(receiveValue:)();

  (*(v87 + 8))(v70, v71);
  swift_getKeyPath();
  v90 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v90 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v90 = v1;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  return v1;
}

uint64_t sub_10015B1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  type metadata accessor for MainActor();
  v4[20] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[21] = v6;
  v4[22] = v5;

  return _swift_task_switch(sub_10015B244, v6, v5);
}

uint64_t sub_10015B244()
{
  v1 = sub_100157B1C();
  v2 = [v1 canonicalIdentifier];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v0[23] = v3;
  v0[24] = v5;
  v6 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10015B3B4;
  v7 = swift_continuation_init();
  v0[17] = sub_100005AD4(&qword_1003B3EB8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10015B78C;
  v0[13] = &unk_100386260;
  v0[14] = v7;
  [v6 autoDetectSpeechUnsupportedPairsWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10015B3B4()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return _swift_task_switch(sub_10015B4BC, v2, v1);
}

uint64_t sub_10015B4BC()
{

  v2 = v0[18];
  v23 = v0 + 18;
  if (v2 >> 62)
  {
LABEL_21:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v24 = v2 & 0xFFFFFFFFFFFFFF8;
      v25 = v2 & 0xC000000000000001;
      do
      {
        if (v25)
        {
          v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_16;
          }
        }

        else
        {
          if (v4 >= *(v24 + 16))
          {
            __break(1u);
            goto LABEL_21;
          }

          v5 = *(v2 + 8 * v4 + 32);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:
            v15 = v0[19];

            v16 = 0;
            v17 = (v15 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__languageIDAvailable);
            if (*(v15 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__languageIDAvailable))
            {
              goto LABEL_23;
            }

LABEL_19:
            *v17 = v16;
            goto LABEL_24;
          }
        }

        v7 = v2;
        v8 = v0[23];
        v26 = v0[24];
        v1 = v5;
        v9 = [v5 canonicalIdentifier];
        v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v12 = v11;

        if (v10 == v8 && v12 == v26)
        {
          goto LABEL_17;
        }

        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v2 = v7;
        if (v14)
        {
          goto LABEL_18;
        }

        ++v4;
      }

      while (v6 != v3);
    }
  }

  v18 = v0[19];

  v17 = (v18 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__languageIDAvailable);
  v16 = 1;
  if (*(v18 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__languageIDAvailable) == 1)
  {
    goto LABEL_19;
  }

LABEL_23:
  v19 = v0[19];
  swift_getKeyPath();
  v20 = swift_task_alloc();
  *(v20 + 16) = v19;
  *(v20 + 24) = v16;
  v0[10] = v19;
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_24:
  v21 = v0[1];

  return v21();
}

uint64_t sub_10015B78C(uint64_t a1)
{
  v1 = *sub_1000085CC((a1 + 32), *(a1 + 56));
  sub_10000A2CC(0, &qword_1003B3EC0);
  **(*(v1 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return _swift_continuation_resume(v1);
}

uint64_t sub_10015B810(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    swift_getKeyPath();
    sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v4 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__stateError) != 3 && v1 == 3;
    if (v4 && (swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , (*(v3 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isListening) & 1) == 0))
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v5 = *(v3 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation);
      sub_1001597F8(3);
      if (!v5)
      {
        if (qword_1003A9258 != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for Logger();
        sub_1000078E8(v6, qword_1003D2818);
        v7 = Logger.logObject.getter();
        v8 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v7, v8, "Starting speech translation after change in error state from error to no error", v9, 2u);
        }

        sub_10015BEE8();
        sub_10015D1FC();
      }
    }

    else
    {
      sub_1001597F8(v1);
    }
  }

  return result;
}

void sub_10015BA5C(void **a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (v6)
    {
      v9 = v6;
      sub_100157D90(v5);
      isa = Locale._bridgeToObjectiveC()().super.isa;
      v11 = *(v3 + 8);
      v11(v5, v2);
      v12 = [v9 locale:isa supportsModality:1];

      sub_100158128(v5);
      v13 = Locale._bridgeToObjectiveC()().super.isa;
      v11(v5, v2);
      v14 = [v9 locale:v13 supportsModality:1];

      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v24[-16] = v8;
      v24[-8] = v12;
      v24[-7] = v14;
      v25 = v8;
      sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if (!v12 || (v14 & 1) == 0)
      {
        if (*(v8 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__currentRecordingStopTonePlaybackTask))
        {
          v16 = swift_getKeyPath();
          __chkstk_darwin(v16);
          *&v24[-16] = v8;
          *&v24[-8] = 0;
          v25 = v8;
          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
        }

        v17 = sub_100157404();
        v18 = &v17[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate];
        if (swift_unknownObjectWeakLoadStrong())
        {
          v19 = *(v18 + 1);
          ObjectType = swift_getObjectType();
          (*(v19 + 16))(0, 0, 0, ObjectType, v19);
          swift_unknownObjectRelease();
        }

        v21 = OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer;
        v22 = *&v17[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer];
        if (v22)
        {
          [*(v22 + 48) endAudio];
        }

        sub_10020BB08();
        *&v17[v21] = 0;

        [*&v17[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_translator] cleanup];
      }
    }

    else
    {
      v23 = swift_getKeyPath();
      __chkstk_darwin(v23);
      *&v24[-16] = v8;
      *&v24[-8] = 257;
      v25 = v8;
      sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }
}

uint64_t sub_10015BEE8()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003B36C8);
  __chkstk_darwin(v2 - 8);
  v4 = &v20[-v3];
  v5 = sub_100005AD4(&unk_1003B9EF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v20[-v6];
  v8 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v8 - 8);
  v10 = &v20[-v9];
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;

  sub_10005E36C(0, 0, v10, &unk_1002E1718, v14);

  swift_getKeyPath();
  v26 = 0;
  v27 = 0;
  v25 = v1;
  v28 = v1;
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v15 = sub_100005AD4(&qword_1003B3680);
  (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
  swift_getKeyPath();
  v23 = v1;
  v24 = v7;
  v28 = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100009EBC(v7, &unk_1003B9EF0);
  v16 = sub_100005AD4(&qword_1003B36D0);
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  swift_getKeyPath();
  v21 = v1;
  v22 = v4;
  v28 = v1;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  result = sub_100009EBC(v4, &qword_1003B36C8);
  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__languageIDAvailable) == 1)
  {
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__languageIDAvailable) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v20[-16] = v1;
    v20[-8] = 1;
    v28 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isListening))
  {
    v19 = swift_getKeyPath();
    __chkstk_darwin(v19);
    *&v20[-16] = v1;
    v20[-8] = 0;
    v28 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isListening) = 0;
  }

  return result;
}

uint64_t sub_10015C420(uint64_t a1)
{
  v2 = v1;
  v16 = a1;
  v3 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for TaskPriority();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v8 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v8;

  sub_10005E36C(0, 0, v5, &unk_1002E1708, v10);

  v7(v5, 1, 1, v6);
  v11 = v16;

  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = 0;
  v13[5] = v2;
  v13[6] = v11;
  sub_1000BF760(0, 0, v5, &unk_1002E1710, v13);
}

uint64_t sub_10015C61C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 88) = a5;
  *(v6 + 96) = a6;
  *(v6 + 80) = a1;
  type metadata accessor for MainActor();
  *(v6 + 104) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v6 + 112) = v8;
  *(v6 + 120) = v7;

  return _swift_task_switch(sub_10015C6B8, v8, v7);
}

uint64_t sub_10015C6B8(unint64_t a1)
{
  v3 = *(v1 + 80) * 1000000000.0;
  if (COERCE__INT64(fabs(v3)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return static Task<>.sleep(nanoseconds:)(a1);
  }

  v4 = v3;
  v5 = swift_task_alloc();
  *(v1 + 128) = v5;
  *v5 = v1;
  v5[1] = sub_10015C7A0;
  a1 = v4;

  return static Task<>.sleep(nanoseconds:)(a1);
}

uint64_t sub_10015C7A0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 120);
  v4 = *(v2 + 112);
  if (v0)
  {
    v5 = sub_10015CE7C;
  }

  else
  {
    v5 = sub_10015C8DC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10015C8DC()
{
  *(v0 + 40) = &type metadata for TranslateFeatures;
  v1 = sub_100009DF8();
  *(v0 + 16) = 9;
  *(v0 + 48) = v1;
  v2 = isFeatureEnabled(_:)();
  sub_100008664(v0 + 16);
  if (v2)
  {
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    *(v0 + 144) = sub_1000078E8(v3, qword_1003D2818);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Waiting for existing recording stop task to finish", v6, 2u);
    }

    v7 = *(v0 + 88);

    swift_getKeyPath();
    *(v0 + 72) = v7;
    sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *(v7 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__currentRecordingStopTonePlaybackTask);
    *(v0 + 152) = v8;
    if (v8)
    {

      v9 = swift_task_alloc();
      *(v0 + 160) = v9;
      *v9 = v0;
      v9[1] = sub_10015CC04;

      return Task<>.value.getter(v0 + 56, v8, &type metadata for String);
    }

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Done waiting for existing recording stop task to finish. Continue to endActivity", v12, 2u);
    }
  }

  else
  {
  }

  if (qword_1003A9308 != -1)
  {
    swift_once();
  }

  sub_1002455CC(*(v0 + 96));
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10015CC04()
{
  v1 = *v0;

  v2 = *(v1 + 120);
  v3 = *(v1 + 112);

  return _swift_task_switch(sub_10015CD60, v3, v2);
}

uint64_t sub_10015CD60()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Done waiting for existing recording stop task to finish. Continue to endActivity", v3, 2u);
  }

  if (qword_1003A9308 != -1)
  {
    swift_once();
  }

  sub_1002455CC(*(v0 + 96));
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10015CE7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10015CEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  type metadata accessor for MainActor();
  *(v4 + 56) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10015CF78, v6, v5);
}

uint64_t sub_10015CF78()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__speechAudioLevel) == 0.0)
    {
      *(Strong + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__speechAudioLevel) = 0;
    }

    else
    {
      swift_getKeyPath();
      v3 = swift_task_alloc();
      *(v3 + 16) = v2;
      *(v3 + 24) = 0;
      *(v0 + 40) = v2;
      sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    swift_getKeyPath();
    *(v0 + 40) = v2;
    sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v2 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isListening) == 1)
    {
      v4 = sub_100157404();
      v5 = &v4[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate];
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v5 + 1);
        ObjectType = swift_getObjectType();
        (*(v6 + 16))(0, 0, 0, ObjectType, v6);
        swift_unknownObjectRelease();
      }

      v8 = *&v4[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer];
      if (v8)
      {
        [*(v8 + 48) endAudio];
      }

      sub_10020BB08();
    }
  }

  v9 = *(v0 + 8);

  return v9();
}

void sub_10015D1FC()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v2 - 8);
  v83 = &v75 - v3;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v84 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v75 - v8;
  v10 = type metadata accessor for Locale();
  v85 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v86 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v75 - v13;
  swift_getKeyPath();
  v87[0] = v0;
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isListeningLock);

  os_unfair_lock_lock((v15 + 20));
  v16 = *(v15 + 16);
  os_unfair_lock_unlock((v15 + 20));

  if (v16)
  {
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000078E8(v17, qword_1003D2818);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_23;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "Already listening to the user";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);

LABEL_23:

    return;
  }

  swift_getKeyPath();
  v87[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__stateError) != 3 || *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel_appRunForTheFirstTime) != 1)
  {
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000078E8(v30, qword_1003D2818);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_23;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "State error present: not starting speech translation";
    goto LABEL_22;
  }

  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000078E8(v22, qword_1003D2818);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v82 = v5;
  if (v25)
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Starting speech translation", v26, 2u);
  }

  if (qword_1003A9308 != -1)
  {
    swift_once();
  }

  v27 = *(qword_1003D2A98 + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity);
  v28 = v85;
  v80 = v4;
  if (v27)
  {

    Activity.attributes.getter();

    v29 = 2;
    if (LOBYTE(v87[0]))
    {
      v29 = 4;
    }

    v77 = v29;
  }

  else
  {
    v77 = 0;
  }

  v81 = sub_100157404();
  swift_getKeyPath();
  v87[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v31 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__selectedSourceLocale;
  swift_beginAccess();
  v34 = *(v28 + 16);
  v32 = v28 + 16;
  v33 = v34;
  v34(v14, (v1 + v31), v10);
  swift_getKeyPath();
  v87[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__selectedTargetLocale;
  swift_beginAccess();
  v76 = v14;
  v36 = v86;
  v34(v86, (v1 + v35), v10);
  UUID.init()();
  v37 = UUID.uuidString.getter();
  v78 = v38;
  v79 = v37;
  v39 = *(v82 + 8);
  v40 = v9;
  v82 += 8;
  v41 = v39;
  v39(v40, v80);
  swift_getKeyPath();
  v87[0] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__languageIDAvailable);
  UUID.init()();
  sub_100005AD4(qword_1003B5180);
  v43 = *(v32 + 56);
  v44 = (*(v32 + 64) + 32) & ~*(v32 + 64);
  v45 = swift_allocObject();
  if (v42)
  {
    *(v45 + 16) = xmmword_1002D1370;
    v46 = v45 + v44;
    v47 = v36;
    v48 = v76;
    v33(v46, v76, v10);
    v33(v46 + v43, v47, v10);
    v49 = sub_10011EA1C(v45);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    *(v45 + 16) = xmmword_1002D3160;
    v48 = v76;
    v33(v45 + v44, v76, v10);
    v49 = sub_10011EA1C(v45);
    swift_setDeallocating();
    (*(v85 + 8))(v45 + v44, v10);
  }

  swift_deallocClassInstance();
  v50 = &v81[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  v52 = v80;
  if (Strong)
  {
    v53 = *(v50 + 1);
    ObjectType = swift_getObjectType();
    (*(v53 + 16))(1, 0, v49, ObjectType, v53);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  v55 = OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_translator;
  [*&v81[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_translator] cleanup];
  v56 = objc_allocWithZone(_LTSpeechTranslationRequest);
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v58 = Locale._bridgeToObjectiveC()().super.isa;
  v59 = [v56 initWithSourceLocale:isa targetLocale:v58];

  v60 = v59;
  v61 = String._bridgeToObjectiveC()();
  [v60 setSessionID:v61];

  [v60 setCensorSpeech:byte_1003D2A90];
  sub_10000A2CC(0, &qword_1003A9B80);
  v62 = static NSUserDefaults.translationGroupDefaults.getter();
  LOBYTE(v61) = NSUserDefaults.onDeviceOnly.getter();

  [v60 setForcedOfflineTranslation:v61 & 1];
  v87[3] = &type metadata for TranslateFeatures;
  v87[4] = sub_100009DF8();
  LOBYTE(v87[0]) = 18;
  LOBYTE(v61) = isFeatureEnabled(_:)();
  sub_100008664(v87);
  if (v61)
  {
    [v60 setPreferOnDeviceIfAvailable:1];
  }

  [v60 setAutoEndpoint:1];
  [v60 setEnableStreamingSpeechTranslation:0];
  [v60 setAutodetectLanguage:1];
  [v60 setEnableVAD:0];
  [v60 setEnableAirPodsOwnVAD:0];
  [v60 setEnableMultiFieldInput:0];
  [v60 setEnableTranslationSemanticSegmentation:0];
  [v60 setForceSourceLocale:v42 ^ 1u];
  [v60 set_supportsGenderDisambiguation:0];
  [v60 setSourceOrigin:v77];
  v63 = v81;
  [v60 setDelegate:v81];
  [v60 setTaskHint:{objc_msgSend(v60, "taskHint")}];
  v64 = v84;
  v65 = UUID._bridgeToObjectiveC()().super.isa;
  [v60 setLogIdentifier:v65];

  v63[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_sentFinalResultToDelegate] = 0;
  [*&v63[v55] translate:v60];
  v66 = *&v63[v55];
  _s21SpeechResultContainerCMa();
  swift_allocObject();
  v67 = v60;
  *&v63[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer] = sub_100241798(v66, v67);

  v68 = type metadata accessor for TaskPriority();
  v69 = v83;
  (*(*(v68 - 8) + 56))(v83, 1, 1, v68);
  v70 = swift_allocObject();
  v70[2] = 0;
  v70[3] = 0;
  v70[4] = v63;
  v70[5] = v67;
  v70[6] = 0;
  v70[7] = 0;
  v71 = v78;
  v70[8] = v79;
  v70[9] = v71;
  v70[10] = 0;
  v72 = v67;
  v73 = v63;
  sub_10005E36C(0, 0, v69, &unk_1002DB9C0, v70);

  v41(v64, v52);
  v74 = *(v85 + 8);
  v74(v86, v10);
  v74(v48, v10);
}

uint64_t sub_10015DE24()
{
  v1 = v0;
  v2 = type metadata accessor for Locale();
  v15 = *(v2 - 8);
  v3 = v15;
  v4 = __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v14 - v7;
  v9 = sub_100157404();
  sub_10023C574();

  swift_getKeyPath();
  v17 = v1;
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v10 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__selectedSourceLocale;
  swift_beginAccess();
  v11 = *(v3 + 16);
  v11(v8, v1 + v10, v2);
  swift_getKeyPath();
  v16 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__selectedTargetLocale;
  swift_beginAccess();
  v11(v6, v1 + v12, v2);
  sub_1001574C8(v6);
  v11(v6, v8, v2);
  sub_1001577CC(v6);
  return (*(v15 + 8))(v8, v2);
}

uint64_t sub_10015E06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 320) = a7;
  *(v7 + 176) = a5;
  *(v7 + 184) = a6;
  *(v7 + 168) = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  *(v7 + 192) = v8;
  *(v7 + 200) = *(v8 - 8);
  *(v7 + 208) = swift_task_alloc();
  v9 = type metadata accessor for DispatchQoS();
  *(v7 + 216) = v9;
  *(v7 + 224) = *(v9 - 8);
  *(v7 + 232) = swift_task_alloc();
  v10 = type metadata accessor for Locale();
  *(v7 + 240) = v10;
  v11 = *(v10 - 8);
  *(v7 + 248) = v11;
  *(v7 + 256) = *(v11 + 64);
  *(v7 + 264) = swift_task_alloc();
  *(v7 + 272) = swift_task_alloc();
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();

  return _swift_task_switch(sub_10015E218, 0, 0);
}

uint64_t sub_10015E218()
{
  v1 = v0[23];
  ObjectType = swift_getObjectType();
  v0[37] = (*(v1 + 24))(ObjectType, v1);
  v0[38] = v3;
  (*(v1 + 32))(ObjectType, v1);
  (*(v1 + 40))(ObjectType, v1);
  swift_weakInit();

  return _swift_task_switch(sub_10015E30C, 0, 0);
}

uint64_t sub_10015E30C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v28 = v0[37];
  v29 = v0[38];
  v26 = v0[36];
  v27 = v0[35];
  v5 = v0[33];
  v6 = v0[34];
  v24 = v5;
  v8 = v0[31];
  v7 = v0[32];
  v9 = v0[30];
  aBlock = v4;
  v32 = v1[29];
  v38 = v1[28];
  v39 = v1[27];
  v36 = v1[25];
  v37 = v3;
  v34 = v1[26];
  v35 = v1[24];
  v30 = *(v1 + 320);
  v1[2] = v2;
  v1[3] = sub_10015E720;
  v40 = *(v1 + 11);
  v25 = swift_continuation_init();
  sub_10000A2CC(0, &qword_1003A9C40);
  v33 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  v11 = v10;
  swift_weakInit();

  v12 = *(v8 + 16);
  v12(v6, v26, v9);
  v12(v5, v27, v9);
  v13 = *(v8 + 80);
  v14 = (v13 + 49) & ~v13;
  v15 = v14 + v7;
  v16 = (v13 + v14 + v7 + 1) & ~v13;
  v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v11;
  *(v18 + 24) = v25;
  *(v18 + 32) = v28;
  *(v18 + 40) = v29;
  *(v18 + 48) = 1;
  v19 = *(v8 + 32);
  v19(v18 + v14, v6, v9);
  *(v18 + v15) = 0;
  v19(v18 + v16, v24, v9);
  v20 = (v18 + v17);
  v21 = v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v20 = 0;
  v20[1] = 0;
  *v21 = v40;
  *(v21 + 16) = v30;
  *(v21 + 17) = 0;
  v1[14] = sub_100026C4C;
  v1[15] = v18;
  v1[10] = _NSConcreteStackBlock;
  v1[11] = 1107296256;
  v1[12] = sub_100096948;
  v1[13] = &unk_100386148;
  v22 = _Block_copy(aBlock);

  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v1[20] = _swiftEmptyArrayStorage;
  sub_100162424(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v36 + 8))(v34, v35);
  (*(v38 + 8))(v32, v39);

  return _swift_continuation_await(v37);
}

uint64_t sub_10015E720()
{
  v1 = *(*v0 + 48);
  *(*v0 + 312) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_10015E918;
  }

  else
  {
    swift_weakDestroy();
    v2 = sub_10015E844;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10015E844()
{
  v1 = v0[36];
  v2 = v0[30];
  v3 = *(v0[31] + 8);
  v3(v0[35], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10015E918()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[30];
  v4 = v0[31];
  swift_weakDestroy();
  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);
  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000078E8(v6, qword_1003D2818);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Exception while toggling TTS: %@", v9, 0xCu);
    sub_100009EBC(v10, &unk_1003AECA0);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

void sub_10015EB34(void *a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v4 - 8);
  v6 = v24 - v5;
  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000078E8(v7, qword_1003D2818);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Speech manager failed to translate: %@", v10, 0xCu);
    sub_100009EBC(v11, &unk_1003AECA0);
  }

  v26 = a1;
  swift_errorRetain();
  sub_100005AD4(&unk_1003B9E90);
  type metadata accessor for _LTTranslationError(0);
  if (swift_dynamicCast())
  {
    v13 = v25;
    v26 = v25;
    sub_100162424(&qword_1003A97E0, type metadata accessor for _LTTranslationError);
    _BridgedStoredNSError.code.getter();
    if (v25 == 10 || v25 == 4 || v25 == 14)
    {
      swift_getKeyPath();
      v14 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel___observationRegistrar;
      v26 = v2;
      sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
      v24[1] = v14;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v15 = v2 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isASRSupported;
      if (*(v2 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isASRSupported) == 1)
      {
        swift_getKeyPath();
        v26 = v2;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v15 + 1))
        {
          sub_10015C420(0);

          return;
        }
      }
    }
  }

  v26 = a1;
  swift_errorRetain();
  if ((swift_dynamicCast() & 1) == 0 || (v16 = v25, v26 = v25, sub_100162424(&qword_1003A97E0, type metadata accessor for _LTTranslationError), _BridgedStoredNSError.code.getter(), v16, v25 != 11))
  {
    v17 = type metadata accessor for TaskPriority();
    v18 = *(*(v17 - 8) + 56);
    v18(v6, 1, 1, v17);
    v19 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for MainActor();

    v20 = static MainActor.shared.getter();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = &protocol witness table for MainActor;
    v21[4] = v19;

    sub_10005E36C(0, 0, v6, &unk_1002E16C8, v21);

    v18(v6, 1, 1, v17);

    v22 = static MainActor.shared.getter();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = 0x4000000000000000;
    v23[5] = v2;
    v23[6] = 0;
    sub_1000BF760(0, 0, v6, &unk_1002E16D8, v23);
  }
}

id *sub_10015F078()
{

  v1 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__selectedSourceLocale;
  v2 = type metadata accessor for Locale();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__selectedTargetLocale, v2);

  swift_unknownObjectRelease();
  sub_100009EBC(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalLIDResult, &unk_1003B9EF0);
  sub_100009EBC(v0 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__partialSpeechResult, &qword_1003B36C8);

  v4 = OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel___observationRegistrar;
  v5 = type metadata accessor for ObservationRegistrar();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_10015F208()
{
  sub_10015F078();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LiveActivityViewModel()
{
  result = qword_1003B3A10;
  if (!qword_1003B3A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10015F2B4()
{
  type metadata accessor for Locale();
  if (v0 <= 0x3F)
  {
    sub_100139578(319, &qword_1003B3A20, &qword_1003B3680);
    if (v1 <= 0x3F)
    {
      sub_100139578(319, &unk_1003B3A28, &qword_1003B36D0);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ObservationRegistrar();
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_10015F4AC(float a1)
{
  v2 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000078E8(v5, qword_1003D2818);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134349056;
    *(v8 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v6, v7, "Speech: input detected at %{public}f level", v8, 0xCu);
  }

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = &protocol witness table for MainActor;
  *(v12 + 32) = v10;
  *(v12 + 40) = a1;

  sub_10005E66C(0, 0, v4, &unk_1002E1540, v12);
}

uint64_t sub_10015F6DC(char a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  sub_100158F60(a1);
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = &protocol witness table for MainActor;
  *(v9 + 32) = v2;
  *(v9 + 40) = a1;
  sub_10005E36C(0, 0, v6, &unk_1002E1500, v9);
}

uint64_t sub_10015F810(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = type metadata accessor for Locale();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  type metadata accessor for MainActor();

  v14 = static MainActor.shared.getter();
  v15 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v16 = v15 + v8;
  v17 = swift_allocObject();
  *(v17 + 2) = v14;
  *(v17 + 3) = &protocol witness table for MainActor;
  *(v17 + 4) = v3;
  (*(v7 + 32))(&v17[v15], v9, v6);
  v17[v16] = a2;
  sub_10005E36C(0, 0, v12, &unk_1002E14C0, v17);
}

uint64_t sub_10015FA20(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_100031DD8(a1, v12);
  type metadata accessor for MainActor();

  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  sub_100051124(v12, (v9 + 4));
  v9[9] = v2;
  sub_10005E36C(0, 0, v6, &unk_1002E1480, v9);
}

uint64_t sub_10015FB68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v6 - 8);
  v8 = v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_100031DD8(a1, v14);
  sub_100031DD8(a2, v13);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v3;
  sub_100051124(v14, (v11 + 5));
  sub_100051124(v13, (v11 + 10));
  sub_10005E36C(0, 0, v8, &unk_1002E1430, v11);
}

uint64_t sub_10015FCCC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();

  swift_errorRetain();
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v2;
  v9[5] = a1;
  sub_10005E36C(0, 0, v6, &unk_1002E1420, v9);
}

uint64_t sub_10015FDFC(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a2;
  *(v5 + 48) = a1;
  *(v5 + 56) = a5;
  type metadata accessor for MainActor();
  *(v5 + 64) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10015FE98, v7, v6);
}

uint64_t sub_10015FE98()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v2 = Strong;
  if (Strong)
  {
    v3 = *(v0 + 72);
    if (*(Strong + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__speechAudioLevel) == v3)
    {
      *(Strong + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__speechAudioLevel) = v3;
    }

    else
    {
      swift_getKeyPath();
      v4 = swift_task_alloc();
      *(v4 + 16) = v2;
      *(v4 + 24) = v3;
      *(v0 + 40) = v2;
      sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  **(v0 + 48) = v2 == 0;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100160024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 96) = a5;
  *(v5 + 72) = a4;
  sub_100005AD4(&qword_1003AA3B8);
  *(v5 + 80) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v5 + 88) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001600F8, v7, v6);
}

uint64_t sub_1001600F8()
{

  *(v0 + 40) = &type metadata for TranslateFeatures;
  v1 = sub_100009DF8();
  *(v0 + 16) = 9;
  *(v0 + 48) = v1;
  v2 = isFeatureEnabled(_:)();
  sub_100008664(v0 + 16);
  if (v2)
  {
    v3 = *(v0 + 96);
    v4 = *(v0 + 72);
    swift_getKeyPath();
    *(v0 + 64) = v4;
    sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (v3 != *(v4 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isListening))
    {
      if (qword_1003A9308 != -1)
      {
        swift_once();
      }

      if (*(qword_1003D2A98 + OBJC_IVAR____TtC17SequoiaTranslator32SpeechTranslationActivityManager_currentActivity) && (*(v0 + 96) & 1) == 0 && sub_100159F68() == 7)
      {
        v5 = *(v0 + 80);
        v6 = type metadata accessor for TaskPriority();
        (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
        v7 = swift_allocObject();
        *(v7 + 16) = 0;
        *(v7 + 24) = 0;
        *(v7 + 32) = 1;
        v8 = sub_10005E980(0, 0, v5, &unk_1002E1530, v7);
        sub_100159DE0(v8);
      }
    }
  }

  v9 = *(v0 + 96);
  v10 = *(v0 + 72);
  if (v9 == *(v10 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isListening))
  {
    *(v10 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isListening) = v9;
  }

  else
  {
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = v9;
    *(v0 + 56) = v10;
    sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100160408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 56) = a6;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5;
  sub_100005AD4(&unk_1003B9EF0);
  *(v6 + 40) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v6 + 48) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001604DC, v8, v7);
}

uint64_t sub_1001604DC()
{

  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000078E8(v1, qword_1003D2818);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received final LID result", v4, 2u);
  }

  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 56);
  v8 = *(v0 + 24);

  v9 = sub_100005AD4(&qword_1003B3680);
  v10 = *(v9 + 48);
  v11 = type metadata accessor for Locale();
  (*(*(v11 - 8) + 16))(v5, v6, v11);
  *(v5 + v10) = v7;
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  swift_getKeyPath();
  v12 = swift_task_alloc();
  *(v12 + 16) = v8;
  *(v12 + 24) = v5;
  *(v0 + 16) = v8;
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100009EBC(v5, &unk_1003B9EF0);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100160778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_100005AD4(&qword_1003B36C8);
  v5[5] = swift_task_alloc();
  v6 = type metadata accessor for Locale();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001608A4, v8, v7);
}

uint64_t sub_1001608A4()
{

  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000078E8(v1, qword_1003D2818);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received partial speech result", v4, 2u);
  }

  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];

  sub_1000085CC(v9, v9[3]);
  dispatch thunk of AnnotatedResult.locale.getter();
  sub_1000085CC(v9, v9[3]);
  v11 = AnnotatedResult.displayString.getter();
  v13 = v12;
  v14 = sub_100005AD4(&qword_1003B36D0);
  v15 = (v7 + *(v14 + 48));
  (*(v6 + 16))(v7, v5, v8);
  *v15 = v11;
  v15[1] = v13;
  (*(*(v14 - 8) + 56))(v7, 0, 1, v14);
  swift_getKeyPath();
  v16 = swift_task_alloc();
  *(v16 + 16) = v10;
  *(v16 + 24) = v7;
  v0[2] = v10;
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  (*(v6 + 8))(v5, v8);

  sub_100009EBC(v7, &qword_1003B36C8);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100160BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v9 = type metadata accessor for DispatchTime();
  v6[23] = v9;
  v6[24] = *(v9 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v10 = type metadata accessor for Locale();
  v6[27] = v10;
  v11 = *(v10 - 8);
  v6[28] = v11;
  v6[29] = *(v11 + 64);
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[34] = static MainActor.shared.getter();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100160DE4, v13, v12);
}

uint64_t sub_100160DE4()
{

  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000078E8(v1, qword_1003D2818);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Received final translation", v4, 2u);
  }

  v5 = sub_100157404();
  v6 = &v5[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 16))(0, 0, 0, ObjectType, v7);
    swift_unknownObjectRelease();
  }

  v9 = *&v5[OBJC_IVAR____TtC17SequoiaTranslator13SpeechManager_resultContainer];
  if (v9)
  {
    [*(v9 + 48) endAudio];
  }

  v11 = v0[15];
  v10 = v0[16];
  sub_10020BB08();

  sub_1000085CC(v11, v11[3]);
  dispatch thunk of AnnotatedResult.locale.getter();
  sub_1000085CC(v11, v11[3]);
  v12 = AnnotatedResult.displayString.getter();
  v14 = v13;
  sub_1000085CC(v10, v10[3]);
  dispatch thunk of TranslationResult.locale.getter();
  sub_1000085CC(v10, v10[3]);
  v15 = dispatch thunk of TranslationResult.alternatives.getter();
  if (*(v15 + 16))
  {
    sub_100031DD8(v15 + 32, (v0 + 8));

    sub_1000085CC(v0 + 8, v0[11]);
    v16 = TranslationAlternative.displayString.getter();
    v18 = v17;
    sub_100008664((v0 + 8));
  }

  else
  {

    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v19 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v20 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v20 = v16 & 0xFFFFFFFFFFFFLL;
    }

    v21 = v0[33];
    v66 = v0[32];
    if (v20)
    {
      v52 = v14;
      v50 = v18;
      v22 = v0[30];
      v23 = v0[31];
      v54 = v0[29];
      v64 = v0[28];
      v65 = v0[27];
      v55 = v0[26];
      v51 = v12;
      v25 = v0[24];
      v24 = v0[25];
      v26 = v0[23];
      v59 = v26;
      v53 = v0[22];
      v62 = v0[21];
      v63 = v0[20];
      v57 = v0[19];
      v61 = v0[18];
      v58 = v0[17];
      sub_10000A2CC(0, &qword_1003A9C40);
      v49 = v16;
      v56 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v60 = *(v25 + 8);
      v60(v24, v26);
      v48 = swift_allocObject();
      swift_weakInit();
      v27 = *(v64 + 16);
      v27(v23, v21, v65);
      v27(v22, v66, v65);
      v28 = *(v64 + 80);
      v29 = (v28 + 24) & ~v28;
      v30 = (v54 + v28 + v29) & ~v28;
      v31 = (v54 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = swift_allocObject();
      *(v32 + 16) = v48;
      v33 = *(v64 + 32);
      v33(v32 + v29, v23, v65);
      v33(v32 + v30, v22, v65);
      v34 = (v32 + v31);
      *v34 = v51;
      v34[1] = v52;
      v35 = (v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v35 = v49;
      v35[1] = v50;
      v0[6] = sub_100162358;
      v0[7] = v32;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_100096948;
      v0[5] = &unk_100386080;
      v36 = _Block_copy(v0 + 2);

      static DispatchQoS.unspecified.getter();
      v0[13] = _swiftEmptyArrayStorage;
      sub_100162424(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
      sub_100005AD4(&unk_1003A9C50);
      sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v36);

      (*(v61 + 8))(v57, v58);
      (*(v62 + 8))(v53, v63);
      v60(v55, v59);
      v37 = *(v64 + 8);
      v37(v66, v65);
      v37(v21, v65);
    }

    else
    {
      v44 = v0[27];
      v43 = v0[28];

      v45 = *(v43 + 8);
      v45(v66, v44);
      v45(v21, v44);
    }
  }

  else
  {
    v38 = v0[32];
    v39 = v0[33];
    v40 = v0[27];
    v41 = v0[28];

    v42 = *(v41 + 8);
    v42(v38, v40);
    v42(v39, v40);
  }

  v46 = v0[1];

  return v46();
}

uint64_t sub_100161554(char *a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v65 = a6;
  v61 = a5;
  v64 = a4;
  v63 = a3;
  v62 = a2;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v72 = *(v9 - 8);
  v73 = v9;
  __chkstk_darwin(v9);
  v71 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v69 = *(v11 - 8);
  v70 = v11;
  __chkstk_darwin(v11);
  v68 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for DispatchTime();
  v67 = *(v75 - 8);
  v13 = __chkstk_darwin(v75);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v66 = &v55 - v16;
  v17 = sub_100005AD4(&unk_1003B8C90);
  __chkstk_darwin(v17 - 8);
  v74 = (&v55 - v18);
  v19 = type metadata accessor for Locale();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v55 - v24;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v60 = Strong;
    UUID.init()();
    v59 = a7;
    v58 = UUID.uuidString.getter();
    v57 = v31;
    (*(v27 + 8))(v29, v26);
    v32 = *(v20 + 16);
    v32(v25, v62, v19);
    v56 = v23;
    v32(v23, v63, v19);
    v33 = *(v27 + 56);
    v33(v74, 1, 1, v26);
    type metadata accessor for TestableTranslation();
    v34 = swift_allocObject();
    v62 = v15;
    v35 = (v34 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_romanization);
    *v35 = 0;
    v35[1] = 0;
    v63 = a1;
    v36 = OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_ttsPlaybackRateDouble;
    *(v34 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_ttsPlaybackRateDouble) = 0x3FF0000000000000;
    v37 = OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_selfLoggingInvocationId;
    v33((v34 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_selfLoggingInvocationId), 1, 1, v26);
    v38 = v57;
    *(v34 + 16) = v58;
    *(v34 + 24) = v38;
    v39 = *(v20 + 32);
    v39(v34 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_sourceLocale, v25, v19);
    v39(v34 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_targetLocale, v56, v19);
    *(v34 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_isFavorite) = 0;
    v40 = (v34 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_displaySourceText);
    v41 = v61;
    *v40 = v64;
    v40[1] = v41;
    v42 = (v34 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_displayTargetText);
    v43 = v59;
    *v42 = v65;
    v42[1] = v43;
    *v35 = 0;
    v35[1] = 0;
    v15 = v62;
    *(v34 + v36) = 0x3FF0000000000000;
    *(v34 + OBJC_IVAR____TtC17SequoiaTranslator19TestableTranslation_showDisambiguation) = 0;
    swift_beginAccess();

    sub_100091B8C(v74, v34 + v37);
    swift_endAccess();
    v44 = sub_100162424(&qword_1003AD9B0, type metadata accessor for TestableTranslation);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v46 = v60;
    *(&v55 - 4) = v60;
    *(&v55 - 3) = v34;
    *(&v55 - 2) = v44;
    aBlock[0] = v46;
    sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_10000A2CC(0, &qword_1003A9C40);
  v47 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  v48 = v66;
  + infix(_:_:)();
  v74 = *(v67 + 8);
  (v74)(v15, v75);
  v49 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  aBlock[4] = sub_10016248C;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100096948;
  aBlock[3] = &unk_1003860A8;
  v50 = _Block_copy(aBlock);

  v51 = v68;
  static DispatchQoS.unspecified.getter();
  v76 = _swiftEmptyArrayStorage;
  sub_100162424(&qword_1003AB990, &type metadata accessor for DispatchWorkItemFlags);
  sub_100005AD4(&unk_1003A9C50);
  sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50);
  v52 = v71;
  v53 = v73;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v50);

  (*(v72 + 8))(v52, v53);
  (*(v69 + 8))(v51, v70);
  (v74)(v48, v75);
}

uint64_t sub_100161EAC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100162C10(1);
  }

  return result;
}

uint64_t sub_100161F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100161FA0, v7, v6);
}

uint64_t sub_100161FA0()
{
  v1 = *(v0 + 24);

  sub_10015EB34(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10016202C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B558;

  return sub_100161F08(a1, v4, v5, v7, v6);
}

uint64_t sub_1001620EC()
{
  swift_unknownObjectRelease();

  sub_100008664(v0 + 40);
  sub_100008664(v0 + 80);

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_10016213C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_100160BA0(a1, v4, v5, v6, (v1 + 5), (v1 + 10));
}

uint64_t sub_100162200()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100162238()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t sub_100162358()
{
  v1 = *(type metadata accessor for Locale() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  v9 = (v0 + v6);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v0 + v7);
  v13 = *(v0 + v7 + 8);

  return sub_100161554(v8, (v0 + v4), (v0 + v5), v10, v11, v12, v13);
}

uint64_t sub_10016240C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100162424(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100162494(uint64_t a1, uint64_t a2)
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
        type metadata accessor for AnyCancellable();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_1003AC750;
        if (!v13)
        {
LABEL_27:
          v17 = v14;
          while (1)
          {
            v14 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v18 = *(v10 + 8 * v14);
            ++v17;
            if (v18)
            {
              v23 = (v18 - 1) & v18;
              goto LABEL_32;
            }
          }

          __break(1u);
          return __CocoaSet.isEqual(to:)(v5, v4);
        }

        while (1)
        {
          v23 = (v13 - 1) & v13;
LABEL_32:
          sub_100162424(&qword_1003AC750, &type metadata accessor for AnyCancellable);

          v19 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v20 = -1 << *(a2 + 32);
          v21 = v19 & ~v20;
          if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            break;
          }

          v22 = ~v20;
          sub_100162424(&qword_1003B17A8, &type metadata accessor for AnyCancellable);
          while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
          {
            v21 = (v21 + 1) & v22;
            if (((*(v16 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v23;
          v5 = &qword_1003AC750;
          if (!v23)
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

  return sub_1001629D8(v8, v7);
}

uint64_t sub_100162788(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = *(result + 56);
  v32 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v37 = a2 + 56;
  v35 = result;
  v33 = v8;
  if ((v6 & v4) != 0)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v10 = (v7 - 1) & v7;
LABEL_13:
      v13 = (*(result + 48) + 112 * (v9 | (v3 << 6)));
      v15 = v13[1];
      v14 = v13[2];
      v39 = *v13;
      v40 = v15;
      v41 = v14;
      v17 = v13[4];
      v16 = v13[5];
      v18 = v13[3];
      *(v44 + 9) = *(v13 + 89);
      v43 = v17;
      v44[0] = v16;
      v42 = v18;
      Hasher.init(_seed:)();
      v19 = v40;
      sub_10001F5C4(&v39, v38);
      String.hash(into:)();
      v20 = v43;
      Hasher._combine(_:)(v43);
      v21 = *(&v43 + 1);
      Hasher._combine(_:)(*(&v43 + 1));
      v22 = Hasher._finalize()();
      v23 = -1 << *(v2 + 32);
      v24 = v22 & ~v23;
      if (((*(v37 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v36 = v10;
      v25 = ~v23;
      v26 = *(v2 + 48);
      while (1)
      {
        v27 = (v26 + 112 * v24);
        v28 = v27[8];
        v29 = v27[9];
        v30 = v27[2] == v19 && v27[3] == *(&v19 + 1);
        if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v28 == v20 && v29 == v21)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v37 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      sub_1000DA154(&v39);
      v2 = a2;
      result = v35;
      v8 = v33;
      v7 = v36;
      if (!v36)
      {
        goto LABEL_8;
      }
    }

LABEL_29:
    sub_1000DA154(&v39);
    return 0;
  }

LABEL_8:
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

    v12 = *(v32 + 8 * v3);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001629D8(uint64_t a1, uint64_t a2)
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
    v8 &= v8 - 1;
LABEL_12:

    v12 = __CocoaSet.contains(_:)();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_100162ADC()
{
  if (qword_1003A9258 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D2818);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "translationd crashed while showing live activity, ending the activity now", v3, 2u);
  }

  v4 = [objc_allocWithZone(NSError) initWithDomain:_LTTranslationErrorDomain code:14 userInfo:0];
  sub_10015EB34(v4);
}

void sub_100162C10(char a1)
{
  v2 = v1;
  v4 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  swift_getKeyPath();
  v21 = v1;
  sub_100162424(&qword_1003B35D0, type metadata accessor for LiveActivityViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation + 8);
    v9 = qword_1003A9258;
    swift_unknownObjectRetain();
    if (v9 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000078E8(v10, qword_1003D2818);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Toggling TTS", v13, 2u);
    }

    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    *(v15 + 24) = 0;
    *(v15 + 32) = v2;
    *(v15 + 40) = v7;
    *(v15 + 48) = v8;
    *(v15 + 56) = a1 & 1;

    sub_10005E36C(0, 0, v6, &unk_1002E1468, v15);
  }

  else
  {
    if (qword_1003A9258 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000078E8(v16, qword_1003D2818);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Cannot toggle TTS because there is no final translation", v19, 2u);
    }
  }
}

uint64_t sub_100162F54(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();

  a1(*(v2 + 40));

  return _swift_deallocObject(v2, a2, 7);
}

uint64_t sub_100162FB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001B558;

  return sub_10015E06C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100163090()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4 + 1) & ~v3;
  v7 = (((v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v7 + 19, v3 | 7);
}

uint64_t sub_1001631B8()
{
  swift_unknownObjectRelease();
  sub_100008664(v0 + 32);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100163200(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_100160778(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_100163370()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64) + v4;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

uint64_t sub_100163440(uint64_t a1)
{
  v4 = *(type metadata accessor for Locale() - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));
  v9 = *(v8 + *(v4 + 64));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10001B558;

  return sub_100160408(a1, v5, v6, v7, v8, v9);
}

uint64_t sub_100163610(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100005AD4(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

uint64_t sub_100163680(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B558;

  return sub_100160024(a1, v4, v5, v6, v7);
}

uint64_t sub_100163788()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_1001637C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_100278780(a1, v4, v5, v6);
}

uint64_t sub_10016387C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B558;

  return sub_10015FDFC(a1, v7, v4, v5, v6);
}

float sub_10016396C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__speechAudioLevel) = result;
  return result;
}

uint64_t sub_10016398C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_10015B1AC(a1, v4, v5, v6);
}

void sub_100163B30()
{
  v1 = *(v0 + 25);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isASRSupported);
  *v2 = *(v0 + 24);
  v2[1] = v1;
}

uint64_t sub_100163C14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_10015CEE0(a1, v4, v5, v6);
}

uint64_t sub_100163CCC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001B558;

  return sub_10015C61C(v6, a1, v4, v5, v8, v7);
}

uint64_t sub_100163D9C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100163DFC()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__isListeningLock) = *(v0 + 24);
}

uint64_t sub_100163E40()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100163E88(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001B16C;

  return sub_10015C61C(v6, a1, v4, v5, v8, v7);
}

uint64_t sub_100163F50()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__finalTranslation) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_100163F9C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC17SequoiaTranslator21LiveActivityViewModel__currentRecordingStopTonePlaybackTask) = *(v0 + 24);
}

uint64_t sub_100164014(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B36D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016421C(uint64_t a1)
{
  v2 = type metadata accessor for Locale.Language();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  sub_100164DC4();
  EnvironmentValues.subscript.setter();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_100164360@<X0>(int a1@<W1>, uint64_t a2@<X8>)
{
  v73 = a2;
  v82 = type metadata accessor for Locale();
  v3 = *(v82 - 8);
  v4 = __chkstk_darwin(v82);
  v74 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v65 - v6;
  v8 = type metadata accessor for EnvironmentValues();
  v76 = *(v8 - 8);
  v77 = v8;
  __chkstk_darwin(v8);
  v75 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_100005AD4(&qword_1003B3610);
  v10 = __chkstk_darwin(v78);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v71 = &v65 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = (&v65 - v15);
  __chkstk_darwin(v14);
  v18 = (&v65 - v17);

  v81 = a1;
  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v20 = v75;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v76 + 8))(v20, v77);
  }

  sub_100157D90(v7);
  v21 = v74;
  static Locale.current.getter();
  v22 = Locale.sqDisplayName(context:in:)();
  v24 = v23;
  v26 = *(v3 + 8);
  v25 = v3 + 8;
  v27 = v21;
  v28 = v82;
  v26(v27, v82);
  v80 = v26;
  v26(v7, v28);

  if (v24)
  {
    v29 = v22;
  }

  else
  {
    v29 = 0;
  }

  v30 = 0xE000000000000000;
  if (v24)
  {
    v30 = v24;
  }

  v65 = v30;
  v66 = v29;

  if ((v81 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v32 = v75;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v76 + 8))(v32, v77);
  }

  sub_100157D90(v7);

  v69 = objc_opt_self();
  v33 = [v69 mainBundle];
  v70 = "FIRST_USE_CONSENT_MISSING";
  v34._object = 0x80000001002F62D0;
  v34._countAndFlagsBits = 0xD000000000000011;
  v35._countAndFlagsBits = 0x617A696C61636F4CLL;
  v35._object = 0xEB00000000656C62;
  v36 = Locale.ltLocalizedAppString(_:table:bundle:)(v34, v35, v33);

  v79 = v25;
  v80(v7, v82);
  KeyPath = swift_getKeyPath();
  v38 = type metadata accessor for LabeledTextView();
  *(&v18->_countAndFlagsBits + v38[9]) = KeyPath;
  v68 = sub_100005AD4(&qword_1003B0300);
  swift_storeEnumTagMultiPayload();
  v39 = swift_getKeyPath();
  *(&v18->_countAndFlagsBits + v38[11]) = swift_getKeyPath();
  v67 = sub_100005AD4(&qword_1003BA370);
  swift_storeEnumTagMultiPayload();
  v40 = v65;
  v18->_countAndFlagsBits = v66;
  v18->_object = v40;
  v18[1] = v36;
  LOWORD(v18[2]._countAndFlagsBits) = 0;
  v18[2]._object = 0;
  v18[3]._countAndFlagsBits = 0;
  v41 = v18 + v38[10];
  *v41 = v39;
  v41[8] = 0;
  *(&v18->_countAndFlagsBits + *(v78 + 36)) = static Color.sourceTextColor.getter();

  if ((v81 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v43 = v75;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v76 + 8))(v43, v77);
  }

  sub_100158128(v7);
  v44 = v74;
  static Locale.current.getter();
  v66 = Locale.sqDisplayName(context:in:)();
  v46 = v45;
  v47 = v44;
  v48 = v82;
  v49 = v80;
  v80(v47, v82);
  v49(v7, v48);

  if ((v81 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v50 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v51 = v75;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v76 + 8))(v51, v77);
  }

  if (v46)
  {
    v52 = v66;
  }

  else
  {
    v46 = 0xE000000000000000;
    v52 = 0;
  }

  sub_100158128(v7);

  v53 = [v69 mainBundle];
  v54._object = (v70 | 0x8000000000000000);
  v54._countAndFlagsBits = 0xD000000000000011;
  v55._countAndFlagsBits = 0x617A696C61636F4CLL;
  v55._object = 0xEB00000000656C62;
  v56 = Locale.ltLocalizedAppString(_:table:bundle:)(v54, v55, v53);

  v80(v7, v82);
  *(&v16->_countAndFlagsBits + v38[9]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v57 = swift_getKeyPath();
  *(&v16->_countAndFlagsBits + v38[11]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v16->_countAndFlagsBits = v52;
  v16->_object = v46;
  v16[1] = v56;
  LOWORD(v16[2]._countAndFlagsBits) = 1;
  v16[2]._object = 0;
  v16[3]._countAndFlagsBits = 0;
  v58 = v16 + v38[10];
  *v58 = v57;
  v58[8] = 0;
  *(&v16->_countAndFlagsBits + *(v78 + 36)) = static Color.translateAccentColor.getter();
  v59 = v71;
  sub_100164CEC(v18, v71);
  v60 = v72;
  sub_100164CEC(v16, v72);
  v61 = v73;
  sub_100164CEC(v59, v73);
  v62 = sub_100005AD4(&qword_1003B3ED0);
  v63 = v61 + *(v62 + 48);
  *v63 = 0;
  *(v63 + 8) = 1;
  sub_100164CEC(v60, v61 + *(v62 + 64));
  sub_100164D5C(v16);
  sub_100164D5C(v18);
  sub_100164D5C(v60);
  return sub_100164D5C(v59);
}

uint64_t sub_100164BE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  *a1 = static VerticalAlignment.bottom.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_100005AD4(&qword_1003B3EC8);
  return sub_100164360(v3, a1 + *(v4 + 44));
}

uint64_t sub_100164C8C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100164CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&qword_1003B3610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100164D5C(uint64_t a1)
{
  v2 = sub_100005AD4(&qword_1003B3610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100164DC4()
{
  result = qword_1003B3ED8;
  if (!qword_1003B3ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3ED8);
  }

  return result;
}

unint64_t sub_100164E1C()
{
  result = qword_1003B3EE0;
  if (!qword_1003B3EE0)
  {
    sub_100005EA8(&qword_1003B3EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B3EE0);
  }

  return result;
}

id sub_100164E80()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 16);
    if (v2)
    {
      v5 = v1;

      sub_100005AD4(&qword_1003B12A0);
      Binding.projectedValue.getter();
      sub_100005AD4(&qword_1003BA760);
      Binding.projectedValue.getter();
      sub_100005AD4(&qword_1003B40D0);
      UIViewControllerRepresentableContext.coordinator.getter();
      sub_100005AD4(&qword_1003B40D8);
      Binding.wrappedValue.getter();
      return sub_10016DB90(v5, v2, v7, v8, v9, v10, v7, v8, v9, v7, v6);
    }
  }

  else
  {
    type metadata accessor for ConversationManager();
    sub_10016E9D8(&qword_1003B1368, 255, type metadata accessor for ConversationManager);
    EnvironmentObject.error()();
    __break(1u);
  }

  type metadata accessor for ConversationContext(0);
  sub_10016E9D8(&unk_1003BC490, 255, type metadata accessor for ConversationContext);
  v4 = v1;
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

void sub_1001650AC(uint64_t a1)
{
  sub_100005AD4(&qword_1003AEDD0);
  Binding.wrappedValue.getter();
  Binding.wrappedValue.getter();
  sub_10016D268(v4, v4);
  sub_100005AD4(&qword_1003BA760);
  Binding.wrappedValue.getter();
  v2 = *(a1 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_dataScannerVC);
  if (v2)
  {
    v3 = v2;
    dispatch thunk of DataScannerViewController.isTorchOn.setter();
  }
}

uint64_t sub_1001651A8(char a1)
{
  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Setting torch availability: %{BOOL}d", v5, 8u);
  }

  sub_100005AD4(&qword_1003BA760);
  return Binding.wrappedValue.setter();
}

uint64_t sub_1001652E4(char a1)
{
  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "Setting torch on/off: %{BOOL}d", v5, 8u);
  }

  sub_100005AD4(&qword_1003BA760);
  return Binding.wrappedValue.setter();
}

void sub_100165420(unsigned int a1, char a2)
{
  v2 = a1;
  sub_10010C2EC(a1, a2);
  if (qword_1003A91F8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v6 == 5 || (sub_10010BA50(v2, v6) & 1) == 0) && UIAccessibilityIsVoiceOverRunning())
  {
    if (!v2)
    {

LABEL_9:
      sub_100165604(v2);
      return;
    }

    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {
      goto LABEL_9;
    }

    v4 = UIAccessibilityAnnouncementNotification;
    sub_10010BBD4(v2);
    v5 = String._bridgeToObjectiveC()();

    UIAccessibilityPostNotification(v4, v5);
  }
}

void sub_100165604(char a1)
{
  v3 = *(v1 + 256);
  if (!v3 || ([v3 isValid] & 1) == 0)
  {
    v4 = objc_opt_self();
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    v9[4] = sub_10016F318;
    v9[5] = v5;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_1000CF44C;
    v9[3] = &unk_100386760;
    v6 = _Block_copy(v9);

    v7 = [v4 scheduledTimerWithTimeInterval:0 repeats:v6 block:3.0];
    _Block_release(v6);
    v8 = *(v1 + 256);
    *(v1 + 256) = v7;
  }
}

uint64_t sub_10016571C(uint64_t a1, char a2)
{
  v3 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  *(v8 + 32) = a2;
  sub_10005E36C(0, 0, v5, &unk_1002E1EC0, v8);
}

uint64_t sub_100165838(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 16) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001658D0, v6, v5);
}

uint64_t sub_1001658D0()
{
  v1 = *(v0 + 24);

  v2 = UIAccessibilityAnnouncementNotification;
  sub_10010BBD4(v1);
  v3 = String._bridgeToObjectiveC()();

  UIAccessibilityPostNotification(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100165974()
{
  v1 = *(v0 + 224);
  v9[12] = *(v0 + 208);
  v9[13] = v1;
  v9[14] = *(v0 + 240);
  v2 = *(v0 + 160);
  v9[8] = *(v0 + 144);
  v9[9] = v2;
  v3 = *(v0 + 192);
  v9[10] = *(v0 + 176);
  v9[11] = v3;
  v4 = *(v0 + 96);
  v9[4] = *(v0 + 80);
  v9[5] = v4;
  v5 = *(v0 + 128);
  v9[6] = *(v0 + 112);
  v9[7] = v5;
  v6 = *(v0 + 32);
  v9[0] = *(v0 + 16);
  v9[1] = v6;
  v7 = *(v0 + 64);
  v9[2] = *(v0 + 48);
  v9[3] = v7;
  sub_10016F2E8(v9);

  return swift_deallocClassInstance();
}

id sub_100165A20(unsigned __int8 a1)
{
  sub_10010CDA4(a1);
  v2 = *(v1 + 256);

  return [v2 invalidate];
}

id sub_100165A64()
{
  sub_10010D0A0();
  v1 = *(v0 + 256);

  return [v1 invalidate];
}

uint64_t sub_100165B10@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[13];
  v20[12] = v1[12];
  v20[13] = v3;
  v20[14] = v1[14];
  v4 = v1[9];
  v20[8] = v1[8];
  v20[9] = v4;
  v5 = v1[11];
  v20[10] = v1[10];
  v20[11] = v5;
  v6 = v1[5];
  v20[4] = v1[4];
  v20[5] = v6;
  v7 = v1[7];
  v20[6] = v1[6];
  v20[7] = v7;
  v8 = v1[1];
  v20[0] = *v1;
  v20[1] = v8;
  v9 = v1[3];
  v20[2] = v1[2];
  v20[3] = v9;
  type metadata accessor for CameraPreviewView.Coordinator();
  v10 = swift_allocObject();
  *(v10 + 256) = 0;
  v11 = v1[13];
  *(v10 + 208) = v1[12];
  *(v10 + 224) = v11;
  *(v10 + 240) = v1[14];
  v12 = v1[9];
  *(v10 + 144) = v1[8];
  *(v10 + 160) = v12;
  v13 = v1[11];
  *(v10 + 176) = v1[10];
  *(v10 + 192) = v13;
  v14 = v1[5];
  *(v10 + 80) = v1[4];
  *(v10 + 96) = v14;
  v15 = v1[7];
  *(v10 + 112) = v1[6];
  *(v10 + 128) = v15;
  v16 = v1[1];
  *(v10 + 16) = *v1;
  *(v10 + 32) = v16;
  v17 = v1[3];
  *(v10 + 48) = v1[2];
  *(v10 + 64) = v17;
  *a1 = v10;
  return sub_10016E9A0(v20, &v19);
}

uint64_t sub_100165BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10016EA20();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100165C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10016EA20();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100165CA4()
{
  sub_10016EA20();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

void sub_100165D34()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_materialView;
  [*&v0[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_materialView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[v1];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v2 setFrame:{v6, v8, v10, v12}];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v13;
  [v13 addSubview:*&v0[v1]];

  sub_100005AD4(&unk_1003AFCC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1002D53E0;
  v16 = [*&v0[v1] topAnchor];
  v17 = [v0 view];
  if (!v17)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v16 constraintEqualToAnchor:v19];
  *(v15 + 32) = v20;
  v21 = [*&v0[v1] leadingAnchor];
  v22 = [v0 view];
  if (!v22)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = v22;
  v24 = [v22 leadingAnchor];

  v25 = [v21 constraintEqualToAnchor:v24];
  *(v15 + 40) = v25;
  v26 = [*&v0[v1] bottomAnchor];
  v27 = [v0 view];
  if (!v27)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v15 + 48) = v30;
  v31 = [*&v0[v1] trailingAnchor];
  v32 = [v0 view];
  if (!v32)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v33 = v32;
  v34 = objc_opt_self();
  v35 = [v33 trailingAnchor];

  v36 = [v31 constraintEqualToAnchor:v35];
  *(v15 + 56) = v36;
  sub_10000A2CC(0, &qword_1003B3480);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v34 activateConstraints:isa];

  [*&v0[v1] setHidden:1];

  sub_10016664C();
}

uint64_t sub_100166178(uint64_t a1, double a2, double a3)
{
  v24.receiver = v3;
  v24.super_class = type metadata accessor for CameraPreviewViewController();
  objc_msgSendSuper2(&v24, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    type metadata accessor for CameraPreviewView.Coordinator();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8[13];
      v20 = v8[12];
      v21 = v9;
      v10 = v8[15];
      v22 = v8[14];
      v23 = v10;
      v11 = v8[9];
      v18[7] = v8[8];
      v18[8] = v11;
      v12 = v8[11];
      v18[9] = v8[10];
      v19 = v12;
      v13 = v8[5];
      v18[3] = v8[4];
      v18[4] = v13;
      v14 = v8[7];
      v18[5] = v8[6];
      v18[6] = v14;
      v15 = v8[2];
      v18[0] = v8[1];
      v18[1] = v15;
      v18[2] = v8[3];
      sub_10016E9A0(v18, v17);
      swift_unknownObjectRelease();
      *v17 = *(&v19 + 1);
      *&v17[8] = v20;
      sub_100005AD4(&qword_1003AEDD0);
      Binding.wrappedValue.getter();
      *v17 = v21;
      *&v17[16] = v22;
      Binding.wrappedValue.getter();
      sub_10016D268(v16, v16);
      return sub_10016F2E8(v18);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100166360()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for CameraPreviewViewController();
  objc_msgSendSuper2(&v4, "applicationWillSuspend");
  sub_1001673BC();
  sub_10016C0C8();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001652E4(0);
    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = v2;
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      sub_10000A948(v2, 1uLL);
      return sub_10016D418();
    }

    return sub_10000A948(v2, v3);
  }

  if (v3 <= 5 || v3 != 6)
  {
    return sub_10000A948(v2, v3);
  }

  return result;
}

void sub_1001664CC()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CameraPreviewViewController();
  objc_msgSendSuper2(&v3, "applicationDidResume");
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      sub_10000A948(v1, 1uLL);
      sub_10016A9A4();
      sub_100167638();
      return;
    }

    goto LABEL_7;
  }

  if (v2 <= 5 || v2 != 6)
  {
LABEL_7:
    sub_10000A948(v1, v2);
  }
}

void sub_10016664C()
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(AVCaptureEventInteraction);
  v8[4] = sub_10016F2D8;
  v8[5] = v1;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1000CF44C;
  v8[3] = &unk_1003866E8;
  v3 = _Block_copy(v8);

  v4 = [v2 initWithEventHandler:v3];
  _Block_release(v3);

  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    [v5 addInteraction:v4];

    v7 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_eventInteraction];
    *&v0[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_eventInteraction] = v4;
  }

  else
  {
    __break(1u);
  }
}

void sub_100166798(void *a1)
{
  v2 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  if ([a1 phase] == 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = type metadata accessor for TaskPriority();
      (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
      type metadata accessor for MainActor();
      v8 = v6;
      v9 = static MainActor.shared.getter();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = &protocol witness table for MainActor;
      v10[4] = v8;
      sub_10005E36C(0, 0, v4, &unk_1002E1E68, v10);
    }
  }
}

void sub_100166908()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003B23F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v5 = sub_100005AD4(&qword_1003B4158);
  v51 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v45 - v6;
  v8 = sub_100005AD4(&qword_1003B4160);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v45 - v10;
  v12 = sub_100005AD4(&qword_1003B4168);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v45 - v15;
  v17 = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_dataScannerVC;
  v18 = *&v1[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_dataScannerVC];
  if (!v18)
  {
    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000078E8(v30, qword_1003D2758);
    v52 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v52, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v52, v31, "Data scanner isn't initialized so not scanning", v32, 2u);
    }

LABEL_17:
    v37 = v52;

    return;
  }

  v49 = v11;
  v50 = v14;
  v52 = v18;
  if (dispatch thunk of DataScannerViewController.isScanning.getter())
  {
    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000078E8(v19, qword_1003D2758);
    v20 = v1;
    v21 = v1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v54[0] = v25;
      *v24 = 136315138;
      v53 = *&v20[v17];
      v26 = v53;
      sub_100005AD4(&qword_1003B4188);
      v27 = String.init<A>(describing:)();
      v29 = sub_10028D78C(v27, v28, v54);

      *(v24 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v22, v23, "Illegal attempt to start scanning on scanner that's already scanning: %s", v24, 0xCu);
      sub_100008664(v25);

      return;
    }

    goto LABEL_17;
  }

  v48 = v9;
  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_1000078E8(v33, qword_1003D2758);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v47 = v8;
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "Starting Scanning", v36, 2u);
    v8 = v47;
  }

  dispatch thunk of DataScannerViewController.startCamera()();
  dispatch thunk of DataScannerViewController.startScanning()();
  sub_1001694E8();
  v46 = v1;
  swift_beginAccess();
  sub_100005AD4(&qword_1003AE408);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10001BAEC(&qword_1003B4170, &qword_1003B4158);
  v38 = v49;
  Publisher.filter(_:)();
  (*(v51 + 8))(v7, v5);
  sub_10000A2CC(0, &qword_1003A9C40);
  v39 = static OS_dispatch_queue.main.getter();
  v54[0] = v39;
  v40 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v40 - 8) + 56))(v4, 1, 1, v40);
  sub_10001BAEC(&qword_1003B4178, &qword_1003B4160);
  sub_100051450();
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v4, &qword_1003B23F0);

  (*(v48 + 8))(v38, v8);
  swift_allocObject();
  v41 = v46;
  swift_unknownObjectWeakInit();
  sub_10001BAEC(&qword_1003B4180, &qword_1003B4168);
  v42 = v50;
  v43 = Publisher<>.sink(receiveValue:)();

  (*(v13 + 8))(v16, v42);
  v54[3] = type metadata accessor for AnyCancellable();

  v54[0] = v43;
  v44 = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_contextObserver;
  swift_beginAccess();
  sub_10016F1A8(v54, &v41[v44]);
  swift_endAccess();
}

void sub_100167268()
{
  v0 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    type metadata accessor for MainActor();
    v6 = v4;
    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v6;
    sub_10005E36C(0, 0, v2, &unk_1002E1E60, v8);
  }
}

uint64_t sub_1001673BC()
{
  v1 = v0;
  if (qword_1003A9218 != -1)
  {
LABEL_18:
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stopping Scanning", v5, 2u);
  }

  sub_10016CEB4();
  memset(v21, 0, sizeof(v21));
  v6 = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_contextObserver;
  swift_beginAccess();
  sub_10016F1A8(v21, v1 + v6);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_dataScannerVC);
  if (v7)
  {
    v8 = v7;
    dispatch thunk of DataScannerViewController.isTorchOn.setter();
    dispatch thunk of DataScannerViewController.stopScanning()();
    dispatch thunk of DataScannerViewController.stopCamera()();
  }

  v9 = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_observationTasks;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v13 = *(v10 + 56);
  v12 = v10 + 56;
  v11 = v13;
  v14 = 1 << *(*(v1 + v9) + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  if (v16)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v12 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      do
      {
LABEL_14:
        v16 &= v16 - 1;

        Task.cancel()();
      }

      while (v16);
      continue;
    }
  }

  *(v1 + v9) = &_swiftEmptySetSingleton;
}

void sub_100167638()
{
  v1 = v0;
  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Launch pre-check triggered", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_launchPrerequisitesDebounceTimer;
  v7 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_launchPrerequisitesDebounceTimer);
  if (!v7)
  {
    goto LABEL_13;
  }

  v16 = v7;
  if (![v16 isValid])
  {

LABEL_13:
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_10016F08C;
    aBlock[5] = v11;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF44C;
    aBlock[3] = &unk_100386670;
    v12 = _Block_copy(aBlock);
    v13 = objc_opt_self();

    v14 = [v13 timerWithTimeInterval:0 repeats:v12 block:5.0];
    _Block_release(v12);

    v15 = *(v1 + v6);
    *(v1 + v6) = v14;

    sub_100167CD8();
    return;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Skipping launch prerequisites because it's already in flight", v10, 2u);
  }
}

uint64_t sub_1001678E4(void *a1)
{
  v2 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000078E8(v5, qword_1003D2758);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed to finish checking launch prerequisites in time; starting a new request", v8, 2u);
  }

  [a1 invalidate];
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;
  sub_10005E36C(0, 0, v4, &unk_1002E1E20, v12);
}

uint64_t sub_100167B20()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    v0[7] = static MainActor.shared.getter();
    v3 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_100167C0C, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100167C0C()
{

  sub_100167638();

  return _swift_task_switch(sub_100167C78, 0, 0);
}

uint64_t sub_100167C78()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100167CD8()
{
  v1 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v1 - 8);
  v45 = &v39 - v2;
  v3 = type metadata accessor for Locale();
  v4 = __chkstk_darwin(v3 - 8);
  __chkstk_darwin(v4);
  v5 = type metadata accessor for LocalePair();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v39 - v10;
  v41 = v12;
  __chkstk_darwin(v9);
  v14 = &v39 - v13;
  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v40 = v11;
  v15 = type metadata accessor for Logger();
  sub_1000078E8(v15, qword_1003D2758);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Launch pre-check happening now", v18, 2u);
  }

  v44 = v0;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  LocalePair.init(sourceLocale:targetLocale:)();
  v19 = *(v6 + 16);
  v20 = v40;
  v43 = v14;
  v39 = v19;
  v19(v40, v14, v5);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v46 = v24;
    *v23 = 136446210;
    sub_10016E9D8(&qword_1003B4150, 255, &type metadata accessor for LocalePair);
    v25 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = v20;
    v28 = v27;
    v40 = *(v6 + 8);
    v40(v26, v5);
    v29 = sub_10028D78C(v25, v28, &v46);

    *(v23 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "Launch pre-check %{public}s", v23, 0xCu);
    sub_100008664(v24);
  }

  else
  {

    v40 = *(v6 + 8);
    v40(v20, v5);
  }

  v30 = type metadata accessor for TaskPriority();
  v31 = v45;
  (*(*(v30 - 8) + 56))(v45, 1, 1, v30);
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v42;
  v33 = v43;
  v39(v42, v43, v5);
  type metadata accessor for MainActor();

  v35 = static MainActor.shared.getter();
  v36 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v37 = swift_allocObject();
  *(v37 + 2) = v35;
  *(v37 + 3) = &protocol witness table for MainActor;
  *(v37 + 4) = v32;
  (*(v6 + 32))(&v37[v36], v34, v5);

  sub_10005E36C(0, 0, v31, &unk_1002E1DF0, v37);

  return (v40)(v33, v5);
}

uint64_t sub_1001682C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v6 = type metadata accessor for Locale();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  sub_100005AD4(&unk_1003BA690);
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v5[29] = v7;
  v5[30] = *(v7 - 8);
  v5[31] = swift_task_alloc();
  v8 = type metadata accessor for DispatchQoS();
  v5[32] = v8;
  v5[33] = *(v8 - 8);
  v5[34] = swift_task_alloc();
  v9 = type metadata accessor for DispatchTime();
  v5[35] = v9;
  v5[36] = *(v9 - 8);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[39] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[40] = v11;
  v5[41] = v10;

  return _swift_task_switch(sub_100168534, v11, v10);
}

uint64_t sub_100168534()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[42] = Strong;
  if (Strong)
  {
    v2 = v0[37];
    v14 = v0[38];
    v3 = v0[35];
    v4 = v0[36];
    v5 = v0[34];
    v20 = v0[33];
    v21 = v0[32];
    v17 = v0[31];
    v18 = v0[29];
    v19 = v0[30];
    v6 = swift_allocObject();
    v0[43] = v6;
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v0[44] = v7;
    *(v7 + 16) = 0;
    sub_10000A2CC(0, &qword_1003A9C40);

    v15 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v16 = *(v4 + 8);
    v16(v2, v3);
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = sub_10016EED0;
    v8[4] = v6;
    v0[6] = sub_10016EF00;
    v0[7] = v8;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100096948;
    v0[5] = &unk_100386620;
    v9 = _Block_copy(v0 + 2);

    static DispatchQoS.unspecified.getter();
    v0[19] = _swiftEmptyArrayStorage;
    sub_10016E9D8(&qword_1003AB990, 255, &type metadata accessor for DispatchWorkItemFlags);
    sub_100005AD4(&unk_1003A9C50);
    sub_10001BAEC(&qword_1003AB9A0, &unk_1003A9C50);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v9);

    (*(v19 + 8))(v17, v18);
    (*(v20 + 8))(v5, v21);
    v16(v14, v3);

    v10 = swift_task_alloc();
    v0[45] = v10;
    *v10 = v0;
    v10[1] = sub_10016895C;
    v11 = v0[21];

    return static LanguagesStatusService.languagePairPath(_:)(v11);
  }

  else
  {

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_10016895C(char a1)
{
  v2 = *v1;
  *(*v1 + 368) = a1;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);

  return _swift_task_switch(sub_100168A84, v4, v3);
}

uint64_t sub_100168A84()
{
  v54 = v0;
  v1 = *(v0 + 352);

  swift_beginAccess();
  *(v1 + 16) = 1;
  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2758);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v53 = v6;
    *v5 = 136446210;
    v7 = LanguagePairPath.description.getter();
    v9 = sub_10028D78C(v7, v8, &v53);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Translation path for locale pair: %{public}s", v5, 0xCu);
    sub_100008664(v6);
  }

  v10 = *(v0 + 368);
  if (v10 > 2)
  {
    if (v10 == 3)
    {

      sub_1000E7224();
    }

    else if (v10 == 4)
    {
      v12 = *(v0 + 224);
      v14 = *(v0 + 192);
      v13 = *(v0 + 200);
      v15 = *(v0 + 176);
      v16 = *(v0 + 184);
      LocalePair.sourceLocale.getter();
      LocalePair.targetLocale.getter();
      v17 = objc_allocWithZone(_LTLocalePair);
      isa = Locale._bridgeToObjectiveC()().super.isa;
      v19 = Locale._bridgeToObjectiveC()().super.isa;
      v20 = [v17 initWithSourceLocale:isa targetLocale:v19];

      v21 = *(v16 + 8);
      v21(v14, v15);
      v21(v13, v15);
      sub_1000E6C4C(v20, v12);
    }

    else
    {
      sub_1000E7A90();
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v23 = *(v0 + 216);
  v22 = *(v0 + 224);
  v24 = type metadata accessor for UIContentUnavailableConfiguration();
  v25 = *(v24 - 8);
  (*(v25 + 56))(v22, v11, 1, v24);
  sub_10016EF0C(v22, v23);
  v26 = *(v25 + 48);
  v27 = v26(v23, 1, v24);
  v28 = *(v0 + 336);
  v29 = *(v0 + 216);
  if (v27 == 1)
  {
    v30 = v28;
    sub_100009EBC(v29, &unk_1003BA690);
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0;
  }

  else
  {
    *(v0 + 88) = v24;
    *(v0 + 96) = &protocol witness table for UIContentUnavailableConfiguration;
    v31 = sub_100050D60((v0 + 64));
    (*(v25 + 32))(v31, v29, v24);
    v32 = v28;
  }

  v33 = *(v0 + 336);
  v34 = *(v0 + 224);
  v35 = *(v0 + 208);
  UIViewController.contentUnavailableConfiguration.setter();

  sub_10016EF0C(v34, v35);
  v36 = v26(v35, 1, v24);
  v37 = *(v0 + 208);
  if (v36 == 1)
  {
    sub_100009EBC(*(v0 + 208), &unk_1003BA690);
    sub_1001690F8();
  }

  else
  {

    sub_100009EBC(v37, &unk_1003BA690);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v53 = v41;
      *v40 = 136446210;
      v42 = LanguagePairPath.description.getter();
      v44 = sub_10028D78C(v42, v43, &v53);

      *(v40 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v38, v39, "Translation path %{public}s is unavailable, showing error message and not scanning", v40, 0xCu);
      sub_100008664(v41);
    }

    v45 = *(v0 + 336);
    sub_1001673BC();
    [*(v45 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_materialView) setHidden:0];
    v46 = v45 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for CameraPreviewView.Coordinator();
      sub_100165AA8();
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v47 = *(v46 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v47 + 16) + 24))(ObjectType);
      swift_unknownObjectRelease();
    }
  }

  v49 = *(v0 + 336);
  v50 = *(v0 + 224);
  [*&v49[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_launchPrerequisitesDebounceTimer] invalidate];

  sub_100009EBC(v50, &unk_1003BA690);

  v51 = *(v0 + 8);

  return v51();
}

void sub_1001690F8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    UIViewController.contentUnavailableConfiguration.setter();

    if (swift_unknownObjectWeakLoadStrong())
    {
      type metadata accessor for CameraPreviewView.Coordinator();
      sub_100165AA8();
      swift_unknownObjectRelease();
    }

    [*&v1[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_materialView] setHidden:{1, 0, 0, 0, 0, 0}];
    sub_100166908();
  }
}

uint64_t sub_1001691C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v13 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = a1;
  v11[5] = a2;
  v11[6] = a3;
  sub_10005E36C(0, 0, v8, &unk_1002E1E10, v11);
}

uint64_t sub_100169304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  type metadata accessor for MainActor();
  v6[8] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1001693A0, v8, v7);
}

uint64_t sub_1001693A0()
{
  v1 = v0[5];

  swift_beginAccess();
  if ((*(v1 + 16) & 1) == 0)
  {
    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000078E8(v2, qword_1003D2758);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "languagePairPath is taking a while; enabling camera until that returns results", v5, 2u);
    }

    v6 = v0[6];

    v6();
  }

  v7 = v0[1];

  return v7();
}

void sub_1001694E8()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v2 - 8);
  v4 = &v34 - v3;
  v5 = sub_100005AD4(&qword_1003AFCE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for Locale();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v0[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_dataScannerVC];
  if (v12)
  {
    v35 = v12;
    v13 = sub_100097D4C();
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v11, v8);
    v15 = [v13 oppositeToLocale:isa];

    if (v15)
    {
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v9 + 56))(v7, 0, 1, v8);
      sub_100009EBC(v7, &qword_1003AFCE0);
      if (qword_1003A9218 != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      sub_1000078E8(v16, qword_1003D2758);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Beginning text observations", v19, 2u);
      }

      v20 = type metadata accessor for TaskPriority();
      (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
      type metadata accessor for MainActor();
      v21 = v35;
      v22 = v1;
      v23 = static MainActor.shared.getter();
      v24 = swift_allocObject();
      v24[2] = v23;
      v24[3] = &protocol witness table for MainActor;
      v24[4] = v21;
      v24[5] = v22;
      v25 = sub_10005E36C(0, 0, v4, &unk_1002E1D30, v24);
      swift_beginAccess();

      sub_10021AA34(&v36, v25);
      swift_endAccess();
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8);
      sub_100009EBC(v7, &qword_1003AFCE0);
      if (qword_1003A9218 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_1000078E8(v30, qword_1003D2758);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Unable to configure source and target locales for Camera translation", v33, 2u);
      }
    }
  }

  else
  {
    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000078E8(v26, qword_1003D2758);
    v35 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v35, v27, "Data Scanner View Controller isn't initialized yet, so can't begin text observations", v28, 2u);
    }

    v29 = v35;
  }
}

uint64_t sub_100169AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[25] = a4;
  v5[26] = a5;
  v6 = type metadata accessor for TaskHint();
  v5[27] = v6;
  v5[28] = *(v6 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  v5[31] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[32] = v7;
  v5[33] = *(v7 - 8);
  v5[34] = swift_task_alloc();
  v8 = type metadata accessor for Locale();
  v5[35] = v8;
  v5[36] = *(v8 - 8);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v9 = sub_100005AD4(&qword_1003B4140);
  v5[39] = v9;
  v5[40] = *(v9 - 8);
  v5[41] = swift_task_alloc();
  v10 = sub_100005AD4(&qword_1003B4148);
  v5[42] = v10;
  v5[43] = *(v10 - 8);
  v5[44] = swift_task_alloc();
  v5[45] = type metadata accessor for MainActor();
  v5[46] = static MainActor.shared.getter();
  v12 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[47] = v12;
  v5[48] = v11;

  return _swift_task_switch(sub_100169DA4, v12, v11);
}

uint64_t sub_100169DA4()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v3 = *(v0 + 312);
  dispatch thunk of DataScannerViewController.recognizedItems.getter();
  AsyncStream.makeAsyncIterator()();
  (*(v2 + 8))(v1, v3);
  v4 = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_delegate;
  *(v0 + 392) = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_noTextFoundTimer;
  *(v0 + 400) = v4;
  v5 = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_conversation;
  *(v0 + 408) = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController__viewportHasText;
  *(v0 + 416) = v5;
  v6 = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_translationBridge;
  *(v0 + 424) = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_selfLoggingInvocation;
  *(v0 + 432) = v6;
  *(v0 + 164) = enum case for TaskHint.system(_:);
  v7 = static MainActor.shared.getter();
  *(v0 + 440) = v7;
  v8 = swift_task_alloc();
  *(v0 + 448) = v8;
  *v8 = v0;
  v8[1] = sub_100169EFC;
  v9 = *(v0 + 336);

  return AsyncStream.Iterator.next(isolation:)(v0 + 192, v7, &protocol witness table for MainActor, v9);
}

uint64_t sub_100169EFC()
{
  v1 = *v0;

  v2 = *(v1 + 384);
  v3 = *(v1 + 376);

  return _swift_task_switch(sub_10016A040, v3, v2);
}

uint64_t sub_10016A040()
{
  v1 = v0[24];
  if (v1)
  {
    v2 = v0[49];
    v3 = v0[26];
    v4 = *(v3 + v2);
    if (*(v1 + 16))
    {
      [v4 invalidate];
      v5 = *(v3 + v2);
      *(v3 + v2) = 0;

      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v0[26] + v0[50] + 8);
        ObjectType = swift_getObjectType();
        (*(*(v6 + 16) + 16))(1, ObjectType);
        swift_unknownObjectRelease();
      }
    }

    else if (!v4)
    {
      v85 = objc_opt_self();
      v14 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v0[6] = sub_10016EC28;
      v0[7] = v14;
      v0[2] = _NSConcreteStackBlock;
      v0[3] = 1107296256;
      v0[4] = sub_1000CF44C;
      v0[5] = &unk_100386558;
      v82 = _Block_copy(v0 + 2);

      v15 = [v85 scheduledTimerWithTimeInterval:0 repeats:v82 block:3.0];
      _Block_release(v82);
      v16 = *(v3 + v2);
      *(v3 + v2) = v15;
    }

    v17 = v0[26] + v0[51];
    v18 = *(v1 + 16) != 0;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v0[18] = *v17;
    v0[19] = v19;
    *(v0 + 160) = v20;
    *(v0 + 161) = v18;
    sub_100005AD4(&qword_1003BA760);
    Binding.wrappedValue.setter();
    v21 = *(v17 + 8);
    v22 = *(v17 + 16);
    v0[21] = *v17;
    v0[22] = v21;
    *(v0 + 184) = v22;
    Binding.wrappedValue.getter();
    if (*(v0 + 162) == 1 && swift_unknownObjectWeakLoadStrong())
    {
      v23 = *(v0[26] + v0[50] + 8);
      v24 = swift_getObjectType();
      (*(*(v23 + 16) + 8))(4, 1, v24);
      swift_unknownObjectRelease();
    }

    if ((sub_100003688() & 1) == 0 || (v0[11] = &type metadata for TranslateFeatures, v0[12] = sub_100009DF8(), *(v0 + 64) = 1, v25 = isFeatureEnabled(_:)(), sub_100008664((v0 + 8)), (v25 & 1) == 0) || (v0[16] = &type metadata for VisualIntelligenceFeatures, v0[17] = sub_10016E94C(), v26 = isFeatureEnabled(_:)(), sub_100008664((v0 + 13)), (v26 & 1) == 0))
    {

      goto LABEL_26;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v27 = sub_100097D4C();
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v29 = [v27 oppositeToLocale:isa];

    if (v29)
    {
      v78 = v0[53];
      aBlock = v0[37];
      v31 = v0[35];
      v30 = v0[36];
      v32 = v0[33];
      v83 = v0[38];
      v86 = v0[32];
      v34 = v0[30];
      v33 = v0[31];
      v35 = v0[26];
      static Locale._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = *(v35 + v78);
      v37 = *(v30 + 16);
      v37(v33, v83, v31);
      v37(v33 + v34[5], aBlock, v31);
      (*(v32 + 56))(v33 + v34[14], 1, 1, v86);
      *(v33 + v34[6]) = 5;
      *(v33 + v34[7]) = 4;
      *(v33 + v34[8]) = 0;
      *(v33 + v34[9]) = 0;
      v38 = v33 + v34[10];
      *v38 = 0;
      *(v38 + 8) = 1;
      *(v33 + v34[11]) = 0;
      *(v33 + v34[12]) = 0;
      v39 = v33 + v34[13];
      *v39 = 0;
      *(v39 + 8) = 1;

      sub_10022520C(v33);
      v43 = *(v36 + 16);
      if (!v43)
      {
        __break(1u);
        return AsyncStream.Iterator.next(isolation:)(v43, v40, v41, v42);
      }

      v44 = v0[54];
      v45 = v0[31];
      v46 = v0[26];
      v47 = [v43 invocationId];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10016EBCC(v45);
      v48 = *(v46 + v44);
      if (v48)
      {
        v49 = v0[36];
        v87 = v0[35];
        v50 = v0[33];
        v51 = v0[34];
        aBlocka = v0[38];
        v84 = v0[32];
        v52 = v0[28];
        v53 = v0[29];
        v77 = v0[37];
        v79 = v0[27];
        (*(v52 + 104))(v53, *(v0 + 41));
        v54 = v48;
        VisualTranslationViewBridge.translate(_:sourceLocale:targetLocale:taskHint:selfLoggingInvocationId:)();

        (*(v52 + 8))(v53, v79);
        (*(v50 + 8))(v51, v84);
        v55 = *(v49 + 8);
        v55(v77, v87);
        v55(aBlocka, v87);
      }

      else
      {
        v70 = v0[37];
        v69 = v0[38];
        v71 = v0[35];
        v72 = v0[36];
        v74 = v0[33];
        v73 = v0[34];
        v75 = v0[32];

        (*(v74 + 8))(v73, v75);
        v76 = *(v72 + 8);
        v76(v70, v71);
        v76(v69, v71);
      }

LABEL_26:
      v56 = static MainActor.shared.getter();
      v0[55] = v56;
      v57 = swift_task_alloc();
      v0[56] = v57;
      *v57 = v0;
      v57[1] = sub_100169EFC;
      v42 = v0[42];
      v41 = &protocol witness table for MainActor;
      v43 = v0 + 24;
      v40 = v56;

      return AsyncStream.Iterator.next(isolation:)(v43, v40, v41, v42);
    }

    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_1000078E8(v58, qword_1003D2758);
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();
    v61 = os_log_type_enabled(v59, v60);
    v63 = v0[43];
    v62 = v0[44];
    v64 = v0[42];
    v65 = v0[38];
    v66 = v0[35];
    v67 = v0[36];
    if (v61)
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "Unable to configure source and target locales for Camera translation", v68, 2u);
    }

    (*(v67 + 8))(v65, v66);
    (*(v63 + 8))(v62, v64);
  }

  else
  {
    (*(v0[43] + 8))(v0[44], v0[42]);

    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000078E8(v8, qword_1003D2758);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "AsyncStream of observations has finished", v11, 2u);
    }

    sub_100225A0C();
  }

  v12 = v0[1];

  return v12();
}

void sub_10016A9A4()
{
  v1 = sub_100005AD4(&qword_1003B23F0);
  __chkstk_darwin(v1 - 8);
  v129 = &v119 - v2;
  v3 = sub_100005AD4(&qword_1003AD858);
  v127 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v119 - v4;
  v6 = sub_100005AD4(&qword_1003B4100);
  v128 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v119 - v7;
  v9 = sub_100005AD4(&qword_1003B4108);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v119 - v11;
  v132 = type metadata accessor for DataScannerViewController.QualityLevel();
  v130 = *(v132 - 1);
  __chkstk_darwin(v132);
  *&v131 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005AD4(&qword_1003B4110);
  __chkstk_darwin(v14 - 8);
  v16 = &v119 - v15;
  v17 = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_dataScannerVC;
  v133 = v0;
  if (*(&v0->isa + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_dataScannerVC))
  {
    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000078E8(v18, qword_1003D2758);
    v133 = Logger.logObject.getter();
    v19 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v133, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v133, v19, "Attempt to add a data scanner when one is already present; doing nothing", v20, 2u);
    }

    v21 = v133;

    return;
  }

  v120 = v5;
  v121 = v3;
  v122 = v8;
  v123 = v6;
  v124 = v12;
  v125 = v10;
  v126 = v9;
  sub_100005AD4(&qword_1003B4118);
  v22 = type metadata accessor for DataScannerViewController.RecognizedDataType();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1002D3160;
  v26 = type metadata accessor for DataScannerViewController.TextContentType();
  (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  static DataScannerViewController.RecognizedDataType.text(languages:textContentType:)();
  sub_100009EBC(v16, &qword_1003B4110);
  sub_100120A24(v25);
  swift_setDeallocating();
  (*(v23 + 8))(v25 + v24, v22);
  swift_deallocClassInstance();
  (v130)[13](v131, enum case for DataScannerViewController.QualityLevel.fast(_:), v132);
  v27 = objc_allocWithZone(type metadata accessor for DataScannerViewController());
  v28 = DataScannerViewController.init(recognizedDataTypes:qualityLevel:recognizesMultipleItems:isHighFrameRateTrackingEnabled:isPinchToZoomEnabled:isGuidanceEnabled:isHighlightingEnabled:usesSingleCamera:)();
  v29 = v133;
  v30 = *(&v133->isa + v17);
  *(&v133->isa + v17) = v28;
  v31 = v28;

  sub_10016E9D8(&qword_1003B4120, v32, type metadata accessor for CameraPreviewViewController);
  swift_unknownObjectRetain();
  dispatch thunk of DataScannerViewController.delegate.setter();
  sub_10016E9D8(&qword_1003B4128, v33, type metadata accessor for CameraPreviewViewController);
  swift_unknownObjectRetain();
  dispatch thunk of DataScannerViewController.privateDelegate.setter();
  v34 = v31;
  [v29 addChildViewController:v34];
  v35 = [(objc_class *)v34 view];

  if (!v35)
  {
    goto LABEL_29;
  }

  v36 = [v29 view];
  if (!v36)
  {
    __break(1u);
    goto LABEL_22;
  }

  v37 = v36;
  [v36 bounds];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  [v35 setFrame:{v39, v41, v43, v45}];
  [v35 setContentMode:2];
  v46 = [v29 view];
  if (!v46)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v47 = v46;
  [v46 insertSubview:v35 belowSubview:*(&v29->isa + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_materialView)];

  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];
  v48 = [v35 topAnchor];
  v49 = [v29 view];
  if (!v49)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v50 = v49;
  v132 = v34;
  v51 = [v49 topAnchor];

  v52 = [v48 constraintEqualToAnchor:v51];
  v53 = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_topConstraint;
  v54 = *(&v29->isa + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_topConstraint);
  *(&v29->isa + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_topConstraint) = v52;

  v55 = [v35 heightAnchor];
  v56 = [v29 view];
  if (!v56)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v57 = v56;
  v58 = [v56 heightAnchor];

  v59 = [v55 constraintEqualToAnchor:v58];
  v60 = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_heightConstraint;
  v61 = *(&v29->isa + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_heightConstraint);
  *(&v29->isa + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_heightConstraint) = v59;

  sub_100005AD4(&unk_1003AFCC0);
  v62 = swift_allocObject();
  v131 = xmmword_1002D53E0;
  *(v62 + 16) = xmmword_1002D53E0;
  v63 = *(&v29->isa + v53);
  if (!v63)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v64 = v62;
  *(v62 + 32) = v63;
  v65 = v63;
  v66 = [v35 leadingAnchor];
  v67 = [v29 view];
  if (!v67)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v68 = v67;
  v69 = [v67 leadingAnchor];

  v70 = [v66 constraintEqualToAnchor:v69];
  v64[5] = v70;
  v71 = *(&v29->isa + v60);
  if (v71)
  {
    v64[6] = v71;
    v72 = v71;
    v73 = [v35 trailingAnchor];
    v74 = [v29 view];
    if (v74)
    {
      v75 = v74;
      v76 = objc_opt_self();
      v77 = [v75 trailingAnchor];

      v78 = [v73 constraintEqualToAnchor:v77];
      v64[7] = v78;
      v79 = sub_10000A2CC(0, &qword_1003B3480);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v130 = v76;
      [v76 activateConstraints:isa];

      v81 = objc_allocWithZone(type metadata accessor for VisualTranslationViewBridge());
      v82 = VisualTranslationViewBridge.init(optimizedForExtendedExperience:)();
      v83 = VisualTranslationViewBridge.view.getter();
      if (v83)
      {
        v84 = v83;
        v85 = dispatch thunk of DataScannerViewController.overlayContainerView.getter();
        [v85 bounds];
        [v84 setFrame:?];
        [v84 setTranslatesAutoresizingMaskIntoConstraints:0];
        v86 = [objc_opt_self() clearColor];
        v119 = v79;
        v87 = v86;
        [v84 setBackgroundColor:{v86, v119}];

        [v85 addSubview:v84];
        v88 = swift_allocObject();
        *(v88 + 16) = v131;
        v89 = [v84 topAnchor];
        v90 = [v85 topAnchor];
        v91 = [v89 constraintEqualToAnchor:v90];

        *(v88 + 32) = v91;
        v92 = [v84 leadingAnchor];
        v93 = [v85 leadingAnchor];
        v94 = [v92 constraintEqualToAnchor:v93];

        *(v88 + 40) = v94;
        v95 = [v84 bottomAnchor];
        v96 = [v85 bottomAnchor];
        v97 = [v95 constraintEqualToAnchor:v96];

        *(v88 + 48) = v97;
        v98 = [v84 trailingAnchor];
        v99 = [v85 trailingAnchor];
        v100 = [v98 constraintEqualToAnchor:v99];

        *(v88 + 56) = v100;
        v101 = Array._bridgeToObjectiveC()().super.isa;

        [v130 activateConstraints:v101];
      }

      v102 = v133;
      v103 = *(&v133->isa + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_translationBridge);
      *(&v133->isa + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_translationBridge) = v82;
      v104 = v82;

      swift_beginAccess();
      sub_100005AD4(&qword_1003AED90);
      v105 = v120;
      Published.projectedValue.getter();
      swift_endAccess();
      sub_10001BAEC(&qword_1003BA720, &qword_1003AD858);
      sub_10016E9D8(&unk_1003B06F0, 255, &type metadata accessor for Locale);
      v106 = v121;
      v107 = v122;
      Publisher<>.removeDuplicates()();
      (*(v127 + 8))(v105, v106);
      sub_10000A2CC(0, &qword_1003A9C40);
      v108 = static OS_dispatch_queue.main.getter();
      v134 = v108;
      v109 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v110 = v129;
      (*(*(v109 - 8) + 56))(v129, 1, 1, v109);
      sub_10001BAEC(&qword_1003B4130, &qword_1003B4100);
      sub_100051450();
      v111 = v123;
      v112 = v124;
      Publisher.receive<A>(on:options:)();
      sub_100009EBC(v110, &qword_1003B23F0);

      (*(v128 + 8))(v107, v111);
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_10001BAEC(&qword_1003B4138, &qword_1003B4108);
      v113 = v126;
      v114 = Publisher<>.sink(receiveValue:)();

      (*(v125 + 8))(v112, v113);
      *(&v102->isa + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_visualTranslationLocaleSubscription) = v114;

      sub_10016BD30();

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v115 = type metadata accessor for Logger();
  sub_1000078E8(v115, qword_1003D2758);
  v116 = Logger.logObject.getter();
  v117 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    *v118 = 0;
    _os_log_impl(&_mh_execute_header, v116, v117, "Unable to find data scanner view", v118, 2u);
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10016BA44()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Locale.languageIdentifier.getter();
  Locale.init(identifier:)();
  type metadata accessor for VisualTranslationService();
  v4 = static VisualTranslationService.isOCRLocale(_:)();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_delegate;
      v7 = Strong;
      v8 = swift_unknownObjectWeakLoadStrong();
      v9 = *(v6 + 8);

      if (v8)
      {
        ObjectType = swift_getObjectType();
        (*(*(v9 + 16) + 16))(2, ObjectType);
        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = swift_unknownObjectWeakLoadStrong();

      if (v13)
      {
        type metadata accessor for CameraPreviewView.Coordinator();
        sub_100165AA8();
        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      sub_100166908();
LABEL_18:
    }
  }

  else
  {
    swift_beginAccess();
    v16 = swift_unknownObjectWeakLoadStrong();
    if (v16)
    {
      v17 = v16 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_delegate;
      v18 = v16;
      v19 = swift_unknownObjectWeakLoadStrong();
      v20 = *(v17 + 8);

      if (v19)
      {
        v21 = swift_getObjectType();
        (*(*(v20 + 16) + 8))(2, 1, v21);
        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      v24 = swift_unknownObjectWeakLoadStrong();

      if (v24)
      {
        type metadata accessor for CameraPreviewView.Coordinator();
        sub_100165AA8();
        swift_unknownObjectRelease();
      }
    }

    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v15 = v25;
      sub_1001673BC();
      goto LABEL_18;
    }
  }
}

uint64_t sub_10016BD30()
{
  v1 = v0;
  v2 = sub_100005AD4(&qword_1003B23F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_100005AD4(&qword_1003B40E8);
  v14 = *(v5 - 8);
  v15 = v5;
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_availabilitySubscription;
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_availabilitySubscription))
  {

    AnyCancellable.cancel()();
  }

  v17 = sub_100199B00(*(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_conversation), *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_context));
  sub_10000A2CC(0, &qword_1003A9C40);
  v9 = static OS_dispatch_queue.main.getter();
  v16 = v9;
  v10 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_100005AD4(&unk_1003BA6E0);
  sub_10001BAEC(&qword_1003B40F0, &unk_1003BA6E0);
  sub_100051450();
  Publisher.receive<A>(on:options:)();
  sub_100009EBC(v4, &qword_1003B23F0);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10001BAEC(&qword_1003B40F8, &qword_1003B40E8);
  v11 = v15;
  v12 = Publisher<>.sink(receiveValue:)();

  (*(v14 + 8))(v7, v11);
  *(v1 + v8) = v12;
}

void sub_10016C040(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_availability] = v1;
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_100167638();
  }
}

id sub_10016C0C8()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_dataScannerVC;
  v2 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_dataScannerVC);
  if (v2)
  {
    v3 = v0;
    v4 = qword_1003A9218;
    v5 = v2;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000078E8(v6, qword_1003D2758);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Removing Scanner View", v9, 2u);
    }

    result = [v5 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v11 = result;
    v0 = v3;
    [result removeFromSuperview];

    [v5 removeFromParentViewController];
    v12 = *(v3 + v1);
    *(v3 + v1) = 0;
  }

  v13 = *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_translationBridge);
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_translationBridge) = 0;

  return sub_10016C240();
}

uint64_t sub_10016C240()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_availabilitySubscription;
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_availabilitySubscription))
  {

    AnyCancellable.cancel()();
  }

  *(v0 + v1) = 0;

  v2 = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_visualTranslationLocaleSubscription;
  if (*(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_visualTranslationLocaleSubscription))
  {

    AnyCancellable.cancel()();
  }

  *(v0 + v2) = 0;
}

uint64_t sub_10016C2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  type metadata accessor for MainActor();
  v4[9] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v6;
  v4[11] = v5;

  return _swift_task_switch(sub_10016C37C, v6, v5);
}

uint64_t sub_10016C37C()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_dataScannerVC;
  v3 = *(v1 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_dataScannerVC);
  if (v3 && (v4 = v3, dispatch thunk of DataScannerViewController.stopScanning()(), v4, v5 = *(v1 + v2), (v0[12] = v5) != 0))
  {
    v9 = (&async function pointer to dispatch thunk of DataScannerViewController.capturePhoto() + async function pointer to dispatch thunk of DataScannerViewController.capturePhoto());
    v5;
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_10016C4A0;

    return v9();
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_10016C4A0(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_10016CC78;
  }

  else
  {
    v4[14] = a1;
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_10016C5CC;
  }

  return _swift_task_switch(v7, v5, v6);
}

void sub_10016C5CC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = sub_10016CCE0(*(*(*(v0 + 64) + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_context) + OBJC_IVAR____TtC17SequoiaTranslator19ConversationContext_lastKnownInterfaceOrientation));

  v4 = [v2 view];
  if (!v4)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v5 = v4;
  [v4 frame];
  v7 = v6;

  v8 = *(v0 + 96);
  if (v7 <= 0.0)
  {
    [v3 size];
    v43 = v42;
    [v3 size];
    v45 = v44;
    v46 = [v8 view];
    v47 = v46;
    if (v43 >= v45)
    {
      if (!v46)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v90 = *(v0 + 96);
      [v46 frame];
      v92 = v91;
      v94 = v93;
      v96 = v95;
      v98 = v97;

      v154.origin.x = v92;
      v154.origin.y = v94;
      v154.size.width = v96;
      v154.size.height = v98;
      Height = CGRectGetHeight(v154);
      [v3 size];
      v101 = v100;
      [v3 size];
      v103 = v102;
      v104 = [v90 view];
      if (!v104)
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v105 = v104;
      v106 = *(v0 + 96);
      [v104 frame];
      v108 = v107;
      v110 = v109;
      v112 = v111;
      v114 = v113;

      v155.origin.x = v108;
      v155.origin.y = v110;
      v155.size.width = v112;
      v155.size.height = v114;
      Width = CGRectGetWidth(v155);
      v116 = [v106 view];
      if (!v116)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v117 = v116;
      v118 = *(v0 + 96);
      [v116 frame];
      v120 = v119;
      v122 = v121;
      v124 = v123;
      v126 = v125;

      v156.origin.x = v120;
      v156.origin.y = v122;
      v156.size.width = v124;
      v156.size.height = v126;
      v127 = CGRectGetWidth(v156);
      v86 = [v118 view];

      if (!v86)
      {
LABEL_39:
        __break(1u);
        return;
      }

      v87 = Height / v101;
      v37 = (v103 - Width / (Height / v101)) * 0.5;
      v38 = v127 / v87;
      [v86 frame];
      v89 = v128;
    }

    else
    {
      if (!v46)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v48 = *(v0 + 96);
      [v46 frame];
      v50 = v49;
      v52 = v51;
      v54 = v53;
      v56 = v55;

      v151.origin.x = v50;
      v151.origin.y = v52;
      v151.size.width = v54;
      v151.size.height = v56;
      v57 = CGRectGetWidth(v151);
      [v3 size];
      v59 = v58;
      [v3 size];
      v61 = v60;
      v62 = [v48 view];
      if (!v62)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v63 = v62;
      v64 = *(v0 + 96);
      [v62 frame];
      v66 = v65;
      v68 = v67;
      v70 = v69;
      v72 = v71;

      v152.origin.x = v66;
      v152.origin.y = v68;
      v152.size.width = v70;
      v152.size.height = v72;
      v73 = CGRectGetHeight(v152);
      v74 = [v64 view];
      if (!v74)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v75 = v74;
      v76 = *(v0 + 96);
      [v74 frame];
      v78 = v77;
      v80 = v79;
      v82 = v81;
      v84 = v83;

      v153.origin.x = v78;
      v153.origin.y = v80;
      v153.size.width = v82;
      v153.size.height = v84;
      v85 = CGRectGetHeight(v153);
      v86 = [v76 view];

      if (!v86)
      {
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v87 = v57 / v59;
      v37 = (v61 - v73 / (v57 / v59)) * 0.5;
      v38 = v85 / v87;
      [v86 frame];
      v89 = v88;
    }

    v41 = v89 / v87;
  }

  else
  {
    v9 = [*(v0 + 96) view];
    if (!v9)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v10 = v9;
    v11 = *(v0 + 96);
    [v9 frame];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v149.origin.x = v13;
    v149.origin.y = v15;
    v149.size.width = v17;
    v149.size.height = v19;
    v20 = CGRectGetHeight(v149);
    [v3 size];
    v22 = v21;
    v23 = [v11 view];
    if (!v23)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v24 = v23;
    v25 = *(v0 + 96);
    [v23 frame];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v150.origin.x = v27;
    v150.origin.y = v29;
    v150.size.width = v31;
    v150.size.height = v33;
    v34 = CGRectGetHeight(v150);
    v35 = [v25 view];

    if (!v35)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v36 = v20 / v22;
    v37 = v7 / (v36 + v36);
    v38 = (v34 - v7) / v36;
    [v35 frame];
    v40 = v39;

    v41 = v40 / v36;
  }

  v129 = 0;
  v130 = v37;
  v131 = v38;
  v157 = CGRectIntegral(*(&v41 - 3));
  x = v157.origin.x;
  y = v157.origin.y;
  v134 = v157.size.width;
  v135 = v157.size.height;
  v136 = [v3 CGImage];
  if (!v136)
  {
    goto LABEL_26;
  }

  v137 = v136;
  v158.origin.x = x;
  v158.origin.y = y;
  v158.size.width = v134;
  v158.size.height = v135;
  v138 = CGImageCreateWithImageInRect(v136, v158);

  if (!v138)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v139 = v138;
  v140 = [objc_allocWithZone(UIImage) initWithCGImage:v139 imageOrientation:{objc_msgSend(v3, "imageOrientation")}];

  if (!v140)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v147 = *(v0 + 96);
  v141 = *(v0 + 64);

  v142 = *(v141 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController__staticImage + 8);
  v143 = *(v141 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController__staticImage + 16);
  v144 = *(v141 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController__staticImage + 24);
  *(v0 + 16) = *(v141 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController__staticImage);
  *(v0 + 24) = v142;
  *(v0 + 32) = v143;
  *(v0 + 40) = v144;
  *(v0 + 48) = v140;
  *(v0 + 56) = 2;

  sub_10011C910(v143, v144);
  v145 = v140;
  sub_100005AD4(&qword_1003B12A0);
  Binding.wrappedValue.setter();

  sub_10011C8FC(v143, v144);
  v146 = *(v0 + 8);

  v146();
}

uint64_t sub_10016CC78()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

id sub_10016CCE0(uint64_t a1)
{
  v2 = v1;
  v11 = v2;
  v4 = [v2 CGImage];
  if (v4)
  {
    v5 = v4;
    v6 = [objc_opt_self() currentDevice];
    v7 = [v6 sf_isiPad];

    if (v7)
    {
      v8 = v11;
      if (a1 != 4)
      {
        if (a1 != 3)
        {
          if (a1 == 2)
          {
            result = [objc_allocWithZone(UIImage) initWithCGImage:v5 imageOrientation:2];
            if (!result)
            {
              __break(1u);
              goto LABEL_8;
            }

LABEL_13:
            v10 = result;

            return v10;
          }

LABEL_12:
          result = v8;
          goto LABEL_13;
        }

        result = [objc_allocWithZone(UIImage) initWithCGImage:v5 imageOrientation:0];
        if (result)
        {
          goto LABEL_13;
        }

        __break(1u);
      }

      result = [objc_allocWithZone(UIImage) initWithCGImage:v5 imageOrientation:1];
      if (!result)
      {
        __break(1u);
        return result;
      }

      goto LABEL_13;
    }

    v8 = v11;
    goto LABEL_12;
  }

LABEL_8:

  return v11;
}

uint64_t sub_10016CEB4()
{
  v1 = OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_noTextFoundTimer;
  [*(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_noTextFoundTimer) invalidate];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v5 + 16) + 16))(1, ObjectType);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10016CF58()
{
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10016CFF0, v3, v2);
}

uint64_t sub_10016CFF0()
{
  v1 = *(v0 + 16);

  v2 = v1 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 16) + 8))(1, 1, ObjectType);
    swift_unknownObjectRelease();
  }

  v5 = *(v0 + 16);
  v6 = *(v5 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_noTextFoundTimer);
  *(v5 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_noTextFoundTimer) = 0;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10016D0B8()
{
  v0 = sub_100005AD4(&qword_1003AA3B8);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    sub_10005E36C(0, 0, v2, &unk_1002E1D50, v6);
  }

  return result;
}

uint64_t sub_10016D1D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001B16C;

  return sub_10016CF58();
}

void sub_10016D268(double a1, double a2)
{
  v3 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_topConstraint];
  if (v3)
  {
    v4 = *&v2[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_heightConstraint];
    if (v4)
    {
      v7 = v4;
      v25 = v3;
      v8 = [v2 traitCollection];
      v9 = [v8 horizontalSizeClass];

      v10 = 0.0;
      v11 = 0.0;
      if (v9 == 1)
      {
        v12 = [v2 view];
        if (!v12)
        {
          __break(1u);
          return;
        }

        v13 = v12;
        v14 = a2 - a1;
        [v12 bounds];
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v22 = v21;

        v27.origin.x = v16;
        v27.origin.y = v18;
        v27.size.width = v20;
        v27.size.height = v22;
        v10 = -(CGRectGetHeight(v27) - v14);
        v11 = a1;
      }

      [v25 constant];
      if (v23 != v11)
      {
        [v25 setConstant:v11];
      }

      [v7 constant];
      if (v24 != v10)
      {
        [v7 setConstant:v10];
      }
    }
  }
}

uint64_t sub_10016D418()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = sub_100097D4C();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  v9 = [v7 oppositeToLocale:isa];

  if (v9)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100225618(0, 0, v6, v4);

    v10 = *(v1 + 8);
    v10(v4, v0);
    return (v10)(v6, v0);
  }

  else
  {
    if (qword_1003A9218 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000078E8(v12, qword_1003D2758);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Unable to get source and target locales for SELF logging for live image translation", v15, 2u);
    }

    return (*(v1 + 8))(v6, v0);
  }
}

id sub_10016D6B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CameraPreviewViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_10016D8C0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_10016D904(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10016D94C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
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
      *(result + 240) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10016D9E4(void *a1)
{
  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000078E8(v2, qword_1003D2758);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = dispatch thunk of DataScannerViewController.hasTorch.getter() & 1;

    _os_log_impl(&_mh_execute_header, v4, v5, "DataScanner thinks it has torch: %{BOOL}d", v6, 8u);
  }

  else
  {

    v4 = v3;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = dispatch thunk of DataScannerViewController.hasTorch.getter();
    sub_1001651A8(v7 & 1);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = dispatch thunk of DataScannerViewController.isTorchOn.getter();
    sub_1001652E4(v9 & 1);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10016DB90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v35 = type metadata accessor for CameraPreviewViewController();
  v19 = objc_allocWithZone(v35);
  *&v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_delegate + 8] = 0;
  v20 = swift_unknownObjectWeakInit();
  *&v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_dataScannerVC] = 0;
  *&v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_translationBridge] = 0;
  v21 = &v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_contextObserver];
  *v21 = 0u;
  v21[1] = 0u;
  *&v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_observationTasks] = &_swiftEmptySetSingleton;
  v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_availability] = 0;
  *&v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_availabilitySubscription] = 0;
  *&v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_noTextFoundTimer] = 0;
  *&v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_visualTranslationLocaleSubscription] = 0;
  *&v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_topReflectionView] = 0;
  *&v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_bottomReflectionView] = 0;
  *&v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_topConstraint] = 0;
  *&v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_heightConstraint] = 0;
  *&v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_launchPrerequisitesDebounceTimer] = 0;
  *&v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_eventInteraction] = 0;
  *&v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_conversation] = a1;
  *&v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_context] = a2;
  v22 = &v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController__staticImage];
  *v22 = a3;
  *(v22 + 1) = a4;
  *(v22 + 2) = a5;
  v22[24] = a6;
  v23 = &v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController__viewportHasText];
  *v23 = a7;
  *(v23 + 1) = a8;
  v23[16] = a9;
  *(v20 + 8) = &off_1003864E8;
  swift_unknownObjectWeakAssign();

  v34 = a1;

  sub_10011C910(a5, a6);

  *&v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_selfLoggingInvocation] = a11;
  type metadata accessor for ChromeBar();
  v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v25 = [v24 init];
  *&v19[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_materialView] = v25;
  v36.receiver = v19;
  v36.super_class = v35;
  v26 = objc_msgSendSuper2(&v36, "initWithNibName:bundle:", 0, 0);
  v27 = qword_1003A9218;
  v28 = v26;
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Logger();
  sub_1000078E8(v29, qword_1003D2758);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "initializing CameraPreviewViewController", v32, 2u);
  }

  sub_10016BD30();

  sub_10011C8FC(a5, a6);

  return v28;
}

uint64_t sub_10016DF28()
{
  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000078E8(v0, qword_1003D2758);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Dismantling CameraPreviewViewController, clearing guidance but allowing other code to turn off the flashlight if needed", v3, 2u);
  }

  return sub_10016C240();
}

void sub_10016E00C()
{
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_dataScannerVC) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_translationBridge) = 0;
  v1 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_contextObserver);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_observationTasks) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_availability) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_availabilitySubscription) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_noTextFoundTimer) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_visualTranslationLocaleSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_topReflectionView) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_bottomReflectionView) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_topConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_heightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_launchPrerequisitesDebounceTimer) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_eventInteraction) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10016E138()
{
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_dataScannerVC) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_translationBridge) = 0;
  v1 = (v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_contextObserver);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_observationTasks) = &_swiftEmptySetSingleton;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_availability) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_availabilitySubscription) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_noTextFoundTimer) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_visualTranslationLocaleSubscription) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_topReflectionView) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_bottomReflectionView) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_topConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_heightConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_launchPrerequisitesDebounceTimer) = 0;
  *(v0 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_eventInteraction) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10016E264()
{
  v3 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v0 action:"debugTapInteractionWithRecognizer:"];
  [v3 setNumberOfTouchesRequired:2];
  [v3 setNumberOfTapsRequired:3];
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 addGestureRecognizer:v3];

    sub_10016A9A4();
    sub_100167638();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10016E32C()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for CameraPreviewViewController();
  objc_msgSendSuper2(&v5, "viewWillDisappear:", 1);
  sub_1001673BC();
  sub_10016C0C8();
  v1 = &v0[OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    (*(*(v2 + 16) + 24))(ObjectType);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1001652E4(0);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10016E3E0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DataScannerViewController.ScanningUnavailable();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003A9218 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000078E8(v8, qword_1003D2758);
  v9 = *(v5 + 16);
  v9(v7, a1, v4);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18[1] = v2;
    v14 = v13;
    *v12 = 138412290;
    sub_10016E9D8(&qword_1003B40B8, 255, &type metadata accessor for DataScannerViewController.ScanningUnavailable);
    swift_allocError();
    v9(v15, v7, v4);
    v16 = _convertErrorToNSError(_:)();
    (*(v5 + 8))(v7, v4);

    *(v12 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "DataScanner became unavailable: %@", v12, 0xCu);
    sub_100009EBC(v14, &unk_1003AECA0);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  sub_1001673BC();
  return sub_10016C0C8();
}

uint64_t sub_10016E68C(uint64_t a1)
{
  v3 = type metadata accessor for DataScannerViewController.SceneStabilityState();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  result = sub_100003688();
  if (!result)
  {
    return result;
  }

  v27 = &type metadata for TranslateFeatures;
  v28 = sub_100009DF8();
  v26[0] = 1;
  v8 = isFeatureEnabled(_:)();
  result = sub_100008664(v26);
  if ((v8 & 1) == 0)
  {
    return result;
  }

  v27 = &type metadata for VisualIntelligenceFeatures;
  v28 = sub_10016E94C();
  v9 = isFeatureEnabled(_:)();
  result = sub_100008664(v26);
  if ((v9 & 1) == 0)
  {
    return result;
  }

  (*(v4 + 16))(v6, a1, v3);
  v10 = (*(v4 + 88))(v6, v3);
  if (v10 == enum case for DataScannerViewController.SceneStabilityState.unknown(_:) || v10 == enum case for DataScannerViewController.SceneStabilityState.low(_:))
  {
    UIViewController.contentUnavailableConfiguration.getter();
    v12 = v27;
    result = sub_100009EBC(v26, &qword_1003B40C8);
    if (v12)
    {
      return result;
    }

    v13 = v1 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v14 = *(v13 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v14 + 16) + 8))(0, 1, ObjectType);
    return swift_unknownObjectRelease();
  }

  v16 = v10;
  v17 = enum case for DataScannerViewController.SceneStabilityState.medium(_:);
  v18 = enum case for DataScannerViewController.SceneStabilityState.high(_:);
  v19 = v1 + OBJC_IVAR____TtC17SequoiaTranslator27CameraPreviewViewController_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (v16 == v17 || v16 == v18)
  {
    if (!result)
    {
      return result;
    }

    v21 = *(v19 + 8);
    v22 = swift_getObjectType();
    (*(*(v21 + 16) + 16))(0, v22);
    return swift_unknownObjectRelease();
  }

  if (result)
  {
    v23 = *(v19 + 8);
    v24 = swift_getObjectType();
    (*(*(v23 + 16) + 16))(0, v24);
    swift_unknownObjectRelease();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_10016E94C()
{
  result = qword_1003B40C0;
  if (!qword_1003B40C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B40C0);
  }

  return result;
}

uint64_t sub_10016E9D8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_10016EA20()
{
  result = qword_1003B40E0;
  if (!qword_1003B40E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003B40E0);
  }

  return result;
}

uint64_t sub_10016EA7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10016EAC4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10016EB0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001B558;

  return sub_100169AE8(a1, v4, v5, v7, v6);
}

uint64_t sub_10016EBCC(uint64_t a1)
{
  v2 = type metadata accessor for SELFLoggingInvocationWrapper.Parameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10016EC30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10016EC48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001B558;

  return sub_10016D1D8();
}

uint64_t sub_10016ED0C()
{
  v1 = type metadata accessor for LocalePair();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10016EDD8(uint64_t a1)
{
  v4 = *(type metadata accessor for LocalePair() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001B558;

  return sub_1001682C4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_10016EF0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&unk_1003BA690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016EF7C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10016EFC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10001B558;

  return sub_100169304(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10016F0AC(void (*a1)(void))
{
  a1(*(v1 + 16));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10016F0F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_100167B00(a1, v4, v5, v6);
}

uint64_t sub_10016F1A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005AD4(&unk_1003AB9C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016F224(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B558;

  return sub_10016C2E4(a1, v4, v5, v6);
}

uint64_t sub_10016F320()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10016F358(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001B16C;

  return sub_100165838(a1, v4, v5, v6);
}

uint64_t sub_10016F454(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for SpeakButtonConfiguration();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10016F514(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SpeakButtonConfiguration();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for LocalePairSpeakButtons()
{
  result = qword_1003B41E8;
  if (!qword_1003B41E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10016F604()
{
  sub_10016F768(319, &unk_1003AA478, &type metadata for AudioDevice, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for SpeakButtonConfiguration();
    if (v1 <= 0x3F)
    {
      sub_1001312D0();
      if (v2 <= 0x3F)
      {
        sub_10016F768(319, &qword_1003AA470, &type metadata for AudioDevice, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10016F768(319, &qword_1003AE538, &type metadata for CGFloat, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10016F768(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10016F7D4()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for LocalePairSpeakButtons() + 56));
  v6 = *v5;
  v21[1] = v5[1];
  v21[2] = v6;
  sub_100005AD4(&qword_1003A9AB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002D1370;
  type metadata accessor for SpeakButtonConfiguration();
  static Locale.current.getter();
  v8 = Locale.sqDisplayName(context:in:)();
  v10 = v9;
  v11 = v2 + 8;
  v12 = *(v2 + 8);
  v21[0] = v11;
  v12(v4, v1);
  if (!v10)
  {
    v8 = 0x4E574F4E4B4E55;
    v10 = 0xE700000000000000;
  }

  *(v7 + 56) = &type metadata for String;
  v13 = sub_100031CD0();
  *(v7 + 64) = v13;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  static Locale.current.getter();
  v14 = Locale.sqDisplayName(context:in:)();
  v16 = v15;
  v12(v4, v1);
  v17 = 0x4E574F4E4B4E55;
  if (v16)
  {
    v17 = v14;
  }

  v18 = 0xE700000000000000;
  if (v16)
  {
    v18 = v16;
  }

  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v13;
  *(v7 + 72) = v17;
  *(v7 + 80) = v18;
  v21[4] = String.init(format:_:)();
  v21[5] = v19;
  sub_10001F278();
  return Text.init<A>(_:)();
}

uint64_t sub_10016FA10()
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for LocalePairSpeakButtons() + 56));
  v6 = *v5;
  v21[1] = v5[1];
  v21[2] = v6;
  sub_100005AD4(&qword_1003A9AB0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1002D1370;
  type metadata accessor for SpeakButtonConfiguration();
  static Locale.current.getter();
  v8 = Locale.sqDisplayName(context:in:)();
  v10 = v9;
  v11 = v2 + 8;
  v12 = *(v2 + 8);
  v21[0] = v11;
  v12(v4, v1);
  if (!v10)
  {
    v8 = 0x4E574F4E4B4E55;
    v10 = 0xE700000000000000;
  }

  *(v7 + 56) = &type metadata for String;
  v13 = sub_100031CD0();
  *(v7 + 64) = v13;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  static Locale.current.getter();
  v14 = Locale.sqDisplayName(context:in:)();
  v16 = v15;
  v12(v4, v1);
  v17 = 0x4E574F4E4B4E55;
  if (v16)
  {
    v17 = v14;
  }

  v18 = 0xE700000000000000;
  if (v16)
  {
    v18 = v16;
  }

  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = v13;
  *(v7 + 72) = v17;
  *(v7 + 80) = v18;
  v21[4] = String.init(format:_:)();
  v21[5] = v19;
  sub_10001F278();
  return Text.init<A>(_:)();
}