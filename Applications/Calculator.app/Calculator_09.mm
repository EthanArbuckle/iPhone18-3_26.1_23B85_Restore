uint64_t sub_1000E7C18()
{
  v1 = v0[2];
  v2 = v0[3];
  return sub_1000E7004(v0[4]);
}

uint64_t sub_1000E7CA4(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(a1 + 48));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v7, v3);
  }

  v12 = sub_100074054();

  return v12;
}

BOOL sub_1000E7E04(uint64_t a1)
{
  v1 = sub_1000E7CA4(a1);
  swift_getKeyPath();
  sub_100006698(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 32);

  v3 = [v2 unitType];

  return v3 == 16;
}

uint64_t sub_1000E7ED8(uint64_t a1)
{
  v2 = (v1 + *(a1 + 64));
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  sub_10003AE84(&qword_100157830, qword_100111DF0);
  FocusState.Binding.wrappedValue.getter();
  return v4;
}

uint64_t sub_1000E7F38(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 64));
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 16);
  sub_10003AE84(&qword_100157830, qword_100111DF0);
  return FocusState.Binding.wrappedValue.setter();
}

uint64_t sub_1000E7F9C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 64));
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  sub_10003AE84(&qword_100157830, qword_100111DF0);
  FocusState.Binding.projectedValue.getter();
  return v4;
}

uint64_t sub_1000E8000(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100154538 != -1)
  {
    swift_once();
  }

  v8 = (v1 + *(a1 + 44));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v7, v3);
    v9 = v16;
  }

  v12 = *(v9 + 16);

  swift_getKeyPath();
  v16 = v12;
  sub_100006698(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v12 + 42);

  return Color.opacity(_:)();
}

double sub_1000E822C(uint64_t a1)
{
  v1 = *(a1 + 76);
  sub_10003AE84(&qword_1001565D8, qword_100113B00);
  ScaledMetric.wrappedValue.getter();
  return v3;
}

double sub_1000E8278(uint64_t a1)
{
  v1 = *(a1 + 76);
  sub_10003AE84(&qword_1001565D8, qword_100113B00);
  ScaledMetric.wrappedValue.getter();
  return v3 / 100.0;
}

uint64_t sub_1000E82D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v95 = a2;
  sub_10003AECC(&qword_100159A40, &unk_100114DF8);
  v94 = *(a1 + 16);
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
  v86 = type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v5 = type metadata accessor for HStack();
  v90 = *(v5 - 8);
  v6 = *(v90 + 64);
  __chkstk_darwin(v5);
  v87 = v83 - v7;
  v91 = v8;
  v9 = type metadata accessor for ModifiedContent();
  v92 = *(v9 - 8);
  v93 = v9;
  v10 = *(v92 + 64);
  __chkstk_darwin(v9);
  v88 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v89 = v83 - v13;
  v14 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v98 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v97 = v83 - v18;
  v96 = type metadata accessor for CalculatorSizeClass(0);
  v19 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v21 = v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v83 - v23;
  v25 = type metadata accessor for EnvironmentValues();
  v101 = *(v25 - 8);
  v102 = v25;
  v26 = *(v101 + 64);
  __chkstk_darwin(v25);
  v100 = v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v2 + *(a1 + 52);
  v29 = *v28;
  v30 = *(v28 + 8);

  v31 = v29;
  v99 = v30;
  if ((v30 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v33 = v100;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v101 + 8))(v33, v102);
    v31 = v107;
  }

  v83[2] = *(a1 + 36);
  v34 = v97;
  sub_10000D594(v97);
  v103 = a1;
  v104 = v3;
  v83[1] = *(a1 + 40);
  v35 = v98;
  sub_10000D594(v98);
  v36 = type metadata accessor for UserInterfaceSizeClass();
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v39 = v37 + 56;
  v38(v24, 1, 1, v36);
  v40 = *(v96 + 20);
  v84 = v38;
  v83[4] = v39;
  v38(&v24[v40], 1, 1, v36);
  sub_10006E758(v34, v24);
  sub_10006E758(v35, &v24[v40]);
  sub_1000D3FB8(v31, 1, v24);
  v42 = v41;

  sub_10006E7C8(v24);

  v43 = v29;
  if ((v99 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v44 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v45 = v100;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v101 + 8))(v45, v102);
    v43 = v107;
  }

  v46 = v104 + *(v103 + 44);
  v47 = *v46;
  v48 = *(v46 + 8);

  if ((v48 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v49 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v50 = v100;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v101 + 8))(v50, v102);
    v47 = v107;
  }

  swift_getKeyPath();
  v107 = v47;
  sub_100006698(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v51 = *(v47 + 48);

  v83[3] = v29;
  if (v51)
  {
    v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v52 = 1;
  }

  v53 = v104;
  v54 = v97;
  sub_10000D594(v97);
  v55 = v98;
  sub_10000D594(v98);
  v56 = v84;
  v84(v21, 1, 1, v36);
  v57 = *(v96 + 20);
  v56(&v21[v57], 1, 1, v36);
  sub_10006E758(v54, v21);
  sub_10006E758(v55, &v21[v57]);
  v58 = sub_1000D3C58(v43, v52 & 1, v21);
  v59 = sub_10003C9A0(v21);
  swift_getKeyPath();
  v107 = v43;
  sub_100006698(&qword_100154958, type metadata accessor for CalculatorLayout);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v60 = *(v43 + 96);

  sub_10006E7C8(v21);
  v61 = v103;
  v62 = *(v103 + 76);
  sub_10003AE84(&qword_1001565D8, qword_100113B00);
  ScaledMetric.wrappedValue.getter();

  if ((v99 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v63 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v64 = v100;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v101 + 8))(v64, v102);
  }

  v65 = 70.0;
  if (v58 >= 70.0)
  {
    v65 = v58;
  }

  v66 = 60.0;
  if (v58 >= 60.0)
  {
    v66 = v58;
  }

  if ((v59 & 1) == 0)
  {
    v65 = v66;
  }

  v67 = (v65 - v42) * 0.5;
  if (v60 * 0.25 >= v67)
  {
    v68 = v67;
  }

  else
  {
    v68 = v60 * 0.25;
  }

  v69 = sub_1000D40BC();

  v71 = __chkstk_darwin(v70).n128_u64[0];
  v72 = *(v61 + 24);
  v83[-8] = v94;
  v83[-7] = v72;
  v83[-6] = v53;
  v83[-5] = v73;
  *&v83[-4] = v68;
  v83[-3] = v69;
  v83[-2] = v71;
  static VerticalAlignment.center.getter();
  v74 = v87;
  HStack.init(alignment:spacing:content:)();
  v75 = v91;
  v76 = swift_getWitnessTable();
  v77 = v88;
  View.fixedSize(horizontal:vertical:)();

  (*(v90 + 8))(v74, v75);
  v105 = v76;
  v106 = &protocol witness table for _FixedSizeLayout;
  v78 = v93;
  v79 = swift_getWitnessTable();
  v80 = v89;
  sub_100020EE8(v77, v78, v79);
  v81 = *(v92 + 8);
  v81(v77, v78);
  sub_100020EE8(v80, v78, v79);
  return (v81)(v80, v78);
}

uint64_t sub_1000E8F20@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v94 = a2;
  v104 = a5;
  v14 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v89 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v88 = &v82 - v18;
  v87 = type metadata accessor for CalculatorSizeClass(0);
  v19 = *(*(v87 - 1) + 8);
  __chkstk_darwin(v87);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for EnvironmentValues();
  v83 = *(v84 - 8);
  v22 = *(v83 + 64);
  __chkstk_darwin(v84);
  v82 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_10003AE84(&qword_100159A50, &qword_100114E60);
  v24 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v99 = (&v82 - v25);
  v103 = sub_10003AE84(&qword_100159A48, &qword_100114E08);
  v102 = *(v103 - 8);
  v26 = *(v102 + 64);
  __chkstk_darwin(v103);
  v101 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v100 = &v82 - v29;
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
  v30 = type metadata accessor for ZStack();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  v34 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v82 - v36;
  static Alignment.leading.getter();
  v106 = a3;
  v107 = a4;
  v108 = a1;
  v109 = a6;
  ZStack.init(alignment:content:)();
  WitnessTable = swift_getWitnessTable();
  v93 = v37;
  v86 = WitnessTable;
  sub_100020EE8(v34, v30, WitnessTable);
  v90 = v31;
  v39 = *(v31 + 8);
  v95 = v34;
  v96 = v30;
  v92 = v31 + 8;
  v91 = v39;
  v39(v34, v30);
  v85 = static HorizontalAlignment.trailing.getter();
  v97 = a3;
  v98 = a4;
  v40 = type metadata accessor for CalculatorUnitConversionDisplayView();
  v41 = a1 + v40[13];
  v42 = *v41;
  LOBYTE(v30) = *(v41 + 8);

  if ((v30 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v43 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v44 = v82;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v83 + 8))(v44, v84);
    v42 = v110;
  }

  v45 = a1 + v40[9];
  v46 = v88;
  sub_10000D594(v88);
  v47 = a1 + v40[10];
  v48 = v89;
  sub_10000D594(v89);
  v49 = type metadata accessor for UserInterfaceSizeClass();
  v50 = *(*(v49 - 8) + 56);
  v50(v21, 1, 1, v49);
  v51 = *(v87 + 5);
  v50(&v21[v51], 1, 1, v49);
  sub_10006E758(v46, v21);
  sub_10006E758(v48, &v21[v51]);
  sub_1000D3FB8(v42, 1, v21);
  v53 = v52;

  sub_10006E7C8(v21);
  v54 = v99;
  *v99 = v85;
  *(v54 + 8) = v53;
  *(v54 + 16) = 0;
  v55 = sub_10003AE84(&qword_100159A58, &qword_100114E68);
  sub_1000EAC24(a1, v94, v97, v98, v54 + *(v55 + 44), a7, a8);
  v56 = static Alignment.center.getter();
  v58 = v57;
  v59 = v54 + *(v105 + 36);
  sub_1000F021C(a1, v59);
  v60 = (v59 + *(sub_10003AE84(&qword_100159A60, &unk_100114E70) + 36));
  *v60 = v56;
  v60[1] = v58;
  v94 = LocalizedStringKey.init(stringLiteral:)();
  v89 = v61;
  LODWORD(v88) = v62;
  v63 = a1 + v40[15];
  v64 = *v63;
  v65 = *(v63 + 8);
  LOBYTE(v119) = v64;
  v120 = v65;
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  v66 = State.projectedValue.getter();
  v87 = &v82;
  LODWORD(v85) = v112;
  __chkstk_darwin(v66);
  v98 = sub_10003AE84(&qword_100159A68, &qword_100114E80);
  v67 = sub_1000F2580();
  v68 = sub_10003AECC(&qword_1001558A0, &qword_10010F440);
  v69 = sub_100004880(&qword_1001563B8, &qword_1001558A0, &qword_10010F440);
  v110 = v68;
  v111 = v69;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v70 = v105;
  v71 = v100;
  View.alert<A, B>(_:isPresented:actions:message:)();

  sub_1000035CC(v54, &qword_100159A50, &qword_100114E60);
  v72 = v95;
  v73 = v93;
  v74 = v96;
  (*(v90 + 16))(v95, v93, v96);
  v119 = v72;
  v75 = v102;
  v76 = v101;
  v77 = v103;
  (*(v102 + 16))(v101, v71, v103);
  v120 = v76;
  v118[0] = v74;
  v118[1] = v77;
  v116 = v86;
  v110 = v70;
  v111 = v98;
  v112 = &type metadata for Text;
  v113 = v67;
  v114 = OpaqueTypeConformance2;
  v115 = &protocol witness table for Text;
  v117 = swift_getOpaqueTypeConformance2();
  sub_100022AFC(&v119, 2uLL, v118);
  v78 = *(v75 + 8);
  v78(v71, v77);
  v79 = v91;
  v91(v73, v74);
  v78(v76, v77);
  return v79(v72, v74);
}

uint64_t sub_1000E9A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v41 = a4;
  type metadata accessor for Optional();
  type metadata accessor for ModifiedContent();
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v9 = type metadata accessor for VStack();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v42 = &v37 - v15;
  v43 = sub_10003AE84(&qword_100159A40, &unk_100114DF8);
  v40 = *(v43 - 8);
  v16 = v40;
  v17 = *(v40 + 64);
  __chkstk_darwin(v43);
  v44 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v37 - v20;
  v22 = type metadata accessor for CalculatorUnitConversionDisplayView();
  v39 = v21;
  sub_1000E9F10(v22, v21);
  v45 = a2;
  v46 = a3;
  v47 = a1;
  v48 = a5;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  v23 = v42;
  sub_100020EE8(v13, v9, WitnessTable);
  v24 = *(v10 + 8);
  v24(v13, v9);
  v25 = v44;
  v26 = v21;
  v27 = v43;
  (*(v16 + 16))(v44, v26, v43);
  v54[0] = v25;
  (*(v10 + 16))(v13, v23, v9);
  v54[1] = v13;
  v53[0] = v27;
  v53[1] = v9;
  v28 = sub_10003AECC(&qword_100159C40, &qword_100115298);
  v29 = type metadata accessor for HighlightHoverEffect();
  v30 = sub_10003AECC(&qword_100159C48, &qword_1001152A0);
  v31 = sub_1000F2E1C(&qword_100159C50, &qword_100159C48, &qword_1001152A0, sub_1000F3E70);
  v49 = v30;
  v50 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_100006698(&qword_1001597E8, &type metadata accessor for HighlightHoverEffect);
  v49 = v28;
  v50 = v29;
  v51 = OpaqueTypeConformance2;
  v52 = v33;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = WitnessTable;
  sub_100022AFC(v54, 2uLL, v53);
  v24(v42, v9);
  v34 = *(v40 + 8);
  v35 = v43;
  v34(v39, v43);
  v24(v13, v9);
  return (v34)(v44, v35);
}

