uint64_t sub_1002F5784@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for BorderedProminentButtonStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008E7660);
  __chkstk_darwin(v7);
  v9 = &v37[-1] - v8;
  v10 = sub_100140278(&qword_1008E7650);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37[-1] - v12;
  v14 = swift_allocObject();
  v15 = *(v2 + 80);
  *(v14 + 80) = *(v2 + 64);
  *(v14 + 96) = v15;
  *(v14 + 112) = *(v2 + 96);
  v16 = *(v2 + 16);
  *(v14 + 16) = *v2;
  *(v14 + 32) = v16;
  v17 = *(v2 + 48);
  *(v14 + 48) = *(v2 + 32);
  *(v14 + 64) = v17;
  sub_1002F769C(v2, v37);
  sub_100140278(&qword_1008DC530);
  sub_100065FB4();
  Button.init(action:label:)();
  v18 = [objc_opt_self() as_competitionGraphBackgroundGold];
  v19 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  v37[0] = v19;
  v21 = AnyShapeStyle.init<A>(_:)();
  v22 = &v9[*(v7 + 36)];
  *v22 = KeyPath;
  v22[1] = v21;
  BorderedProminentButtonStyle.init()();
  v23 = sub_1002F7448();
  v24 = sub_1002F72DC();
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v3);
  sub_10000EA04(v9, &qword_1008E7660);
  Solarium.init()();
  sub_100140278(&qword_1008E7658);
  v37[0] = v7;
  v37[1] = v3;
  v37[2] = v23;
  v37[3] = v24;
  swift_getOpaqueTypeConformance2();
  sub_1002F752C();
  v25 = v36;
  View.staticIf<A, B>(_:then:)();
  (*(v11 + 8))(v13, v10);
  LOBYTE(v9) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  result = sub_100140278(&qword_1008E75E0);
  v35 = v25 + *(result + 36);
  *v35 = v9;
  *(v35 + 8) = v27;
  *(v35 + 16) = v29;
  *(v35 + 24) = v31;
  *(v35 + 32) = v33;
  *(v35 + 40) = 0;
  return result;
}

id sub_1002F5B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  __chkstk_darwin(v41);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008E7698);
  __chkstk_darwin(v7 - 8);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  __chkstk_darwin(v12);
  v43 = &v41 - v13;
  v14 = ActivitySharingBundle();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 localizedStringForKey:v15 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1006D46C0;
  v42 = a1;
  result = [*(a1 + 40) displayName];
  if (result)
  {
    v19 = result;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    *(v17 + 56) = &type metadata for String;
    *(v17 + 64) = sub_10000A788();
    *(v17 + 32) = v20;
    *(v17 + 40) = v22;
    v23 = String.init(format:_:)();
    v25 = v24;

    v45 = v23;
    v46 = v25;
    sub_10000FCBC();
    v26 = Text.init<A>(_:)();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    ASCompetitionVictoryStyleForBadge();
    UUID.init()();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v4 + 8))(v6, v41);
    v34 = ASEphemeralCompetitionVictoryAchievementForStyle();

    if ([*(v42 + 96) thumbnailImageForAchievement:v34 size:{52.0, 52.0}])
    {
      v35 = Image.init(uiImage:)();

      v45 = v35;
      View.accessibilityHidden(_:)();

      v36 = 0;
    }

    else
    {

      v36 = 1;
    }

    v37 = sub_100140278(&qword_1008E76A0);
    (*(*(v37 - 8) + 56))(v11, v36, 1, v37);
    v38 = v43;
    sub_100015E80(v11, v43, &qword_1008E7698);
    v39 = v44;
    sub_10001B104(v38, v44, &qword_1008E7698);
    *a2 = v26;
    *(a2 + 8) = v28;
    *(a2 + 16) = v30 & 1;
    *(a2 + 24) = v32;
    v40 = sub_100140278(&qword_1008E76A8);
    sub_10001B104(v39, a2 + *(v40 + 48), &qword_1008E7698);
    sub_10006965C(v26, v28, v30 & 1);

    sub_10000EA04(v38, &qword_1008E7698);
    sub_10000EA04(v39, &qword_1008E7698);
    sub_10004642C(v26, v28, v30 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002F6008()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1001D0380;

  return sub_10052E860();
}

__n128 sub_1002F60B4@<Q0>(uint64_t a1@<X8>)
{
  v2 = ActivitySharingBundle();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *&v21 = v5;
  *(&v21 + 1) = v7;
  sub_10000FCBC();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  if (qword_1008DA8E0 != -1)
  {
    swift_once();
  }

  v13 = Text.font(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_10004642C(v8, v10, v12 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  *(a1 + 96) = v25;
  *(a1 + 112) = v26;
  *(a1 + 128) = v27;
  *(a1 + 32) = v21;
  *(a1 + 48) = v22;
  result = v24;
  *(a1 + 64) = v23;
  *(a1 + 80) = v24;
  return result;
}

uint64_t sub_1002F6288(uint64_t a1)
{
  v1[19] = a1;
  v1[20] = type metadata accessor for MainActor();
  v1[21] = static MainActor.shared.getter();
  v1[22] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002F6330, v3, v2);
}

uint64_t sub_1002F6330()
{
  v1 = *(v0 + 152);

  v2 = swift_allocObject();
  v3 = *(v1 + 16);
  v2[1] = *v1;
  v2[2] = v3;
  v5 = *(v1 + 48);
  v4 = *(v1 + 64);
  v6 = *(v1 + 32);
  *(v2 + 89) = *(v1 + 73);
  v2[4] = v5;
  v2[5] = v4;
  v2[3] = v6;
  v7 = swift_allocObject();
  v8 = *(v1 + 16);
  *(v7 + 16) = *v1;
  *(v7 + 32) = v8;
  v9 = *(v1 + 32);
  v10 = *(v1 + 48);
  v11 = *(v1 + 64);
  *(v7 + 89) = *(v1 + 73);
  *(v7 + 64) = v10;
  *(v7 + 80) = v11;
  *(v7 + 48) = v9;
  *(v7 + 112) = &unk_1006E7CE0;
  *(v7 + 120) = v2;
  v12 = *(v1 + 40);
  v13 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 112) = v12;
  *(v0 + 120) = v13;
  *(v0 + 128) = &unk_1006E7CE8;
  *(v0 + 136) = v7;
  *(v0 + 144) = 12;
  sub_1002F7A50(v1, v0 + 16);
  sub_1002F7A50(v1, v0 + 16);
  v14 = v12;

  static Published.subscript.setter();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002F64E8, v16, v15);
}

uint64_t sub_1002F64E8()
{

  v1 = *(v0 + 8);

  return v1();
}

int *sub_1002F6548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = sub_100140278(&qword_1008E76E0);
  __chkstk_darwin(v3 - 8);
  v54 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v51[-v6];
  v8 = sub_100140278(&qword_1008E76D8);
  __chkstk_darwin(v8 - 8);
  v10 = &v51[-v9];
  v55 = sub_100140278(&qword_1008E76C8);
  __chkstk_darwin(v55);
  v56 = &v51[-v11];
  v12 = Image.init(systemName:)();
  if (qword_1008DA8E8 != -1)
  {
    swift_once();
  }

  v13 = qword_1008E75D0;
  v14 = objc_opt_self();

  v15 = [v14 mainBundle];
  v16 = String._bridgeToObjectiveC()();
  v17 = [v15 localizedStringForKey:v16 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1006D46C0;
  result = [*(a1 + 40) displayName];
  if (result)
  {
    v20 = result;
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_10000A788();
    *(v18 + 32) = v21;
    *(v18 + 40) = v23;
    v24 = String.init(format:_:)();
    v26 = v25;

    *&v58 = v24;
    *(&v58 + 1) = v26;
    sub_10000FCBC();
    v27 = Text.init<A>(_:)();
    v29 = v28;
    v52 = v30;
    v32 = v31;

    *v10 = static VerticalAlignment.center.getter();
    *(v10 + 1) = 0x4008000000000000;
    v10[16] = 0;
    v33 = *(sub_100140278(&qword_1008E76E8) + 44);
    v34 = v10;
    v35 = v13;
    v36 = v12;
    v53 = v34;
    v37 = v34 + v33;
    *&v58 = v36;
    *(&v58 + 1) = v35;
    sub_100140278(&qword_1008E76F0);
    sub_1002F7844();
    View.accessibilityHidden(_:)();
    v38 = v54;
    sub_10001B104(v7, v54, &qword_1008E76E0);
    sub_10001B104(v38, v37, &qword_1008E76E0);
    v39 = v37 + *(sub_100140278(&qword_1008E7700) + 48);
    *v39 = v27;
    *(v39 + 8) = v29;
    v40 = v52;
    v41 = v52 & 1;
    *(v39 + 16) = v52 & 1;
    *(v39 + 24) = v32;
    sub_10006965C(v27, v29, v40 & 1);

    sub_10006965C(v27, v29, v41);

    sub_10000EA04(v7, &qword_1008E76E0);
    sub_10004642C(v27, v29, v41);

    sub_10000EA04(v38, &qword_1008E76E0);

    if (qword_1008DA8E0 != -1)
    {
      swift_once();
    }

    v42 = qword_1008E75C8;
    KeyPath = swift_getKeyPath();
    v44 = v56;
    sub_100015E80(v53, v56, &qword_1008E76D8);
    v45 = &v44[*(v55 + 36)];
    *v45 = KeyPath;
    v45[1] = v42;

    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_10004642C(v27, v29, v41);

    v46 = v57;
    sub_100015E80(v44, v57, &qword_1008E76C8);
    result = sub_100140278(&qword_1008E76B0);
    v47 = (v46 + result[9]);
    v48 = v63;
    v47[4] = v62;
    v47[5] = v48;
    v47[6] = v64;
    v49 = v59;
    *v47 = v58;
    v47[1] = v49;
    v50 = v61;
    v47[2] = v60;
    v47[3] = v50;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002F6B64(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v8 - 8);
  v10 = &v19[-v9];
  v11 = a1[3];
  v20[2] = a1[2];
  v20[3] = v11;
  v21[0] = a1[4];
  *(v21 + 9) = *(a1 + 73);
  v12 = a1[1];
  v20[0] = *a1;
  v20[1] = v12;
  v13 = swift_allocObject();
  v14 = a1[3];
  v13[3] = a1[2];
  v13[4] = v14;
  v13[5] = a1[4];
  *(v13 + 89) = *(a1 + 73);
  v15 = a1[1];
  v13[1] = *a1;
  v13[2] = v15;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a4;
  v17[5] = v13;
  sub_1002F7A50(v20, v19);
  sub_10026E198(0, 0, v10, a5, v17);
}

uint64_t sub_1002F6CD8(uint64_t a1)
{
  v1[7] = a1;
  v1[8] = type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v1[10] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002F6D80, v3, v2);
}

uint64_t sub_1002F6D80()
{
  v1 = *(v0 + 56);

  v2 = *(v1 + 40);
  v3 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = v2;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = v3;
  *(v0 + 48) = 0;
  v4 = v2;

  static Published.subscript.setter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002F6E7C, v6, v5);
}

uint64_t sub_1002F6E7C()
{

  v1 = *(v0 + 8);

  return v1();
}

__n128 sub_1002F6EDC@<Q0>(uint64_t a1@<X8>)
{
  v2 = ActivitySharingBundle();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  *&v21 = v5;
  *(&v21 + 1) = v7;
  sub_10000FCBC();
  v8 = Text.init<A>(_:)();
  v10 = v9;
  v12 = v11;
  if (qword_1008DA8E0 != -1)
  {
    swift_once();
  }

  v13 = Text.font(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_10004642C(v8, v10, v12 & 1);

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *a1 = v13;
  *(a1 + 8) = v15;
  *(a1 + 16) = v17 & 1;
  *(a1 + 24) = v19;
  *(a1 + 96) = v25;
  *(a1 + 112) = v26;
  *(a1 + 128) = v27;
  *(a1 + 32) = v21;
  *(a1 + 48) = v22;
  result = v24;
  *(a1 + 64) = v23;
  *(a1 + 80) = v24;
  return result;
}

uint64_t sub_1002F70B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v7 = (a4 + *(sub_100140278(a2) + 36));
  sub_100140278(&qword_1008DC568);
  static ButtonBorderShape.capsule.getter();
  *v7 = swift_getKeyPath();
  v8 = sub_100140278(a3);
  v9 = *(*(v8 - 8) + 16);

  return v9(a4, a1, v8);
}

uint64_t sub_1002F717C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v8[4] = *(v1 + 64);
  v8[5] = v3;
  v9 = *(v1 + 96);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  v5 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v5;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = sub_100140278(&qword_1008E75D8);
  return sub_1002F4488(v8, a1 + *(v6 + 44));
}

unint64_t sub_1002F71F8()
{
  result = qword_1008E7630;
  if (!qword_1008E7630)
  {
    sub_100141EEC(&qword_1008E7628);
    sub_10014A6B0(&qword_1008E7638, &qword_1008E7640);
    sub_10014A6B0(&qword_1008E2BB8, &qword_1008E2BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7630);
  }

  return result;
}

unint64_t sub_1002F72DC()
{
  result = qword_1008DC548;
  if (!qword_1008DC548)
  {
    type metadata accessor for BorderedProminentButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008DC548);
  }

  return result;
}

unint64_t sub_1002F7334()
{
  result = qword_1008E7648;
  if (!qword_1008E7648)
  {
    sub_100141EEC(&qword_1008E7620);
    sub_100141EEC(&qword_1008E7628);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_1002F71F8();
    sub_1002F72DC();
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008DC560, &qword_1008DC568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7648);
  }

  return result;
}

unint64_t sub_1002F7448()
{
  result = qword_1008E7668;
  if (!qword_1008E7668)
  {
    sub_100141EEC(&qword_1008E7660);
    sub_10014A6B0(&qword_1008DC540, &qword_1008DC520);
    sub_10014A6B0(&qword_1008E2BB8, &qword_1008E2BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7668);
  }

  return result;
}

unint64_t sub_1002F752C()
{
  result = qword_1008E7670;
  if (!qword_1008E7670)
  {
    sub_100141EEC(&qword_1008E7658);
    sub_100141EEC(&qword_1008E7660);
    type metadata accessor for BorderedProminentButtonStyle();
    sub_1002F7448();
    sub_1002F72DC();
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008DC560, &qword_1008DC568);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7670);
  }

  return result;
}

unint64_t sub_1002F76D4()
{
  result = qword_1008E76B8;
  if (!qword_1008E76B8)
  {
    sub_100141EEC(&qword_1008E76B0);
    sub_1002F7760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E76B8);
  }

  return result;
}

unint64_t sub_1002F7760()
{
  result = qword_1008E76C0;
  if (!qword_1008E76C0)
  {
    sub_100141EEC(&qword_1008E76C8);
    sub_10014A6B0(&qword_1008E76D0, &qword_1008E76D8);
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E76C0);
  }

  return result;
}

unint64_t sub_1002F7844()
{
  result = qword_1008E76F8;
  if (!qword_1008E76F8)
  {
    sub_100141EEC(&qword_1008E76F0);
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E76F8);
  }

  return result;
}

uint64_t sub_1002F78FC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002BBC0;

  return sub_1002F6288(v0 + 16);
}

uint64_t sub_1002F7990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BBC0;

  return sub_1005D7B38(a1, v4, v5, v6);
}

uint64_t sub_1002F7AAC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002BBC0;

  return sub_10052F82C(v0 + 16);
}

uint64_t sub_1002F7B40()
{
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10002BBC0;

  return sub_1005301C0(v0 + 16, v2, v3);
}

uint64_t sub_1002F7C3C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_10002BBC0;

  return sub_1002F6CD8(v0 + 16);
}

uint64_t sub_1002F7CD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002BACC;

  return sub_1005D7B38(a1, v4, v5, v6);
}

uint64_t sub_1002F7DE4()
{

  return _swift_deallocObject(v0, 105, 7);
}

uint64_t sub_1002F7E54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002BBC0;

  return sub_1002F6008();
}

unint64_t sub_1002F7EF0()
{
  result = qword_1008E7718;
  if (!qword_1008E7718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7718);
  }

  return result;
}

uint64_t sub_1002F7F48()
{
  v0 = type metadata accessor for LocalizedStringResource();
  sub_100163368(v0, qword_100925600);
  sub_10001AC90(v0, qword_100925600);
  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t sub_1002F7FE0@<X0>(void *a1@<X8>)
{
  result = IntentParameter.wrappedValue.getter();
  *a1 = v3;
  return result;
}

void sub_1002F801C(id *a1)
{
  v1 = *a1;
  IntentParameter.wrappedValue.setter();
}

void (*sub_1002F8060(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_100162378;
}

unint64_t sub_1002F80D4()
{
  result = qword_1008E7720;
  if (!qword_1008E7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7720);
  }

  return result;
}

uint64_t sub_1002F8128(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002F87D0();
  v5 = sub_10028B0E4();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1002F8194()
{
  result = qword_1008E7728;
  if (!qword_1008E7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7728);
  }

  return result;
}

unint64_t sub_1002F81EC()
{
  result = qword_1008E7730;
  if (!qword_1008E7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7730);
  }

  return result;
}

uint64_t sub_1002F8290@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DA8F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10001AC90(v2, qword_100925600);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1002F8338(uint64_t a1)
{
  v2 = sub_1002F87D0();

  return static OpenIntent.openAppWhenRun.getter(a1, v2);
}

uint64_t sub_1002F8374(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_1002F87D0();
  v6 = sub_1002F8824();
  v7 = sub_10028B0E4();
  *v4 = v2;
  v4[1] = sub_1001628E8;

  return URLRepresentableIntent<>.perform()(a2, v5, v6, v7);
}

uint64_t sub_1002F8440@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1002F84B4();
  *a1 = result;
  return result;
}

uint64_t sub_1002F8468(uint64_t a1)
{
  v2 = sub_1002F80D4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1002F84B4()
{
  v17[0] = type metadata accessor for InputConnectionBehavior();
  v0 = *(v17[0] - 8);
  __chkstk_darwin(v17[0]);
  v2 = v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100140278(&qword_1008DD130);
  __chkstk_darwin(v3 - 8);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v17 - v7;
  v9 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v9 - 8);
  v11 = v17 - v10;
  v12 = type metadata accessor for LocalizedStringResource();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  sub_100140278(&qword_1008E7738);
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  (*(v13 + 56))(v11, 0, 1, v12);
  v17[1] = 0;
  v14 = type metadata accessor for IntentDialog();
  v15 = *(*(v14 - 8) + 56);
  v15(v8, 1, 1, v14);
  v15(v5, 1, 1, v14);
  (*(v0 + 104))(v2, enum case for InputConnectionBehavior.default(_:), v17[0]);
  sub_10028A8D4();
  return IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

unint64_t sub_1002F87D0()
{
  result = qword_1008E7740;
  if (!qword_1008E7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7740);
  }

  return result;
}

unint64_t sub_1002F8824()
{
  result = qword_1008E7748;
  if (!qword_1008E7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7748);
  }

  return result;
}

