uint64_t sub_10022F728()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_10022F7A8@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 localizedStringForKey:v3 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10019E0AC();
  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_10022F884()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for CollaborationPopoverDetailView();
  ObservedObject.projectedValue.getter();
  swift_getKeyPath();
  ObservedObject.Wrapper.subscript.getter();

  swift_unknownObjectRelease();
  sub_10019E0AC();
  return Toggle<>.init<A>(_:isOn:)();
}

uint64_t sub_10022F9EC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v79 = a4;
  v7 = sub_10015DA04(&qword_1006C0CA0);
  v8 = __chkstk_darwin(v7 - 8);
  v80 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v78 = &v64 - v10;
  v74 = sub_10015DA04(&qword_1006C0CA8);
  __chkstk_darwin(v74);
  v73 = &v64 - v11;
  v83 = sub_10015DA04(&qword_1006C0C88);
  __chkstk_darwin(v83);
  v82 = &v64 - v12;
  v81 = sub_10015DA04(&qword_1006C0C78);
  v85 = *(v81 - 8);
  __chkstk_darwin(v81);
  v14 = &v64 - v13;
  v76 = sub_10015DA04(&qword_1006C0C68);
  v75 = *(v76 - 8);
  v15 = __chkstk_darwin(v76);
  v68 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v64 - v18;
  __chkstk_darwin(v17);
  v21 = &v64 - v20;
  v22 = sub_10015DA04(&qword_1006C0CB0);
  v23 = __chkstk_darwin(v22 - 8);
  v77 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v84 = &v64 - v25;
  v26 = *(a3 + 16);
  swift_unknownObjectRetain();
  v72 = a3 + 16;
  v71 = v26;
  v27 = v26(a2, a3);
  v67 = a1;
  v70 = a2;
  if (v27 && (v28 = v27, objc_opt_self(), v29 = swift_dynamicCastObjCClass(), v28, v29))
  {
    (*(a3 + 144))(a2, a3);
    v34 = *a1;
    v89 = a1[1];
    v90 = v34;
    v35 = swift_allocObject();
    *(v35 + 16) = a2;
    *(v35 + 24) = a3;
    v36 = a1[1];
    *(v35 + 32) = *a1;
    *(v35 + 48) = v36;
    *(v35 + 64) = *(a1 + 4);
    v66 = *(a3 + 8);
    v37 = type metadata accessor for ObservedObject();
    (*(*(v37 - 8) + 16))(&v88, &v90, v37);
    sub_100006038(&v89, &v88, &qword_1006BE398);
    sub_10015DA04(&qword_1006BE428);
    sub_1000060B4(&qword_1006BE438, &qword_1006BE428);
    Button.init(action:label:)();
  }

  else
  {
    (*(a3 + 144))(a2, a3);
    v30 = *a1;
    v89 = a1[1];
    v90 = v30;
    v31 = swift_allocObject();
    *(v31 + 16) = a2;
    *(v31 + 24) = a3;
    v32 = a1[1];
    *(v31 + 32) = *a1;
    *(v31 + 48) = v32;
    *(v31 + 64) = *(a1 + 4);
    v66 = *(a3 + 8);
    v33 = type metadata accessor for ObservedObject();
    (*(*(v33 - 8) + 16))(&v88, &v90, v33);
    sub_100006038(&v89, &v88, &qword_1006BE398);
    sub_10015DA04(&qword_1006BE428);
    sub_1000060B4(&qword_1006BE438, &qword_1006BE428);
    Button.init(action:label:)();
    v21 = v19;
  }

  v38 = v85;
  v39 = v81;
  v65 = *(v85 + 16);
  v65(v82, v14, v81);
  swift_storeEnumTagMultiPayload();
  sub_1000060B4(&qword_1006C0C70, &qword_1006C0C78);
  _ConditionalContent<>.init(storage:)();
  v40 = *(v38 + 8);
  v69 = v14;
  v41 = v14;
  v42 = v40;
  v85 = v38 + 8;
  v40(v41, v39);
  sub_100006038(v21, v73, &qword_1006C0C68);
  swift_storeEnumTagMultiPayload();
  sub_10023375C();
  v43 = v76;
  _ConditionalContent<>.init(storage:)();
  sub_1000073B4(v21, &qword_1006C0C68);
  v44 = v70;
  v45 = v71(v70, a3);
  if (!v45)
  {
    swift_unknownObjectRelease();
LABEL_10:
    v57 = 1;
    v56 = v78;
    goto LABEL_11;
  }

  v46 = v45;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    swift_unknownObjectRelease();

    goto LABEL_10;
  }

  v47 = v44;
  (*(a3 + 160))(v44, a3);
  swift_unknownObjectRelease();
  v48 = v67;
  v49 = *v67;
  v87 = v67[1];
  v88 = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = v47;
  *(v50 + 24) = a3;
  v51 = v48[1];
  *(v50 + 32) = *v48;
  *(v50 + 48) = v51;
  *(v50 + 64) = *(v48 + 4);
  v52 = type metadata accessor for ObservedObject();
  (*(*(v52 - 8) + 16))(v86, &v88, v52);
  sub_100006038(&v87, v86, &qword_1006BE398);
  sub_10015DA04(&qword_1006BE428);
  sub_1000060B4(&qword_1006BE438, &qword_1006BE428);
  v53 = v69;
  Button.init(action:label:)();
  v54 = v81;
  v65(v82, v53, v81);
  swift_storeEnumTagMultiPayload();
  v55 = v68;
  _ConditionalContent<>.init(storage:)();
  v42(v53, v54);
  v56 = v78;
  sub_1001F7498(v55, v78, &qword_1006C0C68);
  v57 = 0;
LABEL_11:
  (*(v75 + 56))(v56, v57, 1, v43);
  v58 = v84;
  v59 = v77;
  sub_100006038(v84, v77, &qword_1006C0CB0);
  v60 = v80;
  sub_100006038(v56, v80, &qword_1006C0CA0);
  v61 = v79;
  sub_100006038(v59, v79, &qword_1006C0CB0);
  v62 = sub_10015DA04(&qword_1006C0CB8);
  sub_100006038(v60, v61 + *(v62 + 48), &qword_1006C0CA0);
  sub_1000073B4(v56, &qword_1006C0CA0);
  sub_1000073B4(v58, &qword_1006C0CB0);
  sub_1000073B4(v60, &qword_1006C0CA0);
  return sub_1000073B4(v59, &qword_1006C0CB0);
}

uint64_t sub_10023087C()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10019E0AC();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_100230978()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10019E0AC();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_100230A74()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10019E0AC();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_100230B70()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10019E0AC();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_100230C94()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10019E0AC();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_100230D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v30 = sub_10015DA04(&qword_1006C0C80);
  __chkstk_darwin(v30);
  v33 = &v27 - v7;
  v28 = sub_10015DA04(&qword_1006C0C88);
  __chkstk_darwin(v28);
  v9 = &v27 - v8;
  v31 = sub_10015DA04(&qword_1006C0C68);
  __chkstk_darwin(v31);
  v29 = &v27 - v10;
  v11 = sub_10015DA04(&qword_1006C0C78);
  v32 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  v14 = *(a1 + 8);
  v15 = *(a3 + 16);
  swift_unknownObjectRetain();
  v16 = v15(a2, a3);
  if (v16 && (v17 = v16, objc_opt_self(), v18 = swift_dynamicCastObjCClass(), v17, v18) || (v19 = v15(a2, a3)) != 0 && (v20 = v19, objc_opt_self(), v21 = swift_dynamicCastObjCClass(), v20, v21))
  {
    v22 = swift_allocObject();
    v22[2] = a2;
    v22[3] = a3;
    v22[4] = v14;
    sub_10015DA04(&qword_1006BE428);
    sub_1000060B4(&qword_1006BE438, &qword_1006BE428);
    Button.init(action:label:)();
    v23 = v32;
    (*(v32 + 16))(v9, v13, v11);
    swift_storeEnumTagMultiPayload();
    sub_1000060B4(&qword_1006C0C70, &qword_1006C0C78);
    v24 = v29;
    _ConditionalContent<>.init(storage:)();
    sub_100006038(v24, v33, &qword_1006C0C68);
    swift_storeEnumTagMultiPayload();
    sub_10023375C();
    _ConditionalContent<>.init(storage:)();
    sub_1000073B4(v24, &qword_1006C0C68);
  }

  else
  {
    v25 = swift_allocObject();
    v25[2] = a2;
    v25[3] = a3;
    v25[4] = v14;
    sub_10015DA04(&qword_1006BE428);
    sub_1000060B4(&qword_1006BE438, &qword_1006BE428);
    Button.init(action:label:)();
    v23 = v32;
    (*(v32 + 16))(v33, v13, v11);
    swift_storeEnumTagMultiPayload();
    sub_10023375C();
    sub_1000060B4(&qword_1006C0C70, &qword_1006C0C78);
    _ConditionalContent<>.init(storage:)();
  }

  return (*(v23 + 8))(v13, v11);
}

uint64_t sub_1002313B0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10019E0AC();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_1002314AC()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10019E0AC();
  return Label<>.init<A>(_:systemImage:)();
}

uint64_t sub_1002315A8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 localizedStringForKey:v1 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10019E0AC();
  return Label<>.init<A>(_:systemImage:)();
}

unint64_t sub_1002316F0()
{
  result = qword_1006C09B0;
  if (!qword_1006C09B0)
  {
    sub_10017992C(&qword_1006C09A8);
    sub_1000060B4(&qword_1006C09B8, &qword_1006C09C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C09B0);
  }

  return result;
}

uint64_t sub_1002317A0@<X0>(uint64_t a1@<X8>)
{
  *a1 = static VerticalAlignment.center.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = sub_10015DA04(&qword_1006C0D50);
  sub_100231834((a1 + *(v2 + 44)));
  v3 = static Color.primary.getter();
  KeyPath = swift_getKeyPath();
  result = sub_10015DA04(&qword_1006C0D58);
  v6 = (a1 + *(result + 36));
  *v6 = KeyPath;
  v6[1] = v3;
  return result;
}

uint64_t sub_100231834@<X0>(char *a1@<X8>)
{
  v33 = a1;
  v1 = sub_10015DA04(&qword_1006C0D60);
  v2 = v1 - 8;
  v3 = __chkstk_darwin(v1);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v31 - v6;
  v8 = type metadata accessor for LabelStyleConfiguration.Title();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v32 = &v31 - v13;
  LabelStyleConfiguration.title.getter();
  LabelStyleConfiguration.icon.getter();
  v15 = &v7[*(sub_10015DA04(&qword_1006C0D68) + 36)];
  v16 = *(sub_10015DA04(&qword_1006BE3D0) + 28);
  v17 = enum case for Image.Scale.large(_:);
  v18 = type metadata accessor for Image.Scale();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = &v7[*(sub_10015DA04(&qword_1006C0D70) + 36)];
  v20 = v36;
  *v19 = v35;
  *(v19 + 1) = v20;
  *(v19 + 2) = v37;
  v21 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  v23 = &v7[*(v2 + 44)];
  *v23 = KeyPath;
  v23[1] = v21;
  v24 = *(v9 + 16);
  v24(v12, v14, v8);
  v34 = 1;
  sub_100006038(v7, v5, &qword_1006C0D60);
  v25 = v33;
  v24(v33, v12, v8);
  v26 = sub_10015DA04(&qword_1006C0D78);
  v27 = &v25[*(v26 + 48)];
  v28 = v34;
  *v27 = 0;
  v27[8] = v28;
  sub_100006038(v5, &v25[*(v26 + 64)], &qword_1006C0D60);
  sub_1000073B4(v7, &qword_1006C0D60);
  v29 = *(v9 + 8);
  v29(v32, v8);
  sub_1000073B4(v5, &qword_1006C0D60);
  return (v29)(v12, v8);
}

uint64_t sub_100231BA8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100231C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_100231CD0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

unint64_t sub_100231D9C()
{
  result = qword_1006C0A80;
  if (!qword_1006C0A80)
  {
    sub_10017992C(&qword_1006C0A88);
    sub_100231E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0A80);
  }

  return result;
}

unint64_t sub_100231E20()
{
  result = qword_1006C0A90;
  if (!qword_1006C0A90)
  {
    sub_1000054A4(255, &qword_1006C8870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0A90);
  }

  return result;
}

uint64_t sub_100231E88()
{
  v0 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v56 = *(v0 - 8);
  v57 = v0;
  __chkstk_darwin(v0);
  v55 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v2 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v5 - 8);
  v7 = &v49 - v6;
  v8 = sub_10015DA04(&unk_1006C5400);
  __chkstk_darwin(v8 - 8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for AttributedString();
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = __chkstk_darwin(v11);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v51 = &v49 - v14;
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 localizedStringForKey:v17 value:0 table:0];

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v19;

  v20 = [v15 mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 localizedStringForKey:v21 value:0 table:0];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v60 = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(50);

  v60 = 91;
  v61 = 0xE100000000000000;
  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  v27._object = 0x80000001005680E0;
  v27._countAndFlagsBits = 0xD00000000000002FLL;
  String.append(_:)(v27);
  v28 = type metadata accessor for URL();
  (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
  (*(v2 + 104))(v53, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v54);
  (*(v56 + 104))(v55, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v57);
  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  AttributedString.init(markdown:options:baseURL:)();
  v30 = v58;
  v29 = v59;
  (*(v58 + 56))(v10, 0, 1, v59);
  v31 = v51;
  (*(v30 + 32))(v51, v10, v29);
  v60 = v49;
  v61 = v52;
  sub_10019E0AC();
  v32 = Text.init<A>(_:)();
  v34 = v33;
  v36 = v35;
  v37 = static Text.+ infix(_:_:)();
  v57 = v38;
  LODWORD(v53) = v39;
  sub_1001B39D4(v32, v34, v36 & 1);

  (*(v30 + 16))(v50, v31, v29);
  v40 = Text.init(_:)();
  v42 = v41;
  v44 = v43;
  LOBYTE(v2) = v53;
  v45 = v57;
  v56 = static Text.+ infix(_:_:)();
  v54 = v46;
  LODWORD(v55) = v47;
  sub_1001B39D4(v40, v42, v44 & 1);

  sub_1001B39D4(v37, v45, v2 & 1);

  (*(v30 + 8))(v51, v59);
  return v56;
}

unint64_t sub_100232568()
{
  result = qword_1006C0AD0;
  if (!qword_1006C0AD0)
  {
    sub_10017992C(&qword_1006C0AC0);
    sub_100232620();
    sub_1000060B4(&qword_1006C0B08, &qword_1006C0AC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0AD0);
  }

  return result;
}

unint64_t sub_100232620()
{
  result = qword_1006C0AD8;
  if (!qword_1006C0AD8)
  {
    sub_10017992C(&qword_1006C0AE0);
    sub_1002326D8();
    sub_1000060B4(&qword_1006C0AF8, &qword_1006C0B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0AD8);
  }

  return result;
}

unint64_t sub_1002326D8()
{
  result = qword_1006C0AE8;
  if (!qword_1006C0AE8)
  {
    sub_10017992C(&qword_1006C0AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0AE8);
  }

  return result;
}

unint64_t sub_100232754()
{
  result = qword_1006C0B18;
  if (!qword_1006C0B18)
  {
    sub_10017992C(&qword_1006C0AB8);
    sub_100232568();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B18);
  }

  return result;
}

unint64_t sub_1002327D8()
{
  result = qword_1006C0B20;
  if (!qword_1006C0B20)
  {
    sub_10017992C(&qword_1006C0B10);
    sub_100232864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B20);
  }

  return result;
}

unint64_t sub_100232864()
{
  result = qword_1006C0B28;
  if (!qword_1006C0B28)
  {
    sub_10017992C(&qword_1006BE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B28);
  }

  return result;
}

uint64_t sub_1002328E8()
{
  v0 = type metadata accessor for AttributedString.MarkdownParsingOptions.FailurePolicy();
  v56 = *(v0 - 8);
  v57 = v0;
  __chkstk_darwin(v0);
  v55 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for AttributedString.MarkdownParsingOptions.InterpretedSyntax();
  v2 = *(v54 - 8);
  __chkstk_darwin(v54);
  v53 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AttributedString.MarkdownParsingOptions();
  __chkstk_darwin(v4 - 8);
  v5 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v5 - 8);
  v7 = &v49 - v6;
  v8 = sub_10015DA04(&unk_1006C5400);
  __chkstk_darwin(v8 - 8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for AttributedString();
  v58 = *(v11 - 8);
  v59 = v11;
  v12 = __chkstk_darwin(v11);
  v50 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v51 = &v49 - v14;
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 localizedStringForKey:v17 value:0 table:0];

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v19;

  v20 = [v15 mainBundle];
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 localizedStringForKey:v21 value:0 table:0];

  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  v60 = 0;
  v61 = 0xE000000000000000;
  _StringGuts.grow(_:)(50);

  v60 = 91;
  v61 = 0xE100000000000000;
  v26._countAndFlagsBits = v23;
  v26._object = v25;
  String.append(_:)(v26);

  v27._object = 0x80000001005680E0;
  v27._countAndFlagsBits = 0xD00000000000002FLL;
  String.append(_:)(v27);
  v28 = type metadata accessor for URL();
  (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
  (*(v2 + 104))(v53, enum case for AttributedString.MarkdownParsingOptions.InterpretedSyntax.full(_:), v54);
  (*(v56 + 104))(v55, enum case for AttributedString.MarkdownParsingOptions.FailurePolicy.throwError(_:), v57);
  AttributedString.MarkdownParsingOptions.init(allowsExtendedAttributes:interpretedSyntax:failurePolicy:languageCode:)();
  AttributedString.init(markdown:options:baseURL:)();
  v30 = v58;
  v29 = v59;
  (*(v58 + 56))(v10, 0, 1, v59);
  v31 = v51;
  (*(v30 + 32))(v51, v10, v29);
  v60 = v49;
  v61 = v52;
  sub_10019E0AC();
  v32 = Text.init<A>(_:)();
  v34 = v33;
  v36 = v35;
  v37 = static Text.+ infix(_:_:)();
  v57 = v38;
  LODWORD(v53) = v39;
  sub_1001B39D4(v32, v34, v36 & 1);

  (*(v30 + 16))(v50, v31, v29);
  v40 = Text.init(_:)();
  v42 = v41;
  v44 = v43;
  LOBYTE(v2) = v53;
  v45 = v57;
  v56 = static Text.+ infix(_:_:)();
  v54 = v46;
  LODWORD(v55) = v47;
  sub_1001B39D4(v40, v42, v44 & 1);

  sub_1001B39D4(v37, v45, v2 & 1);

  (*(v30 + 8))(v51, v59);
  return v56;
}

unint64_t sub_100232FC8()
{
  result = qword_1006C0B58;
  if (!qword_1006C0B58)
  {
    sub_10017992C(&qword_1006C0B48);
    sub_1000060B4(&qword_1006C0B50, &qword_1006C0B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B58);
  }

  return result;
}

uint64_t sub_100233180()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[9];
  v4 = *(v2 + 104);
  swift_unknownObjectRetain();
  v4(v3, v1, v2);

  return swift_unknownObjectRelease();
}

unint64_t sub_100233200()
{
  result = qword_1006C0B60;
  if (!qword_1006C0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B60);
  }

  return result;
}

uint64_t sub_100233254()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10023329C(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[9];
  v6 = *(v4 + 112);
  swift_unknownObjectRetain();
  v6(v5, a1, v3, v4);

  return swift_unknownObjectRelease();
}

unint64_t sub_10023332C()
{
  result = qword_1006C0B70;
  if (!qword_1006C0B70)
  {
    sub_10017992C(&qword_1006C0B68);
    sub_1002333B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B70);
  }

  return result;
}

unint64_t sub_1002333B8()
{
  result = qword_1006C0B78;
  if (!qword_1006C0B78)
  {
    sub_10017992C(&qword_1006C0B80);
    sub_1000060B4(&qword_1006C0B88, &qword_1006C0B90);
    sub_1000060B4(&qword_1006BE370, &qword_1006BE360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0B78);
  }

  return result;
}

uint64_t sub_10023349C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1001B39C4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1002334E0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1001B39D4(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_100233524()
{
  result = qword_1006C0C10;
  if (!qword_1006C0C10)
  {
    sub_10017992C(&qword_1006C0C00);
    sub_1000060B4(&qword_1006C0B50, &qword_1006C0B30);
    sub_1000060B4(&qword_1006BE370, &qword_1006BE360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0C10);
  }

  return result;
}

unint64_t sub_100233608()
{
  result = qword_1006C0C18;
  if (!qword_1006C0C18)
  {
    type metadata accessor for BorderedProminentButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0C18);
  }

  return result;
}

unint64_t sub_1002336A4()
{
  result = qword_1006C0C58;
  if (!qword_1006C0C58)
  {
    sub_10017992C(&qword_1006C0C50);
    sub_10023375C();
    sub_1000060B4(&qword_1006C0C70, &qword_1006C0C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0C58);
  }

  return result;
}

unint64_t sub_10023375C()
{
  result = qword_1006C0C60;
  if (!qword_1006C0C60)
  {
    sub_10017992C(&qword_1006C0C68);
    sub_1000060B4(&qword_1006C0C70, &qword_1006C0C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0C60);
  }

  return result;
}

uint64_t sub_100233864(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v4 + 168);
  swift_unknownObjectRetain();
  v5(a1, v3, v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_1002338E8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100233928(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v4 + 152);
  swift_unknownObjectRetain();
  v5(a1, v3, v4);

  return swift_unknownObjectRelease();
}

void sub_1002339A4()
{
  sub_100233A38();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100233A38()
{
  if (!qword_1006C0D48)
  {
    type metadata accessor for ColorSchemeContrast();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C0D48);
    }
  }
}

unint64_t sub_100233AD4()
{
  result = qword_1006C0D80;
  if (!qword_1006C0D80)
  {
    sub_10017992C(&qword_1006C0D58);
    sub_1000060B4(&qword_1006C0D88, &qword_1006C0D90);
    sub_1000060B4(&qword_1006C0AF8, &qword_1006C0B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0D80);
  }

  return result;
}

uint64_t sub_100233C0C()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1006C0D98);
  swift_endAccess();
  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_10001FA64(v6, &v7);
    type metadata accessor for ICDebugStatusWindow();
    swift_dynamicCast();
    return v3;
  }

  else
  {
    sub_1000073B4(v6, &qword_1006BE7A0);
    return 0;
  }
}

void sub_100233DB8()
{
  v1 = v0;
  v2 = [v0 viewControllerManager];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 isAuxiliary];

    if ((v4 & 1) == 0)
    {
      swift_beginAccess();
      v5 = objc_getAssociatedObject(v1, &unk_1006C0D99);
      swift_endAccess();
      if (v5)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_1000073B4(v9, &qword_1006BE7A0);
      }

      else
      {
        memset(v9, 0, sizeof(v9));
        sub_1000073B4(v9, &qword_1006BE7A0);
        v6 = [objc_opt_self() standardUserDefaults];
        *&v9[0] = v6;
        swift_getKeyPath();
        swift_allocObject();
        swift_unknownObjectUnownedInit();
        v7 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

        swift_beginAccess();
        v8 = v7;
        objc_setAssociatedObject(v1, &unk_1006C0D99, v8, 1);
        swift_endAccess();
      }
    }
  }
}