uint64_t sub_1000E9F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v5 = type metadata accessor for HighlightHoverEffect();
  v69 = *(v5 - 8);
  v70 = v5;
  v6 = *(v69 + 64);
  __chkstk_darwin(v5);
  v67 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlainButtonStyle();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  __chkstk_darwin(v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  v15 = sub_10003AE84(&qword_100159C68, &qword_1001152B0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v58 - v17;
  v19 = sub_10003AE84(&qword_100159C60, &qword_1001152A8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v58 - v21;
  v63 = sub_10003AE84(&qword_100159C48, &qword_1001152A0);
  v23 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v61 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v62 = &v58 - v26;
  v27 = sub_10003AE84(&qword_100159C40, &qword_100115298);
  v65 = *(v27 - 8);
  v66 = v27;
  v28 = *(v65 + 64);
  v29 = __chkstk_darwin(v27);
  v64 = &v58 - v30;
  (*(v12 + 16))(&v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v29);
  v31 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = *(a1 + 16);
  (*(v12 + 32))(v32 + v31, &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_10003AE84(&qword_100159C88, &qword_1001152C8);
  v33 = sub_10003AECC(&qword_100158AD0, &unk_1001152D0);
  v34 = sub_100004880(&qword_100158B00, &qword_100158AD0, &unk_1001152D0);
  v71 = &type metadata for Image;
  v72 = v33;
  v73 = &protocol witness table for Image;
  v74 = v34;
  swift_getOpaqueTypeConformance2();
  Button.init(action:label:)();
  if (qword_1001545D8 != -1)
  {
    swift_once();
  }

  v35 = qword_100160C00;
  KeyPath = swift_getKeyPath();
  v37 = &v18[*(v15 + 36)];
  *v37 = KeyPath;
  v37[1] = v35;

  PlainButtonStyle.init()();
  sub_1000F3F88();
  sub_100006698(&qword_100154770, &type metadata accessor for PlainButtonStyle);
  v38 = v60;
  View.buttonStyle<A>(_:)();
  (*(v59 + 8))(v11, v38);
  sub_1000035CC(v18, &qword_100159C68, &qword_1001152B0);
  v39 = &v22[*(v19 + 36)];
  __asm { FMOV            V0.2D, #8.0 }

  *v39 = _Q0;
  *(v39 + 1) = xmmword_100114D50;
  sub_1000F3E70();
  v45 = v61;
  View.accessibilityIdentifier(_:)();
  sub_1000035CC(v22, &qword_100159C60, &qword_1001152A8);
  LocalizedStringKey.init(stringLiteral:)();
  v46 = Text.init(_:tableName:bundle:comment:)();
  v48 = v47;
  LOBYTE(v38) = v49;
  v51 = v62;
  v50 = v63;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10000C6AC(v46, v48, v38 & 1);

  sub_1000035CC(v45, &qword_100159C48, &qword_1001152A0);
  LocalizedStringKey.init(stringLiteral:)();
  v52 = sub_1000F2E1C(&qword_100159C50, &qword_100159C48, &qword_1001152A0, sub_1000F3E70);
  v53 = v64;
  View.help(_:)();

  sub_1000035CC(v51, &qword_100159C48, &qword_1001152A0);
  v54 = v67;
  static CustomHoverEffect<>.highlight.getter();
  v71 = v50;
  v72 = v52;
  swift_getOpaqueTypeConformance2();
  sub_100006698(&qword_1001597E8, &type metadata accessor for HighlightHoverEffect);
  v55 = v66;
  v56 = v70;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v69 + 8))(v54, v56);
  return (*(v65 + 8))(v53, v55);
}

uint64_t sub_1000EA710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v45 = a3;
  v5 = sub_10003AE84(&qword_1001567E0, &qword_10010F970);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v41 = &v40 - v7;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for ModifiedContent();
  v42 = *(v13 - 8);
  v14 = *(v42 + 64);
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  sub_10003AECC(&qword_100156380, &qword_100112E40);
  v17 = type metadata accessor for ModifiedContent();
  v43 = *(v17 - 8);
  v18 = *(v43 + 64);
  __chkstk_darwin(v17);
  v44 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v40 - v21;
  v24 = __chkstk_darwin(v23);
  v40 = &v40 - v25;
  v26 = *a1;
  v27 = *(a1 + 8);
  v26(v24);
  static Edge.Set.bottom.getter();
  v51[6] = a2;
  WitnessTable = swift_getWitnessTable();
  View.padding(_:_:)();
  (*(v9 + 8))(v12, v8);
  v29 = type metadata accessor for Font.Design();
  v30 = v41;
  (*(*(v29 - 8) + 56))(v41, 1, 1, v29);
  static Font.system(size:weight:design:)();
  sub_1000035CC(v30, &qword_1001567E0, &qword_10010F970);
  v51[4] = WitnessTable;
  v51[5] = &protocol witness table for _PaddingLayout;
  v31 = swift_getWitnessTable();
  View.font(_:)();

  (*(v42 + 8))(v16, v13);
  v32 = sub_100004880(&qword_100156378, &qword_100156380, &qword_100112E40);
  v51[2] = v31;
  v51[3] = v32;
  v33 = swift_getWitnessTable();
  v34 = v40;
  sub_100020EE8(v22, v17, v33);
  v35 = v43;
  v36 = *(v43 + 8);
  v36(v22, v17);
  v49 = 0;
  v50 = 1;
  v51[0] = &v49;
  v37 = *(v35 + 16);
  v38 = v44;
  v37(v44, v34, v17);
  v51[1] = v38;
  v48[0] = &type metadata for Spacer;
  v48[1] = v17;
  v46 = &protocol witness table for Spacer;
  v47 = v33;
  sub_100022AFC(v51, 2uLL, v48);
  v36(v34, v17);
  return (v36)(v38, v17);
}

uint64_t sub_1000EAC24@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v124 = a2;
  v110 = a5;
  v120 = a3;
  v126 = a4;
  v10 = type metadata accessor for CalculatorUnitConversionDisplayView();
  v125 = *(v10 - 8);
  v122 = *(v125 + 64);
  __chkstk_darwin(v10);
  v123 = &v103 - v11;
  v121 = type metadata accessor for EnvironmentValues();
  v12 = *(v121 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v121);
  v15 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_10003AE84(&qword_100159B60, &qword_100115068);
  v16 = *(*(v117 - 1) + 64);
  __chkstk_darwin(v117);
  v18 = &v103 - v17;
  v105 = sub_10003AE84(&qword_100159B68, &qword_100115070);
  v104 = *(v105 - 8);
  v19 = *(v104 + 64);
  __chkstk_darwin(v105);
  v114 = &v103 - v20;
  v107 = sub_10003AE84(&qword_100159B70, &qword_100115078);
  v106 = *(v107 - 8);
  v21 = *(v106 + 64);
  __chkstk_darwin(v107);
  v115 = &v103 - v22;
  v109 = sub_10003AE84(&qword_100159B78, &qword_100115080);
  v108 = *(v109 - 8);
  v23 = *(v108 + 64);
  __chkstk_darwin(v109);
  v116 = &v103 - v24;
  v25 = static Alignment.bottomTrailing.getter();
  v27 = v26;
  v28 = v10;
  v29 = *(v10 + 52);
  v119 = a1;
  v30 = a1 + v29;
  v31 = *v30;
  LOBYTE(a1) = *(v30 + 8);

  if ((a1 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v32 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v12 + 8))(v15, v121);
    v31 = v128;
  }

  sub_1000D3DA0(v31);
  v34 = v33;

  *v18 = v25;
  *(v18 + 1) = v27;
  *(v18 + 2) = v34;
  v18[24] = 0;
  *(v18 + 4) = 0;
  v18[40] = 1;
  v35 = &v18[*(sub_10003AE84(&qword_100159B80, &qword_100115088) + 44)];
  OpaqueTypeConformance2 = v18;
  v36 = v119;
  v37 = v120;
  v38 = v126;
  sub_1000EBA08(v119, v124, v120, v126, v35, a6, a7);
  v39 = v125;
  v40 = v125 + 16;
  v124 = *(v125 + 16);
  v41 = v123;
  v124(v123, v36, v28);
  v42 = *(v39 + 80);
  v43 = (v42 + 32) & ~v42;
  v121 = v122 + v43;
  v44 = swift_allocObject();
  *(v44 + 16) = v37;
  *(v44 + 24) = v38;
  v45 = *(v39 + 32);
  v45(v44 + v43, v41, v28);
  v46 = sub_10003AE84(&qword_100159B88, &qword_100115090);
  v47 = OpaqueTypeConformance2;
  v48 = (OpaqueTypeConformance2 + *(v46 + 36));
  *v48 = sub_1000F2ED0;
  v48[1] = v44;
  v48[2] = 0;
  v48[3] = 0;
  v49 = v36;
  v50 = v28;
  v118 = v40;
  v124(v41, v49, v28);
  v51 = v42;
  v52 = v43;
  v53 = v51;
  v54 = swift_allocObject();
  v55 = v39 + 32;
  v56 = v126;
  *(v54 + 16) = v120;
  *(v54 + 24) = v56;
  v122 = v45;
  v45(v54 + v52, v41, v50);
  v57 = (v47 + v117[9]);
  *v57 = 0;
  v57[1] = 0;
  v57[2] = sub_1000F2F80;
  v57[3] = v54;
  v58 = v56;
  if (qword_1001546C8 != -1)
  {
    swift_once();
  }

  v59 = qword_100160D28;
  swift_getKeyPath();
  v128 = v59;
  sub_100006698(&qword_100154F80, type metadata accessor for CalculatorNetworkManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LOBYTE(v128) = *(v59 + 16);
  v60 = v41;
  v61 = v41;
  v62 = v119;
  (v124)(v60);
  v63 = swift_allocObject();
  v64 = v120;
  *(v63 + 16) = v120;
  *(v63 + 24) = v58;
  v122(v63 + v52, v61, v50);
  v103 = sub_1000F3008();
  v65 = v52;
  v111 = v52;
  v66 = OpaqueTypeConformance2;
  View.onChange<A>(of:initial:_:)();

  sub_1000035CC(v66, &qword_100159B60, &qword_100115068);
  v67 = *(sub_1000E7CA4(v50) + 24);

  swift_getKeyPath();
  v128 = v67;
  sub_100006698(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v68 = v67[OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__isCurrencyCacheLoaded];

  LOBYTE(v127) = v68;
  v69 = v123;
  v70 = v62;
  v71 = v62;
  v113 = v53;
  v72 = v124;
  v125 = v55;
  v124(v123, v71, v50);
  v73 = swift_allocObject();
  v74 = v126;
  *(v73 + 16) = v64;
  *(v73 + 24) = v74;
  v122(v73 + v65, v69, v50);
  v128 = v117;
  v129 = &type metadata for Bool;
  v130 = v103;
  v131 = &protocol witness table for Bool;
  v75 = v64;
  v117 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v76 = v105;
  v77 = v114;
  View.onChange<A>(of:initial:_:)();

  (*(v104 + 8))(v77, v76);
  v78 = sub_1000E7CA4(v50);
  swift_getKeyPath();
  v128 = v78;
  sub_100006698(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v79 = *(v78 + 32);
  v114 = v79;

  v127 = v79;
  v80 = v123;
  v72(v123, v70, v50);
  v81 = swift_allocObject();
  v82 = v126;
  *(v81 + 16) = v75;
  *(v81 + 24) = v82;
  v83 = v111;
  v122(v81 + v111, v80, v50);
  v104 = sub_1000F31C4();
  v128 = v76;
  v129 = &type metadata for Bool;
  v130 = OpaqueTypeConformance2;
  v131 = &protocol witness table for Bool;
  v117 = swift_getOpaqueTypeConformance2();
  v84 = sub_100006698(&qword_100159BB0, sub_1000F31C4);
  v85 = v107;
  v86 = v115;
  View.onChange<A>(of:initial:_:)();

  (*(v106 + 8))(v86, v85);
  v87 = v119;
  LOBYTE(v127) = sub_1000E7ED8(v50);
  v88 = v123;
  v124(v123, v87, v50);
  v89 = swift_allocObject();
  v90 = v126;
  *(v89 + 16) = v75;
  *(v89 + 24) = v90;
  v122(v89 + v83, v88, v50);
  sub_10003AE84(&qword_100156AB0, &qword_1001102B0);
  v128 = v85;
  v129 = v104;
  v130 = v117;
  v131 = v84;
  swift_getOpaqueTypeConformance2();
  sub_10001BAF0(&qword_100156AC0, sub_10001B814);
  v91 = v110;
  v92 = v109;
  v93 = v116;
  View.onChange<A>(of:initial:_:)();

  (*(v108 + 8))(v93, v92);
  v94 = [objc_opt_self() defaultCenter];
  v95 = v119;
  if (qword_1001544E0 != -1)
  {
    swift_once();
  }

  v96 = sub_10003AE84(&qword_100159BB8, &qword_1001150F0);
  v97 = v91 + *(v96 + 52);
  NSNotificationCenter.publisher(for:object:)();

  v98 = v123;
  v124(v123, v95, v50);
  v99 = swift_allocObject();
  v100 = v126;
  *(v99 + 16) = v120;
  *(v99 + 24) = v100;
  result = (v122)(v99 + v111, v98, v50);
  v102 = (v91 + *(v96 + 56));
  *v102 = sub_1000F32D8;
  v102[1] = v99;
  return result;
}

uint64_t sub_1000EBA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v88 = a2;
  v84 = a5;
  v12 = type metadata accessor for CalculatorUnitConversionDisplayView();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v87 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v70 - v16;
  v18 = sub_10003AE84(&qword_100159BC0, &qword_100115178);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v83 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v82 = &v70 - v22;
  __chkstk_darwin(v23);
  v81 = &v70 - v24;
  v26 = __chkstk_darwin(v25);
  v90 = &v70 - v27;
  v28 = *(v13 + 16);
  v86 = v13 + 16;
  v89 = v28;
  v78 = v17;
  v72 = a1;
  (v28)(v17, a1, v12, v26);
  v29 = *(v13 + 80);
  v91 = (v29 + 32) & ~v29;
  v30 = (v14 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v85 = a3;
  *(v31 + 16) = a3;
  *(v31 + 24) = a4;
  v32 = a4;
  v73 = a4;
  v33 = *(v13 + 32);
  v34 = v31;
  v71 = v31;
  v33(v31 + ((v29 + 32) & ~v29), v17, v12);
  v75 = v13 + 32;
  v74 = v33;
  *(v34 + v30) = a6;
  v35 = v87;
  v89(v87, a1, v12);
  v79 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = a3;
  *(v36 + 24) = v32;
  v33(v36 + v91, v35, v12);
  *(v36 + v30) = v88;
  *(v36 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)) = a7;
  v80 = a6;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v118 = v106;
  v116 = v108;
  v94 = sub_1000F3384;
  v95 = v71;
  v96 = sub_1000F339C;
  v97 = v36;
  v98 = v105;
  v99 = v106;
  *v100 = *v117;
  *&v100[3] = *&v117[3];
  v101 = v107;
  v102 = v108;
  *v103 = *v115;
  *&v103[3] = *&v115[3];
  v104 = v109;
  v110 = 0;
  v111 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v110 = 0xD000000000000019;
  v111 = 0x8000000100109480;
  v37 = v72;
  sub_1000E7CA4(v12);
  v38 = sub_100072148();

  v39 = [v38 name];

  v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v41;

  v43._countAndFlagsBits = v40;
  v43._object = v42;
  String.append(_:)(v43);

  v77 = sub_10003AE84(&qword_100159BC8, &qword_100115180);
  v76 = sub_1000F33B4();
  View.accessibilityIdentifier(_:)();

  v44 = v78;
  v45 = v12;
  v46 = v89;
  v89(v78, v37, v12);
  v47 = v30;
  v70 = v30;
  v48 = swift_allocObject();
  v49 = v73;
  *(v48 + 16) = v85;
  *(v48 + 24) = v49;
  v50 = v12;
  v51 = v74;
  v74(v48 + v91, v44, v50);
  *(v48 + v47) = a6;
  v52 = v87;
  v46(v87, v37, v45);
  v53 = v79;
  v54 = swift_allocObject();
  *(v54 + 16) = v85;
  *(v54 + 24) = v49;
  v51(v54 + v91, v52, v45);
  *(v54 + v70) = v88;
  *(v54 + v53) = a7;

  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v122 = v111;
  v120 = v113;
  v94 = sub_1000F346C;
  v95 = v48;
  v96 = sub_1000F3844;
  v97 = v54;
  v98 = v110;
  v99 = v111;
  *v100 = *v121;
  *&v100[3] = *&v121[3];
  v101 = v112;
  v102 = v113;
  *v103 = *v119;
  *&v103[3] = *&v119[3];
  v104 = v114;
  v92 = 0;
  v93 = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  v92 = 0xD00000000000001ALL;
  v93 = 0x80000001001094A0;
  sub_1000E7CA4(v45);
  v55 = sub_100072328();

  v56 = [v55 name];

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  v60._countAndFlagsBits = v57;
  v60._object = v59;
  String.append(_:)(v60);

  v61 = v81;
  View.accessibilityIdentifier(_:)();

  v62 = v90;
  v63 = v82;
  sub_100008E68(v90, v82, &qword_100159BC0, &qword_100115178);
  v64 = v61;
  v65 = v61;
  v66 = v83;
  sub_100008E68(v64, v83, &qword_100159BC0, &qword_100115178);
  v67 = v84;
  sub_100008E68(v63, v84, &qword_100159BC0, &qword_100115178);
  v68 = sub_10003AE84(&qword_100159BE8, &qword_100115190);
  sub_100008E68(v66, v67 + *(v68 + 48), &qword_100159BC0, &qword_100115178);
  sub_1000035CC(v65, &qword_100159BC0, &qword_100115178);
  sub_1000035CC(v62, &qword_100159BC0, &qword_100115178);
  sub_1000035CC(v66, &qword_100159BC0, &qword_100115178);
  return sub_1000035CC(v63, &qword_100159BC0, &qword_100115178);
}

uint64_t sub_1000EC358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v119 = a4;
  v118 = type metadata accessor for AccessibilityTraits();
  v117 = *(v118 - 8);
  v9 = *(v117 + 64);
  __chkstk_darwin(v118);
  v116 = &v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for AccessibilityChildBehavior();
  v109 = *(v110 - 8);
  v11 = *(v109 + 64);
  __chkstk_darwin(v110);
  v108 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = a2;
  v128 = a3;
  v13 = type metadata accessor for CalculatorUnitConversionDisplayView();
  v129 = *(v13 - 8);
  v103 = *(v129 + 64);
  __chkstk_darwin(v13);
  v126 = &v94 - v14;
  v15 = type metadata accessor for EnvironmentValues();
  v120 = *(v15 - 8);
  v16 = *(v120 + 64);
  __chkstk_darwin(v15);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_10003AE84(&qword_100159C10, &qword_100115208);
  v104 = *(v106 - 8);
  v19 = *(v104 + 64);
  __chkstk_darwin(v106);
  v98 = &v94 - v20;
  v124 = sub_10003AE84(&qword_100159C18, &qword_100115210);
  v107 = *(v124 - 8);
  v21 = *(v107 + 64);
  __chkstk_darwin(v124);
  v105 = &v94 - v22;
  v112 = sub_10003AE84(&qword_100159C20, &qword_100115218);
  v111 = *(v112 - 8);
  v23 = *(v111 + 64);
  __chkstk_darwin(v112);
  v123 = &v94 - v24;
  v25 = sub_10003AE84(&qword_100159C28, &qword_100115220);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v114 = &v94 - v27;
  v113 = sub_10003AE84(&qword_100159C30, &qword_100115228);
  v28 = *(*(v113 - 8) + 64);
  __chkstk_darwin(v113);
  v115 = &v94 - v29;
  v30 = a1 + *(v13 + 44);
  v31 = *v30;
  LODWORD(a3) = *(v30 + 8);

  v32 = v31;
  v122 = a3;
  if ((a3 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v33 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v120 + 8))(v18, v15);
    v32 = v134;
  }

  v125 = v31;
  Kind = v32[1].Kind;
  swift_getKeyPath();
  v134 = Kind;
  v121 = sub_100006698(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v35 = v125;
  Description = Kind[1].Description;

  v37 = sub_1000E7CA4(v13);

  v38 = v35;
  if ((v122 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v39 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v120 + 8))(v18, v15);
    v38 = v134;
  }

  v40 = v38[1].Kind;

  swift_getKeyPath();
  v134 = v40;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v41 = *(v40 + 40);

  v95 = v15;
  v94 = v18;
  if (v41 == 1)
  {
    if (qword_100154530 != -1)
    {
      swift_once();
    }

    v42 = qword_100160B58;
  }

  else
  {
    v42 = sub_1000E8000(v13);
  }

  type metadata accessor for CalculatorViewModel();
  sub_100006698(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  v102 = Environment.init<A>(_:)();
  v134 = v102;
  LOBYTE(v135) = v43 & 1;
  v101 = Description;
  v136 = Description;
  v137 = v37;
  v138 = v42;
  v139 = 1;
  v140 = a5;
  v131 = sub_1000E7F9C(v13);
  v132 = v44;
  v133 = v45;
  v130 = 1;
  v46 = sub_10003AE84(&qword_100156AB0, &qword_1001102B0);
  v47 = sub_100023954();
  v96 = sub_10001BAF0(&qword_100157818, sub_10001BB68);
  v48 = v98;
  View.focused<A>(_:equals:)();

  v49 = v129;
  v50 = v126;
  v51 = a1;
  v101 = *(v129 + 16);
  v97 = v129 + 16;
  v101(v126, a1, v13);
  v52 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v102 = *(v49 + 80);
  v99 = v52 + v103;
  v53 = swift_allocObject();
  v54 = v128;
  *(v53 + 16) = v127;
  *(v53 + 24) = v54;
  v55 = *(v49 + 32);
  v103 = v52;
  v56 = v53 + v52;
  v57 = v13;
  v129 = v49 + 32;
  v100 = v55;
  v55(v56, v50, v13);
  v134 = &type metadata for InputTextView;
  v135 = v46;
  v136 = v47;
  v137 = v96;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v105;
  v60 = v106;
  View.onTapGesture(count:perform:)();

  (*(v104 + 8))(v48, v60);
  if (_AXSAutomationEnabled())
  {
    v61 = v108;
    static AccessibilityChildBehavior.contain.getter();
  }

  else
  {
    v61 = v108;
    static AccessibilityChildBehavior.ignore.getter();
  }

  v62 = v118;
  v134 = v60;
  v135 = OpaqueTypeConformance2;
  v63 = swift_getOpaqueTypeConformance2();
  v64 = v124;
  View.accessibilityElement(children:)();
  (*(v109 + 8))(v61, v110);
  (*(v107 + 8))(v59, v64);
  v65 = v57;
  v66 = v51;
  if (sub_1000E7ED8(v57) == 1)
  {
    sub_10003AE84(&qword_100157A80, &unk_100115410);
    v67 = v117;
  }

  else
  {
    v68 = sub_1000E7ED8(v57);
    v67 = v117;
    if (v68 == 2)
    {
      v134 = _swiftEmptyArrayStorage;
      goto LABEL_19;
    }

    sub_10003AE84(&qword_100157A80, &unk_100115410);
  }

  v69 = *(v67 + 72);
  v70 = (*(v67 + 80) + 32) & ~*(v67 + 80);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_10010BDE0;
  static AccessibilityTraits.isSelected.getter();
  v134 = v71;
LABEL_19:
  sub_100006698(&qword_100156A68, &type metadata accessor for AccessibilityTraits);
  sub_10003AE84(&qword_100156A70, &qword_100112040);
  sub_100004880(&qword_100156A78, &qword_100156A70, &qword_100112040);
  v72 = v116;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v134 = v124;
  v135 = v63;
  swift_getOpaqueTypeConformance2();
  v73 = v114;
  v74 = v112;
  v75 = v123;
  View.accessibilityAddTraits(_:)();
  (*(v67 + 8))(v72, v62);
  (*(v111 + 8))(v75, v74);
  v76 = v125;

  if ((v122 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v77 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v78 = v94;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v120 + 8))(v78, v95);
    v76 = v134;
  }

  v79 = v76[1].Kind;
  swift_getKeyPath();
  v134 = v79;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v80 = v79[1].Description;

  v81 = sub_1000E7ED8(v65);
  if (v81 == 2)
  {
    v82 = 0x746C75736552;
  }

  else
  {
    v82 = 0x7475706E49;
  }

  if (v81 == 2)
  {
    v83 = 0xE600000000000000;
  }

  else
  {
    v83 = 0xE500000000000000;
  }

  v84 = v115;
  sub_10000D5B8(v73, v115, &qword_100159C28, &qword_100115220);
  v85 = (v84 + *(v113 + 36));
  *v85 = v80;
  v85[1] = v82;
  v85[2] = v83;
  v86 = static VerticalAlignment.firstTextBaseline.getter();
  v87 = v126;
  v101(v126, v66, v65);
  v88 = (v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v128;
  *(v89 + 16) = v127;
  *(v89 + 24) = v90;
  v100(v89 + v103, v87, v65);
  *(v89 + v88) = a5;
  v91 = v119;
  sub_10000D5B8(v84, v119, &qword_100159C30, &qword_100115228);
  result = sub_10003AE84(&qword_100159C38, &unk_100115260);
  v93 = (v91 + *(result + 36));
  *v93 = v86;
  v93[1] = sub_1000F40F4;
  v93[2] = v89;
  return result;
}

__n128 sub_1000ED2A0@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v51 = a1;
  v52 = a2;
  v2 = type metadata accessor for InputAccessoryView();
  v3 = *(*(v2 - 1) + 64);
  __chkstk_darwin(v2);
  v5 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for CalculatorUnitConversionDisplayView();
  sub_1000E7CA4(v6);
  v7 = sub_100072148();

  v8 = [v7 shortName];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v10;
  v50 = v9;

  if (sub_1000E7ED8(v6) != 1)
  {
    sub_1000E7ED8(v6);
  }

  v48 = LocalizedStringKey.init(stringLiteral:)();
  v47 = v11;
  v46 = v12;
  v45 = v13;
  v44 = 0x80000001001094E0;
  sub_1000E7CA4(v6);
  v14 = sub_100072148();

  v15 = [v14 displayName];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = LocalizedStringKey.init(stringLiteral:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  *v5 = swift_getKeyPath();
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  swift_storeEnumTagMultiPayload();
  v26 = v2[5];
  *(v5 + v26) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v27 = v5 + v2[6];
  LOBYTE(v53) = 0;
  State.init(wrappedValue:)();
  v28 = *(&v54 + 1);
  *v27 = v54;
  *(v27 + 1) = v28;
  v29 = (v5 + v2[7]);
  v53 = static Color.clear.getter();
  State.init(wrappedValue:)();
  v30 = *(&v54 + 1);
  *v29 = v54;
  v29[1] = v30;
  v31 = (v5 + v2[8]);
  v32 = v49;
  *v31 = v50;
  v31[1] = v32;
  *(v5 + v2[9]) = v51;
  *(v5 + v2[10]) = 1;
  v33 = (v5 + v2[11]);
  *v33 = 0xD000000000000013;
  v33[1] = v44;
  v34 = v5 + v2[12];
  v35 = v47;
  *v34 = v48;
  *(v34 + 1) = v35;
  v34[16] = v46 & 1;
  *(v34 + 3) = v45;
  v36 = (v5 + v2[13]);
  *v36 = v16;
  v36[1] = v18;
  v37 = v5 + v2[14];
  *v37 = v19;
  *(v37 + 1) = v21;
  v37[16] = v23 & 1;
  *(v37 + 3) = v25;

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v38 = v52;
  sub_100064ED0(v5, v52);
  v39 = v38 + *(sub_10003AE84(&qword_100159BF0, &qword_100115198) + 36);
  v40 = v59;
  *(v39 + 64) = v58;
  *(v39 + 80) = v40;
  *(v39 + 96) = v60;
  v41 = v55;
  *v39 = v54;
  *(v39 + 16) = v41;
  result = v57;
  *(v39 + 32) = v56;
  *(v39 + 48) = result;
  return result;
}