void sub_1002F88A4()
{
  type metadata accessor for QuickStartWorkoutCard();
  if (v0 <= 0x3F)
  {
    sub_10005C6EC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1002F8944@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  started = type metadata accessor for QuickStartWorkoutControlType();
  v59 = *(started - 8);
  v60 = started;
  __chkstk_darwin(started);
  v61 = (&v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for QuickStartWorkoutViewStyle();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v58 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for QuickStartWorkoutViewConfiguration();
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v55 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for QuickStartWorkoutFullSizeView();
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100140278(&qword_1008E77E0);
  KeyPath = *(v9 - 8);
  v63 = v9;
  __chkstk_darwin(v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v51 = &v49 - v13;
  v66 = sub_100140278(&qword_1008E77E8);
  __chkstk_darwin(v66);
  v15 = &v49 - v14;
  v65 = sub_100140278(&qword_1008E77F0);
  __chkstk_darwin(v65);
  v17 = &v49 - v16;
  v18 = type metadata accessor for QuickStartWorkoutCardView();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v49 - v23;
  v64 = sub_100140278(&qword_1008E77F8);
  __chkstk_darwin(v64);
  v26 = &v49 - v25;
  v27 = type metadata accessor for QuickStartWorkoutCard();
  if (*(v1 + v27[6]) != 1)
  {
    static QuickStartWorkoutConstants.numberOfColumns.getter();
    v39 = *(v1 + v27[8]);
    if (*(v39 + 16))
    {
      (*(v49 + 16))(v55, v39 + ((*(v49 + 80) + 32) & ~*(v49 + 80)), v50);
      (*(v52 + 104))(v58, enum case for QuickStartWorkoutViewStyle.fullSize(_:), v53);
      sub_1002F9AC0(v1, v21);
      v40 = *(v19 + 80);
      v53 = v1;
      v41 = (v40 + 16) & ~v40;
      v42 = swift_allocObject();
      sub_1002F9B24(v21, v42 + v41);
      v43 = v60;
      v44 = v61;
      *v61 = sub_1002FA1E8;
      v44[1] = v42;
      (*(v59 + 104))(v44, enum case for QuickStartWorkoutControlType.button(_:), v43);
      static Solarium.isEnabled.getter();
      v45 = v54;
      QuickStartWorkoutFullSizeView.init(configuration:viewStyle:controlType:containerPadding:cornerRadius:)();
      LOBYTE(v42) = *(v53 + v27[7]);
      (*(v56 + 32))(v11, v45, v57);
      v46 = v63;
      v11[*(v63 + 9)] = (v42 & 1) == 0;
      v47 = v11;
      v48 = v51;
      sub_100015E80(v47, v51, &qword_1008E77E0);
      sub_100015E80(v48, v15, &qword_1008E77E0);
      (*(KeyPath + 56))(v15, 0, 1, v46);
    }

    else
    {
      (*(KeyPath + 56))(v15, 1, 1, v63);
    }

    sub_10001B104(v15, v17, &qword_1008E77E8);
    swift_storeEnumTagMultiPayload();
    sub_1002F9C08();
    sub_1002F9D4C();
    _ConditionalContent<>.init(storage:)();
    v37 = v15;
    v38 = &qword_1008E77E8;
    return sub_10000EA04(v37, v38);
  }

  v63 = v17;
  static QuickStartWorkoutConstants.gridSpacing.getter();
  v29 = v28;
  static QuickStartWorkoutConstants.gridSpacing.getter();
  v31 = v30;
  *v26 = static Alignment.center.getter();
  *(v26 + 1) = v32;
  *(v26 + 2) = v29;
  v26[24] = 0;
  *(v26 + 4) = v31;
  v26[40] = 0;
  sub_100140278(&qword_1008E7800);
  result = static QuickStartWorkoutConstants.numberOfRows.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    v68 = 0;
    v69 = result;
    KeyPath = swift_getKeyPath();
    sub_1002F9AC0(v1, v24);
    v34 = (*(v19 + 80) + 16) & ~*(v19 + 80);
    v35 = swift_allocObject();
    sub_1002F9B24(v24, v35 + v34);
    sub_100140278(&qword_1008DE078);
    sub_100140278(&qword_1008E7808);
    sub_100182FB4();
    sub_10014A6B0(&qword_1008E7810, &qword_1008E7808);
    ForEach<>.init(_:id:content:)();
    *&v26[*(sub_100140278(&qword_1008E7818) + 36)] = 256;
    v36 = v63;
    v26[*(v64 + 36)] = (*(v1 + v27[7]) & 1) == 0;
    sub_10001B104(v26, v36, &qword_1008E77F8);
    swift_storeEnumTagMultiPayload();
    sub_1002F9C08();
    sub_1002F9D4C();
    _ConditionalContent<>.init(storage:)();
    v37 = v26;
    v38 = &qword_1008E77F8;
    return sub_10000EA04(v37, v38);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002F9204@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  started = type metadata accessor for QuickStartWorkoutCardView();
  v7 = *(started - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(started - 8);
  v9 = *a1;
  *a3 = 0;
  *(a3 + 8) = 1;
  sub_100140278(&qword_1008E7808);
  result = static QuickStartWorkoutConstants.numberOfColumns.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v13[0] = 0;
    v13[1] = result;
    swift_getKeyPath();
    sub_1002F9AC0(a2, v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v12 = swift_allocObject();
    sub_1002F9B24(v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
    *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = v9;
    sub_100140278(&qword_1008DE078);
    sub_100140278(&qword_1008E7858);
    sub_100182FB4();
    sub_1002F9F38();
    return ForEach<>.init(_:id:content:)();
  }

  return result;
}

uint64_t sub_1002F93D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v51 = a4;
  v52 = a2;
  started = type metadata accessor for QuickStartWorkoutCardView();
  v45 = *(started - 8);
  __chkstk_darwin(started - 8);
  v46 = v7;
  v47 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for QuickStartWorkoutControlType();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v10 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for QuickStartWorkoutViewStyle();
  v39 = *(v11 - 8);
  v40 = v11;
  __chkstk_darwin(v11);
  v44 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for QuickStartWorkoutViewConfiguration();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for QuickStartWorkoutStackedView();
  v42 = *(v17 - 8);
  v43 = v17;
  __chkstk_darwin(v17);
  v41 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100140278(&qword_1008E7870);
  __chkstk_darwin(v50);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v39 - v22;
  v24 = sub_100140278(&qword_1008E7880);
  __chkstk_darwin(v24);
  v26 = &v39 - v25;
  v27 = *a1;
  result = static QuickStartWorkoutConstants.numberOfColumns.getter();
  v29 = a3 * result;
  if ((a3 * result) >> 64 != (a3 * result) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  v30 = v29 + v27;
  if (__OFADD__(v29, v27))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  result = type metadata accessor for QuickStartWorkoutCard();
  v31 = v52;
  v32 = *(v52 + *(result + 32));
  if (v30 < *(v32 + 16))
  {
    if ((v30 & 0x8000000000000000) == 0)
    {
      (*(v14 + 16))(v16, v32 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v30, v13);
      (*(v39 + 104))(v44, enum case for QuickStartWorkoutViewStyle.stacked(_:), v40);
      v33 = v47;
      sub_1002F9AC0(v31, v47);
      v34 = (*(v45 + 80) + 16) & ~*(v45 + 80);
      v35 = swift_allocObject();
      sub_1002F9B24(v33, v35 + v34);
      *v10 = sub_1002FA0F4;
      v10[1] = v35;
      (*(v48 + 104))(v10, enum case for QuickStartWorkoutControlType.button(_:), v49);
      static Solarium.isEnabled.getter();
      v36 = v41;
      QuickStartWorkoutStackedView.init(configuration:viewStyle:controlType:width:height:cornerRadius:)();
      KeyPath = swift_getKeyPath();
      (*(v42 + 32))(v20, v36, v43);
      v38 = &v20[*(v50 + 36)];
      *v38 = KeyPath;
      *(v38 + 1) = 1;
      v38[16] = 0;
      sub_100015E80(v20, v23, &qword_1008E7870);
      sub_10001B104(v23, v26, &qword_1008E7870);
      swift_storeEnumTagMultiPayload();
      sub_1002F9FC4();
      _ConditionalContent<>.init(storage:)();
      return sub_10000EA04(v23, &qword_1008E7870);
    }

    goto LABEL_10;
  }

  swift_storeEnumTagMultiPayload();
  sub_1002F9FC4();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1002F99A8()
{
  v1 = v0;
  started = QuickStartWorkoutViewConfiguration.workoutConfiguration.getter();
  v3 = type metadata accessor for QuickStartWorkoutActionContext();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR___CHQuickStartWorkoutActionContext_configuration] = started;
  v13.receiver = v4;
  v13.super_class = v3;
  v5 = objc_msgSendSuper2(&v13, "init");
  v6 = type metadata accessor for QuickStartWorkoutCardView();
  sub_10001B104(v1 + *(v6 + 20), v11, &qword_1008DC808);
  if (v12)
  {
    v10[3] = v3;
    v10[0] = v5;
    v7 = *sub_1000066AC(v11, v12);
    v8 = v5;
    sub_10049F064(v1, v10, v7);

    sub_10000EA04(v10, &qword_1008E51F0);
    return sub_100005A40(v11);
  }

  else
  {

    return sub_10000EA04(v11, &qword_1008DC808);
  }
}

uint64_t sub_1002F9AC0(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for QuickStartWorkoutCardView();
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_1002F9B24(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for QuickStartWorkoutCardView();
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_1002F9B88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for QuickStartWorkoutCardView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1002F9204(a1, v6, a2);
}

unint64_t sub_1002F9C08()
{
  result = qword_1008E7820;
  if (!qword_1008E7820)
  {
    sub_100141EEC(&qword_1008E77F8);
    sub_1002F9C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7820);
  }

  return result;
}

unint64_t sub_1002F9C94()
{
  result = qword_1008E7828;
  if (!qword_1008E7828)
  {
    sub_100141EEC(&qword_1008E7818);
    sub_10014A6B0(&qword_1008E7830, &qword_1008E7838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7828);
  }

  return result;
}

unint64_t sub_1002F9D4C()
{
  result = qword_1008E7840;
  if (!qword_1008E7840)
  {
    sub_100141EEC(&qword_1008E77E8);
    sub_1002F9DD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7840);
  }

  return result;
}

unint64_t sub_1002F9DD0()
{
  result = qword_1008E7848;
  if (!qword_1008E7848)
  {
    sub_100141EEC(&qword_1008E77E0);
    sub_1002FA0AC(&qword_1008E7850, &type metadata accessor for QuickStartWorkoutFullSizeView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7848);
  }

  return result;
}

uint64_t sub_1002F9E8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for QuickStartWorkoutCardView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002F93D0(a1, v2 + v6, v7, a2);
}

unint64_t sub_1002F9F38()
{
  result = qword_1008E7860;
  if (!qword_1008E7860)
  {
    sub_100141EEC(&qword_1008E7858);
    sub_1002F9FC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7860);
  }

  return result;
}

unint64_t sub_1002F9FC4()
{
  result = qword_1008E7868;
  if (!qword_1008E7868)
  {
    sub_100141EEC(&qword_1008E7870);
    sub_1002FA0AC(&qword_1008E7878, &type metadata accessor for QuickStartWorkoutStackedView);
    sub_10014A6B0(&qword_1008DCB40, &qword_1008DCB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7868);
  }

  return result;
}

uint64_t sub_1002FA0AC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002FA15C()
{
  result = qword_1008E7888;
  if (!qword_1008E7888)
  {
    sub_100141EEC(&qword_1008E7890);
    sub_1002F9C08();
    sub_1002F9D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7888);
  }

  return result;
}

uint64_t sub_1002FA218@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v98 = type metadata accessor for FitnessPlusStackItemView();
  __chkstk_darwin(v98);
  v90 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100140278(&unk_1008E9B20);
  __chkstk_darwin(v4 - 8);
  v91 = &v86 - v5;
  v103 = type metadata accessor for MindfulnessItemView();
  __chkstk_darwin(v103);
  v7 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v92 = &v86 - v9;
  v10 = sub_100140278(&qword_1008E0BC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v86 - v11;
  v13 = type metadata accessor for FitnessPlusStackViewModel();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v88 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v89 = &v86 - v17;
  v100 = sub_100140278(&qword_1008E78B8);
  __chkstk_darwin(v100);
  v99 = &v86 - v18;
  v94 = sub_100140278(&qword_1008E78C0);
  __chkstk_darwin(v94);
  v102 = &v86 - v19;
  v101 = sub_100140278(&qword_1008E78C8);
  __chkstk_darwin(v101);
  v95 = &v86 - v20;
  v21 = type metadata accessor for AttributedString();
  v96 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v97 = &v86 - v25;
  v26 = type metadata accessor for WorkoutItemView();
  __chkstk_darwin(v26);
  v28 = &v86 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100007C5C((a1 + 1), v106);
  sub_100140278(&unk_1008E4E60);
  sub_100289C9C();
  v29 = swift_dynamicCast();
  v93 = v26;
  if (v29)
  {
    v30 = *a1;
    v31 = *(*a1 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_workoutFormattingManager);
    v32 = *(*a1 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_seymourCatalogItemDataProvider);
    v33 = *(*a1 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_awardsDataProvider);
    LODWORD(v91) = *(*a1 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_size);
    v34 = v105;
    v35 = *(v30 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_workoutImageProvider);
    v36 = v26;
    v37 = *(v26 + 44);
    v105 = 0;
    v92 = v34;
    v38 = v31;
    v39 = v32;
    v40 = v33;

    sub_100140278(&qword_1008DC850);
    State.init(wrappedValue:)();
    *&v28[v37] = v106[0];
    v41 = *(v36 + 48);
    v105 = 0;
    State.init(wrappedValue:)();
    *&v28[v41] = v106[0];
    *v28 = v92;
    *(v28 + 1) = v38;
    *(v28 + 2) = v39;
    *(v28 + 3) = v40;
    v28[32] = v91;
    *(v28 + 5) = v35;
    v42 = [v38 formattedTypeForWorkout:? workoutActivity:? context:?];
    AttributedString.init(_:)();
    static Font.body.getter();
    v43 = v97;
    AttributedString.with(font:)();

    v44 = v96;
    v45 = *(v96 + 8);
    v45(v23, v21);
    (*(v44 + 16))(v23, v43, v21);
    State.init(wrappedValue:)();

    v45(v43, v21);
    sub_1002FB6B4(v28, v102, type metadata accessor for WorkoutItemView);
    swift_storeEnumTagMultiPayload();
    sub_1002FB604(&qword_1008E78E0, type metadata accessor for WorkoutItemView);
    sub_1002FB604(&qword_1008E78E8, type metadata accessor for MindfulnessItemView);
    v46 = v95;
    _ConditionalContent<>.init(storage:)();
    sub_10001B104(v46, v99, &qword_1008E78C8);
    swift_storeEnumTagMultiPayload();
    sub_1002FB518();
    sub_1002FB604(&qword_1008E78F0, type metadata accessor for FitnessPlusStackItemView);
    _ConditionalContent<>.init(storage:)();

    sub_10000EA04(v46, &qword_1008E78C8);
    v47 = v28;
    v48 = type metadata accessor for WorkoutItemView;
  }

  else
  {
    v86 = v23;
    v87 = v21;
    v49 = v102;
    sub_100007C5C((a1 + 1), v106);
    type metadata accessor for MindfulnessSessionViewModel();
    if (swift_dynamicCast())
    {
      v50 = *(*a1 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_mindfulnessFormattingManager);
      v51 = v105;
      v52 = *(*a1 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_fitnessAppContext);
      v53 = *(*a1 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_size);
      v105 = 0;
      v54 = v51;
      v55 = v50;
      v56 = v52;
      sub_100140278(&qword_1008DC850);
      State.init(wrappedValue:)();
      *(v7 + 3) = v106[0];
      *v7 = v54;
      *(v7 + 1) = v55;
      *(v7 + 2) = v56;
      v7[24] = v53;
      v57 = type metadata accessor for Trainer();
      v58 = v91;
      (*(*(v57 - 8) + 56))(v91, 1, 1, v57);
      v59 = v54;
      v60 = v55;
      sub_1005577DC(v59, v58);
      v61 = v97;
      AttributedString.init(_:)();
      if (qword_1008DADB8 != -1)
      {
        swift_once();
      }

      *&v106[0] = qword_1008F2CB0;
      sub_10005F988();

      AttributedString.subscript.setter();
      sub_10000EA04(v58, &unk_1008E9B20);
      v62 = v96;
      v63 = v87;
      (*(v96 + 16))(v86, v61, v87);
      State.init(wrappedValue:)();
      (*(v62 + 8))(v61, v63);
      sub_100558590();

      v105 = Image.init(systemName:)();
      State.init(wrappedValue:)();
      v64 = *(&v106[0] + 1);
      *(v7 + 4) = *&v106[0];
      *(v7 + 5) = v64;
      v65 = v92;
      sub_1002FB64C(v7, v92, type metadata accessor for MindfulnessItemView);
      v66 = type metadata accessor for MindfulnessItemView;
      sub_1002FB6B4(v65, v49, type metadata accessor for MindfulnessItemView);
      swift_storeEnumTagMultiPayload();
      sub_1002FB604(&qword_1008E78E0, type metadata accessor for WorkoutItemView);
      sub_1002FB604(&qword_1008E78E8, type metadata accessor for MindfulnessItemView);
      v67 = v95;
      _ConditionalContent<>.init(storage:)();
      sub_10001B104(v67, v99, &qword_1008E78C8);
      swift_storeEnumTagMultiPayload();
      sub_1002FB518();
      sub_1002FB604(&qword_1008E78F0, type metadata accessor for FitnessPlusStackItemView);
      _ConditionalContent<>.init(storage:)();

      sub_10000EA04(v67, &qword_1008E78C8);
      v47 = v65;
    }

    else
    {
      sub_100007C5C((a1 + 1), v106);
      v68 = swift_dynamicCast();
      v69 = *(v14 + 56);
      if ((v68 & 1) == 0)
      {
        v83 = 1;
        v69(v12, 1, 1, v13);
        sub_10000EA04(v12, &qword_1008E0BC0);
        goto LABEL_11;
      }

      v69(v12, 0, 1, v13);
      v70 = v89;
      sub_1002FB64C(v12, v89, type metadata accessor for FitnessPlusStackViewModel);
      v66 = type metadata accessor for FitnessPlusStackViewModel;
      v71 = v88;
      sub_1002FB6B4(v70, v88, type metadata accessor for FitnessPlusStackViewModel);
      v72 = *(*a1 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_stackFormattingManager);
      v73 = *(*a1 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_seymourCatalogItemDataProvider);
      v74 = *(*a1 + OBJC_IVAR____TtC10FitnessApp16HistoryItemsCard_size);
      v75 = v98;
      v76 = *(v98 + 32);
      v105 = 0;
      v77 = v72;
      v78 = v73;
      sub_100140278(&qword_1008DC850);
      State.init(wrappedValue:)();
      v79 = v90;
      *&v90[v76] = v106[0];
      sub_1002FB6B4(v71, v79, type metadata accessor for FitnessPlusStackViewModel);
      *(v79 + v75[5]) = v77;
      *(v79 + v75[6]) = v78;
      *(v79 + v75[7]) = v74;
      sub_100409AF0();
      v80 = v97;
      AttributedString.init(_:)();
      v81 = v96;
      v82 = v87;
      (*(v96 + 16))(v86, v80, v87);
      State.init(wrappedValue:)();
      (*(v81 + 8))(v80, v82);
      sub_1002FB71C(v71, type metadata accessor for FitnessPlusStackViewModel);
      sub_1002FB6B4(v79, v99, type metadata accessor for FitnessPlusStackItemView);
      swift_storeEnumTagMultiPayload();
      sub_1002FB518();
      sub_1002FB604(&qword_1008E78F0, type metadata accessor for FitnessPlusStackItemView);
      _ConditionalContent<>.init(storage:)();
      sub_1002FB71C(v79, type metadata accessor for FitnessPlusStackItemView);
      v47 = v70;
    }

    v48 = v66;
  }

  sub_1002FB71C(v47, v48);
  v83 = 0;
LABEL_11:
  v84 = sub_100140278(&qword_1008E78D0);
  return (*(*(v84 - 8) + 56))(v104, v83, 1, v84);
}

uint64_t sub_1002FB0E4(uint64_t *a1)
{
  sub_100007C5C((a1 + 1), v8);
  sub_10001B104((a1 + 6), v6, &qword_1008DC808);
  if (v7)
  {
    v2 = sub_1000066AC(v6, v7);
    v3 = *a1;
    v5[3] = &type metadata for HistoryViewActionContext;
    v5[0] = swift_allocObject();
    sub_1002FB4BC(v8, v5[0] + 16);
    sub_1004A050C(v3, v5, *v2);
    sub_1002FB468(v8);
    sub_10000EA04(v5, &qword_1008E51F0);
    return sub_100005A40(v6);
  }

  else
  {
    sub_1002FB468(v8);
    return sub_10000EA04(v6, &qword_1008DC808);
  }
}

uint64_t sub_1002FB1DC()
{
  v1 = sub_100140278(&qword_1008E7898);
  __chkstk_darwin(v1);
  v3 = &v11 - v2;
  sub_1002FA218(v0, &v11 - v2);
  v4 = v0[4];
  v5 = v0[5];
  sub_1000066AC(v0 + 1, v4);
  v6 = *(v5 + 48);
  sub_100140278(&qword_1008E78A0);
  v6(v4, v5);
  v3[*(v1 + 36)] = 0;
  sub_100241CD0(v0, v12);
  v7 = swift_allocObject();
  v8 = v12[3];
  *(v7 + 48) = v12[2];
  *(v7 + 64) = v8;
  *(v7 + 80) = v12[4];
  *(v7 + 96) = v13;
  v9 = v12[1];
  *(v7 + 16) = v12[0];
  *(v7 + 32) = v9;
  sub_1002FB384();
  View.onTapGesture(count:perform:)();

  return sub_10000EA04(v3, &qword_1008E7898);
}

unint64_t sub_1002FB384()
{
  result = qword_1008E78A8;
  if (!qword_1008E78A8)
  {
    sub_100141EEC(&qword_1008E7898);
    sub_10014A6B0(&qword_1008E78B0, &qword_1008E78A0);
    sub_10014A6B0(&qword_1008DC838, &qword_1008DC840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E78A8);
  }

  return result;
}

unint64_t sub_1002FB518()
{
  result = qword_1008E78D8;
  if (!qword_1008E78D8)
  {
    sub_100141EEC(&qword_1008E78C8);
    sub_1002FB604(&qword_1008E78E0, type metadata accessor for WorkoutItemView);
    sub_1002FB604(&qword_1008E78E8, type metadata accessor for MindfulnessItemView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E78D8);
  }

  return result;
}

uint64_t sub_1002FB604(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002FB64C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002FB6B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002FB71C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Int sub_1002FB77C()
{
  v1 = v0;
  v2 = type metadata accessor for CatalogLockup();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init()();
  Card = type metadata accessor for FitnessPlusUpNextCard();
  v7 = (v0 + Card[5]);
  v8 = *v7;
  v9 = *(v7 + 16);
  sub_100035B30(*v7, *(v7 + 16));
  String.hash(into:)();

  if (!v9 || v9 == 2)
  {
    Hasher._combine(_:)(v8);
  }

  else if (v9 == 1)
  {
    String.hash(into:)();
  }

  Hasher._combine(_:)(*(v1 + Card[6]));
  Hasher._combine(_:)(*(v1 + Card[7]));
  v10 = *(v1 + Card[9]);
  if (v10 >= 4)
  {
    Hasher._combine(_:)(2uLL);
    Hasher._combine(_:)(*(v10 + 16));
    v11 = *(v10 + 16);
    if (v11)
    {
      v14 = *(v3 + 16);
      v13 = v3 + 16;
      v12 = v14;
      v15 = v10 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
      v16 = *(v13 + 56);
      do
      {
        v12(v5, v15, v2);
        sub_100071570(&qword_1008E78F8, &type metadata accessor for CatalogLockup);
        dispatch thunk of Hashable.hash(into:)();
        (*(v13 - 8))(v5, v2);
        v15 += v16;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    Hasher._combine(_:)(qword_1006E81E8[v10]);
  }

  return Hasher.finalize()();
}

uint64_t sub_1002FB9E0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = sub_1002FBAD0(319, &qword_1008E7968);
    if (v2 <= 0x3F)
    {
      result = sub_1002FBAD0(319, &unk_1008E7970);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002FBAD0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

Swift::Int sub_1002FBB2C()
{
  v1 = v0;
  v2 = type metadata accessor for CatalogTipSectionItem();
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008E4E80);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  Hasher.init()();
  v8 = type metadata accessor for CatalogTipCard();
  v9 = (v0 + v8[5]);
  v10 = *v9;
  v11 = *(v9 + 16);
  sub_100035B30(*v9, *(v9 + 16));
  String.hash(into:)();

  if (!v11 || v11 == 2)
  {
    Hasher._combine(_:)(v10);
  }

  else if (v11 == 1)
  {
    String.hash(into:)();
  }

  Hasher._combine(_:)(*(v1 + v8[6]));
  Hasher._combine(_:)(*(v1 + v8[7]));
  sub_10001B104(v1 + v8[9], v7, &qword_1008E4E80);
  v12 = type metadata accessor for CatalogTipSection();
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_100073798(v7);
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_1002FC17C(&v7[*(v12 + 36)], v4);
    sub_1002FC374(v7, type metadata accessor for CatalogTipSection);

    sub_1002FC374(v4, type metadata accessor for CatalogTipSectionItem);
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  return Hasher.finalize()();
}

uint64_t sub_1002FBDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a2;
  v29 = a3;
  v4 = type metadata accessor for ScalarDictionary();
  __chkstk_darwin(v4 - 8);
  v26 = type metadata accessor for MetricClickElement();
  v5 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100140278(&qword_1008E4E80);
  __chkstk_darwin(v8 - 8);
  v10 = v25 - v9;
  v11 = type metadata accessor for CatalogTipSectionItem();
  __chkstk_darwin(v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v25 - v15;
  v17 = type metadata accessor for CatalogTipCard();
  sub_10001B104(v3 + *(v17 + 36), v10, &qword_1008E4E80);
  v18 = type metadata accessor for CatalogTipSection();
  if ((*(*(v18 - 8) + 48))(v10, 1, v18) == 1)
  {
    sub_100073798(v10);
    v19 = 1;
    v20 = v29;
  }

  else
  {
    sub_1002FC17C(&v10[*(v18 + 36)], v13);
    sub_1002FC374(v10, type metadata accessor for CatalogTipSection);
    sub_1002FC1E0(v13, v16);
    v25[1] = *&v16[*(v11 + 28)];

    v21 = ShelfLockupAttributedTagStrings.title.getter();
    v22 = [v21 string];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    (*(v5 + 104))(v7, enum case for MetricClickElement.button(_:), v26);
    static MetricConstants.itemIdentifierType.getter();
    sub_1002FC244(_swiftEmptyArrayStorage);
    ScalarDictionary.init()();
    v20 = v29;
    ImpressionMetrics.init(parentId:elementId:name:clickElement:index:idType:additionalFields:custom:)();
    sub_1002FC374(v16, type metadata accessor for CatalogTipSectionItem);
    v19 = 0;
  }

  v23 = type metadata accessor for ImpressionMetrics();
  return (*(*(v23 - 8) + 56))(v20, v19, 1, v23);
}

uint64_t sub_1002FC17C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogTipSectionItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002FC1E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogTipSectionItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002FC244(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100140278(&qword_1008E79B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10001B104(v4, &v13, &qword_1008DD8E8);
      v5 = v13;
      v6 = v14;
      result = sub_100066F20(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1001AA76C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_1002FC374(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002FC3D4()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1002FC49C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Dependencies();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002FC49C()
{
  if (!qword_1008E7A28)
  {
    type metadata accessor for CatalogTipSection();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E7A28);
    }
  }
}

void sub_1002FC53C()
{
  type metadata accessor for ActivitySharingHighlightViewModel();
  if (v0 <= 0x3F)
  {
    sub_1002FC5C0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002FC5C0()
{
  if (!qword_1008E7AE0)
  {
    type metadata accessor for ActivitySharingNavigationCoordinator();
    sub_1002FE674(&qword_1008DC018, type metadata accessor for ActivitySharingNavigationCoordinator);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E7AE0);
    }
  }
}

uint64_t sub_1002FC670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008E7C38);
  __chkstk_darwin(v4 - 8);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v22[-v8];
  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0x4024000000000000;
  v9[16] = 0;
  v10 = sub_100140278(&qword_1008E7C40);
  sub_1002FCA4C(a1, &v9[*(v10 + 44)]);
  v11 = static HorizontalAlignment.center.getter();
  v23 = 1;
  sub_1002FD16C(&v40);
  v34 = *&v41[144];
  v35[0] = *&v41[160];
  *(v35 + 10) = *&v41[170];
  v30 = *&v41[80];
  v31 = *&v41[96];
  v32 = *&v41[112];
  v33 = *&v41[128];
  v26 = *&v41[16];
  v27 = *&v41[32];
  v28 = *&v41[48];
  v29 = *&v41[64];
  v24 = v40;
  v25 = *v41;
  v36[10] = *&v41[144];
  v37[0] = *&v41[160];
  *(v37 + 10) = *&v41[170];
  v36[6] = *&v41[80];
  v36[7] = *&v41[96];
  v36[8] = *&v41[112];
  v36[9] = *&v41[128];
  v36[2] = *&v41[16];
  v36[3] = *&v41[32];
  v36[4] = *&v41[48];
  v36[5] = *&v41[64];
  v36[0] = v40;
  v36[1] = *v41;
  sub_10001B104(&v24, &v38, &qword_1008E7C48);
  sub_10000EA04(v36, &qword_1008E7C48);
  *&v22[151] = v33;
  *&v22[167] = v34;
  *&v22[183] = v35[0];
  *&v22[193] = *(v35 + 10);
  *&v22[87] = v29;
  *&v22[103] = v30;
  *&v22[119] = v31;
  *&v22[135] = v32;
  *&v22[23] = v25;
  *&v22[39] = v26;
  *&v22[55] = v27;
  *&v22[71] = v28;
  *&v22[7] = v24;
  v12 = v23;
  sub_10001B104(v9, v6, &qword_1008E7C38);
  sub_10001B104(v6, a2, &qword_1008E7C38);
  v13 = a2 + *(sub_100140278(&qword_1008E7C50) + 48);
  v38 = v11;
  v39[0] = v12;
  *&v39[161] = *&v22[160];
  *&v39[177] = *&v22[176];
  *&v39[193] = *&v22[192];
  v39[209] = v22[208];
  *&v39[97] = *&v22[96];
  *&v39[113] = *&v22[112];
  *&v39[129] = *&v22[128];
  *&v39[145] = *&v22[144];
  *&v39[33] = *&v22[32];
  *&v39[49] = *&v22[48];
  *&v39[65] = *&v22[64];
  *&v39[81] = *&v22[80];
  *&v39[17] = *&v22[16];
  *&v39[1] = *v22;
  v14 = *&v39[192];
  *(v13 + 192) = *&v39[176];
  *(v13 + 208) = v14;
  *(v13 + 224) = *&v39[208];
  v15 = *&v39[128];
  *(v13 + 128) = *&v39[112];
  *(v13 + 144) = v15;
  v16 = *&v39[160];
  *(v13 + 160) = *&v39[144];
  *(v13 + 176) = v16;
  v17 = *&v39[64];
  *(v13 + 64) = *&v39[48];
  *(v13 + 80) = v17;
  v18 = *&v39[96];
  *(v13 + 96) = *&v39[80];
  *(v13 + 112) = v18;
  v19 = *v39;
  *v13 = v38;
  *(v13 + 16) = v19;
  v20 = *&v39[32];
  *(v13 + 32) = *&v39[16];
  *(v13 + 48) = v20;
  sub_10001B104(&v38, &v40, &qword_1008E7C58);
  sub_10000EA04(v9, &qword_1008E7C38);
  *&v41[161] = *&v22[160];
  *&v41[177] = *&v22[176];
  *&v41[193] = *&v22[192];
  *&v41[97] = *&v22[96];
  *&v41[113] = *&v22[112];
  *&v41[129] = *&v22[128];
  *&v41[145] = *&v22[144];
  *&v41[33] = *&v22[32];
  *&v41[49] = *&v22[48];
  *&v41[65] = *&v22[64];
  *&v41[81] = *&v22[80];
  *&v41[1] = *v22;
  v40 = v11;
  v41[0] = v12;
  v41[209] = v22[208];
  *&v41[17] = *&v22[16];
  sub_10000EA04(&v40, &qword_1008E7C58);
  return sub_10000EA04(v6, &qword_1008E7C38);
}

uint64_t sub_1002FCA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = type metadata accessor for ActivitySharingHighlight();
  __chkstk_darwin(v3 - 8);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&qword_1008E7C68);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v62 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v58 - v10;
  sub_1002FE200(a1, &v58 - v10, type metadata accessor for ActivitySharingHighlightViewModel);
  v12 = *(type metadata accessor for ActivitySharingAvatarView() + 20);
  *&v84 = 0;
  sub_100140278(&qword_1008E9B30);
  State.init(wrappedValue:)();
  *&v11[v12] = v106;
  LOBYTE(v12) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v13 = &v11[*(v7 + 44)];
  *v13 = v12;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  v60 = static HorizontalAlignment.leading.getter();
  LOBYTE(v106) = 0;
  sub_1002FD078(v114);
  *(v105 + 7) = v114[0];
  *(&v105[1] + 7) = v114[1];
  *(&v105[2] + 7) = v114[2];
  *(&v105[3] + 7) = v114[3];
  v58 = v106;
  v59 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = type metadata accessor for ActivitySharingHighlightView(0);
  v27 = *(a1 + *(v26 + 24));
  swift_getKeyPath();
  *&v106 = v27;
  sub_1002FE674(&qword_1008F6D40, type metadata accessor for MessagesAppInstallationObserver);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v27 + OBJC_IVAR____TtC10FitnessApp31MessagesAppInstallationObserver__messagesIsInstalled) == 1)
  {
    sub_1002FE200(a1, v5, type metadata accessor for ActivitySharingHighlight);
    type metadata accessor for ActivitySharingReplyCoordinator();
    swift_allocObject();
    sub_10013E858(v5, 1);
    v28 = (a1 + *(v26 + 20));
    v29 = *v28;
    v30 = v28[1];
    sub_10000B210(*v28);
    sub_1005BDB0C(v29, v30, &v76);
    v31 = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v106) = 0;
    v86 = v78;
    v87 = v79;
    v88 = v80;
    v89 = v81;
    v84 = v76;
    v85 = v77;
    LOBYTE(v90) = v31;
    *(&v90 + 1) = v32;
    *&v91[0] = v33;
    *(&v91[0] + 1) = v34;
    *&v91[1] = v35;
    BYTE8(v91[1]) = 0;
    ASFriendListDisplayMode.id.getter(&v84);
    v112 = v90;
    v113[0] = v91[0];
    *(v113 + 9) = *(v91 + 9);
    v108 = v86;
    v109 = v87;
    v110 = v88;
    v111 = v89;
    v106 = v84;
    v107 = v85;
  }

  else
  {
    sub_1002C458C(&v106);
  }

  v36 = v62;
  sub_10001B104(v11, v62, &qword_1008E7C68);
  v69 = v112;
  v70[0] = v113[0];
  *(v70 + 9) = *(v113 + 9);
  v65 = v108;
  v66 = v109;
  v67 = v110;
  v68 = v111;
  v63 = v106;
  v64 = v107;
  v37 = v61;
  sub_10001B104(v36, v61, &qword_1008E7C68);
  v38 = sub_100140278(&qword_1008E7C70);
  v39 = v37 + v38[12];
  v40 = v60;
  *&v71 = v60;
  *(&v71 + 1) = 0x4000000000000000;
  v41 = v58;
  LOBYTE(v72[0]) = v58;
  *(&v72[3] + 1) = v105[3];
  *&v72[4] = *(&v105[3] + 15);
  *(&v72[1] + 1) = v105[1];
  *(&v72[2] + 1) = v105[2];
  *(v72 + 1) = v105[0];
  v42 = v59;
  BYTE8(v72[4]) = v59;
  *(&v72[4] + 9) = v115[0];
  HIDWORD(v72[4]) = *(v115 + 3);
  *&v73 = v19;
  *(&v73 + 1) = v21;
  *&v74 = v23;
  *(&v74 + 1) = v25;
  v75 = 0;
  *(v39 + 128) = 0;
  v43 = v72[2];
  *(v39 + 32) = v72[1];
  *(v39 + 48) = v43;
  v44 = v72[0];
  *v39 = v71;
  *(v39 + 16) = v44;
  v45 = v72[4];
  *(v39 + 64) = v72[3];
  *(v39 + 80) = v45;
  v46 = v74;
  *(v39 + 96) = v73;
  *(v39 + 112) = v46;
  v47 = v37 + v38[16];
  *v47 = 0;
  *(v47 + 8) = 0;
  v48 = v38[20];
  v49 = v65;
  v50 = v66;
  v78 = v65;
  v79 = v66;
  v52 = v63;
  v51 = v64;
  v76 = v63;
  v77 = v64;
  v54 = v67;
  v53 = v68;
  v80 = v67;
  v81 = v68;
  v55 = v70[0];
  v82 = v69;
  v83[0] = v70[0];
  *(v83 + 9) = *(v70 + 9);
  v56 = (v37 + v48);
  v56[6] = v69;
  v56[7] = v55;
  *(v56 + 121) = *(v70 + 9);
  v56[2] = v49;
  v56[3] = v50;
  v56[4] = v54;
  v56[5] = v53;
  *v56 = v52;
  v56[1] = v51;
  sub_10001B104(&v71, &v84, &qword_1008E7C78);
  sub_10001B104(&v76, &v84, &qword_1008E7C80);
  sub_10000EA04(v11, &qword_1008E7C68);
  v90 = v69;
  v91[0] = v70[0];
  *(v91 + 9) = *(v70 + 9);
  v86 = v65;
  v87 = v66;
  v88 = v67;
  v89 = v68;
  v84 = v63;
  v85 = v64;
  sub_10000EA04(&v84, &qword_1008E7C80);
  v95 = v105[1];
  v96 = v105[2];
  *v97 = v105[3];
  v92[0] = v40;
  v92[1] = 0x4000000000000000;
  v93 = v41;
  *&v97[15] = *(&v105[3] + 15);
  v94 = v105[0];
  v98 = v42;
  *v99 = v115[0];
  *&v99[3] = *(v115 + 3);
  v100 = v19;
  v101 = v21;
  v102 = v23;
  v103 = v25;
  v104 = 0;
  sub_10000EA04(v92, &qword_1008E7C78);
  return sub_10000EA04(v36, &qword_1008E7C68);
}