void sub_100233FA4()
{
  sub_10015DA04(&qword_1006C0E60);
  NSKeyValueObservedChange.newValue.getter();
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v0 = &selRef_hideDebugStatusWindow_;
  }

  else
  {
    v0 = &selRef_showDebugStatusWindow_;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong *v0];
}

void sub_100234148()
{
  if (ICDebugModeEnabled() && ([v0 isDebugWindowVisible] & 1) == 0)
  {
    v1 = objc_allocWithZone(type metadata accessor for ICDebugStatusWindow());
    v2 = v0;
    v3 = sub_100236C2C(v2);

    [v3 setHidden:0];
    v5 = v3;
    v4 = [v2 windowScene];
    [v5 setWindowScene:v4];

    [v2 setDebugWindow:v5];
  }
}

uint64_t sub_10023449C(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_panStart];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v1[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_xPosition] = 0;
  *&v1[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_yPosition] = 0;
  swift_unknownObjectUnownedInit();
  v5 = [objc_allocWithZone(UIView) init];
  *&v1[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_container] = v5;
  v34.receiver = v1;
  v34.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v34, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v7 = OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_container;
  v8 = *&v6[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_container];
  v9 = v6;
  v10 = [v8 layer];
  LODWORD(v11) = 1058642330;
  [v10 setShadowOpacity:v11];

  v12 = [*&v6[v7] layer];
  [v12 setShadowRadius:4.0];

  [*&v6[v7] setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = *&v6[v7];
  v14 = v9;
  [v14 addSubview:v13];
  v15 = [*&v6[v7] leftAnchor];
  v16 = [v14 leftAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  v18 = OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_xPosition;
  v19 = *&v14[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_xPosition];
  *&v14[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_xPosition] = v17;

  v20 = [*&v6[v7] topAnchor];
  v21 = [v14 topAnchor];

  v22 = [v20 constraintEqualToAnchor:v21];
  v23 = OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_yPosition;
  v24 = *&v14[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_yPosition];
  *&v14[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_yPosition] = v22;

  sub_10023480C();
  sub_10015DA04(&unk_1006BD390);
  result = swift_allocObject();
  *(result + 16) = xmmword_100531E20;
  v26 = *&v14[v18];
  if (v26)
  {
    v27 = result;
    *(result + 32) = v26;
    v28 = *&v14[v23];
    if (v28)
    {
      v29 = objc_opt_self();
      *(v27 + 40) = v28;
      sub_1000054A4(0, &qword_1006C5D90);
      v30 = v26;
      v31 = v28;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v29 activateConstraints:isa];

      v33 = [objc_allocWithZone(UIPanGestureRecognizer) initWithTarget:v14 action:"handlePanGesture:"];
      [*&v6[v7] addGestureRecognizer:v33];
      sub_1002349FC();
      sub_100234AFC();

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

void sub_10023480C()
{
  v1 = [v0 safeAreaLayoutGuide];
  [v1 layoutFrame];
  v3 = v2;

  if (v3 < 24.0)
  {
    return;
  }

  v4 = [v0 safeAreaLayoutGuide];
  [v4 layoutFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v29.origin.x = v6;
  v29.origin.y = v8;
  v29.size.width = v10;
  v29.size.height = v12;
  v30 = CGRectInset(v29, 12.0, 0.0);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  v17 = [v0 traitCollection];
  v18 = [v17 layoutDirection];

  v19 = x;
  v20 = y;
  v21 = width;
  v22 = height;
  if (v18)
  {
    MinX = CGRectGetMinX(*&v19);
  }

  else
  {
    MaxX = CGRectGetMaxX(*&v19);
    [*&v0[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_container] frame];
    MinX = MaxX - CGRectGetWidth(v31);
    if (MinX <= 0.0)
    {
      MinX = 0.0;
    }
  }

  v25 = *&v0[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_xPosition];
  if (!v25)
  {
    __break(1u);
    goto LABEL_12;
  }

  [v25 setConstant:MinX];
  v26 = *&v0[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_yPosition];
  if (!v26)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v27 = v26;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  [v27 setConstant:CGRectGetMinY(v32)];
}

void sub_1002349FC()
{
  v1 = [*&v0[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_container] layer];
  v2 = [v0 traitCollection];
  v3 = [v2 ic_isDark];

  v4 = objc_opt_self();
  v5 = &selRef_clearColor;
  if (!v3)
  {
    v5 = &selRef_systemGrayColor;
  }

  v6 = [v4 *v5];
  v7 = [v6 CGColor];

  [v1 setShadowColor:v7];
}

void sub_100234AFC()
{
  v1 = *&v0[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_container];
  [v1 frame];
  v3 = v2;
  v5 = v4;
  [v0 bounds];
  MaxX = CGRectGetMaxX(v12);
  if (MaxX <= 1.0)
  {
    MaxX = 1.0;
  }

  v7 = v3 / MaxX;
  [v0 bounds];
  MaxY = CGRectGetMaxY(v13);
  if (MaxY <= 1.0)
  {
    MaxY = 1.0;
  }

  v9 = v5 / MaxY;
  v10 = [v1 layer];
  [v10 setShadowOffset:{v7 + v7, v9 * 3.0 + 1.0}];
}

CGAffineTransform *sub_100234E48(void *a1)
{
  if ([a1 state] <= 1)
  {
    result = [*(v1 + OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_container) frame];
    v4 = v1 + OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_panStart;
    *v4 = v5;
    *(v4 + 8) = v6;
    *(v4 + 16) = 0;
    return result;
  }

  [a1 translationInView:v1];
  result = CGAffineTransformMakeTranslation(&v10, v7, v8);
  if (*(v1 + OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_panStart + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = CGPointApplyAffineTransform(*(v1 + OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_panStart), &v10);
  result = *(v1 + OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_xPosition);
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [(CGAffineTransform *)result setConstant:v9.x];
  result = *(v1 + OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_yPosition);
  if (result)
  {
    return [(CGAffineTransform *)result setConstant:v9.y];
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_100235178()
{
  v1 = v0;
  v2 = type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin(v2 - 8);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = objc_allocWithZone(type metadata accessor for ICDebugStatusRootView());
  v5 = sub_10023449C(Strong);
  v6 = OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC431ICDebugStatusRootViewController_rootView;
  v7 = *&v1[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC431ICDebugStatusRootViewController_rootView];
  *&v1[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC431ICDebugStatusRootViewController_rootView] = v5;
  v8 = v5;

  [v1 setView:v8];
  v9 = *&v1[v6];
  if (!v9)
  {
    __break(1u);
    goto LABEL_17;
  }

  [v9 setAlpha:0.0];
  LOBYTE(v50) = 0;
  LOBYTE(v51) = 0;
  v10 = objc_allocWithZone(sub_10015DA04(&qword_1006C0E50));
  v11 = UIHostingController.init(rootView:)();
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();
  v12 = v11;
  v13 = [v12 view];
  if (!v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13;
  v15 = [objc_opt_self() clearColor];
  [v14 setBackgroundColor:v15];

  v16 = [v12 view];
  if (!v16)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v17 = v16;
  [v16 setOpaque:0];

  [v1 addChildViewController:v12];
  v18 = *&v1[v6];
  if (!v18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v19 = *(v18 + OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_container);
  v20 = [v12 view];
  if (!v20)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = v20;
  [v19 addSubview:v20];

  sub_10015DA04(&unk_1006BD390);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100531E10;
  v23 = [v12 view];
  if (!v23)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v24 = v23;
  v25 = [v23 leadingAnchor];

  v26 = *&v1[v6];
  if (!v26)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v27 = [*(v26 + OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_container) leadingAnchor];
  v28 = [v25 constraintEqualToAnchor:v27];

  *(v22 + 32) = v28;
  v29 = [v12 view];
  if (!v29)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v30 = v29;
  v31 = [v29 topAnchor];

  v32 = *&v1[v6];
  if (!v32)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v33 = [*(v32 + OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_container) topAnchor];
  v34 = [v31 constraintEqualToAnchor:v33];

  *(v22 + 40) = v34;
  v35 = [v12 view];
  if (!v35)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v36 = v35;
  v37 = [v35 trailingAnchor];

  v38 = *&v1[v6];
  if (!v38)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = [*(v38 + OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_container) trailingAnchor];
  v40 = [v37 constraintEqualToAnchor:v39];

  *(v22 + 48) = v40;
  v41 = [v12 view];
  if (!v41)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v42 = v41;
  v43 = [v41 bottomAnchor];

  v44 = *&v1[v6];
  if (!v44)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v45 = objc_opt_self();
  v46 = [*(v44 + OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_container) bottomAnchor];
  v47 = [v43 constraintEqualToAnchor:v46];

  *(v22 + 56) = v47;
  sub_1000054A4(0, &qword_1006C5D90);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v45 activateConstraints:isa];

  v49 = [v12 view];
  if (v49)
  {
    [v49 setTranslatesAutoresizingMaskIntoConstraints:0];

    [v12 didMoveToParentViewController:v1];
    return;
  }

LABEL_29:
  __break(1u);
}

void sub_10023575C(char a1)
{
  v16.receiver = v1;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1);
  v3 = sub_1002358B4();
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = *&v1[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC431ICDebugStatusRootViewController_rootView];
  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v3;
  if (v4[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_panStart + 16] != 1)
  {
LABEL_9:

LABEL_10:
    v15 = *&v1[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC431ICDebugStatusRootViewController_rootView];
    if (v15)
    {
      [v15 setAlpha:1.0];
      return;
    }

    __break(1u);
    goto LABEL_13;
  }

  v6 = v4;
  v7 = [v5 topViewController];
  if (!v7)
  {
LABEL_8:

    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 view];
  if (!v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  [v9 safeAreaInsets];
  v12 = v11;

  v13 = *&v6[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC421ICDebugStatusRootView_yPosition];
  if (v13)
  {
    v14 = v13;
    [v14 setConstant:v12 + 8.0];

    goto LABEL_8;
  }

LABEL_15:
  __break(1u);
}

uint64_t sub_1002358B4()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong rootViewController];

  if (v1)
  {
    sub_10015DA04(&qword_1006BF370);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = v1;
    *(inited + 40) = 0;
    v19 = v1;
    v3 = 1;
    do
    {
      while (1)
      {
        v4 = *(inited + 40);
        v5 = *(inited + 32);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || (v3 - 1) > *(inited + 24) >> 1)
        {
          inited = sub_1001CAF7C(isUniquelyReferenced_nonNull_native, v3, 1, inited);
        }

        sub_1000073B4(inited + 32, &qword_1006BF378);
        v7 = *(inited + 16);
        memmove((inited + 32), (inited + 48), 16 * v7 - 16);
        *(inited + 16) = v7 - 1;
        v21 = inited;
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v15 = v8;

          return v15;
        }

        if (v4 <= 2)
        {
          break;
        }

        v3 = *(inited + 16);
        if (!v3)
        {
          goto LABEL_18;
        }
      }

      v9 = swift_allocObject();
      *(v9 + 16) = sub_1000280DC;
      *(v9 + 24) = 0;
      v10 = [v5 childViewControllers];
      sub_1000054A4(0, &unk_1006C8180);
      v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v11 >> 62)
      {
        v13 = _CocoaArrayWrapper.endIndex.getter();
        if (v13)
        {
          v18 = v13;
          v12 = sub_1001CDCFC(v13, 0);

          sub_1002EA3E8((v12 + 4), v18, v11);
          v17 = v14;

          if (v17 != v18)
          {
            __break(1u);

            __break(1u);
            return result;
          }
        }

        else
        {
          v12 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
        v12 = (v11 & 0xFFFFFFFFFFFFFF8);
      }

      v20 = v12;
      sub_100235CE8(&v20);

      v22[0] = v20;
      v22[1] = v4 + 1;
      v23 = 256;
      v24 = sub_100236B98;
      v25 = v9;
      v26 = 0;

      sub_1002DBBAC(v22);

      inited = v21;
      v3 = *(v21 + 16);
    }

    while (v3);
LABEL_18:
  }

  return 0;
}

uint64_t sub_100235CE8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1001B3A2C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_100235D64(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_100235D64(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1000054A4(0, &unk_1006C8180);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100235FE0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100235E78(0, v2, 1, a1);
  }
}

void sub_100235E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_5:
    v22 = a3;
    v7 = *(v4 + 8 * a3);
    v20 = v6;
    v21 = v5;
    while (1)
    {
      v8 = *v5;
      v9 = v7;
      v10 = v8;
      v11 = [v9 viewIfLoaded];
      if (!v11)
      {
        break;
      }

      v12 = v11;
      v13 = [v10 viewIfLoaded];
      if (!v13)
      {

        v9 = v10;
        goto LABEL_12;
      }

      v14 = v13;
      [v12 frame];
      MinX = CGRectGetMinX(v23);
      [v14 frame];
      v16 = CGRectGetMinX(v24);

      if (MinX >= v16)
      {
        goto LABEL_4;
      }

LABEL_13:
      if (!v4)
      {
        __break(1u);
        return;
      }

      v17 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v17;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
LABEL_4:
        a3 = v22 + 1;
        v5 = v21 + 8;
        v6 = v20 - 1;
        if (v22 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    v12 = v10;
LABEL_12:

    goto LABEL_13;
  }
}

void sub_100235FE0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = v5;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = _swiftEmptyArrayStorage;
LABEL_109:
    v6 = a3;
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_149;
    }

    v4 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v101 = v4;
LABEL_112:
      v102 = v7;
      v4 = *(v101 + 2);
      if (v4 >= 2)
      {
        while (*v6)
        {
          v7 = v4 - 1;
          v103 = *&v101[16 * v4];
          v104 = v101;
          v105 = *&v101[16 * v4 + 24];
          sub_1002367DC((*v6 + 8 * v103), (*v6 + 8 * *&v101[16 * v4 + 16]), (*v6 + 8 * v105), v9);
          if (v102)
          {
            goto LABEL_120;
          }

          if (v105 < v103)
          {
            goto LABEL_136;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v104 = sub_1001B36CC(v104);
          }

          if (v4 - 2 >= *(v104 + 2))
          {
            goto LABEL_137;
          }

          v106 = &v104[16 * v4];
          *v106 = v103;
          *(v106 + 1) = v105;
          sub_1001B3640(v4 - 1);
          v101 = v104;
          v4 = *(v104 + 2);
          if (v4 <= 1)
          {
            goto LABEL_120;
          }
        }

        goto LABEL_147;
      }

LABEL_120:

      return;
    }

LABEL_143:
    v101 = sub_1001B36CC(v4);
    goto LABEL_112;
  }

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  v11 = &selRef_tintColor;
  while (1)
  {
    v12 = v9;
    v9 = (v9 + 1);
    if (v9 >= v8)
    {
      goto LABEL_33;
    }

    v116 = v8;
    v109 = v10;
    v111 = v12;
    v13 = *a3;
    v14 = *(*a3 + 8 * v12);
    v6 = *(*a3 + 8 * v9);
    v15 = v14;
    v16 = [v6 v11[388]];
    if (v16)
    {
      v17 = v16;
      v18 = [v15 v11[388]];
      if (v18)
      {
        v19 = v18;
        [v17 frame];
        MinX = CGRectGetMinX(v119);
        [v19 frame];
        v21 = CGRectGetMinX(v120);

        v4 = MinX < v21;
      }

      else
      {

        v4 = 1;
      }

      v11 = &selRef_tintColor;
    }

    else
    {

      v4 = 1;
    }

    v9 = (v12 + 2);
    if (v12 + 2 >= v116)
    {
      v10 = v109;
      if (!v4)
      {
        goto LABEL_33;
      }

LABEL_25:
      if (v9 >= v12)
      {
        v31 = v9;
        if (v12 < v9)
        {
          v32 = 8 * v9 - 8;
          v33 = 8 * v12;
          v34 = v12;
          do
          {
            v31 = (v31 - 1);
            if (v34 != v31)
            {
              v36 = *a3;
              if (!*a3)
              {
                goto LABEL_146;
              }

              v35 = *(v36 + v33);
              *(v36 + v33) = *(v36 + v32);
              *(v36 + v32) = v35;
            }

            v34 = (v34 + 1);
            v32 -= 8;
            v33 += 8;
          }

          while (v34 < v31);
        }

        goto LABEL_33;
      }

LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v22 = (v13 + 8 * v12 + 16);
    do
    {
      v26 = *(v22 - 1);
      v27 = *v22;
      v28 = v26;
      v29 = [v27 v11[388]];
      if (v29)
      {
        v6 = v29;
        v30 = [v28 v11[388]];
        if (v30)
        {
          v23 = v30;
          [v6 frame];
          v24 = CGRectGetMinX(v121);
          [v23 frame];
          v25 = CGRectGetMinX(v122);

          v11 = &selRef_tintColor;
          if (((v4 ^ (v24 >= v25)) & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_14;
        }

        v27 = v28;
        v11 = &selRef_tintColor;
      }

      else
      {
        v6 = v28;
      }

      if (!v4)
      {
        v10 = v109;
        v12 = v111;
        goto LABEL_33;
      }

LABEL_14:
      ++v22;
      v9 = (v9 + 1);
    }

    while (v116 != v9);
    v9 = v116;
LABEL_24:
    v10 = v109;
    v12 = v111;
    if (v4)
    {
      goto LABEL_25;
    }

LABEL_33:
    v37 = a3[1];
    if (v9 < v37)
    {
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_139;
      }

      if (v9 - v12 < a4)
      {
        if (__OFADD__(v12, a4))
        {
          goto LABEL_140;
        }

        if (v12 + a4 >= v37)
        {
          v38 = a3[1];
        }

        else
        {
          v38 = (v12 + a4);
        }

        if (v38 < v12)
        {
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (v9 != v38)
        {
          break;
        }
      }
    }

LABEL_57:
    if (v9 < v12)
    {
      goto LABEL_138;
    }

    v55 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v10 = v55;
    }

    else
    {
      v10 = sub_1001B36E0(0, *(v55 + 2) + 1, 1, v55);
    }

    v4 = *(v10 + 2);
    v56 = *(v10 + 3);
    v57 = v4 + 1;
    if (v4 >= v56 >> 1)
    {
      v10 = sub_1001B36E0((v56 > 1), v4 + 1, 1, v10);
    }

    *(v10 + 2) = v57;
    v58 = &v10[16 * v4];
    *(v58 + 4) = v12;
    *(v58 + 5) = v9;
    v59 = *a1;
    if (!*a1)
    {
      goto LABEL_148;
    }

    if (v4)
    {
      while (1)
      {
        v6 = v57 - 1;
        if (v57 >= 4)
        {
          break;
        }

        if (v57 == 3)
        {
          v60 = *(v10 + 4);
          v61 = *(v10 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_77:
          if (v63)
          {
            goto LABEL_127;
          }

          v76 = &v10[16 * v57];
          v78 = *v76;
          v77 = *(v76 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_130;
          }

          v82 = &v10[16 * v6 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v80, v85))
          {
            goto LABEL_134;
          }

          if (v80 + v85 >= v62)
          {
            if (v62 < v85)
            {
              v6 = v57 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v86 = &v10[16 * v57];
        v88 = *v86;
        v87 = *(v86 + 1);
        v70 = __OFSUB__(v87, v88);
        v80 = v87 - v88;
        v81 = v70;
LABEL_91:
        if (v81)
        {
          goto LABEL_129;
        }

        v89 = &v10[16 * v6];
        v91 = *(v89 + 4);
        v90 = *(v89 + 5);
        v70 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v70)
        {
          goto LABEL_132;
        }

        if (v92 < v80)
        {
          goto LABEL_3;
        }

LABEL_98:
        v4 = v6 - 1;
        if (v6 - 1 >= v57)
        {
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*a3)
        {
          goto LABEL_145;
        }

        v97 = v10;
        v98 = *&v10[16 * v4 + 32];
        v99 = *&v10[16 * v6 + 40];
        sub_1002367DC((*a3 + 8 * v98), (*a3 + 8 * *&v10[16 * v6 + 32]), (*a3 + 8 * v99), v59);
        if (v7)
        {
          goto LABEL_120;
        }

        if (v99 < v98)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_1001B36CC(v97);
        }

        if (v4 >= *(v97 + 2))
        {
          goto LABEL_124;
        }

        v100 = &v97[16 * v4];
        *(v100 + 4) = v98;
        *(v100 + 5) = v99;
        sub_1001B3640(v6);
        v10 = v97;
        v57 = *(v97 + 2);
        if (v57 <= 1)
        {
          goto LABEL_3;
        }
      }

      v64 = &v10[16 * v57 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_125;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_126;
      }

      v71 = &v10[16 * v57];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_128;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_131;
      }

      if (v75 >= v67)
      {
        v93 = &v10[16 * v6 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_135;
        }

        if (v62 < v96)
        {
          v6 = v57 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_77;
    }

LABEL_3:
    v8 = a3[1];
    if (v9 >= v8)
    {
      goto LABEL_109;
    }
  }

  v39 = v9;
  v110 = v10;
  v112 = v12;
  v107 = v7;
  v40 = *a3;
  v4 = *a3 + 8 * v39 - 8;
  v41 = v12 - v39;
  v42 = v39;
  v114 = v38;
  while (2)
  {
    v115 = v4;
    v117 = v42;
    v43 = *(v40 + 8 * v42);
    v44 = v41;
LABEL_45:
    v45 = *v4;
    v46 = v43;
    v47 = v45;
    v48 = [v46 v11[388]];
    if (!v48)
    {
      v6 = v47;
LABEL_51:

      goto LABEL_52;
    }

    v6 = v48;
    v49 = [v47 v11[388]];
    if (!v49)
    {

      v46 = v47;
      v11 = &selRef_tintColor;
      goto LABEL_51;
    }

    v50 = v49;
    [v6 frame];
    v51 = CGRectGetMinX(v123);
    [v50 frame];
    v52 = CGRectGetMinX(v124);

    v11 = &selRef_tintColor;
    if (v51 >= v52)
    {
      goto LABEL_43;
    }

LABEL_52:
    if (v40)
    {
      v53 = *v4;
      v43 = *(v4 + 8);
      *v4 = v43;
      *(v4 + 8) = v53;
      v4 -= 8;
      if (__CFADD__(v44++, 1))
      {
LABEL_43:
        v42 = (v117 + 1);
        v4 = v115 + 8;
        --v41;
        if ((v117 + 1) == v114)
        {
          v9 = v114;
          v7 = v107;
          v10 = v110;
          v12 = v112;
          goto LABEL_57;
        }

        continue;
      }

      goto LABEL_45;
    }

    break;
  }

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
}

uint64_t sub_1002367DC(void **__dst, id *__src, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v41 = &v4[v13];
    if (v11 >= 8 && v6 > v7)
    {
      while (2)
      {
        v28 = v6 - 1;
        --v5;
        v29 = v41;
        while (1)
        {
          v30 = *--v29;
          v31 = *v28;
          v32 = v30;
          v33 = v31;
          v34 = [v32 viewIfLoaded];
          if (!v34)
          {
            break;
          }

          v35 = v34;
          v36 = [v33 viewIfLoaded];
          if (!v36)
          {

            v32 = v33;
            goto LABEL_39;
          }

          v37 = v36;
          [v35 frame];
          MinX = CGRectGetMinX(v44);
          [v37 frame];
          v39 = CGRectGetMinX(v45);

          v28 = v6 - 1;
          if (MinX < v39)
          {
            goto LABEL_40;
          }

          if (v5 + 1 != v41)
          {
            *v5 = *v29;
          }

          --v5;
          v41 = v29;
          if (v29 <= v4)
          {
            v41 = v29;
            goto LABEL_46;
          }
        }

        v35 = v33;
LABEL_39:

        v28 = v6 - 1;
LABEL_40:
        if (v5 + 1 != v6)
        {
          *v5 = *v28;
        }

        if (v41 <= v4 || (v6 = v28, v28 <= v7))
        {
          v6 = v28;
          break;
        }

        continue;
      }
    }
  }

  else
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v41 = &v4[v10];
    if (v8 >= 8 && v6 < v5)
    {
      v14 = &selRef_tintColor;
      while (1)
      {
        v15 = *v4;
        v16 = *v6;
        v17 = v15;
        v18 = [v16 v14[388]];
        if (!v18)
        {
          break;
        }

        v19 = v14;
        v20 = v18;
        v21 = v4;
        v22 = [v17 v19[388]];
        if (!v22)
        {

          v16 = v17;
LABEL_19:

LABEL_20:
          v26 = v6;
          v27 = v7 == v6++;
          v14 = &selRef_tintColor;
          if (v27)
          {
            goto LABEL_22;
          }

LABEL_21:
          *v7 = *v26;
          goto LABEL_22;
        }

        v23 = v22;
        [v20 frame];
        v24 = CGRectGetMinX(v42);
        [v23 frame];
        v25 = CGRectGetMinX(v43);

        if (v24 < v25)
        {
          goto LABEL_20;
        }

        v26 = v4++;
        v14 = &selRef_tintColor;
        if (v7 != v21)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v7;
        if (v4 >= v41 || v6 >= v5)
        {
          goto LABEL_24;
        }
      }

      v20 = v17;
      goto LABEL_19;
    }

LABEL_24:
    v6 = v7;
  }

LABEL_46:
  if (v6 != v4 || v6 >= (v4 + ((v41 - v4 + (v41 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v41 - v4));
  }

  return 1;
}

void *sub_100236B98@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v5 = *result;
  v6 = *(result + 8);
  if (*(result + 9) == 1)
  {
    *(result + 9) = 0;
  }

  else if (result[1])
  {
    v6 = 1;
  }

  else
  {
    v13 = v3;
    v14 = v4;
    v7 = *(v2 + 16);
    v10 = v5;
    v8 = a2;
    v9 = result;
    result = v7(&v11, &v10);
    a2 = v8;
    v5 = v11;
    v6 = v12;
    *v9 = v11;
    *(v9 + 8) = v6;
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

id sub_100236C2C(void *a1)
{
  v11.receiver = v1;
  v11.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v11, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v4 = type metadata accessor for ICDebugStatusRootViewController();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC11MobileNotesP33_679C7337F26BC959ACC0954CE78EECC431ICDebugStatusRootViewController_rootView] = 0;
  swift_unknownObjectUnownedInit();
  v10.receiver = v5;
  v10.super_class = v4;
  v6 = v3;
  v7 = objc_msgSendSuper2(&v10, "initWithNibName:bundle:", 0, 0);
  [v6 setRootViewController:v7];

  type metadata accessor for Level(0);
  [a1 windowLevel];
  sub_100236D64();
  static _UIKitNumericRawRepresentable.+ infix(_:_:)();
  [v6 setWindowLevel:v9];

  return v6;
}

unint64_t sub_100236D64()
{
  result = qword_1006C0E58;
  if (!qword_1006C0E58)
  {
    type metadata accessor for Level(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0E58);
  }

  return result;
}

id sub_100236DD0()
{
  sub_10015DA04(&qword_1006BE7D8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100535E30;
  sub_10015DA04(&unk_1006BD390);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100531E20;
  v2 = objc_opt_self();
  *(v1 + 32) = [v2 traitCollectionWithUserInterfaceStyle:1];
  *(v1 + 40) = [v2 traitCollectionWithUserInterfaceStyle:2];
  *(v0 + 32) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100531E20;
  *(v3 + 32) = [v2 traitCollectionWithAccessibilityContrast:0];
  result = [v2 traitCollectionWithAccessibilityContrast:1];
  *(v3 + 40) = result;
  *(v0 + 40) = v3;
  off_1006C0E68 = v0;
  return result;
}

void *sub_100236F1C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes33ICSystemPaperChromeLayerGenerator____lazy_storage___chromeLayerTraitCollections);
  if (v1)
  {

    return v1;
  }

  v41 = OBJC_IVAR____TtC11MobileNotes33ICSystemPaperChromeLayerGenerator____lazy_storage___chromeLayerTraitCollections;
  v42 = v0;
  if (qword_1006BC610 != -1)
  {
    goto LABEL_73;
  }

LABEL_4:
  v2 = off_1006C0E68;
  sub_10015DA04(&qword_1006BE7D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100531E30;
  sub_10015DA04(&unk_1006BD390);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100534670;
  *(v4 + 32) = [objc_allocWithZone(UITraitCollection) init];
  *(inited + 32) = v4;
  v44 = v2[2];
  if (v44)
  {
    v5 = v2;
    v6 = 0;
    v45 = v5 + 4;
    v43 = v5;
    while (1)
    {
      if (v6 >= v5[2])
      {
        goto LABEL_72;
      }

      v46 = v6;
      v7 = v45[v6];
      v8 = *(inited + 16);

      v49 = v8;
      if (v8)
      {
        break;
      }

      v10 = _swiftEmptyArrayStorage;
LABEL_53:
      v6 = v46 + 1;

      inited = v10;
      v5 = v43;
      if (v46 + 1 == v44)
      {
        goto LABEL_56;
      }
    }

    v9 = 0;
    v48 = inited + 32;
    v10 = _swiftEmptyArrayStorage;
    v47 = inited;
    while (1)
    {
      if (v9 >= *(inited + 16))
      {
        goto LABEL_66;
      }

      v12 = *(v48 + 8 * v9);
      if (v7 >> 62)
      {
        v13 = _CocoaArrayWrapper.endIndex.getter();
        v50 = v9;
        if (v13)
        {
LABEL_14:

          sub_100189524(0, v13 & ~(v13 >> 63), 0);
          if (v13 < 0)
          {
            goto LABEL_69;
          }

          v14 = 0;
          v51 = v13;
          while (2)
          {
            if ((v7 & 0xC000000000000001) != 0)
            {
              v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              goto LABEL_21;
            }

            if ((v14 & 0x8000000000000000) == 0)
            {
              if (v14 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_65;
              }

              v15 = *(v7 + 8 * v14 + 32);
LABEL_21:
              v16 = v15;
              v17 = swift_initStackObject();
              *(v17 + 16) = xmmword_100534670;
              *(v17 + 32) = v16;
              v18 = v12 >> 62;
              if (v12 >> 62)
              {
                v21 = _CocoaArrayWrapper.endIndex.getter();
                v20 = v21 + 1;
                if (__OFADD__(v21, 1))
                {
LABEL_60:
                  __break(1u);
LABEL_61:
                  __break(1u);
                  goto LABEL_62;
                }
              }

              else
              {
                v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v20 = v19 + 1;
                if (__OFADD__(v19, 1))
                {
                  goto LABEL_60;
                }
              }

              v22 = v16;
              if (swift_isUniquelyReferenced_nonNull_bridgeObject())
              {
                if (!v18)
                {
                  v23 = v12 & 0xFFFFFFFFFFFFFF8;
                  v24 = v12;
                  if (v20 > *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
LABEL_32:
                    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v23 = v24 & 0xFFFFFFFFFFFFFF8;
                  }

                  if (*(v23 + 16) >= *(v23 + 24) >> 1)
                  {
                    goto LABEL_61;
                  }

                  sub_100238058();
                  swift_arrayInitWithCopy();

                  ++*(v23 + 16);
                  v26 = _swiftEmptyArrayStorage[2];
                  v25 = _swiftEmptyArrayStorage[3];
                  if (v26 >= v25 >> 1)
                  {
                    sub_100189524((v25 > 1), v26 + 1, 1);
                  }

                  ++v14;
                  _swiftEmptyArrayStorage[2] = v26 + 1;
                  _swiftEmptyArrayStorage[v26 + 4] = v24;
                  if (v51 == v14)
                  {

                    goto LABEL_39;
                  }

                  continue;
                }
              }

              else if (!v18)
              {
                goto LABEL_32;
              }

              _CocoaArrayWrapper.endIndex.getter();
              goto LABEL_32;
            }

            break;
          }

          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          swift_once();
          goto LABEL_4;
        }
      }

      else
      {
        v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v50 = v9;
        if (v13)
        {
          goto LABEL_14;
        }
      }

LABEL_39:
      v27 = _swiftEmptyArrayStorage[2];
      v28 = v10[2];
      v29 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
        goto LABEL_67;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v29 <= v10[3] >> 1)
      {
        if (_swiftEmptyArrayStorage[2])
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v28 <= v29)
        {
          v31 = v28 + v27;
        }

        else
        {
          v31 = v28;
        }

        v10 = sub_1001CB0B0(isUniquelyReferenced_nonNull_native, v31, 1, v10);
        if (_swiftEmptyArrayStorage[2])
        {
LABEL_48:
          if ((v10[3] >> 1) - v10[2] < v27)
          {
            goto LABEL_70;
          }

          sub_10015DA04(&unk_1006BE7E0);
          swift_arrayInitWithCopy();

          v11 = v50;
          if (v27)
          {
            v32 = v10[2];
            v33 = __OFADD__(v32, v27);
            v34 = v32 + v27;
            if (v33)
            {
              goto LABEL_71;
            }

            v10[2] = v34;
          }

          goto LABEL_10;
        }
      }

      v11 = v50;
      if (v27)
      {
        goto LABEL_68;
      }

LABEL_10:
      v9 = v11 + 1;
      inited = v47;
      if (v9 == v49)
      {
        goto LABEL_53;
      }
    }
  }

  v10 = inited;
LABEL_56:
  v35 = v10[2];
  if (v35)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v36 = objc_opt_self();
    sub_100238058();
    v37 = 32;
    do
    {

      isa = Array._bridgeToObjectiveC()().super.isa;

      v39 = [v36 traitCollectionWithTraitsFromCollections:isa];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v37 += 8;
      --v35;
    }

    while (v35);
  }

LABEL_62:

  v1 = _swiftEmptyArrayStorage;
  *(v42 + v41) = _swiftEmptyArrayStorage;

  return v1;
}

void sub_100237544(void *a1, id a2)
{
  v3 = [a2 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 layer];

    v6 = [a1 CGContext];
    [v5 renderInContext:v6];
  }

  else
  {
    __break(1u);
  }
}

void sub_100237600(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_10023764C()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v37 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v28 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v36 = &v28 - v5;
  v6 = sub_100236F1C();
  if (v6 >> 62)
  {
    goto LABEL_18;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    while (1)
    {
      v8 = v6;
      v40 = _swiftEmptyArrayStorage;
      sub_100189544(0, v7 & ~(v7 >> 63), 0);
      if (v7 < 0)
      {
        break;
      }

      v38 = v40;
      v39 = v1;
      v6 = type metadata accessor for ThumbnailGeneratorSystemPaper();
      v32 = v6;
      v33 = v8;
      v9 = 0;
      v10 = v8;
      v34 = v2;
      v35 = v8 & 0xC000000000000001;
      v29 = v8 & 0xFFFFFFFFFFFFFF8;
      v30 = (v37 + 32);
      v1 = v28;
      v31 = v7;
      while (1)
      {
        v2 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v35)
        {
          v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v29 + 16))
          {
            goto LABEL_17;
          }

          v11 = *(v10 + 8 * v9 + 32);
        }

        v12 = v11;
        static ThumbnailGeneratorSystemPaper.chromeBackdropImageUrl(for:)();
        sub_100237AEC(v12);
        v14 = v13;
        v15 = [v13 ic_PNGData];
        v16 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v19 = v39;
        Data.write(to:options:)();
        v39 = v19;
        if (v19)
        {
          (*(v37 + 8))(v1, v34);

          sub_10019671C(v16, v18);

          return;
        }

        sub_10019671C(v16, v18);
        v20 = *v30;
        v21 = v36;
        v22 = v34;
        (*v30)(v36, v1, v34);
        v23 = v38;
        v40 = v38;
        v25 = v38[2];
        v24 = v38[3];
        if (v25 >= v24 >> 1)
        {
          sub_100189544(v24 > 1, v25 + 1, 1);
          v21 = v36;
          v1 = v28;
          v23 = v40;
        }

        v23[2] = v25 + 1;
        v26 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v38 = v23;
        v6 = v20(v23 + v26 + *(v37 + 72) * v25, v21, v22);
        ++v9;
        v10 = v33;
        if (v2 == v31)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v27 = v6;
      v7 = _CocoaArrayWrapper.endIndex.getter();
      v6 = v27;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

void sub_100237AEC(void *a1)
{
  if (![objc_opt_self() isMainThread])
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v2 = [objc_opt_self() sharedContext];
  if (!v2)
  {
    goto LABEL_19;
  }

  v3 = v2;
  v4 = [v2 managedObjectContext];

  if (!v4)
  {
    goto LABEL_19;
  }

  v5 = [objc_opt_self() newEmptyNoteInContext:v4];
  sub_10015DA04(&unk_1006BD390);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100531E20;
  *(v6 + 32) = a1;
  v7 = objc_opt_self();
  v8 = a1;
  *(v6 + 40) = [v7 traitCollectionWithUserInterfaceLevel:1];
  sub_100238058();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v10 = [v7 traitCollectionWithTraitsFromCollections:isa];

  v11 = sub_1003D1DB0(0, _swiftEmptyArrayStorage);
  v12 = [v11 view];
  if (!v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = v12;
  type metadata accessor for ThumbnailGeneratorSystemPaper();
  static ThumbnailGeneratorSystemPaper.chromeSize.getter();
  [v13 setBounds:{0.0, 0.0, v14, v15}];

  v16 = [v11 view];
  if (!v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = v16;
  [v16 _setLocalOverrideTraitCollection:v8];

  v18 = [v11 view];
  if (!v18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = v18;
  if ([v8 layoutDirection] == 1)
  {
    v20 = 4;
  }

  else
  {
    v20 = 3;
  }

  [v19 setSemanticContentAttribute:v20];

  v21 = [v11 view];
  if (!v21)
  {
    goto LABEL_23;
  }

  v22 = v21;
  [v21 setNeedsLayout];

  v23 = [v11 view];
  if (!v23)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v23 layoutIfNeeded];

  v24 = v5;
  sub_1003C6DC0(v5, 0, 0, 0, 0);

  v25 = *&v11[OBJC_IVAR___ICSystemPaperViewController_currentNoteEditorViewController];
  if (!v25)
  {
LABEL_15:
    v30 = [objc_opt_self() formatForTraitCollection:v8];
    static ThumbnailGeneratorSystemPaper.chromeSize.getter();
    v33 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v30 format:{v31, v32}];
    v34 = swift_allocObject();
    *(v34 + 16) = v11;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1002380A4;
    *(v35 + 24) = v34;
    aBlock[4] = sub_1002380AC;
    aBlock[5] = v35;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100237600;
    aBlock[3] = &unk_100651410;
    v36 = _Block_copy(aBlock);
    v37 = v11;

    [v33 imageWithActions:v36];

    _Block_release(v36);
    LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

    if ((v37 & 1) == 0)
    {
      [v4 deleteObject:v24];

      return;
    }

    goto LABEL_18;
  }

  v26 = [v25 view];
  if (v26)
  {
    v27 = v26;
    v28 = [objc_opt_self() systemBackgroundColor];
    v29 = [v28 resolvedColorWithTraitCollection:v10];

    [v27 setBackgroundColor:v29];
    goto LABEL_15;
  }

LABEL_25:
  __break(1u);
}

unint64_t sub_100238058()
{
  result = qword_1006BDAB0;
  if (!qword_1006BDAB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006BDAB0);
  }

  return result;
}

uint64_t sub_100238588(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___ICQuotaExceededAlertController_lastShowDate;
  swift_beginAccess();
  sub_10023A008(a1, v2 + v4);
  swift_endAccess();
  v5 = [objc_opt_self() standardUserDefaults];
  isa = Date._bridgeToObjectiveC()().super.isa;
  v7 = String._bridgeToObjectiveC()();
  [v5 setObject:isa forKey:v7];

  return sub_1000073B4(a1, &unk_1006C1710);
}

uint64_t sub_100238810()
{
  v1 = sub_10015DA04(&unk_1006C1710);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v19[-v5];
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(v0 + OBJC_IVAR___ICQuotaExceededAlertController_ignoresDebouncing) & 1) == 0)
  {
    if (*(v0 + OBJC_IVAR___ICQuotaExceededAlertController_didShowForRecord))
    {
      return 0;
    }

    *(v0 + OBJC_IVAR___ICQuotaExceededAlertController_didShowForRecord) = 1;
    v12 = [*(v0 + OBJC_IVAR___ICQuotaExceededAlertController_recordID) recordName];
    if (!v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = String._bridgeToObjectiveC()();
    }

    [objc_opt_self() setDidShowExceededStorageQuotaAlert:1 forNoteWithIdentifier:v12];

    v13 = OBJC_IVAR___ICQuotaExceededAlertController_lastShowDate;
    swift_beginAccess();
    sub_100239F98(v0 + v13, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1000073B4(v6, &unk_1006C1710);
    }

    else
    {
      (*(v8 + 32))(v10, v6, v7);
      Date.timeIntervalSince(_:)();
      v15 = v14;
      (*(v8 + 8))(v10, v7);
      if (v15 < *(v0 + OBJC_IVAR___ICQuotaExceededAlertController_minimumLastShowDateInterval))
      {
        return 0;
      }
    }

    (*(v8 + 16))(v4, v0 + OBJC_IVAR___ICQuotaExceededAlertController_date, v7);
    (*(v8 + 56))(v4, 0, 1, v7);
    swift_beginAccess();
    sub_10023A008(v4, v0 + v13);
    swift_endAccess();
    v16 = [objc_opt_self() standardUserDefaults];
    isa = Date._bridgeToObjectiveC()().super.isa;
    v18 = String._bridgeToObjectiveC()();
    [v16 setObject:isa forKey:v18];

    sub_1000073B4(v4, &unk_1006C1710);
  }

  return 1;
}