uint64_t sub_1000ED72C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a5;
  v25 = a6;
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v10 = type metadata accessor for VStack();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v22 - v16;
  v18 = *(a3 + 24);
  v26 = *(a3 + 16);
  v27 = a4;
  v28 = v18;
  v29 = v23;
  v30 = a1;
  v31 = a2;
  v32 = v24;
  static HorizontalAlignment.center.getter();
  VStack.init(alignment:spacing:content:)();
  WitnessTable = swift_getWitnessTable();
  sub_100020EE8(v14, v10, WitnessTable);
  v20 = *(v11 + 8);
  v20(v14, v10);
  sub_100020EE8(v17, v10, WitnessTable);
  return (v20)(v17, v10);
}

uint64_t sub_1000ED948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v122 = a4;
  v9 = type metadata accessor for AccessibilityTraits();
  v120 = *(v9 - 8);
  v10 = *(v120 + 64);
  __chkstk_darwin(v9);
  v119 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for AccessibilityChildBehavior();
  v112 = *(v113 - 8);
  v12 = *(v112 + 64);
  __chkstk_darwin(v113);
  v111 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = a2;
  v131 = a3;
  v14 = type metadata accessor for CalculatorUnitConversionDisplayView();
  v132 = *(v14 - 8);
  v106 = *(v132 + 64);
  __chkstk_darwin(v14);
  v129 = &v97 - v15;
  v16 = type metadata accessor for EnvironmentValues();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v123 = &v97 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_10003AE84(&qword_100159C10, &qword_100115208);
  v107 = *(v109 - 8);
  v20 = *(v107 + 64);
  __chkstk_darwin(v109);
  v105 = &v97 - v21;
  v127 = sub_10003AE84(&qword_100159C18, &qword_100115210);
  v110 = *(v127 - 8);
  v22 = *(v110 + 64);
  __chkstk_darwin(v127);
  v108 = &v97 - v23;
  v115 = sub_10003AE84(&qword_100159C20, &qword_100115218);
  v114 = *(v115 - 8);
  v24 = *(v114 + 64);
  __chkstk_darwin(v115);
  v126 = &v97 - v25;
  v26 = sub_10003AE84(&qword_100159C28, &qword_100115220);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v117 = &v97 - v28;
  v116 = sub_10003AE84(&qword_100159C30, &qword_100115228);
  v29 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  v118 = &v97 - v30;
  v31 = a1 + *(v14 + 44);
  v32 = *v31;
  LODWORD(a2) = *(v31 + 8);

  v33 = v32;
  v125 = a2;
  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v34 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v35 = v123;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v35, v16);
    v33 = v137;
  }

  Kind = v33[1].Kind;
  swift_getKeyPath();
  v128 = v32;
  v137 = Kind;
  v124 = sub_100006698(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  v37 = v128;

  v38 = Kind[2].Kind;

  v39 = sub_1000E7CA4(v14);

  v40 = v37;
  if ((v125 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v41 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v42 = v123;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v17 + 8))(v42, v16);
    v40 = v137;
  }

  v43 = v40[1].Kind;

  swift_getKeyPath();
  v137 = v43;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v44 = *(v43 + 40);

  v121 = v9;
  v99 = v16;
  v98 = v17;
  if (v44 == 1)
  {
    v45 = sub_1000E8000(v14);
  }

  else
  {
    if (qword_100154530 != -1)
    {
      swift_once();
    }

    v45 = qword_100160B58;
  }

  v102 = v45;
  type metadata accessor for CalculatorViewModel();
  sub_100006698(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  v104 = Environment.init<A>(_:)();
  v137 = v104;
  LOBYTE(v138) = v46 & 1;
  v139 = v38;
  v140 = v39;
  v141 = v45;
  v142 = 1;
  v143 = a5;
  v47 = sub_1000E7F9C(v14);
  v103 = v38;
  v134 = v47;
  v135 = v48;
  v136 = v49;
  v133 = 2;
  v50 = sub_10003AE84(&qword_100156AB0, &qword_1001102B0);
  v51 = sub_100023954();
  v52 = sub_10001BAF0(&qword_100157818, sub_10001BB68);
  v53 = v105;
  View.focused<A>(_:equals:)();

  v54 = v132;
  v55 = v129;
  v56 = a1;
  v103 = *(v132 + 16);
  v100 = v132 + 16;
  v103(v129, a1, v14);
  v57 = (*(v54 + 80) + 32) & ~*(v54 + 80);
  v104 = *(v54 + 80);
  v101 = v57 + v106;
  v58 = swift_allocObject();
  v59 = v131;
  *(v58 + 16) = v130;
  *(v58 + 24) = v59;
  v60 = *(v54 + 32);
  v106 = v57;
  v61 = v58 + v57;
  v62 = v14;
  v132 = v54 + 32;
  v102 = v60;
  v60(v61, v55, v14);
  v137 = &type metadata for InputTextView;
  v138 = v50;
  v139 = v51;
  v140 = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v64 = v108;
  v65 = v109;
  View.onTapGesture(count:perform:)();

  (*(v107 + 8))(v53, v65);
  if (_AXSAutomationEnabled())
  {
    v66 = v111;
    static AccessibilityChildBehavior.contain.getter();
  }

  else
  {
    v66 = v111;
    static AccessibilityChildBehavior.ignore.getter();
  }

  v137 = v65;
  v138 = OpaqueTypeConformance2;
  v67 = swift_getOpaqueTypeConformance2();
  v68 = v127;
  View.accessibilityElement(children:)();
  (*(v112 + 8))(v66, v113);
  (*(v110 + 8))(v64, v68);
  if (sub_1000E7ED8(v62) == 2)
  {
    sub_10003AE84(&qword_100157A80, &unk_100115410);
    v69 = v120;
    v70 = *(v120 + 72);
    v71 = (*(v120 + 80) + 32) & ~*(v120 + 80);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_10010BDE0;
    static AccessibilityTraits.isSelected.getter();
    v137 = v72;
    sub_100006698(&qword_100156A68, &type metadata accessor for AccessibilityTraits);
    sub_10003AE84(&qword_100156A70, &qword_100112040);
    sub_100004880(&qword_100156A78, &qword_100156A70, &qword_100112040);
    v73 = v119;
    v74 = v121;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    v137 = _swiftEmptyArrayStorage;
    sub_100006698(&qword_100156A68, &type metadata accessor for AccessibilityTraits);
    sub_10003AE84(&qword_100156A70, &qword_100112040);
    sub_100004880(&qword_100156A78, &qword_100156A70, &qword_100112040);
    v73 = v119;
    v74 = v121;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v69 = v120;
  }

  v137 = v127;
  v138 = v67;
  swift_getOpaqueTypeConformance2();
  v75 = v117;
  v76 = v115;
  v77 = v126;
  View.accessibilityAddTraits(_:)();
  (*(v69 + 8))(v73, v74);
  (*(v114 + 8))(v77, v76);
  v78 = v128;

  if ((v125 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v79 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v80 = v123;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v98 + 8))(v80, v99);
    v78 = v137;
  }

  v81 = v78[1].Kind;
  swift_getKeyPath();
  v137 = v81;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v82 = v81[2].Kind;

  v83 = sub_1000E7ED8(v62);
  if (v83 == 2)
  {
    v84 = 0x7475706E49;
  }

  else
  {
    v84 = 0x746C75736552;
  }

  if (v83 == 2)
  {
    v85 = 0xE500000000000000;
  }

  else
  {
    v85 = 0xE600000000000000;
  }

  v86 = v75;
  v87 = v118;
  sub_10000D5B8(v86, v118, &qword_100159C28, &qword_100115220);
  v88 = (v87 + *(v116 + 36));
  *v88 = v82;
  v88[1] = v84;
  v88[2] = v85;
  v89 = static VerticalAlignment.firstTextBaseline.getter();
  v90 = v129;
  v103(v129, v56, v62);
  v91 = (v101 + 7) & 0xFFFFFFFFFFFFFFF8;
  v92 = swift_allocObject();
  v93 = v131;
  *(v92 + 16) = v130;
  *(v92 + 24) = v93;
  v102(v92 + v106, v90, v62);
  *(v92 + v91) = a5;
  v94 = v122;
  sub_10000D5B8(v87, v122, &qword_100159C30, &qword_100115228);
  result = sub_10003AE84(&qword_100159C38, &unk_100115260);
  v96 = (v94 + *(result + 36));
  *v96 = v89;
  v96[1] = sub_1000F3A14;
  v96[2] = v92;
  return result;
}

uint64_t sub_1000EE91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a1;
  v14[5] = a2;
  *&v14[6] = a7;
  v9 = type metadata accessor for CalculatorUnitConversionDisplayView();
  v10 = sub_10003AE84(&qword_100159BF0, &qword_100115198);
  v11 = sub_1000F393C();
  sub_1000ED72C(a5, v14, v9, v10, v11, a6);
  v12 = sub_10003AE84(&qword_100159C08, &qword_1001151A0);
  return (*(*(v12 - 8) + 56))(a6, 0, 1, v12);
}

__n128 sub_1000EEA00@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v51 = a1;
  v52 = a2;
  v2 = type metadata accessor for InputAccessoryView();
  v3 = *(*(v2 - 1) + 64);
  __chkstk_darwin(v2);
  v5 = (&v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for CalculatorUnitConversionDisplayView();
  sub_1000E7CA4(v6);
  v7 = sub_100072328();

  v8 = [v7 shortName];

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v10;
  v50 = v9;

  sub_1000E7ED8(v6);
  v48 = LocalizedStringKey.init(stringLiteral:)();
  v47 = v11;
  v46 = v12;
  v45 = v13;
  v44 = 0x80000001001094C0;
  sub_1000E7CA4(v6);
  v14 = sub_100072328();

  v15 = [v14 displayName];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = LocalizedStringKey.init(stringLiteral:)();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  *v5 = swift_getKeyPath();
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  swift_storeEnumTagMultiPayload();
  v26 = v2[5];
  *(v5 + v26) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v27 = v5 + v2[6];
  LOBYTE(v53) = 0;
  State.init(wrappedValue:)();
  v28 = *(&v54 + 1);
  *v27 = v54;
  *(v27 + 1) = v28;
  v29 = (v5 + v2[7]);
  v53 = static Color.clear.getter();
  State.init(wrappedValue:)();
  v30 = *(&v54 + 1);
  *v29 = v54;
  v29[1] = v30;
  v31 = (v5 + v2[8]);
  v32 = v49;
  *v31 = v50;
  v31[1] = v32;
  *(v5 + v2[9]) = v51;
  *(v5 + v2[10]) = 0;
  v33 = (v5 + v2[11]);
  *v33 = 0xD000000000000014;
  v33[1] = v44;
  v34 = v5 + v2[12];
  v35 = v47;
  *v34 = v48;
  *(v34 + 1) = v35;
  v34[16] = v46 & 1;
  *(v34 + 3) = v45;
  v36 = (v5 + v2[13]);
  *v36 = v16;
  v36[1] = v18;
  v37 = v5 + v2[14];
  *v37 = v19;
  *(v37 + 1) = v21;
  v37[16] = v23 & 1;
  *(v37 + 3) = v25;

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v38 = v52;
  sub_100064ED0(v5, v52);
  v39 = v38 + *(sub_10003AE84(&qword_100159BF0, &qword_100115198) + 36);
  v40 = v59;
  *(v39 + 64) = v58;
  *(v39 + 80) = v40;
  *(v39 + 96) = v60;
  v41 = v55;
  *v39 = v54;
  *(v39 + 16) = v41;
  result = v57;
  *(v39 + 32) = v56;
  *(v39 + 48) = result;
  return result;
}

uint64_t sub_1000EEE74(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CalculatorUnitConversionDisplayView();
  v8 = sub_1000E7CA4(v7);
  swift_getKeyPath();
  v29 = v8;
  sub_100006698(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = *(v8 + 32);

  v10 = [v9 unitType];

  if (v10 == 16)
  {
    v11 = a1 + *(v7 + 44);
    v12 = *v11;
    v13 = *(v11 + 8);

    if ((v13 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v14 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v3 + 8))(v6, v2);
      v12 = v29;
    }

    v15 = *(v12 + 16);

    sub_10001B0D8();

    v16 = CalculateExpression.expression.getter();
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v16 & 0xFFFFFFFFFFFFLL;
    }

    v20 = v19 != 0;
  }

  else
  {
    v20 = 0;
  }

  v21 = a1 + *(v7 + 44);
  v22 = *v21;
  v23 = *(v21 + 8);

  if ((v23 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v22 = v29;
  }

  v25 = *(v22 + 16);

  swift_getKeyPath();
  v29 = v25;
  sub_100006698(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v20 != *(v25 + 42))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v28 - 2) = v25;
    *(&v28 - 8) = v20;
    v29 = v25;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  sub_1000EF2D4(v7);
  return sub_1000EF450(v7);
}

uint64_t sub_1000EF2D4(uint64_t a1)
{
  v3 = (v1 + *(a1 + 56));
  v4 = *v3;
  v5 = *(v3 + 1);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  result = State.wrappedValue.getter();
  if ((v10 & 1) == 0)
  {
    v7 = *(sub_1000E7CA4(a1) + 24);

    sub_100051FD4();

    v8 = *(sub_1000E7CA4(a1) + 24);

    swift_getKeyPath();
    sub_100006698(&qword_100154F68, type metadata accessor for CalculatorCurrencyCacheProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v9 = *(v8 + OBJC_IVAR____TtC10Calculator31CalculatorCurrencyCacheProvider__isCurrencyCacheLoaded);

    return State.wrappedValue.setter();
  }

  return result;
}

uint64_t sub_1000EF450(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(a1 + 44));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v7, v3);
    v9 = v15[1];
  }

  v12 = *(v9 + 16);

  v13 = sub_1000E7CA4(a1);
  sub_1000D62AC(v13);
}

uint64_t sub_1000EF5D8(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for CalculatorUnitConversionDisplayView() + 44));
  v8 = *v7;
  v9 = *(v7 + 8);

  v10 = v8;
  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v10 = v17;
  }

  if (*(v10 + 53))
  {
    KeyPath = swift_getKeyPath();
    v16[1] = v16;
    __chkstk_darwin(KeyPath);
    v16[-2] = v10;
    LOBYTE(v16[-1]) = 0;
    v17 = v10;
    sub_100006698(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v10 + 53) = 0;
  }

  if ((v9 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v8 = v17;
  }

  swift_getKeyPath();
  v17 = v8;
  sub_100006698(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v8 + 54) != 11)
  {
    v15 = swift_getKeyPath();
    __chkstk_darwin(v15);
    v16[-2] = v8;
    LOBYTE(v16[-1]) = 11;
    v17 = v8;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void sub_1000EF9F8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a2 == 1)
  {
    v10 = type metadata accessor for CalculatorUnitConversionDisplayView();
    v11 = (a3 + *(v10 + 44));
    v12 = *v11;
    v13 = *(v11 + 8);

    v14 = v12;
    if ((v13 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v15 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v9, v5);
      v14 = v20;
    }

    v16 = *(v14 + 16);

    sub_10001B0D8();

    CalculateExpression.expression.getter();

    if ((v13 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v17 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v9, v5);
      v12 = v20;
    }

    v18 = *(v12 + 16);

    sub_10001B0D8();

    CalculateExpression.expression.setter();

    sub_1000EF450(v10);
  }
}

void sub_1000EFC98(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a2;
  if (v11 != 11 && (v11 - 1) <= 1)
  {
    v24 = v8;
    v12 = (a3 + *(type metadata accessor for CalculatorUnitConversionDisplayView() + 44));
    v13 = *v12;
    v14 = *(v12 + 8);

    v15 = v13;
    v23 = v14;
    if ((v14 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v10, v24);
      v15 = v25;
    }

    v17 = *(v15 + 16);

    swift_getKeyPath();
    v25 = v17;
    sub_100006698(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (((v11 == 1) ^ *(v17 + 40)))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *&v22[-16] = v17;
      v22[-8] = v11 == 1;
      v25 = v17;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    if ((v23 & 1) == 0)
    {
      static os_log_type_t.fault.getter();
      v19 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();

      (*(v6 + 8))(v10, v24);
      v13 = v25;
    }

    swift_getKeyPath();
    v25 = v13;
    sub_100006698(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = *(v13 + 54);
    if (v20 == 11 || v20 != v11)
    {
      v21 = swift_getKeyPath();
      __chkstk_darwin(v21);
      *&v22[-16] = v13;
      v22[-8] = v11;
      v25 = v13;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
    }
  }
}

void sub_1000F0118()
{
  v0 = type metadata accessor for CalculatorUnitConversionDisplayView();
  v1 = sub_1000E7CA4(v0);
  swift_getKeyPath();
  sub_100006698(&qword_100155240, type metadata accessor for CalculatorUnitConversionViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + 32);

  v3 = [v2 unitType];

  if (v3 == 16)
  {
    sub_1000EF450(v0);
  }
}

uint64_t sub_1000F021C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  v4 = sub_10003AE84(&qword_100159A90, &qword_100114E90);
  return sub_1000F028C(a1, a2 + *(v4 + 44));
}

uint64_t sub_1000F028C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10003AE84(&qword_100159A98, &qword_100114E98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - v7;
  v9 = sub_10003AE84(&qword_100159AA0, &qword_100114EA0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v27 - v14;
  v16 = type metadata accessor for CalculatorUnitConversionDisplayView();
  sub_1000F0594(v36);
  if (sub_1000E7E04(v16) && (v17 = (a1 + *(v16 + 56)), v18 = *v17, v19 = *(v17 + 1), LOBYTE(v34[0]) = v18, *(&v34[0] + 1) = v19, sub_10003AE84(&qword_1001553F0, &unk_10010D260), State.wrappedValue.getter(), (v32[0] & 1) == 0))
  {
    sub_1000F0668(v16, v8);
    (*(v5 + 32))(v15, v8, v4);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  (*(v5 + 56))(v15, v20, 1, v4);
  v29 = v36[2];
  v30 = v36[3];
  v31 = v37;
  v27 = v36[0];
  v28 = v36[1];
  sub_100008E68(v15, v12, &qword_100159AA0, &qword_100114EA0);
  v21 = v30;
  v32[2] = v29;
  v32[3] = v30;
  v22 = v31;
  v33 = v31;
  v24 = v27;
  v23 = v28;
  v32[0] = v27;
  v32[1] = v28;
  *(a2 + 32) = v29;
  *(a2 + 48) = v21;
  *(a2 + 64) = v22;
  *a2 = v24;
  *(a2 + 16) = v23;
  v25 = sub_10003AE84(&qword_100159AA8, &qword_100114EA8);
  sub_100008E68(v12, a2 + *(v25 + 48), &qword_100159AA0, &qword_100114EA0);
  sub_100008E68(v32, v34, &qword_100159AB0, &qword_100114EB0);
  sub_1000035CC(v15, &qword_100159AA0, &qword_100114EA0);
  sub_1000035CC(v12, &qword_100159AA0, &qword_100114EA0);
  v34[2] = v29;
  v34[3] = v30;
  v35 = v31;
  v34[0] = v27;
  v34[1] = v28;
  return sub_1000035CC(v34, &qword_100159AB0, &qword_100114EB0);
}

uint64_t sub_1000F0594@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001545E0 != -1)
  {
    swift_once();
  }

  v2 = qword_100160C08;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 56) = 0xBFF0000000000000;
  *(a1 + 64) = 0;
}