uint64_t sub_1002FD078@<X0>(uint64_t a1@<X8>)
{
  sub_1002EA6EC(&v11);
  v2 = v11;
  v3 = v12;
  v4 = v13;
  v5 = v14;
  sub_1002EAAE8(&v11);
  v6 = v11;
  v7 = v12;
  v8 = v13;
  v9 = v14;
  LOBYTE(v11) = v4;
  v15 = v13;
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v9;
  sub_10006965C(v2, v3, v4);

  sub_10006965C(v6, v7, v8);

  sub_10004642C(v6, v7, v8);

  sub_10004642C(v2, v3, v4);
}

uint64_t sub_1002FD16C@<X0>(uint64_t a1@<X8>)
{
  sub_1002EAE70(&v26);
  v2 = v26;
  v3 = v27;
  v4 = v28;
  sub_1002EB514(&v15);
  v32 = v21;
  v33 = v22;
  v28 = v17;
  v29 = v18;
  v30 = v19;
  v31 = v20;
  v26 = v15;
  v27 = v16;
  v24[6] = v21;
  v24[7] = v22;
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v24[5] = v20;
  v24[0] = v15;
  v24[1] = v16;
  *&v11[7] = v15;
  *&v11[71] = v19;
  *&v11[55] = v18;
  *&v11[39] = v17;
  *&v11[23] = v16;
  *&v11[135] = v23;
  *&v11[119] = v22;
  *&v11[103] = v21;
  *&v11[87] = v20;
  v5 = *&v11[64];
  *(a1 + 145) = *&v11[80];
  v6 = *&v11[112];
  *(a1 + 161) = *&v11[96];
  *(a1 + 177) = v6;
  *(a1 + 186) = *&v11[121];
  v7 = *v11;
  *(a1 + 81) = *&v11[16];
  v8 = *&v11[48];
  *(a1 + 97) = *&v11[32];
  *(a1 + 113) = v8;
  *(a1 + 129) = v5;
  v34 = v23;
  v14 = 1;
  v13 = v4;
  v12 = 1;
  v25 = v23;
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 65) = v7;
  sub_1002FE8DC(v2, *(&v2 + 1), v3, *(&v3 + 1), v4);
  sub_10001B104(v24, v10, &qword_1008E7C60);
  sub_10000EA04(&v26, &qword_1008E7C60);
  return sub_1002FE94C(v2, *(&v2 + 1), v3, *(&v3 + 1), v4);
}

uint64_t sub_1002FD3C4@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100140278(&qword_1008E7C30);
  return sub_1002FC670(v1, a1 + *(v3 + 44));
}

CGFloat sub_1002FD418()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v10.origin.x = v2;
  v10.origin.y = v4;
  v10.size.width = v6;
  v10.size.height = v8;
  result = CGRectGetWidth(v10) * 0.8;
  qword_1008E7A70 = *&result;
  return result;
}

uint64_t sub_1002FD4B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v85 = a1;
  v83 = type metadata accessor for AccessibilityActionKind();
  v82 = *(v83 - 8);
  __chkstk_darwin(v83);
  v81 = &v63[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = type metadata accessor for AccessibilityTraits();
  v79 = *(v80 - 1);
  __chkstk_darwin(v80);
  v78 = &v63[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = type metadata accessor for AccessibilityChildBehavior();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v63[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ActivitySharingHighlightViewWrapper(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v63[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100140278(&qword_1008E7B10);
  __chkstk_darwin(v10);
  v12 = &v63[-v11];
  v65 = sub_100140278(&qword_1008E7B18);
  __chkstk_darwin(v65);
  v14 = &v63[-v13];
  v64 = sub_100140278(&qword_1008E7B20);
  __chkstk_darwin(v64);
  v16 = &v63[-v15];
  v67 = sub_100140278(&qword_1008E7B28);
  __chkstk_darwin(v67);
  v18 = &v63[-v17];
  v69 = sub_100140278(&qword_1008E7B30);
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v63[-v19];
  v74 = sub_100140278(&qword_1008E7B38);
  __chkstk_darwin(v74);
  v72 = &v63[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v73 = &v63[-v22];
  sub_1002FE200(v2, v12, type metadata accessor for ActivitySharingHighlightViewModel);
  v84 = v2;
  sub_1002FE200(v2, v9, type metadata accessor for ActivitySharingHighlightViewWrapper);
  v23 = *(v7 + 80);
  v24 = (v23 + 16) & ~v23;
  v70 = v24 + v8;
  v25 = swift_allocObject();
  v71 = v24;
  sub_1002FE268(v9, v25 + v24);
  v26 = type metadata accessor for ActivitySharingHighlightView(0);
  v27 = &v12[*(v26 + 20)];
  *v27 = sub_1002FE2CC;
  v27[1] = v25;
  v28 = *(v26 + 24);
  *&v12[v28] = [objc_allocWithZone(type metadata accessor for MessagesAppInstallationObserver()) init];
  LOBYTE(v28) = static Edge.Set.all.getter();
  v29 = &v12[*(sub_100140278(&qword_1008E7B40) + 36)];
  *v29 = v28;
  *(v29 + 8) = xmmword_1006E8240;
  *(v29 + 24) = xmmword_1006E8250;
  v29[40] = 0;
  if (qword_1008DA8F8 != -1)
  {
    swift_once();
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v30 = &v12[*(v10 + 36)];
  v31 = v89;
  *v30 = v88;
  v30[1] = v31;
  v30[2] = v90;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100015E80(v12, v14, &qword_1008E7B10);
  v32 = &v14[*(v65 + 36)];
  v33 = v96;
  v32[4] = v95;
  v32[5] = v33;
  v32[6] = v97;
  v34 = v92;
  *v32 = v91;
  v32[1] = v34;
  v35 = v94;
  v32[2] = v93;
  v32[3] = v35;
  v36 = sub_100046170();
  v37 = Color.init(uiColor:)();
  v38 = sub_10013A8DC();
  v39 = &v16[*(v64 + 36)];
  v40 = (v39 + *(sub_100140278(&qword_1008E7B48) + 36));
  v41 = *(type metadata accessor for RoundedRectangle() + 20);
  v42 = enum case for RoundedCornerStyle.continuous(_:);
  v43 = type metadata accessor for RoundedCornerStyle();
  (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
  *v40 = v38;
  v40[1] = v38;
  *(v40 + *(sub_100140278(&qword_1008DE1E0) + 36)) = 256;
  *v39 = v37;
  v44 = static Alignment.center.getter();
  v46 = v45;
  v47 = (v39 + *(sub_100140278(&qword_1008E7B50) + 36));
  *v47 = v44;
  v47[1] = v46;
  sub_100015E80(v14, v16, &qword_1008E7B18);
  LOBYTE(v44) = static Edge.Set.all.getter();
  sub_100015E80(v16, v18, &qword_1008E7B20);
  v48 = v67;
  v49 = &v18[*(v67 + 36)];
  *v49 = v44;
  *(v49 + 8) = xmmword_1006D4690;
  *(v49 + 24) = xmmword_1006D69F0;
  v49[40] = 0;
  v50 = v75;
  static AccessibilityChildBehavior.combine.getter();
  v51 = sub_1002FE35C();
  v52 = v66;
  View.accessibilityElement(children:)();
  (*(v76 + 8))(v50, v77);
  sub_10000EA04(v18, &qword_1008E7B28);
  v53 = v78;
  static AccessibilityTraits.isButton.getter();
  v86 = v48;
  v87 = v51;
  swift_getOpaqueTypeConformance2();
  v54 = v72;
  v55 = v69;
  View.accessibilityAddTraits(_:)();
  (*(v79 + 8))(v53, v80);
  (*(v68 + 8))(v52, v55);
  v80 = type metadata accessor for ActivitySharingHighlightViewWrapper;
  v56 = v84;
  sub_1002FE200(v84, v9, type metadata accessor for ActivitySharingHighlightViewWrapper);
  v57 = swift_allocObject();
  v79 = v23;
  v58 = v71;
  sub_1002FE268(v9, v57 + v71);
  v59 = v81;
  static AccessibilityActionKind.default.getter();
  v60 = v73;
  ModifiedContent<>.accessibilityAction(_:_:)();

  (*(v82 + 8))(v59, v83);
  sub_10008ECE0(v54);
  sub_1002FE200(v56, v9, v80);
  v61 = swift_allocObject();
  sub_1002FE268(v9, v61 + v58);
  sub_1002FE714();
  View.onTapGesture(count:perform:)();

  return sub_10008ECE0(v60);
}

uint64_t sub_1002FE01C(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for ActivitySharingHighlightViewWrapper(0) + 20)))
  {
    v2 = *(a1 + *(type metadata accessor for ActivitySharingHighlight() + 28));

    sub_100315688(v2, 1);
  }

  else
  {
    type metadata accessor for ActivitySharingNavigationCoordinator();
    sub_1002FE674(&qword_1008DC018, type metadata accessor for ActivitySharingNavigationCoordinator);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002FE0E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + *(type metadata accessor for ActivitySharingHighlightViewWrapper(0) + 20));
  if (v3)
  {
    v4 = *(v3 + 144);
    if (v4)
    {

      [v4 dismissViewControllerAnimated:0 completion:0];
      v5 = *(v3 + 144);
      if (v5)
      {
        v6 = v5;
        [v6 presentViewController:a1 animated:1 completion:0];
      }
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for ActivitySharingNavigationCoordinator();
    sub_1002FE674(&qword_1008DC018, type metadata accessor for ActivitySharingNavigationCoordinator);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1002FE200(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002FE268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingHighlightViewWrapper(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002FE2CC(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivitySharingHighlightViewWrapper(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1002FE0E8(a1, v4);
}

unint64_t sub_1002FE35C()
{
  result = qword_1008E7B58;
  if (!qword_1008E7B58)
  {
    sub_100141EEC(&qword_1008E7B28);
    sub_1002FE3E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7B58);
  }

  return result;
}

unint64_t sub_1002FE3E8()
{
  result = qword_1008E7B60;
  if (!qword_1008E7B60)
  {
    sub_100141EEC(&qword_1008E7B20);
    sub_1002FE4A0();
    sub_10014A6B0(&qword_1008E7B88, &qword_1008E7B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7B60);
  }

  return result;
}

unint64_t sub_1002FE4A0()
{
  result = qword_1008E7B68;
  if (!qword_1008E7B68)
  {
    sub_100141EEC(&qword_1008E7B18);
    sub_1002FE52C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7B68);
  }

  return result;
}

unint64_t sub_1002FE52C()
{
  result = qword_1008E7B70;
  if (!qword_1008E7B70)
  {
    sub_100141EEC(&qword_1008E7B10);
    sub_1002FE5B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7B70);
  }

  return result;
}

unint64_t sub_1002FE5B8()
{
  result = qword_1008E7B78;
  if (!qword_1008E7B78)
  {
    sub_100141EEC(&qword_1008E7B40);
    sub_1002FE674(&qword_1008E7B80, type metadata accessor for ActivitySharingHighlightView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7B78);
  }

  return result;
}

uint64_t sub_1002FE674(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002FE714()
{
  result = qword_1008E7B90;
  if (!qword_1008E7B90)
  {
    sub_100141EEC(&qword_1008E7B38);
    sub_100141EEC(&qword_1008E7B28);
    sub_1002FE35C();
    swift_getOpaqueTypeConformance2();
    sub_1002FE674(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7B90);
  }

  return result;
}

uint64_t sub_1002FE834()
{
  result = type metadata accessor for ActivitySharingHighlightViewModel();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MessagesAppInstallationObserver();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002FE8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    return sub_10000B210(a3);
  }

  else
  {

    return j__swift_retain();
  }
}

uint64_t sub_1002FE94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    return sub_1000245E0(a3);
  }

  else
  {

    return j__swift_release();
  }
}

uint64_t getEnumTagSinglePayload for ActivitySharingHighlightEmptyView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivitySharingHighlightEmptyView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1002FEA90@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_100140278(&qword_1008E7CA0);
  v4 = v3 - 8;
  __chkstk_darwin(v3);
  v62 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v47[-v7];
  v63 = &v47[-v7];
  sub_1002FEF98(a1, &v47[-v7]);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v9 = &v8[*(v4 + 44)];
  v10 = v70;
  *v9 = v69;
  v9[1] = v10;
  v9[2] = v71;
  LocalizedStringKey.init(stringLiteral:)();
  v11 = Text.init(_:tableName:bundle:comment:)();
  v13 = v12;
  v15 = v14;
  static Font.headline.getter();
  v16 = Text.font(_:)();
  v58 = v16;
  v59 = v17;
  v61 = v18;
  v20 = v19;
  v21 = v17;

  sub_10004642C(v11, v13, v15 & 1);

  v22 = static Edge.Set.all.getter();
  v23 = v22;
  LOBYTE(v82[0]) = v20 & 1;
  v56 = v20 & 1;
  v57 = v22;
  LOBYTE(v77) = 0;
  LocalizedStringKey.init(stringLiteral:)();
  v24 = Text.init(_:tableName:bundle:comment:)();
  v52 = v25;
  v53 = v24;
  LOBYTE(v13) = v26;
  v55 = v27;
  KeyPath = swift_getKeyPath();
  LOBYTE(v82[0]) = v13 & 1;
  v48 = v13 & 1;
  v54 = static Font.subheadline.getter();
  v50 = swift_getKeyPath();
  *(&v49 + 1) = static Color.secondary.getter();
  *&v49 = swift_getKeyPath();
  v28 = v62;
  sub_10001B104(v63, v62, &qword_1008E7CA0);
  v29 = v28;
  v30 = v60;
  sub_10001B104(v29, v60, &qword_1008E7CA0);
  v31 = sub_100140278(&qword_1008E7CA8);
  v32 = (v30 + *(v31 + 48));
  *&v72 = v16;
  *(&v72 + 1) = v61;
  LOBYTE(v73) = v20 & 1;
  *(&v73 + 1) = *v68;
  DWORD1(v73) = *&v68[3];
  *(&v73 + 1) = v21;
  LOBYTE(v74) = v23;
  *(&v74 + 1) = *v67;
  DWORD1(v74) = *&v67[3];
  memset(v76, 0, sizeof(v76));
  *(&v74 + 1) = 0x4032000000000000;
  v75 = 0;
  v32[2] = v74;
  v32[3] = 0u;
  *(v32 + 57) = *&v76[1];
  v33 = v73;
  *v32 = v72;
  v32[1] = v33;
  v34 = (v30 + *(v31 + 64));
  v35 = v52;
  v36 = v53;
  *&v77 = v53;
  *(&v77 + 1) = v52;
  LOBYTE(v78) = v13 & 1;
  DWORD1(v78) = *&v64[3];
  *(&v78 + 1) = *v64;
  v38 = v54;
  v37 = v55;
  v39 = v50;
  v40 = KeyPath;
  *(&v78 + 1) = v55;
  *&v79 = KeyPath;
  WORD4(v79) = 1;
  BYTE10(v79) = 1;
  HIBYTE(v79) = v66;
  *(&v79 + 11) = v65;
  *&v80 = v50;
  *(&v80 + 1) = v54;
  v41 = v49;
  v81 = v49;
  v42 = v77;
  v43 = v78;
  v44 = v49;
  v34[3] = v80;
  v34[4] = v44;
  v45 = v79;
  v34[1] = v43;
  v34[2] = v45;
  *v34 = v42;
  sub_10001B104(&v72, v82, &qword_1008DC4C0);
  sub_10001B104(&v77, v82, &qword_1008E7CB0);
  sub_10000EA04(v63, &qword_1008E7CA0);
  v82[0] = v36;
  v82[1] = v35;
  v83 = v48;
  *v84 = *v64;
  *&v84[3] = *&v64[3];
  v85 = v37;
  v86 = v40;
  v87 = 1;
  v88 = 1;
  v89 = v65;
  v90 = v66;
  v91 = v39;
  v92 = v38;
  v93 = v41;
  sub_10000EA04(v82, &qword_1008E7CB0);
  v94[0] = v58;
  v94[1] = v61;
  v95 = v56;
  *v96 = *v68;
  *&v96[3] = *&v68[3];
  v97 = v59;
  v98 = v57;
  *v99 = *v67;
  *&v99[3] = *&v67[3];
  v100 = 0x4032000000000000;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  sub_10000EA04(v94, &qword_1008DC4C0);
  return sub_10000EA04(v62, &qword_1008E7CA0);
}

uint64_t sub_1002FEF98@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v24 = a2;
  v2 = type metadata accessor for VideoLooperRepresentable();
  v23 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v21[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v21[-v10];
  v12 = [objc_opt_self() mainBundle];
  v13 = String._bridgeToObjectiveC()();
  v14 = String._bridgeToObjectiveC()();
  v15 = [v12 URLForResource:v13 withExtension:v14];

  if (v15)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v16 = *(v6 + 32);
    v16(v11, v8, v5);
    v16(v4, v11, v5);
    v4[*(v2 + 20)] = v22 & 1;
    v17 = v24;
    sub_1002FF2C8(v4, v24);
    return (*(v23 + 56))(v17, 0, 1, v2);
  }

  else
  {
    v19 = v24;
    v20 = *(v23 + 56);

    return v20(v19, 1, 1, v2);
  }
}

uint64_t sub_1002FF254@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = static HorizontalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_100140278(&qword_1008E7C98);
  return sub_1002FEA90(v3, a1 + *(v4 + 44));
}

uint64_t sub_1002FF2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoLooperRepresentable();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002FF32C()
{
  result = qword_1008E7CB8;
  if (!qword_1008E7CB8)
  {
    sub_100141EEC(qword_1008E7CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E7CB8);
  }

  return result;
}

uint64_t sub_1002FF390(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for GeometryProxy() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(*(a3 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  v15 = *(v11 + 80);
  if (v12 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v8)
  {
    v17 = v14;
  }

  else
  {
    v17 = v14 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v17 + ((v13 + 16) & ~v13) + v15;
  if (a2 <= v16)
  {
    goto LABEL_37;
  }

  v19 = (v18 & ~v15) + *(v11 + 64);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v23 = ((a2 - v16 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v23))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_37;
      }

      goto LABEL_24;
    }

    if (v23 < 2)
    {
LABEL_37:
      if (v10 >= v12)
      {
        v28 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v9 & 0x80000000) != 0)
        {
          v30 = (*(v7 + 48))((v28 + v13 + 8) & ~v13);
          if (v30 >= 2)
          {
            return v30 - 1;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          v29 = *v28;
          if (v29 >= 0xFFFFFFFF)
          {
            LODWORD(v29) = -1;
          }

          return (v29 + 1);
        }
      }

      else
      {
        v27 = *(v11 + 48);

        return v27((a1 + v18) & ~v15, v12);
      }
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_37;
  }

LABEL_24:
  v24 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v24 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v25 = (v18 & ~v15) + *(v11 + 64);
    }

    else
    {
      v25 = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        v26 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v26 = *a1;
      }
    }

    else if (v25 == 1)
    {
      v26 = *a1;
    }

    else
    {
      v26 = *a1;
    }
  }

  else
  {
    v26 = 0;
  }

  return v16 + (v26 | v24) + 1;
}

