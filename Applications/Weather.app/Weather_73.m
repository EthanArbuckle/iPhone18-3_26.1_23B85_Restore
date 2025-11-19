double sub_1007CDD90(uint64_t a1)
{
  v2 = [objc_opt_self() wu_systemUsesExuberatedLineHeight];
  type metadata accessor for WindDataTableView(0);
  type metadata accessor for WindComponentViewModel();
  v3 = 10.0;
  if (!v2)
  {
    v3 = 6.0;
  }

  if (a1)
  {
    return v3;
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_1007CDE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v83 = a5;
  v87 = a4;
  v86 = a3;
  v100 = a6;
  v8 = type metadata accessor for ColorSchemeContrast();
  v94 = *(v8 - 8);
  v95 = v8;
  __chkstk_darwin(v8);
  v93 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = &v75 - v11;
  v96 = sub_10022C350(&qword_100CD9138);
  __chkstk_darwin(v96);
  v99 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v97 = &v75 - v14;
  __chkstk_darwin(v15);
  v98 = &v75 - v16;
  v77 = type metadata accessor for EnvironmentValues();
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v75 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Font.TextStyle();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = a1;
  v102 = a2;
  v22 = sub_10002D5A4();

  v82 = v22;
  v23 = Text.init<A>(_:)();
  v25 = v24;
  v27 = v26;
  v28 = *(v19 + 104);
  v81 = enum case for Font.TextStyle.subheadline(_:);
  v80 = v19 + 104;
  v79 = v28;
  v28(v21);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  v29 = *(v19 + 8);
  v85 = v18;
  v84 = v19 + 8;
  v78 = v29;
  v29(v21, v18);
  v30 = Text.font(_:)();
  v32 = v31;
  LOBYTE(v22) = v33;

  v34 = v23;
  v35 = v83;
  sub_10010CD64(v34, v25, v27 & 1);

  LODWORD(v101) = static HierarchicalShapeStyle.primary.getter();
  v36 = Text.foregroundStyle<A>(_:)();
  v89 = v37;
  v90 = v36;
  v88 = v38;
  v91 = v39;
  sub_10010CD64(v30, v32, v22 & 1);

  v40 = *v35;
  if (*(v35 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v42 = v75;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v40, 0);
    (*(v76 + 8))(v42, v77);
    LOBYTE(v40) = v101;
  }

  v101 = v86;
  v102 = v87;

  v43 = Text.init<A>(_:)();
  v45 = v44;
  v47 = v46;
  v48 = v85;
  v79(v21, v81, v85);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  v78(v21, v48);
  v86 = Text.font(_:)();
  v50 = v49;
  LODWORD(v85) = v51;
  v87 = v52;

  sub_10010CD64(v43, v45, v47 & 1);

  v53 = type metadata accessor for WindDataTableView(0);
  v54 = v92;
  sub_1001C7668();
  v55 = v93;
  v56 = v94;
  v57 = v95;
  (*(v94 + 104))(v93, enum case for ColorSchemeContrast.increased(_:), v95);
  LOBYTE(v43) = static ColorSchemeContrast.== infix(_:_:)();
  v58 = *(v56 + 8);
  v58(v55, v57);
  v58(v54, v57);
  v59 = 1.0;
  if ((v43 & 1) == 0)
  {
    v60 = v35 + *(v53 + 24);
    v61 = *v60;
    if (*(v60 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v62 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v63 = v75;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v61, 0);
      (*(v76 + 8))(v63, v77);
      LOBYTE(v61) = v101;
    }

    if (v61)
    {
      v59 = 1.0;
    }

    else
    {
      v59 = 0.27;
    }
  }

  v64 = *(v96 + 36);
  v65 = enum case for BlendMode.plusLighter(_:);
  v66 = type metadata accessor for BlendMode();
  v67 = v97;
  (*(*(v66 - 8) + 104))(&v97[v64], v65, v66);
  *v67 = v86;
  *(v67 + 8) = v50;
  *(v67 + 16) = v85 & 1;
  *(v67 + 24) = v87;
  *(v67 + 32) = v59;
  v68 = v98;
  sub_10011C0F0(v67, v98, &qword_100CD9138);
  v69 = v99;
  sub_1000302D8(v68, v99, &qword_100CD9138);
  v70 = v100;
  v72 = v89;
  v71 = v90;
  *v100 = v90;
  v70[1] = v72;
  LOBYTE(v65) = v88 & 1;
  *(v70 + 16) = v88 & 1;
  v70[3] = v91;
  *(v70 + 32) = 0;
  *(v70 + 33) = (v40 & 1) == 0;
  v70[5] = 0x4024000000000000;
  *(v70 + 48) = 0;
  v73 = sub_10022C350(&qword_100CD9140);
  sub_1000302D8(v69, v70 + *(v73 + 64), &qword_100CD9138);
  sub_10010CD54(v71, v72, v65);

  sub_1000180EC(v68, &qword_100CD9138);
  sub_1000180EC(v69, &qword_100CD9138);
  sub_10010CD64(v71, v72, v65);
}

double sub_1007CE6A4()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &__src[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ([objc_opt_self() wu_systemUsesExuberatedLineHeight])
  {
    v5 = v0 + *(type metadata accessor for WindDataTableView(0) + 28);
    v6 = *v5;
    if (*(v5 + 8) == 1)
    {
      result = 0.0;
      if (v6)
      {
        return result;
      }
    }

    else
    {

      static os_log_type_t.fault.getter();
      v8 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v6, 0);
      (*(v2 + 8))(v4, v1);
      result = 0.0;
      if (__dst[0])
      {
        return result;
      }
    }
  }

  v9 = *(type metadata accessor for WindDataTableView(0) + 32);
  memcpy(__dst, (v0 + v9), 0x49uLL);
  if (__dst[9])
  {
    memcpy(__src, (v0 + v9), sizeof(__src));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000180EC(__dst, &qword_100CB71A8);
    (*(v2 + 8))(v4, v1);
  }

  memcpy(v14, __src, sizeof(v14));
  v11 = sub_10014B28C() < 188.0;
  result = 40.0;
  if (v11)
  {
    return 32.0;
  }

  return result;
}

uint64_t sub_1007CE978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *(type metadata accessor for WindDataTableView(0) - 8);
  v14 = v6 + ((*(v13 + 80) + 16) & ~*(v13 + 80));

  return sub_1007CD1CC(a1, a2, a3, a4, a5, v14, a6);
}

unint64_t sub_1007CEA30()
{
  result = qword_100CD9108;
  if (!qword_100CD9108)
  {
    sub_10022E824(&qword_100CD90E0);
    sub_1007CEABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9108);
  }

  return result;
}

unint64_t sub_1007CEABC()
{
  result = qword_100CD9110;
  if (!qword_100CD9110)
  {
    sub_10022E824(&qword_100CD90D8);
    sub_1007CEB48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9110);
  }

  return result;
}

unint64_t sub_1007CEB48()
{
  result = qword_100CD9118;
  if (!qword_100CD9118)
  {
    sub_10022E824(&qword_100CD9100);
    sub_100006F64(&qword_100CD9120, &qword_100CD9128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9118);
  }

  return result;
}

uint64_t sub_1007CEC00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007CEC48(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

unint64_t sub_1007CECA0()
{
  result = qword_100CD9168;
  if (!qword_100CD9168)
  {
    sub_10022E824(&qword_100CD9148);
    sub_100006F64(&qword_100CD9170, &qword_100CB7028);
    sub_100006F64(&qword_100CD9178, &qword_100CD9180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9168);
  }

  return result;
}

uint64_t sub_1007CEE4C()
{
  sub_10022C350(&qword_100CAC610);
  sub_100003828();
  __chkstk_darwin(v0);
  v2 = &v6 - v1;
  Image.init(_internalSystemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v3 = type metadata accessor for SymbolRenderingMode();
  sub_10001B350(v2, 0, 1, v3);
  v4 = Image.symbolRenderingMode(_:)();

  sub_10030FE60(v2);
  return v4;
}

uint64_t sub_1007CEF24()
{
  v0 = type metadata accessor for Tips.Action();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  sub_1000037D8();
  v4 = v3 - v2;
  Tips.Action.init(id:perform:_:)();
  sub_10022C350(&qword_100CA55B0);
  v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100A2C3F0;
  (*(v1 + 32))(v6 + v5, v4, v0);
  v7 = static Tips.ActionBuilder.buildFinalResult(_:)();
  swift_setDeallocating();
  sub_1005C1E40();
  return v7;
}

uint64_t sub_1007CF0A4()
{
  v0 = type metadata accessor for Font.TextStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  LocalizedStringKey.init(stringLiteral:)();
  v4 = Text.init(_:tableName:bundle:comment:)();
  v6 = v5;
  v8 = v7;
  (*(v1 + 104))(v3, enum case for Font.TextStyle.body(_:), v0);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v1 + 8))(v3, v0);
  v9 = Text.font(_:)();

  sub_10010CD64(v4, v6, v8 & 1);

  return v9;
}

uint64_t sub_1007CF270()
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

uint64_t sub_1007CF724()
{
  v0 = sub_10022C350(&qword_100CA35A0);
  sub_100007074(v0, qword_100D90DC8);
  sub_10000703C(v0, qword_100D90DC8);
  sub_10022C350(&qword_100CA55A8);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_1007CF874()
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
  if (qword_100CA27D0 != -1)
  {
    swift_once();
  }

  v13 = sub_10000703C(v0, qword_100D90DC8);
  swift_beginAccess();
  (*(v2 + 16))(v5, v13, v0);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  (*(v8 + 8))(v12, v6);
  v14 = static Tips.RuleBuilder.buildPartialBlock(first:)();

  return v14;
}

uint64_t sub_1007CFAA4@<X0>(uint64_t *a1@<X8>)
{
  sub_100235AF0();
  result = Tip.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1007CFAE8()
{
  result = qword_100CD9188;
  if (!qword_100CD9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9188);
  }

  return result;
}