uint64_t sub_1000F0668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v4 = type metadata accessor for HighlightHoverEffect();
  v70 = *(v4 - 8);
  v71 = v4;
  v5 = *(v70 + 64);
  __chkstk_darwin(v4);
  v68 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlainButtonStyle();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = *(v60 + 64);
  __chkstk_darwin(v7);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  v14 = sub_10003AE84(&qword_100159AB8, &qword_100114EB8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v59 - v16;
  v59 = sub_10003AE84(&qword_100159AC0, &qword_100114EC0);
  v18 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v20 = &v59 - v19;
  v64 = sub_10003AE84(&qword_100159AC8, &qword_100114EC8);
  v21 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v62 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v63 = &v59 - v24;
  v25 = sub_10003AE84(&qword_100159AD0, &qword_100114ED0);
  v66 = *(v25 - 8);
  v67 = v25;
  v26 = *(v66 + 64);
  v27 = __chkstk_darwin(v25);
  v65 = &v59 - v28;
  (*(v11 + 16))(&v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1, v27);
  v29 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = *(a1 + 16);
  (*(v11 + 32))(v30 + v29, &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_10003AE84(&qword_100159AD8, &qword_100114ED8);
  sub_1000F26F4();
  Button.init(action:label:)();
  v31 = sub_1000F28D4(a1);
  KeyPath = swift_getKeyPath();
  v33 = &v17[*(sub_10003AE84(&qword_100159B08, &qword_100114F20) + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  v34 = qword_1001546A8;

  if (v34 != -1)
  {
    swift_once();
  }

  v35 = qword_100160D08;
  v36 = swift_getKeyPath();
  v37 = &v17[*(v14 + 36)];
  *v37 = v36;
  v37[1] = v35;

  PlainButtonStyle.init()();
  sub_1000F2B14();
  sub_100006698(&qword_100154770, &type metadata accessor for PlainButtonStyle);
  v38 = v61;
  View.buttonStyle<A>(_:)();
  (*(v60 + 8))(v10, v38);
  sub_1000035CC(v17, &qword_100159AB8, &qword_100114EB8);
  v39 = &v20[*(v59 + 36)];
  __asm { FMOV            V0.2D, #8.0 }

  *v39 = _Q0;
  *(v39 + 1) = xmmword_100114D50;
  sub_1000F2CB0();
  v45 = v62;
  View.accessibilityIdentifier(_:)();
  sub_1000035CC(v20, &qword_100159AC0, &qword_100114EC0);
  LocalizedStringKey.init(stringLiteral:)();
  v46 = Text.init(_:tableName:bundle:comment:)();
  v48 = v47;
  v50 = v49;
  v51 = v63;
  v52 = v64;
  ModifiedContent<>.accessibilityLabel(_:)();
  sub_10000C6AC(v46, v48, v50 & 1);

  sub_1000035CC(v45, &qword_100159AC8, &qword_100114EC8);
  LocalizedStringKey.init(stringLiteral:)();
  v53 = sub_1000F2E1C(&qword_100159B40, &qword_100159AC8, &qword_100114EC8, sub_1000F2CB0);
  v54 = v65;
  View.help(_:)();

  sub_1000035CC(v51, &qword_100159AC8, &qword_100114EC8);
  v55 = v68;
  static CustomHoverEffect<>.highlight.getter();
  v72 = v52;
  v73 = v53;
  swift_getOpaqueTypeConformance2();
  sub_100006698(&qword_1001597E8, &type metadata accessor for HighlightHoverEffect);
  v56 = v67;
  v57 = v71;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v70 + 8))(v55, v57);
  return (*(v66 + 8))(v54, v56);
}

uint64_t sub_1000F0E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21[0] = a3;
  v21[1] = a4;
  v6 = type metadata accessor for CalculatorUnitConversionDisplayView();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v21 - v9;
  v11 = sub_10003AE84(&qword_1001558A0, &qword_10010F440);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v21 - v15;
  (*(v7 + 16))(v10, a1, v6, v14);
  v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v18 = swift_allocObject();
  v19 = v21[0];
  *(v18 + 16) = a2;
  *(v18 + 24) = v19;
  (*(v7 + 32))(v18 + v17, v10, v6);
  Button.init(action:label:)();
  sub_100004880(&qword_1001563B8, &qword_1001558A0, &qword_10010F440);
  View.allowsSecureDrawing(_:)();
  return (*(v12 + 8))(v16, v11);
}

uint64_t sub_1000F1084@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000F10EC@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000F1164@<X0>(void (*a1)(__n128)@<X0>, char *a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v43 = a5;
  v44 = a6;
  v40 = a4;
  v41 = a2;
  v8 = type metadata accessor for EnvironmentValues();
  v38 = *(v8 - 8);
  v39 = v8;
  v9 = *(v38 + 64);
  __chkstk_darwin(v8);
  v37 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(a3 - 8);
  v11 = *(v42 + 64);
  __chkstk_darwin(v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ModifiedContent();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v36 - v21;
  v24 = __chkstk_darwin(v23);
  v26 = &v36 - v25;
  a1(v24);
  static Edge.Set.bottom.getter();
  v27 = &v41[*(type metadata accessor for CalculatorUnitConversionDisplayView() + 52)];
  v28 = *v27;
  v29 = v27[8];

  if ((v29 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v41 = v26;
    v30 = static Log.runtimeIssuesLog.getter();
    v26 = v41;
    os_log(_:dso:log:_:_:)();

    v31 = v37;
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v38 + 8))(v31, v39);
    v28 = v50[0];
  }

  sub_1000D3EAC(v28);

  v32 = v43;
  View.padding(_:_:)();
  (*(v42 + 8))(v14, a3);
  v50[2] = v32;
  v50[3] = &protocol witness table for _PaddingLayout;
  WitnessTable = swift_getWitnessTable();
  sub_100020EE8(v22, v15, WitnessTable);
  v34 = *(v16 + 8);
  v34(v22, v15);
  v48 = 0;
  v49 = 0;
  v50[0] = &v48;
  (*(v16 + 16))(v19, v26, v15);
  v50[1] = v19;
  v47[0] = &type metadata for Spacer;
  v47[1] = v15;
  v45 = &protocol witness table for Spacer;
  v46 = WitnessTable;
  sub_100022AFC(v50, 2uLL, v47);
  v34(v26, v15);
  return (v34)(v19, v15);
}

uint64_t sub_1000F1598(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentValues();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001546E8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000048C8(v7, qword_100160D38);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Swap button tapped", v10, 2u);
  }

  v11 = type metadata accessor for CalculatorUnitConversionDisplayView();
  v12 = (a1 + *(v11 + 44));
  v13 = *v12;
  v14 = *(v12 + 8);

  if (v14)
  {
    v15 = *(v13 + 16);

    sub_1000D9280();
  }

  else
  {
    static os_log_type_t.fault.getter();
    v16 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v17 = *(v22 + 16);

    sub_1000D9280();

    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v3 + 8))(v6, v2);
    v13 = v22;
  }

  swift_getKeyPath();
  v22 = v13;
  sub_100006698(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v13 + 54) != 11)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v21 - 2) = v13;
    *(&v21 - 8) = 11;
    v22 = v13;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return sub_1000EF450(v11);
}

uint64_t sub_1000F19B8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v26 = sub_10003AE84(&qword_100158AC8, &unk_1001134A0);
  v1 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  v8 = *(v7 - 8);
  v9 = v8[8];
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  v28 = sub_10003AE84(&qword_100158AD0, &unk_1001152D0);
  v15 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v17 = &v25 - v16;
  if (qword_100154430 != -1)
  {
    swift_once();
  }

  v18 = qword_100160968;
  v30 = qword_100160968;
  v19 = v8[13];
  v19(v14, enum case for DynamicTypeSize.xLarge(_:), v7);
  v19(v11, enum case for DynamicTypeSize.accessibility5(_:), v7);
  sub_100006698(&qword_100158AF0, &type metadata accessor for DynamicTypeSize);
  v27 = v18;

  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v21 = v8[4];
    v21(v6, v14, v7);
    v22 = v26;
    v21(&v6[*(v26 + 48)], v11, v7);
    sub_100008E68(v6, v3, &qword_100158AC8, &unk_1001134A0);
    v23 = *(v22 + 48);
    v21(v17, v3, v7);
    v24 = v8[1];
    v24(&v3[v23], v7);
    sub_1000F4084(v6, v3);
    v21(&v17[*(v28 + 36)], &v3[*(v22 + 48)], v7);
    v24(v3, v7);
    sub_100004880(&qword_100158B00, &qword_100158AD0, &unk_1001152D0);
    View.dynamicTypeSize<A>(_:)();
    sub_1000035CC(v17, &qword_100158AD0, &unk_1001152D0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F1D94(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for CalculatorUnitConversionDisplayView() + 60));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_10003AE84(&qword_1001553F0, &unk_10010D260);
  return State.wrappedValue.setter();
}

uint64_t sub_1000F1E08@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DynamicTypeSize();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10003AE84(&qword_100159AF8, &qword_100114EE8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_10003AE84(&qword_100159B48, &qword_100114F90);
  sub_1000F2048(&v10[*(v11 + 44)]);
  (*(v3 + 104))(v6, enum case for DynamicTypeSize.small(_:), v2);
  sub_100004880(&qword_100159B00, &qword_100159AF8, &qword_100114EE8);
  View.dynamicTypeSize(_:)();
  (*(v3 + 8))(v6, v2);
  sub_1000035CC(v10, &qword_100159AF8, &qword_100114EE8);
  KeyPath = swift_getKeyPath();
  v13 = a1 + *(sub_10003AE84(&qword_100159AF0, &qword_100114EE0) + 36);
  *v13 = KeyPath;
  *(v13 + 8) = 1;
  *(v13 + 16) = 0;
  v14 = swift_getKeyPath();
  result = sub_10003AE84(&qword_100159AD8, &qword_100114ED8);
  v16 = (a1 + *(result + 36));
  *v16 = v14;
  v16[1] = 0x3FE6666666666666;
  return result;
}

uint64_t sub_1000F2048@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10003AE84(&qword_100159B50, &unk_100114FF8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v22 - v7);
  LocalizedStringKey.init(stringLiteral:)();
  v9 = Text.init(_:tableName:bundle:comment:)();
  v11 = v10;
  v23 = v12;
  v14 = v13;
  if (qword_100154400 != -1)
  {
    swift_once();
  }

  v15 = qword_100160938;
  v16 = (v8 + *(v2 + 36));
  v17 = *(sub_10003AE84(&qword_1001580E8, &qword_100112700) + 28);
  v18 = enum case for ControlSize.small(_:);
  v19 = type metadata accessor for ControlSize();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  *v8 = v15;
  sub_100008E68(v8, v5, &qword_100159B50, &unk_100114FF8);
  *a1 = v9;
  *(a1 + 8) = v11;
  LOBYTE(v17) = v23 & 1;
  *(a1 + 16) = v23 & 1;
  *(a1 + 24) = v14;
  v20 = sub_10003AE84(&qword_100159B58, &qword_100115038);
  sub_100008E68(v5, a1 + *(v20 + 48), &qword_100159B50, &unk_100114FF8);

  sub_10006564C(v9, v11, v17);

  sub_1000035CC(v8, &qword_100159B50, &unk_100114FF8);
  sub_1000035CC(v5, &qword_100159B50, &unk_100114FF8);
  sub_10000C6AC(v9, v11, v17);
}

uint64_t sub_1000F234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_10003AE84(&qword_100154948, qword_1001130B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v12 - v9;
  sub_100008E68(a1, &v12 - v9, &qword_100154948, qword_1001130B0);
  return a5(v10);
}

uint64_t sub_1000F23FC@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1000F2430(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return EnvironmentValues.lineLimit.setter();
}

uint64_t sub_1000F2484(uint64_t a1)
{
  v2 = type metadata accessor for ControlSize();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return EnvironmentValues.controlSize.setter();
}

unint64_t sub_1000F2580()
{
  result = qword_100159A70;
  if (!qword_100159A70)
  {
    sub_10003AECC(&qword_100159A50, &qword_100114E60);
    sub_100004880(&qword_100159A78, &qword_100159A80, &qword_100114E88);
    sub_100004880(&qword_100159A88, &qword_100159A60, &unk_100114E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159A70);
  }

  return result;
}

uint64_t sub_1000F2674()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for CalculatorUnitConversionDisplayView() - 8);
  return sub_1000F1D94(v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
}

unint64_t sub_1000F26F4()
{
  result = qword_100159AE0;
  if (!qword_100159AE0)
  {
    sub_10003AECC(&qword_100159AD8, &qword_100114ED8);
    sub_1000F27AC();
    sub_100004880(&qword_1001584D8, &qword_1001584E0, &qword_100112E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159AE0);
  }

  return result;
}

unint64_t sub_1000F27AC()
{
  result = qword_100159AE8;
  if (!qword_100159AE8)
  {
    sub_10003AECC(&qword_100159AF0, &qword_100114EE0);
    sub_10003AECC(&qword_100159AF8, &qword_100114EE8);
    sub_100004880(&qword_100159B00, &qword_100159AF8, &qword_100114EE8);
    swift_getOpaqueTypeConformance2();
    sub_100004880(&qword_1001569B8, &qword_1001569C0, &qword_10010FC40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159AE8);
  }

  return result;
}

uint64_t sub_1000F28D4(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v1 + *(a1 + 44));
  v9 = *v8;
  v10 = *(v8 + 8);

  if ((v10 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v7, v3);
    v9 = v16;
  }

  swift_getKeyPath();
  v16 = v9;
  sub_100006698(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v9 + 53);

  if (v12 == 1)
  {
    if (qword_100154550 != -1)
    {
      swift_once();
    }

    v13 = &qword_100160B78;
  }

  else
  {
    if (qword_100154548 != -1)
    {
      swift_once();
    }

    v13 = &qword_100160B70;
  }

  return *v13;
}

unint64_t sub_1000F2B14()
{
  result = qword_100159B10;
  if (!qword_100159B10)
  {
    sub_10003AECC(&qword_100159AB8, &qword_100114EB8);
    sub_1000F2BCC();
    sub_100004880(&qword_100156378, &qword_100156380, &qword_100112E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159B10);
  }

  return result;
}

unint64_t sub_1000F2BCC()
{
  result = qword_100159B18;
  if (!qword_100159B18)
  {
    sub_10003AECC(&qword_100159B08, &qword_100114F20);
    sub_100004880(&qword_100159B20, &qword_100159B28, &unk_100114F58);
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159B18);
  }

  return result;
}

unint64_t sub_1000F2CB0()
{
  result = qword_100159B30;
  if (!qword_100159B30)
  {
    sub_10003AECC(&qword_100159AC0, &qword_100114EC0);
    sub_10003AECC(&qword_100159AB8, &qword_100114EB8);
    type metadata accessor for PlainButtonStyle();
    sub_1000F2B14();
    sub_100006698(&qword_100154770, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1000F2DC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159B30);
  }

  return result;
}

unint64_t sub_1000F2DC8()
{
  result = qword_100159B38;
  if (!qword_100159B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159B38);
  }

  return result;
}

uint64_t sub_1000F2E1C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10003AECC(a2, a3);
    a4();
    sub_100006698(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F2EE8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for CalculatorUnitConversionDisplayView() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_1000F2F98(uint64_t a1, _BYTE *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = type metadata accessor for CalculatorUnitConversionDisplayView();
  if (*a2 == 1)
  {
    v7 = v2 + ((*(*(result - 8) + 80) + 32) & ~*(*(result - 8) + 80));
    return sub_1000EF2D4(result);
  }

  return result;
}

unint64_t sub_1000F3008()
{
  result = qword_100159B90;
  if (!qword_100159B90)
  {
    sub_10003AECC(&qword_100159B60, &qword_100115068);
    sub_1000F3094();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159B90);
  }

  return result;
}

unint64_t sub_1000F3094()
{
  result = qword_100159B98;
  if (!qword_100159B98)
  {
    sub_10003AECC(&qword_100159B88, &qword_100115090);
    sub_100004880(&qword_100159BA0, &qword_100159BA8, &qword_1001150C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159B98);
  }

  return result;
}

uint64_t sub_1000F3164()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for CalculatorUnitConversionDisplayView();
  v4 = v0 + ((*(*(v3 - 8) + 80) + 32) & ~*(*(v3 - 8) + 80));
  return sub_1000EF2D4(v3);
}

unint64_t sub_1000F31C4()
{
  result = qword_1001551E0;
  if (!qword_1001551E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001551E0);
  }

  return result;
}

uint64_t sub_1000F3228(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for CalculatorUnitConversionDisplayView() - 8);
  v9 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a3(a1, a2, v9, v6, v7);
}

void sub_1000F32D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*(type metadata accessor for CalculatorUnitConversionDisplayView() - 8) + 80);

  sub_1000F0118();
}

unint64_t sub_1000F33B4()
{
  result = qword_100159BD0;
  if (!qword_100159BD0)
  {
    sub_10003AECC(&qword_100159BC8, &qword_100115180);
    sub_100004880(&qword_100159BD8, &qword_100159BE0, &qword_100115188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159BD0);
  }

  return result;
}

uint64_t sub_1000F3484(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, __n128))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for CalculatorUnitConversionDisplayView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6.n128_u64[0] = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v5, v2, v3, v6);
}

uint64_t sub_1000F3550()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for CalculatorUnitConversionDisplayView();
  v4 = (*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80);
  v5 = *(*(v3 - 1) + 64);
  v6 = v0 + v4;
  v7 = *(v0 + v4 + 8);

  v8 = v3[9];
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = type metadata accessor for UserInterfaceSizeClass();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  else
  {
    v11 = *(v6 + v8);
  }

  v12 = v3[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for UserInterfaceSizeClass();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v6 + v12, 1, v13))
    {
      (*(v14 + 8))(v6 + v12, v13);
    }
  }

  else
  {
    v15 = *(v6 + v12);
  }

  v16 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v6 + v3[11]);

  v18 = *(v6 + v3[12]);

  v19 = *(v6 + v3[13]);

  v20 = *(v6 + v3[14] + 8);

  v21 = *(v6 + v3[15] + 8);

  v22 = (v6 + v3[16]);
  v23 = *v22;

  v24 = v22[1];

  v25 = v3[19];
  v26 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  (*(*(v26 - 8) + 8))(v6 + v25, v26);
  v27 = *(v0 + v16);

  return swift_deallocObject();
}

uint64_t sub_1000F385C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(type metadata accessor for CalculatorUnitConversionDisplayView() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000EE91C(v2 + v8, *(v2 + v9), v5, v6, a1, a2, *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_1000F393C()
{
  result = qword_100159BF8;
  if (!qword_100159BF8)
  {
    sub_10003AECC(&qword_100159BF0, &qword_100115198);
    sub_100006698(&qword_100159C00, type metadata accessor for InputAccessoryView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159BF8);
  }

  return result;
}

uint64_t sub_1000F39F8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 56);
  return sub_1000F1164(*(v1 + 48), *(v1 + 64), *(v1 + 24), *(v1 + 32), *(v1 + 40), a1);
}

uint64_t sub_1000F3A50(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for CalculatorUnitConversionDisplayView();
  v6 = v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));
  return sub_1000E7F38(a1, v5);
}

uint64_t sub_1000F3ABC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for CalculatorUnitConversionDisplayView();
  v4 = *(*(v3 - 1) + 64);
  v5 = v0 + ((*(*(v3 - 1) + 80) + 32) & ~*(*(v3 - 1) + 80));
  v6 = *(v5 + 8);

  v7 = v3[9];
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  else
  {
    v10 = *(v5 + v7);
  }

  v11 = v3[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = type metadata accessor for UserInterfaceSizeClass();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v5 + v11, 1, v12))
    {
      (*(v13 + 8))(v5 + v11, v12);
    }
  }

  else
  {
    v14 = *(v5 + v11);
  }

  v15 = *(v5 + v3[11]);

  v16 = *(v5 + v3[12]);

  v17 = *(v5 + v3[13]);

  v18 = *(v5 + v3[14] + 8);

  v19 = *(v5 + v3[15] + 8);

  v20 = (v5 + v3[16]);
  v21 = *v20;

  v22 = v20[1];

  v23 = v3[19];
  v24 = sub_10003AE84(&qword_1001565D8, qword_100113B00);
  (*(*(v24 - 8) + 8))(v5 + v23, v24);

  return swift_deallocObject();
}