void sub_1002FF61C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(type metadata accessor for GeometryProxy() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  v14 = *(*(a4 + 16) - 8);
  v15 = *(v14 + 84);
  v16 = *(v9 + 80);
  v17 = *(v9 + 64);
  v18 = *(v14 + 80);
  if (v15 <= v13)
  {
    v19 = v13;
  }

  else
  {
    v19 = *(v14 + 84);
  }

  v20 = (v16 + 16) & ~v16;
  if (v11)
  {
    v21 = v17;
  }

  else
  {
    v21 = v17 + 1;
  }

  v22 = v20 + v21;
  v23 = v20 + v21 + v18;
  v24 = (v23 & ~v18) + *(v14 + 64);
  if (a3 <= v19)
  {
    goto LABEL_27;
  }

  if (v24 > 3)
  {
    v8 = 1;
    if (v19 >= a2)
    {
      goto LABEL_16;
    }

LABEL_28:
    v27 = ~v19 + a2;
    if (v24 >= 4)
    {
      bzero(a1, v24);
      *a1 = v27;
      v28 = 1;
      if (v8 > 1)
      {
        goto LABEL_30;
      }

LABEL_66:
      if (v8)
      {
        a1[v24] = v28;
      }

      return;
    }

    v28 = (v27 >> (8 * v24)) + 1;
    if (v24)
    {
      v30 = v27 & ~(-1 << (8 * v24));
      bzero(a1, v24);
      if (v24 != 3)
      {
        if (v24 == 2)
        {
          *a1 = v30;
          if (v8 <= 1)
          {
            goto LABEL_66;
          }
        }

        else
        {
          *a1 = v27;
          if (v8 <= 1)
          {
            goto LABEL_66;
          }
        }

LABEL_30:
        if (v8 == 2)
        {
          *&a1[v24] = v28;
        }

        else
        {
          *&a1[v24] = v28;
        }

        return;
      }

      *a1 = v30;
      a1[2] = BYTE2(v30);
    }

    if (v8 <= 1)
    {
      goto LABEL_66;
    }

    goto LABEL_30;
  }

  v25 = ((a3 - v19 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
  if (!HIWORD(v25))
  {
    if (v25 < 0x100)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if (v25 >= 2)
    {
      v8 = v26;
    }

    else
    {
      v8 = 0;
    }

LABEL_27:
    if (v19 < a2)
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  v8 = 4;
  if (v19 < a2)
  {
    goto LABEL_28;
  }

LABEL_16:
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      *&a1[v24] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v24] = 0;
  }

  else if (v8)
  {
    a1[v24] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v13 < v15)
  {
    v29 = *(v14 + 56);

    v29(&a1[v23] & ~v18, a2, v15);
    return;
  }

  if (v13 >= a2)
  {
    v34 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
    if ((v12 & 0x80000000) != 0)
    {
      v36 = v34 + v16 + 8;
      a1 = (v36 & ~v16);
      if (v12 >= a2)
      {
        v38 = *(v10 + 56);

        v38(v36 & ~v16, (a2 + 1));
      }

      else
      {
        if (v21 <= 3)
        {
          v37 = ~(-1 << (8 * v21));
        }

        else
        {
          v37 = -1;
        }

        if (v21)
        {
          v32 = v37 & (~v12 + a2);
          if (v21 <= 3)
          {
            v33 = v21;
          }

          else
          {
            v33 = 4;
          }

          bzero(a1, v21);
          if (v33 <= 2)
          {
            if (v33 == 1)
            {
              goto LABEL_54;
            }

            goto LABEL_81;
          }

LABEL_82:
          if (v33 == 3)
          {
            *a1 = v32;
            a1[2] = BYTE2(v32);
          }

          else
          {
            *a1 = v32;
          }
        }
      }
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v35 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v35 = (a2 - 1);
      }

      *v34 = v35;
    }
  }

  else
  {
    if (v22 <= 3)
    {
      v31 = ~(-1 << (8 * v22));
    }

    else
    {
      v31 = -1;
    }

    if (v22)
    {
      v32 = v31 & (~v13 + a2);
      if (v22 <= 3)
      {
        v33 = v22;
      }

      else
      {
        v33 = 4;
      }

      bzero(a1, v22);
      if (v33 <= 2)
      {
        if (v33 == 1)
        {
LABEL_54:
          *a1 = v32;
          return;
        }

LABEL_81:
        *a1 = v32;
        return;
      }

      goto LABEL_82;
    }
  }
}

uint64_t sub_1002FFA28(uint64_t a1)
{
  v2 = sub_100140278(&unk_1008DC740);
  __chkstk_darwin(v2 - 8);
  sub_1002FFF8C(a1, &v5 - v3);
  sub_100140278(&qword_1008DC7F0);
  Binding.wrappedValue.setter();
  return sub_1002FFFFC(a1);
}

uint64_t sub_1002FFAD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v23 = a3;
  v24 = a4;
  v22 = a2;
  v25 = a1;
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ViewSizeCalculator();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v20 - v13;
  v21 = static Color.clear.getter();
  (*(v11 + 16))(v14, v22, v10);
  (*(v7 + 16))(v9, v25, v6);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = (v12 + *(v7 + 80) + v15) & ~*(v7 + 80);
  v17 = swift_allocObject();
  v18 = v24;
  *(v17 + 16) = v23;
  *(v17 + 24) = v18;
  (*(v11 + 32))(v17 + v15, v14, v10);
  result = (*(v7 + 32))(v17 + v16, v9, v6);
  *a5 = v21;
  a5[1] = sub_1002FFEA4;
  a5[2] = v17;
  a5[3] = 0;
  a5[4] = 0;
  return result;
}

uint64_t sub_1002FFD08(uint64_t a1, uint64_t a2)
{
  v3 = sub_100140278(&unk_1008DC740);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for GeometryProxy();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  return sub_1002FFA28(v5);
}

uint64_t sub_1002FFE08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for ViewSizeCalculator() - 8);
  v8 = v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1002FFAD4(a1, v8, v5, v6, a2);
}

uint64_t sub_1002FFEA4()
{
  v1 = *(type metadata accessor for ViewSizeCalculator() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for GeometryProxy() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1002FFD08(v0 + v2, v5);
}

uint64_t sub_1002FFF8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008DC740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002FFFFC(uint64_t a1)
{
  v2 = sub_100140278(&unk_1008DC740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100300064(uint64_t a1)
{
  v3 = type metadata accessor for AAUIAwardsDataProviderSection();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v4;
  v8 = *(v4 + 16);
  v62 = v7;
  v8(v7, a1, v3, v5);
  v68 = *&v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_healthStore];
  v9 = *&v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_friendListManager];
  sub_100007C5C(&v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider], v71);
  v11 = *&v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_formattingManager];
  v58 = *&v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_badgeImageFactory];
  v10 = v58;
  v59 = v11;
  v12 = *&v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_localizationProvider];
  v63 = *&v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_resourceProvider];
  v64 = v12;
  v13 = *&v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_fitnessAppContext];
  v14 = *&v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_workoutFormattingManager];
  v65 = *&v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_pauseRingsCoordinator];
  v66 = v14;
  v55 = v1;
  v67 = *&v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_workoutDataProvider];
  v69 = type metadata accessor for TrophyCaseSectionViewController();
  v15 = objc_allocWithZone(v69);
  *&v15[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_transitionAnimator] = 0;
  *&v15[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_transitionAnimatorFromViewController] = 0;
  *&v15[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_numberOfCellPerRow] = 3;
  *&v15[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_cellWidth] = 0;
  v16 = OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_cellHeightsCache;
  *&v15[v16] = [objc_allocWithZone(NSCache) init];
  v57 = v3;
  (v8)(&v15[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_section], v7, v3);
  v17 = v68;
  *&v15[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_healthStore] = v68;
  v18 = v9;
  *&v15[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_friendListManager] = v9;
  sub_100007C5C(v71, &v15[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_achievementDataProvider]);
  *&v15[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_badgeImageFactory] = v10;
  *&v15[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_formattingManager] = v11;
  v19 = v63;
  v20 = v64;
  *&v15[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_resourceProvider] = v63;
  *&v15[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_localizationProvider] = v20;
  v21 = v65;
  v22 = v66;
  *&v15[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_pauseRingsCoordinator] = v65;
  *&v15[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_fitnessAppContext] = v13;
  *&v15[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_workoutFormattingManager] = v22;
  v23 = v67;
  *&v15[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_workoutDataProvider] = v67;
  v61 = v73;
  v60 = sub_1000066AC(v71, v72);
  v24 = v17;
  v25 = v18;
  v26 = v58;
  v27 = v59;
  v28 = v19;
  v29 = v62;
  v30 = v20;
  v31 = v21;
  v32 = v13;
  v33 = v22;
  v34 = v23;
  *&v15[OBJC_IVAR____TtC10FitnessApp31TrophyCaseSectionViewController_achievements] = dispatch thunk of AAUIAwardsDataProviding.achievements(forSection:)();
  v35 = [objc_allocWithZone(UICollectionViewLayout) init];
  v70.receiver = v15;
  v70.super_class = v69;
  v36 = objc_msgSendSuper2(&v70, "initWithCollectionViewLayout:", v35);

  v37 = v36;
  v38 = [v37 navigationItem];
  [v38 setLargeTitleDisplayMode:2];

  v39 = [v37 collectionView];
  if (!v39)
  {
    __break(1u);
    goto LABEL_8;
  }

  v40 = v39;
  v41 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  [v41 setItemSize:{UICollectionViewFlowLayoutAutomaticSize.width, UICollectionViewFlowLayoutAutomaticSize.height}];
  [v41 setMinimumInteritemSpacing:10.0];
  [v41 setSectionInset:{0.0, 10.0, 0.0, 10.0}];
  [v40 setCollectionViewLayout:v41];

  v42 = [v37 collectionView];
  if (!v42)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v43 = v42;
  sub_1000059F8(0, &qword_1008E7F60);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v45 = String._bridgeToObjectiveC()();
  [v43 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v45];

  v46 = [v37 collectionView];
  if (!v46)
  {
LABEL_9:
    __break(1u);
    return;
  }

  type metadata accessor for TrophyCaseSectionHeaderView();
  v47 = swift_getObjCClassFromMetadata();
  v48 = UICollectionElementKindSectionHeader;
  v49 = String._bridgeToObjectiveC()();
  [v46 registerClass:v47 forSupplementaryViewOfKind:v48 withReuseIdentifier:v49];

  v50 = [objc_opt_self() defaultCenter];
  [v50 addObserver:v37 selector:"preferredContentSizeDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  sub_1000066AC(v71, v72);
  sub_100045D40(&unk_1008E99D0, 255, type metadata accessor for TrophyCaseSectionViewController);
  v51 = v37;
  dispatch thunk of AAUIAwardsDataProviding.add(observer:)();

  (*(v56 + 8))(v29, v57);
  sub_100005A40(v71);
  v52 = [v55 navigationController];
  if (v52)
  {
    v53 = v52;
    [v52 pushViewController:v51 animated:1];
  }
}

char *sub_1003006E0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC10FitnessApp34TrophyCaseViewControllerFooterView_label;
  v11 = [objc_allocWithZone(UILabel) init];
  v12 = UILabel.withNumberOfLines(_:)();

  v13 = UILabel.withLineBreakMode(_:)();
  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5[v10] = v13;
  v18.receiver = v5;
  v18.super_class = type metadata accessor for TrophyCaseViewControllerFooterView();
  v14 = objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtC10FitnessApp34TrophyCaseViewControllerFooterView_label];
  v16 = v14;
  [v16 addSubview:v15];
  sub_100300C1C();

  return v16;
}

id sub_100300810(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10FitnessApp34TrophyCaseViewControllerFooterView_label;
  v5 = [objc_allocWithZone(UILabel) init];
  v6 = UILabel.withNumberOfLines(_:)();

  v7 = UILabel.withLineBreakMode(_:)();
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2[v4] = v7;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for TrophyCaseViewControllerFooterView();
  v8 = objc_msgSendSuper2(&v10, "initWithCoder:", a1);

  if (v8)
  {
  }

  return v8;
}

void sub_10030090C(char a1)
{
  if (a1)
  {
    v2 = [objc_opt_self() mainBundle];
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 localizedStringForKey:v3 value:0 table:0];

    if (!v4)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v4 = String._bridgeToObjectiveC()();
    }

    v5 = *(v1 + OBJC_IVAR____TtC10FitnessApp34TrophyCaseViewControllerFooterView_label);
    sub_100140278(&unk_1008E7FB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1006D1F70;
    *(inited + 32) = NSFontAttributeName;
    v7 = objc_opt_self();
    v8 = NSFontAttributeName;
    v9 = [v7 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v10 = sub_1000059F8(0, &qword_1008F73C0);
    *(inited + 40) = v9;
    *(inited + 64) = v10;
    *(inited + 72) = NSForegroundColorAttributeName;
    v11 = objc_opt_self();
    v12 = NSForegroundColorAttributeName;
    v13 = [v11 secondaryLabelColor];
    *(inited + 104) = sub_1000059F8(0, &qword_1008E7FC0);
    *(inited + 80) = v13;
    sub_1004C9200(inited);
    swift_setDeallocating();
    sub_100140278(&unk_1008EE730);
    swift_arrayDestroy();
    v14 = objc_allocWithZone(NSAttributedString);
    type metadata accessor for Key(0);
    sub_100045D40(&qword_1008E7FD0, 255, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v16 = [v14 initWithString:v4 attributes:isa];

    [v5 setAttributedText:v16];
  }

  else
  {
    v17 = *(v1 + OBJC_IVAR____TtC10FitnessApp34TrophyCaseViewControllerFooterView_label);

    [v17 setAttributedText:0];
  }
}

void sub_100300C1C()
{
  v1 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D5300;
  v3 = *&v0[OBJC_IVAR____TtC10FitnessApp34TrophyCaseViewControllerFooterView_label];
  v4 = [v3 topAnchor];
  v5 = [v0 topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v2 + 32) = v6;
  v7 = [v3 bottomAnchor];
  v8 = [v0 bottomAnchor];
  v9 = [v7 constraintEqualToAnchor:v8 constant:-15.0];

  *(v2 + 40) = v9;
  v10 = [v3 trailingAnchor];
  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v2 + 48) = v12;
  v13 = [v3 leadingAnchor];
  v14 = [v0 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v2 + 56) = v15;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 activateConstraints:isa];
}

id sub_100300E84()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrophyCaseViewControllerFooterView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100300EEC()
{
  result = _UISolariumEnabled();
  v1 = 10.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_100925618 = *&v1;
  return result;
}

void sub_100300F1C()
{
  v1 = v0;
  sub_1000066AC(&v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider], *&v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider + 24]);
  v2 = dispatch thunk of AAUIAwardsDataProviding.restoringPlaceholderAchievement()();
  v3 = *&v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_restoringView];
  v10 = v2;
  if (v2)
  {
    v4 = *&v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_resourceProvider];
    v5 = v2;
    v6 = [v4 badgeConfigurationForAchievement:v5];
    v7 = OBJC_IVAR____TtC10FitnessApp23TrophyCaseRestoringView_badgeView;
    [*(v3 + OBJC_IVAR____TtC10FitnessApp23TrophyCaseRestoringView_badgeView) setConfiguration:v6];
    [*(v3 + v7) setPaused:0];
    [*(v3 + v7) resizeBadgeForCurrentViewSize];
  }

  v8 = [v1 collectionView];
  if (v8)
  {
    v9 = v8;
    [v8 setBackgroundView:v3];
  }

  else
  {
    __break(1u);
  }
}

id sub_100301084()
{
  sub_100007C5C(v0 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider, v5);
  sub_1000066AC(v5, v5[3]);
  sub_100045D40(&unk_1008E7FA0, v1, type metadata accessor for TrophyCaseViewController);
  v2 = v0;
  dispatch thunk of AAUIAwardsDataProviding.remove(observer:)();

  sub_100005A40(v5);
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TrophyCaseViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10030136C(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_transitionAnimatorFromViewController];
  *&v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_transitionAnimatorFromViewController] = 0;

  v4 = *&v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_transitionAnimator];
  *&v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_transitionAnimator] = 0;

  v5 = [v1 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 setDelegate:v1];
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for TrophyCaseViewController();
  objc_msgSendSuper2(&v7, "viewDidAppear:", a1 & 1);
  sub_10030179C();
}

uint64_t sub_10030146C()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000059F8(0, &qword_1008E3FD0);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100304EF8;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_1008522C8;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100045D40(&qword_1008E33B0, 255, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10002621C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_10030179C()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_initialAchievement];
  if (v1 && (v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_initialAchievementPresented] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_initialAchievementPresented] = 1;
    v2 = v1;
    LODWORD(v73) = [v2 unearned] ^ 1;
    v3 = v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_forModalPresentation];
    v70 = v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_shouldShowCelebration];
    v71 = v3;
    v69 = type metadata accessor for TrophyCaseAwardDetailViewController();
    v4 = *&v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_healthStore];
    v5 = *&v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_friendListManager];
    sub_100007C5C(&v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider], v75);
    v6 = *&v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_badgeImageFactory];
    v7 = *&v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_resourceProvider];
    v8 = *&v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_formattingManager];
    v9 = *&v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_pauseRingsCoordinator];
    v63 = *&v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_localizationProvider];
    v64 = v9;
    v10 = *&v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_workoutFormattingManager];
    v65 = *&v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_fitnessAppContext];
    v66 = v10;
    v11 = v76;
    v67 = *&v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_workoutDataProvider];
    v68 = v77;
    v12 = sub_1001DF03C(v75, v76);
    v72 = &v58;
    v13 = __chkstk_darwin(v12);
    v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v15, v13);
    v17 = v2;
    v62 = v4;
    v61 = v5;
    v60 = v6;
    v18 = v7;
    v59 = v8;
    v19 = v63;
    v20 = v64;
    v64 = v20;
    v21 = v65;
    v65 = v21;
    v22 = v66;
    v23 = v67;
    v57 = v11;
    v55 = v20;
    v56 = v21;
    v25 = v61;
    v24 = v62;
    v26 = v15;
    v27 = v59;
    v28 = v60;
    sub_1006524C4(v17, v62, v61, v26, v60, v18, v59, v19, v55, v56, v22, v23, v71, v70, v73, 1, 0, v69, v57, v68);
    v73 = v29;

    sub_100005A40(v75);
    v30 = static os_log_type_t.error.getter();
    v31 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v30))
    {
      v32 = v31;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v74 = v34;
      *v33 = 136315138;
      v35 = [v17 template];
      v36 = [v35 uniqueName];

      v37 = v0;
      if (v36)
      {
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;
      }

      else
      {
        v38 = 0;
        v40 = 0;
      }

      v75[0] = v38;
      v75[1] = v40;
      sub_100140278(&qword_1008DC8F8);
      v41 = Optional.description.getter();
      v43 = v42;

      v44 = sub_10000AFDC(v41, v43, &v74);

      *(v33 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v32, v30, "[TrophyCase] Presenting detail view controller for template: %s", v33, 0xCu);
      sub_100005A40(v34);

      v0 = v37;
    }

    v45 = [v0 navigationController];
    v46 = v73;
    if (v45)
    {
      v47 = v45;
      [v45 pushViewController:v73 animated:0];
    }

    v48 = static os_log_type_t.error.getter();
    v49 = HKLogActivity;
    if (os_log_type_enabled(HKLogActivity, v48))
    {
      v50 = v49;
      v51 = v0;
      v52 = swift_slowAlloc();
      *v52 = 67109120;
      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        v53 = 0;
      }

      else
      {
        v53 = 1;
      }

      *(v52 + 4) = v53;

      _os_log_impl(&_mh_execute_header, v50, v48, "[TrophyCase] Calling back delegate for trophyCaseDidBeginCelebration, delegate == nil ? %{BOOL}d", v52, 8u);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong trophyCaseDidBeginCelebration:v0];

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_100301D34(uint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (!*(&off_100844FD8 + a1 + 32))
  {
    v17 = objc_opt_self();
    v18 = [v17 fractionalWidthDimension:1.0];
    v19 = [v17 estimatedDimension:44.0];
    v20 = objc_opt_self();
    v1 = [v20 sizeWithWidthDimension:v18 heightDimension:v19];

    v21 = [objc_opt_self() itemWithLayoutSize:v1];
    v22 = [v17 fractionalWidthDimension:1.0];
    v23 = [v17 estimatedDimension:44.0];
    v2 = [v20 sizeWithWidthDimension:v22 heightDimension:v23];

    v24 = objc_opt_self();
    sub_100140278(&unk_1008E4E20);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1006D4E70;
    *(v25 + 32) = v21;
    sub_1000059F8(0, &unk_1008E7F70);
    v3 = v21;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v4 = [v24 verticalGroupWithLayoutSize:v2 subitems:isa];

    v27 = [objc_opt_self() fixedSpacing:10.0];
    [v4 setInterItemSpacing:v27];

    v5 = [objc_opt_self() sectionWithGroup:v4];
    [v5 setInterGroupSpacing:10.0];
    if (qword_1008DA900 != -1)
    {
      swift_once();
    }

    [v5 setContentInsets:{0.0, *&qword_100925618, *&qword_100925618, *&qword_100925618}];
    goto LABEL_10;
  }

  if (*(&off_100844FD8 + a1 + 32) != 1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v29 = Strong;
      v30 = OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_numberOfCellPerRow;
      v31 = *(Strong + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_numberOfCellPerRow);
      v32 = objc_opt_self();
      if (v31 <= 1.0)
      {
        v34 = &selRef_estimatedDimension_;
        v33 = 44.0;
      }

      else
      {
        v33 = *(v29 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_maxCellHeight);
        v34 = &selRef_absoluteDimension_;
      }

      v36 = [v32 *v34];
      v5 = objc_opt_self();
      v37 = 1.0 / *&v30[v29];
      v38 = v36;
      v39 = [v5 fractionalWidthDimension:v37];
      v40 = objc_opt_self();
      v41 = [v40 sizeWithWidthDimension:v39 heightDimension:v38];

      v54 = v41;
      v42 = [objc_opt_self() itemWithLayoutSize:v41];
      v43 = [v5 fractionalWidthDimension:1.0];
      v44 = [v40 sizeWithWidthDimension:v43 heightDimension:v38];

      v45 = objc_opt_self();
      v46 = *&v30[v29];
      if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v46 > -9.22337204e18)
      {
        v53 = v38;
        if (v46 < 9.22337204e18)
        {
          v43 = [v45 horizontalGroupWithLayoutSize:v44 repeatingSubitem:v42 count:v46];
          v47 = [objc_opt_self() fixedSpacing:10.0];
          [v43 setInterItemSpacing:v47];

          v48 = [v5 fractionalWidthDimension:1.0];
          v49 = [v5 estimatedDimension:44.0];
          v40 = [v40 sizeWithWidthDimension:v48 heightDimension:v49];

          v50 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v40 elementKind:UICollectionElementKindSectionFooter alignment:5];
          v5 = [objc_opt_self() sectionWithGroup:v43];
          [v5 setInterGroupSpacing:10.0];
          sub_100140278(&unk_1008E4E20);
          v51 = swift_allocObject();
          *(v51 + 16) = xmmword_1006D4E70;
          *(v51 + 32) = v50;
          sub_1000059F8(0, &qword_1008E7F68);
          v38 = v44;
          v44 = v42;
          v30 = v50;
          v52 = Array._bridgeToObjectiveC()().super.isa;

          [v5 setBoundarySupplementaryItems:v52];

          if (qword_1008DA900 == -1)
          {
LABEL_21:
            [v5 setContentInsets:{*&qword_100925618, *&qword_100925618, *&qword_100925618, *&qword_100925618}];

            return v5;
          }

LABEL_27:
          swift_once();
          goto LABEL_21;
        }

LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_26;
    }

    return 0;
  }

  v6 = objc_opt_self();
  v7 = [v6 fractionalWidthDimension:1.0];
  v8 = [v6 estimatedDimension:44.0];
  v9 = objc_opt_self();
  v1 = [v9 sizeWithWidthDimension:v7 heightDimension:v8];

  v10 = [objc_opt_self() itemWithLayoutSize:v1];
  v11 = [v6 fractionalWidthDimension:1.0];
  v12 = [v6 estimatedDimension:44.0];
  v2 = [v9 sizeWithWidthDimension:v11 heightDimension:v12];

  v13 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1006D4E70;
  *(v14 + 32) = v10;
  sub_1000059F8(0, &unk_1008E7F70);
  v3 = v10;
  v15 = Array._bridgeToObjectiveC()().super.isa;

  v4 = [v13 horizontalGroupWithLayoutSize:v2 subitems:v15];

  v16 = [objc_opt_self() fixedSpacing:10.0];
  [v4 setInterItemSpacing:v16];

  v5 = [objc_opt_self() sectionWithGroup:v4];
  [v5 setInterGroupSpacing:10.0];
  if (qword_1008DA900 != -1)
  {
LABEL_23:
    swift_once();
  }

  [v5 setContentInsets:{0.0, *&qword_100925618, 0.0, *&qword_100925618}];
LABEL_10:

  return v5;
}

void sub_1003026E4(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v5 = Strong;
  v6 = [Strong collectionView];

  if (!v6)
  {
    __break(1u);
    return;
  }

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v8 = [v6 cellForItemAtIndexPath:isa];

  if (v8 && (v14[0] = v8, sub_1000059F8(0, &qword_1008E7F90), sub_100140278(&qword_1008E7F98), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v12 + 1))
    {
      sub_100006260(&v11, v14);
      v9 = v15;
      v10 = v16;
      sub_1000066AC(v14, v15);
      (*(v10 + 24))(a3 & 1, v9, v10);
      sub_100005A40(v14);
      return;
    }
  }

  else
  {
LABEL_7:
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  sub_10000EA04(&v11, &qword_1008E7F88);
}