uint64_t sub_100238CB8()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v16[0] = v4;
  v16[1] = v6;
  v7 = *&v0[OBJC_IVAR___ICQuotaExceededAlertController_managedObjectContext];
  if (!v7)
  {
    return v4;
  }

  v8 = swift_allocObject();
  v8[2] = v0;
  v8[3] = v7;
  v8[4] = v16;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100239F84;
  *(v9 + 24) = v8;
  v15[4] = sub_10000EFBC;
  v15[5] = v9;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10000EAF8;
  v15[3] = &unk_1006514B0;
  v10 = _Block_copy(v15);
  v11 = v7;
  v12 = v0;

  [v11 performBlockAndWait:v10];

  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v4 = v16[0];

    return v4;
  }

  __break(1u);
  return result;
}

void sub_100238EC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *(a1 + OBJC_IVAR___ICQuotaExceededAlertController_recordID);
  v6 = *(a1 + OBJC_IVAR___ICQuotaExceededAlertController_cloudContext);
  v7 = String._bridgeToObjectiveC()();
  sub_10015DA04(&qword_1006BE8F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100531E30;
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [v6 existingCloudObjectForRecordID:v5 recordType:0 accountID:v7 context:a2 excludingRecordTypes:isa];

  if (v22)
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (!v11)
    {
      goto LABEL_9;
    }

    v12 = v11;
    v13 = [v11 quotedTitle];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v17)
    {
      v18 = [v12 quotedTitle];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      *a3 = v19;
      a3[1] = v21;
    }

    else
    {
LABEL_9:
    }
  }
}

id sub_1002390E8()
{
  sub_1002394A8();
  sub_100239594();
  v1 = String._bridgeToObjectiveC()();

  v2 = String._bridgeToObjectiveC()();

  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  LOBYTE(v2) = [*(v0 + OBJC_IVAR___ICQuotaExceededAlertController_recordID) ic_isOwnedByCurrentUser];
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  if (v2)
  {
    v6 = String._bridgeToObjectiveC()();
    v7 = [v5 localizedStringForKey:v6 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = String._bridgeToObjectiveC()();

    v9 = objc_opt_self();
    v10 = [v9 actionWithTitle:v8 style:1 handler:0];

    v11 = [v4 mainBundle];
    v12 = String._bridgeToObjectiveC()();
    v13 = [v11 localizedStringForKey:v12 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();

    v21[4] = sub_1002397BC;
    v21[5] = 0;
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1107296256;
    v21[2] = sub_1002DEFE0;
    v21[3] = &unk_100651438;
    v15 = _Block_copy(v21);

    v16 = [v9 actionWithTitle:v14 style:0 handler:v15];
    _Block_release(v15);

    [v3 addAction:v10];
    [v3 addAction:v16];
  }

  else
  {
    v17 = String._bridgeToObjectiveC()();
    v18 = [v5 localizedStringForKey:v17 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();

    v16 = [objc_opt_self() actionWithTitle:v19 style:1 handler:0];

    [v3 addAction:v16];
  }

  return v3;
}

uint64_t sub_1002394A8()
{
  [*(v0 + OBJC_IVAR___ICQuotaExceededAlertController_recordID) ic_isOwnedByCurrentUser];
  v1 = [objc_opt_self() mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t sub_100239594()
{
  if ([*(v0 + OBJC_IVAR___ICQuotaExceededAlertController_recordID) ic_isOwnedByCurrentUser])
  {
    v1 = [objc_opt_self() mainBundle];
    v2 = String._bridgeToObjectiveC()();
    v3 = [v1 localizedStringForKey:v2 value:0 table:0];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v4;
  }

  else
  {
    sub_10015DA04(&qword_1006C1A30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    v7 = sub_100238CB8();
    v9 = v8;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1001D9030();
    *(inited + 32) = v7;
    *(inited + 40) = v9;
    v10 = [objc_opt_self() mainBundle];
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 localizedStringForKey:v11 value:0 table:0];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100456F24(inited, v13, v15);
    swift_bridgeObjectRelease_n();
    swift_setDeallocating();
    sub_10015DA04(&unk_1006C5D10);
    swift_arrayDestroy();
    return v16;
  }
}

id sub_1002397BC()
{
  v0 = objc_opt_self();

  return [v0 ic_openICloudStorageSettings];
}

void sub_100239838(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 applicationState];

  if (v4 != 2)
  {
    v7 = sub_1002390E8();
    v5 = [a2 rootViewController];
    if (v5)
    {
      v6 = v5;
      [v5 presentViewController:v7 animated:1 completion:0];
    }
  }
}

uint64_t type metadata accessor for QuotaExceededAlertController()
{
  result = qword_1006C0ED8;
  if (!qword_1006C0ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100239A80()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_10001E5B8();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_100239B90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  ObjectType = swift_getObjectType();
  v8 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v8 - 8);
  v10 = &v31 - v9;
  v4[OBJC_IVAR___ICQuotaExceededAlertController_ignoresDebouncing] = 0;
  v11 = OBJC_IVAR___ICQuotaExceededAlertController_lastShowDate;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v31 = *(v13 + 56);
  v32 = v11;
  v31(&v4[v11], 1, 1, v12);
  v14 = OBJC_IVAR___ICQuotaExceededAlertController_cloudContext;
  *&v4[v14] = [objc_opt_self() sharedContext];
  v15 = [objc_opt_self() sharedContext];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 snapshotManagedObjectContext];
  }

  else
  {
    v17 = 0;
  }

  *&v4[OBJC_IVAR___ICQuotaExceededAlertController_managedObjectContext] = v17;
  *&v4[OBJC_IVAR___ICQuotaExceededAlertController_minimumLastShowDateInterval] = 0x408C200000000000;
  v18 = &v4[OBJC_IVAR___ICQuotaExceededAlertController_lastShowDateKey];
  *v18 = 0xD000000000000028;
  v18[1] = 0x80000001005689F0;
  *&v4[OBJC_IVAR___ICQuotaExceededAlertController_recordID] = a1;
  v19 = &v4[OBJC_IVAR___ICQuotaExceededAlertController_accountID];
  *v19 = a2;
  v19[1] = a3;
  v20 = v34;
  (*(v13 + 16))(&v4[OBJC_IVAR___ICQuotaExceededAlertController_date], v34, v12);
  v21 = [a1 recordName];
  if (!v21)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = String._bridgeToObjectiveC()();
  }

  v22 = [objc_opt_self() didShowExceededStorageQuotaAlertForNoteWithIdentifier:v21];

  v4[OBJC_IVAR___ICQuotaExceededAlertController_didShowForRecord] = v22;
  v23 = [objc_opt_self() standardUserDefaults];

  v24 = String._bridgeToObjectiveC()();

  v25 = [v23 objectForKey:v24];

  if (v25)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v38[0] = v36;
  v38[1] = v37;
  if (*(&v37 + 1))
  {
    v26 = swift_dynamicCast() ^ 1;
    v27 = v10;
  }

  else
  {
    sub_1000073B4(v38, &qword_1006BE7A0);
    v27 = v10;
    v26 = 1;
  }

  v31(v27, v26, 1, v12);
  v28 = v32;
  swift_beginAccess();
  sub_10023A078(v10, &v4[v28]);
  swift_endAccess();
  v35.receiver = v4;
  v35.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v35, "init");
  (*(v13 + 8))(v20, v12);
  return v29;
}