double sub_1000F3DA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (type metadata accessor for CalculatorUnitConversionDisplayView() - 8);
  v4 = (*(*v3 + 80) + 32) & ~*(*v3 + 80);
  v5 = v0 + v4;
  v6 = *(v0 + ((*(*v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  ViewDimensions.height.getter();
  return v7 - v6 * (*(v5 + v3[19]) / *(v5 + v3[20]));
}

uint64_t sub_1000F3E60@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[5];
  return sub_1000EA710(v1[4], v1[3], a1);
}

unint64_t sub_1000F3E70()
{
  result = qword_100159C58;
  if (!qword_100159C58)
  {
    sub_10003AECC(&qword_100159C60, &qword_1001152A8);
    sub_10003AECC(&qword_100159C68, &qword_1001152B0);
    type metadata accessor for PlainButtonStyle();
    sub_1000F3F88();
    sub_100006698(&qword_100154770, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1000F2DC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159C58);
  }

  return result;
}

unint64_t sub_1000F3F88()
{
  result = qword_100159C70;
  if (!qword_100159C70)
  {
    sub_10003AECC(&qword_100159C68, &qword_1001152B0);
    sub_100004880(&qword_100159C78, &qword_100159C80, &unk_1001152B8);
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159C70);
  }

  return result;
}

uint64_t sub_1000F4084(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100158AC8, &unk_1001134A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for CalculatorConfigSnapshot(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = a1[3];
      if (a1[3])
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (a1[2] << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = a1[1];
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for CalculatorConfigSnapshot(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 1) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1000F4354()
{
  if (v0[2])
  {
    v1 = 0x10000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1000F4214(v2 | *v0 | v1);
}

void sub_1000F43CC()
{
  sub_10001B8B8();
  if (v0 <= 0x3F)
  {
    sub_100010420();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000F4484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = type metadata accessor for AccessibilityTraits();
  v49 = *(v52 - 8);
  v3 = *(v49 + 64);
  __chkstk_darwin(v52);
  v50 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UnitConversionCategoryButtonStyle(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UnitConversionCategoryButton(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = sub_10003AE84(&qword_100159D40, &qword_1001153E8);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  __chkstk_darwin(v12);
  v15 = &v43 - v14;
  v16 = sub_10003AE84(&qword_100159D58, &qword_1001153F0);
  v17 = *(v16 - 8);
  v47 = v16;
  v48 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v43 - v19;
  v45 = sub_10003AE84(&qword_100159D30, &qword_1001153E0);
  v21 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v44 = &v43 - v25;
  sub_1000F4F3C(a1, &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v27 = swift_allocObject();
  sub_1000F4FA0(&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26);
  v53 = a1;
  sub_10003AE84(&qword_100159D60, &qword_1001153F8);
  sub_1000F5070();
  Button.init(action:label:)();
  LODWORD(v26) = *(a1 + 16);
  *v8 = v26;
  v28 = *(v5 + 20);
  v54 = 0x4031000000000000;
  sub_1000103CC();
  ScaledMetric.init(wrappedValue:)();
  v29 = sub_100004880(&qword_100159D48, &qword_100159D40, &qword_1001153E8);
  v30 = sub_1000F4EF4(&qword_100159D50, type metadata accessor for UnitConversionCategoryButtonStyle);
  View.buttonStyle<A>(_:)();
  sub_1000F5180(v8);
  (*(v46 + 8))(v15, v12);
  v32 = *a1;
  v31 = *(a1 + 8);
  v54 = v12;
  v55 = v5;
  v56 = v29;
  v57 = v30;
  swift_getOpaqueTypeConformance2();
  v33 = v47;
  View.accessibilityIdentifier(_:)();
  (*(v48 + 8))(v20, v33);
  v54 = v32;
  v55 = v31;
  v34 = v44;
  sub_10006345C();
  ModifiedContent<>.accessibilityLabel<A>(_:)();
  sub_100039B40(v23);
  if (v26 == 1)
  {
    sub_10003AE84(&qword_100157A80, &unk_100115410);
    v35 = v49;
    v36 = *(v49 + 72);
    v37 = (*(v49 + 80) + 32) & ~*(v49 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_10010BDE0;
    static AccessibilityTraits.isSelected.getter();
    v54 = v38;
    sub_1000F4EF4(&qword_100156A68, &type metadata accessor for AccessibilityTraits);
    sub_10003AE84(&qword_100156A70, &qword_100112040);
    sub_100004880(&qword_100156A78, &qword_100156A70, &qword_100112040);
    v39 = v50;
    v40 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v41 = v35;
  }

  else
  {
    v54 = _swiftEmptyArrayStorage;
    sub_1000F4EF4(&qword_100156A68, &type metadata accessor for AccessibilityTraits);
    sub_10003AE84(&qword_100156A70, &qword_100112040);
    sub_100004880(&qword_100156A78, &qword_100156A70, &qword_100112040);
    v39 = v50;
    v40 = v52;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v41 = v49;
  }

  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v41 + 8))(v39, v40);
  return sub_100039B40(v34);
}

uint64_t sub_1000F4B88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = *a1;
  v31 = a1[1];
  sub_10006345C();

  v29 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = static Edge.Set.vertical.getter();
  v11 = type metadata accessor for UnitConversionCategoryButton(0);
  v12 = *(v11 + 28);
  sub_10003AE84(&qword_1001565D8, qword_100113B00);
  ScaledMetric.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v7 & 1;
  v22 = static Edge.Set.horizontal.getter();
  v23 = a1 + *(v11 + 32);
  ScaledMetric.wrappedValue.getter();
  result = EdgeInsets.init(_all:)();
  *a2 = v29;
  *(a2 + 8) = v5;
  *(a2 + 16) = v21;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v14;
  *(a2 + 48) = v16;
  *(a2 + 56) = v18;
  *(a2 + 64) = v20;
  *(a2 + 72) = 0;
  *(a2 + 80) = v22;
  *(a2 + 88) = v25;
  *(a2 + 96) = v26;
  *(a2 + 104) = v27;
  *(a2 + 112) = v28;
  *(a2 + 120) = 0;
  return result;
}

uint64_t sub_1000F4CD8()
{
  sub_10003AE84(&qword_100159D30, &qword_1001153E0);
  sub_1000F4D58();
  return GlassEffectContainer.init(spacing:content:)();
}

unint64_t sub_1000F4D58()
{
  result = qword_100159D38;
  if (!qword_100159D38)
  {
    sub_10003AECC(&qword_100159D30, &qword_1001153E0);
    sub_10003AECC(&qword_100159D40, &qword_1001153E8);
    type metadata accessor for UnitConversionCategoryButtonStyle(255);
    sub_100004880(&qword_100159D48, &qword_100159D40, &qword_1001153E8);
    sub_1000F4EF4(&qword_100159D50, type metadata accessor for UnitConversionCategoryButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_1000F4EF4(&qword_1001553C8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159D38);
  }

  return result;
}

uint64_t sub_1000F4EF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000F4F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnitConversionCategoryButton(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F4FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnitConversionCategoryButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F5004()
{
  v1 = *(type metadata accessor for UnitConversionCategoryButton(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + 32);
  return (*(v2 + 24))();
}

unint64_t sub_1000F5070()
{
  result = qword_100159D68;
  if (!qword_100159D68)
  {
    sub_10003AECC(&qword_100159D60, &qword_1001153F8);
    sub_1000F50FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159D68);
  }

  return result;
}

unint64_t sub_1000F50FC()
{
  result = qword_100159D70;
  if (!qword_100159D70)
  {
    sub_10003AECC(&qword_100159D78, &unk_100115400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159D70);
  }

  return result;
}

uint64_t sub_1000F5180(uint64_t a1)
{
  v2 = type metadata accessor for UnitConversionCategoryButtonStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000F5204()
{
  sub_100010420();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000F529C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10003AE84(&qword_100158400, &qword_100112CF8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = sub_10003AE84(&qword_100159E20, &qword_100115490);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v33 - v10;
  v12 = sub_10003AE84(&qword_100159E28, &qword_100115498);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v33 - v14;
  ButtonStyleConfiguration.label.getter();
  if (qword_1001546B0 != -1)
  {
    swift_once();
  }

  v16 = qword_100160D10;
  KeyPath = swift_getKeyPath();
  v18 = &v7[*(sub_10003AE84(&qword_100158448, &qword_100112D70) + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  v19 = swift_getKeyPath();
  v20 = &v7[*(sub_10003AE84(&qword_100158450, &qword_100112DA8) + 36)];
  *v20 = v19;
  v20[1] = 0x3FB999999999999ALL;
  v21 = swift_getKeyPath();
  v22 = &v7[*(v4 + 36)];
  *v22 = v21;
  *(v22 + 1) = 1;
  v22[16] = 0;
  v23 = *v2;
  if (v23 == 1)
  {
    v24 = qword_100154560;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = &qword_100160B88;
  }

  else
  {
    v26 = qword_100154558;

    if (v26 != -1)
    {
      swift_once();
    }

    v25 = &qword_100160B80;
  }

  v27 = *v25;

  v28 = swift_getKeyPath();
  sub_10000D5B8(v7, v11, &qword_100158400, &qword_100112CF8);
  v29 = &v11[*(v8 + 36)];
  *v29 = v28;
  v29[1] = v27;
  v30 = &v15[*(v12 + 36)];
  v31 = v30 + *(sub_10003AE84(&qword_100158460, &qword_100115570) + 28);
  static ButtonBorderShape.capsule.getter();
  *v30 = swift_getKeyPath();
  sub_10000D5B8(v11, v15, &qword_100159E20, &qword_100115490);
  sub_10000D5B8(v15, a1, &qword_100159E28, &qword_100115498);
  result = sub_10003AE84(&qword_100159E30, &qword_1001155A8);
  *(a1 + *(result + 36)) = v23;
  return result;
}

uint64_t sub_1000F5614@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v43 = a1;
  v44 = a3;
  v4 = sub_10003AE84(&qword_100159E58, &qword_100115640);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v35 - v6;
  v8 = type metadata accessor for DefaultGlassEffectShape();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for Glass();
  v12 = *(v41 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v41);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v35 - v17;
  v19 = sub_10003AE84(&qword_100159E60, &qword_100115648);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v23 = &v35 - v22;
  if (a2)
  {
    v37 = v21;
    v38 = v4;
    v39 = v19;
    v40 = v7;
    v24 = v8;
    static Glass.regular.getter();
    if (qword_100154568 != -1)
    {
      swift_once();
    }

    Glass.tint(_:)();
    v36 = *(v12 + 8);
    v25 = v41;
    v36(v15, v41);
    DefaultGlassEffectShape.init()();
    v26 = sub_10003AE84(&qword_100159E68, &qword_100115650);
    v27 = sub_100004880(&qword_100159E70, &qword_100159E68, &qword_100115650);
    v28 = sub_1000F4EF4(&qword_100159E78, &type metadata accessor for DefaultGlassEffectShape);
    View.glassEffect<A>(_:in:)();
    (*(v42 + 8))(v11, v24);
    v36(v18, v25);
    v29 = v37;
    v30 = v39;
    (*(v37 + 16))(v40, v23, v39);
    swift_storeEnumTagMultiPayload();
    v45 = v26;
    v46 = v24;
    v47 = v27;
    v48 = v28;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v29 + 8))(v23, v30);
  }

  else
  {
    v32 = sub_10003AE84(&qword_100159E68, &qword_100115650);
    (*(*(v32 - 8) + 16))(v7, v43, v32);
    swift_storeEnumTagMultiPayload();
    v33 = sub_100004880(&qword_100159E70, &qword_100159E68, &qword_100115650);
    v34 = sub_1000F4EF4(&qword_100159E78, &type metadata accessor for DefaultGlassEffectShape);
    v45 = v32;
    v46 = v8;
    v47 = v33;
    v48 = v34;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1000F5B74(uint64_t a1)
{
  v2 = type metadata accessor for ButtonBorderShape();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return EnvironmentValues._buttonBorderShape.setter();
}

unint64_t sub_1000F5C4C()
{
  result = qword_100159E38;
  if (!qword_100159E38)
  {
    sub_10003AECC(&qword_100159E30, &qword_1001155A8);
    sub_1000F5CD8();
    sub_1000F5E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159E38);
  }

  return result;
}

unint64_t sub_1000F5CD8()
{
  result = qword_100159E40;
  if (!qword_100159E40)
  {
    sub_10003AECC(&qword_100159E28, &qword_100115498);
    sub_1000F5D90();
    sub_100004880(&qword_1001584E8, &qword_100158460, &qword_100115570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159E40);
  }

  return result;
}

unint64_t sub_1000F5D90()
{
  result = qword_100159E48;
  if (!qword_100159E48)
  {
    sub_10003AECC(&qword_100159E20, &qword_100115490);
    sub_100026C34();
    sub_100004880(&qword_100155490, &qword_100155498, &unk_10010F350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159E48);
  }

  return result;
}

unint64_t sub_1000F5E48()
{
  result = qword_100159E50;
  if (!qword_100159E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159E50);
  }

  return result;
}

unint64_t sub_1000F5EB8()
{
  result = qword_100159E80;
  if (!qword_100159E80)
  {
    sub_10003AECC(&qword_100159E88, &qword_100115658);
    sub_10003AECC(&qword_100159E68, &qword_100115650);
    type metadata accessor for DefaultGlassEffectShape();
    sub_100004880(&qword_100159E70, &qword_100159E68, &qword_100115650);
    sub_1000F4EF4(&qword_100159E78, &type metadata accessor for DefaultGlassEffectShape);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100159E80);
  }

  return result;
}

id sub_1000F5FFC()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v3 = [objc_allocWithZone(NSNumberFormatter) init];
    [v3 setNumberStyle:1];
    [v3 setMaximumIntegerDigits:10];
    [v3 setMaximumFractionDigits:3];
    swift_getKeyPath();
    sub_100003EAC();
    v4 = v0;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    [v3 setUsesGroupingSeparator:*(v0 + 16)];
    sub_1000F71E4(v3);
    v5 = *(v0 + 56);
    *(v4 + 56) = v3;
    v2 = v3;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_1000F6110()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 64);
  }

  else
  {
    v3 = [objc_allocWithZone(NSNumberFormatter) init];
    [v3 setNumberStyle:5];
    v4 = *(v0 + 64);
    *(v0 + 64) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1000F6190()
{
  swift_getKeyPath();
  sub_100003EAC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 72);
}

uint64_t sub_1000F6200()
{
  swift_getKeyPath();
  sub_100003EAC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 73);
}

void sub_1000F6270(char a1)
{
  v2 = v1;
  v4 = a1 & 1;
  swift_getKeyPath();
  sub_100003EAC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 17) != v4)
  {
    if (qword_1001546F8 != -1)
    {
      swift_once();
    }

    v5 = qword_100160D68;
    v6 = a1 & 1;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v8 = String._bridgeToObjectiveC()();
    [v5 setValue:isa forKey:v8];

    if (*(v2 + 17) == v6)
    {
      *(v2 + 17) = v6;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    sub_100003758();
    v10 = [objc_opt_self() defaultCenter];
    if (qword_1001544F8 != -1)
    {
      swift_once();
    }

    [v10 postNotificationName:qword_100160B20 object:0];
  }
}

uint64_t sub_1000F64A0(uint64_t a1)
{
  v2 = sub_10003AE84(&qword_100155210, &qword_100111700);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v15 - v4;
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v6 = qword_100160D68;
  sub_1000F786C(a1, v5);
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_1000035CC(v5, &qword_100155210, &qword_100111700);
    v9 = 0;
  }

  else
  {
    v15[0] = Locale.identifier.getter();
    v15[1] = v10;
    (*(v8 + 8))(v5, v7);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    sub_1000500D8(v15);
  }

  v11 = String._bridgeToObjectiveC()();
  [v6 setObject:v9 forKey:v11];
  swift_unknownObjectRelease();

  v12 = sub_100003D58();
  sub_1000F71E4(v12);

  v13 = sub_1000F5FFC();
  sub_1000F71E4(v13);

  sub_100003758();
  return sub_1000035CC(a1, &qword_100155210, &qword_100111700);
}

uint64_t sub_1000F66B0()
{
  swift_getKeyPath();
  sub_100003EAC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_1000F6720@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100003EAC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1000F67C0(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100003EAC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_1000F68A0(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  sub_100003EAC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 16) != v2)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v4 = sub_100003D58();
    [v4 setUsesGroupingSeparator:v2];

    v5 = sub_1000F5FFC();
    [v5 setUsesGroupingSeparator:v2];

    if (qword_1001546F8 != -1)
    {
      swift_once();
    }

    v6 = qword_100160D68;
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    v8 = String._bridgeToObjectiveC()();
    [v6 setValue:isa forKey:v8];
  }
}

uint64_t sub_1000F6A78()
{
  swift_getKeyPath();
  sub_100003EAC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 17);
}

uint64_t sub_1000F6AE8(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100003EAC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000F6BC8(uint64_t result)
{
  if (*(v1 + 72) == (result & 1))
  {
    *(v1 + 72) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100003EAC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000F6CA8(uint64_t result)
{
  if (*(v1 + 73) == (result & 1))
  {
    *(v1 + 73) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100003EAC();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000F6D88(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a2)
  {
    swift_errorRetain();
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000048C8(v5, qword_100160D38);
    swift_errorRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v6, v7))
    {

      return a3(a2);
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Prompt to unlock failed: %@", v8, 0xCu);
    sub_1000035CC(v9, &qword_100154BE8, &qword_10010C010);
  }

  else
  {
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000048C8(v11, qword_100160D38);
    v6 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v6, v12, "Prompt to unlock succeeded", v13, 2u);
    }
  }

  return a3(a2);
}

void sub_1000F6FCC(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1000F7058@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100003EAC();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 73);
  return result;
}

uint64_t sub_1000F70F8()
{
  v1 = OBJC_IVAR____TtC10Calculator11AppSettings___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

void *sub_1000F71C4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_1000F71E4(void *a1)
{
  v2 = (*(*(sub_10003AE84(&qword_100155210, &qword_100111700) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v15 - v3;
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1001546F8 != -1)
  {
    swift_once();
  }

  v10 = qword_100160D68;
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 stringForKey:v11];

  if (v12)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    Locale.init(identifier:)();
    (*(v6 + 56))(v4, 0, 1, v5);
    (*(v6 + 32))(v9, v4, v5);
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
    static Locale.current.getter();
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      sub_1000035CC(v4, &qword_100155210, &qword_100111700);
    }
  }

  isa = Locale._bridgeToObjectiveC()().super.isa;
  [a1 setLocale:isa];

  return (*(v6 + 8))(v9, v5);
}

void sub_1000F7484(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  if (v4)
  {
    v5 = v4;
    sub_10003AE84(&qword_100159FA0, &unk_1001157D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10010BDE0;
    aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v7;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Bool;
    *(inited + 72) = 1;
    sub_100076F38(inited);
    swift_setDeallocating();
    sub_1000035CC(inited + 32, &qword_100156050, &qword_10010E408);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v9 = [objc_opt_self() optionsWithDictionary:isa];

    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000048C8(v10, qword_100160D38);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Will attempt to open Calculator application for prompt to unlock", v13, 2u);
    }

    v14 = String._bridgeToObjectiveC()();
    v15 = swift_allocObject();
    *(v15 + 16) = a1;
    *(v15 + 24) = a2;
    v25 = sub_1000F785C;
    v26 = v15;
    aBlock = _NSConcreteStackBlock;
    v22 = 1107296256;
    v23 = sub_1000F6FCC;
    v24 = &unk_10014E040;
    v16 = _Block_copy(&aBlock);

    [v5 openApplication:v14 withOptions:v9 completion:v16];
    _Block_release(v16);
  }

  else
  {
    if (qword_1001546E8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_1000048C8(v17, qword_100160D38);
    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v18, "Unable to create the FrontBoard open application service", v19, 2u);
    }
  }
}

uint64_t sub_1000F786C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003AE84(&qword_100155210, &qword_100111700);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F7974()
{
  sub_10003AE84(&qword_10015A050, &qword_100115848);
  LazyState2.wrappedValue.getter();
  v0 = *(v9 + 24);
  v1 = type metadata accessor for AnalyticsTimeStampInfo();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  Date.init()();
  Date.init()();
  v5 = *(v0 + 16);
  *(v0 + 16) = v4;

  sub_1000613EC(v9, *(v9 + 24));

  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v6 = qword_100160D98;
  sub_10000362C();
  swift_getKeyPath();
  sub_1000029DC(&qword_100154C00, type metadata accessor for AppSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v6 + 72) == 1)
  {
    v8 = Transaction.disablesAnimations.setter();
    __chkstk_darwin(v8);
    withTransaction<A>(_:_:)();
  }

  return result;
}