void sub_1003028E4()
{
  v1 = v0;
  v2 = type metadata accessor for AAUIAwardsDataProviderSection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *&v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_numberOfCellPerRow];
  v35 = OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_maxCellHeight;
  *&v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_maxCellHeight] = 0;
  v36 = OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_maxSectionLabelHeight;
  *&v0[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_maxSectionLabelHeight] = 0;
  if (v6 > 1.0)
  {
    v7 = [v0 view];
    if (v7)
    {
      v8 = v7;
      [v7 bounds];
      v10 = v9;
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v42.origin.x = v10;
      v42.origin.y = v12;
      v42.size.width = v14;
      v42.size.height = v16;
      Width = CGRectGetWidth(v42);
      if (qword_1008DA900 != -1)
      {
        v32 = Width;
        swift_once();
        Width = v32;
      }

      v18 = (Width - (*&qword_100925618 + *&qword_100925618)) * 0.5 + -10.0;
      v19 = &v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider];
      sub_1000066AC(&v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider], *&v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider + 24]);
      v20 = dispatch thunk of AAUIAwardsDataProviding.otherSections()();
      sub_100294028(v20, 1, v18);
      *&v1[v36] = v21;
      v22 = *(v20 + 16);
      if (v22)
      {
        v33 = v20;
        v34 = OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_localizationProvider;
        v24 = *(v3 + 16);
        v23 = v3 + 16;
        v25 = v20 + ((*(v23 + 64) + 32) & ~*(v23 + 64));
        v38 = *(v23 + 56);
        v39 = v24;
        v40 = v23;
        v37 = (v23 - 8);
        v24(v5, v25, v2);
        while (1)
        {
          sub_1000066AC(v19, *(v19 + 3));
          v26 = dispatch thunk of AAUIAwardsDataProviding.topAchievement(forSection:)();
          if (v26)
          {
            v27 = v26;
            sub_1000066AC(v19, *(v19 + 3));
            v28 = dispatch thunk of AAUIAwardsDataProviding.achievementCount(forSection:)();
            sub_100294584(v5, v27, *&v1[v36], v18, v28, *&v1[v34], 1);
            v30 = v29;

            (*v37)(v5, v2);
            v31 = *&v1[v35];
            if (v31 <= v30)
            {
              v31 = v30;
            }

            *&v1[v35] = v31;
          }

          else
          {
            (*v37)(v5, v2);
          }

          v25 += v38;
          if (!--v22)
          {
            break;
          }

          v39(v5, v25, v2);
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100302C70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_numberOfCellPerRow;
    v3 = *(Strong + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_numberOfCellPerRow);
    v4 = [objc_opt_self() sharedApplication];
    v5 = [v4 preferredContentSizeCategory];

    LOBYTE(v4) = UIContentSizeCategory.isAccessibilityCategory.getter();
    v6 = 2.0;
    if (v4)
    {
      v6 = 1.0;
    }

    *&v1[v2] = v6;
    v7 = OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_maxCellHeight;
    v8 = *&v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_maxCellHeight];
    sub_1003028E4();
    if (v8 != *&v1[v7] || v3 != *&v1[v2])
    {
      v9 = [v1 collectionView];
      if (!v9)
      {
        __break(1u);
        goto LABEL_14;
      }

      v10 = v9;
      v11 = [v9 collectionViewLayout];

      [v11 invalidateLayout];
      v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_shouldReloadCollectionView] = 1;
    }

    if (v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_shouldReloadCollectionView] != 1)
    {
LABEL_11:

      return;
    }

    v1[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_shouldReloadCollectionView] = 0;
    v12 = [v1 collectionView];
    if (v12)
    {
      v13 = v12;
      [v12 reloadData];

      goto LABEL_11;
    }

LABEL_14:
    __break(1u);
  }
}

unint64_t sub_100302ECC(unint64_t a1, uint64_t a2)
{
  v122 = type metadata accessor for IndexPath();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v119 = v5;
  v120 = &v108[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v129 = type metadata accessor for AAUIAwardsDataProviderSection();
  v131 = *(v129 - 8);
  v6 = *(v131 + 64);
  __chkstk_darwin(v129);
  v128 = &v108[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v117 = &v108[-v8];
  __chkstk_darwin(v9);
  v11 = &v108[-v10];
  __chkstk_darwin(v12);
  v124 = &v108[-v13];
  v14 = sub_100140278(&qword_1008E7F80);
  __chkstk_darwin(v14 - 8);
  v125 = &v108[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v108[-v17];
  __chkstk_darwin(v19);
  v21 = &v108[-v20];
  __chkstk_darwin(v22);
  v130 = &v108[-v23];
  v126 = v2;
  v24 = &v2[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider];
  sub_1000066AC(&v2[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider], *&v2[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider + 24]);
  v25 = dispatch thunk of AAUIAwardsDataProviding.otherSections()();
  v127 = a2;
  v26 = IndexPath.section.getter();
  if (v26 <= 2)
  {
    if (v26 < 0)
    {
      __break(1u);
      goto LABEL_41;
    }

    v28 = *(&off_100844FB0 + v26 + 32);
    v123 = v25;
    if (v28)
    {
      if (v28 == 1)
      {
        v29 = String._bridgeToObjectiveC()();
        isa = IndexPath._bridgeToObjectiveC()().super.isa;
        v31 = [a1 dequeueReusableCellWithReuseIdentifier:v29 forIndexPath:isa];

        v32 = type metadata accessor for TrophyCaseSectionCell();
        v33 = swift_dynamicCastClass();
        v118 = v31;
        if (v33)
        {
          v34 = v31;
          v35 = &off_10084FD40;
        }

        else
        {
          v32 = 0;
          v35 = 0;
        }

        v55 = v129;
        v56 = v131;
        v137 = v33;
        *&v138 = 0;
        *(&v138 + 1) = v32;
        v139 = v35;
        sub_1000066AC(v24, *(v24 + 3));
        v61 = v130;
        dispatch thunk of AAUIAwardsDataProviding.mostRecentSection()();
        sub_10001B104(v61, v21, &qword_1008E7F80);
        if ((*(v56 + 48))(v21, 1, v55) == 1)
        {
          sub_10000EA04(v21, &qword_1008E7F80);
          v49 = 0;
          v59 = _swiftEmptyArrayStorage;
        }

        else
        {
          (*(v56 + 32))(v11, v21, v55);
          sub_1000066AC(v24, *(v24 + 3));
          v59 = dispatch thunk of AAUIAwardsDataProviding.achievementStack(forSection:)();
          (*(v56 + 8))(v11, v55);
          v49 = 0;
        }

        v60 = 1;
        v43 = v130;
      }

      else
      {
        v46 = String._bridgeToObjectiveC()();
        v47 = IndexPath._bridgeToObjectiveC()().super.isa;
        v48 = [a1 dequeueReusableCellWithReuseIdentifier:v46 forIndexPath:v47];

        v49 = *&v126[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_numberOfCellPerRow] > 1.0;
        v50 = *(v123 + 16);
        v51 = IndexPath.row.getter();
        v118 = v48;
        if (v51 < v50)
        {
          v115 = v49;
          v52 = type metadata accessor for TrophyCaseSectionCell();
          v53 = swift_dynamicCastClass();
          v54 = v48;
          v55 = v129;
          v43 = v130;
          v56 = v131;
          if (v53)
          {
            v57 = v54;
            v58 = &off_10084FD40;
          }

          else
          {
            v52 = 0;
            v58 = 0;
          }

          v137 = v53;
          *&v138 = 0;
          *(&v138 + 1) = v52;
          v139 = v58;
          sub_1000066AC(v24, *(v24 + 3));
          v104 = dispatch thunk of AAUIAwardsDataProviding.otherSections()();
          result = IndexPath.row.getter();
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (result < *(v104 + 16))
          {
            (*(v56 + 16))(v43, v104 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * result, v55);

            (*(v56 + 56))(v43, 0, 1, v55);
            sub_10001B104(v43, v18, &qword_1008E7F80);
            if ((*(v56 + 48))(v18, 1, v55) == 1)
            {
              sub_10000EA04(v18, &qword_1008E7F80);
              v59 = _swiftEmptyArrayStorage;
            }

            else
            {
              v105 = v117;
              (*(v56 + 32))(v117, v18, v55);
              sub_1000066AC(v24, *(v24 + 3));
              v59 = dispatch thunk of AAUIAwardsDataProviding.achievementStack(forSection:)();
              (*(v56 + 8))(v105, v55);
            }

            v60 = 2;
            v62 = v128;
            v68 = v125;
            v49 = v115;
LABEL_25:
            sub_10001B104(v43, v68, &qword_1008E7F80);
            if ((*(v56 + 48))(v68, 1, v55) == 1)
            {

              v69 = &qword_1008E7F80;
              v70 = v68;
LABEL_32:
              sub_10000EA04(v70, v69);
              v103 = [objc_allocWithZone(UICollectionViewCell) init];

              sub_10000EA04(v43, &qword_1008E7F80);
              sub_10000EA04(&v137, &qword_1008E7F88);
              return v103;
            }

            v71 = *(v56 + 32);
            v117 = (v56 + 32);
            v114 = v71;
            v71(v62, v68, v55);
            sub_10001B104(&v137, &v132, &qword_1008E7F88);
            if (!v133)
            {
              (*(v56 + 8))(v62, v55);

              v69 = &qword_1008E7F88;
              v70 = &v132;
              goto LABEL_32;
            }

            v109 = v60;
            v110 = v59;
            v115 = v49;
            sub_100006260(&v132, v134);
            sub_1000066AC(v24, *(v24 + 3));
            v125 = dispatch thunk of AAUIAwardsDataProviding.topAchievement(forSection:)();
            sub_1000066AC(v24, *(v24 + 3));
            v111 = dispatch thunk of AAUIAwardsDataProviding.achievementCount(forSection:)();
            v112 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v72 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v73 = v56 + 16;
            v113 = *(v56 + 16);
            v74 = v6;
            v116 = v6;
            v75 = v124;
            v113(v124, v62, v55);
            v76 = v121;
            v77 = v120;
            v78 = v122;
            (v121[2])(v120, v127, v122);
            v79 = *(v73 + 64);
            v80 = (v79 + 40) & ~v79;
            v127 = v79 | 7;
            v81 = (v74 + *(v76 + 80) + v80) & ~*(v76 + 80);
            v82 = swift_allocObject();
            v82[2] = v125;
            v82[3] = v72;
            v82[4] = v112;
            v83 = v82;
            v84 = v55;
            v85 = v114;
            v114(v82 + v80, v75, v84);
            v86 = v76[4];
            v121 = v83;
            v86(v83 + v81, v77, v78);
            v87 = swift_allocObject();
            v88 = v126;
            swift_unknownObjectWeakInit();
            v89 = v129;
            v113(v75, v128, v129);
            v21 = swift_allocObject();
            *(v21 + 2) = v87;
            v18 = v125;
            v85(&v21[(v79 + 24) & ~v79], v75, v89);
            v24 = v18;
            result = [v88 view];
            if (result)
            {
              v90 = result;

              [v90 bounds];
              v92 = v91;
              v94 = v93;
              v96 = v95;
              v98 = v97;

              v141.origin.x = v92;
              v141.origin.y = v94;
              v141.size.width = v96;
              v141.size.height = v98;
              Width = CGRectGetWidth(v141);
              a2 = v130;
              a1 = v109;
              if (qword_1008DA900 == -1)
              {
LABEL_30:
                v99 = (Width - (*&qword_100925618 + *&qword_100925618)) * 0.5 + -10.0;
                v100 = v135;
                v101 = v136;
                sub_1000066AC(v134, v135);
                v107 = v100;
                v102 = v128;
                (*(v101 + 40))(v128, v18, v110, v111, *&v126[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_badgeImageFactory], *&v126[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_localizationProvider], a1, v115, v99, *&v126[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_maxSectionLabelHeight], sub_100305780, v121, sub_100305854, v21, v107, v101);

                (*(v131 + 8))(v102, v129);
                sub_10000EA04(a2, &qword_1008E7F80);
                sub_10000EA04(&v137, &qword_1008E7F88);
                sub_100005A40(v134);
                return v118;
              }

LABEL_41:
              v106 = Width;
              swift_once();
              Width = v106;
              goto LABEL_30;
            }

            goto LABEL_44;
          }

          __break(1u);
LABEL_44:
          __break(1u);
          return result;
        }

        v43 = v130;
        v56 = v131;
        v55 = v129;
        (*(v131 + 56))(v130, 1, 1, v129);
        v139 = 0;
        v137 = 0u;
        v138 = 0u;
        v59 = _swiftEmptyArrayStorage;
        v60 = 2;
      }

      v62 = v128;
    }

    else
    {
      v38 = String._bridgeToObjectiveC()();
      v39 = IndexPath._bridgeToObjectiveC()().super.isa;
      v40 = [a1 dequeueReusableCellWithReuseIdentifier:v38 forIndexPath:v39];

      v41 = type metadata accessor for TrophyCaseGoForItCell();
      v42 = swift_dynamicCastClass();
      v43 = v130;
      v118 = v40;
      v116 = v6;
      if (v42)
      {
        v44 = v40;
        v45 = &off_1008516C8;
      }

      else
      {
        v45 = 0;
        v41 = 0;
      }

      v63 = v131;
      v137 = v42;
      *&v138 = 0;
      *(&v138 + 1) = v41;
      v139 = v45;
      sub_1000066AC(v24, *(v24 + 3));
      v64 = enum case for AAUIAwardsDataProviderSection.goForIt(_:);
      v65 = *(v63 + 104);
      v66 = v124;
      v67 = v129;
      v65(v124, enum case for AAUIAwardsDataProviderSection.goForIt(_:), v129);
      v59 = dispatch thunk of AAUIAwardsDataProviding.achievementStack(forSection:)();
      (*(v131 + 8))(v66, v67);
      v65(v43, v64, v67);
      v56 = v131;
      v55 = v67;
      (*(v131 + 56))(v43, 0, 1, v67);
      v49 = 0;
      v60 = 2;
      v62 = v128;
      v6 = v116;
    }

    v68 = v125;
    goto LABEL_25;
  }

  v36 = objc_allocWithZone(UICollectionViewCell);

  return [v36 init];
}

void sub_100303E94(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v91 = a4;
  v7 = type metadata accessor for IndexPath();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v92 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AAUIAwardsDataProviderSection();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v90 = v8;
      v97 = Strong;
      v15 = Strong;
      sub_1000059F8(0, &qword_1008E7F90);
      v16 = a1;
      v17 = v15;
      sub_100140278(&qword_1008E7F98);
      if (swift_dynamicCast())
      {
        sub_100006260(&aBlock, v98);
        swift_beginAccess();
        v18 = swift_unknownObjectWeakLoadStrong();
        if (v18)
        {
          v89 = a5;
          v19 = v18;
          v86 = v17;
          v20 = v99;
          v21 = v100;
          sub_1000066AC(v98, v99);
          v22 = (*(v21 + 32))(v20, v21);
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v85 = v16;
          v29 = [v16 unearned];
          v88 = v9;
          v76 = v7;
          if (v29)
          {
            LODWORD(v91) = 0;
          }

          else
          {
            (*(v11 + 104))(v13, enum case for AAUIAwardsDataProviderSection.goForIt(_:), v10);
            sub_100045D40(&unk_1008E4DE0, 255, &type metadata accessor for AAUIAwardsDataProviderSection);
            v30 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*(v11 + 8))(v13, v10);
            LODWORD(v91) = v30 ^ 1;
          }

          v84 = type metadata accessor for TrophyCaseAwardDetailViewController();
          v87 = v19;
          v31 = *(v19 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_healthStore);
          v78 = *(v19 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_friendListManager);
          sub_100007C5C(v19 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider, &aBlock);
          v32 = *(v19 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_badgeImageFactory);
          v33 = *(v19 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_resourceProvider);
          v34 = *(v19 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_formattingManager);
          v77 = *(v19 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_localizationProvider);
          v79 = *(v19 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_pauseRingsCoordinator);
          v80 = *(v19 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_fitnessAppContext);
          v81 = *(v19 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_workoutFormattingManager);
          v82 = *(v19 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_workoutDataProvider);
          v35 = *(&v94 + 1);
          v83 = v95;
          v36 = sub_1001DF03C(&aBlock, *(&v94 + 1));
          v75 = &v73;
          v37 = __chkstk_darwin(v36);
          v39 = &v73 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v40 + 16))(v39, v37);
          v41 = v85;
          v74 = v31;
          v78 = v78;
          v42 = v32;
          v73 = v33;
          v43 = v34;
          v44 = v77;
          v45 = v79;
          v79 = v45;
          v46 = v80;
          v80 = v46;
          v47 = v81;
          v48 = v82;
          v72 = v35;
          LODWORD(v85) = v91 & 1;
          v70 = v45;
          v71 = v46;
          v49 = v74;
          v50 = v78;
          v51 = v73;
          sub_1006524C4(v41, v74, v78, v39, v42, v73, v43, v44, v70, v71, v47, v48, 0, 0, v91 & 1, 1, 0, v84, v72, v83);
          v84 = v52;
          v91 = v41;

          sub_100005A40(&aBlock);
          v53 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v54 = v90;
          v83 = *(v90 + 16);
          v55 = v92;
          v56 = v76;
          (v83)(v92, v89, v76);
          v57 = (*(v54 + 80) + 24) & ~*(v54 + 80);
          v58 = swift_allocObject();
          *(v58 + 16) = v53;
          v59 = *(v54 + 32);
          v59(v58 + v57, v55, v56);
          v60 = swift_allocObject();
          v16 = v87;
          swift_unknownObjectWeakInit();
          (v83)(v55, v89, v56);
          v61 = swift_allocObject();
          *(v61 + 16) = v60;
          v59(v61 + v57, v55, v56);
          v62 = objc_allocWithZone(AAUIAchievementDetailTransitionAnimator);
          v95 = sub_1003058B8;
          v96 = v58;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v94 = sub_1000449A8;
          *(&v94 + 1) = &unk_1008523B8;
          v63 = _Block_copy(&aBlock);
          v64 = v84;

          v95 = sub_10030598C;
          v96 = v61;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v94 = sub_1000449A8;
          *(&v94 + 1) = &unk_1008523E0;
          v65 = _Block_copy(&aBlock);

          v17 = v86;
          v66 = [v62 initWithPresentingViewController:v16 detailViewController:v64 shouldPlayFlipInAnimation:v85 initialBadgeFrame:v86 conversionView:v63 didStartAnimationBlock:v65 didFinishAnimationBlock:{v22, v24, v26, v28}];
          _Block_release(v65);
          _Block_release(v63);

          v67 = *&v16[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_transitionAnimator];
          *&v16[OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_transitionAnimator] = v66;

          v68 = [v16 navigationController];
          if (v68)
          {
            v69 = v68;
            [v68 pushViewController:v64 animated:1];
          }
        }

        sub_100005A40(v98);
      }

      else
      {

        v95 = 0;
        v94 = 0u;
        aBlock = 0u;
        sub_10000EA04(&aBlock, &qword_1008E7F88);
      }
    }
  }
}

void sub_100304868(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_100300064(a2);
  }
}

id sub_100304AD0(void *a1, uint64_t a2, uint64_t a3)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v6 == a3)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      v9 = objc_allocWithZone(UICollectionReusableView);

      return [v9 init];
    }
  }

  sub_1000066AC((v3 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider), *(v3 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider + 24));
  v11 = *(dispatch thunk of AAUIAwardsDataProviding.otherSections()() + 16);

  v12 = v11 + 2;
  if (__OFADD__(v11, 2))
  {
    __break(1u);
  }

  else
  {
    v13 = UICollectionElementKindSectionFooter;
    v14 = String._bridgeToObjectiveC()();
    isa = IndexPath._bridgeToObjectiveC()().super.isa;
    v16 = [a1 dequeueReusableSupplementaryViewOfKind:v13 withReuseIdentifier:v14 forIndexPath:isa];

    type metadata accessor for TrophyCaseViewControllerFooterView();
    if (swift_dynamicCastClass())
    {
      v16 = v16;
      v17 = *(static AAUIAwardsDataProviderSection.allCases.getter() + 16);

      sub_10030090C(v12 < v17);
    }

    return v16;
  }

  return result;
}

void sub_100304F00()
{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_restoringView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for TrophyCaseRestoringView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v0 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_initialAchievementPresented) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_transitionAnimator) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_transitionAnimatorFromViewController) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_numberOfCellPerRow) = 0x4000000000000000;
  *(v0 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_maxCellHeight) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_maxSectionLabelHeight) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_cellWidth) = 0;
  *(v0 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_shouldReloadCollectionView) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10030500C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider);
  sub_1000066AC((v0 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider), *(v0 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider + 24));
  if (dispatch thunk of AAUIAwardsDataProviding.isCloudRestoreComplete()() & 1) != 0 && (sub_1000066AC(v2, v2[3]), (dispatch thunk of AAUIAwardsDataProviding.isFirstHistoricalRunComplete()()))
  {
    v3 = 0.0;
    v4 = 3;
  }

  else
  {
    v4 = 0;
    v3 = 1.0;
  }

  [*(v1 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_restoringView) setAlpha:v3];
  return v4;
}

BOOL sub_1003050C0(uint64_t a1)
{
  v3 = sub_100140278(&qword_1008E7F80);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = type metadata accessor for AAUIAwardsDataProviderSection();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = 0;
  if (a1 <= 2)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      v11 = *(&off_100845000 + a1 + 32);
      sub_1000066AC((v1 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider), *(v1 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider + 24));
      if (v11)
      {
        if (v11 == 1)
        {
          dispatch thunk of AAUIAwardsDataProviding.mostRecentSection()();
          v12 = (*(v7 + 48))(v5, 1, v6) != 1;
          sub_10000EA04(v5, &qword_1008E7F80);
        }

        else
        {
          v12 = *(dispatch thunk of AAUIAwardsDataProviding.otherSections()() + 16);
        }

        return v12;
      }

      else
      {
        (*(v7 + 104))(v9, enum case for AAUIAwardsDataProviderSection.goForIt(_:), v6);
        v13 = dispatch thunk of AAUIAwardsDataProviding.achievementCount(forSection:)();
        (*(v7 + 8))(v9, v6);
        return v13 > 0;
      }
    }
  }

  return result;
}

uint64_t sub_1003052D4()
{
  v1 = type metadata accessor for AAUIAwardsDataProviderSection();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008E7F80);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  result = IndexPath.section.getter();
  if (result > 2)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (!*(&off_100845028 + result + 32))
  {
    (*(v2 + 104))(v10, enum case for AAUIAwardsDataProviderSection.goForIt(_:), v1);
LABEL_10:
    (*(v2 + 56))(v10, 0, 1, v1);
    goto LABEL_11;
  }

  if (*(&off_100845028 + result + 32) != 1)
  {
    sub_1000066AC((v0 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider), *(v0 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider + 24));
    v12 = dispatch thunk of AAUIAwardsDataProviding.otherSections()();
    result = IndexPath.row.getter();
    if ((result & 0x8000000000000000) == 0)
    {
      if (result < *(v12 + 16))
      {
        (*(v2 + 16))(v10, v12 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * result, v1);

        goto LABEL_10;
      }

LABEL_18:
      __break(1u);
      return result;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000066AC((v0 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider), *(v0 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_achievementDataProvider + 24));
  dispatch thunk of AAUIAwardsDataProviding.mostRecentSection()();
LABEL_11:
  sub_10001B104(v10, v7, &qword_1008E7F80);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_10000EA04(v10, &qword_1008E7F80);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_100300064(v4);
    (*(v2 + 8))(v4, v1);
    v7 = v10;
  }

  return sub_10000EA04(v7, &qword_1008E7F80);
}

uint64_t sub_100305600(uint64_t result, void *a2, void *a3)
{
  if (result)
  {
    if (result == 2)
    {
      v5 = *(v3 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_transitionAnimatorFromViewController);
      if (!v5)
      {
        return 0;
      }

      v6 = v3;
      sub_1000059F8(0, &qword_1008E4DD0);
      v7 = v5;
      v8 = a3;
      v9 = static NSObject.== infix(_:_:)();

      if ((v9 & 1) == 0)
      {
        return 0;
      }

      v10 = *(v6 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_transitionAnimator);
      if (!v10)
      {
        return 0;
      }
    }

    else
    {
      if (result != 1)
      {
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      type metadata accessor for TrophyCaseAwardDetailViewController();
      if (![a3 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        return 0;
      }

      type metadata accessor for TrophyCaseViewController();
      if (![a2 isKindOfClass:swift_getObjCClassFromMetadata()])
      {
        return 0;
      }

      v12 = *(v3 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_transitionAnimatorFromViewController);
      *(v3 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_transitionAnimatorFromViewController) = a2;
      v13 = a2;

      v10 = *(v3 + OBJC_IVAR____TtC10FitnessApp24TrophyCaseViewController_transitionAnimator);
      if (!v10)
      {
        return 0;
      }
    }

    v14 = v10;
    v15 = v10;
    return v14;
  }

  return result;
}

void sub_100305780()
{
  v1 = *(type metadata accessor for AAUIAwardsDataProviderSection() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for IndexPath() - 8);
  v5 = *(v0 + 2);
  v6 = *(v0 + 3);
  v7 = *(v0 + 4);
  v8 = &v0[(v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)];

  sub_100303E94(v5, v6, v7, &v0[v2], v8);
}

void sub_100305854()
{
  v1 = *(type metadata accessor for AAUIAwardsDataProviderSection() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_100304868(v2, v3);
}

uint64_t sub_1003058C0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

id sub_100305A30(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = [*(v2 + OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_iconImageView) *a2];
    v7 = [v6 constraintEqualToConstant:43.0];

    v8 = *(v2 + v3);
    *(v2 + v3) = v7;
    v5 = v7;

    v4 = 0;
  }

  v9 = v4;
  return v5;
}

void sub_100305AD8()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleBody;
  v2 = [v0 preferredFontForTextStyle:v1];

  qword_1008E7FE0 = v2;
}

char *sub_100305B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_stackViewModel;
  v8 = type metadata accessor for FitnessPlusStackViewModel();
  (*(*(v8 - 8) + 56))(&v4[v7], 1, 1, v8);
  *&v4[OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_fitnessAppContext] = 0;
  v9 = OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_iconImageView;
  v10 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = UIView.withContentMode(_:)();

  v12 = [v11 layer];
  [v12 setCornerRadius:10.0];

  [v11 setClipsToBounds:1];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v9] = v11;
  v13 = OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_titleLabel;
  v14 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DA908 != -1)
  {
    swift_once();
  }

  v15 = UILabel.withFont(_:)();

  [v15 setLineBreakMode:0];
  [v15 setNumberOfLines:0];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v13] = v15;
  v16 = OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_subtitleLabel;
  v17 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v4[v16] = v17;
  *&v4[OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell____lazy_storage___imageViewWidthConstraint] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell____lazy_storage___imageViewHeightConstraint] = 0;
  if (a3)
  {
    v18 = String._bridgeToObjectiveC()();
  }

  else
  {
    v18 = 0;
  }

  v29.receiver = v4;
  v29.super_class = type metadata accessor for StackDetailHeaderCell();
  v19 = objc_msgSendSuper2(&v29, "initWithStyle:reuseIdentifier:", a1, v18);

  v20 = objc_allocWithZone(UITapGestureRecognizer);
  v21 = v19;
  v22 = [v20 initWithTarget:v21 action:"navigateToPlaylist"];
  v23 = v21;
  v24 = [v23 contentView];
  [v24 addGestureRecognizer:v22];

  v25 = [v23 contentView];
  [v25 addSubview:*&v23[OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_iconImageView]];

  v26 = [v23 contentView];
  [v26 addSubview:*&v23[OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_titleLabel]];

  v27 = [v23 contentView];
  [v27 addSubview:*&v23[OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_subtitleLabel]];

  sub_100305F44();
  return v23;
}