uint64_t sub_1007CFB3C(uint64_t a1, uint64_t a2, void (*a3)(void, void, void))
{
  v1568 = a3;
  v1570 = a2;
  v1500 = a1;
  v3 = sub_10022C350(&qword_100CA65B8);
  v4 = sub_100003810(v3);
  __chkstk_darwin(v4);
  sub_100003990(&v1354 - v5);
  v6 = sub_10022C350(&qword_100CA65D8);
  v7 = sub_100003810(v6);
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_10000E70C();
  sub_100003990(v11);
  v12 = sub_10022C350(&qword_100CB0250);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v15);
  sub_10000E70C();
  v17 = sub_100003918(v16);
  v1569 = type metadata accessor for SearchViewState(v17);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v19);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v20);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_10000E70C();
  sub_100003918(v22);
  v23 = type metadata accessor for SearchLocation();
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_1000037D8();
  sub_100003918(v26 - v25);
  v1541 = type metadata accessor for LocationOfInterest();
  sub_1000037C4();
  v1501 = v27;
  __chkstk_darwin(v28);
  sub_1000037D8();
  sub_100003918(v30 - v29);
  v1563 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v31);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_10000E70C();
  sub_100003918(v35);
  v1566 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v36);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_10000E70C();
  sub_100003918(v40);
  v1565 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v41);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v42);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v43);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_10000E70C();
  sub_100003918(v45);
  v1562 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v46);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v49);
  sub_10000E70C();
  sub_100003918(v50);
  v1564 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v51);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v54);
  sub_10000E70C();
  sub_100003918(v55);
  v1560 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v56);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v58);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_10000E70C();
  v61 = sub_100003918(v60);
  v1557 = type metadata accessor for ModalViewState(v61);
  sub_1000037E8();
  __chkstk_darwin(v62);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v66);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v67);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v72);
  sub_10000E70C();
  sub_100003918(v73);
  v1503 = type metadata accessor for SelectedSearchResult();
  sub_1000037E8();
  __chkstk_darwin(v74);
  sub_1000037D8();
  sub_100003918(v76 - v75);
  v1555 = type metadata accessor for Location();
  sub_1000037C4();
  v1548 = v77;
  __chkstk_darwin(v78);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v79);
  sub_10000E70C();
  sub_100003990(v80);
  v81 = sub_10022C350(&qword_100CA65E8);
  v82 = sub_100003810(v81);
  __chkstk_darwin(v82);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v84);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v85);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v90);
  sub_10000E70C();
  v1554 = v91;
  v1559 = type metadata accessor for WeatherMapPresentationState(0);
  sub_1000037E8();
  __chkstk_darwin(v92);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_10000E70C();
  sub_100003918(v98);
  v1561 = type metadata accessor for DisplayMetrics();
  sub_1000037E8();
  __chkstk_darwin(v99);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v100);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v101);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v102);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v104);
  sub_10000E70C();
  v106 = sub_100003918(v105);
  v1558 = type metadata accessor for ViewState.SecondaryViewState(v106);
  sub_1000037E8();
  __chkstk_darwin(v107);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v108);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v109);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_10000E70C();
  sub_100003990(v114);
  v115 = sub_10022C350(&qword_100CA65F0);
  v116 = sub_100003810(v115);
  __chkstk_darwin(v116);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v119);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v120);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v121);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v122);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v126);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v127);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_10000E70C();
  sub_100003990(v129);
  v130 = sub_10022C350(&qword_100CA65F8);
  v131 = sub_100003810(v130);
  __chkstk_darwin(v131);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v132);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v139);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v140);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v141);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v142);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v143);
  sub_10000E70C();
  sub_100003990(v144);
  v145 = sub_10022C350(&qword_100CA6600);
  v146 = sub_100003810(v145);
  __chkstk_darwin(v146);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v147);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v148);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v149);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v150);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v151);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v152);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v153);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v154);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v155);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v157);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v158);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v159);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v160);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v161);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v162);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v163);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v164);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v166);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v167);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v168);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v169);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v170);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v171);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v172);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v173);
  sub_10000E70C();
  sub_100003990(v174);
  v175 = sub_10022C350(&qword_100CA6608);
  v176 = sub_100003810(v175);
  __chkstk_darwin(v176);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v177);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v178);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v179);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v180);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v181);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v182);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v183);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v184);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v185);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v186);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v187);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v188);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v189);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v190);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v191);
  sub_10000E70C();
  sub_100003990(v192);
  v193 = sub_10022C350(&qword_100CA6610);
  v194 = sub_100003810(v193);
  __chkstk_darwin(v194);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v195);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v196);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v197);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v198);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v199);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v200);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v201);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v202);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v203);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v204);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v205);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v206);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v207);
  sub_10000E70C();
  sub_100003990(v208);
  v209 = sub_10022C350(&qword_100CA6618);
  v210 = sub_100003810(v209);
  __chkstk_darwin(v210);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v211);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v212);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v213);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v214);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v215);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v216);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v217);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v218);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v219);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v220);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v221);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v222);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v223);
  sub_10000E70C();
  sub_100003990(v224);
  v225 = sub_10022C350(&qword_100CA6620);
  v226 = sub_100003810(v225);
  __chkstk_darwin(v226);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v227);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v228);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v229);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v230);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v231);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v232);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v233);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v234);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v235);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v236);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v237);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v238);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v239);
  sub_10000E70C();
  sub_100003990(v240);
  v241 = sub_10022C350(&qword_100CA6628);
  v242 = sub_100003810(v241);
  __chkstk_darwin(v242);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v243);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v244);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v245);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v246);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v247);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v248);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v249);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v250);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v251);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v252);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v253);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v254);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v255);
  sub_10000E70C();
  sub_100003990(v256);
  v257 = sub_10022C350(&qword_100CA6630);
  v258 = sub_100003810(v257);
  __chkstk_darwin(v258);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v259);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v260);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v261);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v262);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v263);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v264);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v265);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v266);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v267);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v268);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v269);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v270);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v271);
  sub_10000E70C();
  sub_100003990(v272);
  v273 = sub_10022C350(&qword_100CA6638);
  v274 = sub_100003810(v273);
  __chkstk_darwin(v274);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v275);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v276);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v277);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v278);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v279);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v280);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v281);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v282);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v283);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v284);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v285);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v286);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v287);
  sub_10000E70C();
  sub_100003990(v288);
  v289 = sub_10022C350(&qword_100CA6640);
  v290 = sub_100003810(v289);
  __chkstk_darwin(v290);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v291);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v292);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v293);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v294);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v295);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v296);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v297);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v298);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v299);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v300);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v301);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v302);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v303);
  sub_10000E70C();
  v305 = sub_100003918(v304);
  v1567 = type metadata accessor for ViewState(v305);
  sub_1000037E8();
  __chkstk_darwin(v306);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v307);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v308);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v309);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v310);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v311);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v312);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v313);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v314);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v315);
  sub_100003878();
  sub_100003908();
  v317 = __chkstk_darwin(v316);
  v319 = (&v1354 - v318);
  __chkstk_darwin(v317);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v320);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v321);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v322);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v323);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v324);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v325);
  v327 = (&v1354 - v326);
  v328 = type metadata accessor for CodableError();
  sub_1000037C4();
  v330 = v329;
  __chkstk_darwin(v331);
  sub_1000037D8();
  v334 = (v333 - v332);
  v1556 = type metadata accessor for SearchViewState.ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v335);
  sub_100003848();
  sub_100003908();
  v337 = __chkstk_darwin(v336);
  v339 = (&v1354 - v338);
  v340 = __chkstk_darwin(v337);
  v342 = &v1354 - v341;
  __chkstk_darwin(v340);
  v344 = (&v1354 - v343);
  type metadata accessor for SearchViewAction();
  sub_1000037E8();
  __chkstk_darwin(v345);
  sub_1000037D8();
  v348 = (v347 - v346);
  sub_1007D9B48();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v479 = *v348;
      sub_10000CEC0();
      sub_100087FF4(v480);
      sub_1007D9B48();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload < 2)
      {
        sub_100011840();
        sub_1000B0004(v342, v1200);
      }

      else if (EnumCaseMultiPayload - 3 < 2)
      {

        v349 = v1570;
        goto LABEL_288;
      }

      *v344 = v479;
      swift_storeEnumTagMultiPayload();
      v477 = v344;
      v478 = 0;
      goto LABEL_284;
    case 2u:
      v436 = *v348;
      v435 = v348[1];
      sub_10000CEC0();
      sub_100087FF4(v437);
      sub_1007D9B48();
      v438 = swift_getEnumCaseMultiPayload();
      v439 = v1570;
      if ((v438 - 2) >= 3)
      {
        if (v438)
        {
          *v344 = *v339;
        }

        else
        {
          sub_100011840();
          sub_1000B0004(v339, v440);
        }
      }

      swift_storeEnumTagMultiPayload();
      v349 = sub_1007D76EC(v344, v436, v435, v439);

      goto LABEL_285;
    case 3u:
      sub_10022C350(&qword_100CC7D10);
      v442 = *(v1548 + 32);
      v1548 += 32;
      v1568 = v442;
      v442(v1497, v348, v1555);
      sub_100052488();
      sub_1007D9BA0();
      v443 = sub_100003BCC(v1476);
      sub_10001B350(v443, v444, v445, v1560);
      v446 = sub_100003BCC(&v1482);
      sub_10001B350(v446, v447, v448, v1564);
      v449 = sub_100003BCC(v1491);
      sub_10001B350(v449, v450, v451, v1562);
      v452 = sub_100003BCC(&v1497);
      sub_10001B350(v452, v453, v454, v1565);
      v455 = sub_100003BCC(&v1504);
      sub_10001B350(v455, v456, v457, v1566);
      v458 = sub_100003BCC(&v1511);
      sub_1000C8F88(v458, v459, v460);
      sub_10001F850();
      v461 = v1570;
      v1556 = v462;
      sub_100042230();
      sub_1007D9B48();
      v463 = sub_100020EE4(v1495);
      sub_1000B7C18(v463, v464, v465);
      v466 = sub_100003BCC(&v1500);
      sub_10001B350(v466, v467, v468, v1569);
      v469 = sub_1000B9A6C(v1427);
      sub_10001B350(v469, v470, v471, v1561);
      sub_1000C8850();
      sub_10001B350(v472, v473, v474, v475);
      v476 = *v327;
      sub_1000BAF48();
      sub_100003A40(v328);
      if (v355)
      {
        v928 = v1567;
        sub_100019F48();
        sub_1007D9B48();
        sub_1000D4314();

        v929 = v1418;
        v930 = v1395;
        if (v330 != 1)
        {
          sub_1000180EC(v328, &qword_100CA6608);
        }
      }

      else
      {
        sub_1000067FC();
        sub_1007D9BA0();

        v928 = v1567;
        v929 = v1418;
        v930 = v1395;
      }

      LODWORD(v1558) = *(v327 + v928[6]);
      v931 = [objc_opt_self() currentDevice];
      v932 = [v931 userInterfaceIdiom];

      if (v932 && *(v327 + v928[9] + 8) == 2)
      {
        v933 = 1;
      }

      else
      {
        v933 = *(v327 + v928[7]);
      }

      v934 = v1568;
      sub_1000180EC(v1467[1], &qword_100CA6608);
      sub_100030224(&v1500);
      sub_100051BBC();
      v935 = sub_1000162A4();
      v936 = v1569;
      sub_10001627C(v935, v937);
      if (v355)
      {
        sub_100087FF4(v928[8]);
        sub_100095588();
        sub_100005404(v930);
        if (!v355)
        {
          sub_1000180EC(v930, &qword_100CA6600);
        }
      }

      else
      {
        sub_100004B40();
        sub_1000131DC();
        sub_1007D9BA0();
        sub_10000E7B0();
        sub_10001B350(v938, v939, v940, v936);
      }

      sub_100037814();
      sub_100051BBC();
      v941 = sub_1000201BC();
      sub_10001627C(v941, v942);
      if (v355)
      {
        sub_100075000();
        sub_100087FF4(v943);
        sub_1007D9B48();
        sub_100005404(v344);
        if (!v355)
        {
          sub_1000180EC(v344, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100014EF0();
        sub_1007D9BA0();
      }

      sub_100051BBC();
      v944 = sub_100007FC4();
      sub_10001627C(v944, v945);
      if (v355)
      {
        sub_100028B60();
        sub_100087FF4(v946);
        sub_100021424();
        sub_1007D9B48();
        sub_100005404(v929);
        v947 = v1383;
        if (!v355)
        {
          sub_1000180EC(v929, &qword_100CA65F0);
        }
      }

      else
      {
        sub_100008F58();
        sub_100021424();
        sub_1007D9BA0();
        v947 = v1383;
      }

      v948 = *(v1544 + v928[11]);
      sub_10001CDA4();
      sub_1000B0004(v949, v950);
      v951 = v1417;
      *v1417 = v476;
      sub_1000067FC();
      sub_1007D9BA0();
      *(v951 + v928[6]) = v1558;
      *(v951 + v928[7]) = v933;
      sub_100051BBC();
      sub_100014EF0();
      sub_1007D9BA0();
      sub_100008F58();
      sub_1007D9BA0();
      *(v951 + v928[11]) = v948;
      sub_10000E7B0();
      sub_10001B350(v952, v953, v954, v928);
      v955 = v1429;
      v934(v1429, v1497, v1555);
      type metadata accessor for PreviewLocation();
      swift_storeEnumTagMultiPayload();
      v956 = *(type metadata accessor for LocationPreviewViewState(0) + 20);
      type metadata accessor for LocationPreviewModalViewState(0);
      swift_storeEnumTagMultiPayload();
      sub_100052488();
      sub_1007D9BA0();
      v957 = v1557;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v958, v959, v960, v957);
      sub_10004EAA8();
      sub_100042230();
      sub_1007D9B48();
      sub_1000113EC();
      sub_100051BBC();
      sub_10000554C(v956);
      if (v355)
      {
        sub_1000180EC(v956, &qword_100CA65E8);
      }

      else
      {
        sub_1000253DC();
        sub_1000B0004(v934, v961);
        sub_100010BDC();
        sub_1007D9BA0();
      }

      sub_1001721F4();
      v962 = v1379;
      sub_100010BDC();
      sub_1007D9BA0();
      v963 = *(v461 + 16);
      LODWORD(v1568) = *(v461 + 24);
      sub_100042230();
      sub_100051BBC();
      sub_100005404(v934);
      v1569 = v963;
      if (v355)
      {
        sub_10003A34C();
        sub_1007D9B48();
        v964 = sub_100024D10(v934, 1, v955);

        v965 = v934;
        v966 = v1392;
        if (v964 != 1)
        {
          sub_1000180EC(v965, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000300CC();
        sub_1007D9BA0();

        v966 = v1392;
      }

      sub_1000C893C(&v1482);
      sub_100051BBC();
      sub_100003BFC(v962);
      if (v355)
      {
        sub_10002014C();
        sub_100031F70();
        sub_1007D9B48();
        sub_100003BFC(v962);
        v967 = v1412;
        v968 = v1404;
        if (!v355)
        {
          sub_1000180EC(v962, &qword_100CA6638);
        }
      }

      else
      {
        sub_100024A5C();
        sub_1007D9BA0();
        v967 = v1412;
        v968 = v1404;
      }

      sub_100051BBC();
      sub_100003A40(v947);
      if (v355)
      {
        sub_100018744();
        sub_1007D9B48();
        sub_100003A40(v947);
        if (!v355)
        {
          sub_1000180EC(v947, &qword_100CA6630);
        }
      }

      else
      {
        sub_10003181C();
        sub_1007D9BA0();
      }

      sub_100051BBC();
      sub_1000038B4(v966, 1, v1565);
      if (v355)
      {
        sub_100052138();
        sub_1007D9B48();
        sub_100003A40(v966);
        v969 = v1420;
        if (!v355)
        {
          sub_1000180EC(v966, &qword_100CA6628);
        }
      }

      else
      {
        sub_100037D68();
        sub_1007D9BA0();
        v969 = v1420;
      }

      sub_100030224(&v1504);
      sub_100051BBC();
      v970 = sub_1000162A4();
      v971 = v1566;
      sub_1000038B4(v970, v972, v1566);
      if (v355)
      {
        sub_10000EDC0();
        sub_1007D9B48();
        v973 = sub_1000162A4();
        sub_1000038B4(v973, v974, v971);
        if (!v355)
        {
          sub_1000180EC(v968, &qword_100CA6620);
        }
      }

      else
      {
        sub_10002CAB4();
        sub_1007D9BA0();
      }

      sub_1000436AC(&v1511);
      sub_100051BBC();
      sub_10000554C(v967);
      if (v355)
      {
        sub_100020B80();
        sub_1007D9B48();
        sub_10000554C(v967);
        if (!v355)
        {
          sub_1000180EC(v967, &qword_100CA6618);
        }
      }

      else
      {
        sub_10003C81C();
        sub_1007D9BA0();
      }

      sub_100051BBC();
      sub_100003BDC(v969);
      if (v355)
      {
        sub_10001F850();
        sub_1007D9B48();
        sub_100003BDC(v969);
        if (!v355)
        {
          sub_1000180EC(v969, &qword_100CA6610);
        }
      }

      else
      {
        sub_100017DF4();
        sub_1007D9BA0();
      }

      sub_100010BDC();
      sub_1000113EC();
      sub_1007D9BA0();
      sub_100087104();
      sub_100003B6C();
      v741 = sub_100030540();
      v742 = v1568;
      v743 = v1508;
      v744 = v1511;
      v745 = v1514;
      v746 = v1516[1];
      v747 = v1516[5];
      v748 = &v1547;
      goto LABEL_276;
    case 4u:
      (*(v1501 + 32))(v1540, v348, v1541);
      static Solarium.isEnabled.getter();
      v367 = sub_100003BCC(&v1562);
      v368 = v1569;
      sub_10001B350(v367, v369, v370, v1569);
      v371 = sub_100003BCC(v1477);
      sub_10001B350(v371, v372, v373, v1560);
      v374 = sub_100003BCC(v1480);
      sub_10001B350(v374, v375, v376, v1564);
      v377 = sub_100003BCC(v1486);
      sub_10001B350(v377, v378, v379, v1562);
      v380 = sub_100003BCC(v1490);
      sub_10001B350(v380, v381, v382, v1565);
      v383 = sub_100003BCC(v1493);
      sub_10001B350(v383, v384, v385, v1566);
      v386 = sub_100003BCC(v1498);
      sub_1000C8F88(v386, v387, v388);
      sub_10001F850();
      v389 = v1543;
      sub_1007D9B48();
      v390 = sub_1000B9A6C(v1409);
      sub_1000B7C18(v390, v391, v392);
      v393 = sub_100003BCC(&v1510);
      v394 = v1561;
      sub_10001B350(v393, v395, v396, v1561);
      v397 = sub_100003BCC(v1513);
      sub_10001B350(v397, v398, v399, v1559);
      v400 = *v389;
      sub_1000BAF48();
      sub_100003A40(v328);
      if (v355)
      {
        v753 = v1567;
        sub_100019F48();
        sub_1007D9B48();
        sub_1000D4314();

        v754 = v1396;
        if (v330 != 1)
        {
          sub_1000180EC(v328, &qword_100CA6608);
        }
      }

      else
      {
        sub_1000067FC();
        sub_1007D9BA0();

        v753 = v1567;
        v754 = v1396;
      }

      v755 = v1543;
      LODWORD(v1568) = *(v1543 + v753[6]);
      v756 = [objc_opt_self() currentDevice];
      v757 = [v756 userInterfaceIdiom];

      if (v757 && *(v755 + v753[9] + 8) == 2)
      {
        v758 = 1;
      }

      else
      {
        v758 = *(v755 + v753[7]);
      }

      sub_1000180EC(v344, &qword_100CA6608);
      sub_1000870F8(&v1562);
      sub_100095588();
      v759 = sub_100007FC4();
      sub_1000038B4(v759, v760, v368);
      v761 = v1410;
      if (v355)
      {
        sub_100087FF4(v753[8]);
        sub_100095588();
        v762 = sub_100007FC4();
        sub_1000038B4(v762, v763, v368);
        if (!v355)
        {
          sub_1000180EC(v754, &qword_100CA6600);
        }
      }

      else
      {
        sub_100004B40();
        sub_1000519E0();
        sub_1007D9BA0();
        sub_10000E7B0();
        sub_10001B350(v764, v765, v766, v368);
      }

      sub_1000436AC(&v1510);
      sub_100051BBC();
      sub_100003BDC(v761);
      if (v355)
      {
        sub_100075000();
        v767 = v1543;
        sub_1007D9B48();
        sub_100003BDC(v761);
        if (!v355)
        {
          sub_1000180EC(v761, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100014EF0();
        sub_1007D9BA0();
        v767 = v1543;
      }

      sub_1000325C0();
      sub_100051BBC();
      sub_10001627C(v394, 1);
      if (v355)
      {
        sub_100028B60();
        sub_1007D9B48();
        sub_100005404(v394);
        if (!v355)
        {
          sub_1000180EC(v394, &qword_100CA65F0);
        }
      }

      else
      {
        sub_100008F58();
        sub_1007D9BA0();
      }

      v768 = *(v767 + v753[11]);
      sub_10001CDA4();
      sub_1000B0004(v767, v769);
      v770 = v1397;
      *v1397 = v400;
      sub_1000067FC();
      sub_1007D9BA0();
      *(v770 + v753[6]) = v1568;
      *(v770 + v753[7]) = v758;
      sub_100051BBC();
      sub_100014EF0();
      sub_1007D9BA0();
      sub_100008F58();
      sub_1007D9BA0();
      *(v770 + v753[11]) = v768;
      sub_10000E7B0();
      sub_10001B350(v771, v772, v773, v753);
      v774 = v1501;
      v775 = *(v1501 + 16);
      v776 = v1554;
      sub_100020FE8();
      v777 = v1541;
      v775();
      type metadata accessor for PreviewLocation();
      swift_storeEnumTagMultiPayload();
      v778 = type metadata accessor for LocationPreviewViewState(0);
      type metadata accessor for LocationPreviewModalViewState(0);
      swift_storeEnumTagMultiPayload();
      (v775)(v776 + *(v778 + 24), v400, v777);
      swift_storeEnumTagMultiPayload();
      v779 = v1557;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v780, v781, v782, v779);
      sub_10006A8E0();
      v1354 = v770;
      v1355 = v776;
      v783 = sub_100088338();
      v784 = v1452;
      v785 = v1455;
      v786 = v1460;
      v787 = v1463;
      v788 = v1466;
      v789 = v1468;
      v791 = sub_1000D2C20(v783, v790, v1452, v1455, v1460, v1463, v1466, v1468, v1354, v1355, v1356, v1357, v1358, v1359, v1360, v1361, v1362, v1363, v1364);
      sub_1000180EC(v776, &qword_100CA65E8);
      sub_1000180EC(v770, &qword_100CA6610);
      sub_1000180EC(v789, &qword_100CA6618);
      sub_1000180EC(v788, &qword_100CA6620);
      sub_1000180EC(v787, &qword_100CA6628);
      sub_1000180EC(v786, &qword_100CA6630);
      sub_1000180EC(v785, &qword_100CA6638);
      v792 = v784;
      v349 = v791;
      sub_1000180EC(v792, &qword_100CA6640);
      sub_1000180EC(v1532, &qword_100CA6600);
      (*(v774 + 8))(v1540, v1541);
      return v349;
    case 5u:
      sub_1007D9BA0();
      static Solarium.isEnabled.getter();
      v482 = sub_100003BCC(&v1568);
      sub_10001B350(v482, v483, v484, v1569);
      v485 = sub_100003BCC(&v1557);
      sub_10001B350(v485, v486, v487, v1560);
      v488 = sub_100003BCC(&v1558);
      sub_10001B350(v488, v489, v490, v1564);
      v491 = sub_100003BCC(&v1560);
      sub_10001B350(v491, v492, v493, v1562);
      v494 = sub_100003BCC(&v1561);
      sub_10001B350(v494, v495, v496, v1565);
      v497 = sub_100003BCC(&v1563);
      sub_10001B350(v497, v498, v499, v1566);
      v500 = sub_100003BCC(&v1565);
      sub_1000C8F88(v500, v501, v502);
      sub_10001F850();
      v503 = v1570;
      v1556 = v504;
      sub_1000131DC();
      sub_1007D9B48();
      v505 = sub_100020EE4(&v1503);
      sub_1000B7C18(v505, v506, v507);
      v508 = sub_100003BCC(&v1564);
      sub_10001B350(v508, v509, v510, v1561);
      v511 = sub_100003BCC(&v1566);
      sub_10001B350(v511, v512, v513, v1559);
      v514 = *v334;
      sub_1000BAF48();
      sub_100003A40(v328);
      if (v355)
      {
        v975 = v1567;
        sub_100019F48();
        sub_1007D9B48();
        sub_1000D4314();

        v976 = v1426;
        v977 = v1419;
        v978 = v1399;
        if (v330 != 1)
        {
          sub_1000180EC(v328, &qword_100CA6608);
        }
      }

      else
      {
        sub_1000067FC();
        sub_1007D9BA0();

        v975 = v1567;
        v976 = v1426;
        v977 = v1419;
        v978 = v1399;
      }

      v979 = v1445;
      v980 = *(v1445 + v975[6]);
      v981 = [objc_opt_self() currentDevice];
      v982 = v979;
      v983 = [v981 userInterfaceIdiom];

      if (v983 && *(v982 + v975[9] + 8) == 2)
      {
        v984 = 1;
      }

      else
      {
        v984 = *(v982 + v975[7]);
      }

      sub_1000870F8(&v1568);
      sub_100095588();
      v985 = sub_100007FC4();
      v986 = v1569;
      sub_10001627C(v985, v987);
      if (v355)
      {
        sub_100095588();
        sub_100005404(v978);
        if (!v355)
        {
          sub_1000180EC(v978, &qword_100CA6600);
        }
      }

      else
      {
        sub_100004B40();
        sub_1000519E0();
        sub_1007D9BA0();
        sub_10000E7B0();
        sub_10001B350(v988, v989, v990, v986);
      }

      sub_1000519E0();
      sub_100095588();
      v991 = sub_100007FC4();
      sub_10001627C(v991, v992);
      if (v355)
      {
        sub_100075000();
        sub_1007D9B48();
        sub_100005404(v978);
        if (!v355)
        {
          sub_1000180EC(v978, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100014EF0();
        sub_1007D9BA0();
      }

      sub_100095588();
      sub_10001627C(v977, 1);
      if (v355)
      {
        sub_100028B60();
        sub_1007D9B48();
        sub_100005404(v977);
        v993 = v1377;
        if (!v355)
        {
          sub_1000180EC(v977, &qword_100CA65F0);
        }
      }

      else
      {
        sub_100008F58();
        sub_1007D9BA0();
        v993 = v1377;
      }

      v994 = *(v982 + v975[11]);
      v995 = v1537;
      *v1537 = v514;
      sub_1000067FC();
      sub_1007D9BA0();
      *(v995 + v975[6]) = v980;
      *(v995 + v975[7]) = v984;
      sub_100051BBC();
      sub_100014EF0();
      sub_1007D9BA0();
      sub_100008F58();
      sub_1007D9BA0();
      *(v995 + v975[11]) = v994;
      sub_1000180EC(v1536, &qword_100CA65F0);
      sub_1000180EC(v1534, &qword_100CA65F8);
      sub_1000180EC(v1471, &qword_100CA6608);
      sub_10001CDA4();
      sub_1000B0004(v982, v996);
      sub_10000E7B0();
      sub_10001B350(v997, v998, v999, v975);
      v1000 = v1542;
      sub_1000131DC();
      sub_1007D9B48();
      type metadata accessor for PreviewLocation();
      swift_storeEnumTagMultiPayload();
      v1001 = type metadata accessor for LocationPreviewViewState(0);
      type metadata accessor for LocationPreviewModalViewState(0);
      swift_storeEnumTagMultiPayload();
      v1002 = (v980 + *(v1001 + 24));
      v1003 = *(v1000 + 48);
      *v1002 = *(v1000 + 40);
      v1002[1] = v1003;
      swift_storeEnumTagMultiPayload();
      v1004 = v1557;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v1005, v1006, v1007, v1004);
      sub_10004EAA8();
      sub_100021424();
      sub_1007D9B48();
      sub_1000BAF48();
      sub_1000D4314();

      if (v1004 == 1)
      {
        sub_1000180EC(v1000, &qword_100CA65E8);
      }

      else
      {
        sub_1000253DC();
        sub_1000B0004(v976, v1008);
        sub_100010BDC();
        sub_1007D9BA0();
      }

      sub_1001721F4();
      v1009 = v1388;
      v1010 = v1381;
      sub_100010BDC();
      sub_1007D9BA0();
      v1011 = *(v503 + 16);
      LODWORD(v1568) = *(v503 + 24);
      sub_1000870F8(&v1557);
      sub_100095588();
      sub_100005404(v993);
      v1012 = v1405;
      if (v355)
      {
        sub_10003A34C();
        sub_1007D9B48();
        v1013 = sub_100007FC4();
        v1015 = sub_100024D10(v1013, v1014, v1000);

        if (v1015 != 1)
        {
          sub_1000180EC(v993, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000300CC();
        sub_1007D9BA0();
      }

      sub_1000C893C(&v1558);
      sub_100095588();
      sub_100003BFC(v1010);
      if (v355)
      {
        sub_10002014C();
        sub_100031F70();
        sub_1007D9B48();
        sub_100003BFC(v1010);
        v1016 = v1413;
        v1017 = v1393;
        if (!v355)
        {
          sub_1000180EC(v1010, &qword_100CA6638);
        }
      }

      else
      {
        sub_100024A5C();
        sub_1007D9BA0();
        v1016 = v1413;
        v1017 = v1393;
      }

      sub_100095588();
      sub_100003A40(v1009);
      if (v355)
      {
        sub_100018744();
        sub_1007D9B48();
        sub_100003A40(v1009);
        v1018 = v1421;
        if (!v355)
        {
          sub_1000180EC(v1009, &qword_100CA6630);
        }
      }

      else
      {
        sub_10003181C();
        sub_1007D9BA0();
        v1018 = v1421;
      }

      sub_100030224(&v1561);
      sub_100095588();
      v1019 = sub_1000162A4();
      sub_1000038B4(v1019, v1020, v1565);
      if (v355)
      {
        sub_100052138();
        sub_1007D9B48();
        sub_100003BDC(v1017);
        if (!v355)
        {
          sub_1000180EC(v1017, &qword_100CA6628);
        }
      }

      else
      {
        sub_100037D68();
        sub_1007D9BA0();
      }

      sub_100095588();
      v1021 = sub_100016298();
      sub_100036E54(v1021, v1022);
      if (v355)
      {
        sub_10000EDC0();
        sub_1007D9B48();
        sub_100003BFC(v1012);
        if (!v355)
        {
          sub_1000180EC(v1012, &qword_100CA6620);
        }
      }

      else
      {
        sub_10002CAB4();
        sub_1007D9BA0();
      }

      sub_1000436AC(&v1565);
      sub_100095588();
      sub_10000554C(v1016);
      if (v355)
      {
        sub_100020B80();
        sub_1007D9B48();
        sub_10000554C(v1016);
        if (!v355)
        {
          sub_1000180EC(v1016, &qword_100CA6618);
        }
      }

      else
      {
        sub_10003C81C();
        sub_1007D9BA0();
      }

      sub_100095588();
      sub_1000868B8();
      v1569 = v1011;
      if (v355)
      {
        sub_10001F850();
        sub_1007D9B48();
        sub_1000868B8();
        if (!v355)
        {
          sub_1000180EC(v1018, &qword_100CA6610);
        }
      }

      else
      {
        sub_100017DF4();
        sub_1007D9BA0();
      }

      sub_100010BDC();
      sub_1000113EC();
      sub_1007D9BA0();
      sub_100087240();
      sub_100021DD8();
      sub_100087104();
      sub_100003B6C();
      v1023 = sub_100030540();
      sub_10003E038(v1023, v1568, v1510, v1512[1], v1516[0], v1516[3], v1516[6], v1518, v1354, v1355, v1356, v1357, v1358, v1359, v1360, v1361, v1362, v1363, v1364, v1365, v1366, v1367, v1368, v1369, v1370, v1371, v1372, v1373, v1374, v1375, v1376, v1377, v1378, v1379, v1380);
      v349 = v1024;

      sub_1000180EC(v1504, &qword_100CA65E8);
      sub_1000180EC(v1537, &qword_100CA6610);
      sub_1000180EC(v1535, &qword_100CA6618);
      sub_1000180EC(v1533, &qword_100CA6620);
      sub_1000180EC(v1531, &qword_100CA6628);
      sub_1000180EC(v1530, &qword_100CA6630);
      sub_1000180EC(v1528, &qword_100CA6638);
      sub_1000180EC(v1527, &qword_100CA6640);
      sub_1000180EC(v1538, &qword_100CA6600);
      v926 = type metadata accessor for SearchLocation;
      v927 = v1542;
      goto LABEL_286;
    case 6u:
      v540 = v1548;
      v349 = v1499;
      v541 = v1555;
      (*(v1548 + 32))(v1499, v348, v1555);
      v542 = v1570 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
      sub_100020FE8();
      sub_100095588();
      v543 = v1569;
      sub_1000038B4(v339, 1, v1569);
      if (v355)
      {
        sub_1000180EC(v339, &qword_100CA6600);
        v544 = sub_100049D00();
        sub_10001B350(v544, v545, v546, v1565);
        v547 = sub_100003BCC(&v1572);
        sub_10001B350(v547, v548, v549, v1566);
        v550 = sub_100003BCC(&v1571);
        sub_10001B350(v550, v551, v552, v1563);
        sub_10001F850();
        sub_1000519E0();
        sub_1007D9B48();
        v553 = v1523;
        sub_100003934();
        sub_10001B350(v554, v555, v556, v1558);
        v557 = v1524;
        swift_storeEnumTagMultiPayload();
        v558 = v540;
        (*(v540 + 16))(&v557[*(v543 + 28)], v349, v541);
        sub_10000E7B0();
        sub_10001B350(v559, v560, v561, v541);
        *v557 = 0;
        *(v557 + 1) = 0xE000000000000000;
        v557[*(v543 + 24)] = 0;
        v562 = sub_10000FEF4();
        sub_10001B350(v562, v563, v564, v543);
        v565 = v1550;
        sub_100003934();
        sub_1000888F0(v566, v567, v568);
        v570 = *(v569 - 256);
        sub_1000C8850();
        sub_10001B350(v571, v572, v573, v574);
        v575 = v1525;
        sub_1000519D4();
        sub_10081B470();
        sub_1000180EC(v570, &qword_100CA65F0);
        sub_1000180EC(v565, &qword_100CA65F8);
        sub_1000180EC(v557, &qword_100CA6600);
        sub_1000180EC(v553, &qword_100CA6608);
        sub_10001CDA4();
        sub_1000B0004(v349, v576);
        sub_10000E7B0();
        sub_10001B350(v577, v578, v579, v1567);
        v580 = v1554;
        v581 = sub_100016A04();
        sub_10001B350(v581, v582, v583, v1557);
        sub_10006A8E0();
        v1354 = v575;
        v1355 = v580;
        v584 = sub_100052768();
        v586 = *(v585 - 256);
        v587 = v1551;
        v588 = v1552;
        v589 = v1553;
        v590 = v1547;
        v591 = v1546;
        sub_1000D2C20(v584, v592, v586, v1551, v1552, v1553, v1547, v1546, v1354, v1355, v1356, v1357, v1358, v1359, v1360, v1361, v1362, v1363, v1364);
        sub_1000378A4();
        sub_1000180EC(v580, &qword_100CA65E8);
        sub_1000180EC(v575, &qword_100CA6610);
        sub_1000180EC(v591, &qword_100CA6618);
        sub_1000180EC(v590, &qword_100CA6620);
        sub_1000180EC(v589, &qword_100CA6628);
        sub_1000180EC(v588, &qword_100CA6630);
        sub_1000180EC(v587, &qword_100CA6638);
        sub_1000180EC(v586, &qword_100CA6640);
        (*(v558 + 8))(v1499, v1555);
      }

      else
      {
        sub_100004B40();
        sub_1000113EC();
        sub_1007D9BA0();
        v1049 = sub_100049D00();
        sub_10001B350(v1049, v1050, v1051, v1565);
        v1052 = sub_100003BCC(&v1572);
        sub_10001B350(v1052, v1053, v1054, v1566);
        v1055 = sub_100003BCC(&v1571);
        sub_10001B350(v1055, v1056, v1057, v1563);
        sub_10001F850();
        sub_1000131DC();
        sub_1007D9B48();
        v1058 = v1523;
        sub_100003934();
        sub_10001B350(v1059, v1060, v1061, v1558);
        v1062 = sub_100020EE4(v1467);
        sub_10001B350(v1062, v1063, v1064, v1556);
        v1065 = sub_1000E3254();
        v1066(v1065);
        v1067 = sub_10000FEF4();
        sub_10001B350(v1067, v1068, v1069, v541);
        v1070 = v1524;
        sub_10036871C();
        sub_1000180EC(v339, &qword_100CA65D8);
        sub_1000180EC(v541, &qword_100CB0250);
        sub_10000E7B0();
        sub_10001B350(v1071, v1072, v1073, v543);
        v1074 = sub_100020EE4(&v1574);
        sub_1000888F0(v1074, v1075, v1076);
        v1078 = *(v1077 - 256);
        sub_1000C8850();
        sub_10001B350(v1079, v1080, v1081, v1082);
        sub_100171230();
        sub_1000519D4();
        sub_10081B470();
        sub_1000180EC(v1078, &qword_100CA65F0);
        sub_1000180EC(v541, &qword_100CA65F8);
        sub_1000180EC(v1070, &qword_100CA6600);
        sub_1000180EC(v1058, &qword_100CA6608);
        sub_10001CDA4();
        sub_1000B0004(v542, v1083);
        sub_10000E7B0();
        sub_10001B350(v1084, v1085, v1086, v1567);
        v1087 = v1554;
        v1088 = sub_100016A04();
        sub_10001B350(v1088, v1089, v1090, v1557);
        sub_10006A8E0();
        v1354 = v543;
        v1355 = v1087;
        v1091 = sub_100052768();
        v1093 = *(v1092 - 256);
        v1094 = v1551;
        v1095 = v1552;
        v1096 = v1553;
        v1097 = v1547;
        v1098 = v540;
        v1099 = v1546;
        sub_1000D2C20(v1091, v1100, v1093, v1551, v1552, v1553, v1547, v1546, v1354, v1355, v1356, v1357, v1358, v1359, v1360, v1361, v1362, v1363, v1364);
        sub_1000378A4();
        sub_1000180EC(v1087, &qword_100CA65E8);
        sub_1000180EC(v543, &qword_100CA6610);
        sub_1000180EC(v1099, &qword_100CA6618);
        sub_1000180EC(v1097, &qword_100CA6620);
        sub_1000180EC(v1096, &qword_100CA6628);
        sub_1000180EC(v1095, &qword_100CA6630);
        sub_1000180EC(v1094, &qword_100CA6638);
        sub_1000180EC(v1093, &qword_100CA6640);
        sub_100023260();
        sub_1000B0004(v1433, v1101);
        (*(v1098 + 8))(v1499, v1555);
      }

      return v349;
    case 7u:
      swift_storeEnumTagMultiPayload();
      v477 = v344;
      v478 = 0xE000000000000000;
LABEL_284:
      v349 = sub_1007D76EC(v477, 0, v478, v1570);
LABEL_285:
      sub_100011840();
      v927 = v344;
      goto LABEL_286;
    case 8u:
      sub_10001F850();
      v349 = v1570;
      sub_1007D9B48();
      v628 = *v327;
      v629 = v1567;
      if (*(v327 + v1567[9] + 8) == 1)
      {
        v630 = objc_opt_self();

        v631 = [v630 currentDevice];
        [v631 userInterfaceIdiom];

        LODWORD(v631) = *(v327 + *(v629 + 28));
        sub_10001CDA4();
        sub_1000B0004(v327, v632);
        v355 = v631 == 1;
        v634 = v1565;
        v633 = v1566;
        v635 = v1564;
        if (v355)
        {
          goto LABEL_113;
        }
      }

      else
      {

        sub_10001CDA4();
        sub_1000B0004(v327, v1150);
        v634 = v1565;
        v633 = v1566;
        v635 = v1564;
      }

      v1151 = sub_100003BCC(v1456);
      sub_10001B350(v1151, v1152, v1153, v1560);
      v1154 = sub_100003BCC(&v1457);
      sub_10001B350(v1154, v1155, v1156, v635);
      v1157 = sub_100003BCC(&v1458);
      sub_10001B350(v1157, v1158, v1159, v1562);
      v1160 = sub_100003BCC(v1459);
      sub_10001B350(v1160, v1161, v1162, v634);
      v1163 = sub_100003BCC(&v1460);
      sub_10001B350(v1163, v1164, v1165, v633);
      v1166 = sub_100003BCC(v1461);
      sub_10001B350(v1166, v1167, v1168, v1563);
      sub_10001F850();
      sub_1007D9B48();
      v1169 = *(v628 + 16);
      LODWORD(v1563) = *(v628 + 24);
      v1170 = *(v628 + 25);
      v1171 = *(v628 + 26);
      v1172 = *(v628 + 32);
      v1173 = *(v628 + 40);
      v1564 = v1169;
      v1565 = v1172;
      v1175 = *(v628 + 48);
      v1174 = *(v628 + 56);
      v1176 = v628;
      v1177 = *(v628 + 72);
      v1178 = *(v1176 + 80);
      v1179 = *(v1176 + 88);
      v1180 = *(v1176 + 89);
      v1568 = v1176;
      v1181 = *(v1176 + 27);
      type metadata accessor for ListViewState._Storage();
      swift_allocObject();
      v1566 = v1178;
      v1182 = sub_100042DA8(v1564, v1563, v1170, v1171, v1181, v1565, v1173, v1175, v1174, 0, v1177, v1178, v1179, v1180);
      sub_100003934();
      v1183 = v1558;
      sub_10001B350(v1184, v1185, v1186, v1558);
      v1187 = sub_100003BCC(v1462);
      v1188 = v1569;
      sub_10001B350(v1187, v1189, v1190, v1569);
      v1191 = sub_100003BCC(v1464);
      sub_10001B350(v1191, v1192, v1193, v1561);
      v1194 = sub_100003BCC(v1465);
      v1195 = v1559;
      sub_10001B350(v1194, v1196, v1197, v1559);
      sub_1000BAF48();
      sub_10000554C(v1178);
      v1565 = v1182;
      if (v355)
      {
        v1201 = v1567;
        sub_100019F48();
        sub_100087FF4(v1198);
        sub_1007D9B48();
        v1199 = sub_100024D10(v1178, 1, v1183);

        v1202 = v1371;
        v1203 = v1370;
        if (v1199 != 1)
        {
          sub_1000180EC(v1178, &qword_100CA6608);
        }
      }

      else
      {
        sub_1000067FC();
        sub_1007D9BA0();

        v1201 = v1567;
        v1202 = v1371;
        v1203 = v1370;
      }

      v1204 = v1442;
      LODWORD(v1566) = *(v1442 + v1201[6]);
      v1205 = sub_1000B010C();
      sub_1000180EC(v1439, &qword_100CA6608);
      sub_100051BBC();
      v1206 = sub_100016298();
      sub_1000038B4(v1206, v1207, v1188);
      v349 = v1195;
      if (v355)
      {
        sub_100095588();
        v1208 = sub_100016298();
        sub_1000038B4(v1208, v1209, v1188);
        if (!v355)
        {
          sub_1000180EC(v1203, &qword_100CA6600);
        }
      }

      else
      {
        sub_100004B40();
        sub_100021424();
        sub_1007D9BA0();
        sub_10000E7B0();
        sub_10001B350(v1210, v1211, v1212, v1188);
      }

      sub_1000C893C(v1464);
      sub_100051BBC();
      sub_100003BDC(v1202);
      v1213 = v1554;
      if (v355)
      {
        sub_100075000();
        sub_1007D9B48();
        sub_100003BDC(v1202);
        v1214 = v1565;
        if (!v355)
        {
          sub_1000180EC(v1202, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100014EF0();
        sub_1007D9BA0();
        v1214 = v1565;
      }

      sub_100020FE8();
      sub_100051BBC();
      if (sub_100024D10(v1202, 1, v1195) == 1)
      {
        sub_100028B60();
        sub_1007D9B48();
        sub_1000038B4(v1202, 1, v1195);
        if (!v355)
        {
          sub_1000180EC(v1202, &qword_100CA65F0);
        }
      }

      else
      {
        sub_100008F58();
        sub_1007D9BA0();
      }

      v1215 = *(v1204 + v1201[11]);
      sub_10001CDA4();
      sub_1000B0004(v1204, v1216);
      v1217 = v1369;
      *v1369 = v1214;
      sub_1000067FC();
      sub_1007D9BA0();
      *(v1217 + v1201[6]) = v1566;
      *(v1217 + v1201[7]) = v1205 & 1;
      sub_100051BBC();
      sub_100014EF0();
      sub_1007D9BA0();
      sub_100008F58();
      sub_1007D9BA0();

      *(v1217 + v1201[11]) = v1215;
      v1218 = sub_10000FEF4();
      sub_10001B350(v1218, v1219, v1220, v1201);
      sub_100003934();
      sub_10001B350(v1221, v1222, v1223, v1557);
      sub_10006A8E0();
      v1354 = v1217;
      v1355 = v1213;
      v1224 = sub_100088338();
      v817 = v1434;
      v1225 = v1435;
      v1226 = v1436;
      v1227 = v1437;
      v1228 = v1438;
      v1229 = v1440;
      sub_1000D2C20(v1224, v1230, v1434, v1435, v1436, v1437, v1438, v1440, v1354, v1355, v1356, v1357, v1358, v1359, v1360, v1361, v1362, v1363, v1364);
      sub_1000378A4();

      sub_1000180EC(v1213, &qword_100CA65E8);
      sub_1000180EC(v1217, &qword_100CA6610);
      sub_1000180EC(v1229, &qword_100CA6618);
      sub_1000180EC(v1228, &qword_100CA6620);
      sub_1000180EC(v1227, &qword_100CA6628);
      sub_1000180EC(v1226, &qword_100CA6630);
      v1048 = v1225;
LABEL_302:
      sub_1000180EC(v1048, &qword_100CA6638);
      v1231 = v817;
      goto LABEL_306;
    case 9u:
      v426 = &_s7SwiftUI23_LazyLayout_Subviews_V1V0E8IteratorVMa_ptr_0;
      sub_10001F850();
      v349 = v1570;
      sub_1007D9B48();
      v427 = *v319;
      v428 = v1567;
      if (*(v319 + v1567[9] + 8) == 1)
      {
        v429 = objc_opt_self();

        v430 = [v429 currentDevice];
        [v430 userInterfaceIdiom];

        v426 = *(v319 + *(v428 + 28));
        sub_10001CDA4();
        sub_1000B0004(v319, v431);
        v433 = v1565;
        v432 = v1566;
        v434 = v1569;
        if (v426 == 1)
        {
          goto LABEL_113;
        }
      }

      else
      {

        sub_10001CDA4();
        sub_1000B0004(v319, v828);
        v433 = v1565;
        v432 = v1566;
        v434 = v1569;
      }

      v829 = sub_100049D00();
      sub_10001B350(v829, v830, v831, v433);
      v832 = sub_100071608(&v1572);
      sub_10001B350(v832, v833, v834, v432);
      v835 = sub_1000B9A6C(&v1571);
      sub_10001B350(v835, v836, v837, v1563);
      sub_10001F850();
      sub_1000113EC();
      sub_1007D9B48();
      sub_1000519D4();
      sub_100615B60(v838, v839, v840, v841, 3, 0, 0, 0, 1, 0, 0, 0, 2, 2, v427);
      v842 = v1523;
      v843 = sub_100016A04();
      sub_10001B350(v843, v844, v845, v1558);
      v1568 = v427;
      v846 = v1524;
      sub_100003934();
      sub_10001B350(v847, v848, v849, v434);
      v850 = sub_100020FBC(&v1574);
      sub_1000888F0(v850, v851, v852);
      v854 = *(v853 - 256);
      sub_1000C8850();
      sub_10001B350(v855, v856, v857, v858);
      v859 = v1522;
      sub_1000884B0();
      sub_10081B470();

      sub_1000180EC(v854, &qword_100CA65F0);
      sub_1000180EC(v433, &qword_100CA65F8);
      sub_1000180EC(v846, &qword_100CA6600);
      sub_1000180EC(v842, &qword_100CA6608);
      sub_1000B0004(v426, type metadata accessor for ViewState);
      v860 = v1525;
      sub_10081C1F4(v1525);
      sub_1000B0004(v859, type metadata accessor for ViewState);
      sub_10000E7B0();
      sub_10001B350(v861, v862, v863, v1567);
      v864 = v1554;
      v865 = v1557;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v866, v867, v868, v865);
      sub_1000201D4();
      v869 = sub_100052768();
      v871 = *(v870 - 256);
      v872 = v1551;
      v873 = v1552;
      v874 = v1553;
      sub_1000D2C20(v869, v875, v871, v1551, v1552, v1553, &MainInitialStateProvider, v428, v860, v864, v1341, v1342, v1343, v1344, v1346, v1348, v1350, v1352, v349);
      sub_1000378A4();

      sub_1000180EC(v864, &qword_100CA65E8);
      sub_1000180EC(v860, &qword_100CA6610);
      sub_1000180EC(v428, &qword_100CA6618);
      sub_1000180EC(&MainInitialStateProvider, &qword_100CA6620);
      sub_1000180EC(v874, &qword_100CA6628);
      sub_1000180EC(v873, &qword_100CA6630);
      v876 = v872;
      goto LABEL_305;
    case 0xAu:
      v593 = v1430;
      v594 = v1570;
      sub_1007D95D8(v1570, v1430);
      v595 = sub_100003BCC(v1473);
      sub_10001B350(v595, v596, v597, v1560);
      v598 = sub_100003BCC(v1481);
      sub_10001B350(v598, v599, v600, v1564);
      v601 = sub_100003BCC(v1488);
      sub_10001B350(v601, v602, v603, v1562);
      v604 = sub_100003BCC(v1496);
      sub_10001B350(v604, v605, v606, v1565);
      v607 = sub_100003BCC(v1502);
      sub_10001B350(v607, v608, v609, v1566);
      v610 = sub_100003BCC(&v1509);
      sub_1000C8F88(v610, v611, v612);
      sub_10001F850();
      v1556 = v613;
      sub_1000325C0();
      sub_1007D9B48();
      v614 = sub_100020EE4(v1494);
      sub_1000B7C18(v614, v615, v616);
      sub_100020FE8();
      sub_1007D9B48();
      v617 = sub_10000FEF4();
      sub_10001B350(v617, v618, v619, v1569);
      v620 = v1407;
      sub_100003934();
      sub_10001B350(v621, v622, v623, v1561);
      v624 = sub_100003BCC(&v1514);
      sub_10001B350(v624, v625, v626, v1559);
      v627 = *v348;
      sub_1000BAF48();
      sub_100003A40(v328);
      if (v355)
      {
        v1102 = v1567;
        sub_100019F48();
        sub_1007D9B48();
        sub_1000D4314();

        v1103 = v1425;
        v1104 = v1400;
        if (v330 != 1)
        {
          sub_1000180EC(v328, &qword_100CA6608);
        }
      }

      else
      {
        sub_1000067FC();
        sub_1007D9BA0();

        v1102 = v1567;
        v1103 = v1425;
        v1104 = v1400;
      }

      v1105 = *(v1545 + v1102[6]);
      LODWORD(v1568) = sub_1000B010C();
      sub_1000180EC(v1467[0], &qword_100CA6608);
      sub_100023260();
      sub_1000B0004(v593, v1106);
      sub_100051BBC();
      v1107 = sub_1000201BC();
      v1108 = v1569;
      sub_1000038B4(v1107, v1109, v1569);
      if (v355)
      {
        sub_100095588();
        v1110 = sub_1000201BC();
        sub_1000038B4(v1110, v1111, v1108);
        if (!v355)
        {
          sub_1000180EC(v1104, &qword_100CA6600);
        }
      }

      else
      {
        sub_100004B40();
        sub_100037814();
        sub_1007D9BA0();
        sub_10000E7B0();
        sub_10001B350(v1112, v1113, v1114, v1108);
      }

      sub_1000519E0();
      sub_100051BBC();
      v1115 = sub_100007FC4();
      v1116 = v1561;
      sub_1000038B4(v1115, v1117, v1561);
      if (v355)
      {
        sub_100075000();
        sub_100087FF4(v1118);
        sub_1007D9B48();
        v1119 = sub_100007FC4();
        sub_1000038B4(v1119, v1120, v1116);
        if (!v355)
        {
          sub_1000180EC(v620, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100014EF0();
        sub_1007D9BA0();
      }

      sub_100021424();
      sub_100051BBC();
      sub_100003BFC(v1116);
      if (v355)
      {
        sub_100028B60();
        sub_100087FF4(v1121);
        sub_1007D9B48();
        sub_100003BFC(v1116);
        v1122 = v1391;
        v1123 = v1568;
        if (!v355)
        {
          sub_1000180EC(v1116, &qword_100CA65F0);
        }
      }

      else
      {
        sub_100008F58();
        sub_1007D9BA0();
        v1122 = v1391;
        v1123 = v1568;
      }

      v1124 = *(v1545 + v1102[11]);
      sub_10001CDA4();
      sub_1000B0004(v1125, v1126);
      v1127 = v1415;
      *v1415 = v627;
      sub_1000067FC();
      sub_1007D9BA0();
      *(v1127 + v1102[6]) = v1105;
      *(v1127 + v1102[7]) = v1123 & 1;
      sub_100051BBC();
      sub_100014EF0();
      sub_1007D9BA0();
      sub_100008F58();
      sub_1007D9BA0();
      *(v1127 + v1102[11]) = v1124;
      sub_10000E7B0();
      sub_10001B350(v1128, v1129, v1130, v1102);
      v1131 = v1428;
      sub_100003934();
      sub_10001B350(v1132, v1133, v1134, v1557);
      sub_10004EAA8();
      sub_1000325C0();
      sub_1007D9B48();
      sub_1000113EC();
      sub_100051BBC();
      sub_10000554C(v1131);
      if (v355)
      {
        sub_1000180EC(v1131, &qword_100CA65E8);
      }

      else
      {
        sub_1000253DC();
        sub_1000B0004(v1103, v1135);
        sub_100010BDC();
        sub_1007D9BA0();
      }

      sub_1001721F4();
      v1136 = v1378;
      sub_100010BDC();
      sub_1007D9BA0();
      v1137 = *(v594 + 16);
      LODWORD(v1568) = *(v594 + 24);
      sub_1000325C0();
      sub_100051BBC();
      sub_100005404(v1103);
      v1569 = v1137;
      if (v355)
      {
        sub_10003A34C();
        sub_1007D9B48();
        v1138 = sub_100024D10(v1103, 1, v1105);

        if (v1138 != 1)
        {
          sub_1000180EC(v1103, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000300CC();
        sub_1007D9BA0();
      }

      sub_1000C893C(v1481);
      sub_100051BBC();
      sub_100003BFC(v1136);
      v1139 = v1122;
      if (v355)
      {
        sub_10002014C();
        sub_100031F70();
        sub_1007D9B48();
        sub_100003BFC(v1136);
        v1140 = v1408;
        v1141 = v1403;
        v1142 = v1382;
        if (!v355)
        {
          sub_1000180EC(v1136, &qword_100CA6638);
        }
      }

      else
      {
        sub_100024A5C();
        sub_1007D9BA0();
        v1140 = v1408;
        v1141 = v1403;
        v1142 = v1382;
      }

      sub_100051BBC();
      sub_100003A40(v1142);
      if (v355)
      {
        sub_100018744();
        sub_1007D9B48();
        sub_100003A40(v1142);
        v1143 = v1416;
        if (!v355)
        {
          sub_1000180EC(v1142, &qword_100CA6630);
        }
      }

      else
      {
        sub_10003181C();
        sub_1007D9BA0();
        v1143 = v1416;
      }

      sub_1000870F8(v1496);
      sub_100051BBC();
      v1144 = sub_100007FC4();
      v1145 = v1565;
      sub_1000038B4(v1144, v1146, v1565);
      if (v355)
      {
        sub_100052138();
        sub_1007D9B48();
        v1147 = sub_100007FC4();
        sub_1000038B4(v1147, v1148, v1145);
        if (!v355)
        {
          sub_1000180EC(v1139, &qword_100CA6628);
        }
      }

      else
      {
        sub_100037D68();
        sub_1007D9BA0();
      }

      sub_100030224(v1502);
      sub_100051BBC();
      sub_100003BDC(v1141);
      if (v355)
      {
        sub_10000EDC0();
        sub_1007D9B48();
        sub_100003BDC(v1141);
        if (!v355)
        {
          sub_1000180EC(v1141, &qword_100CA6620);
        }
      }

      else
      {
        sub_10002CAB4();
        sub_1007D9BA0();
      }

      sub_1000436AC(&v1509);
      sub_100051BBC();
      sub_10000554C(v1140);
      if (v355)
      {
        sub_100020B80();
        sub_1007D9B48();
        sub_10000554C(v1140);
        if (!v355)
        {
          sub_1000180EC(v1140, &qword_100CA6618);
        }
      }

      else
      {
        sub_10003C81C();
        sub_1007D9BA0();
      }

      sub_100051BBC();
      sub_1000868B8();
      if (v355)
      {
        sub_10001F850();
        sub_1007D9B48();
        sub_1000868B8();
        if (!v355)
        {
          sub_1000180EC(v1143, &qword_100CA6610);
        }
      }

      else
      {
        sub_100017DF4();
        sub_1007D9BA0();
      }

      sub_100010BDC();
      sub_1000113EC();
      sub_1007D9BA0();
      sub_100087240();
      sub_100021DD8();
      sub_100087104();
      sub_100003B6C();
      v741 = sub_100030540();
      v742 = v1568;
      v743 = v1506;
      v744 = v1507;
      v745 = v1509;
      v746 = v1512[0];
      v747 = v1515;
      v748 = &v1542;
      goto LABEL_276;
    case 0xBu:
      sub_10004EAA8();
      v349 = v1570;
      sub_100020FE8();
      sub_1007D9B48();
      sub_100010BDC();
      sub_100020FE8();
      sub_1007D9BA0();
      v363 = v1557;
      v364 = 1 << swift_getEnumCaseMultiPayload();
      v365 = v1569;
      v366 = v1402;
      if ((v364 & 0x3D) != 0)
      {
        v362 = type metadata accessor for ModalViewState;
        goto LABEL_11;
      }

      if ((v364 & 0x82) != 0)
      {
        goto LABEL_288;
      }

      v1283 = sub_100003BCC(&v1383);
      sub_10001B350(v1283, v1284, v1285, v1560);
      v1286 = sub_100003BCC(v1384);
      sub_10001B350(v1286, v1287, v1288, v1564);
      v1289 = sub_100003BCC(v1385);
      sub_10001B350(v1289, v1290, v1291, v1562);
      v1292 = sub_100003BCC(v1386);
      sub_10001B350(v1292, v1293, v1294, v1565);
      v1295 = sub_100003BCC(v1387);
      sub_10001B350(v1295, v1296, v1297, v1566);
      v1298 = sub_100003BCC(&v1388);
      sub_1000C8F88(v1298, v1299, v1300);
      sub_10001F850();
      sub_1007D9B48();
      v1301 = sub_100003BCC(&v1389);
      sub_100042790(v1301, v1302, v1303);
      sub_1000113EC();
      sub_100095588();
      sub_100003BFC(v330);
      if (v355)
      {
        sub_1000180EC(v330, &qword_100CA6600);
        v1312 = 1;
      }

      else
      {
        v1304 = sub_100020FBC(v1467);
        sub_10001B350(v1304, v1305, v1306, v1556);
        v1307 = v1441;
        v1308 = sub_100016A04();
        sub_10001B350(v1308, v1309, v1310, v1555);
        sub_1000E15A8();
        sub_10036871C();
        sub_1000180EC(v1307, &qword_100CA65D8);
        sub_1000180EC(v327, &qword_100CB0250);
        sub_100023260();
        sub_1000B0004(v330, v1311);
        v1312 = 0;
      }

      v1313 = v1559;
      v1314 = v1554;
      v1315 = v1549;
      sub_10001B350(v366, v1312, 1, v365);
      v1316 = sub_100071608(&v1574);
      sub_10001B350(v1316, v1317, v1318, v1561);
      sub_100003934();
      sub_10001B350(v1319, v1320, v1321, v1313);
      v1322 = v1355;
      v1323 = v1364;
      sub_1000884B0();
      v1324 = v1357;
      sub_10081B470();
      sub_1000180EC(v1315, &qword_100CA65F0);
      sub_1000180EC(v365, &qword_100CA65F8);
      sub_1000180EC(v366, &qword_100CA6600);
      sub_1000180EC(v1323, &qword_100CA6608);
      sub_10001CDA4();
      sub_1000B0004(v1324, v1325);
      sub_10000E7B0();
      sub_10001B350(v1326, v1327, v1328, v319);
      sub_100003934();
      sub_10001B350(v1329, v1330, v1331, v363);
      sub_1000201D4();
      v1332 = sub_100088338();
      v1333 = v1358;
      v1334 = v1359;
      v1335 = v1360;
      v1336 = v1361;
      v1337 = v1362;
      v1338 = v1363;
      sub_1000D2C20(v1332, v1339, v1358, v1359, v1360, v1361, v1362, v1363, v1322, v1314, v1341, v1342, v1343, v1344, v1345, v1347, v1349, v1351, v349);
      sub_1000378A4();
      sub_1000180EC(v1314, &qword_100CA65E8);
      sub_1000180EC(v1322, &qword_100CA6610);
      sub_1000180EC(v1338, &qword_100CA6618);
      sub_1000180EC(v1337, &qword_100CA6620);
      sub_1000180EC(v1336, &qword_100CA6628);
      sub_1000180EC(v1335, &qword_100CA6630);
      sub_1000180EC(v1334, &qword_100CA6638);
      v1231 = v1333;
      goto LABEL_306;
    case 0xCu:
      v401 = sub_100003BCC(v1470);
      sub_10001B350(v401, v402, v403, v1560);
      v404 = sub_100003BCC(v1472);
      sub_10001B350(v404, v405, v406, v1564);
      v407 = sub_100003BCC(v1475);
      sub_10001B350(v407, v408, v409, v1562);
      v410 = sub_100003BCC(v1479);
      sub_10001B350(v410, v411, v412, v1565);
      v413 = sub_100003BCC(v1484);
      sub_10001B350(v413, v414, v415, v1566);
      v416 = sub_100003BCC(v1489);
      sub_1000C8F88(v416, v417, v418);
      v419 = v1570;
      v421 = v1570 + v420;
      sub_10001F850();
      sub_1007D9B48();
      v422 = sub_1000B9A6C(&v1412);
      sub_100042790(v422, v423, v424);
      sub_1000113EC();
      sub_100095588();
      v425 = v1569;
      sub_100036E54(v330, 1);
      if (v355)
      {
        sub_1000180EC(v330, &qword_100CA6600);
        sub_10003BBCC();
        v349 = v1401;
      }

      else
      {
        v793 = sub_100020FBC(v1467);
        sub_10001B350(v793, v794, v795, v1556);
        v421 = v1441;
        v796 = sub_100016A04();
        sub_10001B350(v796, v797, v798, v1555);
        v349 = v1401;
        sub_1000E15A8();
        sub_10036871C();
        sub_1000180EC(v421, &qword_100CA65D8);
        sub_1000180EC(v327, &qword_100CB0250);
        sub_100023260();
        sub_1000B0004(v330, v799);
        sub_10003BBCC();
      }

      sub_10001B350(v349, v800, 1, v425);
      sub_100003934();
      sub_10001B350(v801, v802, v803, v327);
      v804 = sub_100071608(&v1573);
      sub_10001B350(v804, v805, v806, v330);
      sub_100013370();
      v807 = v1444;
      sub_10081B470();
      sub_1000180EC(v425, &qword_100CA65F0);
      sub_1000180EC(v348, &qword_100CA65F8);
      sub_1000180EC(v349, &qword_100CA6600);
      sub_1000180EC(v344, &qword_100CA6608);
      sub_10001CDA4();
      sub_1000B0004(v807, v808);
      sub_10000E7B0();
      sub_10001B350(v809, v810, v811, v319);
      sub_100003934();
      sub_10001B350(v812, v813, v814, v421);
      v1353 = v419;
      sub_1000201D4();
      v1340 = v327;
      v815 = sub_100088338();
      v817 = v1447;
      v818 = v1447;
      v819 = v1449;
      v820 = v1449;
      v821 = v1451;
      v822 = v1451;
      v823 = v1454;
      v824 = v1454;
      v825 = v1458;
      v826 = v1458;
      v827 = v1489;
      goto LABEL_231;
    case 0xDu:
      v515 = sub_100003BCC(v1469);
      sub_10001B350(v515, v516, v517, v1560);
      v518 = sub_100003BCC(&v1471);
      sub_10001B350(v518, v519, v520, v1564);
      v521 = sub_100003BCC(v1474);
      sub_10001B350(v521, v522, v523, v1562);
      v524 = sub_100003BCC(v1478);
      sub_10001B350(v524, v525, v526, v1565);
      v527 = sub_100003BCC(v1483);
      sub_10001B350(v527, v528, v529, v1566);
      v530 = sub_100003BCC(v1487);
      sub_1000C8F88(v530, v531, v532);
      v533 = v1570;
      v535 = v1570 + v534;
      sub_10001F850();
      sub_1007D9B48();
      v536 = sub_1000B9A6C(v1411);
      sub_100042790(v536, v537, v538);
      sub_1000113EC();
      sub_100095588();
      v539 = v1569;
      sub_100036E54(v330, 1);
      if (v355)
      {
        sub_1000180EC(v330, &qword_100CA6600);
        sub_10003BBCC();
        v349 = v1398;
      }

      else
      {
        v1025 = sub_100020FBC(v1467);
        sub_10001B350(v1025, v1026, v1027, v1556);
        v535 = v1441;
        v1028 = sub_100016A04();
        sub_10001B350(v1028, v1029, v1030, v1555);
        v349 = v1398;
        sub_1000E15A8();
        sub_10036871C();
        sub_1000180EC(v535, &qword_100CA65D8);
        sub_1000180EC(v327, &qword_100CB0250);
        sub_100023260();
        sub_1000B0004(v330, v1031);
        sub_10003BBCC();
      }

      sub_10001B350(v349, v1032, 1, v539);
      sub_100003934();
      sub_10001B350(v1033, v1034, v1035, v327);
      v1036 = sub_100071608(&v1573);
      sub_10001B350(v1036, v1037, v1038, v330);
      sub_100013370();
      v1039 = v1443;
      sub_10081B470();
      sub_1000180EC(v539, &qword_100CA65F0);
      sub_1000180EC(v348, &qword_100CA65F8);
      sub_1000180EC(v349, &qword_100CA6600);
      sub_1000180EC(v344, &qword_100CA6608);
      sub_10001CDA4();
      sub_1000B0004(v1039, v1040);
      sub_10000E7B0();
      sub_10001B350(v1041, v1042, v1043, v319);
      sub_100003934();
      sub_10001B350(v1044, v1045, v1046, v535);
      v1353 = v533;
      sub_1000201D4();
      v1340 = v327;
      v815 = sub_100088338();
      v817 = v1446;
      v818 = v1446;
      v819 = v1448;
      v820 = v1448;
      v821 = v1450;
      v822 = v1450;
      v823 = v1453;
      v824 = v1453;
      v825 = v1457;
      v826 = v1457;
      v827 = v1487;
LABEL_231:
      v1047 = *(v827 - 32);
      sub_1000D2C20(v815, v816, v818, v820, v822, v824, v826, v1047, v1340, &OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, v1341, v1342, v1343, v1344, v1345, v1347, v1349, v1351, v1353);
      sub_1000378A4();
      sub_1000180EC(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_view, &qword_100CA65E8);
      sub_1000180EC(v327, &qword_100CA6610);
      sub_1000180EC(v1047, &qword_100CA6618);
      sub_1000180EC(v825, &qword_100CA6620);
      sub_1000180EC(v823, &qword_100CA6628);
      sub_1000180EC(v821, &qword_100CA6630);
      v1048 = v819;
      goto LABEL_302;
    case 0xEu:
      sub_10001F850();
      v349 = v1570;
      sub_1000113EC();
      sub_1007D9B48();
      v360 = v1567;
      sub_100019F48();
      sub_100020FE8();
      sub_1007D9B48();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_10001CDA4();
        sub_1000B0004(v330, v361);
        v362 = type metadata accessor for ViewState.SecondaryViewState;
LABEL_11:
        sub_1000B0004(v339, v362);
        goto LABEL_288;
      }

      v749 = *v339;
      if (*(v330 + *(v360 + 36) + 8) == 1)
      {
        v328 = sub_1000B010C();
        sub_10001CDA4();
        sub_1000B0004(v330, v750);
        v752 = v1565;
        v751 = v1566;
        if ((v328 & 1) == 0)
        {
LABEL_113:

          goto LABEL_288;
        }
      }

      else
      {
        sub_10001CDA4();
        sub_1000B0004(v330, v1232);
        v752 = v1565;
        v751 = v1566;
      }

      v1233 = sub_100049D00();
      sub_10001B350(v1233, v1234, v1235, v752);
      v1236 = sub_100003BCC(&v1572);
      sub_10001B350(v1236, v1237, v1238, v751);
      v1239 = sub_1000B9A6C(&v1571);
      sub_10001B350(v1239, v1240, v1241, v1563);
      sub_10001F850();
      v1242 = v1522;
      sub_1007D9B48();
      type metadata accessor for LocationViewerActiveLocationState();
      v1243 = sub_100020EE4(v1390);
      sub_10001B350(v1243, v1244, v1245, v1246);
      v1247 = sub_10089E844(v328, 3, 1, 4, 2, 3, v749);
      sub_1000180EC(v328, &qword_100CA65B8);
      v1568 = v749;
      v1248 = v1523;
      *v1523 = v1247;
      v1249 = v1558;
      swift_storeEnumTagMultiPayload();
      v1250 = sub_10000FEF4();
      sub_10001B350(v1250, v1251, v1252, v1249);
      v1253 = v1524;
      sub_100003934();
      sub_10001B350(v1254, v1255, v1256, v1569);
      v1257 = v1550;
      sub_100003934();
      sub_1000888F0(v1258, v1259, v1260);
      v1262 = sub_100020EE4(v1261);
      sub_10001B350(v1262, v1263, v1264, v1559);
      sub_100171230();
      sub_1000884B0();
      sub_10081B470();
      sub_1000180EC(v328, &qword_100CA65F0);
      sub_1000180EC(v1257, &qword_100CA65F8);
      sub_1000180EC(v1253, &qword_100CA6600);
      sub_1000180EC(v1248, &qword_100CA6608);
      sub_10001CDA4();
      sub_1000B0004(v1242, v1265);
      sub_10000E7B0();
      sub_10001B350(v1266, v1267, v1268, v360);
      v1269 = v1554;
      sub_100003934();
      sub_10001B350(v1270, v1271, v1272, v1557);
      sub_1000201D4();
      sub_100052768();
      v871 = *(v1273 - 256);
      sub_1000C908C();
      v1275 = *(v1274 - 256);
      sub_1000D2C20(v1276, v1277, v1278, v1279, v1280, v1281, v1275, v344, v752, v1269, v1341, v1342, v1343, v1344, v1345, v1347, v1349, v1351, v349);
      sub_1000378A4();

      sub_1000180EC(v1269, &qword_100CA65E8);
      sub_1000180EC(v752, &qword_100CA6610);
      sub_1000180EC(v344, &qword_100CA6618);
      sub_1000180EC(v1275, &qword_100CA6620);
      sub_1000180EC(v360, &qword_100CA6628);
      sub_1000180EC(v1257, &qword_100CA6630);
      v876 = v328;
LABEL_305:
      sub_1000180EC(v876, &qword_100CA6638);
      v1231 = v871;
LABEL_306:
      sub_1000180EC(v1231, &qword_100CA6640);
      break;
    case 0xFu:
      v349 = v1570;
      sub_1000113EC();
      sub_100095588();
      v441 = v1569;
      sub_100036E54(v330, 1);
      if (v355)
      {
        sub_1000180EC(v330, &qword_100CA6600);
LABEL_288:
      }

      else
      {
        sub_100004B40();
        sub_100042230();
        sub_1007D9BA0();
        v877 = sub_100049D00();
        sub_10001B350(v877, v878, v879, v1565);
        v880 = sub_100003BCC(&v1572);
        sub_10001B350(v880, v881, v882, v1566);
        v883 = sub_100003BCC(&v1571);
        sub_10001B350(v883, v884, v885, v1563);
        sub_10001F850();
        sub_100021424();
        sub_1007D9B48();
        v886 = sub_1000B9A6C(&v1553);
        sub_10001B350(v886, v887, v888, v1558);
        v890 = *v327;
        v889 = v327[1];
        sub_10000CEC0();
        v891 = v1524;
        sub_1007D9B48();
        v892 = *(v327 + *(v441 + 24));
        sub_100003934();
        sub_10001B350(v893, v894, v895, v1555);
        *v891 = v890;
        *(v891 + 1) = v889;
        v891[*(v441 + 24)] = v892;
        sub_10000E7B0();
        sub_10001B350(v896, v897, v898, v441);
        v899 = sub_100071608(&v1574);
        sub_1000888F0(v899, v900, v901);
        v903 = sub_100020EE4(v902);
        sub_10001B350(v903, v904, v905, v1559);

        v906 = v1525;
        sub_1000519D4();
        sub_10081B470();
        sub_1000180EC(v892, &qword_100CA65F0);
        sub_1000180EC(v441, &qword_100CA65F8);
        sub_1000180EC(v891, &qword_100CA6600);
        sub_1000180EC(v344, &qword_100CA6608);
        sub_10001CDA4();
        sub_1000B0004(v319, v907);
        sub_10000E7B0();
        sub_10001B350(v908, v909, v910, v1567);
        v911 = v1554;
        v912 = sub_100016A04();
        sub_10001B350(v912, v913, v914, v1557);
        sub_1000201D4();
        sub_100052768();
        v916 = *(v915 - 256);
        sub_1000C908C();
        v918 = *(v917 - 256);
        v919 = v1546;
        sub_1000D2C20(v920, v921, v922, v923, v924, v925, v918, v1546, v906, v911, v1341, v1342, v1343, v1344, v1345, v1347, v1349, v1351, v349);
        sub_1000378A4();
        sub_1000180EC(v911, &qword_100CA65E8);
        sub_1000180EC(v906, &qword_100CA6610);
        sub_1000180EC(v919, &qword_100CA6618);
        sub_1000180EC(v918, &qword_100CA6620);
        sub_1000180EC(v441, &qword_100CA6628);
        sub_1000180EC(v319, &qword_100CA6630);
        sub_1000180EC(v892, &qword_100CA6638);
        sub_1000180EC(v916, &qword_100CA6640);
        sub_100023260();
        v927 = v327;
LABEL_286:
        sub_1000B0004(v927, v926);
      }

      break;
    case 0x10u:
      v351 = (v1570 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
      sub_1000131DC();
      sub_100095588();
      v352 = sub_1000162A4();
      v353 = v1569;
      sub_1000038B4(v352, v354, v1569);
      if (v355)
      {
        v356 = v1539;
        swift_storeEnumTagMultiPayload();
        sub_100003934();
        v642 = v1555;
        sub_10001B350(v357, v358, v359, v1555);
        *v356 = 0;
        v356[1] = 0xE000000000000000;
        *(v356 + *(v353 + 24)) = 0;
        sub_10000554C(v334);
        v636 = v1562;
        v637 = v1563;
        v638 = v1565;
        v639 = v1566;
        v640 = v1564;
        v641 = v1560;
        v643 = v1432;
        if (!v355)
        {
          sub_1000180EC(v334, &qword_100CA6600);
        }
      }

      else
      {
        sub_100004B40();
        sub_1007D9BA0();
        v636 = v1562;
        v637 = v1563;
        v638 = v1565;
        v639 = v1566;
        v640 = v1564;
        v641 = v1560;
        v642 = v1555;
        v643 = v1432;
      }

      v644 = sub_100003BCC(v1485);
      sub_10001B350(v644, v645, v646, v641);
      v647 = sub_100003BCC(v1492);
      sub_10001B350(v647, v648, v649, v640);
      v650 = sub_100003BCC(&v1499);
      sub_10001B350(v650, v651, v652, v636);
      v653 = sub_100003BCC(v1505);
      sub_10001B350(v653, v654, v655, v638);
      v656 = sub_100003BCC(v1512);
      sub_10001B350(v656, v657, v658, v639);
      v659 = sub_100003BCC(&v1515);
      sub_10001B350(v659, v660, v661, v637);
      sub_10001F850();
      sub_100037814();
      sub_1007D9B48();
      v662 = sub_100003BCC(&v1559);
      v663 = v1558;
      sub_10001B350(v662, v664, v665, v1558);
      v666 = v1556;
      swift_storeEnumTagMultiPayload();
      v667 = sub_10000FEF4();
      sub_10001B350(v667, v668, v669, v666);
      sub_100003934();
      sub_10001B350(v670, v671, v672, v642);
      sub_1000113EC();
      sub_100051BBC();
      sub_100003BFC(v640);
      v1568 = v351;
      if (v355)
      {
        sub_10000CEC0();
        v674 = v1539;
        sub_1007D9B48();
        sub_100003BFC(v640);
        v673 = v1559;
        v675 = v1570;
        v676 = v1567;
        if (!v355)
        {
          sub_1000180EC(v640, &qword_100CB0250);
        }
      }

      else
      {
        sub_1000C8A84();
        sub_1007D9BA0();
        v673 = v1559;
        v674 = v1539;
        v675 = v1570;
        v676 = v1567;
      }

      v677 = *(v674 + *(v1569 + 24));
      sub_1000519E0();
      sub_100051BBC();
      v678 = sub_100007FC4();
      sub_1000038B4(v678, v679, v642);
      if (v355)
      {
        sub_100020FE8();
        sub_100095588();
        v680 = sub_100007FC4();
        sub_1000038B4(v680, v681, v642);
        if (!v355)
        {
          sub_1000180EC(v643, &qword_100CA65D8);
        }
      }

      else
      {
        v682 = sub_1000E3254();
        v683(v682);
        v684 = sub_10000FEF4();
        sub_10001B350(v684, v685, v686, v642);
      }

      v687 = v1482;
      *v1482 = 0;
      *(v687 + 8) = 0xE000000000000000;
      v688 = v1569;
      sub_1000C8A84();
      sub_1007D9BA0();
      *(v687 + *(v688 + 24)) = v677;
      sub_100051BBC();
      sub_10000E7B0();
      sub_10001B350(v689, v690, v691, v688);
      v692 = sub_100003BCC(v1516);
      sub_10001B350(v692, v693, v694, v1561);
      v695 = sub_100003BCC(v1517);
      sub_10001B350(v695, v696, v697, v673);
      v698 = *v639;
      sub_100021424();
      sub_100095588();
      sub_100005404(v687);
      if (v355)
      {
        sub_100019F48();
        sub_1007D9B48();
        v699 = sub_100016298();
        v701 = sub_100024D10(v699, v700, v663);

        if (v701 != 1)
        {
          sub_1000180EC(v687, &qword_100CA6608);
        }
      }

      else
      {
        sub_1000067FC();
        sub_1007D9BA0();
      }

      LODWORD(v1559) = *(v639 + v676[6]);
      v702 = sub_1000B010C();
      sub_1000180EC(v1529, &qword_100CA6608);
      sub_100023260();
      sub_1000B0004(v1539, v703);
      sub_100021424();
      sub_100051BBC();
      v704 = sub_100016298();
      v705 = v1569;
      sub_10001627C(v704, v706);
      if (v355)
      {
        sub_100095588();
        sub_100005404(v687);
        if (!v355)
        {
          sub_1000180EC(v687, &qword_100CA6600);
        }
      }

      else
      {
        sub_100004B40();
        sub_100037814();
        sub_1007D9BA0();
        sub_10000E7B0();
        sub_10001B350(v707, v708, v709, v705);
      }

      sub_100037814();
      sub_100051BBC();
      v710 = sub_1000201BC();
      sub_10001627C(v710, v711);
      if (v355)
      {
        sub_100075000();
        sub_100087FF4(v712);
        sub_1007D9B48();
        sub_100005404(v639);
        v713 = v1560;
        if (!v355)
        {
          sub_1000180EC(v639, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100014EF0();
        sub_1007D9BA0();
        v713 = v1560;
      }

      sub_100037814();
      sub_100051BBC();
      sub_100003BFC(v639);
      if (v355)
      {
        sub_100028B60();
        sub_100087FF4(v714);
        sub_1007D9B48();
        sub_100003BFC(v639);
        if (!v355)
        {
          sub_1000180EC(v639, &qword_100CA65F0);
        }
      }

      else
      {
        sub_100008F58();
        sub_1007D9BA0();
      }

      v715 = *(v1526 + v676[11]);
      sub_10001CDA4();
      sub_1000B0004(v716, v717);
      v718 = v1423;
      *v1423 = v698;
      sub_1000067FC();
      sub_1007D9BA0();
      *(v718 + v676[6]) = v1559;
      *(v718 + v676[7]) = v702 & 1;
      sub_100051BBC();
      sub_100014EF0();
      sub_1007D9BA0();
      sub_100008F58();
      sub_1007D9BA0();
      *(v718 + v676[11]) = v715;
      sub_10000E7B0();
      sub_10001B350(v719, v720, v721, v676);
      v722 = v1431;
      sub_100003934();
      sub_10001B350(v723, v724, v725, v1557);
      sub_10004EAA8();
      sub_100021424();
      sub_1007D9B48();
      sub_1000113EC();
      sub_100051BBC();
      sub_10000554C(v722);
      if (v355)
      {
        sub_1000180EC(v722, &qword_100CA65E8);
      }

      else
      {
        sub_1000253DC();
        sub_1000B0004(v687, v726);
        sub_100010BDC();
        sub_1007D9BA0();
      }

      v727 = v1394;
      v728 = v1389;
      v729 = v1380;
      sub_100010BDC();
      sub_1007D9BA0();
      v730 = *(v675 + 16);
      LODWORD(v1564) = *(v675 + 24);
      sub_1000870F8(v1485);
      sub_100051BBC();
      sub_100005404(v729);
      v1569 = v730;
      if (v355)
      {
        sub_10003A34C();
        sub_1007D9B48();
        v731 = sub_100007FC4();
        v733 = sub_100024D10(v731, v732, v713);

        v734 = v1422;
        if (v733 != 1)
        {
          sub_1000180EC(v729, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000300CC();
        sub_1007D9BA0();

        v734 = v1422;
      }

      sub_1000C893C(v1492);
      sub_100051BBC();
      sub_100003BFC(v728);
      if (v355)
      {
        sub_10002014C();
        sub_100031F70();
        sub_1007D9B48();
        sub_100003BFC(v728);
        v735 = v1414;
        v736 = v1406;
        if (!v355)
        {
          sub_1000180EC(v728, &qword_100CA6638);
        }
      }

      else
      {
        sub_100024A5C();
        sub_1007D9BA0();
        v735 = v1414;
        v736 = v1406;
      }

      sub_100051BBC();
      sub_100003A40(v727);
      if (v355)
      {
        sub_100018744();
        sub_1007D9B48();
        sub_100003A40(v727);
        v737 = v1424;
        if (!v355)
        {
          sub_1000180EC(v727, &qword_100CA6630);
        }
      }

      else
      {
        sub_10003181C();
        sub_1007D9BA0();
        v737 = v1424;
      }

      sub_100030224(v1505);
      sub_100051BBC();
      sub_10000554C(v736);
      if (v355)
      {
        sub_100052138();
        sub_1007D9B48();
        sub_10000554C(v736);
        if (!v355)
        {
          sub_1000180EC(v736, &qword_100CA6628);
        }
      }

      else
      {
        sub_100037D68();
        sub_1007D9BA0();
      }

      sub_100051BBC();
      v738 = sub_100016298();
      sub_100036E54(v738, v739);
      if (v355)
      {
        sub_10000EDC0();
        sub_1007D9B48();
        sub_100003BFC(v735);
        if (!v355)
        {
          sub_1000180EC(v735, &qword_100CA6620);
        }
      }

      else
      {
        sub_10002CAB4();
        sub_1007D9BA0();
      }

      sub_1000436AC(&v1515);
      sub_100051BBC();
      v740 = v1563;
      sub_1000038B4(v734, 1, v1563);
      if (v355)
      {
        sub_100020B80();
        sub_1007D9B48();
        sub_1000038B4(v734, 1, v740);
        if (!v355)
        {
          sub_1000180EC(v734, &qword_100CA6618);
        }
      }

      else
      {
        sub_10003C81C();
        sub_1007D9BA0();
      }

      sub_100051BBC();
      sub_1000868B8();
      if (v355)
      {
        sub_10001F850();
        sub_1007D9B48();
        sub_1000868B8();
        if (!v355)
        {
          sub_1000180EC(v737, &qword_100CA6610);
        }
      }

      else
      {
        sub_100017DF4();
        sub_1007D9BA0();
      }

      sub_100010BDC();
      sub_1000113EC();
      sub_1007D9BA0();
      sub_100087240();
      sub_100021DD8();
      sub_100087104();
      sub_100003B6C();
      v741 = sub_100030540();
      v742 = v1564;
      v743 = v1516[4];
      v744 = v1516[7];
      v745 = v1519;
      v746 = v1520;
      v747 = v1521;
      v748 = &v1551;
LABEL_276:
      sub_10003E038(v741, v742, v743, v744, v745, v746, v747, *(v748 - 32), v1354, v1355, v1356, v1357, v1358, v1359, v1360, v1361, v1362, v1363, v1364, v1365, v1366, v1367, v1368, v1369, v1370, v1371, v1372, v1373, v1374, v1375, v1376, v1377, v1378, v1379, v1380);
      v349 = v1149;

      return v349;
    default:
      (*(v330 + 32))(v334, v348, v328);
      (*(v330 + 16))(v344, v334, v328);
      swift_storeEnumTagMultiPayload();
      v349 = sub_1007D76EC(v344, 0, 0, v1570);
      sub_100011840();
      sub_1000B0004(v344, v350);
      (*(v330 + 8))(v334, v328);
      return v349;
  }

  return v349;
}

uint64_t sub_1007D76EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v225 = a2;
  v204 = a1;
  v244 = type metadata accessor for TimeState();
  __chkstk_darwin(v244);
  v250 = &v191 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NotificationsOptInState();
  __chkstk_darwin(v7);
  v249 = &v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = type metadata accessor for NotificationsState();
  __chkstk_darwin(v242);
  v248 = &v191 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for LocationsState();
  __chkstk_darwin(v241);
  v247 = &v191 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = type metadata accessor for EnvironmentState();
  __chkstk_darwin(v240);
  v246 = &v191 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for AppConfigurationState();
  __chkstk_darwin(v238);
  v245 = &v191 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for ModalViewState(0);
  v13 = __chkstk_darwin(v214);
  v223 = &v191 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v216 = &v191 - v16;
  __chkstk_darwin(v15);
  v243 = &v191 - v17;
  v18 = sub_10022C350(&qword_100CA65E8);
  v19 = __chkstk_darwin(v18 - 8);
  v213 = &v191 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v212 = &v191 - v21;
  v208 = type metadata accessor for WeatherMapPresentationState(0);
  __chkstk_darwin(v208);
  v210 = &v191 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v231);
  v234 = &v191 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v201 + 1) = type metadata accessor for ViewState.SecondaryViewState(0);
  __chkstk_darwin(*(&v201 + 1));
  v233 = &v191 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10022C350(&qword_100CA65F0);
  v26 = __chkstk_darwin(v25 - 8);
  v207 = &v191 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v230 = &v191 - v28;
  v29 = sub_10022C350(&qword_100CA65F8);
  v30 = __chkstk_darwin(v29 - 8);
  v205 = &v191 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v203 = &v191 - v32;
  v33 = sub_10022C350(&qword_100CA6608);
  v34 = __chkstk_darwin(v33 - 8);
  *&v201 = &v191 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v202 = &v191 - v36;
  v37 = sub_10022C350(&qword_100CA6610);
  v38 = __chkstk_darwin(v37 - 8);
  v221 = &v191 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v220 = &v191 - v40;
  v41 = sub_10022C350(&qword_100CA6618);
  v42 = __chkstk_darwin(v41 - 8);
  v219 = &v191 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v239 = &v191 - v44;
  v45 = sub_10022C350(&qword_100CA6620);
  v46 = __chkstk_darwin(v45 - 8);
  v217 = &v191 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v237 = &v191 - v48;
  v49 = sub_10022C350(&qword_100CA6628);
  v50 = __chkstk_darwin(v49 - 8);
  v215 = &v191 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v236 = &v191 - v52;
  v53 = sub_10022C350(&qword_100CA6630);
  v54 = __chkstk_darwin(v53 - 8);
  v211 = &v191 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v235 = &v191 - v56;
  v57 = sub_10022C350(&qword_100CA6638);
  v58 = __chkstk_darwin(v57 - 8);
  v209 = &v191 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v232 = &v191 - v60;
  v61 = sub_10022C350(&qword_100CA6640);
  v62 = __chkstk_darwin(v61 - 8);
  v206 = &v191 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v229 = &v191 - v64;
  v65 = sub_10022C350(&qword_100CA65D8);
  v66 = __chkstk_darwin(v65 - 8);
  v68 = &v191 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v251 = &v191 - v69;
  v70 = type metadata accessor for ViewState(0);
  v71 = __chkstk_darwin(v70);
  v218 = &v191 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __chkstk_darwin(v71);
  v253 = &v191 - v74;
  __chkstk_darwin(v73);
  v76 = (&v191 - v75);
  v77 = sub_10022C350(&qword_100CA6600);
  v78 = __chkstk_darwin(v77 - 8);
  v200 = &v191 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __chkstk_darwin(v78);
  v228 = &v191 - v81;
  v82 = __chkstk_darwin(v80);
  v227 = (&v191 - v83);
  v84 = __chkstk_darwin(v82);
  v226 = &v191 - v85;
  v86 = __chkstk_darwin(v84);
  v88 = &v191 - v87;
  __chkstk_darwin(v86);
  v90 = (&v191 - v89);
  v252 = v70;
  v222 = v68;
  if (a3)
  {
    v199 = a3;
  }

  else
  {
    sub_100095588();
    v91 = type metadata accessor for SearchViewState(0);
    if (sub_100024D10(v90, 1, v91) == 1)
    {
      sub_1000180EC(v90, &qword_100CA6600);
      v225 = 0;
      v199 = 0xE000000000000000;
    }

    else
    {
      v92 = v90[1];
      v225 = *v90;
      v199 = v92;

      sub_1000B0004(v90, type metadata accessor for SearchViewState);
    }
  }

  v224 = a4;
  v93 = a4 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  sub_1007D9B48();
  v94 = *v76;
  v95 = v252;
  if (*(v76 + v252[9] + 8) == 1)
  {
    v96 = v7;
    v97 = objc_opt_self();

    v98 = [v97 currentDevice];
    [v98 userInterfaceIdiom];

    LODWORD(v98) = *(v76 + v95[7]);
    sub_1000B0004(v76, type metadata accessor for ViewState);
    v99 = v241;
    v100 = v94;
    if (v98 == 1)
    {

      type metadata accessor for ListViewState._Storage();
      swift_allocObject();
      v100 = sub_100042DA8(0, 0, 1, 0, 0, 0, 0xE000000000000000, 0, 0, 0, 0, 0, 1, 0);
    }

    v7 = v96;
    v101 = v242;
    v102 = v238;
  }

  else
  {

    sub_1000B0004(v76, type metadata accessor for ViewState);
    v99 = v241;
    v101 = v242;
    v102 = v238;
    v100 = v94;
  }

  v103 = v226;
  sub_100095588();
  v104 = type metadata accessor for SearchViewState(0);
  if (sub_100024D10(v88, 1, v104) == 1)
  {
    sub_1000180EC(v88, &qword_100CA6600);
    HIDWORD(v196) = 0;
  }

  else
  {
    HIDWORD(v196) = v88[*(v104 + 24)];
    sub_1000B0004(v88, type metadata accessor for SearchViewState);
  }

  v105 = static Solarium.isEnabled.getter();
  v226 = v104;
  if ((v105 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_100095588();
  if (sub_100024D10(v103, 1, v104) == 1)
  {
    sub_1000180EC(v103, &qword_100CA6600);
LABEL_17:
    v106 = type metadata accessor for Location();
    sub_10001B350(v222, 1, 1, v106);
    goto LABEL_19;
  }

  sub_100095588();
  sub_1000B0004(v103, type metadata accessor for SearchViewState);
LABEL_19:
  sub_100051BBC();
  sub_10001B350(v229, 1, 1, v102);
  sub_10001B350(v232, 1, 1, v240);
  sub_10001B350(v235, 1, 1, v99);
  sub_10001B350(v236, 1, 1, v101);
  v222 = v7;
  sub_10001B350(v237, 1, 1, v7);
  sub_10001B350(v239, 1, 1, v244);
  v192 = v93;
  sub_1007D9B48();
  v193 = *(v100 + 16);
  v107 = *(v100 + 24);
  v108 = *(v100 + 25);
  v109 = *(v100 + 26);
  v110 = *(v100 + 56);
  v197 = *(v100 + 48);
  v111 = *(v100 + 64);
  v113 = *(v100 + 72);
  v112 = *(v100 + 80);
  v114 = *(v100 + 88);
  v115 = *(v100 + 89);
  v198 = v100;
  v116 = *(v100 + 27);
  type metadata accessor for ListViewState._Storage();
  swift_allocObject();
  v194 = v112;
  v189 = v111;
  v195 = v110;
  v117 = v109;
  v118 = v225;
  v119 = v199;
  v120 = sub_100042DA8(v193, v107, v108, v117, v116, v225, v199, v197, v110, v189, v113, v112, v114, v115);
  v121 = v202;
  v122 = *(&v201 + 1);
  sub_10001B350(v202, 1, 1, *(&v201 + 1));
  v123 = v226;
  v124 = v227;
  sub_1007D9B48();
  sub_100095588();
  *v124 = v118;
  v124[1] = v119;
  *(v124 + *(v123 + 24)) = BYTE4(v196);
  sub_10001B350(v124, 0, 1, v123);
  sub_10001B350(v203, 1, 1, v231);
  v125 = v208;
  sub_10001B350(v230, 1, 1, v208);
  v126 = v201;
  sub_100095588();
  v127 = sub_100024D10(v126, 1, v122);
  v197 = v120;
  if (v127 == 1)
  {
    v128 = v252;
    v129 = v125;
    v130 = v253;
    sub_1007D9B48();
    v131 = sub_100024D10(v126, 1, v122);

    v132 = v131 == 1;
    v133 = v220;
    v134 = v130;
    v125 = v129;
    v135 = &MainInitialStateProvider;
    if (!v132)
    {
      sub_1000180EC(v126, &qword_100CA6608);
    }
  }

  else
  {
    sub_1007D9BA0();

    v133 = v220;
    v128 = v252;
    v134 = v253;
    v135 = &MainInitialStateProvider;
  }

  LODWORD(v252) = *(v134 + v128[6]);
  v136 = [objc_opt_self() currentDevice];
  v137 = [v136 v135[51].base_props];

  v138 = v253;
  sub_1000180EC(v121, &qword_100CA6608);
  sub_1000180EC(v251, &qword_100CA65D8);
  v139 = v224;
  if (v137 && *(v138 + v128[9] + 8) == 2)
  {
    v140 = 1;
  }

  else
  {
    v140 = *(v138 + v128[7]);
  }

  LODWORD(v251) = v140;
  v141 = v200;
  sub_100051BBC();
  v142 = v226;
  v143 = sub_100024D10(v141, 1, v226);
  v144 = v231;
  if (v143 == 1)
  {
    sub_100095588();
    if (sub_100024D10(v141, 1, v142) != 1)
    {
      sub_1000180EC(v141, &qword_100CA6600);
    }
  }

  else
  {
    v145 = v228;
    sub_1007D9BA0();
    sub_10001B350(v145, 0, 1, v142);
  }

  v146 = v205;
  sub_100051BBC();
  if (sub_100024D10(v146, 1, v144) == 1)
  {
    sub_1007D9B48();
    v147 = sub_100024D10(v146, 1, v144);
    v148 = v211;
    if (v147 != 1)
    {
      sub_1000180EC(v146, &qword_100CA65F8);
    }
  }

  else
  {
    sub_1007D9BA0();
    v148 = v211;
  }

  v149 = v207;
  sub_100051BBC();
  if (sub_100024D10(v149, 1, v125) == 1)
  {
    sub_1007D9B48();
    if (sub_100024D10(v149, 1, v125) != 1)
    {
      sub_1000180EC(v149, &qword_100CA65F0);
    }
  }

  else
  {
    sub_1007D9BA0();
  }

  v150 = *(v253 + v128[11]);
  sub_1000B0004(v253, type metadata accessor for ViewState);
  *v133 = v197;
  sub_1007D9BA0();
  *(v133 + v128[6]) = v252;
  *(v133 + v128[7]) = v251;
  sub_100051BBC();
  sub_1007D9BA0();
  sub_1007D9BA0();

  *(v133 + v128[11]) = v150;
  sub_10001B350(v133, 0, 1, v128);
  v151 = v214;
  sub_10001B350(v212, 1, 1, v214);
  v152 = v216;
  sub_1007D9B48();
  v153 = v213;
  sub_100051BBC();
  if (sub_100024D10(v153, 1, v151) == 1)
  {
    sub_1000180EC(v153, &qword_100CA65E8);
  }

  else
  {
    sub_1000B0004(v152, type metadata accessor for ModalViewState);
    sub_1007D9BA0();
  }

  v154 = v240;
  v155 = v217;
  v156 = v238;
  v157 = v209;
  v158 = v206;
  sub_1007D9BA0();
  v159 = *(v139 + 16);
  LODWORD(v252) = *(v139 + 24);
  sub_100051BBC();
  v160 = sub_100024D10(v158, 1, v156);
  v253 = v159;
  if (v160 == 1)
  {
    sub_1007D9B48();
    v161 = sub_100024D10(v158, 1, v156);

    if (v161 != 1)
    {
      sub_1000180EC(v158, &qword_100CA6640);
    }
  }

  else
  {
    sub_1007D9BA0();
  }

  sub_100051BBC();
  v162 = sub_100024D10(v157, 1, v154);
  v163 = v241;
  if (v162 == 1)
  {
    swift_beginAccess();
    sub_1007D9B48();
    v164 = sub_100024D10(v157, 1, v154);
    v165 = v242;
    v166 = v218;
    if (v164 != 1)
    {
      sub_1000180EC(v157, &qword_100CA6638);
    }
  }

  else
  {
    sub_1007D9BA0();
    v165 = v242;
    v166 = v218;
  }

  sub_100051BBC();
  if (sub_100024D10(v148, 1, v163) == 1)
  {
    sub_1007D9B48();
    v167 = sub_100024D10(v148, 1, v163);
    v168 = v219;
    if (v167 != 1)
    {
      sub_1000180EC(v148, &qword_100CA6630);
    }
  }

  else
  {
    sub_1007D9BA0();
    v168 = v219;
  }

  v169 = v215;
  sub_100051BBC();
  if (sub_100024D10(v169, 1, v165) == 1)
  {
    sub_1007D9B48();
    v170 = sub_100024D10(v169, 1, v165);
    v171 = v221;
    if (v170 != 1)
    {
      sub_1000180EC(v169, &qword_100CA6628);
    }
  }

  else
  {
    sub_1007D9BA0();
    v171 = v221;
  }

  sub_100051BBC();
  v172 = v222;
  if (sub_100024D10(v155, 1, v222) == 1)
  {
    sub_1007D9B48();
    if (sub_100024D10(v155, 1, v172) != 1)
    {
      sub_1000180EC(v155, &qword_100CA6620);
    }
  }

  else
  {
    sub_1007D9BA0();
  }

  sub_100051BBC();
  v173 = v244;
  if (sub_100024D10(v168, 1, v244) == 1)
  {
    sub_1007D9B48();
    if (sub_100024D10(v168, 1, v173) != 1)
    {
      sub_1000180EC(v168, &qword_100CA6618);
    }
  }

  else
  {
    sub_1007D9BA0();
  }

  sub_100051BBC();
  if (sub_100024D10(v171, 1, v128) == 1)
  {
    sub_1007D9B48();
    v174 = v166;
    if (sub_100024D10(v171, 1, v128) != 1)
    {
      sub_1000180EC(v171, &qword_100CA6610);
    }
  }

  else
  {
    sub_1007D9BA0();
    v174 = v166;
  }

  v175 = v223;
  sub_1007D9BA0();
  v177 = *(v139 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v176 = *(v139 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v179 = *(v139 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v178 = *(v139 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v180 = v139 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState;
  v181 = *(v139 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v182 = v139;
  v184 = *(v139 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v183 = *(v180 + 16);
  v185 = *(v182 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v190) = v181;
  sub_10003E038(v253, v252, v245, v246, v247, v248, v249, v250, v174, v175, v177, v176, v179, v178, v190, v184, v183, v185, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204, v205, v206, v207);
  v187 = v186;

  return v187;
}

uint64_t sub_1007D95D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = a1;
  v36 = type metadata accessor for SearchViewState.ViewState(0);
  __chkstk_darwin(v36);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA65D8);
  v5 = __chkstk_darwin(v4 - 8);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v33 = &v31 - v8;
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = sub_10022C350(&qword_100CB0250);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v31 - v15;
  v17 = sub_10022C350(&qword_100CA6600);
  __chkstk_darwin(v17 - 8);
  v19 = &v31 - v18;
  v20 = type metadata accessor for SearchViewState(0);
  __chkstk_darwin(v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewState(0);
  sub_100095588();
  if (sub_100024D10(v19, 1, v20) == 1)
  {
    sub_1000180EC(v19, &qword_100CA6600);
    swift_storeEnumTagMultiPayload();
    v23 = *(v20 + 28);
    v24 = type metadata accessor for Location();
    result = sub_10001B350(a2 + v23, 1, 1, v24);
    *a2 = 0;
    a2[1] = 0xE000000000000000;
    *(a2 + *(v20 + 24)) = 0;
  }

  else
  {
    sub_1007D9BA0();
    v26 = v36;
    swift_storeEnumTagMultiPayload();
    sub_10001B350(v16, 0, 1, v26);
    v27 = type metadata accessor for Location();
    sub_10001B350(v10, 1, 1, v27);
    sub_100051BBC();
    if (sub_100024D10(v14, 1, v26) == 1)
    {
      sub_1007D9B48();
      v28 = sub_100024D10(v14, 1, v26);
      v30 = v32;
      v29 = v33;
      if (v28 != 1)
      {
        sub_1000180EC(v14, &qword_100CB0250);
      }
    }

    else
    {
      sub_1007D9BA0();
      v30 = v32;
      v29 = v33;
    }

    sub_100051BBC();
    if (sub_100024D10(v30, 1, v27) == 1)
    {
      sub_100095588();
      sub_1000B0004(v22, type metadata accessor for SearchViewState);
      if (sub_100024D10(v30, 1, v27) != 1)
      {
        sub_1000180EC(v30, &qword_100CA65D8);
      }
    }

    else
    {
      sub_1000B0004(v22, type metadata accessor for SearchViewState);
      (*(*(v27 - 8) + 32))(v29, v30, v27);
      sub_10001B350(v29, 0, 1, v27);
    }

    *a2 = 0;
    a2[1] = 0xE000000000000000;
    sub_1007D9BA0();
    *(a2 + *(v20 + 24)) = 0;
    return sub_100051BBC();
  }

  return result;
}

uint64_t sub_1007D9B48()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1007D9BA0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1007D9BF8()
{
  result = sub_1007D9C78();
  v1 = result;
  if (qword_100CA27E8 != -1)
  {
    result = swift_once();
  }

  v2 = *&qword_100CD9228;
  if (*&qword_100CD9228 <= 0.9)
  {
    v2 = 0.9;
  }

  qword_100D90DE0 = v1;
  qword_100D90DE8 = *&v2;
  return result;
}

uint64_t sub_1007D9C78()
{
  sub_1007D9F50();
  sub_1007D9FF4();
  AnyTransition.combined(with:)();

  sub_1007D9F50();
  sub_1007D9FF4();
  AnyTransition.combined(with:)();

  v0 = static AnyTransition.asymmetric(insertion:removal:)();

  return v0;
}

uint64_t sub_1007D9DA8()
{
  v0 = sub_1007D9C78();
  result = sub_1007D9C78();
  qword_100D90DF0 = v0;
  *algn_100D90DF8 = result;
  return result;
}

uint64_t sub_1007D9DE4()
{
  if (qword_100CA27F0 != -1)
  {
    result = swift_once();
  }

  v0 = *&qword_100CD9230;
  if (*&qword_100CD9230 <= 0.33)
  {
    v0 = 0.33;
  }

  qword_100CD9228 = *&v0;
  return result;
}

void sub_1007D9E48()
{
  v0 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:220.0 damping:30.0 initialVelocity:{0.0, 0.0}];
  [v0 ts_settlingDuration];
  v2 = v1;

  qword_100CD9230 = v2;
}

uint64_t sub_1007D9EBC()
{
  result = static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  qword_100CD9238 = result;
  return result;
}

uint64_t sub_1007D9EF0()
{
  static Animation.timingCurve(_:_:_:_:duration:)();
  v0 = Animation.delay(_:)();

  qword_100CD9240 = v0;
  return result;
}

uint64_t sub_1007D9F50()
{
  sub_10001F868();
  static AnyTransition.scale(scale:anchor:)();
  if (v1)
  {
    if (*v0 != -1)
    {
      swift_once();
    }
  }

  v2 = AnyTransition.animation(_:)();

  return v2;
}

uint64_t sub_1007D9FF4()
{
  sub_10001F868();
  static AnyTransition.opacity.getter();
  if (v1)
  {
    if (*v0 != -1)
    {
      swift_once();
    }
  }

  v2 = AnyTransition.animation(_:)();

  return v2;
}

uint64_t sub_1007DA084()
{
  result = sub_1007DA0B4();
  qword_100CD9248 = result;
  return result;
}

uint64_t sub_1007DA12C()
{
  result = static Animation.timingCurve(_:_:_:_:duration:)();
  qword_100CD9250 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for NotificationSettingsViewState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1007DA248(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ELL && 0x8000000100ADF2D0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000100ADF2F0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_1007DA320(char a1)
{
  if (a1)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 0xD00000000000001ELL;
  }
}

uint64_t sub_1007DA358(void *a1)
{
  v3 = sub_10022C350(&qword_100CD9288);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v10[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_1007DA9C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1007DA4B0(void *a1)
{
  v3 = sub_10022C350(&qword_100CD9278);
  sub_1000037C4();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v13[-v7];
  sub_1000161C0(a1, a1[3]);
  sub_1007DA9C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100006F14(a1);
  }

  v13[15] = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[14] = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v5 + 8))(v8, v3);
  sub_100006F14(a1);
  if (v10)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 0xFFFFFFFE | v9 & 1;
}

uint64_t sub_1007DA65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007DA248(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007DA684(uint64_t a1)
{
  v2 = sub_1007DA9C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007DA6C0(uint64_t a1)
{
  v2 = sub_1007DA9C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007DA6FC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007DA4B0(a1);
  if (!v2)
  {
    *a2 = result & 1;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_1007DA764@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10077DFAC();
  if (!v1)
  {
    *a1 = result & 1;
    a1[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_1007DA7CC@<X0>(uint64_t *a1@<X8>)
{
  Dictionary.init(dictionaryLiteral:)();
  a1[3] = sub_10022C350(&qword_100CD9260);
  a1[4] = sub_1007DA90C();
  sub_100042FB0(a1);
  return ShortDescription.init(name:_:)();
}

uint64_t sub_1007DA878()
{
  sub_1007DA970();

  return ShortDescribable.description.getter();
}

unint64_t sub_1007DA8B8()
{
  result = qword_100CD9258;
  if (!qword_100CD9258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9258);
  }

  return result;
}

unint64_t sub_1007DA90C()
{
  result = qword_100CD9268;
  if (!qword_100CD9268)
  {
    sub_10022E824(&qword_100CD9260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9268);
  }

  return result;
}

unint64_t sub_1007DA970()
{
  result = qword_100CD9270;
  if (!qword_100CD9270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9270);
  }

  return result;
}

unint64_t sub_1007DA9C4()
{
  result = qword_100CD9280;
  if (!qword_100CD9280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9280);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotificationSettingsViewState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1007DAAF8()
{
  result = qword_100CD9290;
  if (!qword_100CD9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9290);
  }

  return result;
}

unint64_t sub_1007DAB50()
{
  result = qword_100CD9298;
  if (!qword_100CD9298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9298);
  }

  return result;
}

unint64_t sub_1007DABA8()
{
  result = qword_100CD92A0;
  if (!qword_100CD92A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD92A0);
  }

  return result;
}

uint64_t sub_1007DABFC()
{
  sub_10022C350(&qword_100CD9348);
  sub_1007DB0A0();
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_1007DAC54(uint64_t a1)
{
  v2 = type metadata accessor for WeatherMapPerformanceTestConditions();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_10022C350(&qword_100CD9350);
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v20[-v8];
  v10 = sub_10022C350(&qword_100CAE2A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v20[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v15 = &v20[-v14];
  CurrentValueSubject.value.getter();
  v16 = *(v7 + 56);
  sub_1003416A8(a1, v9);
  sub_1003416A8(v15, &v9[v16]);
  sub_100005404(v9);
  if (v18)
  {
    sub_10003FDF4(v15, &qword_100CAE2A0);
    sub_100005404(&v9[v16]);
    if (v18)
    {
      return sub_10003FDF4(v9, &qword_100CAE2A0);
    }

    goto LABEL_9;
  }

  sub_1003416A8(v9, v12);
  sub_100005404(&v9[v16]);
  if (v18)
  {
    sub_10003FDF4(v15, &qword_100CAE2A0);
    (*(v3 + 8))(v12, v2);
LABEL_9:
    sub_10003FDF4(v9, &qword_100CD9350);
    return CurrentValueSubject.send(_:)();
  }

  (*(v3 + 32))(v5, &v9[v16], v2);
  sub_1007DB048();
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v3 + 8);
  v19(v5, v2);
  sub_10003FDF4(v15, &qword_100CAE2A0);
  v19(v12, v2);
  result = sub_10003FDF4(v9, &qword_100CAE2A0);
  if ((v21 & 1) == 0)
  {
    return CurrentValueSubject.send(_:)();
  }

  return result;
}

uint64_t sub_1007DAF84()
{
  v1 = v0;
  v2 = sub_10022C350(&qword_100CAE2A0);
  __chkstk_darwin(v2 - 8);
  v4 = &v7 - v3;
  v5 = type metadata accessor for WeatherMapPerformanceTestConditions();
  sub_10001B350(v4, 1, 1, v5);
  sub_10022C350(&qword_100CD9348);
  swift_allocObject();
  *(v1 + 16) = CurrentValueSubject.init(_:)();
  return v1;
}

unint64_t sub_1007DB048()
{
  result = qword_100CD9358;
  if (!qword_100CD9358)
  {
    type metadata accessor for WeatherMapPerformanceTestConditions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9358);
  }

  return result;
}

unint64_t sub_1007DB0A0()
{
  result = qword_100CD9360;
  if (!qword_100CD9360)
  {
    sub_10022E824(&qword_100CD9348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9360);
  }

  return result;
}

uint64_t sub_1007DB1BC()
{
  sub_10000FE4C();
  result = EnvironmentValues.displayScale.getter();
  *v0 = v2;
  return result;
}

uint64_t sub_1007DB208()
{
  sub_10000FE4C();
  v0 = sub_10014E940();
  return sub_100005F94(v0);
}

uint64_t sub_1007DB230()
{
  sub_10000FE4C();
  v0 = sub_100198BD0();
  return sub_100005F94(v0);
}

uint64_t sub_1007DB27C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v34 = *(v1 - 8);
  v35 = v1;
  __chkstk_darwin(v1);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CAD618);
  __chkstk_darwin(v4);
  v6 = &v32 - v5;
  v7 = type metadata accessor for ContentSizeCategory();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  v14 = *(type metadata accessor for DetermineWhetherLocationContentWantsGridViewModifier(0) + 20);
  v33 = v0;
  sub_1000302D8(v0 + v14, v6, &qword_100CAD618);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(v8 + 32);
    v15(v13, v6, v7);
    v17 = v34;
    v16 = v35;
  }

  else
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v17 = v34;
    v16 = v35;
    (*(v34 + 8))(v3, v35);
    v15 = *(v8 + 32);
  }

  v15(v10, v13, v7);
  v19 = (*(v8 + 88))(v10, v7);
  if (v19 != enum case for ContentSizeCategory.extraSmall(_:) && v19 != enum case for ContentSizeCategory.small(_:) && v19 != enum case for ContentSizeCategory.medium(_:) && v19 != enum case for ContentSizeCategory.large(_:) && v19 != enum case for ContentSizeCategory.extraLarge(_:) && v19 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v19 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    if (v19 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v19 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v19 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v19 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v19 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      return 0;
    }

    (*(v8 + 8))(v10, v7);
  }

  memcpy(__dst, v33, 0x49uLL);
  if (__dst[9])
  {
    memcpy(v36, v33, sizeof(v36));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v31 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8);
    (*(v17 + 8))(v3, v16);
  }

  if (v36[48])
  {
    return 1;
  }

  if (qword_100CA2820 != -1)
  {
    swift_once();
  }

  return byte_100CD9418;
}

double sub_1007DB74C()
{
  sub_1007E84D0();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_1007DB7C4@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1007DB8C0();
  v4 = v3;
  sub_10022C350(&qword_100CDA008);
  sub_1000037E8();
  v5 = sub_1000053B8();
  v6(v5);
  result = sub_10022C350(&qword_100CDA010);
  v8 = (a1 + *(result + 36));
  *v8 = KeyPath;
  v8[1] = v4;
  return result;
}

uint64_t sub_1007DB8C0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 8))
  {
    v11 = *(v0 + 24);
    v10 = *(v0 + 16);
    if (v11 != 1)
    {

      static os_log_type_t.fault.getter();
      v5 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018144(&v10, &qword_100CC09F8);
      (*(v2 + 8))(v4, v1);
    }
  }

  else
  {
    v15 = *(v0 + 24);
    v14 = *(v0 + 16);
    if (v15 != 1)
    {

      static os_log_type_t.fault.getter();
      v6 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018144(&v14, &qword_100CC09F8);
      (*(v2 + 8))(v4, v1);
    }

    v13 = *(v0 + 80);
    v7 = *(v0 + 48);
    v12[0] = *(v0 + 32);
    v12[1] = v7;
    v12[2] = *(v0 + 64);
    if ((v13 & 1) == 0)
    {

      static os_log_type_t.fault.getter();
      v8 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018144(v12, &qword_100CDA018);
      (*(v2 + 8))(v4, v1);
    }
  }

  return static Solarium.isEnabled.getter();
}

void sub_1007DBC30()
{
  sub_10000C778();
  v3 = v2;
  type metadata accessor for EnvironmentValues();
  sub_1000037C4();
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_10022C350(&qword_100CB3278);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v5);
  sub_10000CC9C();
  v6 = type metadata accessor for LocationContentView(0);
  sub_1000302D8(v0 + *(v6 + 52), v1, &qword_100CB3278);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100149618(v1, v3);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v8 = sub_1000053B8();
    v9(v8);
  }

  sub_10000536C();
}

uint64_t sub_1007DBDE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void (*a5)(char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  LODWORD(v155) = a8;
  v160 = a7;
  v128 = a6;
  LODWORD(v153) = a4;
  v126 = a1;
  v159 = a9;
  v132 = a14;
  v131 = a13;
  v120 = type metadata accessor for EnvironmentValues();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for Location.Identifier();
  v144 = *(v140 - 8);
  __chkstk_darwin(v140);
  v143 = &v118 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WeatherActivity();
  __chkstk_darwin(v20 - 8);
  v150 = &v118 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for LocationViewModel();
  __chkstk_darwin(v161);
  v141 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v137 = &v118 - v24;
  v139 = type metadata accessor for AutomationInfo(0);
  __chkstk_darwin(v139);
  v138 = (&v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v134 = type metadata accessor for PrimaryDividerStyle();
  v135 = *(v134 - 8);
  __chkstk_darwin(v134);
  v130 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_10022C350(&qword_100CD96D8);
  __chkstk_darwin(v133);
  v129 = &v118 - v27;
  v136 = sub_10022C350(&qword_100CD96E0) - 8;
  __chkstk_darwin(v136);
  v162 = (&v118 - v28);
  v142 = sub_10022C350(&qword_100CD96E8);
  __chkstk_darwin(v142);
  v147 = &v118 - v29;
  v146 = sub_10022C350(&qword_100CD96F0);
  __chkstk_darwin(v146);
  v148 = &v118 - v30;
  v145 = sub_10022C350(&qword_100CD96F8);
  __chkstk_darwin(v145);
  v151 = &v118 - v31;
  v149 = sub_10022C350(&qword_100CD9700);
  __chkstk_darwin(v149);
  v154 = &v118 - v32;
  v163 = sub_10022C350(&qword_100CD9708);
  __chkstk_darwin(v163);
  v158 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v152 = &v118 - v35;
  __chkstk_darwin(v36);
  v156 = &v118 - v37;
  v38 = type metadata accessor for LocationContentTopHeaderView(0);
  __chkstk_darwin(v38);
  v157 = &v118 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v118 - v41;
  v127 = *(a1 + 8);
  sub_100140210();
  v43 = &v42[v38[5]];
  v124 = a2;
  *v43 = a2;
  *(v43 + 1) = a3;
  v44 = a3;
  v125 = a3;
  v45 = v153 & 1;
  v43[16] = v45;
  v123 = v45;
  v122 = a5;
  *(v43 + 3) = a5;
  v46 = &v42[v38[6]];
  v47 = v128;
  v48 = v160;
  *v46 = v128;
  *(v46 + 1) = v48;
  v121 = v155 & 1;
  v46[16] = v155 & 1;
  *(v46 + 3) = a10;
  v49 = &v42[v38[7]];
  *v49 = a11;
  v49[1] = a12;
  v50 = v131;
  v51 = v132;
  v49[2] = v131;
  v49[3] = v51;
  v155 = v38[8];
  sub_10010CD54(a2, v44, v45);

  v52 = v48;
  LODWORD(v48) = v121;
  sub_10010CD54(v47, v52, v121);

  sub_100148118(a11, a12, v50, v51);
  Text.Measurements.init()();
  v53 = v38[9];
  *&v42[v53] = swift_getKeyPath();
  sub_10022C350(&qword_100CB3278);
  swift_storeEnumTagMultiPayload();
  v54 = &v42[v38[10]];
  KeyPath = swift_getKeyPath();
  v168 = 0;
  *v54 = KeyPath;
  v54[72] = 0;
  v56 = &v42[v38[11]];
  *v56 = swift_getKeyPath();
  v56[8] = 0;
  v57 = v38[12];
  *&v42[v57] = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  v58 = &v42[v38[13]];
  *v58 = swift_getKeyPath();
  v58[8] = 0;
  v153 = v38;
  v59 = v38[14];
  v155 = v42;
  v60 = &v42[v59];
  *v60 = swift_getKeyPath();
  v60[8] = 0;
  v61 = v129;
  v62 = v126;
  sub_10014815C(v124, v125, v123, v122, v47, v160, v48, a10, v129, a11, a12, v50, v51);
  v63 = v130;
  static DividerStyle<>.primary.getter();
  sub_1007E7990();
  sub_10008152C(&qword_100CA72A0, &type metadata accessor for PrimaryDividerStyle);
  v64 = v162;
  v65 = v134;
  View.dividerStyle<A>(_:)();
  v66 = v137;
  (*(v135 + 8))(v63, v65);
  v67 = v140;
  sub_100018144(v61, &qword_100CD96D8);
  sub_100140210();
  v68 = (v66 + *(v161 + 24));
  v70 = *v68;
  v69 = v68[1];

  sub_100147C14(v66, type metadata accessor for LocationViewModel);
  v71 = v138;
  *v138 = v70;
  *(v71 + 8) = v69;
  type metadata accessor for AutomationViewInfo(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v72 = v64 + *(v136 + 44);
  v73 = type metadata accessor for AutomationInfoProperty();
  sub_1001495C0(v71, &v72[*(v73 + 24)]);
  sub_100147C14(v71, type metadata accessor for AutomationInfo);
  *v72 = 0;
  *(v72 + 1) = 0xE000000000000000;
  *(v72 + 2) = swift_getKeyPath();
  v72[24] = 0;
  v74 = v141;
  sub_100140210();
  v75 = v144;
  v76 = *(v144 + 16);
  v77 = v143;
  v76(v143, v74, v67);
  sub_100147C14(v74, type metadata accessor for LocationViewModel);
  Location.Identifier.kind.getter();
  (*(v75 + 8))(v77, v67);
  v78 = Location.Identifier.Kind.rawValue.getter();
  v80 = v79;
  if (v78 == Location.Identifier.Kind.rawValue.getter() && v80 == v81)
  {
  }

  else
  {
    v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v83 & 1) == 0)
    {
      sub_100140210();
      v84 = v150;
      v76(v150, v66, v67);
      sub_100147C14(v66, type metadata accessor for LocationViewModel);
      v85 = 0;
      goto LABEL_9;
    }
  }

  v85 = 2;
  v84 = v150;
LABEL_9:
  sub_10001B350(v84, v85, 2, v67);
  v86 = v147;
  sub_100149618(v84, &v147[*(v142 + 36)]);
  sub_10011C0F0(v162, v86, &qword_100CD96E0);
  v87 = swift_getKeyPath();
  v88 = *(v62 + 144);
  if (*(v62 + 152) != 1)
  {

    static os_log_type_t.fault.getter();
    v89 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v90 = v118;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v88, 0);
    (*(v119 + 8))(v90, v120);
    LOBYTE(v88) = v167[0];
  }

  v91 = v148;
  sub_10011C0F0(v86, v148, &qword_100CD96E8);
  v92 = v91 + *(v146 + 36);
  *v92 = v87;
  *(v92 + 8) = v88 & 1;
  v93 = swift_getKeyPath();
  sub_100140210();
  v94 = v161;
  v95 = *(v161 + 80);
  v96 = v151;
  v97 = &v151[*(v145 + 36)];
  v98 = sub_10022C350(&qword_100CD9768);
  sub_1000302D8(v66 + v95, v97 + *(v98 + 28), &qword_100CA60E8);
  v162 = type metadata accessor for LocationViewModel;
  sub_100147C14(v66, type metadata accessor for LocationViewModel);
  *v97 = v93;
  sub_10011C0F0(v91, v96, &qword_100CD96F0);
  v99 = swift_getKeyPath();
  sub_100140210();
  LOBYTE(v95) = *(v66 + *(v94 + 84));
  sub_100147C14(v66, type metadata accessor for LocationViewModel);
  v100 = v96;
  v101 = v154;
  sub_10011C0F0(v100, v154, &qword_100CD96F8);
  v102 = v101 + *(v149 + 36);
  *v102 = v99;
  *(v102 + 8) = v95;
  sub_100140210();
  v103 = static Alignment.center.getter();
  v161 = v104;
  v105 = v152;
  v106 = &v152[*(v163 + 36)];
  sub_1001495C0(v66, v106);
  v107 = (v106 + *(type metadata accessor for ForegroundEffectConfigurationView() + 20));

  sub_10022C350(&qword_100CA4B60);
  sub_100006F64(&qword_100CA4B68, &qword_100CA4B60);
  v108 = ObservedObject.init(wrappedValue:)();
  v110 = v109;
  sub_100147C14(v66, v162);
  *v107 = v108;
  v107[1] = v110;
  v111 = (v106 + *(sub_10022C350(&qword_100CD9770) + 36));
  v112 = v161;
  *v111 = v103;
  v111[1] = v112;
  sub_10011C0F0(v101, v105, &qword_100CD9700);
  v113 = v156;
  sub_10011C0F0(v105, v156, &qword_100CD9708);
  v114 = v155;
  v115 = v157;
  sub_1001495C0(v155, v157);
  v167[0] = v115;
  v116 = v158;
  sub_1000302D8(v113, v158, &qword_100CD9708);
  v167[1] = v116;
  v166[0] = v153;
  v166[1] = v163;
  v164 = sub_10008152C(&qword_100CD9778, type metadata accessor for LocationContentTopHeaderView);
  v165 = sub_1007E7CB4();
  sub_10012E24C(v167, 2, v166);
  sub_100018144(v113, &qword_100CD9708);
  sub_100147C14(v114, type metadata accessor for LocationContentTopHeaderView);
  sub_100018144(v116, &qword_100CD9708);
  return sub_100147C14(v115, type metadata accessor for LocationContentTopHeaderView);
}

void sub_1007DCE74(void *a1, int a2)
{
  v4 = type metadata accessor for LocationViewModel();
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Location.Identifier();
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocationContentView(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA26A8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000703C(v13, qword_100D90A60);
  sub_1001495C0(a1, v12);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  v16 = os_log_type_enabled(v14, v15);
  v34 = v6;
  if (!v16)
  {

    sub_100147C14(v12, type metadata accessor for LocationContentView);
    if ((a2 & 1) == 0)
    {
      return;
    }

    goto LABEL_7;
  }

  v17 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v37 = v32;
  *v17 = 141558275;
  *(v17 + 4) = 1752392040;
  *(v17 + 12) = 2081;
  sub_100140210();
  v33 = a2;
  v18 = v35;
  v19 = a1;
  v20 = v36;
  (*(v35 + 16))(v9, v6, v36);
  sub_100147C14(v6, type metadata accessor for LocationViewModel);
  sub_10008152C(&qword_100CA38C8, &type metadata accessor for Location.Identifier);
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  v23 = v22;
  v24 = v18;
  LOBYTE(v18) = v33;
  v25 = v20;
  a1 = v19;
  (*(v24 + 8))(v9, v25);
  sub_100147C14(v12, type metadata accessor for LocationContentView);
  v26 = sub_100078694(v21, v23, &v37);

  *(v17 + 14) = v26;
  _os_log_impl(&_mh_execute_header, v14, v15, "LocationContentView.onAppear, Location=%{private,mask.hash}s", v17, 0x16u);
  sub_100006F14(v32);

  if (v18)
  {
LABEL_7:
    v27 = a1[15];
    v28 = a1[16];
    sub_1000161C0(a1 + 12, v27);
    (*(v28 + 16))(v27, v28);
    sub_1000161C0(a1 + 7, a1[10]);
    v29 = v34;
    sub_100140210();
    v31 = v35;
    v30 = v36;
    (*(v35 + 16))(v9, v29, v36);
    sub_100147C14(v29, type metadata accessor for LocationViewModel);
    Location.Identifier.id.getter();
    (*(v31 + 8))(v9, v30);
    sub_100194F6C();
  }
}

void sub_1007DD2E0()
{
  sub_10000C778();
  v3 = v2;
  sub_1000038D8();
  v4 = type metadata accessor for LocationViewModel();
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for Location.Identifier();
  sub_1000037C4();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_1000037D8();
  sub_10000CC9C();
  v13 = sub_100016F3C();
  __chkstk_darwin(v13);
  sub_1000037D8();
  v16 = v15 - v14;
  if (qword_100CA26A8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000703C(v17, qword_100D90A60);
  sub_100017E10();
  sub_1001495C0(v0, v16);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v27 = v3;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v28 = v21;
    *v20 = 141558275;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2081;
    sub_100140210();
    (*(v11 + 16))(v1, v8, v9);
    sub_100010BF4();
    sub_100147C14(v8, v22);
    sub_10008152C(&qword_100CA38C8, &type metadata accessor for Location.Identifier);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v11 + 8))(v1, v9);
    sub_10002CACC();
    v26 = sub_100078694(v23, v25, &v28);

    *(v20 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, v27, v20, 0x16u);
    sub_100006F14(v21);
  }

  else
  {

    sub_10002CACC();
  }

  sub_10000536C();
}

void sub_1007DD5BC(uint64_t a1, _BYTE *a2, void *a3)
{
  v5 = type metadata accessor for Location.Identifier();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocationViewModel();
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    v12 = a3[15];
    v13 = a3[16];
    sub_1000161C0(a3 + 12, v12);
    (*(v13 + 16))(v12, v13);
    sub_1000161C0(a3 + 7, a3[10]);
    sub_100140210();
    (*(v6 + 16))(v8, v11, v5);
    sub_100147C14(v11, type metadata accessor for LocationViewModel);
    Location.Identifier.id.getter();
    (*(v6 + 8))(v8, v5);
    sub_100194F6C();
  }
}

uint64_t sub_1007DD78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Location.Identifier();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocationViewModel();
  __chkstk_darwin(v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SettingReader();
  static SettingReader.shared.getter();
  if (qword_100CA2A30 != -1)
  {
    swift_once();
  }

  SettingReader.read<A>(_:)();

  if (v17 == 1)
  {
    v16 = *(a1 + 24);
    swift_unknownObjectRetain();
    sub_100140210();
    (*(v5 + 16))(v7, v10, v4);
    sub_100147C14(v10, type metadata accessor for LocationViewModel);
    v12 = Location.Identifier.id.getter();
    v14 = v13;
    result = (*(v5 + 8))(v7, v4);
    v15 = v16;
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v15 = 0uLL;
  }

  *a2 = v15;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14;
  return result;
}

uint64_t sub_1007DD990@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_10022C350(&qword_100CD97E8);
  return a1();
}

uint64_t sub_1007DD9F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, __int128 a11, __int128 a12, uint64_t a13)
{
  v38 = a4;
  v39 = a8;
  v43 = a6;
  v44 = a7;
  v41 = a3;
  v42 = a5;
  v40 = a2;
  v45 = a9;
  v37 = a12;
  v36 = a11;
  v15 = type metadata accessor for LocationViewModel();
  __chkstk_darwin(v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CD97F0);
  __chkstk_darwin(v18);
  v20 = &v36 - v19;
  if (qword_100CA1F38 != -1)
  {
    swift_once();
  }

  v21 = byte_100D8FB89;
  v22 = *(a1 + 48);
  v23 = sub_10022C350(&qword_100CD97F8);
  v24 = *(v23 + 48);
  v46 = 0;
  sub_10022C350(&qword_100CB3198);
  State.init(wrappedValue:)();
  *&v20[v24] = v47;
  *v20 = 0x6E6F697461636F6CLL;
  *(v20 + 1) = 0xE800000000000000;
  v20[16] = v21;
  *(v20 + 3) = v22;
  v25 = *(v23 + 44);

  sub_1007DDD68(a1, v40, v41, v38 & 1, v42, v43, v44, v39 & 1, &v20[v25], v36, v37, a13);
  KeyPath = swift_getKeyPath();
  v27 = &v20[*(sub_10022C350(&qword_100CD9800) + 36)];
  *v27 = KeyPath;
  *(v27 + 1) = a10;
  sub_100140210();
  LOBYTE(v22) = v17[*(v15 + 68)];
  sub_100147C14(v17, type metadata accessor for LocationViewModel);
  v28 = swift_getKeyPath();
  v29 = swift_getKeyPath();
  v30 = &v20[*(sub_10022C350(&qword_100CD9808) + 36)];
  *v30 = v22;
  *(v30 + 1) = v28;
  v30[16] = 0;
  *(v30 + 3) = v29;
  v30[32] = 0;
  sub_100140210();
  v31 = v17[*(v15 + 68)];
  sub_100147C14(v17, type metadata accessor for LocationViewModel);
  v32 = swift_getKeyPath();
  v33 = swift_getKeyPath();
  LOBYTE(v47) = 0;
  LOBYTE(v46) = 0;
  v34 = &v20[*(v18 + 36)];
  *v34 = a10;
  v34[8] = v31;
  *(v34 + 2) = v32;
  v34[24] = 0;
  *(v34 + 4) = v33;
  *(v34 + 40) = 0u;
  *(v34 + 56) = 0u;
  *(v34 + 9) = 0;
  v34[80] = 0;
  sub_1007E8280();
  View.setForegroundEffectContainer()();
  return sub_100018144(v20, &qword_100CD97F0);
}

uint64_t sub_1007DDD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12)
{
  v102 = a8;
  v110 = a7;
  v104 = a5;
  v105 = a6;
  v103 = a3;
  v101 = a2;
  v116 = a9;
  v100 = a10;
  v99 = a11;
  v115 = sub_10022C350(&unk_100CE0EB0);
  v97 = *(v115 - 8);
  __chkstk_darwin(v115);
  v95 = &v93 - v14;
  v111 = sub_10022C350(&qword_100CD9848);
  v94 = *(v111 - 8);
  __chkstk_darwin(v111);
  v93 = &v93 - v15;
  v113 = sub_10022C350(&qword_100CD9850);
  v98 = *(v113 - 8);
  __chkstk_darwin(v113);
  v96 = &v93 - v16;
  v107 = sub_10022C350(&qword_100CD9858);
  __chkstk_darwin(v107);
  v108 = &v93 - v17;
  v18 = type metadata accessor for LocationViewModel();
  __chkstk_darwin(v18 - 8);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = sub_10022C350(&qword_100CD9860);
  __chkstk_darwin(KeyPath);
  v106 = &v93 - v21;
  v22 = type metadata accessor for EnvironmentValues();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10022C350(&qword_100CD9868);
  __chkstk_darwin(v26 - 8);
  v109 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v112 = &v93 - v29;
  v30 = sub_10022C350(&qword_100CD9870);
  v31 = v30 - 8;
  __chkstk_darwin(v30);
  v114 = &v93 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v35 = (&v93 - v34);
  *v35 = static Alignment.top.getter();
  v35[1] = v36;
  v37 = sub_10022C350(&qword_100CD9878);
  sub_1007DEB50(a1, v101, v103, a4 & 1, v104, v105, v110, v102 & 1, v35 + *(v37 + 44), v100, *(&v100 + 1), v99, *(&v99 + 1), a12);
  v38 = *(v31 + 44);
  v110 = v35;
  *(v35 + v38) = 0x3FF0000000000000;
  sub_1007DEFE0(__src);
  v39 = *(a1 + 144);
  if (*(a1 + 152) != 1)
  {

    static os_log_type_t.fault.getter();
    v59 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v39, 0);
    (*(v23 + 8))(v25, v22);
    if (LOBYTE(v125[0]) != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v60 = v106;
    sub_1007DF520(v106);
    sub_100140210();
    v61 = v60 + *(KeyPath + 36);
    v62 = type metadata accessor for Location.Identifier();
    (*(*(v62 - 8) + 16))(v61, v20, v62);
    sub_100147C14(v20, type metadata accessor for LocationViewModel);
    v63 = type metadata accessor for GridViewIdentifierModifier(0);
    v64 = v61 + v63[5];
    *v64 = swift_getKeyPath();
    *(v64 + 8) = 0;
    v65 = v61 + v63[6];
    *v65 = swift_getKeyPath();
    *(v65 + 8) = 0;
    v66 = v61 + v63[7];
    *v66 = swift_getKeyPath();
    *(v66 + 8) = 0u;
    *(v66 + 24) = 0u;
    *(v66 + 33) = 0u;
    v67 = v61 + v63[8];
    *v67 = sub_1007E2F48;
    *(v67 + 8) = 0;
    *(v67 + 16) = 0;
    sub_1000302D8(v60, v108, &qword_100CD9860);
    swift_storeEnumTagMultiPayload();
    v107 = sub_1007E8714();
    v105 = sub_10022E824(&qword_100CD9880);
    v68 = sub_10022E824(&qword_100CD9888);
    v69 = sub_10022E824(&qword_100CD9890);
    v70 = sub_10022E824(&qword_100CD9898);
    v71 = sub_10022E824(&qword_100CD98A0);
    v72 = sub_10022E824(&qword_100CD47E0);
    v73 = sub_100149E14();
    v74 = sub_100708038();
    v125[0] = v71;
    v125[1] = v72;
    v125[2] = v73;
    v125[3] = v74;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v125[0] = v70;
    v125[1] = &type metadata for Bool;
    v125[2] = OpaqueTypeConformance2;
    v125[3] = &protocol witness table for Bool;
    v76 = swift_getOpaqueTypeConformance2();
    v77 = sub_100006F64(&qword_100CD98E8, &qword_100CD9890);
    v125[0] = v68;
    v125[1] = &type metadata for Solarium;
    v125[2] = v69;
    v125[3] = v76;
    v125[4] = &protocol witness table for Solarium;
    v125[5] = v77;
    v78 = swift_getOpaqueTypeConformance2();
    v125[0] = &type metadata for Solarium;
    v125[1] = &protocol witness table for Solarium;
    v79 = swift_getOpaqueTypeConformance2();
    v80 = sub_1007E8524();
    v125[0] = v111;
    v125[1] = v115;
    v125[2] = v105;
    v125[3] = v78;
    v125[4] = v79;
    v125[5] = v80;
    swift_getOpaqueTypeConformance2();
    v58 = v112;
    _ConditionalContent<>.init(storage:)();
    sub_100018144(v106, &qword_100CD9860);
    goto LABEL_6;
  }

  if (v39)
  {
    goto LABEL_5;
  }

LABEL_3:
  v40 = v93;
  sub_1007DF9F4(v93);
  Solarium.init()();
  v41 = v95;
  static ViewInputPredicate.! prefix(_:)();
  v106 = sub_10022C350(&qword_100CD9880);
  v42 = sub_10022E824(&qword_100CD9888);
  v43 = sub_10022E824(&qword_100CD9890);
  v44 = sub_10022E824(&qword_100CD9898);
  v45 = sub_10022E824(&qword_100CD98A0);
  v46 = sub_10022E824(&qword_100CD47E0);
  v47 = sub_100149E14();
  v48 = sub_100708038();
  v125[0] = v45;
  v125[1] = v46;
  v125[2] = v47;
  v125[3] = v48;
  v49 = swift_getOpaqueTypeConformance2();
  v125[0] = v44;
  v125[1] = &type metadata for Bool;
  v125[2] = v49;
  v125[3] = &protocol witness table for Bool;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = sub_100006F64(&qword_100CD98E8, &qword_100CD9890);
  v125[0] = v42;
  v125[1] = &type metadata for Solarium;
  v125[2] = v43;
  v125[3] = v50;
  v125[4] = &protocol witness table for Solarium;
  v125[5] = v51;
  v105 = &opaque type descriptor for <<opaque return type of View.staticIf<A, B>(_:then:)>>;
  v104 = swift_getOpaqueTypeConformance2();
  v125[0] = &type metadata for Solarium;
  v125[1] = &protocol witness table for Solarium;
  v103 = swift_getOpaqueTypeConformance2();
  v92 = sub_1007E8524();
  v52 = v96;
  v53 = v111;
  v54 = v115;
  v55 = v106;
  View.staticIf<A, B>(_:then:)();
  (*(v97 + 8))(v41, v54);
  (*(v94 + 8))(v40, v53);
  v56 = v98;
  v57 = v113;
  (*(v98 + 16))(v108, v52, v113);
  swift_storeEnumTagMultiPayload();
  sub_1007E8714();
  v125[0] = v53;
  v125[1] = v54;
  v125[2] = v55;
  v125[3] = v104;
  v125[4] = v103;
  v125[5] = v92;
  swift_getOpaqueTypeConformance2();
  v58 = v112;
  _ConditionalContent<>.init(storage:)();
  (*(v56 + 8))(v52, v57);
LABEL_6:
  KeyPath = swift_getKeyPath();
  v118[128] = 0;
  v81 = swift_getKeyPath();
  LOBYTE(v125[0]) = 0;
  v82 = v110;
  v83 = v114;
  sub_1000302D8(v110, v114, &qword_100CD9870);
  memcpy(v118, __src, 0x79uLL);
  v84 = v109;
  sub_1000302D8(v58, v109, &qword_100CD9868);
  v85 = v116;
  sub_1000302D8(v83, v116, &qword_100CD9870);
  v86 = sub_10022C350(&qword_100CD9918);
  v87 = v58;
  v88 = v86[12];
  memcpy(v119, v118, 0x79uLL);
  memcpy((v85 + v88), v118, 0x79uLL);
  sub_1000302D8(v84, v85 + v86[16], &qword_100CD9868);
  v89 = v86[20];
  v90 = KeyPath;
  v120[0] = KeyPath;
  LOBYTE(v120[9]) = 0;
  v120[10] = v81;
  LOBYTE(v120[11]) = 0;
  memcpy((v85 + v89), v120, 0x59uLL);
  sub_1000302D8(v119, v125, &qword_100CD9920);
  sub_10014A234(v120, v125);
  sub_100018144(v87, &qword_100CD9868);
  sub_100018144(v82, &qword_100CD9870);
  v121[0] = v90;
  v122 = 0;
  v123 = v81;
  v124 = 0;
  sub_10014A26C(v121);
  sub_100018144(v84, &qword_100CD9868);
  memcpy(v125, v118, 0x79uLL);
  sub_100018144(v125, &qword_100CD9920);
  return sub_100018144(v83, &qword_100CD9870);
}

uint64_t sub_1007DEB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  LODWORD(v67) = a8;
  v60 = a4;
  v57 = a2;
  v58 = a3;
  v70 = a9;
  v65 = a7;
  v66 = a14;
  v63 = a6;
  v64 = a13;
  v71 = a12;
  v61 = a5;
  v62 = a11;
  v59 = a10;
  v55 = type metadata accessor for LocationContentScrollingHeaderView(0) - 8;
  __chkstk_darwin(v55);
  v69 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v54 - v17;
  v19 = type metadata accessor for LocationViewObserverView(0);
  v20 = (v19 - 8);
  __chkstk_darwin(v19);
  v68 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = (&v54 - v23);
  sub_100140210();
  v25 = *(a1 + 136);
  *v24 = swift_getKeyPath();
  sub_10022C350(&unk_100CE1000);
  swift_storeEnumTagMultiPayload();
  v26 = v24 + v20[7];
  *v26 = sub_10015C5A0;
  *(v26 + 1) = 0;
  v26[16] = 0;
  *(v24 + v20[9]) = *(a1 + 24);
  v27 = (v24 + v20[10]);
  v56 = v24;
  swift_unknownObjectRetain();

  sub_10022C350(&qword_100CA4B60);
  sub_100006F64(&qword_100CA4B68, &qword_100CA4B60);
  *v27 = ObservedObject.init(wrappedValue:)();
  v27[1] = v28;
  *(v24 + v20[11]) = v25;
  v29 = v18;
  sub_100140210();
  v30 = v55;
  v31 = v29 + *(v55 + 28);
  v32 = v57;
  v33 = v58;
  *v31 = v57;
  *(v31 + 8) = v33;
  v34 = v60 & 1;
  *(v31 + 16) = v60 & 1;
  v35 = v62;
  *(v31 + 24) = v61;
  v36 = v29 + v30[8];
  v38 = v63;
  v37 = v64;
  v40 = v65;
  v39 = v66;
  *v36 = v63;
  *(v36 + 8) = v40;
  LOBYTE(v20) = v67 & 1;
  *(v36 + 16) = v67 & 1;
  *(v36 + 24) = v59;
  v41 = (v29 + v30[9]);
  v42 = v71;
  *v41 = v35;
  v41[1] = v42;
  v41[2] = v37;
  v41[3] = v39;
  v67 = v30[10];
  sub_10010CD54(v32, v33, v34);

  sub_10010CD54(v38, v40, v20);

  sub_100148118(v35, v71, v37, v39);
  Text.Measurements.init()();
  v43 = v29 + v30[11];
  KeyPath = swift_getKeyPath();
  v72 = 0;
  *v43 = KeyPath;
  *(v43 + 72) = 0;
  v45 = v29 + v30[12];
  *v45 = swift_getKeyPath();
  *(v45 + 8) = 0;
  v46 = v30[13];
  *(v29 + v46) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  v47 = v29 + v30[14];
  *v47 = swift_getKeyPath();
  *(v47 + 8) = 0;
  v48 = v56;
  v49 = v68;
  sub_1001495C0(v56, v68);
  v50 = v69;
  sub_1001495C0(v29, v69);
  v51 = v70;
  sub_1001495C0(v49, v70);
  v52 = sub_10022C350(&qword_100CD9AB0);
  sub_1001495C0(v50, v51 + *(v52 + 48));
  sub_100147C14(v29, type metadata accessor for LocationContentScrollingHeaderView);
  sub_100147C14(v48, type metadata accessor for LocationViewObserverView);
  sub_100147C14(v50, type metadata accessor for LocationContentScrollingHeaderView);
  return sub_100147C14(v49, type metadata accessor for LocationViewObserverView);
}

void *sub_1007DEFE0@<X0>(void *a1@<X8>)
{
  v41 = a1;
  v40 = type metadata accessor for Location.Identifier();
  v37 = *(v40 - 8);
  __chkstk_darwin(v40);
  v38 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for LocationViewModel();
  __chkstk_darwin(v39);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100CA2818 != -1)
  {
    swift_once();
  }

  v13 = sub_10000703C(v9, qword_100CD9400);
  (*(v10 + 104))(v12, enum case for Settings.VFX.AnimatedBackgrounds.AnimationKind.vfx(_:), v9);
  LOBYTE(v13) = sub_1001497E4(v13, v12);
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    v36 = static Color.clear.getter();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v35 = v46;
    v34 = v47;
    v33 = v48;
    v32 = v49;
    v30 = v51;
    v31 = v50;
    v14 = v1 + *(type metadata accessor for LocationContentView(0) + 64);
    v15 = *v14;
    if (*(v14 + 8) == 1)
    {
      v43 = v15 & 1;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v15, 0);
      (*(v6 + 8))(v8, v5);
      LOBYTE(v15) = v43;
    }

    v29 = *(v1 + 40);
    *&__dst[0] = 0x6F6973696C6C6F63;
    *(&__dst[0] + 1) = 0xEA00000000002D6ELL;
    sub_100140210();
    v18 = v37;
    v17 = v38;
    v19 = v40;
    (*(v37 + 16))(v38, v4, v40);
    sub_100147C14(v4, type metadata accessor for LocationViewModel);
    v20 = Location.Identifier.id.getter();
    v22 = v21;
    (*(v18 + 8))(v17, v19);
    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24 = __dst[0];
    sub_100140210();
    v25 = v4[*(v39 + 68)];
    sub_100147C14(v4, type metadata accessor for LocationViewModel);
    KeyPath = swift_getKeyPath();
    LOBYTE(__dst[0]) = 0;
    v27 = swift_getKeyPath();
    v45 = v34;
    v44 = v32;
    *v42 = v36;
    *&v42[8] = v35;
    v42[16] = v34;
    *&v42[24] = v33;
    v42[32] = v32;
    *&v42[40] = v31;
    *&v42[48] = v30;
    v42[56] = v15 & 1;
    *&v42[64] = v29;
    *&v42[72] = v24;
    v42[88] = v25;
    *&v42[96] = KeyPath;
    v42[104] = __dst[0];
    *&v42[112] = v27;
    v42[120] = 0;
    LocationSearchEntityFromStringResolver.init()();
    memcpy(__dst, v42, 0x79uLL);
  }

  else
  {
    sub_1007E90C8(__dst);
  }

  return memcpy(v41, __dst, 0x79uLL);
}