uint64_t sub_1000F7B58()
{
  sub_10003AE84(&qword_10015A050, &qword_100115848);
  LazyState2.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000029DC(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v12 + 48);

  if (v0 == 2)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  LazyState2.wrappedValue.getter();
  sub_1000560A8(0);

LABEL_5:
  v2 = *(type metadata accessor for CalculatorAppScene(0) + 28);
  sub_10003AE84(&qword_10015A058, &unk_100115850);
  LazyState2.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000029DC(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v12 + 16);

  if (v3 == 1)
  {
    LazyState2.wrappedValue.getter();
    if (qword_100154728 != -1)
    {
      swift_once();
    }

    sub_10000362C();
    sub_100091C5C(0);
  }

  LazyState2.wrappedValue.getter();
  v4 = v12;
  v5 = *(v12 + 16);
  swift_getKeyPath();
  v13 = v5;
  sub_1000029DC(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v5 + 41) == 1)
  {

    goto LABEL_11;
  }

  v9 = *(v4 + 16);
  sub_10001B0D8();

  CalculateExpression.rich.getter();
  v10 = dispatch thunk of CalculateExpression.RichExpression.isEmpty.getter();

  if (v10)
  {
  }

  CalculateExpression.rich.getter();
  v11 = dispatch thunk of CalculateExpression.RichExpression.isZero.getter();

  if ((v11 & 1) == 0)
  {
LABEL_11:
    LazyState2.wrappedValue.getter();
    v6 = *(v13 + 16);

    sub_10001B0D8();

    CalculateExpression.clearAll()();

    sub_1000DBEAC();

    CalculateExpression.clearAll()();

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v6 + 41) == 1)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_1000F8070()
{
  sub_10003AE84(&qword_10015A050, &qword_100115848);
  LazyState2.wrappedValue.getter();
  v0 = v6;
  v1 = *(v6 + 16);
  swift_getKeyPath();
  v7 = v1;
  sub_1000029DC(&qword_1001551C0, type metadata accessor for CalculatorExpressionManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + 41) == 1)
  {
  }

  else
  {
    v2 = *(v0 + 16);
    sub_10001B0D8();

    CalculateExpression.rich.getter();
    v3 = dispatch thunk of CalculateExpression.RichExpression.isEmpty.getter();

    if (v3)
    {

      goto LABEL_6;
    }

    CalculateExpression.rich.getter();
    v5 = dispatch thunk of CalculateExpression.RichExpression.isZero.getter();

    if (v5)
    {
      goto LABEL_7;
    }
  }

  LazyState2.wrappedValue.getter();
  sub_10005CA30();
LABEL_6:

LABEL_7:
  LazyState2.wrappedValue.getter();
  sub_1000616E8(0, v7, *(v7 + 24));

  LazyState2.wrappedValue.getter();
  sub_100061B94(0, v7, *(v7 + 24));
}

uint64_t sub_1000F8240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v53 = sub_10003AE84(&qword_10015A190, &qword_100115908);
  v3 = *(*(v53 - 1) + 64);
  __chkstk_darwin(v53);
  v57 = v50 - v4;
  v5 = sub_10003AE84(&qword_10015A198, &qword_100115910);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v50 - v7;
  v9 = sub_10003AE84(&qword_10015A1A0, &qword_100115918);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v50 - v11;
  v13 = sub_10003AE84(&qword_10015A1A8, &qword_100115920);
  v55 = *(v13 - 8);
  v56 = v13;
  v14 = *(v55 + 64);
  __chkstk_darwin(v13);
  v16 = v50 - v15;
  v17 = type metadata accessor for CommandGroupPlacement();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v60 = sub_10003AE84(&qword_10015A1B0, &qword_100115928);
  v54 = *(v60 - 8);
  v19 = *(v54 + 64);
  __chkstk_darwin(v60);
  v21 = v50 - v20;
  static CommandGroupPlacement.newItem.getter();
  v59 = v21;
  CommandGroup.init(replacing:addition:)();
  static CommandGroupPlacement.toolbar.getter();
  v61 = a1;
  sub_10003AE84(&qword_10015A1B8, &qword_100115930);
  sub_100004880(&qword_10015A1C0, &qword_10015A1B8, &qword_100115930);
  v22 = v16;
  CommandGroup.init(before:addition:)();
  sub_10003AE84(&qword_10015A050, &qword_100115848);
  LazyState2.wrappedValue.getter();
  v23 = v62;
  swift_getKeyPath();
  v62 = v23;
  sub_1000029DC(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v24 = *(v23 + 48);

  if (v24 == 2)
  {

    v25 = 1;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v26)
    {
      v25 = 1;
    }

    else
    {
      v27 = static CommandGroupPlacement.sidebar.getter();
      __chkstk_darwin(v27);
      *&v50[-4] = a1;
      sub_10003AE84(&qword_10015A1C8, &qword_100115960);
      sub_10000EEB8();
      CommandGroup.init(replacing:addition:)();
      v25 = 0;
    }
  }

  v28 = sub_10003AE84(&qword_10015A1E8, &qword_100115978);
  v29 = 1;
  v30 = v12;
  (*(*(v28 - 8) + 56))(v12, v25, 1, v28);
  if (os_variant_has_internal_diagnostics())
  {
    if (qword_1001546F8 != -1)
    {
      swift_once();
    }

    v31 = qword_100160D68;
    v32 = String._bridgeToObjectiveC()();
    LODWORD(v31) = [v31 BOOLForKey:v32];

    if (v31)
    {
      v33 = LocalizedStringKey.init(stringLiteral:)();
      v51 = v35;
      v52 = v34;
      v50[3] = v36;
      __chkstk_darwin(v33);
      *&v50[-4] = a1;
      sub_10003AE84(&qword_10015A1F8, &unk_100115988);
      v37 = sub_10003AECC(&qword_1001558A0, &qword_10010F440);
      v38 = sub_100004880(&qword_1001563B8, &qword_1001558A0, &qword_10010F440);
      v62 = v37;
      v63 = v38;
      swift_getOpaqueTypeConformance2();
      CommandMenu.init(_:content:)();
      v29 = 0;
    }

    else
    {
      v29 = 1;
    }
  }

  v39 = sub_10003AE84(&qword_10015A1F0, &qword_100115980);
  (*(*(v39 - 8) + 56))(v8, v29, 1, v39);
  v40 = v54;
  v41 = v53[12];
  v42 = v53[16];
  v52 = v53[20];
  v43 = v57;
  (*(v54 + 16))(v57, v59, v60);
  v44 = v55;
  v45 = &v43[v41];
  v46 = v22;
  v47 = v22;
  v48 = v56;
  (*(v55 + 16))(v45, v47, v56);
  sub_100008E68(v30, &v43[v42], &qword_10015A1A0, &qword_100115918);
  sub_100008E68(v8, &v43[v52], &qword_10015A198, &qword_100115910);
  TupleCommandContent.init(_:)();
  sub_1000035CC(v8, &qword_10015A198, &qword_100115910);
  sub_1000035CC(v30, &qword_10015A1A0, &qword_100115918);
  (*(v44 + 8))(v46, v48);
  return (*(v40 + 8))(v59, v60);
}

uint64_t sub_1000F8A9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v216 = a2;
  v3 = type metadata accessor for CalculatorAppScene(0);
  v207 = *(v3 - 8);
  v4 = *(v207 + 64);
  __chkstk_darwin(v3 - 8);
  v208 = v5;
  v209 = &v177 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_10003AE84(&qword_10015A218, &qword_100115A60);
  v213 = *(v214 - 8);
  v6 = *(v213 + 64);
  __chkstk_darwin(v214);
  v212 = &v177 - v7;
  v211 = sub_10003AE84(&qword_10015A220, &unk_100115A68);
  v8 = *(*(v211 - 8) + 64);
  v9 = __chkstk_darwin(v211);
  v237 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v210 = &v177 - v12;
  __chkstk_darwin(v11);
  v234 = &v177 - v13;
  v236 = type metadata accessor for Divider();
  v215 = *(v236 - 8);
  v14 = *(v215 + 64);
  v15 = __chkstk_darwin(v236);
  v235 = &v177 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v242 = &v177 - v17;
  v227 = type metadata accessor for Locale.LanguageCode();
  v221 = *(v227 - 8);
  v18 = *(v221 + 64);
  __chkstk_darwin(v227);
  v178 = &v177 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_10003AE84(&qword_100157A68, &unk_100112020);
  v20 = *(*(v205 - 8) + 64);
  __chkstk_darwin(v205);
  v222 = &v177 - v21;
  v182 = type metadata accessor for Locale.Language();
  v181 = *(v182 - 8);
  v22 = *(v181 + 64);
  __chkstk_darwin(v182);
  v180 = &v177 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for Locale();
  v203 = *(v204 - 8);
  v24 = *(v203 + 64);
  __chkstk_darwin(v204);
  v179 = &v177 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10003AE84(&qword_100155210, &qword_100111700);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v201 = (&v177 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v28);
  v202 = &v177 - v30;
  v31 = sub_10003AE84(&qword_100157A70, &unk_100112030);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v186 = &v177 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v220 = &v177 - v36;
  __chkstk_darwin(v35);
  v206 = &v177 - v37;
  v38 = sub_10003AE84(&qword_10015A228, &unk_100115A78);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v233 = &v177 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v232 = &v177 - v42;
  v219 = type metadata accessor for KeyEquivalent();
  v239 = *(v219 - 8);
  v43 = *(v239 + 64);
  v44 = __chkstk_darwin(v219);
  v185 = &v177 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v197 = &v177 - v46;
  v218 = sub_10003AE84(&qword_100157A58, &qword_100112010);
  v238 = *(v218 - 8);
  v47 = *(v238 + 64);
  v48 = __chkstk_darwin(v218);
  v184 = &v177 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v223 = &v177 - v50;
  v217 = sub_10003AE84(&qword_10015A230, &qword_100115A88);
  v226 = *(v217 - 8);
  v51 = *(v226 + 64);
  v52 = __chkstk_darwin(v217);
  v183 = &v177 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v200 = &v177 - v54;
  v199 = sub_10003AE84(&qword_10015A238, &qword_100115A90);
  v55 = *(*(v199 - 8) + 64);
  v56 = __chkstk_darwin(v199);
  v231 = &v177 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __chkstk_darwin(v56);
  v198 = &v177 - v59;
  __chkstk_darwin(v58);
  v241 = &v177 - v60;
  v224 = type metadata accessor for InlinePickerStyle();
  v225 = *(v224 - 8);
  v61 = *(v225 + 64);
  __chkstk_darwin(v224);
  v192 = &v177 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_10003AE84(&qword_10015A240, &qword_100115A98);
  v194 = *(v193 - 8);
  v63 = *(v194 + 64);
  __chkstk_darwin(v193);
  v65 = &v177 - v64;
  v195 = sub_10003AE84(&qword_10015A248, &qword_100115AA0);
  v196 = *(v195 - 8);
  v66 = *(v196 + 64);
  __chkstk_darwin(v195);
  v68 = &v177 - v67;
  v230 = sub_10003AE84(&qword_10015A250, &qword_100115AA8);
  v229 = *(v230 - 8);
  v69 = v229[8];
  v70 = __chkstk_darwin(v230);
  v228 = &v177 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v70);
  v240 = &v177 - v72;
  v190 = LocalizedStringKey.init(stringLiteral:)();
  v189 = v73;
  v187 = v74;
  v188 = v75;
  v76 = sub_10003AE84(&qword_10015A050, &qword_100115848);
  LazyState2.projectedValue.getter();
  v77 = v244;
  v78 = v245;
  v79 = v246;
  swift_getKeyPath();
  v244 = v77;
  v245 = v78;
  v246 = v79;
  v191 = sub_10003AE84(&qword_10015A258, &qword_100115AD8);
  Binding.subscript.getter();

  v80 = v251;
  v81 = v252;
  v82 = v253;

  v248 = v80;
  v249 = v81;
  v83 = a1;
  v250 = v82;
  v243 = a1;
  sub_10003AE84(&qword_10015A260, &qword_100115AE0);
  sub_1000083B8();
  sub_100004880(&qword_10015A268, &qword_10015A260, &qword_100115AE0);
  Picker<>.init<A>(_:selection:content:)();
  v84 = v192;
  InlinePickerStyle.init()();
  v85 = sub_100004880(&qword_10015A270, &qword_10015A240, &qword_100115A98);
  v86 = v193;
  v87 = v224;
  View.pickerStyle<A>(_:)();
  (*(v225 + 8))(v84, v87);
  v88 = v65;
  v89 = v197;
  (*(v194 + 8))(v88, v86);
  v244 = v86;
  v245 = v87;
  v246 = v85;
  v247 = &protocol witness table for InlinePickerStyle;
  swift_getOpaqueTypeConformance2();
  v90 = v195;
  View.labelsHidden()();
  (*(v196 + 8))(v68, v90);
  v224 = v76;
  v225 = v83;
  LazyState2.projectedValue.getter();
  v91 = v244;
  v92 = v245;
  v93 = v246;
  swift_getKeyPath();
  v244 = v91;
  v245 = v92;
  v246 = v93;
  Binding.subscript.getter();

  v94 = sub_10003AE84(&qword_100156920, &qword_10010FAA0);
  v95 = sub_100004880(&qword_100156918, &qword_100156920, &qword_10010FAA0);
  v196 = v94;
  v195 = v95;
  Toggle.init(isOn:label:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  sub_10003AE84(&qword_100155958, &qword_1001159D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010DBE0;
  v97 = static EventModifiers.command.getter();
  *(inited + 32) = v97;
  v98 = static EventModifiers.option.getter();
  *(inited + 40) = v98;
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v97)
  {
    EventModifiers.init(rawValue:)();
  }

  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v98)
  {
    EventModifiers.init(rawValue:)();
  }

  v99 = v222;
  v100 = v217;
  v101 = v220;
  v102 = v204;
  v103 = v201;
  v104 = sub_100004880(&qword_100157A78, &qword_100157A58, &qword_100112010);
  v105 = v200;
  v106 = v218;
  v204 = v104;
  v107 = v223;
  View.keyboardShortcut(_:modifiers:)();
  v108 = *(v239 + 8);
  v239 += 8;
  v201 = v108;
  v108(v89, v219);
  v109 = *(v238 + 8);
  v238 += 8;
  v223 = v109;
  (v109)(v107, v106);
  LazyState2.wrappedValue.getter();
  LOBYTE(v106) = sub_10000EBC8();

  KeyPath = swift_getKeyPath();
  v111 = swift_allocObject();
  *(v111 + 16) = (v106 & 1) == 0;
  v112 = *(v226 + 32);
  v113 = v198;
  v200 = (v226 + 32);
  v197 = v112;
  (v112)(v198, v105, v100);
  v114 = (v113 + *(v199 + 36));
  *v114 = KeyPath;
  v114[1] = sub_1000E5BB0;
  v114[2] = v111;
  sub_10003A200(v113, v241);
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v115 = sub_100003D58();
  v116 = [v115 locale];

  v117 = v202;
  v118 = v221;
  if (v116)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v119 = 0;
  }

  else
  {
    v119 = 1;
  }

  v120 = v227;
  v121 = v203;
  (*(v203 + 56))(v103, v119, 1, v102);
  sub_10000D5B8(v103, v117, &qword_100155210, &qword_100111700);
  if ((*(v121 + 48))(v117, 1, v102))
  {
    sub_1000035CC(v117, &qword_100155210, &qword_100111700);
    v122 = v206;
    (*(v118 + 56))(v206, 1, 1, v120);
  }

  else
  {
    v123 = v179;
    (*(v121 + 16))(v179, v117, v102);
    sub_1000035CC(v117, &qword_100155210, &qword_100111700);
    v124 = v180;
    Locale.language.getter();
    (*(v121 + 8))(v123, v102);
    v122 = v206;
    Locale.Language.languageCode.getter();
    (*(v181 + 8))(v124, v182);
  }

  Locale.LanguageCode.init(stringLiteral:)();
  (*(v118 + 56))(v101, 0, 1, v120);
  v125 = *(v205 + 48);
  sub_100008E68(v122, v99, &qword_100157A70, &unk_100112030);
  v126 = v227;
  sub_100008E68(v101, v99 + v125, &qword_100157A70, &unk_100112030);
  v127 = *(v118 + 48);
  if (v127(v99, 1, v126) != 1)
  {
    v130 = v186;
    sub_100008E68(v99, v186, &qword_100157A70, &unk_100112030);
    if (v127(v99 + v125, 1, v126) != 1)
    {
      v132 = v122;
      v133 = v221;
      v134 = v99 + v125;
      v135 = v178;
      (*(v221 + 32))(v178, v134, v126);
      sub_1000029DC(&qword_100157A88, &type metadata accessor for Locale.LanguageCode);
      v136 = v99;
      v137 = v126;
      v138 = dispatch thunk of static Equatable.== infix(_:_:)();
      v139 = *(v133 + 8);
      v139(v135, v137);
      sub_1000035CC(v220, &qword_100157A70, &unk_100112030);
      sub_1000035CC(v132, &qword_100157A70, &unk_100112030);
      v139(v130, v137);
      v100 = v217;
      sub_1000035CC(v136, &qword_100157A70, &unk_100112030);
      v129 = v232;
      if (v138)
      {
        goto LABEL_21;
      }

LABEL_19:
      v131 = 1;
      goto LABEL_22;
    }

    sub_1000035CC(v220, &qword_100157A70, &unk_100112030);
    sub_1000035CC(v122, &qword_100157A70, &unk_100112030);
    (*(v221 + 8))(v130, v126);
    v129 = v232;
LABEL_18:
    sub_1000035CC(v99, &qword_100157A68, &unk_100112020);
    goto LABEL_19;
  }

  sub_1000035CC(v101, &qword_100157A70, &unk_100112030);
  v99 = v222;
  sub_1000035CC(v122, &qword_100157A70, &unk_100112030);
  v128 = v127(v99 + v125, 1, v126);
  v129 = v232;
  if (v128 != 1)
  {
    goto LABEL_18;
  }

  sub_1000035CC(v99, &qword_100157A70, &unk_100112030);
LABEL_21:
  type metadata accessor for MainActor();
  v140 = static MainActor.shared.getter();
  v141 = swift_allocObject();
  *(v141 + 16) = v140;
  *(v141 + 24) = &protocol witness table for MainActor;
  v142 = static MainActor.shared.getter();
  v143 = swift_allocObject();
  *(v143 + 16) = v142;
  *(v143 + 24) = &protocol witness table for MainActor;
  Binding.init(get:set:)();
  v144 = v184;
  Toggle.init(isOn:label:)();
  v145 = v185;
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  v146 = v183;
  v147 = v218;
  View.keyboardShortcut(_:modifiers:)();
  v201(v145, v219);
  (v223)(v144, v147);
  (v197)(v129, v146, v100);
  v131 = 0;