void sub_100305F44()
{
  v42 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1006E8710;
  v2 = *&v0[OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_iconImageView];
  v3 = [v2 topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:16.0];
  *(v1 + 32) = v6;
  v7 = [v2 leadingAnchor];
  v8 = [v0 contentView];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor:v9 constant:16.0];
  *(v1 + 40) = v10;
  *(v1 + 48) = sub_100305A08();
  *(v1 + 56) = sub_100305A1C();
  v11 = [v2 bottomAnchor];
  v12 = [v0 contentView];
  v13 = [v12 bottomAnchor];

  v14 = [v11 constraintLessThanOrEqualToAnchor:v13 constant:-27.0];
  *(v1 + 64) = v14;
  v15 = *&v0[OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_titleLabel];
  v16 = [v15 topAnchor];
  v17 = [v0 contentView];
  v18 = [v17 topAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:16.0];
  *(v1 + 72) = v19;
  v20 = [v15 leadingAnchor];
  v21 = [v2 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:19.0];

  *(v1 + 80) = v22;
  v23 = [v15 trailingAnchor];
  v24 = [v0 contentView];
  v25 = [v24 trailingAnchor];

  v26 = [v23 constraintEqualToAnchor:v25 constant:-16.0];
  *(v1 + 88) = v26;
  v27 = *&v0[OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_subtitleLabel];
  v28 = [v27 topAnchor];
  v29 = [v15 bottomAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:4.0];

  *(v1 + 96) = v30;
  v31 = [v27 leadingAnchor];
  v32 = [v15 leadingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];

  *(v1 + 104) = v33;
  v34 = [v27 trailingAnchor];
  v35 = [v0 contentView];
  v36 = [v35 trailingAnchor];

  v37 = [v34 constraintEqualToAnchor:v36 constant:-16.0];
  *(v1 + 112) = v37;
  v38 = [v27 bottomAnchor];
  v39 = [v0 contentView];
  v40 = [v39 bottomAnchor];

  v41 = [v38 constraintLessThanOrEqualToAnchor:v40 constant:-27.0];
  *(v1 + 120) = v41;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v42 activateConstraints:isa];
}

uint64_t sub_1003064D0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = *&a1[OBJC_IVAR___CHCatalogItemViewModel_title];
    v10 = objc_allocWithZone(NSMutableAttributedString);
    v11 = a1;
    v12 = [v10 initWithAttributedString:v8];
    v13 = objc_allocWithZone(NSAttributedString);
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 initWithString:v14];

    [v12 appendAttributedString:v15];
    [v12 appendAttributedString:*&v11[OBJC_IVAR___CHCatalogItemViewModel_subtitle]];
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      v18 = *(Strong + OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_titleLabel);

      [v18 setAttributedText:v12];
    }

    v19 = swift_allocObject();
    v19[2] = a4;
    v19[3] = a5;
    v19[4] = a2;
    sub_10000B210(a4);

    sub_100419358(v11, sub_100306D44, v19);
  }

  else
  {
    static os_log_type_t.error.getter();
    v21 = HKLogActivity;
    sub_100140278(&unk_1008E4E50);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1006D46C0;
    *(v22 + 56) = &type metadata for String;
    *(v22 + 64) = sub_10000A788();
    *(v22 + 32) = 0xD000000000000043;
    *(v22 + 40) = 0x8000000100754E50;
    v23 = v21;
    os_log(_:dso:log:_:_:)();
  }
}

void sub_100306798(uint64_t a1, void (*a2)(void))
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = sub_100305A08();

      [v6 setConstant:135.0];
    }

    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = sub_100305A1C();

      [v9 setConstant:76.0];
    }

    swift_beginAccess();
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10)
    {
      v11 = v10;
      v12 = *(v10 + OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_iconImageView);

      [v12 setImage:a1];
    }
  }

  if (a2)
  {
    a2();
  }
}

uint64_t sub_1003068E4()
{
  v1 = sub_100140278(&qword_1008E0BC0);
  __chkstk_darwin(v1 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for FitnessPlusStackViewModel();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_stackViewModel;
  swift_beginAccess();
  sub_100306D50(v0 + v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100306DC0(v3);
  }

  sub_100306E28(v3, v7);
  v10 = &v7[*(v4 + 24)];
  v11 = v10[1];
  v12 = *(v0 + OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_fitnessAppContext);
  if (v11)
  {
    if (v12)
    {
      v13 = *v10;
      v14 = v12;
      sub_1005CC6A0(v13, v11);
    }
  }

  else if (v12)
  {
    v15 = v12;
    sub_1005CD1BC(v7);
  }

  return sub_1001AB550(v7);
}

id sub_100306B14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StackDetailHeaderCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for StackDetailHeaderCell()
{
  result = qword_1008E8048;
  if (!qword_1008E8048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100306C3C()
{
  sub_100306CEC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100306CEC()
{
  if (!qword_1008E8058)
  {
    type metadata accessor for FitnessPlusStackViewModel();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E8058);
    }
  }
}

uint64_t sub_100306D50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E0BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100306DC0(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E0BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100306E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FitnessPlusStackViewModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100306E8C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_stackViewModel;
  v3 = type metadata accessor for FitnessPlusStackViewModel();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_fitnessAppContext) = 0;
  v4 = OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_iconImageView;
  v5 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v6 = UIView.withContentMode(_:)();

  v7 = [v6 layer];
  [v7 setCornerRadius:10.0];

  [v6 setClipsToBounds:1];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v4) = v6;
  v8 = OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_titleLabel;
  v9 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_1008DA908 != -1)
  {
    swift_once();
  }

  v10 = UILabel.withFont(_:)();

  [v10 setLineBreakMode:0];
  [v10 setNumberOfLines:0];
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v8) = v10;
  v11 = OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell_subtitleLabel;
  v12 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v1 + v11) = v12;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell____lazy_storage___imageViewWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC10FitnessApp21StackDetailHeaderCell____lazy_storage___imageViewHeightConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_1003070F0()
{
  v1 = v0;
  Hasher.init()();
  v2 = type metadata accessor for AwardsCard();
  v3 = (v0 + v2[5]);
  v4 = *v3;
  v5 = *(v3 + 16);
  sub_100035B30(*v3, *(v3 + 16));
  String.hash(into:)();

  if (!v5 || v5 == 2)
  {
    Hasher._combine(_:)(v4);
  }

  else if (v5 == 1)
  {
    String.hash(into:)();
  }

  v6 = *(v1 + v2[6]);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(*(v1 + v2[7]));
  v7 = *(v1 + v2[14]);
  if (v7)
  {
    Hasher._combine(_:)(1u);
    v8 = v7;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = *(v1 + v2[9]);
  if (v9 == 2)
  {
    v10 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v10 = v9 & 1;
  }

  Hasher._combine(_:)(v10);
  v11 = *(v1 + v2[10]);
  if (v11 == 2)
  {
    v12 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v12 = v11 & 1;
  }

  Hasher._combine(_:)(v12);
  if ((v6 & 1) == 0)
  {
    v28 = *(v1 + v2[12]);
    if (v28)
    {
      v29 = [v28 template];
      v30 = [v29 uniqueName];

      if (v30)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v54 = [v28 unearned];
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v54);
      v55 = [v28 template];
      v56 = [v55 canonicalUnit];

      if (v56)
      {
        v57 = [v28 progress];
        if (v57)
        {
          v58 = v57;
          [v57 doubleValueForUnit:v56];
          v60 = v59;

          Hasher._combine(_:)(1u);
          v61 = 0.0;
          if (v60 != 0.0)
          {
            v61 = v60;
          }

          Hasher._combine(_:)(*&v61);
        }

        else
        {
          Hasher._combine(_:)(0);
        }
      }

      goto LABEL_75;
    }

LABEL_35:
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(0);
LABEL_75:
    v67 = v63[2];
    v68 = v63[3];
    v69 = v64;
    v65 = v63[0];
    v66 = v63[1];
    return Hasher.finalize()();
  }

  v13 = *(v1 + v2[11]);
  if (!v13)
  {
    goto LABEL_35;
  }

  v62 = v13 >> 62;
  if (v13 >> 62)
  {
    goto LABEL_78;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v15 = _swiftEmptyArrayStorage;
    if (!i)
    {
      goto LABEL_36;
    }

    *&v65 = _swiftEmptyArrayStorage;
    result = sub_10018601C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v17 = 0;
    v15 = v65;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v13 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = [v18 template];
      v21 = [v20 uniqueName];

      if (v21)
      {
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;
      }

      else
      {

        v22 = 0;
        v24 = 0;
      }

      *&v65 = v15;
      v26 = v15[2];
      v25 = v15[3];
      if (v26 >= v25 >> 1)
      {
        sub_10018601C((v25 > 1), v26 + 1, 1);
        v15 = v65;
      }

      ++v17;
      v15[2] = v26 + 1;
      v27 = &v15[2 * v26];
      v27[4] = v22;
      v27[5] = v24;
    }

    while (i != v17);
LABEL_36:
    Hasher._combine(_:)(1u);
    sub_100307C5C(v63, v15);

    if (v62)
    {
      v31 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v31 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = _swiftEmptyArrayStorage;
    if (v31)
    {
      *&v65 = _swiftEmptyArrayStorage;
      result = sub_1001860BC(0, v31 & ~(v31 >> 63), 0);
      if (v31 < 0)
      {
        goto LABEL_83;
      }

      v33 = 0;
      v32 = v65;
      do
      {
        if ((v13 & 0xC000000000000001) != 0)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v34 = *(v13 + 8 * v33 + 32);
        }

        v35 = v34;
        v36 = [v34 unearned];

        *&v65 = v32;
        v38 = v32[2];
        v37 = v32[3];
        if (v38 >= v37 >> 1)
        {
          sub_1001860BC((v37 > 1), v38 + 1, 1);
          v32 = v65;
        }

        ++v33;
        v32[2] = v38 + 1;
        *(v32 + v38 + 32) = v36;
      }

      while (v31 != v33);
    }

    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v32[2]);
    v39 = v32[2];
    if (v39)
    {
      v40 = (v32 + 4);
      do
      {
        v41 = *v40++;
        Hasher._combine(_:)(v41);
        --v39;
      }

      while (v39);
    }

    if (v62)
    {
      v42 = _CocoaArrayWrapper.endIndex.getter();
      if (!v42)
      {
        goto LABEL_75;
      }
    }

    else
    {
      v42 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v42)
      {
        goto LABEL_75;
      }
    }

    v43 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v43 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_77;
        }

        v44 = *(v13 + 8 * v43 + 32);
      }

      v45 = v44;
      v46 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      v47 = [v44 template];
      v48 = [v47 canonicalUnit];

      if (v48)
      {
        v49 = [v45 progress];
        if (v49)
        {
          v50 = v49;
          [v49 doubleValueForUnit:v48];
          v52 = v51;

          Hasher._combine(_:)(1u);
          if (v52 == 0.0)
          {
            v53 = 0.0;
          }

          else
          {
            v53 = v52;
          }

          Hasher._combine(_:)(*&v53);
        }

        else
        {
          Hasher._combine(_:)(0);
        }
      }

      ++v43;
      if (v46 == v42)
      {
        goto LABEL_75;
      }
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    ;
  }

  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

void sub_1003077F8(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  Hasher._combine(_:)(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  Hasher._combine(_:)(*&v3);
}

void sub_100307848(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      if (v5 == 0.0)
      {
        v5 = 0.0;
      }

      Hasher._combine(_:)(*&v5);
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      else
      {
        v7 = v6;
      }

      Hasher._combine(_:)(*&v7);
      v4 += 2;
      --v3;
    }

    while (v3);
  }
}

void sub_1003078C4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for WorkoutChartDataElement(0);
  v4 = *(v3 - 1);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  Hasher._combine(_:)(v7);
  if (v7)
  {
    v8 = v3[6];
    v16 = v3[5];
    v9 = v3[7];
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_100307CF8(v10, v6, type metadata accessor for WorkoutChartDataElement);
      type metadata accessor for Date();
      sub_100072254(&qword_1008DEF18, &type metadata accessor for Date);
      dispatch thunk of Hashable.hash(into:)();
      v12 = *&v6[v16];
      if (v12 == 0.0)
      {
        v12 = 0.0;
      }

      Hasher._combine(_:)(*&v12);
      v13 = *&v6[v8];
      if (v13 == 0.0)
      {
        v13 = 0.0;
      }

      Hasher._combine(_:)(*&v13);
      v14 = *&v6[v9];
      if (v14 == 0.0)
      {
        v14 = 0.0;
      }

      Hasher._combine(_:)(*&v14);
      sub_100307D60(v6, type metadata accessor for WorkoutChartDataElement);
      v10 += v11;
      --v7;
    }

    while (v7);
  }
}

void sub_100307A9C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MetricChartData();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a2 + 16);
  Hasher._combine(_:)(v7);
  if (v7)
  {
    v8 = *(v3 + 24);
    v9 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    do
    {
      sub_100307CF8(v9, v6, type metadata accessor for MetricChartData);
      type metadata accessor for Date();
      sub_100072254(&qword_1008DEF18, &type metadata accessor for Date);
      dispatch thunk of Hashable.hash(into:)();
      [*(v6 + v8) doubleValueForUnit:*v6];
      if (v11 == 0.0)
      {
        v11 = 0.0;
      }

      Hasher._combine(_:)(*&v11);
      NSObject.hash(into:)();
      sub_100307D60(v6, type metadata accessor for MetricChartData);
      v9 += v10;
      --v7;
    }

    while (v7);
  }
}

void sub_100307C5C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      v4 += 2;
      if (v5)
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_100307CF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100307D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100307DC0()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10019C0F4();
    if (v1 <= 0x3F)
    {
      sub_100307F48();
      if (v2 <= 0x3F)
      {
        sub_10006DAB0(319, &qword_1008DFF88, &qword_1008E8750);
        if (v3 <= 0x3F)
        {
          sub_10006DAB0(319, &qword_1008DFF90, &qword_1008DFF98);
          if (v4 <= 0x3F)
          {
            sub_10006DAB0(319, &unk_1008E80D8, &unk_1008E7370);
            if (v5 <= 0x3F)
            {
              sub_10006DAB0(319, &qword_1008E30A0, &qword_1008F24B0);
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

void sub_100307F48()
{
  if (!qword_1008E80C8)
  {
    sub_100141EEC(&qword_1008E80D0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008E80C8);
    }
  }
}

void sub_100307FAC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    Hasher._combine(_:)(v8);
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      NSObject.hash(into:)();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      NSObject.hash(into:)();

      --v3;
    }

    while (v3);
  }
}

void sub_1003081C0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(Strong + OBJC_IVAR___CHWorkoutDetailedBasicViewController_activityIndicator) startAnimating];
    swift_unknownObjectRelease();
  }

  v2 = *&v0[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_dataCalculator];
  v3 = *&v0[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_workout];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v7[4] = sub_10030C394;
  v7[5] = v4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_1003091E4;
  v7[3] = &unk_1008524F0;
  v5 = _Block_copy(v7);
  v6 = v0;

  [v2 segmentsForWorkout:v3 completion:v5];
  _Block_release(v5);
}

void sub_1003082F4(unint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    sub_100140278(&qword_1008E7590);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1006D46C0;
    swift_getErrorValue();
    v15 = v76;
    v16 = v77;
    *(v14 + 56) = v77;
    v17 = sub_100005994((v14 + 32));
    (*(*(v16 - 8) + 16))(v17, v15, v16);
    swift_errorRetain();
    print(_:separator:terminator:)();
  }

  else if (a1)
  {
    v69 = dispatch_group_create();
    v57[0] = sub_1000059F8(0, &qword_1008E3FD0);
    v75 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    *(v18 + 16) = a3;
    *(v18 + 24) = a1;
    v83 = sub_10030C39C;
    v84 = v18;
    aBlock = _NSConcreteStackBlock;
    v80 = 1107296256;
    v81 = sub_1000449A8;
    v82 = &unk_100852540;
    v19 = _Block_copy(&aBlock);
    v72 = a1;
    v74 = v19;
    v68 = a3;

    static DispatchQoS.unspecified.getter();
    aBlock = _swiftEmptyArrayStorage;
    v20 = sub_10030C3A4(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
    v21 = sub_100140278(&unk_1008E7F50);
    v22 = sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
    v66 = v21;
    v65 = v22;
    v67 = v20;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v24 = v74;
    v23 = v75;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    v25 = v72;
    _Block_release(v24);

    v27 = *(v7 + 8);
    v26 = v7 + 8;
    v70 = v9;
    v64 = v27;
    v27(v9, v6);
    v29 = *(v11 + 8);
    v28 = v11 + 8;
    v63 = v29;
    v29(v13, v10);
    v30 = v25 & 0xFFFFFFFFFFFFFF8;
    v71 = v6;
    if (v25 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v32 = 0;
      v58 = OBJC_IVAR___CHWorkoutDetailSegmentDataSource_internalQueue;
      v62 = v25 & 0xC000000000000001;
      v57[1] = &v81;
      v61 = v10;
      v60 = v30;
      v59 = i;
      while (1)
      {
        if (v62)
        {
          v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v32 >= *(v30 + 16))
          {
            goto LABEL_15;
          }

          v33 = *(v25 + 8 * v32 + 32);
        }

        v34 = v33;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        v35 = v68;
        v75 = v32 + 1;
        v74 = *&v68[v58];
        v36 = swift_allocObject();
        v36[2] = v35;
        v36[3] = v34;
        v36[4] = v32;
        v83 = sub_10030C3EC;
        v84 = v36;
        aBlock = _NSConcreteStackBlock;
        v80 = 1107296256;
        v81 = sub_1000449A8;
        v82 = &unk_100852590;
        v37 = _Block_copy(&aBlock);
        v38 = v35;
        v73 = v69;
        v39 = v34;
        static DispatchQoS.unspecified.getter();
        v78 = _swiftEmptyArrayStorage;
        v40 = v28;
        v41 = v70;
        v42 = v26;
        v43 = v71;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v44 = v59;
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        v45 = v37;
        v30 = v60;
        _Block_release(v45);

        v10 = v61;
        v46 = v41;
        v28 = v40;
        v25 = v72;
        v47 = v43;
        v26 = v42;
        v64(v46, v47);
        v63(v13, v10);

        ++v32;
        if (v75 == v44)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
    v48 = v13;
    v49 = static OS_dispatch_queue.main.getter();
    v50 = swift_allocObject();
    v51 = v68;
    *(v50 + 16) = v68;
    v83 = sub_10030C3F8;
    v84 = v50;
    aBlock = _NSConcreteStackBlock;
    v80 = 1107296256;
    v81 = sub_1000449A8;
    v82 = &unk_1008525E0;
    v52 = _Block_copy(&aBlock);
    v53 = v51;
    static DispatchQoS.unspecified.getter();
    v78 = _swiftEmptyArrayStorage;
    v55 = v70;
    v54 = v71;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v56 = v69;
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v52);

    v64(v55, v54);
    v63(v48, v10);
  }
}