uint64_t sub_1007DF520@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v34 = type metadata accessor for LocationFooterView(0);
  __chkstk_darwin(v34);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CD8AB8);
  __chkstk_darwin(v4 - 8);
  v6 = &v32 - v5;
  v7 = type metadata accessor for LocationViewModel();
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LocationFooterViewModel();
  __chkstk_darwin(v11);
  *&v32 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10022C350(&qword_100CD9928);
  __chkstk_darwin(v13 - 8);
  v33 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v32 - v16;
  v18 = sub_10022C350(&qword_100CD9930);
  __chkstk_darwin(v18 - 8);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v32 - v22;
  *v23 = static VerticalAlignment.center.getter();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = sub_10022C350(&qword_100CD9938);
  sub_1007E17E8(v1, &v23[*(v24 + 44)]);
  sub_100140210();
  sub_1000302D8(&v10[*(v8 + 44)], v6, &qword_100CD8AB8);
  sub_100147C14(v10, type metadata accessor for LocationViewModel);
  if (sub_100024D10(v6, 1, v11) == 1)
  {
    sub_100018144(v6, &qword_100CD8AB8);
    sub_10001B350(v17, 1, 1, v34);
  }

  else
  {
    v25 = v32;
    sub_100149618(v6, v32);
    v26 = v34;
    sub_100149618(v25, &v3[*(v34 + 24)]);
    v32 = *(v1 + 24);
    *v3 = swift_getKeyPath();
    v3[8] = 0;
    v27 = *(v26 + 20);
    *&v3[v27] = swift_getKeyPath();
    sub_10022C350(&qword_100CA71B0);
    swift_storeEnumTagMultiPayload();
    *&v3[*(v26 + 28)] = v32;
    sub_100149618(v3, v17);
    sub_10001B350(v17, 0, 1, v26);
    swift_unknownObjectRetain();
  }

  sub_1000302D8(v23, v20, &qword_100CD9930);
  v28 = v33;
  sub_1000302D8(v17, v33, &qword_100CD9928);
  v29 = v35;
  sub_1000302D8(v20, v35, &qword_100CD9930);
  v30 = sub_10022C350(&qword_100CD9940);
  sub_1000302D8(v28, v29 + *(v30 + 48), &qword_100CD9928);
  sub_100018144(v17, &qword_100CD9928);
  sub_100018144(v23, &qword_100CD9930);
  sub_100018144(v28, &qword_100CD9928);
  return sub_100018144(v20, &qword_100CD9930);
}