LABEL_22:
  v148 = 1;
  (*(v226 + 56))(v129, v131, 1, v100);
  Divider.init()();
  v149 = v209;
  sub_1000082F0(v225, v209);
  v150 = (*(v207 + 80) + 16) & ~*(v207 + 80);
  v151 = swift_allocObject();
  v152 = sub_100008354(v149, v151 + v150);
  __chkstk_darwin(v152);
  sub_10003AE84(&qword_100156370, &qword_10010F348);
  sub_10000A948();
  v153 = v212;
  Button.init(action:label:)();
  LazyState2.wrappedValue.getter();
  v154 = v244;
  swift_getKeyPath();
  v244 = v154;
  sub_1000029DC(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v154 + 48) != 2)
  {
    v148 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v155 = swift_getKeyPath();
  v156 = swift_allocObject();
  *(v156 + 16) = v148 & 1;
  v157 = v210;
  (*(v213 + 32))(v210, v153, v214);
  v158 = (v157 + *(v211 + 36));
  *v158 = v155;
  v158[1] = sub_1000E5BB0;
  v158[2] = v156;
  v159 = v234;
  sub_10000D5B8(v157, v234, &qword_10015A220, &unk_100115A68);
  v160 = v229[2];
  v161 = v228;
  v162 = v230;
  v160(v228, v240, v230);
  v163 = v231;
  sub_100008E68(v241, v231, &qword_10015A238, &qword_100115A90);
  v164 = v233;
  sub_100008E68(v129, v233, &qword_10015A228, &unk_100115A78);
  v165 = v215;
  v166 = *(v215 + 16);
  v166(v235, v242, v236);
  sub_100008E68(v159, v237, &qword_10015A220, &unk_100115A68);
  v167 = v216;
  v160(v216, v161, v162);
  v168 = sub_10003AE84(&qword_10015A278, &qword_100115B18);
  sub_100008E68(v163, &v167[v168[12]], &qword_10015A238, &qword_100115A90);
  sub_100008E68(v164, &v167[v168[16]], &qword_10015A228, &unk_100115A78);
  v169 = v235;
  v170 = v236;
  v166(&v167[v168[20]], v235, v236);
  v171 = v237;
  sub_100008E68(v237, &v167[v168[24]], &qword_10015A220, &unk_100115A68);
  sub_1000035CC(v234, &qword_10015A220, &unk_100115A68);
  v172 = *(v165 + 8);
  v173 = v170;
  v172(v242, v170);
  sub_1000035CC(v232, &qword_10015A228, &unk_100115A78);
  sub_1000035CC(v241, &qword_10015A238, &qword_100115A90);
  v174 = v229[1];
  v175 = v230;
  v174(v240, v230);
  sub_1000035CC(v171, &qword_10015A220, &unk_100115A68);
  v172(v169, v173);
  sub_1000035CC(v233, &qword_10015A228, &unk_100115A78);
  sub_1000035CC(v231, &qword_10015A238, &qword_100115A90);
  return (v174)(v228, v175);
}

uint64_t sub_1000FA860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a1;
  v96 = a2;
  v2 = sub_10003AE84(&qword_10015A288, &qword_100115BA0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v95 = v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v106 = v83 - v6;
  v99 = sub_10003AE84(&qword_10015A290, &qword_100115BA8);
  v100 = *(v99 - 8);
  v7 = *(v100 + 64);
  v8 = __chkstk_darwin(v99);
  v92 = v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v91 = v83 - v11;
  __chkstk_darwin(v10);
  v103 = v83 - v12;
  v13 = type metadata accessor for KeyEquivalent();
  v105 = *(v13 - 8);
  v14 = *(v105 + 8);
  v15 = __chkstk_darwin(v13);
  v86 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v83 - v17;
  v19 = sub_10003AE84(&qword_100157AB8, &qword_100115BB0);
  v104 = *(v19 - 8);
  v20 = *(v104 + 64);
  v21 = __chkstk_darwin(v19);
  v87 = v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = v83 - v23;
  v101 = sub_10003AE84(&qword_10015A298, &qword_100115BB8);
  v107 = *(v101 - 8);
  v25 = *(v107 + 64);
  v26 = __chkstk_darwin(v101);
  v90 = v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v93 = v83 - v29;
  __chkstk_darwin(v28);
  v31 = v83 - v30;
  LOBYTE(v108) = 0;
  v98 = sub_10003AE84(&qword_100156920, &qword_10010FAA0);
  v97 = sub_1000083B8();
  v32 = sub_100004880(&qword_100156918, &qword_100156920, &qword_10010FAA0);
  PickerOption.init(value:content:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  v33 = sub_100004880(&qword_100157AC0, &qword_100157AB8, &qword_100115BB0);
  v102 = v31;
  v34 = v13;
  v35 = v105;
  v36 = v19;
  PickerContent.keyboardShortcut(_:modifiers:)();
  v37 = *(v35 + 1);
  v37(v18, v34);
  v39 = v104 + 8;
  v38 = *(v104 + 8);
  v38(v24, v36);
  LOBYTE(v108) = 1;
  v83[1] = v32;
  PickerOption.init(value:content:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  static EventModifiers.command.getter();
  v40 = v93;
  v85 = v33;
  PickerContent.keyboardShortcut(_:modifiers:)();
  v88 = v34;
  v41 = v34;
  v42 = v101;
  v84 = v37;
  v105 = (v35 + 8);
  v37(v18, v41);
  v43 = v38;
  v89 = v36;
  v104 = v39;
  v38(v24, v36);
  v44 = (v94 + *(type metadata accessor for CalculatorAppScene(0) + 36));
  v45 = *v44;
  v46 = v44[1];
  v108 = *v44;
  v109 = v46;
  v47 = sub_10003AE84(&qword_10015A2A0, &qword_100115BC0);
  State.wrappedValue.getter();
  v48 = v112;
  swift_getKeyPath();
  v108 = v48;
  v94 = sub_1000029DC(&qword_100154838, type metadata accessor for CalculatorMDMRestrictionsManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
  v49 = 1;

  v50 = v48[OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorModeScientificAllowed];

  v51 = sub_100004880(&qword_10015A2A8, &qword_10015A298, &qword_100115BB8);
  v52 = v40;
  PickerContent.disabled(_:)();
  v53 = *(v107 + 8);
  v107 += 8;
  v53(v52, v42);
  v110 = &type metadata for NotesFeatureFlags;
  v111 = sub_10000840C();
  LOBYTE(v52) = isFeatureEnabled(_:)();
  sub_100003F80(&v108);
  if (v52)
  {
    v83[0] = v47;
    v93 = v51;
    LOBYTE(v108) = 2;
    v54 = v87;
    PickerOption.init(value:content:)();
    v55 = v86;
    KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
    sub_10003AE84(&qword_100155958, &qword_1001159D0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10010DBE0;
    v57 = static EventModifiers.command.getter();
    *(inited + 32) = v57;
    v58 = static EventModifiers.option.getter();
    *(inited + 40) = v58;
    EventModifiers.init(rawValue:)();
    EventModifiers.init(rawValue:)();
    if (EventModifiers.init(rawValue:)() != v57)
    {
      EventModifiers.init(rawValue:)();
    }

    EventModifiers.init(rawValue:)();
    if (EventModifiers.init(rawValue:)() != v58)
    {
      EventModifiers.init(rawValue:)();
    }

    v59 = v90;
    v60 = v89;
    PickerContent.keyboardShortcut(_:modifiers:)();
    v84(v55, v88);
    v43(v54, v60);
    v108 = v45;
    v109 = v46;
    State.wrappedValue.getter();
    v61 = v112;
    swift_getKeyPath();
    v108 = v61;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    LOBYTE(v60) = v61[OBJC_IVAR____TtC10Calculator32CalculatorMDMRestrictionsManager__isCalculatorModeMathPaperAllowed];

    if (v60)
    {
      v62 = objc_allocWithZone(LSApplicationRecord);
      v63 = sub_100008474(0xD000000000000015, 0x80000001001072A0, 0);
      v64 = v99;
      v65 = v100;
      v42 = v101;
      if (v63)
      {
        v82 = v63;
        if (qword_100154380 != -1)
        {
          swift_once();
        }

        [qword_100154FD0 requiresPreflightForApplicationRecord:v82];
      }
    }

    else
    {
      v64 = v99;
      v65 = v100;
      v42 = v101;
    }

    v66 = v91;
    PickerContent.disabled(_:)();
    v53(v59, v42);
    (*(v65 + 32))(v106, v66, v64);
    v49 = 0;
  }

  v105 = v53;
  v67 = v100;
  v68 = v106;
  v69 = v99;
  (*(v100 + 56))(v106, v49, 1, v99);
  v70 = v96;
  dispatch thunk of PickerContent._identifiedView.getter();
  v71 = sub_10003AE84(&qword_10015A2B0, &qword_100115BF0);
  v72 = *(v71 + 48);
  sub_100004880(&qword_10015A2B8, &qword_10015A290, &qword_100115BA8);
  v73 = v103;
  dispatch thunk of PickerContent._identifiedView.getter();
  v74 = *(v71 + 64);
  v75 = v95;
  sub_100008E68(v68, v95, &qword_10015A288, &qword_100115BA0);
  v76 = (*(v67 + 48))(v75, 1, v69);
  v77 = v67;
  v78 = 1;
  if (v76 != 1)
  {
    v79 = v92;
    (*(v77 + 32))(v92, v75, v69);
    dispatch thunk of PickerContent._identifiedView.getter();
    (*(v77 + 8))(v79, v69);
    v78 = 0;
  }

  v80 = sub_10003AE84(&qword_10015A2C0, &qword_100115BF8);
  (*(*(v80 - 8) + 56))(v70 + v74, v78, 1, v80);
  sub_1000035CC(v106, &qword_10015A288, &qword_100115BA0);
  (*(v77 + 8))(v73, v69);
  return (v105)(v102, v42);
}

uint64_t sub_1000FB560@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D98;
  swift_getKeyPath();
  sub_1000029DC(&qword_100154C00, type metadata accessor for AppSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 73) == 1)
  {
    if (qword_1001543B0 != -1)
    {
      swift_once();
    }

    v3 = &qword_1001608E8;
  }

  else
  {
    if (qword_1001543A8 != -1)
    {
      swift_once();
    }

    v3 = &qword_1001608E0;
  }

  v4 = *v3;

  *a1 = result;
  return result;
}

uint64_t sub_1000FB744@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D98;
  swift_getKeyPath();
  sub_1000029DC(&qword_100154C00, type metadata accessor for AppSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 73))
  {
    if (qword_1001543C0 != -1)
    {
      swift_once();
    }

    v3 = &qword_1001608F8;
  }

  else
  {
    if (qword_1001543B8 != -1)
    {
      swift_once();
    }

    v3 = &qword_1001608F0;
  }

  v4 = *v3;

  *a1 = result;
  return result;
}

uint64_t sub_1000FB91C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D98;
  swift_getKeyPath();
  sub_1000029DC(&qword_100154C00, type metadata accessor for AppSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 73))
  {
    if (qword_1001543D0 != -1)
    {
      swift_once();
    }

    v3 = &qword_100160908;
  }

  else
  {
    if (qword_1001543C8 != -1)
    {
      swift_once();
    }

    v3 = &qword_100160900;
  }

  v4 = *v3;

  *a1 = result;
  return result;
}

uint64_t sub_1000FBAF0@<X0>(_BYTE *a1@<X8>)
{
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v2 = qword_100160D98;
  swift_getKeyPath();
  sub_1000029DC(&qword_100154C00, type metadata accessor for AppSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a1 = *(v2 + 17);
  return result;
}

uint64_t sub_1000FBC4C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for CalculatorAppScene(0) + 24));
  v4 = *v1;
  v5 = v1[1];
  sub_10003AE84(&qword_10015A280, &qword_100115B48);
  State.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000029DC(&qword_100154C00, type metadata accessor for AppSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_1000F68A0((*(v3 + 16) & 1) == 0);
}

double sub_1000FBD40@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(a1 + *(type metadata accessor for CalculatorAppScene(0) + 24));
  sub_10003AE84(&qword_10015A280, &qword_100115B48);
  State.wrappedValue.getter();
  swift_getKeyPath();
  *&v6 = v5;
  sub_1000029DC(&qword_100154C00, type metadata accessor for AppSettings);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(*&v5 + 16);

  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  _ConditionalContent<>.init(storage:)();
  result = v5;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_1000FBF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = type metadata accessor for KeyEquivalent();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CalculatorAppScene(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = sub_10003AE84(&qword_10015A1D8, &unk_100115968);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - v13;
  v15 = sub_10003AE84(&qword_10015A200, &qword_1001159C0);
  v30 = *(v15 - 8);
  v31 = v15;
  v16 = *(v30 + 64);
  __chkstk_darwin(v15);
  v18 = &v30 - v17;
  sub_1000082F0(a1, &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v20 = swift_allocObject();
  sub_100008354(&v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v34 = a1;
  v36 = a1;
  sub_10003AE84(&qword_10015A208, &qword_1001159C8);
  sub_100004880(&qword_10015A210, &qword_10015A208, &qword_1001159C8);
  Button.init(action:label:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  sub_10003AE84(&qword_100155958, &qword_1001159D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010DBE0;
  v22 = static EventModifiers.command.getter();
  *(inited + 32) = v22;
  v23 = static EventModifiers.control.getter();
  *(inited + 40) = v23;
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v22)
  {
    EventModifiers.init(rawValue:)();
  }

  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v23)
  {
    EventModifiers.init(rawValue:)();
  }

  sub_100004880(&qword_10015A1E0, &qword_10015A1D8, &unk_100115968);
  View.keyboardShortcut(_:modifiers:)();
  (*(v32 + 8))(v6, v33);
  (*(v11 + 8))(v14, v10);
  sub_10003AE84(&qword_10015A050, &qword_100115848);
  LazyState2.wrappedValue.getter();
  v24 = sub_10000AA04();

  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = !v24;
  v27 = v35;
  (*(v30 + 32))(v35, v18, v31);
  result = sub_10003AE84(&qword_10015A1C8, &qword_100115960);
  v29 = (v27 + *(result + 36));
  *v29 = KeyPath;
  v29[1] = sub_1000296E4;
  v29[2] = v26;
  return result;
}

uint64_t sub_1000FC3F4()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1000FC460()
{
  v0 = *(type metadata accessor for CalculatorAppScene(0) + 28);
  sub_10003AE84(&qword_10015A058, &unk_100115850);
  LazyState2.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000029DC(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v6 + 16);
  v2 = v1 ^ 1;
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v3 = qword_100160D98;
  sub_10000362C();
  if ((v1 & 1) != 0 || (swift_getKeyPath(), sub_1000029DC(&qword_100154C00, type metadata accessor for AppSettings), ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v3 + 72) != 1))
  {
    sub_100091C5C(v2);
  }

  else
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v6;
    *(v4 + 24) = v2;

    sub_1000F7484(sub_10006C1F4, v4);
  }
}

uint64_t sub_1000FC664()
{
  sub_10003AE84(&qword_100156370, &qword_10010F348);
  sub_10000A948();
  return Label.init(title:icon:)();
}