uint64_t sub_100239F98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006C1710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023A008(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006C1710);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023A078(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&unk_1006C1710);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10023A0F8()
{
  v0 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for LocalizedStringResource();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for TypeDisplayRepresentation();
  sub_100025918(v10, static TopLevelFolder.typeDisplayRepresentation);
  sub_10002597C(v10, static TopLevelFolder.typeDisplayRepresentation);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v9 + 56))(v2, 1, 1, v8);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t TopLevelFolder.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (qword_1006BC618 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return sub_10002597C(v0, static TopLevelFolder.typeDisplayRepresentation);
}

uint64_t static TopLevelFolder.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC618 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10002597C(v2, static TopLevelFolder.typeDisplayRepresentation);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t TopLevelFolder.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x65746F4E6C6C6163;
  v2 = 0x746F4E6B63697571;
  if (a1 != 2)
  {
    v2 = 0x6957646572616873;
  }

  if (a1)
  {
    v1 = 0x65746F4E6874616DLL;
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

unint64_t sub_10023A57C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s11MobileNotes14TopLevelFolderO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10023A5AC(uint64_t *a1@<X8>)
{
  v2 = 0x65746F4E6C6C6163;
  v3 = 0xEA00000000007365;
  v4 = 0x746F4E6B63697571;
  if (*v1 != 2)
  {
    v4 = 0x6957646572616873;
    v3 = 0xED0000756F596874;
  }

  if (*v1)
  {
    v2 = 0x65746F4E6874616DLL;
  }

  if (*v1 <= 1u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 <= 1u)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v6 = v3;
  }

  *a1 = v5;
  a1[1] = v6;
}

Swift::Int sub_10023A63C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10023A710()
{
  String.hash(into:)();
}

Swift::Int sub_10023A7D0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10023A8A0(uint64_t a1)
{
  v2 = sub_100179AFC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10023A8EC()
{
  v0 = sub_10015DA04(&unk_1006BEA80);
  __chkstk_darwin(v0 - 8);
  v43 = v40 - v1;
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v59 = v40 - v3;
  v57 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v57 - 8);
  __chkstk_darwin(v57);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalizedStringResource();
  v47 = v13;
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015DA04(&unk_1006C0F50);
  v17 = sub_10015DA04(&qword_1006BDDC0);
  v51 = v17;
  v18 = *(v17 - 8);
  v52 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v44 = v20;
  *(v20 + 16) = xmmword_100539C30;
  v42 = *(v17 + 48);
  *(v20 + v19) = 0;
  v21 = v20 + v19;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v58 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v49 = *(v4 + 104);
  v50 = v4 + 104;
  v46 = v6;
  v22 = v57;
  v49(v6);
  v23 = v12;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v24 = *(v14 + 56);
  v48 = v14 + 56;
  v54 = v24;
  v24(v59, 1, 1, v13);
  v25 = v43;
  DisplayRepresentation.Image.init(systemName:isTemplate:)();
  v56 = type metadata accessor for DisplayRepresentation.Image();
  v26 = *(v56 - 8);
  v55 = *(v26 + 56);
  v45 = v26 + 56;
  v55(v25, 0, 1, v56);
  v53 = v21;
  v27 = v16;
  DisplayRepresentation.init(title:subtitle:image:)();
  v29 = v51;
  v28 = v52;
  v30 = *(v51 + 48);
  v41 = (v21 + v52);
  v42 = v30;
  *v41 = 1;
  v40[1] = v23;
  String.LocalizationValue.init(stringLiteral:)();
  v40[2] = v9;
  static Locale.current.getter();
  v31 = v49;
  (v49)(v46, v58, v22);
  v40[0] = v27;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v32 = v47;
  v54(v59, 1, 1, v47);
  DisplayRepresentation.Image.init(systemName:isTemplate:)();
  v55(v25, 0, 1, v56);
  DisplayRepresentation.init(title:subtitle:image:)();
  v41 = *(v29 + 48);
  v42 = 2 * v28;
  *(v53 + 2 * v28) = 2;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33 = v46;
  (v31)(v46, v58, v57);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v34 = v59;
  v35 = v32;
  v36 = v54;
  v54(v59, 1, 1, v35);
  DisplayRepresentation.Image.init(systemName:isTemplate:)();
  v55(v25, 0, 1, v56);
  DisplayRepresentation.init(title:subtitle:image:)();
  v37 = (v53 + v42 + v52);
  v52 = *(v51 + 48);
  *v37 = 3;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (v49)(v33, v58, v57);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v36(v34, 1, 1, v47);
  DisplayRepresentation.Image.init(systemName:isTemplate:)();
  v55(v25, 0, 1, v56);
  DisplayRepresentation.init(title:subtitle:image:)();
  v38 = sub_10019040C(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static TopLevelFolder.caseDisplayRepresentations = v38;
  return result;
}

uint64_t *TopLevelFolder.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_1006BC620 != -1)
  {
    swift_once();
  }

  return &static TopLevelFolder.caseDisplayRepresentations;
}

uint64_t static TopLevelFolder.caseDisplayRepresentations.getter()
{
  if (qword_1006BC620 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10023B1C0(uint64_t a1)
{
  v2 = sub_10023B478();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t _s11MobileNotes14TopLevelFolderO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064C1B8, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10023B26C()
{
  result = qword_1006C0EF0;
  if (!qword_1006C0EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0EF0);
  }

  return result;
}

unint64_t sub_10023B2C4()
{
  result = qword_1006C0EF8;
  if (!qword_1006C0EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0EF8);
  }

  return result;
}

unint64_t sub_10023B31C()
{
  result = qword_1006C0F00;
  if (!qword_1006C0F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0F00);
  }

  return result;
}

unint64_t sub_10023B374()
{
  result = qword_1006C0F08;
  if (!qword_1006C0F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0F08);
  }

  return result;
}

unint64_t sub_10023B3CC()
{
  result = qword_1006C0F10;
  if (!qword_1006C0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0F10);
  }

  return result;
}

unint64_t sub_10023B420()
{
  result = qword_1006C0F18;
  if (!qword_1006C0F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0F18);
  }

  return result;
}

unint64_t sub_10023B478()
{
  result = qword_1006C0F20;
  if (!qword_1006C0F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0F20);
  }

  return result;
}

unint64_t sub_10023B520()
{
  result = qword_1006C0F28;
  if (!qword_1006C0F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0F28);
  }

  return result;
}

unint64_t sub_10023B578()
{
  result = qword_1006C0F30;
  if (!qword_1006C0F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0F30);
  }

  return result;
}

unint64_t sub_10023B5D0()
{
  result = qword_1006C0F38;
  if (!qword_1006C0F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0F38);
  }

  return result;
}

unint64_t sub_10023B628()
{
  result = qword_1006C0F40;
  if (!qword_1006C0F40)
  {
    sub_10017992C(&qword_1006C0F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0F40);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TopLevelFolder(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TopLevelFolder(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_10023B994()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v1 = Strong;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  if (!v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = String._bridgeToObjectiveC()();
  }

  [v1 setText:v6];

  v7 = swift_unknownObjectWeakLoadStrong();
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v9 = [v2 mainBundle];
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 localizedStringForKey:v10 value:v11 table:0];

  if (!v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = String._bridgeToObjectiveC()();
  }

  [v8 setText:v12];

  v13 = swift_unknownObjectWeakLoadStrong();
  if (!v13)
  {
    goto LABEL_20;
  }

  v14 = v13;
  v15 = objc_opt_self();
  [v15 ic_isVision];
  v16 = [v2 mainBundle];
  v17 = String._bridgeToObjectiveC()();
  v18 = String._bridgeToObjectiveC()();
  v19 = [v16 localizedStringForKey:v17 value:v18 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = String._bridgeToObjectiveC()();

  [v14 setText:v20];

  v21 = swift_unknownObjectWeakLoadStrong();
  if (!v21)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = v21;
  v23 = [v2 mainBundle];
  v24 = String._bridgeToObjectiveC()();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v23 localizedStringForKey:v24 value:v25 table:0];

  if (!v26)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = String._bridgeToObjectiveC()();
  }

  [v22 setText:v26];

  v27 = swift_unknownObjectWeakLoadStrong();
  if (!v27)
  {
    goto LABEL_22;
  }

  v28 = v27;
  [v15 ic_isVision];
  v29 = [v2 mainBundle];
  v30 = String._bridgeToObjectiveC()();
  v31 = String._bridgeToObjectiveC()();
  v32 = [v29 localizedStringForKey:v30 value:v31 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = String._bridgeToObjectiveC()();

  [v28 setText:v33];

  v34 = swift_unknownObjectWeakLoadStrong();
  if (!v34)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v35 = v34;
  v36 = [v2 mainBundle];
  v37 = String._bridgeToObjectiveC()();
  v38 = String._bridgeToObjectiveC()();
  v39 = [v36 localizedStringForKey:v37 value:v38 table:0];

  if (!v39)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = String._bridgeToObjectiveC()();
  }

  [v35 setText:v39];
}

uint64_t sub_10023C018()
{
  sub_10015DA04(&qword_1006BE1C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100531E30;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v0 + OBJC_IVAR___ICLearnMoreTagsViewController_learnMoreEllipsisPlaceholder);
    v3 = *(v0 + OBJC_IVAR___ICLearnMoreTagsViewController_learnMoreEllipsisPlaceholder + 8);
    *(v1 + 32) = result;
    *(v1 + 40) = v4;
    *(v1 + 48) = v3;
    *(v1 + 56) = 1;

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10023C0A8(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v7 = &v3[OBJC_IVAR___ICLearnMoreTagsViewController_learnMoreEllipsisPlaceholder];
  *v7 = 0xD000000000000024;
  *(v7 + 1) = 0x8000000100569440;
  if (a2)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_10023C244(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4 = &v1[OBJC_IVAR___ICLearnMoreTagsViewController_learnMoreEllipsisPlaceholder];
  *v4 = 0xD000000000000024;
  *(v4 + 1) = 0x8000000100569440;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_10023C37C()
{
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
  swift_unknownObjectWeakDestroy();
}

uint64_t sub_10023C5D8(void *a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1001A328C();
    v6 = a1;
    v7 = static NSObject.== infix(_:_:)();

    if (v7)
    {
      v8 = [v2 presentingViewController];
      if (v8)
      {
        v9 = v8;
        type metadata accessor for LearnMoreSmartFoldersViewController();
        sub_1004B7A70(v9);
      }
    }
  }

  return 0;
}

unint64_t sub_10023C694()
{
  result = qword_1006C0FC0;
  if (!qword_1006C0FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C0FC0);
  }

  return result;
}

uint64_t sub_10023C6F8@<X0>(unint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v37 - v8;
  __chkstk_darwin(v7);
  v11 = &v37 - v10;
  v12 = [objc_opt_self() defaultManager];
  v19 = NSFileManager.contentsOfDirectory(at:)();
  v38 = v9;
  v39 = v11;
  v40 = 0;
  v41 = a1;

  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = (v3 + 8);
    while (1)
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
        swift_once();
        v13 = type metadata accessor for Logger();
        sub_10002597C(v13, qword_1006C0FC8);
        swift_errorRetain();
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *v16 = 138412290;
          swift_errorRetain();
          v18 = _swift_stdlib_bridgeErrorToNSError();
          *(v16 + 4) = v18;
          *v17 = v18;
          _os_log_impl(&_mh_execute_header, v14, v15, "failed to import call recording metadata: %@", v16, 0xCu);
          sub_1000073B4(v17, &qword_1006C1440);
        }

        else
        {
        }

        goto LABEL_17;
      }

      (*(v3 + 16))(v6, v19 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v21, v2);
      if (URL.pathExtension.getter() == 1852797802 && v23 == 0xE400000000000000)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_14;
      }

      ++v21;
      (*v22)(v6, v2);
      if (v20 == v21)
      {
        goto LABEL_11;
      }
    }

LABEL_14:

    v25 = *(v3 + 32);
    v26 = v38;
    v25(v38, v6, v2);
    v27 = v39;
    v25(v39, v26, v2);
    v28 = v40;
    v29 = Data.init(contentsOf:options:)();
    if (v28)
    {

      (*v22)(v27, v2);
      goto LABEL_16;
    }

    v33 = v29;
    v34 = v30;
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v35 = type metadata accessor for RecordingMetadata();
    sub_100243CD8(&qword_1006C0FE0, &type metadata accessor for RecordingMetadata);
    v36 = v41;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    (*v22)(v27, v2);

    sub_10019671C(v33, v34);
    return (*(*(v35 - 8) + 56))(v36, 0, 1, v35);
  }

  else
  {
LABEL_11:

LABEL_16:
    v21 = v41;
LABEL_17:
    v31 = type metadata accessor for RecordingMetadata();
    return (*(*(v31 - 8) + 56))(v21, 1, 1, v31);
  }
}

uint64_t static CallRecordingImporter.importAndComposeCallRecording(noteID:recordingID:managedObjectContext:directory:fromUserActivity:bgTaskIdentifier:)(void *a1, void *a2, void *a3, unint64_t a4, int a5, uint64_t a6, int a7)
{
  v75 = a7;
  v74 = a6;
  v80 = a4;
  v76 = a3;
  v78 = a1;
  v9 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v9 - 8);
  v83 = &v70 - v10;
  v11 = sub_10015DA04(&qword_1006BCC20);
  v72 = *(v11 - 8);
  v12 = __chkstk_darwin(v11 - 8);
  v82 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v13;
  __chkstk_darwin(v12);
  v15 = &v70 - v14;
  v16 = type metadata accessor for URL();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v79 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v19);
  v81 = &v70 - v21;
  __chkstk_darwin(v20);
  v23 = &v70 - v22;
  v77 = &v70 - v22;
  if ((a5 & 1) != 0 || (v24 = [v78 UUIDString], v25 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v70 = v18, v26 = a5, v27 = v25, v28 = v17, v30 = v29, v24, v31 = objc_msgSend(a2, "UUIDString"), v32 = static String._unconditionallyBridgeFromObjectiveC(_:)(), v33 = v16, v34 = a2, v36 = v35, v31, v37 = v27, a5 = v26, v18 = v70, LOBYTE(v32) = sub_100242B38(v37, v30, v32, v36), v17 = v28, v23 = v77, , a2 = v34, v16 = v33, result = , (v32 & 1) == 0))
  {
    sub_100006038(v80, v15, &qword_1006BCC20);
    v39 = *(v17 + 48);
    v40 = v39(v15, 1, v16);
    v71 = a5;
    if (v40 == 1)
    {
      if (qword_1006BC5C8 != -1)
      {
        swift_once();
      }

      v41 = sub_10002597C(v16, static CallNoteCoordinator.csdDirectory);
      (*(v17 + 16))(v23, v41, v16);
      if (v39(v15, 1, v16) != 1)
      {
        sub_1000073B4(v15, &qword_1006BCC20);
      }
    }

    else
    {
      (*(v17 + 32))(v23, v15, v16);
    }

    v42 = v78;
    v43 = [v78 description];
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;

    v84 = v44;
    v85 = v46;
    v47._countAndFlagsBits = 95;
    v47._object = 0xE100000000000000;
    String.append(_:)(v47);
    v48 = [a2 description];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52._countAndFlagsBits = v49;
    v52._object = v51;
    String.append(_:)(v52);

    v53 = v81;
    URL.appendingPathComponent(_:)();

    v54 = type metadata accessor for TaskPriority();
    (*(*(v54 - 8) + 56))(v83, 1, 1, v54);
    (*(v17 + 16))(v79, v53, v16);
    sub_100006038(v80, v82, &qword_1006BCC20);
    v55 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v80 = (v18 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = (v18 + v55 + 23) & 0xFFFFFFFFFFFFFFF8;
    v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
    v70 = a2;
    v58 = (v57 + 15) & 0xFFFFFFFFFFFFFFF8;
    v59 = v17;
    v60 = (*(v72 + 80) + v58 + 8) & ~*(v72 + 80);
    v61 = v60 + v73;
    v62 = swift_allocObject();
    *(v62 + 16) = 0;
    *(v62 + 24) = 0;
    (*(v59 + 32))(v62 + v55, v79, v16);
    v63 = v62 + v80;
    *v63 = v74;
    *(v63 + 8) = v75 & 1;
    *(v62 + v56) = v42;
    v64 = v70;
    *(v62 + v57) = v70;
    v65 = v76;
    *(v62 + v58) = v76;
    sub_10000CA08(v82, v62 + v60);
    *(v62 + v61) = v71 & 1;
    v66 = v42;
    v67 = v64;
    v68 = v65;
    sub_10023D268(0, 0, v83, &unk_100538AB0, v62);

    v69 = *(v59 + 8);
    v69(v81, v16);
    return (v69)(v77, v16);
  }

  return result;
}

uint64_t sub_10023D268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100006038(a3, v25 - v10, &qword_1006C2170);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000073B4(v11, &qword_1006C2170);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000073B4(a3, &qword_1006C2170);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000073B4(a3, &qword_1006C2170);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_10023D568()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C0FC8);
  sub_10002597C(v0, qword_1006C0FC8);
  return static Logger.audioTranscription.getter();
}

uint64_t sub_10023D5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 313) = v16;
  *(v8 + 152) = v14;
  *(v8 + 160) = v15;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 312) = a6;
  *(v8 + 120) = a4;
  *(v8 + 128) = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  *(v8 + 168) = v9;
  *(v8 + 176) = *(v9 - 8);
  *(v8 + 184) = swift_task_alloc();
  v10 = type metadata accessor for DispatchQoS();
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 - 8);
  *(v8 + 208) = swift_task_alloc();
  v11 = *(sub_10015DA04(&qword_1006BCC20) - 8);
  *(v8 + 216) = v11;
  *(v8 + 224) = *(v11 + 64);
  *(v8 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_10023D758, 0, 0);
}

uint64_t sub_10023D758()
{
  v0[30] = objc_opt_self();
  v0[31] = type metadata accessor for MainActor();
  v0[32] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10023D800, v2, v1);
}

uint64_t sub_10023D800()
{
  v1 = *(v0 + 240);

  *(v0 + 264) = [v1 sharedApplication];

  return _swift_task_switch(sub_10023D888, 0, 0);
}

uint64_t sub_10023D888()
{
  v1 = v0[33];
  v0[6] = sub_10023E0AC;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10028DCE8;
  v0[5] = &unk_100651708;
  v2 = _Block_copy(v0 + 2);
  v0[34] = [v1 beginBackgroundTaskWithExpirationHandler:v2];
  _Block_release(v2);

  v3 = swift_task_alloc();
  v0[35] = v3;
  *v3 = v0;
  v3[1] = sub_10023D9A8;
  v4 = v0[15];

  return static RecordingMediaComposer.composeRecording(from:)(v4);
}

uint64_t sub_10023D9A8()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_10023DED4;
  }

  else
  {
    v2 = sub_10023DABC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10023DABC()
{
  v21 = v0[34];
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v22 = v0[26];
  v27 = v0[25];
  v28 = v0[24];
  v25 = v0[23];
  v26 = v0[22];
  v4 = v0[20];
  v24 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v19 = *(v0 + 312);
  v20 = *(v0 + 313);
  v8 = v0[16];
  v7 = v0[17];
  sub_1000054A4(0, &qword_1006BE9E0);
  v23 = static OS_dispatch_queue.main.getter();
  sub_100006038(v4, v2, &qword_1006BCC20);
  v9 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v10 = v9 + v1;
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v19 & 1;
  *(v11 + 32) = v7;
  *(v11 + 40) = v6;
  *(v11 + 48) = v5;
  sub_10000CA08(v2, v11 + v9);
  *(v11 + v10) = v20;
  *(v11 + (v10 & 0xFFFFFFFFFFFFFFF8) + 8) = v21;
  v0[12] = sub_100243DD8;
  v0[13] = v11;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_10028DCE8;
  v0[11] = &unk_100651758;
  v12 = _Block_copy(v0 + 8);
  v13 = v7;
  v14 = v6;
  v15 = v5;
  static DispatchQoS.unspecified.getter();
  v0[14] = _swiftEmptyArrayStorage;
  sub_100243CD8(&qword_1006C1130, &type metadata accessor for DispatchWorkItemFlags);
  sub_10015DA04(&unk_1006C3F20);
  sub_100243E84();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);

  (*(v26 + 8))(v25, v24);
  (*(v27 + 8))(v22, v28);

  v0[37] = static MainActor.shared.getter();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10023DDAC, v17, v16);
}

uint64_t sub_10023DDAC()
{
  v1 = *(v0 + 240);

  *(v0 + 304) = [v1 sharedApplication];

  return _swift_task_switch(sub_10023DE34, 0, 0);
}