uint64_t sub_1007DF9F4@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v59 = type metadata accessor for LocationViewModel() - 8;
  __chkstk_darwin(v59);
  v58 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for LocationContentView(0);
  v4 = *(v3 - 8);
  v60 = v3 - 8;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_10022C350(&qword_100CD98C0);
  __chkstk_darwin(v6);
  v8 = (&v48 - v7);
  v61 = sub_10022C350(&qword_100CD98A0);
  __chkstk_darwin(v61);
  v63 = &v48 - v9;
  v50 = sub_10022C350(&qword_100CD9898);
  v49 = *(v50 - 8);
  __chkstk_darwin(v50);
  v62 = &v48 - v10;
  v11 = sub_10022C350(&qword_100CD9888);
  v52 = *(v11 - 8);
  v53 = v11;
  __chkstk_darwin(v11);
  v51 = &v48 - v12;
  v57 = type metadata accessor for LocationContentView;
  sub_1001495C0(v1, &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + 80);
  v14 = (v13 + 16) & ~v13;
  v15 = swift_allocObject();
  v56 = type metadata accessor for LocationContentView;
  sub_100149618(&v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = static HorizontalAlignment.center.getter();
  type metadata accessor for PinnedScrollableViews();
  LODWORD(v64) = 0;
  sub_10008152C(&qword_100CC0058, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  v17 = v8 + v6[11];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v8 + v6[12];
  KeyPath = swift_getKeyPath();
  v69 = 0;
  *v18 = KeyPath;
  v18[72] = 0;
  *v8 = v16;
  v20 = (v8 + v6[10]);
  *v20 = sub_1007E8AD0;
  v20[1] = v15;
  sub_100006F64(&qword_100CD98C8, &qword_100CD98C0);
  v21 = v63;
  View.navigationDestinationScope()();
  sub_100018144(v8, &qword_100CD98C0);
  v22 = swift_getKeyPath();
  v70 = 0;
  v23 = &v21[*(sub_10022C350(&qword_100CD98B8) + 36)];
  *v23 = v22;
  v23[72] = 0;
  v24 = static Alignment.center.getter();
  v26 = v25;
  v27 = &v21[*(v61 + 36)];
  v28 = v55;
  sub_1007E1364(v27);
  v29 = (v27 + *(sub_10022C350(&qword_100CD98E0) + 36));
  *v29 = v24;
  v29[1] = v26;
  v30 = v58;
  sub_100140210();
  v31 = *(v30 + *(v59 + 36));

  sub_100147C14(v30, type metadata accessor for LocationViewModel);
  v64 = v31;
  sub_1001495C0(v28, &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = v13;
  v59 = v5;
  v32 = v14;
  v33 = swift_allocObject() + v14;
  v34 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100149618(v34, v33);
  v35 = sub_10022C350(&qword_100CD47E0);
  v36 = sub_100149E14();
  v37 = sub_100708038();
  v38 = v63;
  View.onChange<A>(of:initial:_:)();

  sub_100018144(v38, &qword_100CD98A0);
  if (*(v28 + *(v60 + 80)))
  {
    type metadata accessor for TipCoordinator();

    ObservableResolver.resolve<A>(_:)();

    if (v64)
    {
      v39 = sub_10014A168();

      v68 = v39 & 1;
      sub_1001495C0(v28, v34);
      v40 = swift_allocObject();
      sub_100149618(v34, v40 + v32);
      v64 = v61;
      v65 = v35;
      v66 = v36;
      v67 = v37;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v42 = v50;
      v43 = v51;
      v44 = v62;
      View.onChange<A>(of:initial:_:)();

      (*(v49 + 8))(v44, v42);
      v45 = Solarium.init()();
      __chkstk_darwin(v45);
      sub_10022C350(&qword_100CD9890);
      v64 = v42;
      v65 = &type metadata for Bool;
      v66 = OpaqueTypeConformance2;
      v67 = &protocol witness table for Bool;
      swift_getOpaqueTypeConformance2();
      sub_100006F64(&qword_100CD98E8, &qword_100CD9890);
      v46 = v53;
      View.staticIf<A, B>(_:then:)();
      return (*(v52 + 8))(v43, v46);
    }

    __break(1u);
  }

  type metadata accessor for ObservableResolver();
  sub_10008152C(&qword_100CB0468, &type metadata accessor for ObservableResolver);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1007E02A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Edge.Set.bottom.getter();
  KeyPath = swift_getKeyPath();
  v6 = sub_10022C350(&qword_100CD9848);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = sub_10022C350(&qword_100CD9880);
  v8 = a2 + *(result + 36);
  *v8 = v4;
  *(v8 + 8) = KeyPath;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = 0;
  return result;
}

uint64_t sub_1007E0358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v49 = type metadata accessor for LocationFooterView(0);
  __chkstk_darwin(v49);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CD8AB8);
  __chkstk_darwin(v4 - 8);
  v6 = &v43 - v5;
  v7 = type metadata accessor for LocationViewModel();
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v45 = type metadata accessor for LocationFooterViewModel();
  __chkstk_darwin(v45);
  v43 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10022C350(&qword_100CD9928);
  __chkstk_darwin(v12 - 8);
  v48 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v47 = &v43 - v15;
  v16 = type metadata accessor for LocationContentView(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10022C350(&qword_100CD99A8);
  v21 = (v20 - 8);
  __chkstk_darwin(v20);
  v46 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = (&v43 - v24);
  v26 = sub_10014F17C();
  sub_1001495C0(a1, v19);
  v27 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v28 = swift_allocObject();
  sub_100149618(v19, v28 + v27);
  *v25 = v26;
  v25[1] = sub_1007E8BCC;
  v25[2] = v28;
  v29 = v21[12];
  *(v25 + v29) = swift_getKeyPath();
  sub_10022C350(&qword_100CB3278);
  swift_storeEnumTagMultiPayload();
  v30 = v25 + v21[13];
  KeyPath = swift_getKeyPath();
  v51 = 0;
  *v30 = KeyPath;
  v30[72] = 0;
  v32 = v25 + v21[14];
  *v32 = swift_getKeyPath();
  v32[8] = 0;
  sub_100140210();
  sub_1000302D8(&v10[*(v8 + 44)], v6, &qword_100CD8AB8);
  sub_100147C14(v10, type metadata accessor for LocationViewModel);
  if (sub_100024D10(v6, 1, v45) == 1)
  {
    sub_100018144(v6, &qword_100CD8AB8);
    v33 = v47;
    sub_10001B350(v47, 1, 1, v49);
  }

  else
  {
    v34 = v43;
    sub_100149618(v6, v43);
    v35 = v49;
    v36 = v44;
    sub_100149618(v34, &v44[*(v49 + 24)]);
    v45 = *(a1 + 24);
    *v36 = swift_getKeyPath();
    *(v36 + 8) = 0;
    v37 = *(v35 + 20);
    *(v36 + v37) = swift_getKeyPath();
    sub_10022C350(&qword_100CA71B0);
    swift_storeEnumTagMultiPayload();
    *(v36 + *(v35 + 28)) = v45;
    v33 = v47;
    sub_100149618(v36, v47);
    sub_10001B350(v33, 0, 1, v35);
    swift_unknownObjectRetain();
  }

  v38 = v46;
  sub_1000302D8(v25, v46, &qword_100CD99A8);
  v39 = v48;
  sub_1000302D8(v33, v48, &qword_100CD9928);
  v40 = v50;
  sub_1000302D8(v38, v50, &qword_100CD99A8);
  v41 = sub_10022C350(&qword_100CD99B0);
  sub_1000302D8(v39, v40 + *(v41 + 48), &qword_100CD9928);
  sub_100018144(v33, &qword_100CD9928);
  sub_100018144(v25, &qword_100CD99A8);
  sub_100018144(v39, &qword_100CD9928);
  return sub_100018144(v38, &qword_100CD99A8);
}

uint64_t sub_1007E0984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v102 = a4;
  v105 = a3;
  v109 = a5;
  v93 = sub_10022C350(&qword_100CD99B8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v9);
  v11 = &v89 - v10;
  v94 = sub_10022C350(&qword_100CD99C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v100 = v13;
  v97 = sub_10022C350(&qword_100CD99C8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000039BC();
  v99 = v15;
  v96 = sub_10022C350(&qword_100CD99D0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  v98 = v17;
  v108 = sub_10022C350(&qword_100CD99D8);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_100003848();
  v95 = v19;
  sub_10000386C();
  __chkstk_darwin(v20);
  v101 = &v89 - v21;
  v22 = sub_10022C350(&qword_100CD99E0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v23);
  v25 = &v89 - v24;
  v104 = sub_10022C350(&qword_100CD99E8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v26);
  v28 = &v89 - v27;
  v29 = sub_10022C350(&qword_100CD99F0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v30);
  v32 = &v89 - v31;
  v103 = sub_10022C350(&qword_100CD99F8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v33);
  v35 = &v89 - v34;
  v36 = *(a1 + 16);
  v106 = v29;
  v107 = v32;
  if (v36 == 2)
  {
    v90 = a2;
    v37 = a1;
    v38 = *(type metadata accessor for LocationContentView(0) + 72);
    v89 = v6;
    if (*(v6 + v38))
    {
      v91 = v22;
      v92 = v25;
      type metadata accessor for TipCoordinator();

      sub_100087E84();

      if (v111)
      {
        v39 = type metadata accessor for LocationComponentContainerViewModel();
        sub_100003928();
        v41 = v40;
        v42 = a1 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
        v44 = sub_1001C9644(v42 + *(v43 + 20));

        if (v44)
        {
          v45 = 1;
LABEL_10:
          v64 = v92;
          v65 = &v11[*(v93 + 36)];
          KeyPath = swift_getKeyPath();
          v113 = 0;
          *v65 = KeyPath;
          v65[72] = 0;
          v67 = v37;
          v68 = v90;
          v69 = v105;
          sub_1007E2CB0(v67, v102, v11);
          if (v45)
          {
            v70 = 1.0;
          }

          else
          {
            v70 = 0.0;
          }

          v71 = v100;
          sub_10011C0F0(v11, v100, &qword_100CD99B8);
          *(v71 + *(v94 + 36)) = v70;
          v111 = v68;
          v112 = v69;

          if (v45)
          {
            v72 = 12589;
          }

          else
          {
            v72 = 12333;
          }

          v73 = 0xE200000000000000;
          String.append(_:)(*&v72);
          v74 = v111;
          v75 = v112;
          v76 = v99;
          sub_10011C0F0(v71, v99, &qword_100CD99C0);
          v77 = (v76 + *(v97 + 52));
          *v77 = v74;
          v77[1] = v75;
          v78 = swift_getKeyPath();
          v79 = v76;
          v80 = v98;
          sub_10011C0F0(v79, v98, &qword_100CD99C8);
          v81 = v80 + *(v96 + 36);
          *v81 = v78;
          *(v81 + 8) = 0;
          v82 = swift_getKeyPath();
          LOBYTE(v111) = 0;
          v83 = v80;
          v84 = v95;
          sub_10011C0F0(v83, v95, &qword_100CD99D0);
          v85 = v84 + *(v108 + 36);
          *v85 = v82;
          *(v85 + 72) = 0;
          v86 = v101;
          sub_10011C0F0(v84, v101, &qword_100CD99D8);
          sub_1000302D8(v86, v28, &qword_100CD99D8);
          swift_storeEnumTagMultiPayload();
          sub_1001CC98C();
          sub_1001CC900();
          v87 = v107;
          _ConditionalContent<>.init(storage:)();
          sub_1000302D8(v87, v64, &qword_100CD99F0);
          swift_storeEnumTagMultiPayload();
          sub_1001CC874();
          _ConditionalContent<>.init(storage:)();
          sub_100018144(v87, &qword_100CD99F0);
          sub_10000FEC4();
          return sub_100018144(v62, v63);
        }

        sub_100087E84();

        if (v111)
        {
          v45 = sub_1001C9644(v42 + *(v41 + 72) + *(v39 + 20));

          goto LABEL_10;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    type metadata accessor for ObservableResolver();
    sub_10008152C(&qword_100CB0468, &type metadata accessor for ObservableResolver);
    sub_1000164CC();
    EnvironmentObject.error()();
    __break(1u);
  }

  else if (v36 == 1)
  {
    v46 = type metadata accessor for LocationComponentContainerViewModel();
    sub_100003810(v46);
    sub_1007E20FC(a1 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), 0, v102, v35);
    swift_getKeyPath();
    v110 = 0;
    v48 = sub_10022C350(&qword_100CD9A40);
    sub_1000216C8(v48);
    *(v49 + 72) = 0;
    swift_getKeyPath();
    v50 = sub_10022C350(&qword_100CD9A30);
    sub_1000216C8(v50);
    *(v51 + 8) = 1;
    swift_getKeyPath();
    v113 = 0;
    v52 = sub_10022C350(&qword_100CD9A20);
    sub_1000216C8(v52);
    *(v53 + 72) = 0;
    v54 = &v35[*(sub_10022C350(&qword_100CD9A10) + 36)];
    *v54 = a1;
    *(v54 + 1) = a2;
    *(v54 + 2) = v105;
    v55 = swift_getKeyPath();
    LOBYTE(v111) = 0;
    *(v54 + 3) = v55;
    v54[96] = 0;
    v56 = *(type metadata accessor for LocationContentRowHeightModifier(0) + 24);
    *&v54[v56] = swift_getKeyPath();
    sub_10022C350(&qword_100CAD618);
    swift_storeEnumTagMultiPayload();
    v57 = swift_getKeyPath();

    v58 = static Alignment.bottom.getter();
    v59 = &v35[*(v103 + 36)];
    *v59 = v57;
    v59[1] = v58;
    v59[2] = v60;
    sub_1000302D8(v35, v28, &qword_100CD99F8);
    swift_storeEnumTagMultiPayload();
    sub_1001CC98C();
    sub_1001CC900();
    v61 = v107;
    _ConditionalContent<>.init(storage:)();
    sub_1000302D8(v61, v25, &qword_100CD99F0);
    swift_storeEnumTagMultiPayload();
    sub_1001CC874();
    _ConditionalContent<>.init(storage:)();
    sub_100018144(v61, &qword_100CD99F0);
    v62 = sub_1000053B8();
    return sub_100018144(v62, v63);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007E1364@<X0>(uint64_t a1@<X8>)
{
  sub_10022C350(&qword_100CD4930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2C3F0;
  *(inited + 32) = 0;
  sub_10022C350(&qword_100CAC480);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100A2C3F0;
  *(v3 + 32) = xmmword_100A3BB70;
  *(inited + 40) = v3;
  sub_10022C350(&qword_100CCB7A0);
  v4 = Dictionary.init(dictionaryLiteral:)();
  sub_1001498B4(v4, a1);
}

uint64_t sub_1007E1444()
{
  v0 = type metadata accessor for LocationViewModel();
  v1 = v0 - 8;
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100140210();
  v4 = *&v3[*(v1 + 36)];

  sub_100147C14(v3, type metadata accessor for LocationViewModel);
  v5 = *(v4 + 16);

  if (v5)
  {
    return sub_100192DF0();
  }

  return result;
}

uint64_t sub_1007E1508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = a1;
  v2 = type metadata accessor for Location.Identifier();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocationViewModel();
  v7 = v6 - 8;
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);
  sub_100140210();
  (*(v3 + 16))(v5, v9, v2);
  sub_100147C14(v9, type metadata accessor for LocationViewModel);
  sub_10008152C(&qword_100CA38C8, &type metadata accessor for Location.Identifier);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  v12 = v11;

  v27 = v10;
  v28 = v12;
  (*(v3 + 8))(v5, v2);
  v13._object = 0x8000000100ADF480;
  v13._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v13);
  sub_100140210();
  v14 = *&v9[*(v7 + 36)];

  sub_100147C14(v9, type metadata accessor for LocationViewModel);
  v15 = *(v14 + 16);

  if (v15)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v15)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  v18 = v17;
  String.append(_:)(*&v16);

  v19 = v27;
  v20 = v28;
  v21 = sub_10022C350(&qword_100CD9888);
  v22 = v25;
  (*(*(v21 - 8) + 16))(v25, v26, v21);
  result = sub_10022C350(&qword_100CD9890);
  v24 = (v22 + *(result + 52));
  *v24 = v19;
  v24[1] = v20;
  return result;
}

uint64_t sub_1007E17E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v19 = a2;
  v3 = sub_10022C350(&qword_100CD9948);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  KeyPath = swift_getKeyPath();
  v18 = KeyPath;
  v22 = 0;
  v21 = a1;
  v20 = a1;
  sub_10022C350(&qword_100CD9950);
  sub_10022C350(&qword_100CD9958);
  sub_100708824();
  sub_1007E8834();
  sub_1007E891C();
  StaticIf<>.init(_:then:else:)();
  v11 = swift_getKeyPath();
  v23 = 0;
  v12 = *(v4 + 16);
  v12(v6, v9, v3);
  v24[0] = KeyPath;
  LOBYTE(v24[9]) = 0;
  v13 = v19;
  memcpy(v19, v24, 0x49uLL);
  v14 = sub_10022C350(&qword_100CD9998);
  v12(&v13[*(v14 + 48)], v6, v3);
  v15 = *(v14 + 64);
  v25[0] = v11;
  LOBYTE(v25[9]) = 0;
  memcpy(&v13[v15], v25, 0x49uLL);
  sub_1007E8A00(v24, v28);
  sub_1007E8A00(v25, v28);
  v16 = *(v4 + 8);
  v16(v9, v3);
  v26[0] = v11;
  v27 = 0;
  sub_1007E8A38(v26);
  v16(v6, v3);
  v28[0] = v18;
  v29 = 0;
  return sub_1007E8A38(v28);
}

uint64_t sub_1007E1AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationContentView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  sub_100140210();
  v7 = type metadata accessor for LazyLocationGridViewContainer(0);
  sub_1007DBC30();
  v8 = *(a1 + 16);
  v9 = *(a1 + 48);
  v10 = *(a1 + 136);
  v11 = v7[10];
  v21 = *(a1 + 24);
  sub_100035B30(a1 + 56, a2 + v11);
  *(a2 + v7[6]) = v8;
  *(a2 + v7[7]) = v9;
  *(a2 + v7[8]) = v10;
  *(a2 + v7[9]) = v21;
  v12 = a2 + v7[11];
  v22 = 0;
  *v12 = swift_getKeyPath();
  *(v12 + 72) = 0;
  v13 = a2 + v7[12];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  sub_1001495C0(a1, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_100149618(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);

  swift_unknownObjectRetain();
  v16 = static Alignment.center.getter();
  v18 = v17;
  result = sub_10022C350(&qword_100CD9950);
  v20 = (a2 + *(result + 36));
  *v20 = sub_1007EA890;
  v20[1] = v15;
  v20[2] = v16;
  v20[3] = v18;
  return result;
}

uint64_t sub_1007E1CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LocationContentView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = a2 + *(sub_10022C350(&qword_100CD9990) + 36);
  v15[8] = 0;
  *v7 = swift_getKeyPath();
  *(v7 + 72) = 0;
  sub_1007E1E60(a1, a2);
  sub_1001495C0(a1, &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_100149618(&v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
  v10 = static Alignment.center.getter();
  v12 = v11;
  result = sub_10022C350(&qword_100CD9958);
  v14 = (a2 + *(result + 36));
  *v14 = sub_1007E8A68;
  v14[1] = v9;
  v14[2] = v10;
  v14[3] = v12;
  return result;
}

__n128 sub_1007E1E60@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100140210();
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v6 = *(a1 + 136);
  v7 = type metadata accessor for LocationGridView();
  v15 = *(a1 + 24);
  sub_100035B30(a1 + 56, a2 + v7[9]);

  swift_unknownObjectRetain();
  sub_1007DBC30();
  v8 = (a2 + v7[11]);
  type metadata accessor for ObservableResolver();
  sub_10008152C(&qword_100CB0468, &type metadata accessor for ObservableResolver);
  *v8 = EnvironmentObject.init()();
  v8[1] = v9;
  v10 = a2 + v7[12];
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  v11 = a2 + v7[13];
  *v11 = swift_getKeyPath();
  *(v11 + 8) = 0;
  v12 = a2 + v7[14];
  *v12 = swift_getKeyPath();
  *(v12 + 72) = 0;
  v13 = a2 + v7[15];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *(a2 + v7[5]) = v4;
  *(a2 + v7[6]) = v5;
  *(a2 + v7[7]) = v6;
  result = v15;
  *(a2 + v7[8]) = v15;
  return result;
}

uint64_t sub_1007E2000@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10022C350(&qword_100CD99A0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v6);
  sub_10000CC9C();
  if (*(*a1 + 16))
  {
    sub_1001498B4(*a1, v2);
    sub_10011C0F0(v2, a2, &qword_100CD99A0);
    return sub_10001B350(a2, 0, 1, v5);
  }

  else
  {

    return sub_10001B350(a2, 1, 1, v5);
  }
}

uint64_t sub_1007E20FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a3;
  v110 = a2;
  v7 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v7);
  v105 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LocationComponentContainerView(0);
  __chkstk_darwin(v9);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v104 = &v89 - v13;
  v103 = sub_10022C350(&qword_100CD9A98);
  __chkstk_darwin(v103);
  v15 = &v89 - v14;
  v16 = type metadata accessor for Location.Identifier();
  v112 = *(v16 - 8);
  v113 = v16;
  __chkstk_darwin(v16);
  v111 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  *&v109 = &v89 - v19;
  v20 = type metadata accessor for LocationViewModel();
  __chkstk_darwin(v20);
  v100 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v99 = &v89 - v23;
  __chkstk_darwin(v24);
  v98 = &v89 - v25;
  __chkstk_darwin(v26);
  v28 = &v89 - v27;
  if (!*(v4 + *(type metadata accessor for LocationContentView(0) + 72)))
  {
    goto LABEL_15;
  }

  v101 = v20;
  v106 = v15;
  v107 = a4;
  type metadata accessor for TipCoordinator();

  ObservableResolver.resolve<A>(_:)();

  if (!v120)
  {
    __break(1u);
LABEL_15:
    type metadata accessor for ObservableResolver();
    sub_10008152C(&qword_100CB0468, &type metadata accessor for ObservableResolver);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  v96 = *(v7 + 20);
  v97 = sub_1001C9644(a1 + v96);

  sub_100140210();
  v93 = a1;
  v29 = v112;
  v30 = *(v112 + 16);
  v89 = v112 + 16;
  v108 = v30;
  v31 = v109;
  v32 = v113;
  (v30)(v109, v28);
  sub_100147C14(v28, type metadata accessor for LocationViewModel);
  sub_10008152C(&qword_100CA38C8, &type metadata accessor for Location.Identifier);
  v120 = dispatch thunk of CustomStringConvertible.description.getter();
  v121 = v33;
  v34 = *(v29 + 8);
  v112 = v29 + 8;
  v94 = v34;
  v34(v31, v32);
  v35._countAndFlagsBits = 45;
  v35._object = 0xE100000000000000;
  String.append(_:)(v35);
  v36 = v93;
  v37._countAndFlagsBits = sub_1001B3DAC();
  String.append(_:)(v37);

  v95 = v120;
  v96 = v121;
  v91 = type metadata accessor for LocationComponentContainerViewModel;
  v38 = v36;
  v39 = v105;
  sub_1001495C0(v38, v105);
  v92 = *(v4 + 48);
  v93 = *(v4 + 136);
  v109 = *(v4 + 24);
  sub_100035B30(v4 + 56, &v120);
  swift_unknownObjectRetain();
  v40 = v98;
  sub_100140210();
  v41 = v101;
  v90 = *(v40 + *(v101 + 68));
  sub_100147C14(v40, type metadata accessor for LocationViewModel);
  v42 = v99;
  sub_100140210();
  v108(v111, v42, v32);
  sub_100147C14(v42, type metadata accessor for LocationViewModel);
  v43 = *(v4 + 16);

  v44 = v100;
  sub_100140210();
  v45 = *(v44 + *(v41 + 92));
  sub_100147C14(v44, type metadata accessor for LocationViewModel);
  v46 = &v11[v9[12]];
  v114 = 0;
  v115 = 0;
  v116 = 1;
  sub_10022C350(&qword_100CC07D8);
  State.init(wrappedValue:)();
  v47 = v118;
  v48 = v119;
  *v46 = v117;
  v46[16] = v47;
  *(v46 + 3) = v48;
  v49 = &v11[v9[13]];
  *v49 = sub_1001CA728;
  *(v49 + 1) = 0;
  v49[16] = 0;
  v50 = &v11[v9[14]];
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *v50 = sub_1001CADE8;
  *(v50 + 1) = v51;
  v50[16] = 0;
  v52 = &v11[v9[15]];
  *v52 = sub_1001CACE4;
  *(v52 + 1) = 0;
  v52[16] = 0;
  v53 = &v11[v9[16]];
  LOBYTE(v114) = 0;
  State.init(wrappedValue:)();
  v54 = *(&v117 + 1);
  *v53 = v117;
  *(v53 + 1) = v54;
  v55 = v9[17];
  *&v11[v55] = swift_getKeyPath();
  sub_10022C350(&qword_100CA2D60);
  swift_storeEnumTagMultiPayload();
  v56 = &v11[v9[18]];
  *v56 = swift_getKeyPath();
  v56[8] = 0;
  v57 = &v11[v9[19]];
  *v57 = swift_getKeyPath();
  v57[8] = 0;
  v58 = v9[20];
  *&v11[v58] = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  swift_storeEnumTagMultiPayload();
  v59 = &v11[v9[21]];
  *v59 = swift_getKeyPath();
  v59[8] = 0;
  v60 = &v11[v9[22]];
  *v60 = swift_getKeyPath();
  v60[8] = 0;
  v61 = &v11[v9[23]];
  *v61 = swift_getKeyPath();
  v61[8] = 0;
  v62 = &v11[v9[24]];
  *v62 = swift_getKeyPath();
  v62[8] = 0;
  v63 = &v11[v9[25]];
  *v63 = swift_getKeyPath();
  v63[8] = 0;
  v64 = &v11[v9[26]];
  *v64 = swift_getKeyPath();
  v64[8] = 0;
  v65 = &v11[v9[27]];
  *v65 = swift_getKeyPath();
  v65[8] = 0;
  v66 = &v11[v9[28]];
  type metadata accessor for ObservableResolver();
  sub_10008152C(&qword_100CB0468, &type metadata accessor for ObservableResolver);
  *v66 = EnvironmentObject.init()();
  v66[1] = v67;
  *&v11[v9[30]] = 0x4024000000000000;
  *&v11[v9[31]] = 0xC024000000000000;
  sub_1001495C0(v39, v11);
  *&v11[v9[5]] = v109;
  sub_100035B30(&v120, &v11[v9[6]]);
  v11[v9[7]] = v90;
  v108(&v11[v9[8]], v111, v113);
  *&v11[v9[9]] = v43;
  v11[v9[10]] = v45;
  v68 = &v11[v9[11]];
  v69 = v102;
  *v68 = v110;
  *(v68 + 1) = v69;
  v70 = *(v92 + 56);

  v71 = 0;
  if ((DeviceIsVerySlow() & 1) == 0)
  {
    v71 = static Animation.linear(duration:)();
  }

  v72 = v106;
  if (qword_100CA1F38 != -1)
  {
    swift_once();
  }

  v73 = byte_100D8FB88 | byte_100D8FB89 | byte_100D8FB8A;
  type metadata accessor for WireframeContentManager();
  swift_allocObject();
  v74 = v93;

  v75 = sub_1001CB2F4(v70, v74, v71, v110, v69, (v73 & 1) == 0);
  type metadata accessor for WireframeContentManagerReference();
  v76 = swift_allocObject();
  *(v76 + 16) = v75;
  v114 = v76;
  State.init(wrappedValue:)();
  v94(v111, v113);
  sub_100006F14(&v120);
  sub_100147C14(v39, type metadata accessor for LocationComponentContainerViewModel);
  v77 = *(&v117 + 1);
  v78 = &v11[v9[29]];
  *v78 = v117;
  *(v78 + 1) = v77;
  v79 = v104;
  sub_100149618(v11, v104);
  v80 = v97;
  if (v97)
  {
    v81 = 1.0;
  }

  else
  {
    v81 = 0.0;
  }

  sub_100149618(v79, v72);
  *(v72 + *(v103 + 36)) = v81;
  v82 = v107;
  v120 = v95;
  v121 = v96;
  if (v80)
  {
    v83 = 12589;
  }

  else
  {
    v83 = 12333;
  }

  v84 = 0xE200000000000000;
  String.append(_:)(*&v83);
  v85 = v120;
  v86 = v121;
  sub_10011C0F0(v72, v82, &qword_100CD9A98);
  result = sub_10022C350(&qword_100CD9A50);
  v88 = (v82 + *(result + 52));
  *v88 = v85;
  v88[1] = v86;
  return result;
}

void sub_1007E2CB0(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v31 = a2;
  v5 = sub_10022C350(&qword_100CD9AA0);
  __chkstk_darwin(v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  __chkstk_darwin(v11);
  v13 = &v30 - v12;
  __chkstk_darwin(v14);
  v16 = &v30 - v15;
  v17 = *(a1 + 16);
  if (v17)
  {
    v30 = a3;
    v18 = *(type metadata accessor for LocationComponentContainerViewModel() - 8);
    v19 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    sub_1007E20FC(v19, 0, v31, v16);
    KeyPath = swift_getKeyPath();
    v21 = static Alignment.bottomLeading.getter();
    v22 = &v16[*(v5 + 36)];
    *v22 = KeyPath;
    v22[1] = v21;
    v22[2] = v23;
    if (v17 != 1)
    {
      sub_1007E20FC(v19 + *(v18 + 72), 1, v31, v13);
      v24 = swift_getKeyPath();
      v25 = static Alignment.bottomTrailing.getter();
      v26 = &v13[*(v5 + 36)];
      *v26 = v24;
      v26[1] = v25;
      v26[2] = v27;
      sub_1000302D8(v16, v10, &qword_100CD9AA0);
      sub_1000302D8(v13, v7, &qword_100CD9AA0);
      v28 = v30;
      sub_1000302D8(v10, v30, &qword_100CD9AA0);
      v29 = sub_10022C350(&qword_100CD9AA8);
      sub_1000302D8(v7, v28 + *(v29 + 48), &qword_100CD9AA0);
      sub_100018144(v13, &qword_100CD9AA0);
      sub_100018144(v16, &qword_100CD9AA0);
      sub_100018144(v7, &qword_100CD9AA0);
      sub_100018144(v10, &qword_100CD9AA0);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_1007E2F48()
{
  type metadata accessor for SceneResizeMonitor();
  swift_allocObject();
  return sub_10013EA50();
}

double sub_1007E2F80()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for GridViewIdentifierModifier(0) + 28);
  v6 = *v5;
  if (*(v5 + 48) == 1)
  {
    return *v5;
  }

  v8 = *(v5 + 16);
  v14 = *(v5 + 8);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  v11 = *(v5 + 40);

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_100109A54(v6, v14, v8, v9, v10, v11, 0);
  (*(v2 + 8))(v4, v1);
  return v15;
}

uint64_t sub_1007E3110@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GridViewIdentifierModifier(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v20[1] = sub_1007E2F80();
  sub_1001495C0(v1, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_100149618(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_10022C350(&qword_100CDA030);
  sub_100006F64(&qword_100CDA038, &qword_100CDA030);
  sub_10013E1CC();
  View.onChange<A>(of:initial:_:)();

  if (qword_100CA27E0 != -1)
  {
    swift_once();
  }

  v9 = qword_100D90DF0;
  v8 = *algn_100D90DF8;
  v10 = a1 + *(sub_10022C350(&qword_100CDA040) + 36);
  type metadata accessor for ExtendedAppLaunchState(0);
  sub_10008152C(&qword_100CB84D0, type metadata accessor for ExtendedAppLaunchState);
  *v10 = Environment.init<A>(_:)();
  *(v10 + 8) = v11 & 1;
  v12 = type metadata accessor for AppStateTransitionModifier();
  v13 = *(v12 + 20);
  *(v10 + v13) = swift_getKeyPath();
  sub_10022C350(&unk_100CE1000);
  swift_storeEnumTagMultiPayload();
  v14 = (v10 + *(v12 + 24));
  *v14 = v9;
  v14[1] = v8;

  v15 = sub_1007E3580();
  v17 = v16;
  result = sub_10022C350(&qword_100CDA048);
  v19 = (a1 + *(result + 52));
  *v19 = v15;
  v19[1] = v17;
  return result;
}

uint64_t sub_1007E3410(uint64_t a1, double *a2)
{
  v2 = *a2;
  type metadata accessor for GridViewIdentifierModifier(0);
  type metadata accessor for SceneResizeMonitor();
  sub_10008152C(&unk_100CD9D50, type metadata accessor for SceneResizeMonitor);
  v3 = *(StateObject.wrappedValue.getter() + 16);

  if (v3 != v2)
  {
    StateObject.wrappedValue.getter();
    sub_1007E3528(1);
  }

  *(StateObject.wrappedValue.getter() + 16) = v2;
}

uint64_t sub_1007E3528(char a1)
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  *(v3 + 32) = a1;

  sub_1003BA6D4();
}

uint64_t sub_1007E3580()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1007E37BC())
  {
    type metadata accessor for Location.Identifier();
    sub_10008152C(&qword_100CA38C8, &type metadata accessor for Location.Identifier);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v5;
    v6._countAndFlagsBits = 45;
    v6._object = 0xE100000000000000;
    String.append(_:)(v6);
    v7 = v0 + *(type metadata accessor for GridViewIdentifierModifier(0) + 20);
    v8 = *v7;
    if (*(v7 + 8) != 1)
    {

      static os_log_type_t.fault.getter();
      v10 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000EBD74(v8, 0);
      (*(v2 + 8))(v4, v1);
    }

    v11._countAndFlagsBits = Double.description.getter();
    String.append(_:)(v11);

    return v13;
  }

  else
  {
    type metadata accessor for Location.Identifier();
    sub_10008152C(&qword_100CA38C8, &type metadata accessor for Location.Identifier);
    return dispatch thunk of CustomStringConvertible.description.getter();
  }
}

uint64_t sub_1007E37BC()
{
  type metadata accessor for GridViewIdentifierModifier(0);
  type metadata accessor for SceneResizeMonitor();
  sub_10008152C(&unk_100CD9D50, type metadata accessor for SceneResizeMonitor);
  v0 = *(StateObject.wrappedValue.getter() + 16);

  v1 = sub_1007E2F80();
  v2 = [objc_opt_self() sharedApplication];
  UIApplication.expectedWindow.getter();

  sub_1000161C0(v8, v8[3]);
  v3 = dispatch thunk of WindowType.traitCollection.getter();
  v4 = [v3 horizontalSizeClass];

  sub_100006F14(v8);
  if (v4 == 1)
  {
    v5 = 0;
  }

  else if (v0 == v1 && (StateObject.wrappedValue.getter(), v6 = sub_1007E3974(), , (v6 & 1) == 0))
  {
    v5 = 1;
  }

  else
  {
    StateObject.wrappedValue.getter();
    v5 = sub_1007E39B4();
  }

  return v5 & 1;
}

uint64_t sub_1007E3974()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  return *(v1 + 32);
}

uint64_t sub_1007E39B4()
{
  v1 = *(v0 + 32);
  swift_beginAccess();
  return *(v1 + 32);
}

uint64_t sub_1007E39F8()
{
  sub_10022C350(&qword_100CA2CF0);
  sub_10022C350(&qword_100CD9FB0);
  sub_100006F64(&qword_100CAF788, &qword_100CA2CF0);
  sub_1007E9AB0();
  return Menu.init(content:label:)();
}

uint64_t sub_1007E3AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1007E3C4C();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  swift_unknownObjectRetain();

  sub_10022C350(&qword_100CD9FC0);
  sub_10022C350(&qword_100CA5528);
  sub_100006F64(&qword_100CD9FC8, &qword_100CD9FC0);
  sub_100006F64(&qword_100CA5548, &qword_100CA5528);
  sub_1007E9B6C();
  return ForEach<>.init(_:content:)();
}