double sub_1000FC6FC@<D0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for CalculatorAppScene(0) + 28);
  sub_10003AE84(&qword_10015A058, &unk_100115850);
  LazyState2.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000029DC(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v5 + 16);

  LocalizedStringKey.init(stringLiteral:)();
  Text.init(_:tableName:bundle:comment:)();
  _ConditionalContent<>.init(storage:)();
  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t sub_1000FC8FC(uint64_t a1)
{
  v19 = type metadata accessor for KeyEquivalent();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v19);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CalculatorAppScene(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_10003AE84(&qword_1001558A0, &qword_10010F440);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - v12;
  sub_1000082F0(a1, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_100008354(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  Button.init(action:label:)();
  KeyEquivalent.init(extendedGraphemeClusterLiteral:)();
  v16 = static EventModifiers.command.getter();
  EventModifiers.init(rawValue:)();
  EventModifiers.init(rawValue:)();
  if (EventModifiers.init(rawValue:)() != v16)
  {
    EventModifiers.init(rawValue:)();
  }

  sub_100004880(&qword_1001563B8, &qword_1001558A0, &qword_10010F440);
  View.keyboardShortcut(_:modifiers:)();
  (*(v2 + 8))(v5, v19);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000FCBF4()
{
  sub_10003AE84(&qword_10015A050, &qword_100115848);
  LazyState2.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000029DC(&qword_100154FA8, type metadata accessor for CalculatorViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  *(v1 + 51) = (*(v1 + 51) & 1) == 0;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();
}

uint64_t sub_1000FCD30@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1000FCDD0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for CalculatorToolbarViewModel();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  v5 = swift_allocObject();
  *(v5 + 16) = 256;
  result = ObservationRegistrar.init()();
  *a1 = v5;
  return result;
}

uint64_t sub_1000FCE24@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for CalculatorLayout(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_10000C6BC();
  *a1 = result;
  return result;
}

uint64_t sub_1000FCEAC()
{
  v1 = (type metadata accessor for CalculatorAppScene(0) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = sub_10003AE84(&qword_10015A140, &qword_1001158D0);
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = *(v3 + *(sub_10003AE84(&qword_10015A148, &qword_1001158D8) + 28));

  v6 = (v3 + v1[7]);
  v7 = *v6;

  v8 = v6[1];

  v9 = (v3 + v1[8]);
  v10 = *v9;

  v11 = v9[1];

  v12 = v3 + v1[9];
  v13 = sub_10003AE84(&qword_10015A150, &qword_1001158E0);
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = *(v12 + *(sub_10003AE84(&qword_10015A158, &qword_1001158E8) + 28));

  v15 = *(v3 + v1[10] + 8);

  v16 = v3 + v1[11];

  v17 = *(v16 + 8);

  return swift_deallocObject();
}

uint64_t sub_1000FD0B0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for CalculatorAppScene(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000FD178@<X0>(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000FBAF0(a1);
}

uint64_t sub_1000FD1D0(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v31 = *(a3 + 24);
  v7 = *(v6 + 84);
  v8 = *(v31 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = *(v6 + 84);
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for UserInterfaceSizeClass() - 8);
  v12 = *(v11 + 64);
  if (v10 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v10;
  }

  v14 = *(v8 + 80);
  v15 = *(v8 + 64);
  if (!*(v11 + 84))
  {
    ++v12;
  }

  if (v12 <= 8)
  {
    v12 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = *(v6 + 64) + v14;
  v17 = *(v11 + 80) & 0xF8 | 7;
  if (v13 >= a2)
  {
    goto LABEL_35;
  }

  v18 = ((v12 + ((v12 + v17 + ((v15 + v17 + (v16 & ~v14)) & ~v17) + 1) & ~v17) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v18 <= 3)
  {
    v19 = ((a2 - v13 + 255) >> 8) + 1;
  }

  else
  {
    v19 = 2;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 <= 1)
  {
    if (!v21)
    {
      goto LABEL_35;
    }

    v22 = a1[v18];
    if (!a1[v18])
    {
      goto LABEL_35;
    }

LABEL_31:
    v24 = (v22 - 1) << (8 * v18);
    if (v18 <= 3)
    {
      v25 = *a1;
    }

    else
    {
      v24 = 0;
      v25 = *a1;
    }

    return v13 + (v25 | v24) + 1;
  }

  if (v21 == 2)
  {
    v22 = *&a1[v18];
    if (*&a1[v18])
    {
      goto LABEL_31;
    }
  }

  else
  {
    v22 = *&a1[v18];
    if (v22)
    {
      goto LABEL_31;
    }
  }

LABEL_35:
  if (v7 == v13)
  {
    v26 = *(v6 + 48);
    v27 = a1;
    v28 = v7;
    v29 = v5;
  }

  else
  {
    v27 = (&a1[v16] & ~v14);
    if (v9 != v13)
    {
      v30 = *((&v27[v15 + v17] & ~v17) + v12);
      if (v30 >= 2)
      {
        return (v30 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v26 = *(v8 + 48);
    v28 = v9;
    v29 = v31;
  }

  return v26(v27, v28, v29);
}

void sub_1000FD4AC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v41 = *(a4 + 16);
  v7 = *(v41 - 8);
  v39 = *(a4 + 24);
  v40 = v7;
  v8 = *(v7 + 84);
  v9 = *(v39 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v8)
  {
    v11 = *(v7 + 84);
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(type metadata accessor for UserInterfaceSizeClass() - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 84);
  v15 = *(v12 + 64);
  if (v11 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = v11;
  }

  v17 = v14 == 0;
  v18 = *(v9 + 80);
  v19 = *(v7 + 64) + v18;
  v20 = *(v9 + 64);
  v21 = v13 & 0xF8 | 7;
  if (v17)
  {
    v22 = v15 + 1;
  }

  else
  {
    v22 = v15;
  }

  if (v22 <= 8)
  {
    v22 = 8;
  }

  v23 = ((v22 + ((v22 + v21 + ((v20 + v21 + (v19 & ~v18)) & ~v21) + 1) & ~v21) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v16 >= a3)
  {
    v26 = 0;
    if (v16 >= a2)
    {
      goto LABEL_25;
    }

LABEL_30:
    v27 = ~v16 + a2;
    bzero(a1, v23);
    if (v23 <= 3)
    {
      v28 = (v27 >> 8) + 1;
    }

    else
    {
      v28 = 1;
    }

    if (v23 <= 3)
    {
      *a1 = v27;
      if (v26 > 1)
      {
LABEL_35:
        if (v26 == 2)
        {
          *&a1[v23] = v28;
        }

        else
        {
          *&a1[v23] = v28;
        }

        return;
      }
    }

    else
    {
      *a1 = v27;
      if (v26 > 1)
      {
        goto LABEL_35;
      }
    }

    if (v26)
    {
      a1[v23] = v28;
    }

    return;
  }

  if (v23 <= 3)
  {
    v24 = ((a3 - v16 + 255) >> 8) + 1;
  }

  else
  {
    v24 = 2;
  }

  if (v24 >= 0x10000)
  {
    v25 = 4;
  }

  else
  {
    v25 = 2;
  }

  if (v24 < 0x100)
  {
    v25 = 1;
  }

  if (v24 >= 2)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  if (v16 < a2)
  {
    goto LABEL_30;
  }

LABEL_25:
  if (v26 > 1)
  {
    if (v26 != 2)
    {
      *&a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v23] = 0;
  }

  else if (v26)
  {
    a1[v23] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!a2)
  {
    return;
  }

LABEL_40:
  if (v8 == v16)
  {
    v29 = v41;
    v30 = *(v40 + 56);
    v31 = a1;
    v32 = a2;
    v33 = v8;
LABEL_47:

    v30(v31, v32, v33, v29);
    return;
  }

  v31 = (&a1[v19] & ~v18);
  if (v10 == v16)
  {
    v30 = *(v9 + 56);
    v32 = a2;
    v33 = v10;
    v29 = v39;
    goto LABEL_47;
  }

  v34 = &v31[v20 + v21] & ~v21;
  if (a2 > 0xFE)
  {
    v35 = (v22 + 1);
    if (v35 <= 3)
    {
      v36 = ~(-1 << (8 * (v22 + 1)));
    }

    else
    {
      v36 = -1;
    }

    if (v22 != -1)
    {
      v37 = v36 & (a2 - 255);
      if (v35 <= 3)
      {
        v38 = v22 + 1;
      }

      else
      {
        v38 = 4;
      }

      bzero((&v31[v20 + v21] & ~v21), v35);
      if (v38 > 2)
      {
        if (v38 == 3)
        {
          *v34 = v37;
          *(v34 + 2) = BYTE2(v37);
        }

        else
        {
          *v34 = v37;
        }
      }

      else if (v38 == 1)
      {
        *v34 = v37;
      }

      else
      {
        *v34 = v37;
      }
    }
  }

  else
  {
    *(v34 + v22) = -a2;
  }
}

uint64_t sub_1000FD840@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for ModifiedContent();
  v25 = *(v3 - 8);
  v4 = *(v25 + 64);
  __chkstk_darwin(v3);
  v6 = v24 - v5;
  v29 = a1;
  v30 = &protocol witness table for _PaddingLayout;
  WitnessTable = swift_getWitnessTable();
  v27 = v3;
  v28 = WitnessTable;
  v24[0] = WitnessTable;
  v24[1] = &opaque type descriptor for <<opaque return type of View.presentationDetents(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v9 = *(OpaqueTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(OpaqueTypeMetadata2);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v24 - v14;
  static Edge.Set.horizontal.getter();
  View.padding(_:_:)();
  sub_10003AE84(&qword_10015A3C8, &qword_100115E38);
  v16 = *(type metadata accessor for PresentationDetent() - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10010DBE0;
  static PresentationDetent.medium.getter();
  static PresentationDetent.large.getter();
  sub_1000D32D8(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v20 = v24[0];
  View.presentationDetents(_:)();

  (*(v25 + 8))(v6, v3);
  v27 = v3;
  v28 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_100020EE8(v13, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v22 = *(v9 + 8);
  v22(v13, OpaqueTypeMetadata2);
  sub_100020EE8(v15, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v22)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_1000FDBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = type metadata accessor for EnvironmentValues();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = a4;
  v22[1] = a5;
  v22[2] = a6;
  v22[3] = a7;
  v17 = (a3 + *(type metadata accessor for CalculatorPresentationView() + 68));
  v18 = *v17;
  LOBYTE(a6) = *(v17 + 8);

  if ((a6 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v13 + 8))(v16, v12);
    v18 = v22[0];
  }

  swift_getKeyPath();
  v22[0] = v18;
  sub_1000FF17C(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v18 + 16);

  if (v20 == 1)
  {
    return static NavigationSplitViewVisibility.all.getter();
  }

  else
  {
    return static NavigationSplitViewVisibility.detailOnly.getter();
  }
}

uint64_t sub_1000FDDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a1;
  v30 = type metadata accessor for NavigationSplitViewVisibility();
  v13 = *(v30 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v30);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for EnvironmentValues();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a8;
  v22 = a4 + *(type metadata accessor for CalculatorPresentationView() + 68);
  v23 = *v22;
  LOBYTE(a8) = *(v22 + 8);

  if ((a8 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v24 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v18 + 8))(v21, v17);
    v23 = v31;
  }

  static NavigationSplitViewVisibility.all.getter();
  v25 = static NavigationSplitViewVisibility.== infix(_:_:)();
  (*(v13 + 8))(v16, v30);
  if (qword_100154728 != -1)
  {
    swift_once();
  }

  v26 = qword_100160D98;
  sub_10000362C();
  if ((v25 & 1) != 0 && (swift_getKeyPath(), v31 = v26, sub_1000FF17C(&qword_100154C00, type metadata accessor for AppSettings), ObservationRegistrar.access<A, B>(_:keyPath:)(), , *(v26 + 72) == 1))
  {
    v27 = swift_allocObject();
    *(v27 + 16) = v23;
    *(v27 + 24) = 1;

    sub_1000F7484(sub_10006C1F4, v27);
  }

  else
  {
    sub_100091C5C(v25 & 1);
  }
}

uint64_t sub_1000FE0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SidebarViewStyle();
  v5 = type metadata accessor for ModifiedContent();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v17 - v11;
  sub_1000FE2B4();
  v13 = sub_1000FF17C(&qword_10015A398, type metadata accessor for SidebarViewStyle);
  v17[0] = a4;
  v17[1] = v13;
  WitnessTable = swift_getWitnessTable();
  sub_100020EE8(v10, v5, WitnessTable);
  v15 = *(v6 + 8);
  v15(v10, v5);
  sub_100020EE8(v12, v5, WitnessTable);
  return (v15)(v12, v5);
}

uint64_t sub_1000FE2B4()
{
  v0 = type metadata accessor for SidebarViewStyle();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = swift_getKeyPath();
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  swift_storeEnumTagMultiPayload();
  v4 = *(v0 + 20);
  *(v3 + v4) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v5 = v3 + *(v0 + 24);
  type metadata accessor for CalculatorLayout(0);
  sub_1000FF17C(&qword_100154958, type metadata accessor for CalculatorLayout);
  *v5 = Environment.init<A>(_:)();
  v5[8] = v6 & 1;
  View.modifier<A>(_:)();
  return sub_1000FF1C4(v3, type metadata accessor for SidebarViewStyle);
}

uint64_t sub_1000FE438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a2;
  v41 = a4;
  v44 = a6;
  v49 = a2;
  v50 = a3;
  v51 = a4;
  v52 = a5;
  v9 = type metadata accessor for CalculatorPresentationView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v37 = &v35 - v12;
  v13 = type metadata accessor for ModifiedContent();
  v42 = *(v13 - 8);
  v14 = *(v42 + 64);
  __chkstk_darwin(v13);
  v36 = &v35 - v15;
  v16 = type metadata accessor for ModifiedContent();
  v43 = *(v16 - 8);
  v17 = *(v43 + 64);
  v18 = __chkstk_darwin(v16);
  v38 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v39 = &v35 - v20;
  v21 = a1 + *(v9 + 52);
  v22 = a3;
  View.modifier<A>(_:)();
  v23 = v37;
  (*(v10 + 16))(v37, a1, v9);
  v24 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v25 = swift_allocObject();
  v26 = v41;
  *(v25 + 2) = v40;
  *(v25 + 3) = v22;
  *(v25 + 4) = v26;
  *(v25 + 5) = a5;
  (*(v10 + 32))(&v25[v24], v23, v9);
  v27 = sub_100010D54();
  v47 = a5;
  v48 = v27;
  WitnessTable = swift_getWitnessTable();
  v29 = v38;
  v30 = v36;
  View.onAppear(perform:)();

  (*(v42 + 8))(v30, v13);
  v45 = WitnessTable;
  v46 = &protocol witness table for _AppearanceActionModifier;
  v31 = swift_getWitnessTable();
  v32 = v39;
  sub_100020EE8(v29, v16, v31);
  v33 = *(v43 + 8);
  v33(v29, v16);
  sub_100020EE8(v32, v16, v31);
  return (v33)(v32, v16);
}

uint64_t sub_1000FE7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v15 = (a1 + *(type metadata accessor for CalculatorPresentationView() + 68));
  v16 = *v15;
  LOBYTE(a4) = *(v15 + 8);

  if ((a4 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v17 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v11 + 8))(v14, v10);
    v16 = v21;
  }

  if (*(v16 + 17) == 1)
  {
    *(v16 + 17) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *&v20[-16] = v16;
    v20[-8] = 1;
    v21 = v16;
    sub_1000FF17C(&qword_100154F98, type metadata accessor for CalculatorToolbarViewModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000FEA3C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = *(type metadata accessor for CalculatorPresentationView() - 8);
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0 + ((*(v5 + 80) + 64) & ~*(v5 + 80));

  return sub_1000FDBA0(v6, v7, v8, v1, v2, v3, v4);
}

uint64_t sub_1000FEAEC(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = *(type metadata accessor for CalculatorPresentationView() - 8);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1 + ((*(v7 + 80) + 64) & ~*(v7 + 80));

  return sub_1000FDDB0(a1, v8, v9, v10, v3, v4, v5, v6);
}

uint64_t sub_1000FEBE4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[4];
  v7 = v1[3];
  v8 = v1[5];
  v5 = *(*(type metadata accessor for CalculatorPresentationView() - 8) + 80);

  return sub_1000FD840(v4, a1);
}

uint64_t sub_1000FEC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static SafeAreaRegions.keyboard.getter();
  v5 = static Edge.Set.all.getter();
  v6 = sub_10003AE84(&qword_10015A470, &qword_100115FF8);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = sub_10003AE84(&qword_10015A478, &qword_100116000);
  v8 = a2 + *(result + 36);
  *v8 = v4;
  *(v8 + 8) = v5;
  return result;
}

uint64_t sub_1000FED38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = static Color.black.getter();
  v5 = static Edge.Set.all.getter();
  v6 = sub_10003AE84(&qword_10015A480, &qword_100116008);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  v7 = a2 + *(sub_10003AE84(&qword_10015A488, &qword_100116010) + 36);
  *v7 = v4;
  *(v7 + 8) = v5;
  v8 = static SafeAreaRegions.keyboard.getter();
  LOBYTE(v4) = static Edge.Set.all.getter();
  result = sub_10003AE84(&qword_10015A490, &qword_100116018);
  v10 = a2 + *(result + 36);
  *v10 = v8;
  *(v10 + 8) = v4;
  return result;
}

uint64_t sub_1000FEE14()
{
  v1 = *(v0 + 16);
  v17 = *(v0 + 24);
  v18 = *(v0 + 40);
  v2 = type metadata accessor for CalculatorPresentationView();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  v5 = v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80));
  (*(*(v1 - 8) + 8))(v5, v1);
  (*(*(v17 - 8) + 8))(v5 + v2[13]);
  v6 = v2[14];
  sub_10003AE84(&qword_100154F90, &qword_10010C910);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for UserInterfaceSizeClass();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
    v9 = *(v5 + v6);
  }

  v10 = v2[15];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
    v13 = *(v5 + v10);
  }

  v14 = *(v5 + v2[16]);

  v15 = *(v5 + v2[17]);

  return swift_deallocObject();
}

uint64_t sub_1000FF0D8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(type metadata accessor for CalculatorPresentationView() - 8);
  v6 = v0 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_1000FE7DC(v6, v1, v2, v3, v4);
}

uint64_t sub_1000FF17C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000FF1C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1000FF24C()
{
  sub_100002B70();
  if (v0 <= 0x3F)
  {
    sub_100010648(319, &qword_1001557F0, type metadata accessor for CalculatorLayout);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1000FF324()
{
  result = qword_10015A498;
  if (!qword_10015A498)
  {
    sub_10003AECC(&qword_10015A478, &qword_100116000);
    sub_100004880(&qword_10015A4A0, &qword_10015A470, &qword_100115FF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015A498);
  }

  return result;
}

unint64_t sub_1000FF3DC()
{
  result = qword_10015A4A8;
  if (!qword_10015A4A8)
  {
    sub_10003AECC(&qword_10015A490, &qword_100116018);
    sub_1000FF468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015A4A8);
  }

  return result;
}

unint64_t sub_1000FF468()
{
  result = qword_10015A4B0;
  if (!qword_10015A4B0)
  {
    sub_10003AECC(&qword_10015A488, &qword_100116010);
    sub_100004880(&qword_10015A4B8, &qword_10015A480, &qword_100116008);
    sub_100004880(&qword_1001553D0, &qword_1001553D8, &unk_10010D250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015A4B0);
  }

  return result;
}

uint64_t sub_1000FF564@<X0>(uint64_t a1@<X8>)
{
  v13 = *v1;
  v14 = v1[1];
  v15 = *(v1 + 16);
  sub_10003AE84(&qword_10015A580, &qword_1001160C0);
  Binding.projectedValue.getter();
  v3 = *(sub_10003AE84(&qword_10015A588, &qword_100116128) + 36);
  v4 = enum case for ColorScheme.dark(_:);
  v5 = type metadata accessor for ColorScheme();
  v6 = *(v5 - 8);
  (*(v6 + 104))(a1 + v3, v4, v5);
  (*(v6 + 56))(a1 + v3, 0, 1, v5);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12;
  v7 = static SafeAreaRegions.all.getter();
  LOBYTE(v5) = static Edge.Set.all.getter();
  result = sub_10003AE84(&qword_10015A590, &unk_100116130);
  v9 = a1 + *(result + 36);
  *v9 = v7;
  *(v9 + 8) = v5;
  return result;
}

uint64_t sub_1000FF6B0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1000FF71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000FFC18();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000FF780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000FFC18();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1000FF7E4()
{
  sub_1000FFC18();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

id sub_1000FF80C()
{
  v0 = [objc_allocWithZone(type metadata accessor for MathNotesHostingViewController()) init];
  type metadata accessor for MathPaperViewWrapper.Coordinator();
  sub_1000FFC6C();
  sub_10003AE84(&qword_10015A5C0, qword_100116208);
  UIViewControllerRepresentableContext.coordinator.getter();
  dispatch thunk of MathNotesHostingViewController.delegate.setter();
  return v0;
}

uint64_t sub_1000FF894@<X0>(uint64_t *a1@<X8>)
{
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  sub_10003AE84(&qword_10015A580, &qword_1001160C0);
  Binding.projectedValue.getter();
  type metadata accessor for MathPaperViewWrapper.Coordinator();
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v5;
  *(result + 32) = v6;
  *a1 = result;
  return result;
}

uint64_t sub_1000FF984(uint64_t result)
{
  if (result == 1)
  {
    v3 = *(v1 + 16);
    v5 = *(v1 + 24);
    v7 = *(v1 + 32);
  }

  else
  {
    if (result)
    {
      return result;
    }

    v2 = *(v1 + 16);
    v4 = *(v1 + 24);
    v6 = *(v1 + 32);
  }

  sub_10003AE84(&qword_10015A580, &qword_1001160C0);
  return Binding.wrappedValue.setter();
}

unint64_t sub_1000FFA44()
{
  result = qword_10015A598;
  if (!qword_10015A598)
  {
    sub_10003AECC(&qword_10015A590, &unk_100116130);
    sub_1000FFAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015A598);
  }

  return result;
}

unint64_t sub_1000FFAD0()
{
  result = qword_10015A5A0;
  if (!qword_10015A5A0)
  {
    sub_10003AECC(&qword_10015A588, &qword_100116128);
    sub_1000FFB5C();
    sub_1000FFBB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015A5A0);
  }

  return result;
}

unint64_t sub_1000FFB5C()
{
  result = qword_10015A5A8;
  if (!qword_10015A5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015A5A8);
  }

  return result;
}

unint64_t sub_1000FFBB0()
{
  result = qword_1001596E0;
  if (!qword_1001596E0)
  {
    sub_10003AECC(&qword_1001596E8, &qword_1001147E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001596E0);
  }

  return result;
}

unint64_t sub_1000FFC18()
{
  result = qword_10015A5B0;
  if (!qword_10015A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015A5B0);
  }

  return result;
}

unint64_t sub_1000FFC6C()
{
  result = qword_10015A5B8;
  if (!qword_10015A5B8)
  {
    type metadata accessor for MathPaperViewWrapper.Coordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10015A5B8);
  }

  return result;
}

BOOL sub_1000FFCC8(int a1, int a2, int a3)
{
  if (qword_100160860 == -1)
  {
    v3 = dword_100160850 < a1;
    if (dword_100160850 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_100100250();
    a2 = v6;
    a3 = v5;
    v3 = dword_100160850 < a1;
    if (dword_100160850 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_100160854 > a2)
  {
    return 1;
  }

  if (dword_100160854 < a2)
  {
    return 0;
  }

  return dword_100160858 >= a3;
}

uint64_t sub_1000FFD88(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100160868 == -1)
  {
    if (qword_100160870)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_100100268();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100160870)
    {
      return _availability_version_check();
    }
  }

  if (qword_100160860 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_100100250();
    a3 = v10;
    a4 = v9;
    v8 = dword_100160850 < v11;
    if (dword_100160850 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100160854 > a3)
      {
        return 1;
      }

      if (dword_100160854 >= a3)
      {
        return dword_100160858 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100160850 < a2;
  if (dword_100160850 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1000FFF1C(uint64_t result)
{
  v1 = qword_100160870;
  if (qword_100160870)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100160870 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100160850, &dword_100160854, &dword_100160858);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

Swift::String_optional __swiftcall Locale.localizedString(forIdentifier:)(Swift::String forIdentifier)
{
  v1 = Locale.localizedString(forIdentifier:)(forIdentifier._countAndFlagsBits, forIdentifier._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

Swift::String_optional __swiftcall Locale.localizedString(forLanguageCode:)(Swift::String forLanguageCode)
{
  v1 = Locale.localizedString(forLanguageCode:)(forLanguageCode._countAndFlagsBits, forLanguageCode._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t AccessibilityNotification.Announcement.init(_:)()
{
  return AccessibilityNotification.Announcement.init(_:)();
}

{
  return AccessibilityNotification.Announcement.init(_:)();
}

uint64_t ModifiedContent<>.accessibilityCustomAttribute(_:value:)()
{
  return ModifiedContent<>.accessibilityCustomAttribute(_:value:)();
}

{
  return ModifiedContent<>.accessibilityCustomAttribute(_:value:)();
}

{
  return ModifiedContent<>.accessibilityCustomAttribute(_:value:)();
}

uint64_t List.init(selection:content:)()
{
  return List.init(selection:content:)();
}

{
  return List.init(selection:content:)();
}

uint64_t Text.init(_:)()
{
  return Text.init(_:)();
}

{
  return Text.init(_:)();
}

uint64_t View.buttonStyle<A>(_:)()
{
  return View.buttonStyle<A>(_:)();
}

{
  return View.buttonStyle<A>(_:)();
}

uint64_t View.accessibilityLabel(_:)()
{
  return View.accessibilityLabel(_:)();
}

{
  return View.accessibilityLabel(_:)();
}

uint64_t View.help(_:)()
{
  return View.help(_:)();
}

{
  return View.help(_:)();
}

uint64_t View.alert<A, B>(_:isPresented:actions:message:)()
{
  return View.alert<A, B>(_:isPresented:actions:message:)();
}

{
  return View.alert<A, B>(_:isPresented:actions:message:)();
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

uint64_t CalculateExpression.label(for:fontSize:)()
{
  return CalculateExpression.label(for:fontSize:)();
}

{
  return CalculateExpression.label(for:fontSize:)();
}

uint64_t String.init<A>(_:)()
{
  return String.init<A>(_:)();
}

{
  return String.init<A>(_:)();
}