uint64_t sub_100308A98(void *a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v4)
  {
LABEL_14:
    swift_getKeyPath();
    swift_getKeyPath();
    a1;
    static Published.subscript.setter();
    return sub_100309BC4();
  }

  result = specialized ContiguousArray.reserveCapacity(_:)();
  if ((v4 & 0x8000000000000000) == 0)
  {
    v17 = a1;
    v6 = 0;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(a2 + 8 * v6 + 32);
      }

      v15 = v14;
      v16 = [v14 distance];
      if (v16)
      {
        v7 = v16;
        v8 = [objc_opt_self() meterUnit];
        [v7 doubleValueForUnit:v8];
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      ++v6;
      [v15 elapsedTime];
      v12 = v11;

      type metadata accessor for WorkoutDurationMetrics();
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 1;
      *(v13 + 72) = 0;
      *(v13 + 80) = 1;
      *(v13 + 88) = 0u;
      *(v13 + 104) = 0u;
      *(v13 + 120) = 0;
      *(v13 + 128) = 1;
      *(v13 + 144) = 0;
      *(v13 + 152) = 0;
      *(v13 + 136) = 0;
      *(v13 + 32) = v10;
      *(v13 + 40) = 0;
      *(v13 + 64) = v12;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v4 != v6);
    a1 = v17;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_100308CD0(char *a1, void *a2, uint64_t a3)
{
  v22 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v23 = *(v8 - 8);
  v24 = v8;
  __chkstk_darwin(v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *&a1[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_workout];
  v12 = *&a1[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_trackDistanceUnit];
  v13 = a1[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_trackDistanceUnit + 8];
  v14 = *&a1[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_dataCalculator];
  type metadata accessor for WorkoutDurationMetrics();
  swift_allocObject();
  v15 = sub_1003CF9C8(v11, a2, v12, v13, v14, 0, 0);
  sub_1000059F8(0, &qword_1008E3FD0);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  v18 = v22;
  v17[2] = a1;
  v17[3] = v18;
  v17[4] = v15;
  aBlock[4] = sub_10030C400;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000449A8;
  aBlock[3] = &unk_100852630;
  v19 = _Block_copy(aBlock);
  v20 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10030C3A4(&qword_1008E33B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100140278(&unk_1008E7F50);
  sub_10014A6B0(&qword_1008E33C0, &unk_1008E7F50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v25 + 8))(v7, v5);
  return (*(v23 + 8))(v10, v24);
}

uint64_t sub_100309060(uint64_t a1, unint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = static Published.subscript.modify();
  v7 = v6;
  v8 = *v6;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v7 = v8;
  if (!result || v8 < 0 || (v8 & 0x4000000000000000) != 0)
  {
    result = sub_10057FAF8(v8);
    v8 = result;
    *v7 = result;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    *((v8 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20) = a3;

    v5(&v10, 0);
  }

  __break(1u);
  return result;
}

uint64_t sub_10030916C()
{
  sub_100309BC4();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [*(result + OBJC_IVAR___CHWorkoutDetailedBasicViewController_activityIndicator) stopAnimating];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1003091E4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_1000059F8(0, qword_1008E81D8);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_100309288(unint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = v7;
  if (*(v7 + 16) <= a1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = *(v7 + a1 + 32);

  v5 = OBJC_IVAR___CHWorkoutDetailSegmentDataSource_columnSizes;
  result = swift_beginAccess();
  if (*(*(v1 + v5) + 16))
  {

    sub_1004C5C04(v4);
    if (v6)
    {
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_100309398(uint64_t a1)
{
  result = objc_opt_self();
  v3 = __OFADD__(a1, 1);
  v4 = a1 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    v6 = [objc_allocWithZone(NSNumber) initWithInteger:v4];
    v7 = [v5 localizedStringFromNumber:v6 numberStyle:0];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v8;
  }

  return result;
}

id sub_100309440@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v60 = a4;
  v8 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v8 - 8);
  v10 = &v47 - v9;
  v11 = sub_100140278(&qword_1008E1900);
  __chkstk_darwin(v11 - 8);
  v13 = &v47 - v12;
  v58 = sub_100140278(&qword_1008E1908);
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v47 - v14;
  v15 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v15 - 8);
  v59 = type metadata accessor for AttributedString();
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v62 & 0xC000000000000001) != 0)
  {
    v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_10;
  }

  v18 = *(v62 + 8 * a1 + 32);

LABEL_5:

  if ((a3 & 1) != 0 || (*(v18 + 40) & 1) != 0 || (v19 = *(v4 + OBJC_IVAR___CHWorkoutDetailSegmentDataSource_formattingManager), (v20 = [v19 localizedStringWithDistanceInMeters:a2 distanceUnit:0 unitStyle:objc_msgSend(objc_opt_self() decimalPrecision:"defaultPrecisionForDistanceUnit:" roundingMode:a2) decimalTrimmingMode:{2, 1, *(v18 + 32)}]) == 0))
  {
    sub_10020A5C0(v18, *(v4 + OBJC_IVAR___CHWorkoutDetailSegmentDataSource_workout), 0, *(v4 + OBJC_IVAR___CHWorkoutDetailSegmentDataSource_formattingManager), 1u, v60);
  }

  v21 = v20;
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v23;

  result = [v19 localizedShortUnitStringForDistanceUnit:a2];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v25 = result;
  v49 = v13;
  v52 = v22;
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v62 = v26;
  v63 = v28;
  v53 = sub_10000FCBC();
  v29 = StringProtocol.localizedUppercase.getter();
  v50 = v30;
  v51 = v29;

  if (qword_1008DA668 != -1)
  {
    goto LABEL_18;
  }

LABEL_10:
  v48 = qword_1009252A0;
  v31 = [objc_opt_self() mainBundle];
  v32 = String._bridgeToObjectiveC()();
  v33 = [v31 localizedStringForKey:v32 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1006D1F70;
  *(v34 + 56) = &type metadata for String;
  v35 = sub_10000A788();
  v36 = v54;
  *(v34 + 32) = v52;
  *(v34 + 40) = v36;
  *(v34 + 96) = &type metadata for String;
  *(v34 + 104) = v35;
  v38 = v50;
  v37 = v51;
  *(v34 + 64) = v35;
  *(v34 + 72) = v37;
  *(v34 + 80) = v38;

  String.init(format:_:)();

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v39 = v48;
  v62 = v48;
  sub_1001ED5AC();
  v39;
  AttributedString.subscript.setter();
  v62 = v37;
  v63 = v38;
  v40 = type metadata accessor for Locale();
  (*(*(v40 - 8) + 56))(v10, 1, 1, v40);
  sub_10030C3A4(&qword_1008E1918, &type metadata accessor for AttributedString);
  v41 = v49;
  AttributedStringProtocol.range<A>(of:options:locale:)();
  sub_10000EA04(v10, &qword_1008EB540);
  if ((*(v56 + 48))(v41, 1, v58) == 1)
  {
    v42 = &qword_1008E1900;
    v43 = v41;
  }

  else
  {
    v44 = v55;
    sub_10007BE08(v41, v55);
    isa = UIFont.smallCapsVersion()().super.isa;
    sub_10014A6B0(&qword_1008E1920, &qword_1008E1908);
    v46 = AttributedString.subscript.modify();
    v61 = isa;
    AttributedSubstring.subscript.setter();
    v46(&v62, 0);
    v43 = v44;
    v42 = &qword_1008E1908;
  }

  sub_10000EA04(v43, v42);
  (*(v57 + 32))(v60, v17, v59);
}

uint64_t sub_100309BC4()
{
  v1 = v0;
  v118 = type metadata accessor for AttributedString();
  KeyPath = *(v118 - 8);
  __chkstk_darwin(v118);
  v117 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v120 = &v106 - v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v107 = v127;
  if (v127 >> 62)
  {
    goto LABEL_101;
  }

  v6 = *((v127 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v112 = OBJC_IVAR___CHWorkoutDetailSegmentDataSource_defaultColumns;
  v119 = OBJC_IVAR___CHWorkoutDetailSegmentDataSource_formattingManager;
  v7 = OBJC_IVAR___CHWorkoutDetailSegmentDataSource_columnSizes;
  if (!v6)
  {
LABEL_58:

    v68 = *(v1 + v112);
    v69 = *(v68 + 16);
    if (v69)
    {
      v70 = (v68 + 32);
      swift_beginAccess();
      v71 = _swiftEmptyArrayStorage;
      do
      {
        v75 = *v70++;
        v74 = v75;
        if (*(*(v1 + v7) + 16))
        {

          sub_1004C5C04(v74);
          v77 = v76;

          if (v77)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v126[0] = v71;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100185F28(0, v71[2] + 1, 1);
              v71 = v126[0];
            }

            v73 = v71[2];
            v72 = v71[3];
            if (v73 >= v72 >> 1)
            {
              sub_100185F28((v72 > 1), v73 + 1, 1);
              v71 = v126[0];
            }

            v71[2] = v73 + 1;
            *(v71 + v73 + 32) = v74;
          }
        }

        --v69;
      }

      while (v69);
    }

    else
    {
      v71 = _swiftEmptyArrayStorage;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v126[0] = v71;
    v79 = v1;
    static Published.subscript.setter();
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v80 = v126[0];
    v81 = *(v126[0] + 16);
    if (!v81)
    {
    }

    v82 = sub_1000059F8(0, &qword_1008DD230);
    v83 = *(v1 + v119);
    v84 = v80 + 32;
    swift_beginAccess();
    v85 = 0;
    v123 = v83;
    v122 = v80;
    while (1)
    {
      if (v85 >= *(v80 + 16))
      {
        goto LABEL_97;
      }

      v86 = *(v84 + v85);
      sub_100209CE0(v83, *(v84 + v85));
      v124 = NSAttributedString.init(_:)();
      [v124 boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
      v87 = ceil(CGRectGetWidth(v131));
      KeyPath = *(v1 + v7);
      if (KeyPath[2])
      {

        v88 = sub_1004C5C04(v86);
        if (v89)
        {
          v90 = *(KeyPath[7] + 8 * v88);

          if (v90 >= v87)
          {
            goto LABEL_73;
          }

          goto LABEL_81;
        }
      }

      if (v87 <= 0.0)
      {
        goto LABEL_73;
      }

LABEL_81:
      v91 = v82;
      v92 = v81;
      swift_beginAccess();
      v93 = swift_isUniquelyReferenced_nonNull_native();
      v125 = *(v1 + v7);
      KeyPath = v125;
      *(v1 + v7) = 0x8000000000000000;
      v94 = sub_1004C5C04(v86);
      v96 = KeyPath[2];
      v97 = (v95 & 1) == 0;
      v24 = __OFADD__(v96, v97);
      v98 = v96 + v97;
      if (v24)
      {
        goto LABEL_99;
      }

      v99 = v95;
      if (KeyPath[3] >= v98)
      {
        if ((v93 & 1) == 0)
        {
          KeyPath = &v125;
          v104 = v94;
          sub_100493170();
          v94 = v104;
        }
      }

      else
      {
        sub_10048964C(v98, v93);
        KeyPath = v125;
        v94 = sub_1004C5C04(v86);
        if ((v99 & 1) != (v100 & 1))
        {
          goto LABEL_102;
        }
      }

      v101 = v125;
      if (v99)
      {
        *(v125[7] + 8 * v94) = v87;
      }

      else
      {
        v125[(v94 >> 6) + 8] |= 1 << v94;
        *(v101[6] + v94) = v86;
        *(v101[7] + 8 * v94) = v87;
        v102 = v101[2];
        v24 = __OFADD__(v102, 1);
        v103 = v102 + 1;
        if (v24)
        {
          goto LABEL_100;
        }

        v101[2] = v103;
      }

      *(v1 + v7) = v101;
      swift_endAccess();
      v81 = v92;
      v82 = v91;
      v80 = v122;
      v83 = v123;
LABEL_73:
      ++v85;

      if (v81 == v85)
      {
      }
    }
  }

  v8 = 0;
  v116 = OBJC_IVAR___CHWorkoutDetailSegmentDataSource_workout;
  v111 = v107 & 0xC000000000000001;
  v110 = v107 & 0xFFFFFFFFFFFFFF8;
  v109 = v107 + 32;
  v124 = 0x8000000100746F70;
  v115 = (KeyPath + 2);
  v114 = (KeyPath + 1);
  v121 = NSFontAttributeName;
  v108 = v6;
  while (1)
  {
    if (v111)
    {
      v122 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        goto LABEL_57;
      }
    }

    else
    {
      if (v8 >= *(v110 + 16))
      {
        goto LABEL_98;
      }

      v122 = *(v109 + 8 * v8);

      v9 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }
    }

    v113 = v9;
    v123 = v8;
    v10 = *(v1 + v112);
    v11 = *(v10 + 16);
    if (v11)
    {
      break;
    }

LABEL_5:

    v8 = v113;
    if (v113 == v108)
    {
      goto LABEL_58;
    }
  }

  v12 = (v10 + 32);
  swift_beginAccess();
  while (1)
  {
    v14 = *v12++;
    v13 = v14;
    if (v14 > 5 || v13)
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v30 = v120;
        sub_10020A5C0(v122, *(v1 + v116), 0, *(v1 + v119), v13, v120);
        sub_1000059F8(0, &qword_1008DD230);
        v31 = v118;
        (*v115)(v117, v30, v118);
        v29 = NSAttributedString.init(_:)();
        (*v114)(v30, v31);
        goto LABEL_23;
      }
    }

    else
    {
    }

    (*((swift_isaMask & *v1) + 0x198))(v123);
    v129[0] = v121;
    v16 = qword_1008DA660;
    v17 = v121;
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = qword_100925298;
    v129[4] = sub_1000059F8(0, &qword_1008F73C0);
    v129[1] = v18;
    sub_100140278(&qword_1008E2568);
    KeyPath = static _DictionaryStorage.allocate(capacity:)();
    v19 = v18;
    sub_10022EF60(v129, &v127);
    v20 = v127;
    v21 = sub_1004C53E8(v127);
    if (v22)
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      v6 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_3;
    }

    KeyPath[(v21 >> 6) + 8] |= 1 << v21;
    *(KeyPath[6] + 8 * v21) = v20;
    sub_1001AA76C(&v128, (KeyPath[7] + 32 * v21));
    v23 = KeyPath[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      goto LABEL_92;
    }

    KeyPath[2] = v25;
    sub_10000EA04(v129, &unk_1008EE730);
    v26 = objc_allocWithZone(NSMutableAttributedString);
    v27 = String._bridgeToObjectiveC()();

    type metadata accessor for Key(0);
    sub_10030C3A4(&qword_1008E7FD0, type metadata accessor for Key);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v29 = [v26 initWithString:v27 attributes:isa];

LABEL_23:
    v32 = v29;
    [v32 boundingRectWithSize:1 options:0 context:{1.79769313e308, 1.79769313e308}];
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;

    v130.origin.x = v34;
    v130.origin.y = v36;
    v130.size.width = v38;
    v130.size.height = v40;
    v41 = ceil(CGRectGetWidth(v130));
    KeyPath = *(v1 + v7);
    if (!KeyPath[2])
    {
      goto LABEL_28;
    }

    v42 = sub_1004C5C04(v13);
    if ((v43 & 1) == 0)
    {

LABEL_28:
      if (v41 <= 0.0)
      {
        goto LABEL_13;
      }

      goto LABEL_29;
    }

    v44 = *(KeyPath[7] + 8 * v42);

    if (v44 >= v41)
    {
      goto LABEL_13;
    }

LABEL_29:
    if (!v13)
    {

LABEL_31:
      if (v41 > 120.0)
      {
        v41 = 120.0;
      }

      swift_beginAccess();
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v126[0] = *(v1 + v7);
      KeyPath = v126[0];
      *(v1 + v7) = 0x8000000000000000;
      v48 = sub_1004C5C04(v13);
      v49 = KeyPath[2];
      v50 = (v47 & 1) == 0;
      v51 = v49 + v50;
      if (__OFADD__(v49, v50))
      {
        goto LABEL_93;
      }

      v52 = v47;
      if (KeyPath[3] >= v51)
      {
        if ((v46 & 1) == 0)
        {
          KeyPath = v126;
          sub_100493170();
        }
      }

      else
      {
        sub_10048964C(v51, v46);
        KeyPath = v126[0];
        v53 = sub_1004C5C04(v13);
        if ((v52 & 1) != (v54 & 1))
        {
          break;
        }

        v48 = v53;
      }

      v63 = v126[0];
      if ((v52 & 1) == 0)
      {
        *(v126[0] + 8 * (v48 >> 6) + 64) |= 1 << v48;
        *(v63[6] + v48) = v13;
        *(v63[7] + 8 * v48) = v41;
        v64 = v63[2];
        v24 = __OFADD__(v64, 1);
        v65 = v64 + 1;
        if (v24)
        {
          goto LABEL_95;
        }

LABEL_52:
        v63[2] = v65;
        goto LABEL_12;
      }

      *(*(v126[0] + 56) + 8 * v48) = v41;
      goto LABEL_12;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45)
    {
      goto LABEL_31;
    }

    swift_beginAccess();
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v126[0] = *(v1 + v7);
    KeyPath = v126[0];
    *(v1 + v7) = 0x8000000000000000;
    v56 = sub_1004C5C04(v13);
    v58 = KeyPath[2];
    v59 = (v57 & 1) == 0;
    v24 = __OFADD__(v58, v59);
    v60 = v58 + v59;
    if (v24)
    {
      goto LABEL_94;
    }

    v61 = v57;
    if (KeyPath[3] >= v60)
    {
      if ((v55 & 1) == 0)
      {
        KeyPath = v126;
        v67 = v56;
        sub_100493170();
        v56 = v67;
      }

      goto LABEL_49;
    }

    sub_10048964C(v60, v55);
    KeyPath = v126[0];
    v56 = sub_1004C5C04(v13);
    if ((v61 & 1) != (v62 & 1))
    {
      break;
    }

LABEL_49:
    v63 = v126[0];
    if ((v61 & 1) == 0)
    {
      *(v126[0] + 8 * (v56 >> 6) + 64) |= 1 << v56;
      *(v63[6] + v56) = v13;
      *(v63[7] + 8 * v56) = v41;
      v66 = v63[2];
      v24 = __OFADD__(v66, 1);
      v65 = v66 + 1;
      if (v24)
      {
        goto LABEL_96;
      }

      goto LABEL_52;
    }

    *(*(v126[0] + 56) + 8 * v56) = v41;
LABEL_12:
    *(v1 + v7) = v63;
    swift_endAccess();
LABEL_13:

    if (!--v11)
    {
      goto LABEL_5;
    }
  }

LABEL_102:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_10030ABB8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailSegmentDataSource();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WorkoutDetailSegmentDataSource()
{
  result = qword_1008E8198;
  if (!qword_1008E8198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10030AD78()
{
  sub_100144538(319, &qword_1008E32D8, &qword_1008E32E0);
  if (v0 <= 0x3F)
  {
    sub_100144538(319, &qword_1008E81A8, &qword_1008E81B0);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10030AEAC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = *(v2 + 16);

  return v0;
}

uint64_t sub_10030AF2C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v2 >> 62)
  {
    v0 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v0 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v0;
}

void sub_10030AFDC(unint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v4 + 16) > a1)
  {
    v3 = *(v4 + a1 + 32);

    sub_100209CE0(*(v1 + OBJC_IVAR___CHWorkoutDetailSegmentDataSource_formattingManager), v3);
    return;
  }

  __break(1u);
}