_UNKNOWN **sub_1007E3C4C()
{
  sub_1006A8314(0, 25, 0);
  v0 = 0;
  v1 = _swiftEmptyArrayStorage;
  v2 = _swiftEmptyArrayStorage[2];
  do
  {
    v3 = *(&off_100C43088 + v0 + 32);
    v6 = v1;
    v4 = v1[3];
    if (v2 >= v4 >> 1)
    {
      sub_1006A8314((v4 > 1), v2 + 1, 1);
      v1 = v6;
    }

    ++v0;
    v1[2] = v2 + 1;
    *(v1 + v2++ + 32) = v3;
  }

  while (v0 != 25);
  sub_10035DE18(v1);
  return &off_100C45060;
}

uint64_t sub_1007E3D28(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  swift_unknownObjectRetain();

  return Button.init(action:label:)();
}

uint64_t sub_1007E3DFC@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 != 25)
  {
    sub_10030D368(a1);
  }

  sub_10002D5A4();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1007E3ED0@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1007E3F50@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

unint64_t sub_1007E3F90(char a1)
{
  if (a1 == 25)
  {
    return 0xD000000000000013;
  }

  else
  {
    return sub_10030D368(a1);
  }
}

unint64_t sub_1007E3FD4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1007E3F90(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_1007E400C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1007E4170(*v2);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v5 = sub_10022C350(&qword_100CDA080);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = sub_10022C350(&qword_100CDA088);
  return memcpy((a2 + *(v6 + 36)), __src, 0x70uLL);
}