uint64_t sub_10023DE34()
{
  v1 = v0[38];
  [v1 endBackgroundTask:v0[34]];

  v2 = v0[1];

  return v2();
}

uint64_t sub_10023DED4()
{
  if (qword_1006BC628 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002597C(v1, qword_1006C0FC8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "call recording composition error: %@", v4, 0xCu);
    sub_1000073B4(v5, &qword_1006C1440);
  }

  else
  {
  }

  *(v0 + 296) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10023DDAC, v8, v7);
}

void sub_10023E0AC()
{
  if (qword_1006BC628 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10002597C(v0, qword_1006C0FC8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Background task for composing recording invalidated", v2, 2u);
  }
}

void sub_10023E194(void *a1, char a2, void *a3, void *a4, void *a5, uint64_t a6, char a7, uint64_t a8)
{
  if (a2)
  {
    v10 = UIBackgroundTaskInvalid;
  }

  else
  {
    v10 = a1;
  }

  sub_10023E234(a3, a4, a5, a6, a7, v10);
  v11 = [objc_opt_self() sharedApplication];
  [v11 endBackgroundTask:a8];
}

void sub_10023E234(void *a1, void *a2, void *a3, uint64_t a4, char a5, void *a6)
{
  v218 = a6;
  v219 = a4;
  v220 = a3;
  v208 = type metadata accessor for Locale();
  v207 = *(v208 - 8);
  __chkstk_darwin(v208);
  v206 = &v200 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CallerOrigin();
  v201 = *(v10 - 8);
  __chkstk_darwin(v10);
  v203 = &v200 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v209 = *(v12 - 8);
  __chkstk_darwin(v12);
  v212 = &v200 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10015DA04(&qword_1006BCC20);
  v15 = __chkstk_darwin(v14 - 8);
  v205 = &v200 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v215 = &v200 - v18;
  v19 = __chkstk_darwin(v17);
  v204 = &v200 - v20;
  v21 = __chkstk_darwin(v19);
  v213 = &v200 - v22;
  v23 = __chkstk_darwin(v21);
  v210 = &v200 - v24;
  v25 = __chkstk_darwin(v23);
  v216 = &v200 - v26;
  __chkstk_darwin(v25);
  v28 = &v200 - v27;
  v29 = type metadata accessor for URL();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v211 = &v200 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v222 = &v200 - v34;
  __chkstk_darwin(v33);
  v36 = &v200 - v35;
  v37 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v37 - 8);
  v217 = &v200 - v38;
  v223 = v29;
  v224 = v30;
  v221 = v12;
  v202 = v10;
  if (a5)
  {
    if (qword_1006BC628 != -1)
    {
      swift_once();
    }

    sub_10002597C(v12, qword_1006C0FC8);
    v39 = a1;
    v40 = a2;
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = v36;
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412546;
      *(v44 + 4) = v39;
      *(v44 + 12) = 2112;
      *(v44 + 14) = v40;
      *v45 = v39;
      v45[1] = v40;
      v46 = v39;
      v47 = v40;
      _os_log_impl(&_mh_execute_header, v41, v42, "import call recording called from user activity with note ID: %@ attachmentID: %@", v44, 0x16u);
      sub_10015DA04(&qword_1006C1440);
      swift_arrayDestroy();

      v36 = v43;
    }

    v48 = v217;
    static TaskPriority.high.getter();
    v49 = type metadata accessor for TaskPriority();
    (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    sub_10023D268(0, 0, v48, &unk_10053BE78, v50);

    v29 = v223;
    v30 = v224;
  }

  else
  {
    v51 = v36;
    if (qword_1006BC628 != -1)
    {
      swift_once();
    }

    sub_10002597C(v12, qword_1006C0FC8);
    v52 = a1;
    v53 = a2;
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v56 = 138412546;
      *(v56 + 4) = v52;
      *(v56 + 12) = 2112;
      *(v56 + 14) = v53;
      *v57 = v52;
      v57[1] = v53;
      v58 = v52;
      v59 = v53;
      _os_log_impl(&_mh_execute_header, v54, v55, "import call recording called from start task with note ID: %@ attachmentID: %@", v56, 0x16u);
      sub_10015DA04(&qword_1006C1440);
      swift_arrayDestroy();

      v29 = v223;
      v30 = v224;
    }

    v36 = v51;
  }

  sub_100006038(v219, v28, &qword_1006BCC20);
  v60 = *(v30 + 48);
  v61 = v60(v28, 1, v29);
  v214 = v60;
  if (v61 == 1)
  {
    if (qword_1006BC5C8 != -1)
    {
      swift_once();
    }

    v62 = sub_10002597C(v29, static CallNoteCoordinator.csdDirectory);
    (*(v30 + 16))(v36, v62, v29);
    if (v60(v28, 1, v29) != 1)
    {
      sub_1000073B4(v28, &qword_1006BCC20);
    }
  }

  else
  {
    (*(v30 + 32))(v36, v28, v29);
  }

  v63 = [objc_opt_self() sharedContext];
  v64 = v220;
  [v63 ensureModernAccountExistsInContext:v220];

  v65 = [a1 description];
  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v68 = v67;

  time.value = v66;
  *&time.timescale = v68;
  v69._countAndFlagsBits = 95;
  v69._object = 0xE100000000000000;
  String.append(_:)(v69);
  v70 = [a2 description];
  v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v72;

  v74._countAndFlagsBits = v71;
  v74._object = v73;
  String.append(_:)(v74);

  v75 = v222;
  v219 = v36;
  URL.appendingPathComponent(_:)();

  sub_1002405F4(a1, a2, v64, v75, v218, 0);
  if (!v76)
  {
    goto LABEL_35;
  }

  v77 = v76;
  v78 = [v76 note];
  if (!v78)
  {

LABEL_35:
    if (qword_1006BC628 != -1)
    {
      swift_once();
    }

    sub_10002597C(v221, qword_1006C0FC8);
    v105 = a1;
    v106 = a2;
    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.error.getter();

    v109 = os_log_type_enabled(v107, v108);
    v110 = v219;
    if (v109)
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      *v111 = 138412546;
      *(v111 + 4) = v105;
      *(v111 + 12) = 2112;
      *(v111 + 14) = v106;
      *v112 = v105;
      v112[1] = v106;
      v113 = v105;
      v114 = v106;
      _os_log_impl(&_mh_execute_header, v107, v108, "could not add call recording media to attachment: %@_%@", v111, 0x16u);
      sub_10015DA04(&qword_1006C1440);
      swift_arrayDestroy();
    }

    v115 = v223;
    v116 = *(v224 + 8);
    v116(v75, v223);
    v117 = v110;
    goto LABEL_40;
  }

  v218 = v78;
  v79 = [v77 subAttachments];
  if (!v79 || (v80 = v79, sub_1000054A4(0, &unk_1006C2C90), sub_1001D9A38(), v81 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v80, v82 = sub_1002C89B4(v81), , !v82) || (v83 = [v82 media], v82, !v83))
  {
    v85 = v223;
    v89 = *(v224 + 56);
    v88 = v216;
    v89(v216, 1, 1, v223);
LABEL_26:
    sub_1000073B4(v88, &qword_1006BCC20);
    goto LABEL_27;
  }

  v84 = [v83 mediaURL];

  v85 = v223;
  if (v84)
  {
    v86 = v210;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v87 = 0;
    v88 = v216;
  }

  else
  {
    v87 = 1;
    v88 = v216;
    v86 = v210;
  }

  v153 = v224;
  v89 = *(v224 + 56);
  v89(v86, v87, 1, v85);
  sub_10000CA08(v86, v88);
  if (v214(v88, 1, v85) == 1)
  {
    goto LABEL_26;
  }

  (*(v153 + 32))(v211, v88, v85);
  v154 = objc_allocWithZone(AVURLAsset);
  URL._bridgeToObjectiveC()(v155);
  v157 = v156;
  v158 = [v154 initWithURL:v156 options:0];

  [(objc_class *)v158 duration];
  CMTimeGetSeconds(&time);
  static Logger.analytics.getter();
  v159 = Logger.logObject.getter();
  v160 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v159, v160))
  {
    v161 = swift_slowAlloc();
    *v161 = 0;
    _os_log_impl(&_mh_execute_header, v159, v160, "Call recording ended", v161, 2u);
  }

  (*(v209 + 8))(v212, v221);
  if (qword_1006BC5C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v162 = *(static CallNoteCoordinator.shared + OBJC_IVAR___ICCallNoteCoordinator_eventReporter);
  if (v162)
  {
    v163 = v162;
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    [v163 submitAudioRecordingEventWithAttachment:v77 appBackgroundOccurred:1 noteMultitaskingOccurred:0 audioAttachmentDuration:isa];

    v158 = isa;
  }

  (*(v224 + 8))(v211, v85);
LABEL_27:
  v90 = objc_opt_self();
  v91 = [v90 sharedInstance];
  v92 = [v91 supportsCallTranscription];

  if (!v92)
  {
    if (qword_1006BC628 != -1)
    {
      swift_once();
    }

    sub_10002597C(v221, qword_1006C0FC8);
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&_mh_execute_header, v118, v119, "call transcription unsupported.", v120, 2u);
    }

    v121 = *(v224 + 8);
    v121(v75, v85);
LABEL_73:
    v121(v219, v85);
    return;
  }

  v226 = &type metadata for NotesFeature;
  v93 = sub_100025864();
  v227 = v93;
  time.value = "OfflineCallTranscription";
  *&time.timescale = 24;
  LOBYTE(time.epoch) = 2;
  v94 = isFeatureEnabled(_:)();
  sub_100009F60(&time);
  if ((v94 & 1) == 0)
  {
LABEL_48:
    v226 = &type metadata for NotesFeature;
    v227 = v93;
    time.value = "OfflineCallTranscription";
    *&time.timescale = 24;
    LOBYTE(time.epoch) = 2;
    v122 = isFeatureEnabled(_:)();
    sub_100009F60(&time);
    if ((v122 & 1) == 0)
    {
      if (qword_1006BC628 != -1)
      {
        swift_once();
      }

      sub_10002597C(v221, qword_1006C0FC8);
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v123, v124))
      {
        v125 = swift_slowAlloc();
        *v125 = 0;
        _os_log_impl(&_mh_execute_header, v123, v124, "call recording feature flag not enabled", v125, 2u);
      }
    }

    v126 = [v77 subAttachments];
    if (v126 && (v127 = v126, sub_1000054A4(0, &unk_1006C2C90), sub_1001D9A38(), v128 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v127, v129 = sub_1002C89B4(v128), , v129) && (v130 = [v129 media], v129, v130))
    {
      v131 = [v130 mediaURL];

      if (v131)
      {
        v132 = v205;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v133 = 0;
        v134 = v215;
      }

      else
      {
        v133 = 1;
        v134 = v215;
        v132 = v205;
      }

      v89(v132, v133, 1, v85);
      sub_10000CA08(v132, v134);
      if (v214(v134, 1, v85) != 1)
      {
        sub_1000073B4(v134, &qword_1006BCC20);
        v135 = v221;
LABEL_65:
        v139 = [v90 sharedInstance];
        v140 = [v139 supportsCallTranscription];

        if (v140)
        {
        }

        else
        {
          if (qword_1006BC628 != -1)
          {
            swift_once();
          }

          sub_10002597C(v135, qword_1006C0FC8);
          v141 = Logger.logObject.getter();
          v142 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v141, v142))
          {
            v143 = v85;
            v144 = swift_slowAlloc();
            v145 = swift_slowAlloc();
            time.value = v145;
            *v144 = 136315138;
            v146 = v206;
            static Locale.current.getter();
            sub_100243CD8(&qword_1006C0FE8, &type metadata accessor for Locale);
            v147 = v208;
            v148 = dispatch thunk of CustomStringConvertible.description.getter();
            v150 = v149;
            (*(v207 + 8))(v146, v147);
            v151 = sub_100009D88(v148, v150, &time.value);

            *(v144 + 4) = v151;
            _os_log_impl(&_mh_execute_header, v141, v142, "call transcription not supported for %s", v144, 0xCu);
            sub_100009F60(v145);

            v152 = *(v224 + 8);
            v152(v222, v143);
            v152(v219, v143);
            return;
          }
        }

        v121 = *(v224 + 8);
        v121(v222, v85);
        goto LABEL_73;
      }
    }

    else
    {
      v134 = v215;
      v89(v215, 1, 1, v85);
    }

    sub_1000073B4(v134, &qword_1006BCC20);
    v135 = v221;
    if (qword_1006BC628 != -1)
    {
      swift_once();
    }

    sub_10002597C(v135, qword_1006C0FC8);
    v136 = Logger.logObject.getter();
    v137 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&_mh_execute_header, v136, v137, "no media on attachment", v138, 2u);
    }

    goto LABEL_65;
  }

  v95 = [v77 subAttachments];
  if (!v95 || (v96 = v95, sub_1000054A4(0, &unk_1006C2C90), sub_1001D9A38(), v97 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v96, v98 = sub_1002C89B4(v97), v85 = v223, , !v98) || (v99 = [v98 media], v98, !v99))
  {
    v104 = v213;
    v89(v213, 1, 1, v85);
LABEL_47:
    sub_1000073B4(v104, &qword_1006BCC20);
    goto LABEL_48;
  }

  v100 = [v99 mediaURL];

  if (v100)
  {
    v101 = v204;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v102 = v101;
    v103 = 0;
    v104 = v213;
  }

  else
  {
    v103 = 1;
    v104 = v213;
    v102 = v204;
  }

  v89(v102, v103, 1, v85);
  sub_10000CA08(v102, v104);
  if (v214(v104, 1, v85) == 1)
  {
    goto LABEL_47;
  }

  sub_1000073B4(v104, &qword_1006BCC20);
  if (qword_1006BC628 != -1)
  {
    swift_once();
  }

  sub_10002597C(v221, qword_1006C0FC8);
  v165 = Logger.logObject.getter();
  v166 = static os_log_type_t.info.getter();
  v167 = os_log_type_enabled(v165, v166);
  v168 = v222;
  v169 = v202;
  v170 = v201;
  if (v167)
  {
    v171 = swift_slowAlloc();
    *v171 = 0;
    _os_log_impl(&_mh_execute_header, v165, v166, "took the offline call transcription path", v171, 2u);
  }

  [v77 setNeedsTranscription:1];
  v172 = String._bridgeToObjectiveC()();
  [v77 updateChangeCountWithReason:v172];

  [v220 ic_save];
  v173 = [v77 audioModel];
  if (!v173)
  {
    goto LABEL_97;
  }

  v174 = v173;
  v175 = [v173 audioDocument];

  if (v175)
  {
    v176 = [v175 remoteSpeakerHandle];

    if (v176)
    {
      time.value = 0;
      *&time.timescale = 0;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();

      v177 = *&time.timescale;
      if (*&time.timescale)
      {
        value = time.value;
LABEL_98:
        v181 = [v77 audioModel];
        if (!v181)
        {
          goto LABEL_103;
        }

        v182 = v181;
        v183 = [v181 audioDocument];

        if (v183)
        {
          v184 = [v183 localSpeakerHandle];

          if (v184)
          {
            time.value = 0;
            *&time.timescale = 0;
            static String._conditionallyBridgeFromObjectiveC(_:result:)();

            v185 = *&time.timescale;
            if (*&time.timescale)
            {
              v221 = time.value;
LABEL_104:
              v188 = v177;
              v189 = [v77 identifier];
              v190 = value;
              if (v189)
              {
                v191 = v189;
                v192 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v194 = v193;
              }

              else
              {
                v192 = 0;
                v194 = 0;
              }

              v195 = [v77 objectID];
              v196 = v217;
              static TaskPriority.userInitiated.getter();
              v197 = type metadata accessor for TaskPriority();
              (*(*(v197 - 8) + 56))(v196, 0, 1, v197);
              v198 = swift_allocObject();
              v198[2] = 0;
              v198[3] = 0;
              v198[4] = v192;
              v198[5] = v194;
              v198[6] = v221;
              v198[7] = v185;
              v198[8] = v190;
              v198[9] = v188;
              v198[10] = v195;
              v199 = v195;
              sub_10023D268(0, 0, v196, &unk_10053BE68, v198);

              v115 = v223;
              v116 = *(v224 + 8);
              v116(v168, v223);
              v117 = v219;
LABEL_40:
              v116(v117, v115);
              return;
            }
          }

LABEL_103:
          v186 = v203;
          (*(v170 + 104))(v203, enum case for CallerOrigin.local(_:), v169);
          v221 = CallerOrigin.defaultStringForParticipant.getter();
          v185 = v187;
          (*(v170 + 8))(v186, v169);

          goto LABEL_104;
        }

        goto LABEL_109;
      }
    }

LABEL_97:
    v179 = v203;
    (*(v170 + 104))(v203, enum case for CallerOrigin.remote(_:), v169);
    value = CallerOrigin.defaultStringForParticipant.getter();
    v177 = v180;
    (*(v170 + 8))(v179, v169);

    goto LABEL_98;
  }

  __break(1u);
LABEL_109:
  __break(1u);
}

uint64_t sub_10023FD38()
{
  v1 = type metadata accessor for CallTranscriptionModelAvailability();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();

  return _swift_task_switch(sub_10023FE00, 0, 0);
}

uint64_t sub_10023FE00()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v0 + 48) = type metadata accessor for SiriSpeechRecognitionManager();
  v5 = objc_opt_self();
  *(v0 + 56) = v5;
  v6 = [v5 sharedInstance];
  ICModelAvailabilityManager.callTranscriptionModel.getter();

  *(v0 + 128) = enum case for CallTranscriptionModelAvailability.NGASR(_:);
  v7 = *(v4 + 104);
  *(v0 + 64) = v7;
  *(v0 + 72) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v7(v2);
  v8 = static CallTranscriptionModelAvailability.== infix(_:_:)();
  v9 = *(v4 + 8);
  *(v0 + 80) = v9;
  *(v0 + 88) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v2, v3);
  v9(v1, v3);
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_10023FF80;

  return static SiriSpeechRecognitionManager.asrModelNeedsDownload(NGASR:)(v8 & 1);
}