uint64_t sub_10030B0DC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WorkoutDetailSegmentDataSource();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10030B11C(uint64_t a1)
{
  result = sub_10030C3A4(&qword_1008E6730, type metadata accessor for WorkoutDetailSegmentDataSource);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10030B1C4(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static Published.subscript.setter();
}

id sub_10030B238(void *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v42 = a4;
  v44 = a2;
  v45 = a3;
  v46 = a1;
  v43 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v43 - 8);
  __chkstk_darwin(v43);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100140278(&qword_1008E81D0);
  v9 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &v40 - v10;
  v12 = sub_100140278(&unk_1008E32F0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - v14;
  v16 = OBJC_IVAR___CHWorkoutDetailSegmentDataSource__metrics;
  v48 = _swiftEmptyArrayStorage;
  sub_100140278(&qword_1008E32E0);
  Published.init(initialValue:)();
  (*(v13 + 32))(&v4[v16], v15, v12);
  v17 = OBJC_IVAR___CHWorkoutDetailSegmentDataSource__columns;
  v48 = _swiftEmptyArrayStorage;
  sub_100140278(&qword_1008E81B0);
  Published.init(initialValue:)();
  v18 = &v4[v17];
  v19 = v42;
  (*(v9 + 32))(v18, v11, v41);
  *&v4[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_columnSizes] = &_swiftEmptyDictionarySingleton;
  v20 = OBJC_IVAR___CHWorkoutDetailSegmentDataSource_internalQueue;
  sub_1000059F8(0, &qword_1008E3FD0);
  v21 = v43;
  (*(v6 + 104))(v8, enum case for DispatchQoS.QoSClass.userInitiated(_:), v43);
  v22 = static OS_dispatch_queue.global(qos:)();
  (*(v6 + 8))(v8, v21);
  *&v5[v20] = v22;
  *&v5[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v23 = &v5[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_trackDistanceUnit];
  *v23 = 0;
  v23[8] = 1;
  v24 = v44;
  *&v5[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_dataCalculator] = v44;
  v25 = v24;
  v26 = [v19 fitnessUIFormattingManager];
  *&v5[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_formattingManager] = v26;
  *v23 = v45;
  v23[8] = 0;
  v27 = OBJC_IVAR___CHWorkoutDetailSegmentDataSource_workout;
  v28 = v46;
  *&v5[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_workout] = v46;
  v29 = v28;
  v30 = [v19 supportsDistanceForWorkout:v29 workoutActivity:0];
  v31 = *&v5[v27];
  if (!v30)
  {
    if ([v31 _activityMoveMode] == 1)
    {
      v38 = &off_100845050;
    }

    else
    {
      v38 = &off_100845078;
    }

    *&v5[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_defaultColumns] = v38;
    goto LABEL_17;
  }

  if ([v31 workoutActivityType] == 13)
  {
    v32 = 9;
  }

  else
  {
    v32 = 6;
  }

  if (![v19 supportsPaceForWorkout:v29 workoutActivity:0])
  {
    sub_100140278(&qword_1008DE488);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1006E87A0;
    *(v37 + 32) = 67240192;
    *(v37 + 36) = 5;
    *(v37 + 37) = v32;
LABEL_14:
    *&v5[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_defaultColumns] = v37;
LABEL_17:
    v39 = type metadata accessor for WorkoutDetailSegmentDataSource();
    v47.receiver = v5;
    v47.super_class = v39;
    return objc_msgSendSuper2(&v47, "init");
  }

  result = [v29 fiui_activityType];
  if (result)
  {
    v34 = result;
    v35 = FIUIPaceFormatForWorkoutActivityType();

    if (v35 == 4)
    {
      v36 = 8;
    }

    else
    {
      v36 = 3;
    }

    sub_100140278(&qword_1008DE488);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1006E76B0;
    *(v37 + 32) = 256;
    *(v37 + 34) = 2;
    *(v37 + 35) = v36;
    *(v37 + 36) = 1284;
    *(v37 + 38) = v32;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_10030B74C(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v40 = a3;
  v42 = a2;
  v43 = a1;
  v41 = type metadata accessor for DispatchQoS.QoSClass();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_100140278(&qword_1008E81D0);
  v8 = *(v39 - 8);
  __chkstk_darwin(v39);
  v10 = &v39 - v9;
  v11 = sub_100140278(&unk_1008E32F0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v39 - v13;
  v15 = OBJC_IVAR___CHWorkoutDetailSegmentDataSource__metrics;
  v45 = _swiftEmptyArrayStorage;
  sub_100140278(&qword_1008E32E0);
  Published.init(initialValue:)();
  (*(v12 + 32))(&v3[v15], v14, v11);
  v16 = OBJC_IVAR___CHWorkoutDetailSegmentDataSource__columns;
  v45 = _swiftEmptyArrayStorage;
  sub_100140278(&qword_1008E81B0);
  Published.init(initialValue:)();
  v17 = &v3[v16];
  v18 = v40;
  (*(v8 + 32))(v17, v10, v39);
  *&v3[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_columnSizes] = &_swiftEmptyDictionarySingleton;
  v19 = OBJC_IVAR___CHWorkoutDetailSegmentDataSource_internalQueue;
  sub_1000059F8(0, &qword_1008E3FD0);
  v20 = v41;
  (*(v5 + 104))(v7, enum case for DispatchQoS.QoSClass.userInitiated(_:), v41);
  v21 = static OS_dispatch_queue.global(qos:)();
  (*(v5 + 8))(v7, v20);
  *&v4[v19] = v21;
  *&v4[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v22 = &v4[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_trackDistanceUnit];
  *v22 = 0;
  v22[8] = 1;
  v23 = v42;
  *&v4[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_dataCalculator] = v42;
  v24 = v23;
  v25 = [v18 fitnessUIFormattingManager];
  *&v4[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_formattingManager] = v25;
  v26 = OBJC_IVAR___CHWorkoutDetailSegmentDataSource_workout;
  v27 = v43;
  *&v4[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_workout] = v43;
  v28 = v27;
  v29 = [v18 supportsDistanceForWorkout:v28 workoutActivity:0];
  v30 = *&v4[v26];
  if (!v29)
  {
    if ([v30 _activityMoveMode] == 1)
    {
      v37 = &off_1008450A0;
    }

    else
    {
      v37 = &off_1008450C8;
    }

    *&v4[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_defaultColumns] = v37;
    goto LABEL_17;
  }

  if ([v30 workoutActivityType] == 13)
  {
    v31 = 9;
  }

  else
  {
    v31 = 6;
  }

  if (![v18 supportsPaceForWorkout:v28 workoutActivity:{0, v39}])
  {
    sub_100140278(&qword_1008DE488);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1006E87A0;
    *(v36 + 32) = 67240192;
    *(v36 + 36) = 5;
    *(v36 + 37) = v31;
LABEL_14:
    *&v4[OBJC_IVAR___CHWorkoutDetailSegmentDataSource_defaultColumns] = v36;
LABEL_17:
    v38 = type metadata accessor for WorkoutDetailSegmentDataSource();
    v44.receiver = v4;
    v44.super_class = v38;
    return objc_msgSendSuper2(&v44, "init");
  }

  result = [v28 fiui_activityType];
  if (result)
  {
    v33 = result;
    v34 = FIUIPaceFormatForWorkoutActivityType();

    if (v34 == 4)
    {
      v35 = 8;
    }

    else
    {
      v35 = 3;
    }

    sub_100140278(&qword_1008DE488);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1006E76B0;
    *(v36 + 32) = 256;
    *(v36 + 34) = 2;
    *(v36 + 35) = v35;
    *(v36 + 36) = 1284;
    *(v36 + 38) = v31;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_10030BC50(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v57 - v10;
  v60 = type metadata accessor for DynamicTypeSize();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100140278(&qword_1008E81B8);
  __chkstk_darwin(v62);
  v61 = &v57 - v14;
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  static Published.subscript.getter();

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (*(v70 + 16) <= a2)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_12;
  }

  a2 = *(v70 + a2 + 32);

  if (sub_10020ECB8(a2, v16) == 0x72656B72616DLL && v17 == 0xE600000000000000)
  {

LABEL_7:
    *&v70 = (*((swift_isaMask & *v2) + 0x198))(a1);
    *(&v70 + 1) = v19;
    sub_10000FCBC();
    v20 = Text.init<A>(_:)();
    v22 = v21;
    v24 = v23;
    static Font.body.getter();
    v58 = Text.font(_:)();
    v26 = v25;
    v28 = v27;
    v29 = v13;
    v31 = v30;

    sub_10004642C(v20, v22, v24 & 1);

    v32 = swift_getKeyPath();
    sub_10020A2B4(a2);
    v34 = v33;
    v35 = swift_getKeyPath();
    v69 = v28 & 1;
    v68 = 0;
    *&v63 = v58;
    *(&v63 + 1) = v26;
    LOBYTE(v64) = v28 & 1;
    *(&v64 + 1) = v31;
    *&v65 = v32;
    *(&v65 + 1) = 3;
    LOBYTE(v66) = 0;
    *(&v66 + 1) = v35;
    v67 = v34;
    v36 = v59;
    v37 = v60;
    (*(v59 + 104))(v29, enum case for DynamicTypeSize.large(_:), v60);
    v38 = sub_100140278(&qword_1008E81C0);
    v39 = sub_10030C2DC();
    View.dynamicTypeSize(_:)();
    (*(v36 + 8))(v29, v37);
    v72 = v65;
    v73 = v66;
    v74 = v67;
    v70 = v63;
    v71 = v64;
    sub_10000EA04(&v70, &qword_1008E81C0);
    *&v63 = v38;
    *(&v63 + 1) = v39;
    swift_getOpaqueTypeConformance2();
    return AnyView.init<A>(_:)();
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    goto LABEL_7;
  }

  v13 = v11;
  KeyPath = v6;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((v70 & 0xC000000000000001) != 0)
  {
    goto LABEL_16;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v41 = *(v70 + 8 * a1 + 32);

LABEL_12:
  v61 = v41;

  v42 = *(v2 + OBJC_IVAR___CHWorkoutDetailSegmentDataSource_workout);
  v43 = *(v2 + OBJC_IVAR___CHWorkoutDetailSegmentDataSource_formattingManager);
  v58 = v13;
  sub_10020A5C0(v41, v42, 0, v43, a2, v13);
  (*(KeyPath + 16))(v8, v13, v5);
  v44 = Text.init(_:)();
  v46 = v45;
  v48 = v47;
  v62 = v5;
  sub_10020A2B4(a2);
  v49 = Text.foregroundColor(_:)();
  v51 = v50;
  v53 = v52;
  v55 = v54;

  sub_10004642C(v44, v46, v48 & 1);

  *&v70 = v49;
  *(&v70 + 1) = v51;
  LOBYTE(v71) = v53 & 1;
  *(&v71 + 1) = v55;
  v56 = AnyView.init<A>(_:)();

  (*(KeyPath + 8))(v58, v62);
  return v56;
}

unint64_t sub_10030C2DC()
{
  result = qword_1008E81C8;
  if (!qword_1008E81C8)
  {
    sub_100141EEC(&qword_1008E81C0);
    sub_10015EE70();
    sub_10014A6B0(&qword_1008E44F8, &qword_1008E4500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E81C8);
  }

  return result;
}

uint64_t sub_10030C3A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10030C428()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10030C464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_10030C4AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10030C55C()
{
  sub_100140278(&qword_1008E0EA0);
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t sub_10030C610()
{
  sub_100140278(&qword_1008E0EA0);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t sub_10030C66C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  v6 = *(a1 + 32);
  *(v5 + 16) = *(a1 + 16);
  *(v5 + 32) = v6;
  v7 = *(v2 + 48);
  *(v5 + 80) = *(v2 + 32);
  *(v5 + 96) = v7;
  *(v5 + 112) = *(v2 + 64);
  *(v5 + 128) = *(v2 + 80);
  v8 = *(v2 + 16);
  *(v5 + 48) = *v2;
  *(v5 + 64) = v8;
  (*(*(a1 - 8) + 16))(&v31, v2, a1);
  type metadata accessor for HStack();
  swift_getWitnessTable();
  v9 = type metadata accessor for ScrollView();
  WitnessTable = swift_getWitnessTable();
  v31 = v9;
  v32 = &type metadata for Int;
  v33 = WitnessTable;
  v34 = &protocol witness table for Int;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v31 = v9;
  v32 = &type metadata for Int;
  v33 = WitnessTable;
  v34 = &protocol witness table for Int;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = OpaqueTypeMetadata2;
  v32 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeMetadata2();
  v31 = OpaqueTypeMetadata2;
  v32 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeConformance2();
  v15 = sub_10030E328();
  v31 = v13;
  v32 = &type metadata for CGFloat;
  v33 = v14;
  v34 = v15;
  swift_getOpaqueTypeMetadata2();
  sub_100141EEC(&qword_1008E8268);
  v16 = type metadata accessor for ModifiedContent();
  v17 = type metadata accessor for PagingScrollTargetBehavior();
  v31 = v13;
  v32 = &type metadata for CGFloat;
  v33 = v14;
  v34 = v15;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = sub_10030E37C();
  v18 = swift_getWitnessTable();
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = &protocol witness table for PagingScrollTargetBehavior;
  v19 = swift_getOpaqueTypeMetadata2();
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = &protocol witness table for PagingScrollTargetBehavior;
  v20 = swift_getOpaqueTypeConformance2();
  v31 = v19;
  v32 = v20;
  v21 = swift_getOpaqueTypeMetadata2();
  v31 = v19;
  v32 = v20;
  v22 = swift_getOpaqueTypeConformance2();
  v31 = v21;
  v32 = v22;
  swift_getOpaqueTypeMetadata2();
  v31 = v21;
  v32 = v22;
  swift_getOpaqueTypeConformance2();
  v27 = ScrollViewReader.init(content:)();
  v28 = v23;
  v24 = type metadata accessor for ScrollViewReader();
  swift_getWitnessTable();
  v25 = *(*(v24 - 8) + 16);
  v25(&v31, &v27, v24);

  v27 = v31;
  v28 = v32;
  v25(a2, &v27, v24);
}

uint64_t sub_10030CAB0@<X0>(void (*a1)(__int128 *, __int128 *)@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, char *a7@<X8>)
{
  v152 = a4;
  v153 = a6;
  v149 = a5;
  v154 = a3;
  v147 = a1;
  v145 = a7;
  v8 = type metadata accessor for ScrollBounceBehavior();
  v143 = *(v8 - 8);
  v144 = v8;
  __chkstk_darwin(v8);
  v142 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ScrollIndicatorVisibility();
  v140 = *(v10 - 8);
  v141 = v10;
  __chkstk_darwin(v10);
  v137 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for PagingScrollTargetBehavior();
  v139 = *(v150 - 8);
  __chkstk_darwin(v150);
  v138 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for ScrollViewProxy();
  v102 = *(v118 - 8);
  v117 = *(v102 + 64);
  __chkstk_darwin(v118);
  v115 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HStack();
  WitnessTable = swift_getWitnessTable();
  v14 = type metadata accessor for ScrollView();
  v121 = *(v14 - 8);
  __chkstk_darwin(v14);
  v148 = &v101 - v15;
  v16 = swift_getWitnessTable();
  *&v165 = v14;
  *(&v165 + 1) = &type metadata for Int;
  v110 = v14;
  v166 = v16;
  v167 = &protocol witness table for Int;
  v17 = v16;
  v111 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v122 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v107 = &v101 - v19;
  *&v165 = v14;
  *(&v165 + 1) = &type metadata for Int;
  v166 = v17;
  v167 = &protocol witness table for Int;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v165 = OpaqueTypeMetadata2;
  *(&v165 + 1) = OpaqueTypeConformance2;
  v21 = OpaqueTypeMetadata2;
  v112 = OpaqueTypeMetadata2;
  v113 = OpaqueTypeConformance2;
  v22 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeMetadata2();
  v125 = *(v23 - 8);
  __chkstk_darwin(v23);
  v151 = &v101 - v24;
  *&v165 = v21;
  *(&v165 + 1) = v22;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_10030E328();
  *&v165 = v23;
  *(&v165 + 1) = &type metadata for CGFloat;
  v105 = v23;
  v106 = v25;
  v166 = v25;
  v167 = v26;
  v27 = v26;
  v104 = v26;
  v120 = swift_getOpaqueTypeMetadata2();
  v124 = *(v120 - 8);
  __chkstk_darwin(v120);
  v114 = &v101 - v28;
  sub_100141EEC(&qword_1008E8268);
  v29 = type metadata accessor for ModifiedContent();
  v123 = *(v29 - 8);
  __chkstk_darwin(v29);
  v119 = &v101 - v30;
  *&v165 = v23;
  *(&v165 + 1) = &type metadata for CGFloat;
  v166 = v25;
  v167 = v27;
  v31 = swift_getOpaqueTypeConformance2();
  v116 = v31;
  v32 = sub_10030E37C();
  v168 = v31;
  v169 = v32;
  v33 = swift_getWitnessTable();
  *&v165 = v29;
  v34 = v29;
  v108 = v29;
  v35 = v150;
  *(&v165 + 1) = v150;
  v166 = v33;
  v167 = &protocol witness table for PagingScrollTargetBehavior;
  v36 = v33;
  v109 = v33;
  v37 = swift_getOpaqueTypeMetadata2();
  v135 = *(v37 - 8);
  __chkstk_darwin(v37);
  v103 = &v101 - v38;
  *&v165 = v34;
  *(&v165 + 1) = v35;
  v166 = v36;
  v167 = &protocol witness table for PagingScrollTargetBehavior;
  v39 = swift_getOpaqueTypeConformance2();
  *&v165 = v37;
  *(&v165 + 1) = v39;
  v40 = swift_getOpaqueTypeMetadata2();
  v133 = *(v40 - 8);
  __chkstk_darwin(v40);
  v132 = &v101 - v41;
  v136 = v37;
  *&v165 = v37;
  *(&v165 + 1) = v39;
  v129 = v39;
  v42 = swift_getOpaqueTypeConformance2();
  v134 = v40;
  *&v165 = v40;
  *(&v165 + 1) = v42;
  v127 = v42;
  v43 = swift_getOpaqueTypeMetadata2();
  v130 = *(v43 - 8);
  v131 = v43;
  __chkstk_darwin(v43);
  v126 = &v101 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v128 = &v101 - v46;
  static Axis.Set.horizontal.getter();
  v48 = v153;
  v47 = v154;
  v160 = v154;
  v49 = v152;
  v161 = v152;
  v50 = v149;
  v162 = v149;
  v163 = v153;
  v164 = a2;
  ScrollView.init(_:showsIndicators:content:)();
  *&v165 = v47;
  *(&v165 + 1) = v49;
  v166 = v50;
  v167 = v48;
  WitnessTable = type metadata accessor for CustomPageControlTabView();
  v101 = a2;
  v165 = *a2;
  v166 = *(a2 + 2);
  sub_100140278(&qword_1008E0EA0);
  Binding.wrappedValue.getter();
  v51 = v102;
  v52 = v115;
  v53 = v118;
  (*(v102 + 16))(v115, v147, v118);
  v54 = (*(v51 + 80) + 136) & ~*(v51 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v47;
  *(v55 + 24) = v49;
  *(v55 + 32) = v50;
  *(v55 + 40) = v48;
  v56 = v101;
  v57 = v101[3];
  *(v55 + 80) = v101[2];
  *(v55 + 96) = v57;
  *(v55 + 112) = v56[4];
  *(v55 + 128) = *(v56 + 10);
  v58 = v56[1];
  *(v55 + 48) = *v56;
  *(v55 + 64) = v58;
  (*(v51 + 32))(v55 + v54, v52, v53);
  v59 = *(WitnessTable - 8);
  v147 = *(v59 + 16);
  v60 = v59 + 16;
  v147(&v165, v56);
  v118 = v60;
  v61 = v107;
  v62 = v110;
  v63 = v148;
  View.onChange<A>(of:initial:_:)();

  (*(v121 + 8))(v63, v62);
  v64 = swift_allocObject();
  v65 = v154;
  *(v64 + 16) = v154;
  *(v64 + 24) = v49;
  v66 = v149;
  v67 = v153;
  *(v64 + 32) = v149;
  *(v64 + 40) = v67;
  v68 = v56[3];
  *(v64 + 80) = v56[2];
  *(v64 + 96) = v68;
  *(v64 + 112) = v56[4];
  *(v64 + 128) = *(v56 + 10);
  v69 = v56[1];
  *(v64 + 48) = *v56;
  *(v64 + 64) = v69;
  v70 = WitnessTable;
  (v147)(&v165, v56, WitnessTable);
  v71 = v112;
  View.onScrollPhaseChange(_:)();

  (*(v122 + 8))(v61, v71);
  v72 = swift_allocObject();
  v73 = v152;
  *(v72 + 16) = v65;
  *(v72 + 24) = v73;
  v74 = v66;
  *(v72 + 32) = v66;
  *(v72 + 40) = v67;
  v75 = v67;
  v76 = v56[3];
  *(v72 + 80) = v56[2];
  *(v72 + 96) = v76;
  *(v72 + 112) = v56[4];
  *(v72 + 128) = *(v56 + 10);
  v77 = v56[1];
  *(v72 + 48) = *v56;
  *(v72 + 64) = v77;
  (v147)(&v165, v56, v70);
  v78 = v114;
  v79 = v105;
  v80 = v151;
  View.onScrollGeometryChange<A>(for:of:action:)();

  (*(v125 + 8))(v80, v79);
  static Alignment.bottom.getter();
  v155 = v154;
  v156 = v73;
  v157 = v74;
  v158 = v75;
  v81 = v103;
  v159 = v56;
  sub_100140278(&qword_1008E8278);
  sub_10030E4DC();
  v83 = v119;
  v82 = v120;
  View.overlay<A>(alignment:content:)();
  (*(v124 + 8))(v78, v82);
  v84 = v138;
  PagingScrollTargetBehavior.init()();
  v85 = v108;
  v86 = v150;
  View.scrollTargetBehavior<A>(_:)();
  (*(v139 + 8))(v84, v86);
  (*(v123 + 8))(v83, v85);
  v87 = v137;
  static ScrollIndicatorVisibility.hidden.getter();
  sub_100140278(&qword_1008E0960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  LOBYTE(v85) = static Axis.Set.vertical.getter();
  *(inited + 32) = v85;
  v89 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v89;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v85)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v89)
  {
    Axis.Set.init(rawValue:)();
  }

  v90 = v132;
  v91 = v136;
  View.scrollIndicators(_:axes:)();
  (*(v140 + 8))(v87, v141);
  (*(v135 + 8))(v81, v91);
  v92 = v142;
  static ScrollBounceBehavior.basedOnSize.getter();
  static Axis.Set.horizontal.getter();
  v93 = v126;
  v94 = v134;
  View.scrollBounceBehavior(_:axes:)();
  (*(v143 + 8))(v92, v144);
  (*(v133 + 8))(v90, v94);
  v96 = v130;
  v95 = v131;
  v97 = *(v130 + 16);
  v98 = v128;
  v97(v128, v93, v131);
  v99 = *(v96 + 8);
  v99(v93, v95);
  v97(v145, v98, v95);
  return (v99)(v98, v95);
}

uint64_t sub_10030D9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v12 = type metadata accessor for HStack();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v18 = &v22[-v17];
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a1;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  v19 = *(v13 + 16);
  v19(v18, v15, v12);
  v20 = *(v13 + 8);
  v20(v15, v12);
  v19(a6, v18, v12);
  return (v20)(v18, v12);
}

uint64_t sub_10030DB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v15 - v10;
  (*(v9 + 72))();
  v12 = *(v5 + 16);
  v12(v11, v8, a2);
  v13 = *(v5 + 8);
  v13(v8, a2);
  v12(a3, v11, a2);
  return (v13)(v11, a2);
}

uint64_t sub_10030DCD0(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a5;
  v25 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = &v21 - v13;
  v15 = *(a6 - 8);
  __chkstk_darwin(v16);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a3 + 24);
  sub_100140278(&qword_1008DDBB8);
  result = State.wrappedValue.getter();
  if (v30 == 1)
  {
    v22 = *(a3 + 7);
    v31 = v22;
    type metadata accessor for Array();
    v23 = a6;
    swift_getWitnessTable();
    v20 = v23;
    RandomAccessCollection<>.indices.getter();
    v29 = v30;
    *&v26 = v24;
    *(&v26 + 1) = v20;
    v27 = v25;
    v28 = a8;
    type metadata accessor for CustomPageControlTabView();
    v26 = *a3;
    v27 = *(a3 + 2);
    sub_100140278(&qword_1008E0EA0);
    Binding.wrappedValue.getter();
    sub_100140278(&qword_1008DE078);
    result = Range.contains(_:)();
    if (result)
    {
      v26 = *a3;
      v27 = *(a3 + 2);
      sub_100140278(&qword_1008E0EA0);
      Binding.wrappedValue.getter();
      Array.subscript.getter();
      dispatch thunk of Identifiable.id.getter();
      (*(v15 + 8))(v18, v20);
      swift_getAssociatedConformanceWitness();
      ScrollViewProxy.scrollTo<A>(_:anchor:)();
      return (*(v12 + 8))(v14, AssociatedTypeWitness);
    }
  }

  return result;
}

double sub_10030E0A0@<D0>(double *a1@<X8>)
{
  ScrollGeometry.contentOffset.getter();
  v3 = v2;
  ScrollGeometry.containerSize.getter();
  result = v3 / v4;
  *a1 = result;
  return result;
}

uint64_t sub_10030E0E0(uint64_t a1, double *a2)
{
  v2 = round(*a2);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v2 <= -9.22337204e18)
    {
      __break(1u);
    }

    else if (v2 < 9.22337204e18)
    {
      type metadata accessor for CustomPageControlTabView();
      sub_100140278(&qword_1008E0EA0);
      return Binding.wrappedValue.setter();
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10030E1A4@<X0>(uint64_t a1@<X8>)
{
  Array.count.getter();
  type metadata accessor for CustomPageControlTabView();
  sub_10030C610();
  sub_10030E594();
  View.isHidden(_:defaultAccessibilityHidden:)();

  v2 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  result = sub_100140278(&qword_1008E8278);
  v12 = a1 + *(result + 36);
  *v12 = v2;
  *(v12 + 8) = v4;
  *(v12 + 16) = v6;
  *(v12 + 24) = v8;
  *(v12 + 32) = v10;
  *(v12 + 40) = 0;
  return result;
}

unint64_t sub_10030E328()
{
  result = qword_1008E8260;
  if (!qword_1008E8260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E8260);
  }

  return result;
}

unint64_t sub_10030E37C()
{
  result = qword_1008E8270;
  if (!qword_1008E8270)
  {
    sub_100141EEC(&qword_1008E8268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E8270);
  }

  return result;
}

uint64_t sub_10030E3F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v9 = *(type metadata accessor for ScrollViewProxy() - 8);
  v10 = v2 + ((*(v9 + 80) + 136) & ~*(v9 + 80));

  return sub_10030DCD0(a1, a2, (v2 + 48), v10, v5, v6, v7, v8);
}

unint64_t sub_10030E4DC()
{
  result = qword_1008E8280;
  if (!qword_1008E8280)
  {
    sub_100141EEC(&qword_1008E8278);
    sub_10030E594();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E8280);
  }

  return result;
}

unint64_t sub_10030E594()
{
  result = qword_1008E8288;
  if (!qword_1008E8288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008E8288);
  }

  return result;
}

uint64_t sub_10030E618()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp20WorkoutHeartRateInfo_elapsedTimeInZones);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 1 << *(v1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;
  for (i = 0.0; v5; i = i + *(*(v1 + 56) + ((v8 << 9) | (8 * v9))))
  {
    v8 = v2;
LABEL_10:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v6)
    {
      return *&i;
    }

    v5 = *(v1 + 64 + 8 * v8);
    ++v2;
    if (v5)
    {
      v2 = v8;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10030E6D4()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    sub_100185C14(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      goto LABEL_21;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v3 = 0;
      do
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        Zone.displaySpan.getter();
        v5 = v4;
        v7 = v6;
        swift_unknownObjectRelease();
        v9 = _swiftEmptyArrayStorage[2];
        v8 = _swiftEmptyArrayStorage[3];
        if (v9 >= v8 >> 1)
        {
          sub_100185C14((v8 > 1), v9 + 1, 1);
        }

        ++v3;
        _swiftEmptyArrayStorage[2] = v9 + 1;
        v10 = &_swiftEmptyArrayStorage[2 * v9];
        v10[4] = v5;
        v10[5] = v7;
      }

      while (v2 != v3);
    }

    else
    {
      v12 = v1 + 32;
      do
      {

        Zone.displaySpan.getter();
        v14 = v13;
        v16 = v15;

        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          sub_100185C14((v17 > 1), v18 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v18 + 1;
        v19 = &_swiftEmptyArrayStorage[2 * v18];
        v19[4] = v14;
        v19[5] = v16;
        v12 += 8;
        --v2;
      }

      while (v2);
    }
  }

  type metadata accessor for ChartZones();
  result = swift_allocObject();
  if (_swiftEmptyArrayStorage[2])
  {
    *(result + 16) = _swiftEmptyArrayStorage;
    return result;
  }

LABEL_21:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10030E8E4()
{
  v1 = v0;
  v2 = 0x656E696665646E75;
  v3 = *v0;
  v4 = type metadata accessor for HeartRateConfiguration.ConfigurationType();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, enum case for HeartRateConfiguration.ConfigurationType.automatic(_:), v4);
  sub_10018A43C();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v5 + 8))(v7, v4);
  v8 = v57;
  v9 = v59;
  sub_10030E618();
  v10 = 0x656E696665646E75;
  v11 = 0xE900000000000064;
  if (v12)
  {
    goto LABEL_8;
  }

  result = sub_10030E618();
  v14 = *&result;
  if (v15)
  {
    v14 = 0.0;
  }

  else if ((result & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return result;
  }

  if (v14 >= 9.22337204e18)
  {
    goto LABEL_40;
  }

  v57 = v14;
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  v11 = v16;
LABEL_8:
  v17 = v0[2];
  v53 = v10;
  if (v17)
  {
    v51 = v9;
    v52 = v3;
    v18 = v17 >> 62;
    if (v17 >> 62)
    {
      goto LABEL_37;
    }

    for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v47)
    {
      v20 = _swiftEmptyArrayStorage;
      if (!i)
      {
        break;
      }

      v21 = v17;
      v57 = _swiftEmptyArrayStorage;
      result = sub_100073020(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        goto LABEL_41;
      }

      v20 = v57;
      v49 = v8;
      v50 = v11;
      v55 = i;
      if (v18)
      {
        v54 = v21 & 0xFFFFFFFFFFFFFF8;
        v23 = _CocoaArrayWrapper.endIndex.getter();
        v22 = v21;
      }

      else
      {
        v22 = v21;
        v54 = v21 & 0xFFFFFFFFFFFFFF8;
        v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v25 = 0;
      v56 = v22 & 0xC000000000000001;
      v8 = v23 & ~(v23 >> 63);
      v11 = v22;
      while (v8 != v25)
      {
        if (v56)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *(v54 + 16))
          {
            goto LABEL_36;
          }

          v26 = *(v22 + 8 * v25 + 32);
        }

        v27 = v1;
        sub_10030EDF4(v25, v26, v1);
        v29 = v28;
        v18 = v30;

        v57 = v20;
        v32 = v20[2];
        v31 = v20[3];
        if (v32 >= v31 >> 1)
        {
          sub_100073020((v31 > 1), v32 + 1, 1);
          v20 = v57;
        }

        ++v25;
        v20[2] = v32 + 1;
        v33 = &v20[2 * v32];
        v33[4] = v29;
        v33[5] = v18;
        v1 = v27;
        v22 = v11;
        if (v55 == v25)
        {
          v8 = v49;
          v11 = v50;
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      v46 = v17;
      v47 = _CocoaArrayWrapper.endIndex.getter();
      v17 = v46;
    }

LABEL_27:
    v57 = v20;
    sub_100140278(&unk_1008E99C0);
    sub_100020FC0();
    v2 = BidirectionalCollection<>.joined(separator:)();
    v24 = v34;

    v9 = v51;
  }

  else
  {
    v24 = 0xE900000000000064;
  }

  v35 = v8 == v9;
  if (v8 == v9)
  {
    v36 = 0xE900000000000063;
  }

  else
  {
    v36 = 0xE600000000000000;
  }

  if (v35)
  {
    v37 = 0x6974616D6F747561;
  }

  else
  {
    v37 = 0x6C61756E616DLL;
  }

  v57 = 0;
  v58 = 0xE000000000000000;
  _StringGuts.grow(_:)(66);
  v38._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v38);

  v39._countAndFlagsBits = 0x5A6E49656D697428;
  v39._object = 0xEF5B203A73656E6FLL;
  String.append(_:)(v39);
  v40._countAndFlagsBits = v2;
  v40._object = v24;
  String.append(_:)(v40);

  v41._object = 0x8000000100755020;
  v41._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v41);
  v42._countAndFlagsBits = v53;
  v42._object = v11;
  String.append(_:)(v42);

  v43._object = 0x8000000100755040;
  v43._countAndFlagsBits = 0xD000000000000015;
  String.append(_:)(v43);
  v44._countAndFlagsBits = v37;
  v44._object = v36;
  String.append(_:)(v44);

  v45._countAndFlagsBits = 41;
  v45._object = 0xE100000000000000;
  String.append(_:)(v45);
  return v57;
}

void sub_10030EDF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Zone.displaySpan.getter();
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  dispatch thunk of CustomStringConvertible.description.getter();
  v6._countAndFlagsBits = 45;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  Zone.displaySpan.getter();
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 8250;
  v9._object = 0xE200000000000000;
  String.append(_:)(v9);
  v10 = *(a3 + OBJC_IVAR____TtC10FitnessApp20WorkoutHeartRateInfo_elapsedTimeInZones);
  v11 = 0.0;
  if (v10 && *(v10 + 16))
  {
    v12 = sub_1004C5998(a1);
    if (v13)
    {
      v11 = *(*(v10 + 56) + 8 * v12);
    }
  }

  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_21;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v11 < 9.22337204e18)
  {
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_10030EFF0(void *a1, id a2)
{
  v3 = v2;
  v6 = sub_100140278(&qword_1008E8378);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v28 - v10;
  v12 = type metadata accessor for HeartRateConfiguration.ConfigurationType();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2 || (v16 = a2, v17 = HKWorkoutActivity.heartRateZones.getter(), v16, !v17))
  {
    v17 = HKWorkout.heartRateZones.getter();

    if (!v17)
    {
LABEL_6:
      *(v3 + 16) = v17;
      if (a2)
      {
        goto LABEL_7;
      }

LABEL_13:
      (*(v13 + 56))(v9, 1, 1, v12);
      goto LABEL_14;
    }
  }

  if (!(v17 >> 62))
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for Zone();

    goto LABEL_6;
  }

  if (v17 >= 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFFF8;
  }

  else
  {
    v20 = v17;
  }

  v28[1] = v20;
  type metadata accessor for Zone();

  v21 = _bridgeCocoaArray<A>(_:)();
  swift_bridgeObjectRelease_n();
  *(v3 + 16) = v21;
  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_7:
  v18 = a2;
  HKWorkoutActivity.heartRateZonesConfigurationType.getter();

  v19 = *(v13 + 48);
  if (v19(v9, 1, v12) != 1)
  {
    (*(v13 + 32))(v11, v9, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
    goto LABEL_16;
  }

LABEL_14:
  HKWorkout.heartRateZonesConfigurationType.getter();
  v19 = *(v13 + 48);
  if (v19(v9, 1, v12) != 1)
  {
    sub_10030F600(v9);
  }

LABEL_16:
  if (v19(v11, 1, v12) == 1)
  {
    (*(v13 + 104))(v15, enum case for HeartRateConfiguration.ConfigurationType.automatic(_:), v12);
    if (v19(v11, 1, v12) != 1)
    {
      sub_10030F600(v11);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
  }

  (*(v13 + 32))(v3 + OBJC_IVAR____TtC10FitnessApp20WorkoutHeartRateInfo_configurationType, v15, v12);
  if (a2)
  {
    v22 = a2;
    v23 = HKWorkoutActivity.elapsedTimeInHeartRateZones.getter();

    if (!v23)
    {
      v23 = HKWorkout.elapsedTimeInHeartRateZones.getter();
    }

    *(v3 + OBJC_IVAR____TtC10FitnessApp20WorkoutHeartRateInfo_elapsedTimeInZones) = v23;
    a2 = v22;
    v24 = HKWorkoutActivity.defaultRestingHeartRate.getter();

    if (v24)
    {

      goto LABEL_27;
    }
  }

  else
  {
    v25 = HKWorkout.elapsedTimeInHeartRateZones.getter();

    *(v3 + OBJC_IVAR____TtC10FitnessApp20WorkoutHeartRateInfo_elapsedTimeInZones) = v25;
  }

  v24 = HKWorkout.defaultRestingHeartRate.getter();

  if (!v24)
  {
    v26 = 0;
    goto LABEL_29;
  }

LABEL_27:

  v26 = 1;
LABEL_29:
  *(v3 + OBJC_IVAR____TtC10FitnessApp20WorkoutHeartRateInfo_hasDefaultRestingHeartRate) = v26;
  return v3;
}

uint64_t sub_10030F42C()
{

  v1 = OBJC_IVAR____TtC10FitnessApp20WorkoutHeartRateInfo_configurationType;
  v2 = type metadata accessor for HeartRateConfiguration.ConfigurationType();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutHeartRateInfo()
{
  result = qword_1008E82B8;
  if (!qword_1008E82B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10030F534()
{
  result = type metadata accessor for HeartRateConfiguration.ConfigurationType();
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

uint64_t sub_10030F600(uint64_t a1)
{
  v2 = sub_100140278(&qword_1008E8378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10030F77C()
{
  v1 = OBJC_IVAR____TtC10FitnessApp34ActivitySharingCloudDeviceProvider_activitySharingCloudDevicesChangedToken;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2 != -1)
  {
    notify_cancel(v2);
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for ActivitySharingCloudDeviceProvider();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for ActivitySharingCloudDeviceProvider()
{
  result = qword_1008E83A8;
  if (!qword_1008E83A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10030F934()
{
  result = type metadata accessor for SecureCloudClient();
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

uint64_t sub_10030F9E0()
{

  return _swift_task_switch(sub_10030FADC, 0, 0);
}

uint64_t sub_10030FADC()
{
  v1 = v0[11];
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000078CC();
  v2 = static OS_dispatch_queue.main.getter();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v0[6] = sub_10031062C;
  v0[7] = v3;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100629B20;
  v0[5] = &unk_100852778;
  v4 = _Block_copy(v0 + 2);
  v5 = v1;

  v6 = String.utf8CString.getter();

  v7 = OBJC_IVAR____TtC10FitnessApp34ActivitySharingCloudDeviceProvider_activitySharingCloudDevicesChangedToken;
  swift_beginAccess();
  notify_register_dispatch((v6 + 32), &v5[v7], v2, v4);
  swift_endAccess();
  _Block_release(v4);

  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_10030FCA0;

  return sub_1003102B0();
}

uint64_t sub_10030FCA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10030FD94()
{
  v0 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  static os_log_type_t.default.getter();
  v3 = HKLogActivity;
  os_log(_:dso:log:_:_:)();

  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_10026E7AC(0, 0, v2, &unk_1006E8BA8, v6);
}