uint64_t sub_1007E4170(uint64_t a1)
{
  v2 = type metadata accessor for ContentSizeCategory();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v9 = sub_10022C350(&qword_100CA5008);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for LocationComponentViewModel();
  __chkstk_darwin(v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v37 - v16;
  __chkstk_darwin(v18);
  v20 = &v37 - v19;
  if (*(a1 + 16) != 1)
  {
    return 0;
  }

  sub_1003DFCEC(a1, v11);
  v21 = type metadata accessor for LocationComponentContainerViewModel();
  if (sub_100024D10(v11, 1, v21) != 1)
  {
    sub_1001495C0(&v11[*(v21 + 20)], v17);
    sub_100147C14(v11, type metadata accessor for LocationComponentContainerViewModel);
    sub_100149618(v17, v20);
    sub_1001495C0(v20, v14);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      type metadata accessor for LocationContentRowHeightModifier(0);
      sub_10009ECC8();
      (*(v3 + 32))(v5, v8, v2);
      v22 = (*(v3 + 88))(v5, v2);
      if (v22 == enum case for ContentSizeCategory.extraSmall(_:) || v22 == enum case for ContentSizeCategory.small(_:) || v22 == enum case for ContentSizeCategory.medium(_:) || v22 == enum case for ContentSizeCategory.large(_:) || v22 == enum case for ContentSizeCategory.extraLarge(_:) || v22 == enum case for ContentSizeCategory.extraExtraLarge(_:) || v22 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        goto LABEL_41;
      }

      if (v22 != enum case for ContentSizeCategory.accessibilityMedium(_:) && v22 != enum case for ContentSizeCategory.accessibilityLarge(_:) && v22 != enum case for ContentSizeCategory.accessibilityExtraLarge(_:) && v22 != enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) && v22 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v3 + 8))(v5, v2);
LABEL_41:
        sub_1007E45C8();
        v36 = v35;
        sub_100147C14(v20, type metadata accessor for LocationComponentViewModel);
        v33 = v36;
        sub_100147C14(v14, type metadata accessor for LocationComponentViewModel);
        return v33;
      }
    }

    sub_100147C14(v20, type metadata accessor for LocationComponentViewModel);
    sub_100147C14(v14, type metadata accessor for LocationComponentViewModel);
    return 0;
  }

  sub_100018144(v11, &qword_100CA5008);
  return 0;
}