uint64_t sub_10023FF80(char a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_100240394;
  }

  else
  {
    *(v4 + 132) = a1 & 1;
    v5 = sub_1002400AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002400AC()
{
  if (*(v0 + 132) == 1)
  {
    v1 = *(v0 + 80);
    v2 = *(v0 + 64);
    v3 = *(v0 + 128);
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v0 + 16);
    v7 = [*(v0 + 56) sharedInstance];
    ICModelAvailabilityManager.callTranscriptionModel.getter();

    v2(v5, v3, v6);
    v8 = static CallTranscriptionModelAvailability.== infix(_:_:)();
    v1(v5, v6);
    v1(v4, v6);
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *v9 = v0;
    v9[1] = sub_100240250;

    return static SiriSpeechRecognitionManager.downloadASRModel(NGASR:progress:)(v8 & 1, ICCloudSyncingObject.MoveAction.Types.rawValue.getter, 0);
  }

  else
  {

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_100240250()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002404C4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100240394()
{
  if (qword_1006BC628 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002597C(v1, qword_1006C0FC8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "could not download speech model for call transcription", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002404C4()
{
  if (qword_1006BC628 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10002597C(v1, qword_1006C0FC8);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "could not download speech model for call transcription", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

void sub_1002405F4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v299 = a4;
  v301 = a2;
  v287 = type metadata accessor for Date();
  v286 = *(v287 - 8);
  __chkstk_darwin(v287);
  v285 = v277 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = type metadata accessor for RecordingMetadata();
  v294 = *(v296 - 1);
  v11 = __chkstk_darwin(v296);
  v292 = v277 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v290 = v277 - v14;
  v15 = __chkstk_darwin(v13);
  v284 = v277 - v16;
  v17 = __chkstk_darwin(v15);
  v293 = v277 - v18;
  __chkstk_darwin(v17);
  v291 = v277 - v19;
  v20 = sub_10015DA04(&qword_1006BF840);
  v21 = __chkstk_darwin(v20 - 8);
  v289 = v277 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v288 = v277 - v24;
  __chkstk_darwin(v23);
  v295 = v277 - v25;
  v304 = type metadata accessor for URL();
  v26 = *(v304 - 8);
  v27 = __chkstk_darwin(v304);
  v29 = v277 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v27);
  v297 = v277 - v31;
  __chkstk_darwin(v30);
  v33 = v277 - v32;
  v34 = [objc_opt_self() defaultManager];
  v300 = a1;
  v35 = [a1 UUIDString];
  if (!v35)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = String._bridgeToObjectiveC()();
  }

  v36 = objc_opt_self();
  v298 = a3;
  v37 = [v36 noteWithIdentifier:v35 context:a3];

  v38 = v37;
  if (!v37)
  {
    v39 = a6 & 1;
    v40 = v300;
    v41 = v298;
    sub_1001D5764(v300, v301, v298, a5, v39);
    v42 = [v40 UUIDString];
    if (!v42)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = String._bridgeToObjectiveC()();
    }

    v43 = [v36 noteWithIdentifier:v42 context:v41];

    if (!v43)
    {
      if (qword_1006BC628 != -1)
      {
        swift_once();
      }

      v68 = type metadata accessor for Logger();
      sub_10002597C(v68, qword_1006C0FC8);
      v69 = v300;
      v70 = v301;
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *v73 = 138412546;
        *(v73 + 4) = v69;
        *(v73 + 12) = 2112;
        *(v73 + 14) = v70;
        *v74 = v69;
        v74[1] = v70;
        v75 = v69;
        v76 = v70;
        _os_log_impl(&_mh_execute_header, v71, v72, "tried to import call recording but could not fetch note from MOC with note ID: %@ attachmentID: %@", v73, 0x16u);
        sub_10015DA04(&qword_1006C1440);
        swift_arrayDestroy();
      }

      return;
    }

    v38 = v43;
  }

  v44 = v37;
  v45 = v299;
  v46 = NSFileManager.contentsOfDirectory(at:)();
  v58 = *(v46 + 16);
  v283 = v38;
  if (!v58)
  {

    v77 = v304;
    if (qword_1006BC628 != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    sub_10002597C(v78, qword_1006C0FC8);
    (*(v26 + 2))(v33, v45, v77);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v307[0] = v82;
      *v81 = 136315138;
      sub_100243CD8(&qword_1006C0FF8, &type metadata accessor for URL);
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v85 = v84;
      (*(v26 + 1))(v33, v77);
      v86 = sub_100009D88(v83, v85, v307);

      *(v81 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v79, v80, "Directory %s is empty. Nothing available to import.", v81, 0xCu);
      sub_100009F60(v82);

      v87 = v283;
    }

    else
    {

      v113 = v283;
      (*(v26 + 1))(v33, v77);
    }

    return;
  }

  v282 = v34;
  v59 = 0;
  v60 = 5656397;
  v61 = (v46 + ((v26[80] + 32) & ~v26[80]));
  v62 = v26 + 16;
  v302 = v46;
  v303 = (v26 + 8);
  v63 = v304;
  while (1)
  {
    if (v59 >= *(v46 + 16))
    {
      __break(1u);
      goto LABEL_77;
    }

    (*(v26 + 2))(v29, &v61[*(v26 + 9) * v59], v63);
    if (URL.pathExtension.getter() == 5656397 && v66 == 0xE300000000000000)
    {
    }

    else
    {
      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v67 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    URL.lastPathComponent.getter();
    v64._countAndFlagsBits = 0x5F73746E656D6F6DLL;
    v64._object = 0xE800000000000000;
    v65 = String.hasPrefix(_:)(v64);

    if (v65)
    {
      break;
    }

LABEL_15:
    ++v59;
    v63 = v304;
    (*v303)(v29, v304);
    v46 = v302;
    if (v58 == v59)
    {

      v88 = v283;
LABEL_66:

      return;
    }
  }

  (*(v26 + 4))(v297, v29, v304);
  if (qword_1006BC628 != -1)
  {
    swift_once();
  }

  v89 = type metadata accessor for Logger();
  v90 = sub_10002597C(v89, qword_1006C0FC8);
  v91 = v300;
  v92 = v301;
  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.info.getter();
  v300 = v92;

  v278 = v91;
  v95 = os_log_type_enabled(v93, v94);
  v96 = v282;
  if (v95)
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *v97 = 138412546;
    v99 = v278;
    *(v97 + 4) = v278;
    *(v97 + 12) = 2112;
    v100 = v300;
    *(v97 + 14) = v300;
    *v98 = v99;
    v98[1] = v100;
    v101 = v99;
    v102 = v100;
    _os_log_impl(&_mh_execute_header, v93, v94, "found call recording file for note ID: %@ attachmentID: %@", v97, 0x16u);
    sub_10015DA04(&qword_1006C1440);
    swift_arrayDestroy();
  }

  v103 = v283;
  v104 = [v283 attachments];
  if (!v104)
  {

    (*v303)(v297, v304);
    return;
  }

  v105 = v104;
  v277[0] = v90;
  v106 = sub_1000054A4(0, &unk_1006C2C90);
  sub_1001D9A38();
  v107 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v108 = v304;
  v277[2] = v107;
  v279 = v106;
  if ((v107 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v107 = v307[0];
    v109 = v307[1];
    v110 = v307[2];
    v111 = v307[3];
    v112 = v307[4];
  }

  else
  {
    v114 = -1 << *(v107 + 32);
    v109 = v107 + 56;
    v110 = ~v114;
    v115 = -v114;
    if (v115 < 64)
    {
      v116 = ~(-1 << v115);
    }

    else
    {
      v116 = -1;
    }

    v112 = (v116 & *(v107 + 56));

    v111 = 0;
  }

  v277[1] = v110;
  v117 = (v110 + 64) >> 6;
  while (2)
  {
    v281 = v111;
    if (v107 < 0)
    {
      v122 = __CocoaSet.Iterator.next()();
      if (!v122 || (v305 = v122, swift_dynamicCast(), v121 = v306, v120 = v112, !v306))
      {
LABEL_65:

        v133 = v283;

        sub_10019E530();
        (*v303)(v297, v108);
        goto LABEL_66;
      }
    }

    else
    {
      v118 = v111;
      v119 = v112;
      if (!v112)
      {
        while (1)
        {
          v111 = v118 + 1;
          if (__OFADD__(v118, 1))
          {
            break;
          }

          if (v111 >= v117)
          {
            goto LABEL_65;
          }

          v119 = *(v109 + 8 * v111);
          ++v118;
          if (v119)
          {
            goto LABEL_53;
          }
        }

        __break(1u);
        swift_once();
        v47 = type metadata accessor for Logger();
        sub_10002597C(v47, qword_1006C0FC8);
        v48 = v300;
        v49 = v301;
        swift_errorRetain();
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = v96;
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          *v53 = 138412802;
          swift_errorRetain();
          v55 = _swift_stdlib_bridgeErrorToNSError();
          *(v53 + 4) = v55;
          *(v53 + 12) = 2112;
          *(v53 + 14) = v48;
          *v54 = v55;
          v54[1] = v48;
          *(v53 + 22) = 2112;
          *(v53 + 24) = v49;
          v54[2] = v49;
          v56 = v48;
          v57 = v49;
          _os_log_impl(&_mh_execute_header, v50, v51, "Could not get recording file %@, note ID: %@, attachment ID: %@", v53, 0x20u);
          sub_10015DA04(&qword_1006C1440);
          swift_arrayDestroy();
        }

        else
        {
        }

        return;
      }

LABEL_53:
      v120 = (v119 - 1) & v119;
      v121 = *(*(v107 + 48) + ((v111 << 9) | (8 * __clz(__rbit64(v119)))));
      if (!v121)
      {
        goto LABEL_65;
      }
    }

    v301 = v121;
    v123 = [v121 identifier];
    v280 = v112;
    if (v123)
    {
      v124 = v123;
      v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v127 = v126;
    }

    else
    {
      v125 = 0;
      v127 = 0;
    }

    v128 = [v300 UUIDString];
    v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v131 = v130;

    if (!v127)
    {

LABEL_47:

      v112 = v120;
      v96 = v282;
      v108 = v304;
      continue;
    }

    break;
  }

  if (v125 != v129 || v127 != v131)
  {
    v132 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v132)
    {
      goto LABEL_68;
    }

    goto LABEL_47;
  }

LABEL_68:
  sub_10019E530();

  v60 = v278;
  v26 = v300;
  v134 = Logger.logObject.getter();
  v135 = static os_log_type_t.info.getter();

  v136 = os_log_type_enabled(v134, v135);
  v61 = v282;
  if (v136)
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    *v137 = 138412546;
    *(v137 + 4) = v60;
    *(v137 + 12) = 2112;
    *(v137 + 14) = v26;
    *v138 = v60;
    v138[1] = v26;
    v139 = v60;
    v140 = v26;
    _os_log_impl(&_mh_execute_header, v134, v135, "found call recording attachment during import for note ID: %@ attachmentID: %@", v137, 0x16u);
    sub_10015DA04(&qword_1006C1440);
    swift_arrayDestroy();
  }

  v141 = v295;
  sub_10023C6F8(v295);
  v142 = v288;
  sub_100006038(v141, v288, &qword_1006BF840);
  v59 = v294;
  v143 = *(v294 + 48);
  v58 = v296;
  v300 = (v294 + 48);
  v281 = v143;
  v144 = v143(v142, 1, v296);
  v62 = v291;
  if (v144 == 1)
  {
    sub_1000073B4(v142, &qword_1006BF840);
    goto LABEL_78;
  }

  (*(v59 + 32))(v291, v142, v58);
  RecordingMetadata.remoteHandle.getter();
  v145 = static AudioTranscriptionContactsUtility.speakerNameFromContacts(handle:)();
  v147 = v146;

  if (v147)
  {
    v148 = [objc_opt_self() mainBundle];
    v149 = String._bridgeToObjectiveC()();
    v150 = [v148 localizedStringForKey:v149 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_10015DA04(&qword_1006C1A30);
    v151 = swift_allocObject();
    *(v151 + 16) = xmmword_100531E30;
    *(v151 + 56) = &type metadata for String;
    *(v151 + 64) = sub_1001D9030();
    *(v151 + 32) = v145;
    *(v151 + 40) = v147;
    String.init(format:_:)();

    v152 = v60;
    v153 = v26;
    v154 = Logger.logObject.getter();
    v155 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      *v156 = 138412546;
      *(v156 + 4) = v152;
      *(v156 + 12) = 2112;
      *(v156 + 14) = v153;
      *v157 = v152;
      v157[1] = v153;
      v158 = v152;
      v159 = v153;
      _os_log_impl(&_mh_execute_header, v154, v155, "succesfully found attachment and set title using contact info for note ID: %@ attachmentID: %@", v156, 0x16u);
      sub_10015DA04(&qword_1006C1440);
      swift_arrayDestroy();
      v61 = v282;

      v62 = v291;
    }

    (*(v294 + 8))(v62, v296);
    goto LABEL_81;
  }

LABEL_77:
  (*(v59 + 8))(v62, v58);
LABEL_78:
  v160 = [objc_opt_self() mainBundle];
  v161 = String._bridgeToObjectiveC()();
  v162 = [v160 localizedStringForKey:v161 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v163 = v60;
  v164 = v26;
  v165 = Logger.logObject.getter();
  v166 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v165, v166))
  {
    v167 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    *v167 = 138412546;
    *(v167 + 4) = v163;
    *(v167 + 12) = 2112;
    *(v167 + 14) = v164;
    *v168 = v163;
    v168[1] = v164;
    v169 = v163;
    v170 = v164;
    _os_log_impl(&_mh_execute_header, v165, v166, "found attachment and set title but no contact info for note ID: %@ attachmentID: %@", v167, 0x16u);
    sub_10015DA04(&qword_1006C1440);
    swift_arrayDestroy();
    v61 = v282;
  }

LABEL_81:
  v171 = String._bridgeToObjectiveC()();

  v172 = v301;
  [v301 setTitle:v171];

  v173 = [v172 audioModel];
  v174 = v283;
  v175 = v296;
  v176 = v292;
  v177 = v290;
  if (!v173)
  {
LABEL_84:
    v180 = [v172 audioModel];
    if (v180)
    {
      v181 = v180;
      v182 = [v180 audioDocument];

      if (!v182)
      {
        goto LABEL_132;
      }

      [v182 setCallType:_s11MobileNotes19CallNoteCoordinatorC8callType3forSo06ICCallG0VSo6NSUUIDC_tFZ_0(v60)];
    }

    v183 = v289;
    sub_100006038(v295, v289, &qword_1006BF840);
    if (v281(v183, 1, v175) == 1)
    {

      sub_1000073B4(v183, &qword_1006BF840);
      v184 = Logger.logObject.getter();
      v185 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v184, v185))
      {
        v186 = swift_slowAlloc();
        *v186 = 0;
        _os_log_impl(&_mh_execute_header, v184, v185, "No call recording metadata saved", v186, 2u);
      }
    }

    else
    {
      v300 = v60;
      v291 = v26;
      v187 = v61;
      v188 = v293;
      v189 = v294;
      (*(v294 + 32))(v293, v183, v175);
      v190 = *(v189 + 16);
      v191 = v284;
      v190(v284, v188, v175);
      v190(v177, v188, v175);
      v190(v176, v188, v175);
      v192 = Logger.logObject.getter();
      v193 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v192, v193))
      {
        v194 = swift_slowAlloc();
        v289 = swift_slowAlloc();
        v306 = v289;
        *v194 = 136315650;
        v195 = v177;
        v196 = v285;
        RecordingMetadata.startTimeStamp.getter();
        sub_100243CD8(&qword_1006C0FF0, &type metadata accessor for Date);
        v197 = v287;
        v198 = dispatch thunk of CustomStringConvertible.description.getter();
        v200 = v199;
        (*(v286 + 8))(v196, v197);
        v201 = *(v189 + 8);
        (v201)(v191, v296);
        v202 = sub_100009D88(v198, v200, &v306);

        *(v194 + 4) = v202;
        *(v194 + 12) = 2080;
        v203 = RecordingMetadata.localHandle.getter();
        v205 = v204;
        (v201)(v195, v296);
        v206 = sub_100009D88(v203, v205, &v306);

        *(v194 + 14) = v206;
        *(v194 + 22) = 2080;
        v207 = v282;
        v208 = v292;
        v209 = RecordingMetadata.remoteHandle.getter();
        v211 = v210;
        (v201)(v208, v296);
        v212 = v286;
        v213 = sub_100009D88(v209, v211, &v306);

        *(v194 + 24) = v213;
        _os_log_impl(&_mh_execute_header, v192, v193, "found call recording metadata  timestamp %s local handle: %s remote handle: %s", v194, 0x20u);
        swift_arrayDestroy();
        v174 = v283;

        v175 = v296;
      }

      else
      {

        v201 = *(v189 + 8);
        (v201)(v176, v175);
        (v201)(v177, v175);
        (v201)(v191, v175);
        v207 = v187;
        v212 = v286;
      }

      v172 = v301;
      v214 = [v301 audioModel];
      v215 = v285;
      if (v214)
      {
        v216 = v214;
        v217 = [v214 audioDocument];

        if (!v217)
        {
          goto LABEL_133;
        }

        RecordingMetadata.localHandle.getter();
        v218 = String._bridgeToObjectiveC()();

        [v217 setLocalSpeakerHandle:v218];

        v175 = v296;
      }

      v219 = [v172 audioModel];
      if (v219)
      {
        v220 = v219;
        v221 = [v219 audioDocument];

        if (!v221)
        {
          goto LABEL_134;
        }

        RecordingMetadata.remoteHandle.getter();
        v222 = String._bridgeToObjectiveC()();

        [v221 setRemoteSpeakerHandle:v222];

        v175 = v296;
      }

      v296 = v201;
      v223 = [v172 audioModel];
      v224 = v207;
      if (v223)
      {
        v225 = v223;
        v226 = [v223 audioDocument];

        if (!v226)
        {
          goto LABEL_135;
        }

        RecordingMetadata.startTimeStamp.getter();
        isa = Date._bridgeToObjectiveC()().super.isa;
        v228 = v287;
        (*(v212 + 8))(v215, v287);
        [v226 setCallRecordingStartTime:isa];
      }

      else
      {

        v228 = v287;
      }

      RecordingMetadata.startTimeStamp.getter();
      v229 = Date._bridgeToObjectiveC()().super.isa;
      (*(v212 + 8))(v215, v228);
      [v172 setCreationDate:v229];

      v230 = [v172 audioModel];
      if (v230)
      {
        v231 = v230;
        [v230 setMergeableDataDirty:1];
      }

      v232 = String._bridgeToObjectiveC()();
      [v172 updateChangeCountWithReason:v232];

      [v298 ic_save];
      (v296)(v293, v175);
      v61 = v224;
      v26 = v291;
      v60 = v300;
    }

    v233 = v299;
    v234 = [v172 audioModel];
    if (v234)
    {
      v306 = 0;
      v235 = v234;
      v236 = [v234 createSubattachmentForRecordingAndReturnError:&v306];

      v237 = v306;
      if (!v236)
      {
        v238 = v237;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        v239 = v60;
        v240 = v26;
        v241 = Logger.logObject.getter();
        v242 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v241, v242))
        {
          v243 = swift_slowAlloc();
          v244 = swift_slowAlloc();
          *v243 = 138412546;
          *(v243 + 4) = v239;
          *(v243 + 12) = 2112;
          *(v243 + 14) = v240;
          *v244 = v239;
          v244[1] = v240;
          v245 = v239;
          v246 = v240;
          _os_log_impl(&_mh_execute_header, v241, v242, "could not create subattachment for call recording with note ID: %@ attachmentID: %@", v243, 0x16u);
          sub_10015DA04(&qword_1006C1440);
          swift_arrayDestroy();
        }

        v174 = v283;
LABEL_129:

        [v174 updateModificationDateAndChangeCount];
        [v298 ic_save];

        sub_1000073B4(v295, &qword_1006BF840);
        (*v303)(v297, v304);
        return;
      }
    }

    else
    {
      v236 = 0;
    }

    v241 = v236;
    v247 = Logger.logObject.getter();
    v248 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v247, v248))
    {

LABEL_121:
      if (v236)
      {
        v257 = v241;
        URL._bridgeToObjectiveC()(v258);
        v260 = v259;
      }

      v261 = v60;
      v262 = v26;
      v263 = Logger.logObject.getter();
      v264 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v263, v264))
      {
        v265 = swift_slowAlloc();
        v266 = swift_slowAlloc();
        *v265 = 138412546;
        *(v265 + 4) = v261;
        *(v265 + 12) = 2112;
        *(v265 + 14) = v262;
        *v266 = v261;
        v266[1] = v262;
        v267 = v261;
        v268 = v262;
        _os_log_impl(&_mh_execute_header, v263, v264, "saved MOV for call recording with note ID: %@ attachmentID: %@", v265, 0x16u);
        sub_10015DA04(&qword_1006C1440);
        swift_arrayDestroy();
        v233 = v299;

        v174 = v283;
      }

      if ((ICInternalSettingsShouldPreserveImportedCallRecordingData() & 1) == 0)
      {
        _s11MobileNotes19CallNoteCoordinatorC06deleteC23RecordingsFromDirectory9directoryy10Foundation3URLV_tFZ_0(v233);
        v269 = v261;
        v270 = v262;
        v271 = Logger.logObject.getter();
        v272 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v271, v272))
        {
          v273 = swift_slowAlloc();
          v274 = swift_slowAlloc();
          *v273 = 138412546;
          *(v273 + 4) = v269;
          *(v273 + 12) = 2112;
          *(v273 + 14) = v270;
          *v274 = v269;
          v274[1] = v270;
          v275 = v269;
          v276 = v270;
          _os_log_impl(&_mh_execute_header, v271, v272, "removed original call recording file for note ID: %@ attachmentID: %@", v273, 0x16u);
          sub_10015DA04(&qword_1006C1440);
          swift_arrayDestroy();

          v174 = v283;
        }
      }

      goto LABEL_129;
    }

    v300 = v60;
    v249 = swift_slowAlloc();
    v250 = swift_slowAlloc();
    v306 = v250;
    *v249 = 136315138;
    if (v236)
    {
      v251 = [v241 identifier];
      if (v251)
      {
        v252 = v251;
        v253 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v255 = v254;

        v251 = v253;
        v61 = v282;
LABEL_120:
        v256 = sub_100009D88(v251, v255, &v306);

        *(v249 + 4) = v256;
        _os_log_impl(&_mh_execute_header, v247, v248, "created subattchment for call recording. %s", v249, 0xCu);
        sub_100009F60(v250);

        v174 = v283;
        v233 = v299;
        v60 = v300;
        goto LABEL_121;
      }
    }

    else
    {
      v251 = 0;
    }

    v255 = 0xE000000000000000;
    goto LABEL_120;
  }

  v178 = v173;
  v179 = [v173 audioDocument];

  if (v179)
  {
    [v179 setIsCallRecording:1];

    goto LABEL_84;
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
}

uint64_t sub_1002428A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_1002428DC, 0, 0);
}

uint64_t sub_1002428DC()
{
  v22 = v0;
  if (qword_1006BC628 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10002597C(v2, qword_1006C0FC8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315138;
    v9 = v5 == 0;
    if (v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v11 = 0xE000000000000000;
    }

    else
    {
      v11 = v1;
    }

    v12 = sub_100009D88(v10, v11, &v21);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "Performing background transcription for attachment: %s", v7, 0xCu);
    sub_100009F60(v8);
  }

  v13 = v0[7];
  v14 = v0[5];
  v15 = v0[6];
  v16 = v0[4];
  type metadata accessor for Transcription();
  v17 = static Transcription.shared.getter();
  sub_10015DA04(&qword_1006BE8F0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100535E30;
  *(v18 + 32) = v16;
  *(v18 + 40) = v14;
  *(v18 + 48) = v15;
  *(v18 + 56) = v13;

  dispatch thunk of Transcription.addCallRecordingTranscriptionTaskToQueue(speakers:attachmentIdentifier:)();

  v19 = v0[1];

  return v19();
}

uint64_t sub_100242B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return (_swift_task_switch)(sub_1002440E4, 0, 0);
}

uint64_t sub_100242B38(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = [objc_opt_self() sharedInstance];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 callWithUniqueProxyIdentifier:v9];

  if (!v10)
  {
    return 0;
  }

  v11 = [v10 recordingSession];
  if (!v11)
  {

    return 0;
  }

  v12 = v11;
  if ([v11 recordingState] > 3)
  {

    return 0;
  }

  if (qword_1006BC628 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10002597C(v14, qword_1006C0FC8);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136315394;
    *(v17 + 4) = sub_100009D88(a1, a2, &v18);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_100009D88(a3, a4, &v18);
    _os_log_impl(&_mh_execute_header, v15, v16, "tried to import call recording while recording was in progress with note ID: %s attachmentID: %s", v17, 0x16u);
    swift_arrayDestroy();
  }

  return 1;
}

void sub_100242D9C(void *a1, uint64_t a2, void *a3)
{
  v122 = a2;
  v5 = sub_10015DA04(&qword_1006C2170);
  __chkstk_darwin(v5 - 8);
  v7 = &v111 - v6;
  v8 = type metadata accessor for CallerOrigin();
  v115 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10015DA04(&qword_1006BCC20);
  v12 = __chkstk_darwin(v11 - 8);
  v114 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v118 = &v111 - v14;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v16 + 8))(v18, v15);
  v117 = v19;
  v123 = v21;
  v22 = String._bridgeToObjectiveC()();
  v124 = a1;
  v23 = [a1 addAudioAttachmentWithIdentifier:v22];

  v24 = [v23 audioModel];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 audioDocument];

    if (!v26)
    {
      __break(1u);
      goto LABEL_54;
    }

    [v26 setIsCallRecording:1];
  }

  v27 = [v23 audioModel];
  v28 = v7;
  if (!v27)
  {
    goto LABEL_7;
  }

  v29 = v27;
  v30 = [v27 audioDocument];

  if (!v30)
  {
LABEL_54:
    __break(1u);
    return;
  }

  [v30 setCallType:1];