void *sub_1007E45C8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  memcpy(__dst, (v0 + 24), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v11, (v0 + 24), sizeof(v11));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v5 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8);
    (*(v2 + 8))(v4, v1);
  }

  memcpy(v12, v11, sizeof(v12));
  sub_1000EF898();
  memcpy(v10, (v0 + 24), 0x49uLL);
  if (v10[72])
  {
    return memcpy(v9, (v0 + 24), sizeof(v9));
  }

  static os_log_type_t.fault.getter();
  v7 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_100018144(v10, &qword_100CB71A8);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1007E485C(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  sub_1007E9D1C();
  v5 = type metadata accessor for _VariadicView.Tree();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v25 - v10;
  v28 = type metadata accessor for EnvironmentValues();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v14 = *(a1 + 36);
  memcpy(__dst, (v2 + v14), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v32, (v2 + v14), sizeof(v32));
    v15 = v2;
  }

  else
  {
    v25[1] = __dst[0];

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    v26 = v2;
    v17 = v16;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8);
    v18 = v13;
    v15 = v26;
    (*(v27 + 8))(v18, v28);
  }

  v19 = v32[5];
  v32[0] = static Alignment.center.getter();
  v32[1] = v20;
  v32[2] = v19;
  LOBYTE(v32[3]) = 0;
  v32[4] = v19;
  LOBYTE(v32[5]) = 0;
  __chkstk_darwin(v32[0]);
  v21 = *(v29 + 24);
  v25[-4] = v4;
  v25[-3] = v21;
  v25[-2] = v15;
  _VariadicView.Tree.init(_:content:)();
  v30 = sub_1007E9D70();
  v31 = v21;
  WitnessTable = swift_getWitnessTable();
  sub_1000833D8(v8, v5, WitnessTable);
  v23 = *(v6 + 8);
  v23(v8, v5);
  sub_1000833D8(v11, v5, WitnessTable);
  return (v23)(v11, v5);
}

uint64_t sub_1007E4C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = type metadata accessor for EnvironmentValues();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 24);
  v24 = *(a1 + 16);
  v8 = type metadata accessor for HStack();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v22 - v13;
  v15 = *(a1 + 36);
  memcpy(__dst, (v2 + v15), 0x49uLL);
  if (__dst[9])
  {
    v16 = memcpy(v26, (v2 + v15), sizeof(v26));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    v22 = v4;
    v18 = v17;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8);
    v16 = (*(v23 + 8))(v6, v22);
  }

  __chkstk_darwin(v16);
  *(&v22 - 4) = v24;
  *(&v22 - 3) = v7;
  *(&v22 - 2) = v2;
  static VerticalAlignment.center.getter();
  HStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_1000833D8(v11, v8, WitnessTable);
  v20 = *(v9 + 8);
  v20(v11, v8);
  sub_1000833D8(v14, v8, WitnessTable);
  return (v20)(v14, v8);
}

uint64_t sub_1007E4F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  __chkstk_darwin(a1);
  sub_1000037D8();
  sub_10000CC9C();
  sub_1000833D8(v7, v8, v9);
  sub_1000833D8(v3, a2, a3);
  return (*(v6 + 8))(v3, a2);
}

double sub_1007E5008@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *a1;
  v10 = *(a1 + 8);
  memcpy(__dst, a2, 0x49uLL);
  v23 = v7;
  if (__dst[9])
  {
    v31 = *(a2 + 40);
    v11 = *(a2 + 24);
    v29 = *(a2 + 8);
    v30 = v11;
    v32 = *(a2 + 56);
    v28 = __dst[0];
    v26 = *(a2 + 8);
    v27[0] = *(a2 + 24);
    v27[1] = *(a2 + 40);
    v27[2] = *(a2 + 56);
  }

  else
  {
    sub_1000302D8(__dst, &v28, &qword_100CD9F98);
    sub_1000302D8(__dst, &v28, &qword_100CD9F98);
    static os_log_type_t.fault.getter();
    HIDWORD(v22) = v10;
    v12 = v6;
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CD9F98);
    v14 = *(v7 + 8);
    v14(v9, v12);
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    LOBYTE(v10) = BYTE4(v22);
    os_log(_:dso:log:_:_:)();

    v6 = v12;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CD9F98);
    v14(v9, v12);
  }

  if (!BYTE8(v27[1]))
  {
    v34 = *(a2 + 88);
    v33 = *(a2 + 80);
    if (v34 != 1)
    {

      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100018144(&v33, &qword_100CC09F8);
      (*(v23 + 8))(v9, v6);
    }
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v17 = v25;
  v18 = v26;
  v19 = *(&v26 + 1);
  v20 = v27[0];
  *a3 = v24;
  *(a3 + 8) = v10;
  *(a3 + 16) = v17;
  *(a3 + 24) = v18;
  *(a3 + 32) = v19;
  *(a3 + 40) = v20;
  result = *(v27 + 1);
  *(a3 + 48) = *(v27 + 8);
  return result;
}

double sub_1007E53E0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *(a1 + 8);
  memcpy(__dst, a2, 0x49uLL);
  if (__dst[9])
  {
    v21 = *(a2 + 8);
    v22 = *(a2 + 24);
    v12 = *(a2 + 56);
    v23 = *(a2 + 40);
    v24 = v12;
    v20 = __dst[0];
  }

  else
  {
    sub_1000302D8(__dst, &v20, &qword_100CD9F98);
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CD9F98);
    (*(v7 + 8))(v9, v6);
  }

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = v25;
  v15 = v26;
  v16 = v27;
  v17 = v28;
  *a3 = v10;
  *(a3 + 8) = v11;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  *(a3 + 32) = v16;
  *(a3 + 40) = v17;
  result = *&v29;
  *(a3 + 48) = v29;
  return result;
}

uint64_t sub_1007E5618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10022C350(&qword_100CA4060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  v11 = static Edge.Set.leading.getter();
  *(inited + 32) = v11;
  v12 = static Edge.Set.trailing.getter();
  *(inited + 33) = v12;
  v13 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v11)
  {
    v13 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v12)
  {
    v13 = Edge.Set.init(rawValue:)();
  }

  if (*(v3 + 72))
  {
    v27 = *(v3 + 8);
    v28 = *(v3 + 24);
    v29 = *(v3 + 40);
    v30 = *(v3 + 56);
  }

  else
  {
    sub_1007E9E2C(v3, v26);
    static os_log_type_t.fault.getter();
    v14 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1007E9E64(v3);
    (*(v7 + 8))(v9, v6);
  }

  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = sub_10022C350(&qword_100CDA070);
  (*(*(v23 - 8) + 16))(a2, a1, v23);
  result = sub_10022C350(&qword_100CDA078);
  v25 = a2 + *(result + 36);
  *v25 = v13;
  *(v25 + 8) = v16;
  *(v25 + 16) = v18;
  *(v25 + 24) = v20;
  *(v25 + 32) = v22;
  *(v25 + 40) = 0;
  return result;
}

void sub_1007E5928(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v1 + 72))
  {
    v9 = *(v1 + 8);
    v10 = *(v1 + 24);
    v11 = *(v1 + 40);
    v12 = *(v1 + 56);
  }

  else
  {
    sub_1007E8A00(v1, v8);
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1007E8A38(v1);
    (*(v4 + 8))(v6, v3);
  }

  *a1 = v12;
  *(a1 + 8) = 0;
}

void *sub_1007E5AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a1;
  v54 = a2;
  v49 = sub_10022C350(&qword_100CDA090);
  __chkstk_darwin(v49);
  v55 = &v48 - v4;
  v51 = sub_10022C350(&qword_100CDA098);
  __chkstk_darwin(v51);
  v6 = &v48 - v5;
  v7 = type metadata accessor for EnvironmentValues();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(v2 + 24);
  v71 = *(v2 + 8);
  v72 = v12;
  v13 = *(v2 + 56);
  v73 = *(v2 + 40);
  *v74 = v13;
  v56 = *(v2 + 72);
  if (v56)
  {
    v14 = *(v2 + 24);
    *&v67[1] = *(v2 + 8);
    *&v67[3] = v14;
    v15 = *(v2 + 56);
    *&v67[5] = *(v2 + 40);
    *&v67[7] = v15;
    v67[0] = v11;
  }

  else
  {
    sub_1007E9E94(v2, v68);
    sub_1007E9E94(v2, v68);
    sub_1007E9E94(v2, v68);
    sub_1007E9E94(v2, v68);
    sub_1007E9E94(v2, v68);
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1007E9ECC(v2);
    (*(v8 + 8))(v10, v7);
  }

  memcpy(v70, v67, sizeof(v70));
  v17 = sub_1000EF898();
  v52 = v7;
  v53 = v6;
  if (v56)
  {
    v66 = *v74;
    v63 = v71;
    v64 = v72;
    v65 = v73;
    v62 = v11;
    v18 = v74[0];
    *&v68[1] = v71;
    *&v68[3] = v72;
    *&v68[5] = v73;
    *&v68[7] = *v74;
  }

  else
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1007E9ECC(v2);
    v48 = v8;
    v20 = *(v8 + 8);
    v20(v10, v7);
    v18 = *&v66;
    static os_log_type_t.fault.getter();
    v21 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1007E9ECC(v2);
    v20(v10, v7);
    v8 = v48;
  }

  if ((v17 - (v18 + v18) - *&v68[5]) * 0.5 > 0.0)
  {
    v22 = (v17 - (v18 + v18) - *&v68[5]) * 0.5;
  }

  else
  {
    v22 = 0.0;
  }

  KeyPath = swift_getKeyPath();
  v24 = sub_10022C350(&qword_100CDA0A0);
  v25 = v55;
  (*(*(v24 - 8) + 16))(v55, v50, v24);
  v26 = v25 + *(v49 + 36);
  *v26 = KeyPath;
  *(v26 + 8) = v22;
  *(v26 + 16) = 0;
  sub_10022C350(&qword_100CA4060);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100A2D320;
  v28 = static Edge.Set.leading.getter();
  *(v27 + 32) = v28;
  v29 = static Edge.Set.trailing.getter();
  *(v27 + 33) = v29;
  v30 = Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v28)
  {
    v30 = Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v29)
  {
    v30 = Edge.Set.init(rawValue:)();
  }

  v31 = v53;
  if (v56)
  {
    v58 = v71;
    v59 = v72;
    v60 = v73;
    v61 = *v74;
    v57 = v11;
  }

  else
  {
    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1007E9ECC(v3);
    (*(v8 + 8))(v10, v52);
  }

  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_10011C0F0(v55, v31, &qword_100CDA090);
  v41 = v31 + *(v51 + 36);
  *v41 = v30;
  *(v41 + 8) = v34;
  *(v41 + 16) = v36;
  *(v41 + 24) = v38;
  *(v41 + 32) = v40;
  *(v41 + 40) = 0;
  if (v56)
  {
    *&v68[1] = v71;
    *&v68[3] = v72;
    *&v68[5] = v73;
    *&v68[7] = *v74;
    v68[0] = v11;
  }

  else
  {
    static os_log_type_t.fault.getter();
    v42 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1007E9ECC(v3);
    (*(v8 + 8))(v10, v52);
  }

  memcpy(v69, v68, sizeof(v69));
  v43 = sub_1000EF898();
  static Alignment.center.getter();
  if (v22 > v43)
  {
    static os_log_type_t.fault.getter();
    v44 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v45 = v54;
  sub_10011C0F0(v31, v54, &qword_100CDA098);
  v46 = sub_10022C350(&qword_100CDA0A8);
  return memcpy((v45 + *(v46 + 36)), v68, 0x70uLL);
}

BOOL sub_1007E62F8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v0 + 88);
  v5 = *(v0 + 80);
  v20 = v5;
  if (v21 == 1)
  {
    if (v5)
    {
      return 1;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(&v20, &qword_100CB91B8);
    (*(v2 + 8))(v4, v1);
    if (__dst[0])
    {
      return 1;
    }
  }

  memcpy(__dst, v0, 0x49uLL);
  if (__dst[9])
  {
    v8 = *(v0 + 24);
    *&__src[1] = *(v0 + 8);
    *&__src[3] = v8;
    v9 = *(v0 + 56);
    *&__src[5] = *(v0 + 40);
    *&__src[7] = v9;
    __src[0] = __dst[0];
  }

  else
  {
    sub_1000302D8(__dst, v17, &qword_100CD9F98);
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CD9F98);
    (*(v2 + 8))(v4, v1);
  }

  memcpy(v17, __src, 0x48uLL);
  v11 = *&v17[1];
  if (v17[4])
  {
    v12 = sub_1000FDB68();
    v13 = 20.0;
    if (BYTE1(v17[6]) - 3 < 2)
    {
      v13 = 0.0;
    }

    v14 = v11 - (*&v17[7] + *&v17[7]) - v12 - v13;
    v15 = sub_1000FDE84();
    if (*&v17[8] >= v14 / dbl_100A85330[v15])
    {
      v11 = v14 / dbl_100A85330[v15];
    }

    else
    {
      v11 = *&v17[8];
    }
  }

  return v11 <= 162.0;
}

BOOL sub_1007E65FC()
{

  sub_1008EE67C();
  v1 = *(v0 + 16);

  return v1 != 0;
}

uint64_t sub_1007E666C(uint64_t a1, uint64_t a2)
{
  v19[1] = a1;
  v3 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v3 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocationStackView();
  v11 = *(v10 + 44);
  memcpy(__dst, (a2 + v11), 0x49uLL);
  if (__dst[9])
  {
    memcpy(v20, (a2 + v11), sizeof(v20));
  }

  else
  {

    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100018144(__dst, &qword_100CB71A8);
    (*(v7 + 8))(v9, v6);
  }

  v13 = v20[49];
  sub_1000FC9C8();
  v14 = a2 + *(v10 + 48);
  v15 = *v14;
  if (*(v14 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000EBD74(v15, 0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v15) = v20[0];
  }

  type metadata accessor for LocationComponentContainerViewModel();
  v17 = sub_100869090(v13, v5, v15 & 1);
  sub_100147C14(v5, type metadata accessor for DisplayMetrics);
  return v17 & 1;
}

uint64_t sub_1007E695C(char a1)
{
  v3 = *(v1 + 32);
  swift_beginAccess();
  *(v3 + 32) = a1;

  sub_1003BA6D4();
}

uint64_t sub_1007E69B4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1007E695C(1);
  }

  return result;
}

uint64_t sub_1007E6A10(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1007E6B04()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1007E6B9C()
{
  sub_1007E6B04();

  return swift_deallocClassInstance();
}

void sub_1007E6C44()
{
  v1 = type metadata accessor for LocationContentView(0);
  sub_100003AE8(v1);
  v4 = (v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  v5 = *(v4 + *(v3 + 64));

  sub_1007DCE74(v4, v5);
}

unint64_t sub_1007E6CC8()
{
  result = qword_100CD9630;
  if (!qword_100CD9630)
  {
    sub_10022E824(&qword_100CD95B8);
    sub_100006F64(&qword_100CD9628, &qword_100CD95B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9630);
  }

  return result;
}

uint64_t sub_1007E6D80()
{
  type metadata accessor for LocationContentView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  swift_unknownObjectRelease();

  sub_100006F14(v3 + 56);
  sub_100006F14(v3 + 96);

  sub_1000EBD74(*(v3 + 144), *(v3 + 152));
  v4 = v3 + v0[13];
  sub_10022C350(&qword_100CB3278);
  sub_100031D74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *(type metadata accessor for DisplayMetrics() + 36);
    type metadata accessor for DynamicTypeSize();
    sub_100003D98();
    (*(v6 + 8))(v4 + v5);
  }

  else
  {
  }

  sub_100028448(v0[14]);
  v7 = v0[15];
  sub_10022C350(&qword_100CAD618);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_100003D98();
    (*(v8 + 8))(v3 + v7);
  }

  else
  {
  }

  sub_100028448(v0[16]);
  sub_100028448(v0[17]);

  v9 = v0[19];
  type metadata accessor for Text.Measurements();
  sub_100003D98();
  (*(v10 + 8))(v3 + v9);
  sub_100030448();

  return swift_deallocObject();
}

void sub_1007E6F84()
{
  sub_100016F3C();
  sub_10001164C();
  v0 = sub_1000053B8();

  sub_1007DD5BC(v0, v1, v2);
}

unint64_t sub_1007E6FF0()
{
  result = qword_100CD9638;
  if (!qword_100CD9638)
  {
    sub_10022E824(&qword_100CD95C0);
    sub_1007E6CC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9638);
  }

  return result;
}

unint64_t sub_1007E707C()
{
  result = qword_100CD9640;
  if (!qword_100CD9640)
  {
    sub_10022E824(&qword_100CD95D0);
    sub_10022E824(&qword_100CD95C0);
    sub_1007E6FF0();
    swift_getOpaqueTypeConformance2();
    sub_10013E220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9640);
  }

  return result;
}

unint64_t sub_1007E7158()
{
  result = qword_100CD9650;
  if (!qword_100CD9650)
  {
    sub_10022E824(&qword_100CD95D8);
    sub_1007E707C();
    sub_10013E274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9650);
  }

  return result;
}

unint64_t sub_1007E71EC()
{
  result = qword_100CD9668;
  if (!qword_100CD9668)
  {
    sub_10022E824(&qword_100CD95E0);
    sub_1007E7158();
    sub_10013E2C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9668);
  }

  return result;
}

unint64_t sub_1007E7278()
{
  result = qword_100CD9678;
  if (!qword_100CD9678)
  {
    sub_10022E824(&qword_100CD9660);
    sub_10014A398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9678);
  }

  return result;
}

unint64_t sub_1007E72FC()
{
  result = qword_100CD9688;
  if (!qword_100CD9688)
  {
    sub_10022E824(&qword_100CD95E8);
    sub_1007E71EC();
    sub_100006F64(&qword_100CD9690, &qword_100CD9698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9688);
  }

  return result;
}

unint64_t sub_1007E73B4()
{
  result = qword_100CD96A0;
  if (!qword_100CD96A0)
  {
    sub_10022E824(&qword_100CD9608);
    sub_1007E7440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD96A0);
  }

  return result;
}

unint64_t sub_1007E7440()
{
  result = qword_100CD96A8;
  if (!qword_100CD96A8)
  {
    sub_10022E824(&qword_100CD9600);
    sub_10013E000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD96A8);
  }

  return result;
}

unint64_t sub_1007E74CC()
{
  result = qword_100CD96D0;
  if (!qword_100CD96D0)
  {
    sub_10022E824(&qword_100CD9610);
    sub_1007E73B4();
    sub_1007E72FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD96D0);
  }

  return result;
}

void sub_1007E7564()
{
  sub_100016F3C();
  sub_10001164C();
  sub_1007DD2E0();
}

uint64_t sub_1007E75B8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v2;
  return sub_1007E75E8(a1 + 2);
}

uint64_t sub_1007E75E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = static Color.clear.getter();
  __src[10] = sub_10071E894;
  __src[11] = 0;
  LOBYTE(__src[12]) = 0;
  __src[0] = sub_10022C350(&qword_100CA6F50);
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, __dst, &unk_100CAF270);
  if (*&__dst[24])
  {
    sub_100013188(__dst, &__src[3]);
    __src[1] = sub_1007E9BF8;
    __src[2] = 0;
    v4 = Dictionary.init(dictionaryLiteral:)();
    __src[8] = _swiftEmptyArrayStorage;
    __src[9] = v4;
    memcpy(__dst, __src, sizeof(__dst));
    sub_1000302D8(__dst, __src, &qword_100CA6E88);
    *a1 = v2;
    sub_1000302D8(__src, (a1 + 1), &qword_100CA6E88);

    sub_100018144(__dst, &qword_100CA6E88);
    sub_100018144(__src, &qword_100CA6E88);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1007E7798@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1000161C0(a1, a1[3]);
  sub_1007E77F4(v5);
  sub_100035B30(*v3 + 16, a2);
  return memcpy((a2 + 40), v5, 0x60uLL);
}

uint64_t sub_1007E77F4@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v18._object = 0x8000000100ADCCB0;
  v4._object = 0x8000000100ADCC90;
  v18._countAndFlagsBits = 0xD000000000000054;
  v4._countAndFlagsBits = 0xD000000000000013;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v18);

  v7 = [v2 mainBundle];
  v19._object = 0x8000000100ADF580;
  v8._object = 0x8000000100ADF510;
  v19._countAndFlagsBits = 0xD000000000000036;
  v8._countAndFlagsBits = 0x100000000000006ALL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v19);

  v11 = sub_100737E14();
  v13 = v12;
  static Color.white.getter();
  v14 = Color.hex.getter();
  v16 = v15;

  *a1 = 1;
  *(a1 + 8) = 0x616C732E69666977;
  *(a1 + 16) = 0xEA00000000006873;
  *(a1 + 24) = v6;
  *(a1 + 40) = v10;
  *(a1 + 56) = 0;
  *(a1 + 64) = v11;
  *(a1 + 72) = v13;
  *(a1 + 80) = v14;
  *(a1 + 88) = v16;
  return result;
}

unint64_t sub_1007E7990()
{
  result = qword_100CD9710;
  if (!qword_100CD9710)
  {
    sub_10022E824(&qword_100CD96D8);
    sub_1007E7A48();
    sub_100006F64(&qword_100CD9758, &qword_100CD9760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9710);
  }

  return result;
}

unint64_t sub_1007E7A48()
{
  result = qword_100CD9718;
  if (!qword_100CD9718)
  {
    sub_10022E824(&qword_100CD9720);
    sub_1007E7B00();
    sub_100006F64(&qword_100CBC3B0, &qword_100CBC3B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9718);
  }

  return result;
}

unint64_t sub_1007E7B00()
{
  result = qword_100CD9728;
  if (!qword_100CD9728)
  {
    sub_10022E824(&qword_100CD9730);
    sub_1007E7BB8();
    sub_100006F64(&qword_100CCA190, &qword_100CCA198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9728);
  }

  return result;
}

unint64_t sub_1007E7BB8()
{
  result = qword_100CD9738;
  if (!qword_100CD9738)
  {
    sub_10022E824(&qword_100CD9740);
    sub_10022E824(&qword_100CD9748);
    sub_100006F64(&qword_100CD9750, &qword_100CD9748);
    swift_getOpaqueTypeConformance2();
    sub_1005F52B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9738);
  }

  return result;
}

unint64_t sub_1007E7CB4()
{
  result = qword_100CD9780;
  if (!qword_100CD9780)
  {
    sub_10022E824(&qword_100CD9708);
    sub_1007E7D6C();
    sub_100006F64(&qword_100CD97C8, &qword_100CD9770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9780);
  }

  return result;
}

unint64_t sub_1007E7D6C()
{
  result = qword_100CD9788;
  if (!qword_100CD9788)
  {
    sub_10022E824(&qword_100CD9700);
    sub_1007E7E24();
    sub_100006F64(&qword_100CB0558, &qword_100CE1580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9788);
  }

  return result;
}

unint64_t sub_1007E7E24()
{
  result = qword_100CD9790;
  if (!qword_100CD9790)
  {
    sub_10022E824(&qword_100CD96F8);
    sub_1007E7EDC();
    sub_100006F64(&qword_100CD97C0, &qword_100CD9768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9790);
  }

  return result;
}

unint64_t sub_1007E7EDC()
{
  result = qword_100CD9798;
  if (!qword_100CD9798)
  {
    sub_10022E824(&qword_100CD96F0);
    sub_1007E7F94();
    sub_100006F64(&qword_100CD97B0, &qword_100CD97B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9798);
  }

  return result;
}

unint64_t sub_1007E7F94()
{
  result = qword_100CD97A0;
  if (!qword_100CD97A0)
  {
    sub_10022E824(&qword_100CD96E8);
    sub_1007E8050();
    sub_10008152C(&qword_100CD96C8, type metadata accessor for ActivityModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD97A0);
  }

  return result;
}

unint64_t sub_1007E8050()
{
  result = qword_100CD97A8;
  if (!qword_100CD97A8)
  {
    sub_10022E824(&qword_100CD96E0);
    sub_10022E824(&qword_100CD96D8);
    type metadata accessor for PrimaryDividerStyle();
    sub_1007E7990();
    sub_10008152C(&qword_100CA72A0, &type metadata accessor for PrimaryDividerStyle);
    swift_getOpaqueTypeConformance2();
    sub_10008152C(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD97A8);
  }

  return result;
}

uint64_t sub_1007E8198@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LocationContentView(0);
  sub_100003AE8(v3);
  v5 = v4;
  v7 = v6;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 39) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 39) & 0xFFFFFFFFFFFFFFF8;
  *&v13[24] = *(v1 + v11 + 16);
  *&v13[8] = *(v1 + v11);
  *v13 = *(v1 + v10 + 24);
  return sub_1007DD9F0(v1 + v8, *(v1 + v9), *(v1 + v9 + 8), *(v1 + v9 + 16), *(v1 + v9 + 24), *(v1 + v10), *(v1 + v10 + 8), *(v1 + v10 + 16), a1, *(v1 + ((v11 + 39) & 0xFFFFFFFFFFFFFFF8)), *v13, *&v13[16], *(v1 + v11 + 24));
}

unint64_t sub_1007E8280()
{
  result = qword_100CD9810;
  if (!qword_100CD9810)
  {
    sub_10022E824(&qword_100CD97F0);
    sub_1007E830C();
    sub_1007E847C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9810);
  }

  return result;
}

unint64_t sub_1007E830C()
{
  result = qword_100CD9818;
  if (!qword_100CD9818)
  {
    sub_10022E824(&qword_100CD9808);
    sub_1007E8398();
    sub_10014A29C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9818);
  }

  return result;
}

unint64_t sub_1007E8398()
{
  result = qword_100CD9820;
  if (!qword_100CD9820)
  {
    sub_10022E824(&qword_100CD9800);
    sub_100006F64(&qword_100CD9828, &qword_100CD97F8);
    sub_100006F64(&qword_100CA40A8, &qword_100CA40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9820);
  }

  return result;
}

unint64_t sub_1007E847C()
{
  result = qword_100CD9838;
  if (!qword_100CD9838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9838);
  }

  return result;
}

unint64_t sub_1007E84D0()
{
  result = qword_100CD9840;
  if (!qword_100CD9840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9840);
  }

  return result;
}

unint64_t sub_1007E8524()
{
  result = qword_100CD98F0;
  if (!qword_100CD98F0)
  {
    sub_10022E824(&qword_100CD9880);
    sub_10022E824(&qword_100CD9888);
    sub_10022E824(&qword_100CD9890);
    sub_10022E824(&qword_100CD9898);
    sub_10022E824(&qword_100CD98A0);
    sub_10022E824(&qword_100CD47E0);
    sub_100149E14();
    sub_100708038();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100006F64(&qword_100CD98E8, &qword_100CD9890);
    swift_getOpaqueTypeConformance2();
    sub_1005F52B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD98F0);
  }

  return result;
}

unint64_t sub_1007E8714()
{
  result = qword_100CD98F8;
  if (!qword_100CD98F8)
  {
    sub_10022E824(&qword_100CD9860);
    sub_100006F64(&qword_100CD9900, &qword_100CD9908);
    sub_10008152C(&qword_100CD9910, type metadata accessor for GridViewIdentifierModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD98F8);
  }

  return result;
}

unint64_t sub_1007E8834()
{
  result = qword_100CD9960;
  if (!qword_100CD9960)
  {
    sub_10022E824(&qword_100CD9950);
    sub_10008152C(&qword_100CD9968, type metadata accessor for LazyLocationGridViewContainer);
    sub_100006F64(&qword_100CD9970, &qword_100CD9978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9960);
  }

  return result;
}

unint64_t sub_1007E891C()
{
  result = qword_100CD9980;
  if (!qword_100CD9980)
  {
    sub_10022E824(&qword_100CD9958);
    sub_100006F64(&qword_100CD9988, &qword_100CD9990);
    sub_100006F64(&qword_100CD9970, &qword_100CD9978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9980);
  }

  return result;
}

uint64_t sub_1007E8A6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100016F3C();
  sub_10001164C();
  return sub_1007E2000(a1, a2);
}

uint64_t sub_1007E8AD0@<X0>(uint64_t a1@<X8>)
{
  sub_100016F3C();
  sub_10001164C();

  return sub_1007E0358(v1 + v3, a1);
}

uint64_t sub_1007E8B5C(uint64_t a1, _BYTE *a2)
{
  result = type metadata accessor for LocationContentView(0) - 8;
  if (*a2 == 1)
  {
    sub_10001164C();
    return sub_100192DF0();
  }

  return result;
}

uint64_t sub_1007E8BCC()
{
  sub_100071E44();
  sub_100016F3C();
  sub_10001164C();
  v0 = sub_100036EDC();
  return sub_1007E0984(v0, v1, v2, v3, v4);
}