LABEL_7:
  v31 = [v23 audioModel];
  if (v31)
  {
    v32 = v31;
    [v31 setMergeableDataDirty:1];
  }

  v113 = v10;
  v33 = String._bridgeToObjectiveC()();
  [v23 setTitle:v33];

  v34 = String._bridgeToObjectiveC()();
  [v23 updateChangeCountWithReason:v34];

  v35 = objc_allocWithZone(ICAttachmentInsertionController);
  v121 = [v35 initWithNote:v124];

  [a3 ic_save];
  v36 = [v23 audioModel];
  if (v36)
  {
    v125[0] = 0;
    v37 = v36;
    v38 = [v36 createSubattachmentForRecordingAndReturnError:v125];

    v39 = v125[0];
    if (!v38)
    {
      v40 = v39;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1006BC628 != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      sub_10002597C(v41, qword_1006C0FC8);
      swift_errorRetain();
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138412290;
        swift_errorRetain();
        v46 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v46;
        *v45 = v46;
        _os_log_impl(&_mh_execute_header, v42, v43, "failed to import call recording via menu: %@", v44, 0xCu);
        sub_1000073B4(v45, &qword_1006C1440);
      }

      else
      {
      }

      return;
    }
  }

  else
  {
    v38 = 0;
  }

  v120 = a3;
  v112 = v8;
  if (qword_1006BC628 != -1)
  {
    swift_once();
  }

  v47 = type metadata accessor for Logger();
  sub_10002597C(v47, qword_1006C0FC8);
  v48 = v38;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.info.getter();

  v51 = os_log_type_enabled(v49, v50);
  v119 = v7;
  if (v51)
  {
    v116 = v48;
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v125[0] = v53;
    *v52 = 136315138;
    if (v38 && (v54 = [v116 identifier]) != 0)
    {
      v55 = v54;
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;
    }

    else
    {
      v56 = 0;
      v58 = 0xE000000000000000;
    }

    v59 = sub_100009D88(v56, v58, v125);

    *(v52 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v49, v50, "created subattchment for call recording. %s", v52, 0xCu);
    sub_100009F60(v53);

    v28 = v119;
    v48 = v116;
  }

  else
  {
  }

  URL.startAccessingSecurityScopedResource()();
  v60 = v120;
  if (v38)
  {
    v61 = v48;
    URL._bridgeToObjectiveC()(v62);
    v64 = v63;
  }

  v65 = v124;

  v66 = Logger.logObject.getter();
  v67 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = v48;
    v69 = swift_slowAlloc();
    v125[0] = swift_slowAlloc();
    *v69 = 136315394;
    v70 = [v65 identifier];
    if (v70)
    {
      v71 = v70;
      v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v74 = v73;
    }

    else
    {
      v72 = 0;
      v74 = 0xE000000000000000;
    }

    v75 = sub_100009D88(v72, v74, v125);

    *(v69 + 4) = v75;
    *(v69 + 12) = 2080;
    v76 = sub_100009D88(v117, v123, v125);

    *(v69 + 14) = v76;
    _os_log_impl(&_mh_execute_header, v66, v67, "saved MOV for call recording with note ID: %s attachmentID: %s", v69, 0x16u);
    swift_arrayDestroy();

    v48 = v68;
    v28 = v119;
    v60 = v120;
  }

  else
  {
  }

  URL.stopAccessingSecurityScopedResource()();
  [v23 setNeedsTranscription:1];
  v77 = String._bridgeToObjectiveC()();
  [v23 updateChangeCountWithReason:v77];

  [v65 updateModificationDateAndChangeCount];
  [v60 ic_save];
  v127 = &type metadata for NotesFeature;
  v128 = sub_100025864();
  v125[0] = "OfflineCallTranscription";
  v125[1] = 24;
  v126 = 2;
  LOBYTE(v77) = isFeatureEnabled(_:)();
  sub_100009F60(v125);
  if ((v77 & 1) == 0)
  {

    return;
  }

  v78 = [v23 subAttachments];
  if (!v78 || (v79 = v78, sub_1000054A4(0, &unk_1006C2C90), sub_1001D9A38(), v80 = static Set._unconditionallyBridgeFromObjectiveC(_:)(), v79, v81 = sub_1002C89B4(v80), , !v81) || (v82 = [v81 media], v81, !v82))
  {

    v87 = type metadata accessor for URL();
    v88 = v118;
    (*(*(v87 - 8) + 56))(v118, 1, 1, v87);
LABEL_41:
    sub_1000073B4(v88, &qword_1006BCC20);
    return;
  }

  v116 = v48;
  v83 = [v82 mediaURL];

  if (v83)
  {
    v84 = v114;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v85 = 0;
  }

  else
  {
    v85 = 1;
    v84 = v114;
  }

  v86 = v115;
  v89 = type metadata accessor for URL();
  v90 = *(v89 - 8);
  (*(v90 + 56))(v84, v85, 1, v89);
  v88 = v118;
  sub_10000CA08(v84, v118);
  if ((*(v90 + 48))(v88, 1, v89) == 1)
  {

    goto LABEL_41;
  }

  sub_1000073B4(v88, &qword_1006BCC20);
  v91 = [objc_opt_self() sharedInstance];
  v92 = [v91 supportsCallTranscription];

  if (v92)
  {
    v93 = *(v86 + 104);
    v95 = v112;
    v94 = v113;
    v93(v113, enum case for CallerOrigin.remote(_:), v112);
    v124 = CallerOrigin.defaultStringForParticipant.getter();
    v97 = v96;
    v98 = *(v86 + 8);
    v98(v94, v95);
    v93(v94, enum case for CallerOrigin.local(_:), v95);
    v99 = CallerOrigin.defaultStringForParticipant.getter();
    v101 = v100;
    v98(v94, v95);
    v102 = [v23 identifier];
    if (v102)
    {
      v103 = v102;
      v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v106 = v105;
    }

    else
    {
      v104 = 0;
      v106 = 0;
    }

    v107 = [v23 objectID];
    static TaskPriority.userInitiated.getter();
    v108 = type metadata accessor for TaskPriority();
    (*(*(v108 - 8) + 56))(v28, 0, 1, v108);
    v109 = swift_allocObject();
    v109[2] = 0;
    v109[3] = 0;
    v109[4] = v104;
    v109[5] = v106;
    v109[6] = v99;
    v109[7] = v101;
    v109[8] = v124;
    v109[9] = v97;
    v109[10] = v107;
    v110 = v107;
    sub_10023D268(0, 0, v28, &unk_10053BE40, v109);
  }

  else
  {
  }
}

uint64_t sub_100243BE4(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000A1FC;

  return sub_100242B04(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100243CD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100243D20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000A600;

  return sub_1000061F4(a1, v4);
}

void sub_100243DD8()
{
  v1 = *(sub_10015DA04(&qword_1006BCC20) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + v3);
  v10 = *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);

  sub_10023E194(v4, v5, v6, v7, v8, v0 + v2, v9, v10);
}

unint64_t sub_100243E84()
{
  result = qword_1006C1140;
  if (!qword_1006C1140)
  {
    sub_10017992C(&unk_1006C3F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1140);
  }

  return result;
}

uint64_t sub_100243EE8()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100243F40(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000A1FC;

  return sub_1002428A8(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100244034()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000A1FC;

  return sub_10023FD38();
}

double CreateChecklistItemIntent.init()@<D0>(uint64_t a1@<X8>)
{
  sub_1002470C0(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t CreateChecklistItemIntent.noteEntity.setter(uint64_t a1)
{
  v2 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v2 - 8);
  sub_100006038(a1, &v5 - v3, &unk_1006BCAC0);
  IntentParameter.wrappedValue.setter();
  return sub_1000073B4(a1, &unk_1006BCAC0);
}

uint64_t sub_100244218()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static CreateChecklistItemIntent.title);
  sub_10002597C(v6, static CreateChecklistItemIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t CreateChecklistItemIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC630 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static CreateChecklistItemIntent.title);
}

uint64_t static CreateChecklistItemIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC630 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static CreateChecklistItemIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static CreateChecklistItemIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static CreateChecklistItemIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C1000);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C1008);
  __chkstk_darwin(v1);
  sub_10021B08C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100569520;
  v2._countAndFlagsBits = 0xD000000000000016;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C1010);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 544175136;
  v3._object = 0xE400000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C1018);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*CreateChecklistItemIntent.name.modify(uint64_t *a1))()
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
  return sub_10017E594;
}

uint64_t (*CreateChecklistItemIntent.noteEntity.modify(uint64_t *a1))()
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
  return sub_10017E594;
}

uint64_t (*CreateChecklistItemIntent.loggingConfiguration.modify(uint64_t *a1))()
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
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t CreateChecklistItemIntent.perform()(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  sub_10015DA04(&unk_1006BE0D0);
  v2[12] = swift_task_alloc();
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  type metadata accessor for Locale();
  v2[16] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v2[17] = swift_task_alloc();
  v4 = type metadata accessor for LocalizedStringResource();
  v2[18] = v4;
  v2[19] = *(v4 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v5 = type metadata accessor for ChecklistItemEntity();
  v2[22] = v5;
  v2[23] = *(v5 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  sub_10015DA04(&qword_1006C6490);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  sub_10015DA04(&unk_1006BCAC0);
  v2[30] = swift_task_alloc();
  v6 = type metadata accessor for NoteEntity(0);
  v2[31] = v6;
  v2[32] = *(v6 - 8);
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_100244EB8, 0, 0);
}

uint64_t sub_100244EB8()
{
  IntentParameter.wrappedValue.getter();
  v1 = v0[6];
  if (!v1)
  {
    goto LABEL_8;
  }

  v2 = v0[5];
  v3 = HIBYTE(v1) & 0xF;
  if ((v1 & 0x2000000000000000) == 0)
  {
    v3 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

LABEL_8:
    v14 = v0[20];
    v13 = v0[21];
    v15 = v0[19];
    v34 = v0[18];
    v16 = v0[14];
    v17 = v0[15];
    v18 = v0[12];
    v19 = v0[13];
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v16 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v19);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    IntentParameter.projectedValue.getter();
    (*(v15 + 16))(v14, v13, v34);
    IntentDialog.init(_:)();
    v20 = type metadata accessor for IntentDialog();
    (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
    type metadata accessor for AppIntentError();
    sub_100247D58(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_1000073B4(v18, &unk_1006BE0D0);
    swift_willThrow();
    (*(v15 + 8))(v13, v34);
    goto LABEL_9;
  }

  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[30];
  IntentParameter.wrappedValue.getter();
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v7 = v0[30];
    v31 = v0[21];
    v32 = v0[19];
    v33 = v0[18];
    v35 = v0[20];
    v9 = v0[14];
    v8 = v0[15];
    v11 = v0[12];
    v10 = v0[13];

    sub_1000073B4(v7, &unk_1006BCAC0);
    String.LocalizationValue.init(stringLiteral:)();
    static Locale.current.getter();
    (*(v9 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
    LocalizedStringResource.init(_:table:locale:bundle:comment:)();
    IntentParameter.projectedValue.getter();
    (*(v32 + 16))(v35, v31, v33);
    IntentDialog.init(_:)();
    v12 = type metadata accessor for IntentDialog();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
    type metadata accessor for AppIntentError();
    sub_100247D58(&unk_1006BFBC0, &type metadata accessor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_1000073B4(v11, &unk_1006BE0D0);
    swift_willThrow();
    (*(v32 + 8))(v31, v33);
LABEL_9:

    v21 = v0[1];

    return v21();
  }

  v23 = v0[11];
  sub_100247A18(v0[30], v0[33], type metadata accessor for NoteEntity);
  AppDependency.wrappedValue.getter();
  v24 = v0[7];
  v0[34] = v24;
  v25 = swift_allocObject();
  v0[35] = v25;
  v27 = v23[1];
  v26 = v23[2];
  v28 = *v23;
  *(v25 + 64) = *(v23 + 48);
  *(v25 + 32) = v27;
  *(v25 + 48) = v26;
  *(v25 + 16) = v28;
  *(v25 + 72) = v2;
  *(v25 + 80) = v1;

  v29 = swift_task_alloc();
  v0[36] = v29;
  *v29 = v0;
  v29[1] = sub_100245540;
  v30 = v0[29];

  return sub_1001A9408(v30, v24, sub_1002479F8, v25);
}

uint64_t sub_100245540()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 272);

  if (v0)
  {
    v4 = sub_100245AEC;
  }

  else
  {
    v4 = sub_10024568C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10024568C()
{
  v1 = v0[28];
  v2 = v0[22];
  v3 = v0[23];
  sub_100006038(v0[29], v1, &qword_1006C6490);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[33];
    v5 = v0[29];
    sub_1000073B4(v0[28], &qword_1006C6490);
    type metadata accessor for ICError(0);
    v0[9] = 227;
    sub_1001E27A0(_swiftEmptyArrayStorage);
    sub_100247D58(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    sub_1000073B4(v5, &qword_1006C6490);
    sub_100247DA0(v4, type metadata accessor for NoteEntity);
  }

  else
  {
    v7 = v0[27];
    v18 = v0[33];
    v9 = v0[25];
    v8 = v0[26];
    v10 = v0[24];
    v17 = v0[29];
    sub_100247A18(v0[28], v7, type metadata accessor for ChecklistItemEntity);
    sub_100247CF0(v7, v8, type metadata accessor for ChecklistItemEntity);
    v11 = _s11MobileNotes23OpenChecklistItemIntentVACycfC_0();
    v13 = v12;
    v15 = v14;
    sub_100247CF0(v8, v9, type metadata accessor for ChecklistItemEntity);
    sub_100247CF0(v9, v10, type metadata accessor for ChecklistItemEntity);
    IntentParameter.wrappedValue.setter();
    sub_100247DA0(v9, type metadata accessor for ChecklistItemEntity);
    sub_100247DA0(v8, type metadata accessor for ChecklistItemEntity);
    v0[2] = v11;
    v0[3] = v13;
    v0[4] = v15;
    sub_100247D58(&unk_1006C6120, type metadata accessor for ChecklistItemEntity);
    sub_10002104C();
    static IntentResult.result<A, B>(value:opensIntent:)();
    sub_100247DA0(v7, type metadata accessor for ChecklistItemEntity);
    sub_1000073B4(v17, &qword_1006C6490);
    sub_100247DA0(v18, type metadata accessor for NoteEntity);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_100245AEC()
{
  sub_100247DA0(*(v0 + 264), type metadata accessor for NoteEntity);

  v1 = *(v0 + 8);

  return v1();
}

void sub_100245C24(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v134 = a3;
  v138 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v133 = *(v138 - 8);
  __chkstk_darwin(v138);
  v132 = &v110[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Locale();
  __chkstk_darwin(v11 - 8);
  v131 = &v110[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v13 - 8);
  v129 = &v110[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v15 - 8);
  v130 = &v110[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = type metadata accessor for ChecklistItemID();
  v18 = __chkstk_darwin(v17);
  v136 = &v110[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v135 = &v110[-v20];
  v128 = type metadata accessor for CharacterSet();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v22 = &v110[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v140 = type metadata accessor for UUID();
  v137 = *(v140 - 8);
  v23 = __chkstk_darwin(v140);
  v25 = &v110[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v23);
  v139 = &v110[-v26];
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
    v31 = type metadata accessor for ChecklistItemEntity();
    (*(*(v31 - 8) + 56))(a5, 1, 1, v31);
    return;
  }

  v28 = v27;
  v126 = a5;
  isEscapingClosureAtFileLocation = a1;
  if ([v28 isPasswordProtectedAndLocked])
  {
    sub_100197CCC();
    swift_allocError();
    *v30 = 15;
    swift_willThrow();
LABEL_10:

    return;
  }

  v32 = [v28 textStorage];
  if (!v32)
  {
LABEL_9:
    v40 = type metadata accessor for ChecklistItemEntity();
    (*(*(v40 - 8) + 56))(v126, 1, 1, v40);
    goto LABEL_10;
  }

  v117 = v17;
  v123 = isEscapingClosureAtFileLocation;
  v33 = v32;
  v147 = [v33 length];
  v34 = *(a2 + 48);
  v118 = v5;
  v125 = v33;
  if (v34)
  {
    v35 = ICTTAttributeNameParagraphStyle;
    v124 = [v33 length];
    v36 = swift_allocObject();
    *(v36 + 16) = &v147;
    v37 = swift_allocObject();
    v121 = sub_100247CE8;
    *(v37 + 16) = sub_100247CE8;
    *(v37 + 24) = v36;
    v122 = v36;
    v145 = sub_1001A1F54;
    v146 = v37;
    aBlock = _NSConcreteStackBlock;
    v142 = 1107296256;
    v143 = sub_1004AEAA8;
    v144 = &unk_1006518E8;
    v38 = _Block_copy(&aBlock);

    [v33 enumerateAttribute:v35 inRange:0 options:v124 usingBlock:{2, v38}];

    _Block_release(v38);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    v39 = v140;
    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    v121 = 0;
    v122 = 0;
    v147 = *(a2 + 32);
    v39 = v140;
  }

  UUID.init()();
  v41 = [objc_opt_self() paragraphStyleNamed:103];
  UUID.init()();
  v42 = objc_allocWithZone(ICTTTodo);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v44 = [v42 initWithIdentifier:isa done:0];

  v45 = v137 + 8;
  v120 = *(v137 + 1);
  v120(v25, v39);
  [v41 setTodo:v44];

  v46 = UUID._bridgeToObjectiveC()().super.isa;
  [v41 setUuid:v46];

  v47 = v147 - 1;
  if (__OFSUB__(v147, 1))
  {
    __break(1u);
  }

  v119 = v45;
  v48 = v125;
  v49 = [v125 length];
  v50 = 0;
  v124 = v41;
  if ((v47 & 0x8000000000000000) == 0 && v47 < v49)
  {
    v51 = [v48 string];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v48;
    v55 = v54;

    aBlock = v52;
    v142 = v55;
    sub_10019E0AC();
    String.Index.init<A>(utf16Offset:in:)();
    v56 = [v53 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = String.subscript.getter();
    v59 = v58;

    if (v57 == 10 && v59 == 0xE100000000000000)
    {

      v50 = 0;
    }

    else
    {
      v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v50 = v60 ^ 1;
    }

    v48 = v125;
    v41 = v124;
  }

  v61 = v147;
  v62 = [v48 length];

  if ((v50 & 1) == 0)
  {

    v64 = v134;
    if (v61 >= v62)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  aBlock = 10;
  v142 = 0xE100000000000000;
  v63._countAndFlagsBits = v134;
  v63._object = a4;
  String.append(_:)(v63);
  v64 = aBlock;
  a4 = v142;
  if (v61 < v62)
  {
LABEL_24:
    aBlock = v64;
    v142 = a4;

    v65._countAndFlagsBits = 10;
    v65._object = 0xE100000000000000;
    String.append(_:)(v65);
  }

LABEL_25:
  sub_10015DA04(&unk_1006C8190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100531E30;
  v67 = ICTTAttributeNameParagraphStyle;
  *(inited + 32) = ICTTAttributeNameParagraphStyle;
  v68 = v67;
  [v41 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_1001901EC(inited);
  swift_setDeallocating();
  sub_1000073B4(inited + 32, &qword_1006C81A0);
  v69 = objc_allocWithZone(NSAttributedString);
  v70 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_100247D58(&qword_1006C95D0, type metadata accessor for Key);
  v71 = Dictionary._bridgeToObjectiveC()().super.isa;

  v72 = [v69 initWithString:v70 attributes:v71];

  v73 = v147;
  v74 = [v72 ic_range];
  v75 = v125;
  [v125 ic_replaceCharactersInRange:v73 withAttributedSubstring:v72 fromRange:{v74, v76}];
  [v28 updateModificationDateAndChangeCount];
  v77 = [v28 managedObjectContext];
  v78 = v140;
  if (v77)
  {
    aBlock = 0;
    v79 = v77;
    v80 = [v77 save:&aBlock];

    if (!v80)
    {
      v92 = aBlock;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v120(v139, v78);
      sub_10000C840(v121);
      return;
    }

    v81 = aBlock;
  }

  v82 = [v72 string];
  v83 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v85 = v84;

  aBlock = v83;
  v142 = v85;
  static CharacterSet.newlines.getter();
  sub_10019E0AC();
  v116 = StringProtocol.trimmingCharacters(in:)();
  v115 = v86;
  (*(v127 + 8))(v22, v128);

  v87 = [v28 objectID];
  v88 = v135;
  (*(v137 + 2))(&v135[*(v117 + 20)], v139, v78);
  v89 = [v87 URIRepresentation];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100247CF0(v88, v136, type metadata accessor for ChecklistItemID);
  v137 = [v28 objectID];
  v90 = [v41 todo];
  if (v90)
  {
    v91 = v90;
    LODWORD(v127) = [v90 done];
  }

  else
  {
    LODWORD(v127) = 0;
  }

  v93 = v126;
  v94 = [v28 title];
  v134 = v72;
  if (v94)
  {
    v95 = v94;
    v128 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v126 = v96;
  }

  else
  {
    v128 = 0;
    v126 = 0;
  }

  v113 = type metadata accessor for ChecklistItemEntity();
  v97 = *(v113 + 24);
  sub_10015DA04(&unk_1006C1870);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v98 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v112 = *(v133 + 104);
  v99 = v132;
  v111 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v112(v132, enum case for LocalizedStringResource.BundleDescription.main(_:), v138);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v133 = EntityProperty<>.init(title:)();
  *(v93 + v97) = v133;
  v100 = v93;
  v101 = v113;
  v114 = *(v113 + 28);
  sub_10015DA04(&unk_1006BCD90);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v102 = v98;
  v103 = v112;
  v112(v99, v102, v138);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v117 = EntityProperty<>.init(title:)();
  *(v100 + v114) = v117;
  v114 = *(v101 + 32);
  sub_10015DA04(&qword_1006C60E0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v103(v99, v111, v138);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_100247D58(&qword_1006BCAD0, type metadata accessor for NoteEntity);
  *(v100 + v114) = EntityProperty<>.init(title:)();
  v104 = v101;
  v105 = (v100 + *(v101 + 36));
  *v105 = 0;
  v105[1] = 0;
  v106 = v136;
  sub_100247CF0(v136, v100, type metadata accessor for ChecklistItemID);
  v107 = v137;
  v108 = [v137 URIRepresentation];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  aBlock = v116;
  v142 = v115;
  EntityProperty.wrappedValue.setter();
  LOBYTE(aBlock) = v127;
  EntityProperty.wrappedValue.setter();

  sub_100247DA0(v106, type metadata accessor for ChecklistItemID);
  sub_100247DA0(v135, type metadata accessor for ChecklistItemID);
  v120(v139, v140);
  v109 = v126;
  *v105 = v128;
  v105[1] = v109;
  (*(*(v104 - 8) + 56))(v100, 0, 1, v104);
  sub_10000C840(v121);
}

void sub_100246DC0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5)
{
  sub_100006038(a1, v10, &qword_1006BE7A0);
  if (v11)
  {
    sub_1001A1F5C();
    if (swift_dynamicCast())
    {
      if ([v9 style] == 103)
      {
        *a5 = a3 + a2;
        a5[1] = 0;
        *a4 = 1;
      }
    }
  }

  else
  {
    sub_1000073B4(v10, &qword_1006BE7A0);
  }
}

uint64_t (*sub_100246E9C(uint64_t *a1))()
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
  return sub_10017D9DC;
}

uint64_t sub_100246F18(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = *(v1 + 48);
  v5 = swift_task_alloc();
  *(v2 + 72) = v5;
  *v5 = v2;
  v5[1] = sub_100246FCC;

  return CreateChecklistItemIntent.perform()(a1);
}

uint64_t sub_100246FCC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1002470C0@<X0>(void *a1@<X8>)
{
  v63 = a1;
  v1 = sub_10015DA04(&unk_1006BCAC0);
  __chkstk_darwin(v1 - 8);
  v62 = &v46[-v2];
  v3 = type metadata accessor for InputConnectionBehavior();
  v4 = *(v3 - 8);
  v67 = v3;
  v68 = v4;
  __chkstk_darwin(v3);
  v66 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10015DA04(&unk_1006BE0D0);
  v7 = __chkstk_darwin(v6 - 8);
  v61 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v60 = &v46[-v9];
  v10 = sub_10015DA04(&qword_1006BCB40);
  __chkstk_darwin(v10 - 8);
  v59 = &v46[-v11];
  v12 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v12 - 8);
  v65 = &v46[-v13];
  v14 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v46[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for Locale();
  __chkstk_darwin(v18 - 8);
  v19 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v19 - 8);
  v20 = type metadata accessor for LocalizedStringResource();
  v54 = v20;
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v64 = &v46[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = sub_10015DA04(&qword_1006BCB48);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v23 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v24 = *(v15 + 104);
  v47 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v48 = v14;
  v24(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v14);
  v49 = v24;
  v50 = v15 + 104;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24(v17, v23, v14);
  v25 = v65;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v26 = *(v21 + 56);
  v53 = v21 + 56;
  v55 = v26;
  v26(v25, 0, 1, v20);
  v27 = type metadata accessor for String.IntentInputOptions();
  v71 = 0;
  v72 = 0;
  (*(*(v27 - 8) + 56))(v59, 1, 1, v27);
  v28 = type metadata accessor for IntentDialog();
  v29 = *(v28 - 8);
  v51 = *(v29 + 56);
  v52 = v29 + 56;
  v30 = v60;
  v51(v60, 1, 1, v28);
  v56 = enum case for InputConnectionBehavior.default(_:);
  v31 = *(v68 + 104);
  v68 += 104;
  v57 = v31;
  v31(v66);
  v59 = IntentParameter<>.init(title:description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  v58 = sub_10015DA04(&qword_1006BCB98);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v32 = v47;
  v33 = v48;
  v34 = v49;
  v49(v17, v47, v48);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v34(v17, v32, v33);
  v35 = v65;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  v55(v35, 0, 1, v54);
  v36 = type metadata accessor for NoteEntity(0);
  (*(*(v36 - 8) + 56))(v62, 1, 1, v36);
  v37 = v51;
  v51(v30, 1, 1, v28);
  v37(v61, 1, 1, v28);
  v71 = sub_10026EE08();
  v72 = v38;
  v73 = v39;
  v74 = v40;
  v75 = v41;
  v57(v66, v56, v67);
  sub_1001797CC();
  v42 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:query:)();
  sub_10015DA04(&qword_1006C34B0);
  v69 = 0xD000000000000021;
  v70 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v43 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCA40);
  v69 = 0xD000000000000024;
  v70 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  v45 = v63;
  *v63 = v59;
  v45[1] = v42;
  v45[2] = v43;
  v45[3] = result;
  v45[4] = 0;
  v45[5] = 0;
  *(v45 + 48) = 1;
  return result;
}

uint64_t sub_100247A18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100247A84()
{
  result = qword_1006C1020;
  if (!qword_1006C1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1020);
  }

  return result;
}

unint64_t sub_100247B28()
{
  result = qword_1006C1028;
  if (!qword_1006C1028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1028);
  }

  return result;
}

unint64_t sub_100247B80()
{
  result = qword_1006C1030;
  if (!qword_1006C1030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1030);
  }

  return result;
}

__n128 sub_100247C24(uint64_t a1, uint64_t a2)
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

uint64_t sub_100247C40(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_100247C88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100247CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100247D58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100247DA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100247E00@<X0>(uint64_t isEscapingClosureAtFileLocation@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NoteMetadata(0);
  v5 = (v4 - 8);
  __chkstk_darwin(v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = _swiftEmptyArrayStorage;
  v7[1] = _swiftEmptyArrayStorage;
  UnknownStorage.init()();
  v8 = (v7 + v5[9]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (v7 + v5[10]);
  *v9 = 0;
  v9[1] = 0;
  v10 = v7 + v5[11];
  *v10 = 0;
  v10[8] = 1;
  v11 = v7 + v5[12];
  *v11 = 0;
  v11[8] = 1;
  v12 = [isEscapingClosureAtFileLocation managedObjectContext];
  if (!v12)
  {
    goto LABEL_4;
  }

  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = isEscapingClosureAtFileLocation;
  *(v14 + 24) = v7;
  v15 = swift_allocObject();
  v16 = sub_1002485C0;
  *(v15 + 16) = sub_1002485C0;
  *(v15 + 24) = v14;
  aBlock[4] = sub_10000EFBC;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000EAF8;
  aBlock[3] = &unk_100651960;
  v17 = _Block_copy(aBlock);
  v18 = isEscapingClosureAtFileLocation;

  [v13 performBlockAndWait:v17];

  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_4:

    v16 = 0;
  }

  sub_100248B14(v7, a2, type metadata accessor for NoteMetadata);
  return sub_10000C840(v16);
}

uint64_t sub_100248064(void *a1, void *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v46 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v10 = &v46 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v46 - v12;
  __chkstk_darwin(v11);
  v15 = &v46 - v14;
  v16 = [a1 identifier];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    v21 = (a2 + *(type metadata accessor for NoteMetadata(0) + 28));
    *v21 = v18;
    v21[1] = v20;
  }

  v22 = [a1 title];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = (a2 + *(type metadata accessor for NoteMetadata(0) + 32));
    *v27 = v24;
    v27[1] = v26;
  }

  v28 = [a1 creationDate];
  if (!v28)
  {
    goto LABEL_10;
  }

  v29 = v28;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v5 + 32))(v15, v13, v4);
  Date.timeIntervalSince1970.getter();
  v31 = floor(v30 * 1000.0);
  result = (*(v5 + 8))(v15, v4);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v33 = a2 + *(type metadata accessor for NoteMetadata(0) + 36);
  *v33 = v31;
  v33[8] = 0;
LABEL_10:
  v34 = [a1 modificationDate];
  if (v34)
  {
    v35 = v46;
    v36 = v34;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v5 + 32))(v10, v35, v4);
    Date.timeIntervalSince1970.getter();
    v38 = floor(v37 * 1000.0);
    result = (*(v5 + 8))(v10, v4);
    if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v38 > -9.22337204e18)
      {
        if (v38 < 9.22337204e18)
        {
          v39 = a2 + *(type metadata accessor for NoteMetadata(0) + 40);
          *v39 = v38;
          v39[8] = 0;
          goto LABEL_15;
        }

LABEL_23:
        __break(1u);
        return result;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    goto LABEL_20;
  }

LABEL_15:
  v40 = swift_allocObject();
  *(v40 + 16) = _swiftEmptyArrayStorage;
  v41 = v40 + 16;
  v51 = sub_10024880C;
  v52 = v40;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_100249504;
  v50 = &unk_1006519B0;
  v42 = _Block_copy(&aBlock);

  [a1 enumerateInlineAttachmentsInOrderUsingBlock:v42];
  _Block_release(v42);
  swift_beginAccess();
  if (*(*v41 + 16))
  {
    *a2 = *v41;
  }

  v43 = swift_allocObject();
  *(v43 + 16) = _swiftEmptyArrayStorage;
  v44 = (v43 + 16);
  v51 = sub_100248A80;
  v52 = v43;
  aBlock = _NSConcreteStackBlock;
  v48 = 1107296256;
  v49 = sub_100249504;
  v50 = &unk_100651A00;
  v45 = _Block_copy(&aBlock);

  [a1 enumerateAttachmentsInOrderUsingBlock:v45];
  _Block_release(v45);
  swift_beginAccess();
  a2[1] = *v44;
}

id sub_1002485C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for CharacterSet();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 isHashtagAttachment];
  if (result)
  {
    v12 = [a1 displayText];
    if (!v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = String._bridgeToObjectiveC()();
    }

    v13 = [objc_opt_self() ic_hashtagCharacterString];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    CharacterSet.init(charactersIn:)();

    isa = CharacterSet._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v10, v7);
    v15 = [v12 ic_stringByTrimmingLeadingCharactersInSet:isa];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

    swift_beginAccess();
    v19 = *(a5 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v19 = sub_1001CAE70(0, *(v19 + 2) + 1, 1, v19);
      *(a5 + 16) = v19;
    }

    v22 = *(v19 + 2);
    v21 = *(v19 + 3);
    if (v22 >= v21 >> 1)
    {
      v19 = sub_1001CAE70((v21 > 1), v22 + 1, 1, v19);
    }

    *(v19 + 2) = v22 + 1;
    v23 = &v19[16 * v22];
    *(v23 + 4) = v16;
    *(v23 + 5) = v18;
    *(a5 + 16) = v19;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_100248814(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10015DA04(&qword_1006C1058);
  __chkstk_darwin(v7 - 8);
  v9 = &v22 - v8;
  v10 = type metadata accessor for AudioAttachmentMetadata(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_1002EE5A0(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000073B4(v9, &qword_1006C1058);
  }

  sub_100248B14(v9, v16, type metadata accessor for AudioAttachmentMetadata);
  sub_100248B7C(v16, v14);
  swift_beginAccess();
  v18 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_1001CB0D4(0, v18[2] + 1, 1, v18);
    *(a5 + 16) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_1001CB0D4(v20 > 1, v21 + 1, 1, v18);
  }

  v18[2] = v21 + 1;
  sub_100248B14(v14, v18 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21, type metadata accessor for AudioAttachmentMetadata);
  *(a5 + 16) = v18;
  swift_endAccess();
  return sub_100249404(v16);
}

void sub_100248A88(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100248B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100248B7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioAttachmentMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100248BE0(void *a1, void *a2, void *a3)
{
  v40 = a3;
  v5 = type metadata accessor for AudioAttachmentMetadata(0);
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  __chkstk_darwin(v5 - 8);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NoteMetadata(0);
  v12 = v11[8];
  v45 = a1;
  v13 = *(a1 + v12 + 8);
  v44 = v13 != 0;
  if (v13)
  {

    v14 = String._bridgeToObjectiveC()();

    [a2 setTitle:v14];
  }

  if ((*(v45 + v11[9] + 8) & 1) == 0)
  {
    Date.init(timeIntervalSince1970:)();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v10, v7);
    [a2 setCreationDate:isa];

    v44 = 1;
  }

  if ((*(v45 + v11[10] + 8) & 1) == 0)
  {
    Date.init(timeIntervalSince1970:)();
    v16 = Date._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v10, v7);
    [a2 setModificationDate:v16];

    v44 = 1;
  }

  v17 = [a2 account];
  v48 = a2;
  v43 = v6;
  if (v17)
  {
    v18 = v17;
    v19 = *v45;
    v20 = *(*v45 + 16);
    if (!v20)
    {
      goto LABEL_19;
    }

    v21 = objc_opt_self();
    v22 = 0;
    v46 = -v20;
    v47 = v21;
    v23 = v19 + 40;
    v39 = v19 + 40;
    while (1)
    {
      v24 = v23 + 16 * v22++;
      while (1)
      {
        if ((v22 - 1) >= *(v19 + 16))
        {
          __break(1u);
        }

        v25 = v18;
        v26 = String._bridgeToObjectiveC()();

        v27 = [v47 hashtagWithDisplayText:v26 account:v25 createIfNecessary:1];

        if (!v27)
        {
          goto LABEL_11;
        }

        if ([a2 convertTextInNoteBodyToHashtag:v27])
        {
          break;
        }

        v28 = [a2 addHashtagToNoteBodyIfMissing:v27];

        if (v28)
        {

          goto LABEL_18;
        }

LABEL_11:
        ++v22;
        v24 += 16;
        if (v46 + v22 == 1)
        {
          goto LABEL_19;
        }
      }

LABEL_18:
      v44 = 1;
      v23 = v39;
      if (!(v46 + v22))
      {
LABEL_19:

        break;
      }
    }
  }

  v29 = v45[1];
  v30 = *(v29 + 16);
  v31 = v42;
  if (v30)
  {
    v32 = *(v41 + 80);
    v33 = v29 + ((v32 + 32) & ~v32);
    v34 = *(v41 + 72);
    do
    {
      sub_100248B7C(v33, v31);
      v35 = swift_allocObject();
      sub_100248B14(v31, v35 + ((v32 + 16) & ~v32), type metadata accessor for AudioAttachmentMetadata);
      aBlock[4] = sub_100249460;
      aBlock[5] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100249504;
      aBlock[3] = &unk_100651A50;
      v36 = _Block_copy(aBlock);

      [v48 enumerateAttachmentsInOrderUsingBlock:v36];
      _Block_release(v36);
      v33 += v34;
      --v30;
    }

    while (v30);
  }

  if (v44)
  {
    [v48 save];
    aBlock[0] = 0;
    if ([v40 save:aBlock])
    {
      v37 = aBlock[0];
    }

    else
    {
      v38 = aBlock[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

void sub_100249178(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_10015DA04(&qword_1006BCC20);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v25 - v11;
  v13 = [a1 fileURL];
  if (v13)
  {
    v14 = v13;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  }

  else
  {
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  }

  sub_10000CA08(v10, v12);
  type metadata accessor for URL();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v12, 1, v15) == 1)
  {
    sub_1000073B4(v12, &qword_1006BCC20);
    return;
  }

  v17 = URL.lastPathComponent.getter();
  v19 = v18;
  (*(v16 + 8))(v12, v15);
  v20 = (a5 + *(type metadata accessor for AudioAttachmentMetadata(0) + 24));
  if (v20[1])
  {
    v21 = *v20;
    v22 = v20[1];
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  if (v17 == v21 && v19 == v22)
  {

    goto LABEL_16;
  }

  v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v24)
  {
LABEL_16:
    sub_1002EEA6C(a1);
  }
}

uint64_t sub_100249404(uint64_t a1)
{
  v2 = type metadata accessor for AudioAttachmentMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100249460(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(type metadata accessor for AudioAttachmentMetadata(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  sub_100249178(a1, a2, a3, a4, v10);
}

uint64_t sub_100249514(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100192680(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_1002E5CF8(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = type metadata accessor for UUID();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_1000073B4(a1, &qword_1006C1168);
    sub_1004774D0(a2, v9);
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_1000073B4(v9, &qword_1006C1168);
  }

  return result;
}

uint64_t sub_100249630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v5;
    sub_1002E6384(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);
    v13 = type metadata accessor for URL();
    result = (*(*(v13 - 8) + 8))(a5, v13);
    *v5 = v29;
  }

  else
  {
    v15 = sub_1002DF3A4(a5);
    if (v16)
    {
      v17 = v15;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v5;
      v30 = *v6;
      if (!v18)
      {
        sub_1002E828C();
        v19 = v30;
      }

      v20 = *(v19 + 48);
      v21 = type metadata accessor for URL();
      v22 = *(v21 - 8);
      v23 = *(v22 + 8);
      v23(v20 + *(v22 + 72) * v17, v21);
      v24 = *(v19 + 56) + 32 * v17;
      v25 = *(v24 + 16);
      v26 = *(v24 + 24);

      sub_100477A44(v17, v19);
      result = (v23)(a5, v21);
      *v6 = v19;
    }

    else
    {
      v27 = type metadata accessor for URL();
      v28 = *(*(v27 - 8) + 8);

      return v28(a5, v27);
    }
  }

  return result;
}

uint64_t sub_10024982C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v8 = sub_1002DF11C(a3, a4);
    v10 = v9;

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v5;
      v16 = *v5;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002E93B4();
        v13 = v16;
      }

      result = sub_10047809C(v8, v13);
      *v5 = v13;
    }
  }

  else
  {
    v15 = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_1002E7058(a1, a3, a4, v15);

    *v4 = v17;
  }

  return result;
}

uint64_t sub_100249918(uint64_t a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = sub_10015DA04(&qword_1006C1160);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for FastSyncPresenceController.EditorDebounceState(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1000073B4(a1, &qword_1006C1160);
    v13 = sub_1002ED08C(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002E97A8();
        v17 = v21;
      }

      sub_10024D1F8(*(v17 + 56) + *(v10 + 72) * v15, v8);
      sub_10047824C(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1000073B4(v8, &qword_1006C1160);
  }

  else
  {
    sub_10024D1F8(a1, v12);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_1002E71E4(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_100249B44()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C1060);
  sub_10002597C(v0, qword_1006C1060);
  return static Logger.archiving.getter();
}

id sub_100249B90()
{
  ObjectType = swift_getObjectType();
  v0 = type metadata accessor for UTType();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v21 - 8);
  __chkstk_darwin(v21);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  v20 = OBJC_IVAR____TtC11MobileNotes29ICArchiveImportNoteFileParser_queue;
  v19[1] = sub_1000054A4(0, &qword_1006BE9E0);
  v28 = sub_10015DA04(&qword_1006C1150);
  sub_10015DA04(&qword_1006C1158);
  v19[0] = String.init<A>(describing:)();
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10024D15C(&qword_1006BCB80, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10015DA04(&unk_1006BFD50);
  sub_10024D1A4(&qword_1006BCB90, &unk_1006BFD50);
  v7 = v22;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v21);
  *&v7[v20] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v8 = objc_allocWithZone(NSUserDefaults);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithSuiteName:v9];

  if (!v10)
  {
    v10 = [objc_opt_self() standardUserDefaults];
  }

  *&v7[OBJC_IVAR____TtC11MobileNotes29ICArchiveImportNoteFileParser_userDefaults] = v10;
  v11 = OBJC_IVAR____TtC11MobileNotes29ICArchiveImportNoteFileParser_allowedContentTypes;
  sub_10015DA04(&unk_1006C9010);
  v12 = v24;
  v13 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100531E30;
  v15 = [objc_opt_self() universalTypeIdentifier];
  v16 = v23;
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v12 + 32))(v14 + v13, v16, v25);
  *&v7[v11] = v14;
  v17 = OBJC_IVAR____TtC11MobileNotes29ICArchiveImportNoteFileParser_importStates;
  *&v7[v17] = sub_1001905F4(_swiftEmptyArrayStorage);
  *&v7[OBJC_IVAR____TtC11MobileNotes29ICArchiveImportNoteFileParser_archiveImporter] = [objc_allocWithZone(type metadata accessor for ICArchiveImporter()) init];
  v27.receiver = v7;
  v27.super_class = ObjectType;
  return objc_msgSendSuper2(&v27, "init");
}

id sub_10024A044(uint64_t a1)
{
  v28 = a1;
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for UTType();
  v25 = *(v1 - 8);
  v26 = v1;
  __chkstk_darwin(v1);
  v24 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v21 = OBJC_IVAR____TtC11MobileNotes29ICArchiveImportNoteFileParser_queue;
  v20[2] = sub_1000054A4(0, &qword_1006BE9E0);
  v30 = sub_10015DA04(&qword_1006C1150);
  sub_10015DA04(&qword_1006C1158);
  v20[1] = String.init<A>(describing:)();
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_10024D15C(&qword_1006BCB80, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10015DA04(&unk_1006BFD50);
  sub_10024D1A4(&qword_1006BCB90, &unk_1006BFD50);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  v8 = v23;
  *&v8[v21] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = objc_allocWithZone(NSUserDefaults);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithSuiteName:v10];

  if (!v11)
  {
    v11 = [objc_opt_self() standardUserDefaults];
  }

  *&v8[OBJC_IVAR____TtC11MobileNotes29ICArchiveImportNoteFileParser_userDefaults] = v11;
  v12 = OBJC_IVAR____TtC11MobileNotes29ICArchiveImportNoteFileParser_allowedContentTypes;
  sub_10015DA04(&unk_1006C9010);
  v13 = v25;
  v14 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100531E30;
  v16 = [objc_opt_self() universalTypeIdentifier];
  v17 = v24;
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v13 + 32))(v15 + v14, v17, v26);
  *&v8[v12] = v15;
  v18 = OBJC_IVAR____TtC11MobileNotes29ICArchiveImportNoteFileParser_importStates;
  *&v8[v18] = sub_1001905F4(_swiftEmptyArrayStorage);
  *&v8[OBJC_IVAR____TtC11MobileNotes29ICArchiveImportNoteFileParser_archiveImporter] = v28;
  v29.receiver = v8;
  v29.super_class = ObjectType;
  return objc_msgSendSuper2(&v29, "init");
}

uint64_t sub_10024A554()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MobileNotes29ICArchiveImportNoteFileParser_userDefaults);
  v2 = [objc_opt_self() userDefaultsKey];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  v3 = [v1 BOOLForKey:v2];

  if (!v3)
  {
    return 0;
  }

  if (URL.pathExtension.getter() == 0x6372617365746F6ELL && v4 == 0xEC00000065766968)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v6 & 1;
  }
}

uint64_t sub_10024A748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = OBJC_IVAR____TtC11MobileNotes29ICArchiveImportNoteFileParser_importStates;
  swift_beginAccess();
  if (!*(*&v3[v11] + 16) || (sub_1002DF3A4(a1), (v12 & 1) == 0))
  {
    swift_endAccess();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *&v3[v11];
    *&v3[v11] = 0x8000000000000000;
    sub_1002E6384(0, _swiftEmptyArrayStorage, 0, 0, a1, isUniquelyReferenced_nonNull_native);
    *&v3[v11] = v25;
    swift_endAccess();
    sub_1000054A4(0, &qword_1006BE9E0);
    v14 = static OS_dispatch_queue.main.getter();
    (*(v9 + 16))(&aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
    v15 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v4;
    (*(v9 + 32))(v16 + v15, &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v17 = (v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v17 = a2;
    v17[1] = a3;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_10024D0C8;
    *(v18 + 24) = v16;
    aBlock[4] = sub_10000EFBC;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000EAF8;
    aBlock[3] = &unk_100651C90;
    v19 = _Block_copy(aBlock);
    v20 = v4;

    dispatch_sync(v14, v19);

    _Block_release(v19);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_10024AA5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v52 - v12;
  v14 = sub_10015DA04(&qword_1006BE8D0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v52 - v16;
  v57 = a2;
  v58 = a1;
  v18 = ICArchiveImporter.objects(forArchiveAt:)();
  v59 = a4;
  v60 = a3;
  v54 = v13;
  v55 = v9;
  v56 = v8;
  v33 = v18[2];
  v53 = v18;
  v34 = 0;
  if (v33)
  {
    v37 = *(v15 + 16);
    v36 = v15 + 16;
    v35 = v37;
    v38 = v18 + ((*(v36 + 64) + 32) & ~*(v36 + 64));
    v28 = *(v36 + 56);
    while (1)
    {
      v35(v17, v38, v14);
      v39 = ICObjectReferences.recursiveNoteCount.getter();
      (*(v36 - 8))(v17, v14);
      v40 = __OFADD__(v34, v39);
      v34 += v39;
      if (v40)
      {
        break;
      }

      v38 += v28;
      if (!--v33)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    swift_once();
    v19 = type metadata accessor for Logger();
    sub_10002597C(v19, qword_1006C1060);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = v28;
      v24 = swift_slowAlloc();
      v61[0] = v24;
      *v22 = 136315138;
      swift_getErrorValue();
      v25 = Error.localizedDescription.getter();
      v27 = sub_100009D88(v25, v26, v61);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error getting objects for archive {error: %s}", v22, 0xCu);
      sub_100009F60(v24);
      v28 = v23;
    }

    v29 = v56;
    (*(v33 + 16))(v56, v57, v28);
    swift_beginAccess();
    v31 = sub_10024B038(v61);
    if (v30[1])
    {
      *v30 = v34;
      swift_errorRetain();
    }

    (v31)(v61, 0);
    swift_endAccess();
    (*(v33 + 8))(v29, v28);
    v60(0);
  }

  else
  {
LABEL_11:
    v42 = v55;
    v41 = v56;
    if (qword_1006BC638 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10002597C(v43, qword_1006C1060);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();
    v46 = os_log_type_enabled(v44, v45);
    v47 = v60;
    v48 = v54;
    if (v46)
    {
      v49 = swift_slowAlloc();
      *v49 = 134217984;
      *(v49 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v44, v45, "Created objects for archive {noteCount: %ld}", v49, 0xCu);
    }

    (*(v42 + 16))(v48, v57, v41);
    swift_beginAccess();
    v51 = sub_10024B038(v61);
    if (*(v50 + 8))
    {
      *(v50 + 8) = v53;
    }

    (v51)(v61, 0);
    swift_endAccess();

    result = (*(v42 + 8))(v48, v41);
    if (v34 < 0)
    {
      __break(1u);
    }

    else
    {
      return v47(v34);
    }
  }

  return result;
}